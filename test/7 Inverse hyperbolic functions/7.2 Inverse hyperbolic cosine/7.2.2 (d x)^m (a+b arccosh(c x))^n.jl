@testset "7.2.2 (d x)^m (a+b arccosh(c x))^n" begin
    (a, b, c, d, f, m, n, x, ) = @variables a b c d f m n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*acosh(c*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*acosh(a*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acosh(c*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^4*acosh(a*x), x, 6, -((8*sqrt(-1 + a*x)*sqrt(1 + a*x))/(75*a^5)) - (4*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(75*a^3) - (x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(25*a) + (1/5)*x^5*acosh(a*x)]
    @test_int [x^3*acosh(a*x), x, 5, -((3*x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(32*a^3)) - (x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(16*a) - (3*acosh(a*x))/(32*a^4) + (1/4)*x^4*acosh(a*x)]
    @test_int [x^2*acosh(a*x), x, 4, -((2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(9*a^3)) - (x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(9*a) + (1/3)*x^3*acosh(a*x)]
    @test_int [x^1*acosh(a*x), x, 3, -((x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(4*a)) - acosh(a*x)/(4*a^2) + (1/2)*x^2*acosh(a*x)]
    @test_int [x^0*acosh(a*x), x, 2, -((sqrt(-1 + a*x)*sqrt(1 + a*x))/a) + x*acosh(a*x)]
    @test_int [acosh(a*x)/x^1, x, 5, (-(1/2))*acosh(a*x)^2 + acosh(a*x)*log(1 + ℯ^(2*acosh(a*x))) + (1/2)*PolyLog(2, -ℯ^(2*acosh(a*x)))]
    @test_int [acosh(a*x)/x^2, x, 3, -(acosh(a*x)/x) + a*atan(sqrt(-1 + a*x)*sqrt(1 + a*x))]
    @test_int [acosh(a*x)/x^3, x, 2, (a*sqrt(-1 + a*x)*sqrt(1 + a*x))/(2*x) - acosh(a*x)/(2*x^2)]
    @test_int [acosh(a*x)/x^4, x, 5, (a*sqrt(-1 + a*x)*sqrt(1 + a*x))/(6*x^2) - acosh(a*x)/(3*x^3) + (1/6)*a^3*atan(sqrt(-1 + a*x)*sqrt(1 + a*x))]
    @test_int [acosh(a*x)/x^5, x, 4, (a*sqrt(-1 + a*x)*sqrt(1 + a*x))/(12*x^3) + (a^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(6*x) - acosh(a*x)/(4*x^4)]
    @test_int [acosh(a*x)/x^6, x, 7, (a*sqrt(-1 + a*x)*sqrt(1 + a*x))/(20*x^4) + (3*a^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(40*x^2) - acosh(a*x)/(5*x^5) + (3/40)*a^5*atan(sqrt(-1 + a*x)*sqrt(1 + a*x))]


    @test_int [x^4*acosh(a*x)^2, x, 7, (16*x)/(75*a^4) + (8*x^3)/(225*a^2) + (2*x^5)/125 - (16*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(75*a^5) - (8*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(75*a^3) - (2*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(25*a) + (x^5*acosh(a*x)^2)/5]
    @test_int [x^3*acosh(a*x)^2, x, 6, (3*x^2)/(32*a^2) + x^4/32 - (3*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(16*a^3) - (x^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(8*a) - (3*acosh(a*x)^2)/(32*a^4) + (x^4*acosh(a*x)^2)/4]
    @test_int [x^2*acosh(a*x)^2, x, 5, (4*x)/(9*a^2) + (2*x^3)/27 - (4*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(9*a^3) - (2*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(9*a) + (x^3*acosh(a*x)^2)/3]
    @test_int [x^1*acosh(a*x)^2, x, 4, x^2/4 - (x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(2*a) - acosh(a*x)^2/(4*a^2) + (x^2*acosh(a*x)^2)/2]
    @test_int [x^0*acosh(a*x)^2, x, 3, 2*x - (2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/a + x*acosh(a*x)^2]
    @test_int [acosh(a*x)^2/x^1, x, 6, -acosh(a*x)^3/3 + acosh(a*x)^2*log(1 + ℯ^(2*acosh(a*x))) + acosh(a*x)*PolyLog(2, -ℯ^(2*acosh(a*x))) - PolyLog(3, -ℯ^(2*acosh(a*x)))/2]
    @test_int [acosh(a*x)^2/x^2, x, 7, -(acosh(a*x)^2/x) + 4*a*acosh(a*x)*atan(ℯ^acosh(a*x)) - (2*im)*a*PolyLog(2, (-im)*ℯ^acosh(a*x)) + (2*im)*a*PolyLog(2, im*ℯ^acosh(a*x))]
    @test_int [acosh(a*x)^2/x^3, x, 3, (a*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/x - acosh(a*x)^2/(2*x^2) - a^2*log(x)]
    @test_int [acosh(a*x)^2/x^4, x, 9, a^2/(3*x) + (a*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(3*x^2) - acosh(a*x)^2/(3*x^3) + (2*a^3*acosh(a*x)*atan(ℯ^acosh(a*x)))/3 - (im/3)*a^3*PolyLog(2, (-im)*ℯ^acosh(a*x)) + (im/3)*a^3*PolyLog(2, im*ℯ^acosh(a*x))]
    @test_int [acosh(a*x)^2/x^5, x, 5, a^2/(12*x^2) + (a*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(6*x^3) + (a^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(3*x) - acosh(a*x)^2/(4*x^4) - (a^4*log(x))/3]


    @test_int [x^4*acosh(a*x)^3, x, 16, -((4144*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5625*a^5)) - (272*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5625*a^3) - (6*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(625*a) + (16*x*acosh(a*x))/(25*a^4) + (8*x^3*acosh(a*x))/(75*a^2) + (6/125)*x^5*acosh(a*x) - (8*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(25*a^5) - (4*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(25*a^3) - (3*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(25*a) + (1/5)*x^5*acosh(a*x)^3]
    @test_int [x^3*acosh(a*x)^3, x, 12, -((45*x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(256*a^3)) - (3*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(128*a) - (45*acosh(a*x))/(256*a^4) + (9*x^2*acosh(a*x))/(32*a^2) + (3/32)*x^4*acosh(a*x) - (9*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(32*a^3) - (3*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(16*a) - (3*acosh(a*x)^3)/(32*a^4) + (1/4)*x^4*acosh(a*x)^3]
    @test_int [x^2*acosh(a*x)^3, x, 9, -((40*sqrt(-1 + a*x)*sqrt(1 + a*x))/(27*a^3)) - (2*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(27*a) + (4*x*acosh(a*x))/(3*a^2) + (2/9)*x^3*acosh(a*x) - (2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(3*a^3) - (x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(3*a) + (1/3)*x^3*acosh(a*x)^3]
    @test_int [x^1*acosh(a*x)^3, x, 6, -((3*x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(8*a)) - (3*acosh(a*x))/(8*a^2) + (3/4)*x^2*acosh(a*x) - (3*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(4*a) - acosh(a*x)^3/(4*a^2) + (1/2)*x^2*acosh(a*x)^3]
    @test_int [x^0*acosh(a*x)^3, x, 4, -((6*sqrt(-1 + a*x)*sqrt(1 + a*x))/a) + 6*x*acosh(a*x) - (3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/a + x*acosh(a*x)^3]
    @test_int [acosh(a*x)^3/x^1, x, 7, (-(1/4))*acosh(a*x)^4 + acosh(a*x)^3*log(1 + ℯ^(2*acosh(a*x))) + (3/2)*acosh(a*x)^2*PolyLog(2, -ℯ^(2*acosh(a*x))) - (3/2)*acosh(a*x)*PolyLog(3, -ℯ^(2*acosh(a*x))) + (3/4)*PolyLog(4, -ℯ^(2*acosh(a*x)))]
    @test_int [acosh(a*x)^3/x^2, x, 9, -(acosh(a*x)^3/x) + 6*a*acosh(a*x)^2*atan(ℯ^acosh(a*x)) - 6*im*a*acosh(a*x)*PolyLog(2, (-im)*ℯ^acosh(a*x)) + 6*im*a*acosh(a*x)*PolyLog(2, im*ℯ^acosh(a*x)) + 6*im*a*PolyLog(3, (-im)*ℯ^acosh(a*x)) - 6*im*a*PolyLog(3, im*ℯ^acosh(a*x))]
    @test_int [acosh(a*x)^3/x^3, x, 7, (3/2)*a^2*acosh(a*x)^2 + (3*a*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(2*x) - acosh(a*x)^3/(2*x^2) - 3*a^2*acosh(a*x)*log(1 + ℯ^(2*acosh(a*x))) - (3/2)*a^2*PolyLog(2, -ℯ^(2*acosh(a*x)))]
    @test_int [acosh(a*x)^3/x^4, x, 13, (a^2*acosh(a*x))/x + (a*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(2*x^2) - acosh(a*x)^3/(3*x^3) + a^3*acosh(a*x)^2*atan(ℯ^acosh(a*x)) - a^3*atan(sqrt(-1 + a*x)*sqrt(1 + a*x)) - im*a^3*acosh(a*x)*PolyLog(2, (-im)*ℯ^acosh(a*x)) + im*a^3*acosh(a*x)*PolyLog(2, im*ℯ^acosh(a*x)) + im*a^3*PolyLog(3, (-im)*ℯ^acosh(a*x)) - im*a^3*PolyLog(3, im*ℯ^acosh(a*x))]
    @test_int [acosh(a*x)^3/x^5, x, 10, -(a^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(4*x) + (a^2*acosh(a*x))/(4*x^2) + (a^4*acosh(a*x)^2)/2 + (a*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(4*x^3) + (a^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^2)/(2*x) - acosh(a*x)^3/(4*x^4) - a^4*acosh(a*x)*log(1 + ℯ^(2*acosh(a*x))) - (a^4*PolyLog(2, -ℯ^(2*acosh(a*x))))/2]


    @test_int [x^5*acosh(a*x)^4, x, 23, (245*x^2)/(1152*a^4) + (65*x^4)/(3456*a^2) + x^6/324 - (245*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(576*a^5) - (65*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(864*a^3) - (x^5*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(54*a) - (245*acosh(a*x)^2)/(1152*a^6) + (5*x^2*acosh(a*x)^2)/(16*a^4) + (5*x^4*acosh(a*x)^2)/(48*a^2) + (x^6*acosh(a*x)^2)/18 - (5*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(24*a^5) - (5*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(36*a^3) - (x^5*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(9*a) - (5*acosh(a*x)^4)/(96*a^6) + (x^6*acosh(a*x)^4)/6]
    @test_int [x^4*acosh(a*x)^4, x, 19, (16576*x)/(5625*a^4) + (1088*x^3)/(16875*a^2) + (24*x^5)/3125 - (16576*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(5625*a^5) - (1088*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(5625*a^3) - (24*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(625*a) + (32*x*acosh(a*x)^2)/(25*a^4) + (16*x^3*acosh(a*x)^2)/(75*a^2) + (12/125)*x^5*acosh(a*x)^2 - (32*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(75*a^5) - (16*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(75*a^3) - (4*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(25*a) + (1/5)*x^5*acosh(a*x)^4]
    @test_int [x^3*acosh(a*x)^4, x, 14, (45*x^2)/(128*a^2) + (3*x^4)/128 - (45*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(64*a^3) - (3*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(32*a) - (45*acosh(a*x)^2)/(128*a^4) + (9*x^2*acosh(a*x)^2)/(16*a^2) + (3/16)*x^4*acosh(a*x)^2 - (3*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(8*a^3) - (x^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(4*a) - (3*acosh(a*x)^4)/(32*a^4) + (1/4)*x^4*acosh(a*x)^4]
    @test_int [x^2*acosh(a*x)^4, x, 11, (160*x)/(27*a^2) + (8*x^3)/81 - (160*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(27*a^3) - (8*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(27*a) + (8*x*acosh(a*x)^2)/(3*a^2) + (4/9)*x^3*acosh(a*x)^2 - (8*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(9*a^3) - (4*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(9*a) + (1/3)*x^3*acosh(a*x)^4]
    @test_int [x^1*acosh(a*x)^4, x, 7, (3*x^2)/4 - (3*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/(2*a) - (3*acosh(a*x)^2)/(4*a^2) + (3/2)*x^2*acosh(a*x)^2 - (x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/a - acosh(a*x)^4/(4*a^2) + (1/2)*x^2*acosh(a*x)^4]
    @test_int [x^0*acosh(a*x)^4, x, 5, 24*x - (24*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x))/a + 12*x*acosh(a*x)^2 - (4*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/a + x*acosh(a*x)^4]
    @test_int [acosh(a*x)^4/x^1, x, 8, (-(1/5))*acosh(a*x)^5 + acosh(a*x)^4*log(1 + ℯ^(2*acosh(a*x))) + 2*acosh(a*x)^3*PolyLog(2, -ℯ^(2*acosh(a*x))) - 3*acosh(a*x)^2*PolyLog(3, -ℯ^(2*acosh(a*x))) + 3*acosh(a*x)*PolyLog(4, -ℯ^(2*acosh(a*x))) - (3/2)*PolyLog(5, -ℯ^(2*acosh(a*x)))]
    @test_int [acosh(a*x)^4/x^2, x, 11, -(acosh(a*x)^4/x) + 8*a*acosh(a*x)^3*atan(ℯ^acosh(a*x)) - 12*im*a*acosh(a*x)^2*PolyLog(2, (-im)*ℯ^acosh(a*x)) + 12*im*a*acosh(a*x)^2*PolyLog(2, im*ℯ^acosh(a*x)) + 24*im*a*acosh(a*x)*PolyLog(3, (-im)*ℯ^acosh(a*x)) - 24*im*a*acosh(a*x)*PolyLog(3, im*ℯ^acosh(a*x)) - 24*im*a*PolyLog(4, (-im)*ℯ^acosh(a*x)) + 24*im*a*PolyLog(4, im*ℯ^acosh(a*x))]
    @test_int [acosh(a*x)^4/x^3, x, 8, 2*a^2*acosh(a*x)^3 + (2*a*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/x - acosh(a*x)^4/(2*x^2) - 6*a^2*acosh(a*x)^2*log(1 + ℯ^(2*acosh(a*x))) - 6*a^2*acosh(a*x)*PolyLog(2, -ℯ^(2*acosh(a*x))) + 3*a^2*PolyLog(3, -ℯ^(2*acosh(a*x)))]
    @test_int [acosh(a*x)^4/x^4, x, 19, (2*a^2*acosh(a*x)^2)/x + (2*a*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^3)/(3*x^2) - acosh(a*x)^4/(3*x^3) - 8*a^3*acosh(a*x)*atan(ℯ^acosh(a*x)) + (4/3)*a^3*acosh(a*x)^3*atan(ℯ^acosh(a*x)) + 4*im*a^3*PolyLog(2, (-im)*ℯ^acosh(a*x)) - 2*im*a^3*acosh(a*x)^2*PolyLog(2, (-im)*ℯ^acosh(a*x)) - 4*im*a^3*PolyLog(2, im*ℯ^acosh(a*x)) + 2*im*a^3*acosh(a*x)^2*PolyLog(2, im*ℯ^acosh(a*x)) + 4*im*a^3*acosh(a*x)*PolyLog(3, (-im)*ℯ^acosh(a*x)) - 4*im*a^3*acosh(a*x)*PolyLog(3, im*ℯ^acosh(a*x)) - 4*im*a^3*PolyLog(4, (-im)*ℯ^acosh(a*x)) + 4*im*a^3*PolyLog(4, im*ℯ^acosh(a*x))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^6/acosh(a*x), x, 7, (5*SinhIntegral(acosh(a*x)))/(64*a^7) + (9*SinhIntegral(3*acosh(a*x)))/(64*a^7) + (5*SinhIntegral(5*acosh(a*x)))/(64*a^7) + SinhIntegral(7*acosh(a*x))/(64*a^7)]
    @test_int [x^5/acosh(a*x), x, 6, (5*SinhIntegral(2*acosh(a*x)))/(32*a^6) + SinhIntegral(4*acosh(a*x))/(8*a^6) + SinhIntegral(6*acosh(a*x))/(32*a^6)]
    @test_int [x^4/acosh(a*x), x, 6, SinhIntegral(acosh(a*x))/(8*a^5) + (3*SinhIntegral(3*acosh(a*x)))/(16*a^5) + SinhIntegral(5*acosh(a*x))/(16*a^5)]
    @test_int [x^3/acosh(a*x), x, 5, SinhIntegral(2*acosh(a*x))/(4*a^4) + SinhIntegral(4*acosh(a*x))/(8*a^4)]
    @test_int [x^2/acosh(a*x), x, 5, SinhIntegral(acosh(a*x))/(4*a^3) + SinhIntegral(3*acosh(a*x))/(4*a^3)]
    @test_int [x^1/acosh(a*x), x, 4, SinhIntegral(2*acosh(a*x))/(2*a^2)]
    @test_int [x^0/acosh(a*x), x, 2, SinhIntegral(acosh(a*x))/a]
    @test_int [1/(x^1*acosh(a*x)), x, 0, Unintegrable(1/(x*acosh(a*x)), x)]
    @test_int [1/(x^2*acosh(a*x)), x, 0, Unintegrable(1/(x^2*acosh(a*x)), x)]


    @test_int [x^4/acosh(a*x)^2, x, 5, -((x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*acosh(a*x))) + CoshIntegral(acosh(a*x))/(8*a^5) + (9*CoshIntegral(3*acosh(a*x)))/(16*a^5) + (5*CoshIntegral(5*acosh(a*x)))/(16*a^5)]
    @test_int [x^3/acosh(a*x)^2, x, 4, -((x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*acosh(a*x))) + CoshIntegral(2*acosh(a*x))/(2*a^4) + CoshIntegral(4*acosh(a*x))/(2*a^4)]
    @test_int [x^2/acosh(a*x)^2, x, 4, -((x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*acosh(a*x))) + CoshIntegral(acosh(a*x))/(4*a^3) + (3*CoshIntegral(3*acosh(a*x)))/(4*a^3)]
    @test_int [x^1/acosh(a*x)^2, x, 2, -((x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*acosh(a*x))) + CoshIntegral(2*acosh(a*x))/a^2]
    @test_int [x^0/acosh(a*x)^2, x, 3, -((sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*acosh(a*x))) + CoshIntegral(acosh(a*x))/a]
    @test_int [1/(x^1*acosh(a*x)^2), x, 0, Unintegrable(1/(x*acosh(a*x)^2), x)]
    @test_int [1/(x^2*acosh(a*x)^2), x, 0, Unintegrable(1/(x^2*acosh(a*x)^2), x)]


    @test_int [x^4/acosh(a*x)^3, x, 14, -((x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(2*a*acosh(a*x)^2)) + (2*x^3)/(a^2*acosh(a*x)) - (5*x^5)/(2*acosh(a*x)) + SinhIntegral(acosh(a*x))/(16*a^5) + (27*SinhIntegral(3*acosh(a*x)))/(32*a^5) + (25*SinhIntegral(5*acosh(a*x)))/(32*a^5)]
    @test_int [x^3/acosh(a*x)^3, x, 12, -((x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(2*a*acosh(a*x)^2)) + (3*x^2)/(2*a^2*acosh(a*x)) - (2*x^4)/acosh(a*x) + SinhIntegral(2*acosh(a*x))/(2*a^4) + SinhIntegral(4*acosh(a*x))/a^4]
    @test_int [x^2/acosh(a*x)^3, x, 10, -((x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(2*a*acosh(a*x)^2)) + x/(a^2*acosh(a*x)) - (3*x^3)/(2*acosh(a*x)) + SinhIntegral(acosh(a*x))/(8*a^3) + (9*SinhIntegral(3*acosh(a*x)))/(8*a^3)]
    @test_int [x^1/acosh(a*x)^3, x, 7, -((x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(2*a*acosh(a*x)^2)) + 1/(2*a^2*acosh(a*x)) - x^2/acosh(a*x) + SinhIntegral(2*acosh(a*x))/a^2]
    @test_int [x^0/acosh(a*x)^3, x, 4, -((sqrt(-1 + a*x)*sqrt(1 + a*x))/(2*a*acosh(a*x)^2)) - x/(2*acosh(a*x)) + SinhIntegral(acosh(a*x))/(2*a)]
    @test_int [1/(x^1*acosh(a*x)^3), x, 0, Unintegrable(1/(x*acosh(a*x)^3), x)]
    @test_int [1/(x^2*acosh(a*x)^3), x, 0, Unintegrable(1/(x^2*acosh(a*x)^3), x)]


    @test_int [x^4/acosh(a*x)^4, x, 12, -(x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^3) + (2*x^3)/(3*a^2*acosh(a*x)^2) - (5*x^5)/(6*acosh(a*x)^2) + (2*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a^3*acosh(a*x)) - (25*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(6*a*acosh(a*x)) + CoshIntegral(acosh(a*x))/(48*a^5) + (27*CoshIntegral(3*acosh(a*x)))/(32*a^5) + (125*CoshIntegral(5*acosh(a*x)))/(96*a^5)]
    @test_int [x^3/acosh(a*x)^4, x, 9, -(x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^3) + x^2/(2*a^2*acosh(a*x)^2) - (2*x^4)/(3*acosh(a*x)^2) + (x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a^3*acosh(a*x)) - (8*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)) + CoshIntegral(2*acosh(a*x))/(3*a^4) + (4*CoshIntegral(4*acosh(a*x)))/(3*a^4)]
    @test_int [x^2/acosh(a*x)^4, x, 10, -(x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^3) + x/(3*a^2*acosh(a*x)^2) - x^3/(2*acosh(a*x)^2) + (sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a^3*acosh(a*x)) - (3*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(2*a*acosh(a*x)) + CoshIntegral(acosh(a*x))/(24*a^3) + (9*CoshIntegral(3*acosh(a*x)))/(8*a^3)]
    @test_int [x^1/acosh(a*x)^4, x, 5, -(x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^3) + 1/(6*a^2*acosh(a*x)^2) - x^2/(3*acosh(a*x)^2) - (2*x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)) + (2*CoshIntegral(2*acosh(a*x)))/(3*a^2)]
    @test_int [x^0/acosh(a*x)^4, x, 5, -(sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^3) - x/(6*acosh(a*x)^2) - (sqrt(-1 + a*x)*sqrt(1 + a*x))/(6*a*acosh(a*x)) + CoshIntegral(acosh(a*x))/(6*a)]
    @test_int [1/(x^1*acosh(a*x)^4), x, 0, Unintegrable(1/(x*acosh(a*x)^4), x)]
    @test_int [1/(x^2*acosh(a*x)^4), x, 0, Unintegrable(1/(x^2*acosh(a*x)^4), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acosh(c*x)^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^4*sqrt(acosh(a*x)), x, 19, (1/5)*x^5*sqrt(acosh(a*x)) - (sqrt(pi)*erf(sqrt(acosh(a*x))))/(32*a^5) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(acosh(a*x))))/(64*a^5) - (sqrt(pi/5)*erf(sqrt(5)*sqrt(acosh(a*x))))/(320*a^5) - (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(32*a^5) - (sqrt(pi/3)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(64*a^5) - (sqrt(pi/5)*erfi(sqrt(5)*sqrt(acosh(a*x))))/(320*a^5)]
    @test_int [x^3*sqrt(acosh(a*x)), x, 14, -((3*sqrt(acosh(a*x)))/(32*a^4)) + (1/4)*x^4*sqrt(acosh(a*x)) - (sqrt(pi)*erf(2*sqrt(acosh(a*x))))/(256*a^4) - (sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/(32*a^4) - (sqrt(pi)*erfi(2*sqrt(acosh(a*x))))/(256*a^4) - (sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(32*a^4)]
    @test_int [x^2*sqrt(acosh(a*x)), x, 14, (1/3)*x^3*sqrt(acosh(a*x)) - (sqrt(pi)*erf(sqrt(acosh(a*x))))/(16*a^3) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(acosh(a*x))))/(48*a^3) - (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(16*a^3) - (sqrt(pi/3)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(48*a^3)]
    @test_int [x*sqrt(acosh(a*x)), x, 9, -(sqrt(acosh(a*x))/(4*a^2)) + (1/2)*x^2*sqrt(acosh(a*x)) - (sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/(16*a^2) - (sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(16*a^2)]
    @test_int [sqrt(acosh(a*x)), x, 7, x*sqrt(acosh(a*x)) - (sqrt(pi)*erf(sqrt(acosh(a*x))))/(4*a) - (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(4*a)]
    @test_int [sqrt(acosh(a*x))/x, x, 0, Unintegrable(sqrt(acosh(a*x))/x, x)]


    @test_int [x^4*acosh(a*x)^(3/2), x, 41, -((4*sqrt(-1 + a*x)*sqrt(1 + a*x)*sqrt(acosh(a*x)))/(25*a^5)) - (2*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*sqrt(acosh(a*x)))/(25*a^3) - (3*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x)*sqrt(acosh(a*x)))/(50*a) + (1/5)*x^5*acosh(a*x)^(3/2) - (3*sqrt(pi)*erf(sqrt(acosh(a*x))))/(64*a^5) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(acosh(a*x))))/(200*a^5) - (3*sqrt(3*pi)*erf(sqrt(3)*sqrt(acosh(a*x))))/(3200*a^5) - (3*sqrt(pi/5)*erf(sqrt(5)*sqrt(acosh(a*x))))/(3200*a^5) + (3*sqrt(pi)*erfi(sqrt(acosh(a*x))))/(64*a^5) + (sqrt(pi/3)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(200*a^5) + (3*sqrt(3*pi)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(3200*a^5) + (3*sqrt(pi/5)*erfi(sqrt(5)*sqrt(acosh(a*x))))/(3200*a^5)]
    @test_int [x^3*acosh(a*x)^(3/2), x, 25, (-9*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*sqrt(acosh(a*x)))/(64*a^3) - (3*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*sqrt(acosh(a*x)))/(32*a) - (3*acosh(a*x)^(3/2))/(32*a^4) + (x^4*acosh(a*x)^(3/2))/4 - (3*sqrt(pi)*erf(2*sqrt(acosh(a*x))))/(2048*a^4) - (3*sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/(128*a^4) + (3*sqrt(pi)*erfi(2*sqrt(acosh(a*x))))/(2048*a^4) + (3*sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(128*a^4)]
    @test_int [x^2*acosh(a*x)^(3/2), x, 22, -(sqrt(-1 + a*x)*sqrt(1 + a*x)*sqrt(acosh(a*x)))/(3*a^3) - (x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*sqrt(acosh(a*x)))/(6*a) + (x^3*acosh(a*x)^(3/2))/3 - (3*sqrt(pi)*erf(sqrt(acosh(a*x))))/(32*a^3) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(acosh(a*x))))/(96*a^3) + (3*sqrt(pi)*erfi(sqrt(acosh(a*x))))/(32*a^3) + (sqrt(pi/3)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(96*a^3)]
    @test_int [x*acosh(a*x)^(3/2), x, 11, (-3*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*sqrt(acosh(a*x)))/(8*a) - acosh(a*x)^(3/2)/(4*a^2) + (x^2*acosh(a*x)^(3/2))/2 - (3*sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/(64*a^2) + (3*sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(64*a^2)]
    @test_int [acosh(a*x)^(3/2), x, 8, (-3*sqrt(-1 + a*x)*sqrt(1 + a*x)*sqrt(acosh(a*x)))/(2*a) + x*acosh(a*x)^(3/2) - (3*sqrt(pi)*erf(sqrt(acosh(a*x))))/(8*a) + (3*sqrt(pi)*erfi(sqrt(acosh(a*x))))/(8*a)]
    @test_int [acosh(a*x)^(3/2)/x, x, 0, Unintegrable(acosh(a*x)^(3/2)/x, x)]


    @test_int [x^4*acosh(a*x)^(5/2), x, 44, (2*x*sqrt(acosh(a*x)))/(5*a^4) + (x^3*sqrt(acosh(a*x)))/(15*a^2) + (3/100)*x^5*sqrt(acosh(a*x)) - (4*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^(3/2))/(15*a^5) - (2*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^(3/2))/(15*a^3) - (x^4*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^(3/2))/(10*a) + (1/5)*x^5*acosh(a*x)^(5/2) - (15*sqrt(pi)*erf(sqrt(acosh(a*x))))/(128*a^5) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(acosh(a*x))))/(240*a^5) - (sqrt(3*pi)*erf(sqrt(3)*sqrt(acosh(a*x))))/(1280*a^5) - (3*sqrt(pi/5)*erf(sqrt(5)*sqrt(acosh(a*x))))/(6400*a^5) - (15*sqrt(pi)*erfi(sqrt(acosh(a*x))))/(128*a^5) - (sqrt(pi/3)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(240*a^5) - (sqrt(3*pi)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(1280*a^5) - (3*sqrt(pi/5)*erfi(sqrt(5)*sqrt(acosh(a*x))))/(6400*a^5)]
    @test_int [x^3*acosh(a*x)^(5/2), x, 27, -((225*sqrt(acosh(a*x)))/(2048*a^4)) + (45*x^2*sqrt(acosh(a*x)))/(256*a^2) + (15/256)*x^4*sqrt(acosh(a*x)) - (15*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^(3/2))/(64*a^3) - (5*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^(3/2))/(32*a) - (3*acosh(a*x)^(5/2))/(32*a^4) + (1/4)*x^4*acosh(a*x)^(5/2) - (15*sqrt(pi)*erf(2*sqrt(acosh(a*x))))/(16384*a^4) - (15*sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/(512*a^4) - (15*sqrt(pi)*erfi(2*sqrt(acosh(a*x))))/(16384*a^4) - (15*sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(512*a^4)]
    @test_int [x^2*acosh(a*x)^(5/2), x, 24, (5*x*sqrt(acosh(a*x)))/(6*a^2) + (5/36)*x^3*sqrt(acosh(a*x)) - (5*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^(3/2))/(9*a^3) - (5*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^(3/2))/(18*a) + (1/3)*x^3*acosh(a*x)^(5/2) - (15*sqrt(pi)*erf(sqrt(acosh(a*x))))/(64*a^3) - (5*sqrt(pi/3)*erf(sqrt(3)*sqrt(acosh(a*x))))/(576*a^3) - (15*sqrt(pi)*erfi(sqrt(acosh(a*x))))/(64*a^3) - (5*sqrt(pi/3)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(576*a^3)]
    @test_int [x*acosh(a*x)^(5/2), x, 12, -((15*sqrt(acosh(a*x)))/(64*a^2)) + (15/32)*x^2*sqrt(acosh(a*x)) - (5*x*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^(3/2))/(8*a) - acosh(a*x)^(5/2)/(4*a^2) + (1/2)*x^2*acosh(a*x)^(5/2) - (15*sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/(256*a^2) - (15*sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(256*a^2)]
    @test_int [acosh(a*x)^(5/2), x, 9, (15/4)*x*sqrt(acosh(a*x)) - (5*sqrt(-1 + a*x)*sqrt(1 + a*x)*acosh(a*x)^(3/2))/(2*a) + x*acosh(a*x)^(5/2) - (15*sqrt(pi)*erf(sqrt(acosh(a*x))))/(16*a) - (15*sqrt(pi)*erfi(sqrt(acosh(a*x))))/(16*a)]
    @test_int [acosh(a*x)^(5/2)/x, x, 0, Unintegrable(acosh(a*x)^(5/2)/x, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^4/sqrt(acosh(a*x)), x, 18, -((sqrt(pi)*erf(sqrt(acosh(a*x))))/(16*a^5)) - (sqrt(3*pi)*erf(sqrt(3)*sqrt(acosh(a*x))))/(32*a^5) - (sqrt(pi/5)*erf(sqrt(5)*sqrt(acosh(a*x))))/(32*a^5) + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(16*a^5) + (sqrt(3*pi)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(32*a^5) + (sqrt(pi/5)*erfi(sqrt(5)*sqrt(acosh(a*x))))/(32*a^5)]
    @test_int [x^3/sqrt(acosh(a*x)), x, 13, -((sqrt(pi)*erf(2*sqrt(acosh(a*x))))/(32*a^4)) - (sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/(8*a^4) + (sqrt(pi)*erfi(2*sqrt(acosh(a*x))))/(32*a^4) + (sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(8*a^4)]
    @test_int [x^2/sqrt(acosh(a*x)), x, 13, -((sqrt(pi)*erf(sqrt(acosh(a*x))))/(8*a^3)) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(acosh(a*x))))/(8*a^3) + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(8*a^3) + (sqrt(pi/3)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(8*a^3)]
    @test_int [x/sqrt(acosh(a*x)), x, 8, -(sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/(4*a^2) + (sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(4*a^2)]
    @test_int [1/sqrt(acosh(a*x)), x, 6, -((sqrt(pi)*erf(sqrt(acosh(a*x))))/(2*a)) + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(2*a)]
    @test_int [1/(x*sqrt(acosh(a*x))), x, 0, Unintegrable(1/(x*sqrt(acosh(a*x))), x)]
    @test_int [1/(x^2*sqrt(acosh(a*x))), x, 0, Unintegrable(1/(x^2*sqrt(acosh(a*x))), x)]


    @test_int [x^4/acosh(a*x)^(3/2), x, 17, -((2*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*sqrt(acosh(a*x)))) + (sqrt(pi)*erf(sqrt(acosh(a*x))))/(8*a^5) + (3*sqrt(3*pi)*erf(sqrt(3)*sqrt(acosh(a*x))))/(16*a^5) + (sqrt(5*pi)*erf(sqrt(5)*sqrt(acosh(a*x))))/(16*a^5) + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(8*a^5) + (3*sqrt(3*pi)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(16*a^5) + (sqrt(5*pi)*erfi(sqrt(5)*sqrt(acosh(a*x))))/(16*a^5)]
    @test_int [x^3/acosh(a*x)^(3/2), x, 12, -((2*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*sqrt(acosh(a*x)))) + (sqrt(pi)*erf(2*sqrt(acosh(a*x))))/(4*a^4) + (sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/(2*a^4) + (sqrt(pi)*erfi(2*sqrt(acosh(a*x))))/(4*a^4) + (sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(2*a^4)]
    @test_int [x^2/acosh(a*x)^(3/2), x, 12, -((2*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*sqrt(acosh(a*x)))) + (sqrt(pi)*erf(sqrt(acosh(a*x))))/(4*a^3) + (sqrt(3*pi)*erf(sqrt(3)*sqrt(acosh(a*x))))/(4*a^3) + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(4*a^3) + (sqrt(3*pi)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(4*a^3)]
    @test_int [x/acosh(a*x)^(3/2), x, 6, -((2*x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*sqrt(acosh(a*x)))) + (sqrt(pi/2)*erf(sqrt(2)*sqrt(acosh(a*x))))/a^2 + (sqrt(pi/2)*erfi(sqrt(2)*sqrt(acosh(a*x))))/a^2]
    @test_int [1/acosh(a*x)^(3/2), x, 7, -((2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(a*sqrt(acosh(a*x)))) + (sqrt(pi)*erf(sqrt(acosh(a*x))))/a + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/a]
    @test_int [1/(x*acosh(a*x)^(3/2)), x, 0, Unintegrable(1/(x*acosh(a*x)^(3/2)), x)]


    @test_int [x^4/acosh(a*x)^(5/2), x, 34, -((2*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^(3/2))) + (16*x^3)/(3*a^2*sqrt(acosh(a*x))) - (20*x^5)/(3*sqrt(acosh(a*x))) - (sqrt(pi)*erf(sqrt(acosh(a*x))))/(12*a^5) - (3*sqrt(3*pi)*erf(sqrt(3)*sqrt(acosh(a*x))))/(8*a^5) - (5*sqrt(5*pi)*erf(sqrt(5)*sqrt(acosh(a*x))))/(24*a^5) + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(12*a^5) + (3*sqrt(3*pi)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(8*a^5) + (5*sqrt(5*pi)*erfi(sqrt(5)*sqrt(acosh(a*x))))/(24*a^5)]
    @test_int [x^3/acosh(a*x)^(5/2), x, 24, -((2*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^(3/2))) + (4*x^2)/(a^2*sqrt(acosh(a*x))) - (16*x^4)/(3*sqrt(acosh(a*x))) - (2*sqrt(pi)*erf(2*sqrt(acosh(a*x))))/(3*a^4) - (sqrt(2*pi)*erf(sqrt(2)*sqrt(acosh(a*x))))/(3*a^4) + (2*sqrt(pi)*erfi(2*sqrt(acosh(a*x))))/(3*a^4) + (sqrt(2*pi)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(3*a^4)]
    @test_int [x^2/acosh(a*x)^(5/2), x, 22, -((2*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^(3/2))) + (8*x)/(3*a^2*sqrt(acosh(a*x))) - (4*x^3)/sqrt(acosh(a*x)) - (sqrt(pi)*erf(sqrt(acosh(a*x))))/(6*a^3) - (sqrt(3*pi)*erf(sqrt(3)*sqrt(acosh(a*x))))/(2*a^3) + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(6*a^3) + (sqrt(3*pi)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(2*a^3)]
    @test_int [x/acosh(a*x)^(5/2), x, 11, -((2*x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^(3/2))) + 4/(3*a^2*sqrt(acosh(a*x))) - (8*x^2)/(3*sqrt(acosh(a*x))) - (2*sqrt(2*pi)*erf(sqrt(2)*sqrt(acosh(a*x))))/(3*a^2) + (2*sqrt(2*pi)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(3*a^2)]
    @test_int [1/acosh(a*x)^(5/2), x, 8, -((2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*acosh(a*x)^(3/2))) - (4*x)/(3*sqrt(acosh(a*x))) - (2*sqrt(pi)*erf(sqrt(acosh(a*x))))/(3*a) + (2*sqrt(pi)*erfi(sqrt(acosh(a*x))))/(3*a)]
    @test_int [1/(x*acosh(a*x)^(5/2)), x, 0, Unintegrable(1/(x*acosh(a*x)^(5/2)), x)]


    @test_int [x^4/acosh(a*x)^(7/2), x, 32, -((2*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5*a*acosh(a*x)^(5/2))) + (16*x^3)/(15*a^2*acosh(a*x)^(3/2)) - (4*x^5)/(3*acosh(a*x)^(3/2)) + (32*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5*a^3*sqrt(acosh(a*x))) - (40*x^4*sqrt(-1 + a*x)*sqrt(1 + a*x))/(3*a*sqrt(acosh(a*x))) + (sqrt(pi)*erf(sqrt(acosh(a*x))))/(30*a^5) + (9*sqrt(3*pi)*erf(sqrt(3)*sqrt(acosh(a*x))))/(20*a^5) + (5*sqrt(5*pi)*erf(sqrt(5)*sqrt(acosh(a*x))))/(12*a^5) + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(30*a^5) + (9*sqrt(3*pi)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(20*a^5) + (5*sqrt(5*pi)*erfi(sqrt(5)*sqrt(acosh(a*x))))/(12*a^5)]
    @test_int [x^3/acosh(a*x)^(7/2), x, 21, -((2*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5*a*acosh(a*x)^(5/2))) + (4*x^2)/(5*a^2*acosh(a*x)^(3/2)) - (16*x^4)/(15*acosh(a*x)^(3/2)) + (16*x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5*a^3*sqrt(acosh(a*x))) - (128*x^3*sqrt(-1 + a*x)*sqrt(1 + a*x))/(15*a*sqrt(acosh(a*x))) + (16*sqrt(pi)*erf(2*sqrt(acosh(a*x))))/(15*a^4) + (4*sqrt(2*pi)*erf(sqrt(2)*sqrt(acosh(a*x))))/(15*a^4) + (16*sqrt(pi)*erfi(2*sqrt(acosh(a*x))))/(15*a^4) + (4*sqrt(2*pi)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(15*a^4)]
    @test_int [x^2/acosh(a*x)^(7/2), x, 22, -((2*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5*a*acosh(a*x)^(5/2))) + (8*x)/(15*a^2*acosh(a*x)^(3/2)) - (4*x^3)/(5*acosh(a*x)^(3/2)) + (16*sqrt(-1 + a*x)*sqrt(1 + a*x))/(15*a^3*sqrt(acosh(a*x))) - (24*x^2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5*a*sqrt(acosh(a*x))) + (sqrt(pi)*erf(sqrt(acosh(a*x))))/(15*a^3) + (3*sqrt(3*pi)*erf(sqrt(3)*sqrt(acosh(a*x))))/(5*a^3) + (sqrt(pi)*erfi(sqrt(acosh(a*x))))/(15*a^3) + (3*sqrt(3*pi)*erfi(sqrt(3)*sqrt(acosh(a*x))))/(5*a^3)]
    @test_int [x/acosh(a*x)^(7/2), x, 9, -((2*x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5*a*acosh(a*x)^(5/2))) + 4/(15*a^2*acosh(a*x)^(3/2)) - (8*x^2)/(15*acosh(a*x)^(3/2)) - (32*x*sqrt(-1 + a*x)*sqrt(1 + a*x))/(15*a*sqrt(acosh(a*x))) + (8*sqrt(2*pi)*erf(sqrt(2)*sqrt(acosh(a*x))))/(15*a^2) + (8*sqrt(2*pi)*erfi(sqrt(2)*sqrt(acosh(a*x))))/(15*a^2)]
    @test_int [1/acosh(a*x)^(7/2), x, 9, -((2*sqrt(-1 + a*x)*sqrt(1 + a*x))/(5*a*acosh(a*x)^(5/2))) - (4*x)/(15*acosh(a*x)^(3/2)) - (8*sqrt(-1 + a*x)*sqrt(1 + a*x))/(15*a*sqrt(acosh(a*x))) + (4*sqrt(pi)*erf(sqrt(acosh(a*x))))/(15*a) + (4*sqrt(pi)*erfi(sqrt(acosh(a*x))))/(15*a)]
    @test_int [1/(x*acosh(a*x)^(7/2)), x, 0, Unintegrable(1/(x*acosh(a*x)^(7/2)), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*acosh(c*x)^n*with*m*symbolic=#


    @test_int [x^m*acosh(a*x)^4, x, 1, (x^(1 + m)*acosh(a*x)^4)/(1 + m) - (4*a*Unintegrable((x^(1 + m)*acosh(a*x)^3)/(sqrt(-1 + a*x)*sqrt(1 + a*x)), x))/(1 + m)]
    @test_int [x^m*acosh(a*x)^3, x, 1, (x^(1 + m)*acosh(a*x)^3)/(1 + m) - (3*a*Unintegrable((x^(1 + m)*acosh(a*x)^2)/(sqrt(-1 + a*x)*sqrt(1 + a*x)), x))/(1 + m)]
    @test_int [x^m*acosh(a*x)^2, x, 2, (x^(1 + m)*acosh(a*x)^2)/(1 + m) - (2*a*x^(2 + m)*sqrt(1 - a*x)*acosh(a*x)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, a^2*x^2))/((2 + 3*m + m^2)*sqrt(-1 + a*x)) - (2*a^2*x^(3 + m)*HypergeometricPFQ([1, 3/2 + m/2, 3/2 + m/2], [2 + m/2, 5/2 + m/2], a^2*x^2))/(6 + 11*m + 6*m^2 + m^3)]
    @test_int [x^m*acosh(a*x)^1, x, 4, (x^(1 + m)*acosh(a*x))/(1 + m) - (a*x^(2 + m)*sqrt(1 - a^2*x^2)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, a^2*x^2))/((2 + 3*m + m^2)*sqrt(-1 + a*x)*sqrt(1 + a*x))]
    @test_int [x^m/acosh(a*x)^1, x, 0, Unintegrable(x^m/acosh(a*x), x)]
    @test_int [x^m/acosh(a*x)^2, x, 0, Unintegrable(x^m/acosh(a*x)^2, x)]
    @test_int [x^m/acosh(a*x)^3, x, 0, Unintegrable(x^m/acosh(a*x)^3, x)]


    @test_int [x^m*acosh(a*x)^(3/2), x, 0, Unintegrable(x^m*acosh(a*x)^(3/2), x)]
    @test_int [x^m*sqrt(acosh(a*x)), x, 0, Unintegrable(x^m*sqrt(acosh(a*x)), x)]
    @test_int [x^m/sqrt(acosh(a*x)), x, 0, Unintegrable(x^m/sqrt(acosh(a*x)), x)]
    @test_int [x^m/acosh(a*x)^(3/2), x, 0, Unintegrable(x^m/acosh(a*x)^(3/2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*acosh(c*x)^n*with*n*symbolic=#


    @test_int [(d*x)^m*acosh(a*x)^n, x, 0, Unintegrable((d*x)^m*acosh(a*x)^n, x)]


    @test_int [x^4*acosh(a*x)^n, x, 12, (5^(-1 - n)*acosh(a*x)^n*Gamma(1 + n, -5*acosh(a*x)))/(32*a^5*(-acosh(a*x))^n) + (acosh(a*x)^n*Gamma(1 + n, -3*acosh(a*x)))/(32*3^n*a^5*(-acosh(a*x))^n) + (acosh(a*x)^n*Gamma(1 + n, -acosh(a*x)))/(16*a^5*(-acosh(a*x))^n) + Gamma(1 + n, acosh(a*x))/(16*a^5) + Gamma(1 + n, 3*acosh(a*x))/(32*3^n*a^5) + (5^(-1 - n)*Gamma(1 + n, 5*acosh(a*x)))/(32*a^5)]
    @test_int [x^3*acosh(a*x)^n, x, 9, (acosh(a*x)^n*Gamma(1 + n, -4*acosh(a*x)))/(2^(2*(3 + n))*a^4*(-acosh(a*x))^n) + (2^(-4 - n)*acosh(a*x)^n*Gamma(1 + n, -2*acosh(a*x)))/(a^4*(-acosh(a*x))^n) + (2^(-4 - n)*Gamma(1 + n, 2*acosh(a*x)))/a^4 + Gamma(1 + n, 4*acosh(a*x))/(2^(2*(3 + n))*a^4)]
    @test_int [x^2*acosh(a*x)^n, x, 9, (3^(-1 - n)*acosh(a*x)^n*Gamma(1 + n, -3*acosh(a*x)))/(8*a^3*(-acosh(a*x))^n) + (acosh(a*x)^n*Gamma(1 + n, -acosh(a*x)))/(8*a^3*(-acosh(a*x))^n) + Gamma(1 + n, acosh(a*x))/(8*a^3) + (3^(-1 - n)*Gamma(1 + n, 3*acosh(a*x)))/(8*a^3)]
    @test_int [x*acosh(a*x)^n, x, 6, (2^(-3 - n)*acosh(a*x)^n*Gamma(1 + n, -2*acosh(a*x)))/(a^2*(-acosh(a*x))^n) + (2^(-3 - n)*Gamma(1 + n, 2*acosh(a*x)))/a^2]
    @test_int [acosh(a*x)^n, x, 4, (acosh(a*x)^n*Gamma(1 + n, -acosh(a*x)))/(2*a*(-acosh(a*x))^n) + Gamma(1 + n, acosh(a*x))/(2*a)]
    @test_int [acosh(a*x)^n/x, x, 0, Unintegrable(acosh(a*x)^n/x, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*acosh(c*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*acosh(c*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(a + b*acosh(c*x))*x^3, x, 5, -((3*b*x*sqrt(-1 + c*x)*sqrt(1 + c*x))/(32*c^3)) - (b*x^3*sqrt(-1 + c*x)*sqrt(1 + c*x))/(16*c) - (3*b*acosh(c*x))/(32*c^4) + (1/4)*x^4*(a + b*acosh(c*x))]
    @test_int [(a + b*acosh(c*x))*x^2, x, 4, -((2*b*sqrt(-1 + c*x)*sqrt(1 + c*x))/(9*c^3)) - (b*x^2*sqrt(-1 + c*x)*sqrt(1 + c*x))/(9*c) + (1/3)*x^3*(a + b*acosh(c*x))]
    @test_int [(a + b*acosh(c*x))*x^1, x, 3, -((b*x*sqrt(-1 + c*x)*sqrt(1 + c*x))/(4*c)) - (b*acosh(c*x))/(4*c^2) + (1/2)*x^2*(a + b*acosh(c*x))]
    @test_int [(a + b*acosh(c*x))*x^0, x, 3, a*x - (b*sqrt(-1 + c*x)*sqrt(1 + c*x))/c + b*x*acosh(c*x)]
    @test_int [(a + b*acosh(c*x))/x^1, x, 5, (a + b*acosh(c*x))^2/(2*b) + (a + b*acosh(c*x))*log(1 + ℯ^(-2*acosh(c*x))) - (1/2)*b*PolyLog(2, -ℯ^(-2*acosh(c*x)))]
    @test_int [(a + b*acosh(c*x))/x^2, x, 3, -((a + b*acosh(c*x))/x) + b*c*atan(sqrt(-1 + c*x)*sqrt(1 + c*x))]
    @test_int [(a + b*acosh(c*x))/x^3, x, 2, (b*c*sqrt(-1 + c*x)*sqrt(1 + c*x))/(2*x) - (a + b*acosh(c*x))/(2*x^2)]
    @test_int [(a + b*acosh(c*x))/x^4, x, 5, (b*c*sqrt(-1 + c*x)*sqrt(1 + c*x))/(6*x^2) - (a + b*acosh(c*x))/(3*x^3) + (1/6)*b*c^3*atan(sqrt(-1 + c*x)*sqrt(1 + c*x))]
    @test_int [(a + b*acosh(c*x))/x^5, x, 4, (b*c*sqrt(-1 + c*x)*sqrt(1 + c*x))/(12*x^3) + (b*c^3*sqrt(-1 + c*x)*sqrt(1 + c*x))/(6*x) - (a + b*acosh(c*x))/(4*x^4)]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*acosh(c*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^2*sqrt(a + b*acosh(c*x)), x, 14, (x^3*sqrt(a + b*acosh(c*x)))/3 - (sqrt(b)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(16*c^3) - (sqrt(b)*ℯ^((3*a)/b)*sqrt(pi/3)*erf((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(48*c^3) - (sqrt(b)*sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(16*c^3*ℯ^(a/b)) - (sqrt(b)*sqrt(pi/3)*erfi((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(48*c^3*ℯ^((3*a)/b))]
    @test_int [x*sqrt(a + b*acosh(c*x)), x, 9, -sqrt(a + b*acosh(c*x))/(4*c^2) + (x^2*sqrt(a + b*acosh(c*x)))/2 - (sqrt(b)*ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(16*c^2) - (sqrt(b)*sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(16*c^2*ℯ^((2*a)/b))]
    @test_int [sqrt(a + b*acosh(c*x)), x, 7, x*sqrt(a + b*acosh(c*x)) - (sqrt(b)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(4*c) - (sqrt(b)*sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(4*c*ℯ^(a/b))]


    @test_int [x^2*(a + b*acosh(c*x))^(3/2), x, 22, -(b*sqrt(-1 + c*x)*sqrt(1 + c*x)*sqrt(a + b*acosh(c*x)))/(3*c^3) - (b*x^2*sqrt(-1 + c*x)*sqrt(1 + c*x)*sqrt(a + b*acosh(c*x)))/(6*c) + (x^3*(a + b*acosh(c*x))^(3/2))/3 - (3*b^(3/2)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(32*c^3) - (b^(3/2)*ℯ^((3*a)/b)*sqrt(pi/3)*erf((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(96*c^3) + (3*b^(3/2)*sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(32*c^3*ℯ^(a/b)) + (b^(3/2)*sqrt(pi/3)*erfi((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(96*c^3*ℯ^((3*a)/b))]
    @test_int [x*(a + b*acosh(c*x))^(3/2), x, 11, (-3*b*x*sqrt(-1 + c*x)*sqrt(1 + c*x)*sqrt(a + b*acosh(c*x)))/(8*c) - (a + b*acosh(c*x))^(3/2)/(4*c^2) + (x^2*(a + b*acosh(c*x))^(3/2))/2 - (3*b^(3/2)*ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(64*c^2) + (3*b^(3/2)*sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(64*c^2*ℯ^((2*a)/b))]
    @test_int [(a + b*acosh(c*x))^(3/2), x, 8, (-3*b*sqrt(-1 + c*x)*sqrt(1 + c*x)*sqrt(a + b*acosh(c*x)))/(2*c) + x*(a + b*acosh(c*x))^(3/2) - (3*b^(3/2)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(8*c) + (3*b^(3/2)*sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(8*c*ℯ^(a/b))]


    @test_int [x^2*(a + b*acosh(c*x))^(5/2), x, 24, (5*b^2*x*sqrt(a + b*acosh(c*x)))/(6*c^2) + (5*b^2*x^3*sqrt(a + b*acosh(c*x)))/36 - (5*b*sqrt(-1 + c*x)*sqrt(1 + c*x)*(a + b*acosh(c*x))^(3/2))/(9*c^3) - (5*b*x^2*sqrt(-1 + c*x)*sqrt(1 + c*x)*(a + b*acosh(c*x))^(3/2))/(18*c) + (x^3*(a + b*acosh(c*x))^(5/2))/3 - (15*b^(5/2)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(64*c^3) - (5*b^(5/2)*ℯ^((3*a)/b)*sqrt(pi/3)*erf((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(576*c^3) - (15*b^(5/2)*sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(64*c^3*ℯ^(a/b)) - (5*b^(5/2)*sqrt(pi/3)*erfi((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(576*c^3*ℯ^((3*a)/b))]
    @test_int [x*(a + b*acosh(c*x))^(5/2), x, 12, (-15*b^2*sqrt(a + b*acosh(c*x)))/(64*c^2) + (15*b^2*x^2*sqrt(a + b*acosh(c*x)))/32 - (5*b*x*sqrt(-1 + c*x)*sqrt(1 + c*x)*(a + b*acosh(c*x))^(3/2))/(8*c) - (a + b*acosh(c*x))^(5/2)/(4*c^2) + (x^2*(a + b*acosh(c*x))^(5/2))/2 - (15*b^(5/2)*ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(256*c^2) - (15*b^(5/2)*sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(256*c^2*ℯ^((2*a)/b))]
    @test_int [(a + b*acosh(c*x))^(5/2), x, 9, (15*b^2*x*sqrt(a + b*acosh(c*x)))/4 - (5*b*sqrt(-1 + c*x)*sqrt(1 + c*x)*(a + b*acosh(c*x))^(3/2))/(2*c) + x*(a + b*acosh(c*x))^(5/2) - (15*b^(5/2)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(16*c) - (15*b^(5/2)*sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(16*c*ℯ^(a/b))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^2/sqrt(a + b*acosh(c*x)), x, 13, -(ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(8*sqrt(b)*c^3) - (ℯ^((3*a)/b)*sqrt(pi/3)*erf((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(8*sqrt(b)*c^3) + (sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(8*sqrt(b)*c^3*ℯ^(a/b)) + (sqrt(pi/3)*erfi((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(8*sqrt(b)*c^3*ℯ^((3*a)/b))]
    @test_int [x/sqrt(a + b*acosh(c*x)), x, 8, -(ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(4*sqrt(b)*c^2) + (sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(4*sqrt(b)*c^2*ℯ^((2*a)/b))]
    @test_int [1/sqrt(a + b*acosh(c*x)), x, 6, -(ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(2*sqrt(b)*c) + (sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(2*sqrt(b)*c*ℯ^(a/b))]


    @test_int [x^2/(a + b*acosh(c*x))^(3/2), x, 12, (-2*x^2*sqrt(-1 + c*x)*sqrt(1 + c*x))/(b*c*sqrt(a + b*acosh(c*x))) + (ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(4*b^(3/2)*c^3) + (ℯ^((3*a)/b)*sqrt(3*pi)*erf((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(4*b^(3/2)*c^3) + (sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(4*b^(3/2)*c^3*ℯ^(a/b)) + (sqrt(3*pi)*erfi((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(4*b^(3/2)*c^3*ℯ^((3*a)/b))]
    @test_int [x/(a + b*acosh(c*x))^(3/2), x, 6, (-2*x*sqrt(-1 + c*x)*sqrt(1 + c*x))/(b*c*sqrt(a + b*acosh(c*x))) + (ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(b^(3/2)*c^2) + (sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(b^(3/2)*c^2*ℯ^((2*a)/b))]
    @test_int [(a + b*acosh(c*x))^(-3/2), x, 7, (-2*sqrt(-1 + c*x)*sqrt(1 + c*x))/(b*c*sqrt(a + b*acosh(c*x))) + (ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(b^(3/2)*c) + (sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(b^(3/2)*c*ℯ^(a/b))]


    @test_int [x^2/(a + b*acosh(c*x))^(5/2), x, 22, (-2*x^2*sqrt(-1 + c*x)*sqrt(1 + c*x))/(3*b*c*(a + b*acosh(c*x))^(3/2)) + (8*x)/(3*b^2*c^2*sqrt(a + b*acosh(c*x))) - (4*x^3)/(b^2*sqrt(a + b*acosh(c*x))) - (ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(6*b^(5/2)*c^3) - (ℯ^((3*a)/b)*sqrt(3*pi)*erf((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(2*b^(5/2)*c^3) + (sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(6*b^(5/2)*c^3*ℯ^(a/b)) + (sqrt(3*pi)*erfi((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(2*b^(5/2)*c^3*ℯ^((3*a)/b))]
    @test_int [x/(a + b*acosh(c*x))^(5/2), x, 11, (-2*x*sqrt(-1 + c*x)*sqrt(1 + c*x))/(3*b*c*(a + b*acosh(c*x))^(3/2)) + 4/(3*b^2*c^2*sqrt(a + b*acosh(c*x))) - (8*x^2)/(3*b^2*sqrt(a + b*acosh(c*x))) - (2*ℯ^((2*a)/b)*sqrt(2*pi)*erf((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(3*b^(5/2)*c^2) + (2*sqrt(2*pi)*erfi((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(3*b^(5/2)*c^2*ℯ^((2*a)/b))]
    @test_int [(a + b*acosh(c*x))^(-5/2), x, 8, (-2*sqrt(-1 + c*x)*sqrt(1 + c*x))/(3*b*c*(a + b*acosh(c*x))^(3/2)) - (4*x)/(3*b^2*sqrt(a + b*acosh(c*x))) - (2*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(3*b^(5/2)*c) + (2*sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(3*b^(5/2)*c*ℯ^(a/b))]


    @test_int [x^2/(a + b*acosh(c*x))^(7/2), x, 22, (-2*x^2*sqrt(-1 + c*x)*sqrt(1 + c*x))/(5*b*c*(a + b*acosh(c*x))^(5/2)) + (8*x)/(15*b^2*c^2*(a + b*acosh(c*x))^(3/2)) - (4*x^3)/(5*b^2*(a + b*acosh(c*x))^(3/2)) + (16*sqrt(-1 + c*x)*sqrt(1 + c*x))/(15*b^3*c^3*sqrt(a + b*acosh(c*x))) - (24*x^2*sqrt(-1 + c*x)*sqrt(1 + c*x))/(5*b^3*c*sqrt(a + b*acosh(c*x))) + (ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(15*b^(7/2)*c^3) + (3*ℯ^((3*a)/b)*sqrt(3*pi)*erf((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(5*b^(7/2)*c^3) + (sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(15*b^(7/2)*c^3*ℯ^(a/b)) + (3*sqrt(3*pi)*erfi((sqrt(3)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(5*b^(7/2)*c^3*ℯ^((3*a)/b))]
    @test_int [x/(a + b*acosh(c*x))^(7/2), x, 9, (-2*x*sqrt(-1 + c*x)*sqrt(1 + c*x))/(5*b*c*(a + b*acosh(c*x))^(5/2)) + 4/(15*b^2*c^2*(a + b*acosh(c*x))^(3/2)) - (8*x^2)/(15*b^2*(a + b*acosh(c*x))^(3/2)) - (32*x*sqrt(-1 + c*x)*sqrt(1 + c*x))/(15*b^3*c*sqrt(a + b*acosh(c*x))) + (8*ℯ^((2*a)/b)*sqrt(2*pi)*erf((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(15*b^(7/2)*c^2) + (8*sqrt(2*pi)*erfi((sqrt(2)*sqrt(a + b*acosh(c*x)))/sqrt(b)))/(15*b^(7/2)*c^2*ℯ^((2*a)/b))]
    @test_int [(a + b*acosh(c*x))^(-7/2), x, 9, (-2*sqrt(-1 + c*x)*sqrt(1 + c*x))/(5*b*c*(a + b*acosh(c*x))^(5/2)) - (4*x)/(15*b^2*(a + b*acosh(c*x))^(3/2)) - (8*sqrt(-1 + c*x)*sqrt(1 + c*x))/(15*b^3*c*sqrt(a + b*acosh(c*x))) + (4*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*acosh(c*x))/sqrt(b)))/(15*b^(7/2)*c) + (4*sqrt(pi)*erfi(sqrt(a + b*acosh(c*x))/sqrt(b)))/(15*b^(7/2)*c*ℯ^(a/b))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^(m/2)*(a+b*acosh(c*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sqrt(f*x)*(a + b*acosh(c*x))^2, x, 2, (2*(f*x)^(3/2)*(a + b*acosh(c*x))^2)/(3*f) - (8*b*c*(f*x)^(5/2)*sqrt(1 - c*x)*(a + b*acosh(c*x))*HypergeometricFunctions._₂F₁(1/2, 5/4, 9/4, c^2*x^2))/(15*f^2*sqrt(-1 + c*x)) - (16*b^2*c^2*(f*x)^(7/2)*HypergeometricPFQ([1, 7/4, 7/4], [9/4, 11/4], c^2*x^2))/(105*f^3)]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*acosh(c*x))^n*with*m*symbolic=#


    @test_int [(d*x)^m*(a + b*acosh(c*x))^2, x, 2, If(13>=8, ((d*x)^(1 + m)*(a + b*acosh(c*x))^2)/(d*(1 + m)) - (2*b*c*(d*x)^(2 + m)*sqrt(1 - c*x)*(a + b*acosh(c*x))*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, c^2*x^2))/(d^2*(1 + m)*(2 + m)*sqrt(-1 + c*x)) - (2*b^2*c^2*(d*x)^(3 + m)*HypergeometricPFQ([1, 3/2 + m/2, 3/2 + m/2], [2 + m/2, 5/2 + m/2], c^2*x^2))/(d^3*(1 + m)*(2 + m)*(3 + m)), ((d*x)^(1 + m)*(a + b*acosh(c*x))^2)/(d*(1 + m)) - (2*b*c*(d*x)^(2 + m)*sqrt(1 - c*x)*(a + b*acosh(c*x))*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, c^2*x^2))/(d^2*(1 + m)*(2 + m)*sqrt(-1 + c*x)) - (2*b^2*c^2*(d*x)^(3 + m)*HypergeometricPFQ([1, 3/2 + m/2, 3/2 + m/2], [2 + m/2, 5/2 + m/2], c^2*x^2))/(d^3*(3 + m)*(2 + 3*m + m^2)))]
    @test_int [(d*x)^m*(a + b*acosh(c*x))^1, x, 4, ((d*x)^(1 + m)*(a + b*acosh(c*x)))/(d*(1 + m)) - (b*c*(d*x)^(2 + m)*sqrt(1 - c^2*x^2)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, c^2*x^2))/(d^2*(1 + m)*(2 + m)*sqrt(-1 + c*x)*sqrt(1 + c*x))]
    @test_int [(d*x)^m/(a + b*acosh(c*x))^1, x, 0, Unintegrable((d*x)^m/(a + b*acosh(c*x)), x)]
    end
