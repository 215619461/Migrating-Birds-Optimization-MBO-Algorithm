% 获取当前鸟的邻域中最佳的解决方案
function [solution,neighborSet] = getBestNeighbour(neighborSet)
    % 因为之前已经排序，所以只要取出邻域中第一个就可以
    solution = neighborSet(1);
    neighborSet(1) = [];
end