% 根据当前解决方案（鸟），探索它的一个邻域/解决方案
function newSolution = neighbour(solution)
    % 随机选取一个工厂
    ex1 = 1 + floor(rand * solution.not);
    
    % 随机选取另一个不同的工厂
    while 1
        ex2 = 1 + floor(rand * solution.not);
        if ~eq(ex1, ex2)
            break;
        end
    end
    
    % 把第一个工厂和第二个工厂的位置调换
    for i = 1:length(solution.permutation)
        conf(i) = solution.permutation(i);
    end
    conf(ex1) = solution.permutation(ex2);
    conf(ex2) = solution.permutation(ex1);
    
    % 根据新的排列构建新的解决方案
    newSolution = newSoultion2(solution.affinity, solution.distance, conf);
end