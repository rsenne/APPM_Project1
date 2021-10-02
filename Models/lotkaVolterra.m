function dxdt= lotkaVolterra(~, p)
    a=1.5;
    b=1.1;
    y=2.5;
    d=1.4;
    dxdt = zeros(2,1);
    dxdt(1) = (-a*p(1))+(b*p(1)*p(2));
    dxdt(2) = (y*p(2))-(d*p(1)*p(2));
end