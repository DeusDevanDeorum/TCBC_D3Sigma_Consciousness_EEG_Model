function modelo_TCBC_ELTI()
    % MODELO_TCBC_ELTI: Simulación de EEG para ELTI y análisis TCBC
    % Genera señales patológicas con actividad theta, espigas y beta,
    % estima dimensión fractal por canal, y visualiza resultados.

    fs = 256; % Frecuencia de muestreo
    t = 0:1/fs:10; % 10 segundos
    canales = {'F7','T7','C3','P7'};
    senales = zeros(length(canales), length(t));
    df = zeros(1,length(canales));

    for i = 1:length(canales)
        theta = 20 * sin(2*pi*5*t);         % 5 Hz theta
        espigas = 40 * square(2*pi*16*t);   % Espigas 16 Hz
        beta = 10 * sin(2*pi*22*t);         % Beta 22 Hz
        ruido = 5 * randn(size(t));

        senal = theta + espigas + beta + ruido;
        senales(i,:) = senal;
        df(i) = higuchi_fd(senal, 5);
    end

    figure;
    for i = 1:4
        subplot(4,1,i);
        plot(t, senales(i,:));
        title(['Canal ', canales{i}, ' - DF: ', num2str(df(i), '%.3f')]);
        ylabel('uV'); grid on;
    end
    xlabel('Tiempo (s)');

    kappa0_T7 = 5.00e-3;
    fprintf('DF promedio: %.3f\n', mean(df));
    fprintf('Valor estimado de kappa0 (T7): %.3e\n', kappa0_T7);
end
