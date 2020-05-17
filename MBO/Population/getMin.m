% 获取鸟群中的最优解
function solution = getMin(flock)
    min = realmax;
    solution = flock(1);
    
    % 依次遍历，寻找cost最小值
    for i = 1:length(flock)
        if flock(i).cost < min
            min = flock(i).cost;
            solution = flock(i);
        end
    end
end