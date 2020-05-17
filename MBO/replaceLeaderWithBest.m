% 用鸟群中表现最好的进行替换领飞鸟
function flock = replaceLeaderWithBest(nob, flock)
    % 寻找鸟群中表现最好的
    best = 1;
    for i = 2:length(flock)
        if flock(i).cost <= flock(best).cost
            best = i;
        end
    end
    
    % 如果领飞鸟表现最好，则之间返回
    if eq(1, best)
        return;
    end
    
    % 构建新的鸟群，领飞鸟为表现最好的
    nf(1) = flock(best);
    % 在best之前的鸟的位置都不需要变化
    for i = 2:best - 1
        nf(i) = flock(i);
    end
    
    % 如果best在左侧
    if eq(0, mod(best,2))
        % 则左侧的每个向前移，右侧的不变
        for i = best:nob - 2
            if eq(0, mod(i,2))
                nf(i) = flock(i + 2);
            else
                nf(i) = flock(i);
            end
        end
        % 左侧的最后一个为之前的领飞鸟，右侧不变
        nf(nob - 1) = flock(1);
        nf(nob) = flock(nob);
    else
        % 在右侧
        % 左侧的不变，将右侧的所有向前移
        for i = best:nob - 1
            if eq(0, mod(i,2))
                nf(i) = flock(i);
            else
                nf(i) = flock(i + 2);
            end
        end
        % 右侧最后一个为之前的领飞鸟
        nf(nob) = flock(1);
    end
    
    % 更新鸟群
    flock = nf;
end