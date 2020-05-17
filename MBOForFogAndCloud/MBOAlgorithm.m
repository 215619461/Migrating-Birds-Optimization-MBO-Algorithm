clear;
clc;

nob = 51; % of birds, n, ��Ⱥ����
non = 3; % of neighbors, k, �����ٶȣ���Ӧ���ʣ�̽�����ھ��� k>=2x+1
olf = 1; % overlap factor, x, WTS
noi = nob.^3; % of iterations, K (in this implementation, creating a neighbour counts for an iteration), �������� x��3�η�
nof = 10; % of flapping (kanat cirpma), m, �����������湦��
initialFlockSortedAccToPerf=1; % 1 means sorting the initial flock randomly,
% while 2 means sorting them according to their performance
leaderExchangeMode = 1; % 1 means exchange the leader with the successor
% 2 means exchanging the leader with the best
% 3 means exchanging if its performance is gets worse
leftSide = true;
sortAccToPerf=1; % 1 means the flock permutation stays the same
% 2 means sorting them according performance

% fog-cloud����
IVar = 1;
miuVar = 1;
IVarSize = [1 IVar];
miuVarSize = [1 miuVar];
IVarMin = 20;
IVarMax = get_arriving_rates()*300;
miuVarMin = 0;
miuVarMax = 30000;
miu_r = 0.1 * (miuVarMax - miuVarMin);

% ��ͼ�Ĳ���
allCost = [];
time = [];

for t = 1: 4: 288
    tic;
    % fog-cloud����
    I_r = 0.1 * (IVarMax(t) - IVarMin);
    FVar = IVarMax(t) * 30;%IMax = 2817 ; j = 100;
    FVarSize = [1 FVar];
    
    NON = 0;
    flock = createInitialFlock(nob, initialFlockSortedAccToPerf, IVarMin, IVarMax, miuVarMin, miuVarMax, t); % �������
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
        
        % ��ʾÿ�ε���֮���cost
        solution = getMin(flock);
        disp(['Iteration: ' num2str(t) '; w: ' num2str(w) '; BestCost: ' num2str(- solution.cost)]);
        % ������ͼ�Ĳ���
        if eq(1, t)
            firstRevenue(w) = solution.z;
            firstPenalty(w) = solution.penalty;
        end
        w = w + 1;
    end
    
    % ��ͼ
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
    
    % ��¼ÿ��timeslot��cost��ʱ��
    [allCost, time] = writeResults(flock, t, allCost, time);
end
% ��ͼ
drawpic(allCost, time);