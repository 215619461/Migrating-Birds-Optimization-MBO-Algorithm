function neighbourSet = sortNeighbours(neighbourSet)
    [~, index] = sort([neighbourSet.cost]);
    neighbourSet = neighbourSet(index(:));
end