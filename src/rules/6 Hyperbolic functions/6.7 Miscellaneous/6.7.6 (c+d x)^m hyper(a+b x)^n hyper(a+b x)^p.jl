int_rules_6_7_6 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 6.7.6*(c+d*x)^m*hyper(a+b*x)^n*hyper(a+b*x)^p =#
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * sinh(~(a') + ~(b') * ~x) ^ ~(n') * cosh(~(a') + ~(b') * ~x), ~x) => ((~c + ~d * ~x) ^ ~m * sinh(~a + ~b * ~x) ^ (~n + 1)) / (~b * (~n + 1)) - ((~d * ~m) / (~b * (~n + 1))) * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * sinh(~a + ~b * ~x) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * sinh(~(a') + ~(b') * ~x) * cosh(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => ((~c + ~d * ~x) ^ ~m * cosh(~a + ~b * ~x) ^ (~n + 1)) / (~b * (~n + 1)) - ((~d * ~m) / (~b * (~n + 1))) * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * cosh(~a + ~b * ~x) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * sinh(~(a') + ~(b') * ~x) ^ ~(n') * cosh(~(a') + ~(b') * ~x) ^ ~(p'), ~x) => Antiderivative(ExpandTrigReduce((~c + ~d * ~x) ^ ~m, sinh(~a + ~b * ~x) ^ ~n * cosh(~a + ~b * ~x) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && (IGtQ(~n, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * sinh(~(a') + ~(b') * ~x) ^ ~(n') * tanh(~(a') + ~(b') * ~x) ^ ~(p'), ~x) => Antiderivative((~c + ~d * ~x) ^ ~m * sinh(~a + ~b * ~x) ^ ~n * tanh(~a + ~b * ~x) ^ (~p - 2), ~x) - Antiderivative((~c + ~d * ~x) ^ ~m * sinh(~a + ~b * ~x) ^ (~n - 2) * tanh(~a + ~b * ~x) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && (IGtQ(~n, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * cosh(~(a') + ~(b') * ~x) ^ ~(n') * coth(~(a') + ~(b') * ~x) ^ ~(p'), ~x) => Antiderivative((~c + ~d * ~x) ^ ~m * cosh(~a + ~b * ~x) ^ ~n * coth(~a + ~b * ~x) ^ (~p - 2), ~x) + Antiderivative((~c + ~d * ~x) ^ ~m * cosh(~a + ~b * ~x) ^ (~n - 2) * coth(~a + ~b * ~x) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && (IGtQ(~n, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * sech(~(a') + ~(b') * ~x) ^ ~(n') * tanh(~(a') + ~(b') * ~x) ^ ~(p'), ~x) => (-((~c + ~d * ~x) ^ ~m) * sech(~a + ~b * ~x) ^ ~n) / (~b * ~n) + ((~d * ~m) / (~b * ~n)) * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * sech(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (EqQ(~p, 1) && GtQ(~m, 0))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * csch(~(a') + ~(b') * ~x) ^ ~(n') * coth(~(a') + ~(b') * ~x) ^ ~(p'), ~x) => (-((~c + ~d * ~x) ^ ~m) * csch(~a + ~b * ~x) ^ ~n) / (~b * ~n) + ((~d * ~m) / (~b * ~n)) * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * csch(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (EqQ(~p, 1) && GtQ(~m, 0))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * sech(~(a') + ~(b') * ~x) ^ 2 * tanh(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => ((~c + ~d * ~x) ^ ~m * tanh(~a + ~b * ~x) ^ (~n + 1)) / (~b * (~n + 1)) - ((~d * ~m) / (~b * (~n + 1))) * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * tanh(~a + ~b * ~x) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * csch(~(a') + ~(b') * ~x) ^ 2 * coth(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => (-((~c + ~d * ~x) ^ ~m) * coth(~a + ~b * ~x) ^ (~n + 1)) / (~b * (~n + 1)) + ((~d * ~m) / (~b * (~n + 1))) * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * coth(~a + ~b * ~x) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * sech(~(a') + ~(b') * ~x) * tanh(~(a') + ~(b') * ~x) ^ ~p, ~x) => Antiderivative((~c + ~d * ~x) ^ ~m * sech(~a + ~b * ~x) * tanh(~a + ~b * ~x) ^ (~p - 2), ~x) - Antiderivative((~c + ~d * ~x) ^ ~m * sech(~a + ~b * ~x) ^ 3 * tanh(~a + ~b * ~x) ^ (~p - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && IGtQ(~p / 2, 0)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * sech(~(a') + ~(b') * ~x) ^ ~(n') * tanh(~(a') + ~(b') * ~x) ^ ~p, ~x) => Antiderivative((~c + ~d * ~x) ^ ~m * sech(~a + ~b * ~x) ^ ~n * tanh(~a + ~b * ~x) ^ (~p - 2), ~x) - Antiderivative((~c + ~d * ~x) ^ ~m * sech(~a + ~b * ~x) ^ (~n + 2) * tanh(~a + ~b * ~x) ^ (~p - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m, ~n], ~x) && IGtQ(~p / 2, 0)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * csch(~(a') + ~(b') * ~x) * coth(~(a') + ~(b') * ~x) ^ ~p, ~x) => Antiderivative((~c + ~d * ~x) ^ ~m * csch(~a + ~b * ~x) * coth(~a + ~b * ~x) ^ (~p - 2), ~x) + Antiderivative((~c + ~d * ~x) ^ ~m * csch(~a + ~b * ~x) ^ 3 * coth(~a + ~b * ~x) ^ (~p - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && IGtQ(~p / 2, 0)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * csch(~(a') + ~(b') * ~x) ^ ~(n') * coth(~(a') + ~(b') * ~x) ^ ~p, ~x) => Antiderivative((~c + ~d * ~x) ^ ~m * csch(~a + ~b * ~x) ^ ~n * coth(~a + ~b * ~x) ^ (~p - 2), ~x) + Antiderivative((~c + ~d * ~x) ^ ~m * csch(~a + ~b * ~x) ^ (~n + 2) * coth(~a + ~b * ~x) ^ (~p - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m, ~n], ~x) && IGtQ(~p / 2, 0)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * sech(~(a') + ~(b') * ~x) ^ ~(n') * tanh(~(a') + ~(b') * ~x) ^ ~(p'), ~x) => With([u = IntHide(sech(~a + ~b * ~x) ^ ~n * tanh(~a + ~b * ~x) ^ ~p, ~x)], Dist((~c + ~d * ~x) ^ ~m, u, ~x) - ~d * ~m * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * u, ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (IGtQ(~m, 0) && (IntegerQ(~n / 2) || IntegerQ((~p - 1) / 2)))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * csch(~(a') + ~(b') * ~x) ^ ~(n') * coth(~(a') + ~(b') * ~x) ^ ~(p'), ~x) => With([u = IntHide(csch(~a + ~b * ~x) ^ ~n * coth(~a + ~b * ~x) ^ ~p, ~x)], Dist((~c + ~d * ~x) ^ ~m, u, ~x) - ~d * ~m * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * u, ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (IGtQ(~m, 0) && (IntegerQ(~n / 2) || IntegerQ((~p - 1) / 2)))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * csch(~(a') + ~(b') * ~x) ^ ~(n') * sech(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => 2 ^ ~n * Antiderivative((~c + ~d * ~x) ^ ~m * csch(2 * ~a + 2 * ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (RationalQ(~m) && IntegerQ(~n))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * csch(~(a') + ~(b') * ~x) ^ ~(n') * sech(~(a') + ~(b') * ~x) ^ ~(p'), ~x) => With([u = IntHide(csch(~a + ~b * ~x) ^ ~n * sech(~a + ~b * ~x) ^ ~p, ~x)], Dist((~c + ~d * ~x) ^ ~m, u, ~x) - ~d * ~m * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * u, ~x)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (IntegersQ(~n, ~p) && (GtQ(~m, 0) && NeQ(~n, ~p)))
    @apply_utils Antiderivative((~u) ^ ~(m') * (~F)(~v) ^ ~(n') * (~G)(~w) ^ ~(p'), ~x) => Antiderivative(ExpandToSum(~u, ~x) ^ ~m * (~F)(ExpandToSum(~v, ~x)) ^ ~n * (~G)(ExpandToSum(~v, ~x)) ^ ~p, ~x) <-- FreeQ([~m, ~n, ~p], ~x) && (HyperbolicQ(~F) && (HyperbolicQ(~G) && (EqQ(~v, ~w) && (LinearQ([~u, ~v, ~w], ~x) && Not(LinearMatchQ([~u, ~v, ~w], ~x))))))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * cosh(~(c') + ~(d') * ~x) * (~a + ~(b') * sinh(~(c') + ~(d') * ~x)) ^ ~(n'), ~x) => ((~e + ~f * ~x) ^ ~m * (~a + ~b * sinh(~c + ~d * ~x)) ^ (~n + 1)) / (~b * ~d * (~n + 1)) - ((~f * ~m) / (~b * ~d * (~n + 1))) * Antiderivative((~e + ~f * ~x) ^ (~m - 1) * (~a + ~b * sinh(~c + ~d * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * sinh(~(c') + ~(d') * ~x) * (~a + ~(b') * cosh(~(c') + ~(d') * ~x)) ^ ~(n'), ~x) => ((~e + ~f * ~x) ^ ~m * (~a + ~b * cosh(~c + ~d * ~x)) ^ (~n + 1)) / (~b * ~d * (~n + 1)) - ((~f * ~m) / (~b * ~d * (~n + 1))) * Antiderivative((~e + ~f * ~x) ^ (~m - 1) * (~a + ~b * cosh(~c + ~d * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * sech(~(c') + ~(d') * ~x) ^ 2 * (~a + ~(b') * tanh(~(c') + ~(d') * ~x)) ^ ~(n'), ~x) => ((~e + ~f * ~x) ^ ~m * (~a + ~b * tanh(~c + ~d * ~x)) ^ (~n + 1)) / (~b * ~d * (~n + 1)) - ((~f * ~m) / (~b * ~d * (~n + 1))) * Antiderivative((~e + ~f * ~x) ^ (~m - 1) * (~a + ~b * tanh(~c + ~d * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * csch(~(c') + ~(d') * ~x) ^ 2 * (~a + ~(b') * coth(~(c') + ~(d') * ~x)) ^ ~(n'), ~x) => (-((~e + ~f * ~x) ^ ~m) * (~a + ~b * coth(~c + ~d * ~x)) ^ (~n + 1)) / (~b * ~d * (~n + 1)) + ((~f * ~m) / (~b * ~d * (~n + 1))) * Antiderivative((~e + ~f * ~x) ^ (~m - 1) * (~a + ~b * coth(~c + ~d * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * sech(~(c') + ~(d') * ~x) * tanh(~(c') + ~(d') * ~x) * (~a + ~(b') * sech(~(c') + ~(d') * ~x)) ^ ~(n'), ~x) => (-((~e + ~f * ~x) ^ ~m) * (~a + ~b * sech(~c + ~d * ~x)) ^ (~n + 1)) / (~b * ~d * (~n + 1)) + ((~f * ~m) / (~b * ~d * (~n + 1))) * Antiderivative((~e + ~f * ~x) ^ (~m - 1) * (~a + ~b * sech(~c + ~d * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * csch(~(c') + ~(d') * ~x) * coth(~(c') + ~(d') * ~x) * (~a + ~(b') * csch(~(c') + ~(d') * ~x)) ^ ~(n'), ~x) => (-((~e + ~f * ~x) ^ ~m) * (~a + ~b * csch(~c + ~d * ~x)) ^ (~n + 1)) / (~b * ~d * (~n + 1)) + ((~f * ~m) / (~b * ~d * (~n + 1))) * Antiderivative((~e + ~f * ~x) ^ (~m - 1) * (~a + ~b * csch(~c + ~d * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && (IGtQ(~m, 0) && NeQ(~n, -1))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * sinh(~(a') + ~(b') * ~x) ^ ~(p') * sinh(~(c') + ~(d') * ~x) ^ ~(q'), ~x) => Antiderivative(ExpandTrigReduce((~e + ~f * ~x) ^ ~m, sinh(~a + ~b * ~x) ^ ~p * sinh(~c + ~d * ~x) ^ ~q, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (IGtQ(~p, 0) && (IGtQ(~q, 0) && IntegerQ(~m)))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * cosh(~(a') + ~(b') * ~x) ^ ~(p') * cosh(~(c') + ~(d') * ~x) ^ ~(q'), ~x) => Antiderivative(ExpandTrigReduce((~e + ~f * ~x) ^ ~m, cosh(~a + ~b * ~x) ^ ~p * cosh(~c + ~d * ~x) ^ ~q, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (IGtQ(~p, 0) && (IGtQ(~q, 0) && IntegerQ(~m)))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * sinh(~(a') + ~(b') * ~x) ^ ~(p') * cosh(~(c') + ~(d') * ~x) ^ ~(q'), ~x) => Antiderivative(ExpandTrigReduce((~e + ~f * ~x) ^ ~m, sinh(~a + ~b * ~x) ^ ~p * cosh(~c + ~d * ~x) ^ ~q, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && (IGtQ(~p, 0) && IGtQ(~q, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~F)(~(a') + ~(b') * ~x) ^ ~(p') * (~G)(~(c') + ~(d') * ~x) ^ ~(q'), ~x) => Antiderivative(ExpandTrigExpand((~e + ~f * ~x) ^ ~m * (~G)(~c + ~d * ~x) ^ ~q, ~F, ~c + ~d * ~x, ~p, ~b / ~d, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && (MemberQ([sinh, cosh], ~F) && (MemberQ([sech, csch], ~G) && (IGtQ(~p, 0) && (IGtQ(~q, 0) && (EqQ(~b * ~c - ~a * ~d, 0) && IGtQ(~b / ~d, 1))))))
end
