@testset "6.6.7 (d hyper)^m (a+b (c csch)^n)^p" begin
    @variables a, b, c, d, x

    #= ::Package:: =#

    #= ::Section:: =#
    #=Integrands*of*the*form*Hyper(c+d*x)^m*(a+b*csch(c+d*x)^2)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*csch(c+d*x)^2)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n=#


    @test_int [(a + b*csch(c + d*x)^2)^4, x, 4, a^4*x - ((2*a - b)*b*(2*a^2 - 2*a*b + b^2)*coth(c + d*x))/d - (b^2*(6*a^2 - 8*a*b + 3*b^2)*coth(c + d*x)^3)/(3*d) - ((4*a - 3*b)*b^3*coth(c + d*x)^5)/(5*d) - (b^4*coth(c + d*x)^7)/(7*d)]
    @test_int [(a + b*csch(c + d*x)^2)^3, x, 4, a^3*x - (b*(3*a^2 - 3*a*b + b^2)*coth(c + d*x))/d - ((3*a - 2*b)*b^2*coth(c + d*x)^3)/(3*d) - (b^3*coth(c + d*x)^5)/(5*d)]
    @test_int [(a + b*csch(c + d*x)^2)^2, x, 4, a^2*x - ((2*a - b)*b*coth(c + d*x))/d - (b^2*coth(c + d*x)^3)/(3*d)]
    @test_int [(a + b*csch(c + d*x)^2)^1, x, 3, a*x - (b*coth(c + d*x))/d]
    @test_int [1/(a + b*csch(c + d*x)^2)^1, x, 3, x/a - (sqrt(b)*atan((sqrt(a - b)*tanh(c + d*x))/sqrt(b)))/(a*sqrt(a - b)*d)]
    @test_int [1/(a + b*csch(c + d*x)^2)^2, x, 5, x/a^2 - ((3*a - 2*b)*sqrt(b)*atan((sqrt(a - b)*tanh(c + d*x))/sqrt(b)))/(2*a^2*(a - b)^(3/2)*d) + (b*coth(c + d*x))/(2*a*(a - b)*d*(a - b + b*coth(c + d*x)^2))]
    @test_int [1/(a + b*csch(c + d*x)^2)^3, x, 6, x/a^3 - (sqrt(b)*(15*a^2 - 20*a*b + 8*b^2)*atan((sqrt(a - b)*tanh(c + d*x))/sqrt(b)))/(8*a^3*(a - b)^(5/2)*d) + (b*coth(c + d*x))/(4*a*(a - b)*d*(a - b + b*coth(c + d*x)^2)^2) + ((7*a - 4*b)*b*coth(c + d*x))/(8*a^2*(a - b)^2*d*(a - b + b*coth(c + d*x)^2))]
    @test_int [1/(a + b*csch(c + d*x)^2)^4, x, 7, x/a^4 - (sqrt(b)*(35*a^3 - 70*a^2*b + 56*a*b^2 - 16*b^3)*atan((sqrt(a - b)*tanh(c + d*x))/sqrt(b)))/(16*a^4*(a - b)^(7/2)*d) + (b*coth(c + d*x))/(6*a*(a - b)*d*(a - b + b*coth(c + d*x)^2)^3) + ((11*a - 6*b)*b*coth(c + d*x))/(24*a^2*(a - b)^2*d*(a - b + b*coth(c + d*x)^2)^2) + (b*(19*a^2 - 22*a*b + 8*b^2)*coth(c + d*x))/(16*a^3*(a - b)^3*d*(a - b + b*coth(c + d*x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=n/2=#


    @test_int [(a + b*csch(c + d*x)^2)^(5/2), x, 8, (a^(5/2)*atanh((sqrt(a)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2)))/d - (sqrt(b)*(15*a^2 - 10*a*b + 3*b^2)*atanh((sqrt(b)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2)))/(8*d) - ((7*a - 3*b)*b*coth(c + d*x)*sqrt(a - b + b*coth(c + d*x)^2))/(8*d) - (b*coth(c + d*x)*(a - b + b*coth(c + d*x)^2)^(3/2))/(4*d)]
    @test_int [(a + b*csch(c + d*x)^2)^(3/2), x, 7, (a^(3/2)*atanh((sqrt(a)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2)))/d - ((3*a - b)*sqrt(b)*atanh((sqrt(b)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2)))/(2*d) - (b*coth(c + d*x)*sqrt(a - b + b*coth(c + d*x)^2))/(2*d)]
    @test_int [(a + b*csch(c + d*x)^2)^(1/2), x, 6, (sqrt(a)*atanh((sqrt(a)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2)))/d - (sqrt(b)*atanh((sqrt(b)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2)))/d]
    @test_int [1/(a + b*csch(c + d*x)^2)^(1/2), x, 3, atanh((sqrt(a)*coth(c + d*x))/sqrt(a + b*csch(c + d*x)^2))/(sqrt(a)*d), atanh((sqrt(a)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2))/(sqrt(a)*d)]
    @test_int [1/(a + b*csch(c + d*x)^2)^(3/2), x, 4, atanh((sqrt(a)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2))/(a^(3/2)*d) + (b*coth(c + d*x))/(a*(a - b)*d*sqrt(a - b + b*coth(c + d*x)^2))]
    @test_int [1/(a + b*csch(c + d*x)^2)^(5/2), x, 6, atanh((sqrt(a)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2))/(a^(5/2)*d) + (b*coth(c + d*x))/(3*a*(a - b)*d*(a - b + b*coth(c + d*x)^2)^(3/2)) + ((5*a - 3*b)*b*coth(c + d*x))/(3*a^2*(a - b)^2*d*sqrt(a - b + b*coth(c + d*x)^2))]
    @test_int [1/(a + b*csch(c + d*x)^2)^(7/2), x, 7, atanh((sqrt(a)*coth(c + d*x))/sqrt(a - b + b*coth(c + d*x)^2))/(a^(7/2)*d) + (b*coth(c + d*x))/(5*a*(a - b)*d*(a - b + b*coth(c + d*x)^2)^(5/2)) + ((9*a - 5*b)*b*coth(c + d*x))/(15*a^2*(a - b)^2*d*(a - b + b*coth(c + d*x)^2)^(3/2)) + (b*(33*a^2 - 40*a*b + 15*b^2)*coth(c + d*x))/(15*a^3*(a - b)^3*d*sqrt(a - b + b*coth(c + d*x)^2))]


    @test_int [(1 + csch(x)^2)^(3/2), x, 4, (-(1/2))*(coth(x)^2)^(3/2)*tanh(x) + sqrt(coth(x)^2)*log(sinh(x))*tanh(x)]
    @test_int [sqrt(1 + csch(x)^2), x, 3, sqrt(coth(x)^2)*log(sinh(x))*tanh(x)]
    @test_int [1/sqrt(1 + csch(x)^2), x, 3, (coth(x)*log(cosh(x)))/sqrt(coth(x)^2)]


    @test_int [(1 - csch(x)^2)^(3/2), x, 6, 2*asin(coth(x)/sqrt(2)) + atanh(coth(x)/sqrt(2 - coth(x)^2)) + (1/2)*coth(x)*sqrt(2 - coth(x)^2)]
    @test_int [sqrt(1 - csch(x)^2), x, 5, asin(coth(x)/sqrt(2)) + atanh(coth(x)/sqrt(2 - coth(x)^2))]
    @test_int [1/sqrt(1 - csch(x)^2), x, 3, atanh(coth(x)/sqrt(2 - coth(x)^2))]


    @test_int [(-1 + csch(x)^2)^(3/2), x, 7, atan(coth(x)/sqrt(-2 + coth(x)^2)) + 2*atanh(coth(x)/sqrt(-2 + coth(x)^2)) - (1/2)*coth(x)*sqrt(-2 + coth(x)^2)]
    @test_int [sqrt(-1 + csch(x)^2), x, 6, -atan(coth(x)/sqrt(-2 + coth(x)^2)) - atanh(coth(x)/sqrt(-2 + coth(x)^2))]
    @test_int [1/sqrt(-1 + csch(x)^2), x, 3, atan(coth(x)/sqrt(-2 + coth(x)^2))]


    @test_int [(-1 - csch(x)^2)^(3/2), x, 4, (1/2)*coth(x)*sqrt(-coth(x)^2) - sqrt(-coth(x)^2)*log(sinh(x))*tanh(x)]
    @test_int [sqrt(-1 - csch(x)^2), x, 3, sqrt(-coth(x)^2)*log(sinh(x))*tanh(x)]
    @test_int [1/sqrt(-1 - csch(x)^2), x, 3, (coth(x)*log(cosh(x)))/sqrt(-coth(x)^2)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*csch(c+d*x)^2)^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*csch(c+d*x)^2)^n=#
    end
