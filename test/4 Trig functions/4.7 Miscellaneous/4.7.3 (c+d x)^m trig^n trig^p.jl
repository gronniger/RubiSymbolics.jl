@testset "4.7.3 (c+d x)^m trig^n trig^p" begin
    (a, b, c, d, m, x, ) = @variables a b c d m x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^n*sin(a+b*x)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^1*sin(a+b*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)*sin(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^m, x, 5, -((2^(-3 - m)*ℯ^(2*im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((2*im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*b)) - (2^(-3 - m)*(c + d*x)^m*Gamma(1 + m, (2*im*b*(c + d*x))/d))/(ℯ^(2*im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*b)]

    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^4, x, 5, (3*c*d^3*x)/(2*b^3) + (3*d^4*x^2)/(4*b^3) - (c + d*x)^4/(4*b) - (3*d^3*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(2*b^4) + (d*(c + d*x)^3*cos(a + b*x)*sin(a + b*x))/b^2 + (3*d^4*sin(a + b*x)^2)/(4*b^5) - (3*d^2*(c + d*x)^2*sin(a + b*x)^2)/(2*b^3) + ((c + d*x)^4*sin(a + b*x)^2)/(2*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^3, x, 5, (3*d^3*x)/(8*b^3) - (c + d*x)^3/(4*b) - (3*d^3*cos(a + b*x)*sin(a + b*x))/(8*b^4) + (3*d*(c + d*x)^2*cos(a + b*x)*sin(a + b*x))/(4*b^2) - (3*d^2*(c + d*x)*sin(a + b*x)^2)/(4*b^3) + ((c + d*x)^3*sin(a + b*x)^2)/(2*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^2, x, 3, -((c*d*x)/(2*b)) - (d^2*x^2)/(4*b) + (d*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(2*b^2) - (d^2*sin(a + b*x)^2)/(4*b^3) + ((c + d*x)^2*sin(a + b*x)^2)/(2*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^1, x, 3, -((d*x)/(4*b)) + (d*cos(a + b*x)*sin(a + b*x))/(4*b^2) + ((c + d*x)*sin(a + b*x)^2)/(2*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)/(c + d*x)^1, x, 5, (CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(2*d) + (cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(2*d)]
    @test_int [cos(a + b*x)*sin(a + b*x)/(c + d*x)^2, x, 6, (b*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/d^2 - sin(2*a + 2*b*x)/(2*d*(c + d*x)) - (b*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^2]
    @test_int [cos(a + b*x)*sin(a + b*x)/(c + d*x)^3, x, 7, -((b*cos(2*a + 2*b*x))/(2*d^2*(c + d*x))) - (b^2*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/d^3 - sin(2*a + 2*b*x)/(4*d*(c + d*x)^2) - (b^2*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^3]
    @test_int [cos(a + b*x)*sin(a + b*x)/(c + d*x)^4, x, 8, -((b*cos(2*a + 2*b*x))/(6*d^2*(c + d*x)^2)) - (2*b^3*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/(3*d^4) - sin(2*a + 2*b*x)/(6*d*(c + d*x)^3) + (b^2*sin(2*a + 2*b*x))/(3*d^3*(c + d*x)) + (2*b^3*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(3*d^4)]

    @test_int [sin(x)*cos(x)/x^1, x, 3, (1/2)*SinIntegral(2*x)]
    @test_int [sin(x)*cos(x)/x^2, x, 4, CosIntegral(2*x) - sin(2*x)/(2*x)]
    @test_int [sin(x)*cos(x)/x^3, x, 5, -(cos(2*x)/(2*x)) - sin(2*x)/(4*x^2) - SinIntegral(2*x)]


    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^m, x, 8, -((im*ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*(8*b))) + (im*(c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*(8*b)) + (im*3^(-1 - m)*ℯ^(3*im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((3*im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*(8*b)) - (im*3^(-1 - m)*(c + d*x)^m*Gamma(1 + m, (3*im*b*(c + d*x))/d))/(ℯ^(3*im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*(8*b))]

    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^4, x, 9, -((160*d^3*(c + d*x)*cos(a + b*x))/(27*b^4)) + (8*d*(c + d*x)^3*cos(a + b*x))/(9*b^2) + (160*d^4*sin(a + b*x))/(27*b^5) - (8*d^2*(c + d*x)^2*sin(a + b*x))/(3*b^3) - (8*d^3*(c + d*x)*cos(a + b*x)*sin(a + b*x)^2)/(27*b^4) + (4*d*(c + d*x)^3*cos(a + b*x)*sin(a + b*x)^2)/(9*b^2) + (8*d^4*sin(a + b*x)^3)/(81*b^5) - (4*d^2*(c + d*x)^2*sin(a + b*x)^3)/(9*b^3) + ((c + d*x)^4*sin(a + b*x)^3)/(3*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^3, x, 7, -((14*d^3*cos(a + b*x))/(9*b^4)) + (2*d*(c + d*x)^2*cos(a + b*x))/(3*b^2) + (2*d^3*cos(a + b*x)^3)/(27*b^4) - (4*d^2*(c + d*x)*sin(a + b*x))/(3*b^3) + (d*(c + d*x)^2*cos(a + b*x)*sin(a + b*x)^2)/(3*b^2) - (2*d^2*(c + d*x)*sin(a + b*x)^3)/(9*b^3) + ((c + d*x)^3*sin(a + b*x)^3)/(3*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^2, x, 4, (4*d*(c + d*x)*cos(a + b*x))/(9*b^2) - (4*d^2*sin(a + b*x))/(9*b^3) + (2*d*(c + d*x)*cos(a + b*x)*sin(a + b*x)^2)/(9*b^2) - (2*d^2*sin(a + b*x)^3)/(27*b^3) + ((c + d*x)^2*sin(a + b*x)^3)/(3*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^1, x, 3, (d*cos(a + b*x))/(3*b^2) - (d*cos(a + b*x)^3)/(9*b^2) + ((c + d*x)*sin(a + b*x)^3)/(3*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2/(c + d*x)^1, x, 8, (cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(4*d) - (cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(4*d) - (sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(4*d) + (sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(4*d)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2/(c + d*x)^2, x, 10, -(cos(a + b*x)/(4*d*(c + d*x))) + cos(3*a + 3*b*x)/(4*d*(c + d*x)) + (3*b*CosIntegral((3*b*c)/d + 3*b*x)*sin(3*a - (3*b*c)/d))/(4*d^2) - (b*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(4*d^2) - (b*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(4*d^2) + (3*b*cos(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(4*d^2)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2/(c + d*x)^3, x, 12, -(cos(a + b*x)/(8*d*(c + d*x)^2)) + cos(3*a + 3*b*x)/(8*d*(c + d*x)^2) - (b^2*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(8*d^3) + (9*b^2*cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(8*d^3) + (b*sin(a + b*x))/(8*d^2*(c + d*x)) - (3*b*sin(3*a + 3*b*x))/(8*d^2*(c + d*x)) + (b^2*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(8*d^3) - (9*b^2*sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(8*d^3)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2/(c + d*x)^4, x, 14, -(cos(a + b*x)/(12*d*(c + d*x)^3)) + (b^2*cos(a + b*x))/(24*d^3*(c + d*x)) + cos(3*a + 3*b*x)/(12*d*(c + d*x)^3) - (3*b^2*cos(3*a + 3*b*x))/(8*d^3*(c + d*x)) - (9*b^3*CosIntegral((3*b*c)/d + 3*b*x)*sin(3*a - (3*b*c)/d))/(8*d^4) + (b^3*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(24*d^4) + (b*sin(a + b*x))/(24*d^2*(c + d*x)^2) - (b*sin(3*a + 3*b*x))/(8*d^2*(c + d*x)^2) + (b^3*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(24*d^4) - (9*b^3*cos(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(8*d^4)]


    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^m, x, 8, -((2^(-4 - m)*ℯ^(2*im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((2*im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*b)) - (2^(-4 - m)*(c + d*x)^m*Gamma(1 + m, (2*im*b*(c + d*x))/d))/(ℯ^(2*im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*b) + (ℯ^(4*im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((4*im*b*(c + d*x))/d)))/(2^(2*(3 + m))*(-((im*b*(c + d*x))/d))^m*b) + ((c + d*x)^m*Gamma(1 + m, (4*im*b*(c + d*x))/d))/(2^(2*(3 + m))*ℯ^(4*im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*b)]

    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^4, x, 9, (45*c*d^3*x)/(64*b^3) + (45*d^4*x^2)/(128*b^3) - (3*(c + d*x)^4)/(32*b) - (45*d^3*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(64*b^4) + (3*d*(c + d*x)^3*cos(a + b*x)*sin(a + b*x))/(8*b^2) + (45*d^4*sin(a + b*x)^2)/(128*b^5) - (9*d^2*(c + d*x)^2*sin(a + b*x)^2)/(16*b^3) - (3*d^3*(c + d*x)*cos(a + b*x)*sin(a + b*x)^3)/(32*b^4) + (d*(c + d*x)^3*cos(a + b*x)*sin(a + b*x)^3)/(4*b^2) + (3*d^4*sin(a + b*x)^4)/(128*b^5) - (3*d^2*(c + d*x)^2*sin(a + b*x)^4)/(16*b^3) + ((c + d*x)^4*sin(a + b*x)^4)/(4*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^3, x, 9, (45*d^3*x)/(256*b^3) - (3*(c + d*x)^3)/(32*b) - (45*d^3*cos(a + b*x)*sin(a + b*x))/(256*b^4) + (9*d*(c + d*x)^2*cos(a + b*x)*sin(a + b*x))/(32*b^2) - (9*d^2*(c + d*x)*sin(a + b*x)^2)/(32*b^3) - (3*d^3*cos(a + b*x)*sin(a + b*x)^3)/(128*b^4) + (3*d*(c + d*x)^2*cos(a + b*x)*sin(a + b*x)^3)/(16*b^2) - (3*d^2*(c + d*x)*sin(a + b*x)^4)/(32*b^3) + ((c + d*x)^3*sin(a + b*x)^4)/(4*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^2, x, 4, -((3*c*d*x)/(16*b)) - (3*d^2*x^2)/(32*b) + (3*d*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(16*b^2) - (3*d^2*sin(a + b*x)^2)/(32*b^3) + (d*(c + d*x)*cos(a + b*x)*sin(a + b*x)^3)/(8*b^2) - (d^2*sin(a + b*x)^4)/(32*b^3) + ((c + d*x)^2*sin(a + b*x)^4)/(4*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^1, x, 4, -((3*d*x)/(32*b)) + (3*d*cos(a + b*x)*sin(a + b*x))/(32*b^2) + (d*cos(a + b*x)*sin(a + b*x)^3)/(16*b^2) + ((c + d*x)*sin(a + b*x)^4)/(4*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^3/(c + d*x)^1, x, 8, -((CosIntegral((4*b*c)/d + 4*b*x)*sin(4*a - (4*b*c)/d))/(8*d)) + (CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(4*d) + (cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(4*d) - (cos(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/(8*d)]
    @test_int [cos(a + b*x)*sin(a + b*x)^3/(c + d*x)^2, x, 10, (b*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/(2*d^2) - (b*cos(4*a - (4*b*c)/d)*CosIntegral((4*b*c)/d + 4*b*x))/(2*d^2) - sin(2*a + 2*b*x)/(4*d*(c + d*x)) + sin(4*a + 4*b*x)/(8*d*(c + d*x)) - (b*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(2*d^2) + (b*sin(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/(2*d^2)]
    @test_int [cos(a + b*x)*sin(a + b*x)^3/(c + d*x)^3, x, 12, -((b*cos(2*a + 2*b*x))/(4*d^2*(c + d*x))) + (b*cos(4*a + 4*b*x))/(4*d^2*(c + d*x)) + (b^2*CosIntegral((4*b*c)/d + 4*b*x)*sin(4*a - (4*b*c)/d))/d^3 - (b^2*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(2*d^3) - sin(2*a + 2*b*x)/(8*d*(c + d*x)^2) + sin(4*a + 4*b*x)/(16*d*(c + d*x)^2) - (b^2*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(2*d^3) + (b^2*cos(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/d^3]
    @test_int [cos(a + b*x)*sin(a + b*x)^3/(c + d*x)^4, x, 14, -((b*cos(2*a + 2*b*x))/(12*d^2*(c + d*x)^2)) + (b*cos(4*a + 4*b*x))/(12*d^2*(c + d*x)^2) - (b^3*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/(3*d^4) + (4*b^3*cos(4*a - (4*b*c)/d)*CosIntegral((4*b*c)/d + 4*b*x))/(3*d^4) - sin(2*a + 2*b*x)/(12*d*(c + d*x)^3) + (b^2*sin(2*a + 2*b*x))/(6*d^3*(c + d*x)) + sin(4*a + 4*b*x)/(24*d*(c + d*x)^3) - (b^2*sin(4*a + 4*b*x))/(3*d^3*(c + d*x)) + (b^3*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(3*d^4) - (4*b^3*sin(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/(3*d^4)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(a + b*x)*csc(a + b*x)*(c + d*x)^m, x, 0, Unintegrable((c + d*x)^m*cot(a + b*x), x)]

    @test_int [cos(a + b*x)*csc(a + b*x)*(c + d*x)^4, x, 7, -((im*(c + d*x)^5)/(5*d)) + ((c + d*x)^4*log(1 - ℯ^(2*im*(a + b*x))))/b - (2*im*d*(c + d*x)^3*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 + (3*d^2*(c + d*x)^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^3 + (3*im*d^3*(c + d*x)*PolyLog(4, ℯ^(2*im*(a + b*x))))/b^4 - (3*d^4*PolyLog(5, ℯ^(2*im*(a + b*x))))/(2*b^5)]
    @test_int [cos(a + b*x)*csc(a + b*x)*(c + d*x)^3, x, 6, -((im*(c + d*x)^4)/(4*d)) + ((c + d*x)^3*log(1 - ℯ^(2*im*(a + b*x))))/b - (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2) + (3*d^2*(c + d*x)*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3) + (3*im*d^3*PolyLog(4, ℯ^(2*im*(a + b*x))))/(4*b^4)]
    @test_int [cos(a + b*x)*csc(a + b*x)*(c + d*x)^2, x, 5, -((im*(c + d*x)^3)/(3*d)) + ((c + d*x)^2*log(1 - ℯ^(2*im*(a + b*x))))/b - (im*d*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 + (d^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3)]
    @test_int [cos(a + b*x)*csc(a + b*x)*(c + d*x)^1, x, 4, -((im*(c + d*x)^2)/(2*d)) + ((c + d*x)*log(1 - ℯ^(2*im*(a + b*x))))/b - (im*d*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2)]
    @test_int [cos(a + b*x)*csc(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(cot(a + b*x)/(c + d*x), x)]
    @test_int [cos(a + b*x)*csc(a + b*x)/(c + d*x)^2, x, 0, Unintegrable(cot(a + b*x)/(c + d*x)^2, x)]


    @test_int [cos(a + b*x)*csc(a + b*x)^2*(c + d*x)^m, x, 0, CannotIntegrate((c + d*x)^m*cot(a + b*x)*csc(a + b*x), x)]

    @test_int [cos(a + b*x)*csc(a + b*x)^2*(c + d*x)^4, x, 10, -((8*d*(c + d*x)^3*atanh(ℯ^(im*(a + b*x))))/b^2) - ((c + d*x)^4*csc(a + b*x))/b + (12*im*d^2*(c + d*x)^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 - (12*im*d^2*(c + d*x)^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^3 - (24*d^3*(c + d*x)*PolyLog(3, -ℯ^(im*(a + b*x))))/b^4 + (24*d^3*(c + d*x)*PolyLog(3, ℯ^(im*(a + b*x))))/b^4 - (24*im*d^4*PolyLog(4, -ℯ^(im*(a + b*x))))/b^5 + (24*im*d^4*PolyLog(4, ℯ^(im*(a + b*x))))/b^5]
    @test_int [cos(a + b*x)*csc(a + b*x)^2*(c + d*x)^3, x, 8, -((6*d*(c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b^2) - ((c + d*x)^3*csc(a + b*x))/b + (6*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 - (6*im*d^2*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^3 - (6*d^3*PolyLog(3, -ℯ^(im*(a + b*x))))/b^4 + (6*d^3*PolyLog(3, ℯ^(im*(a + b*x))))/b^4]
    @test_int [cos(a + b*x)*csc(a + b*x)^2*(c + d*x)^2, x, 6, -((4*d*(c + d*x)*atanh(ℯ^(im*(a + b*x))))/b^2) - ((c + d*x)^2*csc(a + b*x))/b + (2*im*d^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 - (2*im*d^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^3]
    @test_int [cos(a + b*x)*csc(a + b*x)^2*(c + d*x)^1, x, 2, -((d*atanh(cos(a + b*x)))/b^2) - ((c + d*x)*csc(a + b*x))/b]
    @test_int [cos(a + b*x)*csc(a + b*x)^2/(c + d*x)^1, x, 0, CannotIntegrate((cot(a + b*x)*csc(a + b*x))/(c + d*x), x)]
    @test_int [cos(a + b*x)*csc(a + b*x)^2/(c + d*x)^2, x, 0, CannotIntegrate((cot(a + b*x)*csc(a + b*x))/(c + d*x)^2, x)]


    @test_int [cos(a + b*x)*csc(a + b*x)^3*(c + d*x)^m, x, 0, CannotIntegrate((c + d*x)^m*cot(a + b*x)*csc(a + b*x)^2, x)]

    @test_int [cos(a + b*x)*csc(a + b*x)^3*(c + d*x)^4, x, 7, -((2*im*d*(c + d*x)^3)/b^2) - (2*d*(c + d*x)^3*cot(a + b*x))/b^2 - ((c + d*x)^4*csc(a + b*x)^2)/(2*b) + (6*d^2*(c + d*x)^2*log(1 - ℯ^(2*im*(a + b*x))))/b^3 - (6*im*d^3*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^4 + (3*d^4*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^5]
    @test_int [cos(a + b*x)*csc(a + b*x)^3*(c + d*x)^3, x, 6, -((3*im*d*(c + d*x)^2)/(2*b^2)) - (3*d*(c + d*x)^2*cot(a + b*x))/(2*b^2) - ((c + d*x)^3*csc(a + b*x)^2)/(2*b) + (3*d^2*(c + d*x)*log(1 - ℯ^(2*im*(a + b*x))))/b^3 - (3*im*d^3*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^4)]
    @test_int [cos(a + b*x)*csc(a + b*x)^3*(c + d*x)^2, x, 3, -((d*(c + d*x)*cot(a + b*x))/b^2) - ((c + d*x)^2*csc(a + b*x)^2)/(2*b) + (d^2*log(sin(a + b*x)))/b^3]
    @test_int [cos(a + b*x)*csc(a + b*x)^3*(c + d*x)^1, x, 3, -((d*cot(a + b*x))/(2*b^2)) - ((c + d*x)*csc(a + b*x)^2)/(2*b)]
    @test_int [cos(a + b*x)*csc(a + b*x)^3/(c + d*x)^1, x, 0, CannotIntegrate((cot(a + b*x)*csc(a + b*x)^2)/(c + d*x), x)]
    @test_int [cos(a + b*x)*csc(a + b*x)^3/(c + d*x)^2, x, 0, CannotIntegrate((cot(a + b*x)*csc(a + b*x)^2)/(c + d*x)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*cos(a+b*x)*sin(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^(5/2), x, 10, (15*d^2*sqrt(c + d*x)*cos(2*a + 2*b*x))/(64*b^3) - ((c + d*x)^(5/2)*cos(2*a + 2*b*x))/(4*b) - (15*d^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(128*b^(7/2)) + (15*d^(5/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(128*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(2*a + 2*b*x))/(16*b^2)]
    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^(3/2), x, 9, -(((c + d*x)^(3/2)*cos(2*a + 2*b*x))/(4*b)) - (3*d^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(32*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(32*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(2*a + 2*b*x))/(16*b^2)]
    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^(1/2), x, 8, -((sqrt(c + d*x)*cos(2*a + 2*b*x))/(4*b)) + (sqrt(d)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(8*b^(3/2)) - (sqrt(d)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(8*b^(3/2))]
    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^(1/2), x, 8, -((sqrt(c + d*x)*cos(2*a + 2*b*x))/(4*b)) + (sqrt(d)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(8*b^(3/2)) - (sqrt(d)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(8*b^(3/2))]
    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^(3/2), x, 9, -(((c + d*x)^(3/2)*cos(2*a + 2*b*x))/(4*b)) - (3*d^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(32*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(32*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(2*a + 2*b*x))/(16*b^2)]
    @test_int [cos(a + b*x)*sin(a + b*x)*(c + d*x)^(5/2), x, 10, (15*d^2*sqrt(c + d*x)*cos(2*a + 2*b*x))/(64*b^3) - ((c + d*x)^(5/2)*cos(2*a + 2*b*x))/(4*b) - (15*d^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(128*b^(7/2)) + (15*d^(5/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(128*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(2*a + 2*b*x))/(16*b^2)]


    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^(5/2), x, 18, (5*d*(c + d*x)^(3/2)*cos(a + b*x))/(8*b^2) - (5*d*(c + d*x)^(3/2)*cos(3*a + 3*b*x))/(72*b^2) + (15*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(16*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(144*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(144*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(16*b^(7/2)) - (15*d^2*sqrt(c + d*x)*sin(a + b*x))/(16*b^3) + ((c + d*x)^(5/2)*sin(a + b*x))/(4*b) + (5*d^2*sqrt(c + d*x)*sin(3*a + 3*b*x))/(144*b^3) - ((c + d*x)^(5/2)*sin(3*a + 3*b*x))/(12*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^(3/2), x, 16, (3*d*sqrt(c + d*x)*cos(a + b*x))/(8*b^2) - (d*sqrt(c + d*x)*cos(3*a + 3*b*x))/(24*b^2) - (3*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(8*b^(5/2)) + (d^(3/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(24*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(24*b^(5/2)) + (3*d^(3/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(8*b^(5/2)) + ((c + d*x)^(3/2)*sin(a + b*x))/(4*b) - ((c + d*x)^(3/2)*sin(3*a + 3*b*x))/(12*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^(1/2), x, 14, -((sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4*b^(3/2))) + (sqrt(d)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(12*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(12*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(4*b^(3/2)) + (sqrt(c + d*x)*sin(a + b*x))/(4*b) - (sqrt(c + d*x)*sin(3*a + 3*b*x))/(12*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^(1/2), x, 14, -((sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4*b^(3/2))) + (sqrt(d)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(12*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(12*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(4*b^(3/2)) + (sqrt(c + d*x)*sin(a + b*x))/(4*b) - (sqrt(c + d*x)*sin(3*a + 3*b*x))/(12*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^(3/2), x, 16, (3*d*sqrt(c + d*x)*cos(a + b*x))/(8*b^2) - (d*sqrt(c + d*x)*cos(3*a + 3*b*x))/(24*b^2) - (3*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(8*b^(5/2)) + (d^(3/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(24*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(24*b^(5/2)) + (3*d^(3/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(8*b^(5/2)) + ((c + d*x)^(3/2)*sin(a + b*x))/(4*b) - ((c + d*x)^(3/2)*sin(3*a + 3*b*x))/(12*b)]
    @test_int [cos(a + b*x)*sin(a + b*x)^2*(c + d*x)^(5/2), x, 18, (5*d*(c + d*x)^(3/2)*cos(a + b*x))/(8*b^2) - (5*d*(c + d*x)^(3/2)*cos(3*a + 3*b*x))/(72*b^2) + (15*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(16*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(144*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(144*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(16*b^(7/2)) - (15*d^2*sqrt(c + d*x)*sin(a + b*x))/(16*b^3) + ((c + d*x)^(5/2)*sin(a + b*x))/(4*b) + (5*d^2*sqrt(c + d*x)*sin(3*a + 3*b*x))/(144*b^3) - ((c + d*x)^(5/2)*sin(3*a + 3*b*x))/(12*b)]


    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^(5/2), x, 18, (15*d^2*sqrt(c + d*x)*cos(2*a + 2*b*x))/(128*b^3) - ((c + d*x)^(5/2)*cos(2*a + 2*b*x))/(8*b) - (15*d^2*sqrt(c + d*x)*cos(4*a + 4*b*x))/(2048*b^3) + ((c + d*x)^(5/2)*cos(4*a + 4*b*x))/(32*b) + (15*d^(5/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4096*b^(7/2)) - (15*d^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(256*b^(7/2)) - (15*d^(5/2)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(4096*b^(7/2)) + (15*d^(5/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(256*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(2*a + 2*b*x))/(32*b^2) - (5*d*(c + d*x)^(3/2)*sin(4*a + 4*b*x))/(256*b^2)]
    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^(3/2), x, 16, -(((c + d*x)^(3/2)*cos(2*a + 2*b*x))/(8*b)) + ((c + d*x)^(3/2)*cos(4*a + 4*b*x))/(32*b) + (3*d^(3/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(64*b^(5/2)) + (3*d^(3/2)*sqrt(pi/2)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(64*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(2*a + 2*b*x))/(32*b^2) - (3*d*sqrt(c + d*x)*sin(4*a + 4*b*x))/(256*b^2)]
    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^(1/2), x, 14, -((sqrt(c + d*x)*cos(2*a + 2*b*x))/(8*b)) + (sqrt(c + d*x)*cos(4*a + 4*b*x))/(32*b) - (sqrt(d)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(64*b^(3/2)) + (sqrt(d)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(16*b^(3/2)) + (sqrt(d)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(64*b^(3/2)) - (sqrt(d)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(16*b^(3/2))]
    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^(1/2), x, 14, -((sqrt(c + d*x)*cos(2*a + 2*b*x))/(8*b)) + (sqrt(c + d*x)*cos(4*a + 4*b*x))/(32*b) - (sqrt(d)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(64*b^(3/2)) + (sqrt(d)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(16*b^(3/2)) + (sqrt(d)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(64*b^(3/2)) - (sqrt(d)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(16*b^(3/2))]
    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^(3/2), x, 16, -(((c + d*x)^(3/2)*cos(2*a + 2*b*x))/(8*b)) + ((c + d*x)^(3/2)*cos(4*a + 4*b*x))/(32*b) + (3*d^(3/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(64*b^(5/2)) + (3*d^(3/2)*sqrt(pi/2)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(64*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(2*a + 2*b*x))/(32*b^2) - (3*d*sqrt(c + d*x)*sin(4*a + 4*b*x))/(256*b^2)]
    @test_int [cos(a + b*x)*sin(a + b*x)^3*(c + d*x)^(5/2), x, 18, (15*d^2*sqrt(c + d*x)*cos(2*a + 2*b*x))/(128*b^3) - ((c + d*x)^(5/2)*cos(2*a + 2*b*x))/(8*b) - (15*d^2*sqrt(c + d*x)*cos(4*a + 4*b*x))/(2048*b^3) + ((c + d*x)^(5/2)*cos(4*a + 4*b*x))/(32*b) + (15*d^(5/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4096*b^(7/2)) - (15*d^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(256*b^(7/2)) - (15*d^(5/2)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(4096*b^(7/2)) + (15*d^(5/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(256*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(2*a + 2*b*x))/(32*b^2) - (5*d*(c + d*x)^(3/2)*sin(4*a + 4*b*x))/(256*b^2)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^2*sin(a+b*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^2*sin(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(c + d*x)^m*cos(a + b*x)^2*sin(a + b*x), x, 8, -(ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-im)*b*(c + d*x))/d))/(8*b*(((-im)*b*(c + d*x))/d)^m) - ((c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(8*b*ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m) - (3^(-1 - m)*ℯ^((3*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-3*im)*b*(c + d*x))/d))/(8*b*(((-im)*b*(c + d*x))/d)^m) - (3^(-1 - m)*(c + d*x)^m*Gamma(1 + m, ((3*im)*b*(c + d*x))/d))/(8*b*ℯ^((3*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m)]

    @test_int [(c + d*x)^4*cos(a + b*x)^2*sin(a + b*x), x, 9, (-160*d^4*cos(a + b*x))/(27*b^5) + (8*d^2*(c + d*x)^2*cos(a + b*x))/(3*b^3) - (8*d^4*cos(a + b*x)^3)/(81*b^5) + (4*d^2*(c + d*x)^2*cos(a + b*x)^3)/(9*b^3) - ((c + d*x)^4*cos(a + b*x)^3)/(3*b) - (160*d^3*(c + d*x)*sin(a + b*x))/(27*b^4) + (8*d*(c + d*x)^3*sin(a + b*x))/(9*b^2) - (8*d^3*(c + d*x)*cos(a + b*x)^2*sin(a + b*x))/(27*b^4) + (4*d*(c + d*x)^3*cos(a + b*x)^2*sin(a + b*x))/(9*b^2)]
    @test_int [(c + d*x)^3*cos(a + b*x)^2*sin(a + b*x), x, 7, (4*d^2*(c + d*x)*cos(a + b*x))/(3*b^3) + (2*d^2*(c + d*x)*cos(a + b*x)^3)/(9*b^3) - ((c + d*x)^3*cos(a + b*x)^3)/(3*b) - (14*d^3*sin(a + b*x))/(9*b^4) + (2*d*(c + d*x)^2*sin(a + b*x))/(3*b^2) + (d*(c + d*x)^2*cos(a + b*x)^2*sin(a + b*x))/(3*b^2) + (2*d^3*sin(a + b*x)^3)/(27*b^4)]
    @test_int [(c + d*x)^2*cos(a + b*x)^2*sin(a + b*x), x, 4, (4*d^2*cos(a + b*x))/(9*b^3) + (2*d^2*cos(a + b*x)^3)/(27*b^3) - ((c + d*x)^2*cos(a + b*x)^3)/(3*b) + (4*d*(c + d*x)*sin(a + b*x))/(9*b^2) + (2*d*(c + d*x)*cos(a + b*x)^2*sin(a + b*x))/(9*b^2)]
    @test_int [(c + d*x)^1*cos(a + b*x)^2*sin(a + b*x), x, 3, -((c + d*x)*cos(a + b*x)^3)/(3*b) + (d*sin(a + b*x))/(3*b^2) - (d*sin(a + b*x)^3)/(9*b^2)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x))/(c + d*x)^1, x, 8, (CosIntegral((3*b*c)/d + 3*b*x)*sin(3*a - (3*b*c)/d))/(4*d) + (CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(4*d) + (cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(4*d) + (cos(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(4*d)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x))/(c + d*x)^2, x, 10, (b*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(4*d^2) + (3*b*cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(4*d^2) - sin(a + b*x)/(4*d*(c + d*x)) - sin(3*a + 3*b*x)/(4*d*(c + d*x)) - (b*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(4*d^2) - (3*b*sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(4*d^2)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x))/(c + d*x)^3, x, 12, -(b*cos(a + b*x))/(8*d^2*(c + d*x)) - (3*b*cos(3*a + 3*b*x))/(8*d^2*(c + d*x)) - (9*b^2*CosIntegral((3*b*c)/d + 3*b*x)*sin(3*a - (3*b*c)/d))/(8*d^3) - (b^2*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(8*d^3) - sin(a + b*x)/(8*d*(c + d*x)^2) - sin(3*a + 3*b*x)/(8*d*(c + d*x)^2) - (b^2*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(8*d^3) - (9*b^2*cos(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(8*d^3)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x))/(c + d*x)^4, x, 14, -(b*cos(a + b*x))/(24*d^2*(c + d*x)^2) - (b*cos(3*a + 3*b*x))/(8*d^2*(c + d*x)^2) - (b^3*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(24*d^4) - (9*b^3*cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(8*d^4) - sin(a + b*x)/(12*d*(c + d*x)^3) + (b^2*sin(a + b*x))/(24*d^3*(c + d*x)) - sin(3*a + 3*b*x)/(12*d*(c + d*x)^3) + (3*b^2*sin(3*a + 3*b*x))/(8*d^3*(c + d*x)) + (b^3*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(24*d^4) + (9*b^3*sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(8*d^4)]


    @test_int [(c + d*x)^m*cos(a + b*x)^2*sin(a + b*x)^2, x, 5, (c + d*x)^(1 + m)/(8*d*(1 + m)) + (im*ℯ^((4*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-4*im)*b*(c + d*x))/d))/(2^(2*(3 + m))*b*(((-im)*b*(c + d*x))/d)^m) - (im*(c + d*x)^m*Gamma(1 + m, ((4*im)*b*(c + d*x))/d))/(2^(2*(3 + m))*b*ℯ^((4*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m)]

    @test_int [(c + d*x)^4*cos(a + b*x)^2*sin(a + b*x)^2, x, 7, (c + d*x)^5/(40*d) + (3*d^3*(c + d*x)*cos(4*a + 4*b*x))/(256*b^4) - (d*(c + d*x)^3*cos(4*a + 4*b*x))/(32*b^2) - (3*d^4*sin(4*a + 4*b*x))/(1024*b^5) + (3*d^2*(c + d*x)^2*sin(4*a + 4*b*x))/(128*b^3) - ((c + d*x)^4*sin(4*a + 4*b*x))/(32*b)]
    @test_int [(c + d*x)^3*cos(a + b*x)^2*sin(a + b*x)^2, x, 6, (c + d*x)^4/(32*d) + (3*d^3*cos(4*a + 4*b*x))/(1024*b^4) - (3*d*(c + d*x)^2*cos(4*a + 4*b*x))/(128*b^2) + (3*d^2*(c + d*x)*sin(4*a + 4*b*x))/(256*b^3) - ((c + d*x)^3*sin(4*a + 4*b*x))/(32*b)]
    @test_int [(c + d*x)^2*cos(a + b*x)^2*sin(a + b*x)^2, x, 5, (c + d*x)^3/(24*d) - (d*(c + d*x)*cos(4*a + 4*b*x))/(64*b^2) + (d^2*sin(4*a + 4*b*x))/(256*b^3) - ((c + d*x)^2*sin(4*a + 4*b*x))/(32*b)]
    @test_int [(c + d*x)^1*cos(a + b*x)^2*sin(a + b*x)^2, x, 4, (c + d*x)^2/(16*d) - (d*cos(4*a + 4*b*x))/(128*b^2) - ((c + d*x)*sin(4*a + 4*b*x))/(32*b)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x)^2)/(c + d*x)^1, x, 5, -(cos(4*a - (4*b*c)/d)*CosIntegral((4*b*c)/d + 4*b*x))/(8*d) + log(c + d*x)/(8*d) + (sin(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/(8*d)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x)^2)/(c + d*x)^2, x, 6, -1/(8*d*(c + d*x)) + cos(4*a + 4*b*x)/(8*d*(c + d*x)) + (b*CosIntegral((4*b*c)/d + 4*b*x)*sin(4*a - (4*b*c)/d))/(2*d^2) + (b*cos(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/(2*d^2)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x)^2)/(c + d*x)^3, x, 7, -1/(16*d*(c + d*x)^2) + cos(4*a + 4*b*x)/(16*d*(c + d*x)^2) + (b^2*cos(4*a - (4*b*c)/d)*CosIntegral((4*b*c)/d + 4*b*x))/d^3 - (b*sin(4*a + 4*b*x))/(4*d^2*(c + d*x)) - (b^2*sin(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/d^3]
    @test_int [(cos(a + b*x)^2*sin(a + b*x)^2)/(c + d*x)^4, x, 8, -1/(24*d*(c + d*x)^3) + cos(4*a + 4*b*x)/(24*d*(c + d*x)^3) - (b^2*cos(4*a + 4*b*x))/(3*d^3*(c + d*x)) - (4*b^3*CosIntegral((4*b*c)/d + 4*b*x)*sin(4*a - (4*b*c)/d))/(3*d^4) - (b*sin(4*a + 4*b*x))/(12*d^2*(c + d*x)^2) - (4*b^3*cos(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/(3*d^4)]


    @test_int [(c + d*x)^m*cos(a + b*x)^2*sin(a + b*x)^3, x, 11, -(ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-im)*b*(c + d*x))/d))/(16*b*(((-im)*b*(c + d*x))/d)^m) - ((c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(16*b*ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m) - (3^(-1 - m)*ℯ^((3*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-3*im)*b*(c + d*x))/d))/(32*b*(((-im)*b*(c + d*x))/d)^m) - (3^(-1 - m)*(c + d*x)^m*Gamma(1 + m, ((3*im)*b*(c + d*x))/d))/(32*b*ℯ^((3*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m) + (5^(-1 - m)*ℯ^((5*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-5*im)*b*(c + d*x))/d))/(32*b*(((-im)*b*(c + d*x))/d)^m) + (5^(-1 - m)*(c + d*x)^m*Gamma(1 + m, ((5*im)*b*(c + d*x))/d))/(32*b*ℯ^((5*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m)]

    @test_int [(c + d*x)^4*cos(a + b*x)^2*sin(a + b*x)^3, x, 17, (-3*d^4*cos(a + b*x))/b^5 + (3*d^2*(c + d*x)^2*cos(a + b*x))/(2*b^3) - ((c + d*x)^4*cos(a + b*x))/(8*b) - (d^4*cos(3*a + 3*b*x))/(162*b^5) + (d^2*(c + d*x)^2*cos(3*a + 3*b*x))/(36*b^3) - ((c + d*x)^4*cos(3*a + 3*b*x))/(48*b) + (3*d^4*cos(5*a + 5*b*x))/(6250*b^5) - (3*d^2*(c + d*x)^2*cos(5*a + 5*b*x))/(500*b^3) + ((c + d*x)^4*cos(5*a + 5*b*x))/(80*b) - (3*d^3*(c + d*x)*sin(a + b*x))/b^4 + (d*(c + d*x)^3*sin(a + b*x))/(2*b^2) - (d^3*(c + d*x)*sin(3*a + 3*b*x))/(54*b^4) + (d*(c + d*x)^3*sin(3*a + 3*b*x))/(36*b^2) + (3*d^3*(c + d*x)*sin(5*a + 5*b*x))/(1250*b^4) - (d*(c + d*x)^3*sin(5*a + 5*b*x))/(100*b^2)]
    @test_int [(c + d*x)^3*cos(a + b*x)^2*sin(a + b*x)^3, x, 14, (3*d^2*(c + d*x)*cos(a + b*x))/(4*b^3) - ((c + d*x)^3*cos(a + b*x))/(8*b) + (d^2*(c + d*x)*cos(3*a + 3*b*x))/(72*b^3) - ((c + d*x)^3*cos(3*a + 3*b*x))/(48*b) - (3*d^2*(c + d*x)*cos(5*a + 5*b*x))/(1000*b^3) + ((c + d*x)^3*cos(5*a + 5*b*x))/(80*b) - (3*d^3*sin(a + b*x))/(4*b^4) + (3*d*(c + d*x)^2*sin(a + b*x))/(8*b^2) - (d^3*sin(3*a + 3*b*x))/(216*b^4) + (d*(c + d*x)^2*sin(3*a + 3*b*x))/(48*b^2) + (3*d^3*sin(5*a + 5*b*x))/(5000*b^4) - (3*d*(c + d*x)^2*sin(5*a + 5*b*x))/(400*b^2)]
    @test_int [(c + d*x)^2*cos(a + b*x)^2*sin(a + b*x)^3, x, 11, (d^2*cos(a + b*x))/(4*b^3) - ((c + d*x)^2*cos(a + b*x))/(8*b) + (d^2*cos(3*a + 3*b*x))/(216*b^3) - ((c + d*x)^2*cos(3*a + 3*b*x))/(48*b) - (d^2*cos(5*a + 5*b*x))/(1000*b^3) + ((c + d*x)^2*cos(5*a + 5*b*x))/(80*b) + (d*(c + d*x)*sin(a + b*x))/(4*b^2) + (d*(c + d*x)*sin(3*a + 3*b*x))/(72*b^2) - (d*(c + d*x)*sin(5*a + 5*b*x))/(200*b^2)]
    @test_int [(c + d*x)^1*cos(a + b*x)^2*sin(a + b*x)^3, x, 8, -((c + d*x)*cos(a + b*x))/(8*b) - ((c + d*x)*cos(3*a + 3*b*x))/(48*b) + ((c + d*x)*cos(5*a + 5*b*x))/(80*b) + (d*sin(a + b*x))/(8*b^2) + (d*sin(3*a + 3*b*x))/(144*b^2) - (d*sin(5*a + 5*b*x))/(400*b^2)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x)^3)/(c + d*x)^1, x, 11, -(CosIntegral((5*b*c)/d + 5*b*x)*sin(5*a - (5*b*c)/d))/(16*d) + (CosIntegral((3*b*c)/d + 3*b*x)*sin(3*a - (3*b*c)/d))/(16*d) + (CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(8*d) + (cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(8*d) + (cos(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(16*d) - (cos(5*a - (5*b*c)/d)*SinIntegral((5*b*c)/d + 5*b*x))/(16*d)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x)^3)/(c + d*x)^2, x, 14, (b*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(8*d^2) + (3*b*cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(16*d^2) - (5*b*cos(5*a - (5*b*c)/d)*CosIntegral((5*b*c)/d + 5*b*x))/(16*d^2) - sin(a + b*x)/(8*d*(c + d*x)) - sin(3*a + 3*b*x)/(16*d*(c + d*x)) + sin(5*a + 5*b*x)/(16*d*(c + d*x)) - (b*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(8*d^2) - (3*b*sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(16*d^2) + (5*b*sin(5*a - (5*b*c)/d)*SinIntegral((5*b*c)/d + 5*b*x))/(16*d^2)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x)^3)/(c + d*x)^3, x, 17, -(b*cos(a + b*x))/(16*d^2*(c + d*x)) - (3*b*cos(3*a + 3*b*x))/(32*d^2*(c + d*x)) + (5*b*cos(5*a + 5*b*x))/(32*d^2*(c + d*x)) + (25*b^2*CosIntegral((5*b*c)/d + 5*b*x)*sin(5*a - (5*b*c)/d))/(32*d^3) - (9*b^2*CosIntegral((3*b*c)/d + 3*b*x)*sin(3*a - (3*b*c)/d))/(32*d^3) - (b^2*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(16*d^3) - sin(a + b*x)/(16*d*(c + d*x)^2) - sin(3*a + 3*b*x)/(32*d*(c + d*x)^2) + sin(5*a + 5*b*x)/(32*d*(c + d*x)^2) - (b^2*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(16*d^3) - (9*b^2*cos(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(32*d^3) + (25*b^2*cos(5*a - (5*b*c)/d)*SinIntegral((5*b*c)/d + 5*b*x))/(32*d^3)]
    @test_int [(cos(a + b*x)^2*sin(a + b*x)^3)/(c + d*x)^4, x, 20, -(b*cos(a + b*x))/(48*d^2*(c + d*x)^2) - (b*cos(3*a + 3*b*x))/(32*d^2*(c + d*x)^2) + (5*b*cos(5*a + 5*b*x))/(96*d^2*(c + d*x)^2) - (b^3*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(48*d^4) - (9*b^3*cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(32*d^4) + (125*b^3*cos(5*a - (5*b*c)/d)*CosIntegral((5*b*c)/d + 5*b*x))/(96*d^4) - sin(a + b*x)/(24*d*(c + d*x)^3) + (b^2*sin(a + b*x))/(48*d^3*(c + d*x)) - sin(3*a + 3*b*x)/(48*d*(c + d*x)^3) + (3*b^2*sin(3*a + 3*b*x))/(32*d^3*(c + d*x)) + sin(5*a + 5*b*x)/(48*d*(c + d*x)^3) - (25*b^2*sin(5*a + 5*b*x))/(96*d^3*(c + d*x)) + (b^3*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(48*d^4) + (9*b^3*sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(32*d^4) - (125*b^3*sin(5*a - (5*b*c)/d)*SinIntegral((5*b*c)/d + 5*b*x))/(96*d^4)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [(c + d*x)^m*cos(a + b*x)*cot(a + b*x), x, 4, (ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*(2*b)) + ((c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*(2*b)) + Unintegrable((c + d*x)^m*csc(a + b*x), x)]

    @test_int [(c + d*x)^4*cos(a + b*x)*cot(a + b*x), x, 17, -((2*(c + d*x)^4*atanh(ℯ^(im*(a + b*x))))/b) + (24*d^4*cos(a + b*x))/b^5 - (12*d^2*(c + d*x)^2*cos(a + b*x))/b^3 + ((c + d*x)^4*cos(a + b*x))/b + (4*im*d*(c + d*x)^3*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (4*im*d*(c + d*x)^3*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (12*d^2*(c + d*x)^2*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (12*d^2*(c + d*x)^2*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 - (24*im*d^3*(c + d*x)*PolyLog(4, -ℯ^(im*(a + b*x))))/b^4 + (24*im*d^3*(c + d*x)*PolyLog(4, ℯ^(im*(a + b*x))))/b^4 + (24*d^4*PolyLog(5, -ℯ^(im*(a + b*x))))/b^5 - (24*d^4*PolyLog(5, ℯ^(im*(a + b*x))))/b^5 + (24*d^3*(c + d*x)*sin(a + b*x))/b^4 - (4*d*(c + d*x)^3*sin(a + b*x))/b^2]
    @test_int [(c + d*x)^3*cos(a + b*x)*cot(a + b*x), x, 14, -((2*(c + d*x)^3*atanh(ℯ^(im*(a + b*x))))/b) - (6*d^2*(c + d*x)*cos(a + b*x))/b^3 + ((c + d*x)^3*cos(a + b*x))/b + (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (6*d^2*(c + d*x)*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (6*d^2*(c + d*x)*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 - (6*im*d^3*PolyLog(4, -ℯ^(im*(a + b*x))))/b^4 + (6*im*d^3*PolyLog(4, ℯ^(im*(a + b*x))))/b^4 + (6*d^3*sin(a + b*x))/b^4 - (3*d*(c + d*x)^2*sin(a + b*x))/b^2]
    @test_int [(c + d*x)^2*cos(a + b*x)*cot(a + b*x), x, 11, -((2*(c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b) - (2*d^2*cos(a + b*x))/b^3 + ((c + d*x)^2*cos(a + b*x))/b + (2*im*d*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (2*im*d*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (2*d^2*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (2*d^2*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 - (2*d*(c + d*x)*sin(a + b*x))/b^2]
    @test_int [(c + d*x)^1*cos(a + b*x)*cot(a + b*x), x, 8, -((2*(c + d*x)*atanh(ℯ^(im*(a + b*x))))/b) + ((c + d*x)*cos(a + b*x))/b + (im*d*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (im*d*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (d*sin(a + b*x))/b^2]
    @test_int [(cos(a + b*x)*cot(a + b*x))/(c + d*x)^1, x, 4, Unintegrable(csc(a + b*x)/(c + d*x), x) - (CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/d - (cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d]
    @test_int [(cos(a + b*x)*cot(a + b*x))/(c + d*x)^2, x, 5, -((b*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/d^2) + Unintegrable(csc(a + b*x)/(c + d*x)^2, x) + sin(a + b*x)/(d*(c + d*x)) + (b*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d^2]


    @test_int [(c + d*x)^m*cot(a + b*x)^2, x, 0, Unintegrable((c + d*x)^m*cot(a + b*x)^2, x)]

    @test_int [(c + d*x)^4*cot(a + b*x)^2, x, 8, -((im*(c + d*x)^4)/b) - (c + d*x)^5/(5*d) - ((c + d*x)^4*cot(a + b*x))/b + (4*d*(c + d*x)^3*log(1 - ℯ^(2*im*(a + b*x))))/b^2 - (6*im*d^2*(c + d*x)^2*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^3 + (6*d^3*(c + d*x)*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^4 + (3*im*d^4*PolyLog(4, ℯ^(2*im*(a + b*x))))/b^5]
    @test_int [(c + d*x)^3*cot(a + b*x)^2, x, 7, -((im*(c + d*x)^3)/b) - (c + d*x)^4/(4*d) - ((c + d*x)^3*cot(a + b*x))/b + (3*d*(c + d*x)^2*log(1 - ℯ^(2*im*(a + b*x))))/b^2 - (3*im*d^2*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^3 + (3*d^3*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^4)]
    @test_int [(c + d*x)^2*cot(a + b*x)^2, x, 6, -((im*(c + d*x)^2)/b) - (c + d*x)^3/(3*d) - ((c + d*x)^2*cot(a + b*x))/b + (2*d*(c + d*x)*log(1 - ℯ^(2*im*(a + b*x))))/b^2 - (im*d^2*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^3]
    @test_int [(c + d*x)^1*cot(a + b*x)^2, x, 3, -(c*x) - (d*x^2)/2 - ((c + d*x)*cot(a + b*x))/b + (d*log(sin(a + b*x)))/b^2]
    @test_int [cot(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(cot(a + b*x)^2/(c + d*x), x)]
    @test_int [cot(a + b*x)^2/(c + d*x)^2, x, 0, Unintegrable(cot(a + b*x)^2/(c + d*x)^2, x)]


    @test_int [(c + d*x)^m*cot(a + b*x)^2*csc(a + b*x), x, 1, -Unintegrable((c + d*x)^m*csc(a + b*x), x) + Unintegrable((c + d*x)^m*csc(a + b*x)^3, x)]

    @test_int [(c + d*x)^4*cot(a + b*x)^2*csc(a + b*x), x, 31, -((12*d^2*(c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b^3) + ((c + d*x)^4*atanh(ℯ^(im*(a + b*x))))/b - (2*d*(c + d*x)^3*csc(a + b*x))/b^2 - ((c + d*x)^4*cot(a + b*x)*csc(a + b*x))/(2*b) + (12*im*d^3*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^4 - (2*im*d*(c + d*x)^3*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (12*im*d^3*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^4 + (2*im*d*(c + d*x)^3*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (12*d^4*PolyLog(3, -ℯ^(im*(a + b*x))))/b^5 + (6*d^2*(c + d*x)^2*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (12*d^4*PolyLog(3, ℯ^(im*(a + b*x))))/b^5 - (6*d^2*(c + d*x)^2*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 + (12*im*d^3*(c + d*x)*PolyLog(4, -ℯ^(im*(a + b*x))))/b^4 - (12*im*d^3*(c + d*x)*PolyLog(4, ℯ^(im*(a + b*x))))/b^4 - (12*d^4*PolyLog(5, -ℯ^(im*(a + b*x))))/b^5 + (12*d^4*PolyLog(5, ℯ^(im*(a + b*x))))/b^5]
    @test_int [(c + d*x)^3*cot(a + b*x)^2*csc(a + b*x), x, 25, -((6*d^2*(c + d*x)*atanh(ℯ^(im*(a + b*x))))/b^3) + ((c + d*x)^3*atanh(ℯ^(im*(a + b*x))))/b - (3*d*(c + d*x)^2*csc(a + b*x))/(2*b^2) - ((c + d*x)^3*cot(a + b*x)*csc(a + b*x))/(2*b) + (3*im*d^3*PolyLog(2, -ℯ^(im*(a + b*x))))/b^4 - (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(im*(a + b*x))))/(2*b^2) - (3*im*d^3*PolyLog(2, ℯ^(im*(a + b*x))))/b^4 + (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(im*(a + b*x))))/(2*b^2) + (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 - (3*d^2*(c + d*x)*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 + (3*im*d^3*PolyLog(4, -ℯ^(im*(a + b*x))))/b^4 - (3*im*d^3*PolyLog(4, ℯ^(im*(a + b*x))))/b^4]
    @test_int [(c + d*x)^2*cot(a + b*x)^2*csc(a + b*x), x, 17, ((c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b - (d^2*atanh(cos(a + b*x)))/b^3 - (d*(c + d*x)*csc(a + b*x))/b^2 - ((c + d*x)^2*cot(a + b*x)*csc(a + b*x))/(2*b) - (im*d*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 + (im*d*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 + (d^2*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 - (d^2*PolyLog(3, ℯ^(im*(a + b*x))))/b^3]
    @test_int [(c + d*x)^1*cot(a + b*x)^2*csc(a + b*x), x, 12, ((c + d*x)*atanh(ℯ^(im*(a + b*x))))/b - (d*csc(a + b*x))/(2*b^2) - ((c + d*x)*cot(a + b*x)*csc(a + b*x))/(2*b) - (im*d*PolyLog(2, -ℯ^(im*(a + b*x))))/(2*b^2) + (im*d*PolyLog(2, ℯ^(im*(a + b*x))))/(2*b^2)]
    @test_int [(cot(a + b*x)^2*csc(a + b*x))/(c + d*x)^1, x, 1, -Unintegrable(csc(a + b*x)/(c + d*x), x) + Unintegrable(csc(a + b*x)^3/(c + d*x), x)]
    @test_int [(cot(a + b*x)^2*csc(a + b*x))/(c + d*x)^2, x, 1, -Unintegrable(csc(a + b*x)/(c + d*x)^2, x) + Unintegrable(csc(a + b*x)^3/(c + d*x)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*cos(a+b*x)^2*sin(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^2*sin(a + b*x), x, 18, (15*d^2*sqrt(c + d*x)*cos(a + b*x))/(16*b^3) - ((c + d*x)^(5/2)*cos(a + b*x))/(4*b) + (5*d^2*sqrt(c + d*x)*cos(3*a + 3*b*x))/(144*b^3) - ((c + d*x)^(5/2)*cos(3*a + 3*b*x))/(12*b) - (15*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(16*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(144*b^(7/2)) + (5*d^(5/2)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(144*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(16*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(a + b*x))/(8*b^2) + (5*d*(c + d*x)^(3/2)*sin(3*a + 3*b*x))/(72*b^2)]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^2*sin(a + b*x), x, 16, -((c + d*x)^(3/2)*cos(a + b*x))/(4*b) - ((c + d*x)^(3/2)*cos(3*a + 3*b*x))/(12*b) - (3*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(8*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(24*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(24*b^(5/2)) - (3*d^(3/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(8*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(a + b*x))/(8*b^2) + (d*sqrt(c + d*x)*sin(3*a + 3*b*x))/(24*b^2)]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^2*sin(a + b*x), x, 14, -(sqrt(c + d*x)*cos(a + b*x))/(4*b) - (sqrt(c + d*x)*cos(3*a + 3*b*x))/(12*b) + (sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(12*b^(3/2)) - (sqrt(d)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(12*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(4*b^(3/2))]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^2*sin(a + b*x), x, 14, -(sqrt(c + d*x)*cos(a + b*x))/(4*b) - (sqrt(c + d*x)*cos(3*a + 3*b*x))/(12*b) + (sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(12*b^(3/2)) - (sqrt(d)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(12*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(4*b^(3/2))]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^2*sin(a + b*x), x, 16, -((c + d*x)^(3/2)*cos(a + b*x))/(4*b) - ((c + d*x)^(3/2)*cos(3*a + 3*b*x))/(12*b) - (3*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(8*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(24*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(24*b^(5/2)) - (3*d^(3/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(8*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(a + b*x))/(8*b^2) + (d*sqrt(c + d*x)*sin(3*a + 3*b*x))/(24*b^2)]
    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^2*sin(a + b*x), x, 18, (15*d^2*sqrt(c + d*x)*cos(a + b*x))/(16*b^3) - ((c + d*x)^(5/2)*cos(a + b*x))/(4*b) + (5*d^2*sqrt(c + d*x)*cos(3*a + 3*b*x))/(144*b^3) - ((c + d*x)^(5/2)*cos(3*a + 3*b*x))/(12*b) - (15*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(16*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(144*b^(7/2)) + (5*d^(5/2)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(144*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(16*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(a + b*x))/(8*b^2) + (5*d*(c + d*x)^(3/2)*sin(3*a + 3*b*x))/(72*b^2)]


    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^2*sin(a + b*x)^2, x, 10, (c + d*x)^(7/2)/(28*d) - (5*d*(c + d*x)^(3/2)*cos(4*a + 4*b*x))/(256*b^2) - (15*d^(5/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4096*b^(7/2)) - (15*d^(5/2)*sqrt(pi/2)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(4096*b^(7/2)) + (15*d^2*sqrt(c + d*x)*sin(4*a + 4*b*x))/(2048*b^3) - ((c + d*x)^(5/2)*sin(4*a + 4*b*x))/(32*b)]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^2*sin(a + b*x)^2, x, 9, (c + d*x)^(5/2)/(20*d) - (3*d*sqrt(c + d*x)*cos(4*a + 4*b*x))/(256*b^2) + (3*d^(3/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(512*b^(5/2)) - ((c + d*x)^(3/2)*sin(4*a + 4*b*x))/(32*b)]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^2*sin(a + b*x)^2, x, 8, (c + d*x)^(3/2)/(12*d) + (sqrt(d)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(64*b^(3/2)) + (sqrt(d)*sqrt(pi/2)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(64*b^(3/2)) - (sqrt(c + d*x)*sin(4*a + 4*b*x))/(32*b)]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^2*sin(a + b*x)^2, x, 8, (c + d*x)^(3/2)/(12*d) + (sqrt(d)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(64*b^(3/2)) + (sqrt(d)*sqrt(pi/2)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(64*b^(3/2)) - (sqrt(c + d*x)*sin(4*a + 4*b*x))/(32*b)]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^2*sin(a + b*x)^2, x, 9, (c + d*x)^(5/2)/(20*d) - (3*d*sqrt(c + d*x)*cos(4*a + 4*b*x))/(256*b^2) + (3*d^(3/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(512*b^(5/2)) - ((c + d*x)^(3/2)*sin(4*a + 4*b*x))/(32*b)]
    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^2*sin(a + b*x)^2, x, 10, (c + d*x)^(7/2)/(28*d) - (5*d*(c + d*x)^(3/2)*cos(4*a + 4*b*x))/(256*b^2) - (15*d^(5/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4096*b^(7/2)) - (15*d^(5/2)*sqrt(pi/2)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(4096*b^(7/2)) + (15*d^2*sqrt(c + d*x)*sin(4*a + 4*b*x))/(2048*b^3) - ((c + d*x)^(5/2)*sin(4*a + 4*b*x))/(32*b)]


    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^2*sin(a + b*x)^3, x, 26, (15*d^2*sqrt(c + d*x)*cos(a + b*x))/(32*b^3) - ((c + d*x)^(5/2)*cos(a + b*x))/(8*b) + (5*d^2*sqrt(c + d*x)*cos(3*a + 3*b*x))/(576*b^3) - ((c + d*x)^(5/2)*cos(3*a + 3*b*x))/(48*b) - (3*d^2*sqrt(c + d*x)*cos(5*a + 5*b*x))/(1600*b^3) + ((c + d*x)^(5/2)*cos(5*a + 5*b*x))/(80*b) - (15*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(32*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(576*b^(7/2)) + (3*d^(5/2)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(1600*b^(7/2)) - (3*d^(5/2)*sqrt(pi/10)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(1600*b^(7/2)) + (5*d^(5/2)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(576*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(32*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(a + b*x))/(16*b^2) + (5*d*(c + d*x)^(3/2)*sin(3*a + 3*b*x))/(288*b^2) - (d*(c + d*x)^(3/2)*sin(5*a + 5*b*x))/(160*b^2)]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^2*sin(a + b*x)^3, x, 23, -((c + d*x)^(3/2)*cos(a + b*x))/(8*b) - ((c + d*x)^(3/2)*cos(3*a + 3*b*x))/(48*b) + ((c + d*x)^(3/2)*cos(5*a + 5*b*x))/(80*b) - (3*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(16*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(96*b^(5/2)) + (3*d^(3/2)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(800*b^(5/2)) + (3*d^(3/2)*sqrt(pi/10)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(800*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(96*b^(5/2)) - (3*d^(3/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(16*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(a + b*x))/(16*b^2) + (d*sqrt(c + d*x)*sin(3*a + 3*b*x))/(96*b^2) - (3*d*sqrt(c + d*x)*sin(5*a + 5*b*x))/(800*b^2)]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^2*sin(a + b*x)^3, x, 20, -(sqrt(c + d*x)*cos(a + b*x))/(8*b) - (sqrt(c + d*x)*cos(3*a + 3*b*x))/(48*b) + (sqrt(c + d*x)*cos(5*a + 5*b*x))/(80*b) + (sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(8*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(48*b^(3/2)) - (sqrt(d)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(80*b^(3/2)) + (sqrt(d)*sqrt(pi/10)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(80*b^(3/2)) - (sqrt(d)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(48*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(8*b^(3/2))]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^2*sin(a + b*x)^3, x, 20, -(sqrt(c + d*x)*cos(a + b*x))/(8*b) - (sqrt(c + d*x)*cos(3*a + 3*b*x))/(48*b) + (sqrt(c + d*x)*cos(5*a + 5*b*x))/(80*b) + (sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(8*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(48*b^(3/2)) - (sqrt(d)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(80*b^(3/2)) + (sqrt(d)*sqrt(pi/10)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(80*b^(3/2)) - (sqrt(d)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(48*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(8*b^(3/2))]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^2*sin(a + b*x)^3, x, 23, -((c + d*x)^(3/2)*cos(a + b*x))/(8*b) - ((c + d*x)^(3/2)*cos(3*a + 3*b*x))/(48*b) + ((c + d*x)^(3/2)*cos(5*a + 5*b*x))/(80*b) - (3*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(16*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(96*b^(5/2)) + (3*d^(3/2)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(800*b^(5/2)) + (3*d^(3/2)*sqrt(pi/10)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(800*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(96*b^(5/2)) - (3*d^(3/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(16*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(a + b*x))/(16*b^2) + (d*sqrt(c + d*x)*sin(3*a + 3*b*x))/(96*b^2) - (3*d*sqrt(c + d*x)*sin(5*a + 5*b*x))/(800*b^2)]
    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^2*sin(a + b*x)^3, x, 26, (15*d^2*sqrt(c + d*x)*cos(a + b*x))/(32*b^3) - ((c + d*x)^(5/2)*cos(a + b*x))/(8*b) + (5*d^2*sqrt(c + d*x)*cos(3*a + 3*b*x))/(576*b^3) - ((c + d*x)^(5/2)*cos(3*a + 3*b*x))/(48*b) - (3*d^2*sqrt(c + d*x)*cos(5*a + 5*b*x))/(1600*b^3) + ((c + d*x)^(5/2)*cos(5*a + 5*b*x))/(80*b) - (15*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(32*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(576*b^(7/2)) + (3*d^(5/2)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(1600*b^(7/2)) - (3*d^(5/2)*sqrt(pi/10)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(1600*b^(7/2)) + (5*d^(5/2)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(576*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(32*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(a + b*x))/(16*b^2) + (5*d*(c + d*x)^(3/2)*sin(3*a + 3*b*x))/(288*b^2) - (d*(c + d*x)^(3/2)*sin(5*a + 5*b*x))/(160*b^2)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^3*sin(a+b*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^3*sin(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(c + d*x)^m*cos(a + b*x)^3*sin(a + b*x), x, 8, -((2^(-4 - m)*ℯ^((2*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-2*im)*b*(c + d*x))/d))/(b*(((-im)*b*(c + d*x))/d)^m)) - (2^(-4 - m)*(c + d*x)^m*Gamma(1 + m, ((2*im)*b*(c + d*x))/d))/(b*ℯ^((2*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m) - (ℯ^((4*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-4*im)*b*(c + d*x))/d))/(2^(2*(3 + m))*b*(((-im)*b*(c + d*x))/d)^m) - ((c + d*x)^m*Gamma(1 + m, ((4*im)*b*(c + d*x))/d))/(2^(2*(3 + m))*b*ℯ^((4*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m)]

    @test_int [(c + d*x)^4*cos(a + b*x)^3*sin(a + b*x), x, 9, (-45*c*d^3*x)/(64*b^3) - (45*d^4*x^2)/(128*b^3) + (3*(c + d*x)^4)/(32*b) - (45*d^4*cos(a + b*x)^2)/(128*b^5) + (9*d^2*(c + d*x)^2*cos(a + b*x)^2)/(16*b^3) - (3*d^4*cos(a + b*x)^4)/(128*b^5) + (3*d^2*(c + d*x)^2*cos(a + b*x)^4)/(16*b^3) - ((c + d*x)^4*cos(a + b*x)^4)/(4*b) - (45*d^3*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(64*b^4) + (3*d*(c + d*x)^3*cos(a + b*x)*sin(a + b*x))/(8*b^2) - (3*d^3*(c + d*x)*cos(a + b*x)^3*sin(a + b*x))/(32*b^4) + (d*(c + d*x)^3*cos(a + b*x)^3*sin(a + b*x))/(4*b^2)]
    @test_int [(c + d*x)^3*cos(a + b*x)^3*sin(a + b*x), x, 9, (-45*d^3*x)/(256*b^3) + (3*(c + d*x)^3)/(32*b) + (9*d^2*(c + d*x)*cos(a + b*x)^2)/(32*b^3) + (3*d^2*(c + d*x)*cos(a + b*x)^4)/(32*b^3) - ((c + d*x)^3*cos(a + b*x)^4)/(4*b) - (45*d^3*cos(a + b*x)*sin(a + b*x))/(256*b^4) + (9*d*(c + d*x)^2*cos(a + b*x)*sin(a + b*x))/(32*b^2) - (3*d^3*cos(a + b*x)^3*sin(a + b*x))/(128*b^4) + (3*d*(c + d*x)^2*cos(a + b*x)^3*sin(a + b*x))/(16*b^2)]
    @test_int [(c + d*x)^2*cos(a + b*x)^3*sin(a + b*x), x, 4, (3*c*d*x)/(16*b) + (3*d^2*x^2)/(32*b) + (3*d^2*cos(a + b*x)^2)/(32*b^3) + (d^2*cos(a + b*x)^4)/(32*b^3) - ((c + d*x)^2*cos(a + b*x)^4)/(4*b) + (3*d*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(16*b^2) + (d*(c + d*x)*cos(a + b*x)^3*sin(a + b*x))/(8*b^2)]
    @test_int [(c + d*x)^1*cos(a + b*x)^3*sin(a + b*x), x, 4, (3*d*x)/(32*b) - ((c + d*x)*cos(a + b*x)^4)/(4*b) + (3*d*cos(a + b*x)*sin(a + b*x))/(32*b^2) + (d*cos(a + b*x)^3*sin(a + b*x))/(16*b^2)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x))/(c + d*x)^1, x, 8, (CosIntegral((4*b*c)/d + 4*b*x)*sin(4*a - (4*b*c)/d))/(8*d) + (CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(4*d) + (cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(4*d) + (cos(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/(8*d)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x))/(c + d*x)^2, x, 10, (b*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/(2*d^2) + (b*cos(4*a - (4*b*c)/d)*CosIntegral((4*b*c)/d + 4*b*x))/(2*d^2) - sin(2*a + 2*b*x)/(4*d*(c + d*x)) - sin(4*a + 4*b*x)/(8*d*(c + d*x)) - (b*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(2*d^2) - (b*sin(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/(2*d^2)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x))/(c + d*x)^3, x, 12, -(b*cos(2*a + 2*b*x))/(4*d^2*(c + d*x)) - (b*cos(4*a + 4*b*x))/(4*d^2*(c + d*x)) - (b^2*CosIntegral((4*b*c)/d + 4*b*x)*sin(4*a - (4*b*c)/d))/d^3 - (b^2*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(2*d^3) - sin(2*a + 2*b*x)/(8*d*(c + d*x)^2) - sin(4*a + 4*b*x)/(16*d*(c + d*x)^2) - (b^2*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(2*d^3) - (b^2*cos(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/d^3]
    @test_int [(cos(a + b*x)^3*sin(a + b*x))/(c + d*x)^4, x, 14, -(b*cos(2*a + 2*b*x))/(12*d^2*(c + d*x)^2) - (b*cos(4*a + 4*b*x))/(12*d^2*(c + d*x)^2) - (b^3*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/(3*d^4) - (4*b^3*cos(4*a - (4*b*c)/d)*CosIntegral((4*b*c)/d + 4*b*x))/(3*d^4) - sin(2*a + 2*b*x)/(12*d*(c + d*x)^3) + (b^2*sin(2*a + 2*b*x))/(6*d^3*(c + d*x)) - sin(4*a + 4*b*x)/(24*d*(c + d*x)^3) + (b^2*sin(4*a + 4*b*x))/(3*d^3*(c + d*x)) + (b^3*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(3*d^4) + (4*b^3*sin(4*a - (4*b*c)/d)*SinIntegral((4*b*c)/d + 4*b*x))/(3*d^4)]


    @test_int [(c + d*x)^m*cos(a + b*x)^3*sin(a + b*x)^2, x, 11, ((-im/16)*ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-im)*b*(c + d*x))/d))/(b*(((-im)*b*(c + d*x))/d)^m) + ((im/16)*(c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(b*ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m) + ((im/32)*3^(-1 - m)*ℯ^((3*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-3*im)*b*(c + d*x))/d))/(b*(((-im)*b*(c + d*x))/d)^m) - ((im/32)*3^(-1 - m)*(c + d*x)^m*Gamma(1 + m, ((3*im)*b*(c + d*x))/d))/(b*ℯ^((3*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m) + ((im/32)*5^(-1 - m)*ℯ^((5*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-5*im)*b*(c + d*x))/d))/(b*(((-im)*b*(c + d*x))/d)^m) - ((im/32)*5^(-1 - m)*(c + d*x)^m*Gamma(1 + m, ((5*im)*b*(c + d*x))/d))/(b*ℯ^((5*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m)]

    @test_int [(c + d*x)^4*cos(a + b*x)^3*sin(a + b*x)^2, x, 17, (-3*d^3*(c + d*x)*cos(a + b*x))/b^4 + (d*(c + d*x)^3*cos(a + b*x))/(2*b^2) + (d^3*(c + d*x)*cos(3*a + 3*b*x))/(54*b^4) - (d*(c + d*x)^3*cos(3*a + 3*b*x))/(36*b^2) + (3*d^3*(c + d*x)*cos(5*a + 5*b*x))/(1250*b^4) - (d*(c + d*x)^3*cos(5*a + 5*b*x))/(100*b^2) + (3*d^4*sin(a + b*x))/b^5 - (3*d^2*(c + d*x)^2*sin(a + b*x))/(2*b^3) + ((c + d*x)^4*sin(a + b*x))/(8*b) - (d^4*sin(3*a + 3*b*x))/(162*b^5) + (d^2*(c + d*x)^2*sin(3*a + 3*b*x))/(36*b^3) - ((c + d*x)^4*sin(3*a + 3*b*x))/(48*b) - (3*d^4*sin(5*a + 5*b*x))/(6250*b^5) + (3*d^2*(c + d*x)^2*sin(5*a + 5*b*x))/(500*b^3) - ((c + d*x)^4*sin(5*a + 5*b*x))/(80*b)]
    @test_int [(c + d*x)^3*cos(a + b*x)^3*sin(a + b*x)^2, x, 14, (-3*d^3*cos(a + b*x))/(4*b^4) + (3*d*(c + d*x)^2*cos(a + b*x))/(8*b^2) + (d^3*cos(3*a + 3*b*x))/(216*b^4) - (d*(c + d*x)^2*cos(3*a + 3*b*x))/(48*b^2) + (3*d^3*cos(5*a + 5*b*x))/(5000*b^4) - (3*d*(c + d*x)^2*cos(5*a + 5*b*x))/(400*b^2) - (3*d^2*(c + d*x)*sin(a + b*x))/(4*b^3) + ((c + d*x)^3*sin(a + b*x))/(8*b) + (d^2*(c + d*x)*sin(3*a + 3*b*x))/(72*b^3) - ((c + d*x)^3*sin(3*a + 3*b*x))/(48*b) + (3*d^2*(c + d*x)*sin(5*a + 5*b*x))/(1000*b^3) - ((c + d*x)^3*sin(5*a + 5*b*x))/(80*b)]
    @test_int [(c + d*x)^2*cos(a + b*x)^3*sin(a + b*x)^2, x, 11, (d*(c + d*x)*cos(a + b*x))/(4*b^2) - (d*(c + d*x)*cos(3*a + 3*b*x))/(72*b^2) - (d*(c + d*x)*cos(5*a + 5*b*x))/(200*b^2) - (d^2*sin(a + b*x))/(4*b^3) + ((c + d*x)^2*sin(a + b*x))/(8*b) + (d^2*sin(3*a + 3*b*x))/(216*b^3) - ((c + d*x)^2*sin(3*a + 3*b*x))/(48*b) + (d^2*sin(5*a + 5*b*x))/(1000*b^3) - ((c + d*x)^2*sin(5*a + 5*b*x))/(80*b)]
    @test_int [(c + d*x)^1*cos(a + b*x)^3*sin(a + b*x)^2, x, 8, (d*cos(a + b*x))/(8*b^2) - (d*cos(3*a + 3*b*x))/(144*b^2) - (d*cos(5*a + 5*b*x))/(400*b^2) + ((c + d*x)*sin(a + b*x))/(8*b) - ((c + d*x)*sin(3*a + 3*b*x))/(48*b) - ((c + d*x)*sin(5*a + 5*b*x))/(80*b)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x)^2)/(c + d*x)^1, x, 11, (cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(8*d) - (cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(16*d) - (cos(5*a - (5*b*c)/d)*CosIntegral((5*b*c)/d + 5*b*x))/(16*d) - (sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(8*d) + (sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(16*d) + (sin(5*a - (5*b*c)/d)*SinIntegral((5*b*c)/d + 5*b*x))/(16*d)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x)^2)/(c + d*x)^2, x, 14, -cos(a + b*x)/(8*d*(c + d*x)) + cos(3*a + 3*b*x)/(16*d*(c + d*x)) + cos(5*a + 5*b*x)/(16*d*(c + d*x)) + (5*b*CosIntegral((5*b*c)/d + 5*b*x)*sin(5*a - (5*b*c)/d))/(16*d^2) + (3*b*CosIntegral((3*b*c)/d + 3*b*x)*sin(3*a - (3*b*c)/d))/(16*d^2) - (b*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(8*d^2) - (b*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(8*d^2) + (3*b*cos(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(16*d^2) + (5*b*cos(5*a - (5*b*c)/d)*SinIntegral((5*b*c)/d + 5*b*x))/(16*d^2)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x)^2)/(c + d*x)^3, x, 17, -cos(a + b*x)/(16*d*(c + d*x)^2) + cos(3*a + 3*b*x)/(32*d*(c + d*x)^2) + cos(5*a + 5*b*x)/(32*d*(c + d*x)^2) - (b^2*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(16*d^3) + (9*b^2*cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(32*d^3) + (25*b^2*cos(5*a - (5*b*c)/d)*CosIntegral((5*b*c)/d + 5*b*x))/(32*d^3) + (b*sin(a + b*x))/(16*d^2*(c + d*x)) - (3*b*sin(3*a + 3*b*x))/(32*d^2*(c + d*x)) - (5*b*sin(5*a + 5*b*x))/(32*d^2*(c + d*x)) + (b^2*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(16*d^3) - (9*b^2*sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(32*d^3) - (25*b^2*sin(5*a - (5*b*c)/d)*SinIntegral((5*b*c)/d + 5*b*x))/(32*d^3)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x)^2)/(c + d*x)^4, x, 20, -cos(a + b*x)/(24*d*(c + d*x)^3) + (b^2*cos(a + b*x))/(48*d^3*(c + d*x)) + cos(3*a + 3*b*x)/(48*d*(c + d*x)^3) - (3*b^2*cos(3*a + 3*b*x))/(32*d^3*(c + d*x)) + cos(5*a + 5*b*x)/(48*d*(c + d*x)^3) - (25*b^2*cos(5*a + 5*b*x))/(96*d^3*(c + d*x)) - (125*b^3*CosIntegral((5*b*c)/d + 5*b*x)*sin(5*a - (5*b*c)/d))/(96*d^4) - (9*b^3*CosIntegral((3*b*c)/d + 3*b*x)*sin(3*a - (3*b*c)/d))/(32*d^4) + (b^3*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(48*d^4) + (b*sin(a + b*x))/(48*d^2*(c + d*x)^2) - (b*sin(3*a + 3*b*x))/(32*d^2*(c + d*x)^2) - (5*b*sin(5*a + 5*b*x))/(96*d^2*(c + d*x)^2) + (b^3*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(48*d^4) - (9*b^3*cos(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(32*d^4) - (125*b^3*cos(5*a - (5*b*c)/d)*SinIntegral((5*b*c)/d + 5*b*x))/(96*d^4)]


    @test_int [(c + d*x)^m*cos(a + b*x)^3*sin(a + b*x)^3, x, 8, (-3*2^(-7 - m)*ℯ^((2*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-2*im)*b*(c + d*x))/d))/(b*(((-im)*b*(c + d*x))/d)^m) - (3*2^(-7 - m)*(c + d*x)^m*Gamma(1 + m, ((2*im)*b*(c + d*x))/d))/(b*ℯ^((2*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m) + (2^(-7 - m)*3^(-1 - m)*ℯ^((6*im)*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, ((-6*im)*b*(c + d*x))/d))/(b*(((-im)*b*(c + d*x))/d)^m) + (2^(-7 - m)*3^(-1 - m)*(c + d*x)^m*Gamma(1 + m, ((6*im)*b*(c + d*x))/d))/(b*ℯ^((6*im)*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m)]

    @test_int [(c + d*x)^4*cos(a + b*x)^3*sin(a + b*x)^3, x, 12, (-9*d^4*cos(2*a + 2*b*x))/(128*b^5) + (9*d^2*(c + d*x)^2*cos(2*a + 2*b*x))/(64*b^3) - (3*(c + d*x)^4*cos(2*a + 2*b*x))/(64*b) + (d^4*cos(6*a + 6*b*x))/(10368*b^5) - (d^2*(c + d*x)^2*cos(6*a + 6*b*x))/(576*b^3) + ((c + d*x)^4*cos(6*a + 6*b*x))/(192*b) - (9*d^3*(c + d*x)*sin(2*a + 2*b*x))/(64*b^4) + (3*d*(c + d*x)^3*sin(2*a + 2*b*x))/(32*b^2) + (d^3*(c + d*x)*sin(6*a + 6*b*x))/(1728*b^4) - (d*(c + d*x)^3*sin(6*a + 6*b*x))/(288*b^2)]
    @test_int [(c + d*x)^3*cos(a + b*x)^3*sin(a + b*x)^3, x, 10, (9*d^2*(c + d*x)*cos(2*a + 2*b*x))/(128*b^3) - (3*(c + d*x)^3*cos(2*a + 2*b*x))/(64*b) - (d^2*(c + d*x)*cos(6*a + 6*b*x))/(1152*b^3) + ((c + d*x)^3*cos(6*a + 6*b*x))/(192*b) - (9*d^3*sin(2*a + 2*b*x))/(256*b^4) + (9*d*(c + d*x)^2*sin(2*a + 2*b*x))/(128*b^2) + (d^3*sin(6*a + 6*b*x))/(6912*b^4) - (d*(c + d*x)^2*sin(6*a + 6*b*x))/(384*b^2)]
    @test_int [(c + d*x)^2*cos(a + b*x)^3*sin(a + b*x)^3, x, 8, (3*d^2*cos(2*a + 2*b*x))/(128*b^3) - (3*(c + d*x)^2*cos(2*a + 2*b*x))/(64*b) - (d^2*cos(6*a + 6*b*x))/(3456*b^3) + ((c + d*x)^2*cos(6*a + 6*b*x))/(192*b) + (3*d*(c + d*x)*sin(2*a + 2*b*x))/(64*b^2) - (d*(c + d*x)*sin(6*a + 6*b*x))/(576*b^2)]
    @test_int [(c + d*x)^1*cos(a + b*x)^3*sin(a + b*x)^3, x, 6, (-3*(c + d*x)*cos(2*a + 2*b*x))/(64*b) + ((c + d*x)*cos(6*a + 6*b*x))/(192*b) + (3*d*sin(2*a + 2*b*x))/(128*b^2) - (d*sin(6*a + 6*b*x))/(1152*b^2)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x)^3)/(c + d*x)^1, x, 8, -(CosIntegral((6*b*c)/d + 6*b*x)*sin(6*a - (6*b*c)/d))/(32*d) + (3*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(32*d) + (3*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(32*d) - (cos(6*a - (6*b*c)/d)*SinIntegral((6*b*c)/d + 6*b*x))/(32*d)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x)^3)/(c + d*x)^2, x, 10, (3*b*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/(16*d^2) - (3*b*cos(6*a - (6*b*c)/d)*CosIntegral((6*b*c)/d + 6*b*x))/(16*d^2) - (3*sin(2*a + 2*b*x))/(32*d*(c + d*x)) + sin(6*a + 6*b*x)/(32*d*(c + d*x)) - (3*b*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(16*d^2) + (3*b*sin(6*a - (6*b*c)/d)*SinIntegral((6*b*c)/d + 6*b*x))/(16*d^2)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x)^3)/(c + d*x)^3, x, 12, (-3*b*cos(2*a + 2*b*x))/(32*d^2*(c + d*x)) + (3*b*cos(6*a + 6*b*x))/(32*d^2*(c + d*x)) + (9*b^2*CosIntegral((6*b*c)/d + 6*b*x)*sin(6*a - (6*b*c)/d))/(16*d^3) - (3*b^2*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(16*d^3) - (3*sin(2*a + 2*b*x))/(64*d*(c + d*x)^2) + sin(6*a + 6*b*x)/(64*d*(c + d*x)^2) - (3*b^2*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(16*d^3) + (9*b^2*cos(6*a - (6*b*c)/d)*SinIntegral((6*b*c)/d + 6*b*x))/(16*d^3)]
    @test_int [(cos(a + b*x)^3*sin(a + b*x)^3)/(c + d*x)^4, x, 14, -(b*cos(2*a + 2*b*x))/(32*d^2*(c + d*x)^2) + (b*cos(6*a + 6*b*x))/(32*d^2*(c + d*x)^2) - (b^3*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/(8*d^4) + (9*b^3*cos(6*a - (6*b*c)/d)*CosIntegral((6*b*c)/d + 6*b*x))/(8*d^4) - sin(2*a + 2*b*x)/(32*d*(c + d*x)^3) + (b^2*sin(2*a + 2*b*x))/(16*d^3*(c + d*x)) + sin(6*a + 6*b*x)/(96*d*(c + d*x)^3) - (3*b^2*sin(6*a + 6*b*x))/(16*d^3*(c + d*x)) + (b^3*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(8*d^4) - (9*b^3*sin(6*a - (6*b*c)/d)*SinIntegral((6*b*c)/d + 6*b*x))/(8*d^4)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [(c + d*x)^m*cos(a + b*x)^2*cot(a + b*x), x, 6, (2^(-3 - m)*ℯ^(2*im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((2*im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*b) + (2^(-3 - m)*(c + d*x)^m*Gamma(1 + m, (2*im*b*(c + d*x))/d))/(ℯ^(2*im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*b) + Unintegrable((c + d*x)^m*cot(a + b*x), x)]

    @test_int [(c + d*x)^4*cos(a + b*x)^2*cot(a + b*x), x, 13, -((3*c*d^3*x)/(2*b^3)) - (3*d^4*x^2)/(4*b^3) + (c + d*x)^4/(4*b) - (im*(c + d*x)^5)/(5*d) + ((c + d*x)^4*log(1 - ℯ^(2*im*(a + b*x))))/b - (2*im*d*(c + d*x)^3*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 + (3*d^2*(c + d*x)^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^3 + (3*im*d^3*(c + d*x)*PolyLog(4, ℯ^(2*im*(a + b*x))))/b^4 - (3*d^4*PolyLog(5, ℯ^(2*im*(a + b*x))))/(2*b^5) + (3*d^3*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(2*b^4) - (d*(c + d*x)^3*cos(a + b*x)*sin(a + b*x))/b^2 - (3*d^4*sin(a + b*x)^2)/(4*b^5) + (3*d^2*(c + d*x)^2*sin(a + b*x)^2)/(2*b^3) - ((c + d*x)^4*sin(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^3*cos(a + b*x)^2*cot(a + b*x), x, 12, -((3*d^3*x)/(8*b^3)) + (c + d*x)^3/(4*b) - (im*(c + d*x)^4)/(4*d) + ((c + d*x)^3*log(1 - ℯ^(2*im*(a + b*x))))/b - (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2) + (3*d^2*(c + d*x)*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3) + (3*im*d^3*PolyLog(4, ℯ^(2*im*(a + b*x))))/(4*b^4) + (3*d^3*cos(a + b*x)*sin(a + b*x))/(8*b^4) - (3*d*(c + d*x)^2*cos(a + b*x)*sin(a + b*x))/(4*b^2) + (3*d^2*(c + d*x)*sin(a + b*x)^2)/(4*b^3) - ((c + d*x)^3*sin(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^2*cos(a + b*x)^2*cot(a + b*x), x, 9, (c*d*x)/(2*b) + (d^2*x^2)/(4*b) - (im*(c + d*x)^3)/(3*d) + ((c + d*x)^2*log(1 - ℯ^(2*im*(a + b*x))))/b - (im*d*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 + (d^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3) - (d*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(2*b^2) + (d^2*sin(a + b*x)^2)/(4*b^3) - ((c + d*x)^2*sin(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^1*cos(a + b*x)^2*cot(a + b*x), x, 8, (d*x)/(4*b) - (im*(c + d*x)^2)/(2*d) + ((c + d*x)*log(1 - ℯ^(2*im*(a + b*x))))/b - (im*d*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2) - (d*cos(a + b*x)*sin(a + b*x))/(4*b^2) - ((c + d*x)*sin(a + b*x)^2)/(2*b)]
    @test_int [(cos(a + b*x)^2*cot(a + b*x))/(c + d*x)^1, x, 6, Unintegrable(cot(a + b*x)/(c + d*x), x) - (CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(2*d) - (cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(2*d)]
    @test_int [(cos(a + b*x)^2*cot(a + b*x))/(c + d*x)^2, x, 7, -((b*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/d^2) + Unintegrable(cot(a + b*x)/(c + d*x)^2, x) + sin(2*a + 2*b*x)/(2*d*(c + d*x)) + (b*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^2]


    @test_int [(c + d*x)^m*cos(a + b*x)*cot(a + b*x)^2, x, 4, CannotIntegrate((c + d*x)^m*cot(a + b*x)*csc(a + b*x), x) + (im*ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*(2*b)) - (im*(c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*(2*b))]

    @test_int [(c + d*x)^4*cos(a + b*x)*cot(a + b*x)^2, x, 16, -((8*d*(c + d*x)^3*atanh(ℯ^(im*(a + b*x))))/b^2) + (24*d^3*(c + d*x)*cos(a + b*x))/b^4 - (4*d*(c + d*x)^3*cos(a + b*x))/b^2 - ((c + d*x)^4*csc(a + b*x))/b + (12*im*d^2*(c + d*x)^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 - (12*im*d^2*(c + d*x)^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^3 - (24*d^3*(c + d*x)*PolyLog(3, -ℯ^(im*(a + b*x))))/b^4 + (24*d^3*(c + d*x)*PolyLog(3, ℯ^(im*(a + b*x))))/b^4 - (24*im*d^4*PolyLog(4, -ℯ^(im*(a + b*x))))/b^5 + (24*im*d^4*PolyLog(4, ℯ^(im*(a + b*x))))/b^5 - (24*d^4*sin(a + b*x))/b^5 + (12*d^2*(c + d*x)^2*sin(a + b*x))/b^3 - ((c + d*x)^4*sin(a + b*x))/b]
    @test_int [(c + d*x)^3*cos(a + b*x)*cot(a + b*x)^2, x, 13, -((6*d*(c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b^2) + (6*d^3*cos(a + b*x))/b^4 - (3*d*(c + d*x)^2*cos(a + b*x))/b^2 - ((c + d*x)^3*csc(a + b*x))/b + (6*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 - (6*im*d^2*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^3 - (6*d^3*PolyLog(3, -ℯ^(im*(a + b*x))))/b^4 + (6*d^3*PolyLog(3, ℯ^(im*(a + b*x))))/b^4 + (6*d^2*(c + d*x)*sin(a + b*x))/b^3 - ((c + d*x)^3*sin(a + b*x))/b]
    @test_int [(c + d*x)^2*cos(a + b*x)*cot(a + b*x)^2, x, 10, -((4*d*(c + d*x)*atanh(ℯ^(im*(a + b*x))))/b^2) - (2*d*(c + d*x)*cos(a + b*x))/b^2 - ((c + d*x)^2*csc(a + b*x))/b + (2*im*d^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 - (2*im*d^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^3 + (2*d^2*sin(a + b*x))/b^3 - ((c + d*x)^2*sin(a + b*x))/b]
    @test_int [(c + d*x)^1*cos(a + b*x)*cot(a + b*x)^2, x, 5, -((d*atanh(cos(a + b*x)))/b^2) - (d*cos(a + b*x))/b^2 - ((c + d*x)*csc(a + b*x))/b - ((c + d*x)*sin(a + b*x))/b]
    @test_int [(cos(a + b*x)*cot(a + b*x)^2)/(c + d*x)^1, x, 4, -((cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/d) + CannotIntegrate((cot(a + b*x)*csc(a + b*x))/(c + d*x), x) + (sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d]
    @test_int [(cos(a + b*x)*cot(a + b*x)^2)/(c + d*x)^2, x, 5, cos(a + b*x)/(d*(c + d*x)) + CannotIntegrate((cot(a + b*x)*csc(a + b*x))/(c + d*x)^2, x) + (b*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/d^2 + (b*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d^2]


    @test_int [(c + d*x)^m*cot(a + b*x)^3, x, 0, Unintegrable((c + d*x)^m*cot(a + b*x)^3, x)]

    @test_int [(c + d*x)^4*cot(a + b*x)^3, x, 15, -((2*im*d*(c + d*x)^3)/b^2) - (c + d*x)^4/(2*b) + (im*(c + d*x)^5)/(5*d) - (2*d*(c + d*x)^3*cot(a + b*x))/b^2 - ((c + d*x)^4*cot(a + b*x)^2)/(2*b) + (6*d^2*(c + d*x)^2*log(1 - ℯ^(2*im*(a + b*x))))/b^3 - ((c + d*x)^4*log(1 - ℯ^(2*im*(a + b*x))))/b - (6*im*d^3*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^4 + (2*im*d*(c + d*x)^3*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 + (3*d^4*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^5 - (3*d^2*(c + d*x)^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^3 - (3*im*d^3*(c + d*x)*PolyLog(4, ℯ^(2*im*(a + b*x))))/b^4 + (3*d^4*PolyLog(5, ℯ^(2*im*(a + b*x))))/(2*b^5)]
    @test_int [(c + d*x)^3*cot(a + b*x)^3, x, 13, -((3*im*d*(c + d*x)^2)/(2*b^2)) - (c + d*x)^3/(2*b) + (im*(c + d*x)^4)/(4*d) - (3*d*(c + d*x)^2*cot(a + b*x))/(2*b^2) - ((c + d*x)^3*cot(a + b*x)^2)/(2*b) + (3*d^2*(c + d*x)*log(1 - ℯ^(2*im*(a + b*x))))/b^3 - ((c + d*x)^3*log(1 - ℯ^(2*im*(a + b*x))))/b - (3*im*d^3*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^4) + (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*d^2*(c + d*x)*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3) - (3*im*d^3*PolyLog(4, ℯ^(2*im*(a + b*x))))/(4*b^4)]
    @test_int [(c + d*x)^2*cot(a + b*x)^3, x, 9, -((c*d*x)/b) - (d^2*x^2)/(2*b) + (im*(c + d*x)^3)/(3*d) - (d*(c + d*x)*cot(a + b*x))/b^2 - ((c + d*x)^2*cot(a + b*x)^2)/(2*b) - ((c + d*x)^2*log(1 - ℯ^(2*im*(a + b*x))))/b + (d^2*log(sin(a + b*x)))/b^3 + (im*d*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 - (d^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3)]
    @test_int [(c + d*x)^1*cot(a + b*x)^3, x, 7, -((d*x)/(2*b)) + (im*(c + d*x)^2)/(2*d) - (d*cot(a + b*x))/(2*b^2) - ((c + d*x)*cot(a + b*x)^2)/(2*b) - ((c + d*x)*log(1 - ℯ^(2*im*(a + b*x))))/b + (im*d*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2)]
    @test_int [cot(a + b*x)^3/(c + d*x)^1, x, 0, Unintegrable(cot(a + b*x)^3/(c + d*x), x)]
    @test_int [cot(a + b*x)^3/(c + d*x)^2, x, 0, Unintegrable(cot(a + b*x)^3/(c + d*x)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*cos(a+b*x)^3*sin(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^3*sin(a + b*x), x, 18, (15*d^2*sqrt(c + d*x)*cos(2*a + 2*b*x))/(128*b^3) - ((c + d*x)^(5/2)*cos(2*a + 2*b*x))/(8*b) + (15*d^2*sqrt(c + d*x)*cos(4*a + 4*b*x))/(2048*b^3) - ((c + d*x)^(5/2)*cos(4*a + 4*b*x))/(32*b) - (15*d^(5/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4096*b^(7/2)) - (15*d^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(256*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(4096*b^(7/2)) + (15*d^(5/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(256*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(2*a + 2*b*x))/(32*b^2) + (5*d*(c + d*x)^(3/2)*sin(4*a + 4*b*x))/(256*b^2)]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^3*sin(a + b*x), x, 16, -((c + d*x)^(3/2)*cos(2*a + 2*b*x))/(8*b) - ((c + d*x)^(3/2)*cos(4*a + 4*b*x))/(32*b) - (3*d^(3/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(64*b^(5/2)) - (3*d^(3/2)*sqrt(pi/2)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(64*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(2*a + 2*b*x))/(32*b^2) + (3*d*sqrt(c + d*x)*sin(4*a + 4*b*x))/(256*b^2)]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^3*sin(a + b*x), x, 14, -(sqrt(c + d*x)*cos(2*a + 2*b*x))/(8*b) - (sqrt(c + d*x)*cos(4*a + 4*b*x))/(32*b) + (sqrt(d)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(64*b^(3/2)) + (sqrt(d)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(16*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(64*b^(3/2)) - (sqrt(d)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(16*b^(3/2))]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^3*sin(a + b*x), x, 14, -(sqrt(c + d*x)*cos(2*a + 2*b*x))/(8*b) - (sqrt(c + d*x)*cos(4*a + 4*b*x))/(32*b) + (sqrt(d)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(64*b^(3/2)) + (sqrt(d)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(16*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(64*b^(3/2)) - (sqrt(d)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(16*b^(3/2))]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^3*sin(a + b*x), x, 16, -((c + d*x)^(3/2)*cos(2*a + 2*b*x))/(8*b) - ((c + d*x)^(3/2)*cos(4*a + 4*b*x))/(32*b) - (3*d^(3/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(64*b^(5/2)) - (3*d^(3/2)*sqrt(pi/2)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(512*b^(5/2)) - (3*d^(3/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(64*b^(5/2)) + (3*d*sqrt(c + d*x)*sin(2*a + 2*b*x))/(32*b^2) + (3*d*sqrt(c + d*x)*sin(4*a + 4*b*x))/(256*b^2)]
    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^3*sin(a + b*x), x, 18, (15*d^2*sqrt(c + d*x)*cos(2*a + 2*b*x))/(128*b^3) - ((c + d*x)^(5/2)*cos(2*a + 2*b*x))/(8*b) + (15*d^2*sqrt(c + d*x)*cos(4*a + 4*b*x))/(2048*b^3) - ((c + d*x)^(5/2)*cos(4*a + 4*b*x))/(32*b) - (15*d^(5/2)*sqrt(pi/2)*cos(4*a - (4*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4096*b^(7/2)) - (15*d^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(256*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelS((2*sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(4*a - (4*b*c)/d))/(4096*b^(7/2)) + (15*d^(5/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(256*b^(7/2)) + (5*d*(c + d*x)^(3/2)*sin(2*a + 2*b*x))/(32*b^2) + (5*d*(c + d*x)^(3/2)*sin(4*a + 4*b*x))/(256*b^2)]


    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^3*sin(a + b*x)^2, x, 26, (5*d*(c + d*x)^(3/2)*cos(a + b*x))/(16*b^2) - (5*d*(c + d*x)^(3/2)*cos(3*a + 3*b*x))/(288*b^2) - (d*(c + d*x)^(3/2)*cos(5*a + 5*b*x))/(160*b^2) + (15*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(32*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(576*b^(7/2)) - (3*d^(5/2)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(1600*b^(7/2)) - (3*d^(5/2)*sqrt(pi/10)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(1600*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(576*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(32*b^(7/2)) - (15*d^2*sqrt(c + d*x)*sin(a + b*x))/(32*b^3) + ((c + d*x)^(5/2)*sin(a + b*x))/(8*b) + (5*d^2*sqrt(c + d*x)*sin(3*a + 3*b*x))/(576*b^3) - ((c + d*x)^(5/2)*sin(3*a + 3*b*x))/(48*b) + (3*d^2*sqrt(c + d*x)*sin(5*a + 5*b*x))/(1600*b^3) - ((c + d*x)^(5/2)*sin(5*a + 5*b*x))/(80*b)]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^3*sin(a + b*x)^2, x, 23, (3*d*sqrt(c + d*x)*cos(a + b*x))/(16*b^2) - (d*sqrt(c + d*x)*cos(3*a + 3*b*x))/(96*b^2) - (3*d*sqrt(c + d*x)*cos(5*a + 5*b*x))/(800*b^2) - (3*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(16*b^(5/2)) + (d^(3/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(96*b^(5/2)) + (3*d^(3/2)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(800*b^(5/2)) - (3*d^(3/2)*sqrt(pi/10)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(800*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(96*b^(5/2)) + (3*d^(3/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(16*b^(5/2)) + ((c + d*x)^(3/2)*sin(a + b*x))/(8*b) - ((c + d*x)^(3/2)*sin(3*a + 3*b*x))/(48*b) - ((c + d*x)^(3/2)*sin(5*a + 5*b*x))/(80*b)]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^3*sin(a + b*x)^2, x, 20, -(sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(8*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(48*b^(3/2)) + (sqrt(d)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(80*b^(3/2)) + (sqrt(d)*sqrt(pi/10)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(80*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(48*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(8*b^(3/2)) + (sqrt(c + d*x)*sin(a + b*x))/(8*b) - (sqrt(c + d*x)*sin(3*a + 3*b*x))/(48*b) - (sqrt(c + d*x)*sin(5*a + 5*b*x))/(80*b)]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^3*sin(a + b*x)^2, x, 20, -(sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(8*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(48*b^(3/2)) + (sqrt(d)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(80*b^(3/2)) + (sqrt(d)*sqrt(pi/10)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(80*b^(3/2)) + (sqrt(d)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(48*b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(8*b^(3/2)) + (sqrt(c + d*x)*sin(a + b*x))/(8*b) - (sqrt(c + d*x)*sin(3*a + 3*b*x))/(48*b) - (sqrt(c + d*x)*sin(5*a + 5*b*x))/(80*b)]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^3*sin(a + b*x)^2, x, 23, (3*d*sqrt(c + d*x)*cos(a + b*x))/(16*b^2) - (d*sqrt(c + d*x)*cos(3*a + 3*b*x))/(96*b^2) - (3*d*sqrt(c + d*x)*cos(5*a + 5*b*x))/(800*b^2) - (3*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(16*b^(5/2)) + (d^(3/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(96*b^(5/2)) + (3*d^(3/2)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(800*b^(5/2)) - (3*d^(3/2)*sqrt(pi/10)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(800*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(96*b^(5/2)) + (3*d^(3/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(16*b^(5/2)) + ((c + d*x)^(3/2)*sin(a + b*x))/(8*b) - ((c + d*x)^(3/2)*sin(3*a + 3*b*x))/(48*b) - ((c + d*x)^(3/2)*sin(5*a + 5*b*x))/(80*b)]
    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^3*sin(a + b*x)^2, x, 26, (5*d*(c + d*x)^(3/2)*cos(a + b*x))/(16*b^2) - (5*d*(c + d*x)^(3/2)*cos(3*a + 3*b*x))/(288*b^2) - (d*(c + d*x)^(3/2)*cos(5*a + 5*b*x))/(160*b^2) + (15*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(32*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(576*b^(7/2)) - (3*d^(5/2)*sqrt(pi/10)*cos(5*a - (5*b*c)/d)*FresnelS((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d)))/(1600*b^(7/2)) - (3*d^(5/2)*sqrt(pi/10)*FresnelC((sqrt(b)*sqrt(10/pi)*sqrt(c + d*x))/sqrt(d))*sin(5*a - (5*b*c)/d))/(1600*b^(7/2)) - (5*d^(5/2)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(576*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(32*b^(7/2)) - (15*d^2*sqrt(c + d*x)*sin(a + b*x))/(32*b^3) + ((c + d*x)^(5/2)*sin(a + b*x))/(8*b) + (5*d^2*sqrt(c + d*x)*sin(3*a + 3*b*x))/(576*b^3) - ((c + d*x)^(5/2)*sin(3*a + 3*b*x))/(48*b) + (3*d^2*sqrt(c + d*x)*sin(5*a + 5*b*x))/(1600*b^3) - ((c + d*x)^(5/2)*sin(5*a + 5*b*x))/(80*b)]


    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^3*sin(a + b*x)^3, x, 18, (45*d^2*sqrt(c + d*x)*cos(2*a + 2*b*x))/(1024*b^3) - (3*(c + d*x)^(5/2)*cos(2*a + 2*b*x))/(64*b) - (5*d^2*sqrt(c + d*x)*cos(6*a + 6*b*x))/(9216*b^3) + ((c + d*x)^(5/2)*cos(6*a + 6*b*x))/(192*b) + (5*d^(5/2)*sqrt(pi/3)*cos(6*a - (6*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d)))/(18432*b^(7/2)) - (45*d^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(2048*b^(7/2)) - (5*d^(5/2)*sqrt(pi/3)*FresnelS((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d))*sin(6*a - (6*b*c)/d))/(18432*b^(7/2)) + (45*d^(5/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(2048*b^(7/2)) + (15*d*(c + d*x)^(3/2)*sin(2*a + 2*b*x))/(256*b^2) - (5*d*(c + d*x)^(3/2)*sin(6*a + 6*b*x))/(2304*b^2)]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^3*sin(a + b*x)^3, x, 16, (-3*(c + d*x)^(3/2)*cos(2*a + 2*b*x))/(64*b) + ((c + d*x)^(3/2)*cos(6*a + 6*b*x))/(192*b) + (d^(3/2)*sqrt(pi/3)*cos(6*a - (6*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d)))/(1536*b^(5/2)) - (9*d^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(512*b^(5/2)) + (d^(3/2)*sqrt(pi/3)*FresnelC((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d))*sin(6*a - (6*b*c)/d))/(1536*b^(5/2)) - (9*d^(3/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(512*b^(5/2)) + (9*d*sqrt(c + d*x)*sin(2*a + 2*b*x))/(256*b^2) - (d*sqrt(c + d*x)*sin(6*a + 6*b*x))/(768*b^2)]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^3*sin(a + b*x)^3, x, 14, (-3*sqrt(c + d*x)*cos(2*a + 2*b*x))/(64*b) + (sqrt(c + d*x)*cos(6*a + 6*b*x))/(192*b) - (sqrt(d)*sqrt(pi/3)*cos(6*a - (6*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d)))/(384*b^(3/2)) + (3*sqrt(d)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(128*b^(3/2)) + (sqrt(d)*sqrt(pi/3)*FresnelS((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d))*sin(6*a - (6*b*c)/d))/(384*b^(3/2)) - (3*sqrt(d)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(128*b^(3/2))]
    @test_int [(c + d*x)^(1/2)*cos(a + b*x)^3*sin(a + b*x)^3, x, 14, (-3*sqrt(c + d*x)*cos(2*a + 2*b*x))/(64*b) + (sqrt(c + d*x)*cos(6*a + 6*b*x))/(192*b) - (sqrt(d)*sqrt(pi/3)*cos(6*a - (6*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d)))/(384*b^(3/2)) + (3*sqrt(d)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(128*b^(3/2)) + (sqrt(d)*sqrt(pi/3)*FresnelS((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d))*sin(6*a - (6*b*c)/d))/(384*b^(3/2)) - (3*sqrt(d)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(128*b^(3/2))]
    @test_int [(c + d*x)^(3/2)*cos(a + b*x)^3*sin(a + b*x)^3, x, 16, (-3*(c + d*x)^(3/2)*cos(2*a + 2*b*x))/(64*b) + ((c + d*x)^(3/2)*cos(6*a + 6*b*x))/(192*b) + (d^(3/2)*sqrt(pi/3)*cos(6*a - (6*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d)))/(1536*b^(5/2)) - (9*d^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(512*b^(5/2)) + (d^(3/2)*sqrt(pi/3)*FresnelC((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d))*sin(6*a - (6*b*c)/d))/(1536*b^(5/2)) - (9*d^(3/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(512*b^(5/2)) + (9*d*sqrt(c + d*x)*sin(2*a + 2*b*x))/(256*b^2) - (d*sqrt(c + d*x)*sin(6*a + 6*b*x))/(768*b^2)]
    @test_int [(c + d*x)^(5/2)*cos(a + b*x)^3*sin(a + b*x)^3, x, 18, (45*d^2*sqrt(c + d*x)*cos(2*a + 2*b*x))/(1024*b^3) - (3*(c + d*x)^(5/2)*cos(2*a + 2*b*x))/(64*b) - (5*d^2*sqrt(c + d*x)*cos(6*a + 6*b*x))/(9216*b^3) + ((c + d*x)^(5/2)*cos(6*a + 6*b*x))/(192*b) + (5*d^(5/2)*sqrt(pi/3)*cos(6*a - (6*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d)))/(18432*b^(7/2)) - (45*d^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(2048*b^(7/2)) - (5*d^(5/2)*sqrt(pi/3)*FresnelS((2*sqrt(b)*sqrt(3/pi)*sqrt(c + d*x))/sqrt(d))*sin(6*a - (6*b*c)/d))/(18432*b^(7/2)) + (45*d^(5/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(2048*b^(7/2)) + (15*d*(c + d*x)^(3/2)*sin(2*a + 2*b*x))/(256*b^2) - (5*d*(c + d*x)^(3/2)*sin(6*a + 6*b*x))/(2304*b^2)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^4*sin(a+b*x)^p=#


    @test_int [x^3*cos(x)^2*cot(x)^2, x, 12, (3*x^2)/8 - im*x^3 - (3*x^4)/8 + (3*cos(x)^2)/8 - (3*x^2*cos(x)^2)/4 - x^3*cot(x) + 3*x^2*log(1 - ℯ^((2*im)*x)) - (3*im)*x*PolyLog(2, ℯ^((2*im)*x)) + (3*PolyLog(3, ℯ^((2*im)*x)))/2 + (3*x*cos(x)*sin(x))/4 - (x^3*cos(x)*sin(x))/2]
    @test_int [x^2*cos(x)^2*cot(x)^2, x, 11, x/4 - im*x^2 - x^3/2 - (x*cos(x)^2)/2 - x^2*cot(x) + 2*x*log(1 - ℯ^((2*im)*x)) - im*PolyLog(2, ℯ^((2*im)*x)) + (cos(x)*sin(x))/4 - (x^2*cos(x)*sin(x))/2]
    @test_int [x^1*cos(x)^2*cot(x)^2, x, 6, (-3*x^2)/4 - cos(x)^2/4 - x*cot(x) + log(sin(x)) - (x*cos(x)*sin(x))/2]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^5*sin(a+b*x)^p=#


    @test_int [x^3*cos(x)^2*cot(x)^3, x, 26, (3*x)/8 - ((3*im)/2)*x^2 - (3*x^3)/4 + (im/2)*x^4 - (3*x^2*cot(x))/2 - (x^3*cot(x)^2)/2 + 3*x*log(1 - ℯ^((2*im)*x)) - 2*x^3*log(1 - ℯ^((2*im)*x)) - ((3*im)/2)*PolyLog(2, ℯ^((2*im)*x)) + (3*im)*x^2*PolyLog(2, ℯ^((2*im)*x)) - 3*x*PolyLog(3, ℯ^((2*im)*x)) - ((3*im)/2)*PolyLog(4, ℯ^((2*im)*x)) - (3*cos(x)*sin(x))/8 + (3*x^2*cos(x)*sin(x))/4 - (3*x*sin(x)^2)/4 + (x^3*sin(x)^2)/2]
    @test_int [x^2*cos(x)^2*cot(x)^3, x, 19, (-3*x^2)/4 + ((2*im)/3)*x^3 - x*cot(x) - (x^2*cot(x)^2)/2 - 2*x^2*log(1 - ℯ^((2*im)*x)) + log(sin(x)) + (2*im)*x*PolyLog(2, ℯ^((2*im)*x)) - PolyLog(3, ℯ^((2*im)*x)) + (x*cos(x)*sin(x))/2 - sin(x)^2/4 + (x^2*sin(x)^2)/2]
    @test_int [x^1*cos(x)^2*cot(x)^3, x, 16, (-3*x)/4 + im*x^2 - cot(x)/2 - (x*cot(x)^2)/2 - 2*x*log(1 - ℯ^((2*im)*x)) + im*PolyLog(2, ℯ^((2*im)*x)) + (cos(x)*sin(x))/4 + (x*sin(x)^2)/2]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sec(a+b*x)^1*sin(a+b*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sec(a+b*x)*sin(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sec(a + b*x)*sin(a + b*x)*(c + d*x)^m, x, 0, Unintegrable((c + d*x)^m*tan(a + b*x), x)]

    @test_int [sec(a + b*x)*sin(a + b*x)*(c + d*x)^4, x, 7, (im*(c + d*x)^5)/(5*d) - ((c + d*x)^4*log(1 + ℯ^(2*im*(a + b*x))))/b + (2*im*d*(c + d*x)^3*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (3*d^2*(c + d*x)^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/b^3 - (3*im*d^3*(c + d*x)*PolyLog(4, -ℯ^(2*im*(a + b*x))))/b^4 + (3*d^4*PolyLog(5, -ℯ^(2*im*(a + b*x))))/(2*b^5)]
    @test_int [sec(a + b*x)*sin(a + b*x)*(c + d*x)^3, x, 6, (im*(c + d*x)^4)/(4*d) - ((c + d*x)^3*log(1 + ℯ^(2*im*(a + b*x))))/b + (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) - (3*im*d^3*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(4*b^4)]
    @test_int [sec(a + b*x)*sin(a + b*x)*(c + d*x)^2, x, 5, (im*(c + d*x)^3)/(3*d) - ((c + d*x)^2*log(1 + ℯ^(2*im*(a + b*x))))/b + (im*d*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (d^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3)]
    @test_int [sec(a + b*x)*sin(a + b*x)*(c + d*x)^1, x, 4, (im*(c + d*x)^2)/(2*d) - ((c + d*x)*log(1 + ℯ^(2*im*(a + b*x))))/b + (im*d*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2)]
    @test_int [sec(a + b*x)*sin(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(tan(a + b*x)/(c + d*x), x)]
    @test_int [sec(a + b*x)*sin(a + b*x)/(c + d*x)^2, x, 0, Unintegrable(tan(a + b*x)/(c + d*x)^2, x)]


    @test_int [sec(a + b*x)*sin(a + b*x)^2*(c + d*x)^m, x, 4, (im*ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*(2*b)) - (im*(c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*(2*b)) + Unintegrable((c + d*x)^m*sec(a + b*x), x)]

    @test_int [sec(a + b*x)*sin(a + b*x)^2*(c + d*x)^3, x, 14, -((2*im*(c + d*x)^3*atan(ℯ^(im*(a + b*x))))/b) + (6*d^3*cos(a + b*x))/b^4 - (3*d*(c + d*x)^2*cos(a + b*x))/b^2 + (3*im*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (3*im*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 - (6*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (6*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 - (6*im*d^3*PolyLog(4, (-im)*ℯ^(im*(a + b*x))))/b^4 + (6*im*d^3*PolyLog(4, im*ℯ^(im*(a + b*x))))/b^4 + (6*d^2*(c + d*x)*sin(a + b*x))/b^3 - ((c + d*x)^3*sin(a + b*x))/b]
    @test_int [sec(a + b*x)*sin(a + b*x)^2*(c + d*x)^2, x, 11, -((2*im*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b) - (2*d*(c + d*x)*cos(a + b*x))/b^2 + (2*im*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (2*im*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 - (2*d^2*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (2*d^2*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 + (2*d^2*sin(a + b*x))/b^3 - ((c + d*x)^2*sin(a + b*x))/b]
    @test_int [sec(a + b*x)*sin(a + b*x)^2*(c + d*x)^1, x, 8, -((2*im*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b) - (d*cos(a + b*x))/b^2 + (im*d*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (im*d*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 - ((c + d*x)*sin(a + b*x))/b]
    @test_int [sec(a + b*x)*sin(a + b*x)^2/(c + d*x)^1, x, 4, -((cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/d) + Unintegrable(sec(a + b*x)/(c + d*x), x) + (sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d]
    @test_int [sec(a + b*x)*sin(a + b*x)^2/(c + d*x)^2, x, 5, cos(a + b*x)/(d*(c + d*x)) + Unintegrable(sec(a + b*x)/(c + d*x)^2, x) + (b*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/d^2 + (b*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d^2]


    @test_int [sec(a + b*x)*sin(a + b*x)^3*(c + d*x)^m, x, 6, (2^(-3 - m)*ℯ^(2*im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((2*im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*b) + (2^(-3 - m)*(c + d*x)^m*Gamma(1 + m, (2*im*b*(c + d*x))/d))/(ℯ^(2*im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*b) + Unintegrable((c + d*x)^m*tan(a + b*x), x)]

    @test_int [sec(a + b*x)*sin(a + b*x)^3*(c + d*x)^3, x, 12, -((3*d^3*x)/(8*b^3)) + (c + d*x)^3/(4*b) + (im*(c + d*x)^4)/(4*d) - ((c + d*x)^3*log(1 + ℯ^(2*im*(a + b*x))))/b + (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) - (3*im*d^3*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(4*b^4) + (3*d^3*cos(a + b*x)*sin(a + b*x))/(8*b^4) - (3*d*(c + d*x)^2*cos(a + b*x)*sin(a + b*x))/(4*b^2) + (3*d^2*(c + d*x)*sin(a + b*x)^2)/(4*b^3) - ((c + d*x)^3*sin(a + b*x)^2)/(2*b)]
    @test_int [sec(a + b*x)*sin(a + b*x)^3*(c + d*x)^2, x, 9, (c*d*x)/(2*b) + (d^2*x^2)/(4*b) + (im*(c + d*x)^3)/(3*d) - ((c + d*x)^2*log(1 + ℯ^(2*im*(a + b*x))))/b + (im*d*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (d^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) - (d*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(2*b^2) + (d^2*sin(a + b*x)^2)/(4*b^3) - ((c + d*x)^2*sin(a + b*x)^2)/(2*b)]
    @test_int [sec(a + b*x)*sin(a + b*x)^3*(c + d*x)^1, x, 8, (d*x)/(4*b) + (im*(c + d*x)^2)/(2*d) - ((c + d*x)*log(1 + ℯ^(2*im*(a + b*x))))/b + (im*d*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (d*cos(a + b*x)*sin(a + b*x))/(4*b^2) - ((c + d*x)*sin(a + b*x)^2)/(2*b)]
    @test_int [sec(a + b*x)*sin(a + b*x)^3/(c + d*x)^1, x, 6, Unintegrable(tan(a + b*x)/(c + d*x), x) - (CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(2*d) - (cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(2*d)]
    @test_int [sec(a + b*x)*sin(a + b*x)^3/(c + d*x)^2, x, 7, -((b*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/d^2) + Unintegrable(tan(a + b*x)/(c + d*x)^2, x) + sin(2*a + 2*b*x)/(2*d*(c + d*x)) + (b*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^2]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sec(a + b*x)*csc(a + b*x)*(c + d*x)^m, x, 0, CannotIntegrate((c + d*x)^m*csc(a + b*x)*sec(a + b*x), x)]

    @test_int [sec(a + b*x)*csc(a + b*x)*(c + d*x)^4, x, 12, -((2*(c + d*x)^4*atanh(ℯ^(2*im*(a + b*x))))/b) + (2*im*d*(c + d*x)^3*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (2*im*d*(c + d*x)^3*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 - (3*d^2*(c + d*x)^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/b^3 + (3*d^2*(c + d*x)^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^3 - (3*im*d^3*(c + d*x)*PolyLog(4, -ℯ^(2*im*(a + b*x))))/b^4 + (3*im*d^3*(c + d*x)*PolyLog(4, ℯ^(2*im*(a + b*x))))/b^4 + (3*d^4*PolyLog(5, -ℯ^(2*im*(a + b*x))))/(2*b^5) - (3*d^4*PolyLog(5, ℯ^(2*im*(a + b*x))))/(2*b^5)]
    @test_int [sec(a + b*x)*csc(a + b*x)*(c + d*x)^3, x, 10, -((2*(c + d*x)^3*atanh(ℯ^(2*im*(a + b*x))))/b) + (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (3*d^2*(c + d*x)*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3) - (3*im*d^3*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(4*b^4) + (3*im*d^3*PolyLog(4, ℯ^(2*im*(a + b*x))))/(4*b^4)]
    @test_int [sec(a + b*x)*csc(a + b*x)*(c + d*x)^2, x, 8, -((2*(c + d*x)^2*atanh(ℯ^(2*im*(a + b*x))))/b) + (im*d*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (im*d*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 - (d^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (d^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3)]
    @test_int [sec(a + b*x)*csc(a + b*x)*(c + d*x)^1, x, 6, -((2*(c + d*x)*atanh(ℯ^(2*im*(a + b*x))))/b) + (im*d*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (im*d*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2)]
    @test_int [sec(a + b*x)*csc(a + b*x)/(c + d*x)^1, x, 1, 2*Unintegrable(csc(2*a + 2*b*x)/(c + d*x), x)]
    @test_int [sec(a + b*x)*csc(a + b*x)/(c + d*x)^2, x, 1, 2*Unintegrable(csc(2*a + 2*b*x)/(c + d*x)^2, x)]


    @test_int [sec(a + b*x)*csc(a + b*x)^2*(c + d*x)^m, x, 0, CannotIntegrate((c + d*x)^m*csc(a + b*x)^2*sec(a + b*x), x)]

    @test_int [sec(a + b*x)*csc(a + b*x)^2*(c + d*x)^3, x, 23, -((2*im*(c + d*x)^3*atan(ℯ^(im*(a + b*x))))/b) - (6*d*(c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b^2 - ((c + d*x)^3*csc(a + b*x))/b + (6*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 + (3*im*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (3*im*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 - (6*im*d^2*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^3 - (6*d^3*PolyLog(3, -ℯ^(im*(a + b*x))))/b^4 - (6*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (6*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 + (6*d^3*PolyLog(3, ℯ^(im*(a + b*x))))/b^4 - (6*im*d^3*PolyLog(4, (-im)*ℯ^(im*(a + b*x))))/b^4 + (6*im*d^3*PolyLog(4, im*ℯ^(im*(a + b*x))))/b^4]
    @test_int [sec(a + b*x)*csc(a + b*x)^2*(c + d*x)^2, x, 19, -((2*im*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b) - (4*d*(c + d*x)*atanh(ℯ^(im*(a + b*x))))/b^2 - ((c + d*x)^2*csc(a + b*x))/b + (2*im*d^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 + (2*im*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (2*im*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 - (2*im*d^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^3 - (2*d^2*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (2*d^2*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3]
    @test_int [sec(a + b*x)*csc(a + b*x)^2*(c + d*x)^1, x, 10, -((2*im*d*x*atan(ℯ^(im*(a + b*x))))/b) - (d*atanh(cos(a + b*x)))/b^2 - (d*x*atanh(sin(a + b*x)))/b + ((c + d*x)*atanh(sin(a + b*x)))/b - ((c + d*x)*csc(a + b*x))/b + (im*d*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (im*d*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2]
    @test_int [sec(a + b*x)*csc(a + b*x)^2/(c + d*x)^1, x, 0, CannotIntegrate((csc(a + b*x)^2*sec(a + b*x))/(c + d*x), x)]
    @test_int [sec(a + b*x)*csc(a + b*x)^2/(c + d*x)^2, x, 0, CannotIntegrate((csc(a + b*x)^2*sec(a + b*x))/(c + d*x)^2, x)]


    @test_int [sec(a + b*x)*csc(a + b*x)^3*(c + d*x)^m, x, 0, CannotIntegrate((c + d*x)^m*csc(a + b*x)^3*sec(a + b*x), x)]

    @test_int [sec(a + b*x)*csc(a + b*x)^3*(c + d*x)^3, x, 22, -((3*im*d*(c + d*x)^2)/(2*b^2)) - (c + d*x)^3/(2*b) - (2*(c + d*x)^3*atanh(ℯ^(2*im*(a + b*x))))/b - (3*d*(c + d*x)^2*cot(a + b*x))/(2*b^2) - ((c + d*x)^3*cot(a + b*x)^2)/(2*b) + (3*d^2*(c + d*x)*log(1 - ℯ^(2*im*(a + b*x))))/b^3 + (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*im*d^3*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^4) - (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (3*d^2*(c + d*x)*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3) - (3*im*d^3*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(4*b^4) + (3*im*d^3*PolyLog(4, ℯ^(2*im*(a + b*x))))/(4*b^4)]
    @test_int [sec(a + b*x)*csc(a + b*x)^3*(c + d*x)^2, x, 17, -((c*d*x)/b) - (d^2*x^2)/(2*b) - (2*(c + d*x)^2*atanh(ℯ^(2*im*(a + b*x))))/b - (d*(c + d*x)*cot(a + b*x))/b^2 - ((c + d*x)^2*cot(a + b*x)^2)/(2*b) + (d^2*log(sin(a + b*x)))/b^3 + (im*d*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (im*d*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 - (d^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (d^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3)]
    @test_int [sec(a + b*x)*csc(a + b*x)^3*(c + d*x)^1, x, 11, -((d*x)/(2*b)) - (2*d*x*atanh(ℯ^(2*im*(a + b*x))))/b - (d*cot(a + b*x))/(2*b^2) - ((c + d*x)*cot(a + b*x)^2)/(2*b) - (d*x*log(tan(a + b*x)))/b + ((c + d*x)*log(tan(a + b*x)))/b + (im*d*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (im*d*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2)]
    @test_int [sec(a + b*x)*csc(a + b*x)^3/(c + d*x)^1, x, 0, CannotIntegrate((csc(a + b*x)^3*sec(a + b*x))/(c + d*x), x)]
    @test_int [sec(a + b*x)*csc(a + b*x)^3/(c + d*x)^2, x, 0, CannotIntegrate((csc(a + b*x)^3*sec(a + b*x))/(c + d*x)^2, x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*sec(a+b*x)*sin(a+b*x)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sec(a+b*x)^2*sin(a+b*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sec(a+b*x)^2*sin(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(c + d*x)^m*sec(a + b*x)*tan(a + b*x), x, 0, CannotIntegrate((c + d*x)^m*sec(a + b*x)*tan(a + b*x), x)]

    @test_int [(c + d*x)^4*sec(a + b*x)*tan(a + b*x), x, 10, ((8*im)*d*(c + d*x)^3*atan(ℯ^(im*(a + b*x))))/b^2 - ((12*im)*d^2*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + ((12*im)*d^2*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 + (24*d^3*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^4 - (24*d^3*(c + d*x)*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^4 + ((24*im)*d^4*PolyLog(4, (-im)*ℯ^(im*(a + b*x))))/b^5 - ((24*im)*d^4*PolyLog(4, im*ℯ^(im*(a + b*x))))/b^5 + ((c + d*x)^4*sec(a + b*x))/b]
    @test_int [(c + d*x)^3*sec(a + b*x)*tan(a + b*x), x, 8, ((6*im)*d*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b^2 - ((6*im)*d^2*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + ((6*im)*d^2*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 + (6*d^3*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^4 - (6*d^3*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^4 + ((c + d*x)^3*sec(a + b*x))/b]
    @test_int [(c + d*x)^2*sec(a + b*x)*tan(a + b*x), x, 6, ((4*im)*d*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b^2 - ((2*im)*d^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + ((2*im)*d^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 + ((c + d*x)^2*sec(a + b*x))/b]
    @test_int [(c + d*x)^1*sec(a + b*x)*tan(a + b*x), x, 2, -((d*atanh(sin(a + b*x)))/b^2) + ((c + d*x)*sec(a + b*x))/b]
    @test_int [(sec(a + b*x)*tan(a + b*x))/(c + d*x)^1, x, 0, CannotIntegrate((sec(a + b*x)*tan(a + b*x))/(c + d*x), x)]
    @test_int [(sec(a + b*x)*tan(a + b*x))/(c + d*x)^2, x, 0, CannotIntegrate((sec(a + b*x)*tan(a + b*x))/(c + d*x)^2, x)]


    @test_int [(c + d*x)^m*tan(a + b*x)^2, x, 0, Unintegrable((c + d*x)^m*tan(a + b*x)^2, x)]

    @test_int [(c + d*x)^3*tan(a + b*x)^2, x, 7, -((im*(c + d*x)^3)/b) - (c + d*x)^4/(4*d) + (3*d*(c + d*x)^2*log(1 + ℯ^(2*im*(a + b*x))))/b^2 - (3*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^3 + (3*d^3*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^4) + ((c + d*x)^3*tan(a + b*x))/b]
    @test_int [(c + d*x)^2*tan(a + b*x)^2, x, 6, -((im*(c + d*x)^2)/b) - (c + d*x)^3/(3*d) + (2*d*(c + d*x)*log(1 + ℯ^(2*im*(a + b*x))))/b^2 - (im*d^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^3 + ((c + d*x)^2*tan(a + b*x))/b]
    @test_int [(c + d*x)^1*tan(a + b*x)^2, x, 3, -(c*x) - (d*x^2)/2 + (d*log(cos(a + b*x)))/b^2 + ((c + d*x)*tan(a + b*x))/b]
    @test_int [tan(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(tan(a + b*x)^2/(c + d*x), x)]
    @test_int [tan(a + b*x)^2/(c + d*x)^2, x, 0, Unintegrable(tan(a + b*x)^2/(c + d*x)^2, x)]


    @test_int [(c + d*x)^m*sin(a + b*x)*tan(a + b*x)^2, x, 4, (ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*(2*b)) + ((c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*(2*b)) + CannotIntegrate((c + d*x)^m*sec(a + b*x)*tan(a + b*x), x)]

    @test_int [(c + d*x)^3*sin(a + b*x)*tan(a + b*x)^2, x, 13, (6*im*d*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b^2 - (6*d^2*(c + d*x)*cos(a + b*x))/b^3 + ((c + d*x)^3*cos(a + b*x))/b - (6*im*d^2*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + (6*im*d^2*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 + (6*d^3*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^4 - (6*d^3*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^4 + ((c + d*x)^3*sec(a + b*x))/b + (6*d^3*sin(a + b*x))/b^4 - (3*d*(c + d*x)^2*sin(a + b*x))/b^2]
    @test_int [(c + d*x)^2*sin(a + b*x)*tan(a + b*x)^2, x, 10, (4*im*d*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b^2 - (2*d^2*cos(a + b*x))/b^3 + ((c + d*x)^2*cos(a + b*x))/b - (2*im*d^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + (2*im*d^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 + ((c + d*x)^2*sec(a + b*x))/b - (2*d*(c + d*x)*sin(a + b*x))/b^2]
    @test_int [(c + d*x)^1*sin(a + b*x)*tan(a + b*x)^2, x, 5, -((d*atanh(sin(a + b*x)))/b^2) + ((c + d*x)*cos(a + b*x))/b + ((c + d*x)*sec(a + b*x))/b - (d*sin(a + b*x))/b^2]
    @test_int [(sin(a + b*x)*tan(a + b*x)^2)/(c + d*x)^1, x, 4, CannotIntegrate((sec(a + b*x)*tan(a + b*x))/(c + d*x), x) - (CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/d - (cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d]
    @test_int [(sin(a + b*x)*tan(a + b*x)^2)/(c + d*x)^2, x, 5, -((b*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/d^2) + CannotIntegrate((sec(a + b*x)*tan(a + b*x))/(c + d*x)^2, x) + sin(a + b*x)/(d*(c + d*x)) + (b*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d^2]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [(c + d*x)^m*csc(a + b*x)*sec(a + b*x)^2, x, 0, CannotIntegrate((c + d*x)^m*csc(a + b*x)*sec(a + b*x)^2, x)]

    @test_int [(c + d*x)^4*csc(a + b*x)*sec(a + b*x)^2, x, 27, (8*im*d*(c + d*x)^3*atan(ℯ^(im*(a + b*x))))/b^2 - (2*(c + d*x)^4*atanh(ℯ^(im*(a + b*x))))/b + (4*im*d*(c + d*x)^3*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (12*im*d^2*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + (12*im*d^2*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 - (4*im*d*(c + d*x)^3*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (12*d^2*(c + d*x)^2*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (24*d^3*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^4 - (24*d^3*(c + d*x)*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^4 + (12*d^2*(c + d*x)^2*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 - (24*im*d^3*(c + d*x)*PolyLog(4, -ℯ^(im*(a + b*x))))/b^4 + (24*im*d^4*PolyLog(4, (-im)*ℯ^(im*(a + b*x))))/b^5 - (24*im*d^4*PolyLog(4, im*ℯ^(im*(a + b*x))))/b^5 + (24*im*d^3*(c + d*x)*PolyLog(4, ℯ^(im*(a + b*x))))/b^4 + (24*d^4*PolyLog(5, -ℯ^(im*(a + b*x))))/b^5 - (24*d^4*PolyLog(5, ℯ^(im*(a + b*x))))/b^5 + ((c + d*x)^4*sec(a + b*x))/b]
    @test_int [(c + d*x)^3*csc(a + b*x)*sec(a + b*x)^2, x, 23, (6*im*d*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b^2 - (2*(c + d*x)^3*atanh(ℯ^(im*(a + b*x))))/b + (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (6*im*d^2*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + (6*im*d^2*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 - (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (6*d^2*(c + d*x)*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (6*d^3*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^4 - (6*d^3*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^4 + (6*d^2*(c + d*x)*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 - (6*im*d^3*PolyLog(4, -ℯ^(im*(a + b*x))))/b^4 + (6*im*d^3*PolyLog(4, ℯ^(im*(a + b*x))))/b^4 + ((c + d*x)^3*sec(a + b*x))/b]
    @test_int [(c + d*x)^2*csc(a + b*x)*sec(a + b*x)^2, x, 19, (4*im*d*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b^2 - (2*(c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b + (2*im*d*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (2*im*d^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + (2*im*d^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 - (2*im*d*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (2*d^2*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (2*d^2*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 + ((c + d*x)^2*sec(a + b*x))/b]
    @test_int [(c + d*x)^1*csc(a + b*x)*sec(a + b*x)^2, x, 10, (-2*d*x*atanh(ℯ^(im*(a + b*x))))/b - (c*atanh(cos(a + b*x)))/b - (d*atanh(sin(a + b*x)))/b^2 + (im*d*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (im*d*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 + (c*sec(a + b*x))/b + (d*x*sec(a + b*x))/b, -((2*d*x*atanh(ℯ^(im*(a + b*x))))/b) + (d*x*atanh(cos(a + b*x)))/b - ((c + d*x)*atanh(cos(a + b*x)))/b - (d*atanh(sin(a + b*x)))/b^2 + (im*d*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (im*d*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 + ((c + d*x)*sec(a + b*x))/b]
    @test_int [(csc(a + b*x)*sec(a + b*x)^2)/(c + d*x)^1, x, 0, CannotIntegrate((csc(a + b*x)*sec(a + b*x)^2)/(c + d*x), x)]
    @test_int [(csc(a + b*x)*sec(a + b*x)^2)/(c + d*x)^2, x, 0, CannotIntegrate((csc(a + b*x)*sec(a + b*x)^2)/(c + d*x)^2, x)]


    @test_int [(c + d*x)^m*csc(a + b*x)^2*sec(a + b*x)^2, x, 0, CannotIntegrate((c + d*x)^m*csc(a + b*x)^2*sec(a + b*x)^2, x)]

    @test_int [(c + d*x)^3*csc(a + b*x)^2*sec(a + b*x)^2, x, 7, -((2*im*(c + d*x)^3)/b) - (2*(c + d*x)^3*cot(2*a + 2*b*x))/b + (3*d*(c + d*x)^2*log(1 - ℯ^(4*im*(a + b*x))))/b^2 - (3*im*d^2*(c + d*x)*PolyLog(2, ℯ^(4*im*(a + b*x))))/(2*b^3) + (3*d^3*PolyLog(3, ℯ^(4*im*(a + b*x))))/(8*b^4)]
    @test_int [(c + d*x)^2*csc(a + b*x)^2*sec(a + b*x)^2, x, 6, -((2*im*(c + d*x)^2)/b) - (2*(c + d*x)^2*cot(2*a + 2*b*x))/b + (2*d*(c + d*x)*log(1 - ℯ^(4*im*(a + b*x))))/b^2 - (im*d^2*PolyLog(2, ℯ^(4*im*(a + b*x))))/(2*b^3)]
    @test_int [(c + d*x)^1*csc(a + b*x)^2*sec(a + b*x)^2, x, 3, -((2*(c + d*x)*cot(2*a + 2*b*x))/b) + (d*log(sin(2*a + 2*b*x)))/b^2]
    @test_int [(csc(a + b*x)^2*sec(a + b*x)^2)/(c + d*x)^1, x, 1, 4*Unintegrable(csc(2*a + 2*b*x)^2/(c + d*x), x)]
    @test_int [(csc(a + b*x)^2*sec(a + b*x)^2)/(c + d*x)^2, x, 1, 4*Unintegrable(csc(2*a + 2*b*x)^2/(c + d*x)^2, x)]


    @test_int [(c + d*x)^m*csc(a + b*x)^3*sec(a + b*x)^2, x, 0, CannotIntegrate((c + d*x)^m*csc(a + b*x)^3*sec(a + b*x)^2, x)]

    @test_int [(c + d*x)^3*csc(a + b*x)^3*sec(a + b*x)^2, x, 64, (12*im*c*d^2*x*atan(ℯ^(im*(a + b*x))))/b^2 + (6*im*d^3*x^2*atan(ℯ^(im*(a + b*x))))/b^2 - (6*d^3*x*atanh(ℯ^(im*(a + b*x))))/b^3 - (3*(c + d*x)^3*atanh(ℯ^(im*(a + b*x))))/b - (3*c*d^2*atanh(cos(a + b*x)))/b^3 - (3*c^2*d*atanh(sin(a + b*x)))/b^2 - (3*c^2*d*csc(a + b*x))/(2*b^2) - (3*c*d^2*x*csc(a + b*x))/b^2 - (3*d^3*x^2*csc(a + b*x))/(2*b^2) + (3*im*d^3*PolyLog(2, -ℯ^(im*(a + b*x))))/b^4 + (9*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(im*(a + b*x))))/(2*b^2) - (6*im*c*d^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 - (6*im*d^3*x*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + (6*im*c*d^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 + (6*im*d^3*x*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 - (3*im*d^3*PolyLog(2, ℯ^(im*(a + b*x))))/b^4 - (9*im*d*(c + d*x)^2*PolyLog(2, ℯ^(im*(a + b*x))))/(2*b^2) - (9*d^2*(c + d*x)*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (6*d^3*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^4 - (6*d^3*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^4 + (9*d^2*(c + d*x)*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 - (9*im*d^3*PolyLog(4, -ℯ^(im*(a + b*x))))/b^4 + (9*im*d^3*PolyLog(4, ℯ^(im*(a + b*x))))/b^4 + (3*(c + d*x)^3*sec(a + b*x))/(2*b) - ((c + d*x)^3*csc(a + b*x)^2*sec(a + b*x))/(2*b)]
    @test_int [(c + d*x)^2*csc(a + b*x)^3*sec(a + b*x)^2, x, 36, (4*im*d^2*x*atan(ℯ^(im*(a + b*x))))/b^2 - (3*(c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b - (d^2*atanh(cos(a + b*x)))/b^3 - (2*c*d*atanh(sin(a + b*x)))/b^2 - (c*d*csc(a + b*x))/b^2 - (d^2*x*csc(a + b*x))/b^2 + (3*im*d*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (2*im*d^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + (2*im*d^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 - (3*im*d*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (3*d^2*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (3*d^2*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 + (3*(c + d*x)^2*sec(a + b*x))/(2*b) - ((c + d*x)^2*csc(a + b*x)^2*sec(a + b*x))/(2*b)]
    @test_int [(c + d*x)^1*csc(a + b*x)^3*sec(a + b*x)^2, x, 13, -((3*d*x*atanh(ℯ^(im*(a + b*x))))/b) - (3*c*atanh(cos(a + b*x)))/(2*b) - (d*atanh(sin(a + b*x)))/b^2 - (d*csc(a + b*x))/(2*b^2) + (3*im*d*PolyLog(2, -ℯ^(im*(a + b*x))))/(2*b^2) - (3*im*d*PolyLog(2, ℯ^(im*(a + b*x))))/(2*b^2) + (3*(c + d*x)*sec(a + b*x))/(2*b) - ((c + d*x)*csc(a + b*x)^2*sec(a + b*x))/(2*b), -((3*d*x*atanh(ℯ^(im*(a + b*x))))/b) + (3*d*x*atanh(cos(a + b*x)))/(2*b) - (3*(c + d*x)*atanh(cos(a + b*x)))/(2*b) - (d*atanh(sin(a + b*x)))/b^2 - (d*csc(a + b*x))/(2*b^2) + (3*im*d*PolyLog(2, -ℯ^(im*(a + b*x))))/(2*b^2) - (3*im*d*PolyLog(2, ℯ^(im*(a + b*x))))/(2*b^2) + (3*(c + d*x)*sec(a + b*x))/(2*b) - ((c + d*x)*csc(a + b*x)^2*sec(a + b*x))/(2*b)]
    @test_int [(csc(a + b*x)^3*sec(a + b*x)^2)/(c + d*x)^1, x, 0, CannotIntegrate((csc(a + b*x)^3*sec(a + b*x)^2)/(c + d*x), x)]
    @test_int [(csc(a + b*x)^3*sec(a + b*x)^2)/(c + d*x)^2, x, 0, CannotIntegrate((csc(a + b*x)^3*sec(a + b*x)^2)/(c + d*x)^2, x)]


    @test_int [x^m*csc(a + b*x)^3*sec(a + b*x)^2, x, 0, CannotIntegrate(x^m*csc(a + b*x)^3*sec(a + b*x)^2, x)]

    @test_int [x^3*csc(a + b*x)^3*sec(a + b*x)^2, x, 40, ((6*im)*x^2*atan(ℯ^(im*(a + b*x))))/b^2 - (6*x*atanh(ℯ^(im*(a + b*x))))/b^3 - (3*x^3*atanh(ℯ^(im*(a + b*x))))/b - (3*x^2*csc(a + b*x))/(2*b^2) + ((3*im)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^4 + (((9*im)/2)*x^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - ((6*im)*x*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + ((6*im)*x*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 - ((3*im)*PolyLog(2, ℯ^(im*(a + b*x))))/b^4 - (((9*im)/2)*x^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (9*x*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (6*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^4 - (6*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^4 + (9*x*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 - ((9*im)*PolyLog(4, -ℯ^(im*(a + b*x))))/b^4 + ((9*im)*PolyLog(4, ℯ^(im*(a + b*x))))/b^4 + (3*x^3*sec(a + b*x))/(2*b) - (x^3*csc(a + b*x)^2*sec(a + b*x))/(2*b)]
    @test_int [x^2*csc(a + b*x)^3*sec(a + b*x)^2, x, 29, ((4*im)*x*atan(ℯ^(im*(a + b*x))))/b^2 - (3*x^2*atanh(ℯ^(im*(a + b*x))))/b - atanh(cos(a + b*x))/b^3 - (x*csc(a + b*x))/b^2 + ((3*im)*x*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - ((2*im)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 + ((2*im)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 - ((3*im)*x*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (3*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (3*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 + (3*x^2*sec(a + b*x))/(2*b) - (x^2*csc(a + b*x)^2*sec(a + b*x))/(2*b)]
    @test_int [x*csc(a + b*x)^3*sec(a + b*x)^2, x, 13, (-3*x*atanh(ℯ^(im*(a + b*x))))/b - atanh(sin(a + b*x))/b^2 - csc(a + b*x)/(2*b^2) + (((3*im)/2)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (((3*im)/2)*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 + (3*x*sec(a + b*x))/(2*b) - (x*csc(a + b*x)^2*sec(a + b*x))/(2*b)]
    @test_int [(csc(a + b*x)^3*sec(a + b*x)^2)/x, x, 0, CannotIntegrate((csc(a + b*x)^3*sec(a + b*x)^2)/x, x)]
    @test_int [(csc(a + b*x)^3*sec(a + b*x)^2)/x^2, x, 0, CannotIntegrate((csc(a + b*x)^3*sec(a + b*x)^2)/x^2, x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*sec(a+b*x)^2*sin(a+b*x)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sec(a+b*x)^3*sin(a+b*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sec(a+b*x)^3*sin(a+b*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(c + d*x)^m*sec(a + b*x)^2*tan(a + b*x), x, 0, CannotIntegrate((c + d*x)^m*sec(a + b*x)^2*tan(a + b*x), x)]

    @test_int [(c + d*x)^4*sec(a + b*x)^2*tan(a + b*x), x, 7, (2*im*d*(c + d*x)^3)/b^2 - (6*d^2*(c + d*x)^2*log(1 + ℯ^(2*im*(a + b*x))))/b^3 + (6*im*d^3*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^4 - (3*d^4*PolyLog(3, -ℯ^(2*im*(a + b*x))))/b^5 + ((c + d*x)^4*sec(a + b*x)^2)/(2*b) - (2*d*(c + d*x)^3*tan(a + b*x))/b^2]
    @test_int [(c + d*x)^3*sec(a + b*x)^2*tan(a + b*x), x, 6, (3*im*d*(c + d*x)^2)/(2*b^2) - (3*d^2*(c + d*x)*log(1 + ℯ^(2*im*(a + b*x))))/b^3 + (3*im*d^3*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^4) + ((c + d*x)^3*sec(a + b*x)^2)/(2*b) - (3*d*(c + d*x)^2*tan(a + b*x))/(2*b^2)]
    @test_int [(c + d*x)^2*sec(a + b*x)^2*tan(a + b*x), x, 3, -((d^2*log(cos(a + b*x)))/b^3) + ((c + d*x)^2*sec(a + b*x)^2)/(2*b) - (d*(c + d*x)*tan(a + b*x))/b^2]
    @test_int [(c + d*x)^1*sec(a + b*x)^2*tan(a + b*x), x, 3, ((c + d*x)*sec(a + b*x)^2)/(2*b) - (d*tan(a + b*x))/(2*b^2)]
    @test_int [(sec(a + b*x)^2*tan(a + b*x))/(c + d*x)^1, x, 0, CannotIntegrate((sec(a + b*x)^2*tan(a + b*x))/(c + d*x), x)]
    @test_int [(sec(a + b*x)^2*tan(a + b*x))/(c + d*x)^2, x, 0, CannotIntegrate((sec(a + b*x)^2*tan(a + b*x))/(c + d*x)^2, x)]


    @test_int [(c + d*x)^m*sec(a + b*x)*tan(a + b*x)^2, x, 1, -Unintegrable((c + d*x)^m*sec(a + b*x), x) + Unintegrable((c + d*x)^m*sec(a + b*x)^3, x)]

    @test_int [(c + d*x)^3*sec(a + b*x)*tan(a + b*x)^2, x, 25, -((6*im*d^2*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b^3) + (im*(c + d*x)^3*atan(ℯ^(im*(a + b*x))))/b + (3*im*d^3*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^4 - (3*im*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/(2*b^2) - (3*im*d^3*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^4 + (3*im*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/(2*b^2) + (3*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 - (3*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 + (3*im*d^3*PolyLog(4, (-im)*ℯ^(im*(a + b*x))))/b^4 - (3*im*d^3*PolyLog(4, im*ℯ^(im*(a + b*x))))/b^4 - (3*d*(c + d*x)^2*sec(a + b*x))/(2*b^2) + ((c + d*x)^3*sec(a + b*x)*tan(a + b*x))/(2*b)]
    @test_int [(c + d*x)^2*sec(a + b*x)*tan(a + b*x)^2, x, 17, (im*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b + (d^2*atanh(sin(a + b*x)))/b^3 - (im*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 + (im*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 + (d^2*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 - (d^2*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 - (d*(c + d*x)*sec(a + b*x))/b^2 + ((c + d*x)^2*sec(a + b*x)*tan(a + b*x))/(2*b)]
    @test_int [(c + d*x)^1*sec(a + b*x)*tan(a + b*x)^2, x, 12, (im*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b - (im*d*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/(2*b^2) + (im*d*PolyLog(2, im*ℯ^(im*(a + b*x))))/(2*b^2) - (d*sec(a + b*x))/(2*b^2) + ((c + d*x)*sec(a + b*x)*tan(a + b*x))/(2*b)]
    @test_int [(sec(a + b*x)*tan(a + b*x)^2)/(c + d*x)^1, x, 1, -Unintegrable(sec(a + b*x)/(c + d*x), x) + Unintegrable(sec(a + b*x)^3/(c + d*x), x)]
    @test_int [(sec(a + b*x)*tan(a + b*x)^2)/(c + d*x)^2, x, 1, -Unintegrable(sec(a + b*x)/(c + d*x)^2, x) + Unintegrable(sec(a + b*x)^3/(c + d*x)^2, x)]


    @test_int [(c + d*x)^m*tan(a + b*x)^3, x, 0, Unintegrable((c + d*x)^m*tan(a + b*x)^3, x)]

    @test_int [(c + d*x)^3*tan(a + b*x)^3, x, 13, (3*im*d*(c + d*x)^2)/(2*b^2) + (c + d*x)^3/(2*b) - (im*(c + d*x)^4)/(4*d) - (3*d^2*(c + d*x)*log(1 + ℯ^(2*im*(a + b*x))))/b^3 + ((c + d*x)^3*log(1 + ℯ^(2*im*(a + b*x))))/b + (3*im*d^3*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^4) - (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) + (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (3*im*d^3*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(4*b^4) - (3*d*(c + d*x)^2*tan(a + b*x))/(2*b^2) + ((c + d*x)^3*tan(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^2*tan(a + b*x)^3, x, 9, (c*d*x)/b + (d^2*x^2)/(2*b) - (im*(c + d*x)^3)/(3*d) + ((c + d*x)^2*log(1 + ℯ^(2*im*(a + b*x))))/b - (d^2*log(cos(a + b*x)))/b^3 - (im*d*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 + (d^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) - (d*(c + d*x)*tan(a + b*x))/b^2 + ((c + d*x)^2*tan(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^1*tan(a + b*x)^3, x, 7, (d*x)/(2*b) - (im*(c + d*x)^2)/(2*d) + ((c + d*x)*log(1 + ℯ^(2*im*(a + b*x))))/b - (im*d*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (d*tan(a + b*x))/(2*b^2) + ((c + d*x)*tan(a + b*x)^2)/(2*b)]
    @test_int [tan(a + b*x)^3/(c + d*x)^1, x, 0, Unintegrable(tan(a + b*x)^3/(c + d*x), x)]
    @test_int [tan(a + b*x)^3/(c + d*x)^2, x, 0, Unintegrable(tan(a + b*x)^3/(c + d*x)^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [(c + d*x)^m*csc(a + b*x)*sec(a + b*x)^3, x, 0, CannotIntegrate((c + d*x)^m*csc(a + b*x)*sec(a + b*x)^3, x)]

    @test_int [(c + d*x)^4*csc(a + b*x)*sec(a + b*x)^3, x, 25, (2*im*d*(c + d*x)^3)/b^2 + (c + d*x)^4/(2*b) - (2*(c + d*x)^4*atanh(ℯ^(2*im*(a + b*x))))/b - (6*d^2*(c + d*x)^2*log(1 + ℯ^(2*im*(a + b*x))))/b^3 + (6*im*d^3*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^4 + (2*im*d*(c + d*x)^3*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (2*im*d*(c + d*x)^3*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 - (3*d^4*PolyLog(3, -ℯ^(2*im*(a + b*x))))/b^5 - (3*d^2*(c + d*x)^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/b^3 + (3*d^2*(c + d*x)^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^3 - (3*im*d^3*(c + d*x)*PolyLog(4, -ℯ^(2*im*(a + b*x))))/b^4 + (3*im*d^3*(c + d*x)*PolyLog(4, ℯ^(2*im*(a + b*x))))/b^4 + (3*d^4*PolyLog(5, -ℯ^(2*im*(a + b*x))))/(2*b^5) - (3*d^4*PolyLog(5, ℯ^(2*im*(a + b*x))))/(2*b^5) - (2*d*(c + d*x)^3*tan(a + b*x))/b^2 + ((c + d*x)^4*tan(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^3*csc(a + b*x)*sec(a + b*x)^3, x, 22, (3*im*d*(c + d*x)^2)/(2*b^2) + (c + d*x)^3/(2*b) - (2*(c + d*x)^3*atanh(ℯ^(2*im*(a + b*x))))/b - (3*d^2*(c + d*x)*log(1 + ℯ^(2*im*(a + b*x))))/b^3 + (3*im*d^3*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^4) + (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (3*d^2*(c + d*x)*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3) - (3*im*d^3*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(4*b^4) + (3*im*d^3*PolyLog(4, ℯ^(2*im*(a + b*x))))/(4*b^4) - (3*d*(c + d*x)^2*tan(a + b*x))/(2*b^2) + ((c + d*x)^3*tan(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^2*csc(a + b*x)*sec(a + b*x)^3, x, 17, (c*d*x)/b + (d^2*x^2)/(2*b) - (2*(c + d*x)^2*atanh(ℯ^(2*im*(a + b*x))))/b - (d^2*log(cos(a + b*x)))/b^3 + (im*d*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (im*d*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 - (d^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (d^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/(2*b^3) - (d*(c + d*x)*tan(a + b*x))/b^2 + ((c + d*x)^2*tan(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^1*csc(a + b*x)*sec(a + b*x)^3, x, 11, (d*x)/(2*b) - (2*d*x*atanh(ℯ^((2*im)*a + (2*im)*b*x)))/b + (c*log(tan(a + b*x)))/b + ((im/2)*d*PolyLog(2, -ℯ^((2*im)*(a + b*x))))/b^2 - ((im/2)*d*PolyLog(2, ℯ^((2*im)*(a + b*x))))/b^2 - (d*tan(a + b*x))/(2*b^2) + (c*tan(a + b*x)^2)/(2*b) + (d*x*tan(a + b*x)^2)/(2*b), (d*x)/(2*b) - (2*d*x*atanh(ℯ^(2*im*(a + b*x))))/b - (d*x*log(tan(a + b*x)))/b + ((c + d*x)*log(tan(a + b*x)))/b + (im*d*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (im*d*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^2) - (d*tan(a + b*x))/(2*b^2) + ((c + d*x)*tan(a + b*x)^2)/(2*b)]
    @test_int [(csc(a + b*x)*sec(a + b*x)^3)/(c + d*x)^1, x, 0, CannotIntegrate((csc(a + b*x)*sec(a + b*x)^3)/(c + d*x), x)]
    @test_int [(csc(a + b*x)*sec(a + b*x)^3)/(c + d*x)^2, x, 0, CannotIntegrate((csc(a + b*x)*sec(a + b*x)^3)/(c + d*x)^2, x)]


    @test_int [(c + d*x)^m*csc(a + b*x)^2*sec(a + b*x)^3, x, 0, CannotIntegrate((c + d*x)^m*csc(a + b*x)^2*sec(a + b*x)^3, x)]

    @test_int [(c + d*x)^3*csc(a + b*x)^2*sec(a + b*x)^3, x, 44, -((6*im*d^2*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b^3) - (3*im*(c + d*x)^3*atan(ℯ^(im*(a + b*x))))/b - (6*d*(c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b^2 - (3*(c + d*x)^3*csc(a + b*x))/(2*b) + (6*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 + (3*im*d^3*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^4 + (9*im*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/(2*b^2) - (3*im*d^3*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^4 - (9*im*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/(2*b^2) - (6*im*d^2*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^3 - (6*d^3*PolyLog(3, -ℯ^(im*(a + b*x))))/b^4 - (9*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (9*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 + (6*d^3*PolyLog(3, ℯ^(im*(a + b*x))))/b^4 - (9*im*d^3*PolyLog(4, (-im)*ℯ^(im*(a + b*x))))/b^4 + (9*im*d^3*PolyLog(4, im*ℯ^(im*(a + b*x))))/b^4 - (3*d*(c + d*x)^2*sec(a + b*x))/(2*b^2) + ((c + d*x)^3*csc(a + b*x)*sec(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^2*csc(a + b*x)^2*sec(a + b*x)^3, x, 31, -((3*im*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b) + (2*d^2*x*atanh(ℯ^(im*(a + b*x))))/b^2 - (6*d*(c + d*x)*atanh(ℯ^(im*(a + b*x))))/b^2 - (d^2*x*atanh(cos(a + b*x)))/b^2 + (d*(c + d*x)*atanh(cos(a + b*x)))/b^2 + (d^2*atanh(sin(a + b*x)))/b^3 - (3*(c + d*x)^2*csc(a + b*x))/(2*b) + (2*im*d^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^3 + (3*im*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (3*im*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 - (2*im*d^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^3 - (3*d^2*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (3*d^2*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 - (d*(c + d*x)*sec(a + b*x))/b^2 + ((c + d*x)^2*csc(a + b*x)*sec(a + b*x)^2)/(2*b)]
    @test_int [(c + d*x)^1*csc(a + b*x)^2*sec(a + b*x)^3, x, 13, -((3*im*d*x*atan(ℯ^(im*(a + b*x))))/b) - (d*atanh(cos(a + b*x)))/b^2 + (3*c*atanh(sin(a + b*x)))/(2*b) - (3*(c + d*x)*csc(a + b*x))/(2*b) + (3*im*d*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/(2*b^2) - (3*im*d*PolyLog(2, im*ℯ^(im*(a + b*x))))/(2*b^2) - (d*sec(a + b*x))/(2*b^2) + ((c + d*x)*csc(a + b*x)*sec(a + b*x)^2)/(2*b), -((3*im*d*x*atan(ℯ^(im*(a + b*x))))/b) - (d*atanh(cos(a + b*x)))/b^2 - (3*d*x*atanh(sin(a + b*x)))/(2*b) + (3*(c + d*x)*atanh(sin(a + b*x)))/(2*b) - (3*(c + d*x)*csc(a + b*x))/(2*b) + (3*im*d*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/(2*b^2) - (3*im*d*PolyLog(2, im*ℯ^(im*(a + b*x))))/(2*b^2) - (d*sec(a + b*x))/(2*b^2) + ((c + d*x)*csc(a + b*x)*sec(a + b*x)^2)/(2*b)]
    @test_int [(csc(a + b*x)^2*sec(a + b*x)^3)/(c + d*x)^1, x, 0, CannotIntegrate((csc(a + b*x)^2*sec(a + b*x)^3)/(c + d*x), x)]
    @test_int [(csc(a + b*x)^2*sec(a + b*x)^3)/(c + d*x)^2, x, 0, CannotIntegrate((csc(a + b*x)^2*sec(a + b*x)^3)/(c + d*x)^2, x)]


    @test_int [(c + d*x)^m*csc(a + b*x)^3*sec(a + b*x)^3, x, 0, CannotIntegrate((c + d*x)^m*csc(a + b*x)^3*sec(a + b*x)^3, x)]

    @test_int [(c + d*x)^3*csc(a + b*x)^3*sec(a + b*x)^3, x, 16, -((6*d^2*(c + d*x)*atanh(ℯ^(2*im*(a + b*x))))/b^3) - (4*(c + d*x)^3*atanh(ℯ^(2*im*(a + b*x))))/b - (3*d*(c + d*x)^2*csc(2*a + 2*b*x))/b^2 - (2*(c + d*x)^3*cot(2*a + 2*b*x)*csc(2*a + 2*b*x))/b + (3*im*d^3*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^4) + (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (3*im*d^3*PolyLog(2, ℯ^(2*im*(a + b*x))))/(2*b^4) - (3*im*d*(c + d*x)^2*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 - (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(2*im*(a + b*x))))/b^3 + (3*d^2*(c + d*x)*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^3 - (3*im*d^3*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(2*b^4) + (3*im*d^3*PolyLog(4, ℯ^(2*im*(a + b*x))))/(2*b^4)]
    @test_int [(c + d*x)^2*csc(a + b*x)^3*sec(a + b*x)^3, x, 10, -((4*(c + d*x)^2*atanh(ℯ^(2*im*(a + b*x))))/b) - (d^2*atanh(cos(2*a + 2*b*x)))/b^3 - (2*d*(c + d*x)*csc(2*a + 2*b*x))/b^2 - (2*(c + d*x)^2*cot(2*a + 2*b*x)*csc(2*a + 2*b*x))/b + (2*im*d*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (2*im*d*(c + d*x)*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2 - (d^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/b^3 + (d^2*PolyLog(3, ℯ^(2*im*(a + b*x))))/b^3]
    @test_int [(c + d*x)^1*csc(a + b*x)^3*sec(a + b*x)^3, x, 7, -((4*(c + d*x)*atanh(ℯ^(2*im*(a + b*x))))/b) - (d*csc(2*a + 2*b*x))/b^2 - (2*(c + d*x)*cot(2*a + 2*b*x)*csc(2*a + 2*b*x))/b + (im*d*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - (im*d*PolyLog(2, ℯ^(2*im*(a + b*x))))/b^2]
    @test_int [(csc(a + b*x)^3*sec(a + b*x)^3)/(c + d*x)^1, x, 1, 8*Unintegrable(csc(2*a + 2*b*x)^3/(c + d*x), x)]
    @test_int [(csc(a + b*x)^3*sec(a + b*x)^3)/(c + d*x)^2, x, 1, 8*Unintegrable(csc(2*a + 2*b*x)^3/(c + d*x)^2, x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*sec(a+b*x)^3*sin(a+b*x)^p=#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^(n/2)*sin(a+b*x)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^(n/2)*sin(a+b*x)^1=#


    @test_int [x*cos(a + b*x)^(5/2)*sin(a + b*x), x, 4, (-2*x*cos(a + b*x)^(7/2))/(7*b) + (20*Elliptic.F((a + b*x)/2, 2))/(147*b^2) + (20*sqrt(cos(a + b*x))*sin(a + b*x))/(147*b^2) + (4*cos(a + b*x)^(5/2)*sin(a + b*x))/(49*b^2)]
    @test_int [x*cos(a + b*x)^(3/2)*sin(a + b*x), x, 3, (-2*x*cos(a + b*x)^(5/2))/(5*b) + (12*Elliptic.E((a + b*x)/2, 2))/(25*b^2) + (4*cos(a + b*x)^(3/2)*sin(a + b*x))/(25*b^2)]
    @test_int [x*sqrt(cos(a + b*x))*sin(a + b*x), x, 3, (-2*x*cos(a + b*x)^(3/2))/(3*b) + (4*Elliptic.F((a + b*x)/2, 2))/(9*b^2) + (4*sqrt(cos(a + b*x))*sin(a + b*x))/(9*b^2)]
    @test_int [(x*sin(a + b*x))/sqrt(cos(a + b*x)), x, 2, (-2*x*sqrt(cos(a + b*x)))/b + (4*Elliptic.E((a + b*x)/2, 2))/b^2]
    @test_int [(x*sin(a + b*x))/cos(a + b*x)^(3/2), x, 2, (2*x)/(b*sqrt(cos(a + b*x))) - (4*Elliptic.F((a + b*x)/2, 2))/b^2]
    @test_int [(x*sin(a + b*x))/cos(a + b*x)^(5/2), x, 3, (2*x)/(3*b*cos(a + b*x)^(3/2)) + (4*Elliptic.E((a + b*x)/2, 2))/(3*b^2) - (4*sin(a + b*x))/(3*b^2*sqrt(cos(a + b*x)))]
    @test_int [(x*sin(a + b*x))/cos(a + b*x)^(7/2), x, 3, (2*x)/(5*b*cos(a + b*x)^(5/2)) - (4*Elliptic.F((a + b*x)/2, 2))/(15*b^2) - (4*sin(a + b*x))/(15*b^2*cos(a + b*x)^(3/2))]
    @test_int [(x*sin(a + b*x))/cos(a + b*x)^(9/2), x, 4, (2*x)/(7*b*cos(a + b*x)^(7/2)) + (12*Elliptic.E((a + b*x)/2, 2))/(35*b^2) - (4*sin(a + b*x))/(35*b^2*cos(a + b*x)^(5/2)) - (12*sin(a + b*x))/(35*b^2*sqrt(cos(a + b*x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sec(a+b*x)^(n/2)*sin(a+b*x)^1=#


    @test_int [x*sec(a + b*x)^(9/2)*sin(a + b*x), x, 5, (12*sqrt(cos(a + b*x))*Elliptic.E((a + b*x)/2, 2)*sqrt(sec(a + b*x)))/(35*b^2) + (2*x*sec(a + b*x)^(7/2))/(7*b) - (12*sqrt(sec(a + b*x))*sin(a + b*x))/(35*b^2) - (4*sec(a + b*x)^(5/2)*sin(a + b*x))/(35*b^2)]
    @test_int [x*sec(a + b*x)^(7/2)*sin(a + b*x), x, 4, (-4*sqrt(cos(a + b*x))*Elliptic.F((a + b*x)/2, 2)*sqrt(sec(a + b*x)))/(15*b^2) + (2*x*sec(a + b*x)^(5/2))/(5*b) - (4*sec(a + b*x)^(3/2)*sin(a + b*x))/(15*b^2)]
    @test_int [x*sec(a + b*x)^(5/2)*sin(a + b*x), x, 4, (4*sqrt(cos(a + b*x))*Elliptic.E((a + b*x)/2, 2)*sqrt(sec(a + b*x)))/(3*b^2) + (2*x*sec(a + b*x)^(3/2))/(3*b) - (4*sqrt(sec(a + b*x))*sin(a + b*x))/(3*b^2)]
    @test_int [x*sec(a + b*x)^(3/2)*sin(a + b*x), x, 3, (2*x*sqrt(sec(a + b*x)))/b - (4*sqrt(cos(a + b*x))*Elliptic.F((a + b*x)/2, 2)*sqrt(sec(a + b*x)))/b^2]
    @test_int [x*sqrt(sec(a + b*x))*sin(a + b*x), x, 3, (-2*x)/(b*sqrt(sec(a + b*x))) + (4*sqrt(cos(a + b*x))*Elliptic.E((a + b*x)/2, 2)*sqrt(sec(a + b*x)))/b^2]
    @test_int [(x*sin(a + b*x))/sqrt(sec(a + b*x)), x, 4, (-2*x)/(3*b*sec(a + b*x)^(3/2)) + (4*sqrt(cos(a + b*x))*Elliptic.F((a + b*x)/2, 2)*sqrt(sec(a + b*x)))/(9*b^2) + (4*sin(a + b*x))/(9*b^2*sqrt(sec(a + b*x)))]
    @test_int [(x*sin(a + b*x))/sec(a + b*x)^(3/2), x, 4, (-2*x)/(5*b*sec(a + b*x)^(5/2)) + (12*sqrt(cos(a + b*x))*Elliptic.E((a + b*x)/2, 2)*sqrt(sec(a + b*x)))/(25*b^2) + (4*sin(a + b*x))/(25*b^2*sec(a + b*x)^(3/2))]
    @test_int [(x*sin(a + b*x))/sec(a + b*x)^(5/2), x, 5, (-2*x)/(7*b*sec(a + b*x)^(7/2)) + (20*sqrt(cos(a + b*x))*Elliptic.F((a + b*x)/2, 2)*sqrt(sec(a + b*x)))/(147*b^2) + (4*sin(a + b*x))/(49*b^2*sec(a + b*x)^(5/2)) + (20*sin(a + b*x))/(147*b^2*sqrt(sec(a + b*x)))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^n*sin(a+b*x)^(p/2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^1*sin(a+b*x)^(p/2)=#


    @test_int [x*cos(a + b*x)*sin(a + b*x)^(5/2), x, 4, -((20*Elliptic.F((1/2)*(a - pi/2 + b*x), 2))/(147*b^2)) + (20*cos(a + b*x)*sqrt(sin(a + b*x)))/(147*b^2) + (4*cos(a + b*x)*sin(a + b*x)^(5/2))/(49*b^2) + (2*x*sin(a + b*x)^(7/2))/(7*b)]
    @test_int [x*cos(a + b*x)*sin(a + b*x)^(3/2), x, 3, -((12*Elliptic.E((1/2)*(a - pi/2 + b*x), 2))/(25*b^2)) + (4*cos(a + b*x)*sin(a + b*x)^(3/2))/(25*b^2) + (2*x*sin(a + b*x)^(5/2))/(5*b)]
    @test_int [x*cos(a + b*x)*sqrt(sin(a + b*x)), x, 3, -((4*Elliptic.F((1/2)*(a - pi/2 + b*x), 2))/(9*b^2)) + (4*cos(a + b*x)*sqrt(sin(a + b*x)))/(9*b^2) + (2*x*sin(a + b*x)^(3/2))/(3*b)]
    @test_int [(x*cos(a + b*x))/sqrt(sin(a + b*x)), x, 2, -((4*Elliptic.E((1/2)*(a - pi/2 + b*x), 2))/b^2) + (2*x*sqrt(sin(a + b*x)))/b]
    @test_int [(x*cos(a + b*x))/sin(a + b*x)^(3/2), x, 2, (4*Elliptic.F((1/2)*(a - pi/2 + b*x), 2))/b^2 - (2*x)/(b*sqrt(sin(a + b*x)))]
    @test_int [(x*cos(a + b*x))/sin(a + b*x)^(5/2), x, 3, -((4*Elliptic.E((1/2)*(a - pi/2 + b*x), 2))/(3*b^2)) - (2*x)/(3*b*sin(a + b*x)^(3/2)) - (4*cos(a + b*x))/(3*b^2*sqrt(sin(a + b*x)))]
    @test_int [(x*cos(a + b*x))/sin(a + b*x)^(7/2), x, 3, (4*Elliptic.F((1/2)*(a - pi/2 + b*x), 2))/(15*b^2) - (2*x)/(5*b*sin(a + b*x)^(5/2)) - (4*cos(a + b*x))/(15*b^2*sin(a + b*x)^(3/2))]
    @test_int [(x*cos(a + b*x))/sin(a + b*x)^(9/2), x, 4, -((12*Elliptic.E((1/2)*(a - pi/2 + b*x), 2))/(35*b^2)) - (2*x)/(7*b*sin(a + b*x)^(7/2)) - (4*cos(a + b*x))/(35*b^2*sin(a + b*x)^(5/2)) - (12*cos(a + b*x))/(35*b^2*sqrt(sin(a + b*x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(a+b*x)^1*csc(a+b*x)^(p/2)=#


    @test_int [x*cos(a + b*x)*csc(a + b*x)^(9/2), x, 5, -((12*cos(a + b*x)*sqrt(csc(a + b*x)))/(35*b^2)) - (4*cos(a + b*x)*csc(a + b*x)^(5/2))/(35*b^2) - (2*x*csc(a + b*x)^(7/2))/(7*b) - (12*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(35*b^2)]
    @test_int [x*cos(a + b*x)*csc(a + b*x)^(7/2), x, 4, -((4*cos(a + b*x)*csc(a + b*x)^(3/2))/(15*b^2)) - (2*x*csc(a + b*x)^(5/2))/(5*b) + (4*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(15*b^2)]
    @test_int [x*cos(a + b*x)*csc(a + b*x)^(5/2), x, 4, -((4*cos(a + b*x)*sqrt(csc(a + b*x)))/(3*b^2)) - (2*x*csc(a + b*x)^(3/2))/(3*b) - (4*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(3*b^2)]
    @test_int [x*cos(a + b*x)*csc(a + b*x)^(3/2), x, 3, -((2*x*sqrt(csc(a + b*x)))/b) + (4*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/b^2]
    @test_int [x*cos(a + b*x)*sqrt(csc(a + b*x)), x, 3, (2*x)/(b*sqrt(csc(a + b*x))) - (4*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/b^2]
    @test_int [(x*cos(a + b*x))/sqrt(csc(a + b*x)), x, 4, (2*x)/(3*b*csc(a + b*x)^(3/2)) + (4*cos(a + b*x))/(9*b^2*sqrt(csc(a + b*x))) - (4*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(9*b^2)]
    @test_int [(x*cos(a + b*x))/csc(a + b*x)^(3/2), x, 4, (2*x)/(5*b*csc(a + b*x)^(5/2)) + (4*cos(a + b*x))/(25*b^2*csc(a + b*x)^(3/2)) - (12*sqrt(csc(a + b*x))*Elliptic.E((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(25*b^2)]
    @test_int [(x*cos(a + b*x))/csc(a + b*x)^(5/2), x, 5, (2*x)/(7*b*csc(a + b*x)^(7/2)) + (4*cos(a + b*x))/(49*b^2*csc(a + b*x)^(5/2)) + (20*cos(a + b*x))/(147*b^2*sqrt(csc(a + b*x))) - (20*sqrt(csc(a + b*x))*Elliptic.F((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(147*b^2)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*Trig(a+b*x)^n*Trig(n*(a+b*x))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*csc(a+b*x)^n*sin(n*(a+b*x))^p=#


    @test_int [x*csc(x)*sin(3*x), x, 6, x^2/2 + (3*cos(x)^2)/4 + 2*x*cos(x)*sin(x) - sin(x)^2/4]


    @test_int [(c + d*x)^4*csc(x)*sin(3*x), x, 14, (3*d^4*x)/2 - d*(c + d*x)^3 + (c + d*x)^5/(5*d) - (9/2)*d^3*(c + d*x)*cos(x)^2 + 3*d*(c + d*x)^3*cos(x)^2 + 3*d^4*cos(x)*sin(x) - 6*d^2*(c + d*x)^2*cos(x)*sin(x) + 2*(c + d*x)^4*cos(x)*sin(x) + (3/2)*d^3*(c + d*x)*sin(x)^2 - d*(c + d*x)^3*sin(x)^2]
    @test_int [(c + d*x)^3*csc(x)*sin(3*x), x, 10, (-(3/2))*c*d^2*x - (3*d^3*x^2)/4 + (c + d*x)^4/(4*d) - (9/8)*d^3*cos(x)^2 + (9/4)*d*(c + d*x)^2*cos(x)^2 - 3*d^2*(c + d*x)*cos(x)*sin(x) + 2*(c + d*x)^3*cos(x)*sin(x) + (3/8)*d^3*sin(x)^2 - (3/4)*d*(c + d*x)^2*sin(x)^2]
    @test_int [(c + d*x)^2*csc(x)*sin(3*x), x, 10, -((d^2*x)/2) + (c + d*x)^3/(3*d) + (3/2)*d*(c + d*x)*cos(x)^2 - d^2*cos(x)*sin(x) + 2*(c + d*x)^2*cos(x)*sin(x) - (1/2)*d*(c + d*x)*sin(x)^2]
    @test_int [(c + d*x)^1*csc(x)*sin(3*x), x, 6, c*x + (d*x^2)/2 + (3/4)*d*cos(x)^2 + 2*(c + d*x)*cos(x)*sin(x) - (1/4)*d*sin(x)^2]
    @test_int [csc(x)*sin(3*x)/(c + d*x)^1, x, 12, (2*cos((2*c)/d)*CosIntegral((2*c)/d + 2*x))/d + log(c + d*x)/d + (2*sin((2*c)/d)*SinIntegral((2*c)/d + 2*x))/d]
    @test_int [csc(x)*sin(3*x)/(c + d*x)^2, x, 12, -((3*cos(x)^2)/(d*(c + d*x))) + (4*CosIntegral((2*c)/d + 2*x)*sin((2*c)/d))/d^2 + sin(x)^2/(d*(c + d*x)) - (4*cos((2*c)/d)*SinIntegral((2*c)/d + 2*x))/d^2]
    @test_int [csc(x)*sin(3*x)/(c + d*x)^3, x, 16, -((3*cos(x)^2)/(2*d*(c + d*x)^2)) - (4*cos((2*c)/d)*CosIntegral((2*c)/d + 2*x))/d^3 + (4*cos(x)*sin(x))/(d^2*(c + d*x)) + sin(x)^2/(2*d*(c + d*x)^2) - (4*sin((2*c)/d)*SinIntegral((2*c)/d + 2*x))/d^3]


    @test_int [(c + d*x)^4*csc(a + b*x)*sin(3*a + 3*b*x), x, 14, (3*d^4*x)/(2*b^4) - (d*(c + d*x)^3)/b^2 + (c + d*x)^5/(5*d) - (9*d^3*(c + d*x)*cos(a + b*x)^2)/(2*b^4) + (3*d*(c + d*x)^3*cos(a + b*x)^2)/b^2 + (3*d^4*cos(a + b*x)*sin(a + b*x))/b^5 - (6*d^2*(c + d*x)^2*cos(a + b*x)*sin(a + b*x))/b^3 + (2*(c + d*x)^4*cos(a + b*x)*sin(a + b*x))/b + (3*d^3*(c + d*x)*sin(a + b*x)^2)/(2*b^4) - (d*(c + d*x)^3*sin(a + b*x)^2)/b^2]
    @test_int [(c + d*x)^3*csc(a + b*x)*sin(3*a + 3*b*x), x, 10, -((3*c*d^2*x)/(2*b^2)) - (3*d^3*x^2)/(4*b^2) + (c + d*x)^4/(4*d) - (9*d^3*cos(a + b*x)^2)/(8*b^4) + (9*d*(c + d*x)^2*cos(a + b*x)^2)/(4*b^2) - (3*d^2*(c + d*x)*cos(a + b*x)*sin(a + b*x))/b^3 + (2*(c + d*x)^3*cos(a + b*x)*sin(a + b*x))/b + (3*d^3*sin(a + b*x)^2)/(8*b^4) - (3*d*(c + d*x)^2*sin(a + b*x)^2)/(4*b^2)]
    @test_int [(c + d*x)^2*csc(a + b*x)*sin(3*a + 3*b*x), x, 10, -((d^2*x)/(2*b^2)) + (c + d*x)^3/(3*d) + (3*d*(c + d*x)*cos(a + b*x)^2)/(2*b^2) - (d^2*cos(a + b*x)*sin(a + b*x))/b^3 + (2*(c + d*x)^2*cos(a + b*x)*sin(a + b*x))/b - (d*(c + d*x)*sin(a + b*x)^2)/(2*b^2)]
    @test_int [(c + d*x)^1*csc(a + b*x)*sin(3*a + 3*b*x), x, 6, c*x + (d*x^2)/2 + (3*d*cos(a + b*x)^2)/(4*b^2) + (2*(c + d*x)*cos(a + b*x)*sin(a + b*x))/b - (d*sin(a + b*x)^2)/(4*b^2)]
    @test_int [csc(a + b*x)*sin(3*a + 3*b*x)/(c + d*x)^1, x, 12, (2*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/d + log(c + d*x)/d - (2*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d]
    @test_int [csc(a + b*x)*sin(3*a + 3*b*x)/(c + d*x)^2, x, 12, -((3*cos(a + b*x)^2)/(d*(c + d*x))) - (4*b*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/d^2 + sin(a + b*x)^2/(d*(c + d*x)) - (4*b*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^2]
    @test_int [csc(a + b*x)*sin(3*a + 3*b*x)/(c + d*x)^3, x, 16, -((3*cos(a + b*x)^2)/(2*d*(c + d*x)^2)) - (4*b^2*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/d^3 + (4*b*cos(a + b*x)*sin(a + b*x))/(d^2*(c + d*x)) + sin(a + b*x)^2/(2*d*(c + d*x)^2) + (4*b^2*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^3]
    @test_int [csc(a + b*x)*sin(3*a + 3*b*x)/(c + d*x)^4, x, 16, -((2*b^2)/(3*d^3*(c + d*x))) - cos(a + b*x)^2/(d*(c + d*x)^3) + (2*b^2*cos(a + b*x)^2)/(d^3*(c + d*x)) + (8*b^3*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/(3*d^4) + (4*b*cos(a + b*x)*sin(a + b*x))/(3*d^2*(c + d*x)^2) + sin(a + b*x)^2/(3*d*(c + d*x)^3) - (2*b^2*sin(a + b*x)^2)/(3*d^3*(c + d*x)) + (8*b^3*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(3*d^4)]


    @test_int [(c + d*x)^3*csc(a + b*x)^2*sin(3*a + 3*b*x), x, 20, -((6*(c + d*x)^3*atanh(ℯ^(im*(a + b*x))))/b) - (24*d^2*(c + d*x)*cos(a + b*x))/b^3 + (4*(c + d*x)^3*cos(a + b*x))/b + (9*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (9*im*d*(c + d*x)^2*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (18*d^2*(c + d*x)*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (18*d^2*(c + d*x)*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 - (18*im*d^3*PolyLog(4, -ℯ^(im*(a + b*x))))/b^4 + (18*im*d^3*PolyLog(4, ℯ^(im*(a + b*x))))/b^4 + (24*d^3*sin(a + b*x))/b^4 - (12*d*(c + d*x)^2*sin(a + b*x))/b^2]
    @test_int [(c + d*x)^2*csc(a + b*x)^2*sin(3*a + 3*b*x), x, 16, -((6*(c + d*x)^2*atanh(ℯ^(im*(a + b*x))))/b) - (8*d^2*cos(a + b*x))/b^3 + (4*(c + d*x)^2*cos(a + b*x))/b + (6*im*d*(c + d*x)*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (6*im*d*(c + d*x)*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (6*d^2*PolyLog(3, -ℯ^(im*(a + b*x))))/b^3 + (6*d^2*PolyLog(3, ℯ^(im*(a + b*x))))/b^3 - (8*d*(c + d*x)*sin(a + b*x))/b^2]
    @test_int [(c + d*x)^1*csc(a + b*x)^2*sin(3*a + 3*b*x), x, 12, -((6*(c + d*x)*atanh(ℯ^(im*(a + b*x))))/b) + (4*(c + d*x)*cos(a + b*x))/b + (3*im*d*PolyLog(2, -ℯ^(im*(a + b*x))))/b^2 - (3*im*d*PolyLog(2, ℯ^(im*(a + b*x))))/b^2 - (4*d*sin(a + b*x))/b^2]
    @test_int [csc(a + b*x)^2*sin(3*a + 3*b*x)/(c + d*x)^1, x, 9, 3*Unintegrable(csc(a + b*x)/(c + d*x), x) - (4*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/d - (4*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d]
    @test_int [csc(a + b*x)^2*sin(3*a + 3*b*x)/(c + d*x)^2, x, 11, -((4*b*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/d^2) + 3*Unintegrable(csc(a + b*x)/(c + d*x)^2, x) + (4*sin(a + b*x))/(d*(c + d*x)) + (4*b*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d^2]
    @test_int [csc(a + b*x)^2*sin(3*a + 3*b*x)/(c + d*x)^3, x, 13, (2*b*cos(a + b*x))/(d^2*(c + d*x)) + 3*Unintegrable(csc(a + b*x)/(c + d*x)^3, x) + (2*b^2*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/d^3 + (2*sin(a + b*x))/(d*(c + d*x)^2) + (2*b^2*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d^3]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sec(a+b*x)^n*sin(n*(a+b*x))^p=#


    @test_int [(c + d*x)^4*sec(a + b*x)*sin(3*a + 3*b*x), x, 20, (6*c*d^3*x)/b^3 + (3*d^4*x^2)/b^3 - (c + d*x)^4/b - (im*(c + d*x)^5)/(5*d) + ((c + d*x)^4*log(1 + ℯ^(2*im*(a + b*x))))/b - (2*im*d*(c + d*x)^3*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 + (3*d^2*(c + d*x)^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/b^3 + (3*im*d^3*(c + d*x)*PolyLog(4, -ℯ^(2*im*(a + b*x))))/b^4 - (3*d^4*PolyLog(5, -ℯ^(2*im*(a + b*x))))/(2*b^5) - (6*d^3*(c + d*x)*cos(a + b*x)*sin(a + b*x))/b^4 + (4*d*(c + d*x)^3*cos(a + b*x)*sin(a + b*x))/b^2 + (3*d^4*sin(a + b*x)^2)/b^5 - (6*d^2*(c + d*x)^2*sin(a + b*x)^2)/b^3 + (2*(c + d*x)^4*sin(a + b*x)^2)/b]
    @test_int [(c + d*x)^3*sec(a + b*x)*sin(3*a + 3*b*x), x, 19, (3*d^3*x)/(2*b^3) - (c + d*x)^3/b - (im*(c + d*x)^4)/(4*d) + ((c + d*x)^3*log(1 + ℯ^(2*im*(a + b*x))))/b - (3*im*d*(c + d*x)^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) + (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (3*im*d^3*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(4*b^4) - (3*d^3*cos(a + b*x)*sin(a + b*x))/(2*b^4) + (3*d*(c + d*x)^2*cos(a + b*x)*sin(a + b*x))/b^2 - (3*d^2*(c + d*x)*sin(a + b*x)^2)/b^3 + (2*(c + d*x)^3*sin(a + b*x)^2)/b]
    @test_int [(c + d*x)^2*sec(a + b*x)*sin(3*a + 3*b*x), x, 14, -((2*c*d*x)/b) - (d^2*x^2)/b - (im*(c + d*x)^3)/(3*d) + ((c + d*x)^2*log(1 + ℯ^(2*im*(a + b*x))))/b - (im*d*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 + (d^2*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (2*d*(c + d*x)*cos(a + b*x)*sin(a + b*x))/b^2 - (d^2*sin(a + b*x)^2)/b^3 + (2*(c + d*x)^2*sin(a + b*x)^2)/b]
    @test_int [(c + d*x)^1*sec(a + b*x)*sin(3*a + 3*b*x), x, 13, -((d*x)/b) - (im*(c + d*x)^2)/(2*d) + ((c + d*x)*log(1 + ℯ^(2*im*(a + b*x))))/b - (im*d*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) + (d*cos(a + b*x)*sin(a + b*x))/b^2 + (2*(c + d*x)*sin(a + b*x)^2)/b]
    @test_int [sec(a + b*x)*sin(3*a + 3*b*x)/(c + d*x)^1, x, 13, -Unintegrable(tan(a + b*x)/(c + d*x), x) + (2*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/d + (2*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d]
    @test_int [sec(a + b*x)*sin(3*a + 3*b*x)/(c + d*x)^2, x, 15, (4*b*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/d^2 - Unintegrable(tan(a + b*x)/(c + d*x)^2, x) - (2*sin(2*a + 2*b*x))/(d*(c + d*x)) - (4*b*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^2]
    @test_int [sec(a + b*x)*sin(3*a + 3*b*x)/(c + d*x)^3, x, 17, -((2*b*cos(2*a + 2*b*x))/(d^2*(c + d*x))) - Unintegrable(tan(a + b*x)/(c + d*x)^3, x) - (4*b^2*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/d^3 - sin(2*a + 2*b*x)/(d*(c + d*x)^2) - (4*b^2*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^3]


    @test_int [(c + d*x)^3*sec(a + b*x)^2*sin(3*a + 3*b*x), x, 19, -((6*im*d*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b^2) + (24*d^2*(c + d*x)*cos(a + b*x))/b^3 - (4*(c + d*x)^3*cos(a + b*x))/b + (6*im*d^2*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 - (6*im*d^2*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 - (6*d^3*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^4 + (6*d^3*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^4 - ((c + d*x)^3*sec(a + b*x))/b - (24*d^3*sin(a + b*x))/b^4 + (12*d*(c + d*x)^2*sin(a + b*x))/b^2]
    @test_int [(c + d*x)^2*sec(a + b*x)^2*sin(3*a + 3*b*x), x, 15, -((4*im*d*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b^2) + (8*d^2*cos(a + b*x))/b^3 - (4*(c + d*x)^2*cos(a + b*x))/b + (2*im*d^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^3 - (2*im*d^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^3 - ((c + d*x)^2*sec(a + b*x))/b + (8*d*(c + d*x)*sin(a + b*x))/b^2]
    @test_int [(c + d*x)^1*sec(a + b*x)^2*sin(3*a + 3*b*x), x, 9, (d*atanh(sin(a + b*x)))/b^2 - (4*(c + d*x)*cos(a + b*x))/b - ((c + d*x)*sec(a + b*x))/b + (4*d*sin(a + b*x))/b^2]
    @test_int [sec(a + b*x)^2*sin(3*a + 3*b*x)/(c + d*x)^1, x, 9, -CannotIntegrate((sec(a + b*x)*tan(a + b*x))/(c + d*x), x) + (4*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/d + (4*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d]
    @test_int [sec(a + b*x)^2*sin(3*a + 3*b*x)/(c + d*x)^2, x, 11, (4*b*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/d^2 - CannotIntegrate((sec(a + b*x)*tan(a + b*x))/(c + d*x)^2, x) - (4*sin(a + b*x))/(d*(c + d*x)) - (4*b*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d^2]
    @test_int [sec(a + b*x)^2*sin(3*a + 3*b*x)/(c + d*x)^3, x, 13, -((2*b*cos(a + b*x))/(d^2*(c + d*x))) - CannotIntegrate((sec(a + b*x)*tan(a + b*x))/(c + d*x)^3, x) - (2*b^2*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/d^3 - (2*sin(a + b*x))/(d*(c + d*x)^2) - (2*b^2*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d^3]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sec(a+b*x)^n*cos(n*(a+b*x))^p=#


    @test_int [x*cos(2*x)*sec(x), x, 12, 2*im*x*atan(ℯ^(im*x)) + 2*cos(x) - im*PolyLog(2, (-im)*ℯ^(im*x)) + im*PolyLog(2, im*ℯ^(im*x)) + 2*x*sin(x)]
    @test_int [x*cos(2*x)*sec(x)^2, x, 5, x^2 - log(cos(x)) - x*tan(x)]
    @test_int [x*cos(2*x)*sec(x)^3, x, 19, -3*im*x*atan(ℯ^(im*x)) + (3/2)*im*PolyLog(2, (-im)*ℯ^(im*x)) - (3/2)*im*PolyLog(2, im*ℯ^(im*x)) + sec(x)/2 - (1/2)*x*sec(x)*tan(x)]


    #= ::Section:: =#
    #=Integrands*of*the*form*(c+d*x)^m*csc(a+b*x)^n*cos(n*(a+b*x))^p=#
    end
