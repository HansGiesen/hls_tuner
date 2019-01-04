#include <assert.h>

#include "ParamIO.h"
#ifndef RUN_STANDALONE
#include "ZipIO.h"
#endif
#include "Common.h"

#ifdef RUN_STANDALONE
#include <ff.h>
#endif

Params::Params(std::string zipfile)
  : m_filename(zipfile),
    m_arrays(0)
{
#ifdef RUN_STANDALONE
  for (unsigned i = 0; i < MAX_LAYERS; i++)
  {
    std::ostringstream stream;
    stream << zipfile << i << ".bin";
    std::string filename = stream.str();

    FIL File;
    FRESULT Result = f_open(&File, filename.c_str(), FA_READ);
    if (Result != FR_OK)
    {
      if (i > 0 && Result == FR_NO_FILE)
        break;
      printf("Cannot open file %s\n", filename.c_str());
      exit(1);
    }

    unsigned fsize = file_size(&File);
    m_array_size[i] = fsize;    
    m_data[i] = new float[fsize/4];

    unsigned Size;
    if (f_read(&File, m_data[i], fsize, &Size) != FR_OK || Size != fsize)
    {
      printf("Cannot read file %s\n", filename.c_str());
      exit(1);
    }

    if (f_close(&File) != FR_OK)
    {
      printf("Cannot close file %s\n", filename.c_str());
      exit(1);
    }
  }

#else
  // Open file
  DB_PRINT(2, "Opening params archive %s\n", m_filename.c_str());
  unzFile ar = open_unzip(m_filename);

  // Get number of files in the archive
  m_arrays = get_nfiles_in_unzip(ar);
  DB_PRINT(2, "Number of param arrays: %u\n", m_arrays);
  assert(m_arrays <= MAX_LAYERS);

  // Read each array
  for (unsigned i = 0; i < m_arrays; ++i) {
    unsigned fsize = get_current_file_size(ar);
    m_array_size[i] = fsize;  // size in bytes
    
    m_data[i] = new float[fsize/4];
    read_current_file(ar, (void*)m_data[i], fsize);
    
    unzGoToNextFile(ar);
  }

  unzClose(ar);
#endif
}

Params::~Params() {
  for (unsigned i = 0; i < m_arrays; ++i)
    delete[] m_data[i];
}

