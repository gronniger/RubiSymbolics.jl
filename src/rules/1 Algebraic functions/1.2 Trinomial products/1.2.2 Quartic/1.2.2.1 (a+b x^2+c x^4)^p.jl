int_rules_1_2_2_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 1.2.2.1*(a+b*x^2+c*x^4)^p =#
    #= Antiderivative(((~a)+(~b')*(~x)^2+(~c')*(~x)^4)^(~p),~x) :=  1/c^p*Antiderivative((b/2+c*x^2)^(2*p),x) <-- FreeQ([a,b,c,p],x) &&  EqQ(b^2-4*a*c,0) && IntegerQ(p) =#
    #= Antiderivative(1/((~a)+(~b')*(~x)^2+(~c')*(~x)^4)^(5/4),~x) :=  2*x/(3*a*(a+b*x^2+c*x^4)^(1/4)) +  x*(2*a+b*x^2)/(6*a*(a+b*x^2+c*x^4)^(5/4)) <-- FreeQ([a,b,c],x) &&  EqQ(b^2-4*a*c,0) =#
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4) ^ ~p, ~x) => ((~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) ^ ~p / (~b + 2 * ~c * (~x) ^ 2) ^ (2 * ~p)) * Antiderivative((~b + 2 * ~c * (~x) ^ 2) ^ (2 * ~p), ~x) <-- FreeQ([~a, ~b, ~c, ~p], ~x) && (EqQ((~b) ^ 2 - 4 * ~a * ~c, 0) && IntegerQ(~p - 1 / 2))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4) ^ ~p, ~x) => (((~a) ^ IntPart(~p) * (~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) ^ FracPart(~p)) / (1 + (2 * ~c * (~x) ^ 2) / ~b) ^ (2 * FracPart(~p))) * Antiderivative((1 + (2 * ~c * (~x) ^ 2) / ~b) ^ (2 * ~p), ~x) <-- FreeQ([~a, ~b, ~c, ~p], ~x) && (EqQ((~b) ^ 2 - 4 * ~a * ~c, 0) && Not(IntegerQ(2 * ~p)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4) ^ ~p, ~x) => Antiderivative(ExpandIntegrand((~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (NeQ((~b) ^ 2 - 4 * ~a * ~c, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4) ^ ~p, ~x) => (~x * (~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) ^ ~p) / (4 * ~p + 1) + ((2 * ~p) / (4 * ~p + 1)) * Antiderivative((2 * ~a + ~b * (~x) ^ 2) * (~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) ^ (~p - 1), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (NeQ((~b) ^ 2 - 4 * ~a * ~c, 0) && (GtQ(~p, 0) && IntegerQ(2 * ~p)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4) ^ ~p, ~x) => (-(~x) * (((~b) ^ 2 - 2 * ~a * ~c) + ~b * ~c * (~x) ^ 2) * (~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) ^ (~p + 1)) / (2 * ~a * (~p + 1) * ((~b) ^ 2 - 4 * ~a * ~c)) + (1 / (2 * ~a * (~p + 1) * ((~b) ^ 2 - 4 * ~a * ~c))) * Antiderivative((((~b) ^ 2 - 2 * ~a * ~c) + 2 * (~p + 1) * ((~b) ^ 2 - 4 * ~a * ~c) + ~b * ~c * (4 * ~p + 7) * (~x) ^ 2) * (~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) ^ (~p + 1), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (NeQ((~b) ^ 2 - 4 * ~a * ~c, 0) && (LtQ(~p, -1) && IntegerQ(2 * ~p)))
    @apply_utils Antiderivative(1 / (~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], (~c / q) * Antiderivative(1 / ((~b / 2 - q / 2) + ~c * (~x) ^ 2), ~x) - (~c / q) * Antiderivative(1 / (~b / 2 + q / 2 + ~c * (~x) ^ 2), ~x)) <-- FreeQ([~a, ~b, ~c], ~x) && (NeQ((~b) ^ 2 - 4 * ~a * ~c, 0) && PosQ((~b) ^ 2 - 4 * ~a * ~c))
    @apply_utils Antiderivative(1 / (~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt(~a / ~c, 2)], With([r = Rt(2q - ~b / ~c, 2)], (1 / (2 * ~c * q * r)) * Antiderivative((r - ~x) / ((q - r * ~x) + (~x) ^ 2), ~x) + (1 / (2 * ~c * q * r)) * Antiderivative((r + ~x) / (q + r * ~x + (~x) ^ 2), ~x))) <-- FreeQ([~a, ~b, ~c], ~x) && (NeQ((~b) ^ 2 - 4 * ~a * ~c, 0) && NegQ((~b) ^ 2 - 4 * ~a * ~c))
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], 2 * sqrt(-(~c)) * Antiderivative(1 / (sqrt(~b + q + 2 * ~c * (~x) ^ 2) * sqrt((-(~b) + q) - 2 * ~c * (~x) ^ 2)), ~x)) <-- FreeQ([~a, ~b, ~c], ~x) && (GtQ((~b) ^ 2 - 4 * ~a * ~c, 0) && LtQ(~c, 0))
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt(~c / ~a, 4)], (((1 + q ^ 2 * (~x) ^ 2) * sqrt((~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) / (~a * (1 + q ^ 2 * (~x) ^ 2) ^ 2))) / (2 * q * sqrt(~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4))) * Elliptic.F(2 * atan(q * ~x), 1 / 2 - (~b * q ^ 2) / (4 * ~c))) <-- FreeQ([~a, ~b, ~c], ~x) && (GtQ((~b) ^ 2 - 4 * ~a * ~c, 0) && (GtQ(~c / ~a, 0) && LtQ(~b / ~a, 0)))
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], ((sqrt(-2 * ~a - (~b - q) * (~x) ^ 2) * sqrt((2 * ~a + (~b + q) * (~x) ^ 2) / q)) / (2 * sqrt(-(~a)) * sqrt(~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4))) * Elliptic.F(asin(~x / sqrt((2 * ~a + (~b + q) * (~x) ^ 2) / (2q))), (~b + q) / (2q)) <-- IntegerQ(q)) <-- FreeQ([~a, ~b, ~c], ~x) && (GtQ((~b) ^ 2 - 4 * ~a * ~c, 0) && (LtQ(~a, 0) && GtQ(~c, 0)))
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], ((sqrt((2 * ~a + (~b - q) * (~x) ^ 2) / (2 * ~a + (~b + q) * (~x) ^ 2)) * sqrt((2 * ~a + (~b + q) * (~x) ^ 2) / q)) / (2 * sqrt(~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) * sqrt(~a / (2 * ~a + (~b + q) * (~x) ^ 2)))) * Elliptic.F(asin(~x / sqrt((2 * ~a + (~b + q) * (~x) ^ 2) / (2q))), (~b + q) / (2q))) <-- FreeQ([~a, ~b, ~c], ~x) && (GtQ((~b) ^ 2 - 4 * ~a * ~c, 0) && (LtQ(~a, 0) && GtQ(~c, 0)))
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], (((2 * ~a + (~b + q) * (~x) ^ 2) * sqrt((2 * ~a + (~b - q) * (~x) ^ 2) / (2 * ~a + (~b + q) * (~x) ^ 2))) / (2 * ~a * Rt((~b + q) / (2 * ~a), 2) * sqrt(~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4))) * Elliptic.F(atan(Rt((~b + q) / (2 * ~a), 2) * ~x), (2q) / (~b + q)) <-- PosQ((~b + q) / ~a) && Not(PosQ((~b - q) / ~a) && SimplerSqrtQ((~b - q) / (2 * ~a), (~b + q) / (2 * ~a)))) <-- FreeQ([~a, ~b, ~c], ~x) && GtQ((~b) ^ 2 - 4 * ~a * ~c, 0)
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], (((2 * ~a + (~b - q) * (~x) ^ 2) * sqrt((2 * ~a + (~b + q) * (~x) ^ 2) / (2 * ~a + (~b - q) * (~x) ^ 2))) / (2 * ~a * Rt((~b - q) / (2 * ~a), 2) * sqrt(~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4))) * Elliptic.F(atan(Rt((~b - q) / (2 * ~a), 2) * ~x), (-2q) / (~b - q)) <-- PosQ((~b - q) / ~a)) <-- FreeQ([~a, ~b, ~c], ~x) && GtQ((~b) ^ 2 - 4 * ~a * ~c, 0)
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], ((sqrt(1 + ((~b + q) * (~x) ^ 2) / (2 * ~a)) * sqrt(1 + ((~b - q) * (~x) ^ 2) / (2 * ~a))) / (Rt(-((~b + q)) / (2 * ~a), 2) * sqrt(~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4))) * Elliptic.F(asin(Rt(-((~b + q)) / (2 * ~a), 2) * ~x), (~b - q) / (~b + q)) <-- NegQ((~b + q) / ~a) && Not(NegQ((~b - q) / ~a) && SimplerSqrtQ(-((~b - q)) / (2 * ~a), -((~b + q)) / (2 * ~a)))) <-- FreeQ([~a, ~b, ~c], ~x) && GtQ((~b) ^ 2 - 4 * ~a * ~c, 0)
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], ((sqrt(1 + ((~b - q) * (~x) ^ 2) / (2 * ~a)) * sqrt(1 + ((~b + q) * (~x) ^ 2) / (2 * ~a))) / (Rt(-((~b - q)) / (2 * ~a), 2) * sqrt(~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4))) * Elliptic.F(asin(Rt(-((~b - q)) / (2 * ~a), 2) * ~x), (~b + q) / (~b - q)) <-- NegQ((~b - q) / ~a)) <-- FreeQ([~a, ~b, ~c], ~x) && GtQ((~b) ^ 2 - 4 * ~a * ~c, 0)
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt(~c / ~a, 4)], (((1 + q ^ 2 * (~x) ^ 2) * sqrt((~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) / (~a * (1 + q ^ 2 * (~x) ^ 2) ^ 2))) / (2 * q * sqrt(~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4))) * Elliptic.F(2 * atan(q * ~x), 1 / 2 - (~b * q ^ 2) / (4 * ~c))) <-- FreeQ([~a, ~b, ~c], ~x) && (NeQ((~b) ^ 2 - 4 * ~a * ~c, 0) && PosQ(~c / ~a))
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4), ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], ((sqrt(1 + (2 * ~c * (~x) ^ 2) / (~b - q)) * sqrt(1 + (2 * ~c * (~x) ^ 2) / (~b + q))) / sqrt(~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4)) * Antiderivative(1 / (sqrt(1 + (2 * ~c * (~x) ^ 2) / (~b - q)) * sqrt(1 + (2 * ~c * (~x) ^ 2) / (~b + q))), ~x)) <-- FreeQ([~a, ~b, ~c], ~x) && (NeQ((~b) ^ 2 - 4 * ~a * ~c, 0) && NegQ(~c / ~a))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ 2 + ~(c') * (~x) ^ 4) ^ ~p, ~x) => With([q = Rt((~b) ^ 2 - 4 * ~a * ~c, 2)], (((~a) ^ IntPart(~p) * (~a + ~b * (~x) ^ 2 + ~c * (~x) ^ 4) ^ FracPart(~p)) / ((1 + (2 * ~c * (~x) ^ 2) / (~b + q)) ^ FracPart(~p) * (1 + (2 * ~c * (~x) ^ 2) / (~b - q)) ^ FracPart(~p))) * Antiderivative((1 + (2 * ~c * (~x) ^ 2) / (~b + q)) ^ ~p * (1 + (2 * ~c * (~x) ^ 2) / (~b - q)) ^ ~p, ~x)) <-- FreeQ([~a, ~b, ~c, ~p], ~x) && NeQ((~b) ^ 2 - 4 * ~a * ~c, 0)
    @apply_utils Antiderivative((~P4) ^ ~p, ~x) => With([a = Coeff(~P4, ~x, 0), b = Coeff(~P4, ~x, 1), c = Coeff(~P4, ~x, 2), d = Coeff(~P4, ~x, 3), e = Coeff(~P4, ~x, 4)], Subst(Antiderivative(SimplifyIntegrand((((a + d ^ 4 / (256 * e ^ 3)) - (b * d) / (8 * e)) + (c - (3 * d ^ 2) / (8 * e)) * (~x) ^ 2 + e * (~x) ^ 4) ^ ~p, ~x), ~x), ~x, d / (4 * e) + ~x) <-- EqQ((d ^ 3 - 4 * c * d * e) + 8 * b * e ^ 2, 0) && NeQ(d, 0)) <-- FreeQ(~p, ~x) && (PolyQ(~P4, ~x, 4) && (NeQ(~p, 2) && NeQ(~p, 3)))
end
