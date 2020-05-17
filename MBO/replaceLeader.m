% 代替领飞鸟
function [flock, leftSide] = replaceLeader(nob, flock, leaderImproves, leaderExchangeMode, leftSide)
    % 根据不同的模式进行选择
    switch leaderExchangeMode
        case 1
            % 将领飞鸟与其之后的鸟替换（编号为2和3），    上次替换的2则这次替换3，反之亦然
            [flock, leftSide] = replaceLeaderWithSuccessor(nob, flock, leftSide);
        case 2
            % 用鸟群中表现最好的进行替换
            flock = replaceLeaderWithBest(nob, flock);
        case 3
            % 如果领飞鸟没有更新，则用鸟群中表现最好的替换
            if ~leaderImproves
                flock = replaceLeaderWithBest(nob, flock);
            end
    end
end