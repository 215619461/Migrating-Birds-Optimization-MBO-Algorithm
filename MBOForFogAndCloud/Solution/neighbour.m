% Ì½Ë÷ÁÚÓò
function newSolution = neighbour(solution, IVarMin, IVarMax, miuVarMin, miuVarMax, I_r, miu_r, t)
    x = solution.position;
    IPosition = x(1);
    miuPosition = x(2);
    FPosition = x(3: 30 * IVarMax(t) + 2);
    I_newPosition = PerformBeeDance(IPosition, I_r);
    miu_newPosition = PerformBeeDance(miuPosition, miu_r);
    F_newPosition = FPosition;
    I_newPosition = max(min(I_newPosition, IVarMax(t)), IVarMin);
    miu_newPosition = max(min(miu_newPosition, miuVarMax), miuVarMin);
    newSolution.position = [I_newPosition miu_newPosition F_newPosition];
    [newSolution.cost, newSolution.z, newSolution.penalty] = Sphere(newSolution.position, t, IVarMax(t));
end