int_rules_1_1_3_5 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 1.1.3.5*(a+b*x^n)^p*(c+d*x^n)^q*(e+f*x^n)^r =#
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q') * (~e + ~(f') * (~x) ^ ~n) ^ ~(r'), ~x) => Antiderivative(ExpandIntegrand((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q * (~e + ~f * (~x) ^ ~n) ^ ~r, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && (IGtQ(~p, 0) && (IGtQ(~q, 0) && IGtQ(~r, 0)))
    @apply_utils Antiderivative((~e + ~(f') * (~x) ^ ~n) / ((~a + ~(b') * (~x) ^ ~n) * (~c + ~(d') * (~x) ^ ~n)), ~x) => ((~b * ~e - ~a * ~f) / (~b * ~c - ~a * ~d)) * Antiderivative(1 / (~a + ~b * (~x) ^ ~n), ~x) - ((~d * ~e - ~c * ~f) / (~b * ~c - ~a * ~d)) * Antiderivative(1 / (~c + ~d * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x)
    @apply_utils Antiderivative((~e + ~(f') * (~x) ^ ~n) / ((~a + ~(b') * (~x) ^ ~n) * sqrt(~c + ~(d') * (~x) ^ ~n)), ~x) => (~f / ~b) * Antiderivative(1 / sqrt(~c + ~d * (~x) ^ ~n), ~x) + ((~b * ~e - ~a * ~f) / ~b) * Antiderivative(1 / ((~a + ~b * (~x) ^ ~n) * sqrt(~c + ~d * (~x) ^ ~n)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x)
    @apply_utils Antiderivative((~e + ~(f') * (~x) ^ ~n) / (sqrt(~a + ~(b') * (~x) ^ ~n) * sqrt(~c + ~(d') * (~x) ^ ~n)), ~x) => (~f / ~b) * Antiderivative(sqrt(~a + ~b * (~x) ^ ~n) / sqrt(~c + ~d * (~x) ^ ~n), ~x) + ((~b * ~e - ~a * ~f) / ~b) * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ ~n) * sqrt(~c + ~d * (~x) ^ ~n)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && Not(EqQ(~n, 2) && (PosQ(~b / ~a) && PosQ(~d / ~c) || NegQ(~b / ~a) && (PosQ(~d / ~c) || GtQ(~a, 0) && (Not(GtQ(~c, 0)) || SimplerSqrtQ(-(~b) / ~a, -(~d) / ~c)))))
    @apply_utils Antiderivative((~e + ~(f') * (~x) ^ 2) / (sqrt(~a + ~(b') * (~x) ^ 2) * (~c + ~(d') * (~x) ^ 2) ^ (3 / 2)), ~x) => ((~b * ~e - ~a * ~f) / (~b * ~c - ~a * ~d)) * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) - ((~d * ~e - ~c * ~f) / (~b * ~c - ~a * ~d)) * Antiderivative(sqrt(~a + ~b * (~x) ^ 2) / (~c + ~d * (~x) ^ 2) ^ (3 / 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (PosQ(~b / ~a) && PosQ(~d / ~c))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~(q') * (~e + ~(f') * (~x) ^ ~n), ~x) => (-((~b * ~e - ~a * ~f)) * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ ~q) / (~a * ~b * ~n * (~p + 1)) + (1 / (~a * ~b * ~n * (~p + 1))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q - 1) * Simp(~c * ((~b * ~e * ~n * (~p + 1) + ~b * ~e) - ~a * ~f) + ~d * (~b * ~e * ~n * (~p + 1) + (~b * ~e - ~a * ~f) * (~n * ~q + 1)) * (~x) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n], ~x) && (LtQ(~p, -1) && GtQ(~q, 0))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~(q') * (~e + ~(f') * (~x) ^ ~n), ~x) => (-((~b * ~e - ~a * ~f)) * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q + 1)) / (~a * ~n * (~b * ~c - ~a * ~d) * (~p + 1)) + (1 / (~a * ~n * (~b * ~c - ~a * ~d) * (~p + 1))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ ~q * Simp(~c * (~b * ~e - ~a * ~f) + ~e * ~n * (~b * ~c - ~a * ~d) * (~p + 1) + ~d * (~b * ~e - ~a * ~f) * (~n * (~p + ~q + 2) + 1) * (~x) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~q], ~x) && LtQ(~p, -1)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q') * (~e + ~(f') * (~x) ^ ~n), ~x) => (~f * ~x * (~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ ~q) / (~b * (~n * (~p + ~q + 1) + 1)) + (1 / (~b * (~n * (~p + ~q + 1) + 1))) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ (~q - 1) * Simp(~c * ((~b * ~e - ~a * ~f) + ~b * ~e * ~n * (~p + ~q + 1)) + (~d * (~b * ~e - ~a * ~f) + ~f * ~n * ~q * (~b * ~c - ~a * ~d) + ~b * ~d * ~e * ~n * (~p + ~q + 1)) * (~x) ^ ~n, ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p], ~x) && (GtQ(~q, 0) && NeQ(~n * (~p + ~q + 1) + 1, 0))
    @apply_utils Antiderivative((~e + ~(f') * (~x) ^ 4) / ((~a + ~(b') * (~x) ^ 4) ^ (3 / 4) * (~c + ~(d') * (~x) ^ 4)), ~x) => ((~b * ~e - ~a * ~f) / (~b * ~c - ~a * ~d)) * Antiderivative(1 / (~a + ~b * (~x) ^ 4) ^ (3 / 4), ~x) - ((~d * ~e - ~c * ~f) / (~b * ~c - ~a * ~d)) * Antiderivative((~a + ~b * (~x) ^ 4) ^ (1 / 4) / (~c + ~d * (~x) ^ 4), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x)
    @apply_utils Antiderivative(((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~e + ~(f') * (~x) ^ ~n)) / (~c + ~(d') * (~x) ^ ~n), ~x) => (~f / ~d) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p, ~x) + ((~d * ~e - ~c * ~f) / ~d) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p / (~c + ~d * (~x) ^ ~n), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~p, ~n], ~x)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q') * (~e + ~(f') * (~x) ^ ~n), ~x) => ~e * Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q, ~x) + ~f * Antiderivative((~x) ^ ~n * (~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p, ~q], ~x)
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) * (~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => (~b / (~b * ~c - ~a * ~d)) * Antiderivative(1 / ((~a + ~b * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) - (~d / (~b * ~c - ~a * ~d)) * Antiderivative(1 / ((~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x)
    @apply_utils Antiderivative(1 / ((~x) ^ 2 * (~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => (1 / ~c) * Antiderivative(1 / ((~x) ^ 2 * sqrt(~e + ~f * (~x) ^ 2)), ~x) - (~d / ~c) * Antiderivative(1 / ((~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) <-- FreeQ([~c, ~d, ~e, ~f], ~x) && NeQ(~d * ~e - ~c * ~f, 0)
    @apply_utils Antiderivative((sqrt(~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)) / (~a + ~(b') * (~x) ^ 2), ~x) => (~d / ~b) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / sqrt(~c + ~d * (~x) ^ 2), ~x) + ((~b * ~c - ~a * ~d) / ~b) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / ((~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (GtQ(~d / ~c, 0) && (GtQ(~f / ~e, 0) && Not(SimplerSqrtQ(~d / ~c, ~f / ~e))))
    @apply_utils Antiderivative((sqrt(~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)) / (~a + ~(b') * (~x) ^ 2), ~x) => (~d / ~b) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / sqrt(~c + ~d * (~x) ^ 2), ~x) + ((~b * ~c - ~a * ~d) / ~b) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / ((~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && Not(SimplerSqrtQ(-(~f) / ~e, -(~d) / ~c))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => (-(~f) / (~b * ~e - ~a * ~f)) * Antiderivative(1 / (sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) + (~b / (~b * ~e - ~a * ~f)) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / ((~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (GtQ(~d / ~c, 0) && (GtQ(~f / ~e, 0) && Not(SimplerSqrtQ(~d / ~c, ~f / ~e))))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => (1 / (~a * sqrt(~c) * sqrt(~e) * Rt(-(~d) / ~c, 2))) * Elliptic.Pi((~b * ~c) / (~a * ~d), asin(Rt(-(~d) / ~c, 2) * ~x), (~c * ~f) / (~d * ~e)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (Not(GtQ(~d / ~c, 0)) && (GtQ(~c, 0) && (GtQ(~e, 0) && Not(Not(GtQ(~f / ~e, 0)) && SimplerSqrtQ(-(~f) / ~e, -(~d) / ~c)))))
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => (sqrt(1 + (~d / ~c) * (~x) ^ 2) / sqrt(~c + ~d * (~x) ^ 2)) * Antiderivative(1 / ((~a + ~b * (~x) ^ 2) * sqrt(1 + (~d / ~c) * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && Not(GtQ(~c, 0))
    @apply_utils Antiderivative(sqrt(~c + ~(d') * (~x) ^ 2) / ((~a + ~(b') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => ((~c * sqrt(~e + ~f * (~x) ^ 2)) / (~a * ~e * Rt(~d / ~c, 2) * sqrt(~c + ~d * (~x) ^ 2) * sqrt((~c * (~e + ~f * (~x) ^ 2)) / (~e * (~c + ~d * (~x) ^ 2))))) * Elliptic.Pi(1 - (~b * ~c) / (~a * ~d), atan(Rt(~d / ~c, 2) * ~x), 1 - (~c * ~f) / (~d * ~e)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && PosQ(~d / ~c)
    #= Antiderivative(sqrt((~c)+(~d')*(~x)^2)/(((~a)+(~b')*(~x)^2)*sqrt((~e)+(~f')*(~x)^2)),~x) :=   sqrt(c+d*x^2)*sqrt(c*(e+f*x^2)/(e*(c+d*x^2)))/(a*Rt(d/c,2)*sqrt(e+f* x^2))* Elliptic.Pi(1-b*c/(a*d),atan(Rt(d/c,2)*x),1-c*f/(d*e)) <--  FreeQ([a,b,c,d,e,f],x) && PosQ(d/c) =#
    @apply_utils Antiderivative(sqrt(~c + ~(d') * (~x) ^ 2) / ((~a + ~(b') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => (~d / ~b) * Antiderivative(1 / (sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) + ((~b * ~c - ~a * ~d) / ~b) * Antiderivative(1 / ((~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && NegQ(~d / ~c)
    @apply_utils Antiderivative(sqrt(~e + ~(f') * (~x) ^ 2) / ((~a + ~(b') * (~x) ^ 2) * (~c + ~(d') * (~x) ^ 2) ^ (3 / 2)), ~x) => (~b / (~b * ~c - ~a * ~d)) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / ((~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) - (~d / (~b * ~c - ~a * ~d)) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / (~c + ~d * (~x) ^ 2) ^ (3 / 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (PosQ(~d / ~c) && PosQ(~f / ~e))
    @apply_utils Antiderivative((~e + ~(f') * (~x) ^ 2) ^ (3 / 2) / ((~a + ~(b') * (~x) ^ 2) * (~c + ~(d') * (~x) ^ 2) ^ (3 / 2)), ~x) => ((~b * ~e - ~a * ~f) / (~b * ~c - ~a * ~d)) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / ((~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) - ((~d * ~e - ~c * ~f) / (~b * ~c - ~a * ~d)) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / (~c + ~d * (~x) ^ 2) ^ (3 / 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (PosQ(~d / ~c) && PosQ(~f / ~e))
    @apply_utils Antiderivative(((~c + ~(d') * (~x) ^ 2) ^ (3 / 2) * sqrt(~e + ~(f') * (~x) ^ 2)) / (~a + ~(b') * (~x) ^ 2), ~x) => ((~b * ~c - ~a * ~d) ^ 2 / (~b) ^ 2) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / ((~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) + (~d / (~b) ^ 2) * Antiderivative((((2 * ~b * ~c - ~a * ~d) + ~b * ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)) / sqrt(~c + ~d * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (PosQ(~d / ~c) && PosQ(~f / ~e))
    @apply_utils Antiderivative(((~c + ~(d') * (~x) ^ 2) ^ ~q * (~e + ~(f') * (~x) ^ 2) ^ ~r) / (~a + ~(b') * (~x) ^ 2), ~x) => ((~b * (~b * ~e - ~a * ~f)) / (~b * ~c - ~a * ~d) ^ 2) * Antiderivative(((~c + ~d * (~x) ^ 2) ^ (~q + 2) * (~e + ~f * (~x) ^ 2) ^ (~r - 1)) / (~a + ~b * (~x) ^ 2), ~x) - (1 / (~b * ~c - ~a * ~d) ^ 2) * Antiderivative((~c + ~d * (~x) ^ 2) ^ ~q * (~e + ~f * (~x) ^ 2) ^ (~r - 1) * (((2 * ~b * ~c * ~d * ~e - ~a * (~d) ^ 2 * ~e) - ~b * (~c) ^ 2 * ~f) + (~d) ^ 2 * (~b * ~e - ~a * ~f) * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && (LtQ(~q, -1) && GtQ(~r, 1))
    @apply_utils Antiderivative(((~c + ~(d') * (~x) ^ 2) ^ ~q * (~e + ~(f') * (~x) ^ 2) ^ ~r) / (~a + ~(b') * (~x) ^ 2), ~x) => (~d / ~b) * Antiderivative((~c + ~d * (~x) ^ 2) ^ (~q - 1) * (~e + ~f * (~x) ^ 2) ^ ~r, ~x) + ((~b * ~c - ~a * ~d) / ~b) * Antiderivative(((~c + ~d * (~x) ^ 2) ^ (~q - 1) * (~e + ~f * (~x) ^ 2) ^ ~r) / (~a + ~b * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~r], ~x) && GtQ(~q, 1)
    @apply_utils Antiderivative(((~c + ~(d') * (~x) ^ 2) ^ ~q * (~e + ~(f') * (~x) ^ 2) ^ ~r) / (~a + ~(b') * (~x) ^ 2), ~x) => ((~b) ^ 2 / (~b * ~c - ~a * ~d) ^ 2) * Antiderivative(((~c + ~d * (~x) ^ 2) ^ (~q + 2) * (~e + ~f * (~x) ^ 2) ^ ~r) / (~a + ~b * (~x) ^ 2), ~x) - (~d / (~b * ~c - ~a * ~d) ^ 2) * Antiderivative((~c + ~d * (~x) ^ 2) ^ ~q * (~e + ~f * (~x) ^ 2) ^ ~r * ((2 * ~b * ~c - ~a * ~d) + ~b * ~d * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~r], ~x) && LtQ(~q, -1)
    @apply_utils Antiderivative(((~c + ~(d') * (~x) ^ 2) ^ ~q * (~e + ~(f') * (~x) ^ 2) ^ ~r) / (~a + ~(b') * (~x) ^ 2), ~x) => (-(~d) / (~b * ~c - ~a * ~d)) * Antiderivative((~c + ~d * (~x) ^ 2) ^ ~q * (~e + ~f * (~x) ^ 2) ^ ~r, ~x) + (~b / (~b * ~c - ~a * ~d)) * Antiderivative(((~c + ~d * (~x) ^ 2) ^ (~q + 1) * (~e + ~f * (~x) ^ 2) ^ ~r) / (~a + ~b * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~r], ~x) && LeQ(~q, -1)
    @apply_utils Antiderivative((sqrt(~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)) / (~a + ~(b') * (~x) ^ 2) ^ 2, ~x) => (~x * sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)) / (2 * ~a * (~a + ~b * (~x) ^ 2)) + ((~d * ~f) / (2 * ~a * (~b) ^ 2)) * Antiderivative((~a - ~b * (~x) ^ 2) / (sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) + (((~b) ^ 2 * ~c * ~e - (~a) ^ 2 * ~d * ~f) / (2 * ~a * (~b) ^ 2)) * Antiderivative(1 / ((~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x)
    @apply_utils Antiderivative(1 / ((~a + ~(b') * (~x) ^ 2) ^ 2 * sqrt(~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => (((~b) ^ 2 * ~x * sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)) / (2 * ~a * (~b * ~c - ~a * ~d) * (~b * ~e - ~a * ~f) * (~a + ~b * (~x) ^ 2)) - ((~d * ~f) / (2 * ~a * (~b * ~c - ~a * ~d) * (~b * ~e - ~a * ~f))) * Antiderivative((~a + ~b * (~x) ^ 2) / (sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x)) + ((((~b) ^ 2 * ~c * ~e + 3 * (~a) ^ 2 * ~d * ~f) - 2 * ~a * ~b * (~d * ~e + ~c * ~f)) / (2 * ~a * (~b * ~c - ~a * ~d) * (~b * ~e - ~a * ~f))) * Antiderivative(1 / ((~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q * (~e + ~(f') * (~x) ^ ~n) ^ ~r, ~x) => (~d / ~b) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ (~q - 1) * (~e + ~f * (~x) ^ ~n) ^ ~r, ~x) + ((~b * ~c - ~a * ~d) / ~b) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ (~q - 1) * (~e + ~f * (~x) ^ ~n) ^ ~r, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~r], ~x) && (ILtQ(~p, 0) && GtQ(~q, 0))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q * (~e + ~(f') * (~x) ^ ~n) ^ ~r, ~x) => (~b / (~b * ~c - ~a * ~d)) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ (~q + 1) * (~e + ~f * (~x) ^ ~n) ^ ~r, ~x) - (~d / (~b * ~c - ~a * ~d)) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ (~p + 1) * (~c + ~d * (~x) ^ ~n) ^ ~q * (~e + ~f * (~x) ^ ~n) ^ ~r, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~q], ~x) && (ILtQ(~p, 0) && LeQ(~q, -1))
    @apply_utils Antiderivative(1 / (sqrt(~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => ((sqrt(~c + ~d * (~x) ^ 2) * sqrt((~a * (~e + ~f * (~x) ^ 2)) / (~e * (~a + ~b * (~x) ^ 2)))) / (~c * sqrt(~e + ~f * (~x) ^ 2) * sqrt((~a * (~c + ~d * (~x) ^ 2)) / (~c * (~a + ~b * (~x) ^ 2))))) * Subst(Antiderivative(1 / (sqrt(1 - ((~b * ~c - ~a * ~d) * (~x) ^ 2) / ~c) * sqrt(1 - ((~b * ~e - ~a * ~f) * (~x) ^ 2) / ~e)), ~x), ~x, ~x / sqrt(~a + ~b * (~x) ^ 2)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x)
    @apply_utils Antiderivative(sqrt(~a + ~(b') * (~x) ^ 2) / (sqrt(~c + ~(d') * (~x) ^ 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => ((~a * sqrt(~c + ~d * (~x) ^ 2) * sqrt((~a * (~e + ~f * (~x) ^ 2)) / (~e * (~a + ~b * (~x) ^ 2)))) / (~c * sqrt(~e + ~f * (~x) ^ 2) * sqrt((~a * (~c + ~d * (~x) ^ 2)) / (~c * (~a + ~b * (~x) ^ 2))))) * Subst(Antiderivative(1 / ((1 - ~b * (~x) ^ 2) * sqrt(1 - ((~b * ~c - ~a * ~d) * (~x) ^ 2) / ~c) * sqrt(1 - ((~b * ~e - ~a * ~f) * (~x) ^ 2) / ~e)), ~x), ~x, ~x / sqrt(~a + ~b * (~x) ^ 2)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x)
    @apply_utils Antiderivative(sqrt(~c + ~(d') * (~x) ^ 2) / ((~a + ~(b') * (~x) ^ 2) ^ (3 / 2) * sqrt(~e + ~(f') * (~x) ^ 2)), ~x) => ((sqrt(~c + ~d * (~x) ^ 2) * sqrt((~a * (~e + ~f * (~x) ^ 2)) / (~e * (~a + ~b * (~x) ^ 2)))) / (~a * sqrt(~e + ~f * (~x) ^ 2) * sqrt((~a * (~c + ~d * (~x) ^ 2)) / (~c * (~a + ~b * (~x) ^ 2))))) * Subst(Antiderivative(sqrt(1 - ((~b * ~c - ~a * ~d) * (~x) ^ 2) / ~c) / sqrt(1 - ((~b * ~e - ~a * ~f) * (~x) ^ 2) / ~e), ~x), ~x, ~x / sqrt(~a + ~b * (~x) ^ 2)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x)
    @apply_utils Antiderivative((sqrt(~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2)) / sqrt(~e + ~(f') * (~x) ^ 2), ~x) => (((~d * ~x * sqrt(~a + ~b * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)) / (2 * ~f * sqrt(~c + ~d * (~x) ^ 2)) - ((~c * (~d * ~e - ~c * ~f)) / (2 * ~f)) * Antiderivative(sqrt(~a + ~b * (~x) ^ 2) / ((~c + ~d * (~x) ^ 2) ^ (3 / 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x)) + ((~b * ~c * (~d * ~e - ~c * ~f)) / (2 * ~d * ~f)) * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x)) - (((~b * ~d * ~e - ~b * ~c * ~f) - ~a * ~d * ~f) / (2 * ~d * ~f)) * Antiderivative(sqrt(~c + ~d * (~x) ^ 2) / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && PosQ((~d * ~e - ~c * ~f) / ~c)
    @apply_utils Antiderivative((sqrt(~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2)) / sqrt(~e + ~(f') * (~x) ^ 2), ~x) => ((~x * sqrt(~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)) / (2 * sqrt(~e + ~f * (~x) ^ 2)) + ((~e * (~b * ~e - ~a * ~f)) / (2 * ~f)) * Antiderivative(sqrt(~c + ~d * (~x) ^ 2) / (sqrt(~a + ~b * (~x) ^ 2) * (~e + ~f * (~x) ^ 2) ^ (3 / 2)), ~x) + (((~b * ~e - ~a * ~f) * (~d * ~e - 2 * ~c * ~f)) / (2 * (~f) ^ 2)) * Antiderivative(1 / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x)) - (((~b * ~d * ~e - ~b * ~c * ~f) - ~a * ~d * ~f) / (2 * (~f) ^ 2)) * Antiderivative(sqrt(~e + ~f * (~x) ^ 2) / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(~c + ~d * (~x) ^ 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x) && NegQ((~d * ~e - ~c * ~f) / ~c)
    @apply_utils Antiderivative((sqrt(~a + ~(b') * (~x) ^ 2) * sqrt(~c + ~(d') * (~x) ^ 2)) / (~e + ~(f') * (~x) ^ 2) ^ (3 / 2), ~x) => (~b / ~f) * Antiderivative(sqrt(~c + ~d * (~x) ^ 2) / (sqrt(~a + ~b * (~x) ^ 2) * sqrt(~e + ~f * (~x) ^ 2)), ~x) - ((~b * ~e - ~a * ~f) / ~f) * Antiderivative(sqrt(~c + ~d * (~x) ^ 2) / (sqrt(~a + ~b * (~x) ^ 2) * (~e + ~f * (~x) ^ 2) ^ (3 / 2)), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f], ~x)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q * (~e + ~(f') * (~x) ^ ~n) ^ ~r, ~x) => With([u = ExpandIntegrand((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q * (~e + ~f * (~x) ^ ~n) ^ ~r, ~x)], Antiderivative(u, ~x) <-- SumQ(u)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~p, ~q, ~r], ~x) && IGtQ(~n, 0)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~p * (~c + ~(d') * (~x) ^ ~n) ^ ~q * (~e + ~(f') * (~x) ^ ~n) ^ ~r, ~x) => -(Subst(Antiderivative(((~a + ~b * (~x) ^ -(~n)) ^ ~p * (~c + ~d * (~x) ^ -(~n)) ^ ~q * (~e + ~f * (~x) ^ -(~n)) ^ ~r) / (~x) ^ 2, ~x), ~x, 1 / ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~p, ~q, ~r], ~x) && ILtQ(~n, 0)
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q') * (~e + ~(f') * (~x) ^ ~n) ^ ~(r'), ~x) => Unintegrable((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q * (~e + ~f * (~x) ^ ~n) ^ ~r, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p, ~q, ~r], ~x)
    @apply_utils Antiderivative((~(a') + ~(b') * (~u) ^ ~n) ^ ~(p') * (~(c') + ~(d') * (~v) ^ ~n) ^ ~(q') * (~(e') + ~(f') * (~w) ^ ~n) ^ ~(r'), ~x) => (1 / Coefficient(~u, ~x, 1)) * Subst(Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q * (~e + ~f * (~x) ^ ~n) ^ ~r, ~x), ~x, ~u) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~p, ~n, ~q, ~r], ~x) && (EqQ(~u, ~v) && (EqQ(~u, ~w) && (LinearQ(~u, ~x) && NeQ(~u, ~x))))
    @apply_utils Antiderivative((~(a') + ~(b') * (~x) ^ ~(n')) ^ ~(p') * (~c + ~(d') * (~x) ^ ~(mn')) ^ ~(q') * (~e + ~(f') * (~x) ^ ~(n')) ^ ~(r'), ~x) => Antiderivative(((~a + ~b * (~x) ^ ~n) ^ ~p * (~d + ~c * (~x) ^ ~n) ^ ~q * (~e + ~f * (~x) ^ ~n) ^ ~r) / (~x) ^ (~n * ~q), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p, ~r], ~x) && (EqQ(~mn, -(~n)) && IntegerQ(~q))
    @apply_utils Antiderivative((~(a') + ~(b') * (~x) ^ ~(n')) ^ ~(p') * (~c + ~(d') * (~x) ^ ~(mn')) ^ ~(q') * (~e + ~(f') * (~x) ^ ~(n')) ^ ~(r'), ~x) => Antiderivative((~x) ^ (~n * (~p + ~r)) * (~b + ~a * (~x) ^ -(~n)) ^ ~p * (~c + ~d * (~x) ^ -(~n)) ^ ~q * (~f + ~e * (~x) ^ -(~n)) ^ ~r, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~q], ~x) && (EqQ(~mn, -(~n)) && (IntegerQ(~p) && IntegerQ(~r)))
    @apply_utils Antiderivative((~(a') + ~(b') * (~x) ^ ~(n')) ^ ~(p') * (~c + ~(d') * (~x) ^ ~(mn')) ^ ~q * (~e + ~(f') * (~x) ^ ~(n')) ^ ~(r'), ~x) => (((~x) ^ (~n * FracPart(~q)) * (~c + ~d * (~x) ^ -(~n)) ^ FracPart(~q)) / (~d + ~c * (~x) ^ ~n) ^ FracPart(~q)) * Antiderivative(((~a + ~b * (~x) ^ ~n) ^ ~p * (~d + ~c * (~x) ^ ~n) ^ ~q * (~e + ~f * (~x) ^ ~n) ^ ~r) / (~x) ^ (~n * ~q), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~n, ~p, ~q, ~r], ~x) && (EqQ(~mn, -(~n)) && Not(IntegerQ(~q)))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q') * (~e1 + ~(f1') * (~x) ^ ~(n2')) ^ ~(r') * (~e2 + ~(f2') * (~x) ^ ~(n2')) ^ ~(r'), ~x) => Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q * (~e1 * ~e2 + ~f1 * ~f2 * (~x) ^ ~n) ^ ~r, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e1, ~f1, ~e2, ~f2, ~n, ~p, ~q, ~r], ~x) && (EqQ(~n2, ~n / 2) && (EqQ(~e2 * ~f1 + ~e1 * ~f2, 0) && (IntegerQ(~r) || GtQ(~e1, 0) && GtQ(~e2, 0))))
    @apply_utils Antiderivative((~a + ~(b') * (~x) ^ ~n) ^ ~(p') * (~c + ~(d') * (~x) ^ ~n) ^ ~(q') * (~e1 + ~(f1') * (~x) ^ ~(n2')) ^ ~(r') * (~e2 + ~(f2') * (~x) ^ ~(n2')) ^ ~(r'), ~x) => (((~e1 + ~f1 * (~x) ^ (~n / 2)) ^ FracPart(~r) * (~e2 + ~f2 * (~x) ^ (~n / 2)) ^ FracPart(~r)) / (~e1 * ~e2 + ~f1 * ~f2 * (~x) ^ ~n) ^ FracPart(~r)) * Antiderivative((~a + ~b * (~x) ^ ~n) ^ ~p * (~c + ~d * (~x) ^ ~n) ^ ~q * (~e1 * ~e2 + ~f1 * ~f2 * (~x) ^ ~n) ^ ~r, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e1, ~f1, ~e2, ~f2, ~n, ~p, ~q, ~r], ~x) && (EqQ(~n2, ~n / 2) && EqQ(~e2 * ~f1 + ~e1 * ~f2, 0))
end
