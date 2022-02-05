@testset "4.6.7 (d trig)^m (a+b (c csc)^n)^p" begin
    @variables a, b, c, d, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(a+b*csc(c+d*x)^m)^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*csc(c+d*x)^m)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*csc(c+d*x)^2)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n=#


    @test_int [(a + b*csc(c + d*x)^2)^4, x, 4, a^4*x - (b*(2*a + b)*(2*a^2 + 2*a*b + b^2)*cot(c + d*x))/d - (b^2*(6*a^2 + 8*a*b + 3*b^2)*cot(c + d*x)^3)/(3*d) - (b^3*(4*a + 3*b)*cot(c + d*x)^5)/(5*d) - (b^4*cot(c + d*x)^7)/(7*d)]
    @test_int [(a + b*csc(c + d*x)^2)^3, x, 4, a^3*x - (b*(3*a^2 + 3*a*b + b^2)*cot(c + d*x))/d - (b^2*(3*a + 2*b)*cot(c + d*x)^3)/(3*d) - (b^3*cot(c + d*x)^5)/(5*d)]
    @test_int [(a + b*csc(c + d*x)^2)^2, x, 4, a^2*x - (b*(2*a + b)*cot(c + d*x))/d - (b^2*cot(c + d*x)^3)/(3*d)]
    @test_int [(a + b*csc(c + d*x)^2)^1, x, 3, a*x - (b*cot(c + d*x))/d]
    @test_int [1/(a + b*csc(c + d*x)^2)^1, x, 3, x/a - (sqrt(b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(b)))/(a*sqrt(a + b)*d)]
    @test_int [1/(a + b*csc(c + d*x)^2)^2, x, 5, x/a^2 + (sqrt(b)*(3*a + 2*b)*atan((sqrt(b)*cot(c + d*x))/sqrt(a + b)))/(2*a^2*(a + b)^(3/2)*d) + (b*cot(c + d*x))/(2*a*(a + b)*d*(a + b + b*cot(c + d*x)^2))]
    @test_int [1/(a + b*csc(c + d*x)^2)^3, x, 6, x/a^3 + (sqrt(b)*(15*a^2 + 20*a*b + 8*b^2)*atan((sqrt(b)*cot(c + d*x))/sqrt(a + b)))/(8*a^3*(a + b)^(5/2)*d) + (b*cot(c + d*x))/(4*a*(a + b)*d*(a + b + b*cot(c + d*x)^2)^2) + (b*(7*a + 4*b)*cot(c + d*x))/(8*a^2*(a + b)^2*d*(a + b + b*cot(c + d*x)^2))]
    @test_int [1/(a + b*csc(c + d*x)^2)^4, x, 7, x/a^4 + (sqrt(b)*(35*a^3 + 70*a^2*b + 56*a*b^2 + 16*b^3)*atan((sqrt(b)*cot(c + d*x))/sqrt(a + b)))/(16*a^4*(a + b)^(7/2)*d) + (b*cot(c + d*x))/(6*a*(a + b)*d*(a + b + b*cot(c + d*x)^2)^3) + (b*(11*a + 6*b)*cot(c + d*x))/(24*a^2*(a + b)^2*d*(a + b + b*cot(c + d*x)^2)^2) + (b*(19*a^2 + 22*a*b + 8*b^2)*cot(c + d*x))/(16*a^3*(a + b)^3*d*(a + b + b*cot(c + d*x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=n/2=#


    @test_int [(a + b*csc(c + d*x)^2)^(5/2), x, 8, -((a^(5/2)*atan((sqrt(a)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2)))/d) - (sqrt(b)*(15*a^2 + 10*a*b + 3*b^2)*atanh((sqrt(b)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2)))/(8*d) - (b*(7*a + 3*b)*cot(c + d*x)*sqrt(a + b + b*cot(c + d*x)^2))/(8*d) - (b*cot(c + d*x)*(a + b + b*cot(c + d*x)^2)^(3/2))/(4*d)]
    @test_int [(a + b*csc(c + d*x)^2)^(3/2), x, 7, -((a^(3/2)*atan((sqrt(a)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2)))/d) - (sqrt(b)*(3*a + b)*atanh((sqrt(b)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2)))/(2*d) - (b*cot(c + d*x)*sqrt(a + b + b*cot(c + d*x)^2))/(2*d)]
    @test_int [(a + b*csc(c + d*x)^2)^(1/2), x, 6, -((sqrt(a)*atan((sqrt(a)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2)))/d) - (sqrt(b)*atanh((sqrt(b)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2)))/d]
    @test_int [1/(a + b*csc(c + d*x)^2)^(1/2), x, 3, -(atan((sqrt(a)*cot(c + d*x))/sqrt(a + b*csc(c + d*x)^2))/(sqrt(a)*d)), -(atan((sqrt(a)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2))/(sqrt(a)*d))]
    @test_int [1/(a + b*csc(c + d*x)^2)^(3/2), x, 4, -(atan((sqrt(a)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2))/(a^(3/2)*d)) + (b*cot(c + d*x))/(a*(a + b)*d*sqrt(a + b + b*cot(c + d*x)^2))]
    @test_int [1/(a + b*csc(c + d*x)^2)^(5/2), x, 6, -(atan((sqrt(a)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2))/(a^(5/2)*d)) + (b*cot(c + d*x))/(3*a*(a + b)*d*(a + b + b*cot(c + d*x)^2)^(3/2)) + (b*(5*a + 3*b)*cot(c + d*x))/(3*a^2*(a + b)^2*d*sqrt(a + b + b*cot(c + d*x)^2))]
    @test_int [1/(a + b*csc(c + d*x)^2)^(7/2), x, 7, -(atan((sqrt(a)*cot(c + d*x))/sqrt(a + b + b*cot(c + d*x)^2))/(a^(7/2)*d)) + (b*cot(c + d*x))/(5*a*(a + b)*d*(a + b + b*cot(c + d*x)^2)^(5/2)) + (b*(9*a + 5*b)*cot(c + d*x))/(15*a^2*(a + b)^2*d*(a + b + b*cot(c + d*x)^2)^(3/2)) + (b*(33*a^2 + 40*a*b + 15*b^2)*cot(c + d*x))/(15*a^3*(a + b)^3*d*sqrt(a + b + b*cot(c + d*x)^2))]


    @test_int [(1 + csc(x)^2)^(3/2), x, 6, -2*asinh(cot(x)/sqrt(2)) - atan(cot(x)/sqrt(2 + cot(x)^2)) - (1/2)*cot(x)*sqrt(2 + cot(x)^2)]
    @test_int [sqrt(1 + csc(x)^2), x, 5, -asinh(cot(x)/sqrt(2)) - atan(cot(x)/sqrt(2 + cot(x)^2))]
    @test_int [1/sqrt(1 + csc(x)^2), x, 3, -atan(cot(x)/sqrt(2 + cot(x)^2))]


    @test_int [(1 - csc(x)^2)^(3/2), x, 4, (1/2)*cot(x)*sqrt(-cot(x)^2) + sqrt(-cot(x)^2)*log(sin(x))*tan(x)]
    @test_int [sqrt(1 - csc(x)^2), x, 3, sqrt(-cot(x)^2)*log(sin(x))*tan(x)]
    @test_int [1/sqrt(1 - csc(x)^2), x, 3, -((cot(x)*log(cos(x)))/sqrt(-cot(x)^2))]


    @test_int [(-1 + csc(x)^2)^(3/2), x, 4, (-(1/2))*(cot(x)^2)^(3/2)*tan(x) - sqrt(cot(x)^2)*log(sin(x))*tan(x)]
    @test_int [sqrt(-1 + csc(x)^2), x, 3, sqrt(cot(x)^2)*log(sin(x))*tan(x)]
    @test_int [1/sqrt(-1 + csc(x)^2), x, 3, -((cot(x)*log(cos(x)))/sqrt(cot(x)^2))]


    @test_int [(-1 - csc(x)^2)^(3/2), x, 7, -2*atan(cot(x)/sqrt(-2 - cot(x)^2)) - atanh(cot(x)/sqrt(-2 - cot(x)^2)) + (1/2)*cot(x)*sqrt(-2 - cot(x)^2)]
    @test_int [sqrt(-1 - csc(x)^2), x, 6, atan(cot(x)/sqrt(-2 - cot(x)^2)) + atanh(cot(x)/sqrt(-2 - cot(x)^2))]
    @test_int [1/sqrt(-1 - csc(x)^2), x, 3, -atanh(cot(x)/sqrt(-2 - cot(x)^2))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a+b*csc(c+d*x)^3)^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a+b*csc(c+d*x)^4)^n=#
    end
