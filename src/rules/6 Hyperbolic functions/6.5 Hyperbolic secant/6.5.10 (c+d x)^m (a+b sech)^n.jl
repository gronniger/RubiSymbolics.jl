int_rules_6_5_10 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 6.5.10*(c+d*x)^m*(a+b*sech)^n =#
    @apply_utils Antiderivative((~u) ^ ~(m') * sech(~v) ^ ~(n'), ~x) => Antiderivative(ExpandToSum(~u, ~x) ^ ~m * sech(ExpandToSum(~v, ~x)) ^ ~n, ~x) <-- FreeQ([~m, ~n], ~x) && (LinearQ([~u, ~v], ~x) && Not(LinearMatchQ([~u, ~v], ~x)))
    @apply_utils Antiderivative((~u) ^ ~(m') * csch(~v) ^ ~(n'), ~x) => Antiderivative(ExpandToSum(~u, ~x) ^ ~m * csch(ExpandToSum(~v, ~x)) ^ ~n, ~x) <-- FreeQ([~m, ~n], ~x) && (LinearQ([~u, ~v], ~x) && Not(LinearMatchQ([~u, ~v], ~x)))
end
