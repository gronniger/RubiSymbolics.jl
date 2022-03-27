int_rules_6_1_10 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 6.1.10*(c+d*x)^m*(a+b*sinh)^n =#
    @apply_utils Antiderivative((~u) ^ ~(m') * (~(a') + ~(b') * sinh(~v)) ^ ~(n'), ~x) => Antiderivative(ExpandToSum(~u, ~x) ^ ~m * (~a + ~b * sinh(ExpandToSum(~v, ~x))) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~m, ~n], ~x) && (LinearQ([~u, ~v], ~x) && Not(LinearMatchQ([~u, ~v], ~x)))
    @apply_utils Antiderivative((~u) ^ ~(m') * (~(a') + ~(b') * cosh(~v)) ^ ~(n'), ~x) => Antiderivative(ExpandToSum(~u, ~x) ^ ~m * (~a + ~b * cosh(ExpandToSum(~v, ~x))) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~m, ~n], ~x) && (LinearQ([~u, ~v], ~x) && Not(LinearMatchQ([~u, ~v], ~x)))
end
