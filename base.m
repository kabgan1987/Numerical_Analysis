
function base

%Using this code you can convert your number in Decimal to other base system
% Alireza Kabgani
%a.kabgani@gmail.com

a1=input ('Enter your number in the decimal base: ');
b=input ('Enter the base number: ');

i=1;
a(i)=a1;

while  true
   r(i)=mod(a(i),b);
   q(i)=(a(i)-r(i))/b;
   
   if q(i)<b
     break;
   end
   
   a(i+1)=q(i);
   i=i+1;    
end

r=[r q(i)];
r=flip(r);

disp (['you have entered ',num2str(a1),' and the required base is ',num2str(b)])
disp (['Your number in this base is: ',num2str(r)])
