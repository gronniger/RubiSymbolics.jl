int_rules_4_3_1_3 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.3.1.3*(d*sin)^m*(a+b*tan)^n =#
    @apply_utils Antiderivative(sin(~(e') + ~(f') * ~x) ^ ~m * (~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (~b / ~f) * Subst(Antiderivative(((~x) ^ ~m * (~a + ~x) ^ ~n) / ((~b) ^ 2 + (~x) ^ 2) ^ (~m / 2 + 1), ~x), ~x, ~b * tan(~e + ~f * ~x)) <-- FreeQ([~a, ~b, ~e, ~f, ~n], ~x) && IntegerQ(~m / 2)
    @apply_utils Antiderivative(sin(~(e') + ~(f') * ~x) ^ ~(m') * (~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => Antiderivative(expand(sin(~e + ~f * ~x) ^ ~m * (~a + ~b * tan(~e + ~f * ~x)) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (IntegerQ((~m - 1) / 2) && IGtQ(~n, 0))
    @apply_utils Antiderivative(sin(~(e') + ~(f') * ~x) ^ ~(m') * (~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => Antiderivative((sin(~e + ~f * ~x) ^ ~m * (~a * cos(~e + ~f * ~x) + ~b * sin(~e + ~f * ~x)) ^ ~n) / cos(~e + ~f * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (IntegerQ((~m - 1) / 2) && (ILtQ(~n, 0) && (LtQ(~m, 5) && GtQ(~n, -4) || EqQ(~m, 5) && EqQ(~n, -1))))
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => (~d * csc(~e + ~f * ~x)) ^ FracPart(~m) * (sin(~e + ~f * ~x) / ~d) ^ FracPart(~m) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ ~n / (sin(~e + ~f * ~x) / ~d) ^ ~m, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x) && Not(IntegerQ(~m))
    @apply_utils Antiderivative(cos(~(e') + ~(f') * ~x) ^ ~(m') * sin(~(e') + ~(f') * ~x) ^ ~(p') * (~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => Antiderivative(cos(~e + ~f * ~x) ^ (~m - ~n) * sin(~e + ~f * ~x) ^ ~p * (~a * cos(~e + ~f * ~x) + ~b * sin(~e + ~f * ~x)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~m, ~p], ~x) && IntegerQ(~n)
    @apply_utils Antiderivative(sin(~(e') + ~(f') * ~x) ^ ~(m') * cos(~(e') + ~(f') * ~x) ^ ~(p') * (~a + ~(b') * cot(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => Antiderivative(sin(~e + ~f * ~x) ^ (~m - ~n) * cos(~e + ~f * ~x) ^ ~p * (~a * sin(~e + ~f * ~x) + ~b * cos(~e + ~f * ~x)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~m, ~p], ~x) && IntegerQ(~n)
end
