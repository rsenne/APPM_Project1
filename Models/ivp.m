function population = ivp(t)
% exact solution to IVP
% input
% t: time point
     population = (-54)*exp(0.65*t)/(1-10*exp(0.65*t));
end