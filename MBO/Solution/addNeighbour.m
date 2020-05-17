% 把前面一只鸟的次优解和当前鸟生成的领域解组合起来
function neighborSet = addNeighbour(best, neighborSet)
    % 组合
    neighborSet = [neighborSet, best];
    
    % 排序
    neighborSet = sortNeighbours(neighborSet);
end