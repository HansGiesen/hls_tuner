#1 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"
#1 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c" 1
#1 "<built-in>" 1
#1 "<built-in>" 3
#146 "<built-in>" 3
#1 "<command line>" 1
#30 "<command line>"
#1 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2017 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************

 *
 * $Id$
 */
#289 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/



    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;

    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;

    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));

    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */

    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));


/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#427 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/common/technology/autopilot/etc/autopilot_ssdm_op.h"
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#31 "<command line>" 2
#1 "<built-in>" 2
#1 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c" 2
/*
*   Byte-oriented AES-256 implementation.
*   All lookup tables replaced with 'on the fly' calculations.
*/

#1 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h" 1
/*
*   Byte-oriented AES-256 implementation.
*   All lookup tables replaced with 'on the fly' calculations.
*/

#1 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h" 1
#1 "/usr/include/stdlib.h" 1 3 4
/* Copyright (C) 1991-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *	ISO C99 Standard: 7.20 General utilities	<stdlib.h>
 */




#1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




/* These are defined by the user (or the compiler)
   to specify the desired environment:

   __STRICT_ANSI__	ISO Standard C.
   _ISOC99_SOURCE	Extensions to ISO C89 from ISO C99.
   _ISOC11_SOURCE	Extensions to ISO C99 from ISO C11.
   _POSIX_SOURCE	IEEE Std 1003.1.
   _POSIX_C_SOURCE	If ==1, like _POSIX_SOURCE; if >=2 add IEEE Std 1003.2;
			if >=199309L, add IEEE Std 1003.1b-1993;
			if >=199506L, add IEEE Std 1003.1c-1995;
			if >=200112L, all of IEEE 1003.1-2004
			if >=200809L, all of IEEE 1003.1-2008
   _XOPEN_SOURCE	Includes POSIX and XPG things.  Set to 500 if
			Single Unix conformance is wanted, to 600 for the
			sixth revision, to 700 for the seventh revision.
   _XOPEN_SOURCE_EXTENDED XPG things and X/Open Unix extensions.
   _LARGEFILE_SOURCE	Some more functions for correct standard I/O.
   _LARGEFILE64_SOURCE	Additional functionality from LFS for large files.
   _FILE_OFFSET_BITS=N	Select default filesystem interface.
   _ATFILE_SOURCE	Additional *at interfaces.
   _GNU_SOURCE		All of the above, plus GNU extensions.
   _DEFAULT_SOURCE	The default set of features (taking precedence over
			__STRICT_ANSI__).
   _REENTRANT		Select additionally reentrant object.
   _THREAD_SAFE		Same as _REENTRANT, often used by other systems.
   _FORTIFY_SOURCE	If set to numeric value > 0 additional security
			measures are defined, according to level.

   The `-ansi' switch to the GNU C compiler, and standards conformance
   options such as `-std=c99', define __STRICT_ANSI__.  If none of
   these are defined, or if _DEFAULT_SOURCE is defined, the default is
   to have _POSIX_SOURCE set to one and _POSIX_C_SOURCE set to
   200809L, as well as enabling miscellaneous functions from BSD and
   SVID.  If more than one of these are defined, they accumulate.  For
   example __STRICT_ANSI__, _POSIX_SOURCE and _POSIX_C_SOURCE together
   give you ISO C, 1003.1, and 1003.2, but nothing else.

   These are defined by this file and are used by the
   header files to decide what to declare or define:

   __USE_ISOC11		Define ISO C11 things.
   __USE_ISOC99		Define ISO C99 things.
   __USE_ISOC95		Define ISO C90 AMD1 (C95) things.
   __USE_POSIX		Define IEEE Std 1003.1 things.
   __USE_POSIX2		Define IEEE Std 1003.2 things.
   __USE_POSIX199309	Define IEEE Std 1003.1, and .1b things.
   __USE_POSIX199506	Define IEEE Std 1003.1, .1b, .1c and .1i things.
   __USE_XOPEN		Define XPG things.
   __USE_XOPEN_EXTENDED	Define X/Open Unix things.
   __USE_UNIX98		Define Single Unix V2 things.
   __USE_XOPEN2K        Define XPG6 things.
   __USE_XOPEN2KXSI     Define XPG6 XSI things.
   __USE_XOPEN2K8       Define XPG7 things.
   __USE_XOPEN2K8XSI    Define XPG7 XSI things.
   __USE_LARGEFILE	Define correct standard I/O things.
   __USE_LARGEFILE64	Define LFS things with separate names.
   __USE_FILE_OFFSET64	Define 64bit interface as default.
   __USE_MISC		Define things from 4.3BSD or System V Unix.
   __USE_ATFILE		Define *at interfaces and AT_* constants for them.
   __USE_GNU		Define GNU extensions.
   __USE_REENTRANT	Define reentrant/thread-safe *_r functions.
   __USE_FORTIFY_LEVEL	Additional security measures used, according to level.

   The macros `__GNU_LIBRARY__', `__GLIBC__', and `__GLIBC_MINOR__' are
   defined by this file unconditionally.  `__GNU_LIBRARY__' is provided
   only for compatibility.  All new code should use the other symbols
   to test for features.

   All macros listed above as possibly being defined by this file are
   explicitly undefined if they are not explicitly defined.
   Feature-test macros that are not defined by the user or compiler
   but are implied by the other feature-test macros defined (or by the
   lack of any definitions) are defined by the file.  */


/* Undefine everything, so we get a clean slate.  */
#122 "/usr/include/features.h" 3 4
/* Suppress kernel-name space pollution unless user expressedly asks
   for it.  */




/* Convenience macros to test the versions of glibc and gcc.
   Use them like this:
   #if __GNUC_PREREQ (2,8)
   ... code requiring gcc 2.8 or later ...
   #endif
   Note - they won't work for gcc1 or glibc1, since the _MINOR macros
   were not defined then.  */







/* _BSD_SOURCE and _SVID_SOURCE are deprecated aliases for
   _DEFAULT_SOURCE.  If _DEFAULT_SOURCE is present we do not
   issue a warning; the expectation is that the source is being
   transitioned to use the new macro.  */







/* If _GNU_SOURCE was defined by the user, turn on all the other features.  */
#177 "/usr/include/features.h" 3 4
/* If nothing (other than _GNU_SOURCE and _DEFAULT_SOURCE) is defined,
   define _DEFAULT_SOURCE.  */
#188 "/usr/include/features.h" 3 4
/* This is to enable the ISO C11 extension.  */





/* This is to enable the ISO C99 extension.  */





/* This is to enable the ISO C90 Amendment 1:1995 extension.  */





/* This is to enable compatibility for ISO C++11.

   So far g++ does not provide a macro.  Check the temporary macro for
   now, too.  */





/* If none of the ANSI/POSIX macros are defined, or if _DEFAULT_SOURCE
   is defined, use POSIX.1-2008 (or another version depending on
   _XOPEN_SOURCE).  */
#341 "/usr/include/features.h" 3 4
/* Get definitions of __STDC_* predefined macros, if the compiler has
   not preincluded this header automatically.  */

#1 "/usr/include/stdc-predef.h" 1 3 4
/* Copyright (C) 1991-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */

/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
#52 "/usr/include/stdc-predef.h" 3 4
/* wchar_t uses Unicode 7.0.0.  Version 7.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2012, plus Amendments 1 (published
   on April, 2013) and 2 (not yet published as of February, 2015).
   Additionally, it includes the accelerated publication of U+20BD
   RUBLE SIGN.  Therefore Unicode 7.0.0 is between 10646:2012 and
   10646:2014, and so we use the date ISO/IEC 10646:2012 Amd.1 was
   published.  */


/* We do not support C11 <threads.h>.  */
#344 "/usr/include/features.h" 2 3 4

/* This macro indicates that the installed library is the GNU C Library.
   For historic reasons the value now is 6 and this will stay from now
   on.  The use of this variable is deprecated.  Use __GLIBC__ and
   __GLIBC_MINOR__ now (see below) when you want to test for a specific
   GNU C library version and use the values in <gnu/lib-names.h> to get
   the sonames of the shared libraries.  */



/* Major and minor version number of the GNU C library package.  Use
   these macros to test for features in specific releases.  */






/* This is here only because every header file already includes this one.  */



#1 "/usr/include/sys/cdefs.h" 1 3 4
/* Copyright (C) 1992-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




/* We are almost always included from features.h. */




/* The GNU libc does not support any K&R compilers or the traditional mode
   of ISO C compilers anymore.  Check for some of the combinations not
   anymore supported.  */




/* Some user header file might have defined this before.  */





/* All functions, except those with callbacks or those that
   synchronize memory, are leaf functions.  */
#49 "/usr/include/sys/cdefs.h" 3 4
/* GCC can always grok prototypes.  For C++ programs we add throw()
   to help it optimize the function calls.  But this works only with
   gcc 2.8.x and egcs.  For gcc 3.2 and up we even mark C functions
   as non-throwing using a function attribute since programs can use
   the -fexceptions options for C code as well.  */
#80 "/usr/include/sys/cdefs.h" 3 4
/* These two macros are not used in glibc anymore.  They are kept here
   only because some other projects expect the macros to be defined.  */



/* For these things, GCC behaves the ANSI way normally,
   and the non-ANSI way under -traditional.  */




/* This is not a typedef so `const __ptr_t' does the right thing.  */




/* C++ needs to know that types and declarations are C, not C++.  */
#106 "/usr/include/sys/cdefs.h" 3 4
/* The standard library needs the functions from the ISO C90 standard
   in the std namespace.  At the same time we want to be safe for
   future changes and we include the ISO C99 code in the non-standard
   namespace __c99.  The C++ wrapper header take case of adding the
   definitions to the global namespace.  */
#119 "/usr/include/sys/cdefs.h" 3 4
/* For compatibility we do not add the declarations into any
   namespace.  They will end up in the global namespace which is what
   old code expects.  */
