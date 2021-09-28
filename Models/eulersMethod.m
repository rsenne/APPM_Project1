function dydt = eulersMethod(f, h, a, b, y0)

n_steps = (b-a)/h;
y = zeros(n_steps+1, 1);
x = (a:h:b);
y(1) = y0;
    for i=1:n_steps
        y(i+1)=y(i)+h*f(y(i));
    end
dydt = [x; y'];

end