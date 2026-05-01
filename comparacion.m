%% =======================================================
%Motor alternativo + hélice
%=========================================================
% Tomamos valores de ejemplo para ver la diferencia con el turborreactor
Vvec = linspace(40,220,300);
T0=15800;
T_jet =T0*ones(size(Vvec));
Pdisp= T0*120; %potencia equivalente de referencia a V=120 m/s
T_prop= Pdisp./Vvec; %sería el empuje equivalente del motor+helice

figure('Name','Comparación cualitativa');
plot(Vvec,T_jet,'LineWidth',2);
hold on;
grid on;

plot(Vvec, T_prop, 'LineWidth',2);

xlabel ('velocidad V [m/s]');
ylabel ('Empuje disponible [N])');
title ('Comparación cualitativa de empuje disponible');

saveas(gcf,'comparacion.png')

