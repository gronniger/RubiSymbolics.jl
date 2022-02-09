@testset "4.2.2.2 (g sin)^p (a+b cos)^m (c+d cos)^n" begin
    (a, b, d, e, f, g, x, ) = @variables a b d e f g x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+a*cos(e+f*x))^m*(c-c*cos(e+f*x))^n=#


    #= ::Title:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+a*cos(e+f*x))^m*(c+d*cos(e+f*x))^n=#


    #= ::Title:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^m*(a+b*cos(e+f*x))^n / (c+d*cos(e+f*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^(m/2)*(d*cos(e+f*x))^(n/2) / (a+b*cos(e+f*x))=#


    @test_int [sqrt(g*sin(e + f*x))*sqrt(d*cos(e + f*x))/(a + b*cos(e + f*x)), x, 16, -((sqrt(d)*sqrt(g)*atan(1 - (sqrt(2)*sqrt(d)*sqrt(g*sin(e + f*x)))/(sqrt(g)*sqrt(d*cos(e + f*x)))))/(sqrt(2)*b*f)) + (sqrt(d)*sqrt(g)*atan(1 + (sqrt(2)*sqrt(d)*sqrt(g*sin(e + f*x)))/(sqrt(g)*sqrt(d*cos(e + f*x)))))/(sqrt(2)*b*f) + (2*sqrt(2)*a*d*sqrt(g)*sqrt(cos(e + f*x))*Elliptic.Pi(-(sqrt(-a + b)/sqrt(a + b)), asin(sqrt(g*sin(e + f*x))/(sqrt(g)*sqrt(1 + cos(e + f*x)))), -1))/(b*sqrt(-a + b)*sqrt(a + b)*f*sqrt(d*cos(e + f*x))) - (2*sqrt(2)*a*d*sqrt(g)*sqrt(cos(e + f*x))*Elliptic.Pi(sqrt(-a + b)/sqrt(a + b), asin(sqrt(g*sin(e + f*x))/(sqrt(g)*sqrt(1 + cos(e + f*x)))), -1))/(b*sqrt(-a + b)*sqrt(a + b)*f*sqrt(d*cos(e + f*x))) + (sqrt(d)*sqrt(g)*log(sqrt(g) - (sqrt(2)*sqrt(d)*sqrt(g*sin(e + f*x)))/sqrt(d*cos(e + f*x)) + sqrt(g)*tan(e + f*x)))/(2*sqrt(2)*b*f) - (sqrt(d)*sqrt(g)*log(sqrt(g) + (sqrt(2)*sqrt(d)*sqrt(g*sin(e + f*x)))/sqrt(d*cos(e + f*x)) + sqrt(g)*tan(e + f*x)))/(2*sqrt(2)*b*f)]
    @test_int [sqrt(d*cos(e + f*x))/(sqrt(g*sin(e + f*x))*(a + b*cos(e + f*x))), x, 4, (2*sqrt(2)*sqrt(d)*Elliptic.Pi(-(a/(b - sqrt(-a^2 + b^2))), asin(sqrt(d*cos(e + f*x))/(sqrt(d)*sqrt(1 + sin(e + f*x)))), -1)*sqrt(sin(e + f*x)))/(sqrt(-a^2 + b^2)*f*sqrt(g*sin(e + f*x))) - (2*sqrt(2)*sqrt(d)*Elliptic.Pi(-(a/(b + sqrt(-a^2 + b^2))), asin(sqrt(d*cos(e + f*x))/(sqrt(d)*sqrt(1 + sin(e + f*x)))), -1)*sqrt(sin(e + f*x)))/(sqrt(-a^2 + b^2)*f*sqrt(g*sin(e + f*x)))]


    @test_int [sqrt(g*sin(e + f*x))/(sqrt(d*cos(e + f*x))*(a + b*cos(e + f*x))), x, 5, -((2*sqrt(2)*sqrt(g)*sqrt(cos(e + f*x))*Elliptic.Pi(-(sqrt(-a + b)/sqrt(a + b)), asin(sqrt(g*sin(e + f*x))/(sqrt(g)*sqrt(1 + cos(e + f*x)))), -1))/(sqrt(-a + b)*sqrt(a + b)*f*sqrt(d*cos(e + f*x)))) + (2*sqrt(2)*sqrt(g)*sqrt(cos(e + f*x))*Elliptic.Pi(sqrt(-a + b)/sqrt(a + b), asin(sqrt(g*sin(e + f*x))/(sqrt(g)*sqrt(1 + cos(e + f*x)))), -1))/(sqrt(-a + b)*sqrt(a + b)*f*sqrt(d*cos(e + f*x)))]
    @test_int [1/(sqrt(g*sin(e + f*x))*sqrt(d*cos(e + f*x))*(a + b*cos(e + f*x))), x, 7, -((2*sqrt(2)*b*Elliptic.Pi(-(a/(b - sqrt(-a^2 + b^2))), asin(sqrt(d*cos(e + f*x))/(sqrt(d)*sqrt(1 + sin(e + f*x)))), -1)*sqrt(sin(e + f*x)))/(a*sqrt(-a^2 + b^2)*sqrt(d)*f*sqrt(g*sin(e + f*x)))) + (2*sqrt(2)*b*Elliptic.Pi(-(a/(b + sqrt(-a^2 + b^2))), asin(sqrt(d*cos(e + f*x))/(sqrt(d)*sqrt(1 + sin(e + f*x)))), -1)*sqrt(sin(e + f*x)))/(a*sqrt(-a^2 + b^2)*sqrt(d)*f*sqrt(g*sin(e + f*x))) + (Elliptic.F(e - pi/4 + f*x, 2)*sqrt(sin(2*e + 2*f*x)))/(a*f*sqrt(d*cos(e + f*x))*sqrt(g*sin(e + f*x)))]
    end
