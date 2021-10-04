function dydt = eulersMethod(f, h, a, b, y0)
% implementation of eulers method
% defined as f(x,t)_n = f(x,t)_n-1 + h*f(x,t)_n-1
% input:
% f: a differential equation fucntion handle
% h: step size
% a: left time point
% b: right time point
% y0: initial condition
n_steps = (b-a)/h;
y = zeros(n_steps+1, 1);
x = (a:h:b);
y(1) = y0;
    for i=1:n_steps
        y(i+1)=y(i)+h*f(y(i));
    end
dydt = [x; y'];

end