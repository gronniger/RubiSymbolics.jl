@testset "4.5.0 (a sec)^m (b trg)^n" begin
    (a, b, c, d, e, f, m, n, p, x, ) = @variables a b c d e f m n p x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(b*sec(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*sec(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sec(c+d*x))^n=#


    @test_int [sec(a + b*x)^1, x, 1, atanh(sin(a + b*x))/b]
    @test_int [sec(a + b*x)^2, x, 2, tan(a + b*x)/b]
    @test_int [sec(a + b*x)^3, x, 2, atanh(sin(a + b*x))/(2*b) + (sec(a + b*x)*tan(a + b*x))/(2*b)]
    @test_int [sec(a + b*x)^4, x, 2, tan(a + b*x)/b + tan(a + b*x)^3/(3*b)]
    @test_int [sec(a + b*x)^5, x, 3, (3*atanh(sin(a + b*x)))/(8*b) + (3*sec(a + b*x)*tan(a + b*x))/(8*b) + (sec(a + b*x)^3*tan(a + b*x))/(4*b)]
    @test_int [sec(a + b*x)^6, x, 2, tan(a + b*x)/b + (2*tan(a + b*x)^3)/(3*b) + tan(a + b*x)^5/(5*b)]
    @test_int [sec(a + b*x)^7, x, 4, (5*atanh(sin(a + b*x)))/(16*b) + (5*sec(a + b*x)*tan(a + b*x))/(16*b) + (5*sec(a + b*x)^3*tan(a + b*x))/(24*b) + (sec(a + b*x)^5*tan(a + b*x))/(6*b)]
    @test_int [sec(a + b*x)^8, x, 2, tan(a + b*x)/b + tan(a + b*x)^3/b + (3*tan(a + b*x)^5)/(5*b) + tan(a + b*x)^7/(7*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sec(c+d*x))^(n/2)=#


    @test_int [sec(a + b*x)^(7/2), x, 4, -((6*sqrt(cos(a + b*x))*Elliptic.E((1/2)*(a + b*x), 2)*sqrt(sec(a + b*x)))/(5*b)) + (6*sqrt(sec(a + b*x))*sin(a + b*x))/(5*b) + (2*sec(a + b*x)^(5/2)*sin(a + b*x))/(5*b)]
    @test_int [sec(a + b*x)^(5/2), x, 3, (2*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2)*sqrt(sec(a + b*x)))/(3*b) + (2*sec(a + b*x)^(3/2)*sin(a + b*x))/(3*b)]
    @test_int [sec(a + b*x)^(3/2), x, 3, -((2*sqrt(cos(a + b*x))*Elliptic.E((1/2)*(a + b*x), 2)*sqrt(sec(a + b*x)))/b) + (2*sqrt(sec(a + b*x))*sin(a + b*x))/b]
    @test_int [sec(a + b*x)^(1/2), x, 2, (2*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2)*sqrt(sec(a + b*x)))/b]
    @test_int [1/sec(a + b*x)^(1/2), x, 2, (2*sqrt(cos(a + b*x))*Elliptic.E((1/2)*(a + b*x), 2)*sqrt(sec(a + b*x)))/b]
    @test_int [1/sec(a + b*x)^(3/2), x, 3, (2*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2)*sqrt(sec(a + b*x)))/(3*b) + (2*sin(a + b*x))/(3*b*sqrt(sec(a + b*x)))]
    @test_int [1/sec(a + b*x)^(5/2), x, 3, (6*sqrt(cos(a + b*x))*Elliptic.E((1/2)*(a + b*x), 2)*sqrt(sec(a + b*x)))/(5*b) + (2*sin(a + b*x))/(5*b*sec(a + b*x)^(3/2))]
    @test_int [1/sec(a + b*x)^(7/2), x, 4, (10*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2)*sqrt(sec(a + b*x)))/(21*b) + (2*sin(a + b*x))/(7*b*sec(a + b*x)^(5/2)) + (10*sin(a + b*x))/(21*b*sqrt(sec(a + b*x)))]


    @test_int [(c*sec(a + b*x))^(7/2), x, 4, -((6*c^4*Elliptic.E((1/2)*(a + b*x), 2))/(5*b*sqrt(cos(a + b*x))*sqrt(c*sec(a + b*x)))) + (6*c^3*sqrt(c*sec(a + b*x))*sin(a + b*x))/(5*b) + (2*c*(c*sec(a + b*x))^(5/2)*sin(a + b*x))/(5*b)]
    @test_int [(c*sec(a + b*x))^(5/2), x, 3, (2*c^2*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2)*sqrt(c*sec(a + b*x)))/(3*b) + (2*c*(c*sec(a + b*x))^(3/2)*sin(a + b*x))/(3*b)]
    @test_int [(c*sec(a + b*x))^(3/2), x, 3, -((2*c^2*Elliptic.E((1/2)*(a + b*x), 2))/(b*sqrt(cos(a + b*x))*sqrt(c*sec(a + b*x)))) + (2*c*sqrt(c*sec(a + b*x))*sin(a + b*x))/b]
    @test_int [(c*sec(a + b*x))^(1/2), x, 2, (2*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2)*sqrt(c*sec(a + b*x)))/b]
    @test_int [1/(c*sec(a + b*x))^(1/2), x, 2, (2*Elliptic.E((1/2)*(a + b*x), 2))/(b*sqrt(cos(a + b*x))*sqrt(c*sec(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(3/2), x, 3, (2*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2)*sqrt(c*sec(a + b*x)))/(3*b*c^2) + (2*sin(a + b*x))/(3*b*c*sqrt(c*sec(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(5/2), x, 3, (6*Elliptic.E((1/2)*(a + b*x), 2))/(5*b*c^2*sqrt(cos(a + b*x))*sqrt(c*sec(a + b*x))) + (2*sin(a + b*x))/(5*b*c*(c*sec(a + b*x))^(3/2))]
    @test_int [1/(c*sec(a + b*x))^(7/2), x, 4, (10*sqrt(cos(a + b*x))*Elliptic.F((1/2)*(a + b*x), 2)*sqrt(c*sec(a + b*x)))/(21*b*c^4) + (2*sin(a + b*x))/(7*b*c*(c*sec(a + b*x))^(5/2)) + (10*sin(a + b*x))/(21*b*c^3*sqrt(c*sec(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sec(c+d*x))^(n/3)=#


    @test_int [sec(a + b*x)^(4/3), x, 2, (3*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(a + b*x)^2)*sec(a + b*x)^(1/3)*sin(a + b*x))/(b*sqrt(sin(a + b*x)^2))]
    @test_int [sec(a + b*x)^(2/3), x, 2, -((3*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(a + b*x)^2)*sin(a + b*x))/(b*sec(a + b*x)^(1/3)*sqrt(sin(a + b*x)^2)))]
    @test_int [sec(a + b*x)^(1/3), x, 2, -((3*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(a + b*x)^2)*sin(a + b*x))/(2*b*sec(a + b*x)^(2/3)*sqrt(sin(a + b*x)^2)))]
    @test_int [1/sec(a + b*x)^(1/3), x, 2, -((3*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(a + b*x)^2)*sin(a + b*x))/(4*b*sec(a + b*x)^(4/3)*sqrt(sin(a + b*x)^2)))]
    @test_int [1/sec(a + b*x)^(2/3), x, 2, -((3*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(a + b*x)^2)*sin(a + b*x))/(5*b*sec(a + b*x)^(5/3)*sqrt(sin(a + b*x)^2)))]
    @test_int [1/sec(a + b*x)^(4/3), x, 2, -((3*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(a + b*x)^2)*sin(a + b*x))/(7*b*sec(a + b*x)^(7/3)*sqrt(sin(a + b*x)^2)))]


    @test_int [(c*sec(a + b*x))^(4/3), x, 2, (3*c*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(a + b*x)^2)*(c*sec(a + b*x))^(1/3)*sin(a + b*x))/(b*sqrt(sin(a + b*x)^2))]
    @test_int [(c*sec(a + b*x))^(2/3), x, 2, -((3*c*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(a + b*x)^2)*sin(a + b*x))/(b*(c*sec(a + b*x))^(1/3)*sqrt(sin(a + b*x)^2)))]
    @test_int [(c*sec(a + b*x))^(1/3), x, 2, -((3*c*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(a + b*x)^2)*sin(a + b*x))/(2*b*(c*sec(a + b*x))^(2/3)*sqrt(sin(a + b*x)^2)))]
    @test_int [1/(c*sec(a + b*x))^(1/3), x, 2, -((3*c*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(a + b*x)^2)*sin(a + b*x))/(4*b*(c*sec(a + b*x))^(4/3)*sqrt(sin(a + b*x)^2)))]
    @test_int [1/(c*sec(a + b*x))^(2/3), x, 2, -((3*c*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(a + b*x)^2)*sin(a + b*x))/(5*b*(c*sec(a + b*x))^(5/3)*sqrt(sin(a + b*x)^2)))]
    @test_int [1/(c*sec(a + b*x))^(4/3), x, 2, -((3*c*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(a + b*x)^2)*sin(a + b*x))/(7*b*(c*sec(a + b*x))^(7/3)*sqrt(sin(a + b*x)^2)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sec(c+d*x))^n*with*n*symbolic=#


    @test_int [sec(a + b*x)^n, x, 2, -((HypergeometricFunctions._₂F₁(1/2, (1 - n)/2, (3 - n)/2, cos(a + b*x)^2)*sec(a + b*x)^(-1 + n)*sin(a + b*x))/(b*(1 - n)*sqrt(sin(a + b*x)^2)))]


    @test_int [(c*sec(a + b*x))^n, x, 2, -((c*HypergeometricFunctions._₂F₁(1/2, (1 - n)/2, (3 - n)/2, cos(a + b*x)^2)*(c*sec(a + b*x))^(-1 + n)*sin(a + b*x))/(b*(1 - n)*sqrt(sin(a + b*x)^2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*sec(c+d*x)^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sec(c+d*x)^p)^(n/2)*with*p*positive*integer=#


    @test_int [(sec(x)^2)^(7/2), x, 5, (5/16)*asinh(tan(x)) + (5/16)*sqrt(sec(x)^2)*tan(x) + (5/24)*(sec(x)^2)^(3/2)*tan(x) + (1/6)*(sec(x)^2)^(5/2)*tan(x)]
    @test_int [(sec(x)^2)^(5/2), x, 4, (3/8)*asinh(tan(x)) + (3/8)*sqrt(sec(x)^2)*tan(x) + (1/4)*(sec(x)^2)^(3/2)*tan(x)]
    @test_int [(sec(x)^2)^(3/2), x, 3, (1/2)*asinh(tan(x)) + (1/2)*sqrt(sec(x)^2)*tan(x)]
    @test_int [(sec(x)^2)^(1/2), x, 2, asinh(tan(x))]
    @test_int [1/(sec(x)^2)^(1/2), x, 2, tan(x)/sqrt(sec(x)^2)]
    @test_int [1/(sec(x)^2)^(3/2), x, 3, tan(x)/(3*(sec(x)^2)^(3/2)) + (2*tan(x))/(3*sqrt(sec(x)^2))]
    @test_int [1/(sec(x)^2)^(5/2), x, 4, tan(x)/(5*(sec(x)^2)^(5/2)) + (4*tan(x))/(15*(sec(x)^2)^(3/2)) + (8*tan(x))/(15*sqrt(sec(x)^2))]
    @test_int [1/(sec(x)^2)^(7/2), x, 5, tan(x)/(7*(sec(x)^2)^(7/2)) + (6*tan(x))/(35*(sec(x)^2)^(5/2)) + (8*tan(x))/(35*(sec(x)^2)^(3/2)) + (16*tan(x))/(35*sqrt(sec(x)^2))]


    @test_int [(a*sec(x)^2)^(7/2), x, 6, (5/16)*a^(7/2)*atanh((sqrt(a)*tan(x))/sqrt(a*sec(x)^2)) + (5/16)*a^3*sqrt(a*sec(x)^2)*tan(x) + (5/24)*a^2*(a*sec(x)^2)^(3/2)*tan(x) + (1/6)*a*(a*sec(x)^2)^(5/2)*tan(x)]
    @test_int [(a*sec(x)^2)^(5/2), x, 5, (3/8)*a^(5/2)*atanh((sqrt(a)*tan(x))/sqrt(a*sec(x)^2)) + (3/8)*a^2*sqrt(a*sec(x)^2)*tan(x) + (1/4)*a*(a*sec(x)^2)^(3/2)*tan(x)]
    @test_int [(a*sec(x)^2)^(3/2), x, 4, (1/2)*a^(3/2)*atanh((sqrt(a)*tan(x))/sqrt(a*sec(x)^2)) + (1/2)*a*sqrt(a*sec(x)^2)*tan(x)]
    @test_int [(a*sec(x)^2)^(1/2), x, 3, sqrt(a)*atanh((sqrt(a)*tan(x))/sqrt(a*sec(x)^2))]
    @test_int [1/(a*sec(x)^2)^(1/2), x, 2, tan(x)/sqrt(a*sec(x)^2)]
    @test_int [1/(a*sec(x)^2)^(3/2), x, 3, tan(x)/(3*(a*sec(x)^2)^(3/2)) + (2*tan(x))/(3*a*sqrt(a*sec(x)^2))]
    @test_int [1/(a*sec(x)^2)^(5/2), x, 4, tan(x)/(5*(a*sec(x)^2)^(5/2)) + (4*tan(x))/(15*a*(a*sec(x)^2)^(3/2)) + (8*tan(x))/(15*a^2*sqrt(a*sec(x)^2))]
    @test_int [1/(a*sec(x)^2)^(7/2), x, 5, tan(x)/(7*(a*sec(x)^2)^(7/2)) + (6*tan(x))/(35*a*(a*sec(x)^2)^(5/2)) + (8*tan(x))/(35*a^2*(a*sec(x)^2)^(3/2)) + (16*tan(x))/(35*a^3*sqrt(a*sec(x)^2))]


    @test_int [(a*sec(x)^3)^(5/2), x, 7, (-(154/195))*a^2*cos(x)^(3/2)*Elliptic.E(x/2, 2)*sqrt(a*sec(x)^3) + (154/195)*a^2*cos(x)*sqrt(a*sec(x)^3)*sin(x) + (154/585)*a^2*sqrt(a*sec(x)^3)*tan(x) + (22/117)*a^2*sec(x)^2*sqrt(a*sec(x)^3)*tan(x) + (2/13)*a^2*sec(x)^4*sqrt(a*sec(x)^3)*tan(x)]
    @test_int [(a*sec(x)^3)^(3/2), x, 5, (10/21)*a*cos(x)^(3/2)*Elliptic.F(x/2, 2)*sqrt(a*sec(x)^3) + (10/21)*a*sqrt(a*sec(x)^3)*sin(x) + (2/7)*a*sec(x)*sqrt(a*sec(x)^3)*tan(x)]
    @test_int [(a*sec(x)^3)^(1/2), x, 4, -2*cos(x)^(3/2)*Elliptic.E(x/2, 2)*sqrt(a*sec(x)^3) + 2*cos(x)*sqrt(a*sec(x)^3)*sin(x)]
    @test_int [1/(a*sec(x)^3)^(1/2), x, 4, (2*Elliptic.F(x/2, 2))/(3*cos(x)^(3/2)*sqrt(a*sec(x)^3)) + (2*tan(x))/(3*sqrt(a*sec(x)^3))]
    @test_int [1/(a*sec(x)^3)^(3/2), x, 5, (14*Elliptic.E(x/2, 2))/(15*a*cos(x)^(3/2)*sqrt(a*sec(x)^3)) + (14*sin(x))/(45*a*sqrt(a*sec(x)^3)) + (2*cos(x)^2*sin(x))/(9*a*sqrt(a*sec(x)^3))]
    @test_int [1/(a*sec(x)^3)^(5/2), x, 7, (26*Elliptic.F(x/2, 2))/(77*a^2*cos(x)^(3/2)*sqrt(a*sec(x)^3)) + (78*cos(x)*sin(x))/(385*a^2*sqrt(a*sec(x)^3)) + (26*cos(x)^3*sin(x))/(165*a^2*sqrt(a*sec(x)^3)) + (2*cos(x)^5*sin(x))/(15*a^2*sqrt(a*sec(x)^3)) + (26*tan(x))/(77*a^2*sqrt(a*sec(x)^3))]


    @test_int [(a*sec(x)^4)^(7/2), x, 3, a^3*cos(x)*sqrt(a*sec(x)^4)*sin(x) + 2*a^3*sqrt(a*sec(x)^4)*sin(x)^2*tan(x) + 3*a^3*sqrt(a*sec(x)^4)*sin(x)^2*tan(x)^3 + (20/7)*a^3*sqrt(a*sec(x)^4)*sin(x)^2*tan(x)^5 + (5/3)*a^3*sqrt(a*sec(x)^4)*sin(x)^2*tan(x)^7 + (6/11)*a^3*sqrt(a*sec(x)^4)*sin(x)^2*tan(x)^9 + (1/13)*a^3*sqrt(a*sec(x)^4)*sin(x)^2*tan(x)^11]
    @test_int [(a*sec(x)^4)^(5/2), x, 3, a^2*cos(x)*sqrt(a*sec(x)^4)*sin(x) + (4/3)*a^2*sqrt(a*sec(x)^4)*sin(x)^2*tan(x) + (6/5)*a^2*sqrt(a*sec(x)^4)*sin(x)^2*tan(x)^3 + (4/7)*a^2*sqrt(a*sec(x)^4)*sin(x)^2*tan(x)^5 + (1/9)*a^2*sqrt(a*sec(x)^4)*sin(x)^2*tan(x)^7]
    @test_int [(a*sec(x)^4)^(3/2), x, 3, a*cos(x)*sqrt(a*sec(x)^4)*sin(x) + (2/3)*a*sqrt(a*sec(x)^4)*sin(x)^2*tan(x) + (1/5)*a*sqrt(a*sec(x)^4)*sin(x)^2*tan(x)^3]
    @test_int [(a*sec(x)^4)^(1/2), x, 3, cos(x)*sqrt(a*sec(x)^4)*sin(x)]
    @test_int [1/(a*sec(x)^4)^(1/2), x, 3, (x*sec(x)^2)/(2*sqrt(a*sec(x)^4)) + tan(x)/(2*sqrt(a*sec(x)^4))]
    @test_int [1/(a*sec(x)^4)^(3/2), x, 5, (5*x*sec(x)^2)/(16*a*sqrt(a*sec(x)^4)) + (5*cos(x)*sin(x))/(24*a*sqrt(a*sec(x)^4)) + (cos(x)^3*sin(x))/(6*a*sqrt(a*sec(x)^4)) + (5*tan(x))/(16*a*sqrt(a*sec(x)^4))]
    @test_int [1/(a*sec(x)^4)^(5/2), x, 7, (63*x*sec(x)^2)/(256*a^2*sqrt(a*sec(x)^4)) + (21*cos(x)*sin(x))/(128*a^2*sqrt(a*sec(x)^4)) + (21*cos(x)^3*sin(x))/(160*a^2*sqrt(a*sec(x)^4)) + (9*cos(x)^5*sin(x))/(80*a^2*sqrt(a*sec(x)^4)) + (cos(x)^7*sin(x))/(10*a^2*sqrt(a*sec(x)^4)) + (63*tan(x))/(256*a^2*sqrt(a*sec(x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*((b*sec(c+d*x))^p)^n*with*n*symbolic=#


    @test_int [((b*sec(c + d*x))^p)^n, x, 3, -((cos(c + d*x)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 - n*p), (1/2)*(3 - n*p), cos(c + d*x)^2)*((b*sec(c + d*x))^p)^n*sin(c + d*x))/(d*(1 - n*p)*sqrt(sin(c + d*x)^2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*(b*sec(c+d*x))^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*(b*sec(c+d*x))^p)^n*with*p*symbolic=#


    @test_int [(a*(b*sec(c + d*x))^p)^n, x, 3, -((cos(c + d*x)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 - n*p), (1/2)*(3 - n*p), cos(c + d*x)^2)*(a*(b*sec(c + d*x))^p)^n*sin(c + d*x))/(d*(1 - n*p)*sqrt(sin(c + d*x)^2)))]


    #= ::Title:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^m*(b*Trg(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*sec(c+d*x))^m*(b*sec(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(c+d*x)^m*(b*sec(c+d*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sec(c + d*x)^4*sqrt(b*sec(c + d*x)), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*d) + (10*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(21*b*d) + (2*(b*sec(c + d*x))^(7/2)*sin(c + d*x))/(7*b^3*d)]
    @test_int [sec(c + d*x)^3*sqrt(b*sec(c + d*x)), x, 5, -((6*b*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (6*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*d) + (2*(b*sec(c + d*x))^(5/2)*sin(c + d*x))/(5*b^2*d)]
    @test_int [sec(c + d*x)^2*sqrt(b*sec(c + d*x)), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(3*b*d)]
    @test_int [sec(c + d*x)^1*sqrt(b*sec(c + d*x)), x, 4, -((2*b*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*sqrt(b*sec(c + d*x))*sin(c + d*x))/d]
    @test_int [sec(c + d*x)^0*sqrt(b*sec(c + d*x)), x, 2, (2*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2)*sqrt(b*sec(c + d*x)))/d]
    @test_int [cos(c + d*x)^1*sqrt(b*sec(c + d*x)), x, 3, (2*b*Elliptic.E((c + d*x)/2, 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^2*sqrt(b*sec(c + d*x)), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*b*sin(c + d*x))/(3*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^3*sqrt(b*sec(c + d*x)), x, 4, (6*b*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b^2*sin(c + d*x))/(5*d*(b*sec(c + d*x))^(3/2))]
    @test_int [cos(c + d*x)^4*sqrt(b*sec(c + d*x)), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*d) + (2*b^3*sin(c + d*x))/(7*d*(b*sec(c + d*x))^(5/2)) + (10*b*sin(c + d*x))/(21*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^5*sqrt(b*sec(c + d*x)), x, 5, (14*b*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b^4*sin(c + d*x))/(9*d*(b*sec(c + d*x))^(7/2)) + (14*b^2*sin(c + d*x))/(45*d*(b*sec(c + d*x))^(3/2))]


    @test_int [sec(c + d*x)^3*(b*sec(c + d*x))^(3/2), x, 5, (10*b*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*d) + (10*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(21*d) + (2*(b*sec(c + d*x))^(7/2)*sin(c + d*x))/(7*b^2*d)]
    @test_int [sec(c + d*x)^2*(b*sec(c + d*x))^(3/2), x, 5, -((6*b^2*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (6*b*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*d) + (2*(b*sec(c + d*x))^(5/2)*sin(c + d*x))/(5*b*d)]
    @test_int [sec(c + d*x)^1*(b*sec(c + d*x))^(3/2), x, 4, (2*b*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(3*d)]
    @test_int [sec(c + d*x)^0*(b*sec(c + d*x))^(3/2), x, 3, -((2*b^2*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*b*sqrt(b*sec(c + d*x))*sin(c + d*x))/d]
    @test_int [cos(c + d*x)^1*(b*sec(c + d*x))^(3/2), x, 3, (2*b*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2)*sqrt(b*sec(c + d*x)))/d]
    @test_int [cos(c + d*x)^2*(b*sec(c + d*x))^(3/2), x, 3, (2*b^2*Elliptic.E((c + d*x)/2, 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^3*(b*sec(c + d*x))^(3/2), x, 4, (2*b*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*b^2*sin(c + d*x))/(3*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^4*(b*sec(c + d*x))^(3/2), x, 4, (6*b^2*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b^3*sin(c + d*x))/(5*d*(b*sec(c + d*x))^(3/2))]
    @test_int [cos(c + d*x)^5*(b*sec(c + d*x))^(3/2), x, 5, (10*b*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*d) + (2*b^4*sin(c + d*x))/(7*d*(b*sec(c + d*x))^(5/2)) + (10*b^2*sin(c + d*x))/(21*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^6*(b*sec(c + d*x))^(3/2), x, 5, (14*b^2*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b^5*sin(c + d*x))/(9*d*(b*sec(c + d*x))^(7/2)) + (14*b^3*sin(c + d*x))/(45*d*(b*sec(c + d*x))^(3/2))]


    @test_int [sec(c + d*x)^2*(b*sec(c + d*x))^(5/2), x, 5, (10*b^2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*d) + (10*b*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(21*d) + (2*(b*sec(c + d*x))^(7/2)*sin(c + d*x))/(7*b*d)]
    @test_int [sec(c + d*x)^1*(b*sec(c + d*x))^(5/2), x, 5, -((6*b^3*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (6*b^2*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*d) + (2*(b*sec(c + d*x))^(5/2)*sin(c + d*x))/(5*d)]
    @test_int [sec(c + d*x)^0*(b*sec(c + d*x))^(5/2), x, 3, (2*b^2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*b*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(3*d)]
    @test_int [cos(c + d*x)^1*(b*sec(c + d*x))^(5/2), x, 4, -((2*b^3*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*b^2*sqrt(b*sec(c + d*x))*sin(c + d*x))/d]
    @test_int [cos(c + d*x)^2*(b*sec(c + d*x))^(5/2), x, 3, (2*b^2*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2)*sqrt(b*sec(c + d*x)))/d]
    @test_int [cos(c + d*x)^3*(b*sec(c + d*x))^(5/2), x, 3, (2*b^3*Elliptic.E((c + d*x)/2, 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^4*(b*sec(c + d*x))^(5/2), x, 4, (2*b^2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*b^3*sin(c + d*x))/(3*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^5*(b*sec(c + d*x))^(5/2), x, 4, (6*b^3*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b^4*sin(c + d*x))/(5*d*(b*sec(c + d*x))^(3/2))]
    @test_int [cos(c + d*x)^6*(b*sec(c + d*x))^(5/2), x, 5, (10*b^2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*d) + (2*b^5*sin(c + d*x))/(7*d*(b*sec(c + d*x))^(5/2)) + (10*b^3*sin(c + d*x))/(21*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^7*(b*sec(c + d*x))^(5/2), x, 5, (14*b^3*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b^6*sin(c + d*x))/(9*d*(b*sec(c + d*x))^(7/2)) + (14*b^4*sin(c + d*x))/(45*d*(b*sec(c + d*x))^(3/2))]


    @test_int [(b*sec(c + d*x))^(7/2), x, 4, -((6*b^4*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (6*b^3*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*d) + (2*b*(b*sec(c + d*x))^(5/2)*sin(c + d*x))/(5*d)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sec(c + d*x)^5/sqrt(b*sec(c + d*x)), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b*d) + (10*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(21*b^2*d) + (2*(b*sec(c + d*x))^(7/2)*sin(c + d*x))/(7*b^4*d)]
    @test_int [sec(c + d*x)^4/sqrt(b*sec(c + d*x)), x, 5, -((6*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (6*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*b*d) + (2*(b*sec(c + d*x))^(5/2)*sin(c + d*x))/(5*b^3*d)]
    @test_int [sec(c + d*x)^3/sqrt(b*sec(c + d*x)), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b*d) + (2*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(3*b^2*d)]
    @test_int [sec(c + d*x)^2/sqrt(b*sec(c + d*x)), x, 4, -((2*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*sqrt(b*sec(c + d*x))*sin(c + d*x))/(b*d)]
    @test_int [sec(c + d*x)^1/sqrt(b*sec(c + d*x)), x, 3, (2*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2)*sqrt(b*sec(c + d*x)))/(b*d)]
    @test_int [sec(c + d*x)^0/sqrt(b*sec(c + d*x)), x, 2, (2*Elliptic.E((c + d*x)/2, 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^1/sqrt(b*sec(c + d*x)), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b*d) + (2*sin(c + d*x))/(3*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^2/sqrt(b*sec(c + d*x)), x, 4, (6*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b*sin(c + d*x))/(5*d*(b*sec(c + d*x))^(3/2))]
    @test_int [cos(c + d*x)^3/sqrt(b*sec(c + d*x)), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b*d) + (2*b^2*sin(c + d*x))/(7*d*(b*sec(c + d*x))^(5/2)) + (10*sin(c + d*x))/(21*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^4/sqrt(b*sec(c + d*x)), x, 5, (14*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b^3*sin(c + d*x))/(9*d*(b*sec(c + d*x))^(7/2)) + (14*b*sin(c + d*x))/(45*d*(b*sec(c + d*x))^(3/2))]


    @test_int [sec(c + d*x)^6/(b*sec(c + d*x))^(3/2), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b^2*d) + (10*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(21*b^3*d) + (2*(b*sec(c + d*x))^(7/2)*sin(c + d*x))/(7*b^5*d)]
    @test_int [sec(c + d*x)^5/(b*sec(c + d*x))^(3/2), x, 5, -((6*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (6*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*b^2*d) + (2*(b*sec(c + d*x))^(5/2)*sin(c + d*x))/(5*b^4*d)]
    @test_int [sec(c + d*x)^4/(b*sec(c + d*x))^(3/2), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b^2*d) + (2*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(3*b^3*d)]
    @test_int [sec(c + d*x)^3/(b*sec(c + d*x))^(3/2), x, 4, -((2*Elliptic.E((1/2)*(c + d*x), 2))/(b*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*sqrt(b*sec(c + d*x))*sin(c + d*x))/(b^2*d)]
    @test_int [sec(c + d*x)^2/(b*sec(c + d*x))^(3/2), x, 3, (2*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2)*sqrt(b*sec(c + d*x)))/(b^2*d)]
    @test_int [sec(c + d*x)^1/(b*sec(c + d*x))^(3/2), x, 3, (2*Elliptic.E((c + d*x)/2, 2))/(b*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^0/(b*sec(c + d*x))^(3/2), x, 3, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b^2*d) + (2*sin(c + d*x))/(3*b*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^1/(b*sec(c + d*x))^(3/2), x, 4, (6*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*sin(c + d*x))/(5*d*(b*sec(c + d*x))^(3/2))]
    @test_int [cos(c + d*x)^2/(b*sec(c + d*x))^(3/2), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b^2*d) + (2*b*sin(c + d*x))/(7*d*(b*sec(c + d*x))^(5/2)) + (10*sin(c + d*x))/(21*b*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^3/(b*sec(c + d*x))^(3/2), x, 5, (14*Elliptic.E((1/2)*(c + d*x), 2))/(15*b*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b^2*sin(c + d*x))/(9*d*(b*sec(c + d*x))^(7/2)) + (14*sin(c + d*x))/(45*d*(b*sec(c + d*x))^(3/2))]


    @test_int [sec(c + d*x)^7/(b*sec(c + d*x))^(5/2), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b^3*d) + (10*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(21*b^4*d) + (2*(b*sec(c + d*x))^(7/2)*sin(c + d*x))/(7*b^6*d)]
    @test_int [sec(c + d*x)^6/(b*sec(c + d*x))^(5/2), x, 5, -((6*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (6*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*b^3*d) + (2*(b*sec(c + d*x))^(5/2)*sin(c + d*x))/(5*b^5*d)]
    @test_int [sec(c + d*x)^5/(b*sec(c + d*x))^(5/2), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b^3*d) + (2*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(3*b^4*d)]
    @test_int [sec(c + d*x)^4/(b*sec(c + d*x))^(5/2), x, 4, -((2*Elliptic.E((1/2)*(c + d*x), 2))/(b^2*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*sqrt(b*sec(c + d*x))*sin(c + d*x))/(b^3*d)]
    @test_int [sec(c + d*x)^3/(b*sec(c + d*x))^(5/2), x, 3, (2*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2)*sqrt(b*sec(c + d*x)))/(b^3*d)]
    @test_int [sec(c + d*x)^2/(b*sec(c + d*x))^(5/2), x, 3, (2*Elliptic.E((c + d*x)/2, 2))/(b^2*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^1/(b*sec(c + d*x))^(5/2), x, 4, (2*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b^3*d) + (2*sin(c + d*x))/(3*b^2*d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^0/(b*sec(c + d*x))^(5/2), x, 3, (6*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*sin(c + d*x))/(5*b*d*(b*sec(c + d*x))^(3/2))]
    @test_int [cos(c + d*x)^1/(b*sec(c + d*x))^(5/2), x, 5, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b^3*d) + (2*sin(c + d*x))/(7*d*(b*sec(c + d*x))^(5/2)) + (10*sin(c + d*x))/(21*b^2*d*sqrt(b*sec(c + d*x)))]
    @test_int [cos(c + d*x)^2/(b*sec(c + d*x))^(5/2), x, 5, (14*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^2*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b*sin(c + d*x))/(9*d*(b*sec(c + d*x))^(7/2)) + (14*sin(c + d*x))/(45*b*d*(b*sec(c + d*x))^(3/2))]


    @test_int [(b*sec(c + d*x))^(-7/2), x, 4, (10*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b^4*d) + (2*sin(c + d*x))/(7*b*d*(b*sec(c + d*x))^(5/2)) + (10*sin(c + d*x))/(21*b^3*d*sqrt(b*sec(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(c+d*x))^(m/2)*(b*sec(c+d*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sqrt(b*sec(c + d*x))*sec(c + d*x)^(9/2), x, 4, (3*atanh(sin(c + d*x))*sqrt(b*sec(c + d*x)))/(8*d*sqrt(sec(c + d*x))) + (3*sec(c + d*x)^(3/2)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(8*d) + (sec(c + d*x)^(7/2)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(4*d)]
    @test_int [sqrt(b*sec(c + d*x))*sec(c + d*x)^(7/2), x, 3, (sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x))*sin(c + d*x))/d + (sec(c + d*x)^(5/2)*sqrt(b*sec(c + d*x))*sin(c + d*x)^3)/(3*d)]
    @test_int [sqrt(b*sec(c + d*x))*sec(c + d*x)^(5/2), x, 3, (atanh(sin(c + d*x))*sqrt(b*sec(c + d*x)))/(2*d*sqrt(sec(c + d*x))) + (sec(c + d*x)^(3/2)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [sqrt(b*sec(c + d*x))*sec(c + d*x)^(3/2), x, 3, (sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x))*sin(c + d*x))/d]
    @test_int [sqrt(b*sec(c + d*x))*sec(c + d*x)^(1/2), x, 2, (atanh(sin(c + d*x))*sqrt(b*sec(c + d*x)))/(d*sqrt(sec(c + d*x)))]
    @test_int [sqrt(b*sec(c + d*x))/sec(c + d*x)^(1/2), x, 2, (x*sqrt(b*sec(c + d*x)))/sqrt(sec(c + d*x))]
    @test_int [sqrt(b*sec(c + d*x))/sec(c + d*x)^(3/2), x, 2, (sqrt(b*sec(c + d*x))*sin(c + d*x))/(d*sqrt(sec(c + d*x)))]
    @test_int [sqrt(b*sec(c + d*x))/sec(c + d*x)^(5/2), x, 3, (x*sqrt(b*sec(c + d*x)))/(2*sqrt(sec(c + d*x))) + (sqrt(b*sec(c + d*x))*sin(c + d*x))/(2*d*sec(c + d*x)^(3/2))]
    @test_int [sqrt(b*sec(c + d*x))/sec(c + d*x)^(7/2), x, 3, (sqrt(b*sec(c + d*x))*sin(c + d*x))/(d*sqrt(sec(c + d*x))) - (sqrt(b*sec(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(sec(c + d*x)))]
    @test_int [sqrt(b*sec(c + d*x))/sec(c + d*x)^(9/2), x, 4, (3*x*sqrt(b*sec(c + d*x)))/(8*sqrt(sec(c + d*x))) + (sqrt(b*sec(c + d*x))*sin(c + d*x))/(4*d*sec(c + d*x)^(7/2)) + (3*sqrt(b*sec(c + d*x))*sin(c + d*x))/(8*d*sec(c + d*x)^(3/2))]


    @test_int [(b*sec(c + d*x))^(3/2)*sec(c + d*x)^(7/2), x, 4, (3*b*atanh(sin(c + d*x))*sqrt(b*sec(c + d*x)))/(8*d*sqrt(sec(c + d*x))) + (3*b*sec(c + d*x)^(3/2)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(8*d) + (b*sec(c + d*x)^(7/2)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(4*d)]
    @test_int [(b*sec(c + d*x))^(3/2)*sec(c + d*x)^(5/2), x, 3, (b*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x))*sin(c + d*x))/d + (b*sec(c + d*x)^(5/2)*sqrt(b*sec(c + d*x))*sin(c + d*x)^3)/(3*d)]
    @test_int [(b*sec(c + d*x))^(3/2)*sec(c + d*x)^(3/2), x, 3, (b*atanh(sin(c + d*x))*sqrt(b*sec(c + d*x)))/(2*d*sqrt(sec(c + d*x))) + (b*sec(c + d*x)^(3/2)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [(b*sec(c + d*x))^(3/2)*sec(c + d*x)^(1/2), x, 3, (b*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x))*sin(c + d*x))/d]
    @test_int [(b*sec(c + d*x))^(3/2)/sec(c + d*x)^(1/2), x, 2, (b*atanh(sin(c + d*x))*sqrt(b*sec(c + d*x)))/(d*sqrt(sec(c + d*x)))]
    @test_int [(b*sec(c + d*x))^(3/2)/sec(c + d*x)^(3/2), x, 2, (b*x*sqrt(b*sec(c + d*x)))/sqrt(sec(c + d*x))]
    @test_int [(b*sec(c + d*x))^(3/2)/sec(c + d*x)^(5/2), x, 2, (b*sqrt(b*sec(c + d*x))*sin(c + d*x))/(d*sqrt(sec(c + d*x)))]
    @test_int [(b*sec(c + d*x))^(3/2)/sec(c + d*x)^(7/2), x, 3, (b*x*sqrt(b*sec(c + d*x)))/(2*sqrt(sec(c + d*x))) + (b*sqrt(b*sec(c + d*x))*sin(c + d*x))/(2*d*sec(c + d*x)^(3/2))]
    @test_int [(b*sec(c + d*x))^(3/2)/sec(c + d*x)^(9/2), x, 3, (b*sqrt(b*sec(c + d*x))*sin(c + d*x))/(d*sqrt(sec(c + d*x))) - (b*sqrt(b*sec(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(sec(c + d*x)))]
    @test_int [(b*sec(c + d*x))^(3/2)/sec(c + d*x)^(11/2), x, 4, (3*b*x*sqrt(b*sec(c + d*x)))/(8*sqrt(sec(c + d*x))) + (b*sqrt(b*sec(c + d*x))*sin(c + d*x))/(4*d*sec(c + d*x)^(7/2)) + (3*b*sqrt(b*sec(c + d*x))*sin(c + d*x))/(8*d*sec(c + d*x)^(3/2))]


    @test_int [(b*sec(c + d*x))^(5/2)*sec(c + d*x)^(7/2), x, 3, (b^2*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x))*sin(c + d*x))/d + (2*b^2*sec(c + d*x)^(5/2)*sqrt(b*sec(c + d*x))*sin(c + d*x)^3)/(3*d) + (b^2*sec(c + d*x)^(9/2)*sqrt(b*sec(c + d*x))*sin(c + d*x)^5)/(5*d)]
    @test_int [(b*sec(c + d*x))^(5/2)*sec(c + d*x)^(3/2), x, 3, (b^2*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x))*sin(c + d*x))/d + (b^2*sec(c + d*x)^(5/2)*sqrt(b*sec(c + d*x))*sin(c + d*x)^3)/(3*d)]
    @test_int [(b*sec(c + d*x))^(5/2)*sec(c + d*x)^(1/2), x, 3, (b^2*atanh(sin(c + d*x))*sqrt(b*sec(c + d*x)))/(2*d*sqrt(sec(c + d*x))) + (b^2*sec(c + d*x)^(3/2)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [(b*sec(c + d*x))^(5/2)/sec(c + d*x)^(1/2), x, 3, (b^2*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x))*sin(c + d*x))/d]
    @test_int [(b*sec(c + d*x))^(5/2)/sec(c + d*x)^(3/2), x, 2, (b^2*atanh(sin(c + d*x))*sqrt(b*sec(c + d*x)))/(d*sqrt(sec(c + d*x)))]
    @test_int [(b*sec(c + d*x))^(5/2)/sec(c + d*x)^(5/2), x, 2, (b^2*x*sqrt(b*sec(c + d*x)))/sqrt(sec(c + d*x))]
    @test_int [(b*sec(c + d*x))^(5/2)/sec(c + d*x)^(7/2), x, 2, (b^2*sqrt(b*sec(c + d*x))*sin(c + d*x))/(d*sqrt(sec(c + d*x)))]
    @test_int [(b*sec(c + d*x))^(5/2)/sec(c + d*x)^(9/2), x, 3, (b^2*x*sqrt(b*sec(c + d*x)))/(2*sqrt(sec(c + d*x))) + (b^2*sqrt(b*sec(c + d*x))*sin(c + d*x))/(2*d*sec(c + d*x)^(3/2))]
    @test_int [(b*sec(c + d*x))^(5/2)/sec(c + d*x)^(11/2), x, 3, (b^2*sqrt(b*sec(c + d*x))*sin(c + d*x))/(d*sqrt(sec(c + d*x))) - (b^2*sqrt(b*sec(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(sec(c + d*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sec(c + d*x)^(7/2)/sqrt(b*sec(c + d*x)), x, 3, (atanh(sin(c + d*x))*sqrt(sec(c + d*x)))/(2*d*sqrt(b*sec(c + d*x))) + (sec(c + d*x)^(5/2)*sin(c + d*x))/(2*d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(5/2)/sqrt(b*sec(c + d*x)), x, 3, (sec(c + d*x)^(3/2)*sin(c + d*x))/(d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(3/2)/sqrt(b*sec(c + d*x)), x, 2, (atanh(sin(c + d*x))*sqrt(sec(c + d*x)))/(d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(1/2)/sqrt(b*sec(c + d*x)), x, 2, (x*sqrt(sec(c + d*x)))/sqrt(b*sec(c + d*x))]
    @test_int [1/(sec(c + d*x)^(1/2)*sqrt(b*sec(c + d*x))), x, 2, (sqrt(sec(c + d*x))*sin(c + d*x))/(d*sqrt(b*sec(c + d*x)))]
    @test_int [1/(sec(c + d*x)^(3/2)*sqrt(b*sec(c + d*x))), x, 3, (x*sqrt(sec(c + d*x)))/(2*sqrt(b*sec(c + d*x))) + sin(c + d*x)/(2*d*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x)))]
    @test_int [1/(sec(c + d*x)^(5/2)*sqrt(b*sec(c + d*x))), x, 3, (sqrt(sec(c + d*x))*sin(c + d*x))/(d*sqrt(b*sec(c + d*x))) - (sqrt(sec(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(b*sec(c + d*x)))]


    @test_int [sec(c + d*x)^(9/2)/(b*sec(c + d*x))^(3/2), x, 3, (atanh(sin(c + d*x))*sqrt(sec(c + d*x)))/(2*b*d*sqrt(b*sec(c + d*x))) + (sec(c + d*x)^(5/2)*sin(c + d*x))/(2*b*d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(7/2)/(b*sec(c + d*x))^(3/2), x, 3, (sec(c + d*x)^(3/2)*sin(c + d*x))/(b*d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(5/2)/(b*sec(c + d*x))^(3/2), x, 2, (atanh(sin(c + d*x))*sqrt(sec(c + d*x)))/(b*d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(3/2)/(b*sec(c + d*x))^(3/2), x, 2, (x*sqrt(sec(c + d*x)))/(b*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(1/2)/(b*sec(c + d*x))^(3/2), x, 2, (sqrt(sec(c + d*x))*sin(c + d*x))/(b*d*sqrt(b*sec(c + d*x)))]
    @test_int [1/(sec(c + d*x)^(1/2)*(b*sec(c + d*x))^(3/2)), x, 3, (x*sqrt(sec(c + d*x)))/(2*b*sqrt(b*sec(c + d*x))) + sin(c + d*x)/(2*b*d*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x)))]
    @test_int [1/(sec(c + d*x)^(3/2)*(b*sec(c + d*x))^(3/2)), x, 3, (sqrt(sec(c + d*x))*sin(c + d*x))/(b*d*sqrt(b*sec(c + d*x))) - (sqrt(sec(c + d*x))*sin(c + d*x)^3)/(3*b*d*sqrt(b*sec(c + d*x)))]
    @test_int [1/(sec(c + d*x)^(5/2)*(b*sec(c + d*x))^(3/2)), x, 4, (3*x*sqrt(sec(c + d*x)))/(8*b*sqrt(b*sec(c + d*x))) + sin(c + d*x)/(4*b*d*sec(c + d*x)^(5/2)*sqrt(b*sec(c + d*x))) + (3*sin(c + d*x))/(8*b*d*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x)))]


    @test_int [sec(c + d*x)^(11/2)/(b*sec(c + d*x))^(5/2), x, 3, (atanh(sin(c + d*x))*sqrt(sec(c + d*x)))/(2*b^2*d*sqrt(b*sec(c + d*x))) + (sec(c + d*x)^(5/2)*sin(c + d*x))/(2*b^2*d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(9/2)/(b*sec(c + d*x))^(5/2), x, 3, (sec(c + d*x)^(3/2)*sin(c + d*x))/(b^2*d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(7/2)/(b*sec(c + d*x))^(5/2), x, 2, (atanh(sin(c + d*x))*sqrt(sec(c + d*x)))/(b^2*d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(5/2)/(b*sec(c + d*x))^(5/2), x, 2, (x*sqrt(sec(c + d*x)))/(b^2*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(3/2)/(b*sec(c + d*x))^(5/2), x, 2, (sqrt(sec(c + d*x))*sin(c + d*x))/(b^2*d*sqrt(b*sec(c + d*x)))]
    @test_int [sec(c + d*x)^(1/2)/(b*sec(c + d*x))^(5/2), x, 3, (x*sqrt(sec(c + d*x)))/(2*b^2*sqrt(b*sec(c + d*x))) + sin(c + d*x)/(2*b^2*d*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x)))]
    @test_int [1/(sec(c + d*x)^(1/2)*(b*sec(c + d*x))^(5/2)), x, 3, (sqrt(sec(c + d*x))*sin(c + d*x))/(b^2*d*sqrt(b*sec(c + d*x))) - (sqrt(sec(c + d*x))*sin(c + d*x)^3)/(3*b^2*d*sqrt(b*sec(c + d*x)))]
    @test_int [1/(sec(c + d*x)^(3/2)*(b*sec(c + d*x))^(5/2)), x, 4, (3*x*sqrt(sec(c + d*x)))/(8*b^2*sqrt(b*sec(c + d*x))) + sin(c + d*x)/(4*b^2*d*sec(c + d*x)^(5/2)*sqrt(b*sec(c + d*x))) + (3*sin(c + d*x))/(8*b^2*d*sqrt(sec(c + d*x))*sqrt(b*sec(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(c+d*x)^m*(b*sec(c+d*x))^(n/3)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sec(c + d*x)^2*(b*sec(c + d*x))^(1/3), x, 3, (3*HypergeometricFunctions._₂F₁(-(2/3), 1/2, 1/3, cos(c + d*x)^2)*(b*sec(c + d*x))^(4/3)*sin(c + d*x))/(4*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)*(b*sec(c + d*x))^(1/3), x, 3, (3*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*(b*sec(c + d*x))^(1/3)*sin(c + d*x))/(d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*sec(c + d*x))^(1/3), x, 2, -((3*b*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(2*d*(b*sec(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)*(b*sec(c + d*x))^(1/3), x, 3, -((3*b^2*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*d*(b*sec(c + d*x))^(5/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^2*(b*sec(c + d*x))^(1/3), x, 3, -((3*b^3*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(8*d*(b*sec(c + d*x))^(8/3)*sqrt(sin(c + d*x)^2)))]


    @test_int [sec(c + d*x)^2*(b*sec(c + d*x))^(4/3), x, 3, (3*HypergeometricFunctions._₂F₁(-(7/6), 1/2, -(1/6), cos(c + d*x)^2)*(b*sec(c + d*x))^(7/3)*sin(c + d*x))/(7*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)*(b*sec(c + d*x))^(4/3), x, 3, (3*HypergeometricFunctions._₂F₁(-(2/3), 1/2, 1/3, cos(c + d*x)^2)*(b*sec(c + d*x))^(4/3)*sin(c + d*x))/(4*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*sec(c + d*x))^(4/3), x, 2, (3*b*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*(b*sec(c + d*x))^(1/3)*sin(c + d*x))/(d*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)*(b*sec(c + d*x))^(4/3), x, 3, -((3*b^2*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(2*d*(b*sec(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^2*(b*sec(c + d*x))^(4/3), x, 3, -((3*b^3*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*d*(b*sec(c + d*x))^(5/3)*sqrt(sin(c + d*x)^2)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sec(c + d*x)^2/(b*sec(c + d*x))^(1/3), x, 3, (3*HypergeometricFunctions._₂F₁(-(1/3), 1/2, 2/3, cos(c + d*x)^2)*(b*sec(c + d*x))^(2/3)*sin(c + d*x))/(2*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)/(b*sec(c + d*x))^(1/3), x, 3, -((3*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(d*(b*sec(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*sec(c + d*x))^(-1/3), x, 2, -((3*b*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*(b*sec(c + d*x))^(4/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)/(b*sec(c + d*x))^(1/3), x, 3, -((3*b^2*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(7*d*(b*sec(c + d*x))^(7/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^2/(b*sec(c + d*x))^(1/3), x, 3, -((3*b^3*HypergeometricFunctions._₂F₁(1/2, 5/3, 8/3, cos(c + d*x)^2)*sin(c + d*x))/(10*d*(b*sec(c + d*x))^(10/3)*sqrt(sin(c + d*x)^2)))]


    @test_int [sec(c + d*x)^2/(b*sec(c + d*x))^(4/3), x, 3, -((3*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(b*sec(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [sec(c + d*x)/(b*sec(c + d*x))^(4/3), x, 3, -((3*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*(b*sec(c + d*x))^(4/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*sec(c + d*x))^(-4/3), x, 2, -((3*b*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(7*d*(b*sec(c + d*x))^(7/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)/(b*sec(c + d*x))^(4/3), x, 3, -((3*b^2*HypergeometricFunctions._₂F₁(1/2, 5/3, 8/3, cos(c + d*x)^2)*sin(c + d*x))/(10*d*(b*sec(c + d*x))^(10/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^2/(b*sec(c + d*x))^(4/3), x, 3, -((3*b^3*HypergeometricFunctions._₂F₁(1/2, 13/6, 19/6, cos(c + d*x)^2)*sin(c + d*x))/(13*d*(b*sec(c + d*x))^(13/3)*sqrt(sin(c + d*x)^2)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(c+d*x)^m*(b*sec(c+d*x))^n*with*m*symbolic=#


    @test_int [sec(c + d*x)^m*(b*sec(c + d*x))^(4/3), x, 3, (3*b*HypergeometricFunctions._₂F₁(1/2, (1/6)*(-1 - 3*m), (1/6)*(5 - 3*m), cos(c + d*x)^2)*sec(c + d*x)^m*(b*sec(c + d*x))^(1/3)*sin(c + d*x))/(d*(1 + 3*m)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^m*(b*sec(c + d*x))^(2/3), x, 3, -((3*HypergeometricFunctions._₂F₁(1/2, (1/6)*(1 - 3*m), (1/6)*(7 - 3*m), cos(c + d*x)^2)*sec(c + d*x)^(-1 + m)*(b*sec(c + d*x))^(2/3)*sin(c + d*x))/(d*(1 - 3*m)*sqrt(sin(c + d*x)^2)))]
    @test_int [sec(c + d*x)^m*(b*sec(c + d*x))^(1/3), x, 3, -((3*HypergeometricFunctions._₂F₁(1/2, (1/6)*(2 - 3*m), (1/6)*(8 - 3*m), cos(c + d*x)^2)*sec(c + d*x)^(-1 + m)*(b*sec(c + d*x))^(1/3)*sin(c + d*x))/(d*(2 - 3*m)*sqrt(sin(c + d*x)^2)))]
    @test_int [sec(c + d*x)^m/(b*sec(c + d*x))^(1/3), x, 3, -((3*HypergeometricFunctions._₂F₁(1/2, (1/6)*(4 - 3*m), (1/6)*(10 - 3*m), cos(c + d*x)^2)*sec(c + d*x)^(-1 + m)*sin(c + d*x))/(d*(4 - 3*m)*(b*sec(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [sec(c + d*x)^m/(b*sec(c + d*x))^(2/3), x, 3, -((3*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 - 3*m), (1/6)*(11 - 3*m), cos(c + d*x)^2)*sec(c + d*x)^(-1 + m)*sin(c + d*x))/(d*(5 - 3*m)*(b*sec(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [sec(c + d*x)^m/(b*sec(c + d*x))^(4/3), x, 3, -((3*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 - 3*m), (1/6)*(13 - 3*m), cos(c + d*x)^2)*sec(c + d*x)^(-2 + m)*sin(c + d*x))/(b*d*(7 - 3*m)*(b*sec(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(c+d*x)^m*(b*sec(c+d*x))^n*with*n*symbolic=#


    @test_int [sec(c + d*x)^m*(b*sec(c + d*x))^n, x, 3, -((HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 - m - n), (1/2)*(3 - m - n), cos(c + d*x)^2)*sec(c + d*x)^(-1 + m)*(b*sec(c + d*x))^n*sin(c + d*x))/(d*(1 - m - n)*sqrt(sin(c + d*x)^2)))]


    @test_int [sec(c + d*x)^2*(b*sec(c + d*x))^n, x, 3, (HypergeometricFunctions._₂F₁(1/2, (1/2)*(-1 - n), (1 - n)/2, cos(c + d*x)^2)*(b*sec(c + d*x))^(1 + n)*sin(c + d*x))/(b*d*(1 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^1*(b*sec(c + d*x))^n, x, 3, (HypergeometricFunctions._₂F₁(1/2, -(n/2), (2 - n)/2, cos(c + d*x)^2)*(b*sec(c + d*x))^n*sin(c + d*x))/(d*n*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^0*(b*sec(c + d*x))^n, x, 2, -((b*HypergeometricFunctions._₂F₁(1/2, (1 - n)/2, (3 - n)/2, cos(c + d*x)^2)*(b*sec(c + d*x))^(-1 + n)*sin(c + d*x))/(d*(1 - n)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^1*(b*sec(c + d*x))^n, x, 3, -((b^2*HypergeometricFunctions._₂F₁(1/2, (2 - n)/2, (4 - n)/2, cos(c + d*x)^2)*(b*sec(c + d*x))^(-2 + n)*sin(c + d*x))/(d*(2 - n)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^2*(b*sec(c + d*x))^n, x, 3, -((b^3*HypergeometricFunctions._₂F₁(1/2, (3 - n)/2, (5 - n)/2, cos(c + d*x)^2)*(b*sec(c + d*x))^(-3 + n)*sin(c + d*x))/(d*(3 - n)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^3*(b*sec(c + d*x))^n, x, 3, -((b^4*HypergeometricFunctions._₂F₁(1/2, (4 - n)/2, (6 - n)/2, cos(c + d*x)^2)*(b*sec(c + d*x))^(-4 + n)*sin(c + d*x))/(d*(4 - n)*sqrt(sin(c + d*x)^2)))]


    @test_int [sec(c + d*x)^(5/2)*(b*sec(c + d*x))^n, x, 3, (2*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 - 2*n), (1/4)*(1 - 2*n), cos(c + d*x)^2)*sec(c + d*x)^(3/2)*(b*sec(c + d*x))^n*sin(c + d*x))/(d*(3 + 2*n)*sqrt(sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^(3/2)*(b*sec(c + d*x))^n, x, 3, (2*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-1 - 2*n), (1/4)*(3 - 2*n), cos(c + d*x)^2)*sqrt(sec(c + d*x))*(b*sec(c + d*x))^n*sin(c + d*x))/(d*(1 + 2*n)*sqrt(sin(c + d*x)^2))]
    @test_int [sqrt(sec(c + d*x))*(b*sec(c + d*x))^n, x, 3, -((2*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 - 2*n), (1/4)*(5 - 2*n), cos(c + d*x)^2)*(b*sec(c + d*x))^n*sin(c + d*x))/(d*(1 - 2*n)*sqrt(sec(c + d*x))*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*sec(c + d*x))^n/sqrt(sec(c + d*x)), x, 3, -((2*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 - 2*n), (1/4)*(7 - 2*n), cos(c + d*x)^2)*(b*sec(c + d*x))^n*sin(c + d*x))/(d*(3 - 2*n)*sec(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*sec(c + d*x))^n/sec(c + d*x)^(3/2), x, 3, -((2*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 - 2*n), (1/4)*(9 - 2*n), cos(c + d*x)^2)*(b*sec(c + d*x))^n*sin(c + d*x))/(d*(5 - 2*n)*sec(c + d*x)^(5/2)*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*sec(c + d*x))^n/sec(c + d*x)^(5/2), x, 3, -((2*HypergeometricFunctions._₂F₁(1/2, (1/4)*(7 - 2*n), (1/4)*(11 - 2*n), cos(c + d*x)^2)*(b*sec(c + d*x))^n*sin(c + d*x))/(d*(7 - 2*n)*sec(c + d*x)^(7/2)*sqrt(sin(c + d*x)^2)))]


    #= ::Section:: =#
    #=Integrands*of*the*form*(a*sec(c+d*x))^m*(b*csc(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^(m/2)*(b*csc(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sin(a + b*x)*(d*sec(a + b*x))^(7/2), x, 2, (2*d*(d*sec(a + b*x))^(5/2))/(5*b)]
    @test_int [sin(a + b*x)*(d*sec(a + b*x))^(5/2), x, 2, (2*d*(d*sec(a + b*x))^(3/2))/(3*b)]
    @test_int [sin(a + b*x)*(d*sec(a + b*x))^(3/2), x, 2, (2*d*sqrt(d*sec(a + b*x)))/b]
    @test_int [sin(a + b*x)*(d*sec(a + b*x))^(1/2), x, 2, -((2*d)/(b*sqrt(d*sec(a + b*x))))]
    @test_int [sin(a + b*x)/(d*sec(a + b*x))^(1/2), x, 2, -((2*d)/(3*b*(d*sec(a + b*x))^(3/2)))]


    @test_int [sin(a + b*x)^3*(d*sec(a + b*x))^(5/2), x, 3, 2*d^3/(b*sqrt((d*sec(a + b*x)))) + (2/3)*d*(d*sec(a + b*x))^(3/2)/b]
    @test_int [sin(a + b*x)^3*(d*sec(a + b*x))^(9/2), x, 3, (-(2/3))*d^3*(d*sec(a + b*x))^(3/2)/b + (2/7)*d*(d*sec(a + b*x))^(7/2)/b]


    #= ::Subsubsection:: =#
    #=m<0=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^(m/2)*(b*csc(e+f*x))^(n/2)=#


    #= ::Subsubsection:: =#
    #=n>0=#


    @test_int [(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(9/2), x, 5, -((4*c*d^3*(d*csc(a + b*x))^(3/2))/(7*b*sqrt(c*sec(a + b*x)))) - (2*c*d*(d*csc(a + b*x))^(7/2))/(7*b*sqrt(c*sec(a + b*x))) + (4*d^4*sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(7*b)]
    @test_int [(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(7/2), x, 2, -((8*c*d^3*sqrt(d*csc(a + b*x)))/(5*b*sqrt(c*sec(a + b*x)))) - (2*c*d*(d*csc(a + b*x))^(5/2))/(5*b*sqrt(c*sec(a + b*x)))]
    @test_int [(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(5/2), x, 4, -((2*c*d*(d*csc(a + b*x))^(3/2))/(3*b*sqrt(c*sec(a + b*x)))) + (2*d^2*sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(3*b)]
    @test_int [(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(3/2), x, 1, -((2*c*d*sqrt(d*csc(a + b*x)))/(b*sqrt(c*sec(a + b*x))))]
    @test_int [(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(1/2), x, 3, (sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/b]
    @test_int [(c*sec(a + b*x))^(1/2)/(d*csc(a + b*x))^(1/2), x, 12, -((atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(sqrt(2)*b*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))) + (atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(sqrt(2)*b*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) + (log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(2*sqrt(2)*b*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) - (log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(2*sqrt(2)*b*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))]
    @test_int [(c*sec(a + b*x))^(1/2)/(d*csc(a + b*x))^(3/2), x, 4, -(c/(b*d*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x)))) + (sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(2*b*d^2)]
    @test_int [(c*sec(a + b*x))^(1/2)/(d*csc(a + b*x))^(5/2), x, 13, -(c/(2*b*d*(d*csc(a + b*x))^(3/2)*sqrt(c*sec(a + b*x)))) - (3*atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(4*sqrt(2)*b*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) + (3*atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(4*sqrt(2)*b*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) + (3*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(8*sqrt(2)*b*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) - (3*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(8*sqrt(2)*b*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))]


    @test_int [(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(9/2), x, 3, (64*c*d^5*sqrt(c*sec(a + b*x)))/(21*b*sqrt(d*csc(a + b*x))) - (16*c*d^3*(d*csc(a + b*x))^(3/2)*sqrt(c*sec(a + b*x)))/(21*b) - (2*c*d*(d*csc(a + b*x))^(7/2)*sqrt(c*sec(a + b*x)))/(7*b)]
    @test_int [(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(7/2), x, 6, (24*c*d^5*sqrt(c*sec(a + b*x)))/(5*b*(d*csc(a + b*x))^(3/2)) - (12*c*d^3*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x)))/(5*b) - (2*c*d*(d*csc(a + b*x))^(5/2)*sqrt(c*sec(a + b*x)))/(5*b) - (24*c^2*d^4*Elliptic.E(a - pi/4 + b*x, 2))/(5*b*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(5/2), x, 2, (8*c*d^3*sqrt(c*sec(a + b*x)))/(3*b*sqrt(d*csc(a + b*x))) - (2*c*d*(d*csc(a + b*x))^(3/2)*sqrt(c*sec(a + b*x)))/(3*b)]
    @test_int [(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(3/2), x, 5, (4*c*d^3*sqrt(c*sec(a + b*x)))/(b*(d*csc(a + b*x))^(3/2)) - (2*c*d*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x)))/b - (4*c^2*d^2*Elliptic.E(a - pi/4 + b*x, 2))/(b*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(1/2), x, 1, (2*c*d*sqrt(c*sec(a + b*x)))/(b*sqrt(d*csc(a + b*x)))]
    @test_int [(c*sec(a + b*x))^(3/2)/(d*csc(a + b*x))^(1/2), x, 4, (2*c*d*sqrt(c*sec(a + b*x)))/(b*(d*csc(a + b*x))^(3/2)) - (2*c^2*Elliptic.E(a - pi/4 + b*x, 2))/(b*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sec(a + b*x))^(3/2)/(d*csc(a + b*x))^(3/2), x, 13, (2*c*sqrt(c*sec(a + b*x)))/(b*d*sqrt(d*csc(a + b*x))) + (c^2*atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(sqrt(2)*b*d^2*sqrt(c*sec(a + b*x))) - (c^2*atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(sqrt(2)*b*d^2*sqrt(c*sec(a + b*x))) + (c^2*sqrt(d*csc(a + b*x))*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(2*sqrt(2)*b*d^2*sqrt(c*sec(a + b*x))) - (c^2*sqrt(d*csc(a + b*x))*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(2*sqrt(2)*b*d^2*sqrt(c*sec(a + b*x)))]
    @test_int [(c*sec(a + b*x))^(3/2)/(d*csc(a + b*x))^(5/2), x, 4, (2*c*sqrt(c*sec(a + b*x)))/(b*d*(d*csc(a + b*x))^(3/2)) - (3*c^2*Elliptic.E(a - pi/4 + b*x, 2))/(b*d^2*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]


    @test_int [(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(9/2), x, 6, (40*c*d^5*(c*sec(a + b*x))^(3/2))/(21*b*sqrt(d*csc(a + b*x))) - (20*c*d^3*(d*csc(a + b*x))^(3/2)*(c*sec(a + b*x))^(3/2))/(21*b) - (2*c*d*(d*csc(a + b*x))^(7/2)*(c*sec(a + b*x))^(3/2))/(7*b) + (40*c^2*d^4*sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(21*b)]
    @test_int [(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(7/2), x, 3, -((64*c^3*d^3*sqrt(d*csc(a + b*x)))/(15*b*sqrt(c*sec(a + b*x)))) + (16*c*d^3*sqrt(d*csc(a + b*x))*(c*sec(a + b*x))^(3/2))/(15*b) - (2*c*d*(d*csc(a + b*x))^(5/2)*(c*sec(a + b*x))^(3/2))/(5*b)]
    @test_int [(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(5/2), x, 5, (4*c*d^3*(c*sec(a + b*x))^(3/2))/(3*b*sqrt(d*csc(a + b*x))) - (2*c*d*(d*csc(a + b*x))^(3/2)*(c*sec(a + b*x))^(3/2))/(3*b) + (4*c^2*d^2*sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(3*b)]
    @test_int [(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(3/2), x, 2, -((8*c^3*d*sqrt(d*csc(a + b*x)))/(3*b*sqrt(c*sec(a + b*x)))) + (2*c*d*sqrt(d*csc(a + b*x))*(c*sec(a + b*x))^(3/2))/(3*b)]
    @test_int [(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(1/2), x, 4, (2*c*d*(c*sec(a + b*x))^(3/2))/(3*b*sqrt(d*csc(a + b*x))) + (2*c^2*sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(3*b)]
    @test_int [(c*sec(a + b*x))^(5/2)/(d*csc(a + b*x))^(1/2), x, 1, (2*c*d*(c*sec(a + b*x))^(3/2))/(3*b*(d*csc(a + b*x))^(3/2))]
    @test_int [(c*sec(a + b*x))^(5/2)/(d*csc(a + b*x))^(3/2), x, 4, (2*c*(c*sec(a + b*x))^(3/2))/(3*b*d*sqrt(d*csc(a + b*x))) - (c^2*sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(3*b*d^2)]
    @test_int [(c*sec(a + b*x))^(5/2)/(d*csc(a + b*x))^(5/2), x, 13, (2*c*(c*sec(a + b*x))^(3/2))/(3*b*d*(d*csc(a + b*x))^(3/2)) + (c^2*atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(sqrt(2)*b*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) - (c^2*atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(sqrt(2)*b*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) - (c^2*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(2*sqrt(2)*b*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) + (c^2*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(2*sqrt(2)*b*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [1/(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(9/2), x, 2, -((8*c*d^3*(d*csc(a + b*x))^(3/2))/(21*b*(c*sec(a + b*x))^(3/2))) - (2*c*d*(d*csc(a + b*x))^(7/2))/(7*b*(c*sec(a + b*x))^(3/2))]
    @test_int [1/(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(7/2), x, 5, -((4*c*d^3*sqrt(d*csc(a + b*x)))/(5*b*(c*sec(a + b*x))^(3/2))) - (2*c*d*(d*csc(a + b*x))^(5/2))/(5*b*(c*sec(a + b*x))^(3/2)) - (4*d^4*Elliptic.E(a - pi/4 + b*x, 2))/(5*b*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [1/(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(5/2), x, 1, -((2*c*d*(d*csc(a + b*x))^(3/2))/(3*b*(c*sec(a + b*x))^(3/2)))]
    @test_int [1/(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(3/2), x, 4, -((2*c*d*sqrt(d*csc(a + b*x)))/(b*(c*sec(a + b*x))^(3/2))) - (2*d^2*Elliptic.E(a - pi/4 + b*x, 2))/(b*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [1/(c*sec(a + b*x))^(1/2)*(d*csc(a + b*x))^(1/2), x, 12, -((atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(sqrt(2)*b*sqrt(c*sec(a + b*x)))) + (atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(sqrt(2)*b*sqrt(c*sec(a + b*x))) - (sqrt(d*csc(a + b*x))*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(2*sqrt(2)*b*sqrt(c*sec(a + b*x))) + (sqrt(d*csc(a + b*x))*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(2*sqrt(2)*b*sqrt(c*sec(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(1/2)/(d*csc(a + b*x))^(1/2), x, 3, Elliptic.E(a - pi/4 + b*x, 2)/(b*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [1/(c*sec(a + b*x))^(1/2)/(d*csc(a + b*x))^(3/2), x, 13, -(c/(2*b*d*sqrt(d*csc(a + b*x))*(c*sec(a + b*x))^(3/2))) - (atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(4*sqrt(2)*b*d^2*sqrt(c*sec(a + b*x))) + (atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(4*sqrt(2)*b*d^2*sqrt(c*sec(a + b*x))) - (sqrt(d*csc(a + b*x))*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(8*sqrt(2)*b*d^2*sqrt(c*sec(a + b*x))) + (sqrt(d*csc(a + b*x))*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(8*sqrt(2)*b*d^2*sqrt(c*sec(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(1/2)/(d*csc(a + b*x))^(5/2), x, 4, -(c/(3*b*d*(d*csc(a + b*x))^(3/2)*(c*sec(a + b*x))^(3/2))) + Elliptic.E(a - pi/4 + b*x, 2)/(2*b*d^2*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]


    @test_int [1/(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(11/2), x, 3, (8*d^5*sqrt(d*csc(a + b*x)))/(45*b*c*sqrt(c*sec(a + b*x))) + (2*d^3*(d*csc(a + b*x))^(5/2))/(45*b*c*sqrt(c*sec(a + b*x))) - (2*d*(d*csc(a + b*x))^(9/2))/(9*b*c*sqrt(c*sec(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(9/2), x, 5, (2*d^3*(d*csc(a + b*x))^(3/2))/(21*b*c*sqrt(c*sec(a + b*x))) - (2*d*(d*csc(a + b*x))^(7/2))/(7*b*c*sqrt(c*sec(a + b*x))) - (2*d^4*sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(21*b*c^2)]
    @test_int [1/(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(7/2), x, 1, -((2*c*d*(d*csc(a + b*x))^(5/2))/(5*b*(c*sec(a + b*x))^(5/2)))]
    @test_int [1/(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(5/2), x, 4, -((2*d*(d*csc(a + b*x))^(3/2))/(3*b*c*sqrt(c*sec(a + b*x)))) - (d^2*sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(3*b*c^2)]
    @test_int [1/(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(3/2), x, 13, -((2*d*sqrt(d*csc(a + b*x)))/(b*c*sqrt(c*sec(a + b*x)))) + (d^2*atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(sqrt(2)*b*c^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) - (d^2*atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(sqrt(2)*b*c^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) - (d^2*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(2*sqrt(2)*b*c^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) + (d^2*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(2*sqrt(2)*b*c^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(3/2)*(d*csc(a + b*x))^(1/2), x, 4, d/(b*c*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))) + (sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(2*b*c^2)]
    @test_int [1/(c*sec(a + b*x))^(3/2)/(d*csc(a + b*x))^(1/2), x, 13, d/(2*b*c*(d*csc(a + b*x))^(3/2)*sqrt(c*sec(a + b*x))) - (atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(4*sqrt(2)*b*c^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) + (atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(4*sqrt(2)*b*c^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) + (log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(8*sqrt(2)*b*c^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) - (log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(8*sqrt(2)*b*c^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(3/2)/(d*csc(a + b*x))^(3/2), x, 5, -(c/(3*b*d*sqrt(d*csc(a + b*x))*(c*sec(a + b*x))^(5/2))) + 1/(6*b*c*d*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))) + (sqrt(d*csc(a + b*x))*Elliptic.F(a - pi/4 + b*x, 2)*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))/(12*b*c^2*d^2)]
    @test_int [1/(c*sec(a + b*x))^(3/2)/(d*csc(a + b*x))^(5/2), x, 14, -(c/(4*b*d*(d*csc(a + b*x))^(3/2)*(c*sec(a + b*x))^(5/2))) + 3/(16*b*c*d*(d*csc(a + b*x))^(3/2)*sqrt(c*sec(a + b*x))) - (3*atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(32*sqrt(2)*b*c^2*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) + (3*atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(c*sec(a + b*x)))/(32*sqrt(2)*b*c^2*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) + (3*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(64*sqrt(2)*b*c^2*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x))) - (3*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(c*sec(a + b*x)))/(64*sqrt(2)*b*c^2*d^2*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))]


    @test_int [1/(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(9/2), x, 1, -((2*c*d*(d*csc(a + b*x))^(7/2))/(7*b*(c*sec(a + b*x))^(7/2)))]
    @test_int [1/(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(7/2), x, 5, (6*d^3*sqrt(d*csc(a + b*x)))/(5*b*c*(c*sec(a + b*x))^(3/2)) - (2*d*(d*csc(a + b*x))^(5/2))/(5*b*c*(c*sec(a + b*x))^(3/2)) + (6*d^4*Elliptic.E(a - pi/4 + b*x, 2))/(5*b*c^2*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [1/(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(5/2), x, 13, -((2*d*(d*csc(a + b*x))^(3/2))/(3*b*c*(c*sec(a + b*x))^(3/2))) + (d^2*atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(sqrt(2)*b*c^2*sqrt(c*sec(a + b*x))) - (d^2*atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(sqrt(2)*b*c^2*sqrt(c*sec(a + b*x))) + (d^2*sqrt(d*csc(a + b*x))*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(2*sqrt(2)*b*c^2*sqrt(c*sec(a + b*x))) - (d^2*sqrt(d*csc(a + b*x))*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(2*sqrt(2)*b*c^2*sqrt(c*sec(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(3/2), x, 4, -((2*d*sqrt(d*csc(a + b*x)))/(b*c*(c*sec(a + b*x))^(3/2))) - (3*d^2*Elliptic.E(a - pi/4 + b*x, 2))/(b*c^2*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [1/(c*sec(a + b*x))^(5/2)*(d*csc(a + b*x))^(1/2), x, 13, d/(2*b*c*sqrt(d*csc(a + b*x))*(c*sec(a + b*x))^(3/2)) - (3*atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(4*sqrt(2)*b*c^2*sqrt(c*sec(a + b*x))) + (3*atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(4*sqrt(2)*b*c^2*sqrt(c*sec(a + b*x))) - (3*sqrt(d*csc(a + b*x))*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(8*sqrt(2)*b*c^2*sqrt(c*sec(a + b*x))) + (3*sqrt(d*csc(a + b*x))*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(8*sqrt(2)*b*c^2*sqrt(c*sec(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(5/2)/(d*csc(a + b*x))^(1/2), x, 4, d/(3*b*c*(d*csc(a + b*x))^(3/2)*(c*sec(a + b*x))^(3/2)) + Elliptic.E(a - pi/4 + b*x, 2)/(2*b*c^2*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [1/(c*sec(a + b*x))^(5/2)/(d*csc(a + b*x))^(3/2), x, 14, -(c/(4*b*d*sqrt(d*csc(a + b*x))*(c*sec(a + b*x))^(7/2))) + 1/(16*b*c*d*sqrt(d*csc(a + b*x))*(c*sec(a + b*x))^(3/2)) - (3*atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(32*sqrt(2)*b*c^2*d^2*sqrt(c*sec(a + b*x))) + (3*atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(32*sqrt(2)*b*c^2*d^2*sqrt(c*sec(a + b*x))) - (3*sqrt(d*csc(a + b*x))*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(64*sqrt(2)*b*c^2*d^2*sqrt(c*sec(a + b*x))) + (3*sqrt(d*csc(a + b*x))*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(64*sqrt(2)*b*c^2*d^2*sqrt(c*sec(a + b*x)))]
    @test_int [1/(c*sec(a + b*x))^(5/2)/(d*csc(a + b*x))^(5/2), x, 5, -(c/(5*b*d*(d*csc(a + b*x))^(3/2)*(c*sec(a + b*x))^(7/2))) + 1/(10*b*c*d*(d*csc(a + b*x))^(3/2)*(c*sec(a + b*x))^(3/2)) + (3*Elliptic.E(a - pi/4 + b*x, 2))/(20*b*c^2*d^2*sqrt(d*csc(a + b*x))*sqrt(c*sec(a + b*x))*sqrt(sin(2*a + 2*b*x)))]
    @test_int [1/(c*sec(a + b*x))^(5/2)/(d*csc(a + b*x))^(7/2), x, 15, -(c/(6*b*d*(d*csc(a + b*x))^(5/2)*(c*sec(a + b*x))^(7/2))) - (5*c)/(48*b*d^3*sqrt(d*csc(a + b*x))*(c*sec(a + b*x))^(7/2)) + 5/(192*b*c*d^3*sqrt(d*csc(a + b*x))*(c*sec(a + b*x))^(3/2)) - (5*atan(1 - sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(128*sqrt(2)*b*c^2*d^4*sqrt(c*sec(a + b*x))) + (5*atan(1 + sqrt(2)*sqrt(tan(a + b*x)))*sqrt(d*csc(a + b*x))*sqrt(tan(a + b*x)))/(128*sqrt(2)*b*c^2*d^4*sqrt(c*sec(a + b*x))) - (5*sqrt(d*csc(a + b*x))*log(1 - sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(256*sqrt(2)*b*c^2*d^4*sqrt(c*sec(a + b*x))) + (5*sqrt(d*csc(a + b*x))*log(1 + sqrt(2)*sqrt(tan(a + b*x)) + tan(a + b*x))*sqrt(tan(a + b*x)))/(256*sqrt(2)*b*c^2*d^4*sqrt(c*sec(a + b*x)))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^m*(b*csc(e+f*x))^n*with*n*symbolic=#


    @test_int [(sec(e + f*x))^m*(csc(e + f*x))^n, x, 2, ((cos(e + f*x)^2)^((1 + m)/2)*csc(e + f*x)^(-1 + n)*HypergeometricFunctions._₂F₁((1 + m)/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*sec(e + f*x)^(1 + m))/(f*(1 - n))]
    @test_int [(a*sec(e + f*x))^m*(csc(e + f*x))^n, x, 2, ((cos(e + f*x)^2)^((1 + m)/2)*csc(e + f*x)^(-1 + n)*HypergeometricFunctions._₂F₁((1 + m)/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*(a*sec(e + f*x))^(m + 1))/(a*f*(1 - n))]
    @test_int [(sec(e + f*x))^m*(b*csc(e + f*x))^n, x, 2, (b*(cos(e + f*x)^2)^((1 + m)/2)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁((1 + m)/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*sec(e + f*x)^(1 + m))/(f*(1 - n))]
    @test_int [(a*sec(e + f*x))^m*(b*csc(e + f*x))^n, x, 2, (b*(cos(e + f*x)^2)^((1 + m)/2)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁((1 + m)/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*(a*sec(e + f*x))^(1 + m))/(a*f*(1 - n))]


    @test_int [(b*csc(e + f*x))^n*sec(e + f*x)^5, x, 2, ((b*csc(e + f*x))^(5 + n)*HypergeometricFunctions._₂F₁(3, (5 + n)/2, (7 + n)/2, csc(e + f*x)^2))/(b^5*f*(5 + n))]
    @test_int [(b*csc(e + f*x))^n*sec(e + f*x)^3, x, 2, -(((b*csc(e + f*x))^(3 + n)*HypergeometricFunctions._₂F₁(2, (3 + n)/2, (5 + n)/2, csc(e + f*x)^2))/(b^3*f*(3 + n)))]
    @test_int [(b*csc(e + f*x))^n*sec(e + f*x)^1, x, 2, ((b*csc(e + f*x))^(1 + n)*HypergeometricFunctions._₂F₁(1, (1 + n)/2, (3 + n)/2, csc(e + f*x)^2))/(b*f*(1 + n))]
    @test_int [(b*csc(e + f*x))^n*cos(e + f*x)^1, x, 2, (b*(b*csc(e + f*x))^(-1 + n))/(f*(1 - n))]
    @test_int [(b*csc(e + f*x))^n*cos(e + f*x)^3, x, 3, -((b^3*(b*csc(e + f*x))^(-3 + n))/(f*(3 - n))) + (b*(b*csc(e + f*x))^(-1 + n))/(f*(1 - n))]
    @test_int [(b*csc(e + f*x))^n*cos(e + f*x)^5, x, 3, (b^5*(b*csc(e + f*x))^(-5 + n))/(f*(5 - n)) - (2*b^3*(b*csc(e + f*x))^(-3 + n))/(f*(3 - n)) + (b*(b*csc(e + f*x))^(-1 + n))/(f*(1 - n))]

    @test_int [(b*csc(e + f*x))^n*sec(e + f*x)^6, x, 2, (b*sqrt(cos(e + f*x)^2)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁(7/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*sec(e + f*x))/(f*(1 - n))]
    @test_int [(b*csc(e + f*x))^n*sec(e + f*x)^4, x, 2, (b*sqrt(cos(e + f*x)^2)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁(5/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*sec(e + f*x))/(f*(1 - n))]
    @test_int [(b*csc(e + f*x))^n*sec(e + f*x)^2, x, 2, (b*sqrt(cos(e + f*x)^2)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁(3/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*sec(e + f*x))/(f*(1 - n))]
    @test_int [(b*csc(e + f*x))^n*sec(e + f*x)^0, x, 2, (b*cos(e + f*x)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2))/(f*(1 - n)*sqrt(cos(e + f*x)^2))]
    @test_int [(b*csc(e + f*x))^n*cos(e + f*x)^2, x, 2, (b*cos(e + f*x)*(b*csc(e + f*x))^(n - 1)*HypergeometricFunctions._₂F₁(-(1/2), (1 - n)/2, (3 - n)/2, sin(e + f*x)^2))/(f*(1 - n)*sqrt(cos(e + f*x)^2))]
    @test_int [(b*csc(e + f*x))^n*cos(e + f*x)^4, x, 2, (b*cos(e + f*x)*(b*csc(e + f*x))^(n - 1)*HypergeometricFunctions._₂F₁(-(3/2), (1 - n)/2, (3 - n)/2, sin(e + f*x)^2))/(f*(1 - n)*sqrt(cos(e + f*x)^2))]


    @test_int [(b*csc(e + f*x))^n*(c*sec(e + f*x))^(3/2), x, 2, (b*(cos(e + f*x)^2)^(5/4)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁(5/4, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*(c*sec(e + f*x))^(5/2))/(c*f*(1 - n))]
    @test_int [(b*csc(e + f*x))^n*(c*sec(e + f*x))^(1/2), x, 2, (b*(cos(e + f*x)^2)^(3/4)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁(3/4, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*(c*sec(e + f*x))^(3/2))/(c*f*(1 - n))]
    @test_int [(b*csc(e + f*x))^n/(c*sec(e + f*x))^(1/2), x, 2, (b*(cos(e + f*x)^2)^(1/4)*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/4, (1 - n)/2, (3 - n)/2, sin(e + f*x)^2)*sqrt(c*sec(e + f*x)))/(c*f*(1 - n))]
    @test_int [(b*csc(e + f*x))^n/(c*sec(e + f*x))^(3/2), x, 2, (b*(b*csc(e + f*x))^(-1 + n)*HypergeometricFunctions._₂F₁(-(1/4), (1 - n)/2, (3 - n)/2, sin(e + f*x)^2))/(c*f*(1 - n)*(cos(e + f*x)^2)^(1/4)*sqrt(c*sec(e + f*x)))]
    end
