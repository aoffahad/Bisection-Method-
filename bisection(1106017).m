clc
e1=input('Enter f(x)=','s');
f=inline(e1);
n=input('Enter No. of Iteration=');
a=input('Enter Initial Guess a=');
b=input('Enter Initial Guess b=');
while (f(a)*f(b)>0)
	disp('Initial Guesses are not correct');
    a=input('Enter Initial Guess a=');
    b=input('Enter Initial Guess b=');
end
fprintf('\n Itr. No.\t a\t\t b \t\t xr')
for i=1:n
    xr=(a+b)/2;
	if(f(xr)*f(b)<0)
        a=xr;
	else
        b=xr;
	end
    fprintf('\n %d \t\t %f\t %f \t %f',i,a,b,xr);
end
fprintf('\n\tRoot of equation is=%f',xr);

