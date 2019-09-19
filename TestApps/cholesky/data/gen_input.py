#!/usr/bin/env python

# Script for generating test matrices for Cholesky decomposition

# Created on Sep 17, 2019
# Author: Hans Giesen (giesen@seas.upenn.edu)


# The output of this script can be dumped directly into a header file called input.h and included into the testbench.

# Generating a matrix that can be decomposed is straightforward.  One only has to make a special matrix L that
# satisfies a few requirements and multiply that matrix with its transpose (LL^T).  The matrix L must have all
# elements above the diagonal set to 0, and all diagonal elements set to positive values.

# The main difficulty is in generating a matrix that is numerically stable.  In unstable matrices, Cholesky
# decomposition may try to compute the square root of negative elements, which is impossible.  Experimentally, I found
# that matrices in which the diagonal elements have a magnitude larger than the magnitude of the off-diagonal elements
# times the matrix width are most stable.  As matrices become larger than 100 elements wide or so, this trick doesn't
# work anymore, and the matrix becomes unstable anyway.

import numpy as np

# Width of generated matrix
width = 66

m = 2 * np.random.rand(width, width) - 1
np.fill_diagonal(m, 1)
l = np.tril(m)
a2 = np.random.randint(100, 110, width)
half_d = np.diag(a2)
d = half_d * half_d
ldl = l.dot(d.dot(l.T))
l2 = np.linalg.cholesky(ldl)

for i in range(width):
    for j in range(width):
        print("A[{}][{}] = {};".format(i, j, ldl[i, j]))
