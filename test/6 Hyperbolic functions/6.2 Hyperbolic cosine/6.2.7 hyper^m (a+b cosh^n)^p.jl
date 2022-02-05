@testset "6.2.7 hyper^m (a+b cosh^n)^p" begin
    @variables a, b, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*cosh(c+d*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*cosh(c+d*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*cosh(c+d*x)^2)^p*when*a+b=0=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sinh(x)^4/(a - a*cosh(x)^2), x, 3, x/(2*a) - (cosh(x)*sinh(x))/(2*a)]
    @test_int [sinh(x)^3/(a - a*cosh(x)^2), x, 2, -(cosh(x)/a)]
    @test_int [sinh(x)^2/(a - a*cosh(x)^2), x, 2, -x/a]
    @test_int [csch(x)^2/(a - a*cosh(x)^2), x, 3, -(coth(x)/a) + coth(x)^3/(3*a)]
    @test_int [csch(x)^4/(a - a*cosh(x)^2), x, 3, coth(x)/a - (2*coth(x)^3)/(3*a) + coth(x)^5/(5*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*cosh(c+d*x)^2)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sinh(x)^7/(a + b*cosh(x)^2), x, 4, -(((a + b)^3*atan((sqrt(b)*cosh(x))/sqrt(a)))/(sqrt(a)*b^(7/2))) + ((a^2 + 3*a*b + 3*b^2)*cosh(x))/b^3 - ((a + 3*b)*cosh(x)^3)/(3*b^2) + cosh(x)^5/(5*b)]
    @test_int [sinh(x)^5/(a + b*cosh(x)^2), x, 4, ((a + b)^2*atan((sqrt(b)*cosh(x))/sqrt(a)))/(sqrt(a)*b^(5/2)) - ((a + 2*b)*cosh(x))/b^2 + cosh(x)^3/(3*b)]
    @test_int [sinh(x)^3/(a + b*cosh(x)^2), x, 3, -(((a + b)*atan((sqrt(b)*cosh(x))/sqrt(a)))/(sqrt(a)*b^(3/2))) + cosh(x)/b]
    @test_int [sinh(x)^1/(a + b*cosh(x)^2), x, 2, atan((sqrt(b)*cosh(x))/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [csch(x)^1/(a + b*cosh(x)^2), x, 4, -((sqrt(b)*atan((sqrt(b)*cosh(x))/sqrt(a)))/(sqrt(a)*(a + b))) - atanh(cosh(x))/(a + b)]
    @test_int [csch(x)^3/(a + b*cosh(x)^2), x, 5, (b^(3/2)*atan((sqrt(b)*cosh(x))/sqrt(a)))/(sqrt(a)*(a + b)^2) + ((a + 3*b)*atanh(cosh(x)))/(2*(a + b)^2) - (coth(x)*csch(x))/(2*(a + b))]
    @test_int [csch(x)^5/(a + b*cosh(x)^2), x, 6, -((b^(5/2)*atan((sqrt(b)*cosh(x))/sqrt(a)))/(sqrt(a)*(a + b)^3)) - ((3*a^2 + 10*a*b + 15*b^2)*atanh(cosh(x)))/(8*(a + b)^3) + ((3*a + 7*b)*coth(x)*csch(x))/(8*(a + b)^2) - (coth(x)*csch(x)^3)/(4*(a + b))]

    @test_int [sinh(x)^6/(a + b*cosh(x)^2), x, 6, ((8*a^2 + 20*a*b + 15*b^2)*x)/(8*b^3) - ((a + b)^(5/2)*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(sqrt(a)*b^3) - ((4*a + 7*b)*cosh(x)*sinh(x))/(8*b^2) + (cosh(x)*sinh(x)^3)/(4*b)]
    @test_int [sinh(x)^4/(a + b*cosh(x)^2), x, 5, -(((2*a + 3*b)*x)/(2*b^2)) + ((a + b)^(3/2)*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(sqrt(a)*b^2) + (cosh(x)*sinh(x))/(2*b)]
    @test_int [sinh(x)^2/(a + b*cosh(x)^2), x, 4, x/b - (sqrt(a + b)*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(sqrt(a)*b)]
    @test_int [sinh(x)^0/(a + b*cosh(x)^2), x, 2, atanh((sqrt(a)*tanh(x))/sqrt(a + b))/(sqrt(a)*sqrt(a + b))]
    @test_int [csch(x)^4/(a + b*cosh(x)^2), x, 4, (b^2*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(sqrt(a)*(a + b)^(5/2)) + ((a + 2*b)*coth(x))/(a + b)^2 - coth(x)^3/(3*(a + b))]
    @test_int [csch(x)^6/(a + b*cosh(x)^2), x, 4, -((b^3*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(sqrt(a)*(a + b)^(7/2))) - ((a^2 + 3*a*b + 3*b^2)*coth(x))/(a + b)^3 + ((2*a + 3*b)*coth(x)^3)/(3*(a + b)^2) - coth(x)^5/(5*(a + b))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*cosh(c+d*x)^3)^p=#


    @test_int [sinh(x)/(4 - 3*cosh(x)^3), x, 7, atan((1 + 6^(1/3)*cosh(x))/sqrt(3))/(2*2^(1/3)*3^(5/6)) - log(2^(2/3) - 3^(1/3)*cosh(x))/(6*6^(1/3)) + log(2*2^(1/3) + 2^(2/3)*3^(1/3)*cosh(x) + 3^(2/3)*cosh(x)^2)/(12*6^(1/3))]


    #= ::Section:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*cosh(c+d*x)^4)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*cosh(c+d*x)^n)^p=#


    #= ::Title:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x)^2)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cosh(x)^7/(a + b*cosh(x)^2), x, 4, -((a^3*atan((sqrt(b)*sinh(x))/sqrt(a + b)))/(b^(7/2)*sqrt(a + b))) + ((a^2 - a*b + b^2)*sinh(x))/b^3 - ((a - 2*b)*sinh(x)^3)/(3*b^2) + sinh(x)^5/(5*b)]
    @test_int [cosh(x)^6/(a + b*cosh(x)^2), x, 6, ((8*a^2 - 4*a*b + 3*b^2)*x)/(8*b^3) - (a^(5/2)*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(b^3*sqrt(a + b)) - ((4*a - 3*b)*cosh(x)*sinh(x))/(8*b^2) + (cosh(x)^3*sinh(x))/(4*b)]
    @test_int [cosh(x)^5/(a + b*cosh(x)^2), x, 4, (a^2*atan((sqrt(b)*sinh(x))/sqrt(a + b)))/(b^(5/2)*sqrt(a + b)) - ((a - b)*sinh(x))/b^2 + sinh(x)^3/(3*b)]
    @test_int [cosh(x)^4/(a + b*cosh(x)^2), x, 5, -(((2*a - b)*x)/(2*b^2)) + (a^(3/2)*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(b^2*sqrt(a + b)) + (cosh(x)*sinh(x))/(2*b)]
    @test_int [cosh(x)^3/(a + b*cosh(x)^2), x, 3, -((a*atan((sqrt(b)*sinh(x))/sqrt(a + b)))/(b^(3/2)*sqrt(a + b))) + sinh(x)/b]
    @test_int [cosh(x)^2/(a + b*cosh(x)^2), x, 3, x/b - (sqrt(a)*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(b*sqrt(a + b))]
    @test_int [cosh(x)^1/(a + b*cosh(x)^2), x, 2, atan((sqrt(b)*sinh(x))/sqrt(a + b))/(sqrt(b)*sqrt(a + b))]
    @test_int [cosh(x)^0/(a + b*cosh(x)^2), x, 2, atanh((sqrt(a)*tanh(x))/sqrt(a + b))/(sqrt(a)*sqrt(a + b))]
    @test_int [sech(x)^1/(a + b*cosh(x)^2), x, 4, atan(sinh(x))/a - (sqrt(b)*atan((sqrt(b)*sinh(x))/sqrt(a + b)))/(a*sqrt(a + b))]
    @test_int [sech(x)^2/(a + b*cosh(x)^2), x, 3, -((b*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(a^(3/2)*sqrt(a + b))) + tanh(x)/a]
    @test_int [sech(x)^3/(a + b*cosh(x)^2), x, 5, ((a - 2*b)*atan(sinh(x)))/(2*a^2) + (b^(3/2)*atan((sqrt(b)*sinh(x))/sqrt(a + b)))/(a^2*sqrt(a + b)) + (sech(x)*tanh(x))/(2*a)]
    @test_int [sech(x)^4/(a + b*cosh(x)^2), x, 4, (b^2*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(a^(5/2)*sqrt(a + b)) + ((a - b)*tanh(x))/a^2 - tanh(x)^3/(3*a)]
    @test_int [sech(x)^5/(a + b*cosh(x)^2), x, 6, ((3*a^2 - 4*a*b + 8*b^2)*atan(sinh(x)))/(8*a^3) - (b^(5/2)*atan((sqrt(b)*sinh(x))/sqrt(a + b)))/(a^3*sqrt(a + b)) + ((3*a - 4*b)*sech(x)*tanh(x))/(8*a^2) + (sech(x)^3*tanh(x))/(4*a)]


    @test_int [1/(a + b*cosh(x)^2)^2, x, 4, ((2*a + b)*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(2*a^(3/2)*(a + b)^(3/2)) - (b*cosh(x)*sinh(x))/(2*a*(a + b)*(a + b*cosh(x)^2))]


    @test_int [1/(a + b*cosh(x)^2)^3, x, 5, ((8*a^2 + 8*a*b + 3*b^2)*atanh((sqrt(a)*tanh(x))/sqrt(a + b)))/(8*a^(5/2)*(a + b)^(5/2)) - (b*cosh(x)*sinh(x))/(4*a*(a + b)*(a + b*cosh(x)^2)^2) - (3*b*(2*a + b)*cosh(x)*sinh(x))/(8*a^2*(a + b)^2*(a + b*cosh(x)^2))]


    @test_int [1/(1 + cosh(x)^2), x, 2, atanh(tanh(x)/sqrt(2))/sqrt(2)]
    @test_int [1/(1 + cosh(x)^2)^2, x, 4, (3*atanh(tanh(x)/sqrt(2)))/(4*sqrt(2)) - (cosh(x)*sinh(x))/(4*(1 + cosh(x)^2))]
    @test_int [1/(1 + cosh(x)^2)^3, x, 5, (19*atanh(tanh(x)/sqrt(2)))/(32*sqrt(2)) - (cosh(x)*sinh(x))/(8*(1 + cosh(x)^2)^2) - (9*cosh(x)*sinh(x))/(32*(1 + cosh(x)^2))]

    @test_int [1/(1 - cosh(x)^2), x, 3, coth(x)]
    @test_int [1/(1 - cosh(x)^2)^2, x, 3, coth(x) - coth(x)^3/3]
    @test_int [1/(1 - cosh(x)^2)^3, x, 3, coth(x) - (2*coth(x)^3)/3 + coth(x)^5/5]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(a + b*cosh(x)^2), x, 2, -((im*sqrt(a + b*cosh(x)^2)*EllipticE(pi/2 + im*x, -(b/a)))/sqrt(1 + (b*cosh(x)^2)/a))]

    @test_int [sqrt(1 + cosh(x)^2), x, 1, (-im)*EllipticE(pi/2 + im*x, -1)]
    @test_int [sqrt(1 - cosh(x)^2), x, 3, coth(x)*sqrt(-sinh(x)^2)]
    @test_int [sqrt(-1 + cosh(x)^2), x, 3, coth(x)*sqrt(sinh(x)^2)]
    @test_int [sqrt(-1 - cosh(x)^2), x, 2, -((im*sqrt(-1 - cosh(x)^2)*EllipticE(pi/2 + im*x, -1))/sqrt(1 + cosh(x)^2))]


    @test_int [(a + b*cosh(x)^2)^(3/2), x, 6, -((2*im*(2*a + b)*sqrt(a + b*cosh(x)^2)*EllipticE(pi/2 + im*x, -(b/a)))/(3*sqrt(1 + (b*cosh(x)^2)/a))) + (im*a*(a + b)*sqrt(1 + (b*cosh(x)^2)/a)*EllipticF(pi/2 + im*x, -(b/a)))/(3*sqrt(a + b*cosh(x)^2)) + (1/3)*b*cosh(x)*sqrt(a + b*cosh(x)^2)*sinh(x)]

    @test_int [(1 + cosh(x)^2)^(3/2), x, 4, -2*im*EllipticE(pi/2 + im*x, -1) + (2/3)*im*EllipticF(pi/2 + im*x, -1) + (1/3)*cosh(x)*sqrt(1 + cosh(x)^2)*sinh(x)]
    @test_int [(1 - cosh(x)^2)^(3/2), x, 4, (2/3)*coth(x)*sqrt(-sinh(x)^2) + (1/3)*coth(x)*(-sinh(x)^2)^(3/2)]
    @test_int [(-1 + cosh(x)^2)^(3/2), x, 4, (-(2/3))*coth(x)*sqrt(sinh(x)^2) + (1/3)*coth(x)*(sinh(x)^2)^(3/2)]
    @test_int [(-1 - cosh(x)^2)^(3/2), x, 6, (2*im*sqrt(-1 - cosh(x)^2)*EllipticE(pi/2 + im*x, -1))/sqrt(1 + cosh(x)^2) + (2*im*sqrt(1 + cosh(x)^2)*EllipticF(pi/2 + im*x, -1))/(3*sqrt(-1 - cosh(x)^2)) - (1/3)*cosh(x)*sqrt(-1 - cosh(x)^2)*sinh(x)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/sqrt(a + b*cosh(x)^2), x, 2, -((im*sqrt(1 + (b*cosh(x)^2)/a)*EllipticF(pi/2 + im*x, -(b/a)))/sqrt(a + b*cosh(x)^2))]

    @test_int [1/sqrt(1 + cosh(x)^2), x, 1, (-im)*EllipticF(pi/2 + im*x, -1)]
    @test_int [1/sqrt(1 - cosh(x)^2), x, 3, -((atanh(cosh(x))*sinh(x))/sqrt(-sinh(x)^2))]
    @test_int [1/sqrt(-1 + cosh(x)^2), x, 3, -((atanh(cosh(x))*sinh(x))/sqrt(sinh(x)^2))]
    @test_int [1/sqrt(-1 - cosh(x)^2), x, 2, -((im*sqrt(1 + cosh(x)^2)*EllipticF(pi/2 + im*x, -1))/sqrt(-1 - cosh(x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x)^3)^p=#


    @test_int [1/(a + b*cosh(x)^3), x, 8, (2*atanh((sqrt(a^(1/3) - b^(1/3))*tanh(x/2))/sqrt(a^(1/3) + b^(1/3))))/(3*a^(2/3)*sqrt(a^(1/3) - b^(1/3))*sqrt(a^(1/3) + b^(1/3))) + (2*atanh((sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))*tanh(x/2))/sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3))))/(3*a^(2/3)*sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3))*sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))) + (2*atanh((sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3))*tanh(x/2))/sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3))))/(3*a^(2/3)*sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3))*sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3)))]
    @test_int [1/(a - b*cosh(x)^3), x, 8, (2*atanh((sqrt(a^(1/3) + b^(1/3))*tanh(x/2))/sqrt(a^(1/3) - b^(1/3))))/(3*a^(2/3)*sqrt(a^(1/3) - b^(1/3))*sqrt(a^(1/3) + b^(1/3))) + (2*atanh((sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3))*tanh(x/2))/sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))))/(3*a^(2/3)*sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3))*sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))) + (2*atanh((sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3))*tanh(x/2))/sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3))))/(3*a^(2/3)*sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3))*sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3)))]
    @test_int [1/(1 + cosh(x)^3), x, 7, -((2*(-(1/3))^(1/4)*atan((-1)^(3/4)*3^(1/4)*tanh(x/2)))/(3*(1 - (-1)^(1/3)))) - (2*(-(1/3))^(1/4)*atanh((-1)^(3/4)*3^(1/4)*tanh(x/2)))/(3*(1 + (-1)^(2/3))) + sinh(x)/(3*(1 + cosh(x)))]
    @test_int [1/(1 - cosh(x)^3), x, 7, -((2*(-1)^(1/4)*atan(((-1)^(3/4)*tanh(x/2))/3^(1/4)))/(3^(3/4)*(1 - (-1)^(2/3)))) - (2*(-1)^(1/4)*atanh(((-1)^(3/4)*tanh(x/2))/3^(1/4)))/(3^(3/4)*(1 + (-1)^(1/3))) - sinh(x)/(3*(1 - cosh(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x)^4)^p=#


    @test_int [1/(a + b*cosh(x)^4), x, 10, (sqrt(sqrt(a) - sqrt(a + b))*atanh((sqrt(sqrt(a) + sqrt(a + b)) - sqrt(2)*a^(1/4)*tanh(x))/sqrt(sqrt(a) - sqrt(a + b))))/(2*sqrt(2)*a^(3/4)*sqrt(a + b)) - (sqrt(sqrt(a) - sqrt(a + b))*atanh((sqrt(sqrt(a) + sqrt(a + b)) + sqrt(2)*a^(1/4)*tanh(x))/sqrt(sqrt(a) - sqrt(a + b))))/(2*sqrt(2)*a^(3/4)*sqrt(a + b)) - (sqrt(sqrt(a) + sqrt(a + b))*log(sqrt(a + b) - sqrt(2)*a^(1/4)*sqrt(sqrt(a) + sqrt(a + b))*tanh(x) + sqrt(a)*tanh(x)^2))/(4*sqrt(2)*a^(3/4)*sqrt(a + b)) + (sqrt(sqrt(a) + sqrt(a + b))*log(sqrt(a + b) + sqrt(2)*a^(1/4)*sqrt(sqrt(a) + sqrt(a + b))*tanh(x) + sqrt(a)*tanh(x)^2))/(4*sqrt(2)*a^(3/4)*sqrt(a + b)), ((sqrt(a) - sqrt(a + b))*atan((a^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b)) - sqrt(2)*(a + b)^(3/4)*coth(x))/(a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b)))))/(2*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b))) - ((sqrt(a) - sqrt(a + b))*atan((a^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b)) + sqrt(2)*(a + b)^(3/4)*coth(x))/(a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b)))))/(2*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b))) - ((sqrt(a) + sqrt(a + b))*log(sqrt(a)*(a + b)^(1/4) - sqrt(2)*a^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b))*coth(x) + (a + b)^(3/4)*coth(x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b))) + ((sqrt(a) + sqrt(a + b))*log(sqrt(a)*(a + b)^(1/4) + sqrt(2)*a^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b))*coth(x) + (a + b)^(3/4)*coth(x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b)))]


    @test_int [1/(a - b*cosh(x)^4), x, 4, atanh((a^(1/4)*tanh(x))/sqrt(sqrt(a) - sqrt(b)))/(2*a^(3/4)*sqrt(sqrt(a) - sqrt(b))) + atanh((a^(1/4)*tanh(x))/sqrt(sqrt(a) + sqrt(b)))/(2*a^(3/4)*sqrt(sqrt(a) + sqrt(b)))]


    @test_int [1/(1 + cosh(x)^4), x, 10, -(atan((sqrt(1 + sqrt(2)) - 2*coth(x))/sqrt(-1 + sqrt(2)))/(4*sqrt(1 + sqrt(2)))) + atan((sqrt(1 + sqrt(2)) + 2*coth(x))/sqrt(-1 + sqrt(2)))/(4*sqrt(1 + sqrt(2))) - (1/8)*sqrt(1 + sqrt(2))*log(sqrt(2) - 2*sqrt(1 + sqrt(2))*coth(x) + 2*coth(x)^2) + (1/8)*sqrt(1 + sqrt(2))*log(1 + sqrt(2*(1 + sqrt(2)))*coth(x) + sqrt(2)*coth(x)^2)]


    @test_int [1/(1 - cosh(x)^4), x, 3, atanh(tanh(x)/sqrt(2))/(2*sqrt(2)) + coth(x)/2]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*cosh(c+d*x)^n)^p=#


    @test_int [1/(a + b*cosh(x)^5), x, 12, (2*atanh((sqrt(a^(1/5) - b^(1/5))*tanh(x/2))/sqrt(a^(1/5) + b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - b^(1/5))*sqrt(a^(1/5) + b^(1/5))) + (2*atanh((sqrt(a^(1/5) + (-1)^(1/5)*b^(1/5))*tanh(x/2))/sqrt(a^(1/5) - (-1)^(1/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(1/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(1/5)*b^(1/5))) + (2*atanh((sqrt(a^(1/5) - (-1)^(2/5)*b^(1/5))*tanh(x/2))/sqrt(a^(1/5) + (-1)^(2/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(2/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(2/5)*b^(1/5))) + (2*atanh((sqrt(a^(1/5) + (-1)^(3/5)*b^(1/5))*tanh(x/2))/sqrt(a^(1/5) - (-1)^(3/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(3/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(3/5)*b^(1/5))) + (2*atanh((sqrt(a^(1/5) - (-1)^(4/5)*b^(1/5))*tanh(x/2))/sqrt(a^(1/5) + (-1)^(4/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(4/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(4/5)*b^(1/5)))]
    @test_int [1/(a + b*cosh(x)^6), x, 7, atanh((a^(1/6)*tanh(x))/sqrt(a^(1/3) + b^(1/3)))/(3*a^(5/6)*sqrt(a^(1/3) + b^(1/3))) + atanh((a^(1/6)*tanh(x))/sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3)))/(3*a^(5/6)*sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3))) + atanh((a^(1/6)*tanh(x))/sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3)))/(3*a^(5/6)*sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3)))]
    @test_int [1/(a + b*cosh(x)^8), x, 9, -(atanh(((-a)^(1/8)*tanh(x))/sqrt((-a)^(1/4) - b^(1/4)))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) - b^(1/4)))) - atanh(((-a)^(1/8)*tanh(x))/sqrt((-a)^(1/4) - im*b^(1/4)))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) - im*b^(1/4))) - atanh(((-a)^(1/8)*tanh(x))/sqrt((-a)^(1/4) + im*b^(1/4)))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) + im*b^(1/4))) - atanh(((-a)^(1/8)*tanh(x))/sqrt((-a)^(1/4) + b^(1/4)))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) + b^(1/4)))]

    @test_int [1/(a - b*cosh(x)^5), x, 12, (2*atanh((sqrt(a^(1/5) + b^(1/5))*tanh(x/2))/sqrt(a^(1/5) - b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - b^(1/5))*sqrt(a^(1/5) + b^(1/5))) + (2*atanh((sqrt(a^(1/5) - (-1)^(1/5)*b^(1/5))*tanh(x/2))/sqrt(a^(1/5) + (-1)^(1/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(1/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(1/5)*b^(1/5))) + (2*atanh((sqrt(a^(1/5) + (-1)^(2/5)*b^(1/5))*tanh(x/2))/sqrt(a^(1/5) - (-1)^(2/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(2/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(2/5)*b^(1/5))) + (2*atanh((sqrt(a^(1/5) - (-1)^(3/5)*b^(1/5))*tanh(x/2))/sqrt(a^(1/5) + (-1)^(3/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(3/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(3/5)*b^(1/5))) + (2*atanh((sqrt(a^(1/5) + (-1)^(4/5)*b^(1/5))*tanh(x/2))/sqrt(a^(1/5) - (-1)^(4/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(4/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(4/5)*b^(1/5)))]
    @test_int [1/(a - b*cosh(x)^6), x, 7, atanh((a^(1/6)*tanh(x))/sqrt(a^(1/3) - b^(1/3)))/(3*a^(5/6)*sqrt(a^(1/3) - b^(1/3))) + atanh((a^(1/6)*tanh(x))/sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3)))/(3*a^(5/6)*sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))) + atanh((a^(1/6)*tanh(x))/sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3)))/(3*a^(5/6)*sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3)))]
    @test_int [1/(a - b*cosh(x)^8), x, 9, atanh((a^(1/8)*tanh(x))/sqrt(a^(1/4) - b^(1/4)))/(4*a^(7/8)*sqrt(a^(1/4) - b^(1/4))) + atanh((a^(1/8)*tanh(x))/sqrt(a^(1/4) - im*b^(1/4)))/(4*a^(7/8)*sqrt(a^(1/4) - im*b^(1/4))) + atanh((a^(1/8)*tanh(x))/sqrt(a^(1/4) + im*b^(1/4)))/(4*a^(7/8)*sqrt(a^(1/4) + im*b^(1/4))) + atanh((a^(1/8)*tanh(x))/sqrt(a^(1/4) + b^(1/4)))/(4*a^(7/8)*sqrt(a^(1/4) + b^(1/4)))]

    @test_int [1/(1 + cosh(x)^5), x, 11, -((2*atan(tanh(x/2)/sqrt(-((1 - (-1)^(1/5))/(1 + (-1)^(1/5))))))/(5*sqrt(-1 + (-1)^(2/5)))) - (2*sqrt(-((1 + (-1)^(3/5))/(1 - (-1)^(3/5))))*atan(sqrt(-((1 + (-1)^(3/5))/(1 - (-1)^(3/5))))*tanh(x/2)))/(5*(1 + (-1)^(3/5))) + (2*atanh(sqrt((1 - (-1)^(2/5))/(1 + (-1)^(2/5)))*tanh(x/2)))/(5*sqrt(1 - (-1)^(4/5))) + (2*atanh(sqrt((1 - (-1)^(4/5))/(1 + (-1)^(4/5)))*tanh(x/2)))/(5*sqrt(1 + (-1)^(3/5))) + sinh(x)/(5*(1 + cosh(x)))]
    @test_int [1/(1 + cosh(x)^6), x, 7, atanh(tanh(x)/sqrt(2))/(3*sqrt(2)) + atanh(tanh(x)/sqrt(1 - (-1)^(1/3)))/(3*sqrt(1 - (-1)^(1/3))) + atanh(tanh(x)/sqrt(1 + (-1)^(2/3)))/(3*sqrt(1 + (-1)^(2/3)))]
    @test_int [1/(1 + cosh(x)^8), x, 9, atanh(tanh(x)/sqrt(1 - (-1)^(1/4)))/(4*sqrt(1 - (-1)^(1/4))) + atanh(tanh(x)/sqrt(1 + (-1)^(1/4)))/(4*sqrt(1 + (-1)^(1/4))) + atanh(tanh(x)/sqrt(1 - (-1)^(3/4)))/(4*sqrt(1 - (-1)^(3/4))) + atanh(tanh(x)/sqrt(1 + (-1)^(3/4)))/(4*sqrt(1 + (-1)^(3/4)))]

    @test_int [1/(1 - cosh(x)^5), x, 11, -((2*atan(tanh(x/2)/sqrt(-((1 - (-1)^(2/5))/(1 + (-1)^(2/5))))))/(5*sqrt(-1 + (-1)^(4/5)))) + (2*atan(sqrt(-((1 + (-1)^(4/5))/(1 - (-1)^(4/5))))*tanh(x/2)))/(5*sqrt(-1 - (-1)^(3/5))) + (2*atanh(sqrt((1 - (-1)^(1/5))/(1 + (-1)^(1/5)))*tanh(x/2)))/(5*sqrt(1 - (-1)^(2/5))) + (2*atanh(sqrt((1 - (-1)^(3/5))/(1 + (-1)^(3/5)))*tanh(x/2)))/(5*sqrt(1 + (-1)^(1/5))) - sinh(x)/(5*(1 - cosh(x)))]
    @test_int [1/(1 - cosh(x)^6), x, 8, atanh(tanh(x)/sqrt(1 + (-1)^(1/3)))/(3*sqrt(1 + (-1)^(1/3))) + atanh(tanh(x)/sqrt(1 - (-1)^(2/3)))/(3*sqrt(1 - (-1)^(2/3))) + coth(x)/3]
    @test_int [1/(1 - cosh(x)^8), x, 10, atanh(tanh(x)/sqrt(1 - im))/(4*sqrt(1 - im)) + atanh(tanh(x)/sqrt(1 + im))/(4*sqrt(1 + im)) + atanh(tanh(x)/sqrt(2))/(4*sqrt(2)) + coth(x)/4]


    #= ::Title:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*cosh(c+d*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*cosh(c+d*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*cosh(c+d*x)^2)^p=#


    @test_int [tanh(x)/(1 + cosh(x)^2), x, 4, log(cosh(x)) - (1/2)*log(1 + cosh(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*cosh(c+d*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tanh(x)*sqrt(a + b*cosh(x)^2), x, 4, (-sqrt(a))*atanh(sqrt(a + b*cosh(x)^2)/sqrt(a)) + sqrt(a + b*cosh(x)^2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tanh(x)/sqrt(a + b*cosh(x)^2), x, 3, -(atanh(sqrt(a + b*cosh(x)^2)/sqrt(a))/sqrt(a))]
    @test_int [tanh(x)/sqrt(1 + cosh(x)^2), x, 3, -atanh(sqrt(1 + cosh(x)^2))]
    @test_int [tanh(x)/sqrt(1 - cosh(x)^2), x, 4, -atanh(sqrt(-sinh(x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*cosh(c+d*x)^3)^p=#


    @test_int [tanh(x)^3/(a + b*cosh(x)^3), x, 11, -((b^(2/3)*atan((a^(1/3) - 2*b^(1/3)*cosh(x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(5/3))) + log(cosh(x))/a + (b^(2/3)*log(a^(1/3) + b^(1/3)*cosh(x)))/(3*a^(5/3)) - (b^(2/3)*log(a^(2/3) - a^(1/3)*b^(1/3)*cosh(x) + b^(2/3)*cosh(x)^2))/(6*a^(5/3)) - log(a + b*cosh(x)^3)/(3*a) + sech(x)^2/(2*a)]


    @test_int [tanh(x)/sqrt(a + b*cosh(x)^3), x, 4, -((2*atanh(sqrt(a + b*cosh(x)^3)/sqrt(a)))/(3*sqrt(a)))]
    @test_int [tanh(x)*sqrt(a + b*cosh(x)^3), x, 5, (-(2/3))*sqrt(a)*atanh(sqrt(a + b*cosh(x)^3)/sqrt(a)) + (2/3)*sqrt(a + b*cosh(x)^3)]


    #= ::Section:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*cosh(c+d*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*cosh(c+d*x)^n)^p=#


    @test_int [tanh(x)/sqrt(a + b*cosh(x)^n), x, 4, -((2*atanh(sqrt(a + b*cosh(x)^n)/sqrt(a)))/(sqrt(a)*n))]


    @test_int [tanh(x)*sqrt(a + b*cosh(x)^n), x, 5, -((2*sqrt(a)*atanh(sqrt(a + b*cosh(x)^n)/sqrt(a)))/n) + (2*sqrt(a + b*cosh(x)^n))/n]
    end
