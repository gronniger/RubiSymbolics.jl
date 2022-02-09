@testset "4.6.0 (a csc)^m (b trg)^n" begin
    (a, b, c, d, e, f, m, n, p, x, ) = @variables a b c d e f m n p x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(b*csc(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*csc(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csc(c+d*x)^n=#


    @test_int [csc(a + b*x)^1, x, 1, -(atanh(cos(a + b*x))/b)]
    @test_int [csc(a + b*x)^2, x, 2, -(cot(a + b*x)/b)]
    @test_int [csc(a + b*x)^3, x, 2, -(atanh(cos(a + b*x))/(2*b)) - (cot(a + b*x)*csc(a + b*x))/(2*b)]
    @test_int [csc(a + b*x)^4, x, 2, -(cot(a + b*x)/b) - cot(a + b*x)^3/(3*b)]
    @test_int [csc(a + b*x)^5, x, 3, -((3*atanh(cos(a + b*x)))/(8*b)) - (3*cot(a + b*x)*csc(a + b*x))/(8*b) - (cot(a + b*x)*csc(a + b*x)^3)/(4*b)]
    @test_int [csc(a + b*x)^6, x, 2, -(cot(a + b*x)/b) - (2*cot(a + b*x)^3)/(3*b) - cot(a + b*x)^5/(5*b)]
    @test_int [csc(a + b*x)^7, x, 4, -((5*atanh(cos(a + b*x)))/(16*b)) - (5*cot(a + b*x)*csc(a + b*x))/(16*b) - (5*cot(a + b*x)*csc(a + b*x)^3)/(24*b) - (cot(a + b*x)*csc(a + b*x)^5)/(6*b)]
    @test_int [csc(a + b*x)^8, x, 2, -(cot(a + b*x)/b) - cot(a + b*x)^3/b - (3*cot(a + b*x)^5)/(5*b) - cot(a + b*x)^7/(7*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*csc(c+d*x))^(n/2)=#


    @test_int [csc(a + b*x)^(7/2), x, 4, -((6*cos(a + b*x)*sqrt(csc(a + b*x)))/(5*b)) - (2*cos(a + b*x)*csc(a + b*x)^(5/2))/(5*b) - (6*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(5*b)]
    @test_int [csc(a + b*x)^(5/2), x, 3, -((2*cos(a + b*x)*csc(a + b*x)^(3/2))/(3*b)) + (2*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(3*b)]
    @test_int [csc(a + b*x)^(3/2), x, 3, -((2*cos(a + b*x)*sqrt(csc(a + b*x)))/b) - (2*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/b]
    @test_int [csc(a + b*x)^(1/2), x, 2, (2*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/b]
    @test_int [1/csc(a + b*x)^(1/2), x, 2, (2*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/b]
    @test_int [1/csc(a + b*x)^(3/2), x, 3, -((2*cos(a + b*x))/(3*b*sqrt(csc(a + b*x)))) + (2*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(3*b)]
    @test_int [1/csc(a + b*x)^(5/2), x, 3, -((2*cos(a + b*x))/(5*b*csc(a + b*x)^(3/2))) + (6*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(5*b)]
    @test_int [1/csc(a + b*x)^(7/2), x, 4, -((2*cos(a + b*x))/(7*b*csc(a + b*x)^(5/2))) - (10*cos(a + b*x))/(21*b*sqrt(csc(a + b*x))) + (10*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(21*b)]


    @test_int [(c*csc(a + b*x))^(7/2), x, 4, -((6*c^3*cos(a + b*x)*sqrt(c*csc(a + b*x)))/(5*b)) - (2*c*cos(a + b*x)*(c*csc(a + b*x))^(5/2))/(5*b) - (6*c^4*Elliptic.E((1/2)*(a - pi/2 + b*x), 2))/(5*b*sqrt(c*csc(a + b*x))*sqrt(sin(a + b*x)))]
    @test_int [(c*csc(a + b*x))^(5/2), x, 3, -((2*c*cos(a + b*x)*(c*csc(a + b*x))^(3/2))/(3*b)) + (2*c^2*sqrt(c*csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(3*b)]
    @test_int [(c*csc(a + b*x))^(3/2), x, 3, -((2*c*cos(a + b*x)*sqrt(c*csc(a + b*x)))/b) - (2*c^2*Elliptic.E((1/2)*(a - pi/2 + b*x), 2))/(b*sqrt(c*csc(a + b*x))*sqrt(sin(a + b*x)))]
    @test_int [(c*csc(a + b*x))^(1/2), x, 2, (2*sqrt(c*csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/b]
    @test_int [1/(c*csc(a + b*x))^(1/2), x, 2, (2*Elliptic.E((1/2)*(a - pi/2 + b*x), 2))/(b*sqrt(c*csc(a + b*x))*sqrt(sin(a + b*x)))]
    @test_int [1/(c*csc(a + b*x))^(3/2), x, 3, -((2*cos(a + b*x))/(3*b*c*sqrt(c*csc(a + b*x)))) + (2*sqrt(c*csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(3*b*c^2)]
    @test_int [1/(c*csc(a + b*x))^(5/2), x, 3, -((2*cos(a + b*x))/(5*b*c*(c*csc(a + b*x))^(3/2))) + (6*Elliptic.E((1/2)*(a - pi/2 + b*x), 2))/(5*b*c^2*sqrt(c*csc(a + b*x))*sqrt(sin(a + b*x)))]
    @test_int [1/(c*csc(a + b*x))^(7/2), x, 4, -((2*cos(a + b*x))/(7*b*c*(c*csc(a + b*x))^(5/2))) - (10*cos(a + b*x))/(21*b*c^3*sqrt(c*csc(a + b*x))) + (10*sqrt(c*csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(21*b*c^4)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*csc(c+d*x))^(n/3)=#


    @test_int [csc(a + b*x)^(4/3), x, 2, -((3*cos(a + b*x)*csc(a + b*x)^(1/3)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, sin(a + b*x)^2))/(b*sqrt(cos(a + b*x)^2)))]
    @test_int [csc(a + b*x)^(2/3), x, 2, (3*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, sin(a + b*x)^2))/(b*sqrt(cos(a + b*x)^2)*csc(a + b*x)^(1/3))]
    @test_int [csc(a + b*x)^(1/3), x, 2, (3*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, sin(a + b*x)^2))/(2*b*sqrt(cos(a + b*x)^2)*csc(a + b*x)^(2/3))]
    @test_int [1/csc(a + b*x)^(1/3), x, 2, (3*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, sin(a + b*x)^2))/(4*b*sqrt(cos(a + b*x)^2)*csc(a + b*x)^(4/3))]
    @test_int [1/csc(a + b*x)^(2/3), x, 2, (3*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, sin(a + b*x)^2))/(5*b*sqrt(cos(a + b*x)^2)*csc(a + b*x)^(5/3))]
    @test_int [1/csc(a + b*x)^(4/3), x, 2, (3*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, sin(a + b*x)^2))/(7*b*sqrt(cos(a + b*x)^2)*csc(a + b*x)^(7/3))]


    @test_int [(c*csc(a + b*x))^(4/3), x, 2, -((3*c*cos(a + b*x)*(c*csc(a + b*x))^(1/3)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, sin(a + b*x)^2))/(b*sqrt(cos(a + b*x)^2)))]
    @test_int [(c*csc(a + b*x))^(2/3), x, 2, (3*c*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, sin(a + b*x)^2))/(b*sqrt(cos(a + b*x)^2)*(c*csc(a + b*x))^(1/3))]
    @test_int [(c*csc(a + b*x))^(1/3), x, 2, (3*c*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, sin(a + b*x)^2))/(2*b*sqrt(cos(a + b*x)^2)*(c*csc(a + b*x))^(2/3))]
    @test_int [1/(c*csc(a + b*x))^(1/3), x, 2, (3*c*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, sin(a + b*x)^2))/(4*b*sqrt(cos(a + b*x)^2)*(c*csc(a + b*x))^(4/3))]
    @test_int [1/(c*csc(a + b*x))^(2/3), x, 2, (3*c*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, sin(a + b*x)^2))/(5*b*sqrt(cos(a + b*x)^2)*(c*csc(a + b*x))^(5/3))]
    @test_int [1/(c*csc(a + b*x))^(4/3), x, 2, (3*c*cos(a + b*x)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, sin(a + b*x)^2))/(7*b*sqrt(cos(a + b*x)^2)*(c*csc(a + b*x))^(7/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*csc(c+d*x))^n*with*n*symbolic=#


    @test_int [csc(a + b*x)^n, x, 2, (cos(a + b*x)*csc(a + b*x)^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 - n)/2, (3 - n)/2, sin(a + b*x)^2))/(b*(1 - n)*sqrt(cos(a + b*x)^2))]


    @test_int [(c*csc(a + b*x))^n, x, 2, (c*cos(a + b*x)*(c*csc(a + b*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 - n)/2, (3 - n)/2, sin(a + b*x)^2))/(b*(1 - n)*sqrt(cos(a + b*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*csc(c+d*x)^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*csc(c+d*x)^p)^(n/2)*with*p*positive*integer=#


    @test_int [(csc(x)^2)^(7/2), x, 5, (-(5/16))*asinh(cot(x)) - (5/16)*cot(x)*sqrt(csc(x)^2) - (5/24)*cot(x)*(csc(x)^2)^(3/2) - (1/6)*cot(x)*(csc(x)^2)^(5/2)]
    @test_int [(csc(x)^2)^(5/2), x, 4, (-(3/8))*asinh(cot(x)) - (3/8)*cot(x)*sqrt(csc(x)^2) - (1/4)*cot(x)*(csc(x)^2)^(3/2)]
    @test_int [(csc(x)^2)^(3/2), x, 3, (-(1/2))*asinh(cot(x)) - (1/2)*cot(x)*sqrt(csc(x)^2)]
    @test_int [(csc(x)^2)^(1/2), x, 2, -asinh(cot(x))]
    @test_int [1/(csc(x)^2)^(1/2), x, 2, -(cot(x)/sqrt(csc(x)^2))]
    @test_int [1/(csc(x)^2)^(3/2), x, 3, -(cot(x)/(3*(csc(x)^2)^(3/2))) - (2*cot(x))/(3*sqrt(csc(x)^2))]
    @test_int [1/(csc(x)^2)^(5/2), x, 4, -(cot(x)/(5*(csc(x)^2)^(5/2))) - (4*cot(x))/(15*(csc(x)^2)^(3/2)) - (8*cot(x))/(15*sqrt(csc(x)^2))]
    @test_int [1/(csc(x)^2)^(7/2), x, 5, -(cot(x)/(7*(csc(x)^2)^(7/2))) - (6*cot(x))/(35*(csc(x)^2)^(5/2)) - (8*cot(x))/(35*(csc(x)^2)^(3/2)) - (16*cot(x))/(35*sqrt(csc(x)^2))]


    @test_int [(a*csc(x)^2)^(7/2), x, 6, (-(5/16))*a^(7/2)*atanh((sqrt(a)*cot(x))/sqrt(a*csc(x)^2)) - (5/16)*a^3*cot(x)*sqrt(a*csc(x)^2) - (5/24)*a^2*cot(x)*(a*csc(x)^2)^(3/2) - (1/6)*a*cot(x)*(a*csc(x)^2)^(5/2)]
    @test_int [(a*csc(x)^2)^(5/2), x, 5, (-(3/8))*a^(5/2)*atanh((sqrt(a)*cot(x))/sqrt(a*csc(x)^2)) - (3/8)*a^2*cot(x)*sqrt(a*csc(x)^2) - (1/4)*a*cot(x)*(a*csc(x)^2)^(3/2)]
    @test_int [(a*csc(x)^2)^(3/2), x, 4, (-(1/2))*a^(3/2)*atanh((sqrt(a)*cot(x))/sqrt(a*csc(x)^2)) - (1/2)*a*cot(x)*sqrt(a*csc(x)^2)]
    @test_int [(a*csc(x)^2)^(1/2), x, 3, (-sqrt(a))*atanh((sqrt(a)*cot(x))/sqrt(a*csc(x)^2))]
    @test_int [1/(a*csc(x)^2)^(1/2), x, 2, -(cot(x)/sqrt(a*csc(x)^2))]
    @test_int [1/(a*csc(x)^2)^(3/2), x, 3, -(cot(x)/(3*(a*csc(x)^2)^(3/2))) - (2*cot(x))/(3*a*sqrt(a*csc(x)^2))]
    @test_int [1/(a*csc(x)^2)^(5/2), x, 4, -(cot(x)/(5*(a*csc(x)^2)^(5/2))) - (4*cot(x))/(15*a*(a*csc(x)^2)^(3/2)) - (8*cot(x))/(15*a^2*sqrt(a*csc(x)^2))]
    @test_int [1/(a*csc(x)^2)^(7/2), x, 5, -(cot(x)/(7*(a*csc(x)^2)^(7/2))) - (6*cot(x))/(35*a*(a*csc(x)^2)^(5/2)) - (8*cot(x))/(35*a^2*(a*csc(x)^2)^(3/2)) - (16*cot(x))/(35*a^3*sqrt(a*csc(x)^2))]


    @test_int [(a*csc(x)^3)^(5/2), x, 7, (-(154/585))*a^2*cot(x)*sqrt(a*csc(x)^3) - (22/117)*a^2*cot(x)*csc(x)^2*sqrt(a*csc(x)^3) - (2/13)*a^2*cot(x)*csc(x)^4*sqrt(a*csc(x)^3) - (154/195)*a^2*cos(x)*sqrt(a*csc(x)^3)*sin(x) + (154/195)*a^2*sqrt(a*csc(x)^3)*Elliptic.E(pi/4 - x/2, 2)*sin(x)^(3/2)]
    @test_int [(a*csc(x)^3)^(3/2), x, 5, (-(10/21))*a*cos(x)*sqrt(a*csc(x)^3) - (2/7)*a*cot(x)*csc(x)*sqrt(a*csc(x)^3) - (10/21)*a*sqrt(a*csc(x)^3)*Elliptic.F(pi/4 - x/2, 2)*sin(x)^(3/2)]
    @test_int [(a*csc(x)^3)^(1/2), x, 4, -2*cos(x)*sqrt(a*csc(x)^3)*sin(x) + 2*sqrt(a*csc(x)^3)*Elliptic.E(pi/4 - x/2, 2)*sin(x)^(3/2)]
    @test_int [1/(a*csc(x)^3)^(1/2), x, 4, -((2*cot(x))/(3*sqrt(a*csc(x)^3))) - (2*Elliptic.F(pi/4 - x/2, 2))/(3*sqrt(a*csc(x)^3)*sin(x)^(3/2))]
    @test_int [1/(a*csc(x)^3)^(3/2), x, 5, -((14*cos(x))/(45*a*sqrt(a*csc(x)^3))) - (14*Elliptic.E(pi/4 - x/2, 2))/(15*a*sqrt(a*csc(x)^3)*sin(x)^(3/2)) - (2*cos(x)*sin(x)^2)/(9*a*sqrt(a*csc(x)^3))]
    @test_int [1/(a*csc(x)^3)^(5/2), x, 7, -((26*cot(x))/(77*a^2*sqrt(a*csc(x)^3))) - (26*Elliptic.F(pi/4 - x/2, 2))/(77*a^2*sqrt(a*csc(x)^3)*sin(x)^(3/2)) - (78*cos(x)*sin(x))/(385*a^2*sqrt(a*csc(x)^3)) - (26*cos(x)*sin(x)^3)/(165*a^2*sqrt(a*csc(x)^3)) - (2*cos(x)*sin(x)^5)/(15*a^2*sqrt(a*csc(x)^3))]


    @test_int [(a*csc(x)^4)^(7/2), x, 3, -2*a^3*cos(x)^2*cot(x)*sqrt(a*csc(x)^4) - 3*a^3*cos(x)^2*cot(x)^3*sqrt(a*csc(x)^4) - (20/7)*a^3*cos(x)^2*cot(x)^5*sqrt(a*csc(x)^4) - (5/3)*a^3*cos(x)^2*cot(x)^7*sqrt(a*csc(x)^4) - (6/11)*a^3*cos(x)^2*cot(x)^9*sqrt(a*csc(x)^4) - (1/13)*a^3*cos(x)^2*cot(x)^11*sqrt(a*csc(x)^4) - a^3*cos(x)*sqrt(a*csc(x)^4)*sin(x)]
    @test_int [(a*csc(x)^4)^(5/2), x, 3, (-(4/3))*a^2*cos(x)^2*cot(x)*sqrt(a*csc(x)^4) - (6/5)*a^2*cos(x)^2*cot(x)^3*sqrt(a*csc(x)^4) - (4/7)*a^2*cos(x)^2*cot(x)^5*sqrt(a*csc(x)^4) - (1/9)*a^2*cos(x)^2*cot(x)^7*sqrt(a*csc(x)^4) - a^2*cos(x)*sqrt(a*csc(x)^4)*sin(x)]
    @test_int [(a*csc(x)^4)^(3/2), x, 3, (-(2/3))*a*cos(x)^2*cot(x)*sqrt(a*csc(x)^4) - (1/5)*a*cos(x)^2*cot(x)^3*sqrt(a*csc(x)^4) - a*cos(x)*sqrt(a*csc(x)^4)*sin(x)]
    @test_int [(a*csc(x)^4)^(1/2), x, 3, (-cos(x))*sqrt(a*csc(x)^4)*sin(x)]
    @test_int [1/(a*csc(x)^4)^(1/2), x, 3, -(cot(x)/(2*sqrt(a*csc(x)^4))) + (x*csc(x)^2)/(2*sqrt(a*csc(x)^4))]
    @test_int [1/(a*csc(x)^4)^(3/2), x, 5, -((5*cot(x))/(16*a*sqrt(a*csc(x)^4))) + (5*x*csc(x)^2)/(16*a*sqrt(a*csc(x)^4)) - (5*cos(x)*sin(x))/(24*a*sqrt(a*csc(x)^4)) - (cos(x)*sin(x)^3)/(6*a*sqrt(a*csc(x)^4))]
    @test_int [1/(a*csc(x)^4)^(5/2), x, 7, -((63*cot(x))/(256*a^2*sqrt(a*csc(x)^4))) + (63*x*csc(x)^2)/(256*a^2*sqrt(a*csc(x)^4)) - (21*cos(x)*sin(x))/(128*a^2*sqrt(a*csc(x)^4)) - (21*cos(x)*sin(x)^3)/(160*a^2*sqrt(a*csc(x)^4)) - (9*cos(x)*sin(x)^5)/(80*a^2*sqrt(a*csc(x)^4)) - (cos(x)*sin(x)^7)/(10*a^2*sqrt(a*csc(x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*((b*csc(c+d*x))^p)^n*with*n*symbolic=#


    @test_int [((b*csc(c + d*x))^p)^n, x, 3, (cos(c + d*x)*((b*csc(c + d*x))^p)^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 - n*p), (1/2)*(3 - n*p), sin(c + d*x)^2)*sin(c + d*x))/(d*(1 - n*p)*sqrt(cos(c + d*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*(b*csc(c+d*x))^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*(b*csc(c+d*x))^p)^n*with*n*symbolic=#


    @test_int [(a*(b*csc(c + d*x))^p)^n, x, 3, (cos(c + d*x)*(a*(b*csc(c + d*x))^p)^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 - n*p), (1/2)*(3 - n*p), sin(c + d*x)^2)*sin(c + d*x))/(d*(1 - n*p)*sqrt(cos(c + d*x)^2))]


    #= ::Title:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^m*(b*Trg(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^m*(b*csc(e+f*x))^n=#


    @test_int [(a*csc(e + f*x))^m*(b*csc(e + f*x))^n, x, 3, (a*cos(e + f*x)*(a*csc(e + f*x))^(-1 + m)*(b*csc(e + f*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 - m - n), (1/2)*(3 - m - n), sin(e + f*x)^2))/(f*(1 - m - n)*sqrt(cos(e + f*x)^2))]
    end
