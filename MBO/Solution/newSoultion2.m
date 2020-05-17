% 根据邻域来构建新的解决方案
function solution = newSoultion2(affinity, distance, conf)
    % 与之前的解决方案相同
    solution.affinity = affinity;
	solution.distance = distance;
    % 新的排列顺序是交互随机两个位置之后的排列顺序
    solution.permutation = conf;
    % 工厂的数量
    solution.not = length(affinity);
    % 计算该解决方案的cost
    solution.cost = calculateCost(solution.affinity, solution.distance, solution.permutation);
end