@testset "4.4.1.2 (d csc)^m (a+b cot)^n" begin
    (a, b, n, x, ) = @variables a b n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*cot(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*cot(e+f*x))^n*with*a^2+b^2=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csc(e+f*x)^m*(a+a*im*cot(e+f*x))^n=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sin(x)^4/(im + cot(x)), x, 4, -((5*im*x)/16) + 1/(32*(im - cot(x))^2) - im/(8*(im - cot(x))) - im/(24*(im + cot(x))^3) - 3/(32*(im + cot(x))^2) + (3*im)/(16*(im + cot(x)))]
    @test_int [sin(x)^3/(im + cot(x)), x, 3, (4/5)*im*cos(x) - (4/15)*im*cos(x)^3 + (im*sin(x)^3)/(5*(im + cot(x)))]
    @test_int [sin(x)^2/(im + cot(x)), x, 4, -((3*im*x)/8) - im/(8*(im - cot(x))) - 1/(8*(im + cot(x))^2) + im/(4*(im + cot(x)))]
    @test_int [sin(x)^1/(im + cot(x)), x, 2, (2/3)*im*cos(x) + (im*sin(x))/(3*(im + cot(x)))]
    @test_int [csc(x)^1/(im + cot(x)), x, 1, (im*csc(x))/(im + cot(x))]
    @test_int [csc(x)^2/(im + cot(x)), x, 2, (-im)*x + log(sin(x))]
    @test_int [csc(x)^3/(im + cot(x)), x, 2, im*atanh(cos(x)) - csc(x)]
    @test_int [csc(x)^4/(im + cot(x)), x, 2, im*cot(x) - cot(x)^2/2]
    @test_int [csc(x)^5/(im + cot(x)), x, 3, (1/2)*im*atanh(cos(x)) + (1/2)*im*cot(x)*csc(x) - csc(x)^3/3]
    @test_int [csc(x)^6/(im + cot(x)), x, 3, im*cot(x) - cot(x)^2/2 + (1/3)*im*cot(x)^3 - cot(x)^4/4]
    @test_int [csc(x)^7/(im + cot(x)), x, 4, (3/8)*im*atanh(cos(x)) + (3/8)*im*cot(x)*csc(x) + (1/4)*im*cot(x)*csc(x)^3 - csc(x)^5/5]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*cot(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csc(e+f*x)^m*(a+b*cot(e+f*x))^n=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [csc(x)^6/(a + b*cot(x)), x, 3, (a*(a^2 + 2*b^2)*cot(x))/b^4 - ((a^2 + 2*b^2)*cot(x)^2)/(2*b^3) + (a*cot(x)^3)/(3*b^2) - cot(x)^4/(4*b) - ((a^2 + b^2)^2*log(a + b*cot(x)))/b^5]
    @test_int [csc(x)^4/(a + b*cot(x)), x, 3, (a*cot(x))/b^2 - cot(x)^2/(2*b) - ((a^2 + b^2)*log(a + b*cot(x)))/b^3]
    @test_int [csc(x)^2/(a + b*cot(x)), x, 2, -(log(a + b*cot(x))/b)]
    @test_int [sin(x)^2/(a + b*cot(x)), x, 7, (a*(a^2 + 3*b^2)*x)/(2*(a^2 + b^2)^2) - (b^3*log(b*cos(x) + a*sin(x)))/(a^2 + b^2)^2 - ((b + a*cot(x))*sin(x)^2)/(2*(a^2 + b^2))]
    @test_int [sin(x)^4/(a + b*cot(x)), x, 8, (a*(3*a^4 + 10*a^2*b^2 + 15*b^4)*x)/(8*(a^2 + b^2)^3) - (b^5*log(b*cos(x) + a*sin(x)))/(a^2 + b^2)^3 - ((4*b^3 + a*(3*a^2 + 7*b^2)*cot(x))*sin(x)^2)/(8*(a^2 + b^2)^2) - ((b + a*cot(x))*sin(x)^4)/(4*(a^2 + b^2))]

    @test_int [csc(x)^5/(a + b*cot(x)), x, 9, (a*atanh(cos(x)))/(2*b^2) + (a*(a^2 + b^2)*atanh(cos(x)))/b^4 + ((a^2 + b^2)^(3/2)*atanh(((b - a*cot(x))*sin(x))/sqrt(a^2 + b^2)))/b^4 - ((a^2 + b^2)*csc(x))/b^3 + (a*cot(x)*csc(x))/(2*b^2) - csc(x)^3/(3*b)]
    @test_int [csc(x)^3/(a + b*cot(x)), x, 5, (a*atanh(cos(x)))/b^2 + (sqrt(a^2 + b^2)*atanh(((b - a*cot(x))*sin(x))/sqrt(a^2 + b^2)))/b^2 - csc(x)/b]
    @test_int [csc(x)^1/(a + b*cot(x)), x, 2, -(atanh(((-b + a*cot(x))*sin(x))/sqrt(a^2 + b^2))/sqrt(a^2 + b^2))]
    @test_int [sin(x)^1/(a + b*cot(x)), x, 5, (b^2*atanh(((b - a*cot(x))*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2) - (a*cos(x))/(a^2 + b^2) - (b*sin(x))/(a^2 + b^2)]
    @test_int [sin(x)^3/(a + b*cot(x)), x, 9, (b^4*atanh(((b - a*cot(x))*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) - (a*b^2*cos(x))/(a^2 + b^2)^2 - (a*cos(x))/(a^2 + b^2) + (a*cos(x)^3)/(3*(a^2 + b^2)) - (b^3*sin(x))/(a^2 + b^2)^2 - (b*sin(x)^3)/(3*(a^2 + b^2))]


    @test_int [csc(x)^2/(a + b*cot(x))^2, x, 2, 1/(b*(a + b*cot(x)))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*csc(e+f*x)^m*(a+b*cot(e+f*x))^(n/2)=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*csc(e+f*x)^(m/2)*(a+b*cot(e+f*x))^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*csc(e+f*x)^(m/2)*(a+b*cot(e+f*x))^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*cot(e+f*x))^n*with*n*symbolic=#
    #==#


    @test_int [csc(x)^2*(a + b*cot(x))^n, x, 2, -((a + b*cot(x))^(1 + n)/(b*(1 + n)))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*sin(e+f*x)^(m/2)*(a+b*cot(e+f*x))^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*sin(e+f*x)^(m/2)*(a+b*cot(e+f*x))^(n/2)=#
    end
