int_rules_5_5_2 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 5.5.2*Miscellaneous*inverse*secant =#
    @apply_utils Antiderivative(asec(~c + ~(d') * ~x), ~x) => ((~c + ~d * ~x) * asec(~c + ~d * ~x)) / ~d - Antiderivative(1 / ((~c + ~d * ~x) * sqrt(1 - 1 / (~c + ~d * ~x) ^ 2)), ~x) <-- FreeQ([~c, ~d], ~x)
    @apply_utils Antiderivative(acsc(~c + ~(d') * ~x), ~x) => ((~c + ~d * ~x) * acsc(~c + ~d * ~x)) / ~d + Antiderivative(1 / ((~c + ~d * ~x) * sqrt(1 - 1 / (~c + ~d * ~x) ^ 2)), ~x) <-- FreeQ([~c, ~d], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * asec(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative((~a + ~b * asec(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * acsc(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative((~a + ~b * acsc(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * asec(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~a + ~b * asec(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * acsc(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~a + ~b * acsc(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * asec(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~f * ~x) / ~d) ^ ~m * (~a + ~b * asec(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && (EqQ(~d * ~e - ~c * ~f, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acsc(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~f * ~x) / ~d) ^ ~m * (~a + ~b * acsc(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && (EqQ(~d * ~e - ~c * ~f, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * asec(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / (~d) ^ (~m + 1)) * Subst(Antiderivative((~a + ~b * ~x) ^ ~p * sec(~x) * tan(~x) * ((~d * ~e - ~c * ~f) + ~f * sec(~x)) ^ ~m, ~x), ~x, asec(~c + ~d * ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (IGtQ(~p, 0) && IntegerQ(~m))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acsc(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (-1 / (~d) ^ (~m + 1)) * Subst(Antiderivative((~a + ~b * ~x) ^ ~p * csc(~x) * cot(~x) * ((~d * ~e - ~c * ~f) + ~f * csc(~x)) ^ ~m, ~x), ~x, acsc(~c + ~d * ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (IGtQ(~p, 0) && IntegerQ(~m))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * asec(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (~a + ~b * asec(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acsc(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (~a + ~b * acsc(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * asec(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~e + ~f * ~x) ^ ~m * (~a + ~b * asec(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acsc(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~e + ~f * ~x) ^ ~m * (~a + ~b * acsc(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative(~(u') * asec(~(c') / (~(a') + ~(b') * (~x) ^ ~(n'))) ^ ~(m'), ~x) => Antiderivative(~u * acos(~a / ~c + (~b * (~x) ^ ~n) / ~c) ^ ~m, ~x) <-- FreeQ([~a, ~b, ~c, ~n, ~m], ~x)
    @apply_utils Antiderivative(~(u') * acsc(~(c') / (~(a') + ~(b') * (~x) ^ ~(n'))) ^ ~(m'), ~x) => Antiderivative(~u * asin(~a / ~c + (~b * (~x) ^ ~n) / ~c) ^ ~m, ~x) <-- FreeQ([~a, ~b, ~c, ~n, ~m], ~x)
    @apply_utils Antiderivative(~(u') * (~f) ^ (~(c') * asec(~(a') + ~(b') * ~x) ^ ~(n')), ~x) => (1 / ~b) * Subst(Antiderivative(ReplaceAll(~u, (~x->begin
                                        #= none:1 =#
                                        #= none:3 =#
                                        -(~a) / ~b + sec(~x) / ~b
                                    end)) * (~f) ^ (~c * (~x) ^ ~n) * sec(~x) * tan(~x), ~x), ~x, asec(~a + ~b * ~x)) <-- FreeQ([~a, ~b, ~c, ~f], ~x) && IGtQ(~n, 0)
    @apply_utils Antiderivative(~(u') * (~f) ^ (~(c') * acsc(~(a') + ~(b') * ~x) ^ ~(n')), ~x) => (-1 / ~b) * Subst(Antiderivative(ReplaceAll(~u, (~x->begin
                                        #= none:1 =#
                                        #= none:3 =#
                                        -(~a) / ~b + csc(~x) / ~b
                                    end)) * (~f) ^ (~c * (~x) ^ ~n) * csc(~x) * cot(~x), ~x), ~x, acsc(~a + ~b * ~x)) <-- FreeQ([~a, ~b, ~c, ~f], ~x) && IGtQ(~n, 0)
    @apply_utils Antiderivative(asec(~u), ~x) => ~x * asec(~u) - (~u / sqrt((~u) ^ 2)) * Antiderivative(SimplifyIntegrand((~x * D(~u, ~x)) / (~u * sqrt((~u) ^ 2 - 1)), ~x), ~x) <-- InverseFunctionFreeQ(~u, ~x) && Not(FunctionOfExponentialQ(~u, ~x))
    @apply_utils Antiderivative(acsc(~u), ~x) => ~x * acsc(~u) + (~u / sqrt((~u) ^ 2)) * Antiderivative(SimplifyIntegrand((~x * D(~u, ~x)) / (~u * sqrt((~u) ^ 2 - 1)), ~x), ~x) <-- InverseFunctionFreeQ(~u, ~x) && Not(FunctionOfExponentialQ(~u, ~x))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * (~(a') + ~(b') * asec(~u)), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * (~a + ~b * asec(~u))) / (~d * (~m + 1)) - ((~b * ~u) / (~d * (~m + 1) * sqrt((~u) ^ 2))) * Antiderivative(SimplifyIntegrand(((~c + ~d * ~x) ^ (~m + 1) * D(~u, ~x)) / (~u * sqrt((~u) ^ 2 - 1)), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && (NeQ(~m, -1) && (InverseFunctionFreeQ(~u, ~x) && (Not(FunctionOfQ((~c + ~d * ~x) ^ (~m + 1), ~u, ~x)) && Not(FunctionOfExponentialQ(~u, ~x)))))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * (~(a') + ~(b') * acsc(~u)), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * (~a + ~b * acsc(~u))) / (~d * (~m + 1)) + ((~b * ~u) / (~d * (~m + 1) * sqrt((~u) ^ 2))) * Antiderivative(SimplifyIntegrand(((~c + ~d * ~x) ^ (~m + 1) * D(~u, ~x)) / (~u * sqrt((~u) ^ 2 - 1)), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && (NeQ(~m, -1) && (InverseFunctionFreeQ(~u, ~x) && (Not(FunctionOfQ((~c + ~d * ~x) ^ (~m + 1), ~u, ~x)) && Not(FunctionOfExponentialQ(~u, ~x)))))
    @apply_utils Antiderivative(~v * (~(a') + ~(b') * asec(~u)), ~x) => With([w = IntHide(~v, ~x)], Dist(~a + ~b * asec(~u), w, ~x) - ((~b * ~u) / sqrt((~u) ^ 2)) * Antiderivative(SimplifyIntegrand((w * D(~u, ~x)) / (~u * sqrt((~u) ^ 2 - 1)), ~x), ~x) <-- InverseFunctionFreeQ(w, ~x)) <-- FreeQ([~a, ~b], ~x) && (InverseFunctionFreeQ(~u, ~x) && Not(MatchQ(~v, (~(c') + ~(d') * ~x) ^ ~(m') <-- FreeQ([c, d, m], ~x))))
    @apply_utils Antiderivative(~v * (~(a') + ~(b') * acsc(~u)), ~x) => With([w = IntHide(~v, ~x)], Dist(~a + ~b * acsc(~u), w, ~x) + ((~b * ~u) / sqrt((~u) ^ 2)) * Antiderivative(SimplifyIntegrand((w * D(~u, ~x)) / (~u * sqrt((~u) ^ 2 - 1)), ~x), ~x) <-- InverseFunctionFreeQ(w, ~x)) <-- FreeQ([~a, ~b], ~x) && (InverseFunctionFreeQ(~u, ~x) && Not(MatchQ(~v, (~(c') + ~(d') * ~x) ^ ~(m') <-- FreeQ([c, d, m], ~x))))
end
