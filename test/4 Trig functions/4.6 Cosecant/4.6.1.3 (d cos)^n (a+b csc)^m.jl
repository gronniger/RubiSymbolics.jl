@testset "4.6.1.3 (d cos)^n (a+b csc)^m" begin
    @variables a, b, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e*cos(c+d*x))^m*(a+a*csc(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*cos(c+d*x))^m*(a+a*csc(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(a+a*csc(c+d*x))^n=#


    @test_int [cos(x)^4/(a + a*csc(x)), x, 7, -(x/(8*a)) - cos(x)^3/(3*a) - (cos(x)*sin(x))/(8*a) + (cos(x)^3*sin(x))/(4*a)]
    @test_int [cos(x)^3/(a + a*csc(x)), x, 6, sin(x)^2/(2*a) - sin(x)^3/(3*a)]
    @test_int [cos(x)^2/(a + a*csc(x)), x, 5, -(x/(2*a)) - cos(x)/a + (cos(x)*sin(x))/(2*a)]
    @test_int [cos(x)^1/(a + a*csc(x)), x, 5, -(log(1 + sin(x))/a) + sin(x)/a]
    @test_int [sec(x)^1/(a + a*csc(x)), x, 6, atanh(sin(x))/(2*a) + sec(x)^2/(2*a) - (sec(x)*tan(x))/(2*a)]
    @test_int [sec(x)^2/(a + a*csc(x)), x, 6, sec(x)^3/(3*a) - tan(x)^3/(3*a)]
    @test_int [sec(x)^3/(a + a*csc(x)), x, 7, atanh(sin(x))/(8*a) + sec(x)^4/(4*a) + (sec(x)*tan(x))/(8*a) - (sec(x)^3*tan(x))/(4*a)]
    @test_int [sec(x)^4/(a + a*csc(x)), x, 7, sec(x)^5/(5*a) - tan(x)^3/(3*a) - tan(x)^5/(5*a)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(a+a*csc(c+d*x))^(n/2)=#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e*cos(c+d*x))^m*(a+b*csc(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*cos(c+d*x))^m*(a+b*csc(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(a+b*csc(c+d*x))^n=#


    @test_int [cos(x)^4/(a + b*csc(x)), x, 7, ((3*a^4 - 12*a^2*b^2 + 8*b^4)*x)/(8*a^5) + (2*b*(a^2 - b^2)^(3/2)*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/a^5 - (cos(x)^3*(4*b - 3*a*sin(x)))/(12*a^2) - (cos(x)*(8*b*(a^2 - b^2) - a*(3*a^2 - 4*b^2)*sin(x)))/(8*a^4)]
    @test_int [cos(x)^3/(a + b*csc(x)), x, 5, -((b*(a^2 - b^2)*log(b + a*sin(x)))/a^4) + ((a^2 - b^2)*sin(x))/a^3 + (b*sin(x)^2)/(2*a^2) - sin(x)^3/(3*a)]
    @test_int [cos(x)^2/(a + b*csc(x)), x, 6, ((a^2 - 2*b^2)*x)/(2*a^3) + (2*b*sqrt(a^2 - b^2)*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/a^3 - (cos(x)*(2*b - a*sin(x)))/(2*a^2)]
    @test_int [cos(x)^1/(a + b*csc(x)), x, 5, -((b*log(b + a*sin(x)))/a^2) + sin(x)/a]
    @test_int [sec(x)^1/(a + b*csc(x)), x, 4, -(log(1 - sin(x))/(2*(a + b))) + log(1 + sin(x))/(2*(a - b)) - (b*log(b + a*sin(x)))/(a^2 - b^2)]
    @test_int [sec(x)^2/(a + b*csc(x)), x, 6, (2*a*b*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2) - (sec(x)*(b - a*sin(x)))/(a^2 - b^2)]
    @test_int [sec(x)^3/(a + b*csc(x)), x, 6, -((a*log(1 - sin(x)))/(4*(a + b)^2)) + (a*log(1 + sin(x)))/(4*(a - b)^2) - (a^2*b*log(b + a*sin(x)))/(a^2 - b^2)^2 - (sec(x)^2*(b - a*sin(x)))/(2*(a^2 - b^2))]
    @test_int [sec(x)^4/(a + b*csc(x)), x, 7, (2*a^3*b*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2) - (sec(x)^3*(b - a*sin(x)))/(3*(a^2 - b^2)) - (sec(x)*(3*a^2*b - a*(2*a^2 + b^2)*sin(x)))/(3*(a^2 - b^2)^2)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(a+b*csc(c+d*x))^(n/2)=#
    end
