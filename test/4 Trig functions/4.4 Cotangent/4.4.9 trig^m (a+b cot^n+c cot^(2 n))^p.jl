@testset "4.4.9 trig^m (a+b cot^n+c cot^(2 n))^p" begin
    @variables a, b, c, d, e, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*Trig(d+e*x)^m*(a+b*cot(d+e*x)^n+c*cot(d+e*x)^(2*n))^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*sin(d+e*x)^m*(a+b*cot(d+e*x)^n+c*cot(d+e*x)^(2*n))^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*cos(d+e*x)^m*(a+b*cot(d+e*x)^n+c*cot(d+e*x)^(2*n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cot(d+e*x)^m*(a+b*cot(d+e*x)^n+c*cot(d+e*x)^(2*n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cot(d+e*x)^m*(a+b*cot(d+e*x)+c*cot(d+e*x)^2)^(p/2)=#


    @test_int [cot(d + e*x)^5/sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 15, -((sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c - sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e)) + (sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c + sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e) - (b*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(2*c^(3/2)*e) + (b*(5*b^2 - 12*a*c)*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(16*c^(7/2)*e) + sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)/(c*e) - (cot(d + e*x)^2*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(3*c*e) - ((15*b^2 - 16*a*c - 10*b*c*cot(d + e*x))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(24*c^3*e)]
    @test_int [cot(d + e*x)^3/sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 11, (sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c - sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e) - (sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c + sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e) + (b*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(2*c^(3/2)*e) - sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)/(c*e)]
    @test_int [cot(d + e*x)^1/sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 6, -((sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c - sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e)) + (sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c + sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e)]
    @test_int [tan(d + e*x)^1/sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 10, atanh((2*a + b*cot(d + e*x))/(2*sqrt(a)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)))/(sqrt(a)*e) + (sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c - sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e) - (sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c + sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e)]
    @test_int [tan(d + e*x)^3/sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 14, -(atanh((2*a + b*cot(d + e*x))/(2*sqrt(a)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)))/(sqrt(a)*e)) + ((3*b^2 - 4*a*c)*atanh((2*a + b*cot(d + e*x))/(2*sqrt(a)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(8*a^(5/2)*e) - (sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c - sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e) + (sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((a - c + sqrt(a^2 + b^2 - 2*a*c + c^2) + b*cot(d + e*x))/(sqrt(2)*sqrt(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*sqrt(a^2 + b^2 - 2*a*c + c^2)*e) - (3*b*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)*tan(d + e*x))/(4*a^2*e) + (sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)*tan(d + e*x)^2)/(2*a*e)]


    @test_int [cot(d + e*x)^5*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 21, -((sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*atan((b^2 + (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e)) - (b*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(2*sqrt(c)*e) + (b*(b^2 - 4*a*c)*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(16*c^(5/2)*e) - (b*(7*b^2 - 12*a*c)*(b^2 - 4*a*c)*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(256*c^(9/2)*e) + (sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*atanh((b^2 + (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) + b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e) - sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)/e - (b*(b + 2*c*cot(d + e*x))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(8*c^2*e) + (b*(7*b^2 - 12*a*c)*(b + 2*c*cot(d + e*x))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(128*c^4*e) + (a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2)/(3*c*e) - (cot(d + e*x)^2*(a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2))/(5*c*e) - ((35*b^2 - 32*a*c - 42*b*c*cot(d + e*x))*(a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2))/(240*c^3*e)]
    @test_int [cot(d + e*x)^3*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 16, (sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*atan((b^2 + (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e) + (b*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(2*sqrt(c)*e) - (b*(b^2 - 4*a*c)*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(16*c^(5/2)*e) - (sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*atanh((b^2 + (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) + b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e) + sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)/e + (b*(b + 2*c*cot(d + e*x))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(8*c^2*e) - (a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2)/(3*c*e)]
    @test_int [cot(d + e*x)^1*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 10, -((sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*atan((b^2 + (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e)) - (b*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(2*sqrt(c)*e) + (sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*atanh((b^2 + (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) + b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e) - sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)/e]
    @test_int [tan(d + e*x)^1*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 18, (sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*atan((b^2 + (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e) + (sqrt(a)*atanh((2*a + b*cot(d + e*x))/(2*sqrt(a)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/e - (sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*atanh((b^2 + (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) + b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e)]
    @test_int [tan(d + e*x)^3*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2), x, 21, -((sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*atan((b^2 + (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c + sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e)) - (sqrt(a)*atanh((2*a + b*cot(d + e*x))/(2*sqrt(a)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/e - ((b^2 - 4*a*c)*atanh((2*a + b*cot(d + e*x))/(2*sqrt(a)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(8*a^(3/2)*e) + (sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*atanh((b^2 + (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) + b*sqrt(a^2 + b^2 - 2*a*c + c^2)*cot(d + e*x))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*sqrt(a^2 + b^2 + c*(c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - a*(2*c - sqrt(a^2 + b^2 - 2*a*c + c^2)))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(1/4)*e) + ((2*a + b*cot(d + e*x))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)*tan(d + e*x)^2)/(4*a*e)]


    @test_int [cot(d + e*x)^7/(a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2), x, 20, -((3*b*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(2*c^(5/2)*e)) + (5*b*(7*b^2 - 12*a*c)*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(16*c^(9/2)*e) + (sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e) - (sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e) - (2*(2*a + b*cot(d + e*x)))/((b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) + (2*cot(d + e*x)^2*(2*a + b*cot(d + e*x)))/((b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) - (2*cot(d + e*x)^4*(2*a + b*cot(d + e*x)))/((b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) + (2*(a*(b^2 - 2*(a - c)*c) + b*c*(a + c)*cot(d + e*x)))/((b^2 + (a - c)^2)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) - ((7*b^2 - 16*a*c)*cot(d + e*x)^2*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(3*c^2*(b^2 - 4*a*c)*e) + (2*b*cot(d + e*x)^3*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(c*(b^2 - 4*a*c)*e) + ((3*b^2 - 8*a*c - 2*b*c*cot(d + e*x))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(c^2*(b^2 - 4*a*c)*e) - ((105*b^4 - 460*a*b^2*c + 256*a^2*c^2 - 2*b*c*(35*b^2 - 116*a*c)*cot(d + e*x))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(24*c^4*(b^2 - 4*a*c)*e)]
    @test_int [cot(d + e*x)^5/(a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2), x, 14, (3*b*atanh((b + 2*c*cot(d + e*x))/(2*sqrt(c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(2*c^(5/2)*e) - (sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e) + (sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e) + (2*(2*a + b*cot(d + e*x)))/((b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) - (2*cot(d + e*x)^2*(2*a + b*cot(d + e*x)))/((b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) - (2*(a*(b^2 - 2*(a - c)*c) + b*c*(a + c)*cot(d + e*x)))/((b^2 + (a - c)^2)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) - ((3*b^2 - 8*a*c - 2*b*c*cot(d + e*x))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))/(c^2*(b^2 - 4*a*c)*e)]
    @test_int [cot(d + e*x)^3/(a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2), x, 10, (sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e) - (sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e) - (2*(2*a + b*cot(d + e*x)))/((b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) + (2*(a*(b^2 - 2*(a - c)*c) + b*c*(a + c)*cot(d + e*x)))/((b^2 + (a - c)^2)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))]
    @test_int [cot(d + e*x)^1/(a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2), x, 7, -((sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e)) + (sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e) - (2*(a*(b^2 - 2*(a - c)*c) + b*c*(a + c)*cot(d + e*x)))/((b^2 + (a - c)^2)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))]
    @test_int [tan(d + e*x)^1/(a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2), x, 13, atanh((2*a + b*cot(d + e*x))/(2*sqrt(a)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)))/(a^(3/2)*e) + (sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e) - (sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e) - (2*(b^2 - 2*a*c + b*c*cot(d + e*x)))/(a*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) + (2*(a*(b^2 - 2*(a - c)*c) + b*c*(a + c)*cot(d + e*x)))/((b^2 + (a - c)^2)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))]
    @test_int [tan(d + e*x)^3/(a + b*cot(d + e*x) + c*cot(d + e*x)^2)^(3/2), x, 18, -(atanh((2*a + b*cot(d + e*x))/(2*sqrt(a)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)))/(a^(3/2)*e)) + (3*(5*b^2 - 4*a*c)*atanh((2*a + b*cot(d + e*x))/(2*sqrt(a)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2))))/(8*a^(7/2)*e) - (1/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e))*(sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c + sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c - sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 + (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)))) + (1/(sqrt(2)*(a^2 + b^2 - 2*a*c + c^2)^(3/2)*e))*(sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*atanh((b^2 - (a - c)*(a - c - sqrt(a^2 + b^2 - 2*a*c + c^2)) - b*(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*cot(d + e*x))/(sqrt(2)*sqrt(2*a - 2*c + sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a^2 - b^2 - 2*a*c + c^2 - (a - c)*sqrt(a^2 + b^2 - 2*a*c + c^2))*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)))) + (2*(b^2 - 2*a*c + b*c*cot(d + e*x)))/(a*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) - (2*(a*(b^2 - 2*(a - c)*c) + b*c*(a + c)*cot(d + e*x)))/((b^2 + (a - c)^2)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) - (b*(15*b^2 - 52*a*c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)*tan(d + e*x))/(4*a^3*(b^2 - 4*a*c)*e) - (2*(b^2 - 2*a*c + b*c*cot(d + e*x))*tan(d + e*x)^2)/(a*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)) + ((5*b^2 - 12*a*c)*sqrt(a + b*cot(d + e*x) + c*cot(d + e*x)^2)*tan(d + e*x)^2)/(2*a^2*(b^2 - 4*a*c)*e)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cot(d+e*x)^m*(a+b*cot(d+e*x)^2+c*cot(d+e*x)^4)^(p/2)=#


    @test_int [cot(d + e*x)^5/sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 8, atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*sqrt(a - b + c)*e) + ((b + 2*c)*atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(4*c^(3/2)*e) - sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)/(2*c*e)]
    @test_int [cot(d + e*x)^3/sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 7, -(atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*sqrt(a - b + c)*e)) - atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*sqrt(c)*e)]
    @test_int [cot(d + e*x)^1/sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 4, atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*sqrt(a - b + c)*e)]
    @test_int [tan(d + e*x)^1/sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 8, atanh((2*a + b*cot(d + e*x)^2)/(2*sqrt(a)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*sqrt(a)*e) - atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*sqrt(a - b + c)*e)]
    @test_int [tan(d + e*x)^3/sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 11, -(atanh((2*a + b*cot(d + e*x)^2)/(2*sqrt(a)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*sqrt(a)*e)) - (b*atanh((2*a + b*cot(d + e*x)^2)/(2*sqrt(a)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(4*a^(3/2)*e) + atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*sqrt(a - b + c)*e) + (sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)*tan(d + e*x)^2)/(2*a*e)]


    @test_int [cot(d + e*x)^5*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 9, (sqrt(a - b + c)*atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(2*e) - ((b^3 + 2*b^2*c - 4*b*(a - 2*c)*c - 8*c^2*(a + 2*c))*atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(32*c^(5/2)*e) + (((b - 2*c)*(b + 4*c) + 2*c*(b + 2*c)*cot(d + e*x)^2)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))/(16*c^2*e) - (a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)^(3/2)/(6*c*e)]
    @test_int [cot(d + e*x)^3*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 8, -((sqrt(a - b + c)*atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(2*e)) + ((b^2 + 4*b*c - 4*c*(a + 2*c))*atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(16*c^(3/2)*e) - ((b - 4*c + 2*c*cot(d + e*x)^2)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))/(8*c*e)]
    @test_int [cot(d + e*x)^1*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 8, (sqrt(a - b + c)*atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(2*e) - ((b - 2*c)*atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(4*sqrt(c)*e) - sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)/(2*e)]
    @test_int [tan(d + e*x)^1*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 10, (sqrt(a)*atanh((2*a + b*cot(d + e*x)^2)/(2*sqrt(a)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(2*e) - (sqrt(a - b + c)*atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(2*e) - (sqrt(c)*atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(2*e)]
    @test_int [tan(d + e*x)^3*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4), x, 22, -((sqrt(a)*atanh((2*a + b*cot(d + e*x)^2)/(2*sqrt(a)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(2*e)) + (b*atanh((2*a + b*cot(d + e*x)^2)/(2*sqrt(a)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(4*sqrt(a)*e) + (sqrt(a - b + c)*atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(2*e) + (b*atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(4*sqrt(c)*e) - ((b - 2*c)*atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(4*sqrt(c)*e) - (sqrt(c)*atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(2*e) + (sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)*tan(d + e*x)^2)/(2*e)]


    @test_int [cot(d + e*x)^7/(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)^(3/2), x, 8, -(atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*(a - b + c)^(3/2)*e)) - atanh((b + 2*c*cot(d + e*x)^2)/(2*sqrt(c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*c^(3/2)*e) - (a*(b^2 - a*(b + 2*c)) + (b^3 + 2*a^2*c - a*b*(b + 3*c))*cot(d + e*x)^2)/(c*(a - b + c)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))]
    @test_int [cot(d + e*x)^5/(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)^(3/2), x, 6, atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*(a - b + c)^(3/2)*e) - (a*(2*a - b) + ((a - b)*b + 2*a*c)*cot(d + e*x)^2)/((a - b + c)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))]
    @test_int [cot(d + e*x)^3/(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)^(3/2), x, 6, -(atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*(a - b + c)^(3/2)*e)) + (a*(b - 2*c) + (2*a - b)*c*cot(d + e*x)^2)/((a - b + c)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))]
    @test_int [cot(d + e*x)^1/(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)^(3/2), x, 6, atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*(a - b + c)^(3/2)*e) - (b^2 - 2*a*c - b*c + (b - 2*c)*c*cot(d + e*x)^2)/((a - b + c)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))]
    @test_int [tan(d + e*x)^1/(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)^(3/2), x, 12, atanh((2*a + b*cot(d + e*x)^2)/(2*sqrt(a)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*a^(3/2)*e) - atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*(a - b + c)^(3/2)*e) - (b^2 - 2*a*c + b*c*cot(d + e*x)^2)/(a*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)) + (b^2 - 2*a*c - b*c + (b - 2*c)*c*cot(d + e*x)^2)/((a - b + c)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))]
    @test_int [tan(d + e*x)^3/(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)^(3/2), x, 16, -(atanh((2*a + b*cot(d + e*x)^2)/(2*sqrt(a)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*a^(3/2)*e)) - (3*b*atanh((2*a + b*cot(d + e*x)^2)/(2*sqrt(a)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4))))/(4*a^(5/2)*e) + atanh((2*a - b + (b - 2*c)*cot(d + e*x)^2)/(2*sqrt(a - b + c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)))/(2*(a - b + c)^(3/2)*e) + (b^2 - 2*a*c + b*c*cot(d + e*x)^2)/(a*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)) - (b^2 - 2*a*c - b*c + (b - 2*c)*c*cot(d + e*x)^2)/((a - b + c)*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)) - ((b^2 - 2*a*c + b*c*cot(d + e*x)^2)*tan(d + e*x)^2)/(a*(b^2 - 4*a*c)*e*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)) + ((3*b^2 - 8*a*c)*sqrt(a + b*cot(d + e*x)^2 + c*cot(d + e*x)^4)*tan(d + e*x)^2)/(2*a^2*(b^2 - 4*a*c)*e)]
    end