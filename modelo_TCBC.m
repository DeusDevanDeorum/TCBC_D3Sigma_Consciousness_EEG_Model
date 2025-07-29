% modelo_TCBC.m
% Simulación básica de señales EEG LTI y cálculo de DF

fs = 256; t = 0:1/fs:10;
theta = sin(2*pi*5*t);
spikes = sin(2*pi*17*t) .* (mod(1:length(t), round(fs/2)) == 0);
beta = 0.4 * sin(2*pi*22*t);

senal = theta + spikes + beta + 0.2*randn(size(t));

figure;
plot(t, senal, 'k');
xlabel('Tiempo (s)');
ylabel('Amplitud (\muV)');
title('EEG Simulado - Canal T7');

% Calcular DF con Higuchi
df = fractal_dimension(senal);
disp(['Dimensión Fractal: ', num2str(df)]);
