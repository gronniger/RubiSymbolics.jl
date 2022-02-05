@testset "6.2.1 (c+d x)^m (a+b cosh)^n" begin
    @variables a, b, c, d, e, f, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cosh(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*cosh(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*cosh(e+f*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(c + d*x)^4*cosh(a + b*x), x, 5, (-24*d^3*(c + d*x)*cosh(a + b*x))/b^4 - (4*d*(c + d*x)^3*cosh(a + b*x))/b^2 + (24*d^4*sinh(a + b*x))/b^5 + (12*d^2*(c + d*x)^2*sinh(a + b*x))/b^3 + ((c + d*x)^4*sinh(a + b*x))/b]
    @test_int [(c + d*x)^3*cosh(a + b*x), x, 4, (-6*d^3*cosh(a + b*x))/b^4 - (3*d*(c + d*x)^2*cosh(a + b*x))/b^2 + (6*d^2*(c + d*x)*sinh(a + b*x))/b^3 + ((c + d*x)^3*sinh(a + b*x))/b]
    @test_int [(c + d*x)^2*cosh(a + b*x), x, 3, (-2*d*(c + d*x)*cosh(a + b*x))/b^2 + (2*d^2*sinh(a + b*x))/b^3 + ((c + d*x)^2*sinh(a + b*x))/b]
    @test_int [(c + d*x)*cosh(a + b*x), x, 2, -((d*cosh(a + b*x))/b^2) + ((c + d*x)*sinh(a + b*x))/b]
    @test_int [cosh(a + b*x)/(c + d*x), x, 3, (cosh(a - (b*c)/d)*CoshIntegral((b*c)/d + b*x))/d + (sinh(a - (b*c)/d)*SinhIntegral((b*c)/d + b*x))/d]
    @test_int [cosh(a + b*x)/(c + d*x)^2, x, 4, -(cosh(a + b*x)/(d*(c + d*x))) + (b*CoshIntegral((b*c)/d + b*x)*sinh(a - (b*c)/d))/d^2 + (b*cosh(a - (b*c)/d)*SinhIntegral((b*c)/d + b*x))/d^2]
    @test_int [cosh(a + b*x)/(c + d*x)^3, x, 5, -cosh(a + b*x)/(2*d*(c + d*x)^2) + (b^2*cosh(a - (b*c)/d)*CoshIntegral((b*c)/d + b*x))/(2*d^3) - (b*sinh(a + b*x))/(2*d^2*(c + d*x)) + (b^2*sinh(a - (b*c)/d)*SinhIntegral((b*c)/d + b*x))/(2*d^3)]


    @test_int [(c + d*x)^4*cosh(a + b*x)^2, x, 6, (3*d^4*x)/(4*b^4) + (d*(c + d*x)^3)/(2*b^2) + (c + d*x)^5/(10*d) - (3*d^3*(c + d*x)*cosh(a + b*x)^2)/(2*b^4) - (d*(c + d*x)^3*cosh(a + b*x)^2)/b^2 + (3*d^4*cosh(a + b*x)*sinh(a + b*x))/(4*b^5) + (3*d^2*(c + d*x)^2*cosh(a + b*x)*sinh(a + b*x))/(2*b^3) + ((c + d*x)^4*cosh(a + b*x)*sinh(a + b*x))/(2*b)]
    @test_int [(c + d*x)^3*cosh(a + b*x)^2, x, 4, (3*c*d^2*x)/(4*b^2) + (3*d^3*x^2)/(8*b^2) + (c + d*x)^4/(8*d) - (3*d^3*cosh(a + b*x)^2)/(8*b^4) - (3*d*(c + d*x)^2*cosh(a + b*x)^2)/(4*b^2) + (3*d^2*(c + d*x)*cosh(a + b*x)*sinh(a + b*x))/(4*b^3) + ((c + d*x)^3*cosh(a + b*x)*sinh(a + b*x))/(2*b)]
    @test_int [(c + d*x)^2*cosh(a + b*x)^2, x, 4, (d^2*x)/(4*b^2) + (c + d*x)^3/(6*d) - (d*(c + d*x)*cosh(a + b*x)^2)/(2*b^2) + (d^2*cosh(a + b*x)*sinh(a + b*x))/(4*b^3) + ((c + d*x)^2*cosh(a + b*x)*sinh(a + b*x))/(2*b)]
    @test_int [(c + d*x)*cosh(a + b*x)^2, x, 2, (c*x)/2 + (d*x^2)/4 - (d*cosh(a + b*x)^2)/(4*b^2) + ((c + d*x)*cosh(a + b*x)*sinh(a + b*x))/(2*b)]
    @test_int [cosh(a + b*x)^2/(c + d*x), x, 5, (cosh(2*a - (2*b*c)/d)*CoshIntegral((2*b*c)/d + 2*b*x))/(2*d) + log(c + d*x)/(2*d) + (sinh(2*a - (2*b*c)/d)*SinhIntegral((2*b*c)/d + 2*b*x))/(2*d)]
    @test_int [cosh(a + b*x)^2/(c + d*x)^2, x, 5, -(cosh(a + b*x)^2/(d*(c + d*x))) + (b*CoshIntegral((2*b*c)/d + 2*b*x)*sinh(2*a - (2*b*c)/d))/d^2 + (b*cosh(2*a - (2*b*c)/d)*SinhIntegral((2*b*c)/d + 2*b*x))/d^2]
    @test_int [cosh(a + b*x)^2/(c + d*x)^3, x, 7, -cosh(a + b*x)^2/(2*d*(c + d*x)^2) + (b^2*cosh(2*a - (2*b*c)/d)*CoshIntegral((2*b*c)/d + 2*b*x))/d^3 - (b*cosh(a + b*x)*sinh(a + b*x))/(d^2*(c + d*x)) + (b^2*sinh(2*a - (2*b*c)/d)*SinhIntegral((2*b*c)/d + 2*b*x))/d^3]
    @test_int [cosh(a + b*x)^2/(c + d*x)^4, x, 7, b^2/(3*d^3*(c + d*x)) - cosh(a + b*x)^2/(3*d*(c + d*x)^3) - (2*b^2*cosh(a + b*x)^2)/(3*d^3*(c + d*x)) + (2*b^3*CoshIntegral((2*b*c)/d + 2*b*x)*sinh(2*a - (2*b*c)/d))/(3*d^4) - (b*cosh(a + b*x)*sinh(a + b*x))/(3*d^2*(c + d*x)^2) + (2*b^3*cosh(2*a - (2*b*c)/d)*SinhIntegral((2*b*c)/d + 2*b*x))/(3*d^4)]


    @test_int [(c + d*x)^4*cosh(a + b*x)^3, x, 12, (-160*d^3*(c + d*x)*cosh(a + b*x))/(9*b^4) - (8*d*(c + d*x)^3*cosh(a + b*x))/(3*b^2) - (8*d^3*(c + d*x)*cosh(a + b*x)^3)/(27*b^4) - (4*d*(c + d*x)^3*cosh(a + b*x)^3)/(9*b^2) + (488*d^4*sinh(a + b*x))/(27*b^5) + (80*d^2*(c + d*x)^2*sinh(a + b*x))/(9*b^3) + (2*(c + d*x)^4*sinh(a + b*x))/(3*b) + (4*d^2*(c + d*x)^2*cosh(a + b*x)^2*sinh(a + b*x))/(9*b^3) + ((c + d*x)^4*cosh(a + b*x)^2*sinh(a + b*x))/(3*b) + (8*d^4*sinh(a + b*x)^3)/(81*b^5)]
    @test_int [(c + d*x)^3*cosh(a + b*x)^3, x, 8, (-40*d^3*cosh(a + b*x))/(9*b^4) - (2*d*(c + d*x)^2*cosh(a + b*x))/b^2 - (2*d^3*cosh(a + b*x)^3)/(27*b^4) - (d*(c + d*x)^2*cosh(a + b*x)^3)/(3*b^2) + (40*d^2*(c + d*x)*sinh(a + b*x))/(9*b^3) + (2*(c + d*x)^3*sinh(a + b*x))/(3*b) + (2*d^2*(c + d*x)*cosh(a + b*x)^2*sinh(a + b*x))/(9*b^3) + ((c + d*x)^3*cosh(a + b*x)^2*sinh(a + b*x))/(3*b)]
    @test_int [(c + d*x)^2*cosh(a + b*x)^3, x, 6, (-4*d*(c + d*x)*cosh(a + b*x))/(3*b^2) - (2*d*(c + d*x)*cosh(a + b*x)^3)/(9*b^2) + (14*d^2*sinh(a + b*x))/(9*b^3) + (2*(c + d*x)^2*sinh(a + b*x))/(3*b) + ((c + d*x)^2*cosh(a + b*x)^2*sinh(a + b*x))/(3*b) + (2*d^2*sinh(a + b*x)^3)/(27*b^3)]
    @test_int [(c + d*x)*cosh(a + b*x)^3, x, 3, (-2*d*cosh(a + b*x))/(3*b^2) - (d*cosh(a + b*x)^3)/(9*b^2) + (2*(c + d*x)*sinh(a + b*x))/(3*b) + ((c + d*x)*cosh(a + b*x)^2*sinh(a + b*x))/(3*b)]
    @test_int [cosh(a + b*x)^3/(c + d*x), x, 8, (3*cosh(a - (b*c)/d)*CoshIntegral((b*c)/d + b*x))/(4*d) + (cosh(3*a - (3*b*c)/d)*CoshIntegral((3*b*c)/d + 3*b*x))/(4*d) + (3*sinh(a - (b*c)/d)*SinhIntegral((b*c)/d + b*x))/(4*d) + (sinh(3*a - (3*b*c)/d)*SinhIntegral((3*b*c)/d + 3*b*x))/(4*d)]
    @test_int [cosh(a + b*x)^3/(c + d*x)^2, x, 8, -(cosh(a + b*x)^3/(d*(c + d*x))) + (3*b*CoshIntegral((3*b*c)/d + 3*b*x)*sinh(3*a - (3*b*c)/d))/(4*d^2) + (3*b*CoshIntegral((b*c)/d + b*x)*sinh(a - (b*c)/d))/(4*d^2) + (3*b*cosh(a - (b*c)/d)*SinhIntegral((b*c)/d + b*x))/(4*d^2) + (3*b*cosh(3*a - (3*b*c)/d)*SinhIntegral((3*b*c)/d + 3*b*x))/(4*d^2)]
    @test_int [cosh(a + b*x)^3/(c + d*x)^3, x, 12, -cosh(a + b*x)^3/(2*d*(c + d*x)^2) + (3*b^2*cosh(a - (b*c)/d)*CoshIntegral((b*c)/d + b*x))/(8*d^3) + (9*b^2*cosh(3*a - (3*b*c)/d)*CoshIntegral((3*b*c)/d + 3*b*x))/(8*d^3) - (3*b*cosh(a + b*x)^2*sinh(a + b*x))/(2*d^2*(c + d*x)) + (3*b^2*sinh(a - (b*c)/d)*SinhIntegral((b*c)/d + b*x))/(8*d^3) + (9*b^2*sinh(3*a - (3*b*c)/d)*SinhIntegral((3*b*c)/d + 3*b*x))/(8*d^3)]


    @test_int [x^3*cosh(a + b*x)^4, x, 8, (45*x^2)/(128*b^2) + (3*x^4)/32 - (45*cosh(a + b*x)^2)/(128*b^4) - (9*x^2*cosh(a + b*x)^2)/(16*b^2) - (3*cosh(a + b*x)^4)/(128*b^4) - (3*x^2*cosh(a + b*x)^4)/(16*b^2) + (45*x*cosh(a + b*x)*sinh(a + b*x))/(64*b^3) + (3*x^3*cosh(a + b*x)*sinh(a + b*x))/(8*b) + (3*x*cosh(a + b*x)^3*sinh(a + b*x))/(32*b^3) + (x^3*cosh(a + b*x)^3*sinh(a + b*x))/(4*b)]
    @test_int [x^2*cosh(a + b*x)^4, x, 8, (15*x)/(64*b^2) + x^3/8 - (3*x*cosh(a + b*x)^2)/(8*b^2) - (x*cosh(a + b*x)^4)/(8*b^2) + (15*cosh(a + b*x)*sinh(a + b*x))/(64*b^3) + (3*x^2*cosh(a + b*x)*sinh(a + b*x))/(8*b) + (cosh(a + b*x)^3*sinh(a + b*x))/(32*b^3) + (x^2*cosh(a + b*x)^3*sinh(a + b*x))/(4*b)]
    @test_int [x^1*cosh(a + b*x)^4, x, 3, (3*x^2)/16 - (3*cosh(a + b*x)^2)/(16*b^2) - cosh(a + b*x)^4/(16*b^2) + (3*x*cosh(a + b*x)*sinh(a + b*x))/(8*b) + (x*cosh(a + b*x)^3*sinh(a + b*x))/(4*b)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(c + d*x)^3*sech(a + b*x), x, 9, (2*(c + d*x)^3*atan(ℯ^(a + b*x)))/b - ((3*im)*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + ((3*im)*d*(c + d*x)^2*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + ((6*im)*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - ((6*im)*d^2*(c + d*x)*PolyLog(3, im*ℯ^(a + b*x)))/b^3 - ((6*im)*d^3*PolyLog(4, (-im)*ℯ^(a + b*x)))/b^4 + ((6*im)*d^3*PolyLog(4, im*ℯ^(a + b*x)))/b^4]
    @test_int [(c + d*x)^2*sech(a + b*x), x, 7, (2*(c + d*x)^2*atan(ℯ^(a + b*x)))/b - ((2*im)*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + ((2*im)*d*(c + d*x)*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + ((2*im)*d^2*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - ((2*im)*d^2*PolyLog(3, im*ℯ^(a + b*x)))/b^3]
    @test_int [(c + d*x)*sech(a + b*x), x, 5, (2*(c + d*x)*atan(ℯ^(a + b*x)))/b - (im*d*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + (im*d*PolyLog(2, im*ℯ^(a + b*x)))/b^2]
    @test_int [sech(a + b*x)/(c + d*x), x, 0, Unintegrable(sech(a + b*x)/(c + d*x), x)]
    @test_int [sech(a + b*x)/(c + d*x)^2, x, 0, Unintegrable(sech(a + b*x)/(c + d*x)^2, x)]


    @test_int [(c + d*x)^3*sech(a + b*x)^2, x, 6, (c + d*x)^3/b - (3*d*(c + d*x)^2*log(1 + ℯ^(2*(a + b*x))))/b^2 - (3*d^2*(c + d*x)*PolyLog(2, -ℯ^(2*(a + b*x))))/b^3 + (3*d^3*PolyLog(3, -ℯ^(2*(a + b*x))))/(2*b^4) + ((c + d*x)^3*tanh(a + b*x))/b]
    @test_int [(c + d*x)^2*sech(a + b*x)^2, x, 5, (c + d*x)^2/b - (2*d*(c + d*x)*log(1 + ℯ^(2*(a + b*x))))/b^2 - (d^2*PolyLog(2, -ℯ^(2*(a + b*x))))/b^3 + ((c + d*x)^2*tanh(a + b*x))/b]
    @test_int [(c + d*x)*sech(a + b*x)^2, x, 2, -((d*log(cosh(a + b*x)))/b^2) + ((c + d*x)*tanh(a + b*x))/b]
    @test_int [sech(a + b*x)^2/(c + d*x), x, 0, Unintegrable(sech(a + b*x)^2/(c + d*x), x)]
    @test_int [sech(a + b*x)^2/(c + d*x)^2, x, 0, Unintegrable(sech(a + b*x)^2/(c + d*x)^2, x)]


    @test_int [(c + d*x)^3*sech(a + b*x)^3, x, 15, (-6*d^2*(c + d*x)*atan(ℯ^(a + b*x)))/b^3 + ((c + d*x)^3*atan(ℯ^(a + b*x)))/b + ((3*im)*d^3*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^4 - (((3*im)/2)*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 - ((3*im)*d^3*PolyLog(2, im*ℯ^(a + b*x)))/b^4 + (((3*im)/2)*d*(c + d*x)^2*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + ((3*im)*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - ((3*im)*d^2*(c + d*x)*PolyLog(3, im*ℯ^(a + b*x)))/b^3 - ((3*im)*d^3*PolyLog(4, (-im)*ℯ^(a + b*x)))/b^4 + ((3*im)*d^3*PolyLog(4, im*ℯ^(a + b*x)))/b^4 + (3*d*(c + d*x)^2*sech(a + b*x))/(2*b^2) + ((c + d*x)^3*sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [(c + d*x)^2*sech(a + b*x)^3, x, 9, ((c + d*x)^2*atan(ℯ^(a + b*x)))/b - (d^2*atan(sinh(a + b*x)))/b^3 - (im*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + (im*d*(c + d*x)*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (im*d^2*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - (im*d^2*PolyLog(3, im*ℯ^(a + b*x)))/b^3 + (d*(c + d*x)*sech(a + b*x))/b^2 + ((c + d*x)^2*sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [(c + d*x)*sech(a + b*x)^3, x, 6, ((c + d*x)*atan(ℯ^(a + b*x)))/b - ((im/2)*d*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + ((im/2)*d*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (d*sech(a + b*x))/(2*b^2) + ((c + d*x)*sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [sech(a + b*x)^3/(c + d*x), x, 0, Unintegrable(sech(a + b*x)^3/(c + d*x), x)]
    @test_int [sech(a + b*x)^3/(c + d*x)^2, x, 0, Unintegrable(sech(a + b*x)^3/(c + d*x)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*cosh(e+f*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(c + d*x)^(5/2)*cosh(a + b*x), x, 8, (-5*d*(c + d*x)^(3/2)*cosh(a + b*x))/(2*b^2) + (15*d^(5/2)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(16*b^(7/2)) - (15*d^(5/2)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(16*b^(7/2)) + (15*d^2*sqrt(c + d*x)*sinh(a + b*x))/(4*b^3) + ((c + d*x)^(5/2)*sinh(a + b*x))/b]
    @test_int [(c + d*x)^(3/2)*cosh(a + b*x), x, 7, (-3*d*sqrt(c + d*x)*cosh(a + b*x))/(2*b^2) + (3*d^(3/2)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(8*b^(5/2)) + (3*d^(3/2)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(8*b^(5/2)) + ((c + d*x)^(3/2)*sinh(a + b*x))/b]
    @test_int [sqrt(c + d*x)*cosh(a + b*x), x, 6, (sqrt(d)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(4*b^(3/2)) - (sqrt(d)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(4*b^(3/2)) + (sqrt(c + d*x)*sinh(a + b*x))/b]
    @test_int [cosh(a + b*x)/sqrt(c + d*x), x, 5, (ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(2*sqrt(b)*sqrt(d)) + (ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(2*sqrt(b)*sqrt(d))]
    @test_int [cosh(a + b*x)/(c + d*x)^(3/2), x, 6, (-2*cosh(a + b*x))/(d*sqrt(c + d*x)) - (sqrt(b)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/d^(3/2) + (sqrt(b)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/d^(3/2)]
    @test_int [cosh(a + b*x)/(c + d*x)^(5/2), x, 7, (-2*cosh(a + b*x))/(3*d*(c + d*x)^(3/2)) + (2*b^(3/2)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(3*d^(5/2)) + (2*b^(3/2)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(3*d^(5/2)) - (4*b*sinh(a + b*x))/(3*d^2*sqrt(c + d*x))]
    @test_int [cosh(a + b*x)/(c + d*x)^(7/2), x, 8, (-2*cosh(a + b*x))/(5*d*(c + d*x)^(5/2)) - (8*b^2*cosh(a + b*x))/(15*d^3*sqrt(c + d*x)) - (4*b^(5/2)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(15*d^(7/2)) + (4*b^(5/2)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(15*d^(7/2)) - (4*b*sinh(a + b*x))/(15*d^2*(c + d*x)^(3/2))]


    @test_int [(c + d*x)^(5/2)*cosh(a + b*x)^2, x, 10, (5*d*(c + d*x)^(3/2))/(16*b^2) + (c + d*x)^(7/2)/(7*d) - (5*d*(c + d*x)^(3/2)*cosh(a + b*x)^2)/(8*b^2) + (15*d^(5/2)*ℯ^(-2*a + (2*b*c)/d)*sqrt(pi/2)*Erf((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(256*b^(7/2)) - (15*d^(5/2)*ℯ^(2*a - (2*b*c)/d)*sqrt(pi/2)*Erfi((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(256*b^(7/2)) + ((c + d*x)^(5/2)*cosh(a + b*x)*sinh(a + b*x))/(2*b) + (15*d^2*sqrt(c + d*x)*sinh(2*a + 2*b*x))/(64*b^3)]
    @test_int [(c + d*x)^(3/2)*cosh(a + b*x)^2, x, 9, (3*d*sqrt(c + d*x))/(16*b^2) + (c + d*x)^(5/2)/(5*d) - (3*d*sqrt(c + d*x)*cosh(a + b*x)^2)/(8*b^2) + (3*d^(3/2)*ℯ^(-2*a + (2*b*c)/d)*sqrt(pi/2)*Erf((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(64*b^(5/2)) + (3*d^(3/2)*ℯ^(2*a - (2*b*c)/d)*sqrt(pi/2)*Erfi((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(64*b^(5/2)) + ((c + d*x)^(3/2)*cosh(a + b*x)*sinh(a + b*x))/(2*b)]
    @test_int [sqrt(c + d*x)*cosh(a + b*x)^2, x, 8, (c + d*x)^(3/2)/(3*d) + (sqrt(d)*ℯ^(-2*a + (2*b*c)/d)*sqrt(pi/2)*Erf((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(16*b^(3/2)) - (sqrt(d)*ℯ^(2*a - (2*b*c)/d)*sqrt(pi/2)*Erfi((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(16*b^(3/2)) + (sqrt(c + d*x)*sinh(2*a + 2*b*x))/(4*b)]
    @test_int [cosh(a + b*x)^2/sqrt(c + d*x), x, 7, sqrt(c + d*x)/d + (ℯ^(-2*a + (2*b*c)/d)*sqrt(pi/2)*Erf((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(4*sqrt(b)*sqrt(d)) + (ℯ^(2*a - (2*b*c)/d)*sqrt(pi/2)*Erfi((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(4*sqrt(b)*sqrt(d))]
    @test_int [cosh(a + b*x)^2/(c + d*x)^(3/2), x, 7, (-2*cosh(a + b*x)^2)/(d*sqrt(c + d*x)) - (sqrt(b)*ℯ^(-2*a + (2*b*c)/d)*sqrt(pi/2)*Erf((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/d^(3/2) + (sqrt(b)*ℯ^(2*a - (2*b*c)/d)*sqrt(pi/2)*Erfi((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/d^(3/2)]
    @test_int [cosh(a + b*x)^2/(c + d*x)^(5/2), x, 9, (-2*cosh(a + b*x)^2)/(3*d*(c + d*x)^(3/2)) + (2*b^(3/2)*ℯ^(-2*a + (2*b*c)/d)*sqrt(2*pi)*Erf((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(3*d^(5/2)) + (2*b^(3/2)*ℯ^(2*a - (2*b*c)/d)*sqrt(2*pi)*Erfi((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(3*d^(5/2)) - (8*b*cosh(a + b*x)*sinh(a + b*x))/(3*d^2*sqrt(c + d*x))]
    @test_int [cosh(a + b*x)^2/(c + d*x)^(7/2), x, 9, (16*b^2)/(15*d^3*sqrt(c + d*x)) - (2*cosh(a + b*x)^2)/(5*d*(c + d*x)^(5/2)) - (32*b^2*cosh(a + b*x)^2)/(15*d^3*sqrt(c + d*x)) - (8*b^(5/2)*ℯ^(-2*a + (2*b*c)/d)*sqrt(2*pi)*Erf((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(15*d^(7/2)) + (8*b^(5/2)*ℯ^(2*a - (2*b*c)/d)*sqrt(2*pi)*Erfi((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(15*d^(7/2)) - (8*b*cosh(a + b*x)*sinh(a + b*x))/(15*d^2*(c + d*x)^(3/2))]
    @test_int [cosh(a + b*x)^2/(c + d*x)^(9/2), x, 11, (16*b^2)/(105*d^3*(c + d*x)^(3/2)) - (2*cosh(a + b*x)^2)/(7*d*(c + d*x)^(7/2)) - (32*b^2*cosh(a + b*x)^2)/(105*d^3*(c + d*x)^(3/2)) + (32*b^(7/2)*ℯ^(-2*a + (2*b*c)/d)*sqrt(2*pi)*Erf((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(105*d^(9/2)) + (32*b^(7/2)*ℯ^(2*a - (2*b*c)/d)*sqrt(2*pi)*Erfi((sqrt(2)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(105*d^(9/2)) - (8*b*cosh(a + b*x)*sinh(a + b*x))/(35*d^2*(c + d*x)^(5/2)) - (128*b^3*cosh(a + b*x)*sinh(a + b*x))/(105*d^4*sqrt(c + d*x))]


    @test_int [(c + d*x)^(5/2)*cosh(a + b*x)^3, x, 23, (-5*d*(c + d*x)^(3/2)*cosh(a + b*x))/(3*b^2) - (5*d*(c + d*x)^(3/2)*cosh(a + b*x)^3)/(18*b^2) + (45*d^(5/2)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(64*b^(7/2)) + (5*d^(5/2)*ℯ^(-3*a + (3*b*c)/d)*sqrt(pi/3)*Erf((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(576*b^(7/2)) - (45*d^(5/2)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(64*b^(7/2)) - (5*d^(5/2)*ℯ^(3*a - (3*b*c)/d)*sqrt(pi/3)*Erfi((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(576*b^(7/2)) + (45*d^2*sqrt(c + d*x)*sinh(a + b*x))/(16*b^3) + (2*(c + d*x)^(5/2)*sinh(a + b*x))/(3*b) + ((c + d*x)^(5/2)*cosh(a + b*x)^2*sinh(a + b*x))/(3*b) + (5*d^2*sqrt(c + d*x)*sinh(3*a + 3*b*x))/(144*b^3)]
    @test_int [(c + d*x)^(3/2)*cosh(a + b*x)^3, x, 20, -((d*sqrt(c + d*x)*cosh(a + b*x))/b^2) - (d*sqrt(c + d*x)*cosh(a + b*x)^3)/(6*b^2) + (9*d^(3/2)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(32*b^(5/2)) + (d^(3/2)*ℯ^(-3*a + (3*b*c)/d)*sqrt(pi/3)*Erf((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(96*b^(5/2)) + (9*d^(3/2)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(32*b^(5/2)) + (d^(3/2)*ℯ^(3*a - (3*b*c)/d)*sqrt(pi/3)*Erfi((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(96*b^(5/2)) + (2*(c + d*x)^(3/2)*sinh(a + b*x))/(3*b) + ((c + d*x)^(3/2)*cosh(a + b*x)^2*sinh(a + b*x))/(3*b)]
    @test_int [sqrt(c + d*x)*cosh(a + b*x)^3, x, 14, (3*sqrt(d)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(16*b^(3/2)) + (sqrt(d)*ℯ^(-3*a + (3*b*c)/d)*sqrt(pi/3)*Erf((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(48*b^(3/2)) - (3*sqrt(d)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(16*b^(3/2)) - (sqrt(d)*ℯ^(3*a - (3*b*c)/d)*sqrt(pi/3)*Erfi((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(48*b^(3/2)) + (3*sqrt(c + d*x)*sinh(a + b*x))/(4*b) + (sqrt(c + d*x)*sinh(3*a + 3*b*x))/(12*b)]
    @test_int [cosh(a + b*x)^3/sqrt(c + d*x), x, 12, (3*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(8*sqrt(b)*sqrt(d)) + (ℯ^(-3*a + (3*b*c)/d)*sqrt(pi/3)*Erf((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(8*sqrt(b)*sqrt(d)) + (3*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(8*sqrt(b)*sqrt(d)) + (ℯ^(3*a - (3*b*c)/d)*sqrt(pi/3)*Erfi((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(8*sqrt(b)*sqrt(d))]
    @test_int [cosh(a + b*x)^3/(c + d*x)^(3/2), x, 12, (-2*cosh(a + b*x)^3)/(d*sqrt(c + d*x)) - (3*sqrt(b)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(4*d^(3/2)) - (sqrt(b)*ℯ^(-3*a + (3*b*c)/d)*sqrt(3*pi)*Erf((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(4*d^(3/2)) + (3*sqrt(b)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(4*d^(3/2)) + (sqrt(b)*ℯ^(3*a - (3*b*c)/d)*sqrt(3*pi)*Erfi((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(4*d^(3/2))]
    @test_int [cosh(a + b*x)^3/(c + d*x)^(5/2), x, 18, (-2*cosh(a + b*x)^3)/(3*d*(c + d*x)^(3/2)) + (b^(3/2)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(2*d^(5/2)) + (b^(3/2)*ℯ^(-3*a + (3*b*c)/d)*sqrt(3*pi)*Erf((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(2*d^(5/2)) + (b^(3/2)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(2*d^(5/2)) + (b^(3/2)*ℯ^(3*a - (3*b*c)/d)*sqrt(3*pi)*Erfi((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(2*d^(5/2)) - (4*b*cosh(a + b*x)^2*sinh(a + b*x))/(d^2*sqrt(c + d*x))]
    @test_int [cosh(a + b*x)^3/(c + d*x)^(7/2), x, 19, (16*b^2*cosh(a + b*x))/(5*d^3*sqrt(c + d*x)) - (2*cosh(a + b*x)^3)/(5*d*(c + d*x)^(5/2)) - (24*b^2*cosh(a + b*x)^3)/(5*d^3*sqrt(c + d*x)) - (b^(5/2)*ℯ^(-a + (b*c)/d)*sqrt(pi)*Erf((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(5*d^(7/2)) - (3*b^(5/2)*ℯ^(-3*a + (3*b*c)/d)*sqrt(3*pi)*Erf((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(5*d^(7/2)) + (b^(5/2)*ℯ^(a - (b*c)/d)*sqrt(pi)*Erfi((sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(5*d^(7/2)) + (3*b^(5/2)*ℯ^(3*a - (3*b*c)/d)*sqrt(3*pi)*Erfi((sqrt(3)*sqrt(b)*sqrt(c + d*x))/sqrt(d)))/(5*d^(7/2)) - (4*b*cosh(a + b*x)^2*sinh(a + b*x))/(5*d^2*(c + d*x)^(3/2))]


    @test_int [(d*x)^(3/2)*cosh(f*x), x, 7, (-3*d*sqrt(d*x)*cosh(f*x))/(2*f^2) + (3*d^(3/2)*sqrt(pi)*Erf((sqrt(f)*sqrt(d*x))/sqrt(d)))/(8*f^(5/2)) + (3*d^(3/2)*sqrt(pi)*Erfi((sqrt(f)*sqrt(d*x))/sqrt(d)))/(8*f^(5/2)) + ((d*x)^(3/2)*sinh(f*x))/f]
    @test_int [sqrt(d*x)*cosh(f*x), x, 6, (sqrt(d)*sqrt(pi)*Erf((sqrt(f)*sqrt(d*x))/sqrt(d)))/(4*f^(3/2)) - (sqrt(d)*sqrt(pi)*Erfi((sqrt(f)*sqrt(d*x))/sqrt(d)))/(4*f^(3/2)) + (sqrt(d*x)*sinh(f*x))/f]
    @test_int [cosh(f*x)/sqrt(d*x), x, 5, (sqrt(pi)*Erf((sqrt(f)*sqrt(d*x))/sqrt(d)))/(2*sqrt(d)*sqrt(f)) + (sqrt(pi)*Erfi((sqrt(f)*sqrt(d*x))/sqrt(d)))/(2*sqrt(d)*sqrt(f))]
    @test_int [cosh(f*x)/(d*x)^(3/2), x, 6, (-2*cosh(f*x))/(d*sqrt(d*x)) - (sqrt(f)*sqrt(pi)*Erf((sqrt(f)*sqrt(d*x))/sqrt(d)))/d^(3/2) + (sqrt(f)*sqrt(pi)*Erfi((sqrt(f)*sqrt(d*x))/sqrt(d)))/d^(3/2)]
    @test_int [cosh(f*x)/(d*x)^(5/2), x, 7, (-2*cosh(f*x))/(3*d*(d*x)^(3/2)) + (2*f^(3/2)*sqrt(pi)*Erf((sqrt(f)*sqrt(d*x))/sqrt(d)))/(3*d^(5/2)) + (2*f^(3/2)*sqrt(pi)*Erfi((sqrt(f)*sqrt(d*x))/sqrt(d)))/(3*d^(5/2)) - (4*f*sinh(f*x))/(3*d^2*sqrt(d*x))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sqrt(c + d*x)*sech(a + b*x), x, 0, Unintegrable(sqrt(c + d*x)*sech(a + b*x), x)]
    @test_int [sech(a + b*x)/sqrt(c + d*x), x, 0, Unintegrable(sech(a + b*x)/sqrt(c + d*x), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*cosh(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cosh(x)^(3/2)/x^3, x, 1, -cosh(x)^(3/2)/(2*x^2) - (3*sqrt(cosh(x))*sinh(x))/(4*x) - (3*Unintegrable(1/(x*sqrt(cosh(x))), x))/8 + (9*Unintegrable(cosh(x)^(3/2)/x, x))/8]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x/cosh(x)^(3/2) + x*sqrt(cosh(x)), x, 2, -4*sqrt(cosh(x)) + (2*x*sinh(x))/sqrt(cosh(x))]
    @test_int [x/cosh(x)^(5/2) - x/(3*sqrt(cosh(x))), x, 2, 4/(3*sqrt(cosh(x))) + (2*x*sinh(x))/(3*cosh(x)^(3/2))]
    @test_int [x/cosh(x)^(7/2) + (3*x*sqrt(cosh(x)))/5, x, 3, 4/(15*cosh(x)^(3/2)) - (12*sqrt(cosh(x)))/5 + (2*x*sinh(x))/(5*cosh(x)^(5/2)) + (6*x*sinh(x))/(5*sqrt(cosh(x)))]
    @test_int [x^2/cosh(x)^(3/2) + x^2*sqrt(cosh(x)), x, 3, -8*x*sqrt(cosh(x)) - (16*im)*EllipticE((im/2)*x, 2) + (2*x^2*sinh(x))/sqrt(cosh(x))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*cosh(e+f*x))^n*with*m*symbolic=#


    @test_int [(c + d*x)^m*(b*cosh(e + f*x))^n, x, 0, Unintegrable((c + d*x)^m*(b*cosh(e + f*x))^n, x)]


    @test_int [(c + d*x)^m*cosh(a + b*x)^3, x, 8, (3^(-1 - m)*ℯ^(3*a - (3*b*c)/d)*(c + d*x)^m*Gamma(1 + m, (-3*b*(c + d*x))/d))/(8*b*(-((b*(c + d*x))/d))^m) + (3*ℯ^(a - (b*c)/d)*(c + d*x)^m*Gamma(1 + m, -((b*(c + d*x))/d)))/(8*b*(-((b*(c + d*x))/d))^m) - (3*ℯ^(-a + (b*c)/d)*(c + d*x)^m*Gamma(1 + m, (b*(c + d*x))/d))/(8*b*((b*(c + d*x))/d)^m) - (3^(-1 - m)*ℯ^(-3*a + (3*b*c)/d)*(c + d*x)^m*Gamma(1 + m, (3*b*(c + d*x))/d))/(8*b*((b*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m*cosh(a + b*x)^2, x, 5, (c + d*x)^(1 + m)/(2*d*(1 + m)) + (2^(-3 - m)*ℯ^(2*a - (2*b*c)/d)*(c + d*x)^m*Gamma(1 + m, (-2*b*(c + d*x))/d))/(b*(-((b*(c + d*x))/d))^m) - (2^(-3 - m)*ℯ^(-2*a + (2*b*c)/d)*(c + d*x)^m*Gamma(1 + m, (2*b*(c + d*x))/d))/(b*((b*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m*cosh(a + b*x), x, 3, (ℯ^(a - (b*c)/d)*(c + d*x)^m*Gamma(1 + m, -((b*(c + d*x))/d)))/(2*b*(-((b*(c + d*x))/d))^m) - (ℯ^(-a + (b*c)/d)*(c + d*x)^m*Gamma(1 + m, (b*(c + d*x))/d))/(2*b*((b*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m*sech(a + b*x), x, 0, Unintegrable((c + d*x)^m*sech(a + b*x), x)]
    @test_int [(c + d*x)^m*sech(a + b*x)^2, x, 0, Unintegrable((c + d*x)^m*sech(a + b*x)^2, x)]


    @test_int [x^(3 + m)*cosh(a + b*x), x, 3, -(ℯ^a*x^m*Gamma(4 + m, -(b*x)))/(2*b^4*(-(b*x))^m) - (x^m*Gamma(4 + m, b*x))/(2*b^4*ℯ^a*(b*x)^m)]
    @test_int [x^(2 + m)*cosh(a + b*x), x, 3, (ℯ^a*x^m*Gamma(3 + m, -(b*x)))/(2*b^3*(-(b*x))^m) - (x^m*Gamma(3 + m, b*x))/(2*b^3*ℯ^a*(b*x)^m)]
    @test_int [x^(1 + m)*cosh(a + b*x), x, 3, -(ℯ^a*x^m*Gamma(2 + m, -(b*x)))/(2*b^2*(-(b*x))^m) - (x^m*Gamma(2 + m, b*x))/(2*b^2*ℯ^a*(b*x)^m)]
    @test_int [x^m*cosh(a + b*x), x, 3, (ℯ^a*x^m*Gamma(1 + m, -(b*x)))/(2*b*(-(b*x))^m) - (x^m*Gamma(1 + m, b*x))/(2*b*ℯ^a*(b*x)^m)]
    @test_int [x^(-1 + m)*cosh(a + b*x), x, 3, -(ℯ^a*x^m*Gamma(m, -(b*x)))/(2*(-(b*x))^m) - (x^m*Gamma(m, b*x))/(2*ℯ^a*(b*x)^m)]
    @test_int [x^(-2 + m)*cosh(a + b*x), x, 3, (b*ℯ^a*x^m*Gamma(-1 + m, -(b*x)))/(2*(-(b*x))^m) - (b*x^m*Gamma(-1 + m, b*x))/(2*ℯ^a*(b*x)^m)]
    @test_int [x^(-3 + m)*cosh(a + b*x), x, 3, -(b^2*ℯ^a*x^m*Gamma(-2 + m, -(b*x)))/(2*(-(b*x))^m) - (b^2*x^m*Gamma(-2 + m, b*x))/(2*ℯ^a*(b*x)^m)]


    @test_int [x^(3 + m)*cosh(a + b*x)^2, x, 5, x^(4 + m)/(2*(4 + m)) - (2^(-6 - m)*ℯ^(2*a)*x^m*Gamma(4 + m, -2*b*x))/(b^4*(-(b*x))^m) - (2^(-6 - m)*x^m*Gamma(4 + m, 2*b*x))/(b^4*ℯ^(2*a)*(b*x)^m)]
    @test_int [x^(2 + m)*cosh(a + b*x)^2, x, 5, x^(3 + m)/(2*(3 + m)) + (2^(-5 - m)*ℯ^(2*a)*x^m*Gamma(3 + m, -2*b*x))/(b^3*(-(b*x))^m) - (2^(-5 - m)*x^m*Gamma(3 + m, 2*b*x))/(b^3*ℯ^(2*a)*(b*x)^m)]
    @test_int [x^(1 + m)*cosh(a + b*x)^2, x, 5, x^(2 + m)/(2*(2 + m)) - (2^(-4 - m)*ℯ^(2*a)*x^m*Gamma(2 + m, -2*b*x))/(b^2*(-(b*x))^m) - (2^(-4 - m)*x^m*Gamma(2 + m, 2*b*x))/(b^2*ℯ^(2*a)*(b*x)^m)]
    @test_int [x^m*cosh(a + b*x)^2, x, 5, x^(1 + m)/(2*(1 + m)) + (2^(-3 - m)*ℯ^(2*a)*x^m*Gamma(1 + m, -2*b*x))/(b*(-(b*x))^m) - (2^(-3 - m)*x^m*Gamma(1 + m, 2*b*x))/(b*ℯ^(2*a)*(b*x)^m)]
    @test_int [x^(-1 + m)*cosh(a + b*x)^2, x, 5, x^m/(2*m) - (2^(-2 - m)*ℯ^(2*a)*x^m*Gamma(m, -2*b*x))/(-(b*x))^m - (2^(-2 - m)*x^m*Gamma(m, 2*b*x))/(ℯ^(2*a)*(b*x)^m)]
    @test_int [x^(-2 + m)*cosh(a + b*x)^2, x, 5, -x^(-1 + m)/(2*(1 - m)) + (2^(-1 - m)*b*ℯ^(2*a)*x^m*Gamma(-1 + m, -2*b*x))/(-(b*x))^m - (2^(-1 - m)*b*x^m*Gamma(-1 + m, 2*b*x))/(ℯ^(2*a)*(b*x)^m)]
    @test_int [x^(-3 + m)*cosh(a + b*x)^2, x, 5, -x^(-2 + m)/(2*(2 - m)) - (b^2*ℯ^(2*a)*x^m*Gamma(-2 + m, -2*b*x))/(2^m*(-(b*x))^m) - (b^2*x^m*Gamma(-2 + m, 2*b*x))/(2^m*ℯ^(2*a)*(b*x)^m)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*sech(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(b*sech(e+f*x))^(n/2)=#


    @test_int [x/sech(x)^(3/2) - (x*sqrt(sech(x)))/3, x, 4, -4/(9*sech(x)^(3/2)) + (2*x*sinh(x))/(3*sqrt(sech(x)))]
    @test_int [x/sech(x)^(5/2) - (3*x)/(5*sqrt(sech(x))), x, 4, -4/(25*sech(x)^(5/2)) + (2*x*sinh(x))/(5*sech(x)^(3/2))]
    @test_int [x/sech(x)^(7/2) - (5*x*sqrt(sech(x)))/21, x, 5, -4/(49*sech(x)^(7/2)) - 20/(63*sech(x)^(3/2)) + (2*x*sinh(x))/(7*sech(x)^(5/2)) + (10*x*sinh(x))/(21*sqrt(sech(x)))]
    @test_int [x^2/sech(x)^(3/2) - (x^2*sqrt(sech(x)))/3, x, 7, (-8*x)/(9*sech(x)^(3/2)) - ((16*im)/27)*sqrt(cosh(x))*EllipticF((im/2)*x, 2)*sqrt(sech(x)) + (16*sinh(x))/(27*sqrt(sech(x))) + (2*x^2*sinh(x))/(3*sqrt(sech(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cosh(e+f*x))^n*with*a^2-b^2=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*cosh(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(c + d*x)^3*(a + a*cosh(e + f*x)), x, 6, (a*(c + d*x)^4)/(4*d) - (6*a*d^3*cosh(e + f*x))/f^4 - (3*a*d*(c + d*x)^2*cosh(e + f*x))/f^2 + (6*a*d^2*(c + d*x)*sinh(e + f*x))/f^3 + (a*(c + d*x)^3*sinh(e + f*x))/f]
    @test_int [(c + d*x)^2*(a + a*cosh(e + f*x)), x, 5, (a*(c + d*x)^3)/(3*d) - (2*a*d*(c + d*x)*cosh(e + f*x))/f^2 + (2*a*d^2*sinh(e + f*x))/f^3 + (a*(c + d*x)^2*sinh(e + f*x))/f]
    @test_int [(c + d*x)*(a + a*cosh(e + f*x)), x, 4, (a*(c + d*x)^2)/(2*d) - (a*d*cosh(e + f*x))/f^2 + (a*(c + d*x)*sinh(e + f*x))/f]
    @test_int [(a + a*cosh(e + f*x))/(c + d*x), x, 5, (a*cosh(e - (c*f)/d)*CoshIntegral((c*f)/d + f*x))/d + (a*log(c + d*x))/d + (a*sinh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d]
    @test_int [(a + a*cosh(e + f*x))/(c + d*x)^2, x, 6, -(a/(d*(c + d*x))) - (a*cosh(e + f*x))/(d*(c + d*x)) + (a*f*CoshIntegral((c*f)/d + f*x)*sinh(e - (c*f)/d))/d^2 + (a*f*cosh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d^2]
    @test_int [(a + a*cosh(e + f*x))/(c + d*x)^3, x, 7, -(a/(2*d*(c + d*x)^2)) - (a*cosh(e + f*x))/(2*d*(c + d*x)^2) + (a*f^2*cosh(e - (c*f)/d)*CoshIntegral((c*f)/d + f*x))/(2*d^3) - (a*f*sinh(e + f*x))/(2*d^2*(c + d*x)) + (a*f^2*sinh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/(2*d^3)]


    @test_int [(c + d*x)^3*(a + a*cosh(e + f*x))^2, x, 10, (3*a^2*c*d^2*x)/(4*f^2) + (3*a^2*d^3*x^2)/(8*f^2) + (3*a^2*(c + d*x)^4)/(8*d) - (12*a^2*d^3*cosh(e + f*x))/f^4 - (6*a^2*d*(c + d*x)^2*cosh(e + f*x))/f^2 - (3*a^2*d^3*cosh(e + f*x)^2)/(8*f^4) - (3*a^2*d*(c + d*x)^2*cosh(e + f*x)^2)/(4*f^2) + (12*a^2*d^2*(c + d*x)*sinh(e + f*x))/f^3 + (2*a^2*(c + d*x)^3*sinh(e + f*x))/f + (3*a^2*d^2*(c + d*x)*cosh(e + f*x)*sinh(e + f*x))/(4*f^3) + (a^2*(c + d*x)^3*cosh(e + f*x)*sinh(e + f*x))/(2*f)]
    @test_int [(c + d*x)^2*(a + a*cosh(e + f*x))^2, x, 9, (a^2*d^2*x)/(4*f^2) + (a^2*(c + d*x)^3)/(2*d) - (4*a^2*d*(c + d*x)*cosh(e + f*x))/f^2 - (a^2*d*(c + d*x)*cosh(e + f*x)^2)/(2*f^2) + (4*a^2*d^2*sinh(e + f*x))/f^3 + (2*a^2*(c + d*x)^2*sinh(e + f*x))/f + (a^2*d^2*cosh(e + f*x)*sinh(e + f*x))/(4*f^3) + (a^2*(c + d*x)^2*cosh(e + f*x)*sinh(e + f*x))/(2*f)]
    @test_int [(c + d*x)*(a + a*cosh(e + f*x))^2, x, 6, (1/2)*a^2*c*x + (1/4)*a^2*d*x^2 + (a^2*(c + d*x)^2)/(2*d) - (2*a^2*d*cosh(e + f*x))/f^2 - (a^2*d*cosh(e + f*x)^2)/(4*f^2) + (2*a^2*(c + d*x)*sinh(e + f*x))/f + (a^2*(c + d*x)*cosh(e + f*x)*sinh(e + f*x))/(2*f)]
    @test_int [(a + a*cosh(e + f*x))^2/(c + d*x), x, 9, (2*a^2*cosh(e - (c*f)/d)*CoshIntegral((c*f)/d + f*x))/d + (a^2*cosh(2*e - (2*c*f)/d)*CoshIntegral((2*c*f)/d + 2*f*x))/(2*d) + (3*a^2*log(c + d*x))/(2*d) + (2*a^2*sinh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d + (a^2*sinh(2*e - (2*c*f)/d)*SinhIntegral((2*c*f)/d + 2*f*x))/(2*d)]
    @test_int [(a + a*cosh(e + f*x))^2/(c + d*x)^2, x, 9, (-4*a^2*cosh(e/2 + (f*x)/2)^4)/(d*(c + d*x)) + (a^2*f*CoshIntegral((2*c*f)/d + 2*f*x)*sinh(2*e - (2*c*f)/d))/d^2 + (2*a^2*f*CoshIntegral((c*f)/d + f*x)*sinh(e - (c*f)/d))/d^2 + (2*a^2*f*cosh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d^2 + (a^2*f*cosh(2*e - (2*c*f)/d)*SinhIntegral((2*c*f)/d + 2*f*x))/d^2]
    @test_int [(a + a*cosh(e + f*x))^2/(c + d*x)^3, x, 15, (-2*a^2*cosh(e/2 + (f*x)/2)^4)/(d*(c + d*x)^2) + (a^2*f^2*cosh(e - (c*f)/d)*CoshIntegral((c*f)/d + f*x))/d^3 + (a^2*f^2*cosh(2*e - (2*c*f)/d)*CoshIntegral((2*c*f)/d + 2*f*x))/d^3 - (4*a^2*f*cosh(e/2 + (f*x)/2)^3*sinh(e/2 + (f*x)/2))/(d^2*(c + d*x)) + (a^2*f^2*sinh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d^3 + (a^2*f^2*sinh(2*e - (2*c*f)/d)*SinhIntegral((2*c*f)/d + 2*f*x))/d^3]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(c + d*x)^3/(a + a*cosh(e + f*x)), x, 7, (c + d*x)^3/(a*f) - (6*d*(c + d*x)^2*log(1 + ℯ^(e + f*x)))/(a*f^2) - (12*d^2*(c + d*x)*PolyLog(2, -ℯ^(e + f*x)))/(a*f^3) + (12*d^3*PolyLog(3, -ℯ^(e + f*x)))/(a*f^4) + ((c + d*x)^3*tanh(e/2 + (f*x)/2))/(a*f)]
    @test_int [(c + d*x)^2/(a + a*cosh(e + f*x)), x, 6, (c + d*x)^2/(a*f) - (4*d*(c + d*x)*log(1 + ℯ^(e + f*x)))/(a*f^2) - (4*d^2*PolyLog(2, -ℯ^(e + f*x)))/(a*f^3) + ((c + d*x)^2*tanh(e/2 + (f*x)/2))/(a*f)]
    @test_int [(c + d*x)/(a + a*cosh(e + f*x)), x, 3, (-2*d*log(cosh(e/2 + (f*x)/2)))/(a*f^2) + ((c + d*x)*tanh(e/2 + (f*x)/2))/(a*f)]
    @test_int [1/((c + d*x)*(a + a*cosh(e + f*x))), x, 0, Unintegrable(1/((c + d*x)*(a + a*cosh(e + f*x))), x)]
    @test_int [1/((c + d*x)^2*(a + a*cosh(e + f*x))), x, 0, Unintegrable(1/((c + d*x)^2*(a + a*cosh(e + f*x))), x)]


    @test_int [(c + d*x)^3/(a + a*cosh(e + f*x))^2, x, 10, (c + d*x)^3/(3*a^2*f) - (2*d*(c + d*x)^2*log(1 + ℯ^(e + f*x)))/(a^2*f^2) + (4*d^3*log(cosh(e/2 + (f*x)/2)))/(a^2*f^4) - (4*d^2*(c + d*x)*PolyLog(2, -ℯ^(e + f*x)))/(a^2*f^3) + (4*d^3*PolyLog(3, -ℯ^(e + f*x)))/(a^2*f^4) + (d*(c + d*x)^2*sech(e/2 + (f*x)/2)^2)/(2*a^2*f^2) - (2*d^2*(c + d*x)*tanh(e/2 + (f*x)/2))/(a^2*f^3) + ((c + d*x)^3*tanh(e/2 + (f*x)/2))/(3*a^2*f) + ((c + d*x)^3*sech(e/2 + (f*x)/2)^2*tanh(e/2 + (f*x)/2))/(6*a^2*f)]
    @test_int [(c + d*x)^2/(a + a*cosh(e + f*x))^2, x, 9, (c + d*x)^2/(3*a^2*f) - (4*d*(c + d*x)*log(1 + ℯ^(e + f*x)))/(3*a^2*f^2) - (4*d^2*PolyLog(2, -ℯ^(e + f*x)))/(3*a^2*f^3) + (d*(c + d*x)*sech(e/2 + (f*x)/2)^2)/(3*a^2*f^2) - (2*d^2*tanh(e/2 + (f*x)/2))/(3*a^2*f^3) + ((c + d*x)^2*tanh(e/2 + (f*x)/2))/(3*a^2*f) + ((c + d*x)^2*sech(e/2 + (f*x)/2)^2*tanh(e/2 + (f*x)/2))/(6*a^2*f)]
    @test_int [(c + d*x)/(a + a*cosh(e + f*x))^2, x, 4, (-2*d*log(cosh(e/2 + (f*x)/2)))/(3*a^2*f^2) + (d*sech(e/2 + (f*x)/2)^2)/(6*a^2*f^2) + ((c + d*x)*tanh(e/2 + (f*x)/2))/(3*a^2*f) + ((c + d*x)*sech(e/2 + (f*x)/2)^2*tanh(e/2 + (f*x)/2))/(6*a^2*f)]
    @test_int [1/((c + d*x)*(a + a*cosh(e + f*x))^2), x, 0, Unintegrable(1/((c + d*x)*(a + a*cosh(e + f*x))^2), x)]
    @test_int [1/((c + d*x)^2*(a + a*cosh(e + f*x))^2), x, 0, Unintegrable(1/((c + d*x)^2*(a + a*cosh(e + f*x))^2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*cosh(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^3*sqrt(a + a*cosh(c + d*x)), x, 5, (-96*sqrt(a + a*cosh(c + d*x)))/d^4 - (12*x^2*sqrt(a + a*cosh(c + d*x)))/d^2 + (48*x*sqrt(a + a*cosh(c + d*x))*tanh(c/2 + (d*x)/2))/d^3 + (2*x^3*sqrt(a + a*cosh(c + d*x))*tanh(c/2 + (d*x)/2))/d]
    @test_int [x^2*sqrt(a + a*cosh(c + d*x)), x, 4, (-8*x*sqrt(a + a*cosh(c + d*x)))/d^2 + (16*sqrt(a + a*cosh(c + d*x))*tanh(c/2 + (d*x)/2))/d^3 + (2*x^2*sqrt(a + a*cosh(c + d*x))*tanh(c/2 + (d*x)/2))/d]
    @test_int [x^1*sqrt(a + a*cosh(c + d*x)), x, 3, (-4*sqrt(a + a*cosh(c + d*x)))/d^2 + (2*x*sqrt(a + a*cosh(c + d*x))*tanh(c/2 + (d*x)/2))/d]
    @test_int [sqrt(a + a*cosh(c + d*x))/x^1, x, 4, cosh(c/2)*sqrt(a + a*cosh(c + d*x))*CoshIntegral((d*x)/2)*sech(c/2 + (d*x)/2) + sqrt(a + a*cosh(c + d*x))*sech(c/2 + (d*x)/2)*sinh(c/2)*SinhIntegral((d*x)/2)]
    @test_int [sqrt(a + a*cosh(c + d*x))/x^2, x, 5, -(sqrt(a + a*cosh(c + d*x))/x) + (d*sqrt(a + a*cosh(c + d*x))*CoshIntegral((d*x)/2)*sech(c/2 + (d*x)/2)*sinh(c/2))/2 + (d*cosh(c/2)*sqrt(a + a*cosh(c + d*x))*sech(c/2 + (d*x)/2)*SinhIntegral((d*x)/2))/2]
    @test_int [sqrt(a + a*cosh(c + d*x))/x^3, x, 6, -sqrt(a + a*cosh(c + d*x))/(2*x^2) + (d^2*cosh(c/2)*sqrt(a + a*cosh(c + d*x))*CoshIntegral((d*x)/2)*sech(c/2 + (d*x)/2))/8 + (d^2*sqrt(a + a*cosh(c + d*x))*sech(c/2 + (d*x)/2)*sinh(c/2)*SinhIntegral((d*x)/2))/8 - (d*sqrt(a + a*cosh(c + d*x))*tanh(c/2 + (d*x)/2))/(4*x)]


    @test_int [x^3*sqrt(a + a*cosh(x)), x, 5, -96*sqrt(a + a*cosh(x)) - 12*x^2*sqrt(a + a*cosh(x)) + 48*x*sqrt(a + a*cosh(x))*tanh(x/2) + 2*x^3*sqrt(a + a*cosh(x))*tanh(x/2)]
    @test_int [x^2*sqrt(a + a*cosh(x)), x, 4, -8*x*sqrt(a + a*cosh(x)) + 16*sqrt(a + a*cosh(x))*tanh(x/2) + 2*x^2*sqrt(a + a*cosh(x))*tanh(x/2)]
    @test_int [x^1*sqrt(a + a*cosh(x)), x, 3, -4*sqrt(a + a*cosh(x)) + 2*x*sqrt(a + a*cosh(x))*tanh(x/2)]
    @test_int [sqrt(a + a*cosh(x))/x^1, x, 2, sqrt(a + a*cosh(x))*CoshIntegral(x/2)*sech(x/2)]
    @test_int [sqrt(a + a*cosh(x))/x^2, x, 3, -(sqrt(a + a*cosh(x))/x) + (1/2)*sqrt(a + a*cosh(x))*sech(x/2)*SinhIntegral(x/2)]
    @test_int [sqrt(a + a*cosh(x))/x^3, x, 4, -(sqrt(a + a*cosh(x))/(2*x^2)) + (1/8)*sqrt(a + a*cosh(x))*CoshIntegral(x/2)*sech(x/2) - (sqrt(a + a*cosh(x))*tanh(x/2))/(4*x)]


    @test_int [x^3*(a + a*cosh(x))^(3/2), x, 9, (-1280*a*sqrt(a + a*cosh(x)))/9 - 16*a*x^2*sqrt(a + a*cosh(x)) - (64*a*cosh(x/2)^2*sqrt(a + a*cosh(x)))/27 - (8*a*x^2*cosh(x/2)^2*sqrt(a + a*cosh(x)))/3 + (32*a*x*cosh(x/2)*sqrt(a + a*cosh(x))*sinh(x/2))/9 + (4*a*x^3*cosh(x/2)*sqrt(a + a*cosh(x))*sinh(x/2))/3 + (640*a*x*sqrt(a + a*cosh(x))*tanh(x/2))/9 + (8*a*x^3*sqrt(a + a*cosh(x))*tanh(x/2))/3]
    @test_int [x^2*(a + a*cosh(x))^(3/2), x, 7, (-32*a*x*sqrt(a + a*cosh(x)))/3 - (16*a*x*cosh(x/2)^2*sqrt(a + a*cosh(x)))/9 + (4*a*x^2*cosh(x/2)*sqrt(a + a*cosh(x))*sinh(x/2))/3 + (224*a*sqrt(a + a*cosh(x))*tanh(x/2))/9 + (8*a*x^2*sqrt(a + a*cosh(x))*tanh(x/2))/3 + (32*a*sqrt(a + a*cosh(x))*sinh(x/2)^2*tanh(x/2))/27]
    @test_int [x^1*(a + a*cosh(x))^(3/2), x, 4, (-16*a*sqrt(a + a*cosh(x)))/3 - (8*a*cosh(x/2)^2*sqrt(a + a*cosh(x)))/9 + (4*a*x*cosh(x/2)*sqrt(a + a*cosh(x))*sinh(x/2))/3 + (8*a*x*sqrt(a + a*cosh(x))*tanh(x/2))/3]
    @test_int [(a + a*cosh(x))^(3/2)/x^1, x, 5, (3*a*sqrt(a + a*cosh(x))*CoshIntegral(x/2)*sech(x/2))/2 + (a*sqrt(a + a*cosh(x))*CoshIntegral((3*x)/2)*sech(x/2))/2]
    @test_int [(a + a*cosh(x))^(3/2)/x^2, x, 5, (-2*a*cosh(x/2)^2*sqrt(a + a*cosh(x)))/x + (3*a*sqrt(a + a*cosh(x))*sech(x/2)*SinhIntegral(x/2))/4 + (3*a*sqrt(a + a*cosh(x))*sech(x/2)*SinhIntegral((3*x)/2))/4]
    @test_int [(a + a*cosh(x))^(3/2)/x^3, x, 7, -((a*cosh(x/2)^2*sqrt(a + a*cosh(x)))/x^2) + (3*a*sqrt(a + a*cosh(x))*CoshIntegral(x/2)*sech(x/2))/16 + (9*a*sqrt(a + a*cosh(x))*CoshIntegral((3*x)/2)*sech(x/2))/16 - (3*a*cosh(x/2)*sqrt(a + a*cosh(x))*sinh(x/2))/(2*x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^3/sqrt(a + a*cosh(c + d*x)), x, 10, (4*x^3*atan(ℯ^(c/2 + (d*x)/2))*cosh(c/2 + (d*x)/2))/(d*sqrt(a + a*cosh(c + d*x))) - ((12*im)*x^2*cosh(c/2 + (d*x)/2)*PolyLog(2, (-im)*ℯ^(c/2 + (d*x)/2)))/(d^2*sqrt(a + a*cosh(c + d*x))) + ((12*im)*x^2*cosh(c/2 + (d*x)/2)*PolyLog(2, im*ℯ^(c/2 + (d*x)/2)))/(d^2*sqrt(a + a*cosh(c + d*x))) + ((48*im)*x*cosh(c/2 + (d*x)/2)*PolyLog(3, (-im)*ℯ^(c/2 + (d*x)/2)))/(d^3*sqrt(a + a*cosh(c + d*x))) - ((48*im)*x*cosh(c/2 + (d*x)/2)*PolyLog(3, im*ℯ^(c/2 + (d*x)/2)))/(d^3*sqrt(a + a*cosh(c + d*x))) - ((96*im)*cosh(c/2 + (d*x)/2)*PolyLog(4, (-im)*ℯ^(c/2 + (d*x)/2)))/(d^4*sqrt(a + a*cosh(c + d*x))) + ((96*im)*cosh(c/2 + (d*x)/2)*PolyLog(4, im*ℯ^(c/2 + (d*x)/2)))/(d^4*sqrt(a + a*cosh(c + d*x)))]
    @test_int [x^2/sqrt(a + a*cosh(c + d*x)), x, 8, (4*x^2*atan(ℯ^(c/2 + (d*x)/2))*cosh(c/2 + (d*x)/2))/(d*sqrt(a + a*cosh(c + d*x))) - ((8*im)*x*cosh(c/2 + (d*x)/2)*PolyLog(2, (-im)*ℯ^(c/2 + (d*x)/2)))/(d^2*sqrt(a + a*cosh(c + d*x))) + ((8*im)*x*cosh(c/2 + (d*x)/2)*PolyLog(2, im*ℯ^(c/2 + (d*x)/2)))/(d^2*sqrt(a + a*cosh(c + d*x))) + ((16*im)*cosh(c/2 + (d*x)/2)*PolyLog(3, (-im)*ℯ^(c/2 + (d*x)/2)))/(d^3*sqrt(a + a*cosh(c + d*x))) - ((16*im)*cosh(c/2 + (d*x)/2)*PolyLog(3, im*ℯ^(c/2 + (d*x)/2)))/(d^3*sqrt(a + a*cosh(c + d*x)))]
    @test_int [x/sqrt(a + a*cosh(c + d*x)), x, 6, (4*x*atan(ℯ^(c/2 + (d*x)/2))*cosh(c/2 + (d*x)/2))/(d*sqrt(a + a*cosh(c + d*x))) - ((4*im)*cosh(c/2 + (d*x)/2)*PolyLog(2, (-im)*ℯ^(c/2 + (d*x)/2)))/(d^2*sqrt(a + a*cosh(c + d*x))) + ((4*im)*cosh(c/2 + (d*x)/2)*PolyLog(2, im*ℯ^(c/2 + (d*x)/2)))/(d^2*sqrt(a + a*cosh(c + d*x)))]
    @test_int [1/(x*sqrt(a + a*cosh(c + d*x))), x, 0, Unintegrable(1/(x*sqrt(a + a*cosh(c + d*x))), x)]
    @test_int [1/(x^2*sqrt(a + a*cosh(c + d*x))), x, 0, Unintegrable(1/(x^2*sqrt(a + a*cosh(c + d*x))), x)]


    @test_int [x^3/(a + a*cosh(x))^(3/2), x, 16, (3*x^2)/(a*sqrt(a + a*cosh(x))) - (24*x*atan(ℯ^(x/2))*cosh(x/2))/(a*sqrt(a + a*cosh(x))) + (x^3*atan(ℯ^(x/2))*cosh(x/2))/(a*sqrt(a + a*cosh(x))) + ((24*im)*cosh(x/2)*PolyLog(2, (-im)*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) - ((3*im)*x^2*cosh(x/2)*PolyLog(2, (-im)*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) - ((24*im)*cosh(x/2)*PolyLog(2, im*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) + ((3*im)*x^2*cosh(x/2)*PolyLog(2, im*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) + ((12*im)*x*cosh(x/2)*PolyLog(3, (-im)*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) - ((12*im)*x*cosh(x/2)*PolyLog(3, im*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) - ((24*im)*cosh(x/2)*PolyLog(4, (-im)*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) + ((24*im)*cosh(x/2)*PolyLog(4, im*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) + (x^3*tanh(x/2))/(2*a*sqrt(a + a*cosh(x)))]
    @test_int [x^2/(a + a*cosh(x))^(3/2), x, 10, (2*x)/(a*sqrt(a + a*cosh(x))) + (x^2*atan(ℯ^(x/2))*cosh(x/2))/(a*sqrt(a + a*cosh(x))) - (4*atan(sinh(x/2))*cosh(x/2))/(a*sqrt(a + a*cosh(x))) - ((2*im)*x*cosh(x/2)*PolyLog(2, (-im)*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) + ((2*im)*x*cosh(x/2)*PolyLog(2, im*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) + ((4*im)*cosh(x/2)*PolyLog(3, (-im)*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) - ((4*im)*cosh(x/2)*PolyLog(3, im*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) + (x^2*tanh(x/2))/(2*a*sqrt(a + a*cosh(x)))]
    @test_int [x/(a + a*cosh(x))^(3/2), x, 7, 1/(a*sqrt(a + a*cosh(x))) + (x*atan(ℯ^(x/2))*cosh(x/2))/(a*sqrt(a + a*cosh(x))) - (im*cosh(x/2)*PolyLog(2, (-im)*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) + (im*cosh(x/2)*PolyLog(2, im*ℯ^(x/2)))/(a*sqrt(a + a*cosh(x))) + (x*tanh(x/2))/(2*a*sqrt(a + a*cosh(x)))]
    @test_int [1/(x*(a + a*cosh(x))^(3/2)), x, 0, Unintegrable(1/(x*(a + a*cosh(x))^(3/2)), x)]
    @test_int [1/(x^2*(a + a*cosh(x))^(3/2)), x, 0, Unintegrable(1/(x^2*(a + a*cosh(x))^(3/2)), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*cosh(e+f*x))^(n/3)=#


    #= Used*to*hang*Rubi =#
    @test_int [(a + a*cosh(c + d*x))^(1/3)/x, x, 0, Unintegrable((a + a*cosh(c + d*x))^(1/3)/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+a*cosh(e+f*x))^n*with*m*symbolic=#


    @test_int [(c + d*x)^m*(a + a*cosh(e + f*x))^n, x, 0, Unintegrable((c + d*x)^m*(a + a*cosh(e + f*x))^n, x)]


    @test_int [(c + d*x)^m*(a + a*cosh(e + f*x))^3, x, 12, (5*a^3*(c + d*x)^(1 + m))/(2*d*(1 + m)) + (3^(-1 - m)*a^3*ℯ^(3*e - (3*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (-3*f*(c + d*x))/d))/(8*f*(-((f*(c + d*x))/d))^m) + (3*2^(-3 - m)*a^3*ℯ^(2*e - (2*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (-2*f*(c + d*x))/d))/(f*(-((f*(c + d*x))/d))^m) + (15*a^3*ℯ^(e - (c*f)/d)*(c + d*x)^m*Gamma(1 + m, -((f*(c + d*x))/d)))/(8*f*(-((f*(c + d*x))/d))^m) - (15*a^3*ℯ^(-e + (c*f)/d)*(c + d*x)^m*Gamma(1 + m, (f*(c + d*x))/d))/(8*f*((f*(c + d*x))/d)^m) - (3*2^(-3 - m)*a^3*ℯ^(-2*e + (2*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (2*f*(c + d*x))/d))/(f*((f*(c + d*x))/d)^m) - (3^(-1 - m)*a^3*ℯ^(-3*e + (3*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (3*f*(c + d*x))/d))/(8*f*((f*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m*(a + a*cosh(e + f*x))^2, x, 9, (3*a^2*(c + d*x)^(1 + m))/(2*d*(1 + m)) + (2^(-3 - m)*a^2*ℯ^(2*e - (2*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (-2*f*(c + d*x))/d))/(f*(-((f*(c + d*x))/d))^m) + (a^2*ℯ^(e - (c*f)/d)*(c + d*x)^m*Gamma(1 + m, -((f*(c + d*x))/d)))/(f*(-((f*(c + d*x))/d))^m) - (a^2*ℯ^(-e + (c*f)/d)*(c + d*x)^m*Gamma(1 + m, (f*(c + d*x))/d))/(f*((f*(c + d*x))/d)^m) - (2^(-3 - m)*a^2*ℯ^(-2*e + (2*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (2*f*(c + d*x))/d))/(f*((f*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m*(a + a*cosh(e + f*x)), x, 5, (a*(c + d*x)^(1 + m))/(d*(1 + m)) + (a*ℯ^(e - (c*f)/d)*(c + d*x)^m*Gamma(1 + m, -((f*(c + d*x))/d)))/(2*f*(-((f*(c + d*x))/d))^m) - (a*ℯ^(-e + (c*f)/d)*(c + d*x)^m*Gamma(1 + m, (f*(c + d*x))/d))/(2*f*((f*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m/(a + a*cosh(e + f*x)), x, 0, Unintegrable((c + d*x)^m/(a + a*cosh(e + f*x)), x)]
    @test_int [(c + d*x)^m/(a + a*cosh(e + f*x))^2, x, 0, Unintegrable((c + d*x)^m/(a + a*cosh(e + f*x))^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cosh(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cosh(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(c + d*x)^3*(a + b*cosh(e + f*x)), x, 6, (a*(c + d*x)^4)/(4*d) - (6*b*d^3*cosh(e + f*x))/f^4 - (3*b*d*(c + d*x)^2*cosh(e + f*x))/f^2 + (6*b*d^2*(c + d*x)*sinh(e + f*x))/f^3 + (b*(c + d*x)^3*sinh(e + f*x))/f]
    @test_int [(c + d*x)^2*(a + b*cosh(e + f*x)), x, 5, (a*(c + d*x)^3)/(3*d) - (2*b*d*(c + d*x)*cosh(e + f*x))/f^2 + (2*b*d^2*sinh(e + f*x))/f^3 + (b*(c + d*x)^2*sinh(e + f*x))/f]
    @test_int [(c + d*x)*(a + b*cosh(e + f*x)), x, 4, (a*(c + d*x)^2)/(2*d) - (b*d*cosh(e + f*x))/f^2 + (b*(c + d*x)*sinh(e + f*x))/f]
    @test_int [(a + b*cosh(e + f*x))/(c + d*x), x, 5, (b*cosh(e - (c*f)/d)*CoshIntegral((c*f)/d + f*x))/d + (a*log(c + d*x))/d + (b*sinh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d]
    @test_int [(a + b*cosh(e + f*x))/(c + d*x)^2, x, 6, -(a/(d*(c + d*x))) - (b*cosh(e + f*x))/(d*(c + d*x)) + (b*f*CoshIntegral((c*f)/d + f*x)*sinh(e - (c*f)/d))/d^2 + (b*f*cosh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d^2]
    @test_int [(a + b*cosh(e + f*x))/(c + d*x)^3, x, 7, -a/(2*d*(c + d*x)^2) - (b*cosh(e + f*x))/(2*d*(c + d*x)^2) + (b*f^2*cosh(e - (c*f)/d)*CoshIntegral((c*f)/d + f*x))/(2*d^3) - (b*f*sinh(e + f*x))/(2*d^2*(c + d*x)) + (b*f^2*sinh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/(2*d^3)]


    @test_int [(c + d*x)^3*(a + b*cosh(e + f*x))^2, x, 10, (3*b^2*c*d^2*x)/(4*f^2) + (3*b^2*d^3*x^2)/(8*f^2) + (a^2*(c + d*x)^4)/(4*d) + (b^2*(c + d*x)^4)/(8*d) - (12*a*b*d^3*cosh(e + f*x))/f^4 - (6*a*b*d*(c + d*x)^2*cosh(e + f*x))/f^2 - (3*b^2*d^3*cosh(e + f*x)^2)/(8*f^4) - (3*b^2*d*(c + d*x)^2*cosh(e + f*x)^2)/(4*f^2) + (12*a*b*d^2*(c + d*x)*sinh(e + f*x))/f^3 + (2*a*b*(c + d*x)^3*sinh(e + f*x))/f + (3*b^2*d^2*(c + d*x)*cosh(e + f*x)*sinh(e + f*x))/(4*f^3) + (b^2*(c + d*x)^3*cosh(e + f*x)*sinh(e + f*x))/(2*f)]
    @test_int [(c + d*x)^2*(a + b*cosh(e + f*x))^2, x, 9, (b^2*d^2*x)/(4*f^2) + (a^2*(c + d*x)^3)/(3*d) + (b^2*(c + d*x)^3)/(6*d) - (4*a*b*d*(c + d*x)*cosh(e + f*x))/f^2 - (b^2*d*(c + d*x)*cosh(e + f*x)^2)/(2*f^2) + (4*a*b*d^2*sinh(e + f*x))/f^3 + (2*a*b*(c + d*x)^2*sinh(e + f*x))/f + (b^2*d^2*cosh(e + f*x)*sinh(e + f*x))/(4*f^3) + (b^2*(c + d*x)^2*cosh(e + f*x)*sinh(e + f*x))/(2*f)]
    @test_int [(c + d*x)*(a + b*cosh(e + f*x))^2, x, 6, (b^2*c*x)/2 + (b^2*d*x^2)/4 + (a^2*(c + d*x)^2)/(2*d) - (2*a*b*d*cosh(e + f*x))/f^2 - (b^2*d*cosh(e + f*x)^2)/(4*f^2) + (2*a*b*(c + d*x)*sinh(e + f*x))/f + (b^2*(c + d*x)*cosh(e + f*x)*sinh(e + f*x))/(2*f)]
    @test_int [(a + b*cosh(e + f*x))^2/(c + d*x), x, 10, (2*a*b*cosh(e - (c*f)/d)*CoshIntegral((c*f)/d + f*x))/d + (b^2*cosh(2*e - (2*c*f)/d)*CoshIntegral((2*c*f)/d + 2*f*x))/(2*d) + (a^2*log(c + d*x))/d + (b^2*log(c + d*x))/(2*d) + (2*a*b*sinh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d + (b^2*sinh(2*e - (2*c*f)/d)*SinhIntegral((2*c*f)/d + 2*f*x))/(2*d)]
    @test_int [(a + b*cosh(e + f*x))^2/(c + d*x)^2, x, 11, -(a^2/(d*(c + d*x))) - (2*a*b*cosh(e + f*x))/(d*(c + d*x)) - (b^2*cosh(e + f*x)^2)/(d*(c + d*x)) + (b^2*f*CoshIntegral((2*c*f)/d + 2*f*x)*sinh(2*e - (2*c*f)/d))/d^2 + (2*a*b*f*CoshIntegral((c*f)/d + f*x)*sinh(e - (c*f)/d))/d^2 + (2*a*b*f*cosh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d^2 + (b^2*f*cosh(2*e - (2*c*f)/d)*SinhIntegral((2*c*f)/d + 2*f*x))/d^2]
    @test_int [(a + b*cosh(e + f*x))^2/(c + d*x)^3, x, 14, -a^2/(2*d*(c + d*x)^2) - (a*b*cosh(e + f*x))/(d*(c + d*x)^2) - (b^2*cosh(e + f*x)^2)/(2*d*(c + d*x)^2) + (a*b*f^2*cosh(e - (c*f)/d)*CoshIntegral((c*f)/d + f*x))/d^3 + (b^2*f^2*cosh(2*e - (2*c*f)/d)*CoshIntegral((2*c*f)/d + 2*f*x))/d^3 - (a*b*f*sinh(e + f*x))/(d^2*(c + d*x)) - (b^2*f*cosh(e + f*x)*sinh(e + f*x))/(d^2*(c + d*x)) + (a*b*f^2*sinh(e - (c*f)/d)*SinhIntegral((c*f)/d + f*x))/d^3 + (b^2*f^2*sinh(2*e - (2*c*f)/d)*SinhIntegral((2*c*f)/d + 2*f*x))/d^3]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(c + d*x)^3/(a + b*cosh(e + f*x)), x, 12, ((c + d*x)^3*log(1 + (b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*f) - ((c + d*x)^3*log(1 + (b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*f) + (3*d*(c + d*x)^2*PolyLog(2, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^2) - (3*d*(c + d*x)^2*PolyLog(2, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^2) - (6*d^2*(c + d*x)*PolyLog(3, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^3) + (6*d^2*(c + d*x)*PolyLog(3, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^3) + (6*d^3*PolyLog(4, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^4) - (6*d^3*PolyLog(4, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^4)]
    @test_int [(c + d*x)^2/(a + b*cosh(e + f*x)), x, 10, ((c + d*x)^2*log(1 + (b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*f) - ((c + d*x)^2*log(1 + (b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*f) + (2*d*(c + d*x)*PolyLog(2, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^2) - (2*d*(c + d*x)*PolyLog(2, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^2) - (2*d^2*PolyLog(3, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^3) + (2*d^2*PolyLog(3, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^3)]
    @test_int [(c + d*x)/(a + b*cosh(e + f*x)), x, 8, ((c + d*x)*log(1 + (b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*f) - ((c + d*x)*log(1 + (b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*f) + (d*PolyLog(2, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^2) - (d*PolyLog(2, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/(sqrt(a^2 - b^2)*f^2)]
    @test_int [1/((c + d*x)*(a + b*cosh(e + f*x))), x, 0, Unintegrable(1/((c + d*x)*(a + b*cosh(e + f*x))), x)]
    @test_int [1/((c + d*x)^2*(a + b*cosh(e + f*x))), x, 0, Unintegrable(1/((c + d*x)^2*(a + b*cosh(e + f*x))), x)]


    @test_int [(c + d*x)^3/(a + b*cosh(e + f*x))^2, x, 22, -((c + d*x)^3/((a^2 - b^2)*f)) + (3*d*(c + d*x)^2*log(1 + (b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)*f^2) + (a*(c + d*x)^3*log(1 + (b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*f) + (3*d*(c + d*x)^2*log(1 + (b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)*f^2) - (a*(c + d*x)^3*log(1 + (b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*f) + (6*d^2*(c + d*x)*PolyLog(2, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)*f^3) + (3*a*d*(c + d*x)^2*PolyLog(2, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^2) + (6*d^2*(c + d*x)*PolyLog(2, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)*f^3) - (3*a*d*(c + d*x)^2*PolyLog(2, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^2) - (6*d^3*PolyLog(3, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)*f^4) - (6*a*d^2*(c + d*x)*PolyLog(3, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^3) - (6*d^3*PolyLog(3, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)*f^4) + (6*a*d^2*(c + d*x)*PolyLog(3, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^3) + (6*a*d^3*PolyLog(4, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^4) - (6*a*d^3*PolyLog(4, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^4) - (b*(c + d*x)^3*sinh(e + f*x))/((a^2 - b^2)*f*(a + b*cosh(e + f*x)))]
    @test_int [(c + d*x)^2/(a + b*cosh(e + f*x))^2, x, 18, -((c + d*x)^2/((a^2 - b^2)*f)) + (2*d*(c + d*x)*log(1 + (b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)*f^2) + (a*(c + d*x)^2*log(1 + (b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*f) + (2*d*(c + d*x)*log(1 + (b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)*f^2) - (a*(c + d*x)^2*log(1 + (b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*f) + (2*d^2*PolyLog(2, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)*f^3) + (2*a*d*(c + d*x)*PolyLog(2, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^2) + (2*d^2*PolyLog(2, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)*f^3) - (2*a*d*(c + d*x)*PolyLog(2, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^2) - (2*a*d^2*PolyLog(3, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^3) + (2*a*d^2*PolyLog(3, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^3) - (b*(c + d*x)^2*sinh(e + f*x))/((a^2 - b^2)*f*(a + b*cosh(e + f*x)))]
    @test_int [(c + d*x)/(a + b*cosh(e + f*x))^2, x, 11, (a*(c + d*x)*log(1 + (b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*f) - (a*(c + d*x)*log(1 + (b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*f) + (d*log(a + b*cosh(e + f*x)))/((a^2 - b^2)*f^2) + (a*d*PolyLog(2, -((b*ℯ^(e + f*x))/(a - sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^2) - (a*d*PolyLog(2, -((b*ℯ^(e + f*x))/(a + sqrt(a^2 - b^2)))))/((a^2 - b^2)^(3/2)*f^2) - (b*(c + d*x)*sinh(e + f*x))/((a^2 - b^2)*f*(a + b*cosh(e + f*x)))]
    @test_int [1/((c + d*x)*(a + b*cosh(e + f*x))^2), x, 0, Unintegrable(1/((c + d*x)*(a + b*cosh(e + f*x))^2), x)]
    @test_int [1/((c + d*x)^2*(a + b*cosh(e + f*x))^2), x, 0, Unintegrable(1/((c + d*x)^2*(a + b*cosh(e + f*x))^2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*cosh(e+f*x))^n*with*m*symbolic=#


    @test_int [(c + d*x)^m*(a + b*cosh(e + f*x))^n, x, 0, Unintegrable((c + d*x)^m*(a + b*cosh(e + f*x))^n, x)]


    @test_int [(c + d*x)^m*(a + b*cosh(e + f*x))^3, x, 18, (a^3*(c + d*x)^(1 + m))/(d*(1 + m)) + (3*a*b^2*(c + d*x)^(1 + m))/(2*d*(1 + m)) + (3^(-1 - m)*b^3*ℯ^(3*e - (3*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (-3*f*(c + d*x))/d))/(8*f*(-((f*(c + d*x))/d))^m) + (3*2^(-3 - m)*a*b^2*ℯ^(2*e - (2*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (-2*f*(c + d*x))/d))/(f*(-((f*(c + d*x))/d))^m) + (3*a^2*b*ℯ^(e - (c*f)/d)*(c + d*x)^m*Gamma(1 + m, -((f*(c + d*x))/d)))/(2*f*(-((f*(c + d*x))/d))^m) + (3*b^3*ℯ^(e - (c*f)/d)*(c + d*x)^m*Gamma(1 + m, -((f*(c + d*x))/d)))/(8*f*(-((f*(c + d*x))/d))^m) - (3*a^2*b*ℯ^(-e + (c*f)/d)*(c + d*x)^m*Gamma(1 + m, (f*(c + d*x))/d))/(2*f*((f*(c + d*x))/d)^m) - (3*b^3*ℯ^(-e + (c*f)/d)*(c + d*x)^m*Gamma(1 + m, (f*(c + d*x))/d))/(8*f*((f*(c + d*x))/d)^m) - (3*2^(-3 - m)*a*b^2*ℯ^(-2*e + (2*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (2*f*(c + d*x))/d))/(f*((f*(c + d*x))/d)^m) - (3^(-1 - m)*b^3*ℯ^(-3*e + (3*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (3*f*(c + d*x))/d))/(8*f*((f*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m*(a + b*cosh(e + f*x))^2, x, 10, (a^2*(c + d*x)^(1 + m))/(d*(1 + m)) + (b^2*(c + d*x)^(1 + m))/(2*d*(1 + m)) + (2^(-3 - m)*b^2*ℯ^(2*e - (2*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (-2*f*(c + d*x))/d))/(f*(-((f*(c + d*x))/d))^m) + (a*b*ℯ^(e - (c*f)/d)*(c + d*x)^m*Gamma(1 + m, -((f*(c + d*x))/d)))/(f*(-((f*(c + d*x))/d))^m) - (a*b*ℯ^(-e + (c*f)/d)*(c + d*x)^m*Gamma(1 + m, (f*(c + d*x))/d))/(f*((f*(c + d*x))/d)^m) - (2^(-3 - m)*b^2*ℯ^(-2*e + (2*c*f)/d)*(c + d*x)^m*Gamma(1 + m, (2*f*(c + d*x))/d))/(f*((f*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m*(a + b*cosh(e + f*x)), x, 5, (a*(c + d*x)^(1 + m))/(d*(1 + m)) + (b*ℯ^(e - (c*f)/d)*(c + d*x)^m*Gamma(1 + m, -((f*(c + d*x))/d)))/(2*f*(-((f*(c + d*x))/d))^m) - (b*ℯ^(-e + (c*f)/d)*(c + d*x)^m*Gamma(1 + m, (f*(c + d*x))/d))/(2*f*((f*(c + d*x))/d)^m)]
    @test_int [(c + d*x)^m/(a + b*cosh(e + f*x)), x, 0, Unintegrable((c + d*x)^m/(a + b*cosh(e + f*x)), x)]
    @test_int [(c + d*x)^m/(a + b*cosh(e + f*x))^2, x, 0, Unintegrable((c + d*x)^m/(a + b*cosh(e + f*x))^2, x)]
    end
