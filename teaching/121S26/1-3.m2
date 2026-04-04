S = QQ[x]

divAlg = (f,g) -> (
    q := 0;
    r := f;
    while r != 0 and leadTerm(r) % leadTerm(g) == 0 do (
        q = q + leadTerm(r)//leadTerm(g);
        r = r - (leadTerm(r)//leadTerm(g))*g;
        );
    (q,r)
    )

divAlg(x,x^2)

time divAlg(x^100000-1, x-1)

