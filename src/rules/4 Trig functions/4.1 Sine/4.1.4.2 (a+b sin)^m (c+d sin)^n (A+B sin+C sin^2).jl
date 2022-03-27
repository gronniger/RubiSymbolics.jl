int_rules_4_1_4_2 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.1.4.2*(a+b*sin)^m*(c+d*sin)^n*(A+B*sin+C*sin^2) =#
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (1 / (~b) ^ 2) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * ((~b * ~B - ~a * ~C) + ~b * ~C * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && EqQ((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) / (~b) ^ 2) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * (~a - ~b * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && EqQ(~A * (~b) ^ 2 + (~a) ^ 2 * ~C, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-((~b * ~c - ~a * ~d)) * ((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / ((~b) ^ 2 * ~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) - (1 / ((~b) ^ 2 * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * Simp((~b * (~m + 1) * ((~b * ~B - ~a * ~C) * (~b * ~c - ~a * ~d) - ~A * ~b * (~a * ~c - ~b * ~d)) + (~b * ~B * (((~a) ^ 2 * ~d + (~b) ^ 2 * ~d * (~m + 1)) - ~a * ~b * ~c * (~m + 2)) + (~b * ~c - ~a * ~d) * (~A * (~b) ^ 2 * (~m + 2) + ~C * ((~a) ^ 2 + (~b) ^ 2 * (~m + 1)))) * sin(~e + ~f * ~x)) - ~b * ~C * ~d * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && LtQ(~m, -1)))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-((~b * ~c - ~a * ~d)) * (~A * (~b) ^ 2 + (~a) ^ 2 * ~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / ((~b) ^ 2 * ~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / ((~b) ^ 2 * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * Simp((~b * (~m + 1) * (~a * ~C * (~b * ~c - ~a * ~d) + ~A * ~b * (~a * ~c - ~b * ~d)) - ((~b * ~c - ~a * ~d) * (~A * (~b) ^ 2 * (~m + 2) + ~C * ((~a) ^ 2 + (~b) ^ 2 * (~m + 1)))) * sin(~e + ~f * ~x)) + ~b * ~C * ~d * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && LtQ(~m, -1)))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~c + ~(d') * sin(~(e') + ~(f') * ~x)) * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * ~d * cos(~e + ~f * ~x) * sin(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 3)) + (1 / (~b * (~m + 3))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * Simp((~a * ~C * ~d + ~A * ~b * ~c * (~m + 3) + ~b * (~B * ~c * (~m + 3) + ~d * (~C * (~m + 2) + ~A * (~m + 3))) * sin(~e + ~f * ~x)) - (2 * ~a * ~C * ~d - ~b * (~c * ~C + ~B * ~d) * (~m + 3)) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(LtQ(~m, -1))))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~c + ~(d') * sin(~(e') + ~(f') * ~x)) * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * ~d * cos(~e + ~f * ~x) * sin(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 3)) + (1 / (~b * (~m + 3))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * Simp((~a * ~C * ~d + ~A * ~b * ~c * (~m + 3) + ~b * ~d * (~C * (~m + 2) + ~A * (~m + 3)) * sin(~e + ~f * ~x)) - (2 * ~a * ~C * ~d - ~b * ~c * ~C * (~m + 3)) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(LtQ(~m, -1))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (((~a * ~A - ~b * ~B) + ~a * ~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (2 * ~b * ~c * ~f * (2 * ~m + 1)) - (1 / (2 * ~b * ~c * ~d * (2 * ~m + 1))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp(((~A * ((~c) ^ 2 * (~m + 1) + (~d) ^ 2 * (2 * ~m + ~n + 2)) - ~B * ~c * ~d * ((~m - ~n) - 1)) - ~C * ((~c) ^ 2 * ~m - (~d) ^ 2 * (~n + 1))) + ~d * ((~A * ~c + ~B * ~d) * (~m + ~n + 2) - ~c * ~C * (3 * ~m - ~n)) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n], ~x) && (EqQ(~b * ~c + ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1 / 2) || EqQ(~m + ~n + 2, 0) && NeQ(2 * ~m + 1, 0))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~a * ~A + ~a * ~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (2 * ~b * ~c * ~f * (2 * ~m + 1)) - (1 / (2 * ~b * ~c * ~d * (2 * ~m + 1))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp((~A * ((~c) ^ 2 * (~m + 1) + (~d) ^ 2 * (2 * ~m + ~n + 2)) - ~C * ((~c) ^ 2 * ~m - (~d) ^ 2 * (~n + 1))) + ~d * (~A * ~c * (~m + ~n + 2) - ~c * ~C * (3 * ~m - ~n)) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n], ~x) && (EqQ(~b * ~c + ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1 / 2) || EqQ(~m + ~n + 2, 0) && NeQ(2 * ~m + 1, 0))))
    @apply_utils Antiderivative(((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2)) / sqrt(~(c') + ~(d') * sin(~(e') + ~(f') * ~x)), ~x) => (-2 * ~C * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (2 * ~m + 3) * sqrt(~c + ~d * sin(~e + ~f * ~x))) + Antiderivative(((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * Simp(~A + ~C + ~B * sin(~e + ~f * ~x), ~x)) / sqrt(~c + ~d * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m], ~x) && (EqQ(~b * ~c + ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(LtQ(~m, -1 / 2))))
    @apply_utils Antiderivative(((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2)) / sqrt(~(c') + ~(d') * sin(~(e') + ~(f') * ~x)), ~x) => (-2 * ~C * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (2 * ~m + 3) * sqrt(~c + ~d * sin(~e + ~f * ~x))) + (~A + ~C) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m / sqrt(~c + ~d * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m], ~x) && (EqQ(~b * ~c + ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(LtQ(~m, -1 / 2))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 2)) + (1 / (~b * ~d * (~m + ~n + 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp(~A * ~b * ~d * (~m + ~n + 2) + ~C * (~a * ~c * ~m + ~b * ~d * (~n + 1)) + (~b * ~B * ~d * (~m + ~n + 2) - ~b * ~c * ~C * (2 * ~m + 1)) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n], ~x) && (EqQ(~b * ~c + ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (Not(LtQ(~m, -1 / 2)) && NeQ(~m + ~n + 2, 0))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 2)) + (1 / (~b * ~d * (~m + ~n + 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp((~A * ~b * ~d * (~m + ~n + 2) + ~C * (~a * ~c * ~m + ~b * ~d * (~n + 1))) - ~b * ~c * ~C * (2 * ~m + 1) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n], ~x) && (EqQ(~b * ~c + ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (Not(LtQ(~m, -1 / 2)) && NeQ(~m + ~n + 2, 0))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (((~a * ~A - ~b * ~B) + ~a * ~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~f * (~b * ~c - ~a * ~d) * (2 * ~m + 1)) + (1 / (~b * (~b * ~c - ~a * ~d) * (2 * ~m + 1))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp(((~A * (~a * ~c * (~m + 1) - ~b * ~d * (2 * ~m + ~n + 2)) + ~B * (~b * ~c * ~m + ~a * ~d * (~n + 1))) - ~C * (~a * ~c * ~m + ~b * ~d * (~n + 1))) + (~d * (~a * ~A - ~b * ~B) * (~m + ~n + 2) + ~C * (~b * ~c * (2 * ~m + 1) - ~a * ~d * ((~m - ~n) - 1))) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && LtQ(~m, -1 / 2))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (~a * (~A + ~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~f * (~b * ~c - ~a * ~d) * (2 * ~m + 1)) + (1 / (~b * (~b * ~c - ~a * ~d) * (2 * ~m + 1))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp((~A * (~a * ~c * (~m + 1) - ~b * ~d * (2 * ~m + ~n + 2)) - ~C * (~a * ~c * ~m + ~b * ~d * (~n + 1))) + (~a * ~A * ~d * (~m + ~n + 2) + ~C * (~b * ~c * (2 * ~m + 1) - ~a * ~d * ((~m - ~n) - 1))) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && LtQ(~m, -1 / 2))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-((((~c) ^ 2 * ~C - ~B * ~c * ~d) + ~A * (~d) ^ 2)) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 1) * ((~c) ^ 2 - (~d) ^ 2)) + (1 / (~b * ~d * (~n + 1) * ((~c) ^ 2 - (~d) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1) * Simp(~A * ~d * (~a * ~d * ~m + ~b * ~c * (~n + 1)) + (~c * ~C - ~B * ~d) * (~a * ~c * ~m + ~b * ~d * (~n + 1)) + ~b * (~d * (~B * ~c - ~A * ~d) * (~m + ~n + 2) - ~C * ((~c) ^ 2 * (~m + 1) + (~d) ^ 2 * (~n + 1))) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (Not(LtQ(~m, -1 / 2)) && (LtQ(~n, -1) || EqQ(~m + ~n + 2, 0))))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(((~c) ^ 2 * ~C + ~A * (~d) ^ 2)) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 1) * ((~c) ^ 2 - (~d) ^ 2)) + (1 / (~b * ~d * (~n + 1) * ((~c) ^ 2 - (~d) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1) * Simp((~A * ~d * (~a * ~d * ~m + ~b * ~c * (~n + 1)) + ~c * ~C * (~a * ~c * ~m + ~b * ~d * (~n + 1))) - ~b * (~A * (~d) ^ 2 * (~m + ~n + 2) + ~C * ((~c) ^ 2 * (~m + 1) + (~d) ^ 2 * (~n + 1))) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (Not(LtQ(~m, -1 / 2)) && (LtQ(~n, -1) || EqQ(~m + ~n + 2, 0))))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 2)) + (1 / (~b * ~d * (~m + ~n + 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp(~A * ~b * ~d * (~m + ~n + 2) + ~C * (~a * ~c * ~m + ~b * ~d * (~n + 1)) + (~C * (~a * ~d * ~m - ~b * ~c * (~m + 1)) + ~b * ~B * ~d * (~m + ~n + 2)) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (Not(LtQ(~m, -1 / 2)) && NeQ(~m + ~n + 2, 0)))))
    @apply_utils Antiderivative((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 2)) + (1 / (~b * ~d * (~m + ~n + 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp(~A * ~b * ~d * (~m + ~n + 2) + ~C * (~a * ~c * ~m + ~b * ~d * (~n + 1)) + ~C * (~a * ~d * ~m - ~b * ~c * (~m + 1)) * sin(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (Not(LtQ(~m, -1 / 2)) && NeQ(~m + ~n + 2, 0)))))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-((((~c) ^ 2 * ~C - ~B * ~c * ~d) + ~A * (~d) ^ 2)) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 1) * ((~c) ^ 2 - (~d) ^ 2)) + (1 / (~d * (~n + 1) * ((~c) ^ 2 - (~d) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m - 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1) * Simp(((~A * ~d * (~b * ~d * ~m + ~a * ~c * (~n + 1)) + (~c * ~C - ~B * ~d) * (~b * ~c * ~m + ~a * ~d * (~n + 1))) - (~d * (~A * (~a * ~d * (~n + 2) - ~b * ~c * (~n + 1)) + ~B * (~b * ~d * (~n + 1) - ~a * ~c * (~n + 2))) - ~C * (~b * ~c * ~d * (~n + 1) - ~a * ((~c) ^ 2 + (~d) ^ 2 * (~n + 1)))) * sin(~e + ~f * ~x)) + ~b * (~d * (~B * ~c - ~A * ~d) * (~m + ~n + 2) - ~C * ((~c) ^ 2 * (~m + 1) + (~d) ^ 2 * (~n + 1))) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (GtQ(~m, 0) && LtQ(~n, -1)))))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(((~c) ^ 2 * ~C + ~A * (~d) ^ 2)) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~n + 1) * ((~c) ^ 2 - (~d) ^ 2)) + (1 / (~d * (~n + 1) * ((~c) ^ 2 - (~d) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m - 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1) * Simp(((~A * ~d * (~b * ~d * ~m + ~a * ~c * (~n + 1)) + ~c * ~C * (~b * ~c * ~m + ~a * ~d * (~n + 1))) - (~A * ~d * (~a * ~d * (~n + 2) - ~b * ~c * (~n + 1)) - ~C * (~b * ~c * ~d * (~n + 1) - ~a * ((~c) ^ 2 + (~d) ^ 2 * (~n + 1)))) * sin(~e + ~f * ~x)) - ~b * (~A * (~d) ^ 2 * (~m + ~n + 2) + ~C * ((~c) ^ 2 * (~m + 1) + (~d) ^ 2 * (~n + 1))) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (GtQ(~m, 0) && LtQ(~n, -1)))))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 2)) + (1 / (~d * (~m + ~n + 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m - 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp(~a * ~A * ~d * (~m + ~n + 2) + ~C * (~b * ~c * ~m + ~a * ~d * (~n + 1)) + (~d * (~A * ~b + ~a * ~B) * (~m + ~n + 2) - ~C * (~a * ~c - ~b * ~d * (~m + ~n + 1))) * sin(~e + ~f * ~x) + (~C * (~a * ~d * ~m - ~b * ~c * (~m + 1)) + ~b * ~B * ~d * (~m + ~n + 2)) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (GtQ(~m, 0) && Not(IGtQ(~n, 0) && (Not(IntegerQ(~m)) || EqQ(~a, 0) && NeQ(~c, 0)))))))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(~C) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~d * ~f * (~m + ~n + 2)) + (1 / (~d * (~m + ~n + 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m - 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp(~a * ~A * ~d * (~m + ~n + 2) + ~C * (~b * ~c * ~m + ~a * ~d * (~n + 1)) + (~A * ~b * ~d * (~m + ~n + 2) - ~C * (~a * ~c - ~b * ~d * (~m + ~n + 1))) * sin(~e + ~f * ~x) + ~C * (~a * ~d * ~m - ~b * ~c * (~m + 1)) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (GtQ(~m, 0) && Not(IGtQ(~n, 0) && (Not(IntegerQ(~m)) || EqQ(~a, 0) && NeQ(~c, 0)))))))
    @apply_utils Antiderivative((~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / ((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ (3 / 2) * sqrt(~(d') * sin(~(e') + ~(f') * ~x))), ~x) => (~C / (~b * ~d)) * Antiderivative(sqrt(~d * sin(~e + ~f * ~x)) / sqrt(~a + ~b * sin(~e + ~f * ~x)), ~x) + (1 / ~b) * Antiderivative((~A * ~b + (~b * ~B - ~a * ~C) * sin(~e + ~f * ~x)) / ((~a + ~b * sin(~e + ~f * ~x)) ^ (3 / 2) * sqrt(~d * sin(~e + ~f * ~x))), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / ((~a + ~(b') * sin(~(e') + ~(f') * ~x)) ^ (3 / 2) * sqrt(~(d') * sin(~(e') + ~(f') * ~x))), ~x) => (~C / (~b * ~d)) * Antiderivative(sqrt(~d * sin(~e + ~f * ~x)) / sqrt(~a + ~b * sin(~e + ~f * ~x)), ~x) + (1 / ~b) * Antiderivative((~A * ~b - ~a * ~C * sin(~e + ~f * ~x)) / ((~a + ~b * sin(~e + ~f * ~x)) ^ (3 / 2) * sqrt(~d * sin(~e + ~f * ~x))), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~A, ~C], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / ((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ (3 / 2) * sqrt(~(c') + ~(d') * sin(~(e') + ~(f') * ~x))), ~x) => (~C / (~b) ^ 2) * Antiderivative(sqrt(~a + ~b * sin(~e + ~f * ~x)) / sqrt(~c + ~d * sin(~e + ~f * ~x)), ~x) + (1 / (~b) ^ 2) * Antiderivative(((~A * (~b) ^ 2 - (~a) ^ 2 * ~C) + ~b * (~b * ~B - 2 * ~a * ~C) * sin(~e + ~f * ~x)) / ((~a + ~b * sin(~e + ~f * ~x)) ^ (3 / 2) * sqrt(~c + ~d * sin(~e + ~f * ~x))), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / ((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ (3 / 2) * sqrt(~(c') + ~(d') * sin(~(e') + ~(f') * ~x))), ~x) => (~C / (~b) ^ 2) * Antiderivative(sqrt(~a + ~b * sin(~e + ~f * ~x)) / sqrt(~c + ~d * sin(~e + ~f * ~x)), ~x) + (1 / (~b) ^ 2) * Antiderivative(((~A * (~b) ^ 2 - (~a) ^ 2 * ~C) - 2 * ~a * ~b * ~C * sin(~e + ~f * ~x)) / ((~a + ~b * sin(~e + ~f * ~x)) ^ (3 / 2) * sqrt(~c + ~d * sin(~e + ~f * ~x))), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-(((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C)) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~f * (~m + 1) * (~b * ~c - ~a * ~d) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / ((~m + 1) * (~b * ~c - ~a * ~d) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp((((~m + 1) * (~b * ~c - ~a * ~d) * ((~a * ~A - ~b * ~B) + ~a * ~C) + ~d * ((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) * (~m + ~n + 2)) - (~c * ((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) + (~m + 1) * (~b * ~c - ~a * ~d) * ((~A * ~b - ~a * ~B) + ~b * ~C)) * sin(~e + ~f * ~x)) - ~d * ((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) * (~m + ~n + 3) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (LtQ(~m, -1) && (EqQ(~a, 0) && (IntegerQ(~m) && Not(IntegerQ(~n))) || Not(IntegerQ(2 * ~n) && (LtQ(~n, -1) && (IntegerQ(~n) && Not(IntegerQ(~m)) || EqQ(~a, 0)))))))))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => (-((~A * (~b) ^ 2 + (~a) ^ 2 * ~C)) * cos(~e + ~f * ~x) * (~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ (~n + 1)) / (~f * (~m + 1) * (~b * ~c - ~a * ~d) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / ((~m + 1) * (~b * ~c - ~a * ~d) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * sin(~e + ~f * ~x)) ^ (~m + 1) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * Simp(((~a * (~m + 1) * (~b * ~c - ~a * ~d) * (~A + ~C) + ~d * (~A * (~b) ^ 2 + (~a) ^ 2 * ~C) * (~m + ~n + 2)) - (~c * (~A * (~b) ^ 2 + (~a) ^ 2 * ~C) + ~b * (~m + 1) * (~b * ~c - ~a * ~d) * (~A + ~C)) * sin(~e + ~f * ~x)) - ~d * (~A * (~b) ^ 2 + (~a) ^ 2 * ~C) * (~m + ~n + 3) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (NeQ((~c) ^ 2 - (~d) ^ 2, 0) && (LtQ(~m, -1) && (EqQ(~a, 0) && (IntegerQ(~m) && Not(IntegerQ(~n))) || Not(IntegerQ(2 * ~n) && (LtQ(~n, -1) && (IntegerQ(~n) && Not(IntegerQ(~m)) || EqQ(~a, 0)))))))))
    @apply_utils Antiderivative((~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / ((~a + ~(b') * sin(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x))), ~x) => ((~C * ~x) / (~b * ~d) + (((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) / (~b * (~b * ~c - ~a * ~d))) * Antiderivative(1 / (~a + ~b * sin(~e + ~f * ~x)), ~x)) - ((((~c) ^ 2 * ~C - ~B * ~c * ~d) + ~A * (~d) ^ 2) / (~d * (~b * ~c - ~a * ~d))) * Antiderivative(1 / (~c + ~d * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / ((~a + ~(b') * sin(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x))), ~x) => ((~C * ~x) / (~b * ~d) + ((~A * (~b) ^ 2 + (~a) ^ 2 * ~C) / (~b * (~b * ~c - ~a * ~d))) * Antiderivative(1 / (~a + ~b * sin(~e + ~f * ~x)), ~x)) - (((~c) ^ 2 * ~C + ~A * (~d) ^ 2) / (~d * (~b * ~c - ~a * ~d))) * Antiderivative(1 / (~c + ~d * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / (sqrt(~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x))), ~x) => (~C / (~b * ~d)) * Antiderivative(sqrt(~a + ~b * sin(~e + ~f * ~x)), ~x) - (1 / (~b * ~d)) * Antiderivative(Simp((~a * ~c * ~C - ~A * ~b * ~d) + ((~b * ~c * ~C - ~b * ~B * ~d) + ~a * ~C * ~d) * sin(~e + ~f * ~x), ~x) / (sqrt(~a + ~b * sin(~e + ~f * ~x)) * (~c + ~d * sin(~e + ~f * ~x))), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / (sqrt(~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x))), ~x) => (~C / (~b * ~d)) * Antiderivative(sqrt(~a + ~b * sin(~e + ~f * ~x)), ~x) - (1 / (~b * ~d)) * Antiderivative(Simp((~a * ~c * ~C - ~A * ~b * ~d) + (~b * ~c * ~C + ~a * ~C * ~d) * sin(~e + ~f * ~x), ~x) / (sqrt(~a + ~b * sin(~e + ~f * ~x)) * (~c + ~d * sin(~e + ~f * ~x))), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / (sqrt(~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) * sqrt(~c + ~(d') * sin(~(e') + ~(f') * ~x))), ~x) => (-(~C) * cos(~e + ~f * ~x) * sqrt(~c + ~d * sin(~e + ~f * ~x))) / (~d * ~f * sqrt(~a + ~b * sin(~e + ~f * ~x))) + (1 / (2 * ~d)) * Antiderivative((1 / ((~a + ~b * sin(~e + ~f * ~x)) ^ (3 / 2) * sqrt(~c + ~d * sin(~e + ~f * ~x)))) * Simp(((2 * ~a * ~A * ~d - ~C * (~b * ~c - ~a * ~d)) - 2 * (~a * ~c * ~C - ~d * (~A * ~b + ~a * ~B)) * sin(~e + ~f * ~x)) + (2 * ~b * ~B * ~d - ~C * (~b * ~c + ~a * ~d)) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2) / (sqrt(~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) * sqrt(~c + ~(d') * sin(~(e') + ~(f') * ~x))), ~x) => (-(~C) * cos(~e + ~f * ~x) * sqrt(~c + ~d * sin(~e + ~f * ~x))) / (~d * ~f * sqrt(~a + ~b * sin(~e + ~f * ~x))) + (1 / (2 * ~d)) * Antiderivative((1 / ((~a + ~b * sin(~e + ~f * ~x)) ^ (3 / 2) * sqrt(~c + ~d * sin(~e + ~f * ~x)))) * Simp(((2 * ~a * ~A * ~d - ~C * (~b * ~c - ~a * ~d)) - 2 * (~a * ~c * ~C - ~A * ~b * ~d) * sin(~e + ~f * ~x)) - ~C * (~b * ~c + ~a * ~d) * sin(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative(((~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2)) / (~a + ~(b') * sin(~(e') + ~(f') * ~x)), ~x) => ((~b * ~B - ~a * ~C) / (~b) ^ 2) * Antiderivative((~d * sin(~e + ~f * ~x)) ^ ~n, ~x) + (~C / (~b * ~d)) * Antiderivative((~d * sin(~e + ~f * ~x)) ^ (~n + 1), ~x) + (((~A * (~b) ^ 2 - ~a * ~b * ~B) + (~a) ^ 2 * ~C) / (~b) ^ 2) * Antiderivative((~d * sin(~e + ~f * ~x)) ^ ~n / (~a + ~b * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~A, ~B, ~C, ~n], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(((~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2)) / (~a + ~(b') * sin(~(e') + ~(f') * ~x)), ~x) => ((-(~a) * ~C) / (~b) ^ 2) * Antiderivative((~d * sin(~e + ~f * ~x)) ^ ~n, ~x) + (~C / (~b * ~d)) * Antiderivative((~d * sin(~e + ~f * ~x)) ^ (~n + 1), ~x) + ((~A * (~b) ^ 2 + (~a) ^ 2 * ~C) / (~b) ^ 2) * Antiderivative((~d * sin(~e + ~f * ~x)) ^ ~n / (~a + ~b * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~A, ~C, ~n], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => Unintegrable((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * (~A + ~B * sin(~e + ~f * ~x) + ~C * sin(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(a') + ~(b') * sin(~(e') + ~(f') * ~x)) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~n * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => Unintegrable((~a + ~b * sin(~e + ~f * ~x)) ^ ~m * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * (~A + ~C * sin(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n], ~x) && (NeQ(~b * ~c - ~a * ~d, 0) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && NeQ((~c) ^ 2 - (~d) ^ 2, 0)))
    @apply_utils Antiderivative((~(b') * sin(~(e') + ~(f') * ~x) ^ ~p) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * sin(~(e') + ~(f') * ~x) + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~b * sin(~e + ~f * ~x) ^ ~p) ^ ~m / (~b * sin(~e + ~f * ~x)) ^ (~m * ~p)) * Antiderivative((~b * sin(~e + ~f * ~x)) ^ (~m * ~p) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * (~A + ~B * sin(~e + ~f * ~x) + ~C * sin(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n, ~p], ~x) && Not(IntegerQ(~m))
    @apply_utils Antiderivative((~(b') * cos(~(e') + ~(f') * ~x) ^ ~p) ^ ~m * (~(c') + ~(d') * cos(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(B') * cos(~(e') + ~(f') * ~x) + ~(C') * cos(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~b * cos(~e + ~f * ~x) ^ ~p) ^ ~m / (~b * cos(~e + ~f * ~x)) ^ (~m * ~p)) * Antiderivative((~b * cos(~e + ~f * ~x)) ^ (~m * ~p) * (~c + ~d * cos(~e + ~f * ~x)) ^ ~n * (~A + ~B * cos(~e + ~f * ~x) + ~C * cos(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~n, ~p], ~x) && Not(IntegerQ(~m))
    @apply_utils Antiderivative((~(b') * sin(~(e') + ~(f') * ~x) ^ ~p) ^ ~m * (~(c') + ~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * sin(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~b * sin(~e + ~f * ~x) ^ ~p) ^ ~m / (~b * sin(~e + ~f * ~x)) ^ (~m * ~p)) * Antiderivative((~b * sin(~e + ~f * ~x)) ^ (~m * ~p) * (~c + ~d * sin(~e + ~f * ~x)) ^ ~n * (~A + ~C * sin(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n, ~p], ~x) && Not(IntegerQ(~m))
    @apply_utils Antiderivative((~(b') * cos(~(e') + ~(f') * ~x) ^ ~p) ^ ~m * (~(c') + ~(d') * cos(~(e') + ~(f') * ~x)) ^ ~(n') * (~(A') + ~(C') * cos(~(e') + ~(f') * ~x) ^ 2), ~x) => ((~b * cos(~e + ~f * ~x) ^ ~p) ^ ~m / (~b * cos(~e + ~f * ~x)) ^ (~m * ~p)) * Antiderivative((~b * cos(~e + ~f * ~x)) ^ (~m * ~p) * (~c + ~d * cos(~e + ~f * ~x)) ^ ~n * (~A + ~C * cos(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~b, ~c, ~d, ~e, ~f, ~A, ~C, ~m, ~n, ~p], ~x) && Not(IntegerQ(~m))
end
