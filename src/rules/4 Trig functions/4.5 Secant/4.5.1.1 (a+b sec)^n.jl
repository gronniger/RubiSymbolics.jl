int_rules_4_5_1_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.5.1.1*(a+b*sec)^n =#
    @apply_utils Antiderivative(csc(~(c') + ~(d') * ~x) ^ ~n, ~x) => (-1 / ~d) * Subst(Antiderivative(ExpandIntegrand((1 + (~x) ^ 2) ^ (~n / 2 - 1), ~x), ~x), ~x, cot(~c + ~d * ~x)) <-- FreeQ([~c, ~d], ~x) && IGtQ(~n / 2, 0)
    @apply_utils Antiderivative((~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (-(~b) * cos(~c + ~d * ~x) * (~b * csc(~c + ~d * ~x)) ^ (~n - 1)) / (~d * (~n - 1)) + (((~b) ^ 2 * (~n - 2)) / (~n - 1)) * Antiderivative((~b * csc(~c + ~d * ~x)) ^ (~n - 2), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && (GtQ(~n, 1) && IntegerQ(2 * ~n))
    @apply_utils Antiderivative((~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (cos(~c + ~d * ~x) * (~b * csc(~c + ~d * ~x)) ^ (~n + 1)) / (~b * ~d * ~n) + ((~n + 1) / ((~b) ^ 2 * ~n)) * Antiderivative((~b * csc(~c + ~d * ~x)) ^ (~n + 2), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && (LtQ(~n, -1) && IntegerQ(2 * ~n))
    @apply_utils Antiderivative(csc(~(c') + ~(d') * ~x), ~x) => -(atanh(cos(~c + ~d * ~x))) / ~d <-- FreeQ([~c, ~d], ~x)
    #= Antiderivative(1/csc((~c')+(~d')*(~x)),~x) := -cos(c+d*x)/d <--  FreeQ([c,d],x) =#
    @apply_utils Antiderivative((~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~b * csc(~c + ~d * ~x)) ^ ~n * sin(~c + ~d * ~x) ^ ~n * Antiderivative(1 / sin(~c + ~d * ~x) ^ ~n, ~x) <-- FreeQ([~b, ~c, ~d], ~x) && EqQ((~n) ^ 2, 1 / 4)
    @apply_utils Antiderivative((~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~b * csc(~c + ~d * ~x)) ^ (~n - 1) * ((sin(~c + ~d * ~x) / ~b) ^ (~n - 1) * Antiderivative(1 / (sin(~c + ~d * ~x) / ~b) ^ ~n, ~x)) <-- FreeQ([~b, ~c, ~d, ~n], ~x) && Not(IntegerQ(~n))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(c') + ~(d') * ~x)) ^ 2, ~x) => (~a) ^ 2 * ~x + 2 * ~a * ~b * Antiderivative(csc(~c + ~d * ~x), ~x) + (~b) ^ 2 * Antiderivative(csc(~c + ~d * ~x) ^ 2, ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x)
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(c') + ~(d') * ~x)), ~x) => ((-2 * ~b) / ~d) * Subst(Antiderivative(1 / (~a + (~x) ^ 2), ~x), ~x, (~b * cot(~c + ~d * ~x)) / sqrt(~a + ~b * csc(~c + ~d * ~x))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~a + ~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (-((~b) ^ 2) * cot(~c + ~d * ~x) * (~a + ~b * csc(~c + ~d * ~x)) ^ (~n - 2)) / (~d * (~n - 1)) + (~a / (~n - 1)) * Antiderivative((~a + ~b * csc(~c + ~d * ~x)) ^ (~n - 2) * (~a * (~n - 1) + ~b * (3 * ~n - 4) * csc(~c + ~d * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~n, 1) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * csc(~(c') + ~(d') * ~x)), ~x) => (1 / ~a) * Antiderivative(sqrt(~a + ~b * csc(~c + ~d * ~x)), ~x) - (~b / ~a) * Antiderivative(csc(~c + ~d * ~x) / sqrt(~a + ~b * csc(~c + ~d * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && EqQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~a + ~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (-(cot(~c + ~d * ~x)) * (~a + ~b * csc(~c + ~d * ~x)) ^ ~n) / (~d * (2 * ~n + 1)) + (1 / ((~a) ^ 2 * (2 * ~n + 1))) * Antiderivative((~a + ~b * csc(~c + ~d * ~x)) ^ (~n + 1) * (~a * (2 * ~n + 1) - ~b * (~n + 1) * csc(~c + ~d * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (LeQ(~n, -1) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (((~a) ^ ~n * cot(~c + ~d * ~x)) / (~d * sqrt(1 + csc(~c + ~d * ~x)) * sqrt(1 - csc(~c + ~d * ~x)))) * Subst(Antiderivative((1 + (~b * ~x) / ~a) ^ (~n - 1 / 2) / (~x * sqrt(1 - (~b * ~x) / ~a)), ~x), ~x, csc(~c + ~d * ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (Not(IntegerQ(2 * ~n)) && GtQ(~a, 0)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (((~a) ^ IntPart(~n) * (~a + ~b * csc(~c + ~d * ~x)) ^ FracPart(~n)) / (1 + (~b / ~a) * csc(~c + ~d * ~x)) ^ FracPart(~n)) * Antiderivative((1 + (~b / ~a) * csc(~c + ~d * ~x)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (EqQ((~a) ^ 2 - (~b) ^ 2, 0) && (Not(IntegerQ(2 * ~n)) && Not(GtQ(~a, 0))))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * csc(~(c') + ~(d') * ~x)), ~x) => ((2 * (~a + ~b * csc(~c + ~d * ~x))) / (~d * Rt(~a + ~b, 2) * cot(~c + ~d * ~x))) * sqrt((~b * (1 + csc(~c + ~d * ~x))) / (~a + ~b * csc(~c + ~d * ~x))) * sqrt((-(~b) * (1 - csc(~c + ~d * ~x))) / (~a + ~b * csc(~c + ~d * ~x))) * Elliptic.Pi(~a / (~a + ~b), asin(Rt(~a + ~b, 2) / sqrt(~a + ~b * csc(~c + ~d * ~x))), (~a - ~b) / (~a + ~b)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~a + ~(b') * csc(~(c') + ~(d') * ~x)) ^ (3 / 2), ~x) => Antiderivative(((~a) ^ 2 + ~b * (2 * ~a - ~b) * csc(~c + ~d * ~x)) / sqrt(~a + ~b * csc(~c + ~d * ~x)), ~x) + (~b) ^ 2 * Antiderivative((csc(~c + ~d * ~x) * (1 + csc(~c + ~d * ~x))) / sqrt(~a + ~b * csc(~c + ~d * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~a + ~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (-((~b) ^ 2) * cot(~c + ~d * ~x) * (~a + ~b * csc(~c + ~d * ~x)) ^ (~n - 2)) / (~d * (~n - 1)) + (1 / (~n - 1)) * Antiderivative((~a + ~b * csc(~c + ~d * ~x)) ^ (~n - 3) * Simp((~a) ^ 3 * (~n - 1) + (~b * ((~b) ^ 2 * (~n - 2) + 3 * (~a) ^ 2 * (~n - 1))) * csc(~c + ~d * ~x) + (~a * (~b) ^ 2 * (3 * ~n - 4)) * csc(~c + ~d * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (GtQ(~n, 2) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative(1 / (~a + ~(b') * csc(~(c') + ~(d') * ~x)), ~x) => ~x / ~a - (1 / ~a) * Antiderivative(1 / (1 + (~a / ~b) * sin(~c + ~d * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative(1 / sqrt(~a + ~(b') * csc(~(c') + ~(d') * ~x)), ~x) => ((2 * Rt(~a + ~b, 2)) / (~a * ~d * cot(~c + ~d * ~x))) * sqrt((~b * (1 - csc(~c + ~d * ~x))) / (~a + ~b)) * sqrt((-(~b) * (1 + csc(~c + ~d * ~x))) / (~a - ~b)) * Elliptic.Pi((~a + ~b) / ~a, asin(sqrt(~a + ~b * csc(~c + ~d * ~x)) / Rt(~a + ~b, 2)), (~a + ~b) / (~a - ~b)) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ((~a) ^ 2 - (~b) ^ 2, 0)
    @apply_utils Antiderivative((~a + ~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => ((~b) ^ 2 * cot(~c + ~d * ~x) * (~a + ~b * csc(~c + ~d * ~x)) ^ (~n + 1)) / (~a * ~d * (~n + 1) * ((~a) ^ 2 - (~b) ^ 2)) + (1 / (~a * (~n + 1) * ((~a) ^ 2 - (~b) ^ 2))) * Antiderivative((~a + ~b * csc(~c + ~d * ~x)) ^ (~n + 1) * Simp((((~a) ^ 2 - (~b) ^ 2) * (~n + 1) - ~a * ~b * (~n + 1) * csc(~c + ~d * ~x)) + (~b) ^ 2 * (~n + 2) * csc(~c + ~d * ~x) ^ 2, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && (LtQ(~n, -1) && IntegerQ(2 * ~n)))
    @apply_utils Antiderivative((~a + ~(b') * csc(~(c') + ~(d') * ~x)) ^ ~n, ~x) => Unintegrable((~a + ~b * csc(~c + ~d * ~x)) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (NeQ((~a) ^ 2 - (~b) ^ 2, 0) && Not(IntegerQ(2 * ~n)))
end
