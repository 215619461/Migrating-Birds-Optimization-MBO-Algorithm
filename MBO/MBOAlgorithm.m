clear;
clc;

filePath = 'H:\PS11AK17N3_flowMatrix.txt';
nob = 51; % of birds, n, 鸟群鸟数
non = 3; % of neighbors, k, 飞行速度，感应功率，探索的邻居数 k>=2x+1
olf = 1; % overlap factor, x, WTS
noi = nob.^3; % of iterations, K (in this implementation, creating a neighbour counts for an iteration), 迭代次数 x的3次方
nof = 10; % of flapping (kanat cirpma), m, 襟翼数，剖面功率
initialFlockSortedAccToPerf=1; % 1 means sorting the initial flock randomly,
% while 2 means sorting them according to their performance
NON = 0;
leaderExchangeMode = 1; % 1 means exchange the leader with the successor
 % 2 means exchanging the leader with the best
 % 3 means exchanging if its performance is gets worse
leftSide = true;
sortAccToPerf=1; % 1 means the flock permutation stays the same
% 2 means sorting them according performance

tic;
[affinity, distance] = readFile(filePath); % 工厂之间需要运输的物料 和 工厂之间的距离
flock = createInitialFlock(nob, affinity, distance, initialFlockSortedAccToPerf); % 初始化鸟群，解决方案
% 					1
% 				2		3
% 			4				5
% 		6						7
while NON < noi
    % 更新鸟群
    for i = 1:nof
        [NON, flock, leaderImproves] = flyFlock(nob, non, olf, NON, flock);
    end
    % 替换领飞鸟
    [flock, leftSide] = replaceLeader(nob, flock, leaderImproves, leaderExchangeMode, leftSide);
    % 排序寻找最优解
    flock = sortTheSuccessors(nob, flock, sortAccToPerf);
    leaderImproves = true;
end
% 输出结果
writeResults(flock);