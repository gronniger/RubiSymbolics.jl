int_rules_7_3_5 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 7.3.5*u*(a+b*arctanh(c+d*x))^p =#
    @apply_utils Antiderivative((~(a') + ~(b') * atanh(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative((~a + ~b * atanh(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * acoth(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative((~a + ~b * acoth(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * atanh(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~a + ~b * atanh(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative((~(a') + ~(b') * acoth(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~a + ~b * acoth(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * atanh(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~f * ~x) / ~d) ^ ~m * (~a + ~b * atanh(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && (EqQ(~d * ~e - ~c * ~f, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acoth(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~f * ~x) / ~d) ^ ~m * (~a + ~b * acoth(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && (EqQ(~d * ~e - ~c * ~f, 0) && IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~m * (~(a') + ~(b') * atanh(~c + ~(d') * ~x)) ^ ~(p'), ~x) => ((~e + ~f * ~x) ^ (~m + 1) * (~a + ~b * atanh(~c + ~d * ~x)) ^ ~p) / (~f * (~m + 1)) - ((~b * ~d * ~p) / (~f * (~m + 1))) * Antiderivative(((~e + ~f * ~x) ^ (~m + 1) * (~a + ~b * atanh(~c + ~d * ~x)) ^ (~p - 1)) / (1 - (~c + ~d * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (IGtQ(~p, 0) && ILtQ(~m, -1))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~m * (~(a') + ~(b') * acoth(~c + ~(d') * ~x)) ^ ~(p'), ~x) => ((~e + ~f * ~x) ^ (~m + 1) * (~a + ~b * acoth(~c + ~d * ~x)) ^ ~p) / (~f * (~m + 1)) - ((~b * ~d * ~p) / (~f * (~m + 1))) * Antiderivative(((~e + ~f * ~x) ^ (~m + 1) * (~a + ~b * acoth(~c + ~d * ~x)) ^ (~p - 1)) / (1 - (~c + ~d * ~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (IGtQ(~p, 0) && ILtQ(~m, -1))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * atanh(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (~a + ~b * atanh(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acoth(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (~a + ~b * acoth(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m], ~x) && IGtQ(~p, 0)
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * atanh(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~e + ~f * ~x) ^ ~m * (~a + ~b * atanh(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * acoth(~c + ~(d') * ~x)) ^ ~p, ~x) => Unintegrable((~e + ~f * ~x) ^ ~m * (~a + ~b * acoth(~c + ~d * ~x)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p], ~x) && Not(IGtQ(~p, 0))
    @apply_utils Antiderivative(atanh(~c + ~(d') * ~x) / (~e + ~(f') * (~x) ^ ~(n')), ~x) => (1 / 2) * Antiderivative(log(1 + ~c + ~d * ~x) / (~e + ~f * (~x) ^ ~n), ~x) - (1 / 2) * Antiderivative(log((1 - ~c) - ~d * ~x) / (~e + ~f * (~x) ^ ~n), ~x) <-- FreeQ([~c, ~d, ~e, ~f], ~x) && RationalQ(~n)
    @apply_utils Antiderivative(acoth(~c + ~(d') * ~x) / (~e + ~(f') * (~x) ^ ~(n')), ~x) => (1 / 2) * Antiderivative(log((1 + ~c + ~d * ~x) / (~c + ~d * ~x)) / (~e + ~f * (~x) ^ ~n), ~x) - (1 / 2) * Antiderivative(log((-1 + ~c + ~d * ~x) / (~c + ~d * ~x)) / (~e + ~f * (~x) ^ ~n), ~x) <-- FreeQ([~c, ~d, ~e, ~f], ~x) && RationalQ(~n)
    @apply_utils Antiderivative(atanh(~c + ~(d') * ~x) / (~e + ~(f') * (~x) ^ ~n), ~x) => Unintegrable(atanh(~c + ~d * ~x) / (~e + ~f * (~x) ^ ~n), ~x) <-- FreeQ([~c, ~d, ~e, ~f, ~n], ~x) && Not(RationalQ(~n))
    @apply_utils Antiderivative(acoth(~c + ~(d') * ~x) / (~e + ~(f') * (~x) ^ ~n), ~x) => Unintegrable(acoth(~c + ~d * ~x) / (~e + ~f * (~x) ^ ~n), ~x) <-- FreeQ([~c, ~d, ~e, ~f, ~n], ~x) && Not(RationalQ(~n))
    @apply_utils Antiderivative((~(A') + ~(B') * ~x + ~(C') * (~x) ^ 2) ^ ~(q') * (~(a') + ~(b') * atanh(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative((-(~C) / (~d) ^ 2 + (~C / (~d) ^ 2) * (~x) ^ 2) ^ ~q * (~a + ~b * atanh(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~A, ~B, ~C, ~p, ~q], ~x) && (EqQ(~B * (1 - (~c) ^ 2) + 2 * ~A * ~c * ~d, 0) && EqQ(2 * ~c * ~C - ~B * ~d, 0))
    @apply_utils Antiderivative((~(A') + ~(B') * ~x + ~(C') * (~x) ^ 2) ^ ~(q') * (~(a') + ~(b') * acoth(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative((~C / (~d) ^ 2 + (~C / (~d) ^ 2) * (~x) ^ 2) ^ ~q * (~a + ~b * acoth(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~A, ~B, ~C, ~p, ~q], ~x) && (EqQ(~B * (1 - (~c) ^ 2) + 2 * ~A * ~c * ~d, 0) && EqQ(2 * ~c * ~C - ~B * ~d, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(A') + ~(B') * ~x + ~(C') * (~x) ^ 2) ^ ~(q') * (~(a') + ~(b') * atanh(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (-(~C) / (~d) ^ 2 + (~C / (~d) ^ 2) * (~x) ^ 2) ^ ~q * (~a + ~b * atanh(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~p, ~q], ~x) && (EqQ(~B * (1 - (~c) ^ 2) + 2 * ~A * ~c * ~d, 0) && EqQ(2 * ~c * ~C - ~B * ~d, 0))
    @apply_utils Antiderivative((~(e') + ~(f') * ~x) ^ ~(m') * (~(A') + ~(B') * ~x + ~(C') * (~x) ^ 2) ^ ~(q') * (~(a') + ~(b') * acoth(~c + ~(d') * ~x)) ^ ~(p'), ~x) => (1 / ~d) * Subst(Antiderivative(((~d * ~e - ~c * ~f) / ~d + (~f * ~x) / ~d) ^ ~m * (-(~C) / (~d) ^ 2 + (~C / (~d) ^ 2) * (~x) ^ 2) ^ ~q * (~a + ~b * acoth(~x)) ^ ~p, ~x), ~x, ~c + ~d * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~A, ~B, ~C, ~m, ~p, ~q], ~x) && (EqQ(~B * (1 - (~c) ^ 2) + 2 * ~A * ~c * ~d, 0) && EqQ(2 * ~c * ~C - ~B * ~d, 0))
end
