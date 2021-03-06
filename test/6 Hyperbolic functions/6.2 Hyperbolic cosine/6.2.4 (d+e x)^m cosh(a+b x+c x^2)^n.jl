@testset "6.2.4 (d+e x)^m cosh(a+b x+c x^2)^n" begin
    (a, b, c, d, e, x, ) = @variables a b c d e x

    #= ::Package:: =#

    #= ::Section:: =#
    #=Integrands*of*the*form*(d+e*x)^m*cosh(a+b*x+c*x^2)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*x)^m*cosh(a+b*x+c*x^2)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^2*cosh(a + b*x + c*x^2), x, 12, (b^2*ℯ^(-a + b^2/(4*c))*sqrt(pi)*erf((b + 2*c*x)/(2*sqrt(c))))/(16*c^(5/2)) + (ℯ^(-a + b^2/(4*c))*sqrt(pi)*erf((b + 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) + (b^2*ℯ^(a - b^2/(4*c))*sqrt(pi)*erfi((b + 2*c*x)/(2*sqrt(c))))/(16*c^(5/2)) - (ℯ^(a - b^2/(4*c))*sqrt(pi)*erfi((b + 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) - (b*sinh(a + b*x + c*x^2))/(4*c^2) + (x*sinh(a + b*x + c*x^2))/(2*c)]
    @test_int [x*cosh(a + b*x + c*x^2), x, 6, -((b*ℯ^(-a + b^2/(4*c))*sqrt(pi)*erf((b + 2*c*x)/(2*sqrt(c))))/(8*c^(3/2))) - (b*ℯ^(a - b^2/(4*c))*sqrt(pi)*erfi((b + 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) + sinh(a + b*x + c*x^2)/(2*c)]
    @test_int [cosh(a + b*x + c*x^2), x, 5, (ℯ^(-a + b^2/(4*c))*sqrt(pi)*erf((b + 2*c*x)/(2*sqrt(c))))/(4*sqrt(c)) + (ℯ^(a - b^2/(4*c))*sqrt(pi)*erfi((b + 2*c*x)/(2*sqrt(c))))/(4*sqrt(c))]
    @test_int [cosh(a + b*x + c*x^2)/x, x, 0, Unintegrable(cosh(a + b*x + c*x^2)/x, x)]
    @test_int [cosh(a + b*x + c*x^2)/x^2 - b*sinh(a + b*x + c*x^2)/x, x, 7, -(cosh(a + b*x + c*x^2)/x) - (1/2)*sqrt(c)*ℯ^(-a + b^2/(4*c))*sqrt(pi)*erf((b + 2*c*x)/(2*sqrt(c))) + (1/2)*sqrt(c)*ℯ^(a - b^2/(4*c))*sqrt(pi)*erfi((b + 2*c*x)/(2*sqrt(c)))]

    @test_int [x^2*cosh(a + b*x - c*x^2), x, 12, -((b^2*ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(16*c^(5/2))) - (ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) - (b^2*ℯ^(-a - b^2/(4*c))*sqrt(pi)*erfi((b - 2*c*x)/(2*sqrt(c))))/(16*c^(5/2)) + (ℯ^(-a - b^2/(4*c))*sqrt(pi)*erfi((b - 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) - (b*sinh(a + b*x - c*x^2))/(4*c^2) - (x*sinh(a + b*x - c*x^2))/(2*c)]
    @test_int [x*cosh(a + b*x - c*x^2), x, 6, -((b*ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(8*c^(3/2))) - (b*ℯ^(-a - b^2/(4*c))*sqrt(pi)*erfi((b - 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) - sinh(a + b*x - c*x^2)/(2*c)]
    @test_int [cosh(a + b*x - c*x^2), x, 5, -((ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(4*sqrt(c))) - (ℯ^(-a - b^2/(4*c))*sqrt(pi)*erfi((b - 2*c*x)/(2*sqrt(c))))/(4*sqrt(c))]
    @test_int [cosh(a + b*x - c*x^2)/x, x, 0, Unintegrable(cosh(a + b*x - c*x^2)/x, x)]
    @test_int [cosh(a + b*x - c*x^2)/x^2 - b*sinh(a + b*x - c*x^2)/x, x, 7, -(cosh(a + b*x - c*x^2)/x) + (1/2)*sqrt(c)*ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))) - (1/2)*sqrt(c)*ℯ^(-a - b^2/(4*c))*sqrt(pi)*erfi((b - 2*c*x)/(2*sqrt(c)))]

    @test_int [x^2*cosh(1/4 + x + x^2), x, 12, (-(3/16))*sqrt(pi)*erf((1/2)*(-1 - 2*x)) - (1/16)*sqrt(pi)*erfi((1/2)*(1 + 2*x)) - (1/4)*sinh(1/4 + x + x^2) + (1/2)*x*sinh(1/4 + x + x^2)]
    @test_int [x*cosh(1/4 + x + x^2), x, 6, (1/8)*sqrt(pi)*erf((1/2)*(-1 - 2*x)) - (1/8)*sqrt(pi)*erfi((1/2)*(1 + 2*x)) + (1/2)*sinh(1/4 + x + x^2)]
    @test_int [cosh(1/4 + x + x^2), x, 5, (-(1/4))*sqrt(pi)*erf((1/2)*(-1 - 2*x)) + (1/4)*sqrt(pi)*erfi((1/2)*(1 + 2*x))]
    @test_int [cosh(1/4 + x + x^2)/x, x, 0, Unintegrable(cosh(1/4 + x + x^2)/x, x)]
    @test_int [cosh(1/4 + x + x^2)/x^2, x, 6, -(cosh(1/4 + x + x^2)/x) + (1/2)*sqrt(pi)*erf((1/2)*(-1 - 2*x)) + (1/2)*sqrt(pi)*erfi((1/2)*(1 + 2*x)) + Unintegrable(sinh(1/4 + x + x^2)/x, x)]


    @test_int [x^2*cosh(a + b*x + c*x^2)^2, x, 14, x^3/6 + (b^2*ℯ^(-2*a + b^2/(2*c))*sqrt(pi/2)*erf((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(5/2)) + (ℯ^(-2*a + b^2/(2*c))*sqrt(pi/2)*erf((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(3/2)) + (b^2*ℯ^(2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(5/2)) - (ℯ^(2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(3/2)) - (b*sinh(2*a + 2*b*x + 2*c*x^2))/(16*c^2) + (x*sinh(2*a + 2*b*x + 2*c*x^2))/(8*c)]
    @test_int [x*cosh(a + b*x + c*x^2)^2, x, 8, x^2/4 - (b*ℯ^(-2*a + b^2/(2*c))*sqrt(pi/2)*erf((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(16*c^(3/2)) - (b*ℯ^(2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(16*c^(3/2)) + sinh(2*a + 2*b*x + 2*c*x^2)/(8*c)]
    @test_int [cosh(a + b*x + c*x^2)^2, x, 7, x/2 + (ℯ^(-2*a + b^2/(2*c))*sqrt(pi/2)*erf((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(8*sqrt(c)) + (ℯ^(2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(8*sqrt(c))]
    @test_int [cosh(a + b*x + c*x^2)^2/x, x, 2, (1/2)*Unintegrable(cosh(2*a + 2*b*x + 2*c*x^2)/x, x) + log(x)/2]

    @test_int [x^2*cosh(a + b*x - c*x^2)^2, x, 14, x^3/6 - (b^2*ℯ^(2*a + b^2/(2*c))*sqrt(pi/2)*erf((b - 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(5/2)) - (ℯ^(2*a + b^2/(2*c))*sqrt(pi/2)*erf((b - 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(3/2)) - (b^2*ℯ^(-2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b - 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(5/2)) + (ℯ^(-2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b - 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(3/2)) - (b*sinh(2*a + 2*b*x - 2*c*x^2))/(16*c^2) - (x*sinh(2*a + 2*b*x - 2*c*x^2))/(8*c)]
    @test_int [x*cosh(a + b*x - c*x^2)^2, x, 8, x^2/4 - (b*ℯ^(2*a + b^2/(2*c))*sqrt(pi/2)*erf((b - 2*c*x)/(sqrt(2)*sqrt(c))))/(16*c^(3/2)) - (b*ℯ^(-2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b - 2*c*x)/(sqrt(2)*sqrt(c))))/(16*c^(3/2)) - sinh(2*a + 2*b*x - 2*c*x^2)/(8*c)]
    @test_int [cosh(a + b*x - c*x^2)^2, x, 7, x/2 - (ℯ^(2*a + b^2/(2*c))*sqrt(pi/2)*erf((b - 2*c*x)/(sqrt(2)*sqrt(c))))/(8*sqrt(c)) - (ℯ^(-2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b - 2*c*x)/(sqrt(2)*sqrt(c))))/(8*sqrt(c))]
    @test_int [cosh(a + b*x - c*x^2)^2/x, x, 2, (1/2)*Unintegrable(cosh(2*a + 2*b*x - 2*c*x^2)/x, x) + log(x)/2]

    @test_int [x^2*cosh(1/4 + x + x^2)^2, x, 14, x^3/6 + (1/16)*sqrt(pi/2)*erf((1 + 2*x)/sqrt(2)) - (1/16)*sinh(1/2 + 2*x + 2*x^2) + (1/8)*x*sinh(1/2 + 2*x + 2*x^2)]
    @test_int [x*cosh(1/4 + x + x^2)^2, x, 8, x^2/4 - (1/16)*sqrt(pi/2)*erf((1 + 2*x)/sqrt(2)) - (1/16)*sqrt(pi/2)*erfi((1 + 2*x)/sqrt(2)) + (1/8)*sinh(1/2 + 2*x + 2*x^2)]
    @test_int [cosh(1/4 + x + x^2)^2, x, 7, x/2 + (1/8)*sqrt(pi/2)*erf((1 + 2*x)/sqrt(2)) + (1/8)*sqrt(pi/2)*erfi((1 + 2*x)/sqrt(2))]
    @test_int [cosh(1/4 + x + x^2)^2/x, x, 2, (1/2)*Unintegrable(cosh(1/2 + 2*x + 2*x^2)/x, x) + log(x)/2]


    @test_int [(d + e*x)^2*cosh(a + b*x + c*x^2), x, 12, (e^2*ℯ^(-a + b^2/(4*c))*sqrt(pi)*erf((b + 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) + ((2*c*d - b*e)^2*ℯ^(-a + b^2/(4*c))*sqrt(pi)*erf((b + 2*c*x)/(2*sqrt(c))))/(16*c^(5/2)) - (e^2*ℯ^(a - b^2/(4*c))*sqrt(pi)*erfi((b + 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) + ((2*c*d - b*e)^2*ℯ^(a - b^2/(4*c))*sqrt(pi)*erfi((b + 2*c*x)/(2*sqrt(c))))/(16*c^(5/2)) + (e*(2*c*d - b*e)*sinh(a + b*x + c*x^2))/(4*c^2) + (e*(d + e*x)*sinh(a + b*x + c*x^2))/(2*c)]
    @test_int [(d + e*x)*cosh(a + b*x + c*x^2), x, 6, ((2*c*d - b*e)*ℯ^(-a + b^2/(4*c))*sqrt(pi)*erf((b + 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) + ((2*c*d - b*e)*ℯ^(a - b^2/(4*c))*sqrt(pi)*erfi((b + 2*c*x)/(2*sqrt(c))))/(8*c^(3/2)) + (e*sinh(a + b*x + c*x^2))/(2*c)]
    @test_int [cosh(a + b*x + c*x^2)/(d + e*x), x, 0, Unintegrable(cosh(a + b*x + c*x^2)/(d + e*x), x)]

    @test_int [(d + e*x)^2*cosh(a + b*x + c*x^2)^2, x, 14, (d + e*x)^3/(6*e) + (e^2*ℯ^(-2*a + b^2/(2*c))*sqrt(pi/2)*erf((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(3/2)) + ((2*c*d - b*e)^2*ℯ^(-2*a + b^2/(2*c))*sqrt(pi/2)*erf((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(5/2)) - (e^2*ℯ^(2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(3/2)) + ((2*c*d - b*e)^2*ℯ^(2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(32*c^(5/2)) + (e*(2*c*d - b*e)*sinh(2*a + 2*b*x + 2*c*x^2))/(16*c^2) + (e*(d + e*x)*sinh(2*a + 2*b*x + 2*c*x^2))/(8*c)]
    @test_int [(d + e*x)*cosh(a + b*x + c*x^2)^2, x, 8, (d + e*x)^2/(4*e) + ((2*c*d - b*e)*ℯ^(-2*a + b^2/(2*c))*sqrt(pi/2)*erf((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(16*c^(3/2)) + ((2*c*d - b*e)*ℯ^(2*a - b^2/(2*c))*sqrt(pi/2)*erfi((b + 2*c*x)/(sqrt(2)*sqrt(c))))/(16*c^(3/2)) + (e*sinh(2*a + 2*b*x + 2*c*x^2))/(8*c)]
    @test_int [cosh(a + b*x + c*x^2)^2/(d + e*x), x, 2, (1/2)*Unintegrable(cosh(2*a + 2*b*x + 2*c*x^2)/(d + e*x), x) + log(d + e*x)/(2*e)]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(d+e*x)^m*cosh(a+b*x+c*x^2)^(n/2)=#
    end