#131 "/usr/include/sys/cdefs.h" 3 4
/* Fortify support.  */
#147 "/usr/include/sys/cdefs.h" 3 4
/* Support for flexible arrays.  */

/* GCC 2.97 supports C99 flexible array members.  */
#165 "/usr/include/sys/cdefs.h" 3 4
/* __asm__ ("xyz") is used throughout the headers to rename functions
   at the assembly language level.  This is wrapped by the __REDIRECT
   macro, in order to support compilers that can do this some other
   way.  When compilers don't support asm-names at all, we have to do
   preprocessor tricks instead (which don't have exactly the right
   semantics, but it's the best we can do).

   Example:
   int __REDIRECT(setpgrp, (__pid_t pid, __pid_t pgrp), setpgid); */
#192 "/usr/include/sys/cdefs.h" 3 4
/*
#elif __SOME_OTHER_COMPILER__

# define __REDIRECT(name, proto, alias) name proto; \
	_Pragma("let " #name " = " #alias)
*/


/* GCC has various useful declarations that can be made with the
   `__attribute__' syntax.  All of the ways we use this do fine if
   they are omitted for compilers that don't understand it. */




/* At some point during the gcc 2.96 development the `malloc' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */






/* Tell the compiler which arguments to an allocation function
   indicate the size of the allocation.  */







/* At some point during the gcc 2.96 development the `pure' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */






/* This declaration tells the compiler that the value is constant.  */






/* At some point during the gcc 3.1 development the `used' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */
#252 "/usr/include/sys/cdefs.h" 3 4
/* gcc allows marking deprecated functions.  */






/* At some point during the gcc 2.8 development the `format_arg' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.
   If several `format_arg' attributes are given for the same function, in
   gcc-3.0 and older, all but the last one are ignored.  In newer gccs,
   all designated arguments are considered.  */






/* At some point during the gcc 2.97 development the `strfmon' format
   attribute for functions was introduced.  We don't want to use it
   unconditionally (although this would be possible) since it
   generates warnings.  */







/* The nonull function attribute allows to mark pointer parameters which
   must not be NULL.  */






/* If fortification mode, we warn about unused results of certain
   function calls which can lead to problems.  */
#305 "/usr/include/sys/cdefs.h" 3 4
/* Forces a function to be always inlined.  */






/* Associate error messages with the source location of the call site rather
   than with the source location inside the function.  */






/* GCC 4.3 and above with -std=c99 or -std=gnu99 implements ISO C99
   inline semantics, unless -fgnu89-inline is used.  Using __GNUC_STDC_INLINE__
   or __GNUC_GNU_INLINE is not a good enough check for gcc because gcc versions
   older than 4.3 may define these macros and still not guarantee GNU inlining
   semantics.

   clang++ identifies itself as gcc-4.2, but has support for GNU inlining
   semantics, that can be checked fot by using the __GNUC_STDC_INLINE_ and
   __GNUC_GNU_INLINE__ macro definitions.  */
#346 "/usr/include/sys/cdefs.h" 3 4
/* GCC 4.3 and above allow passing all anonymous arguments of an
   __extern_always_inline function to some other vararg function.  */





/* It is possible to compile containing GCC extensions even if GCC is
   run in pedantic mode if the uses are carefully marked using the
   `__extension__' keyword.  But this is not generally available before
   version 2.8.  */




/* __restrict is known in EGCS 1.2 and above. */




/* ISO C99 also allows to declare arrays as non-overlapping.  The syntax is
     array_name[restrict]
   GCC 3.1 supports this.  */
#410 "/usr/include/sys/cdefs.h" 3 4
#1 "/usr/include/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#411 "/usr/include/sys/cdefs.h" 2 3 4
#366 "/usr/include/features.h" 2 3 4


/* If we don't have __REDIRECT, prototypes will be missing if
   __USE_FILE_OFFSET64 but not __USE_LARGEFILE[64]. */







/* Decide whether we can define 'extern inline' functions in headers.  */







/* This is here only because every header file already includes this one.
   Get the definitions of all the appropriate `__stub_FUNCTION' symbols.
   <gnu/stubs.h> contains `#define __stub_FUNCTION' when FUNCTION is a stub
   that will always return failure (and set errno to ENOSYS).  */

#1 "/usr/include/gnu/stubs.h" 1 3 4
/* This file is automatically generated.
   This file selects the right generated file of `__stub_FUNCTION' macros
   based on the architecture being compiled for.  */




#1 "/usr/include/gnu/stubs-32.h" 1 3 4
/* This file is automatically generated.
   It defines a symbol `__stub_FUNCTION' for each function
   in the C library which is a stub, meaning it will fail
   every time called, usually setting errno to ENOSYS.  */
#8 "/usr/include/gnu/stubs.h" 2 3 4
#390 "/usr/include/features.h" 2 3 4
#25 "/usr/include/stdlib.h" 2 3 4

/* Get size_t, wchar_t and NULL from <stddef.h>.  */






#1 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */






typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;



typedef __typeof__(sizeof(int)) size_t;




typedef int wchar_t;
#56 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#33 "/usr/include/stdlib.h" 2 3 4







/* XPG requires a few symbols from <sys/wait.h> being defined.  */

#1 "/usr/include/bits/waitflags.h" 1 3 4
/* Definitions of flag bits for `waitpid' et al.
   Copyright (C) 1992-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */






/* Bits in the third argument to `waitpid'.  */



/* Bits in the fourth argument to `waitid'.  */
#42 "/usr/include/stdlib.h" 2 3 4
#1 "/usr/include/bits/waitstatus.h" 1 3 4
/* Definitions of status bits for `wait' et al.
   Copyright (C) 1992-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */






/* Everything extant so far uses these same bits.  */


/* If WIFEXITED(STATUS), the low-order 8 bits of the status.  */


/* If WIFSIGNALED(STATUS), the terminating signal.  */


/* If WIFSTOPPED(STATUS), the signal that stopped the child.  */


/* Nonzero if STATUS indicates normal termination.  */


/* Nonzero if STATUS indicates termination by a signal.  */



/* Nonzero if STATUS indicates the child is stopped.  */


/* Nonzero if STATUS indicates the child continued after a stop.  We only
   define this if <bits/waitflags.h> provides the WCONTINUED flag bit.  */




/* Nonzero if STATUS indicates the child dumped core.  */


/* Macros for constructing status values.  */
#64 "/usr/include/bits/waitstatus.h" 3 4
#1 "/usr/include/endian.h" 1 3 4
/* Copyright (C) 1992-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */






/* Definitions for byte order, according to significance of bytes,
   from low addresses to high addresses.  The value is what you get by
   putting '4' in the most significant byte, '3' in the second most
   significant byte, '2' in the second least significant byte, and '1'
   in the least significant byte, and then writing down one digit for
   each byte, starting with the byte at the lowest address at the left,
   and proceeding to the byte with the highest address at the right.  */





/* This file defines `__BYTE_ORDER' for the particular machine.  */

#1 "/usr/include/bits/endian.h" 1 3 4
/* i386/x86_64 are little-endian.  */
#37 "/usr/include/endian.h" 2 3 4

/* Some machines may need to use a different endianness for floating point
   values.  */
#59 "/usr/include/endian.h" 3 4
/* Conversion interfaces.  */

#1 "/usr/include/bits/byteswap.h" 1 3 4
/* Macros to swap the order of bytes in integer values.
   Copyright (C) 1997-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#27 "/usr/include/bits/byteswap.h" 3 4
#1 "/usr/include/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */






#1 "/usr/include/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#28 "/usr/include/bits/types.h" 2 3 4

/* Convenience types.  */
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;

/* Fixed-size types, underlying types depend on word size and compiler.  */
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;




__extension__ typedef signed long long int __int64_t;
__extension__ typedef unsigned long long int __uint64_t;


/* quad_t is also 64 bits.  */




__extension__ typedef long long int __quad_t;
__extension__ typedef unsigned long long int __u_quad_t;



/* The machine-dependent file <bits/typesizes.h> defines __*_T_TYPE
   macros for each of the OS types we define below.  The definitions
   of those macros must use the following macros for underlying types.
   We define __S<SIZE>_TYPE and __U<SIZE>_TYPE for the signed and unsigned
   variants of each of the following integer types on this machine.

	16		-- "natural" 16-bit type (always short)
	32		-- "natural" 32-bit type (always int)
	64		-- "natural" 64-bit type (long or long long)
	LONG32		-- 32-bit type, traditionally long
	QUAD		-- 64-bit type, always long long
	WORD		-- natural type of __WORDSIZE bits (int or long)
	LONGWORD	-- type of __WORDSIZE bits, traditionally long

   We distinguish WORD/LONGWORD, 32/LONG32, and 64/QUAD so that the
   conventional uses of `long' or `long long' type modifiers match the
   types we define, even when a less-adorned type would be the same size.
   This matters for (somewhat) portably writing printf/scanf formats for
   these types, where using the appropriate l or ll format modifiers can
   make the typedefs and the formats match up across all GNU platforms.  If
   we used `long' when it's 64 bits where `long long' is expected, then the
   compiler would warn about the formats not matching the argument types,
   and the programmer changing them to shut up the compiler would break the
   program's portability.

   Here we assume what is presently the case in all the GCC configurations
   we support: long long is always 64 bits, long is always word/address size,
   and int is always 32 bits.  */
#104 "/usr/include/bits/types.h" 3 4
/* We want __extension__ before typedef's that use nonstandard base types
   such as `long long' in C89 mode.  */
#121 "/usr/include/bits/types.h" 3 4
#1 "/usr/include/bits/typesizes.h" 1 3 4
/* bits/typesizes.h -- underlying types for *_t.  Linux/x86-64 version.
   Copyright (C) 2012-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#26 "/usr/include/bits/typesizes.h" 3 4
/* See <bits/types.h> for the meaning of these macros.  This file exists so
   that <bits/types.h> need not vary across different GNU platforms.  */

