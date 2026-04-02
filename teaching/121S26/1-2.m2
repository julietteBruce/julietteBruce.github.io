
S = QQ[x,y]
I = ideal(y-x^2)
R = S/I
T = QQ[x]
phi = map(T, R, {x,x^2})

J = ideal(x-1)
preimage(phi,J)
