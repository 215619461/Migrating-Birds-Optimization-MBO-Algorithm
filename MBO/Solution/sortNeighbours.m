% �Ѹý�����������������н��������cost��С��������
function neighbourSet = sortNeighbours(neighbourSet)
    % ��cost����
    [~, index] = sort([neighbourSet.cost]);
    % ��������index�������������
    neighbourSet = neighbourSet(index(:));
end