% �����µĽ������
function solution = newSoultion(affinity, distance)
    % ����֮����Ҫ���������
    solution.affinity = affinity;
    % ������֮��ľ���
	solution.distance = distance;
    % �������������˳��
	[solution.not, solution.permutation] = createRandomConf(solution.affinity);
    % ������������˳���µ�cost
    solution.cost = calculateCost(solution.affinity, solution.distance, solution.permutation);
end