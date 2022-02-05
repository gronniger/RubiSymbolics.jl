@testset "6.5.3 Hyperbolic secant functions" begin
    @variables a, b, c, d, n, p, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Hyperbolic*Secants=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c*sech(a+b*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sech(a+b*x)^n=#


    @test_int [sech(a + b*x), x, 1, atan(sinh(a + b*x))/b]
    @test_int [sech(a + b*x)^2, x, 2, tanh(a + b*x)/b]
    @test_int [sech(a + b*x)^3, x, 2, atan(sinh(a + b*x))/(2*b) + (sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [sech(a + b*x)^4, x, 2, tanh(a + b*x)/b - tanh(a + b*x)^3/(3*b)]
    @test_int [sech(a + b*x)^5, x, 3, (3*atan(sinh(a + b*x)))/(8*b) + (3*sech(a + b*x)*tanh(a + b*x))/(8*b) + (sech(a + b*x)^3*tanh(a + b*x))/(4*b)]
    @test_int [sech(a + b*x)^6, x, 2, tanh(a + b*x)/b - (2*tanh(a + b*x)^3)/(3*b) + tanh(a + b*x)^5/(5*b)]


    @test_int [sech(7*x)^4, x, 2, (1/7)*tanh(7*x) - (1/21)*tanh(7*x)^3]


    @test_int [sech(pi*x)^6, x, 2, tanh(pi*x)/pi - (2*tanh(pi*x)^3)/(3*pi) + tanh(pi*x)^5/(5*pi)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*sech(a+b*x))^(n/2)=#


    @test_int [sech(a + b*x)^(5/2), x, 3, -((2*im*sqrt(cosh(a + b*x))*EllipticF((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/(3*b)) + (2*sech(a + b*x)^(3/2)*sinh(a + b*x))/(3*b)]
    @test_int [sech(a + b*x)^(3/2), x, 3, (2*im*sqrt(cosh(a + b*x))*EllipticE((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/b + (2*sqrt(sech(a + b*x))*sinh(a + b*x))/b]
    @test_int [sech(a + b*x)^(1/2), x, 2, -((2*im*sqrt(cosh(a + b*x))*EllipticF((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/b)]
    @test_int [1/sech(a + b*x)^(1/2), x, 2, -((2*im*sqrt(cosh(a + b*x))*EllipticE((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/b)]
    @test_int [1/sech(a + b*x)^(3/2), x, 3, -((2*im*sqrt(cosh(a + b*x))*EllipticF((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/(3*b)) + (2*sinh(a + b*x))/(3*b*sqrt(sech(a + b*x)))]
    @test_int [1/sech(a + b*x)^(5/2), x, 3, -((6*im*sqrt(cosh(a + b*x))*EllipticE((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/(5*b)) + (2*sinh(a + b*x))/(5*b*sech(a + b*x)^(3/2))]


    @test_int [(b*sech(c + d*x))^(7/2), x, 4, (6*im*b^4*EllipticE((1/2)*im*(c + d*x), 2))/(5*d*sqrt(cosh(c + d*x))*sqrt(b*sech(c + d*x))) + (6*b^3*sqrt(b*sech(c + d*x))*sinh(c + d*x))/(5*d) + (2*b*(b*sech(c + d*x))^(5/2)*sinh(c + d*x))/(5*d)]
    @test_int [(b*sech(c + d*x))^(5/2), x, 3, -((2*im*b^2*sqrt(cosh(c + d*x))*EllipticF((1/2)*im*(c + d*x), 2)*sqrt(b*sech(c + d*x)))/(3*d)) + (2*b*(b*sech(c + d*x))^(3/2)*sinh(c + d*x))/(3*d)]
    @test_int [(b*sech(c + d*x))^(3/2), x, 3, (2*im*b^2*EllipticE((1/2)*im*(c + d*x), 2))/(d*sqrt(cosh(c + d*x))*sqrt(b*sech(c + d*x))) + (2*b*sqrt(b*sech(c + d*x))*sinh(c + d*x))/d]
    @test_int [(b*sech(c + d*x))^(1/2), x, 2, -((2*im*sqrt(cosh(c + d*x))*EllipticF((1/2)*im*(c + d*x), 2)*sqrt(b*sech(c + d*x)))/d)]
    @test_int [1/(b*sech(c + d*x))^(1/2), x, 2, -((2*im*EllipticE((1/2)*im*(c + d*x), 2))/(d*sqrt(cosh(c + d*x))*sqrt(b*sech(c + d*x))))]
    @test_int [1/(b*sech(c + d*x))^(3/2), x, 3, -((2*im*sqrt(cosh(c + d*x))*EllipticF((1/2)*im*(c + d*x), 2)*sqrt(b*sech(c + d*x)))/(3*b^2*d)) + (2*sinh(c + d*x))/(3*b*d*sqrt(b*sech(c + d*x)))]
    @test_int [1/(b*sech(c + d*x))^(5/2), x, 3, -((6*im*EllipticE((1/2)*im*(c + d*x), 2))/(5*b^2*d*sqrt(cosh(c + d*x))*sqrt(b*sech(c + d*x)))) + (2*sinh(c + d*x))/(5*b*d*(b*sech(c + d*x))^(3/2))]
    @test_int [1/(b*sech(c + d*x))^(7/2), x, 4, -((10*im*sqrt(cosh(c + d*x))*EllipticF((1/2)*im*(c + d*x), 2)*sqrt(b*sech(c + d*x)))/(21*b^4*d)) + (2*sinh(c + d*x))/(7*b*d*(b*sech(c + d*x))^(5/2)) + (10*sinh(c + d*x))/(21*b^3*d*sqrt(b*sech(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*sech(a+b*x))^n*with*n*symbolic=#


    @test_int [(b*sech(c + d*x))^n, x, 2, -((b*Hypergeometric2F1(1/2, (1 - n)/2, (3 - n)/2, cosh(c + d*x)^2)*(b*sech(c + d*x))^(-1 + n)*sinh(c + d*x))/(d*(1 - n)*sqrt(-sinh(c + d*x)^2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c*sech(a+b*x)^m)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*sech(a+b*x)^2)^n=#


    @test_int [(sech(a + b*x)^2)^(7/2), x, 5, (5*asin(tanh(a + b*x)))/(16*b) + (5*sqrt(sech(a + b*x)^2)*tanh(a + b*x))/(16*b) + (5*(sech(a + b*x)^2)^(3/2)*tanh(a + b*x))/(24*b) + ((sech(a + b*x)^2)^(5/2)*tanh(a + b*x))/(6*b)]
    @test_int [(sech(a + b*x)^2)^(5/2), x, 4, (3*asin(tanh(a + b*x)))/(8*b) + (3*sqrt(sech(a + b*x)^2)*tanh(a + b*x))/(8*b) + ((sech(a + b*x)^2)^(3/2)*tanh(a + b*x))/(4*b)]
    @test_int [(sech(a + b*x)^2)^(3/2), x, 3, asin(tanh(a + b*x))/(b*2) + (sqrt(sech(a + b*x)^2)*tanh(a + b*x))/(2*b)]
    @test_int [(sech(a + b*x)^2)^(1/2), x, 2, asin(tanh(a + b*x))/b]
    @test_int [1/(sech(a + b*x)^2)^(1/2), x, 2, tanh(a + b*x)/(b*sqrt(sech(a + b*x)^2))]
    @test_int [1/(sech(a + b*x)^2)^(3/2), x, 3, tanh(a + b*x)/(3*b*(sech(a + b*x)^2)^(3/2)) + (2*tanh(a + b*x))/(3*b*sqrt(sech(a + b*x)^2))]
    @test_int [1/(sech(a + b*x)^2)^(5/2), x, 4, tanh(a + b*x)/(5*b*(sech(a + b*x)^2)^(5/2)) + (4*tanh(a + b*x))/(15*b*(sech(a + b*x)^2)^(3/2)) + (8*tanh(a + b*x))/(15*b*sqrt(sech(a + b*x)^2))]
    @test_int [1/(sech(a + b*x)^2)^(7/2), x, 5, tanh(a + b*x)/(7*b*(sech(a + b*x)^2)^(7/2)) + (6*tanh(a + b*x))/(35*b*(sech(a + b*x)^2)^(5/2)) + (8*tanh(a + b*x))/(35*b*(sech(a + b*x)^2)^(3/2)) + (16*tanh(a + b*x))/(35*b*sqrt(sech(a + b*x)^2))]


    @test_int [(a*sech(x)^2)^(5/2), x, 5, (3/8)*a^(5/2)*atan((sqrt(a)*tanh(x))/sqrt(a*sech(x)^2)) + (3/8)*a^2*sqrt(a*sech(x)^2)*tanh(x) + (1/4)*a*(a*sech(x)^2)^(3/2)*tanh(x)]
    @test_int [(a*sech(x)^2)^(3/2), x, 4, (1/2)*a^(3/2)*atan((sqrt(a)*tanh(x))/sqrt(a*sech(x)^2)) + (1/2)*a*sqrt(a*sech(x)^2)*tanh(x)]
    @test_int [(a*sech(x)^2)^(1/2), x, 3, sqrt(a)*atan((sqrt(a)*tanh(x))/sqrt(a*sech(x)^2))]
    @test_int [1/(a*sech(x)^2)^(1/2), x, 2, tanh(x)/sqrt(a*sech(x)^2)]
    @test_int [1/(a*sech(x)^2)^(3/2), x, 3, tanh(x)/(3*(a*sech(x)^2)^(3/2)) + (2*tanh(x))/(3*a*sqrt(a*sech(x)^2))]
    @test_int [1/(a*sech(x)^2)^(5/2), x, 4, tanh(x)/(5*(a*sech(x)^2)^(5/2)) + (4*tanh(x))/(15*a*(a*sech(x)^2)^(3/2)) + (8*tanh(x))/(15*a^2*sqrt(a*sech(x)^2))]
    @test_int [1/(a*sech(x)^2)^(7/2), x, 5, tanh(x)/(7*(a*sech(x)^2)^(7/2)) + (6*tanh(x))/(35*a*(a*sech(x)^2)^(5/2)) + (8*tanh(x))/(35*a^2*(a*sech(x)^2)^(3/2)) + (16*tanh(x))/(35*a^3*sqrt(a*sech(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*sech(a+b*x)^3)^n=#


    @test_int [(a*sech(x)^3)^(5/2), x, 7, (154/195)*im*a^2*cosh(x)^(3/2)*EllipticE((im*x)/2, 2)*sqrt(a*sech(x)^3) + (154/195)*a^2*cosh(x)*sqrt(a*sech(x)^3)*sinh(x) + (154/585)*a^2*sqrt(a*sech(x)^3)*tanh(x) + (22/117)*a^2*sech(x)^2*sqrt(a*sech(x)^3)*tanh(x) + (2/13)*a^2*sech(x)^4*sqrt(a*sech(x)^3)*tanh(x)]
    @test_int [(a*sech(x)^3)^(3/2), x, 5, (-(10/21))*im*a*cosh(x)^(3/2)*EllipticF((im*x)/2, 2)*sqrt(a*sech(x)^3) + (10/21)*a*sqrt(a*sech(x)^3)*sinh(x) + (2/7)*a*sech(x)*sqrt(a*sech(x)^3)*tanh(x)]
    @test_int [(a*sech(x)^3)^(1/2), x, 4, 2*im*cosh(x)^(3/2)*EllipticE((im*x)/2, 2)*sqrt(a*sech(x)^3) + 2*cosh(x)*sqrt(a*sech(x)^3)*sinh(x)]
    @test_int [1/(a*sech(x)^3)^(1/2), x, 4, -((2*im*EllipticF((im*x)/2, 2))/(3*cosh(x)^(3/2)*sqrt(a*sech(x)^3))) + (2*tanh(x))/(3*sqrt(a*sech(x)^3))]
    @test_int [1/(a*sech(x)^3)^(3/2), x, 5, -((14*im*EllipticE((im*x)/2, 2))/(15*a*cosh(x)^(3/2)*sqrt(a*sech(x)^3))) + (14*sinh(x))/(45*a*sqrt(a*sech(x)^3)) + (2*cosh(x)^2*sinh(x))/(9*a*sqrt(a*sech(x)^3))]
    @test_int [1/(a*sech(x)^3)^(5/2), x, 7, -((26*im*EllipticF((im*x)/2, 2))/(77*a^2*cosh(x)^(3/2)*sqrt(a*sech(x)^3))) + (78*cosh(x)*sinh(x))/(385*a^2*sqrt(a*sech(x)^3)) + (26*cosh(x)^3*sinh(x))/(165*a^2*sqrt(a*sech(x)^3)) + (2*cosh(x)^5*sinh(x))/(15*a^2*sqrt(a*sech(x)^3)) + (26*tanh(x))/(77*a^2*sqrt(a*sech(x)^3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*sech(a+b*x)^4)^n=#


    @test_int [(a*sech(x)^4)^(7/2), x, 3, a^3*cosh(x)*sqrt(a*sech(x)^4)*sinh(x) - 2*a^3*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x) + 3*a^3*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x)^3 - (20/7)*a^3*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x)^5 + (5/3)*a^3*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x)^7 - (6/11)*a^3*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x)^9 + (1/13)*a^3*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x)^11]
    @test_int [(a*sech(x)^4)^(5/2), x, 3, a^2*cosh(x)*sqrt(a*sech(x)^4)*sinh(x) - (4/3)*a^2*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x) + (6/5)*a^2*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x)^3 - (4/7)*a^2*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x)^5 + (1/9)*a^2*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x)^7]
    @test_int [(a*sech(x)^4)^(3/2), x, 3, a*cosh(x)*sqrt(a*sech(x)^4)*sinh(x) - (2/3)*a*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x) + (1/5)*a*sqrt(a*sech(x)^4)*sinh(x)^2*tanh(x)^3]
    @test_int [(a*sech(x)^4)^(1/2), x, 3, cosh(x)*sqrt(a*sech(x)^4)*sinh(x)]
    @test_int [1/(a*sech(x)^4)^(1/2), x, 3, (x*sech(x)^2)/(2*sqrt(a*sech(x)^4)) + tanh(x)/(2*sqrt(a*sech(x)^4))]
    @test_int [1/(a*sech(x)^4)^(3/2), x, 5, (5*x*sech(x)^2)/(16*a*sqrt(a*sech(x)^4)) + (5*cosh(x)*sinh(x))/(24*a*sqrt(a*sech(x)^4)) + (cosh(x)^3*sinh(x))/(6*a*sqrt(a*sech(x)^4)) + (5*tanh(x))/(16*a*sqrt(a*sech(x)^4))]
    @test_int [1/(a*sech(x)^4)^(5/2), x, 7, (63*x*sech(x)^2)/(256*a^2*sqrt(a*sech(x)^4)) + (21*cosh(x)*sinh(x))/(128*a^2*sqrt(a*sech(x)^4)) + (21*cosh(x)^3*sinh(x))/(160*a^2*sqrt(a*sech(x)^4)) + (9*cosh(x)^5*sinh(x))/(80*a^2*sqrt(a*sech(x)^4)) + (cosh(x)^7*sinh(x))/(10*a^2*sqrt(a*sech(x)^4)) + (63*tanh(x))/(256*a^2*sqrt(a*sech(x)^4))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c*sech(a+b*x)^m)^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Hyper(c+d*x)^m*(a+b*sech(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*sech(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2=0=#


    @test_int [sinh(x)^4/(a + a*sech(x)), x, 7, -(x/(8*a)) - (cosh(x)*sinh(x))/(8*a) + (cosh(x)^3*sinh(x))/(4*a) - sinh(x)^3/(3*a)]
    @test_int [sinh(x)^3/(a + a*sech(x)), x, 6, cosh(x)^3/(3*a) - sinh(x)^2/(2*a)]
    @test_int [sinh(x)^2/(a + a*sech(x)), x, 5, x/(2*a) - sinh(x)/a + (cosh(x)*sinh(x))/(2*a)]
    @test_int [sinh(x)^1/(a + a*sech(x)), x, 5, cosh(x)/a - log(1 + cosh(x))/a]
    @test_int [csch(x)^1/(a + a*sech(x)), x, 6, -(atanh(cosh(x))/(2*a)) - (coth(x)*csch(x))/(2*a) + csch(x)^2/(2*a)]
    @test_int [csch(x)^2/(a + a*sech(x)), x, 6, -(coth(x)^3/(3*a)) + csch(x)^3/(3*a)]
    @test_int [csch(x)^3/(a + a*sech(x)), x, 7, atanh(cosh(x))/(8*a) - (coth(x)*csch(x))/(8*a) - (coth(x)*csch(x)^3)/(4*a) + csch(x)^4/(4*a)]
    @test_int [csch(x)^4/(a + a*sech(x)), x, 7, coth(x)^3/(3*a) - coth(x)^5/(5*a) + csch(x)^5/(5*a)]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2!=0=#


    @test_int [sinh(x)^4/(a + b*sech(x)), x, 6, ((3*a^4 - 12*a^2*b^2 + 8*b^4)*x)/(8*a^5) - (2*(a - b)^(3/2)*b*(a + b)^(3/2)*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/a^5 + ((8*b*(a^2 - b^2) - a*(3*a^2 - 4*b^2)*cosh(x))*sinh(x))/(8*a^4) - ((4*b - 3*a*cosh(x))*sinh(x)^3)/(12*a^2)]
    @test_int [sinh(x)^3/(a + b*sech(x)), x, 5, -(((a^2 - b^2)*cosh(x))/a^3) - (b*cosh(x)^2)/(2*a^2) + cosh(x)^3/(3*a) + (b*(a^2 - b^2)*log(b + a*cosh(x)))/a^4]
    @test_int [sinh(x)^2/(a + b*sech(x)), x, 5, -(((a^2 - 2*b^2)*x)/(2*a^3)) + (2*sqrt(a - b)*b*sqrt(a + b)*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/a^3 - ((2*b - a*cosh(x))*sinh(x))/(2*a^2)]
    @test_int [sinh(x)^1/(a + b*sech(x)), x, 5, cosh(x)/a - (b*log(b + a*cosh(x)))/a^2]
    @test_int [csch(x)^1/(a + b*sech(x)), x, 4, log(1 - cosh(x))/(2*(a + b)) - log(1 + cosh(x))/(2*(a - b)) + (b*log(b + a*cosh(x)))/(a^2 - b^2)]
    @test_int [csch(x)^2/(a + b*sech(x)), x, 5, (2*a*b*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(3/2)*(a + b)^(3/2)) + ((b - a*cosh(x))*csch(x))/(a^2 - b^2)]
    @test_int [csch(x)^3/(a + b*sech(x)), x, 6, ((b - a*cosh(x))*csch(x)^2)/(2*(a^2 - b^2)) - (a*log(1 - cosh(x)))/(4*(a + b)^2) + (a*log(1 + cosh(x)))/(4*(a - b)^2) - (a^2*b*log(b + a*cosh(x)))/(a^2 - b^2)^2]
    @test_int [csch(x)^4/(a + b*sech(x)), x, 6, -((2*a^3*b*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2))) - ((3*a^2*b - a*(2*a^2 + b^2)*cosh(x))*csch(x))/(3*(a^2 - b^2)^2) + ((b - a*cosh(x))*csch(x)^3)/(3*(a^2 - b^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*sech(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2=0=#


    @test_int [cosh(x)^4/(a + a*sech(x)), x, 7, (15*x)/(8*a) - (4*sinh(x))/a + (15*cosh(x)*sinh(x))/(8*a) + (5*cosh(x)^3*sinh(x))/(4*a) - (cosh(x)^3*sinh(x))/(a + a*sech(x)) - (4*sinh(x)^3)/(3*a)]
    @test_int [cosh(x)^3/(a + a*sech(x)), x, 6, -((3*x)/(2*a)) + (4*sinh(x))/a - (3*cosh(x)*sinh(x))/(2*a) - (cosh(x)^2*sinh(x))/(a + a*sech(x)) + (4*sinh(x)^3)/(3*a)]
    @test_int [cosh(x)^2/(a + a*sech(x)), x, 5, (3*x)/(2*a) - (2*sinh(x))/a + (3*cosh(x)*sinh(x))/(2*a) - (cosh(x)*sinh(x))/(a + a*sech(x))]
    @test_int [cosh(x)^1/(a + a*sech(x)), x, 4, -(x/a) + (2*sinh(x))/a - sinh(x)/(a + a*sech(x))]
    @test_int [sech(x)^1/(a + a*sech(x)), x, 1, tanh(x)/(a + a*sech(x))]
    @test_int [sech(x)^2/(a + a*sech(x)), x, 3, atan(sinh(x))/a - tanh(x)/(a + a*sech(x))]
    @test_int [sech(x)^3/(a + a*sech(x)), x, 4, -(atan(sinh(x))/a) + tanh(x)/a + tanh(x)/(a + a*sech(x))]
    @test_int [sech(x)^4/(a + a*sech(x)), x, 6, (3*atan(sinh(x)))/(2*a) - (2*tanh(x))/a + (3*sech(x)*tanh(x))/(2*a) - (sech(x)^2*tanh(x))/(a + a*sech(x))]


    @test_int [1/(a + a*sech(c + d*x)), x, 2, x/a - tanh(c + d*x)/(d*(a + a*sech(c + d*x)))]


    @test_int [1/(a - a*sech(c + d*x)), x, 2, x/a - tanh(c + d*x)/(d*(a - a*sech(c + d*x)))]


    @test_int [(a + a*sech(c + d*x))^(5/2), x, 5, (2*a^(5/2)*atanh((sqrt(a)*tanh(c + d*x))/sqrt(a + a*sech(c + d*x))))/d + (14*a^3*tanh(c + d*x))/(3*d*sqrt(a + a*sech(c + d*x))) + (2*a^2*sqrt(a + a*sech(c + d*x))*tanh(c + d*x))/(3*d)]
    @test_int [(a + a*sech(c + d*x))^(3/2), x, 4, (2*a^(3/2)*atanh((sqrt(a)*tanh(c + d*x))/sqrt(a + a*sech(c + d*x))))/d + (2*a^2*tanh(c + d*x))/(d*sqrt(a + a*sech(c + d*x)))]
    @test_int [(a + a*sech(c + d*x))^(1/2), x, 2, (2*sqrt(a)*atanh((sqrt(a)*tanh(c + d*x))/sqrt(a + a*sech(c + d*x))))/d]
    @test_int [1/(a + a*sech(c + d*x))^(1/2), x, 5, (2*atanh((sqrt(a)*tanh(c + d*x))/sqrt(a + a*sech(c + d*x))))/(sqrt(a)*d) - (sqrt(2)*atanh((sqrt(a)*tanh(c + d*x))/(sqrt(2)*sqrt(a + a*sech(c + d*x)))))/(sqrt(a)*d)]
    @test_int [1/(a + a*sech(c + d*x))^(3/2), x, 6, (2*atanh((sqrt(a)*tanh(c + d*x))/sqrt(a + a*sech(c + d*x))))/(a^(3/2)*d) - (5*atanh((sqrt(a)*tanh(c + d*x))/(sqrt(2)*sqrt(a + a*sech(c + d*x)))))/(2*sqrt(2)*a^(3/2)*d) - tanh(c + d*x)/(2*d*(a + a*sech(c + d*x))^(3/2))]

    @test_int [sqrt(a - a*sech(c + d*x)), x, 2, (2*sqrt(a)*atanh((sqrt(a)*tanh(c + d*x))/sqrt(a - a*sech(c + d*x))))/d]
    @test_int [1/sqrt(a - a*sech(c + d*x)), x, 5, (2*atanh((sqrt(a)*tanh(c + d*x))/sqrt(a - a*sech(c + d*x))))/(sqrt(a)*d) - (sqrt(2)*atanh((sqrt(a)*tanh(c + d*x))/(sqrt(2)*sqrt(a - a*sech(c + d*x)))))/(sqrt(a)*d)]


    @test_int [sqrt(3 + 3*sech(x)), x, 2, 2*sqrt(3)*atanh(tanh(x)/sqrt(1 + sech(x)))]
    @test_int [sqrt(3 - 3*sech(x)), x, 2, 2*sqrt(3)*atanh(tanh(x)/sqrt(1 - sech(x)))]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2!=0=#


    @test_int [(a + b*sech(c + d*x))^4, x, 6, a^4*x + (2*a*b*(2*a^2 + b^2)*atan(sinh(c + d*x)))/d + (b^2*(17*a^2 + 2*b^2)*tanh(c + d*x))/(3*d) + (4*a*b^3*sech(c + d*x)*tanh(c + d*x))/(3*d) + (b^2*(a + b*sech(c + d*x))^2*tanh(c + d*x))/(3*d)]
    @test_int [(a + b*sech(c + d*x))^3, x, 5, a^3*x + (b*(6*a^2 + b^2)*atan(sinh(c + d*x)))/(2*d) + (5*a*b^2*tanh(c + d*x))/(2*d) + (b^2*(a + b*sech(c + d*x))*tanh(c + d*x))/(2*d)]
    @test_int [(a + b*sech(c + d*x))^2, x, 4, a^2*x + (2*a*b*atan(sinh(c + d*x)))/d + (b^2*tanh(c + d*x))/d]
    @test_int [(a + b*sech(c + d*x))^1, x, 2, a*x + (b*atan(sinh(c + d*x)))/d]
    @test_int [1/(a + b*sech(c + d*x))^1, x, 3, x/a - (2*b*atan((sqrt(a - b)*tanh((1/2)*(c + d*x)))/sqrt(a + b)))/(a*sqrt(a - b)*sqrt(a + b)*d)]
    @test_int [1/(a + b*sech(c + d*x))^2, x, 5, x/a^2 - (2*b*(2*a^2 - b^2)*atan((sqrt(a - b)*tanh((1/2)*(c + d*x)))/sqrt(a + b)))/(a^2*(a - b)^(3/2)*(a + b)^(3/2)*d) + (b^2*tanh(c + d*x))/(a*(a^2 - b^2)*d*(a + b*sech(c + d*x)))]
    @test_int [1/(a + b*sech(c + d*x))^3, x, 6, x/a^3 - (b*(6*a^4 - 5*a^2*b^2 + 2*b^4)*atan((sqrt(a - b)*tanh((1/2)*(c + d*x)))/sqrt(a + b)))/(a^3*(a - b)^(5/2)*(a + b)^(5/2)*d) + (b^2*tanh(c + d*x))/(2*a*(a^2 - b^2)*d*(a + b*sech(c + d*x))^2) + (b^2*(5*a^2 - 2*b^2)*tanh(c + d*x))/(2*a^2*(a^2 - b^2)^2*d*(a + b*sech(c + d*x)))]


    @test_int [1/sqrt(a + b*sech(c + d*x)), x, 1, (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*d)]


    @test_int [cosh(x)^4/(a + b*sech(x)), x, 8, ((3*a^4 + 4*a^2*b^2 + 8*b^4)*x)/(8*a^5) - (2*b^5*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a^5*sqrt(a - b)*sqrt(a + b)) - (b*(2*a^2 + 3*b^2)*sinh(x))/(3*a^4) + ((3*a^2 + 4*b^2)*cosh(x)*sinh(x))/(8*a^3) - (b*cosh(x)^2*sinh(x))/(3*a^2) + (cosh(x)^3*sinh(x))/(4*a)]
    @test_int [cosh(x)^3/(a + b*sech(x)), x, 7, -((b*(a^2 + 2*b^2)*x)/(2*a^4)) + (2*b^4*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a^4*sqrt(a - b)*sqrt(a + b)) + ((2*a^2 + 3*b^2)*sinh(x))/(3*a^3) - (b*cosh(x)*sinh(x))/(2*a^2) + (cosh(x)^2*sinh(x))/(3*a)]
    @test_int [cosh(x)^2/(a + b*sech(x)), x, 6, ((a^2 + 2*b^2)*x)/(2*a^3) - (2*b^3*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a^3*sqrt(a - b)*sqrt(a + b)) - (b*sinh(x))/a^2 + (cosh(x)*sinh(x))/(2*a)]
    @test_int [cosh(x)^1/(a + b*sech(x)), x, 5, -((b*x)/a^2) + (2*b^2*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a^2*sqrt(a - b)*sqrt(a + b)) + sinh(x)/a]
    @test_int [sech(x)^1/(a + b*sech(x)), x, 3, (2*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b))]
    @test_int [sech(x)^2/(a + b*sech(x)), x, 5, atan(sinh(x))/b - (2*a*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b*sqrt(a + b))]
    @test_int [sech(x)^3/(a + b*sech(x)), x, 6, -((a*atan(sinh(x)))/b^2) + (2*a^2*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b^2*sqrt(a + b)) + tanh(x)/b]
    @test_int [sech(x)^4/(a + b*sech(x)), x, 7, ((2*a^2 + b^2)*atan(sinh(x)))/(2*b^3) - (2*a^3*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*b^3*sqrt(a + b)) - (a*tanh(x))/b^2 + (sech(x)*tanh(x))/(2*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*sech(c+d*x))^n*when*a^2-b^2=0=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [tanh(x)^6/(a + a*sech(x)), x, 5, x/a - (3*atan(sinh(x)))/(8*a) - ((8 - 3*sech(x))*tanh(x))/(8*a) - ((4 - 3*sech(x))*tanh(x)^3)/(12*a)]
    @test_int [tanh(x)^5/(a + a*sech(x)), x, 3, log(cosh(x))/a + sech(x)/a + sech(x)^2/(2*a) - sech(x)^3/(3*a)]
    @test_int [tanh(x)^4/(a + a*sech(x)), x, 4, x/a - atan(sinh(x))/(2*a) - ((2 - sech(x))*tanh(x))/(2*a)]
    @test_int [tanh(x)^3/(a + a*sech(x)), x, 3, log(cosh(x))/a + sech(x)/a]
    @test_int [tanh(x)^2/(a + a*sech(x)), x, 3, x/a - atan(sinh(x))/a]
    @test_int [tanh(x)^1/(a + a*sech(x)), x, 2, log(1 + cosh(x))/a]
    @test_int [coth(x)^1/(a + a*sech(x)), x, 3, 1/(2*a*(1 + cosh(x))) + log(1 - cosh(x))/(4*a) + (3*log(1 + cosh(x)))/(4*a)]
    @test_int [coth(x)^2/(a + a*sech(x)), x, 4, x/a - (coth(x)*(3 - 2*sech(x)))/(3*a) - (coth(x)^3*(1 - sech(x)))/(3*a)]
    @test_int [coth(x)^3/(a + a*sech(x)), x, 3, 1/(8*a*(1 - cosh(x))) - 1/(8*a*(1 + cosh(x))^2) + 3/(4*a*(1 + cosh(x))) + (5*log(1 - cosh(x)))/(16*a) + (11*log(1 + cosh(x)))/(16*a)]
    @test_int [coth(x)^4/(a + a*sech(x)), x, 5, x/a - (coth(x)*(15 - 8*sech(x)))/(15*a) - (coth(x)^3*(5 - 4*sech(x)))/(15*a) - (coth(x)^5*(1 - sech(x)))/(5*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*sech(c+d*x))^n=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [tanh(x)^7/(a + b*sech(x)), x, 3, log(cosh(x))/a - ((a^2 - b^2)^3*log(a + b*sech(x)))/(a*b^6) + ((a^4 - 3*a^2*b^2 + 3*b^4)*sech(x))/b^5 - (a*(a^2 - 3*b^2)*sech(x)^2)/(2*b^4) + ((a^2 - 3*b^2)*sech(x)^3)/(3*b^3) - (a*sech(x)^4)/(4*b^2) + sech(x)^5/(5*b)]
    @test_int [tanh(x)^6/(a + b*sech(x)), x, 15, x/a - (3*atan(sinh(x)))/(8*b) - ((a^2 - 3*b^2)*atan(sinh(x)))/(2*b^3) - ((a^4 - 3*a^2*b^2 + 3*b^4)*atan(sinh(x)))/b^5 + (2*(a - b)^(5/2)*(a + b)^(5/2)*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a*b^5) + (a*tanh(x))/b^2 + (a*(a^2 - 3*b^2)*tanh(x))/b^4 - (3*sech(x)*tanh(x))/(8*b) - ((a^2 - 3*b^2)*sech(x)*tanh(x))/(2*b^3) - (sech(x)^3*tanh(x))/(4*b) - (a*tanh(x)^3)/(3*b^2)]
    @test_int [tanh(x)^5/(a + b*sech(x)), x, 3, log(cosh(x))/a + ((a^2 - b^2)^2*log(a + b*sech(x)))/(a*b^4) - ((a^2 - 2*b^2)*sech(x))/b^3 + (a*sech(x)^2)/(2*b^2) - sech(x)^3/(3*b)]
    @test_int [tanh(x)^4/(a + b*sech(x)), x, 6, x/a + ((2*a^2 - 3*b^2)*atan(sinh(x)))/(2*b^3) - (2*(a - b)^(3/2)*(a + b)^(3/2)*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a*b^3) - (a*tanh(x))/b^2 + (sech(x)*tanh(x))/(2*b)]
    @test_int [tanh(x)^3/(a + b*sech(x)), x, 3, log(cosh(x))/a + ((1 - a^2/b^2)*log(a + b*sech(x)))/a + sech(x)/b]
    @test_int [tanh(x)^2/(a + b*sech(x)), x, 7, x/a - atan(sinh(x))/b + (2*sqrt(a - b)*sqrt(a + b)*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a*b)]
    @test_int [tanh(x)^1/(a + b*sech(x)), x, 4, log(cosh(x))/a + log(a + b*sech(x))/a]
    @test_int [coth(x)^1/(a + b*sech(x)), x, 3, log(cosh(x))/a + log(1 - sech(x))/(2*(a + b)) + log(1 + sech(x))/(2*(a - b)) - (b^2*log(a + b*sech(x)))/(a*(a^2 - b^2))]
    @test_int [coth(x)^2/(a + b*sech(x)), x, 9, (a*x)/(a^2 - b^2) - (b^2*x)/(a*(a^2 - b^2)) + (2*b^3*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a*(a - b)^(3/2)*(a + b)^(3/2)) - (a*coth(x))/(a^2 - b^2) + (b*csch(x))/(a^2 - b^2)]
    @test_int [coth(x)^3/(a + b*sech(x)), x, 3, log(cosh(x))/a + ((2*a + 3*b)*log(1 - sech(x)))/(4*(a + b)^2) + ((2*a - 3*b)*log(1 + sech(x)))/(4*(a - b)^2) + (b^4*log(a + b*sech(x)))/(a*(a^2 - b^2)^2) - 1/(4*(a + b)*(1 - sech(x))) - 1/(4*(a - b)*(1 + sech(x)))]
    @test_int [coth(x)^4/(a + b*sech(x)), x, 15, -((a*b^2*x)/(a^2 - b^2)^2) + (b^4*x)/(a*(a^2 - b^2)^2) + (a*x)/(a^2 - b^2) - (2*b^5*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a*(a - b)^(5/2)*(a + b)^(5/2)) + (a*b^2*coth(x))/(a^2 - b^2)^2 - (a*coth(x))/(a^2 - b^2) - (a*coth(x)^3)/(3*(a^2 - b^2)) - (b^3*csch(x))/(a^2 - b^2)^2 + (b*csch(x))/(a^2 - b^2) + (b*csch(x)^3)/(3*(a^2 - b^2))]
    @test_int [coth(x)^5/(a + b*sech(x)), x, 3, log(cosh(x))/a + ((8*a^2 + 21*a*b + 15*b^2)*log(1 - sech(x)))/(16*(a + b)^3) + ((8*a^2 - 21*a*b + 15*b^2)*log(1 + sech(x)))/(16*(a - b)^3) - (b^6*log(a + b*sech(x)))/(a*(a^2 - b^2)^3) - 1/(16*(a + b)*(1 - sech(x))^2) - (5*a + 7*b)/(16*(a + b)^2*(1 - sech(x))) - 1/(16*(a - b)*(1 + sech(x))^2) - (5*a - 7*b)/(16*(a - b)^2*(1 + sech(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*sech(c+d*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [tanh(c + d*x)^5*sqrt(a + b*sech(c + d*x)), x, 5, (2*sqrt(a)*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/d - (2*sqrt(a + b*sech(c + d*x)))/d + (2*a*(a^2 - 2*b^2)*(a + b*sech(c + d*x))^(3/2))/(3*b^4*d) - (2*(3*a^2 - 2*b^2)*(a + b*sech(c + d*x))^(5/2))/(5*b^4*d) + (6*a*(a + b*sech(c + d*x))^(7/2))/(7*b^4*d) - (2*(a + b*sech(c + d*x))^(9/2))/(9*b^4*d)]
    @test_int [tanh(c + d*x)^3*sqrt(a + b*sech(c + d*x)), x, 5, (2*sqrt(a)*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/d - (2*sqrt(a + b*sech(c + d*x)))/d - (2*a*(a + b*sech(c + d*x))^(3/2))/(3*b^2*d) + (2*(a + b*sech(c + d*x))^(5/2))/(5*b^2*d)]
    @test_int [tanh(c + d*x)^1*sqrt(a + b*sech(c + d*x)), x, 4, (2*sqrt(a)*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/d - (2*sqrt(a + b*sech(c + d*x)))/d]
    @test_int [coth(c + d*x)^1*sqrt(a + b*sech(c + d*x)), x, 7, (2*sqrt(a)*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/d - (sqrt(a - b)*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a - b)))/d - (sqrt(a + b)*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a + b)))/d]
    @test_int [coth(c + d*x)^3*sqrt(a + b*sech(c + d*x)), x, 13, (2*sqrt(a)*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/d - (a*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a - b)))/(sqrt(a - b)*d) + (3*b*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a - b)))/(4*sqrt(a - b)*d) - (a*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a + b)))/(sqrt(a + b)*d) - (3*b*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a + b)))/(4*sqrt(a + b)*d) - (coth(c + d*x)^2*sqrt(a + b*sech(c + d*x)))/(2*d)]

    @test_int [tanh(c + d*x)^2*sqrt(a + b*sech(c + d*x)), x, 7, -((2*a*(a - b)*sqrt(a + b)*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(3*b^2*d)) - (2*sqrt(a + b)*(a + 2*b)*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(3*b*d) + (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/d - (2*sqrt(a + b*sech(c + d*x))*tanh(c + d*x))/(3*d)]
    @test_int [tanh(c + d*x)^0*sqrt(a + b*sech(c + d*x)), x, 1, (2*coth(c + d*x)*EllipticPi(a/(a + b), asin(sqrt(a + b)/sqrt(a + b*sech(c + d*x))), (a - b)/(a + b))*sqrt(-((b*(1 - sech(c + d*x)))/(a + b*sech(c + d*x))))*sqrt((b*(1 + sech(c + d*x)))/(a + b*sech(c + d*x)))*(a + b*sech(c + d*x)))/(sqrt(a + b)*d)]
    @test_int [coth(c + d*x)^2*sqrt(a + b*sech(c + d*x)), x, 5, (sqrt(a + b)*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/d - (coth(c + d*x)*sqrt(a + b*sech(c + d*x)))/d + (2*coth(c + d*x)*EllipticPi(a/(a + b), asin(sqrt(a + b)/sqrt(a + b*sech(c + d*x))), (a - b)/(a + b))*sqrt(-((b*(1 - sech(c + d*x)))/(a + b*sech(c + d*x))))*sqrt((b*(1 + sech(c + d*x)))/(a + b*sech(c + d*x)))*(a + b*sech(c + d*x)))/(sqrt(a + b)*d)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [tanh(c + d*x)^5/sqrt(a + b*sech(c + d*x)), x, 5, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(sqrt(a)*d) + (2*a*(a^2 - 2*b^2)*sqrt(a + b*sech(c + d*x)))/(b^4*d) - (2*(3*a^2 - 2*b^2)*(a + b*sech(c + d*x))^(3/2))/(3*b^4*d) + (6*a*(a + b*sech(c + d*x))^(5/2))/(5*b^4*d) - (2*(a + b*sech(c + d*x))^(7/2))/(7*b^4*d)]
    @test_int [tanh(c + d*x)^3/sqrt(a + b*sech(c + d*x)), x, 5, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(sqrt(a)*d) - (2*a*sqrt(a + b*sech(c + d*x)))/(b^2*d) + (2*(a + b*sech(c + d*x))^(3/2))/(3*b^2*d)]
    @test_int [tanh(c + d*x)^1/sqrt(a + b*sech(c + d*x)), x, 3, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(sqrt(a)*d)]
    @test_int [coth(c + d*x)^1/sqrt(a + b*sech(c + d*x)), x, 7, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(sqrt(a)*d) - atanh(sqrt(a + b*sech(c + d*x))/sqrt(a - b))/(sqrt(a - b)*d) - atanh(sqrt(a + b*sech(c + d*x))/sqrt(a + b))/(sqrt(a + b)*d)]
    @test_int [coth(c + d*x)^3/sqrt(a + b*sech(c + d*x)), x, 11, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(sqrt(a)*d) - atanh(sqrt(a + b*sech(c + d*x))/sqrt(a - b))/(sqrt(a - b)*d) + (b*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a - b)))/(4*(a - b)^(3/2)*d) - (b*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a + b)))/(4*(a + b)^(3/2)*d) - atanh(sqrt(a + b*sech(c + d*x))/sqrt(a + b))/(sqrt(a + b)*d) - sqrt(a + b*sech(c + d*x))/(4*(a + b)*d*(1 - sech(c + d*x))) - sqrt(a + b*sech(c + d*x))/(4*(a - b)*d*(1 + sech(c + d*x)))]

    @test_int [tanh(c + d*x)^4/sqrt(a + b*sech(c + d*x)), x, 11, -((4*(a - b)*sqrt(a + b)*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(b^2*d)) + (2*(a - b)*sqrt(a + b)*(8*a^2 + 9*b^2)*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(15*b^4*d) - (4*sqrt(a + b)*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(b*d) + (2*sqrt(a + b)*(8*a^2 - 2*a*b + 9*b^2)*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(15*b^3*d) + (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*d) - (8*a*sqrt(a + b*sech(c + d*x))*tanh(c + d*x))/(15*b^2*d) + (2*sech(c + d*x)*sqrt(a + b*sech(c + d*x))*tanh(c + d*x))/(5*b*d)]
    @test_int [tanh(c + d*x)^2/sqrt(a + b*sech(c + d*x)), x, 6, -((2*(a - b)*sqrt(a + b)*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(b^2*d)) - (2*sqrt(a + b)*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(b*d) + (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*d)]
    @test_int [tanh(c + d*x)^0/sqrt(a + b*sech(c + d*x)), x, 1, (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*d)]
    @test_int [coth(c + d*x)^2/sqrt(a + b*sech(c + d*x)), x, 9, (coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(sqrt(a + b)*d) - (coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(sqrt(a + b)*d) + (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*d) - coth(c + d*x)/(d*sqrt(a + b*sech(c + d*x))) - (b^2*tanh(c + d*x))/((a^2 - b^2)*d*sqrt(a + b*sech(c + d*x)))]


    @test_int [tanh(c + d*x)^5/(a + b*sech(c + d*x))^(3/2), x, 5, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(a^(3/2)*d) - (2*(a^2 - b^2)^2)/(a*b^4*d*sqrt(a + b*sech(c + d*x))) - (2*(3*a^2 - 2*b^2)*sqrt(a + b*sech(c + d*x)))/(b^4*d) + (2*a*(a + b*sech(c + d*x))^(3/2))/(b^4*d) - (2*(a + b*sech(c + d*x))^(5/2))/(5*b^4*d)]
    @test_int [tanh(c + d*x)^3/(a + b*sech(c + d*x))^(3/2), x, 5, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(a^(3/2)*d) + (2*(a^2 - b^2))/(a*b^2*d*sqrt(a + b*sech(c + d*x))) + (2*sqrt(a + b*sech(c + d*x)))/(b^2*d)]
    @test_int [tanh(c + d*x)^1/(a + b*sech(c + d*x))^(3/2), x, 4, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(a^(3/2)*d) - 2/(a*d*sqrt(a + b*sech(c + d*x)))]
    @test_int [coth(c + d*x)^1/(a + b*sech(c + d*x))^(3/2), x, 7, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(a^(3/2)*d) - atanh(sqrt(a + b*sech(c + d*x))/sqrt(a - b))/((a - b)^(3/2)*d) - atanh(sqrt(a + b*sech(c + d*x))/sqrt(a + b))/((a + b)^(3/2)*d) + (2*b^2)/(a*(a^2 - b^2)*d*sqrt(a + b*sech(c + d*x)))]
    @test_int [coth(c + d*x)^3/(a + b*sech(c + d*x))^(3/2), x, 11, (2*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a)))/(a^(3/2)*d) - ((2*a - 3*b)*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a - b)))/(2*(a - b)^(5/2)*d) + (b*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a - b)))/(4*(a - b)^(5/2)*d) - (b*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a + b)))/(4*(a + b)^(5/2)*d) - ((2*a + 3*b)*atanh(sqrt(a + b*sech(c + d*x))/sqrt(a + b)))/(2*(a + b)^(5/2)*d) - (2*b^4)/(a*(a^2 - b^2)^2*d*sqrt(a + b*sech(c + d*x))) - sqrt(a + b*sech(c + d*x))/(4*(a + b)^2*d*(1 - sech(c + d*x))) - sqrt(a + b*sech(c + d*x))/(4*(a - b)^2*d*(1 + sech(c + d*x)))]

    @test_int [tanh(c + d*x)^4/(a + b*sech(c + d*x))^(3/2), x, 17, -((2*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*sqrt(a + b)*d)) + (4*a*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(b^2*sqrt(a + b)*d) - (2*a*(8*a^2 - 5*b^2)*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(3*b^4*sqrt(a + b)*d) + (2*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*sqrt(a + b)*d) + (4*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(b*sqrt(a + b)*d) - (2*(2*a + b)*(4*a + b)*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(3*b^3*sqrt(a + b)*d) + (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a^2*d) - (4*a*tanh(c + d*x))/((a^2 - b^2)*d*sqrt(a + b*sech(c + d*x))) + (2*b^2*tanh(c + d*x))/(a*(a^2 - b^2)*d*sqrt(a + b*sech(c + d*x))) - (2*a^2*sech(c + d*x)*tanh(c + d*x))/(b*(a^2 - b^2)*d*sqrt(a + b*sech(c + d*x))) + (2*(4*a^2 - b^2)*sqrt(a + b*sech(c + d*x))*tanh(c + d*x))/(3*b^2*(a^2 - b^2)*d)]
    @test_int [tanh(c + d*x)^2/(a + b*sech(c + d*x))^(3/2), x, 7, (2*(a - b)*sqrt(a + b)*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*b^2*d) + (2*sqrt(a + b)*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*b*d) + (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a^2*d) - (2*tanh(c + d*x))/(a*d*sqrt(a + b*sech(c + d*x)))]
    @test_int [tanh(c + d*x)^0/(a + b*sech(c + d*x))^(3/2), x, 6, -((2*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*sqrt(a + b)*d)) + (2*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*sqrt(a + b)*d) + (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a^2*d) + (2*b^2*tanh(c + d*x))/(a*(a^2 - b^2)*d*sqrt(a + b*sech(c + d*x)))]
    @test_int [coth(c + d*x)^2/(a + b*sech(c + d*x))^(3/2), x, 14, (4*a*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/((a - b)*(a + b)^(3/2)*d) - (2*coth(c + d*x)*EllipticE(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*sqrt(a + b)*d) - ((3*a - b)*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/((a - b)*(a + b)^(3/2)*d) + (2*coth(c + d*x)*EllipticF(asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a*sqrt(a + b)*d) + (2*sqrt(a + b)*coth(c + d*x)*EllipticPi((a + b)/a, asin(sqrt(a + b*sech(c + d*x))/sqrt(a + b)), (a + b)/(a - b))*sqrt((b*(1 - sech(c + d*x)))/(a + b))*sqrt(-((b*(1 + sech(c + d*x)))/(a - b))))/(a^2*d) - coth(c + d*x)/(d*(a + b*sech(c + d*x))^(3/2)) - (b^2*tanh(c + d*x))/((a^2 - b^2)*d*(a + b*sech(c + d*x))^(3/2)) - (4*a*b^2*tanh(c + d*x))/((a^2 - b^2)^2*d*sqrt(a + b*sech(c + d*x))) + (2*b^2*tanh(c + d*x))/(a*(a^2 - b^2)*d*sqrt(a + b*sech(c + d*x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*sech(c+d*x)^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*(sech(a*c+b*c*x)^2)^(m/2)=#


    @test_int [ℯ^(c*(a + b*x))*(sech(a*c + b*c*x)^2)^(7/2), x, 6, (32*cosh(a*c + b*c*x)*sqrt(sech(a*c + b*c*x)^2))/(3*b*c*(1 + ℯ^(2*c*(a + b*x)))^6) - (192*cosh(a*c + b*c*x)*sqrt(sech(a*c + b*c*x)^2))/(5*b*c*(1 + ℯ^(2*c*(a + b*x)))^5) + (48*cosh(a*c + b*c*x)*sqrt(sech(a*c + b*c*x)^2))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^4) - (64*cosh(a*c + b*c*x)*sqrt(sech(a*c + b*c*x)^2))/(3*b*c*(1 + ℯ^(2*c*(a + b*x)))^3)]
    @test_int [ℯ^(c*(a + b*x))*(sech(a*c + b*c*x)^2)^(5/2), x, 6, (-4*cosh(a*c + b*c*x)*sqrt(sech(a*c + b*c*x)^2))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^4) + (32*cosh(a*c + b*c*x)*sqrt(sech(a*c + b*c*x)^2))/(3*b*c*(1 + ℯ^(2*c*(a + b*x)))^3) - (8*cosh(a*c + b*c*x)*sqrt(sech(a*c + b*c*x)^2))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^2)]
    @test_int [ℯ^(c*(a + b*x))*(sech(a*c + b*c*x)^2)^(3/2), x, 4, (2*ℯ^(4*c*(a + b*x))*cosh(a*c + b*c*x)*sqrt(sech(a*c + b*c*x)^2))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^2)]
    @test_int [ℯ^(c*(a + b*x))*sqrt(sech(a*c + b*c*x)^2), x, 4, (cosh(a*c + b*c*x)*log(1 + ℯ^(2*c*(a + b*x)))*sqrt(sech(a*c + b*c*x)^2))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))/sqrt(sech(a*c + b*c*x)^2), x, 5, (ℯ^(2*c*(a + b*x))*sech(a*c + b*c*x))/(4*b*c*sqrt(sech(a*c + b*c*x)^2)) + (x*sech(a*c + b*c*x))/(2*sqrt(sech(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(sech(a*c + b*c*x)^2)^(3/2), x, 6, -sech(a*c + b*c*x)/(16*b*c*ℯ^(2*c*(a + b*x))*sqrt(sech(a*c + b*c*x)^2)) + (3*ℯ^(2*c*(a + b*x))*sech(a*c + b*c*x))/(16*b*c*sqrt(sech(a*c + b*c*x)^2)) + (ℯ^(4*c*(a + b*x))*sech(a*c + b*c*x))/(32*b*c*sqrt(sech(a*c + b*c*x)^2)) + (3*x*sech(a*c + b*c*x))/(8*sqrt(sech(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(sech(a*c + b*c*x)^2)^(5/2), x, 6, -sech(a*c + b*c*x)/(128*b*c*ℯ^(4*c*(a + b*x))*sqrt(sech(a*c + b*c*x)^2)) - (5*sech(a*c + b*c*x))/(64*b*c*ℯ^(2*c*(a + b*x))*sqrt(sech(a*c + b*c*x)^2)) + (5*ℯ^(2*c*(a + b*x))*sech(a*c + b*c*x))/(32*b*c*sqrt(sech(a*c + b*c*x)^2)) + (5*ℯ^(4*c*(a + b*x))*sech(a*c + b*c*x))/(128*b*c*sqrt(sech(a*c + b*c*x)^2)) + (ℯ^(6*c*(a + b*x))*sech(a*c + b*c*x))/(192*b*c*sqrt(sech(a*c + b*c*x)^2)) + (5*x*sech(a*c + b*c*x))/(16*sqrt(sech(a*c + b*c*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*sech(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sech(b*log(c*x^n))^(p/2)=#


    @test_int [x^5/sech(2*log(c*x))^(1/2), x, 6, (2*x^2)/(21*c^4*sqrt(sech(2*log(c*x)))) + x^6/(7*sqrt(sech(2*log(c*x)))) + (sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticF(2*acot(c*x), 1/2))/(21*c^5*(c^4 + 1/x^4)*x*sqrt(sech(2*log(c*x))))]
    @test_int [x^4/sech(2*log(c*x))^(1/2), x, 3, ((c^4 + 1/x^4)*x^5)/(6*c^4*sqrt(sech(2*log(c*x))))]
    @test_int [x^3/sech(2*log(c*x))^(1/2), x, 8, 2/(5*c^4*sqrt(sech(2*log(c*x)))) - 2/(5*c^4*(c^2 + 1/x^2)*x^2*sqrt(sech(2*log(c*x)))) + x^4/(5*sqrt(sech(2*log(c*x)))) + (2*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticE(2*acot(c*x), 1/2))/(5*c^3*(c^4 + 1/x^4)*x*sqrt(sech(2*log(c*x)))) - (sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticF(2*acot(c*x), 1/2))/(5*c^3*(c^4 + 1/x^4)*x*sqrt(sech(2*log(c*x))))]
    @test_int [x^2/sech(2*log(c*x))^(1/2), x, 6, x^3/(4*sqrt(sech(2*log(c*x)))) + atanh(sqrt(1 + 1/(c^4*x^4)))/(4*c^4*sqrt(1 + 1/(c^4*x^4))*x*sqrt(sech(2*log(c*x))))]
    @test_int [x^1/sech(2*log(c*x))^(1/2), x, 5, x^2/(3*sqrt(sech(2*log(c*x)))) - (sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticF(2*acot(c*x), 1/2))/(3*c*(c^4 + 1/x^4)*x*sqrt(sech(2*log(c*x))))]
    @test_int [x^0/sech(2*log(c*x))^(1/2), x, 6, x/(2*sqrt(sech(2*log(c*x)))) - acsch(c^2*x^2)/(2*c^2*sqrt(1 + 1/(c^4*x^4))*x*sqrt(sech(2*log(c*x))))]
    @test_int [sech(2*log(c*x))^(1/2)/x^1, x, 3, (-im)*sqrt(cosh(2*log(c*x)))*EllipticF(im*log(c*x), 2)*sqrt(sech(2*log(c*x)))]
    @test_int [sech(2*log(c*x))^(1/2)/x^2, x, 5, (-(1/2))*c^2*sqrt(1 + 1/(c^4*x^4))*x*acsch(c^2*x^2)*sqrt(sech(2*log(c*x)))]
    @test_int [sech(2*log(c*x))^(1/2)/x^3, x, 6, -(((c^4 + 1/x^4)*sqrt(sech(2*log(c*x))))/(c^2 + 1/x^2)) + c*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*x*EllipticE(2*acot(c*x), 1/2)*sqrt(sech(2*log(c*x))) - (1/2)*c*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*x*EllipticF(2*acot(c*x), 1/2)*sqrt(sech(2*log(c*x)))]
    @test_int [sech(2*log(c*x))^(1/2)/x^4, x, 3, (-(1/2))*(c^4 + 1/x^4)*x*sqrt(sech(2*log(c*x)))]
    @test_int [sech(2*log(c*x))^(1/2)/x^5, x, 5, (-(1/3))*(c^4 + 1/x^4)*sqrt(sech(2*log(c*x))) + (1/6)*c^3*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*x*EllipticF(2*acot(c*x), 1/2)*sqrt(sech(2*log(c*x)))]


    @test_int [x^8/sech(2*log(c*x))^(3/2), x, 8, x/(32*c^4*(c^4 + 1/x^4)*sech(2*log(c*x))^(3/2)) + x^5/(16*(c^4 + 1/x^4)*sech(2*log(c*x))^(3/2)) + x^9/(12*sech(2*log(c*x))^(3/2)) - atanh(sqrt(1 + 1/(c^4*x^4)))/(32*c^12*(1 + 1/(c^4*x^4))^(3/2)*x^3*sech(2*log(c*x))^(3/2))]
    @test_int [x^7/sech(2*log(c*x))^(3/2), x, 7, 4/(77*c^4*(c^4 + 1/x^4)*sech(2*log(c*x))^(3/2)) + (6*x^4)/(77*(c^4 + 1/x^4)*sech(2*log(c*x))^(3/2)) + x^8/(11*sech(2*log(c*x))^(3/2)) + (2*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticF(2*acot(c*x), 1/2))/(77*c^5*(c^4 + 1/x^4)^2*x^3*sech(2*log(c*x))^(3/2))]
    @test_int [x^6/sech(2*log(c*x))^(3/2), x, 3, ((c^4 + 1/x^4)*x^7)/(10*c^4*sech(2*log(c*x))^(3/2))]
    @test_int [x^5/sech(2*log(c*x))^(3/2), x, 9, -(4/(15*c^4*(c^4 + 1/x^4)*(c^2 + 1/x^2)*x^4*sech(2*log(c*x))^(3/2))) + 4/(15*c^4*(c^4 + 1/x^4)*x^2*sech(2*log(c*x))^(3/2)) + (2*x^2)/(15*(c^4 + 1/x^4)*sech(2*log(c*x))^(3/2)) + x^6/(9*sech(2*log(c*x))^(3/2)) + (4*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticE(2*acot(c*x), 1/2))/(15*c^3*(c^4 + 1/x^4)^2*x^3*sech(2*log(c*x))^(3/2)) - (2*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticF(2*acot(c*x), 1/2))/(15*c^3*(c^4 + 1/x^4)^2*x^3*sech(2*log(c*x))^(3/2))]
    @test_int [x^4/sech(2*log(c*x))^(3/2), x, 7, (3*x)/(16*(c^4 + 1/x^4)*sech(2*log(c*x))^(3/2)) + x^5/(8*sech(2*log(c*x))^(3/2)) + (3*atanh(sqrt(1 + 1/(c^4*x^4))))/(16*c^8*(1 + 1/(c^4*x^4))^(3/2)*x^3*sech(2*log(c*x))^(3/2))]
    @test_int [x^3/sech(2*log(c*x))^(3/2), x, 6, 2/(7*(c^4 + 1/x^4)*sech(2*log(c*x))^(3/2)) + x^4/(7*sech(2*log(c*x))^(3/2)) - (2*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticF(2*acot(c*x), 1/2))/(7*c*(c^4 + 1/x^4)^2*x^3*sech(2*log(c*x))^(3/2))]
    @test_int [x^2/sech(2*log(c*x))^(3/2), x, 7, 1/(2*(c^4 + 1/x^4)*x*sech(2*log(c*x))^(3/2)) + x^3/(6*sech(2*log(c*x))^(3/2)) - acsch(c^2*x^2)/(2*c^6*(1 + 1/(c^4*x^4))^(3/2)*x^3*sech(2*log(c*x))^(3/2))]
    @test_int [x^1/sech(2*log(c*x))^(3/2), x, 8, -(12/(5*(c^4 + 1/x^4)*(c^2 + 1/x^2)*x^4*sech(2*log(c*x))^(3/2))) + 6/(5*(c^4 + 1/x^4)*x^2*sech(2*log(c*x))^(3/2)) + x^2/(5*sech(2*log(c*x))^(3/2)) + (12*c*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticE(2*acot(c*x), 1/2))/(5*(c^4 + 1/x^4)^2*x^3*sech(2*log(c*x))^(3/2)) - (6*c*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*EllipticF(2*acot(c*x), 1/2))/(5*(c^4 + 1/x^4)^2*x^3*sech(2*log(c*x))^(3/2))]
    @test_int [x^0/sech(2*log(c*x))^(3/2), x, 7, -(3/(4*(c^4 + 1/x^4)*x^3*sech(2*log(c*x))^(3/2))) + x/(4*sech(2*log(c*x))^(3/2)) + (3*atanh(sqrt(1 + 1/(c^4*x^4))))/(4*c^4*(1 + 1/(c^4*x^4))^(3/2)*x^3*sech(2*log(c*x))^(3/2))]
    @test_int [sech(2*log(c*x))^(3/2)/x^1, x, 4, im*sqrt(cosh(2*log(c*x)))*EllipticE(im*log(c*x), 2)*sqrt(sech(2*log(c*x))) + sqrt(sech(2*log(c*x)))*sinh(2*log(c*x))]
    @test_int [sech(2*log(c*x))^(3/2)/x^2, x, 3, (1/2)*(c^4 + 1/x^4)*x^3*sech(2*log(c*x))^(3/2)]
    @test_int [sech(2*log(c*x))^(3/2)/x^3, x, 5, (1/2)*(c^4 + 1/x^4)*x^2*sech(2*log(c*x))^(3/2) - ((c^4 + 1/x^4)*sqrt((c^4 + 1/x^4)/(c^2 + 1/x^2)^2)*(c^2 + 1/x^2)*x^3*EllipticF(2*acot(c*x), 1/2)*sech(2*log(c*x))^(3/2))/(4*c)]
    @test_int [sech(2*log(c*x))^(3/2)/x^4, x, 6, (1/2)*(c^4 + 1/x^4)*x*sech(2*log(c*x))^(3/2) - (1/2)*c^6*(1 + 1/(c^4*x^4))^(3/2)*x^3*acsch(c^2*x^2)*sech(2*log(c*x))^(3/2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sech(a+b*log(c*x^n))^p=#


    @test_int [sech(a + b*log(c*x^n)), x, 4, (2*ℯ^a*x*(c*x^n)^b*Hypergeometric2F1(1, (b + 1/n)/(2*b), (1/2)*(3 + 1/(b*n)), (-ℯ^(2*a))*(c*x^n)^(2*b)))/(1 + b*n)]
    @test_int [sech(a + b*log(c*x^n))^2, x, 4, (4*ℯ^(2*a)*x*(c*x^n)^(2*b)*Hypergeometric2F1(2, (1/2)*(2 + 1/(b*n)), (1/2)*(4 + 1/(b*n)), (-ℯ^(2*a))*(c*x^n)^(2*b)))/(1 + 2*b*n)]
    @test_int [sech(a + b*log(c*x^n))^3, x, 4, (8*ℯ^(3*a)*x*(c*x^n)^(3*b)*Hypergeometric2F1(3, (3*b + 1/n)/(2*b), (1/2)*(5 + 1/(b*n)), (-ℯ^(2*a))*(c*x^n)^(2*b)))/(1 + 3*b*n)]
    @test_int [sech(a + b*log(c*x^n))^4, x, 4, (16*ℯ^(4*a)*x*(c*x^n)^(4*b)*Hypergeometric2F1(4, (1/2)*(4 + 1/(b*n)), (1/2)*(6 + 1/(b*n)), (-ℯ^(2*a))*(c*x^n)^(2*b)))/(1 + 4*b*n)]

    @test_int [2*b^2*n^2*sech(a + b*log(c*x^n))^3 + (1 - b^2*n^2)*sech(a + b*log(c*x^n)), x, -9, x*sech(a + b*log(c*x^n)) + b*n*x*sech(a + b*log(c*x^n))*tanh(a + b*log(c*x^n))]


    @test_int [sech(a + 2*log(c*x^(1/2)))^3, x, 3, (2*c^6)/(ℯ^a*(c^4 + 1/(ℯ^(2*a)*x^2))^2)]
    @test_int [sech(a + 2*log(c/x^(1/2)))^3, x, 4, (2*c^2)/(ℯ^(3*a)*(ℯ^(-2*a) + c^4/x^2)^2)]
    @test_int [sech(a + 1/(n*(-2 + p))*log(c*x^n))^p, x, 3, (ℯ^(2*a)*(2 - p)*x*(1 + (c*x^n)^(2/(n*(2 - p)))/ℯ^(2*a))*sech(a - log(c*x^n)/(n*(2 - p)))^p)/((c*x^n)^(2/(n*(2 - p)))*(2*(1 - p)))]
    @test_int [sech(a - 1/(n*(-2 + p))*log(c*x^n))^p, x, 3, ((2 - p)*x*(1 + 1/(ℯ^(2*a)*(c*x^n)^(2/(n*(2 - p)))))*sech(a + log(c*x^n)/(n*(2 - p)))^p)/(2*(1 - p))]


    @test_int [sech(a + b*log(c*x^n))/x, x, 2, atan(sinh(a + b*log(c*x^n)))/(b*n)]
    @test_int [sech(a + b*log(c*x^n))^2/x, x, 3, tanh(a + b*log(c*x^n))/(b*n)]
    @test_int [sech(a + b*log(c*x^n))^3/x, x, 3, atan(sinh(a + b*log(c*x^n)))/(2*b*n) + (sech(a + b*log(c*x^n))*tanh(a + b*log(c*x^n)))/(2*b*n)]
    @test_int [sech(a + b*log(c*x^n))^4/x, x, 3, tanh(a + b*log(c*x^n))/(b*n) - tanh(a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [sech(a + b*log(c*x^n))^5/x, x, 4, (3*atan(sinh(a + b*log(c*x^n))))/(8*b*n) + (3*sech(a + b*log(c*x^n))*tanh(a + b*log(c*x^n)))/(8*b*n) + (sech(a + b*log(c*x^n))^3*tanh(a + b*log(c*x^n)))/(4*b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sech(a+b*log(c*x^n))^(p/2)=#


    @test_int [sech(a + b*log(c*x^n))^(5/2)/x, x, 4, -((2*im*sqrt(cosh(a + b*log(c*x^n)))*EllipticF((1/2)*im*(a + b*log(c*x^n)), 2)*sqrt(sech(a + b*log(c*x^n))))/(3*b*n)) + (2*sech(a + b*log(c*x^n))^(3/2)*sinh(a + b*log(c*x^n)))/(3*b*n)]
    @test_int [sech(a + b*log(c*x^n))^(3/2)/x, x, 4, (2*im*sqrt(cosh(a + b*log(c*x^n)))*EllipticE((1/2)*im*(a + b*log(c*x^n)), 2)*sqrt(sech(a + b*log(c*x^n))))/(b*n) + (2*sqrt(sech(a + b*log(c*x^n)))*sinh(a + b*log(c*x^n)))/(b*n)]
    @test_int [sqrt(sech(a + b*log(c*x^n)))/x, x, 3, -((2*im*sqrt(cosh(a + b*log(c*x^n)))*EllipticF((1/2)*im*(a + b*log(c*x^n)), 2)*sqrt(sech(a + b*log(c*x^n))))/(b*n))]
    @test_int [1/(x*sqrt(sech(a + b*log(c*x^n)))), x, 3, -((2*im*sqrt(cosh(a + b*log(c*x^n)))*EllipticE((1/2)*im*(a + b*log(c*x^n)), 2)*sqrt(sech(a + b*log(c*x^n))))/(b*n))]
    @test_int [1/(x*sech(a + b*log(c*x^n))^(3/2)), x, 4, -((2*im*sqrt(cosh(a + b*log(c*x^n)))*EllipticF((1/2)*im*(a + b*log(c*x^n)), 2)*sqrt(sech(a + b*log(c*x^n))))/(3*b*n)) + (2*sinh(a + b*log(c*x^n)))/(3*b*n*sqrt(sech(a + b*log(c*x^n))))]
    @test_int [1/(x*sech(a + b*log(c*x^n))^(5/2)), x, 4, -((6*im*sqrt(cosh(a + b*log(c*x^n)))*EllipticE((1/2)*im*(a + b*log(c*x^n)), 2)*sqrt(sech(a + b*log(c*x^n))))/(5*b*n)) + (2*sinh(a + b*log(c*x^n)))/(5*b*n*sech(a + b*log(c*x^n))^(3/2))]
    end
