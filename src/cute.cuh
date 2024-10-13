#include<cute/util/print.hpp>
#include<cute/layout.hpp>
#include "utils.cuh"
#include<iostream>

using namespace cute;


int cute_main(){
    /* 
    CuTe provides make_layout, make_shape and make_stride as the primary intrinsics to create a Layout.
    
    Rule of thumb: Any rank-N shape can be represented as rank-(N-i) shape, where i in {0...N}
    Thus, any co-ordinate can have multiple equivalent co-ordinates. For examples, see https://github.com/NVIDIA/cutlass/blob/main/media/docs/cute/01_layout.md#coordinate-mapping
    */
    // auto layout1 = make_layout(make_shape(Int<4>{}, Int<2>{}),
    //         make_stride(Int<2>{}, Int<1>{}));
    // auto layout2 = make_layout(make_shape(make_shape(Int<4>{}, Int<2>{})),
    //                           make_stride(make_stride(Int<2>{}, Int<1>{})));
    // auto layout3 = make_layout(make_shape(Int<2>{}, make_shape(Int<2>{}, Int<2>{})),
    //                            make_stride(Int<4>{}, make_stride(Int<2>{}, Int<1>{})));
    // auto layout4 = make_layout(make_shape(Int<2>{}, make_shape(Int<2>{}, Int<2>{})));
    // 
    // print1D(layout1);
    // println();
    // // print_layout(layout1);
    // auto layoutA = make_layout(make_shape(Int<10>{}, Int<2>{}),
    //                            make_stride(Int<16>{}, Int<4>{}));
    // auto layoutB = make_layout(make_shape(Int<5>{}, Int<4>{}),
    //                            make_stride(Int<33>{}, Int<5>{}));
    // auto layoutC = composition(layoutA, layoutB);
    // print(layoutC);

    auto A = make_layout(make_shape(10, 3), make_stride(16, 4));
    auto B1 = make_layout(make_shape(5, 6), make_stride(1, 5));
    auto B2 = make_layout(make_shape(5, 6), make_stride(2, 6));

    // auto R1 = composition(A, B1);
    auto R2 = composition(A, B2);
    std::cout << R2;
    // print(R1);
    println();
    // print(R2); 
    println(); return 0;
}
