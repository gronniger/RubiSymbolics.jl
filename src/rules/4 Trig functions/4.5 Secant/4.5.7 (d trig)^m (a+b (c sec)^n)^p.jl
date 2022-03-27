int_rules_4_5_7 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.5.7*(d*trig)^m*(a+b*(c*sec)^n)^p =#
    @apply_utils Antiderivative(~(u') * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ 2) ^ ~p, ~x) => (~b) ^ ~p * Antiderivative(ActivateTrig(~u * tan(~e + ~f * ~x) ^ (2 * ~p)), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~p], ~x) && (EqQ(~a + ~b, 0) && IntegerQ(~p))
    @apply_utils Antiderivative(~(u') * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ 2) ^ ~p, ~x) => Antiderivative(ActivateTrig(~u * (~b * tan(~e + ~f * ~x) ^ 2) ^ ~p), ~x) <-- FreeQ([~a, ~b, ~e, ~f, ~p], ~x) && EqQ(~a + ~b, 0)
    @apply_utils Antiderivative((~(b') * sec(~(e') + ~(f') * ~x) ^ 2) ^ ~p, ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], ((~b * ff) / ~f) * Subst(Antiderivative((~b + ~b * ff ^ 2 * (~x) ^ 2) ^ (~p - 1), ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~b, ~e, ~f, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative((~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~p, ~x) => (((~b) ^ IntPart(~p) * (~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ FracPart(~p)) / (~c * sec(~e + ~f * ~x)) ^ (~n * FracPart(~p))) * Antiderivative((~c * sec(~e + ~f * ~x)) ^ (~n * ~p), ~x) <-- FreeQ([~b, ~c, ~e, ~f, ~n, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative(tan(~(e') + ~(f') * ~x) ^ ~(m') * (~(b') * sec(~(e') + ~(f') * ~x) ^ 2) ^ ~(p'), ~x) => (~b / (2 * ~f)) * Subst(Antiderivative((-1 + ~x) ^ ((~m - 1) / 2) * (~b * ~x) ^ (~p - 1), ~x), ~x, sec(~e + ~f * ~x) ^ 2) <-- FreeQ([~b, ~e, ~f, ~p], ~x) && (Not(IntegerQ(~p)) && IntegerQ((~m - 1) / 2))
    @apply_utils Antiderivative(~(u') * (~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~p, ~x) => With([ff = FreeFactors(sec(~e + ~f * ~x), ~x)], (((~b * ff ^ ~n) ^ IntPart(~p) * (~b * sec(~e + ~f * ~x) ^ ~n) ^ FracPart(~p)) / (sec(~e + ~f * ~x) / ff) ^ (~n * FracPart(~p))) * Antiderivative(ActivateTrig(~u) * (sec(~e + ~f * ~x) / ff) ^ (~n * ~p), ~x)) <-- FreeQ([~b, ~e, ~f, ~n, ~p], ~x) && (Not(IntegerQ(~p)) && (IntegerQ(~n) && (EqQ(~u, 1) || MatchQ(~u, (~(d') * (~trig)(~e + ~f * ~x)) ^ ~(m') <-- FreeQ([d, m], ~x) && MemberQ([sin, cos, tan, cot, sec, csc], trig)))))
    @apply_utils Antiderivative(~(u') * (~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~p, ~x) => (((~b) ^ IntPart(~p) * (~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ FracPart(~p)) / (~c * sec(~e + ~f * ~x)) ^ (~n * FracPart(~p))) * Antiderivative(ActivateTrig(~u) * (~c * sec(~e + ~f * ~x)) ^ (~n * ~p), ~x) <-- FreeQ([~b, ~c, ~e, ~f, ~n, ~p], ~x) && (Not(IntegerQ(~p)) && (Not(IntegerQ(~n)) && (EqQ(~u, 1) || MatchQ(~u, (~(d') * (~trig)(~e + ~f * ~x)) ^ ~(m') <-- FreeQ([d, m], ~x) && MemberQ([sin, cos, tan, cot, sec, csc], trig)))))
    @apply_utils Antiderivative(1 / (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ 2), ~x) => ~x / ~a - (~b / ~a) * Antiderivative(1 / (~b + ~a * cos(~e + ~f * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && NeQ(~a + ~b, 0)
    @apply_utils Antiderivative((~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ 2) ^ ~p, ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], (ff / ~f) * Subst(Antiderivative((~a + ~b + ~b * ff ^ 2 * (~x) ^ 2) ^ ~p / (1 + ff ^ 2 * (~x) ^ 2), ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~e, ~f, ~p], ~x) && (NeQ(~a + ~b, 0) && NeQ(~p, -1))
    @apply_utils Antiderivative((~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ 4) ^ ~p, ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], (ff / ~f) * Subst(Antiderivative((~a + ~b + 2 * ~b * ff ^ 2 * (~x) ^ 2 + ~b * ff ^ 4 * (~x) ^ 4) ^ ~p / (1 + ff ^ 2 * (~x) ^ 2), ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~e, ~f, ~p], ~x) && IntegerQ(2 * ~p)
    @apply_utils Antiderivative((~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~p, ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], (ff / ~f) * Subst(Antiderivative((~a + ~b * (1 + ff ^ 2 * (~x) ^ 2) ^ (~n / 2)) ^ ~p / (1 + ff ^ 2 * (~x) ^ 2), ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~e, ~f, ~p], ~x) && (IntegerQ(~n / 2) && IGtQ(~p, -2))
    @apply_utils Antiderivative((~a + ~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~p, ~x) => Unintegrable((~a + ~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~e, ~f, ~n, ~p], ~x)
    @apply_utils Antiderivative(sin(~(e') + ~(f') * ~x) ^ ~m * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~(p'), ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], (ff ^ (~m + 1) / ~f) * Subst(Antiderivative(((~x) ^ ~m * ExpandToSum(~a + ~b * (1 + ff ^ 2 * (~x) ^ 2) ^ (~n / 2), ~x) ^ ~p) / (1 + ff ^ 2 * (~x) ^ 2) ^ (~m / 2 + 1), ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~e, ~f, ~p], ~x) && (IntegerQ(~m / 2) && IntegerQ(~n / 2))
    @apply_utils Antiderivative(sin(~(e') + ~(f') * ~x) ^ ~(m') * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~(p'), ~x) => With([ff = FreeFactors(cos(~e + ~f * ~x), ~x)], (-ff / ~f) * Subst(Antiderivative(((1 - ff ^ 2 * (~x) ^ 2) ^ ((~m - 1) / 2) * (~b + ~a * (ff * ~x) ^ ~n) ^ ~p) / (ff * ~x) ^ (~n * ~p), ~x), ~x, cos(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (IntegerQ((~m - 1) / 2) && (IntegerQ(~n) && IntegerQ(~p)))
    @apply_utils Antiderivative(sin(~(e') + ~(f') * ~x) ^ ~(m') * (~a + ~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~(p'), ~x) => With([ff = FreeFactors(cos(~e + ~f * ~x), ~x)], (1 / (~f * ff ^ ~m)) * Subst(Antiderivative(((-1 + ff ^ 2 * (~x) ^ 2) ^ ((~m - 1) / 2) * (~a + ~b * (~c * ff * ~x) ^ ~n) ^ ~p) / (~x) ^ (~m + 1), ~x), ~x, sec(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~c, ~e, ~f, ~n, ~p], ~x) && (IntegerQ((~m - 1) / 2) && (GtQ(~m, 0) || (EqQ(~n, 2) || EqQ(~n, 4))))
    @apply_utils Antiderivative((~(d') * sin(~(e') + ~(f') * ~x)) ^ ~(m') * (~a + ~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~(p'), ~x) => Unintegrable((~d * sin(~e + ~f * ~x)) ^ ~m * (~a + ~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p], ~x)
    @apply_utils Antiderivative((~(d') * cos(~(e') + ~(f') * ~x)) ^ ~m * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~(n')) ^ ~(p'), ~x) => (~d) ^ (~n * ~p) * Antiderivative((~d * cos(~e + ~f * ~x)) ^ (~m - ~n * ~p) * (~b + ~a * cos(~e + ~f * ~x) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~n, ~p], ~x) && (Not(IntegerQ(~m)) && IntegersQ(~n, ~p))
    @apply_utils Antiderivative((~(d') * cos(~(e') + ~(f') * ~x)) ^ ~m * (~a + ~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~p, ~x) => (~d * cos(~e + ~f * ~x)) ^ FracPart(~m) * (sec(~e + ~f * ~x) / ~d) ^ FracPart(~m) * Antiderivative((sec(~e + ~f * ~x) / ~d) ^ -(~m) * (~a + ~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p], ~x) && Not(IntegerQ(~m))
    @apply_utils Antiderivative(tan(~(e') + ~(f') * ~x) ^ ~(m') * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~(p'), ~x) => Module([ff = FreeFactors(cos(~e + ~f * ~x), ~x)], (-1 / (~f * ff ^ ((~m + ~n * ~p) - 1))) * Subst(Antiderivative(((1 - ff ^ 2 * (~x) ^ 2) ^ ((~m - 1) / 2) * (~b + ~a * (ff * ~x) ^ ~n) ^ ~p) / (~x) ^ (~m + ~n * ~p), ~x), ~x, cos(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~e, ~f, ~n], ~x) && (IntegerQ((~m - 1) / 2) && (IntegerQ(~n) && IntegerQ(~p)))
    @apply_utils Antiderivative(tan(~(e') + ~(f') * ~x) ^ ~(m') * (~a + ~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~(p'), ~x) => With([ff = FreeFactors(sec(~e + ~f * ~x), ~x)], (1 / ~f) * Subst(Antiderivative(((-1 + ff ^ 2 * (~x) ^ 2) ^ ((~m - 1) / 2) * (~a + ~b * (~c * ff * ~x) ^ ~n) ^ ~p) / ~x, ~x), ~x, sec(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~c, ~e, ~f, ~n, ~p], ~x) && (IntegerQ((~m - 1) / 2) && (GtQ(~m, 0) || (EqQ(~n, 2) || (EqQ(~n, 4) || (IGtQ(~p, 0) || IntegersQ(2 * ~n, ~p))))))
    @apply_utils Antiderivative((~(d') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(b') * sec(~(e') + ~(f') * ~x) ^ 2) ^ ~(p'), ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], ((~b * ff) / ~f) * Subst(Antiderivative((~d * ff * ~x) ^ ~m * (~b + ~b * ff ^ 2 * (~x) ^ 2) ^ (~p - 1), ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~b, ~d, ~e, ~f, ~m, ~p], ~x)
    @apply_utils Antiderivative((~(d') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~(p'), ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], (ff / ~f) * Subst(Antiderivative(((~d * ff * ~x) ^ ~m * (~a + ~b * (1 + ff ^ 2 * (~x) ^ 2) ^ (~n / 2)) ^ ~p) / (1 + ff ^ 2 * (~x) ^ 2), ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~d, ~e, ~f, ~m, ~p], ~x) && (IntegerQ(~n / 2) && (IntegerQ(~m / 2) || EqQ(~n, 2)))
    @apply_utils Antiderivative((~(d') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~(p'), ~x) => (~d * (~d * tan(~e + ~f * ~x)) ^ (~m - 1) * (~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p) / (~f * ((~p * ~n + ~m) - 1)) - (((~d) ^ 2 * (~m - 1)) / ((~p * ~n + ~m) - 1)) * Antiderivative((~d * tan(~e + ~f * ~x)) ^ (~m - 2) * (~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p, ~x) <-- FreeQ([~b, ~c, ~d, ~e, ~f, ~p, ~n], ~x) && (GtQ(~m, 1) && (NeQ((~p * ~n + ~m) - 1, 0) && IntegersQ(2 * ~p * ~n, 2 * ~m)))
    @apply_utils Antiderivative((~(d') * tan(~(e') + ~(f') * ~x)) ^ ~m * (~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~(p'), ~x) => ((~d * tan(~e + ~f * ~x)) ^ (~m + 1) * (~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p) / (~d * ~f * (~m + 1)) - ((~p * ~n + ~m + 1) / ((~d) ^ 2 * (~m + 1))) * Antiderivative((~d * tan(~e + ~f * ~x)) ^ (~m + 2) * (~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p, ~x) <-- FreeQ([~b, ~c, ~d, ~e, ~f, ~p, ~n], ~x) && (LtQ(~m, -1) && (NeQ(~p * ~n + ~m + 1, 0) && IntegersQ(2 * ~p * ~n, 2 * ~m)))
    @apply_utils Antiderivative((~(d') * tan(~(e') + ~(f') * ~x)) ^ ~(m') * (~a + ~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~(p'), ~x) => Unintegrable((~d * tan(~e + ~f * ~x)) ^ ~m * (~a + ~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p], ~x)
    @apply_utils Antiderivative((~(d') * cot(~(e') + ~(f') * ~x)) ^ ~m * (~a + ~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~p, ~x) => (~d * cot(~e + ~f * ~x)) ^ FracPart(~m) * (tan(~e + ~f * ~x) / ~d) ^ FracPart(~m) * Antiderivative((tan(~e + ~f * ~x) / ~d) ^ -(~m) * (~a + ~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p], ~x) && Not(IntegerQ(~m))
    @apply_utils Antiderivative(sec(~(e') + ~(f') * ~x) ^ ~m * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~p, ~x) => With([ff = FreeFactors(tan(~e + ~f * ~x), ~x)], (ff / ~f) * Subst(Antiderivative((1 + ff ^ 2 * (~x) ^ 2) ^ (~m / 2 - 1) * ExpandToSum(~a + ~b * (1 + ff ^ 2 * (~x) ^ 2) ^ (~n / 2), ~x) ^ ~p, ~x), ~x, tan(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~e, ~f, ~p], ~x) && (IntegerQ(~m / 2) && IntegerQ(~n / 2))
    @apply_utils Antiderivative(sec(~(e') + ~(f') * ~x) ^ ~(m') * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~p, ~x) => With([ff = FreeFactors(sin(~e + ~f * ~x), ~x)], (ff / ~f) * Subst(Antiderivative(ExpandToSum(~b + ~a * (1 - ff ^ 2 * (~x) ^ 2) ^ (~n / 2), ~x) ^ ~p / (1 - ff ^ 2 * (~x) ^ 2) ^ ((~m + ~n * ~p + 1) / 2), ~x), ~x, sin(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && (IntegerQ((~m - 1) / 2) && (IntegerQ(~n / 2) && IntegerQ(~p)))
    @apply_utils Antiderivative(sec(~(e') + ~(f') * ~x) ^ ~(m') * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~p, ~x) => With([ff = FreeFactors(sin(~e + ~f * ~x), ~x)], (ff / ~f) * Subst(Antiderivative((~a + ~b / (1 - ff ^ 2 * (~x) ^ 2) ^ (~n / 2)) ^ ~p / (1 - ff ^ 2 * (~x) ^ 2) ^ ((~m + 1) / 2), ~x), ~x, sin(~e + ~f * ~x) / ff)) <-- FreeQ([~a, ~b, ~e, ~f, ~p], ~x) && (IntegerQ((~m - 1) / 2) && (IntegerQ(~n / 2) && Not(IntegerQ(~p))))
    @apply_utils Antiderivative(sec(~(e') + ~(f') * ~x) ^ ~(m') * (~a + ~(b') * sec(~(e') + ~(f') * ~x) ^ ~n) ^ ~p, ~x) => Antiderivative(ExpandTrig(sec(~e + ~f * ~x) ^ ~m * (~a + ~b * sec(~e + ~f * ~x) ^ ~n) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~e, ~f], ~x) && IntegersQ(~m, ~n, ~p)
    @apply_utils Antiderivative((~(d') * sec(~(e') + ~(f') * ~x)) ^ ~(m') * (~a + ~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~(p'), ~x) => Unintegrable((~d * sec(~e + ~f * ~x)) ^ ~m * (~a + ~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p], ~x)
    @apply_utils Antiderivative((~(d') * csc(~(e') + ~(f') * ~x)) ^ ~m * (~a + ~(b') * (~(c') * sec(~(e') + ~(f') * ~x)) ^ ~n) ^ ~p, ~x) => (~d * csc(~e + ~f * ~x)) ^ FracPart(~m) * (sin(~e + ~f * ~x) / ~d) ^ FracPart(~m) * Antiderivative((sin(~e + ~f * ~x) / ~d) ^ -(~m) * (~a + ~b * (~c * sec(~e + ~f * ~x)) ^ ~n) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p], ~x) && Not(IntegerQ(~m))
end
