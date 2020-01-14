// C program to find 8-point DFT of a real sequence
#include<stdio.h>
#include<math.h>
void main(void)
{
    float x[10],real_X[10],img_X[10],mag_X[10];
    int k,n,N=8;
    for(n=0;n<N;n++)
    {
        x[n]=n+1;
    }
    for(k=0;k<N;k++)
    {
        real_X[k]=0.0;
        img_X[k]=0.0;
        for(n=0;n<N;n++)
        {
            real_X[k]=real_X[k]+x[n]*cos(2*3.1415*n*k/N);
            img_X[k]=img_X[k]+x[n]*-1*sin(2*3.1415*n*k/N);
        }
        mag_X[k]=sqrt(real_X[k]*real_X[k]+img_X[k]*img_X[k]);
    }
}
