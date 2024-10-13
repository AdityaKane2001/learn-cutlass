#include "add.cuh"
#include "gemm.cuh"
#include "cute.cuh"
#include "cute-tensor.cuh"

int main(){

    // gemm_main();
    auto fn = cute_main;
    return fn();
}