/* X32 kernel interface is 64-bit.  */
#85 "/usr/include/bits/typesizes.h" 3 4
/* Number of descriptors that can fit in an `fd_set'.  */
#122 "/usr/include/bits/types.h" 2 3 4


__extension__ typedef __u_quad_t __dev_t; /* Type of device numbers.  */
__extension__ typedef unsigned int __uid_t; /* Type of user identifications.  */
__extension__ typedef unsigned int __gid_t; /* Type of group identifications.  */
__extension__ typedef unsigned long int __ino_t; /* Type of file serial numbers.  */
__extension__ typedef __u_quad_t __ino64_t; /* Type of file serial numbers (LFS).*/
__extension__ typedef unsigned int __mode_t; /* Type of file attribute bitmasks.  */
__extension__ typedef unsigned int __nlink_t; /* Type of file link counts.  */
__extension__ typedef long int __off_t; /* Type of file sizes and offsets.  */
__extension__ typedef __quad_t __off64_t; /* Type of file sizes and offsets (LFS).  */
__extension__ typedef int __pid_t; /* Type of process identifications.  */
__extension__ typedef struct { int __val[2]; } __fsid_t; /* Type of file system IDs.  */
__extension__ typedef long int __clock_t; /* Type of CPU usage counts.  */
__extension__ typedef unsigned long int __rlim_t; /* Type for resource measurement.  */
__extension__ typedef __u_quad_t __rlim64_t; /* Type for resource measurement (LFS).  */
__extension__ typedef unsigned int __id_t; /* General type for IDs.  */
__extension__ typedef long int __time_t; /* Seconds since the Epoch.  */
__extension__ typedef unsigned int __useconds_t; /* Count of microseconds.  */
__extension__ typedef long int __suseconds_t; /* Signed count of microseconds.  */

__extension__ typedef int __daddr_t; /* The type of a disk address.  */
__extension__ typedef int __key_t; /* Type of an IPC key.  */

/* Clock ID used in clock and timer functions.  */
__extension__ typedef int __clockid_t;

/* Timer ID returned by `timer_create'.  */
__extension__ typedef void * __timer_t;

/* Type to represent block size.  */
__extension__ typedef long int __blksize_t;

/* Types from the Large File Support interface.  */

/* Type to count number of disk blocks.  */
__extension__ typedef long int __blkcnt_t;
__extension__ typedef __quad_t __blkcnt64_t;

/* Type to count file system blocks.  */
__extension__ typedef unsigned long int __fsblkcnt_t;
__extension__ typedef __u_quad_t __fsblkcnt64_t;

/* Type to count file system nodes.  */
__extension__ typedef unsigned long int __fsfilcnt_t;
__extension__ typedef __u_quad_t __fsfilcnt64_t;

/* Type of miscellaneous file system fields.  */
__extension__ typedef int __fsword_t;

__extension__ typedef int __ssize_t; /* Type of a byte count, or error.  */

/* Signed long type used in system calls.  */
__extension__ typedef long int __syscall_slong_t;
/* Unsigned long type used in system calls.  */
__extension__ typedef unsigned long int __syscall_ulong_t;

/* These few don't really vary by system, they always correspond
   to one of the other defined types.  */
typedef __off64_t __loff_t; /* Type of file sizes and offsets (LFS).  */
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;

/* Duplicates info from stdint.h but this is used in unistd.h.  */
__extension__ typedef int __intptr_t;

/* Duplicate info from sys/socket.h.  */
__extension__ typedef unsigned int __socklen_t;
#28 "/usr/include/bits/byteswap.h" 2 3 4
#1 "/usr/include/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#29 "/usr/include/bits/byteswap.h" 2 3 4

/* Swap bytes in 16 bit value.  */



/* Get __bswap_16.  */

#1 "/usr/include/bits/byteswap-16.h" 1 3 4
/* Macros to swap the order of bytes in 16-bit integer values.
   Copyright (C) 2012-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#36 "/usr/include/bits/byteswap.h" 2 3 4

/* Swap bytes in 32 bit value.  */
#56 "/usr/include/bits/byteswap.h" 3 4
/* To swap the bytes in a word the i486 processors and up provide the
   `bswap' opcode.  On i386 we have to use three instructions.  */
#96 "/usr/include/bits/byteswap.h" 3 4
/* Swap bytes in 64 bit value.  */
#61 "/usr/include/endian.h" 2 3 4
#65 "/usr/include/bits/waitstatus.h" 2 3 4

union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7; /* Terminating signal.  */
 unsigned int __w_coredump:1; /* Set if dumped core.  */
 unsigned int __w_retcode:8; /* Return code if exited normally.  */
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8; /* W_STOPPED if stopped.  */
 unsigned int __w_stopsig:8; /* Stopping signal.  */
 unsigned int:16;






      } __wait_stopped;
  };
#43 "/usr/include/stdlib.h" 2 3 4



/* Lots of hair to allow traditional BSD use of `union wait'
   as well as POSIX.1 use of `int' for the status word.  */
#57 "/usr/include/stdlib.h" 3 4
/* This is the type of the argument to `wait'.  The funky union
   causes redeclarations with either `int *' or `union wait *' to be
   allowed without complaint.  __WAIT_STATUS_DEFN is the type used in
   the actual function definitions.  */





/* This works in GCC 2.6.1 and later.  */
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
#83 "/usr/include/stdlib.h" 3 4
/* Define the macros <sys/wait.h> also would define this way.  */
#96 "/usr/include/stdlib.h" 3 4
/* Returned by `div'.  */
typedef struct
  {
    int quot; /* Quotient.  */
    int rem; /* Remainder.  */
  } div_t;

/* Returned by `ldiv'.  */

typedef struct
  {
    long int quot; /* Quotient.  */
    long int rem; /* Remainder.  */
  } ldiv_t;






/* Returned by `lldiv'.  */
__extension__ typedef struct
  {
    long long int quot; /* Quotient.  */
    long long int rem; /* Remainder.  */
  } lldiv_t;





/* The largest number rand will return (same as INT_MAX).  */



/* We define these the same for all machines.
   Changes from this to the outside world should be done in `_exit'.  */




/* Maximum length of a multibyte character in the current locale.  */

extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ )) /* Ignore */;



/* Convert a string to a floating-point number.  */
extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) /* Ignore */;
/* Convert a string to an integer.  */
extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) /* Ignore */;
/* Convert a string to a long integer.  */
extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) /* Ignore */;




/* Convert a string to a long long integer.  */
__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) /* Ignore */;




/* Convert a string to a floating-point number.  */
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




/* Likewise for `float' and `long double' sizes of floating-point numbers.  */
extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




/* Convert a string to a long integer.  */
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
/* Convert a string to an unsigned long integer.  */
extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



/* Convert a string to a quadword integer.  */
__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
/* Convert a string to an unsigned quadword integer.  */
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




/* Convert a string to a quadword integer.  */
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
/* Convert a string to an unsigned quadword integer.  */
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
#302 "/usr/include/stdlib.h" 3 4
/* Convert N to base 64 using the digits "./0-9A-Za-z", least-significant
   digit first.  Returns a pointer to static storage overwritten by the
   next call.  */
extern char *l64a (long int __n) __attribute__ ((__nothrow__ )) /* Ignore */;

/* Read a number from a string S in base 64 as above.  */
extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) /* Ignore */;





#1 "/usr/include/sys/types.h" 1 3 4
/* Copyright (C) 1991-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *	POSIX Standard: 2.6 Primitive System Data Types	<sys/types.h>
 */
#33 "/usr/include/sys/types.h" 3 4
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;
#60 "/usr/include/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
#98 "/usr/include/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
#132 "/usr/include/sys/types.h" 3 4
#1 "/usr/include/time.h" 1 3 4
/* Copyright (C) 1991-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *	ISO C99 Standard: 7.23 Date and time	<time.h>
 */
#58 "/usr/include/time.h" 3 4
/* Returned by `clock'.  */
typedef __clock_t clock_t;
#74 "/usr/include/time.h" 3 4
/* Returned by `time'.  */
typedef __time_t time_t;
#90 "/usr/include/time.h" 3 4
/* Clock ID used in clock and timer functions.  */
typedef __clockid_t clockid_t;
#102 "/usr/include/time.h" 3 4
/* Timer ID returned by `timer_create'.  */
typedef __timer_t timer_t;
#133 "/usr/include/sys/types.h" 2 3 4
#146 "/usr/include/sys/types.h" 3 4
#1 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#56 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#147 "/usr/include/sys/types.h" 2 3 4


/* Old compatibility names for C types.  */
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;


/* These size-specific names are used by some of the inet code.  */
#186 "/usr/include/sys/types.h" 3 4
/* For GCC 2.7 and later, we can use specific type-size attributes.  */







typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));


/* Some code from BIND tests this macro to see if the types above are
   defined.  */





/* In BSD <sys/types.h> is expected to define BYTE_ORDER.  */


/* It also defines `fd_set' and the FD_* macros for `select'.  */

#1 "/usr/include/sys/select.h" 1 3 4
/* `fd_set' type and related macros, and `select'/`pselect' declarations.
   Copyright (C) 1996-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*	POSIX 1003.1g: 6.2 Select from File Descriptor Sets <sys/select.h>  */






/* Get definition of needed basic types.  */


/* Get __FD_* definitions.  */

#1 "/usr/include/bits/select.h" 1 3 4
/* Copyright (C) 1997-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */






#1 "/usr/include/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#23 "/usr/include/bits/select.h" 2 3 4
#31 "/usr/include/sys/select.h" 2 3 4

/* Get __sigset_t.  */

#1 "/usr/include/bits/sigset.h" 1 3 4
/* __sig_atomic_t, __sigset_t, and related definitions.  Linux version.
   Copyright (C) 1991-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




typedef int __sig_atomic_t;

/* A `sigset_t' has a bit for each signal.  */


typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;




