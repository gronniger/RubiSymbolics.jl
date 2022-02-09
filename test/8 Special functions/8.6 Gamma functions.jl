@testset "8.6 Gamma functions" begin
    (a, b, c, d, e, m, n, p, x, ) = @variables a b c d e m n p x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Gamma*Functions=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*Gamma(n, b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Gamma(n, b*x)=#


    #= ::Subsubsection::Closed:: =#
    #=n>=0=#


    @test_int [Gamma(0, a*x)*x^100, x, 1, (1/101)*x^101*Gamma(0, a*x) - Gamma(101, a*x)/(101*a^101)]

    @test_int [Gamma(0, a*x)*x^2, x, 1, (1/3)*x^3*Gamma(0, a*x) - Gamma(3, a*x)/(3*a^3)]
    @test_int [Gamma(0, a*x)*x^1, x, 1, (1/2)*x^2*Gamma(0, a*x) - Gamma(2, a*x)/(2*a^2)]
    @test_int [Gamma(0, a*x)*x^0, x, 1, -(1/(ℯ^(a*x)*a)) + x*Gamma(0, a*x)]
    @test_int [Gamma(0, a*x)/x^1, x, 1, a*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-a)*x) - EulerGamma*log(x) - (1/2)*log(a*x)^2]
    @test_int [Gamma(0, a*x)/x^2, x, 1, a*Gamma(-1, a*x) - Gamma(0, a*x)/x]
    @test_int [Gamma(0, a*x)/x^3, x, 1, (1/2)*a^2*Gamma(-2, a*x) - Gamma(0, a*x)/(2*x^2)]
    @test_int [Gamma(0, a*x)/x^4, x, 1, (1/3)*a^3*Gamma(-3, a*x) - Gamma(0, a*x)/(3*x^3)]


    @test_int [Gamma(1, a*x)*x^3, x, 4, -(6/(ℯ^(a*x)*a^4)) - (6*x)/(ℯ^(a*x)*a^3) - (3*x^2)/(ℯ^(a*x)*a^2) - x^3/(ℯ^(a*x)*a)]
    @test_int [Gamma(1, a*x)*x^2, x, 3, -(2/(ℯ^(a*x)*a^3)) - (2*x)/(ℯ^(a*x)*a^2) - x^2/(ℯ^(a*x)*a)]
    @test_int [Gamma(1, a*x)*x^1, x, 2, -(1/(ℯ^(a*x)*a^2)) - x/(ℯ^(a*x)*a)]
    @test_int [Gamma(1, a*x)*x^0, x, 1, -(1/(ℯ^(a*x)*a))]
    @test_int [Gamma(1, a*x)/x^1, x, 1, ExpIntegralEi((-a)*x)]
    @test_int [Gamma(1, a*x)/x^2, x, 2, -(1/(ℯ^(a*x)*x)) - a*ExpIntegralEi((-a)*x)]
    @test_int [Gamma(1, a*x)/x^3, x, 3, -(1/(ℯ^(a*x)*(2*x^2))) + a/(ℯ^(a*x)*(2*x)) + (1/2)*a^2*ExpIntegralEi((-a)*x)]
    @test_int [Gamma(1, a*x)/x^4, x, 4, -(1/(ℯ^(a*x)*(3*x^3))) + a/(ℯ^(a*x)*(6*x^2)) - a^2/(ℯ^(a*x)*(6*x)) - (1/6)*a^3*ExpIntegralEi((-a)*x)]


    @test_int [Gamma(2, a*x)*x^100, x, 1, (1/101)*x^101*Gamma(2, a*x) - Gamma(103, a*x)/(101*a^101)]

    @test_int [Gamma(2, a*x)*x^2, x, 1, (1/3)*x^3*Gamma(2, a*x) - Gamma(5, a*x)/(3*a^3)]
    @test_int [Gamma(2, a*x)*x^1, x, 1, (1/2)*x^2*Gamma(2, a*x) - Gamma(4, a*x)/(2*a^2)]
    @test_int [Gamma(2, a*x)*x^0, x, 1, x*Gamma(2, a*x) - Gamma(3, a*x)/a]
    @test_int [Gamma(2, a*x)/x^1, x, 2, -ℯ^(-a*x) + ExpIntegralEi(-a*x)]
    @test_int [Gamma(2, a*x)/x^2, x, 1, a/ℯ^(a*x) - Gamma(2, a*x)/x]
    @test_int [Gamma(2, a*x)/x^3, x, 1, (1/2)*a^2*Gamma(0, a*x) - Gamma(2, a*x)/(2*x^2)]
    @test_int [Gamma(2, a*x)/x^4, x, 1, (1/3)*a^3*Gamma(-1, a*x) - Gamma(2, a*x)/(3*x^3)]


    @test_int [Gamma(3, a*x)*x^100, x, 1, (1/101)*x^101*Gamma(3, a*x) - Gamma(104, a*x)/(101*a^101)]

    @test_int [Gamma(3, a*x)*x^2, x, 1, (1/3)*x^3*Gamma(3, a*x) - Gamma(6, a*x)/(3*a^3)]
    @test_int [Gamma(3, a*x)*x^1, x, 1, (1/2)*x^2*Gamma(3, a*x) - Gamma(5, a*x)/(2*a^2)]
    @test_int [Gamma(3, a*x)*x^0, x, 1, x*Gamma(3, a*x) - Gamma(4, a*x)/a]
    @test_int [Gamma(3, a*x)/x^1, x, 3, -2/ℯ^(a*x) + 2*ExpIntegralEi((-a)*x) - Gamma(2, a*x)]
    @test_int [Gamma(3, a*x)/x^2, x, 1, a*Gamma(2, a*x) - Gamma(3, a*x)/x]
    @test_int [Gamma(3, a*x)/x^3, x, 1, ((1/2)*a^2)/ℯ^(a*x) - Gamma(3, a*x)/(2*x^2)]
    @test_int [Gamma(3, a*x)/x^4, x, 1, (1/3)*a^3*Gamma(0, a*x) - Gamma(3, a*x)/(3*x^3)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [Gamma(-1, a*x)*x^100, x, 1, (1/101)*x^101*Gamma(-1, a*x) - Gamma(100, a*x)/(101*a^101)]

    @test_int [Gamma(-1, a*x)*x^3, x, 1, (1/4)*x^4*Gamma(-1, a*x) - Gamma(3, a*x)/(4*a^4)]
    @test_int [Gamma(-1, a*x)*x^2, x, 1, (1/3)*x^3*Gamma(-1, a*x) - Gamma(2, a*x)/(3*a^3)]
    @test_int [Gamma(-1, a*x)*x^1, x, 1, -(1/(ℯ^(a*x)*(2*a^2))) + (1/2)*x^2*Gamma(-1, a*x)]
    @test_int [Gamma(-1, a*x)*x^0, x, 1, x*Gamma(-1, a*x) - Gamma(0, a*x)/a]
    @test_int [Gamma(-1, a*x)/x^1, x, 2, -Gamma(-1, a*x) - a*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-a)*x) + EulerGamma*log(x) + (1/2)*log(a*x)^2]
    @test_int [Gamma(-1, a*x)/x^2, x, 1, a*Gamma(-2, a*x) - Gamma(-1, a*x)/x]
    @test_int [Gamma(-1, a*x)/x^3, x, 1, (1/2)*a^2*Gamma(-3, a*x) - Gamma(-1, a*x)/(2*x^2)]
    @test_int [Gamma(-1, a*x)/x^4, x, 1, (1/3)*a^3*Gamma(-4, a*x) - Gamma(-1, a*x)/(3*x^3)]


    @test_int [Gamma(-2, a*x)*x^100, x, 1, (1/101)*x^101*Gamma(-2, a*x) - Gamma(99, a*x)/(101*a^101)]

    @test_int [Gamma(-2, a*x)*x^3, x, 1, (1/4)*x^4*Gamma(-2, a*x) - Gamma(2, a*x)/(4*a^4)]
    @test_int [Gamma(-2, a*x)*x^2, x, 1, -(1/(ℯ^(a*x)*(3*a^3))) + (1/3)*x^3*Gamma(-2, a*x)]
    @test_int [Gamma(-2, a*x)*x^1, x, 1, (1/2)*x^2*Gamma(-2, a*x) - Gamma(0, a*x)/(2*a^2)]
    @test_int [Gamma(-2, a*x)*x^0, x, 1, x*Gamma(-2, a*x) - Gamma(-1, a*x)/a]
    @test_int [Gamma(-2, a*x)/x^1, x, 3, (-(1/2))*Gamma(-2, a*x) + (1/2)*Gamma(-1, a*x) + (1/2)*a*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-a)*x) - (1/2)*EulerGamma*log(x) - (1/4)*log(a*x)^2]
    @test_int [Gamma(-2, a*x)/x^2, x, 1, a*Gamma(-3, a*x) - Gamma(-2, a*x)/x]
    @test_int [Gamma(-2, a*x)/x^3, x, 1, (1/2)*a^2*Gamma(-4, a*x) - Gamma(-2, a*x)/(2*x^2)]
    @test_int [Gamma(-2, a*x)/x^4, x, 1, (1/3)*a^3*Gamma(-5, a*x) - Gamma(-2, a*x)/(3*x^3)]


    @test_int [Gamma(-3, a*x)*x^100, x, 1, (1/101)*x^101*Gamma(-3, a*x) - Gamma(98, a*x)/(101*a^101)]

    @test_int [Gamma(-3, a*x)*x^3, x, 1, -(1/(ℯ^(a*x)*(4*a^4))) + (1/4)*x^4*Gamma(-3, a*x)]
    @test_int [Gamma(-3, a*x)*x^2, x, 1, (1/3)*x^3*Gamma(-3, a*x) - Gamma(0, a*x)/(3*a^3)]
    @test_int [Gamma(-3, a*x)*x^1, x, 1, (1/2)*x^2*Gamma(-3, a*x) - Gamma(-1, a*x)/(2*a^2)]
    @test_int [Gamma(-3, a*x)*x^0, x, 1, x*Gamma(-3, a*x) - Gamma(-2, a*x)/a]
    @test_int [Gamma(-3, a*x)/x^1, x, 4, (-(1/3))*Gamma(-3, a*x) + (1/6)*Gamma(-2, a*x) - (1/6)*Gamma(-1, a*x) - (1/6)*a*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-a)*x) + (1/6)*EulerGamma*log(x) + (1/12)*log(a*x)^2]
    @test_int [Gamma(-3, a*x)/x^2, x, 1, a*Gamma(-4, a*x) - Gamma(-3, a*x)/x]
    @test_int [Gamma(-3, a*x)/x^3, x, 1, (1/2)*a^2*Gamma(-5, a*x) - Gamma(-3, a*x)/(2*x^2)]
    @test_int [Gamma(-3, a*x)/x^4, x, 1, (1/3)*a^3*Gamma(-6, a*x) - Gamma(-3, a*x)/(3*x^3)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Gamma(n/2, b*x)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [Gamma(1/2, a*x)*x^100, x, 1, (1/101)*x^101*Gamma(1/2, a*x) - Gamma(203/2, a*x)/(101*a^101)]

    @test_int [Gamma(1/2, a*x)*x^2, x, 1, (1/3)*x^3*Gamma(1/2, a*x) - Gamma(7/2, a*x)/(3*a^3)]
    @test_int [Gamma(1/2, a*x)*x^1, x, 1, (1/2)*x^2*Gamma(1/2, a*x) - Gamma(5/2, a*x)/(2*a^2)]
    @test_int [Gamma(1/2, a*x)*x^0, x, 1, x*Gamma(1/2, a*x) - Gamma(3/2, a*x)/a]
    @test_int [Gamma(1/2, a*x)/x^1, x, 1, -4*sqrt(a*x)*HypergeometricPFQ([1/2, 1/2], [3/2, 3/2], (-a)*x) + sqrt(pi)*log(x)]
    @test_int [Gamma(1/2, a*x)/x^2, x, 1, a*Gamma(-(1/2), a*x) - Gamma(1/2, a*x)/x]
    @test_int [Gamma(1/2, a*x)/x^3, x, 1, (1/2)*a^2*Gamma(-(3/2), a*x) - Gamma(1/2, a*x)/(2*x^2)]
    @test_int [Gamma(1/2, a*x)/x^4, x, 1, (1/3)*a^3*Gamma(-(5/2), a*x) - Gamma(1/2, a*x)/(3*x^3)]


    @test_int [Gamma(3/2, a*x)*x^100, x, 1, (1/101)*x^101*Gamma(3/2, a*x) - Gamma(205/2, a*x)/(101*a^101)]

    @test_int [Gamma(3/2, a*x)*x^2, x, 1, (1/3)*x^3*Gamma(3/2, a*x) - Gamma(9/2, a*x)/(3*a^3)]
    @test_int [Gamma(3/2, a*x)*x^1, x, 1, (1/2)*x^2*Gamma(3/2, a*x) - Gamma(7/2, a*x)/(2*a^2)]
    @test_int [Gamma(3/2, a*x)*x^0, x, 1, x*Gamma(3/2, a*x) - Gamma(5/2, a*x)/a]
    @test_int [Gamma(3/2, a*x)/x^1, x, 1, (-(4/9))*(a*x)^(3/2)*HypergeometricPFQ([3/2, 3/2], [5/2, 5/2], (-a)*x) + (1/2)*sqrt(pi)*log(x)]
    @test_int [Gamma(3/2, a*x)/x^2, x, 1, a*Gamma(1/2, a*x) - Gamma(3/2, a*x)/x]
    @test_int [Gamma(3/2, a*x)/x^3, x, 1, (1/2)*a^2*Gamma(-(1/2), a*x) - Gamma(3/2, a*x)/(2*x^2)]
    @test_int [Gamma(3/2, a*x)/x^4, x, 1, (1/3)*a^3*Gamma(-(3/2), a*x) - Gamma(3/2, a*x)/(3*x^3)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*Gamma(n, b*x)*when*m*symbolic=#


    @test_int [(d*x)^m*Gamma(3, b*x), x, 1, ((d*x)^(1 + m)*Gamma(3, b*x))/(d*(1 + m)) - ((d*x)^m*Gamma(4 + m, b*x))/((b*x)^m*(b*(1 + m)))]
    @test_int [(d*x)^m*Gamma(2, b*x), x, 1, ((d*x)^(1 + m)*Gamma(2, b*x))/(d*(1 + m)) - ((d*x)^m*Gamma(3 + m, b*x))/((b*x)^m*(b*(1 + m)))]
    @test_int [(d*x)^m*Gamma(1, b*x), x, 1, -(((d*x)^m*Gamma(1 + m, b*x))/((b*x)^m*b))]
    @test_int [(d*x)^m*Gamma(0, b*x), x, 1, ((d*x)^(1 + m)*Gamma(0, b*x))/(d*(1 + m)) - ((d*x)^m*Gamma(1 + m, b*x))/((b*x)^m*(b*(1 + m)))]
    @test_int [(d*x)^m*Gamma(-1, b*x), x, 1, ((d*x)^(1 + m)*Gamma(-1, b*x))/(d*(1 + m)) - ((d*x)^m*Gamma(m, b*x))/((b*x)^m*(b*(1 + m)))]
    @test_int [(d*x)^m*Gamma(-2, b*x), x, 1, ((d*x)^(1 + m)*Gamma(-2, b*x))/(d*(1 + m)) - ((d*x)^m*Gamma(-1 + m, b*x))/((b*x)^m*(b*(1 + m)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*Gamma(n, b*x)*when*n*symbolic=#


    @test_int [x^m*Gamma(n, x), x, 1, (x^(1 + m)*Gamma(n, x))/(1 + m) - Gamma(1 + m + n, x)/(1 + m)]
    @test_int [x^m*Gamma(n, b*x), x, 1, (x^(1 + m)*Gamma(n, b*x))/(1 + m) - (x^m*Gamma(1 + m + n, b*x))/((b*x)^m*(b*(1 + m)))]
    @test_int [(d*x)^m*Gamma(n, x), x, 1, ((d*x)^(1 + m)*Gamma(n, x))/(d*(1 + m)) - ((d*x)^m*Gamma(1 + m + n, x))/(x^m*(1 + m))]
    @test_int [(d*x)^m*Gamma(n, b*x), x, 1, ((d*x)^(1 + m)*Gamma(n, b*x))/(d*(1 + m)) - ((d*x)^m*Gamma(1 + m + n, b*x))/((b*x)^m*(b*(1 + m)))]


    @test_int [Gamma(n, a*x)*x^100, x, 1, (1/101)*x^101*Gamma(n, a*x) - Gamma(101 + n, a*x)/(101*a^101)]

    @test_int [Gamma(n, a*x)*x^2, x, 1, (1/3)*x^3*Gamma(n, a*x) - Gamma(3 + n, a*x)/(3*a^3)]
    @test_int [Gamma(n, a*x)*x^1, x, 1, (1/2)*x^2*Gamma(n, a*x) - Gamma(2 + n, a*x)/(2*a^2)]
    @test_int [Gamma(n, a*x)*x^0, x, 1, x*Gamma(n, a*x) - Gamma(1 + n, a*x)/a]
    @test_int [Gamma(n, a*x)/x^1, x, 1, -(((a*x)^n*HypergeometricPFQ([n, n], [1 + n, 1 + n], (-a)*x))/n^2) + Gamma(n)*log(x)]
    @test_int [Gamma(n, a*x)/x^2, x, 1, a*Gamma(-1 + n, a*x) - Gamma(n, a*x)/x]
    @test_int [Gamma(n, a*x)/x^3, x, 1, (1/2)*a^2*Gamma(-2 + n, a*x) - Gamma(n, a*x)/(2*x^2)]
    @test_int [Gamma(n, a*x)/x^4, x, 1, (1/3)*a^3*Gamma(-3 + n, a*x) - Gamma(n, a*x)/(3*x^3)]


    @test_int [Gamma(n, 2*x)*x^100, x, 1, (1/101)*x^101*Gamma(n, 2*x) - Gamma(101 + n, 2*x)/256065421246102339102334047485952]

    @test_int [Gamma(n, 2*x)*x^2, x, 1, (1/3)*x^3*Gamma(n, 2*x) - (1/24)*Gamma(3 + n, 2*x)]
    @test_int [Gamma(n, 2*x)*x^1, x, 1, (1/2)*x^2*Gamma(n, 2*x) - (1/8)*Gamma(2 + n, 2*x)]
    @test_int [Gamma(n, 2*x)*x^0, x, 1, x*Gamma(n, 2*x) - (1/2)*Gamma(1 + n, 2*x)]
    @test_int [Gamma(n, 2*x)/x^1, x, 1, -((2^n*x^n*HypergeometricPFQ([n, n], [1 + n, 1 + n], -2*x))/n^2) + Gamma(n)*log(x)]
    @test_int [Gamma(n, 2*x)/x^2, x, 1, 2*Gamma(-1 + n, 2*x) - Gamma(n, 2*x)/x]
    @test_int [Gamma(n, 2*x)/x^3, x, 1, 2*Gamma(-2 + n, 2*x) - Gamma(n, 2*x)/(2*x^2)]
    @test_int [Gamma(n, 2*x)/x^4, x, 1, (8/3)*Gamma(-3 + n, 2*x) - Gamma(n, 2*x)/(3*x^3)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*Gamma(n, a+b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*Gamma(n, a+b*x)=#


    #= ::Subsubsection::Closed:: =#
    #=n>=0=#


    @test_int [(c+ d*x)^3*Gamma(0, a + b*x), x, 8, -(((b*c - a*d)^3*ℯ^(-a - b*x))/(4*b^4)) - ((b*c - a*d)^4*Gamma(0, a + b*x))/(4*b^4*d) + ((c + d*x)^4*Gamma(0, a + b*x))/(4*d) - (d*(b*c - a*d)^2*ℯ^(-a + (b*c)/d)*Gamma(2, (b*(c + d*x))/d))/(4*b^4) - (d^2*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(3, (b*(c + d*x))/d))/(4*b^4) - (d^3*ℯ^(-a + (b*c)/d)*Gamma(4, (b*(c + d*x))/d))/(4*b^4)]
    @test_int [(c+ d*x)^2*Gamma(0, a + b*x), x, 7, -(((b*c - a*d)^2*ℯ^(-a - b*x))/(3*b^3)) - ((b*c - a*d)^3*Gamma(0, a + b*x))/(3*b^3*d) + ((c + d*x)^3*Gamma(0, a + b*x))/(3*d) - (d*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(2, (b*(c + d*x))/d))/(3*b^3) - (d^2*ℯ^(-a + (b*c)/d)*Gamma(3, (b*(c + d*x))/d))/(3*b^3)]
    @test_int [(c+ d*x)^1*Gamma(0, a + b*x), x, 6, -(((b*c - a*d)*ℯ^(-a - b*x))/(2*b^2)) - ((b*c - a*d)^2*Gamma(0, a + b*x))/(2*b^2*d) + ((c + d*x)^2*Gamma(0, a + b*x))/(2*d) - (d*ℯ^(-a + (b*c)/d)*Gamma(2, (b*(c + d*x))/d))/(2*b^2)]
    @test_int [(c+ d*x)^0*Gamma(0, a + b*x), x, 1, -(ℯ^(-a - b*x)/b) + ((a + b*x)*Gamma(0, a + b*x))/b]
    @test_int [Gamma(0, a + b*x)/(c+ d*x)^1, x, 0, Unintegrable(Gamma(0, a + b*x)/(c + d*x), x)]
    @test_int [Gamma(0, a + b*x)/(c+ d*x)^2, x, 5, (b*Gamma(0, a + b*x))/(d*(b*c - a*d)) - Gamma(0, a + b*x)/(d*(c + d*x)) - (b*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(d*(b*c - a*d))]
    @test_int [Gamma(0, a + b*x)/(c+ d*x)^3, x, 6, -((b^2*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(2*d^2*(b*c - a*d))) + (b^2*Gamma(0, a + b*x))/(2*d*(b*c - a*d)^2) - Gamma(0, a + b*x)/(2*d*(c + d*x)^2) - (b^2*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(2*d*(b*c - a*d)^2)]
    @test_int [Gamma(0, a + b*x)/(c+ d*x)^4, x, 7, -((b^3*ℯ^(-a + (b*c)/d)*Gamma(-2, (b*(c + d*x))/d))/(3*d^3*(b*c - a*d))) - (b^3*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(3*d^2*(b*c - a*d)^2) + (b^3*Gamma(0, a + b*x))/(3*d*(b*c - a*d)^3) - Gamma(0, a + b*x)/(3*d*(c + d*x)^3) - (b^3*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(3*d*(b*c - a*d)^3)]


    @test_int [(c+ d*x)^4*Gamma(1, a + b*x), x, 5, -((24*d^4*ℯ^(-a - b*x))/b^5) - (24*d^3*ℯ^(-a - b*x)*(c + d*x))/b^4 - (12*d^2*ℯ^(-a - b*x)*(c + d*x)^2)/b^3 - (4*d*ℯ^(-a - b*x)*(c + d*x)^3)/b^2 - (ℯ^(-a - b*x)*(c + d*x)^4)/b]
    @test_int [(c+ d*x)^3*Gamma(1, a + b*x), x, 4, -((6*d^3*ℯ^(-a - b*x))/b^4) - (6*d^2*ℯ^(-a - b*x)*(c + d*x))/b^3 - (3*d*ℯ^(-a - b*x)*(c + d*x)^2)/b^2 - (ℯ^(-a - b*x)*(c + d*x)^3)/b]
    @test_int [(c+ d*x)^2*Gamma(1, a + b*x), x, 3, -((2*d^2*ℯ^(-a - b*x))/b^3) - (2*d*ℯ^(-a - b*x)*(c + d*x))/b^2 - (ℯ^(-a - b*x)*(c + d*x)^2)/b]
    @test_int [(c+ d*x)^1*Gamma(1, a + b*x), x, 2, -((d*ℯ^(-a - b*x))/b^2) - (ℯ^(-a - b*x)*(c + d*x))/b]
    @test_int [(c+ d*x)^0*Gamma(1, a + b*x), x, 1, -(ℯ^(-a - b*x)/b)]
    @test_int [Gamma(1, a + b*x)/(c+ d*x)^1, x, 1, (ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/d]
    @test_int [Gamma(1, a + b*x)/(c+ d*x)^2, x, 2, -(ℯ^(-a - b*x)/(d*(c + d*x))) - (b*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/d^2]
    @test_int [Gamma(1, a + b*x)/(c+ d*x)^3, x, 3, -(ℯ^(-a - b*x)/(2*d*(c + d*x)^2)) + (b*ℯ^(-a - b*x))/(2*d^2*(c + d*x)) + (b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(2*d^3)]
    @test_int [Gamma(1, a + b*x)/(c+ d*x)^4, x, 4, -(ℯ^(-a - b*x)/(3*d*(c + d*x)^3)) + (b*ℯ^(-a - b*x))/(6*d^2*(c + d*x)^2) - (b^2*ℯ^(-a - b*x))/(6*d^3*(c + d*x)) - (b^3*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(6*d^4)]


    @test_int [(c+ d*x)^3*Gamma(2, a + b*x), x, 5, ((c + d*x)^4*Gamma(2, a + b*x))/(4*d) + (d^2*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(5, (b*(c + d*x))/d))/(4*b^4) - (d^3*ℯ^(-a + (b*c)/d)*Gamma(6, (b*(c + d*x))/d))/(4*b^4)]
    @test_int [(c+ d*x)^2*Gamma(2, a + b*x), x, 5, ((c + d*x)^3*Gamma(2, a + b*x))/(3*d) + (d*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(4, (b*(c + d*x))/d))/(3*b^3) - (d^2*ℯ^(-a + (b*c)/d)*Gamma(5, (b*(c + d*x))/d))/(3*b^3)]
    @test_int [(c+ d*x)^1*Gamma(2, a + b*x), x, 5, ((c + d*x)^2*Gamma(2, a + b*x))/(2*d) + ((b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(3, (b*(c + d*x))/d))/(2*b^2) - (d*ℯ^(-a + (b*c)/d)*Gamma(4, (b*(c + d*x))/d))/(2*b^2)]
    @test_int [(c+ d*x)^0*Gamma(2, a + b*x), x, 1, ((a + b*x)*Gamma(2, a + b*x))/b - Gamma(3, a + b*x)/b]
    @test_int [Gamma(2, a + b*x)/(c+ d*x)^1, x, 6, -(ℯ^(-a - b*x)/d) + (ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/d - ((b*c - a*d)*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/d^2]
    @test_int [Gamma(2, a + b*x)/(c+ d*x)^2, x, 5, (b*ℯ^(-a - b*x))/d^2 - (b*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/d^3 - Gamma(2, a + b*x)/(d*(c + d*x))]
    @test_int [Gamma(2, a + b*x)/(c+ d*x)^3, x, 5, -((b^2*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(2*d^4)) + (b^2*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(2*d^3) - Gamma(2, a + b*x)/(2*d*(c + d*x)^2)]
    @test_int [Gamma(2, a + b*x)/(c+ d*x)^4, x, 5, -((b^3*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(-2, (b*(c + d*x))/d))/(3*d^5)) + (b^3*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(3*d^4) - Gamma(2, a + b*x)/(3*d*(c + d*x)^3)]
    @test_int [Gamma(2, a + b*x)/(c+ d*x)^5, x, 5, -((b^4*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(-3, (b*(c + d*x))/d))/(4*d^6)) + (b^4*ℯ^(-a + (b*c)/d)*Gamma(-2, (b*(c + d*x))/d))/(4*d^5) - Gamma(2, a + b*x)/(4*d*(c + d*x)^4)]


    @test_int [(c+ d*x)^3*Gamma(3, a + b*x), x, 6, ((c + d*x)^4*Gamma(3, a + b*x))/(4*d) - (d*(b*c - a*d)^2*ℯ^(-a + (b*c)/d)*Gamma(5, (b*(c + d*x))/d))/(4*b^4) + (d^2*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(6, (b*(c + d*x))/d))/(2*b^4) - (d^3*ℯ^(-a + (b*c)/d)*Gamma(7, (b*(c + d*x))/d))/(4*b^4)]
    @test_int [(c+ d*x)^2*Gamma(3, a + b*x), x, 6, ((c + d*x)^3*Gamma(3, a + b*x))/(3*d) - ((b*c - a*d)^2*ℯ^(-a + (b*c)/d)*Gamma(4, (b*(c + d*x))/d))/(3*b^3) + (2*d*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(5, (b*(c + d*x))/d))/(3*b^3) - (d^2*ℯ^(-a + (b*c)/d)*Gamma(6, (b*(c + d*x))/d))/(3*b^3)]
    @test_int [(c+ d*x)^1*Gamma(3, a + b*x), x, 6, -(((b*c - a*d)^2*Gamma(3, a + b*x))/(2*b^2*d)) + ((c + d*x)^2*Gamma(3, a + b*x))/(2*d) - ((b*c - a*d)*Gamma(4, a + b*x))/b^2 - (d*Gamma(5, a + b*x))/(2*b^2)]
    @test_int [(c+ d*x)^0*Gamma(3, a + b*x), x, 1, ((a + b*x)*Gamma(3, a + b*x))/b - Gamma(4, a + b*x)/b]
    @test_int [Gamma(3, a + b*x)/(c+ d*x)^1, x, 13, -((3*ℯ^(-a - b*x))/d) + ((b*c - a*d)*ℯ^(-a - b*x))/d^2 - (ℯ^(-a - b*x)*(a + b*x))/d + (2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/d - (2*(b*c - a*d)*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/d^2 + ((b*c - a*d)^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/d^3]
    @test_int [Gamma(3, a + b*x)/(c+ d*x)^2, x, 6, -((b*(b*c - a*d)*ℯ^(-a - b*x))/d^3) + (b*(b*c - a*d)^2*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/d^4 + (b*Gamma(2, a + b*x))/d^2 - Gamma(3, a + b*x)/(d*(c + d*x))]
    @test_int [Gamma(3, a + b*x)/(c+ d*x)^3, x, 6, (b^2*ℯ^(-a - b*x))/(2*d^3) + (b^2*(b*c - a*d)^2*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(2*d^5) - (b^2*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/d^4 - Gamma(3, a + b*x)/(2*d*(c + d*x)^2)]
    @test_int [Gamma(3, a + b*x)/(c+ d*x)^4, x, 6, (b^3*(b*c - a*d)^2*ℯ^(-a + (b*c)/d)*Gamma(-2, (b*(c + d*x))/d))/(3*d^6) - (2*b^3*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(3*d^5) + (b^3*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(3*d^4) - Gamma(3, a + b*x)/(3*d*(c + d*x)^3)]
    @test_int [Gamma(3, a + b*x)/(c+ d*x)^5, x, 6, (b^4*(b*c - a*d)^2*ℯ^(-a + (b*c)/d)*Gamma(-3, (b*(c + d*x))/d))/(4*d^7) - (b^4*(b*c - a*d)*ℯ^(-a + (b*c)/d)*Gamma(-2, (b*(c + d*x))/d))/(2*d^6) + (b^4*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(4*d^5) - Gamma(3, a + b*x)/(4*d*(c + d*x)^4)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(c+ d*x)^3*Gamma(-1, a + b*x), x, 8, -((3*d*(b*c - a*d)^2*ℯ^(-a - b*x))/(2*b^4)) - ((b*c - a*d)^4*Gamma(-1, a + b*x))/(4*b^4*d) + ((c + d*x)^4*Gamma(-1, a + b*x))/(4*d) - ((b*c - a*d)^3*Gamma(0, a + b*x))/b^4 - (d^2*(b*c - a*d)*Gamma(2, a + b*x))/b^4 - (d^3*Gamma(3, a + b*x))/(4*b^4)]
    @test_int [(c+ d*x)^2*Gamma(-1, a + b*x), x, 7, -((d*(3*b*c - 2*a*d)*ℯ^(-a - b*x))/(3*b^3)) - ((b*c - a*d)^3*Gamma(-1, a + b*x))/(3*b^3*d) + ((c + d*x)^3*Gamma(-1, a + b*x))/(3*d) - ((b*c - a*d)^2*Gamma(0, a + b*x))/b^3 - (d^2*Gamma(2, b*x))/(ℯ^a*(3*b^3))]
    @test_int [(c+ d*x)^1*Gamma(-1, a + b*x), x, 6, -((d*ℯ^(-a - b*x))/(2*b^2)) - ((b*c - a*d)^2*Gamma(-1, a + b*x))/(2*b^2*d) + ((c + d*x)^2*Gamma(-1, a + b*x))/(2*d) - ((b*c - a*d)*Gamma(0, a + b*x))/b^2]
    @test_int [(c+ d*x)^0*Gamma(-1, a + b*x), x, 1, ((a + b*x)*Gamma(-1, a + b*x))/b - Gamma(0, a + b*x)/b]
    @test_int [Gamma(-1, a + b*x)/(c+ d*x)^1, x, 0, Unintegrable(Gamma(-1, a + b*x)/(c + d*x), x)]
    @test_int [Gamma(-1, a + b*x)/(c+ d*x)^2, x, 6, (b*Gamma(-1, a + b*x))/(d*(b*c - a*d)) - Gamma(-1, a + b*x)/(d*(c + d*x)) - (b*Gamma(0, a + b*x))/(b*c - a*d)^2 + (b*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(b*c - a*d)^2]
    @test_int [Gamma(-1, a + b*x)/(c+ d*x)^3, x, 7, (b^2*Gamma(-1, a + b*x))/(2*d*(b*c - a*d)^2) - Gamma(-1, a + b*x)/(2*d*(c + d*x)^2) + (b^2*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(2*d*(b*c - a*d)^2) - (b^2*Gamma(0, a + b*x))/(b*c - a*d)^3 + (b^2*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(b*c - a*d)^3]
    @test_int [Gamma(-1, a + b*x)/(c+ d*x)^4, x, 8, (b^3*ℯ^(-a + (b*c)/d)*Gamma(-2, (b*(c + d*x))/d))/(3*d^2*(b*c - a*d)^2) + (b^3*Gamma(-1, a + b*x))/(3*d*(b*c - a*d)^3) - Gamma(-1, a + b*x)/(3*d*(c + d*x)^3) + (2*b^3*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(3*d*(b*c - a*d)^3) - (b^3*Gamma(0, a + b*x))/(b*c - a*d)^4 + (b^3*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(b*c - a*d)^4]


    @test_int [(c+ d*x)^3*Gamma(-2, a + b*x), x, 8, -((d^2*(4*b*c - 3*a*d)*ℯ^(-a - b*x))/(4*b^4)) - ((b*c - a*d)^4*Gamma(-2, a + b*x))/(4*b^4*d) + ((c + d*x)^4*Gamma(-2, a + b*x))/(4*d) - ((b*c - a*d)^3*Gamma(-1, a + b*x))/b^4 - (3*d*(b*c - a*d)^2*Gamma(0, a + b*x))/(2*b^4) - (d^3*Gamma(2, b*x))/(ℯ^a*(4*b^4))]
    @test_int [(c+ d*x)^2*Gamma(-2, a + b*x), x, 7, -((d^2*ℯ^(-a - b*x))/(3*b^3)) - ((b*c - a*d)^3*Gamma(-2, a + b*x))/(3*b^3*d) + ((c + d*x)^3*Gamma(-2, a + b*x))/(3*d) - ((b*c - a*d)^2*Gamma(-1, a + b*x))/b^3 - (d*(b*c - a*d)*Gamma(0, a + b*x))/b^3]
    @test_int [(c+ d*x)^1*Gamma(-2, a + b*x), x, 6, -(((b*c - a*d)^2*Gamma(-2, a + b*x))/(2*b^2*d)) + ((c + d*x)^2*Gamma(-2, a + b*x))/(2*d) - ((b*c - a*d)*Gamma(-1, a + b*x))/b^2 - (d*Gamma(0, a + b*x))/(2*b^2)]
    @test_int [(c+ d*x)^0*Gamma(-2, a + b*x), x, 1, ((a + b*x)*Gamma(-2, a + b*x))/b - Gamma(-1, a + b*x)/b]
    @test_int [Gamma(-2, a + b*x)/(c+ d*x)^1, x, 0, Unintegrable(Gamma(-2, a + b*x)/(c + d*x), x)]
    @test_int [Gamma(-2, a + b*x)/(c+ d*x)^2, x, 7, (b*Gamma(-2, a + b*x))/(d*(b*c - a*d)) - Gamma(-2, a + b*x)/(d*(c + d*x)) - (b*Gamma(-1, a + b*x))/(b*c - a*d)^2 + (b*d*Gamma(0, a + b*x))/(b*c - a*d)^3 - (b*d*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(b*c - a*d)^3]
    @test_int [Gamma(-2, a + b*x)/(c+ d*x)^3, x, 8, (b^2*Gamma(-2, a + b*x))/(2*d*(b*c - a*d)^2) - Gamma(-2, a + b*x)/(2*d*(c + d*x)^2) - (b^2*Gamma(-1, a + b*x))/(b*c - a*d)^3 - (b^2*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(2*(b*c - a*d)^3) + (3*b^2*d*Gamma(0, a + b*x))/(2*(b*c - a*d)^4) - (3*b^2*d*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(2*(b*c - a*d)^4)]
    @test_int [Gamma(-2, a + b*x)/(c+ d*x)^4, x, 9, (b^3*Gamma(-2, a + b*x))/(3*d*(b*c - a*d)^3) - Gamma(-2, a + b*x)/(3*d*(c + d*x)^3) - (b^3*ℯ^(-a + (b*c)/d)*Gamma(-2, (b*(c + d*x))/d))/(3*d*(b*c - a*d)^3) - (b^3*Gamma(-1, a + b*x))/(b*c - a*d)^4 - (b^3*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(b*c - a*d)^4 + (2*b^3*d*Gamma(0, a + b*x))/(b*c - a*d)^5 - (2*b^3*d*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(b*c - a*d)^5]


    @test_int [(c+ d*x)^3*Gamma(-3, a + b*x), x, 8, -((d^3*ℯ^(-a - b*x))/(4*b^4)) - ((b*c - a*d)^4*Gamma(-3, a + b*x))/(4*b^4*d) + ((c + d*x)^4*Gamma(-3, a + b*x))/(4*d) - ((b*c - a*d)^3*Gamma(-2, a + b*x))/b^4 - (3*d*(b*c - a*d)^2*Gamma(-1, a + b*x))/(2*b^4) - (d^2*(b*c - a*d)*Gamma(0, a + b*x))/b^4]
    @test_int [(c+ d*x)^2*Gamma(-3, a + b*x), x, 7, -(((b*c - a*d)^3*Gamma(-3, a + b*x))/(3*b^3*d)) + ((c + d*x)^3*Gamma(-3, a + b*x))/(3*d) - ((b*c - a*d)^2*Gamma(-2, a + b*x))/b^3 - (d*(b*c - a*d)*Gamma(-1, a + b*x))/b^3 - (d^2*Gamma(0, a + b*x))/(3*b^3)]
    @test_int [(c+ d*x)^1*Gamma(-3, a + b*x), x, 6, -(((b*c - a*d)^2*Gamma(-3, a + b*x))/(2*b^2*d)) + ((c + d*x)^2*Gamma(-3, a + b*x))/(2*d) - ((b*c - a*d)*Gamma(-2, a + b*x))/b^2 - (d*Gamma(-1, a + b*x))/(2*b^2)]
    @test_int [(c+ d*x)^0*Gamma(-3, a + b*x), x, 1, ((a + b*x)*Gamma(-3, a + b*x))/b - Gamma(-2, a + b*x)/b]
    @test_int [Gamma(-3, a + b*x)/(c+ d*x)^1, x, 0, Unintegrable(Gamma(-3, a + b*x)/(c + d*x), x)]
    @test_int [Gamma(-3, a + b*x)/(c+ d*x)^2, x, 8, (b*Gamma(-3, a + b*x))/(d*(b*c - a*d)) - Gamma(-3, a + b*x)/(d*(c + d*x)) - (b*Gamma(-2, a + b*x))/(b*c - a*d)^2 + (b*d*Gamma(-1, a + b*x))/(b*c - a*d)^3 - (b*d^2*Gamma(0, a + b*x))/(b*c - a*d)^4 + (b*d^2*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(b*c - a*d)^4]
    @test_int [Gamma(-3, a + b*x)/(c+ d*x)^3, x, 9, (b^2*Gamma(-3, a + b*x))/(2*d*(b*c - a*d)^2) - Gamma(-3, a + b*x)/(2*d*(c + d*x)^2) - (b^2*Gamma(-2, a + b*x))/(b*c - a*d)^3 + (3*b^2*d*Gamma(-1, a + b*x))/(2*(b*c - a*d)^4) + (b^2*d*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(2*(b*c - a*d)^4) - (2*b^2*d^2*Gamma(0, a + b*x))/(b*c - a*d)^5 + (2*b^2*d^2*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(b*c - a*d)^5]
    @test_int [Gamma(-3, a + b*x)/(c+ d*x)^4, x, 10, (b^3*Gamma(-3, a + b*x))/(3*d*(b*c - a*d)^3) - Gamma(-3, a + b*x)/(3*d*(c + d*x)^3) - (b^3*Gamma(-2, a + b*x))/(b*c - a*d)^4 + (b^3*ℯ^(-a + (b*c)/d)*Gamma(-2, (b*(c + d*x))/d))/(3*(b*c - a*d)^4) + (2*b^3*d*Gamma(-1, a + b*x))/(b*c - a*d)^5 + (4*b^3*d*ℯ^(-a + (b*c)/d)*Gamma(-1, (b*(c + d*x))/d))/(3*(b*c - a*d)^5) - (10*b^3*d^2*Gamma(0, a + b*x))/(3*(b*c - a*d)^6) + (10*b^3*d^2*ℯ^(-a + (b*c)/d)*Gamma(0, (b*(c + d*x))/d))/(3*(b*c - a*d)^6)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*Gamma(n, a+b*x)=#


    #= ::Subsubsection::Closed:: =#
    #=n>=0=#


    @test_int [x^(5/2)*Gamma(2, a + b*x), x, 5, (2/7)*x^(7/2)*Gamma(2, a + b*x) - (2*a*sqrt(x)*Gamma(9/2, b*x))/(ℯ^a*(7*b^3*sqrt(b*x))) - (2*sqrt(x)*Gamma(11/2, b*x))/(ℯ^a*(7*b^3*sqrt(b*x)))]
    @test_int [x^(3/2)*Gamma(2, a + b*x), x, 5, (2/5)*x^(5/2)*Gamma(2, a + b*x) - (2*a*sqrt(x)*Gamma(7/2, b*x))/(ℯ^a*(5*b^2*sqrt(b*x))) - (2*sqrt(x)*Gamma(9/2, b*x))/(ℯ^a*(5*b^2*sqrt(b*x)))]
    @test_int [x^(1/2)*Gamma(2, a + b*x), x, 5, (2/3)*x^(3/2)*Gamma(2, a + b*x) - (2*a*sqrt(x)*Gamma(5/2, b*x))/(ℯ^a*(3*b*sqrt(b*x))) - (2*sqrt(x)*Gamma(7/2, b*x))/(ℯ^a*(3*b*sqrt(b*x)))]
    @test_int [Gamma(2, a + b*x)/x^(1/2), x, 5, -((2*a*sqrt(x)*Gamma(3/2, b*x))/(ℯ^a*sqrt(b*x))) + 2*sqrt(x)*Gamma(2, a + b*x) - (2*sqrt(x)*Gamma(5/2, b*x))/(ℯ^a*sqrt(b*x))]
    @test_int [Gamma(2, a + b*x)/x^(3/2), x, 5, (2*a*sqrt(b*x)*Gamma(1/2, b*x))/(ℯ^a*sqrt(x)) + (2*b*sqrt(x)*Gamma(3/2, b*x))/(ℯ^a*sqrt(b*x)) - (2*Gamma(2, a + b*x))/sqrt(x)]
    @test_int [Gamma(2, a + b*x)/x^(5/2), x, 5, (2*a*b*sqrt(b*x)*Gamma(-(1/2), b*x))/(ℯ^a*(3*sqrt(x))) + (2*b*sqrt(b*x)*Gamma(1/2, b*x))/(ℯ^a*(3*sqrt(x))) - (2*Gamma(2, a + b*x))/(3*x^(3/2))]
    @test_int [Gamma(2, a + b*x)/x^(7/2), x, 5, (2*a*b^2*sqrt(b*x)*Gamma(-(3/2), b*x))/(ℯ^a*(5*sqrt(x))) + (2*b^2*sqrt(b*x)*Gamma(-(1/2), b*x))/(ℯ^a*(5*sqrt(x))) - (2*Gamma(2, a + b*x))/(5*x^(5/2))]
    @test_int [Gamma(2, a + b*x)/x^(9/2), x, 5, (2*a*b^3*sqrt(b*x)*Gamma(-(5/2), b*x))/(ℯ^a*(7*sqrt(x))) + (2*b^3*sqrt(b*x)*Gamma(-(3/2), b*x))/(ℯ^a*(7*sqrt(x))) - (2*Gamma(2, a + b*x))/(7*x^(7/2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^(3/2)*Gamma(-2, a + b*x), x, 0, Unintegrable(x^(3/2)*Gamma(-2, a + b*x), x)]
    @test_int [x^(1/2)*Gamma(-2, a + b*x), x, 0, Unintegrable(sqrt(x)*Gamma(-2, a + b*x), x)]
    @test_int [Gamma(-2, a + b*x)/x^(1/2), x, 0, Unintegrable(Gamma(-2, a + b*x)/sqrt(x), x)]
    @test_int [Gamma(-2, a + b*x)/x^(3/2), x, 0, Unintegrable(Gamma(-2, a + b*x)/x^(3/2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/3)*Gamma(n, a+b*x)=#


    #= ::Subsubsection::Closed:: =#
    #=n>=0=#


    @test_int [x^(4/3)*Gamma(2, a + b*x), x, 5, (3/7)*x^(7/3)*Gamma(2, a + b*x) - (3*a*x^(1/3)*Gamma(10/3, b*x))/(ℯ^a*(7*b^2*(b*x)^(1/3))) - (3*x^(1/3)*Gamma(13/3, b*x))/(ℯ^a*(7*b^2*(b*x)^(1/3)))]
    @test_int [x^(2/3)*Gamma(2, a + b*x), x, 5, (3/5)*x^(5/3)*Gamma(2, a + b*x) - (3*a*x^(2/3)*Gamma(8/3, b*x))/(ℯ^a*(5*b*(b*x)^(2/3))) - (3*x^(2/3)*Gamma(11/3, b*x))/(ℯ^a*(5*b*(b*x)^(2/3)))]
    @test_int [x^(1/3)*Gamma(2, a + b*x), x, 5, (3/4)*x^(4/3)*Gamma(2, a + b*x) - (3*a*x^(1/3)*Gamma(7/3, b*x))/(ℯ^a*(4*b*(b*x)^(1/3))) - (3*x^(1/3)*Gamma(10/3, b*x))/(ℯ^a*(4*b*(b*x)^(1/3)))]
    @test_int [Gamma(2, a + b*x)/x^(1/3), x, 5, -((3*a*x^(2/3)*Gamma(5/3, b*x))/(ℯ^a*(2*(b*x)^(2/3)))) + (3/2)*x^(2/3)*Gamma(2, a + b*x) - (3*x^(2/3)*Gamma(8/3, b*x))/(ℯ^a*(2*(b*x)^(2/3)))]
    @test_int [Gamma(2, a + b*x)/x^(2/3), x, 5, -((3*a*x^(1/3)*Gamma(4/3, b*x))/(ℯ^a*(b*x)^(1/3))) + 3*x^(1/3)*Gamma(2, a + b*x) - (3*x^(1/3)*Gamma(7/3, b*x))/(ℯ^a*(b*x)^(1/3))]
    @test_int [Gamma(2, a + b*x)/x^(4/3), x, 5, (3*a*(b*x)^(1/3)*Gamma(2/3, b*x))/(ℯ^a*x^(1/3)) + (3*b*x^(2/3)*Gamma(5/3, b*x))/(ℯ^a*(b*x)^(2/3)) - (3*Gamma(2, a + b*x))/x^(1/3)]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*Gamma(n, a+b*x)*when*m*symbolic=#


    @test_int [(c + d*x)^m*Gamma(3, a + b*x), x, 6, ((c + d*x)^(1 + m)*Gamma(3, a + b*x))/(d*(1 + m)) - ((b*c - a*d)^2*ℯ^(-a + (b*c)/d)*(c + d*x)^m*Gamma(2 + m, (b*(c + d*x))/d))/(((b*(c + d*x))/d)^m*(b*d^2*(1 + m))) + (2*(b*c - a*d)*ℯ^(-a + (b*c)/d)*(c + d*x)^m*Gamma(3 + m, (b*(c + d*x))/d))/(((b*(c + d*x))/d)^m*(b*d*(1 + m))) - (ℯ^(-a + (b*c)/d)*(c + d*x)^m*Gamma(4 + m, (b*(c + d*x))/d))/(((b*(c + d*x))/d)^m*(b*(1 + m)))]
    @test_int [(c + d*x)^m*Gamma(2, a + b*x), x, 5, ((c + d*x)^(1 + m)*Gamma(2, a + b*x))/(d*(1 + m)) + ((b*c - a*d)*ℯ^(-a + (b*c)/d)*(c + d*x)^m*Gamma(2 + m, (b*(c + d*x))/d))/(((b*(c + d*x))/d)^m*(b*d*(1 + m))) - (ℯ^(-a + (b*c)/d)*(c + d*x)^m*Gamma(3 + m, (b*(c + d*x))/d))/(((b*(c + d*x))/d)^m*(b*(1 + m)))]
    @test_int [(c + d*x)^m*Gamma(1, a + b*x), x, 1, -((ℯ^(-a + (b*c)/d)*(c + d*x)^m*Gamma(1 + m, (b*(c + d*x))/d))/(((b*(c + d*x))/d)^m*b))]
    @test_int [(c + d*x)^m*Gamma(0, a + b*x), x, 0, Unintegrable((c + d*x)^m*Gamma(0, a + b*x), x)]
    @test_int [(c + d*x)^m*Gamma(-1, a + b*x), x, 0, Unintegrable((c + d*x)^m*Gamma(-1, a + b*x), x)]
    @test_int [(c + d*x)^m*Gamma(-2, a + b*x), x, 0, Unintegrable((c + d*x)^m*Gamma(-2, a + b*x), x)]
    @test_int [(c + d*x)^m*Gamma(-3, a + b*x), x, 0, Unintegrable((c + d*x)^m*Gamma(-3, a + b*x), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*Gamma(n, a+b*x)*when*n*symbolic=#


    @test_int [x^m*Gamma(n, a + b*x), x, 0, Unintegrable(x^m*Gamma(n, a + b*x), x)]
    @test_int [(c + d*x)^m*Gamma(n, a + b*x), x, 0, Unintegrable((c + d*x)^m*Gamma(n, a + b*x), x)]


    @test_int [(c + d*x)^4*Gamma(n, a + b*x), x, 9, -(((b*c - a*d)^5*Gamma(n, a + b*x))/(5*b^5*d)) + ((c + d*x)^5*Gamma(n, a + b*x))/(5*d) - ((b*c - a*d)^4*Gamma(1 + n, a + b*x))/b^5 - (2*d*(b*c - a*d)^3*Gamma(2 + n, a + b*x))/b^5 - (2*d^2*(b*c - a*d)^2*Gamma(3 + n, a + b*x))/b^5 - (d^3*(b*c - a*d)*Gamma(4 + n, a + b*x))/b^5 - (d^4*Gamma(5 + n, a + b*x))/(5*b^5)]
    @test_int [(c + d*x)^3*Gamma(n, a + b*x), x, 8, -(((b*c - a*d)^4*Gamma(n, a + b*x))/(4*b^4*d)) + ((c + d*x)^4*Gamma(n, a + b*x))/(4*d) - ((b*c - a*d)^3*Gamma(1 + n, a + b*x))/b^4 - (3*d*(b*c - a*d)^2*Gamma(2 + n, a + b*x))/(2*b^4) - (d^2*(b*c - a*d)*Gamma(3 + n, a + b*x))/b^4 - (d^3*Gamma(4 + n, a + b*x))/(4*b^4)]
    @test_int [(c + d*x)^2*Gamma(n, a + b*x), x, 7, -(((b*c - a*d)^3*Gamma(n, a + b*x))/(3*b^3*d)) + ((c + d*x)^3*Gamma(n, a + b*x))/(3*d) - ((b*c - a*d)^2*Gamma(1 + n, a + b*x))/b^3 - (d*(b*c - a*d)*Gamma(2 + n, a + b*x))/b^3 - (d^2*Gamma(3 + n, a + b*x))/(3*b^3)]
    @test_int [(c + d*x)^1*Gamma(n, a + b*x), x, 6, -(((b*c - a*d)^2*Gamma(n, a + b*x))/(2*b^2*d)) + ((c + d*x)^2*Gamma(n, a + b*x))/(2*d) - ((b*c - a*d)*Gamma(1 + n, a + b*x))/b^2 - (d*Gamma(2 + n, a + b*x))/(2*b^2)]
    @test_int [(c + d*x)^0*Gamma(n, a + b*x), x, 1, ((a + b*x)*Gamma(n, a + b*x))/b - Gamma(1 + n, a + b*x)/b]
    @test_int [Gamma(n, a + b*x)/(c + d*x)^1, x, 0, Unintegrable(Gamma(n, a + b*x)/(c + d*x), x)]
    @test_int [Gamma(n, a + b*x)/(c + d*x)^2, x, 0, Unintegrable(Gamma(n, a + b*x)/(c + d*x)^2, x)]
    @test_int [Gamma(n, a + b*x)/(c + d*x)^3, x, 0, Unintegrable(Gamma(n, a + b*x)/(c + d*x)^3, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*Gamma(p, d*(a+b*log(c*x^n)))=#


    @test_int [x^2*Gamma(p, d*(a + b*log(c*x^n))), x, 4, (1/3)*x^3*Gamma(p, d*(a + b*log(c*x^n))) - ((1/3)*x^3*Gamma(p, -(((3 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))*(d*(a + b*log(c*x^n)))^p)/(ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)*(-(((3 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))^p)]
    @test_int [x^1*Gamma(p, d*(a + b*log(c*x^n))), x, 4, (1/2)*x^2*Gamma(p, d*(a + b*log(c*x^n))) - ((1/2)*x^2*Gamma(p, -(((2 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))*(d*(a + b*log(c*x^n)))^p)/(ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*(-(((2 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))^p)]
    @test_int [x^0*Gamma(p, d*(a + b*log(c*x^n))), x, 5, x*Gamma(p, d*(a + b*log(c*x^n))) - (x*Gamma(p, -(((1 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))*(d*(a + b*log(c*x^n)))^p)/(ℯ^(a/(b*n))*(c*x^n)^n^(-1)*(-(((1 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))^p)]
    @test_int [Gamma(p, d*(a + b*log(c*x^n)))/x^1, x, 3, -(Gamma(1 + p, a*d + b*d*log(c*x^n))/(b*d*n)) + (Gamma(p, a*d + b*d*log(c*x^n))*(a + b*log(c*x^n)))/(b*n)]
    @test_int [Gamma(p, d*(a + b*log(c*x^n)))/x^2, x, 4, -(Gamma(p, d*(a + b*log(c*x^n)))/x) + (ℯ^(a/(b*n))*(c*x^n)^(1/n)*Gamma(p, ((1 + b*d*n)*(a + b*log(c*x^n)))/(b*n))*(d*(a + b*log(c*x^n)))^p)/((((1 + b*d*n)*(a + b*log(c*x^n)))/(b*n))^p*x)]
    @test_int [Gamma(p, d*(a + b*log(c*x^n)))/x^3, x, 4, -(Gamma(p, d*(a + b*log(c*x^n)))/(2*x^2)) + (ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*Gamma(p, ((2 + b*d*n)*(a + b*log(c*x^n)))/(b*n))*(d*(a + b*log(c*x^n)))^p)/((((2 + b*d*n)*(a + b*log(c*x^n)))/(b*n))^p*(2*x^2))]


    @test_int [(e*x)^m*Gamma(p, d*(a + b*log(c*x^n))), x, 4, ((e*x)^(1 + m)*Gamma(p, d*(a + b*log(c*x^n))))/(e*(1 + m)) - ((e*x)^(1 + m)*Gamma(p, -(((1 + m - b*d*n)*(a + b*log(c*x^n)))/(b*n)))*(d*(a + b*log(c*x^n)))^p)/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(-(((1 + m - b*d*n)*(a + b*log(c*x^n)))/(b*n)))^p*(e*(1 + m)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*LogGamma(a+b*x)=#


    @test_int [(c + d*x)^3*LogGamma(a + b*x), x, 4, -((6*d^3*PolyGamma(-5, a + b*x))/b^4) + (6*d^2*(c + d*x)*PolyGamma(-4, a + b*x))/b^3 - (3*d*(c + d*x)^2*PolyGamma(-3, a + b*x))/b^2 + ((c + d*x)^3*PolyGamma(-2, a + b*x))/b]
    @test_int [(c + d*x)^2*LogGamma(a + b*x), x, 3, (2*d^2*PolyGamma(-4, a + b*x))/b^3 - (2*d*(c + d*x)*PolyGamma(-3, a + b*x))/b^2 + ((c + d*x)^2*PolyGamma(-2, a + b*x))/b]
    @test_int [(c + d*x)^1*LogGamma(a + b*x), x, 2, -((d*PolyGamma(-3, a + b*x))/b^2) + ((c + d*x)*PolyGamma(-2, a + b*x))/b]
    @test_int [(c + d*x)^0*LogGamma(a + b*x), x, 1, PolyGamma(-2, a + b*x)/b]
    @test_int [LogGamma(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(LogGamma(a + b*x)/(c + d*x), x)]
    @test_int [LogGamma(a + b*x)/(c + d*x)^2, x, 0, Unintegrable(LogGamma(a + b*x)/(c + d*x)^2, x)]


    @test_int [(c + d*x)^(3/2)*LogGamma(a + b*x), x, 0, Unintegrable((c + d*x)^(3/2)*LogGamma(a + b*x), x)]
    @test_int [(c + d*x)^(1/2)*LogGamma(a + b*x), x, 0, Unintegrable(sqrt(c + d*x)*LogGamma(a + b*x), x)]
    @test_int [LogGamma(a + b*x)/(c + d*x)^(1/2), x, 0, Unintegrable(LogGamma(a + b*x)/sqrt(c + d*x), x)]


    @test_int [(c + d*x)^2*log(Gamma(a + b*x)), x, 6, ((c + d*x)^3*log(Gamma(a + b*x)))/(3*d) - ((c + d*x)^3*LogGamma(a + b*x))/(3*d) + (2*d^2*PolyGamma(-4, a + b*x))/b^3 - (2*d*(c + d*x)*PolyGamma(-3, a + b*x))/b^2 + ((c + d*x)^2*PolyGamma(-2, a + b*x))/b]
    @test_int [(c + d*x)^1*log(Gamma(a + b*x)), x, 5, ((c + d*x)^2*log(Gamma(a + b*x)))/(2*d) - ((c + d*x)^2*LogGamma(a + b*x))/(2*d) - (d*PolyGamma(-3, a + b*x))/b^2 + ((c + d*x)*PolyGamma(-2, a + b*x))/b]
    @test_int [(c + d*x)^0*log(Gamma(a + b*x)), x, 4, x*log(Gamma(a + b*x)) - x*LogGamma(a + b*x) + PolyGamma(-2, a + b*x)/b]
    @test_int [log(Gamma(a + b*x))/(c + d*x)^1, x, 2, (log(c + d*x)*(log(Gamma(a + b*x)) - LogGamma(a + b*x)))/d + Unintegrable(LogGamma(a + b*x)/(c + d*x), x)]
    @test_int [log(Gamma(a + b*x))/(c + d*x)^2, x, 2, -(log(Gamma(a + b*x))/(d*(c + d*x))) + (b*Unintegrable(PolyGamma(0, a + b*x)/(c + d*x), x))/d]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*PolyGamma(n, a+b*x)=#


    @test_int [(c + d*x)^m*PolyGamma(n, a + b*x), x, 0, Unintegrable((c + d*x)^m*PolyGamma(n, a + b*x), x)]


    @test_int [(c + d*x)^3*PolyGamma(n, a + b*x), x, 4, -((6*d^3*PolyGamma(-4 + n, a + b*x))/b^4) + (6*d^2*(c + d*x)*PolyGamma(-3 + n, a + b*x))/b^3 - (3*d*(c + d*x)^2*PolyGamma(-2 + n, a + b*x))/b^2 + ((c + d*x)^3*PolyGamma(-1 + n, a + b*x))/b]
    @test_int [(c + d*x)^2*PolyGamma(n, a + b*x), x, 3, (2*d^2*PolyGamma(-3 + n, a + b*x))/b^3 - (2*d*(c + d*x)*PolyGamma(-2 + n, a + b*x))/b^2 + ((c + d*x)^2*PolyGamma(-1 + n, a + b*x))/b]
    @test_int [(c + d*x)^1*PolyGamma(n, a + b*x), x, 2, -((d*PolyGamma(-2 + n, a + b*x))/b^2) + ((c + d*x)*PolyGamma(-1 + n, a + b*x))/b]
    @test_int [(c + d*x)^0*PolyGamma(n, a + b*x), x, 1, PolyGamma(-1 + n, a + b*x)/b]
    @test_int [PolyGamma(n, a + b*x)/(c + d*x)^1, x, 0, Unintegrable(PolyGamma(n, a + b*x)/(c + d*x), x)]
    @test_int [PolyGamma(n, a + b*x)/(c + d*x)^2, x, 1, -(PolyGamma(n, a + b*x)/(d*(c + d*x))) + (b*Unintegrable(PolyGamma(1 + n, a + b*x)/(c + d*x), x))/d]
    @test_int [PolyGamma(n, a + b*x)/(c + d*x)^3, x, 2, -(PolyGamma(n, a + b*x)/(2*d*(c + d*x)^2)) - (b*PolyGamma(1 + n, a + b*x))/(2*d^2*(c + d*x)) + (b^2*Unintegrable(PolyGamma(2 + n, a + b*x)/(c + d*x), x))/(2*d^2)]


    @test_int [(c + d*x)^(3/2)*PolyGamma(n, a + b*x), x, 2, -((3*d*sqrt(c + d*x)*PolyGamma(-2 + n, a + b*x))/(2*b^2)) + ((c + d*x)^(3/2)*PolyGamma(-1 + n, a + b*x))/b + (3*d^2*Unintegrable(PolyGamma(-2 + n, a + b*x)/sqrt(c + d*x), x))/(4*b^2)]
    @test_int [(c + d*x)^(1/2)*PolyGamma(n, a + b*x), x, 1, (sqrt(c + d*x)*PolyGamma(-1 + n, a + b*x))/b - (d*Unintegrable(PolyGamma(-1 + n, a + b*x)/sqrt(c + d*x), x))/(2*b)]
    @test_int [PolyGamma(n, a + b*x)/(c + d*x)^(1/2), x, 0, Unintegrable(PolyGamma(n, a + b*x)/sqrt(c + d*x), x)]
    @test_int [PolyGamma(n, a + b*x)/(c + d*x)^(3/2), x, 1, -((2*PolyGamma(n, a + b*x))/(d*sqrt(c + d*x))) + (2*b*Unintegrable(PolyGamma(1 + n, a + b*x)/sqrt(c + d*x), x))/d]


    @test_int [x^2*PolyGamma(1, a + b*x), x, 3, -((2*x*LogGamma(a + b*x))/b^2) + (2*PolyGamma(-2, a + b*x))/b^3 + (x^2*PolyGamma(0, a + b*x))/b]


    @test_int [PolyGamma(1, a + b*x)/x^2 - (b*PolyGamma(2, a + b*x))/x, x, 2, -(PolyGamma(1, a + b*x)/x)]
    @test_int [PolyGamma(n, a + b*x)/x^2 - (b*PolyGamma(1 + n, a + b*x))/x, x, 2, -(PolyGamma(n, a + b*x)/x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Gamma(c+dx)^m*PolyGamma(n, a+b*x)=#


    @test_int [Gamma(a + b*x)^n*PolyGamma(0, a + b*x), x, 1, Gamma(a + b*x)^n/(b*n)]
    @test_int [factorial(a + b*x)^n*PolyGamma(0, 1 + a + b*x), x, 1, factorial(a + b*x)^n/(b*n)]
    end
