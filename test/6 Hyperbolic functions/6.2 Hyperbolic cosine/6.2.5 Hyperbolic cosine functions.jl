@testset "6.2.5 Hyperbolic cosine functions" begin
    @variables A, B, C, F, a, b, c, d, e, f, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Hyperbolic*Cosines=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x))^n*(A+B*cosh(c+d*x)+C*cosh(c+d*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(a+b*x)^n=#


    @test_int [cosh(a + b*x)^1, x, 1, sinh(a + b*x)/b]
    @test_int [cosh(a + b*x)^2, x, 2, x/2 + (cosh(a + b*x)*sinh(a + b*x))/(2*b)]
    @test_int [cosh(a + b*x)^3, x, 2, sinh(a + b*x)/b + sinh(a + b*x)^3/(3*b)]
    @test_int [cosh(a + b*x)^4, x, 3, (3*x)/8 + (3*cosh(a + b*x)*sinh(a + b*x))/(8*b) + (cosh(a + b*x)^3*sinh(a + b*x))/(4*b)]
    @test_int [cosh(a + b*x)^5, x, 2, sinh(a + b*x)/b + (2*sinh(a + b*x)^3)/(3*b) + sinh(a + b*x)^5/(5*b)]
    @test_int [cosh(a + b*x)^6, x, 4, (5*x)/16 + (5*cosh(a + b*x)*sinh(a + b*x))/(16*b) + (5*cosh(a + b*x)^3*sinh(a + b*x))/(24*b) + (cosh(a + b*x)^5*sinh(a + b*x))/(6*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(a+b*x)^(n/2)=#


    @test_int [cosh(a + b*x)^(7/2), x, 3, -((10*im*EllipticF((1/2)*im*(a + b*x), 2))/(21*b)) + (10*sqrt(cosh(a + b*x))*sinh(a + b*x))/(21*b) + (2*cosh(a + b*x)^(5/2)*sinh(a + b*x))/(7*b)]
    @test_int [cosh(a + b*x)^(5/2), x, 2, -((6*im*EllipticE((1/2)*im*(a + b*x), 2))/(5*b)) + (2*cosh(a + b*x)^(3/2)*sinh(a + b*x))/(5*b)]
    @test_int [cosh(a + b*x)^(3/2), x, 2, -((2*im*EllipticF((1/2)*im*(a + b*x), 2))/(3*b)) + (2*sqrt(cosh(a + b*x))*sinh(a + b*x))/(3*b)]
    @test_int [cosh(a + b*x)^(1/2), x, 1, -((2*im*EllipticE((1/2)*im*(a + b*x), 2))/b)]
    @test_int [1/cosh(a + b*x)^(1/2), x, 1, -((2*im*EllipticF((1/2)*im*(a + b*x), 2))/b)]
    @test_int [1/cosh(a + b*x)^(3/2), x, 2, (2*im*EllipticE((1/2)*im*(a + b*x), 2))/b + (2*sinh(a + b*x))/(b*sqrt(cosh(a + b*x)))]
    @test_int [1/cosh(a + b*x)^(5/2), x, 2, -((2*im*EllipticF((1/2)*im*(a + b*x), 2))/(3*b)) + (2*sinh(a + b*x))/(3*b*cosh(a + b*x)^(3/2))]
    @test_int [1/cosh(a + b*x)^(7/2), x, 3, (6*im*EllipticE((1/2)*im*(a + b*x), 2))/(5*b) + (2*sinh(a + b*x))/(5*b*cosh(a + b*x)^(5/2)) + (6*sinh(a + b*x))/(5*b*sqrt(cosh(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*cosh(a+b*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n/2=#


    @test_int [(a*cosh(x))^(7/2), x, 4, -((10*im*a^4*sqrt(cosh(x))*EllipticF((im*x)/2, 2))/(21*sqrt(a*cosh(x)))) + (10/21)*a^3*sqrt(a*cosh(x))*sinh(x) + (2/7)*a*(a*cosh(x))^(5/2)*sinh(x)]
    @test_int [(a*cosh(x))^(5/2), x, 3, -((6*im*a^2*sqrt(a*cosh(x))*EllipticE((im*x)/2, 2))/(5*sqrt(cosh(x)))) + (2/5)*a*(a*cosh(x))^(3/2)*sinh(x)]
    @test_int [(a*cosh(x))^(3/2),x, 3, -((2*im*a^2*sqrt(cosh(x))*EllipticF((im*x)/2, 2))/(3*sqrt(a*cosh(x)))) + (2/3)*a*sqrt(a*cosh(x))*sinh(x)]
    @test_int [(a*cosh(x))^(1/2), x, 2, -((2*im*sqrt(a*cosh(x))*EllipticE((im*x)/2, 2))/sqrt(cosh(x)))]
    @test_int [1/(a*cosh(x))^(1/2), x, 2, -((2*im*sqrt(cosh(x))*EllipticF((im*x)/2, 2))/sqrt(a*cosh(x)))]
    @test_int [1/(a*cosh(x))^(3/2), x, 3, (2*im*sqrt(a*cosh(x))*EllipticE((im*x)/2, 2))/(a^2*sqrt(cosh(x))) + (2*sinh(x))/(a*sqrt(a*cosh(x)))]
    @test_int [1/(a*cosh(x))^(5/2), x, 3, -((2*im*sqrt(cosh(x))*EllipticF((im*x)/2, 2))/(3*a^2*sqrt(a*cosh(x)))) + (2*sinh(x))/(3*a*(a*cosh(x))^(3/2))]
    @test_int [1/(a*cosh(x))^(7/2), x, 4, (6*im*sqrt(a*cosh(x))*EllipticE((im*x)/2, 2))/(5*a^4*sqrt(cosh(x))) + (2*sinh(x))/(5*a*(a*cosh(x))^(5/2)) + (6*sinh(x))/(5*a^3*sqrt(a*cosh(x)))]


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [(b*cosh(c + d*x))^n, x, 1, -(((b*cosh(c + d*x))^(1 + n)*Hypergeometric2F1(1/2, (1 + n)/2, (3 + n)/2, cosh(c + d*x)^2)*sinh(c + d*x))/(b*d*(1 + n)*sqrt(-sinh(c + d*x)^2)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x))^n*when*a^2-b^2=0=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cosh(x)^4/(a + a*cosh(x)), x, 6, -((3*x)/(2*a)) + (4*sinh(x))/a - (3*cosh(x)*sinh(x))/(2*a) - (cosh(x)^3*sinh(x))/(a + a*cosh(x)) + (4*sinh(x)^3)/(3*a)]
    @test_int [cosh(x)^3/(a + a*cosh(x)), x, 2, (3*x)/(2*a) - (2*sinh(x))/a + (3*cosh(x)*sinh(x))/(2*a) - (cosh(x)^2*sinh(x))/(a + a*cosh(x))]
    @test_int [cosh(x)^2/(a + a*cosh(x)), x, 4, -(x/a) + sinh(x)/a + sinh(x)/(a*(1 + cosh(x)))]
    @test_int [cosh(x)^1/(a + a*cosh(x)), x, 2, x/a - sinh(x)/(a + a*cosh(x))]
    @test_int [sech(x)^1/(a + a*cosh(x)), x, 3, atan(sinh(x))/a - sinh(x)/(a + a*cosh(x))]
    @test_int [sech(x)^2/(a + a*cosh(x)), x, 5, -(atan(sinh(x))/a) + (2*tanh(x))/a - tanh(x)/(a + a*cosh(x))]
    @test_int [sech(x)^3/(a + a*cosh(x)), x, 6, (3*atan(sinh(x)))/(2*a) - (2*tanh(x))/a + (3*sech(x)*tanh(x))/(2*a) - (sech(x)*tanh(x))/(a + a*cosh(x))]
    @test_int [sech(x)^4/(a + a*cosh(x)), x, 6, -((3*atan(sinh(x)))/(2*a)) + (4*tanh(x))/a - (3*sech(x)*tanh(x))/(2*a) - (sech(x)^2*tanh(x))/(a + a*cosh(x)) - (4*tanh(x)^3)/(3*a)]


    @test_int [1/(1 + cosh(c + d*x)), x, 1, sinh(c + d*x)/(d*(1 + cosh(c + d*x)))]
    @test_int [1/(1 + cosh(c + d*x))^2, x, 2, sinh(c + d*x)/(3*d*(1 + cosh(c + d*x))^2) + sinh(c + d*x)/(3*d*(1 + cosh(c + d*x)))]
    @test_int [1/(1 + cosh(c + d*x))^3, x, 3, sinh(c + d*x)/(5*d*(1 + cosh(c + d*x))^3) + (2*sinh(c + d*x))/(15*d*(1 + cosh(c + d*x))^2) + (2*sinh(c + d*x))/(15*d*(1 + cosh(c + d*x)))]
    @test_int [1/(1 + cosh(c + d*x))^4, x, 4, sinh(c + d*x)/(7*d*(1 + cosh(c + d*x))^4) + (3*sinh(c + d*x))/(35*d*(1 + cosh(c + d*x))^3) + (2*sinh(c + d*x))/(35*d*(1 + cosh(c + d*x))^2) + (2*sinh(c + d*x))/(35*d*(1 + cosh(c + d*x)))]

    @test_int [1/(1 - cosh(c + d*x)), x, 1, -(sinh(c + d*x)/(d*(1 - cosh(c + d*x))))]
    @test_int [1/(1 - cosh(c + d*x))^2, x, 2, -(sinh(c + d*x)/(3*d*(1 - cosh(c + d*x))^2)) - sinh(c + d*x)/(3*d*(1 - cosh(c + d*x)))]
    @test_int [1/(1 - cosh(c + d*x))^3, x, 3, -(sinh(c + d*x)/(5*d*(1 - cosh(c + d*x))^3)) - (2*sinh(c + d*x))/(15*d*(1 - cosh(c + d*x))^2) - (2*sinh(c + d*x))/(15*d*(1 - cosh(c + d*x)))]
    @test_int [1/(1 - cosh(c + d*x))^4, x, 4, -(sinh(c + d*x)/(7*d*(1 - cosh(c + d*x))^4)) - (3*sinh(c + d*x))/(35*d*(1 - cosh(c + d*x))^3) - (2*sinh(c + d*x))/(35*d*(1 - cosh(c + d*x))^2) - (2*sinh(c + d*x))/(35*d*(1 - cosh(c + d*x)))]


    @test_int [cosh(x)/sqrt(a + a*cosh(x)), x, 3, -((sqrt(2)*atan((sqrt(a)*sinh(x))/(sqrt(2)*sqrt(a + a*cosh(x)))))/sqrt(a)) + (2*sinh(x))/sqrt(a + a*cosh(x))]
    @test_int [cosh(x)/sqrt(a - a*cosh(x)), x, 3, -((sqrt(2)*atan((sqrt(a)*sinh(x))/(sqrt(2)*sqrt(a - a*cosh(x)))))/sqrt(a)) + (2*sinh(x))/sqrt(a - a*cosh(x))]


    @test_int [(a + a*cosh(c + d*x))^(5/2), x, 3, (64*a^3*sinh(c + d*x))/(15*d*sqrt(a + a*cosh(c + d*x))) + (16*a^2*sqrt(a + a*cosh(c + d*x))*sinh(c + d*x))/(15*d) + (2*a*(a + a*cosh(c + d*x))^(3/2)*sinh(c + d*x))/(5*d)]
    @test_int [(a + a*cosh(c + d*x))^(3/2), x, 2, (8*a^2*sinh(c + d*x))/(3*d*sqrt(a + a*cosh(c + d*x))) + (2*a*sqrt(a + a*cosh(c + d*x))*sinh(c + d*x))/(3*d)]
    @test_int [(a + a*cosh(c + d*x))^(1/2), x, 1, (2*a*sinh(c + d*x))/(d*sqrt(a + a*cosh(c + d*x)))]
    @test_int [1/(a + a*cosh(c + d*x))^(1/2), x, 2, (sqrt(2)*atan((sqrt(a)*sinh(c + d*x))/(sqrt(2)*sqrt(a + a*cosh(c + d*x)))))/(sqrt(a)*d)]
    @test_int [1/(a + a*cosh(c + d*x))^(3/2), x, 3, atan((sqrt(a)*sinh(c + d*x))/(sqrt(2)*sqrt(a + a*cosh(c + d*x))))/(2*sqrt(2)*a^(3/2)*d) + sinh(c + d*x)/(2*d*(a + a*cosh(c + d*x))^(3/2))]
    @test_int [1/(a + a*cosh(c + d*x))^(5/2), x, 4, (3*atan((sqrt(a)*sinh(c + d*x))/(sqrt(2)*sqrt(a + a*cosh(c + d*x)))))/(16*sqrt(2)*a^(5/2)*d) + sinh(c + d*x)/(4*d*(a + a*cosh(c + d*x))^(5/2)) + (3*sinh(c + d*x))/(16*a*d*(a + a*cosh(c + d*x))^(3/2))]


    @test_int [(a - a*cosh(c + d*x))^(5/2), x, 3, -((64*a^3*sinh(c + d*x))/(15*d*sqrt(a - a*cosh(c + d*x)))) - (16*a^2*sqrt(a - a*cosh(c + d*x))*sinh(c + d*x))/(15*d) - (2*a*(a - a*cosh(c + d*x))^(3/2)*sinh(c + d*x))/(5*d)]
    @test_int [(a - a*cosh(c + d*x))^(3/2), x, 2, -((8*a^2*sinh(c + d*x))/(3*d*sqrt(a - a*cosh(c + d*x)))) - (2*a*sqrt(a - a*cosh(c + d*x))*sinh(c + d*x))/(3*d)]
    @test_int [(a - a*cosh(c + d*x))^(1/2), x, 1, -((2*a*sinh(c + d*x))/(d*sqrt(a - a*cosh(c + d*x))))]
    @test_int [1/(a - a*cosh(c + d*x))^(1/2), x, 2, -((sqrt(2)*atan((sqrt(a)*sinh(c + d*x))/(sqrt(2)*sqrt(a - a*cosh(c + d*x)))))/(sqrt(a)*d))]
    @test_int [1/(a - a*cosh(c + d*x))^(3/2), x, 3, -(atan((sqrt(a)*sinh(c + d*x))/(sqrt(2)*sqrt(a - a*cosh(c + d*x))))/(2*sqrt(2)*a^(3/2)*d)) - sinh(c + d*x)/(2*d*(a - a*cosh(c + d*x))^(3/2))]
    @test_int [1/(a - a*cosh(c + d*x))^(5/2), x, 4, -((3*atan((sqrt(a)*sinh(c + d*x))/(sqrt(2)*sqrt(a - a*cosh(c + d*x)))))/(16*sqrt(2)*a^(5/2)*d)) - sinh(c + d*x)/(4*d*(a - a*cosh(c + d*x))^(5/2)) - (3*sinh(c + d*x))/(16*a*d*(a - a*cosh(c + d*x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x))^n=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cosh(x)^4/(a + b*cosh(x)), x, 6, -((a*(2*a^2 + b^2)*x)/(2*b^4)) + (2*a^4*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b^4*sqrt(a + b)) + ((3*a^2 + 2*b^2)*sinh(x))/(3*b^3) - (a*cosh(x)*sinh(x))/(2*b^2) + (cosh(x)^2*sinh(x))/(3*b)]
    @test_int [cosh(x)^3/(a + b*cosh(x)), x, 5, ((2*a^2 + b^2)*x)/(2*b^3) - (2*a^3*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b^3*sqrt(a + b)) - (a*sinh(x))/b^2 + (cosh(x)*sinh(x))/(2*b)]
    @test_int [cosh(x)^2/(a + b*cosh(x)), x, 5, -((a*x)/b^2) + (2*a^2*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b^2*sqrt(a + b)) + sinh(x)/b]
    @test_int [cosh(x)^1/(a + b*cosh(x)), x, 3, x/b - (2*a*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b*sqrt(a + b))]
    @test_int [sech(x)^1/(a + b*cosh(x)), x, 4, atan(sinh(x))/a - (2*b*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a*sqrt(a - b)*sqrt(a + b))]
    @test_int [sech(x)^2/(a + b*cosh(x)), x, 6, -((b*atan(sinh(x)))/a^2) + (2*b^2*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a^2*sqrt(a - b)*sqrt(a + b)) + tanh(x)/a]
    @test_int [sech(x)^3/(a + b*cosh(x)), x, 6, ((a^2 + 2*b^2)*atan(sinh(x)))/(2*a^3) - (2*b^3*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a^3*sqrt(a - b)*sqrt(a + b)) - (b*tanh(x))/a^2 + (sech(x)*tanh(x))/(2*a)]
    @test_int [sech(x)^4/(a + b*cosh(x)), x, 7, -((b*(a^2 + 2*b^2)*atan(sinh(x)))/(2*a^4)) + (2*b^4*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a^4*sqrt(a - b)*sqrt(a + b)) + ((2*a^2 + 3*b^2)*tanh(x))/(3*a^3) - (b*sech(x)*tanh(x))/(2*a^2) + (sech(x)^2*tanh(x))/(3*a)]


    @test_int [(a + b*cosh(c + d*x))^5, x, 4, (1/8)*a*(8*a^4 + 40*a^2*b^2 + 15*b^4)*x + (b*(107*a^4 + 192*a^2*b^2 + 16*b^4)*sinh(c + d*x))/(30*d) + (7*a*b^2*(22*a^2 + 23*b^2)*cosh(c + d*x)*sinh(c + d*x))/(120*d) + (b*(47*a^2 + 16*b^2)*(a + b*cosh(c + d*x))^2*sinh(c + d*x))/(60*d) + (9*a*b*(a + b*cosh(c + d*x))^3*sinh(c + d*x))/(20*d) + (b*(a + b*cosh(c + d*x))^4*sinh(c + d*x))/(5*d)]
    @test_int [(a + b*cosh(c + d*x))^4, x, 3, (1/8)*(8*a^4 + 24*a^2*b^2 + 3*b^4)*x + (a*b*(19*a^2 + 16*b^2)*sinh(c + d*x))/(6*d) + (b^2*(26*a^2 + 9*b^2)*cosh(c + d*x)*sinh(c + d*x))/(24*d) + (7*a*b*(a + b*cosh(c + d*x))^2*sinh(c + d*x))/(12*d) + (b*(a + b*cosh(c + d*x))^3*sinh(c + d*x))/(4*d)]
    @test_int [(a + b*cosh(c + d*x))^3, x, 2, (1/2)*a*(2*a^2 + 3*b^2)*x + (2*b*(4*a^2 + b^2)*sinh(c + d*x))/(3*d) + (5*a*b^2*cosh(c + d*x)*sinh(c + d*x))/(6*d) + (b*(a + b*cosh(c + d*x))^2*sinh(c + d*x))/(3*d)]
    @test_int [(a + b*cosh(c + d*x))^2, x, 1, (1/2)*(2*a^2 + b^2)*x + (2*a*b*sinh(c + d*x))/d + (b^2*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [(a + b*cosh(c + d*x)), x, 2, a*x + (b*sinh(c + d*x))/d]
    @test_int [1/(a + b*cosh(c + d*x)), x, 2, (2*atanh((sqrt(a - b)*tanh((1/2)*(c + d*x)))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)*d)]
    @test_int [1/(a + b*cosh(c + d*x))^2, x, 4, (2*a*atanh((sqrt(a - b)*tanh((1/2)*(c + d*x)))/sqrt(a + b)))/((a - b)^(3/2)*(a + b)^(3/2)*d) - (b*sinh(c + d*x))/((a^2 - b^2)*d*(a + b*cosh(c + d*x)))]
    @test_int [1/(a + b*cosh(c + d*x))^3, x, 5, ((2*a^2 + b^2)*atanh((sqrt(a - b)*tanh((1/2)*(c + d*x)))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)*d) - (b*sinh(c + d*x))/(2*(a^2 - b^2)*d*(a + b*cosh(c + d*x))^2) - (3*a*b*sinh(c + d*x))/(2*(a^2 - b^2)^2*d*(a + b*cosh(c + d*x)))]
    @test_int [1/(a + b*cosh(c + d*x))^4, x, 6, (a*(2*a^2 + 3*b^2)*atanh((sqrt(a - b)*tanh((1/2)*(c + d*x)))/sqrt(a + b)))/((a - b)^(7/2)*(a + b)^(7/2)*d) - (b*sinh(c + d*x))/(3*(a^2 - b^2)*d*(a + b*cosh(c + d*x))^3) - (5*a*b*sinh(c + d*x))/(6*(a^2 - b^2)^2*d*(a + b*cosh(c + d*x))^2) - (b*(11*a^2 + 4*b^2)*sinh(c + d*x))/(6*(a^2 - b^2)^3*d*(a + b*cosh(c + d*x)))]


    @test_int [1/(3 + 5*cosh(c + d*x)), x, 2, atan((1/2)*tanh((1/2)*(c + d*x)))/(2*d)]
    @test_int [1/(3 + 5*cosh(c + d*x))^2, x, 4, -((3*atan((1/2)*tanh((1/2)*(c + d*x))))/(32*d)) + (5*sinh(c + d*x))/(16*d*(3 + 5*cosh(c + d*x)))]
    @test_int [1/(3 + 5*cosh(c + d*x))^3, x, 5, (43*atan((1/2)*tanh((1/2)*(c + d*x))))/(1024*d) + (5*sinh(c + d*x))/(32*d*(3 + 5*cosh(c + d*x))^2) - (45*sinh(c + d*x))/(512*d*(3 + 5*cosh(c + d*x)))]
    @test_int [1/(3 + 5*cosh(c + d*x))^4, x, 6, -((279*atan((1/2)*tanh((1/2)*(c + d*x))))/(16384*d)) + (5*sinh(c + d*x))/(48*d*(3 + 5*cosh(c + d*x))^3) - (25*sinh(c + d*x))/(512*d*(3 + 5*cosh(c + d*x))^2) + (995*sinh(c + d*x))/(24576*d*(3 + 5*cosh(c + d*x)))]

    @test_int [1/(5 + 3*cosh(c + d*x)), x, 1, x/4 - atanh(sinh(c + d*x)/(3 + cosh(c + d*x)))/(2*d)]
    @test_int [1/(5 + 3*cosh(c + d*x))^2, x, 3, (5*x)/64 - (5*atanh(sinh(c + d*x)/(3 + cosh(c + d*x))))/(32*d) - (3*sinh(c + d*x))/(16*d*(5 + 3*cosh(c + d*x)))]
    @test_int [1/(5 + 3*cosh(c + d*x))^3, x, 4, (59*x)/2048 - (59*atanh(sinh(c + d*x)/(3 + cosh(c + d*x))))/(1024*d) - (3*sinh(c + d*x))/(32*d*(5 + 3*cosh(c + d*x))^2) - (45*sinh(c + d*x))/(512*d*(5 + 3*cosh(c + d*x)))]
    @test_int [1/(5 + 3*cosh(c + d*x))^4, x, 5, (385*x)/32768 - (385*atanh(sinh(c + d*x)/(3 + cosh(c + d*x))))/(16384*d) - sinh(c + d*x)/(16*d*(5 + 3*cosh(c + d*x))^3) - (25*sinh(c + d*x))/(512*d*(5 + 3*cosh(c + d*x))^2) - (311*sinh(c + d*x))/(8192*d*(5 + 3*cosh(c + d*x)))]


    @test_int [(a + b*cosh(x))^(5/2), x, 7, -((2*im*(23*a^2 + 9*b^2)*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(15*sqrt((a + b*cosh(x))/(a + b)))) + (16*im*a*(a^2 - b^2)*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(15*sqrt(a + b*cosh(x))) + (16/15)*a*b*sqrt(a + b*cosh(x))*sinh(x) + (2/5)*b*(a + b*cosh(x))^(3/2)*sinh(x)]
    @test_int [(a + b*cosh(x))^(3/2), x, 6, -((8*im*a*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(3*sqrt((a + b*cosh(x))/(a + b)))) + (2*im*(a^2 - b^2)*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(3*sqrt(a + b*cosh(x))) + (2/3)*b*sqrt(a + b*cosh(x))*sinh(x)]
    @test_int [(a + b*cosh(c + d*x))^(1/2), x, 2, -((2*im*sqrt(a + b*cosh(c + d*x))*EllipticE((1/2)*im*(c + d*x), (2*b)/(a + b)))/(d*sqrt((a + b*cosh(c + d*x))/(a + b))))]
    @test_int [1/(a + b*cosh(x))^(1/2), x, 2, -((2*im*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/sqrt(a + b*cosh(x)))]
    @test_int [1/(a + b*cosh(x))^(3/2), x, 4, -((2*im*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/((a^2 - b^2)*sqrt((a + b*cosh(x))/(a + b)))) - (2*b*sinh(x))/((a^2 - b^2)*sqrt(a + b*cosh(x)))]
    @test_int [1/(a + b*cosh(x))^(5/2), x, 7, -((8*im*a*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(3*(a^2 - b^2)^2*sqrt((a + b*cosh(x))/(a + b)))) + (2*im*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(3*(a^2 - b^2)*sqrt(a + b*cosh(x))) - (2*b*sinh(x))/(3*(a^2 - b^2)*(a + b*cosh(x))^(3/2)) - (8*a*b*sinh(x))/(3*(a^2 - b^2)^2*sqrt(a + b*cosh(x)))]
    @test_int [1/(a + b*cosh(x))^(7/2), x, 8, -((2*im*(23*a^2 + 9*b^2)*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(15*(a^2 - b^2)^3*sqrt((a + b*cosh(x))/(a + b)))) + (16*im*a*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(15*(a^2 - b^2)^2*sqrt(a + b*cosh(x))) - (2*b*sinh(x))/(5*(a^2 - b^2)*(a + b*cosh(x))^(5/2)) - (16*a*b*sinh(x))/(15*(a^2 - b^2)^2*(a + b*cosh(x))^(3/2)) - (2*b*(23*a^2 + 9*b^2)*sinh(x))/(15*(a^2 - b^2)^3*sqrt(a + b*cosh(x)))]


    @test_int [cosh(x)/sqrt(a + b*cosh(x)), x, 5, -((2*im*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(b*sqrt((a + b*cosh(x))/(a + b)))) + (2*im*a*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(b*sqrt(a + b*cosh(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*cosh(c+d*x))*(a+b*cosh(c+d*x))^n*when*a^2-b^2=0=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(A + B*cosh(x))*(a + a*cosh(x))^(5/2), x, 4, (64*a^3*(7*A + 5*B)*sinh(x))/(105*sqrt(a + a*cosh(x))) + (16/105)*a^2*(7*A + 5*B)*sqrt(a + a*cosh(x))*sinh(x) + (2/35)*a*(7*A + 5*B)*(a + a*cosh(x))^(3/2)*sinh(x) + (2/7)*B*(a + a*cosh(x))^(5/2)*sinh(x)]
    @test_int [(A + B*cosh(x))*(a + a*cosh(x))^(3/2), x, 3, (8*a^2*(5*A + 3*B)*sinh(x))/(15*sqrt(a + a*cosh(x))) + (2/15)*a*(5*A + 3*B)*sqrt(a + a*cosh(x))*sinh(x) + (2/5)*B*(a + a*cosh(x))^(3/2)*sinh(x)]
    @test_int [(A + B*cosh(x))*(a + a*cosh(x))^(1/2), x, 2, (2*a*(3*A + B)*sinh(x))/(3*sqrt(a + a*cosh(x))) + (2/3)*B*sqrt(a + a*cosh(x))*sinh(x)]


    @test_int [(A + B*cosh(x))*(a - a*cosh(x))^(5/2), x, 4, -((64*a^3*(7*A - 5*B)*sinh(x))/(105*sqrt(a - a*cosh(x)))) - (16/105)*a^2*(7*A - 5*B)*sqrt(a - a*cosh(x))*sinh(x) - (2/35)*a*(7*A - 5*B)*(a - a*cosh(x))^(3/2)*sinh(x) + (2/7)*B*(a - a*cosh(x))^(5/2)*sinh(x)]
    @test_int [(A + B*cosh(x))*(a - a*cosh(x))^(3/2), x, 3, -((8*a^2*(5*A - 3*B)*sinh(x))/(15*sqrt(a - a*cosh(x)))) - (2/15)*a*(5*A - 3*B)*sqrt(a - a*cosh(x))*sinh(x) + (2/5)*B*(a - a*cosh(x))^(3/2)*sinh(x)]
    @test_int [(A + B*cosh(x))*(a - a*cosh(x))^(1/2), x, 2, -((2*a*(3*A - B)*sinh(x))/(3*sqrt(a - a*cosh(x)))) + (2/3)*B*sqrt(a - a*cosh(x))*sinh(x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(A + B*cosh(x))/(1 + cosh(x)), x, 2, B*x + ((A - B)*sinh(x))/(1 + cosh(x))]
    @test_int [(A + B*cosh(x))/(1 + cosh(x))^2, x, 2, ((A - B)*sinh(x))/(3*(1 + cosh(x))^2) + ((A + 2*B)*sinh(x))/(3*(1 + cosh(x)))]
    @test_int [(A + B*cosh(x))/(1 + cosh(x))^3, x, 3, ((A - B)*sinh(x))/(5*(1 + cosh(x))^3) + ((2*A + 3*B)*sinh(x))/(15*(1 + cosh(x))^2) + ((2*A + 3*B)*sinh(x))/(15*(1 + cosh(x)))]
    @test_int [(A + B*cosh(x))/(1 + cosh(x))^4, x, 4, ((A - B)*sinh(x))/(7*(1 + cosh(x))^4) + ((3*A + 4*B)*sinh(x))/(35*(1 + cosh(x))^3) + (2*(3*A + 4*B)*sinh(x))/(105*(1 + cosh(x))^2) + (2*(3*A + 4*B)*sinh(x))/(105*(1 + cosh(x)))]

    @test_int [(A + B*cosh(x))/(1 - cosh(x)), x, 2, (-B)*x - ((A + B)*sinh(x))/(1 - cosh(x))]
    @test_int [(A + B*cosh(x))/(1 - cosh(x))^2, x, 2, -(((A + B)*sinh(x))/(3*(1 - cosh(x))^2)) - ((A - 2*B)*sinh(x))/(3*(1 - cosh(x)))]
    @test_int [(A + B*cosh(x))/(1 - cosh(x))^3, x, 3, -(((A + B)*sinh(x))/(5*(1 - cosh(x))^3)) - ((2*A - 3*B)*sinh(x))/(15*(1 - cosh(x))^2) - ((2*A - 3*B)*sinh(x))/(15*(1 - cosh(x)))]
    @test_int [(A + B*cosh(x))/(1 - cosh(x))^4, x, 4, -(((A + B)*sinh(x))/(7*(1 - cosh(x))^4)) - ((3*A - 4*B)*sinh(x))/(35*(1 - cosh(x))^3) - (2*(3*A - 4*B)*sinh(x))/(105*(1 - cosh(x))^2) - (2*(3*A - 4*B)*sinh(x))/(105*(1 - cosh(x)))]


    @test_int [(A + B*cosh(x))/(a + a*cosh(x))^(1/2), x, 3, (sqrt(2)*(A - B)*atan((sqrt(a)*sinh(x))/(sqrt(2)*sqrt(a + a*cosh(x)))))/sqrt(a) + (2*B*sinh(x))/sqrt(a + a*cosh(x))]
    @test_int [(A + B*cosh(x))/(a + a*cosh(x))^(3/2), x, 3, ((A + 3*B)*atan((sqrt(a)*sinh(x))/(sqrt(2)*sqrt(a + a*cosh(x)))))/(2*sqrt(2)*a^(3/2)) + ((A - B)*sinh(x))/(2*(a + a*cosh(x))^(3/2))]
    @test_int [(A + B*cosh(x))/(a + a*cosh(x))^(5/2), x, 4, ((3*A + 5*B)*atan((sqrt(a)*sinh(x))/(sqrt(2)*sqrt(a + a*cosh(x)))))/(16*sqrt(2)*a^(5/2)) + ((A - B)*sinh(x))/(4*(a + a*cosh(x))^(5/2)) + ((3*A + 5*B)*sinh(x))/(16*a*(a + a*cosh(x))^(3/2))]


    @test_int [(A + B*cosh(x))/(a - a*cosh(x))^(1/2), x, 3, -((sqrt(2)*(A + B)*atan((sqrt(a)*sinh(x))/(sqrt(2)*sqrt(a - a*cosh(x)))))/sqrt(a)) + (2*B*sinh(x))/sqrt(a - a*cosh(x))]
    @test_int [(A + B*cosh(x))/(a - a*cosh(x))^(3/2), x, 3, -(((A - 3*B)*atan((sqrt(a)*sinh(x))/(sqrt(2)*sqrt(a - a*cosh(x)))))/(2*sqrt(2)*a^(3/2))) - ((A + B)*sinh(x))/(2*(a - a*cosh(x))^(3/2))]
    @test_int [(A + B*cosh(x))/(a - a*cosh(x))^(5/2), x, 4, -(((3*A - 5*B)*atan((sqrt(a)*sinh(x))/(sqrt(2)*sqrt(a - a*cosh(x)))))/(16*sqrt(2)*a^(5/2))) - ((A + B)*sinh(x))/(4*(a - a*cosh(x))^(5/2)) - ((3*A - 5*B)*sinh(x))/(16*a*(a - a*cosh(x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*cosh(c+d*x))*(a+b*cosh(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(A + B*cosh(x))*(a + b*cosh(x))^(5/2), x, 8, -((2*im*(161*a^2*A*b + 63*A*b^3 + 15*a^3*B + 145*a*b^2*B)*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(105*b*sqrt((a + b*cosh(x))/(a + b)))) + (2*im*(a^2 - b^2)*(56*a*A*b + 15*a^2*B + 25*b^2*B)*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(105*b*sqrt(a + b*cosh(x))) + (2/105)*(56*a*A*b + 15*a^2*B + 25*b^2*B)*sqrt(a + b*cosh(x))*sinh(x) + (2/35)*(7*A*b + 5*a*B)*(a + b*cosh(x))^(3/2)*sinh(x) + (2/7)*B*(a + b*cosh(x))^(5/2)*sinh(x)]
    @test_int [(A + B*cosh(x))*(a + b*cosh(x))^(3/2), x, 7, -((2*im*(20*a*A*b + 3*a^2*B + 9*b^2*B)*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(15*b*sqrt((a + b*cosh(x))/(a + b)))) + (2*im*(a^2 - b^2)*(5*A*b + 3*a*B)*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(15*b*sqrt(a + b*cosh(x))) + (2/15)*(5*A*b + 3*a*B)*sqrt(a + b*cosh(x))*sinh(x) + (2/5)*B*(a + b*cosh(x))^(3/2)*sinh(x)]
    @test_int [(A + B*cosh(x))*(a + b*cosh(x))^(1/2), x, 6, -((2*im*(3*A*b + a*B)*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(3*b*sqrt((a + b*cosh(x))/(a + b)))) + (2*im*(a^2 - b^2)*B*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(3*b*sqrt(a + b*cosh(x))) + (2/3)*B*sqrt(a + b*cosh(x))*sinh(x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(A + B*cosh(x))/(a + b*cosh(x)), x, 3, (B*x)/b + (2*(A*b - a*B)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b*sqrt(a + b))]
    @test_int [(A + B*cosh(x))/(a + b*cosh(x))^2, x, 4, (2*(a*A - b*B)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(3/2)*(a + b)^(3/2)) - ((A*b - a*B)*sinh(x))/((a^2 - b^2)*(a + b*cosh(x)))]
    @test_int [(A + B*cosh(x))/(a + b*cosh(x))^3, x, 5, ((2*a^2*A + A*b^2 - 3*a*b*B)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)) - ((A*b - a*B)*sinh(x))/(2*(a^2 - b^2)*(a + b*cosh(x))^2) - ((3*a*A*b - a^2*B - 2*b^2*B)*sinh(x))/(2*(a^2 - b^2)^2*(a + b*cosh(x)))]
    @test_int [(A + B*cosh(x))/(a + b*cosh(x))^4, x, 6, ((2*a^3*A + 3*a*A*b^2 - 4*a^2*b*B - b^3*B)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(7/2)*(a + b)^(7/2)) - ((A*b - a*B)*sinh(x))/(3*(a^2 - b^2)*(a + b*cosh(x))^3) - ((5*a*A*b - 2*a^2*B - 3*b^2*B)*sinh(x))/(6*(a^2 - b^2)^2*(a + b*cosh(x))^2) - ((11*a^2*A*b + 4*A*b^3 - 2*a^3*B - 13*a*b^2*B)*sinh(x))/(6*(a^2 - b^2)^3*(a + b*cosh(x)))]

    @test_int [(b*B/a + B*cosh(x))/(a + b*cosh(x)), x, 3, (B*x)/b - (2*sqrt(a - b)*sqrt(a + b)*B*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a*b)]
    @test_int [(a*B/b + B*cosh(x))/(a + b*cosh(x)), x, 2, (B*x)/b]

    @test_int [(a + b*cosh(x))/(b + a*cosh(x))^2, x, 2, sinh(x)/(b + a*cosh(x))]
    @test_int [(3 + cosh(x))/(2 - cosh(x)), x, 2, -x + (5*x)/sqrt(3) + (10*atanh(sinh(x)/(2 + sqrt(3) - cosh(x))))/sqrt(3)]


    @test_int [(A + B*cosh(x))/(a + b*cosh(x))^(1/2), x, 5, -((2*im*B*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(b*sqrt((a + b*cosh(x))/(a + b)))) - (2*im*(A*b - a*B)*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(b*sqrt(a + b*cosh(x)))]
    @test_int [(A + B*cosh(x))/(a + b*cosh(x))^(3/2), x, 6, -((2*im*(A*b - a*B)*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(b*(a^2 - b^2)*sqrt((a + b*cosh(x))/(a + b)))) - (2*im*B*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(b*sqrt(a + b*cosh(x))) - (2*(A*b - a*B)*sinh(x))/((a^2 - b^2)*sqrt(a + b*cosh(x)))]
    @test_int [(A + B*cosh(x))/(a + b*cosh(x))^(5/2), x, 7, -((2*im*(4*a*A*b - a^2*B - 3*b^2*B)*sqrt(a + b*cosh(x))*EllipticE((im*x)/2, (2*b)/(a + b)))/(3*b*(a^2 - b^2)^2*sqrt((a + b*cosh(x))/(a + b)))) + (2*im*(A*b - a*B)*sqrt((a + b*cosh(x))/(a + b))*EllipticF((im*x)/2, (2*b)/(a + b)))/(3*b*(a^2 - b^2)*sqrt(a + b*cosh(x))) - (2*(A*b - a*B)*sinh(x))/(3*(a^2 - b^2)*(a + b*cosh(x))^(3/2)) - (2*(4*a*A*b - a^2*B - 3*b^2*B)*sinh(x))/(3*(a^2 - b^2)^2*sqrt(a + b*cosh(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c*cosh(a+b*x)^m)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*cosh(a+b*x)^2)^n=#


    @test_int [(a*cosh(x)^2)^(7/2),x, 5, (16/35)*a^3*sqrt(a*cosh(x)^2)*tanh(x) + (8/35)*a^2*(a*cosh(x)^2)^(3/2)*tanh(x) + (6/35)*a*(a*cosh(x)^2)^(5/2)*tanh(x) + (1/7)*(a*cosh(x)^2)^(7/2)*tanh(x)]
    @test_int [(a*cosh(x)^2)^(5/2),x, 4, (8/15)*a^2*sqrt(a*cosh(x)^2)*tanh(x) + (4/15)*a*(a*cosh(x)^2)^(3/2)*tanh(x) + (1/5)*(a*cosh(x)^2)^(5/2)*tanh(x)]
    @test_int [(a*cosh(x)^2)^(3/2),x, 3, (2/3)*a*sqrt(a*cosh(x)^2)*tanh(x) + (1/3)*(a*cosh(x)^2)^(3/2)*tanh(x)]
    @test_int [(a*cosh(x)^2)^(1/2), x, 2, sqrt(a*cosh(x)^2)*tanh(x)]
    @test_int [1/(a*cosh(x)^2)^(1/2), x, 2, (atan(sinh(x))*cosh(x))/sqrt(a*cosh(x)^2)]
    @test_int [1/(a*cosh(x)^2)^(3/2), x, 3, (atan(sinh(x))*cosh(x))/(2*a*sqrt(a*cosh(x)^2)) + tanh(x)/(2*a*sqrt(a*cosh(x)^2))]
    @test_int [1/(a*cosh(x)^2)^(5/2), x, 4, (3*atan(sinh(x))*cosh(x))/(8*a^2*sqrt(a*cosh(x)^2)) + tanh(x)/(4*a*(a*cosh(x)^2)^(3/2)) + (3*tanh(x))/(8*a^2*sqrt(a*cosh(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*cosh(a+b*x)^3)^n=#


    @test_int [(a*cosh(x)^3)^(5/2),x, 6, -((26*im*a^2*sqrt(a*cosh(x)^3)*EllipticF((im*x)/2, 2))/(77*cosh(x)^(3/2))) + (78/385)*a^2*cosh(x)*sqrt(a*cosh(x)^3)*sinh(x) + (26/165)*a^2*cosh(x)^3*sqrt(a*cosh(x)^3)*sinh(x) + (2/15)*a^2*cosh(x)^5*sqrt(a*cosh(x)^3)*sinh(x) + (26/77)*a^2*sqrt(a*cosh(x)^3)*tanh(x)]
    @test_int [(a*cosh(x)^3)^(3/2),x, 4, -((14*im*a*sqrt(a*cosh(x)^3)*EllipticE((im*x)/2, 2))/(15*cosh(x)^(3/2))) + (14/45)*a*sqrt(a*cosh(x)^3)*sinh(x) + (2/9)*a*cosh(x)^2*sqrt(a*cosh(x)^3)*sinh(x)]
    @test_int [(a*cosh(x)^3)^(1/2), x, 3, -((2*im*sqrt(a*cosh(x)^3)*EllipticF((im*x)/2, 2))/(3*cosh(x)^(3/2))) + (2/3)*sqrt(a*cosh(x)^3)*tanh(x)]
    @test_int [1/(a*cosh(x)^3)^(1/2), x, 3, (2*im*cosh(x)^(3/2)*EllipticE((im*x)/2, 2))/sqrt(a*cosh(x)^3) + (2*cosh(x)*sinh(x))/sqrt(a*cosh(x)^3)]
    @test_int [1/(a*cosh(x)^3)^(3/2),x, 4, -((10*im*cosh(x)^(3/2)*EllipticF((im*x)/2, 2))/(21*a*sqrt(a*cosh(x)^3))) + (10*sinh(x))/(21*a*sqrt(a*cosh(x)^3)) + (2*sech(x)*tanh(x))/(7*a*sqrt(a*cosh(x)^3))]
    @test_int [1/(a*cosh(x)^3)^(5/2),x, 6, (154*im*cosh(x)^(3/2)*EllipticE((im*x)/2, 2))/(195*a^2*sqrt(a*cosh(x)^3)) + (154*cosh(x)*sinh(x))/(195*a^2*sqrt(a*cosh(x)^3)) + (154*tanh(x))/(585*a^2*sqrt(a*cosh(x)^3)) + (22*sech(x)^2*tanh(x))/(117*a^2*sqrt(a*cosh(x)^3)) + (2*sech(x)^4*tanh(x))/(13*a^2*sqrt(a*cosh(x)^3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*cosh(a+b*x)^4)^n=#


    @test_int [(a*cosh(x)^4)^(5/2),x, 7, (63/256)*a^2*x*sqrt(a*cosh(x)^4)*sech(x)^2 + (21/128)*a^2*cosh(x)*sqrt(a*cosh(x)^4)*sinh(x) + (21/160)*a^2*cosh(x)^3*sqrt(a*cosh(x)^4)*sinh(x) + (9/80)*a^2*cosh(x)^5*sqrt(a*cosh(x)^4)*sinh(x) + (1/10)*a^2*cosh(x)^7*sqrt(a*cosh(x)^4)*sinh(x) + (63/256)*a^2*sqrt(a*cosh(x)^4)*tanh(x)]
    @test_int [(a*cosh(x)^4)^(3/2),x, 5, (5/16)*a*x*sqrt(a*cosh(x)^4)*sech(x)^2 + (5/24)*a*cosh(x)*sqrt(a*cosh(x)^4)*sinh(x) + (1/6)*a*cosh(x)^3*sqrt(a*cosh(x)^4)*sinh(x) + (5/16)*a*sqrt(a*cosh(x)^4)*tanh(x)]
    @test_int [(a*cosh(x)^4)^(1/2), x, 3, (1/2)*x*sqrt(a*cosh(x)^4)*sech(x)^2 + (1/2)*sqrt(a*cosh(x)^4)*tanh(x)]
    @test_int [1/(a*cosh(x)^4)^(1/2), x, 3, (cosh(x)*sinh(x))/sqrt(a*cosh(x)^4)]
    @test_int [1/(a*cosh(x)^4)^(3/2),x, 3, (cosh(x)*sinh(x))/(a*sqrt(a*cosh(x)^4)) - (2*sinh(x)^2*tanh(x))/(3*a*sqrt(a*cosh(x)^4)) + (sinh(x)^2*tanh(x)^3)/(5*a*sqrt(a*cosh(x)^4))]
    @test_int [1/(a*cosh(x)^4)^(5/2),x, 3, (cosh(x)*sinh(x))/(a^2*sqrt(a*cosh(x)^4)) - (4*sinh(x)^2*tanh(x))/(3*a^2*sqrt(a*cosh(x)^4)) + (6*sinh(x)^2*tanh(x)^3)/(5*a^2*sqrt(a*cosh(x)^4)) - (4*sinh(x)^2*tanh(x)^5)/(7*a^2*sqrt(a*cosh(x)^4)) + (sinh(x)^2*tanh(x)^7)/(9*a^2*sqrt(a*cosh(x)^4))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c*cosh(a+b*x)^m)^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Hyper(c+d*x)^m*(a+b*cosh(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*cosh(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2=0=#


    @test_int [sinh(x)/(1 + cosh(x))^2, x, 2, -(1/(1 + cosh(x)))]
    @test_int [sinh(x)/(1 - cosh(x))^2, x, 2, 1/(1 - cosh(x))]
    @test_int [sinh(x)^2/(1 + cosh(x))^2, x, 2, x - (2*sinh(x))/(1 + cosh(x))]
    @test_int [sinh(x)^2/(1 - cosh(x))^2, x, 2, x + (2*sinh(x))/(1 - cosh(x))]
    @test_int [sinh(x)^3/(1 + cosh(x))^2, x, 3, cosh(x) - 2*log(1 + cosh(x))]
    @test_int [sinh(x)^3/(1 - cosh(x))^2, x, 3, cosh(x) + 2*log(1 - cosh(x))]


    @test_int [sinh(x)/(1 + cosh(x))^3, x, 2, -(1/(2*(1 + cosh(x))^2))]
    @test_int [sinh(x)/(1 - cosh(x))^3, x, 2, 1/(2*(1 - cosh(x))^2)]
    @test_int [sinh(x)^2/(1 + cosh(x))^3, x, 1, sinh(x)^3/(3*(1 + cosh(x))^3)]
    @test_int [sinh(x)^2/(1 - cosh(x))^3, x, 1, -(sinh(x)^3/(3*(1 - cosh(x))^3))]
    @test_int [sinh(x)^3/(1 + cosh(x))^3, x, 3, 2/(1 + cosh(x)) + log(1 + cosh(x))]
    @test_int [sinh(x)^3/(1 - cosh(x))^3, x, 3, -(2/(1 - cosh(x))) - log(1 - cosh(x))]


    @test_int [sinh(x)^8/(a + a*cosh(x)), x, 5, (5*x)/(16*a) - (5*cosh(x)*sinh(x))/(16*a) + (5*cosh(x)*sinh(x)^3)/(24*a) - (cosh(x)*sinh(x)^5)/(6*a) + sinh(x)^7/(7*a)]
    @test_int [sinh(x)^7/(a + a*cosh(x)), x, 3, (a - a*cosh(x))^4/a^5 - (4*(a - a*cosh(x))^5)/(5*a^6) + (a - a*cosh(x))^6/(6*a^7)]
    @test_int [sinh(x)^6/(a + a*cosh(x)), x, 4, -((3*x)/(8*a)) + (3*cosh(x)*sinh(x))/(8*a) - (cosh(x)*sinh(x)^3)/(4*a) + sinh(x)^5/(5*a)]
    @test_int [sinh(x)^5/(a + a*cosh(x)), x, 3, -((2*(a - a*cosh(x))^3)/(3*a^4)) + (a - a*cosh(x))^4/(4*a^5)]
    @test_int [sinh(x)^4/(a + a*cosh(x)), x, 3, x/(2*a) - (cosh(x)*sinh(x))/(2*a) + sinh(x)^3/(3*a)]
    @test_int [sinh(x)^3/(a + a*cosh(x)), x, 2, -(cosh(x)/a) + cosh(x)^2/(2*a)]
    @test_int [sinh(x)^2/(a + a*cosh(x)), x, 2, -(x/a) + sinh(x)/a]
    @test_int [sinh(x)^1/(a + a*cosh(x)), x, 2, log(1 + cosh(x))/a]
    @test_int [csch(x)^1/(a + a*cosh(x)), x, 4, -(atanh(cosh(x))/(2*a)) + 1/(2*(a + a*cosh(x)))]
    @test_int [csch(x)^2/(a + a*cosh(x)), x, 3, -((2*coth(x))/(3*a)) + csch(x)/(3*(a + a*cosh(x)))]
    @test_int [csch(x)^3/(a + a*cosh(x)), x, 4, (3*atanh(cosh(x)))/(8*a) + 1/(8*(a - a*cosh(x))) - a/(8*(a + a*cosh(x))^2) - 1/(4*(a + a*cosh(x)))]
    @test_int [csch(x)^4/(a + a*cosh(x)), x, 3, (4*coth(x))/(5*a) - (4*coth(x)^3)/(15*a) + csch(x)^3/(5*(a + a*cosh(x)))]
    @test_int [csch(x)^5/(a + a*cosh(x)), x, 4, -((5*atanh(cosh(x)))/(16*a)) - a/(32*(a - a*cosh(x))^2) - 1/(8*(a - a*cosh(x))) + a^2/(24*(a + a*cosh(x))^3) + (3*a)/(32*(a + a*cosh(x))^2) + 3/(16*(a + a*cosh(x)))]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2!=0=#


    @test_int [sinh(x)^7/(a + b*cosh(x)), x, 3, -((a*(a^4 - 3*a^2*b^2 + 3*b^4)*cosh(x))/b^6) + ((a^4 - 3*a^2*b^2 + 3*b^4)*cosh(x)^2)/(2*b^5) - (a*(a^2 - 3*b^2)*cosh(x)^3)/(3*b^4) + ((a^2 - 3*b^2)*cosh(x)^4)/(4*b^3) - (a*cosh(x)^5)/(5*b^2) + cosh(x)^6/(6*b) + ((a^2 - b^2)^3*log(a + b*cosh(x)))/b^7]
    @test_int [sinh(x)^6/(a + b*cosh(x)), x, 6, -((a*(8*a^4 - 20*a^2*b^2 + 15*b^4)*x)/(8*b^6)) + (2*(a - b)^(5/2)*(a + b)^(5/2)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/b^6 + ((8*(a^2 - b^2)^2 - a*b*(4*a^2 - 7*b^2)*cosh(x))*sinh(x))/(8*b^5) + ((4*(a^2 - b^2) - 3*a*b*cosh(x))*sinh(x)^3)/(12*b^3) + sinh(x)^5/(5*b)]
    @test_int [sinh(x)^5/(a + b*cosh(x)), x, 3, -((a*(a^2 - 2*b^2)*cosh(x))/b^4) + ((a^2 - 2*b^2)*cosh(x)^2)/(2*b^3) - (a*cosh(x)^3)/(3*b^2) + cosh(x)^4/(4*b) + ((a^2 - b^2)^2*log(a + b*cosh(x)))/b^5]
    @test_int [sinh(x)^4/(a + b*cosh(x)), x, 5, -((a*(2*a^2 - 3*b^2)*x)/(2*b^4)) + (2*(a - b)^(3/2)*(a + b)^(3/2)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/b^4 + ((2*(a^2 - b^2) - a*b*cosh(x))*sinh(x))/(2*b^3) + sinh(x)^3/(3*b)]
    @test_int [sinh(x)^3/(a + b*cosh(x)), x, 3, -((a*cosh(x))/b^2) + cosh(x)^2/(2*b) + ((a^2 - b^2)*log(a + b*cosh(x)))/b^3]
    @test_int [sinh(x)^2/(a + b*cosh(x)), x, 4, -((a*x)/b^2) + (2*sqrt(a - b)*sqrt(a + b)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/b^2 + sinh(x)/b]
    @test_int [sinh(x)^1/(a + b*cosh(x)), x, 2, log(a + b*cosh(x))/b]
    @test_int [csch(x)^1/(a + b*cosh(x)), x, 6, log(1 - cosh(x))/(2*(a + b)) - log(1 + cosh(x))/(2*(a - b)) + (b*log(a + b*cosh(x)))/(a^2 - b^2)]
    @test_int [csch(x)^2/(a + b*cosh(x)), x, 4, (2*b^2*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(3/2)*(a + b)^(3/2)) + ((b - a*cosh(x))*csch(x))/(a^2 - b^2)]
    @test_int [csch(x)^3/(a + b*cosh(x)), x, 4, ((b - a*cosh(x))*csch(x)^2)/(2*(a^2 - b^2)) - ((a + 2*b)*log(1 - cosh(x)))/(4*(a + b)^2) + ((a - 2*b)*log(1 + cosh(x)))/(4*(a - b)^2) + (b^3*log(a + b*cosh(x)))/(a^2 - b^2)^2]
    @test_int [csch(x)^4/(a + b*cosh(x)), x, 5, (2*b^4*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)) + ((3*b^3 + a*(2*a^2 - 5*b^2)*cosh(x))*csch(x))/(3*(a^2 - b^2)^2) + ((b - a*cosh(x))*csch(x)^3)/(3*(a^2 - b^2))]
    @test_int [csch(x)^5/(a + b*cosh(x)), x, 5, ((4*b^3 + a*(3*a^2 - 7*b^2)*cosh(x))*csch(x)^2)/(8*(a^2 - b^2)^2) + ((b - a*cosh(x))*csch(x)^4)/(4*(a^2 - b^2)) + ((3*a^2 + 9*a*b + 8*b^2)*log(1 - cosh(x)))/(16*(a + b)^3) - ((3*a^2 - 9*a*b + 8*b^2)*log(1 + cosh(x)))/(16*(a - b)^3) + (b^5*log(a + b*cosh(x)))/(a^2 - b^2)^3]
    @test_int [csch(x)^6/(a + b*cosh(x)), x, 6, (2*b^6*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(7/2)*(a + b)^(7/2)) + ((15*b^5 - a*(8*a^4 - 26*a^2*b^2 + 33*b^4)*cosh(x))*csch(x))/(15*(a^2 - b^2)^3) + ((5*b^3 + a*(4*a^2 - 9*b^2)*cosh(x))*csch(x)^3)/(15*(a^2 - b^2)^2) + ((b - a*cosh(x))*csch(x)^5)/(5*(a^2 - b^2))]


    @test_int [sinh(x)^2/(a + b*cosh(x))^2, x, 4, x/b^2 - (2*a*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b^2*sqrt(a + b)) - sinh(x)/(b*(a + b*cosh(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*cosh(c+d*x))^n=#


    @test_int [tanh(x)^4/(a + b*cosh(x)), x, 6, (b*(3*a^2 - 2*b^2)*atan(sinh(x)))/(2*a^4) + (2*(a - b)^(3/2)*(a + b)^(3/2)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/a^4 - ((4*a^2 - 3*b^2)*tanh(x))/(3*a^3) - (b*sech(x)*tanh(x))/(2*a^2) + (sech(x)^2*tanh(x))/(3*a)]
    @test_int [tanh(x)^3/(a + b*cosh(x)), x, 3, ((a^2 - b^2)*log(cosh(x)))/a^3 - ((a^2 - b^2)*log(a + b*cosh(x)))/a^3 - (b*sech(x))/a^2 + sech(x)^2/(2*a)]
    @test_int [tanh(x)^2/(a + b*cosh(x)), x, 6, (b*atan(sinh(x)))/a^2 + (2*sqrt(a - b)*sqrt(a + b)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/a^2 - tanh(x)/a]
    @test_int [tanh(x)^1/(a + b*cosh(x)), x, 4, log(cosh(x))/a - log(a + b*cosh(x))/a]
    @test_int [coth(x)^1/(a + b*cosh(x)), x, 3, log(1 - cosh(x))/(2*(a + b)) + log(1 + cosh(x))/(2*(a - b)) - (a*log(a + b*cosh(x)))/(a^2 - b^2)]
    @test_int [coth(x)^2/(a + b*cosh(x)), x, 7, (2*a^2*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(3/2)*(a + b)^(3/2)) - (a*coth(x))/(a^2 - b^2) + (b*csch(x))/(a^2 - b^2)]
    @test_int [coth(x)^3/(a + b*cosh(x)), x, 4, -(((a - b*cosh(x))*csch(x)^2)/(2*(a^2 - b^2))) + ((2*a + b)*log(1 - cosh(x)))/(4*(a + b)^2) + ((2*a - b)*log(1 + cosh(x)))/(4*(a - b)^2) - (a^3*log(a + b*cosh(x)))/(a^2 - b^2)^2]
    @test_int [coth(x)^4/(a + b*cosh(x)), x, 12, (2*a^4*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)) - (a^3*coth(x))/(a^2 - b^2)^2 - (a*coth(x)^3)/(3*(a^2 - b^2)) + (a^2*b*csch(x))/(a^2 - b^2)^2 + (b*csch(x))/(a^2 - b^2) + (b*csch(x)^3)/(3*(a^2 - b^2))]


    @test_int [tanh(x)^6/(a + a*cosh(x)), x, 6, (3*atan(sinh(x)))/(8*a) - (3*sech(x)*tanh(x))/(8*a) - (sech(x)*tanh(x)^3)/(4*a) - tanh(x)^5/(5*a)]
    @test_int [tanh(x)^5/(a + a*cosh(x)), x, 5, -(sech(x)/a) + sech(x)^3/(3*a) - tanh(x)^4/(4*a)]
    @test_int [tanh(x)^4/(a + a*cosh(x)), x, 5, atan(sinh(x))/(2*a) - (sech(x)*tanh(x))/(2*a) - tanh(x)^3/(3*a)]
    @test_int [tanh(x)^3/(a + a*cosh(x)), x, 5, -(sech(x)/a) + sech(x)^2/(2*a)]
    @test_int [tanh(x)^2/(a + a*cosh(x)), x, 4, atan(sinh(x))/a - tanh(x)/a]
    @test_int [tanh(x)^1/(a + a*cosh(x)), x, 4, log(cosh(x))/a - log(1 + cosh(x))/a]
    @test_int [coth(x)^1/(a + a*cosh(x)), x, 5, -(atanh(cosh(x))/(2*a)) - (coth(x)*csch(x))/(2*a) + csch(x)^2/(2*a)]
    @test_int [coth(x)^2/(a + a*cosh(x)), x, 5, coth(x)^3/(3*a) - csch(x)/a - csch(x)^3/(3*a)]
    @test_int [coth(x)^3/(a + a*cosh(x)), x, 6, -((3*atanh(cosh(x)))/(8*a)) + coth(x)^4/(4*a) - (3*coth(x)*csch(x))/(8*a) - (coth(x)^3*csch(x))/(4*a)]
    @test_int [coth(x)^4/(a + a*cosh(x)), x, 6, coth(x)^5/(5*a) - csch(x)/a - (2*csch(x)^3)/(3*a) - csch(x)^5/(5*a)]


    @test_int [tanh(x)*sqrt(a + b*cosh(x)), x, 4, -2*sqrt(a)*atanh(sqrt(a + b*cosh(x))/sqrt(a)) + 2*sqrt(a + b*cosh(x))]
    @test_int [tanh(x)/sqrt(a + b*cosh(x)), x, 3, -((2*atanh(sqrt(a + b*cosh(x))/sqrt(a)))/sqrt(a))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*Hyper(c+d*x))*(a+b*cosh(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*sinh(c+d*x))*(a+b*cosh(c+d*x))^n=#


    @test_int [(A + B*sinh(x))/(a + b*cosh(x)), x, 6, (2*A*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) + (B*log(a + b*cosh(x)))/b]

    @test_int [(A + B*sinh(x))/(1 + cosh(x)), x, 5, B*log(1 + cosh(x)) + (A*sinh(x))/(1 + cosh(x))]
    @test_int [(A + B*sinh(x))/(1 - cosh(x)), x, 5, (-B)*log(1 - cosh(x)) - (A*sinh(x))/(1 - cosh(x))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*Hyper(c+d*x))*(a+b*cosh(c+d*x))^n=#


    @test_int [(A + B*tanh(x))/(a + b*cosh(x)), x, 8, (2*A*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) + (B*log(cosh(x)))/a - (B*log(a + b*cosh(x)))/a]
    @test_int [(A + B*coth(x))/(a + b*cosh(x)), x, 7, (2*A*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) + (B*log(1 - cosh(x)))/(2*(a + b)) + (B*log(1 + cosh(x)))/(2*(a - b)) - (a*B*log(a + b*cosh(x)))/(a^2 - b^2)]
    @test_int [(A + B*sech(x))/(a + b*cosh(x)), x, 5, (B*atan(sinh(x)))/a + (2*(a*A - b*B)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a*sqrt(a - b)*sqrt(a + b))]
    @test_int [(A + B*csch(x))/(a + b*cosh(x)), x, 11, (2*A*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) + (B*log(1 - cosh(x)))/(2*(a + b)) - (B*log(1 + cosh(x)))/(2*(a - b)) + (b*B*log(a + b*cosh(x)))/(a^2 - b^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*Hyper(c+d*x)+C*Hyper(c+d*x))*(a+b*cosh(c+d*x))^n=#


    @test_int [(A + B*cosh(d + e*x) + C*sinh(d + e*x))/(a + b*cosh(d + e*x)), x, 6, (B*x)/b + (2*(A*b - a*B)*atanh((sqrt(a - b)*tanh((1/2)*(d + e*x)))/sqrt(a + b)))/(sqrt(a - b)*b*sqrt(a + b)*e) + (C*log(a + b*cosh(d + e*x)))/(b*e)]
    @test_int [(A + B*cosh(d + e*x) + C*sinh(d + e*x))/(a + b*cosh(d + e*x))^2, x, 7, (2*(a*A - b*B)*atanh((sqrt(a - b)*tanh((1/2)*(d + e*x)))/sqrt(a + b)))/((a - b)^(3/2)*(a + b)^(3/2)*e) - C/(b*e*(a + b*cosh(d + e*x))) - ((A*b - a*B)*sinh(d + e*x))/((a^2 - b^2)*e*(a + b*cosh(d + e*x)))]
    @test_int [(A + B*cosh(d + e*x) + C*sinh(d + e*x))/(a + b*cosh(d + e*x))^3, x, 8, ((2*a^2*A + A*b^2 - 3*a*b*B)*atanh((sqrt(a - b)*tanh((1/2)*(d + e*x)))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)*e) - C/(2*b*e*(a + b*cosh(d + e*x))^2) - ((A*b - a*B)*sinh(d + e*x))/(2*(a^2 - b^2)*e*(a + b*cosh(d + e*x))^2) - ((3*a*A*b - a^2*B - 2*b^2*B)*sinh(d + e*x))/(2*(a^2 - b^2)^2*e*(a + b*cosh(d + e*x)))]
    @test_int [(A + B*cosh(d + e*x) + C*sinh(d + e*x))/(a + b*cosh(d + e*x))^4, x, 9, ((2*a^3*A + 3*a*A*b^2 - 4*a^2*b*B - b^3*B)*atanh((sqrt(a - b)*tanh((1/2)*(d + e*x)))/sqrt(a + b)))/((a - b)^(7/2)*(a + b)^(7/2)*e) - C/(3*b*e*(a + b*cosh(d + e*x))^3) - ((A*b - a*B)*sinh(d + e*x))/(3*(a^2 - b^2)*e*(a + b*cosh(d + e*x))^3) - ((5*a*A*b - 2*a^2*B - 3*b^2*B)*sinh(d + e*x))/(6*(a^2 - b^2)^2*e*(a + b*cosh(d + e*x))^2) - ((11*a^2*A*b + 4*A*b^3 - 2*a^3*B - 13*a*b^2*B)*sinh(d + e*x))/(6*(a^2 - b^2)^3*e*(a + b*cosh(d + e*x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d*x)^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d*x)^2)^p=#


    @test_int [x/(a + b*cosh(x)^2), x, 9, (x*log(1 + (b*ℯ^(2*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - (x*log(1 + (b*ℯ^(2*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) + PolyLog(2, -((b*ℯ^(2*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b)) - PolyLog(2, -((b*ℯ^(2*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b))]
    @test_int [x^2/(a + b*cosh(x)^2), x, 11, (x^2*log(1 + (b*ℯ^(2*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - (x^2*log(1 + (b*ℯ^(2*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) + (x*PolyLog(2, -((b*ℯ^(2*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(2*sqrt(a)*sqrt(a + b)) - (x*PolyLog(2, -((b*ℯ^(2*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(2*sqrt(a)*sqrt(a + b)) - PolyLog(3, -((b*ℯ^(2*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b)) + PolyLog(3, -((b*ℯ^(2*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b))]
    @test_int [x^3/(a + b*cosh(x)^2), x, 13, (x^3*log(1 + (b*ℯ^(2*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - (x^3*log(1 + (b*ℯ^(2*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) + (3*x^2*PolyLog(2, -((b*ℯ^(2*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b)) - (3*x^2*PolyLog(2, -((b*ℯ^(2*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b)) - (3*x*PolyLog(3, -((b*ℯ^(2*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b)) + (3*x*PolyLog(3, -((b*ℯ^(2*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b)) + (3*PolyLog(4, -((b*ℯ^(2*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(8*sqrt(a)*sqrt(a + b)) - (3*PolyLog(4, -((b*ℯ^(2*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(8*sqrt(a)*sqrt(a + b))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(1-a^2*x^2)^m*cosh(sqrt(1-a*x)/sqrt(1+a*x))^n=#


    @test_int [cosh(sqrt(1 - a*x)/sqrt(1 + a*x))^3/(1 - a^2*x^2), x, 5, -((3*CoshIntegral(sqrt(1 - a*x)/sqrt(1 + a*x)))/(4*a)) - CoshIntegral((3*sqrt(1 - a*x))/sqrt(1 + a*x))/(4*a)]
    @test_int [cosh(sqrt(1 - a*x)/sqrt(1 + a*x))^2/(1 - a^2*x^2), x, 4, -(CoshIntegral((2*sqrt(1 - a*x))/sqrt(1 + a*x))/(2*a)) - log(sqrt(1 - a*x)/sqrt(1 + a*x))/(2*a)]
    @test_int [cosh(sqrt(1 - a*x)/sqrt(1 + a*x))^1/(1 - a^2*x^2), x, 2, -(CoshIntegral(sqrt(1 - a*x)/sqrt(1 + a*x))/a)]
    @test_int [1/(cosh(sqrt(1 - a*x)/sqrt(1 + a*x))^1*(1 - a^2*x^2)), x, 1, Unintegrable(sech(sqrt(1 - a*x)/sqrt(1 + a*x))/((1 - a*x)*(1 + a*x)), x)]
    @test_int [1/(cosh(sqrt(1 - a*x)/sqrt(1 + a*x))^2*(1 - a^2*x^2)), x, 1, Unintegrable(sech(sqrt(1 - a*x)/sqrt(1 + a*x))^2/((1 - a*x)*(1 + a*x)), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sinh(c+d*x)^n*(a+b*cosh(c+d*x))^p=#


    @test_int [x*sinh(x)/(a + b*cosh(x))^2, x, 3, (2*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b*sqrt(a + b)) - x/(b*(a + b*cosh(x)))]
    @test_int [x*sinh(x)/(a + b*cosh(x))^3, x, 5, (a*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(3/2)*b*(a + b)^(3/2)) - x/(2*b*(a + b*cosh(x))^2) - sinh(x)/(2*(a^2 - b^2)*(a + b*cosh(x)))]


    @test_int [sinh(a + b*x)*(2 + cosh(a + b*x)^2)/x, x, 13, (9/4)*CoshIntegral(b*x)*sinh(a) + (1/4)*CoshIntegral(3*b*x)*sinh(3*a) + (9/4)*cosh(a)*SinhIntegral(b*x) + (1/4)*cosh(3*a)*SinhIntegral(3*b*x)]


    @test_int [(x^m*sinh(c + d*x))/(a + b*cosh(c + d*x)), x, 0, Unintegrable((x^m*sinh(c + d*x))/(a + b*cosh(c + d*x)), x)]

    @test_int [(x^3*sinh(c + d*x))/(a + b*cosh(c + d*x)), x, 11, -x^4/(4*b) + (x^3*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b*d) + (x^3*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b*d) + (3*x^2*PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b*d^2) + (3*x^2*PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b*d^2) - (6*x*PolyLog(3, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b*d^3) - (6*x*PolyLog(3, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b*d^3) + (6*PolyLog(4, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b*d^4) + (6*PolyLog(4, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b*d^4)]
    @test_int [(x^2*sinh(c + d*x))/(a + b*cosh(c + d*x)), x, 9, -x^3/(3*b) + (x^2*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b*d) + (x^2*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b*d) + (2*x*PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b*d^2) + (2*x*PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b*d^2) - (2*PolyLog(3, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b*d^3) - (2*PolyLog(3, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b*d^3)]
    @test_int [(x*sinh(c + d*x))/(a + b*cosh(c + d*x)), x, 7, -x^2/(2*b) + (x*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b*d) + (x*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b*d) + PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b*d^2) + PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b*d^2)]
    @test_int [sinh(c + d*x)/(a + b*cosh(c + d*x)), x, 2, log(a + b*cosh(c + d*x))/(b*d)]
    @test_int [sinh(c + d*x)/(x*(a + b*cosh(c + d*x))), x, 0, Unintegrable(sinh(c + d*x)/(x*(a + b*cosh(c + d*x))), x)]


    @test_int [(x^m*sinh(c + d*x)^2)/(a + b*cosh(c + d*x)), x, 0, Unintegrable((x^m*sinh(c + d*x)^2)/(a + b*cosh(c + d*x)), x)]

    @test_int [(x^3*sinh(c + d*x)^2)/(a + b*cosh(c + d*x)), x, 18, -(a*x^4)/(4*b^2) - (6*cosh(c + d*x))/(b*d^4) - (3*x^2*cosh(c + d*x))/(b*d^2) + (sqrt(a^2 - b^2)*x^3*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b^2*d) - (sqrt(a^2 - b^2)*x^3*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b^2*d) + (3*sqrt(a^2 - b^2)*x^2*PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^2*d^2) - (3*sqrt(a^2 - b^2)*x^2*PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^2*d^2) - (6*sqrt(a^2 - b^2)*x*PolyLog(3, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^2*d^3) + (6*sqrt(a^2 - b^2)*x*PolyLog(3, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^2*d^3) + (6*sqrt(a^2 - b^2)*PolyLog(4, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^2*d^4) - (6*sqrt(a^2 - b^2)*PolyLog(4, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^2*d^4) + (6*x*sinh(c + d*x))/(b*d^3) + (x^3*sinh(c + d*x))/(b*d)]
    @test_int [(x^2*sinh(c + d*x)^2)/(a + b*cosh(c + d*x)), x, 15, -(a*x^3)/(3*b^2) - (2*x*cosh(c + d*x))/(b*d^2) + (sqrt(a^2 - b^2)*x^2*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b^2*d) - (sqrt(a^2 - b^2)*x^2*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b^2*d) + (2*sqrt(a^2 - b^2)*x*PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^2*d^2) - (2*sqrt(a^2 - b^2)*x*PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^2*d^2) - (2*sqrt(a^2 - b^2)*PolyLog(3, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^2*d^3) + (2*sqrt(a^2 - b^2)*PolyLog(3, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^2*d^3) + (2*sinh(c + d*x))/(b*d^3) + (x^2*sinh(c + d*x))/(b*d)]
    @test_int [(x*sinh(c + d*x)^2)/(a + b*cosh(c + d*x)), x, 12, -(a*x^2)/(2*b^2) - cosh(c + d*x)/(b*d^2) + (sqrt(a^2 - b^2)*x*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b^2*d) - (sqrt(a^2 - b^2)*x*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b^2*d) + (sqrt(a^2 - b^2)*PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^2*d^2) - (sqrt(a^2 - b^2)*PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^2*d^2) + (x*sinh(c + d*x))/(b*d)]
    @test_int [sinh(c + d*x)^2/(a + b*cosh(c + d*x)), x, 4, -((a*x)/b^2) + (2*sqrt(a - b)*sqrt(a + b)*atanh((sqrt(a - b)*tanh((1/2)*(c + d*x)))/sqrt(a + b)))/(b^2*d) + sinh(c + d*x)/(b*d)]
    @test_int [sinh(c + d*x)^2/(x*(a + b*cosh(c + d*x))), x, 0, Unintegrable(sinh(c + d*x)^2/(x*(a + b*cosh(c + d*x))), x)]


    @test_int [(x^m*sinh(c + d*x)^3)/(a + b*cosh(c + d*x)), x, 0, Unintegrable((x^m*sinh(c + d*x)^3)/(a + b*cosh(c + d*x)), x)]

    @test_int [(x^3*sinh(c + d*x)^3)/(a + b*cosh(c + d*x)), x, 21, (3*x)/(8*b*d^3) + x^3/(4*b*d) - ((a^2 - b^2)*x^4)/(4*b^3) - (6*a*x*cosh(c + d*x))/(b^2*d^3) - (a*x^3*cosh(c + d*x))/(b^2*d) + ((a^2 - b^2)*x^3*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b^3*d) + ((a^2 - b^2)*x^3*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b^3*d) + (3*(a^2 - b^2)*x^2*PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^3*d^2) + (3*(a^2 - b^2)*x^2*PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^3*d^2) - (6*(a^2 - b^2)*x*PolyLog(3, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^3*d^3) - (6*(a^2 - b^2)*x*PolyLog(3, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^3*d^3) + (6*(a^2 - b^2)*PolyLog(4, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^3*d^4) + (6*(a^2 - b^2)*PolyLog(4, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^3*d^4) + (6*a*sinh(c + d*x))/(b^2*d^4) + (3*a*x^2*sinh(c + d*x))/(b^2*d^2) - (3*cosh(c + d*x)*sinh(c + d*x))/(8*b*d^4) - (3*x^2*cosh(c + d*x)*sinh(c + d*x))/(4*b*d^2) + (3*x*sinh(c + d*x)^2)/(4*b*d^3) + (x^3*sinh(c + d*x)^2)/(2*b*d)]
    @test_int [(x^2*sinh(c + d*x)^3)/(a + b*cosh(c + d*x)), x, 16, x^2/(4*b*d) - ((a^2 - b^2)*x^3)/(3*b^3) - (2*a*cosh(c + d*x))/(b^2*d^3) - (a*x^2*cosh(c + d*x))/(b^2*d) + ((a^2 - b^2)*x^2*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b^3*d) + ((a^2 - b^2)*x^2*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b^3*d) + (2*(a^2 - b^2)*x*PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^3*d^2) + (2*(a^2 - b^2)*x*PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^3*d^2) - (2*(a^2 - b^2)*PolyLog(3, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^3*d^3) - (2*(a^2 - b^2)*PolyLog(3, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^3*d^3) + (2*a*x*sinh(c + d*x))/(b^2*d^2) - (x*cosh(c + d*x)*sinh(c + d*x))/(2*b*d^2) + sinh(c + d*x)^2/(4*b*d^3) + (x^2*sinh(c + d*x)^2)/(2*b*d)]
    @test_int [(x*sinh(c + d*x)^3)/(a + b*cosh(c + d*x)), x, 13, x/(4*b*d) - ((a^2 - b^2)*x^2)/(2*b^3) - (a*x*cosh(c + d*x))/(b^2*d) + ((a^2 - b^2)*x*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2))))/(b^3*d) + ((a^2 - b^2)*x*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2))))/(b^3*d) + ((a^2 - b^2)*PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 - b^2)))))/(b^3*d^2) + ((a^2 - b^2)*PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 - b^2)))))/(b^3*d^2) + (a*sinh(c + d*x))/(b^2*d^2) - (cosh(c + d*x)*sinh(c + d*x))/(4*b*d^2) + (x*sinh(c + d*x)^2)/(2*b*d)]
    @test_int [sinh(c + d*x)^3/(a + b*cosh(c + d*x)), x, 3, -((a*cosh(c + d*x))/(b^2*d)) + cosh(c + d*x)^2/(2*b*d) + ((a^2 - b^2)*log(a + b*cosh(c + d*x)))/(b^3*d)]
    @test_int [sinh(c + d*x)^3/(x*(a + b*cosh(c + d*x))), x, 0, Unintegrable(sinh(c + d*x)^3/(x*(a + b*cosh(c + d*x))), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*cosh(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cosh(a+b*log(c*x^n))^p=#


    @test_int [cosh(a + b*log(c*x^n)), x, 1, (x*cosh(a + b*log(c*x^n)))/(1 - b^2*n^2) - (b*n*x*sinh(a + b*log(c*x^n)))/(1 - b^2*n^2)]
    @test_int [cosh(a + b*log(c*x^n))^2, x, 2, -((2*b^2*n^2*x)/(1 - 4*b^2*n^2)) + (x*cosh(a + b*log(c*x^n))^2)/(1 - 4*b^2*n^2) - (2*b*n*x*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(1 - 4*b^2*n^2)]
    @test_int [cosh(a + b*log(c*x^n))^3, x, 2, -((6*b^2*n^2*x*cosh(a + b*log(c*x^n)))/(1 - 10*b^2*n^2 + 9*b^4*n^4)) + (x*cosh(a + b*log(c*x^n))^3)/(1 - 9*b^2*n^2) + (6*b^3*n^3*x*sinh(a + b*log(c*x^n)))/(1 - 10*b^2*n^2 + 9*b^4*n^4) - (3*b*n*x*cosh(a + b*log(c*x^n))^2*sinh(a + b*log(c*x^n)))/(1 - 9*b^2*n^2)]
    @test_int [cosh(a + b*log(c*x^n))^4, x, 3, (24*b^4*n^4*x)/(1 - 20*b^2*n^2 + 64*b^4*n^4) - (12*b^2*n^2*x*cosh(a + b*log(c*x^n))^2)/(1 - 20*b^2*n^2 + 64*b^4*n^4) + (x*cosh(a + b*log(c*x^n))^4)/(1 - 16*b^2*n^2) + (24*b^3*n^3*x*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(1 - 20*b^2*n^2 + 64*b^4*n^4) - (4*b*n*x*cosh(a + b*log(c*x^n))^3*sinh(a + b*log(c*x^n)))/(1 - 16*b^2*n^2)]


    @test_int [x^m*cosh(a + b*log(c*x^n)), x, 1, ((1 + m)*x^(1 + m)*cosh(a + b*log(c*x^n)))/((1 + m)^2 - b^2*n^2) - (b*n*x^(1 + m)*sinh(a + b*log(c*x^n)))/((1 + m)^2 - b^2*n^2)]
    @test_int [x^m*cosh(a + b*log(c*x^n))^2, x, 2, -((2*b^2*n^2*x^(1 + m))/((1 + m)*((1 + m)^2 - 4*b^2*n^2))) + ((1 + m)*x^(1 + m)*cosh(a + b*log(c*x^n))^2)/((1 + m)^2 - 4*b^2*n^2) - (2*b*n*x^(1 + m)*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/((1 + m)^2 - 4*b^2*n^2)]
    @test_int [x^m*cosh(a + b*log(c*x^n))^3, x, 2, -((6*b^2*(1 + m)*n^2*x^(1 + m)*cosh(a + b*log(c*x^n)))/(((1 + m)^2 - 9*b^2*n^2)*((1 + m)^2 - b^2*n^2))) + ((1 + m)*x^(1 + m)*cosh(a + b*log(c*x^n))^3)/((1 + m)^2 - 9*b^2*n^2) + (6*b^3*n^3*x^(1 + m)*sinh(a + b*log(c*x^n)))/(((1 + m)^2 - 9*b^2*n^2)*((1 + m)^2 - b^2*n^2)) - (3*b*n*x^(1 + m)*cosh(a + b*log(c*x^n))^2*sinh(a + b*log(c*x^n)))/((1 + m)^2 - 9*b^2*n^2)]
    @test_int [x^m*cosh(a + b*log(c*x^n))^4, x, 3, (24*b^4*n^4*x^(1 + m))/((1 + m)*((1 + m)^2 - 16*b^2*n^2)*((1 + m)^2 - 4*b^2*n^2)) - (12*b^2*(1 + m)*n^2*x^(1 + m)*cosh(a + b*log(c*x^n))^2)/(((1 + m)^2 - 16*b^2*n^2)*((1 + m)^2 - 4*b^2*n^2)) + ((1 + m)*x^(1 + m)*cosh(a + b*log(c*x^n))^4)/((1 + m)^2 - 16*b^2*n^2) + (24*b^3*n^3*x^(1 + m)*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(((1 + m)^2 - 16*b^2*n^2)*((1 + m)^2 - 4*b^2*n^2)) - (4*b*n*x^(1 + m)*cosh(a + b*log(c*x^n))^3*sinh(a + b*log(c*x^n)))/((1 + m)^2 - 16*b^2*n^2)]


    @test_int [cosh(a + b*log(c*x^n))/x, x, 2, sinh(a + b*log(c*x^n))/(b*n)]
    @test_int [cosh(a + b*log(c*x^n))^2/x, x, 3, log(x)/2 + (cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(2*b*n)]
    @test_int [cosh(a + b*log(c*x^n))^3/x, x, 3, sinh(a + b*log(c*x^n))/(b*n) + sinh(a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [cosh(a + b*log(c*x^n))^4/x, x, 4, 3*log(x)/8 + (3*cosh(a + b*log(c*x^n))*sinh(a + b*log(c*x^n)))/(8*b*n) + (cosh(a + b*log(c*x^n))^3*sinh(a + b*log(c*x^n)))/(4*b*n)]
    @test_int [cosh(a + b*log(c*x^n))^5/x, x, 3, sinh(a + b*log(c*x^n))/(b*n) + (2*sinh(a + b*log(c*x^n))^3)/(3*b*n) + sinh(a + b*log(c*x^n))^5/(5*b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cosh(a+b*log(c*x^n))^(p/2)=#


    @test_int [cosh(a + b*log(c*x^n))^(5/2)/x, x, 3, -((6*im*EllipticE((1/2)*im*(a + b*log(c*x^n)), 2))/(5*b*n)) + (2*cosh(a + b*log(c*x^n))^(3/2)*sinh(a + b*log(c*x^n)))/(5*b*n)]
    @test_int [cosh(a + b*log(c*x^n))^(3/2)/x, x, 3, -((2*im*EllipticF((1/2)*im*(a + b*log(c*x^n)), 2))/(3*b*n)) + (2*sqrt(cosh(a + b*log(c*x^n)))*sinh(a + b*log(c*x^n)))/(3*b*n)]
    @test_int [sqrt(cosh(a + b*log(c*x^n)))/x, x, 2, -((2*im*EllipticE((1/2)*im*(a + b*log(c*x^n)), 2))/(b*n))]
    @test_int [1/(x*sqrt(cosh(a + b*log(c*x^n)))), x, 2, -((2*im*EllipticF((1/2)*im*(a + b*log(c*x^n)), 2))/(b*n))]
    @test_int [1/(x*cosh(a + b*log(c*x^n))^(3/2)), x, 3, (2*im*EllipticE((1/2)*im*(a + b*log(c*x^n)), 2))/(b*n) + (2*sinh(a + b*log(c*x^n)))/(b*n*sqrt(cosh(a + b*log(c*x^n))))]
    @test_int [1/(x*cosh(a + b*log(c*x^n))^(5/2)), x, 3, -((2*im*EllipticF((1/2)*im*(a + b*log(c*x^n)), 2))/(3*b*n)) + (2*sinh(a + b*log(c*x^n)))/(3*b*n*cosh(a + b*log(c*x^n))^(3/2))]


    @test_int [cosh(a + 2/n*log(c*x^n))^(5/2), x, 8, (-(1/4))*x*cosh(a + (2*log(c*x^n))/n)^(5/2) + (5*x*cosh(a + (2*log(c*x^n))/n)^(5/2))/(ℯ^(2*a)*(c*x^n)^(4/n)*(4*(1 + 1/(ℯ^(2*a)*(c*x^n)^(4/n)))^2)) + (5*x*cosh(a + (2*log(c*x^n))/n)^(5/2))/(12*(1 + 1/(ℯ^(2*a)*(c*x^n)^(4/n)))) - (5*x*acsch(ℯ^a*(c*x^n)^(2/n))*cosh(a + (2*log(c*x^n))/n)^(5/2))/(ℯ^(3*a)*(c*x^n)^(6/n)*(4*(1 + 1/(ℯ^(2*a)*(c*x^n)^(4/n)))^(5/2)))]
    @test_int [sqrt(cosh(a + 2/n*log(c*x^n))), x, 6, (1/2)*x*sqrt(cosh(a + (2*log(c*x^n))/n)) - (x*acsch(ℯ^a*(c*x^n)^(2/n))*sqrt(cosh(a + (2*log(c*x^n))/n)))/(ℯ^a*(c*x^n)^(2/n)*(2*sqrt(1 + 1/(ℯ^(2*a)*(c*x^n)^(4/n)))))]
    @test_int [1/cosh(a + 2/n*log(c*x^n))^(3/2), x, 3, -((x*(1 + 1/(ℯ^(2*a)*(c*x^n)^(4/n))))/(2*cosh(a + (2*log(c*x^n))/n)^(3/2)))]
    @test_int [1/cosh(a + 2/n*log(c*x^n))^(7/2), x, 4, -((x*(1 + 1/(ℯ^(2*a)*(c*x^n)^(4/n))))/(6*cosh(a + (2*log(c*x^n))/n)^(7/2))) - (x*(1 + 1/(ℯ^(2*a)*(c*x^n)^(4/n))))/(ℯ^(2*a)*(c*x^n)^(4/n)*(15*cosh(a + (2*log(c*x^n))/n)^(7/2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cosh((a+b*x)/(c+d*x))^n=#


    @test_int [cosh((a + b*x)/(c + d*x)), x, 5, ((c + d*x)*cosh((a + b*x)/(c + d*x)))/d + ((b*c - a*d)*CoshIntegral((b*c - a*d)/(d*(c + d*x)))*sinh(b/d))/d^2 - ((b*c - a*d)*cosh(b/d)*SinhIntegral((b*c - a*d)/(d*(c + d*x))))/d^2]
    @test_int [cosh((a + b*x)/(c + d*x))^2, x, 6, ((c + d*x)*cosh((a + b*x)/(c + d*x))^2)/d + ((b*c - a*d)*CoshIntegral((2*(b*c - a*d))/(d*(c + d*x)))*sinh((2*b)/d))/d^2 - ((b*c - a*d)*cosh((2*b)/d)*SinhIntegral((2*(b*c - a*d))/(d*(c + d*x))))/d^2]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*cosh(c+d*x)^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*cosh(a+b*x)^m=#


    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^4, x, 4, -(ℯ^(-3*a - 3*b*x)/(48*b)) - ℯ^(-a - b*x)/(4*b) + (3*ℯ^(a + b*x))/(8*b) + ℯ^(3*a + 3*b*x)/(12*b) + ℯ^(5*a + 5*b*x)/(80*b)]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^3, x, 5, -(ℯ^(-2*a - 2*b*x)/(16*b)) + (3*ℯ^(2*a + 2*b*x))/(16*b) + ℯ^(4*a + 4*b*x)/(32*b) + (3*x)/8]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^2, x, 4, -(ℯ^(-a - b*x)/(4*b)) + ℯ^(a + b*x)/(2*b) + ℯ^(3*a + 3*b*x)/(12*b)]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^1, x, 4, ℯ^(2*a + 2*b*x)/(4*b) + x/2]
    @test_int [ℯ^(a + b*x)*sech(a + b*x)^1, x, 3, log(1 + ℯ^(2*a + 2*b*x))/b]
    @test_int [ℯ^(a + b*x)*sech(a + b*x)^2, x, 4, -((2*ℯ^(a + b*x))/(b*(1 + ℯ^(2*a + 2*b*x)))) + (2*atan(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*sech(a + b*x)^3, x, 3, (2*ℯ^(4*a + 4*b*x))/(b*(1 + ℯ^(2*a + 2*b*x))^2)]
    @test_int [ℯ^(a + b*x)*sech(a + b*x)^4, x, 6, -((8*ℯ^(3*a + 3*b*x))/(3*b*(1 + ℯ^(2*a + 2*b*x))^3)) - (2*ℯ^(a + b*x))/(b*(1 + ℯ^(2*a + 2*b*x))^2) + ℯ^(a + b*x)/(b*(1 + ℯ^(2*a + 2*b*x))) + atan(ℯ^(a + b*x))/b]
    @test_int [ℯ^(a + b*x)*sech(a + b*x)^5, x, 5, -(4/(b*(1 + ℯ^(2*a + 2*b*x))^4)) + 32/(3*b*(1 + ℯ^(2*a + 2*b*x))^3) - 8/(b*(1 + ℯ^(2*a + 2*b*x))^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^x*cosh(n*x)^m=#


    @test_int [ℯ^x*cosh(2*x)^2, x, 4, -(1/12)/ℯ^(3*x) + ℯ^x/2 + ℯ^(5*x)/20]
    @test_int [ℯ^x*cosh(2*x), x, 4, -(1/(ℯ^x*2)) + ℯ^(3*x)/6]
    @test_int [ℯ^x*sech(2*x), x, 11, -(atan(1 - sqrt(2)*ℯ^x)/sqrt(2)) + atan(1 + sqrt(2)*ℯ^x)/sqrt(2) + log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(2*sqrt(2)) - log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(2*sqrt(2))]
    @test_int [ℯ^x*sech(2*x)^2, x, 12, -(ℯ^x/(1 + ℯ^(4*x))) - atan(1 - sqrt(2)*ℯ^x)/(2*sqrt(2)) + atan(1 + sqrt(2)*ℯ^x)/(2*sqrt(2)) - log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2)) + log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2))]


    @test_int [ℯ^x*cosh(3*x)^2, x, 4, -(1/20)/ℯ^(5*x) + ℯ^x/2 + ℯ^(7*x)/28]
    @test_int [ℯ^x*cosh(3*x), x, 4, -(1/4)/ℯ^(2*x) + ℯ^(4*x)/8]
    @test_int [ℯ^x*sech(3*x), x, 9, -(atan((1 - 2*ℯ^(2*x))/sqrt(3))/sqrt(3)) - (1/3)*log(1 + ℯ^(2*x)) + (1/6)*log(1 - ℯ^(2*x) + ℯ^(4*x))]
    @test_int [ℯ^x*sech(3*x)^2, x, 13, -((2*ℯ^x)/(3*(1 + ℯ^(6*x)))) + (2*atan(ℯ^x))/9 - (1/9)*atan(sqrt(3) - 2*ℯ^x) + (1/9)*atan(sqrt(3) + 2*ℯ^x) - log(1 - sqrt(3)*ℯ^x + ℯ^(2*x))/(6*sqrt(3)) + log(1 + sqrt(3)*ℯ^x + ℯ^(2*x))/(6*sqrt(3))]


    @test_int [ℯ^x*cosh(4*x)^2, x, 4, -(1/28)/ℯ^(7*x) + ℯ^x/2 + ℯ^(9*x)/36]
    @test_int [ℯ^x*cosh(4*x), x, 4, -(1/6)/ℯ^(3*x) + ℯ^(5*x)/10]
    @test_int [ℯ^x*sech(4*x), x, 21, atan((sqrt(2 - sqrt(2)) - 2*ℯ^x)/sqrt(2 + sqrt(2)))/(2*sqrt(2*(2 + sqrt(2)))) - atan((sqrt(2 + sqrt(2)) - 2*ℯ^x)/sqrt(2 - sqrt(2)))/(2*sqrt(2*(2 - sqrt(2)))) - atan((sqrt(2 - sqrt(2)) + 2*ℯ^x)/sqrt(2 + sqrt(2)))/(2*sqrt(2*(2 + sqrt(2)))) + atan((sqrt(2 + sqrt(2)) + 2*ℯ^x)/sqrt(2 - sqrt(2)))/(2*sqrt(2*(2 - sqrt(2)))) - log(1 - sqrt(2 - sqrt(2))*ℯ^x + ℯ^(2*x))/(4*sqrt(2*(2 - sqrt(2)))) + log(1 + sqrt(2 - sqrt(2))*ℯ^x + ℯ^(2*x))/(4*sqrt(2*(2 - sqrt(2)))) + log(1 - sqrt(2 + sqrt(2))*ℯ^x + ℯ^(2*x))/(4*sqrt(2*(2 + sqrt(2)))) - log(1 + sqrt(2 + sqrt(2))*ℯ^x + ℯ^(2*x))/(4*sqrt(2*(2 + sqrt(2))))]
    @test_int [ℯ^x*sech(4*x)^2, x, 22, -(ℯ^x/(2*(1 + ℯ^(8*x)))) - atan((sqrt(2 - sqrt(2)) - 2*ℯ^x)/sqrt(2 + sqrt(2)))/(8*sqrt(2*(2 - sqrt(2)))) - atan((sqrt(2 + sqrt(2)) - 2*ℯ^x)/sqrt(2 - sqrt(2)))/(8*sqrt(2*(2 + sqrt(2)))) + atan((sqrt(2 - sqrt(2)) + 2*ℯ^x)/sqrt(2 + sqrt(2)))/(8*sqrt(2*(2 - sqrt(2)))) + atan((sqrt(2 + sqrt(2)) + 2*ℯ^x)/sqrt(2 - sqrt(2)))/(8*sqrt(2*(2 + sqrt(2)))) - (1/32)*sqrt(2 - sqrt(2))*log(1 - sqrt(2 - sqrt(2))*ℯ^x + ℯ^(2*x)) + (1/32)*sqrt(2 - sqrt(2))*log(1 + sqrt(2 - sqrt(2))*ℯ^x + ℯ^(2*x)) - (1/32)*sqrt(2 + sqrt(2))*log(1 - sqrt(2 + sqrt(2))*ℯ^x + ℯ^(2*x)) + (1/32)*sqrt(2 + sqrt(2))*log(1 + sqrt(2 + sqrt(2))*ℯ^x + ℯ^(2*x))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*cosh(d+e*x)^m=#


    @test_int [F^(c*(a + b*x))*cosh(d + e*x)^3, x, 2, -((b*c*F^(c*(a + b*x))*cosh(d + e*x)^3*log(F))/(9*e^2 - b^2*c^2*log(F)^2)) - (6*b*c*e^2*F^(c*(a + b*x))*cosh(d + e*x)*log(F))/(9*e^4 - 10*b^2*c^2*e^2*log(F)^2 + b^4*c^4*log(F)^4) + (3*e*F^(c*(a + b*x))*cosh(d + e*x)^2*sinh(d + e*x))/(9*e^2 - b^2*c^2*log(F)^2) + (6*e^3*F^(c*(a + b*x))*sinh(d + e*x))/(9*e^4 - 10*b^2*c^2*e^2*log(F)^2 + b^4*c^4*log(F)^4)]
    @test_int [F^(c*(a + b*x))*cosh(d + e*x)^2, x, 2, (2*e^2*F^(c*(a + b*x)))/(b*c*log(F)*(4*e^2 - b^2*c^2*log(F)^2)) - (b*c*F^(c*(a + b*x))*cosh(d + e*x)^2*log(F))/(4*e^2 - b^2*c^2*log(F)^2) + (2*e*F^(c*(a + b*x))*cosh(d + e*x)*sinh(d + e*x))/(4*e^2 - b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*cosh(d + e*x)^1, x, 1, -((b*c*F^(c*(a + b*x))*cosh(d + e*x)*log(F))/(e^2 - b^2*c^2*log(F)^2)) + (e*F^(c*(a + b*x))*sinh(d + e*x))/(e^2 - b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*sech(d + e*x)^1, x, 1, (2*ℯ^(d + e*x)*F^(c*(a + b*x))*Hypergeometric2F1(1, (e + b*c*log(F))/(2*e), (1/2)*(3 + (b*c*log(F))/e), -ℯ^(2*(d + e*x))))/(e + b*c*log(F))]
    @test_int [F^(c*(a + b*x))*sech(d + e*x)^2, x, 1, (4*ℯ^(2*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 + (b*c*log(F))/(2*e), 2 + (b*c*log(F))/(2*e), -ℯ^(2*(d + e*x))))/(2*e + b*c*log(F))]
    @test_int [F^(c*(a + b*x))*sech(d + e*x)^3, x, 2, (ℯ^(d + e*x)*F^(c*(a + b*x))*Hypergeometric2F1(1, (e + b*c*log(F))/(2*e), (1/2)*(3 + (b*c*log(F))/e), -ℯ^(2*(d + e*x)))*(e - b*c*log(F)))/e^2 + (b*c*F^(c*(a + b*x))*log(F)*sech(d + e*x))/(2*e^2) + (F^(c*(a + b*x))*sech(d + e*x)*tanh(d + e*x))/(2*e)]
    @test_int [F^(c*(a + b*x))*sech(d + e*x)^4, x, 2, (2*ℯ^(2*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 + (b*c*log(F))/(2*e), 2 + (b*c*log(F))/(2*e), -ℯ^(2*(d + e*x)))*(2*e - b*c*log(F)))/(3*e^2) + (b*c*F^(c*(a + b*x))*log(F)*sech(d + e*x)^2)/(6*e^2) + (F^(c*(a + b*x))*sech(d + e*x)^2*tanh(d + e*x))/(3*e)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*(cosh(a*c+b*c*x)^2)^(m/2)=#


    @test_int [ℯ^(c*(a + b*x))*(cosh(a*c + b*c*x)^2)^(5/2), x, 6, -(sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/(128*b*c*ℯ^(4*c*(a + b*x))) - (5*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/(64*b*c*ℯ^(2*c*(a + b*x))) + (5*ℯ^(2*c*(a + b*x))*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/(32*b*c) + (5*ℯ^(4*c*(a + b*x))*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/(128*b*c) + (ℯ^(6*c*(a + b*x))*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/(192*b*c) + (5*x*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/16]
    @test_int [ℯ^(c*(a + b*x))*(cosh(a*c + b*c*x)^2)^(3/2), x, 6, -(sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/(16*b*c*ℯ^(2*c*(a + b*x))) + (3*ℯ^(2*c*(a + b*x))*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/(16*b*c) + (ℯ^(4*c*(a + b*x))*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/(32*b*c) + (3*x*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/8]
    @test_int [ℯ^(c*(a + b*x))*sqrt(cosh(a*c + b*c*x)^2), x, 5, (ℯ^(2*c*(a + b*x))*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/(4*b*c) + (x*sqrt(cosh(a*c + b*c*x)^2)*sech(a*c + b*c*x))/2]
    @test_int [ℯ^(c*(a + b*x))/sqrt(cosh(a*c + b*c*x)^2), x, 4, (cosh(a*c + b*c*x)*log(1 + ℯ^(2*c*(a + b*x))))/(b*c*sqrt(cosh(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(cosh(a*c + b*c*x)^2)^(3/2), x, 4, (2*ℯ^(4*c*(a + b*x))*cosh(a*c + b*c*x))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^2*sqrt(cosh(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(cosh(a*c + b*c*x)^2)^(5/2), x, 6, (-4*cosh(a*c + b*c*x))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^4*sqrt(cosh(a*c + b*c*x)^2)) + (32*cosh(a*c + b*c*x))/(3*b*c*(1 + ℯ^(2*c*(a + b*x)))^3*sqrt(cosh(a*c + b*c*x)^2)) - (8*cosh(a*c + b*c*x))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^2*sqrt(cosh(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(cosh(a*c + b*c*x)^2)^(7/2), x, 6, (32*cosh(a*c + b*c*x))/(3*b*c*(1 + ℯ^(2*c*(a + b*x)))^6*sqrt(cosh(a*c + b*c*x)^2)) - (192*cosh(a*c + b*c*x))/(5*b*c*(1 + ℯ^(2*c*(a + b*x)))^5*sqrt(cosh(a*c + b*c*x)^2)) + (48*cosh(a*c + b*c*x))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^4*sqrt(cosh(a*c + b*c*x)^2)) - (64*cosh(a*c + b*c*x))/(3*b*c*(1 + ℯ^(2*c*(a + b*x)))^3*sqrt(cosh(a*c + b*c*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x+c*x^2)*cosh(d+e*x+f*x^2)^m=#


    @test_int [ℯ^x*cosh(a + b*x), x, 1, (ℯ^x*cosh(a + b*x))/(1 - b^2) - (b*ℯ^x*sinh(a + b*x))/(1 - b^2)]
    @test_int [ℯ^x*cosh(a + c*x^2), x, 6, -((ℯ^(-a + 1/(4*c))*sqrt(pi)*Erf((1 - 2*c*x)/(2*sqrt(c))))/(4*sqrt(c))) + (ℯ^(a - 1/(4*c))*sqrt(pi)*Erfi((1 + 2*c*x)/(2*sqrt(c))))/(4*sqrt(c))]
    @test_int [ℯ^x*cosh(a + b*x + c*x^2), x, 6, -((ℯ^(-a + (1 - b)^2/(4*c))*sqrt(pi)*Erf((1 - b - 2*c*x)/(2*sqrt(c))))/(4*sqrt(c))) + (ℯ^(a - (1 + b)^2/(4*c))*sqrt(pi)*Erfi((1 + b + 2*c*x)/(2*sqrt(c))))/(4*sqrt(c))]

    @test_int [ℯ^(x^2)*cosh(a + b*x), x, 6, (1/4)*ℯ^(-a - b^2/4)*sqrt(pi)*Erfi((1/2)*(-b + 2*x)) + (1/4)*ℯ^(a - b^2/4)*sqrt(pi)*Erfi((1/2)*(b + 2*x))]
    @test_int [ℯ^(x^2)*cosh(a + c*x^2), x, 4, (sqrt(pi)*Erfi(sqrt(1 - c)*x))/(ℯ^a*(4*sqrt(1 - c))) + (ℯ^a*sqrt(pi)*Erfi(sqrt(1 + c)*x))/(4*sqrt(1 + c))]
    @test_int [ℯ^(x^2)*cosh(a + b*x + c*x^2), x, 6, -((ℯ^(-a - b^2/(4*(1 - c)))*sqrt(pi)*Erfi((b - 2*(1 - c)*x)/(2*sqrt(1 - c))))/(4*sqrt(1 - c))) + (ℯ^(a - b^2/(4*(1 + c)))*sqrt(pi)*Erfi((b + 2*(1 + c)*x)/(2*sqrt(1 + c))))/(4*sqrt(1 + c))]


    @test_int [f^(a + b*x)*cosh(d + f*x^2), x, 8, (ℯ^(-d + (b^2*log(f)^2)/(4*f))*f^(-1/2 + a)*sqrt(pi)*Erf((2*f*x - b*log(f))/(2*sqrt(f))))/4 + (ℯ^(d - (b^2*log(f)^2)/(4*f))*f^(-1/2 + a)*sqrt(pi)*Erfi((2*f*x + b*log(f))/(2*sqrt(f))))/4]
    @test_int [f^(a + b*x)*cosh(d + f*x^2)^2, x, 9, (ℯ^(-2*d + (b^2*log(f)^2)/(8*f))*f^(-1/2 + a)*sqrt(pi/2)*Erf((4*f*x - b*log(f))/(2*sqrt(2)*sqrt(f))))/8 + (ℯ^(2*d - (b^2*log(f)^2)/(8*f))*f^(-1/2 + a)*sqrt(pi/2)*Erfi((4*f*x + b*log(f))/(2*sqrt(2)*sqrt(f))))/8 + f^(a + b*x)/(2*b*log(f))]
    @test_int [f^(a + b*x)*cosh(d + f*x^2)^3, x, 14, (3*ℯ^(-d + (b^2*log(f)^2)/(4*f))*f^(-1/2 + a)*sqrt(pi)*Erf((2*f*x - b*log(f))/(2*sqrt(f))))/16 + (ℯ^(-3*d + (b^2*log(f)^2)/(12*f))*f^(-1/2 + a)*sqrt(pi/3)*Erf((6*f*x - b*log(f))/(2*sqrt(3)*sqrt(f))))/16 + (3*ℯ^(d - (b^2*log(f)^2)/(4*f))*f^(-1/2 + a)*sqrt(pi)*Erfi((2*f*x + b*log(f))/(2*sqrt(f))))/16 + (ℯ^(3*d - (b^2*log(f)^2)/(12*f))*f^(-1/2 + a)*sqrt(pi/3)*Erfi((6*f*x + b*log(f))/(2*sqrt(3)*sqrt(f))))/16]

    @test_int [f^(a + b*x)*cosh(d + e*x + f*x^2), x, 8, (ℯ^(-d + (e - b*log(f))^2/(4*f))*f^(-1/2 + a)*sqrt(pi)*Erf((e + 2*f*x - b*log(f))/(2*sqrt(f))))/4 + (ℯ^(d - (e + b*log(f))^2/(4*f))*f^(-1/2 + a)*sqrt(pi)*Erfi((e + 2*f*x + b*log(f))/(2*sqrt(f))))/4]
    @test_int [f^(a + b*x)*cosh(d + e*x + f*x^2)^2, x, 9, (ℯ^(-2*d + (2*e - b*log(f))^2/(8*f))*f^(-1/2 + a)*sqrt(pi/2)*Erf((2*e + 4*f*x - b*log(f))/(2*sqrt(2)*sqrt(f))))/8 + (ℯ^(2*d - (2*e + b*log(f))^2/(8*f))*f^(-1/2 + a)*sqrt(pi/2)*Erfi((2*e + 4*f*x + b*log(f))/(2*sqrt(2)*sqrt(f))))/8 + f^(a + b*x)/(2*b*log(f))]
    @test_int [f^(a + b*x)*cosh(d + e*x + f*x^2)^3, x, 14, (3*ℯ^(-d + (e - b*log(f))^2/(4*f))*f^(-1/2 + a)*sqrt(pi)*Erf((e + 2*f*x - b*log(f))/(2*sqrt(f))))/16 + (ℯ^(-3*d + (3*e - b*log(f))^2/(12*f))*f^(-1/2 + a)*sqrt(pi/3)*Erf((3*e + 6*f*x - b*log(f))/(2*sqrt(3)*sqrt(f))))/16 + (3*ℯ^(d - (e + b*log(f))^2/(4*f))*f^(-1/2 + a)*sqrt(pi)*Erfi((e + 2*f*x + b*log(f))/(2*sqrt(f))))/16 + (ℯ^(3*d - (3*e + b*log(f))^2/(12*f))*f^(-1/2 + a)*sqrt(pi/3)*Erfi((3*e + 6*f*x + b*log(f))/(2*sqrt(3)*sqrt(f))))/16]


    @test_int [f^(a + c*x^2)*cosh(d + e*x), x, 8, If($VersionNumber>=8, -(ℯ^(-d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))), (ℯ^(-d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + c*x^2)*cosh(d + e*x)^2, x, 9, If($VersionNumber>=8, (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*d - e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi((e - c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*d - e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi((e + c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))), (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*d - e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi(-((e - c*x*log(f))/(sqrt(c)*sqrt(log(f))))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*d - e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi((e + c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + c*x^2)*cosh(d + e*x)^3, x, 14, If($VersionNumber>=8, (-3*ℯ^(-d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) - (ℯ^(-3*d - (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (3*ℯ^(d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*d - (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))), (3*ℯ^(-d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(-3*d - (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((3*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) + (3*ℯ^(d - e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*d - (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))))]

    @test_int [f^(a + c*x^2)*cosh(d + f*x^2), x, 6, (f^a*sqrt(pi)*Erf(x*sqrt(f - c*log(f))))/(4*ℯ^d*sqrt(f - c*log(f))) + (ℯ^d*f^a*sqrt(pi)*Erfi(x*sqrt(f + c*log(f))))/(4*sqrt(f + c*log(f)))]
    @test_int [f^(a + c*x^2)*cosh(d + f*x^2)^2, x, 7, (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) + (f^a*sqrt(pi)*Erf(x*sqrt(2*f - c*log(f))))/(8*ℯ^(2*d)*sqrt(2*f - c*log(f))) + (ℯ^(2*d)*f^a*sqrt(pi)*Erfi(x*sqrt(2*f + c*log(f))))/(8*sqrt(2*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*cosh(d + f*x^2)^3, x, 10, (3*f^a*sqrt(pi)*Erf(x*sqrt(f - c*log(f))))/(16*ℯ^d*sqrt(f - c*log(f))) + (f^a*sqrt(pi)*Erf(x*sqrt(3*f - c*log(f))))/(16*ℯ^(3*d)*sqrt(3*f - c*log(f))) + (3*ℯ^d*f^a*sqrt(pi)*Erfi(x*sqrt(f + c*log(f))))/(16*sqrt(f + c*log(f))) + (ℯ^(3*d)*f^a*sqrt(pi)*Erfi(x*sqrt(3*f + c*log(f))))/(16*sqrt(3*f + c*log(f)))]

    @test_int [f^(a + c*x^2)*cosh(d + e*x + f*x^2), x, 8, (ℯ^(-d + e^2/(4*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((e + 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(4*sqrt(f - c*log(f))) + (ℯ^(d - e^2/(4*(f + c*log(f))))*f^a*sqrt(pi)*Erfi((e + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(4*sqrt(f + c*log(f)))]
    @test_int [f^(a + c*x^2)*cosh(d + e*x + f*x^2)^2, x, 9, (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*d + e^2/(2*f - c*log(f)))*f^a*sqrt(pi)*Erf((e + x*(2*f - c*log(f)))/sqrt(2*f - c*log(f))))/(8*sqrt(2*f - c*log(f))) + (ℯ^(2*d - e^2/(2*f + c*log(f)))*f^a*sqrt(pi)*Erfi((e + x*(2*f + c*log(f)))/sqrt(2*f + c*log(f))))/(8*sqrt(2*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*cosh(d + e*x + f*x^2)^3, x, 14, (3*ℯ^(-d + e^2/(4*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((e + 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(16*sqrt(f - c*log(f))) + (ℯ^(-3*d + (9*e^2)/(12*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((3*e + 2*x*(3*f - c*log(f)))/(2*sqrt(3*f - c*log(f)))))/(16*sqrt(3*f - c*log(f))) + (3*ℯ^(d - e^2/(4*(f + c*log(f))))*f^a*sqrt(pi)*Erfi((e + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(16*sqrt(f + c*log(f))) + (ℯ^(3*d - (9*e^2)/(4*(3*f + c*log(f))))*f^a*sqrt(pi)*Erfi((3*e + 2*x*(3*f + c*log(f)))/(2*sqrt(3*f + c*log(f)))))/(16*sqrt(3*f + c*log(f)))]


    @test_int [f^(a + b*x + c*x^2)*cosh(d + e*x), x, 8, If($VersionNumber>=8, -(ℯ^(-d - (e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(d - (e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))), (ℯ^(-d - (e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(d - (e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + b*x + c*x^2)*cosh(d + e*x)^2, x, 10, If($VersionNumber>=8, (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*d - (2*e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((2*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*d - (2*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((2*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))), (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*d - (2*e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((2*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*d - (2*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((2*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + b*x + c*x^2)*cosh(d + e*x)^3, x, 14, If($VersionNumber>=8, (-3*ℯ^(-d - (e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) - (ℯ^(-3*d - (3*e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (3*ℯ^(d - (e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*d - (3*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))), (3*ℯ^(-d - (e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(-3*d - (3*e - b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((3*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) + (3*ℯ^(d - (e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*d - (3*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))))]

    @test_int [f^(a + b*x + c*x^2)*cosh(d + f*x^2), x, 8, -(ℯ^(-d + (b^2*log(f)^2)/(4*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(4*sqrt(f - c*log(f))) + (ℯ^(d - (b^2*log(f)^2)/(4*(f + c*log(f))))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(4*sqrt(f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*cosh(d + f*x^2)^2, x, 10, (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*d + (b^2*log(f)^2)/(8*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(2*f - c*log(f)))/(2*sqrt(2*f - c*log(f)))))/(8*sqrt(2*f - c*log(f))) + (ℯ^(2*d - (b^2*log(f)^2)/(8*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(2*f + c*log(f)))/(2*sqrt(2*f + c*log(f)))))/(8*sqrt(2*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*cosh(d + f*x^2)^3, x, 14, (-3*ℯ^(-d + (b^2*log(f)^2)/(4*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(16*sqrt(f - c*log(f))) - (ℯ^(-3*d + (b^2*log(f)^2)/(12*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(3*f - c*log(f)))/(2*sqrt(3*f - c*log(f)))))/(16*sqrt(3*f - c*log(f))) + (3*ℯ^(d - (b^2*log(f)^2)/(4*(f + c*log(f))))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(16*sqrt(f + c*log(f))) + (ℯ^(3*d - (b^2*log(f)^2)/(4*(3*f + c*log(f))))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(3*f + c*log(f)))/(2*sqrt(3*f + c*log(f)))))/(16*sqrt(3*f + c*log(f)))]

    @test_int [f^(a + b*x + c*x^2)*cosh(d + e*x + f*x^2), x, 8, (ℯ^(-d + (e - b*log(f))^2/(4*(f - c*log(f))))*f^a*sqrt(pi)*Erf((e - b*log(f) + 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(4*sqrt(f - c*log(f))) + (ℯ^(d - (e + b*log(f))^2/(4*(f + c*log(f))))*f^a*sqrt(pi)*Erfi((e + b*log(f) + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(4*sqrt(f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*cosh(d + e*x + f*x^2)^2, x, 10, (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*d + (2*e - b*log(f))^2/(8*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((2*e - b*log(f) + 2*x*(2*f - c*log(f)))/(2*sqrt(2*f - c*log(f)))))/(8*sqrt(2*f - c*log(f))) + (ℯ^(2*d - (2*e + b*log(f))^2/(8*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((2*e + b*log(f) + 2*x*(2*f + c*log(f)))/(2*sqrt(2*f + c*log(f)))))/(8*sqrt(2*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*cosh(d + e*x + f*x^2)^3, x, 14, (3*ℯ^(-d + (e - b*log(f))^2/(4*(f - c*log(f))))*f^a*sqrt(pi)*Erf((e - b*log(f) + 2*x*(f - c*log(f)))/(2*sqrt(f - c*log(f)))))/(16*sqrt(f - c*log(f))) + (ℯ^(-3*d + (3*e - b*log(f))^2/(12*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((3*e - b*log(f) + 2*x*(3*f - c*log(f)))/(2*sqrt(3*f - c*log(f)))))/(16*sqrt(3*f - c*log(f))) + (3*ℯ^(d - (e + b*log(f))^2/(4*(f + c*log(f))))*f^a*sqrt(pi)*Erfi((e + b*log(f) + 2*x*(f + c*log(f)))/(2*sqrt(f + c*log(f)))))/(16*sqrt(f + c*log(f))) + (ℯ^(3*d - (3*e + b*log(f))^2/(4*(3*f + c*log(f))))*f^a*sqrt(pi)*Erfi((3*e + b*log(f) + 2*x*(3*f + c*log(f)))/(2*sqrt(3*f + c*log(f)))))/(16*sqrt(3*f + c*log(f)))]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*hyperbolic*cosines=#


    @test_int [x/cosh(x)^(3/2) + x*sqrt(cosh(x)), x, 2, -4*sqrt(cosh(x)) + (2*x*sinh(x))/sqrt(cosh(x))]
    @test_int [x/cosh(x)^(5/2) - x/(3*sqrt(cosh(x))), x, 2, 4/(3*sqrt(cosh(x))) + (2*x*sinh(x))/(3*cosh(x)^(3/2))]
    @test_int [x/cosh(x)^(7/2) + (3/5)*x*sqrt(cosh(x)), x, 3, 4/(15*cosh(x)^(3/2)) - (12*sqrt(cosh(x)))/5 + (2*x*sinh(x))/(5*cosh(x)^(5/2)) + (6*x*sinh(x))/(5*sqrt(cosh(x)))]
    @test_int [x^2/cosh(x)^(3/2) + x^2*sqrt(cosh(x)), x, 3, -8*x*sqrt(cosh(x)) - 16*im*EllipticE((im*x)/2, 2) + (2*x^2*sinh(x))/sqrt(cosh(x))]


    @test_int [(x + cosh(x))^2, x, 6, x/2 + x^3/3 - 2*cosh(x) + 2*x*sinh(x) + (1/2)*cosh(x)*sinh(x)]
    @test_int [(x + cosh(x))^3, x, 9, (3*x^2)/4 + x^4/4 - 6*x*cosh(x) - (3*cosh(x)^2)/4 + 7*sinh(x) + 3*x^2*sinh(x) + (3/2)*x*cosh(x)*sinh(x) + sinh(x)^3/3]


    @test_int [cosh(a + b*x)/(c + d*x^2), x, 8, (cosh(a + (b*sqrt(-c))/sqrt(d))*CoshIntegral((b*sqrt(-c))/sqrt(d) - b*x))/(2*sqrt(-c)*sqrt(d)) - (cosh(a - (b*sqrt(-c))/sqrt(d))*CoshIntegral((b*sqrt(-c))/sqrt(d) + b*x))/(2*sqrt(-c)*sqrt(d)) - (sinh(a + (b*sqrt(-c))/sqrt(d))*SinhIntegral((b*sqrt(-c))/sqrt(d) - b*x))/(2*sqrt(-c)*sqrt(d)) - (sinh(a - (b*sqrt(-c))/sqrt(d))*SinhIntegral((b*sqrt(-c))/sqrt(d) + b*x))/(2*sqrt(-c)*sqrt(d))]
    @test_int [cosh(a + b*x)/(c + d*x + e*x^2), x, 8, (cosh(a - (b*(d - sqrt(d^2 - 4*c*e)))/(2*e))*CoshIntegral((b*(d - sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e) - (cosh(a - (b*(d + sqrt(d^2 - 4*c*e)))/(2*e))*CoshIntegral((b*(d + sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e) + (sinh(a - (b*(d - sqrt(d^2 - 4*c*e)))/(2*e))*SinhIntegral((b*(d - sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e) - (sinh(a - (b*(d + sqrt(d^2 - 4*c*e)))/(2*e))*SinhIntegral((b*(d + sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e)]
    end
