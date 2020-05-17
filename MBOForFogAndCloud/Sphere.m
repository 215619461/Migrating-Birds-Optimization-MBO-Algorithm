%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPEA115
% Project Title: Implementation of Standard Bees Algorithm in MATLAB
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

% 计算目标函数，收益，惩罚
function [revenue, z, penalty] = Sphere(x,t,IVarMax)
    IPosition = x(1);
    miuPosition = x(2);
    FPosition = x(3:IVarMax*30+2);
    FPosition = reshape(FPosition,IVarMax,30);
    [revenue, z, penalty] = fogFunction(IPosition,miuPosition,FPosition,t);
%     nParent = [x(1) x(2) x(3);x(4) x(5) x(6);x(7) x(8) x(9)];
%     lamParent = [x(10) x(11) x(12);x(13) x(14) x(15);x(16) x(17) x(18)];
%     sParent = [x(19) x(20) x(21);x(22) x(23) x(24);x(25) x(26) x(27)];
%     z = newIDCfunction(nParent,lamParent,sParent,3,3,t);
    
end
