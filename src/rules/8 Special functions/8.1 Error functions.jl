int_rules_8_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 8.1*Error*functions =#
    @apply_utils Antiderivative(erf(~(a') + ~(b') * ~x), ~x) => ((~a + ~b * ~x) * erf(~a + ~b * ~x)) / ~b + 1 / (~b * sqrt(pi) * ℯ ^ ((~a + ~b * ~x) ^ 2)) <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative(Erfc(~(a') + ~(b') * ~x), ~x) => ((~a + ~b * ~x) * Erfc(~a + ~b * ~x)) / ~b - 1 / (~b * sqrt(pi) * ℯ ^ ((~a + ~b * ~x) ^ 2)) <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative(erfi(~(a') + ~(b') * ~x), ~x) => ((~a + ~b * ~x) * erfi(~a + ~b * ~x)) / ~b - ℯ ^ ((~a + ~b * ~x) ^ 2) / (~b * sqrt(pi)) <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative(erf(~(a') + ~(b') * ~x) ^ 2, ~x) => ((~a + ~b * ~x) * erf(~a + ~b * ~x) ^ 2) / ~b - (4 / sqrt(pi)) * Antiderivative(((~a + ~b * ~x) * erf(~a + ~b * ~x)) / ℯ ^ ((~a + ~b * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative(Erfc(~(a') + ~(b') * ~x) ^ 2, ~x) => ((~a + ~b * ~x) * Erfc(~a + ~b * ~x) ^ 2) / ~b + (4 / sqrt(pi)) * Antiderivative(((~a + ~b * ~x) * Erfc(~a + ~b * ~x)) / ℯ ^ ((~a + ~b * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative(erfi(~(a') + ~(b') * ~x) ^ 2, ~x) => ((~a + ~b * ~x) * erfi(~a + ~b * ~x) ^ 2) / ~b - (4 / sqrt(pi)) * Antiderivative((~a + ~b * ~x) * ℯ ^ ((~a + ~b * ~x) ^ 2) * erfi(~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative(erf(~(a') + ~(b') * ~x) ^ ~n, ~x) => Unintegrable(erf(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~n], ~x) && (NeQ(~n, 1) && NeQ(~n, 2))
    @apply_utils Antiderivative(Erfc(~(a') + ~(b') * ~x) ^ ~n, ~x) => Unintegrable(Erfc(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~n], ~x) && (NeQ(~n, 1) && NeQ(~n, 2))
    @apply_utils Antiderivative(erfi(~(a') + ~(b') * ~x) ^ ~n, ~x) => Unintegrable(erfi(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~n], ~x) && (NeQ(~n, 1) && NeQ(~n, 2))
    @apply_utils Antiderivative(erf(~(b') * ~x) / ~x, ~x) => ((2 * ~b * ~x) / sqrt(pi)) * HypergeometricPFQ([1 / 2, 1 / 2], [3 / 2, 3 / 2], -((~b) ^ 2) * (~x) ^ 2) <-- FreeQ(~b, ~x)
    @apply_utils Antiderivative(Erfc(~(b') * ~x) / ~x, ~x) => log(~x) - Antiderivative(erf(~b * ~x) / ~x, ~x) <-- FreeQ(~b, ~x)
    @apply_utils Antiderivative(erfi(~(b') * ~x) / ~x, ~x) => ((2 * ~b * ~x) / sqrt(pi)) * HypergeometricPFQ([1 / 2, 1 / 2], [3 / 2, 3 / 2], (~b) ^ 2 * (~x) ^ 2) <-- FreeQ(~b, ~x)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * erf(~(a') + ~(b') * ~x), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * erf(~a + ~b * ~x)) / (~d * (~m + 1)) - ((2 * ~b) / (sqrt(pi) * ~d * (~m + 1))) * Antiderivative((~c + ~d * ~x) ^ (~m + 1) / ℯ ^ ((~a + ~b * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * Erfc(~(a') + ~(b') * ~x), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * Erfc(~a + ~b * ~x)) / (~d * (~m + 1)) + ((2 * ~b) / (sqrt(pi) * ~d * (~m + 1))) * Antiderivative((~c + ~d * ~x) ^ (~m + 1) / ℯ ^ ((~a + ~b * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * erfi(~(a') + ~(b') * ~x), ~x) => ((~c + ~d * ~x) ^ (~m + 1) * erfi(~a + ~b * ~x)) / (~d * (~m + 1)) - ((2 * ~b) / (sqrt(pi) * ~d * (~m + 1))) * Antiderivative((~c + ~d * ~x) ^ (~m + 1) * ℯ ^ ((~a + ~b * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~x) ^ ~(m') * erf(~(b') * ~x) ^ 2, ~x) => ((~x) ^ (~m + 1) * erf(~b * ~x) ^ 2) / (~m + 1) - ((4 * ~b) / (sqrt(pi) * (~m + 1))) * Antiderivative((~x) ^ (~m + 1) * ℯ ^ (-((~b) ^ 2) * (~x) ^ 2) * erf(~b * ~x), ~x) <-- FreeQ(~b, ~x) && (IGtQ(~m, 0) || ILtQ((~m + 1) / 2, 0))
    @apply_utils Antiderivative((~x) ^ ~(m') * Erfc(~(b') * ~x) ^ 2, ~x) => ((~x) ^ (~m + 1) * Erfc(~b * ~x) ^ 2) / (~m + 1) + ((4 * ~b) / (sqrt(pi) * (~m + 1))) * Antiderivative((~x) ^ (~m + 1) * ℯ ^ (-((~b) ^ 2) * (~x) ^ 2) * Erfc(~b * ~x), ~x) <-- FreeQ(~b, ~x) && (IGtQ(~m, 0) || ILtQ((~m + 1) / 2, 0))
    @apply_utils Antiderivative((~x) ^ ~(m') * erfi(~(b') * ~x) ^ 2, ~x) => ((~x) ^ (~m + 1) * erfi(~b * ~x) ^ 2) / (~m + 1) - ((4 * ~b) / (sqrt(pi) * (~m + 1))) * Antiderivative((~x) ^ (~m + 1) * ℯ ^ ((~b) ^ 2 * (~x) ^ 2) * erfi(~b * ~x), ~x) <-- FreeQ(~b, ~x) && (IGtQ(~m, 0) || ILtQ((~m + 1) / 2, 0))
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * erf(~a + ~(b') * ~x) ^ 2, ~x) => (1 / (~b) ^ (~m + 1)) * Subst(Antiderivative(ExpandIntegrand(erf(~x) ^ 2, ((~b * ~c - ~a * ~d) + ~d * ~x) ^ ~m, ~x), ~x), ~x, ~a + ~b * ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~m, 0)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * Erfc(~a + ~(b') * ~x) ^ 2, ~x) => (1 / (~b) ^ (~m + 1)) * Subst(Antiderivative(ExpandIntegrand(Erfc(~x) ^ 2, ((~b * ~c - ~a * ~d) + ~d * ~x) ^ ~m, ~x), ~x), ~x, ~a + ~b * ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~m, 0)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * erfi(~a + ~(b') * ~x) ^ 2, ~x) => (1 / (~b) ^ (~m + 1)) * Subst(Antiderivative(ExpandIntegrand(erfi(~x) ^ 2, ((~b * ~c - ~a * ~d) + ~d * ~x) ^ ~m, ~x), ~x), ~x, ~a + ~b * ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~m, 0)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * erf(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => Unintegrable((~c + ~d * ~x) ^ ~m * erf(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m, ~n], ~x)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * Erfc(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => Unintegrable((~c + ~d * ~x) ^ ~m * Erfc(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m, ~n], ~x)
    @apply_utils Antiderivative((~(c') + ~(d') * ~x) ^ ~(m') * erfi(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => Unintegrable((~c + ~d * ~x) ^ ~m * erfi(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~m, ~n], ~x)
    @apply_utils Antiderivative(ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erf(~(b') * ~x) ^ ~(n'), ~x) => ((ℯ ^ ~c * sqrt(pi)) / (2 * ~b)) * Subst(Antiderivative((~x) ^ ~n, ~x), ~x, erf(~b * ~x)) <-- FreeQ([~b, ~c, ~d, ~n], ~x) && EqQ(~d, -((~b) ^ 2))
    @apply_utils Antiderivative(ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * Erfc(~(b') * ~x) ^ ~(n'), ~x) => ((-(ℯ ^ ~c) * sqrt(pi)) / (2 * ~b)) * Subst(Antiderivative((~x) ^ ~n, ~x), ~x, Erfc(~b * ~x)) <-- FreeQ([~b, ~c, ~d, ~n], ~x) && EqQ(~d, -((~b) ^ 2))
    @apply_utils Antiderivative(ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erfi(~(b') * ~x) ^ ~(n'), ~x) => ((ℯ ^ ~c * sqrt(pi)) / (2 * ~b)) * Subst(Antiderivative((~x) ^ ~n, ~x), ~x, erfi(~b * ~x)) <-- FreeQ([~b, ~c, ~d, ~n], ~x) && EqQ(~d, (~b) ^ 2)
    @apply_utils Antiderivative(ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erf(~(b') * ~x), ~x) => ((~b * ℯ ^ ~c * (~x) ^ 2) / sqrt(pi)) * HypergeometricPFQ([1, 1], [3 / 2, 2], (~b) ^ 2 * (~x) ^ 2) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ(~d, (~b) ^ 2)
    @apply_utils Antiderivative(ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * Erfc(~(b') * ~x), ~x) => Antiderivative(ℯ ^ (~c + ~d * (~x) ^ 2), ~x) - Antiderivative(ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ(~d, (~b) ^ 2)
    @apply_utils Antiderivative(ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erfi(~(b') * ~x), ~x) => ((~b * ℯ ^ ~c * (~x) ^ 2) / sqrt(pi)) * HypergeometricPFQ([1, 1], [3 / 2, 2], -((~b) ^ 2) * (~x) ^ 2) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ(~d, -((~b) ^ 2))
    @apply_utils Antiderivative(ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erf(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => Unintegrable(ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x)
    @apply_utils Antiderivative(ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * Erfc(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => Unintegrable(ℯ ^ (~c + ~d * (~x) ^ 2) * Erfc(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x)
    @apply_utils Antiderivative(ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erfi(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => Unintegrable(ℯ ^ (~c + ~d * (~x) ^ 2) * erfi(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x)
    @apply_utils Antiderivative(~x * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erf(~(a') + ~(b') * ~x), ~x) => (ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~a + ~b * ~x)) / (2 * ~d) - (~b / (~d * sqrt(pi))) * Antiderivative(ℯ ^ (((-((~a) ^ 2) + ~c) - 2 * ~a * ~b * ~x) - ((~b) ^ 2 - ~d) * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x)
    @apply_utils Antiderivative(~x * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * Erfc(~(a') + ~(b') * ~x), ~x) => (ℯ ^ (~c + ~d * (~x) ^ 2) * Erfc(~a + ~b * ~x)) / (2 * ~d) + (~b / (~d * sqrt(pi))) * Antiderivative(ℯ ^ (((-((~a) ^ 2) + ~c) - 2 * ~a * ~b * ~x) - ((~b) ^ 2 - ~d) * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x)
    @apply_utils Antiderivative(~x * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erfi(~(a') + ~(b') * ~x), ~x) => (ℯ ^ (~c + ~d * (~x) ^ 2) * erfi(~a + ~b * ~x)) / (2 * ~d) - (~b / (~d * sqrt(pi))) * Antiderivative(ℯ ^ ((~a) ^ 2 + ~c + 2 * ~a * ~b * ~x + ((~b) ^ 2 + ~d) * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x)
    @apply_utils Antiderivative((~x) ^ ~m * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erf(~(a') + ~(b') * ~x), ~x) => (((~x) ^ (~m - 1) * ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~a + ~b * ~x)) / (2 * ~d) - (~b / (~d * sqrt(pi))) * Antiderivative((~x) ^ (~m - 1) * ℯ ^ (((-((~a) ^ 2) + ~c) - 2 * ~a * ~b * ~x) - ((~b) ^ 2 - ~d) * (~x) ^ 2), ~x)) - ((~m - 1) / (2 * ~d)) * Antiderivative((~x) ^ (~m - 2) * ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~m, 1)
    @apply_utils Antiderivative((~x) ^ ~m * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * Erfc(~(a') + ~(b') * ~x), ~x) => (((~x) ^ (~m - 1) * ℯ ^ (~c + ~d * (~x) ^ 2) * Erfc(~a + ~b * ~x)) / (2 * ~d) + (~b / (~d * sqrt(pi))) * Antiderivative((~x) ^ (~m - 1) * ℯ ^ (((-((~a) ^ 2) + ~c) - 2 * ~a * ~b * ~x) - ((~b) ^ 2 - ~d) * (~x) ^ 2), ~x)) - ((~m - 1) / (2 * ~d)) * Antiderivative((~x) ^ (~m - 2) * ℯ ^ (~c + ~d * (~x) ^ 2) * Erfc(~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~m, 1)
    @apply_utils Antiderivative((~x) ^ ~m * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erfi(~(a') + ~(b') * ~x), ~x) => (((~x) ^ (~m - 1) * ℯ ^ (~c + ~d * (~x) ^ 2) * erfi(~a + ~b * ~x)) / (2 * ~d) - (~b / (~d * sqrt(pi))) * Antiderivative((~x) ^ (~m - 1) * ℯ ^ ((~a) ^ 2 + ~c + 2 * ~a * ~b * ~x + ((~b) ^ 2 + ~d) * (~x) ^ 2), ~x)) - ((~m - 1) / (2 * ~d)) * Antiderivative((~x) ^ (~m - 2) * ℯ ^ (~c + ~d * (~x) ^ 2) * erfi(~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~m, 1)
    @apply_utils Antiderivative((ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erf(~(b') * ~x)) / ~x, ~x) => ((2 * ~b * ℯ ^ ~c * ~x) / sqrt(pi)) * HypergeometricPFQ([1 / 2, 1], [3 / 2, 3 / 2], (~b) ^ 2 * (~x) ^ 2) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ(~d, (~b) ^ 2)
    @apply_utils Antiderivative((ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * Erfc(~(b') * ~x)) / ~x, ~x) => Antiderivative(ℯ ^ (~c + ~d * (~x) ^ 2) / ~x, ~x) - Antiderivative((ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~b * ~x)) / ~x, ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ(~d, (~b) ^ 2)
    @apply_utils Antiderivative((ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erfi(~(b') * ~x)) / ~x, ~x) => ((2 * ~b * ℯ ^ ~c * ~x) / sqrt(pi)) * HypergeometricPFQ([1 / 2, 1], [3 / 2, 3 / 2], -((~b) ^ 2) * (~x) ^ 2) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ(~d, -((~b) ^ 2))
    @apply_utils Antiderivative((~x) ^ ~m * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erf(~(a') + ~(b') * ~x), ~x) => (((~x) ^ (~m + 1) * ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~a + ~b * ~x)) / (~m + 1) - ((2 * ~b) / ((~m + 1) * sqrt(pi))) * Antiderivative((~x) ^ (~m + 1) * ℯ ^ (((-((~a) ^ 2) + ~c) - 2 * ~a * ~b * ~x) - ((~b) ^ 2 - ~d) * (~x) ^ 2), ~x)) - ((2 * ~d) / (~m + 1)) * Antiderivative((~x) ^ (~m + 2) * ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && ILtQ(~m, -1)
    @apply_utils Antiderivative((~x) ^ ~m * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * Erfc(~(a') + ~(b') * ~x), ~x) => (((~x) ^ (~m + 1) * ℯ ^ (~c + ~d * (~x) ^ 2) * Erfc(~a + ~b * ~x)) / (~m + 1) + ((2 * ~b) / ((~m + 1) * sqrt(pi))) * Antiderivative((~x) ^ (~m + 1) * ℯ ^ (((-((~a) ^ 2) + ~c) - 2 * ~a * ~b * ~x) - ((~b) ^ 2 - ~d) * (~x) ^ 2), ~x)) - ((2 * ~d) / (~m + 1)) * Antiderivative((~x) ^ (~m + 2) * ℯ ^ (~c + ~d * (~x) ^ 2) * Erfc(~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && ILtQ(~m, -1)
    @apply_utils Antiderivative((~x) ^ ~m * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erfi(~(a') + ~(b') * ~x), ~x) => (((~x) ^ (~m + 1) * ℯ ^ (~c + ~d * (~x) ^ 2) * erfi(~a + ~b * ~x)) / (~m + 1) - ((2 * ~b) / ((~m + 1) * sqrt(pi))) * Antiderivative((~x) ^ (~m + 1) * ℯ ^ ((~a) ^ 2 + ~c + 2 * ~a * ~b * ~x + ((~b) ^ 2 + ~d) * (~x) ^ 2), ~x)) - ((2 * ~d) / (~m + 1)) * Antiderivative((~x) ^ (~m + 2) * ℯ ^ (~c + ~d * (~x) ^ 2) * erfi(~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && ILtQ(~m, -1)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erf(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => Unintegrable((~e * ~x) ^ ~m * ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * Erfc(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => Unintegrable((~e * ~x) ^ ~m * ℯ ^ (~c + ~d * (~x) ^ 2) * Erfc(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * ℯ ^ (~(c') + ~(d') * (~x) ^ 2) * erfi(~(a') + ~(b') * ~x) ^ ~(n'), ~x) => Unintegrable((~e * ~x) ^ ~m * ℯ ^ (~c + ~d * (~x) ^ 2) * erfi(~a + ~b * ~x) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x)
    @apply_utils Antiderivative(erf(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ~x * erf(~d * (~a + ~b * log(~c * (~x) ^ ~n))) - ((2 * ~b * ~d * ~n) / sqrt(pi)) * Antiderivative(1 / ℯ ^ ((~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x)
    @apply_utils Antiderivative(Erfc(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ~x * Erfc(~d * (~a + ~b * log(~c * (~x) ^ ~n))) + ((2 * ~b * ~d * ~n) / sqrt(pi)) * Antiderivative(1 / ℯ ^ ((~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x)
    @apply_utils Antiderivative(erfi(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ~x * erfi(~d * (~a + ~b * log(~c * (~x) ^ ~n))) - ((2 * ~b * ~d * ~n) / sqrt(pi)) * Antiderivative(ℯ ^ ((~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x)
    @apply_utils Antiderivative((~F)(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) / ~x, ~x) => (1 / ~n) * Subst((~F)(~d * (~a + ~b * ~x)), ~x, log(~c * (~x) ^ ~n)) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && MemberQ([erf, Erfc, erfi], ~F)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * erf(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((~e * ~x) ^ (~m + 1) * erf(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / (~e * (~m + 1)) - ((2 * ~b * ~d * ~n) / (sqrt(pi) * (~m + 1))) * Antiderivative((~e * ~x) ^ ~m / ℯ ^ ((~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * Erfc(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((~e * ~x) ^ (~m + 1) * Erfc(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / (~e * (~m + 1)) + ((2 * ~b * ~d * ~n) / (sqrt(pi) * (~m + 1))) * Antiderivative((~e * ~x) ^ ~m / ℯ ^ ((~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * erfi(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((~e * ~x) ^ (~m + 1) * erfi(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / (~e * (~m + 1)) - ((2 * ~b * ~d * ~n) / (sqrt(pi) * (~m + 1))) * Antiderivative((~e * ~x) ^ ~m * ℯ ^ ((~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative(sin(~(c') + ~(d') * (~x) ^ 2) * erf(~(b') * ~x), ~x) => (im / 2) * Antiderivative(ℯ ^ (-im * ~c - im * ~d * (~x) ^ 2) * erf(~b * ~x), ~x) - (im / 2) * Antiderivative(ℯ ^ (im * ~c + im * ~d * (~x) ^ 2) * erf(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, -((~b) ^ 4))
    @apply_utils Antiderivative(sin(~(c') + ~(d') * (~x) ^ 2) * Erfc(~(b') * ~x), ~x) => (im / 2) * Antiderivative(ℯ ^ (-im * ~c - im * ~d * (~x) ^ 2) * Erfc(~b * ~x), ~x) - (im / 2) * Antiderivative(ℯ ^ (im * ~c + im * ~d * (~x) ^ 2) * Erfc(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, -((~b) ^ 4))
    @apply_utils Antiderivative(sin(~(c') + ~(d') * (~x) ^ 2) * erfi(~(b') * ~x), ~x) => (im / 2) * Antiderivative(ℯ ^ (-im * ~c - im * ~d * (~x) ^ 2) * erfi(~b * ~x), ~x) - (im / 2) * Antiderivative(ℯ ^ (im * ~c + im * ~d * (~x) ^ 2) * erfi(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, -((~b) ^ 4))
    @apply_utils Antiderivative(cos(~(c') + ~(d') * (~x) ^ 2) * erf(~(b') * ~x), ~x) => (1 / 2) * Antiderivative(ℯ ^ (-im * ~c - im * ~d * (~x) ^ 2) * erf(~b * ~x), ~x) + (1 / 2) * Antiderivative(ℯ ^ (im * ~c + im * ~d * (~x) ^ 2) * erf(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, -((~b) ^ 4))
    @apply_utils Antiderivative(cos(~(c') + ~(d') * (~x) ^ 2) * Erfc(~(b') * ~x), ~x) => (1 / 2) * Antiderivative(ℯ ^ (-im * ~c - im * ~d * (~x) ^ 2) * Erfc(~b * ~x), ~x) + (1 / 2) * Antiderivative(ℯ ^ (im * ~c + im * ~d * (~x) ^ 2) * Erfc(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, -((~b) ^ 4))
    @apply_utils Antiderivative(cos(~(c') + ~(d') * (~x) ^ 2) * erfi(~(b') * ~x), ~x) => (1 / 2) * Antiderivative(ℯ ^ (-im * ~c - im * ~d * (~x) ^ 2) * erfi(~b * ~x), ~x) + (1 / 2) * Antiderivative(ℯ ^ (im * ~c + im * ~d * (~x) ^ 2) * erfi(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, -((~b) ^ 4))
    @apply_utils Antiderivative(sinh(~(c') + ~(d') * (~x) ^ 2) * erf(~(b') * ~x), ~x) => (1 / 2) * Antiderivative(ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~b * ~x), ~x) - (1 / 2) * Antiderivative(ℯ ^ (-(~c) - ~d * (~x) ^ 2) * erf(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, (~b) ^ 4)
    @apply_utils Antiderivative(sinh(~(c') + ~(d') * (~x) ^ 2) * Erfc(~(b') * ~x), ~x) => (1 / 2) * Antiderivative(ℯ ^ (~c + ~d * (~x) ^ 2) * Erfc(~b * ~x), ~x) - (1 / 2) * Antiderivative(ℯ ^ (-(~c) - ~d * (~x) ^ 2) * Erfc(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, (~b) ^ 4)
    @apply_utils Antiderivative(sinh(~(c') + ~(d') * (~x) ^ 2) * erfi(~(b') * ~x), ~x) => (1 / 2) * Antiderivative(ℯ ^ (~c + ~d * (~x) ^ 2) * erfi(~b * ~x), ~x) - (1 / 2) * Antiderivative(ℯ ^ (-(~c) - ~d * (~x) ^ 2) * erfi(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, (~b) ^ 4)
    @apply_utils Antiderivative(cosh(~(c') + ~(d') * (~x) ^ 2) * erf(~(b') * ~x), ~x) => (1 / 2) * Antiderivative(ℯ ^ (~c + ~d * (~x) ^ 2) * erf(~b * ~x), ~x) + (1 / 2) * Antiderivative(ℯ ^ (-(~c) - ~d * (~x) ^ 2) * erf(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, (~b) ^ 4)
    @apply_utils Antiderivative(cosh(~(c') + ~(d') * (~x) ^ 2) * Erfc(~(b') * ~x), ~x) => (1 / 2) * Antiderivative(ℯ ^ (~c + ~d * (~x) ^ 2) * Erfc(~b * ~x), ~x) + (1 / 2) * Antiderivative(ℯ ^ (-(~c) - ~d * (~x) ^ 2) * Erfc(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, (~b) ^ 4)
    @apply_utils Antiderivative(cosh(~(c') + ~(d') * (~x) ^ 2) * erfi(~(b') * ~x), ~x) => (1 / 2) * Antiderivative(ℯ ^ (~c + ~d * (~x) ^ 2) * erfi(~b * ~x), ~x) + (1 / 2) * Antiderivative(ℯ ^ (-(~c) - ~d * (~x) ^ 2) * erfi(~b * ~x), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~d) ^ 2, (~b) ^ 4)
    @apply_utils Antiderivative((~F)(~(f') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * ~x) ^ ~(n')))), ~x) => (1 / ~e) * Subst(Antiderivative((~F)(~f * (~a + ~b * log(~c * (~x) ^ ~n))), ~x), ~x, ~d + ~e * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && MemberQ([erf, Erfc, erfi, FresnelS, FresnelC, ExpIntegralEi, SinIntegral, CosIntegral, SinhIntegral, CoshIntegral], ~F)
    @apply_utils Antiderivative((~g + ~(h') * ~x) ^ ~(m') * (~F)(~(f') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * ~x) ^ ~(n')))), ~x) => (1 / ~e) * Subst(Antiderivative(((~g * ~x) / ~d) ^ ~m * (~F)(~f * (~a + ~b * log(~c * (~x) ^ ~n))), ~x), ~x, ~d + ~e * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~m, ~n], ~x) && (EqQ(~e * ~f - ~d * ~g, 0) && MemberQ([erf, Erfc, erfi, FresnelS, FresnelC, ExpIntegralEi, SinIntegral, CosIntegral, SinhIntegral, CoshIntegral], ~F))
end
