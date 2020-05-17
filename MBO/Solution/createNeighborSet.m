% 探索当前 解决方案/鸟 的non个邻域
function [neighbourSet, number] = createNeighborSet(non, NON, solution)
    % 创建non个领域解
    for i = 1:non
        % 探索邻域 探索邻域数加1
        neighbourSet(i) = neighbour(solution);
        NON = NON + 1;
    end
    
    % 将所有邻域排序
    neighbourSet = sortNeighbours(neighbourSet);
    % 更新总探索的邻域数
    number = NON;
end