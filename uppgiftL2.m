a = -5;

b = -1;

k = 1;

tol = 0.0005;

x0 = (a+b)/2;

err = (b-a)/2;

while err > tol && k < 1000
    if F1(a)*F1(x0) < 0
        b = x0;
    elseif F1(b)*F1(x0) < 0
        a = x0;
    end
    x0 = (b+a)/2;
    err = (b-a)/2^(k+1);
    k = k + 1;
end

disp(x0)

%Intervallet [-2,0] är olämpligt eftersom att det innehåller båda
%nollpunkterna. Detta medför att vi endast kommer hitta en av dessa. 

