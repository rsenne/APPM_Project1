function dxdt= lotkaVolterra(~, p)
% this is an implementation of a lotka-volterra model of
    % differential equations
    %input:
    % ~: dummy variable for time that is needed to pass to ODE45
    % P: population row vector of size 2X1
    a=1.5;
    b=1.1;
    y=2.5;
    d=1.4;
    dxdt = zeros(2,1);
    dxdt(1) = (-a*p(1))+(b*p(1)*p(2));
    dxdt(2) = (y*p(2))-(d*p(1)*p(2));
end