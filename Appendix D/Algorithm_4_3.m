function [alpha, beta, gamma] = Algorithm_4_3(QMatrix)
%ALGORITHM_4_3 Given QMatrix, 
% find alpha, beta, gamma

    Q11 = QMatrix(1,1);
    Q12 = QMatrix(1,2);
    Q13 = QMatrix(1,3);
    
    Q21 = QMatrix(2,1);
    Q22 = QMatrix(2,2);
    Q23 = QMatrix(2,3);
    
    Q31 = QMatrix(3,1);
    Q32 = QMatrix(3,2);
    Q33 = QMatrix(3,3);

alpha = atan2d(Q31, -Q32);
beta  = acosd(Q33);
gamma = atan2d(Q13, Q23);

alpha = mod(alpha, 360);
gamma = mod(gamma, 360);

end