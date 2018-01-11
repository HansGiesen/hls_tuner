#ifndef _HLS_TUNER_H_
#define _HLS_TUNER_H_

#ifdef __SDSCC__

#define STR(x) #x
#define PRAGMA(x) _Pragma(STR(x))

#pragma GCC diagnostic ignored "-Wunknown-pragmas"

#else

#define PRAGMA(x)

#endif

#endif
