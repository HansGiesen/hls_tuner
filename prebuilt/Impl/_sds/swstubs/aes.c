/*
*   Byte-oriented AES-256 implementation.
*   All lookup tables replaced with 'on the fly' calculations.
*/
#include "aes.h"

#define F(x)   (((x)<<1) ^ ((((x)>>7) & 1) * 0x1b))
#define FD(x)  (((x) >> 1) ^ (((x) & 1) ? 0x8d : 0))

#ifndef PIPELINE_II_SUB
#define PIPELINE_II_SUB 1
#endif
#ifndef PIPELINE_II_ADDKEY
#define PIPELINE_II_ADDKEY 1
#endif
#ifndef PIPELINE_II_CPKEY
#define PIPELINE_II_CPKEY 1
#endif
#ifndef PIPELINE_II_MIX
#define PIPELINE_II_MIX 1
#endif
#ifndef PIPELINE_II_EXP1
#define PIPELINE_II_EXP1 1
#endif
#ifndef PIPELINE_II_EXP2
#define PIPELINE_II_EXP2 1
#endif
#ifndef PIPELINE_II_ECB1
#define PIPELINE_II_ECB1 1
#endif
#ifndef PIPELINE_II_ECB2
#define PIPELINE_II_ECB2 1
#endif
#ifndef PIPELINE_II_ECB3
#define PIPELINE_II_ECB3 1
#endif

#ifndef UNROLL_FACTOR_SUB
#define UNROLL_FACTOR_SUB 1
#endif
#ifndef UNROLL_FACTOR_ADDKEY
#define UNROLL_FACTOR_ADDKEY 1
#endif
#ifndef UNROLL_FACTOR_CPKEY
#define UNROLL_FACTOR_CPKEY 1
#endif
#ifndef UNROLL_FACTOR_MIX
#define UNROLL_FACTOR_MIX 1
#endif
#ifndef UNROLL_FACTOR_EXP1
#define UNROLL_FACTOR_EXP1 1
#endif
#ifndef UNROLL_FACTOR_EXP2
#define UNROLL_FACTOR_EXP2 1
#endif
#ifndef UNROLL_FACTOR_ECB1
#define UNROLL_FACTOR_ECB1 1
#endif
#ifndef UNROLL_FACTOR_ECB2
#define UNROLL_FACTOR_ECB2 1
#endif
#ifndef UNROLL_FACTOR_ECB3
#define UNROLL_FACTOR_ECB3 1
#endif

const unsigned pipeline_ii_sub    = PIPELINE_II_SUB;
const unsigned pipeline_ii_addkey = PIPELINE_II_ADDKEY;
const unsigned pipeline_ii_cpkey  = PIPELINE_II_CPKEY;
const unsigned pipeline_ii_mix    = PIPELINE_II_MIX;
const unsigned pipeline_ii_exp1   = PIPELINE_II_EXP1;
const unsigned pipeline_ii_exp2   = PIPELINE_II_EXP2;
const unsigned pipeline_ii_ecb1   = PIPELINE_II_ECB1;
const unsigned pipeline_ii_ecb2   = PIPELINE_II_ECB2;
const unsigned pipeline_ii_ecb3   = PIPELINE_II_ECB3;

const unsigned unroll_factor_sub    = UNROLL_FACTOR_SUB;
const unsigned unroll_factor_addkey = UNROLL_FACTOR_ADDKEY;
const unsigned unroll_factor_cpkey  = UNROLL_FACTOR_CPKEY;
const unsigned unroll_factor_mix    = UNROLL_FACTOR_MIX;
const unsigned unroll_factor_exp1   = UNROLL_FACTOR_EXP1;
const unsigned unroll_factor_exp2   = UNROLL_FACTOR_EXP2;
const unsigned unroll_factor_ecb1   = UNROLL_FACTOR_ECB1;
const unsigned unroll_factor_ecb2   = UNROLL_FACTOR_ECB2;
const unsigned unroll_factor_ecb3   = UNROLL_FACTOR_ECB3;

#define BACK_TO_TABLES
#ifdef BACK_TO_TABLES

const uint8_t sbox[256] = {
    0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5,
    0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
    0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0,
    0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
    0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc,
    0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
    0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a,
    0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
    0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0,
    0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
    0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b,
    0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
    0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85,
    0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
    0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5,
    0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
    0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17,
    0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
    0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88,
    0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
    0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c,
    0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
    0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9,
    0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
    0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6,
    0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
    0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e,
    0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
    0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94,
    0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
    0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68,
    0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16
};

#define rj_sbox(x)     sbox[(x)]

#else /* tableless subroutines */

/* -------------------------------------------------------------------------- */
uint8_t gf_alog(uint8_t x) // calculate anti-logarithm gen 3
{
    uint8_t atb = 1, z;

    alog : while (x--) {z = atb; atb <<= 1; if (z & 0x80) atb^= 0x1b; atb ^= z;}

    return atb;
} /* gf_alog */

