@testset "6.7.1 Hyperbolic functions" begin
    @variables A, B, C, F, a, b, c, d, e, f, m, n, r, s, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Hyperbolic*Functions=#


    #= ::Section::Closed:: =#
    #=Rectification*problems=#


    #= Following*integrands*are*equal. =#
    @test_int [2/(-1 + 3*cosh(4 + 6*x)), x, 3, atan(sqrt(2)*tanh(2 + 3*x))/(3*sqrt(2))]
    @test_int [1/(2*sinh(2 + 3*x)^2 + cosh(2 + 3*x)^2), x, 2, atan(sqrt(2)*tanh(2 + 3*x))/(3*sqrt(2))]
    @test_int [sech(2 + 3*x)^2/(1 + 2*tanh(2 + 3*x)^2), x, 2, atan(sqrt(2)*tanh(2 + 3*x))/(3*sqrt(2))]
    @test_int [csch(2 + 3*x)^2/(2 + coth(2 + 3*x)^2), x, 2, atan(sqrt(2)*tanh(2 + 3*x))/(3*sqrt(2))]


    @test_int [csch(2 + 3*x)^2/(2 - coth(2 + 3*x)^2), x, 2, -(atanh(sqrt(2)*tanh(2 + 3*x))/(3*sqrt(2)))]

    @test_int [csch(2 + 3*x)^2/(1 + 2*coth(2 + 3*x)^2), x, 2, atan(tanh(2 + 3*x)/sqrt(2))/(3*sqrt(2))]

    @test_int [csch(2 + 3*x)^2/(1 - 2*coth(2 + 3*x)^2), x, 2, -(atanh(tanh(2 + 3*x)/sqrt(2))/(3*sqrt(2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Hyper(a+b*x)^n*Hyper(c+d*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(a+b*x)^m*Hyper(a+b*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*cosh(a+b*x)^m*sinh(a+b*x)^n=#


    @test_int [cosh(a + b*x)*sinh(a + b*x), x, 2, sinh(a + b*x)^2/(2*b)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)^n, x, 2, sinh(a + b*x)^(1 + n)/(b*(1 + n))]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)^n, x, 3, sinh(a + b*x)^(1 + n)/(b*(1 + n)) + sinh(a + b*x)^(3 + n)/(b*(3 + n))]
    @test_int [cosh(a + b*x)^5*sinh(a + b*x)^n, x, 3, sinh(a + b*x)^(1 + n)/(b*(1 + n)) + (2*sinh(a + b*x)^(3 + n))/(b*(3 + n)) + sinh(a + b*x)^(5 + n)/(b*(5 + n))]

    @test_int [cosh(a + b*x)^m*sinh(a + b*x), x, 2, cosh(a + b*x)^(1 + m)/(b*(1 + m))]
    @test_int [cosh(a + b*x)^m*sinh(a + b*x)^3, x, 3, -(cosh(a + b*x)^(1 + m)/(b*(1 + m))) + cosh(a + b*x)^(3 + m)/(b*(3 + m))]
    @test_int [cosh(a + b*x)^m*sinh(a + b*x)^5, x, 3, cosh(a + b*x)^(1 + m)/(b*(1 + m)) - (2*cosh(a + b*x)^(3 + m))/(b*(3 + m)) + cosh(a + b*x)^(5 + m)/(b*(5 + m))]

    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^2, x, 3, -(x/8) - (cosh(a + b*x)*sinh(a + b*x))/(8*b) + (cosh(a + b*x)^3*sinh(a + b*x))/(4*b)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^4, x, 4, x/16 + (cosh(a + b*x)*sinh(a + b*x))/(16*b) - (cosh(a + b*x)^3*sinh(a + b*x))/(8*b) + (cosh(a + b*x)^3*sinh(a + b*x)^3)/(6*b)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^6, x, 5, -((5*x)/128) - (5*cosh(a + b*x)*sinh(a + b*x))/(128*b) + (5*cosh(a + b*x)^3*sinh(a + b*x))/(64*b) - (5*cosh(a + b*x)^3*sinh(a + b*x)^3)/(48*b) + (cosh(a + b*x)^3*sinh(a + b*x)^5)/(8*b)]

    @test_int [cosh(a + b*x)^4*sinh(a + b*x)^2, x, 4, -(x/16) - (cosh(a + b*x)*sinh(a + b*x))/(16*b) - (cosh(a + b*x)^3*sinh(a + b*x))/(24*b) + (cosh(a + b*x)^5*sinh(a + b*x))/(6*b)]
    @test_int [cosh(a + b*x)^4*sinh(a + b*x)^4, x, 5, (3*x)/128 + (3*cosh(a + b*x)*sinh(a + b*x))/(128*b) + (cosh(a + b*x)^3*sinh(a + b*x))/(64*b) - (cosh(a + b*x)^5*sinh(a + b*x))/(16*b) + (cosh(a + b*x)^5*sinh(a + b*x)^3)/(8*b)]
    @test_int [cosh(a + b*x)^4*sinh(a + b*x)^6, x, 6, -((3*x)/256) - (3*cosh(a + b*x)*sinh(a + b*x))/(256*b) - (cosh(a + b*x)^3*sinh(a + b*x))/(128*b) + (cosh(a + b*x)^5*sinh(a + b*x))/(32*b) - (cosh(a + b*x)^5*sinh(a + b*x)^3)/(16*b) + (cosh(a + b*x)^5*sinh(a + b*x)^5)/(10*b)]

    @test_int [cosh(a + b*x)^6*sinh(a + b*x)^2, x, 5, -((5*x)/128) - (5*cosh(a + b*x)*sinh(a + b*x))/(128*b) - (5*cosh(a + b*x)^3*sinh(a + b*x))/(192*b) - (cosh(a + b*x)^5*sinh(a + b*x))/(48*b) + (cosh(a + b*x)^7*sinh(a + b*x))/(8*b)]
    @test_int [cosh(a + b*x)^6*sinh(a + b*x)^4, x, 6, (3*x)/256 + (3*cosh(a + b*x)*sinh(a + b*x))/(256*b) + (cosh(a + b*x)^3*sinh(a + b*x))/(128*b) + (cosh(a + b*x)^5*sinh(a + b*x))/(160*b) - (3*cosh(a + b*x)^7*sinh(a + b*x))/(80*b) + (cosh(a + b*x)^7*sinh(a + b*x)^3)/(10*b)]
    @test_int [cosh(a + b*x)^6*sinh(a + b*x)^6, x, 7, -((5*x)/1024) - (5*cosh(a + b*x)*sinh(a + b*x))/(1024*b) - (5*cosh(a + b*x)^3*sinh(a + b*x))/(1536*b) - (cosh(a + b*x)^5*sinh(a + b*x))/(384*b) + (cosh(a + b*x)^7*sinh(a + b*x))/(64*b) - (cosh(a + b*x)^7*sinh(a + b*x)^3)/(24*b) + (cosh(a + b*x)^7*sinh(a + b*x)^5)/(12*b)]


    @test_int [csch(a + b*x)*sech(a + b*x), x, 2, log(tanh(a + b*x))/b]
    @test_int [csch(a + b*x)*sech(a + b*x)^2, x, 3, -(atanh(cosh(a + b*x))/b) + sech(a + b*x)/b]
    @test_int [csch(a + b*x)*sech(a + b*x)^3, x, 3, log(tanh(a + b*x))/b - tanh(a + b*x)^2/(2*b)]
    @test_int [csch(a + b*x)*sech(a + b*x)^4, x, 4, -(atanh(cosh(a + b*x))/b) + sech(a + b*x)/b + sech(a + b*x)^3/(3*b)]
    @test_int [csch(a + b*x)*sech(a + b*x)^5, x, 4, log(tanh(a + b*x))/b - tanh(a + b*x)^2/b + tanh(a + b*x)^4/(4*b)]

    @test_int [csch(a + b*x)^2*sech(a + b*x), x, 3, -(atan(sinh(a + b*x))/b) - csch(a + b*x)/b]
    @test_int [csch(a + b*x)^2*sech(a + b*x)^2, x, 3, -(coth(a + b*x)/b) - tanh(a + b*x)/b]
    @test_int [csch(a + b*x)^2*sech(a + b*x)^3, x, 4, -((3*atan(sinh(a + b*x)))/(2*b)) - (3*csch(a + b*x))/(2*b) + (csch(a + b*x)*sech(a + b*x)^2)/(2*b)]
    @test_int [csch(a + b*x)^2*sech(a + b*x)^4, x, 3, -(coth(a + b*x)/b) - (2*tanh(a + b*x))/b + tanh(a + b*x)^3/(3*b)]
    @test_int [csch(a + b*x)^2*sech(a + b*x)^5, x, 5, -((15*atan(sinh(a + b*x)))/(8*b)) - (15*csch(a + b*x))/(8*b) + (5*csch(a + b*x)*sech(a + b*x)^2)/(8*b) + (csch(a + b*x)*sech(a + b*x)^4)/(4*b)]

    @test_int [csch(a + b*x)^3*sech(a + b*x), x, 3, -(coth(a + b*x)^2/(2*b)) - log(tanh(a + b*x))/b]
    @test_int [csch(a + b*x)^3*sech(a + b*x)^2, x, 4, (3*atanh(cosh(a + b*x)))/(2*b) - (3*sech(a + b*x))/(2*b) - (csch(a + b*x)^2*sech(a + b*x))/(2*b)]
    @test_int [csch(a + b*x)^3*sech(a + b*x)^3, x, 4, -(coth(a + b*x)^2/(2*b)) - (2*log(tanh(a + b*x)))/b + tanh(a + b*x)^2/(2*b)]
    @test_int [csch(a + b*x)^3*sech(a + b*x)^4, x, 5, (5*atanh(cosh(a + b*x)))/(2*b) - (5*sech(a + b*x))/(2*b) - (5*sech(a + b*x)^3)/(6*b) - (csch(a + b*x)^2*sech(a + b*x)^3)/(2*b)]
    @test_int [csch(a + b*x)^3*sech(a + b*x)^5, x, 4, -(coth(a + b*x)^2/(2*b)) - (3*log(tanh(a + b*x)))/b + (3*tanh(a + b*x)^2)/(2*b) - tanh(a + b*x)^4/(4*b)]

    @test_int [csch(a + b*x)^4*sech(a + b*x), x, 4, atan(sinh(a + b*x))/b + csch(a + b*x)/b - csch(a + b*x)^3/(3*b)]
    @test_int [csch(a + b*x)^4*sech(a + b*x)^2, x, 3, (2*coth(a + b*x))/b - coth(a + b*x)^3/(3*b) + tanh(a + b*x)/b]
    @test_int [csch(a + b*x)^4*sech(a + b*x)^3, x, 5, (5*atan(sinh(a + b*x)))/(2*b) + (5*csch(a + b*x))/(2*b) - (5*csch(a + b*x)^3)/(6*b) + (csch(a + b*x)^3*sech(a + b*x)^2)/(2*b)]
    @test_int [csch(a + b*x)^4*sech(a + b*x)^4, x, 3, (3*coth(a + b*x))/b - coth(a + b*x)^3/(3*b) + (3*tanh(a + b*x))/b - tanh(a + b*x)^3/(3*b)]
    @test_int [csch(a + b*x)^4*sech(a + b*x)^5, x, 6, (35*atan(sinh(a + b*x)))/(8*b) + (35*csch(a + b*x))/(8*b) - (35*csch(a + b*x)^3)/(24*b) + (7*csch(a + b*x)^3*sech(a + b*x)^2)/(8*b) + (csch(a + b*x)^3*sech(a + b*x)^4)/(4*b)]

    @test_int [csch(a + b*x)^5*sech(a + b*x), x, 4, coth(a + b*x)^2/b - coth(a + b*x)^4/(4*b) + log(tanh(a + b*x))/b]
    @test_int [csch(a + b*x)^5*sech(a + b*x)^2, x, 5, -((15*atanh(cosh(a + b*x)))/(8*b)) + (15*sech(a + b*x))/(8*b) + (5*csch(a + b*x)^2*sech(a + b*x))/(8*b) - (csch(a + b*x)^4*sech(a + b*x))/(4*b)]
    @test_int [csch(a + b*x)^5*sech(a + b*x)^3, x, 4, (3*coth(a + b*x)^2)/(2*b) - coth(a + b*x)^4/(4*b) + (3*log(tanh(a + b*x)))/b - tanh(a + b*x)^2/(2*b)]
    @test_int [csch(a + b*x)^5*sech(a + b*x)^4, x, 6, -((35*atanh(cosh(a + b*x)))/(8*b)) + (35*sech(a + b*x))/(8*b) + (35*sech(a + b*x)^3)/(24*b) + (7*csch(a + b*x)^2*sech(a + b*x)^3)/(8*b) - (csch(a + b*x)^4*sech(a + b*x)^3)/(4*b)]
    @test_int [csch(a + b*x)^5*sech(a + b*x)^5, x, 4, (2*coth(a + b*x)^2)/b - coth(a + b*x)^4/(4*b) + (6*log(tanh(a + b*x)))/b - (2*tanh(a + b*x)^2)/b + tanh(a + b*x)^4/(4*b)]


    @test_int [sinh(a + b*x)^(7/2)/cosh(a + b*x)^(7/2), x, 6, -(atan(sqrt(cosh(a + b*x))/sqrt(sinh(a + b*x)))/b) + atanh(sqrt(cosh(a + b*x))/sqrt(sinh(a + b*x)))/b - (2*sqrt(sinh(a + b*x)))/(b*sqrt(cosh(a + b*x))) - (2*sinh(a + b*x)^(5/2))/(5*b*cosh(a + b*x)^(5/2))]
    @test_int [sinh(a + b*x)^(5/2)/cosh(a + b*x)^(5/2), x, 5, -(atan(sqrt(sinh(a + b*x))/sqrt(cosh(a + b*x)))/b) + atanh(sqrt(sinh(a + b*x))/sqrt(cosh(a + b*x)))/b - (2*sinh(a + b*x)^(3/2))/(3*b*cosh(a + b*x)^(3/2))]
    @test_int [sinh(a + b*x)^(3/2)/cosh(a + b*x)^(3/2), x, 5, -(atan(sqrt(cosh(a + b*x))/sqrt(sinh(a + b*x)))/b) + atanh(sqrt(cosh(a + b*x))/sqrt(sinh(a + b*x)))/b - (2*sqrt(sinh(a + b*x)))/(b*sqrt(cosh(a + b*x)))]
    @test_int [sinh(a + b*x)^(1/2)/cosh(a + b*x)^(1/2), x, 4, -(atan(sqrt(sinh(a + b*x))/sqrt(cosh(a + b*x)))/b) + atanh(sqrt(sinh(a + b*x))/sqrt(cosh(a + b*x)))/b]
    @test_int [cosh(a + b*x)^(1/2)/sinh(a + b*x)^(1/2), x, 4, -(atan(sqrt(cosh(a + b*x))/sqrt(sinh(a + b*x)))/b) + atanh(sqrt(cosh(a + b*x))/sqrt(sinh(a + b*x)))/b]
    @test_int [cosh(a + b*x)^(3/2)/sinh(a + b*x)^(3/2), x, 5, -(atan(sqrt(sinh(a + b*x))/sqrt(cosh(a + b*x)))/b) + atanh(sqrt(sinh(a + b*x))/sqrt(cosh(a + b*x)))/b - (2*sqrt(cosh(a + b*x)))/(b*sqrt(sinh(a + b*x)))]
    @test_int [cosh(a + b*x)^(5/2)/sinh(a + b*x)^(5/2), x, 5, -(atan(sqrt(cosh(a + b*x))/sqrt(sinh(a + b*x)))/b) + atanh(sqrt(cosh(a + b*x))/sqrt(sinh(a + b*x)))/b - (2*cosh(a + b*x)^(3/2))/(3*b*sinh(a + b*x)^(3/2))]
    @test_int [cosh(a + b*x)^(7/2)/sinh(a + b*x)^(7/2), x, 6, -(atan(sqrt(sinh(a + b*x))/sqrt(cosh(a + b*x)))/b) + atanh(sqrt(sinh(a + b*x))/sqrt(cosh(a + b*x)))/b - (2*cosh(a + b*x)^(5/2))/(5*b*sinh(a + b*x)^(5/2)) - (2*sqrt(cosh(a + b*x)))/(b*sqrt(sinh(a + b*x)))]


    @test_int [sinh(a + b*x)^(7/3)/cosh(a + b*x)^(7/3), x, 9, -((sqrt(3)*atan((1 + (2*sinh(a + b*x)^(2/3))/cosh(a + b*x)^(2/3))/sqrt(3)))/(2*b)) - log(1 - sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3))/(2*b) + log(1 + sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3) + sinh(a + b*x)^(4/3)/cosh(a + b*x)^(4/3))/(4*b) - (3*sinh(a + b*x)^(4/3))/(4*b*cosh(a + b*x)^(4/3))]
    @test_int [sinh(a + b*x)^(5/3)/cosh(a + b*x)^(5/3), x, 9, -((sqrt(3)*atan((1 + (2*cosh(a + b*x)^(2/3))/sinh(a + b*x)^(2/3))/sqrt(3)))/(2*b)) - log(1 - cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3))/(2*b) + log(1 + cosh(a + b*x)^(4/3)/sinh(a + b*x)^(4/3) + cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3))/(4*b) - (3*sinh(a + b*x)^(2/3))/(2*b*cosh(a + b*x)^(2/3))]
    @test_int [sinh(a + b*x)^(4/3)/cosh(a + b*x)^(4/3), x, 12, (sqrt(3)*atan((1 - (2*cosh(a + b*x)^(1/3))/sinh(a + b*x)^(1/3))/sqrt(3)))/(2*b) - (sqrt(3)*atan((1 + (2*cosh(a + b*x)^(1/3))/sinh(a + b*x)^(1/3))/sqrt(3)))/(2*b) + atanh(cosh(a + b*x)^(1/3)/sinh(a + b*x)^(1/3))/b - log(1 + cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3) - cosh(a + b*x)^(1/3)/sinh(a + b*x)^(1/3))/(4*b) + log(1 + cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3) + cosh(a + b*x)^(1/3)/sinh(a + b*x)^(1/3))/(4*b) - (3*sinh(a + b*x)^(1/3))/(b*cosh(a + b*x)^(1/3))]
    @test_int [sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3), x, 11, (sqrt(3)*atan((1 - (2*sinh(a + b*x)^(1/3))/cosh(a + b*x)^(1/3))/sqrt(3)))/(2*b) - (sqrt(3)*atan((1 + (2*sinh(a + b*x)^(1/3))/cosh(a + b*x)^(1/3))/sqrt(3)))/(2*b) + atanh(sinh(a + b*x)^(1/3)/cosh(a + b*x)^(1/3))/b - log(1 - sinh(a + b*x)^(1/3)/cosh(a + b*x)^(1/3) + sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3))/(4*b) + log(1 + sinh(a + b*x)^(1/3)/cosh(a + b*x)^(1/3) + sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3))/(4*b)]
    @test_int [sinh(a + b*x)^(1/3)/cosh(a + b*x)^(1/3), x, 8, -((sqrt(3)*atan((1 + (2*sinh(a + b*x)^(2/3))/cosh(a + b*x)^(2/3))/sqrt(3)))/(2*b)) - log(1 - sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3))/(2*b) + log(1 + sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3) + sinh(a + b*x)^(4/3)/cosh(a + b*x)^(4/3))/(4*b)]
    @test_int [cosh(a + b*x)^(1/3)/sinh(a + b*x)^(1/3), x, 8, -((sqrt(3)*atan((1 + (2*cosh(a + b*x)^(2/3))/sinh(a + b*x)^(2/3))/sqrt(3)))/(2*b)) - log(1 - cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3))/(2*b) + log(1 + cosh(a + b*x)^(4/3)/sinh(a + b*x)^(4/3) + cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3))/(4*b)]
    @test_int [cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3), x, 11, (sqrt(3)*atan((1 - (2*cosh(a + b*x)^(1/3))/sinh(a + b*x)^(1/3))/sqrt(3)))/(2*b) - (sqrt(3)*atan((1 + (2*cosh(a + b*x)^(1/3))/sinh(a + b*x)^(1/3))/sqrt(3)))/(2*b) + atanh(cosh(a + b*x)^(1/3)/sinh(a + b*x)^(1/3))/b - log(1 + cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3) - cosh(a + b*x)^(1/3)/sinh(a + b*x)^(1/3))/(4*b) + log(1 + cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3) + cosh(a + b*x)^(1/3)/sinh(a + b*x)^(1/3))/(4*b)]
    @test_int [cosh(a + b*x)^(4/3)/sinh(a + b*x)^(4/3), x, 12, (sqrt(3)*atan((1 - (2*sinh(a + b*x)^(1/3))/cosh(a + b*x)^(1/3))/sqrt(3)))/(2*b) - (sqrt(3)*atan((1 + (2*sinh(a + b*x)^(1/3))/cosh(a + b*x)^(1/3))/sqrt(3)))/(2*b) + atanh(sinh(a + b*x)^(1/3)/cosh(a + b*x)^(1/3))/b - log(1 - sinh(a + b*x)^(1/3)/cosh(a + b*x)^(1/3) + sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3))/(4*b) + log(1 + sinh(a + b*x)^(1/3)/cosh(a + b*x)^(1/3) + sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3))/(4*b) - (3*cosh(a + b*x)^(1/3))/(b*sinh(a + b*x)^(1/3))]
    @test_int [cosh(a + b*x)^(5/3)/sinh(a + b*x)^(5/3), x, 9, -((sqrt(3)*atan((1 + (2*sinh(a + b*x)^(2/3))/cosh(a + b*x)^(2/3))/sqrt(3)))/(2*b)) - log(1 - sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3))/(2*b) + log(1 + sinh(a + b*x)^(2/3)/cosh(a + b*x)^(2/3) + sinh(a + b*x)^(4/3)/cosh(a + b*x)^(4/3))/(4*b) - (3*cosh(a + b*x)^(2/3))/(2*b*sinh(a + b*x)^(2/3))]
    @test_int [cosh(a + b*x)^(7/3)/sinh(a + b*x)^(7/3), x, 9, -((sqrt(3)*atan((1 + (2*cosh(a + b*x)^(2/3))/sinh(a + b*x)^(2/3))/sqrt(3)))/(2*b)) - log(1 - cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3))/(2*b) + log(1 + cosh(a + b*x)^(4/3)/sinh(a + b*x)^(4/3) + cosh(a + b*x)^(2/3)/sinh(a + b*x)^(2/3))/(4*b) - (3*cosh(a + b*x)^(4/3))/(4*b*sinh(a + b*x)^(4/3))]


    @test_int [cosh(x)^(2/3)/sinh(x)^(8/3), x, 1, -((3*cosh(x)^(5/3))/(5*sinh(x)^(5/3)))]
    @test_int [sinh(x)^(2/3)/cosh(x)^(8/3), x, 1, (3*sinh(x)^(5/3))/(5*cosh(x)^(5/3))]

    @test_int [cosh(x)*csch(x)^(7/3), x, 2, (-3*csch(x)^(4/3))/4]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(a+b*x)^m*tanh(a+b*x)^n=#


    @test_int [sinh(a + b*x)*tanh(a + b*x), x, 3, -(atan(sinh(a + b*x))/b) + sinh(a + b*x)/b]
    @test_int [sinh(a + b*x)*tanh(a + b*x)^2, x, 3, cosh(a + b*x)/b + sech(a + b*x)/b]
    @test_int [sinh(a + b*x)*tanh(a + b*x)^3, x, 4, -((3*atan(sinh(a + b*x)))/(2*b)) + (3*sinh(a + b*x))/(2*b) - (sinh(a + b*x)*tanh(a + b*x)^2)/(2*b)]
    @test_int [sinh(a + b*x)*tanh(a + b*x)^4, x, 3, cosh(a + b*x)/b + (2*sech(a + b*x))/b - sech(a + b*x)^3/(3*b)]

    @test_int [sinh(a + b*x)^2*tanh(a + b*x), x, 3, cosh(a + b*x)^2/(2*b) - log(cosh(a + b*x))/b]
    @test_int [sinh(a + b*x)^2*tanh(a + b*x)^2, x, 4, -((3*x)/2) + (3*tanh(a + b*x))/(2*b) + (sinh(a + b*x)^2*tanh(a + b*x))/(2*b)]
    @test_int [sinh(a + b*x)^2*tanh(a + b*x)^3, x, 4, cosh(a + b*x)^2/(2*b) - (2*log(cosh(a + b*x)))/b - sech(a + b*x)^2/(2*b)]

    @test_int [sinh(a + b*x)^3*tanh(a + b*x), x, 4, atan(sinh(a + b*x))/b - sinh(a + b*x)/b + sinh(a + b*x)^3/(3*b)]
    @test_int [sinh(a + b*x)^3*tanh(a + b*x)^2, x, 3, -((2*cosh(a + b*x))/b) + cosh(a + b*x)^3/(3*b) - sech(a + b*x)/b]
    @test_int [sinh(a + b*x)^3*tanh(a + b*x)^3, x, 5, (5*atan(sinh(a + b*x)))/(2*b) - (5*sinh(a + b*x))/(2*b) + (5*sinh(a + b*x)^3)/(6*b) - (sinh(a + b*x)^3*tanh(a + b*x)^2)/(2*b)]

    @test_int [sinh(a + b*x)^4*tanh(a + b*x), x, 4, -(cosh(a + b*x)^2/b) + cosh(a + b*x)^4/(4*b) + log(cosh(a + b*x))/b]


    @test_int [sech(a + b*x)*tanh(a + b*x), x, 2, -sech(a + b*x)/b]
    @test_int [sech(a + b*x)^2*tanh(a + b*x), x, 2, -(sech(a + b*x)^2/(2*b))]
    @test_int [sech(a + b*x)^n*tanh(a + b*x), x, 2, -sech(a + b*x)^n/(b*n)]

    @test_int [sech(a + b*x)^2*tanh(a + b*x)^2, x, 2, tanh(a + b*x)^3/(3*b)]
    @test_int [sech(a + b*x)^2*tanh(a + b*x)^3, x, 2, tanh(a + b*x)^4/(4*b)]
    @test_int [sech(a + b*x)^2*tanh(a + b*x)^n, x, 2, tanh(a + b*x)^(1 + n)/(b*(1 + n))]

    @test_int [sech(a + b*x)^1*tanh(a + b*x)^3, x, 2, -(sech(a + b*x)/b) + sech(a + b*x)^3/(3*b)]
    @test_int [sech(a + b*x)^3*tanh(a + b*x)^3, x, 3, -(sech(a + b*x)^3/(3*b)) + sech(a + b*x)^5/(5*b)]
    @test_int [sech(a + b*x)^n*tanh(a + b*x)^3, x, 3, -(sech(a + b*x)^n/(b*n)) + sech(a + b*x)^(2 + n)/(b*(2 + n))]

    @test_int [sech(a + b*x)^4*tanh(a + b*x)^2, x, 3, tanh(a + b*x)^3/(3*b) - tanh(a + b*x)^5/(5*b)]
    @test_int [sech(a + b*x)^4*sqrt(tanh(a + b*x)), x, 3, (2*tanh(a + b*x)^(3/2))/(3*b) - (2*tanh(a + b*x)^(7/2))/(7*b)]
    @test_int [sech(a + b*x)^4*tanh(a + b*x)^n, x, 3, tanh(a + b*x)^(1 + n)/(b*(1 + n)) - tanh(a + b*x)^(3 + n)/(b*(3 + n))]

    @test_int [sech(a + b*x)*tanh(a + b*x)^2, x, 2, atan(sinh(a + b*x))/(2*b) - (sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [sech(a + b*x)*tanh(a + b*x)^4, x, 3, (3*atan(sinh(a + b*x)))/(8*b) - (3*sech(a + b*x)*tanh(a + b*x))/(8*b) - (sech(a + b*x)*tanh(a + b*x)^3)/(4*b)]

    @test_int [sech(a + b*x)^3*tanh(a + b*x)^2, x, 3, atan(sinh(a + b*x))/(8*b) + (sech(a + b*x)*tanh(a + b*x))/(8*b) - (sech(a + b*x)^3*tanh(a + b*x))/(4*b)]

    @test_int [sech(x)*tanh(x)^5, x, 3, -sech(x) + (2*sech(x)^3)/3 - sech(x)^5/5]
    @test_int [sech(x)^7*tanh(x)^5, x, 3, (-(1/7))*sech(x)^7 + (2*sech(x)^9)/9 - sech(x)^11/11]
    @test_int [sech(x)^3*tanh(x)^4, x, 4, (1/16)*atan(sinh(x)) + (1/16)*sech(x)*tanh(x) - (1/8)*sech(x)^3*tanh(x) - (1/6)*sech(x)^3*tanh(x)^3]
    @test_int [sech(x)^5*tanh(x)^2, x, 4, (1/16)*atan(sinh(x)) + (1/16)*sech(x)*tanh(x) + (1/24)*sech(x)^3*tanh(x) - (1/6)*sech(x)^5*tanh(x)]
    @test_int [sech(x)^8*tanh(x)^6, x, 3, tanh(x)^7/7 - tanh(x)^9/3 + (3*tanh(x)^11)/11 - tanh(x)^13/13]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(a+b*x)^m*coth(a+b*x)^n=#


    @test_int [cosh(a + b*x)*coth(a + b*x), x, 3, -(atanh(cosh(a + b*x))/b) + cosh(a + b*x)/b]
    @test_int [cosh(a + b*x)*coth(a + b*x)^2, x, 3, -(csch(a + b*x)/b) + sinh(a + b*x)/b]
    @test_int [cosh(a + b*x)*coth(a + b*x)^3, x, 4, -((3*atanh(cosh(a + b*x)))/(2*b)) + (3*cosh(a + b*x))/(2*b) - (cosh(a + b*x)*coth(a + b*x)^2)/(2*b)]
    @test_int [cosh(a + b*x)*coth(a + b*x)^4, x, 3, -((2*csch(a + b*x))/b) - csch(a + b*x)^3/(3*b) + sinh(a + b*x)/b]

    @test_int [cosh(a + b*x)^2*coth(a + b*x), x, 3, log(sinh(a + b*x))/b + sinh(a + b*x)^2/(2*b)]
    @test_int [cosh(a + b*x)^2*coth(a + b*x)^2, x, 4, (3*x)/2 - (3*coth(a + b*x))/(2*b) + (cosh(a + b*x)^2*coth(a + b*x))/(2*b)]
    @test_int [cosh(a + b*x)^2*coth(a + b*x)^3, x, 4, -(csch(a + b*x)^2/(2*b)) + (2*log(sinh(a + b*x)))/b + sinh(a + b*x)^2/(2*b)]

    @test_int [cosh(a + b*x)^3*coth(a + b*x), x, 4, -(atanh(cosh(a + b*x))/b) + cosh(a + b*x)/b + cosh(a + b*x)^3/(3*b)]
    @test_int [cosh(a + b*x)^3*coth(a + b*x)^2, x, 3, -(csch(a + b*x)/b) + (2*sinh(a + b*x))/b + sinh(a + b*x)^3/(3*b)]
    @test_int [cosh(a + b*x)^3*coth(a + b*x)^3, x, 5, -((5*atanh(cosh(a + b*x)))/(2*b)) + (5*cosh(a + b*x))/(2*b) + (5*cosh(a + b*x)^3)/(6*b) - (cosh(a + b*x)^3*coth(a + b*x)^2)/(2*b)]

    @test_int [cosh(a + b*x)^4*coth(a + b*x), x, 4, log(sinh(a + b*x))/b + sinh(a + b*x)^2/b + sinh(a + b*x)^4/(4*b)]


    @test_int [coth(a + b*x)*csch(a + b*x), x, 2, -(csch(a + b*x)/b)]
    @test_int [coth(a + b*x)*csch(a + b*x)^2, x, 2, -(csch(a + b*x)^2/(2*b))]
    @test_int [coth(a + b*x)*csch(a + b*x)^n, x, 2, -csch(a + b*x)^n/(b*n)]

    @test_int [coth(a + b*x)^2*csch(a + b*x)^2, x, 2, -coth(a + b*x)^3/(3*b)]
    @test_int [coth(a + b*x)^3*csch(a + b*x)^2, x, 2, -coth(a + b*x)^4/(4*b)]
    @test_int [coth(a + b*x)^n*csch(a + b*x)^2, x, 2, -coth(a + b*x)^(1 + n)/(b*(1 + n))]

    @test_int [coth(a + b*x)^3*csch(a + b*x), x, 2, -(csch(a + b*x)/b) - csch(a + b*x)^3/(3*b)]
    @test_int [coth(a + b*x)^3*csch(a + b*x)^3, x, 3, -(csch(a + b*x)^3/(3*b)) - csch(a + b*x)^5/(5*b)]
    @test_int [coth(a + b*x)^3*csch(a + b*x)^n, x, 3, -(csch(a + b*x)^n/(b*n)) - csch(a + b*x)^(2 + n)/(b*(2 + n))]

    @test_int [coth(a + b*x)^2*csch(a + b*x), x, 2, -(atanh(cosh(a + b*x))/(2*b)) - (coth(a + b*x)*csch(a + b*x))/(2*b)]
    @test_int [coth(a + b*x)^2*csch(a + b*x)^3, x, 3, atanh(cosh(a + b*x))/(8*b) - (coth(a + b*x)*csch(a + b*x))/(8*b) - (coth(a + b*x)*csch(a + b*x)^3)/(4*b)]

    @test_int [coth(a + b*x)^4*csch(a + b*x), x, 3, -((3*atanh(cosh(a + b*x)))/(8*b)) - (3*coth(a + b*x)*csch(a + b*x))/(8*b) - (coth(a + b*x)^3*csch(a + b*x))/(4*b)]

    @test_int [coth(x)^2*csch(x)^4, x, 3, coth(x)^3/3 - coth(x)^5/5]
    @test_int [coth(x)^3*csch(x)^4, x, 3, (-(1/4))*csch(x)^4 - csch(x)^6/6]
    @test_int [coth(x)^n*csch(x)^4, x, 3, coth(x)^(1 + n)/(1 + n) - coth(x)^(3 + n)/(3 + n)]

    @test_int [coth(x)^4*csch(x)^3, x, 4, (1/16)*atanh(cosh(x)) - (1/16)*coth(x)*csch(x) - (1/8)*coth(x)*csch(x)^3 - (1/6)*coth(x)^3*csch(x)^3]
    @test_int [coth(x)^4*csch(x)^6, x, 3, (-(1/5))*coth(x)^5 + (2*coth(x)^7)/7 - coth(x)^9/9]
    @test_int [coth(6*x)^5*csch(6*x), x, 3, (-(1/6))*csch(6*x) - (1/9)*csch(6*x)^3 - (1/30)*csch(6*x)^5]
    @test_int [coth(x)^7*csch(x)^3, x, 3, (-(1/3))*csch(x)^3 - (3*csch(x)^5)/5 - (3*csch(x)^7)/7 - csch(x)^9/9]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(a+b*x)*Hyper(c+d*x)*when*b^2-d^2=0=#


    @test_int [sinh(a + b*x)*sinh(c + b*x), x, 3, (-(1/2))*x*cosh(a - c) + sinh(a + c + 2*b*x)/(4*b)]
    @test_int [sinh(a + b*x)*sinh(c - b*x), x, 3, (1/2)*x*cosh(a + c) - sinh(a - c + 2*b*x)/(4*b)]


    @test_int [cosh(a + b*x)*cosh(c + b*x), x, 3, (1/2)*x*cosh(a - c) + sinh(a + c + 2*b*x)/(4*b)]
    @test_int [cosh(a + b*x)*cosh(c - b*x), x, 3, (1/2)*x*cosh(a + c) + sinh(a - c + 2*b*x)/(4*b)]


    @test_int [tanh(a + b*x)*tanh(c + b*x), x, 4, x - (coth(a - c)*log(cosh(a + b*x)))/b + (coth(a - c)*log(cosh(c + b*x)))/b]
    @test_int [tanh(a + b*x)*tanh(c - b*x), x, 4, -x - (coth(a + c)*log(cosh(c - b*x)))/b + (coth(a + c)*log(cosh(a + b*x)))/b]


    @test_int [coth(a + b*x)*coth(c + b*x), x, 4, x - (coth(a - c)*log(sinh(a + b*x)))/b + (coth(a - c)*log(sinh(c + b*x)))/b]
    @test_int [coth(a + b*x)*coth(c - b*x), x, 4, -x - (coth(a + c)*log(sinh(c - b*x)))/b + (coth(a + c)*log(sinh(a + b*x)))/b]


    @test_int [sech(a + b*x)*sech(c + b*x), x, 3, (csch(a - c)*log(cosh(a + b*x)))/b - (csch(a - c)*log(cosh(c + b*x)))/b]
    @test_int [sech(a + b*x)*sech(c - b*x), x, 3, -((csch(a + c)*log(cosh(c - b*x)))/b) + (csch(a + c)*log(cosh(a + b*x)))/b]


    @test_int [csch(a + b*x)*csch(c + b*x), x, 3, -((csch(a - c)*log(sinh(a + b*x)))/b) + (csch(a - c)*log(sinh(c + b*x)))/b]
    @test_int [csch(a + b*x)*csch(c - b*x), x, 3, -((csch(a + c)*log(sinh(c - b*x)))/b) + (csch(a + c)*log(sinh(a + b*x)))/b]


    @test_int [sinh(a + b*x)*tanh(c + b*x)^1, x, 3, -((atan(sinh(c + b*x))*cosh(a - c))/b) + sinh(a + b*x)/b]
    @test_int [sinh(a + b*x)*tanh(c + b*x)^2, x, 6, cosh(a + b*x)/b + (cosh(a - c)*sech(c + b*x))/b - (atan(sinh(c + b*x))*sinh(a - c))/b]
    @test_int [sinh(a + b*x)*tanh(c + b*x)^3, x, 9, -((3*atan(sinh(c + b*x))*cosh(a - c))/(2*b)) + (sech(c + b*x)*sinh(a - c))/b + sinh(a + b*x)/b + (cosh(a - c)*sech(c + b*x)*tanh(c + b*x))/(2*b)]

    @test_int [sinh(a + b*x)*coth(c + b*x)^1, x, 3, -((atanh(cosh(c + b*x))*sinh(a - c))/b) + sinh(a + b*x)/b]
    @test_int [sinh(a + b*x)*coth(c + b*x)^2, x, 6, -((atanh(cosh(c + b*x))*cosh(a - c))/b) + cosh(a + b*x)/b - (csch(c + b*x)*sinh(a - c))/b]
    @test_int [sinh(a + b*x)*coth(c + b*x)^3, x, 9, -((cosh(a - c)*csch(c + b*x))/b) - (3*atanh(cosh(c + b*x))*sinh(a - c))/(2*b) - (coth(c + b*x)*csch(c + b*x)*sinh(a - c))/(2*b) + sinh(a + b*x)/b]

    @test_int [sinh(a + b*x)*sech(c + b*x)^1, x, 3, (cosh(a - c)*log(cosh(c + b*x)))/b + x*sinh(a - c)]
    @test_int [sinh(a + b*x)*sech(c + b*x)^2, x, 4, -((cosh(a - c)*sech(c + b*x))/b) + (atan(sinh(c + b*x))*sinh(a - c))/b]
    @test_int [sinh(a + b*x)*sech(c + b*x)^3, x, 5, -((cosh(a - c)*sech(c + b*x)^2)/(2*b)) + (sinh(a - c)*tanh(c + b*x))/b]

    @test_int [sinh(a + b*x)*csch(c + b*x)^1, x, 3, x*cosh(a - c) + (log(sinh(c + b*x))*sinh(a - c))/b]
    @test_int [sinh(a + b*x)*csch(c + b*x)^2, x, 4, -((atanh(cosh(c + b*x))*cosh(a - c))/b) - (csch(c + b*x)*sinh(a - c))/b]
    @test_int [sinh(a + b*x)*csch(c + b*x)^3, x, 5, -((cosh(a - c)*coth(c + b*x))/b) - (csch(c + b*x)^2*sinh(a - c))/(2*b)]


    @test_int [cosh(a + b*x)*tanh(c + b*x)^1, x, 3, cosh(a + b*x)/b - (atan(sinh(c + b*x))*sinh(a - c))/b]
    @test_int [cosh(a + b*x)*tanh(c + b*x)^2, x, 6, -((atan(sinh(c + b*x))*cosh(a - c))/b) + (sech(c + b*x)*sinh(a - c))/b + sinh(a + b*x)/b]
    @test_int [cosh(a + b*x)*tanh(c + b*x)^3, x, 9, cosh(a + b*x)/b + (cosh(a - c)*sech(c + b*x))/b - (3*atan(sinh(c + b*x))*sinh(a - c))/(2*b) + (sech(c + b*x)*sinh(a - c)*tanh(c + b*x))/(2*b)]

    @test_int [cosh(a + b*x)*coth(c + b*x)^1, x, 3, -((atanh(cosh(c + b*x))*cosh(a - c))/b) + cosh(a + b*x)/b]
    @test_int [cosh(a + b*x)*coth(c + b*x)^2, x, 6, -((cosh(a - c)*csch(c + b*x))/b) - (atanh(cosh(c + b*x))*sinh(a - c))/b + sinh(a + b*x)/b]
    @test_int [cosh(a + b*x)*coth(c + b*x)^3, x, 9, -((3*atanh(cosh(c + b*x))*cosh(a - c))/(2*b)) + cosh(a + b*x)/b - (cosh(a - c)*coth(c + b*x)*csch(c + b*x))/(2*b) - (csch(c + b*x)*sinh(a - c))/b]

    @test_int [cosh(a + b*x)*sech(c + b*x)^1, x, 3, x*cosh(a - c) + (log(cosh(c + b*x))*sinh(a - c))/b]
    @test_int [cosh(a + b*x)*sech(c + b*x)^2, x, 4, (atan(sinh(c + b*x))*cosh(a - c))/b - (sech(c + b*x)*sinh(a - c))/b]
    @test_int [cosh(a + b*x)*sech(c + b*x)^3, x, 5, -((sech(c + b*x)^2*sinh(a - c))/(2*b)) + (cosh(a - c)*tanh(c + b*x))/b]

    @test_int [cosh(a + b*x)*csch(c + b*x)^1, x, 3, (cosh(a - c)*log(sinh(c + b*x)))/b + x*sinh(a - c)]
    @test_int [cosh(a + b*x)*csch(c + b*x)^2, x, 4, -((cosh(a - c)*csch(c + b*x))/b) - (atanh(cosh(c + b*x))*sinh(a - c))/b]
    @test_int [cosh(a + b*x)*csch(c + b*x)^3, x, 5, -((cosh(a - c)*csch(c + b*x)^2)/(2*b)) - (coth(c + b*x)*sinh(a - c))/b]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(a+b*x)^m*Hyper(c+d*x)^n=#


    @test_int [sinh(a + b*x)*sinh(c + d*x)^1, x, 4, -(sinh(a - c + (b - d)*x)/(2*(b - d))) + sinh(a + c + (b + d)*x)/(2*(b + d))]
    @test_int [sinh(a + b*x)*sinh(c + d*x)^2, x, 5, -(cosh(a + b*x)/(2*b)) + cosh(a - 2*c + (b - 2*d)*x)/(4*(b - 2*d)) + cosh(a + 2*c + (b + 2*d)*x)/(4*(b + 2*d))]
    @test_int [sinh(a + b*x)*sinh(c + d*x)^3, x, 6, -(sinh(a - 3*c + (b - 3*d)*x)/(8*(b - 3*d))) + (3*sinh(a - c + (b - d)*x))/(8*(b - d)) - (3*sinh(a + c + (b + d)*x))/(8*(b + d)) + sinh(a + 3*c + (b + 3*d)*x)/(8*(b + 3*d))]

    @test_int [sinh(a + b*x)^2*sinh(c + d*x)^2, x, 6, x/4 - sinh(2*a + 2*b*x)/(8*b) + sinh(2*(a - c) + 2*(b - d)*x)/(16*(b - d)) - sinh(2*c + 2*d*x)/(8*d) + sinh(2*(a + c) + 2*(b + d)*x)/(16*(b + d))]
    @test_int [sinh(a + b*x)^2*sinh(c + d*x)^3, x, 8, -(cosh(2*a - 3*c + (2*b - 3*d)*x)/(16*(2*b - 3*d))) + (3*cosh(2*a - c + (2*b - d)*x))/(16*(2*b - d)) + (3*cosh(c + d*x))/(8*d) - cosh(3*c + 3*d*x)/(24*d) - (3*cosh(2*a + c + (2*b + d)*x))/(16*(2*b + d)) + cosh(2*a + 3*c + (2*b + 3*d)*x)/(16*(2*b + 3*d))]

    @test_int [sinh(a + b*x)^3*sinh(c + d*x)^3, x, 10, (3*sinh(a - 3*c + (b - 3*d)*x))/(32*(b - 3*d)) - (9*sinh(a - c + (b - d)*x))/(32*(b - d)) - sinh(3*(a - c) + 3*(b - d)*x)/(96*(b - d)) + (3*sinh(3*a - c + (3*b - d)*x))/(32*(3*b - d)) + (9*sinh(a + c + (b + d)*x))/(32*(b + d)) + sinh(3*(a + c) + 3*(b + d)*x)/(96*(b + d)) - (3*sinh(3*a + c + (3*b + d)*x))/(32*(3*b + d)) - (3*sinh(a + 3*c + (b + 3*d)*x))/(32*(b + 3*d))]


    @test_int [cosh(a + b*x)*cosh(c + d*x)^1, x, 4, sinh(a - c + (b - d)*x)/(2*(b - d)) + sinh(a + c + (b + d)*x)/(2*(b + d))]
    @test_int [cosh(a + b*x)*cosh(c + d*x)^2, x, 5, sinh(a + b*x)/(2*b) + sinh(a - 2*c + (b - 2*d)*x)/(4*(b - 2*d)) + sinh(a + 2*c + (b + 2*d)*x)/(4*(b + 2*d))]
    @test_int [cosh(a + b*x)*cosh(c + d*x)^3, x, 6, sinh(a - 3*c + (b - 3*d)*x)/(8*(b - 3*d)) + (3*sinh(a - c + (b - d)*x))/(8*(b - d)) + (3*sinh(a + c + (b + d)*x))/(8*(b + d)) + sinh(a + 3*c + (b + 3*d)*x)/(8*(b + 3*d))]

    @test_int [cosh(a + b*x)^2*cosh(c + d*x)^2, x, 6, x/4 + sinh(2*a + 2*b*x)/(8*b) + sinh(2*(a - c) + 2*(b - d)*x)/(16*(b - d)) + sinh(2*c + 2*d*x)/(8*d) + sinh(2*(a + c) + 2*(b + d)*x)/(16*(b + d))]
    @test_int [cosh(a + b*x)^2*cosh(c + d*x)^3, x, 8, sinh(2*a - 3*c + (2*b - 3*d)*x)/(16*(2*b - 3*d)) + (3*sinh(2*a - c + (2*b - d)*x))/(16*(2*b - d)) + (3*sinh(c + d*x))/(8*d) + sinh(3*c + 3*d*x)/(24*d) + (3*sinh(2*a + c + (2*b + d)*x))/(16*(2*b + d)) + sinh(2*a + 3*c + (2*b + 3*d)*x)/(16*(2*b + 3*d))]

    @test_int [cosh(a + b*x)^3*cosh(c + d*x)^3, x, 10, (3*sinh(a - 3*c + (b - 3*d)*x))/(32*(b - 3*d)) + (9*sinh(a - c + (b - d)*x))/(32*(b - d)) + sinh(3*(a - c) + 3*(b - d)*x)/(96*(b - d)) + (3*sinh(3*a - c + (3*b - d)*x))/(32*(3*b - d)) + (9*sinh(a + c + (b + d)*x))/(32*(b + d)) + sinh(3*(a + c) + 3*(b + d)*x)/(96*(b + d)) + (3*sinh(3*a + c + (3*b + d)*x))/(32*(3*b + d)) + (3*sinh(a + 3*c + (b + 3*d)*x))/(32*(b + 3*d))]


    @test_int [sinh(a + b*x)*cosh(c + d*x)^1, x, 4, cosh(a - c + (b - d)*x)/(2*(b - d)) + cosh(a + c + (b + d)*x)/(2*(b + d))]
    @test_int [sinh(a + b*x)*cosh(c + d*x)^2, x, 5, cosh(a + b*x)/(2*b) + cosh(a - 2*c + (b - 2*d)*x)/(4*(b - 2*d)) + cosh(a + 2*c + (b + 2*d)*x)/(4*(b + 2*d))]
    @test_int [sinh(a + b*x)*cosh(c + d*x)^3, x, 6, cosh(a - 3*c + (b - 3*d)*x)/(8*(b - 3*d)) + (3*cosh(a - c + (b - d)*x))/(8*(b - d)) + (3*cosh(a + c + (b + d)*x))/(8*(b + d)) + cosh(a + 3*c + (b + 3*d)*x)/(8*(b + 3*d))]

    @test_int [sinh(a + b*x)^2*cosh(c + d*x^1), x, 5, sinh(2*a - c + (2*b - d)*x)/(4*(2*b - d)) - sinh(c + d*x)/(2*d) + sinh(2*a + c + (2*b + d)*x)/(4*(2*b + d))]
    @test_int [sinh(a + b*x)^2*cosh(c + d*x)^2, x, 6, -(x/4) + sinh(2*a + 2*b*x)/(8*b) + sinh(2*(a - c) + 2*(b - d)*x)/(16*(b - d)) - sinh(2*c + 2*d*x)/(8*d) + sinh(2*(a + c) + 2*(b + d)*x)/(16*(b + d))]
    @test_int [sinh(a + b*x)^2*cosh(c + d*x)^3, x, 8, sinh(2*a - 3*c + (2*b - 3*d)*x)/(16*(2*b - 3*d)) + (3*sinh(2*a - c + (2*b - d)*x))/(16*(2*b - d)) - (3*sinh(c + d*x))/(8*d) - sinh(3*c + 3*d*x)/(24*d) + (3*sinh(2*a + c + (2*b + d)*x))/(16*(2*b + d)) + sinh(2*a + 3*c + (2*b + 3*d)*x)/(16*(2*b + 3*d))]

    @test_int [sinh(a + b*x)^3*cosh(c + d*x)^1, x, 6, -((3*cosh(a - c + (b - d)*x))/(8*(b - d))) + cosh(3*a - c + (3*b - d)*x)/(8*(3*b - d)) - (3*cosh(a + c + (b + d)*x))/(8*(b + d)) + cosh(3*a + c + (3*b + d)*x)/(8*(3*b + d))]
    @test_int [sinh(a + b*x)^3*cosh(c + d*x)^2, x, 8, -((3*cosh(a + b*x))/(8*b)) + cosh(3*a + 3*b*x)/(24*b) - (3*cosh(a - 2*c + (b - 2*d)*x))/(16*(b - 2*d)) + cosh(3*a - 2*c + (3*b - 2*d)*x)/(16*(3*b - 2*d)) - (3*cosh(a + 2*c + (b + 2*d)*x))/(16*(b + 2*d)) + cosh(3*a + 2*c + (3*b + 2*d)*x)/(16*(3*b + 2*d))]
    @test_int [sinh(a + b*x)^3*cosh(c + d*x)^3, x, 10, -((3*cosh(a - 3*c + (b - 3*d)*x))/(32*(b - 3*d))) - (9*cosh(a - c + (b - d)*x))/(32*(b - d)) + cosh(3*(a - c) + 3*(b - d)*x)/(96*(b - d)) + (3*cosh(3*a - c + (3*b - d)*x))/(32*(3*b - d)) - (9*cosh(a + c + (b + d)*x))/(32*(b + d)) + cosh(3*(a + c) + 3*(b + d)*x)/(96*(b + d)) + (3*cosh(3*a + c + (3*b + d)*x))/(32*(3*b + d)) - (3*cosh(a + 3*c + (b + 3*d)*x))/(32*(b + 3*d))]


    @test_int [sinh(a + b*x)*tanh(c + d*x), x, 6, ℯ^(-a - b*x)/(2*b) + ℯ^(a + b*x)/(2*b) - (ℯ^(-a - b*x)*Hypergeometric2F1(1, -(b/(2*d)), 1 - b/(2*d), -ℯ^(2*(c + d*x))))/b - (ℯ^(a + b*x)*Hypergeometric2F1(1, b/(2*d), 1 + b/(2*d), -ℯ^(2*(c + d*x))))/b]
    @test_int [sinh(a + b*x)*coth(c + d*x), x, 6, ℯ^(-a - b*x)/(2*b) + ℯ^(a + b*x)/(2*b) - (ℯ^(-a - b*x)*Hypergeometric2F1(1, -(b/(2*d)), 1 - b/(2*d), ℯ^(2*(c + d*x))))/b - (ℯ^(a + b*x)*Hypergeometric2F1(1, b/(2*d), 1 + b/(2*d), ℯ^(2*(c + d*x))))/b]


    @test_int [cosh(a + b*x)*coth(c + d*x), x, 6, -(ℯ^(-a - b*x)/(2*b)) + ℯ^(a + b*x)/(2*b) + (ℯ^(-a - b*x)*Hypergeometric2F1(1, -(b/(2*d)), 1 - b/(2*d), ℯ^(2*(c + d*x))))/b - (ℯ^(a + b*x)*Hypergeometric2F1(1, b/(2*d), 1 + b/(2*d), ℯ^(2*(c + d*x))))/b]
    @test_int [cosh(a + b*x)*tanh(c + d*x), x, 6, -(ℯ^(-a - b*x)/(2*b)) + ℯ^(a + b*x)/(2*b) + (ℯ^(-a - b*x)*Hypergeometric2F1(1, -(b/(2*d)), 1 - b/(2*d), -ℯ^(2*(c + d*x))))/b - (ℯ^(a + b*x)*Hypergeometric2F1(1, b/(2*d), 1 + b/(2*d), -ℯ^(2*(c + d*x))))/b]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(m*x)*Hyper(n*x)=#


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(m*x)*sinh(n*x)=#


    @test_int [sinh(2*x)*sinh(x), x, 1, (2*sinh(x)^3)/3, -(sinh(x)/2) + (1/6)*sinh(3*x)]
    @test_int [sinh(3*x)*sinh(x), x, 1, (-(1/4))*sinh(2*x) + (1/8)*sinh(4*x)]
    @test_int [sinh(4*x)*sinh(x), x, 1, (-(1/6))*sinh(3*x) + (1/10)*sinh(5*x)]
    @test_int [sinh(m*x)*sinh(x), x, 4, -(sinh((1 - m)*x)/(2*(1 - m))) + sinh((1 + m)*x)/(2*(1 + m))]


    @test_int [cosh(2*x)*sinh(x), x, 1, -(cosh(x)/2) + (1/6)*cosh(3*x)]
    @test_int [cosh(3*x)*sinh(x), x, 1, (-(1/4))*cosh(2*x) + (1/8)*cosh(4*x)]
    @test_int [cosh(4*x)*sinh(x), x, 1, (-(1/6))*cosh(3*x) + (1/10)*cosh(5*x)]
    @test_int [cosh(m*x)*sinh(x), x, 4, cosh((1 - m)*x)/(2*(1 - m)) + cosh((1 + m)*x)/(2*(1 + m))]


    @test_int [tanh(2*x)*sinh(x), x, 4, -(atan(sqrt(2)*sinh(x))/sqrt(2)) + sinh(x)]
    @test_int [tanh(3*x)*sinh(x), x, 5, (-(1/3))*atan(sinh(x)) - (1/3)*atan(2*sinh(x)) + sinh(x)]
    @test_int [tanh(4*x)*sinh(x), x, 6, (-(1/4))*sqrt(2 - sqrt(2))*atan((2*sinh(x))/sqrt(2 - sqrt(2))) - (1/4)*sqrt(2 + sqrt(2))*atan((2*sinh(x))/sqrt(2 + sqrt(2))) + sinh(x)]
    @test_int [tanh(5*x)*sinh(x), x, 9, (-(1/5))*atan(sinh(x)) - (1/5)*sqrt((1/2)*(3 + sqrt(5)))*atan(2*sqrt(2/(3 + sqrt(5)))*sinh(x)) - (1/5)*sqrt((1/2)*(3 - sqrt(5)))*atan(sqrt(2*(3 + sqrt(5)))*sinh(x)) + sinh(x)]
    @test_int [tanh(6*x)*sinh(x), x, 10, -(atan(sqrt(2)*sinh(x))/(3*sqrt(2))) - (1/6)*sqrt(2 - sqrt(3))*atan((2*sinh(x))/sqrt(2 - sqrt(3))) - (1/6)*sqrt(2 + sqrt(3))*atan((2*sinh(x))/sqrt(2 + sqrt(3))) + sinh(x)]
    @test_int [tanh(n*x)*sinh(x), x, 6, 1/(ℯ^x*2) + ℯ^x/2 - Hypergeometric2F1(1, -(1/(2*n)), 1 - 1/(2*n), -ℯ^(2*n*x))/ℯ^x - ℯ^x*Hypergeometric2F1(1, 1/(2*n), (1/2)*(2 + 1/n), -ℯ^(2*n*x))]


    @test_int [coth(2*x)*sinh(x), x, 3, (-(1/2))*atan(sinh(x)) + sinh(x)]
    @test_int [coth(3*x)*sinh(x), x, 3, -(atan((2*sinh(x))/sqrt(3))/sqrt(3)) + sinh(x)]
    @test_int [coth(4*x)*sinh(x), x, 6, (-(1/4))*atan(sinh(x)) - atan(sqrt(2)*sinh(x))/(2*sqrt(2)) + sinh(x)]
    @test_int [coth(5*x)*sinh(x), x, 6, (-(1/5))*sqrt((1/2)*(5 + sqrt(5)))*atan(2*sqrt(2/(5 + sqrt(5)))*sinh(x)) - (1/5)*sqrt((1/2)*(5 - sqrt(5)))*atan(sqrt((2/5)*(5 + sqrt(5)))*sinh(x)) + sinh(x)]
    @test_int [coth(6*x)*sinh(x), x, 7, (-(1/6))*atan(sinh(x)) - (1/6)*atan(2*sinh(x)) - atan((2*sinh(x))/sqrt(3))/(2*sqrt(3)) + sinh(x)]


    @test_int [sech(2*x)*sinh(x), x, 2, -(atanh(sqrt(2)*cosh(x))/sqrt(2))]
    @test_int [sech(3*x)*sinh(x), x, 5, (-(1/3))*log(cosh(x)) + (1/6)*log(3 - 4*cosh(x)^2)]
    @test_int [sech(4*x)*sinh(x), x, 4, atanh((2*cosh(x))/sqrt(2 - sqrt(2)))/(2*sqrt(2*(2 - sqrt(2)))) - atanh((2*cosh(x))/sqrt(2 + sqrt(2)))/(2*sqrt(2*(2 + sqrt(2))))]
    @test_int [sech(5*x)*sinh(x), x, 7, (1/5)*log(cosh(x)) - (1/20)*(1 + sqrt(5))*log(5 - sqrt(5) - 8*cosh(x)^2) - (1/20)*(1 - sqrt(5))*log(5 + sqrt(5) - 8*cosh(x)^2)]
    @test_int [sech(6*x)*sinh(x), x, 7, atanh(sqrt(2)*cosh(x))/(3*sqrt(2)) - atanh((2*cosh(x))/sqrt(2 - sqrt(3)))/(6*sqrt(2 - sqrt(3))) - atanh((2*cosh(x))/sqrt(2 + sqrt(3)))/(6*sqrt(2 + sqrt(3)))]


    @test_int [csch(2*x)*sinh(x), x, 2, (1/2)*atan(sinh(x))]
    @test_int [csch(3*x)*sinh(x), x, 2, atan(tanh(x)/sqrt(3))/sqrt(3)]
    @test_int [csch(4*x)*sinh(x), x, 4, (-(1/4))*atan(sinh(x)) + atan(sqrt(2)*sinh(x))/(2*sqrt(2))]
    @test_int [csch(5*x)*sinh(x), x, 4, (1/5)*sqrt((1/2)*(5 - sqrt(5)))*atan(tanh(x)/sqrt(5 - 2*sqrt(5))) - (1/5)*sqrt((1/2)*(5 + sqrt(5)))*atan(tanh(x)/sqrt(5 + 2*sqrt(5)))]
    @test_int [csch(6*x)*sinh(x), x, 7, (1/6)*atan(sinh(x)) + (1/6)*atan(2*sinh(x)) - atan((2*sinh(x))/sqrt(3))/(2*sqrt(3))]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(m*x)*cosh(n*x)=#


    @test_int [sinh(2*x)*cosh(x), x, 1, (2*cosh(x)^3)/3, cosh(x)/2 + (1/6)*cosh(3*x)]
    @test_int [sinh(3*x)*cosh(x), x, 1, (1/4)*cosh(2*x) + (1/8)*cosh(4*x)]
    @test_int [sinh(4*x)*cosh(x), x, 1, (1/6)*cosh(3*x) + (1/10)*cosh(5*x)]
    @test_int [sinh(m*x)*cosh(x), x, 4, -(cosh((1 - m)*x)/(2*(1 - m))) + cosh((1 + m)*x)/(2*(1 + m))]


    @test_int [cosh(2*x)*cosh(x), x, 1, sinh(x)/2 + (1/6)*sinh(3*x)]
    @test_int [cosh(3*x)*cosh(x), x, 1, (1/4)*sinh(2*x) + (1/8)*sinh(4*x)]
    @test_int [cosh(4*x)*cosh(x), x, 1, (1/6)*sinh(3*x) + (1/10)*sinh(5*x)]
    @test_int [cosh(m*x)*cosh(x), x, 4, sinh((1 - m)*x)/(2*(1 - m)) + sinh((1 + m)*x)/(2*(1 + m))]


    @test_int [tanh(2*x)*cosh(x), x, 4, -(atanh(sqrt(2)*cosh(x))/sqrt(2)) + cosh(x)]
    @test_int [tanh(3*x)*cosh(x), x, 3, -(atanh((2*cosh(x))/sqrt(3))/sqrt(3)) + cosh(x)]
    @test_int [tanh(4*x)*cosh(x), x, 6, (-(1/4))*sqrt(2 - sqrt(2))*atanh((2*cosh(x))/sqrt(2 - sqrt(2))) - (1/4)*sqrt(2 + sqrt(2))*atanh((2*cosh(x))/sqrt(2 + sqrt(2))) + cosh(x)]
    @test_int [tanh(5*x)*cosh(x), x, 6, (-(1/5))*sqrt((1/2)*(5 + sqrt(5)))*atanh(2*sqrt(2/(5 + sqrt(5)))*cosh(x)) - (1/5)*sqrt((1/2)*(5 - sqrt(5)))*atanh(sqrt((2/5)*(5 + sqrt(5)))*cosh(x)) + cosh(x)]
    @test_int [tanh(6*x)*cosh(x), x, 10, -(atanh(sqrt(2)*cosh(x))/(3*sqrt(2))) - (1/6)*sqrt(2 - sqrt(3))*atanh((2*cosh(x))/sqrt(2 - sqrt(3))) - (1/6)*sqrt(2 + sqrt(3))*atanh((2*cosh(x))/sqrt(2 + sqrt(3))) + cosh(x)]


    @test_int [coth(2*x)*cosh(x), x, 4, (-(1/2))*atanh(cosh(x)) + cosh(x)]
    @test_int [coth(3*x)*cosh(x), x, 9, cosh(x) + (1/6)*log(1 - 2*cosh(x)) + (1/6)*log(1 - cosh(x)) - (1/6)*log(1 + cosh(x)) - (1/6)*log(1 + 2*cosh(x))]
    @test_int [coth(4*x)*cosh(x), x, 6, (-(1/4))*atanh(cosh(x)) - atanh(sqrt(2)*cosh(x))/(2*sqrt(2)) + cosh(x)]
    @test_int [coth(5*x)*cosh(x), x, 10, (-(1/5))*atanh(cosh(x)) + cosh(x) + (1/20)*(1 - sqrt(5))*log(1 - sqrt(5) - 4*cosh(x)) + (1/20)*(1 + sqrt(5))*log(1 + sqrt(5) - 4*cosh(x)) - (1/20)*(1 - sqrt(5))*log(1 - sqrt(5) + 4*cosh(x)) - (1/20)*(1 + sqrt(5))*log(1 + sqrt(5) + 4*cosh(x))]
    @test_int [coth(6*x)*cosh(x), x, 7, (-(1/6))*atanh(cosh(x)) - (1/6)*atanh(2*cosh(x)) - atanh((2*cosh(x))/sqrt(3))/(2*sqrt(3)) + cosh(x)]
    @test_int [coth(n*x)*cosh(x), x, 6, -(1/(ℯ^x*2)) + ℯ^x/2 + Hypergeometric2F1(1, -(1/(2*n)), 1 - 1/(2*n), ℯ^(2*n*x))/ℯ^x - ℯ^x*Hypergeometric2F1(1, 1/(2*n), (1/2)*(2 + 1/n), ℯ^(2*n*x))]


    @test_int [sech(2*x)*cosh(x), x, 2, atan(sqrt(2)*sinh(x))/sqrt(2)]
    @test_int [sech(3*x)*cosh(x), x, 2, atan(sqrt(3)*tanh(x))/sqrt(3)]
    @test_int [sech(4*x)*cosh(x), x, 4, atan((2*sinh(x))/sqrt(2 - sqrt(2)))/(2*sqrt(2*(2 - sqrt(2)))) - atan((2*sinh(x))/sqrt(2 + sqrt(2)))/(2*sqrt(2*(2 + sqrt(2))))]
    @test_int [sech(5*x)*cosh(x), x, 4, (-(1/5))*sqrt((1/2)*(5 - sqrt(5)))*atan(sqrt(5 - 2*sqrt(5))*tanh(x)) + (1/5)*sqrt((1/2)*(5 + sqrt(5)))*atan(sqrt(5 + 2*sqrt(5))*tanh(x))]
    @test_int [sech(6*x)*cosh(x), x, 7, -(atan(sqrt(2)*sinh(x))/(3*sqrt(2))) + atan((2*sinh(x))/sqrt(2 - sqrt(3)))/(6*sqrt(2 - sqrt(3))) + atan((2*sinh(x))/sqrt(2 + sqrt(3)))/(6*sqrt(2 + sqrt(3)))]


    @test_int [csch(2*x)*cosh(x), x, 2, (-(1/2))*atanh(cosh(x))]
    @test_int [csch(3*x)*cosh(x), x, 5, (1/3)*log(sinh(x)) - (1/6)*log(3 + 4*sinh(x)^2)]
    @test_int [csch(4*x)*cosh(x), x, 4, (-(1/4))*atanh(cosh(x)) + atanh(sqrt(2)*cosh(x))/(2*sqrt(2))]
    @test_int [csch(5*x)*cosh(x), x, 7, (1/5)*log(sinh(x)) - (1/20)*(1 + sqrt(5))*log(5 - sqrt(5) + 8*sinh(x)^2) - (1/20)*(1 - sqrt(5))*log(5 + sqrt(5) + 8*sinh(x)^2)]
    @test_int [csch(6*x)*cosh(x), x, 7, (-(1/6))*atanh(cosh(x)) - (1/6)*atanh(2*cosh(x)) + atanh((2*cosh(x))/sqrt(3))/(2*sqrt(3))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*Hyper(a+b*x)^n*Hyper(a+b*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cosh(a+b*x)^n*sinh(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p=1=#


    @test_int [x^m*cosh(a + b*x)*sinh(a + b*x), x, 5, (2^(-3 - m)*ℯ^(2*a)*x^m*Gamma(1 + m, -2*b*x))/(((-b)*x)^m*b) + (2^(-3 - m)*x^m*Gamma(1 + m, 2*b*x))/(ℯ^(2*a)*(b*x)^m*b)]

    @test_int [x^3*cosh(a + b*x)*sinh(a + b*x), x, 5, (3*x)/(8*b^3) + x^3/(4*b) - (3*cosh(a + b*x)*sinh(a + b*x))/(8*b^4) - (3*x^2*cosh(a + b*x)*sinh(a + b*x))/(4*b^2) + (3*x*sinh(a + b*x)^2)/(4*b^3) + (x^3*sinh(a + b*x)^2)/(2*b)]
    @test_int [x^2*cosh(a + b*x)*sinh(a + b*x), x, 3, x^2/(4*b) - (x*cosh(a + b*x)*sinh(a + b*x))/(2*b^2) + sinh(a + b*x)^2/(4*b^3) + (x^2*sinh(a + b*x)^2)/(2*b)]
    @test_int [x^1*cosh(a + b*x)*sinh(a + b*x), x, 3, x/(4*b) - (cosh(a + b*x)*sinh(a + b*x))/(4*b^2) + (x*sinh(a + b*x)^2)/(2*b)]
    @test_int [x^0*cosh(a + b*x)*sinh(a + b*x), x, 2, sinh(a + b*x)^2/(2*b)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)/x^1, x, 5, (1/2)*CoshIntegral(2*b*x)*sinh(2*a) + (1/2)*cosh(2*a)*SinhIntegral(2*b*x)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)/x^2, x, 6, b*cosh(2*a)*CoshIntegral(2*b*x) - sinh(2*a + 2*b*x)/(2*x) + b*sinh(2*a)*SinhIntegral(2*b*x)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)/x^3, x, 7, -((b*cosh(2*a + 2*b*x))/(2*x)) + b^2*CoshIntegral(2*b*x)*sinh(2*a) - sinh(2*a + 2*b*x)/(4*x^2) + b^2*cosh(2*a)*SinhIntegral(2*b*x)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)/x^4, x, 8, -((b*cosh(2*a + 2*b*x))/(6*x^2)) + (2/3)*b^3*cosh(2*a)*CoshIntegral(2*b*x) - sinh(2*a + 2*b*x)/(6*x^3) - (b^2*sinh(2*a + 2*b*x))/(3*x) + (2/3)*b^3*sinh(2*a)*SinhIntegral(2*b*x)]


    @test_int [x^m*cosh(a + b*x)^2*sinh(a + b*x), x, 8, (3^(-1 - m)*ℯ^(3*a)*x^m*Gamma(1 + m, -3*b*x))/(((-b)*x)^m*(8*b)) + (ℯ^a*x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(8*b)) + (x^m*Gamma(1 + m, b*x))/(ℯ^a*(b*x)^m*(8*b)) + (3^(-1 - m)*x^m*Gamma(1 + m, 3*b*x))/(ℯ^(3*a)*(b*x)^m*(8*b))]

    @test_int [x^3*cosh(a + b*x)^2*sinh(a + b*x), x, 7, (4*x*cosh(a + b*x))/(3*b^3) + (2*x*cosh(a + b*x)^3)/(9*b^3) + (x^3*cosh(a + b*x)^3)/(3*b) - (14*sinh(a + b*x))/(9*b^4) - (2*x^2*sinh(a + b*x))/(3*b^2) - (x^2*cosh(a + b*x)^2*sinh(a + b*x))/(3*b^2) - (2*sinh(a + b*x)^3)/(27*b^4)]
    @test_int [x^2*cosh(a + b*x)^2*sinh(a + b*x), x, 4, (4*cosh(a + b*x))/(9*b^3) + (2*cosh(a + b*x)^3)/(27*b^3) + (x^2*cosh(a + b*x)^3)/(3*b) - (4*x*sinh(a + b*x))/(9*b^2) - (2*x*cosh(a + b*x)^2*sinh(a + b*x))/(9*b^2)]
    @test_int [x^1*cosh(a + b*x)^2*sinh(a + b*x), x, 3, (x*cosh(a + b*x)^3)/(3*b) - sinh(a + b*x)/(3*b^2) - sinh(a + b*x)^3/(9*b^2)]
    @test_int [x^0*cosh(a + b*x)^2*sinh(a + b*x), x, 2, cosh(a + b*x)^3/(3*b)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)/x^1, x, 8, (1/4)*CoshIntegral(b*x)*sinh(a) + (1/4)*CoshIntegral(3*b*x)*sinh(3*a) + (1/4)*cosh(a)*SinhIntegral(b*x) + (1/4)*cosh(3*a)*SinhIntegral(3*b*x)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)/x^2, x, 10, (1/4)*b*cosh(a)*CoshIntegral(b*x) + (3/4)*b*cosh(3*a)*CoshIntegral(3*b*x) - sinh(a + b*x)/(4*x) - sinh(3*a + 3*b*x)/(4*x) + (1/4)*b*sinh(a)*SinhIntegral(b*x) + (3/4)*b*sinh(3*a)*SinhIntegral(3*b*x)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)/x^3, x, 12, -((b*cosh(a + b*x))/(8*x)) - (3*b*cosh(3*a + 3*b*x))/(8*x) + (1/8)*b^2*CoshIntegral(b*x)*sinh(a) + (9/8)*b^2*CoshIntegral(3*b*x)*sinh(3*a) - sinh(a + b*x)/(8*x^2) - sinh(3*a + 3*b*x)/(8*x^2) + (1/8)*b^2*cosh(a)*SinhIntegral(b*x) + (9/8)*b^2*cosh(3*a)*SinhIntegral(3*b*x)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)/x^4, x, 14, -((b*cosh(a + b*x))/(24*x^2)) - (b*cosh(3*a + 3*b*x))/(8*x^2) + (1/24)*b^3*cosh(a)*CoshIntegral(b*x) + (9/8)*b^3*cosh(3*a)*CoshIntegral(3*b*x) - sinh(a + b*x)/(12*x^3) - (b^2*sinh(a + b*x))/(24*x) - sinh(3*a + 3*b*x)/(12*x^3) - (3*b^2*sinh(3*a + 3*b*x))/(8*x) + (1/24)*b^3*sinh(a)*SinhIntegral(b*x) + (9/8)*b^3*sinh(3*a)*SinhIntegral(3*b*x)]


    @test_int [x^m*cosh(a + b*x)^3*sinh(a + b*x), x, 8, (ℯ^(4*a)*x^m*Gamma(1 + m, -4*b*x))/(2^(2*(3 + m))*((-b)*x)^m*b) + (2^(-4 - m)*ℯ^(2*a)*x^m*Gamma(1 + m, -2*b*x))/(((-b)*x)^m*b) + (2^(-4 - m)*x^m*Gamma(1 + m, 2*b*x))/(ℯ^(2*a)*(b*x)^m*b) + (x^m*Gamma(1 + m, 4*b*x))/(2^(2*(3 + m))*ℯ^(4*a)*(b*x)^m*b)]

    @test_int [x^3*cosh(a + b*x)^3*sinh(a + b*x), x, 9, -((45*x)/(256*b^3)) - (3*x^3)/(32*b) + (9*x*cosh(a + b*x)^2)/(32*b^3) + (3*x*cosh(a + b*x)^4)/(32*b^3) + (x^3*cosh(a + b*x)^4)/(4*b) - (45*cosh(a + b*x)*sinh(a + b*x))/(256*b^4) - (9*x^2*cosh(a + b*x)*sinh(a + b*x))/(32*b^2) - (3*cosh(a + b*x)^3*sinh(a + b*x))/(128*b^4) - (3*x^2*cosh(a + b*x)^3*sinh(a + b*x))/(16*b^2)]
    @test_int [x^2*cosh(a + b*x)^3*sinh(a + b*x), x, 4, -((3*x^2)/(32*b)) + (3*cosh(a + b*x)^2)/(32*b^3) + cosh(a + b*x)^4/(32*b^3) + (x^2*cosh(a + b*x)^4)/(4*b) - (3*x*cosh(a + b*x)*sinh(a + b*x))/(16*b^2) - (x*cosh(a + b*x)^3*sinh(a + b*x))/(8*b^2)]
    @test_int [x^1*cosh(a + b*x)^3*sinh(a + b*x), x, 4, -((3*x)/(32*b)) + (x*cosh(a + b*x)^4)/(4*b) - (3*cosh(a + b*x)*sinh(a + b*x))/(32*b^2) - (cosh(a + b*x)^3*sinh(a + b*x))/(16*b^2)]
    @test_int [x^0*cosh(a + b*x)^3*sinh(a + b*x), x, 2, cosh(a + b*x)^4/(4*b)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)/x^1, x, 8, (1/4)*CoshIntegral(2*b*x)*sinh(2*a) + (1/8)*CoshIntegral(4*b*x)*sinh(4*a) + (1/4)*cosh(2*a)*SinhIntegral(2*b*x) + (1/8)*cosh(4*a)*SinhIntegral(4*b*x)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)/x^2, x, 10, (1/2)*b*cosh(2*a)*CoshIntegral(2*b*x) + (1/2)*b*cosh(4*a)*CoshIntegral(4*b*x) - sinh(2*a + 2*b*x)/(4*x) - sinh(4*a + 4*b*x)/(8*x) + (1/2)*b*sinh(2*a)*SinhIntegral(2*b*x) + (1/2)*b*sinh(4*a)*SinhIntegral(4*b*x)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)/x^3, x, 12, -((b*cosh(2*a + 2*b*x))/(4*x)) - (b*cosh(4*a + 4*b*x))/(4*x) + (1/2)*b^2*CoshIntegral(2*b*x)*sinh(2*a) + b^2*CoshIntegral(4*b*x)*sinh(4*a) - sinh(2*a + 2*b*x)/(8*x^2) - sinh(4*a + 4*b*x)/(16*x^2) + (1/2)*b^2*cosh(2*a)*SinhIntegral(2*b*x) + b^2*cosh(4*a)*SinhIntegral(4*b*x)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)/x^4, x, 14, -((b*cosh(2*a + 2*b*x))/(12*x^2)) - (b*cosh(4*a + 4*b*x))/(12*x^2) + (1/3)*b^3*cosh(2*a)*CoshIntegral(2*b*x) + (4/3)*b^3*cosh(4*a)*CoshIntegral(4*b*x) - sinh(2*a + 2*b*x)/(12*x^3) - (b^2*sinh(2*a + 2*b*x))/(6*x) - sinh(4*a + 4*b*x)/(24*x^3) - (b^2*sinh(4*a + 4*b*x))/(3*x) + (1/3)*b^3*sinh(2*a)*SinhIntegral(2*b*x) + (4/3)*b^3*sinh(4*a)*SinhIntegral(4*b*x)]


    @test_int [sinh(x)*cosh(x)/x^1, x, 3, (1/2)*SinhIntegral(2*x)]
    @test_int [sinh(x)*cosh(x)/x^2, x, 4, CoshIntegral(2*x) - sinh(2*x)/(2*x)]
    @test_int [sinh(x)*cosh(x)/x^3, x, 5, -(cosh(2*x)/(2*x)) - sinh(2*x)/(4*x^2) + SinhIntegral(2*x)]


    #= ::Subsubsection::Closed:: =#
    #=p=2=#


    @test_int [x^m*cosh(a + b*x)*sinh(a + b*x)^2, x, 8, (3^(-1 - m)*ℯ^(3*a)*x^m*Gamma(1 + m, -3*b*x))/(((-b)*x)^m*(8*b)) - (ℯ^a*x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(8*b)) + (x^m*Gamma(1 + m, b*x))/(ℯ^a*(b*x)^m*(8*b)) - (3^(-1 - m)*x^m*Gamma(1 + m, 3*b*x))/(ℯ^(3*a)*(b*x)^m*(8*b))]

    @test_int [x^3*cosh(a + b*x)*sinh(a + b*x)^2, x, 7, (14*cosh(a + b*x))/(9*b^4) + (2*x^2*cosh(a + b*x))/(3*b^2) - (2*cosh(a + b*x)^3)/(27*b^4) - (4*x*sinh(a + b*x))/(3*b^3) - (x^2*cosh(a + b*x)*sinh(a + b*x)^2)/(3*b^2) + (2*x*sinh(a + b*x)^3)/(9*b^3) + (x^3*sinh(a + b*x)^3)/(3*b)]
    @test_int [x^2*cosh(a + b*x)*sinh(a + b*x)^2, x, 4, (4*x*cosh(a + b*x))/(9*b^2) - (4*sinh(a + b*x))/(9*b^3) - (2*x*cosh(a + b*x)*sinh(a + b*x)^2)/(9*b^2) + (2*sinh(a + b*x)^3)/(27*b^3) + (x^2*sinh(a + b*x)^3)/(3*b)]
    @test_int [x^1*cosh(a + b*x)*sinh(a + b*x)^2, x, 3, cosh(a + b*x)/(3*b^2) - cosh(a + b*x)^3/(9*b^2) + (x*sinh(a + b*x)^3)/(3*b)]
    @test_int [x^0*cosh(a + b*x)*sinh(a + b*x)^2, x, 2, sinh(a + b*x)^3/(3*b)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)^2/x^1, x, 8, (-(1/4))*cosh(a)*CoshIntegral(b*x) + (1/4)*cosh(3*a)*CoshIntegral(3*b*x) - (1/4)*sinh(a)*SinhIntegral(b*x) + (1/4)*sinh(3*a)*SinhIntegral(3*b*x)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)^2/x^2, x, 10, cosh(a + b*x)/(4*x) - cosh(3*a + 3*b*x)/(4*x) - (1/4)*b*CoshIntegral(b*x)*sinh(a) + (3/4)*b*CoshIntegral(3*b*x)*sinh(3*a) - (1/4)*b*cosh(a)*SinhIntegral(b*x) + (3/4)*b*cosh(3*a)*SinhIntegral(3*b*x)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)^2/x^3, x, 12, cosh(a + b*x)/(8*x^2) - cosh(3*a + 3*b*x)/(8*x^2) - (1/8)*b^2*cosh(a)*CoshIntegral(b*x) + (9/8)*b^2*cosh(3*a)*CoshIntegral(3*b*x) + (b*sinh(a + b*x))/(8*x) - (3*b*sinh(3*a + 3*b*x))/(8*x) - (1/8)*b^2*sinh(a)*SinhIntegral(b*x) + (9/8)*b^2*sinh(3*a)*SinhIntegral(3*b*x)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)^2/x^4, x, 14, cosh(a + b*x)/(12*x^3) + (b^2*cosh(a + b*x))/(24*x) - cosh(3*a + 3*b*x)/(12*x^3) - (3*b^2*cosh(3*a + 3*b*x))/(8*x) - (1/24)*b^3*CoshIntegral(b*x)*sinh(a) + (9/8)*b^3*CoshIntegral(3*b*x)*sinh(3*a) + (b*sinh(a + b*x))/(24*x^2) - (b*sinh(3*a + 3*b*x))/(8*x^2) - (1/24)*b^3*cosh(a)*SinhIntegral(b*x) + (9/8)*b^3*cosh(3*a)*SinhIntegral(3*b*x)]


    @test_int [x^m*cosh(a + b*x)^2*sinh(a + b*x)^2, x, 5, -(x^(1 + m)/(8*(1 + m))) + (ℯ^(4*a)*x^m*Gamma(1 + m, -4*b*x))/(2^(2*(3 + m))*((-b)*x)^m*b) - (x^m*Gamma(1 + m, 4*b*x))/(2^(2*(3 + m))*ℯ^(4*a)*(b*x)^m*b)]

    @test_int [x^3*cosh(a + b*x)^2*sinh(a + b*x)^2, x, 6, -(x^4/32) - (3*cosh(4*a + 4*b*x))/(1024*b^4) - (3*x^2*cosh(4*a + 4*b*x))/(128*b^2) + (3*x*sinh(4*a + 4*b*x))/(256*b^3) + (x^3*sinh(4*a + 4*b*x))/(32*b)]
    @test_int [x^2*cosh(a + b*x)^2*sinh(a + b*x)^2, x, 5, -(x^3/24) - (x*cosh(4*a + 4*b*x))/(64*b^2) + sinh(4*a + 4*b*x)/(256*b^3) + (x^2*sinh(4*a + 4*b*x))/(32*b)]
    @test_int [x^1*cosh(a + b*x)^2*sinh(a + b*x)^2, x, 4, -(x^2/16) - cosh(4*a + 4*b*x)/(128*b^2) + (x*sinh(4*a + 4*b*x))/(32*b)]
    @test_int [x^0*cosh(a + b*x)^2*sinh(a + b*x)^2, x, 3, -(x/8) - (cosh(a + b*x)*sinh(a + b*x))/(8*b) + (cosh(a + b*x)^3*sinh(a + b*x))/(4*b)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^2/x^1, x, 5, (1/8)*cosh(4*a)*CoshIntegral(4*b*x) - log(x)/8 + (1/8)*sinh(4*a)*SinhIntegral(4*b*x)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^2/x^2, x, 6, 1/(8*x) - cosh(4*a + 4*b*x)/(8*x) + (1/2)*b*CoshIntegral(4*b*x)*sinh(4*a) + (1/2)*b*cosh(4*a)*SinhIntegral(4*b*x)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^2/x^3, x, 7, 1/(16*x^2) - cosh(4*a + 4*b*x)/(16*x^2) + b^2*cosh(4*a)*CoshIntegral(4*b*x) - (b*sinh(4*a + 4*b*x))/(4*x) + b^2*sinh(4*a)*SinhIntegral(4*b*x)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^2/x^4, x, 8, 1/(24*x^3) - cosh(4*a + 4*b*x)/(24*x^3) - (b^2*cosh(4*a + 4*b*x))/(3*x) + (4/3)*b^3*CoshIntegral(4*b*x)*sinh(4*a) - (b*sinh(4*a + 4*b*x))/(12*x^2) + (4/3)*b^3*cosh(4*a)*SinhIntegral(4*b*x)]


    @test_int [x^m*cosh(a + b*x)^3*sinh(a + b*x)^2, x, 11, (5^(-1 - m)*ℯ^(5*a)*x^m*Gamma(1 + m, -5*b*x))/(((-b)*x)^m*(32*b)) + (3^(-1 - m)*ℯ^(3*a)*x^m*Gamma(1 + m, -3*b*x))/(((-b)*x)^m*(32*b)) - (ℯ^a*x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(16*b)) + (x^m*Gamma(1 + m, b*x))/(ℯ^a*(b*x)^m*(16*b)) - (3^(-1 - m)*x^m*Gamma(1 + m, 3*b*x))/(ℯ^(3*a)*(b*x)^m*(32*b)) - (5^(-1 - m)*x^m*Gamma(1 + m, 5*b*x))/(ℯ^(5*a)*(b*x)^m*(32*b))]

    @test_int [x^3*cosh(a + b*x)^3*sinh(a + b*x)^2, x, 14, (3*cosh(a + b*x))/(4*b^4) + (3*x^2*cosh(a + b*x))/(8*b^2) - cosh(3*a + 3*b*x)/(216*b^4) - (x^2*cosh(3*a + 3*b*x))/(48*b^2) - (3*cosh(5*a + 5*b*x))/(5000*b^4) - (3*x^2*cosh(5*a + 5*b*x))/(400*b^2) - (3*x*sinh(a + b*x))/(4*b^3) - (x^3*sinh(a + b*x))/(8*b) + (x*sinh(3*a + 3*b*x))/(72*b^3) + (x^3*sinh(3*a + 3*b*x))/(48*b) + (3*x*sinh(5*a + 5*b*x))/(1000*b^3) + (x^3*sinh(5*a + 5*b*x))/(80*b)]
    @test_int [x^2*cosh(a + b*x)^3*sinh(a + b*x)^2, x, 11, (x*cosh(a + b*x))/(4*b^2) - (x*cosh(3*a + 3*b*x))/(72*b^2) - (x*cosh(5*a + 5*b*x))/(200*b^2) - sinh(a + b*x)/(4*b^3) - (x^2*sinh(a + b*x))/(8*b) + sinh(3*a + 3*b*x)/(216*b^3) + (x^2*sinh(3*a + 3*b*x))/(48*b) + sinh(5*a + 5*b*x)/(1000*b^3) + (x^2*sinh(5*a + 5*b*x))/(80*b)]
    @test_int [x^1*cosh(a + b*x)^3*sinh(a + b*x)^2, x, 8, cosh(a + b*x)/(8*b^2) - cosh(3*a + 3*b*x)/(144*b^2) - cosh(5*a + 5*b*x)/(400*b^2) - (x*sinh(a + b*x))/(8*b) + (x*sinh(3*a + 3*b*x))/(48*b) + (x*sinh(5*a + 5*b*x))/(80*b)]
    @test_int [x^0*cosh(a + b*x)^3*sinh(a + b*x)^2, x, 3, sinh(a + b*x)^3/(3*b) + sinh(a + b*x)^5/(5*b)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)^2/x^1, x, 11, (-(1/8))*cosh(a)*CoshIntegral(b*x) + (1/16)*cosh(3*a)*CoshIntegral(3*b*x) + (1/16)*cosh(5*a)*CoshIntegral(5*b*x) - (1/8)*sinh(a)*SinhIntegral(b*x) + (1/16)*sinh(3*a)*SinhIntegral(3*b*x) + (1/16)*sinh(5*a)*SinhIntegral(5*b*x)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)^2/x^2, x, 14, cosh(a + b*x)/(8*x) - cosh(3*a + 3*b*x)/(16*x) - cosh(5*a + 5*b*x)/(16*x) - (1/8)*b*CoshIntegral(b*x)*sinh(a) + (3/16)*b*CoshIntegral(3*b*x)*sinh(3*a) + (5/16)*b*CoshIntegral(5*b*x)*sinh(5*a) - (1/8)*b*cosh(a)*SinhIntegral(b*x) + (3/16)*b*cosh(3*a)*SinhIntegral(3*b*x) + (5/16)*b*cosh(5*a)*SinhIntegral(5*b*x)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)^2/x^3, x, 17, cosh(a + b*x)/(16*x^2) - cosh(3*a + 3*b*x)/(32*x^2) - cosh(5*a + 5*b*x)/(32*x^2) - (1/16)*b^2*cosh(a)*CoshIntegral(b*x) + (9/32)*b^2*cosh(3*a)*CoshIntegral(3*b*x) + (25/32)*b^2*cosh(5*a)*CoshIntegral(5*b*x) + (b*sinh(a + b*x))/(16*x) - (3*b*sinh(3*a + 3*b*x))/(32*x) - (5*b*sinh(5*a + 5*b*x))/(32*x) - (1/16)*b^2*sinh(a)*SinhIntegral(b*x) + (9/32)*b^2*sinh(3*a)*SinhIntegral(3*b*x) + (25/32)*b^2*sinh(5*a)*SinhIntegral(5*b*x)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)^2/x^4, x, 20, cosh(a + b*x)/(24*x^3) + (b^2*cosh(a + b*x))/(48*x) - cosh(3*a + 3*b*x)/(48*x^3) - (3*b^2*cosh(3*a + 3*b*x))/(32*x) - cosh(5*a + 5*b*x)/(48*x^3) - (25*b^2*cosh(5*a + 5*b*x))/(96*x) - (1/48)*b^3*CoshIntegral(b*x)*sinh(a) + (9/32)*b^3*CoshIntegral(3*b*x)*sinh(3*a) + (125/96)*b^3*CoshIntegral(5*b*x)*sinh(5*a) + (b*sinh(a + b*x))/(48*x^2) - (b*sinh(3*a + 3*b*x))/(32*x^2) - (5*b*sinh(5*a + 5*b*x))/(96*x^2) - (1/48)*b^3*cosh(a)*SinhIntegral(b*x) + (9/32)*b^3*cosh(3*a)*SinhIntegral(3*b*x) + (125/96)*b^3*cosh(5*a)*SinhIntegral(5*b*x)]


    #= ::Subsubsection::Closed:: =#
    #=p=3=#


    @test_int [x^m*cosh(a + b*x)*sinh(a + b*x)^3, x, 8, (ℯ^(4*a)*x^m*Gamma(1 + m, -4*b*x))/(2^(2*(3 + m))*((-b)*x)^m*b) - (2^(-4 - m)*ℯ^(2*a)*x^m*Gamma(1 + m, -2*b*x))/(((-b)*x)^m*b) - (2^(-4 - m)*x^m*Gamma(1 + m, 2*b*x))/(ℯ^(2*a)*(b*x)^m*b) + (x^m*Gamma(1 + m, 4*b*x))/(2^(2*(3 + m))*ℯ^(4*a)*(b*x)^m*b)]

    @test_int [x^3*cosh(a + b*x)*sinh(a + b*x)^3, x, 9, -((45*x)/(256*b^3)) - (3*x^3)/(32*b) + (45*cosh(a + b*x)*sinh(a + b*x))/(256*b^4) + (9*x^2*cosh(a + b*x)*sinh(a + b*x))/(32*b^2) - (9*x*sinh(a + b*x)^2)/(32*b^3) - (3*cosh(a + b*x)*sinh(a + b*x)^3)/(128*b^4) - (3*x^2*cosh(a + b*x)*sinh(a + b*x)^3)/(16*b^2) + (3*x*sinh(a + b*x)^4)/(32*b^3) + (x^3*sinh(a + b*x)^4)/(4*b)]
    @test_int [x^2*cosh(a + b*x)*sinh(a + b*x)^3, x, 4, -((3*x^2)/(32*b)) + (3*x*cosh(a + b*x)*sinh(a + b*x))/(16*b^2) - (3*sinh(a + b*x)^2)/(32*b^3) - (x*cosh(a + b*x)*sinh(a + b*x)^3)/(8*b^2) + sinh(a + b*x)^4/(32*b^3) + (x^2*sinh(a + b*x)^4)/(4*b)]
    @test_int [x^1*cosh(a + b*x)*sinh(a + b*x)^3, x, 4, -((3*x)/(32*b)) + (3*cosh(a + b*x)*sinh(a + b*x))/(32*b^2) - (cosh(a + b*x)*sinh(a + b*x)^3)/(16*b^2) + (x*sinh(a + b*x)^4)/(4*b)]
    @test_int [x^0*cosh(a + b*x)*sinh(a + b*x)^3, x, 2, sinh(a + b*x)^4/(4*b)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)^3/x^1, x, 8, (-(1/4))*CoshIntegral(2*b*x)*sinh(2*a) + (1/8)*CoshIntegral(4*b*x)*sinh(4*a) - (1/4)*cosh(2*a)*SinhIntegral(2*b*x) + (1/8)*cosh(4*a)*SinhIntegral(4*b*x)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)^3/x^2, x, 10, (-(1/2))*b*cosh(2*a)*CoshIntegral(2*b*x) + (1/2)*b*cosh(4*a)*CoshIntegral(4*b*x) + sinh(2*a + 2*b*x)/(4*x) - sinh(4*a + 4*b*x)/(8*x) - (1/2)*b*sinh(2*a)*SinhIntegral(2*b*x) + (1/2)*b*sinh(4*a)*SinhIntegral(4*b*x)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)^3/x^3, x, 12, (b*cosh(2*a + 2*b*x))/(4*x) - (b*cosh(4*a + 4*b*x))/(4*x) - (1/2)*b^2*CoshIntegral(2*b*x)*sinh(2*a) + b^2*CoshIntegral(4*b*x)*sinh(4*a) + sinh(2*a + 2*b*x)/(8*x^2) - sinh(4*a + 4*b*x)/(16*x^2) - (1/2)*b^2*cosh(2*a)*SinhIntegral(2*b*x) + b^2*cosh(4*a)*SinhIntegral(4*b*x)]
    @test_int [cosh(a + b*x)*sinh(a + b*x)^3/x^4, x, 14, (b*cosh(2*a + 2*b*x))/(12*x^2) - (b*cosh(4*a + 4*b*x))/(12*x^2) - (1/3)*b^3*cosh(2*a)*CoshIntegral(2*b*x) + (4/3)*b^3*cosh(4*a)*CoshIntegral(4*b*x) + sinh(2*a + 2*b*x)/(12*x^3) + (b^2*sinh(2*a + 2*b*x))/(6*x) - sinh(4*a + 4*b*x)/(24*x^3) - (b^2*sinh(4*a + 4*b*x))/(3*x) - (1/3)*b^3*sinh(2*a)*SinhIntegral(2*b*x) + (4/3)*b^3*sinh(4*a)*SinhIntegral(4*b*x)]


    @test_int [x^m*cosh(a + b*x)^2*sinh(a + b*x)^3, x, 11, (5^(-1 - m)*ℯ^(5*a)*x^m*Gamma(1 + m, -5*b*x))/(((-b)*x)^m*(32*b)) - (3^(-1 - m)*ℯ^(3*a)*x^m*Gamma(1 + m, -3*b*x))/(((-b)*x)^m*(32*b)) - (ℯ^a*x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(16*b)) - (x^m*Gamma(1 + m, b*x))/(ℯ^a*(b*x)^m*(16*b)) - (3^(-1 - m)*x^m*Gamma(1 + m, 3*b*x))/(ℯ^(3*a)*(b*x)^m*(32*b)) + (5^(-1 - m)*x^m*Gamma(1 + m, 5*b*x))/(ℯ^(5*a)*(b*x)^m*(32*b))]

    @test_int [x^3*cosh(a + b*x)^2*sinh(a + b*x)^3, x, 14, -((3*x*cosh(a + b*x))/(4*b^3)) - (x^3*cosh(a + b*x))/(8*b) - (x*cosh(3*a + 3*b*x))/(72*b^3) - (x^3*cosh(3*a + 3*b*x))/(48*b) + (3*x*cosh(5*a + 5*b*x))/(1000*b^3) + (x^3*cosh(5*a + 5*b*x))/(80*b) + (3*sinh(a + b*x))/(4*b^4) + (3*x^2*sinh(a + b*x))/(8*b^2) + sinh(3*a + 3*b*x)/(216*b^4) + (x^2*sinh(3*a + 3*b*x))/(48*b^2) - (3*sinh(5*a + 5*b*x))/(5000*b^4) - (3*x^2*sinh(5*a + 5*b*x))/(400*b^2)]
    @test_int [x^2*cosh(a + b*x)^2*sinh(a + b*x)^3, x, 11, -(cosh(a + b*x)/(4*b^3)) - (x^2*cosh(a + b*x))/(8*b) - cosh(3*a + 3*b*x)/(216*b^3) - (x^2*cosh(3*a + 3*b*x))/(48*b) + cosh(5*a + 5*b*x)/(1000*b^3) + (x^2*cosh(5*a + 5*b*x))/(80*b) + (x*sinh(a + b*x))/(4*b^2) + (x*sinh(3*a + 3*b*x))/(72*b^2) - (x*sinh(5*a + 5*b*x))/(200*b^2)]
    @test_int [x^1*cosh(a + b*x)^2*sinh(a + b*x)^3, x, 8, -((x*cosh(a + b*x))/(8*b)) - (x*cosh(3*a + 3*b*x))/(48*b) + (x*cosh(5*a + 5*b*x))/(80*b) + sinh(a + b*x)/(8*b^2) + sinh(3*a + 3*b*x)/(144*b^2) - sinh(5*a + 5*b*x)/(400*b^2)]
    @test_int [x^0*cosh(a + b*x)^2*sinh(a + b*x)^3, x, 3, -(cosh(a + b*x)^3/(3*b)) + cosh(a + b*x)^5/(5*b)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^3/x^1, x, 11, (-(1/8))*CoshIntegral(b*x)*sinh(a) - (1/16)*CoshIntegral(3*b*x)*sinh(3*a) + (1/16)*CoshIntegral(5*b*x)*sinh(5*a) - (1/8)*cosh(a)*SinhIntegral(b*x) - (1/16)*cosh(3*a)*SinhIntegral(3*b*x) + (1/16)*cosh(5*a)*SinhIntegral(5*b*x)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^3/x^2, x, 14, (-(1/8))*b*cosh(a)*CoshIntegral(b*x) - (3/16)*b*cosh(3*a)*CoshIntegral(3*b*x) + (5/16)*b*cosh(5*a)*CoshIntegral(5*b*x) + sinh(a + b*x)/(8*x) + sinh(3*a + 3*b*x)/(16*x) - sinh(5*a + 5*b*x)/(16*x) - (1/8)*b*sinh(a)*SinhIntegral(b*x) - (3/16)*b*sinh(3*a)*SinhIntegral(3*b*x) + (5/16)*b*sinh(5*a)*SinhIntegral(5*b*x)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^3/x^3, x, 17, (b*cosh(a + b*x))/(16*x) + (3*b*cosh(3*a + 3*b*x))/(32*x) - (5*b*cosh(5*a + 5*b*x))/(32*x) - (1/16)*b^2*CoshIntegral(b*x)*sinh(a) - (9/32)*b^2*CoshIntegral(3*b*x)*sinh(3*a) + (25/32)*b^2*CoshIntegral(5*b*x)*sinh(5*a) + sinh(a + b*x)/(16*x^2) + sinh(3*a + 3*b*x)/(32*x^2) - sinh(5*a + 5*b*x)/(32*x^2) - (1/16)*b^2*cosh(a)*SinhIntegral(b*x) - (9/32)*b^2*cosh(3*a)*SinhIntegral(3*b*x) + (25/32)*b^2*cosh(5*a)*SinhIntegral(5*b*x)]
    @test_int [cosh(a + b*x)^2*sinh(a + b*x)^3/x^4, x, 20, (b*cosh(a + b*x))/(48*x^2) + (b*cosh(3*a + 3*b*x))/(32*x^2) - (5*b*cosh(5*a + 5*b*x))/(96*x^2) - (1/48)*b^3*cosh(a)*CoshIntegral(b*x) - (9/32)*b^3*cosh(3*a)*CoshIntegral(3*b*x) + (125/96)*b^3*cosh(5*a)*CoshIntegral(5*b*x) + sinh(a + b*x)/(24*x^3) + (b^2*sinh(a + b*x))/(48*x) + sinh(3*a + 3*b*x)/(48*x^3) + (3*b^2*sinh(3*a + 3*b*x))/(32*x) - sinh(5*a + 5*b*x)/(48*x^3) - (25*b^2*sinh(5*a + 5*b*x))/(96*x) - (1/48)*b^3*sinh(a)*SinhIntegral(b*x) - (9/32)*b^3*sinh(3*a)*SinhIntegral(3*b*x) + (125/96)*b^3*sinh(5*a)*SinhIntegral(5*b*x)]


    @test_int [x^m*cosh(a + b*x)^3*sinh(a + b*x)^3, x, 8, (2^(-7 - m)*3^(-1 - m)*ℯ^(6*a)*x^m*Gamma(1 + m, -6*b*x))/(((-b)*x)^m*b) - (3*2^(-7 - m)*ℯ^(2*a)*x^m*Gamma(1 + m, -2*b*x))/(((-b)*x)^m*b) - (3*2^(-7 - m)*x^m*Gamma(1 + m, 2*b*x))/(ℯ^(2*a)*(b*x)^m*b) + (2^(-7 - m)*3^(-1 - m)*x^m*Gamma(1 + m, 6*b*x))/(ℯ^(6*a)*(b*x)^m*b)]

    @test_int [x^3*cosh(a + b*x)^3*sinh(a + b*x)^3, x, 10, -((9*x*cosh(2*a + 2*b*x))/(128*b^3)) - (3*x^3*cosh(2*a + 2*b*x))/(64*b) + (x*cosh(6*a + 6*b*x))/(1152*b^3) + (x^3*cosh(6*a + 6*b*x))/(192*b) + (9*sinh(2*a + 2*b*x))/(256*b^4) + (9*x^2*sinh(2*a + 2*b*x))/(128*b^2) - sinh(6*a + 6*b*x)/(6912*b^4) - (x^2*sinh(6*a + 6*b*x))/(384*b^2)]
    @test_int [x^2*cosh(a + b*x)^3*sinh(a + b*x)^3, x, 8, -((3*cosh(2*a + 2*b*x))/(128*b^3)) - (3*x^2*cosh(2*a + 2*b*x))/(64*b) + cosh(6*a + 6*b*x)/(3456*b^3) + (x^2*cosh(6*a + 6*b*x))/(192*b) + (3*x*sinh(2*a + 2*b*x))/(64*b^2) - (x*sinh(6*a + 6*b*x))/(576*b^2)]
    @test_int [x^1*cosh(a + b*x)^3*sinh(a + b*x)^3, x, 6, -((3*x*cosh(2*a + 2*b*x))/(64*b)) + (x*cosh(6*a + 6*b*x))/(192*b) + (3*sinh(2*a + 2*b*x))/(128*b^2) - sinh(6*a + 6*b*x)/(1152*b^2)]
    @test_int [x^0*cosh(a + b*x)^3*sinh(a + b*x)^3, x, 3, sinh(a + b*x)^4/(4*b) + sinh(a + b*x)^6/(6*b)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)^3/x^1, x, 8, (-(3/32))*CoshIntegral(2*b*x)*sinh(2*a) + (1/32)*CoshIntegral(6*b*x)*sinh(6*a) - (3/32)*cosh(2*a)*SinhIntegral(2*b*x) + (1/32)*cosh(6*a)*SinhIntegral(6*b*x)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)^3/x^2, x, 10, (-(3/16))*b*cosh(2*a)*CoshIntegral(2*b*x) + (3/16)*b*cosh(6*a)*CoshIntegral(6*b*x) + (3*sinh(2*a + 2*b*x))/(32*x) - sinh(6*a + 6*b*x)/(32*x) - (3/16)*b*sinh(2*a)*SinhIntegral(2*b*x) + (3/16)*b*sinh(6*a)*SinhIntegral(6*b*x)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)^3/x^3, x, 12, (3*b*cosh(2*a + 2*b*x))/(32*x) - (3*b*cosh(6*a + 6*b*x))/(32*x) - (3/16)*b^2*CoshIntegral(2*b*x)*sinh(2*a) + (9/16)*b^2*CoshIntegral(6*b*x)*sinh(6*a) + (3*sinh(2*a + 2*b*x))/(64*x^2) - sinh(6*a + 6*b*x)/(64*x^2) - (3/16)*b^2*cosh(2*a)*SinhIntegral(2*b*x) + (9/16)*b^2*cosh(6*a)*SinhIntegral(6*b*x)]
    @test_int [cosh(a + b*x)^3*sinh(a + b*x)^3/x^4, x, 14, (b*cosh(2*a + 2*b*x))/(32*x^2) - (b*cosh(6*a + 6*b*x))/(32*x^2) - (1/8)*b^3*cosh(2*a)*CoshIntegral(2*b*x) + (9/8)*b^3*cosh(6*a)*CoshIntegral(6*b*x) + sinh(2*a + 2*b*x)/(32*x^3) + (b^2*sinh(2*a + 2*b*x))/(16*x) - sinh(6*a + 6*b*x)/(96*x^3) - (3*b^2*sinh(6*a + 6*b*x))/(16*x) - (1/8)*b^3*sinh(2*a)*SinhIntegral(2*b*x) + (9/8)*b^3*sinh(6*a)*SinhIntegral(6*b*x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sech(a+b*x)^n*sinh(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p=1=#


    @test_int [x^m*sech(a + b*x)*sinh(a + b*x), x, 0, Unintegrable(x^m*tanh(a + b*x), x)]

    @test_int [x^3*sech(a + b*x)*sinh(a + b*x), x, 6, -(x^4/4) + (x^3*log(1 + ℯ^(2*(a + b*x))))/b + (3*x^2*PolyLog(2, -ℯ^(2*(a + b*x))))/(2*b^2) - (3*x*PolyLog(3, -ℯ^(2*(a + b*x))))/(2*b^3) + (3*PolyLog(4, -ℯ^(2*(a + b*x))))/(4*b^4)]
    @test_int [x^2*sech(a + b*x)*sinh(a + b*x), x, 5, -(x^3/3) + (x^2*log(1 + ℯ^(2*(a + b*x))))/b + (x*PolyLog(2, -ℯ^(2*(a + b*x))))/b^2 - PolyLog(3, -ℯ^(2*(a + b*x)))/(2*b^3)]
    @test_int [x^1*sech(a + b*x)*sinh(a + b*x), x, 4, -(x^2/2) + (x*log(1 + ℯ^(2*(a + b*x))))/b + PolyLog(2, -ℯ^(2*(a + b*x)))/(2*b^2)]
    @test_int [x^0*sech(a + b*x)*sinh(a + b*x), x, 1, log(cosh(a + b*x))/b]
    @test_int [sech(a + b*x)*sinh(a + b*x)/x^1, x, 0, Unintegrable(tanh(a + b*x)/x, x)]
    @test_int [sech(a + b*x)*sinh(a + b*x)/x^2, x, 0, Unintegrable(tanh(a + b*x)/x^2, x)]


    @test_int [x^m*sech(a + b*x)^2*sinh(a + b*x), x, 0, CannotIntegrate(x^m*sech(a + b*x)*tanh(a + b*x), x)]

    @test_int [x^3*sech(a + b*x)^2*sinh(a + b*x), x, 8, (6*x^2*atan(ℯ^(a + b*x)))/b^2 - (6*im*x*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^3 + (6*im*x*PolyLog(2, im*ℯ^(a + b*x)))/b^3 + (6*im*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^4 - (6*im*PolyLog(3, im*ℯ^(a + b*x)))/b^4 - (x^3*sech(a + b*x))/b]
    @test_int [x^2*sech(a + b*x)^2*sinh(a + b*x), x, 6, (4*x*atan(ℯ^(a + b*x)))/b^2 - (2*im*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^3 + (2*im*PolyLog(2, im*ℯ^(a + b*x)))/b^3 - (x^2*sech(a + b*x))/b]
    @test_int [x^1*sech(a + b*x)^2*sinh(a + b*x), x, 2, atan(sinh(a + b*x))/b^2 - (x*sech(a + b*x))/b]
    @test_int [x^0*sech(a + b*x)^2*sinh(a + b*x), x, 2, -(sech(a + b*x)/b)]
    @test_int [sech(a + b*x)^2*sinh(a + b*x)/x^1, x, 0, CannotIntegrate((sech(a + b*x)*tanh(a + b*x))/x, x)]
    @test_int [sech(a + b*x)^2*sinh(a + b*x)/x^2, x, 0, CannotIntegrate((sech(a + b*x)*tanh(a + b*x))/x^2, x)]


    @test_int [x^m*sech(a + b*x)^3*sinh(a + b*x), x, 0, CannotIntegrate(x^m*sech(a + b*x)^2*tanh(a + b*x), x)]

    @test_int [x^3*sech(a + b*x)^3*sinh(a + b*x), x, 6, (3*x^2)/(2*b^2) - (3*x*log(1 + ℯ^(2*(a + b*x))))/b^3 - (3*PolyLog(2, -ℯ^(2*(a + b*x))))/(2*b^4) - (x^3*sech(a + b*x)^2)/(2*b) + (3*x^2*tanh(a + b*x))/(2*b^2)]
    @test_int [x^2*sech(a + b*x)^3*sinh(a + b*x), x, 3, -(log(cosh(a + b*x))/b^3) - (x^2*sech(a + b*x)^2)/(2*b) + (x*tanh(a + b*x))/b^2]
    @test_int [x^1*sech(a + b*x)^3*sinh(a + b*x), x, 3, -((x*sech(a + b*x)^2)/(2*b)) + tanh(a + b*x)/(2*b^2)]
    @test_int [x^0*sech(a + b*x)^3*sinh(a + b*x), x, 2, -(sech(a + b*x)^2/(2*b))]
    @test_int [sech(a + b*x)^3*sinh(a + b*x)/x^1, x, 0, CannotIntegrate((sech(a + b*x)^2*tanh(a + b*x))/x, x)]
    @test_int [sech(a + b*x)^3*sinh(a + b*x)/x^2, x, 0, CannotIntegrate((sech(a + b*x)^2*tanh(a + b*x))/x^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=p=2=#


    @test_int [x^m*sech(a + b*x)*sinh(a + b*x)^2, x, 4, (ℯ^a*x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(2*b)) - (x^m*Gamma(1 + m, b*x))/(ℯ^a*(b*x)^m*(2*b)) - Unintegrable(x^m*sech(a + b*x), x)]

    @test_int [x^3*sech(a + b*x)*sinh(a + b*x)^2, x, 14, -((2*x^3*atan(ℯ^(a + b*x)))/b) - (6*cosh(a + b*x))/b^4 - (3*x^2*cosh(a + b*x))/b^2 + (3*im*x^2*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 - (3*im*x^2*PolyLog(2, im*ℯ^(a + b*x)))/b^2 - (6*im*x*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 + (6*im*x*PolyLog(3, im*ℯ^(a + b*x)))/b^3 + (6*im*PolyLog(4, (-im)*ℯ^(a + b*x)))/b^4 - (6*im*PolyLog(4, im*ℯ^(a + b*x)))/b^4 + (6*x*sinh(a + b*x))/b^3 + (x^3*sinh(a + b*x))/b]
    @test_int [x^2*sech(a + b*x)*sinh(a + b*x)^2, x, 11, -((2*x^2*atan(ℯ^(a + b*x)))/b) - (2*x*cosh(a + b*x))/b^2 + (2*im*x*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 - (2*im*x*PolyLog(2, im*ℯ^(a + b*x)))/b^2 - (2*im*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 + (2*im*PolyLog(3, im*ℯ^(a + b*x)))/b^3 + (2*sinh(a + b*x))/b^3 + (x^2*sinh(a + b*x))/b]
    @test_int [x^1*sech(a + b*x)*sinh(a + b*x)^2, x, 8, -((2*x*atan(ℯ^(a + b*x)))/b) - cosh(a + b*x)/b^2 + (im*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 - (im*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (x*sinh(a + b*x))/b]
    @test_int [x^0*sech(a + b*x)*sinh(a + b*x)^2, x, 3, -(atan(sinh(a + b*x))/b) + sinh(a + b*x)/b]
    @test_int [sech(a + b*x)*sinh(a + b*x)^2/x^1, x, 4, cosh(a)*CoshIntegral(b*x) - Unintegrable(sech(a + b*x)/x, x) + sinh(a)*SinhIntegral(b*x)]
    @test_int [sech(a + b*x)*sinh(a + b*x)^2/x^2, x, 5, -(cosh(a + b*x)/x) - Unintegrable(sech(a + b*x)/x^2, x) + b*CoshIntegral(b*x)*sinh(a) + b*cosh(a)*SinhIntegral(b*x)]


    @test_int [x^m*sech(a + b*x)^2*sinh(a + b*x)^2, x, 0, Unintegrable(x^m*tanh(a + b*x)^2, x)]

    @test_int [x^3*sech(a + b*x)^2*sinh(a + b*x)^2, x, 7, -(x^3/b) + x^4/4 + (3*x^2*log(1 + ℯ^(2*(a + b*x))))/b^2 + (3*x*PolyLog(2, -ℯ^(2*(a + b*x))))/b^3 - (3*PolyLog(3, -ℯ^(2*(a + b*x))))/(2*b^4) - (x^3*tanh(a + b*x))/b]
    @test_int [x^2*sech(a + b*x)^2*sinh(a + b*x)^2, x, 6, -(x^2/b) + x^3/3 + (2*x*log(1 + ℯ^(2*(a + b*x))))/b^2 + PolyLog(2, -ℯ^(2*(a + b*x)))/b^3 - (x^2*tanh(a + b*x))/b]
    @test_int [x^1*sech(a + b*x)^2*sinh(a + b*x)^2, x, 3, x^2/2 + log(cosh(a + b*x))/b^2 - (x*tanh(a + b*x))/b]
    @test_int [x^0*sech(a + b*x)^2*sinh(a + b*x)^2, x, 2, x - tanh(a + b*x)/b]
    @test_int [sech(a + b*x)^2*sinh(a + b*x)^2/x^1, x, 0, Unintegrable(tanh(a + b*x)^2/x, x)]
    @test_int [sech(a + b*x)^2*sinh(a + b*x)^2/x^2, x, 0, Unintegrable(tanh(a + b*x)^2/x^2, x)]


    @test_int [x^m*sech(a + b*x)^3*sinh(a + b*x)^2, x, 1, Unintegrable(x^m*sech(a + b*x), x) - Unintegrable(x^m*sech(a + b*x)^3, x)]

    @test_int [x^3*sech(a + b*x)^3*sinh(a + b*x)^2, x, 25, (6*x*atan(ℯ^(a + b*x)))/b^3 + (x^3*atan(ℯ^(a + b*x)))/b - (3*im*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^4 - (3*im*x^2*PolyLog(2, (-im)*ℯ^(a + b*x)))/(2*b^2) + (3*im*PolyLog(2, im*ℯ^(a + b*x)))/b^4 + (3*im*x^2*PolyLog(2, im*ℯ^(a + b*x)))/(2*b^2) + (3*im*x*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - (3*im*x*PolyLog(3, im*ℯ^(a + b*x)))/b^3 - (3*im*PolyLog(4, (-im)*ℯ^(a + b*x)))/b^4 + (3*im*PolyLog(4, im*ℯ^(a + b*x)))/b^4 - (3*x^2*sech(a + b*x))/(2*b^2) - (x^3*sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [x^2*sech(a + b*x)^3*sinh(a + b*x)^2, x, 17, (x^2*atan(ℯ^(a + b*x)))/b + atan(sinh(a + b*x))/b^3 - (im*x*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + (im*x*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (im*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - (im*PolyLog(3, im*ℯ^(a + b*x)))/b^3 - (x*sech(a + b*x))/b^2 - (x^2*sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [x^1*sech(a + b*x)^3*sinh(a + b*x)^2, x, 12, (x*atan(ℯ^(a + b*x)))/b - (im*PolyLog(2, (-im)*ℯ^(a + b*x)))/(2*b^2) + (im*PolyLog(2, im*ℯ^(a + b*x)))/(2*b^2) - sech(a + b*x)/(2*b^2) - (x*sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [x^0*sech(a + b*x)^3*sinh(a + b*x)^2, x, 2, atan(sinh(a + b*x))/(2*b) - (sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [sech(a + b*x)^3*sinh(a + b*x)^2/x^1, x, 1, Unintegrable(sech(a + b*x)/x, x) - Unintegrable(sech(a + b*x)^3/x, x)]
    @test_int [sech(a + b*x)^3*sinh(a + b*x)^2/x^2, x, 1, Unintegrable(sech(a + b*x)/x^2, x) - Unintegrable(sech(a + b*x)^3/x^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=p=3=#


    @test_int [x^m*sech(a + b*x)*sinh(a + b*x)^3, x, 6, (2^(-3 - m)*ℯ^(2*a)*x^m*Gamma(1 + m, -2*b*x))/(((-b)*x)^m*b) + (2^(-3 - m)*x^m*Gamma(1 + m, 2*b*x))/(ℯ^(2*a)*(b*x)^m*b) - Unintegrable(x^m*tanh(a + b*x), x)]

    @test_int [x^3*sech(a + b*x)*sinh(a + b*x)^3, x, 12, (3*x)/(8*b^3) + x^3/(4*b) + x^4/4 - (x^3*log(1 + ℯ^(2*(a + b*x))))/b - (3*x^2*PolyLog(2, -ℯ^(2*(a + b*x))))/(2*b^2) + (3*x*PolyLog(3, -ℯ^(2*(a + b*x))))/(2*b^3) - (3*PolyLog(4, -ℯ^(2*(a + b*x))))/(4*b^4) - (3*cosh(a + b*x)*sinh(a + b*x))/(8*b^4) - (3*x^2*cosh(a + b*x)*sinh(a + b*x))/(4*b^2) + (3*x*sinh(a + b*x)^2)/(4*b^3) + (x^3*sinh(a + b*x)^2)/(2*b)]
    @test_int [x^2*sech(a + b*x)*sinh(a + b*x)^3, x, 9, x^2/(4*b) + x^3/3 - (x^2*log(1 + ℯ^(2*(a + b*x))))/b - (x*PolyLog(2, -ℯ^(2*(a + b*x))))/b^2 + PolyLog(3, -ℯ^(2*(a + b*x)))/(2*b^3) - (x*cosh(a + b*x)*sinh(a + b*x))/(2*b^2) + sinh(a + b*x)^2/(4*b^3) + (x^2*sinh(a + b*x)^2)/(2*b)]
    @test_int [x^1*sech(a + b*x)*sinh(a + b*x)^3, x, 8, x/(4*b) + x^2/2 - (x*log(1 + ℯ^(2*(a + b*x))))/b - PolyLog(2, -ℯ^(2*(a + b*x)))/(2*b^2) - (cosh(a + b*x)*sinh(a + b*x))/(4*b^2) + (x*sinh(a + b*x)^2)/(2*b)]
    @test_int [x^0*sech(a + b*x)*sinh(a + b*x)^3, x, 3, cosh(a + b*x)^2/(2*b) - log(cosh(a + b*x))/b]
    @test_int [sech(a + b*x)*sinh(a + b*x)^3/x^1, x, 6, -Unintegrable(tanh(a + b*x)/x, x) + (1/2)*CoshIntegral(2*b*x)*sinh(2*a) + (1/2)*cosh(2*a)*SinhIntegral(2*b*x)]
    @test_int [sech(a + b*x)*sinh(a + b*x)^3/x^2, x, 7, b*cosh(2*a)*CoshIntegral(2*b*x) - Unintegrable(tanh(a + b*x)/x^2, x) - sinh(2*a + 2*b*x)/(2*x) + b*sinh(2*a)*SinhIntegral(2*b*x)]


    @test_int [x^m*sech(a + b*x)^2*sinh(a + b*x)^3, x, 4, (ℯ^a*x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(2*b)) + (x^m*Gamma(1 + m, b*x))/(ℯ^a*(b*x)^m*(2*b)) - CannotIntegrate(x^m*sech(a + b*x)*tanh(a + b*x), x)]

    @test_int [x^3*sech(a + b*x)^2*sinh(a + b*x)^3, x, 13, -((6*x^2*atan(ℯ^(a + b*x)))/b^2) + (6*x*cosh(a + b*x))/b^3 + (x^3*cosh(a + b*x))/b + (6*im*x*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^3 - (6*im*x*PolyLog(2, im*ℯ^(a + b*x)))/b^3 - (6*im*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^4 + (6*im*PolyLog(3, im*ℯ^(a + b*x)))/b^4 + (x^3*sech(a + b*x))/b - (6*sinh(a + b*x))/b^4 - (3*x^2*sinh(a + b*x))/b^2]
    @test_int [x^2*sech(a + b*x)^2*sinh(a + b*x)^3, x, 10, -((4*x*atan(ℯ^(a + b*x)))/b^2) + (2*cosh(a + b*x))/b^3 + (x^2*cosh(a + b*x))/b + (2*im*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^3 - (2*im*PolyLog(2, im*ℯ^(a + b*x)))/b^3 + (x^2*sech(a + b*x))/b - (2*x*sinh(a + b*x))/b^2]
    @test_int [x^1*sech(a + b*x)^2*sinh(a + b*x)^3, x, 5, -(atan(sinh(a + b*x))/b^2) + (x*cosh(a + b*x))/b + (x*sech(a + b*x))/b - sinh(a + b*x)/b^2]
    @test_int [x^0*sech(a + b*x)^2*sinh(a + b*x)^3, x, 3, cosh(a + b*x)/b + sech(a + b*x)/b]
    @test_int [sech(a + b*x)^2*sinh(a + b*x)^3/x^1, x, 4, -CannotIntegrate((sech(a + b*x)*tanh(a + b*x))/x, x) + CoshIntegral(b*x)*sinh(a) + cosh(a)*SinhIntegral(b*x)]
    @test_int [sech(a + b*x)^2*sinh(a + b*x)^3/x^2, x, 5, b*cosh(a)*CoshIntegral(b*x) - CannotIntegrate((sech(a + b*x)*tanh(a + b*x))/x^2, x) - sinh(a + b*x)/x + b*sinh(a)*SinhIntegral(b*x)]


    @test_int [x^m*sech(a + b*x)^3*sinh(a + b*x)^3, x, 0, Unintegrable(x^m*tanh(a + b*x)^3, x)]

    @test_int [x^3*sech(a + b*x)^3*sinh(a + b*x)^3, x, 13, -((3*x^2)/(2*b^2)) + x^3/(2*b) - x^4/4 + (3*x*log(1 + ℯ^(2*(a + b*x))))/b^3 + (x^3*log(1 + ℯ^(2*(a + b*x))))/b + (3*PolyLog(2, -ℯ^(2*(a + b*x))))/(2*b^4) + (3*x^2*PolyLog(2, -ℯ^(2*(a + b*x))))/(2*b^2) - (3*x*PolyLog(3, -ℯ^(2*(a + b*x))))/(2*b^3) + (3*PolyLog(4, -ℯ^(2*(a + b*x))))/(4*b^4) - (3*x^2*tanh(a + b*x))/(2*b^2) - (x^3*tanh(a + b*x)^2)/(2*b)]
    @test_int [x^2*sech(a + b*x)^3*sinh(a + b*x)^3, x, 9, x^2/(2*b) - x^3/3 + (x^2*log(1 + ℯ^(2*(a + b*x))))/b + log(cosh(a + b*x))/b^3 + (x*PolyLog(2, -ℯ^(2*(a + b*x))))/b^2 - PolyLog(3, -ℯ^(2*(a + b*x)))/(2*b^3) - (x*tanh(a + b*x))/b^2 - (x^2*tanh(a + b*x)^2)/(2*b)]
    @test_int [x^1*sech(a + b*x)^3*sinh(a + b*x)^3, x, 7, x/(2*b) - x^2/2 + (x*log(1 + ℯ^(2*(a + b*x))))/b + PolyLog(2, -ℯ^(2*(a + b*x)))/(2*b^2) - tanh(a + b*x)/(2*b^2) - (x*tanh(a + b*x)^2)/(2*b)]
    @test_int [x^0*sech(a + b*x)^3*sinh(a + b*x)^3, x, 2, log(cosh(a + b*x))/b - tanh(a + b*x)^2/(2*b)]
    @test_int [sech(a + b*x)^3*sinh(a + b*x)^3/x^1, x, 0, Unintegrable(tanh(a + b*x)^3/x, x)]
    @test_int [sech(a + b*x)^3*sinh(a + b*x)^3/x^2, x, 0, Unintegrable(tanh(a + b*x)^3/x^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cosh(a+b*x)^n*csch(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p=1=#


    @test_int [x^m*cosh(a + b*x)*csch(a + b*x), x, 0, Unintegrable(x^m*coth(a + b*x), x)]

    @test_int [x^3*cosh(a + b*x)*csch(a + b*x), x, 6, -(x^4/4) + (x^3*log(1 - ℯ^(2*(a + b*x))))/b + (3*x^2*PolyLog(2, ℯ^(2*(a + b*x))))/(2*b^2) - (3*x*PolyLog(3, ℯ^(2*(a + b*x))))/(2*b^3) + (3*PolyLog(4, ℯ^(2*(a + b*x))))/(4*b^4)]
    @test_int [x^2*cosh(a + b*x)*csch(a + b*x), x, 5, -(x^3/3) + (x^2*log(1 - ℯ^(2*(a + b*x))))/b + (x*PolyLog(2, ℯ^(2*(a + b*x))))/b^2 - PolyLog(3, ℯ^(2*(a + b*x)))/(2*b^3)]
    @test_int [x^1*cosh(a + b*x)*csch(a + b*x), x, 4, -(x^2/2) + (x*log(1 - ℯ^(2*(a + b*x))))/b + PolyLog(2, ℯ^(2*(a + b*x)))/(2*b^2)]
    @test_int [x^0*cosh(a + b*x)*csch(a + b*x), x, 1, log(sinh(a + b*x))/b]
    @test_int [cosh(a + b*x)*csch(a + b*x)/x^1, x, 0, Unintegrable(coth(a + b*x)/x, x)]
    @test_int [cosh(a + b*x)*csch(a + b*x)/x^2, x, 0, Unintegrable(coth(a + b*x)/x^2, x)]


    @test_int [x^m*cosh(a + b*x)^2*csch(a + b*x), x, 4, (ℯ^a*x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(2*b)) + (x^m*Gamma(1 + m, b*x))/(ℯ^a*(b*x)^m*(2*b)) + Unintegrable(x^m*csch(a + b*x), x)]

    @test_int [x^3*cosh(a + b*x)^2*csch(a + b*x), x, 14, -((2*x^3*atanh(ℯ^(a + b*x)))/b) + (6*x*cosh(a + b*x))/b^3 + (x^3*cosh(a + b*x))/b - (3*x^2*PolyLog(2, -ℯ^(a + b*x)))/b^2 + (3*x^2*PolyLog(2, ℯ^(a + b*x)))/b^2 + (6*x*PolyLog(3, -ℯ^(a + b*x)))/b^3 - (6*x*PolyLog(3, ℯ^(a + b*x)))/b^3 - (6*PolyLog(4, -ℯ^(a + b*x)))/b^4 + (6*PolyLog(4, ℯ^(a + b*x)))/b^4 - (6*sinh(a + b*x))/b^4 - (3*x^2*sinh(a + b*x))/b^2]
    @test_int [x^2*cosh(a + b*x)^2*csch(a + b*x), x, 11, -((2*x^2*atanh(ℯ^(a + b*x)))/b) + (2*cosh(a + b*x))/b^3 + (x^2*cosh(a + b*x))/b - (2*x*PolyLog(2, -ℯ^(a + b*x)))/b^2 + (2*x*PolyLog(2, ℯ^(a + b*x)))/b^2 + (2*PolyLog(3, -ℯ^(a + b*x)))/b^3 - (2*PolyLog(3, ℯ^(a + b*x)))/b^3 - (2*x*sinh(a + b*x))/b^2]
    @test_int [x^1*cosh(a + b*x)^2*csch(a + b*x), x, 8, -((2*x*atanh(ℯ^(a + b*x)))/b) + (x*cosh(a + b*x))/b - PolyLog(2, -ℯ^(a + b*x))/b^2 + PolyLog(2, ℯ^(a + b*x))/b^2 - sinh(a + b*x)/b^2]
    @test_int [x^0*cosh(a + b*x)^2*csch(a + b*x), x, 3, -(atanh(cosh(a + b*x))/b) + cosh(a + b*x)/b]
    @test_int [cosh(a + b*x)^2*csch(a + b*x)/x^1, x, 4, Unintegrable(csch(a + b*x)/x, x) + CoshIntegral(b*x)*sinh(a) + cosh(a)*SinhIntegral(b*x)]
    @test_int [cosh(a + b*x)^2*csch(a + b*x)/x^2, x, 5, b*cosh(a)*CoshIntegral(b*x) + Unintegrable(csch(a + b*x)/x^2, x) - sinh(a + b*x)/x + b*sinh(a)*SinhIntegral(b*x)]


    @test_int [x^m*cosh(a + b*x)^3*csch(a + b*x), x, 6, (2^(-3 - m)*ℯ^(2*a)*x^m*Gamma(1 + m, -2*b*x))/(((-b)*x)^m*b) + (2^(-3 - m)*x^m*Gamma(1 + m, 2*b*x))/(ℯ^(2*a)*(b*x)^m*b) + Unintegrable(x^m*coth(a + b*x), x)]

    @test_int [x^3*cosh(a + b*x)^3*csch(a + b*x), x, 12, (3*x)/(8*b^3) + x^3/(4*b) - x^4/4 + (x^3*log(1 - ℯ^(2*(a + b*x))))/b + (3*x^2*PolyLog(2, ℯ^(2*(a + b*x))))/(2*b^2) - (3*x*PolyLog(3, ℯ^(2*(a + b*x))))/(2*b^3) + (3*PolyLog(4, ℯ^(2*(a + b*x))))/(4*b^4) - (3*cosh(a + b*x)*sinh(a + b*x))/(8*b^4) - (3*x^2*cosh(a + b*x)*sinh(a + b*x))/(4*b^2) + (3*x*sinh(a + b*x)^2)/(4*b^3) + (x^3*sinh(a + b*x)^2)/(2*b)]
    @test_int [x^2*cosh(a + b*x)^3*csch(a + b*x), x, 9, x^2/(4*b) - x^3/3 + (x^2*log(1 - ℯ^(2*(a + b*x))))/b + (x*PolyLog(2, ℯ^(2*(a + b*x))))/b^2 - PolyLog(3, ℯ^(2*(a + b*x)))/(2*b^3) - (x*cosh(a + b*x)*sinh(a + b*x))/(2*b^2) + sinh(a + b*x)^2/(4*b^3) + (x^2*sinh(a + b*x)^2)/(2*b)]
    @test_int [x^1*cosh(a + b*x)^3*csch(a + b*x), x, 8, x/(4*b) - x^2/2 + (x*log(1 - ℯ^(2*(a + b*x))))/b + PolyLog(2, ℯ^(2*(a + b*x)))/(2*b^2) - (cosh(a + b*x)*sinh(a + b*x))/(4*b^2) + (x*sinh(a + b*x)^2)/(2*b)]
    @test_int [x^0*cosh(a + b*x)^3*csch(a + b*x), x, 3, log(sinh(a + b*x))/b + sinh(a + b*x)^2/(2*b)]
    @test_int [cosh(a + b*x)^3*csch(a + b*x)/x^1, x, 6, Unintegrable(coth(a + b*x)/x, x) + (1/2)*CoshIntegral(2*b*x)*sinh(2*a) + (1/2)*cosh(2*a)*SinhIntegral(2*b*x)]
    @test_int [cosh(a + b*x)^3*csch(a + b*x)/x^2, x, 7, b*cosh(2*a)*CoshIntegral(2*b*x) + Unintegrable(coth(a + b*x)/x^2, x) - sinh(2*a + 2*b*x)/(2*x) + b*sinh(2*a)*SinhIntegral(2*b*x)]


    @test_int [x^1*cosh(x)^2*coth(x)^2, x, 6, (3*x^2)/4 - cosh(x)^2/4 - x*coth(x) + log(sinh(x)) + (1/2)*x*cosh(x)*sinh(x)]
    @test_int [x^2*cosh(x)^2*coth(x)^2, x, 11, x/4 - x^2 + x^3/2 - (1/2)*x*cosh(x)^2 - x^2*coth(x) + 2*x*log(1 - ℯ^(2*x)) + PolyLog(2, ℯ^(2*x)) + (1/4)*cosh(x)*sinh(x) + (1/2)*x^2*cosh(x)*sinh(x)]
    @test_int [x^3*cosh(x)^2*coth(x)^2, x, 12, (3*x^2)/8 - x^3 + (3*x^4)/8 - (3*cosh(x)^2)/8 - (3/4)*x^2*cosh(x)^2 - x^3*coth(x) + 3*x^2*log(1 - ℯ^(2*x)) + 3*x*PolyLog(2, ℯ^(2*x)) - (3/2)*PolyLog(3, ℯ^(2*x)) + (3/4)*x*cosh(x)*sinh(x) + (1/2)*x^3*cosh(x)*sinh(x)]


    @test_int [x^1*cosh(x)^2*coth(x)^3, x, 16, (3*x)/4 - x^2 - coth(x)/2 - (1/2)*x*coth(x)^2 + 2*x*log(1 - ℯ^(2*x)) + PolyLog(2, ℯ^(2*x)) - (1/4)*cosh(x)*sinh(x) + (1/2)*x*sinh(x)^2]
    @test_int [x^2*cosh(x)^2*coth(x)^3, x, 19, (3*x^2)/4 - (2*x^3)/3 - x*coth(x) - (1/2)*x^2*coth(x)^2 + 2*x^2*log(1 - ℯ^(2*x)) + log(sinh(x)) + 2*x*PolyLog(2, ℯ^(2*x)) - PolyLog(3, ℯ^(2*x)) - (1/2)*x*cosh(x)*sinh(x) + sinh(x)^2/4 + (1/2)*x^2*sinh(x)^2]
    @test_int [x^3*cosh(x)^2*coth(x)^3, x, 26, (3*x)/8 - (3*x^2)/2 + (3*x^3)/4 - x^4/2 - (3/2)*x^2*coth(x) - (1/2)*x^3*coth(x)^2 + 3*x*log(1 - ℯ^(2*x)) + 2*x^3*log(1 - ℯ^(2*x)) + (3/2)*PolyLog(2, ℯ^(2*x)) + 3*x^2*PolyLog(2, ℯ^(2*x)) - 3*x*PolyLog(3, ℯ^(2*x)) + (3/2)*PolyLog(4, ℯ^(2*x)) - (3/8)*cosh(x)*sinh(x) - (3/4)*x^2*cosh(x)*sinh(x) + (3/4)*x*sinh(x)^2 + (1/2)*x^3*sinh(x)^2]


    #= ::Subsubsection::Closed:: =#
    #=p=2=#


    @test_int [x^m*cosh(a + b*x)*csch(a + b*x)^2, x, 0, CannotIntegrate(x^m*coth(a + b*x)*csch(a + b*x), x)]

    @test_int [x^3*cosh(a + b*x)*csch(a + b*x)^2, x, 8, -((6*x^2*atanh(ℯ^(a + b*x)))/b^2) - (x^3*csch(a + b*x))/b - (6*x*PolyLog(2, -ℯ^(a + b*x)))/b^3 + (6*x*PolyLog(2, ℯ^(a + b*x)))/b^3 + (6*PolyLog(3, -ℯ^(a + b*x)))/b^4 - (6*PolyLog(3, ℯ^(a + b*x)))/b^4]
    @test_int [x^2*cosh(a + b*x)*csch(a + b*x)^2, x, 6, -((4*x*atanh(ℯ^(a + b*x)))/b^2) - (x^2*csch(a + b*x))/b - (2*PolyLog(2, -ℯ^(a + b*x)))/b^3 + (2*PolyLog(2, ℯ^(a + b*x)))/b^3]
    @test_int [x^1*cosh(a + b*x)*csch(a + b*x)^2, x, 2, -(atanh(cosh(a + b*x))/b^2) - (x*csch(a + b*x))/b]
    @test_int [x^0*cosh(a + b*x)*csch(a + b*x)^2, x, 2, -(csch(a + b*x)/b)]
    @test_int [cosh(a + b*x)*csch(a + b*x)^2/x^1, x, 0, CannotIntegrate((coth(a + b*x)*csch(a + b*x))/x, x)]
    @test_int [cosh(a + b*x)*csch(a + b*x)^2/x^2, x, 0, CannotIntegrate((coth(a + b*x)*csch(a + b*x))/x^2, x)]


    @test_int [x^m*cosh(a + b*x)^2*csch(a + b*x)^2, x, 0, Unintegrable(x^m*coth(a + b*x)^2, x)]

    @test_int [x^3*cosh(a + b*x)^2*csch(a + b*x)^2, x, 7, -(x^3/b) + x^4/4 - (x^3*coth(a + b*x))/b + (3*x^2*log(1 - ℯ^(2*(a + b*x))))/b^2 + (3*x*PolyLog(2, ℯ^(2*(a + b*x))))/b^3 - (3*PolyLog(3, ℯ^(2*(a + b*x))))/(2*b^4)]
    @test_int [x^2*cosh(a + b*x)^2*csch(a + b*x)^2, x, 6, -(x^2/b) + x^3/3 - (x^2*coth(a + b*x))/b + (2*x*log(1 - ℯ^(2*(a + b*x))))/b^2 + PolyLog(2, ℯ^(2*(a + b*x)))/b^3]
    @test_int [x^1*cosh(a + b*x)^2*csch(a + b*x)^2, x, 3, x^2/2 - (x*coth(a + b*x))/b + log(sinh(a + b*x))/b^2]
    @test_int [x^0*cosh(a + b*x)^2*csch(a + b*x)^2, x, 2, x - coth(a + b*x)/b]
    @test_int [cosh(a + b*x)^2*csch(a + b*x)^2/x^1, x, 0, Unintegrable(coth(a + b*x)^2/x, x)]
    @test_int [cosh(a + b*x)^2*csch(a + b*x)^2/x^2, x, 0, Unintegrable(coth(a + b*x)^2/x^2, x)]


    @test_int [x^m*cosh(a + b*x)^3*csch(a + b*x)^2, x, 4, (ℯ^a*x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(2*b)) - (x^m*Gamma(1 + m, b*x))/(ℯ^a*(b*x)^m*(2*b)) + CannotIntegrate(x^m*coth(a + b*x)*csch(a + b*x), x)]

    @test_int [x^3*cosh(a + b*x)^3*csch(a + b*x)^2, x, 13, -((6*x^2*atanh(ℯ^(a + b*x)))/b^2) - (6*cosh(a + b*x))/b^4 - (3*x^2*cosh(a + b*x))/b^2 - (x^3*csch(a + b*x))/b - (6*x*PolyLog(2, -ℯ^(a + b*x)))/b^3 + (6*x*PolyLog(2, ℯ^(a + b*x)))/b^3 + (6*PolyLog(3, -ℯ^(a + b*x)))/b^4 - (6*PolyLog(3, ℯ^(a + b*x)))/b^4 + (6*x*sinh(a + b*x))/b^3 + (x^3*sinh(a + b*x))/b]
    @test_int [x^2*cosh(a + b*x)^3*csch(a + b*x)^2, x, 10, -((4*x*atanh(ℯ^(a + b*x)))/b^2) - (2*x*cosh(a + b*x))/b^2 - (x^2*csch(a + b*x))/b - (2*PolyLog(2, -ℯ^(a + b*x)))/b^3 + (2*PolyLog(2, ℯ^(a + b*x)))/b^3 + (2*sinh(a + b*x))/b^3 + (x^2*sinh(a + b*x))/b]
    @test_int [x^1*cosh(a + b*x)^3*csch(a + b*x)^2, x, 5, -(atanh(cosh(a + b*x))/b^2) - cosh(a + b*x)/b^2 - (x*csch(a + b*x))/b + (x*sinh(a + b*x))/b]
    @test_int [x^0*cosh(a + b*x)^3*csch(a + b*x)^2, x, 3, -(csch(a + b*x)/b) + sinh(a + b*x)/b]
    @test_int [cosh(a + b*x)^3*csch(a + b*x)^2/x^1, x, 4, cosh(a)*CoshIntegral(b*x) + CannotIntegrate((coth(a + b*x)*csch(a + b*x))/x, x) + sinh(a)*SinhIntegral(b*x)]
    @test_int [cosh(a + b*x)^3*csch(a + b*x)^2/x^2, x, 5, -(cosh(a + b*x)/x) + CannotIntegrate((coth(a + b*x)*csch(a + b*x))/x^2, x) + b*CoshIntegral(b*x)*sinh(a) + b*cosh(a)*SinhIntegral(b*x)]


    #= ::Subsubsection::Closed:: =#
    #=p=3=#


    @test_int [x^m*cosh(a + b*x)*csch(a + b*x)^3, x, 0, CannotIntegrate(x^m*coth(a + b*x)*csch(a + b*x)^2, x)]

    @test_int [x^3*cosh(a + b*x)*csch(a + b*x)^3, x, 6, -((3*x^2)/(2*b^2)) - (3*x^2*coth(a + b*x))/(2*b^2) - (x^3*csch(a + b*x)^2)/(2*b) + (3*x*log(1 - ℯ^(2*(a + b*x))))/b^3 + (3*PolyLog(2, ℯ^(2*(a + b*x))))/(2*b^4)]
    @test_int [x^2*cosh(a + b*x)*csch(a + b*x)^3, x, 3, -((x*coth(a + b*x))/b^2) - (x^2*csch(a + b*x)^2)/(2*b) + log(sinh(a + b*x))/b^3]
    @test_int [x^1*cosh(a + b*x)*csch(a + b*x)^3, x, 3, -(coth(a + b*x)/(2*b^2)) - (x*csch(a + b*x)^2)/(2*b)]
    @test_int [x^0*cosh(a + b*x)*csch(a + b*x)^3, x, 2, -(csch(a + b*x)^2/(2*b))]
    @test_int [cosh(a + b*x)*csch(a + b*x)^3/x^1, x, 0, CannotIntegrate((coth(a + b*x)*csch(a + b*x)^2)/x, x)]
    @test_int [cosh(a + b*x)*csch(a + b*x)^3/x^2, x, 0, CannotIntegrate((coth(a + b*x)*csch(a + b*x)^2)/x^2, x)]


    @test_int [x^m*cosh(a + b*x)^2*csch(a + b*x)^3, x, 1, Unintegrable(x^m*csch(a + b*x), x) + Unintegrable(x^m*csch(a + b*x)^3, x)]

    @test_int [x^3*cosh(a + b*x)^2*csch(a + b*x)^3, x, 25, -((6*x*atanh(ℯ^(a + b*x)))/b^3) - (x^3*atanh(ℯ^(a + b*x)))/b - (3*x^2*csch(a + b*x))/(2*b^2) - (x^3*coth(a + b*x)*csch(a + b*x))/(2*b) - (3*PolyLog(2, -ℯ^(a + b*x)))/b^4 - (3*x^2*PolyLog(2, -ℯ^(a + b*x)))/(2*b^2) + (3*PolyLog(2, ℯ^(a + b*x)))/b^4 + (3*x^2*PolyLog(2, ℯ^(a + b*x)))/(2*b^2) + (3*x*PolyLog(3, -ℯ^(a + b*x)))/b^3 - (3*x*PolyLog(3, ℯ^(a + b*x)))/b^3 - (3*PolyLog(4, -ℯ^(a + b*x)))/b^4 + (3*PolyLog(4, ℯ^(a + b*x)))/b^4]
    @test_int [x^2*cosh(a + b*x)^2*csch(a + b*x)^3, x, 17, -((x^2*atanh(ℯ^(a + b*x)))/b) - atanh(cosh(a + b*x))/b^3 - (x*csch(a + b*x))/b^2 - (x^2*coth(a + b*x)*csch(a + b*x))/(2*b) - (x*PolyLog(2, -ℯ^(a + b*x)))/b^2 + (x*PolyLog(2, ℯ^(a + b*x)))/b^2 + PolyLog(3, -ℯ^(a + b*x))/b^3 - PolyLog(3, ℯ^(a + b*x))/b^3]
    @test_int [x^1*cosh(a + b*x)^2*csch(a + b*x)^3, x, 12, -((x*atanh(ℯ^(a + b*x)))/b) - csch(a + b*x)/(2*b^2) - (x*coth(a + b*x)*csch(a + b*x))/(2*b) - PolyLog(2, -ℯ^(a + b*x))/(2*b^2) + PolyLog(2, ℯ^(a + b*x))/(2*b^2)]
    @test_int [x^0*cosh(a + b*x)^2*csch(a + b*x)^3, x, 2, -(atanh(cosh(a + b*x))/(2*b)) - (coth(a + b*x)*csch(a + b*x))/(2*b)]
    @test_int [cosh(a + b*x)^2*csch(a + b*x)^3/x^1, x, 1, Unintegrable(csch(a + b*x)/x, x) + Unintegrable(csch(a + b*x)^3/x, x)]
    @test_int [cosh(a + b*x)^2*csch(a + b*x)^3/x^2, x, 1, Unintegrable(csch(a + b*x)/x^2, x) + Unintegrable(csch(a + b*x)^3/x^2, x)]


    @test_int [x^m*cosh(a + b*x)^3*csch(a + b*x)^3, x, 0, Unintegrable(x^m*coth(a + b*x)^3, x)]

    @test_int [x^3*cosh(a + b*x)^3*csch(a + b*x)^3, x, 13, -((3*x^2)/(2*b^2)) + x^3/(2*b) - x^4/4 - (3*x^2*coth(a + b*x))/(2*b^2) - (x^3*coth(a + b*x)^2)/(2*b) + (3*x*log(1 - ℯ^(2*(a + b*x))))/b^3 + (x^3*log(1 - ℯ^(2*(a + b*x))))/b + (3*PolyLog(2, ℯ^(2*(a + b*x))))/(2*b^4) + (3*x^2*PolyLog(2, ℯ^(2*(a + b*x))))/(2*b^2) - (3*x*PolyLog(3, ℯ^(2*(a + b*x))))/(2*b^3) + (3*PolyLog(4, ℯ^(2*(a + b*x))))/(4*b^4)]
    @test_int [x^2*cosh(a + b*x)^3*csch(a + b*x)^3, x, 9, x^2/(2*b) - x^3/3 - (x*coth(a + b*x))/b^2 - (x^2*coth(a + b*x)^2)/(2*b) + (x^2*log(1 - ℯ^(2*(a + b*x))))/b + log(sinh(a + b*x))/b^3 + (x*PolyLog(2, ℯ^(2*(a + b*x))))/b^2 - PolyLog(3, ℯ^(2*(a + b*x)))/(2*b^3)]
    @test_int [x^1*cosh(a + b*x)^3*csch(a + b*x)^3, x, 7, x/(2*b) - x^2/2 - coth(a + b*x)/(2*b^2) - (x*coth(a + b*x)^2)/(2*b) + (x*log(1 - ℯ^(2*(a + b*x))))/b + PolyLog(2, ℯ^(2*(a + b*x)))/(2*b^2)]
    @test_int [x^0*cosh(a + b*x)^3*csch(a + b*x)^3, x, 2, -(coth(a + b*x)^2/(2*b)) + log(sinh(a + b*x))/b]
    @test_int [cosh(a + b*x)^3*csch(a + b*x)^3/x^1, x, 0, Unintegrable(coth(a + b*x)^3/x, x)]
    @test_int [cosh(a + b*x)^3*csch(a + b*x)^3/x^2, x, 0, Unintegrable(coth(a + b*x)^3/x^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sech(a+b*x)^n*csch(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p=1=#


    @test_int [x^m*sech(a + b*x)*csch(a + b*x), x, 0, CannotIntegrate(x^m*csch(a + b*x)*sech(a + b*x), x)]

    @test_int [x^3*sech(a + b*x)*csch(a + b*x), x, 10, -((2*x^3*atanh(ℯ^(2*a + 2*b*x)))/b) - (3*x^2*PolyLog(2, -ℯ^(2*a + 2*b*x)))/(2*b^2) + (3*x^2*PolyLog(2, ℯ^(2*a + 2*b*x)))/(2*b^2) + (3*x*PolyLog(3, -ℯ^(2*a + 2*b*x)))/(2*b^3) - (3*x*PolyLog(3, ℯ^(2*a + 2*b*x)))/(2*b^3) - (3*PolyLog(4, -ℯ^(2*a + 2*b*x)))/(4*b^4) + (3*PolyLog(4, ℯ^(2*a + 2*b*x)))/(4*b^4)]
    @test_int [x^2*sech(a + b*x)*csch(a + b*x), x, 8, -((2*x^2*atanh(ℯ^(2*a + 2*b*x)))/b) - (x*PolyLog(2, -ℯ^(2*a + 2*b*x)))/b^2 + (x*PolyLog(2, ℯ^(2*a + 2*b*x)))/b^2 + PolyLog(3, -ℯ^(2*a + 2*b*x))/(2*b^3) - PolyLog(3, ℯ^(2*a + 2*b*x))/(2*b^3)]
    @test_int [x^1*sech(a + b*x)*csch(a + b*x), x, 6, -((2*x*atanh(ℯ^(2*a + 2*b*x)))/b) - PolyLog(2, -ℯ^(2*a + 2*b*x))/(2*b^2) + PolyLog(2, ℯ^(2*a + 2*b*x))/(2*b^2)]
    @test_int [x^0*sech(a + b*x)*csch(a + b*x), x, 2, log(tanh(a + b*x))/b]
    @test_int [sech(a + b*x)*csch(a + b*x)/x^1, x, 1, 2*Unintegrable(csch(2*a + 2*b*x)/x, x)]
    @test_int [sech(a + b*x)*csch(a + b*x)/x^2, x, 1, 2*Unintegrable(csch(2*a + 2*b*x)/x^2, x)]


    @test_int [x^m*sech(a + b*x)^2*csch(a + b*x), x, 0, CannotIntegrate(x^m*csch(a + b*x)*sech(a + b*x)^2, x)]

    @test_int [x^3*sech(a + b*x)^2*csch(a + b*x), x, 21, -((6*x^2*atan(ℯ^(a + b*x)))/b^2) - (2*x^3*atanh(ℯ^(a + b*x)))/b - (3*x^2*PolyLog(2, -ℯ^(a + b*x)))/b^2 + (6*im*x*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^3 - (6*im*x*PolyLog(2, im*ℯ^(a + b*x)))/b^3 + (3*x^2*PolyLog(2, ℯ^(a + b*x)))/b^2 + (6*x*PolyLog(3, -ℯ^(a + b*x)))/b^3 - (6*im*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^4 + (6*im*PolyLog(3, im*ℯ^(a + b*x)))/b^4 - (6*x*PolyLog(3, ℯ^(a + b*x)))/b^3 - (6*PolyLog(4, -ℯ^(a + b*x)))/b^4 + (6*PolyLog(4, ℯ^(a + b*x)))/b^4 + (x^3*sech(a + b*x))/b]
    @test_int [x^2*sech(a + b*x)^2*csch(a + b*x), x, 17, -((4*x*atan(ℯ^(a + b*x)))/b^2) - (2*x^2*atanh(ℯ^(a + b*x)))/b - (2*x*PolyLog(2, -ℯ^(a + b*x)))/b^2 + (2*im*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^3 - (2*im*PolyLog(2, im*ℯ^(a + b*x)))/b^3 + (2*x*PolyLog(2, ℯ^(a + b*x)))/b^2 + (2*PolyLog(3, -ℯ^(a + b*x)))/b^3 - (2*PolyLog(3, ℯ^(a + b*x)))/b^3 + (x^2*sech(a + b*x))/b]
    @test_int [x^1*sech(a + b*x)^2*csch(a + b*x), x, 10, -(atan(sinh(a + b*x))/b^2) - (2*x*atanh(ℯ^(a + b*x)))/b - PolyLog(2, -ℯ^(a + b*x))/b^2 + PolyLog(2, ℯ^(a + b*x))/b^2 + (x*sech(a + b*x))/b]
    @test_int [x^0*sech(a + b*x)^2*csch(a + b*x), x, 3, -(atanh(cosh(a + b*x))/b) + sech(a + b*x)/b]
    @test_int [sech(a + b*x)^2*csch(a + b*x)/x^1, x, 0, CannotIntegrate((csch(a + b*x)*sech(a + b*x)^2)/x, x)]
    @test_int [sech(a + b*x)^2*csch(a + b*x)/x^2, x, 0, CannotIntegrate((csch(a + b*x)*sech(a + b*x)^2)/x^2, x)]


    @test_int [x^m*sech(a + b*x)^3*csch(a + b*x), x, 0, CannotIntegrate(x^m*csch(a + b*x)*sech(a + b*x)^3, x)]

    @test_int [x^3*sech(a + b*x)^3*csch(a + b*x), x, 20, -((3*x^2)/(2*b^2)) + x^3/(2*b) - (2*x^3*atanh(ℯ^(2*a + 2*b*x)))/b + (3*x*log(1 + ℯ^(2*(a + b*x))))/b^3 + (3*PolyLog(2, -ℯ^(2*(a + b*x))))/(2*b^4) - (3*x^2*PolyLog(2, -ℯ^(2*a + 2*b*x)))/(2*b^2) + (3*x^2*PolyLog(2, ℯ^(2*a + 2*b*x)))/(2*b^2) + (3*x*PolyLog(3, -ℯ^(2*a + 2*b*x)))/(2*b^3) - (3*x*PolyLog(3, ℯ^(2*a + 2*b*x)))/(2*b^3) - (3*PolyLog(4, -ℯ^(2*a + 2*b*x)))/(4*b^4) + (3*PolyLog(4, ℯ^(2*a + 2*b*x)))/(4*b^4) - (3*x^2*tanh(a + b*x))/(2*b^2) - (x^3*tanh(a + b*x)^2)/(2*b)]
    @test_int [x^2*sech(a + b*x)^3*csch(a + b*x), x, 15, x^2/(2*b) - (2*x^2*atanh(ℯ^(2*a + 2*b*x)))/b + log(cosh(a + b*x))/b^3 - (x*PolyLog(2, -ℯ^(2*a + 2*b*x)))/b^2 + (x*PolyLog(2, ℯ^(2*a + 2*b*x)))/b^2 + PolyLog(3, -ℯ^(2*a + 2*b*x))/(2*b^3) - PolyLog(3, ℯ^(2*a + 2*b*x))/(2*b^3) - (x*tanh(a + b*x))/b^2 - (x^2*tanh(a + b*x)^2)/(2*b)]
    @test_int [x^1*sech(a + b*x)^3*csch(a + b*x), x, 11, x/(2*b) - (2*x*atanh(ℯ^(2*a + 2*b*x)))/b - PolyLog(2, -ℯ^(2*a + 2*b*x))/(2*b^2) + PolyLog(2, ℯ^(2*a + 2*b*x))/(2*b^2) - tanh(a + b*x)/(2*b^2) - (x*tanh(a + b*x)^2)/(2*b)]
    @test_int [x^0*sech(a + b*x)^3*csch(a + b*x), x, 3, log(tanh(a + b*x))/b - tanh(a + b*x)^2/(2*b)]
    @test_int [sech(a + b*x)^3*csch(a + b*x)/x^1, x, 0, CannotIntegrate((csch(a + b*x)*sech(a + b*x)^3)/x, x)]
    @test_int [sech(a + b*x)^3*csch(a + b*x)/x^2, x, 0, CannotIntegrate((csch(a + b*x)*sech(a + b*x)^3)/x^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=p=2=#


    @test_int [x^m*sech(a + b*x)*csch(a + b*x)^2, x, 0, CannotIntegrate(x^m*csch(a + b*x)^2*sech(a + b*x), x)]

    @test_int [x^3*sech(a + b*x)*csch(a + b*x)^2, x, 21, -((2*x^3*atan(ℯ^(a + b*x)))/b) - (6*x^2*atanh(ℯ^(a + b*x)))/b^2 - (x^3*csch(a + b*x))/b - (6*x*PolyLog(2, -ℯ^(a + b*x)))/b^3 + (3*im*x^2*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 - (3*im*x^2*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (6*x*PolyLog(2, ℯ^(a + b*x)))/b^3 + (6*PolyLog(3, -ℯ^(a + b*x)))/b^4 - (6*im*x*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 + (6*im*x*PolyLog(3, im*ℯ^(a + b*x)))/b^3 - (6*PolyLog(3, ℯ^(a + b*x)))/b^4 + (6*im*PolyLog(4, (-im)*ℯ^(a + b*x)))/b^4 - (6*im*PolyLog(4, im*ℯ^(a + b*x)))/b^4]
    @test_int [x^2*sech(a + b*x)*csch(a + b*x)^2, x, 17, -((2*x^2*atan(ℯ^(a + b*x)))/b) - (4*x*atanh(ℯ^(a + b*x)))/b^2 - (x^2*csch(a + b*x))/b - (2*PolyLog(2, -ℯ^(a + b*x)))/b^3 + (2*im*x*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 - (2*im*x*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (2*PolyLog(2, ℯ^(a + b*x)))/b^3 - (2*im*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 + (2*im*PolyLog(3, im*ℯ^(a + b*x)))/b^3]
    @test_int [x^1*sech(a + b*x)*csch(a + b*x)^2, x, 10, -((2*x*atan(ℯ^(a + b*x)))/b) - atanh(cosh(a + b*x))/b^2 - (x*csch(a + b*x))/b + (im*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 - (im*PolyLog(2, im*ℯ^(a + b*x)))/b^2]
    @test_int [x^0*sech(a + b*x)*csch(a + b*x)^2, x, 3, -(atan(sinh(a + b*x))/b) - csch(a + b*x)/b]
    @test_int [sech(a + b*x)*csch(a + b*x)^2/x^1, x, 0, CannotIntegrate((csch(a + b*x)^2*sech(a + b*x))/x, x)]
    @test_int [sech(a + b*x)*csch(a + b*x)^2/x^2, x, 0, CannotIntegrate((csch(a + b*x)^2*sech(a + b*x))/x^2, x)]


    @test_int [x^m*sech(a + b*x)^2*csch(a + b*x)^2, x, 0, CannotIntegrate(x^m*csch(a + b*x)^2*sech(a + b*x)^2, x)]

    @test_int [x^3*sech(a + b*x)^2*csch(a + b*x)^2, x, 7, -((2*x^3)/b) - (2*x^3*coth(2*a + 2*b*x))/b + (3*x^2*log(1 - ℯ^(4*(a + b*x))))/b^2 + (3*x*PolyLog(2, ℯ^(4*(a + b*x))))/(2*b^3) - (3*PolyLog(3, ℯ^(4*(a + b*x))))/(8*b^4)]
    @test_int [x^2*sech(a + b*x)^2*csch(a + b*x)^2, x, 6, -((2*x^2)/b) - (2*x^2*coth(2*a + 2*b*x))/b + (2*x*log(1 - ℯ^(4*(a + b*x))))/b^2 + PolyLog(2, ℯ^(4*(a + b*x)))/(2*b^3)]
    @test_int [x^1*sech(a + b*x)^2*csch(a + b*x)^2, x, 3, -((2*x*coth(2*a + 2*b*x))/b) + log(sinh(2*a + 2*b*x))/b^2]
    @test_int [x^0*sech(a + b*x)^2*csch(a + b*x)^2, x, 3, -(coth(a + b*x)/b) - tanh(a + b*x)/b]
    @test_int [sech(a + b*x)^2*csch(a + b*x)^2/x^1, x, 1, 4*Unintegrable(csch(2*a + 2*b*x)^2/x, x)]
    @test_int [sech(a + b*x)^2*csch(a + b*x)^2/x^2, x, 1, 4*Unintegrable(csch(2*a + 2*b*x)^2/x^2, x)]


    @test_int [x^m*sech(a + b*x)^3*csch(a + b*x)^2, x, 0, CannotIntegrate(x^m*csch(a + b*x)^2*sech(a + b*x)^3, x)]

    #= [x^3*sech(a + b*x)^3*csch(a + b*x)^2, x, 35, (6*x*atan(ℯ^(a + b*x)))/b^3 - (3*x^3*atan(ℯ^(a + b*x)))/b - (6*x^2*atanh(ℯ^(a + b*x)))/b^2 - (6*x*PolyLog(2, -ℯ^(a + b*x)))/b^3 - (3*im*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^4 + (9*im*x^2*PolyLog(2, (-im)*ℯ^(a + b*x)))/(2*b^2) + (3*im*PolyLog(2, im*ℯ^(a + b*x)))/b^4 - (9*im*x^2*PolyLog(2, im*ℯ^(a + b*x)))/(2*b^2) + (6*x*PolyLog(2, ℯ^(a + b*x)))/b^3 + (6*PolyLog(3, -ℯ^(a + b*x)))/b^4 - (9*im*x*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 + (9*im*x*PolyLog(3, im*ℯ^(a + b*x)))/b^3 - (6*PolyLog(3, ℯ^(a + b*x)))/b^4 + (9*im*PolyLog(4, (-im)*ℯ^(a + b*x)))/b^4 - (9*im*PolyLog(4, im*ℯ^(a + b*x)))/b^4 - (3*x^2*sech(a + b*x))/(2*b^2) - (x^3*csch(a + b*x)*sech(a + b*x)^2)/b - (3*x^3*sech(a + b*x)*tanh(a + b*x))/(2*b)] =#
    @test_int [x^2*sech(a + b*x)^3*csch(a + b*x)^2, x, 29, -((3*x^2*atan(ℯ^(a + b*x)))/b) + atan(sinh(a + b*x))/b^3 - (4*x*atanh(ℯ^(a + b*x)))/b^2 - (3*x^2*csch(a + b*x))/(2*b) - (2*PolyLog(2, -ℯ^(a + b*x)))/b^3 + (3*im*x*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 - (3*im*x*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (2*PolyLog(2, ℯ^(a + b*x)))/b^3 - (3*im*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 + (3*im*PolyLog(3, im*ℯ^(a + b*x)))/b^3 - (x*sech(a + b*x))/b^2 + (x^2*csch(a + b*x)*sech(a + b*x)^2)/(2*b)]
    @test_int [x^1*sech(a + b*x)^3*csch(a + b*x)^2, x, 13, -((3*x*atan(ℯ^(a + b*x)))/b) - atanh(cosh(a + b*x))/b^2 - (3*x*csch(a + b*x))/(2*b) + (3*im*PolyLog(2, (-im)*ℯ^(a + b*x)))/(2*b^2) - (3*im*PolyLog(2, im*ℯ^(a + b*x)))/(2*b^2) - sech(a + b*x)/(2*b^2) + (x*csch(a + b*x)*sech(a + b*x)^2)/(2*b)]
    @test_int [x^0*sech(a + b*x)^3*csch(a + b*x)^2, x, 4, -((3*atan(sinh(a + b*x)))/(2*b)) - (3*csch(a + b*x))/(2*b) + (csch(a + b*x)*sech(a + b*x)^2)/(2*b)]
    @test_int [sech(a + b*x)^3*csch(a + b*x)^2/x^1, x, 0, CannotIntegrate((csch(a + b*x)^2*sech(a + b*x)^3)/x, x)]
    @test_int [sech(a + b*x)^3*csch(a + b*x)^2/x^2, x, 0, CannotIntegrate((csch(a + b*x)^2*sech(a + b*x)^3)/x^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=p=3=#


    @test_int [x^m*sech(a + b*x)*csch(a + b*x)^3, x, 0, CannotIntegrate(x^m*csch(a + b*x)^3*sech(a + b*x), x)]

    @test_int [x^3*sech(a + b*x)*csch(a + b*x)^3, x, 20, -((3*x^2)/(2*b^2)) + x^3/(2*b) + (2*x^3*atanh(ℯ^(2*a + 2*b*x)))/b - (3*x^2*coth(a + b*x))/(2*b^2) - (x^3*coth(a + b*x)^2)/(2*b) + (3*x*log(1 - ℯ^(2*(a + b*x))))/b^3 + (3*PolyLog(2, ℯ^(2*(a + b*x))))/(2*b^4) + (3*x^2*PolyLog(2, -ℯ^(2*a + 2*b*x)))/(2*b^2) - (3*x^2*PolyLog(2, ℯ^(2*a + 2*b*x)))/(2*b^2) - (3*x*PolyLog(3, -ℯ^(2*a + 2*b*x)))/(2*b^3) + (3*x*PolyLog(3, ℯ^(2*a + 2*b*x)))/(2*b^3) + (3*PolyLog(4, -ℯ^(2*a + 2*b*x)))/(4*b^4) - (3*PolyLog(4, ℯ^(2*a + 2*b*x)))/(4*b^4)]
    @test_int [x^2*sech(a + b*x)*csch(a + b*x)^3, x, 15, x^2/(2*b) + (2*x^2*atanh(ℯ^(2*a + 2*b*x)))/b - (x*coth(a + b*x))/b^2 - (x^2*coth(a + b*x)^2)/(2*b) + log(sinh(a + b*x))/b^3 + (x*PolyLog(2, -ℯ^(2*a + 2*b*x)))/b^2 - (x*PolyLog(2, ℯ^(2*a + 2*b*x)))/b^2 - PolyLog(3, -ℯ^(2*a + 2*b*x))/(2*b^3) + PolyLog(3, ℯ^(2*a + 2*b*x))/(2*b^3)]
    @test_int [x^1*sech(a + b*x)*csch(a + b*x)^3, x, 11, x/(2*b) + (2*x*atanh(ℯ^(2*a + 2*b*x)))/b - coth(a + b*x)/(2*b^2) - (x*coth(a + b*x)^2)/(2*b) + PolyLog(2, -ℯ^(2*a + 2*b*x))/(2*b^2) - PolyLog(2, ℯ^(2*a + 2*b*x))/(2*b^2)]
    @test_int [x^0*sech(a + b*x)*csch(a + b*x)^3, x, 3, -(coth(a + b*x)^2/(2*b)) - log(tanh(a + b*x))/b]
    @test_int [sech(a + b*x)*csch(a + b*x)^3/x^1, x, 0, CannotIntegrate((csch(a + b*x)^3*sech(a + b*x))/x, x)]
    @test_int [sech(a + b*x)*csch(a + b*x)^3/x^2, x, 0, CannotIntegrate((csch(a + b*x)^3*sech(a + b*x))/x^2, x)]


    @test_int [x^m*sech(a + b*x)^2*csch(a + b*x)^3, x, 0, CannotIntegrate(x^m*csch(a + b*x)^3*sech(a + b*x)^2, x)]

    @test_int [x^3*sech(a + b*x)^2*csch(a + b*x)^3, x, 40, (6*x^2*atan(ℯ^(a + b*x)))/b^2 - (6*x*atanh(ℯ^(a + b*x)))/b^3 + (3*x^3*atanh(ℯ^(a + b*x)))/b - (3*x^2*csch(a + b*x))/(2*b^2) - (3*PolyLog(2, -ℯ^(a + b*x)))/b^4 + (9*x^2*PolyLog(2, -ℯ^(a + b*x)))/(2*b^2) - (6*im*x*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^3 + (6*im*x*PolyLog(2, im*ℯ^(a + b*x)))/b^3 + (3*PolyLog(2, ℯ^(a + b*x)))/b^4 - (9*x^2*PolyLog(2, ℯ^(a + b*x)))/(2*b^2) - (9*x*PolyLog(3, -ℯ^(a + b*x)))/b^3 + (6*im*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^4 - (6*im*PolyLog(3, im*ℯ^(a + b*x)))/b^4 + (9*x*PolyLog(3, ℯ^(a + b*x)))/b^3 + (9*PolyLog(4, -ℯ^(a + b*x)))/b^4 - (9*PolyLog(4, ℯ^(a + b*x)))/b^4 - (3*x^3*sech(a + b*x))/(2*b) - (x^3*csch(a + b*x)^2*sech(a + b*x))/(2*b)]
    @test_int [x^2*sech(a + b*x)^2*csch(a + b*x)^3, x, 29, (4*x*atan(ℯ^(a + b*x)))/b^2 + (3*x^2*atanh(ℯ^(a + b*x)))/b - atanh(cosh(a + b*x))/b^3 - (x*csch(a + b*x))/b^2 + (3*x*PolyLog(2, -ℯ^(a + b*x)))/b^2 - (2*im*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^3 + (2*im*PolyLog(2, im*ℯ^(a + b*x)))/b^3 - (3*x*PolyLog(2, ℯ^(a + b*x)))/b^2 - (3*PolyLog(3, -ℯ^(a + b*x)))/b^3 + (3*PolyLog(3, ℯ^(a + b*x)))/b^3 - (3*x^2*sech(a + b*x))/(2*b) - (x^2*csch(a + b*x)^2*sech(a + b*x))/(2*b)]
    @test_int [x^1*sech(a + b*x)^2*csch(a + b*x)^3, x, 13, atan(sinh(a + b*x))/b^2 + (3*x*atanh(ℯ^(a + b*x)))/b - csch(a + b*x)/(2*b^2) + (3*PolyLog(2, -ℯ^(a + b*x)))/(2*b^2) - (3*PolyLog(2, ℯ^(a + b*x)))/(2*b^2) - (3*x*sech(a + b*x))/(2*b) - (x*csch(a + b*x)^2*sech(a + b*x))/(2*b)]
    @test_int [x^0*sech(a + b*x)^2*csch(a + b*x)^3, x, 4, (3*atanh(cosh(a + b*x)))/(2*b) - (3*sech(a + b*x))/(2*b) - (csch(a + b*x)^2*sech(a + b*x))/(2*b)]
    @test_int [sech(a + b*x)^2*csch(a + b*x)^3/x^1, x, 0, CannotIntegrate((csch(a + b*x)^3*sech(a + b*x)^2)/x, x)]
    @test_int [sech(a + b*x)^2*csch(a + b*x)^3/x^2, x, 0, CannotIntegrate((csch(a + b*x)^3*sech(a + b*x)^2)/x^2, x)]


    @test_int [x^m*sech(a + b*x)^3*csch(a + b*x)^3, x, 0, CannotIntegrate(x^m*csch(a + b*x)^3*sech(a + b*x)^3, x)]

    @test_int [x^3*sech(a + b*x)^3*csch(a + b*x)^3, x, 16, -((6*x*atanh(ℯ^(2*a + 2*b*x)))/b^3) + (4*x^3*atanh(ℯ^(2*a + 2*b*x)))/b - (3*x^2*csch(2*a + 2*b*x))/b^2 - (2*x^3*coth(2*a + 2*b*x)*csch(2*a + 2*b*x))/b - (3*PolyLog(2, -ℯ^(2*a + 2*b*x)))/(2*b^4) + (3*x^2*PolyLog(2, -ℯ^(2*a + 2*b*x)))/b^2 + (3*PolyLog(2, ℯ^(2*a + 2*b*x)))/(2*b^4) - (3*x^2*PolyLog(2, ℯ^(2*a + 2*b*x)))/b^2 - (3*x*PolyLog(3, -ℯ^(2*a + 2*b*x)))/b^3 + (3*x*PolyLog(3, ℯ^(2*a + 2*b*x)))/b^3 + (3*PolyLog(4, -ℯ^(2*a + 2*b*x)))/(2*b^4) - (3*PolyLog(4, ℯ^(2*a + 2*b*x)))/(2*b^4)]
    @test_int [x^2*sech(a + b*x)^3*csch(a + b*x)^3, x, 10, (4*x^2*atanh(ℯ^(2*a + 2*b*x)))/b - atanh(cosh(2*a + 2*b*x))/b^3 - (2*x*csch(2*a + 2*b*x))/b^2 - (2*x^2*coth(2*a + 2*b*x)*csch(2*a + 2*b*x))/b + (2*x*PolyLog(2, -ℯ^(2*a + 2*b*x)))/b^2 - (2*x*PolyLog(2, ℯ^(2*a + 2*b*x)))/b^2 - PolyLog(3, -ℯ^(2*a + 2*b*x))/b^3 + PolyLog(3, ℯ^(2*a + 2*b*x))/b^3]
    @test_int [x^1*sech(a + b*x)^3*csch(a + b*x)^3, x, 7, (4*x*atanh(ℯ^(2*a + 2*b*x)))/b - csch(2*a + 2*b*x)/b^2 - (2*x*coth(2*a + 2*b*x)*csch(2*a + 2*b*x))/b + PolyLog(2, -ℯ^(2*a + 2*b*x))/b^2 - PolyLog(2, ℯ^(2*a + 2*b*x))/b^2]
    @test_int [x^0*sech(a + b*x)^3*csch(a + b*x)^3, x, 4, -(coth(a + b*x)^2/(2*b)) - (2*log(tanh(a + b*x)))/b + tanh(a + b*x)^2/(2*b)]
    @test_int [sech(a + b*x)^3*csch(a + b*x)^3/x^1, x, 1, 8*Unintegrable(csch(2*a + 2*b*x)^3/x, x)]
    @test_int [sech(a + b*x)^3*csch(a + b*x)^3/x^2, x, 1, 8*Unintegrable(csch(2*a + 2*b*x)^3/x^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cosh(a+b*x)^(n/2)*sinh(a+b*x)^n=#


    @test_int [x*sinh(a + b*x)*cosh(a + b*x)^(5/2), x, 4, (2*x*cosh(a + b*x)^(7/2))/(7*b) + (20*im*EllipticF((1/2)*im*(a + b*x), 2))/(147*b^2) - (20*sqrt(cosh(a + b*x))*sinh(a + b*x))/(147*b^2) - (4*cosh(a + b*x)^(5/2)*sinh(a + b*x))/(49*b^2)]
    @test_int [x*sinh(a + b*x)*cosh(a + b*x)^(3/2), x, 3, (2*x*cosh(a + b*x)^(5/2))/(5*b) + (12*im*EllipticE((1/2)*im*(a + b*x), 2))/(25*b^2) - (4*cosh(a + b*x)^(3/2)*sinh(a + b*x))/(25*b^2)]
    @test_int [x*sinh(a + b*x)*sqrt(cosh(a + b*x)), x, 3, (2*x*cosh(a + b*x)^(3/2))/(3*b) + (4*im*EllipticF((1/2)*im*(a + b*x), 2))/(9*b^2) - (4*sqrt(cosh(a + b*x))*sinh(a + b*x))/(9*b^2)]
    @test_int [x*sinh(a + b*x)/sqrt(cosh(a + b*x)), x, 2, (2*x*sqrt(cosh(a + b*x)))/b + (4*im*EllipticE((1/2)*im*(a + b*x), 2))/b^2]
    @test_int [x*sinh(a + b*x)/cosh(a + b*x)^(3/2), x, 2, -((2*x)/(b*sqrt(cosh(a + b*x)))) - (4*im*EllipticF((1/2)*im*(a + b*x), 2))/b^2]
    @test_int [x*sinh(a + b*x)/cosh(a + b*x)^(5/2), x, 3, -((2*x)/(3*b*cosh(a + b*x)^(3/2))) + (4*im*EllipticE((1/2)*im*(a + b*x), 2))/(3*b^2) + (4*sinh(a + b*x))/(3*b^2*sqrt(cosh(a + b*x)))]
    @test_int [x*sinh(a + b*x)/cosh(a + b*x)^(7/2), x, 3, -((2*x)/(5*b*cosh(a + b*x)^(5/2))) - (4*im*EllipticF((1/2)*im*(a + b*x), 2))/(15*b^2) + (4*sinh(a + b*x))/(15*b^2*cosh(a + b*x)^(3/2))]
    @test_int [x*sinh(a + b*x)/cosh(a + b*x)^(9/2), x, 4, -((2*x)/(7*b*cosh(a + b*x)^(7/2))) + (12*im*EllipticE((1/2)*im*(a + b*x), 2))/(35*b^2) + (4*sinh(a + b*x))/(35*b^2*cosh(a + b*x)^(5/2)) + (12*sinh(a + b*x))/(35*b^2*sqrt(cosh(a + b*x)))]


    @test_int [x*sinh(a + b*x)*sech(a + b*x)^(9/2), x, 5, (12*im*sqrt(cosh(a + b*x))*EllipticE((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/(35*b^2) - (2*x*sech(a + b*x)^(7/2))/(7*b) + (12*sqrt(sech(a + b*x))*sinh(a + b*x))/(35*b^2) + (4*sech(a + b*x)^(5/2)*sinh(a + b*x))/(35*b^2)]
    @test_int [x*sinh(a + b*x)*sech(a + b*x)^(7/2), x, 4, -((4*im*sqrt(cosh(a + b*x))*EllipticF((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/(15*b^2)) - (2*x*sech(a + b*x)^(5/2))/(5*b) + (4*sech(a + b*x)^(3/2)*sinh(a + b*x))/(15*b^2)]
    @test_int [x*sinh(a + b*x)*sech(a + b*x)^(5/2), x, 4, (4*im*sqrt(cosh(a + b*x))*EllipticE((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/(3*b^2) - (2*x*sech(a + b*x)^(3/2))/(3*b) + (4*sqrt(sech(a + b*x))*sinh(a + b*x))/(3*b^2)]
    @test_int [x*sinh(a + b*x)*sech(a + b*x)^(3/2), x, 3, -((2*x*sqrt(sech(a + b*x)))/b) - (4*im*sqrt(cosh(a + b*x))*EllipticF((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/b^2]
    @test_int [x*sinh(a + b*x)*sech(a + b*x)^(1/2), x, 3, (2*x)/(b*sqrt(sech(a + b*x))) + (4*im*sqrt(cosh(a + b*x))*EllipticE((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/b^2]
    @test_int [x*sinh(a + b*x)/sech(a + b*x)^(1/2), x, 4, (2*x)/(3*b*sech(a + b*x)^(3/2)) + (4*im*sqrt(cosh(a + b*x))*EllipticF((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/(9*b^2) - (4*sinh(a + b*x))/(9*b^2*sqrt(sech(a + b*x)))]
    @test_int [x*sinh(a + b*x)/sech(a + b*x)^(3/2), x, 4, (2*x)/(5*b*sech(a + b*x)^(5/2)) + (12*im*sqrt(cosh(a + b*x))*EllipticE((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/(25*b^2) - (4*sinh(a + b*x))/(25*b^2*sech(a + b*x)^(3/2))]
    @test_int [x*sinh(a + b*x)/sech(a + b*x)^(5/2), x, 5, (2*x)/(7*b*sech(a + b*x)^(7/2)) + (20*im*sqrt(cosh(a + b*x))*EllipticF((1/2)*im*(a + b*x), 2)*sqrt(sech(a + b*x)))/(147*b^2) - (4*sinh(a + b*x))/(49*b^2*sech(a + b*x)^(5/2)) - (20*sinh(a + b*x))/(147*b^2*sqrt(sech(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sinh(a+b*x)^(n/2)*cosh(a+b*x)^n=#


    @test_int [x*cosh(a + b*x)*sinh(a + b*x)^(5/2), x, 5, (20*im*EllipticF((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(147*b^2*sqrt(sinh(a + b*x))) + (20*cosh(a + b*x)*sqrt(sinh(a + b*x)))/(147*b^2) - (4*cosh(a + b*x)*sinh(a + b*x)^(5/2))/(49*b^2) + (2*x*sinh(a + b*x)^(7/2))/(7*b)]
    @test_int [x*cosh(a + b*x)*sinh(a + b*x)^(3/2), x, 4, -((12*im*EllipticE((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(sinh(a + b*x)))/(25*b^2*sqrt(im*sinh(a + b*x)))) - (4*cosh(a + b*x)*sinh(a + b*x)^(3/2))/(25*b^2) + (2*x*sinh(a + b*x)^(5/2))/(5*b)]
    @test_int [x*cosh(a + b*x)*sqrt(sinh(a + b*x)), x, 4, -((4*im*EllipticF((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(9*b^2*sqrt(sinh(a + b*x)))) - (4*cosh(a + b*x)*sqrt(sinh(a + b*x)))/(9*b^2) + (2*x*sinh(a + b*x)^(3/2))/(3*b)]
    @test_int [x*cosh(a + b*x)/sqrt(sinh(a + b*x)), x, 3, (2*x*sqrt(sinh(a + b*x)))/b + (4*im*EllipticE((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(sinh(a + b*x)))/(b^2*sqrt(im*sinh(a + b*x)))]
    @test_int [x*cosh(a + b*x)/sinh(a + b*x)^(3/2), x, 3, -((2*x)/(b*sqrt(sinh(a + b*x)))) - (4*im*EllipticF((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(b^2*sqrt(sinh(a + b*x)))]
    @test_int [x*cosh(a + b*x)/sinh(a + b*x)^(5/2), x, 4, -((2*x)/(3*b*sinh(a + b*x)^(3/2))) - (4*cosh(a + b*x))/(3*b^2*sqrt(sinh(a + b*x))) - (4*im*EllipticE((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(sinh(a + b*x)))/(3*b^2*sqrt(im*sinh(a + b*x)))]
    @test_int [x*cosh(a + b*x)/sinh(a + b*x)^(7/2), x, 4, -((2*x)/(5*b*sinh(a + b*x)^(5/2))) - (4*cosh(a + b*x))/(15*b^2*sinh(a + b*x)^(3/2)) + (4*im*EllipticF((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(15*b^2*sqrt(sinh(a + b*x)))]
    @test_int [x*cosh(a + b*x)/sinh(a + b*x)^(9/2), x, 5, -((2*x)/(7*b*sinh(a + b*x)^(7/2))) - (4*cosh(a + b*x))/(35*b^2*sinh(a + b*x)^(5/2)) + (12*cosh(a + b*x))/(35*b^2*sqrt(sinh(a + b*x))) + (12*im*EllipticE((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(sinh(a + b*x)))/(35*b^2*sqrt(im*sinh(a + b*x)))]


    @test_int [x*cosh(a + b*x)*csch(a + b*x)^(9/2), x, 5, (12*cosh(a + b*x)*sqrt(csch(a + b*x)))/(35*b^2) - (4*cosh(a + b*x)*csch(a + b*x)^(5/2))/(35*b^2) - (2*x*csch(a + b*x)^(7/2))/(7*b) + (12*im*EllipticE((1/2)*(im*a - pi/2 + im*b*x), 2))/(35*b^2*sqrt(csch(a + b*x))*sqrt(im*sinh(a + b*x)))]
    @test_int [x*cosh(a + b*x)*csch(a + b*x)^(7/2), x, 4, -((4*cosh(a + b*x)*csch(a + b*x)^(3/2))/(15*b^2)) - (2*x*csch(a + b*x)^(5/2))/(5*b) + (4*im*sqrt(csch(a + b*x))*EllipticF((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(15*b^2)]
    @test_int [x*cosh(a + b*x)*csch(a + b*x)^(5/2), x, 4, -((4*cosh(a + b*x)*sqrt(csch(a + b*x)))/(3*b^2)) - (2*x*csch(a + b*x)^(3/2))/(3*b) - (4*im*EllipticE((1/2)*(im*a - pi/2 + im*b*x), 2))/(3*b^2*sqrt(csch(a + b*x))*sqrt(im*sinh(a + b*x)))]
    @test_int [x*cosh(a + b*x)*csch(a + b*x)^(3/2), x, 3, -((2*x*sqrt(csch(a + b*x)))/b) - (4*im*sqrt(csch(a + b*x))*EllipticF((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/b^2]
    @test_int [x*cosh(a + b*x)*csch(a + b*x)^(1/2), x, 3, (2*x)/(b*sqrt(csch(a + b*x))) + (4*im*EllipticE((1/2)*(im*a - pi/2 + im*b*x), 2))/(b^2*sqrt(csch(a + b*x))*sqrt(im*sinh(a + b*x)))]
    @test_int [x*cosh(a + b*x)/csch(a + b*x)^(1/2), x, 4, (2*x)/(3*b*csch(a + b*x)^(3/2)) - (4*cosh(a + b*x))/(9*b^2*sqrt(csch(a + b*x))) - (4*im*sqrt(csch(a + b*x))*EllipticF((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(9*b^2)]
    @test_int [x*cosh(a + b*x)/csch(a + b*x)^(3/2), x, 4, (2*x)/(5*b*csch(a + b*x)^(5/2)) - (4*cosh(a + b*x))/(25*b^2*csch(a + b*x)^(3/2)) - (12*im*EllipticE((1/2)*(im*a - pi/2 + im*b*x), 2))/(25*b^2*sqrt(csch(a + b*x))*sqrt(im*sinh(a + b*x)))]
    @test_int [x*cosh(a + b*x)/csch(a + b*x)^(5/2), x, 5, (2*x)/(7*b*csch(a + b*x)^(7/2)) - (4*cosh(a + b*x))/(49*b^2*csch(a + b*x)^(5/2)) + (20*cosh(a + b*x))/(147*b^2*sqrt(csch(a + b*x))) + (20*im*sqrt(csch(a + b*x))*EllipticF((1/2)*(im*a - pi/2 + im*b*x), 2)*sqrt(im*sinh(a + b*x)))/(147*b^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(Hyper(a+b*x)*Hyper(a+b*x))^m=#


    @test_int [(sinh(x)*tanh(x))^(1/2), x, 3, 2*coth(x)*sqrt(sinh(x)*tanh(x))]
    @test_int [(sinh(x)*tanh(x))^(3/2), x, 4, (8/3)*csch(x)*sqrt(sinh(x)*tanh(x)) + (2/3)*sinh(x)*sqrt(sinh(x)*tanh(x))]
    @test_int [(sinh(x)*tanh(x))^(5/2), x, 5, (-(64/15))*coth(x)*sqrt(sinh(x)*tanh(x)) + (16/15)*tanh(x)*sqrt(sinh(x)*tanh(x)) + (2/5)*sinh(x)^2*tanh(x)*sqrt(sinh(x)*tanh(x))]


    @test_int [(cosh(x)*coth(x))^(1/2), x, 3, 2*sqrt(cosh(x)*coth(x))*tanh(x)]
    @test_int [(cosh(x)*coth(x))^(3/2), x, 4, (2/3)*cosh(x)*sqrt(cosh(x)*coth(x)) - (8/3)*sqrt(cosh(x)*coth(x))*sech(x)]
    @test_int [(cosh(x)*coth(x))^(5/2), x, 5, (-(16/15))*coth(x)*sqrt(cosh(x)*coth(x)) + (2/5)*cosh(x)^2*coth(x)*sqrt(cosh(x)*coth(x)) + (64/15)*sqrt(cosh(x)*coth(x))*tanh(x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*Hyper(x))^n*(c+d*Hyper(x))^p=#


    @test_int [(b + c + cosh(x))/(a + b*sinh(x)), x, 7, -((2*(b + c)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/sqrt(a^2 + b^2)) + log(a + b*sinh(x))/b]
    @test_int [(b + c + cosh(x))/(a - b*sinh(x)), x, 7, (2*(b + c)*atanh((b + a*tanh(x/2))/sqrt(a^2 + b^2)))/sqrt(a^2 + b^2) - log(a - b*sinh(x))/b]

    @test_int [(b + c + sinh(x))/(a + b*cosh(x)), x, 6, (2*(b + c)*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) + log(a + b*cosh(x))/b]
    @test_int [(b + c + sinh(x))/(a - b*cosh(x)), x, 6, (2*(b + c)*atanh((sqrt(a + b)*tanh(x/2))/sqrt(a - b)))/(sqrt(a - b)*sqrt(a + b)) - log(a - b*cosh(x))/b]


    @test_int [x*((b - a*sinh(x))/(a + b*sinh(x))^2), x, 3, log(a + b*sinh(x))/b - (x*cosh(x))/(a + b*sinh(x))]
    @test_int [x*((b + a*cosh(x))/(a + b*cosh(x))^2), x, 3, -(log(a + b*cosh(x))/b) + (x*sinh(x))/(a + b*cosh(x))]


    @test_int [(a + b*sech(x))/(c + d*cosh(x)), x, 5, (b*atan(sinh(x)))/c + (2*(a*c - b*d)*atanh((sqrt(c - d)*tanh(x/2))/sqrt(c + d)))/(c*sqrt(c - d)*sqrt(c + d))]
    @test_int [(a + b*csch(x))/(c + d*sinh(x)), x, 6, -((b*atanh(cosh(x)))/c) - (2*(a*c - b*d)*atanh((d - c*tanh(x/2))/sqrt(c^2 + d^2)))/(c*sqrt(c^2 + d^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*Hyper(x))^n*(c+d*Hyper(x)^2)^p=#


    @test_int [(1 + sinh(x)^2)/(1 - sinh(x)^2), x, 3, -x + sqrt(2)*atanh(sqrt(2)*tanh(x))]
    @test_int [(1 - sinh(x)^2)/(1 + sinh(x)^2), x, 4, -x + 2*tanh(x)]


    @test_int [(1 + cosh(x)^2)/(1 - cosh(x)^2), x, 4, -x + 2*coth(x)]
    @test_int [(1 - cosh(x)^2)/(1 + cosh(x)^2), x, 3, -x + sqrt(2)*atanh(tanh(x)/sqrt(2))]


    @test_int [(a + b*sech(x)^2)/(c + d*cosh(x)), x, 6, -((b*d*atan(sinh(x)))/c^2) + (2*(a*c^2 + b*d^2)*atanh((sqrt(c - d)*tanh(x/2))/sqrt(c + d)))/(c^2*sqrt(c - d)*sqrt(c + d)) + (b*tanh(x))/c]
    @test_int [(a + b*csch(x)^2)/(c + d*sinh(x)), x, 7, (b*d*atanh(cosh(x)))/c^2 - (2*(a*c^2 + b*d^2)*atanh((d - c*tanh(x/2))/sqrt(c^2 + d^2)))/(c^2*sqrt(c^2 + d^2)) - (b*coth(x))/c]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(a*Hyper(c+d*x) + b*Hyper(c+d*x))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*Hyper(c+d*x) + b*Hyper(c+d*x))^p=#


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*cosh(c+d*x) + b*sinh(c+d*x))^n=#


    @test_int [(a*cosh(x) + b*sinh(x)), x, 3, b*cosh(x) + a*sinh(x)]
    @test_int [(a*cosh(x) + b*sinh(x))^2, x, 2, (1/2)*(a^2 - b^2)*x + (1/2)*(b*cosh(x) + a*sinh(x))*(a*cosh(x) + b*sinh(x))]
    @test_int [(a*cosh(x) + b*sinh(x))^3, x, 2, (a^2 - b^2)*(b*cosh(x) + a*sinh(x)) + (1/3)*(b*cosh(x) + a*sinh(x))^3]
    @test_int [(a*cosh(x) + b*sinh(x))^4, x, 3, (3/8)*(a^2 - b^2)^2*x + (3/8)*(a^2 - b^2)*(b*cosh(x) + a*sinh(x))*(a*cosh(x) + b*sinh(x)) + (1/4)*(b*cosh(x) + a*sinh(x))*(a*cosh(x) + b*sinh(x))^3]
    @test_int [(a*cosh(x) + b*sinh(x))^5, x, 3, (a^2 - b^2)^2*(b*cosh(x) + a*sinh(x)) + (2/3)*(a^2 - b^2)*(b*cosh(x) + a*sinh(x))^3 + (1/5)*(b*cosh(x) + a*sinh(x))^5]

    @test_int [1/(a*cosh(x) + b*sinh(x)), x, 2, atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2))/sqrt(a^2 - b^2)]
    @test_int [1/(a*cosh(x) + b*sinh(x))^2, x, 1, sinh(x)/(a*(a*cosh(x) + b*sinh(x)))]
    @test_int [1/(a*cosh(x) + b*sinh(x))^3, x, 3, atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2))/(2*(a^2 - b^2)^(3/2)) + (b*cosh(x) + a*sinh(x))/(2*(a^2 - b^2)*(a*cosh(x) + b*sinh(x))^2)]
    @test_int [1/(a*cosh(x) + b*sinh(x))^4, x, 2, (b*cosh(x) + a*sinh(x))/(3*(a^2 - b^2)*(a*cosh(x) + b*sinh(x))^3) + (2*sinh(x))/(3*a*(a^2 - b^2)*(a*cosh(x) + b*sinh(x)))]
    @test_int [1/(a*cosh(x) + b*sinh(x))^5, x, 4, (3*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(8*(a^2 - b^2)^(5/2)) + (b*cosh(x) + a*sinh(x))/(4*(a^2 - b^2)*(a*cosh(x) + b*sinh(x))^4) + (3*(b*cosh(x) + a*sinh(x)))/(8*(a^2 - b^2)^2*(a*cosh(x) + b*sinh(x))^2)]

    @test_int [(a*cosh(x) + b*sinh(x))^(1/2), x, 2, -((2*im*EllipticE((1/2)*(im*x - atan(a, (-im)*b)), 2)*sqrt(a*cosh(x) + b*sinh(x)))/sqrt((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))]
    @test_int [(a*cosh(x) + b*sinh(x))^(3/2), x, 3, (2/3)*(b*cosh(x) + a*sinh(x))*sqrt(a*cosh(x) + b*sinh(x)) - (2*im*(a^2 - b^2)*EllipticF((1/2)*(im*x - atan(a, (-im)*b)), 2)*sqrt((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))/(3*sqrt(a*cosh(x) + b*sinh(x)))]
    @test_int [(a*cosh(x) + b*sinh(x))^(5/2), x, 3, (2/5)*(b*cosh(x) + a*sinh(x))*(a*cosh(x) + b*sinh(x))^(3/2) - (6*im*(a^2 - b^2)*EllipticE((1/2)*(im*x - atan(a, (-im)*b)), 2)*sqrt(a*cosh(x) + b*sinh(x)))/(5*sqrt((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))]

    @test_int [1/(a*cosh(x) + b*sinh(x))^(1/2), x, 2, -((2*im*EllipticF((1/2)*(im*x - atan(a, (-im)*b)), 2)*sqrt((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))/sqrt(a*cosh(x) + b*sinh(x)))]
    @test_int [1/(a*cosh(x) + b*sinh(x))^(3/2), x, 3, (2*(b*cosh(x) + a*sinh(x)))/((a^2 - b^2)*sqrt(a*cosh(x) + b*sinh(x))) + (2*im*EllipticE((1/2)*(im*x - atan(a, (-im)*b)), 2)*sqrt(a*cosh(x) + b*sinh(x)))/((a^2 - b^2)*sqrt((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))]
    @test_int [1/(a*cosh(x) + b*sinh(x))^(5/2), x, 3, (2*(b*cosh(x) + a*sinh(x)))/(3*(a^2 - b^2)*(a*cosh(x) + b*sinh(x))^(3/2)) - (2*im*EllipticF((1/2)*(im*x - atan(a, (-im)*b)), 2)*sqrt((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))/(3*(a^2 - b^2)*sqrt(a*cosh(x) + b*sinh(x)))]


    @test_int [(a*cosh(c + d*x) + a*sinh(c + d*x)), x, 3, (a*cosh(c + d*x))/d + (a*sinh(c + d*x))/d]
    @test_int [(a*cosh(c + d*x) + a*sinh(c + d*x))^2, x, 1, (a*cosh(c + d*x) + a*sinh(c + d*x))^2/(2*d)]
    @test_int [(a*cosh(c + d*x) + a*sinh(c + d*x))^3, x, 1, (a*cosh(c + d*x) + a*sinh(c + d*x))^3/(3*d)]
    @test_int [(a*cosh(c + d*x) + a*sinh(c + d*x))^n, x, 1, (a*cosh(c + d*x) + a*sinh(c + d*x))^n/(d*n)]

    @test_int [1/(a*cosh(c + d*x) + a*sinh(c + d*x)), x, 1, -(1/(d*(a*cosh(c + d*x) + a*sinh(c + d*x))))]
    @test_int [1/(a*cosh(c + d*x) + a*sinh(c + d*x))^2, x, 1, -(1/(2*d*(a*cosh(c + d*x) + a*sinh(c + d*x))^2))]
    @test_int [1/(a*cosh(c + d*x) + a*sinh(c + d*x))^3, x, 1, -(1/(3*d*(a*cosh(c + d*x) + a*sinh(c + d*x))^3))]

    @test_int [sqrt(a*cosh(c + d*x) + a*sinh(c + d*x)), x, 1, (2*sqrt(a*cosh(c + d*x) + a*sinh(c + d*x)))/d]
    @test_int [1/sqrt(a*cosh(c + d*x) + a*sinh(c + d*x)), x, 1, -(2/(d*sqrt(a*cosh(c + d*x) + a*sinh(c + d*x))))]


    @test_int [(a*cosh(c + d*x) - a*sinh(c + d*x)), x, 3, -((a*cosh(c + d*x))/d) + (a*sinh(c + d*x))/d]
    @test_int [(a*cosh(c + d*x) - a*sinh(c + d*x))^2, x, 1, -((a*cosh(c + d*x) - a*sinh(c + d*x))^2/(2*d))]
    @test_int [(a*cosh(c + d*x) - a*sinh(c + d*x))^3, x, 1, -((a*cosh(c + d*x) - a*sinh(c + d*x))^3/(3*d))]
    @test_int [(a*cosh(c + d*x) - a*sinh(c + d*x))^n, x, 1, -((a*cosh(c + d*x) - a*sinh(c + d*x))^n/(d*n))]

    @test_int [1/(a*cosh(c + d*x) - a*sinh(c + d*x)), x, 1, 1/(d*(a*cosh(c + d*x) - a*sinh(c + d*x)))]
    @test_int [1/(a*cosh(c + d*x) - a*sinh(c + d*x))^2, x, 1, 1/(2*d*(a*cosh(c + d*x) - a*sinh(c + d*x))^2)]
    @test_int [1/(a*cosh(c + d*x) - a*sinh(c + d*x))^3, x, 1, 1/(3*d*(a*cosh(c + d*x) - a*sinh(c + d*x))^3)]

    @test_int [sqrt(a*cosh(c + d*x) - a*sinh(c + d*x)), x, 1, -((2*sqrt(a*cosh(c + d*x) - a*sinh(c + d*x)))/d)]
    @test_int [1/sqrt(a*cosh(c + d*x) - a*sinh(c + d*x)), x, 1, 2/(d*sqrt(a*cosh(c + d*x) - a*sinh(c + d*x)))]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*sech(c+d*x) + b*tanh(c+d*x))^n=#


    @test_int [(a*sech(x) + b*tanh(x))^5, x, 8, (1/8)*a*(3*a^4 + 10*a^2*b^2 + 15*b^4)*atan(sinh(x)) + b^5*log(cosh(x)) - (1/8)*a*b^2*(3*a^2 + 7*b^2)*sinh(x) - (1/4)*sech(x)^4*(b - a*sinh(x))*(a + b*sinh(x))^4 - (1/8)*sech(x)^2*(a + b*sinh(x))^2*(2*b*(a^2 + 2*b^2) - a*(3*a^2 + 5*b^2)*sinh(x))]
    @test_int [(a*sech(x) + b*tanh(x))^4, x, 4, b^4*x - (4/3)*a*b*(a^2 + 2*b^2)*cosh(x) - (1/3)*b^2*(2*a^2 + 3*b^2)*cosh(x)*sinh(x) - (1/3)*sech(x)^3*(b - a*sinh(x))*(a + b*sinh(x))^3 + (1/3)*sech(x)*(a + b*sinh(x))^2*(a*b + (2*a^2 + 3*b^2)*sinh(x))]
    @test_int [(a*sech(x) + b*tanh(x))^3, x, 7, (1/2)*a*(a^2 + 3*b^2)*atan(sinh(x)) + b^3*log(cosh(x)) - (1/2)*a*b^2*sinh(x) - (1/2)*sech(x)^2*(b - a*sinh(x))*(a + b*sinh(x))^2]
    @test_int [(a*sech(x) + b*tanh(x))^2, x, 4, b^2*x - a*b*cosh(x) - sech(x)*(b - a*sinh(x))*(a + b*sinh(x))]
    @test_int [(a*sech(x) + b*tanh(x)), x, 3, a*atan(sinh(x)) + b*log(cosh(x))]
    @test_int [1/(a*sech(x) + b*tanh(x)), x, 3, log(a + b*sinh(x))/b]
    @test_int [1/(a*sech(x) + b*tanh(x))^2, x, 6, x/b^2 + (2*a*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b^2*sqrt(a^2 + b^2)) - cosh(x)/(b*(a + b*sinh(x)))]
    @test_int [1/(a*sech(x) + b*tanh(x))^3, x, 4, log(a + b*sinh(x))/b^3 - (a^2 + b^2)/(2*b^3*(a + b*sinh(x))^2) + (2*a)/(b^3*(a + b*sinh(x)))]
    @test_int [1/(a*sech(x) + b*tanh(x))^4, x, 8, x/b^4 + (a*(2*a^2 + 3*b^2)*atanh((b - a*tanh(x/2))/sqrt(a^2 + b^2)))/(b^4*(a^2 + b^2)^(3/2)) - cosh(x)^3/(3*b*(a + b*sinh(x))^3) + (a*cosh(x)^3)/(2*b*(a^2 + b^2)*(a + b*sinh(x))^2) - (cosh(x)*(2*(a^2 + b^2) + a*b*sinh(x)))/(2*b^3*(a^2 + b^2)*(a + b*sinh(x)))]
    @test_int [1/(a*sech(x) + b*tanh(x))^5, x, 4, log(a + b*sinh(x))/b^5 - (a^2 + b^2)^2/(4*b^5*(a + b*sinh(x))^4) + (4*a*(a^2 + b^2))/(3*b^5*(a + b*sinh(x))^3) - (3*a^2 + b^2)/(b^5*(a + b*sinh(x))^2) + (4*a)/(b^5*(a + b*sinh(x)))]


    @test_int [(sech(x) + im*tanh(x))^5, x, 4, im*log(im + sinh(x)) - (2*im)/(1 - im*sinh(x))^2 + (4*im)/(1 - im*sinh(x))]
    @test_int [(sech(x) + im*tanh(x))^4, x, 5, x - (2*im*cosh(x)^3)/(3*(1 - im*sinh(x))^3) + (2*im*cosh(x))/(1 - im*sinh(x))]
    @test_int [(sech(x) + im*tanh(x))^3, x, 4, (-im)*log(im + sinh(x)) - (2*im)/(1 - im*sinh(x))]
    @test_int [(sech(x) + im*tanh(x))^2, x, 4, -x - (2*im*cosh(x))/(1 - im*sinh(x))]
    @test_int [(sech(x) + im*tanh(x)), x, 3, atan(sinh(x)) + im*log(cosh(x))]
    @test_int [1/(sech(x) + im*tanh(x)), x, 3, (-im)*log(im - sinh(x))]
    @test_int [1/(sech(x) + im*tanh(x))^2, x, 3, -x + (2*im*cosh(x))/(1 + im*sinh(x))]
    @test_int [1/(sech(x) + im*tanh(x))^3, x, 4, im*log(im - sinh(x)) + (2*im)/(1 + im*sinh(x))]
    @test_int [1/(sech(x) + im*tanh(x))^4, x, 4, x + (2*im*cosh(x)^3)/(3*(1 + im*sinh(x))^3) - (2*im*cosh(x))/(1 + im*sinh(x))]
    @test_int [1/(sech(x) + im*tanh(x))^5, x, 4, (-im)*log(im - sinh(x)) + (2*im)/(1 + im*sinh(x))^2 - (4*im)/(1 + im*sinh(x))]


    @test_int [(sech(x) - im*tanh(x))^5, x, 4, (-im)*log(im - sinh(x)) + (2*im)/(1 + im*sinh(x))^2 - (4*im)/(1 + im*sinh(x))]
    @test_int [(sech(x) - im*tanh(x))^4, x, 5, x + (2*im*cosh(x)^3)/(3*(1 + im*sinh(x))^3) - (2*im*cosh(x))/(1 + im*sinh(x))]
    @test_int [(sech(x) - im*tanh(x))^3, x, 4, im*log(im - sinh(x)) + (2*im)/(1 + im*sinh(x))]
    @test_int [(sech(x) - im*tanh(x))^2, x, 4, -x + (2*im*cosh(x))/(1 + im*sinh(x))]
    @test_int [(sech(x) - im*tanh(x)), x, 3, atan(sinh(x)) - im*log(cosh(x))]
    @test_int [1/(sech(x) - im*tanh(x)), x, 3, im*log(im + sinh(x))]
    @test_int [1/(sech(x) - im*tanh(x))^2, x, 3, -x - (2*im*cosh(x))/(1 - im*sinh(x))]
    @test_int [1/(sech(x) - im*tanh(x))^3, x, 4, (-im)*log(im + sinh(x)) - (2*im)/(1 - im*sinh(x))]
    @test_int [1/(sech(x) - im*tanh(x))^4, x, 4, x - (2*im*cosh(x)^3)/(3*(1 - im*sinh(x))^3) + (2*im*cosh(x))/(1 - im*sinh(x))]
    @test_int [1/(sech(x) - im*tanh(x))^5, x, 4, im*log(im + sinh(x)) - (2*im)/(1 - im*sinh(x))^2 + (4*im)/(1 - im*sinh(x))]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*coth(c+d*x) + b*csch(c+d*x))^n=#


    @test_int [(a*coth(x) + b*csch(x))^5, x, 8, (-(1/8))*b*(15*a^4 - 10*a^2*b^2 + 3*b^4)*atanh(cosh(x)) + (1/8)*a^2*b*(7*a^2 - 3*b^2)*cosh(x) - (1/8)*(b + a*cosh(x))^2*(2*a*(2*a^2 - b^2) + b*(5*a^2 - 3*b^2)*cosh(x))*csch(x)^2 - (1/4)*(b + a*cosh(x))^4*(a + b*cosh(x))*csch(x)^4 + a^5*log(sinh(x))]
    @test_int [(a*coth(x) + b*csch(x))^4, x, 4, a^4*x - (1/3)*(b + a*cosh(x))^2*(a*b + (3*a^2 - 2*b^2)*cosh(x))*csch(x) - (1/3)*(b + a*cosh(x))^3*(a + b*cosh(x))*csch(x)^3 + (4/3)*a*b*(2*a^2 - b^2)*sinh(x) + (1/3)*a^2*(3*a^2 - 2*b^2)*cosh(x)*sinh(x)]
    @test_int [(a*coth(x) + b*csch(x))^3, x, 7, (-(1/2))*b*(3*a^2 - b^2)*atanh(cosh(x)) + (1/2)*a^2*b*cosh(x) - (1/2)*(b + a*cosh(x))^2*(a + b*cosh(x))*csch(x)^2 + a^3*log(sinh(x))]
    @test_int [(a*coth(x) + b*csch(x))^2, x, 4, a^2*x - (b + a*cosh(x))*(a + b*cosh(x))*csch(x) + a*b*sinh(x)]
    @test_int [(a*coth(x) + b*csch(x))^1, x, 3, (-b)*atanh(cosh(x)) + a*log(sinh(x))]
    @test_int [1/(a*coth(x) + b*csch(x))^1, x, 3, log(b + a*cosh(x))/a]
    @test_int [1/(a*coth(x) + b*csch(x))^2, x, 5, x/a^2 - (2*b*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a^2*sqrt(a - b)*sqrt(a + b)) - sinh(x)/(a*(b + a*cosh(x)))]
    @test_int [1/(a*coth(x) + b*csch(x))^3, x, 4, (a^2 - b^2)/(2*a^3*(b + a*cosh(x))^2) + (2*b)/(a^3*(b + a*cosh(x))) + log(b + a*cosh(x))/a^3]
    @test_int [1/(a*coth(x) + b*csch(x))^4, x, 7, x/a^4 - (b*(3*a^2 - 2*b^2)*atan((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(a^4*(a - b)^(3/2)*(a + b)^(3/2)) - ((2*(a^2 - b^2) - a*b*cosh(x))*sinh(x))/(2*a^3*(a^2 - b^2)*(b + a*cosh(x))) - sinh(x)^3/(3*a*(b + a*cosh(x))^3) - (b*sinh(x)^3)/(2*a*(a^2 - b^2)*(b + a*cosh(x))^2)]
    @test_int [1/(a*coth(x) + b*csch(x))^5, x, 4, -((a^2 - b^2)^2/(4*a^5*(b + a*cosh(x))^4)) - (4*b*(a^2 - b^2))/(3*a^5*(b + a*cosh(x))^3) + (a^2 - 3*b^2)/(a^5*(b + a*cosh(x))^2) + (4*b)/(a^5*(b + a*cosh(x))) + log(b + a*cosh(x))/a^5]


    @test_int [(coth(x) + csch(x))^5, x, 4, -(2/(1 - cosh(x))^2) + 4/(1 - cosh(x)) + log(1 - cosh(x))]
    @test_int [(coth(x) + csch(x))^4, x, 5, x + (2*sinh(x))/(1 - cosh(x)) + (2*sinh(x)^3)/(3*(1 - cosh(x))^3)]
    @test_int [(coth(x) + csch(x))^3, x, 4, 2/(1 - cosh(x)) + log(1 - cosh(x))]
    @test_int [(coth(x) + csch(x))^2, x, 4, x + (2*sinh(x))/(1 - cosh(x))]
    @test_int [(coth(x) + csch(x))^1, x, 3, -atanh(cosh(x)) + log(sinh(x))]
    @test_int [1/(coth(x) + csch(x))^1, x, 3, log(1 + cosh(x))]
    @test_int [1/(coth(x) + csch(x))^2, x, 3, x - (2*sinh(x))/(1 + cosh(x))]
    @test_int [1/(coth(x) + csch(x))^3, x, 4, 2/(1 + cosh(x)) + log(1 + cosh(x))]
    @test_int [1/(coth(x) + csch(x))^4, x, 4, x - (2*sinh(x))/(1 + cosh(x)) - (2*sinh(x)^3)/(3*(1 + cosh(x))^3)]
    @test_int [1/(coth(x) + csch(x))^5, x, 4, -(2/(1 + cosh(x))^2) + 4/(1 + cosh(x)) + log(1 + cosh(x))]


    @test_int [(-coth(x) + csch(x))^5, x, 4, 2/(1 + cosh(x))^2 - 4/(1 + cosh(x)) - log(1 + cosh(x))]
    @test_int [(-coth(x) + csch(x))^4, x, 5, x - (2*sinh(x))/(1 + cosh(x)) - (2*sinh(x)^3)/(3*(1 + cosh(x))^3)]
    @test_int [(-coth(x) + csch(x))^3, x, 4, -(2/(1 + cosh(x))) - log(1 + cosh(x))]
    @test_int [(-coth(x) + csch(x))^2, x, 4, x - (2*sinh(x))/(1 + cosh(x))]
    @test_int [(-coth(x) + csch(x))^1, x, 3, -atanh(cosh(x)) - log(sinh(x))]
    @test_int [1/(-coth(x) + csch(x))^1, x, 3, -log(1 - cosh(x))]
    @test_int [1/(-coth(x) + csch(x))^2, x, 3, x + (2*sinh(x))/(1 - cosh(x))]
    @test_int [1/(-coth(x) + csch(x))^3, x, 4, -(2/(1 - cosh(x))) - log(1 - cosh(x))]
    @test_int [1/(-coth(x) + csch(x))^4, x, 4, x + (2*sinh(x))/(1 - cosh(x)) + (2*sinh(x)^3)/(3*(1 - cosh(x))^3)]
    @test_int [1/(-coth(x) + csch(x))^5, x, 4, 2/(1 - cosh(x))^2 - 4/(1 - cosh(x)) - log(1 - cosh(x))]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*csch(c+d*x) + b*sinh(c+d*x))^n=#


    #= Note*that*csch(x)+sinh(x) == cosh(x)*coth(x) =#
    @test_int [(csch(x) + sinh(x)), x, 3, -atanh(cosh(x)) + cosh(x)]
    @test_int [(csch(x) + sinh(x))^2, x, 4, (3*x)/2 - (3*coth(x))/2 + (1/2)*cosh(x)^2*coth(x)]
    @test_int [(csch(x) + sinh(x))^3, x, 6, (-(5/2))*atanh(cosh(x)) + (5*cosh(x))/2 + (5*cosh(x)^3)/6 - (1/2)*cosh(x)^3*coth(x)^2]

    @test_int [(csch(x) + sinh(x))^(1/2), x, 4, 2*sqrt(cosh(x)*coth(x))*tanh(x)]
    @test_int [(csch(x) + sinh(x))^(3/2), x, 5, (2/3)*cosh(x)*sqrt(cosh(x)*coth(x)) - (8/3)*sqrt(cosh(x)*coth(x))*sech(x)]
    @test_int [(csch(x) + sinh(x))^(5/2), x, 6, (-(16/15))*coth(x)*sqrt(cosh(x)*coth(x)) + (2/5)*cosh(x)^2*coth(x)*sqrt(cosh(x)*coth(x)) + (64/15)*sqrt(cosh(x)*coth(x))*tanh(x)]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*sech(c+d*x) + b*cosh(c+d*x))^n=#


    #= Note*that*sech(x)-cosh(x) == -sinh(x)*tanh(x) =#
    @test_int [(sech(x) - cosh(x)), x, 3, atan(sinh(x)) - sinh(x)]
    @test_int [(sech(x) - cosh(x))^2, x, 4, -((3*x)/2) + (3*tanh(x))/2 + (1/2)*sinh(x)^2*tanh(x)]
    @test_int [(sech(x) - cosh(x))^3, x, 6, (-(5/2))*atan(sinh(x)) + (5*sinh(x))/2 - (5*sinh(x)^3)/6 + (1/2)*sinh(x)^3*tanh(x)^2]

    @test_int [(sech(x) - cosh(x))^(1/2), x, 3, 2*coth(x)*sqrt((-sinh(x))*tanh(x))]
    @test_int [(sech(x) - cosh(x))^(3/2), x, 4, (-(8/3))*csch(x)*sqrt((-sinh(x))*tanh(x)) - (2/3)*sinh(x)*sqrt((-sinh(x))*tanh(x))]
    @test_int [(sech(x) - cosh(x))^(5/2), x, 5, (-(64/15))*coth(x)*sqrt((-sinh(x))*tanh(x)) + (16/15)*tanh(x)*sqrt((-sinh(x))*tanh(x)) + (2/5)*sinh(x)^2*tanh(x)*sqrt((-sinh(x))*tanh(x))]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*sinh(c+d*x) + b*tanh(c+d*x))^n=#


    @test_int [1/(sinh(x) + tanh(x)), x, 6, (-(1/2))*atanh(cosh(x)) - 1/(2*(1 + cosh(x))), (-(1/2))*atanh(cosh(x)) - (1/2)*coth(x)*csch(x) + csch(x)^2/2]
    @test_int [1/(sinh(x) - tanh(x)), x, 6, (-(1/2))*atanh(cosh(x)) + 1/(2*(1 - cosh(x))), (-(1/2))*atanh(cosh(x)) - (1/2)*coth(x)*csch(x) - csch(x)^2/2]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(x)^m / (a*Hyper(x) + b*Hyper(x))=#


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(x)^m / (a*cosh(x) + b*sinh(x))=#


    @test_int [sinh(x)/(a*cosh(x) + b*sinh(x)), x, 2, -((b*x)/(a^2 - b^2)) + (a*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)]
    @test_int [sinh(x)^2/(a*cosh(x) + b*sinh(x)), x, 4, -((a^2*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2)) - (b*cosh(x))/(a^2 - b^2) + (a*sinh(x))/(a^2 - b^2)]
    @test_int [sinh(x)^3/(a*cosh(x) + b*sinh(x)), x, 5, (a^2*b*x)/(a^2 - b^2)^2 + (b*x)/(2*(a^2 - b^2)) - (a^3*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^2 - (b*cosh(x)*sinh(x))/(2*(a^2 - b^2)) + (a*sinh(x)^2)/(2*(a^2 - b^2))]


    @test_int [cosh(x)/(a*cosh(x) + b*sinh(x)), x, 2, (a*x)/(a^2 - b^2) - (b*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)]
    @test_int [cosh(x)^2/(a*cosh(x) + b*sinh(x)), x, 4, -((b^2*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2)) - (b*cosh(x))/(a^2 - b^2) + (a*sinh(x))/(a^2 - b^2)]
    @test_int [cosh(x)^3/(a*cosh(x) + b*sinh(x)), x, 5, -((a*b^2*x)/(a^2 - b^2)^2) + (a*x)/(2*(a^2 - b^2)) - (b*cosh(x)^2)/(2*(a^2 - b^2)) + (b^3*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^2 + (a*cosh(x)*sinh(x))/(2*(a^2 - b^2))]


    @test_int [tanh(x)/(a*sinh(x) + b*cosh(x)), x, 5, atan(sinh(x))/a + (b*atanh((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))/(a*sqrt(a^2 - b^2))]


    @test_int [coth(x)/(a*sinh(x) + b*cosh(x)), x, 5, -(atanh(cosh(x))/b) + (a*atanh((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))/(b*sqrt(a^2 - b^2))]


    #= ::Subsubsection:: =#
    #=Integrands*of*the*form*Hyper(x)^m / (a*sech(x) + b*tanh(x))=#


    #= ::Subsubsection:: =#
    #=Integrands*of*the*form*Hyper(x)^m / (a*csch(x) + b*coth(x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(x)^m / (a*Hyper(x) + b*Hyper(x))^2=#


    @test_int [sinh(x)/(a*cosh(x) + b*sinh(x))^2, x, 3, -((b*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2)) - a/((a^2 - b^2)*(a*cosh(x) + b*sinh(x)))]
    @test_int [sinh(x)^2/(a*cosh(x) + b*sinh(x))^2, x, 4, ((a^2 + b^2)*x)/(a^2 - b^2)^2 - a/((a^2 - b^2)*(b + a*coth(x))) - (2*a*b*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^2]
    @test_int [sinh(x)^3/(a*cosh(x) + b*sinh(x))^2, x, 16, (3*a^2*b*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2) + ((2*a^2 + b^2)*cosh(x))/((-a^2)*b^2 + b^4) + (a*(a^2 + 2*b^2)*sinh(x))/(b^3*(a^2 - b^2)) - a^3/(b^3*(a + b)^2*(1 - tanh(x/2))) + a^3/((a - b)^2*b^3*(1 + tanh(x/2))) + (2*a^2*(a + b*tanh(x/2)))/((a^2 - b^2)^2*(a + 2*b*tanh(x/2) + a*tanh(x/2)^2)), -((3*a^2*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(b*(a^2 - b^2)^(3/2))) + (2*a^2*b*atan((b + a*tanh(x/2))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2) + (2*a^2*(3*a^2 - b^2)*atan((b + a*tanh(x/2))/sqrt(a^2 - b^2)))/(b*(a^2 - b^2)^(5/2)) + cosh(x)/b^2 - (3*a^2*cosh(x))/(b^2*(a^2 - b^2)) - (2*a*sinh(x))/b^3 + (3*a^3*sinh(x))/(b^3*(a^2 - b^2)) - a^3/(b^3*(a + b)^2*(1 - tanh(x/2))) + a^3/((a - b)^2*b^3*(1 + tanh(x/2))) + (2*a^2*(a + b*tanh(x/2)))/((a^2 - b^2)^2*(a + 2*b*tanh(x/2) + a*tanh(x/2)^2))]


    @test_int [cosh(x)/(a*cosh(x) + b*sinh(x))^2, x, 3, (a*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2) + b/((a^2 - b^2)*(a*cosh(x) + b*sinh(x)))]
    @test_int [cosh(x)^2/(a*cosh(x) + b*sinh(x))^2, x, 4, ((a^2 + b^2)*x)/(a^2 - b^2)^2 - (2*a*b*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^2 + b/((a^2 - b^2)*(a + b*tanh(x)))]
    @test_int [cosh(x)^3/(a*cosh(x) + b*sinh(x))^2, x, 8, -((3*a*b^2*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2)) + 1/((a + b)^2*(1 - tanh(x/2))) - 1/((a - b)^2*(1 + tanh(x/2))) - (2*b^3*(a + b*tanh(x/2)))/(a*(a^2 - b^2)^2*(a + 2*b*tanh(x/2) + a*tanh(x/2)^2)), -((2*b^4*atan((b + a*tanh(x/2))/sqrt(a^2 - b^2)))/(a*(a^2 - b^2)^(5/2))) - (2*b^2*(3*a^2 - b^2)*atan((b + a*tanh(x/2))/sqrt(a^2 - b^2)))/(a*(a^2 - b^2)^(5/2)) + 1/((a + b)^2*(1 - tanh(x/2))) - 1/((a - b)^2*(1 + tanh(x/2))) - (2*b^3*(a + b*tanh(x/2)))/(a*(a^2 - b^2)^2*(a + 2*b*tanh(x/2) + a*tanh(x/2)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(x)^m / (a*Hyper(x) + b*Hyper(x))^3=#


    @test_int [sinh(x)/(a*cosh(x) + b*sinh(x))^3, x, 2, tanh(x)^2/(2*a*(a + b*tanh(x))^2)]
    #= [sinh(x)^2/(a*cosh(x) + b*sinh(x))^3, x, 0, -(((a^2 - 2*b^2)*atanh((-b + a*tan(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) + (a*(3*a*b*cosh(x) + (a^2 + 4*b^2)*sinh(x)))/(2*(a^2 + b^2)^2*(a*cosh(x) + b*sinh(x))^2)] =#
    @test_int [sinh(x)^3/(a*cosh(x) + b*sinh(x))^3, x, 5, -((b*(3*a^2 + b^2)*x)/(a^2 - b^2)^3) - a/(2*(a^2 - b^2)*(b + a*coth(x))^2) + (2*a*b)/((a^2 - b^2)^2*(b + a*coth(x))) + (a*(a^2 + 3*b^2)*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3]


    @test_int [cosh(x)/(a*cosh(x) + b*sinh(x))^3, x, 2, -(coth(x)^2/(2*b*(b + a*coth(x))^2))]
    #= [cosh(x)^2/(a*cosh(x) + b*sinh(x))^3, x, 0, ((2*a^2 - b^2)*atanh((-b + a*tan(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) - (b*((4*a^2 + b^2)*cosh(x) + 3*a*b*sinh(x)))/(2*(a^2 + b^2)^2*(a*cosh(x) + b*sinh(x))^2)] =#
    @test_int [cosh(x)^3/(a*cosh(x) + b*sinh(x))^3, x, 5, (a*(a^2 + 3*b^2)*x)/(a^2 - b^2)^3 - (b*(3*a^2 + b^2)*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3 + b/(2*(a^2 - b^2)*(a + b*tanh(x))^2) + (2*a*b)/((a^2 - b^2)^2*(a + b*tanh(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(x)^m*Hyper(x)^n*(a*Hyper(x) + b*Hyper(x))^p=#


    @test_int [cosh(x)*sinh(x)/(a*cosh(x) + b*sinh(x)), x, 5, (a*b*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2) + (a*cosh(x))/(a^2 - b^2) - (b*sinh(x))/(a^2 - b^2)]
    @test_int [cosh(x)*sinh(x)^2/(a*cosh(x) + b*sinh(x)), x, 7, -((a*b^2*x)/(a^2 - b^2)^2) - (a*x)/(2*(a^2 - b^2)) + (a^2*b*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^2 + (a*cosh(x)*sinh(x))/(2*(a^2 - b^2)) - (b*sinh(x)^2)/(2*(a^2 - b^2))]
    @test_int [cosh(x)*sinh(x)^3/(a*cosh(x) + b*sinh(x)), x, 9, -((a^3*b*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2)) - (a*b^2*cosh(x))/(a^2 - b^2)^2 - (a*cosh(x))/(a^2 - b^2) + (a*cosh(x)^3)/(3*(a^2 - b^2)) + (a^2*b*sinh(x))/(a^2 - b^2)^2 - (b*sinh(x)^3)/(3*(a^2 - b^2))]

    @test_int [cosh(x)^2*sinh(x)/(a*cosh(x) + b*sinh(x)), x, 7, (a^2*b*x)/(a^2 - b^2)^2 - (b*x)/(2*(a^2 - b^2)) - (a*b^2*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^2 - (b*cosh(x)*sinh(x))/(2*(a^2 - b^2)) + (a*sinh(x)^2)/(2*(a^2 - b^2))]
    @test_int [cosh(x)^2*sinh(x)^2/(a*cosh(x) + b*sinh(x)), x, 10, (a^2*b^2*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2) + (a^2*b*cosh(x))/(a^2 - b^2)^2 - (b*cosh(x)^3)/(3*(a^2 - b^2)) - (a*b^2*sinh(x))/(a^2 - b^2)^2 + (a*sinh(x)^3)/(3*(a^2 - b^2))]
    @test_int [cosh(x)^2*sinh(x)^3/(a*cosh(x) + b*sinh(x)), x, 13, -((a^2*b^3*x)/(a^2 - b^2)^3) - (a^2*b*x)/(2*(a^2 - b^2)^2) + (b*x)/(8*(a^2 - b^2)) + (a^3*b^2*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3 + (a^2*b*cosh(x)*sinh(x))/(2*(a^2 - b^2)^2) + (b*cosh(x)*sinh(x))/(8*(a^2 - b^2)) - (b*cosh(x)^3*sinh(x))/(4*(a^2 - b^2)) - (a*b^2*sinh(x)^2)/(2*(a^2 - b^2)^2) + (a*sinh(x)^4)/(4*(a^2 - b^2))]

    @test_int [cosh(x)^3*sinh(x)/(a*cosh(x) + b*sinh(x)), x, 9, -((a*b^3*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2)) - (a*b^2*cosh(x))/(a^2 - b^2)^2 + (a*cosh(x)^3)/(3*(a^2 - b^2)) + (a^2*b*sinh(x))/(a^2 - b^2)^2 - (b*sinh(x))/(a^2 - b^2) - (b*sinh(x)^3)/(3*(a^2 - b^2))]
    @test_int [cosh(x)^3*sinh(x)^2/(a*cosh(x) + b*sinh(x)), x, 13, (a^3*b^2*x)/(a^2 - b^2)^3 - (a*b^2*x)/(2*(a^2 - b^2)^2) - (a*x)/(8*(a^2 - b^2)) - (b*cosh(x)^4)/(4*(a^2 - b^2)) - (a^2*b^3*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3 - (a*b^2*cosh(x)*sinh(x))/(2*(a^2 - b^2)^2) - (a*cosh(x)*sinh(x))/(8*(a^2 - b^2)) + (a*cosh(x)^3*sinh(x))/(4*(a^2 - b^2)) + (a^2*b*sinh(x)^2)/(2*(a^2 - b^2)^2)]
    @test_int [cosh(x)^3*sinh(x)^3/(a*cosh(x) + b*sinh(x)), x, 17, (a^3*b^3*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(7/2) + (a^3*b^2*cosh(x))/(a^2 - b^2)^3 - (a*b^2*cosh(x)^3)/(3*(a^2 - b^2)^2) - (a*cosh(x)^3)/(3*(a^2 - b^2)) + (a*cosh(x)^5)/(5*(a^2 - b^2)) - (a^2*b^3*sinh(x))/(a^2 - b^2)^3 + (a^2*b*sinh(x)^3)/(3*(a^2 - b^2)^2) - (b*sinh(x)^3)/(3*(a^2 - b^2)) - (b*sinh(x)^5)/(5*(a^2 - b^2))]


    @test_int [cosh(x)*sinh(x)/(a*cosh(x) + b*sinh(x))^2, x, 6, -((2*a*b*x)/(a^2 - b^2)^2) + (a^2*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^2 + (b^2*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^2 + (b*sinh(x))/((a^2 - b^2)*(a*cosh(x) + b*sinh(x)))]
    @test_int [cosh(x)*sinh(x)^2/(a*cosh(x) + b*sinh(x))^2, x, 13, -((a^3*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2)) - (2*a*b^2*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2) - (2*a*b*cosh(x))/(a^2 - b^2)^2 + (a^2*sinh(x))/(a^2 - b^2)^2 + (b^2*sinh(x))/(a^2 - b^2)^2 - (a^2*b)/((a^2 - b^2)^2*(a*cosh(x) + b*sinh(x)))]
    @test_int [cosh(x)*sinh(x)^3/(a*cosh(x) + b*sinh(x))^2, x, 17, (a^3*b*x)/(a^2 - b^2)^3 + (a*b^3*x)/(a^2 - b^2)^3 + (a*b*x)/(a^2 - b^2)^2 + (a*b*(a^2 + b^2)*x)/(a^2 - b^2)^3 - (a^2*b)/((a^2 - b^2)^2*(b + a*coth(x))) - (a^4*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3 - (3*a^2*b^2*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3 - (a*b*cosh(x)*sinh(x))/(a^2 - b^2)^2 + (a^2*sinh(x)^2)/(2*(a^2 - b^2)^2) + (b^2*sinh(x)^2)/(2*(a^2 - b^2)^2)]

    @test_int [cosh(x)^2*sinh(x)/(a*cosh(x) + b*sinh(x))^2, x, 13, (2*a^2*b*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2) + (b^3*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2) + (a^2*cosh(x))/(a^2 - b^2)^2 + (b^2*cosh(x))/(a^2 - b^2)^2 - (2*a*b*sinh(x))/(a^2 - b^2)^2 + (a*b^2)/((a^2 - b^2)^2*(a*cosh(x) + b*sinh(x)))]
    @test_int [cosh(x)^2*sinh(x)^2/(a*cosh(x) + b*sinh(x))^2, x, 21, -((4*a^2*b^2*x)/(a^2 - b^2)^3) - (a^2*x)/(2*(a^2 - b^2)^2) + (b^2*x)/(2*(a^2 - b^2)^2) + (2*a^3*b*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3 + (2*a*b^3*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3 + (a^2*cosh(x)*sinh(x))/(2*(a^2 - b^2)^2) + (b^2*cosh(x)*sinh(x))/(2*(a^2 - b^2)^2) - (a*b*sinh(x)^2)/(a^2 - b^2)^2 + (a*b^2*sinh(x))/((a^2 - b^2)^2*(a*cosh(x) + b*sinh(x)))]
    @test_int [cosh(x)^2*sinh(x)^3/(a*cosh(x) + b*sinh(x))^2, x, 33, -((2*a^4*b*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(7/2)) - (3*a^2*b^3*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(7/2) - (4*a^2*b^2*cosh(x))/(a^2 - b^2)^3 - (a^2*cosh(x))/(a^2 - b^2)^2 + (a^2*cosh(x)^3)/(3*(a^2 - b^2)^2) + (b^2*cosh(x)^3)/(3*(a^2 - b^2)^2) + (2*a^3*b*sinh(x))/(a^2 - b^2)^3 + (2*a*b^3*sinh(x))/(a^2 - b^2)^3 - (2*a*b*sinh(x)^3)/(3*(a^2 - b^2)^2) - (a^3*b^2)/((a^2 - b^2)^3*(a*cosh(x) + b*sinh(x)))]

    @test_int [cosh(x)^3*sinh(x)/(a*cosh(x) + b*sinh(x))^2, x, 17, (a^3*b*x)/(a^2 - b^2)^3 + (a*b^3*x)/(a^2 - b^2)^3 - (a*b*x)/(a^2 - b^2)^2 + (a*b*(a^2 + b^2)*x)/(a^2 - b^2)^3 + (b^2*cosh(x)^2)/(2*(a^2 - b^2)^2) - (3*a^2*b^2*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3 - (b^4*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^3 - (a*b*cosh(x)*sinh(x))/(a^2 - b^2)^2 + (a^2*sinh(x)^2)/(2*(a^2 - b^2)^2) + (a*b^2)/((a^2 - b^2)^2*(a + b*tanh(x)))]
    @test_int [cosh(x)^3*sinh(x)^2/(a*cosh(x) + b*sinh(x))^2, x, 33, (3*a^3*b^2*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(7/2) + (2*a*b^4*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(7/2) + (2*a^3*b*cosh(x))/(a^2 - b^2)^3 + (2*a*b^3*cosh(x))/(a^2 - b^2)^3 - (2*a*b*cosh(x)^3)/(3*(a^2 - b^2)^2) - (4*a^2*b^2*sinh(x))/(a^2 - b^2)^3 + (b^2*sinh(x))/(a^2 - b^2)^2 + (a^2*sinh(x)^3)/(3*(a^2 - b^2)^2) + (b^2*sinh(x)^3)/(3*(a^2 - b^2)^2) + (a^2*b^3)/((a^2 - b^2)^3*(a*cosh(x) + b*sinh(x)))]
    @test_int [cosh(x)^3*sinh(x)^3/(a*cosh(x) + b*sinh(x))^2, x, 48, -((6*a^3*b^3*x)/(a^2 - b^2)^4) - (a^3*b*x)/(a^2 - b^2)^3 + (a*b^3*x)/(a^2 - b^2)^3 + (a*b*x)/(4*(a^2 - b^2)^2) + (b^2*cosh(x)^4)/(4*(a^2 - b^2)^2) + (3*a^4*b^2*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^4 + (3*a^2*b^4*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)^4 + (a^3*b*cosh(x)*sinh(x))/(a^2 - b^2)^3 + (a*b^3*cosh(x)*sinh(x))/(a^2 - b^2)^3 + (a*b*cosh(x)*sinh(x))/(4*(a^2 - b^2)^2) - (a*b*cosh(x)^3*sinh(x))/(2*(a^2 - b^2)^2) - (2*a^2*b^2*sinh(x)^2)/(a^2 - b^2)^3 + (a^2*sinh(x)^4)/(4*(a^2 - b^2)^2) + (a^2*b^3*sinh(x))/((a^2 - b^2)^3*(a*cosh(x) + b*sinh(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + B*Hyper(x)) / (a*Hyper(x) + b*Hyper(x))=#


    @test_int [(A + C*sinh(x))/(b*cosh(x) + c*sinh(x)), x, 3, -((c*C*x)/(b^2 - c^2)) + (A*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/sqrt(b^2 - c^2) + (b*C*log(b*cosh(x) + c*sinh(x)))/(b^2 - c^2)]
    @test_int [(A + C*sinh(x))/(b*cosh(x) + c*sinh(x))^2, x, 3, -((c*C*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/(b^2 - c^2)^(3/2)) - (b*C - A*c*cosh(x) - A*b*sinh(x))/((b^2 - c^2)*(b*cosh(x) + c*sinh(x)))]
    @test_int [(A + C*sinh(x))/(b*cosh(x) + c*sinh(x))^3, x, 4, (A*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/(2*(b^2 - c^2)^(3/2)) - (b*C - A*c*cosh(x) - A*b*sinh(x))/(2*(b^2 - c^2)*(b*cosh(x) + c*sinh(x))^2) - (c^2*C*cosh(x) + b*c*C*sinh(x))/((b^2 - c^2)^2*(b*cosh(x) + c*sinh(x)))]


    @test_int [(A + B*cosh(x))/(b*cosh(x) + c*sinh(x)), x, 3, (b*B*x)/(b^2 - c^2) + (A*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/sqrt(b^2 - c^2) - (B*c*log(b*cosh(x) + c*sinh(x)))/(b^2 - c^2)]
    @test_int [(A + B*cosh(x))/(b*cosh(x) + c*sinh(x))^2, x, 3, (b*B*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/(b^2 - c^2)^(3/2) + (B*c + A*c*cosh(x) + A*b*sinh(x))/((b^2 - c^2)*(b*cosh(x) + c*sinh(x)))]
    @test_int [(A + B*cosh(x))/(b*cosh(x) + c*sinh(x))^3, x, 4, (A*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/(2*(b^2 - c^2)^(3/2)) + (B*c + A*c*cosh(x) + A*b*sinh(x))/(2*(b^2 - c^2)*(b*cosh(x) + c*sinh(x))^2) + (b*B*c*cosh(x) + b^2*B*sinh(x))/((b^2 - c^2)^2*(b*cosh(x) + c*sinh(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + B*Hyper(x)+C*Hyper(x)) / (a*Hyper(x)+b*Hyper(x))=#


    @test_int [(cosh(x) + sinh(x))/(cosh(x) - sinh(x)), x, 1, (1/2)*(cosh(x) + sinh(x))^2]
    @test_int [(cosh(x) - sinh(x))/(cosh(x) + sinh(x)), x, 1, -(1/(2*(cosh(x) + sinh(x))^2))]
    @test_int [(cosh(x) - im*sinh(x))/(cosh(x) + im*sinh(x)), x, 1, (-im)*log(cosh(x) + im*sinh(x))]


    @test_int [(B*cosh(x) + C*sinh(x))/(b*cosh(x) + c*sinh(x)), x, 1, ((b*B - c*C)*x)/(b^2 - c^2) - ((B*c - b*C)*log(b*cosh(x) + c*sinh(x)))/(b^2 - c^2)]
    @test_int [(B*cosh(x) + C*sinh(x))/(b*cosh(x) + c*sinh(x))^2, x, 3, ((b*B - c*C)*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/(b^2 - c^2)^(3/2) + (B*c - b*C)/((b^2 - c^2)*(b*cosh(x) + c*sinh(x)))]
    @test_int [(B*cosh(x) + C*sinh(x))/(b*cosh(x) + c*sinh(x))^3, x, 3, (B*c - b*C)/(2*(b^2 - c^2)*(b*cosh(x) + c*sinh(x))^2) + ((b*B - c*C)*sinh(x))/(b*(b^2 - c^2)*(b*cosh(x) + c*sinh(x)))]


    @test_int [(A + B*cosh(x) + C*sinh(x))/(b*cosh(x) + c*sinh(x)), x, 3, ((b*B - c*C)*x)/(b^2 - c^2) + (A*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/sqrt(b^2 - c^2) - ((B*c - b*C)*log(b*cosh(x) + c*sinh(x)))/(b^2 - c^2)]
    @test_int [(A + B*cosh(x) + C*sinh(x))/(b*cosh(x) + c*sinh(x))^2, x, 3, ((b*B - c*C)*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/(b^2 - c^2)^(3/2) + (B*c - b*C + A*c*cosh(x) + A*b*sinh(x))/((b^2 - c^2)*(b*cosh(x) + c*sinh(x)))]
    @test_int [(A + B*cosh(x) + C*sinh(x))/(b*cosh(x) + c*sinh(x))^3, x, 4, (A*atan((c*cosh(x) + b*sinh(x))/sqrt(b^2 - c^2)))/(2*(b^2 - c^2)^(3/2)) + (B*c - b*C + A*c*cosh(x) + A*b*sinh(x))/(2*(b^2 - c^2)*(b*cosh(x) + c*sinh(x))^2) + (c*(b*B - c*C)*cosh(x) + b*(b*B - c*C)*sinh(x))/((b^2 - c^2)^2*(b*cosh(x) + c*sinh(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(a + b*Hyper(d+e*x) + c*Hyper(d+e*x))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a + b*cosh(d+e*x) + c*sinh(d+e*x))^n=#


    @test_int [(a + b*cosh(x) + c*sinh(x))^3, x, 5, (1/2)*a*(2*a^2 + 3*b^2 - 3*c^2)*x + (1/6)*c*(11*a^2 + 4*b^2 - 4*c^2)*cosh(x) + (1/6)*b*(11*a^2 + 4*b^2 - 4*c^2)*sinh(x) + (5/6)*(a*c*cosh(x) + a*b*sinh(x))*(a + b*cosh(x) + c*sinh(x)) + (1/3)*(c*cosh(x) + b*sinh(x))*(a + b*cosh(x) + c*sinh(x))^2]
    @test_int [(a + b*cosh(x) + c*sinh(x))^2, x, 4, (1/2)*(2*a^2 + b^2 - c^2)*x + (3/2)*a*c*cosh(x) + (3/2)*a*b*sinh(x) + (1/2)*(c*cosh(x) + b*sinh(x))*(a + b*cosh(x) + c*sinh(x))]
    @test_int [(a + b*cosh(x) + c*sinh(x)), x, 3, a*x + c*cosh(x) + b*sinh(x)]
    @test_int [1/(a + b*cosh(x) + c*sinh(x)), x, 3, -((2*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/sqrt(a^2 - b^2 + c^2))]
    @test_int [1/(a + b*cosh(x) + c*sinh(x))^2, x, 5, -((2*a*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(3/2)) - (c*cosh(x) + b*sinh(x))/((a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x)))]
    @test_int [1/(a + b*cosh(x) + c*sinh(x))^3, x, 5, -(((2*a^2 + b^2 - c^2)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(5/2)) - (c*cosh(x) + b*sinh(x))/(2*(a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x))^2) - (3*(a*c*cosh(x) + a*b*sinh(x)))/(2*(a^2 - b^2 + c^2)^2*(a + b*cosh(x) + c*sinh(x)))]
    @test_int [1/(a + b*cosh(x) + c*sinh(x))^4, x, 6, -((a*(2*a^2 + 3*b^2 - 3*c^2)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(7/2)) - (c*cosh(x) + b*sinh(x))/(3*(a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x))^3) - (5*(a*c*cosh(x) + a*b*sinh(x)))/(6*(a^2 - b^2 + c^2)^2*(a + b*cosh(x) + c*sinh(x))^2) - (c*(11*a^2 + 4*b^2 - 4*c^2)*cosh(x) + b*(11*a^2 + 4*b^2 - 4*c^2)*sinh(x))/(6*(a^2 - b^2 + c^2)^3*(a + b*cosh(x) + c*sinh(x)))]

    @test_int [(a + a*cosh(x) + c*sinh(x))^3, x, 5, (1/2)*a*(5*a^2 - 3*c^2)*x + (1/6)*c*(15*a^2 - 4*c^2)*cosh(x) + (1/6)*a*(15*a^2 - 4*c^2)*sinh(x) + (5/6)*(a*c*cosh(x) + a^2*sinh(x))*(a + a*cosh(x) + c*sinh(x)) + (1/3)*(c*cosh(x) + a*sinh(x))*(a + a*cosh(x) + c*sinh(x))^2]
    @test_int [(a + a*cosh(x) + c*sinh(x))^2, x, 4, (1/2)*(3*a^2 - c^2)*x + (3/2)*a*c*cosh(x) + (3/2)*a^2*sinh(x) + (1/2)*(c*cosh(x) + a*sinh(x))*(a + a*cosh(x) + c*sinh(x))]
    @test_int [(a + a*cosh(x) + c*sinh(x)), x, 3, a*x + c*cosh(x) + a*sinh(x)]
    @test_int [1/(a + a*cosh(x) + c*sinh(x)), x, 2, log(a + c*tanh(x/2))/c]
    @test_int [1/(a + a*cosh(x) + c*sinh(x))^2, x, 4, (a*log(a + c*tanh(x/2)))/c^3 - (c*cosh(x) + a*sinh(x))/(c^2*(a + a*cosh(x) + c*sinh(x)))]
    @test_int [1/(a + a*cosh(x) + c*sinh(x))^3, x, 4, ((3*a^2 - c^2)*log(a + c*tanh(x/2)))/(2*c^5) - (c*cosh(x) + a*sinh(x))/(2*c^2*(a + a*cosh(x) + c*sinh(x))^2) - (3*(a*c*cosh(x) + a^2*sinh(x)))/(2*c^4*(a + a*cosh(x) + c*sinh(x)))]
    @test_int [1/(a + a*cosh(x) + c*sinh(x))^4, x, 5, (a*(5*a^2 - 3*c^2)*log(a + c*tanh(x/2)))/(2*c^7) - (c*cosh(x) + a*sinh(x))/(3*c^2*(a + a*cosh(x) + c*sinh(x))^3) - (5*(a*c*cosh(x) + a^2*sinh(x)))/(6*c^4*(a + a*cosh(x) + c*sinh(x))^2) - (c*(15*a^2 - 4*c^2)*cosh(x) + a*(15*a^2 - 4*c^2)*sinh(x))/(6*c^6*(a + a*cosh(x) + c*sinh(x)))]

    @test_int [(sqrt(b^2 - c^2)+b*cosh(x)+c*sinh(x))^4, x, 6, (35/8)*(b^2 - c^2)^2*x + (35/8)*c*(b^2 - c^2)^(3/2)*cosh(x) + (35/8)*b*(b^2 - c^2)^(3/2)*sinh(x) + (35/24)*(b^2 - c^2)*(c*cosh(x) + b*sinh(x))*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x)) + (7/12)*sqrt(b^2 - c^2)*(c*cosh(x) + b*sinh(x))*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^2 + (1/4)*(c*cosh(x) + b*sinh(x))*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^3]
    @test_int [(sqrt(b^2 - c^2)+b*cosh(x)+c*sinh(x))^3, x, 5, (5/2)*(b^2 - c^2)^(3/2)*x + (5/2)*c*(b^2 - c^2)*cosh(x) + (5/2)*b*(b^2 - c^2)*sinh(x) + (5/6)*sqrt(b^2 - c^2)*(c*cosh(x) + b*sinh(x))*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x)) + (1/3)*(c*cosh(x) + b*sinh(x))*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^2]
    @test_int [(sqrt(b^2 - c^2)+b*cosh(x)+c*sinh(x))^2, x, 4, (3/2)*(b^2 - c^2)*x + (3/2)*c*sqrt(b^2 - c^2)*cosh(x) + (3/2)*b*sqrt(b^2 - c^2)*sinh(x) + (1/2)*(c*cosh(x) + b*sinh(x))*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))]
    @test_int [(sqrt(b^2 - c^2)+b*cosh(x)+c*sinh(x)), x, 3, sqrt(b^2 - c^2)*x + c*cosh(x) + b*sinh(x)]
    @test_int [1/(sqrt(b^2 - c^2)+b*cosh(x)+c*sinh(x)), x, 1, -((c + sqrt(b^2 - c^2)*sinh(x))/(c*(c*cosh(x) + b*sinh(x))))]
    @test_int [1/(sqrt(b^2 - c^2)+b*cosh(x)+c*sinh(x))^2, x, 2, (c*cosh(x) + b*sinh(x))/(3*sqrt(b^2 - c^2)*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^2) - (c + sqrt(b^2 - c^2)*sinh(x))/(3*c*sqrt(b^2 - c^2)*(c*cosh(x) + b*sinh(x)))]
    @test_int [1/(sqrt(b^2 - c^2)+b*cosh(x)+c*sinh(x))^3, x, 3, (c*cosh(x) + b*sinh(x))/(5*sqrt(b^2 - c^2)*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^3) + (2*(c*cosh(x) + b*sinh(x)))/(15*(b^2 - c^2)*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^2) - (2*(c + sqrt(b^2 - c^2)*sinh(x)))/(15*c*(b^2 - c^2)*(c*cosh(x) + b*sinh(x)))]
    @test_int [1/(sqrt(b^2 - c^2)+b*cosh(x)+c*sinh(x))^4, x, 4, (c*cosh(x) + b*sinh(x))/(7*sqrt(b^2 - c^2)*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^4) + (3*(c*cosh(x) + b*sinh(x)))/(35*(b^2 - c^2)*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^3) + (2*(c*cosh(x) + b*sinh(x)))/(35*(b^2 - c^2)^(3/2)*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^2) - (2*(c + sqrt(b^2 - c^2)*sinh(x)))/(35*c*(b^2 - c^2)^(3/2)*(c*cosh(x) + b*sinh(x)))]


    @test_int [(a + b*cosh(x) + c*sinh(x))^(5/2), x, 7, (16/15)*(a*c*cosh(x) + a*b*sinh(x))*sqrt(a + b*cosh(x) + c*sinh(x)) + (2/5)*(c*cosh(x) + b*sinh(x))*(a + b*cosh(x) + c*sinh(x))^(3/2) - (2*im*(23*a^2 + 9*b^2 - 9*c^2)*EllipticE((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt(a + b*cosh(x) + c*sinh(x)))/(15*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2)))) + (16*im*a*(a^2 - b^2 + c^2)*EllipticF((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2))))/(15*sqrt(a + b*cosh(x) + c*sinh(x)))]
    @test_int [(a + b*cosh(x) + c*sinh(x))^(3/2), x, 6, (2/3)*(c*cosh(x) + b*sinh(x))*sqrt(a + b*cosh(x) + c*sinh(x)) - (8*im*a*EllipticE((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt(a + b*cosh(x) + c*sinh(x)))/(3*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2)))) + (2*im*(a^2 - b^2 + c^2)*EllipticF((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2))))/(3*sqrt(a + b*cosh(x) + c*sinh(x)))]
    @test_int [(a + b*cosh(x) + c*sinh(x))^(1/2), x, 2, -((2*im*EllipticE((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt(a + b*cosh(x) + c*sinh(x)))/sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2))))]
    @test_int [1/(a + b*cosh(x) + c*sinh(x))^(1/2), x, 2, -((2*im*EllipticF((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2))))/sqrt(a + b*cosh(x) + c*sinh(x)))]
    @test_int [1/(a + b*cosh(x) + c*sinh(x))^(3/2), x, 3, -((2*(c*cosh(x) + b*sinh(x)))/((a^2 - b^2 + c^2)*sqrt(a + b*cosh(x) + c*sinh(x)))) - (2*im*EllipticE((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt(a + b*cosh(x) + c*sinh(x)))/((a^2 - b^2 + c^2)*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2))))]
    @test_int [1/(a + b*cosh(x) + c*sinh(x))^(5/2), x, 7, -((2*(c*cosh(x) + b*sinh(x)))/(3*(a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x))^(3/2))) - (8*(a*c*cosh(x) + a*b*sinh(x)))/(3*(a^2 - b^2 + c^2)^2*sqrt(a + b*cosh(x) + c*sinh(x))) - (8*im*a*EllipticE((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt(a + b*cosh(x) + c*sinh(x)))/(3*(a^2 - b^2 + c^2)^2*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2)))) + (2*im*EllipticF((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2))))/(3*(a^2 - b^2 + c^2)*sqrt(a + b*cosh(x) + c*sinh(x)))]
    @test_int [1/(a + b*cosh(x) + c*sinh(x))^(7/2), x, 8, -((2*(c*cosh(x) + b*sinh(x)))/(5*(a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x))^(5/2))) - (16*(a*c*cosh(x) + a*b*sinh(x)))/(15*(a^2 - b^2 + c^2)^2*(a + b*cosh(x) + c*sinh(x))^(3/2)) - (2*im*(23*a^2 + 9*b^2 - 9*c^2)*EllipticE((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt(a + b*cosh(x) + c*sinh(x)))/(15*(a^2 - b^2 + c^2)^3*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2)))) + (16*im*a*EllipticF((1/2)*(im*x - atan(b, (-im)*c)), (2*sqrt(b^2 - c^2))/(a + sqrt(b^2 - c^2)))*sqrt((a + b*cosh(x) + c*sinh(x))/(a + sqrt(b^2 - c^2))))/(15*(a^2 - b^2 + c^2)^2*sqrt(a + b*cosh(x) + c*sinh(x))) - (2*(c*(23*a^2 + 9*b^2 - 9*c^2)*cosh(x) + b*(23*a^2 + 9*b^2 - 9*c^2)*sinh(x)))/(15*(a^2 - b^2 + c^2)^3*sqrt(a + b*cosh(x) + c*sinh(x)))]


    @test_int [(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(5/2), x, 3, (64*(b^2 - c^2)*(c*cosh(x) + b*sinh(x)))/(15*sqrt(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))) + (16/15)*sqrt(b^2 - c^2)*(c*cosh(x) + b*sinh(x))*sqrt(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x)) + (2/5)*(c*cosh(x) + b*sinh(x))*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2)]
    @test_int [(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2), x, 2, (8*sqrt(b^2 - c^2)*(c*cosh(x) + b*sinh(x)))/(3*sqrt(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))) + (2/3)*(c*cosh(x) + b*sinh(x))*sqrt(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))]
    @test_int [(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(1/2), x, 1, (2*(c*cosh(x) + b*sinh(x)))/sqrt(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))]
    @test_int [1/(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(1/2), x, 3, (sqrt(2)*atan(((b^2 - c^2)^(1/4)*sinh(x + im*atan(b, (-im)*c)))/(sqrt(2)*sqrt(sqrt(b^2 - c^2) + sqrt(b^2 - c^2)*cosh(x + im*atan(b, (-im)*c))))))/(b^2 - c^2)^(1/4)]
    @test_int [1/(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2), x, 4, atan(((b^2 - c^2)^(1/4)*sinh(x + im*atan(b, (-im)*c)))/(sqrt(2)*sqrt(sqrt(b^2 - c^2) + sqrt(b^2 - c^2)*cosh(x + im*atan(b, (-im)*c)))))/(2*sqrt(2)*(b^2 - c^2)^(3/4)) + (c*cosh(x) + b*sinh(x))/(2*sqrt(b^2 - c^2)*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2))]
    @test_int [1/(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(5/2), x, 5, (3*atan(((b^2 - c^2)^(1/4)*sinh(x + im*atan(b, (-im)*c)))/(sqrt(2)*sqrt(sqrt(b^2 - c^2) + sqrt(b^2 - c^2)*cosh(x + im*atan(b, (-im)*c))))))/(16*sqrt(2)*(b^2 - c^2)^(5/4)) + (c*cosh(x) + b*sinh(x))/(4*sqrt(b^2 - c^2)*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(5/2)) + (3*(c*cosh(x) + b*sinh(x)))/(16*(b^2 - c^2)*(sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2))]

    @test_int [(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(5/2), x, 3, (64*(b^2 - c^2)*(c*cosh(x) + b*sinh(x)))/(15*sqrt(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))) - (16/15)*sqrt(b^2 - c^2)*(c*cosh(x) + b*sinh(x))*sqrt(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x)) + (2/5)*(c*cosh(x) + b*sinh(x))*(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2)]
    @test_int [(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2), x, 2, -((8*sqrt(b^2 - c^2)*(c*cosh(x) + b*sinh(x)))/(3*sqrt(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x)))) + (2/3)*(c*cosh(x) + b*sinh(x))*sqrt(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))]
    @test_int [(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(1/2), x, 1, (2*(c*cosh(x) + b*sinh(x)))/sqrt(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))]
    @test_int [1/(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(1/2), x, 3, -((sqrt(2)*atanh(((b^2 - c^2)^(1/4)*sinh(x + im*atan(b, (-im)*c)))/(sqrt(2)*sqrt(-sqrt(b^2 - c^2) + sqrt(b^2 - c^2)*cosh(x + im*atan(b, (-im)*c))))))/(b^2 - c^2)^(1/4))]
    @test_int [1/(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2), x, 4, atanh(((b^2 - c^2)^(1/4)*sinh(x + im*atan(b, (-im)*c)))/(sqrt(2)*sqrt(-sqrt(b^2 - c^2) + sqrt(b^2 - c^2)*cosh(x + im*atan(b, (-im)*c)))))/(2*sqrt(2)*(b^2 - c^2)^(3/4)) - (c*cosh(x) + b*sinh(x))/(2*sqrt(b^2 - c^2)*(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2))]
    @test_int [1/(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(5/2), x, 5, -((3*atanh(((b^2 - c^2)^(1/4)*sinh(x + im*atan(b, (-im)*c)))/(sqrt(2)*sqrt(-sqrt(b^2 - c^2) + sqrt(b^2 - c^2)*cosh(x + im*atan(b, (-im)*c))))))/(16*sqrt(2)*(b^2 - c^2)^(5/4))) - (c*cosh(x) + b*sinh(x))/(4*sqrt(b^2 - c^2)*(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(5/2)) + (3*(c*cosh(x) + b*sinh(x)))/(16*(b^2 - c^2)*(-sqrt(b^2 - c^2) + b*cosh(x) + c*sinh(x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a + b*tanh(d+e*x) + c*sech(d+e*x))^n=#


    @test_int [1/(a + b*tanh(x) + c*sech(x)), x, 5, (a*x)/(a^2 - b^2) - (2*a*c*atan((b + (a - c)*tanh(x/2))/sqrt(a^2 - b^2 - c^2)))/((a^2 - b^2)*sqrt(a^2 - b^2 - c^2)) - (b*log(c + a*cosh(x) + b*sinh(x)))/(a^2 - b^2)]
    @test_int [1/(a + b*coth(x) + c*csch(x)), x, 5, (a*x)/(a^2 - b^2) + (2*a*c*atanh((a + (b - c)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/((a^2 - b^2)*sqrt(a^2 - b^2 + c^2)) - (b*log(im*c + im*b*cosh(x) + im*a*sinh(x)))/(a^2 - b^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(x)^m / (a + b*Hyper(x) + c*Hyper(x))=#


    @test_int [sinh(x)/(a + b*cosh(x) + c*sinh(x)), x, 4, -((c*x)/(b^2 - c^2)) - (2*a*c*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/((b^2 - c^2)*sqrt(a^2 - b^2 + c^2)) + (b*log(a + b*cosh(x) + c*sinh(x)))/(b^2 - c^2)]
    @test_int [sinh(x)/(1 + cosh(x) + sinh(x)), x, 1, x/2 + cosh(x)/2 - sinh(x)/2]

    @test_int [sech(x)/(a + b*tanh(x) + c*sech(x)), x, 4, (2*atan((b + (a - c)*tanh(x/2))/sqrt(a^2 - b^2 - c^2)))/sqrt(a^2 - b^2 - c^2)]
    @test_int [sech(x)^2/(a + b*tanh(x) + c*sech(x)), x, 10, (2*c*atan(tanh(x/2)))/(b^2 + c^2) - (2*a*c*atan((b + (a - c)*tanh(x/2))/sqrt(a^2 - b^2 - c^2)))/(sqrt(a^2 - b^2 - c^2)*(b^2 + c^2)) - (b*log(1 + tanh(x/2)^2))/(b^2 + c^2) + (b*log(a + c + 2*b*tanh(x/2) + (a - c)*tanh(x/2)^2))/(b^2 + c^2)]

    @test_int [csch(x)/(2 + 2*coth(x) + 3*csch(x)), x, 4, (-(2/3))*atanh((1/3)*(2 - tanh(x/2)))]
    @test_int [csch(x)/(a + b*coth(x) + c*csch(x)), x, 4, -((2*atanh((a + (b - c)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/sqrt(a^2 - b^2 + c^2))]
    @test_int [csch(x)^2/(a + b*coth(x) + c*csch(x)), x, 9, -((2*a*c*atanh((a + (b - c)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/((b^2 - c^2)*sqrt(a^2 - b^2 + c^2))) + log(tanh(x/2))/(b + c) - (b*log(b + c + 2*a*tanh(x/2) + (b - c)*tanh(x/2)^2))/(b^2 - c^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + B*Hyper(x)) / (a + b*Hyper(x) + c*Hyper(x))=#


    @test_int [(A + C*sinh(x))/(a + b*cosh(x) + c*sinh(x)), x, 4, -((c*C*x)/(b^2 - c^2)) - (2*(A*(b^2 - c^2) + a*c*C)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/((b^2 - c^2)*sqrt(a^2 - b^2 + c^2)) + (b*C*log(a + b*cosh(x) + c*sinh(x)))/(b^2 - c^2)]
    @test_int [(A + C*sinh(x))/(a + b*cosh(x) + c*sinh(x))^2, x, 4, -((2*(a*A + c*C)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(3/2)) + (b*C - (A*c - a*C)*cosh(x) - A*b*sinh(x))/((a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x)))]
    @test_int [(A + C*sinh(x))/(a + b*cosh(x) + c*sinh(x))^3, x, 5, -(((2*a^2*A + A*(b^2 - c^2) + 3*a*c*C)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(5/2)) + (b*C - (A*c - a*C)*cosh(x) - A*b*sinh(x))/(2*(a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x))^2) + (a*b*C - (3*a*A*c - a^2*C + 2*c^2*C)*cosh(x) - b*(3*a*A + 2*c*C)*sinh(x))/(2*(a^2 - b^2 + c^2)^2*(a + b*cosh(x) + c*sinh(x)))]


    @test_int [(A + B*cosh(x))/(a + b*cosh(x) + c*sinh(x)), x, 4, (b*B*x)/(b^2 - c^2) + (2*(a*b*B - A*(b^2 - c^2))*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/((b^2 - c^2)*sqrt(a^2 - b^2 + c^2)) - (B*c*log(a + b*cosh(x) + c*sinh(x)))/(b^2 - c^2)]
    @test_int [(A + B*cosh(x))/(a + b*cosh(x) + c*sinh(x))^2, x, 4, -((2*(a*A - b*B)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(3/2)) - (B*c + A*c*cosh(x) + (A*b - a*B)*sinh(x))/((a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x)))]
    @test_int [(A + B*cosh(x))/(a + b*cosh(x) + c*sinh(x))^3, x, 5, -(((2*a^2*A - 3*a*b*B + A*(b^2 - c^2))*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(5/2)) - (B*c + A*c*cosh(x) + (A*b - a*B)*sinh(x))/(2*(a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x))^2) - (a*B*c + (3*a*A - 2*b*B)*c*cosh(x) + (3*a*A*b - a^2*B - 2*b^2*B)*sinh(x))/(2*(a^2 - b^2 + c^2)^2*(a + b*cosh(x) + c*sinh(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + B*Hyper(x) + C*Hyper(x)) / (a + b*Hyper(x) + c*Hyper(x))=#


    @test_int [(B*cosh(x) + C*sinh(x))/(a + b*cosh(x) + c*sinh(x)), x, 4, ((b*B - c*C)*x)/(b^2 - c^2) + (2*a*(b*B - c*C)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/((b^2 - c^2)*sqrt(a^2 - b^2 + c^2)) - ((B*c - b*C)*log(a + b*cosh(x) + c*sinh(x)))/(b^2 - c^2)]
    @test_int [(B*cosh(x) + C*sinh(x))/(a + b*cosh(x) + c*sinh(x))^2, x, 4, (2*(b*B - c*C)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(3/2) - (B*c - b*C - a*C*cosh(x) - a*B*sinh(x))/((a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x)))]
    @test_int [(B*cosh(x) + C*sinh(x))/(a + b*cosh(x) + c*sinh(x))^3, x, 5, (3*a*(b*B - c*C)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(5/2) - (B*c - b*C - a*C*cosh(x) - a*B*sinh(x))/(2*(a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x))^2) - (a*(B*c - b*C) - (2*b*B*c + (a^2 - 2*c^2)*C)*cosh(x) - (a^2*B + 2*b*(b*B - c*C))*sinh(x))/(2*(a^2 - b^2 + c^2)^2*(a + b*cosh(x) + c*sinh(x)))]


    @test_int [(A + B*cosh(x) + C*sinh(x))/(a + b*cosh(x) + c*sinh(x)), x, 4, ((b*B - c*C)*x)/(b^2 - c^2) - (2*(A*b^2 - a*b*B - A*c^2 + a*c*C)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/((b^2 - c^2)*sqrt(a^2 - b^2 + c^2)) - ((B*c - b*C)*log(a + b*cosh(x) + c*sinh(x)))/(b^2 - c^2)]
    @test_int [(A + B*cosh(x) + C*sinh(x))/(a + b*cosh(x) + c*sinh(x))^2, x, 4, -((2*(a*A - b*B + c*C)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(3/2)) - (B*c - b*C + (A*c - a*C)*cosh(x) + (A*b - a*B)*sinh(x))/((a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x)))]
    @test_int [(A + B*cosh(x) + C*sinh(x))/(a + b*cosh(x) + c*sinh(x))^3, x, 5, -(((2*a^2*A + A*b^2 - 3*a*b*B - A*c^2 + 3*a*c*C)*atanh((c - (a - b)*tanh(x/2))/sqrt(a^2 - b^2 + c^2)))/(a^2 - b^2 + c^2)^(5/2)) - (B*c - b*C + (A*c - a*C)*cosh(x) + (A*b - a*B)*sinh(x))/(2*(a^2 - b^2 + c^2)*(a + b*cosh(x) + c*sinh(x))^2) - (a*(B*c - b*C) + (3*a*A*c - a^2*C - 2*c*(b*B - c*C))*cosh(x) + (3*a*A*b - a^2*B - 2*b*(b*B - c*C))*sinh(x))/(2*(a^2 - b^2 + c^2)^2*(a + b*cosh(x) + c*sinh(x)))]

    @test_int [(b^2 - c^2 + a*b*cosh(x) + a*c*sinh(x))/(a + b*cosh(x) + c*sinh(x))^2, x, 1, (c*cosh(x) + b*sinh(x))/(a + b*cosh(x) + c*sinh(x))]


    @test_int [(A + C*sinh(x))/(a + b*cosh(x) + b*sinh(x)), x, 1, If($VersionNumber>=8, ((2*a*A + b*C)*x)/(2*a^2) + (C*cosh(x))/(2*a) - (1/2)*((2*A)/a - C/b + (b*C)/a^2)*log(a + b*cosh(x) + b*sinh(x)) - (C*sinh(x))/(2*a), ((2*a*A + b*C)*x)/(2*a^2) + (C*cosh(x))/(2*a) - ((2*a*A*b - a^2*C + b^2*C)*log(a + b*cosh(x) + b*sinh(x)))/(2*a^2*b) - (C*sinh(x))/(2*a))]
    @test_int [(A + B*cosh(x))/(a + b*cosh(x) + b*sinh(x)), x, 1, ((2*a*A - b*B)*x)/(2*a^2) - (B*cosh(x))/(2*a) - ((2*a*A*b - a^2*B - b^2*B)*log(a + b*cosh(x) + b*sinh(x)))/(2*a^2*b) + (B*sinh(x))/(2*a)]
    @test_int [(A + B*cosh(x)+C*sinh(x))/(a + b*cosh(x) + b*sinh(x)), x, 1, ((2*a*A - b*(B - C))*x)/(2*a^2) - ((2*a*A*b - b^2*(B - C) - a^2*(B + C))*log(a + b*cosh(x) + b*sinh(x)))/(2*a^2*b) - ((B - C)*(cosh(x) - sinh(x)))/(2*a)]

    @test_int [(A + C*sinh(x))/(a + b*cosh(x) - b*sinh(x)), x, 1, ((2*a*A - b*C)*x)/(2*a^2) + (C*cosh(x))/(2*a) + ((2*a*A*b + a^2*C - b^2*C)*log(a + b*cosh(x) - b*sinh(x)))/(2*a^2*b) + (C*sinh(x))/(2*a)]
    @test_int [(A + B*cosh(x))/(a + b*cosh(x) - b*sinh(x)), x, 1, ((2*a*A - b*B)*x)/(2*a^2) + (B*cosh(x))/(2*a) + ((2*a*A*b - a^2*B - b^2*B)*log(a + b*cosh(x) - b*sinh(x)))/(2*a^2*b) + (B*sinh(x))/(2*a)]
    @test_int [(A + B*cosh(x)+C*sinh(x))/(a + b*cosh(x) - b*sinh(x)), x, 1, ((2*a*A - b*(B + C))*x)/(2*a^2) + ((2*a*A*b - a^2*(B - C) - b^2*(B + C))*log(a + b*cosh(x) - b*sinh(x)))/(2*a^2*b) + ((B + C)*(cosh(x) + sinh(x)))/(2*a)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(a*Hyper(c+d*x)^2 + b*Hyper(c+d*x)^2)^p=#


    @test_int [1/(cosh(x)^2 + sinh(x)^2), x, 2, atan(tanh(x))]
    @test_int [1/(cosh(x)^2 + sinh(x)^2)^2, x, 2, tanh(x)/(1 + tanh(x)^2)]
    @test_int [1/(cosh(x)^2 + sinh(x)^2)^3, x, 4, (1/2)*atan(tanh(x)) + (sech(x)^2*tanh(x))/(2*(1 + tanh(x)^2)^2)]

    @test_int [1/(cosh(x)^2 - sinh(x)^2), x, 2, x]
    @test_int [1/(cosh(x)^2 - sinh(x)^2)^2, x, 2, x]
    @test_int [1/(cosh(x)^2 - sinh(x)^2)^3, x, 2, x]


    @test_int [1/(sech(x)^2 + tanh(x)^2), x, 2, x]
    @test_int [1/(sech(x)^2 + tanh(x)^2)^2, x, 2, x]
    @test_int [1/(sech(x)^2 + tanh(x)^2)^3, x, 2, x]

    @test_int [1/(sech(x)^2 - tanh(x)^2), x, 4, -x + sqrt(2)*atanh(sqrt(2)*tanh(x))]
    @test_int [1/(sech(x)^2 - tanh(x)^2)^2, x, 6, x - atanh(sqrt(2)*tanh(x))/sqrt(2) + tanh(x)/(1 - 2*tanh(x)^2)]
    @test_int [1/(sech(x)^2 - tanh(x)^2)^3, x, 6, -x + (7*atanh(sqrt(2)*tanh(x)))/(4*sqrt(2)) + tanh(x)/(2*(1 - 2*tanh(x)^2)^2) - tanh(x)/(4*(1 - 2*tanh(x)^2))]


    @test_int [1/(coth(x)^2 + csch(x)^2), x, 4, x - sqrt(2)*atanh(tanh(x)/sqrt(2))]
    @test_int [1/(coth(x)^2 + csch(x)^2)^2, x, 6, x - atanh(tanh(x)/sqrt(2))/sqrt(2) - tanh(x)/(2 - tanh(x)^2)]
    @test_int [1/(coth(x)^2 + csch(x)^2)^3, x, 6, x - (7*atanh(tanh(x)/sqrt(2)))/(4*sqrt(2)) - tanh(x)^3/(2*(2 - tanh(x)^2)^2) - tanh(x)/(4*(2 - tanh(x)^2))]

    @test_int [1/(coth(x)^2 - csch(x)^2), x, 2, x]
    @test_int [1/(coth(x)^2 - csch(x)^2)^2, x, 2, x]
    @test_int [1/(coth(x)^2 - csch(x)^2)^3, x, 2, x]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(a + b*Hyper(c+d*x)^m + c*Hyper(c+d*x)^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(x)^m / (a + b*Hyper(x) + c*Hyper(x)^2)=#


    @test_int [1/(a + b*sinh(x) + c*sinh(x)^2), x, 7, -((2*sqrt(2)*c*atan((2*im*c - im*b*tanh(x/2) + sqrt(-b^2 + 4*a*c)*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c)))))/(sqrt(-b^2 + 4*a*c)*sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c)))) + (2*sqrt(2)*c*atan((2*im*c - (im*b + sqrt(-b^2 + 4*a*c))*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c)))))/(sqrt(-b^2 + 4*a*c)*sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c)))]
    @test_int [sinh(x)/(a + b*sinh(x) + c*sinh(x)^2), x, 8, (sqrt(2)*(im + b/sqrt(-b^2 + 4*a*c))*atan((2*im*c - im*b*tanh(x/2) + sqrt(-b^2 + 4*a*c)*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c)))))/sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c)) + (sqrt(2)*(im - b/sqrt(-b^2 + 4*a*c))*atan((2*im*c - (im*b + sqrt(-b^2 + 4*a*c))*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c)))))/sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c))]
    @test_int [sinh(x)^2/(a + b*sinh(x) + c*sinh(x)^2), x, 9, x/c - (sqrt(2)*(im*b + (b^2 - 2*a*c)/sqrt(-b^2 + 4*a*c))*atan((2*im*c - (im*b - sqrt(-b^2 + 4*a*c))*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c)))))/(c*sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c))) - (sqrt(2)*(im*b - (b^2 - 2*a*c)/sqrt(-b^2 + 4*a*c))*atan((2*im*c - (im*b + sqrt(-b^2 + 4*a*c))*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c)))))/(c*sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c)))]
    @test_int [sinh(x)^3/(a + b*sinh(x) + c*sinh(x)^2), x, 10, -((b*x)/c^2) + (sqrt(2)*(b^3/sqrt(-b^2 + 4*a*c) + im*(b^2 - a*c + (3*im*a*b*c)/sqrt(-b^2 + 4*a*c)))*atan((2*im*c - im*b*tanh(x/2) + sqrt(-b^2 + 4*a*c)*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c)))))/(c^2*sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c))) - (sqrt(2)*(b^3/sqrt(-b^2 + 4*a*c) - im*(b^2 - a*c - (3*im*a*b*c)/sqrt(-b^2 + 4*a*c)))*atan((2*im*c - (im*b + sqrt(-b^2 + 4*a*c))*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c)))))/(c^2*sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c))) + cosh(x)/c]

    @test_int [(a + b*sinh(x))/(b^2 - 2*a*b*sinh(x) + a^2*sinh(x)^2), x, 3, cosh(x)/(b - a*sinh(x))]
    @test_int [(d + e*sinh(x))/(a + b*sinh(x) + c*sinh(x)^2), x, 7, (sqrt(2)*(im*e - (2*c*d - b*e)/sqrt(-b^2 + 4*a*c))*atan((2*im*c - im*b*tanh(x/2) + sqrt(-b^2 + 4*a*c)*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c)))))/sqrt(b^2 - 2*(a - c)*c + im*b*sqrt(-b^2 + 4*a*c)) + (sqrt(2)*(im*e + (2*c*d - b*e)/sqrt(-b^2 + 4*a*c))*atan((2*im*c - (im*b + sqrt(-b^2 + 4*a*c))*tanh(x/2))/(sqrt(2)*sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c)))))/sqrt(b^2 - 2*(a - c)*c - im*b*sqrt(-b^2 + 4*a*c))]


    @test_int [1/(a + b*cosh(x) + c*cosh(x)^2), x, 5, (4*c*atanh((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) - (4*c*atanh((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c)))]
    @test_int [cosh(x)/(a + b*cosh(x) + c*cosh(x)^2), x, 6, (2*(1 - b/sqrt(b^2 - 4*a*c))*atanh((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) + (2*(1 + b/sqrt(b^2 - 4*a*c))*atanh((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c)))]
    @test_int [cosh(x)^2/(a + b*cosh(x) + c*cosh(x)^2), x, 7, x/c - (2*(b - (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*atanh((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(c*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) - (2*(b + (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*atanh((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(c*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c)))]
    @test_int [cosh(x)^3/(a + b*cosh(x) + c*cosh(x)^2), x, 8, -((b*x)/c^2) + (2*(b^2 - a*c - b^3/sqrt(b^2 - 4*a*c) + (3*a*b*c)/sqrt(b^2 - 4*a*c))*atanh((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(c^2*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) + (2*(b^2 - a*c + b^3/sqrt(b^2 - 4*a*c) - (3*a*b*c)/sqrt(b^2 - 4*a*c))*atanh((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(c^2*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c))) + sinh(x)/c]

    @test_int [(a + b*cosh(x))/(b^2 + 2*a*b*cosh(x) + a^2*cosh(x)^2), x, 3, sinh(x)/(b + a*cosh(x))]
    @test_int [(d + e*cosh(x))/(a + b*cosh(x) + c*cosh(x)^2), x, 5, (2*(e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*atanh((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) + (2*(e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*atanh((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tanh(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Hyper(x)^m*(a*Hyper(x)^n + b*Hyper(x)^n)^p=#


    @test_int [sinh(x)^2/(a*cosh(x)^2 + b*sinh(x)^2), x, 4, x/(a + b) - (sqrt(a)*atan((sqrt(b)*tanh(x))/sqrt(a)))/(sqrt(b)*(a + b))]
    @test_int [cosh(x)^2/(a*cosh(x)^2 + b*sinh(x)^2), x, 4, x/(a + b) + (sqrt(b)*atan((sqrt(b)*tanh(x))/sqrt(a)))/(sqrt(a)*(a + b))]

    @test_int [sinh(x)^3/(cosh(x)^3 + sinh(x)^3), x, 6, x/2 + (2*atan((1 - 2*tanh(x))/sqrt(3)))/(3*sqrt(3)) + 1/(6*(1 + tanh(x)))]
    @test_int [cosh(x)^3/(cosh(x)^3 + sinh(x)^3), x, 6, x/2 - (2*atan((1 - 2*tanh(x))/sqrt(3)))/(3*sqrt(3)) - 1/(6*(1 + tanh(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*csch(x)*sech(x)*(a*sech(x)^n)^p=#


    @test_int [(x^1*csch(x)*sech(x))/sqrt(a*sech(x)^2), x, 6, -((2*x*atanh(ℯ^x)*sech(x))/sqrt(a*sech(x)^2)) - (PolyLog(2, -ℯ^x)*sech(x))/sqrt(a*sech(x)^2) + (PolyLog(2, ℯ^x)*sech(x))/sqrt(a*sech(x)^2)]
    @test_int [(x^2*csch(x)*sech(x))/sqrt(a*sech(x)^2), x, 8, -((2*x^2*atanh(ℯ^x)*sech(x))/sqrt(a*sech(x)^2)) - (2*x*PolyLog(2, -ℯ^x)*sech(x))/sqrt(a*sech(x)^2) + (2*x*PolyLog(2, ℯ^x)*sech(x))/sqrt(a*sech(x)^2) + (2*PolyLog(3, -ℯ^x)*sech(x))/sqrt(a*sech(x)^2) - (2*PolyLog(3, ℯ^x)*sech(x))/sqrt(a*sech(x)^2)]
    @test_int [(x^3*csch(x)*sech(x))/sqrt(a*sech(x)^2), x, 10, -((2*x^3*atanh(ℯ^x)*sech(x))/sqrt(a*sech(x)^2)) - (3*x^2*PolyLog(2, -ℯ^x)*sech(x))/sqrt(a*sech(x)^2) + (3*x^2*PolyLog(2, ℯ^x)*sech(x))/sqrt(a*sech(x)^2) + (6*x*PolyLog(3, -ℯ^x)*sech(x))/sqrt(a*sech(x)^2) - (6*x*PolyLog(3, ℯ^x)*sech(x))/sqrt(a*sech(x)^2) - (6*PolyLog(4, -ℯ^x)*sech(x))/sqrt(a*sech(x)^2) + (6*PolyLog(4, ℯ^x)*sech(x))/sqrt(a*sech(x)^2)]


    @test_int [(x^1*csch(x)*sech(x))/sqrt(a*sech(x)^4), x, 5, -((x^2*sech(x)^2)/(2*sqrt(a*sech(x)^4))) + (x*log(1 - ℯ^(2*x))*sech(x)^2)/sqrt(a*sech(x)^4) + (PolyLog(2, ℯ^(2*x))*sech(x)^2)/(2*sqrt(a*sech(x)^4))]
    @test_int [(x^2*csch(x)*sech(x))/sqrt(a*sech(x)^4), x, 6, -((x^3*sech(x)^2)/(3*sqrt(a*sech(x)^4))) + (x^2*log(1 - ℯ^(2*x))*sech(x)^2)/sqrt(a*sech(x)^4) + (x*PolyLog(2, ℯ^(2*x))*sech(x)^2)/sqrt(a*sech(x)^4) - (PolyLog(3, ℯ^(2*x))*sech(x)^2)/(2*sqrt(a*sech(x)^4))]
    @test_int [(x^3*csch(x)*sech(x))/sqrt(a*sech(x)^4), x, 7, -((x^4*sech(x)^2)/(4*sqrt(a*sech(x)^4))) + (x^3*log(1 - ℯ^(2*x))*sech(x)^2)/sqrt(a*sech(x)^4) + (3*x^2*PolyLog(2, ℯ^(2*x))*sech(x)^2)/(2*sqrt(a*sech(x)^4)) - (3*x*PolyLog(3, ℯ^(2*x))*sech(x)^2)/(2*sqrt(a*sech(x)^4)) + (3*PolyLog(4, ℯ^(2*x))*sech(x)^2)/(4*sqrt(a*sech(x)^4))]


    @test_int [(x^1*csch(x)*sech(x))*sqrt(a*sech(x)^2), x, 10, x*sqrt(a*sech(x)^2) - atan(sinh(x))*cosh(x)*sqrt(a*sech(x)^2) - 2*x*atanh(ℯ^x)*cosh(x)*sqrt(a*sech(x)^2) - cosh(x)*PolyLog(2, -ℯ^x)*sqrt(a*sech(x)^2) + cosh(x)*PolyLog(2, ℯ^x)*sqrt(a*sech(x)^2)]
    @test_int [(x^2*csch(x)*sech(x))*sqrt(a*sech(x)^2), x, 17, x^2*sqrt(a*sech(x)^2) - 4*x*atan(ℯ^x)*cosh(x)*sqrt(a*sech(x)^2) - 2*x^2*atanh(ℯ^x)*cosh(x)*sqrt(a*sech(x)^2) - 2*x*cosh(x)*PolyLog(2, -ℯ^x)*sqrt(a*sech(x)^2) + 2*im*cosh(x)*PolyLog(2, (-im)*ℯ^x)*sqrt(a*sech(x)^2) - 2*im*cosh(x)*PolyLog(2, im*ℯ^x)*sqrt(a*sech(x)^2) + 2*x*cosh(x)*PolyLog(2, ℯ^x)*sqrt(a*sech(x)^2) + 2*cosh(x)*PolyLog(3, -ℯ^x)*sqrt(a*sech(x)^2) - 2*cosh(x)*PolyLog(3, ℯ^x)*sqrt(a*sech(x)^2)]
    @test_int [(x^3*csch(x)*sech(x))*sqrt(a*sech(x)^2), x, 21, x^3*sqrt(a*sech(x)^2) - 6*x^2*atan(ℯ^x)*cosh(x)*sqrt(a*sech(x)^2) - 2*x^3*atanh(ℯ^x)*cosh(x)*sqrt(a*sech(x)^2) - 3*x^2*cosh(x)*PolyLog(2, -ℯ^x)*sqrt(a*sech(x)^2) + 6*im*x*cosh(x)*PolyLog(2, (-im)*ℯ^x)*sqrt(a*sech(x)^2) - 6*im*x*cosh(x)*PolyLog(2, im*ℯ^x)*sqrt(a*sech(x)^2) + 3*x^2*cosh(x)*PolyLog(2, ℯ^x)*sqrt(a*sech(x)^2) + 6*x*cosh(x)*PolyLog(3, -ℯ^x)*sqrt(a*sech(x)^2) - 6*im*cosh(x)*PolyLog(3, (-im)*ℯ^x)*sqrt(a*sech(x)^2) + 6*im*cosh(x)*PolyLog(3, im*ℯ^x)*sqrt(a*sech(x)^2) - 6*x*cosh(x)*PolyLog(3, ℯ^x)*sqrt(a*sech(x)^2) - 6*cosh(x)*PolyLog(4, -ℯ^x)*sqrt(a*sech(x)^2) + 6*cosh(x)*PolyLog(4, ℯ^x)*sqrt(a*sech(x)^2)]


    @test_int [(x^1*csch(x)*sech(x))*sqrt(a*sech(x)^4), x, 12, (1/2)*x*cosh(x)^2*sqrt(a*sech(x)^4) - 2*x*atanh(ℯ^(2*x))*cosh(x)^2*sqrt(a*sech(x)^4) - (1/2)*cosh(x)^2*PolyLog(2, -ℯ^(2*x))*sqrt(a*sech(x)^4) + (1/2)*cosh(x)^2*PolyLog(2, ℯ^(2*x))*sqrt(a*sech(x)^4) - (1/2)*cosh(x)*sqrt(a*sech(x)^4)*sinh(x) - (1/2)*x*sqrt(a*sech(x)^4)*sinh(x)^2]
    @test_int [(x^2*csch(x)*sech(x))*sqrt(a*sech(x)^4), x, 16, (1/2)*x^2*cosh(x)^2*sqrt(a*sech(x)^4) - 2*x^2*atanh(ℯ^(2*x))*cosh(x)^2*sqrt(a*sech(x)^4) + cosh(x)^2*log(cosh(x))*sqrt(a*sech(x)^4) - x*cosh(x)^2*PolyLog(2, -ℯ^(2*x))*sqrt(a*sech(x)^4) + x*cosh(x)^2*PolyLog(2, ℯ^(2*x))*sqrt(a*sech(x)^4) + (1/2)*cosh(x)^2*PolyLog(3, -ℯ^(2*x))*sqrt(a*sech(x)^4) - (1/2)*cosh(x)^2*PolyLog(3, ℯ^(2*x))*sqrt(a*sech(x)^4) - x*cosh(x)*sqrt(a*sech(x)^4)*sinh(x) - (1/2)*x^2*sqrt(a*sech(x)^4)*sinh(x)^2]
    @test_int [(x^3*csch(x)*sech(x))*sqrt(a*sech(x)^4), x, 21, (-(3/2))*x^2*cosh(x)^2*sqrt(a*sech(x)^4) + (1/2)*x^3*cosh(x)^2*sqrt(a*sech(x)^4) - 2*x^3*atanh(ℯ^(2*x))*cosh(x)^2*sqrt(a*sech(x)^4) + 3*x*cosh(x)^2*log(1 + ℯ^(2*x))*sqrt(a*sech(x)^4) + (3/2)*cosh(x)^2*PolyLog(2, -ℯ^(2*x))*sqrt(a*sech(x)^4) - (3/2)*x^2*cosh(x)^2*PolyLog(2, -ℯ^(2*x))*sqrt(a*sech(x)^4) + (3/2)*x^2*cosh(x)^2*PolyLog(2, ℯ^(2*x))*sqrt(a*sech(x)^4) + (3/2)*x*cosh(x)^2*PolyLog(3, -ℯ^(2*x))*sqrt(a*sech(x)^4) - (3/2)*x*cosh(x)^2*PolyLog(3, ℯ^(2*x))*sqrt(a*sech(x)^4) - (3/4)*cosh(x)^2*PolyLog(4, -ℯ^(2*x))*sqrt(a*sech(x)^4) + (3/4)*cosh(x)^2*PolyLog(4, ℯ^(2*x))*sqrt(a*sech(x)^4) - (3/2)*x^2*cosh(x)*sqrt(a*sech(x)^4)*sinh(x) - (1/2)*x^3*sqrt(a*sech(x)^4)*sinh(x)^2]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(a + b*Hyper(c+d*x)*Hyper(c+d*x))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a + b*Hyper(c+d*x)*Hyper(c+d*x))^n=#


    @test_int [(a + b*cosh(c + d*x)*sinh(c + d*x))^m, x, 4, (im*AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - im*sinh(2*c + 2*d*x)), (b*(1 - im*sinh(2*c + 2*d*x)))/(2*im*a + b))*cosh(2*c + 2*d*x)*(a + (1/2)*b*sinh(2*c + 2*d*x))^m)/(((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b))^m*(sqrt(2)*d*sqrt(1 + im*sinh(2*c + 2*d*x))))]

    @test_int [(a + b*cosh(c + d*x)*sinh(c + d*x))^3, x, 3, (1/8)*a*(8*a^2 - 3*b^2)*x + (b*(16*a^2 - b^2)*cosh(2*c + 2*d*x))/(24*d) + (5*a*b^2*cosh(2*c + 2*d*x)*sinh(2*c + 2*d*x))/(48*d) + (b*cosh(2*c + 2*d*x)*(2*a + b*sinh(2*c + 2*d*x))^2)/(48*d)]
    @test_int [(a + b*cosh(c + d*x)*sinh(c + d*x))^2, x, 2, (1/8)*(8*a^2 - b^2)*x + (a*b*cosh(2*c + 2*d*x))/(2*d) + (b^2*cosh(2*c + 2*d*x)*sinh(2*c + 2*d*x))/(16*d)]
    @test_int [(a + b*cosh(c + d*x)*sinh(c + d*x))^1, x, 3, a*x + (b*sinh(c + d*x)^2)/(2*d)]
    @test_int [1/(a + b*cosh(c + d*x)*sinh(c + d*x))^1, x, 4, -((2*atanh((b - 2*a*tanh(c + d*x))/sqrt(4*a^2 + b^2)))/(sqrt(4*a^2 + b^2)*d))]
    @test_int [1/(a + b*cosh(c + d*x)*sinh(c + d*x))^2, x, 6, -((8*a*atanh((b - 2*a*tanh(c + d*x))/sqrt(4*a^2 + b^2)))/((4*a^2 + b^2)^(3/2)*d)) - (2*b*cosh(2*c + 2*d*x))/((4*a^2 + b^2)*d*(2*a + b*sinh(2*c + 2*d*x)))]
    @test_int [1/(a + b*cosh(c + d*x)*sinh(c + d*x))^3, x, 7, -((4*(8*a^2 - b^2)*atanh((b - 2*a*tanh(c + d*x))/sqrt(4*a^2 + b^2)))/((4*a^2 + b^2)^(5/2)*d)) - (2*b*cosh(2*c + 2*d*x))/((4*a^2 + b^2)*d*(2*a + b*sinh(2*c + 2*d*x))^2) - (12*a*b*cosh(2*c + 2*d*x))/((4*a^2 + b^2)^2*d*(2*a + b*sinh(2*c + 2*d*x)))]


    @test_int [(a + b*cosh(c + d*x)*sinh(c + d*x))^(5/2), x, 8, (2*sqrt(2)*a*b*cosh(2*c + 2*d*x)*sqrt(2*a + b*sinh(2*c + 2*d*x)))/(15*d) + (b*cosh(2*c + 2*d*x)*(2*a + b*sinh(2*c + 2*d*x))^(3/2))/(20*sqrt(2)*d) - (im*(92*a^2 - 9*b^2)*EllipticE((1/2)*(2*im*c - pi/2 + 2*im*d*x), (2*b)/(2*im*a + b))*sqrt(2*a + b*sinh(2*c + 2*d*x)))/(60*sqrt(2)*d*sqrt((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b))) + (2*im*sqrt(2)*a*(4*a^2 + b^2)*EllipticF((1/2)*(2*im*c - pi/2 + 2*im*d*x), (2*b)/(2*im*a + b))*sqrt((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b)))/(15*d*sqrt(2*a + b*sinh(2*c + 2*d*x)))]
    @test_int [(a + b*cosh(c + d*x)*sinh(c + d*x))^(3/2), x, 7, (b*cosh(2*c + 2*d*x)*sqrt(2*a + b*sinh(2*c + 2*d*x)))/(6*sqrt(2)*d) - (2*im*sqrt(2)*a*EllipticE((1/2)*(2*im*c - pi/2 + 2*im*d*x), (2*b)/(2*im*a + b))*sqrt(2*a + b*sinh(2*c + 2*d*x)))/(3*d*sqrt((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b))) + (im*(4*a^2 + b^2)*EllipticF((1/2)*(2*im*c - pi/2 + 2*im*d*x), (2*b)/(2*im*a + b))*sqrt((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b)))/(6*sqrt(2)*d*sqrt(2*a + b*sinh(2*c + 2*d*x)))]
    @test_int [(a + b*cosh(c + d*x)*sinh(c + d*x))^(1/2), x, 3, -((im*EllipticE((1/2)*(2*im*c - pi/2 + 2*im*d*x), (2*b)/(2*im*a + b))*sqrt(2*a + b*sinh(2*c + 2*d*x)))/(sqrt(2)*d*sqrt((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b))))]
    @test_int [1/(a + b*cosh(c + d*x)*sinh(c + d*x))^(1/2), x, 3, -((im*sqrt(2)*EllipticF((1/2)*(2*im*c - pi/2 + 2*im*d*x), (2*b)/(2*im*a + b))*sqrt((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b)))/(d*sqrt(2*a + b*sinh(2*c + 2*d*x))))]
    @test_int [1/(a + b*cosh(c + d*x)*sinh(c + d*x))^(3/2), x, 5, -((2*sqrt(2)*b*cosh(2*c + 2*d*x))/((4*a^2 + b^2)*d*sqrt(2*a + b*sinh(2*c + 2*d*x)))) - (2*im*sqrt(2)*EllipticE((1/2)*(2*im*c - pi/2 + 2*im*d*x), (2*b)/(2*im*a + b))*sqrt(2*a + b*sinh(2*c + 2*d*x)))/((4*a^2 + b^2)*d*sqrt((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b)))]
    @test_int [1/(a + b*cosh(c + d*x)*sinh(c + d*x))^(5/2), x, 8, -((4*sqrt(2)*b*cosh(2*c + 2*d*x))/(3*(4*a^2 + b^2)*d*(2*a + b*sinh(2*c + 2*d*x))^(3/2))) - (32*sqrt(2)*a*b*cosh(2*c + 2*d*x))/(3*(4*a^2 + b^2)^2*d*sqrt(2*a + b*sinh(2*c + 2*d*x))) - (32*im*sqrt(2)*a*EllipticE((1/2)*(2*im*c - pi/2 + 2*im*d*x), (2*b)/(2*im*a + b))*sqrt(2*a + b*sinh(2*c + 2*d*x)))/(3*(4*a^2 + b^2)^2*d*sqrt((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b))) + (4*im*sqrt(2)*EllipticF((1/2)*(2*im*c - pi/2 + 2*im*d*x), (2*b)/(2*im*a + b))*sqrt((2*a + b*sinh(2*c + 2*d*x))/(2*a - im*b)))/(3*(4*a^2 + b^2)*d*sqrt(2*a + b*sinh(2*c + 2*d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a + b*Hyper(c+d*x)*Hyper(c+d*x))^n=#


    @test_int [x^3/(a + b*sinh(x)*cosh(x)), x, 13, (x^3*log(1 + (b*ℯ^(2*x))/(2*a - sqrt(4*a^2 + b^2))))/sqrt(4*a^2 + b^2) - (x^3*log(1 + (b*ℯ^(2*x))/(2*a + sqrt(4*a^2 + b^2))))/sqrt(4*a^2 + b^2) + (3*x^2*PolyLog(2, -((b*ℯ^(2*x))/(2*a - sqrt(4*a^2 + b^2)))))/(2*sqrt(4*a^2 + b^2)) - (3*x^2*PolyLog(2, -((b*ℯ^(2*x))/(2*a + sqrt(4*a^2 + b^2)))))/(2*sqrt(4*a^2 + b^2)) - (3*x*PolyLog(3, -((b*ℯ^(2*x))/(2*a - sqrt(4*a^2 + b^2)))))/(2*sqrt(4*a^2 + b^2)) + (3*x*PolyLog(3, -((b*ℯ^(2*x))/(2*a + sqrt(4*a^2 + b^2)))))/(2*sqrt(4*a^2 + b^2)) + (3*PolyLog(4, -((b*ℯ^(2*x))/(2*a - sqrt(4*a^2 + b^2)))))/(4*sqrt(4*a^2 + b^2)) - (3*PolyLog(4, -((b*ℯ^(2*x))/(2*a + sqrt(4*a^2 + b^2)))))/(4*sqrt(4*a^2 + b^2))]
    @test_int [x^2/(a + b*sinh(x)*cosh(x)), x, 11, (x^2*log(1 + (b*ℯ^(2*x))/(2*a - sqrt(4*a^2 + b^2))))/sqrt(4*a^2 + b^2) - (x^2*log(1 + (b*ℯ^(2*x))/(2*a + sqrt(4*a^2 + b^2))))/sqrt(4*a^2 + b^2) + (x*PolyLog(2, -((b*ℯ^(2*x))/(2*a - sqrt(4*a^2 + b^2)))))/sqrt(4*a^2 + b^2) - (x*PolyLog(2, -((b*ℯ^(2*x))/(2*a + sqrt(4*a^2 + b^2)))))/sqrt(4*a^2 + b^2) - PolyLog(3, -((b*ℯ^(2*x))/(2*a - sqrt(4*a^2 + b^2))))/(2*sqrt(4*a^2 + b^2)) + PolyLog(3, -((b*ℯ^(2*x))/(2*a + sqrt(4*a^2 + b^2))))/(2*sqrt(4*a^2 + b^2))]
    @test_int [x^1/(a + b*sinh(x)*cosh(x)), x, 9, (x*log(1 + (b*ℯ^(2*x))/(2*a - sqrt(4*a^2 + b^2))))/sqrt(4*a^2 + b^2) - (x*log(1 + (b*ℯ^(2*x))/(2*a + sqrt(4*a^2 + b^2))))/sqrt(4*a^2 + b^2) + PolyLog(2, -((b*ℯ^(2*x))/(2*a - sqrt(4*a^2 + b^2))))/(2*sqrt(4*a^2 + b^2)) - PolyLog(2, -((b*ℯ^(2*x))/(2*a + sqrt(4*a^2 + b^2))))/(2*sqrt(4*a^2 + b^2))]
    @test_int [1/(x^1*(a + b*sinh(x)*cosh(x))), x, 1, Unintegrable(1/(x*(a + (1/2)*b*sinh(2*x))), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*Hyper(d+e*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*sinh(d+e*x)^n=#


    @test_int [F^(c*(a + b*x))*sinh(d + e*x)^n, x, 2, -((F^(c*(a + b*x))*Hypergeometric2F1(-n, -((e*n - b*c*log(F))/(2*e)), (1/2)*(2 - n + (b*c*log(F))/e), ℯ^(2*(d + e*x)))*sinh(d + e*x)^n)/((1 - ℯ^(2*(d + e*x)))^n*(e*n - b*c*log(F))))]


    @test_int [ℯ^(2*(a + b*x))*sinh(a + b*x)^3, x, 4, ℯ^(-a - b*x)/(8*b) + (3*ℯ^(a + b*x))/(8*b) - ℯ^(3*a + 3*b*x)/(8*b) + ℯ^(5*a + 5*b*x)/(40*b)]
    @test_int [ℯ^(2*(a + b*x))*sinh(a + b*x)^2, x, 5, -(ℯ^(2*a + 2*b*x)/(4*b)) + ℯ^(4*a + 4*b*x)/(16*b) + x/4]
    @test_int [ℯ^(2*(a + b*x))*sinh(a + b*x)^1, x, 3, -(ℯ^(a + b*x)/(2*b)) + ℯ^(3*a + 3*b*x)/(6*b)]
    @test_int [ℯ^(2*(a + b*x))*csch(a + b*x)^1, x, 4, (2*ℯ^(a + b*x))/b - (2*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(2*(a + b*x))*csch(a + b*x)^2, x, 5, 2/(b*(1 - ℯ^(2*a + 2*b*x))) + (2*log(1 - ℯ^(2*a + 2*b*x)))/b]
    @test_int [ℯ^(2*(a + b*x))*csch(a + b*x)^3, x, 5, -((2*ℯ^(3*a + 3*b*x))/(b*(1 - ℯ^(2*a + 2*b*x))^2)) + (3*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (3*atanh(ℯ^(a + b*x)))/b]


    @test_int [ℯ^(a + b*x)*sinh(c + d*x)^3, x, 2, -((6*d^3*ℯ^(a + b*x)*cosh(c + d*x))/(b^4 - 10*b^2*d^2 + 9*d^4)) + (6*b*d^2*ℯ^(a + b*x)*sinh(c + d*x))/(b^4 - 10*b^2*d^2 + 9*d^4) - (3*d*ℯ^(a + b*x)*cosh(c + d*x)*sinh(c + d*x)^2)/(b^2 - 9*d^2) + (b*ℯ^(a + b*x)*sinh(c + d*x)^3)/(b^2 - 9*d^2)]
    @test_int [ℯ^(a + b*x)*sinh(c + d*x)^2, x, 2, (2*d^2*ℯ^(a + b*x))/(b*(b^2 - 4*d^2)) - (2*d*ℯ^(a + b*x)*cosh(c + d*x)*sinh(c + d*x))/(b^2 - 4*d^2) + (b*ℯ^(a + b*x)*sinh(c + d*x)^2)/(b^2 - 4*d^2)]
    @test_int [ℯ^(a + b*x)*sinh(c + d*x)^1, x, 1, -((d*ℯ^(a + b*x)*cosh(c + d*x))/(b^2 - d^2)) + (b*ℯ^(a + b*x)*sinh(c + d*x))/(b^2 - d^2)]
    @test_int [ℯ^(a + b*x)*csch(c + d*x)^1, x, 1, -((2*ℯ^(a + c + b*x + d*x)*Hypergeometric2F1(1, (b + d)/(2*d), (1/2)*(3 + b/d), ℯ^(2*(c + d*x))))/(b + d))]
    @test_int [ℯ^(c + d*x)*csch(a + b*x)^2, x, 1, (4*ℯ^(c + d*x + 2*(a + b*x))*Hypergeometric2F1(2, 1 + d/(2*b), 2 + d/(2*b), ℯ^(2*(a + b*x))))/(2*b + d)]
    @test_int [ℯ^(c + d*x)*csch(a + b*x)^3, x, 2, -((d*ℯ^(c + d*x)*csch(a + b*x))/(2*b^2)) - (ℯ^(c + d*x)*coth(a + b*x)*csch(a + b*x))/(2*b) + ((b - d)*ℯ^(a + c + b*x + d*x)*Hypergeometric2F1(1, (b + d)/(2*b), (1/2)*(3 + d/b), ℯ^(2*(a + b*x))))/b^2]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*cosh(d+e*x)^n=#


    @test_int [F^(c*(a + b*x))*cosh(d + e*x)^n, x, 2, -((F^(c*(a + b*x))*cosh(d + e*x)^n*Hypergeometric2F1(-n, -((e*n - b*c*log(F))/(2*e)), (1/2)*(2 - n + (b*c*log(F))/e), -ℯ^(2*(d + e*x))))/((1 + ℯ^(2*(d + e*x)))^n*(e*n - b*c*log(F))))]


    @test_int [ℯ^(a + b*x)*cosh(c + d*x)^3, x, 2, -((6*b*d^2*ℯ^(a + b*x)*cosh(c + d*x))/(b^4 - 10*b^2*d^2 + 9*d^4)) + (b*ℯ^(a + b*x)*cosh(c + d*x)^3)/(b^2 - 9*d^2) + (6*d^3*ℯ^(a + b*x)*sinh(c + d*x))/(b^4 - 10*b^2*d^2 + 9*d^4) - (3*d*ℯ^(a + b*x)*cosh(c + d*x)^2*sinh(c + d*x))/(b^2 - 9*d^2)]
    @test_int [ℯ^(a + b*x)*cosh(c + d*x)^2, x, 2, -((2*d^2*ℯ^(a + b*x))/(b*(b^2 - 4*d^2))) + (b*ℯ^(a + b*x)*cosh(c + d*x)^2)/(b^2 - 4*d^2) - (2*d*ℯ^(a + b*x)*cosh(c + d*x)*sinh(c + d*x))/(b^2 - 4*d^2)]
    @test_int [ℯ^(a + b*x)*cosh(c + d*x)^1, x, 1, (b*ℯ^(a + b*x)*cosh(c + d*x))/(b^2 - d^2) - (d*ℯ^(a + b*x)*sinh(c + d*x))/(b^2 - d^2)]
    @test_int [ℯ^(a + b*x)*sech(c + d*x)^1, x, 1, (2*ℯ^(a + c + b*x + d*x)*Hypergeometric2F1(1, (b + d)/(2*d), (1/2)*(3 + b/d), -ℯ^(2*(c + d*x))))/(b + d)]
    @test_int [ℯ^(a + b*x)*sech(c + d*x)^2, x, 1, (4*ℯ^(a + b*x + 2*(c + d*x))*Hypergeometric2F1(2, 1 + b/(2*d), 2 + b/(2*d), -ℯ^(2*(c + d*x))))/(b + 2*d)]
    @test_int [ℯ^(a + b*x)*sech(c + d*x)^3, x, 2, -(((b - d)*ℯ^(a + c + b*x + d*x)*Hypergeometric2F1(1, (b + d)/(2*d), (1/2)*(3 + b/d), -ℯ^(2*(c + d*x))))/d^2) + (b*ℯ^(a + b*x)*sech(c + d*x))/(2*d^2) + (ℯ^(a + b*x)*sech(c + d*x)*tanh(c + d*x))/(2*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*sech(d+e*x)^n=#


    @test_int [F^(c*(a + b*x))*sech(d + e*x)^n, x, 2, ((1 + ℯ^(2*(d + e*x)))^n*F^(a*c + b*c*x)*Hypergeometric2F1(n, (e*n + b*c*log(F))/(2*e), 1 + (e*n + b*c*log(F))/(2*e), -ℯ^(2*(d + e*x)))*sech(d + e*x)^n)/(e*n + b*c*log(F))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*csch(d+e*x)^n=#


    @test_int [F^(c*(a + b*x))*csch(d + e*x)^n, x, 2, -(((1 - ℯ^(-2*(d + e*x)))^n*F^(a*c + b*c*x)*csch(d + e*x)^n*Hypergeometric2F1(n, (e*n - b*c*log(F))/(2*e), (1/2)*(2 + n - (b*c*log(F))/e), ℯ^(-2*(d + e*x))))/(e*n - b*c*log(F)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*(f + g*Hyper(d+e*x))^n=#


    @test_int [F^(c*(a + b*x))*(f + im*f*sinh(d + e*x))^2, x, 8, (f^2*F^(a*c + b*c*x))/(b*c*log(F)) + (2*im*e*f^2*F^(a*c + b*c*x)*cosh(d + e*x))/(e^2 - b^2*c^2*log(F)^2) + (2*e^2*f^2*F^(a*c + b*c*x))/(b*c*log(F)*(4*e^2 - b^2*c^2*log(F)^2)) - (2*im*b*c*f^2*F^(a*c + b*c*x)*log(F)*sinh(d + e*x))/(e^2 - b^2*c^2*log(F)^2) - (2*e*f^2*F^(a*c + b*c*x)*cosh(d + e*x)*sinh(d + e*x))/(4*e^2 - b^2*c^2*log(F)^2) + (b*c*f^2*F^(a*c + b*c*x)*log(F)*sinh(d + e*x)^2)/(4*e^2 - b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*(f + im*f*sinh(d + e*x))^1, x, 6, (f*F^(a*c + b*c*x))/(b*c*log(F)) + (im*e*f*F^(a*c + b*c*x)*cosh(d + e*x))/(e^2 - b^2*c^2*log(F)^2) - (im*b*c*f*F^(a*c + b*c*x)*log(F)*sinh(d + e*x))/(e^2 - b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))/(f + im*f*sinh(d + e*x))^1, x, 2, (2*ℯ^((1/2)*(2*d + im*pi + 2*e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 + (b*c*log(F))/e, 2 + (b*c*log(F))/e, -ℯ^((1/2)*(2*d + im*pi + 2*e*x))))/(f*(e + b*c*log(F)))]
    @test_int [F^(c*(a + b*x))/(f + im*f*sinh(d + e*x))^2, x, 3, (2*ℯ^((1/2)*(2*d + im*pi + 2*e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 + (b*c*log(F))/e, 2 + (b*c*log(F))/e, -ℯ^((1/2)*(2*d + im*pi + 2*e*x)))*(e - b*c*log(F)))/(3*e^2*f^2) + (b*c*F^(c*(a + b*x))*log(F)*sech(d/2 + (im*pi)/4 + (e*x)/2)^2)/(6*e^2*f^2) + (F^(c*(a + b*x))*sech(d/2 + (im*pi)/4 + (e*x)/2)^2*tanh(d/2 + (im*pi)/4 + (e*x)/2))/(6*e*f^2)]


    @test_int [F^(c*(a + b*x))*(f + f*cosh(d + e*x))^2, x, 8, (f^2*F^(a*c + b*c*x))/(b*c*log(F)) - (2*b*c*f^2*F^(a*c + b*c*x)*cosh(d + e*x)*log(F))/(e^2 - b^2*c^2*log(F)^2) + (2*e^2*f^2*F^(a*c + b*c*x))/(b*c*log(F)*(4*e^2 - b^2*c^2*log(F)^2)) - (b*c*f^2*F^(a*c + b*c*x)*cosh(d + e*x)^2*log(F))/(4*e^2 - b^2*c^2*log(F)^2) + (2*e*f^2*F^(a*c + b*c*x)*sinh(d + e*x))/(e^2 - b^2*c^2*log(F)^2) + (2*e*f^2*F^(a*c + b*c*x)*cosh(d + e*x)*sinh(d + e*x))/(4*e^2 - b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*(f + f*cosh(d + e*x))^1, x, 6, (f*F^(a*c + b*c*x))/(b*c*log(F)) - (b*c*f*F^(a*c + b*c*x)*cosh(d + e*x)*log(F))/(e^2 - b^2*c^2*log(F)^2) + (e*f*F^(a*c + b*c*x)*sinh(d + e*x))/(e^2 - b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))/(f + f*cosh(d + e*x))^1, x, 2, (2*ℯ^(d + e*x)*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 + (b*c*log(F))/e, 2 + (b*c*log(F))/e, -ℯ^(d + e*x)))/(f*(e + b*c*log(F)))]
    @test_int [F^(c*(a + b*x))/(f + f*cosh(d + e*x))^2, x, 3, (2*ℯ^(d + e*x)*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 + (b*c*log(F))/e, 2 + (b*c*log(F))/e, -ℯ^(d + e*x))*(e - b*c*log(F)))/(3*e^2*f^2) + (b*c*F^(c*(a + b*x))*log(F)*sech(d/2 + (e*x)/2)^2)/(6*e^2*f^2) + (F^(c*(a + b*x))*sech(d/2 + (e*x)/2)^2*tanh(d/2 + (e*x)/2))/(6*e*f^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*cosh(c+d*x)^m*sinh(c+d*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*cosh(a+b*x)^m*sinh(a+b*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [ℯ^(a + b*x)*cosh(a + b*x)*sinh(a + b*x)^3, x, 4, ℯ^(-3*a - 3*b*x)/(48*b) - ℯ^(-a - b*x)/(8*b) - ℯ^(3*a + 3*b*x)/(24*b) + ℯ^(5*a + 5*b*x)/(80*b)]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)*sinh(a + b*x)^2, x, 5, -(ℯ^(-2*a - 2*b*x)/(16*b)) - ℯ^(2*a + 2*b*x)/(16*b) + ℯ^(4*a + 4*b*x)/(32*b) - x/8]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)*sinh(a + b*x)^1, x, 4, ℯ^(-a - b*x)/(4*b) + ℯ^(3*a + 3*b*x)/(12*b)]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)*csch(a + b*x)^1, x, 3, ℯ^(a + b*x)/b - (2*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)*csch(a + b*x)^2, x, 5, 2/(b*(1 - ℯ^(2*a + 2*b*x))) + log(1 - ℯ^(2*a + 2*b*x))/b]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)*csch(a + b*x)^3, x, 5, -((2*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))^2)) + (3*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - atanh(ℯ^(a + b*x))/b]


    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^2*sinh(a + b*x)^3, x, 5, ℯ^(-4*a - 4*b*x)/(128*b) - ℯ^(-2*a - 2*b*x)/(64*b) - ℯ^(2*a + 2*b*x)/(32*b) - ℯ^(4*a + 4*b*x)/(128*b) + ℯ^(6*a + 6*b*x)/(192*b) + x/16]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^2*sinh(a + b*x)^2, x, 4, -(ℯ^(-3*a - 3*b*x)/(48*b)) - ℯ^(a + b*x)/(8*b) + ℯ^(5*a + 5*b*x)/(80*b)]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^2*sinh(a + b*x)^1, x, 5, ℯ^(-2*a - 2*b*x)/(16*b) + ℯ^(2*a + 2*b*x)/(16*b) + ℯ^(4*a + 4*b*x)/(32*b) - x/8]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^2*csch(a + b*x)^1, x, 5, ℯ^(2*a + 2*b*x)/(4*b) - x/2 + log(1 - ℯ^(2*a + 2*b*x))/b]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^2*csch(a + b*x)^2, x, 5, ℯ^(a + b*x)/b + (2*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (2*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^2*csch(a + b*x)^3, x, 5, -(2/(b*(1 - ℯ^(2*a + 2*b*x))^2)) + 4/(b*(1 - ℯ^(2*a + 2*b*x))) + log(1 - ℯ^(2*a + 2*b*x))/b]


    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^3*sinh(a + b*x)^3, x, 4, ℯ^(-5*a - 5*b*x)/(320*b) - (3*ℯ^(-a - b*x))/(64*b) - ℯ^(3*a + 3*b*x)/(64*b) + ℯ^(7*a + 7*b*x)/(448*b)]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^3*sinh(a + b*x)^2, x, 5, -(ℯ^(-4*a - 4*b*x)/(128*b)) - ℯ^(-2*a - 2*b*x)/(64*b) - ℯ^(2*a + 2*b*x)/(32*b) + ℯ^(4*a + 4*b*x)/(128*b) + ℯ^(6*a + 6*b*x)/(192*b) - x/16]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^3*sinh(a + b*x)^1, x, 4, ℯ^(-3*a - 3*b*x)/(48*b) + ℯ^(-a - b*x)/(8*b) + ℯ^(3*a + 3*b*x)/(24*b) + ℯ^(5*a + 5*b*x)/(80*b)]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^3*csch(a + b*x)^1, x, 5, ℯ^(-a - b*x)/(4*b) + ℯ^(a + b*x)/b + ℯ^(3*a + 3*b*x)/(12*b) - (2*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^3*csch(a + b*x)^2, x, 5, ℯ^(2*a + 2*b*x)/(4*b) + 2/(b*(1 - ℯ^(2*a + 2*b*x))) + x/2 + log(1 - ℯ^(2*a + 2*b*x))/b]
    @test_int [ℯ^(a + b*x)*cosh(a + b*x)^3*csch(a + b*x)^3, x, 7, ℯ^(a + b*x)/b - (2*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))^2) + (3*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (3*atanh(ℯ^(a + b*x)))/b]


    #= ::Subsubsection:: =#
    #=m<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*cosh(n*(a+b*x))^m*sinh(n*(a+b*x))^p=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)*sinh(a + b*x)^3, x, 5, ℯ^(-2*a - 2*b*x)/(32*b) - ℯ^(4*a + 4*b*x)/(32*b) + ℯ^(6*a + 6*b*x)/(96*b) + x/8]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)*sinh(a + b*x)^2, x, 4, -(ℯ^(-a - b*x)/(8*b)) - ℯ^(a + b*x)/(8*b) - ℯ^(3*a + 3*b*x)/(24*b) + ℯ^(5*a + 5*b*x)/(40*b)]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)*sinh(a + b*x)^1, x, 4, ℯ^(4*a + 4*b*x)/(16*b) - x/4]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)*csch(a + b*x)^1, x, 4, ℯ^(2*a + 2*b*x)/(2*b) + log(1 - ℯ^(2*a + 2*b*x))/b]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)*csch(a + b*x)^2, x, 5, (2*ℯ^(a + b*x))/b + (2*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (4*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)*csch(a + b*x)^3, x, 5, -(2/(b*(1 - ℯ^(2*a + 2*b*x))^2)) + 6/(b*(1 - ℯ^(2*a + 2*b*x))) + (2*log(1 - ℯ^(2*a + 2*b*x)))/b]


    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^2*sinh(a + b*x)^3, x, 4, ℯ^(-3*a - 3*b*x)/(96*b) - ℯ^(-a - b*x)/(32*b) + ℯ^(a + b*x)/(16*b) - ℯ^(3*a + 3*b*x)/(48*b) - ℯ^(5*a + 5*b*x)/(160*b) + ℯ^(7*a + 7*b*x)/(224*b)]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^2*sinh(a + b*x)^2, x, 4, -(ℯ^(-2*a - 2*b*x)/(32*b)) - ℯ^(2*a + 2*b*x)/(16*b) + ℯ^(6*a + 6*b*x)/(96*b)]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^2*sinh(a + b*x)^1, x, 4, ℯ^(-a - b*x)/(8*b) - ℯ^(a + b*x)/(8*b) + ℯ^(3*a + 3*b*x)/(24*b) + ℯ^(5*a + 5*b*x)/(40*b)]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^2*csch(a + b*x)^1, x, 5, (3*ℯ^(a + b*x))/(2*b) + ℯ^(3*a + 3*b*x)/(6*b) - (2*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^2*csch(a + b*x)^2, x, 4, ℯ^(2*a + 2*b*x)/(2*b) + 2/(b*(1 - ℯ^(2*a + 2*b*x))) + (2*log(1 - ℯ^(2*a + 2*b*x)))/b]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^2*csch(a + b*x)^3, x, 6, (2*ℯ^(a + b*x))/b - (2*ℯ^(3*a + 3*b*x))/(b*(1 - ℯ^(2*a + 2*b*x))^2) + (3*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (5*atanh(ℯ^(a + b*x)))/b]


    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^3*sinh(a + b*x)^3, x, 5, ℯ^(-4*a - 4*b*x)/(256*b) - (3*ℯ^(4*a + 4*b*x))/(256*b) + ℯ^(8*a + 8*b*x)/(512*b) + (3*x)/64]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^3*sinh(a + b*x)^2, x, 4, -(ℯ^(-3*a - 3*b*x)/(96*b)) - ℯ^(-a - b*x)/(32*b) - ℯ^(a + b*x)/(16*b) - ℯ^(3*a + 3*b*x)/(48*b) + ℯ^(5*a + 5*b*x)/(160*b) + ℯ^(7*a + 7*b*x)/(224*b)]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^3*sinh(a + b*x)^1, x, 5, ℯ^(-2*a - 2*b*x)/(32*b) + ℯ^(4*a + 4*b*x)/(32*b) + ℯ^(6*a + 6*b*x)/(96*b) - x/8]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^3*csch(a + b*x)^1, x, 5, ℯ^(2*a + 2*b*x)/(2*b) + ℯ^(4*a + 4*b*x)/(16*b) - x/4 + log(1 - ℯ^(2*a + 2*b*x))/b]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^3*csch(a + b*x)^2, x, 6, (5*ℯ^(a + b*x))/(2*b) + ℯ^(3*a + 3*b*x)/(6*b) + (2*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (4*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(2*(a + b*x))*cosh(a + b*x)^3*csch(a + b*x)^3, x, 4, ℯ^(2*a + 2*b*x)/(2*b) - 2/(b*(1 - ℯ^(2*a + 2*b*x))^2) + 6/(b*(1 - ℯ^(2*a + 2*b*x))) + (3*log(1 - ℯ^(2*a + 2*b*x)))/b]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [ℯ^x*sech(2*x)*tanh(2*x), x, 12, -(ℯ^(3*x)/(1 + ℯ^(4*x))) - atan(1 - sqrt(2)*ℯ^x)/(2*sqrt(2)) + atan(1 + sqrt(2)*ℯ^x)/(2*sqrt(2)) + log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2)) - log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2))]
    @test_int [ℯ^x*sech(2*x)^2*tanh(2*x), x, 13, -(ℯ^(5*x)/(1 + ℯ^(4*x))^2) - ℯ^x/(4*(1 + ℯ^(4*x))) - atan(1 - sqrt(2)*ℯ^x)/(8*sqrt(2)) + atan(1 + sqrt(2)*ℯ^x)/(8*sqrt(2)) - log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(16*sqrt(2)) + log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(16*sqrt(2))]
    @test_int [ℯ^x*sech(2*x)*tanh(2*x)^2, x, 13, ℯ^(3*x)/(1 + ℯ^(4*x))^2 - (3*ℯ^(3*x))/(4*(1 + ℯ^(4*x))) - (5*atan(1 - sqrt(2)*ℯ^x))/(8*sqrt(2)) + (5*atan(1 + sqrt(2)*ℯ^x))/(8*sqrt(2)) + (5*log(1 - sqrt(2)*ℯ^x + ℯ^(2*x)))/(16*sqrt(2)) - (5*log(1 + sqrt(2)*ℯ^x + ℯ^(2*x)))/(16*sqrt(2))]
    @test_int [ℯ^x*sech(2*x)^2*tanh(2*x)^2, x, 14, (4*ℯ^(5*x))/(3*(1 + ℯ^(4*x))^3) - (5*ℯ^(5*x))/(6*(1 + ℯ^(4*x))^2) - (3*ℯ^x)/(8*(1 + ℯ^(4*x))) - (3*atan(1 - sqrt(2)*ℯ^x))/(16*sqrt(2)) + (3*atan(1 + sqrt(2)*ℯ^x))/(16*sqrt(2)) - (3*log(1 - sqrt(2)*ℯ^x + ℯ^(2*x)))/(32*sqrt(2)) + (3*log(1 + sqrt(2)*ℯ^x + ℯ^(2*x)))/(32*sqrt(2))]


    @test_int [ℯ^x*coth(2*x)*csch(2*x), x, 6, ℯ^(3*x)/(1 - ℯ^(4*x)) + atan(ℯ^x)/2 - atanh(ℯ^x)/2]
    @test_int [ℯ^x*coth(2*x)*csch(2*x)^2, x, 7, -(ℯ^(5*x)/(1 - ℯ^(4*x))^2) + ℯ^x/(4*(1 - ℯ^(4*x))) - atan(ℯ^x)/8 - atanh(ℯ^x)/8]
    @test_int [ℯ^x*coth(2*x)^2*csch(2*x), x, 7, -(ℯ^(3*x)/(1 - ℯ^(4*x))^2) + (3*ℯ^(3*x))/(4*(1 - ℯ^(4*x))) + (5*atan(ℯ^x))/8 - (5*atanh(ℯ^x))/8]
    @test_int [ℯ^x*coth(2*x)^2*csch(2*x)^2, x, 8, (4*ℯ^(5*x))/(3*(1 - ℯ^(4*x))^3) - (5*ℯ^(5*x))/(6*(1 - ℯ^(4*x))^2) + (3*ℯ^x)/(8*(1 - ℯ^(4*x))) - (3*atan(ℯ^x))/16 - (3*atanh(ℯ^x))/16]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*cosh(c+d*x)^m*sinh(c+d*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>=0=#


    @test_int [ℯ^(c + d*x)*cosh(a + b*x)*sinh(a + b*x)^3, x, 4, -((b*ℯ^(c + d*x)*cosh(2*a + 2*b*x))/(2*(4*b^2 - d^2))) + (b*ℯ^(c + d*x)*cosh(4*a + 4*b*x))/(2*(16*b^2 - d^2)) + (d*ℯ^(c + d*x)*sinh(2*a + 2*b*x))/(4*(4*b^2 - d^2)) - (d*ℯ^(c + d*x)*sinh(4*a + 4*b*x))/(8*(16*b^2 - d^2))]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)*sinh(a + b*x)^2, x, 4, (d*ℯ^(c + d*x)*cosh(a + b*x))/(4*(b^2 - d^2)) - (d*ℯ^(c + d*x)*cosh(3*a + 3*b*x))/(4*(9*b^2 - d^2)) - (b*ℯ^(c + d*x)*sinh(a + b*x))/(4*(b^2 - d^2)) + (3*b*ℯ^(c + d*x)*sinh(3*a + 3*b*x))/(4*(9*b^2 - d^2))]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)*sinh(a + b*x)^1, x, 3, (b*ℯ^(c + d*x)*cosh(2*a + 2*b*x))/(4*b^2 - d^2) - (d*ℯ^(c + d*x)*sinh(2*a + 2*b*x))/(2*(4*b^2 - d^2))]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)*sinh(a + b*x)^0, x, 1, -((d*ℯ^(c + d*x)*cosh(a + b*x))/(b^2 - d^2)) + (b*ℯ^(c + d*x)*sinh(a + b*x))/(b^2 - d^2)]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)*csch(a + b*x)^1, x, 4, ℯ^(c + d*x)/d - (2*ℯ^(c + d*x)*Hypergeometric2F1(1, d/(2*b), 1 + d/(2*b), ℯ^(2*(a + b*x))))/d]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)*csch(a + b*x)^2, x, 4, -((2*ℯ^(a + c + (b + d)*x)*Hypergeometric2F1(1, (b + d)/(2*b), (3*b + d)/(2*b), ℯ^(2*(a + b*x))))/(b + d)) + (4*ℯ^(a + c + (b + d)*x)*Hypergeometric2F1(2, (b + d)/(2*b), (3*b + d)/(2*b), ℯ^(2*(a + b*x))))/(b + d)]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)*csch(a + b*x)^3, x, 4, (4*ℯ^(2*a + c + (2*b + d)*x)*Hypergeometric2F1(2, (1/2)*(2 + d/b), (1/2)*(4 + d/b), ℯ^(2*(a + b*x))))/(2*b + d) - (8*ℯ^(2*a + c + (2*b + d)*x)*Hypergeometric2F1(3, (1/2)*(2 + d/b), (1/2)*(4 + d/b), ℯ^(2*(a + b*x))))/(2*b + d)]


    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^2*sinh(a + b*x)^3, x, 5, -((b*ℯ^(c + d*x)*cosh(a + b*x))/(8*(b^2 - d^2))) - (3*b*ℯ^(c + d*x)*cosh(3*a + 3*b*x))/(16*(9*b^2 - d^2)) + (5*b*ℯ^(c + d*x)*cosh(5*a + 5*b*x))/(16*(25*b^2 - d^2)) + (d*ℯ^(c + d*x)*sinh(a + b*x))/(8*(b^2 - d^2)) + (d*ℯ^(c + d*x)*sinh(3*a + 3*b*x))/(16*(9*b^2 - d^2)) - (d*ℯ^(c + d*x)*sinh(5*a + 5*b*x))/(16*(25*b^2 - d^2))]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^2*sinh(a + b*x)^2, x, 4, -(ℯ^(c + d*x)/(8*d)) - (d*ℯ^(c + d*x)*cosh(4*a + 4*b*x))/(8*(16*b^2 - d^2)) + (b*ℯ^(c + d*x)*sinh(4*a + 4*b*x))/(2*(16*b^2 - d^2))]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^2*sinh(a + b*x)^1, x, 4, (b*ℯ^(c + d*x)*cosh(a + b*x))/(4*(b^2 - d^2)) + (3*b*ℯ^(c + d*x)*cosh(3*a + 3*b*x))/(4*(9*b^2 - d^2)) - (d*ℯ^(c + d*x)*sinh(a + b*x))/(4*(b^2 - d^2)) - (d*ℯ^(c + d*x)*sinh(3*a + 3*b*x))/(4*(9*b^2 - d^2))]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^2*sinh(a + b*x)^0, x, 2, (2*b^2*ℯ^(c + d*x))/(d*(4*b^2 - d^2)) - (d*ℯ^(c + d*x)*cosh(a + b*x)^2)/(4*b^2 - d^2) + (2*b*ℯ^(c + d*x)*cosh(a + b*x)*sinh(a + b*x))/(4*b^2 - d^2)]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^2*csch(a + b*x)^1, x, 6, -((3*ℯ^(-a + c - (b - d)*x))/(2*(b - d))) + ℯ^(a + c + (b + d)*x)/(2*(b + d)) + (2*ℯ^(-a + c - (b - d)*x)*Hypergeometric2F1(1, -((b - d)/(2*b)), (b + d)/(2*b), ℯ^(2*(a + b*x))))/(b - d)]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^2*csch(a + b*x)^2, x, 5, ℯ^(c + d*x)/d - (4*ℯ^(c + d*x)*Hypergeometric2F1(1, d/(2*b), 1 + d/(2*b), ℯ^(2*(a + b*x))))/d + (4*ℯ^(c + d*x)*Hypergeometric2F1(2, d/(2*b), 1 + d/(2*b), ℯ^(2*(a + b*x))))/d]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^2*csch(a + b*x)^3, x, 5, -((2*ℯ^(a + c + (b + d)*x)*Hypergeometric2F1(1, (b + d)/(2*b), (3*b + d)/(2*b), ℯ^(2*(a + b*x))))/(b + d)) + (8*ℯ^(a + c + (b + d)*x)*Hypergeometric2F1(2, (b + d)/(2*b), (3*b + d)/(2*b), ℯ^(2*(a + b*x))))/(b + d) - (8*ℯ^(a + c + (b + d)*x)*Hypergeometric2F1(3, (b + d)/(2*b), (3*b + d)/(2*b), ℯ^(2*(a + b*x))))/(b + d)]


    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^3*sinh(a + b*x)^3, x, 4, -((3*b*ℯ^(c + d*x)*cosh(2*a + 2*b*x))/(16*(4*b^2 - d^2))) + (3*b*ℯ^(c + d*x)*cosh(6*a + 6*b*x))/(16*(36*b^2 - d^2)) + (3*d*ℯ^(c + d*x)*sinh(2*a + 2*b*x))/(32*(4*b^2 - d^2)) - (d*ℯ^(c + d*x)*sinh(6*a + 6*b*x))/(32*(36*b^2 - d^2))]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^3*sinh(a + b*x)^2, x, 5, (d*ℯ^(c + d*x)*cosh(a + b*x))/(8*(b^2 - d^2)) - (d*ℯ^(c + d*x)*cosh(3*a + 3*b*x))/(16*(9*b^2 - d^2)) - (d*ℯ^(c + d*x)*cosh(5*a + 5*b*x))/(16*(25*b^2 - d^2)) - (b*ℯ^(c + d*x)*sinh(a + b*x))/(8*(b^2 - d^2)) + (3*b*ℯ^(c + d*x)*sinh(3*a + 3*b*x))/(16*(9*b^2 - d^2)) + (5*b*ℯ^(c + d*x)*sinh(5*a + 5*b*x))/(16*(25*b^2 - d^2))]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^3*sinh(a + b*x)^1, x, 4, (b*ℯ^(c + d*x)*cosh(2*a + 2*b*x))/(2*(4*b^2 - d^2)) + (b*ℯ^(c + d*x)*cosh(4*a + 4*b*x))/(2*(16*b^2 - d^2)) - (d*ℯ^(c + d*x)*sinh(2*a + 2*b*x))/(4*(4*b^2 - d^2)) - (d*ℯ^(c + d*x)*sinh(4*a + 4*b*x))/(8*(16*b^2 - d^2))]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^3*sinh(a + b*x)^0, x, 2, -((6*b^2*d*ℯ^(c + d*x)*cosh(a + b*x))/(9*b^4 - 10*b^2*d^2 + d^4)) - (d*ℯ^(c + d*x)*cosh(a + b*x)^3)/(9*b^2 - d^2) + (6*b^3*ℯ^(c + d*x)*sinh(a + b*x))/(9*b^4 - 10*b^2*d^2 + d^4) + (3*b*ℯ^(c + d*x)*cosh(a + b*x)^2*sinh(a + b*x))/(9*b^2 - d^2)]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^3*csch(a + b*x)^1, x, 8, -((7*ℯ^(-2*a + c - (2*b - d)*x))/(4*(2*b - d))) + ℯ^(c + d*x)/d + ℯ^(2*a + c + (2*b + d)*x)/(4*(2*b + d)) + (2*ℯ^(-2*a + c - (2*b - d)*x)*Hypergeometric2F1(1, (1/2)*(-2 + d/b), d/(2*b), ℯ^(2*(a + b*x))))/(2*b - d)]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^3*csch(a + b*x)^2, x, 7, -((5*ℯ^(-a + c - (b - d)*x))/(2*(b - d))) + ℯ^(a + c + (b + d)*x)/(2*(b + d)) + (6*ℯ^(-a + c - (b - d)*x)*Hypergeometric2F1(1, -((b - d)/(2*b)), (b + d)/(2*b), ℯ^(2*(a + b*x))))/(b - d) - (4*ℯ^(-a + c - (b - d)*x)*Hypergeometric2F1(2, -((b - d)/(2*b)), (b + d)/(2*b), ℯ^(2*(a + b*x))))/(b - d)]
    @test_int [ℯ^(c + d*x)*cosh(a + b*x)^3*csch(a + b*x)^3, x, 6, ℯ^(c + d*x)/d - (6*ℯ^(c + d*x)*Hypergeometric2F1(1, d/(2*b), 1 + d/(2*b), ℯ^(2*(a + b*x))))/d + (12*ℯ^(c + d*x)*Hypergeometric2F1(2, d/(2*b), 1 + d/(2*b), ℯ^(2*(a + b*x))))/d - (8*ℯ^(c + d*x)*Hypergeometric2F1(3, d/(2*b), 1 + d/(2*b), ℯ^(2*(a + b*x))))/d]


    @test_int [ℯ^(a + b*x)*sinh(c + d*x)^(3/2) - ((3*d^2)/(4*(b^2 - (9*d^2)/4)))*(ℯ^(a + b*x)/sqrt(sinh(c + d*x))), x, 10, -((6*d*ℯ^(a + b*x)*cosh(c + d*x)*sqrt(sinh(c + d*x)))/(4*b^2 - 9*d^2)) + (4*b*ℯ^(a + b*x)*sinh(c + d*x)^(3/2))/(4*b^2 - 9*d^2)]


    #= ::Subsubsection:: =#
    #=m<0=#


    #= ::Section::Closed:: =#
    #=Products*of*functions*of*a*hyperbolic*function*and*its*derivative=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(cosh(a+b*x))*sinh(a+b*x)^n*when*n*odd=#


    @test_int [ℯ^(n*cosh(a+b*x))*sinh(a+b*x), x, 2, ℯ^(n*cosh(a + b*x))/(b*n)]
    @test_int [ℯ^(n*cosh(a*c+b*c*x))*sinh(c*(a+b*x)), x, 2, ℯ^(n*cosh(c*(a + b*x)))/(b*c*n)]
    @test_int [ℯ^(n*cosh(c*(a+b*x)))*sinh(a*c+b*c*x), x, 2, ℯ^(n*cosh(a*c + b*c*x))/(b*c*n)]


    @test_int [ℯ^(n*cosh(a+b*x))*tanh(a+b*x), x, 2, ExpIntegralEi(n*cosh(a + b*x))/b]
    @test_int [ℯ^(n*cosh(a*c+b*c*x))*tanh(c*(a+b*x)), x, 2, ExpIntegralEi(n*cosh(c*(a + b*x)))/(b*c)]
    @test_int [ℯ^(n*cosh(c*(a+b*x)))*tanh(a*c+b*c*x), x, 2, ExpIntegralEi(n*cosh(a*c + b*c*x))/(b*c)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(sinh(a+b*x))*cosh(a+b*x)^n*when*n*odd=#


    @test_int [ℯ^(n*sinh(a+b*x))*cosh(a+b*x), x, 2, ℯ^(n*sinh(a + b*x))/(b*n)]
    @test_int [ℯ^(n*sinh(a*c+b*c*x))*cosh(c*(a+b*x)), x, 2, ℯ^(n*sinh(c*(a + b*x)))/(b*c*n)]
    @test_int [ℯ^(n*sinh(c*(a+b*x)))*cosh(a*c+b*c*x), x, 2, ℯ^(n*sinh(a*c + b*c*x))/(b*c*n)]


    @test_int [ℯ^(n*sinh(a+b*x))*coth(a+b*x), x, 2, ExpIntegralEi(n*sinh(a + b*x))/b]
    @test_int [ℯ^(n*sinh(a*c+b*c*x))*coth(c*(a+b*x)), x, 2, ExpIntegralEi(n*sinh(c*(a + b*x)))/(b*c)]
    @test_int [ℯ^(n*sinh(c*(a+b*x)))*coth(a*c+b*c*x), x, 2, ExpIntegralEi(n*sinh(a*c + b*c*x))/(b*c)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(tanh(a+b*x))*sech(a+b*x)^n*when*n*even=#


    @test_int [sech(x)^2/(a + b*tanh(x)), x, 2, log(a + b*tanh(x))/b]
    @test_int [sech(x)^2/(1 + tanh(x)^2), x, 2, atan(tanh(x))]
    @test_int [sech(x)^2/(9 + tanh(x)^2), x, 2, atan(tanh(x)/3)/3]
    @test_int [sech(x)^2*(a + b*tanh(x))^n, x, 2, (a + b*tanh(x))^(1 + n)/(b*(1 + n))]
    @test_int [sech(x)^2*(1 + 1/(1 - tanh(x)^2)), x, 3, x + tanh(x)]
    @test_int [sech(x)^2*(2 - tanh(x)^2)/(1 - tanh(x)^2), x, 4, x + tanh(x)]
    @test_int [sech(x)^2/(2 + 2*tanh(x) + tanh(x)^2), x, 3, atan(1 + tanh(x))]
    @test_int [sech(x)^2/(tanh(x)^2 + tanh(x)^3), x, 3, -coth(x) - log(tanh(x)) + log(1 + tanh(x))]
    @test_int [sech(x)^2/(-tanh(x)^2 + tanh(x)^3), x, 3, coth(x) + log(1 - tanh(x)) - log(tanh(x))]
    @test_int [sech(x)^2/(3 - 4*tanh(x)^3), x, 7, atan((3^(1/3) + 2*2^(2/3)*tanh(x))/3^(5/6))/(3*2^(2/3)*3^(1/6)) - log(3^(1/3) - 2^(2/3)*tanh(x))/(3*6^(2/3)) + log(3^(2/3) + 2^(2/3)*3^(1/3)*tanh(x) + 2*2^(1/3)*tanh(x)^2)/(6*6^(2/3))]
    @test_int [sech(x)^2/(11 - 5*tanh(x) + 5*tanh(x)^2), x, 3, -((2*atan(sqrt(5/39)*(1 - 2*tanh(x))))/sqrt(195))]
    @test_int [sech(x)^2*(a + b*tanh(x))/(c + d*tanh(x)), x, 3, -(((b*c - a*d)*log(c + d*tanh(x)))/d^2) + (b*tanh(x))/d]
    @test_int [sech(x)^2*(a + b*tanh(x))^2/(c + d*tanh(x)), x, 3, ((b*c - a*d)^2*log(c + d*tanh(x)))/d^3 - (b*(b*c - a*d)*tanh(x))/d^2 + (a + b*tanh(x))^2/(2*d)]
    @test_int [sech(x)^2*(a + b*tanh(x))^3/(c + d*tanh(x)), x, 3, -(((b*c - a*d)^3*log(c + d*tanh(x)))/d^4) + (b*(b*c - a*d)^2*tanh(x))/d^3 - ((b*c - a*d)*(a + b*tanh(x))^2)/(2*d^2) + (a + b*tanh(x))^3/(3*d)]
    @test_int [sech(x)^2*tanh(x)^2/(2 + tanh(x)^3)^2, x, 2, -1/(3*(2 + tanh(x)^3))]
    @test_int [sech(x)^2*tanh(x)^6*(1 - tanh(x)^2)^3, x, 4, tanh(x)^7/7 - tanh(x)^9/3 + (3*tanh(x)^11)/11 - tanh(x)^13/13]
    @test_int [sech(x)^2*(2 + tanh(x)^2)/(1 + tanh(x)^3), x, 5, -((2*atan((1 - 2*tanh(x))/sqrt(3)))/sqrt(3)) + log(1 + tanh(x))]
    @test_int [sech(x)^2*(1 + cosh(x)^2), x, 2, x + tanh(x)]
    @test_int [sech(x)^2/(1 + sech(x)^2 - 3*tanh(x)), x, 3, (2*atanh((3 + 2*tanh(x))/sqrt(17)))/sqrt(17)]
    @test_int [sech(x)^2/sqrt(4 - sech(x)^2), x, 2, asinh(tanh(x)/sqrt(3))]
    @test_int [sech(x)^2/sqrt(1 - 4*tanh(x)^2), x, 2, asin(2*tanh(x))/2]
    @test_int [sech(x)^2/sqrt(-4 + tanh(x)^2), x, 3, atanh(tanh(x)/sqrt(-4 + tanh(x)^2))]
    @test_int [sech(x)^2*sqrt(1 + coth(x)^2), x, 3, -asinh(coth(x)) + sqrt(1 + coth(x)^2)*tanh(x)]
    @test_int [sech(x)^2*sqrt(1 + tanh(x)^2), x, 3, (1/2)*asinh(tanh(x)) + (1/2)*tanh(x)*sqrt(1 + tanh(x)^2)]


    @test_int [sech(x)^4*(-1 + sech(x)^2)^2*tanh(x), x, 4, tanh(x)^6/6 - tanh(x)^8/8]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*F(coth(a+b*x))*csch(a+b*x)^n*when*n*even=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*F(sech(a+b*x))*sech(a+b*x)*tanh(a+b*x)=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*F(csch(a+b*x))*csch(a+b*x)*coth(a+b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(sinh((a+b*x)/2))*sinh(a+b*x)=#


    @test_int [ℯ^(n*sinh(a+b*x))*sinh(2*a+2*b*x), x, 4, -((2*ℯ^(n*sinh(a + b*x)))/(b*n^2)) + (2*ℯ^(n*sinh(a + b*x))*sinh(a + b*x))/(b*n)]
    @test_int [ℯ^(n*sinh(a+b*x))*sinh(2*(a+b*x)), x, 4, -((2*ℯ^(n*sinh(a + b*x)))/(b*n^2)) + (2*ℯ^(n*sinh(a + b*x))*sinh(a + b*x))/(b*n)]
    @test_int [ℯ^(n*sinh(a/2+b/2*x))*sinh(a+b*x), x, 4, -((4*ℯ^(n*sinh(a/2 + (b*x)/2)))/(b*n^2)) + (4*ℯ^(n*sinh(a/2 + (b*x)/2))*sinh(a/2 + (b*x)/2))/(b*n)]
    @test_int [ℯ^(n*sinh((a+b*x)/2))*sinh(a+b*x), x, 4, -((4*ℯ^(n*sinh(a/2 + (b*x)/2)))/(b*n^2)) + (4*ℯ^(n*sinh(a/2 + (b*x)/2))*sinh(a/2 + (b*x)/2))/(b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(cosh((a+b*x)/2))*sinh(a+b*x)=#


    @test_int [ℯ^(n*cosh(a+b*x))*sinh(2*a+2*b*x), x, 4, -((2*ℯ^(n*cosh(a + b*x)))/(b*n^2)) + (2*ℯ^(n*cosh(a + b*x))*cosh(a + b*x))/(b*n)]
    @test_int [ℯ^(n*cosh(a+b*x))*sinh(2*(a+b*x)), x, 4, -((2*ℯ^(n*cosh(a + b*x)))/(b*n^2)) + (2*ℯ^(n*cosh(a + b*x))*cosh(a + b*x))/(b*n)]
    @test_int [ℯ^(n*cosh(a/2+b/2*x))*sinh(a+b*x), x, 4, -((4*ℯ^(n*cosh(a/2 + (b*x)/2)))/(b*n^2)) + (4*ℯ^(n*cosh(a/2 + (b*x)/2))*cosh(a/2 + (b*x)/2))/(b*n)]
    @test_int [ℯ^(n*cosh((a+b*x)/2))*sinh(a+b*x), x, 4, -((4*ℯ^(n*cosh(a/2 + (b*x)/2)))/(b*n^2)) + (4*ℯ^(n*cosh(a/2 + (b*x)/2))*cosh(a/2 + (b*x)/2))/(b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(tanh(a+b*x))*when*n*even=#


    @test_int [csch(x)*log(tanh(x))*sech(x), x, 1, log(tanh(x))^2/2]
    @test_int [csch(2*x)*log(tanh(x)), x, 1, log(tanh(x))^2/4]


    #= ::Subsection::Closed:: =#
    #=Products*of*functions*of*a*hyperbolic*function*and*its*derivative=#


    @test_int [cosh(a + b*x)*F(c, d, sinh(a + b*x), r, s), x, 1, CannotIntegrate(cosh(a + b*x)*F(c, d, sinh(a + b*x), r, s), x)]
    @test_int [sinh(a + b*x)*F(c, d, cosh(a + b*x), r, s), x, 1, CannotIntegrate(F(c, d, cosh(a + b*x), r, s)*sinh(a + b*x), x)]
    @test_int [sech(a + b*x)^2*F(c, d, tanh(a + b*x), r, s), x, 1, CannotIntegrate(F(c, d, tanh(a + b*x), r, s)*sech(a + b*x)^2, x)]
    @test_int [csch(a + b*x)^2*F(c, d, coth(a + b*x), r, s), x, 1, CannotIntegrate(csch(a + b*x)^2*F(c, d, coth(a + b*x), r, s), x)]


    @test_int [sech(x)*(5 - 11*sech(x)^2)*tanh(x), x, 3, -5*sech(x) + (11*sech(x)^3)/3]


    @test_int [csch(x)^2/(a + b*coth(x)), x, 2, -(log(a + b*coth(x))/b)]
    @test_int [csch(x)^2*(a + b*coth(x))^n, x, 2, -((a + b*coth(x))^(1 + n)/(b*(1 + n)))]

    @test_int [csch(x)^2*(-1 + sinh(x)^2), x, 2, x + coth(x)]
    @test_int [csch(x)^2*(-1 - 1/(1 - coth(x)^2)), x, 3, x + coth(x)]
    @test_int [csch(x)^2*(a + b*coth(x))/(c + d*coth(x)), x, 3, -((b*coth(x))/d) + ((b*c - a*d)*log(c + d*coth(x)))/d^2]
    @test_int [csch(x)^2*(a + b*coth(x))^2/(c + d*coth(x)), x, 3, (b*(b*c - a*d)*coth(x))/d^2 - (a + b*coth(x))^2/(2*d) - ((b*c - a*d)^2*log(c + d*coth(x)))/d^3]
    @test_int [csch(x)^2*(a + b*coth(x))^3/(c + d*coth(x)), x, 3, -((b*(b*c - a*d)^2*coth(x))/d^3) + ((b*c - a*d)*(a + b*coth(x))^2)/(2*d^2) - (a + b*coth(x))^3/(3*d) + ((b*c - a*d)^3*log(c + d*coth(x)))/d^4]


    @test_int [cosh(x)^3*(a + b*cosh(x)^2)^3*sinh(x), x, 4, -((a*(a + b*cosh(x)^2)^4)/(8*b^2)) + (a + b*cosh(x)^2)^5/(10*b^2)]
    @test_int [sinh(x)^3*(a + b*sinh(x)^2)^3*cosh(x), x, 4, -((a*(a + b*sinh(x)^2)^4)/(8*b^2)) + (a + b*sinh(x)^2)^5/(10*b^2)]


    @test_int [cosh(x)*sinh(x)*sqrt(a + b*sinh(x)^2), x, 2, (a + b*sinh(x)^2)^(3/2)/(3*b)]


    @test_int [csch(x)*sqrt(1 + log(coth(x))^2)*sech(x), x, 3, (-(1/2))*asinh(log(coth(x))) - (1/2)*log(coth(x))*sqrt(1 + log(coth(x))^2)]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*hyperbolic*functions=#


    @test_int [(coth(sqrt(x))*csch(sqrt(x)))/sqrt(x), x, 3, -2*csch(sqrt(x))]
    @test_int [(cosh(sqrt(x))*sinh(sqrt(x)))/sqrt(x), x, 1, sinh(sqrt(x))^2]
    @test_int [(sech(sqrt(x))*tanh(sqrt(x)))/sqrt(x), x, 3, -2*sech(sqrt(x))]


    @test_int [sinh(x)^2/(a + b*sinh(2*x)), x, 9, atanh((b - a*tanh(x))/sqrt(a^2 + b^2))/(2*sqrt(a^2 + b^2)) + log(a + b*sinh(2*x))/(4*b), atanh((b - a*tanh(x))/sqrt(a^2 + b^2))/(2*sqrt(a^2 + b^2)) + log(cosh(x))/(2*b) + log(a + 2*b*tanh(x) - a*tanh(x)^2)/(4*b)]
    @test_int [cosh(x)^2/(a + b*sinh(2*x)), x, 8, -(atanh((b - a*tanh(x))/sqrt(a^2 + b^2))/(2*sqrt(a^2 + b^2))) + log(a + b*sinh(2*x))/(4*b), -(atanh((b - a*tanh(x))/sqrt(a^2 + b^2))/(2*sqrt(a^2 + b^2))) + log(cosh(x))/(2*b) + log(a + 2*b*tanh(x) - a*tanh(x)^2)/(4*b)]

    @test_int [sinh(x)^2/(a + b*cosh(2*x)), x, 4, x/(2*b) - (sqrt(a + b)*atanh((sqrt(a - b)*tanh(x))/sqrt(a + b)))/(2*sqrt(a - b)*b)]
    @test_int [cosh(x)^2/(a + b*cosh(2*x)), x, 4, x/(2*b) - (sqrt(a - b)*atanh((sqrt(a - b)*tanh(x))/sqrt(a + b)))/(2*b*sqrt(a + b))]


    @test_int [tanh(c + d*x)/sqrt(a*sinh(c+d*x)^2), x, 3, atan(sqrt(a*sinh(c + d*x)^2)/sqrt(a))/(sqrt(a)*d)]
    @test_int [coth(c + d*x)/sqrt(a*cosh(c+d*x)^2), x, 3, -(atanh(sqrt(a*cosh(c + d*x)^2)/sqrt(a))/(sqrt(a)*d))]


    @test_int [x*cosh(2*x)*sech(x), x, 12, -2*x*atan(ℯ^x) - 2*cosh(x) + im*PolyLog(2, (-im)*ℯ^x) - im*PolyLog(2, im*ℯ^x) + 2*x*sinh(x)]
    @test_int [x*cosh(2*x)*sech(x)^2, x, 5, x^2+log(cosh(x))-x*tanh(x)]
    @test_int [x*cosh(2*x)*sech(x)^3, x, 19, 3*x*atan(ℯ^x) - (3/2)*im*PolyLog(2, (-im)*ℯ^x) + (3/2)*im*PolyLog(2, im*ℯ^x) - sech(x)/2 - (1/2)*x*sech(x)*tanh(x)]


    @test_int [sqrt(csch(x))*(x*cosh(x) - 4*sech(x)*tanh(x)), x, 8, (2*x)/sqrt(csch(x)) - (4*sech(x))/csch(x)^(3/2)]


    @test_int [sinh(x)*(cosh(x) + sinh(x)), x, 6, -(x/2) + (1/2)*cosh(x)*sinh(x) + sinh(x)^2/2]

    @test_int [(1 + sinh(x)^2)/(1 + cosh(x) + sinh(x)), x, 5, (1/4)*log(1 - tanh(x/2)) + (3/4)*log(1 + tanh(x/2)) + 1/(2*(1 - tanh(x/2))) - 1/(2*(1 + tanh(x/2))^2) + 1/(1 + tanh(x/2))]
    @test_int [x^5*cosh(a + b*x^3)^7*sinh(a + b*x^3), x, 7, -((35*x^3)/(3072*b)) + (x^3*cosh(a + b*x^3)^8)/(24*b) - (35*cosh(a + b*x^3)*sinh(a + b*x^3))/(3072*b^2) - (35*cosh(a + b*x^3)^3*sinh(a + b*x^3))/(4608*b^2) - (7*cosh(a + b*x^3)^5*sinh(a + b*x^3))/(1152*b^2) - (cosh(a + b*x^3)^7*sinh(a + b*x^3))/(192*b^2)]

    #= [csch(x^5)/x, x, Unintegrable(csch(x^5)/x, x)] =#

    @test_int [cosh(x)^2/(1 + ℯ^x), x, 4, -(1/8)/ℯ^(2*x) + 1/(ℯ^x*4) + ℯ^x/4 + (3*x)/4 - log(1 + ℯ^x)]


    @test_int [sqrt(1 + sech(x))*sech(x)*tanh(x)^3, x, 6, (-(4/5))*(1 + sech(x))^(5/2) + (2/7)*(1 + sech(x))^(7/2)]
    @test_int [sqrt(1 + csch(x))*csch(x)*coth(x)^3, x, 5, (-(4/3))*(1 + csch(x))^(3/2) + (4/5)*(1 + csch(x))^(5/2) - (2/7)*(1 + csch(x))^(7/2)]


    @test_int [cosh(x)^x*(log(cosh(x)) + x*tanh(x)), x, 3, cosh(x)^x]


    #= Nonidempotent*expansion*results*in*infinite*recursion: =# 
    #= [(x*cosh(x) - sinh(x))/(x - sinh(x))^2, x, -7, x/(x - sinh(x))] =#
    #= [(-cosh(x) + x*sinh(x))/(x - cosh(x))^2, x, 0, x/(x - cosh(x))] =#


    @test_int [F^(a + b*x)*(cosh(c + d*x) + sinh(c + d*x))^n, x, 4, ((ℯ^(c + d*x))^n*F^(a + b*x))/(d*n + b*log(F))]
    @test_int [F^(a + b*x)*(cosh(c + d*x) - sinh(c + d*x))^n, x, 4, -(((ℯ^(-c - d*x))^n*F^(a + b*x))/(d*n - b*log(F)))]


    #= [(cosh(a + b*x)^5 - sinh(a + b*x)^5)/(cosh(a + b*x)^5 + sinh(a + b*x)^5), x, 5, 0] =#
    @test_int [(cosh(a + b*x)^4 - sinh(a + b*x)^4)/(cosh(a + b*x)^4 + sinh(a + b*x)^4), x, 6, -(atan(1 - sqrt(2)*tanh(a + b*x))/(sqrt(2)*b)) + atan(1 + sqrt(2)*tanh(a + b*x))/(sqrt(2)*b)]
    @test_int [(cosh(a + b*x)^3 - sinh(a + b*x)^3)/(cosh(a + b*x)^3 + sinh(a + b*x)^3), x, 5, -((4*atan((1 - 2*tanh(a + b*x))/sqrt(3)))/(3*sqrt(3)*b)) - 1/(3*b*(1 + tanh(a + b*x)))]
    @test_int [(cosh(a + b*x)^2 - sinh(a + b*x)^2)/(cosh(a + b*x)^2 + sinh(a + b*x)^2), x, 3, atan(tanh(a + b*x))/b]
    @test_int [(cosh(a + b*x)^1 - sinh(a + b*x)^1)/(cosh(a + b*x)^1 + sinh(a + b*x)^1), x, 1, -(1/(2*b*(cosh(a + b*x) + sinh(a + b*x))^2))]
    @test_int [(sech(a + b*x)^1 - csch(a + b*x)^1)/(sech(a + b*x)^1 + csch(a + b*x)^1), x, 2, 1/(b*(1 + tanh(a + b*x)))]
    @test_int [(sech(a + b*x)^2 - csch(a + b*x)^2)/(sech(a + b*x)^2 + csch(a + b*x)^2), x, 2, -(atan(tanh(a + b*x))/b)]
    @test_int [(sech(a + b*x)^3 - csch(a + b*x)^3)/(sech(a + b*x)^3 + csch(a + b*x)^3), x, 5, (4*atan((1 - 2*tanh(a + b*x))/sqrt(3)))/(3*sqrt(3)*b) + 1/(3*b*(1 + tanh(a + b*x)))]
    @test_int [(sech(a + b*x)^4 - csch(a + b*x)^4)/(sech(a + b*x)^4 + csch(a + b*x)^4), x, 6, atan(1 - sqrt(2)*tanh(a + b*x))/(sqrt(2)*b) - atan(1 + sqrt(2)*tanh(a + b*x))/(sqrt(2)*b)]
    end
