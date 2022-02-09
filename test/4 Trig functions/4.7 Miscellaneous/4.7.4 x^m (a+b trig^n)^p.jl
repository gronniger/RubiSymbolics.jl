@testset "4.7.4 x^m (a+b trig^n)^p" begin
    (a, b, c, d, x, ) = @variables a b c d x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*x^m*(a+b*trig(c+d*x)^n)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*x^m*(a+b*sin(c+d*x)^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*sin(c+d*x)^2)^p=#


    @test_int [x/(a + b*sin(x)^2), x, 9, -((im*x*log(1 - (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b))) + (im*x*log(1 - (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - PolyLog(2, (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))/(4*sqrt(a)*sqrt(a + b)) + PolyLog(2, (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))/(4*sqrt(a)*sqrt(a + b))]
    @test_int [x^2/(a + b*sin(x)^2), x, 11, -((im*x^2*log(1 - (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b))) + (im*x^2*log(1 - (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - (x*PolyLog(2, (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) + (x*PolyLog(2, (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - (im*PolyLog(3, (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b)) + (im*PolyLog(3, (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b))]
    @test_int [x^3/(a + b*sin(x)^2), x, 13, -((im*x^3*log(1 - (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b))) + (im*x^3*log(1 - (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - (3*x^2*PolyLog(2, (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b)) + (3*x^2*PolyLog(2, (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b)) - (3*im*x*PolyLog(3, (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b)) + (3*im*x*PolyLog(3, (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b)) + (3*PolyLog(4, (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(8*sqrt(a)*sqrt(a + b)) - (3*PolyLog(4, (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(8*sqrt(a)*sqrt(a + b))]


    @test_int [x/(a + b*sin(c + d*x)^2)^2, x, 12, -((im*(2*a + b)*x*log(1 - (b*ℯ^(2*im*(c + d*x)))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(4*a^(3/2)*(a + b)^(3/2)*d)) + (im*(2*a + b)*x*log(1 - (b*ℯ^(2*im*(c + d*x)))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(4*a^(3/2)*(a + b)^(3/2)*d) - log(2*a + b - b*cos(2*c + 2*d*x))/(4*a*(a + b)*d^2) - ((2*a + b)*PolyLog(2, (b*ℯ^(2*im*(c + d*x)))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(8*a^(3/2)*(a + b)^(3/2)*d^2) + ((2*a + b)*PolyLog(2, (b*ℯ^(2*im*(c + d*x)))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(8*a^(3/2)*(a + b)^(3/2)*d^2) + (b*x*sin(2*c + 2*d*x))/(2*a*(a + b)*d*(2*a + b - b*cos(2*c + 2*d*x)))]


    @test_int [x*sqrt(sin(x)^2), x, 3, sqrt(sin(x)^2) - x*cot(x)*sqrt(sin(x)^2)]


    #= ::Section:: =#
    #=Integrands*of*the*form*x^m*(a+b*cos(c+d*x)^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*cos(c+d*x)^2)^p=#


    @test_int [x/(a + b*cos(x)^2), x, 9, -((im*x*log(1 + (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b))) + (im*x*log(1 + (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - PolyLog(2, -((b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b)) + PolyLog(2, -((b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(4*sqrt(a)*sqrt(a + b))]
    @test_int [x^2/(a + b*cos(x)^2), x, 11, -((im*x^2*log(1 + (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b))) + (im*x^2*log(1 + (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - (x*PolyLog(2, -((b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(2*sqrt(a)*sqrt(a + b)) + (x*PolyLog(2, -((b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(2*sqrt(a)*sqrt(a + b)) - (im*PolyLog(3, -((b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b)) + (im*PolyLog(3, -((b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b))]
    @test_int [x^3/(a + b*cos(x)^2), x, 13, -((im*x^3*log(1 + (b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b))) + (im*x^3*log(1 + (b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(2*sqrt(a)*sqrt(a + b)) - (3*x^2*PolyLog(2, -((b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b)) + (3*x^2*PolyLog(2, -((b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b)) - (3*im*x*PolyLog(3, -((b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b)) + (3*im*x*PolyLog(3, -((b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(4*sqrt(a)*sqrt(a + b)) + (3*PolyLog(4, -((b*ℯ^(2*im*x))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(8*sqrt(a)*sqrt(a + b)) - (3*PolyLog(4, -((b*ℯ^(2*im*x))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(8*sqrt(a)*sqrt(a + b))]


    @test_int [x/(a + b*cos(c + d*x)^2)^2, x, 12, -((im*(2*a + b)*x*log(1 + (b*ℯ^(2*im*(c + d*x)))/(2*a + b - 2*sqrt(a)*sqrt(a + b))))/(4*a^(3/2)*(a + b)^(3/2)*d)) + (im*(2*a + b)*x*log(1 + (b*ℯ^(2*im*(c + d*x)))/(2*a + b + 2*sqrt(a)*sqrt(a + b))))/(4*a^(3/2)*(a + b)^(3/2)*d) - log(2*a + b + b*cos(2*c + 2*d*x))/(4*a*(a + b)*d^2) - ((2*a + b)*PolyLog(2, -((b*ℯ^(2*im*(c + d*x)))/(2*a + b - 2*sqrt(a)*sqrt(a + b)))))/(8*a^(3/2)*(a + b)^(3/2)*d^2) + ((2*a + b)*PolyLog(2, -((b*ℯ^(2*im*(c + d*x)))/(2*a + b + 2*sqrt(a)*sqrt(a + b)))))/(8*a^(3/2)*(a + b)^(3/2)*d^2) - (b*x*sin(2*c + 2*d*x))/(2*a*(a + b)*d*(2*a + b + b*cos(2*c + 2*d*x)))]
    end
