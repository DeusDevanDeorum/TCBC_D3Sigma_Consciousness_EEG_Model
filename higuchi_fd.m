% higuchi_fd.m
% Cálculo de la dimensión fractal (Higuchi) para señales EEG
% Autor: Roberto J Romero De Anda
% Licencia: CC BY-NC-ND 4.0

function D = higuchi_fd(signal, kmax)
    % Verifica entrada
    if nargin < 2
        kmax = 10;
    end
    N = length(signal);
    Lmk = zeros(kmax,1);
    lnL = zeros(kmax,1);
    lnk = zeros(kmax,1);

    for k = 1:kmax
        Lm = zeros(k,1);
        for m = 1:k
            idx = m:k:N;
            lm = length(idx);
            if lm > 1
                diffs = abs(diff(signal(idx)));
                norm_factor = (N - 1) / (k * (lm - 1));
                Lm(m) = norm_factor * sum(diffs);
            end
        end
        Lmk(k) = mean(Lm(Lm>0));
        lnL(k) = log(Lmk(k));
        lnk(k) = log(1/k);
    end

    % Ajuste lineal: ln(L(k)) vs ln(1/k)
    p = polyfit(lnk, lnL, 1);
    D = p(1); % Pendiente = dimensión fractal estimada
end
