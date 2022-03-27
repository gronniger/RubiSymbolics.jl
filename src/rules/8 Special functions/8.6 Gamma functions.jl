int_rules_8_6 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 8.6*Gamma*functions =#
    @apply_utils Antiderivative(Gamma(~n, ~(a') + ~(b') * ~x), ~x) => ((~a + ~b * ~x) * Gamma(~n, ~a + ~b * ~x)) / ~b - Gamma(~n + 1, ~a + ~b * ~x) / ~b <-- FreeQ([~a, ~b, ~n], ~x)
    @apply_utils Antiderivative(Gamma(0, ~(b') * ~x) / ~x, ~x) => (~b * ~x * HypergeometricPFQ([1, 1, 1], [2, 2, 2], -(~b) * ~x) - EulerGamma * log(~x)) - (1 / 2) * log(~b * ~x) ^ 2 <-- FreeQ(~b, ~x)
    #= Antiderivative(Gamma(1,(~b')*(~x))/(~x),~x) := Antiderivative(1/(x*ℯ^(b*x)),x) <--  FreeQ(b,x) =#
    @apply_utils Antiderivative(Gamma(~n, ~(b') * ~x) / ~x, ~x) => -(Gamma(~n - 1, ~b * ~x)) + (~n - 1) * Antiderivative(Gamma(~n - 1, ~b * ~x) / ~x, ~x) <-- FreeQ(~b, ~x) && IGtQ(~n, 1)
    @apply_utils Antiderivative(Gamma(~n, ~(b') * ~x) / ~x, ~x) => Gamma(~n, ~b * ~x) / ~n + (1 / ~n) * Antiderivative(Gamma(~n + 1, ~b * ~x) / ~x, ~x) <-- FreeQ(~b, ~x) && ILtQ(~n, 0)
    @apply_utils Antiderivative(Gamma(~n, ~(b') * ~x) / ~x, ~x) => Gamma(~n) * log(~x) - ((~b * ~x) ^ ~n / (~n) ^ 2) * HypergeometricPFQ([~n, ~n], [1 + ~n, 1 + ~n], -(~b) * ~x) <-- FreeQ([~b, ~n], ~x) && Not(IntegerQ(~n))
    @apply_utils Antiderivative((~(d') * ~x) ^ ~(m') * Gamma(~n, ~(b') * ~x), ~x) => ((~d * ~x) ^ (~m + 1) * Gamma(~n, ~b * ~x)) / (~d * (~m + 1)) - ((~d * ~x) ^ ~m * Gamma(~m + ~n + 1, ~b * ~x)) / (~b * (~m + 1) * (~b * ~x) ^ ~m) <-- FreeQ([~b, ~d, ~m, ~n], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~c + ~(d') * ~x) ^ ~(m') * Gamma(~n, ~a + ~(b') * ~x), ~x) => (1 / ~b) * Subst(Antiderivative(((~d * ~x) / ~b) ^ ~m * Gamma(~n, ~x), ~x), ~x, ~a + ~b * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m, ~n], ~x) && EqQ(~b * ~c - ~a * ~d, 0)
    @apply_utils Antiderivative(Gamma(~n, ~(a') + ~(b') * ~x) / (~(c') + ~(d') * ~x), ~x) => Antiderivative((~a + ~b * ~x) ^ (~n - 1) / ((~c + ~d * ~x) * ℯ ^ (~a + ~b * ~x)), ~x) + (~n - 1) * Antiderivative(Gamma(~n - 1, ~a + ~b * ~x) / (~c + ~d * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~n, 1)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * Gamma(~n, ~(a') + ~(b') * ~x), ~x) => Block([$UseGamma = True], ((~c + ~d * ~x) ^ (~m + 1) * Gamma(~n, ~a + ~b * ~x)) / (~d * (~m + 1)) + (~b / (~d * (~m + 1))) * Antiderivative(((~c + ~d * ~x) ^ (~m + 1) * (~a + ~b * ~x) ^ (~n - 1)) / ℯ ^ (~a + ~b * ~x), ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~m, ~n], ~x) && ((IGtQ(~m, 0) || (IGtQ(~n, 0) || IntegersQ(~m, ~n))) && NeQ(~m, -1))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * Gamma(~n, ~(a') + ~(b') * ~x), ~x) => Unintegrable((~c + ~d * ~x) ^ ~m * Gamma(~n, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m, ~n], ~x)
    @apply_utils Antiderivative(LogGamma(~(a') + ~(b') * ~x), ~x) => PolyGamma(-2, ~a + ~b * ~x) / ~b <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * LogGamma(~(a') + ~(b') * ~x), ~x) => ((~c + ~d * ~x) ^ ~m * PolyGamma(-2, ~a + ~b * ~x)) / ~b - ((~d * ~m) / ~b) * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * PolyGamma(-2, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~m, 0)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * LogGamma(~(a') + ~(b') * ~x), ~x) => Unintegrable((~c + ~d * ~x) ^ ~m * LogGamma(~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x)
    @apply_utils Antiderivative(PolyGamma(~n, ~(a') + ~(b') * ~x), ~x) => PolyGamma(~n - 1, ~a + ~b * ~x) / ~b <-- FreeQ([~a, ~b, ~n], ~x)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * PolyGamma(~n, ~(a') + ~(b') * ~x), ~x) => ((~c + ~d * ~x) ^ ~m * PolyGamma(~n - 1, ~a + ~b * ~x)) / ~b - ((~d * ~m) / ~b) * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * PolyGamma(~n - 1, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && GtQ(~m, 0)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * PolyGamma(~n, ~(a') + ~(b') * ~x), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * PolyGamma(~n, ~a + ~b * ~x)) / (~d * (~m + 1)) - (~b / (~d * (~m + 1))) * Antiderivative((~c + ~d * ~x) ^ (~m + 1) * PolyGamma(~n + 1, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && LtQ(~m, -1)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * PolyGamma(~n, ~(a') + ~(b') * ~x), ~x) => Unintegrable((~c + ~d * ~x) ^ ~m * PolyGamma(~n, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m, ~n], ~x)
    @apply_utils Antiderivative(Gamma(~(a') + ~(b') * ~x) ^ ~(n') * PolyGamma(0, ~(a') + ~(b') * ~x), ~x) => Gamma(~a + ~b * ~x) ^ ~n / (~b * ~n) <-- FreeQ([~a, ~b, ~n], ~x)
    @apply_utils Antiderivative(factorial(~(a') + ~(b') * ~x) ^ ~(n') * PolyGamma(0, ~(c') + ~(b') * ~x), ~x) => factorial(~a + ~b * ~x) ^ ~n / (~b * ~n) <-- FreeQ([~a, ~b, ~c, ~n], ~x) && EqQ(~c, ~a + 1)
    @apply_utils Antiderivative(Gamma(~p, ~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ~x * Gamma(~p, ~d * (~a + ~b * log(~c * (~x) ^ ~n))) + ~b * ~d * ~n * ℯ ^ (-(~a) * ~d) * Antiderivative((~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 1) / (~c * (~x) ^ ~n) ^ (~b * ~d), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x)
    @apply_utils Antiderivative(Gamma(~p, ~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) / ~x, ~x) => (1 / ~n) * Subst(Gamma(~p, ~d * (~a + ~b * ~x)), ~x, log(~c * (~x) ^ ~n)) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * Gamma(~p, ~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((~e * ~x) ^ (~m + 1) * Gamma(~p, ~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / (~e * (~m + 1)) + ((~b * ~d * ~n * ℯ ^ (-(~a) * ~d) * (~e * ~x) ^ (~b * ~d * ~n)) / ((~m + 1) * (~c * (~x) ^ ~n) ^ (~b * ~d))) * Antiderivative((~e * ~x) ^ (~m - ~b * ~d * ~n) * (~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative(Gamma(~p, ~(f') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * ~x) ^ ~(n')))), ~x) => (1 / ~e) * Subst(Antiderivative(Gamma(~p, ~f * (~a + ~b * log(~c * (~x) ^ ~n))), ~x), ~x, ~d + ~e * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p], ~x)
    @apply_utils Antiderivative((~g + ~(h') * ~x) ^ ~(m') * Gamma(~p, ~(f') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * ~x) ^ ~(n')))), ~x) => (1 / ~e) * Subst(Antiderivative(((~g * ~x) / ~d) ^ ~m * Gamma(~p, ~f * (~a + ~b * log(~c * (~x) ^ ~n))), ~x), ~x, ~d + ~e * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~m, ~n, ~p], ~x) && EqQ(~e * ~g - ~d * ~h, 0)
end
