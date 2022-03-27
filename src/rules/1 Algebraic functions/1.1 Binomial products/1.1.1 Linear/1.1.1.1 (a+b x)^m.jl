int_rules_1_1_1_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 1.1.1.1*(a+b*x)^m =#
    @apply_utils Antiderivative(1 / ~x, ~x) => log(~x)
    @apply_utils Antiderivative((~x) ^ ~(m'), ~x) => (~x) ^ (~m + 1) / (~m + 1) <-- FreeQ(~m, ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative(1 / (~a + ~(b') * ~x), ~x) => log(RemoveContent(~a + ~b * ~x, ~x)) / ~b <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * ~x) ^ ~m, ~x) => (~a + ~b * ~x) ^ (~m + 1) / (~b * (~m + 1)) <-- FreeQ([~a, ~b, ~m], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~(a') + ~(b') * ~u) ^ ~m, ~x) => (1 / Coefficient(~u, ~x, 1)) * Subst(Antiderivative((~a + ~b * ~x) ^ ~m, ~x), ~x, ~u) <-- FreeQ([~a, ~b, ~m], ~x) && (LinearQ(~u, ~x) && NeQ(~u, ~x))
end
