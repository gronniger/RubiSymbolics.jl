@testset "7.1.2 (d x)^m (a+b arcsinh(c x))^n" begin
    (a, b, c, m, n, x, ) = @variables a b c m n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*asinh(c*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*asinh(a*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*asinh(a*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^4*asinh(a*x), x, 4, -(sqrt(1 + a^2*x^2)/(5*a^5)) + (2*(1 + a^2*x^2)^(3/2))/(15*a^5) - (1 + a^2*x^2)^(5/2)/(25*a^5) + (1/5)*x^5*asinh(a*x)]
    @test_int [x^3*asinh(a*x), x, 4, (3*x*sqrt(1 + a^2*x^2))/(32*a^3) - (x^3*sqrt(1 + a^2*x^2))/(16*a) - (3*asinh(a*x))/(32*a^4) + (1/4)*x^4*asinh(a*x)]
    @test_int [x^2*asinh(a*x), x, 4, sqrt(1 + a^2*x^2)/(3*a^3) - (1 + a^2*x^2)^(3/2)/(9*a^3) + (1/3)*x^3*asinh(a*x)]
    @test_int [x^1*asinh(a*x), x, 3, -((x*sqrt(1 + a^2*x^2))/(4*a)) + asinh(a*x)/(4*a^2) + (1/2)*x^2*asinh(a*x)]
    @test_int [x^0*asinh(a*x), x, 2, -(sqrt(1 + a^2*x^2)/a) + x*asinh(a*x)]
    @test_int [asinh(a*x)/x^1, x, 5, (-(1/2))*asinh(a*x)^2 + asinh(a*x)*log(1 - ℯ^(2*asinh(a*x))) + (1/2)*PolyLog(2, ℯ^(2*asinh(a*x)))]
    @test_int [asinh(a*x)/x^2, x, 4, -(asinh(a*x)/x) - a*atanh(sqrt(1 + a^2*x^2))]
    @test_int [asinh(a*x)/x^3, x, 2, -((a*sqrt(1 + a^2*x^2))/(2*x)) - asinh(a*x)/(2*x^2)]
    @test_int [asinh(a*x)/x^4, x, 5, -((a*sqrt(1 + a^2*x^2))/(6*x^2)) - asinh(a*x)/(3*x^3) + (1/6)*a^3*atanh(sqrt(1 + a^2*x^2))]
    @test_int [asinh(a*x)/x^5, x, 3, -((a*sqrt(1 + a^2*x^2))/(12*x^3)) + (a^3*sqrt(1 + a^2*x^2))/(6*x) - asinh(a*x)/(4*x^4)]
    @test_int [asinh(a*x)/x^6, x, 6, -((a*sqrt(1 + a^2*x^2))/(20*x^4)) + (3*a^3*sqrt(1 + a^2*x^2))/(40*x^2) - asinh(a*x)/(5*x^5) - (3/40)*a^5*atanh(sqrt(1 + a^2*x^2))]


    @test_int [x^4*asinh(a*x)^2, x, 7, (16*x)/(75*a^4) - (8*x^3)/(225*a^2) + (2*x^5)/125 - (16*sqrt(1 + a^2*x^2)*asinh(a*x))/(75*a^5) + (8*x^2*sqrt(1 + a^2*x^2)*asinh(a*x))/(75*a^3) - (2*x^4*sqrt(1 + a^2*x^2)*asinh(a*x))/(25*a) + (1/5)*x^5*asinh(a*x)^2]
    @test_int [x^3*asinh(a*x)^2, x, 6, (-3*x^2)/(32*a^2) + x^4/32 + (3*x*sqrt(1 + a^2*x^2)*asinh(a*x))/(16*a^3) - (x^3*sqrt(1 + a^2*x^2)*asinh(a*x))/(8*a) - (3*asinh(a*x)^2)/(32*a^4) + (x^4*asinh(a*x)^2)/4]
    @test_int [x^2*asinh(a*x)^2, x, 5, -((4*x)/(9*a^2)) + (2*x^3)/27 + (4*sqrt(1 + a^2*x^2)*asinh(a*x))/(9*a^3) - (2*x^2*sqrt(1 + a^2*x^2)*asinh(a*x))/(9*a) + (1/3)*x^3*asinh(a*x)^2]
    @test_int [x*asinh(a*x)^2, x, 4, x^2/4 - (x*sqrt(1 + a^2*x^2)*asinh(a*x))/(2*a) + asinh(a*x)^2/(4*a^2) + (x^2*asinh(a*x)^2)/2]
    @test_int [asinh(a*x)^2, x, 3, 2*x - (2*sqrt(1 + a^2*x^2)*asinh(a*x))/a + x*asinh(a*x)^2]
    @test_int [asinh(a*x)^2/x, x, 6, -asinh(a*x)^3/3 + asinh(a*x)^2*log(1 - ℯ^(2*asinh(a*x))) + asinh(a*x)*PolyLog(2, ℯ^(2*asinh(a*x))) - PolyLog(3, ℯ^(2*asinh(a*x)))/2]
    @test_int [asinh(a*x)^2/x^2, x, 7, -(asinh(a*x)^2/x) - 4*a*asinh(a*x)*atanh(ℯ^asinh(a*x)) - 2*a*PolyLog(2, -ℯ^asinh(a*x)) + 2*a*PolyLog(2, ℯ^asinh(a*x))]
    @test_int [asinh(a*x)^2/x^3, x, 3, -((a*sqrt(1 + a^2*x^2)*asinh(a*x))/x) - asinh(a*x)^2/(2*x^2) + a^2*log(x)]
    @test_int [asinh(a*x)^2/x^4, x, 9, -(a^2/(3*x)) - (a*sqrt(1 + a^2*x^2)*asinh(a*x))/(3*x^2) - asinh(a*x)^2/(3*x^3) + (2/3)*a^3*asinh(a*x)*atanh(ℯ^asinh(a*x)) + (1/3)*a^3*PolyLog(2, -ℯ^asinh(a*x)) - (1/3)*a^3*PolyLog(2, ℯ^asinh(a*x))]
    @test_int [asinh(a*x)^2/x^5, x, 5, -a^2/(12*x^2) - (a*sqrt(1 + a^2*x^2)*asinh(a*x))/(6*x^3) + (a^3*sqrt(1 + a^2*x^2)*asinh(a*x))/(3*x) - asinh(a*x)^2/(4*x^4) - (a^4*log(x))/3]


    @test_int [x^4*asinh(a*x)^3, x, 14, -((298*sqrt(1 + a^2*x^2))/(375*a^5)) + (76*(1 + a^2*x^2)^(3/2))/(1125*a^5) - (6*(1 + a^2*x^2)^(5/2))/(625*a^5) + (16*x*asinh(a*x))/(25*a^4) - (8*x^3*asinh(a*x))/(75*a^2) + (6/125)*x^5*asinh(a*x) - (8*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(25*a^5) + (4*x^2*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(25*a^3) - (3*x^4*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(25*a) + (1/5)*x^5*asinh(a*x)^3]
    @test_int [x^3*asinh(a*x)^3, x, 11, (45*x*sqrt(1 + a^2*x^2))/(256*a^3) - (3*x^3*sqrt(1 + a^2*x^2))/(128*a) - (45*asinh(a*x))/(256*a^4) - (9*x^2*asinh(a*x))/(32*a^2) + (3*x^4*asinh(a*x))/32 + (9*x*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(32*a^3) - (3*x^3*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(16*a) - (3*asinh(a*x)^3)/(32*a^4) + (x^4*asinh(a*x)^3)/4]
    @test_int [x^2*asinh(a*x)^3, x, 9, (14*sqrt(1 + a^2*x^2))/(9*a^3) - (2*(1 + a^2*x^2)^(3/2))/(27*a^3) - (4*x*asinh(a*x))/(3*a^2) + (2/9)*x^3*asinh(a*x) + (2*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(3*a^3) - (x^2*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(3*a) + (1/3)*x^3*asinh(a*x)^3]
    @test_int [x*asinh(a*x)^3, x, 6, (-3*x*sqrt(1 + a^2*x^2))/(8*a) + (3*asinh(a*x))/(8*a^2) + (3*x^2*asinh(a*x))/4 - (3*x*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(4*a) + asinh(a*x)^3/(4*a^2) + (x^2*asinh(a*x)^3)/2]
    @test_int [asinh(a*x)^3, x, 4, (-6*sqrt(1 + a^2*x^2))/a + 6*x*asinh(a*x) - (3*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/a + x*asinh(a*x)^3]
    @test_int [asinh(a*x)^3/x, x, 7, -asinh(a*x)^4/4 + asinh(a*x)^3*log(1 - ℯ^(2*asinh(a*x))) + (3*asinh(a*x)^2*PolyLog(2, ℯ^(2*asinh(a*x))))/2 - (3*asinh(a*x)*PolyLog(3, ℯ^(2*asinh(a*x))))/2 + (3*PolyLog(4, ℯ^(2*asinh(a*x))))/4]
    @test_int [asinh(a*x)^3/x^2, x, 9, -(asinh(a*x)^3/x) - 6*a*asinh(a*x)^2*atanh(ℯ^asinh(a*x)) - 6*a*asinh(a*x)*PolyLog(2, -ℯ^asinh(a*x)) + 6*a*asinh(a*x)*PolyLog(2, ℯ^asinh(a*x)) + 6*a*PolyLog(3, -ℯ^asinh(a*x)) - 6*a*PolyLog(3, ℯ^asinh(a*x))]
    @test_int [asinh(a*x)^3/x^3, x, 7, (-3*a^2*asinh(a*x)^2)/2 - (3*a*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(2*x) - asinh(a*x)^3/(2*x^2) + 3*a^2*asinh(a*x)*log(1 - ℯ^(2*asinh(a*x))) + (3*a^2*PolyLog(2, ℯ^(2*asinh(a*x))))/2]
    @test_int [asinh(a*x)^3/x^4, x, 14, -((a^2*asinh(a*x))/x) - (a*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(2*x^2) - asinh(a*x)^3/(3*x^3) + a^3*asinh(a*x)^2*atanh(ℯ^asinh(a*x)) - a^3*atanh(sqrt(1 + a^2*x^2)) + a^3*asinh(a*x)*PolyLog(2, -ℯ^asinh(a*x)) - a^3*asinh(a*x)*PolyLog(2, ℯ^asinh(a*x)) - a^3*PolyLog(3, -ℯ^asinh(a*x)) + a^3*PolyLog(3, ℯ^asinh(a*x))]
    @test_int [asinh(a*x)^3/x^5, x, 10, -(a^3*sqrt(1 + a^2*x^2))/(4*x) - (a^2*asinh(a*x))/(4*x^2) + (a^4*asinh(a*x)^2)/2 - (a*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(4*x^3) + (a^3*sqrt(1 + a^2*x^2)*asinh(a*x)^2)/(2*x) - asinh(a*x)^3/(4*x^4) - a^4*asinh(a*x)*log(1 - ℯ^(2*asinh(a*x))) - (a^4*PolyLog(2, ℯ^(2*asinh(a*x))))/2]


    @test_int [x^5*asinh(a*x)^4, x, 23, (245*x^2)/(1152*a^4) - (65*x^4)/(3456*a^2) + x^6/324 - (245*x*sqrt(1 + a^2*x^2)*asinh(a*x))/(576*a^5) + (65*x^3*sqrt(1 + a^2*x^2)*asinh(a*x))/(864*a^3) - (x^5*sqrt(1 + a^2*x^2)*asinh(a*x))/(54*a) + (245*asinh(a*x)^2)/(1152*a^6) + (5*x^2*asinh(a*x)^2)/(16*a^4) - (5*x^4*asinh(a*x)^2)/(48*a^2) + (x^6*asinh(a*x)^2)/18 - (5*x*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(24*a^5) + (5*x^3*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(36*a^3) - (x^5*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(9*a) + (5*asinh(a*x)^4)/(96*a^6) + (x^6*asinh(a*x)^4)/6]
    @test_int [x^4*asinh(a*x)^4, x, 19, (16576*x)/(5625*a^4) - (1088*x^3)/(16875*a^2) + (24*x^5)/3125 - (16576*sqrt(1 + a^2*x^2)*asinh(a*x))/(5625*a^5) + (1088*x^2*sqrt(1 + a^2*x^2)*asinh(a*x))/(5625*a^3) - (24*x^4*sqrt(1 + a^2*x^2)*asinh(a*x))/(625*a) + (32*x*asinh(a*x)^2)/(25*a^4) - (16*x^3*asinh(a*x)^2)/(75*a^2) + (12/125)*x^5*asinh(a*x)^2 - (32*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(75*a^5) + (16*x^2*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(75*a^3) - (4*x^4*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(25*a) + (1/5)*x^5*asinh(a*x)^4]
    @test_int [x^3*asinh(a*x)^4, x, 14, (-45*x^2)/(128*a^2) + (3*x^4)/128 + (45*x*sqrt(1 + a^2*x^2)*asinh(a*x))/(64*a^3) - (3*x^3*sqrt(1 + a^2*x^2)*asinh(a*x))/(32*a) - (45*asinh(a*x)^2)/(128*a^4) - (9*x^2*asinh(a*x)^2)/(16*a^2) + (3*x^4*asinh(a*x)^2)/16 + (3*x*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(8*a^3) - (x^3*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(4*a) - (3*asinh(a*x)^4)/(32*a^4) + (x^4*asinh(a*x)^4)/4]
    @test_int [x^2*asinh(a*x)^4, x, 11, -((160*x)/(27*a^2)) + (8*x^3)/81 + (160*sqrt(1 + a^2*x^2)*asinh(a*x))/(27*a^3) - (8*x^2*sqrt(1 + a^2*x^2)*asinh(a*x))/(27*a) - (8*x*asinh(a*x)^2)/(3*a^2) + (4/9)*x^3*asinh(a*x)^2 + (8*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(9*a^3) - (4*x^2*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(9*a) + (1/3)*x^3*asinh(a*x)^4]
    @test_int [x*asinh(a*x)^4, x, 7, (3*x^2)/4 - (3*x*sqrt(1 + a^2*x^2)*asinh(a*x))/(2*a) + (3*asinh(a*x)^2)/(4*a^2) + (3*x^2*asinh(a*x)^2)/2 - (x*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/a + asinh(a*x)^4/(4*a^2) + (x^2*asinh(a*x)^4)/2]
    @test_int [asinh(a*x)^4, x, 5, 24*x - (24*sqrt(1 + a^2*x^2)*asinh(a*x))/a + 12*x*asinh(a*x)^2 - (4*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/a + x*asinh(a*x)^4]
    @test_int [asinh(a*x)^4/x, x, 8, -asinh(a*x)^5/5 + asinh(a*x)^4*log(1 - ℯ^(2*asinh(a*x))) + 2*asinh(a*x)^3*PolyLog(2, ℯ^(2*asinh(a*x))) - 3*asinh(a*x)^2*PolyLog(3, ℯ^(2*asinh(a*x))) + 3*asinh(a*x)*PolyLog(4, ℯ^(2*asinh(a*x))) - (3*PolyLog(5, ℯ^(2*asinh(a*x))))/2]
    @test_int [asinh(a*x)^4/x^2, x, 11, -(asinh(a*x)^4/x) - 8*a*asinh(a*x)^3*atanh(ℯ^asinh(a*x)) - 12*a*asinh(a*x)^2*PolyLog(2, -ℯ^asinh(a*x)) + 12*a*asinh(a*x)^2*PolyLog(2, ℯ^asinh(a*x)) + 24*a*asinh(a*x)*PolyLog(3, -ℯ^asinh(a*x)) - 24*a*asinh(a*x)*PolyLog(3, ℯ^asinh(a*x)) - 24*a*PolyLog(4, -ℯ^asinh(a*x)) + 24*a*PolyLog(4, ℯ^asinh(a*x))]
    @test_int [asinh(a*x)^4/x^3, x, 8, -2*a^2*asinh(a*x)^3 - (2*a*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/x - asinh(a*x)^4/(2*x^2) + 6*a^2*asinh(a*x)^2*log(1 - ℯ^(2*asinh(a*x))) + 6*a^2*asinh(a*x)*PolyLog(2, ℯ^(2*asinh(a*x))) - 3*a^2*PolyLog(3, ℯ^(2*asinh(a*x)))]
    @test_int [asinh(a*x)^4/x^4, x, 19, -((2*a^2*asinh(a*x)^2)/x) - (2*a*sqrt(1 + a^2*x^2)*asinh(a*x)^3)/(3*x^2) - asinh(a*x)^4/(3*x^3) - 8*a^3*asinh(a*x)*atanh(ℯ^asinh(a*x)) + (4/3)*a^3*asinh(a*x)^3*atanh(ℯ^asinh(a*x)) - 4*a^3*PolyLog(2, -ℯ^asinh(a*x)) + 2*a^3*asinh(a*x)^2*PolyLog(2, -ℯ^asinh(a*x)) + 4*a^3*PolyLog(2, ℯ^asinh(a*x)) - 2*a^3*asinh(a*x)^2*PolyLog(2, ℯ^asinh(a*x)) - 4*a^3*asinh(a*x)*PolyLog(3, -ℯ^asinh(a*x)) + 4*a^3*asinh(a*x)*PolyLog(3, ℯ^asinh(a*x)) + 4*a^3*PolyLog(4, -ℯ^asinh(a*x)) - 4*a^3*PolyLog(4, ℯ^asinh(a*x))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^6/asinh(a*x), x, 7, -((5*CoshIntegral(asinh(a*x)))/(64*a^7)) + (9*CoshIntegral(3*asinh(a*x)))/(64*a^7) - (5*CoshIntegral(5*asinh(a*x)))/(64*a^7) + CoshIntegral(7*asinh(a*x))/(64*a^7)]
    @test_int [x^5/asinh(a*x), x, 6, (5*SinhIntegral(2*asinh(a*x)))/(32*a^6) - SinhIntegral(4*asinh(a*x))/(8*a^6) + SinhIntegral(6*asinh(a*x))/(32*a^6)]
    @test_int [x^4/asinh(a*x), x, 6, CoshIntegral(asinh(a*x))/(8*a^5) - (3*CoshIntegral(3*asinh(a*x)))/(16*a^5) + CoshIntegral(5*asinh(a*x))/(16*a^5)]
    @test_int [x^3/asinh(a*x), x, 5, -SinhIntegral(2*asinh(a*x))/(4*a^4) + SinhIntegral(4*asinh(a*x))/(8*a^4)]
    @test_int [x^2/asinh(a*x), x, 5, -CoshIntegral(asinh(a*x))/(4*a^3) + CoshIntegral(3*asinh(a*x))/(4*a^3)]
    @test_int [x/asinh(a*x), x, 4, SinhIntegral(2*asinh(a*x))/(2*a^2)]
    @test_int [asinh(a*x)^(-1), x, 2, CoshIntegral(asinh(a*x))/a]
    @test_int [1/(x*asinh(a*x)), x, 0, Unintegrable(1/(x*asinh(a*x)), x)]
    @test_int [1/(x^2*asinh(a*x)), x, 0, Unintegrable(1/(x^2*asinh(a*x)), x)]


    @test_int [x^6/asinh(a*x)^2, x, 6, -((x^6*sqrt(1 + a^2*x^2))/(a*asinh(a*x))) - (5*SinhIntegral(asinh(a*x)))/(64*a^7) + (27*SinhIntegral(3*asinh(a*x)))/(64*a^7) - (25*SinhIntegral(5*asinh(a*x)))/(64*a^7) + (7*SinhIntegral(7*asinh(a*x)))/(64*a^7)]
    @test_int [x^5/asinh(a*x)^2, x, 5, -((x^5*sqrt(1 + a^2*x^2))/(a*asinh(a*x))) + (5*CoshIntegral(2*asinh(a*x)))/(16*a^6) - CoshIntegral(4*asinh(a*x))/(2*a^6) + (3*CoshIntegral(6*asinh(a*x)))/(16*a^6)]
    @test_int [x^4/asinh(a*x)^2, x, 5, -((x^4*sqrt(1 + a^2*x^2))/(a*asinh(a*x))) + SinhIntegral(asinh(a*x))/(8*a^5) - (9*SinhIntegral(3*asinh(a*x)))/(16*a^5) + (5*SinhIntegral(5*asinh(a*x)))/(16*a^5)]
    @test_int [x^3/asinh(a*x)^2, x, 4, -((x^3*sqrt(1 + a^2*x^2))/(a*asinh(a*x))) - CoshIntegral(2*asinh(a*x))/(2*a^4) + CoshIntegral(4*asinh(a*x))/(2*a^4)]
    @test_int [x^2/asinh(a*x)^2, x, 4, -((x^2*sqrt(1 + a^2*x^2))/(a*asinh(a*x))) - SinhIntegral(asinh(a*x))/(4*a^3) + (3*SinhIntegral(3*asinh(a*x)))/(4*a^3)]
    @test_int [x/asinh(a*x)^2, x, 2, -((x*sqrt(1 + a^2*x^2))/(a*asinh(a*x))) + CoshIntegral(2*asinh(a*x))/a^2]
    @test_int [asinh(a*x)^(-2), x, 3, -(sqrt(1 + a^2*x^2)/(a*asinh(a*x))) + SinhIntegral(asinh(a*x))/a]
    @test_int [1/(x*asinh(a*x)^2), x, 0, Unintegrable(1/(x*asinh(a*x)^2), x)]
    @test_int [1/(x^2*asinh(a*x)^2), x, 0, Unintegrable(1/(x^2*asinh(a*x)^2), x)]


    @test_int [x^4/asinh(a*x)^3, x, 14, -(x^4*sqrt(1 + a^2*x^2))/(2*a*asinh(a*x)^2) - (2*x^3)/(a^2*asinh(a*x)) - (5*x^5)/(2*asinh(a*x)) + CoshIntegral(asinh(a*x))/(16*a^5) - (27*CoshIntegral(3*asinh(a*x)))/(32*a^5) + (25*CoshIntegral(5*asinh(a*x)))/(32*a^5)]
    @test_int [x^3/asinh(a*x)^3, x, 12, -(x^3*sqrt(1 + a^2*x^2))/(2*a*asinh(a*x)^2) - (3*x^2)/(2*a^2*asinh(a*x)) - (2*x^4)/asinh(a*x) - SinhIntegral(2*asinh(a*x))/(2*a^4) + SinhIntegral(4*asinh(a*x))/a^4]
    @test_int [x^2/asinh(a*x)^3, x, 10, -(x^2*sqrt(1 + a^2*x^2))/(2*a*asinh(a*x)^2) - x/(a^2*asinh(a*x)) - (3*x^3)/(2*asinh(a*x)) - CoshIntegral(asinh(a*x))/(8*a^3) + (9*CoshIntegral(3*asinh(a*x)))/(8*a^3)]
    @test_int [x/asinh(a*x)^3, x, 7, -(x*sqrt(1 + a^2*x^2))/(2*a*asinh(a*x)^2) - 1/(2*a^2*asinh(a*x)) - x^2/asinh(a*x) + SinhIntegral(2*asinh(a*x))/a^2]
    @test_int [asinh(a*x)^(-3), x, 4, -sqrt(1 + a^2*x^2)/(2*a*asinh(a*x)^2) - x/(2*asinh(a*x)) + CoshIntegral(asinh(a*x))/(2*a)]
    @test_int [1/(x*asinh(a*x)^3), x, 0, Unintegrable(1/(x*asinh(a*x)^3), x)]
    @test_int [1/(x^2*asinh(a*x)^3), x, 0, Unintegrable(1/(x^2*asinh(a*x)^3), x)]


    @test_int [x^4/asinh(a*x)^4, x, 12, -(x^4*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)^3) - (2*x^3)/(3*a^2*asinh(a*x)^2) - (5*x^5)/(6*asinh(a*x)^2) - (2*x^2*sqrt(1 + a^2*x^2))/(a^3*asinh(a*x)) - (25*x^4*sqrt(1 + a^2*x^2))/(6*a*asinh(a*x)) + SinhIntegral(asinh(a*x))/(48*a^5) - (27*SinhIntegral(3*asinh(a*x)))/(32*a^5) + (125*SinhIntegral(5*asinh(a*x)))/(96*a^5)]
    @test_int [x^3/asinh(a*x)^4, x, 9, -(x^3*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)^3) - x^2/(2*a^2*asinh(a*x)^2) - (2*x^4)/(3*asinh(a*x)^2) - (x*sqrt(1 + a^2*x^2))/(a^3*asinh(a*x)) - (8*x^3*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)) - CoshIntegral(2*asinh(a*x))/(3*a^4) + (4*CoshIntegral(4*asinh(a*x)))/(3*a^4)]
    @test_int [x^2/asinh(a*x)^4, x, 10, -(x^2*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)^3) - x/(3*a^2*asinh(a*x)^2) - x^3/(2*asinh(a*x)^2) - sqrt(1 + a^2*x^2)/(3*a^3*asinh(a*x)) - (3*x^2*sqrt(1 + a^2*x^2))/(2*a*asinh(a*x)) - SinhIntegral(asinh(a*x))/(24*a^3) + (9*SinhIntegral(3*asinh(a*x)))/(8*a^3)]
    @test_int [x/asinh(a*x)^4, x, 5, -(x*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)^3) - 1/(6*a^2*asinh(a*x)^2) - x^2/(3*asinh(a*x)^2) - (2*x*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)) + (2*CoshIntegral(2*asinh(a*x)))/(3*a^2)]
    @test_int [asinh(a*x)^(-4), x, 5, -sqrt(1 + a^2*x^2)/(3*a*asinh(a*x)^3) - x/(6*asinh(a*x)^2) - sqrt(1 + a^2*x^2)/(6*a*asinh(a*x)) + SinhIntegral(asinh(a*x))/(6*a)]
    @test_int [1/(x*asinh(a*x)^4), x, 0, Unintegrable(1/(x*asinh(a*x)^4), x)]
    @test_int [1/(x^2*asinh(a*x)^4), x, 0, Unintegrable(1/(x^2*asinh(a*x)^4), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*asinh(a*x)^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^4*sqrt(asinh(a*x)), x, 19, (x^5*sqrt(asinh(a*x)))/5 + (sqrt(pi)*erf(sqrt(asinh(a*x))))/(32*a^5) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(asinh(a*x))))/(64*a^5) + (sqrt(pi/5)*erf(sqrt(5)*sqrt(asinh(a*x))))/(320*a^5) - (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(32*a^5) + (sqrt(pi/3)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(64*a^5) - (sqrt(pi/5)*erfi(sqrt(5)*sqrt(asinh(a*x))))/(320*a^5)]
    @test_int [x^3*sqrt(asinh(a*x)), x, 14, (-3*sqrt(asinh(a*x)))/(32*a^4) + (x^4*sqrt(asinh(a*x)))/4 - (sqrt(pi)*erf(2*sqrt(asinh(a*x))))/(256*a^4) + (sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/(32*a^4) - (sqrt(pi)*erfi(2*sqrt(asinh(a*x))))/(256*a^4) + (sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(32*a^4)]
    @test_int [x^2*sqrt(asinh(a*x)), x, 14, (x^3*sqrt(asinh(a*x)))/3 - (sqrt(pi)*erf(sqrt(asinh(a*x))))/(16*a^3) + (sqrt(pi/3)*erf(sqrt(3)*sqrt(asinh(a*x))))/(48*a^3) + (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(16*a^3) - (sqrt(pi/3)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(48*a^3)]
    @test_int [x*sqrt(asinh(a*x)), x, 9, sqrt(asinh(a*x))/(4*a^2) + (x^2*sqrt(asinh(a*x)))/2 - (sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/(16*a^2) - (sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(16*a^2)]
    @test_int [sqrt(asinh(a*x)), x, 7, x*sqrt(asinh(a*x)) + (sqrt(pi)*erf(sqrt(asinh(a*x))))/(4*a) - (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(4*a)]
    @test_int [sqrt(asinh(a*x))/x, x, 0, Unintegrable(sqrt(asinh(a*x))/x, x)]


    @test_int [x^4*asinh(a*x)^(3/2), x, 41, -((4*sqrt(1 + a^2*x^2)*sqrt(asinh(a*x)))/(25*a^5)) + (2*x^2*sqrt(1 + a^2*x^2)*sqrt(asinh(a*x)))/(25*a^3) - (3*x^4*sqrt(1 + a^2*x^2)*sqrt(asinh(a*x)))/(50*a) + (1/5)*x^5*asinh(a*x)^(3/2) + (3*sqrt(pi)*erf(sqrt(asinh(a*x))))/(64*a^5) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(asinh(a*x))))/(200*a^5) - (3*sqrt(3*pi)*erf(sqrt(3)*sqrt(asinh(a*x))))/(3200*a^5) + (3*sqrt(pi/5)*erf(sqrt(5)*sqrt(asinh(a*x))))/(3200*a^5) + (3*sqrt(pi)*erfi(sqrt(asinh(a*x))))/(64*a^5) - (sqrt(pi/3)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(200*a^5) - (3*sqrt(3*pi)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(3200*a^5) + (3*sqrt(pi/5)*erfi(sqrt(5)*sqrt(asinh(a*x))))/(3200*a^5)]
    @test_int [x^3*asinh(a*x)^(3/2), x, 25, (9*x*sqrt(1 + a^2*x^2)*sqrt(asinh(a*x)))/(64*a^3) - (3*x^3*sqrt(1 + a^2*x^2)*sqrt(asinh(a*x)))/(32*a) - (3*asinh(a*x)^(3/2))/(32*a^4) + (1/4)*x^4*asinh(a*x)^(3/2) - (3*sqrt(pi)*erf(2*sqrt(asinh(a*x))))/(2048*a^4) + (3*sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/(128*a^4) + (3*sqrt(pi)*erfi(2*sqrt(asinh(a*x))))/(2048*a^4) - (3*sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(128*a^4)]
    @test_int [x^2*asinh(a*x)^(3/2), x, 22, (sqrt(1 + a^2*x^2)*sqrt(asinh(a*x)))/(3*a^3) - (x^2*sqrt(1 + a^2*x^2)*sqrt(asinh(a*x)))/(6*a) + (1/3)*x^3*asinh(a*x)^(3/2) - (3*sqrt(pi)*erf(sqrt(asinh(a*x))))/(32*a^3) + (sqrt(pi/3)*erf(sqrt(3)*sqrt(asinh(a*x))))/(96*a^3) - (3*sqrt(pi)*erfi(sqrt(asinh(a*x))))/(32*a^3) + (sqrt(pi/3)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(96*a^3)]
    @test_int [x^1*asinh(a*x)^(3/2), x, 11, -((3*x*sqrt(1 + a^2*x^2)*sqrt(asinh(a*x)))/(8*a)) + asinh(a*x)^(3/2)/(4*a^2) + (1/2)*x^2*asinh(a*x)^(3/2) - (3*sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/(64*a^2) + (3*sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(64*a^2)]
    @test_int [asinh(a*x)^(3/2), x, 8, (-3*sqrt(1 + a^2*x^2)*sqrt(asinh(a*x)))/(2*a) + x*asinh(a*x)^(3/2) + (3*sqrt(pi)*erf(sqrt(asinh(a*x))))/(8*a) + (3*sqrt(pi)*erfi(sqrt(asinh(a*x))))/(8*a)]
    @test_int [asinh(a*x)^(3/2)/x, x, 0, Unintegrable(asinh(a*x)^(3/2)/x, x)]


    @test_int [x^4*asinh(a*x)^(5/2), x, 44, (2*x*sqrt(asinh(a*x)))/(5*a^4) - (x^3*sqrt(asinh(a*x)))/(15*a^2) + (3/100)*x^5*sqrt(asinh(a*x)) - (4*sqrt(1 + a^2*x^2)*asinh(a*x)^(3/2))/(15*a^5) + (2*x^2*sqrt(1 + a^2*x^2)*asinh(a*x)^(3/2))/(15*a^3) - (x^4*sqrt(1 + a^2*x^2)*asinh(a*x)^(3/2))/(10*a) + (1/5)*x^5*asinh(a*x)^(5/2) + (15*sqrt(pi)*erf(sqrt(asinh(a*x))))/(128*a^5) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(asinh(a*x))))/(240*a^5) - (sqrt(3*pi)*erf(sqrt(3)*sqrt(asinh(a*x))))/(1280*a^5) + (3*sqrt(pi/5)*erf(sqrt(5)*sqrt(asinh(a*x))))/(6400*a^5) - (15*sqrt(pi)*erfi(sqrt(asinh(a*x))))/(128*a^5) + (sqrt(pi/3)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(240*a^5) + (sqrt(3*pi)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(1280*a^5) - (3*sqrt(pi/5)*erfi(sqrt(5)*sqrt(asinh(a*x))))/(6400*a^5)]
    @test_int [x^3*asinh(a*x)^(5/2), x, 27, (-225*sqrt(asinh(a*x)))/(2048*a^4) - (45*x^2*sqrt(asinh(a*x)))/(256*a^2) + (15*x^4*sqrt(asinh(a*x)))/256 + (15*x*sqrt(1 + a^2*x^2)*asinh(a*x)^(3/2))/(64*a^3) - (5*x^3*sqrt(1 + a^2*x^2)*asinh(a*x)^(3/2))/(32*a) - (3*asinh(a*x)^(5/2))/(32*a^4) + (x^4*asinh(a*x)^(5/2))/4 - (15*sqrt(pi)*erf(2*sqrt(asinh(a*x))))/(16384*a^4) + (15*sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/(512*a^4) - (15*sqrt(pi)*erfi(2*sqrt(asinh(a*x))))/(16384*a^4) + (15*sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(512*a^4)]
    @test_int [x^2*asinh(a*x)^(5/2), x, 24, (-5*x*sqrt(asinh(a*x)))/(6*a^2) + (5*x^3*sqrt(asinh(a*x)))/36 + (5*sqrt(1 + a^2*x^2)*asinh(a*x)^(3/2))/(9*a^3) - (5*x^2*sqrt(1 + a^2*x^2)*asinh(a*x)^(3/2))/(18*a) + (x^3*asinh(a*x)^(5/2))/3 - (15*sqrt(pi)*erf(sqrt(asinh(a*x))))/(64*a^3) + (5*sqrt(pi/3)*erf(sqrt(3)*sqrt(asinh(a*x))))/(576*a^3) + (15*sqrt(pi)*erfi(sqrt(asinh(a*x))))/(64*a^3) - (5*sqrt(pi/3)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(576*a^3)]
    @test_int [x*asinh(a*x)^(5/2), x, 12, (15*sqrt(asinh(a*x)))/(64*a^2) + (15*x^2*sqrt(asinh(a*x)))/32 - (5*x*sqrt(1 + a^2*x^2)*asinh(a*x)^(3/2))/(8*a) + asinh(a*x)^(5/2)/(4*a^2) + (x^2*asinh(a*x)^(5/2))/2 - (15*sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/(256*a^2) - (15*sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(256*a^2)]
    @test_int [asinh(a*x)^(5/2), x, 9, (15*x*sqrt(asinh(a*x)))/4 - (5*sqrt(1 + a^2*x^2)*asinh(a*x)^(3/2))/(2*a) + x*asinh(a*x)^(5/2) + (15*sqrt(pi)*erf(sqrt(asinh(a*x))))/(16*a) - (15*sqrt(pi)*erfi(sqrt(asinh(a*x))))/(16*a)]
    @test_int [asinh(a*x)^(5/2)/x, x, 0, Unintegrable(asinh(a*x)^(5/2)/x, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^4/sqrt(asinh(a*x)), x, 18, (sqrt(pi)*erf(sqrt(asinh(a*x))))/(16*a^5) - (sqrt(3*pi)*erf(sqrt(3)*sqrt(asinh(a*x))))/(32*a^5) + (sqrt(pi/5)*erf(sqrt(5)*sqrt(asinh(a*x))))/(32*a^5) + (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(16*a^5) - (sqrt(3*pi)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(32*a^5) + (sqrt(pi/5)*erfi(sqrt(5)*sqrt(asinh(a*x))))/(32*a^5)]
    @test_int [x^3/sqrt(asinh(a*x)), x, 13, -(sqrt(pi)*erf(2*sqrt(asinh(a*x))))/(32*a^4) + (sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/(8*a^4) + (sqrt(pi)*erfi(2*sqrt(asinh(a*x))))/(32*a^4) - (sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(8*a^4)]
    @test_int [x^2/sqrt(asinh(a*x)), x, 13, -(sqrt(pi)*erf(sqrt(asinh(a*x))))/(8*a^3) + (sqrt(pi/3)*erf(sqrt(3)*sqrt(asinh(a*x))))/(8*a^3) - (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(8*a^3) + (sqrt(pi/3)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(8*a^3)]
    @test_int [x/sqrt(asinh(a*x)), x, 8, -(sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/(4*a^2) + (sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(4*a^2)]
    @test_int [1/sqrt(asinh(a*x)), x, 6, (sqrt(pi)*erf(sqrt(asinh(a*x))))/(2*a) + (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(2*a)]
    @test_int [1/(x*sqrt(asinh(a*x))), x, 0, Unintegrable(1/(x*sqrt(asinh(a*x))), x)]
    @test_int [1/(x^2*sqrt(asinh(a*x))), x, 0, Unintegrable(1/(x^2*sqrt(asinh(a*x))), x)]


    @test_int [x^4/asinh(a*x)^(3/2), x, 17, -((2*x^4*sqrt(1 + a^2*x^2))/(a*sqrt(asinh(a*x)))) - (sqrt(pi)*erf(sqrt(asinh(a*x))))/(8*a^5) + (3*sqrt(3*pi)*erf(sqrt(3)*sqrt(asinh(a*x))))/(16*a^5) - (sqrt(5*pi)*erf(sqrt(5)*sqrt(asinh(a*x))))/(16*a^5) + (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(8*a^5) - (3*sqrt(3*pi)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(16*a^5) + (sqrt(5*pi)*erfi(sqrt(5)*sqrt(asinh(a*x))))/(16*a^5)]
    @test_int [x^3/asinh(a*x)^(3/2), x, 12, -((2*x^3*sqrt(1 + a^2*x^2))/(a*sqrt(asinh(a*x)))) + (sqrt(pi)*erf(2*sqrt(asinh(a*x))))/(4*a^4) - (sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/(2*a^4) + (sqrt(pi)*erfi(2*sqrt(asinh(a*x))))/(4*a^4) - (sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(2*a^4)]
    @test_int [x^2/asinh(a*x)^(3/2), x, 12, -((2*x^2*sqrt(1 + a^2*x^2))/(a*sqrt(asinh(a*x)))) + (sqrt(pi)*erf(sqrt(asinh(a*x))))/(4*a^3) - (sqrt(3*pi)*erf(sqrt(3)*sqrt(asinh(a*x))))/(4*a^3) - (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(4*a^3) + (sqrt(3*pi)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(4*a^3)]
    @test_int [x/asinh(a*x)^(3/2), x, 6, (-2*x*sqrt(1 + a^2*x^2))/(a*sqrt(asinh(a*x))) + (sqrt(pi/2)*erf(sqrt(2)*sqrt(asinh(a*x))))/a^2 + (sqrt(pi/2)*erfi(sqrt(2)*sqrt(asinh(a*x))))/a^2]
    @test_int [asinh(a*x)^(-3/2), x, 7, (-2*sqrt(1 + a^2*x^2))/(a*sqrt(asinh(a*x))) - (sqrt(pi)*erf(sqrt(asinh(a*x))))/a + (sqrt(pi)*erfi(sqrt(asinh(a*x))))/a]
    @test_int [1/(x*asinh(a*x)^(3/2)), x, 0, Unintegrable(1/(x*asinh(a*x)^(3/2)), x)]


    @test_int [x^4/asinh(a*x)^(5/2), x, 34, -((2*x^4*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)^(3/2))) - (16*x^3)/(3*a^2*sqrt(asinh(a*x))) - (20*x^5)/(3*sqrt(asinh(a*x))) + (sqrt(pi)*erf(sqrt(asinh(a*x))))/(12*a^5) - (3*sqrt(3*pi)*erf(sqrt(3)*sqrt(asinh(a*x))))/(8*a^5) + (5*sqrt(5*pi)*erf(sqrt(5)*sqrt(asinh(a*x))))/(24*a^5) + (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(12*a^5) - (3*sqrt(3*pi)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(8*a^5) + (5*sqrt(5*pi)*erfi(sqrt(5)*sqrt(asinh(a*x))))/(24*a^5)]
    @test_int [x^3/asinh(a*x)^(5/2), x, 24, (-2*x^3*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)^(3/2)) - (4*x^2)/(a^2*sqrt(asinh(a*x))) - (16*x^4)/(3*sqrt(asinh(a*x))) - (2*sqrt(pi)*erf(2*sqrt(asinh(a*x))))/(3*a^4) + (sqrt(2*pi)*erf(sqrt(2)*sqrt(asinh(a*x))))/(3*a^4) + (2*sqrt(pi)*erfi(2*sqrt(asinh(a*x))))/(3*a^4) - (sqrt(2*pi)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(3*a^4)]
    @test_int [x^2/asinh(a*x)^(5/2), x, 22, (-2*x^2*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)^(3/2)) - (8*x)/(3*a^2*sqrt(asinh(a*x))) - (4*x^3)/sqrt(asinh(a*x)) - (sqrt(pi)*erf(sqrt(asinh(a*x))))/(6*a^3) + (sqrt(3*pi)*erf(sqrt(3)*sqrt(asinh(a*x))))/(2*a^3) - (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(6*a^3) + (sqrt(3*pi)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(2*a^3)]
    @test_int [x/asinh(a*x)^(5/2), x, 11, (-2*x*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)^(3/2)) - 4/(3*a^2*sqrt(asinh(a*x))) - (8*x^2)/(3*sqrt(asinh(a*x))) - (2*sqrt(2*pi)*erf(sqrt(2)*sqrt(asinh(a*x))))/(3*a^2) + (2*sqrt(2*pi)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(3*a^2)]
    @test_int [1/asinh(a*x)^(5/2), x, 8, (-2*sqrt(1 + a^2*x^2))/(3*a*asinh(a*x)^(3/2)) - (4*x)/(3*sqrt(asinh(a*x))) + (2*sqrt(pi)*erf(sqrt(asinh(a*x))))/(3*a) + (2*sqrt(pi)*erfi(sqrt(asinh(a*x))))/(3*a)]
    @test_int [1/(x*asinh(a*x)^(5/2)), x, 0, Unintegrable(1/(x*asinh(a*x)^(5/2)), x)]


    @test_int [x^4/asinh(a*x)^(7/2), x, 32, -((2*x^4*sqrt(1 + a^2*x^2))/(5*a*asinh(a*x)^(5/2))) - (16*x^3)/(15*a^2*asinh(a*x)^(3/2)) - (4*x^5)/(3*asinh(a*x)^(3/2)) - (32*x^2*sqrt(1 + a^2*x^2))/(5*a^3*sqrt(asinh(a*x))) - (40*x^4*sqrt(1 + a^2*x^2))/(3*a*sqrt(asinh(a*x))) - (sqrt(pi)*erf(sqrt(asinh(a*x))))/(30*a^5) + (9*sqrt(3*pi)*erf(sqrt(3)*sqrt(asinh(a*x))))/(20*a^5) - (5*sqrt(5*pi)*erf(sqrt(5)*sqrt(asinh(a*x))))/(12*a^5) + (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(30*a^5) - (9*sqrt(3*pi)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(20*a^5) + (5*sqrt(5*pi)*erfi(sqrt(5)*sqrt(asinh(a*x))))/(12*a^5)]
    @test_int [x^3/asinh(a*x)^(7/2), x, 21, (-2*x^3*sqrt(1 + a^2*x^2))/(5*a*asinh(a*x)^(5/2)) - (4*x^2)/(5*a^2*asinh(a*x)^(3/2)) - (16*x^4)/(15*asinh(a*x)^(3/2)) - (16*x*sqrt(1 + a^2*x^2))/(5*a^3*sqrt(asinh(a*x))) - (128*x^3*sqrt(1 + a^2*x^2))/(15*a*sqrt(asinh(a*x))) + (16*sqrt(pi)*erf(2*sqrt(asinh(a*x))))/(15*a^4) - (4*sqrt(2*pi)*erf(sqrt(2)*sqrt(asinh(a*x))))/(15*a^4) + (16*sqrt(pi)*erfi(2*sqrt(asinh(a*x))))/(15*a^4) - (4*sqrt(2*pi)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(15*a^4)]
    @test_int [x^2/asinh(a*x)^(7/2), x, 22, (-2*x^2*sqrt(1 + a^2*x^2))/(5*a*asinh(a*x)^(5/2)) - (8*x)/(15*a^2*asinh(a*x)^(3/2)) - (4*x^3)/(5*asinh(a*x)^(3/2)) - (16*sqrt(1 + a^2*x^2))/(15*a^3*sqrt(asinh(a*x))) - (24*x^2*sqrt(1 + a^2*x^2))/(5*a*sqrt(asinh(a*x))) + (sqrt(pi)*erf(sqrt(asinh(a*x))))/(15*a^3) - (3*sqrt(3*pi)*erf(sqrt(3)*sqrt(asinh(a*x))))/(5*a^3) - (sqrt(pi)*erfi(sqrt(asinh(a*x))))/(15*a^3) + (3*sqrt(3*pi)*erfi(sqrt(3)*sqrt(asinh(a*x))))/(5*a^3)]
    @test_int [x/asinh(a*x)^(7/2), x, 9, (-2*x*sqrt(1 + a^2*x^2))/(5*a*asinh(a*x)^(5/2)) - 4/(15*a^2*asinh(a*x)^(3/2)) - (8*x^2)/(15*asinh(a*x)^(3/2)) - (32*x*sqrt(1 + a^2*x^2))/(15*a*sqrt(asinh(a*x))) + (8*sqrt(2*pi)*erf(sqrt(2)*sqrt(asinh(a*x))))/(15*a^2) + (8*sqrt(2*pi)*erfi(sqrt(2)*sqrt(asinh(a*x))))/(15*a^2)]
    @test_int [asinh(a*x)^(-7/2), x, 9, (-2*sqrt(1 + a^2*x^2))/(5*a*asinh(a*x)^(5/2)) - (4*x)/(15*asinh(a*x)^(3/2)) - (8*sqrt(1 + a^2*x^2))/(15*a*sqrt(asinh(a*x))) - (4*sqrt(pi)*erf(sqrt(asinh(a*x))))/(15*a) + (4*sqrt(pi)*erfi(sqrt(asinh(a*x))))/(15*a)]
    @test_int [1/(x*asinh(a*x)^(7/2)), x, 0, Unintegrable(1/(x*asinh(a*x)^(7/2)), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*asin(a*x)^n*with*m*symbolic=#


    @test_int [x^m*asinh(a*x)^4, x, 1, (x^(1 + m)*asinh(a*x)^4)/(1 + m) - (4*a*Unintegrable((x^(1 + m)*asinh(a*x)^3)/sqrt(1 + a^2*x^2), x))/(1 + m)]
    @test_int [x^m*asinh(a*x)^3, x, 1, (x^(1 + m)*asinh(a*x)^3)/(1 + m) - (3*a*Unintegrable((x^(1 + m)*asinh(a*x)^2)/sqrt(1 + a^2*x^2), x))/(1 + m)]
    @test_int [x^m*asinh(a*x)^2, x, 2, (x^(1 + m)*asinh(a*x)^2)/(1 + m) - (2*a*x^(2 + m)*asinh(a*x)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, (-a^2)*x^2))/(2 + 3*m + m^2) + (2*a^2*x^(3 + m)*HypergeometricPFQ([1, 3/2 + m/2, 3/2 + m/2], [2 + m/2, 5/2 + m/2], (-a^2)*x^2))/(6 + 11*m + 6*m^2 + m^3)]
    @test_int [x^m*asinh(a*x)^1, x, 2, (x^(1 + m)*asinh(a*x))/(1 + m) - (a*x^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, -(a^2*x^2)))/(2 + 3*m + m^2)]
    @test_int [x^m/asinh(a*x)^1, x, 0, Unintegrable(x^m/asinh(a*x), x)]
    @test_int [x^m/asinh(a*x)^2, x, 0, Unintegrable(x^m/asinh(a*x)^2, x)]


    @test_int [x^m*asinh(a*x)^(5/2), x, 0, Unintegrable(x^m*asinh(a*x)^(5/2), x)]
    @test_int [x^m*asinh(a*x)^(3/2), x, 0, Unintegrable(x^m*asinh(a*x)^(3/2), x)]
    @test_int [x^m*sqrt(asinh(a*x)), x, 0, Unintegrable(x^m*sqrt(asinh(a*x)), x)]
    @test_int [x^m/sqrt(asinh(a*x)), x, 0, Unintegrable(x^m/sqrt(asinh(a*x)), x)]
    @test_int [x^m/asinh(a*x)^(3/2), x, 0, Unintegrable(x^m/asinh(a*x)^(3/2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*asin(a*x)^n*with*n*symbolic=#


    @test_int [(b*x)^m*asinh(a*x)^n, x, 0, Unintegrable((b*x)^m*asinh(a*x)^n, x)]


    @test_int [x^4*asinh(a*x)^n, x, 12, (5^(-1 - n)*asinh(a*x)^n*Gamma(1 + n, -5*asinh(a*x)))/((-asinh(a*x))^n*(32*a^5)) - (asinh(a*x)^n*Gamma(1 + n, -3*asinh(a*x)))/(3^n*(-asinh(a*x))^n*(32*a^5)) + (asinh(a*x)^n*Gamma(1 + n, -asinh(a*x)))/((-asinh(a*x))^n*(16*a^5)) - Gamma(1 + n, asinh(a*x))/(16*a^5) + Gamma(1 + n, 3*asinh(a*x))/(3^n*(32*a^5)) - (5^(-1 - n)*Gamma(1 + n, 5*asinh(a*x)))/(32*a^5)]
    @test_int [x^3*asinh(a*x)^n, x, 9, (asinh(a*x)^n*Gamma(1 + n, -4*asinh(a*x)))/(2^(2*(3 + n))*(-asinh(a*x))^n*a^4) - (2^(-4 - n)*asinh(a*x)^n*Gamma(1 + n, -2*asinh(a*x)))/((-asinh(a*x))^n*a^4) - (2^(-4 - n)*Gamma(1 + n, 2*asinh(a*x)))/a^4 + Gamma(1 + n, 4*asinh(a*x))/(2^(2*(3 + n))*a^4)]
    @test_int [x^2*asinh(a*x)^n, x, 9, (3^(-1 - n)*asinh(a*x)^n*Gamma(1 + n, -3*asinh(a*x)))/((-asinh(a*x))^n*(8*a^3)) - (asinh(a*x)^n*Gamma(1 + n, -asinh(a*x)))/((-asinh(a*x))^n*(8*a^3)) + Gamma(1 + n, asinh(a*x))/(8*a^3) - (3^(-1 - n)*Gamma(1 + n, 3*asinh(a*x)))/(8*a^3)]
    @test_int [x^1*asinh(a*x)^n, x, 6, (2^(-3 - n)*asinh(a*x)^n*Gamma(1 + n, -2*asinh(a*x)))/((-asinh(a*x))^n*a^2) + (2^(-3 - n)*Gamma(1 + n, 2*asinh(a*x)))/a^2]
    @test_int [x^0*asinh(a*x)^n, x, 4, (asinh(a*x)^n*Gamma(1 + n, -asinh(a*x)))/(2*a*(-asinh(a*x))^n) - Gamma(1 + n, asinh(a*x))/(2*a)]
    @test_int [asinh(a*x)^n/x^1, x, 0, Unintegrable(asinh(a*x)^n/x, x)]
    @test_int [asinh(a*x)^n/x^2, x, 0, Unintegrable(asinh(a*x)^n/x^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*asinh(c*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*asinh(c*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^2*(a + b*asinh(c*x))^(1/2), x, 14, (1/3)*x^3*sqrt(a + b*asinh(c*x)) - (sqrt(b)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(16*c^3) + (sqrt(b)*ℯ^((3*a)/b)*sqrt(pi/3)*erf((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(48*c^3) + (sqrt(b)*sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(16*c^3)) - (sqrt(b)*sqrt(pi/3)*erfi((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((3*a)/b)*(48*c^3))]
    @test_int [x^1*(a + b*asinh(c*x))^(1/2), x, 9, sqrt(a + b*asinh(c*x))/(4*c^2) + (1/2)*x^2*sqrt(a + b*asinh(c*x)) - (sqrt(b)*ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(16*c^2) - (sqrt(b)*sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((2*a)/b)*(16*c^2))]
    @test_int [x^0*(a + b*asinh(c*x))^(1/2), x, 7, x*sqrt(a + b*asinh(c*x)) + (sqrt(b)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(4*c) - (sqrt(b)*sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(4*c))]


    @test_int [x^2*(a + b*asinh(c*x))^(3/2), x, 22, (b*sqrt(1 + c^2*x^2)*sqrt(a + b*asinh(c*x)))/(3*c^3) - (b*x^2*sqrt(1 + c^2*x^2)*sqrt(a + b*asinh(c*x)))/(6*c) + (1/3)*x^3*(a + b*asinh(c*x))^(3/2) - (3*b^(3/2)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(32*c^3) + (b^(3/2)*ℯ^((3*a)/b)*sqrt(pi/3)*erf((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(96*c^3) - (3*b^(3/2)*sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(32*c^3)) + (b^(3/2)*sqrt(pi/3)*erfi((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((3*a)/b)*(96*c^3))]
    @test_int [x^1*(a + b*asinh(c*x))^(3/2), x, 11, -((3*b*x*sqrt(1 + c^2*x^2)*sqrt(a + b*asinh(c*x)))/(8*c)) + (a + b*asinh(c*x))^(3/2)/(4*c^2) + (1/2)*x^2*(a + b*asinh(c*x))^(3/2) - (3*b^(3/2)*ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(64*c^2) + (3*b^(3/2)*sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((2*a)/b)*(64*c^2))]
    @test_int [x^0*(a + b*asinh(c*x))^(3/2), x, 8, -((3*b*sqrt(1 + c^2*x^2)*sqrt(a + b*asinh(c*x)))/(2*c)) + x*(a + b*asinh(c*x))^(3/2) + (3*b^(3/2)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(8*c) + (3*b^(3/2)*sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(8*c))]


    @test_int [x^2*(a + b*asinh(c*x))^(5/2), x, 24, -((5*b^2*x*sqrt(a + b*asinh(c*x)))/(6*c^2)) + (5/36)*b^2*x^3*sqrt(a + b*asinh(c*x)) + (5*b*sqrt(1 + c^2*x^2)*(a + b*asinh(c*x))^(3/2))/(9*c^3) - (5*b*x^2*sqrt(1 + c^2*x^2)*(a + b*asinh(c*x))^(3/2))/(18*c) + (1/3)*x^3*(a + b*asinh(c*x))^(5/2) - (15*b^(5/2)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(64*c^3) + (5*b^(5/2)*ℯ^((3*a)/b)*sqrt(pi/3)*erf((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(576*c^3) + (15*b^(5/2)*sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(64*c^3)) - (5*b^(5/2)*sqrt(pi/3)*erfi((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((3*a)/b)*(576*c^3))]
    @test_int [x^1*(a + b*asinh(c*x))^(5/2), x, 12, (15*b^2*sqrt(a + b*asinh(c*x)))/(64*c^2) + (15/32)*b^2*x^2*sqrt(a + b*asinh(c*x)) - (5*b*x*sqrt(1 + c^2*x^2)*(a + b*asinh(c*x))^(3/2))/(8*c) + (a + b*asinh(c*x))^(5/2)/(4*c^2) + (1/2)*x^2*(a + b*asinh(c*x))^(5/2) - (15*b^(5/2)*ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(256*c^2) - (15*b^(5/2)*sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((2*a)/b)*(256*c^2))]
    @test_int [x^0*(a + b*asinh(c*x))^(5/2), x, 9, (15/4)*b^2*x*sqrt(a + b*asinh(c*x)) - (5*b*sqrt(1 + c^2*x^2)*(a + b*asinh(c*x))^(3/2))/(2*c) + x*(a + b*asinh(c*x))^(5/2) + (15*b^(5/2)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(16*c) - (15*b^(5/2)*sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(16*c))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^2/(a + b*asinh(c*x))^(1/2), x, 13, -((ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(8*sqrt(b)*c^3)) + (ℯ^((3*a)/b)*sqrt(pi/3)*erf((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(8*sqrt(b)*c^3) - (sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(8*sqrt(b)*c^3)) + (sqrt(pi/3)*erfi((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((3*a)/b)*(8*sqrt(b)*c^3))]
    @test_int [x^1/(a + b*asinh(c*x))^(1/2), x, 8, -((ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(4*sqrt(b)*c^2)) + (sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((2*a)/b)*(4*sqrt(b)*c^2))]
    @test_int [x^0/(a + b*asinh(c*x))^(1/2), x, 6, (ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(2*sqrt(b)*c) + (sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(2*sqrt(b)*c))]


    @test_int [x^2/(a + b*asinh(c*x))^(3/2), x, 12, -((2*x^2*sqrt(1 + c^2*x^2))/(b*c*sqrt(a + b*asinh(c*x)))) + (ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(4*b^(3/2)*c^3) - (ℯ^((3*a)/b)*sqrt(3*pi)*erf((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(4*b^(3/2)*c^3) - (sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(4*b^(3/2)*c^3)) + (sqrt(3*pi)*erfi((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((3*a)/b)*(4*b^(3/2)*c^3))]
    @test_int [x^1/(a + b*asinh(c*x))^(3/2), x, 6, -((2*x*sqrt(1 + c^2*x^2))/(b*c*sqrt(a + b*asinh(c*x)))) + (ℯ^((2*a)/b)*sqrt(pi/2)*erf((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(b^(3/2)*c^2) + (sqrt(pi/2)*erfi((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((2*a)/b)*(b^(3/2)*c^2))]
    @test_int [x^0/(a + b*asinh(c*x))^(3/2), x, 7, -((2*sqrt(1 + c^2*x^2))/(b*c*sqrt(a + b*asinh(c*x)))) - (ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(b^(3/2)*c) + (sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(b^(3/2)*c))]


    @test_int [x^2/(a + b*asinh(c*x))^(5/2), x, 22, -((2*x^2*sqrt(1 + c^2*x^2))/(3*b*c*(a + b*asinh(c*x))^(3/2))) - (8*x)/(3*b^2*c^2*sqrt(a + b*asinh(c*x))) - (4*x^3)/(b^2*sqrt(a + b*asinh(c*x))) - (ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(6*b^(5/2)*c^3) + (ℯ^((3*a)/b)*sqrt(3*pi)*erf((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(2*b^(5/2)*c^3) - (sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(6*b^(5/2)*c^3)) + (sqrt(3*pi)*erfi((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((3*a)/b)*(2*b^(5/2)*c^3))]
    @test_int [x^1/(a + b*asinh(c*x))^(5/2), x, 11, -((2*x*sqrt(1 + c^2*x^2))/(3*b*c*(a + b*asinh(c*x))^(3/2))) - 4/(3*b^2*c^2*sqrt(a + b*asinh(c*x))) - (8*x^2)/(3*b^2*sqrt(a + b*asinh(c*x))) - (2*ℯ^((2*a)/b)*sqrt(2*pi)*erf((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(3*b^(5/2)*c^2) + (2*sqrt(2*pi)*erfi((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((2*a)/b)*(3*b^(5/2)*c^2))]
    @test_int [x^0/(a + b*asinh(c*x))^(5/2), x, 8, -((2*sqrt(1 + c^2*x^2))/(3*b*c*(a + b*asinh(c*x))^(3/2))) - (4*x)/(3*b^2*sqrt(a + b*asinh(c*x))) + (2*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(3*b^(5/2)*c) + (2*sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(3*b^(5/2)*c))]


    @test_int [x^2/(a + b*asinh(c*x))^(7/2), x, 22, -((2*x^2*sqrt(1 + c^2*x^2))/(5*b*c*(a + b*asinh(c*x))^(5/2))) - (8*x)/(15*b^2*c^2*(a + b*asinh(c*x))^(3/2)) - (4*x^3)/(5*b^2*(a + b*asinh(c*x))^(3/2)) - (16*sqrt(1 + c^2*x^2))/(15*b^3*c^3*sqrt(a + b*asinh(c*x))) - (24*x^2*sqrt(1 + c^2*x^2))/(5*b^3*c*sqrt(a + b*asinh(c*x))) + (ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(15*b^(7/2)*c^3) - (3*ℯ^((3*a)/b)*sqrt(3*pi)*erf((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(5*b^(7/2)*c^3) - (sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(15*b^(7/2)*c^3)) + (3*sqrt(3*pi)*erfi((sqrt(3)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((3*a)/b)*(5*b^(7/2)*c^3))]
    @test_int [x^1/(a + b*asinh(c*x))^(7/2), x, 9, -((2*x*sqrt(1 + c^2*x^2))/(5*b*c*(a + b*asinh(c*x))^(5/2))) - 4/(15*b^2*c^2*(a + b*asinh(c*x))^(3/2)) - (8*x^2)/(15*b^2*(a + b*asinh(c*x))^(3/2)) - (32*x*sqrt(1 + c^2*x^2))/(15*b^3*c*sqrt(a + b*asinh(c*x))) + (8*ℯ^((2*a)/b)*sqrt(2*pi)*erf((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(15*b^(7/2)*c^2) + (8*sqrt(2*pi)*erfi((sqrt(2)*sqrt(a + b*asinh(c*x)))/sqrt(b)))/(ℯ^((2*a)/b)*(15*b^(7/2)*c^2))]
    @test_int [x^0/(a + b*asinh(c*x))^(7/2), x, 9, -((2*sqrt(1 + c^2*x^2))/(5*b*c*(a + b*asinh(c*x))^(5/2))) - (4*x)/(15*b^2*(a + b*asinh(c*x))^(3/2)) - (8*sqrt(1 + c^2*x^2))/(15*b^3*c*sqrt(a + b*asinh(c*x))) - (4*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a + b*asinh(c*x))/sqrt(b)))/(15*b^(7/2)*c) + (4*sqrt(pi)*erfi(sqrt(a + b*asinh(c*x))/sqrt(b)))/(ℯ^(a/b)*(15*b^(7/2)*c))]
    end
