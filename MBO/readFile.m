% ��ȡ�ļ�����ȡ������֮����Ҫ��������Ϻ͸�����֮��ľ���
function [affinity, distance] = readFile(filePath)
	fileId = fopen(filePath);
    T = fscanf(fileId,'%d',1);
    affinity = zeros(T,T);
    distance = zeros(T,T);
    
    a = '';
    for i = 1:T
        a = [a, '%d'];
    end
    
    % ��ȡ������֮����Ҫ�����������
    for i = 1:T
        affinity(i,:) = fscanf(fileId, a, [1,T]);
    end
    
    % ��ȡ����֮��ľ���
    for i = 1:T
        distance(i,:) = fscanf(fileId, a, [1,T]);
    end
end