/* We only want to define these functions if <signal.h> was actually
   included; otherwise we were included just to define the types.  Since we
   are namespace-clean, it wouldn't hurt to define extra macros.  But
   trouble can be caused by functions being defined (e.g., any global
   register vars declared later will cause compilation errors).  */
#34 "/usr/include/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;


/* Get definition of timer specification structures.  */



#1 "/usr/include/time.h" 1 3 4
/* Copyright (C) 1991-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *	ISO C99 Standard: 7.23 Date and time	<time.h>
 */
#118 "/usr/include/time.h" 3 4
/* POSIX.1b structure for a time value.  This is like a `struct timeval' but
   has nanoseconds instead of microseconds.  */
struct timespec
  {
    __time_t tv_sec; /* Seconds.  */
    __syscall_slong_t tv_nsec; /* Nanoseconds.  */
  };
#44 "/usr/include/sys/select.h" 2 3 4

#1 "/usr/include/bits/time.h" 1 3 4
/* System-dependent timing definitions.  Linux version.
   Copyright (C) 1996-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <time.h> instead.
 */






/* A time value that is accurate to the nearest
   microsecond but also has a range of years.  */
struct timeval
  {
    __time_t tv_sec; /* Seconds.  */
    __suseconds_t tv_usec; /* Microseconds.  */
  };
#46 "/usr/include/sys/select.h" 2 3 4


typedef __suseconds_t suseconds_t;




/* The fd_set member is required to be an array of longs.  */
typedef long int __fd_mask;

/* Some versions of <linux/posix_types.h> define this macros.  */

/* It's easier to assume 8-bit bytes than to get CHAR_BIT.  */




/* fd_set for select and pselect.  */
typedef struct
  {
    /* XPG4.2 requires this member name.  Otherwise avoid the name
       from the global namespace.  */




    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;

/* Maximum number of file descriptors in `fd_set'.  */



/* Sometimes the fd_set member is assumed to have this type.  */
typedef __fd_mask fd_mask;

/* Number of bits per word of `fd_set' (some code assumes this is 32).  */




/* Access macros for `fd_set'.  */
#98 "/usr/include/sys/select.h" 3 4
/* Check the first NFDS descriptors each in READFDS (if not NULL) for read
   readiness, in WRITEFDS (if not NULL) for write readiness, and in EXCEPTFDS
   (if not NULL) for exceptional conditions.  If TIMEOUT is not NULL, time out
   after waiting the interval specified therein.  Returns the number of ready
   descriptors, or -1 for errors.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);


/* Same as above only that the TIMEOUT value is given with higher
   resolution and a sigmask which is been set temporarily.  This version
   should be used.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);



/* Define some inlines helping to catch common problems.  */
#220 "/usr/include/sys/types.h" 2 3 4

/* BSD defines these symbols, so we follow.  */

#1 "/usr/include/sys/sysmacros.h" 1 3 4
/* Definitions of macros to access `dev_t' values.
   Copyright (C) 1996-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#26 "/usr/include/sys/sysmacros.h" 3 4
__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
#60 "/usr/include/sys/sysmacros.h" 3 4
/* Access the functions with their traditional names.  */
#223 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;



/* Types from the Large File Support interface.  */


typedef __blkcnt_t blkcnt_t; /* Type to count number of disk blocks.  */



typedef __fsblkcnt_t fsblkcnt_t; /* Type to count file system blocks.  */



typedef __fsfilcnt_t fsfilcnt_t; /* Type to count file system inodes.  */
#268 "/usr/include/sys/types.h" 3 4
/* Now add the thread types.  */


#1 "/usr/include/bits/pthreadtypes.h" 1 3 4
/* Copyright (C) 2002-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */





#1 "/usr/include/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#22 "/usr/include/bits/pthreadtypes.h" 2 3 4
#58 "/usr/include/bits/pthreadtypes.h" 3 4
/* Thread identifiers.  The structure of the attribute type is not
   exposed on purpose.  */
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[36];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;
#81 "/usr/include/bits/pthreadtypes.h" 3 4
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;



/* Data structures for mutex handling.  The structure of the attribute
   type is not exposed on purpose.  */
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;



    /* KIND must stay at this position in the structure to maintain
       binary compatibility.  */
    int __kind;
#111 "/usr/include/bits/pthreadtypes.h" 3 4
    unsigned int __nusers;
    __extension__ union
    {
      struct
      {
 short __espins;
 short __elision;



      } __elision_data;
      __pthread_slist_t __list;
    };

  } __data;
  char __size[24];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;


/* Data structure for conditional variable handling.  The structure of
   the attribute type is not exposed on purpose.  */
typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;


/* Keys for thread-specific data */
typedef unsigned int pthread_key_t;


/* Once-only execution */
typedef int pthread_once_t;



/* Data structure for read-write lock variable handling.  The
   structure of the attribute type is not exposed on purpose.  */
typedef union
{
#202 "/usr/include/bits/pthreadtypes.h" 3 4
  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    /* FLAGS must stay at this position in the structure to maintain
       binary compatibility.  */
    unsigned char __flags;
    unsigned char __shared;
    signed char __rwelision;

    unsigned char __pad2;
    int __writer;
  } __data;

  char __size[32];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;




/* POSIX spinlock data type.  */
typedef volatile int pthread_spinlock_t;


/* POSIX barriers data type.  The structure of the type is
   deliberately not exposed.  */
typedef union
{
  char __size[20];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;




/* Extra attributes for the cleanup functions.  */
#271 "/usr/include/sys/types.h" 2 3 4
#315 "/usr/include/stdlib.h" 2 3 4

/* These are the functions that actually do things.  The `random', `srandom',
   `initstate' and `setstate' functions are those from BSD Unices.
   The `rand' and `srand' functions are required by the ANSI standard.
   We provide both interfaces to the same random number generator.  */
/* Return a random long integer between 0 and RAND_MAX inclusive.  */
extern long int random (void) __attribute__ ((__nothrow__ ));

/* Seed the random number generator with the given number.  */
extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ ));

/* Initialize the random number generator to use state buffer STATEBUF,
   of length STATELEN, and seed it with SEED.  Optimal lengths are 8, 16,
   32, 64, 128 and 256, the bigger the better; values less than 8 will
   cause an error and values greater than 256 will be rounded down.  */
extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

/* Switch the random number generator to state buffer STATEBUF,
   which should have been previously initialized by `initstate'.  */
extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



/* Reentrant versions of the `random' family of functions.
   These functions all use the following data structure to contain
   state, rather than global state variables.  */

struct random_data
  {
    int32_t *fptr; /* Front pointer.  */
    int32_t *rptr; /* Rear pointer.  */
    int32_t *state; /* Array of state values.  */
    int rand_type; /* Type of random number generator.  */
    int rand_deg; /* Degree of random number generator.  */
    int rand_sep; /* Distance between front and rear.  */
    int32_t *end_ptr; /* Pointer behind state table.  */
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));





/* Return a random integer between 0 and RAND_MAX inclusive.  */
extern int rand (void) __attribute__ ((__nothrow__ ));
/* Seed the random number generator with the given number.  */
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));



/* Reentrant interface according to POSIX.1.  */
extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ ));




/* System V style 48-bit random number generator functions.  */

/* Return non-negative, double-precision floating-point value in [0.0,1.0).  */
extern double drand48 (void) __attribute__ ((__nothrow__ ));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

/* Return non-negative, long integer in [0,2^31).  */
extern long int lrand48 (void) __attribute__ ((__nothrow__ ));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

/* Return signed, long integers in [-2^31,2^31).  */
extern long int mrand48 (void) __attribute__ ((__nothrow__ ));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

/* Seed random number generator.  */
extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ ));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));


/* Data structure for communication with thread safe versions.  This
   type is to be regarded as opaque.  It's only exported because users
   have to allocate objects of this type.  */
struct drand48_data
  {
    unsigned short int __x[3]; /* Current state.  */
    unsigned short int __old_x[3]; /* Old state.  */
    unsigned short int __c; /* Additive const. in congruential formula.  */
    unsigned short int __init; /* Flag for initializing.  */
    __extension__ unsigned long long int __a; /* Factor in congruential
						   formula.  */
  };

/* Return non-negative, double-precision floating-point value in [0.0,1.0).  */
extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

/* Return non-negative, long integer in [0,2^31).  */
extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

/* Return signed, long integers in [-2^31,2^31).  */
extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

/* Seed random number generator.  */
extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
#465 "/usr/include/stdlib.h" 3 4
/* Allocate SIZE bytes of memory.  */
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) /* Ignore */;
/* Allocate NMEMB elements of SIZE bytes each, all initialized to 0.  */
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) /* Ignore */;





/* Re-allocate the previously allocated block
   in PTR, making the new block SIZE bytes long.  */
/* __attribute_malloc__ is not used, because if realloc returns
   the same pointer that was passed to it, aliasing needs to be allowed
   between objects pointed by the old and new pointers.  */
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__));
/* Free a block allocated by `malloc', `realloc' or `calloc'.  */
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));



/* Free a block.  An alias for `free'.	(Sun Unices).  */
extern void cfree (void *__ptr) __attribute__ ((__nothrow__ ));




#1 "/usr/include/alloca.h" 1 3 4
/* Copyright (C) 1992-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */








#1 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#56 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#25 "/usr/include/alloca.h" 2 3 4



/* Remove any previous definitions.  */


/* Allocate a block that will be freed when the calling function exits.  */
extern void *alloca (size_t __size) __attribute__ ((__nothrow__ ));
#493 "/usr/include/stdlib.h" 2 3 4




/* Allocate SIZE bytes on a page boundary.  The storage cannot be freed.  */
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) /* Ignore */;



/* Allocate memory of SIZE bytes with an alignment of ALIGNMENT.  */
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) /* Ignore */;
#514 "/usr/include/stdlib.h" 3 4
/* Abort execution and generate a core-dump.  */
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));


