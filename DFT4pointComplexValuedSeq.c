// C program to find 4-point DFT of a complex valued sequence
#include<stdio.h>
#include<math.h>
void main(void)
{
    float real_X[4],img_X[4],real_x[4],img_x[4],mag_X[10];
    int k,n,N=4;
    for(n=0;n<N;n++)
    {
        real_x[n]=n+1;
    }
    for(k=0;k<N;k++)
    {
        real_X[k]=0.0;
        img_X[k]=0.0;
        for(n=0;n<N;n++)
        {
            real_X[k]=real_X[k]+((real_x[n]*cos(2*3.1415*n*k/N))+(img_x[n]*sin(2*3.1415*n*k/N));
            img_X[k]=img_X[k]+((img_x[n]*cos(2*3.1415*n*k/N))-(real_x[n]*sin(2*3.1415*n*k/N)));
        }
        mag_X[k]=sqrt(real_X[k]*real_X[k]+img_X[k]*img_X[k]);
    }
}

