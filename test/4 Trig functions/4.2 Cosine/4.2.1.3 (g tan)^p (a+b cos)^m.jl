@testset "4.2.1.3 (g tan)^p (a+b cos)^m" begin
    @variables a, b, c, d, e, f, g, m, p, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+a*cos(e+f*x))^m=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+a*cos(e+f*x))^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^p*(a+a*cos(e+f*x))^m=#


    @test_int [tan(x)^4/(a + a*cos(x)), x, 5, atanh(sin(x))/(2*a) - (sec(x)*tan(x))/(2*a) + tan(x)^3/(3*a)]
    @test_int [tan(x)^3/(a + a*cos(x)), x, 5, -(sec(x)/a) + sec(x)^2/(2*a)]
    @test_int [tan(x)^2/(a + a*cos(x)), x, 4, -(atanh(sin(x))/a) + tan(x)/a]
    @test_int [tan(x)^1/(a + a*cos(x)), x, 4, -(log(cos(x))/a) + log(1 + cos(x))/a]
    @test_int [cot(x)^1/(a + a*cos(x)), x, 5, -(atanh(cos(x))/(2*a)) + (cot(x)*csc(x))/(2*a) - csc(x)^2/(2*a)]
    @test_int [cot(x)^2/(a + a*cos(x)), x, 5, -(cot(x)^3/(3*a)) - csc(x)/a + csc(x)^3/(3*a)]
    @test_int [cot(x)^3/(a + a*cos(x)), x, 6, (3*atanh(cos(x)))/(8*a) - cot(x)^4/(4*a) - (3*cot(x)*csc(x))/(8*a) + (cot(x)^3*csc(x))/(4*a)]
    @test_int [cot(x)^4/(a + a*cos(x)), x, 6, -(cot(x)^5/(5*a)) + csc(x)/a - (2*csc(x)^3)/(3*a) + csc(x)^5/(5*a)]


    @test_int [tan(3*x)/(1 + cos(3*x))^2, x, 3, -(1/(3*(1 + cos(3*x)))) - (1/3)*log(cos(3*x)) + (1/3)*log(1 + cos(3*x))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*tan(e+f*x)^p*(a+a*cos(e+f*x))^(m/2)=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^(p/2)*(a+a*cos(e+f*x))^m=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^(p/2)*(a+a*cos(e+f*x))^(m/2)=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+a*cos(e+f*x))^m*(A+B*cos(e+f*x))=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+a*cos(e+f*x))^m*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Title:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*cos(e+f*x))^m=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*cos(e+f*x))^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^p*(a+b*cos(e+f*x))^m=#


    #= ::Subsubsection:: =#
    #=m>0=#


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [tan(x)^4/(a + b*cos(x)), x, 6, (2*(a - b)^(3/2)*(a + b)^(3/2)*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/a^4 + (b*(3*a^2 - 2*b^2)*atanh(sin(x)))/(2*a^4) - ((4*a^2 - 3*b^2)*tan(x))/(3*a^3) - (b*sec(x)*tan(x))/(2*a^2) + (sec(x)^2*tan(x))/(3*a)]
    @test_int [tan(x)^3/(a + b*cos(x)), x, 3, ((a^2 - b^2)*log(cos(x)))/a^3 - ((a^2 - b^2)*log(a + b*cos(x)))/a^3 - (b*sec(x))/a^2 + sec(x)^2/(2*a)]
    @test_int [tan(x)^2/(a + b*cos(x)), x, 6, -((2*sqrt(a - b)*sqrt(a + b)*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/a^2) - (b*atanh(sin(x)))/a^2 + tan(x)/a]
    @test_int [tan(x)^1/(a + b*cos(x)), x, 4, -(log(cos(x))/a) + log(a + b*cos(x))/a]
    @test_int [cot(x)^1/(a + b*cos(x)), x, 3, log(1 - cos(x))/(2*(a + b)) + log(1 + cos(x))/(2*(a - b)) - (a*log(a + b*cos(x)))/(a^2 - b^2)]
    @test_int [cot(x)^2/(a + b*cos(x)), x, 7, -((2*a^2*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/((a - b)^(3/2)*(a + b)^(3/2))) - (a*cot(x))/(a^2 - b^2) + (b*csc(x))/(a^2 - b^2)]
    @test_int [cot(x)^3/(a + b*cos(x)), x, 4, -(((a - b*cos(x))*csc(x)^2)/(2*(a^2 - b^2))) - ((2*a + b)*log(1 - cos(x)))/(4*(a + b)^2) - ((2*a - b)*log(1 + cos(x)))/(4*(a - b)^2) + (a^3*log(a + b*cos(x)))/(a^2 - b^2)^2]
    @test_int [cot(x)^4/(a + b*cos(x)), x, 12, (2*a^4*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)) + (a^3*cot(x))/(a^2 - b^2)^2 - (a*cot(x)^3)/(3*(a^2 - b^2)) - (a^2*b*csc(x))/(a^2 - b^2)^2 - (b*csc(x))/(a^2 - b^2) + (b*csc(x)^3)/(3*(a^2 - b^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^p*(a+b*cos(e+f*x))^(m/2)=#


    @test_int [cot(x)/sqrt(3 - cos(x)), x, 5, -atanh(sqrt(3 - cos(x))/2)/2 - atanh(sqrt(3 - cos(x))/sqrt(2))/sqrt(2)]


    @test_int [tan(x)*sqrt(a + b*cos(x)), x, 4, 2*sqrt(a)*atanh(sqrt(a + b*cos(x))/sqrt(a)) - 2*sqrt(a + b*cos(x))]
    @test_int [tan(x)/sqrt(a + b*cos(x)), x, 3, (2*atanh(sqrt(a + b*cos(x))/sqrt(a)))/sqrt(a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^(p/2)*(a+b*cos(e+f*x))^m=#


    @test_int [sqrt(e*tan(c + d*x))/(a + b*cos(c + d*x)), x, 9, -((2*sqrt(2)*sqrt(cos(c + d*x))*EllipticPi(-(sqrt(-a + b)/sqrt(a + b)), asin(sqrt(sin(c + d*x))/sqrt(1 + cos(c + d*x))), -1)*sqrt(e*tan(c + d*x)))/(sqrt(-a + b)*sqrt(a + b)*d*sqrt(sin(c + d*x)))) + (2*sqrt(2)*sqrt(cos(c + d*x))*EllipticPi(sqrt(-a + b)/sqrt(a + b), asin(sqrt(sin(c + d*x))/sqrt(1 + cos(c + d*x))), -1)*sqrt(e*tan(c + d*x)))/(sqrt(-a + b)*sqrt(a + b)*d*sqrt(sin(c + d*x)))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^(p/2)*(a+b*cos(e+f*x))^(m/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*cos(e+f*x))^m*with*p*symbolic=#


    @test_int [(g*tan(e + f*x))^p*(a + b*cos(e + f*x))^m, x, 1, (g*cot(e + f*x))^p*(g*tan(e + f*x))^p*Unintegrable((a + b*cos(e + f*x))^m/(g*cot(e + f*x))^p, x)]


    #= [(g*tan(e + f*x))^p*(a + b*cos(e + f*x))^3, x, 0, 0]
    @test_int [(g*tan(e + f*x))^p*(a + b*cos(e + f*x))^2, x, 0, 0]
    @test_int [(g*tan(e + f*x))^p*(a + b*cos(e + f*x))^1, x, 0, 0]
    @test_int [(g*tan(e + f*x))^p/(a + b*cos(e + f*x))^1, x, 0, -((g*AppellF1(1 - p, (1 - p)/2, (1 - p)/2, 2 - p, (a + b)/(b + a*sec(e + f*x)), (-a + b)/(b + a*sec(e + f*x)))*(-((a*(1 - sec(e + f*x)))/(b + a*sec(e + f*x))))^((1 - p)/2)*((a*(1 + sec(e + f*x)))/(b + a*sec(e + f*x)))^((1 - p)/2)*(g*tan(e + f*x))^(-1 + p)*(-tan(e + f*x)^2)^((1 - p)/2 + (1/2)*(-1 + p)))/(a*f*(1 - p)))]
    @test_int [(g*tan(e + f*x))^p/(a + b*cos(e + f*x))^2, x, 0, 0]
    @test_int [(g*tan(e + f*x))^p/(a + b*cos(e + f*x))^3, x, 0, 0] =#


    #= ::Section:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*cos(e+f*x))^n*(A+B*cos(e+f*x))=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*cos(e+f*x))^n*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#
    end
