int_rules_4_3_4_2 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.3.4.2*(a+b*tan)^m*(c+d*tan)^n*(A+B*tan+C*tan^2) =#
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (1 / (~b) ^ 2) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * ((~b * ~B - ~a * ~C) + ~b * ~C * tan(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && EqQ((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) / (~b) ^ 2) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * (~a - ~b * tan(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && EqQ(~A * (~b) ^ 2 + (~a) ^ 2 * ~C, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(n') * (~A + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (~A / ~f) * Subst(Antiderivative((~a + ~b * ~x) ^ ~m * (~c + ~d * ~x) ^ ~n, ~x), ~x, tan(~e + ~f * ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n], ~x) && EqQ(~A, ~C)
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (-((~b * ~c - ~a * ~d)) * (((~c) ^ 2 * ~C - ~B * ~c * ~d) + ~A * (~d) ^ 2) * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / ((~d) ^ 2 * ~f * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2)) + (1 / (~d * ((~c) ^ 2 + (~d) ^ 2))) * Antiderivative((~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1) * Simp(~a * ~d * ((~A * ~c - ~c * ~C) + ~B * ~d) + ~b * (((~c) ^ 2 * ~C - ~B * ~c * ~d) + ~A * (~d) ^ 2) + ~d * ((((~A * ~b * ~c + ~a * ~B * ~c) - ~b * ~c * ~C) - ~a * ~A * ~d) + ~b * ~B * ~d + ~a * ~C * ~d) * tan(~e + ~f * ~x) + ~b * ~C * ((~c) ^ 2 + (~d) ^ 2) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && LtQ(~n, -1)))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (-((~b * ~c - ~a * ~d)) * ((~c) ^ 2 * ~C + ~A * (~d) ^ 2) * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / ((~d) ^ 2 * ~f * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2)) + (1 / (~d * ((~c) ^ 2 + (~d) ^ 2))) * Antiderivative((~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1) * Simp(~a * ~d * (~A * ~c - ~c * ~C) + ~b * ((~c) ^ 2 * ~C + ~A * (~d) ^ 2) + ~d * (((~A * ~b * ~c - ~b * ~c * ~C) - ~a * ~A * ~d) + ~a * ~C * ~d) * tan(~e + ~f * ~x) + ~b * ~C * ((~c) ^ 2 + (~d) ^ 2) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && LtQ(~n, -1)))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (~b * ~C * tan(~e + ~f * ~x) * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 2)) - (1 / (~d * (~n + 2))) * Antiderivative((~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(((~b * ~c * ~C - ~a * ~A * ~d * (~n + 2)) - ((~A * ~b + ~a * ~B) - ~b * ~C) * ~d * (~n + 2) * tan(~e + ~f * ~x)) - (~a * ~C * ~d * (~n + 2) - ~b * (~c * ~C - ~B * ~d * (~n + 2))) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && Not(LtQ(~n, -1))))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (~b * ~C * tan(~e + ~f * ~x) * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 2)) - (1 / (~d * (~n + 2))) * Antiderivative((~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(((~b * ~c * ~C - ~a * ~A * ~d * (~n + 2)) - (~A * ~b - ~b * ~C) * ~d * (~n + 2) * tan(~e + ~f * ~x)) - (~a * ~C * ~d * (~n + 2) - ~b * ~c * ~C) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && Not(LtQ(~n, -1))))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (((~a * ~A + ~b * ~B) - ~a * ~C) * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (2 * ~f * ~m * (~b * ~c - ~a * ~d)) + (1 / (2 * ~a * ~m * (~b * ~c - ~a * ~d))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(~b * (~c * (~A + ~C) * ~m - ~B * ~d * (~n + 1)) + ~a * ((~B * ~c * ~m + ~C * ~d * (~n + 1)) - ~A * ~d * (2 * ~m + ~n + 1)) + (~b * ~C * ~d * ((~m - ~n) - 1) + ~A * ~b * ~d * (~m + ~n + 1) + ~a * (2 * ~c * ~C * ~m - ~B * ~d * (~m + ~n + 1))) * tan(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 + (~b) ^ 2, 0) && (LtQ(~m, 0) || EqQ(~m + ~n + 1, 0))))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (~a * (~A - ~C) * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (2 * ~f * ~m * (~b * ~c - ~a * ~d)) + (1 / (2 * ~a * ~m * (~b * ~c - ~a * ~d))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(~b * ~c * (~A + ~C) * ~m + ~a * (~C * ~d * (~n + 1) - ~A * ~d * (2 * ~m + ~n + 1)) + (~b * ~C * ~d * ((~m - ~n) - 1) + ~A * ~b * ~d * (~m + ~n + 1) + 2 * ~a * ~c * ~C * ~m) * tan(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 + (~b) ^ 2, 0) && (LtQ(~m, 0) || EqQ(~m + ~n + 1, 0))))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => ((((~c) ^ 2 * ~C - ~B * ~c * ~d) + ~A * (~d) ^ 2) * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2)) - (1 / (~a * ~d * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1) * Simp((~b * (((~c) ^ 2 * ~C - ~B * ~c * ~d) + ~A * (~d) ^ 2) * ~m - ~a * ~d * (~n + 1) * ((~A * ~c - ~c * ~C) + ~B * ~d)) - ~a * (~d * (~B * ~c - ~A * ~d) * (~m + ~n + 1) - ~C * ((~c) ^ 2 * ~m - (~d) ^ 2 * (~n + 1))) * tan(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 + (~b) ^ 2, 0) && (Not(LtQ(~m, 0)) && (LtQ(~n, -1) && NeQ((~c) ^ 2 + (~d) ^ 2, 0)))))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (((~c) ^ 2 * ~C + ~A * (~d) ^ 2) * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2)) - (1 / (~a * ~d * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1) * Simp((~b * ((~c) ^ 2 * ~C + ~A * (~d) ^ 2) * ~m - ~a * ~d * (~n + 1) * (~A * ~c - ~c * ~C)) - ~a * (-(~A) * (~d) ^ 2 * (~m + ~n + 1) - ~C * ((~c) ^ 2 * ~m - (~d) ^ 2 * (~n + 1))) * tan(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 + (~b) ^ 2, 0) && (Not(LtQ(~m, 0)) && (LtQ(~n, -1) && NeQ((~c) ^ 2 + (~d) ^ 2, 0)))))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (~C * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 1)) + (1 / (~b * ~d * (~m + ~n + 1))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp((~A * ~b * ~d * (~m + ~n + 1) + ~C * (~a * ~c * ~m - ~b * ~d * (~n + 1))) - (~C * ~m * (~b * ~c - ~a * ~d) - ~b * ~B * ~d * (~m + ~n + 1)) * tan(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 + (~b) ^ 2, 0) && (Not(LtQ(~m, 0)) && NeQ(~m + ~n + 1, 0))))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (~C * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 1)) + (1 / (~b * ~d * (~m + ~n + 1))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp((~A * ~b * ~d * (~m + ~n + 1) + ~C * (~a * ~c * ~m - ~b * ~d * (~n + 1))) - ~C * ~m * (~b * ~c - ~a * ~d) * tan(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 + (~b) ^ 2, 0) && (Not(LtQ(~m, 0)) && NeQ(~m + ~n + 1, 0))))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~A * (~d) ^ 2 + ~c * (~c * ~C - ~B * ~d)) * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2)) - (1 / (~d * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m - 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1) * Simp(((~A * ~d * (~b * ~d * ~m - ~a * ~c * (~n + 1)) + (~c * ~C - ~B * ~d) * (~b * ~c * ~m + ~a * ~d * (~n + 1))) - ~d * (~n + 1) * ((~A - ~C) * (~b * ~c - ~a * ~d) + ~B * (~a * ~c + ~b * ~d)) * tan(~e + ~f * ~x)) - ~b * (~d * (~B * ~c - ~A * ~d) * (~m + ~n + 1) - ~C * ((~c) ^ 2 * ~m - (~d) ^ 2 * (~n + 1))) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && (GtQ(~m, 0) && LtQ(~n, -1)))))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~A * (~d) ^ 2 + (~c) ^ 2 * ~C) * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2)) - (1 / (~d * (~n + 1) * ((~c) ^ 2 + (~d) ^ 2))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m - 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1) * Simp(((~A * ~d * (~b * ~d * ~m - ~a * ~c * (~n + 1)) + ~c * ~C * (~b * ~c * ~m + ~a * ~d * (~n + 1))) - ~d * (~n + 1) * ((~A - ~C) * (~b * ~c - ~a * ~d)) * tan(~e + ~f * ~x)) + ~b * (~A * (~d) ^ 2 * (~m + ~n + 1) + ~C * ((~c) ^ 2 * ~m - (~d) ^ 2 * (~n + 1))) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && (GtQ(~m, 0) && LtQ(~n, -1)))))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (~C * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 1)) + (1 / (~d * (~m + ~n + 1))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m - 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(((~a * ~A * ~d * (~m + ~n + 1) - ~C * (~b * ~c * ~m + ~a * ~d * (~n + 1))) + ~d * ((~A * ~b + ~a * ~B) - ~b * ~C) * (~m + ~n + 1) * tan(~e + ~f * ~x)) - (~C * ~m * (~b * ~c - ~a * ~d) - ~b * ~B * ~d * (~m + ~n + 1)) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && (GtQ(~m, 0) && Not(IGtQ(~n, 0) && (Not(IntegerQ(~m)) || EqQ(~c, 0) && NeQ(~a, 0)))))))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => (~C * (~a + ~b * tan(~e + ~f * ~x)) ^ ~m * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 1)) + (1 / (~d * (~m + ~n + 1))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m - 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(((~a * ~A * ~d * (~m + ~n + 1) - ~C * (~b * ~c * ~m + ~a * ~d * (~n + 1))) + ~d * (~A * ~b - ~b * ~C) * (~m + ~n + 1) * tan(~e + ~f * ~x)) - ~C * ~m * (~b * ~c - ~a * ~d) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && (GtQ(~m, 0) && Not(IGtQ(~n, 0) && (Not(IntegerQ(~m)) || EqQ(~c, 0) && NeQ(~a, 0)))))))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~A * (~b) ^ 2 - ~a * (~b * ~B - ~a * ~C)) * (~a + ~b * tan(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~f * (~m + 1) * (~b * ~c - ~a * ~d) * ((~a) ^ 2 + (~b) ^ 2)) + (1 / ((~m + 1) * (~b * ~c - ~a * ~d) * ((~a) ^ 2 + (~b) ^ 2))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(((~A * (~a * (~b * ~c - ~a * ~d) * (~m + 1) - (~b) ^ 2 * ~d * (~m + ~n + 2)) + (~b * ~B - ~a * ~C) * (~b * ~c * (~m + 1) + ~a * ~d * (~n + 1))) - (~m + 1) * (~b * ~c - ~a * ~d) * ((~A * ~b - ~a * ~B) - ~b * ~C) * tan(~e + ~f * ~x)) - ~d * (~A * (~b) ^ 2 - ~a * (~b * ~B - ~a * ~C)) * (~m + ~n + 2) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && (LtQ(~m, -1) && Not(ILtQ(~n, -1) && (Not(IntegerQ(~m)) || EqQ(~c, 0) && NeQ(~a, 0)))))))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~A * (~b) ^ 2 + (~a) ^ 2 * ~C) * (~a + ~b * tan(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ (~n + 1)) / (~f * (~m + 1) * (~b * ~c - ~a * ~d) * ((~a) ^ 2 + (~b) ^ 2)) + (1 / ((~m + 1) * (~b * ~c - ~a * ~d) * ((~a) ^ 2 + (~b) ^ 2))) * Antiderivative((~a + ~b * tan(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(((~A * (~a * (~b * ~c - ~a * ~d) * (~m + 1) - (~b) ^ 2 * ~d * (~m + ~n + 2)) - ~a * ~C * (~b * ~c * (~m + 1) + ~a * ~d * (~n + 1))) - (~m + 1) * (~b * ~c - ~a * ~d) * (~A * ~b - ~b * ~C) * tan(~e + ~f * ~x)) - ~d * (~A * (~b) ^ 2 + (~a) ^ 2 * ~C) * (~m + ~n + 2) * tan(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && (LtQ(~m, -1) && Not(ILtQ(~n, -1) && (Not(IntegerQ(~m)) || EqQ(~c, 0) && NeQ(~a, 0)))))))
    @apply_utils Antiderivative((~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2) / ((~a + ~(b') * tan(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x))), ~x) => (((~a * ((~A * ~c - ~c * ~C) + ~B * ~d) + ~b * ((~B * ~c - ~A * ~d) + ~C * ~d)) * ~x) / (((~a) ^ 2 + (~b) ^ 2) * ((~c) ^ 2 + (~d) ^ 2)) + (((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) / ((~b * ~c - ~a * ~d) * ((~a) ^ 2 + (~b) ^ 2))) * Antiderivative((~b - ~a * tan(~e + ~f * ~x)) / (~a + ~b * tan(~e + ~f * ~x)), ~x)) - ((((~c) ^ 2 * ~C - ~B * ~c * ~d) + ~A * (~d) ^ 2) / ((~b * ~c - ~a * ~d) * ((~c) ^ 2 + (~d) ^ 2))) * Antiderivative((~d - ~c * tan(~e + ~f * ~x)) / (~c + ~d * tan(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && NeQ((~c) ^ 2 + (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2) / ((~a + ~(b') * tan(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x))), ~x) => (((~a * (~A * ~c - ~c * ~C) - ~b * (~A * ~d - ~C * ~d)) * ~x) / (((~a) ^ 2 + (~b) ^ 2) * ((~c) ^ 2 + (~d) ^ 2)) + ((~A * (~b) ^ 2 + (~a) ^ 2 * ~C) / ((~b * ~c - ~a * ~d) * ((~a) ^ 2 + (~b) ^ 2))) * Antiderivative((~b - ~a * tan(~e + ~f * ~x)) / (~a + ~b * tan(~e + ~f * ~x)), ~x)) - (((~c) ^ 2 * ~C + ~A * (~d) ^ 2) / ((~b * ~c - ~a * ~d) * ((~c) ^ 2 + (~d) ^ 2))) * Antiderivative((~d - ~c * tan(~e + ~f * ~x)) / (~c + ~d * tan(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && NeQ((~c) ^ 2 + (~d) ^ 2, 0)))
    @apply_utils Antiderivative(((~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2)) / (~(a') + ~(b') * tan(~(e') + ~(f') * ~x)), ~x) => (1 / ((~a) ^ 2 + (~b) ^ 2)) * Antiderivative((~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(~b * ~B + ~a * (~A - ~C) + (~a * ~B - ~b * (~A - ~C)) * tan(~e + ~f * ~x), ~x), ~x) + (((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) / ((~a) ^ 2 + (~b) ^ 2)) * Antiderivative(((~c + ~d * tan(~e + ~f * ~x)) ^ ~n * (1 + tan(~e + ~f * ~x) ^ 2)) / (~a + ~b * tan(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && (Not(GtQ(~n, 0)) && Not(LeQ(~n, -1))))))
    @apply_utils Antiderivative(((~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2)) / (~(a') + ~(b') * tan(~(e') + ~(f') * ~x)), ~x) => (1 / ((~a) ^ 2 + (~b) ^ 2)) * Antiderivative((~c + ~d * tan(~e + ~f * ~x)) ^ ~n * Simp(~a * (~A - ~C) - (~A * ~b - ~b * ~C) * tan(~e + ~f * ~x), ~x), ~x) + ((~A * (~b) ^ 2 + (~a) ^ 2 * ~C) / ((~a) ^ 2 + (~b) ^ 2)) * Antiderivative(((~c + ~d * tan(~e + ~f * ~x)) ^ ~n * (1 + tan(~e + ~f * ~x) ^ 2)) / (~a + ~b * tan(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && (NeQ((~c) ^ 2 + (~d) ^ 2, 0) && (Not(GtQ(~n, 0)) && Not(LeQ(~n, -1))))))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * tan(~(e') + ~(f') * ~x) + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], (ff / ~f) * Subst(Antiderivative(((~a + ~b * ff * ~x) ^ ~m * (~c + ~d * ff * ~x) ^ ~n * (~A + ~B * ff * ~x + ~C * ff ^ 2 * (~x) ^ 2)) / (1 + ff ^ 2 * (~x) ^ 2), ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && NeQ((~c) ^ 2 + (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(a') + ~(b') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * tan(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * tan(~(e') + ~(f') * ~x) ^ 2), ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], (ff / ~f) * Subst(Antiderivative(((~a + ~b * ff * ~x) ^ ~m * (~c + ~d * ff * ~x) ^ ~n * (~A + ~C * ff ^ 2 * (~x) ^ 2)) / (1 + ff ^ 2 * (~x) ^ 2), ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && NeQ((~c) ^ 2 + (~d) ^ 2, 0)))
end
