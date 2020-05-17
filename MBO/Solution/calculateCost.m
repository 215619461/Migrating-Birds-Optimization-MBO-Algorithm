% ���㵱ǰ���������cost
function cost = calculateCost(affinity, distance, permutation)
    cost = 0;
    
    % ��ǰ���������cost�������й����ľ�����������������ϵ��������ܺ�
    for i = 1:length(affinity)
        for j = 1:length(affinity)
            office1 = permutation(i);
            office2 = permutation(j);
            cost = cost + affinity(i,j) * distance(office1, office2);
        end
    end
end