function z = CPU(F,I,j)
%CPU 此处显示有关此函数的摘要
%   此处显示详细说明
    thet = [
    0.0919 ,   0.0871  ,  0.0773  ,  0.0801 ,   0.0969  ,  0.0812  ,  0.0798  ,  0.0978  ,  0.0768  ,  0.0764  ,  0.0958  ,  0.1011 ...
    0.0753 ,   0.0982  ,  0.0875  ,  0.0820 ,   0.0806  ,  0.0837  ,  0.1033  ,  0.0754  ,  0.0827  ,  0.0863  ,  0.1040  ,  0.0815 ...
    0.0912 ,   0.0817  ,  0.0900  ,  0.0816 ,   0.1014  ,  0.0839];
    CPU_max = 2048;
    z = 0;
    for i = 1 : I
        z = z + F(i,j) * thet(j);
    end
    z = z / CPU_max;
end

