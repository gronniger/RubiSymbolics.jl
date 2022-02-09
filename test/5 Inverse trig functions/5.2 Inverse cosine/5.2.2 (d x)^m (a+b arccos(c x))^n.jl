@testset "5.2.2 (d x)^m (a+b arccos(c x))^n" begin
    (a, b, c, d, m, n, x, ) = @variables a b c d m n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*acos(c*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*acos(a*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acos(a*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^4*acos(a*x), x, 4, -sqrt(1 - a^2*x^2)/(5*a^5) + (2*(1 - a^2*x^2)^(3/2))/(15*a^5) - (1 - a^2*x^2)^(5/2)/(25*a^5) + (x^5*acos(a*x))/5]
    @test_int [x^3*acos(a*x), x, 4, (-3*x*sqrt(1 - a^2*x^2))/(32*a^3) - (x^3*sqrt(1 - a^2*x^2))/(16*a) + (x^4*acos(a*x))/4 + (3*asin(a*x))/(32*a^4)]
    @test_int [x^2*acos(a*x), x, 4, -sqrt(1 - a^2*x^2)/(3*a^3) + (1 - a^2*x^2)^(3/2)/(9*a^3) + (x^3*acos(a*x))/3]
    @test_int [x^1*acos(a*x), x, 3, -(x*sqrt(1 - a^2*x^2))/(4*a) + (x^2*acos(a*x))/2 + asin(a*x)/(4*a^2)]
    @test_int [acos(a*x), x, 2, -(sqrt(1 - a^2*x^2)/a) + x*acos(a*x)]
    @test_int [acos(a*x)/x^1, x, 5, (-im/2)*acos(a*x)^2 + acos(a*x)*log(1 + ℯ^((2*im)*acos(a*x))) - (im/2)*PolyLog(2, -ℯ^((2*im)*acos(a*x)))]
    @test_int [acos(a*x)/x^2, x, 4, -(acos(a*x)/x) + a*atanh(sqrt(1 - a^2*x^2))]
    @test_int [acos(a*x)/x^3, x, 2, (a*sqrt(1 - a^2*x^2))/(2*x) - acos(a*x)/(2*x^2)]
    @test_int [acos(a*x)/x^4, x, 5, (a*sqrt(1 - a^2*x^2))/(6*x^2) - acos(a*x)/(3*x^3) + (a^3*atanh(sqrt(1 - a^2*x^2)))/6]
    @test_int [acos(a*x)/x^5, x, 3, (a*sqrt(1 - a^2*x^2))/(12*x^3) + (a^3*sqrt(1 - a^2*x^2))/(6*x) - acos(a*x)/(4*x^4)]
    @test_int [acos(a*x)/x^6, x, 6, (a*sqrt(1 - a^2*x^2))/(20*x^4) + (3*a^3*sqrt(1 - a^2*x^2))/(40*x^2) - acos(a*x)/(5*x^5) + (3*a^5*atanh(sqrt(1 - a^2*x^2)))/40]


    @test_int [x^4*acos(a*x)^2, x, 7, (-16*x)/(75*a^4) - (8*x^3)/(225*a^2) - (2*x^5)/125 - (16*sqrt(1 - a^2*x^2)*acos(a*x))/(75*a^5) - (8*x^2*sqrt(1 - a^2*x^2)*acos(a*x))/(75*a^3) - (2*x^4*sqrt(1 - a^2*x^2)*acos(a*x))/(25*a) + (x^5*acos(a*x)^2)/5]
    @test_int [x^3*acos(a*x)^2, x, 6, (-3*x^2)/(32*a^2) - x^4/32 - (3*x*sqrt(1 - a^2*x^2)*acos(a*x))/(16*a^3) - (x^3*sqrt(1 - a^2*x^2)*acos(a*x))/(8*a) - (3*acos(a*x)^2)/(32*a^4) + (x^4*acos(a*x)^2)/4]
    @test_int [x^2*acos(a*x)^2, x, 5, (-4*x)/(9*a^2) - (2*x^3)/27 - (4*sqrt(1 - a^2*x^2)*acos(a*x))/(9*a^3) - (2*x^2*sqrt(1 - a^2*x^2)*acos(a*x))/(9*a) + (x^3*acos(a*x)^2)/3]
    @test_int [x*acos(a*x)^2, x, 4, -x^2/4 - (x*sqrt(1 - a^2*x^2)*acos(a*x))/(2*a) - acos(a*x)^2/(4*a^2) + (x^2*acos(a*x)^2)/2]
    @test_int [acos(a*x)^2, x, 3, -2*x - (2*sqrt(1 - a^2*x^2)*acos(a*x))/a + x*acos(a*x)^2]
    @test_int [acos(a*x)^2/x, x, 6, (-im/3)*acos(a*x)^3 + acos(a*x)^2*log(1 + ℯ^((2*im)*acos(a*x))) - im*acos(a*x)*PolyLog(2, -ℯ^((2*im)*acos(a*x))) + PolyLog(3, -ℯ^((2*im)*acos(a*x)))/2]
    @test_int [acos(a*x)^2/x^2, x, 7, -(acos(a*x)^2/x) - (4*im)*a*acos(a*x)*atan(ℯ^(im*acos(a*x))) + (2*im)*a*PolyLog(2, (-im)*ℯ^(im*acos(a*x))) - (2*im)*a*PolyLog(2, im*ℯ^(im*acos(a*x)))]
    @test_int [acos(a*x)^2/x^3, x, 3, (a*sqrt(1 - a^2*x^2)*acos(a*x))/x - acos(a*x)^2/(2*x^2) + a^2*log(x)]
    @test_int [acos(a*x)^2/x^4, x, 9, -a^2/(3*x) + (a*sqrt(1 - a^2*x^2)*acos(a*x))/(3*x^2) - acos(a*x)^2/(3*x^3) - ((2*im)/3)*a^3*acos(a*x)*atan(ℯ^(im*acos(a*x))) + (im/3)*a^3*PolyLog(2, (-im)*ℯ^(im*acos(a*x))) - (im/3)*a^3*PolyLog(2, im*ℯ^(im*acos(a*x)))]
    @test_int [acos(a*x)^2/x^5, x, 5, -a^2/(12*x^2) + (a*sqrt(1 - a^2*x^2)*acos(a*x))/(6*x^3) + (a^3*sqrt(1 - a^2*x^2)*acos(a*x))/(3*x) - acos(a*x)^2/(4*x^4) + (a^4*log(x))/3]


    @test_int [x^4*acos(a*x)^3, x, 14, (298*sqrt(1 - a^2*x^2))/(375*a^5) - (76*(1 - a^2*x^2)^(3/2))/(1125*a^5) + (6*(1 - a^2*x^2)^(5/2))/(625*a^5) - (16*x*acos(a*x))/(25*a^4) - (8*x^3*acos(a*x))/(75*a^2) - (6*x^5*acos(a*x))/125 - (8*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(25*a^5) - (4*x^2*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(25*a^3) - (3*x^4*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(25*a) + (x^5*acos(a*x)^3)/5]
    @test_int [x^3*acos(a*x)^3, x, 11, (45*x*sqrt(1 - a^2*x^2))/(256*a^3) + (3*x^3*sqrt(1 - a^2*x^2))/(128*a) - (9*x^2*acos(a*x))/(32*a^2) - (3*x^4*acos(a*x))/32 - (9*x*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(32*a^3) - (3*x^3*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(16*a) - (3*acos(a*x)^3)/(32*a^4) + (x^4*acos(a*x)^3)/4 - (45*asin(a*x))/(256*a^4)]
    @test_int [x^2*acos(a*x)^3, x, 9, (14*sqrt(1 - a^2*x^2))/(9*a^3) - (2*(1 - a^2*x^2)^(3/2))/(27*a^3) - (4*x*acos(a*x))/(3*a^2) - (2*x^3*acos(a*x))/9 - (2*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(3*a^3) - (x^2*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(3*a) + (x^3*acos(a*x)^3)/3]
    @test_int [x*acos(a*x)^3, x, 6, (3*x*sqrt(1 - a^2*x^2))/(8*a) - (3*x^2*acos(a*x))/4 - (3*x*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(4*a) - acos(a*x)^3/(4*a^2) + (x^2*acos(a*x)^3)/2 - (3*asin(a*x))/(8*a^2)]
    @test_int [acos(a*x)^3, x, 4, (6*sqrt(1 - a^2*x^2))/a - 6*x*acos(a*x) - (3*sqrt(1 - a^2*x^2)*acos(a*x)^2)/a + x*acos(a*x)^3]
    @test_int [acos(a*x)^3/x, x, 7, (-im/4)*acos(a*x)^4 + acos(a*x)^3*log(1 + ℯ^((2*im)*acos(a*x))) - ((3*im)/2)*acos(a*x)^2*PolyLog(2, -ℯ^((2*im)*acos(a*x))) + (3*acos(a*x)*PolyLog(3, -ℯ^((2*im)*acos(a*x))))/2 + ((3*im)/4)*PolyLog(4, -ℯ^((2*im)*acos(a*x)))]
    @test_int [acos(a*x)^3/x^2, x, 9, -(acos(a*x)^3/x) - (6*im)*a*acos(a*x)^2*atan(ℯ^(im*acos(a*x))) + (6*im)*a*acos(a*x)*PolyLog(2, (-im)*ℯ^(im*acos(a*x))) - (6*im)*a*acos(a*x)*PolyLog(2, im*ℯ^(im*acos(a*x))) - 6*a*PolyLog(3, (-im)*ℯ^(im*acos(a*x))) + 6*a*PolyLog(3, im*ℯ^(im*acos(a*x)))]
    @test_int [acos(a*x)^3/x^3, x, 7, ((-3*im)/2)*a^2*acos(a*x)^2 + (3*a*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(2*x) - acos(a*x)^3/(2*x^2) + 3*a^2*acos(a*x)*log(1 + ℯ^((2*im)*acos(a*x))) - ((3*im)/2)*a^2*PolyLog(2, -ℯ^((2*im)*acos(a*x)))]
    @test_int [acos(a*x)^3/x^4, x, 14, -((a^2*acos(a*x))/x) + (a*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(2*x^2) - acos(a*x)^3/(3*x^3) - im*a^3*acos(a*x)^2*atan(ℯ^(im*acos(a*x))) + a^3*atanh(sqrt(1 - a^2*x^2)) + im*a^3*acos(a*x)*PolyLog(2, (-im)*ℯ^(im*acos(a*x))) - im*a^3*acos(a*x)*PolyLog(2, im*ℯ^(im*acos(a*x))) - a^3*PolyLog(3, (-im)*ℯ^(im*acos(a*x))) + a^3*PolyLog(3, im*ℯ^(im*acos(a*x)))]
    @test_int [acos(a*x)^3/x^5, x, 10, (a^3*sqrt(1 - a^2*x^2))/(4*x) - (a^2*acos(a*x))/(4*x^2) - (im/2)*a^4*acos(a*x)^2 + (a*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(4*x^3) + (a^3*sqrt(1 - a^2*x^2)*acos(a*x)^2)/(2*x) - acos(a*x)^3/(4*x^4) + a^4*acos(a*x)*log(1 + ℯ^((2*im)*acos(a*x))) - (im/2)*a^4*PolyLog(2, -ℯ^((2*im)*acos(a*x)))]


    @test_int [x^5*acos(a*x)^4, x, 23, (245*x^2)/(1152*a^4) + (65*x^4)/(3456*a^2) + x^6/324 + (245*x*sqrt(1 - a^2*x^2)*acos(a*x))/(576*a^5) + (65*x^3*sqrt(1 - a^2*x^2)*acos(a*x))/(864*a^3) + (x^5*sqrt(1 - a^2*x^2)*acos(a*x))/(54*a) + (245*acos(a*x)^2)/(1152*a^6) - (5*x^2*acos(a*x)^2)/(16*a^4) - (5*x^4*acos(a*x)^2)/(48*a^2) - (x^6*acos(a*x)^2)/18 - (5*x*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(24*a^5) - (5*x^3*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(36*a^3) - (x^5*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(9*a) - (5*acos(a*x)^4)/(96*a^6) + (x^6*acos(a*x)^4)/6]
    @test_int [x^4*acos(a*x)^4, x, 19, (16576*x)/(5625*a^4) + (1088*x^3)/(16875*a^2) + (24*x^5)/3125 + (16576*sqrt(1 - a^2*x^2)*acos(a*x))/(5625*a^5) + (1088*x^2*sqrt(1 - a^2*x^2)*acos(a*x))/(5625*a^3) + (24*x^4*sqrt(1 - a^2*x^2)*acos(a*x))/(625*a) - (32*x*acos(a*x)^2)/(25*a^4) - (16*x^3*acos(a*x)^2)/(75*a^2) - (12*x^5*acos(a*x)^2)/125 - (32*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(75*a^5) - (16*x^2*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(75*a^3) - (4*x^4*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(25*a) + (x^5*acos(a*x)^4)/5]
    @test_int [x^3*acos(a*x)^4, x, 14, (45*x^2)/(128*a^2) + (3*x^4)/128 + (45*x*sqrt(1 - a^2*x^2)*acos(a*x))/(64*a^3) + (3*x^3*sqrt(1 - a^2*x^2)*acos(a*x))/(32*a) + (45*acos(a*x)^2)/(128*a^4) - (9*x^2*acos(a*x)^2)/(16*a^2) - (3*x^4*acos(a*x)^2)/16 - (3*x*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(8*a^3) - (x^3*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(4*a) - (3*acos(a*x)^4)/(32*a^4) + (x^4*acos(a*x)^4)/4]
    @test_int [x^2*acos(a*x)^4, x, 11, (160*x)/(27*a^2) + (8*x^3)/81 + (160*sqrt(1 - a^2*x^2)*acos(a*x))/(27*a^3) + (8*x^2*sqrt(1 - a^2*x^2)*acos(a*x))/(27*a) - (8*x*acos(a*x)^2)/(3*a^2) - (4*x^3*acos(a*x)^2)/9 - (8*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(9*a^3) - (4*x^2*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(9*a) + (x^3*acos(a*x)^4)/3]
    @test_int [x*acos(a*x)^4, x, 7, (3*x^2)/4 + (3*x*sqrt(1 - a^2*x^2)*acos(a*x))/(2*a) + (3*acos(a*x)^2)/(4*a^2) - (3*x^2*acos(a*x)^2)/2 - (x*sqrt(1 - a^2*x^2)*acos(a*x)^3)/a - acos(a*x)^4/(4*a^2) + (x^2*acos(a*x)^4)/2]
    @test_int [acos(a*x)^4, x, 5, 24*x + (24*sqrt(1 - a^2*x^2)*acos(a*x))/a - 12*x*acos(a*x)^2 - (4*sqrt(1 - a^2*x^2)*acos(a*x)^3)/a + x*acos(a*x)^4]
    @test_int [acos(a*x)^4/x, x, 8, (-im/5)*acos(a*x)^5 + acos(a*x)^4*log(1 + ℯ^((2*im)*acos(a*x))) - (2*im)*acos(a*x)^3*PolyLog(2, -ℯ^((2*im)*acos(a*x))) + 3*acos(a*x)^2*PolyLog(3, -ℯ^((2*im)*acos(a*x))) + (3*im)*acos(a*x)*PolyLog(4, -ℯ^((2*im)*acos(a*x))) - (3*PolyLog(5, -ℯ^((2*im)*acos(a*x))))/2]
    @test_int [acos(a*x)^4/x^2, x, 11, -(acos(a*x)^4/x) - (8*im)*a*acos(a*x)^3*atan(ℯ^(im*acos(a*x))) + (12*im)*a*acos(a*x)^2*PolyLog(2, (-im)*ℯ^(im*acos(a*x))) - (12*im)*a*acos(a*x)^2*PolyLog(2, im*ℯ^(im*acos(a*x))) - 24*a*acos(a*x)*PolyLog(3, (-im)*ℯ^(im*acos(a*x))) + 24*a*acos(a*x)*PolyLog(3, im*ℯ^(im*acos(a*x))) - (24*im)*a*PolyLog(4, (-im)*ℯ^(im*acos(a*x))) + (24*im)*a*PolyLog(4, im*ℯ^(im*acos(a*x)))]
    @test_int [acos(a*x)^4/x^3, x, 8, (-2*im)*a^2*acos(a*x)^3 + (2*a*sqrt(1 - a^2*x^2)*acos(a*x)^3)/x - acos(a*x)^4/(2*x^2) + 6*a^2*acos(a*x)^2*log(1 + ℯ^((2*im)*acos(a*x))) - (6*im)*a^2*acos(a*x)*PolyLog(2, -ℯ^((2*im)*acos(a*x))) + 3*a^2*PolyLog(3, -ℯ^((2*im)*acos(a*x)))]
    @test_int [acos(a*x)^4/x^4, x, 19, (-2*a^2*acos(a*x)^2)/x + (2*a*sqrt(1 - a^2*x^2)*acos(a*x)^3)/(3*x^2) - acos(a*x)^4/(3*x^3) - (8*im)*a^3*acos(a*x)*atan(ℯ^(im*acos(a*x))) - ((4*im)/3)*a^3*acos(a*x)^3*atan(ℯ^(im*acos(a*x))) + (4*im)*a^3*PolyLog(2, (-im)*ℯ^(im*acos(a*x))) + (2*im)*a^3*acos(a*x)^2*PolyLog(2, (-im)*ℯ^(im*acos(a*x))) - (4*im)*a^3*PolyLog(2, im*ℯ^(im*acos(a*x))) - (2*im)*a^3*acos(a*x)^2*PolyLog(2, im*ℯ^(im*acos(a*x))) - 4*a^3*acos(a*x)*PolyLog(3, (-im)*ℯ^(im*acos(a*x))) + 4*a^3*acos(a*x)*PolyLog(3, im*ℯ^(im*acos(a*x))) - (4*im)*a^3*PolyLog(4, (-im)*ℯ^(im*acos(a*x))) + (4*im)*a^3*PolyLog(4, im*ℯ^(im*acos(a*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^6/acos(a*x), x, 7, (-5*SinIntegral(acos(a*x)))/(64*a^7) - (9*SinIntegral(3*acos(a*x)))/(64*a^7) - (5*SinIntegral(5*acos(a*x)))/(64*a^7) - SinIntegral(7*acos(a*x))/(64*a^7)]
    @test_int [x^5/acos(a*x), x, 6, (-5*SinIntegral(2*acos(a*x)))/(32*a^6) - SinIntegral(4*acos(a*x))/(8*a^6) - SinIntegral(6*acos(a*x))/(32*a^6)]
    @test_int [x^4/acos(a*x), x, 6, -SinIntegral(acos(a*x))/(8*a^5) - (3*SinIntegral(3*acos(a*x)))/(16*a^5) - SinIntegral(5*acos(a*x))/(16*a^5)]
    @test_int [x^3/acos(a*x), x, 5, -SinIntegral(2*acos(a*x))/(4*a^4) - SinIntegral(4*acos(a*x))/(8*a^4)]
    @test_int [x^2/acos(a*x), x, 5, -SinIntegral(acos(a*x))/(4*a^3) - SinIntegral(3*acos(a*x))/(4*a^3)]
    @test_int [x/acos(a*x), x, 4, -SinIntegral(2*acos(a*x))/(2*a^2)]
    @test_int [acos(a*x)^(-1), x, 2, -(SinIntegral(acos(a*x))/a)]
    @test_int [1/(x*acos(a*x)), x, 0, Unintegrable(1/(x*acos(a*x)), x)]
    @test_int [1/(x^2*acos(a*x)), x, 0, Unintegrable(1/(x^2*acos(a*x)), x)]


    @test_int [x^6/acos(a*x)^2, x, 6, (x^6*sqrt(1 - a^2*x^2))/(a*acos(a*x)) - (5*CosIntegral(acos(a*x)))/(64*a^7) - (27*CosIntegral(3*acos(a*x)))/(64*a^7) - (25*CosIntegral(5*acos(a*x)))/(64*a^7) - (7*CosIntegral(7*acos(a*x)))/(64*a^7)]
    @test_int [x^5/acos(a*x)^2, x, 5, (x^5*sqrt(1 - a^2*x^2))/(a*acos(a*x)) - (5*CosIntegral(2*acos(a*x)))/(16*a^6) - CosIntegral(4*acos(a*x))/(2*a^6) - (3*CosIntegral(6*acos(a*x)))/(16*a^6)]
    @test_int [x^4/acos(a*x)^2, x, 5, (x^4*sqrt(1 - a^2*x^2))/(a*acos(a*x)) - CosIntegral(acos(a*x))/(8*a^5) - (9*CosIntegral(3*acos(a*x)))/(16*a^5) - (5*CosIntegral(5*acos(a*x)))/(16*a^5)]
    @test_int [x^3/acos(a*x)^2, x, 4, (x^3*sqrt(1 - a^2*x^2))/(a*acos(a*x)) - CosIntegral(2*acos(a*x))/(2*a^4) - CosIntegral(4*acos(a*x))/(2*a^4)]
    @test_int [x^2/acos(a*x)^2, x, 4, (x^2*sqrt(1 - a^2*x^2))/(a*acos(a*x)) - CosIntegral(acos(a*x))/(4*a^3) - (3*CosIntegral(3*acos(a*x)))/(4*a^3)]
    @test_int [x/acos(a*x)^2, x, 2, (x*sqrt(1 - a^2*x^2))/(a*acos(a*x)) - CosIntegral(2*acos(a*x))/a^2]
    @test_int [acos(a*x)^(-2), x, 3, sqrt(1 - a^2*x^2)/(a*acos(a*x)) - CosIntegral(acos(a*x))/a]
    @test_int [1/(x*acos(a*x)^2), x, 0, Unintegrable(1/(x*acos(a*x)^2), x)]
    @test_int [1/(x^2*acos(a*x)^2), x, 0, Unintegrable(1/(x^2*acos(a*x)^2), x)]


    @test_int [x^4/acos(a*x)^3, x, 14, (x^4*sqrt(1 - a^2*x^2))/(2*a*acos(a*x)^2) - (2*x^3)/(a^2*acos(a*x)) + (5*x^5)/(2*acos(a*x)) + SinIntegral(acos(a*x))/(16*a^5) + (27*SinIntegral(3*acos(a*x)))/(32*a^5) + (25*SinIntegral(5*acos(a*x)))/(32*a^5)]
    @test_int [x^3/acos(a*x)^3, x, 12, (x^3*sqrt(1 - a^2*x^2))/(2*a*acos(a*x)^2) - (3*x^2)/(2*a^2*acos(a*x)) + (2*x^4)/acos(a*x) + SinIntegral(2*acos(a*x))/(2*a^4) + SinIntegral(4*acos(a*x))/a^4]
    @test_int [x^2/acos(a*x)^3, x, 10, (x^2*sqrt(1 - a^2*x^2))/(2*a*acos(a*x)^2) - x/(a^2*acos(a*x)) + (3*x^3)/(2*acos(a*x)) + SinIntegral(acos(a*x))/(8*a^3) + (9*SinIntegral(3*acos(a*x)))/(8*a^3)]
    @test_int [x/acos(a*x)^3, x, 7, (x*sqrt(1 - a^2*x^2))/(2*a*acos(a*x)^2) - 1/(2*a^2*acos(a*x)) + x^2/acos(a*x) + SinIntegral(2*acos(a*x))/a^2]
    @test_int [acos(a*x)^(-3), x, 4, sqrt(1 - a^2*x^2)/(2*a*acos(a*x)^2) + x/(2*acos(a*x)) + SinIntegral(acos(a*x))/(2*a)]
    @test_int [1/(x*acos(a*x)^3), x, 0, Unintegrable(1/(x*acos(a*x)^3), x)]
    @test_int [1/(x^2*acos(a*x)^3), x, 0, Unintegrable(1/(x^2*acos(a*x)^3), x)]


    @test_int [x^4/acos(a*x)^4, x, 12, (x^4*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)^3) - (2*x^3)/(3*a^2*acos(a*x)^2) + (5*x^5)/(6*acos(a*x)^2) + (2*x^2*sqrt(1 - a^2*x^2))/(a^3*acos(a*x)) - (25*x^4*sqrt(1 - a^2*x^2))/(6*a*acos(a*x)) + CosIntegral(acos(a*x))/(48*a^5) + (27*CosIntegral(3*acos(a*x)))/(32*a^5) + (125*CosIntegral(5*acos(a*x)))/(96*a^5)]
    @test_int [x^3/acos(a*x)^4, x, 9, (x^3*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)^3) - x^2/(2*a^2*acos(a*x)^2) + (2*x^4)/(3*acos(a*x)^2) + (x*sqrt(1 - a^2*x^2))/(a^3*acos(a*x)) - (8*x^3*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)) + CosIntegral(2*acos(a*x))/(3*a^4) + (4*CosIntegral(4*acos(a*x)))/(3*a^4)]
    @test_int [x^2/acos(a*x)^4, x, 10, (x^2*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)^3) - x/(3*a^2*acos(a*x)^2) + x^3/(2*acos(a*x)^2) + sqrt(1 - a^2*x^2)/(3*a^3*acos(a*x)) - (3*x^2*sqrt(1 - a^2*x^2))/(2*a*acos(a*x)) + CosIntegral(acos(a*x))/(24*a^3) + (9*CosIntegral(3*acos(a*x)))/(8*a^3)]
    @test_int [x/acos(a*x)^4, x, 5, (x*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)^3) - 1/(6*a^2*acos(a*x)^2) + x^2/(3*acos(a*x)^2) - (2*x*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)) + (2*CosIntegral(2*acos(a*x)))/(3*a^2)]
    @test_int [acos(a*x)^(-4), x, 5, sqrt(1 - a^2*x^2)/(3*a*acos(a*x)^3) + x/(6*acos(a*x)^2) - sqrt(1 - a^2*x^2)/(6*a*acos(a*x)) + CosIntegral(acos(a*x))/(6*a)]
    @test_int [1/(x*acos(a*x)^4), x, 0, Unintegrable(1/(x*acos(a*x)^4), x)]
    @test_int [1/(x^2*acos(a*x)^4), x, 0, Unintegrable(1/(x^2*acos(a*x)^4), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acos(a*x)^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^4*sqrt(acos(a*x)), x, 10, (x^5*sqrt(acos(a*x)))/5 - (sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(8*a^5) - (sqrt(pi/6)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/(16*a^5) - (sqrt(pi/10)*FresnelC(sqrt(10/pi)*sqrt(acos(a*x))))/(80*a^5)]
    @test_int [x^3*sqrt(acos(a*x)), x, 8, (-3*sqrt(acos(a*x)))/(32*a^4) + (x^4*sqrt(acos(a*x)))/4 - (sqrt(pi/2)*FresnelC(2*sqrt(2/pi)*sqrt(acos(a*x))))/(64*a^4) - (sqrt(pi)*FresnelC((2*sqrt(acos(a*x)))/sqrt(pi)))/(16*a^4)]
    @test_int [x^2*sqrt(acos(a*x)), x, 8, (x^3*sqrt(acos(a*x)))/3 - (sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(4*a^3) - (sqrt(pi/6)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/(12*a^3)]
    @test_int [x*sqrt(acos(a*x)), x, 6, -sqrt(acos(a*x))/(4*a^2) + (x^2*sqrt(acos(a*x)))/2 - (sqrt(pi)*FresnelC((2*sqrt(acos(a*x)))/sqrt(pi)))/(8*a^2)]
    @test_int [sqrt(acos(a*x)), x, 4, x*sqrt(acos(a*x)) - (sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/a]
    @test_int [sqrt(acos(a*x))/x, x, 0, Unintegrable(sqrt(acos(a*x))/x, x)]


    @test_int [x^4*acos(a*x)^(3/2), x, 23, -((4*sqrt(1 - a^2*x^2)*sqrt(acos(a*x)))/(25*a^5)) - (2*x^2*sqrt(1 - a^2*x^2)*sqrt(acos(a*x)))/(25*a^3) - (3*x^4*sqrt(1 - a^2*x^2)*sqrt(acos(a*x)))/(50*a) + (1/5)*x^5*acos(a*x)^(3/2) + (11*sqrt(pi/2)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/(400*a^5) + (2*sqrt(2*pi)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/(25*a^5) + (sqrt(pi/6)*FresnelS(sqrt(6/pi)*sqrt(acos(a*x))))/(50*a^5) + (3*sqrt((3*pi)/2)*FresnelS(sqrt(6/pi)*sqrt(acos(a*x))))/(800*a^5) + (3*sqrt(pi/10)*FresnelS(sqrt(10/pi)*sqrt(acos(a*x))))/(800*a^5)]
    @test_int [x^3*acos(a*x)^(3/2), x, 16, (-9*x*sqrt(1 - a^2*x^2)*sqrt(acos(a*x)))/(64*a^3) - (3*x^3*sqrt(1 - a^2*x^2)*sqrt(acos(a*x)))/(32*a) - (3*acos(a*x)^(3/2))/(32*a^4) + (x^4*acos(a*x)^(3/2))/4 + (3*sqrt(pi/2)*FresnelS(2*sqrt(2/pi)*sqrt(acos(a*x))))/(512*a^4) + (3*sqrt(pi)*FresnelS((2*sqrt(acos(a*x)))/sqrt(pi)))/(64*a^4)]
    @test_int [x^2*acos(a*x)^(3/2), x, 13, -(sqrt(1 - a^2*x^2)*sqrt(acos(a*x)))/(3*a^3) - (x^2*sqrt(1 - a^2*x^2)*sqrt(acos(a*x)))/(6*a) + (x^3*acos(a*x)^(3/2))/3 + (3*sqrt(pi/2)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/(8*a^3) + (sqrt(pi/6)*FresnelS(sqrt(6/pi)*sqrt(acos(a*x))))/(24*a^3)]
    @test_int [x*acos(a*x)^(3/2), x, 8, (-3*x*sqrt(1 - a^2*x^2)*sqrt(acos(a*x)))/(8*a) - acos(a*x)^(3/2)/(4*a^2) + (x^2*acos(a*x)^(3/2))/2 + (3*sqrt(pi)*FresnelS((2*sqrt(acos(a*x)))/sqrt(pi)))/(32*a^2)]
    @test_int [acos(a*x)^(3/2), x, 5, (-3*sqrt(1 - a^2*x^2)*sqrt(acos(a*x)))/(2*a) + x*acos(a*x)^(3/2) + (3*sqrt(pi/2)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/(2*a)]
    @test_int [acos(a*x)^(3/2)/x, x, 0, Unintegrable(acos(a*x)^(3/2)/x, x)]


    @test_int [x^4*acos(a*x)^(5/2), x, 26, -((2*x*sqrt(acos(a*x)))/(5*a^4)) - (x^3*sqrt(acos(a*x)))/(15*a^2) - (3/100)*x^5*sqrt(acos(a*x)) - (4*sqrt(1 - a^2*x^2)*acos(a*x)^(3/2))/(15*a^5) - (2*x^2*sqrt(1 - a^2*x^2)*acos(a*x)^(3/2))/(15*a^3) - (x^4*sqrt(1 - a^2*x^2)*acos(a*x)^(3/2))/(10*a) + (1/5)*x^5*acos(a*x)^(5/2) + (15*sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(32*a^5) + (sqrt(pi/6)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/(60*a^5) + (sqrt((3*pi)/2)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/(320*a^5) + (3*sqrt(pi/10)*FresnelC(sqrt(10/pi)*sqrt(acos(a*x))))/(1600*a^5)]
    @test_int [x^3*acos(a*x)^(5/2), x, 18, (225*sqrt(acos(a*x)))/(2048*a^4) - (45*x^2*sqrt(acos(a*x)))/(256*a^2) - (15*x^4*sqrt(acos(a*x)))/256 - (15*x*sqrt(1 - a^2*x^2)*acos(a*x)^(3/2))/(64*a^3) - (5*x^3*sqrt(1 - a^2*x^2)*acos(a*x)^(3/2))/(32*a) - (3*acos(a*x)^(5/2))/(32*a^4) + (x^4*acos(a*x)^(5/2))/4 + (15*sqrt(pi/2)*FresnelC(2*sqrt(2/pi)*sqrt(acos(a*x))))/(4096*a^4) + (15*sqrt(pi)*FresnelC((2*sqrt(acos(a*x)))/sqrt(pi)))/(256*a^4)]
    @test_int [x^2*acos(a*x)^(5/2), x, 15, (-5*x*sqrt(acos(a*x)))/(6*a^2) - (5*x^3*sqrt(acos(a*x)))/36 - (5*sqrt(1 - a^2*x^2)*acos(a*x)^(3/2))/(9*a^3) - (5*x^2*sqrt(1 - a^2*x^2)*acos(a*x)^(3/2))/(18*a) + (x^3*acos(a*x)^(5/2))/3 + (15*sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(16*a^3) + (5*sqrt(pi/6)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/(144*a^3)]
    @test_int [x*acos(a*x)^(5/2), x, 9, (15*sqrt(acos(a*x)))/(64*a^2) - (15*x^2*sqrt(acos(a*x)))/32 - (5*x*sqrt(1 - a^2*x^2)*acos(a*x)^(3/2))/(8*a) - acos(a*x)^(5/2)/(4*a^2) + (x^2*acos(a*x)^(5/2))/2 + (15*sqrt(pi)*FresnelC((2*sqrt(acos(a*x)))/sqrt(pi)))/(128*a^2)]
    @test_int [acos(a*x)^(5/2), x, 6, (-15*x*sqrt(acos(a*x)))/4 - (5*sqrt(1 - a^2*x^2)*acos(a*x)^(3/2))/(2*a) + x*acos(a*x)^(5/2) + (15*sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(4*a)]
    @test_int [acos(a*x)^(5/2)/x, x, 0, Unintegrable(acos(a*x)^(5/2)/x, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^4/sqrt(acos(a*x)), x, 9, -(sqrt(pi/2)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/(4*a^5) - (sqrt((3*pi)/2)*FresnelS(sqrt(6/pi)*sqrt(acos(a*x))))/(8*a^5) - (sqrt(pi/10)*FresnelS(sqrt(10/pi)*sqrt(acos(a*x))))/(8*a^5)]
    @test_int [x^3/sqrt(acos(a*x)), x, 7, -(sqrt(pi/2)*FresnelS(2*sqrt(2/pi)*sqrt(acos(a*x))))/(8*a^4) - (sqrt(pi)*FresnelS((2*sqrt(acos(a*x)))/sqrt(pi)))/(4*a^4)]
    @test_int [x^2/sqrt(acos(a*x)), x, 7, -(sqrt(pi/2)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/(2*a^3) - (sqrt(pi/6)*FresnelS(sqrt(6/pi)*sqrt(acos(a*x))))/(2*a^3)]
    @test_int [x/sqrt(acos(a*x)), x, 5, -(sqrt(pi)*FresnelS((2*sqrt(acos(a*x)))/sqrt(pi)))/(2*a^2)]
    @test_int [1/sqrt(acos(a*x)), x, 3, -((sqrt(2*pi)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/a)]
    @test_int [1/(x*sqrt(acos(a*x))), x, 0, Unintegrable(1/(x*sqrt(acos(a*x))), x)]
    @test_int [1/(x^2*sqrt(acos(a*x))), x, 0, Unintegrable(1/(x^2*sqrt(acos(a*x))), x)]


    @test_int [x^6/acos(a*x)^(3/2), x, 10, (2*x^6*sqrt(1 - a^2*x^2))/(a*sqrt(acos(a*x))) - (5*sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(16*a^7) - (9*sqrt((3*pi)/2)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/(16*a^7) - (5*sqrt((5*pi)/2)*FresnelC(sqrt(10/pi)*sqrt(acos(a*x))))/(16*a^7) - (sqrt((7*pi)/2)*FresnelC(sqrt(14/pi)*sqrt(acos(a*x))))/(16*a^7)]
    @test_int [x^5/acos(a*x)^(3/2), x, 8, (2*x^5*sqrt(1 - a^2*x^2))/(a*sqrt(acos(a*x))) - (sqrt(pi/2)*FresnelC(2*sqrt(2/pi)*sqrt(acos(a*x))))/a^6 - (sqrt(3*pi)*FresnelC(2*sqrt(3/pi)*sqrt(acos(a*x))))/(8*a^6) - (5*sqrt(pi)*FresnelC((2*sqrt(acos(a*x)))/sqrt(pi)))/(8*a^6)]
    @test_int [x^4/acos(a*x)^(3/2), x, 8, (2*x^4*sqrt(1 - a^2*x^2))/(a*sqrt(acos(a*x))) - (sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(2*a^5) - (3*sqrt((3*pi)/2)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/(4*a^5) - (sqrt((5*pi)/2)*FresnelC(sqrt(10/pi)*sqrt(acos(a*x))))/(4*a^5)]
    @test_int [x^3/acos(a*x)^(3/2), x, 6, (2*x^3*sqrt(1 - a^2*x^2))/(a*sqrt(acos(a*x))) - (sqrt(pi/2)*FresnelC(2*sqrt(2/pi)*sqrt(acos(a*x))))/a^4 - (sqrt(pi)*FresnelC((2*sqrt(acos(a*x)))/sqrt(pi)))/a^4]
    @test_int [x^2/acos(a*x)^(3/2), x, 6, (2*x^2*sqrt(1 - a^2*x^2))/(a*sqrt(acos(a*x))) - (sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/a^3 - (sqrt((3*pi)/2)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/a^3]
    @test_int [x/acos(a*x)^(3/2), x, 3, (2*x*sqrt(1 - a^2*x^2))/(a*sqrt(acos(a*x))) - (2*sqrt(pi)*FresnelC((2*sqrt(acos(a*x)))/sqrt(pi)))/a^2]
    @test_int [acos(a*x)^(-3/2), x, 4, (2*sqrt(1 - a^2*x^2))/(a*sqrt(acos(a*x))) - (2*sqrt(2*pi)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/a]
    @test_int [1/(x*acos(a*x)^(3/2)), x, 0, Unintegrable(1/(x*acos(a*x)^(3/2)), x)]


    @test_int [x^4/acos(a*x)^(5/2), x, 19, (2*x^4*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)^(3/2)) - (16*x^3)/(3*a^2*sqrt(acos(a*x))) + (20*x^5)/(3*sqrt(acos(a*x))) + (25*sqrt(pi/2)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/(3*a^5) - (4*sqrt(2*pi)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/a^5 + (25*sqrt(pi/6)*FresnelS(sqrt(6/pi)*sqrt(acos(a*x))))/(2*a^5) - (4*sqrt((2*pi)/3)*FresnelS(sqrt(6/pi)*sqrt(acos(a*x))))/a^5 + (5*sqrt((5*pi)/2)*FresnelS(sqrt(10/pi)*sqrt(acos(a*x))))/(6*a^5)]
    @test_int [x^3/acos(a*x)^(5/2), x, 15, (2*x^3*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)^(3/2)) - (4*x^2)/(a^2*sqrt(acos(a*x))) + (16*x^4)/(3*sqrt(acos(a*x))) + (4*sqrt(2*pi)*FresnelS(2*sqrt(2/pi)*sqrt(acos(a*x))))/(3*a^4) + (4*sqrt(pi)*FresnelS((2*sqrt(acos(a*x)))/sqrt(pi)))/(3*a^4)]
    @test_int [x^2/acos(a*x)^(5/2), x, 13, (2*x^2*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)^(3/2)) - (8*x)/(3*a^2*sqrt(acos(a*x))) + (4*x^3)/sqrt(acos(a*x)) + (sqrt(2*pi)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/(3*a^3) + (sqrt(6*pi)*FresnelS(sqrt(6/pi)*sqrt(acos(a*x))))/a^3]
    @test_int [x/acos(a*x)^(5/2), x, 8, (2*x*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)^(3/2)) - 4/(3*a^2*sqrt(acos(a*x))) + (8*x^2)/(3*sqrt(acos(a*x))) + (8*sqrt(pi)*FresnelS((2*sqrt(acos(a*x)))/sqrt(pi)))/(3*a^2)]
    @test_int [acos(a*x)^(-5/2), x, 5, (2*sqrt(1 - a^2*x^2))/(3*a*acos(a*x)^(3/2)) + (4*x)/(3*sqrt(acos(a*x))) + (4*sqrt(2*pi)*FresnelS(sqrt(2/pi)*sqrt(acos(a*x))))/(3*a)]
    @test_int [1/(x*acos(a*x)^(5/2)), x, 0, Unintegrable(1/(x*acos(a*x)^(5/2)), x)]


    @test_int [x^4/acos(a*x)^(7/2), x, 17, (2*x^4*sqrt(1 - a^2*x^2))/(5*a*acos(a*x)^(5/2)) - (16*x^3)/(15*a^2*acos(a*x)^(3/2)) + (4*x^5)/(3*acos(a*x)^(3/2)) + (32*x^2*sqrt(1 - a^2*x^2))/(5*a^3*sqrt(acos(a*x))) - (40*x^4*sqrt(1 - a^2*x^2))/(3*a*sqrt(acos(a*x))) + (sqrt(2*pi)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(15*a^5) + (5*sqrt((3*pi)/2)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/a^5 - (8*sqrt(6*pi)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/(5*a^5) + (5*sqrt((5*pi)/2)*FresnelC(sqrt(10/pi)*sqrt(acos(a*x))))/(3*a^5)]
    @test_int [x^3/acos(a*x)^(7/2), x, 12, (2*x^3*sqrt(1 - a^2*x^2))/(5*a*acos(a*x)^(5/2)) - (4*x^2)/(5*a^2*acos(a*x)^(3/2)) + (16*x^4)/(15*acos(a*x)^(3/2)) + (16*x*sqrt(1 - a^2*x^2))/(5*a^3*sqrt(acos(a*x))) - (128*x^3*sqrt(1 - a^2*x^2))/(15*a*sqrt(acos(a*x))) + (32*sqrt(2*pi)*FresnelC(2*sqrt(2/pi)*sqrt(acos(a*x))))/(15*a^4) + (16*sqrt(pi)*FresnelC((2*sqrt(acos(a*x)))/sqrt(pi)))/(15*a^4)]
    @test_int [x^2/acos(a*x)^(7/2), x, 13, (2*x^2*sqrt(1 - a^2*x^2))/(5*a*acos(a*x)^(5/2)) - (8*x)/(15*a^2*acos(a*x)^(3/2)) + (4*x^3)/(5*acos(a*x)^(3/2)) + (16*sqrt(1 - a^2*x^2))/(15*a^3*sqrt(acos(a*x))) - (24*x^2*sqrt(1 - a^2*x^2))/(5*a*sqrt(acos(a*x))) + (2*sqrt(2*pi)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(15*a^3) + (6*sqrt(6*pi)*FresnelC(sqrt(6/pi)*sqrt(acos(a*x))))/(5*a^3)]
    @test_int [x/acos(a*x)^(7/2), x, 6, (2*x*sqrt(1 - a^2*x^2))/(5*a*acos(a*x)^(5/2)) - 4/(15*a^2*acos(a*x)^(3/2)) + (8*x^2)/(15*acos(a*x)^(3/2)) - (32*x*sqrt(1 - a^2*x^2))/(15*a*sqrt(acos(a*x))) + (32*sqrt(pi)*FresnelC((2*sqrt(acos(a*x)))/sqrt(pi)))/(15*a^2)]
    @test_int [acos(a*x)^(-7/2), x, 6, (2*sqrt(1 - a^2*x^2))/(5*a*acos(a*x)^(5/2)) + (4*x)/(15*acos(a*x)^(3/2)) - (8*sqrt(1 - a^2*x^2))/(15*a*sqrt(acos(a*x))) + (8*sqrt(2*pi)*FresnelC(sqrt(2/pi)*sqrt(acos(a*x))))/(15*a)]
    @test_int [1/(x*acos(a*x)^(7/2)), x, 0, Unintegrable(1/(x*acos(a*x)^(7/2)), x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(b*x)^(m/2)*acos(a*x)^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(b*x)^(m/2)*acos(a*x)^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*acos(a*x)^n*with*m*symbolic=#


    @test_int [(b*x)^m*acos(a*x)^4, x, 1, ((b*x)^(1 + m)*acos(a*x)^4)/(b*(1 + m)) + (4*a*Unintegrable(((b*x)^(1 + m)*acos(a*x)^3)/sqrt(1 - a^2*x^2), x))/(b*(1 + m))]
    @test_int [(b*x)^m*acos(a*x)^3, x, 1, ((b*x)^(1 + m)*acos(a*x)^3)/(b*(1 + m)) + (3*a*Unintegrable(((b*x)^(1 + m)*acos(a*x)^2)/sqrt(1 - a^2*x^2), x))/(b*(1 + m))]
    @test_int [(b*x)^m*acos(a*x)^2, x, 2, If(13>=8, ((b*x)^(1 + m)*acos(a*x)^2)/(b*(1 + m)) + (2*a*(b*x)^(2 + m)*acos(a*x)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, a^2*x^2))/(b^2*(1 + m)*(2 + m)) + (2*a^2*(b*x)^(3 + m)*HypergeometricPFQ([1, 3/2 + m/2, 3/2 + m/2], [2 + m/2, 5/2 + m/2], a^2*x^2))/(b^3*(1 + m)*(2 + m)*(3 + m)), ((b*x)^(1 + m)*acos(a*x)^2)/(b*(1 + m)) + (2*a*(b*x)^(2 + m)*acos(a*x)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, a^2*x^2))/(b^2*(1 + m)*(2 + m)) + (2*a^2*(b*x)^(3 + m)*HypergeometricPFQ([1, 3/2 + m/2, 3/2 + m/2], [2 + m/2, 5/2 + m/2], a^2*x^2))/(b^3*(3 + m)*(2 + 3*m + m^2)))]
    @test_int [(b*x)^m*acos(a*x), x, 2, ((b*x)^(1 + m)*acos(a*x))/(b*(1 + m)) + (a*(b*x)^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, a^2*x^2))/(b^2*(1 + m)*(2 + m))]
    @test_int [(b*x)^m/acos(a*x), x, 0, Unintegrable((b*x)^m/acos(a*x), x)]
    @test_int [(b*x)^m/acos(a*x)^2, x, 0, Unintegrable((b*x)^m/acos(a*x)^2, x)]


    @test_int [(b*x)^m*acos(a*x)^(3/2), x, 0, Unintegrable((b*x)^m*acos(a*x)^(3/2), x)]
    @test_int [(b*x)^m*sqrt(acos(a*x)), x, 0, Unintegrable((b*x)^m*sqrt(acos(a*x)), x)]
    @test_int [(b*x)^m/sqrt(acos(a*x)), x, 0, Unintegrable((b*x)^m/sqrt(acos(a*x)), x)]
    @test_int [(b*x)^m/acos(a*x)^(3/2), x, 0, Unintegrable((b*x)^m/acos(a*x)^(3/2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*acos(a*x)^n*with*n*symbolic=#


    @test_int [(b*x)^m*acos(a*x)^n, x, 0, Unintegrable((b*x)^m*acos(a*x)^n, x)]


    @test_int [x^3*acos(a*x)^n, x, 9, (2^(-4 - n)*acos(a*x)^n*Gamma(1 + n, (-2*im)*acos(a*x)))/(a^4*((-im)*acos(a*x))^n) + (2^(-4 - n)*acos(a*x)^n*Gamma(1 + n, (2*im)*acos(a*x)))/(a^4*(im*acos(a*x))^n) + (acos(a*x)^n*Gamma(1 + n, (-4*im)*acos(a*x)))/(2^(2*(3 + n))*a^4*((-im)*acos(a*x))^n) + (acos(a*x)^n*Gamma(1 + n, (4*im)*acos(a*x)))/(2^(2*(3 + n))*a^4*(im*acos(a*x))^n)]
    @test_int [x^2*acos(a*x)^n, x, 9, (acos(a*x)^n*Gamma(1 + n, (-im)*acos(a*x)))/(8*a^3*((-im)*acos(a*x))^n) + (acos(a*x)^n*Gamma(1 + n, im*acos(a*x)))/(8*a^3*(im*acos(a*x))^n) + (3^(-1 - n)*acos(a*x)^n*Gamma(1 + n, (-3*im)*acos(a*x)))/(8*a^3*((-im)*acos(a*x))^n) + (3^(-1 - n)*acos(a*x)^n*Gamma(1 + n, (3*im)*acos(a*x)))/(8*a^3*(im*acos(a*x))^n)]
    @test_int [x*acos(a*x)^n, x, 6, (2^(-3 - n)*acos(a*x)^n*Gamma(1 + n, (-2*im)*acos(a*x)))/(a^2*((-im)*acos(a*x))^n) + (2^(-3 - n)*acos(a*x)^n*Gamma(1 + n, (2*im)*acos(a*x)))/(a^2*(im*acos(a*x))^n)]
    @test_int [acos(a*x)^n, x, 4, (acos(a*x)^n*Gamma(1 + n, (-im)*acos(a*x)))/(2*a*((-im)*acos(a*x))^n) + (acos(a*x)^n*Gamma(1 + n, im*acos(a*x)))/(2*a*(im*acos(a*x))^n)]
    @test_int [acos(a*x)^n/x, x, 0, Unintegrable(acos(a*x)^n/x, x)]
    @test_int [acos(a*x)^n/x^2, x, 0, Unintegrable(acos(a*x)^n/x^2, x)]


    @test_int [(b*x)^(3/2)*acos(a*x)^n, x, 0, Unintegrable((b*x)^(3/2)*acos(a*x)^n, x)]
    @test_int [sqrt(b*x)*acos(a*x)^n, x, 0, Unintegrable(sqrt(b*x)*acos(a*x)^n, x)]
    @test_int [acos(a*x)^n/sqrt(b*x), x, 0, Unintegrable(acos(a*x)^n/sqrt(b*x), x)]
    @test_int [acos(a*x)^n/(b*x)^(3/2), x, 0, Unintegrable(acos(a*x)^n/(b*x)^(3/2), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*acos(c*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*acos(c*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^3*(a + b*acos(c*x)), x, 4, (-3*b*x*sqrt(1 - c^2*x^2))/(32*c^3) - (b*x^3*sqrt(1 - c^2*x^2))/(16*c) + (x^4*(a + b*acos(c*x)))/4 + (3*b*asin(c*x))/(32*c^4)]
    @test_int [x^2*(a + b*acos(c*x)), x, 4, -(b*sqrt(1 - c^2*x^2))/(3*c^3) + (b*(1 - c^2*x^2)^(3/2))/(9*c^3) + (x^3*(a + b*acos(c*x)))/3]
    @test_int [x*(a + b*acos(c*x)), x, 3, -(b*x*sqrt(1 - c^2*x^2))/(4*c) + (x^2*(a + b*acos(c*x)))/2 + (b*asin(c*x))/(4*c^2)]
    @test_int [a + b*acos(c*x), x, 3, a*x - (b*sqrt(1 - c^2*x^2))/c + b*x*acos(c*x)]
    @test_int [(a + b*acos(c*x))/x, x, 5, ((-im/2)*(a + b*acos(c*x))^2)/b + (a + b*acos(c*x))*log(1 + ℯ^((2*im)*acos(c*x))) - (im/2)*b*PolyLog(2, -ℯ^((2*im)*acos(c*x)))]
    @test_int [(a + b*acos(c*x))/x^2, x, 4, -((a + b*acos(c*x))/x) + b*c*atanh(sqrt(1 - c^2*x^2))]
    @test_int [(a + b*acos(c*x))/x^3, x, 2, (b*c*sqrt(1 - c^2*x^2))/(2*x) - (a + b*acos(c*x))/(2*x^2)]
    @test_int [(a + b*acos(c*x))/x^4, x, 5, (b*c*sqrt(1 - c^2*x^2))/(6*x^2) - (a + b*acos(c*x))/(3*x^3) + (b*c^3*atanh(sqrt(1 - c^2*x^2)))/6]


    @test_int [x^2*(a + b*acos(c*x))^2, x, 5, (-4*b^2*x)/(9*c^2) - (2*b^2*x^3)/27 - (4*b*sqrt(1 - c^2*x^2)*(a + b*acos(c*x)))/(9*c^3) - (2*b*x^2*sqrt(1 - c^2*x^2)*(a + b*acos(c*x)))/(9*c) + (x^3*(a + b*acos(c*x))^2)/3]
    @test_int [x*(a + b*acos(c*x))^2, x, 4, -(b^2*x^2)/4 - (b*x*sqrt(1 - c^2*x^2)*(a + b*acos(c*x)))/(2*c) - (a + b*acos(c*x))^2/(4*c^2) + (x^2*(a + b*acos(c*x))^2)/2]
    @test_int [(a + b*acos(c*x))^2, x, 3, -2*b^2*x - (2*b*sqrt(1 - c^2*x^2)*(a + b*acos(c*x)))/c + x*(a + b*acos(c*x))^2]
    @test_int [(a + b*acos(c*x))^2/x, x, 6, ((-im/3)*(a + b*acos(c*x))^3)/b + (a + b*acos(c*x))^2*log(1 + ℯ^((2*im)*acos(c*x))) - im*b*(a + b*acos(c*x))*PolyLog(2, -ℯ^((2*im)*acos(c*x))) + (b^2*PolyLog(3, -ℯ^((2*im)*acos(c*x))))/2]
    @test_int [(a + b*acos(c*x))^2/x^2, x, 7, -((a + b*acos(c*x))^2/x) - (4*im)*b*c*(a + b*acos(c*x))*atan(ℯ^(im*acos(c*x))) + (2*im)*b^2*c*PolyLog(2, (-im)*ℯ^(im*acos(c*x))) - (2*im)*b^2*c*PolyLog(2, im*ℯ^(im*acos(c*x)))]


    @test_int [x^2*(a + b*acos(c*x))^3, x, 10, (-4*a*b^2*x)/(3*c^2) + (14*b^3*sqrt(1 - c^2*x^2))/(9*c^3) - (2*b^3*(1 - c^2*x^2)^(3/2))/(27*c^3) - (4*b^3*x*acos(c*x))/(3*c^2) - (2*b^2*x^3*(a + b*acos(c*x)))/9 - (2*b*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^2)/(3*c^3) - (b*x^2*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^2)/(3*c) + (x^3*(a + b*acos(c*x))^3)/3]
    @test_int [x*(a + b*acos(c*x))^3, x, 6, (3*b^3*x*sqrt(1 - c^2*x^2))/(8*c) - (3*b^2*x^2*(a + b*acos(c*x)))/4 - (3*b*x*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^2)/(4*c) - (a + b*acos(c*x))^3/(4*c^2) + (x^2*(a + b*acos(c*x))^3)/2 - (3*b^3*asin(c*x))/(8*c^2)]
    @test_int [(a + b*acos(c*x))^3, x, 5, -6*a*b^2*x + (6*b^3*sqrt(1 - c^2*x^2))/c - 6*b^3*x*acos(c*x) - (3*b*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^2)/c + x*(a + b*acos(c*x))^3]
    @test_int [(a + b*acos(c*x))^3/x, x, 7, ((-im/4)*(a + b*acos(c*x))^4)/b + (a + b*acos(c*x))^3*log(1 + ℯ^((2*im)*acos(c*x))) - ((3*im)/2)*b*(a + b*acos(c*x))^2*PolyLog(2, -ℯ^((2*im)*acos(c*x))) + (3*b^2*(a + b*acos(c*x))*PolyLog(3, -ℯ^((2*im)*acos(c*x))))/2 + ((3*im)/4)*b^3*PolyLog(4, -ℯ^((2*im)*acos(c*x)))]
    @test_int [(a + b*acos(c*x))^3/x^2, x, 9, -((a + b*acos(c*x))^3/x) - (6*im)*b*c*(a + b*acos(c*x))^2*atan(ℯ^(im*acos(c*x))) + (6*im)*b^2*c*(a + b*acos(c*x))*PolyLog(2, (-im)*ℯ^(im*acos(c*x))) - (6*im)*b^2*c*(a + b*acos(c*x))*PolyLog(2, im*ℯ^(im*acos(c*x))) - 6*b^3*c*PolyLog(3, (-im)*ℯ^(im*acos(c*x))) + 6*b^3*c*PolyLog(3, im*ℯ^(im*acos(c*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^2/(a + b*acos(c*x)), x, 9, (CosIntegral((a + b*acos(c*x))/b)*sin(a/b))/(4*b*c^3) + (CosIntegral((3*(a + b*acos(c*x)))/b)*sin((3*a)/b))/(4*b*c^3) - (cos(a/b)*SinIntegral((a + b*acos(c*x))/b))/(4*b*c^3) - (cos((3*a)/b)*SinIntegral((3*(a + b*acos(c*x)))/b))/(4*b*c^3)]
    @test_int [x^1/(a + b*acos(c*x)), x, 6, (CosIntegral((2*(a + b*acos(c*x)))/b)*sin((2*a)/b))/(2*b*c^2) - (cos((2*a)/b)*SinIntegral((2*(a + b*acos(c*x)))/b))/(2*b*c^2)]
    @test_int [x^0/(a + b*acos(c*x)), x, 4, (CosIntegral((a + b*acos(c*x))/b)*sin(a/b))/(b*c) - (cos(a/b)*SinIntegral((a + b*acos(c*x))/b))/(b*c)]
    @test_int [1/(x^1*(a + b*acos(c*x))), x, 0, Unintegrable(1/(x*(a + b*acos(c*x))), x)]
    @test_int [1/(x^2*(a + b*acos(c*x))), x, 0, Unintegrable(1/(x^2*(a + b*acos(c*x))), x)]


    @test_int [x^2/(a + b*acos(c*x))^2, x, 8, (x^2*sqrt(1 - c^2*x^2))/(b*c*(a + b*acos(c*x))) - (cos(a/b)*CosIntegral((a + b*acos(c*x))/b))/(4*b^2*c^3) - (3*cos((3*a)/b)*CosIntegral((3*(a + b*acos(c*x)))/b))/(4*b^2*c^3) - (sin(a/b)*SinIntegral((a + b*acos(c*x))/b))/(4*b^2*c^3) - (3*sin((3*a)/b)*SinIntegral((3*(a + b*acos(c*x)))/b))/(4*b^2*c^3)]
    @test_int [x^1/(a + b*acos(c*x))^2, x, 4, (x*sqrt(1 - c^2*x^2))/(b*c*(a + b*acos(c*x))) - (cos((2*a)/b)*CosIntegral((2*(a + b*acos(c*x)))/b))/(b^2*c^2) - (sin((2*a)/b)*SinIntegral((2*(a + b*acos(c*x)))/b))/(b^2*c^2)]
    @test_int [x^0/(a + b*acos(c*x))^2, x, 5, sqrt(1 - c^2*x^2)/(b*c*(a + b*acos(c*x))) - (cos(a/b)*CosIntegral((a + b*acos(c*x))/b))/(b^2*c) - (sin(a/b)*SinIntegral((a + b*acos(c*x))/b))/(b^2*c)]
    @test_int [1/(x^1*(a + b*acos(c*x))^2), x, 0, Unintegrable(1/(x*(a + b*acos(c*x))^2), x)]
    @test_int [1/(x^2*(a + b*acos(c*x))^2), x, 0, Unintegrable(1/(x^2*(a + b*acos(c*x))^2), x)]


    @test_int [x^2/(a + b*acos(c*x))^3, x, 16, (x^2*sqrt(1 - c^2*x^2))/(2*b*c*(a + b*acos(c*x))^2) - x/(b^2*c^2*(a + b*acos(c*x))) + (3*x^3)/(2*b^2*(a + b*acos(c*x))) - (CosIntegral((a + b*acos(c*x))/b)*sin(a/b))/(8*b^3*c^3) - (9*CosIntegral((3*(a + b*acos(c*x)))/b)*sin((3*a)/b))/(8*b^3*c^3) + (cos(a/b)*SinIntegral((a + b*acos(c*x))/b))/(8*b^3*c^3) + (9*cos((3*a)/b)*SinIntegral((3*(a + b*acos(c*x)))/b))/(8*b^3*c^3)]
    @test_int [x^1/(a + b*acos(c*x))^3, x, 9, (x*sqrt(1 - c^2*x^2))/(2*b*c*(a + b*acos(c*x))^2) - 1/(2*b^2*c^2*(a + b*acos(c*x))) + x^2/(b^2*(a + b*acos(c*x))) - (CosIntegral((2*(a + b*acos(c*x)))/b)*sin((2*a)/b))/(b^3*c^2) + (cos((2*a)/b)*SinIntegral((2*(a + b*acos(c*x)))/b))/(b^3*c^2)]
    @test_int [x^0/(a + b*acos(c*x))^3, x, 6, sqrt(1 - c^2*x^2)/(2*b*c*(a + b*acos(c*x))^2) + x/(2*b^2*(a + b*acos(c*x))) - (CosIntegral((a + b*acos(c*x))/b)*sin(a/b))/(2*b^3*c) + (cos(a/b)*SinIntegral((a + b*acos(c*x))/b))/(2*b^3*c)]
    @test_int [1/(x^1*(a + b*acos(c*x))^3), x, 0, Unintegrable(1/(x*(a + b*acos(c*x))^3), x)]
    @test_int [1/(x^2*(a + b*acos(c*x))^3), x, 0, Unintegrable(1/(x^2*(a + b*acos(c*x))^3), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*acos(c*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^2*sqrt(a + b*acos(c*x)), x, 14, (x^3*sqrt(a + b*acos(c*x)))/3 - (sqrt(b)*sqrt(pi/2)*cos(a/b)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(4*c^3) - (sqrt(b)*sqrt(pi/6)*cos((3*a)/b)*FresnelC((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(12*c^3) - (sqrt(b)*sqrt(pi/2)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(4*c^3) - (sqrt(b)*sqrt(pi/6)*FresnelS((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin((3*a)/b))/(12*c^3)]
    @test_int [x*sqrt(a + b*acos(c*x)), x, 9, -sqrt(a + b*acos(c*x))/(4*c^2) + (x^2*sqrt(a + b*acos(c*x)))/2 - (sqrt(b)*sqrt(pi)*cos((2*a)/b)*FresnelC((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi))))/(8*c^2) - (sqrt(b)*sqrt(pi)*FresnelS((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi)))*sin((2*a)/b))/(8*c^2)]
    @test_int [sqrt(a + b*acos(c*x)), x, 7, x*sqrt(a + b*acos(c*x)) - (sqrt(b)*sqrt(pi/2)*cos(a/b)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/c - (sqrt(b)*sqrt(pi/2)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/c]
    @test_int [sqrt(a + b*acos(c*x))/x, x, 0, Unintegrable(sqrt(a + b*acos(c*x))/x, x)]
    @test_int [sqrt(a + b*acos(c*x))/x^2, x, 0, Unintegrable(sqrt(a + b*acos(c*x))/x^2, x)]


    @test_int [x^2*(a + b*acos(c*x))^(3/2), x, 22, -(b*sqrt(1 - c^2*x^2)*sqrt(a + b*acos(c*x)))/(3*c^3) - (b*x^2*sqrt(1 - c^2*x^2)*sqrt(a + b*acos(c*x)))/(6*c) + (x^3*(a + b*acos(c*x))^(3/2))/3 + (3*b^(3/2)*sqrt(pi/2)*cos(a/b)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(8*c^3) + (b^(3/2)*sqrt(pi/6)*cos((3*a)/b)*FresnelS((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(24*c^3) - (3*b^(3/2)*sqrt(pi/2)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(8*c^3) - (b^(3/2)*sqrt(pi/6)*FresnelC((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin((3*a)/b))/(24*c^3)]
    @test_int [x*(a + b*acos(c*x))^(3/2), x, 11, (-3*b*x*sqrt(1 - c^2*x^2)*sqrt(a + b*acos(c*x)))/(8*c) - (a + b*acos(c*x))^(3/2)/(4*c^2) + (x^2*(a + b*acos(c*x))^(3/2))/2 + (3*b^(3/2)*sqrt(pi)*cos((2*a)/b)*FresnelS((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi))))/(32*c^2) - (3*b^(3/2)*sqrt(pi)*FresnelC((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi)))*sin((2*a)/b))/(32*c^2)]
    @test_int [(a + b*acos(c*x))^(3/2), x, 8, (-3*b*sqrt(1 - c^2*x^2)*sqrt(a + b*acos(c*x)))/(2*c) + x*(a + b*acos(c*x))^(3/2) + (3*b^(3/2)*sqrt(pi/2)*cos(a/b)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(2*c) - (3*b^(3/2)*sqrt(pi/2)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(2*c)]
    @test_int [(a + b*acos(c*x))^(3/2)/x, x, 0, Unintegrable((a + b*acos(c*x))^(3/2)/x, x)]
    @test_int [(a + b*acos(c*x))^(3/2)/x^2, x, 0, Unintegrable((a + b*acos(c*x))^(3/2)/x^2, x)]


    @test_int [x^2*(a + b*acos(c*x))^(5/2), x, 24, (-5*b^2*x*sqrt(a + b*acos(c*x)))/(6*c^2) - (5*b^2*x^3*sqrt(a + b*acos(c*x)))/36 - (5*b*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^(3/2))/(9*c^3) - (5*b*x^2*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^(3/2))/(18*c) + (x^3*(a + b*acos(c*x))^(5/2))/3 + (15*b^(5/2)*sqrt(pi/2)*cos(a/b)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(16*c^3) + (5*b^(5/2)*sqrt(pi/6)*cos((3*a)/b)*FresnelC((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(144*c^3) + (15*b^(5/2)*sqrt(pi/2)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(16*c^3) + (5*b^(5/2)*sqrt(pi/6)*FresnelS((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin((3*a)/b))/(144*c^3)]
    @test_int [x*(a + b*acos(c*x))^(5/2), x, 12, (15*b^2*sqrt(a + b*acos(c*x)))/(64*c^2) - (15*b^2*x^2*sqrt(a + b*acos(c*x)))/32 - (5*b*x*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^(3/2))/(8*c) - (a + b*acos(c*x))^(5/2)/(4*c^2) + (x^2*(a + b*acos(c*x))^(5/2))/2 + (15*b^(5/2)*sqrt(pi)*cos((2*a)/b)*FresnelC((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi))))/(128*c^2) + (15*b^(5/2)*sqrt(pi)*FresnelS((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi)))*sin((2*a)/b))/(128*c^2)]
    @test_int [(a + b*acos(c*x))^(5/2), x, 9, (-15*b^2*x*sqrt(a + b*acos(c*x)))/4 - (5*b*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^(3/2))/(2*c) + x*(a + b*acos(c*x))^(5/2) + (15*b^(5/2)*sqrt(pi/2)*cos(a/b)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(4*c) + (15*b^(5/2)*sqrt(pi/2)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(4*c)]
    @test_int [(a + b*acos(c*x))^(5/2)/x, x, 0, Unintegrable((a + b*acos(c*x))^(5/2)/x, x)]
    @test_int [(a + b*acos(c*x))^(5/2)/x^2, x, 0, Unintegrable((a + b*acos(c*x))^(5/2)/x^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^2/sqrt(a + b*acos(c*x)), x, 13, -(sqrt(pi/2)*cos(a/b)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(2*sqrt(b)*c^3) - (sqrt(pi/6)*cos((3*a)/b)*FresnelS((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(2*sqrt(b)*c^3) + (sqrt(pi/2)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(2*sqrt(b)*c^3) + (sqrt(pi/6)*FresnelC((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin((3*a)/b))/(2*sqrt(b)*c^3)]
    @test_int [x/sqrt(a + b*acos(c*x)), x, 8, -(sqrt(pi)*cos((2*a)/b)*FresnelS((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi))))/(2*sqrt(b)*c^2) + (sqrt(pi)*FresnelC((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi)))*sin((2*a)/b))/(2*sqrt(b)*c^2)]
    @test_int [1/sqrt(a + b*acos(c*x)), x, 6, -((sqrt(2*pi)*cos(a/b)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(sqrt(b)*c)) + (sqrt(2*pi)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(sqrt(b)*c)]
    @test_int [1/(x*sqrt(a + b*acos(c*x))), x, 0, Unintegrable(1/(x*sqrt(a + b*acos(c*x))), x)]
    @test_int [1/(x^2*sqrt(a + b*acos(c*x))), x, 0, Unintegrable(1/(x^2*sqrt(a + b*acos(c*x))), x)]


    @test_int [x^2/(a + b*acos(c*x))^(3/2), x, 12, (2*x^2*sqrt(1 - c^2*x^2))/(b*c*sqrt(a + b*acos(c*x))) - (sqrt(pi/2)*cos(a/b)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(b^(3/2)*c^3) - (sqrt((3*pi)/2)*cos((3*a)/b)*FresnelC((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(b^(3/2)*c^3) - (sqrt(pi/2)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(b^(3/2)*c^3) - (sqrt((3*pi)/2)*FresnelS((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin((3*a)/b))/(b^(3/2)*c^3)]
    @test_int [x/(a + b*acos(c*x))^(3/2), x, 6, (2*x*sqrt(1 - c^2*x^2))/(b*c*sqrt(a + b*acos(c*x))) - (2*sqrt(pi)*cos((2*a)/b)*FresnelC((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi))))/(b^(3/2)*c^2) - (2*sqrt(pi)*FresnelS((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi)))*sin((2*a)/b))/(b^(3/2)*c^2)]
    @test_int [(a + b*acos(c*x))^(-3/2), x, 7, (2*sqrt(1 - c^2*x^2))/(b*c*sqrt(a + b*acos(c*x))) - (2*sqrt(2*pi)*cos(a/b)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(b^(3/2)*c) - (2*sqrt(2*pi)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(b^(3/2)*c)]
    @test_int [1/(x*(a + b*acos(c*x))^(3/2)), x, 0, Unintegrable(1/(x*(a + b*acos(c*x))^(3/2)), x)]
    @test_int [1/(x^2*(a + b*acos(c*x))^(3/2)), x, 0, Unintegrable(1/(x^2*(a + b*acos(c*x))^(3/2)), x)]


    @test_int [x^2/(a + b*acos(c*x))^(5/2), x, 22, (2*x^2*sqrt(1 - c^2*x^2))/(3*b*c*(a + b*acos(c*x))^(3/2)) - (8*x)/(3*b^2*c^2*sqrt(a + b*acos(c*x))) + (4*x^3)/(b^2*sqrt(a + b*acos(c*x))) + (sqrt(2*pi)*cos(a/b)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(3*b^(5/2)*c^3) + (sqrt(6*pi)*cos((3*a)/b)*FresnelS((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(b^(5/2)*c^3) - (sqrt(2*pi)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(3*b^(5/2)*c^3) - (sqrt(6*pi)*FresnelC((sqrt(6/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin((3*a)/b))/(b^(5/2)*c^3)]
    @test_int [x/(a + b*acos(c*x))^(5/2), x, 11, (2*x*sqrt(1 - c^2*x^2))/(3*b*c*(a + b*acos(c*x))^(3/2)) - 4/(3*b^2*c^2*sqrt(a + b*acos(c*x))) + (8*x^2)/(3*b^2*sqrt(a + b*acos(c*x))) + (8*sqrt(pi)*cos((2*a)/b)*FresnelS((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi))))/(3*b^(5/2)*c^2) - (8*sqrt(pi)*FresnelC((2*sqrt(a + b*acos(c*x)))/(sqrt(b)*sqrt(pi)))*sin((2*a)/b))/(3*b^(5/2)*c^2)]
    @test_int [(a + b*acos(c*x))^(-5/2), x, 8, (2*sqrt(1 - c^2*x^2))/(3*b*c*(a + b*acos(c*x))^(3/2)) + (4*x)/(3*b^2*sqrt(a + b*acos(c*x))) + (4*sqrt(2*pi)*cos(a/b)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b)))/(3*b^(5/2)*c) - (4*sqrt(2*pi)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c*x)))/sqrt(b))*sin(a/b))/(3*b^(5/2)*c)]
    @test_int [1/(x*(a + b*acos(c*x))^(5/2)), x, 0, Unintegrable(1/(x*(a + b*acos(c*x))^(5/2)), x)]
    @test_int [1/(x^2*(a + b*acos(c*x))^(5/2)), x, 0, Unintegrable(1/(x^2*(a + b*acos(c*x))^(5/2)), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^(m/2)*(a+b*acos(c*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(d*x)^(5/2)*(a + b*acos(c*x)), x, 5, (-20*b*d^2*sqrt(d*x)*sqrt(1 - c^2*x^2))/(147*c^3) - (4*b*(d*x)^(5/2)*sqrt(1 - c^2*x^2))/(49*c) + (2*(d*x)^(7/2)*(a + b*acos(c*x)))/(7*d) + (20*b*d^(5/2)*Elliptic.F(asin((sqrt(c)*sqrt(d*x))/sqrt(d)), -1))/(147*c^(7/2))]
    @test_int [(d*x)^(3/2)*(a + b*acos(c*x)), x, 7, -((4*b*(d*x)^(3/2)*sqrt(1 - c^2*x^2))/(25*c)) + (2*(d*x)^(5/2)*(a + b*acos(c*x)))/(5*d) + (12*b*d^(3/2)*Elliptic.E(asin((sqrt(c)*sqrt(d*x))/sqrt(d)), -1))/(25*c^(5/2)) - (12*b*d^(3/2)*Elliptic.F(asin((sqrt(c)*sqrt(d*x))/sqrt(d)), -1))/(25*c^(5/2))]
    @test_int [sqrt(d*x)*(a + b*acos(c*x)), x, 4, (-4*b*sqrt(d*x)*sqrt(1 - c^2*x^2))/(9*c) + (2*(d*x)^(3/2)*(a + b*acos(c*x)))/(3*d) + (4*b*sqrt(d)*Elliptic.F(asin((sqrt(c)*sqrt(d*x))/sqrt(d)), -1))/(9*c^(3/2))]
    @test_int [(a + b*acos(c*x))/sqrt(d*x), x, 6, (2*sqrt(d*x)*(a + b*acos(c*x)))/d + (4*b*Elliptic.E(asin((sqrt(c)*sqrt(d*x))/sqrt(d)), -1))/(sqrt(c)*sqrt(d)) - (4*b*Elliptic.F(asin((sqrt(c)*sqrt(d*x))/sqrt(d)), -1))/(sqrt(c)*sqrt(d))]
    @test_int [(a + b*acos(c*x))/(d*x)^(3/2), x, 3, (-2*(a + b*acos(c*x)))/(d*sqrt(d*x)) - (4*b*sqrt(c)*Elliptic.F(asin((sqrt(c)*sqrt(d*x))/sqrt(d)), -1))/d^(3/2)]
    @test_int [(a + b*acos(c*x))/(d*x)^(5/2), x, 7, (4*b*c*sqrt(1 - c^2*x^2))/(3*d^2*sqrt(d*x)) - (2*(a + b*acos(c*x)))/(3*d*(d*x)^(3/2)) + (4*b*c^(3/2)*Elliptic.E(asin((sqrt(c)*sqrt(d*x))/sqrt(d)), -1))/(3*d^(5/2)) - (4*b*c^(3/2)*Elliptic.F(asin((sqrt(c)*sqrt(d*x))/sqrt(d)), -1))/(3*d^(5/2))]


    @test_int [(d*x)^(5/2)*(a + b*acos(c*x))^2, x, 2, (2*(d*x)^(7/2)*(a + b*acos(c*x))^2)/(7*d) + (8*b*c*(d*x)^(9/2)*(a + b*acos(c*x))*HypergeometricFunctions._₂F₁(1/2, 9/4, 13/4, c^2*x^2))/(63*d^2) + (16*b^2*c^2*(d*x)^(11/2)*HypergeometricPFQ([1, 11/4, 11/4], [13/4, 15/4], c^2*x^2))/(693*d^3)]
    @test_int [(d*x)^(3/2)*(a + b*acos(c*x))^2, x, 2, (2*(d*x)^(5/2)*(a + b*acos(c*x))^2)/(5*d) + (8*b*c*(d*x)^(7/2)*(a + b*acos(c*x))*HypergeometricFunctions._₂F₁(1/2, 7/4, 11/4, c^2*x^2))/(35*d^2) + (16*b^2*c^2*(d*x)^(9/2)*HypergeometricPFQ([1, 9/4, 9/4], [11/4, 13/4], c^2*x^2))/(315*d^3)]
    @test_int [sqrt(d*x)*(a + b*acos(c*x))^2, x, 2, (2*(d*x)^(3/2)*(a + b*acos(c*x))^2)/(3*d) + (8*b*c*(d*x)^(5/2)*(a + b*acos(c*x))*HypergeometricFunctions._₂F₁(1/2, 5/4, 9/4, c^2*x^2))/(15*d^2) + (16*b^2*c^2*(d*x)^(7/2)*HypergeometricPFQ([1, 7/4, 7/4], [9/4, 11/4], c^2*x^2))/(105*d^3)]
    @test_int [(a + b*acos(c*x))^2/sqrt(d*x), x, 2, (2*sqrt(d*x)*(a + b*acos(c*x))^2)/d + (8*b*c*(d*x)^(3/2)*(a + b*acos(c*x))*HypergeometricFunctions._₂F₁(1/2, 3/4, 7/4, c^2*x^2))/(3*d^2) + (16*b^2*c^2*(d*x)^(5/2)*HypergeometricPFQ([1, 5/4, 5/4], [7/4, 9/4], c^2*x^2))/(15*d^3)]
    @test_int [(a + b*acos(c*x))^2/(d*x)^(3/2), x, 2, (-2*(a + b*acos(c*x))^2)/(d*sqrt(d*x)) - (8*b*c*sqrt(d*x)*(a + b*acos(c*x))*HypergeometricFunctions._₂F₁(1/4, 1/2, 5/4, c^2*x^2))/d^2 - (16*b^2*c^2*(d*x)^(3/2)*HypergeometricPFQ([3/4, 3/4, 1], [5/4, 7/4], c^2*x^2))/(3*d^3)]
    @test_int [(a + b*acos(c*x))^2/(d*x)^(5/2), x, 2, (-2*(a + b*acos(c*x))^2)/(3*d*(d*x)^(3/2)) + (8*b*c*(a + b*acos(c*x))*HypergeometricFunctions._₂F₁(-1/4, 1/2, 3/4, c^2*x^2))/(3*d^2*sqrt(d*x)) + (16*b^2*c^2*sqrt(d*x)*HypergeometricPFQ([1/4, 1/4, 1], [3/4, 5/4], c^2*x^2))/(3*d^3)]


    @test_int [(d*x)^(3/2)*(a + b*acos(c*x))^3, x, 1, (2*(d*x)^(5/2)*(a + b*acos(c*x))^3)/(5*d) + (6*b*c*Unintegrable(((d*x)^(5/2)*(a + b*acos(c*x))^2)/sqrt(1 - c^2*x^2), x))/(5*d)]
    @test_int [sqrt(d*x)*(a + b*acos(c*x))^3, x, 1, (2*(d*x)^(3/2)*(a + b*acos(c*x))^3)/(3*d) + (2*b*c*Unintegrable(((d*x)^(3/2)*(a + b*acos(c*x))^2)/sqrt(1 - c^2*x^2), x))/d]
    @test_int [(a + b*acos(c*x))^3/sqrt(d*x), x, 1, (2*sqrt(d*x)*(a + b*acos(c*x))^3)/d + (6*b*c*Unintegrable((sqrt(d*x)*(a + b*acos(c*x))^2)/sqrt(1 - c^2*x^2), x))/d]
    @test_int [(a + b*acos(c*x))^3/(d*x)^(3/2), x, 1, (-2*(a + b*acos(c*x))^3)/(d*sqrt(d*x)) - (6*b*c*Unintegrable((a + b*acos(c*x))^2/(sqrt(d*x)*sqrt(1 - c^2*x^2)), x))/d]
    @test_int [(a + b*acos(c*x))^3/(d*x)^(5/2), x, 1, (-2*(a + b*acos(c*x))^3)/(3*d*(d*x)^(3/2)) - (2*b*c*Unintegrable((a + b*acos(c*x))^2/((d*x)^(3/2)*sqrt(1 - c^2*x^2)), x))/d]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(d*x)^(3/2)/(a + b*acos(c*x)), x, 0, Unintegrable((d*x)^(3/2)/(a + b*acos(c*x)), x)]
    @test_int [sqrt(d*x)/(a + b*acos(c*x)), x, 0, Unintegrable(sqrt(d*x)/(a + b*acos(c*x)), x)]
    @test_int [1/(sqrt(d*x)*(a + b*acos(c*x))), x, 0, Unintegrable(1/(sqrt(d*x)*(a + b*acos(c*x))), x)]
    @test_int [1/((d*x)^(3/2)*(a + b*acos(c*x))), x, 0, Unintegrable(1/((d*x)^(3/2)*(a + b*acos(c*x))), x)]


    @test_int [(d*x)^(3/2)/(a + b*acos(c*x))^2, x, 0, Unintegrable((d*x)^(3/2)/(a + b*acos(c*x))^2, x)]
    @test_int [sqrt(d*x)/(a + b*acos(c*x))^2, x, 0, Unintegrable(sqrt(d*x)/(a + b*acos(c*x))^2, x)]
    @test_int [1/(sqrt(d*x)*(a + b*acos(c*x))^2), x, 0, Unintegrable(1/(sqrt(d*x)*(a + b*acos(c*x))^2), x)]
    @test_int [1/((d*x)^(3/2)*(a + b*acos(c*x))^2), x, 0, Unintegrable(1/((d*x)^(3/2)*(a + b*acos(c*x))^2), x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(d*x)^(m/2)*(a+b*acos(c*x))^(n/2)=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*acos(c*x))^n*with*m*symbolic=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*acos(c*x))^n*with*n*symbolic=#
    end
