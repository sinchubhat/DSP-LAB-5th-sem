// C program to plot the impulse response of a second order system given by the difference equation y(n)-y(n-1)+0.9y(n-2)=x(n)
/* Impulse Response of a given system
Solve the given difference equation  y(n)-y(n-1)+0.9y(n-2)=x(n)
Calculate the impulse response h(n) at n=0,1,...,100
Calculate the unit step response s(n) at n=0,1,....,100
b=[1] and a=[1 -1 0.9] */

#include<stdio.h>
#include<math.h>>
void main()
{
    float a[5],b[5],x[25],h[25],sumXn_k,sumYn_k;
    int N,M,k,L,n;
    // Number of denominator coefficients and ak   (a subscript k)
    N=2;
    a[1]=-1.0;
    a[2]=0.9;
    // Number of numerator coefficients and bk (b subscript k)
    M=1;
    b[0]=1;
    // Number of input samples and the input sequences
    L=25;
    // Impulse sequence from n=0 to n=25
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
}

