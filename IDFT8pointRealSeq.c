// C program to find 8-point IDFT of a real sequence
#include<stdio.h>
#include<math.h>
void main(void)
{
  float x[10],real_X[10],img_X[10],pi=3.1415926;
  int k,n,N=8;
  printf(" Enter the IDFT of the sequence \n");
  for(k=0;k<N;k++)
  {
      scanf("%f",&real_X[k]);
      scanf("%f",&img_X[k]);
  }
  for(n=0;n<N;n++)
  {
      x[n]=0.0;
      for(k=0;k<N;k++)
      {
          x[n]=x[n]+real_X[k]*cos(2*pi*n*k/N)-img_X[k]*sin(2*pi*n*k/N);
      }
      x[n]=x[n]/N;
  }
}

