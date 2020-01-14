n1=input('enter index \n');
y1=input('enter amplitude \n');
n2=input('enter h(n) index \n');
y2=input('enter amplitude \n');
n=((min(n1)+min(n2)):max(n1)+max(n2));
y3=conv(y1,y2)
stem(n,y3,'r')
xlabel('n--->');
ylabel('y(n)--->');
disp;





