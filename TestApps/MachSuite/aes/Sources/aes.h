/*
*   Byte-oriented AES-256 implementation.
*   All lookup tables replaced with 'on the fly' calculations.
*/
#include "support.h"

typedef struct {
  uint8_t key[32];
  uint8_t enckey[32];
  uint8_t deckey[32];
} aes256_context;

void encrypt(uint8_t ctx_key[32], uint8_t ctx_enckey[32],
             uint8_t ctx_deckey[32], uint8_t k[32], uint8_t buf[16]);

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  aes256_context ctx;
  uint8_t k[32];
  uint8_t buf[16];
};

