format long

x0 = -0.4;

tol = 0.000005;

h = 1e-9;

counter = 0;

diff = abs(x1-x0);

while diff > tol && counter < 100
    counter = counter + 1;
    x1 = x0 - F1(x0)/((F1(x0+h) - F1(x0-h))/(2*h));
    diff = abs(x1-x0);
    x0 = x1;
end

disp(x1);
disp(F1(x1));

%Nr 4 är det sanna påståendet.
        