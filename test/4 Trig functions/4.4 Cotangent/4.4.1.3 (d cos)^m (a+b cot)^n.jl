@testset "4.4.1.3 (d cos)^m (a+b cot)^n" begin
    @variables a, b, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*cot(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*cot(e+f*x))^n*with*a^2+b^2=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cot(e+f*x))^n*when*a^2+b^2=0=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cos(x)^4/(im + cot(x)), x, 5, -((im*x)/16) + 1/(32*(im - cot(x))^2) + im/(8*(im - cot(x))) - im/(24*(im + cot(x))^3) + 5/(32*(im + cot(x))^2) + (3*im)/(16*(im + cot(x)))]
    @test_int [cos(x)^3/(im + cot(x)), x, 9, (-(1/5))*cos(x)^5 - (1/3)*im*sin(x)^3 + (1/5)*im*sin(x)^5]
    @test_int [cos(x)^2/(im + cot(x)), x, 5, -((im*x)/8) + im/(8*(im - cot(x))) + 1/(8*(im + cot(x))^2) + im/(4*(im + cot(x)))]
    @test_int [cos(x)^1/(im + cot(x)), x, 8, (-(1/3))*cos(x)^3 - (1/3)*im*sin(x)^3]
    @test_int [sec(x)^1/(im + cot(x)), x, 8, (-im)*atanh(sin(x)) - cos(x) + im*sin(x)]
    @test_int [sec(x)^2/(im + cot(x)), x, 3, im*x - log(sin(x)) + log(tan(x)) - im*tan(x)]
    @test_int [sec(x)^3/(im + cot(x)), x, 8, (1/2)*im*atanh(sin(x)) + sec(x) - (1/2)*im*sec(x)*tan(x)]
    @test_int [sec(x)^4/(im + cot(x)), x, 4, tan(x)^2/2 - (1/3)*im*tan(x)^3]
    @test_int [sec(x)^5/(im + cot(x)), x, 9, (1/8)*im*atanh(sin(x)) + sec(x)^3/3 + (1/8)*im*sec(x)*tan(x) - (1/4)*im*sec(x)^3*tan(x)]
    @test_int [sec(x)^6/(im + cot(x)), x, 4, tan(x)^2/2 - (1/3)*im*tan(x)^3 + tan(x)^4/4 - (1/5)*im*tan(x)^5]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*cot(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cot(e+f*x))^n=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cos(x)^4/(a + b*cot(x)), x, 8, (a*(3*a^4 - 6*a^2*b^2 - b^4)*x)/(8*(a^2 + b^2)^3) - (a^4*b*log(b*cos(x) + a*sin(x)))/(a^2 + b^2)^3 + ((4*b*(2*a^2 + b^2) + a*(5*a^2 + b^2)*cot(x))*sin(x)^2)/(8*(a^2 + b^2)^2) - ((b + a*cot(x))*sin(x)^4)/(4*(a^2 + b^2))]
    @test_int [cos(x)^3/(a + b*cot(x)), x, 10, (a^3*b*atanh((a*cos(x) - b*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) - (a^2*b*cos(x))/(a^2 + b^2)^2 - (b*cos(x)^3)/(3*(a^2 + b^2)) - (a*b^2*sin(x))/(a^2 + b^2)^2 + (a*sin(x))/(a^2 + b^2) - (a*sin(x)^3)/(3*(a^2 + b^2))]
    @test_int [cos(x)^2/(a + b*cot(x)), x, 7, (a*(a^2 - b^2)*x)/(2*(a^2 + b^2)^2) - (a^2*b*log(b*cos(x) + a*sin(x)))/(a^2 + b^2)^2 + ((b + a*cot(x))*sin(x)^2)/(2*(a^2 + b^2))]
    @test_int [cos(x)^1/(a + b*cot(x)), x, 6, (a*b*atanh((a*cos(x) - b*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2) - (b*cos(x))/(a^2 + b^2) + (a*sin(x))/(a^2 + b^2)]
    @test_int [sec(x)^1/(a + b*cot(x)), x, 6, atanh(sin(x))/a + (b*atanh((a*cos(x) - b*sin(x))/sqrt(a^2 + b^2)))/(a*sqrt(a^2 + b^2))]
    @test_int [sec(x)^2/(a + b*cot(x)), x, 3, -((b*log(a + b*cot(x)))/a^2) - (b*log(tan(x)))/a^2 + tan(x)/a]
    @test_int [sec(x)^3/(a + b*cot(x)), x, 9, atanh(sin(x))/(2*a) + (b^2*atanh(sin(x)))/a^3 + (b*sqrt(a^2 + b^2)*atanh((a*cos(x) - b*sin(x))/sqrt(a^2 + b^2)))/a^3 - (b*sec(x))/a^2 + (sec(x)*tan(x))/(2*a)]
    @test_int [sec(x)^4/(a + b*cot(x)), x, 3, -((b*(a^2 + b^2)*log(a + b*cot(x)))/a^4) - (b*(a^2 + b^2)*log(tan(x)))/a^4 + ((a^2 + b^2)*tan(x))/a^3 - (b*tan(x)^2)/(2*a^2) + tan(x)^3/(3*a)]


    #= Following*hangs*Mathematica*6 & 7: =# 
    @test_int [sec(x)/(1 + 2*cot(x)), x, 6, (2*atanh((cos(x) - 2*sin(x))/sqrt(5)))/sqrt(5) + atanh(sin(x))]
    end
