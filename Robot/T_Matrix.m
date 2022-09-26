function TM = T_Matrix(DH)
% T_Matrix calculates the transform between links given the DH parameters
% Angles in radians
    alpha = DH(1);
    a = DH(2);
    d = DH(3);
    theta = DH(4);
    TM = [cos(theta), -sin(theta), 0, a;
        sin(theta)*cos(alpha), cos(theta)*cos(alpha), -sin(alpha), -sin(alpha)*d;
        sin(theta)*sin(alpha), cos(theta)*sin(alpha), cos(alpha), cos(alpha)*d;
        0, 0, 0, 1];
end