@testset "6.5.1 (c+d x)^m (a+b sech)^n" begin
    (a, b, c, d, x, ) = @variables a b c d x

    #= ::Package:: =#

    #= ::Section:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sech(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sech(a+b*x)^n=#


    @test_int [(c + d*x)^3*sech(a + b*x), x, 9, (2*(c + d*x)^3*atan(ℯ^(a + b*x)))/b - (3*im*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + (3*im*d*(c + d*x)^2*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (6*im*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - (6*im*d^2*(c + d*x)*PolyLog(3, im*ℯ^(a + b*x)))/b^3 - (6*im*d^3*PolyLog(4, (-im)*ℯ^(a + b*x)))/b^4 + (6*im*d^3*PolyLog(4, im*ℯ^(a + b*x)))/b^4]
    @test_int [(c + d*x)^2*sech(a + b*x), x, 7, (2*(c + d*x)^2*atan(ℯ^(a + b*x)))/b - (2*im*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + (2*im*d*(c + d*x)*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (2*im*d^2*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - (2*im*d^2*PolyLog(3, im*ℯ^(a + b*x)))/b^3]
    @test_int [(c + d*x)^1*sech(a + b*x), x, 5, (2*(c + d*x)*atan(ℯ^(a + b*x)))/b - (im*d*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + (im*d*PolyLog(2, im*ℯ^(a + b*x)))/b^2]
    @test_int [sech(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(sech(a + b*x)/(c + d*x), x)]


    @test_int [(c + d*x)^3*sech(a + b*x)^2, x, 6, (c + d*x)^3/b - (3*d*(c + d*x)^2*log(1 + ℯ^(2*(a + b*x))))/b^2 - (3*d^2*(c + d*x)*PolyLog(2, -ℯ^(2*(a + b*x))))/b^3 + (3*d^3*PolyLog(3, -ℯ^(2*(a + b*x))))/(2*b^4) + ((c + d*x)^3*tanh(a + b*x))/b]
    @test_int [(c + d*x)^2*sech(a + b*x)^2, x, 5, (c + d*x)^2/b - (2*d*(c + d*x)*log(1 + ℯ^(2*(a + b*x))))/b^2 - (d^2*PolyLog(2, -ℯ^(2*(a + b*x))))/b^3 + ((c + d*x)^2*tanh(a + b*x))/b]
    @test_int [(c + d*x)^1*sech(a + b*x)^2, x, 2, -((d*log(cosh(a + b*x)))/b^2) + ((c + d*x)*tanh(a + b*x))/b]
    @test_int [sech(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(sech(a + b*x)^2/(c + d*x), x)]


    @test_int [(c + d*x)^3*sech(a + b*x)^3, x, 15, -((6*d^2*(c + d*x)*atan(ℯ^(a + b*x)))/b^3) + ((c + d*x)^3*atan(ℯ^(a + b*x)))/b + (3*im*d^3*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^4 - (3*im*d*(c + d*x)^2*PolyLog(2, (-im)*ℯ^(a + b*x)))/(2*b^2) - (3*im*d^3*PolyLog(2, im*ℯ^(a + b*x)))/b^4 + (3*im*d*(c + d*x)^2*PolyLog(2, im*ℯ^(a + b*x)))/(2*b^2) + (3*im*d^2*(c + d*x)*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - (3*im*d^2*(c + d*x)*PolyLog(3, im*ℯ^(a + b*x)))/b^3 - (3*im*d^3*PolyLog(4, (-im)*ℯ^(a + b*x)))/b^4 + (3*im*d^3*PolyLog(4, im*ℯ^(a + b*x)))/b^4 + (3*d*(c + d*x)^2*sech(a + b*x))/(2*b^2) + ((c + d*x)^3*sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [(c + d*x)^2*sech(a + b*x)^3, x, 9, ((c + d*x)^2*atan(ℯ^(a + b*x)))/b - (d^2*atan(sinh(a + b*x)))/b^3 - (im*d*(c + d*x)*PolyLog(2, (-im)*ℯ^(a + b*x)))/b^2 + (im*d*(c + d*x)*PolyLog(2, im*ℯ^(a + b*x)))/b^2 + (im*d^2*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^3 - (im*d^2*PolyLog(3, im*ℯ^(a + b*x)))/b^3 + (d*(c + d*x)*sech(a + b*x))/b^2 + ((c + d*x)^2*sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [(c + d*x)^1*sech(a + b*x)^3, x, 6, ((c + d*x)*atan(ℯ^(a + b*x)))/b - (im*d*PolyLog(2, (-im)*ℯ^(a + b*x)))/(2*b^2) + (im*d*PolyLog(2, im*ℯ^(a + b*x)))/(2*b^2) + (d*sech(a + b*x))/(2*b^2) + ((c + d*x)*sech(a + b*x)*tanh(a + b*x))/(2*b)]
    @test_int [sech(a + b*x)^3/(c + d*x)^1, x, 0, Unintegrable(sech(a + b*x)^3/(c + d*x), x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*sech(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*sech(a+b*x)^(n/2)=#


    @test_int [x/sech(x)^(3/2) - (1/3)*x*sqrt(sech(x)), x, 4, -(4/(9*sech(x)^(3/2))) + (2*x*sinh(x))/(3*sqrt(sech(x)))]
    @test_int [x/sech(x)^(5/2) - (3/5)*x/sqrt(sech(x)), x, 4, -(4/(25*sech(x)^(5/2))) + (2*x*sinh(x))/(5*sech(x)^(3/2))]
    @test_int [x/sech(x)^(7/2) - (5/21)*x*sqrt(sech(x)), x, 5, -(4/(49*sech(x)^(7/2))) - 20/(63*sech(x)^(3/2)) + (2*x*sinh(x))/(7*sech(x)^(5/2)) + (10*x*sinh(x))/(21*sqrt(sech(x)))]
    @test_int [x^2/sech(x)^(3/2) - (1/3)*x^2*sqrt(sech(x)), x, 7, -((8*x)/(9*sech(x)^(3/2))) - (16/27)*im*sqrt(cosh(x))*Elliptic.F((im*x)/2, 2)*sqrt(sech(x)) + (16*sinh(x))/(27*sqrt(sech(x))) + (2*x^2*sinh(x))/(3*sqrt(sech(x)))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*sech(a+b*x)^(n/2)=#
    end
