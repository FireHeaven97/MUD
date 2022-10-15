close all; clear all;
% Szymon Palmowski 235911 Sroda 15:15
% Wejscie: TzewN; qgN; fwN;
% Wyjscie: Ta; Tb;

TzewN = -20;
qgN = 20000;
TaN = 25;
TbN = 15;
VaN = 2.5;
VbN = 112.5;
rop = 1.2;
cp = 1000;

fwN = qgN*(TbN-TzewN)/(cp*rop*(TaN-TbN)*(TbN-TzewN)+cp*rop*(TaN-TbN)*(TaN-TzewN));
Ka = (qgN-cp*rop*fwN*(TaN-TbN))/(TaN-TzewN);
Kb = (cp*rop*fwN*(TaN-TbN))/(TbN-TzewN);

Cva = cp*rop*VaN;
Cvb = cp*rop*VbN;

dTzewN = 0;
dfwN = 0;
dqgN = 0;
ts = 1;

t = sim('projekt1s');

subplot(211); plot(t, Ta, 'm'); title('Wykres t od Ta'); legend('Ta'); xlabel('t [s]'); ylabel('Ta [C]'); grid on; hold on;
subplot(212); plot(t, Tb, 'c'); title('Wykres t od Tb'); legend('Tb'); xlabel('t [s]'); ylabel('Tb [C]'); grid on; hold on;