% 输出结果
function writeResults(flock)
    % 获取cost最小的鸟群
    solution = getMin(flock);
    % 输出工厂的排列
    fprintf('Solution Permutation:\n');
    solution.permutation
    % 输出cost
    fprintf('Cost of the solution:\n');
    solution.cost
    % 输出运行时间
    toc;
end