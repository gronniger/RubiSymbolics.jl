@testset "4.6.4.2 (a+b csc)^m (d csc)^n (A+B csc+C csc^2)" begin
    @variables A, B, C, a, b, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(a+b*csc(e+f*x))^m*(d*csc(e+f*x))^n*(A+B*csc(e+f*x)+C*csc(e+f*x)^2)=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^n*(a+b*csc(e+f*x))^m*(A+C*csc(e+f*x)^2)=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^n*(a+b*csc(e+f*x))^m*(B*csc(e+f*x)+C*csc(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^n*(a+b*csc(e+f*x))^m*(A+B*csc(e+f*x)+C*csc(e+f*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^(n/2)*(a+b*csc(e+f*x))^m*(A+B*csc(e+f*x)+C*csc(e+f*x)^2)=#


    @test_int [((a + b*csc(x))*(A + B*csc(x) + C*csc(x)^2))/csc(x)^(1/2), x, 7, -2*(b*B + a*C)*cos(x)*sqrt(csc(x)) - (2/3)*b*C*cos(x)*csc(x)^(3/2) + 2*(b*B - a*(A - C))*sqrt(csc(x))*EllipticE(pi/4 - x/2, 2)*sqrt(sin(x)) - (2/3)*(3*A*b + 3*a*B + b*C)*sqrt(csc(x))*EllipticF(pi/4 - x/2, 2)*sqrt(sin(x))]
    end
