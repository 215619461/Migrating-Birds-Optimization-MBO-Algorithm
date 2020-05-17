% 创建新的解决方案
function solution = newSoultion(IVarMin, IVarMax, miuVarMin, miuVarMax, t)
    IPosition = round(unifrnd(IVarMin, IVarMax(t), 1, 1));
    miuPosition = unifrnd(miuVarMin, miuVarMax, 1, 1);
    FPosition = randForF(IVarMax(t));
    FPosition = reshape(FPosition, 1,30 * IVarMax(t));

    solution.position = [IPosition miuPosition FPosition];
    [solution.cost, solution.z, solution.penalty] = Sphere(solution.position, t, IVarMax(t));
end