/* -------------------------------------------------------------------------- */
uint8_t gf_log(uint8_t x) // calculate logarithm gen 3
{
    uint8_t atb = 1, i = 0, z;

    glog : do {
        if (atb == x) break;
        z = atb; atb <<= 1; if (z & 0x80) atb^= 0x1b; atb ^= z;
    } while (++i > 0);

    return i;
} /* gf_log */


/* -------------------------------------------------------------------------- */
uint8_t gf_mulinv(uint8_t x) // calculate multiplicative inverse
{
    return (x) ? gf_alog(255 - gf_log(x)) : 0;
} /* gf_mulinv */

/* -------------------------------------------------------------------------- */
uint8_t rj_sbox(uint8_t x)
{
    uint8_t y, sb;

    sb = y = gf_mulinv(x);
    y = (y<<1)|(y>>7); sb ^= y;  y = (y<<1)|(y>>7); sb ^= y;
    y = (y<<1)|(y>>7); sb ^= y;  y = (y<<1)|(y>>7); sb ^= y;

    return (sb ^ 0x63);
} /* rj_sbox */
#endif

/* -------------------------------------------------------------------------- */
uint8_t rj_xtime(uint8_t x)
{
    return (x & 0x80) ? ((x << 1) ^ 0x1b) : (x << 1);
} /* rj_xtime */

/* -------------------------------------------------------------------------- */
void aes_subBytes(uint8_t *buf)
{
    register uint8_t i = 16;

    sub : while (i--)
    {
#ifdef PIPELINE_SUB
#pragma HLS pipeline ii=pipeline_ii_sub
#else
#pragma HLS unroll factor = unroll_factor_sub
#endif
        buf[i] = rj_sbox(buf[i]);
    }
} /* aes_subBytes */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey(uint8_t *buf, uint8_t *key)
{
    register uint8_t i = 16;

    addkey : while (i--)
    {
#ifdef PIPELINE_ADDKEY
#pragma HLS pipeline ii=pipeline_ii_addkey
#else
#pragma HLS unroll factor = unroll_factor_addkey
#endif
        buf[i] ^= key[i];
    }
} /* aes_addRoundKey */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey_cpy(uint8_t *buf, uint8_t *key, uint8_t *cpk)
{
    register uint8_t i = 16;

    cpkey : while (i--)
    {
#ifdef PIPELINE_CPKEY
#pragma HLS pipeline ii=pipeline_ii_cpkey
#else
#pragma HLS unroll factor = unroll_factor_cpkey
#endif
        buf[i] ^= (cpk[i] = key[i]), cpk[16+i] = key[16 + i];
    }
} /* aes_addRoundKey_cpy */


/* -------------------------------------------------------------------------- */
void aes_shiftRows(uint8_t *buf)
{
    register uint8_t i, j; /* to make it potentially parallelable :) */

    i = buf[1]; buf[1] = buf[5]; buf[5] = buf[9]; buf[9] = buf[13]; buf[13] = i;
    i = buf[10]; buf[10] = buf[2]; buf[2] = i;
    j = buf[3]; buf[3] = buf[15]; buf[15] = buf[11]; buf[11] = buf[7]; buf[7] = j;
    j = buf[14]; buf[14] = buf[6]; buf[6]  = j;

} /* aes_shiftRows */

/* -------------------------------------------------------------------------- */
void aes_mixColumns(uint8_t *buf)
{
    register uint8_t i, a, b, c, d, e;

    mix : for (i = 0; i < 16; i += 4)
    {
#ifdef PIPELINE_MIX
#pragma HLS pipeline ii=pipeline_ii_mix
#else
#pragma HLS unroll factor = unroll_factor_mix
#endif
        a = buf[i]; b = buf[i + 1]; c = buf[i + 2]; d = buf[i + 3];
        e = a ^ b ^ c ^ d;
        buf[i] ^= e ^ rj_xtime(a^b);   buf[i+1] ^= e ^ rj_xtime(b^c);
        buf[i+2] ^= e ^ rj_xtime(c^d); buf[i+3] ^= e ^ rj_xtime(d^a);
    }
} /* aes_mixColumns */

