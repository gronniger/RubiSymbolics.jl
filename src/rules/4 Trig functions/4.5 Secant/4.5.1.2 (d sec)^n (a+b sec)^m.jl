int_rules_4_5_1_2 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.5.1.2*(d*sec)^n*(a+b*sec)^m =#
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => ~a * Antiderivative((~d * csc(~e + ~f * ~x)) ^ ~n, ~x) + (~b / ~d) * Antiderivative((~d * csc(~e + ~f * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~n], ~x)
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ 2 * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => ((2 * ~a * ~b) / ~d) * Antiderivative((~d * csc(~e + ~f * ~x)) ^ (~n + 1), ~x) + Antiderivative((~d * csc(~e + ~f * ~x)) ^ ~n * ((~a) ^ 2 + (~b) ^ 2 * csc(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~n], ~x)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 2 / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (1 / ~b) * Antiderivative(csc(~e + ~f * ~x), ~x) - (~a / ~b) * Antiderivative(csc(~e + ~f * ~x) / (~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 3 / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => -(cot(~e + ~f * ~x)) / (~b * ~f) - (~a / ~b) * Antiderivative(csc(~e + ~f * ~x) ^ 2 / (~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x)
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => Antiderivative(ExpandTrig((~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (IGtQ(~m, 0) && RationalQ(~n)))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) * sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (-2 * ~b * cot(~e + ~f * ~x)) / (~f * sqrt(~a + ~b * csc(~e + ~f * ~x))) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-(~b) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 1)) / (~f * ~m) + ((~a * (2 * ~m - 1)) / ~m) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 1), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~m, 1 / 2) && IntegerQ(2 * ~m)))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => -(cot(~e + ~f * ~x)) / (~f * (~b + ~a * csc(~e + ~f * ~x))) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (-2 / ~f) * Subst(Antiderivative(1 / (2 * ~a + (~x) ^ 2), ~x), ~x, (~b * cot(~e + ~f * ~x)) / sqrt(~a + ~b * csc(~e + ~f * ~x))) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (~b * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m) / (~a * ~f * (2 * ~m + 1)) + ((~m + 1) / (~a * (2 * ~m + 1))) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1 / 2) && IntegerQ(2 * ~m)))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 2 * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-(cot(~e + ~f * ~x)) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m) / (~f * (2 * ~m + 1)) + (~m / (~b * (2 * ~m + 1))) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && LtQ(~m, -1 / 2))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 2 * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-(cot(~e + ~f * ~x)) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m) / (~f * (~m + 1)) + ((~a * ~m) / (~b * (~m + 1))) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m, ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~m], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(LtQ(~m, -1 / 2)))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 3 * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (~b * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m) / (~a * ~f * (2 * ~m + 1)) - (1 / ((~a) ^ 2 * (2 * ~m + 1))) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~a * ~m - ~b * (2 * ~m + 1) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && LtQ(~m, -1 / 2))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 3 * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-(cot(~e + ~f * ~x)) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 2)) + (1 / (~b * (~m + 2))) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~b * (~m + 1) - ~a * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~m], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(LtQ(~m, -1 / 2)))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) * sqrt(~(d') * csc(~(e') + ~(f') * ~x)), ~x) => ((-2 * ~a) / (~b * ~f)) * sqrt((~a * ~d) / ~b) * Subst(Antiderivative(1 / sqrt(1 + (~x) ^ 2 / ~a), ~x), ~x, (~b * cot(~e + ~f * ~x)) / sqrt(~a + ~b * csc(~e + ~f * ~x))) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && GtQ((~a * ~d) / ~b, 0))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) * sqrt(~(d') * csc(~(e') + ~(f') * ~x)), ~x) => ((-2 * ~b * ~d) / ~f) * Subst(Antiderivative(1 / (~b - ~d * (~x) ^ 2), ~x), ~x, (~b * cot(~e + ~f * ~x)) / (sqrt(~a + ~b * csc(~e + ~f * ~x)) * sqrt(~d * csc(~e + ~f * ~x)))) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(GtQ((~a * ~d) / ~b, 0)))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-2 * ~b * ~d * cot(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1)) / (~f * (2 * ~n - 1) * sqrt(~a + ~b * csc(~e + ~f * ~x))) + ((2 * ~a * ~d * (~n - 1)) / (~b * (2 * ~n - 1))) * Antiderivative(sqrt(~a + ~b * csc(~e + ~f * ~x)) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~n, 1) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) / sqrt(~(d') * csc(~(e') + ~(f') * ~x)), ~x) => (-2 * ~a * cot(~e + ~f * ~x)) / (~f * sqrt(~a + ~b * csc(~e + ~f * ~x)) * sqrt(~d * csc(~e + ~f * ~x))) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (~a * cot(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * ~n * sqrt(~a + ~b * csc(~e + ~f * ~x))) + ((~a * (2 * ~n + 1)) / (2 * ~b * ~d * ~n)) * Antiderivative(sqrt(~a + ~b * csc(~e + ~f * ~x)) * (~d * csc(~e + ~f * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~n, -1 / 2) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (((~a) ^ 2 * ~d * cot(~e + ~f * ~x)) / (~f * sqrt(~a + ~b * csc(~e + ~f * ~x)) * sqrt(~a - ~b * csc(~e + ~f * ~x)))) * Subst(Antiderivative((~d * ~x) ^ (~n - 1) / sqrt(~a - ~b * ~x), ~x), ~x, csc(~e + ~f * ~x)) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~n], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(sqrt(~(d') * csc(~(e') + ~(f') * ~x)) / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => ((-(sqrt(2)) * sqrt(~a)) / (~b * ~f)) * Subst(Antiderivative(1 / sqrt(1 + (~x) ^ 2), ~x), ~x, (~b * cot(~e + ~f * ~x)) / (~a + ~b * csc(~e + ~f * ~x))) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (EqQ(~d - ~a / ~b, 0) && GtQ(~a, 0)))
    @apply_utils Antiderivative(sqrt(~(d') * csc(~(e') + ~(f') * ~x)) / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => ((-2 * ~b * ~d) / (~a * ~f)) * Subst(Antiderivative(1 / (2 * ~b - ~d * (~x) ^ 2), ~x), ~x, (~b * cot(~e + ~f * ~x)) / (sqrt(~a + ~b * csc(~e + ~f * ~x)) * sqrt(~d * csc(~e + ~f * ~x)))) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-(~a) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 1) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * ~m) + ((~b * (2 * ~m - 1)) / (~d * ~m)) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 1) * (~d * csc(~e + ~f * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (EqQ(~m + ~n, 0) && (GtQ(~m, 1 / 2) && IntegerQ(2 * ~m))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (~b * ~d * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ (~n - 1)) / (~a * ~f * (2 * ~m + 1)) + ((~d * (~m + 1)) / (~b * (2 * ~m + 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (EqQ(~m + ~n, 0) && (LtQ(~m, -1 / 2) && IntegerQ(2 * ~m))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-(cot(~e + ~f * ~x)) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * (2 * ~m + 1)) + (~m / (~a * (2 * ~m + 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (EqQ(~m + ~n + 1, 0) && LtQ(~m, -1 / 2)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-(cot(~e + ~f * ~x)) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * (~m + 1)) + ((~a * ~m) / (~b * ~d * (~m + 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (EqQ(~m + ~n + 1, 0) && Not(LtQ(~m, -1 / 2))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => ((~b) ^ 2 * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 2) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * ~n) - (~a / (~d * ~n)) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 2) * (~d * csc(~e + ~f * ~x)) ^ (~n + 1) * (~b * ((~m - 2 * ~n) - 2) - ~a * ((~m + 2 * ~n) - 1) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~m, 1) && ((LtQ(~n, -1) || EqQ(~m, 3 / 2) && EqQ(~n, -1 / 2)) && IntegerQ(2 * ~m))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-((~b) ^ 2) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 2) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * ((~m + ~n) - 1)) + (~b / ((~m + ~n) - 1)) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 2) * (~d * csc(~e + ~f * ~x)) ^ ~n * (~b * ((~m + 2 * ~n) - 1) + ~a * ((3 * ~m + 2 * ~n) - 4) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~m, 1) && (NeQ((~m + ~n) - 1, 0) && IntegerQ(2 * ~m))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (~b * ~d * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ (~n - 1)) / (~a * ~f * (2 * ~m + 1)) - (~d / (~a * ~b * (2 * ~m + 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1) * (~a * (~n - 1) - ~b * (~m + ~n) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1) && (LtQ(1, ~n, 2) && (IntegersQ(2 * ~m, 2 * ~n) || IntegerQ(~m)))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-((~d) ^ 2) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ (~n - 2)) / (~f * (2 * ~m + 1)) + ((~d) ^ 2 / (~a * ~b * (2 * ~m + 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 2) * (~b * (~n - 2) + ~a * ((~m - ~n) + 2) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1) && (GtQ(~n, 2) && (IntegersQ(2 * ~m, 2 * ~n) || IntegerQ(~m)))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-(cot(~e + ~f * ~x)) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * (2 * ~m + 1)) + (1 / ((~a) ^ 2 * (2 * ~m + 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ ~n * (~a * (2 * ~m + ~n + 1) - ~b * (~m + ~n + 1) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1) && (IntegersQ(2 * ~m, 2 * ~n) || IntegerQ(~m))))
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => ((~d) ^ 2 * cot(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ (~n - 2)) / (~f * (~a + ~b * csc(~e + ~f * ~x))) - ((~d) ^ 2 / (~a * ~b)) * Antiderivative((~d * csc(~e + ~f * ~x)) ^ (~n - 2) * (~b * (~n - 2) - ~a * (~n - 1) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && GtQ(~n, 1))
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (cot(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * (~a + ~b * csc(~e + ~f * ~x))) - (1 / (~a) ^ 2) * Antiderivative((~d * csc(~e + ~f * ~x)) ^ ~n * (~a * (~n - 1) - ~b * ~n * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && LtQ(~n, 0))
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (-(~b) * ~d * cot(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1)) / (~a * ~f * (~a + ~b * csc(~e + ~f * ~x))) + ((~d * (~n - 1)) / (~a * ~b)) * Antiderivative((~d * csc(~e + ~f * ~x)) ^ (~n - 1) * (~a - ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~n], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ (3 / 2) / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (~d / ~b) * Antiderivative(sqrt(~a + ~b * csc(~e + ~f * ~x)) * sqrt(~d * csc(~e + ~f * ~x)), ~x) - ((~a * ~d) / ~b) * Antiderivative(sqrt(~d * csc(~e + ~f * ~x)) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (-2 * (~d) ^ 2 * cot(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ (~n - 2)) / (~f * (2 * ~n - 3) * sqrt(~a + ~b * csc(~e + ~f * ~x))) + ((~d) ^ 2 / (~b * (2 * ~n - 3))) * Antiderivative(((~d * csc(~e + ~f * ~x)) ^ (~n - 2) * (2 * ~b * (~n - 2) - ~a * csc(~e + ~f * ~x))) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~n, 2) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (cot(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * ~n * sqrt(~a + ~b * csc(~e + ~f * ~x))) + (1 / (2 * ~b * ~d * ~n)) * Antiderivative(((~d * csc(~e + ~f * ~x)) ^ (~n + 1) * (~a + ~b * (2 * ~n + 1) * csc(~e + ~f * ~x))) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~n, 0) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-((~d) ^ 2) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ (~n - 2)) / (~f * ((~m + ~n) - 1)) + ((~d) ^ 2 / (~b * ((~m + ~n) - 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ (~n - 2) * (~b * (~n - 2) + ~a * ~m * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~n, 2) && (NeQ((~m + ~n) - 1, 0) && IntegerQ(~n))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => ((-(((~a * ~d) / ~b) ^ ~n) * cot(~e + ~f * ~x)) / ((~a) ^ (~n - 2) * ~f * sqrt(~a + ~b * csc(~e + ~f * ~x)) * sqrt(~a - ~b * csc(~e + ~f * ~x)))) * Subst(Antiderivative(((~a - ~x) ^ (~n - 1) * (2 * ~a - ~x) ^ (~m - 1 / 2)) / sqrt(~x), ~x), ~x, ~a - ~b * csc(~e + ~f * ~x)) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (Not(IntegerQ(~m)) && (GtQ(~a, 0) && (Not(IntegerQ(~n)) && GtQ((~a * ~d) / ~b, 0)))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => ((-(((-(~a) * ~d) / ~b) ^ ~n) * cot(~e + ~f * ~x)) / ((~a) ^ (~n - 1) * ~f * sqrt(~a + ~b * csc(~e + ~f * ~x)) * sqrt(~a - ~b * csc(~e + ~f * ~x)))) * Subst(Antiderivative(((~x) ^ (~m - 1 / 2) * (~a - ~x) ^ (~n - 1)) / sqrt(2 * ~a - ~x), ~x), ~x, ~a + ~b * csc(~e + ~f * ~x)) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (Not(IntegerQ(~m)) && (GtQ(~a, 0) && (Not(IntegerQ(~n)) && LtQ((~a * ~d) / ~b, 0)))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => (((~a) ^ 2 * ~d * cot(~e + ~f * ~x)) / (~f * sqrt(~a + ~b * csc(~e + ~f * ~x)) * sqrt(~a - ~b * csc(~e + ~f * ~x)))) * Subst(Antiderivative(((~d * ~x) ^ (~n - 1) * (~a + ~b * ~x) ^ (~m - 1 / 2)) / sqrt(~a - ~b * ~x), ~x), ~x, csc(~e + ~f * ~x)) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (Not(IntegerQ(~m)) && GtQ(~a, 0)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => (((~a) ^ IntPart(~m) * (~a + ~b * csc(~e + ~f * ~x)) ^ FracPart(~m)) / (1 + (~b / ~a) * csc(~e + ~f * ~x)) ^ FracPart(~m)) * Antiderivative((1 + (~b / ~a) * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (Not(IntegerQ(~m)) && Not(GtQ(~a, 0))))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) * sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (~a - ~b) * Antiderivative(csc(~e + ~f * ~x) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) + ~b * Antiderivative((csc(~e + ~f * ~x) * (1 + csc(~e + ~f * ~x))) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-(~b) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 1)) / (~f * ~m) + (1 / ~m) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 2) * ((~b) ^ 2 * (~m - 1) + (~a) ^ 2 * ~m + ~a * ~b * (2 * ~m - 1) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~m, 1) && IntegerQ(2 * ~m)))
    #= Antiderivative(csc((~e')+(~f')*(~x))/((~a)+(~b')*csc((~e')+(~f')*(~x))),~x) :=  -2/f*Subst(Antiderivative(1/(a+b-(a-b)*x^2),x),x,cot(e+f*x)/(1+csc(e+f*x))) <--  FreeQ([a,b,e,f],x) && NeQ(a^2-b^2,0) =#
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (1 / ~b) * Antiderivative(1 / (1 + (~a / ~b) * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => ((-2 * Rt(~a + ~b, 2)) / (~b * ~f * cot(~e + ~f * ~x))) * sqrt((~b * (1 - csc(~e + ~f * ~x))) / (~a + ~b)) * sqrt((-(~b) * (1 + csc(~e + ~f * ~x))) / (~a - ~b)) * Elliptic.F(asin(sqrt(~a + ~b * csc(~e + ~f * ~x)) / Rt(~a + ~b, 2)), (~a + ~b) / (~a - ~b)) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-(~b) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1)) / (~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / ((~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~a * (~m + 1) - ~b * (~m + 2) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1) && IntegerQ(2 * ~m)))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (cot(~e + ~f * ~x) / (~f * sqrt(1 + csc(~e + ~f * ~x)) * sqrt(1 - csc(~e + ~f * ~x)))) * Subst(Antiderivative((~a + ~b * ~x) ^ ~m / (sqrt(1 + ~x) * sqrt(1 - ~x)), ~x), ~x, csc(~e + ~f * ~x)) <-- FreeQ([~a, ~b, ~e, ~f, ~m], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(IntegerQ(2 * ~m)))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 2 * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-(cot(~e + ~f * ~x)) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m) / (~f * (~m + 1)) + (~m / (~m + 1)) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 1) * (~b + ~a * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && GtQ(~m, 0))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 2 * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (~a * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1)) / (~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) - (1 / ((~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~b * (~m + 1) - ~a * (~m + 2) * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && LtQ(~m, -1))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 2 / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => -(Antiderivative(csc(~e + ~f * ~x) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x)) + Antiderivative((csc(~e + ~f * ~x) * (1 + csc(~e + ~f * ~x))) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 2 * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-(~a) / ~b) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m, ~x) + (1 / ~b) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~m], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 3 * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-((~a) ^ 2) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / (~b * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * Simp(~a * ~b * (~m + 1) - ((~a) ^ 2 + (~b) ^ 2 * (~m + 1)) * csc(~e + ~f * ~x), ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && LtQ(~m, -1))
    @apply_utils Antiderivative(csc(~(e') + ~(f') * ~x) ^ 3 * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m, ~x) => (-(cot(~e + ~f * ~x)) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1)) / (~b * ~f * (~m + 2)) + (1 / (~b * (~m + 2))) * Antiderivative(csc(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~b * (~m + 1) - ~a * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~m], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(LtQ(~m, -1)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => ((~a) ^ 2 * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 2) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * ~n) - (1 / (~d * ~n)) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 3) * (~d * csc(~e + ~f * ~x)) ^ (~n + 1) * Simp(((~a) ^ 2 * ~b * ((~m - 2 * ~n) - 2) - ~a * (3 * (~b) ^ 2 * ~n + (~a) ^ 2 * (~n + 1)) * csc(~e + ~f * ~x)) - ~b * ((~b) ^ 2 * ~n + (~a) ^ 2 * ((~m + ~n) - 1)) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~m, 2) && (IntegerQ(~m) && LtQ(~n, -1) || IntegersQ(~m + 1 / 2, 2 * ~n) && LeQ(~n, -1))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-((~b) ^ 2) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 2) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * ((~m + ~n) - 1)) + (1 / (~d * ((~m + ~n) - 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 3) * (~d * csc(~e + ~f * ~x)) ^ ~n * Simp((~a) ^ 3 * ~d * ((~m + ~n) - 1) + ~a * (~b) ^ 2 * ~d * ~n + ~b * ((~b) ^ 2 * ~d * ((~m + ~n) - 2) + 3 * (~a) ^ 2 * ~d * ((~m + ~n) - 1)) * csc(~e + ~f * ~x) + ~a * (~b) ^ 2 * ~d * ((3 * ~m + 2 * ~n) - 4) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~n], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~m, 2) && ((IntegerQ(~m) || IntegersQ(2 * ~m, 2 * ~n)) && Not(IGtQ(~n, 2) && Not(IntegerQ(~m))))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-(~b) * ~d * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1)) / (~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / ((~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1) * Simp((~b * ~d * (~n - 1) + ~a * ~d * (~m + 1) * csc(~e + ~f * ~x)) - ~b * ~d * (~m + ~n + 1) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1) && (LtQ(0, ~n, 1) && IntegersQ(2 * ~m, 2 * ~n))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (~a * (~d) ^ 2 * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 2)) / (~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) - ((~d) ^ 2 / ((~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 2) * ((~a * (~n - 2) + ~b * (~m + 1) * csc(~e + ~f * ~x)) - ~a * (~m + ~n) * csc(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1) && (LtQ(1, ~n, 2) && IntegersQ(2 * ~m, 2 * ~n))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-((~a) ^ 2) * (~d) ^ 3 * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 3)) / (~b * ~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) + ((~d) ^ 3 / (~b * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 3) * Simp(((~a) ^ 2 * (~n - 3) + ~a * ~b * (~m + 1) * csc(~e + ~f * ~x)) - ((~a) ^ 2 * (~n - 2) + (~b) ^ 2 * (~m + 1)) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1) && (IGtQ(~n, 3) || IntegersQ(~n + 1 / 2, 2 * ~m) && GtQ(~n, 2))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~a * ~f * ~n) - (1 / (~a * ~d * ~n)) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ (~n + 1) * Simp((~b * (~m + ~n + 1) - ~a * (~n + 1) * csc(~e + ~f * ~x)) - ~b * (~m + ~n + 2) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (ILtQ(~m + 1 / 2, 0) && ILtQ(~n, 0)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => ((~b) ^ 2 * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~a * ~f * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / (~a * (~m + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ ~n * ((((~a) ^ 2 * (~m + 1) - (~b) ^ 2 * (~m + ~n + 1)) - ~a * ~b * (~m + 1) * csc(~e + ~f * ~x)) + (~b) ^ 2 * (~m + ~n + 2) * csc(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~n], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~m, -1) && IntegersQ(2 * ~m, 2 * ~n)))
    @apply_utils Antiderivative(sqrt(~(d') * csc(~(e') + ~(f') * ~x)) / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => ((sqrt(~d * sin(~e + ~f * ~x)) * sqrt(~d * csc(~e + ~f * ~x))) / ~d) * Antiderivative(sqrt(~d * sin(~e + ~f * ~x)) / (~b + ~a * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ (3 / 2) / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => ~d * sqrt(~d * sin(~e + ~f * ~x)) * sqrt(~d * csc(~e + ~f * ~x)) * Antiderivative(1 / (sqrt(~d * sin(~e + ~f * ~x)) * (~b + ~a * sin(~e + ~f * ~x))), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ (5 / 2) / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (~d / ~b) * Antiderivative((~d * csc(~e + ~f * ~x)) ^ (3 / 2), ~x) - ((~a * ~d) / ~b) * Antiderivative((~d * csc(~e + ~f * ~x)) ^ (3 / 2) / (~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (-((~d) ^ 3) * cot(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ (~n - 3)) / (~b * ~f * (~n - 2)) + ((~d) ^ 3 / (~b * (~n - 2))) * Antiderivative(((~d * csc(~e + ~f * ~x)) ^ (~n - 3) * Simp((~a * (~n - 3) + ~b * (~n - 3) * csc(~e + ~f * ~x)) - ~a * (~n - 2) * csc(~e + ~f * ~x) ^ 2, ~x)) / (~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && GtQ(~n, 3))
    @apply_utils Antiderivative(1 / (sqrt(~(d') * csc(~(e') + ~(f') * ~x)) * (~a + ~(b') * csc(~(e') + ~(f') * ~x))), ~x) => ((~b) ^ 2 / ((~a) ^ 2 * (~d) ^ 2)) * Antiderivative((~d * csc(~e + ~f * ~x)) ^ (3 / 2) / (~a + ~b * csc(~e + ~f * ~x)), ~x) + (1 / (~a) ^ 2) * Antiderivative((~a - ~b * csc(~e + ~f * ~x)) / sqrt(~d * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n / (~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (cot(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~a * ~f * ~n) - (1 / (~a * ~d * ~n)) * Antiderivative(((~d * csc(~e + ~f * ~x)) ^ (~n + 1) / (~a + ~b * csc(~e + ~f * ~x))) * Simp((~b * ~n - ~a * (~n + 1) * csc(~e + ~f * ~x)) - ~b * (~n + 1) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LeQ(~n, -1) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) * sqrt(~(d') * csc(~(e') + ~(f') * ~x)), ~x) => ~a * Antiderivative(sqrt(~d * csc(~e + ~f * ~x)) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) + (~b / ~d) * Antiderivative((~d * csc(~e + ~f * ~x)) ^ (3 / 2) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-2 * ~d * cos(~e + ~f * ~x) * sqrt(~a + ~b * csc(~e + ~f * ~x)) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1)) / (~f * (2 * ~n - 1)) + ((~d) ^ 2 / (2 * ~n - 1)) * Antiderivative(((~d * csc(~e + ~f * ~x)) ^ (~n - 2) * Simp(2 * ~a * (~n - 2) + ~b * (2 * ~n - 3) * csc(~e + ~f * ~x) + ~a * csc(~e + ~f * ~x) ^ 2, ~x)) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~n, 1) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) / sqrt(~(d') * csc(~(e') + ~(f') * ~x)), ~x) => (sqrt(~a + ~b * csc(~e + ~f * ~x)) / (sqrt(~d * csc(~e + ~f * ~x)) * sqrt(~b + ~a * sin(~e + ~f * ~x)))) * Antiderivative(sqrt(~b + ~a * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (cot(~e + ~f * ~x) * sqrt(~a + ~b * csc(~e + ~f * ~x)) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * ~n) - (1 / (2 * ~d * ~n)) * Antiderivative(((~d * csc(~e + ~f * ~x)) ^ (~n + 1) * Simp((~b - 2 * ~a * (~n + 1) * csc(~e + ~f * ~x)) - ~b * (2 * ~n + 3) * csc(~e + ~f * ~x) ^ 2, ~x)) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LeQ(~n, -1) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative(sqrt(~(d') * csc(~(e') + ~(f') * ~x)) / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => ((sqrt(~d * csc(~e + ~f * ~x)) * sqrt(~b + ~a * sin(~e + ~f * ~x))) / sqrt(~a + ~b * csc(~e + ~f * ~x))) * Antiderivative(1 / sqrt(~b + ~a * sin(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ (3 / 2) / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => ((~d * sqrt(~d * csc(~e + ~f * ~x)) * sqrt(~b + ~a * sin(~e + ~f * ~x))) / sqrt(~a + ~b * csc(~e + ~f * ~x))) * Antiderivative(1 / (sin(~e + ~f * ~x) * sqrt(~b + ~a * sin(~e + ~f * ~x))), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (-2 * (~d) ^ 2 * cos(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ (~n - 2) * sqrt(~a + ~b * csc(~e + ~f * ~x))) / (~b * ~f * (2 * ~n - 3)) + ((~d) ^ 3 / (~b * (2 * ~n - 3))) * Antiderivative(((~d * csc(~e + ~f * ~x)) ^ (~n - 3) / sqrt(~a + ~b * csc(~e + ~f * ~x))) * Simp((2 * ~a * (~n - 3) + ~b * (2 * ~n - 5) * csc(~e + ~f * ~x)) - 2 * ~a * (~n - 2) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~n, 2) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative(1 / (csc(~(e') + ~(f') * ~x) * sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x))), ~x) => (-(cos(~e + ~f * ~x)) * sqrt(~a + ~b * csc(~e + ~f * ~x))) / (~a * ~f) - (~b / (2 * ~a)) * Antiderivative((1 + csc(~e + ~f * ~x) ^ 2) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(1 / (sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)) * sqrt(~(d') * csc(~(e') + ~(f') * ~x))), ~x) => (1 / ~a) * Antiderivative(sqrt(~a + ~b * csc(~e + ~f * ~x)) / sqrt(~d * csc(~e + ~f * ~x)), ~x) - (~b / (~a * ~d)) * Antiderivative(sqrt(~d * csc(~e + ~f * ~x)) / sqrt(~a + ~b * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n / sqrt(~a + ~(b') * csc(~(e') + ~(f') * ~x)), ~x) => (cos(~e + ~f * ~x) * (~d * csc(~e + ~f * ~x)) ^ (~n + 1) * sqrt(~a + ~b * csc(~e + ~f * ~x))) / (~a * ~d * ~f * ~n) + (1 / (2 * ~a * ~d * ~n)) * Antiderivative(((~d * csc(~e + ~f * ~x)) ^ (~n + 1) / sqrt(~a + ~b * csc(~e + ~f * ~x))) * Simp(-(~b) * (2 * ~n + 1) + 2 * ~a * (~n + 1) * csc(~e + ~f * ~x) + ~b * (2 * ~n + 3) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~n, -1) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ (3 / 2) * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (~a * cot(~e + ~f * ~x) * sqrt(~a + ~b * csc(~e + ~f * ~x)) * (~d * csc(~e + ~f * ~x)) ^ ~n) / (~f * ~n) + (1 / (2 * ~d * ~n)) * Antiderivative(((~d * csc(~e + ~f * ~x)) ^ (~n + 1) / sqrt(~a + ~b * csc(~e + ~f * ~x))) * Simp(~a * ~b * (2 * ~n - 1) + 2 * ((~b) ^ 2 * ~n + (~a) ^ 2 * (~n + 1)) * csc(~e + ~f * ~x) + ~a * ~b * (2 * ~n + 3) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LeQ(~n, -1) && IntegersQ(2 * ~n)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-((~d) ^ 3) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m + 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 3)) / (~b * ~f * ((~m + ~n) - 1)) + ((~d) ^ 3 / (~b * ((~m + ~n) - 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ (~n - 3) * Simp((~a * (~n - 3) + ~b * ((~m + ~n) - 2) * csc(~e + ~f * ~x)) - ~a * (~n - 2) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~n, 3) && ((IntegerQ(~n) || IntegersQ(2 * ~m, 2 * ~n)) && Not(IGtQ(~m, 2)))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-(~b) * ~d * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1)) / (~f * ((~m + ~n) - 1)) + (~d / ((~m + ~n) - 1)) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 2) * (~d * csc(~e + ~f * ~x)) ^ (~n - 1) * Simp(~a * ~b * (~n - 1) + ((~b) ^ 2 * ((~m + ~n) - 2) + (~a) ^ 2 * ((~m + ~n) - 1)) * csc(~e + ~f * ~x) + ~a * ~b * ((2 * ~m + ~n) - 2) * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(0, ~m, 2) && (LtQ(0, ~n, 3) && (NeQ((~m + ~n) - 1, 0) && (IntegerQ(~m) || IntegersQ(2 * ~m, 2 * ~n))))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~n, ~x) => (-((~d) ^ 2) * cot(~e + ~f * ~x) * (~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ (~n - 2)) / (~f * ((~m + ~n) - 1)) + ((~d) ^ 2 / (~b * ((~m + ~n) - 1))) * Antiderivative((~a + ~b * csc(~e + ~f * ~x)) ^ (~m - 1) * (~d * csc(~e + ~f * ~x)) ^ (~n - 2) * Simp(~a * ~b * (~n - 2) + (~b) ^ 2 * ((~m + ~n) - 2) * csc(~e + ~f * ~x) + ~a * ~b * ~m * csc(~e + ~f * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(-1, ~m, 2) && (LtQ(1, ~n, 3) && (NeQ((~m + ~n) - 1, 0) && (IntegerQ(~n) || IntegersQ(2 * ~m, 2 * ~n))))))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ (3 / 2) / sqrt(~(d') * csc(~(e') + ~(f') * ~x)), ~x) => ~a * Antiderivative(sqrt(~a + ~b * csc(~e + ~f * ~x)) / sqrt(~d * csc(~e + ~f * ~x)), ~x) + (~b / ~d) * Antiderivative(sqrt(~a + ~b * csc(~e + ~f * ~x)) * sqrt(~d * csc(~e + ~f * ~x)), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~(n') * (~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~(m'), ~x) => sin(~e + ~f * ~x) ^ ~n * (~d * csc(~e + ~f * ~x)) ^ ~n * Antiderivative((~b + ~a * sin(~e + ~f * ~x)) ^ ~m / sin(~e + ~f * ~x) ^ (~m + ~n), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~n], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && IntegerQ(~m))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(e') + ~(f') * ~x)) ^ ~(m') * (~(d') * csc(~(e') + ~(f') * ~x)) ^ ~(n'), ~x) => Unintegrable((~a + ~b * csc(~e + ~f * ~x)) ^ ~m * (~d * csc(~e + ~f * ~x)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n], ~x)
    @apply_utils Antiderivative((~(d') * cos(~(e') + ~(f') * ~x)) ^ ~m * (~(a') + ~(b') * sec(~(e') + ~(f') * ~x)) ^ ~p, ~x) => (~d * cos(~e + ~f * ~x)) ^ FracPart(~m) * (sec(~e + ~f * ~x) / ~d) ^ FracPart(~m) * Antiderivative((sec(~e + ~f * ~x) / ~d) ^ -(~m) * (~a + ~b * sec(~e + ~f * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~p], ~x) && (Not(IntegerQ(~m)) && Not(IntegerQ(~p)))
end
