% fractal_dimension.m
% Wrapper para estimar dimensión fractal de señales EEG multicanal
% usando el método de Higuchi.
% Autor: Roberto J Romero De Anda
% Licencia: CC BY-NC-ND 4.0

function df_vector = fractal_dimension(signals, kmax)
    % Entradas:
    % - signals: matriz de señales (filas = canales, columnas = tiempo)
    % - kmax: parámetro opcional del método de Higuchi (default: 10)

    if nargin < 2
        kmax = 10;
    end

    [n_channels, ~] = size(signals);
    df_vector = zeros(n_channels, 1);

    for ch = 1:n_channels
        df_vector(ch) = higuchi_fd(signals(ch, :), kmax);
    end
end
