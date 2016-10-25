clear all;
close all;

%1:
f=1;
fs=20;
t=[0:0.1:1];
x1=sin(2*pi*f*t);
plot(x1);
n=[0:1/fs:1];
x2=sin(2*pi*(f/fs)*n);
figure;
stem(x2);

%2:
N=10;
for i=1:N
	if i<4 x(i)=0;
	else x(i)=1;
	end
end
for i=1:N
	if i<N
		y(i)=(x(i)+x(i+1))/2;
	else 
		y(i)=x(i)/2;
	end
end
figure;
stem(y);

%In order to have a casual system, it should depend only in present and past values, such  that:

for i=1:N
	if i>1
		y2(i)=(x(i-1)+x(i))/2;
	else 
		y2(i)=x(i)/2;
	end
end
figure;
stem(y2);

%3:
%Primitive operator:
N=10;
for i=1:N
		y3(i)=x(i);
end
figure;
stem(y3);

%The primitive operator is stable as it reaches and remains on a certain value.

%The impulse response of the primitive operator is a dirac of size 1.

%Stability of system 1:
for i=1:N
	if i>1
		y4(i)=x(i)+2*y4(i-1);
	else 
		y4(i)=x(i);
	end
end
figure;
stem(y4);
%The system is not stable as it doesn-t reach a steady-stsate value.

%Impulse response:
for i=1:N
	if i!=5 xdirac(i)=0;
	else xdirac(i)=1;
	end
end
for i=1:N
	if i>1
		y5(i)=xdirac(i)+2*y5(i-1);
	else 
		y5(i)=xdirac(i);
	end
end
figure;
stem(y5);

%Stability of system 2:


%Impulse response:
for i=1:N
	if i>1
		y6(i)=xdirac(i)+y6(i-1)/3;
	else 
		y6(i)=xdirac(i);
	end
end
figure;
stem(y6);
%The system is not stable as it doesn-t reach a steady-stsate value.

%3:
xa=[0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0];
xb=[0 0 0 0 0 0 0 0 0 4 3 2 1 0 0 0 0 0 0];
for i=1:19
	if i>1 && i<19
		ya(i)=3*xa(i-1)-2*xa(i)+xa(i+1);
	elseif i==19
		ya(i)=3*xa(i-1)-2*xa(i);
	elseif i==1
		ya(i)=2*xa(i)+xa(i+1);
	end
end
figure;
stem(ya);

for i=1:19
	if i>1 && i<19
		yb(i)=3*xb(i-1)-2*xb(i)+xb(i+1);
	elseif i==19
		yb(i)=3*xb(i-1)-2*xb(i);
	elseif i==1
		yb(i)=2*xb(i)+xb(i+1);
	end
end
figure;
stem(yb);