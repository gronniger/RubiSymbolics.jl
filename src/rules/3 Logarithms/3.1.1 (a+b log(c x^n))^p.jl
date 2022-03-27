int_rules_3_1_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 3.1.1*(a+b*log(c*x^n))^p =#
    @apply_utils Antiderivative(log(~(c') * (~x) ^ ~(n')), ~x) => ~x * log(~c * (~x) ^ ~n) - ~n * ~x <-- FreeQ([~c, ~n], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~x) ^ ~(n'))) ^ ~(p'), ~x) => ~x * (~a + ~b * log(~c * (~x) ^ ~n)) ^ ~p - ~b * ~n * ~p * Antiderivative((~a + ~b * log(~c * (~x) ^ ~n)) ^ (~p - 1), ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x) && (GtQ(~p, 0) && IntegerQ(2 * ~p))
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~x) ^ ~(n'))) ^ ~p, ~x) => (~x * (~a + ~b * log(~c * (~x) ^ ~n)) ^ (~p + 1)) / (~b * ~n * (~p + 1)) - (1 / (~b * ~n * (~p + 1))) * Antiderivative((~a + ~b * log(~c * (~x) ^ ~n)) ^ (~p + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x) && (LtQ(~p, -1) && IntegerQ(2 * ~p))
    @apply_utils Antiderivative(1 / log(~(c') * ~x), ~x) => LogIntegral(~c * ~x) / ~c <-- FreeQ(~c, ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~x) ^ ~(n'))) ^ ~p, ~x) => (1 / (~n * (~c) ^ (1 / ~n))) * Subst(Antiderivative(ℯ ^ (~x / ~n) * (~a + ~b * ~x) ^ ~p, ~x), ~x, log(~c * (~x) ^ ~n)) <-- FreeQ([~a, ~b, ~c, ~p], ~x) && IntegerQ(1 / ~n)
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~x) ^ ~(n'))) ^ ~p, ~x) => (~x / (~n * (~c * (~x) ^ ~n) ^ (1 / ~n))) * Subst(Antiderivative(ℯ ^ (~x / ~n) * (~a + ~b * ~x) ^ ~p, ~x), ~x, log(~c * (~x) ^ ~n)) <-- FreeQ([~a, ~b, ~c, ~n, ~p], ~x)
end
