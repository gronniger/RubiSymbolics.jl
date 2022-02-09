@testset "4.5.10 (c+d x)^m (a+b sec)^n" begin
    (a, b, c, d, e, f, m, n, x, ) = @variables a b c d e f m n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*sec(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*sec(e+f*x))^n*with*a^2-b^2=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*sec(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(a + a*sec(e + f*x))*(c + d*x)^3, x, 11, (a*(c + d*x)^4)/(4*d) - (2*im*a*(c + d*x)^3*atan(ℯ^(im*(e + f*x))))/f + (3*im*a*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (3*im*a*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 - (6*a*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/f^3 + (6*a*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(e + f*x))))/f^3 - (6*im*a*d^3*PolyLog(4, (-im)*ℯ^(im*(e + f*x))))/f^4 + (6*im*a*d^3*PolyLog(4, im*ℯ^(im*(e + f*x))))/f^4]
    @test_int [(a + a*sec(e + f*x))*(c + d*x)^2, x, 9, (a*(c + d*x)^3)/(3*d) - (2*im*a*(c + d*x)^2*atan(ℯ^(im*(e + f*x))))/f + (2*im*a*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (2*im*a*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 - (2*a*d^2*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/f^3 + (2*a*d^2*PolyLog(3, im*ℯ^(im*(e + f*x))))/f^3]
    @test_int [(a + a*sec(e + f*x))*(c + d*x)^1, x, 7, (a*(c + d*x)^2)/(2*d) - (2*im*a*(c + d*x)*atan(ℯ^(im*(e + f*x))))/f + (im*a*d*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (im*a*d*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2]
    @test_int [(a + a*sec(e + f*x))/(c + d*x)^1, x, 0, Unintegrable((a + a*sec(e + f*x))/(c + d*x), x)]
    @test_int [(a + a*sec(e + f*x))/(c + d*x)^2, x, 0, Unintegrable((a + a*sec(e + f*x))/(c + d*x)^2, x)]


    @test_int [(a + a*sec(e + f*x))^2*(c + d*x)^3, x, 17, -((im*a^2*(c + d*x)^3)/f) + (a^2*(c + d*x)^4)/(4*d) - (4*im*a^2*(c + d*x)^3*atan(ℯ^(im*(e + f*x))))/f + (3*a^2*d*(c + d*x)^2*log(1 + ℯ^(2*im*(e + f*x))))/f^2 + (6*im*a^2*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (6*im*a^2*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 - (3*im*a^2*d^2*(c + d*x)*PolyLog(2, -ℯ^(2*im*(e + f*x))))/f^3 - (12*a^2*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/f^3 + (12*a^2*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(e + f*x))))/f^3 + (3*a^2*d^3*PolyLog(3, -ℯ^(2*im*(e + f*x))))/(2*f^4) - (12*im*a^2*d^3*PolyLog(4, (-im)*ℯ^(im*(e + f*x))))/f^4 + (12*im*a^2*d^3*PolyLog(4, im*ℯ^(im*(e + f*x))))/f^4 + (a^2*(c + d*x)^3*tan(e + f*x))/f]
    @test_int [(a + a*sec(e + f*x))^2*(c + d*x)^2, x, 14, -((im*a^2*(c + d*x)^2)/f) + (a^2*(c + d*x)^3)/(3*d) - (4*im*a^2*(c + d*x)^2*atan(ℯ^(im*(e + f*x))))/f + (2*a^2*d*(c + d*x)*log(1 + ℯ^(2*im*(e + f*x))))/f^2 + (4*im*a^2*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (4*im*a^2*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 - (im*a^2*d^2*PolyLog(2, -ℯ^(2*im*(e + f*x))))/f^3 - (4*a^2*d^2*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/f^3 + (4*a^2*d^2*PolyLog(3, im*ℯ^(im*(e + f*x))))/f^3 + (a^2*(c + d*x)^2*tan(e + f*x))/f]
    @test_int [(a + a*sec(e + f*x))^2*(c + d*x)^1, x, 9, (a^2*(c + d*x)^2)/(2*d) - (4*im*a^2*(c + d*x)*atan(ℯ^(im*(e + f*x))))/f + (a^2*d*log(cos(e + f*x)))/f^2 + (2*im*a^2*d*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (2*im*a^2*d*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 + (a^2*(c + d*x)*tan(e + f*x))/f]
    @test_int [(a + a*sec(e + f*x))^2/(c + d*x)^1, x, 0, Unintegrable((a + a*sec(e + f*x))^2/(c + d*x), x)]
    @test_int [(a + a*sec(e + f*x))^2/(c + d*x)^2, x, 0, Unintegrable((a + a*sec(e + f*x))^2/(c + d*x)^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [1/(a + a*sec(e + f*x))*(c + d*x)^3, x, 9, (im*(c + d*x)^3)/(a*f) + (c + d*x)^4/(4*a*d) - (6*d*(c + d*x)^2*log(1 + ℯ^(im*(e + f*x))))/(a*f^2) + (12*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(im*(e + f*x))))/(a*f^3) - (12*d^3*PolyLog(3, -ℯ^(im*(e + f*x))))/(a*f^4) - ((c + d*x)^3*tan(e/2 + (f*x)/2))/(a*f)]
    @test_int [1/(a + a*sec(e + f*x))*(c + d*x)^2, x, 8, (im*(c + d*x)^2)/(a*f) + (c + d*x)^3/(3*a*d) - (4*d*(c + d*x)*log(1 + ℯ^(im*(e + f*x))))/(a*f^2) + (4*im*d^2*PolyLog(2, -ℯ^(im*(e + f*x))))/(a*f^3) - ((c + d*x)^2*tan(e/2 + (f*x)/2))/(a*f)]
    @test_int [1/(a + a*sec(e + f*x))*(c + d*x)^1, x, 5, (c + d*x)^2/(2*a*d) - (2*d*log(cos(e/2 + (f*x)/2)))/(a*f^2) - ((c + d*x)*tan(e/2 + (f*x)/2))/(a*f)]
    @test_int [1/(a + a*sec(e + f*x))/(c + d*x)^1, x, 0, Unintegrable(1/((c + d*x)*(a + a*sec(e + f*x))), x)]
    @test_int [1/(a + a*sec(e + f*x))/(c + d*x)^2, x, 0, Unintegrable(1/((c + d*x)^2*(a + a*sec(e + f*x))), x)]


    @test_int [1/(a + a*sec(e + f*x))^2*(c + d*x)^3, x, 19, (5*im*(c + d*x)^3)/(3*a^2*f) + (c + d*x)^4/(4*a^2*d) - (10*d*(c + d*x)^2*log(1 + ℯ^(im*(e + f*x))))/(a^2*f^2) + (4*d^3*log(cos(e/2 + (f*x)/2)))/(a^2*f^4) + (20*im*d^2*(c + d*x)*PolyLog(2, -ℯ^(im*(e + f*x))))/(a^2*f^3) - (20*d^3*PolyLog(3, -ℯ^(im*(e + f*x))))/(a^2*f^4) - (d*(c + d*x)^2*sec(e/2 + (f*x)/2)^2)/(2*a^2*f^2) + (2*d^2*(c + d*x)*tan(e/2 + (f*x)/2))/(a^2*f^3) - (5*(c + d*x)^3*tan(e/2 + (f*x)/2))/(3*a^2*f) + ((c + d*x)^3*sec(e/2 + (f*x)/2)^2*tan(e/2 + (f*x)/2))/(6*a^2*f)]
    @test_int [1/(a + a*sec(e + f*x))^2*(c + d*x)^2, x, 17, (5*im*(c + d*x)^2)/(3*a^2*f) + (c + d*x)^3/(3*a^2*d) - (20*d*(c + d*x)*log(1 + ℯ^(im*(e + f*x))))/(3*a^2*f^2) + (20*im*d^2*PolyLog(2, -ℯ^(im*(e + f*x))))/(3*a^2*f^3) - (d*(c + d*x)*sec(e/2 + (f*x)/2)^2)/(3*a^2*f^2) + (2*d^2*tan(e/2 + (f*x)/2))/(3*a^2*f^3) - (5*(c + d*x)^2*tan(e/2 + (f*x)/2))/(3*a^2*f) + ((c + d*x)^2*sec(e/2 + (f*x)/2)^2*tan(e/2 + (f*x)/2))/(6*a^2*f)]
    @test_int [1/(a + a*sec(e + f*x))^2*(c + d*x)^1, x, 9, (c + d*x)^2/(2*a^2*d) - (10*d*log(cos(e/2 + (f*x)/2)))/(3*a^2*f^2) - (d*sec(e/2 + (f*x)/2)^2)/(6*a^2*f^2) - (5*(c + d*x)*tan(e/2 + (f*x)/2))/(3*a^2*f) + ((c + d*x)*sec(e/2 + (f*x)/2)^2*tan(e/2 + (f*x)/2))/(6*a^2*f)]
    @test_int [1/(a + a*sec(e + f*x))^2/(c + d*x)^1, x, 0, Unintegrable(1/((c + d*x)*(a + a*sec(e + f*x))^2), x)]
    @test_int [1/(a + a*sec(e + f*x))^2/(c + d*x)^2, x, 0, Unintegrable(1/((c + d*x)^2*(a + a*sec(e + f*x))^2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*sec(e+f*x))^n*with*m*symbolic=#


    @test_int [(c + d*x)^m*(a + a*sec(e + f*x))^n, x, 0, Unintegrable((c + d*x)^m*(a + a*sec(e + f*x))^n, x)]


    @test_int [(c + d*x)^m*(a + a*sec(e + f*x))^1, x, 0, Unintegrable((c + d*x)^m*(a + a*sec(e + f*x)), x)]
    @test_int [(c + d*x)^m/(a + a*sec(e + f*x))^1, x, 0, Unintegrable((c + d*x)^m/(a + a*sec(e + f*x)), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*sec(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*sec(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(a + b*sec(e + f*x))*(c + d*x)^3, x, 11, (a*(c + d*x)^4)/(4*d) - (2*im*b*(c + d*x)^3*atan(ℯ^(im*(e + f*x))))/f + (3*im*b*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (3*im*b*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 - (6*b*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/f^3 + (6*b*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(e + f*x))))/f^3 - (6*im*b*d^3*PolyLog(4, (-im)*ℯ^(im*(e + f*x))))/f^4 + (6*im*b*d^3*PolyLog(4, im*ℯ^(im*(e + f*x))))/f^4]
    @test_int [(a + b*sec(e + f*x))*(c + d*x)^2, x, 9, (a*(c + d*x)^3)/(3*d) - (2*im*b*(c + d*x)^2*atan(ℯ^(im*(e + f*x))))/f + (2*im*b*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (2*im*b*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 - (2*b*d^2*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/f^3 + (2*b*d^2*PolyLog(3, im*ℯ^(im*(e + f*x))))/f^3]
    @test_int [(a + b*sec(e + f*x))*(c + d*x)^1, x, 7, (a*(c + d*x)^2)/(2*d) - (2*im*b*(c + d*x)*atan(ℯ^(im*(e + f*x))))/f + (im*b*d*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (im*b*d*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2]
    @test_int [(a + b*sec(e + f*x))/(c + d*x)^1, x, 0, Unintegrable((a + b*sec(e + f*x))/(c + d*x), x)]
    @test_int [(a + b*sec(e + f*x))/(c + d*x)^2, x, 0, Unintegrable((a + b*sec(e + f*x))/(c + d*x)^2, x)]


    @test_int [(a + b*sec(e + f*x))^2*(c + d*x)^3, x, 17, -((im*b^2*(c + d*x)^3)/f) + (a^2*(c + d*x)^4)/(4*d) - (4*im*a*b*(c + d*x)^3*atan(ℯ^(im*(e + f*x))))/f + (3*b^2*d*(c + d*x)^2*log(1 + ℯ^(2*im*(e + f*x))))/f^2 + (6*im*a*b*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (6*im*a*b*d*(c + d*x)^2*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 - (3*im*b^2*d^2*(c + d*x)*PolyLog(2, -ℯ^(2*im*(e + f*x))))/f^3 - (12*a*b*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/f^3 + (12*a*b*d^2*(c + d*x)*PolyLog(3, im*ℯ^(im*(e + f*x))))/f^3 + (3*b^2*d^3*PolyLog(3, -ℯ^(2*im*(e + f*x))))/(2*f^4) - (12*im*a*b*d^3*PolyLog(4, (-im)*ℯ^(im*(e + f*x))))/f^4 + (12*im*a*b*d^3*PolyLog(4, im*ℯ^(im*(e + f*x))))/f^4 + (b^2*(c + d*x)^3*tan(e + f*x))/f]
    @test_int [(a + b*sec(e + f*x))^2*(c + d*x)^2, x, 14, -((im*b^2*(c + d*x)^2)/f) + (a^2*(c + d*x)^3)/(3*d) - (4*im*a*b*(c + d*x)^2*atan(ℯ^(im*(e + f*x))))/f + (2*b^2*d*(c + d*x)*log(1 + ℯ^(2*im*(e + f*x))))/f^2 + (4*im*a*b*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (4*im*a*b*d*(c + d*x)*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 - (im*b^2*d^2*PolyLog(2, -ℯ^(2*im*(e + f*x))))/f^3 - (4*a*b*d^2*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/f^3 + (4*a*b*d^2*PolyLog(3, im*ℯ^(im*(e + f*x))))/f^3 + (b^2*(c + d*x)^2*tan(e + f*x))/f]
    @test_int [(a + b*sec(e + f*x))^2*(c + d*x)^1, x, 9, (a^2*(c + d*x)^2)/(2*d) - (4*im*a*b*(c + d*x)*atan(ℯ^(im*(e + f*x))))/f + (b^2*d*log(cos(e + f*x)))/f^2 + (2*im*a*b*d*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/f^2 - (2*im*a*b*d*PolyLog(2, im*ℯ^(im*(e + f*x))))/f^2 + (b^2*(c + d*x)*tan(e + f*x))/f]
    @test_int [(a + b*sec(e + f*x))^2/(c + d*x)^1, x, 0, Unintegrable((a + b*sec(e + f*x))^2/(c + d*x), x)]
    @test_int [(a + b*sec(e + f*x))^2/(c + d*x)^2, x, 0, Unintegrable((a + b*sec(e + f*x))^2/(c + d*x)^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(c + d*x)^3/(a + b*sec(e + f*x)), x, 14, (c + d*x)^4/(4*a*d) + (im*b*(c + d*x)^3*log(1 + (a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2))))/(a*sqrt(-a^2 + b^2)*f) - (im*b*(c + d*x)^3*log(1 + (a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2))))/(a*sqrt(-a^2 + b^2)*f) + (3*b*d*(c + d*x)^2*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^2) - (3*b*d*(c + d*x)^2*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^2) + (6*im*b*d^2*(c + d*x)*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^3) - (6*im*b*d^2*(c + d*x)*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^3) - (6*b*d^3*PolyLog(4, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^4) + (6*b*d^3*PolyLog(4, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^4)]
    @test_int [(c + d*x)^2/(a + b*sec(e + f*x)), x, 12, (c + d*x)^3/(3*a*d) + (im*b*(c + d*x)^2*log(1 + (a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2))))/(a*sqrt(-a^2 + b^2)*f) - (im*b*(c + d*x)^2*log(1 + (a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2))))/(a*sqrt(-a^2 + b^2)*f) + (2*b*d*(c + d*x)*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^2) - (2*b*d*(c + d*x)*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^2) + (2*im*b*d^2*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^3) - (2*im*b*d^2*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^3)]
    @test_int [(c + d*x)^1/(a + b*sec(e + f*x)), x, 10, (c + d*x)^2/(2*a*d) + (im*b*(c + d*x)*log(1 + (a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2))))/(a*sqrt(-a^2 + b^2)*f) - (im*b*(c + d*x)*log(1 + (a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2))))/(a*sqrt(-a^2 + b^2)*f) + (b*d*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^2) - (b*d*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a*sqrt(-a^2 + b^2)*f^2)]
    @test_int [1/((c + d*x)^1*(a + b*sec(e + f*x))), x, 0, Unintegrable(1/((c + d*x)*(a + b*sec(e + f*x))), x)]
    @test_int [1/((c + d*x)^2*(a + b*sec(e + f*x))), x, 0, Unintegrable(1/((c + d*x)^2*(a + b*sec(e + f*x))), x)]


    @test_int [(c + d*x)^3/(a + b*sec(e + f*x))^2, x, 36, -((im*b^2*(c + d*x)^3)/(a^2*(a^2 - b^2)*f)) + (c + d*x)^4/(4*a^2*d) + (3*b^2*d*(c + d*x)^2*log(1 + (a*ℯ^(im*(e + f*x)))/(b - im*sqrt(a^2 - b^2))))/(a^2*(a^2 - b^2)*f^2) + (3*b^2*d*(c + d*x)^2*log(1 + (a*ℯ^(im*(e + f*x)))/(b + im*sqrt(a^2 - b^2))))/(a^2*(a^2 - b^2)*f^2) - (im*b^3*(c + d*x)^3*log(1 + (a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2))))/(a^2*(-a^2 + b^2)^(3/2)*f) + (2*im*b*(c + d*x)^3*log(1 + (a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2))))/(a^2*sqrt(-a^2 + b^2)*f) + (im*b^3*(c + d*x)^3*log(1 + (a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2))))/(a^2*(-a^2 + b^2)^(3/2)*f) - (2*im*b*(c + d*x)^3*log(1 + (a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2))))/(a^2*sqrt(-a^2 + b^2)*f) - (6*im*b^2*d^2*(c + d*x)*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - im*sqrt(a^2 - b^2)))))/(a^2*(a^2 - b^2)*f^3) - (6*im*b^2*d^2*(c + d*x)*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + im*sqrt(a^2 - b^2)))))/(a^2*(a^2 - b^2)*f^3) - (3*b^3*d*(c + d*x)^2*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^2) + (6*b*d*(c + d*x)^2*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^2) + (3*b^3*d*(c + d*x)^2*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^2) - (6*b*d*(c + d*x)^2*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^2) + (6*b^2*d^3*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b - im*sqrt(a^2 - b^2)))))/(a^2*(a^2 - b^2)*f^4) + (6*b^2*d^3*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b + im*sqrt(a^2 - b^2)))))/(a^2*(a^2 - b^2)*f^4) - (6*im*b^3*d^2*(c + d*x)*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^3) + (12*im*b*d^2*(c + d*x)*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^3) + (6*im*b^3*d^2*(c + d*x)*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^3) - (12*im*b*d^2*(c + d*x)*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^3) + (6*b^3*d^3*PolyLog(4, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^4) - (12*b*d^3*PolyLog(4, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^4) - (6*b^3*d^3*PolyLog(4, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^4) + (12*b*d^3*PolyLog(4, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^4) + (b^2*(c + d*x)^3*sin(e + f*x))/(a*(a^2 - b^2)*f*(b + a*cos(e + f*x)))]
    @test_int [(c + d*x)^2/(a + b*sec(e + f*x))^2, x, 30, -((im*b^2*(c + d*x)^2)/(a^2*(a^2 - b^2)*f)) + (c + d*x)^3/(3*a^2*d) + (2*b^2*d*(c + d*x)*log(1 + (a*ℯ^(im*(e + f*x)))/(b - im*sqrt(a^2 - b^2))))/(a^2*(a^2 - b^2)*f^2) + (2*b^2*d*(c + d*x)*log(1 + (a*ℯ^(im*(e + f*x)))/(b + im*sqrt(a^2 - b^2))))/(a^2*(a^2 - b^2)*f^2) - (im*b^3*(c + d*x)^2*log(1 + (a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2))))/(a^2*(-a^2 + b^2)^(3/2)*f) + (2*im*b*(c + d*x)^2*log(1 + (a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2))))/(a^2*sqrt(-a^2 + b^2)*f) + (im*b^3*(c + d*x)^2*log(1 + (a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2))))/(a^2*(-a^2 + b^2)^(3/2)*f) - (2*im*b*(c + d*x)^2*log(1 + (a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2))))/(a^2*sqrt(-a^2 + b^2)*f) - (2*im*b^2*d^2*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - im*sqrt(a^2 - b^2)))))/(a^2*(a^2 - b^2)*f^3) - (2*im*b^2*d^2*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + im*sqrt(a^2 - b^2)))))/(a^2*(a^2 - b^2)*f^3) - (2*b^3*d*(c + d*x)*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^2) + (4*b*d*(c + d*x)*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^2) + (2*b^3*d*(c + d*x)*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^2) - (4*b*d*(c + d*x)*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^2) - (2*im*b^3*d^2*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^3) + (4*im*b*d^2*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^3) + (2*im*b^3*d^2*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^3) - (4*im*b*d^2*PolyLog(3, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^3) + (b^2*(c + d*x)^2*sin(e + f*x))/(a*(a^2 - b^2)*f*(b + a*cos(e + f*x)))]
    @test_int [(c + d*x)^1/(a + b*sec(e + f*x))^2, x, 21, (c + d*x)^2/(2*a^2*d) - (im*b^3*(c + d*x)*log(1 + (a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2))))/(a^2*(-a^2 + b^2)^(3/2)*f) + (2*im*b*(c + d*x)*log(1 + (a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2))))/(a^2*sqrt(-a^2 + b^2)*f) + (im*b^3*(c + d*x)*log(1 + (a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2))))/(a^2*(-a^2 + b^2)^(3/2)*f) - (2*im*b*(c + d*x)*log(1 + (a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2))))/(a^2*sqrt(-a^2 + b^2)*f) + (b^2*d*log(b + a*cos(e + f*x)))/(a^2*(a^2 - b^2)*f^2) - (b^3*d*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^2) + (2*b*d*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b - sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^2) + (b^3*d*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*(-a^2 + b^2)^(3/2)*f^2) - (2*b*d*PolyLog(2, -((a*ℯ^(im*(e + f*x)))/(b + sqrt(-a^2 + b^2)))))/(a^2*sqrt(-a^2 + b^2)*f^2) + (b^2*(c + d*x)*sin(e + f*x))/(a*(a^2 - b^2)*f*(b + a*cos(e + f*x)))]
    @test_int [1/((c + d*x)^1*(a + b*sec(e + f*x))^2), x, 0, Unintegrable(1/((c + d*x)*(a + b*sec(e + f*x))^2), x)]
    @test_int [1/((c + d*x)^2*(a + b*sec(e + f*x))^2), x, 0, Unintegrable(1/((c + d*x)^2*(a + b*sec(e + f*x))^2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*sec(e+f*x))^n*with*m*symbolic=#


    @test_int [(c + d*x)^m*(a + b*sec(e + f*x))^n, x, 0, Unintegrable((c + d*x)^m*(a + b*sec(e + f*x))^n, x)]


    @test_int [(c + d*x)^m*(a + b*sec(e + f*x))^1, x, 0, Unintegrable((c + d*x)^m*(a + b*sec(e + f*x)), x)]
    @test_int [(c + d*x)^m/(a + b*sec(e + f*x))^1, x, 0, Unintegrable((c + d*x)^m/(a + b*sec(e + f*x)), x)]
    end
