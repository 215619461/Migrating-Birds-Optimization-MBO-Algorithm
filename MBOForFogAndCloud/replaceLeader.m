function [flock, leftSide] = replaceLeader(nob, flock, leaderImproves, leaderExchangeMode, leftSide)
    switch leaderExchangeMode
        case 1
            [flock, leftSide] = replaceLeaderWithSuccessor(nob, flock, leftSide);
        case 2
            flock = replaceLeaderWithBest(nob, flock);
        case 3
            if ~leaderImproves
                flock = replaceLeaderWithBest(nob, flock);
            end
    end
end