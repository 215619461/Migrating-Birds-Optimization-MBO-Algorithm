% 初始化鸟群
function flock = createInitialFlock(nob, affinity, distance, initialFlockSortedAccToPerf)
    % 创建每只鸟
    for i = 1: nob
        flock(i) = newSoultion(affinity, distance);
    end
    % 如果值为2，则按cost排序
    if eq(initialFlockSortedAccToPerf, 2)
        [~, index] = sort([flock.cost]);
        flock = flock(index(:));
    end
end