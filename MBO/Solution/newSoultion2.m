% ���������������µĽ������
function solution = newSoultion2(affinity, distance, conf)
    % ��֮ǰ�Ľ��������ͬ
    solution.affinity = affinity;
	solution.distance = distance;
    % �µ�����˳���ǽ����������λ��֮�������˳��
    solution.permutation = conf;
    % ����������
    solution.not = length(affinity);
    % ����ý��������cost
    solution.cost = calculateCost(solution.affinity, solution.distance, solution.permutation);
end