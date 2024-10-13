#include<cute/layout.hpp>
#include<cute/tensor.hpp>
#include "utils.cuh"

int cute_tensor_main(){

    float A[8];

    Tensor tensor_8 = make_tensor(make_gmem_ptr(&A), make_layout(Int<8>{}));
    Tensor rmem_4x8_col = make_tensor<float>(Shape<_4,_8>{});
    
    print(tensor_8);
    println();
    print(rmem_4x8_col);

    println();
    return 0;
}
