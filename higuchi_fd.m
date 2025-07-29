function D = higuchi_fd(X, Kmax)
    N = length(X);
    L = zeros(1,Kmax);
    for k = 1:Kmax
        Lk = zeros(1,k);
        for m = 1:k
            Lmk = 0;
            n_max = floor((N - m)/k);
            for i = 1:n_max
                Lmk = Lmk + abs(X(m + i*k) - X(m + (i-1)*k));
            end
            Lmk = Lmk * (N - 1) / (k * n_max * k);
            Lk(m) = Lmk;
        end
        L(k) = sum(Lk)/k;
    end
    lnL = log(L);
    lnk = log(1./(1:Kmax));
    p = polyfit(lnk, lnL, 1);
    D = p(1);
end
