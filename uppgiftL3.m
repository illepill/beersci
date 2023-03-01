
k = 0.0001;

x0 = 2;

tol = 1e-7;

counter = 0;

x1 = x0 - F2(x0)/((F2(x0+k) - F2(x0-k))/(2*k));

diff = abs(x1-x0); 

while diff > tol && counter < 1000
    counter = counter + 1;
    x1 = x0 - F2(x0)/((F2(x0+k) - F2(x0-k))/(2*k));
    diff = abs(x1-x0);
    x0 = x1;
end
    
a = 1.6;

b = 2;

x02 = (a+b)/2;

err = abs((a-b)/2);

step = 1;

while err > tol && k < 1000
    if F2(a)*F2(x02) < 0
        b = x02;
    elseif F2(b)*F2(x02) < 0
        a = x02;
    end
    x02 = (b+a)/2;
    err = abs((b-a)/2^(step+1));
    step = step + 1;
end

