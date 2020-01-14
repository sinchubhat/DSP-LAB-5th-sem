n=15;
x=[];
for i=1:n+1
    number=rand();
    x(i)=sin(2*pi*10/100*i)+0.00001*number;
end
disp(x)
    