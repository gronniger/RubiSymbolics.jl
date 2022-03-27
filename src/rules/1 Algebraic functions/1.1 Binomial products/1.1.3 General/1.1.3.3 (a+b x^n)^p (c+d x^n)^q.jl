int_rules_1_1_3_3 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 1.1.3.3*(a+b*x^n)^p*(c+d*x^n)^q =#
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q'), ~x) => Antiderivative(ExpandIntegrand((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (IGtQ(~p, 0) && IGtQ(~q, 0)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q'), ~x) => Antiderivative((~x) ^ (~n * (~p + ~q)) * (~b + ~a * (~x) ^ -(~n)) ^ ~p * (~d + ~c * (~x) ^ -(~n)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (IntegersQ(~p, ~q) && NegQ(~n)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q'), ~x) => -(Subst(Antiderivative(((~a + ~b * (~x) ^ -(~n)) ^ ~p * (~c + ~d * (~x) ^ -(~n)) ^ ~q) / (~x) ^ 2, ~x), ~x, 1 / ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~p, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && ILtQ(~n, 0))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q'), ~x) => With([g = Denominator(~n)], g * Subst(Antiderivative((~x) ^ (g - 1) * (~a + ~b * (~x) ^ (g * ~n)) ^ ~p * (~c + ~d * (~x) ^ (g * ~n)) ^ ~q, ~x), ~x, (~x) ^ (1 / g))) <-- FreeQ([~a, ~b, ~c, ~d, ~p, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && FractionQ(~n))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 3) ^ (1 / 3) * (~c + ~(d') * (~x) ^ 3)), ~x) => With([q = Rt((~b * ~c - ~a * ~d) / ~c, 3)], (atan((1 + (2 * q * ~x) / (~a + ~b * (~x) ^ 3) ^ (1 / 3)) / sqrt(3)) / (sqrt(3) * ~c * q) + log(~c + ~d * (~x) ^ 3) / (6 * ~c * q)) - log(q * ~x - (~a + ~b * (~x) ^ 3) ^ (1 / 3)) / (2 * ~c * q)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p / (~c + ~(d') * (~x) ^ ~n), ~x) => Subst(Antiderivative(1 / (~c - (~b * ~c - ~a * ~d) * (~x) ^ ~n), ~x), ~x, ~x / (~a + ~b * (~x) ^ ~n) ^ (1 / ~n)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~n * ~p + 1, 0) && IntegerQ(~n)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~(q'), ~x) => (-(~x) * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ ~q) / (~a * ~n * (~p + 1)) - ((~c * ~q) / (~a * (~p + 1))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q - 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~n * (~p + ~q + 1) + 1, 0) && (GtQ(~q, 0) && NeQ(~p, -1))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => (((~a) ^ ~p * ~x) / ((~c) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (1 / ~n))) * HypergeometricFunctions._₂F₁(1 / ~n, -(~p), 1 + 1 / ~n, (-((~b * ~c - ~a * ~d)) * (~x) ^ ~n) / (~a * (~c + ~d * (~x) ^ ~n))) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~n * (~p + ~q + 1) + 1, 0) && ILtQ(~p, 0)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => ((~x * (~a + ~b * (~x) ^ ~n) ^ ~p) / (~c * ((~c * (~a + ~b * (~x) ^ ~n)) / (~a * (~c + ~d * (~x) ^ ~n))) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ (1 / ~n + ~p))) * HypergeometricFunctions._₂F₁(1 / ~n, -(~p), 1 + 1 / ~n, (-((~b * ~c - ~a * ~d)) * (~x) ^ ~n) / (~a * (~c + ~d * (~x) ^ ~n))) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && EqQ(~n * (~p + ~q + 1) + 1, 0))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => (~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q + 1)) / (~a * ~c) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~n * (~p + ~q + 2) + 1, 0) && EqQ(~a * ~d * (~p + 1) + ~b * ~c * (~q + 1), 0)))
    #= Antiderivative(((~a1)+(~b1')*(~x)^(~n2'))^(~p)*((~a2)+(~b2')*(~x)^(~n2'))^(~p)*((~c)+(~d')*(~x)^(~n))^(~q), ~x) :=  x*(a1+b1*x^(n/2))^(p+1)*(a2+b2*x^(n/2))^(p+1)*(c+d*x^n)^(q+1)/(a1*a2* c) <-- FreeQ([a1,b1,a2,b2,c,d,n,p,q],x) && EqQ(n2,n/2) &&  EqQ(a2*b1+a1*b2,0) && EqQ(n*(p+q+2)+1,0) &&  EqQ(a1*a2*d*(p+1)+b1*b2*c*(q+1),0) =#
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => (-(~b) * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q + 1)) / (~a * ~n * (~p + 1) * (~b * ~c - ~a * ~d)) + ((~b * ~c + ~n * (~p + 1) * (~b * ~c - ~a * ~d)) / (~a * ~n * (~p + 1) * (~b * ~c - ~a * ~d))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~n * (~p + ~q + 2) + 1, 0) && ((LtQ(~p, -1) || Not(LtQ(~q, -1))) && NeQ(~p, -1))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n), ~x) => (~c * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1)) / ~a <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && EqQ(~a * ~d - ~b * ~c * (~n * (~p + 1) + 1), 0))
    @apply_utils Antiderivative((~a1 + ~(b1') * (~x) ^ ~(non2')) ^ ~(p') * (~a2 + ~(b2') * (~x) ^ ~(non2')) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n), ~x) => (~c * ~x * (~a1 + ~b1 * (~x) ^ (~n / 2)) ^ (~p + 1) * (~a2 + ~b2 * (~x) ^ (~n / 2)) ^ (~p + 1)) / (~a1 * ~a2) <-- FreeQ([~a1, ~b1, ~a2, ~b2, ~c, ~d, ~n, ~p], ~x) && (EqQ(~non2, ~n / 2) && (EqQ(~a2 * ~b1 + ~a1 * ~b2, 0) && EqQ(~a1 * ~a2 * ~d - ~b1 * ~b2 * ~c * (~n * (~p + 1) + 1), 0)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n), ~x) => (-((~b * ~c - ~a * ~d)) * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1)) / (~a * ~b * ~n * (~p + 1)) - ((~a * ~d - ~b * ~c * (~n * (~p + 1) + 1)) / (~a * ~b * ~n * (~p + 1))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (LtQ(~p, -1) || ILtQ(1 / ~n + ~p, 0)))
    @apply_utils Antiderivative((~a1 + ~(b1') * (~x) ^ ~(non2')) ^ ~(p') * (~a2 + ~(b2') * (~x) ^ ~(non2')) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n), ~x) => (-((~b1 * ~b2 * ~c - ~a1 * ~a2 * ~d)) * ~x * (~a1 + ~b1 * (~x) ^ (~n / 2)) ^ (~p + 1) * (~a2 + ~b2 * (~x) ^ (~n / 2)) ^ (~p + 1)) / (~a1 * ~a2 * ~b1 * ~b2 * ~n * (~p + 1)) - ((~a1 * ~a2 * ~d - ~b1 * ~b2 * ~c * (~n * (~p + 1) + 1)) / (~a1 * ~a2 * ~b1 * ~b2 * ~n * (~p + 1))) * Antiderivative((~a1 + ~b1 * (~x) ^ (~n / 2)) ^ (~p + 1) * (~a2 + ~b2 * (~x) ^ (~n / 2)) ^ (~p + 1), ~x) <-- FreeQ([~a1, ~b1, ~a2, ~b2, ~c, ~d, ~n], ~x) && (EqQ(~non2, ~n / 2) && (EqQ(~a2 * ~b1 + ~a1 * ~b2, 0) && (LtQ(~p, -1) || ILtQ(1 / ~n + ~p, 0))))
    @apply_utils Antiderivative((~c + ~(d') * (~x) ^ ~n) / (~a + ~(b') * (~x) ^ ~n), ~x) => (~c * ~x) / ~a - ((~b * ~c - ~a * ~d) / ~a) * Antiderivative(1 / (~b + ~a * (~x) ^ -(~n)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && LtQ(~n, 0))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n), ~x) => (~d * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1)) / (~b * (~n * (~p + 1) + 1)) - ((~a * ~d - ~b * ~c * (~n * (~p + 1) + 1)) / (~b * (~n * (~p + 1) + 1))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && NeQ(~n * (~p + 1) + 1, 0))
    @apply_utils Antiderivative((~a1 + ~(b1') * (~x) ^ ~(non2')) ^ ~(p') * (~a2 + ~(b2') * (~x) ^ ~(non2')) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n), ~x) => (~d * ~x * (~a1 + ~b1 * (~x) ^ (~n / 2)) ^ (~p + 1) * (~a2 + ~b2 * (~x) ^ (~n / 2)) ^ (~p + 1)) / (~b1 * ~b2 * (~n * (~p + 1) + 1)) - ((~a1 * ~a2 * ~d - ~b1 * ~b2 * ~c * (~n * (~p + 1) + 1)) / (~b1 * ~b2 * (~n * (~p + 1) + 1))) * Antiderivative((~a1 + ~b1 * (~x) ^ (~n / 2)) ^ ~p * (~a2 + ~b2 * (~x) ^ (~n / 2)) ^ ~p, ~x) <-- FreeQ([~a1, ~b1, ~a2, ~b2, ~c, ~d, ~n, ~p], ~x) && (EqQ(~non2, ~n / 2) && (EqQ(~a2 * ~b1 + ~a1 * ~b2, 0) && NeQ(~n * (~p + 1) + 1, 0)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => Antiderivative(PolynomialDivide((~a + ~b * (~x) ^ ~n) ^ ~p, (~c + ~d * (~x) ^ ~n) ^ -(~q), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (IGtQ(~n, 0) && (IGtQ(~p, 0) && (ILtQ(~q, 0) && GeQ(~p, -(~q))))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p / (~c + ~(d') * (~x) ^ ~n), ~x) => (~b / ~d) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p - 1), ~x) - ((~b * ~c - ~a * ~d) / ~d) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p - 1) / (~c + ~d * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~p], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~n * (~p - 1) + 1, 0) && IntegerQ(~n)))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ ~n) * (~c + ~(d') * (~x) ^ ~n)), ~x) => (~b / (~b * ~c - ~a * ~d)) * Antiderivative(1 / (~a + ~b * (~x) ^ ~n), ~x) - (~d / (~b * ~c - ~a * ~d)) * Antiderivative(1 / (~c + ~d * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && NeQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ (1 / 3) * (~c + ~(d') * (~x) ^ 2)), ~x) => With([q = Rt(~b / ~a, 2)], ((q * atanh(sqrt(3) / (q * ~x))) / (2 * 2 ^ (2 / 3) * sqrt(3) * (~a) ^ (1 / 3) * ~d) + (q * atanh((sqrt(3) * ((~a) ^ (1 / 3) - 2 ^ (1 / 3) * (~a + ~b * (~x) ^ 2) ^ (1 / 3))) / ((~a) ^ (1 / 3) * q * ~x))) / (2 * 2 ^ (2 / 3) * sqrt(3) * (~a) ^ (1 / 3) * ~d) + (q * atan(q * ~x)) / (6 * 2 ^ (2 / 3) * (~a) ^ (1 / 3) * ~d)) - (q * atan(((~a) ^ (1 / 3) * q * ~x) / ((~a) ^ (1 / 3) + 2 ^ (1 / 3) * (~a + ~b * (~x) ^ 2) ^ (1 / 3)))) / (2 * 2 ^ (2 / 3) * (~a) ^ (1 / 3) * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~b * ~c + 3 * ~a * ~d, 0) && PosQ(~b / ~a)))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ (1 / 3) * (~c + ~(d') * (~x) ^ 2)), ~x) => With([q = Rt(-(~b) / ~a, 2)], (((q * atan(sqrt(3) / (q * ~x))) / (2 * 2 ^ (2 / 3) * sqrt(3) * (~a) ^ (1 / 3) * ~d) + (q * atan((sqrt(3) * ((~a) ^ (1 / 3) - 2 ^ (1 / 3) * (~a + ~b * (~x) ^ 2) ^ (1 / 3))) / ((~a) ^ (1 / 3) * q * ~x))) / (2 * 2 ^ (2 / 3) * sqrt(3) * (~a) ^ (1 / 3) * ~d)) - (q * atanh(q * ~x)) / (6 * 2 ^ (2 / 3) * (~a) ^ (1 / 3) * ~d)) + (q * atanh(((~a) ^ (1 / 3) * q * ~x) / ((~a) ^ (1 / 3) + 2 ^ (1 / 3) * (~a + ~b * (~x) ^ 2) ^ (1 / 3)))) / (2 * 2 ^ (2 / 3) * (~a) ^ (1 / 3) * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~b * ~c + 3 * ~a * ~d, 0) && NegQ(~b / ~a)))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ (1 / 3) * (~c + ~(d') * (~x) ^ 2)), ~x) => With([q = Rt(~b / ~a, 2)], ((q * atan((q * ~x) / 3)) / (12 * Rt(~a, 3) * ~d) + (q * atan((Rt(~a, 3) - (~a + ~b * (~x) ^ 2) ^ (1 / 3)) ^ 2 / (3 * Rt(~a, 3) ^ 2 * q * ~x))) / (12 * Rt(~a, 3) * ~d)) - (q * atanh((sqrt(3) * (Rt(~a, 3) - (~a + ~b * (~x) ^ 2) ^ (1 / 3))) / (Rt(~a, 3) * q * ~x))) / (4 * sqrt(3) * Rt(~a, 3) * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~b * ~c - 9 * ~a * ~d, 0) && PosQ(~b / ~a)))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ (1 / 3) * (~c + ~(d') * (~x) ^ 2)), ~x) => With([q = Rt(-(~b) / ~a, 2)], ((-q * atanh((q * ~x) / 3)) / (12 * Rt(~a, 3) * ~d) + (q * atanh((Rt(~a, 3) - (~a + ~b * (~x) ^ 2) ^ (1 / 3)) ^ 2 / (3 * Rt(~a, 3) ^ 2 * q * ~x))) / (12 * Rt(~a, 3) * ~d)) - (q * atan((sqrt(3) * (Rt(~a, 3) - (~a + ~b * (~x) ^ 2) ^ (1 / 3))) / (Rt(~a, 3) * q * ~x))) / (4 * sqrt(3) * Rt(~a, 3) * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ(~b * ~c - 9 * ~a * ~d, 0) && NegQ(~b / ~a)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 2) ^ (2 / 3) / (~c + ~(d') * (~x) ^ 2), ~x) => (~b / ~d) * Antiderivative(1 / (~a + ~b * (~x) ^ 2) ^ (1 / 3), ~x) - ((~b * ~c - ~a * ~d) / ~d) * Antiderivative(1 / ((~a + ~b * (~x) ^ 2) ^ (1 / 3) * (~c + ~d * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && EqQ(~b * ~c + 3 * ~a * ~d, 0))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ (1 / 4) * (~c + ~(d') * (~x) ^ 2)), ~x) => With([q = Rt((~b) ^ 2 / ~a, 4)], (-(~b) / (2 * ~a * ~d * q)) * atan((~b + q ^ 2 * sqrt(~a + ~b * (~x) ^ 2)) / (q ^ 3 * ~x * (~a + ~b * (~x) ^ 2) ^ (1 / 4))) - (~b / (2 * ~a * ~d * q)) * atanh((~b - q ^ 2 * sqrt(~a + ~b * (~x) ^ 2)) / (q ^ 3 * ~x * (~a + ~b * (~x) ^ 2) ^ (1 / 4)))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ(~b * ~c - 2 * ~a * ~d, 0) && PosQ((~b) ^ 2 / ~a))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ (1 / 4) * (~c + ~(d') * (~x) ^ 2)), ~x) => With([q = Rt(-((~b) ^ 2) / ~a, 4)], (~b / (2 * sqrt(2) * ~a * ~d * q)) * atan((q * ~x) / (sqrt(2) * (~a + ~b * (~x) ^ 2) ^ (1 / 4))) + (~b / (2 * sqrt(2) * ~a * ~d * q)) * atanh((q * ~x) / (sqrt(2) * (~a + ~b * (~x) ^ 2) ^ (1 / 4)))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ(~b * ~c - 2 * ~a * ~d, 0) && NegQ((~b) ^ 2 / ~a))
    #= Antiderivative(1/(((~a)+(~b')*(~x)^2)^(1/4)*((~c)+(~d')*(~x)^2)),~x) :=  With([q=Rt(-b^2/a,4)], b/(2*sqrt(2)*a*d*q)*atan(q*x/(sqrt(2)*(a+b*x^2)^(1/4))) + b/(4*sqrt(2)*a*d*q)*log((sqrt(2)*q*x+2*(a+b*x^2)^(1/4))/(sqrt(2)*q* x-2*(a+b*x^2)^(1/4)))) <-- FreeQ([a,b,c,d],x) && EqQ(b*c-2*a*d,0) &&  NegQ(b^2/a) =#
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ (1 / 4) * (~c + ~(d') * (~x) ^ 2)), ~x) => ((2 * sqrt((-(~b) * (~x) ^ 2) / ~a)) / ~x) * Subst(Antiderivative((~x) ^ 2 / (sqrt(1 - (~x) ^ 4 / ~a) * ((~b * ~c - ~a * ~d) + ~d * (~x) ^ 4)), ~x), ~x, (~a + ~b * (~x) ^ 2) ^ (1 / 4)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ (3 / 4) * (~c + ~(d') * (~x) ^ 2)), ~x) => (1 / ~c) * Antiderivative(1 / (~a + ~b * (~x) ^ 2) ^ (3 / 4), ~x) - (~d / ~c) * Antiderivative((~x) ^ 2 / ((~a + ~b * (~x) ^ 2) ^ (3 / 4) * (~c + ~d * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && EqQ(~b * ~c - 2 * ~a * ~d, 0)
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ (3 / 4) * (~c + ~(d') * (~x) ^ 2)), ~x) => (sqrt((-(~b) * (~x) ^ 2) / ~a) / (2 * ~x)) * Subst(Antiderivative(1 / (sqrt((-(~b) * ~x) / ~a) * (~a + ~b * ~x) ^ (3 / 4) * (~c + ~d * ~x)), ~x), ~x, (~x) ^ 2) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 2) ^ ~(p') / (~c + ~(d') * (~x) ^ 2), ~x) => (~b / ~d) * Antiderivative((~a + ~b * (~x) ^ 2) ^ (~p - 1), ~x) - ((~b * ~c - ~a * ~d) / ~d) * Antiderivative((~a + ~b * (~x) ^ 2) ^ (~p - 1) / (~c + ~d * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (GtQ(~p, 0) && (EqQ(~p, 1 / 2) || EqQ(Denominator(~p), 4))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 2) ^ ~p / (~c + ~(d') * (~x) ^ 2), ~x) => (~b / (~b * ~c - ~a * ~d)) * Antiderivative((~a + ~b * (~x) ^ 2) ^ ~p, ~x) - (~d / (~b * ~c - ~a * ~d)) * Antiderivative((~a + ~b * (~x) ^ 2) ^ (~p + 1) / (~c + ~d * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (LtQ(~p, -1) && (EqQ(Denominator(~p), 4) && (EqQ(~p, -5 / 4) || EqQ(~p, -7 / 4)))))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 4) / (~c + ~(d') * (~x) ^ 4), ~x) => (~a / ~c) * Subst(Antiderivative(1 / (1 - 4 * ~a * ~b * (~x) ^ 4), ~x), ~x, ~x / sqrt(~a + ~b * (~x) ^ 4)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ(~b * ~c + ~a * ~d, 0) && PosQ(~a * ~b))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 4) / (~c + ~(d') * (~x) ^ 4), ~x) => With([q = Rt(-(~a) * ~b, 4)], (~a / (2 * ~c * q)) * atan((q * ~x * (~a + q ^ 2 * (~x) ^ 2)) / (~a * sqrt(~a + ~b * (~x) ^ 4))) + (~a / (2 * ~c * q)) * atanh((q * ~x * (~a - q ^ 2 * (~x) ^ 2)) / (~a * sqrt(~a + ~b * (~x) ^ 4)))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ(~b * ~c + ~a * ~d, 0) && NegQ(~a * ~b))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 4) / (~c + ~(d') * (~x) ^ 4), ~x) => (~b / ~d) * Antiderivative(1 / sqrt(~a + ~b * (~x) ^ 4), ~x) - ((~b * ~c - ~a * ~d) / ~d) * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ 4) * (~c + ~d * (~x) ^ 4)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 4) ^ (1 / 4) / (~c + ~(d') * (~x) ^ 4), ~x) => sqrt(~a + ~b * (~x) ^ 4) * sqrt(~a / (~a + ~b * (~x) ^ 4)) * Subst(Antiderivative(1 / (sqrt(1 - ~b * (~x) ^ 4) * (~c - (~b * ~c - ~a * ~d) * (~x) ^ 4)), ~x), ~x, ~x / (~a + ~b * (~x) ^ 4) ^ (1 / 4)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 4) ^ (5 / 4) / (~c + ~(d') * (~x) ^ 4), ~x) => (~b / ~d) * Antiderivative((~a + ~b * (~x) ^ 4) ^ (1 / 4), ~x) - ((~b * ~c - ~a * ~d) / ~d) * Antiderivative((~a + ~b * (~x) ^ 4) ^ (1 / 4) / (~c + ~d * (~x) ^ 4), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative(1 / (sqrt(~a + ~(b') * (~x) ^ 4) * (~c + ~(d') * (~x) ^ 4)), ~x) => (1 / (2 * ~c)) * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ 4) * (1 - Rt(-(~d) / ~c, 2) * (~x) ^ 2)), ~x) + (1 / (2 * ~c)) * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ 4) * (1 + Rt(-(~d) / ~c, 2) * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 4) ^ (3 / 4) * (~c + ~(d') * (~x) ^ 4)), ~x) => (~b / (~b * ~c - ~a * ~d)) * Antiderivative(1 / (~a + ~b * (~x) ^ 4) ^ (3 / 4), ~x) - (~d / (~b * ~c - ~a * ~d)) * Antiderivative((~a + ~b * (~x) ^ 4) ^ (1 / 4) / (~c + ~d * (~x) ^ 4), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 3) ^ (1 / 3) / (~c + ~(d') * (~x) ^ 3), ~x) => With([q = Rt(~b / ~a, 3)], ((9 * ~a) / (~c * q)) * Subst(Antiderivative(~x / ((4 - ~a * (~x) ^ 3) * (1 + 2 * ~a * (~x) ^ 3)), ~x), ~x, (1 + q * ~x) / (~a + ~b * (~x) ^ 3) ^ (1 / 3))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && EqQ(~b * ~c + ~a * ~d, 0))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 3) ^ (2 / 3) * (~c + ~(d') * (~x) ^ 3)), ~x) => (~b / (~b * ~c - ~a * ~d)) * Antiderivative(1 / (~a + ~b * (~x) ^ 3) ^ (2 / 3), ~x) - (~d / (~b * ~c - ~a * ~d)) * Antiderivative((~a + ~b * (~x) ^ 3) ^ (1 / 3) / (~c + ~d * (~x) ^ 3), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && EqQ(~b * ~c + ~a * ~d, 0))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 2) / (~c + ~(d') * (~x) ^ 2) ^ (3 / 2), ~x) => (sqrt(~a + ~b * (~x) ^ 2) / (~c * Rt(~d / ~c, 2) * sqrt(~c + ~d * (~x) ^ 2) * sqrt((~c * (~a + ~b * (~x) ^ 2)) / (~a * (~c + ~d * (~x) ^ 2))))) * Elliptic.E(atan(Rt(~d / ~c, 2) * ~x), 1 - (~b * ~c) / (~a * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (PosQ(~b / ~a) && PosQ(~d / ~c))
    #= Antiderivative(sqrt((~a)+(~b')*(~x)^2)/((~c)+(~d')*(~x)^2)^(3/2),~x) :=  a*sqrt(c+d*x^2)*sqrt((c*(a+b*x^2))/(a*(c+d*x^2)))/(c^2*Rt(d/c,2)*sqrt( a+b*x^2))*Elliptic.E(atan(Rt(d/c,2)*x),1-b*c/(a*d)) <--  FreeQ([a,b,c,d],x) && PosQ(b/a) && PosQ(d/c) =#
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => (-(~x) * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ ~q) / (~a * ~n * (~p + 1)) + (1 / (~a * ~n * (~p + 1))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q - 1) * Simp(~c * (~n * (~p + 1) + 1) + ~d * (~n * (~p + ~q + 1) + 1) * (~x) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (LtQ(~p, -1) && (LtQ(0, ~q, 1) && IntBinomialQ(~a, ~b, ~c, ~d, ~n, ~p, ~q, ~x))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => ((~a * ~d - ~c * ~b) * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q - 1)) / (~a * ~b * ~n * (~p + 1)) - (1 / (~a * ~b * ~n * (~p + 1))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q - 2) * Simp(~c * (~a * ~d - ~c * ~b * (~n * (~p + 1) + 1)) + ~d * (~a * ~d * (~n * (~q - 1) + 1) - ~b * ~c * (~n * (~p + ~q) + 1)) * (~x) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (LtQ(~p, -1) && (GtQ(~q, 1) && IntBinomialQ(~a, ~b, ~c, ~d, ~n, ~p, ~q, ~x))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => (-(~b) * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q + 1)) / (~a * ~n * (~p + 1) * (~b * ~c - ~a * ~d)) + (1 / (~a * ~n * (~p + 1) * (~b * ~c - ~a * ~d))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ ~q * Simp(~b * ~c + ~n * (~p + 1) * (~b * ~c - ~a * ~d) + ~d * ~b * (~n * (~p + ~q + 2) + 1) * (~x) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (LtQ(~p, -1) && (Not(Not(IntegerQ(~p)) && (IntegerQ(~q) && LtQ(~q, -1))) && IntBinomialQ(~a, ~b, ~c, ~d, ~n, ~p, ~q, ~x))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => Antiderivative(ExpandIntegrand((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (IGtQ(~n, 0) && (IntegersQ(~p, ~q) && GtQ(~p + ~q, 0))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => (~d * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q - 1)) / (~b * (~n * (~p + ~q) + 1)) + (1 / (~b * (~n * (~p + ~q) + 1))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ (~q - 2) * Simp(~c * (~b * ~c * (~n * (~p + ~q) + 1) - ~a * ~d) + ~d * (~b * ~c * (~n * ((~p + 2 * ~q) - 1) + 1) - ~a * ~d * (~n * (~q - 1) + 1)) * (~x) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (GtQ(~q, 1) && (NeQ(~n * (~p + ~q) + 1, 0) && (Not(IGtQ(~p, 1)) && IntBinomialQ(~a, ~b, ~c, ~d, ~n, ~p, ~q, ~x)))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => (~x * (~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q) / (~n * (~p + ~q) + 1) + (~n / (~n * (~p + ~q) + 1)) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p - 1) * (~c + ~d * (~x) ^ ~n) ^ (~q - 1) * Simp(~a * ~c * (~p + ~q) + (~q * (~b * ~c - ~a * ~d) + ~a * ~d * (~p + ~q)) * (~x) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (GtQ(~q, 0) && (GtQ(~p, 0) && IntBinomialQ(~a, ~b, ~c, ~d, ~n, ~p, ~q, ~x))))
    @apply_utils Antiderivative(1 / (sqrt(~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2)), ~x) => (sqrt(~a + ~b * (~x) ^ 2) / (~a * Rt(~d / ~c, 2) * sqrt(~c + ~d * (~x) ^ 2) * sqrt((~c * (~a + ~b * (~x) ^ 2)) / (~a * (~c + ~d * (~x) ^ 2))))) * Elliptic.F(atan(Rt(~d / ~c, 2) * ~x), 1 - (~b * ~c) / (~a * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (PosQ(~d / ~c) && (PosQ(~b / ~a) && Not(SimplerSqrtQ(~b / ~a, ~d / ~c))))
    #= Antiderivative(1/(sqrt((~a)+(~b')*(~x)^2)*sqrt((~c)+(~d')*(~x)^2)),~x) :=  sqrt(c+d*x^2)*sqrt(c*(a+b*x^2)/(a*(c+d*x^2)))/(c*Rt(d/c,2)*sqrt(a+b*x^ 2))*Elliptic.F(atan(Rt(d/c,2)*x),1-b*c/(a*d)) <-- FreeQ([a,b,c,d],x) &&  PosQ(d/c) && PosQ(b/a) && Not(SimplerSqrtQ(b/a,d/c)) =#
    @apply_utils Antiderivative(1 / (sqrt(~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2)), ~x) => (1 / (sqrt(~a) * sqrt(~c) * Rt(-(~d) / ~c, 2))) * Elliptic.F(asin(Rt(-(~d) / ~c, 2) * ~x), (~b * ~c) / (~a * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NegQ(~d / ~c) && (GtQ(~c, 0) && (GtQ(~a, 0) && Not(NegQ(~b / ~a) && SimplerSqrtQ(-(~b) / ~a, -(~d) / ~c)))))
    @apply_utils Antiderivative(1 / (sqrt(~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2)), ~x) => (-1 / (sqrt(~c) * Rt(-(~d) / ~c, 2) * sqrt(~a - (~b * ~c) / ~d))) * Elliptic.F(acos(Rt(-(~d) / ~c, 2) * ~x), (~b * ~c) / (~b * ~c - ~a * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NegQ(~d / ~c) && (GtQ(~c, 0) && GtQ(~a - (~b * ~c) / ~d, 0)))
    @apply_utils Antiderivative(1 / (sqrt(~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2)), ~x) => (sqrt(1 + (~d / ~c) * (~x) ^ 2) / sqrt(~c + ~d * (~x) ^ 2)) * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(1 + (~d / ~c) * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && Not(GtQ(~c, 0))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 2) / sqrt(~c + ~(d') * (~x) ^ 2), ~x) => ~a * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) + ~b * Antiderivative((~x) ^ 2 / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (PosQ(~d / ~c) && PosQ(~b / ~a))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 2) / sqrt(~c + ~(d') * (~x) ^ 2), ~x) => (~b / ~d) * Antiderivative(sqrt(~c + ~d * (~x) ^ 2) / sqrt(~a + ~b * (~x) ^ 2), ~x) - ((~b * ~c - ~a * ~d) / ~d) * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (PosQ(~d / ~c) && NegQ(~b / ~a))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 2) / sqrt(~c + ~(d') * (~x) ^ 2), ~x) => (sqrt(~a) / (sqrt(~c) * Rt(-(~d) / ~c, 2))) * Elliptic.E(asin(Rt(-(~d) / ~c, 2) * ~x), (~b * ~c) / (~a * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NegQ(~d / ~c) && (GtQ(~c, 0) && GtQ(~a, 0)))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 2) / sqrt(~c + ~(d') * (~x) ^ 2), ~x) => (-(sqrt(~a - (~b * ~c) / ~d)) / (sqrt(~c) * Rt(-(~d) / ~c, 2))) * Elliptic.E(acos(Rt(-(~d) / ~c, 2) * ~x), (~b * ~c) / (~b * ~c - ~a * ~d)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NegQ(~d / ~c) && (GtQ(~c, 0) && GtQ(~a - (~b * ~c) / ~d, 0)))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 2) / sqrt(~c + ~(d') * (~x) ^ 2), ~x) => (sqrt(~a + ~b * (~x) ^ 2) / sqrt(1 + (~b / ~a) * (~x) ^ 2)) * Antiderivative(sqrt(1 + (~b / ~a) * (~x) ^ 2) / sqrt(~c + ~d * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NegQ(~d / ~c) && (GtQ(~c, 0) && Not(GtQ(~a, 0))))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 2) / sqrt(~c + ~(d') * (~x) ^ 2), ~x) => (sqrt(1 + (~d / ~c) * (~x) ^ 2) / sqrt(~c + ~d * (~x) ^ 2)) * Antiderivative(sqrt(~a + ~b * (~x) ^ 2) / sqrt(1 + (~d / ~c) * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NegQ(~d / ~c) && Not(GtQ(~c, 0)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => Antiderivative(ExpandIntegrand((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => (~a) ^ ~p * (~c) ^ ~q * ~x * AppellF1(1 / ~n, -(~p), -(~q), 1 + 1 / ~n, (-(~b) * (~x) ^ ~n) / ~a, (-(~d) * (~x) ^ ~n) / ~c) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ(~n, -1) && ((IntegerQ(~p) || GtQ(~a, 0)) && (IntegerQ(~q) || GtQ(~c, 0)))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q, ~x) => (((~a) ^ IntPart(~p) * (~a + ~b * (~x) ^ ~n) ^ FracPart(~p)) / (1 + (~b * (~x) ^ ~n) / ~a) ^ FracPart(~p)) * Antiderivative((1 + (~b * (~x) ^ ~n) / ~a) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p, ~q], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ(~n, -1) && Not(IntegerQ(~p) || GtQ(~a, 0))))
    @apply_utils Antiderivative((~(a') + ~(b') * (~u) ^ ~n) ^ ~(p') * (~(c') + ~(d') * (~u) ^ ~n) ^ ~(q'), ~x) => (1 / Coefficient(~u, ~x, 1)) * Subst(Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q, ~x), ~x, ~u) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p, ~q], ~x) && (LinearQ(~u, ~x) && NeQ(~u, ~x))
    @apply_utils Antiderivative((~u) ^ ~(p') * (~v) ^ ~(q'), ~x) => Antiderivative(NormalizePseudoBinomial(~u, ~x) ^ ~p * NormalizePseudoBinomial(~v, ~x) ^ ~q, ~x) <-- FreeQ([~p, ~q], ~x) && PseudoBinomialPairQ(~u, ~v, ~x)
    @apply_utils Antiderivative((~x) ^ ~(m') * (~u) ^ ~(p') * (~v) ^ ~(q'), ~x) => Antiderivative(NormalizePseudoBinomial((~x) ^ (~m / ~p) * ~u, ~x) ^ ~p * NormalizePseudoBinomial(~v, ~x) ^ ~q, ~x) <-- FreeQ([~p, ~q], ~x) && (IntegersQ(~p, ~m / ~p) && PseudoBinomialPairQ((~x) ^ (~m / ~p) * ~u, ~v, ~x))
    #= IntBinomialQ(a,b,c,d,n,p,q,x)*returns*True*iff  (a+b*x^n)^p*(c+d*x^n)^q*is*integrable*wrt*x*in*terms*of*non-Appell  functions. =#IntBinomialQ((~a), (~b), (~c), (~d), (~n), (~p), (~q), ~x) := IntegersQ(p, q) || IGtQ(p, 0) || IGtQ(q, 0) || (EqQ(n, 2) || EqQ(n, 4)) && (IntegersQ(p, 4*q) || IntegersQ(4*p, q)) || EqQ(n, 2) && (IntegersQ(2*p, 2*q) || IntegersQ(3*p, q) && EqQ(b*c + 3*a*d, 0) || IntegersQ(p, 3*q) && EqQ(3*b*c + a*d, 0)) || EqQ(n, 3) && (IntegersQ(p + 1/3, q) || IntegersQ(q + 1/3, p)) || EqQ(n, 3) && (IntegersQ(p + 2/3, q) || IntegersQ(q + 2/3, p)) && EqQ(b*c + a*d, 0)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~(n')) ^ ~(p') * (~c + ~(d') * (~x) ^ ~(mn')) ^ ~(q'), ~x) => Antiderivative(((~a + ~b * (~x) ^ ~n) ^ ~p * (~d + ~c * (~x) ^ ~n) ^ ~q) / (~x) ^ (~n * ~q), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (EqQ(~mn, -(~n)) && (IntegerQ(~q) && (PosQ(~n) || Not(IntegerQ(~p)))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~(n')) ^ ~p * (~c + ~(d') * (~x) ^ ~(mn')) ^ ~q, ~x) => (((~x) ^ (~n * FracPart(~q)) * (~c + ~d * (~x) ^ -(~n)) ^ FracPart(~q)) / (~d + ~c * (~x) ^ ~n) ^ FracPart(~q)) * Antiderivative(((~a + ~b * (~x) ^ ~n) ^ ~p * (~d + ~c * (~x) ^ ~n) ^ ~q) / (~x) ^ (~n * ~q), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p, ~q], ~x) && (EqQ(~mn, -(~n)) && (Not(IntegerQ(~q)) && Not(IntegerQ(~p))))
end
