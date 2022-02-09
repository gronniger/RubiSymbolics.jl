@testset "Wester Problems" begin
    (a, b, m, x, ) = @variables a b m x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Michael*Wester=#


    #= Gradshteyn*and*Ryzhik*2.244(8) =#
    @test_int [(-5 + 3*x)^2/(-1 + 2*x)^(7/2), x, 2, -(49/(20*(-1 + 2*x)^(5/2))) + 7/(2*(-1 + 2*x)^(3/2)) - 9/(4*sqrt(-1 + 2*x))]


    #= => 1/(2*m*sqrt*(10))*log*((-5 + e^(m*x)*sqrt*(10))/(-5 - e^(m*x)*sqrt*(10)))
          (Gradshteyn*and*Ryzhik*2.314) =#
    @test_int [1/(-5/ℯ^(m*x) + 2*ℯ^(m*x)), x, 2, -(atanh(sqrt(2/5)*ℯ^(m*x))/(sqrt(10)*m))]


    #= This*example*involves*several*symbolic*parameters
       => 1/sqrt(b^2 - a^2)*log*((sqrt*(b^2 - a^2)*tan*(x/2) + a + b)/
                                (sqrt*(b^2 - a^2)*tan*(x/2) - a - b))   (a^2 < b^2)
          (Gradshteyn*and*Ryzhik*2.553(3)) =#
    #=
    [1/(a + b*cos(x)), x, 0, Assumptions -> a^2 < b^2,
     1/sqrt(b^2 - a^2)*log((sqrt(b^2 - a^2)*tan(x/2) + a + b)/
                           (sqrt(b^2 - a^2)*tan(x/2) - a - b))]
    =#
    @test_int [1/(a + b*cos(x)), x, 2, (2*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b))]
    #= The*integral*of*1/(a + 3*cos*x + 4*sin*x)*can*have*4*different*forms
       depending*on*the*value*of*a !   (Gradshteyn*and*Ryzhik*2.558(4)) =#
    @test_int [1/(3 + 3*cos(x) + 4*sin(x)), x, 2, (1/4)*log(3 + 4*tan(x/2))]
    @test_int [1/(4 + 3*cos(x) + 4*sin(x)), x, 2, (-(1/3))*log(4 + 3*cot(pi/4 + x/2))]
    @test_int [1/(5 + 3*cos(x) + 4*sin(x)), x, 1, -1/(2 + tan(x/2)), -((4 - 5*sin(x))/(4*(4*cos(x) - 3*sin(x))))]
    #= => (a = 6)*2/sqrt(11)*arctan*((3*tan*(x/2) + 4)/sqrt(11)) =#
    @test_int [1/(6 + 3*cos(x) + 4*sin(x)), x, 3, x/sqrt(11) + (2*atan((4*cos(x) - 3*sin(x))/(6 + sqrt(11) + 3*cos(x) + 4*sin(x))))/sqrt(11)]


    #= => x*log|x^2 - a^2| - 2*x + a*log|(x + a)/(x - a)|
          (Gradshteyn*and*Ryzhik*2.736(1)) =#
    #= [log(Abs(x^2 - a^2)), x, 0, x*log(Abs(x^2 - a^2)) - 2*x + a*log((x + a)/(x - a))] =#
    @test_int [(1/2)*log((-a^2 + x^2)^2), x, 4, -2*x + 2*a*atanh(x/a) + (1/2)*x*log((-a^2 + x^2)^2)]
    end
