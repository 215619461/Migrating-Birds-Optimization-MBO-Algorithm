% 将领飞鸟用它之后的鸟替换（编号为2和3的鸟）
function [flock, leftSide] = replaceLeaderWithSuccessor(nob, flock, leftSide)
    % 用2替换
    if leftSide
        % 替换领飞鸟
        nf(1) = flock(2);
        % 左侧每只鸟向前，右侧不变
        for i = 2:nob - 2
            if eq(0, mod(i,2))
                nf(i) = flock(i + 2);
            else
                nf(i) = flock(i);
            end
        end
        % 左侧最后一个为之前的领飞鸟，右侧最后一只不变
        nf(nob - 1) = flock(1);
        nf(nob) = flock(nob);
    else
        % 用3替换
        nf(1) = flock(3);
        % 左侧不变，右侧每只鸟向前
        for i = 2:nob - 1
            if eq(0, mod(i,2))
                nf(i) = flock(i);
            else
                nf(i) = flock(i + 2);
            end
        end
        % 右侧最后一只为之前的领飞鸟
        nf(nob) = flock(1);
    end
    % 替换鸟群
    flock = nf;
    % 下次替换另一侧的鸟
    leftSide = ~leftSide;
end