int_rules_7_3_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 7.3.1*(a+b*arctanh(c*x^n))^p =#
    @apply_utils Antiderivative((~(a') + ~(b') * atanh(~(c') * (~x) ^ ~(n'))) ^ ~(p'), ~x) => ~x * (~a + ~b * atanh(~c * (~x) ^ ~n)) ^ ~p - ~b * ~c * ~n * ~p * Antiderivative(((~x) ^ ~n * (~a + ~b * atanh(~c * (~x) ^ ~n)) ^ (~p - 1)) / (1 - (~c) ^ 2 * (~x) ^ (2 * ~n)), ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x) && (IGtQ(~p, 0) && (EqQ(~n, 1) || EqQ(~p, 1)))
    @apply_utils Antiderivative((~(a') + ~(b') * acoth(~(c') * (~x) ^ ~(n'))) ^ ~(p'), ~x) => ~x * (~a + ~b * acoth(~c * (~x) ^ ~n)) ^ ~p - ~b * ~c * ~n * ~p * Antiderivative(((~x) ^ ~n * (~a + ~b * acoth(~c * (~x) ^ ~n)) ^ (~p - 1)) / (1 - (~c) ^ 2 * (~x) ^ (2 * ~n)), ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x) && (IGtQ(~p, 0) && (EqQ(~n, 1) || EqQ(~p, 1)))
    @apply_utils Antiderivative((~(a') + ~(b') * atanh(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => Antiderivative(ExpandIntegrand(((~a + (~b * log(1 + ~c * (~x) ^ ~n)) / 2) - (~b * log(1 - ~c * (~x) ^ ~n)) / 2) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && IGtQ(~n, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * acoth(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => Antiderivative(ExpandIntegrand(((~a + (~b * log(1 + (~x) ^ -(~n) / ~c)) / 2) - (~b * log(1 - (~x) ^ -(~n) / ~c)) / 2) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && IGtQ(~n, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * atanh(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => Antiderivative((~a + ~b * acoth((~x) ^ -(~n) / ~c)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && ILtQ(~n, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * acoth(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => Antiderivative((~a + ~b * atanh((~x) ^ -(~n) / ~c)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && ILtQ(~n, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * atanh(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => With([k = Denominator(~n)], k * Subst(Antiderivative((~x) ^ (k - 1) * (~a + ~b * atanh(~c * (~x) ^ (k * ~n))) ^ ~p, ~x), ~x, (~x) ^ (1 / k))) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && FractionQ(~n))
    @apply_utils Antiderivative((~(a') + ~(b') * acoth(~(c') * (~x) ^ ~n)) ^ ~p, ~x) => With([k = Denominator(~n)], k * Subst(Antiderivative((~x) ^ (k - 1) * (~a + ~b * acoth(~c * (~x) ^ (k * ~n))) ^ ~p, ~x), ~x, (~x) ^ (1 / k))) <-- FreeQ([~a, ~b, ~c], ~x) && (IGtQ(~p, 1) && FractionQ(~n))
    @apply_utils Antiderivative((~(a') + ~(b') * atanh(~(c') * (~x) ^ ~(n'))) ^ ~p, ~x) => Unintegrable((~a + ~b * atanh(~c * (~x) ^ ~n)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~n, ~p], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * acoth(~(c') * (~x) ^ ~(n'))) ^ ~p, ~x) => Unintegrable((~a + ~b * acoth(~c * (~x) ^ ~n)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~n, ~p], ~x)
end
