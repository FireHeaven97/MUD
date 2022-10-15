%Szymon Palmowski 235911 18 pa?dziernika 2017r.
t=0:0.1:10
lam1=-1+1/sqrt(2);
lam2=-1-1/sqrt(2);
xw=0*t+2;

%1)
A1=-1/(1-lam1/lam2);
A2=-1-A1;
xs1=A1.*exp(lam1*t);
xs2=A2.*exp(lam2*t);
xs=xs1+xs2+xw;

figure; hold on, grid on;
plot(t, xs1, t, xs2, t, xs, t, xw);
legend('xs1', 'xs2', 'xs', 'xw');
title('U(t)=1, x(0)=1, dx/dt(0)=0');
xlabel('t [s]');
ylabel('x(t) [m]');

%2)
B2=(2-lam1)/(lam2^2-lam1*lam2);
B1=(1-lam2*B2)/lam1;
xs12=B1.*exp(lam1*t);
xs22=B2.*exp(lam2*t);
xs2=xs12+xs22+xw;

figure; hold on, grid on;
plot(t, xs12, t, xs22, t, xs2, t, xw);
legend('xs1', 'xs2', 'xs', 'xw');
title('U(t)=1, x(0)=1, dx/dt(0)=2');
xlabel('t [s]');
ylabel('x(t) [m]');

%3)
C1=-2/(1-lam1/lam2)
C2=-lam1/lam2*C1;
xs13=C1.*exp(lam1*t);
xs23=C2.*exp(lam2*t);
xs3=xs13+xs23+xw;

figure; hold on, grid on;
plot(t, xs13, t, xs23, t, xs3, t, xw);
legend('xs1', 'xs2', 'xs', 'xw');
title('U(t)=1, x(0)=0, dx/dt(0)=0');
xlabel('t [s]');
ylabel('x(t) [m]');