// c program to implement Circular Convolution of two given sequences
#include<stdio.h>
void main()
{
    float h[20],x[20],y[20],sum;
    int N,n,k,m;
    /* Length of the sequences */
    N=4;
    // First Sequence
    x[0]=1.0;
    x[1]=2.0;
    x[2]=3.0;
    x[3]=4.0;
    // Second Sequences
    h[0]=2.0;
    h[1]=1.0;
    h[2]=2.0;
    h[3]=1.0;

    // Calculates circular convolution
    for(m=0;m<N;m++)
    {
        sum=0.0;
        // computation of one value in circular convolution
        for(k=0;k<N;k++)
        {
            // Modulo index
            if((m-k)>=0)
                n=m-k;
            else
                n=m-k+N;
            sum+=x[k]*h[n];
        }
        y[m]=sum;
    }
}
