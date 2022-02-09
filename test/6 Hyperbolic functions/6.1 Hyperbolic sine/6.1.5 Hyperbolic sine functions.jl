@testset "6.1.5 Hyperbolic sine functions" begin
    (A, B, C, F, a, b, c, d, e, f, m, n, x, ) = @variables A B C F a b c d e f m n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Hyperbolic*Sines=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*sinh(c+d*x))^n*(A+B*sinh(c+d*x)+C*sinh(c+d*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(a+b*x)^n=#


    @test_int [sinh(a + b*x), x, 1, cosh(a + b*x)/b]
    @test_int [sinh(a + b*x)^2, x, 2, -(x/2) + (cosh(a + b*x)*sinh(a + b*x))/(2*b)]
    @test_int [sinh(a + b*x)^3, x, 2, -(cosh(a + b*x)/b) + cosh(a + b*x)^3/(3*b)]
    @test_int [sinh(a + b*x)^4, x, 3, (3*x)/8 - (3*cosh(a + b*x)*sinh(a + b*x))/(8*b) + (cosh(a + b*x)*sinh(a + b*x)^3)/(4*b)]
    @test_int [sinh(a + b*x)^5, x, 2, cosh(a + b*x)/b - (2*cosh(a + b*x)^3)/(3*b) + cosh(a + b*x)^5/(5*b)]
    @test_int [sinh(a + b*x)^6, x, 4, -((5*x)/16) + (5*cosh(a + b*x)*sinh(a + b*x))/(16*b) - (5*cosh(a + b*x)*sinh(a + b*x)^3)/(24*b) + (cosh(a + b*x)*sinh(a + b*x)^5)/(6*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(a+b*x)^(n/2)=#


    @test_int [sinh(a + b*x)^(7/2), x, 4, -((10*im*Elliptic.F((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(21*b*sqrt(sinh(a + b*x)))) - (10*cosh(a + b*x)*sqrt(sinh(a + b*x)))/(21*b) + (2*cosh(a + b*x)*sinh(a + b*x)^(5/2))/(7*b)]
    @test_int [sinh(a + b*x)^(5/2), x, 3, (6*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(sinh(a + b*x)))/(5*b*sqrt(im*sinh(a + b*x))) + (2*cosh(a + b*x)*sinh(a + b*x)^(3/2))/(5*b)]
    @test_int [sinh(a + b*x)^(3/2), x, 3, (2*im*Elliptic.F((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(3*b*sqrt(sinh(a + b*x))) + (2*cosh(a + b*x)*sqrt(sinh(a + b*x)))/(3*b)]
    @test_int [sinh(a + b*x)^(1/2), x, 2, -((2*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(sinh(a + b*x)))/(b*sqrt(im*sinh(a + b*x))))]
    @test_int [1/sinh(a + b*x)^(1/2), x, 2, -((2*im*Elliptic.F((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(b*sqrt(sinh(a + b*x))))]
    @test_int [1/sinh(a + b*x)^(3/2), x, 3, -((2*cosh(a + b*x))/(b*sqrt(sinh(a + b*x)))) - (2*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(sinh(a + b*x)))/(b*sqrt(im*sinh(a + b*x)))]
    @test_int [1/sinh(a + b*x)^(5/2), x, 3, -((2*cosh(a + b*x))/(3*b*sinh(a + b*x)^(3/2))) + (2*im*Elliptic.F((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(3*b*sqrt(sinh(a + b*x)))]
    @test_int [1/sinh(a + b*x)^(7/2), x, 4, -((2*cosh(a + b*x))/(5*b*sinh(a + b*x)^(5/2))) + (6*cosh(a + b*x))/(5*b*sqrt(sinh(a + b*x))) + (6*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(sinh(a + b*x)))/(5*b*sqrt(im*sinh(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*sinh(a+b*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n/2=#


    @test_int [(b*sinh(c + d*x))^(7/2), x, 4, -((10*im*b^4*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(im*sinh(c + d*x)))/(21*d*sqrt(b*sinh(c + d*x)))) - (10*b^3*cosh(c + d*x)*sqrt(b*sinh(c + d*x)))/(21*d) + (2*b*cosh(c + d*x)*(b*sinh(c + d*x))^(5/2))/(7*d)]
    @test_int [(b*sinh(c + d*x))^(5/2), x, 3, (6*im*b^2*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(b*sinh(c + d*x)))/(5*d*sqrt(im*sinh(c + d*x))) + (2*b*cosh(c + d*x)*(b*sinh(c + d*x))^(3/2))/(5*d)]
    @test_int [(b*sinh(c + d*x))^(3/2),x, 3, (2*im*b^2*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(im*sinh(c + d*x)))/(3*d*sqrt(b*sinh(c + d*x))) + (2*b*cosh(c + d*x)*sqrt(b*sinh(c + d*x)))/(3*d)]
    @test_int [(b*sinh(c + d*x))^(1/2), x, 2, -((2*im*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(b*sinh(c + d*x)))/(d*sqrt(im*sinh(c + d*x))))]
    @test_int [1/(b*sinh(c + d*x))^(1/2), x, 2, -((2*im*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(im*sinh(c + d*x)))/(d*sqrt(b*sinh(c + d*x))))]
    @test_int [1/(b*sinh(c + d*x))^(3/2), x, 3, -((2*cosh(c + d*x))/(b*d*sqrt(b*sinh(c + d*x)))) - (2*im*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(b*sinh(c + d*x)))/(b^2*d*sqrt(im*sinh(c + d*x)))]
    @test_int [1/(b*sinh(c + d*x))^(5/2), x, 3, -((2*cosh(c + d*x))/(3*b*d*(b*sinh(c + d*x))^(3/2))) + (2*im*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(im*sinh(c + d*x)))/(3*b^2*d*sqrt(b*sinh(c + d*x)))]
    @test_int [1/(b*sinh(c + d*x))^(7/2), x, 4, -((2*cosh(c + d*x))/(5*b*d*(b*sinh(c + d*x))^(5/2))) + (6*cosh(c + d*x))/(5*b^3*d*sqrt(b*sinh(c + d*x))) + (6*im*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2)*sqrt(b*sinh(c + d*x)))/(5*b^4*d*sqrt(im*sinh(c + d*x)))]


    @test_int [(im*sinh(c + d*x))^(7/2), x, 3, -((10*im*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2))/(21*d)) + (10*im*cosh(c + d*x)*sqrt(im*sinh(c + d*x)))/(21*d) + (2*im*cosh(c + d*x)*(im*sinh(c + d*x))^(5/2))/(7*d)]
    @test_int [(im*sinh(c + d*x))^(5/2), x, 2, -((6*im*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2))/(5*d)) + (2*im*cosh(c + d*x)*(im*sinh(c + d*x))^(3/2))/(5*d)]
    @test_int [(im*sinh(c + d*x))^(3/2),x, 2, -((2*im*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2))/(3*d)) + (2*im*cosh(c + d*x)*sqrt(im*sinh(c + d*x)))/(3*d)]
    @test_int [(im*sinh(c + d*x))^(1/2), x, 1, -((2*im*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2))/d)]
    @test_int [1/(im*sinh(c + d*x))^(1/2), x, 1, -((2*im*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2))/d)]
    @test_int [1/(im*sinh(c + d*x))^(3/2), x, 2, (2*im*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2))/d + (2*im*cosh(c + d*x))/(d*sqrt(im*sinh(c + d*x)))]
    @test_int [1/(im*sinh(c + d*x))^(5/2), x, 2, -((2*im*Elliptic.F((1/2)*(im*c - pi/2 + im*d*x), 2))/(3*d)) + (2*im*cosh(c + d*x))/(3*d*(im*sinh(c + d*x))^(3/2))]
    @test_int [1/(im*sinh(c + d*x))^(7/2), x, 3, (6*im*Elliptic.E((1/2)*(im*c - pi/2 + im*d*x), 2))/(5*d) + (2*im*cosh(c + d*x))/(5*d*(im*sinh(c + d*x))^(5/2)) + (6*im*cosh(c + d*x))/(5*d*sqrt(im*sinh(c + d*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n/3=#


    @test_int [(b*sinh(c + d*x))^(4/3),x, 1, (3*cosh(c + d*x)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, -sinh(c + d*x)^2)*(b*sinh(c + d*x))^(7/3))/(7*b*d*sqrt(cosh(c + d*x)^2))]
    @test_int [(b*sinh(c + d*x))^(2/3),x, 1, (3*cosh(c + d*x)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, -sinh(c + d*x)^2)*(b*sinh(c + d*x))^(5/3))/(5*b*d*sqrt(cosh(c + d*x)^2))]
    @test_int [(b*sinh(c + d*x))^(1/3),x, 1, (3*cosh(c + d*x)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, -sinh(c + d*x)^2)*(b*sinh(c + d*x))^(4/3))/(4*b*d*sqrt(cosh(c + d*x)^2))]
    @test_int [1/(b*sinh(c + d*x))^(1/3),x, 1, (3*cosh(c + d*x)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, -sinh(c + d*x)^2)*(b*sinh(c + d*x))^(2/3))/(2*b*d*sqrt(cosh(c + d*x)^2))]
    @test_int [1/(b*sinh(c + d*x))^(2/3),x, 1, (3*cosh(c + d*x)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, -sinh(c + d*x)^2)*(b*sinh(c + d*x))^(1/3))/(b*d*sqrt(cosh(c + d*x)^2))]
    @test_int [1/(b*sinh(c + d*x))^(4/3),x, 1, -((3*cosh(c + d*x)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, -sinh(c + d*x)^2))/(b*d*sqrt(cosh(c + d*x)^2)*(b*sinh(c + d*x))^(1/3)))]


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [(b*sinh(c + d*x))^n, x, 1, (cosh(c + d*x)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, -sinh(c + d*x)^2)*(b*sinh(c + d*x))^(1 + n))/(b*d*(1 + n)*sqrt(cosh(c + d*x)^2))]


    @test_int [(im*sinh(c + d*x))^n, x, 1, -((im*cosh(c + d*x)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, -sinh(c + d*x)^2)*(im*sinh(c + d*x))^(1 + n))/(d*(1 + n)*sqrt(cosh(c + d*x)^2)))]
    @test_int [(-im*sinh(c + d*x))^n, x, 1, (im*cosh(c + d*x)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, -sinh(c + d*x)^2)*((-im)*sinh(c + d*x))^(1 + n))/(d*(1 + n)*sqrt(cosh(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*sinh(c+d*x))^n*when*a^2+b^2=0=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sinh(x)^4/(im + sinh(x)), x, 6, (3*im*x)/2 - 4*cosh(x) + (4*cosh(x)^3)/3 - (3/2)*im*cosh(x)*sinh(x) - (cosh(x)*sinh(x)^3)/(im + sinh(x))]
    @test_int [sinh(x)^3/(im + sinh(x)), x, 2, -((3*x)/2) - 2*im*cosh(x) + (3/2)*cosh(x)*sinh(x) - (cosh(x)*sinh(x)^2)/(im + sinh(x))]
    @test_int [sinh(x)^2/(im + sinh(x)), x, 3, (-im)*x + cosh(x) + (im*cosh(x))/(im + sinh(x))]
    @test_int [sinh(x)^1/(im + sinh(x)), x, 2, x - cosh(x)/(im + sinh(x))]
    @test_int [csch(x)^1/(im + sinh(x)), x, 3, im*atanh(cosh(x)) + cosh(x)/(im + sinh(x))]
    @test_int [csch(x)^2/(im + sinh(x)), x, 5, -atanh(cosh(x)) + 2*im*coth(x) + coth(x)/(im + sinh(x))]
    @test_int [csch(x)^3/(im + sinh(x)), x, 6, (-(3/2))*im*atanh(cosh(x)) - 2*coth(x) + (3/2)*im*coth(x)*csch(x) + (coth(x)*csch(x))/(im + sinh(x))]
    @test_int [csch(x)^4/(im + sinh(x)), x, 6, (3/2)*atanh(cosh(x)) - 4*im*coth(x) + (4/3)*im*coth(x)^3 - (3/2)*coth(x)*csch(x) + (coth(x)*csch(x)^2)/(im + sinh(x))]


    @test_int [sinh(x)^4/(im + sinh(x))^2, x, 3, -((7*x)/2) - (16/3)*im*cosh(x) + (7/2)*cosh(x)*sinh(x) - (cosh(x)*sinh(x)^3)/(3*(im + sinh(x))^2) - (8*cosh(x)*sinh(x)^2)/(3*(im + sinh(x)))]
    @test_int [sinh(x)^3/(im + sinh(x))^2, x, 6, -2*im*x + (4*cosh(x))/3 - (cosh(x)*sinh(x)^2)/(3*(im + sinh(x))^2) + (2*im*cosh(x))/(im + sinh(x))]
    @test_int [sinh(x)^2/(im + sinh(x))^2, x, 3, x + (im*cosh(x))/(3*(im + sinh(x))^2) - (5*cosh(x))/(3*(im + sinh(x)))]
    @test_int [sinh(x)^1/(im + sinh(x))^2, x, 2, -(cosh(x)/(3*(im + sinh(x))^2)) - (2*im*cosh(x))/(3*(im + sinh(x)))]
    @test_int [csch(x)^1/(im + sinh(x))^2, x, 4, atanh(cosh(x)) + cosh(x)/(3*(im + sinh(x))^2) - (4*im*cosh(x))/(3*(im + sinh(x)))]
    @test_int [csch(x)^2/(im + sinh(x))^2, x, 6, 2*im*atanh(cosh(x)) + (10*coth(x))/3 + coth(x)/(3*(im + sinh(x))^2) - (2*im*coth(x))/(im + sinh(x))]
    @test_int [csch(x)^3/(im + sinh(x))^2, x, 7, (-(7/2))*atanh(cosh(x)) + (16/3)*im*coth(x) + (7/2)*coth(x)*csch(x) + (coth(x)*csch(x))/(3*(im + sinh(x))^2) - (8*im*coth(x)*csch(x))/(3*(im + sinh(x)))]
    @test_int [csch(x)^4/(im + sinh(x))^2, x, 7, -5*im*atanh(cosh(x)) - 12*coth(x) + 4*coth(x)^3 + 5*im*coth(x)*csch(x) + (coth(x)*csch(x)^2)/(3*(im + sinh(x))^2) - (10*im*coth(x)*csch(x)^2)/(3*(im + sinh(x)))]


    @test_int [1/(1 + im*sinh(c + d*x)), x, 1, (im*cosh(c + d*x))/(d*(1 + im*sinh(c + d*x)))]
    @test_int [1/(1 + im*sinh(c + d*x))^2, x, 2, (im*cosh(c + d*x))/(3*d*(1 + im*sinh(c + d*x))^2) + (im*cosh(c + d*x))/(3*d*(1 + im*sinh(c + d*x)))]
    @test_int [1/(1 + im*sinh(c + d*x))^3, x, 3, (im*cosh(c + d*x))/(5*d*(1 + im*sinh(c + d*x))^3) + (2*im*cosh(c + d*x))/(15*d*(1 + im*sinh(c + d*x))^2) + (2*im*cosh(c + d*x))/(15*d*(1 + im*sinh(c + d*x)))]
    @test_int [1/(1 + im*sinh(c + d*x))^4, x, 4, (im*cosh(c + d*x))/(7*d*(1 + im*sinh(c + d*x))^4) + (3*im*cosh(c + d*x))/(35*d*(1 + im*sinh(c + d*x))^3) + (2*im*cosh(c + d*x))/(35*d*(1 + im*sinh(c + d*x))^2) + (2*im*cosh(c + d*x))/(35*d*(1 + im*sinh(c + d*x)))]

    @test_int [1/(1 - im*sinh(c + d*x)), x, 1, -((im*cosh(c + d*x))/(d*(1 - im*sinh(c + d*x))))]
    @test_int [1/(1 - im*sinh(c + d*x))^2, x, 2, -((im*cosh(c + d*x))/(3*d*(1 - im*sinh(c + d*x))^2)) - (im*cosh(c + d*x))/(3*d*(1 - im*sinh(c + d*x)))]
    @test_int [1/(1 - im*sinh(c + d*x))^3, x, 3, -((im*cosh(c + d*x))/(5*d*(1 - im*sinh(c + d*x))^3)) - (2*im*cosh(c + d*x))/(15*d*(1 - im*sinh(c + d*x))^2) - (2*im*cosh(c + d*x))/(15*d*(1 - im*sinh(c + d*x)))]
    @test_int [1/(1 - im*sinh(c + d*x))^4, x, 4, -((im*cosh(c + d*x))/(7*d*(1 - im*sinh(c + d*x))^4)) - (3*im*cosh(c + d*x))/(35*d*(1 - im*sinh(c + d*x))^3) - (2*im*cosh(c + d*x))/(35*d*(1 - im*sinh(c + d*x))^2) - (2*im*cosh(c + d*x))/(35*d*(1 - im*sinh(c + d*x)))]


    @test_int [sinh(x)/sqrt(a + a*im*sinh(x)), x, 3, -((sqrt(2)*atanh((sqrt(a)*cosh(x))/(sqrt(2)*sqrt(a + im*a*sinh(x)))))/sqrt(a)) + (2*cosh(x))/sqrt(a + im*a*sinh(x))]
    @test_int [sinh(x)/sqrt(a - a*im*sinh(x)), x, 3, -((sqrt(2)*atanh((sqrt(a)*cosh(x))/(sqrt(2)*sqrt(a - im*a*sinh(x)))))/sqrt(a)) + (2*cosh(x))/sqrt(a - im*a*sinh(x))]


    @test_int [(a + a*im*sinh(c + d*x))^(5/2), x, 3, (64*im*a^3*cosh(c + d*x))/(15*d*sqrt(a + im*a*sinh(c + d*x))) + (16*im*a^2*cosh(c + d*x)*sqrt(a + im*a*sinh(c + d*x)))/(15*d) + (2*im*a*cosh(c + d*x)*(a + im*a*sinh(c + d*x))^(3/2))/(5*d)]
    @test_int [(a + a*im*sinh(c + d*x))^(3/2), x, 2, (8*im*a^2*cosh(c + d*x))/(3*d*sqrt(a + im*a*sinh(c + d*x))) + (2*im*a*cosh(c + d*x)*sqrt(a + im*a*sinh(c + d*x)))/(3*d)]
    @test_int [(a + a*im*sinh(c + d*x))^(1/2), x, 1, (2*im*a*cosh(c + d*x))/(d*sqrt(a + im*a*sinh(c + d*x)))]
    @test_int [1/(a + a*im*sinh(c + d*x))^(1/2), x, 2, (im*sqrt(2)*atanh((sqrt(a)*cosh(c + d*x))/(sqrt(2)*sqrt(a + im*a*sinh(c + d*x)))))/(sqrt(a)*d)]
    @test_int [1/(a + a*im*sinh(c + d*x))^(3/2), x, 3, (im*atanh((sqrt(a)*cosh(c + d*x))/(sqrt(2)*sqrt(a + im*a*sinh(c + d*x)))))/(2*sqrt(2)*a^(3/2)*d) + (im*cosh(c + d*x))/(2*d*(a + im*a*sinh(c + d*x))^(3/2))]
    @test_int [1/(a + a*im*sinh(c + d*x))^(5/2), x, 4, (3*im*atanh((sqrt(a)*cosh(c + d*x))/(sqrt(2)*sqrt(a + im*a*sinh(c + d*x)))))/(16*sqrt(2)*a^(5/2)*d) + (im*cosh(c + d*x))/(4*d*(a + im*a*sinh(c + d*x))^(5/2)) + (3*im*cosh(c + d*x))/(16*a*d*(a + im*a*sinh(c + d*x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*sinh(c+d*x))^n=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sinh(x)^4/(a + b*sinh(x)), x, 7, -((a*(2*a^2 - b^2)*x)/(2*b^4)) - (2*a^4*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b^4*sqrt(a^2 + b^2)) - ((2 - (3*a^2)/b^2)*cosh(x))/(3*b) - (a*cosh(x)*sinh(x))/(2*b^2) + (cosh(x)*sinh(x)^2)/(3*b)]
    @test_int [sinh(x)^3/(a + b*sinh(x)), x, 6, ((2*a^2 - b^2)*x)/(2*b^3) + (2*a^3*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b^3*sqrt(a^2 + b^2)) - (a*cosh(x))/b^2 + (cosh(x)*sinh(x))/(2*b)]
    @test_int [sinh(x)^2/(a + b*sinh(x)), x, 6, -((a*x)/b^2) - (2*a^2*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b^2*sqrt(a^2 + b^2)) + cosh(x)/b]
    @test_int [sinh(x)^1/(a + b*sinh(x)), x, 4, x/b + (2*a*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b*sqrt(a^2 + b^2))]
    @test_int [csch(x)^1/(a + b*sinh(x)), x, 5, -(atanh(cosh(x))/a) + (2*b*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a*sqrt(a^2 + b^2))]
    @test_int [csch(x)^2/(a + b*sinh(x)), x, 7, (b*atanh(cosh(x)))/a^2 - (2*b^2*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2*sqrt(a^2 + b^2)) - coth(x)/a]
    @test_int [csch(x)^3/(a + b*sinh(x)), x, 7, ((a^2 - 2*b^2)*atanh(cosh(x)))/(2*a^3) + (2*b^3*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^3*sqrt(a^2 + b^2)) + (b*coth(x))/a^2 - (coth(x)*csch(x))/(2*a)]
    @test_int [csch(x)^4/(a + b*sinh(x)), x, 8, -((b*(a^2 - 2*b^2)*atanh(cosh(x)))/(2*a^4)) - (2*b^4*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^4*sqrt(a^2 + b^2)) + ((2*a^2 - 3*b^2)*coth(x))/(3*a^3) + (b*coth(x)*csch(x))/(2*a^2) - (coth(x)*csch(x)^2)/(3*a)]


    @test_int [sinh(x)^4/(a + b*sinh(x))^2, x, 7, ((6*a^2 - b^2)*x)/(2*b^4) + (2*a^3*(3*a^2 + 4*b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b^4*(a^2 + b^2)^(3/2)) - (a*(3*a^2 + 2*b^2)*cosh(x))/(b^3*(a^2 + b^2)) + ((3*a^2 + b^2)*cosh(x)*sinh(x))/(2*b^2*(a^2 + b^2)) - (a^2*cosh(x)*sinh(x)^2)/(b*(a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [sinh(x)^3/(a + b*sinh(x))^2, x, 6, -((2*a*x)/b^3) - (2*a^2*(2*a^2 + 3*b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b^3*(a^2 + b^2)^(3/2)) + ((2*a^2 + b^2)*cosh(x))/(b^2*(a^2 + b^2)) - (a^2*cosh(x)*sinh(x))/(b*(a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [sinh(x)^2/(a + b*sinh(x))^2, x, 5, x/b^2 + (2*a*(a^2 + 2*b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b^2*(a^2 + b^2)^(3/2)) - (a^2*cosh(x))/(b*(a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [sinh(x)^1/(a + b*sinh(x))^2, x, 5, -((2*b*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2)) + (a*cosh(x))/((a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [csch(x)^1/(a + b*sinh(x))^2, x, 6, -(atanh(cosh(x))/a^2) + (2*b*(2*a^2 + b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2*(a^2 + b^2)^(3/2)) + (b^2*cosh(x))/(a*(a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [csch(x)^2/(a + b*sinh(x))^2, x, 7, (2*b*atanh(cosh(x)))/a^3 - (2*b^2*(3*a^2 + 2*b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^3*(a^2 + b^2)^(3/2)) - ((a^2 + 2*b^2)*coth(x))/(a^2*(a^2 + b^2)) + (b^2*coth(x))/(a*(a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [csch(x)^3/(a + b*sinh(x))^2, x, 8, ((a^2 - 6*b^2)*atanh(cosh(x)))/(2*a^4) + (2*b^3*(4*a^2 + 3*b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^4*(a^2 + b^2)^(3/2)) + (b*(2*a^2 + 3*b^2)*coth(x))/(a^3*(a^2 + b^2)) - ((a^2 + 3*b^2)*coth(x)*csch(x))/(2*a^2*(a^2 + b^2)) + (b^2*coth(x)*csch(x))/(a*(a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [csch(x)^4/(a + b*sinh(x))^2, x, 9, -((b*(a^2 - 4*b^2)*atanh(cosh(x)))/a^5) - (2*b^4*(5*a^2 + 4*b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^5*(a^2 + b^2)^(3/2)) + ((2*a^4 - 7*a^2*b^2 - 12*b^4)*coth(x))/(3*a^4*(a^2 + b^2)) + (b*(a^2 + 2*b^2)*coth(x)*csch(x))/(a^3*(a^2 + b^2)) - ((a^2 + 4*b^2)*coth(x)*csch(x)^2)/(3*a^2*(a^2 + b^2)) + (b^2*coth(x)*csch(x)^2)/(a*(a^2 + b^2)*(a + b*sinh(x)))]


    @test_int [1/(3 + 5*im*sinh(c + d*x)), x, 4, (im*log(3*cosh((1/2)*(c + d*x)) + im*sinh((1/2)*(c + d*x))))/(4*d) - (im*log(cosh((1/2)*(c + d*x)) + 3*im*sinh((1/2)*(c + d*x))))/(4*d)]
    @test_int [1/(3 + 5*im*sinh(c + d*x))^2, x, 6, -((3*im*log(3*cosh((1/2)*(c + d*x)) + im*sinh((1/2)*(c + d*x))))/(64*d)) + (3*im*log(cosh((1/2)*(c + d*x)) + 3*im*sinh((1/2)*(c + d*x))))/(64*d) + (5*im*cosh(c + d*x))/(16*d*(3 + 5*im*sinh(c + d*x)))]
    @test_int [1/(3 + 5*im*sinh(c + d*x))^3, x, 7, (43*im*log(3*cosh((1/2)*(c + d*x)) + im*sinh((1/2)*(c + d*x))))/(2048*d) - (43*im*log(cosh((1/2)*(c + d*x)) + 3*im*sinh((1/2)*(c + d*x))))/(2048*d) + (5*im*cosh(c + d*x))/(32*d*(3 + 5*im*sinh(c + d*x))^2) - (45*im*cosh(c + d*x))/(512*d*(3 + 5*im*sinh(c + d*x)))]
    @test_int [1/(3 + 5*im*sinh(c + d*x))^4, x, 8, -((279*im*log(3*cosh((1/2)*(c + d*x)) + im*sinh((1/2)*(c + d*x))))/(32768*d)) + (279*im*log(cosh((1/2)*(c + d*x)) + 3*im*sinh((1/2)*(c + d*x))))/(32768*d) + (5*im*cosh(c + d*x))/(48*d*(3 + 5*im*sinh(c + d*x))^3) - (25*im*cosh(c + d*x))/(512*d*(3 + 5*im*sinh(c + d*x))^2) + (995*im*cosh(c + d*x))/(24576*d*(3 + 5*im*sinh(c + d*x)))]

    @test_int [1/(5 + 3*im*sinh(c + d*x)), x, 1, x/4 - (im*atan(cosh(c + d*x)/(3 + im*sinh(c + d*x))))/(2*d)]
    @test_int [1/(5 + 3*im*sinh(c + d*x))^2, x, 3, (5*x)/64 - (5*im*atan(cosh(c + d*x)/(3 + im*sinh(c + d*x))))/(32*d) - (3*im*cosh(c + d*x))/(16*d*(5 + 3*im*sinh(c + d*x)))]
    @test_int [1/(5 + 3*im*sinh(c + d*x))^3, x, 4, (59*x)/2048 - (59*im*atan(cosh(c + d*x)/(3 + im*sinh(c + d*x))))/(1024*d) - (3*im*cosh(c + d*x))/(32*d*(5 + 3*im*sinh(c + d*x))^2) - (45*im*cosh(c + d*x))/(512*d*(5 + 3*im*sinh(c + d*x)))]
    @test_int [1/(5 + 3*im*sinh(c + d*x))^4, x, 5, (385*x)/32768 - (385*im*atan(cosh(c + d*x)/(3 + im*sinh(c + d*x))))/(16384*d) - (im*cosh(c + d*x))/(16*d*(5 + 3*im*sinh(c + d*x))^3) - (25*im*cosh(c + d*x))/(512*d*(5 + 3*im*sinh(c + d*x))^2) - (311*im*cosh(c + d*x))/(8192*d*(5 + 3*im*sinh(c + d*x)))]


    @test_int [(a + b*sinh(c + d*x))^5, x, 4, (1/8)*a*(8*a^4 - 40*a^2*b^2 + 15*b^4)*x + (b*(107*a^4 - 192*a^2*b^2 + 16*b^4)*cosh(c + d*x))/(30*d) + (7*a*b^2*(22*a^2 - 23*b^2)*cosh(c + d*x)*sinh(c + d*x))/(120*d) + (b*(47*a^2 - 16*b^2)*cosh(c + d*x)*(a + b*sinh(c + d*x))^2)/(60*d) + (9*a*b*cosh(c + d*x)*(a + b*sinh(c + d*x))^3)/(20*d) + (b*cosh(c + d*x)*(a + b*sinh(c + d*x))^4)/(5*d)]
    @test_int [(a + b*sinh(c + d*x))^4, x, 3, (1/8)*(8*a^4 - 24*a^2*b^2 + 3*b^4)*x + (a*b*(19*a^2 - 16*b^2)*cosh(c + d*x))/(6*d) + (b^2*(26*a^2 - 9*b^2)*cosh(c + d*x)*sinh(c + d*x))/(24*d) + (7*a*b*cosh(c + d*x)*(a + b*sinh(c + d*x))^2)/(12*d) + (b*cosh(c + d*x)*(a + b*sinh(c + d*x))^3)/(4*d)]
    @test_int [(a + b*sinh(c + d*x))^3, x, 2, (1/2)*a*(2*a^2 - 3*b^2)*x + (2*b*(4*a^2 - b^2)*cosh(c + d*x))/(3*d) + (5*a*b^2*cosh(c + d*x)*sinh(c + d*x))/(6*d) + (b*cosh(c + d*x)*(a + b*sinh(c + d*x))^2)/(3*d)]
    @test_int [(a + b*sinh(c + d*x))^2, x, 1, (1/2)*(2*a^2 - b^2)*x + (2*a*b*cosh(c + d*x))/d + (b^2*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [(a + b*sinh(c + d*x)), x, 2, a*x + (b*cosh(c + d*x))/d]
    @test_int [1/(a + b*sinh(c + d*x)), x, 3, -((2*atanh((b - a*tanh((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/(sqrt(a^2 + b^2)*d))]
    @test_int [1/(a + b*sinh(c + d*x))^2, x, 5, -((2*a*atanh((b - a*tanh((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/((a^2 + b^2)^(3/2)*d)) - (b*cosh(c + d*x))/((a^2 + b^2)*d*(a + b*sinh(c + d*x)))]
    @test_int [1/(a + b*sinh(c + d*x))^3, x, 6, -(((2*a^2 - b^2)*atanh((b - a*tanh((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/((a^2 + b^2)^(5/2)*d)) - (b*cosh(c + d*x))/(2*(a^2 + b^2)*d*(a + b*sinh(c + d*x))^2) - (3*a*b*cosh(c + d*x))/(2*(a^2 + b^2)^2*d*(a + b*sinh(c + d*x)))]
    @test_int [1/(a + b*sinh(c + d*x))^4, x, 7, -((a*(2*a^2 - 3*b^2)*atanh((b - a*tanh((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/((a^2 + b^2)^(7/2)*d)) - (b*cosh(c + d*x))/(3*(a^2 + b^2)*d*(a + b*sinh(c + d*x))^3) - (5*a*b*cosh(c + d*x))/(6*(a^2 + b^2)^2*d*(a + b*sinh(c + d*x))^2) - (b*(11*a^2 - 4*b^2)*cosh(c + d*x))/(6*(a^2 + b^2)^3*d*(a + b*sinh(c + d*x)))]


    @test_int [(a + b*sinh(x))^(5/2), x, 7, (16/15)*a*b*cosh(x)*sqrt(a + b*sinh(x)) + (2/5)*b*cosh(x)*(a + b*sinh(x))^(3/2) + (2*im*(23*a^2 - 9*b^2)*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(15*sqrt((a + b*sinh(x))/(a - im*b))) - (16*im*a*(a^2 + b^2)*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(15*sqrt(a + b*sinh(x)))]
    @test_int [(a + b*sinh(x))^(3/2), x, 6, (2/3)*b*cosh(x)*sqrt(a + b*sinh(x)) + (8*im*a*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(3*sqrt((a + b*sinh(x))/(a - im*b))) - (2*im*(a^2 + b^2)*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(3*sqrt(a + b*sinh(x)))]
    @test_int [(a + b*sinh(x))^(1/2), x, 2, (2*im*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/sqrt((a + b*sinh(x))/(a - im*b))]
    @test_int [1/(a + b*sinh(x))^(1/2), x, 2, (2*im*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/sqrt(a + b*sinh(x))]
    @test_int [1/(a + b*sinh(x))^(3/2), x, 4, -((2*b*cosh(x))/((a^2 + b^2)*sqrt(a + b*sinh(x)))) + (2*im*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/((a^2 + b^2)*sqrt((a + b*sinh(x))/(a - im*b)))]
    @test_int [1/(a + b*sinh(x))^(5/2), x, 7, -((2*b*cosh(x))/(3*(a^2 + b^2)*(a + b*sinh(x))^(3/2))) - (8*a*b*cosh(x))/(3*(a^2 + b^2)^2*sqrt(a + b*sinh(x))) + (8*im*a*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(3*(a^2 + b^2)^2*sqrt((a + b*sinh(x))/(a - im*b))) - (2*im*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(3*(a^2 + b^2)*sqrt(a + b*sinh(x)))]


    @test_int [sinh(x)/sqrt(a + b*sinh(x)), x, 5, (2*im*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(b*sqrt((a + b*sinh(x))/(a - im*b))) - (2*im*a*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(b*sqrt(a + b*sinh(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*sinh(c+d*x))*(a+b*sinh(c+d*x))^n*when*a^2+b^2=0=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(A + B*sinh(x))*(a + a*im*sinh(x))^(5/2), x, 4, (64*a^3*(7*im*A + 5*B)*cosh(x))/(105*sqrt(a + im*a*sinh(x))) + (16/105)*a^2*(7*im*A + 5*B)*cosh(x)*sqrt(a + im*a*sinh(x)) + (2/35)*a*(7*im*A + 5*B)*cosh(x)*(a + im*a*sinh(x))^(3/2) + (2/7)*B*cosh(x)*(a + im*a*sinh(x))^(5/2)]
    @test_int [(A + B*sinh(x))*(a + a*im*sinh(x))^(3/2), x, 3, (8*a^2*(5*im*A + 3*B)*cosh(x))/(15*sqrt(a + im*a*sinh(x))) + (2/15)*a*(5*im*A + 3*B)*cosh(x)*sqrt(a + im*a*sinh(x)) + (2/5)*B*cosh(x)*(a + im*a*sinh(x))^(3/2)]
    @test_int [(A + B*sinh(x))*(a + a*im*sinh(x))^(1/2), x, 2, (2*a*(3*im*A + B)*cosh(x))/(3*sqrt(a + im*a*sinh(x))) + (2/3)*B*cosh(x)*sqrt(a + im*a*sinh(x))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(A + B*sinh(x))/(im + sinh(x)), x, 2, B*x - ((im*A + B)*cosh(x))/(im + sinh(x))]
    @test_int [(A + B*sinh(x))/(im + sinh(x))^2, x, 2, -(((im*A + B)*cosh(x))/(3*(im + sinh(x))^2)) - ((A + 2*im*B)*cosh(x))/(3*(im + sinh(x)))]
    @test_int [(A + B*sinh(x))/(im + sinh(x))^3, x, 3, -(((im*A + B)*cosh(x))/(5*(im + sinh(x))^3)) - ((2*A + 3*im*B)*cosh(x))/(15*(im + sinh(x))^2) + ((2*im*A - 3*B)*cosh(x))/(15*(im + sinh(x)))]
    @test_int [(A + B*sinh(x))/(im + sinh(x))^4, x, 4, -(((im*A + B)*cosh(x))/(7*(im + sinh(x))^4)) - ((3*A + 4*im*B)*cosh(x))/(35*(im + sinh(x))^3) + (2*(3*im*A - 4*B)*cosh(x))/(105*(im + sinh(x))^2) + (2*(3*A + 4*im*B)*cosh(x))/(105*(im + sinh(x)))]

    @test_int [(A + B*sinh(x))/(im - sinh(x)), x, 2, (-B)*x + ((im*A - B)*cosh(x))/(im - sinh(x))]
    @test_int [(A + B*sinh(x))/(im - sinh(x))^2, x, 2, ((im*A - B)*cosh(x))/(3*(im - sinh(x))^2) + ((A - 2*im*B)*cosh(x))/(3*(im - sinh(x)))]
    @test_int [(A + B*sinh(x))/(im - sinh(x))^3, x, 3, ((im*A - B)*cosh(x))/(5*(im - sinh(x))^3) + ((2*A - 3*im*B)*cosh(x))/(15*(im - sinh(x))^2) - ((2*im*A + 3*B)*cosh(x))/(15*(im - sinh(x)))]
    @test_int [(A + B*sinh(x))/(im - sinh(x))^4, x, 4, ((im*A - B)*cosh(x))/(7*(im - sinh(x))^4) + ((3*A - 4*im*B)*cosh(x))/(35*(im - sinh(x))^3) - (2*(3*im*A + 4*B)*cosh(x))/(105*(im - sinh(x))^2) - (2*(3*A - 4*im*B)*cosh(x))/(105*(im - sinh(x)))]


    @test_int [(A + B*sinh(x))/(a + a*im*sinh(x))^(1/2), x, 3, (sqrt(2)*(im*A - B)*atanh((sqrt(a)*cosh(x))/(sqrt(2)*sqrt(a + im*a*sinh(x)))))/sqrt(a) + (2*B*cosh(x))/sqrt(a + im*a*sinh(x))]
    @test_int [(A + B*sinh(x))/(a + a*im*sinh(x))^(3/2), x, 3, ((im*A + 3*B)*atanh((sqrt(a)*cosh(x))/(sqrt(2)*sqrt(a + im*a*sinh(x)))))/(2*sqrt(2)*a^(3/2)) + ((im*A - B)*cosh(x))/(2*(a + im*a*sinh(x))^(3/2))]
    @test_int [(A + B*sinh(x))/(a + a*im*sinh(x))^(5/2), x, 4, ((3*im*A + 5*B)*atanh((sqrt(a)*cosh(x))/(sqrt(2)*sqrt(a + im*a*sinh(x)))))/(16*sqrt(2)*a^(5/2)) + ((im*A - B)*cosh(x))/(4*(a + im*a*sinh(x))^(5/2)) + ((3*im*A + 5*B)*cosh(x))/(16*a*(a + im*a*sinh(x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*sinh(c+d*x))*(a+b*sinh(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(A + B*sinh(x))*(a + b*sinh(x))^(5/2), x, 8, (2/105)*(56*a*A*b + 15*a^2*B - 25*b^2*B)*cosh(x)*sqrt(a + b*sinh(x)) + (2/35)*(7*A*b + 5*a*B)*cosh(x)*(a + b*sinh(x))^(3/2) + (2/7)*B*cosh(x)*(a + b*sinh(x))^(5/2) + (2*im*(161*a^2*A*b - 63*A*b^3 + 15*a^3*B - 145*a*b^2*B)*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(105*b*sqrt((a + b*sinh(x))/(a - im*b))) - (2*im*(a^2 + b^2)*(56*a*A*b + 15*a^2*B - 25*b^2*B)*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(105*b*sqrt(a + b*sinh(x)))]
    @test_int [(A + B*sinh(x))*(a + b*sinh(x))^(3/2), x, 7, (2/15)*(5*A*b + 3*a*B)*cosh(x)*sqrt(a + b*sinh(x)) + (2/5)*B*cosh(x)*(a + b*sinh(x))^(3/2) + (2*im*(20*a*A*b + 3*a^2*B - 9*b^2*B)*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(15*b*sqrt((a + b*sinh(x))/(a - im*b))) - (2*im*(a^2 + b^2)*(5*A*b + 3*a*B)*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(15*b*sqrt(a + b*sinh(x)))]
    @test_int [(A + B*sinh(x))*(a + b*sinh(x))^(1/2), x, 6, (2/3)*B*cosh(x)*sqrt(a + b*sinh(x)) + (2*im*(3*A*b + a*B)*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(3*b*sqrt((a + b*sinh(x))/(a - im*b))) - (2*im*(a^2 + b^2)*B*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(3*b*sqrt(a + b*sinh(x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(A + B*sinh(x))/(a + b*sinh(x)), x, 4, (B*x)/b - (2*(A*b - a*B)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b*sqrt(a^2 + b^2))]
    @test_int [(A + B*sinh(x))/(a + b*sinh(x))^2, x, 5, -((2*(a*A + b*B)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2)) - ((A*b - a*B)*cosh(x))/((a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [(A + B*sinh(x))/(a + b*sinh(x))^3, x, 6, -(((2*a^2*A - A*b^2 + 3*a*b*B)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) - ((A*b - a*B)*cosh(x))/(2*(a^2 + b^2)*(a + b*sinh(x))^2) - ((3*a*A*b - a^2*B + 2*b^2*B)*cosh(x))/(2*(a^2 + b^2)^2*(a + b*sinh(x)))]
    @test_int [(A + B*sinh(x))/(a + b*sinh(x))^4, x, 7, -(((2*a^3*A - 3*a*A*b^2 + 4*a^2*b*B - b^3*B)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2)) - ((A*b - a*B)*cosh(x))/(3*(a^2 + b^2)*(a + b*sinh(x))^3) - ((5*a*A*b - 2*a^2*B + 3*b^2*B)*cosh(x))/(6*(a^2 + b^2)^2*(a + b*sinh(x))^2) - ((11*a^2*A*b - 4*A*b^3 - 2*a^3*B + 13*a*b^2*B)*cosh(x))/(6*(a^2 + b^2)^3*(a + b*sinh(x)))]


    @test_int [(b*B/a + B*sinh(x))/(a + b*sinh(x)), x, 4, (B*x)/b + (2*(a^2 - b^2)*B*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a*b*sqrt(a^2 + b^2))]
    @test_int [(a*B/b + B*sinh(x))/(a + b*sinh(x)), x, 2, (B*x)/b]

    @test_int [(a - b*sinh(x))/(b + a*sinh(x))^2, x, 2, -(cosh(x)/(b + a*sinh(x)))]
    @test_int [(2 - sinh(x))/(2 + sinh(x)), x, 2, -x + (4*x)/sqrt(5) - (8*atanh(cosh(x)/(2 + sqrt(5) + sinh(x))))/sqrt(5)]


    @test_int [(A + B*sinh(x))/(a + b*sinh(x))^(1/2), x, 5, (2*im*B*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(b*sqrt((a + b*sinh(x))/(a - im*b))) + (2*im*(A*b - a*B)*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(b*sqrt(a + b*sinh(x)))]
    @test_int [(A + B*sinh(x))/(a + b*sinh(x))^(3/2), x, 6, -((2*(A*b - a*B)*cosh(x))/((a^2 + b^2)*sqrt(a + b*sinh(x)))) + (2*im*(A*b - a*B)*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(b*(a^2 + b^2)*sqrt((a + b*sinh(x))/(a - im*b))) + (2*im*B*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(b*sqrt(a + b*sinh(x)))]
    @test_int [(A + B*sinh(x))/(a + b*sinh(x))^(5/2), x, 7, -((2*(A*b - a*B)*cosh(x))/(3*(a^2 + b^2)*(a + b*sinh(x))^(3/2))) - (2*(4*a*A*b - a^2*B + 3*b^2*B)*cosh(x))/(3*(a^2 + b^2)^2*sqrt(a + b*sinh(x))) + (2*im*(4*a*A*b - a^2*B + 3*b^2*B)*Elliptic.E(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt(a + b*sinh(x)))/(3*b*(a^2 + b^2)^2*sqrt((a + b*sinh(x))/(a - im*b))) - (2*im*(A*b - a*B)*Elliptic.F(pi/4 - (im*x)/2, (2*b)/(im*a + b))*sqrt((a + b*sinh(x))/(a - im*b)))/(3*b*(a^2 + b^2)*sqrt(a + b*sinh(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c*sinh(a+b*x)^m)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*sinh(a+b*x)^2)^n=#


    @test_int [(a*sinh(x)^2)^(5/2),x, 4, (8/15)*a^2*coth(x)*sqrt(a*sinh(x)^2) - (4/15)*a*coth(x)*(a*sinh(x)^2)^(3/2) + (1/5)*coth(x)*(a*sinh(x)^2)^(5/2)]
    @test_int [(a*sinh(x)^2)^(3/2),x, 3, (-(2/3))*a*coth(x)*sqrt(a*sinh(x)^2) + (1/3)*coth(x)*(a*sinh(x)^2)^(3/2)]
    @test_int [(a*sinh(x)^2)^(1/2), x, 2, coth(x)*sqrt(a*sinh(x)^2)]
    @test_int [1/(a*sinh(x)^2)^(1/2), x, 2, -((atanh(cosh(x))*sinh(x))/sqrt(a*sinh(x)^2))]
    @test_int [1/(a*sinh(x)^2)^(3/2), x, 3, -(coth(x)/(2*a*sqrt(a*sinh(x)^2))) + (atanh(cosh(x))*sinh(x))/(2*a*sqrt(a*sinh(x)^2))]
    @test_int [1/(a*sinh(x)^2)^(5/2), x, 4, -(coth(x)/(4*a*(a*sinh(x)^2)^(3/2))) + (3*coth(x))/(8*a^2*sqrt(a*sinh(x)^2)) - (3*atanh(cosh(x))*sinh(x))/(8*a^2*sqrt(a*sinh(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*sinh(a+b*x)^3)^n=#


    @test_int [(a*sinh(x)^3)^(5/2),x, 7, (-(26/77))*a^2*coth(x)*sqrt(a*sinh(x)^3) + (26/77)*im*a^2*csch(x)^2*Elliptic.F(pi/4 - (im*x)/2, 2)*sqrt(im*sinh(x))*sqrt(a*sinh(x)^3) + (78/385)*a^2*cosh(x)*sinh(x)*sqrt(a*sinh(x)^3) - (26/165)*a^2*cosh(x)*sinh(x)^3*sqrt(a*sinh(x)^3) + (2/15)*a^2*cosh(x)*sinh(x)^5*sqrt(a*sinh(x)^3)]
    @test_int [(a*sinh(x)^3)^(3/2),x, 5, (-(14/45))*a*cosh(x)*sqrt(a*sinh(x)^3) + (14*im*a*csch(x)*Elliptic.E(pi/4 - (im*x)/2, 2)*sqrt(a*sinh(x)^3))/(15*sqrt(im*sinh(x))) + (2/9)*a*cosh(x)*sinh(x)^2*sqrt(a*sinh(x)^3)]
    @test_int [(a*sinh(x)^3)^(1/2), x, 4, (2/3)*coth(x)*sqrt(a*sinh(x)^3) - (2/3)*im*csch(x)^2*Elliptic.F(pi/4 - (im*x)/2, 2)*sqrt(im*sinh(x))*sqrt(a*sinh(x)^3)]
    @test_int [1/(a*sinh(x)^3)^(1/2), x, 4, -((2*cosh(x)*sinh(x))/sqrt(a*sinh(x)^3)) + (2*im*Elliptic.E(pi/4 - (im*x)/2, 2)*sinh(x)^2)/(sqrt(im*sinh(x))*sqrt(a*sinh(x)^3))]
    @test_int [1/(a*sinh(x)^3)^(3/2),x, 5, (10*cosh(x))/(21*a*sqrt(a*sinh(x)^3)) - (2*coth(x)*csch(x))/(7*a*sqrt(a*sinh(x)^3)) + (10*im*Elliptic.F(pi/4 - (im*x)/2, 2)*sqrt(im*sinh(x))*sinh(x))/(21*a*sqrt(a*sinh(x)^3))]
    @test_int [1/(a*sinh(x)^3)^(5/2),x, 7, -((154*coth(x))/(585*a^2*sqrt(a*sinh(x)^3))) + (22*coth(x)*csch(x)^2)/(117*a^2*sqrt(a*sinh(x)^3)) - (2*coth(x)*csch(x)^4)/(13*a^2*sqrt(a*sinh(x)^3)) + (154*cosh(x)*sinh(x))/(195*a^2*sqrt(a*sinh(x)^3)) - (154*im*Elliptic.E(pi/4 - (im*x)/2, 2)*sinh(x)^2)/(195*a^2*sqrt(im*sinh(x))*sqrt(a*sinh(x)^3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*sinh(a+b*x)^4)^n=#


    @test_int [(a*sinh(x)^4)^(5/2),x, 7, (63/256)*a^2*coth(x)*sqrt(a*sinh(x)^4) - (63/256)*a^2*x*csch(x)^2*sqrt(a*sinh(x)^4) - (21/128)*a^2*cosh(x)*sinh(x)*sqrt(a*sinh(x)^4) + (21/160)*a^2*cosh(x)*sinh(x)^3*sqrt(a*sinh(x)^4) - (9/80)*a^2*cosh(x)*sinh(x)^5*sqrt(a*sinh(x)^4) + (1/10)*a^2*cosh(x)*sinh(x)^7*sqrt(a*sinh(x)^4)]
    @test_int [(a*sinh(x)^4)^(3/2),x, 5, (5/16)*a*coth(x)*sqrt(a*sinh(x)^4) - (5/16)*a*x*csch(x)^2*sqrt(a*sinh(x)^4) - (5/24)*a*cosh(x)*sinh(x)*sqrt(a*sinh(x)^4) + (1/6)*a*cosh(x)*sinh(x)^3*sqrt(a*sinh(x)^4)]
    @test_int [(a*sinh(x)^4)^(1/2), x, 3, (1/2)*coth(x)*sqrt(a*sinh(x)^4) - (1/2)*x*csch(x)^2*sqrt(a*sinh(x)^4)]
    @test_int [1/(a*sinh(x)^4)^(1/2), x, 3, -((cosh(x)*sinh(x))/sqrt(a*sinh(x)^4))]
    @test_int [1/(a*sinh(x)^4)^(3/2),x, 3, (2*cosh(x)^2*coth(x))/(3*a*sqrt(a*sinh(x)^4)) - (cosh(x)^2*coth(x)^3)/(5*a*sqrt(a*sinh(x)^4)) - (cosh(x)*sinh(x))/(a*sqrt(a*sinh(x)^4))]
    @test_int [1/(a*sinh(x)^4)^(5/2),x, 3, (4*cosh(x)^2*coth(x))/(3*a^2*sqrt(a*sinh(x)^4)) - (6*cosh(x)^2*coth(x)^3)/(5*a^2*sqrt(a*sinh(x)^4)) + (4*cosh(x)^2*coth(x)^5)/(7*a^2*sqrt(a*sinh(x)^4)) - (cosh(x)^2*coth(x)^7)/(9*a^2*sqrt(a*sinh(x)^4)) - (cosh(x)*sinh(x))/(a^2*sqrt(a*sinh(x)^4))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c*sinh(a+b*x)^m)^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Hyper(c+d*x)^m*(a+b*sinh(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*sinh(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2=0=#


    @test_int [cosh(x)^8/(im + sinh(x)), x, 5, -((5*im*x)/16) + cosh(x)^7/7 - (5/16)*im*cosh(x)*sinh(x) - (5/24)*im*cosh(x)^3*sinh(x) - (1/6)*im*cosh(x)^5*sinh(x)]
    @test_int [cosh(x)^7/(im + sinh(x)), x, 3, -(im - sinh(x))^4 - (4/5)*im*(im - sinh(x))^5 + (1/6)*(im - sinh(x))^6]
    @test_int [cosh(x)^6/(im + sinh(x)), x, 4, -((3*im*x)/8) + cosh(x)^5/5 - (3/8)*im*cosh(x)*sinh(x) - (1/4)*im*cosh(x)^3*sinh(x)]
    @test_int [cosh(x)^5/(im + sinh(x)), x, 3, (-im)*sinh(x) + sinh(x)^2/2 - (1/3)*im*sinh(x)^3 + sinh(x)^4/4]
    @test_int [cosh(x)^4/(im + sinh(x)), x, 3, -((im*x)/2) + cosh(x)^3/3 - (1/2)*im*cosh(x)*sinh(x)]
    @test_int [cosh(x)^3/(im + sinh(x)), x, 2, (-im)*sinh(x) + sinh(x)^2/2]
    @test_int [cosh(x)^2/(im + sinh(x)), x, 2, (-im)*x + cosh(x)]
    @test_int [cosh(x)^1/(im + sinh(x)), x, 2, log(im + sinh(x))]
    @test_int [sech(x)^1/(im + sinh(x)), x, 4, (-(1/2))*im*atan(sinh(x)) - im/(2*(im + sinh(x)))]
    @test_int [sech(x)^2/(im + sinh(x)), x, 3, -((im*sech(x))/(3*(im + sinh(x)))) - (2/3)*im*tanh(x)]
    @test_int [sech(x)^3/(im + sinh(x)), x, 4, (-(3/8))*im*atan(sinh(x)) + im/(8*(im - sinh(x))) + 1/(8*(im + sinh(x))^2) - im/(4*(im + sinh(x)))]
    @test_int [sech(x)^4/(im + sinh(x)), x, 3, -((im*sech(x)^3)/(5*(im + sinh(x)))) - (4/5)*im*tanh(x) + (4/15)*im*tanh(x)^3]
    @test_int [sech(x)^5/(im + sinh(x)), x, 4, (-(5/16))*im*atan(sinh(x)) - 1/(32*(im - sinh(x))^2) + im/(8*(im - sinh(x))) + im/(24*(im + sinh(x))^3) + 3/(32*(im + sinh(x))^2) - (3*im)/(16*(im + sinh(x)))]


    @test_int [cosh(x)^6/(im + sinh(x))^2, x, 4, -((5*x)/8) - (5/12)*im*cosh(x)^3 - (5/8)*cosh(x)*sinh(x) + cosh(x)^5/(4*(im + sinh(x)))]
    @test_int [cosh(x)^5/(im + sinh(x))^2, x, 2, (-(1/3))*(im - sinh(x))^3]
    @test_int [cosh(x)^4/(im + sinh(x))^2, x, 3, -((3*x)/2) - (3/2)*im*cosh(x) + cosh(x)^3/(2*(im + sinh(x)))]
    @test_int [cosh(x)^3/(im + sinh(x))^2, x, 3, -2*im*log(im + sinh(x)) + sinh(x)]
    @test_int [cosh(x)^2/(im + sinh(x))^2, x, 2, x - (2*cosh(x))/(im + sinh(x))]
    @test_int [cosh(x)^1/(im + sinh(x))^2, x, 2, -(1/(im + sinh(x)))]
    @test_int [sech(x)^1/(im + sinh(x))^2, x, 4, (-(1/4))*atan(sinh(x)) - im/(4*(im + sinh(x))^2) - 1/(4*(im + sinh(x)))]
    @test_int [sech(x)^2/(im + sinh(x))^2, x, 4, -((im*sech(x))/(5*(im + sinh(x))^2)) - sech(x)/(5*(im + sinh(x))) - (2*tanh(x))/5]
    @test_int [sech(x)^3/(im + sinh(x))^2, x, 4, (-(1/4))*atan(sinh(x)) + 1/(16*(im - sinh(x))) + 1/(12*(im + sinh(x))^3) - im/(8*(im + sinh(x))^2) - 3/(16*(im + sinh(x)))]
    @test_int [sech(x)^4/(im + sinh(x))^2, x, 4, -((im*sech(x)^3)/(7*(im + sinh(x))^2)) - sech(x)^3/(7*(im + sinh(x))) - (4*tanh(x))/7 + (4*tanh(x)^3)/21]


    @test_int [cosh(x)^3/(1 + im*sinh(x))^3, x, 3, im*log(im - sinh(x)) + (2*im)/(1 + im*sinh(x))]
    @test_int [cosh(x)^2/(1 + im*sinh(x))^3, x, 1, (im*cosh(x)^3)/(3*(1 + im*sinh(x))^3)]
    @test_int [cosh(x)^1/(1 + im*sinh(x))^3, x, 2, im/(2*(1 + im*sinh(x))^2)]


    @test_int [cosh(x)^3/(1 - im*sinh(x))^3, x, 3, (-im)*log(im + sinh(x)) - (2*im)/(1 - im*sinh(x))]
    @test_int [cosh(x)^2/(1 - im*sinh(x))^3, x, 1, -((im*cosh(x)^3)/(3*(1 - im*sinh(x))^3))]
    @test_int [cosh(x)^1/(1 - im*sinh(x))^3, x, 2, -(im/(2*(1 - im*sinh(x))^2))]


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2!=0=#


    @test_int [cosh(x)^7/(a + b*sinh(x)), x, 3, ((a^2 + b^2)^3*log(a + b*sinh(x)))/b^7 - (a*(a^4 + 3*a^2*b^2 + 3*b^4)*sinh(x))/b^6 + ((a^4 + 3*a^2*b^2 + 3*b^4)*sinh(x)^2)/(2*b^5) - (a*(a^2 + 3*b^2)*sinh(x)^3)/(3*b^4) + ((a^2 + 3*b^2)*sinh(x)^4)/(4*b^3) - (a*sinh(x)^5)/(5*b^2) + sinh(x)^6/(6*b)]
    @test_int [cosh(x)^6/(a + b*sinh(x)), x, 7, -((a*(8*a^4 + 20*a^2*b^2 + 15*b^4)*x)/(8*b^6)) - (2*(a^2 + b^2)^(5/2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/b^6 + cosh(x)^5/(5*b) + (cosh(x)^3*(4*(a^2 + b^2) - 3*a*b*sinh(x)))/(12*b^3) + (cosh(x)*(8*(a^2 + b^2)^2 - a*b*(4*a^2 + 7*b^2)*sinh(x)))/(8*b^5)]
    @test_int [cosh(x)^5/(a + b*sinh(x)), x, 3, ((a^2 + b^2)^2*log(a + b*sinh(x)))/b^5 - (a*(a^2 + 2*b^2)*sinh(x))/b^4 + ((a^2 + 2*b^2)*sinh(x)^2)/(2*b^3) - (a*sinh(x)^3)/(3*b^2) + sinh(x)^4/(4*b)]
    @test_int [cosh(x)^4/(a + b*sinh(x)), x, 6, -((a*(2*a^2 + 3*b^2)*x)/(2*b^4)) - (2*(a^2 + b^2)^(3/2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/b^4 + cosh(x)^3/(3*b) + (cosh(x)*(2*(a^2 + b^2) - a*b*sinh(x)))/(2*b^3)]
    @test_int [cosh(x)^3/(a + b*sinh(x)), x, 3, ((a^2 + b^2)*log(a + b*sinh(x)))/b^3 - (a*sinh(x))/b^2 + sinh(x)^2/(2*b)]
    @test_int [cosh(x)^2/(a + b*sinh(x)), x, 5, -((a*x)/b^2) - (2*sqrt(a^2 + b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/b^2 + cosh(x)/b]
    @test_int [cosh(x)^1/(a + b*sinh(x)), x, 2, log(a + b*sinh(x))/b]
    @test_int [sech(x)^1/(a + b*sinh(x)), x, 6, (a*atan(sinh(x)))/(a^2 + b^2) - (b*log(cosh(x)))/(a^2 + b^2) + (b*log(a + b*sinh(x)))/(a^2 + b^2)]
    @test_int [sech(x)^2/(a + b*sinh(x)), x, 5, -((2*b^2*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2)) + (sech(x)*(b + a*sinh(x)))/(a^2 + b^2)]
    @test_int [sech(x)^3/(a + b*sinh(x)), x, 7, (a*(a^2 + 3*b^2)*atan(sinh(x)))/(2*(a^2 + b^2)^2) - (b^3*log(cosh(x)))/(a^2 + b^2)^2 + (b^3*log(a + b*sinh(x)))/(a^2 + b^2)^2 + (sech(x)^2*(b + a*sinh(x)))/(2*(a^2 + b^2))]
    @test_int [sech(x)^4/(a + b*sinh(x)), x, 6, -((2*b^4*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) + (sech(x)^3*(b + a*sinh(x)))/(3*(a^2 + b^2)) + (sech(x)*(3*b^3 + a*(2*a^2 + 5*b^2)*sinh(x)))/(3*(a^2 + b^2)^2)]
    @test_int [sech(x)^5/(a + b*sinh(x)), x, 8, (a*(3*a^4 + 10*a^2*b^2 + 15*b^4)*atan(sinh(x)))/(8*(a^2 + b^2)^3) - (b^5*log(cosh(x)))/(a^2 + b^2)^3 + (b^5*log(a + b*sinh(x)))/(a^2 + b^2)^3 + (sech(x)^4*(b + a*sinh(x)))/(4*(a^2 + b^2)) + (sech(x)^2*(4*b^3 + a*(3*a^2 + 7*b^2)*sinh(x)))/(8*(a^2 + b^2)^2)]
    @test_int [sech(x)^6/(a + b*sinh(x)), x, 7, -((2*b^6*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2)) + (sech(x)^5*(b + a*sinh(x)))/(5*(a^2 + b^2)) + (sech(x)^3*(5*b^3 + a*(4*a^2 + 9*b^2)*sinh(x)))/(15*(a^2 + b^2)^2) + (sech(x)*(15*b^5 + a*(8*a^4 + 26*a^2*b^2 + 33*b^4)*sinh(x)))/(15*(a^2 + b^2)^3)]


    @test_int [cosh(x)^4/(a + b*sinh(x))^2, x, 6, (3*(2*a^2 + b^2)*x)/(2*b^4) + (6*a*sqrt(a^2 + b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/b^4 - (3*cosh(x)*(2*a - b*sinh(x)))/(2*b^3) - cosh(x)^3/(b*(a + b*sinh(x)))]
    @test_int [cosh(x)^3/(a + b*sinh(x))^2, x, 3, -((2*a*log(a + b*sinh(x)))/b^3) + sinh(x)/b^2 - (a^2 + b^2)/(b^3*(a + b*sinh(x)))]
    @test_int [cosh(x)^2/(a + b*sinh(x))^2, x, 5, x/b^2 + (2*a*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b^2*sqrt(a^2 + b^2)) - cosh(x)/(b*(a + b*sinh(x)))]
    @test_int [cosh(x)^1/(a + b*sinh(x))^2, x, 2, -(1/(b*(a + b*sinh(x))))]
    @test_int [sech(x)^1/(a + b*sinh(x))^2, x, 7, ((a^2 - b^2)*atan(sinh(x)))/(a^2 + b^2)^2 - (2*a*b*log(cosh(x)))/(a^2 + b^2)^2 + (2*a*b*log(a + b*sinh(x)))/(a^2 + b^2)^2 - b/((a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [sech(x)^2/(a + b*sinh(x))^2, x, 6, -((6*a*b^2*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) - (b*sech(x))/((a^2 + b^2)*(a + b*sinh(x))) + (sech(x)*(3*a*b + (a^2 - 2*b^2)*sinh(x)))/(a^2 + b^2)^2]
    @test_int [sech(x)^3/(a + b*sinh(x))^2, x, 7, ((a^4 + 6*a^2*b^2 - 3*b^4)*atan(sinh(x)))/(2*(a^2 + b^2)^3) - (4*a*b^3*log(cosh(x)))/(a^2 + b^2)^3 + (4*a*b^3*log(a + b*sinh(x)))/(a^2 + b^2)^3 + (b*(a^2 - 3*b^2))/(2*(a^2 + b^2)^2*(a + b*sinh(x))) + (sech(x)^2*(b + a*sinh(x)))/(2*(a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [sech(x)^4/(a + b*sinh(x))^2, x, 7, -((10*a*b^4*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2)) - (b*sech(x)^3)/((a^2 + b^2)*(a + b*sinh(x))) + (sech(x)^3*(5*a*b + (a^2 - 4*b^2)*sinh(x)))/(3*(a^2 + b^2)^2) + (sech(x)*(15*a*b^3 + (2*a^4 + 9*a^2*b^2 - 8*b^4)*sinh(x)))/(3*(a^2 + b^2)^3)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*sinh(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2=0=#


    @test_int [tanh(x)^4/(im + sinh(x)), x, 6, -sech(x) + (2*sech(x)^3)/3 - sech(x)^5/5 - (1/5)*im*tanh(x)^5]
    @test_int [tanh(x)^3/(im + sinh(x)), x, 6, (3/8)*atan(sinh(x)) - (3/8)*sech(x)*tanh(x) - (1/4)*sech(x)*tanh(x)^3 - (1/4)*im*tanh(x)^4]
    @test_int [tanh(x)^2/(im + sinh(x)), x, 5, -sech(x) + sech(x)^3/3 - (1/3)*im*tanh(x)^3]
    @test_int [tanh(x)^1/(im + sinh(x)), x, 5, (1/2)*atan(sinh(x)) + (1/2)*im*sech(x)^2 - (1/2)*sech(x)*tanh(x)]
    @test_int [coth(x)^1/(im + sinh(x)), x, 4, (-im)*log(sinh(x)) + im*log(im + sinh(x))]
    @test_int [coth(x)^2/(im + sinh(x)), x, 4, -atanh(cosh(x)) + im*coth(x)]
    @test_int [coth(x)^3/(im + sinh(x)), x, 5, -csch(x) + (1/2)*im*csch(x)^2]
    @test_int [coth(x)^4/(im + sinh(x)), x, 5, (-(1/2))*atanh(cosh(x)) + (1/3)*im*coth(x)^3 - (1/2)*coth(x)*csch(x)]
    @test_int [coth(x)^5/(im + sinh(x)), x, 5, (1/4)*im*coth(x)^4 - csch(x) - csch(x)^3/3]
    @test_int [coth(x)^6/(im + sinh(x)), x, 6, (-(3/8))*atanh(cosh(x)) + (1/5)*im*coth(x)^5 - (3/8)*coth(x)*csch(x) - (1/4)*coth(x)^3*csch(x)]


    @test_int [tanh(x)^4/(im + sinh(x))^2, x, 10, (2/3)*im*sech(x)^3 - (4/5)*im*sech(x)^5 + (2/7)*im*sech(x)^7 - tanh(x)^5/5 + (2*tanh(x)^7)/7]
    @test_int [tanh(x)^3/(im + sinh(x))^2, x, 4, (-(1/8))*im*atan(sinh(x)) - im/(16*(im - sinh(x))) + im/(12*(im + sinh(x))^3) - 1/(4*(im + sinh(x))^2) - (3*im)/(16*(im + sinh(x)))]
    @test_int [tanh(x)^2/(im + sinh(x))^2, x, 10, (2/3)*im*sech(x)^3 - (2/5)*im*sech(x)^5 - tanh(x)^3/3 + (2*tanh(x)^5)/5]
    @test_int [tanh(x)^1/(im + sinh(x))^2, x, 4, (-(1/4))*im*atan(sinh(x)) - 1/(4*(im + sinh(x))^2) - im/(4*(im + sinh(x)))]
    @test_int [coth(x)^1/(im + sinh(x))^2, x, 3, -log(sinh(x)) + log(im + sinh(x)) - im/(im + sinh(x))]
    @test_int [coth(x)^2/(im + sinh(x))^2, x, If(13<9, 9, 7), If(13<9, 2*im*atanh(cosh(x)) + 3*coth(x) - (2*im*coth(x))/(im + sinh(x)), 2*im*atanh(cosh(x)) + coth(x) + (2*im*coth(x))/(im - csch(x)))]
    @test_int [coth(x)^3/(im + sinh(x))^2, x, 3, 2*im*csch(x) + csch(x)^2/2 + 2*log(sinh(x)) - 2*log(im + sinh(x))]
    @test_int [coth(x)^4/(im + sinh(x))^2, x, 9, (-im)*atanh(cosh(x)) - 2*coth(x) + coth(x)^3/3 + im*coth(x)*csch(x)]
    @test_int [coth(x)^5/(im + sinh(x))^2, x, 3, (-(1/2))*csch(x)^2 + (2/3)*im*csch(x)^3 + csch(x)^4/4]
    @test_int [coth(x)^6/(im + sinh(x))^2, x, 11, (-(1/4))*im*atanh(cosh(x)) - (2*coth(x)^3)/3 + coth(x)^5/5 + (1/4)*im*coth(x)*csch(x) + (1/2)*im*coth(x)*csch(x)^3]


    #= ::Subsubsection::Closed:: =#
    #=a^2+b^2!=0=#


    @test_int [tanh(x)^4/(a + b*sinh(x)), x, 13, -((2*a^4*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) - (a^2*b*sech(x))/(a^2 + b^2)^2 - (b*sech(x))/(a^2 + b^2) + (b*sech(x)^3)/(3*(a^2 + b^2)) - (a^3*tanh(x))/(a^2 + b^2)^2 - (a*tanh(x)^3)/(3*(a^2 + b^2))]
    @test_int [tanh(x)^3/(a + b*sinh(x)), x, 7, (b*(3*a^2 + b^2)*atan(sinh(x)))/(2*(a^2 + b^2)^2) + (a^3*log(cosh(x)))/(a^2 + b^2)^2 - (a^3*log(a + b*sinh(x)))/(a^2 + b^2)^2 + (sech(x)^2*(a - b*sinh(x)))/(2*(a^2 + b^2))]
    @test_int [tanh(x)^2/(a + b*sinh(x)), x, 8, -((2*a^2*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2)) - (b*sech(x))/(a^2 + b^2) - (a*tanh(x))/(a^2 + b^2)]
    @test_int [tanh(x)^1/(a + b*sinh(x)), x, 6, (b*atan(sinh(x)))/(a^2 + b^2) + (a*log(cosh(x)))/(a^2 + b^2) - (a*log(a + b*sinh(x)))/(a^2 + b^2)]
    @test_int [coth(x)^1/(a + b*sinh(x)), x, 4, log(sinh(x))/a - log(a + b*sinh(x))/a]
    @test_int [coth(x)^2/(a + b*sinh(x)), x, 7, (b*atanh(cosh(x)))/a^2 - (2*sqrt(a^2 + b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/a^2 - coth(x)/a]
    @test_int [coth(x)^3/(a + b*sinh(x)), x, 3, (b*csch(x))/a^2 - csch(x)^2/(2*a) + ((a^2 + b^2)*log(sinh(x)))/a^3 - ((a^2 + b^2)*log(a + b*sinh(x)))/a^3]
    @test_int [coth(x)^4/(a + b*sinh(x)), x, 7, (b*(3*a^2 + 2*b^2)*atanh(cosh(x)))/(2*a^4) - (2*(a^2 + b^2)^(3/2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/a^4 - ((4*a^2 + 3*b^2)*coth(x))/(3*a^3) + (b*coth(x)*csch(x))/(2*a^2) - (coth(x)*csch(x)^2)/(3*a)]


    @test_int [tanh(x)^4/(a + b*sinh(x))^2, x, 16, -((2*a^5*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2)) + (8*a^3*b^2*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2) - (4*a^3*b*sech(x))/(a^2 + b^2)^3 + (2*a*b*sech(x)^3)/(3*(a^2 + b^2)^2) - (a^4*b*cosh(x))/((a^2 + b^2)^3*(a + b*sinh(x))) + ((a^2 - b^2)*tanh(x))/(a^2 + b^2)^2 - ((2*a^4 - 3*a^2*b^2 - b^4)*tanh(x))/(a^2 + b^2)^3 - ((a^2 - b^2)*tanh(x)^3)/(3*(a^2 + b^2)^2)]
    @test_int [tanh(x)^3/(a + b*sinh(x))^2, x, 7, (a*b*(3*a^2 - b^2)*atan(sinh(x)))/(a^2 + b^2)^3 + (a^2*(a^2 - 3*b^2)*log(cosh(x)))/(a^2 + b^2)^3 - (a^2*(a^2 - 3*b^2)*log(a + b*sinh(x)))/(a^2 + b^2)^3 + a^3/((a^2 + b^2)^2*(a + b*sinh(x))) + (sech(x)^2*(a^2 - b^2 - 2*a*b*sinh(x)))/(2*(a^2 + b^2)^2)]
    @test_int [tanh(x)^2/(a + b*sinh(x))^2, x, 13, -((2*a^3*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) + (4*a*b^2*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) - (2*a*b*sech(x))/(a^2 + b^2)^2 - (a^2*b*cosh(x))/((a^2 + b^2)^2*(a + b*sinh(x))) - ((a^2 - b^2)*tanh(x))/(a^2 + b^2)^2]
    @test_int [tanh(x)^1/(a + b*sinh(x))^2, x, 6, (2*a*b*atan(sinh(x)))/(a^2 + b^2)^2 + ((a^2 - b^2)*log(cosh(x)))/(a^2 + b^2)^2 - ((a^2 - b^2)*log(a + b*sinh(x)))/(a^2 + b^2)^2 + a/((a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [coth(x)^1/(a + b*sinh(x))^2, x, 3, log(sinh(x))/a^2 - log(a + b*sinh(x))/a^2 + 1/(a*(a + b*sinh(x)))]
    @test_int [coth(x)^2/(a + b*sinh(x))^2, x, 8, (2*b*atanh(cosh(x)))/a^3 - (2*(a^2 + 2*b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a^3*sqrt(a^2 + b^2)) - (2*coth(x))/a^2 + coth(x)/(a*(a + b*sinh(x)))]
    @test_int [coth(x)^3/(a + b*sinh(x))^2, x, 3, (2*b*csch(x))/a^3 - csch(x)^2/(2*a^2) + ((a^2 + 3*b^2)*log(sinh(x)))/a^4 - ((a^2 + 3*b^2)*log(a + b*sinh(x)))/a^4 + (a^2 + b^2)/(a^3*(a + b*sinh(x)))]
    @test_int [coth(x)^4/(a + b*sinh(x))^2, x, 8, (b*(3*a^2 + 4*b^2)*atanh(cosh(x)))/a^5 - (2*sqrt(a^2 + b^2)*(a^2 + 4*b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/a^5 - ((7*a^2 + 12*b^2)*coth(x))/(3*a^4) + ((a^2 + 2*b^2)*coth(x)*csch(x))/(a^3*b) - ((3 + (4*b^2)/a^2)*coth(x)*csch(x))/(3*b*(a + b*sinh(x))) - (coth(x)*csch(x)^2)/(3*a*(a + b*sinh(x)))]


    @test_int [coth(x)*sqrt(a + b*sinh(x)), x, 4, -2*sqrt(a)*atanh(sqrt(a + b*sinh(x))/sqrt(a)) + 2*sqrt(a + b*sinh(x))]
    @test_int [coth(x)/sqrt(a + b*sinh(x)), x, 3, -((2*atanh(sqrt(a + b*sinh(x))/sqrt(a)))/sqrt(a))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*Hyper(c+d*x))*(a+b*sinh(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*cosh(c+d*x))*(a+b*sinh(c+d*x))^n=#


    @test_int [(A + B*cosh(x))/(a + b*sinh(x)), x, 7, -((2*A*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/sqrt(a^2 + b^2)) + (B*log(a + b*sinh(x)))/b]

    @test_int [(A + B*cosh(x))/(im + sinh(x)), x, 5, B*log(im + sinh(x)) - (A*cosh(x))/(1 - im*sinh(x))]
    @test_int [(A + B*cosh(x))/(im - sinh(x)), x, 5, (-B)*log(im - sinh(x)) + (A*cosh(x))/(1 + im*sinh(x))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*tanh(c+d*x))*(a+b*sinh(c+d*x))^n=#


    @test_int [(A + B*tanh(x))/(a + b*sinh(x)), x, 11, (b*B*atan(sinh(x)))/(a^2 + b^2) - (2*A*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/sqrt(a^2 + b^2) + (a*B*log(cosh(x)))/(a^2 + b^2) - (a*B*log(a + b*sinh(x)))/(a^2 + b^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*coth(c+d*x))*(a+b*sinh(c+d*x))^n=#


    @test_int [(A + B*coth(x))/(a + b*sinh(x)), x, 9, -((2*A*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/sqrt(a^2 + b^2)) + (B*log(sinh(x)))/a - (B*log(a + b*sinh(x)))/a]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*sech(c+d*x))*(a+b*sinh(c+d*x))^n=#


    @test_int [(A + B*sech(x))/(a + b*sinh(x)), x, 12, (a*B*atan(sinh(x)))/(a^2 + b^2) - (2*A*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/sqrt(a^2 + b^2) - (b*B*log(cosh(x)))/(a^2 + b^2) + (b*B*log(a + b*sinh(x)))/(a^2 + b^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*csch(c+d*x))*(a+b*sinh(c+d*x))^n=#


    @test_int [(A + B*csch(x))/(a + b*sinh(x)), x, 6, -((B*atanh(cosh(x)))/a) - (2*(a*A - b*B)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(a*sqrt(a^2 + b^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*Hyper(c+d*x)+C*Hyper(c+d*x))*(a+b*sinh(c+d*x))^n=#


    @test_int [(A + B*cosh(d + e*x) + C*sinh(d + e*x))/(a + c*sinh(d + e*x)), x, 7, (C*x)/c - (2*(A*c - a*C)*atanh((c - a*tanh((1/2)*(d + e*x)))/sqrt(a^2 + c^2)))/(c*sqrt(a^2 + c^2)*e) + (B*log(a + c*sinh(d + e*x)))/(c*e)]
    @test_int [(A + B*cosh(d + e*x) + C*sinh(d + e*x))/(a + c*sinh(d + e*x))^2, x, 8, -((2*(a*A + c*C)*atanh((c - a*tanh((1/2)*(d + e*x)))/sqrt(a^2 + c^2)))/((a^2 + c^2)^(3/2)*e)) - B/(c*e*(a + c*sinh(d + e*x))) - ((A*c - a*C)*cosh(d + e*x))/((a^2 + c^2)*e*(a + c*sinh(d + e*x)))]
    @test_int [(A + B*cosh(d + e*x) + C*sinh(d + e*x))/(a + c*sinh(d + e*x))^3, x, 9, -(((2*a^2*A - A*c^2 + 3*a*c*C)*atanh((c - a*tanh((1/2)*(d + e*x)))/sqrt(a^2 + c^2)))/((a^2 + c^2)^(5/2)*e)) - B/(2*c*e*(a + c*sinh(d + e*x))^2) - ((A*c - a*C)*cosh(d + e*x))/(2*(a^2 + c^2)*e*(a + c*sinh(d + e*x))^2) - ((3*a*A*c - a^2*C + 2*c^2*C)*cosh(d + e*x))/(2*(a^2 + c^2)^2*e*(a + c*sinh(d + e*x)))]
    @test_int [(A + B*cosh(d + e*x) + C*sinh(d + e*x))/(a + c*sinh(d + e*x))^4, x, 10, -(((2*a^3*A - 3*a*A*c^2 + 4*a^2*c*C - c^3*C)*atanh((c - a*tanh((1/2)*(d + e*x)))/sqrt(a^2 + c^2)))/((a^2 + c^2)^(7/2)*e)) - B/(3*c*e*(a + c*sinh(d + e*x))^3) - ((A*c - a*C)*cosh(d + e*x))/(3*(a^2 + c^2)*e*(a + c*sinh(d + e*x))^3) - ((5*a*A*c - 2*a^2*C + 3*c^2*C)*cosh(d + e*x))/(6*(a^2 + c^2)^2*e*(a + c*sinh(d + e*x))^2) - ((11*a^2*A*c - 4*A*c^3 - 2*a^3*C + 13*a*c^2*C)*cosh(d + e*x))/(6*(a^2 + c^2)^3*e*(a + c*sinh(d + e*x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cosh(c+d*x)^n*(a+b*sinh(c+d*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*sinh(c+d*x)^2)^p=#


    @test_int [x^3/(a + b*sinh(x)^2), x, 13, (x^3*log(1 + (b*ℯ^(2*x))/(2*a - 2*sqrt(a)*sqrt(a - b) - b)))/(2*sqrt(a)*sqrt(a - b)) - (x^3*log(1 + (b*ℯ^(2*x))/(2*a + 2*sqrt(a)*sqrt(a - b) - b)))/(2*sqrt(a)*sqrt(a - b)) + (3*x^2*PolyLog(2, -((b*ℯ^(2*x))/(2*a - 2*sqrt(a)*sqrt(a - b) - b))))/(4*sqrt(a)*sqrt(a - b)) - (3*x^2*PolyLog(2, -((b*ℯ^(2*x))/(2*a + 2*sqrt(a)*sqrt(a - b) - b))))/(4*sqrt(a)*sqrt(a - b)) - (3*x*PolyLog(3, -((b*ℯ^(2*x))/(2*a - 2*sqrt(a)*sqrt(a - b) - b))))/(4*sqrt(a)*sqrt(a - b)) + (3*x*PolyLog(3, -((b*ℯ^(2*x))/(2*a + 2*sqrt(a)*sqrt(a - b) - b))))/(4*sqrt(a)*sqrt(a - b)) + (3*PolyLog(4, -((b*ℯ^(2*x))/(2*a - 2*sqrt(a)*sqrt(a - b) - b))))/(8*sqrt(a)*sqrt(a - b)) - (3*PolyLog(4, -((b*ℯ^(2*x))/(2*a + 2*sqrt(a)*sqrt(a - b) - b))))/(8*sqrt(a)*sqrt(a - b))]
    @test_int [x^2/(a + b*sinh(x)^2), x, 11, (x^2*log(1 + (b*ℯ^(2*x))/(2*a - 2*sqrt(a)*sqrt(a - b) - b)))/(2*sqrt(a)*sqrt(a - b)) - (x^2*log(1 + (b*ℯ^(2*x))/(2*a + 2*sqrt(a)*sqrt(a - b) - b)))/(2*sqrt(a)*sqrt(a - b)) + (x*PolyLog(2, -((b*ℯ^(2*x))/(2*a - 2*sqrt(a)*sqrt(a - b) - b))))/(2*sqrt(a)*sqrt(a - b)) - (x*PolyLog(2, -((b*ℯ^(2*x))/(2*a + 2*sqrt(a)*sqrt(a - b) - b))))/(2*sqrt(a)*sqrt(a - b)) - PolyLog(3, -((b*ℯ^(2*x))/(2*a - 2*sqrt(a)*sqrt(a - b) - b)))/(4*sqrt(a)*sqrt(a - b)) + PolyLog(3, -((b*ℯ^(2*x))/(2*a + 2*sqrt(a)*sqrt(a - b) - b)))/(4*sqrt(a)*sqrt(a - b))]
    @test_int [x^1/(a + b*sinh(x)^2), x, 9, (x*log(1 + (b*ℯ^(2*x))/(2*a - 2*sqrt(a)*sqrt(a - b) - b)))/(2*sqrt(a)*sqrt(a - b)) - (x*log(1 + (b*ℯ^(2*x))/(2*a + 2*sqrt(a)*sqrt(a - b) - b)))/(2*sqrt(a)*sqrt(a - b)) + PolyLog(2, -((b*ℯ^(2*x))/(2*a - 2*sqrt(a)*sqrt(a - b) - b)))/(4*sqrt(a)*sqrt(a - b)) - PolyLog(2, -((b*ℯ^(2*x))/(2*a + 2*sqrt(a)*sqrt(a - b) - b)))/(4*sqrt(a)*sqrt(a - b))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cosh(c+d*x)^n*(a+b*sinh(c+d*x)^2)^p=#


    @test_int [(cosh(a + b*x)*(-2 + sinh(a + b*x)^2))/x, x, 13, (-(9/4))*cosh(a)*CoshIntegral(b*x) + (1/4)*cosh(3*a)*CoshIntegral(3*b*x) - (9/4)*sinh(a)*SinhIntegral(b*x) + (1/4)*sinh(3*a)*SinhIntegral(3*b*x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(1-a^2*x^2)^m*sinh(sqrt(1-a*x)/sqrt(1+a*x))^n=#


    @test_int [sinh(sqrt(1 - a*x)/sqrt(1 + a*x))^3/(1 - a^2*x^2), x, 5, (3*SinhIntegral(sqrt(1 - a*x)/sqrt(1 + a*x)))/(4*a) - SinhIntegral((3*sqrt(1 - a*x))/sqrt(1 + a*x))/(4*a)]
    @test_int [sinh(sqrt(1 - a*x)/sqrt(1 + a*x))^2/(1 - a^2*x^2), x, 4, -(CoshIntegral((2*sqrt(1 - a*x))/sqrt(1 + a*x))/(2*a)) + log(sqrt(1 - a*x)/sqrt(1 + a*x))/(2*a)]
    @test_int [sinh(sqrt(1 - a*x)/sqrt(1 + a*x))^1/(1 - a^2*x^2), x, 2, -(SinhIntegral(sqrt(1 - a*x)/sqrt(1 + a*x))/a)]
    @test_int [1/(sinh(sqrt(1 - a*x)/sqrt(1 + a*x))^1*(1 - a^2*x^2)), x, 1, Unintegrable(csch(sqrt(1 - a*x)/sqrt(1 + a*x))/((1 - a*x)*(1 + a*x)), x)]
    @test_int [1/(sinh(sqrt(1 - a*x)/sqrt(1 + a*x))^2*(1 - a^2*x^2)), x, 1, Unintegrable(csch(sqrt(1 - a*x)/sqrt(1 + a*x))^2/((1 - a*x)*(1 + a*x)), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*sinh(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sinh(a+b*log(c*x^n))^p=#


    @test_int [sinh(a + b*log(c*x^n)), x, 1, -((b*n*x*cosh(a + b*log(c*x^n)))/(1 - b^2*n^2)) + (x*sinh(a + b*log(c*x^n)))/(1 - b^2*n^2)]
    @test_int [sinh(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*x)/(1 - 4*b^2*n^2) - (2*b*n*x*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(1 - 4*b^2*n^2) + (x*sinh(a + b*log(c*x^n))^2)/(1 - 4*b^2*n^2)]
    @test_int [sinh(a + b*log(c*x^n))^3, x, 2, -((6*b^3*n^3*x*cosh(a + b*log(c*x^n)))/(1 - 10*b^2*n^2 + 9*b^4*n^4)) + (6*b^2*n^2*x*sinh(a + b*log(c*x^n)))/(1 - 10*b^2*n^2 + 9*b^4*n^4) - (3*b*n*x*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n))^2)/(1 - 9*b^2*n^2) + (x*sinh(a + b*log(c*x^n))^3)/(1 - 9*b^2*n^2)]
    @test_int [sinh(a + b*log(c*x^n))^4, x, 3, (24*b^4*n^4*x)/(1 - 20*b^2*n^2 + 64*b^4*n^4) - (24*b^3*n^3*x*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(1 - 20*b^2*n^2 + 64*b^4*n^4) + (12*b^2*n^2*x*sinh(a + b*log(c*x^n))^2)/(1 - 20*b^2*n^2 + 64*b^4*n^4) - (4*b*n*x*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n))^3)/(1 - 16*b^2*n^2) + (x*sinh(a + b*log(c*x^n))^4)/(1 - 16*b^2*n^2)]


    @test_int [x^m*sinh(a + b*log(c*x^n)), x, 1, -((b*n*x^(1 + m)*cosh(a + b*log(c*x^n)))/((1 + m)^2 - b^2*n^2)) + ((1 + m)*x^(1 + m)*sinh(a + b*log(c*x^n)))/((1 + m)^2 - b^2*n^2)]
    @test_int [x^m*sinh(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*x^(1 + m))/((1 + m)*((1 + m)^2 - 4*b^2*n^2)) - (2*b*n*x^(1 + m)*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/((1 + m)^2 - 4*b^2*n^2) + ((1 + m)*x^(1 + m)*sinh(a + b*log(c*x^n))^2)/((1 + m)^2 - 4*b^2*n^2)]
    @test_int [x^m*sinh(a + b*log(c*x^n))^3, x, 2, -((6*b^3*n^3*x^(1 + m)*cosh(a + b*log(c*x^n)))/(((1 + m)^2 - 9*b^2*n^2)*((1 + m)^2 - b^2*n^2))) + (6*b^2*(1 + m)*n^2*x^(1 + m)*sinh(a + b*log(c*x^n)))/(((1 + m)^2 - 9*b^2*n^2)*((1 + m)^2 - b^2*n^2)) - (3*b*n*x^(1 + m)*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n))^2)/((1 + m)^2 - 9*b^2*n^2) + ((1 + m)*x^(1 + m)*sinh(a + b*log(c*x^n))^3)/((1 + m)^2 - 9*b^2*n^2)]
    @test_int [x^m*sinh(a + b*log(c*x^n))^4, x, 3, (24*b^4*n^4*x^(1 + m))/((1 + m)*((1 + m)^2 - 16*b^2*n^2)*((1 + m)^2 - 4*b^2*n^2)) - (24*b^3*n^3*x^(1 + m)*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(((1 + m)^2 - 16*b^2*n^2)*((1 + m)^2 - 4*b^2*n^2)) + (12*b^2*(1 + m)*n^2*x^(1 + m)*sinh(a + b*log(c*x^n))^2)/(((1 + m)^2 - 16*b^2*n^2)*((1 + m)^2 - 4*b^2*n^2)) - (4*b*n*x^(1 + m)*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n))^3)/((1 + m)^2 - 16*b^2*n^2) + ((1 + m)*x^(1 + m)*sinh(a + b*log(c*x^n))^4)/((1 + m)^2 - 16*b^2*n^2)]


    @test_int [sinh(a + b*log(c*x^n))/x, x, 2, cosh(a + b*log(c*x^n))/(b*n)]
    @test_int [sinh(a + b*log(c*x^n))^2/x, x, 3, -log(x)/2 + (cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(2*b*n)]
    @test_int [sinh(a + b*log(c*x^n))^3/x, x, 3, -(cosh(a + b*log(c*x^n))/(b*n)) + cosh(a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [sinh(a + b*log(c*x^n))^4/x, x, 4, 3*log(x)/8 - (3*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(8*b*n) + (cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n))^3)/(4*b*n)]
    @test_int [sinh(a + b*log(c*x^n))^5/x, x, 3, cosh(a + b*log(c*x^n))/(b*n) - (2*cosh(a + b*log(c*x^n))^3)/(3*b*n) + cosh(a + b*log(c*x^n))^5/(5*b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sinh(a+b*log(c*x^n))^(p/2)=#


    @test_int [sinh(a + b*log(c*x^n))^(5/2)/x, x, 4, (6*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2)*sqrt(sinh(a + b*log(c*x^n))))/(5*b*n*sqrt(im*sinh(a + b*log(c*x^n)))) + (2*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n))^(3/2))/(5*b*n)]
    @test_int [sinh(a + b*log(c*x^n))^(3/2)/x, x, 4, (2*im*Elliptic.F((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2)*sqrt(im*sinh(a + b*log(c*x^n))))/(3*b*n*sqrt(sinh(a + b*log(c*x^n)))) + (2*cosh(a + b*log(c*x^n))*sqrt(sinh(a + b*log(c*x^n))))/(3*b*n)]
    @test_int [sqrt(sinh(a + b*log(c*x^n)))/x, x, 3, -((2*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2)*sqrt(sinh(a + b*log(c*x^n))))/(b*n*sqrt(im*sinh(a + b*log(c*x^n)))))]
    @test_int [1/(x*sqrt(sinh(a + b*log(c*x^n)))), x, 3, -((2*im*Elliptic.F((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2)*sqrt(im*sinh(a + b*log(c*x^n))))/(b*n*sqrt(sinh(a + b*log(c*x^n)))))]
    @test_int [1/(x*sinh(a + b*log(c*x^n))^(3/2)), x, 4, -((2*cosh(a + b*log(c*x^n)))/(b*n*sqrt(sinh(a + b*log(c*x^n))))) - (2*im*Elliptic.E((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2)*sqrt(sinh(a + b*log(c*x^n))))/(b*n*sqrt(im*sinh(a + b*log(c*x^n))))]
    @test_int [1/(x*sinh(a + b*log(c*x^n))^(5/2)), x, 4, -((2*cosh(a + b*log(c*x^n)))/(3*b*n*sinh(a + b*log(c*x^n))^(3/2))) + (2*im*Elliptic.F((1/2)*(im*a - pi/2 + im*b*log(c*x^n)), 2)*sqrt(im*sinh(a + b*log(c*x^n))))/(3*b*n*sqrt(sinh(a + b*log(c*x^n))))]


    @test_int [sinh(a + 2/n*log(c*x^n))^(5/2), x, 8, (-(1/4))*x*sinh(a + (2*log(c*x^n))/n)^(5/2) - (5*x*sinh(a + (2*log(c*x^n))/n)^(5/2))/(ℯ^(2*a)*(c*x^n)^(4/n)*(4*(1 - 1/(ℯ^(2*a)*(c*x^n)^(4/n)))^2)) + (5*x*sinh(a + (2*log(c*x^n))/n)^(5/2))/(12*(1 - 1/(ℯ^(2*a)*(c*x^n)^(4/n)))) - (5*x*acsc(ℯ^a*(c*x^n)^(2/n))*sinh(a + (2*log(c*x^n))/n)^(5/2))/(ℯ^(3*a)*(c*x^n)^(6/n)*(4*(1 - 1/(ℯ^(2*a)*(c*x^n)^(4/n)))^(5/2)))]
    @test_int [sqrt(sinh(a + 2/n*log(c*x^n))), x, 6, (1/2)*x*sqrt(sinh(a + (2*log(c*x^n))/n)) + (x*acsc(ℯ^a*(c*x^n)^(2/n))*sqrt(sinh(a + (2*log(c*x^n))/n)))/(ℯ^a*(c*x^n)^(2/n)*(2*sqrt(1 - 1/(ℯ^(2*a)*(c*x^n)^(4/n)))))]
    @test_int [1/sinh(a + 2/n*log(c*x^n))^(3/2), x, 3, -((x*(1 - 1/(ℯ^(2*a)*(c*x^n)^(4/n))))/(2*sinh(a + (2*log(c*x^n))/n)^(3/2)))]
    @test_int [1/sinh(a + 2/n*log(c*x^n))^(7/2), x, 4, -((x*(1 - 1/(ℯ^(2*a)*(c*x^n)^(4/n))))/(6*sinh(a + (2*log(c*x^n))/n)^(7/2))) + (x*(1 - 1/(ℯ^(2*a)*(c*x^n)^(4/n))))/(ℯ^(2*a)*(c*x^n)^(4/n)*(15*sinh(a + (2*log(c*x^n))/n)^(7/2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh((a+b*x)/(c+d*x))^n=#


    @test_int [sinh(a/(c + d*x)), x, 4, -((a*CoshIntegral(a/(c + d*x)))/d) + ((c + d*x)*sinh(a/(c + d*x)))/d]
    @test_int [sinh(a/(c + d*x))^2, x, 5, ((c + d*x)*sinh(a/(c + d*x))^2)/d - (a*SinhIntegral((2*a)/(c + d*x)))/d]
    @test_int [sinh(a/(c + d*x))^3, x, 6, (3*a*CoshIntegral(a/(c + d*x)))/(4*d) - (3*a*CoshIntegral((3*a)/(c + d*x)))/(4*d) + ((c + d*x)*sinh(a/(c + d*x))^3)/d]


    @test_int [sinh(b*x/(c + d*x)), x, 5, (b*c*cosh(b/d)*CoshIntegral((b*c)/(d*(c + d*x))))/d^2 + ((c + d*x)*sinh((b*x)/(c + d*x)))/d - (b*c*sinh(b/d)*SinhIntegral((b*c)/(d*(c + d*x))))/d^2]
    @test_int [sinh(b*x/(c + d*x))^2, x, 6, (b*c*CoshIntegral((2*b*c)/(d*(c + d*x)))*sinh((2*b)/d))/d^2 + ((c + d*x)*sinh((b*x)/(c + d*x))^2)/d - (b*c*cosh((2*b)/d)*SinhIntegral((2*b*c)/(d*(c + d*x))))/d^2]
    @test_int [sinh(b*x/(c + d*x))^3, x, 9, -((3*b*c*cosh(b/d)*CoshIntegral((b*c)/(d*(c + d*x))))/(4*d^2)) + (3*b*c*cosh((3*b)/d)*CoshIntegral((3*b*c)/(d*(c + d*x))))/(4*d^2) + ((c + d*x)*sinh((b*x)/(c + d*x))^3)/d + (3*b*c*sinh(b/d)*SinhIntegral((b*c)/(d*(c + d*x))))/(4*d^2) - (3*b*c*sinh((3*b)/d)*SinhIntegral((3*b*c)/(d*(c + d*x))))/(4*d^2)]


    @test_int [sinh((a + b*x)/(c + d*x)), x, 5, ((b*c - a*d)*cosh(b/d)*CoshIntegral((b*c - a*d)/(d*(c + d*x))))/d^2 + ((c + d*x)*sinh((a + b*x)/(c + d*x)))/d - ((b*c - a*d)*sinh(b/d)*SinhIntegral((b*c - a*d)/(d*(c + d*x))))/d^2]
    @test_int [sinh((a + b*x)/(c + d*x))^2, x, 6, ((b*c - a*d)*CoshIntegral((2*(b*c - a*d))/(d*(c + d*x)))*sinh((2*b)/d))/d^2 + ((c + d*x)*sinh((a + b*x)/(c + d*x))^2)/d - ((b*c - a*d)*cosh((2*b)/d)*SinhIntegral((2*(b*c - a*d))/(d*(c + d*x))))/d^2]
    @test_int [sinh((a + b*x)/(c + d*x))^3, x, 9, -((3*(b*c - a*d)*cosh(b/d)*CoshIntegral((b*c - a*d)/(d*(c + d*x))))/(4*d^2)) + (3*(b*c - a*d)*cosh((3*b)/d)*CoshIntegral((3*(b*c - a*d))/(d*(c + d*x))))/(4*d^2) + ((c + d*x)*sinh((a + b*x)/(c + d*x))^3)/d + (3*(b*c - a*d)*sinh(b/d)*SinhIntegral((b*c - a*d)/(d*(c + d*x))))/(4*d^2) - (3*(b*c - a*d)*sinh((3*b)/d)*SinhIntegral((3*(b*c - a*d))/(d*(c + d*x))))/(4*d^2)]


    @test_int [sinh(e + f*(a + b*x)/(c + d*x)), x, 6, ((b*c - a*d)*f*cosh(e + (b*f)/d)*CoshIntegral(((b*c - a*d)*f)/(d*(c + d*x))))/d^2 + ((c + d*x)*sinh((c*e + a*f + d*e*x + b*f*x)/(c + d*x)))/d - ((b*c - a*d)*f*sinh(e + (b*f)/d)*SinhIntegral(((b*c - a*d)*f)/(d*(c + d*x))))/d^2]
    @test_int [sinh(e + f*(a + b*x)/(c + d*x))^2, x, 7, ((b*c - a*d)*f*CoshIntegral((2*(b*c - a*d)*f)/(d*(c + d*x)))*sinh(2*(e + (b*f)/d)))/d^2 + ((c + d*x)*sinh((c*e + a*f + d*e*x + b*f*x)/(c + d*x))^2)/d - ((b*c - a*d)*f*cosh(2*(e + (b*f)/d))*SinhIntegral((2*(b*c - a*d)*f)/(d*(c + d*x))))/d^2]
    @test_int [sinh(e + f*(a + b*x)/(c + d*x))^3, x, 10, -((3*(b*c - a*d)*f*cosh(e + (b*f)/d)*CoshIntegral(((b*c - a*d)*f)/(d*(c + d*x))))/(4*d^2)) + (3*(b*c - a*d)*f*cosh(3*(e + (b*f)/d))*CoshIntegral((3*(b*c - a*d)*f)/(d*(c + d*x))))/(4*d^2) + ((c + d*x)*sinh((c*e + a*f + d*e*x + b*f*x)/(c + d*x))^3)/d + (3*(b*c - a*d)*f*sinh(e + (b*f)/d)*SinhIntegral(((b*c - a*d)*f)/(d*(c + d*x))))/(4*d^2) - (3*(b*c - a*d)*f*sinh(3*(e + (b*f)/d))*SinhIntegral((3*(b*c - a*d)*f)/(d*(c + d*x))))/(4*d^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*sinh(c+d*x)^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*sinh(a+b*x)^m=#


    @test_int [ℯ^(a + b*x)*sinh(a + b*x)^4, x, 4, -(ℯ^(-3*a - 3*b*x)/(48*b)) + ℯ^(-a - b*x)/(4*b) + (3*ℯ^(a + b*x))/(8*b) - ℯ^(3*a + 3*b*x)/(12*b) + ℯ^(5*a + 5*b*x)/(80*b)]
    @test_int [ℯ^(a + b*x)*sinh(a + b*x)^3, x, 5, ℯ^(-2*a - 2*b*x)/(16*b) - (3*ℯ^(2*a + 2*b*x))/(16*b) + ℯ^(4*a + 4*b*x)/(32*b) + (3*x)/8]
    @test_int [ℯ^(a + b*x)*sinh(a + b*x)^2, x, 4, -(ℯ^(-a - b*x)/(4*b)) - ℯ^(a + b*x)/(2*b) + ℯ^(3*a + 3*b*x)/(12*b)]
    @test_int [ℯ^(a + b*x)*sinh(a + b*x)^1, x, 4, ℯ^(2*a + 2*b*x)/(4*b) - x/2]
    @test_int [ℯ^(a + b*x)*csch(a + b*x)^1, x, 3, log(1 - ℯ^(2*a + 2*b*x))/b]
    @test_int [ℯ^(a + b*x)*csch(a + b*x)^2, x, 4, (2*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (2*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*csch(a + b*x)^3, x, 3, -((2*ℯ^(4*a + 4*b*x))/(b*(1 - ℯ^(2*a + 2*b*x))^2))]
    @test_int [ℯ^(a + b*x)*csch(a + b*x)^4, x, 6, (8*ℯ^(3*a + 3*b*x))/(3*b*(1 - ℯ^(2*a + 2*b*x))^3) - (2*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))^2) + ℯ^(a + b*x)/(b*(1 - ℯ^(2*a + 2*b*x))) + atanh(ℯ^(a + b*x))/b]
    @test_int [ℯ^(a + b*x)*csch(a + b*x)^5, x, 5, -(4/(b*(1 - ℯ^(2*a + 2*b*x))^4)) + 32/(3*b*(1 - ℯ^(2*a + 2*b*x))^3) - 8/(b*(1 - ℯ^(2*a + 2*b*x))^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^x*sinh(n*x)^m=#


    @test_int [ℯ^x*sinh(2*x)^2, x, 4, -(1/12)/ℯ^(3*x) - ℯ^x/2 + ℯ^(5*x)/20]
    @test_int [ℯ^x*sinh(2*x), x, 4, 1/(ℯ^x*2) + ℯ^(3*x)/6]
    @test_int [ℯ^x*csch(2*x), x, 5, atan(ℯ^x) - atanh(ℯ^x)]
    @test_int [ℯ^x*csch(2*x)^2, x, 6, ℯ^x/(1 - ℯ^(4*x)) - atan(ℯ^x)/2 - atanh(ℯ^x)/2]


    @test_int [ℯ^x*sinh(3*x)^2, x, 4, -(1/20)/ℯ^(5*x) - ℯ^x/2 + ℯ^(7*x)/28]
    @test_int [ℯ^x*sinh(3*x), x, 4, 1/(ℯ^(2*x)*4) + ℯ^(4*x)/8]
    @test_int [ℯ^x*csch(3*x), x, 9, atan((1 + 2*ℯ^(2*x))/sqrt(3))/sqrt(3) + (1/3)*log(1 - ℯ^(2*x)) - (1/6)*log(1 + ℯ^(2*x) + ℯ^(4*x))]
    @test_int [ℯ^x*csch(3*x)^2, x, 13, (2*ℯ^x)/(3*(1 - ℯ^(6*x))) + atan((1 - 2*ℯ^x)/sqrt(3))/(3*sqrt(3)) - atan((1 + 2*ℯ^x)/sqrt(3))/(3*sqrt(3)) - (2*atanh(ℯ^x))/9 + (1/18)*log(1 - ℯ^x + ℯ^(2*x)) - (1/18)*log(1 + ℯ^x + ℯ^(2*x))]


    @test_int [ℯ^x*sinh(4*x)^2, x, 4, -(1/28)/ℯ^(7*x) - ℯ^x/2 + ℯ^(9*x)/36]
    @test_int [ℯ^x*sinh(4*x), x, 4, 1/(ℯ^(3*x)*6) + ℯ^(5*x)/10]
    @test_int [ℯ^x*csch(4*x), x, 15, (-(1/2))*atan(ℯ^x) - atan(1 - sqrt(2)*ℯ^x)/(2*sqrt(2)) + atan(1 + sqrt(2)*ℯ^x)/(2*sqrt(2)) - atanh(ℯ^x)/2 - log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2)) + log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2))]
    @test_int [ℯ^x*csch(4*x)^2, x, 16, ℯ^x/(2*(1 - ℯ^(8*x))) - atan(ℯ^x)/8 + atan(1 - sqrt(2)*ℯ^x)/(8*sqrt(2)) - atan(1 + sqrt(2)*ℯ^x)/(8*sqrt(2)) - atanh(ℯ^x)/8 + log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(16*sqrt(2)) - log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(16*sqrt(2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*sinh(d+e*x)^m=#


    @test_int [F^(c*(a + b*x))*sinh(d + e*x)^3, x, 2, -((6*e^3*F^(c*(a + b*x))*cosh(d + e*x))/(9*e^4 - 10*b^2*c^2*e^2*log(F)^2 + b^4*c^4*log(F)^4)) + (6*b*c*e^2*F^(c*(a + b*x))*log(F)*sinh(d + e*x))/(9*e^4 - 10*b^2*c^2*e^2*log(F)^2 + b^4*c^4*log(F)^4) + (3*e*F^(c*(a + b*x))*cosh(d + e*x)*sinh(d + e*x)^2)/(9*e^2 - b^2*c^2*log(F)^2) - (b*c*F^(c*(a + b*x))*log(F)*sinh(d + e*x)^3)/(9*e^2 - b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*sinh(d + e*x)^2, x, 2, -((2*e^2*F^(c*(a + b*x)))/(b*c*log(F)*(4*e^2 - b^2*c^2*log(F)^2))) + (2*e*F^(c*(a + b*x))*cosh(d + e*x)*sinh(d + e*x))/(4*e^2 - b^2*c^2*log(F)^2) - (b*c*F^(c*(a + b*x))*log(F)*sinh(d + e*x)^2)/(4*e^2 - b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*sinh(d + e*x)^1, x, 1, (e*F^(c*(a + b*x))*cosh(d + e*x))/(e^2 - b^2*c^2*log(F)^2) - (b*c*F^(c*(a + b*x))*log(F)*sinh(d + e*x))/(e^2 - b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*csch(d + e*x)^1, x, 1, -((2*ℯ^(d + e*x)*F^(c*(a + b*x))*HypergeometricFunctions._₂F₁(1, (e + b*c*log(F))/(2*e), (1/2)*(3 + (b*c*log(F))/e), ℯ^(2*(d + e*x))))/(e + b*c*log(F)))]
    @test_int [F^(c*(a + b*x))*csch(d + e*x)^2, x, 1, (4*ℯ^(2*(d + e*x))*F^(c*(a + b*x))*HypergeometricFunctions._₂F₁(2, 1 + (b*c*log(F))/(2*e), 2 + (b*c*log(F))/(2*e), ℯ^(2*(d + e*x))))/(2*e + b*c*log(F))]
    @test_int [F^(c*(a + b*x))*csch(d + e*x)^3, x, 2, -((F^(c*(a + b*x))*coth(d + e*x)*csch(d + e*x))/(2*e)) - (b*c*F^(c*(a + b*x))*csch(d + e*x)*log(F))/(2*e^2) + (ℯ^(d + e*x)*F^(c*(a + b*x))*HypergeometricFunctions._₂F₁(1, (e + b*c*log(F))/(2*e), (1/2)*(3 + (b*c*log(F))/e), ℯ^(2*(d + e*x)))*(e - b*c*log(F)))/e^2]
    @test_int [F^(c*(a + b*x))*csch(d + e*x)^4, x, 2, -((F^(c*(a + b*x))*coth(d + e*x)*csch(d + e*x)^2)/(3*e)) - (b*c*F^(c*(a + b*x))*csch(d + e*x)^2*log(F))/(6*e^2) - (2*ℯ^(2*(d + e*x))*F^(c*(a + b*x))*HypergeometricFunctions._₂F₁(2, 1 + (b*c*log(F))/(2*e), 2 + (b*c*log(F))/(2*e), ℯ^(2*(d + e*x)))*(2*e - b*c*log(F)))/(3*e^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*(sinh(a*c+b*c*x)^2)^(m/2)=#


    @test_int [ℯ^(c*(a + b*x))*(sinh(a*c + b*c*x)^2)^(5/2), x, 6, (csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/(128*b*c*ℯ^(4*c*(a + b*x))) - (5*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/(64*b*c*ℯ^(2*c*(a + b*x))) + (5*ℯ^(2*c*(a + b*x))*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/(32*b*c) - (5*ℯ^(4*c*(a + b*x))*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/(128*b*c) + (ℯ^(6*c*(a + b*x))*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/(192*b*c) - (5*x*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/16]
    @test_int [ℯ^(c*(a + b*x))*(sinh(a*c + b*c*x)^2)^(3/2), x, 6, (csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/(16*b*c*ℯ^(2*c*(a + b*x))) - (3*ℯ^(2*c*(a + b*x))*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/(16*b*c) + (ℯ^(4*c*(a + b*x))*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/(32*b*c) + (3*x*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/8]
    @test_int [ℯ^(c*(a + b*x))*sqrt(sinh(a*c + b*c*x)^2), x, 5, (ℯ^(2*c*(a + b*x))*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/(4*b*c) - (x*csch(a*c + b*c*x)*sqrt(sinh(a*c + b*c*x)^2))/2]
    @test_int [ℯ^(c*(a + b*x))/sqrt(sinh(a*c + b*c*x)^2), x, 4, (log(1 - ℯ^(2*c*(a + b*x)))*sinh(a*c + b*c*x))/(b*c*sqrt(sinh(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(sinh(a*c + b*c*x)^2)^(3/2), x, 4, (-2*ℯ^(4*c*(a + b*x))*sinh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^2*sqrt(sinh(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(sinh(a*c + b*c*x)^2)^(5/2), x, 6, (-4*sinh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^4*sqrt(sinh(a*c + b*c*x)^2)) + (32*sinh(a*c + b*c*x))/(3*b*c*(1 - ℯ^(2*c*(a + b*x)))^3*sqrt(sinh(a*c + b*c*x)^2)) - (8*sinh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^2*sqrt(sinh(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(sinh(a*c + b*c*x)^2)^(7/2), x, 6, -((32*sinh(a*c + b*c*x))/(3*b*c*(1 - ℯ^(2*c*(a + b*x)))^6*sqrt(sinh(a*c + b*c*x)^2))) + (192*sinh(a*c + b*c*x))/(5*b*c*(1 - ℯ^(2*c*(a + b*x)))^5*sqrt(sinh(a*c + b*c*x)^2)) - (48*sinh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^4*sqrt(sinh(a*c + b*c*x)^2)) + (64*sinh(a*c + b*c*x))/(3*b*c*(1 - ℯ^(2*c*(a + b*x)))^3*sqrt(sinh(a*c + b*c*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x+c*x^2)*sinh(d+e*x+f*x^2)^m=#


    @test_int [ℯ^x*sinh(a + b*x), x, 1, -((b*ℯ^x*cosh(a + b*x))/(1 - b^2)) + (ℯ^x*sinh(a + b*x))/(1 - b^2)]
    @test_int [ℯ^x*sinh(a + c*x^2), x, 6, (ℯ^(-a + 1/(4*c))*sqrt(pi)*erf((1 - 2*c*x)/(2*sqrt(c))))/(4*sqrt(c)) + (ℯ^(a - 1/(4*c))*sqrt(pi)*erfi((1 + 2*c*x)/(2*sqrt(c))))/(4*sqrt(c))]
    @test_int [ℯ^x*sinh(a + b*x + c*x^2), x, 6, (ℯ^(-a + (1 - b)^2/(4*c))*sqrt(pi)*erf((1 - b - 2*c*x)/(2*sqrt(c))))/(4*sqrt(c)) + (ℯ^(a - (1 + b)^2/(4*c))*sqrt(pi)*erfi((1 + b + 2*c*x)/(2*sqrt(c))))/(4*sqrt(c))]

    @test_int [ℯ^(x^2)*sinh(a + b*x), x, 6, (-(1/4))*ℯ^(-a - b^2/4)*sqrt(pi)*erfi((1/2)*(-b + 2*x)) + (1/4)*ℯ^(a - b^2/4)*sqrt(pi)*erfi((1/2)*(b + 2*x))]
    @test_int [ℯ^(x^2)*sinh(a + c*x^2), x, 4, -((sqrt(pi)*erfi(sqrt(1 - c)*x))/(ℯ^a*(4*sqrt(1 - c)))) + (ℯ^a*sqrt(pi)*erfi(sqrt(1 + c)*x))/(4*sqrt(1 + c))]
    @test_int [ℯ^(x^2)*sinh(a + b*x + c*x^2), x, 6, (ℯ^(-a - b^2/(4*(1 - c)))*sqrt(pi)*erfi((b - 2*(1 - c)*x)/(2*sqrt(1 - c))))/(4*sqrt(1 - c)) + (ℯ^(a - b^2/(4*(1 + c)))*sqrt(pi)*erfi((b + 2*(1 + c)*x)/(2*sqrt(1 + c))))/(4*sqrt(1 + c))]


    @test_int [f^(a + b*x)*sinh(d + f*x^2), x, 8, -(ℯ^(-d + (b^2*log(f)^2)/(4*f))*f^(-1/2 + a)*sqrt(pi)*erf((2*f*x - b*log(f))/(2*sqrt(f))))/4 + (ℯ^(d - (b^2*log(f)^2)/(4*f))*f^(-1/2 + a)*sqrt(pi)*erfi((2*f*x + b*log(f))/(2*sqrt(f))))/4]
    @test_int [f^(a + b*x)*sinh(d + f*x^2)^2, x, 9, (ℯ^(-2*d + (b^2*log(f)^2)/(8*f))*f^(-1/2 + a)*sqrt(pi/2)*erf((4*f*x - b*log(f))/(2*sqrt(2)*sqrt(f))))/8 + (ℯ^(2*d - (b^2*log(f)^2)/(8*f))*f^(-1/2 + a)*sqrt(pi/2)*erfi((4*f*x + b*log(f))/(2*sqrt(2)*sqrt(f))))/8 - f^(a + b*x)/(2*b*log(f))]
    @test_int [f^(a + b*x)*sinh(d + f*x^2)^3, x, 14, (3*ℯ^(-d + (b^2*log(f)^2)/(4*f))*f^(-1/2 + a)*sqrt(pi)*erf((2*f*x - b*log(f))/(2*sqrt(f))))/16 - (ℯ^(-3*d + (b^2*log(f)^2)/(12*f))*f^(-1/2 + a)*sqrt(pi/3)*erf((6*f*x - b*log(f))/(2*sqrt(3)*sqrt(f))))/16 - (3*ℯ^(d - (b^2*log(f)^2)/(4*f))*f^(-1/2 + a)*sqrt(pi)*erfi((2*f*x + b*log(f))/(2*sqrt(f))))/16 + (ℯ^(3*d - (b^2*log(f)^2)/(12*f))*f^(-1/2 + a)*sqrt(pi/3)*erfi((6*f*x + b*log(f))/(2*sqrt(3)*sqrt(f))))/16]

    @test_int [f^(a + b*x)*sinh(d + e*x + f*x^2), x, 8, -(ℯ^(-d + (e - b*log(f))^2/(4*f))*f^(-1/2 + a)*sqrt(pi)*erf((e + 2*f*x - b*log(f))/(2*sqrt(f))))/4 + (ℯ^(d - (e + b*log(f))^2/(4*f))*f^(-1/2 + a)*sqrt(pi)*erfi((e + 2*f*x + b*log(f))/(2*sqrt(f))))/4]
    @test_int [f^(a + b*x)*sinh(d + e*x + f*x^2)^2, x, 9, (ℯ^(-2*d + (2*e - b*log(f))^2/(8*f))*f^(-1/2 + a)*sqrt(pi/2)*erf((2*e + 4*f*x - b*log(f))/(2*sqrt(2)*sqrt(f))))/8 + (ℯ^(2*d - (2*e + b*log(f))^2/(8*f))*f^(-1/2 + a)*sqrt(pi/2)*erfi((2*e + 4*f*x + b*log(f))/(2*sqrt(2)*sqrt(f))))/8 - f^(a + b*x)/(2*b*log(f))]
    @test_int [f^(a + b*x)*sinh(d + e*x + f*x^2)^3, x, 14, (3*ℯ^(-d + (e - b*log(f))^2/(4*f))*f^(-1/2 + a)*sqrt(pi)*erf((e + 2*f*x - b*log(f))/(2*sqrt(f))))/16 - (ℯ^(-3*d + (3*e - b*log(f))^2/(12*f))*f^(-1/2 + a)*sqrt(pi/3)*erf((3*e + 6*f*x - b*log(f))/(2*sqrt(3)*sqrt(f))))/16 - (3*ℯ^(d - (e + b*log(f))^2/(4*f))*f^(-1/2 + a)*sqrt(pi)*erfi((e + 2*f*x + b*log(f))/(2*sqrt(f))))/16 + (ℯ^(3*d - (3*e + b*log(f))^2/(12*f))*f^(-1/2 + a)*sqrt(pi/3)*erfi((3*e + 6*f*x + b*log(f))/(2*sqrt(3)*sqrt(f))))/16]


    @test_int [f^(a + c*x^2)*sinh(d + e*x), x, 8, If(13>=8, (ℯ^(-d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))), -((ℯ^(-d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi(-((e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(4*sqrt(c)*sqrt(log(f)))) + (ℯ^(d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + c*x^2)*sinh(d + e*x)^2, x, 9, If(13>=8, -(f^a*sqrt(pi)*erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*d - e^2/(c*log(f)))*f^a*sqrt(pi)*erfi((e - c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*d - e^2/(c*log(f)))*f^a*sqrt(pi)*erfi((e + c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))), -((f^a*sqrt(pi)*erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f)))) + (ℯ^(-2*d - e^2/(c*log(f)))*f^a*sqrt(pi)*erfi(-((e - c*x*log(f))/(sqrt(c)*sqrt(log(f))))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*d - e^2/(c*log(f)))*f^a*sqrt(pi)*erfi((e + c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + c*x^2)*sinh(d + e*x)^3, x, 14, If(13>=8, (-3*ℯ^(-d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(-3*d - (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*erfi((3*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) - (3*ℯ^(d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*d - (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*erfi((3*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))), (3*ℯ^(-d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi(-((e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) - (ℯ^(-3*d - (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*erfi(-((3*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) - (3*ℯ^(d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*d - (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*erfi((3*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))))]

    @test_int [f^(a + c*x^2)*sinh(d + f*x^2), x, 6, -(f^a*sqrt(pi)*erf(x*sqrt(f - c*log(f))))/(4*ℯ^d*sqrt(f - c*log(f))) + (ℯ^d*f^a*sqrt(pi)*erfi(x*sqrt(f + c*log(f))))/(4*sqrt(f + c*log(f)))]
    @test_int [f^(a + c*x^2)*sinh(d + f*x^2)^2, x, 7, -(f^a*sqrt(pi)*erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) + (f^a*sqrt(pi)*erf(x*sqrt(2*f - c*log(f))))/(8*ℯ^(2*d)*sqrt(2*f - c*log(f))) + (ℯ^(2*d)*f^a*sqrt(pi)*erfi(x*sqrt(2*f + c*log(f))))/(8*sqrt(2*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*sinh(d + f*x^2)^3, x, 10, (3*f^a*sqrt(pi)*erf(x*sqrt(f - c*log(f))))/(16*ℯ^d*sqrt(f - c*log(f))) - (f^a*sqrt(pi)*erf(x*sqrt(3*f - c*log(f))))/(16*ℯ^(3*d)*sqrt(3*f - c*log(f))) - (3*ℯ^d*f^a*sqrt(pi)*erfi(x*sqrt(f + c*log(f))))/(16*sqrt(f + c*log(f))) + (ℯ^(3*d)*f^a*sqrt(pi)*erfi(x*sqrt(3*f + c*log(f))))/(16*sqrt(3*f + c*log(f)))]

    @test_int [f^(a + c*x^2)*sinh(d + e*x + f*x^2), x, 8, -(ℯ^(-d + e^2/(4*f - 4*c*log(f)))*f^a*sqrt(pi)*erf((e + 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(4*sqrt(f - c*log(f))) + (ℯ^(d - e^2/(4*(f + c*log(f))))*f^a*sqrt(pi)*erfi((e + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(4*sqrt(f + c*log(f)))]
    @test_int [f^(a + c*x^2)*sinh(d + e*x + f*x^2)^2, x, 9, -(f^a*sqrt(pi)*erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*d + e^2/(2*f - c*log(f)))*f^a*sqrt(pi)*erf((e + x*(2*f - c*log(f)))/sqrt(2*f - c*log(f))))/(8*sqrt(2*f - c*log(f))) + (ℯ^(2*d - e^2/(2*f + c*log(f)))*f^a*sqrt(pi)*erfi((e + x*(2*f + c*log(f)))/sqrt(2*f + c*log(f))))/(8*sqrt(2*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*sinh(d + e*x + f*x^2)^3, x, 14, (3*ℯ^(-d + e^2/(4*f - 4*c*log(f)))*f^a*sqrt(pi)*erf((e + 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(16*sqrt(f - c*log(f))) - (ℯ^(-3*d + (9*e^2)/(12*f - 4*c*log(f)))*f^a*sqrt(pi)*erf((3*e + 2*x*(3*f - c*log(f)))/(2*sqrt(3*f - c*log(f)))))/(16*sqrt(3*f - c*log(f))) - (3*ℯ^(d - e^2/(4*(f + c*log(f))))*f^a*sqrt(pi)*erfi((e + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(16*sqrt(f + c*log(f))) + (ℯ^(3*d - (9*e^2)/(4*(3*f + c*log(f))))*f^a*sqrt(pi)*erfi((3*e + 2*x*(3*f + c*log(f)))/(2*sqrt(3*f + c*log(f)))))/(16*sqrt(3*f + c*log(f)))]


    @test_int [f^(a + b*x + c*x^2)*sinh(d + e*x), x, 8, If(13>=8, (ℯ^(-d - (e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(d - (e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))), -((ℯ^(-d - (e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi(-((e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(4*sqrt(c)*sqrt(log(f)))) + (ℯ^(d - (e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + b*x + c*x^2)*sinh(d + e*x)^2, x, 10, If(13>=8, -(f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*d - (2*e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((2*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*d - (2*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((2*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))), -((f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f)))) + (ℯ^(-2*d - (2*e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi(-((2*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*d - (2*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((2*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + b*x + c*x^2)*sinh(d + e*x)^3, x, 14, If(13>=8, (-3*ℯ^(-d - (e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(-3*d - (3*e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((3*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) - (3*ℯ^(d - (e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*d - (3*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((3*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))), (3*ℯ^(-d - (e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi(-((e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) - (ℯ^(-3*d - (3*e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi(-((3*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) - (3*ℯ^(d - (e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*d - (3*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*erfi((3*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))))]

    @test_int [f^(a + b*x + c*x^2)*sinh(d + f*x^2), x, 8, (ℯ^(-d + (b^2*log(f)^2)/(4*f - 4*c*log(f)))*f^a*sqrt(pi)*erf((b*log(f) - 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(4*sqrt(f - c*log(f))) + (ℯ^(d - (b^2*log(f)^2)/(4*(f + c*log(f))))*f^a*sqrt(pi)*erfi((b*log(f) + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(4*sqrt(f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*sinh(d + f*x^2)^2, x, 10, -(f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*d + (b^2*log(f)^2)/(8*f - 4*c*log(f)))*f^a*sqrt(pi)*erf((b*log(f) - 2*x*(2*f - c*log(f)))/(2*sqrt(2*f - c*log(f)))))/(8*sqrt(2*f - c*log(f))) + (ℯ^(2*d - (b^2*log(f)^2)/(8*f + 4*c*log(f)))*f^a*sqrt(pi)*erfi((b*log(f) + 2*x*(2*f + c*log(f)))/(2*sqrt(2*f + c*log(f)))))/(8*sqrt(2*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*sinh(d + f*x^2)^3, x, 14, (-3*ℯ^(-d + (b^2*log(f)^2)/(4*f - 4*c*log(f)))*f^a*sqrt(pi)*erf((b*log(f) - 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(16*sqrt(f - c*log(f))) + (ℯ^(-3*d + (b^2*log(f)^2)/(12*f - 4*c*log(f)))*f^a*sqrt(pi)*erf((b*log(f) - 2*x*(3*f - c*log(f)))/(2*sqrt(3*f - c*log(f)))))/(16*sqrt(3*f - c*log(f))) - (3*ℯ^(d - (b^2*log(f)^2)/(4*(f + c*log(f))))*f^a*sqrt(pi)*erfi((b*log(f) + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(16*sqrt(f + c*log(f))) + (ℯ^(3*d - (b^2*log(f)^2)/(4*(3*f + c*log(f))))*f^a*sqrt(pi)*erfi((b*log(f) + 2*x*(3*f + c*log(f)))/(2*sqrt(3*f + c*log(f)))))/(16*sqrt(3*f + c*log(f)))]

    @test_int [f^(a + b*x + c*x^2)*sinh(d + e*x + f*x^2), x, 8, -(ℯ^(-d + (e - b*log(f))^2/(4*(f - c*log(f))))*f^a*sqrt(pi)*erf((e - b*log(f) + 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(4*sqrt(f - c*log(f))) + (ℯ^(d - (e + b*log(f))^2/(4*(f + c*log(f))))*f^a*sqrt(pi)*erfi((e + b*log(f) + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(4*sqrt(f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*sinh(d + e*x + f*x^2)^2, x, 10, -(f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*d + (2*e - b*log(f))^2/(8*f - 4*c*log(f)))*f^a*sqrt(pi)*erf((2*e - b*log(f) + 2*x*(2*f - c*log(f)))/(2*sqrt(2*f - c*log(f)))))/(8*sqrt(2*f - c*log(f))) + (ℯ^(2*d - (2*e + b*log(f))^2/(8*f + 4*c*log(f)))*f^a*sqrt(pi)*erfi((2*e + b*log(f) + 2*x*(2*f + c*log(f)))/(2*sqrt(2*f + c*log(f)))))/(8*sqrt(2*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*sinh(d + e*x + f*x^2)^3, x, 14, (3*ℯ^(-d + (e - b*log(f))^2/(4*(f - c*log(f))))*f^a*sqrt(pi)*erf((e - b*log(f) + 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(16*sqrt(f - c*log(f))) - (ℯ^(-3*d + (3*e - b*log(f))^2/(12*f - 4*c*log(f)))*f^a*sqrt(pi)*erf((3*e - b*log(f) + 2*x*(3*f - c*log(f)))/(2*sqrt(3*f - c*log(f)))))/(16*sqrt(3*f - c*log(f))) - (3*ℯ^(d - (e + b*log(f))^2/(4*(f + c*log(f))))*f^a*sqrt(pi)*erfi((e + b*log(f) + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(16*sqrt(f + c*log(f))) + (ℯ^(3*d - (3*e + b*log(f))^2/(4*(3*f + c*log(f))))*f^a*sqrt(pi)*erfi((3*e + b*log(f) + 2*x*(3*f + c*log(f)))/(2*sqrt(3*f + c*log(f)))))/(16*sqrt(3*f + c*log(f)))]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*hyperbolic*sines=#


    @test_int [(x + sinh(x))^2, x, 6, -(x/2) + x^3/3 + 2*x*cosh(x) - 2*sinh(x) + (1/2)*cosh(x)*sinh(x)]
    @test_int [(x + sinh(x))^3, x, 9, -((3*x^2)/4) + x^4/4 + 5*cosh(x) + 3*x^2*cosh(x) + cosh(x)^3/3 - 6*x*sinh(x) + (3/2)*x*cosh(x)*sinh(x) - (3*sinh(x)^2)/4]


    @test_int [sinh(a + b*x)/(c + d*x^2), x, 8, -((CoshIntegral((b*sqrt(-c))/sqrt(d) + b*x)*sinh(a - (b*sqrt(-c))/sqrt(d)))/(2*sqrt(-c)*sqrt(d))) + (CoshIntegral((b*sqrt(-c))/sqrt(d) - b*x)*sinh(a + (b*sqrt(-c))/sqrt(d)))/(2*sqrt(-c)*sqrt(d)) - (cosh(a + (b*sqrt(-c))/sqrt(d))*SinhIntegral((b*sqrt(-c))/sqrt(d) - b*x))/(2*sqrt(-c)*sqrt(d)) - (cosh(a - (b*sqrt(-c))/sqrt(d))*SinhIntegral((b*sqrt(-c))/sqrt(d) + b*x))/(2*sqrt(-c)*sqrt(d))]
    @test_int [sinh(a + b*x)/(c + d*x + e*x^2), x, 8, (CoshIntegral((b*(d - sqrt(d^2 - 4*c*e)))/(2*e) + b*x)*sinh(a - (b*(d - sqrt(d^2 - 4*c*e)))/(2*e)))/sqrt(d^2 - 4*c*e) - (CoshIntegral((b*(d + sqrt(d^2 - 4*c*e)))/(2*e) + b*x)*sinh(a - (b*(d + sqrt(d^2 - 4*c*e)))/(2*e)))/sqrt(d^2 - 4*c*e) + (cosh(a - (b*(d - sqrt(d^2 - 4*c*e)))/(2*e))*SinhIntegral((b*(d - sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e) - (cosh(a - (b*(d + sqrt(d^2 - 4*c*e)))/(2*e))*SinhIntegral((b*(d + sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e)]
    end
