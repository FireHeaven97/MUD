close all; clear all; 

g = 10;
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
for i = 1:3;
        fwew1 = k(i)*fwew1max;
        h10 = (fwew1/Aw1)^2/2/g;
        h20 = ((Aw1*sqrt(2*g*h10)+fwew2)/Aw2)^2/2/g;
        t = sim('kaskadka2');
        figure(1); xlim([0 20]); plot(t, h1, x(i)); legend('0.01', '0.4', '0.9'); title('h1(t)'); xlabel('t'); ylabel('h'); grid on; hold on;
        figure(2); xlim([0 20]); plot(t, h2, x(i)); legend('0.01', '0.4', '0.9'); title('h2(t)'); xlabel('t'); ylabel('h'); grid on; hold on;
end
for i = 1:3;
        fwew1 = k(i)*fwew1max;
        h10 = fwew1/a1;
        h20 = (fwew1+fwew2)/a2;
        t = sim('kaskadka');
        figure(1); xlim([0 20]); plot(t, h1, [x(i) '--']); legend('0.01', '0.4', '0.9'); title('h1(t) Zmienia sie fwew1'); xlabel('t'); ylabel('h'); grid on; hold on;
        figure(2); xlim([0 20]); plot(t, h2, [x(i) '--']); legend('0.01', '0.4', '0.9'); title('h2(t) Zmienia sie fwew1'); xlabel('t'); ylabel('h'); grid on; hold on;
end
fwew1 = 0.1;
x = ['m', 'c', 'r'];
k = [0.01, 0.4, 0.9];
dfwew1=0;
for i = 1:3;
        fwew2 = k(i)*fwew2max;
        h10 = (fwew1/Aw1)^2/2/g;
        h20 = ((Aw1*sqrt(2*g*h10)+fwew2)/Aw2)^2/2/g;
        t = sim('kaskadka2');
        figure(3); xlim([0 20]); plot(t, h1, x(i)); legend('0.01', '0.4', '0.9'); title('h1(t) Zmienia sie fwew1'); xlabel('t'); ylabel('h'); grid on; hold on;
        figure(4); xlim([0 20]); plot(t, h2, x(i)); legend('0.01', '0.4', '0.9'); title('h2(t) Zmienia sie fwew1'); xlabel('t'); ylabel('h'); grid on; hold on;
end
for i = 1:3;
        fwew2 = k(i)*fwew2max;
        h10 = fwew1/a1;
        h20 = (fwew1+fwew2)/a2;
        t = sim('kaskadka');
        figure(3); xlim([0 20]); plot(t, h1, [x(i) '--']); legend('0.01', '0.4', '0.9'); title('h1(t) Zmienia sie fwew2'); xlabel('t'); ylabel('h'); grid on; hold on;
        figure(4); xlim([0 20]); plot(t, h2, [x(i) '--']); legend('0.01', '0.4', '0.9'); title('h2(t) Zmienia sie fwew2'); xlabel('t'); ylabel('h'); grid on; hold on;
end