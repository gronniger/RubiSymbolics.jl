int_rules_4_3_1_1 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.3.1.1*(a+b*tan)^n =#
    @apply_utils Antiderivative((~(b') * tan(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~b * (~b * tan(~c + ~d * ~x)) ^ (~n - 1)) / (~d * (~n - 1)) - (~b) ^ 2 * Antiderivative((~b * tan(~c + ~d * ~x)) ^ (~n - 2), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && GtQ(~n, 1)
    @apply_utils Antiderivative((~(b') * tan(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~b * tan(~c + ~d * ~x)) ^ (~n + 1) / (~b * ~d * (~n + 1)) - (1 / (~b) ^ 2) * Antiderivative((~b * tan(~c + ~d * ~x)) ^ (~n + 2), ~x) <-- FreeQ([~b, ~c, ~d], ~x) && LtQ(~n, -1)
    @apply_utils Antiderivative(tan(~(c') + ~(d') * ~x), ~x) => -(log(RemoveContent(cos(~c + ~d * ~x), ~x))) / ~d <-- FreeQ([~c, ~d], ~x)
    #= Antiderivative(1/tan((~c')+(~d')*(~x)),~x) :=  log(RemoveContent(sin(c+d*x),x))/d <-- FreeQ([c,d],x) =#
    @apply_utils Antiderivative((~(b') * tan(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~b / ~d) * Subst(Antiderivative((~x) ^ ~n / ((~b) ^ 2 + (~x) ^ 2), ~x), ~x, ~b * tan(~c + ~d * ~x)) <-- FreeQ([~b, ~c, ~d, ~n], ~x) && Not(IntegerQ(~n))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(c') + ~(d') * ~x)) ^ 2, ~x) => ((~a) ^ 2 - (~b) ^ 2) * ~x + ((~b) ^ 2 * tan(~c + ~d * ~x)) / ~d + 2 * ~a * ~b * Antiderivative(tan(~c + ~d * ~x), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x)
    #= Antiderivative(((~a)+(~b')*tan((~c')+(~d')*(~x)))^(~n),~x) :=  Antiderivative(ExpandIntegrand((a+b*tan(c+d*x))^n,x),x) <-- FreeQ([a,b,c,d],x) &&  IGtQ(n,0) =#
    @apply_utils Antiderivative((~a + ~(b') * tan(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~b * (~a + ~b * tan(~c + ~d * ~x)) ^ (~n - 1)) / (~d * (~n - 1)) + 2 * ~a * Antiderivative((~a + ~b * tan(~c + ~d * ~x)) ^ (~n - 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ((~a) ^ 2 + (~b) ^ 2, 0) && GtQ(~n, 1))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~a * (~a + ~b * tan(~c + ~d * ~x)) ^ ~n) / (2 * ~b * ~d * ~n) + (1 / (2 * ~a)) * Antiderivative((~a + ~b * tan(~c + ~d * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (EqQ((~a) ^ 2 + (~b) ^ 2, 0) && LtQ(~n, 0))
    @apply_utils Antiderivative(sqrt(~a + ~(b') * tan(~(c') + ~(d') * ~x)), ~x) => ((-2 * ~b) / ~d) * Subst(Antiderivative(1 / (2 * ~a - (~x) ^ 2), ~x), ~x, sqrt(~a + ~b * tan(~c + ~d * ~x))) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && EqQ((~a) ^ 2 + (~b) ^ 2, 0)
    @apply_utils Antiderivative((~a + ~(b') * tan(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (-(~b) / ~d) * Subst(Antiderivative((~a + ~x) ^ (~n - 1) / (~a - ~x), ~x), ~x, ~b * tan(~c + ~d * ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && EqQ((~a) ^ 2 + (~b) ^ 2, 0)
    @apply_utils Antiderivative((~a + ~(b') * tan(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~b * (~a + ~b * tan(~c + ~d * ~x)) ^ (~n - 1)) / (~d * (~n - 1)) + Antiderivative((((~a) ^ 2 - (~b) ^ 2) + 2 * ~a * ~b * tan(~c + ~d * ~x)) * (~a + ~b * tan(~c + ~d * ~x)) ^ (~n - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && GtQ(~n, 1))
    @apply_utils Antiderivative((~a + ~(b') * tan(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~b * (~a + ~b * tan(~c + ~d * ~x)) ^ (~n + 1)) / (~d * (~n + 1) * ((~a) ^ 2 + (~b) ^ 2)) + (1 / ((~a) ^ 2 + (~b) ^ 2)) * Antiderivative((~a - ~b * tan(~c + ~d * ~x)) * (~a + ~b * tan(~c + ~d * ~x)) ^ (~n + 1), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && (NeQ((~a) ^ 2 + (~b) ^ 2, 0) && LtQ(~n, -1))
    @apply_utils Antiderivative(1 / (~a + ~(b') * tan(~(c') + ~(d') * ~x)), ~x) => (~a * ~x) / ((~a) ^ 2 + (~b) ^ 2) + (~b / ((~a) ^ 2 + (~b) ^ 2)) * Antiderivative((~b - ~a * tan(~c + ~d * ~x)) / (~a + ~b * tan(~c + ~d * ~x)), ~x) <-- FreeQ([~a, ~b, ~c, ~d], ~x) && NeQ((~a) ^ 2 + (~b) ^ 2, 0)
    @apply_utils Antiderivative((~a + ~(b') * tan(~(c') + ~(d') * ~x)) ^ ~n, ~x) => (~b / ~d) * Subst(Antiderivative((~a + ~x) ^ ~n / ((~b) ^ 2 + (~x) ^ 2), ~x), ~x, ~b * tan(~c + ~d * ~x)) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && NeQ((~a) ^ 2 + (~b) ^ 2, 0)
end
