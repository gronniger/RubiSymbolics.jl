int_rules_3_4 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 3.4*u*(a+b*log(c*(d+e*x^m)^n))^p =#
    @apply_utils Antiderivative((~Pq) ^ ~(m') * log(~u), ~x) => With([C = FullSimplify(((~Pq) ^ ~m * (1 - ~u)) / D(~u, ~x))], C * PolyLog(2, 1 - ~u) <-- FreeQ(C, ~x)) <-- IntegerQ(~m) && (PolyQ(~Pq, ~x) && (RationalFunctionQ(~u, ~x) && LeQ((RationalFunctionExponents(~u, ~x))(2), Expon(~Pq, ~x))))
    @apply_utils Antiderivative(log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p')), ~x) => ~x * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p) - ~e * ~n * ~p * Antiderivative((~x) ^ ~n / (~d + ~e * (~x) ^ ~n), ~x) <-- FreeQ([~c, ~d, ~e, ~n, ~p], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~d + ~(e') / ~x) ^ ~(p'))) ^ ~q, ~x) => ((~e + ~d * ~x) * (~a + ~b * log(~c * (~d + ~e / ~x) ^ ~p)) ^ ~q) / ~d + ((~b * ~e * ~p * ~q) / ~d) * Antiderivative((~a + ~b * log(~c * (~d + ~e / ~x) ^ ~p)) ^ (~q - 1) / ~x, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~p], ~x) && IGtQ(~q, 0)
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~q, ~x) => ~x * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q - ~b * ~e * ~n * ~p * ~q * Antiderivative(((~x) ^ ~n * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ (~q - 1)) / (~d + ~e * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n, ~p], ~x) && (IGtQ(~q, 0) && (EqQ(~q, 1) || IntegerQ(~n)))
    #= Antiderivative(((~a')+(~b')*log((~c')*((~d)+(~e')*(~x)^(~n))^(~p')))^(~q),~x) :=  With([k=Denominator(n)], k*Subst(Antiderivative(x^(k-1)*(a+b*log(c*(d+e*x^(k*n))^p))^q,x),x,x^(1/k))) <--  FreeQ([a,b,c,d,e,p,q],x) && LtQ(-1,n,1) && (GtQ(n,0) || IGtQ(q,0)) =#
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~q, ~x) => With([k = Denominator(~n)], k * Subst(Antiderivative((~x) ^ (k - 1) * (~a + ~b * log(~c * (~d + ~e * (~x) ^ (k * ~n)) ^ ~p)) ^ ~q, ~x), ~x, (~x) ^ (1 / k))) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~p, ~q], ~x) && FractionQ(~n)
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~q, ~x) => Unintegrable((~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~n, ~p, ~q], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~v) ^ ~(p'))) ^ ~(q'), ~x) => Antiderivative((~a + ~b * log(~c * ExpandToSum(~v, ~x) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~p, ~q], ~x) && (BinomialQ(~v, ~x) && Not(BinomialMatchQ(~v, ~x)))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => (1 / ~n) * Subst(Antiderivative((~x) ^ (Simplify((~m + 1) / ~n) - 1) * (~a + ~b * log(~c * (~d + ~e * ~x) ^ ~p)) ^ ~q, ~x), ~x, (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p, ~q], ~x) && (IntegerQ(Simplify((~m + 1) / ~n)) && ((GtQ((~m + 1) / ~n, 0) || IGtQ(~q, 0)) && Not(EqQ(~q, 1) && (ILtQ(~n, 0) && IGtQ(~m, 0)))))
    @apply_utils Antiderivative((~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))), ~x) => ((~f * ~x) ^ (~m + 1) * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p))) / (~f * (~m + 1)) - ((~b * ~e * ~n * ~p) / (~f * (~m + 1))) * Antiderivative(((~x) ^ (~n - 1) * (~f * ~x) ^ (~m + 1)) / (~d + ~e * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~f * ~x) ^ ~m * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => ((~f * ~x) ^ ~m / (~x) ^ ~m) * Antiderivative((~x) ^ ~m * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p, ~q], ~x) && (IntegerQ(Simplify((~m + 1) / ~n)) && (GtQ((~m + 1) / ~n, 0) || IGtQ(~q, 0)))
    @apply_utils Antiderivative((~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~q, ~x) => ((~f * ~x) ^ (~m + 1) * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q) / (~f * (~m + 1)) - ((~b * ~e * ~n * ~p * ~q) / ((~f) ^ ~n * (~m + 1))) * Antiderivative(((~f * ~x) ^ (~m + ~n) * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ (~q - 1)) / (~d + ~e * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p], ~x) && (IGtQ(~q, 1) && (IntegerQ(~n) && NeQ(~m, -1)))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~q, ~x) => With([k = Denominator(~n)], k * Subst(Antiderivative((~x) ^ (k * (~m + 1) - 1) * (~a + ~b * log(~c * (~d + ~e * (~x) ^ (k * ~n)) ^ ~p)) ^ ~q, ~x), ~x, (~x) ^ (1 / k))) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~p, ~q], ~x) && FractionQ(~n)
    @apply_utils Antiderivative((~f * ~x) ^ ~m * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => ((~f * ~x) ^ ~m / (~x) ^ ~m) * Antiderivative((~x) ^ ~m * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~p, ~q], ~x) && FractionQ(~n)
    @apply_utils Antiderivative((~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => Unintegrable((~f * ~x) ^ ~m * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p, ~q], ~x)
    @apply_utils Antiderivative((~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * log(~(c') * (~v) ^ ~(p'))) ^ ~(q'), ~x) => Antiderivative((~f * ~x) ^ ~m * (~a + ~b * log(~c * ExpandToSum(~v, ~x) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~f, ~m, ~p, ~q], ~x) && (BinomialQ(~v, ~x) && Not(BinomialMatchQ(~v, ~x)))
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) / (~(f') + ~(g') * ~x), ~x) => (log(~f + ~g * ~x) * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p))) / ~g - ((~b * ~e * ~n * ~p) / ~g) * Antiderivative(((~x) ^ (~n - 1) * log(~f + ~g * ~x)) / (~d + ~e * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p], ~x) && RationalQ(~n)
    @apply_utils Antiderivative((~(f') + ~(g') * ~x) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))), ~x) => ((~f + ~g * ~x) ^ (~r + 1) * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p))) / (~g * (~r + 1)) - ((~b * ~e * ~n * ~p) / (~g * (~r + 1))) * Antiderivative(((~x) ^ (~n - 1) * (~f + ~g * ~x) ^ (~r + 1)) / (~d + ~e * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p, ~r], ~x) && ((IGtQ(~r, 0) || RationalQ(~n)) && NeQ(~r, -1))
    @apply_utils Antiderivative((~(f') + ~(g') * ~x) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => Unintegrable((~f + ~g * ~x) ^ ~r * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p, ~q, ~r], ~x)
    @apply_utils Antiderivative((~u) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~v) ^ ~(p'))) ^ ~(q'), ~x) => Antiderivative(ExpandToSum(~u, ~x) ^ ~r * (~a + ~b * log(~c * ExpandToSum(~v, ~x) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~p, ~q, ~r], ~x) && (LinearQ(~u, ~x) && (BinomialQ(~v, ~x) && Not(LinearMatchQ(~u, ~x) && BinomialMatchQ(~v, ~x))))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~(f') + ~(g') * ~x) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => Antiderivative(ExpandIntegrand((~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, (~x) ^ ~m * (~f + ~g * ~x) ^ ~r, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p, ~q], ~x) && (IntegerQ(~m) && IntegerQ(~r))
    @apply_utils Antiderivative((~(h') * ~x) ^ ~m * (~(f') + ~(g') * ~x) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~(n')) ^ ~(p'))) ^ ~(q'), ~x) => With([k = Denominator(~m)], (k / ~h) * Subst(Antiderivative((~x) ^ (k * (~m + 1) - 1) * (~f + (~g * (~x) ^ k) / ~h) ^ ~r * (~a + ~b * log(~c * (~d + (~e * (~x) ^ (k * ~n)) / (~h) ^ ~n) ^ ~p)) ^ ~q, ~x), ~x, (~h * ~x) ^ (1 / k))) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~p, ~r], ~x) && (FractionQ(~m) && (IntegerQ(~n) && IntegerQ(~r)))
    @apply_utils Antiderivative((~(h') * ~x) ^ ~(m') * (~(f') + ~(g') * ~x) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => Unintegrable((~h * ~x) ^ ~m * (~f + ~g * ~x) ^ ~r * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~m, ~n, ~p, ~q, ~r], ~x)
    @apply_utils Antiderivative((~(h') * ~x) ^ ~(m') * (~u) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~v) ^ ~(p'))) ^ ~(q'), ~x) => Antiderivative((~h * ~x) ^ ~m * ExpandToSum(~u, ~x) ^ ~r * (~a + ~b * log(~c * ExpandToSum(~v, ~x) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~h, ~m, ~p, ~q, ~r], ~x) && (LinearQ(~u, ~x) && (BinomialQ(~v, ~x) && Not(LinearMatchQ(~u, ~x) && BinomialMatchQ(~v, ~x))))
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) / (~f + ~(g') * (~x) ^ 2), ~x) => With([u = IntHide(1 / (~f + ~g * (~x) ^ 2), ~x)], u * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) - ~b * ~e * ~n * ~p * Antiderivative((u * (~x) ^ (~n - 1)) / (~d + ~e * (~x) ^ ~n), ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p], ~x) && IntegerQ(~n)
    @apply_utils Antiderivative((~f + ~(g') * (~x) ^ ~s) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => With([t = ExpandIntegrand((~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, (~f + ~g * (~x) ^ ~s) ^ ~r, ~x)], Antiderivative(t, ~x) <-- SumQ(t)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p, ~q, ~r, ~s], ~x) && (IntegerQ(~n) && (IGtQ(~q, 0) && (IntegerQ(~r) && (IntegerQ(~s) && (EqQ(~q, 1) || (GtQ(~r, 0) && GtQ(~s, 1) || LtQ(~s, 0) && LtQ(~r, 0)))))))
    @apply_utils Antiderivative((~f + ~(g') * (~x) ^ ~s) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => With([k = Denominator(~n)], k * Subst(Antiderivative((~x) ^ (k - 1) * (~f + ~g * (~x) ^ (k * ~s)) ^ ~r * (~a + ~b * log(~c * (~d + ~e * (~x) ^ (k * ~n)) ^ ~p)) ^ ~q, ~x), ~x, (~x) ^ (1 / k)) <-- IntegerQ(k * ~s)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p, ~q, ~r, ~s], ~x) && FractionQ(~n)
    @apply_utils Antiderivative((~f + ~(g') * (~x) ^ ~s) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => Unintegrable((~f + ~g * (~x) ^ ~s) ^ ~r * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p, ~q, ~r, ~s], ~x)
    @apply_utils Antiderivative((~u) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~v) ^ ~(p'))) ^ ~(q'), ~x) => Antiderivative(ExpandToSum(~u, ~x) ^ ~r * (~a + ~b * log(~c * ExpandToSum(~v, ~x) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~p, ~q, ~r], ~x) && (BinomialQ([~u, ~v], ~x) && Not(BinomialMatchQ([~u, ~v], ~x)))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~f + ~(g') * (~x) ^ ~s) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => (1 / ~n) * Subst(Antiderivative((~x) ^ (Simplify((~m + 1) / ~n) - 1) * (~f + ~g * (~x) ^ (~s / ~n)) ^ ~r * (~a + ~b * log(~c * (~d + ~e * ~x) ^ ~p)) ^ ~q, ~x), ~x, (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~m, ~n, ~p, ~q, ~r, ~s], ~x) && (IntegerQ(~r) && (IntegerQ(~s / ~n) && (IntegerQ(Simplify((~m + 1) / ~n)) && (GtQ((~m + 1) / ~n, 0) || IGtQ(~q, 0)))))
    @apply_utils Antiderivative((~x) ^ ~(m') * (~f + ~(g') * (~x) ^ ~s) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => Antiderivative(ExpandIntegrand((~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, (~x) ^ ~m * (~f + ~g * (~x) ^ ~s) ^ ~r, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~m, ~n, ~p, ~q, ~r, ~s], ~x) && (IGtQ(~q, 0) && (IntegerQ(~m) && (IntegerQ(~r) && IntegerQ(~s))))
    @apply_utils Antiderivative((~f + ~(g') * (~x) ^ ~s) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => With([k = Denominator(~n)], k * Subst(Antiderivative((~x) ^ (k - 1) * (~f + ~g * (~x) ^ (k * ~s)) ^ ~r * (~a + ~b * log(~c * (~d + ~e * (~x) ^ (k * ~n)) ^ ~p)) ^ ~q, ~x), ~x, (~x) ^ (1 / k)) <-- IntegerQ(k * ~s)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p, ~q, ~r, ~s], ~x) && FractionQ(~n)
    @apply_utils Antiderivative((~x) ^ ~(m') * (~f + ~(g') * (~x) ^ ~s) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => (1 / ~n) * Subst(Antiderivative((~x) ^ ((~m + 1 / ~n) - 1) * (~f + ~g * (~x) ^ (~s / ~n)) ^ ~r * (~a + ~b * log(~c * (~d + ~e * ~x) ^ ~p)) ^ ~q, ~x), ~x, (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~m, ~n, ~p, ~q, ~r, ~s], ~x) && (FractionQ(~n) && (IntegerQ(1 / ~n) && IntegerQ(~s / ~n)))
    @apply_utils Antiderivative((~(h') * ~x) ^ ~m * (~(f') + ~(g') * (~x) ^ ~(s')) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~(n')) ^ ~(p'))) ^ ~(q'), ~x) => With([k = Denominator(~m)], (k / ~h) * Subst(Antiderivative((~x) ^ (k * (~m + 1) - 1) * (~f + (~g * (~x) ^ (k * ~s)) / (~h) ^ ~s) ^ ~r * (~a + ~b * log(~c * (~d + (~e * (~x) ^ (k * ~n)) / (~h) ^ ~n) ^ ~p)) ^ ~q, ~x), ~x, (~h * ~x) ^ (1 / k))) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~p, ~r], ~x) && (FractionQ(~m) && (IntegerQ(~n) && IntegerQ(~s)))
    @apply_utils Antiderivative((~(h') * ~x) ^ ~(m') * (~f + ~(g') * (~x) ^ ~s) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => Unintegrable((~h * ~x) ^ ~m * (~f + ~g * (~x) ^ ~s) ^ ~r * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~m, ~n, ~p, ~q, ~r, ~s], ~x)
    @apply_utils Antiderivative((~(h') * ~x) ^ ~(m') * (~u) ^ ~(r') * (~(a') + ~(b') * log(~(c') * (~v) ^ ~(p'))) ^ ~(q'), ~x) => Antiderivative((~h * ~x) ^ ~m * ExpandToSum(~u, ~x) ^ ~r * (~a + ~b * log(~c * ExpandToSum(~v, ~x) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~h, ~m, ~p, ~q, ~r], ~x) && (BinomialQ([~u, ~v], ~x) && Not(BinomialMatchQ([~u, ~v], ~x)))
    @apply_utils Antiderivative((log(~(f') * (~x) ^ ~(q')) ^ ~(m') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p')))) / ~x, ~x) => (log(~f * (~x) ^ ~q) ^ (~m + 1) * (~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p))) / (~q * (~m + 1)) - ((~b * ~e * ~n * ~p) / (~q * (~m + 1))) * Antiderivative(((~x) ^ (~n - 1) * log(~f * (~x) ^ ~q) ^ (~m + 1)) / (~d + ~e * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~m, ~n, ~p, ~q], ~x) && NeQ(~m, -1)
    @apply_utils Antiderivative((~F)(~(f') * ~x) ^ ~(m') * (~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~x) ^ ~n) ^ ~(p'))), ~x) => With([u = IntHide((~F)(~f * ~x) ^ ~m, ~x)], Dist(~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p), u, ~x) - ~b * ~e * ~n * ~p * Antiderivative(SimplifyIntegrand((u * (~x) ^ (~n - 1)) / (~d + ~e * (~x) ^ ~n), ~x), ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~p], ~x) && (MemberQ([asin, acos, asinh, acosh], ~F) && (IGtQ(~m, 0) && IGtQ(~n, 1)))
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~(f') + ~(g') * ~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => (1 / ~g) * Subst(Antiderivative((~a + ~b * log(~c * (~d + ~e * (~x) ^ ~n) ^ ~p)) ^ ~q, ~x), ~x, ~f + ~g * ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p], ~x) && (IGtQ(~q, 0) && (EqQ(~q, 1) || IntegerQ(~n)))
    @apply_utils Antiderivative((~(a') + ~(b') * log(~(c') * (~d + ~(e') * (~(f') + ~(g') * ~x) ^ ~n) ^ ~(p'))) ^ ~(q'), ~x) => Unintegrable((~a + ~b * log(~c * (~d + ~e * (~f + ~g * ~x) ^ ~n) ^ ~p)) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~n, ~p, ~q], ~x)
end
