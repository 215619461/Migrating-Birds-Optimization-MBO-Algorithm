% 读取文件，获取各工厂之间需要运输的物料和各工厂之间的距离
function [affinity, distance] = readFile(filePath)
	fileId = fopen(filePath);
    T = fscanf(fileId,'%d',1);
    affinity = zeros(T,T);
    distance = zeros(T,T);
    
    a = '';
    for i = 1:T
        a = [a, '%d'];
    end
    
    % 读取各工厂之间需要运输的物料数
    for i = 1:T
        affinity(i,:) = fscanf(fileId, a, [1,T]);
    end
    
    % 读取各点之间的距离
    for i = 1:T
        distance(i,:) = fscanf(fileId, a, [1,T]);
    end
end