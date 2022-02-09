@testset "8.3 Exponential integral functions" begin
    (a, b, c, d, e, m, n, x, ) = @variables a b c d e m n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Exponential*Integral*Functions=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*ExpIntegralE(n, b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*ExpIntegralE(n, b*x)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^2*ExpIntegralE(1, b*x), x, 1, -(x^3*ExpIntegralE(-2, b*x))/3 + (x^3*ExpIntegralE(1, b*x))/3]
    @test_int [x^1*ExpIntegralE(1, b*x), x, 1, -(x^2*ExpIntegralE(-1, b*x))/2 + (x^2*ExpIntegralE(1, b*x))/2]
    @test_int [x^0*ExpIntegralE(1, b*x), x, 1, -(ExpIntegralE(2, b*x)/b)]
    @test_int [ExpIntegralE(1, b*x)/x^1, x, 1, b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], -(b*x)) - EulerGamma*log(x) - log(b*x)^2/2]
    @test_int [ExpIntegralE(1, b*x)/x^2, x, 1, -(ExpIntegralE(1, b*x)/x) + ExpIntegralE(2, b*x)/x]
    @test_int [ExpIntegralE(1, b*x)/x^3, x, 1, -ExpIntegralE(1, b*x)/(2*x^2) + ExpIntegralE(3, b*x)/(2*x^2)]
    @test_int [ExpIntegralE(1, b*x)/x^4, x, 1, -(ExpIntegralE(1, b*x)/(3*x^3)) + ExpIntegralE(4, b*x)/(3*x^3)]


    @test_int [x^2*ExpIntegralE(2, b*x), x, 1, -(x^3*ExpIntegralE(-2, b*x))/4 + (x^3*ExpIntegralE(2, b*x))/4]
    @test_int [x^1*ExpIntegralE(2, b*x), x, 1, -(x^2*ExpIntegralE(-1, b*x))/3 + (x^2*ExpIntegralE(2, b*x))/3]
    @test_int [ExpIntegralE(2, b*x), x, 1, -(ExpIntegralE(3, b*x)/b)]
    @test_int [ExpIntegralE(2, b*x)/x^1, x, 1, -ExpIntegralE(1, b*x) + ExpIntegralE(2, b*x)]
    @test_int [ExpIntegralE(2, b*x)/x^2, x, 2, -(ExpIntegralE(2, b*x)/x) - b^2*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], -(b*x)) + b*EulerGamma*log(x) + (b*log(b*x)^2)/2]
    @test_int [ExpIntegralE(2, b*x)/x^3, x, 1, -(ExpIntegralE(2, b*x)/x^2) + ExpIntegralE(3, b*x)/x^2]
    @test_int [ExpIntegralE(2, b*x)/x^4, x, 1, -(ExpIntegralE(2, b*x)/(2*x^3)) + ExpIntegralE(4, b*x)/(2*x^3)]
    @test_int [ExpIntegralE(2, b*x)/x^5, x, 1, -(ExpIntegralE(2, b*x)/(3*x^4)) + ExpIntegralE(5, b*x)/(3*x^4)]


    @test_int [x^2*ExpIntegralE(3, b*x), x, 1, -(x^3*ExpIntegralE(-2, b*x))/5 + (x^3*ExpIntegralE(3, b*x))/5]
    @test_int [x^1*ExpIntegralE(3, b*x), x, 1, -(x^2*ExpIntegralE(-1, b*x))/4 + (x^2*ExpIntegralE(3, b*x))/4]
    @test_int [x^0*ExpIntegralE(3, b*x), x, 1, -(ExpIntegralE(4, b*x)/b)]
    @test_int [ExpIntegralE(3, b*x)/x^1, x, 1, -ExpIntegralE(1, b*x)/2 + ExpIntegralE(3, b*x)/2]
    @test_int [ExpIntegralE(3, b*x)/x^2, x, 1, -(ExpIntegralE(2, b*x)/x) + ExpIntegralE(3, b*x)/x]
    @test_int [ExpIntegralE(3, b*x)/x^3, x, 3, (b*ExpIntegralE(2, b*x))/(2*x) - ExpIntegralE(3, b*x)/(2*x^2) + (b^3*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], -(b*x)))/2 - (b^2*EulerGamma*log(x))/2 - (b^2*log(b*x)^2)/4]
    @test_int [ExpIntegralE(3, b*x)/x^4, x, 1, -(ExpIntegralE(3, b*x)/x^3) + ExpIntegralE(4, b*x)/x^3]
    @test_int [ExpIntegralE(3, b*x)/x^5, x, 1, -(ExpIntegralE(3, b*x)/(2*x^4)) + ExpIntegralE(5, b*x)/(2*x^4)]
    @test_int [ExpIntegralE(3, b*x)/x^6, x, 1, -(ExpIntegralE(3, b*x)/(3*x^5)) + ExpIntegralE(6, b*x)/(3*x^5)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^3*ExpIntegralE(-1, b*x), x, 1, -(x^4*ExpIntegralE(-3, b*x))/2 + (x^4*ExpIntegralE(-1, b*x))/2]
    @test_int [x^2*ExpIntegralE(-1, b*x), x, 1, -(x^3*ExpIntegralE(-2, b*x)) + x^3*ExpIntegralE(-1, b*x)]
    @test_int [x^1*ExpIntegralE(-1, b*x), x, 3, -(1/(b^2*ℯ^(b*x))) + ExpIntegralEi(-(b*x))/b^2]
    @test_int [x^0*ExpIntegralE(-1, b*x), x, 1, -(1/(b^2*ℯ^(b*x)*x))]
    @test_int [ExpIntegralE(-1, b*x)/x^1, x, 1, -ExpIntegralE(-1, b*x)/2 + ExpIntegralE(1, b*x)/2]
    @test_int [ExpIntegralE(-1, b*x)/x^2, x, 1, -ExpIntegralE(-1, b*x)/(3*x) + ExpIntegralE(2, b*x)/(3*x)]
    @test_int [ExpIntegralE(-1, b*x)/x^3, x, 1, -ExpIntegralE(-1, b*x)/(4*x^2) + ExpIntegralE(3, b*x)/(4*x^2)]


    @test_int [x^4*ExpIntegralE(-2, b*x), x, 1, (-(1/2))*x^5*ExpIntegralE(-4, b*x) + (1/2)*x^5*ExpIntegralE(-2, b*x)]
    @test_int [x^3*ExpIntegralE(-2, b*x), x, 1, -(x^4*ExpIntegralE(-3, b*x)) + x^4*ExpIntegralE(-2, b*x)]
    @test_int [x^2*ExpIntegralE(-2, b*x), x, 4, -2/(b^3*ℯ^(b*x)) - (x^2*ExpIntegralE(-1, b*x))/b + (2*ExpIntegralEi(-(b*x)))/b^3]
    @test_int [x^1*ExpIntegralE(-2, b*x), x, 1, -(x^2*ExpIntegralE(-2, b*x)) + x^2*ExpIntegralE(-1, b*x)]
    @test_int [x^0*ExpIntegralE(-1, b*x), x, 1, -(1/(b^2*ℯ^(b*x)*x))]
    @test_int [ExpIntegralE(-2, b*x)/x^1, x, 1, -ExpIntegralE(-2, b*x)/3 + ExpIntegralE(1, b*x)/3]
    @test_int [ExpIntegralE(-2, b*x)/x^2, x, 1, -ExpIntegralE(-2, b*x)/(4*x) + ExpIntegralE(2, b*x)/(4*x)]
    @test_int [ExpIntegralE(-2, b*x)/x^3, x, 1, -ExpIntegralE(-2, b*x)/(5*x^2) + ExpIntegralE(3, b*x)/(5*x^2)]


    @test_int [x^5*ExpIntegralE(-3, b*x), x, 1, (-(1/2))*x^6*ExpIntegralE(-5, b*x) + (1/2)*x^6*ExpIntegralE(-3, b*x)]
    @test_int [x^4*ExpIntegralE(-3, b*x), x, 1, (-x^5)*ExpIntegralE(-4, b*x) + x^5*ExpIntegralE(-3, b*x)]
    @test_int [x^3*ExpIntegralE(-3, b*x), x, 5, -6/(b^4*ℯ^(b*x)) - (x^3*ExpIntegralE(-2, b*x))/b - (3*x^2*ExpIntegralE(-1, b*x))/b^2 + (6*ExpIntegralEi(-(b*x)))/b^4]
    @test_int [x^2*ExpIntegralE(-3, b*x), x, 1, -(x^3*ExpIntegralE(-3, b*x)) + x^3*ExpIntegralE(-2, b*x)]
    @test_int [x^1*ExpIntegralE(-3, b*x), x, 1, -(x^2*ExpIntegralE(-3, b*x))/2 + (x^2*ExpIntegralE(-1, b*x))/2]
    @test_int [x^0*ExpIntegralE(-1, b*x), x, 1, -(1/(b^2*ℯ^(b*x)*x))]
    @test_int [ExpIntegralE(-3, b*x)/x^1, x, 1, -ExpIntegralE(-3, b*x)/4 + ExpIntegralE(1, b*x)/4]
    @test_int [ExpIntegralE(-3, b*x)/x^2, x, 1, -ExpIntegralE(-3, b*x)/(5*x) + ExpIntegralE(2, b*x)/(5*x)]
    @test_int [ExpIntegralE(-3, b*x)/x^3, x, 1, -ExpIntegralE(-3, b*x)/(6*x^2) + ExpIntegralE(3, b*x)/(6*x^2)]


    @test_int [x^3*ExpIntegralE(-3, b*x), x, 5, -(6/(ℯ^(b*x)*b^4)) - (x^3*ExpIntegralE(-2, b*x))/b - (3*x^2*ExpIntegralE(-1, b*x))/b^2 + (6*ExpIntegralEi((-b)*x))/b^4]
    @test_int [x^2*ExpIntegralE(-2, b*x), x, 4, -(2/(ℯ^(b*x)*b^3)) - (x^2*ExpIntegralE(-1, b*x))/b + (2*ExpIntegralEi((-b)*x))/b^3]
    @test_int [x^1*ExpIntegralE(-1, b*x), x, 3, -(1/(ℯ^(b*x)*b^2)) + ExpIntegralEi((-b)*x)/b^2]
    @test_int [x^0*ExpIntegralE(0, b*x), x, 2, ExpIntegralEi((-b)*x)/b]
    @test_int [ExpIntegralE(1, b*x)/x^1, x, 1, b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-b)*x) - EulerGamma*log(x) - (1/2)*log(b*x)^2]
    @test_int [ExpIntegralE(2, b*x)/x^2, x, 2, -(ExpIntegralE(2, b*x)/x) - b^2*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-b)*x) + b*EulerGamma*log(x) + (1/2)*b*log(b*x)^2]
    @test_int [ExpIntegralE(3, b*x)/x^3, x, 3, (b*ExpIntegralE(2, b*x))/(2*x) - ExpIntegralE(3, b*x)/(2*x^2) + (1/2)*b^3*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-b)*x) - (1/2)*b^2*EulerGamma*log(x) - (1/4)*b^2*log(b*x)^2]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^(m/2)*ExpIntegralE(n/2, b*x)=#


    @test_int [(d*x)^(3/2)*ExpIntegralE(-3/2, b*x), x, 1, -((4*(d*x)^(5/2)*HypergeometricPFQ([5/2, 5/2], [7/2, 7/2], (-b)*x))/(25*d)) + (3*sqrt(pi)*(d*x)^(3/2)*log(x))/(4*b*(b*x)^(3/2))]
    @test_int [(d*x)^(1/2)*ExpIntegralE(-1/2, b*x), x, 1, -((4*(d*x)^(3/2)*HypergeometricPFQ([3/2, 3/2], [5/2, 5/2], (-b)*x))/(9*d)) + (sqrt(pi)*sqrt(d*x)*log(x))/(2*b*sqrt(b*x))]
    @test_int [ExpIntegralE(1/2, b*x)/(d*x)^(1/2), x, 1, -((4*sqrt(d*x)*HypergeometricPFQ([1/2, 1/2], [3/2, 3/2], (-b)*x))/d) + (sqrt(pi)*sqrt(b*x)*log(x))/(b*sqrt(d*x))]
    @test_int [ExpIntegralE(3/2, b*x)/(d*x)^(3/2), x, 1, -((4*HypergeometricPFQ([-(1/2), -(1/2)], [1/2, 1/2], (-b)*x))/(d*sqrt(d*x))) - (2*sqrt(pi)*(b*x)^(3/2)*log(x))/(b*(d*x)^(3/2))]
    @test_int [ExpIntegralE(5/2, b*x)/(d*x)^(5/2), x, 1, -((4*HypergeometricPFQ([-(3/2), -(3/2)], [-(1/2), -(1/2)], (-b)*x))/(9*d*(d*x)^(3/2))) + (4*sqrt(pi)*(b*x)^(5/2)*log(x))/(3*b*(d*x)^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*ExpIntegralE(n, b*x)*with*n*symbolic=#


    @test_int [x^m*ExpIntegralE(n, x), x, 1, -((x^(1 + m)*ExpIntegralE(-m, x))/(m + n)) + (x^(1 + m)*ExpIntegralE(n, x))/(m + n)]
    @test_int [x^m*ExpIntegralE(n, b*x), x, 1, -((x^(1 + m)*ExpIntegralE(-m, b*x))/(m + n)) + (x^(1 + m)*ExpIntegralE(n, b*x))/(m + n)]
    @test_int [(d*x)^m*ExpIntegralE(n, x), x, 1, -(((d*x)^(1 + m)*ExpIntegralE(-m, x))/(d*(m + n))) + ((d*x)^(1 + m)*ExpIntegralE(n, x))/(d*(m + n))]
    @test_int [(d*x)^m*ExpIntegralE(n, b*x), x, 1, -(((d*x)^(1 + m)*ExpIntegralE(-m, b*x))/(d*(m + n))) + ((d*x)^(1 + m)*ExpIntegralE(n, b*x))/(d*(m + n))]


    @test_int [ExpIntegralE(n, x)/x^n, x, 1, -((x^(1 - n)*HypergeometricPFQ([1 - n, 1 - n], [2 - n, 2 - n], -x))/(1 - n)^2) + Gamma(1 - n)*log(x)]
    @test_int [ExpIntegralE(n, b*x)/x^n, x, 1, -((x^(1 - n)*HypergeometricPFQ([1 - n, 1 - n], [2 - n, 2 - n], (-b)*x))/(1 - n)^2) + ((b*x)^n*Gamma(1 - n)*log(x))/(x^n*b)]
    @test_int [ExpIntegralE(n, x)/(d*x)^n, x, 1, -(((d*x)^(1 - n)*HypergeometricPFQ([1 - n, 1 - n], [2 - n, 2 - n], -x))/(d*(1 - n)^2)) + (x^n*Gamma(1 - n)*log(x))/(d*x)^n]
    @test_int [ExpIntegralE(n, b*x)/(d*x)^n, x, 1, -(((d*x)^(1 - n)*HypergeometricPFQ([1 - n, 1 - n], [2 - n, 2 - n], (-b)*x))/(d*(1 - n)^2)) + ((b*x)^n*Gamma(1 - n)*log(x))/((d*x)^n*b)]


    @test_int [x^2*ExpIntegralE(n, b*x), x, 1, -((x^3*ExpIntegralE(-2, b*x))/(2 + n)) + (x^3*ExpIntegralE(n, b*x))/(2 + n)]
    @test_int [x^1*ExpIntegralE(n, b*x), x, 1, -((x^2*ExpIntegralE(-1, b*x))/(1 + n)) + (x^2*ExpIntegralE(n, b*x))/(1 + n)]
    @test_int [x^0*ExpIntegralE(n, b*x), x, 1, -(ExpIntegralE(1 + n, b*x)/b)]
    @test_int [ExpIntegralE(n, b*x)/x^1, x, 1, ExpIntegralE(1, b*x)/(1 - n) - ExpIntegralE(n, b*x)/(1 - n)]
    @test_int [ExpIntegralE(n, b*x)/x^2, x, 1, ExpIntegralE(2, b*x)/((2 - n)*x) - ExpIntegralE(n, b*x)/((2 - n)*x)]
    @test_int [ExpIntegralE(n, b*x)/x^3, x, 1, ExpIntegralE(3, b*x)/((3 - n)*x^2) - ExpIntegralE(n, b*x)/((3 - n)*x^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*ExpIntegralE(n, a+b*x)=#
    #==#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*ExpIntegralE(n, a+b*x)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(c + d*x)^3*ExpIntegralE(1, a + b*x), x, 4, -(((c + d*x)^3*ExpIntegralE(2, a + b*x))/b) - (3*d*(c + d*x)^2*ExpIntegralE(3, a + b*x))/b^2 - (6*d^2*(c + d*x)*ExpIntegralE(4, a + b*x))/b^3 - (6*d^3*ExpIntegralE(5, a + b*x))/b^4]
    @test_int [(c + d*x)^2*ExpIntegralE(1, a + b*x), x, 3, -(((c + d*x)^2*ExpIntegralE(2, a + b*x))/b) - (2*d*(c + d*x)*ExpIntegralE(3, a + b*x))/b^2 - (2*d^2*ExpIntegralE(4, a + b*x))/b^3]
    @test_int [(c + d*x)^1*ExpIntegralE(1, a + b*x), x, 2, -(((c + d*x)*ExpIntegralE(2, a + b*x))/b) - (d*ExpIntegralE(3, a + b*x))/b^2]
    @test_int [(c + d*x)^0*ExpIntegralE(1, a + b*x), x, 1, -(ExpIntegralE(2, a + b*x)/b)]
    @test_int [ExpIntegralE(1, a + b*x)/(c + d*x)^1, x, 0, Unintegrable(ExpIntegralE(1, a + b*x)/(c + d*x), x)]
    @test_int [ExpIntegralE(1, a + b*x)/(c + d*x)^2, x, 5, -(ExpIntegralE(1, a + b*x)/(d*(c + d*x))) - (b*ExpIntegralEi(-a - b*x))/(d*(b*c - a*d)) + (b*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(d*(b*c - a*d))]
    @test_int [ExpIntegralE(1, a + b*x)/(c + d*x)^3, x, 7, -(b*ℯ^(-a - b*x))/(2*d*(b*c - a*d)*(c + d*x)) - ExpIntegralE(1, a + b*x)/(2*d*(c + d*x)^2) - (b^2*ExpIntegralEi(-a - b*x))/(2*d*(b*c - a*d)^2) + (b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(2*d*(b*c - a*d)^2) - (b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(2*d^2*(b*c - a*d))]
    @test_int [ExpIntegralE(1, a + b*x)/(c + d*x)^4, x, 10, -(b*ℯ^(-a - b*x))/(6*d*(b*c - a*d)*(c + d*x)^2) - (b^2*ℯ^(-a - b*x))/(3*d*(b*c - a*d)^2*(c + d*x)) + (b^2*ℯ^(-a - b*x))/(6*d^2*(b*c - a*d)*(c + d*x)) - ExpIntegralE(1, a + b*x)/(3*d*(c + d*x)^3) - (b^3*ExpIntegralEi(-a - b*x))/(3*d*(b*c - a*d)^3) + (b^3*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(3*d*(b*c - a*d)^3) - (b^3*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(3*d^2*(b*c - a*d)^2) + (b^3*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(6*d^3*(b*c - a*d))]


    @test_int [(c + d*x)^3*ExpIntegralE(2, a + b*x), x, 4, -(((c + d*x)^3*ExpIntegralE(3, a + b*x))/b) - (3*d*(c + d*x)^2*ExpIntegralE(4, a + b*x))/b^2 - (6*d^2*(c + d*x)*ExpIntegralE(5, a + b*x))/b^3 - (6*d^3*ExpIntegralE(6, a + b*x))/b^4]
    @test_int [(c + d*x)^2*ExpIntegralE(2, a + b*x), x, 3, -(((c + d*x)^2*ExpIntegralE(3, a + b*x))/b) - (2*d*(c + d*x)*ExpIntegralE(4, a + b*x))/b^2 - (2*d^2*ExpIntegralE(5, a + b*x))/b^3]
    @test_int [(c + d*x)^1*ExpIntegralE(2, a + b*x), x, 2, -(((c + d*x)*ExpIntegralE(3, a + b*x))/b) - (d*ExpIntegralE(4, a + b*x))/b^2]
    @test_int [(c + d*x)^0*ExpIntegralE(2, a + b*x), x, 1, -(ExpIntegralE(3, a + b*x)/b)]
    @test_int [ExpIntegralE(2, a + b*x)/(c + d*x)^1, x, 0, Unintegrable(ExpIntegralE(2, a + b*x)/(c + d*x), x)]
    @test_int [ExpIntegralE(2, a + b*x)/(c + d*x)^2, x, 1, -(ExpIntegralE(2, a + b*x)/(d*(c + d*x))) - (b*Unintegrable(ExpIntegralE(1, a + b*x)/(c + d*x), x))/d]
    @test_int [ExpIntegralE(2, a + b*x)/(c + d*x)^3, x, 6, (b*ExpIntegralE(1, a + b*x))/(2*d^2*(c + d*x)) - ExpIntegralE(2, a + b*x)/(2*d*(c + d*x)^2) + (b^2*ExpIntegralEi(-a - b*x))/(2*d^2*(b*c - a*d)) - (b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(2*d^2*(b*c - a*d))]
    @test_int [ExpIntegralE(2, a + b*x)/(c + d*x)^4, x, 8, (b^2*ℯ^(-a - b*x))/(6*d^2*(b*c - a*d)*(c + d*x)) + (b*ExpIntegralE(1, a + b*x))/(6*d^2*(c + d*x)^2) - ExpIntegralE(2, a + b*x)/(3*d*(c + d*x)^3) + (b^3*ExpIntegralEi(-a - b*x))/(6*d^2*(b*c - a*d)^2) - (b^3*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(6*d^2*(b*c - a*d)^2) + (b^3*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(6*d^3*(b*c - a*d))]


    @test_int [(c + d*x)^3*ExpIntegralE(3, a + b*x), x, 4, -(((c + d*x)^3*ExpIntegralE(4, a + b*x))/b) - (3*d*(c + d*x)^2*ExpIntegralE(5, a + b*x))/b^2 - (6*d^2*(c + d*x)*ExpIntegralE(6, a + b*x))/b^3 - (6*d^3*ExpIntegralE(7, a + b*x))/b^4]
    @test_int [(c + d*x)^2*ExpIntegralE(3, a + b*x), x, 3, -(((c + d*x)^2*ExpIntegralE(4, a + b*x))/b) - (2*d*(c + d*x)*ExpIntegralE(5, a + b*x))/b^2 - (2*d^2*ExpIntegralE(6, a + b*x))/b^3]
    @test_int [(c + d*x)^1*ExpIntegralE(3, a + b*x), x, 2, -(((c + d*x)*ExpIntegralE(4, a + b*x))/b) - (d*ExpIntegralE(5, a + b*x))/b^2]
    @test_int [(c + d*x)^0*ExpIntegralE(3, a + b*x), x, 1, -(ExpIntegralE(4, a + b*x)/b)]
    @test_int [ExpIntegralE(3, a + b*x)/(c + d*x)^1, x, 0, Unintegrable(ExpIntegralE(3, a + b*x)/(c + d*x), x)]
    @test_int [ExpIntegralE(3, a + b*x)/(c + d*x)^2, x, 1, -(ExpIntegralE(3, a + b*x)/(d*(c + d*x))) - (b*Unintegrable(ExpIntegralE(2, a + b*x)/(c + d*x), x))/d]
    @test_int [ExpIntegralE(3, a + b*x)/(c + d*x)^3, x, 2, (b*ExpIntegralE(2, a + b*x))/(2*d^2*(c + d*x)) - ExpIntegralE(3, a + b*x)/(2*d*(c + d*x)^2) + (b^2*Unintegrable(ExpIntegralE(1, a + b*x)/(c + d*x), x))/(2*d^2)]
    @test_int [ExpIntegralE(3, a + b*x)/(c + d*x)^4, x, 7, -(b^2*ExpIntegralE(1, a + b*x))/(6*d^3*(c + d*x)) + (b*ExpIntegralE(2, a + b*x))/(6*d^2*(c + d*x)^2) - ExpIntegralE(3, a + b*x)/(3*d*(c + d*x)^3) - (b^3*ExpIntegralEi(-a - b*x))/(6*d^3*(b*c - a*d)) + (b^3*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(6*d^3*(b*c - a*d))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(c + d*x)^4*ExpIntegralE(-1, a + b*x), x, 10, (-8*d^4*ℯ^(-a - b*x))/b^5 - (4*d^3*(b*c - a*d)*ℯ^(-a - b*x))/b^5 - (4*d^2*(b*c - a*d)^2*ℯ^(-a - b*x))/b^5 - (8*d^3*ℯ^(-a - b*x)*(c + d*x))/b^4 - (4*d^2*(b*c - a*d)*ℯ^(-a - b*x)*(c + d*x))/b^4 - (4*d^2*ℯ^(-a - b*x)*(c + d*x)^2)/b^3 - (ℯ^(-a - b*x)*(c + d*x)^4)/(b*(a + b*x)) + (4*d*(b*c - a*d)^3*ExpIntegralEi(-a - b*x))/b^5]
    @test_int [(c + d*x)^3*ExpIntegralE(-1, a + b*x), x, 7, (-3*d^3*ℯ^(-a - b*x))/b^4 - (3*d^2*(b*c - a*d)*ℯ^(-a - b*x))/b^4 - (3*d^2*ℯ^(-a - b*x)*(c + d*x))/b^3 - (ℯ^(-a - b*x)*(c + d*x)^3)/(b*(a + b*x)) + (3*d*(b*c - a*d)^2*ExpIntegralEi(-a - b*x))/b^4]
    @test_int [(c + d*x)^2*ExpIntegralE(-1, a + b*x), x, 5, (-2*d^2*ℯ^(-a - b*x))/b^3 - (ℯ^(-a - b*x)*(c + d*x)^2)/(b*(a + b*x)) + (2*d*(b*c - a*d)*ExpIntegralEi(-a - b*x))/b^3]
    @test_int [(c + d*x)^1*ExpIntegralE(-1, a + b*x), x, 2, -((ℯ^(-a - b*x)*(c + d*x))/(b*(a + b*x))) + (d*ExpIntegralEi(-a - b*x))/b^2]
    @test_int [(c + d*x)^0*ExpIntegralE(-1, a + b*x), x, 1, -(ℯ^(-a - b*x)/(b*(a + b*x)))]
    @test_int [ExpIntegralE(-1, a + b*x)/(c + d*x)^1, x, 7, -((d*ℯ^(-a - b*x))/(b*(b*c - a*d)*(c + d*x))) - ℯ^(-a - b*x)/(b*(a + b*x)*(c + d*x)) - (d*ExpIntegralEi(-a - b*x))/(b*c - a*d)^2 + (d*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^2 - (ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)]
    @test_int [ExpIntegralE(-1, a + b*x)/(c + d*x)^2, x, 10, -((d*ℯ^(-a - b*x))/(b*(b*c - a*d)*(c + d*x)^2)) - ℯ^(-a - b*x)/(b*(a + b*x)*(c + d*x)^2) - (2*d*ℯ^(-a - b*x))/((b*c - a*d)^2*(c + d*x)) + ℯ^(-a - b*x)/((b*c - a*d)*(c + d*x)) - (2*b*d*ExpIntegralEi(-a - b*x))/(b*c - a*d)^3 + (2*b*d*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^3 - (2*b*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^2 + (b*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(d*(b*c - a*d))]
    @test_int [ExpIntegralE(-1, a + b*x)/(c + d*x)^3, x, 14, -((d*ℯ^(-a - b*x))/(b*(b*c - a*d)*(c + d*x)^3)) - ℯ^(-a - b*x)/(b*(a + b*x)*(c + d*x)^3) - (3*d*ℯ^(-a - b*x))/(2*(b*c - a*d)^2*(c + d*x)^2) + ℯ^(-a - b*x)/(2*(b*c - a*d)*(c + d*x)^2) - (3*b*d*ℯ^(-a - b*x))/((b*c - a*d)^3*(c + d*x)) + (3*b*ℯ^(-a - b*x))/(2*(b*c - a*d)^2*(c + d*x)) - (b*ℯ^(-a - b*x))/(2*d*(b*c - a*d)*(c + d*x)) - (3*b^2*d*ExpIntegralEi(-a - b*x))/(b*c - a*d)^4 + (3*b^2*d*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^4 - (3*b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^3 + (3*b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(2*d*(b*c - a*d)^2) - (b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(2*d^2*(b*c - a*d))]


    @test_int [(c + d*x)^4*ExpIntegralE(-2, a + b*x), x, 8, (-12*d^4*ℯ^(-a - b*x))/b^5 - (12*d^3*(b*c - a*d)*ℯ^(-a - b*x))/b^5 - (12*d^3*ℯ^(-a - b*x)*(c + d*x))/b^4 - (4*d*ℯ^(-a - b*x)*(c + d*x)^3)/(b^2*(a + b*x)) - ((c + d*x)^4*ExpIntegralE(-1, a + b*x))/b + (12*d^2*(b*c - a*d)^2*ExpIntegralEi(-a - b*x))/b^5]
    @test_int [(c + d*x)^3*ExpIntegralE(-2, a + b*x), x, 6, (-6*d^3*ℯ^(-a - b*x))/b^4 - (3*d*ℯ^(-a - b*x)*(c + d*x)^2)/(b^2*(a + b*x)) - ((c + d*x)^3*ExpIntegralE(-1, a + b*x))/b + (6*d^2*(b*c - a*d)*ExpIntegralEi(-a - b*x))/b^4]
    @test_int [(c + d*x)^2*ExpIntegralE(-2, a + b*x), x, 3, (-2*d*ℯ^(-a - b*x)*(c + d*x))/(b^2*(a + b*x)) - ((c + d*x)^2*ExpIntegralE(-1, a + b*x))/b + (2*d^2*ExpIntegralEi(-a - b*x))/b^3]
    @test_int [(c + d*x)^1*ExpIntegralE(-2, a + b*x), x, 2, -((d*ℯ^(-a - b*x))/(b^2*(a + b*x))) - ((c + d*x)*ExpIntegralE(-1, a + b*x))/b]
    @test_int [(c + d*x)^0*ExpIntegralE(-2, a + b*x), x, 1, -(ExpIntegralE(-1, a + b*x)/b)]
    @test_int [ExpIntegralE(-2, a + b*x)/(c + d*x)^1, x, 11, (d^2*ℯ^(-a - b*x))/(b^2*(b*c - a*d)*(c + d*x)^2) + (d*ℯ^(-a - b*x))/(b^2*(a + b*x)*(c + d*x)^2) + (2*d^2*ℯ^(-a - b*x))/(b*(b*c - a*d)^2*(c + d*x)) - (d*ℯ^(-a - b*x))/(b*(b*c - a*d)*(c + d*x)) - ExpIntegralE(-1, a + b*x)/(b*(c + d*x)) + (2*d^2*ExpIntegralEi(-a - b*x))/(b*c - a*d)^3 - (2*d^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^3 + (2*d*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^2 - (ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)]
    @test_int [ExpIntegralE(-2, a + b*x)/(c + d*x)^2, x, 15, (2*d^2*ℯ^(-a - b*x))/(b^2*(b*c - a*d)*(c + d*x)^3) + (2*d*ℯ^(-a - b*x))/(b^2*(a + b*x)*(c + d*x)^3) + (3*d^2*ℯ^(-a - b*x))/(b*(b*c - a*d)^2*(c + d*x)^2) - (d*ℯ^(-a - b*x))/(b*(b*c - a*d)*(c + d*x)^2) + (6*d^2*ℯ^(-a - b*x))/((b*c - a*d)^3*(c + d*x)) - (3*d*ℯ^(-a - b*x))/((b*c - a*d)^2*(c + d*x)) + ℯ^(-a - b*x)/((b*c - a*d)*(c + d*x)) - ExpIntegralE(-1, a + b*x)/(b*(c + d*x)^2) + (6*b*d^2*ExpIntegralEi(-a - b*x))/(b*c - a*d)^4 - (6*b*d^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^4 + (6*b*d*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^3 - (3*b*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^2 + (b*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(d*(b*c - a*d))]
    @test_int [ExpIntegralE(-2, a + b*x)/(c + d*x)^3, x, 20, (3*d^2*ℯ^(-a - b*x))/(b^2*(b*c - a*d)*(c + d*x)^4) + (3*d*ℯ^(-a - b*x))/(b^2*(a + b*x)*(c + d*x)^4) + (4*d^2*ℯ^(-a - b*x))/(b*(b*c - a*d)^2*(c + d*x)^3) - (d*ℯ^(-a - b*x))/(b*(b*c - a*d)*(c + d*x)^3) + (6*d^2*ℯ^(-a - b*x))/((b*c - a*d)^3*(c + d*x)^2) - (2*d*ℯ^(-a - b*x))/((b*c - a*d)^2*(c + d*x)^2) + ℯ^(-a - b*x)/(2*(b*c - a*d)*(c + d*x)^2) + (12*b*d^2*ℯ^(-a - b*x))/((b*c - a*d)^4*(c + d*x)) - (6*b*d*ℯ^(-a - b*x))/((b*c - a*d)^3*(c + d*x)) + (2*b*ℯ^(-a - b*x))/((b*c - a*d)^2*(c + d*x)) - (b*ℯ^(-a - b*x))/(2*d*(b*c - a*d)*(c + d*x)) - ExpIntegralE(-1, a + b*x)/(b*(c + d*x)^3) + (12*b^2*d^2*ExpIntegralEi(-a - b*x))/(b*c - a*d)^5 - (12*b^2*d^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^5 + (12*b^2*d*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^4 - (6*b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^3 + (2*b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(d*(b*c - a*d)^2) - (b^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(2*d^2*(b*c - a*d))]


    @test_int [(c + d*x)^4*ExpIntegralE(-3, a + b*x), x, 7, (-24*d^4*ℯ^(-a - b*x))/b^5 - (12*d^2*ℯ^(-a - b*x)*(c + d*x)^2)/(b^3*(a + b*x)) - ((c + d*x)^4*ExpIntegralE(-2, a + b*x))/b - (4*d*(c + d*x)^3*ExpIntegralE(-1, a + b*x))/b^2 + (24*d^3*(b*c - a*d)*ExpIntegralEi(-a - b*x))/b^5]
    @test_int [(c + d*x)^3*ExpIntegralE(-3, a + b*x), x, 4, (-6*d^2*ℯ^(-a - b*x)*(c + d*x))/(b^3*(a + b*x)) - ((c + d*x)^3*ExpIntegralE(-2, a + b*x))/b - (3*d*(c + d*x)^2*ExpIntegralE(-1, a + b*x))/b^2 + (6*d^3*ExpIntegralEi(-a - b*x))/b^4]
    @test_int [(c + d*x)^2*ExpIntegralE(-3, a + b*x), x, 3, (-2*d^2*ℯ^(-a - b*x))/(b^3*(a + b*x)) - ((c + d*x)^2*ExpIntegralE(-2, a + b*x))/b - (2*d*(c + d*x)*ExpIntegralE(-1, a + b*x))/b^2]
    @test_int [(c + d*x)^1*ExpIntegralE(-3, a + b*x), x, 2, -(((c + d*x)*ExpIntegralE(-2, a + b*x))/b) - (d*ExpIntegralE(-1, a + b*x))/b^2]
    @test_int [(c + d*x)^0*ExpIntegralE(-3, a + b*x), x, 1, -(ExpIntegralE(-2, a + b*x)/b)]
    @test_int [ExpIntegralE(-3, a + b*x)/(c + d*x)^1, x, 16, (-2*d^3*ℯ^(-a - b*x))/(b^3*(b*c - a*d)*(c + d*x)^3) - (2*d^2*ℯ^(-a - b*x))/(b^3*(a + b*x)*(c + d*x)^3) - (3*d^3*ℯ^(-a - b*x))/(b^2*(b*c - a*d)^2*(c + d*x)^2) + (d^2*ℯ^(-a - b*x))/(b^2*(b*c - a*d)*(c + d*x)^2) - (6*d^3*ℯ^(-a - b*x))/(b*(b*c - a*d)^3*(c + d*x)) + (3*d^2*ℯ^(-a - b*x))/(b*(b*c - a*d)^2*(c + d*x)) - (d*ℯ^(-a - b*x))/(b*(b*c - a*d)*(c + d*x)) - ExpIntegralE(-2, a + b*x)/(b*(c + d*x)) + (d*ExpIntegralE(-1, a + b*x))/(b^2*(c + d*x)^2) - (6*d^3*ExpIntegralEi(-a - b*x))/(b*c - a*d)^4 + (6*d^3*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^4 - (6*d^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^3 + (3*d*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^2 - (ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)]
    @test_int [ExpIntegralE(-3, a + b*x)/(c + d*x)^2, x, 21, (-6*d^3*ℯ^(-a - b*x))/(b^3*(b*c - a*d)*(c + d*x)^4) - (6*d^2*ℯ^(-a - b*x))/(b^3*(a + b*x)*(c + d*x)^4) - (8*d^3*ℯ^(-a - b*x))/(b^2*(b*c - a*d)^2*(c + d*x)^3) + (2*d^2*ℯ^(-a - b*x))/(b^2*(b*c - a*d)*(c + d*x)^3) - (12*d^3*ℯ^(-a - b*x))/(b*(b*c - a*d)^3*(c + d*x)^2) + (4*d^2*ℯ^(-a - b*x))/(b*(b*c - a*d)^2*(c + d*x)^2) - (d*ℯ^(-a - b*x))/(b*(b*c - a*d)*(c + d*x)^2) - (24*d^3*ℯ^(-a - b*x))/((b*c - a*d)^4*(c + d*x)) + (12*d^2*ℯ^(-a - b*x))/((b*c - a*d)^3*(c + d*x)) - (4*d*ℯ^(-a - b*x))/((b*c - a*d)^2*(c + d*x)) + ℯ^(-a - b*x)/((b*c - a*d)*(c + d*x)) - ExpIntegralE(-2, a + b*x)/(b*(c + d*x)^2) + (2*d*ExpIntegralE(-1, a + b*x))/(b^2*(c + d*x)^3) - (24*b*d^3*ExpIntegralEi(-a - b*x))/(b*c - a*d)^5 + (24*b*d^3*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^5 - (24*b*d^2*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^4 + (12*b*d*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^3 - (4*b*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(b*c - a*d)^2 + (b*ℯ^(-a + (b*c)/d)*ExpIntegralEi(-((b*(c + d*x))/d)))/(d*(b*c - a*d))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*ExpIntegralE(n, a+b*x)*when*m*symbolic=#


    @test_int [(c + d*x)^m*ExpIntegralE(3, a + b*x), x, 3, If(13>=8, (b^2*(c + d*x)^(3 + m)*ExpIntegralE(1, a + b*x))/(d^3*(1 + m)*(2 + m)*(3 + m)) + (b*(c + d*x)^(2 + m)*ExpIntegralE(2, a + b*x))/(d^2*(1 + m)*(2 + m)) + ((c + d*x)^(1 + m)*ExpIntegralE(3, a + b*x))/(d*(1 + m)) + (b^3*CannotIntegrate((ℯ^(-a - b*x)*(c + d*x)^(3 + m))/(a + b*x), x))/(d^3*(1 + m)*(2 + m)*(3 + m)), (b^2*(c + d*x)^(3 + m)*ExpIntegralE(1, a + b*x))/(d^3*(3 + m)*(2 + 3*m + m^2)) + (b*(c + d*x)^(2 + m)*ExpIntegralE(2, a + b*x))/(d^2*(1 + m)*(2 + m)) + ((c + d*x)^(1 + m)*ExpIntegralE(3, a + b*x))/(d*(1 + m)) + (b^3*Int((ℯ^(-a - b*x)*(c + d*x)^(3 + m))/(a + b*x), x))/(d^3*(3 + m)*(2 + 3*m + m^2)))]
    @test_int [(c + d*x)^m*ExpIntegralE(2, a + b*x), x, 2, (b*(c + d*x)^(2 + m)*ExpIntegralE(1, a + b*x))/(d^2*(1 + m)*(2 + m)) + ((c + d*x)^(1 + m)*ExpIntegralE(2, a + b*x))/(d*(1 + m)) + (b^2*CannotIntegrate((ℯ^(-a - b*x)*(c + d*x)^(2 + m))/(a + b*x), x))/(d^2*(1 + m)*(2 + m))]
    @test_int [(c + d*x)^m*ExpIntegralE(1, a + b*x), x, 1, ((c + d*x)^(1 + m)*ExpIntegralE(1, a + b*x))/(d*(1 + m)) + (b*CannotIntegrate((ℯ^(-a - b*x)*(c + d*x)^(1 + m))/(a + b*x), x))/(d*(1 + m))]
    @test_int [(c + d*x)^m*ExpIntegralE(-1, a + b*x), x, 1, -((ℯ^(-a - b*x)*(c + d*x)^m)/(b*(a + b*x))) + (d*m*CannotIntegrate((ℯ^(-a - b*x)*(c + d*x)^(-1 + m))/(a + b*x), x))/b]
    @test_int [(c + d*x)^m*ExpIntegralE(-2, a + b*x), x, 2, -((d*ℯ^(-a - b*x)*m*(c + d*x)^(-1 + m))/(b^2*(a + b*x))) - ((c + d*x)^m*ExpIntegralE(-1, a + b*x))/b - (d^2*(1 - m)*m*CannotIntegrate((ℯ^(-a - b*x)*(c + d*x)^(-2 + m))/(a + b*x), x))/b^2]
    @test_int [(c + d*x)^m*ExpIntegralE(-3, a + b*x), x, 3, (d^2*ℯ^(-a - b*x)*(1 - m)*m*(c + d*x)^(-2 + m))/(b^3*(a + b*x)) - ((c + d*x)^m*ExpIntegralE(-2, a + b*x))/b - (d*m*(c + d*x)^(-1 + m)*ExpIntegralE(-1, a + b*x))/b^2 + (d^3*(1 - m)*(2 - m)*m*CannotIntegrate((ℯ^(-a - b*x)*(c + d*x)^(-3 + m))/(a + b*x), x))/b^3]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*ExpIntegralE(n, a+b*x)*when*n*symbolic=#


    @test_int [(c + d*x)^m*ExpIntegralE(n, a + b*x), x, 0, Unintegrable((c + d*x)^m*ExpIntegralE(n, a + b*x), x)]


    @test_int [(c + d*x)^3*ExpIntegralE(n, a + b*x), x, 4, -(((c + d*x)^3*ExpIntegralE(1 + n, a + b*x))/b) - (3*d*(c + d*x)^2*ExpIntegralE(2 + n, a + b*x))/b^2 - (6*d^2*(c + d*x)*ExpIntegralE(3 + n, a + b*x))/b^3 - (6*d^3*ExpIntegralE(4 + n, a + b*x))/b^4]
    @test_int [(c + d*x)^2*ExpIntegralE(n, a + b*x), x, 3, -(((c + d*x)^2*ExpIntegralE(1 + n, a + b*x))/b) - (2*d*(c + d*x)*ExpIntegralE(2 + n, a + b*x))/b^2 - (2*d^2*ExpIntegralE(3 + n, a + b*x))/b^3]
    @test_int [(c + d*x)^1*ExpIntegralE(n, a + b*x), x, 2, -(((c + d*x)*ExpIntegralE(1 + n, a + b*x))/b) - (d*ExpIntegralE(2 + n, a + b*x))/b^2]
    @test_int [(c + d*x)^0*ExpIntegralE(n, a + b*x), x, 1, -(ExpIntegralE(1 + n, a + b*x)/b)]
    @test_int [ExpIntegralE(n, a + b*x)/(c + d*x)^1, x, 0, Unintegrable(ExpIntegralE(n, a + b*x)/(c + d*x), x)]
    @test_int [ExpIntegralE(n, a + b*x)/(c + d*x)^2, x, 0, Unintegrable(ExpIntegralE(n, a + b*x)/(c + d*x)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*ExpIntegralEi(b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ExpIntegralEi(b*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [ExpIntegralEi(b*x)*x^3, x, 6, (3*ℯ^(b*x))/(2*b^4) - (3*ℯ^(b*x)*x)/(2*b^3) + (3*ℯ^(b*x)*x^2)/(4*b^2) - (ℯ^(b*x)*x^3)/(4*b) + (1/4)*x^4*ExpIntegralEi(b*x)]
    @test_int [ExpIntegralEi(b*x)*x^2, x, 5, -((2*ℯ^(b*x))/(3*b^3)) + (2*ℯ^(b*x)*x)/(3*b^2) - (ℯ^(b*x)*x^2)/(3*b) + (1/3)*x^3*ExpIntegralEi(b*x)]
    @test_int [ExpIntegralEi(b*x)*x^1, x, 4, ℯ^(b*x)/(2*b^2) - (ℯ^(b*x)*x)/(2*b) + (1/2)*x^2*ExpIntegralEi(b*x)]
    @test_int [ExpIntegralEi(b*x)*x^0, x, 1, -(ℯ^(b*x)/b) + ((b*x)*ExpIntegralEi(b*x))/b]
    @test_int [ExpIntegralEi(b*x)/x^1, x, 2, b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], b*x) + EulerGamma*log(x) + (ExpIntegralE(1, (-b)*x) + ExpIntegralEi(b*x))*log(x) + (1/2)*log((-b)*x)^2]
    @test_int [ExpIntegralEi(b*x)/x^2, x, 4, -(ℯ^(b*x)/x) + b*ExpIntegralEi(b*x) - ExpIntegralEi(b*x)/x]
    @test_int [ExpIntegralEi(b*x)/x^3, x, 5, -(ℯ^(b*x)/(4*x^2)) - (b*ℯ^(b*x))/(4*x) + (1/4)*b^2*ExpIntegralEi(b*x) - ExpIntegralEi(b*x)/(2*x^2)]
    @test_int [ExpIntegralEi(b*x)/x^4, x, 6, -(ℯ^(b*x)/(9*x^3)) - (b*ℯ^(b*x))/(18*x^2) - (b^2*ℯ^(b*x))/(18*x) + (1/18)*b^3*ExpIntegralEi(b*x) - ExpIntegralEi(b*x)/(3*x^3)]


    @test_int [ExpIntegralEi(b*x)^2*x^2, x, 11, -((5*ℯ^(2*b*x))/(6*b^3)) + (ℯ^(2*b*x)*x)/(3*b^2) - (4*ℯ^(b*x)*ExpIntegralEi(b*x))/(3*b^3) + (4*ℯ^(b*x)*x*ExpIntegralEi(b*x))/(3*b^2) - (2*ℯ^(b*x)*x^2*ExpIntegralEi(b*x))/(3*b) + (1/3)*x^3*ExpIntegralEi(b*x)^2 + (4*ExpIntegralEi(2*b*x))/(3*b^3)]
    @test_int [ExpIntegralEi(b*x)^2*x^1, x, 7, ℯ^(2*b*x)/(2*b^2) + (ℯ^(b*x)*ExpIntegralEi(b*x))/b^2 - (ℯ^(b*x)*x*ExpIntegralEi(b*x))/b + (1/2)*x^2*ExpIntegralEi(b*x)^2 - ExpIntegralEi(2*b*x)/b^2]
    @test_int [ExpIntegralEi(b*x)^2*x^0, x, 4, -((2*ℯ^(b*x)*ExpIntegralEi(b*x))/b) + x*ExpIntegralEi(b*x)^2 + (2*ExpIntegralEi(2*b*x))/b]
    @test_int [ExpIntegralEi(b*x)^2/x^1, x, 0, CannotIntegrate(ExpIntegralEi(b*x)^2/x, x)]
    @test_int [ExpIntegralEi(b*x)^2/x^2, x, 0, CannotIntegrate(ExpIntegralEi(b*x)^2/x^2, x)]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*ExpIntegralEi(b*x)^n*with*m*symbolic=#


    @test_int [(d*x)^m*ExpIntegralEi(b*x)^3, x, 0, CannotIntegrate((d*x)^m*ExpIntegralEi(b*x)^3, x)]
    @test_int [(d*x)^m*ExpIntegralEi(b*x)^2, x, 0, CannotIntegrate((d*x)^m*ExpIntegralEi(b*x)^2, x)]
    @test_int [(d*x)^m*ExpIntegralEi(b*x)^1, x, 4, ((d*x)^(1 + m)*ExpIntegralEi(b*x))/(d*(1 + m)) - ((d*x)^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(b*(1 + m)))]
    @test_int [(d*x)^m/ExpIntegralEi(b*x)^1, x, 0, CannotIntegrate((d*x)^m/ExpIntegralEi(b*x), x)]
    @test_int [(d*x)^m/ExpIntegralEi(b*x)^2, x, 0, CannotIntegrate((d*x)^m/ExpIntegralEi(b*x)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*ExpIntegralEi(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*ExpIntegralEi(a+b*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^3*ExpIntegralEi(a + b*x), x, 14, (3*ℯ^(a + b*x))/(2*b^4) + (a*ℯ^(a + b*x))/(2*b^4) + (a^2*ℯ^(a + b*x))/(4*b^4) + (a^3*ℯ^(a + b*x))/(4*b^4) - (3*ℯ^(a + b*x)*x)/(2*b^3) - (a*ℯ^(a + b*x)*x)/(2*b^3) - (a^2*ℯ^(a + b*x)*x)/(4*b^3) + (3*ℯ^(a + b*x)*x^2)/(4*b^2) + (a*ℯ^(a + b*x)*x^2)/(4*b^2) - (ℯ^(a + b*x)*x^3)/(4*b) - (a^4*ExpIntegralEi(a + b*x))/(4*b^4) + (1/4)*x^4*ExpIntegralEi(a + b*x)]
    @test_int [x^2*ExpIntegralEi(a + b*x), x, 10, -((2*ℯ^(a + b*x))/(3*b^3)) - (a*ℯ^(a + b*x))/(3*b^3) - (a^2*ℯ^(a + b*x))/(3*b^3) + (2*ℯ^(a + b*x)*x)/(3*b^2) + (a*ℯ^(a + b*x)*x)/(3*b^2) - (ℯ^(a + b*x)*x^2)/(3*b) + (a^3*ExpIntegralEi(a + b*x))/(3*b^3) + (1/3)*x^3*ExpIntegralEi(a + b*x)]
    @test_int [x^1*ExpIntegralEi(a + b*x), x, 7, ℯ^(a + b*x)/(2*b^2) + (a*ℯ^(a + b*x))/(2*b^2) - (ℯ^(a + b*x)*x)/(2*b) - (a^2*ExpIntegralEi(a + b*x))/(2*b^2) + (1/2)*x^2*ExpIntegralEi(a + b*x)]
    @test_int [x^0*ExpIntegralEi(a + b*x), x, 1, -(ℯ^(a + b*x)/b) + ((a + b*x)*ExpIntegralEi(a + b*x))/b]
    @test_int [ExpIntegralEi(a + b*x)/x^1, x, 0, Unintegrable(ExpIntegralEi(a + b*x)/x, x)]
    @test_int [ExpIntegralEi(a + b*x)/x^2, x, 5, (b*ℯ^a*ExpIntegralEi(b*x))/a - (b*ExpIntegralEi(a + b*x))/a - ExpIntegralEi(a + b*x)/x]
    @test_int [ExpIntegralEi(a + b*x)/x^3, x, 7, -((b*ℯ^(a + b*x))/(2*a*x)) - (b^2*ℯ^a*ExpIntegralEi(b*x))/(2*a^2) + (b^2*ℯ^a*ExpIntegralEi(b*x))/(2*a) + (b^2*ExpIntegralEi(a + b*x))/(2*a^2) - ExpIntegralEi(a + b*x)/(2*x^2)]


    #= [x^3*ExpIntegralEi(a + b*x)^2, x, 51, (2*ℯ^(2*a + 2*b*x))/b^4 + (3*a*ℯ^(2*a + 2*b*x))/(2*b^4) + (3*a^2*ℯ^(2*a + 2*b*x))/(4*b^4) - (ℯ^(2*a + 2*b*x)*x)/b^3 - (a*ℯ^(2*a + 2*b*x)*x)/(2*b^3) + (ℯ^(2*a + 2*b*x)*x^2)/(4*b^2) + (3*ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/b^4 + (a*ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/b^4 + (a^2*ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/(2*b^4) + (a^3*ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/(2*b^4) - (3*ℯ^(a + b*x)*x*ExpIntegralEi(a + b*x))/b^3 - (a*ℯ^(a + b*x)*x*ExpIntegralEi(a + b*x))/b^3 - (a^2*ℯ^(a + b*x)*x*ExpIntegralEi(a + b*x))/(2*b^3) + (3*ℯ^(a + b*x)*x^2*ExpIntegralEi(a + b*x))/(2*b^2) + (a*ℯ^(a + b*x)*x^2*ExpIntegralEi(a + b*x))/(2*b^2) - (ℯ^(a + b*x)*x^3*ExpIntegralEi(a + b*x))/(2*b) + (a^3*x*ExpIntegralEi(a + b*x)^2)/(4*b^3) + (1/4)*x^4*ExpIntegralEi(a + b*x)^2 - (a^3*(a + b*x)*ExpIntegralEi(a + b*x)^2)/(4*b^4) - (3*ExpIntegralEi(2*a + 2*b*x))/b^4 - (4*a*ExpIntegralEi(2*a + 2*b*x))/b^4 - (3*a^2*ExpIntegralEi(2*a + 2*b*x))/b^4 - (2*a^3*ExpIntegralEi(2*a + 2*b*x))/b^4] =#
    @test_int [x^2*ExpIntegralEi(a + b*x)^2, x, 26, -((5*ℯ^(2*a + 2*b*x))/(6*b^3)) - (2*a*ℯ^(2*a + 2*b*x))/(3*b^3) + (ℯ^(2*a + 2*b*x)*x)/(3*b^2) - (4*ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/(3*b^3) - (2*a*ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/(3*b^3) - (2*a^2*ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/(3*b^3) + (4*ℯ^(a + b*x)*x*ExpIntegralEi(a + b*x))/(3*b^2) + (2*a*ℯ^(a + b*x)*x*ExpIntegralEi(a + b*x))/(3*b^2) - (2*ℯ^(a + b*x)*x^2*ExpIntegralEi(a + b*x))/(3*b) - (a^2*x*ExpIntegralEi(a + b*x)^2)/(3*b^2) + (1/3)*x^3*ExpIntegralEi(a + b*x)^2 + (a^2*(a + b*x)*ExpIntegralEi(a + b*x)^2)/(3*b^3) + (4*ExpIntegralEi(2*(a + b*x)))/(3*b^3) + (2*a*ExpIntegralEi(2*(a + b*x)))/b^3 + (2*a^2*ExpIntegralEi(2*(a + b*x)))/b^3]
    @test_int [x^1*ExpIntegralEi(a + b*x)^2, x, 11, ℯ^(2*a + 2*b*x)/(2*b^2) + (ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/b^2 + (a*ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/b^2 - (ℯ^(a + b*x)*x*ExpIntegralEi(a + b*x))/b + (a*x*ExpIntegralEi(a + b*x)^2)/(2*b) + (1/2)*x^2*ExpIntegralEi(a + b*x)^2 - (a*(a + b*x)*ExpIntegralEi(a + b*x)^2)/(2*b^2) - ExpIntegralEi(2*(a + b*x))/b^2 - (2*a*ExpIntegralEi(2*(a + b*x)))/b^2]
    @test_int [x^0*ExpIntegralEi(a + b*x)^2, x, 3, -((2*ℯ^(a + b*x)*ExpIntegralEi(a + b*x))/b) + ((a + b*x)*ExpIntegralEi(a + b*x)^2)/b + (2*ExpIntegralEi(2*(a + b*x)))/b]
    @test_int [ExpIntegralEi(a + b*x)^2/x^1, x, 0, CannotIntegrate(ExpIntegralEi(a + b*x)^2/x, x)]
    @test_int [ExpIntegralEi(a + b*x)^2/x^2, x, 0, CannotIntegrate(ExpIntegralEi(a + b*x)^2/x^2, x)]


    @test_int [x^2*ExpIntegralEi(a + b*x)^3, x, 0, CannotIntegrate(x^2*ExpIntegralEi(a + b*x)^3, x)]
    @test_int [x^1*ExpIntegralEi(a + b*x)^3, x, 0, CannotIntegrate(x*ExpIntegralEi(a + b*x)^3, x)]
    @test_int [x^0*ExpIntegralEi(a + b*x)^3, x, 1, CannotIntegrate(ExpIntegralEi(a + b*x)^3,x)]
    @test_int [ExpIntegralEi(a + b*x)^3/x^1, x, 0, CannotIntegrate(ExpIntegralEi(a + b*x)^3/x, x)]
    @test_int [ExpIntegralEi(a + b*x)^3/x^2, x, 0, CannotIntegrate(ExpIntegralEi(a + b*x)^3/x^2, x)]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*ExpIntegralEi(a+b*x)^n*with*m*symbolic=#


    @test_int [(c + d*x)^m*ExpIntegralEi(a + b*x)^3, x, 0, CannotIntegrate((c + d*x)^m*ExpIntegralEi(a + b*x)^3, x)]
    @test_int [(c + d*x)^m*ExpIntegralEi(a + b*x)^2, x, 0, CannotIntegrate((c + d*x)^m*ExpIntegralEi(a + b*x)^2, x)]
    @test_int [(c + d*x)^m*ExpIntegralEi(a + b*x)^1, x, 1, ((c + d*x)^(1 + m)*ExpIntegralEi(a + b*x))/(d*(1 + m)) - (b*CannotIntegrate((ℯ^(a + b*x)*(c + d*x)^(1 + m))/(a + b*x), x))/(d*(1 + m))]
    @test_int [(c + d*x)^m/ExpIntegralEi(a + b*x)^1, x, 0, CannotIntegrate((c + d*x)^m/ExpIntegralEi(a + b*x), x)]
    @test_int [(c + d*x)^m/ExpIntegralEi(a + b*x)^2, x, 0, CannotIntegrate((c + d*x)^m/ExpIntegralEi(a + b*x)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*ExpIntegralEi(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*ExpIntegralEi(d*(a + b*log(c*x^n))), x, 3, -(x^3*ExpIntegralEi(((3 + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(3*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)) + (x^3*ExpIntegralEi(d*(a + b*log(c*x^n))))/3]
    @test_int [x^1*ExpIntegralEi(d*(a + b*log(c*x^n))), x, 3, -(x^2*ExpIntegralEi(((2 + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) + (x^2*ExpIntegralEi(d*(a + b*log(c*x^n))))/2]
    @test_int [x^0*ExpIntegralEi(d*(a + b*log(c*x^n))), x, 4, -((x*ExpIntegralEi(((1 + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^(a/(b*n))*(c*x^n)^n^(-1))) + x*ExpIntegralEi(d*(a + b*log(c*x^n)))]
    @test_int [ExpIntegralEi(d*(a + b*log(c*x^n)))/x^1, x, 3, -((ℯ^(a*d)*(c*x^n)^(b*d))/(b*d*n)) + (ExpIntegralEi(d*(a + b*log(c*x^n)))*(a + b*log(c*x^n)))/(b*n)]
    @test_int [ExpIntegralEi(d*(a + b*log(c*x^n)))/x^2, x, 3, (ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-(((1 - b*d*n)*(a + b*log(c*x^n)))/(b*n))))/x - ExpIntegralEi(d*(a + b*log(c*x^n)))/x]
    @test_int [ExpIntegralEi(d*(a + b*log(c*x^n)))/x^3, x, 3, (ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi(-(((2 - b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(2*x^2) - ExpIntegralEi(d*(a + b*log(c*x^n)))/(2*x^2)]


    @test_int [(e*x)^m*ExpIntegralEi(d*(a + b*log(c*x^n))), x, 3, -(((e*x)^(1 + m)*ExpIntegralEi(((1 + m + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(e*ℯ^((a*(1 + m))/(b*n))*(1 + m)*(c*x^n)^((1 + m)/n))) + ((e*x)^(1 + m)*ExpIntegralEi(d*(a + b*log(c*x^n))))/(e*(1 + m))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(a+b*x)*ExpIntegralEi(c+d*x)^n=#
    #==#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(b*x)*ExpIntegralEi(b*x)^n=#


    #= Integrands*of*x^m*ℯ^(b*x)*ExpIntegralEi(b*x)*where*m*is*an*integer =#
    @test_int [ℯ^(b*x)*ExpIntegralEi(b*x)/x^3, x, 10, -(ℯ^(2*b*x)/(4*x^2)) - (b*ℯ^(2*b*x))/x - (ℯ^(b*x)*ExpIntegralEi(b*x))/(2*x^2) - (b*ℯ^(b*x)*ExpIntegralEi(b*x))/(2*x) + (1/4)*b^2*ExpIntegralEi(b*x)^2 + 2*b^2*ExpIntegralEi(2*b*x)]
    @test_int [ℯ^(b*x)*ExpIntegralEi(b*x)/x^2, x, 5, -(ℯ^(2*b*x)/x) - (ℯ^(b*x)*ExpIntegralEi(b*x))/x + (1/2)*b*ExpIntegralEi(b*x)^2 + 2*b*ExpIntegralEi(2*b*x)]
    @test_int [ℯ^(b*x)*ExpIntegralEi(b*x)/x, x, 1, (1/2)*ExpIntegralEi(b*x)^2]
    @test_int [ℯ^(b*x)*ExpIntegralEi(b*x), x, 3, (ℯ^(b*x)*ExpIntegralEi(b*x))/b - ExpIntegralEi(2*b*x)/b]
    @test_int [x*ℯ^(b*x)*ExpIntegralEi(b*x), x, 6, -(ℯ^(2*b*x)/(2*b^2)) - (ℯ^(b*x)*ExpIntegralEi(b*x))/b^2 + (ℯ^(b*x)*x*ExpIntegralEi(b*x))/b + ExpIntegralEi(2*b*x)/b^2]
    @test_int [x^2*ℯ^(b*x)*ExpIntegralEi(b*x), x, 10, (5*ℯ^(2*b*x))/(4*b^3) - (ℯ^(2*b*x)*x)/(2*b^2) + (2*ℯ^(b*x)*ExpIntegralEi(b*x))/b^3 - (2*ℯ^(b*x)*x*ExpIntegralEi(b*x))/b^2 + (ℯ^(b*x)*x^2*ExpIntegralEi(b*x))/b - (2*ExpIntegralEi(2*b*x))/b^3]
    @test_int [x^3*ℯ^(b*x)*ExpIntegralEi(b*x), x, 15, -((4*ℯ^(2*b*x))/b^4) + (2*ℯ^(2*b*x)*x)/b^3 - (ℯ^(2*b*x)*x^2)/(2*b^2) - (6*ℯ^(b*x)*ExpIntegralEi(b*x))/b^4 + (6*ℯ^(b*x)*x*ExpIntegralEi(b*x))/b^3 - (3*ℯ^(b*x)*x^2*ExpIntegralEi(b*x))/b^2 + (ℯ^(b*x)*x^3*ExpIntegralEi(b*x))/b + (6*ExpIntegralEi(2*b*x))/b^4]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(a+b*x)*ExpIntegralEi(c+d*x)^n=#


    @test_int [x^3*ℯ^(a + b*x)*ExpIntegralEi(c + d*x), x, 24, -((2*ℯ^(a + c + (b + d)*x))/(b*(b + d)^3)) - (3*ℯ^(a + c + (b + d)*x))/(b^2*(b + d)^2) - (c*ℯ^(a + c + (b + d)*x))/(b*d*(b + d)^2) - (6*ℯ^(a + c + (b + d)*x))/(b^3*(b + d)) - (c^2*ℯ^(a + c + (b + d)*x))/(b*d^2*(b + d)) - (3*c*ℯ^(a + c + (b + d)*x))/(b^2*d*(b + d)) + (2*ℯ^(a + c + (b + d)*x)*x)/(b*(b + d)^2) + (3*ℯ^(a + c + (b + d)*x)*x)/(b^2*(b + d)) + (c*ℯ^(a + c + (b + d)*x)*x)/(b*d*(b + d)) - (ℯ^(a + c + (b + d)*x)*x^2)/(b*(b + d)) - (6*ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/b^4 + (6*ℯ^(a + b*x)*x*ExpIntegralEi(c + d*x))/b^3 - (3*ℯ^(a + b*x)*x^2*ExpIntegralEi(c + d*x))/b^2 + (ℯ^(a + b*x)*x^3*ExpIntegralEi(c + d*x))/b + (6*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/b^4 + (c^3*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/(b*d^3) + (3*c^2*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/(b^2*d^2) + (6*c*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/(b^3*d)]
    @test_int [x^2*ℯ^(a + b*x)*ExpIntegralEi(c + d*x), x, 14, ℯ^(a + c + (b + d)*x)/(b*(b + d)^2) + (2*ℯ^(a + c + (b + d)*x))/(b^2*(b + d)) + (c*ℯ^(a + c + (b + d)*x))/(b*d*(b + d)) - (ℯ^(a + c + (b + d)*x)*x)/(b*(b + d)) + (2*ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/b^3 - (2*ℯ^(a + b*x)*x*ExpIntegralEi(c + d*x))/b^2 + (ℯ^(a + b*x)*x^2*ExpIntegralEi(c + d*x))/b - (2*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/b^3 - (c^2*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/(b*d^2) - (2*c*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/(b^2*d)]
    @test_int [x^1*ℯ^(a + b*x)*ExpIntegralEi(c + d*x), x, 7, -(ℯ^(a + c + (b + d)*x)/(b*(b + d))) - (ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/b^2 + (ℯ^(a + b*x)*x*ExpIntegralEi(c + d*x))/b + (ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/b^2 + (c*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/(b*d)]
    @test_int [x^0*ℯ^(a + b*x)*ExpIntegralEi(c + d*x), x, 2, (ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/b - (ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/b]
    @test_int [ℯ^(a + b*x)*ExpIntegralEi(c + d*x)/x^1, x, 0, CannotIntegrate((ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/x, x)]
    @test_int [ℯ^(a + b*x)*ExpIntegralEi(c + d*x)/x^2, x, 5, (d*ℯ^(a + c)*ExpIntegralEi((b + d)*x))/c - (ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/x - (d*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/c + b*CannotIntegrate((ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/x, x)]
    @test_int [ℯ^(a + b*x)*ExpIntegralEi(c + d*x)/x^3, x, 12, -((d*ℯ^(a + c + (b + d)*x))/(2*c*x)) + (b*d*ℯ^(a + c)*ExpIntegralEi((b + d)*x))/(2*c) - (d^2*ℯ^(a + c)*ExpIntegralEi((b + d)*x))/(2*c^2) + (d*(b + d)*ℯ^(a + c)*ExpIntegralEi((b + d)*x))/(2*c) - (ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/(2*x^2) - (b*ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/(2*x) - (b*d*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/(2*c) + (d^2*ℯ^(a - (b*c)/d)*ExpIntegralEi(((b + d)*(c + d*x))/d))/(2*c^2) + (1/2)*b^2*CannotIntegrate((ℯ^(a + b*x)*ExpIntegralEi(c + d*x))/x, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*LogIntegral(b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*LogIntegral(b*x)^n=#


    @test_int [x^2*LogIntegral(b*x), x, 3, -(ExpIntegralEi(4*log(b*x))/(3*b^3)) + (1/3)*x^3*LogIntegral(b*x)]
    @test_int [x^1*LogIntegral(b*x), x, 3, -(ExpIntegralEi(3*log(b*x))/(2*b^2)) + (1/2)*x^2*LogIntegral(b*x)]
    @test_int [x^0*LogIntegral(b*x), x, 1, -(ExpIntegralEi(2*log(b*x))/b) + x*LogIntegral(b*x)]
    @test_int [LogIntegral(b*x)/x^1, x, 1, (-b)*x + log(b*x)*LogIntegral(b*x)]
    @test_int [LogIntegral(b*x)/x^2, x, 3, b*log(log(b*x)) - LogIntegral(b*x)/x]
    @test_int [LogIntegral(b*x)/x^3, x, 3, (1/2)*b^2*ExpIntegralEi(-log(b*x)) - LogIntegral(b*x)/(2*x^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*LogIntegral(b*x)^n*with*m*symbolic=#


    @test_int [(d*x)^m*LogIntegral(b*x), x, 3, -((b*(b*x)^(-2 - m)*(d*x)^(2 + m)*ExpIntegralEi((2 + m)*log(b*x)))/(d^2*(1 + m))) + ((d*x)^(1 + m)*LogIntegral(b*x))/(d*(1 + m))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*LogIntegral(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*LogIntegral(a+b*x)^n=#


    @test_int [x^2*LogIntegral(a + b*x), x, 14, -((a^2*ExpIntegralEi(2*log(a + b*x)))/b^3) + (a*ExpIntegralEi(3*log(a + b*x)))/b^3 - ExpIntegralEi(4*log(a + b*x))/(3*b^3) + (a^3*LogIntegral(a + b*x))/(3*b^3) + (1/3)*x^3*LogIntegral(a + b*x)]
    @test_int [x^1*LogIntegral(a + b*x), x, 11, (a*ExpIntegralEi(2*log(a + b*x)))/b^2 - ExpIntegralEi(3*log(a + b*x))/(2*b^2) - (a^2*LogIntegral(a + b*x))/(2*b^2) + (1/2)*x^2*LogIntegral(a + b*x)]
    @test_int [x^0*LogIntegral(a + b*x), x, 1, -(ExpIntegralEi(2*log(a + b*x))/b) + ((a + b*x)*LogIntegral(a + b*x))/b]
    @test_int [LogIntegral(a + b*x)/x^1, x, 0, Unintegrable(LogIntegral(a + b*x)/x, x)]
    @test_int [LogIntegral(a + b*x)/x^2, x, 1, b*Unintegrable(1/(x*log(a + b*x)), x) - LogIntegral(a + b*x)/x]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*LogIntegral(a+b*x)^n*with*m*symbolic=#


    @test_int [(d*x)^m*LogIntegral(a + b*x), x, 1, ((d*x)^(1 + m)*LogIntegral(a + b*x))/(d*(1 + m)) - (b*Unintegrable((d*x)^(1 + m)/log(a + b*x), x))/(d*(1 + m))]
    end
