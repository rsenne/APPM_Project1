function dxdt = lotkavolterraLogistic(~, P)
    a = 1.5;
    b = 1.1;
    y = 2.5;
    d = 1.4;
    k = 0.5;

    dxdt = zeros(2,1);
    dxdt(1) = (-a*P(1))+(b*P(1)*P(2));
    dxdt(2) = y*(1-k*P(2))*P(2)-(d*P(1)*P(2));
end