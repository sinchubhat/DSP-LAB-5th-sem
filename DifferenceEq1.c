/* C program to plot the impulse response and the output of the system for the input x(n)=u(n)-u(n-10) , for the discrete system given by the difference
equation y(n)-0.9y(n-1)=x(n) */
#include<stdio.h>
#include<math.h>>
void main()
{
    float a[5],b[5],x[25],y[25],h[25],sumXn_k,sumYn_k;
    int N,M,k,L,n;
    // Number of denominator coefficients and ak   (a subscript k)
    N=1;
    a[1]=-0.9;
    // Number of numerator coefficients and bk (b subscript k)
    M=1;
    b[0]=1;
    // Number of input samples and the input sequences
    L=25;
    // Impulse sequence from n=0 to n=24
    x[0]=1.0;
    for(k=1;k<L;k++)
    {
        x[k]=0.0;
    }
        // Computation of h(n) that is the impulse response
     for(n=0;n<L;n++)
     {
         sumYn_k=0;
         sumXn_k=0;
         // computation of a1*y(n-1)+a2*y(n-2)+a3*y(n-3)+....
         for(k=1;(k<=n)&&(k<=N);k++)
         {
             sumYn_k+=a[k]*h[n-k];
         }
         // computation of b0*x(n)+b1*x(n-1)+b2*x(n-2)+.....
         for(k=0;(k<=n)&&(k<M);k++)
         {
             sumXn_k+=b[k]*x[n-k];
         }
         h[n]=-sumYn_k+sumXn_k;
     }
     // Number of input samples and the input sequence x(n)=u(n)-u(n-10)
     L=25;
     // input sequence from n=0 to n=24
     for(k=0;k<10;k++)
     {
         x[k]=1.0;
     }
     for(k=10;k<L;k++)
     {
         x[k]=0.0;
     }
     // computation of y(n) that is the output sequence
     for(n=0;n<L;n++)
     {
         sumYn_k=0;
         sumXn_k=0;
         // computation of a1*y(n-1)+a2*y(n-2)+a3*y(n-3)+....
         for(k=1;(k<=n)&&(k<=N);k++)
         {
             sumYn_k+=a[k]*y[n-k];
         }
         // computation of b0*x(n)+b1*x(n-1)+b2*x(n-2)+.....
         for(k=0;(k<=n)&&(k<M);k++)
         {
             sumXn_k+=b[k]*x[n-k];
         }
         y[n]=-sumYn_k+sumXn_k;

     }


}
