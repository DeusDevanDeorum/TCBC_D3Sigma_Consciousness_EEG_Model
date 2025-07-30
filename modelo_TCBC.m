% modelo_TCBC.m
% Simulación base del modelo TCBC para patrones EEG
% Autor: Roberto J Romero De Anda
% Licencia: CC BY-NC-ND 4.0

clear; clc;

fs = 256;              % Frecuencia de muestreo (Hz)
t = 0:1/fs:10;         % Tiempo de simulación (10 segundos)
n = length(t);

% Parámetros base de frecuencias EEG simuladas
theta = sin(2*pi*5*t);                % Theta (5 Hz)
ondas_agudas = 0.5*sin(2*pi*16*t);    % Ondas agudas (16 Hz)
beta = 0.3*sin(2*pi*22*t);            % Beta (22 Hz)
ruido = 0.05*randn(size(t));          % Ruido blanco

% Composición EEG simulada por canal ELTI
senal_F7 = theta + ondas_agudas + ruido;
senal_T7 = 1.2*theta + ondas_agudas + beta + ruido;
senal_C3 = theta + 0.8*ondas_agudas + ruido;
senal_P7 = 0.9*theta + beta + ruido;

% Agrupar en matriz multicanal
EEG = [senal_F7; senal_T7; senal_C3; senal_P7];

% Visualización rápida
figure;
canales = {'F7','T7','C3','P7'};
for i = 1:4
    subplot(4,1,i);
    plot(t, EEG(i,:));
    title(['Canal ', canales{i}]);
    ylabel('\muV');
end
xlabel('Tiempo (s)');

% Guardar en .mat para análisis posterior
save('EEG_TCBC_simulado.mat', 'EEG', 't', 'fs');

disp('Simulación EEG TCBC completada.');