/* Register a function to be called when `exit' is called.  */
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
#533 "/usr/include/stdlib.h" 3 4
/* Register a function to be called with the status
   given to `exit' and the given argument.  */
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



/* Call all functions registered with `atexit' and `on_exit',
   in the reverse of the order in which they were registered,
   perform stdio cleanup, and terminate program execution with STATUS.  */
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
#555 "/usr/include/stdlib.h" 3 4
/* Terminate the program with STATUS without calling any of the
   functions registered with `atexit' or `on_exit'.  */
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));





/* Return the value of envariable NAME, or NULL if it doesn't exist.  */
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) /* Ignore */;
#575 "/usr/include/stdlib.h" 3 4
/* The SVID says this is in <stdio.h>, but this seems a better place.	*/
/* Put STRING, which is of the form "NAME=VALUE", in the environment.
   If there is no `=', remove NAME from the environment.  */
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



/* Set NAME to VALUE in the environment.
   If REPLACE is nonzero, overwrite an existing value.  */
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));

/* Remove the variable NAME from the environment.  */
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



/* The `clearenv' was planned to be added to POSIX.1 but probably
   never made it.  Nevertheless the POSIX.9 standard (POSIX bindings
   for Fortran 77) requires this function.  */
extern int clearenv (void) __attribute__ ((__nothrow__ ));





/* Generate a unique temporary file name from TEMPLATE.
   The last six characters of TEMPLATE must be "XXXXXX";
   they are replaced with a string that makes the file name unique.
   Always returns TEMPLATE, it's either a temporary file name or a null
   string if it cannot get a unique file name.  */
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



/* Generate a unique temporary file name from TEMPLATE.
   The last six characters of TEMPLATE must be "XXXXXX";
   they are replaced with a string that makes the filename unique.
   Returns a file descriptor open on the file for reading and writing,
   or -1 if it cannot create a uniquely-named file.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */

extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) /* Ignore */;
#634 "/usr/include/stdlib.h" 3 4
/* Similar to mkstemp, but the template can have a suffix after the
   XXXXXX.  The length of the suffix is specified in the second
   parameter.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */

extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) /* Ignore */;
#657 "/usr/include/stdlib.h" 3 4
/* Create a unique temporary directory from TEMPLATE.
   The last six characters of TEMPLATE must be "XXXXXX";
   they are replaced with a string that makes the directory name unique.
   Returns TEMPLATE, or a null pointer if it cannot get a unique name.
   The directory is created mode 700.  */
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) /* Ignore */;
#712 "/usr/include/stdlib.h" 3 4
/* Execute the given line as a shell command.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int system (const char *__command) /* Ignore */;
#728 "/usr/include/stdlib.h" 3 4
/* Return the canonical absolute name of file NAME.  If RESOLVED is
   null, the result is malloc'd; otherwise, if the canonical name is
   PATH_MAX chars or more, returns null with `errno' set to
   ENAMETOOLONG; if the name fits in fewer than PATH_MAX chars,
   returns the name in RESOLVED.  */
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ )) /* Ignore */;



/* Shorthand for type of comparison functions.  */


typedef int (*__compar_fn_t) (const void *, const void *);
#752 "/usr/include/stdlib.h" 3 4
/* Do a binary search for KEY in BASE, which consists of NMEMB elements
   of SIZE bytes each, using COMPAR to perform the comparisons.  */
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) /* Ignore */;





/* Sort NMEMB elements of BASE, of SIZE bytes each,
   using COMPAR to perform the comparisons.  */
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));







/* Return the absolute value of X.  */
extern int abs (int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) /* Ignore */;
extern long int labs (long int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) /* Ignore */;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) /* Ignore */;




/* Return the `div_t', `ldiv_t' or `lldiv_t' representation
   of the value of NUMER over DENOM. */
/* GCC may have built-ins for these someday.  */
extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) /* Ignore */;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) /* Ignore */;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) /* Ignore */;






/* Convert floating point numbers to strings.  The returned values are
   valid only until another call to the same function.  */

/* Convert VALUE to a string with NDIGIT digits and return a pointer to
   this.  Set *DECPT with the position of the decimal character and *SIGN
   with the sign of the number.  */
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) /* Ignore */;

/* Convert VALUE to a string rounded to NDIGIT decimal digits.  Set *DECPT
   with the position of the decimal character and *SIGN with the sign of
   the number.  */
extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) /* Ignore */;

/* If possible convert VALUE to a string with NDIGIT significant digits.
   Otherwise use exponential representation.  The resulting string will
   be written to BUF.  */
extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) /* Ignore */;



/* Long double versions of above functions.  */
extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) /* Ignore */;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) /* Ignore */;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) /* Ignore */;


/* Reentrant version of the functions above which provide their own
   buffers.  */
extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));




/* Return the length of the multibyte character
   in S, which is no longer than N.  */
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ ));
/* Return the length of the given multibyte character,
   putting its `wchar_t' representation in *PWC.  */
extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));
/* Put the multibyte character represented
   by WCHAR in S, returning its length.  */
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ ));


/* Convert a multibyte string to a wide char string.  */
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));
/* Convert a wide char string to multibyte string.  */
extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ ));




/* Determine whether the string value of RESPONSE matches the affirmation
   or negative response expression as specified by the LC_MESSAGES category
   in the program's current locale.  Returns 1 if affirmative, 0 if
   negative, and -1 if not matching.  */
extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) /* Ignore */;




/* Parse comma separated suboption from *OPTIONP and match against
   strings in TOKENS.  If found return index and set *VALUEP to
   optional value introduced by an equal sign.  If the suboption is
   not part of TOKENS return in *VALUEP beginning of unknown
   suboption.  On exit *OPTIONP is set to the beginning of the next
   token or at the terminating NUL character.  */
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) /* Ignore */;
#911 "/usr/include/stdlib.h" 3 4
/* X/Open pseudo terminal handling.  */
#947 "/usr/include/stdlib.h" 3 4
/* Put the 1 minute, 5 minute and 15 minute load averages into the first
   NELEM elements of LOADAVG.  Return the number written (never more than
   three, but may be less than NELEM), or -1 if an error occurred.  */
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));



#1 "/usr/include/bits/stdlib-float.h" 1 3 4
/* Floating-point inline functions for stdlib.h.
   Copyright (C) 2012-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#955 "/usr/include/stdlib.h" 2 3 4

/* Define some macros helping to catch buffer overflows.  */
#2 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h" 2
#1 "/usr/include/inttypes.h" 1 3 4
/* Copyright (C) 1997-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *	ISO C99: 7.8 Format conversion of integer types	<inttypes.h>
 */





/* Get the type definitions.  */

#1 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 1 3 4
/*===---- stdint.h - Standard header for sized integer types --------------===*\
 *
 * Copyright (c) 2009 Chris Lattner
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
\*===----------------------------------------------------------------------===*/




/* If we're hosted, fall back to the system's stdint.h, which might have
 * additional definitions.
 */



#1 "/usr/include/stdint.h" 1 3 4
/* Copyright (C) 1997-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *	ISO C99: 7.18 Integer types <stdint.h>
 */






#1 "/usr/include/bits/wchar.h" 1 3 4
/* wchar_t type related definitions.
   Copyright (C) 2000-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




/* The fallback definitions, for when __WCHAR_MAX__ or __WCHAR_MIN__
   are not defined, give the right value and type as long as both int
   and wchar_t are 32-bit types.  Adding L'\0' to a constant value
   ensures that the type is correct; it is necessary to use (L'\0' +
   0) rather than just L'\0' so that the type in C++ is the promoted
   version of wchar_t rather than the distinct wchar_t type itself.
   Because wchar_t in preprocessor #if expressions is treated as
   intmax_t or uintmax_t, the expression (L'\0' - 1) would have the
   wrong value for WCHAR_MAX in such expressions and so cannot be used
   to define __WCHAR_MAX in the unsigned case.  */
#27 "/usr/include/stdint.h" 2 3 4
#1 "/usr/include/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#28 "/usr/include/stdint.h" 2 3 4

/* Exact integral types.  */

/* Signed.  */

/* There is some amount of overlap with <sys/types.h> as known by inet code */
#47 "/usr/include/stdint.h" 3 4
/* Unsigned.  */
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;





__extension__
typedef unsigned long long int uint64_t;



/* Small types.  */

/* Signed.  */
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;



__extension__
typedef long long int int_least64_t;


/* Unsigned.  */
typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;



__extension__
typedef unsigned long long int uint_least64_t;



/* Fast types.  */

/* Signed.  */
typedef signed char int_fast8_t;





typedef int int_fast16_t;
typedef int int_fast32_t;
__extension__
typedef long long int int_fast64_t;


/* Unsigned.  */
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
__extension__
typedef unsigned long long int uint_fast64_t;



/* Types for `void *' pointers.  */
#125 "/usr/include/stdint.h" 3 4
typedef int intptr_t;


typedef unsigned int uintptr_t;



/* Largest integral types.  */




__extension__
typedef long long int intmax_t;
__extension__
typedef unsigned long long int uintmax_t;
#152 "/usr/include/stdint.h" 3 4
/* Limits of integral types.  */

/* Minimum of signed integral types.  */




/* Maximum of signed integral types.  */





/* Maximum of unsigned integral types.  */






/* Minimum of signed integral types having a minimum size.  */




/* Maximum of signed integral types having a minimum size.  */





/* Maximum of unsigned integral types having a minimum size.  */






/* Minimum of fast signed integral types having a minimum size.  */
#200 "/usr/include/stdint.h" 3 4
/* Maximum of fast signed integral types having a minimum size.  */
#211 "/usr/include/stdint.h" 3 4
/* Maximum of fast unsigned integral types having a minimum size.  */
#223 "/usr/include/stdint.h" 3 4
/* Values to test for integral types holding `void *' pointer.  */
#235 "/usr/include/stdint.h" 3 4
/* Minimum for largest signed integral type.  */

