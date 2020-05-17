clear;
clc;

nob = 51; % of birds, n, 鸟群鸟数
non = 3; % of neighbors, k, 飞行速度，感应功率，探索的邻居数 k>=2x+1
olf = 1; % overlap factor, x, WTS
noi = nob.^3; % of iterations, K (in this implementation, creating a neighbour counts for an iteration), 迭代次数 x的3次方
nof = 10; % of flapping (kanat cirpma), m, 襟翼数，剖面功率
initialFlockSortedAccToPerf=1; % 1 means sorting the initial flock randomly,
% while 2 means sorting them according to their performance
leaderExchangeMode = 1; % 1 means exchange the leader with the successor
% 2 means exchanging the leader with the best
% 3 means exchanging if its performance is gets worse
leftSide = true;
sortAccToPerf=1; % 1 means the flock permutation stays the same
% 2 means sorting them according performance

% fog-cloud参数
IVar = 1;
miuVar = 1;
IVarSize = [1 IVar];
miuVarSize = [1 miuVar];
IVarMin = 20;
IVarMax = get_arriving_rates()*300;
miuVarMin = 0;
miuVarMax = 30000;
miu_r = 0.1 * (miuVarMax - miuVarMin);

% 画图的参数
allCost = [];
time = [];

for t = 1: 4: 288
    tic;
    % fog-cloud参数
    I_r = 0.1 * (IVarMax(t) - IVarMin);
    FVar = IVarMax(t) * 30;%IMax = 2817 ; j = 100;
    FVarSize = [1 FVar];
    
    NON = 0;
    flock = createInitialFlock(nob, initialFlockSortedAccToPerf, IVarMin, IVarMax, miuVarMin, miuVarMax, t); % 解决方案
    % 					1
    % 				2		3
    % 			4				5
    % 		6						7
    w = 1;
    while NON < noi
        for i = 1:nof
            [NON, flock, leaderImproves] = flyFlock(nob, non, olf, NON, flock, IVarMin, IVarMax, miuVarMin, miuVarMax, I_r, miu_r, t);
        end
        [flock, leftSide] = replaceLeader(nob, flock, leaderImproves, leaderExchangeMode, leftSide);
        flock = sortTheSuccessors(nob, flock, sortAccToPerf);
        leaderImproves = true;
        
        % 显示每次迭代之后的cost
        solution = getMin(flock);
        disp(['Iteration: ' num2str(t) '; w: ' num2str(w) '; BestCost: ' num2str(- solution.cost)]);
        % 画两个图的参数
        if eq(1, t)
            firstRevenue(w) = solution.z;
            firstPenalty(w) = solution.penalty;
        end
        w = w + 1;
    end
    
    % 画图
    if eq(1, t)
        figure;
        plot(firstRevenue,'LineWidth',1);
        xlabel('Iteration number');
        ylabel('Energy cost ($)');
        
        figure;
        plot(firstPenalty,'LineWidth',1);
        xlabel('Iteration');
        ylabel('Penalty');
    end
    
    % 记录每个timeslot的cost和时间
    [allCost, time] = writeResults(flock, t, allCost, time);
end
% 画图
drawpic(allCost, time);