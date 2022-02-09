@testset "4.1.8 (a+b sin)^m (c+d trig)^n" begin
    (A, B, a, b, c, x, ) = @variables A B a b c x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(A+B*Trig(c+d*x))*(a+b*sin(a+b*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*cos(c+d*x))*(a+b*sin(c+d*x))^n=#


    @test_int [(A + B*cos(x))/(a + b*sin(x)), x, 7, (2*A*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/sqrt(a^2 - b^2) + (B*log(a + b*sin(x)))/b]

    @test_int [(A + B*cos(x))/(1 + sin(x)), x, 5, B*log(1 + sin(x)) - (A*cos(x))/(1 + sin(x))]
    @test_int [(A + B*cos(x))/(1 - sin(x)), x, 5, (-B)*log(1 - sin(x)) + (A*cos(x))/(1 - sin(x))]


    @test_int [(b + c + cos(x))/(a + b*sin(x)), x, 7, (2*(b + c)*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/sqrt(a^2 - b^2) + log(a + b*sin(x))/b]
    @test_int [(b + c + cos(x))/(a - b*sin(x)), x, 7, -((2*(b + c)*atan((b - a*tan(x/2))/sqrt(a^2 - b^2)))/sqrt(a^2 - b^2)) - log(a - b*sin(x))/b]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*tan(c+d*x))*(a+b*sin(c+d*x))^n=#


    @test_int [(A + B*tan(x))/(a + b*sin(x)), x, 8, (2*A*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/sqrt(a^2 - b^2) - (B*log(1 - sin(x)))/(2*(a + b)) - (B*log(1 + sin(x)))/(2*(a - b)) + (a*B*log(a + b*sin(x)))/(a^2 - b^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*cot(c+d*x))*(a+b*sin(c+d*x))^n=#


    @test_int [(A + B*cot(x))/(a + b*sin(x)), x, 9, (2*A*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/sqrt(a^2 - b^2) + (B*log(sin(x)))/a - (B*log(a + b*sin(x)))/a]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*sec(c+d*x))*(a+b*sin(c+d*x))^n=#


    @test_int [(A + B*sec(x))/(a + b*sin(x)), x, 12, (2*A*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/sqrt(a^2 - b^2) - (B*log(1 - sin(x)))/(2*(a + b)) + (B*log(1 + sin(x)))/(2*(a - b)) - (b*B*log(a + b*sin(x)))/(a^2 - b^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*csc(c+d*x))*(a+b*sin(c+d*x))^n=#


    @test_int [(A + B*csc(x))/(a + b*sin(x)), x, 6, (2*(a*A - b*B)*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/(a*sqrt(a^2 - b^2)) - (B*atanh(cos(x)))/a]
    end
