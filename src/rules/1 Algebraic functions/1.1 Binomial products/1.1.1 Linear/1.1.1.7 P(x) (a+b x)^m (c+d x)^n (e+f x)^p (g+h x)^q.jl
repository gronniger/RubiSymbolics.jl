int_rules_1_1_1_7 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 1.1.1.7*P(x)*(a+b*x)^m*(c+d*x)^n*(e+f*x)^p*(g+h*x)^q =#
    @apply_utils Antiderivative(~Px * (~a + ~(b') * (~x) ^ ~n) ^ ~p, ~x) => (Coeff(~Px, ~x, ~n - 1) * (~a + ~b * (~x) ^ ~n) ^ (~p + 1)) / (~b * ~n * (~p + 1)) + Antiderivative((~Px - Coeff(~Px, ~x, ~n - 1) * (~x) ^ (~n - 1)) * (~a + ~b * (~x) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b], ~x) && (PolyQ(~Px, ~x) && (IGtQ(~p, 1) && (IGtQ(~n, 1) && (NeQ(Coeff(~Px, ~x, ~n - 1), 0) && (NeQ(~Px, Coeff(~Px, ~x, ~n - 1) * (~x) ^ (~n - 1)) && Not(MatchQ(~Px, ~(Qx') * (~c + ~(d') * (~x) ^ ~m) ^ ~q <-- FreeQ([c, d], ~x) && (PolyQ(Qx, ~x) && (IGtQ(q, 1) && (IGtQ(m, 1) && (NeQ(Coeff(Qx * (~a + ~b * (~x) ^ ~n) ^ ~p, ~x, m - 1), 0) && GtQ(m * q, ~n * ~p))))))))))))
    @apply_utils Antiderivative(~Px * (~x) ^ ~(m') * (~a + ~(b') * (~x) ^ ~(n')) ^ ~p, ~x) => (Coeff(~Px, ~x, (~n - ~m) - 1) * (~a + ~b * (~x) ^ ~n) ^ (~p + 1)) / (~b * ~n * (~p + 1)) + Antiderivative((~Px - Coeff(~Px, ~x, (~n - ~m) - 1) * (~x) ^ ((~n - ~m) - 1)) * (~x) ^ ~m * (~a + ~b * (~x) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~m, ~n], ~x) && (PolyQ(~Px, ~x) && (IGtQ(~p, 1) && (IGtQ(~n - ~m, 0) && NeQ(Coeff(~Px, ~x, (~n - ~m) - 1), 0))))
    @apply_utils Antiderivative(~(u') * (~x) ^ ~(m') * (~(a') * (~x) ^ ~(p') + ~(b') * (~x) ^ ~(q')) ^ ~(n'), ~x) => Antiderivative(~u * (~x) ^ (~m + ~n * ~p) * (~a + ~b * (~x) ^ (~q - ~p)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~m, ~p, ~q], ~x) && (IntegerQ(~n) && PosQ(~q - ~p))
    @apply_utils Antiderivative(~(u') * (~x) ^ ~(m') * (~(a') * (~x) ^ ~(p') + ~(b') * (~x) ^ ~(q') + ~(c') * (~x) ^ ~(r')) ^ ~(n'), ~x) => Antiderivative(~u * (~x) ^ (~m + ~n * ~p) * (~a + ~b * (~x) ^ (~q - ~p) + ~c * (~x) ^ (~r - ~p)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~m, ~p, ~q, ~r], ~x) && (IntegerQ(~n) && (PosQ(~q - ~p) && PosQ(~r - ~p)))
    @apply_utils Antiderivative(~(u') * (~Px) ^ ~(p') * (~Qx) ^ ~(q'), ~x) => Antiderivative(~u * PolynomialQuotient(~Px, ~Qx, ~x) ^ ~p * (~Qx) ^ (~p + ~q), ~x) <-- FreeQ(~q, ~x) && (PolyQ(~Px, ~x) && (PolyQ(~Qx, ~x) && (EqQ(PolynomialRemainder(~Px, ~Qx, ~x), 0) && (IntegerQ(~p) && LtQ(~p * ~q, 0)))))
    @apply_utils Antiderivative(~Pp / ~Qq, ~x) => With([p = Expon(~Pp, ~x), q = Expon(~Qq, ~x)], (Coeff(~Pp, ~x, p) * log(RemoveContent(~Qq, ~x))) / (q * Coeff(~Qq, ~x, q)) <-- EqQ(p, q - 1) && EqQ(~Pp, Simplify((Coeff(~Pp, ~x, p) / (q * Coeff(~Qq, ~x, q))) * D(~Qq, ~x)))) <-- PolyQ(~Pp, ~x) && PolyQ(~Qq, ~x)
    @apply_utils Antiderivative(~Pp * (~Qq) ^ ~(m'), ~x) => With([p = Expon(~Pp, ~x), q = Expon(~Qq, ~x)], (Coeff(~Pp, ~x, p) * (~x) ^ ((p - q) + 1) * (~Qq) ^ (~m + 1)) / ((p + ~m * q + 1) * Coeff(~Qq, ~x, q)) <-- NeQ(p + ~m * q + 1, 0) && EqQ((p + ~m * q + 1) * Coeff(~Qq, ~x, q) * ~Pp, Coeff(~Pp, ~x, p) * (~x) ^ (p - q) * (((p - q) + 1) * ~Qq + (~m + 1) * ~x * D(~Qq, ~x)))) <-- FreeQ(~m, ~x) && (PolyQ(~Pp, ~x) && (PolyQ(~Qq, ~x) && NeQ(~m, -1)))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~a1 + ~(b1') * (~x) ^ ~(n')) ^ ~p * (~a2 + ~(b2') * (~x) ^ ~(n')) ^ ~p, ~x) => ((~a1 + ~b1 * (~x) ^ ~n) ^ (~p + 1) * (~a2 + ~b2 * (~x) ^ ~n) ^ (~p + 1)) / (2 * ~b1 * ~b2 * ~n * (~p + 1)) <-- FreeQ([~a1, ~b1, ~a2, ~b2, ~m, ~n, ~p], ~x) && (EqQ(~a2 * ~b1 + ~a1 * ~b2, 0) && (EqQ((~m - 2 * ~n) + 1, 0) && NeQ(~p, -1)))
    @apply_utils Antiderivative(~Pp * (~Qq) ^ ~(m') * (~Rr) ^ ~(n'), ~x) => With([p = Expon(~Pp, ~x), q = Expon(~Qq, ~x), r = Expon(~Rr, ~x)], (Coeff(~Pp, ~x, p) * (~x) ^ (((p - q) - r) + 1) * (~Qq) ^ (~m + 1) * (~Rr) ^ (~n + 1)) / ((p + ~m * q + ~n * r + 1) * Coeff(~Qq, ~x, q) * Coeff(~Rr, ~x, r)) <-- NeQ(p + ~m * q + ~n * r + 1, 0) && EqQ((p + ~m * q + ~n * r + 1) * Coeff(~Qq, ~x, q) * Coeff(~Rr, ~x, r) * ~Pp, Coeff(~Pp, ~x, p) * (~x) ^ ((p - q) - r) * ((((p - q) - r) + 1) * ~Qq * ~Rr + (~m + 1) * ~x * ~Rr * D(~Qq, ~x) + (~n + 1) * ~x * ~Qq * D(~Rr, ~x)))) <-- FreeQ([~m, ~n], ~x) && (PolyQ(~Pp, ~x) && (PolyQ(~Qq, ~x) && (PolyQ(~Rr, ~x) && (NeQ(~m, -1) && NeQ(~n, -1)))))
    @apply_utils Antiderivative(~Qr * (~(a') + ~(b') * (~Pq) ^ ~(n')) ^ ~(p'), ~x) => With([q = Expon(~Pq, ~x), r = Expon(~Qr, ~x)], (Coeff(~Qr, ~x, r) / (q * Coeff(~Pq, ~x, q))) * Subst(Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p, ~x), ~x, ~Pq) <-- EqQ(r, q - 1) && EqQ(Coeff(~Qr, ~x, r) * D(~Pq, ~x), q * Coeff(~Pq, ~x, q) * ~Qr)) <-- FreeQ([~a, ~b, ~n, ~p], ~x) && (PolyQ(~Pq, ~x) && PolyQ(~Qr, ~x))
    @apply_utils Antiderivative(~Qr * (~(a') + ~(b') * (~Pq) ^ ~(n') + ~(c') * (~Pq) ^ ~(n2')) ^ ~(p'), ~x) => Module([q = Expon(~Pq, ~x), r = Expon(~Qr, ~x)], (Coeff(~Qr, ~x, r) / (q * Coeff(~Pq, ~x, q))) * Subst(Antiderivative((~a + ~b * (~x) ^ ~n + ~c * (~x) ^ (2 * ~n)) ^ ~p, ~x), ~x, ~Pq) <-- EqQ(r, q - 1) && EqQ(Coeff(~Qr, ~x, r) * D(~Pq, ~x), q * Coeff(~Pq, ~x, q) * ~Qr)) <-- FreeQ([~a, ~b, ~c, ~n, ~p], ~x) && (EqQ(~n2, 2 * ~n) && (PolyQ(~Pq, ~x) && PolyQ(~Qr, ~x)))
    @apply_utils Antiderivative(~(u') * (~(a') * (~x) ^ ~(p') + ~(b') * (~x) ^ ~(q')) ^ ~(n'), ~x) => Antiderivative(~u * (~x) ^ (~n * ~p) * (~a + ~b * (~x) ^ (~q - ~p)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~p, ~q], ~x) && (IntegerQ(~n) && PosQ(~q - ~p))
    @apply_utils Antiderivative(~(u') * (~(a') * (~x) ^ ~(p') + ~(b') * (~x) ^ ~(q') + ~(c') * (~x) ^ ~(r')) ^ ~(n'), ~x) => Antiderivative(~u * (~x) ^ (~n * ~p) * (~a + ~b * (~x) ^ (~q - ~p) + ~c * (~x) ^ (~r - ~p)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~p, ~q, ~r], ~x) && (IntegerQ(~n) && (PosQ(~q - ~p) && PosQ(~r - ~p)))
    #= Antiderivative(sqrt((~a')+(~b')*(~x))*((~A')+(~B')*(~x))/(sqrt((~c')+(~d')*(~x))*sqrt((~e')+(~f')*(~x) )*sqrt((~g')+(~h')*(~x))),~x) :=  B*sqrt(a+b*x)*sqrt(e+f*x)*sqrt(g+h*x)/(f*h*sqrt(c+d*x)) - B*(b*g-a*h)/(2*f*h)*Antiderivative(sqrt(e+f*x)/(sqrt(a+b*x)*sqrt(c+d*x)*sqrt(g+ h*x)),x) + B*(d*e-c*f)*(d*g-c*h)/(2*d*f*h)*Antiderivative(sqrt(a+b*x)/((c+d*x)^(3/2)*sqrt( e+f*x)*sqrt(g+h*x)),x) <-- FreeQ([a,b,c,d,e,f,g,h,A,B],x) &&  EqQ(2*A*d*f-B*(d*e+c*f),0) =#
    @apply_utils Antiderivative((sqrt(~(a') + ~(b') * ~x) * (~(A') + ~(B') * ~x)) / (sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => ((~b * ~B * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)) / (~d * ~f * ~h * sqrt(~a + ~b * ~x)) - ((~B * (~b * ~g - ~a * ~h)) / (2 * ~f * ~h)) * Antiderivative(sqrt(~e + ~f * ~x) / (sqrt(~a + ~b * ~x) * sqrt(~c + ~d * ~x) * sqrt(~g + ~h * ~x)), ~x)) + ((~B * (~b * ~e - ~a * ~f) * (~b * ~g - ~a * ~h)) / (2 * ~d * ~f * ~h)) * Antiderivative(sqrt(~c + ~d * ~x) / ((~a + ~b * ~x) ^ (3 / 2) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~B], ~x) && EqQ(2 * ~A * ~d * ~f - ~B * (~d * ~e + ~c * ~f), 0)
    #= Antiderivative(sqrt((~a')+(~b')*(~x))*((~A')+(~B')*(~x))/(sqrt((~c')+(~d')*(~x))*sqrt((~e')+(~f')*(~x) )*sqrt((~g')+(~h')*(~x))),~x) :=  (2*A*d*f-B*(d*e+c*f))/(2*d*f)*Antiderivative(sqrt(a+b*x)/(sqrt(c+d*x)*sqrt(e+f*x) *sqrt(g+h*x)),x) + B/(2*d*f)*Antiderivative((sqrt(a+b*x)*(d*e+c*f+2*d*f*x))/(sqrt(c+d*x)*sqrt(e+f* x)*sqrt(g+h*x)),x) <-- FreeQ([a,b,c,d,e,f,g,h,A,B],x) &&  NeQ(2*A*d*f-B*(d*e+c*f),0) =#
    @apply_utils Antiderivative((sqrt(~(a') + ~(b') * ~x) * (~(A') + ~(B') * ~x)) / (sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => (((~B * sqrt(~a + ~b * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)) / (~f * ~h * sqrt(~c + ~d * ~x)) + ((~B * (~d * ~e - ~c * ~f) * (~d * ~g - ~c * ~h)) / (2 * ~d * ~f * ~h)) * Antiderivative(sqrt(~a + ~b * ~x) / ((~c + ~d * ~x) ^ (3 / 2) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)), ~x)) - ((~B * (~b * ~e - ~a * ~f) * (~b * ~g - ~a * ~h)) / (2 * ~b * ~f * ~h)) * Antiderivative(1 / (sqrt(~a + ~b * ~x) * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)), ~x)) + ((2 * ~A * ~b * ~d * ~f * ~h + ~B * (~a * ~d * ~f * ~h - ~b * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h))) / (2 * ~b * ~d * ~f * ~h)) * Antiderivative(sqrt(~a + ~b * ~x) / (sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~B], ~x) && NeQ(2 * ~A * ~d * ~f - ~B * (~d * ~e + ~c * ~f), 0)
    @apply_utils Antiderivative(((~(a') + ~(b') * ~x) ^ ~(m') * (~(A') + ~(B') * ~x)) / (sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => (1 / (~d * ~f * ~h * (2 * ~m + 3))) * Antiderivative(((~a + ~b * ~x) ^ (~m - 1) / (sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x))) * Simp(~a * ~A * ~d * ~f * ~h * (2 * ~m + 3) + (~A * ~b + ~a * ~B) * ~d * ~f * ~h * (2 * ~m + 3) * ~x + ~b * ~B * ~d * ~f * ~h * (2 * ~m + 3) * (~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~B], ~x) && (IntegerQ(2 * ~m) && GtQ(~m, 0))
    @apply_utils Antiderivative((~(A') + ~(B') * ~x) / (sqrt(~(a') + ~(b') * ~x) * sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => ((~A * ~b - ~a * ~B) / ~b) * Antiderivative(1 / (sqrt(~a + ~b * ~x) * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)), ~x) + (~B / ~b) * Antiderivative(sqrt(~a + ~b * ~x) / (sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~B], ~x)
    @apply_utils Antiderivative(((~(a') + ~(b') * ~x) ^ ~m * (~(A') + ~(B') * ~x)) / (sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => ((~A * (~b) ^ 2 - ~a * ~b * ~B) * (~a + ~b * ~x) ^ (~m + 1) * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)) / ((~m + 1) * (~b * ~c - ~a * ~d) * (~b * ~e - ~a * ~f) * (~b * ~g - ~a * ~h)) - (1 / (2 * (~m + 1) * (~b * ~c - ~a * ~d) * (~b * ~e - ~a * ~f) * (~b * ~g - ~a * ~h))) * Antiderivative(((~a + ~b * ~x) ^ (~m + 1) / (sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x))) * Simp(((~A * ((2 * (~a) ^ 2 * ~d * ~f * ~h * (~m + 1) - 2 * ~a * ~b * (~m + 1) * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h)) + (~b) ^ 2 * (2 * ~m + 3) * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h)) - ~b * ~B * (~a * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h) + 2 * ~b * ~c * ~e * ~g * (~m + 1))) - 2 * ((~A * ~b - ~a * ~B) * (~a * ~d * ~f * ~h * (~m + 1) - ~b * (~m + 2) * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h))) * ~x) + ~d * ~f * ~h * (2 * ~m + 5) * (~A * (~b) ^ 2 - ~a * ~b * ~B) * (~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~B], ~x) && (IntegerQ(2 * ~m) && LtQ(~m, -1))
    @apply_utils Antiderivative(((~(a') + ~(b') * ~x) ^ ~(m') * (~(A') + ~(B') * ~x + ~(C') * (~x) ^ 2)) / (sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => (2 * ~C * (~a + ~b * ~x) ^ ~m * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)) / (~d * ~f * ~h * (2 * ~m + 3)) + (1 / (~d * ~f * ~h * (2 * ~m + 3))) * Antiderivative(((~a + ~b * ~x) ^ (~m - 1) / (sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x))) * Simp((~a * ~A * ~d * ~f * ~h * (2 * ~m + 3) - ~C * (~a * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h) + 2 * ~b * ~c * ~e * ~g * ~m)) + ((~A * ~b + ~a * ~B) * ~d * ~f * ~h * (2 * ~m + 3) - ~C * (2 * ~a * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h) + ~b * (2 * ~m + 1) * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h))) * ~x + (~b * ~B * ~d * ~f * ~h * (2 * ~m + 3) + 2 * ~C * (~a * ~d * ~f * ~h * ~m - ~b * (~m + 1) * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h))) * (~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~B, ~C], ~x) && (IntegerQ(2 * ~m) && GtQ(~m, 0))
    @apply_utils Antiderivative(((~(a') + ~(b') * ~x) ^ ~(m') * (~(A') + ~(C') * (~x) ^ 2)) / (sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => (2 * ~C * (~a + ~b * ~x) ^ ~m * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)) / (~d * ~f * ~h * (2 * ~m + 3)) + (1 / (~d * ~f * ~h * (2 * ~m + 3))) * Antiderivative(((~a + ~b * ~x) ^ (~m - 1) / (sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x))) * Simp((~a * ~A * ~d * ~f * ~h * (2 * ~m + 3) - ~C * (~a * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h) + 2 * ~b * ~c * ~e * ~g * ~m)) + (~A * ~b * ~d * ~f * ~h * (2 * ~m + 3) - ~C * (2 * ~a * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h) + ~b * (2 * ~m + 1) * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h))) * ~x + 2 * ~C * (~a * ~d * ~f * ~h * ~m - ~b * (~m + 1) * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h)) * (~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~C], ~x) && (IntegerQ(2 * ~m) && GtQ(~m, 0))
    @apply_utils Antiderivative((~(A') + ~(B') * ~x + ~(C') * (~x) ^ 2) / (sqrt(~(a') + ~(b') * ~x) * sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => (~C * sqrt(~a + ~b * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)) / (~b * ~f * ~h * sqrt(~c + ~d * ~x)) + ((~C * (~d * ~e - ~c * ~f) * (~d * ~g - ~c * ~h)) / (2 * ~b * ~d * ~f * ~h)) * Antiderivative(sqrt(~a + ~b * ~x) / ((~c + ~d * ~x) ^ (3 / 2) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)), ~x) + (1 / (2 * ~b * ~d * ~f * ~h)) * Antiderivative((1 / (sqrt(~a + ~b * ~x) * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x))) * Simp((2 * ~A * ~b * ~d * ~f * ~h - ~C * (~b * ~d * ~e * ~g + ~a * ~c * ~f * ~h)) + (2 * ~b * ~B * ~d * ~f * ~h - ~C * (~a * ~d * ~f * ~h + ~b * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h))) * ~x, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~B, ~C], ~x)
    @apply_utils Antiderivative((~(A') + ~(C') * (~x) ^ 2) / (sqrt(~(a') + ~(b') * ~x) * sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => (~C * sqrt(~a + ~b * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)) / (~b * ~f * ~h * sqrt(~c + ~d * ~x)) + ((~C * (~d * ~e - ~c * ~f) * (~d * ~g - ~c * ~h)) / (2 * ~b * ~d * ~f * ~h)) * Antiderivative(sqrt(~a + ~b * ~x) / ((~c + ~d * ~x) ^ (3 / 2) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)), ~x) + (1 / (2 * ~b * ~d * ~f * ~h)) * Antiderivative((1 / (sqrt(~a + ~b * ~x) * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x))) * Simp((2 * ~A * ~b * ~d * ~f * ~h - ~C * (~b * ~d * ~e * ~g + ~a * ~c * ~f * ~h)) - ~C * (~a * ~d * ~f * ~h + ~b * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h)) * ~x, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~C], ~x)
    @apply_utils Antiderivative(((~(a') + ~(b') * ~x) ^ ~m * (~(A') + ~(B') * ~x + ~(C') * (~x) ^ 2)) / (sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => (((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) * (~a + ~b * ~x) ^ (~m + 1) * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)) / ((~m + 1) * (~b * ~c - ~a * ~d) * (~b * ~e - ~a * ~f) * (~b * ~g - ~a * ~h)) - (1 / (2 * (~m + 1) * (~b * ~c - ~a * ~d) * (~b * ~e - ~a * ~f) * (~b * ~g - ~a * ~h))) * Antiderivative(((~a + ~b * ~x) ^ (~m + 1) / (sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x))) * Simp(((~A * ((2 * (~a) ^ 2 * ~d * ~f * ~h * (~m + 1) - 2 * ~a * ~b * (~m + 1) * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h)) + (~b) ^ 2 * (2 * ~m + 3) * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h)) - (~b * ~B - ~a * ~C) * (~a * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h) + 2 * ~b * ~c * ~e * ~g * (~m + 1))) - 2 * ((~A * ~b - ~a * ~B) * (~a * ~d * ~f * ~h * (~m + 1) - ~b * (~m + 2) * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h)) - ~C * (((~a) ^ 2 * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h) - (~b) ^ 2 * ~c * ~e * ~g * (~m + 1)) + ~a * ~b * (~m + 1) * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h))) * ~x) + ~d * ~f * ~h * (2 * ~m + 5) * ((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) * (~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~B, ~C], ~x) && (IntegerQ(2 * ~m) && LtQ(~m, -1))
    @apply_utils Antiderivative(((~(a') + ~(b') * ~x) ^ ~m * (~(A') + ~(C') * (~x) ^ 2)) / (sqrt(~(c') + ~(d') * ~x) * sqrt(~(e') + ~(f') * ~x) * sqrt(~(g') + ~(h') * ~x)), ~x) => ((~A * (~b) ^ 2 + (~a) ^ 2 * ~C) * (~a + ~b * ~x) ^ (~m + 1) * sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x)) / ((~m + 1) * (~b * ~c - ~a * ~d) * (~b * ~e - ~a * ~f) * (~b * ~g - ~a * ~h)) - (1 / (2 * (~m + 1) * (~b * ~c - ~a * ~d) * (~b * ~e - ~a * ~f) * (~b * ~g - ~a * ~h))) * Antiderivative(((~a + ~b * ~x) ^ (~m + 1) / (sqrt(~c + ~d * ~x) * sqrt(~e + ~f * ~x) * sqrt(~g + ~h * ~x))) * Simp(((~A * ((2 * (~a) ^ 2 * ~d * ~f * ~h * (~m + 1) - 2 * ~a * ~b * (~m + 1) * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h)) + (~b) ^ 2 * (2 * ~m + 3) * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h)) + ~a * ~C * (~a * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h) + 2 * ~b * ~c * ~e * ~g * (~m + 1))) - 2 * (~A * ~b * (~a * ~d * ~f * ~h * (~m + 1) - ~b * (~m + 2) * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h)) - ~C * (((~a) ^ 2 * (~d * ~f * ~g + ~d * ~e * ~h + ~c * ~f * ~h) - (~b) ^ 2 * ~c * ~e * ~g * (~m + 1)) + ~a * ~b * (~m + 1) * (~d * ~e * ~g + ~c * ~f * ~g + ~c * ~e * ~h))) * ~x) + ~d * ~f * ~h * (2 * ~m + 5) * (~A * (~b) ^ 2 + (~a) ^ 2 * ~C) * (~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~A, ~C], ~x) && (IntegerQ(2 * ~m) && LtQ(~m, -1))
    @apply_utils Antiderivative(~Px * (~(a') + ~(b') * ~x) ^ ~(m') * (~(c') + ~(d') * ~x) ^ ~(n') * (~(e') + ~(f') * ~x) ^ ~(p') * (~(g') + ~(h') * ~x) ^ ~(q'), ~x) => Antiderivative(ExpandIntegrand(~Px * (~a + ~b * ~x) ^ ~m * (~c + ~d * ~x) ^ ~n * (~e + ~f * ~x) ^ ~p * (~g + ~h * ~x) ^ ~q, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~m, ~n, ~p, ~q], ~x) && (PolyQ(~Px, ~x) && IntegersQ(~m, ~n))
    @apply_utils Antiderivative(~Px * (~(a') + ~(b') * ~x) ^ ~(m') * (~(c') + ~(d') * ~x) ^ ~(n') * (~(e') + ~(f') * ~x) ^ ~(p') * (~(g') + ~(h') * ~x) ^ ~(q'), ~x) => PolynomialRemainder(~Px, ~a + ~b * ~x, ~x) * Antiderivative((~a + ~b * ~x) ^ ~m * (~c + ~d * ~x) ^ ~n * (~e + ~f * ~x) ^ ~p * (~g + ~h * ~x) ^ ~q, ~x) + Antiderivative(PolynomialQuotient(~Px, ~a + ~b * ~x, ~x) * (~a + ~b * ~x) ^ (~m + 1) * (~c + ~d * ~x) ^ ~n * (~e + ~f * ~x) ^ ~p * (~g + ~h * ~x) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~m, ~n, ~p, ~q], ~x) && (PolyQ(~Px, ~x) && EqQ(~m, -1))
    @apply_utils Antiderivative(~Px * (~(a') + ~(b') * ~x) ^ ~(m') * (~(c') + ~(d') * ~x) ^ ~(n') * (~(e') + ~(f') * ~x) ^ ~(p') * (~(g') + ~(h') * ~x) ^ ~(q'), ~x) => PolynomialRemainder(~Px, ~a + ~b * ~x, ~x) * Antiderivative((~a + ~b * ~x) ^ ~m * (~c + ~d * ~x) ^ ~n * (~e + ~f * ~x) ^ ~p * (~g + ~h * ~x) ^ ~q, ~x) + Antiderivative(PolynomialQuotient(~Px, ~a + ~b * ~x, ~x) * (~a + ~b * ~x) ^ (~m + 1) * (~c + ~d * ~x) ^ ~n * (~e + ~f * ~x) ^ ~p * (~g + ~h * ~x) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~m, ~n, ~p, ~q], ~x) && PolyQ(~Px, ~x)
end
