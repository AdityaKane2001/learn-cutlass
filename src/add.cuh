#include<iostream>
#include<cuda.h>
#include<cuda_runtime.h>


using namespace std;

__global__ void add(float* a, float*b, float* out, int N, int BLOCK_SIZE){

    int idx = blockIdx.x * BLOCK_SIZE + threadIdx.x;
 
    if (idx < N){
        out[idx] = a[idx] + b[idx];
    }
}



int add_main(){
    int num_elem = 1000;
    
    float* a;
    float* b;
    float* out;

    cudaMallocManaged(&a, num_elem * sizeof(float));
    cudaMallocManaged(&b, num_elem * sizeof(float));
    cudaMallocManaged(&out, num_elem * sizeof(float));
    
    for (int i = 0; i < num_elem; i++) {
        a[i] = 1.0f;
        b[i] = 2.0f;
    }

    constexpr int BLOCK_SIZE = 128;
    int num_blocks = (num_elem / BLOCK_SIZE) + 1;
    
    add<<<num_blocks, BLOCK_SIZE>>>(a, b, out, num_elem, BLOCK_SIZE);
    cudaDeviceSynchronize();    
 
    for(int i=0; i<5; i++){
        printf("%f\n", out[i]);
    }        

    return 0;
}
