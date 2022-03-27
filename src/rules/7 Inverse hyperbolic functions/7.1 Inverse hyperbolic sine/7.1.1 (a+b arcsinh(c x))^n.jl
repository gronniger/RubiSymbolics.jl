int_rules_7_1_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 7.1.1*(a+b*arcsinh(c*x))^n =#
    @apply_utils Antiderivative((~(a') + ~(b') * asinh(~(c') * ~x)) ^ ~(n'), ~x) => ~x * (~a + ~b * asinh(~c * ~x)) ^ ~n - ~b * ~c * ~n * Antiderivative((~x * (~a + ~b * asinh(~c * ~x)) ^ (~n - 1)) / sqrt(1 + (~c) ^ 2 * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && GtQ(~n, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * asinh(~(c') * ~x)) ^ ~n, ~x) => (sqrt(1 + (~c) ^ 2 * (~x) ^ 2) * (~a + ~b * asinh(~c * ~x)) ^ (~n + 1)) / (~b * ~c * (~n + 1)) - (~c / (~b * (~n + 1))) * Antiderivative((~x * (~a + ~b * asinh(~c * ~x)) ^ (~n + 1)) / sqrt(1 + (~c) ^ 2 * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c], ~x) && LtQ(~n, -1)
    @apply_utils Antiderivative((~(a') + ~(b') * asinh(~(c') * ~x)) ^ ~n, ~x) => (1 / (~b * ~c)) * Subst(Antiderivative((~x) ^ ~n * cosh(-(~a) / ~b + ~x / ~b), ~x), ~x, ~a + ~b * asinh(~c * ~x)) <-- FreeQ([~a, ~b, ~c, ~n], ~x)
end
