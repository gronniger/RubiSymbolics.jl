int_rules_7_5_2 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 7.5.2*Miscellaneous*inverse*hyperbolic*secant =#
    @apply_utils Antiderivative(asech(~c + ~(d') * ~x), ~x) => ((~c + ~d * ~x) * asech(~c + ~d * ~x)) / ~d + Antiderivative(sqrt(((1 - ~c) - ~d * ~x) / (1 + ~c + ~d * ~x)) / ((1 - ~c) - ~d * ~x), ~x) <-- FreeQ([~c, ~d], ~x)
    @apply_utils Antiderivative(acsch(~c + ~(d') * ~x), ~x) => ((~c + ~d * ~x) * acsch(~c + ~d * ~x)) / ~d + Antiderivative(1 / ((~c + ~d * ~x) * sqrt(1 + 1 / (~c + ~d * ~x) ^ 2)), ~x) <-- FreeQ([~c, ~d], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * asech(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative((~a + ~b * asech(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * acsch(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative((~a + ~b * acsch(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * asech(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~a + ~b * asech(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * acsch(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~a + ~b * acsch(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * asech(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~f * ~x) / ~d) ^ ~m * (~a + ~b * asech(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && (EqQ(~d * ~e - ~c * ~f, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acsch(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~f * ~x) / ~d) ^ ~m * (~a + ~b * acsch(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && (EqQ(~d * ~e - ~c * ~f, 0) && IGtQ(~p, 0))
    #= Antiderivative((~x)^(~m')*asech((~a)+(~b')*(~x)),~x) :=  -((-a)^(m+1)-b^(m+1)*x^(m+1))*asech(a+b*x)/(b^(m+1)*(m+1)) + 1/(b^(m+1)*(m+1))*Subst(Antiderivative(((-a*x)^(m+1)-(1-a*x)^(m+1))/(x^(m+1)* sqrt(-1+x)*sqrt(1+x)),x),x,1/(a+b*x)) <-- FreeQ([a,b],x) &&  IntegerQ(m) && NeQ(m,-1) =#
    #= Antiderivative((~x)^(~m')*acsch((~a)+(~b')*(~x)),~x) :=  -((-a)^(m+1)-b^(m+1)*x^(m+1))*acsch(a+b*x)/(b^(m+1)*(m+1)) + 1/(b^(m+1)*(m+1))*Subst(Antiderivative(((-a*x)^(m+1)-(1-a*x)^(m+1))/(x^(m+1)* sqrt(1+x^2)),x),x,1/(a+b*x)) <-- FreeQ([a,b],x) && IntegerQ(m) &&  NeQ(m,-1) =#
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * asech(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (-1 / (~d) ^ (~m + 1)) * Subst(Antiderivative((~a + ~b * ~x) ^ ~p * sech(~x) * tanh(~x) * ((~d * ~e - ~c * ~f) + ~f * sech(~x)) ^ ~m, ~x), ~x, asech(~c + ~d * ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (IGtQ(~p, 0) && IntegerQ(~m))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acsch(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (-1 / (~d) ^ (~m + 1)) * Subst(Antiderivative((~a + ~b * ~x) ^ ~p * csch(~x) * coth(~x) * ((~d * ~e - ~c * ~f) + ~f * csch(~x)) ^ ~m, ~x), ~x, acsch(~c + ~d * ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (IGtQ(~p, 0) && IntegerQ(~m))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * asech(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (~a + ~b * asech(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acsch(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (~a + ~b * acsch(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * asech(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~e + ~f * ~x) ^ ~m * (~a + ~b * asech(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acsch(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~e + ~f * ~x) ^ ~m * (~a + ~b * acsch(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative(~(u') * asech(~(c') / (~(a') + ~(b') * (~x) ^ ~(n'))) ^ ~(m'), ~x) => Antiderivative(~u * acosh(~a / ~c + (~b * (~x) ^ ~n) / ~c) ^ ~m, ~x) <-- FreeQ([~a, ~b, ~c, ~n, ~m], ~x)
    @apply_utils Antiderivative(~(u') * acsch(~(c') / (~(a') + ~(b') * (~x) ^ ~(n'))) ^ ~(m'), ~x) => Antiderivative(~u * asinh(~a / ~c + (~b * (~x) ^ ~n) / ~c) ^ ~m, ~x) <-- FreeQ([~a, ~b, ~c, ~n, ~m], ~x)
    @apply_utils Antiderivative(ℯ ^ asech(~(a') * ~x), ~x) => ~x * ℯ ^ asech(~a * ~x) + log(~x) / ~a + (1 / ~a) * Antiderivative((1 / (~x * (1 - ~a * ~x))) * sqrt((1 - ~a * ~x) / (1 + ~a * ~x)), ~x) <-- FreeQ(~a, ~x)
    @apply_utils Antiderivative(ℯ ^ asech(~(a') * (~x) ^ ~p), ~x) => ~x * ℯ ^ asech(~a * (~x) ^ ~p) + (~p / ~a) * Antiderivative(1 / (~x) ^ ~p, ~x) + ((~p * sqrt(1 + ~a * (~x) ^ ~p)) / ~a) * sqrt(1 / (1 + ~a * (~x) ^ ~p)) * Antiderivative(1 / ((~x) ^ ~p * sqrt(1 + ~a * (~x) ^ ~p) * sqrt(1 - ~a * (~x) ^ ~p)), ~x) <-- FreeQ([~a, ~p], ~x)
    @apply_utils Antiderivative(ℯ ^ acsch(~(a') * (~x) ^ ~(p')), ~x) => (1 / ~a) * Antiderivative(1 / (~x) ^ ~p, ~x) + Antiderivative(sqrt(1 + 1 / ((~a) ^ 2 * (~x) ^ (2 * ~p))), ~x) <-- FreeQ([~a, ~p], ~x)
    @apply_utils Antiderivative(ℯ ^ (~(n') * asech(~u)), ~x) => Antiderivative((1 / ~u + sqrt((1 - ~u) / (1 + ~u)) + (1 / ~u) * sqrt((1 - ~u) / (1 + ~u))) ^ ~n, ~x) <-- IntegerQ(~n)
    @apply_utils Antiderivative(ℯ ^ (~(n') * acsch(~u)), ~x) => Antiderivative((1 / ~u + sqrt(1 + 1 / (~u) ^ 2)) ^ ~n, ~x) <-- IntegerQ(~n)
    @apply_utils Antiderivative(ℯ ^ asech(~(a') * (~x) ^ ~(p')) / ~x, ~x) => -1 / (~a * ~p * (~x) ^ ~p) + (sqrt(1 + ~a * (~x) ^ ~p) / ~a) * sqrt(1 / (1 + ~a * (~x) ^ ~p)) * Antiderivative((sqrt(1 + ~a * (~x) ^ ~p) * sqrt(1 - ~a * (~x) ^ ~p)) / (~x) ^ (~p + 1), ~x) <-- FreeQ([~a, ~p], ~x)
    @apply_utils Antiderivative((~x) ^ ~(m') * ℯ ^ asech(~(a') * (~x) ^ ~(p')), ~x) => ((~x) ^ (~m + 1) * ℯ ^ asech(~a * (~x) ^ ~p)) / (~m + 1) + (~p / (~a * (~m + 1))) * Antiderivative((~x) ^ (~m - ~p), ~x) + ((~p * sqrt(1 + ~a * (~x) ^ ~p)) / (~a * (~m + 1))) * sqrt(1 / (1 + ~a * (~x) ^ ~p)) * Antiderivative((~x) ^ (~m - ~p) / (sqrt(1 + ~a * (~x) ^ ~p) * sqrt(1 - ~a * (~x) ^ ~p)), ~x) <-- FreeQ([~a, ~m, ~p], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~x) ^ ~(m') * ℯ ^ acsch(~(a') * (~x) ^ ~(p')), ~x) => (1 / ~a) * Antiderivative((~x) ^ (~m - ~p), ~x) + Antiderivative((~x) ^ ~m * sqrt(1 + 1 / ((~a) ^ 2 * (~x) ^ (2 * ~p))), ~x) <-- FreeQ([~a, ~m, ~p], ~x)
    @apply_utils Antiderivative((~x) ^ ~(m') * ℯ ^ (~(n') * asech(~u)), ~x) => Antiderivative((~x) ^ ~m * (1 / ~u + sqrt((1 - ~u) / (1 + ~u)) + (1 / ~u) * sqrt((1 - ~u) / (1 + ~u))) ^ ~n, ~x) <-- FreeQ(~m, ~x) && IntegerQ(~n)
    @apply_utils Antiderivative((~x) ^ ~(m') * ℯ ^ (~(n') * acsch(~u)), ~x) => Antiderivative((~x) ^ ~m * (1 / ~u + sqrt(1 + 1 / (~u) ^ 2)) ^ ~n, ~x) <-- FreeQ(~m, ~x) && IntegerQ(~n)
    @apply_utils Antiderivative(ℯ ^ asech(~(c') * ~x) / (~a + ~(b') * (~x) ^ 2), ~x) => (1 / (~a * ~c)) * Antiderivative(sqrt(1 / (1 + ~c * ~x)) / (~x * sqrt(1 - ~c * ~x)), ~x) + (1 / ~c) * Antiderivative(1 / (~x * (~a + ~b * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && EqQ(~b + ~a * (~c) ^ 2, 0)
    @apply_utils Antiderivative(ℯ ^ acsch(~(c') * ~x) / (~a + ~(b') * (~x) ^ 2), ~x) => (1 / (~a * (~c) ^ 2)) * Antiderivative(1 / ((~x) ^ 2 * sqrt(1 + 1 / ((~c) ^ 2 * (~x) ^ 2))), ~x) + (1 / ~c) * Antiderivative(1 / (~x * (~a + ~b * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && EqQ(~b - ~a * (~c) ^ 2, 0)
    @apply_utils Antiderivative(((~(d') * ~x) ^ ~(m') * ℯ ^ asech(~(c') * ~x)) / (~a + ~(b') * (~x) ^ 2), ~x) => (~d / (~a * ~c)) * Antiderivative(((~d * ~x) ^ (~m - 1) * sqrt(1 / (1 + ~c * ~x))) / sqrt(1 - ~c * ~x), ~x) + (~d / ~c) * Antiderivative((~d * ~x) ^ (~m - 1) / (~a + ~b * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && EqQ(~b + ~a * (~c) ^ 2, 0)
    @apply_utils Antiderivative(((~(d') * ~x) ^ ~(m') * ℯ ^ acsch(~(c') * ~x)) / (~a + ~(b') * (~x) ^ 2), ~x) => ((~d) ^ 2 / (~a * (~c) ^ 2)) * Antiderivative((~d * ~x) ^ (~m - 2) / sqrt(1 + 1 / ((~c) ^ 2 * (~x) ^ 2)), ~x) + (~d / ~c) * Antiderivative((~d * ~x) ^ (~m - 1) / (~a + ~b * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && EqQ(~b - ~a * (~c) ^ 2, 0)
    @apply_utils Antiderivative(asech(~u), ~x) => ~x * asech(~u) + (sqrt(1 - (~u) ^ 2) / (~u * sqrt(-1 + 1 / ~u) * sqrt(1 + 1 / ~u))) * Antiderivative(SimplifyIntegrand((~x * D(~u, ~x)) / (~u * sqrt(1 - (~u) ^ 2)), ~x), ~x) <-- InverseFunctionFreeQ(~u, ~x) && Not(FunctionOfExponentialQ(~u, ~x))
    @apply_utils Antiderivative(acsch(~u), ~x) => ~x * acsch(~u) - (~u / sqrt(-((~u) ^ 2))) * Antiderivative(SimplifyIntegrand((~x * D(~u, ~x)) / (~u * sqrt(-1 - (~u) ^ 2)), ~x), ~x) <-- InverseFunctionFreeQ(~u, ~x) && Not(FunctionOfExponentialQ(~u, ~x))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * (~(a') + ~(b') * asech(~u)), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * (~a + ~b * asech(~u))) / (~d * (~m + 1)) + ((~b * sqrt(1 - (~u) ^ 2)) / (~d * (~m + 1) * ~u * sqrt(-1 + 1 / ~u) * sqrt(1 + 1 / ~u))) * Antiderivative(SimplifyIntegrand(((~c + ~d * ~x) ^ (~m + 1) * D(~u, ~x)) / (~u * sqrt(1 - (~u) ^ 2)), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && (NeQ(~m, -1) && (InverseFunctionFreeQ(~u, ~x) && (Not(FunctionOfQ((~c + ~d * ~x) ^ (~m + 1), ~u, ~x)) && Not(FunctionOfExponentialQ(~u, ~x)))))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * (~(a') + ~(b') * acsch(~u)), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * (~a + ~b * acsch(~u))) / (~d * (~m + 1)) - ((~b * ~u) / (~d * (~m + 1) * sqrt(-((~u) ^ 2)))) * Antiderivative(SimplifyIntegrand(((~c + ~d * ~x) ^ (~m + 1) * D(~u, ~x)) / (~u * sqrt(-1 - (~u) ^ 2)), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && (NeQ(~m, -1) && (InverseFunctionFreeQ(~u, ~x) && (Not(FunctionOfQ((~c + ~d * ~x) ^ (~m + 1), ~u, ~x)) && Not(FunctionOfExponentialQ(~u, ~x)))))
    @apply_utils Antiderivative(~v * (~(a') + ~(b') * asech(~u)), ~x) => With([w = IntHide(~v, ~x)], Dist(~a + ~b * asech(~u), w, ~x) + ((~b * sqrt(1 - (~u) ^ 2)) / (~u * sqrt(-1 + 1 / ~u) * sqrt(1 + 1 / ~u))) * Antiderivative(SimplifyIntegrand((w * D(~u, ~x)) / (~u * sqrt(1 - (~u) ^ 2)), ~x), ~x) <-- InverseFunctionFreeQ(w, ~x)) <-- FreeQ([~a, ~b], ~x) && (InverseFunctionFreeQ(~u, ~x) && Not(MatchQ(~v, (~(c') + ~(d') * ~x) ^ ~(m') <-- FreeQ([c, d, m], ~x))))
    @apply_utils Antiderivative(~v * (~(a') + ~(b') * acsch(~u)), ~x) => With([w = IntHide(~v, ~x)], Dist(~a + ~b * acsch(~u), w, ~x) - ((~b * ~u) / sqrt(-((~u) ^ 2))) * Antiderivative(SimplifyIntegrand((w * D(~u, ~x)) / (~u * sqrt(-1 - (~u) ^ 2)), ~x), ~x) <-- InverseFunctionFreeQ(w, ~x)) <-- FreeQ([~a, ~b], ~x) && (InverseFunctionFreeQ(~u, ~x) && Not(MatchQ(~v, (~(c') + ~(d') * ~x) ^ ~(m') <-- FreeQ([c, d, m], ~x))))
end
