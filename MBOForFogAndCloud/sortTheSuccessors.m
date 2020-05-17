function flock = sortTheSuccessors(nob, flock, sortAccToPerf)
    leader = flock(1);
    if eq(2, sortAccToPerf)
        for i = 2:nob
            p(i - 1) = flock(i);
        end
        [~, index] = sort([p.cost]);
        p = p(index(:));
        flock(1) = leader;
        for i = 2:nob
            flock(i) = p(i - 1);
        end
    end
end