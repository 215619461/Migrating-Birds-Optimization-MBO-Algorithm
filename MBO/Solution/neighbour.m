% ���ݵ�ǰ����������񣩣�̽������һ������/�������
function newSolution = neighbour(solution)
    % ���ѡȡһ������
    ex1 = 1 + floor(rand * solution.not);
    
    % ���ѡȡ��һ����ͬ�Ĺ���
    while 1
        ex2 = 1 + floor(rand * solution.not);
        if ~eq(ex1, ex2)
            break;
        end
    end
    
    % �ѵ�һ�������͵ڶ���������λ�õ���
    for i = 1:length(solution.permutation)
        conf(i) = solution.permutation(i);
    end
    conf(ex1) = solution.permutation(ex2);
    conf(ex2) = solution.permutation(ex1);
    
    % �����µ����й����µĽ������
    newSolution = newSoultion2(solution.affinity, solution.distance, conf);
end