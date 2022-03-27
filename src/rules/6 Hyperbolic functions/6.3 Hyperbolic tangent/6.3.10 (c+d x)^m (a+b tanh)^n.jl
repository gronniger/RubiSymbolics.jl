int_rules_6_3_10 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 6.3.10*(c+d*x)^m*(a+b*tanh)^n =#
    @apply_utils Antiderivative((~u) ^ ~(m') * (~(a') + ~(b') * tanh(~v)) ^ ~(n'), ~x) => Antiderivative(ExpandToSum(~u, ~x) ^ ~m * (~a + ~b * tanh(ExpandToSum(~v, ~x))) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~m, ~n], ~x) && (LinearQ([~u, ~v], ~x) && Not(LinearMatchQ([~u, ~v], ~x)))
    @apply_utils Antiderivative((~u) ^ ~(m') * (~(a') + ~(b') * coth(~v)) ^ ~(n'), ~x) => Antiderivative(ExpandToSum(~u, ~x) ^ ~m * (~a + ~b * coth(ExpandToSum(~v, ~x))) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~m, ~n], ~x) && (LinearQ([~u, ~v], ~x) && Not(LinearMatchQ([~u, ~v], ~x)))
end
