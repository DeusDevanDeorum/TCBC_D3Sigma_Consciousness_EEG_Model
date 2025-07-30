% modelo_TCBC_ELTI.m
% Simulación de actividad EEG patológica (epilepsia temporal izquierda)
% bajo el modelo TCBC + D³Σⁿ
% Autor: Roberto J Romero De Anda
% Licencia: CC BY-NC-ND 4.0

clear; clc;

% Parámetros de simulación
fs = 250;                % Frecuencia de muestreo (Hz)
t = 0:1/fs:10;           % Duración de 10 segundos
n = length(t);

% Canales simulados: F7, T7, C3, P7
canales = {'F7', 'T7', 'C3', 'P7'};
senales = zeros(length(canales), n);

% Componentes patológicos típicos en ELTI
theta = sin(2*pi*5*t);                     % Actividad theta (5 Hz)
agudas = sin(2*pi*17*t) .* (mod(t,1)<0.1); % Ondas agudas intermitentes
beta = 0.5*sin(2*pi*22*t);                 % Actividad beta (22 Hz)

% Generar señales por canal
for i = 1:length(canales)
    ruido = 0.2*randn(1,n);
    senales(i,:) = theta + agudas + beta + ruido;
end

% Estimar dimensión fractal por canal
df = zeros(1, length(canales));
for i = 1:length(canales)
    df(i) = higuchi_fd(senales(i,:), 10);
end

% Estimar parámetro kappa0 para canal T7
psi = senales(2,:); % Canal T7
Q = trapz(t, psi.^2); % Observable de qualia
I_ont = 0.02;         % Intensidad ontológica simulada
lambda = 1e-3;
kappa0 = exp(-lambda * I_ont) * Q^2;

% Resultados
fprintf('--- Resultados por canal ---\n');
for i = 1:length(canales)
    fprintf('%s: DF = %.3f\n', canales{i}, df(i));
end
fprintf('kappa0 en T7 = %.3e\n', kappa0);

% Graficar EEG por canal
figure;
for i = 1:length(canales)
    subplot(length(canales), 1, i);
    plot(t, senales(i,:));
    title(['Canal ' canales{i} ' (DF = ' num2str(df(i),'%.3f') ')']);
    ylabel('µV'); xlabel('Tiempo (s)');
end
sgtitle('Simulación EEG en ELTI bajo modelo TCBC + D³Σⁿ');
