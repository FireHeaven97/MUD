close all;
clear all;
qgn = 1000;
Tzewn = -20;
Twewn = 20;
Tpn = 10;

Kcw = qgn / (1.25 * Twewn - Tzewn - 0.25 * Tpn);
Kcp = (Kcw * ( Twewn - Tpn )) / ( 4 * ( Tpn - Tzewn ));
Kcwp = 0.25 * Kcw;

WykresTwewq = figure; 
hold on;
grid on;
WykresTpq = figure;
hold on;
grid on;
WykresTwewTzew = figure; 
hold on;
grid on;
WykresTpTzew = figure;
hold on;
grid on;

qg = [0:200:qgn]
Tzew = [Tzewn:2:10];

for Tzew = [Tzewn:2:10];
    Tp = (qg + 5*Kcp*Tzew+Kcw*Tzew)/(5*Kcp+Kcw);
    Twew = (4*Kcp*-4*Kcp*Tzew+Kcw*Tp)/Kcw;
    figure(WykresTwewq);
    plot(qg, Twew)
    figure(WykresTpq);
    plot(qg, Tp)
end

qg = [0:200:qgn]
Tzew = [Tzewn:2:10];

for qg = [0:200:qgn]
    Tp = (qg + 5*Kcp*Tzew+Kcw*Tzew)/(5*Kcp+Kcw);
    Twew = (4*Kcp*-4*Kcp*Tzew+Kcw*Tp)/Kcw;
    figure(WykresTwewTzew);
    plot(Tzew, Twew)
    figure(WykresTpTzew);
    plot(Tzew, Tp)
end