/* Maximum for largest signed integral type.  */


/* Maximum for largest unsigned integral type.  */



/* Limits of other integer types.  */

/* Limits of `ptrdiff_t' type.  */
#255 "/usr/include/stdint.h" 3 4
/* Limits of `sig_atomic_t'.  */



/* Limit of `size_t' type.  */
#270 "/usr/include/stdint.h" 3 4
/* Limits of `wchar_t'.  */

/* These constants might also be defined in <wchar.h>.  */




/* Limits of `wint_t'.  */



/* Signed.  */
#291 "/usr/include/stdint.h" 3 4
/* Unsigned.  */
#301 "/usr/include/stdint.h" 3 4
/* Maximal type.  */
#34 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 2 3 4
#28 "/usr/include/inttypes.h" 2 3 4

/* Get a definition for wchar_t.  But we must not define wchar_t itself.  */




typedef int __gwchar_t;
#51 "/usr/include/inttypes.h" 3 4
/* Macros for printing format specifiers.  */

/* Decimal notation.  */
#85 "/usr/include/inttypes.h" 3 4
/* Octal notation.  */
#101 "/usr/include/inttypes.h" 3 4
/* Unsigned integers.  */
#117 "/usr/include/inttypes.h" 3 4
/* lowercase hexadecimal notation.  */
#133 "/usr/include/inttypes.h" 3 4
/* UPPERCASE hexadecimal notation.  */
#150 "/usr/include/inttypes.h" 3 4
/* Macros for printing `intmax_t' and `uintmax_t'.  */
#159 "/usr/include/inttypes.h" 3 4
/* Macros for printing `intptr_t' and `uintptr_t'.  */
#168 "/usr/include/inttypes.h" 3 4
/* Macros for scanning format specifiers.  */

/* Signed decimal notation.  */
#186 "/usr/include/inttypes.h" 3 4
/* Signed decimal notation.  */
#202 "/usr/include/inttypes.h" 3 4
/* Unsigned decimal notation.  */
#218 "/usr/include/inttypes.h" 3 4
/* Octal notation.  */
#234 "/usr/include/inttypes.h" 3 4
/* Hexadecimal notation.  */
#251 "/usr/include/inttypes.h" 3 4
/* Macros for scanning `intmax_t' and `uintmax_t'.  */






/* Macros for scaning `intptr_t' and `uintptr_t'.  */
#279 "/usr/include/inttypes.h" 3 4
/* We have to define the `uintmax_t' type using `lldiv_t'.  */
typedef struct
  {
    __extension__ long long int quot; /* Quotient.  */
    __extension__ long long int rem; /* Remainder.  */
  } imaxdiv_t;




/* Compute absolute value of N.  */
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

/* Return the `imaxdiv_t' representation of the value of NUMER over DENOM. */
extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ )) __attribute__ ((__const__));

/* Like `strtol' but convert to `intmax_t'.  */
extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ ));

/* Like `strtoul' but convert to `uintmax_t'.  */
extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ ));

/* Like `wcstol' but convert to `intmax_t'.  */
extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));

/* Like `wcstoul' but convert to `uintmax_t'.  */
extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ ));
#3 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h" 2

///// File and section functions
char *readfile(int fd);
char *find_section_start(char *s, int n);

///// Array read functions

int parse_string(char *s, char *arr, int n); // n==-1 : %%-terminated
int parse_uint8_t_array(char *s, uint8_t *arr, int n);
int parse_uint16_t_array(char *s, uint16_t *arr, int n);
int parse_uint32_t_array(char *s, uint32_t *arr, int n);
int parse_uint64_t_array(char *s, uint64_t *arr, int n);
int parse_int8_t_array(char *s, int8_t *arr, int n);
int parse_int16_t_array(char *s, int16_t *arr, int n);
int parse_int32_t_array(char *s, int32_t *arr, int n);
int parse_int64_t_array(char *s, int64_t *arr, int n);
int parse_float_array(char *s, float *arr, int n);
int parse_double_array(char *s, double *arr, int n);

///// Array write functions
int write_string(int fd, char *arr, int n);
int write_uint8_t_array(int fd, uint8_t *arr, int n);
int write_uint16_t_array(int fd, uint16_t *arr, int n);
int write_uint32_t_array(int fd, uint32_t *arr, int n);
int write_uint64_t_array(int fd, uint64_t *arr, int n);
int write_int8_t_array(int fd, int8_t *arr, int n);
int write_int16_t_array(int fd, int16_t *arr, int n);
int write_int32_t_array(int fd, int32_t *arr, int n);
int write_int64_t_array(int fd, int64_t *arr, int n);
int write_float_array(int fd, float *arr, int n);
int write_double_array(int fd, double *arr, int n);

int write_section_header(int fd);

///// Per-benchmark files
void run_benchmark( void *vargs );
void input_to_data(int fd, void *vdata);
void data_to_input(int fd, void *vdata);
void output_to_data(int fd, void *vdata);
void data_to_output(int fd, void *vdata);
int check_data(void *vdata, void *vref);

extern int INPUT_SIZE;

///// TYPE macros
// Macro trick to automatically expand TYPE into the appropriate function
// (S)et (T)ype (A)nd (C)oncatenate


// Invoke like this:
//   #define TYPE int32_t
//   STAC(write_,TYPE,_array)(fd, array, n);
// where array is of type (TYPE *)
// This translates to:
//   write_int32_t_array(fd, array, n);


/**** PRNG library. Available at https://github.com/rdadolf/prng. *****/





#1 "/usr/include/stdio.h" 1 3 4
/* Define ISO C stdio on top of C++ iostreams.
   Copyright (C) 1991-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *	ISO C99 Standard: 7.19 Input/output	<stdio.h>
 */
#33 "/usr/include/stdio.h" 3 4
#1 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#56 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#34 "/usr/include/stdio.h" 2 3 4
#43 "/usr/include/stdio.h" 3 4
/* Define outside of namespace so the C++ is happy.  */
struct _IO_FILE;


/* The opaque type of streams.  This is the definition used elsewhere.  */
typedef struct _IO_FILE FILE;
#63 "/usr/include/stdio.h" 3 4
/* The opaque type of streams.  This is the definition used elsewhere.  */
typedef struct _IO_FILE __FILE;
#74 "/usr/include/stdio.h" 3 4
#1 "/usr/include/libio.h" 1 3 4
/* Copyright (C) 1991-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
   Written by Per Bothner <bothner@cygnus.com>.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.

   As a special exception, if you link the code in this file with
   files compiled with a GNU compiler to produce an executable,
   that does not cause the resulting executable to be covered by
   the GNU Lesser General Public License.  This exception does not
   however invalidate any other reasons why the executable file
   might be covered by the GNU Lesser General Public License.
   This exception applies to code released by its copyright holders
   in files containing the exception.  */





#1 "/usr/include/_G_config.h" 1 3 4
/* This file is needed by libio to define various configuration parameters.
   These are always the same in the GNU C library.  */




/* Define types for libio in terms of the standard internal type names.  */








#1 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#56 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#16 "/usr/include/_G_config.h" 2 3 4




#1 "/usr/include/wchar.h" 1 3 4
/* Copyright (C) 1995-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/*
 *      ISO C99 Standard: 7.24
 *	Extended multibyte and wide character utilities	<wchar.h>
 */
#81 "/usr/include/wchar.h" 3 4
/* Conversion state information.  */
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value; /* Value so far.  */
} __mbstate_t;




/* The rest of the file is only used if used if __need_mbstate_t is not
   defined.  */
#899 "/usr/include/wchar.h" 3 4
/* Undefine all __need_* constants in case we are included to get those
   constants but the whole file was already read.  */
#21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
#45 "/usr/include/_G_config.h" 3 4
/* These library features are always available in the GNU C library.  */







/* This is defined by <bits/stat.h> if `st_blksize' exists.  */
#32 "/usr/include/libio.h" 2 3 4
/* ALL of these should be defined in _G_config.h */
#47 "/usr/include/libio.h" 3 4
/* This define avoids name pollution if we're using GNU stdarg.h */


#1 "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdarg.h" 1 3 4
/*===---- stdarg.h - Variable argument handling ----------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */





typedef __builtin_va_list va_list;






/* GCC always defines __va_copy, but does not define va_copy unless in c99 mode
 * or -ansi is not specified, since it was not part of C90.
 */






/* Hack required to make standard headers work, at least on Ubuntu */

typedef __builtin_va_list __gnuc_va_list;
#50 "/usr/include/libio.h" 2 3 4
#86 "/usr/include/libio.h" 3 4
/* Magic numbers and bits for the _flags field.
   The magic numbers use the high-order bits of _flags;
   the remaining bits are available for variable flags.
   Note: The magic numbers must all be negative if stdio
   emulation is desired. */
#124 "/usr/include/libio.h" 3 4
/* These are "formatting flags" matching the iostream fmtflags enum values. */
#144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;

/* Handle lock.  */







typedef void _IO_lock_t;



/* A streammarker remembers a position in a buffer. */

struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;
  /* If _pos >= 0
 it points to _buf->Gbase()+_pos. FIXME comment */
  /* if _pos < 0, it points to _buf->eBptr()+_pos. FIXME comment */
  int _pos;
#177 "/usr/include/libio.h" 3 4
};

/* This is the structure from the libstdc++ codecvt class.  */
enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
#245 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags; /* High-order word is _IO_MAGIC; rest is flags. */


  /* The following pointers correspond to the C++ streambuf protocol. */
  /* Note:  Tk uses the _IO_read_ptr and _IO_read_end fields directly. */
  char* _IO_read_ptr; /* Current read pointer */
  char* _IO_read_end; /* End of get area. */
  char* _IO_read_base; /* Start of putback+get area. */
  char* _IO_write_base; /* Start of put area. */
  char* _IO_write_ptr; /* Current put pointer. */
  char* _IO_write_end; /* End of put area. */
  char* _IO_buf_base; /* Start of reserve area. */
  char* _IO_buf_end; /* End of reserve area. */
  /* The following fields are used to support backing up and undo. */
  char *_IO_save_base; /* Pointer to start of non-current get area. */
  char *_IO_backup_base; /* Pointer to first valid character of backup area */
  char *_IO_save_end; /* Pointer to end of non-current get area. */

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset; /* This used to be _offset but it's too small.  */


  /* 1+column number of pbase(); 0 is unknown. */
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  /*  char* _save_gptr;  char* _save_egptr; */

  _IO_lock_t *_lock;
