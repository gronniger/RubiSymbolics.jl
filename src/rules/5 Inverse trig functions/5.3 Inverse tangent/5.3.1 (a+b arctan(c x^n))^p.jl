int_rules_5_3_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 5.3.1*(a+b*arctan(c*x^n))^p =#
    @apply_utils Antiderivative((~(a') + ~(b') * atan(~(c') * (~x) ^ ~(n'))) ^ ~(p'), ~x) => ~x * (~a + ~b * atan(~c * (~x) ^ ~n)) ^ ~p - ~b * ~c * ~n * ~p * Antiderivative(((~x) ^ ~n * (~a + ~b * atan(~c * (~x) ^ ~n)) ^ (~p - 1)) / (1 + (~c) ^ 2 * (~x) ^ (2 * ~n)), ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x) && (IGtQ(~p, 0) && (EqQ(~n, 1) || EqQ(~p, 1)))
    @apply_utils Antiderivative((~(a') + ~(b') * acot(~(c') * (~x) ^ ~(n'))) ^ ~(p'), ~x) => ~x * (~a + ~b * acot(~c * (~x) ^ ~n)) ^ ~p + ~b * ~c * ~n * ~p * Antiderivative(((~x) ^ ~n * (~a + ~b * acot(~c * (~x) ^ ~n)) ^ (~p - 1)) / (1 + (~c) ^ 2 * (~x) ^ (2 * ~n)), ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x) && (IGtQ(~p, 0) && (EqQ(~n, 1) || EqQ(~p, 1)))
    @apply_utils Antiderivative((~(a') + ~(b') * atan(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => Antiderivative(ExpandIntegrand(((~a + (im * ~b * log(1 - im * ~c * (~x) ^ ~n)) / 2) - (im * ~b * log(1 + im * ~c * (~x) ^ ~n)) / 2) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && IGtQ(~n, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * acot(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => Antiderivative(ExpandIntegrand(((~a + (im * ~b * log(1 - (im * (~x) ^ -(~n)) / ~c)) / 2) - (im * ~b * log(1 + (im * (~x) ^ -(~n)) / ~c)) / 2) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && IGtQ(~n, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * atan(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => Antiderivative((~a + ~b * acot((~x) ^ -(~n) / ~c)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && ILtQ(~n, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * acot(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => Antiderivative((~a + ~b * atan((~x) ^ -(~n) / ~c)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && ILtQ(~n, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * atan(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => With([k = Denominator(~n)], k * Subst(Antiderivative((~x) ^ (k - 1) * (~a + ~b * atan(~c * (~x) ^ (k * ~n))) ^ ~p, ~x), ~x, (~x) ^ (1 / k))) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && FractionQ(~n))
    @apply_utils Antiderivative((~(a') + ~(b') * acot(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => With([k = Denominator(~n)], k * Subst(Antiderivative((~x) ^ (k - 1) * (~a + ~b * acot(~c * (~x) ^ (k * ~n))) ^ ~p, ~x), ~x, (~x) ^ (1 / k))) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && FractionQ(~n))
    @apply_utils Antiderivative((~(a') + ~(b') * atan(~(c') * (~x) ^ ~(n'))) ^ ~p, ~x) => Unintegrable((~a + ~b * atan(~c * (~x) ^ ~n)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~n, ~p], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * acot(~(c') * (~x) ^ ~(n'))) ^ ~p, ~x) => Unintegrable((~a + ~b * acot(~c * (~x) ^ ~n)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~n, ~p], ~x)
end
