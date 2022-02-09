@testset "4.1.4.1 (a+b sin)^m (A+B sin+C sin^2)" begin
    (A, B, C, a, b, e, f, m, x, ) = @variables A B C a b e f m x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(b*sin(e+f*x))^m*(A+C*sin(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*sin(e+f*x))^m*(A+C*sin(e+f*x)^2)*when*A*(m+2)+C*(m+1)=0=#


    @test_int [sin(e + f*x)^m*(1 + m - (2 + m)*sin(e + f*x)^2), x, 1, (cos(e + f*x)*sin(e + f*x)^(1 + m))/f]

    @test_int [sin(e + f*x)^5*(6 - 7*sin(e + f*x)^2), x, 1, (cos(e + f*x)*sin(e + f*x)^6)/f]
    @test_int [sin(e + f*x)^4*(5 - 6*sin(e + f*x)^2), x, 1, (cos(e + f*x)*sin(e + f*x)^5)/f]
    @test_int [sin(e + f*x)^3*(4 - 5*sin(e + f*x)^2), x, 1, (cos(e + f*x)*sin(e + f*x)^4)/f]
    @test_int [sin(e + f*x)^2*(3 - 4*sin(e + f*x)^2), x, 1, (cos(e + f*x)*sin(e + f*x)^3)/f]
    @test_int [sin(e + f*x)^1*(2 - 3*sin(e + f*x)^2), x, 1, (cos(e + f*x)*sin(e + f*x)^2)/f]
    @test_int [sin(e + f*x)^0*(1 - 2*sin(e + f*x)^2), x, 3, (cos(e + f*x)*sin(e + f*x))/f]
    @test_int [csc(e + f*x)^1*(0 - 1*sin(e + f*x)^2), x, 1, cos(e + f*x)/f]
    @test_int [csc(e + f*x)^2*(-1 - 0*sin(e + f*x)^2), x, 2, cot(e + f*x)/f]
    @test_int [csc(e + f*x)^3*(-2 + 1*sin(e + f*x)^2), x, 1, (cot(e + f*x)*csc(e + f*x))/f]
    @test_int [csc(e + f*x)^4*(-3 + 2*sin(e + f*x)^2), x, 1, (cot(e + f*x)*csc(e + f*x)^2)/f]
    @test_int [csc(e + f*x)^5*(-4 + 3*sin(e + f*x)^2), x, 1, (cot(e + f*x)*csc(e + f*x)^3)/f]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a+b*sin(e+f*x))^m*(A+C*sin(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*sin(e+f*x))^m*(A+C*sin(e+f*x)^2)=#


    @test_int [(a + a*sin(e + f*x))^m*(A + C*sin(e + f*x)^2), x, 4, If(13>=8, (C*cos(e + f*x)*(a + a*sin(e + f*x))^m)/(f*(2 + 3*m + m^2)) - (2^(1/2 + m)*(C*(1 + m + m^2) + A*(2 + 3*m + m^2))*cos(e + f*x)*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - sin(e + f*x)))*(1 + sin(e + f*x))^(-(1/2) - m)*(a + a*sin(e + f*x))^m)/(f*(1 + m)*(2 + m)) - (C*cos(e + f*x)*(a + a*sin(e + f*x))^(1 + m))/(a*f*(2 + m)), (C*cos(e + f*x)*(a + a*sin(e + f*x))^m)/(f*(2 + 3*m + m^2)) - (2^(1/2 + m)*(C*(1 + m + m^2) + A*(2 + 3*m + m^2))*cos(e + f*x)*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - sin(e + f*x)))*(1 + sin(e + f*x))^(-(1/2) - m)*(a + a*sin(e + f*x))^m)/(f*(2 + 3*m + m^2)) - (C*cos(e + f*x)*(a + a*sin(e + f*x))^(1 + m))/(a*f*(2 + m)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*sin(e+f*x))^m*(A+C*sin(e+f*x)^2)=#


    @test_int [(a + b*sin(e + f*x))^m*(A - A*sin(e + f*x)^2), x, 7, (4*sqrt(2)*A*AppellF1(1/2, -(3/2), -m, 3/2, (1/2)*(1 - sin(e + f*x)), (b*(1 - sin(e + f*x)))/(a + b))*cos(e + f*x)*(a + b*sin(e + f*x))^m)/(((a + b*sin(e + f*x))/(a + b))^m*(f*sqrt(1 + sin(e + f*x)))) - (4*sqrt(2)*A*AppellF1(1/2, -(1/2), -m, 3/2, (1/2)*(1 - sin(e + f*x)), (b*(1 - sin(e + f*x)))/(a + b))*cos(e + f*x)*(a + b*sin(e + f*x))^m)/(((a + b*sin(e + f*x))/(a + b))^m*(f*sqrt(1 + sin(e + f*x))))]


    @test_int [(a + b*sin(e + f*x))^m*(A + C*sin(e + f*x)^2), x, 8, -((C*cos(e + f*x)*(a + b*sin(e + f*x))^(1 + m))/(b*f*(2 + m))) + (sqrt(2)*a*(a + b)*C*AppellF1(1/2, 1/2, -1 - m, 3/2, (1/2)*(1 - sin(e + f*x)), (b*(1 - sin(e + f*x)))/(a + b))*cos(e + f*x)*(a + b*sin(e + f*x))^m)/(((a + b*sin(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + sin(e + f*x)))) - (sqrt(2)*(a^2*C + b^2*(C*(1 + m) + A*(2 + m)))*AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - sin(e + f*x)), (b*(1 - sin(e + f*x)))/(a + b))*cos(e + f*x)*(a + b*sin(e + f*x))^m)/(((a + b*sin(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + sin(e + f*x))))]


    @test_int [sin(e + f*x)^5*(A + C*sin(e + f*x)^2), x, 3, -(((A + C)*cos(e + f*x))/f) + ((2*A + 3*C)*cos(e + f*x)^3)/(3*f) - ((A + 3*C)*cos(e + f*x)^5)/(5*f) + (C*cos(e + f*x)^7)/(7*f)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a+b*sin(e+f*x))^m*(A+B*sin(e+f*x)+C*sin(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*sin(e+f*x))^m*(A+B*sin(e+f*x)+C*sin(e+f*x)^2)=#


    @test_int [(a + a*sin(e + f*x))^m*(A + B*sin(e + f*x) + C*sin(e + f*x)^2), x, 4, If(13>=8, ((C - B*(2 + m))*cos(e + f*x)*(a + a*sin(e + f*x))^m)/(f*(1 + m)*(2 + m)) - (2^(1/2 + m)*(B*m*(2 + m) + C*(1 + m + m^2) + A*(2 + 3*m + m^2))*cos(e + f*x)*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - sin(e + f*x)))*(1 + sin(e + f*x))^(-(1/2) - m)*(a + a*sin(e + f*x))^m)/(f*(1 + m)*(2 + m)) - (C*cos(e + f*x)*(a + a*sin(e + f*x))^(1 + m))/(a*f*(2 + m)), ((C - B*(2 + m))*cos(e + f*x)*(a + a*sin(e + f*x))^m)/(f*(1 + m)*(2 + m)) - (2^(1/2 + m)*(B*m*(2 + m) + C*(1 + m + m^2) + A*(2 + 3*m + m^2))*cos(e + f*x)*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - sin(e + f*x)))*(1 + sin(e + f*x))^(-(1/2) - m)*(a + a*sin(e + f*x))^m)/(f*(2 + 3*m + m^2)) - (C*cos(e + f*x)*(a + a*sin(e + f*x))^(1 + m))/(a*f*(2 + m)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*sin(e+f*x))^m*(A+B*sin(e+f*x)+C*sin(e+f*x)^2)=#


    @test_int [(a + b*sin(e + f*x))^m*(A + (A + C)*sin(e + f*x) + C*sin(e + f*x)^2), x, 7, -((4*sqrt(2)*C*AppellF1(1/2, -(3/2), -m, 3/2, (1/2)*(1 - sin(e + f*x)), (b*(1 - sin(e + f*x)))/(a + b))*cos(e + f*x)*(a + b*sin(e + f*x))^m)/(((a + b*sin(e + f*x))/(a + b))^m*(f*sqrt(1 + sin(e + f*x))))) - (2*sqrt(2)*(A - C)*AppellF1(1/2, -(1/2), -m, 3/2, (1/2)*(1 - sin(e + f*x)), (b*(1 - sin(e + f*x)))/(a + b))*cos(e + f*x)*(a + b*sin(e + f*x))^m)/(((a + b*sin(e + f*x))/(a + b))^m*(f*sqrt(1 + sin(e + f*x))))]


    @test_int [(a + b*sin(e + f*x))^m*(A + B*sin(e + f*x) + C*sin(e + f*x)^2), x, 8, -((C*cos(e + f*x)*(a + b*sin(e + f*x))^(1 + m))/(b*f*(2 + m))) + (sqrt(2)*(a + b)*(a*C - b*B*(2 + m))*AppellF1(1/2, 1/2, -1 - m, 3/2, (1/2)*(1 - sin(e + f*x)), (b*(1 - sin(e + f*x)))/(a + b))*cos(e + f*x)*(a + b*sin(e + f*x))^m)/(((a + b*sin(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + sin(e + f*x)))) - (sqrt(2)*(a^2*C + b^2*C*(1 + m) + A*b^2*(2 + m) - a*b*B*(2 + m))*AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - sin(e + f*x)), (b*(1 - sin(e + f*x)))/(a + b))*cos(e + f*x)*(a + b*sin(e + f*x))^m)/(((a + b*sin(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + sin(e + f*x))))]
    end
