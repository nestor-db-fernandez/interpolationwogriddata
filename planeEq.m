function zi = planeEq(rtrig,xi,yi)
A = rtrig(1,:);
B = rtrig(2,:);
C = rtrig(3,:);

AB = B-A;
AC = C-A;
n = cross(AB,AC);
zi = ((n(1)*A(1) + n(2)*A(2) +n(3)*A(3)) - n(1)*xi - n(2)*yi )/n(3);
end