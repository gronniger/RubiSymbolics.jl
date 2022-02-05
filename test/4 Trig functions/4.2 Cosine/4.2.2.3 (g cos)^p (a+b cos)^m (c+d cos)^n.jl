@testset "4.2.2.3 (g cos)^p (a+b cos)^m (c+d cos)^n" begin
    @variables a, c, e, f, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*problems*of*the*form*(g*cos(e+f*x))^p*(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*cos(e+f*x))^p*(a+a*cos(e+f*x))^m*(c-c*cos(e+f*x))^n=#


    @test_int [((a + a*cos(e + f*x))^2*sec(e + f*x)^2)/(-c + c*cos(e + f*x)), x, 6, -((3*a^2*atanh(sin(e + f*x)))/(c*f)) + (4*a^2*sin(e + f*x))/(c*f*(1 - cos(e + f*x))) - (a^2*tan(e + f*x))/(c*f)]
    end
