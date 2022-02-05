@testset "4.2.10 (c+d x)^m (a+b cos)^n" begin
    @variables a, b, c, d, e, f, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cos(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*cos(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cos(e+f*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(a + b*x)*(c + d*x)^4, x, 5, -((24*d^3*(c + d*x)*cos(a + b*x))/b^4) + (4*d*(c + d*x)^3*cos(a + b*x))/b^2 + (24*d^4*sin(a + b*x))/b^5 - (12*d^2*(c + d*x)^2*sin(a + b*x))/b^3 + ((c + d*x)^4*sin(a + b*x))/b]
    @test_int [cos(a + b*x)*(c + d*x)^3, x, 4, -((6*d^3*cos(a + b*x))/b^4) + (3*d*(c + d*x)^2*cos(a + b*x))/b^2 - (6*d^2*(c + d*x)*sin(a + b*x))/b^3 + ((c + d*x)^3*sin(a + b*x))/b]
    @test_int [cos(a + b*x)*(c + d*x)^2, x, 3, (2*d*(c + d*x)*cos(a + b*x))/b^2 - (2*d^2*sin(a + b*x))/b^3 + ((c + d*x)^2*sin(a + b*x))/b]
    @test_int [cos(a + b*x)*(c + d*x)^1, x, 2, (d*cos(a + b*x))/b^2 + ((c + d*x)*sin(a + b*x))/b]
    @test_int [cos(a + b*x)/(c + d*x)^1, x, 3, (cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/d - (sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d]
    @test_int [cos(a + b*x)/(c + d*x)^2, x, 4, -(cos(a + b*x)/(d*(c + d*x))) - (b*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/d^2 - (b*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/d^2]
    @test_int [cos(a + b*x)/(c + d*x)^3, x, 5, -(cos(a + b*x)/(2*d*(c + d*x)^2)) - (b^2*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(2*d^3) + (b*sin(a + b*x))/(2*d^2*(c + d*x)) + (b^2*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(2*d^3)]
    @test_int [cos(a + b*x)/(c + d*x)^4, x, 6, -(cos(a + b*x)/(3*d*(c + d*x)^3)) + (b^2*cos(a + b*x))/(6*d^3*(c + d*x)) + (b^3*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(6*d^4) + (b*sin(a + b*x))/(6*d^2*(c + d*x)^2) + (b^3*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(6*d^4)]


    @test_int [cos(a + b*x)^2*(c + d*x)^4, x, 6, (3*d^4*x)/(4*b^4) - (d*(c + d*x)^3)/(2*b^2) + (c + d*x)^5/(10*d) - (3*d^3*(c + d*x)*cos(a + b*x)^2)/(2*b^4) + (d*(c + d*x)^3*cos(a + b*x)^2)/b^2 + (3*d^4*cos(a + b*x)*sin(a + b*x))/(4*b^5) - (3*d^2*(c + d*x)^2*cos(a + b*x)*sin(a + b*x))/(2*b^3) + ((c + d*x)^4*cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [cos(a + b*x)^2*(c + d*x)^3, x, 4, -((3*c*d^2*x)/(4*b^2)) - (3*d^3*x^2)/(8*b^2) + (c + d*x)^4/(8*d) - (3*d^3*cos(a + b*x)^2)/(8*b^4) + (3*d*(c + d*x)^2*cos(a + b*x)^2)/(4*b^2) - (3*d^2*(c + d*x)*cos(a + b*x)*sin(a + b*x))/(4*b^3) + ((c + d*x)^3*cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [cos(a + b*x)^2*(c + d*x)^2, x, 4, -((d^2*x)/(4*b^2)) + (c + d*x)^3/(6*d) + (d*(c + d*x)*cos(a + b*x)^2)/(2*b^2) - (d^2*cos(a + b*x)*sin(a + b*x))/(4*b^3) + ((c + d*x)^2*cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [cos(a + b*x)^2*(c + d*x)^1, x, 2, (c*x)/2 + (d*x^2)/4 + (d*cos(a + b*x)^2)/(4*b^2) + ((c + d*x)*cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [cos(a + b*x)^2/(c + d*x)^1, x, 5, (cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/(2*d) + log(c + d*x)/(2*d) - (sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/(2*d)]
    @test_int [cos(a + b*x)^2/(c + d*x)^2, x, 5, -(cos(a + b*x)^2/(d*(c + d*x))) - (b*CosIntegral((2*b*c)/d + 2*b*x)*sin(2*a - (2*b*c)/d))/d^2 - (b*cos(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^2]
    @test_int [cos(a + b*x)^2/(c + d*x)^3, x, 7, -(cos(a + b*x)^2/(2*d*(c + d*x)^2)) - (b^2*cos(2*a - (2*b*c)/d)*CosIntegral((2*b*c)/d + 2*b*x))/d^3 + (b*cos(a + b*x)*sin(a + b*x))/(d^2*(c + d*x)) + (b^2*sin(2*a - (2*b*c)/d)*SinIntegral((2*b*c)/d + 2*b*x))/d^3]


    @test_int [cos(a + b*x)^3*(c + d*x)^4, x, 12, -((160*d^3*(c + d*x)*cos(a + b*x))/(9*b^4)) + (8*d*(c + d*x)^3*cos(a + b*x))/(3*b^2) - (8*d^3*(c + d*x)*cos(a + b*x)^3)/(27*b^4) + (4*d*(c + d*x)^3*cos(a + b*x)^3)/(9*b^2) + (488*d^4*sin(a + b*x))/(27*b^5) - (80*d^2*(c + d*x)^2*sin(a + b*x))/(9*b^3) + (2*(c + d*x)^4*sin(a + b*x))/(3*b) - (4*d^2*(c + d*x)^2*cos(a + b*x)^2*sin(a + b*x))/(9*b^3) + ((c + d*x)^4*cos(a + b*x)^2*sin(a + b*x))/(3*b) - (8*d^4*sin(a + b*x)^3)/(81*b^5)]
    @test_int [cos(a + b*x)^3*(c + d*x)^3, x, 8, -((40*d^3*cos(a + b*x))/(9*b^4)) + (2*d*(c + d*x)^2*cos(a + b*x))/b^2 - (2*d^3*cos(a + b*x)^3)/(27*b^4) + (d*(c + d*x)^2*cos(a + b*x)^3)/(3*b^2) - (40*d^2*(c + d*x)*sin(a + b*x))/(9*b^3) + (2*(c + d*x)^3*sin(a + b*x))/(3*b) - (2*d^2*(c + d*x)*cos(a + b*x)^2*sin(a + b*x))/(9*b^3) + ((c + d*x)^3*cos(a + b*x)^2*sin(a + b*x))/(3*b)]
    @test_int [cos(a + b*x)^3*(c + d*x)^2, x, 6, (4*d*(c + d*x)*cos(a + b*x))/(3*b^2) + (2*d*(c + d*x)*cos(a + b*x)^3)/(9*b^2) - (14*d^2*sin(a + b*x))/(9*b^3) + (2*(c + d*x)^2*sin(a + b*x))/(3*b) + ((c + d*x)^2*cos(a + b*x)^2*sin(a + b*x))/(3*b) + (2*d^2*sin(a + b*x)^3)/(27*b^3)]
    @test_int [cos(a + b*x)^3*(c + d*x)^1, x, 3, (2*d*cos(a + b*x))/(3*b^2) + (d*cos(a + b*x)^3)/(9*b^2) + (2*(c + d*x)*sin(a + b*x))/(3*b) + ((c + d*x)*cos(a + b*x)^2*sin(a + b*x))/(3*b)]
    @test_int [cos(a + b*x)^3/(c + d*x)^1, x, 8, (3*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(4*d) + (cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(4*d) - (3*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(4*d) - (sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(4*d)]
    @test_int [cos(a + b*x)^3/(c + d*x)^2, x, 8, -(cos(a + b*x)^3/(d*(c + d*x))) - (3*b*CosIntegral((3*b*c)/d + 3*b*x)*sin(3*a - (3*b*c)/d))/(4*d^2) - (3*b*CosIntegral((b*c)/d + b*x)*sin(a - (b*c)/d))/(4*d^2) - (3*b*cos(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(4*d^2) - (3*b*cos(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(4*d^2)]
    @test_int [cos(a + b*x)^3/(c + d*x)^3, x, 12, -(cos(a + b*x)^3/(2*d*(c + d*x)^2)) - (3*b^2*cos(a - (b*c)/d)*CosIntegral((b*c)/d + b*x))/(8*d^3) - (9*b^2*cos(3*a - (3*b*c)/d)*CosIntegral((3*b*c)/d + 3*b*x))/(8*d^3) + (3*b*cos(a + b*x)^2*sin(a + b*x))/(2*d^2*(c + d*x)) + (3*b^2*sin(a - (b*c)/d)*SinIntegral((b*c)/d + b*x))/(8*d^3) + (9*b^2*sin(3*a - (3*b*c)/d)*SinIntegral((3*b*c)/d + 3*b*x))/(8*d^3)]


    @test_int [x^3*cos(a + b*x)^4, x, 8, -((45*x^2)/(128*b^2)) + (3*x^4)/32 - (45*cos(a + b*x)^2)/(128*b^4) + (9*x^2*cos(a + b*x)^2)/(16*b^2) - (3*cos(a + b*x)^4)/(128*b^4) + (3*x^2*cos(a + b*x)^4)/(16*b^2) - (45*x*cos(a + b*x)*sin(a + b*x))/(64*b^3) + (3*x^3*cos(a + b*x)*sin(a + b*x))/(8*b) - (3*x*cos(a + b*x)^3*sin(a + b*x))/(32*b^3) + (x^3*cos(a + b*x)^3*sin(a + b*x))/(4*b)]
    @test_int [x^2*cos(a + b*x)^4, x, 8, -((15*x)/(64*b^2)) + x^3/8 + (3*x*cos(a + b*x)^2)/(8*b^2) + (x*cos(a + b*x)^4)/(8*b^2) - (15*cos(a + b*x)*sin(a + b*x))/(64*b^3) + (3*x^2*cos(a + b*x)*sin(a + b*x))/(8*b) - (cos(a + b*x)^3*sin(a + b*x))/(32*b^3) + (x^2*cos(a + b*x)^3*sin(a + b*x))/(4*b)]
    @test_int [x^1*cos(a + b*x)^4, x, 3, (3*x^2)/16 + (3*cos(a + b*x)^2)/(16*b^2) + cos(a + b*x)^4/(16*b^2) + (3*x*cos(a + b*x)*sin(a + b*x))/(8*b) + (x*cos(a + b*x)^3*sin(a + b*x))/(4*b)]
    @test_int [cos(a + b*x)^4/x^1, x, 8, (1/2)*cos(2*a)*CosIntegral(2*b*x) + (1/8)*cos(4*a)*CosIntegral(4*b*x) + (3*log(x))/8 - (1/2)*sin(2*a)*SinIntegral(2*b*x) - (1/8)*sin(4*a)*SinIntegral(4*b*x)]
    @test_int [cos(a + b*x)^4/x^2, x, 8, -(cos(a + b*x)^4/x) - b*CosIntegral(2*b*x)*sin(2*a) - (1/2)*b*CosIntegral(4*b*x)*sin(4*a) - b*cos(2*a)*SinIntegral(2*b*x) - (1/2)*b*cos(4*a)*SinIntegral(4*b*x)]
    @test_int [cos(a + b*x)^4/x^3, x, 14, -(cos(a + b*x)^4/(2*x^2)) - b^2*cos(2*a)*CosIntegral(2*b*x) - b^2*cos(4*a)*CosIntegral(4*b*x) + (2*b*cos(a + b*x)^3*sin(a + b*x))/x + b^2*sin(2*a)*SinIntegral(2*b*x) + b^2*sin(4*a)*SinIntegral(4*b*x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sec(a + b*x)*(c + d*x)^3, x, 9, -((2*im*(c + d*x)^3*atan(ℯ^(im*(a + b*x))))/b) + (3*im*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (3*im*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 - (6*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (6*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 - (6*im*d^3*PolyLog(4, (-im)*ℯ^(im*(a + b*x))))/b^4 + (6*im*d^3*PolyLog(4, im*ℯ^(im*(a + b*x))))/b^4]
    @test_int [sec(a + b*x)*(c + d*x)^2, x, 7, -((2*im*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b) + (2*im*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (2*im*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 - (2*d^2*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (2*d^2*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3]
    @test_int [sec(a + b*x)*(c + d*x)^1, x, 5, -((2*im*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b) + (im*d*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (im*d*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2]
    @test_int [sec(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(sec(a + b*x)/(c + d*x), x)]


    @test_int [sec(a + b*x)^2*(c + d*x)^3, x, 6, -((im*(c + d*x)^3)/b) + (3*d*(c + d*x)^2*log(1 + ℯ^(2*im*(a + b*x))))/b^2 - (3*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^3 + (3*d^3*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^4) + ((c + d*x)^3*tan(a + b*x))/b]
    @test_int [sec(a + b*x)^2*(c + d*x)^2, x, 5, -((im*(c + d*x)^2)/b) + (2*d*(c + d*x)*log(1 + ℯ^(2*im*(a + b*x))))/b^2 - (im*d^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^3 + ((c + d*x)^2*tan(a + b*x))/b]
    @test_int [sec(a + b*x)^2*(c + d*x)^1, x, 2, (d*log(cos(a + b*x)))/b^2 + ((c + d*x)*tan(a + b*x))/b]
    @test_int [sec(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(sec(a + b*x)^2/(c + d*x), x)]


    @test_int [sec(a + b*x)^3*(c + d*x)^3, x, 15, -((6*im*d^2*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b^3) - (im*(c + d*x)^3*atan(ℯ^(im*(a + b*x))))/b + (3*im*d^3*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^4 + (3*im*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/(2*b^2) - (3*im*d^3*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^4 - (3*im*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(a + b*x))))/(2*b^2) - (3*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (3*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 - (3*im*d^3*PolyLog(4, (-im)*ℯ^(im*(a + b*x))))/b^4 + (3*im*d^3*PolyLog(4, im*ℯ^(im*(a + b*x))))/b^4 - (3*d*(c + d*x)^2*sec(a + b*x))/(2*b^2) + ((c + d*x)^3*sec(a + b*x)*tan(a + b*x))/(2*b)]
    @test_int [sec(a + b*x)^3*(c + d*x)^2, x, 9, -((im*(c + d*x)^2*atan(ℯ^(im*(a + b*x))))/b) + (d^2*atanh(sin(a + b*x)))/b^3 + (im*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/b^2 - (im*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(a + b*x))))/b^2 - (d^2*PolyLog(3, (-im)*ℯ^(im*(a + b*x))))/b^3 + (d^2*PolyLog(3, im*ℯ^(im*(a + b*x))))/b^3 - (d*(c + d*x)*sec(a + b*x))/b^2 + ((c + d*x)^2*sec(a + b*x)*tan(a + b*x))/(2*b)]
    @test_int [sec(a + b*x)^3*(c + d*x)^1, x, 6, -((im*(c + d*x)*atan(ℯ^(im*(a + b*x))))/b) + (im*d*PolyLog(2, (-im)*ℯ^(im*(a + b*x))))/(2*b^2) - (im*d*PolyLog(2, im*ℯ^(im*(a + b*x))))/(2*b^2) - (d*sec(a + b*x))/(2*b^2) + ((c + d*x)*sec(a + b*x)*tan(a + b*x))/(2*b)]
    @test_int [sec(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(sec(a + b*x)^2/(c + d*x), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*cos(e+f*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(a + b*x)*(c + d*x)^(5/2), x, 8, (5*d*(c + d*x)^(3/2)*cos(a + b*x))/(2*b^2) + (15*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4*b^(7/2)) + (15*d^(5/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(4*b^(7/2)) - (15*d^2*sqrt(c + d*x)*sin(a + b*x))/(4*b^3) + ((c + d*x)^(5/2)*sin(a + b*x))/b]
    @test_int [cos(a + b*x)*(c + d*x)^(3/2), x, 7, (3*d*sqrt(c + d*x)*cos(a + b*x))/(2*b^2) - (3*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(2*b^(5/2)) + (3*d^(3/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(2*b^(5/2)) + ((c + d*x)^(3/2)*sin(a + b*x))/b]
    @test_int [cos(a + b*x)*(c + d*x)^(1/2), x, 6, -((sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/b^(3/2)) - (sqrt(d)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/b^(3/2) + (sqrt(c + d*x)*sin(a + b*x))/b]
    @test_int [cos(a + b*x)/(c + d*x)^(1/2), x, 5, (sqrt(2*pi)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(sqrt(b)*sqrt(d)) - (sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(sqrt(b)*sqrt(d))]
    @test_int [cos(a + b*x)/(c + d*x)^(3/2), x, 6, -((2*cos(a + b*x))/(d*sqrt(c + d*x))) - (2*sqrt(b)*sqrt(2*pi)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/d^(3/2) - (2*sqrt(b)*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/d^(3/2)]
    @test_int [cos(a + b*x)/(c + d*x)^(5/2), x, 7, -((2*cos(a + b*x))/(3*d*(c + d*x)^(3/2))) - (4*b^(3/2)*sqrt(2*pi)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(3*d^(5/2)) + (4*b^(3/2)*sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(3*d^(5/2)) + (4*b*sin(a + b*x))/(3*d^2*sqrt(c + d*x))]
    @test_int [cos(a + b*x)/(c + d*x)^(7/2), x, 8, -((2*cos(a + b*x))/(5*d*(c + d*x)^(5/2))) + (8*b^2*cos(a + b*x))/(15*d^3*sqrt(c + d*x)) + (8*b^(5/2)*sqrt(2*pi)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(15*d^(7/2)) + (8*b^(5/2)*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(15*d^(7/2)) + (4*b*sin(a + b*x))/(15*d^2*(c + d*x)^(3/2))]


    @test_int [cos(a + b*x)^2*(c + d*x)^(5/2), x, 10, -((5*d*(c + d*x)^(3/2))/(16*b^2)) + (c + d*x)^(7/2)/(7*d) + (5*d*(c + d*x)^(3/2)*cos(a + b*x)^2)/(8*b^2) + (15*d^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(128*b^(7/2)) + (15*d^(5/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(128*b^(7/2)) + ((c + d*x)^(5/2)*cos(a + b*x)*sin(a + b*x))/(2*b) - (15*d^2*sqrt(c + d*x)*sin(2*a + 2*b*x))/(64*b^3)]
    @test_int [cos(a + b*x)^2*(c + d*x)^(3/2), x, 9, -((3*d*sqrt(c + d*x))/(16*b^2)) + (c + d*x)^(5/2)/(5*d) + (3*d*sqrt(c + d*x)*cos(a + b*x)^2)/(8*b^2) - (3*d^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(32*b^(5/2)) + (3*d^(3/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(32*b^(5/2)) + ((c + d*x)^(3/2)*cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [cos(a + b*x)^2*(c + d*x)^(1/2), x, 8, (c + d*x)^(3/2)/(3*d) - (sqrt(d)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(8*b^(3/2)) - (sqrt(d)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(8*b^(3/2)) + (sqrt(c + d*x)*sin(2*a + 2*b*x))/(4*b)]
    @test_int [cos(a + b*x)^2/(c + d*x)^(1/2), x, 7, sqrt(c + d*x)/d + (sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(2*sqrt(b)*sqrt(d)) - (sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(2*sqrt(b)*sqrt(d))]
    @test_int [cos(a + b*x)^2/(c + d*x)^(3/2), x, 7, -((2*cos(a + b*x)^2)/(d*sqrt(c + d*x))) - (2*sqrt(b)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/d^(3/2) - (2*sqrt(b)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/d^(3/2)]
    @test_int [cos(a + b*x)^2/(c + d*x)^(5/2), x, 9, -((2*cos(a + b*x)^2)/(3*d*(c + d*x)^(3/2))) - (8*b^(3/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(3*d^(5/2)) + (8*b^(3/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(3*d^(5/2)) + (8*b*cos(a + b*x)*sin(a + b*x))/(3*d^2*sqrt(c + d*x))]
    @test_int [cos(a + b*x)^2/(c + d*x)^(7/2), x, 9, -((16*b^2)/(15*d^3*sqrt(c + d*x))) - (2*cos(a + b*x)^2)/(5*d*(c + d*x)^(5/2)) + (32*b^2*cos(a + b*x)^2)/(15*d^3*sqrt(c + d*x)) + (32*b^(5/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(15*d^(7/2)) + (32*b^(5/2)*sqrt(pi)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(15*d^(7/2)) + (8*b*cos(a + b*x)*sin(a + b*x))/(15*d^2*(c + d*x)^(3/2))]
    @test_int [cos(a + b*x)^2/(c + d*x)^(9/2), x, 11, -((16*b^2)/(105*d^3*(c + d*x)^(3/2))) - (2*cos(a + b*x)^2)/(7*d*(c + d*x)^(7/2)) + (32*b^2*cos(a + b*x)^2)/(105*d^3*(c + d*x)^(3/2)) + (128*b^(7/2)*sqrt(pi)*cos(2*a - (2*b*c)/d)*FresnelC((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi))))/(105*d^(9/2)) - (128*b^(7/2)*sqrt(pi)*FresnelS((2*sqrt(b)*sqrt(c + d*x))/(sqrt(d)*sqrt(pi)))*sin(2*a - (2*b*c)/d))/(105*d^(9/2)) + (8*b*cos(a + b*x)*sin(a + b*x))/(35*d^2*(c + d*x)^(5/2)) - (128*b^3*cos(a + b*x)*sin(a + b*x))/(105*d^4*sqrt(c + d*x))]


    @test_int [cos(a + b*x)^3*(c + d*x)^(5/2), x, 23, (5*d*(c + d*x)^(3/2)*cos(a + b*x))/(3*b^2) + (5*d*(c + d*x)^(3/2)*cos(a + b*x)^3)/(18*b^2) + (45*d^(5/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(16*b^(7/2)) + (5*d^(5/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(144*b^(7/2)) + (5*d^(5/2)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(144*b^(7/2)) + (45*d^(5/2)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(16*b^(7/2)) - (45*d^2*sqrt(c + d*x)*sin(a + b*x))/(16*b^3) + (2*(c + d*x)^(5/2)*sin(a + b*x))/(3*b) + ((c + d*x)^(5/2)*cos(a + b*x)^2*sin(a + b*x))/(3*b) - (5*d^2*sqrt(c + d*x)*sin(3*a + 3*b*x))/(144*b^3)]
    @test_int [cos(a + b*x)^3*(c + d*x)^(3/2), x, 20, (d*sqrt(c + d*x)*cos(a + b*x))/b^2 + (d*sqrt(c + d*x)*cos(a + b*x)^3)/(6*b^2) - (9*d^(3/2)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(8*b^(5/2)) - (d^(3/2)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(24*b^(5/2)) + (d^(3/2)*sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(24*b^(5/2)) + (9*d^(3/2)*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(8*b^(5/2)) + (2*(c + d*x)^(3/2)*sin(a + b*x))/(3*b) + ((c + d*x)^(3/2)*cos(a + b*x)^2*sin(a + b*x))/(3*b)]
    @test_int [cos(a + b*x)^3*(c + d*x)^(1/2), x, 14, -((3*sqrt(d)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(4*b^(3/2))) - (sqrt(d)*sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(12*b^(3/2)) - (sqrt(d)*sqrt(pi/6)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(12*b^(3/2)) - (3*sqrt(d)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(4*b^(3/2)) + (3*sqrt(c + d*x)*sin(a + b*x))/(4*b) + (sqrt(c + d*x)*sin(3*a + 3*b*x))/(12*b)]
    @test_int [cos(a + b*x)^3/(c + d*x)^(1/2), x, 12, (3*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(2*sqrt(b)*sqrt(d)) + (sqrt(pi/6)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(2*sqrt(b)*sqrt(d)) - (sqrt(pi/6)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(2*sqrt(b)*sqrt(d)) - (3*sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(2*sqrt(b)*sqrt(d))]
    @test_int [cos(a + b*x)^3/(c + d*x)^(3/2), x, 12, -((2*cos(a + b*x)^3)/(d*sqrt(c + d*x))) - (3*sqrt(b)*sqrt(pi/2)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/d^(3/2) - (sqrt(b)*sqrt((3*pi)/2)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/d^(3/2) - (sqrt(b)*sqrt((3*pi)/2)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/d^(3/2) - (3*sqrt(b)*sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/d^(3/2)]
    @test_int [cos(a + b*x)^3/(c + d*x)^(5/2), x, 18, -((2*cos(a + b*x)^3)/(3*d*(c + d*x)^(3/2))) - (b^(3/2)*sqrt(2*pi)*cos(a - (b*c)/d)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/d^(5/2) - (b^(3/2)*sqrt(6*pi)*cos(3*a - (3*b*c)/d)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/d^(5/2) + (b^(3/2)*sqrt(6*pi)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/d^(5/2) + (b^(3/2)*sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/d^(5/2) + (4*b*cos(a + b*x)^2*sin(a + b*x))/(d^2*sqrt(c + d*x))]
    @test_int [cos(a + b*x)^3/(c + d*x)^(7/2), x, 19, -((16*b^2*cos(a + b*x))/(5*d^3*sqrt(c + d*x))) - (2*cos(a + b*x)^3)/(5*d*(c + d*x)^(5/2)) + (24*b^2*cos(a + b*x)^3)/(5*d^3*sqrt(c + d*x)) + (2*b^(5/2)*sqrt(2*pi)*cos(a - (b*c)/d)*FresnelS((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d)))/(5*d^(7/2)) + (6*b^(5/2)*sqrt(6*pi)*cos(3*a - (3*b*c)/d)*FresnelS((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d)))/(5*d^(7/2)) + (6*b^(5/2)*sqrt(6*pi)*FresnelC((sqrt(b)*sqrt(6/pi)*sqrt(c + d*x))/sqrt(d))*sin(3*a - (3*b*c)/d))/(5*d^(7/2)) + (2*b^(5/2)*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi)*sqrt(c + d*x))/sqrt(d))*sin(a - (b*c)/d))/(5*d^(7/2)) + (4*b*cos(a + b*x)^2*sin(a + b*x))/(5*d^2*(c + d*x)^(3/2))]


    @test_int [x^(3/2)*cos(x), x, 4, (3/2)*sqrt(x)*cos(x) - (3/2)*sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(x)) + x^(3/2)*sin(x)]
    @test_int [x^(1/2)*cos(x), x, 3, (-sqrt(pi/2))*FresnelS(sqrt(2/pi)*sqrt(x)) + sqrt(x)*sin(x)]
    @test_int [cos(x)/x^(1/2), x, 2, sqrt(2*pi)*FresnelC(sqrt(2/pi)*sqrt(x))]
    @test_int [cos(x)/x^(3/2), x, 3, -((2*cos(x))/sqrt(x)) - 2*sqrt(2*pi)*FresnelS(sqrt(2/pi)*sqrt(x))]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/3)*cos(e+f*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(a + b*x)*(c + d*x)^(4/3), x, 5, (4*d*(c + d*x)^(1/3)*cos(a + b*x))/(3*b^2) + (2*im*d^2*ℯ^(im*(a - (b*c)/d))*(-((im*b*(c + d*x))/d))^(2/3)*Gamma(1/3, -((im*b*(c + d*x))/d)))/(9*b^3*(c + d*x)^(2/3)) - (2*im*d^2*((im*b*(c + d*x))/d)^(2/3)*Gamma(1/3, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*(9*b^3*(c + d*x)^(2/3))) + ((c + d*x)^(4/3)*sin(a + b*x))/b]
    @test_int [cos(a + b*x)*(c + d*x)^(2/3), x, 4, (d*ℯ^(im*(a - (b*c)/d))*(-((im*b*(c + d*x))/d))^(1/3)*Gamma(2/3, -((im*b*(c + d*x))/d)))/(3*b^2*(c + d*x)^(1/3)) + (d*((im*b*(c + d*x))/d)^(1/3)*Gamma(2/3, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*(3*b^2*(c + d*x)^(1/3))) + ((c + d*x)^(2/3)*sin(a + b*x))/b]
    @test_int [cos(a + b*x)*(c + d*x)^(1/3), x, 4, (d*ℯ^(im*(a - (b*c)/d))*(-((im*b*(c + d*x))/d))^(2/3)*Gamma(1/3, -((im*b*(c + d*x))/d)))/(6*b^2*(c + d*x)^(2/3)) + (d*((im*b*(c + d*x))/d)^(2/3)*Gamma(1/3, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*(6*b^2*(c + d*x)^(2/3))) + ((c + d*x)^(1/3)*sin(a + b*x))/b]
    @test_int [cos(a + b*x)/(c + d*x)^(1/3), x, 3, -((im*ℯ^(im*(a - (b*c)/d))*(-((im*b*(c + d*x))/d))^(1/3)*Gamma(2/3, -((im*b*(c + d*x))/d)))/(2*b*(c + d*x)^(1/3))) + (im*((im*b*(c + d*x))/d)^(1/3)*Gamma(2/3, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*(2*b*(c + d*x)^(1/3)))]
    @test_int [cos(a + b*x)/(c + d*x)^(2/3), x, 3, -((im*ℯ^(im*(a - (b*c)/d))*(-((im*b*(c + d*x))/d))^(2/3)*Gamma(1/3, -((im*b*(c + d*x))/d)))/(2*b*(c + d*x)^(2/3))) + (im*((im*b*(c + d*x))/d)^(2/3)*Gamma(1/3, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*(2*b*(c + d*x)^(2/3)))]
    @test_int [cos(a + b*x)/(c + d*x)^(4/3), x, 4, -((3*cos(a + b*x))/(d*(c + d*x)^(1/3))) + (3*ℯ^(im*(a - (b*c)/d))*(-((im*b*(c + d*x))/d))^(1/3)*Gamma(2/3, -((im*b*(c + d*x))/d)))/(2*d*(c + d*x)^(1/3)) + (3*((im*b*(c + d*x))/d)^(1/3)*Gamma(2/3, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*(2*d*(c + d*x)^(1/3)))]
    @test_int [cos(a + b*x)/(c + d*x)^(5/3), x, 4, -((3*cos(a + b*x))/(2*d*(c + d*x)^(2/3))) + (3*ℯ^(im*(a - (b*c)/d))*(-((im*b*(c + d*x))/d))^(2/3)*Gamma(1/3, -((im*b*(c + d*x))/d)))/(4*d*(c + d*x)^(2/3)) + (3*((im*b*(c + d*x))/d)^(2/3)*Gamma(1/3, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*(4*d*(c + d*x)^(2/3)))]
    @test_int [cos(a + b*x)/(c + d*x)^(7/3), x, 5, -((3*cos(a + b*x))/(4*d*(c + d*x)^(4/3))) + (9*im*b*ℯ^(im*(a - (b*c)/d))*(-((im*b*(c + d*x))/d))^(1/3)*Gamma(2/3, -((im*b*(c + d*x))/d)))/(8*d^2*(c + d*x)^(1/3)) - (9*im*b*((im*b*(c + d*x))/d)^(1/3)*Gamma(2/3, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*(8*d^2*(c + d*x)^(1/3))) + (9*b*sin(a + b*x))/(4*d^2*(c + d*x)^(1/3))]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cos(e+f*x)^(n/2)=#


    @test_int [x^1*cos(a + b*x)^(1/2), x, 0, Unintegrable(x*sqrt(cos(a + b*x)), x)]
    @test_int [x^0*cos(a + b*x)^(1/2), x, 1, (2*EllipticE((1/2)*(a + b*x), 2))/b]
    @test_int [cos(a + b*x)^(1/2)/x^1, x, 0, Unintegrable(sqrt(cos(a + b*x))/x, x)]


    @test_int [x^1*cos(a + b*x)^(3/2), x, 1, (4*cos(a + b*x)^(3/2))/(9*b^2) + (1/3)*Unintegrable(x/sqrt(cos(a + b*x)), x) + (2*x*sqrt(cos(a + b*x))*sin(a + b*x))/(3*b)]
    @test_int [x^0*cos(a + b*x)^(3/2), x, 2, (2*EllipticF((1/2)*(a + b*x), 2))/(3*b) + (2*sqrt(cos(a + b*x))*sin(a + b*x))/(3*b)]
    @test_int [cos(a + b*x)^(3/2)/x^1, x, 0, Unintegrable(cos(a + b*x)^(3/2)/x, x)]

    @test_int [x^1*cos(a + b*x)^(3/2) - x/(3*sqrt(cos(a + b*x))), x, 2, (4*cos(a + b*x)^(3/2))/(9*b^2) + (2*x*sqrt(cos(a + b*x))*sin(a + b*x))/(3*b)]


    @test_int [cos(x)^(3/2)/x^3, x, 1, -(cos(x)^(3/2)/(2*x^2)) + (3/8)*Unintegrable(1/(x*sqrt(cos(x))), x) - (9/8)*Unintegrable(cos(x)^(3/2)/x, x) + (3*sqrt(cos(x))*sin(x))/(4*x)]


    @test_int [x^1/cos(a + b*x)^(1/2), x, 0, Unintegrable(x/sqrt(cos(a + b*x)), x)]
    @test_int [x^0/cos(a + b*x)^(1/2), x, 1, (2*EllipticF((1/2)*(a + b*x), 2))/b]
    @test_int [1/(x^1*cos(a + b*x)^(1/2)), x, 0, Unintegrable(1/(x*sqrt(cos(a + b*x))), x)]


    @test_int [x^1/cos(a + b*x)^(3/2), x, 1, (4*sqrt(cos(a + b*x)))/b^2 + (2*x*sin(a + b*x))/(b*sqrt(cos(a + b*x))) - Unintegrable(x*sqrt(cos(a + b*x)), x)]
    @test_int [x^0/cos(a + b*x)^(3/2), x, 2, -((2*EllipticE((1/2)*(a + b*x), 2))/b) + (2*sin(a + b*x))/(b*sqrt(cos(a + b*x)))]
    @test_int [1/(x^1*cos(a + b*x)^(3/2)), x, 0, Unintegrable(1/(x*cos(a + b*x)^(3/2)), x)]

    @test_int [x^1/cos(a + b*x)^(3/2) + x*sqrt(cos(a + b*x)), x, 2, (4*sqrt(cos(a + b*x)))/b^2 + (2*x*sin(a + b*x))/(b*sqrt(cos(a + b*x)))]


    @test_int [x/cos(x)^(3/2) + x*sqrt(cos(x)), x, 2, 4*sqrt(cos(x)) + (2*x*sin(x))/sqrt(cos(x))]
    @test_int [x/cos(x)^(5/2) - x/(3*sqrt(cos(x))), x, 2, -(4/(3*sqrt(cos(x)))) + (2*x*sin(x))/(3*cos(x)^(3/2))]
    @test_int [x/cos(x)^(7/2) + (3/5)*x*sqrt(cos(x)), x, 3, -(4/(15*cos(x)^(3/2))) + (12*sqrt(cos(x)))/5 + (2*x*sin(x))/(5*cos(x)^(5/2)) + (6*x*sin(x))/(5*sqrt(cos(x)))]
    @test_int [x^2/cos(x)^(3/2) + x^2*sqrt(cos(x)), x, 3, 8*x*sqrt(cos(x)) - 16*EllipticE(x/2, 2) + (2*x^2*sin(x))/sqrt(cos(x))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sec(e+f*x)^(n/2)=#


    @test_int [x/sec(x)^(3/2) - (1/3)*x*sqrt(sec(x)), x, 4, 4/(9*sec(x)^(3/2)) + (2*x*sin(x))/(3*sqrt(sec(x)))]
    @test_int [x/sec(x)^(5/2) - (3/5)*x/sqrt(sec(x)), x, 4, 4/(25*sec(x)^(5/2)) + (2*x*sin(x))/(5*sec(x)^(3/2))]
    @test_int [x/sec(x)^(7/2) - (5/21)*x*sqrt(sec(x)), x, 5, 4/(49*sec(x)^(7/2)) + 20/(63*sec(x)^(3/2)) + (2*x*sin(x))/(7*sec(x)^(5/2)) + (10*x*sin(x))/(21*sqrt(sec(x)))]
    @test_int [x^2/sec(x)^(3/2) - (1/3)*x^2*sqrt(sec(x)), x, 7, (8*x)/(9*sec(x)^(3/2)) - (16/27)*sqrt(cos(x))*EllipticF(x/2, 2)*sqrt(sec(x)) - (16*sin(x))/(27*sqrt(sec(x))) + (2*x^2*sin(x))/(3*sqrt(sec(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cos(e+f*x))^n*with*m*symbolic=#


    @test_int [(c + d*x)^m*(b*cos(e + f*x))^n, x, 0, Unintegrable((c + d*x)^m*(b*cos(e + f*x))^n, x)]


    @test_int [cos(a + b*x)^3*(c + d*x)^m, x, 8, -((3*im*ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*(8*b))) + (3*im*(c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*(8*b)) - (im*3^(-1 - m)*ℯ^(3*im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((3*im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*(8*b)) + (im*3^(-1 - m)*(c + d*x)^m*Gamma(1 + m, (3*im*b*(c + d*x))/d))/(ℯ^(3*im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*(8*b))]
    @test_int [cos(a + b*x)^2*(c + d*x)^m, x, 5, (c + d*x)^(1 + m)/(2*d*(1 + m)) - (im*2^(-3 - m)*ℯ^(2*im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((2*im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*b) + (im*2^(-3 - m)*(c + d*x)^m*Gamma(1 + m, (2*im*b*(c + d*x))/d))/(ℯ^(2*im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*b)]
    @test_int [cos(a + b*x)*(c + d*x)^m, x, 3, -((im*ℯ^(im*(a - (b*c)/d))*(c + d*x)^m*Gamma(1 + m, -((im*b*(c + d*x))/d)))/((-((im*b*(c + d*x))/d))^m*(2*b))) + (im*(c + d*x)^m*Gamma(1 + m, (im*b*(c + d*x))/d))/(ℯ^(im*(a - (b*c)/d))*((im*b*(c + d*x))/d)^m*(2*b))]
    @test_int [sec(a + b*x)*(c + d*x)^m, x, 0, Unintegrable((c + d*x)^m*sec(a + b*x), x)]
    @test_int [sec(a + b*x)^2*(c + d*x)^m, x, 0, Unintegrable((c + d*x)^m*sec(a + b*x)^2, x)]


    @test_int [x^(m + 3)*cos(a + b*x), x, 3, -((ℯ^(im*a)*x^m*Gamma(4 + m, (-im)*b*x))/(((-im)*b*x)^m*(2*b^4))) - (x^m*Gamma(4 + m, im*b*x))/(ℯ^(im*a)*(im*b*x)^m*(2*b^4))]
    @test_int [x^(m + 2)*cos(a + b*x), x, 3, (im*ℯ^(im*a)*x^m*Gamma(3 + m, (-im)*b*x))/(((-im)*b*x)^m*(2*b^3)) - (im*x^m*Gamma(3 + m, im*b*x))/(ℯ^(im*a)*(im*b*x)^m*(2*b^3))]
    @test_int [x^(m + 1)*cos(a + b*x), x, 3, (ℯ^(im*a)*x^m*Gamma(2 + m, (-im)*b*x))/(((-im)*b*x)^m*(2*b^2)) + (x^m*Gamma(2 + m, im*b*x))/(ℯ^(im*a)*(im*b*x)^m*(2*b^2))]
    @test_int [x^(m + 0)*cos(a + b*x), x, 3, -((im*ℯ^(im*a)*x^m*Gamma(1 + m, (-im)*b*x))/(((-im)*b*x)^m*(2*b))) + (im*x^m*Gamma(1 + m, im*b*x))/(ℯ^(im*a)*(im*b*x)^m*(2*b))]
    @test_int [x^(m - 1)*cos(a + b*x), x, 3, ((-(1/2))*ℯ^(im*a)*x^m*Gamma(m, (-im)*b*x))/((-im)*b*x)^m - ((1/2)*x^m*Gamma(m, im*b*x))/(ℯ^(im*a)*(im*b*x)^m)]
    @test_int [x^(m - 2)*cos(a + b*x), x, 3, ((1/2)*im*b*ℯ^(im*a)*x^m*Gamma(-1 + m, (-im)*b*x))/((-im)*b*x)^m - ((1/2)*im*b*x^m*Gamma(-1 + m, im*b*x))/(ℯ^(im*a)*(im*b*x)^m)]
    @test_int [x^(m - 3)*cos(a + b*x), x, 3, ((1/2)*b^2*ℯ^(im*a)*x^m*Gamma(-2 + m, (-im)*b*x))/((-im)*b*x)^m + ((1/2)*b^2*x^m*Gamma(-2 + m, im*b*x))/(ℯ^(im*a)*(im*b*x)^m)]


    @test_int [x^(m + 3)*cos(a + b*x)^2, x, 5, x^(4 + m)/(2*(4 + m)) - (2^(-6 - m)*ℯ^(2*im*a)*x^m*Gamma(4 + m, -2*im*b*x))/(((-im)*b*x)^m*b^4) - (2^(-6 - m)*x^m*Gamma(4 + m, 2*im*b*x))/(ℯ^(2*im*a)*(im*b*x)^m*b^4)]
    @test_int [x^(m + 2)*cos(a + b*x)^2, x, 5, x^(3 + m)/(2*(3 + m)) + (im*2^(-5 - m)*ℯ^(2*im*a)*x^m*Gamma(3 + m, -2*im*b*x))/(((-im)*b*x)^m*b^3) - (im*2^(-5 - m)*x^m*Gamma(3 + m, 2*im*b*x))/(ℯ^(2*im*a)*(im*b*x)^m*b^3)]
    @test_int [x^(m + 1)*cos(a + b*x)^2, x, 5, x^(2 + m)/(2*(2 + m)) + (2^(-4 - m)*ℯ^(2*im*a)*x^m*Gamma(2 + m, -2*im*b*x))/(((-im)*b*x)^m*b^2) + (2^(-4 - m)*x^m*Gamma(2 + m, 2*im*b*x))/(ℯ^(2*im*a)*(im*b*x)^m*b^2)]
    @test_int [x^(m + 0)*cos(a + b*x)^2, x, 5, x^(1 + m)/(2*(1 + m)) - (im*2^(-3 - m)*ℯ^(2*im*a)*x^m*Gamma(1 + m, -2*im*b*x))/(((-im)*b*x)^m*b) + (im*2^(-3 - m)*x^m*Gamma(1 + m, 2*im*b*x))/(ℯ^(2*im*a)*(im*b*x)^m*b)]
    @test_int [x^(m - 1)*cos(a + b*x)^2, x, 5, x^m/(2*m) - (2^(-2 - m)*ℯ^(2*im*a)*x^m*Gamma(m, -2*im*b*x))/((-im)*b*x)^m - (2^(-2 - m)*x^m*Gamma(m, 2*im*b*x))/(ℯ^(2*im*a)*(im*b*x)^m)]
    @test_int [x^(m - 2)*cos(a + b*x)^2, x, 5, -(x^(-1 + m)/(2*(1 - m))) + (im*2^(-1 - m)*b*ℯ^(2*im*a)*x^m*Gamma(-1 + m, -2*im*b*x))/((-im)*b*x)^m - (im*2^(-1 - m)*b*x^m*Gamma(-1 + m, 2*im*b*x))/(ℯ^(2*im*a)*(im*b*x)^m)]
    @test_int [x^(m - 3)*cos(a + b*x)^2, x, 5, -(x^(-2 + m)/(2*(2 - m))) + (b^2*ℯ^(2*im*a)*x^m*Gamma(-2 + m, -2*im*b*x))/(2^m*((-im)*b*x)^m) + (b^2*x^m*Gamma(-2 + m, 2*im*b*x))/(2^m*ℯ^(2*im*a)*(im*b*x)^m)]


    #= ::Section:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*sec(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cos(e+f*x))^n*with*a^2-b^2=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*cos(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(a + a*cos(e + f*x))*(c + d*x)^3, x, 6, (a*(c + d*x)^4)/(4*d) - (6*a*d^3*cos(e + f*x))/f^4 + (3*a*d*(c + d*x)^2*cos(e + f*x))/f^2 - (6*a*d^2*(c + d*x)*sin(e + f*x))/f^3 + (a*(c + d*x)^3*sin(e + f*x))/f]
    @test_int [(a + a*cos(e + f*x))*(c + d*x)^2, x, 5, (a*(c + d*x)^3)/(3*d) + (2*a*d*(c + d*x)*cos(e + f*x))/f^2 - (2*a*d^2*sin(e + f*x))/f^3 + (a*(c + d*x)^2*sin(e + f*x))/f]
    @test_int [(a + a*cos(e + f*x))*(c + d*x)^1, x, 4, (a*(c + d*x)^2)/(2*d) + (a*d*cos(e + f*x))/f^2 + (a*(c + d*x)*sin(e + f*x))/f]
    @test_int [(a + a*cos(e + f*x))/(c + d*x)^1, x, 5, (a*cos(e - (c*f)/d)*CosIntegral((c*f)/d + f*x))/d + (a*log(c + d*x))/d - (a*sin(e - (c*f)/d)*SinIntegral((c*f)/d + f*x))/d]
    @test_int [(a + a*cos(e + f*x))/(c + d*x)^2, x, 6, -(a/(d*(c + d*x))) - (a*cos(e + f*x))/(d*(c + d*x)) - (a*f*CosIntegral((c*f)/d + f*x)*sin(e - (c*f)/d))/d^2 - (a*f*cos(e - (c*f)/d)*SinIntegral((c*f)/d + f*x))/d^2]


    @test_int [(a + a*cos(e + f*x))^2*(c + d*x)^3, x, 10, -((3*a^2*c*d^2*x)/(4*f^2)) - (3*a^2*d^3*x^2)/(8*f^2) + (3*a^2*(c + d*x)^4)/(8*d) - (12*a^2*d^3*cos(e + f*x))/f^4 + (6*a^2*d*(c + d*x)^2*cos(e + f*x))/f^2 - (3*a^2*d^3*cos(e + f*x)^2)/(8*f^4) + (3*a^2*d*(c + d*x)^2*cos(e + f*x)^2)/(4*f^2) - (12*a^2*d^2*(c + d*x)*sin(e + f*x))/f^3 + (2*a^2*(c + d*x)^3*sin(e + f*x))/f - (3*a^2*d^2*(c + d*x)*cos(e + f*x)*sin(e + f*x))/(4*f^3) + (a^2*(c + d*x)^3*cos(e + f*x)*sin(e + f*x))/(2*f)]
    @test_int [(a + a*cos(e + f*x))^2*(c + d*x)^2, x, 9, -((a^2*d^2*x)/(4*f^2)) + (a^2*(c + d*x)^3)/(2*d) + (4*a^2*d*(c + d*x)*cos(e + f*x))/f^2 + (a^2*d*(c + d*x)*cos(e + f*x)^2)/(2*f^2) - (4*a^2*d^2*sin(e + f*x))/f^3 + (2*a^2*(c + d*x)^2*sin(e + f*x))/f - (a^2*d^2*cos(e + f*x)*sin(e + f*x))/(4*f^3) + (a^2*(c + d*x)^2*cos(e + f*x)*sin(e + f*x))/(2*f)]
    @test_int [(a + a*cos(e + f*x))^2*(c + d*x)^1, x, 6, (1/2)*a^2*c*x + (1/4)*a^2*d*x^2 + (a^2*(c + d*x)^2)/(2*d) + (2*a^2*d*cos(e + f*x))/f^2 + (a^2*d*cos(e + f*x)^2)/(4*f^2) + (2*a^2*(c + d*x)*sin(e + f*x))/f + (a^2*(c + d*x)*cos(e + f*x)*sin(e + f*x))/(2*f)]
    @test_int [(a + a*cos(e + f*x))^2/(c + d*x)^1, x, 9, (2*a^2*cos(e - (c*f)/d)*CosIntegral((c*f)/d + f*x))/d + (a^2*cos(2*e - (2*c*f)/d)*CosIntegral((2*c*f)/d + 2*f*x))/(2*d) + (3*a^2*log(c + d*x))/(2*d) - (2*a^2*sin(e - (c*f)/d)*SinIntegral((c*f)/d + f*x))/d - (a^2*sin(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(2*d)]
    @test_int [(a + a*cos(e + f*x))^2/(c + d*x)^2, x, 9, -((4*a^2*cos(e/2 + (f*x)/2)^4)/(d*(c + d*x))) - (a^2*f*CosIntegral((2*c*f)/d + 2*f*x)*sin(2*e - (2*c*f)/d))/d^2 - (2*a^2*f*CosIntegral((c*f)/d + f*x)*sin(e - (c*f)/d))/d^2 - (2*a^2*f*cos(e - (c*f)/d)*SinIntegral((c*f)/d + f*x))/d^2 - (a^2*f*cos(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/d^2]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [1/(a + a*cos(e + f*x))*(c + d*x)^3, x, 7, -((im*(c + d*x)^3)/(a*f)) + (6*d*(c + d*x)^2*log(1 + ℯ^(im*(e + f*x))))/(a*f^2) - (12*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(im*(e + f*x))))/(a*f^3) + (12*d^3*PolyLog(3, -ℯ^(im*(e + f*x))))/(a*f^4) + ((c + d*x)^3*tan(e/2 + (f*x)/2))/(a*f)]
    @test_int [1/(a + a*cos(e + f*x))*(c + d*x)^2, x, 6, -((im*(c + d*x)^2)/(a*f)) + (4*d*(c + d*x)*log(1 + ℯ^(im*(e + f*x))))/(a*f^2) - (4*im*d^2*PolyLog(2, -ℯ^(im*(e + f*x))))/(a*f^3) + ((c + d*x)^2*tan(e/2 + (f*x)/2))/(a*f)]
    @test_int [1/(a + a*cos(e + f*x))*(c + d*x)^1, x, 3, (2*d*log(cos(e/2 + (f*x)/2)))/(a*f^2) + ((c + d*x)*tan(e/2 + (f*x)/2))/(a*f)]
    @test_int [1/(a + a*cos(e + f*x))/(c + d*x)^1, x, 0, Unintegrable(1/((c + d*x)*(a + a*cos(e + f*x))), x)]
    @test_int [1/(a + a*cos(e + f*x))/(c + d*x)^2, x, 0, Unintegrable(1/((c + d*x)^2*(a + a*cos(e + f*x))), x)]


    @test_int [1/(a + a*cos(e + f*x))^2*(c + d*x)^3, x, 10, -((im*(c + d*x)^3)/(3*a^2*f)) + (2*d*(c + d*x)^2*log(1 + ℯ^(im*(e + f*x))))/(a^2*f^2) + (4*d^3*log(cos(e/2 + (f*x)/2)))/(a^2*f^4) - (4*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(im*(e + f*x))))/(a^2*f^3) + (4*d^3*PolyLog(3, -ℯ^(im*(e + f*x))))/(a^2*f^4) - (d*(c + d*x)^2*sec(e/2 + (f*x)/2)^2)/(2*a^2*f^2) + (2*d^2*(c + d*x)*tan(e/2 + (f*x)/2))/(a^2*f^3) + ((c + d*x)^3*tan(e/2 + (f*x)/2))/(3*a^2*f) + ((c + d*x)^3*sec(e/2 + (f*x)/2)^2*tan(e/2 + (f*x)/2))/(6*a^2*f)]
    @test_int [1/(a + a*cos(e + f*x))^2*(c + d*x)^2, x, 9, -((im*(c + d*x)^2)/(3*a^2*f)) + (4*d*(c + d*x)*log(1 + ℯ^(im*(e + f*x))))/(3*a^2*f^2) - (4*im*d^2*PolyLog(2, -ℯ^(im*(e + f*x))))/(3*a^2*f^3) - (d*(c + d*x)*sec(e/2 + (f*x)/2)^2)/(3*a^2*f^2) + (2*d^2*tan(e/2 + (f*x)/2))/(3*a^2*f^3) + ((c + d*x)^2*tan(e/2 + (f*x)/2))/(3*a^2*f) + ((c + d*x)^2*sec(e/2 + (f*x)/2)^2*tan(e/2 + (f*x)/2))/(6*a^2*f)]
    @test_int [1/(a + a*cos(e + f*x))^2*(c + d*x)^1, x, 4, (2*d*log(cos(e/2 + (f*x)/2)))/(3*a^2*f^2) - (d*sec(e/2 + (f*x)/2)^2)/(6*a^2*f^2) + ((c + d*x)*tan(e/2 + (f*x)/2))/(3*a^2*f) + ((c + d*x)*sec(e/2 + (f*x)/2)^2*tan(e/2 + (f*x)/2))/(6*a^2*f)]
    @test_int [1/(a + a*cos(e + f*x))^2/(c + d*x)^1, x, 0, Unintegrable(1/((c + d*x)*(a + a*cos(e + f*x))^2), x)]
    @test_int [1/(a + a*cos(e + f*x))^2/(c + d*x)^2, x, 0, Unintegrable(1/((c + d*x)^2*(a + a*cos(e + f*x))^2), x)]


    @test_int [1/(a - a*cos(e + f*x))*(c + d*x)^3, x, 7, -((im*(c + d*x)^3)/(a*f)) - ((c + d*x)^3*cot(e/2 + (f*x)/2))/(a*f) + (6*d*(c + d*x)^2*log(1 - ℯ^(im*(e + f*x))))/(a*f^2) - (12*im*d^2*(c + d*x)*PolyLog(2, ℯ^(im*(e + f*x))))/(a*f^3) + (12*d^3*PolyLog(3, ℯ^(im*(e + f*x))))/(a*f^4)]
    @test_int [1/(a - a*cos(e + f*x))*(c + d*x)^2, x, 6, -((im*(c + d*x)^2)/(a*f)) - ((c + d*x)^2*cot(e/2 + (f*x)/2))/(a*f) + (4*d*(c + d*x)*log(1 - ℯ^(im*(e + f*x))))/(a*f^2) - (4*im*d^2*PolyLog(2, ℯ^(im*(e + f*x))))/(a*f^3)]
    @test_int [1/(a - a*cos(e + f*x))*(c + d*x)^1, x, 3, -(((c + d*x)*cot(e/2 + (f*x)/2))/(a*f)) + (2*d*log(sin(e/2 + (f*x)/2)))/(a*f^2)]
    @test_int [1/(a - a*cos(e + f*x))/(c + d*x)^1, x, 0, Unintegrable(1/((c + d*x)*(a - a*cos(e + f*x))), x)]
    @test_int [1/(a - a*cos(e + f*x))/(c + d*x)^2, x, 0, Unintegrable(1/((c + d*x)^2*(a - a*cos(e + f*x))), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*cos(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^3*sqrt(a + a*cos(c + d*x)), x, 5, -((96*sqrt(a + a*cos(c + d*x)))/d^4) + (12*x^2*sqrt(a + a*cos(c + d*x)))/d^2 - (48*x*sqrt(a + a*cos(c + d*x))*tan(c/2 + (d*x)/2))/d^3 + (2*x^3*sqrt(a + a*cos(c + d*x))*tan(c/2 + (d*x)/2))/d]
    @test_int [x^2*sqrt(a + a*cos(c + d*x)), x, 4, (8*x*sqrt(a + a*cos(c + d*x)))/d^2 - (16*sqrt(a + a*cos(c + d*x))*tan(c/2 + (d*x)/2))/d^3 + (2*x^2*sqrt(a + a*cos(c + d*x))*tan(c/2 + (d*x)/2))/d]
    @test_int [x*sqrt(a + a*cos(c + d*x)), x, 3, (4*sqrt(a + a*cos(c + d*x)))/d^2 + (2*x*sqrt(a + a*cos(c + d*x))*tan(c/2 + (d*x)/2))/d]
    @test_int [sqrt(a + a*cos(c + d*x)), x, 1, (2*a*sin(c + d*x))/(d*sqrt(a + a*cos(c + d*x)))]
    @test_int [sqrt(a + a*cos(c + d*x))/x, x, 4, cos(c/2)*sqrt(a + a*cos(c + d*x))*CosIntegral((d*x)/2)*sec(c/2 + (d*x)/2) - sqrt(a + a*cos(c + d*x))*sec(c/2 + (d*x)/2)*sin(c/2)*SinIntegral((d*x)/2)]
    @test_int [sqrt(a + a*cos(c + d*x))/x^2, x, 5, -(sqrt(a + a*cos(c + d*x))/x) - (1/2)*d*sqrt(a + a*cos(c + d*x))*CosIntegral((d*x)/2)*sec(c/2 + (d*x)/2)*sin(c/2) - (1/2)*d*cos(c/2)*sqrt(a + a*cos(c + d*x))*sec(c/2 + (d*x)/2)*SinIntegral((d*x)/2)]
    @test_int [sqrt(a + a*cos(c + d*x))/x^3, x, 6, -(sqrt(a + a*cos(c + d*x))/(2*x^2)) - (1/8)*d^2*cos(c/2)*sqrt(a + a*cos(c + d*x))*CosIntegral((d*x)/2)*sec(c/2 + (d*x)/2) + (1/8)*d^2*sqrt(a + a*cos(c + d*x))*sec(c/2 + (d*x)/2)*sin(c/2)*SinIntegral((d*x)/2) + (d*sqrt(a + a*cos(c + d*x))*tan(c/2 + (d*x)/2))/(4*x)]


    @test_int [x^3*sqrt(a + a*cos(x)), x, 5, -96*sqrt(a + a*cos(x)) + 12*x^2*sqrt(a + a*cos(x)) - 48*x*sqrt(a + a*cos(x))*tan(x/2) + 2*x^3*sqrt(a + a*cos(x))*tan(x/2)]
    @test_int [x^2*sqrt(a + a*cos(x)), x, 4, 8*x*sqrt(a + a*cos(x)) - 16*sqrt(a + a*cos(x))*tan(x/2) + 2*x^2*sqrt(a + a*cos(x))*tan(x/2)]
    @test_int [x*sqrt(a + a*cos(x)), x, 3, 4*sqrt(a + a*cos(x)) + 2*x*sqrt(a + a*cos(x))*tan(x/2)]
    @test_int [sqrt(a + a*cos(x)), x, 1, (2*a*sin(x))/sqrt(a + a*cos(x))]
    @test_int [sqrt(a + a*cos(x))/x, x, 2, sqrt(a + a*cos(x))*CosIntegral(x/2)*sec(x/2)]
    @test_int [sqrt(a + a*cos(x))/x^2, x, 3, -(sqrt(a + a*cos(x))/x) - (1/2)*sqrt(a + a*cos(x))*sec(x/2)*SinIntegral(x/2)]
    @test_int [sqrt(a + a*cos(x))/x^3, x, 4, -(sqrt(a + a*cos(x))/(2*x^2)) - (1/8)*sqrt(a + a*cos(x))*CosIntegral(x/2)*sec(x/2) + (sqrt(a + a*cos(x))*tan(x/2))/(4*x)]


    @test_int [x^3*sqrt(a - a*cos(x)), x, 5, -96*sqrt(a - a*cos(x)) + 12*x^2*sqrt(a - a*cos(x)) + 48*x*sqrt(a - a*cos(x))*cot(x/2) - 2*x^3*sqrt(a - a*cos(x))*cot(x/2)]
    @test_int [x^2*sqrt(a - a*cos(x)), x, 4, 8*x*sqrt(a - a*cos(x)) + 16*sqrt(a - a*cos(x))*cot(x/2) - 2*x^2*sqrt(a - a*cos(x))*cot(x/2)]
    @test_int [x*sqrt(a - a*cos(x)), x, 3, 4*sqrt(a - a*cos(x)) - 2*x*sqrt(a - a*cos(x))*cot(x/2)]
    @test_int [sqrt(a - a*cos(x)), x, 1, -((2*a*sin(x))/sqrt(a - a*cos(x)))]
    @test_int [sqrt(a - a*cos(x))/x, x, 2, sqrt(a - a*cos(x))*csc(x/2)*SinIntegral(x/2)]
    @test_int [sqrt(a - a*cos(x))/x^2, x, 3, -(sqrt(a - a*cos(x))/x) + (1/2)*sqrt(a - a*cos(x))*CosIntegral(x/2)*csc(x/2)]
    @test_int [sqrt(a - a*cos(x))/x^3, x, 4, -(sqrt(a - a*cos(x))/(2*x^2)) - (sqrt(a - a*cos(x))*cot(x/2))/(4*x) - (1/8)*sqrt(a - a*cos(x))*csc(x/2)*SinIntegral(x/2)]


    @test_int [x^3*(a + a*cos(x))^(3/2), x, 9, (-(1280/9))*a*sqrt(a + a*cos(x)) + 16*a*x^2*sqrt(a + a*cos(x)) - (64/27)*a*cos(x/2)^2*sqrt(a + a*cos(x)) + (8/3)*a*x^2*cos(x/2)^2*sqrt(a + a*cos(x)) - (32/9)*a*x*cos(x/2)*sqrt(a + a*cos(x))*sin(x/2) + (4/3)*a*x^3*cos(x/2)*sqrt(a + a*cos(x))*sin(x/2) - (640/9)*a*x*sqrt(a + a*cos(x))*tan(x/2) + (8/3)*a*x^3*sqrt(a + a*cos(x))*tan(x/2)]
    @test_int [x^2*(a + a*cos(x))^(3/2), x, 7, (32/3)*a*x*sqrt(a + a*cos(x)) + (16/9)*a*x*cos(x/2)^2*sqrt(a + a*cos(x)) + (4/3)*a*x^2*cos(x/2)*sqrt(a + a*cos(x))*sin(x/2) - (224/9)*a*sqrt(a + a*cos(x))*tan(x/2) + (8/3)*a*x^2*sqrt(a + a*cos(x))*tan(x/2) + (32/27)*a*sqrt(a + a*cos(x))*sin(x/2)^2*tan(x/2)]
    @test_int [x*(a + a*cos(x))^(3/2), x, 4, (16/3)*a*sqrt(a + a*cos(x)) + (8/9)*a*cos(x/2)^2*sqrt(a + a*cos(x)) + (4/3)*a*x*cos(x/2)*sqrt(a + a*cos(x))*sin(x/2) + (8/3)*a*x*sqrt(a + a*cos(x))*tan(x/2)]
    @test_int [(a + a*cos(x))^(3/2)/x, x, 5, (3/2)*a*sqrt(a + a*cos(x))*CosIntegral(x/2)*sec(x/2) + (1/2)*a*sqrt(a + a*cos(x))*CosIntegral((3*x)/2)*sec(x/2)]
    @test_int [(a + a*cos(x))^(3/2)/x^2, x, 5, -((2*a*cos(x/2)^2*sqrt(a + a*cos(x)))/x) - (3/4)*a*sqrt(a + a*cos(x))*sec(x/2)*SinIntegral(x/2) - (3/4)*a*sqrt(a + a*cos(x))*sec(x/2)*SinIntegral((3*x)/2)]
    @test_int [(a + a*cos(x))^(3/2)/x^3, x, 7, -((a*cos(x/2)^2*sqrt(a + a*cos(x)))/x^2) - (3/16)*a*sqrt(a + a*cos(x))*CosIntegral(x/2)*sec(x/2) - (9/16)*a*sqrt(a + a*cos(x))*CosIntegral((3*x)/2)*sec(x/2) + (3*a*cos(x/2)*sqrt(a + a*cos(x))*sin(x/2))/(2*x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^3/sqrt(a + a*cos(c + d*x)), x, 10, -((4*im*x^3*atan(ℯ^((1/2)*im*(c + d*x)))*cos(c/2 + (d*x)/2))/(d*sqrt(a + a*cos(c + d*x)))) + (12*im*x^2*cos(c/2 + (d*x)/2)*PolyLog(2, (-im)*ℯ^((1/2)*im*(c + d*x))))/(d^2*sqrt(a + a*cos(c + d*x))) - (12*im*x^2*cos(c/2 + (d*x)/2)*PolyLog(2, im*ℯ^((1/2)*im*(c + d*x))))/(d^2*sqrt(a + a*cos(c + d*x))) - (48*x*cos(c/2 + (d*x)/2)*PolyLog(3, (-im)*ℯ^((1/2)*im*(c + d*x))))/(d^3*sqrt(a + a*cos(c + d*x))) + (48*x*cos(c/2 + (d*x)/2)*PolyLog(3, im*ℯ^((1/2)*im*(c + d*x))))/(d^3*sqrt(a + a*cos(c + d*x))) - (96*im*cos(c/2 + (d*x)/2)*PolyLog(4, (-im)*ℯ^((1/2)*im*(c + d*x))))/(d^4*sqrt(a + a*cos(c + d*x))) + (96*im*cos(c/2 + (d*x)/2)*PolyLog(4, im*ℯ^((1/2)*im*(c + d*x))))/(d^4*sqrt(a + a*cos(c + d*x)))]
    @test_int [x^2/sqrt(a + a*cos(c + d*x)), x, 8, -((4*im*x^2*atan(ℯ^((1/2)*im*(c + d*x)))*cos(c/2 + (d*x)/2))/(d*sqrt(a + a*cos(c + d*x)))) + (8*im*x*cos(c/2 + (d*x)/2)*PolyLog(2, (-im)*ℯ^((1/2)*im*(c + d*x))))/(d^2*sqrt(a + a*cos(c + d*x))) - (8*im*x*cos(c/2 + (d*x)/2)*PolyLog(2, im*ℯ^((1/2)*im*(c + d*x))))/(d^2*sqrt(a + a*cos(c + d*x))) - (16*cos(c/2 + (d*x)/2)*PolyLog(3, (-im)*ℯ^((1/2)*im*(c + d*x))))/(d^3*sqrt(a + a*cos(c + d*x))) + (16*cos(c/2 + (d*x)/2)*PolyLog(3, im*ℯ^((1/2)*im*(c + d*x))))/(d^3*sqrt(a + a*cos(c + d*x)))]
    @test_int [x/sqrt(a + a*cos(c + d*x)), x, 6, -((4*im*x*atan(ℯ^((1/2)*im*(c + d*x)))*cos(c/2 + (d*x)/2))/(d*sqrt(a + a*cos(c + d*x)))) + (4*im*cos(c/2 + (d*x)/2)*PolyLog(2, (-im)*ℯ^((1/2)*im*(c + d*x))))/(d^2*sqrt(a + a*cos(c + d*x))) - (4*im*cos(c/2 + (d*x)/2)*PolyLog(2, im*ℯ^((1/2)*im*(c + d*x))))/(d^2*sqrt(a + a*cos(c + d*x)))]
    @test_int [1/sqrt(a + a*cos(c + d*x)), x, 2, (sqrt(2)*atanh((sqrt(a)*sin(c + d*x))/(sqrt(2)*sqrt(a + a*cos(c + d*x)))))/(sqrt(a)*d)]
    @test_int [1/(x*sqrt(a + a*cos(c + d*x))), x, 0, Unintegrable(1/(x*sqrt(a + a*cos(c + d*x))), x)]


    @test_int [x^3/sqrt(a - a*cos(x)), x, 10, -((4*x^3*atanh(ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x))) + (12*im*x^2*PolyLog(2, -ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x)) - (12*im*x^2*PolyLog(2, ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x)) - (48*x*PolyLog(3, -ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x)) + (48*x*PolyLog(3, ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x)) - (96*im*PolyLog(4, -ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x)) + (96*im*PolyLog(4, ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x))]
    @test_int [x^2/sqrt(a - a*cos(x)), x, 8, -((4*x^2*atanh(ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x))) + (8*im*x*PolyLog(2, -ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x)) - (8*im*x*PolyLog(2, ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x)) - (16*PolyLog(3, -ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x)) + (16*PolyLog(3, ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x))]
    @test_int [x/sqrt(a - a*cos(x)), x, 6, -((4*x*atanh(ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x))) + (4*im*PolyLog(2, -ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x)) - (4*im*PolyLog(2, ℯ^((im*x)/2))*sin(x/2))/sqrt(a - a*cos(x))]
    @test_int [1/sqrt(a - a*cos(x)), x, 2, -((sqrt(2)*atanh((sqrt(a)*sin(x))/(sqrt(2)*sqrt(a - a*cos(x)))))/sqrt(a))]
    @test_int [1/(x*sqrt(a - a*cos(x))), x, 0, Unintegrable(1/(x*sqrt(a - a*cos(x))), x)]


    @test_int [x^3/(a + a*cos(x))^(3/2), x, 16, -((3*x^2)/(a*sqrt(a + a*cos(x)))) - (24*im*x*atan(ℯ^((im*x)/2))*cos(x/2))/(a*sqrt(a + a*cos(x))) - (im*x^3*atan(ℯ^((im*x)/2))*cos(x/2))/(a*sqrt(a + a*cos(x))) + (24*im*cos(x/2)*PolyLog(2, (-im)*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) + (3*im*x^2*cos(x/2)*PolyLog(2, (-im)*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) - (24*im*cos(x/2)*PolyLog(2, im*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) - (3*im*x^2*cos(x/2)*PolyLog(2, im*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) - (12*x*cos(x/2)*PolyLog(3, (-im)*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) + (12*x*cos(x/2)*PolyLog(3, im*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) - (24*im*cos(x/2)*PolyLog(4, (-im)*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) + (24*im*cos(x/2)*PolyLog(4, im*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) + (x^3*tan(x/2))/(2*a*sqrt(a + a*cos(x)))]
    @test_int [x^2/(a + a*cos(x))^(3/2), x, 10, -((2*x)/(a*sqrt(a + a*cos(x)))) - (im*x^2*atan(ℯ^((im*x)/2))*cos(x/2))/(a*sqrt(a + a*cos(x))) + (4*atanh(sin(x/2))*cos(x/2))/(a*sqrt(a + a*cos(x))) + (2*im*x*cos(x/2)*PolyLog(2, (-im)*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) - (2*im*x*cos(x/2)*PolyLog(2, im*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) - (4*cos(x/2)*PolyLog(3, (-im)*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) + (4*cos(x/2)*PolyLog(3, im*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) + (x^2*tan(x/2))/(2*a*sqrt(a + a*cos(x)))]
    @test_int [x^1/(a + a*cos(x))^(3/2), x, 7, -(1/(a*sqrt(a + a*cos(x)))) - (im*x*atan(ℯ^((im*x)/2))*cos(x/2))/(a*sqrt(a + a*cos(x))) + (im*cos(x/2)*PolyLog(2, (-im)*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) - (im*cos(x/2)*PolyLog(2, im*ℯ^((im*x)/2)))/(a*sqrt(a + a*cos(x))) + (x*tan(x/2))/(2*a*sqrt(a + a*cos(x)))]
    @test_int [1/(x*(a + a*cos(x))^(3/2)), x, 0, Unintegrable(1/(x*(a + a*cos(x))^(3/2)), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*cos(e+f*x))^(n/3)=#


    #= Used*to*hang*Rubi =#
    @test_int [(a + a*cos(c + d*x))^(1/3)/x, x, 0, Unintegrable((a + a*cos(c + d*x))^(1/3)/x, x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*cos(e+f*x))^n*with*m*symbolic=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cos(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cos(e+f*x))^n=#


    #= [x^3/(a + b*cos(c + d*x)), x, 12, -((im*x^3*log(1 + (b*ℯ^(im*c + im*d*x))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d)) + (im*x^3*log(1 + (b*ℯ^(im*c + im*d*x))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d) - (3*x^2*PolyLog(2, -((b*ℯ^(im*c + im*d*x))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^2) + (3*x^2*PolyLog(2, -((b*ℯ^(im*c + im*d*x))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^2) - (6*im*x*PolyLog(3, -((b*ℯ^(im*c + im*d*x))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^3) + (6*im*x*PolyLog(3, -((b*ℯ^(im*c + im*d*x))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^3) + (6*PolyLog(4, -((b*ℯ^(im*c + im*d*x))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^4) - (6*PolyLog(4, -((b*ℯ^(im*c + im*d*x))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^4)] =#
    @test_int [x^3/(a + b*cos(x)), x, 12, -((im*x^3*log(1 + (b*ℯ^(im*x))/(a - sqrt(a^2 - b^2))))/sqrt(a^2 - b^2)) + (im*x^3*log(1 + (b*ℯ^(im*x))/(a + sqrt(a^2 - b^2))))/sqrt(a^2 - b^2) - (3*x^2*PolyLog(2, -((b*ℯ^(im*x))/(a - sqrt(a^2 - b^2)))))/sqrt(a^2 - b^2) + (3*x^2*PolyLog(2, -((b*ℯ^(im*x))/(a + sqrt(a^2 - b^2)))))/sqrt(a^2 - b^2) - (6*im*x*PolyLog(3, -((b*ℯ^(im*x))/(a - sqrt(a^2 - b^2)))))/sqrt(a^2 - b^2) + (6*im*x*PolyLog(3, -((b*ℯ^(im*x))/(a + sqrt(a^2 - b^2)))))/sqrt(a^2 - b^2) + (6*PolyLog(4, -((b*ℯ^(im*x))/(a - sqrt(a^2 - b^2)))))/sqrt(a^2 - b^2) - (6*PolyLog(4, -((b*ℯ^(im*x))/(a + sqrt(a^2 - b^2)))))/sqrt(a^2 - b^2)]
    @test_int [x^2/(a + b*cos(c + d*x)), x, 10, -((im*x^2*log(1 + (b*ℯ^(im*(c + d*x)))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d)) + (im*x^2*log(1 + (b*ℯ^(im*(c + d*x)))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d) - (2*x*PolyLog(2, -((b*ℯ^(im*(c + d*x)))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^2) + (2*x*PolyLog(2, -((b*ℯ^(im*(c + d*x)))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^2) - (2*im*PolyLog(3, -((b*ℯ^(im*(c + d*x)))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^3) + (2*im*PolyLog(3, -((b*ℯ^(im*(c + d*x)))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*d^3)]
    @test_int [x^1/(a + b*cos(c + d*x)), x, 8, -((im*x*log(1 + (b*ℯ^(im*(c + d*x)))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d)) + (im*x*log(1 + (b*ℯ^(im*(c + d*x)))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d) - PolyLog(2, -((b*ℯ^(im*(c + d*x)))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d^2) + PolyLog(2, -((b*ℯ^(im*(c + d*x)))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d^2)]
    @test_int [1/(x^1*(a + b*cos(x))), x, 0, Unintegrable(1/(x*(a + b*cos(x))), x)]


    @test_int [(e + f*x)/(a + b*cos(c + d*x))^2, x, 11, -((im*a*(e + f*x)*log(1 + (b*ℯ^(im*(c + d*x)))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*d)) + (im*a*(e + f*x)*log(1 + (b*ℯ^(im*(c + d*x)))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*d) - (f*log(a + b*cos(c + d*x)))/((a^2 - b^2)*d^2) - (a*f*PolyLog(2, -((b*ℯ^(im*(c + d*x)))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*d^2) + (a*f*PolyLog(2, -((b*ℯ^(im*(c + d*x)))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*d^2) - (b*(e + f*x)*sin(c + d*x))/((a^2 - b^2)*d*(a + b*cos(c + d*x)))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cos(e+f*x))^n*with*m*symbolic=#
    end
