@testset "4.3.10 (c+d x)^m (a+b tan)^n" begin
    (a, b, c, d, e, f, m, x, ) = @variables a b c d e f m x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*tan(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*tan(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*tan(e+f*x))^n=#


    @test_int [x^3*tan(a + b*x), x, 6, (im*x^4)/4 - (x^3*log(1 + ℯ^(2*im*(a + b*x))))/b + (3*im*x^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - (3*x*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) - (3*im*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(4*b^4)]
    @test_int [x^2*tan(a + b*x), x, 5, (im*x^3)/3 - (x^2*log(1 + ℯ^(2*im*(a + b*x))))/b + (im*x*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 - PolyLog(3, -ℯ^(2*im*(a + b*x)))/(2*b^3)]
    @test_int [x^1*tan(a + b*x), x, 4, (im*x^2)/2 - (x*log(1 + ℯ^(2*im*(a + b*x))))/b + (im*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2)]
    @test_int [tan(a + b*x)/x^1, x, 0, Unintegrable(tan(a + b*x)/x, x)]
    @test_int [tan(a + b*x)/x^2, x, 0, Unintegrable(tan(a + b*x)/x^2, x)]


    @test_int [x^3*tan(a + b*x)^2, x, 7, -((im*x^3)/b) - x^4/4 + (3*x^2*log(1 + ℯ^(2*im*(a + b*x))))/b^2 - (3*im*x*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^3 + (3*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^4) + (x^3*tan(a + b*x))/b]
    @test_int [x^2*tan(a + b*x)^2, x, 6, -((im*x^2)/b) - x^3/3 + (2*x*log(1 + ℯ^(2*im*(a + b*x))))/b^2 - (im*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^3 + (x^2*tan(a + b*x))/b]
    @test_int [x^1*tan(a + b*x)^2, x, 3, -x^2/2 + log(cos(a + b*x))/b^2 + (x*tan(a + b*x))/b]
    @test_int [tan(a + b*x)^2/x^1, x, 0, Unintegrable(tan(a + b*x)^2/x, x)]
    @test_int [tan(a + b*x)^2/x^2, x, 0, Unintegrable(tan(a + b*x)^2/x^2, x)]


    @test_int [x^3*tan(a + b*x)^3, x, 13, (3*im*x^2)/(2*b^2) + x^3/(2*b) - (im*x^4)/4 - (3*x*log(1 + ℯ^(2*im*(a + b*x))))/b^3 + (x^3*log(1 + ℯ^(2*im*(a + b*x))))/b + (3*im*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^4) - (3*im*x^2*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) + (3*x*PolyLog(3, -ℯ^(2*im*(a + b*x))))/(2*b^3) + (3*im*PolyLog(4, -ℯ^(2*im*(a + b*x))))/(4*b^4) - (3*x^2*tan(a + b*x))/(2*b^2) + (x^3*tan(a + b*x)^2)/(2*b)]
    @test_int [x^2*tan(a + b*x)^3, x, 9, x^2/(2*b) - (im*x^3)/3 + (x^2*log(1 + ℯ^(2*im*(a + b*x))))/b - log(cos(a + b*x))/b^3 - (im*x*PolyLog(2, -ℯ^(2*im*(a + b*x))))/b^2 + PolyLog(3, -ℯ^(2*im*(a + b*x)))/(2*b^3) - (x*tan(a + b*x))/b^2 + (x^2*tan(a + b*x)^2)/(2*b)]
    @test_int [x^1*tan(a + b*x)^3, x, 7, x/(2*b) - (im*x^2)/2 + (x*log(1 + ℯ^(2*im*(a + b*x))))/b - (im*PolyLog(2, -ℯ^(2*im*(a + b*x))))/(2*b^2) - tan(a + b*x)/(2*b^2) + (x*tan(a + b*x)^2)/(2*b)]
    @test_int [tan(a + b*x)^3/x^1, x, 0, Unintegrable(tan(a + b*x)^3/x, x)]
    @test_int [tan(a + b*x)^3/x^2, x, 0, Unintegrable(tan(a + b*x)^3/x^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*tan(e+f*x))^(n/2)=#


    @test_int [x^2/tan(a + b*x)^(3/2) - (4*x)/(b*sqrt(tan(a + b*x))) + x^2*sqrt(tan(a + b*x)), x, 76, -((2*x^2)/(b*sqrt(tan(a + b*x))))]
    @test_int [x^2*tan(a + b*x^2)^(3/2) + x^2/sqrt(tan(a + b*x^2)) + sqrt(tan(a + b*x^2))/b, x, -1, (x*sqrt(tan(a + b*x^2)))/b]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*tan(e+f*x))^n*with*a^2+b^2=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+im*a*tan(e+f*x))^n=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(c + d*x)^3/(a + im*a*tan(e + f*x)), x, 5, (((3*im)/8)*d^3*x)/(a*f^3) - (3*d*(c + d*x)^2)/(8*a*f^2) - ((im/4)*(c + d*x)^3)/(a*f) + (c + d*x)^4/(8*a*d) - (3*d^3)/(8*f^4*(a + im*a*tan(e + f*x))) - (((3*im)/4)*d^2*(c + d*x))/(f^3*(a + im*a*tan(e + f*x))) + (3*d*(c + d*x)^2)/(4*f^2*(a + im*a*tan(e + f*x))) + ((im/2)*(c + d*x)^3)/(f*(a + im*a*tan(e + f*x)))]
    @test_int [(c + d*x)^2/(a + im*a*tan(e + f*x)), x, 4, -(d^2*x)/(4*a*f^2) - ((im/4)*(c + d*x)^2)/(a*f) + (c + d*x)^3/(6*a*d) - ((im/4)*d^2)/(f^3*(a + im*a*tan(e + f*x))) + (d*(c + d*x))/(2*f^2*(a + im*a*tan(e + f*x))) + ((im/2)*(c + d*x)^2)/(f*(a + im*a*tan(e + f*x)))]
    @test_int [(c + d*x)^1/(a + im*a*tan(e + f*x)), x, 3, ((-im/4)*d*x)/(a*f) + (c + d*x)^2/(4*a*d) + d/(4*f^2*(a + im*a*tan(e + f*x))) + ((im/2)*(c + d*x))/(f*(a + im*a*tan(e + f*x)))]
    @test_int [1/((c + d*x)^1*(a + im*a*tan(e + f*x))), x, 7, (cos(2*e - (2*c*f)/d)*CosIntegral((2*c*f)/d + 2*f*x))/(2*a*d) + log(c + d*x)/(2*a*d) - ((im/2)*CosIntegral((2*c*f)/d + 2*f*x)*sin(2*e - (2*c*f)/d))/(a*d) - ((im/2)*cos(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(a*d) - (sin(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(2*a*d)]
    @test_int [1/((c + d*x)^2*(a + im*a*tan(e + f*x))), x, 7, ((-im)*f*cos(2*e - (2*c*f)/d)*CosIntegral((2*c*f)/d + 2*f*x))/(a*d^2) - (f*CosIntegral((2*c*f)/d + 2*f*x)*sin(2*e - (2*c*f)/d))/(a*d^2) - (f*cos(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(a*d^2) + (im*f*sin(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(a*d^2) - 1/(d*(c + d*x)*(a + im*a*tan(e + f*x)))]
    @test_int [1/((c + d*x)^3*(a + im*a*tan(e + f*x))), x, 8, ((-im/2)*f)/(a*d^2*(c + d*x)) - (f^2*cos(2*e - (2*c*f)/d)*CosIntegral((2*c*f)/d + 2*f*x))/(a*d^3) + (im*f^2*CosIntegral((2*c*f)/d + 2*f*x)*sin(2*e - (2*c*f)/d))/(a*d^3) + (im*f^2*cos(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(a*d^3) + (f^2*sin(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(a*d^3) - 1/(2*d*(c + d*x)^2*(a + im*a*tan(e + f*x))) + (im*f)/(d^2*(c + d*x)*(a + im*a*tan(e + f*x)))]


    @test_int [(c + d*x)^3/(a + im*a*tan(e + f*x))^2, x, 10, (-3*d^3*ℯ^((-2*im)*e - (2*im)*f*x))/(16*a^2*f^4) - (3*d^3*ℯ^((-4*im)*e - (4*im)*f*x))/(512*a^2*f^4) - (((3*im)/8)*d^2*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x))/(a^2*f^3) - (((3*im)/128)*d^2*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x))/(a^2*f^3) + (3*d*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x)^2)/(8*a^2*f^2) + (3*d*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x)^2)/(64*a^2*f^2) + ((im/4)*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x)^3)/(a^2*f) + ((im/16)*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x)^3)/(a^2*f) + (c + d*x)^4/(16*a^2*d)]
    @test_int [(c + d*x)^2/(a + im*a*tan(e + f*x))^2, x, 8, ((-im/8)*d^2*ℯ^((-2*im)*e - (2*im)*f*x))/(a^2*f^3) - ((im/128)*d^2*ℯ^((-4*im)*e - (4*im)*f*x))/(a^2*f^3) + (d*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x))/(4*a^2*f^2) + (d*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x))/(32*a^2*f^2) + ((im/4)*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x)^2)/(a^2*f) + ((im/16)*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x)^2)/(a^2*f) + (c + d*x)^3/(12*a^2*d)]
    @test_int [(c + d*x)^1/(a + im*a*tan(e + f*x))^2, x, 7, (((-3*im)/16)*d*x)/(a^2*f) - (d*x^2)/(8*a^2) + (x*(c + d*x))/(4*a^2) + d/(16*f^2*(a + im*a*tan(e + f*x))^2) + ((im/4)*(c + d*x))/(f*(a + im*a*tan(e + f*x))^2) + (3*d)/(16*f^2*(a^2 + im*a^2*tan(e + f*x))) + ((im/4)*(c + d*x))/(f*(a^2 + im*a^2*tan(e + f*x)))]
    @test_int [1/((c + d*x)^1*(a + im*a*tan(e + f*x))^2), x, 21, (cos(2*e - (2*c*f)/d)*CosIntegral((2*c*f)/d + 2*f*x))/(2*a^2*d) + (cos(4*e - (4*c*f)/d)*CosIntegral((4*c*f)/d + 4*f*x))/(4*a^2*d) + log(c + d*x)/(4*a^2*d) - ((im/4)*CosIntegral((4*c*f)/d + 4*f*x)*sin(4*e - (4*c*f)/d))/(a^2*d) - ((im/2)*CosIntegral((2*c*f)/d + 2*f*x)*sin(2*e - (2*c*f)/d))/(a^2*d) - ((im/2)*cos(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(a^2*d) - (sin(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(2*a^2*d) - ((im/4)*cos(4*e - (4*c*f)/d)*SinIntegral((4*c*f)/d + 4*f*x))/(a^2*d) - (sin(4*e - (4*c*f)/d)*SinIntegral((4*c*f)/d + 4*f*x))/(4*a^2*d)]
    @test_int [1/((c + d*x)^2*(a + im*a*tan(e + f*x))^2), x, 24, -(1/(4*a^2*d*(c + d*x))) - cos(2*e + 2*f*x)/(2*a^2*d*(c + d*x)) - cos(2*e + 2*f*x)^2/(4*a^2*d*(c + d*x)) - (im*f*cos(2*e - (2*c*f)/d)*CosIntegral((2*c*f)/d + 2*f*x))/(a^2*d^2) - (im*f*cos(4*e - (4*c*f)/d)*CosIntegral((4*c*f)/d + 4*f*x))/(a^2*d^2) - (f*CosIntegral((4*c*f)/d + 4*f*x)*sin(4*e - (4*c*f)/d))/(a^2*d^2) - (f*CosIntegral((2*c*f)/d + 2*f*x)*sin(2*e - (2*c*f)/d))/(a^2*d^2) + (im*sin(2*e + 2*f*x))/(2*a^2*d*(c + d*x)) + sin(2*e + 2*f*x)^2/(4*a^2*d*(c + d*x)) + (im*sin(4*e + 4*f*x))/(4*a^2*d*(c + d*x)) - (f*cos(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(a^2*d^2) + (im*f*sin(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(a^2*d^2) - (f*cos(4*e - (4*c*f)/d)*SinIntegral((4*c*f)/d + 4*f*x))/(a^2*d^2) + (im*f*sin(4*e - (4*c*f)/d)*SinIntegral((4*c*f)/d + 4*f*x))/(a^2*d^2)]


    @test_int [(c + d*x)^3/(a + im*a*tan(e + f*x))^3, x, 14, (-9*d^3*ℯ^((-2*im)*e - (2*im)*f*x))/(64*a^3*f^4) - (9*d^3*ℯ^((-4*im)*e - (4*im)*f*x))/(1024*a^3*f^4) - (d^3*ℯ^((-6*im)*e - (6*im)*f*x))/(1728*a^3*f^4) - (((9*im)/32)*d^2*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x))/(a^3*f^3) - (((9*im)/256)*d^2*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x))/(a^3*f^3) - ((im/288)*d^2*ℯ^((-6*im)*e - (6*im)*f*x)*(c + d*x))/(a^3*f^3) + (9*d*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x)^2)/(32*a^3*f^2) + (9*d*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x)^2)/(128*a^3*f^2) + (d*ℯ^((-6*im)*e - (6*im)*f*x)*(c + d*x)^2)/(96*a^3*f^2) + (((3*im)/16)*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x)^3)/(a^3*f) + (((3*im)/32)*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x)^3)/(a^3*f) + ((im/48)*ℯ^((-6*im)*e - (6*im)*f*x)*(c + d*x)^3)/(a^3*f) + (c + d*x)^4/(32*a^3*d)]
    @test_int [(c + d*x)^2/(a + im*a*tan(e + f*x))^3, x, 11, (((-3*im)/32)*d^2*ℯ^((-2*im)*e - (2*im)*f*x))/(a^3*f^3) - (((3*im)/256)*d^2*ℯ^((-4*im)*e - (4*im)*f*x))/(a^3*f^3) - ((im/864)*d^2*ℯ^((-6*im)*e - (6*im)*f*x))/(a^3*f^3) + (3*d*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x))/(16*a^3*f^2) + (3*d*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x))/(64*a^3*f^2) + (d*ℯ^((-6*im)*e - (6*im)*f*x)*(c + d*x))/(144*a^3*f^2) + (((3*im)/16)*ℯ^((-2*im)*e - (2*im)*f*x)*(c + d*x)^2)/(a^3*f) + (((3*im)/32)*ℯ^((-4*im)*e - (4*im)*f*x)*(c + d*x)^2)/(a^3*f) + ((im/48)*ℯ^((-6*im)*e - (6*im)*f*x)*(c + d*x)^2)/(a^3*f) + (c + d*x)^3/(24*a^3*d)]
    @test_int [(c + d*x)^1/(a + im*a*tan(e + f*x))^3, x, 11, (((-11*im)/96)*d*x)/(a^3*f) - (d*x^2)/(16*a^3) + (x*(c + d*x))/(8*a^3) + d/(36*f^2*(a + im*a*tan(e + f*x))^3) + ((im/6)*(c + d*x))/(f*(a + im*a*tan(e + f*x))^3) + (5*d)/(96*a*f^2*(a + im*a*tan(e + f*x))^2) + ((im/8)*(c + d*x))/(a*f*(a + im*a*tan(e + f*x))^2) + (11*d)/(96*f^2*(a^3 + im*a^3*tan(e + f*x))) + ((im/8)*(c + d*x))/(f*(a^3 + im*a^3*tan(e + f*x)))]
    @test_int [1/((c + d*x)^1*(a + im*a*tan(e + f*x))^3), x, 53, (3*cos(2*e - (2*c*f)/d)*CosIntegral((2*c*f)/d + 2*f*x))/(8*a^3*d) + (3*cos(4*e - (4*c*f)/d)*CosIntegral((4*c*f)/d + 4*f*x))/(8*a^3*d) + (cos(6*e - (6*c*f)/d)*CosIntegral((6*c*f)/d + 6*f*x))/(8*a^3*d) + log(c + d*x)/(8*a^3*d) - ((im/8)*CosIntegral((6*c*f)/d + 6*f*x)*sin(6*e - (6*c*f)/d))/(a^3*d) - (((3*im)/8)*CosIntegral((4*c*f)/d + 4*f*x)*sin(4*e - (4*c*f)/d))/(a^3*d) - (((3*im)/8)*CosIntegral((2*c*f)/d + 2*f*x)*sin(2*e - (2*c*f)/d))/(a^3*d) - (((3*im)/8)*cos(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(a^3*d) - (3*sin(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(8*a^3*d) - (((3*im)/8)*cos(4*e - (4*c*f)/d)*SinIntegral((4*c*f)/d + 4*f*x))/(a^3*d) - (3*sin(4*e - (4*c*f)/d)*SinIntegral((4*c*f)/d + 4*f*x))/(8*a^3*d) - ((im/8)*cos(6*e - (6*c*f)/d)*SinIntegral((6*c*f)/d + 6*f*x))/(a^3*d) - (sin(6*e - (6*c*f)/d)*SinIntegral((6*c*f)/d + 6*f*x))/(8*a^3*d)]
    @test_int [1/((c + d*x)^2*(a + im*a*tan(e + f*x))^3), x, 60, -(1/(8*a^3*d*(c + d*x))) - (9*cos(2*e + 2*f*x))/(32*a^3*d*(c + d*x)) - (3*cos(2*e + 2*f*x)^2)/(8*a^3*d*(c + d*x)) - cos(2*e + 2*f*x)^3/(8*a^3*d*(c + d*x)) - (3*cos(6*e + 6*f*x))/(32*a^3*d*(c + d*x)) - (3*im*f*cos(2*e - (2*c*f)/d)*CosIntegral((2*c*f)/d + 2*f*x))/(4*a^3*d^2) - (3*im*f*cos(4*e - (4*c*f)/d)*CosIntegral((4*c*f)/d + 4*f*x))/(2*a^3*d^2) - (3*im*f*cos(6*e - (6*c*f)/d)*CosIntegral((6*c*f)/d + 6*f*x))/(4*a^3*d^2) - (3*f*CosIntegral((6*c*f)/d + 6*f*x)*sin(6*e - (6*c*f)/d))/(4*a^3*d^2) - (3*f*CosIntegral((4*c*f)/d + 4*f*x)*sin(4*e - (4*c*f)/d))/(2*a^3*d^2) - (3*f*CosIntegral((2*c*f)/d + 2*f*x)*sin(2*e - (2*c*f)/d))/(4*a^3*d^2) + (15*im*sin(2*e + 2*f*x))/(32*a^3*d*(c + d*x)) + (3*sin(2*e + 2*f*x)^2)/(8*a^3*d*(c + d*x)) - (im*sin(2*e + 2*f*x)^3)/(8*a^3*d*(c + d*x)) + (3*im*sin(4*e + 4*f*x))/(8*a^3*d*(c + d*x)) + (3*im*sin(6*e + 6*f*x))/(32*a^3*d*(c + d*x)) - (3*f*cos(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(4*a^3*d^2) + (3*im*f*sin(2*e - (2*c*f)/d)*SinIntegral((2*c*f)/d + 2*f*x))/(4*a^3*d^2) - (3*f*cos(4*e - (4*c*f)/d)*SinIntegral((4*c*f)/d + 4*f*x))/(2*a^3*d^2) + (3*im*f*sin(4*e - (4*c*f)/d)*SinIntegral((4*c*f)/d + 4*f*x))/(2*a^3*d^2) - (3*f*cos(6*e - (6*c*f)/d)*SinIntegral((6*c*f)/d + 6*f*x))/(4*a^3*d^2) + (3*im*f*sin(6*e - (6*c*f)/d)*SinIntegral((6*c*f)/d + 6*f*x))/(4*a^3*d^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*tan(e+f*x))^n*with*m*symbolic=#


    @test_int [(c + d*x)^m*(a + im*a*tan(e + f*x))^2, x, 0, Unintegrable((c + d*x)^m*(a + im*a*tan(e + f*x))^2, x)]
    @test_int [(c + d*x)^m*(a + im*a*tan(e + f*x))^1, x, 0, Unintegrable((c + d*x)^m*(a + im*a*tan(e + f*x)), x)]
    @test_int [(c + d*x)^m/(a + im*a*tan(e + f*x))^1, x, 2, (c + d*x)^(1 + m)/(2*a*d*(1 + m)) + (im*2^(-2 - m)*(c + d*x)^m*Gamma(1 + m, ((2*im)*f*(c + d*x))/d))/(a*ℯ^((2*im)*(e - (c*f)/d))*f*((im*f*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m/(a + im*a*tan(e + f*x))^2, x, 4, (c + d*x)^(1 + m)/(4*a^2*d*(1 + m)) + (im*2^(-2 - m)*(c + d*x)^m*Gamma(1 + m, ((2*im)*f*(c + d*x))/d))/(a^2*ℯ^((2*im)*(e - (c*f)/d))*f*((im*f*(c + d*x))/d)^m) + (im*4^(-2 - m)*(c + d*x)^m*Gamma(1 + m, ((4*im)*f*(c + d*x))/d))/(a^2*ℯ^((4*im)*(e - (c*f)/d))*f*((im*f*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m/(a + im*a*tan(e + f*x))^3, x, 5, (c + d*x)^(1 + m)/(8*a^3*d*(1 + m)) + ((3*im)*2^(-4 - m)*(c + d*x)^m*Gamma(1 + m, ((2*im)*f*(c + d*x))/d))/(a^3*ℯ^((2*im)*(e - (c*f)/d))*f*((im*f*(c + d*x))/d)^m) + ((3*im)*2^(-5 - 2*m)*(c + d*x)^m*Gamma(1 + m, ((4*im)*f*(c + d*x))/d))/(a^3*ℯ^((4*im)*(e - (c*f)/d))*f*((im*f*(c + d*x))/d)^m) + (im*2^(-4 - m)*3^(-1 - m)*(c + d*x)^m*Gamma(1 + m, ((6*im)*f*(c + d*x))/d))/(a^3*ℯ^((6*im)*(e - (c*f)/d))*f*((im*f*(c + d*x))/d)^m)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*tan(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*tan(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(c + d*x)^3*(a + b*tan(e + f*x)), x, 8, (a*(c + d*x)^4)/(4*d) + ((im/4)*b*(c + d*x)^4)/d - (b*(c + d*x)^3*log(1 + ℯ^((2*im)*(e + f*x))))/f + (((3*im)/2)*b*d*(c + d*x)^2*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 - (3*b*d^2*(c + d*x)*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/(2*f^3) - (((3*im)/4)*b*d^3*PolyLog(4, -ℯ^((2*im)*(e + f*x))))/f^4]
    @test_int [(c + d*x)^2*(a + b*tan(e + f*x)), x, 7, (a*(c + d*x)^3)/(3*d) + ((im/3)*b*(c + d*x)^3)/d - (b*(c + d*x)^2*log(1 + ℯ^((2*im)*(e + f*x))))/f + (im*b*d*(c + d*x)*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 - (b*d^2*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/(2*f^3)]
    @test_int [(c + d*x)^1*(a + b*tan(e + f*x)), x, 6, (a*(c + d*x)^2)/(2*d) + ((im/2)*b*(c + d*x)^2)/d - (b*(c + d*x)*log(1 + ℯ^((2*im)*(e + f*x))))/f + ((im/2)*b*d*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2]
    @test_int [(a + b*tan(e + f*x))/(c + d*x)^1, x, 0, Unintegrable((a + b*tan(e + f*x))/(c + d*x), x)]
    @test_int [(a + b*tan(e + f*x))/(c + d*x)^2, x, 0, Unintegrable((a + b*tan(e + f*x))/(c + d*x)^2, x)]


    @test_int [(c + d*x)^3*(a + b*tan(e + f*x))^2, x, 15, ((-im)*b^2*(c + d*x)^3)/f + (a^2*(c + d*x)^4)/(4*d) + ((im/2)*a*b*(c + d*x)^4)/d - (b^2*(c + d*x)^4)/(4*d) + (3*b^2*d*(c + d*x)^2*log(1 + ℯ^((2*im)*(e + f*x))))/f^2 - (2*a*b*(c + d*x)^3*log(1 + ℯ^((2*im)*(e + f*x))))/f - ((3*im)*b^2*d^2*(c + d*x)*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^3 + ((3*im)*a*b*d*(c + d*x)^2*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 + (3*b^2*d^3*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/(2*f^4) - (3*a*b*d^2*(c + d*x)*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/f^3 - (((3*im)/2)*a*b*d^3*PolyLog(4, -ℯ^((2*im)*(e + f*x))))/f^4 + (b^2*(c + d*x)^3*tan(e + f*x))/f]
    @test_int [(c + d*x)^2*(a + b*tan(e + f*x))^2, x, 13, ((-im)*b^2*(c + d*x)^2)/f + (a^2*(c + d*x)^3)/(3*d) + (((2*im)/3)*a*b*(c + d*x)^3)/d - (b^2*(c + d*x)^3)/(3*d) + (2*b^2*d*(c + d*x)*log(1 + ℯ^((2*im)*(e + f*x))))/f^2 - (2*a*b*(c + d*x)^2*log(1 + ℯ^((2*im)*(e + f*x))))/f - (im*b^2*d^2*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^3 + ((2*im)*a*b*d*(c + d*x)*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 - (a*b*d^2*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/f^3 + (b^2*(c + d*x)^2*tan(e + f*x))/f]
    @test_int [(c + d*x)^1*(a + b*tan(e + f*x))^2, x, 9, -(b^2*c*x) - (b^2*d*x^2)/2 + (a^2*(c + d*x)^2)/(2*d) + (im*a*b*(c + d*x)^2)/d - (2*a*b*(c + d*x)*log(1 + ℯ^((2*im)*(e + f*x))))/f + (b^2*d*log(cos(e + f*x)))/f^2 + (im*a*b*d*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 + (b^2*(c + d*x)*tan(e + f*x))/f]
    @test_int [(a + b*tan(e + f*x))^2/(c + d*x)^1, x, 0, Unintegrable((a + b*tan(e + f*x))^2/(c + d*x), x)]
    @test_int [(a + b*tan(e + f*x))^2/(c + d*x)^2, x, 0, Unintegrable((a + b*tan(e + f*x))^2/(c + d*x)^2, x)]


    @test_int [(c + d*x)^3*(a + b*tan(e + f*x))^3, x, 28, (((3*im)/2)*b^3*d*(c + d*x)^2)/f^2 - ((3*im)*a*b^2*(c + d*x)^3)/f + (b^3*(c + d*x)^3)/(2*f) + (a^3*(c + d*x)^4)/(4*d) + (((3*im)/4)*a^2*b*(c + d*x)^4)/d - (3*a*b^2*(c + d*x)^4)/(4*d) - ((im/4)*b^3*(c + d*x)^4)/d - (3*b^3*d^2*(c + d*x)*log(1 + ℯ^((2*im)*(e + f*x))))/f^3 + (9*a*b^2*d*(c + d*x)^2*log(1 + ℯ^((2*im)*(e + f*x))))/f^2 - (3*a^2*b*(c + d*x)^3*log(1 + ℯ^((2*im)*(e + f*x))))/f + (b^3*(c + d*x)^3*log(1 + ℯ^((2*im)*(e + f*x))))/f + (((3*im)/2)*b^3*d^3*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^4 - ((9*im)*a*b^2*d^2*(c + d*x)*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^3 + (((9*im)/2)*a^2*b*d*(c + d*x)^2*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 - (((3*im)/2)*b^3*d*(c + d*x)^2*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 + (9*a*b^2*d^3*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/(2*f^4) - (9*a^2*b*d^2*(c + d*x)*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/(2*f^3) + (3*b^3*d^2*(c + d*x)*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/(2*f^3) - (((9*im)/4)*a^2*b*d^3*PolyLog(4, -ℯ^((2*im)*(e + f*x))))/f^4 + (((3*im)/4)*b^3*d^3*PolyLog(4, -ℯ^((2*im)*(e + f*x))))/f^4 - (3*b^3*d*(c + d*x)^2*tan(e + f*x))/(2*f^2) + (3*a*b^2*(c + d*x)^3*tan(e + f*x))/f + (b^3*(c + d*x)^3*tan(e + f*x)^2)/(2*f)]
    @test_int [(c + d*x)^2*(a + b*tan(e + f*x))^3, x, 22, (b^3*c*d*x)/f + (b^3*d^2*x^2)/(2*f) - ((3*im)*a*b^2*(c + d*x)^2)/f + (a^3*(c + d*x)^3)/(3*d) + (im*a^2*b*(c + d*x)^3)/d - (a*b^2*(c + d*x)^3)/d - ((im/3)*b^3*(c + d*x)^3)/d + (6*a*b^2*d*(c + d*x)*log(1 + ℯ^((2*im)*(e + f*x))))/f^2 - (3*a^2*b*(c + d*x)^2*log(1 + ℯ^((2*im)*(e + f*x))))/f + (b^3*(c + d*x)^2*log(1 + ℯ^((2*im)*(e + f*x))))/f - (b^3*d^2*log(cos(e + f*x)))/f^3 - ((3*im)*a*b^2*d^2*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^3 + ((3*im)*a^2*b*d*(c + d*x)*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 - (im*b^3*d*(c + d*x)*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 - (3*a^2*b*d^2*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/(2*f^3) + (b^3*d^2*PolyLog(3, -ℯ^((2*im)*(e + f*x))))/(2*f^3) - (b^3*d*(c + d*x)*tan(e + f*x))/f^2 + (3*a*b^2*(c + d*x)^2*tan(e + f*x))/f + (b^3*(c + d*x)^2*tan(e + f*x)^2)/(2*f)]
    @test_int [(c + d*x)^1*(a + b*tan(e + f*x))^3, x, 16, -3*a*b^2*c*x + (b^3*d*x)/(2*f) - (3*a*b^2*d*x^2)/2 + (a^3*(c + d*x)^2)/(2*d) + (((3*im)/2)*a^2*b*(c + d*x)^2)/d - ((im/2)*b^3*(c + d*x)^2)/d - (3*a^2*b*(c + d*x)*log(1 + ℯ^((2*im)*(e + f*x))))/f + (b^3*(c + d*x)*log(1 + ℯ^((2*im)*(e + f*x))))/f + (3*a*b^2*d*log(cos(e + f*x)))/f^2 + (((3*im)/2)*a^2*b*d*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 - ((im/2)*b^3*d*PolyLog(2, -ℯ^((2*im)*(e + f*x))))/f^2 - (b^3*d*tan(e + f*x))/(2*f^2) + (3*a*b^2*(c + d*x)*tan(e + f*x))/f + (b^3*(c + d*x)*tan(e + f*x)^2)/(2*f)]
    @test_int [(a + b*tan(e + f*x))^3/(c + d*x)^1, x, 0, Unintegrable((a + b*tan(e + f*x))^3/(c + d*x), x)]
    @test_int [(a + b*tan(e + f*x))^3/(c + d*x)^2, x, 0, Unintegrable((a + b*tan(e + f*x))^3/(c + d*x)^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(c + d*x)^3/(a + b*tan(e + f*x)), x, 6, (c + d*x)^4/(4*(a + im*b)*d) + (b*(c + d*x)^3*log(1 + ((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2))/((a^2 + b^2)*f) - (3*im*b*d*(c + d*x)^2*PolyLog(2, -(((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2)))/(2*(a^2 + b^2)*f^2) + (3*b*d^2*(c + d*x)*PolyLog(3, -(((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2)))/(2*(a^2 + b^2)*f^3) + (3*im*b*d^3*PolyLog(4, -(((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2)))/(4*(a^2 + b^2)*f^4)]
    @test_int [(c + d*x)^2/(a + b*tan(e + f*x)), x, 5, (c + d*x)^3/(3*(a + im*b)*d) + (b*(c + d*x)^2*log(1 + ((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2))/((a^2 + b^2)*f) - (im*b*d*(c + d*x)*PolyLog(2, -(((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2)))/((a^2 + b^2)*f^2) + (b*d^2*PolyLog(3, -(((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2)))/(2*(a^2 + b^2)*f^3)]
    @test_int [(c + d*x)^1/(a + b*tan(e + f*x)), x, 4, (c + d*x)^2/(2*(a + im*b)*d) + (b*(c + d*x)*log(1 + ((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2))/((a^2 + b^2)*f) - (im*b*d*PolyLog(2, -(((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2)))/(2*(a^2 + b^2)*f^2)]
    @test_int [1/((c + d*x)^1*(a + b*tan(e + f*x))), x, 0, Unintegrable(1/((c + d*x)*(a + b*tan(e + f*x))), x)]
    @test_int [1/((c + d*x)^2*(a + b*tan(e + f*x))), x, 0, Unintegrable(1/((c + d*x)^2*(a + b*tan(e + f*x))), x)]


    @test_int [(c + d*x)^3/(a + b*tan(e + f*x))^2, x, 21, -((2*im*b^2*(c + d*x)^3)/((a^2 + b^2)^2*f)) + (2*b^2*(c + d*x)^3)/((a + im*b)*(im*a + b)^2*(im*a - b + (im*a + b)*ℯ^(2*im*e + 2*im*f*x))*f) + (c + d*x)^4/(4*(a - im*b)^2*d) + (b*(c + d*x)^4)/((im*a - b)*(a - im*b)^2*d) - (b^2*(c + d*x)^4)/((a^2 + b^2)^2*d) + (3*b^2*d*(c + d*x)^2*log(1 + ((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b)))/((a^2 + b^2)^2*f^2) + (2*b*(c + d*x)^3*log(1 + ((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b)))/((a - im*b)^2*(a + im*b)*f) - (2*im*b^2*(c + d*x)^3*log(1 + ((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b)))/((a^2 + b^2)^2*f) - (3*im*b^2*d^2*(c + d*x)*PolyLog(2, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((a^2 + b^2)^2*f^3) + (3*b*d*(c + d*x)^2*PolyLog(2, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((im*a - b)*(a - im*b)^2*f^2) - (3*b^2*d*(c + d*x)^2*PolyLog(2, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((a^2 + b^2)^2*f^2) + (3*b^2*d^3*PolyLog(3, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/(2*(a^2 + b^2)^2*f^4) + (3*b*d^2*(c + d*x)*PolyLog(3, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((a - im*b)^2*(a + im*b)*f^3) - (3*im*b^2*d^2*(c + d*x)*PolyLog(3, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((a^2 + b^2)^2*f^3) - (3*b*d^3*PolyLog(4, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/(2*(im*a - b)*(a - im*b)^2*f^4) + (3*b^2*d^3*PolyLog(4, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/(2*(a^2 + b^2)^2*f^4)]
    @test_int [(c + d*x)^2/(a + b*tan(e + f*x))^2, x, 18, -((2*im*b^2*(c + d*x)^2)/((a^2 + b^2)^2*f)) + (2*b^2*(c + d*x)^2)/((a + im*b)*(im*a + b)^2*(im*a - b + (im*a + b)*ℯ^(2*im*e + 2*im*f*x))*f) + (c + d*x)^3/(3*(a - im*b)^2*d) + (4*b*(c + d*x)^3)/(3*(im*a - b)*(a - im*b)^2*d) - (4*b^2*(c + d*x)^3)/(3*(a^2 + b^2)^2*d) + (2*b^2*d*(c + d*x)*log(1 + ((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b)))/((a^2 + b^2)^2*f^2) + (2*b*(c + d*x)^2*log(1 + ((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b)))/((a - im*b)^2*(a + im*b)*f) - (2*im*b^2*(c + d*x)^2*log(1 + ((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b)))/((a^2 + b^2)^2*f) - (im*b^2*d^2*PolyLog(2, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((a^2 + b^2)^2*f^3) + (2*b*d*(c + d*x)*PolyLog(2, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((im*a - b)*(a - im*b)^2*f^2) - (2*b^2*d*(c + d*x)*PolyLog(2, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((a^2 + b^2)^2*f^2) + (b*d^2*PolyLog(3, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((a - im*b)^2*(a + im*b)*f^3) - (im*b^2*d^2*PolyLog(3, -(((a - im*b)*ℯ^(2*im*e + 2*im*f*x))/(a + im*b))))/((a^2 + b^2)^2*f^3)]
    @test_int [(c + d*x)^1/(a + b*tan(e + f*x))^2, x, 5, -((c + d*x)^2/(2*(a^2 + b^2)*d)) + (b*d + 2*a*c*f + 2*a*d*f*x)^2/(4*a*(a + im*b)*(a^2 + b^2)*d*f^2) + (b*(b*d + 2*a*c*f + 2*a*d*f*x)*log(1 + ((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2))/((a^2 + b^2)^2*f^2) - (im*a*b*d*PolyLog(2, -(((a^2 + b^2)*ℯ^(2*im*(e + f*x)))/(a + im*b)^2)))/((a^2 + b^2)^2*f^2) - (b*(c + d*x))/((a^2 + b^2)*f*(a + b*tan(e + f*x)))]
    @test_int [1/((c + d*x)^1*(a + b*tan(e + f*x))^2), x, 0, Unintegrable(1/((c + d*x)*(a + b*tan(e + f*x))^2), x)]
    @test_int [1/((c + d*x)^2*(a + b*tan(e + f*x))^2), x, 0, Unintegrable(1/((c + d*x)^2*(a + b*tan(e + f*x))^2), x)]
    end
