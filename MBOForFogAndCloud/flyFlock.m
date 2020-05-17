function [NON, flock, leaderImproves] = flyFlock(nob, non, olf, NON, flock, IVarMin, IVarMax, miuVarMin, miuVarMax, I_r, miu_r, t)
    leader = flock(1);
    [leaderNeighborSet, NON] = createNeighborSet(non, NON, leader, IVarMin, IVarMax, miuVarMin, miuVarMax, I_r, miu_r, t);
    for i = 2:nob
        [flock(i).neighborSet, NON] = createNeighborSet(non - olf, NON, flock(i), IVarMin, IVarMax, miuVarMin, miuVarMax, I_r, miu_r, t);
    end
    [bests(1), leaderNeighborSet] = getBestNeighbour(leaderNeighborSet);
    for i = 1:2 * olf
        [best, leaderNeighborSet] = getBestNeighbour(leaderNeighborSet);
        if eq(1, mod(i,2))
            flock(2).neighborSet = addNeighbour(best, flock(2).neighborSet);
        else
            flock(3).neighborSet = addNeighbour(best, flock(3).neighborSet);
        end
    end
    for i = 2:nob - 2
        [bests(i), flock(i).neighborSet] = getBestNeighbour(flock(i).neighborSet);
        for j = 1:olf
            [best, flock(i).neighborSet] = getBestNeighbour(flock(i).neighborSet);
            flock(i+2).neighborSet = addNeighbour(best, flock(i+2).neighborSet);
        end
    end
    [bests(nob - 1), flock(nob - 1).neighborSet] = getBestNeighbour(flock(nob - 1).neighborSet);
    [bests(nob), flock(nob).neighborSet] = getBestNeighbour(flock(nob).neighborSet);
    if flock(1).cost <= bests(1).cost
        leaderImproves = false;
    else
        leaderImproves = true;
    end
    for i = 1:nob
        if flock(i).cost >= bests(i).cost
            bests(i).neighborSet = [];
            flock(i) = bests(i);
        end
    end
end