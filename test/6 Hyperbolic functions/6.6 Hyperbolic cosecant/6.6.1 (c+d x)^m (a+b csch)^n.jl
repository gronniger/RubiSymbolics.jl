@testset "6.6.1 (c+d x)^m (a+b csch)^n" begin
    @variables a, b, c, d, e, f, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*csch(c+d*x))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*csch(a+b*x)^p=#


    @test_int [(c + d*x)^3*csch(a + b*x), x, 9, -((2*(c + d*x)^3*atanh(ℯ^(a + b*x)))/b) - (3*d*(c + d*x)^2*PolyLog(2, -ℯ^(a + b*x)))/b^2 + (3*d*(c + d*x)^2*PolyLog(2, ℯ^(a + b*x)))/b^2 + (6*d^2*(c + d*x)*PolyLog(3, -ℯ^(a + b*x)))/b^3 - (6*d^2*(c + d*x)*PolyLog(3, ℯ^(a + b*x)))/b^3 - (6*d^3*PolyLog(4, -ℯ^(a + b*x)))/b^4 + (6*d^3*PolyLog(4, ℯ^(a + b*x)))/b^4]
    @test_int [(c + d*x)^2*csch(a + b*x), x, 7, -((2*(c + d*x)^2*atanh(ℯ^(a + b*x)))/b) - (2*d*(c + d*x)*PolyLog(2, -ℯ^(a + b*x)))/b^2 + (2*d*(c + d*x)*PolyLog(2, ℯ^(a + b*x)))/b^2 + (2*d^2*PolyLog(3, -ℯ^(a + b*x)))/b^3 - (2*d^2*PolyLog(3, ℯ^(a + b*x)))/b^3]
    @test_int [(c + d*x)^1*csch(a + b*x), x, 5, -((2*(c + d*x)*atanh(ℯ^(a + b*x)))/b) - (d*PolyLog(2, -ℯ^(a + b*x)))/b^2 + (d*PolyLog(2, ℯ^(a + b*x)))/b^2]
    @test_int [1/x^1*csch(a + b*x), x, 0, Unintegrable(csch(a + b*x)/x, x)]


    @test_int [(c + d*x)^3*csch(a + b*x)^2, x, 6, -((c + d*x)^3/b) - ((c + d*x)^3*coth(a + b*x))/b + (3*d*(c + d*x)^2*log(1 - ℯ^(2*(a + b*x))))/b^2 + (3*d^2*(c + d*x)*PolyLog(2, ℯ^(2*(a + b*x))))/b^3 - (3*d^3*PolyLog(3, ℯ^(2*(a + b*x))))/(2*b^4)]
    @test_int [(c + d*x)^2*csch(a + b*x)^2, x, 5, -((c + d*x)^2/b) - ((c + d*x)^2*coth(a + b*x))/b + (2*d*(c + d*x)*log(1 - ℯ^(2*(a + b*x))))/b^2 + (d^2*PolyLog(2, ℯ^(2*(a + b*x))))/b^3]
    @test_int [(c + d*x)^1*csch(a + b*x)^2, x, 2, -(((c + d*x)*coth(a + b*x))/b) + (d*log(sinh(a + b*x)))/b^2]
    @test_int [1/x^1*csch(a + b*x)^2, x, 0, Unintegrable(csch(a + b*x)^2/x, x)]


    @test_int [(c + d*x)^3*csch(a + b*x)^3, x, 15, -((6*d^2*(c + d*x)*atanh(ℯ^(a + b*x)))/b^3) + ((c + d*x)^3*atanh(ℯ^(a + b*x)))/b - (3*d*(c + d*x)^2*csch(a + b*x))/(2*b^2) - ((c + d*x)^3*coth(a + b*x)*csch(a + b*x))/(2*b) - (3*d^3*PolyLog(2, -ℯ^(a + b*x)))/b^4 + (3*d*(c + d*x)^2*PolyLog(2, -ℯ^(a + b*x)))/(2*b^2) + (3*d^3*PolyLog(2, ℯ^(a + b*x)))/b^4 - (3*d*(c + d*x)^2*PolyLog(2, ℯ^(a + b*x)))/(2*b^2) - (3*d^2*(c + d*x)*PolyLog(3, -ℯ^(a + b*x)))/b^3 + (3*d^2*(c + d*x)*PolyLog(3, ℯ^(a + b*x)))/b^3 + (3*d^3*PolyLog(4, -ℯ^(a + b*x)))/b^4 - (3*d^3*PolyLog(4, ℯ^(a + b*x)))/b^4]
    @test_int [(c + d*x)^2*csch(a + b*x)^3, x, 9, ((c + d*x)^2*atanh(ℯ^(a + b*x)))/b - (d^2*atanh(cosh(a + b*x)))/b^3 - (d*(c + d*x)*csch(a + b*x))/b^2 - ((c + d*x)^2*coth(a + b*x)*csch(a + b*x))/(2*b) + (d*(c + d*x)*PolyLog(2, -ℯ^(a + b*x)))/b^2 - (d*(c + d*x)*PolyLog(2, ℯ^(a + b*x)))/b^2 - (d^2*PolyLog(3, -ℯ^(a + b*x)))/b^3 + (d^2*PolyLog(3, ℯ^(a + b*x)))/b^3]
    @test_int [(c + d*x)^1*csch(a + b*x)^3, x, 6, ((c + d*x)*atanh(ℯ^(a + b*x)))/b - (d*csch(a + b*x))/(2*b^2) - ((c + d*x)*coth(a + b*x)*csch(a + b*x))/(2*b) + (d*PolyLog(2, -ℯ^(a + b*x)))/(2*b^2) - (d*PolyLog(2, ℯ^(a + b*x)))/(2*b^2)]
    @test_int [1/x^1*csch(a + b*x)^3, x, 0, Unintegrable(csch(a + b*x)^3/x, x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*csch(a+b*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*csch(a+b*x)^(p/2)=#


    @test_int [x/csch(x)^(3/2) + x*sqrt(csch(x))/3, x, 4, -(4/(9*csch(x)^(3/2))) + (2*x*cosh(x))/(3*sqrt(csch(x)))]
    @test_int [x/csch(x)^(5/2) + 3*x/(5*sqrt(csch(x))), x, 4, -(4/(25*csch(x)^(5/2))) + (2*x*cosh(x))/(5*csch(x)^(3/2))]
    @test_int [x/csch(x)^(7/2) - (5/21)*x*sqrt(csch(x)), x, 5, -(4/(49*csch(x)^(7/2))) + (2*x*cosh(x))/(7*csch(x)^(5/2)) + 20/(63*csch(x)^(3/2)) - (10*x*cosh(x))/(21*sqrt(csch(x)))]
    @test_int [x^2/csch(x)^(3/2) + (1/3)*x^2*sqrt(csch(x)), x, 7, -((8*x)/(9*csch(x)^(3/2))) + (16*cosh(x))/(27*sqrt(csch(x))) + (2*x^2*cosh(x))/(3*sqrt(csch(x))) - (16/27)*im*sqrt(csch(x))*EllipticF(pi/4 - (im*x)/2, 2)*sqrt(im*sinh(x))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sinh(c+d*x)^n*(a+b*csch(c+d*x))^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sinh(c+d*x)^n*(a+b*csch(c+d*x))^p*with*a^2+b^2=0=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sinh(c+d*x)^n*(a+b*csch(c+d*x))^p=#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*cosh(c+d*x)^n*(a+b*csch(c+d*x))^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(e+f*x)^m*cosh(c+d*x)^n*(a+b*csch(c+d*x))^p*with*a^2+b^2=0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*cosh(c+d*x)^n*(a+b*csch(c+d*x))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*cosh(c+d*x)^n / (a+b*csch(c+d*x))^1=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [((e + f*x)^3*cosh(c + d*x))/(a + b*csch(c + d*x)), x, 17, (b*(e + f*x)^4)/(4*a^2*f) - (6*f^3*cosh(c + d*x))/(a*d^4) - (3*f*(e + f*x)^2*cosh(c + d*x))/(a*d^2) - (b*(e + f*x)^3*log(1 + (a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2))))/(a^2*d) - (b*(e + f*x)^3*log(1 + (a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2))))/(a^2*d) - (3*b*f*(e + f*x)^2*PolyLog(2, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^2*d^2) - (3*b*f*(e + f*x)^2*PolyLog(2, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^2*d^2) + (6*b*f^2*(e + f*x)*PolyLog(3, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^2*d^3) + (6*b*f^2*(e + f*x)*PolyLog(3, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^2*d^3) - (6*b*f^3*PolyLog(4, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^2*d^4) - (6*b*f^3*PolyLog(4, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^2*d^4) + (6*f^2*(e + f*x)*sinh(c + d*x))/(a*d^3) + ((e + f*x)^3*sinh(c + d*x))/(a*d)]
    @test_int [((e + f*x)^2*cosh(c + d*x))/(a + b*csch(c + d*x)), x, 14, (b*(e + f*x)^3)/(3*a^2*f) - (2*f*(e + f*x)*cosh(c + d*x))/(a*d^2) - (b*(e + f*x)^2*log(1 + (a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2))))/(a^2*d) - (b*(e + f*x)^2*log(1 + (a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2))))/(a^2*d) - (2*b*f*(e + f*x)*PolyLog(2, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^2*d^2) - (2*b*f*(e + f*x)*PolyLog(2, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^2*d^2) + (2*b*f^2*PolyLog(3, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^2*d^3) + (2*b*f^2*PolyLog(3, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^2*d^3) + (2*f^2*sinh(c + d*x))/(a*d^3) + ((e + f*x)^2*sinh(c + d*x))/(a*d)]
    @test_int [((e + f*x)*cosh(c + d*x))/(a + b*csch(c + d*x)), x, 11, (b*(e + f*x)^2)/(2*a^2*f) - (f*cosh(c + d*x))/(a*d^2) - (b*(e + f*x)*log(1 + (a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2))))/(a^2*d) - (b*(e + f*x)*log(1 + (a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2))))/(a^2*d) - (b*f*PolyLog(2, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^2*d^2) - (b*f*PolyLog(2, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^2*d^2) + ((e + f*x)*sinh(c + d*x))/(a*d)]
    @test_int [cosh(c + d*x)/(a + b*csch(c + d*x)), x, 5, -((b*log(b + a*sinh(c + d*x)))/(a^2*d)) + sinh(c + d*x)/(a*d)]
    @test_int [cosh(c + d*x)/((e + f*x)*(a + b*csch(c + d*x))), x, 1, Unintegrable((cosh(c + d*x)*sinh(c + d*x))/((e + f*x)*(b + a*sinh(c + d*x))), x)]


    @test_int [((e + f*x)^3*cosh(c + d*x)^2)/(a + b*csch(c + d*x)), x, 24, (3*e*f^2*x)/(4*a*d^2) + (3*f^3*x^2)/(8*a*d^2) + (e + f*x)^4/(8*a*f) + (b^2*(e + f*x)^4)/(4*a^3*f) - (6*b*f^2*(e + f*x)*cosh(c + d*x))/(a^2*d^3) - (b*(e + f*x)^3*cosh(c + d*x))/(a^2*d) - (3*f^3*cosh(c + d*x)^2)/(8*a*d^4) - (3*f*(e + f*x)^2*cosh(c + d*x)^2)/(4*a*d^2) - (b*sqrt(a^2 + b^2)*(e + f*x)^3*log(1 + (a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2))))/(a^3*d) + (b*sqrt(a^2 + b^2)*(e + f*x)^3*log(1 + (a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2))))/(a^3*d) - (3*b*sqrt(a^2 + b^2)*f*(e + f*x)^2*PolyLog(2, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^3*d^2) + (3*b*sqrt(a^2 + b^2)*f*(e + f*x)^2*PolyLog(2, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^3*d^2) + (6*b*sqrt(a^2 + b^2)*f^2*(e + f*x)*PolyLog(3, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^3*d^3) - (6*b*sqrt(a^2 + b^2)*f^2*(e + f*x)*PolyLog(3, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^3*d^3) - (6*b*sqrt(a^2 + b^2)*f^3*PolyLog(4, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^3*d^4) + (6*b*sqrt(a^2 + b^2)*f^3*PolyLog(4, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^3*d^4) + (6*b*f^3*sinh(c + d*x))/(a^2*d^4) + (3*b*f*(e + f*x)^2*sinh(c + d*x))/(a^2*d^2) + (3*f^2*(e + f*x)*cosh(c + d*x)*sinh(c + d*x))/(4*a*d^3) + ((e + f*x)^3*cosh(c + d*x)*sinh(c + d*x))/(2*a*d)]
    @test_int [((e + f*x)^2*cosh(c + d*x)^2)/(a + b*csch(c + d*x)), x, 21, (f^2*x)/(4*a*d^2) + (e + f*x)^3/(6*a*f) + (b^2*(e + f*x)^3)/(3*a^3*f) - (2*b*f^2*cosh(c + d*x))/(a^2*d^3) - (b*(e + f*x)^2*cosh(c + d*x))/(a^2*d) - (f*(e + f*x)*cosh(c + d*x)^2)/(2*a*d^2) - (b*sqrt(a^2 + b^2)*(e + f*x)^2*log(1 + (a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2))))/(a^3*d) + (b*sqrt(a^2 + b^2)*(e + f*x)^2*log(1 + (a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2))))/(a^3*d) - (2*b*sqrt(a^2 + b^2)*f*(e + f*x)*PolyLog(2, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^3*d^2) + (2*b*sqrt(a^2 + b^2)*f*(e + f*x)*PolyLog(2, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^3*d^2) + (2*b*sqrt(a^2 + b^2)*f^2*PolyLog(3, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^3*d^3) - (2*b*sqrt(a^2 + b^2)*f^2*PolyLog(3, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^3*d^3) + (2*b*f*(e + f*x)*sinh(c + d*x))/(a^2*d^2) + (f^2*cosh(c + d*x)*sinh(c + d*x))/(4*a*d^3) + ((e + f*x)^2*cosh(c + d*x)*sinh(c + d*x))/(2*a*d)]
    @test_int [((e + f*x)*cosh(c + d*x)^2)/(a + b*csch(c + d*x)), x, 16, (e*x)/(2*a) + (b^2*e*x)/a^3 + (f*x^2)/(4*a) + (b^2*f*x^2)/(2*a^3) - (b*(e + f*x)*cosh(c + d*x))/(a^2*d) - (f*cosh(c + d*x)^2)/(4*a*d^2) - (b*sqrt(a^2 + b^2)*(e + f*x)*log(1 + (a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2))))/(a^3*d) + (b*sqrt(a^2 + b^2)*(e + f*x)*log(1 + (a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2))))/(a^3*d) - (b*sqrt(a^2 + b^2)*f*PolyLog(2, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^3*d^2) + (b*sqrt(a^2 + b^2)*f*PolyLog(2, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^3*d^2) + (b*f*sinh(c + d*x))/(a^2*d^2) + ((e + f*x)*cosh(c + d*x)*sinh(c + d*x))/(2*a*d)]
    @test_int [cosh(c + d*x)^2/(a + b*csch(c + d*x)), x, 6, ((a^2 + 2*b^2)*x)/(2*a^3) + (2*b*sqrt(a^2 + b^2)*atanh((a - b*tanh((c + d*x)/2))/sqrt(a^2 + b^2)))/(a^3*d) - (cosh(c + d*x)*(2*b - a*sinh(c + d*x)))/(2*a^2*d)]


    @test_int [((e + f*x)^3*cosh(c + d*x)^3)/(a + b*csch(c + d*x)), x, 31, (-3*b*f^3*x)/(8*a^2*d^3) - (b*(e + f*x)^3)/(4*a^2*d) + (b*(a^2 + b^2)*(e + f*x)^4)/(4*a^4*f) - (40*f^3*cosh(c + d*x))/(9*a*d^4) - (6*b^2*f^3*cosh(c + d*x))/(a^3*d^4) - (2*f*(e + f*x)^2*cosh(c + d*x))/(a*d^2) - (3*b^2*f*(e + f*x)^2*cosh(c + d*x))/(a^3*d^2) - (2*f^3*cosh(c + d*x)^3)/(27*a*d^4) - (f*(e + f*x)^2*cosh(c + d*x)^3)/(3*a*d^2) - (b*(a^2 + b^2)*(e + f*x)^3*log(1 + (a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2))))/(a^4*d) - (b*(a^2 + b^2)*(e + f*x)^3*log(1 + (a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2))))/(a^4*d) - (3*b*(a^2 + b^2)*f*(e + f*x)^2*PolyLog(2, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^4*d^2) - (3*b*(a^2 + b^2)*f*(e + f*x)^2*PolyLog(2, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^4*d^2) + (6*b*(a^2 + b^2)*f^2*(e + f*x)*PolyLog(3, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^4*d^3) + (6*b*(a^2 + b^2)*f^2*(e + f*x)*PolyLog(3, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^4*d^3) - (6*b*(a^2 + b^2)*f^3*PolyLog(4, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^4*d^4) - (6*b*(a^2 + b^2)*f^3*PolyLog(4, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^4*d^4) + (40*f^2*(e + f*x)*sinh(c + d*x))/(9*a*d^3) + (6*b^2*f^2*(e + f*x)*sinh(c + d*x))/(a^3*d^3) + (2*(e + f*x)^3*sinh(c + d*x))/(3*a*d) + (b^2*(e + f*x)^3*sinh(c + d*x))/(a^3*d) + (3*b*f^3*cosh(c + d*x)*sinh(c + d*x))/(8*a^2*d^4) + (3*b*f*(e + f*x)^2*cosh(c + d*x)*sinh(c + d*x))/(4*a^2*d^2) + (2*f^2*(e + f*x)*cosh(c + d*x)^2*sinh(c + d*x))/(9*a*d^3) + ((e + f*x)^3*cosh(c + d*x)^2*sinh(c + d*x))/(3*a*d) - (3*b*f^2*(e + f*x)*sinh(c + d*x)^2)/(4*a^2*d^3) - (b*(e + f*x)^3*sinh(c + d*x)^2)/(2*a^2*d)]
    @test_int [((e + f*x)^2*cosh(c + d*x)^3)/(a + b*csch(c + d*x)), x, 24, -(b*e*f*x)/(2*a^2*d) - (b*f^2*x^2)/(4*a^2*d) + (b*(a^2 + b^2)*(e + f*x)^3)/(3*a^4*f) - (4*f*(e + f*x)*cosh(c + d*x))/(3*a*d^2) - (2*b^2*f*(e + f*x)*cosh(c + d*x))/(a^3*d^2) - (2*f*(e + f*x)*cosh(c + d*x)^3)/(9*a*d^2) - (b*(a^2 + b^2)*(e + f*x)^2*log(1 + (a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2))))/(a^4*d) - (b*(a^2 + b^2)*(e + f*x)^2*log(1 + (a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2))))/(a^4*d) - (2*b*(a^2 + b^2)*f*(e + f*x)*PolyLog(2, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^4*d^2) - (2*b*(a^2 + b^2)*f*(e + f*x)*PolyLog(2, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^4*d^2) + (2*b*(a^2 + b^2)*f^2*PolyLog(3, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^4*d^3) + (2*b*(a^2 + b^2)*f^2*PolyLog(3, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^4*d^3) + (14*f^2*sinh(c + d*x))/(9*a*d^3) + (2*b^2*f^2*sinh(c + d*x))/(a^3*d^3) + (2*(e + f*x)^2*sinh(c + d*x))/(3*a*d) + (b^2*(e + f*x)^2*sinh(c + d*x))/(a^3*d) + (b*f*(e + f*x)*cosh(c + d*x)*sinh(c + d*x))/(2*a^2*d^2) + ((e + f*x)^2*cosh(c + d*x)^2*sinh(c + d*x))/(3*a*d) - (b*f^2*sinh(c + d*x)^2)/(4*a^2*d^3) - (b*(e + f*x)^2*sinh(c + d*x)^2)/(2*a^2*d) + (2*f^2*sinh(c + d*x)^3)/(27*a*d^3)]
    @test_int [((e + f*x)*cosh(c + d*x)^3)/(a + b*csch(c + d*x)), x, 18, -(b*f*x)/(4*a^2*d) + (b*(a^2 + b^2)*(e + f*x)^2)/(2*a^4*f) - (2*f*cosh(c + d*x))/(3*a*d^2) - (b^2*f*cosh(c + d*x))/(a^3*d^2) - (f*cosh(c + d*x)^3)/(9*a*d^2) - (b*(a^2 + b^2)*(e + f*x)*log(1 + (a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2))))/(a^4*d) - (b*(a^2 + b^2)*(e + f*x)*log(1 + (a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2))))/(a^4*d) - (b*(a^2 + b^2)*f*PolyLog(2, -((a*ℯ^(c + d*x))/(b - sqrt(a^2 + b^2)))))/(a^4*d^2) - (b*(a^2 + b^2)*f*PolyLog(2, -((a*ℯ^(c + d*x))/(b + sqrt(a^2 + b^2)))))/(a^4*d^2) + (2*(e + f*x)*sinh(c + d*x))/(3*a*d) + (b^2*(e + f*x)*sinh(c + d*x))/(a^3*d) + (b*f*cosh(c + d*x)*sinh(c + d*x))/(4*a^2*d^2) + ((e + f*x)*cosh(c + d*x)^2*sinh(c + d*x))/(3*a*d) - (b*(e + f*x)*sinh(c + d*x)^2)/(2*a^2*d)]
    @test_int [cosh(c + d*x)^3/(a + b*csch(c + d*x)), x, 5, -((b*(a^2 + b^2)*log(b + a*sinh(c + d*x)))/(a^4*d)) + ((a^2 + b^2)*sinh(c + d*x))/(a^3*d) - (b*sinh(c + d*x)^2)/(2*a^2*d) + sinh(c + d*x)^3/(3*a*d)]


    #= ::Subsubsection:: =#
    #=n<0=#
    end
