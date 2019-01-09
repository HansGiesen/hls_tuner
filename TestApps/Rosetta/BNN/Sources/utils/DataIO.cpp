#include "DataIO.h"

#ifdef RUN_STANDALONE
#include <ff.h>
#endif

Cifar10TestInputs::Cifar10TestInputs(const std::string & filename, unsigned n)
  : m_size(n*CHANNELS*ROWS*COLS)
{
#ifdef RUN_STANDALONE
  data = new float[m_size];

  DB_PRINT(2, "Opening data file %s\n", filename.c_str());
  FIL File;
  if (f_open(&File, filename.c_str(), FA_READ) != FR_OK)
  {
    printf("Cannot open file %s\n", filename.c_str());
    exit(1);
  }

  unsigned Size;
  if (f_read(&File, data, m_size * 4, &Size) != FR_OK || Size != m_size * 4)
  {
    printf("Cannot read file %s\n", filename.c_str());
    exit(1);
  }

  if (f_close(&File) != FR_OK)
  {
    printf("Cannot close file %s\n", filename.c_str());
    exit(1);
  }    
#else
  data = new float[m_size];

  DB_PRINT(2, "Opening data archive %s\n", filename.c_str());
  unzFile ar = open_unzip(filename.c_str());
  unsigned nfiles = get_nfiles_in_unzip(ar);
  assert(nfiles == 1);

  // We read m_size*4 bytes from the archive
  unsigned fsize = get_current_file_size(ar);
  assert(m_size*4 <= fsize);

  DB_PRINT(2, "Reading %u bytes\n", m_size*4);
  read_current_file(ar, (void*)data, m_size*4);
  
  unzClose(ar);
#endif
}

Cifar10TestLabels::Cifar10TestLabels(const std::string & filename, unsigned n)
  : m_size(n)
{
#ifdef RUN_STANDALONE
  data = new float[m_size];

  DB_PRINT(2, "Opening data file %s\n", filename.c_str());
  FIL File;
  if (f_open(&File, filename.c_str(), FA_READ) != FR_OK)
  {
    printf("Cannot open file %s\n", filename.c_str());
    exit(1);
  }

  unsigned Size;
  if (f_read(&File, data, m_size * 4, &Size) != FR_OK || Size != m_size * 4)
  {
    printf("Cannot read file %s\n", filename.c_str());
    exit(1);
  }

  if (f_close(&File) != FR_OK)
  {
    printf("Cannot close file %s\n", filename.c_str());
    exit(1);
  }    
#else
  data = new float[m_size];

  DB_PRINT(2, "Opening data archive %s\n", filename.c_str());
  unzFile ar = open_unzip(filename.c_str());
  unsigned nfiles = get_nfiles_in_unzip(ar);
  assert(nfiles == 1);

  // We read n*4 bytes from the archive
  unsigned fsize = get_current_file_size(ar);
  assert(m_size*4 <= fsize);

  DB_PRINT(2, "Reading %u bytes\n", m_size*4);
  read_current_file(ar, (void*)data, m_size*4);
  unzClose(ar);
#endif
}

