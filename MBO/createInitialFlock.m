% ��ʼ����Ⱥ
function flock = createInitialFlock(nob, affinity, distance, initialFlockSortedAccToPerf)
    % ����ÿֻ��
    for i = 1: nob
        flock(i) = newSoultion(affinity, distance);
    end
    % ���ֵΪ2����cost����
    if eq(initialFlockSortedAccToPerf, 2)
        [~, index] = sort([flock.cost]);
        flock = flock(index(:));
    end
end