function [alpha, beta, gamma] = Algorithm_4_4(QMatrix)
%ALGORITHM_4_4 Given QMatrix, 
% find yaw, pitch, roll

    Q11 = QMatrix(1,1);
    Q12 = QMatrix(1,2);
    Q13 = QMatrix(1,3);
    
    Q21 = QMatrix(2,1);
    Q22 = QMatrix(2,2);
    Q23 = QMatrix(2,3);
    
    Q31 = QMatrix(3,1);
    Q32 = QMatrix(3,2);
    Q33 = QMatrix(3,3);

alpha = atan2d(Q12, Q11);
beta  = asind(-Q13);
gamma = atan2d(Q23, Q33);

alpha = mod(alpha, 360);
gamma = mod(gamma, 360);

end