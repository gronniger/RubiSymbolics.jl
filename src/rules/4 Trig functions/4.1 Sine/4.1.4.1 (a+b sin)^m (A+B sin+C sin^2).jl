int_rules_4_1_4_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.1.4.1*(a+b*sin)^m*(A+B*sin+C*sin^2) =#
    @apply_utils Antiderivative((~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (1 / ~b) * Antiderivative((~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~B + ~C * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~b, ~e, ~f, ~B, ~C, ~m], ~x)
    @apply_utils Antiderivative((~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~A + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (~A * cos(~e + ~f * ~x) * (~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 1)) <-- FreeQ([~b, ~e, ~f, ~A, ~C, ~m], ~x) && EqQ(~A * (~m + 2) + ~C * (~m + 1), 0)
    @apply_utils Antiderivative((~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~A + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (~A * cos(~e + ~f * ~x) * (~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 1)) + ((~A * (~m + 2) + ~C * (~m + 1)) / ((~b) ^ 2 * (~m + 1))) * Antiderivative((~b * sin(~e + ~f * ~x)) ^ (~m + 2), ~x) <-- FreeQ([~b, ~e, ~f, ~A, ~C], ~x) && LtQ(~m, -1)
    @apply_utils Antiderivative(sin(~(e') + ~(f') * ~x) ^ ~(m') * (~A + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-1 / ~f) * Subst(Antiderivative((1 - (~x) ^ 2) ^ ((~m - 1) / 2) * ((~A + ~C) - ~C * (~x) ^ 2), ~x), ~x, cos(~e + ~f * ~x)) <-- FreeQ([~e, ~f, ~A, ~C], ~x) && IGtQ((~m + 1) / 2, 0)
    @apply_utils Antiderivative((~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~A + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * cos(~e + ~f * ~x) * (~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 2)) + ((~A * (~m + 2) + ~C * (~m + 1)) / (~m + 2)) * Antiderivative((~b * sin(~e + ~f * ~x)) ^ ~m, ~x) <-- FreeQ([~b, ~e, ~f, ~A, ~C, ~m], ~x) && Not(LtQ(~m, -1))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (1 / (~b) ^ 2) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * Simp((~b * ~B - ~a * ~C) + ~b * ~C * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~B, ~C, ~m], ~x) && EqQ((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C, 0)
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (~C / (~b) ^ 2) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * Simp(-(~a) + ~b * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~C, ~m], ~x) && EqQ(~A * (~b) ^ 2 + (~a) ^ 2 * ~C, 0)
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (~A - ~C) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (1 + sin(~e + ~f * ~x)), ~x) + ~C * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (1 + sin(~e + ~f * ~x)) ^ 2, ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~B, ~C, ~m], ~x) && (EqQ((~A - ~B) + ~C, 0) && Not(IntegerQ(2 * ~m)))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (~A - ~C) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (1 + sin(~e + ~f * ~x)), ~x) + ~C * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (1 + sin(~e + ~f * ~x)) ^ 2, ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~C, ~m], ~x) && (EqQ(~A + ~C, 0) && Not(IntegerQ(2 * ~m)))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (((~A * ~b - ~a * ~B) + ~b * ~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m) / (~a * ~f * (2 * ~m + 1)) + (1 / ((~a) ^ 2 * (2 * ~m + 1))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * Simp(~a * ~A * (~m + 1) + ~m * (~b * ~B - ~a * ~C) + ~b * ~C * (2 * ~m + 1) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~B, ~C], ~x) && (LtQ(~m, -1) && EqQ((~a) ^ 2 - (~b) ^ 2, 0))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (~b * (~A + ~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m) / (~a * ~f * (2 * ~m + 1)) + (1 / ((~a) ^ 2 * (2 * ~m + 1))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * Simp((~a * ~A * (~m + 1) - ~a * ~C * ~m) + ~b * ~C * (2 * ~m + 1) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~C], ~x) && (LtQ(~m, -1) && EqQ((~a) ^ 2 - (~b) ^ 2, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C)) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / (~b * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * Simp(~b * ((~a * ~A - ~b * ~B) + ~a * ~C) * (~m + 1) - ((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C + ~b * ((~A * ~b - ~a * ~B) + ~b * ~C) * (~m + 1)) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~B, ~C], ~x) && (LtQ(~m, -1) && NeQ((~a) ^ 2 - (~b) ^ 2, 0))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-((~A * (~b) ^ 2 + (~a) ^ 2 * ~C)) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / (~b * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * Simp(~a * ~b * (~A + ~C) * (~m + 1) - (~A * (~b) ^ 2 + (~a) ^ 2 * ~C + (~b) ^ 2 * (~A + ~C) * (~m + 1)) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~C], ~x) && (LtQ(~m, -1) && NeQ((~a) ^ 2 - (~b) ^ 2, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 2)) + (1 / (~b * (~m + 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * Simp(~A * ~b * (~m + 2) + ~b * ~C * (~m + 1) + (~b * ~B * (~m + 2) - ~a * ~C) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~B, ~C, ~m], ~x) && Not(LtQ(~m, -1))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 2)) + (1 / (~b * (~m + 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * Simp((~A * ~b * (~m + 2) + ~b * ~C * (~m + 1)) - ~a * ~C * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~A, ~C, ~m], ~x) && Not(LtQ(~m, -1))
    @apply_utils Antiderivative((~(b') * sin(~(e') + ~(f') * ~x) ^ ~p) ^ ~m * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~b * sin(~e + ~f * ~x) ^ ~p) ^ ~m / (~b * sin(~e + ~f * ~x)) ^ (~m * ~p)) * Antiderivative((~b * sin(~e + ~f * ~x)) ^ (~m * ~p) * (~A + ~B * sin(~e + ~f * ~x) + ~C * sin(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~b, ~e, ~f, ~A, ~B, ~C, ~m, ~p], ~x) && Not(IntegerQ(~m))
    @apply_utils Antiderivative((~(b') * cos(~(e') + ~(f') * ~x) ^ ~p) ^ ~m * (~(A') + ~(B') * cos(~(e') + ~(f') * ~x) + ~(C') * cos(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~b * cos(~e + ~f * ~x) ^ ~p) ^ ~m / (~b * cos(~e + ~f * ~x)) ^ (~m * ~p)) * Antiderivative((~b * cos(~e + ~f * ~x)) ^ (~m * ~p) * (~A + ~B * cos(~e + ~f * ~x) + ~C * cos(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~b, ~e, ~f, ~A, ~B, ~C, ~m, ~p], ~x) && Not(IntegerQ(~m))
    @apply_utils Antiderivative((~(b') * sin(~(e') + ~(f') * ~x) ^ ~p) ^ ~m * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~b * sin(~e + ~f * ~x) ^ ~p) ^ ~m / (~b * sin(~e + ~f * ~x)) ^ (~m * ~p)) * Antiderivative((~b * sin(~e + ~f * ~x)) ^ (~m * ~p) * (~A + ~C * sin(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~b, ~e, ~f, ~A, ~C, ~m, ~p], ~x) && Not(IntegerQ(~m))
    @apply_utils Antiderivative((~(b') * cos(~(e') + ~(f') * ~x) ^ ~p) ^ ~m * (~(A') + ~(C') * cos(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~b * cos(~e + ~f * ~x) ^ ~p) ^ ~m / (~b * cos(~e + ~f * ~x)) ^ (~m * ~p)) * Antiderivative((~b * cos(~e + ~f * ~x)) ^ (~m * ~p) * (~A + ~C * cos(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~b, ~e, ~f, ~A, ~C, ~m, ~p], ~x) && Not(IntegerQ(~m))
end
