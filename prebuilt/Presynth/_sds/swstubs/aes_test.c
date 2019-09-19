/*  
*   Byte-oriented AES-256 implementation.
*   All lookup tables replaced with 'on the fly' calculations. 
*
*   Copyright (c) 2007 Ilya O. Levin, http://www.literatecode.com
*
*   Permission to use, copy, modify, and distribute this software for any
*   purpose with or without fee is hereby granted, provided that the above
*   copyright notice and this permission notice appear in all copies.
*
*   THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
*   WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
*   MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
*   ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
*   WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
*   ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
*   OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
*/
#include <stdlib.h>
#include <stdio.h>
#include "aes.h"

#ifdef __SDSCC__
#include <sds_lib.h>
#endif

#define DUMP(s, i, buf, sz)  {printf(s);                   \
                              for (i = 0; i < (sz);i++)    \
                                  printf("%02x ", buf[i]); \
                              printf("\n");}

uint8_t expected[] = {0x8e, 0xa2, 0xb7, 0xca, 0x51, 0x67, 0x45, 0xbf,
                      0xea, 0xfc, 0x49, 0x90, 0x4b, 0x49, 0x60, 0x89};

#ifdef __cplusplus
extern "C" {
#endif
void _p0_encrypt_1_noasync(uint8_t ctx_key[32], uint8_t ctx_enckey[32], uint8_t ctx_deckey[32], uint8_t k[32], uint8_t buf[16]);
#ifdef __cplusplus
}
#endif
int main (int argc, char *argv[])
{
    aes256_context ctx; 
    uint8_t key[32];
    uint8_t buf[16], i;
    int equal;

    /* put a test vector */
    for (i = 0; i < sizeof(buf);i++){
        buf[i] = i * 16 + i;
    }

    for (i = 0; i < sizeof(key);i++){
        key[i] = i;
    }

    DUMP("txt: ", i, buf, sizeof(buf));
    DUMP("key: ", i, key, sizeof(key));

    printf("---\n");

    //aes256_init(&ctx, key);

#ifdef __SDSCC__
  unsigned long long Start_time_HW = sds_clock_counter();
#endif
    _p0_encrypt_1_noasync(ctx.key, ctx.enckey, ctx.deckey, key, buf);
#ifdef __SDSCC__
  unsigned long long End_time_HW = sds_clock_counter();
#endif

    DUMP("enc: ", i, buf, sizeof(buf));
    printf("tst: 8e a2 b7 ca 51 67 45 bf ea fc 49 90 4b 49 60 89\n");

    //aes256_init(&ctx, key);
    //aes256_decrypt_ecb(&ctx, buf);
    //DUMP("dec: ", i, buf, sizeof(buf));

    //aes256_done(&ctx);

    equal = 1;
    for (i = 0; i < sizeof(buf); i++){
        equal = equal && (buf[i] == expected[i]);
    }

#ifdef __SDSCC__
  unsigned long long Duration_HW = End_time_HW - Start_time_HW;
  printf("The hardware test took %llu cycles.\n", Duration_HW);
#endif

    if (equal){
        printf("TEST PASSED\n");
        return 0;
    }
    else{
        printf("TEST FAILED\n");
        return 1;
    }
} /* main */

