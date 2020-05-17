% 根据各工厂之间需要运输的物料数量创建随机的工厂排列顺序
function [not, permutation] = createRandomConf(affinity)
    % 初始化所有工厂的编号，代表现在还需要安排哪些工厂
    for i = 1:length(affinity)
        set(i) = i;
    end
    
    % 工厂的总数
    not = length(set);
    
    % 一直循环到set中为空——所有工厂都已经安排了位置
    j = 1;
    while ~isempty(set)
        % 计算一个随机数，代表要安排的工厂编号
        k = 1 + floor(rand * not);
        % 如果此工厂还没有被安排位置
        if ismember(k, set)
            % 把当前位置安排为编号为k的工厂
            permutation(j) = k;
            j = j + 1;
            % 把这个工厂从set中移除
            set = set(~ismember(set, k));
        end
    end
end