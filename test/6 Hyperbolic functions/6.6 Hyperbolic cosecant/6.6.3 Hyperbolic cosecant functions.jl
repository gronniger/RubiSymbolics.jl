@testset "6.6.3 Hyperbolic cosecant functions" begin
    (a, b, c, d, n, p, x, ) = @variables a b c d n p x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Hyperbolic*Cosecants=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c*csch(a+b*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csch(a+b*x)^n=#


    @test_int [csch(a + b*x), x, 1, -(atanh(cosh(a + b*x))/b)]
    @test_int [csch(a + b*x)^2, x, 2, -coth(a + b*x)/b]
    @test_int [csch(a + b*x)^3, x, 2, atanh(cosh(a + b*x))/(2*b) - (coth(a + b*x)*csch(a + b*x))/(2*b)]
    @test_int [csch(a + b*x)^4, x, 2, coth(a + b*x)/b - coth(a + b*x)^3/(3*b)]
    @test_int [csch(a + b*x)^5, x, 3, -((3*atanh(cosh(a + b*x)))/(8*b)) + (3*coth(a + b*x)*csch(a + b*x))/(8*b) - (coth(a + b*x)*csch(a + b*x)^3)/(4*b)]
    @test_int [csch(a + b*x)^6, x, 2, -(coth(a + b*x)/b) + (2*coth(a + b*x)^3)/(3*b) - coth(a + b*x)^5/(5*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*csch(a+b*x))^(n/2)=#


    @test_int [csch(a + b*x)^(5/2), x, 3, -((2*cosh(a + b*x)*csch(a + b*x)^(3/2))/(3*b)) + (2*im*sqrt(csch(a + b*x))*Elliptic.F((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(3*b)]
    @test_int [csch(a + b*x)^(3/2), x, 3, -((2*cosh(a + b*x)*sqrt(csch(a + b*x)))/b) - (2*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*x), 2))/(b*sqrt(csch(a + b*x))*sqrt(im*sinh(a + b*x)))]
    @test_int [csch(a + b*x)^(1/2), x, 2, -((2*im*sqrt(csch(a + b*x))*Elliptic.F((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/b)]
    @test_int [1/csch(a + b*x)^(1/2), x, 2, -((2*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*x), 2))/(b*sqrt(csch(a + b*x))*sqrt(im*sinh(a + b*x))))]
    @test_int [1/csch(a + b*x)^(3/2), x, 3, (2*cosh(a + b*x))/(3*b*sqrt(csch(a + b*x))) + (2*im*sqrt(csch(a + b*x))*Elliptic.F((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(3*b)]
    @test_int [1/csch(a + b*x)^(5/2), x, 3, (2*cosh(a + b*x))/(5*b*csch(a + b*x)^(3/2)) + (6*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*x), 2))/(5*b*sqrt(csch(a + b*x))*sqrt(im*sinh(a + b*x)))]


    @test_int [(b*csch(c + d*x))^(7/2), x, 4, (6*b^3*cosh(c + d*x)*sqrt(b*csch(c + d*x)))/(5*d) - (2*b*cosh(c + d*x)*(b*csch(c + d*x))^(5/2))/(5*d) + (6*im*b^4*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2))/(5*d*sqrt(b*csch(c + d*x))*sqrt(im*sinh(c + d*x)))]
    @test_int [(b*csch(c + d*x))^(5/2), x, 3, -((2*b*cosh(c + d*x)*(b*csch(c + d*x))^(3/2))/(3*d)) + (2*im*b^2*sqrt(b*csch(c + d*x))*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(im*sinh(c + d*x)))/(3*d)]
    @test_int [(b*csch(c + d*x))^(3/2), x, 3, -((2*b*cosh(c + d*x)*sqrt(b*csch(c + d*x)))/d) - (2*im*b^2*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2))/(d*sqrt(b*csch(c + d*x))*sqrt(im*sinh(c + d*x)))]
    @test_int [(b*csch(c + d*x))^(1/2), x, 2, -((2*im*sqrt(b*csch(c + d*x))*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(im*sinh(c + d*x)))/d)]
    @test_int [1/(b*csch(c + d*x))^(1/2), x, 2, -((2*im*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2))/(d*sqrt(b*csch(c + d*x))*sqrt(im*sinh(c + d*x))))]
    @test_int [1/(b*csch(c + d*x))^(3/2), x, 3, (2*cosh(c + d*x))/(3*b*d*sqrt(b*csch(c + d*x))) + (2*im*sqrt(b*csch(c + d*x))*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(im*sinh(c + d*x)))/(3*b^2*d)]
    @test_int [1/(b*csch(c + d*x))^(5/2), x, 3, (2*cosh(c + d*x))/(5*b*d*(b*csch(c + d*x))^(3/2)) + (6*im*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2))/(5*b^2*d*sqrt(b*csch(c + d*x))*sqrt(im*sinh(c + d*x)))]
    @test_int [1/(b*csch(c + d*x))^(7/2), x, 4, (2*cosh(c + d*x))/(7*b*d*(b*csch(c + d*x))^(5/2)) - (10*cosh(c + d*x))/(21*b^3*d*sqrt(b*csch(c + d*x))) - (10*im*sqrt(b*csch(c + d*x))*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(im*sinh(c + d*x)))/(21*b^4*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*csch(a+b*x))^n*with*n*symbolic=#


    @test_int [(b*csch(c + d*x))^n, x, 2, (b*cosh(c + d*x)*(b*csch(c + d*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 - n)/2, (3 - n)/2, -sinh(c + d*x)^2))/(d*(1 - n)*sqrt(cosh(c + d*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c*csch(a+b*x)^m)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*csch(a+b*x)^2)^n=#


    @test_int [(-csch(x)^2)^(5/2), x, 4, (3/8)*asin(coth(x)) + (3/8)*coth(x)*sqrt(-csch(x)^2) + (1/4)*coth(x)*(-csch(x)^2)^(3/2)]
    @test_int [(-csch(x)^2)^(3/2), x, 3, (1/2)*asin(coth(x)) + (1/2)*coth(x)*sqrt(-csch(x)^2)]
    @test_int [(-csch(x)^2)^(1/2), x, 2, asin(coth(x))]
    @test_int [1/(-csch(x)^2)^(1/2), x, 2, coth(x)/sqrt(-csch(x)^2)]
    @test_int [1/(-csch(x)^2)^(3/2), x, 3, coth(x)/(3*(-csch(x)^2)^(3/2)) + (2*coth(x))/(3*sqrt(-csch(x)^2))]
    @test_int [1/(-csch(x)^2)^(5/2), x, 4, coth(x)/(5*(-csch(x)^2)^(5/2)) + (4*coth(x))/(15*(-csch(x)^2)^(3/2)) + (8*coth(x))/(15*sqrt(-csch(x)^2))]
    @test_int [1/(-csch(x)^2)^(7/2), x, 5, coth(x)/(7*(-csch(x)^2)^(7/2)) + (6*coth(x))/(35*(-csch(x)^2)^(5/2)) + (8*coth(x))/(35*(-csch(x)^2)^(3/2)) + (16*coth(x))/(35*sqrt(-csch(x)^2))]


    @test_int [(a*csch(x)^2)^(5/2), x, 5, (-(3/8))*a^(5/2)*atanh((sqrt(a)*coth(x))/sqrt(a*csch(x)^2)) + (3/8)*a^2*coth(x)*sqrt(a*csch(x)^2) - (1/4)*a*coth(x)*(a*csch(x)^2)^(3/2)]
    @test_int [(a*csch(x)^2)^(3/2), x, 4, (1/2)*a^(3/2)*atanh((sqrt(a)*coth(x))/sqrt(a*csch(x)^2)) - (1/2)*a*coth(x)*sqrt(a*csch(x)^2)]
    @test_int [(a*csch(x)^2)^(1/2), x, 3, (-sqrt(a))*atanh((sqrt(a)*coth(x))/sqrt(a*csch(x)^2))]
    @test_int [1/(a*csch(x)^2)^(1/2), x, 2, coth(x)/sqrt(a*csch(x)^2)]
    @test_int [1/(a*csch(x)^2)^(3/2), x, 3, coth(x)/(3*(a*csch(x)^2)^(3/2)) - (2*coth(x))/(3*a*sqrt(a*csch(x)^2))]
    @test_int [1/(a*csch(x)^2)^(5/2), x, 4, coth(x)/(5*(a*csch(x)^2)^(5/2)) - (4*coth(x))/(15*a*(a*csch(x)^2)^(3/2)) + (8*coth(x))/(15*a^2*sqrt(a*csch(x)^2))]
    @test_int [1/(a*csch(x)^2)^(7/2), x, 5, coth(x)/(7*(a*csch(x)^2)^(7/2)) - (6*coth(x))/(35*a*(a*csch(x)^2)^(5/2)) + (8*coth(x))/(35*a^2*(a*csch(x)^2)^(3/2)) - (16*coth(x))/(35*a^3*sqrt(a*csch(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*csch(a+b*x)^3)^n=#


    @test_int [(a*csch(x)^3)^(5/2), x, 7, (-(154/585))*a^2*coth(x)*sqrt(a*csch(x)^3) + (22/117)*a^2*coth(x)*csch(x)^2*sqrt(a*csch(x)^3) - (2/13)*a^2*coth(x)*csch(x)^4*sqrt(a*csch(x)^3) + (154/195)*a^2*cosh(x)*sqrt(a*csch(x)^3)*sinh(x) - (154*im*a^2*sqrt(a*csch(x)^3)*Elliptic.E(pi/4 - (im*x)/2, 2)*sinh(x)^2)/(195*sqrt(im*sinh(x)))]
    @test_int [(a*csch(x)^3)^(3/2), x, 5, (10/21)*a*cosh(x)*sqrt(a*csch(x)^3) - (2/7)*a*coth(x)*csch(x)*sqrt(a*csch(x)^3) + (10/21)*im*a*sqrt(a*csch(x)^3)*Elliptic.F(pi/4 - (im*x)/2, 2)*sqrt(im*sinh(x))*sinh(x)]
    @test_int [(a*csch(x)^3)^(1/2), x, 4, -2*im*sqrt(a*csch(x)^3)*Elliptic.E(pi/4 - (im*x)/2, 2)*(im*sinh(x))^(3/2) - 2*cosh(x)*sqrt(a*csch(x)^3)*sinh(x), -2*cosh(x)*sqrt(a*csch(x)^3)*sinh(x) + (2*im*sqrt(a*csch(x)^3)*Elliptic.E(pi/4 - (im*x)/2, 2)*sinh(x)^2)/sqrt(im*sinh(x))]
    @test_int [1/(a*csch(x)^3)^(1/2), x, 4, (2*coth(x))/(3*sqrt(a*csch(x)^3)) - (2*im*csch(x)^2*Elliptic.F(pi/4 - (im*x)/2, 2)*sqrt(im*sinh(x)))/(3*sqrt(a*csch(x)^3))]
    @test_int [1/(a*csch(x)^3)^(3/2), x, 5, -((14*cosh(x))/(45*a*sqrt(a*csch(x)^3))) + (14*im*csch(x)*Elliptic.E(pi/4 - (im*x)/2, 2))/(15*a*sqrt(a*csch(x)^3)*sqrt(im*sinh(x))) + (2*cosh(x)*sinh(x)^2)/(9*a*sqrt(a*csch(x)^3))]
    @test_int [1/(a*csch(x)^3)^(5/2), x, 7, -((26*coth(x))/(77*a^2*sqrt(a*csch(x)^3))) + (26*im*csch(x)^2*Elliptic.F(pi/4 - (im*x)/2, 2)*sqrt(im*sinh(x)))/(77*a^2*sqrt(a*csch(x)^3)) + (78*cosh(x)*sinh(x))/(385*a^2*sqrt(a*csch(x)^3)) - (26*cosh(x)*sinh(x)^3)/(165*a^2*sqrt(a*csch(x)^3)) + (2*cosh(x)*sinh(x)^5)/(15*a^2*sqrt(a*csch(x)^3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*csch(a+b*x)^4)^n=#


    @test_int [(a*csch(x)^4)^(7/2), x, 3, 2*a^3*cosh(x)^2*coth(x)*sqrt(a*csch(x)^4) - 3*a^3*cosh(x)^2*coth(x)^3*sqrt(a*csch(x)^4) + (20/7)*a^3*cosh(x)^2*coth(x)^5*sqrt(a*csch(x)^4) - (5/3)*a^3*cosh(x)^2*coth(x)^7*sqrt(a*csch(x)^4) + (6/11)*a^3*cosh(x)^2*coth(x)^9*sqrt(a*csch(x)^4) - (1/13)*a^3*cosh(x)^2*coth(x)^11*sqrt(a*csch(x)^4) - a^3*cosh(x)*sqrt(a*csch(x)^4)*sinh(x)]
    @test_int [(a*csch(x)^4)^(5/2), x, 3, (4/3)*a^2*cosh(x)^2*coth(x)*sqrt(a*csch(x)^4) - (6/5)*a^2*cosh(x)^2*coth(x)^3*sqrt(a*csch(x)^4) + (4/7)*a^2*cosh(x)^2*coth(x)^5*sqrt(a*csch(x)^4) - (1/9)*a^2*cosh(x)^2*coth(x)^7*sqrt(a*csch(x)^4) - a^2*cosh(x)*sqrt(a*csch(x)^4)*sinh(x)]
    @test_int [(a*csch(x)^4)^(3/2), x, 3, (2/3)*a*cosh(x)^2*coth(x)*sqrt(a*csch(x)^4) - (1/5)*a*cosh(x)^2*coth(x)^3*sqrt(a*csch(x)^4) - a*cosh(x)*sqrt(a*csch(x)^4)*sinh(x)]
    @test_int [(a*csch(x)^4)^(1/2), x, 3, (-cosh(x))*sqrt(a*csch(x)^4)*sinh(x)]
    @test_int [1/(a*csch(x)^4)^(1/2), x, 3, coth(x)/(2*sqrt(a*csch(x)^4)) - (x*csch(x)^2)/(2*sqrt(a*csch(x)^4))]
    @test_int [1/(a*csch(x)^4)^(3/2), x, 5, (5*coth(x))/(16*a*sqrt(a*csch(x)^4)) - (5*x*csch(x)^2)/(16*a*sqrt(a*csch(x)^4)) - (5*cosh(x)*sinh(x))/(24*a*sqrt(a*csch(x)^4)) + (cosh(x)*sinh(x)^3)/(6*a*sqrt(a*csch(x)^4))]
    @test_int [1/(a*csch(x)^4)^(5/2), x, 7, (63*coth(x))/(256*a^2*sqrt(a*csch(x)^4)) - (63*x*csch(x)^2)/(256*a^2*sqrt(a*csch(x)^4)) - (21*cosh(x)*sinh(x))/(128*a^2*sqrt(a*csch(x)^4)) + (21*cosh(x)*sinh(x)^3)/(160*a^2*sqrt(a*csch(x)^4)) - (9*cosh(x)*sinh(x)^5)/(80*a^2*sqrt(a*csch(x)^4)) + (cosh(x)*sinh(x)^7)/(10*a^2*sqrt(a*csch(x)^4))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c*csch(a+b*x)^m)^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Hyper(c+d*x)^m*(a+b*csch(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*csch(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2=0=#


    @test_int [1/(a + im*a*csch(a + b*x)), x, 2, x/a - coth(a + b*x)/(b*(a + im*a*csch(a + b*x)))]


    @test_int [1/(a - im*a*csch(a + b*x)), x, 2, x/a - coth(a + b*x)/(b*(a - im*a*csch(a + b*x)))]


    @test_int [(a + a*im*csch(c + d*x))^(5/2), x, 5, (2*a^(5/2)*atanh((sqrt(a)*coth(c + d*x))/sqrt(a + im*a*csch(c + d*x))))/d + (14*a^3*coth(c + d*x))/(3*d*sqrt(a + im*a*csch(c + d*x))) + (2*a^2*coth(c + d*x)*sqrt(a + im*a*csch(c + d*x)))/(3*d)]
    @test_int [(a + a*im*csch(c + d*x))^(3/2), x, 4, (2*a^(3/2)*atanh((sqrt(a)*coth(c + d*x))/sqrt(a + im*a*csch(c + d*x))))/d + (2*a^2*coth(c + d*x))/(d*sqrt(a + im*a*csch(c + d*x)))]
    @test_int [(a + a*im*csch(c + d*x))^(1/2), x, 2, (2*sqrt(a)*atanh((sqrt(a)*coth(c + d*x))/sqrt(a + im*a*csch(c + d*x))))/d]
    @test_int [1/(a + a*im*csch(c + d*x))^(1/2), x, 5, (2*atanh((sqrt(a)*coth(c + d*x))/sqrt(a + im*a*csch(c + d*x))))/(sqrt(a)*d) - (sqrt(2)*atanh((sqrt(a)*coth(c + d*x))/(sqrt(2)*sqrt(a + im*a*csch(c + d*x)))))/(sqrt(a)*d)]
    @test_int [1/(a + a*im*csch(c + d*x))^(3/2), x, 6, (2*atanh((sqrt(a)*coth(c + d*x))/sqrt(a + im*a*csch(c + d*x))))/(a^(3/2)*d) - (5*atanh((sqrt(a)*coth(c + d*x))/(sqrt(2)*sqrt(a + im*a*csch(c + d*x)))))/(2*sqrt(2)*a^(3/2)*d) - coth(c + d*x)/(2*d*(a + im*a*csch(c + d*x))^(3/2))]

    @test_int [sqrt(a - a*im*csch(c + d*x)), x, 2, (2*sqrt(a)*atanh((sqrt(a)*coth(c + d*x))/sqrt(a - im*a*csch(c + d*x))))/d]
    @test_int [1/sqrt(a - im*a*csch(c + d*x)), x, 5, (2*atanh((sqrt(a)*coth(c + d*x))/sqrt(a - im*a*csch(c + d*x))))/(sqrt(a)*d) - (sqrt(2)*atanh((sqrt(a)*coth(c + d*x))/(sqrt(2)*sqrt(a - im*a*csch(c + d*x)))))/(sqrt(a)*d)]


    @test_int [sqrt(3 + 3*im*csch(x)), x, 2, 2*sqrt(3)*atanh(coth(x)/sqrt(1 + im*csch(x)))]
    @test_int [sqrt(3 - 3*im*csch(x)), x, 2, 2*sqrt(3)*atanh(coth(x)/sqrt(1 - im*csch(x)))]
    @test_int [sqrt(-3 + 3*im*csch(x)), x, 2, -2*sqrt(3)*atan(coth(x)/sqrt(-1 + im*csch(x)))]
    @test_int [sqrt(-3 - 3*im*csch(x)), x, 2, -2*sqrt(3)*atan(coth(x)/sqrt(-1 - im*csch(x)))]


    @test_int [sinh(x)^4/(im + csch(x)), x, 7, -((15*im*x)/8) - 4*cosh(x) + (4*cosh(x)^3)/3 + (15/8)*im*cosh(x)*sinh(x) - (5/4)*im*cosh(x)*sinh(x)^3 - (cosh(x)*sinh(x)^3)/(im + csch(x))]
    @test_int [sinh(x)^3/(im + csch(x)), x, 6, -((3*x)/2) + 4*im*cosh(x) - (4/3)*im*cosh(x)^3 + (3/2)*cosh(x)*sinh(x) - (cosh(x)*sinh(x)^2)/(im + csch(x))]
    @test_int [sinh(x)^2/(im + csch(x)), x, 5, (3*im*x)/2 + 2*cosh(x) - (3/2)*im*cosh(x)*sinh(x) - (cosh(x)*sinh(x))/(im + csch(x))]
    @test_int [sinh(x)^1/(im + csch(x)), x, 4, x - 2*im*cosh(x) - cosh(x)/(im + csch(x))]
    @test_int [csch(x)^1/(im + csch(x)), x, 1, (im*coth(x))/(im + csch(x))]
    @test_int [csch(x)^2/(im + csch(x)), x, 3, -atanh(cosh(x)) + coth(x)/(im + csch(x))]
    @test_int [csch(x)^3/(im + csch(x)), x, 4, im*atanh(cosh(x)) - coth(x) - (im*coth(x))/(im + csch(x))]
    @test_int [csch(x)^4/(im + csch(x)), x, 6, (3/2)*atanh(cosh(x)) + 2*im*coth(x) - (3/2)*coth(x)*csch(x) + (coth(x)*csch(x)^2)/(im + csch(x))]


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2!=0=#


    @test_int [(a + b*csch(c + d*x))^4, x, 6, a^4*x - (2*a*b*(2*a^2 - b^2)*atanh(cosh(c + d*x)))/d - (b^2*(17*a^2 - 2*b^2)*coth(c + d*x))/(3*d) - (4*a*b^3*coth(c + d*x)*csch(c + d*x))/(3*d) - (b^2*coth(c + d*x)*(a + b*csch(c + d*x))^2)/(3*d)]
    @test_int [(a + b*csch(c + d*x))^3, x, 5, a^3*x - (b*(6*a^2 - b^2)*atanh(cosh(c + d*x)))/(2*d) - (5*a*b^2*coth(c + d*x))/(2*d) - (b^2*coth(c + d*x)*(a + b*csch(c + d*x)))/(2*d)]
    @test_int [(a + b*csch(c + d*x))^2, x, 4, a^2*x - (2*a*b*atanh(cosh(c + d*x)))/d - (b^2*coth(c + d*x))/d]
    @test_int [(a + b*csch(c + d*x))^1, x, 2, a*x - (b*atanh(cosh(c + d*x)))/d]
    @test_int [1/(a + b*csch(c + d*x))^1, x, 4, x/a + (2*b*atanh((a - b*tanh((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/(a*sqrt(a^2 + b^2)*d)]
    @test_int [1/(a + b*csch(c + d*x))^2, x, 6, x/a^2 + (2*b*(2*a^2 + b^2)*atanh((a - b*tanh((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/(a^2*(a^2 + b^2)^(3/2)*d) - (b^2*coth(c + d*x))/(a*(a^2 + b^2)*d*(a + b*csch(c + d*x)))]
    @test_int [1/(a + b*csch(c + d*x))^3, x, 7, x/a^3 + (b*(6*a^4 + 5*a^2*b^2 + 2*b^4)*atanh((a - b*tanh((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/(a^3*(a^2 + b^2)^(5/2)*d) - (b^2*coth(c + d*x))/(2*a*(a^2 + b^2)*d*(a + b*csch(c + d*x))^2) - (b^2*(5*a^2 + 2*b^2)*coth(c + d*x))/(2*a^2*(a^2 + b^2)^2*d*(a + b*csch(c + d*x)))]


    @test_int [sinh(x)^3/(a + b*csch(x)), x, 8, (b*(a^2 - 2*b^2)*x)/(2*a^4) - (2*b^4*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a^4*sqrt(a^2 + b^2)) - ((2*a^2 - 3*b^2)*cosh(x))/(3*a^3) - (b*cosh(x)*sinh(x))/(2*a^2) + (cosh(x)*sinh(x)^2)/(3*a)]
    @test_int [sinh(x)^2/(a + b*csch(x)), x, 7, -(((a^2 - 2*b^2)*x)/(2*a^3)) + (2*b^3*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a^3*sqrt(a^2 + b^2)) - (b*cosh(x))/a^2 + (cosh(x)*sinh(x))/(2*a)]
    @test_int [sinh(x)^1/(a + b*csch(x)), x, 6, -((b*x)/a^2) - (2*b^2*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2*sqrt(a^2 + b^2)) + cosh(x)/a]
    @test_int [csch(x)^1/(a + b*csch(x)), x, 4, -((2*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/sqrt(a^2 + b^2))]
    @test_int [csch(x)^2/(a + b*csch(x)), x, 6, -(atanh(cosh(x))/b) + (2*a*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(b*sqrt(a^2 + b^2))]
    @test_int [csch(x)^3/(a + b*csch(x)), x, 7, (a*atanh(cosh(x)))/b^2 - (2*a^2*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(b^2*sqrt(a^2 + b^2)) - coth(x)/b]
    @test_int [csch(x)^4/(a + b*csch(x)), x, 8, -(((2*a^2 - b^2)*atanh(cosh(x)))/(2*b^3)) + (2*a^3*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(b^3*sqrt(a^2 + b^2)) + (a*coth(x))/b^2 - (coth(x)*csch(x))/(2*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*csch(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2=0=#


    @test_int [cosh(x)^4/(im + csch(x)), x, 7, (im*x)/8 + cosh(x)^3/3 + (1/8)*im*cosh(x)*sinh(x) - (1/4)*im*cosh(x)^3*sinh(x)]
    @test_int [cosh(x)^3/(im + csch(x)), x, 6, sinh(x)^2/2 - (1/3)*im*sinh(x)^3]
    @test_int [cosh(x)^2/(im + csch(x)), x, 5, (im*x)/2 + cosh(x) - (1/2)*im*cosh(x)*sinh(x)]
    @test_int [cosh(x)^1/(im + csch(x)), x, 4, log(im - sinh(x)) - im*sinh(x)]
    @test_int [sech(x)^1/(im + csch(x)), x, 6, (-(1/2))*im*atan(sinh(x)) - sech(x)^2/2 + (1/2)*im*sech(x)*tanh(x)]
    @test_int [sech(x)^2/(im + csch(x)), x, 6, (-(1/3))*sech(x)^3 - (1/3)*im*tanh(x)^3]
    @test_int [sech(x)^3/(im + csch(x)), x, 7, (-(1/8))*im*atan(sinh(x)) - sech(x)^4/4 - (1/8)*im*sech(x)*tanh(x) + (1/4)*im*sech(x)^3*tanh(x)]
    @test_int [sech(x)^4/(im + csch(x)), x, 7, (-(1/5))*sech(x)^5 - (1/3)*im*tanh(x)^3 + (1/5)*im*tanh(x)^5]


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2!=0=#


    @test_int [cosh(x)^5/(a + b*csch(x)), x, 5, -((b*(a^2 + b^2)^2*log(b + a*sinh(x)))/a^6) + ((a^2 + b^2)^2*sinh(x))/a^5 - (b*(2*a^2 + b^2)*sinh(x)^2)/(2*a^4) + ((2*a^2 + b^2)*sinh(x)^3)/(3*a^3) - (b*sinh(x)^4)/(4*a^2) + sinh(x)^5/(5*a)]
    @test_int [cosh(x)^4/(a + b*csch(x)), x, 7, ((3*a^4 + 12*a^2*b^2 + 8*b^4)*x)/(8*a^5) + (2*b*(a^2 + b^2)^(3/2)*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/a^5 - (cosh(x)^3*(4*b - 3*a*sinh(x)))/(12*a^2) - (cosh(x)*(8*b*(a^2 + b^2) - a*(3*a^2 + 4*b^2)*sinh(x)))/(8*a^4)]
    @test_int [cosh(x)^3/(a + b*csch(x)), x, 5, -((b*(a^2 + b^2)*log(b + a*sinh(x)))/a^4) + ((a^2 + b^2)*sinh(x))/a^3 - (b*sinh(x)^2)/(2*a^2) + sinh(x)^3/(3*a)]
    @test_int [cosh(x)^2/(a + b*csch(x)), x, 6, ((a^2 + 2*b^2)*x)/(2*a^3) + (2*b*sqrt(a^2 + b^2)*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/a^3 - (cosh(x)*(2*b - a*sinh(x)))/(2*a^2)]
    @test_int [cosh(x)^1/(a + b*csch(x)), x, 5, -((b*log(b + a*sinh(x)))/a^2) + sinh(x)/a]
    @test_int [sech(x)^1/(a + b*csch(x)), x, 4, log(im - sinh(x))/(2*(im*a + b)) - log(im + sinh(x))/(2*(im*a - b)) - (b*log(b + a*sinh(x)))/(a^2 + b^2)]
    @test_int [sech(x)^2/(a + b*csch(x)), x, 6, (2*a*b*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2) - (sech(x)*(b - a*sinh(x)))/(a^2 + b^2)]
    @test_int [sech(x)^3/(a + b*csch(x)), x, 6, -((im*a*log(im - sinh(x)))/(4*(a - im*b)^2)) + (im*a*log(im + sinh(x)))/(4*(a + im*b)^2) - (a^2*b*log(b + a*sinh(x)))/(a^2 + b^2)^2 - (sech(x)^2*(b - a*sinh(x)))/(2*(a^2 + b^2))]
    @test_int [sech(x)^4/(a + b*csch(x)), x, 7, (2*a^3*b*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) - (sech(x)^3*(b - a*sinh(x)))/(3*(a^2 + b^2)) - (sech(x)*(3*a^2*b - a*(2*a^2 - b^2)*sinh(x)))/(3*(a^2 + b^2)^2)]
    @test_int [sech(x)^5/(a + b*csch(x)), x, 7, -((a*(3*im*a + b)*log(im - sinh(x)))/(16*(a - im*b)^3)) + (a*(3*a + im*b)*log(im + sinh(x)))/(16*(im*a - b)^3) - (a^4*b*log(b + a*sinh(x)))/(a^2 + b^2)^3 - (sech(x)^4*(b - a*sinh(x)))/(4*(a^2 + b^2)) - (sech(x)^2*(4*a^2*b - a*(3*a^2 - b^2)*sinh(x)))/(8*(a^2 + b^2)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*csch(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2=0=#


    @test_int [tanh(x)^5/(im + csch(x)), x, 3, (-(21/32))*im*log(im - sinh(x)) - (11/32)*im*log(im + sinh(x)) + im/(32*(1 - im*sinh(x))^2) - im/(4*(1 - im*sinh(x))) - im/(24*(1 + im*sinh(x))^3) + (9*im)/(32*(1 + im*sinh(x))^2) - (15*im)/(16*(1 + im*sinh(x)))]
    @test_int [tanh(x)^4/(im + csch(x)), x, 5, (-im)*x + (1/15)*(15*im - 8*csch(x))*tanh(x) + (1/15)*(5*im - 4*csch(x))*tanh(x)^3 + (1/5)*(im - csch(x))*tanh(x)^5]
    @test_int [tanh(x)^3/(im + csch(x)), x, 3, (-(11/16))*im*log(im - sinh(x)) - (5/16)*im*log(im + sinh(x)) - im/(8*(1 - im*sinh(x))) + im/(8*(1 + im*sinh(x))^2) - (3*im)/(4*(1 + im*sinh(x)))]
    @test_int [tanh(x)^2/(im + csch(x)), x, 4, (-im)*x + (1/3)*(3*im - 2*csch(x))*tanh(x) + (1/3)*(im - csch(x))*tanh(x)^3]
    @test_int [tanh(x)^1/(im + csch(x)), x, 3, (-(3/4))*im*log(im - sinh(x)) - (1/4)*im*log(im + sinh(x)) - im/(2*(1 + im*sinh(x)))]
    @test_int [coth(x)^1/(im + csch(x)), x, 2, (-im)*log(im - sinh(x))]
    @test_int [coth(x)^2/(im + csch(x)), x, 3, (-im)*x - atanh(cosh(x))]
    @test_int [coth(x)^3/(im + csch(x)), x, 3, -csch(x) - im*log(sinh(x))]
    @test_int [coth(x)^4/(im + csch(x)), x, 4, (-im)*x - (1/2)*atanh(cosh(x)) + (1/2)*coth(x)*(2*im - csch(x))]
    @test_int [coth(x)^5/(im + csch(x)), x, 3, -csch(x) + (1/2)*im*csch(x)^2 - csch(x)^3/3 - im*log(sinh(x))]
    @test_int [coth(x)^6/(im + csch(x)), x, 5, (-im)*x - (3/8)*atanh(cosh(x)) + (1/12)*coth(x)^3*(4*im - 3*csch(x)) + (1/8)*coth(x)*(8*im - 3*csch(x))]


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2!=0=#


    @test_int [tanh(x)^5/(a + b*csch(x)), x, 11, -((b^5*atan(sinh(x)))/(a^2 + b^2)^3) - (b^3*atan(sinh(x)))/(2*(a^2 + b^2)^2) - (3*b*atan(sinh(x)))/(8*(a^2 + b^2)) + (b^6*log(a + b*csch(x)))/(a*(a^2 + b^2)^3) + log(sinh(x))/a - (a*(a^4 + 3*a^2*b^2 + 3*b^4)*log(tanh(x)))/(a^2 + b^2)^3 + (3*b*sech(x)*tanh(x))/(8*(a^2 + b^2)) - ((a*(a^2 + 2*b^2) - b^3*csch(x))*tanh(x)^2)/(2*(a^2 + b^2)^2) - ((a - b*csch(x))*tanh(x)^4)/(4*(a^2 + b^2))]
    @test_int [tanh(x)^4/(a + b*csch(x)), x, 16, (a*b^2*x)/(a^2 + b^2)^2 + (b^4*x)/(a*(a^2 + b^2)^2) + (a*x)/(a^2 + b^2) + (2*b^5*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a*(a^2 + b^2)^(5/2)) + (b^3*sech(x))/(a^2 + b^2)^2 + (b*sech(x))/(a^2 + b^2) - (b*sech(x)^3)/(3*(a^2 + b^2)) - (a*b^2*tanh(x))/(a^2 + b^2)^2 - (a*tanh(x))/(a^2 + b^2) - (a*tanh(x)^3)/(3*(a^2 + b^2))]
    @test_int [tanh(x)^3/(a + b*csch(x)), x, 8, -((b^3*atan(sinh(x)))/(a^2 + b^2)^2) - (b*atan(sinh(x)))/(2*(a^2 + b^2)) + (b^4*log(a + b*csch(x)))/(a*(a^2 + b^2)^2) + log(sinh(x))/a - (a*(a^2 + 2*b^2)*log(tanh(x)))/(a^2 + b^2)^2 - ((a - b*csch(x))*tanh(x)^2)/(2*(a^2 + b^2))]
    @test_int [tanh(x)^2/(a + b*csch(x)), x, 10, (a*x)/(a^2 + b^2) + (b^2*x)/(a*(a^2 + b^2)) + (2*b^3*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a*(a^2 + b^2)^(3/2)) + (b*sech(x))/(a^2 + b^2) - (a*tanh(x))/(a^2 + b^2)]
    @test_int [tanh(x)^1/(a + b*csch(x)), x, 6, -((b*atan(sinh(x)))/(a^2 + b^2)) + (b^2*log(a + b*csch(x)))/(a*(a^2 + b^2)) + log(sinh(x))/a - (a*log(tanh(x)))/(a^2 + b^2)]
    @test_int [coth(x)^1/(a + b*csch(x)), x, 4, log(a + b*csch(x))/a + log(sinh(x))/a]
    @test_int [coth(x)^2/(a + b*csch(x)), x, 8, x/a - atanh(cosh(x))/b + (2*sqrt(a^2 + b^2)*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a*b)]
    @test_int [coth(x)^3/(a + b*csch(x)), x, 3, -(csch(x)/b) + (1/a + a/b^2)*log(a + b*csch(x)) + log(sinh(x))/a]
    @test_int [coth(x)^4/(a + b*csch(x)), x, 7, x/a - ((2*a^2 + 3*b^2)*atanh(cosh(x)))/(2*b^3) + (2*(a^2 + b^2)^(3/2)*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a*b^3) + (a*coth(x))/b^2 - (coth(x)*csch(x))/(2*b)]
    @test_int [coth(x)^5/(a + b*csch(x)), x, 3, -(((a^2 + 2*b^2)*csch(x))/b^3) + (a*csch(x)^2)/(2*b^2) - csch(x)^3/(3*b) + ((a^2 + b^2)^2*log(a + b*csch(x)))/(a*b^4) + log(sinh(x))/a]
    @test_int [coth(x)^6/(a + b*csch(x)), x, 16, x/a - (3*atanh(cosh(x)))/(8*b) + ((a^2 + 3*b^2)*atanh(cosh(x)))/(2*b^3) - ((a^4 + 3*a^2*b^2 + 3*b^4)*atanh(cosh(x)))/b^5 + (2*(a^2 + b^2)^(5/2)*atanh((a - b*tanh(x/2))/sqrt(a^2 + b^2)))/(a*b^5) - (a*coth(x))/b^2 + (a*(a^2 + 3*b^2)*coth(x))/b^4 + (a*coth(x)^3)/(3*b^2) + (3*coth(x)*csch(x))/(8*b) - ((a^2 + 3*b^2)*coth(x)*csch(x))/(2*b^3) - (coth(x)*csch(x)^3)/(4*b)]
    @test_int [coth(x)^7/(a + b*csch(x)), x, 3, -(((a^4 + 3*a^2*b^2 + 3*b^4)*csch(x))/b^5) + (a*(a^2 + 3*b^2)*csch(x)^2)/(2*b^4) - ((a^2 + 3*b^2)*csch(x)^3)/(3*b^3) + (a*csch(x)^4)/(4*b^2) - csch(x)^5/(5*b) + ((a^2 + b^2)^3*log(a + b*csch(x)))/(a*b^6) + log(sinh(x))/a]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*csch(c+d*x)^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*(csch(a*c+b*c*x)^2)^(m/2)=#


    @test_int [ℯ^(c*(a + b*x))*(csch(a*c + b*c*x)^2)^(7/2), x, 6, -((32*sqrt(csch(a*c + b*c*x)^2)*sinh(a*c + b*c*x))/(3*b*c*(1 - ℯ^(2*c*(a + b*x)))^6)) + (192*sqrt(csch(a*c + b*c*x)^2)*sinh(a*c + b*c*x))/(5*b*c*(1 - ℯ^(2*c*(a + b*x)))^5) - (48*sqrt(csch(a*c + b*c*x)^2)*sinh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^4) + (64*sqrt(csch(a*c + b*c*x)^2)*sinh(a*c + b*c*x))/(3*b*c*(1 - ℯ^(2*c*(a + b*x)))^3)]
    @test_int [ℯ^(c*(a + b*x))*(csch(a*c + b*c*x)^2)^(5/2), x, 6, (-4*sqrt(csch(a*c + b*c*x)^2)*sinh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^4) + (32*sqrt(csch(a*c + b*c*x)^2)*sinh(a*c + b*c*x))/(3*b*c*(1 - ℯ^(2*c*(a + b*x)))^3) - (8*sqrt(csch(a*c + b*c*x)^2)*sinh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^2)]
    @test_int [ℯ^(c*(a + b*x))*(csch(a*c + b*c*x)^2)^(3/2), x, 4, (-2*ℯ^(4*c*(a + b*x))*sqrt(csch(a*c + b*c*x)^2)*sinh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^2)]
    @test_int [ℯ^(c*(a + b*x))*sqrt(csch(a*c + b*c*x)^2), x, 4, (sqrt(csch(a*c + b*c*x)^2)*log(1 - ℯ^(2*c*(a + b*x)))*sinh(a*c + b*c*x))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))/sqrt(csch(a*c + b*c*x)^2), x, 5, (ℯ^(2*c*(a + b*x))*csch(a*c + b*c*x))/(4*b*c*sqrt(csch(a*c + b*c*x)^2)) - (x*csch(a*c + b*c*x))/(2*sqrt(csch(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(csch(a*c + b*c*x)^2)^(3/2), x, 6, csch(a*c + b*c*x)/(16*b*c*ℯ^(2*c*(a + b*x))*sqrt(csch(a*c + b*c*x)^2)) - (3*ℯ^(2*c*(a + b*x))*csch(a*c + b*c*x))/(16*b*c*sqrt(csch(a*c + b*c*x)^2)) + (ℯ^(4*c*(a + b*x))*csch(a*c + b*c*x))/(32*b*c*sqrt(csch(a*c + b*c*x)^2)) + (3*x*csch(a*c + b*c*x))/(8*sqrt(csch(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(csch(a*c + b*c*x)^2)^(5/2), x, 6, csch(a*c + b*c*x)/(128*b*c*ℯ^(4*c*(a + b*x))*sqrt(csch(a*c + b*c*x)^2)) - (5*csch(a*c + b*c*x))/(64*b*c*ℯ^(2*c*(a + b*x))*sqrt(csch(a*c + b*c*x)^2)) + (5*ℯ^(2*c*(a + b*x))*csch(a*c + b*c*x))/(32*b*c*sqrt(csch(a*c + b*c*x)^2)) - (5*ℯ^(4*c*(a + b*x))*csch(a*c + b*c*x))/(128*b*c*sqrt(csch(a*c + b*c*x)^2)) + (ℯ^(6*c*(a + b*x))*csch(a*c + b*c*x))/(192*b*c*sqrt(csch(a*c + b*c*x)^2)) - (5*x*csch(a*c + b*c*x))/(16*sqrt(csch(a*c + b*c*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*csch(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*csch(b*log(c*x^n))^(p/2)=#


    @test_int [x^5/csch(2*log(c*x))^(1/2), x, 6, -((2*x^2)/(21*c^4*sqrt(csch(2*log(c*x))))) + x^6/(7*sqrt(csch(2*log(c*x)))) + (2*Elliptic.F(acsc(c*x), -1))/(21*c^7*sqrt(1 - 1/(c^4*x^4))*x*sqrt(csch(2*log(c*x))))]
    @test_int [x^4/csch(2*log(c*x))^(1/2), x, 3, ((c^4 - 1/x^4)*x^5)/(6*c^4*sqrt(csch(2*log(c*x))))]
    @test_int [x^3/csch(2*log(c*x))^(1/2), x, 9, -(2/(5*c^4*sqrt(csch(2*log(c*x))))) + x^4/(5*sqrt(csch(2*log(c*x)))) - (2*Elliptic.E(acsc(c*x), -1))/(5*c^5*sqrt(1 - 1/(c^4*x^4))*x*sqrt(csch(2*log(c*x)))) + (2*Elliptic.F(acsc(c*x), -1))/(5*c^5*sqrt(1 - 1/(c^4*x^4))*x*sqrt(csch(2*log(c*x))))]
    @test_int [x^2/csch(2*log(c*x))^(1/2), x, 6, x^3/(4*sqrt(csch(2*log(c*x)))) - atanh(sqrt(1 - 1/(c^4*x^4)))/(4*c^4*sqrt(1 - 1/(c^4*x^4))*x*sqrt(csch(2*log(c*x))))]
    @test_int [x^1/csch(2*log(c*x))^(1/2), x, 5, x^2/(3*sqrt(csch(2*log(c*x)))) + (2*Elliptic.F(acsc(c*x), -1))/(3*c^3*sqrt(1 - 1/(c^4*x^4))*x*sqrt(csch(2*log(c*x))))]
    @test_int [x^0/csch(2*log(c*x))^(1/2), x, 6, x/(2*sqrt(csch(2*log(c*x)))) + acsc(c^2*x^2)/(2*c^2*sqrt(1 - 1/(c^4*x^4))*x*sqrt(csch(2*log(c*x))))]
    @test_int [csch(2*log(c*x))^(1/2)/x^1, x, 3, im*sqrt(csch(2*log(c*x)))*Elliptic.F(pi/4 - im*log(c*x), 2)*sqrt(im*sinh(2*log(c*x)))]
    @test_int [csch(2*log(c*x))^(1/2)/x^2, x, 5, (-(1/2))*c^2*sqrt(1 - 1/(c^4*x^4))*x*acsc(c^2*x^2)*sqrt(csch(2*log(c*x)))]
    @test_int [csch(2*log(c*x))^(1/2)/x^3, x, 7, (-c^3)*sqrt(1 - 1/(c^4*x^4))*x*sqrt(csch(2*log(c*x)))*Elliptic.E(acsc(c*x), -1) + c^3*sqrt(1 - 1/(c^4*x^4))*x*sqrt(csch(2*log(c*x)))*Elliptic.F(acsc(c*x), -1)]
    @test_int [csch(2*log(c*x))^(1/2)/x^4, x, 3, (1/2)*(c^4 - 1/x^4)*x*sqrt(csch(2*log(c*x)))]
    @test_int [csch(2*log(c*x))^(1/2)/x^5, x, 5, (1/3)*(c^4 - 1/x^4)*sqrt(csch(2*log(c*x))) - (1/3)*c^5*sqrt(1 - 1/(c^4*x^4))*x*sqrt(csch(2*log(c*x)))*Elliptic.F(acsc(c*x), -1)]


    @test_int [x^8/csch(2*log(c*x))^(3/2), x, 8, x/(32*c^4*(c^4 - 1/x^4)*csch(2*log(c*x))^(3/2)) - x^5/(16*(c^4 - 1/x^4)*csch(2*log(c*x))^(3/2)) + x^9/(12*csch(2*log(c*x))^(3/2)) + atanh(sqrt(1 - 1/(c^4*x^4)))/(32*c^12*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2))]
    @test_int [x^7/csch(2*log(c*x))^(3/2), x, 7, 4/(77*c^4*(c^4 - 1/x^4)*csch(2*log(c*x))^(3/2)) - (6*x^4)/(77*(c^4 - 1/x^4)*csch(2*log(c*x))^(3/2)) + x^8/(11*csch(2*log(c*x))^(3/2)) - (4*Elliptic.F(acsc(c*x), -1))/(77*c^11*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2))]
    @test_int [x^6/csch(2*log(c*x))^(3/2), x, 3, ((c^4 - 1/x^4)*x^7)/(10*c^4*csch(2*log(c*x))^(3/2))]
    @test_int [x^5/csch(2*log(c*x))^(3/2), x, 10, 4/(15*c^4*(c^4 - 1/x^4)*x^2*csch(2*log(c*x))^(3/2)) - (2*x^2)/(15*(c^4 - 1/x^4)*csch(2*log(c*x))^(3/2)) + x^6/(9*csch(2*log(c*x))^(3/2)) + (4*Elliptic.E(acsc(c*x), -1))/(15*c^9*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2)) - (4*Elliptic.F(acsc(c*x), -1))/(15*c^9*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2))]
    @test_int [x^4/csch(2*log(c*x))^(3/2), x, 7, -((3*x)/(16*(c^4 - 1/x^4)*csch(2*log(c*x))^(3/2))) + x^5/(8*csch(2*log(c*x))^(3/2)) + (3*atanh(sqrt(1 - 1/(c^4*x^4))))/(16*c^8*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2))]
    @test_int [x^3/csch(2*log(c*x))^(3/2), x, 6, -(2/(7*(c^4 - 1/x^4)*csch(2*log(c*x))^(3/2))) + x^4/(7*csch(2*log(c*x))^(3/2)) - (4*Elliptic.F(acsc(c*x), -1))/(7*c^7*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2))]
    @test_int [x^2/csch(2*log(c*x))^(3/2), x, 7, -(1/(2*(c^4 - 1/x^4)*x*csch(2*log(c*x))^(3/2))) + x^3/(6*csch(2*log(c*x))^(3/2)) - acsc(c^2*x^2)/(2*c^6*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2))]
    @test_int [x^1/csch(2*log(c*x))^(3/2), x, 9, -(6/(5*(c^4 - 1/x^4)*x^2*csch(2*log(c*x))^(3/2))) + x^2/(5*csch(2*log(c*x))^(3/2)) - (12*Elliptic.E(acsc(c*x), -1))/(5*c^5*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2)) + (12*Elliptic.F(acsc(c*x), -1))/(5*c^5*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2))]
    @test_int [x^0/csch(2*log(c*x))^(3/2), x, 7, 3/(4*(c^4 - 1/x^4)*x^3*csch(2*log(c*x))^(3/2)) + x/(4*csch(2*log(c*x))^(3/2)) - (3*atanh(sqrt(1 - 1/(c^4*x^4))))/(4*c^4*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2))]
    @test_int [csch(2*log(c*x))^(3/2)/x^1, x, 4, (-cosh(2*log(c*x)))*sqrt(csch(2*log(c*x))) + (im*Elliptic.E(pi/4 - im*log(c*x), 2))/(sqrt(csch(2*log(c*x)))*sqrt(im*sinh(2*log(c*x))))]
    @test_int [csch(2*log(c*x))^(3/2)/x^2, x, 3, (-(1/2))*(c^4 - 1/x^4)*x^3*csch(2*log(c*x))^(3/2)]
    @test_int [csch(2*log(c*x))^(3/2)/x^3, x, 5, (-(1/2))*(c^4 - 1/x^4)*x^2*csch(2*log(c*x))^(3/2) + (1/2)*c^5*(1 - 1/(c^4*x^4))^(3/2)*x^3*csch(2*log(c*x))^(3/2)*Elliptic.F(acsc(c*x), -1)]
    @test_int [csch(2*log(c*x))^(3/2)/x^4, x, 6, (-(1/2))*(c^4 - 1/x^4)*x*csch(2*log(c*x))^(3/2) + (1/2)*c^6*(1 - 1/(c^4*x^4))^(3/2)*x^3*acsc(c^2*x^2)*csch(2*log(c*x))^(3/2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*csch(a+b*log(c*x^n))^p=#


    @test_int [csch(a + b*log(c*x^n))^1, x, 4, -((2*ℯ^a*x*(c*x^n)^b*HypergeometricFunctions._₂F₁(1, (b + 1/n)/(2*b), (1/2)*(3 + 1/(b*n)), ℯ^(2*a)*(c*x^n)^(2*b)))/(1 + b*n))]
    @test_int [csch(a + b*log(c*x^n))^2, x, 4, (4*ℯ^(2*a)*x*(c*x^n)^(2*b)*HypergeometricFunctions._₂F₁(2, (1/2)*(2 + 1/(b*n)), (1/2)*(4 + 1/(b*n)), ℯ^(2*a)*(c*x^n)^(2*b)))/(1 + 2*b*n)]
    @test_int [csch(a + b*log(c*x^n))^3, x, 4, -((8*ℯ^(3*a)*x*(c*x^n)^(3*b)*HypergeometricFunctions._₂F₁(3, (3*b + 1/n)/(2*b), (1/2)*(5 + 1/(b*n)), ℯ^(2*a)*(c*x^n)^(2*b)))/(1 + 3*b*n))]
    @test_int [csch(a + b*log(c*x^n))^4, x, 4, (16*ℯ^(4*a)*x*(c*x^n)^(4*b)*HypergeometricFunctions._₂F₁(4, (1/2)*(4 + 1/(b*n)), (1/2)*(6 + 1/(b*n)), ℯ^(2*a)*(c*x^n)^(2*b)))/(1 + 4*b*n)]

    @test_int [2*b^2*n^2*csch(a + b*log(c*x^n))^3 - (1 - b^2*n^2)*csch(a + b*log(c*x^n)), x, -9, (-x)*csch(a + b*log(c*x^n)) - b*n*x*coth(a + b*log(c*x^n))*csch(a + b*log(c*x^n))]


    @test_int [csch(a + 2*log(c*x^(1/2)))^3, x, 3, -((2*c^6)/(ℯ^a*(c^4 - 1/(ℯ^(2*a)*x^2))^2))]
    @test_int [csch(a + 2*log(c/x^(1/2)))^3, x, 4, (2*c^2)/(ℯ^(3*a)*(ℯ^(-2*a) - c^4/x^2)^2)]
    @test_int [csch(a + 1/(n*(-2 + p))*log(c*x^n))^p, x, 3, -((ℯ^(2*a)*(2 - p)*x*(1 - (c*x^n)^(2/(n*(2 - p)))/ℯ^(2*a))*csch(a - log(c*x^n)/(n*(2 - p)))^p)/((c*x^n)^(2/(n*(2 - p)))*(2*(1 - p))))]
    @test_int [csch(a - 1/(n*(-2 + p))*log(c*x^n))^p, x, 3, ((2 - p)*x*(1 - 1/(ℯ^(2*a)*(c*x^n)^(2/(n*(2 - p)))))*csch(a + log(c*x^n)/(n*(2 - p)))^p)/(2*(1 - p))]


    @test_int [csch(a + b*log(c*x^n))/x, x, 2, -(atanh(cosh(a + b*log(c*x^n)))/(b*n))]
    @test_int [csch(a + b*log(c*x^n))^2/x, x, 3, -(coth(a + b*log(c*x^n))/(b*n))]
    @test_int [csch(a + b*log(c*x^n))^3/x, x, 3, atanh(cosh(a + b*log(c*x^n)))/(2*b*n) - (coth(a + b*log(c*x^n))*csch(a + b*log(c*x^n)))/(2*b*n)]
    @test_int [csch(a + b*log(c*x^n))^4/x, x, 3, coth(a + b*log(c*x^n))/(b*n) - coth(a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [csch(a + b*log(c*x^n))^5/x, x, 4, -((3*atanh(cosh(a + b*log(c*x^n))))/(8*b*n)) + (3*coth(a + b*log(c*x^n))*csch(a + b*log(c*x^n)))/(8*b*n) - (coth(a + b*log(c*x^n))*csch(a + b*log(c*x^n))^3)/(4*b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*csch(a+b*log(c*x^n))^(p/2)=#


    @test_int [csch(a + b*log(c*x^n))^(5/2)/x, x, 4, -((2*cosh(a + b*log(c*x^n))*csch(a + b*log(c*x^n))^(3/2))/(3*b*n)) + (2*im*sqrt(csch(a + b*log(c*x^n)))*Elliptic.F((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2)*sqrt(im*sinh(a + b*log(c*x^n))))/(3*b*n)]
    @test_int [csch(a + b*log(c*x^n))^(3/2)/x, x, 4, -((2*cosh(a + b*log(c*x^n))*sqrt(csch(a + b*log(c*x^n))))/(b*n)) - (2*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2))/(b*n*sqrt(csch(a + b*log(c*x^n)))*sqrt(im*sinh(a + b*log(c*x^n))))]
    @test_int [sqrt(csch(a + b*log(c*x^n)))/x, x, 3, -((2*im*sqrt(csch(a + b*log(c*x^n)))*Elliptic.F((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2)*sqrt(im*sinh(a + b*log(c*x^n))))/(b*n))]
    @test_int [1/(x*sqrt(csch(a + b*log(c*x^n)))), x, 3, -((2*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2))/(b*n*sqrt(csch(a + b*log(c*x^n)))*sqrt(im*sinh(a + b*log(c*x^n)))))]
    @test_int [1/(x*csch(a + b*log(c*x^n))^(3/2)), x, 4, (2*cosh(a + b*log(c*x^n)))/(3*b*n*sqrt(csch(a + b*log(c*x^n)))) + (2*im*sqrt(csch(a + b*log(c*x^n)))*Elliptic.F((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2)*sqrt(im*sinh(a + b*log(c*x^n))))/(3*b*n)]
    @test_int [1/(x*csch(a + b*log(c*x^n))^(5/2)), x, 4, (2*cosh(a + b*log(c*x^n)))/(5*b*n*csch(a + b*log(c*x^n))^(3/2)) + (6*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2))/(5*b*n*sqrt(csch(a + b*log(c*x^n)))*sqrt(im*sinh(a + b*log(c*x^n))))]
    end
