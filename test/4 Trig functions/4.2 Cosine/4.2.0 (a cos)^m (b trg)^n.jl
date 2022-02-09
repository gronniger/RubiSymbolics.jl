@testset "4.2.0 (a cos)^m (b trg)^n" begin
    (a, b, c, d, e, f, m, n, p, x, ) = @variables a b c d e f m n p x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(b*cos(c+d*x))^m=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*cos(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^n=#


    @test_int [cos(a + b*x)^1, x, 1, sin(a + b*x)/b]
    @test_int [cos(a + b*x)^2, x, 2, x/2 + (cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [cos(a + b*x)^3, x, 2, sin(a + b*x)/b - sin(a + b*x)^3/(3*b)]
    @test_int [cos(a + b*x)^4, x, 3, (3*x)/8 + (3*cos(a + b*x)*sin(a + b*x))/(8*b) + (cos(a + b*x)^3*sin(a + b*x))/(4*b)]
    @test_int [cos(a + b*x)^5, x, 2, sin(a + b*x)/b - (2*sin(a + b*x)^3)/(3*b) + sin(a + b*x)^5/(5*b)]
    @test_int [cos(a + b*x)^6, x, 4, (5*x)/16 + (5*cos(a + b*x)*sin(a + b*x))/(16*b) + (5*cos(a + b*x)^3*sin(a + b*x))/(24*b) + (cos(a + b*x)^5*sin(a + b*x))/(6*b)]
    @test_int [cos(a + b*x)^7, x, 2, sin(a + b*x)/b - sin(a + b*x)^3/b + (3*sin(a + b*x)^5)/(5*b) - sin(a + b*x)^7/(7*b)]
    @test_int [cos(a + b*x)^8, x, 5, (35*x)/128 + (35*cos(a + b*x)*sin(a + b*x))/(128*b) + (35*cos(a + b*x)^3*sin(a + b*x))/(192*b) + (7*cos(a + b*x)^5*sin(a + b*x))/(48*b) + (cos(a + b*x)^7*sin(a + b*x))/(8*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cos(c+d*x))^(n/2)=#


    @test_int [cos(a + b*x)^(7/2), x, 3, (10*Elliptic.F((1/2)*(a + b*x), 2))/(21*b) + (10*sqrt(cos(a + b*x))*sin(a + b*x))/(21*b) + (2*cos(a + b*x)^(5/2)*sin(a + b*x))/(7*b)]
    @test_int [cos(a + b*x)^(5/2), x, 2, (6*Elliptic.E((1/2)*(a + b*x), 2))/(5*b) + (2*cos(a + b*x)^(3/2)*sin(a + b*x))/(5*b)]
    @test_int [cos(a + b*x)^(3/2), x, 2, (2*Elliptic.F((1/2)*(a + b*x), 2))/(3*b) + (2*sqrt(cos(a + b*x))*sin(a + b*x))/(3*b)]
    @test_int [cos(a + b*x)^(1/2), x, 1, (2*Elliptic.E((1/2)*(a + b*x), 2))/b]
    @test_int [1/cos(a + b*x)^(1/2), x, 1, (2*Elliptic.F((1/2)*(a + b*x), 2))/b]
    @test_int [1/cos(a + b*x)^(3/2), x, 2, -((2*Elliptic.E((1/2)*(a + b*x), 2))/b) + (2*sin(a + b*x))/(b*sqrt(cos(a + b*x)))]
    @test_int [1/cos(a + b*x)^(5/2), x, 2, (2*Elliptic.F((1/2)*(a + b*x), 2))/(3*b) + (2*sin(a + b*x))/(3*b*cos(a + b*x)^(3/2))]
    @test_int [1/cos(a + b*x)^(7/2), x, 3, -((6*Elliptic.E((1/2)*(a + b*x), 2))/(5*b)) + (2*sin(a + b*x))/(5*b*cos(a + b*x)^(5/2)) + (6*sin(a + b*x))/(5*b*sqrt(cos(a + b*x)))]


    @test_int [(c*cos(a + b*x))^(7/2), x, 4, (10*c^4*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2))/(21*b*sqrt(c*cos(a + b*x))) + (10*c^3*sqrt(c*cos(a + b*x))*sin(a + b*x))/(21*b) + (2*c*(c*cos(a + b*x))^(5/2)*sin(a + b*x))/(7*b)]
    @test_int [(c*cos(a + b*x))^(5/2), x, 3, (6*c^2*sqrt(c*cos(a + b*x))*Elliptic.E((1/2)*(a + b*x), 2))/(5*b*sqrt(cos(a + b*x))) + (2*c*(c*cos(a + b*x))^(3/2)*sin(a + b*x))/(5*b)]
    @test_int [(c*cos(a + b*x))^(3/2), x, 3, (2*c^2*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2))/(3*b*sqrt(c*cos(a + b*x))) + (2*c*sqrt(c*cos(a + b*x))*sin(a + b*x))/(3*b)]
    @test_int [(c*cos(a + b*x))^(1/2), x, 2, (2*sqrt(c*cos(a + b*x))*Elliptic.E((1/2)*(a + b*x), 2))/(b*sqrt(cos(a + b*x)))]
    @test_int [1/(c*cos(a + b*x))^(1/2), x, 2, (2*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2))/(b*sqrt(c*cos(a + b*x)))]
    @test_int [1/(c*cos(a + b*x))^(3/2), x, 3, -((2*sqrt(c*cos(a + b*x))*Elliptic.E((1/2)*(a + b*x), 2))/(b*c^2*sqrt(cos(a + b*x)))) + (2*sin(a + b*x))/(b*c*sqrt(c*cos(a + b*x)))]
    @test_int [1/(c*cos(a + b*x))^(5/2), x, 3, (2*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2))/(3*b*c^2*sqrt(c*cos(a + b*x))) + (2*sin(a + b*x))/(3*b*c*(c*cos(a + b*x))^(3/2))]
    @test_int [1/(c*cos(a + b*x))^(7/2), x, 4, -((6*sqrt(c*cos(a + b*x))*Elliptic.E((1/2)*(a + b*x), 2))/(5*b*c^4*sqrt(cos(a + b*x)))) + (2*sin(a + b*x))/(5*b*c*(c*cos(a + b*x))^(5/2)) + (6*sin(a + b*x))/(5*b*c^3*sqrt(c*cos(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cos(c+d*x))^(n/3)=#


    @test_int [cos(a + b*x)^(4/3), x, 1, -((3*cos(a + b*x)^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(a + b*x)^2)*sin(a + b*x))/(7*b*sqrt(sin(a + b*x)^2)))]
    @test_int [cos(a + b*x)^(2/3), x, 1, -((3*cos(a + b*x)^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(a + b*x)^2)*sin(a + b*x))/(5*b*sqrt(sin(a + b*x)^2)))]
    @test_int [cos(a + b*x)^(1/3), x, 1, -((3*cos(a + b*x)^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(a + b*x)^2)*sin(a + b*x))/(4*b*sqrt(sin(a + b*x)^2)))]
    @test_int [1/cos(a + b*x)^(1/3), x, 1, -((3*cos(a + b*x)^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(a + b*x)^2)*sin(a + b*x))/(2*b*sqrt(sin(a + b*x)^2)))]
    @test_int [1/cos(a + b*x)^(2/3), x, 1, -((3*cos(a + b*x)^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(a + b*x)^2)*sin(a + b*x))/(b*sqrt(sin(a + b*x)^2)))]
    @test_int [1/cos(a + b*x)^(4/3), x, 1, (3*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(a + b*x)^2)*sin(a + b*x))/(b*cos(a + b*x)^(1/3)*sqrt(sin(a + b*x)^2))]


    @test_int [(c*cos(a + b*x))^(4/3), x, 1, -((3*(c*cos(a + b*x))^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(a + b*x)^2)*sin(a + b*x))/(7*b*c*sqrt(sin(a + b*x)^2)))]
    @test_int [(c*cos(a + b*x))^(2/3), x, 1, -((3*(c*cos(a + b*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(a + b*x)^2)*sin(a + b*x))/(5*b*c*sqrt(sin(a + b*x)^2)))]
    @test_int [(c*cos(a + b*x))^(1/3), x, 1, -((3*(c*cos(a + b*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(a + b*x)^2)*sin(a + b*x))/(4*b*c*sqrt(sin(a + b*x)^2)))]
    @test_int [1/(c*cos(a + b*x))^(1/3), x, 1, -((3*(c*cos(a + b*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(a + b*x)^2)*sin(a + b*x))/(2*b*c*sqrt(sin(a + b*x)^2)))]
    @test_int [1/(c*cos(a + b*x))^(2/3), x, 1, -((3*(c*cos(a + b*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(a + b*x)^2)*sin(a + b*x))/(b*c*sqrt(sin(a + b*x)^2)))]
    @test_int [1/(c*cos(a + b*x))^(4/3), x, 1, (3*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(a + b*x)^2)*sin(a + b*x))/(b*c*(c*cos(a + b*x))^(1/3)*sqrt(sin(a + b*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cos(c+d*x))^n*with*n*symbolic=#


    @test_int [cos(a + b*x)^n, x, 1, -((cos(a + b*x)^(1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*sin(a + b*x))/(b*(1 + n)*sqrt(sin(a + b*x)^2)))]
    @test_int [(c*cos(a + b*x))^n, x, 1, -(((c*cos(a + b*x))^(1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*sin(a + b*x))/(b*c*(1 + n)*sqrt(sin(a + b*x)^2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*cos(c+d*x)^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cos(c+d*x)^p)^(n/2)*with*p*positive*integer=#


    @test_int [(a*cos(x)^2)^(5/2),x, 4, (8/15)*a^2*sqrt(a*cos(x)^2)*tan(x) + (4/15)*a*(a*cos(x)^2)^(3/2)*tan(x) + (1/5)*(a*cos(x)^2)^(5/2)*tan(x)]
    @test_int [(a*cos(x)^2)^(3/2),x, 3, (2/3)*a*sqrt(a*cos(x)^2)*tan(x) + (1/3)*(a*cos(x)^2)^(3/2)*tan(x)]
    @test_int [(a*cos(x)^2)^(1/2), x, 2, sqrt(a*cos(x)^2)*tan(x)]
    @test_int [1/(a*cos(x)^2)^(1/2), x, 2, (atanh(sin(x))*cos(x))/sqrt(a*cos(x)^2)]
    @test_int [1/(a*cos(x)^2)^(3/2), x, 3, (atanh(sin(x))*cos(x))/(2*a*sqrt(a*cos(x)^2)) + tan(x)/(2*a*sqrt(a*cos(x)^2))]
    @test_int [1/(a*cos(x)^2)^(5/2), x, 4, (3*atanh(sin(x))*cos(x))/(8*a^2*sqrt(a*cos(x)^2)) + tan(x)/(4*a*(a*cos(x)^2)^(3/2)) + (3*tan(x))/(8*a^2*sqrt(a*cos(x)^2))]


    @test_int [(a*cos(x)^3)^(5/2),x, 6, (26*a^2*sqrt(a*cos(x)^3)*Elliptic.F(x/2, 2))/(77*cos(x)^(3/2)) + (78/385)*a^2*cos(x)*sqrt(a*cos(x)^3)*sin(x) + (26/165)*a^2*cos(x)^3*sqrt(a*cos(x)^3)*sin(x) + (2/15)*a^2*cos(x)^5*sqrt(a*cos(x)^3)*sin(x) + (26/77)*a^2*sqrt(a*cos(x)^3)*tan(x)]
    @test_int [(a*cos(x)^3)^(3/2),x, 4, (14*a*sqrt(a*cos(x)^3)*Elliptic.E(x/2, 2))/(15*cos(x)^(3/2)) + (14/45)*a*sqrt(a*cos(x)^3)*sin(x) + (2/9)*a*cos(x)^2*sqrt(a*cos(x)^3)*sin(x)]
    @test_int [(a*cos(x)^3)^(1/2), x, 3, (2*sqrt(a*cos(x)^3)*Elliptic.F(x/2, 2))/(3*cos(x)^(3/2)) + (2/3)*sqrt(a*cos(x)^3)*tan(x)]
    @test_int [1/(a*cos(x)^3)^(1/2), x, 3, -((2*cos(x)^(3/2)*Elliptic.E(x/2, 2))/sqrt(a*cos(x)^3)) + (2*cos(x)*sin(x))/sqrt(a*cos(x)^3)]
    @test_int [1/(a*cos(x)^3)^(3/2),x, 4, (10*cos(x)^(3/2)*Elliptic.F(x/2, 2))/(21*a*sqrt(a*cos(x)^3)) + (10*sin(x))/(21*a*sqrt(a*cos(x)^3)) + (2*sec(x)*tan(x))/(7*a*sqrt(a*cos(x)^3))]
    @test_int [1/(a*cos(x)^3)^(5/2),x, 6, -((154*cos(x)^(3/2)*Elliptic.E(x/2, 2))/(195*a^2*sqrt(a*cos(x)^3))) + (154*cos(x)*sin(x))/(195*a^2*sqrt(a*cos(x)^3)) + (154*tan(x))/(585*a^2*sqrt(a*cos(x)^3)) + (22*sec(x)^2*tan(x))/(117*a^2*sqrt(a*cos(x)^3)) + (2*sec(x)^4*tan(x))/(13*a^2*sqrt(a*cos(x)^3))]


    @test_int [(a*cos(x)^4)^(5/2),x, 7, (63/256)*a^2*x*sqrt(a*cos(x)^4)*sec(x)^2 + (21/128)*a^2*cos(x)*sqrt(a*cos(x)^4)*sin(x) + (21/160)*a^2*cos(x)^3*sqrt(a*cos(x)^4)*sin(x) + (9/80)*a^2*cos(x)^5*sqrt(a*cos(x)^4)*sin(x) + (1/10)*a^2*cos(x)^7*sqrt(a*cos(x)^4)*sin(x) + (63/256)*a^2*sqrt(a*cos(x)^4)*tan(x)]
    @test_int [(a*cos(x)^4)^(3/2),x, 5, (5/16)*a*x*sqrt(a*cos(x)^4)*sec(x)^2 + (5/24)*a*cos(x)*sqrt(a*cos(x)^4)*sin(x) + (1/6)*a*cos(x)^3*sqrt(a*cos(x)^4)*sin(x) + (5/16)*a*sqrt(a*cos(x)^4)*tan(x)]
    @test_int [(a*cos(x)^4)^(1/2), x, 3, (1/2)*x*sqrt(a*cos(x)^4)*sec(x)^2 + (1/2)*sqrt(a*cos(x)^4)*tan(x)]
    @test_int [1/(a*cos(x)^4)^(1/2), x, 3, (cos(x)*sin(x))/sqrt(a*cos(x)^4)]
    @test_int [1/(a*cos(x)^4)^(3/2),x, 3, (cos(x)*sin(x))/(a*sqrt(a*cos(x)^4)) + (2*sin(x)^2*tan(x))/(3*a*sqrt(a*cos(x)^4)) + (sin(x)^2*tan(x)^3)/(5*a*sqrt(a*cos(x)^4))]
    @test_int [1/(a*cos(x)^4)^(5/2),x, 3, (cos(x)*sin(x))/(a^2*sqrt(a*cos(x)^4)) + (4*sin(x)^2*tan(x))/(3*a^2*sqrt(a*cos(x)^4)) + (6*sin(x)^2*tan(x)^3)/(5*a^2*sqrt(a*cos(x)^4)) + (4*sin(x)^2*tan(x)^5)/(7*a^2*sqrt(a*cos(x)^4)) + (sin(x)^2*tan(x)^7)/(9*a^2*sqrt(a*cos(x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cos(c+d*x)^p)^n=#


    @test_int [(b*cos(c + d*x)^m)^n, x, 2, -((cos(c + d*x)*(b*cos(c + d*x)^m)^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 + m*n), (1/2)*(3 + m*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + m*n)*sqrt(sin(c + d*x)^2)))]


    @test_int [(c*cos(a + b*x)^m)^(5/2), x, 2, -((2*c^2*cos(a + b*x)^(1 + 2*m)*sqrt(c*cos(a + b*x)^m)*HypergeometricFunctions._₂F₁(1/2, (1/4)*(2 + 5*m), (1/4)*(6 + 5*m), cos(a + b*x)^2)*sin(a + b*x))/(b*(2 + 5*m)*sqrt(sin(a + b*x)^2)))]
    @test_int [(c*cos(a + b*x)^m)^(3/2), x, 2, -((2*c*cos(a + b*x)^(1 + m)*sqrt(c*cos(a + b*x)^m)*HypergeometricFunctions._₂F₁(1/2, (1/4)*(2 + 3*m), (3*(2 + m))/4, cos(a + b*x)^2)*sin(a + b*x))/(b*(2 + 3*m)*sqrt(sin(a + b*x)^2)))]
    @test_int [(c*cos(a + b*x)^m)^(1/2), x, 2, -((2*cos(a + b*x)*sqrt(c*cos(a + b*x)^m)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/4, (6 + m)/4, cos(a + b*x)^2)*sin(a + b*x))/(b*(2 + m)*sqrt(sin(a + b*x)^2)))]
    @test_int [1/(c*cos(a + b*x)^m)^(1/2), x, 2, -((2*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/2, (2 - m)/4, (6 - m)/4, cos(a + b*x)^2)*sin(a + b*x))/(b*(2 - m)*sqrt(c*cos(a + b*x)^m)*sqrt(sin(a + b*x)^2)))]
    @test_int [1/(c*cos(a + b*x)^m)^(3/2), x, 2, -((2*cos(a + b*x)^(1 - m)*HypergeometricFunctions._₂F₁(1/2, (1/4)*(2 - 3*m), (3*(2 - m))/4, cos(a + b*x)^2)*sin(a + b*x))/(b*c*(2 - 3*m)*sqrt(c*cos(a + b*x)^m)*sqrt(sin(a + b*x)^2)))]
    @test_int [1/(c*cos(a + b*x)^m)^(5/2), x, 2, -((2*cos(a + b*x)^(1 - 2*m)*HypergeometricFunctions._₂F₁(1/2, (1/4)*(2 - 5*m), (1/4)*(6 - 5*m), cos(a + b*x)^2)*sin(a + b*x))/(b*c^2*(2 - 5*m)*sqrt(c*cos(a + b*x)^m)*sqrt(sin(a + b*x)^2)))]


    @test_int [(c*cos(a + b*x)^m)^(1/m), x, 2, ((c*cos(a + b*x)^m)^(1/m)*tan(a + b*x))/b]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*(b*cos(c+d*x))^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*(b*cos(c+d*x))^p)^n=#


    @test_int [(a*(b*cos(c + d*x))^p)^n, x, 2, -((cos(c + d*x)*(a*(b*cos(c + d*x))^p)^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 + n*p), (1/2)*(3 + n*p), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + n*p)*sqrt(sin(c + d*x)^2)))]


    #= ::Title:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*Trg(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^5*sqrt(b*cos(c + d*x)), x, 6, (30*b*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(77*d*sqrt(b*cos(c + d*x))) + (30*sqrt(b*cos(c + d*x))*sin(c + d*x))/(77*d) + (18*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(77*b^2*d) + (2*(b*cos(c + d*x))^(9/2)*sin(c + d*x))/(11*b^4*d)]
    @test_int [cos(c + d*x)^4*sqrt(b*cos(c + d*x)), x, 5, (14*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (14*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b*d) + (2*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^3*d)]
    @test_int [cos(c + d*x)^3*sqrt(b*cos(c + d*x)), x, 5, (10*b*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (10*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^2*d)]
    @test_int [cos(c + d*x)^2*sqrt(b*cos(c + d*x)), x, 4, (6*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b*d)]
    @test_int [cos(c + d*x)^1*sqrt(b*cos(c + d*x)), x, 4, (2*b*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [cos(c + d*x)^0*sqrt(b*cos(c + d*x)), x, 2, (2*sqrt(b*cos(c + d*x))*Elliptic.E((c + d*x)/2, 2))/(d*sqrt(cos(c + d*x)))]
    @test_int [sqrt(b*cos(c + d*x))*sec(c + d*x)^1, x, 3, (2*b*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [sqrt(b*cos(c + d*x))*sec(c + d*x)^2, x, 4, -((2*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*b*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [sqrt(b*cos(c + d*x))*sec(c + d*x)^3, x, 4, (2*b*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b^2*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sqrt(b*cos(c + d*x))*sec(c + d*x)^4, x, 5, -((6*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*b^3*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (6*b*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [sqrt(b*cos(c + d*x))*sec(c + d*x)^5, x, 5, (10*b*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*b^4*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (10*b^2*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sqrt(b*cos(c + d*x))*sec(c + d*x)^6, x, 6, -((14*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x)))) + (2*b^5*sin(c + d*x))/(9*d*(b*cos(c + d*x))^(9/2)) + (14*b^3*sin(c + d*x))/(45*d*(b*cos(c + d*x))^(5/2)) + (14*b*sin(c + d*x))/(15*d*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^4*(b*cos(c + d*x))^(3/2), x, 6, (30*b^2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(77*d*sqrt(b*cos(c + d*x))) + (30*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(77*d) + (18*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(77*b*d) + (2*(b*cos(c + d*x))^(9/2)*sin(c + d*x))/(11*b^3*d)]
    @test_int [cos(c + d*x)^3*(b*cos(c + d*x))^(3/2), x, 5, (14*b*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (14*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*d) + (2*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^2*d)]
    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^(3/2), x, 5, (10*b^2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (10*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b*d)]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^(3/2), x, 4, (6*b*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d)]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^(3/2), x, 3, (2*b^2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*sec(c + d*x)^1, x, 3, (2*b*sqrt(b*cos(c + d*x))*Elliptic.E((c + d*x)/2, 2))/(d*sqrt(cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(3/2)*sec(c + d*x)^2, x, 3, (2*b^2*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(3/2)*sec(c + d*x)^3, x, 4, -((2*b*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*b^2*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(3/2)*sec(c + d*x)^4, x, 4, (2*b^2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b^3*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [(b*cos(c + d*x))^(3/2)*sec(c + d*x)^5, x, 5, -((6*b*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*b^4*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (6*b^2*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(3/2)*sec(c + d*x)^6, x, 5, (10*b^2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*b^5*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (10*b^3*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]
    @test_int [(b*cos(c + d*x))^(3/2)*sec(c + d*x)^7, x, 6, -((14*b*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x)))) + (2*b^6*sin(c + d*x))/(9*d*(b*cos(c + d*x))^(9/2)) + (14*b^4*sin(c + d*x))/(45*d*(b*cos(c + d*x))^(5/2)) + (14*b^2*sin(c + d*x))/(15*d*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^3*(b*cos(c + d*x))^(5/2), x, 6, (30*b^3*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(77*d*sqrt(b*cos(c + d*x))) + (30*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(77*d) + (18*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(77*d) + (2*(b*cos(c + d*x))^(9/2)*sin(c + d*x))/(11*b^2*d)]
    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^(5/2), x, 5, (14*b^2*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (14*b*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*d) + (2*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b*d)]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^(5/2), x, 5, (10*b^3*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (10*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*d)]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^(5/2), x, 3, (6*b^2*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*b*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*sec(c + d*x)^1, x, 4, (2*b^3*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*sec(c + d*x)^2, x, 3, (2*b^2*sqrt(b*cos(c + d*x))*Elliptic.E((c + d*x)/2, 2))/(d*sqrt(cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(5/2)*sec(c + d*x)^3, x, 3, (2*b^3*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(5/2)*sec(c + d*x)^4, x, 4, -((2*b^2*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*b^3*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(5/2)*sec(c + d*x)^5, x, 4, (2*b^3*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b^4*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [(b*cos(c + d*x))^(5/2)*sec(c + d*x)^6, x, 5, -((6*b^2*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*b^5*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (6*b^3*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(5/2)*sec(c + d*x)^7, x, 5, (10*b^3*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*b^6*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (10*b^4*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]
    @test_int [(b*cos(c + d*x))^(5/2)*sec(c + d*x)^8, x, 6, -((14*b^2*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x)))) + (2*b^7*sin(c + d*x))/(9*d*(b*cos(c + d*x))^(9/2)) + (14*b^5*sin(c + d*x))/(45*d*(b*cos(c + d*x))^(5/2)) + (14*b^3*sin(c + d*x))/(15*d*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^(7/2), x, 4, (10*b^4*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (10*b^3*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*b*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*d)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cos(c + d*x)^6/sqrt(b*cos(c + d*x)), x, 6, (30*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(77*d*sqrt(b*cos(c + d*x))) + (30*sqrt(b*cos(c + d*x))*sin(c + d*x))/(77*b*d) + (18*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(77*b^3*d) + (2*(b*cos(c + d*x))^(9/2)*sin(c + d*x))/(11*b^5*d)]
    @test_int [cos(c + d*x)^5/sqrt(b*cos(c + d*x)), x, 5, (14*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b*d*sqrt(cos(c + d*x))) + (14*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b^2*d) + (2*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^4*d)]
    @test_int [cos(c + d*x)^4/sqrt(b*cos(c + d*x)), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (10*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b*d) + (2*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^3*d)]
    @test_int [cos(c + d*x)^3/sqrt(b*cos(c + d*x)), x, 4, (6*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x))) + (2*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^2*d)]
    @test_int [cos(c + d*x)^2/sqrt(b*cos(c + d*x)), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b*d)]
    @test_int [cos(c + d*x)^1/sqrt(b*cos(c + d*x)), x, 3, (2*sqrt(b*cos(c + d*x))*Elliptic.E((c + d*x)/2, 2))/(b*d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^0/sqrt(b*cos(c + d*x)), x, 2, (2*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^1/sqrt(b*cos(c + d*x)), x, 4, -((2*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b*d*sqrt(cos(c + d*x)))) + (2*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^2/sqrt(b*cos(c + d*x)), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^3/sqrt(b*cos(c + d*x)), x, 5, -((6*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x)))) + (2*b^2*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (6*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^4/sqrt(b*cos(c + d*x)), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*b^3*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (10*b*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^5/sqrt(b*cos(c + d*x)), x, 6, -((14*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b*d*sqrt(cos(c + d*x)))) + (2*b^4*sin(c + d*x))/(9*d*(b*cos(c + d*x))^(9/2)) + (14*b^2*sin(c + d*x))/(45*d*(b*cos(c + d*x))^(5/2)) + (14*sin(c + d*x))/(15*d*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^7/(b*cos(c + d*x))^(3/2), x, 6, (30*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(77*b*d*sqrt(b*cos(c + d*x))) + (30*sqrt(b*cos(c + d*x))*sin(c + d*x))/(77*b^2*d) + (18*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(77*b^4*d) + (2*(b*cos(c + d*x))^(9/2)*sin(c + d*x))/(11*b^6*d)]
    @test_int [cos(c + d*x)^6/(b*cos(c + d*x))^(3/2), x, 5, (14*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^2*d*sqrt(cos(c + d*x))) + (14*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b^3*d) + (2*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^5*d)]
    @test_int [cos(c + d*x)^5/(b*cos(c + d*x))^(3/2), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b*d*sqrt(b*cos(c + d*x))) + (10*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b^2*d) + (2*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^4*d)]
    @test_int [cos(c + d*x)^4/(b*cos(c + d*x))^(3/2), x, 4, (6*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x))) + (2*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^3*d)]
    @test_int [cos(c + d*x)^3/(b*cos(c + d*x))^(3/2), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b*d*sqrt(b*cos(c + d*x))) + (2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b^2*d)]
    @test_int [cos(c + d*x)^2/(b*cos(c + d*x))^(3/2), x, 3, (2*sqrt(b*cos(c + d*x))*Elliptic.E((c + d*x)/2, 2))/(b^2*d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^1/(b*cos(c + d*x))^(3/2), x, 3, (2*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^0/(b*cos(c + d*x))^(3/2), x, 3, -((2*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^2*d*sqrt(cos(c + d*x)))) + (2*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^1/(b*cos(c + d*x))^(3/2), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b*d*sqrt(b*cos(c + d*x))) + (2*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^2/(b*cos(c + d*x))^(3/2), x, 5, -((6*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x)))) + (2*b*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (6*sin(c + d*x))/(5*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^3/(b*cos(c + d*x))^(3/2), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b*d*sqrt(b*cos(c + d*x))) + (2*b^2*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (10*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^4/(b*cos(c + d*x))^(3/2), x, 6, -((14*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^2*d*sqrt(cos(c + d*x)))) + (2*b^3*sin(c + d*x))/(9*d*(b*cos(c + d*x))^(9/2)) + (14*b*sin(c + d*x))/(45*d*(b*cos(c + d*x))^(5/2)) + (14*sin(c + d*x))/(15*b*d*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^8/(b*cos(c + d*x))^(5/2), x, 6, (30*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(77*b^2*d*sqrt(b*cos(c + d*x))) + (30*sqrt(b*cos(c + d*x))*sin(c + d*x))/(77*b^3*d) + (18*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(77*b^5*d) + (2*(b*cos(c + d*x))^(9/2)*sin(c + d*x))/(11*b^7*d)]
    @test_int [cos(c + d*x)^7/(b*cos(c + d*x))^(5/2), x, 5, (14*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^3*d*sqrt(cos(c + d*x))) + (14*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b^4*d) + (2*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^6*d)]
    @test_int [cos(c + d*x)^6/(b*cos(c + d*x))^(5/2), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b^2*d*sqrt(b*cos(c + d*x))) + (10*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b^3*d) + (2*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^5*d)]
    @test_int [cos(c + d*x)^5/(b*cos(c + d*x))^(5/2), x, 4, (6*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x))) + (2*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^4*d)]
    @test_int [cos(c + d*x)^4/(b*cos(c + d*x))^(5/2), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b^3*d)]
    @test_int [cos(c + d*x)^3/(b*cos(c + d*x))^(5/2), x, 3, (2*sqrt(b*cos(c + d*x))*Elliptic.E((c + d*x)/2, 2))/(b^3*d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^2/(b*cos(c + d*x))^(5/2), x, 3, (2*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^1/(b*cos(c + d*x))^(5/2), x, 4, -((2*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^3*d*sqrt(cos(c + d*x)))) + (2*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^0/(b*cos(c + d*x))^(5/2), x, 3, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (2*sin(c + d*x))/(3*b*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^1/(b*cos(c + d*x))^(5/2), x, 5, -((6*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x)))) + (2*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (6*sin(c + d*x))/(5*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^2/(b*cos(c + d*x))^(5/2), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b^2*d*sqrt(b*cos(c + d*x))) + (2*b*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (10*sin(c + d*x))/(21*b*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^3/(b*cos(c + d*x))^(5/2), x, 6, -((14*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^3*d*sqrt(cos(c + d*x)))) + (2*b^2*sin(c + d*x))/(9*d*(b*cos(c + d*x))^(9/2)) + (14*sin(c + d*x))/(45*d*(b*cos(c + d*x))^(5/2)) + (14*sin(c + d*x))/(15*b^2*d*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^0/(b*cos(c + d*x))^(7/2), x, 4, -((6*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^4*d*sqrt(cos(c + d*x)))) + (2*sin(c + d*x))/(5*b*d*(b*cos(c + d*x))^(5/2)) + (6*sin(c + d*x))/(5*b^3*d*sqrt(b*cos(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^(m/2)*(b*cos(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^(7/2)*(b*cos(c + d*x))^(1/2), x, 4, (3*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (3*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d)]
    @test_int [cos(c + d*x)^(5/2)*(b*cos(c + d*x))^(1/2), x, 3, (sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - (sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(3/2)*(b*cos(c + d*x))^(1/2), x, 3, (x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [cos(c + d*x)^(1/2)*(b*cos(c + d*x))^(1/2), x, 2, (sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-1/2)*(b*cos(c + d*x))^(1/2), x, 2, (x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x))]
    @test_int [cos(c + d*x)^(-3/2)*(b*cos(c + d*x))^(1/2), x, 2, (atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-5/2)*(b*cos(c + d*x))^(1/2), x, 3, (sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [cos(c + d*x)^(-7/2)*(b*cos(c + d*x))^(1/2), x, 3, (atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2))]
    @test_int [cos(c + d*x)^(-9/2)*(b*cos(c + d*x))^(1/2), x, 3, (sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2)) + (sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*cos(c + d*x)^(7/2))]
    @test_int [cos(c + d*x)^(-11/2)*(b*cos(c + d*x))^(1/2), x, 4, (3*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(8*d*sqrt(cos(c + d*x))) + (sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d*cos(c + d*x)^(9/2)) + (3*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d*cos(c + d*x)^(5/2))]


    @test_int [cos(c + d*x)^(5/2)*(b*cos(c + d*x))^(3/2), x, 4, (3*b*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (3*b*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (b*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d)]
    @test_int [cos(c + d*x)^(3/2)*(b*cos(c + d*x))^(3/2), x, 3, (b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - (b*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(1/2)*(b*cos(c + d*x))^(3/2), x, 3, (b*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (b*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [cos(c + d*x)^(-1/2)*(b*cos(c + d*x))^(3/2), x, 2, (b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-3/2)*(b*cos(c + d*x))^(3/2), x, 2, (b*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x))]
    @test_int [cos(c + d*x)^(-5/2)*(b*cos(c + d*x))^(3/2), x, 2, (b*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-7/2)*(b*cos(c + d*x))^(3/2), x, 3, (b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [cos(c + d*x)^(-9/2)*(b*cos(c + d*x))^(3/2), x, 3, (b*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2))]
    @test_int [cos(c + d*x)^(-11/2)*(b*cos(c + d*x))^(3/2), x, 3, (b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2)) + (b*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*cos(c + d*x)^(7/2))]
    @test_int [cos(c + d*x)^(-13/2)*(b*cos(c + d*x))^(3/2), x, 4, (3*b*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(8*d*sqrt(cos(c + d*x))) + (b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d*cos(c + d*x)^(9/2)) + (3*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d*cos(c + d*x)^(5/2))]


    @test_int [cos(c + d*x)^(5/2)*(b*cos(c + d*x))^(5/2), x, 3, (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - (2*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x))) + (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x)^5)/(5*d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(3/2)*(b*cos(c + d*x))^(5/2), x, 4, (3*b^2*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (3*b^2*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (b^2*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d)]
    @test_int [cos(c + d*x)^(1/2)*(b*cos(c + d*x))^(5/2), x, 3, (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-1/2)*(b*cos(c + d*x))^(5/2), x, 3, (b^2*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (b^2*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [cos(c + d*x)^(-3/2)*(b*cos(c + d*x))^(5/2), x, 2, (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-5/2)*(b*cos(c + d*x))^(5/2), x, 2, (b^2*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x))]
    @test_int [cos(c + d*x)^(-7/2)*(b*cos(c + d*x))^(5/2), x, 2, (b^2*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-9/2)*(b*cos(c + d*x))^(5/2), x, 3, (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [cos(c + d*x)^(-11/2)*(b*cos(c + d*x))^(5/2), x, 3, (b^2*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2))]
    @test_int [cos(c + d*x)^(-13/2)*(b*cos(c + d*x))^(5/2), x, 3, (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2)) + (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*cos(c + d*x)^(7/2))]
    @test_int [cos(c + d*x)^(-15/2)*(b*cos(c + d*x))^(5/2), x, 4, (3*b^2*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(8*d*sqrt(cos(c + d*x))) + (b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d*cos(c + d*x)^(9/2)) + (3*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d*cos(c + d*x)^(5/2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cos(c + d*x)^(11/2)/(b*cos(c + d*x))^(1/2), x, 3, (sqrt(cos(c + d*x))*sin(c + d*x))/(d*sqrt(b*cos(c + d*x))) - (2*sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(b*cos(c + d*x))) + (sqrt(cos(c + d*x))*sin(c + d*x)^5)/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(9/2)/(b*cos(c + d*x))^(1/2), x, 4, (3*x*sqrt(cos(c + d*x)))/(8*sqrt(b*cos(c + d*x))) + (3*cos(c + d*x)^(3/2)*sin(c + d*x))/(8*d*sqrt(b*cos(c + d*x))) + (cos(c + d*x)^(7/2)*sin(c + d*x))/(4*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(7/2)/(b*cos(c + d*x))^(1/2), x, 3, (sqrt(cos(c + d*x))*sin(c + d*x))/(d*sqrt(b*cos(c + d*x))) - (sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(5/2)/(b*cos(c + d*x))^(1/2), x, 3, (x*sqrt(cos(c + d*x)))/(2*sqrt(b*cos(c + d*x))) + (cos(c + d*x)^(3/2)*sin(c + d*x))/(2*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(3/2)/(b*cos(c + d*x))^(1/2), x, 2, (sqrt(cos(c + d*x))*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(1/2)/(b*cos(c + d*x))^(1/2), x, 2, (x*sqrt(cos(c + d*x)))/sqrt(b*cos(c + d*x))]
    @test_int [cos(c + d*x)^(-1/2)/(b*cos(c + d*x))^(1/2), x, 2, (atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-3/2)/(b*cos(c + d*x))^(1/2), x, 3, sin(c + d*x)/(d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-5/2)/(b*cos(c + d*x))^(1/2), x, 3, (atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*d*sqrt(b*cos(c + d*x))) + sin(c + d*x)/(2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-7/2)/(b*cos(c + d*x))^(1/2), x, 3, sin(c + d*x)/(d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))) + sin(c + d*x)^3/(3*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-9/2)/(b*cos(c + d*x))^(1/2), x, 4, (3*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(8*d*sqrt(b*cos(c + d*x))) + sin(c + d*x)/(4*d*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))) + (3*sin(c + d*x))/(8*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^(11/2)/(b*cos(c + d*x))^(3/2), x, 4, (3*x*sqrt(cos(c + d*x)))/(8*b*sqrt(b*cos(c + d*x))) + (3*cos(c + d*x)^(3/2)*sin(c + d*x))/(8*b*d*sqrt(b*cos(c + d*x))) + (cos(c + d*x)^(7/2)*sin(c + d*x))/(4*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(9/2)/(b*cos(c + d*x))^(3/2), x, 3, (sqrt(cos(c + d*x))*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x))) - (sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(7/2)/(b*cos(c + d*x))^(3/2), x, 3, (x*sqrt(cos(c + d*x)))/(2*b*sqrt(b*cos(c + d*x))) + (cos(c + d*x)^(3/2)*sin(c + d*x))/(2*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(5/2)/(b*cos(c + d*x))^(3/2), x, 2, (sqrt(cos(c + d*x))*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(3/2)/(b*cos(c + d*x))^(3/2), x, 2, (x*sqrt(cos(c + d*x)))/(b*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(1/2)/(b*cos(c + d*x))^(3/2), x, 2, (atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-1/2)/(b*cos(c + d*x))^(3/2), x, 3, sin(c + d*x)/(b*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-3/2)/(b*cos(c + d*x))^(3/2), x, 3, (atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*b*d*sqrt(b*cos(c + d*x))) + sin(c + d*x)/(2*b*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-5/2)/(b*cos(c + d*x))^(3/2), x, 3, sin(c + d*x)/(b*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))) + sin(c + d*x)^3/(3*b*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-7/2)/(b*cos(c + d*x))^(3/2), x, 4, (3*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(8*b*d*sqrt(b*cos(c + d*x))) + sin(c + d*x)/(4*b*d*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))) + (3*sin(c + d*x))/(8*b*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^(13/2)/(b*cos(c + d*x))^(5/2), x, 4, (3*x*sqrt(cos(c + d*x)))/(8*b^2*sqrt(b*cos(c + d*x))) + (3*cos(c + d*x)^(3/2)*sin(c + d*x))/(8*b^2*d*sqrt(b*cos(c + d*x))) + (cos(c + d*x)^(7/2)*sin(c + d*x))/(4*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(11/2)/(b*cos(c + d*x))^(5/2), x, 3, (sqrt(cos(c + d*x))*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x))) - (sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(9/2)/(b*cos(c + d*x))^(5/2), x, 3, (x*sqrt(cos(c + d*x)))/(2*b^2*sqrt(b*cos(c + d*x))) + (cos(c + d*x)^(3/2)*sin(c + d*x))/(2*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(7/2)/(b*cos(c + d*x))^(5/2), x, 2, (sqrt(cos(c + d*x))*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(5/2)/(b*cos(c + d*x))^(5/2), x, 2, (x*sqrt(cos(c + d*x)))/(b^2*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(3/2)/(b*cos(c + d*x))^(5/2), x, 2, (atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(1/2)/(b*cos(c + d*x))^(5/2), x, 3, sin(c + d*x)/(b^2*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-1/2)/(b*cos(c + d*x))^(5/2), x, 3, (atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*b^2*d*sqrt(b*cos(c + d*x))) + sin(c + d*x)/(2*b^2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-3/2)/(b*cos(c + d*x))^(5/2), x, 3, sin(c + d*x)/(b^2*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))) + sin(c + d*x)^3/(3*b^2*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^(-5/2)/(b*cos(c + d*x))^(5/2), x, 4, (3*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(8*b^2*d*sqrt(b*cos(c + d*x))) + sin(c + d*x)/(4*b^2*d*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))) + (3*sin(c + d*x))/(8*b^2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^(n/3)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(1/3), x, 2, -((3*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(4 + 3*m), (1/6)*(10 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(4 + 3*m)*sqrt(sin(c + d*x)^2)))]

    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^(1/3), x, 2, -((3*(b*cos(c + d*x))^(10/3)*HypergeometricFunctions._₂F₁(1/2, 5/3, 8/3, cos(c + d*x)^2)*sin(c + d*x))/(10*b^3*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^(1/3), x, 2, -((3*(b*cos(c + d*x))^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(7*b^2*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^(1/3), x, 1, -((3*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(4*b*d*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*cos(c + d*x))^(1/3)*sec(c + d*x)^1, x, 2, -((3*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(d*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*cos(c + d*x))^(1/3)*sec(c + d*x)^2, x, 2, (3*b*HypergeometricFunctions._₂F₁(-(1/3), 1/2, 2/3, cos(c + d*x)^2)*sin(c + d*x))/(2*d*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(1/3)*sec(c + d*x)^3, x, 2, (3*b^2*HypergeometricFunctions._₂F₁(-(5/6), 1/2, 1/6, cos(c + d*x)^2)*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/3)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(2/3), x, 2, -((3*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 + 3*m), (1/6)*(11 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 3*m)*sqrt(sin(c + d*x)^2)))]

    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^(2/3), x, 2, -((3*(b*cos(c + d*x))^(11/3)*HypergeometricFunctions._₂F₁(1/2, 11/6, 17/6, cos(c + d*x)^2)*sin(c + d*x))/(11*b^3*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^(2/3), x, 2, -((3*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b^2*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^(2/3), x, 1, -((3*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b*d*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*cos(c + d*x))^(2/3)*sec(c + d*x)^1, x, 2, -((3*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(2*d*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*cos(c + d*x))^(2/3)*sec(c + d*x)^2, x, 2, (3*b*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(2/3)*sec(c + d*x)^3, x, 2, (3*b^2*HypergeometricFunctions._₂F₁(-(2/3), 1/2, 1/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(4/3), x, 2, -((3*b*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 + 3*m), (1/6)*(13 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 3*m)*sqrt(sin(c + d*x)^2)))]

    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^(4/3), x, 2, -((3*(b*cos(c + d*x))^(13/3)*HypergeometricFunctions._₂F₁(1/2, 13/6, 19/6, cos(c + d*x)^2)*sin(c + d*x))/(13*b^3*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^(4/3), x, 2, -((3*(b*cos(c + d*x))^(10/3)*HypergeometricFunctions._₂F₁(1/2, 5/3, 8/3, cos(c + d*x)^2)*sin(c + d*x))/(10*b^2*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^(4/3), x, 1, -((3*(b*cos(c + d*x))^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(7*b*d*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*cos(c + d*x))^(4/3)*sec(c + d*x)^1, x, 2, -((3*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*cos(c + d*x))^(4/3)*sec(c + d*x)^2, x, 2, -((3*b*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(d*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*cos(c + d*x))^(4/3)*sec(c + d*x)^3, x, 2, (3*b^2*HypergeometricFunctions._₂F₁(-(1/3), 1/2, 2/3, cos(c + d*x)^2)*sin(c + d*x))/(2*d*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cos(c + d*x)^m/(b*cos(c + d*x))^(1/3), x, 2, -((3*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(2 + 3*m), (1/6)*(8 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(2 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)))]

    @test_int [cos(c + d*x)^2/(b*cos(c + d*x))^(1/3), x, 2, -((3*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b^3*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^1/(b*cos(c + d*x))^(1/3), x, 2, -((3*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b^2*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^0/(b*cos(c + d*x))^(1/3), x, 1, -((3*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(2*b*d*sqrt(sin(c + d*x)^2)))]
    @test_int [sec(c + d*x)^1/(b*cos(c + d*x))^(1/3), x, 2, (3*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^2/(b*cos(c + d*x))^(1/3), x, 2, (3*b*HypergeometricFunctions._₂F₁(-(2/3), 1/2, 1/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^3/(b*cos(c + d*x))^(1/3), x, 2, (3*b^2*HypergeometricFunctions._₂F₁(-(7/6), 1/2, -(1/6), cos(c + d*x)^2)*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/3)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^m/(b*cos(c + d*x))^(2/3), x, 2, -((3*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(1 + 3*m), (1/6)*(7 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + 3*m)*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)))]

    @test_int [cos(c + d*x)^2/(b*cos(c + d*x))^(2/3), x, 2, -((3*(b*cos(c + d*x))^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(7*b^3*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^1/(b*cos(c + d*x))^(2/3), x, 2, -((3*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(4*b^2*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^0/(b*cos(c + d*x))^(2/3), x, 1, -((3*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(b*d*sqrt(sin(c + d*x)^2)))]
    @test_int [sec(c + d*x)^1/(b*cos(c + d*x))^(2/3), x, 2, (3*HypergeometricFunctions._₂F₁(-(1/3), 1/2, 2/3, cos(c + d*x)^2)*sin(c + d*x))/(2*d*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^2/(b*cos(c + d*x))^(2/3), x, 2, (3*b*HypergeometricFunctions._₂F₁(-(5/6), 1/2, 1/6, cos(c + d*x)^2)*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/3)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^3/(b*cos(c + d*x))^(2/3), x, 2, (3*b^2*HypergeometricFunctions._₂F₁(-(4/3), 1/2, -(1/3), cos(c + d*x)^2)*sin(c + d*x))/(8*d*(b*cos(c + d*x))^(8/3)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^m/(b*cos(c + d*x))^(4/3), x, 2, (3*cos(c + d*x)^m*HypergeometricFunctions._₂F₁(1/2, (1/6)*(-1 + 3*m), (1/6)*(5 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 - 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]

    @test_int [cos(c + d*x)^2/(b*cos(c + d*x))^(4/3), x, 2, -((3*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b^3*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^1/(b*cos(c + d*x))^(4/3), x, 2, -((3*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(2*b^2*d*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^0/(b*cos(c + d*x))^(4/3), x, 1, (3*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^1/(b*cos(c + d*x))^(4/3), x, 2, (3*HypergeometricFunctions._₂F₁(-(2/3), 1/2, 1/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^2/(b*cos(c + d*x))^(4/3), x, 2, (3*b*HypergeometricFunctions._₂F₁(-(7/6), 1/2, -(1/6), cos(c + d*x)^2)*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/3)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^3/(b*cos(c + d*x))^(4/3), x, 2, (3*b^2*HypergeometricFunctions._₂F₁(-(5/3), 1/2, -(2/3), cos(c + d*x)^2)*sin(c + d*x))/(10*d*(b*cos(c + d*x))^(10/3)*sqrt(sin(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^n*with*n*symbolic=#


    @test_int [(a*cos(e + f*x))^m*(b*cos(e + f*x))^n, x, 2, -(((a*cos(e + f*x))^(1 + m)*(b*cos(e + f*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 + m + n), (1/2)*(3 + m + n), cos(e + f*x)^2)*sin(e + f*x))/(a*f*(1 + m + n)*sqrt(sin(e + f*x)^2)))]


    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^n, x, 2, -(((b*cos(c + d*x))^(3 + n)*HypergeometricFunctions._₂F₁(1/2, (3 + n)/2, (5 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^3*d*(3 + n)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^n, x, 2, -(((b*cos(c + d*x))^(2 + n)*HypergeometricFunctions._₂F₁(1/2, (2 + n)/2, (4 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^2*d*(2 + n)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^n, x, 1, -(((b*cos(c + d*x))^(1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 + n)*sqrt(sin(c + d*x)^2)))]
    @test_int [sec(c + d*x)^1*(b*cos(c + d*x))^n, x, 2, -(((b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, n/2, (2 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*n*sqrt(sin(c + d*x)^2)))]
    @test_int [sec(c + d*x)^2*(b*cos(c + d*x))^n, x, 2, (b*(b*cos(c + d*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-1 + n), (1 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - n)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^3*(b*cos(c + d*x))^n, x, 2, (b^2*(b*cos(c + d*x))^(-2 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-2 + n), n/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(2 - n)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^4*(b*cos(c + d*x))^n, x, 2, (b^3*(b*cos(c + d*x))^(-3 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-3 + n), (1/2)*(-1 + n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - n)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n, x, 2, -((2*cos(c + d*x)^(7/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(7 + 2*n), (1/4)*(11 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 2*n)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n, x, 2, -((2*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 2*n)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^(1/2)*(b*cos(c + d*x))^n, x, 2, -((2*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 + 2*n)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^(-1/2)*(b*cos(c + d*x))^n, x, 2, -((2*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 + 2*n), (1/4)*(5 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + 2*n)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^(-3/2)*(b*cos(c + d*x))^n, x, 2, (2*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-1 + 2*n), (1/4)*(3 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - 2*n)*sqrt(cos(c + d*x))*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^(-5/2)*(b*cos(c + d*x))^n, x, 2, (2*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 + 2*n), (1/4)*(1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - 2*n)*cos(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^(-7/2)*(b*cos(c + d*x))^n, x, 2, (2*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-5 + 2*n), (1/4)*(-1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 - 2*n)*cos(c + d*x)^(5/2)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^(-9/2)*(b*cos(c + d*x))^n, x, 2, (2*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-7 + 2*n), (1/4)*(-3 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 - 2*n)*cos(c + d*x)^(7/2)*sqrt(sin(c + d*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*sec(e+f*x))^n=#


    @test_int [(a*cos(e + f*x))^m*(b*sec(e + f*x))^n, x, 2, -(((a*cos(e + f*x))^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 + m - n), (1/2)*(3 + m - n), cos(e + f*x)^2)*(b*sec(e + f*x))^n*sin(e + f*x))/(a*f*(1 + m - n)*sqrt(sin(e + f*x)^2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*csc(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(b*csc(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [cos(a + b*x)^1*csc(a + b*x)^(1/2), x, 2, 2/(b*sqrt(csc(a + b*x)))]
    @test_int [cos(a + b*x)^1/csc(a + b*x)^(1/2), x, 2, 2/(3*b*csc(a + b*x)^(3/2))]


    @test_int [cos(a + b*x)^2*csc(a + b*x)^(1/2), x, 3, (2*cos(a + b*x))/(3*b*sqrt(csc(a + b*x))) + (4*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(3*b)]
    @test_int [cos(a + b*x)^2/csc(a + b*x)^(1/2), x, 3, (2*cos(a + b*x))/(5*b*csc(a + b*x)^(3/2)) + (4*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(5*b)]


    @test_int [cos(x)^3*csc(x)^(9/2), x, 3, (2/3)*csc(x)^(3/2) - (2/7)*csc(x)^(7/2)]
    @test_int [cos(a + b*x)^3*csc(a + b*x)^(1/2), x, 3, -(2/(5*b*csc(a + b*x)^(5/2))) + 2/(b*sqrt(csc(a + b*x)))]
    @test_int [cos(a + b*x)^3/csc(a + b*x)^(1/2), x, 3, -(2/(7*b*csc(a + b*x)^(7/2))) + 2/(3*b*csc(a + b*x)^(3/2))]


    @test_int [cos(a + b*x)^4*csc(a + b*x)^(1/2), x, 4, (4*cos(a + b*x))/(7*b*sqrt(csc(a + b*x))) + (2*cos(a + b*x)^3)/(7*b*sqrt(csc(a + b*x))) + (8*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(7*b)]
    @test_int [cos(a + b*x)^4/csc(a + b*x)^(1/2), x, 4, (4*cos(a + b*x))/(15*b*csc(a + b*x)^(3/2)) + (2*cos(a + b*x)^3)/(9*b*csc(a + b*x)^(3/2)) + (8*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(15*b)]


    @test_int [cos(x)*csc(x)^(7/3), x, 2, (-3*csc(x)^(4/3))/4]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [sec(a + b*x)^1*csc(a + b*x)^(1/2), x, 5, -(atan(sqrt(csc(a + b*x)))/b) + atanh(sqrt(csc(a + b*x)))/b]
    @test_int [sec(a + b*x)^1/csc(a + b*x)^(1/2), x, 5, atan(sqrt(csc(a + b*x)))/b + atanh(sqrt(csc(a + b*x)))/b]


    @test_int [sec(a + b*x)^2*csc(a + b*x)^(1/2), x, 3, sec(a + b*x)/(b*sqrt(csc(a + b*x))) + (sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/b]
    @test_int [sec(a + b*x)^2/csc(a + b*x)^(1/2), x, 3, sec(a + b*x)/(b*csc(a + b*x)^(3/2)) - (sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/b]


    @test_int [sec(a + b*x)^3*csc(a + b*x)^(1/2), x, 6, -((3*atan(sqrt(csc(a + b*x))))/(4*b)) + (3*atanh(sqrt(csc(a + b*x))))/(4*b) + sec(a + b*x)^2/(2*b*sqrt(csc(a + b*x)))]
    @test_int [sec(a + b*x)^3/csc(a + b*x)^(1/2), x, 6, atan(sqrt(csc(a + b*x)))/(4*b) + atanh(sqrt(csc(a + b*x)))/(4*b) + sec(a + b*x)^2/(2*b*csc(a + b*x)^(3/2))]


    @test_int [sec(a + b*x)^4*csc(a + b*x)^(1/2), x, 4, (5*sec(a + b*x))/(6*b*sqrt(csc(a + b*x))) + sec(a + b*x)^3/(3*b*sqrt(csc(a + b*x))) + (5*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(6*b)]
    @test_int [sec(a + b*x)^4/csc(a + b*x)^(1/2), x, 4, sec(a + b*x)/(2*b*csc(a + b*x)^(3/2)) + sec(a + b*x)^3/(3*b*csc(a + b*x)^(3/2)) - (sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(2*b)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^(m/2)*(b*csc(e+f*x))^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*csc(e+f*x))^n*with*n*symbolic=#


    @test_int [csc(a + b*x)^p*(d*cos(a + b*x))^(3/2), x, 2, (d*sqrt(d*cos(a + b*x))*csc(a + b*x)^(-1 + p)*HypergeometricFunctions._₂F₁(-(1/4), (1 - p)/2, (3 - p)/2, sin(a + b*x)^2))/(b*(1 - p)*(cos(a + b*x)^2)^(1/4))]
    @test_int [csc(a + b*x)^p*(d*cos(a + b*x))^(1/2), x, 2, (d*(cos(a + b*x)^2)^(1/4)*csc(a + b*x)^(-1 + p)*HypergeometricFunctions._₂F₁(1/4, (1 - p)/2, (3 - p)/2, sin(a + b*x)^2))/(b*(1 - p)*sqrt(d*cos(a + b*x)))]
    @test_int [csc(a + b*x)^p/(d*cos(a + b*x))^(1/2), x, 2, (d*(cos(a + b*x)^2)^(3/4)*csc(a + b*x)^(-1 + p)*HypergeometricFunctions._₂F₁(3/4, (1 - p)/2, (3 - p)/2, sin(a + b*x)^2))/(b*(1 - p)*(d*cos(a + b*x))^(3/2))]
    @test_int [csc(a + b*x)^p/(d*cos(a + b*x))^(3/2), x, 2, ((cos(a + b*x)^2)^(1/4)*csc(a + b*x)^(-1 + p)*HypergeometricFunctions._₂F₁(5/4, (1 - p)/2, (3 - p)/2, sin(a + b*x)^2))/(b*d*(1 - p)*sqrt(d*cos(a + b*x)))]
    @test_int [csc(a + b*x)^p/(d*cos(a + b*x))^(5/2), x, 2, ((cos(a + b*x)^2)^(3/4)*csc(a + b*x)^(-1 + p)*HypergeometricFunctions._₂F₁(7/4, (1 - p)/2, (3 - p)/2, sin(a + b*x)^2))/(b*d*(1 - p)*(d*cos(a + b*x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*csc(e+f*x))^n*with*m*symbolic=#


    @test_int [(cos(e + f*x))^m*(csc(e + f*x))^n, x, 2, (cos(e + f*x)^(-1 + m)*(cos(e + f*x)^2)^((1 - m)/2)*csc(e + f*x)^(-1 + n)*HypergeometricFunctions._₂F₁((1 - m)/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2))/(f*(1 - n))]
    @test_int [(a*cos(e + f*x))^m*(csc(e + f*x))^n, x, 2, (a*(a*cos(e + f*x))^(-1 + m)*(cos(e + f*x)^2)^((1 - m)/2)*csc(e + f*x)^(-1 + n)*HypergeometricFunctions._₂F₁((1 - m)/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2))/(f*(1 - n))]
    @test_int [(cos(e + f*x))^m*(b*csc(e + f*x))^n, x, 2, (b*cos(e + f*x)^(-1 + m)*(cos(e + f*x)^2)^((1 - m)/2)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁((1 - m)/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2))/(f*(1 - n))]
    @test_int [(a*cos(e + f*x))^m*(b*csc(e + f*x))^n, x, 2, (a*b*(a*cos(e + f*x))^(-1 + m)*(cos(e + f*x)^2)^((1 - m)/2)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁((1 - m)/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2))/(f*(1 - n))]


    @test_int [(a*cos(e + f*x))^m*(b*csc(e + f*x))^(7/2), x, 2, -((b^3*(a*cos(e + f*x))^(1 + m)*sqrt(b*csc(e + f*x))*HypergeometricFunctions._₂F₁(9/4, (1 + m)/2, (3 + m)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^(1/4))/(a*f*(1 + m))), -((b*(a*cos(e + f*x))^(1 + m)*(b*csc(e + f*x))^(5/2)*HypergeometricFunctions._₂F₁(9/4, (1 + m)/2, (3 + m)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^(5/4))/(a*f*(1 + m)))]
    @test_int [(a*cos(e + f*x))^m*(b*csc(e + f*x))^(5/2), x, 2, -((b*(a*cos(e + f*x))^(1 + m)*(b*csc(e + f*x))^(3/2)*HypergeometricFunctions._₂F₁(7/4, (1 + m)/2, (3 + m)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^(3/4))/(a*f*(1 + m)))]
    @test_int [(a*cos(e + f*x))^m*(b*csc(e + f*x))^(3/2), x, 2, -((b*(a*cos(e + f*x))^(1 + m)*sqrt(b*csc(e + f*x))*HypergeometricFunctions._₂F₁(5/4, (1 + m)/2, (3 + m)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^(1/4))/(a*f*(1 + m)))]
    @test_int [(a*cos(e + f*x))^m*(b*csc(e + f*x))^(1/2), x, 2, -(((a*cos(e + f*x))^(1 + m)*(b*csc(e + f*x))^(3/2)*HypergeometricFunctions._₂F₁(3/4, (1 + m)/2, (3 + m)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^(3/4))/(a*b*f*(1 + m)))]
    @test_int [(a*cos(e + f*x))^m/(b*csc(e + f*x))^(1/2), x, 2, -(((a*cos(e + f*x))^(1 + m)*sqrt(b*csc(e + f*x))*HypergeometricFunctions._₂F₁(1/4, (1 + m)/2, (3 + m)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^(1/4))/(a*b*f*(1 + m)))]
    @test_int [(a*cos(e + f*x))^m/(b*csc(e + f*x))^(3/2), x, 2, -(((a*cos(e + f*x))^(1 + m)*HypergeometricFunctions._₂F₁(-(1/4), (1 + m)/2, (3 + m)/2, cos(e + f*x)^2))/(a*b*f*(1 + m)*sqrt(b*csc(e + f*x))*(sin(e + f*x)^2)^(1/4)))]
    @test_int [(a*cos(e + f*x))^m/(b*csc(e + f*x))^(5/2), x, 2, -(((a*cos(e + f*x))^(1 + m)*sqrt(b*csc(e + f*x))*HypergeometricFunctions._₂F₁(-(3/4), (1 + m)/2, (3 + m)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^(1/4))/(a*b^3*f*(1 + m))), -(((a*cos(e + f*x))^(1 + m)*HypergeometricFunctions._₂F₁(-(3/4), (1 + m)/2, (3 + m)/2, cos(e + f*x)^2))/(a*b*f*(1 + m)*(b*csc(e + f*x))^(3/2)*(sin(e + f*x)^2)^(3/4)))]
    end
