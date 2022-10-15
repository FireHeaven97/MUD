clear all; close all;

u0=0; t0=0; du=1; b=1;
x0 = 0; dx0 = 0;
dirack = 1;
ksi = [2, -2, 0, 0.9, -0.5];
Wn = 3;
f=[figure, figure, figure, figure, figure]; for i=f; figure(i); grid on; hold on; end

for i = 1:5
    
    lam1 = -Wn*(ksi(i) - sqrt( ksi(i)*ksi(i) -1) );
    lam2 = -Wn*(ksi(i) + sqrt( ksi(i)*ksi(i) -1) );
  
    a0 = Wn*2;
    a1 = 2*Wn*ksi(i);
    a2 = 1;
    time = sim('symulek');
    Re1 = real(lam1);
    Im1 = imag(lam1);
    Re2 = real(lam2);
    Im2 = imag(lam2);
    figure(f(i)); 
    subplot(3,1,3);
    plot(time, x); title('Skok');
    subplot(3,1,1);
    plot(Re1, Im1, '*', Re2, Im2, '*'); title('Lambdy');
    dirack = 1 - dirack;
    time = sim('symulek');
    subplot(3,1,2);
    plot(time,x); title('Dirack');
end