#293 "/usr/include/libio.h" 3 4
  __off64_t _offset;
#302 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;
  /* Make sure we don't get into trouble again.  */
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
#334 "/usr/include/libio.h" 3 4
/* Functions to do I/O and file management for a stream.  */

/* Read NBYTES bytes from COOKIE into a buffer pointed to by BUF.
   Return number of bytes read.  */
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);

/* Write N bytes pointed to by BUF to COOKIE.  Write all N bytes
   unless there is an error.  Return number of bytes written.  If
   there is an error, return 0 and do not write anything.  If the file
   has been opened for append (__mode.__append set), then set the file
   pointer to the end of the file and then do the write; if not, just
   write at the current file pointer.  */
typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);

/* Move COOKIE's file position to *POS bytes from the
   beginning of the file (if W is SEEK_SET),
   the current position (if W is SEEK_CUR),
   or the end of the file (if W is SEEK_END).
   Set *POS to the new file position.
   Returns zero if successful, nonzero if not.  */
typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);

/* Close COOKIE.  */
typedef int __io_close_fn (void *__cookie);
#390 "/usr/include/libio.h" 3 4
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
#434 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ ));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ ));

extern int _IO_peekc_locked (_IO_FILE *__fp);

/* This one is for Emacs. */



extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ ));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ ));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ ));
#464 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ ));
#75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
#107 "/usr/include/stdio.h" 3 4
/* The type of the second argument to `fgetpos' and `fsetpos'.  */


typedef _G_fpos_t fpos_t;
#119 "/usr/include/stdio.h" 3 4
/* The possibilities for the third argument to `setvbuf'.  */





/* Default buffer size.  */





/* End of file character.
   Some things throughout the library rely on this being -1.  */





/* The possibilities for the third argument to `fseek'.
   These values should not be changed.  */
#150 "/usr/include/stdio.h" 3 4
/* Default path prefix for `tempnam' and `tmpnam'.  */




/* Get the values:
   L_tmpnam	How long an array of chars must be to be passed to `tmpnam'.
   TMP_MAX	The minimum number of unique filenames generated by tmpnam
		(and tempnam when it uses tmpnam's name space),
		or tempnam (the two are separate).
   L_ctermid	How long an array to pass to `ctermid'.
   L_cuserid	How long an array to pass to `cuserid'.
   FOPEN_MAX	Minimum number of files that can be open at once.
   FILENAME_MAX	Maximum length of a filename.  */

#1 "/usr/include/bits/stdio_lim.h" 1 3 4
/* Copyright (C) 1994-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#165 "/usr/include/stdio.h" 2 3 4


/* Standard streams.  */
extern struct _IO_FILE *stdin; /* Standard input stream.  */
extern struct _IO_FILE *stdout; /* Standard output stream.  */
extern struct _IO_FILE *stderr; /* Standard error output stream.  */
/* C89/C99 say they're macros.  Make them happy.  */





/* Remove file FILENAME.  */
extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));
/* Rename file OLD to NEW.  */
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));



/* Rename file OLD relative to OLDFD to NEW relative to NEWFD.  */
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ ));



/* Create a temporary file and open it read/write.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */

extern FILE *tmpfile (void) /* Ignore */;
#208 "/usr/include/stdio.h" 3 4
/* Generate a temporary filename.  */
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ )) /* Ignore */;



/* This is the reentrant variant of `tmpnam'.  The only difference is
   that it does not allow S to be NULL.  */
extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ )) /* Ignore */;




/* Generate a unique temporary filename using up to five characters of PFX
   if it is not NULL.  The directory to put this file in is searched for
   as follows: First the environment variable "TMPDIR" is checked.
   If it contains the name of a writable directory, that directory is used.
   If not and if DIR is not NULL, that value is checked.  If that fails,
   P_tmpdir is tried and finally "/tmp".  The storage for the filename
   is allocated by `malloc'.  */
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) /* Ignore */;




/* Close STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fclose (FILE *__stream);
/* Flush STREAM, or all streams if STREAM is NULL.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fflush (FILE *__stream);



/* Faster versions when locking is not required.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern int fflush_unlocked (FILE *__stream);
#268 "/usr/include/stdio.h" 3 4
/* Open a file and create a new stream for it.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) /* Ignore */;
/* Open a file, replacing an existing stream with it.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) /* Ignore */;
#305 "/usr/include/stdio.h" 3 4
/* Create a new stream that refers to an existing system file descriptor.  */
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ )) /* Ignore */;
#318 "/usr/include/stdio.h" 3 4
/* Create a new stream that refers to a memory buffer.  */
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ )) /* Ignore */;

/* Open a stream that writes into a malloc'd buffer that is expanded as
   necessary.  *BUFLOC and *SIZELOC are updated with the buffer's location
   and the number of characters written on fflush or fclose.  */
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ )) /* Ignore */;




/* If BUF is NULL, make STREAM unbuffered.
   Else make it use buffer BUF, of size BUFSIZ.  */
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ));
/* Make STREAM use buffering mode MODE.
   If BUF is not NULL, use N bytes of it for buffering;
   else allocate an internal buffer N bytes long.  */
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ ));



/* If BUF is NULL, make STREAM unbuffered.
   Else make it use SIZE bytes of BUF for buffering.  */
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ ));

/* Make STREAM line-buffered.  */
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ ));




/* Write formatted output to STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);
/* Write formatted output to stdout.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int printf (const char *__restrict __format, ...);
/* Write formatted output to S.  */
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));

/* Write formatted output to S from argument list ARG.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);
/* Write formatted output to stdout from argument list ARG.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
/* Write formatted output to S from argument list ARG.  */
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));




/* Maximum chars of output to write in MAXLEN.  */
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
#411 "/usr/include/stdio.h" 3 4
/* Write formatted output to a file descriptor.  */
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));




/* Read formatted input from STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) /* Ignore */;
/* Read formatted input from stdin.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int scanf (const char *__restrict __format, ...) /* Ignore */;
/* Read formatted input from S.  */
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ ));





/* For strict ISO C99 or POSIX compliance disallow %as, %aS and %a[
   GNU extension which conflicts with valid %a followed by letter
   s, S or [.  */
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") /* Ignore */;


extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") /* Ignore */;

extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ ));
#467 "/usr/include/stdio.h" 3 4
/* Read formatted input from S into argument list ARG.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) /* Ignore */;

/* Read formatted input from stdin into argument list ARG.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) /* Ignore */;

/* Read formatted input from S into argument list ARG.  */
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));





/* For strict ISO C99 or POSIX compliance disallow %as, %aS and %a[
   GNU extension which conflicts with valid %a followed by letter
   s, S or [.  */
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) /* Ignore */;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) /* Ignore */;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ ))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
#527 "/usr/include/stdio.h" 3 4
/* Read a character from STREAM.

   These functions are possible cancellation points and therefore not
   marked with __THROW.  */
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);

/* Read a character from stdin.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int getchar (void);


/* The C standard explicitly says this is a macro, so we always do the
   optimization for it.  */



/* These are defined in POSIX.1:1996.

   These functions are possible cancellation points and therefore not
   marked with __THROW.  */
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);



/* Faster version when locking is not necessary.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern int fgetc_unlocked (FILE *__stream);




/* Write a character to STREAM.

   These functions are possible cancellation points and therefore not
   marked with __THROW.

   These functions is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);

/* Write a character to stdout.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int putchar (int __c);


/* The C standard explicitly says this can be a macro,
   so we always do the optimization for it.  */



/* Faster version when locking is not necessary.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern int fputc_unlocked (int __c, FILE *__stream);



/* These are defined in POSIX.1:1996.

   These functions are possible cancellation points and therefore not
   marked with __THROW.  */
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);





/* Get a word (int) from STREAM.  */
extern int getw (FILE *__stream);

/* Write a word (int) to STREAM.  */
extern int putw (int __w, FILE *__stream);




/* Get a newline-terminated string of finite length from STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     /* Ignore */;



/* Get a newline-terminated string from stdin, removing the newline.
   DO NOT USE THIS FUNCTION!!  There is no limit on how much it will read.

   The function has been officially removed in ISO C11.  This opportunity
   is used to also remove it from the GNU feature list.  It is now only
   available when explicitly using an old ISO C, Unix, or POSIX standard.
   GCC defines _GNU_SOURCE when building C++ code and the function is still
   in C++11, so it is also available for C++.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern char *gets (char *__s) /* Ignore */ __attribute__ ((__deprecated__));
#655 "/usr/include/stdio.h" 3 4
/* Read up to (and including) a DELIMITER from STREAM into *LINEPTR
   (and null-terminate it). *LINEPTR is a pointer returned from malloc (or
   NULL), pointing to *N characters of space.  It is realloc'd as
   necessary.  Returns the number of characters read (not including the
   null terminator), or -1 on error or EOF.

   These functions are not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation they are cancellation points and
   therefore not marked with __THROW.  */
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) /* Ignore */;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) /* Ignore */;

/* Like `getdelim', but reads up to a newline.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) /* Ignore */;




/* Write a string to STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);

/* Write a string, followed by a newline, to stdout.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int puts (const char *__s);


/* Push a character back onto the input buffer of STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int ungetc (int __c, FILE *__stream);


/* Read chunks of generic data from STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) /* Ignore */;
/* Write chunks of generic data to STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
#731 "/usr/include/stdio.h" 3 4
/* Faster versions when locking is not necessary.

   These functions are not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation they are cancellation points and
   therefore not marked with __THROW.  */
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) /* Ignore */;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);




