function [revenue, z, penalty] = fogFunction(I,miu,F,t)
%FOGFUNCTION 此处显示有关此函数的摘要
%   此处显示详细说明
    
    Tfog = T_fog(F,I);
    Tcloud = T_c(I,miu,t);
    E1 =  E(I,miu,t);
    e = e_price();
    costFog = cost_fog(F,I);
    lamda = get_arriving_rates();
    gamma = 300;
   
    z = (f(Tfog) * I + f(Tcloud) * (lamda(t) * gamma - I))  - E1 * e(t) - costFog;

    penalty_1 = penalty1(F,I);
    penalty_2 = penalty2(F,I);
    penalty_3 = penalty3(miu);
    penalty_4 = penalty4(I,miu,t);
    penalty_5 = penalty5(I,miu,t);
    penalty_6 = penalty6(I,miu,t);
    penalty_7 = penalty7(F,I);
    penalty_9 = penalty9(F,I);
    penalty_12 = penalty12(E1,costFog,e(t));
    penalty = penalty_1 + penalty_2 + penalty_3 + penalty_4 + penalty_5 ...
        + penalty_6 + penalty_7 + penalty_9 + penalty_12;
%     if penalty < 10
%         penalty = 0;
%     end
    % disp(['z: ' num2str(z) '; penalty: ' num2str(penalty)]);
    
    % 目标函数
    revenue = - z + 10000000000 * penalty; 
end

