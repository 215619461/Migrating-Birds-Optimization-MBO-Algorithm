% 把该解决方案的邻域中所有解决方案按cost从小到大排序
function neighbourSet = sortNeighbours(neighbourSet)
    % 按cost排序
    [~, index] = sort([neighbourSet.cost]);
    % 按排序后的index对邻域进行排序
    neighbourSet = neighbourSet(index(:));
end