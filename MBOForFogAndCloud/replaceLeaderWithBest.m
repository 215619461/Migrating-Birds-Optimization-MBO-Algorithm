function flock = replaceLeaderWithBest(nob, flock)
    best = 1;
    for i = 2:length(flock)
        if flock(i).cost <= flock(best).cost
            best = i;
        end
    end
    if eq(1, best)
        return;
    end
    nf(1) = flock(best);
    for i = 2:best - 1
        nf(i) = flock(i);
    end
    if eq(0, mod(best,2))
        for i = best:nob - 2
            if eq(0, mod(i,2))
                nf(i) = flock(i + 2);
            else
                nf(i) = flock(i);
            end
        end
        nf(nob - 1) = flock(1);
        nf(nob) = flock(nob);
    else
        for i = best:nob - 1
            if eq(0, mod(i,2))
                nf(i) = flock(i);
            else
                nf(i) = flock(i + 2);
            end
        end
        nf(nob) = flock(1);
    end
    flock = nf;
end