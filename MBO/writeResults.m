% ������
function writeResults(flock)
    % ��ȡcost��С����Ⱥ
    solution = getMin(flock);
    % �������������
    fprintf('Solution Permutation:\n');
    solution.permutation
    % ���cost
    fprintf('Cost of the solution:\n');
    solution.cost
    % �������ʱ��
    toc;
end