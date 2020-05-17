clear;
clc;

filePath = 'H:\PS11AK17N3_flowMatrix.txt';
nob = 51; % of birds, n, ��Ⱥ����
non = 3; % of neighbors, k, �����ٶȣ���Ӧ���ʣ�̽�����ھ��� k>=2x+1
olf = 1; % overlap factor, x, WTS
noi = nob.^3; % of iterations, K (in this implementation, creating a neighbour counts for an iteration), �������� x��3�η�
nof = 10; % of flapping (kanat cirpma), m, �����������湦��
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
[affinity, distance] = readFile(filePath); % ����֮����Ҫ��������� �� ����֮��ľ���
flock = createInitialFlock(nob, affinity, distance, initialFlockSortedAccToPerf); % ��ʼ����Ⱥ���������
% 					1
% 				2		3
% 			4				5
% 		6						7
while NON < noi
    % ������Ⱥ
    for i = 1:nof
        [NON, flock, leaderImproves] = flyFlock(nob, non, olf, NON, flock);
    end
    % �滻�����
    [flock, leftSide] = replaceLeader(nob, flock, leaderImproves, leaderExchangeMode, leftSide);
    % ����Ѱ�����Ž�
    flock = sortTheSuccessors(nob, flock, sortAccToPerf);
    leaderImproves = true;
end
% ������
writeResults(flock);