/* -------------------------------------------------------------------------- */
void aes_expandEncKey(uint8_t *k, uint8_t *rc)
{
    register uint8_t i;

    k[0] ^= rj_sbox(k[29]) ^ (*rc);
    k[1] ^= rj_sbox(k[30]);
    k[2] ^= rj_sbox(k[31]);
    k[3] ^= rj_sbox(k[28]);
    *rc = F( *rc);

    exp1 : for(i = 4; i < 16; i += 4)
    {
#ifdef PIPELINE_EXP1
#pragma HLS pipeline ii=pipeline_ii_exp1
#else
#pragma HLS unroll factor = unroll_factor_exp1
#endif
        k[i] ^= k[i-4],   k[i+1] ^= k[i-3],
        k[i+2] ^= k[i-2], k[i+3] ^= k[i-1];
    }
    k[16] ^= rj_sbox(k[12]);
    k[17] ^= rj_sbox(k[13]);
    k[18] ^= rj_sbox(k[14]);
    k[19] ^= rj_sbox(k[15]);

    exp2 : for(i = 20; i < 32; i += 4)
    {
#ifdef PIPELINE_EXP2
#pragma HLS pipeline ii=pipeline_ii_exp2
#else
#pragma HLS unroll factor = unroll_factor_exp2
#endif
        k[i] ^= k[i-4],   k[i+1] ^= k[i-3],
        k[i+2] ^= k[i-2], k[i+3] ^= k[i-1];
    }

} /* aes_expandEncKey */

/* -------------------------------------------------------------------------- */
#pragma SDS data zero_copy(ctx_key)
#pragma SDS data zero_copy(ctx_enckey)
#pragma SDS data zero_copy(ctx_deckey)
#pragma SDS data zero_copy(buf)
void encrypt(uint8_t ctx_key[32], uint8_t ctx_enckey[32],
             uint8_t ctx_deckey[32], uint8_t k[32], uint8_t buf[16])
{
    //INIT
    uint8_t rcon = 1;
    uint8_t i;

    ecb1 : for (i = 0; i < 32; i++){
#ifdef PIPELINE_ECB1
#pragma HLS pipeline ii=pipeline_ii_ecb1
#else
#pragma HLS unroll factor = unroll_factor_ecb1
#endif
        ctx_enckey[i] = ctx_deckey[i] = k[i];
    }
    ecb2 : for (i = 8;--i;){
#ifdef PIPELINE_ECB2
#pragma HLS pipeline ii=pipeline_ii_ecb2
#else
#pragma HLS unroll factor = unroll_factor_ecb2
#endif
        aes_expandEncKey(ctx_deckey, &rcon);
    }

    //DEC
    aes_addRoundKey_cpy(buf, ctx_enckey, ctx_key);
    ecb3 : for(i = 1, rcon = 1; i < 14; ++i)
    {
#ifdef PIPELINE_ECB3
#pragma HLS pipeline ii=pipeline_ii_ecb3
#else
#pragma HLS unroll factor = unroll_factor_ecb3
#endif
        aes_subBytes(buf);
        aes_shiftRows(buf);
        aes_mixColumns(buf);
        if( i & 1 ) aes_addRoundKey( buf, ctx_key + 16);
        else aes_expandEncKey(ctx_key, &rcon), aes_addRoundKey(buf, ctx_key);
    }
    aes_subBytes(buf);
    aes_shiftRows(buf);
    aes_expandEncKey(ctx_key, &rcon);
    aes_addRoundKey(buf, ctx_key);
}

#include "cf_stub.h"
#ifdef __cplusplus
extern "C" {
#endif
void _p0_encrypt_1_noasync(uint8_t ctx_key[32], uint8_t ctx_enckey[32], uint8_t ctx_deckey[32], uint8_t k[32], uint8_t buf[16]);
#ifdef __cplusplus
}
#endif
void _p0_encrypt_1_noasync(uint8_t ctx_key[32], uint8_t ctx_enckey[32], uint8_t ctx_deckey[32], uint8_t k[32], uint8_t buf[16])
{
  switch_to_next_partition(0);
  int start_seq[1];
  start_seq[0] = 0;
  cf_request_handle_t _p0_swinst_encrypt_1_cmd;
  cf_send_i(&(_p0_swinst_encrypt_1.cmd_encrypt), start_seq, 1 * sizeof(int), &_p0_swinst_encrypt_1_cmd);
  cf_wait(_p0_swinst_encrypt_1_cmd);

  cf_send_ref_i(&(_p0_swinst_encrypt_1.ctx_key_offset), &ctx_key, 32, &_p0_request_0);
  cf_send_ref_i(&(_p0_swinst_encrypt_1.ctx_enckey_offset), &ctx_enckey, 32, &_p0_request_1);
  cf_send_ref_i(&(_p0_swinst_encrypt_1.ctx_deckey_offset), &ctx_deckey, 32, &_p0_request_2);
  cf_send_i(&(_p0_swinst_encrypt_1.k_PORTA), k, 32, &_p0_request_3);
  cf_send_ref_i(&(_p0_swinst_encrypt_1.buf_offset), &buf, 16, &_p0_request_4);


  cf_wait(_p0_request_0);
  cf_wait(_p0_request_1);
  cf_wait(_p0_request_2);
  cf_wait(_p0_request_3);
  cf_wait(_p0_request_4);
}

 /* aes256_encrypt */

