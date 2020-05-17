% 计算当前解决方案的cost
function cost = calculateCost(affinity, distance, permutation)
    cost = 0;
    
    % 当前解决方案的cost等于所有工厂的距离乘以他们运输物料的数量的总和
    for i = 1:length(affinity)
        for j = 1:length(affinity)
            office1 = permutation(i);
            office2 = permutation(j);
            cost = cost + affinity(i,j) * distance(office1, office2);
        end
    end
end