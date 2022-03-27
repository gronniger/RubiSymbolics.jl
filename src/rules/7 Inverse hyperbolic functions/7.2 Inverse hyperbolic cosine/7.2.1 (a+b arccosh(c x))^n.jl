int_rules_7_2_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 7.2.1*(a+b*arccosh(c*x))^n =#
    @apply_utils Antiderivative((~(a') + ~(b') * acosh(~(c') * ~x)) ^ ~(n'), ~x) => ~x * (~a + ~b * acosh(~c * ~x)) ^ ~n - ~b * ~c * ~n * Antiderivative((~x * (~a + ~b * acosh(~c * ~x)) ^ (~n - 1)) / (sqrt(1 + ~c * ~x) * sqrt(-1 + ~c * ~x)), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && GtQ(~n, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * acosh(~(c') * ~x)) ^ ~n, ~x) => (sqrt(1 + ~c * ~x) * sqrt(-1 + ~c * ~x) * (~a + ~b * acosh(~c * ~x)) ^ (~n + 1)) / (~b * ~c * (~n + 1)) - (~c / (~b * (~n + 1))) * Antiderivative((~x * (~a + ~b * acosh(~c * ~x)) ^ (~n + 1)) / (sqrt(1 + ~c * ~x) * sqrt(-1 + ~c * ~x)), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && LtQ(~n, -1)
    @apply_utils Antiderivative((~(a') + ~(b') * acosh(~(c') * ~x)) ^ ~n, ~x) => (1 / (~b * ~c)) * Subst(Antiderivative((~x) ^ ~n * sinh(-(~a) / ~b + ~x / ~b), ~x), ~x, ~a + ~b * acosh(~c * ~x)) <-- FreeQ([~a, ~b, ~c, ~n], ~x)
end
