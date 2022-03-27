int_rules_7_1_6 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 7.1.6*Miscellaneous*inverse*hyperbolic*sine =#
    @apply_utils Antiderivative((~(a') + ~(b') * asinh(~c + ~(d') * ~x)) ^ ~(n'), ~x) => (1 / ~d) * Subst(Antiderivative((~a + ~b * asinh(~x)) ^ ~n, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x)
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * asinh(~c + ~(d') * ~x)) ^ ~(n'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (~a + ~b * asinh(~x)) ^ ~n, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n], ~x)
    @apply_utils Antiderivative((~(A') + ~(B') * ~x + ~(C') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * asinh(~c + ~(d') * ~x)) ^ ~(n'), ~x) => (1 / ~d) * Subst(Antiderivative((~C / (~d) ^ 2 + (~C / (~d) ^ 2) * (~x) ^ 2) ^ ~p * (~a + ~b * asinh(~x)) ^ ~n, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~A, ~B, ~C, ~n, ~p], ~x) && (EqQ(~B * (1 + (~c) ^ 2) - 2 * ~A * ~c * ~d, 0) && EqQ(2 * ~c * ~C - ~B * ~d, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(A') + ~(B') * ~x + ~(C') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * asinh(~c + ~(d') * ~x)) ^ ~(n'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (~C / (~d) ^ 2 + (~C / (~d) ^ 2) * (~x) ^ 2) ^ ~p * (~a + ~b * asinh(~x)) ^ ~n, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n, ~p], ~x) && (EqQ(~B * (1 + (~c) ^ 2) - 2 * ~A * ~c * ~d, 0) && EqQ(2 * ~c * ~C - ~B * ~d, 0))
    @apply_utils Antiderivative(sqrt(~(a') + ~(b') * asinh(~c + ~(d') * (~x) ^ 2)), ~x) => (~x * sqrt(~a + ~b * asinh(~c + ~d * (~x) ^ 2)) - (sqrt(pi) * ~x * (cosh(~a / (2 * ~b)) - ~c * sinh(~a / (2 * ~b))) * FresnelC(sqrt(-(~c) / (pi * ~b)) * sqrt(~a + ~b * asinh(~c + ~d * (~x) ^ 2)))) / (sqrt(-(~c / ~b)) * (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh(asinh(~c + ~d * (~x) ^ 2) / 2)))) + (sqrt(pi) * ~x * (cosh(~a / (2 * ~b)) + ~c * sinh(~a / (2 * ~b))) * FresnelS(sqrt(-(~c) / (pi * ~b)) * sqrt(~a + ~b * asinh(~c + ~d * (~x) ^ 2)))) / (sqrt(-(~c / ~b)) * (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh(asinh(~c + ~d * (~x) ^ 2) / 2))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && EqQ((~c) ^ 2, -1)
    @apply_utils Antiderivative((~(a') + ~(b') * asinh(~c + ~(d') * (~x) ^ 2)) ^ ~n, ~x) => (~x * (~a + ~b * asinh(~c + ~d * (~x) ^ 2)) ^ ~n - (2 * ~b * ~n * sqrt(2 * ~c * ~d * (~x) ^ 2 + (~d) ^ 2 * (~x) ^ 4) * (~a + ~b * asinh(~c + ~d * (~x) ^ 2)) ^ (~n - 1)) / (~d * ~x)) + 4 * (~b) ^ 2 * ~n * (~n - 1) * Antiderivative((~a + ~b * asinh(~c + ~d * (~x) ^ 2)) ^ (~n - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ((~c) ^ 2, -1) && GtQ(~n, 1))
    @apply_utils Antiderivative(1 / (~(a') + ~(b') * asinh(~c + ~(d') * (~x) ^ 2)), ~x) => (~x * (~c * cosh(~a / (2 * ~b)) - sinh(~a / (2 * ~b))) * CoshIntegral((~a + ~b * asinh(~c + ~d * (~x) ^ 2)) / (2 * ~b))) / (2 * ~b * (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh((1 / 2) * asinh(~c + ~d * (~x) ^ 2)))) + (~x * (cosh(~a / (2 * ~b)) - ~c * sinh(~a / (2 * ~b))) * SinhIntegral((~a + ~b * asinh(~c + ~d * (~x) ^ 2)) / (2 * ~b))) / (2 * ~b * (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh((1 / 2) * asinh(~c + ~d * (~x) ^ 2)))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && EqQ((~c) ^ 2, -1)
    @apply_utils Antiderivative(1 / sqrt(~(a') + ~(b') * asinh(~c + ~(d') * (~x) ^ 2)), ~x) => ((~c + 1) * sqrt(pi / 2) * ~x * (cosh(~a / (2 * ~b)) - sinh(~a / (2 * ~b))) * erfi(sqrt(~a + ~b * asinh(~c + ~d * (~x) ^ 2)) / sqrt(2 * ~b))) / (2 * sqrt(~b) * (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh(asinh(~c + ~d * (~x) ^ 2) / 2))) + ((~c - 1) * sqrt(pi / 2) * ~x * (cosh(~a / (2 * ~b)) + sinh(~a / (2 * ~b))) * erf(sqrt(~a + ~b * asinh(~c + ~d * (~x) ^ 2)) / sqrt(2 * ~b))) / (2 * sqrt(~b) * (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh(asinh(~c + ~d * (~x) ^ 2) / 2))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && EqQ((~c) ^ 2, -1)
    @apply_utils Antiderivative(1 / (~(a') + ~(b') * asinh(~c + ~(d') * (~x) ^ 2)) ^ (3 / 2), ~x) => (-(sqrt(2 * ~c * ~d * (~x) ^ 2 + (~d) ^ 2 * (~x) ^ 4)) / (~b * ~d * ~x * sqrt(~a + ~b * asinh(~c + ~d * (~x) ^ 2))) - ((-(~c) / ~b) ^ (3 / 2) * sqrt(pi) * ~x * (cosh(~a / (2 * ~b)) - ~c * sinh(~a / (2 * ~b))) * FresnelC(sqrt(-(~c) / (pi * ~b)) * sqrt(~a + ~b * asinh(~c + ~d * (~x) ^ 2)))) / (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh(asinh(~c + ~d * (~x) ^ 2) / 2))) + ((-(~c) / ~b) ^ (3 / 2) * sqrt(pi) * ~x * (cosh(~a / (2 * ~b)) + ~c * sinh(~a / (2 * ~b))) * FresnelS(sqrt(-(~c) / (pi * ~b)) * sqrt(~a + ~b * asinh(~c + ~d * (~x) ^ 2)))) / (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh(asinh(~c + ~d * (~x) ^ 2) / 2)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && EqQ((~c) ^ 2, -1)
    @apply_utils Antiderivative(1 / (~(a') + ~(b') * asinh(~c + ~(d') * (~x) ^ 2)) ^ 2, ~x) => -(sqrt(2 * ~c * ~d * (~x) ^ 2 + (~d) ^ 2 * (~x) ^ 4)) / (2 * ~b * ~d * ~x * (~a + ~b * asinh(~c + ~d * (~x) ^ 2))) + (~x * (cosh(~a / (2 * ~b)) - ~c * sinh(~a / (2 * ~b))) * CoshIntegral((~a + ~b * asinh(~c + ~d * (~x) ^ 2)) / (2 * ~b))) / (4 * (~b) ^ 2 * (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh(asinh(~c + ~d * (~x) ^ 2) / 2))) + (~x * (~c * cosh(~a / (2 * ~b)) - sinh(~a / (2 * ~b))) * SinhIntegral((~a + ~b * asinh(~c + ~d * (~x) ^ 2)) / (2 * ~b))) / (4 * (~b) ^ 2 * (cosh(asinh(~c + ~d * (~x) ^ 2) / 2) + ~c * sinh(asinh(~c + ~d * (~x) ^ 2) / 2))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && EqQ((~c) ^ 2, -1)
    @apply_utils Antiderivative((~(a') + ~(b') * asinh(~c + ~(d') * (~x) ^ 2)) ^ ~n, ~x) => (-(~x) * (~a + ~b * asinh(~c + ~d * (~x) ^ 2)) ^ (~n + 2)) / (4 * (~b) ^ 2 * (~n + 1) * (~n + 2)) + (sqrt(2 * ~c * ~d * (~x) ^ 2 + (~d) ^ 2 * (~x) ^ 4) * (~a + ~b * asinh(~c + ~d * (~x) ^ 2)) ^ (~n + 1)) / (2 * ~b * ~d * (~n + 1) * ~x) + (1 / (4 * (~b) ^ 2 * (~n + 1) * (~n + 2))) * Antiderivative((~a + ~b * asinh(~c + ~d * (~x) ^ 2)) ^ (~n + 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ((~c) ^ 2, -1) && (LtQ(~n, -1) && NeQ(~n, -2)))
    @apply_utils Antiderivative(asinh(~(a') * (~x) ^ ~p) ^ ~(n') / ~x, ~x) => (1 / ~p) * Subst(Antiderivative((~x) ^ ~n * coth(~x), ~x), ~x, asinh(~a * (~x) ^ ~p)) <-- FreeQ([~a, ~p], ~x) && IGtQ(~n, 0)
    @apply_utils Antiderivative(~(u') * asinh(~(c') / (~(a') + ~(b') * (~x) ^ ~(n'))) ^ ~(m'), ~x) => Antiderivative(~u * acsch(~a / ~c + (~b * (~x) ^ ~n) / ~c) ^ ~m, ~x) <-- FreeQ([~a, ~b, ~c, ~n, ~m], ~x)
    @apply_utils Antiderivative(asinh(sqrt(-1 + ~(b') * (~x) ^ 2)) ^ ~(n') / sqrt(-1 + ~(b') * (~x) ^ 2), ~x) => (sqrt(~b * (~x) ^ 2) / (~b * ~x)) * Subst(Antiderivative(asinh(~x) ^ ~n / sqrt(1 + (~x) ^ 2), ~x), ~x, sqrt(-1 + ~b * (~x) ^ 2)) <-- FreeQ([~b, ~n], ~x)
    @apply_utils Antiderivative((~f) ^ (~(c') * asinh(~(a') + ~(b') * ~x) ^ ~(n')), ~x) => (1 / ~b) * Subst(Antiderivative((~f) ^ (~c * (~x) ^ ~n) * cosh(~x), ~x), ~x, asinh(~a + ~b * ~x)) <-- FreeQ([~a, ~b, ~c, ~f], ~x) && IGtQ(~n, 0)
    @apply_utils Antiderivative((~x) ^ ~(m') * (~f) ^ (~(c') * asinh(~(a') + ~(b') * ~x) ^ ~(n')), ~x) => (1 / ~b) * Subst(Antiderivative((-(~a) / ~b + sinh(~x) / ~b) ^ ~m * (~f) ^ (~c * (~x) ^ ~n) * cosh(~x), ~x), ~x, asinh(~a + ~b * ~x)) <-- FreeQ([~a, ~b, ~c, ~f], ~x) && (IGtQ(~m, 0) && IGtQ(~n, 0))
    @apply_utils Antiderivative(asinh(~u), ~x) => ~x * asinh(~u) - Antiderivative(SimplifyIntegrand((~x * D(~u, ~x)) / sqrt(1 + (~u) ^ 2), ~x), ~x) <-- InverseFunctionFreeQ(~u, ~x) && Not(FunctionOfExponentialQ(~u, ~x))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * (~(a') + ~(b') * asinh(~u)), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * (~a + ~b * asinh(~u))) / (~d * (~m + 1)) - (~b / (~d * (~m + 1))) * Antiderivative(SimplifyIntegrand(((~c + ~d * ~x) ^ (~m + 1) * D(~u, ~x)) / sqrt(1 + (~u) ^ 2), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && (NeQ(~m, -1) && (InverseFunctionFreeQ(~u, ~x) && (Not(FunctionOfQ((~c + ~d * ~x) ^ (~m + 1), ~u, ~x)) && Not(FunctionOfExponentialQ(~u, ~x)))))
    @apply_utils Antiderivative(~v * (~(a') + ~(b') * asinh(~u)), ~x) => With([w = IntHide(~v, ~x)], Dist(~a + ~b * asinh(~u), w, ~x) - ~b * Antiderivative(SimplifyIntegrand((w * D(~u, ~x)) / sqrt(1 + (~u) ^ 2), ~x), ~x) <-- InverseFunctionFreeQ(w, ~x)) <-- FreeQ([~a, ~b], ~x) && (InverseFunctionFreeQ(~u, ~x) && Not(MatchQ(~v, (~(c') + ~(d') * ~x) ^ ~(m') <-- FreeQ([c, d, m], ~x))))
    @apply_utils Antiderivative(ℯ ^ (~(n') * asinh(~u)), ~x) => Antiderivative((~u + sqrt(1 + (~u) ^ 2)) ^ ~n, ~x) <-- IntegerQ(~n) && PolyQ(~u, ~x)
    @apply_utils Antiderivative((~x) ^ ~(m') * ℯ ^ (~(n') * asinh(~u)), ~x) => Antiderivative((~x) ^ ~m * (~u + sqrt(1 + (~u) ^ 2)) ^ ~n, ~x) <-- RationalQ(~m) && (IntegerQ(~n) && PolyQ(~u, ~x))
end
