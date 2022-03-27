int_rules_8_10 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 8.10*Bessel*functions =#
    @apply_utils Antiderivative(BesselJ(1, ~(a') + ~(b') * ~x), ~x) => -(BesselJ(0, ~a + ~b * ~x)) / ~b <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative(BesselJ(~n, ~(a') + ~(b') * ~x), ~x) => (-2 * BesselJ(~n - 1, ~a + ~b * ~x)) / ~b + Antiderivative(BesselJ(~n - 2, ~a + ~b * ~x), ~x) <-- FreeQ([~a, ~b], ~x) && IGtQ((~n - 1) / 2, 0)
    #= Antiderivative(BesselJ((~n),(~a')+(~b')*(~x)),~x) :=  (-1)^n*Antiderivative(BesselJ(-n,a+b*x),x) <-- FreeQ([a,b],x) && ILtQ(n,0) =#
    @apply_utils Antiderivative(BesselJ(~n, ~(a') + ~(b') * ~x), ~x) => ((~a + ~b * ~x) ^ (~n + 1) * HypergeometricPFQ([(~n + 1) / 2], [(~n + 3) / 2, ~n + 1], (-1 / 4) * (~a + ~b * ~x) ^ 2)) / (2 ^ ~n * ~b * Gamma(~n + 2)) <-- FreeQ([~a, ~b, ~n], ~x)
end
