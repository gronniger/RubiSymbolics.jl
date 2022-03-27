int_rules_8_7 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 8.7*Zeta*function =#
    @apply_utils Antiderivative(Zeta(2, ~(a') + ~(b') * ~x), ~x) => Antiderivative(PolyGamma(1, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative(Zeta(~s, ~(a') + ~(b') * ~x), ~x) => -(Zeta(~s - 1, ~a + ~b * ~x)) / (~b * (~s - 1)) <-- FreeQ([~a, ~b, ~s], ~x) && (NeQ(~s, 1) && NeQ(~s, 2))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * Zeta(2, ~(a') + ~(b') * ~x), ~x) => Antiderivative((~c + ~d * ~x) ^ ~m * PolyGamma(1, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && RationalQ(~m)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * Zeta(~s, ~(a') + ~(b') * ~x), ~x) => (-((~c + ~d * ~x) ^ ~m) * Zeta(~s - 1, ~a + ~b * ~x)) / (~b * (~s - 1)) + ((~d * ~m) / (~b * (~s - 1))) * Antiderivative((~c + ~d * ~x) ^ (~m - 1) * Zeta(~s - 1, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~s], ~x) && (NeQ(~s, 1) && (NeQ(~s, 2) && GtQ(~m, 0)))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * Zeta(~s, ~(a') + ~(b') * ~x), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * Zeta(~s, ~a + ~b * ~x)) / (~d * (~m + 1)) + ((~b * ~s) / (~d * (~m + 1))) * Antiderivative((~c + ~d * ~x) ^ (~m + 1) * Zeta(~s + 1, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~s], ~x) && (NeQ(~s, 1) && (NeQ(~s, 2) && LtQ(~m, -1)))
end
