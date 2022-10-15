close all; clear all; 

g = 9.8;
A1 = 1;
A2 = 1;
Aw1 = 0.1;
Aw2 = 0.1;
h1max = 9;
h2max = 5;
fwew1max = Aw1*sqrt(2*g*h1max);
fwew2max = Aw2*sqrt(2*g*h2max);
dfwew1=0.1*fwew1max;
dfwew2=0.1*fwew2max;

t0 = 1;
a1 = Aw1*sqrt(2*g*h1max)/h1max;
a2 = Aw2*sqrt(2*g*h2max)/h2max;

fwew2 = 0.1;
x = ['m', 'c', 'r'];
k = [0.01, 0.4, 0.9];
for i=1:3
fwew1 = k(i)*fwew1max;
h10 = fwew1/a1;
h20 = (fwew1+fwew2)/a2;
h = [h10 h20];

  A = [-a1/A1 0; a1/A2 -a2/A2];
  B = [1/A1 0; 0 1/A2];
  C = eye(2);
  D = zeros(2);
  
  t=sim('trans');
  figure(1); plot(t,h1,x(i)); legend('h1(t)'); grid on; hold on;
  figure(2); plot(t,h2,x(i)); legend('h2(t)'); grid on; hold on;
end
  fwew1=0;
  fwew2=0;
  t=sim('trans2');
  figure(3); plot(t,h1); legend('h1(t)'); grid on; hold on;
  figure(4); plot(t,h2); legend('h2(t)'); grid on; hold on;
  