/* Seek to a certain position on STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fseek (FILE *__stream, long int __off, int __whence);
/* Return the current position of STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern long int ftell (FILE *__stream) /* Ignore */;
/* Rewind to the beginning of STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern void rewind (FILE *__stream);


/* The Single Unix Specification, Version 2, specifies an alternative,
   more adequate interface for the two functions above which deal with
   file offset.  `long int' is not the right type.  These definitions
   are originally defined in the Large File Support API.  */



/* Seek to a certain position on STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fseeko (FILE *__stream, __off_t __off, int __whence);
/* Return the current position of STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern __off_t ftello (FILE *__stream) /* Ignore */;
#794 "/usr/include/stdio.h" 3 4
/* Get STREAM's position.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);
/* Set STREAM's position.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fsetpos (FILE *__stream, const fpos_t *__pos);
#825 "/usr/include/stdio.h" 3 4
/* Clear the error and EOF indicators for STREAM.  */
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ ));
/* Return the EOF indicator for STREAM.  */
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ )) /* Ignore */;
/* Return the error indicator for STREAM.  */
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ )) /* Ignore */;



/* Faster versions when locking is not required.  */
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) /* Ignore */;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) /* Ignore */;




/* Print a message describing the meaning of the value of errno.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern void perror (const char *__s);


/* Provide the declarations for `sys_errlist' and `sys_nerr' if they
   are available on this system.  Even if available, these variables
   should not be used directly.  The `strerror' function provides
   all the necessary functionality.  */

#1 "/usr/include/bits/sys_errlist.h" 1 3 4
/* Declare sys_errlist and sys_nerr, or don't.  Compatibility (do) version.
   Copyright (C) 2002-2015 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */





/* sys_errlist and sys_nerr are deprecated.  Use strerror instead.  */


extern int sys_nerr;
extern const char *const sys_errlist[];
#854 "/usr/include/stdio.h" 2 3 4



/* Return the system file descriptor for STREAM.  */
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) /* Ignore */;



/* Faster version when locking is not required.  */
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) /* Ignore */;




/* Create a new stream connected to a pipe running the given command.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern FILE *popen (const char *__command, const char *__modes) /* Ignore */;

/* Close a stream opened by popen and return the status of its child.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int pclose (FILE *__stream);




/* Return the name of the controlling terminal.  */
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ));
#909 "/usr/include/stdio.h" 3 4
/* These are defined in POSIX.1:1996.  */

/* Acquire ownership of STREAM.  */
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ ));

/* Try to acquire ownership of STREAM but do not block if it is not
   possible.  */
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) /* Ignore */;

/* Relinquish the ownership granted for STREAM.  */
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ ));
#930 "/usr/include/stdio.h" 3 4
/* If we are compiling with optimizing read this file.  It contains
   several optimizing inline functions and macros.  */
#66 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h" 2








// 10x is a heuristic, it just needs to be large enough to remove correlation

struct prng_rand_t {
  uint64_t s[((1)<<6)]; // Lags
  uint_fast16_t i; // Location of the current lag
  uint_fast16_t c; // Exhaustion count
};




static inline uint64_t prng_rand(struct prng_rand_t *state) {
  uint_fast16_t i;
  uint_fast16_t r, new_rands=0;

  if( !state->c ) { // Randomness exhausted, run forward to refill
    new_rands += (((55)*10)-(55))+1;
    state->c = (55)-1;
  } else {
    new_rands = 1;
    state->c--;
  }

  for( r=0; r<new_rands; r++ ) {
    i = state->i;
    state->s[i&(((1)<<6)-1)] = state->s[(i+((1)<<6)-(24))&(((1)<<6)-1)]
                              + state->s[(i+((1)<<6)-(55))&(((1)<<6)-1)];
    state->i++;
  }
  return state->s[i&(((1)<<6)-1)];
}

static inline void prng_srand(uint64_t seed, struct prng_rand_t *state) {
  uint_fast16_t i;
  // Naive seed
  state->c = (55);
  state->i = 0;

  state->s[0] = seed;
  for(i=1; i<((1)<<6); i++) {
    // Arbitrary magic, mostly to eliminate the effect of low-value seeds.
    // Probably could be better, but the run-up obviates any real need to.
    state->s[i] = i*(2147483647ULL) + seed;
  }

  // Run forward 10,000 numbers
  for(i=0; i<10000; i++) {
    prng_rand(state);
  }
}

// Clean up our macros







// PRNG_RAND_MAX is exported
#6 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h" 2

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
#6 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c" 2
#66 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"
const unsigned pipeline_ii_sub = 11;
const unsigned pipeline_ii_addkey = 8;
const unsigned pipeline_ii_cpkey = 6;
const unsigned pipeline_ii_mix = 1;
const unsigned pipeline_ii_exp1 = 1;
const unsigned pipeline_ii_exp2 = 2;
const unsigned pipeline_ii_ecb1 = 16;
const unsigned pipeline_ii_ecb2 = 6;
const unsigned pipeline_ii_ecb3 = 12;

const unsigned unroll_factor_sub = 14;
const unsigned unroll_factor_addkey = 9;
const unsigned unroll_factor_cpkey = 4;
const unsigned unroll_factor_mix = 4;
const unsigned unroll_factor_exp1 = 2;
const unsigned unroll_factor_exp2 = 1;
const unsigned unroll_factor_ecb1 = 32;
const unsigned unroll_factor_ecb2 = 4;
const unsigned unroll_factor_ecb3 = 7;




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
#171 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"
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



#pragma HLS unroll factor = unroll_factor_sub

 buf[i] = sbox[(buf[i])];
    }
} /* aes_subBytes */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey(uint8_t *buf, uint8_t *key)
{
    register uint8_t i = 16;

    addkey : while (i--)
    {



#pragma HLS unroll factor = unroll_factor_addkey

 buf[i] ^= key[i];
    }
} /* aes_addRoundKey */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey_cpy(uint8_t *buf, uint8_t *key, uint8_t *cpk)
{
    register uint8_t i = 16;

    cpkey : while (i--)
    {



#pragma HLS unroll factor = unroll_factor_cpkey

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
    j = buf[14]; buf[14] = buf[6]; buf[6] = j;

} /* aes_shiftRows */

/* -------------------------------------------------------------------------- */
void aes_mixColumns(uint8_t *buf)
{
    register uint8_t i, a, b, c, d, e;

    mix : for (i = 0; i < 16; i += 4)
    {

#pragma HLS pipeline ii=pipeline_ii_mix



 a = buf[i]; b = buf[i + 1]; c = buf[i + 2]; d = buf[i + 3];
        e = a ^ b ^ c ^ d;
        buf[i] ^= e ^ rj_xtime(a^b); buf[i+1] ^= e ^ rj_xtime(b^c);
        buf[i+2] ^= e ^ rj_xtime(c^d); buf[i+3] ^= e ^ rj_xtime(d^a);
    }
} /* aes_mixColumns */

/* -------------------------------------------------------------------------- */
void aes_expandEncKey(uint8_t *k, uint8_t *rc)
{
    register uint8_t i;

    k[0] ^= sbox[(k[29])] ^ (*rc);
    k[1] ^= sbox[(k[30])];
    k[2] ^= sbox[(k[31])];
    k[3] ^= sbox[(k[28])];
    *rc = (((*rc)<<1) ^ ((((*rc)>>7) & 1) * 0x1b));

    exp1 : for(i = 4; i < 16; i += 4)
    {

#pragma HLS pipeline ii=pipeline_ii_exp1



 k[i] ^= k[i-4], k[i+1] ^= k[i-3],
        k[i+2] ^= k[i-2], k[i+3] ^= k[i-1];
    }
    k[16] ^= sbox[(k[12])];
    k[17] ^= sbox[(k[13])];
    k[18] ^= sbox[(k[14])];
    k[19] ^= sbox[(k[15])];

    exp2 : for(i = 20; i < 32; i += 4)
    {

#pragma HLS pipeline ii=pipeline_ii_exp2



 k[i] ^= k[i-4], k[i+1] ^= k[i-3],
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
{_ssdm_SpecArrayDimSize(ctx_enckey,32);_ssdm_SpecArrayDimSize(buf,16);_ssdm_SpecArrayDimSize(ctx_key,32);_ssdm_SpecArrayDimSize(k,32);_ssdm_SpecArrayDimSize(ctx_deckey,32);
#pragma HLS LATENCY min=1
#303 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"

#pragma HLS RESOURCE variable=k core=RAM_1P
#303 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"

#pragma HLS INTERFACE bram port=k
#303 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"

#pragma HLS INTERFACE m_axi port=ctx_deckey offset=direct bundle=ctx_deckey
#303 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"

#pragma HLS INTERFACE m_axi port=ctx_enckey offset=direct bundle=ctx_enckey
#303 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"

#pragma HLS INTERFACE m_axi port=ctx_key offset=direct bundle=ctx_key
#303 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"

#pragma HLS INTERFACE m_axi port=buf offset=direct bundle=buf
#303 "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c"

    //INIT
    uint8_t rcon = 1;
    uint8_t i;

    ecb1 : for (i = 0; i < 32; i++){



#pragma HLS unroll factor = unroll_factor_ecb1

 ctx_enckey[i] = ctx_deckey[i] = k[i];
    }
    ecb2 : for (i = 8;--i;){

#pragma HLS pipeline ii=pipeline_ii_ecb2



 aes_expandEncKey(ctx_deckey, &rcon);
    }

    //DEC
    aes_addRoundKey_cpy(buf, ctx_enckey, ctx_key);
    ecb3 : for(i = 1, rcon = 1; i < 14; ++i)
    {



#pragma HLS unroll factor = unroll_factor_ecb3

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
} /* aes256_encrypt */
