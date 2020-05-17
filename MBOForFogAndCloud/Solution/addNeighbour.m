function neighborSet = addNeighbour(best, neighborSet)
    neighborSet = [neighborSet, best];
    neighborSet = sortNeighbours(neighborSet);
end