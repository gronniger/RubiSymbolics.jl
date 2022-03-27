int_rules_5_5_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 5.5.1*u*(a+b*arcsec(c*x))^n =#
    @apply_utils Antiderivative(asec(~(c') * ~x), ~x) => ~x * asec(~c * ~x) - (1 / ~c) * Antiderivative(1 / (~x * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x) <-- FreeQ(~c, ~x)
    @apply_utils Antiderivative(acsc(~(c') * ~x), ~x) => ~x * acsc(~c * ~x) + (1 / ~c) * Antiderivative(1 / (~x * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x) <-- FreeQ(~c, ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * asec(~(c') * ~x)) ^ ~n, ~x) => (1 / ~c) * Subst(Antiderivative((~a + ~b * ~x) ^ ~n * sec(~x) * tan(~x), ~x), ~x, asec(~c * ~x)) <-- FreeQ([~a, ~b, ~c, ~n], ~x) && IGtQ(~n, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * acsc(~(c') * ~x)) ^ ~n, ~x) => (-1 / ~c) * Subst(Antiderivative((~a + ~b * ~x) ^ ~n * csc(~x) * cot(~x), ~x), ~x, acsc(~c * ~x)) <-- FreeQ([~a, ~b, ~c, ~n], ~x) && IGtQ(~n, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * asec(~(c') * ~x)) / ~x, ~x) => -(Subst(Antiderivative((~a + ~b * acos(~x / ~c)) / ~x, ~x), ~x, 1 / ~x)) <-- FreeQ([~a, ~b, ~c], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * acsc(~(c') * ~x)) / ~x, ~x) => -(Subst(Antiderivative((~a + ~b * asin(~x / ~c)) / ~x, ~x), ~x, 1 / ~x)) <-- FreeQ([~a, ~b, ~c], ~x)
    @apply_utils Antiderivative((~(d') * ~x) ^ ~(m') * (~(a') + ~(b') * asec(~(c') * ~x)), ~x) => ((~d * ~x) ^ (~m + 1) * (~a + ~b * asec(~c * ~x))) / (~d * (~m + 1)) - ((~b * ~d) / (~c * (~m + 1))) * Antiderivative((~d * ~x) ^ (~m - 1) / sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~(d') * ~x) ^ ~(m') * (~(a') + ~(b') * acsc(~(c') * ~x)), ~x) => ((~d * ~x) ^ (~m + 1) * (~a + ~b * acsc(~c * ~x))) / (~d * (~m + 1)) + ((~b * ~d) / (~c * (~m + 1))) * Antiderivative((~d * ~x) ^ (~m - 1) / sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(a') + ~(b') * asec(~(c') * ~x)) ^ ~n, ~x) => (1 / (~c) ^ (~m + 1)) * Subst(Antiderivative((~a + ~b * ~x) ^ ~n * sec(~x) ^ (~m + 1) * tan(~x), ~x), ~x, asec(~c * ~x)) <-- FreeQ([~a, ~b, ~c], ~x) && (IntegerQ(~n) && (IntegerQ(~m) && (GtQ(~n, 0) || LtQ(~m, -1))))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(a') + ~(b') * acsc(~(c') * ~x)) ^ ~n, ~x) => (-1 / (~c) ^ (~m + 1)) * Subst(Antiderivative((~a + ~b * ~x) ^ ~n * csc(~x) ^ (~m + 1) * cot(~x), ~x), ~x, acsc(~c * ~x)) <-- FreeQ([~a, ~b, ~c], ~x) && (IntegerQ(~n) && (IntegerQ(~m) && (GtQ(~n, 0) || LtQ(~m, -1))))
    @apply_utils Antiderivative((~(a') + ~(b') * asec(~(c') * ~x)) / (~(d') + ~(e') * ~x), ~x) => ((((((~a + ~b * asec(~c * ~x)) * log(1 + ((~e - sqrt(-((~c) ^ 2) * (~d) ^ 2 + (~e) ^ 2)) * ℯ ^ (im * asec(~c * ~x))) / (~c * ~d))) / ~e + ((~a + ~b * asec(~c * ~x)) * log(1 + ((~e + sqrt(-((~c) ^ 2) * (~d) ^ 2 + (~e) ^ 2)) * ℯ ^ (im * asec(~c * ~x))) / (~c * ~d))) / ~e) - ((~a + ~b * asec(~c * ~x)) * log(1 + ℯ ^ (2 * im * asec(~c * ~x)))) / ~e) - (~b / (~c * ~e)) * Antiderivative(log(1 + ((~e - sqrt(-((~c) ^ 2) * (~d) ^ 2 + (~e) ^ 2)) * ℯ ^ (im * asec(~c * ~x))) / (~c * ~d)) / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x)) - (~b / (~c * ~e)) * Antiderivative(log(1 + ((~e + sqrt(-((~c) ^ 2) * (~d) ^ 2 + (~e) ^ 2)) * ℯ ^ (im * asec(~c * ~x))) / (~c * ~d)) / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x)) + (~b / (~c * ~e)) * Antiderivative(log(1 + ℯ ^ (2 * im * asec(~c * ~x))) / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * acsc(~(c') * ~x)) / (~(d') + ~(e') * ~x), ~x) => (((((~a + ~b * acsc(~c * ~x)) * log(1 - (im * (~e - sqrt(-((~c) ^ 2) * (~d) ^ 2 + (~e) ^ 2)) * ℯ ^ (im * acsc(~c * ~x))) / (~c * ~d))) / ~e + ((~a + ~b * acsc(~c * ~x)) * log(1 - (im * (~e + sqrt(-((~c) ^ 2) * (~d) ^ 2 + (~e) ^ 2)) * ℯ ^ (im * acsc(~c * ~x))) / (~c * ~d))) / ~e) - ((~a + ~b * acsc(~c * ~x)) * log(1 - ℯ ^ (2 * im * acsc(~c * ~x)))) / ~e) + (~b / (~c * ~e)) * Antiderivative(log(1 - (im * (~e - sqrt(-((~c) ^ 2) * (~d) ^ 2 + (~e) ^ 2)) * ℯ ^ (im * acsc(~c * ~x))) / (~c * ~d)) / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x) + (~b / (~c * ~e)) * Antiderivative(log(1 - (im * (~e + sqrt(-((~c) ^ 2) * (~d) ^ 2 + (~e) ^ 2)) * ℯ ^ (im * acsc(~c * ~x))) / (~c * ~d)) / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x)) - (~b / (~c * ~e)) * Antiderivative(log(1 - ℯ ^ (2 * im * acsc(~c * ~x))) / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x)
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) ^ ~(m') * (~(a') + ~(b') * asec(~(c') * ~x)), ~x) => ((~d + ~e * ~x) ^ (~m + 1) * (~a + ~b * asec(~c * ~x))) / (~e * (~m + 1)) - (~b / (~c * ~e * (~m + 1))) * Antiderivative((~d + ~e * ~x) ^ (~m + 1) / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) ^ ~(m') * (~(a') + ~(b') * acsc(~(c') * ~x)), ~x) => ((~d + ~e * ~x) ^ (~m + 1) * (~a + ~b * acsc(~c * ~x))) / (~e * (~m + 1)) + (~b / (~c * ~e * (~m + 1))) * Antiderivative((~d + ~e * ~x) ^ (~m + 1) / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * asec(~(c') * ~x)), ~x) => With([u = IntHide((~d + ~e * (~x) ^ 2) ^ ~p, ~x)], Dist(~a + ~b * asec(~c * ~x), u, ~x) - ((~b * ~c * ~x) / sqrt((~c) ^ 2 * (~x) ^ 2)) * Antiderivative(SimplifyIntegrand(u / (~x * sqrt((~c) ^ 2 * (~x) ^ 2 - 1)), ~x), ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x) && (IGtQ(~p, 0) || ILtQ(~p + 1 / 2, 0))
    @apply_utils Antiderivative((~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * acsc(~(c') * ~x)), ~x) => With([u = IntHide((~d + ~e * (~x) ^ 2) ^ ~p, ~x)], Dist(~a + ~b * acsc(~c * ~x), u, ~x) + ((~b * ~c * ~x) / sqrt((~c) ^ 2 * (~x) ^ 2)) * Antiderivative(SimplifyIntegrand(u / (~x * sqrt((~c) ^ 2 * (~x) ^ 2 - 1)), ~x), ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x) && (IGtQ(~p, 0) || ILtQ(~p + 1 / 2, 0))
    @apply_utils Antiderivative((~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * asec(~(c') * ~x)) ^ ~(n'), ~x) => -(Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * acos(~x / ~c)) ^ ~n) / (~x) ^ (2 * (~p + 1)), ~x), ~x, 1 / ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && IntegerQ(~p))
    @apply_utils Antiderivative((~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * acsc(~(c') * ~x)) ^ ~(n'), ~x) => -(Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * asin(~x / ~c)) ^ ~n) / (~x) ^ (2 * (~p + 1)), ~x), ~x, 1 / ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && IntegerQ(~p))
    @apply_utils Antiderivative((~(d') + ~(e') * (~x) ^ 2) ^ ~p * (~(a') + ~(b') * asec(~(c') * ~x)) ^ ~(n'), ~x) => (-(sqrt((~x) ^ 2)) / ~x) * Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * acos(~x / ~c)) ^ ~n) / (~x) ^ (2 * (~p + 1)), ~x), ~x, 1 / ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (EqQ((~c) ^ 2 * ~d + ~e, 0) && (IntegerQ(~p + 1 / 2) && (GtQ(~e, 0) && LtQ(~d, 0)))))
    @apply_utils Antiderivative((~(d') + ~(e') * (~x) ^ 2) ^ ~p * (~(a') + ~(b') * acsc(~(c') * ~x)) ^ ~(n'), ~x) => (-(sqrt((~x) ^ 2)) / ~x) * Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * asin(~x / ~c)) ^ ~n) / (~x) ^ (2 * (~p + 1)), ~x), ~x, 1 / ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (EqQ((~c) ^ 2 * ~d + ~e, 0) && (IntegerQ(~p + 1 / 2) && (GtQ(~e, 0) && LtQ(~d, 0)))))
    @apply_utils Antiderivative((~(d') + ~(e') * (~x) ^ 2) ^ ~p * (~(a') + ~(b') * asec(~(c') * ~x)) ^ ~(n'), ~x) => (-(sqrt(~d + ~e * (~x) ^ 2)) / (~x * sqrt(~e + ~d / (~x) ^ 2))) * Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * acos(~x / ~c)) ^ ~n) / (~x) ^ (2 * (~p + 1)), ~x), ~x, 1 / ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (EqQ((~c) ^ 2 * ~d + ~e, 0) && (IntegerQ(~p + 1 / 2) && Not(GtQ(~e, 0) && LtQ(~d, 0)))))
    @apply_utils Antiderivative((~(d') + ~(e') * (~x) ^ 2) ^ ~p * (~(a') + ~(b') * acsc(~(c') * ~x)) ^ ~(n'), ~x) => (-(sqrt(~d + ~e * (~x) ^ 2)) / (~x * sqrt(~e + ~d / (~x) ^ 2))) * Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * asin(~x / ~c)) ^ ~n) / (~x) ^ (2 * (~p + 1)), ~x), ~x, 1 / ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (EqQ((~c) ^ 2 * ~d + ~e, 0) && (IntegerQ(~p + 1 / 2) && Not(GtQ(~e, 0) && LtQ(~d, 0)))))
    @apply_utils Antiderivative(~x * (~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * asec(~(c') * ~x)), ~x) => ((~d + ~e * (~x) ^ 2) ^ (~p + 1) * (~a + ~b * asec(~c * ~x))) / (2 * ~e * (~p + 1)) - ((~b * ~c * ~x) / (2 * ~e * (~p + 1) * sqrt((~c) ^ 2 * (~x) ^ 2))) * Antiderivative((~d + ~e * (~x) ^ 2) ^ (~p + 1) / (~x * sqrt((~c) ^ 2 * (~x) ^ 2 - 1)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~p], ~x) && NeQ(~p, -1)
    @apply_utils Antiderivative(~x * (~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * acsc(~(c') * ~x)), ~x) => ((~d + ~e * (~x) ^ 2) ^ (~p + 1) * (~a + ~b * acsc(~c * ~x))) / (2 * ~e * (~p + 1)) + ((~b * ~c * ~x) / (2 * ~e * (~p + 1) * sqrt((~c) ^ 2 * (~x) ^ 2))) * Antiderivative((~d + ~e * (~x) ^ 2) ^ (~p + 1) / (~x * sqrt((~c) ^ 2 * (~x) ^ 2 - 1)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~p], ~x) && NeQ(~p, -1)
    @apply_utils Antiderivative((~(f') * ~x) ^ ~(m') * (~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * asec(~(c') * ~x)), ~x) => With([u = IntHide((~f * ~x) ^ ~m * (~d + ~e * (~x) ^ 2) ^ ~p, ~x)], Dist(~a + ~b * asec(~c * ~x), u, ~x) - ((~b * ~c * ~x) / sqrt((~c) ^ 2 * (~x) ^ 2)) * Antiderivative(SimplifyIntegrand(u / (~x * sqrt((~c) ^ 2 * (~x) ^ 2 - 1)), ~x), ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p], ~x) && (IGtQ(~p, 0) && Not(ILtQ((~m - 1) / 2, 0) && GtQ(~m + 2 * ~p + 3, 0)) || (IGtQ((~m + 1) / 2, 0) && Not(ILtQ(~p, 0) && GtQ(~m + 2 * ~p + 3, 0)) || ILtQ((~m + 2 * ~p + 1) / 2, 0) && Not(ILtQ((~m - 1) / 2, 0))))
    @apply_utils Antiderivative((~(f') * ~x) ^ ~(m') * (~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * acsc(~(c') * ~x)), ~x) => With([u = IntHide((~f * ~x) ^ ~m * (~d + ~e * (~x) ^ 2) ^ ~p, ~x)], Dist(~a + ~b * acsc(~c * ~x), u, ~x) + ((~b * ~c * ~x) / sqrt((~c) ^ 2 * (~x) ^ 2)) * Antiderivative(SimplifyIntegrand(u / (~x * sqrt((~c) ^ 2 * (~x) ^ 2 - 1)), ~x), ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p], ~x) && (IGtQ(~p, 0) && Not(ILtQ((~m - 1) / 2, 0) && GtQ(~m + 2 * ~p + 3, 0)) || (IGtQ((~m + 1) / 2, 0) && Not(ILtQ(~p, 0) && GtQ(~m + 2 * ~p + 3, 0)) || ILtQ((~m + 2 * ~p + 1) / 2, 0) && Not(ILtQ((~m - 1) / 2, 0))))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * asec(~(c') * ~x)) ^ ~(n'), ~x) => -(Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * acos(~x / ~c)) ^ ~n) / (~x) ^ (~m + 2 * (~p + 1)), ~x), ~x, 1 / ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (IntegerQ(~m) && IntegerQ(~p)))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(d') + ~(e') * (~x) ^ 2) ^ ~(p') * (~(a') + ~(b') * acsc(~(c') * ~x)) ^ ~(n'), ~x) => -(Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * asin(~x / ~c)) ^ ~n) / (~x) ^ (~m + 2 * (~p + 1)), ~x), ~x, 1 / ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (IntegerQ(~m) && IntegerQ(~p)))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(d') + ~(e') * (~x) ^ 2) ^ ~p * (~(a') + ~(b') * asec(~(c') * ~x)) ^ ~(n'), ~x) => (-(sqrt((~x) ^ 2)) / ~x) * Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * acos(~x / ~c)) ^ ~n) / (~x) ^ (~m + 2 * (~p + 1)), ~x), ~x, 1 / ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (EqQ((~c) ^ 2 * ~d + ~e, 0) && (IntegerQ(~m) && (IntegerQ(~p + 1 / 2) && (GtQ(~e, 0) && LtQ(~d, 0))))))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(d') + ~(e') * (~x) ^ 2) ^ ~p * (~(a') + ~(b') * acsc(~(c') * ~x)) ^ ~(n'), ~x) => (-(sqrt((~x) ^ 2)) / ~x) * Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * asin(~x / ~c)) ^ ~n) / (~x) ^ (~m + 2 * (~p + 1)), ~x), ~x, 1 / ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (EqQ((~c) ^ 2 * ~d + ~e, 0) && (IntegerQ(~m) && (IntegerQ(~p + 1 / 2) && (GtQ(~e, 0) && LtQ(~d, 0))))))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(d') + ~(e') * (~x) ^ 2) ^ ~p * (~(a') + ~(b') * asec(~(c') * ~x)) ^ ~(n'), ~x) => (-(sqrt(~d + ~e * (~x) ^ 2)) / (~x * sqrt(~e + ~d / (~x) ^ 2))) * Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * acos(~x / ~c)) ^ ~n) / (~x) ^ (~m + 2 * (~p + 1)), ~x), ~x, 1 / ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (EqQ((~c) ^ 2 * ~d + ~e, 0) && (IntegerQ(~m) && (IntegerQ(~p + 1 / 2) && Not(GtQ(~e, 0) && LtQ(~d, 0))))))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(d') + ~(e') * (~x) ^ 2) ^ ~p * (~(a') + ~(b') * acsc(~(c') * ~x)) ^ ~(n'), ~x) => (-(sqrt(~d + ~e * (~x) ^ 2)) / (~x * sqrt(~e + ~d / (~x) ^ 2))) * Subst(Antiderivative(((~e + ~d * (~x) ^ 2) ^ ~p * (~a + ~b * asin(~x / ~c)) ^ ~n) / (~x) ^ (~m + 2 * (~p + 1)), ~x), ~x, 1 / ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n], ~x) && (IGtQ(~n, 0) && (EqQ((~c) ^ 2 * ~d + ~e, 0) && (IntegerQ(~m) && (IntegerQ(~p + 1 / 2) && Not(GtQ(~e, 0) && LtQ(~d, 0))))))
    @apply_utils Antiderivative(~u * (~(a') + ~(b') * asec(~(c') * ~x)), ~x) => With([v = IntHide(~u, ~x)], Dist(~a + ~b * asec(~c * ~x), v, ~x) - (~b / ~c) * Antiderivative(SimplifyIntegrand(v / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x), ~x) <-- InverseFunctionFreeQ(v, ~x)) <-- FreeQ([~a, ~b, ~c], ~x)
    @apply_utils Antiderivative(~u * (~(a') + ~(b') * acsc(~(c') * ~x)), ~x) => With([v = IntHide(~u, ~x)], Dist(~a + ~b * acsc(~c * ~x), v, ~x) + (~b / ~c) * Antiderivative(SimplifyIntegrand(v / ((~x) ^ 2 * sqrt(1 - 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x), ~x) <-- InverseFunctionFreeQ(v, ~x)) <-- FreeQ([~a, ~b, ~c], ~x)
    @apply_utils Antiderivative(~(u') * (~(a') + ~(b') * asec(~(c') * ~x)) ^ ~(n'), ~x) => Unintegrable(~u * (~a + ~b * asec(~c * ~x)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x)
    @apply_utils Antiderivative(~(u') * (~(a') + ~(b') * acsc(~(c') * ~x)) ^ ~(n'), ~x) => Unintegrable(~u * (~a + ~b * acsc(~c * ~x)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x)
end
