function [neighbourSet, number] = createNeighborSet(non, NON, solution, IVarMin, IVarMax, miuVarMin, miuVarMax, I_r, miu_r, t)
    for i = 1:non
        neighbourSet(i) = neighbour(solution, IVarMin, IVarMax, miuVarMin, miuVarMax, I_r, miu_r, t);
        NON = NON + 1;
    end
    neighbourSet = sortNeighbours(neighbourSet);
    number = NON;
end