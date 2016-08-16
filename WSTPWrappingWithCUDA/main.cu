#include "cudaIncludes.h"

#include <stdio.h>
#include <sal.h>
#define WL_WSTP_MAIN
#define WL_ALLOC_CONSOLE
#include <paulwl.h>

__host__ __device__ int sqr(int x) {
    return x*x;
}

extern __host__ __device__ int linear_global_threadId();

__host__ __device__ int tid() {
    return linear_global_threadId();
}

__host__ __device__ int sqrtid() {
    return linear_global_threadId()*linear_global_threadId();
}


__host__ __device__ int readAtTid(_In_reads_(n) int const * const v, int n) {
    return v[linear_global_threadId()];
}