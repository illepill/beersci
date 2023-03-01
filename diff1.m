function z=diff1(y,h)
  n=length(y);
  z(1)=(-3*y(1)+4*y(2)-y(3))/(2*h);
  z(2:n-1)=(y(3:n)-y(1:n-2))/(2*h);
  z(n)=(3*y(n)-4*y(n-1)+y(n-2))/(2*h);
end


