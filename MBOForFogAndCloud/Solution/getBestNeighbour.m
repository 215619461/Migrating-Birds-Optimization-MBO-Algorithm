function [solution, neighborSet] = getBestNeighbour(neighborSet)
    solution = neighborSet(1);
    neighborSet(1) = [];
end