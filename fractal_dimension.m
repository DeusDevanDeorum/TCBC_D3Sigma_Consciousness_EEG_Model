function D = fractal_dimension(signal)
% Método Higuchi para calcular la dimensión fractal de una señal
kmax = 10;
N = length(signal);
Lmk = zeros(kmax,1);

for k = 1:kmax
    Lm = zeros(k,1);
    for m = 1:k
        idx = m:k:N;
        n = length(idx);
        if n > 1
            diff = abs(diff(signal(idx)));
            Lm(m) = sum(diff)*(N-1)/(k*(n-1));
        end
    end
    Lmk(k) = sum(Lm)/k;
end

lnL = log(Lmk);
lnk = log(1:kmax)';
p = polyfit(lnk, lnL, 1);
D = -p(1);
end
