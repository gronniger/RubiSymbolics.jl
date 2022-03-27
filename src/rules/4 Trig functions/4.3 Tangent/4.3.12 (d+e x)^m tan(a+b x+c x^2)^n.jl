int_rules_4_3_12 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.3.12*(d+e*x)^m*tan(a+b*x+c*x^2)^n =#
    @apply_utils Antiderivative(tan(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2) ^ ~(n'), ~x) => Unintegrable(tan(~a + ~b * ~x + ~c * (~x) ^ 2) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x)
    @apply_utils Antiderivative(cot(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2) ^ ~(n'), ~x) => Unintegrable(cot(~a + ~b * ~x + ~c * (~x) ^ 2) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x)
    @apply_utils Antiderivative((~d + ~(e') * ~x) * tan(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2), ~x) => (-(~e) * log(cos(~a + ~b * ~x + ~c * (~x) ^ 2))) / (2 * ~c) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x) && EqQ(2 * ~c * ~d - ~b * ~e, 0)
    @apply_utils Antiderivative((~d + ~(e') * ~x) * cot(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2), ~x) => (~e * log(sin(~a + ~b * ~x + ~c * (~x) ^ 2))) / (2 * ~c) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x) && EqQ(2 * ~c * ~d - ~b * ~e, 0)
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) * tan(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2), ~x) => (-(~e) * log(cos(~a + ~b * ~x + ~c * (~x) ^ 2))) / (2 * ~c) + ((2 * ~c * ~d - ~b * ~e) / (2 * ~c)) * Antiderivative(tan(~a + ~b * ~x + ~c * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x) && NeQ(2 * ~c * ~d - ~b * ~e, 0)
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) * cot(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2), ~x) => (~e * log(sin(~a + ~b * ~x + ~c * (~x) ^ 2))) / (2 * ~c) + ((2 * ~c * ~d - ~b * ~e) / (2 * ~c)) * Antiderivative(cot(~a + ~b * ~x + ~c * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x) && NeQ(2 * ~c * ~d - ~b * ~e, 0)
    #= Antiderivative((~x)^(~m)*tan((~a')+(~b')*(~x)+(~c')*(~x)^2),~x) :=  -x^(m-1)*log(cos(a+b*x+c*x^2))/(2*c) - b/(2*c)*Antiderivative(x^(m-1)*tan(a+b*x+c*x^2),x) + (m-1)/(2*c)*Antiderivative(x^(m-2)*log(cos(a+b*x+c*x^2)),x) <--  FreeQ([a,b,c],x) && GtQ(m,1) =#
    #= Antiderivative((~x)^(~m)*cot((~a')+(~b')*(~x)+(~c')*(~x)^2),~x) :=  x^(m-1)*log(sin(a+b*x+c*x^2))/(2*c) - b/(2*c)*Antiderivative(x^(m-1)*cot(a+b*x+c*x^2),x) - (m-1)/(2*c)*Antiderivative(x^(m-2)*log(sin(a+b*x+c*x^2)),x) <--  FreeQ([a,b,c],x) && GtQ(m,1)=#
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) ^ ~(m') * tan(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2) ^ ~(n'), ~x) => Unintegrable((~d + ~e * ~x) ^ ~m * tan(~a + ~b * ~x + ~c * (~x) ^ 2) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x)
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) ^ ~(m') * cot(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2) ^ ~(n'), ~x) => Unintegrable((~d + ~e * ~x) ^ ~m * cot(~a + ~b * ~x + ~c * (~x) ^ 2) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x)
end
