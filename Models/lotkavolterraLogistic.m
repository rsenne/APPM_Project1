function dxdt = lotkavolterraLogistic(~, P)
    % this is an implementation of a lotka-volterra logistic model of
    % differential equations
    %input:
    % ~: dummy variable for time that is needed to pass to ODE45
    % P: population row vector of size 2X1
    a = 1.5;
    b = 1.1;
    y = 2.5;
    d = 1.4;
    k = 0.5;
    dxdt = zeros(2,1);
    dxdt(1) = (-a*P(1))+(b*P(1)*P(2));
    dxdt(2) = (y*(1-k*P(2))*P(2))-(d*P(1)*P(2));
end