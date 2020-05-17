function [flock, leftSide] = replaceLeaderWithSuccessor(nob, flock, leftSide)
    if leftSide
        nf(1) = flock(2);
        for i = 2:nob - 2
            if eq(0, mod(i,2))
                nf(i) = flock(i + 2);
            else
                nf(i) = flock(i);
            end
        end
        nf(nob - 1) = flock(1);
        nf(nob) = flock(nob);
    else
        nf(1) = flock(3);
        for i = 2:nob - 1
            if eq(0, mod(i,2))
                nf(i) = flock(i);
            else
                nf(i) = flock(i + 2);
            end
        end
        nf(nob) = flock(1);
    end
    flock = nf;
    leftSide = ~leftSide;
end