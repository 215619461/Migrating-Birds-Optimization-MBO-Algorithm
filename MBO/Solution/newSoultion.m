% 创建新的解决方案
function solution = newSoultion(affinity, distance)
    % 各点之间需要运输的物料
    solution.affinity = affinity;
    % 各工厂之间的距离
	solution.distance = distance;
    % 生成随机的排列顺序
	[solution.not, solution.permutation] = createRandomConf(solution.affinity);
    % 计算这种排列顺序下的cost
    solution.cost = calculateCost(solution.affinity, solution.distance, solution.permutation);
end