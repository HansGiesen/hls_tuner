//------------------------------------------------------------------------
// Class to read the image data
//------------------------------------------------------------------------
#include <assert.h>

#include "Debug.h"
#ifndef RUN_STANDALONE
#include "ZipIO.h"
#endif
#include "Common.h"
#include "SArray.h"

// This class will load N cifar10 test images
struct Cifar10TestInputs {
  static const unsigned CHANNELS=3;
  static const unsigned ROWS=32;
  static const unsigned COLS=32;

  float* data;
  unsigned m_size;

  Cifar10TestInputs(const std::string & filename, unsigned n);
  ~Cifar10TestInputs() { delete[] data; }
  unsigned size() { return m_size; }
};

struct Cifar10TestLabels {
  float* data;
  unsigned m_size;

  Cifar10TestLabels(const std::string & filename, unsigned n);
  ~Cifar10TestLabels() { delete[] data; }
  unsigned size() { return m_size; }
};
