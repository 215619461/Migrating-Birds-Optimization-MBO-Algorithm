% 更新鸟群
function [NON, flock, leaderImproves] = flyFlock(nob, non, olf, NON, flock)
    % 获取领飞鸟
    leader = flock(1);
    % 创建领飞鸟邻域
    [leaderNeighborSet, NON] = createNeighborSet(non, NON, leader);
    % 创建其他鸟邻域
    for i = 2:nob
        [flock(i).neighborSet, NON] = createNeighborSet(non - olf, NON, flock(i));
    end
    % 取出领飞鸟中cost最小的邻域/最优解
    [bests(1), leaderNeighborSet] = getBestNeighbour(leaderNeighborSet);
    
    % 获取领飞鸟之后的两只鸟（编号为2和3）的邻域，由之前的鸟获取的解和当前鸟的邻域组成
    for i = 1:2 * olf
        % 获取领飞鸟邻域中剩余的解的最优解
        [best, leaderNeighborSet] = getBestNeighbour(leaderNeighborSet);
        % 如果为奇数，根据之前的由左边的鸟继承 编号为2
        if eq(1, mod(i,2))
            flock(2).neighborSet = addNeighbour(best, flock(2).neighborSet);
        else
            % 如果为偶数，由右侧的鸟继承 编号为3
            flock(3).neighborSet = addNeighbour(best, flock(3).neighborSet);
        end
    end
    
    % 获取其他鸟的邻域和最优解
    for i = 2:nob - 2
        % 获取当前鸟的最优解
        [bests(i), flock(i).neighborSet] = getBestNeighbour(flock(i).neighborSet);
        for j = 1:olf
            % 把之后的最优解传递给下一只鸟，上一只鸟的编号为i+2
            [best, flock(i).neighborSet] = getBestNeighbour(flock(i).neighborSet);
            flock(i+2).neighborSet = addNeighbour(best, flock(i+2).neighborSet);
        end
    end
    
    % 获取最后两只鸟的邻域最优解
    [bests(nob - 1), flock(nob - 1).neighborSet] = getBestNeighbour(flock(nob - 1).neighborSet);
    [bests(nob), flock(nob).neighborSet] = getBestNeighbour(flock(nob).neighborSet);
    
    % 判断领飞鸟有没有进化
    if flock(1).cost <= bests(1).cost
        leaderImproves = false;
    else
        leaderImproves = true;
    end
    
    % 依次判断鸟群中的每只鸟是否可以进化
    for i = 1:nob
        if flock(i).cost >= bests(i).cost
            bests(i).neighborSet = [];
            flock(i) = bests(i);
        end
    end
end