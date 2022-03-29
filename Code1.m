%By Alireza Kabgani
%Numerical Analysis: Urmia University of Technology
%a.kabgani@gmail.com
%Code 1
%This code receives Exact value and Approximate value as input.
%Outputs are Relative error, Absolute error, and The number of significant
%digits.
%%
clear
clc
format long

p = input('Enter exact value: '); %Exact value
phat=input('Enter approximate value: ');  %Approximate value

Abserr=abs(p-phat); % Absolute error
Rerr=(Abserr/abs(p)); % Relative error


t=0;
d=0;
while (t==0)
    if (Rerr<(10^(1-d))/2)
       d=d+1;
    else
       t=1;
    end
    
end
d=d-1;
fprintf('The Absolute error is %e\n',Abserr);
fprintf('The Relative error is %e\n',Rerr);
fprintf('The number of significant digits is %d\n',d);