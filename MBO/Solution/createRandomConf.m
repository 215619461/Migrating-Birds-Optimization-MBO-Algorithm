% ���ݸ�����֮����Ҫ���������������������Ĺ�������˳��
function [not, permutation] = createRandomConf(affinity)
    % ��ʼ�����й����ı�ţ��������ڻ���Ҫ������Щ����
    for i = 1:length(affinity)
        set(i) = i;
    end
    
    % ����������
    not = length(set);
    
    % һֱѭ����set��Ϊ�ա������й������Ѿ�������λ��
    j = 1;
    while ~isempty(set)
        % ����һ�������������Ҫ���ŵĹ������
        k = 1 + floor(rand * not);
        % ����˹�����û�б�����λ��
        if ismember(k, set)
            % �ѵ�ǰλ�ð���Ϊ���Ϊk�Ĺ���
            permutation(j) = k;
            j = j + 1;
            % �����������set���Ƴ�
            set = set(~ismember(set, k));
        end
    end
end