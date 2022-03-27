int_rules_6_3_12 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 6.3.12*(d+e*x)^m*tanh(a+b*x+c*x^2)^n =#
    @apply_utils Antiderivative(tanh(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2) ^ ~(n'), ~x) => Integral(tanh(~a + ~b * ~x + ~c * (~x) ^ 2) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x)
    @apply_utils Antiderivative(coth(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2) ^ ~(n'), ~x) => Integral(coth(~a + ~b * ~x + ~c * (~x) ^ 2) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~n], ~x)
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) * tanh(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2), ~x) => (~e * log(cosh(~a + ~b * ~x + ~c * (~x) ^ 2))) / (2 * ~c) + ((2 * ~c * ~d - ~b * ~e) / (2 * ~c)) * Antiderivative(tanh(~a + ~b * ~x + ~c * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x)
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) * coth(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2), ~x) => (~e * log(sinh(~a + ~b * ~x + ~c * (~x) ^ 2))) / (2 * ~c) + ((2 * ~c * ~d - ~b * ~e) / (2 * ~c)) * Antiderivative(coth(~a + ~b * ~x + ~c * (~x) ^ 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e], ~x)
    #= Antiderivative((~x)^(~m)*tanh((~a')+(~b')*(~x)+(~c')*(~x)^2),~x) :=  x^(m-1)*log(cosh(a+b*x+c*x^2))/(2*c) - b/(2*c)*Antiderivative(x^(m-1)*tanh(a+b*x+c*x^2),x) - (m-1)/(2*c)*Antiderivative(x^(m-2)*log(cosh(a+b*x+c*x^2)),x) <--  FreeQ([a,b,c],x) && GtQ(m,1) =#
    #= Antiderivative((~x)^(~m)*coth((~a')+(~b')*(~x)+(~c')*(~x)^2),~x) :=  x^(m-1)*log(sinh(a+b*x+c*x^2))/(2*c) - b/(2*c)*Antiderivative(x^(m-1)*coth(a+b*x+c*x^2),x) - (m-1)/(2*c)*Antiderivative(x^(m-2)*log(sinh(a+b*x+c*x^2)),x) <--  FreeQ([a,b,c],x) && GtQ(m,1) =#
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) ^ ~(m') * tanh(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2) ^ ~(n'), ~x) => Integral((~d + ~e * ~x) ^ ~m * tanh(~a + ~b * ~x + ~c * (~x) ^ 2) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x)
    @apply_utils Antiderivative((~(d') + ~(e') * ~x) ^ ~(m') * coth(~(a') + ~(b') * ~x + ~(c') * (~x) ^ 2) ^ ~(n'), ~x) => Integral((~d + ~e * ~x) ^ ~m * coth(~a + ~b * ~x + ~c * (~x) ^ 2) ^ ~n, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x)
end
