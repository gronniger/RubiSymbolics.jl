@testset "4.6.1.4 (d cot)^n (a+b csc)^m" begin
    @variables a, b, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(e*tan(c+d*x))^m*(a+a*csc(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*tan(c+d*x))^m*(a+a*csc(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(c+d*x)^m*(a+a*csc(c+d*x))^n=#


    @test_int [tan(x)^4/(a + a*csc(x)), x, 5, x/a - ((15 - 8*csc(x))*tan(x))/(15*a) + ((5 - 4*csc(x))*tan(x)^3)/(15*a) - ((1 - csc(x))*tan(x)^5)/(5*a)]
    @test_int [tan(x)^3/(a + a*csc(x)), x, 3, (5*log(1 - sin(x)))/(16*a) + (11*log(1 + sin(x)))/(16*a) + 1/(8*a*(1 - sin(x))) - 1/(8*a*(1 + sin(x))^2) + 3/(4*a*(1 + sin(x)))]
    @test_int [tan(x)^2/(a + a*csc(x)), x, 4, -(x/a) + ((3 - 2*csc(x))*tan(x))/(3*a) - ((1 - csc(x))*tan(x)^3)/(3*a)]
    @test_int [tan(x)^1/(a + a*csc(x)), x, 3, -(log(1 - sin(x))/(4*a)) - (3*log(1 + sin(x)))/(4*a) - 1/(2*a*(1 + sin(x)))]
    @test_int [cot(x)^1/(a + a*csc(x)), x, 2, log(1 + sin(x))/a]
    @test_int [cot(x)^2/(a + a*csc(x)), x, 3, -(x/a) - atanh(cos(x))/a]
    @test_int [cot(x)^3/(a + a*csc(x)), x, 3, -(csc(x)/a) - log(sin(x))/a]
    @test_int [cot(x)^4/(a + a*csc(x)), x, 4, x/a + atanh(cos(x))/(2*a) + (cot(x)*(2 - csc(x)))/(2*a)]
    @test_int [cot(x)^5/(a + a*csc(x)), x, 3, csc(x)/a + csc(x)^2/(2*a) - csc(x)^3/(3*a) + log(sin(x))/a]
    @test_int [cot(x)^6/(a + a*csc(x)), x, 5, -(x/a) - (3*atanh(cos(x)))/(8*a) + (cot(x)^3*(4 - 3*csc(x)))/(12*a) - (cot(x)*(8 - 3*csc(x)))/(8*a)]
    @test_int [cot(x)^7/(a + a*csc(x)), x, 3, -(csc(x)/a) - csc(x)^2/a + (2*csc(x)^3)/(3*a) + csc(x)^4/(4*a) - csc(x)^5/(5*a) - log(sin(x))/a]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*tan(c+d*x)^m*(a+a*csc(c+d*x))^(n/2)=#


    #= ::Title:: =#
    #=Integrands*of*the*form*(e*tan(c+d*x))^m*(a+b*csc(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*tan(c+d*x))^m*(a+b*csc(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(c+d*x)^m*(a+b*csc(c+d*x))^n=#


    @test_int [tan(x)^5/(a + b*csc(x)), x, 3, 1/(16*(a + b)*(1 - csc(x))^2) + (5*a + 7*b)/(16*(a + b)^2*(1 - csc(x))) + 1/(16*(a - b)*(1 + csc(x))^2) + (5*a - 7*b)/(16*(a - b)^2*(1 + csc(x))) - ((8*a^2 + 21*a*b + 15*b^2)*log(1 - csc(x)))/(16*(a + b)^3) - ((8*a^2 - 21*a*b + 15*b^2)*log(1 + csc(x)))/(16*(a - b)^3) + (b^6*log(a + b*csc(x)))/(a*(a^2 - b^2)^3) - log(sin(x))/a]
    @test_int [tan(x)^3/(a + b*csc(x)), x, 3, -(1/(4*(a + b)*(1 - csc(x)))) - 1/(4*(a - b)*(1 + csc(x))) + ((2*a + 3*b)*log(1 - csc(x)))/(4*(a + b)^2) + ((2*a - 3*b)*log(1 + csc(x)))/(4*(a - b)^2) + (b^4*log(a + b*csc(x)))/(a*(a^2 - b^2)^2) + log(sin(x))/a]
    @test_int [tan(x)^1/(a + b*csc(x)), x, 3, -(log(1 - csc(x))/(2*(a + b))) - log(1 + csc(x))/(2*(a - b)) + (b^2*log(a + b*csc(x)))/(a*(a^2 - b^2)) - log(sin(x))/a]
    @test_int [cot(x)^1/(a + b*csc(x)), x, 4, log(a + b*csc(x))/a + log(sin(x))/a]
    @test_int [cot(x)^3/(a + b*csc(x)), x, 3, -(csc(x)/b) - ((1 - a^2/b^2)*log(a + b*csc(x)))/a - log(sin(x))/a]
    @test_int [cot(x)^5/(a + b*csc(x)), x, 3, -(((a^2 - 2*b^2)*csc(x))/b^3) + (a*csc(x)^2)/(2*b^2) - csc(x)^3/(3*b) + ((a^2 - b^2)^2*log(a + b*csc(x)))/(a*b^4) + log(sin(x))/a]
    @test_int [cot(x)^7/(a + b*csc(x)), x, 3, -(((a^4 - 3*a^2*b^2 + 3*b^4)*csc(x))/b^5) + (a*(a^2 - 3*b^2)*csc(x)^2)/(2*b^4) - ((a^2 - 3*b^2)*csc(x)^3)/(3*b^3) + (a*csc(x)^4)/(4*b^2) - csc(x)^5/(5*b) + ((a^2 - b^2)^3*log(a + b*csc(x)))/(a*b^6) - log(sin(x))/a]

    @test_int [tan(x)^4/(a + b*csc(x)), x, 16, x/a + (2*b^5*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a*(a^2 - b^2)^(5/2)) - (b^3*sec(x))/(a^2 - b^2)^2 + (b*sec(x))/(a^2 - b^2) - (b*sec(x)^3)/(3*(a^2 - b^2)) + (a*b^2*tan(x))/(a^2 - b^2)^2 - (a*tan(x))/(a^2 - b^2) + (a*tan(x)^3)/(3*(a^2 - b^2)), -((a*b^2*x)/(a^2 - b^2)^2) + (b^4*x)/(a*(a^2 - b^2)^2) + (a*x)/(a^2 - b^2) + (2*b^5*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a*(a^2 - b^2)^(5/2)) - (b^3*sec(x))/(a^2 - b^2)^2 + (b*sec(x))/(a^2 - b^2) - (b*sec(x)^3)/(3*(a^2 - b^2)) + (a*b^2*tan(x))/(a^2 - b^2)^2 - (a*tan(x))/(a^2 - b^2) + (a*tan(x)^3)/(3*(a^2 - b^2))]
    @test_int [tan(x)^2/(a + b*csc(x)), x, 10, -(x/a) + (2*b^3*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a*(a^2 - b^2)^(3/2)) - (b*sec(x))/(a^2 - b^2) + (a*tan(x))/(a^2 - b^2), -((a*x)/(a^2 - b^2)) + (b^2*x)/(a*(a^2 - b^2)) + (2*b^3*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a*(a^2 - b^2)^(3/2)) - (b*sec(x))/(a^2 - b^2) + (a*tan(x))/(a^2 - b^2)]
    @test_int [cot(x)^2/(a + b*csc(x)), x, 8, -(x/a) - atanh(cos(x))/b + (2*sqrt(a^2 - b^2)*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a*b)]
    @test_int [cot(x)^4/(a + b*csc(x)), x, 7, x/a - ((2*a^2 - 3*b^2)*atanh(cos(x)))/(2*b^3) + (2*(a^2 - b^2)^(3/2)*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a*b^3) + (a*cot(x))/b^2 - (cot(x)*csc(x))/(2*b)]
    @test_int [cot(x)^6/(a + b*csc(x)), x, 16, -(x/a) - (3*atanh(cos(x)))/(8*b) - ((a^2 - 3*b^2)*atanh(cos(x)))/(2*b^3) - ((a^4 - 3*a^2*b^2 + 3*b^4)*atanh(cos(x)))/b^5 + (2*(a^2 - b^2)^(5/2)*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a*b^5) + (a*cot(x))/b^2 + (a*(a^2 - 3*b^2)*cot(x))/b^4 + (a*cot(x)^3)/(3*b^2) - (3*cot(x)*csc(x))/(8*b) - ((a^2 - 3*b^2)*cot(x)*csc(x))/(2*b^3) - (cot(x)*csc(x)^3)/(4*b)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*tan(c+d*x)^m*(a+b*csc(c+d*x))^(n/2)=#
    end
