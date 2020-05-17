function flock = createInitialFlock(nob, initialFlockSortedAccToPerf, IVarMin, IVarMax, miuVarMin, miuVarMax, t)
    
    for i = 1: nob
        flock(i) = newSoultion(IVarMin, IVarMax, miuVarMin, miuVarMax, t);
    end
    if eq(initialFlockSortedAccToPerf, 2)
        [~, index] = sort([flock.cost]);
        flock = flock(index(:));
    end
end