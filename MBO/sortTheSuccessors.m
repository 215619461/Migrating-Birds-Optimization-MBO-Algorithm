% 将鸟群进行排序
function flock = sortTheSuccessors(nob, flock, sortAccToPerf)
    % 因为领飞鸟之前更新过了，这里领飞鸟不变
    leader = flock(1);
    % 如果需要更新
    if eq(2, sortAccToPerf)
        % 将领飞鸟之后的鸟放在新的队列中
        for i = 2:nob
            p(i - 1) = flock(i);
        end
        % 进行排序
        [~, index] = sort([p.cost]);
        p = p(index(:));
        % 将鸟群组合起来
        flock(1) = leader;
        for i = 2:nob
            flock(i) = p(i - 1);
        end
    end
end