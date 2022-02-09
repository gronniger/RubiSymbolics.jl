@testset "8.5 Hyperbolic integral functions" begin
    (a, b, c, d, e, m, n, x, ) = @variables a b c d e m n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Hyperbolic*Integral*Functions=#


    #= ::Section::Closed:: =#
    #=Hyperbolic*sine*integral*function=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*SinhIntegral(b*x)^n=#


    @test_int [x^m*SinhIntegral(b*x), x, 5, -((x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(2*b*(1 + m)))) - (x^m*Gamma(1 + m, b*x))/((b*x)^m*(2*b*(1 + m))) + (x^(1 + m)*SinhIntegral(b*x))/(1 + m)]

    @test_int [x^3*SinhIntegral(b*x), x, 6, -((3*x*cosh(b*x))/(2*b^3)) - (x^3*cosh(b*x))/(4*b) + (3*sinh(b*x))/(2*b^4) + (3*x^2*sinh(b*x))/(4*b^2) + (1/4)*x^4*SinhIntegral(b*x)]
    @test_int [x^2*SinhIntegral(b*x), x, 5, -((2*cosh(b*x))/(3*b^3)) - (x^2*cosh(b*x))/(3*b) + (2*x*sinh(b*x))/(3*b^2) + (1/3)*x^3*SinhIntegral(b*x)]
    @test_int [x^1*SinhIntegral(b*x), x, 4, -((x*cosh(b*x))/(2*b)) + sinh(b*x)/(2*b^2) + (1/2)*x^2*SinhIntegral(b*x)]
    @test_int [x^0*SinhIntegral(b*x), x, 1, -(cosh(b*x)/b) + x*SinhIntegral(b*x)]
    @test_int [SinhIntegral(b*x)/x^1, x, 1, (1/2)*b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-b)*x) + (1/2)*b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], b*x)]
    @test_int [SinhIntegral(b*x)/x^2, x, 4, b*CoshIntegral(b*x) - sinh(b*x)/x - SinhIntegral(b*x)/x]
    @test_int [SinhIntegral(b*x)/x^3, x, 5, -((b*cosh(b*x))/(4*x)) - sinh(b*x)/(4*x^2) + (1/4)*b^2*SinhIntegral(b*x) - SinhIntegral(b*x)/(2*x^2)]


    @test_int [x^m*SinhIntegral(b*x)^2, x, 0, CannotIntegrate(x^m*SinhIntegral(b*x)^2, x)]

    @test_int [x^3*SinhIntegral(b*x)^2, x, 19, x^2/(2*b^2) - (3*CoshIntegral(2*b*x))/(2*b^4) + (3*log(x))/(2*b^4) - (x*cosh(b*x)*sinh(b*x))/b^3 + (2*sinh(b*x)^2)/b^4 + (x^2*sinh(b*x)^2)/(4*b^2) - (3*x*cosh(b*x)*SinhIntegral(b*x))/b^3 - (x^3*cosh(b*x)*SinhIntegral(b*x))/(2*b) + (3*sinh(b*x)*SinhIntegral(b*x))/b^4 + (3*x^2*sinh(b*x)*SinhIntegral(b*x))/(2*b^2) + (1/4)*x^4*SinhIntegral(b*x)^2]
    @test_int [x^2*SinhIntegral(b*x)^2, x, 15, (5*x)/(6*b^2) - (5*cosh(b*x)*sinh(b*x))/(6*b^3) + (x*sinh(b*x)^2)/(3*b^2) - (4*cosh(b*x)*SinhIntegral(b*x))/(3*b^3) - (2*x^2*cosh(b*x)*SinhIntegral(b*x))/(3*b) + (4*x*sinh(b*x)*SinhIntegral(b*x))/(3*b^2) + (1/3)*x^3*SinhIntegral(b*x)^2 + (2*SinhIntegral(2*b*x))/(3*b^3)]
    @test_int [x^1*SinhIntegral(b*x)^2, x, 10, -(CoshIntegral(2*b*x)/(2*b^2)) + log(x)/(2*b^2) + sinh(b*x)^2/(2*b^2) - (x*cosh(b*x)*SinhIntegral(b*x))/b + (sinh(b*x)*SinhIntegral(b*x))/b^2 + (1/2)*x^2*SinhIntegral(b*x)^2]
    @test_int [x^0*SinhIntegral(b*x)^2, x, 6, -((2*cosh(b*x)*SinhIntegral(b*x))/b) + x*SinhIntegral(b*x)^2 + SinhIntegral(2*b*x)/b]
    @test_int [SinhIntegral(b*x)^2/x^1, x, 0, CannotIntegrate(SinhIntegral(b*x)^2/x, x)]
    @test_int [SinhIntegral(b*x)^2/x^2, x, 0, CannotIntegrate(SinhIntegral(b*x)^2/x^2, x)]
    @test_int [SinhIntegral(b*x)^2/x^3, x, 0, CannotIntegrate(SinhIntegral(b*x)^2/x^3, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*SinhIntegral(a+b*x)^n=#


    @test_int [x^m*SinhIntegral(a + b*x), x, 1, -((b*CannotIntegrate((x^(1 + m)*sinh(a + b*x))/(a + b*x), x))/(1 + m)) + (x^(1 + m)*SinhIntegral(a + b*x))/(1 + m)]

    @test_int [x^3*SinhIntegral(a + b*x), x, 14, (a*cosh(a + b*x))/(2*b^4) + (a^3*cosh(a + b*x))/(4*b^4) - (3*x*cosh(a + b*x))/(2*b^3) - (a^2*x*cosh(a + b*x))/(4*b^3) + (a*x^2*cosh(a + b*x))/(4*b^2) - (x^3*cosh(a + b*x))/(4*b) + (3*sinh(a + b*x))/(2*b^4) + (a^2*sinh(a + b*x))/(4*b^4) - (a*x*sinh(a + b*x))/(2*b^3) + (3*x^2*sinh(a + b*x))/(4*b^2) - (a^4*SinhIntegral(a + b*x))/(4*b^4) + (1/4)*x^4*SinhIntegral(a + b*x)]
    @test_int [x^2*SinhIntegral(a + b*x), x, 10, -((2*cosh(a + b*x))/(3*b^3)) - (a^2*cosh(a + b*x))/(3*b^3) + (a*x*cosh(a + b*x))/(3*b^2) - (x^2*cosh(a + b*x))/(3*b) - (a*sinh(a + b*x))/(3*b^3) + (2*x*sinh(a + b*x))/(3*b^2) + (a^3*SinhIntegral(a + b*x))/(3*b^3) + (1/3)*x^3*SinhIntegral(a + b*x)]
    @test_int [x^1*SinhIntegral(a + b*x), x, 7, (a*cosh(a + b*x))/(2*b^2) - (x*cosh(a + b*x))/(2*b) + sinh(a + b*x)/(2*b^2) - (a^2*SinhIntegral(a + b*x))/(2*b^2) + (1/2)*x^2*SinhIntegral(a + b*x)]
    @test_int [x^0*SinhIntegral(a + b*x), x, 1, -(cosh(a + b*x)/b) + ((a + b*x)*SinhIntegral(a + b*x))/b]
    @test_int [SinhIntegral(a + b*x)/x^1, x, 0, CannotIntegrate(SinhIntegral(a + b*x)/x, x)]
    @test_int [SinhIntegral(a + b*x)/x^2, x, 7, (b*CoshIntegral(b*x)*sinh(a))/a + (b*cosh(a)*SinhIntegral(b*x))/a - (b*SinhIntegral(a + b*x))/a - SinhIntegral(a + b*x)/x]
    @test_int [SinhIntegral(a + b*x)/x^3, x, 11, (b^2*cosh(a)*CoshIntegral(b*x))/(2*a) - (b^2*CoshIntegral(b*x)*sinh(a))/(2*a^2) - (b*sinh(a + b*x))/(2*a*x) - (b^2*cosh(a)*SinhIntegral(b*x))/(2*a^2) + (b^2*sinh(a)*SinhIntegral(b*x))/(2*a) + (b^2*SinhIntegral(a + b*x))/(2*a^2) - SinhIntegral(a + b*x)/(2*x^2)]


    @test_int [x^m*SinhIntegral(a + b*x)^2, x, 0, CannotIntegrate(x^m*SinhIntegral(a + b*x)^2, x)]

    @test_int [x^2*SinhIntegral(a + b*x)^2, x, 39, (2*x)/(3*b^2) - (a*cosh(2*a + 2*b*x))/(3*b^3) + (x*cosh(2*a + 2*b*x))/(6*b^2) + (a*CoshIntegral(2*a + 2*b*x))/b^3 - (a*log(a + b*x))/b^3 - (2*cosh(a + b*x)*sinh(a + b*x))/(3*b^3) - sinh(2*a + 2*b*x)/(12*b^3) - (4*cosh(a + b*x)*SinhIntegral(a + b*x))/(3*b^3) - (2*a^2*cosh(a + b*x)*SinhIntegral(a + b*x))/(3*b^3) + (2*a*x*cosh(a + b*x)*SinhIntegral(a + b*x))/(3*b^2) - (2*x^2*cosh(a + b*x)*SinhIntegral(a + b*x))/(3*b) - (2*a*sinh(a + b*x)*SinhIntegral(a + b*x))/(3*b^3) + (4*x*sinh(a + b*x)*SinhIntegral(a + b*x))/(3*b^2) + (a^2*(a + b*x)*SinhIntegral(a + b*x)^2)/(3*b^3) - (a*x*(a + b*x)*SinhIntegral(a + b*x)^2)/(3*b^2) + (x^2*(a + b*x)*SinhIntegral(a + b*x)^2)/(3*b) + (2*SinhIntegral(2*a + 2*b*x))/(3*b^3) + (a^2*SinhIntegral(2*a + 2*b*x))/b^3]
    @test_int [x^1*SinhIntegral(a + b*x)^2, x, 17, cosh(2*a + 2*b*x)/(4*b^2) - CoshIntegral(2*a + 2*b*x)/(2*b^2) + log(a + b*x)/(2*b^2) + (a*cosh(a + b*x)*SinhIntegral(a + b*x))/b^2 - (x*cosh(a + b*x)*SinhIntegral(a + b*x))/b + (sinh(a + b*x)*SinhIntegral(a + b*x))/b^2 - (a*(a + b*x)*SinhIntegral(a + b*x)^2)/(2*b^2) + (x*(a + b*x)*SinhIntegral(a + b*x)^2)/(2*b) - (a*SinhIntegral(2*a + 2*b*x))/b^2]
    @test_int [x^0*SinhIntegral(a + b*x)^2, x, 5, -((2*cosh(a + b*x)*SinhIntegral(a + b*x))/b) + ((a + b*x)*SinhIntegral(a + b*x)^2)/b + SinhIntegral(2*a + 2*b*x)/b]
    @test_int [SinhIntegral(a + b*x)^2/x^1, x, 0, CannotIntegrate(SinhIntegral(a + b*x)^2/x, x)]
    @test_int [SinhIntegral(a + b*x)^2/x^2, x, 0, CannotIntegrate(SinhIntegral(a + b*x)^2/x^2, x)]
    @test_int [SinhIntegral(a + b*x)^2/x^3, x, 0, CannotIntegrate(SinhIntegral(a + b*x)^2/x^3, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*SinhIntegral(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*SinhIntegral(d*(a + b*log(c*x^n))), x, 7, (x^3*ExpIntegralEi(((3 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(6*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)) - (x^3*ExpIntegralEi(((3 + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(6*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)) + (x^3*SinhIntegral(d*(a + b*log(c*x^n))))/3]
    @test_int [x^1*SinhIntegral(d*(a + b*log(c*x^n))), x, 7, (x^2*ExpIntegralEi(((2 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(4*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) - (x^2*ExpIntegralEi(((2 + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(4*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) + (x^2*SinhIntegral(d*(a + b*log(c*x^n))))/2]
    @test_int [x^0*SinhIntegral(d*(a + b*log(c*x^n))), x, 7, (x*ExpIntegralEi(((1 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^(a/(b*n))*(c*x^n)^n^(-1)) - (x*ExpIntegralEi(((1 + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^(a/(b*n))*(c*x^n)^n^(-1)) + x*SinhIntegral(d*(a + b*log(c*x^n)))]
    @test_int [SinhIntegral(d*(a + b*log(c*x^n)))/x^1, x, 3, -(cosh(d*(a + b*log(c*x^n)))/(b*d*n)) + ((a + b*log(c*x^n))*SinhIntegral(d*(a + b*log(c*x^n))))/(b*n)]
    @test_int [SinhIntegral(d*(a + b*log(c*x^n)))/x^2, x, 7, (ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-(((1 - b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(2*x) - (ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-(((1 + b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(2*x) - SinhIntegral(d*(a + b*log(c*x^n)))/x]
    @test_int [SinhIntegral(d*(a + b*log(c*x^n)))/x^3, x, 7, (ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi(-(((2 - b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(4*x^2) - (ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi(-(((2 + b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(4*x^2) - SinhIntegral(d*(a + b*log(c*x^n)))/(2*x^2)]


    @test_int [(e*x)^m*SinhIntegral(d*(a + b*log(c*x^n))), x, 7, (x*(e*x)^m*ExpIntegralEi(((1 + m - b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^((a*(1 + m))/(b*n))*(1 + m)*(c*x^n)^((1 + m)/n)) - (x*(e*x)^m*ExpIntegralEi(((1 + m + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^((a*(1 + m))/(b*n))*(1 + m)*(c*x^n)^((1 + m)/n)) + ((e*x)^(1 + m)*SinhIntegral(d*(a + b*log(c*x^n))))/(e*(1 + m))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Hyper(b*x)*SinhIntegral(b*x)^n=#


    @test_int [sinh(b*x)*SinhIntegral(b*x)/x^3, x, 14, b^2*CoshIntegral(2*b*x) - (b*cosh(b*x)*sinh(b*x))/(2*x) - sinh(b*x)^2/(4*x^2) - (b*sinh(2*b*x))/(4*x) - (b*cosh(b*x)*SinhIntegral(b*x))/(2*x) - (sinh(b*x)*SinhIntegral(b*x))/(2*x^2) + (1/4)*b^2*SinhIntegral(b*x)^2]
    @test_int [sinh(b*x)*SinhIntegral(b*x)/x^2, x, 5, b*CannotIntegrate((cosh(b*x)*SinhIntegral(b*x))/x, x) - sinh(b*x)^2/x - (sinh(b*x)*SinhIntegral(b*x))/x + b*SinhIntegral(2*b*x)]
    @test_int [sinh(b*x)*SinhIntegral(b*x)/x, x, 1, (1/2)*SinhIntegral(b*x)^2]
    @test_int [sinh(b*x)*SinhIntegral(b*x), x, 5, (cosh(b*x)*SinhIntegral(b*x))/b - SinhIntegral(2*b*x)/(2*b)]
    @test_int [x*sinh(b*x)*SinhIntegral(b*x), x, 9, CoshIntegral(2*b*x)/(2*b^2) - log(x)/(2*b^2) - sinh(b*x)^2/(2*b^2) + (x*cosh(b*x)*SinhIntegral(b*x))/b - (sinh(b*x)*SinhIntegral(b*x))/b^2]
    @test_int [x^2*sinh(b*x)*SinhIntegral(b*x), x, 14, -((5*x)/(4*b^2)) + (5*cosh(b*x)*sinh(b*x))/(4*b^3) - (x*sinh(b*x)^2)/(2*b^2) + (2*cosh(b*x)*SinhIntegral(b*x))/b^3 + (x^2*cosh(b*x)*SinhIntegral(b*x))/b - (2*x*sinh(b*x)*SinhIntegral(b*x))/b^2 - SinhIntegral(2*b*x)/b^3]
    @test_int [x^3*sinh(b*x)*SinhIntegral(b*x), x, 18, -(x^2/b^2) + (3*CoshIntegral(2*b*x))/b^4 - (3*log(x))/b^4 + (2*x*cosh(b*x)*sinh(b*x))/b^3 - (4*sinh(b*x)^2)/b^4 - (x^2*sinh(b*x)^2)/(2*b^2) + (6*x*cosh(b*x)*SinhIntegral(b*x))/b^3 + (x^3*cosh(b*x)*SinhIntegral(b*x))/b - (6*sinh(b*x)*SinhIntegral(b*x))/b^4 - (3*x^2*sinh(b*x)*SinhIntegral(b*x))/b^2]


    @test_int [cosh(b*x)*SinhIntegral(b*x)/x^3, x, 12, -((b*cosh(2*b*x))/(4*x)) + (1/2)*b^2*CannotIntegrate((cosh(b*x)*SinhIntegral(b*x))/x, x) - (b*sinh(b*x)^2)/(2*x) - sinh(2*b*x)/(8*x^2) - (cosh(b*x)*SinhIntegral(b*x))/(2*x^2) - (b*sinh(b*x)*SinhIntegral(b*x))/(2*x) + b^2*SinhIntegral(2*b*x)]
    @test_int [cosh(b*x)*SinhIntegral(b*x)/x^2, x, 7, b*CoshIntegral(2*b*x) - sinh(2*b*x)/(2*x) - (cosh(b*x)*SinhIntegral(b*x))/x + (1/2)*b*SinhIntegral(b*x)^2]
    @test_int [cosh(b*x)*SinhIntegral(b*x)/x, x, 0, CannotIntegrate((cosh(b*x)*SinhIntegral(b*x))/x, x)]
    @test_int [cosh(b*x)*SinhIntegral(b*x), x, 5, -(CoshIntegral(2*b*x)/(2*b)) + log(x)/(2*b) + (sinh(b*x)*SinhIntegral(b*x))/b]
    @test_int [x*cosh(b*x)*SinhIntegral(b*x), x, 9, x/(2*b) - (cosh(b*x)*sinh(b*x))/(2*b^2) - (cosh(b*x)*SinhIntegral(b*x))/b^2 + (x*sinh(b*x)*SinhIntegral(b*x))/b + SinhIntegral(2*b*x)/(2*b^2)]
    @test_int [x^2*cosh(b*x)*SinhIntegral(b*x), x, 13, x^2/(4*b) - CoshIntegral(2*b*x)/b^3 + log(x)/b^3 - (x*cosh(b*x)*sinh(b*x))/(2*b^2) + (5*sinh(b*x)^2)/(4*b^3) - (2*x*cosh(b*x)*SinhIntegral(b*x))/b^2 + (2*sinh(b*x)*SinhIntegral(b*x))/b^3 + (x^2*sinh(b*x)*SinhIntegral(b*x))/b]
    @test_int [x^3*cosh(b*x)*SinhIntegral(b*x), x, 20, (4*x)/b^3 + x^3/(6*b) - (4*cosh(b*x)*sinh(b*x))/b^4 - (x^2*cosh(b*x)*sinh(b*x))/(2*b^2) + (2*x*sinh(b*x)^2)/b^3 - (6*cosh(b*x)*SinhIntegral(b*x))/b^4 - (3*x^2*cosh(b*x)*SinhIntegral(b*x))/b^2 + (6*x*sinh(b*x)*SinhIntegral(b*x))/b^3 + (x^3*sinh(b*x)*SinhIntegral(b*x))/b + (3*SinhIntegral(2*b*x))/b^4]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Hyper(b*x)*SinhIntegral(d*x)^n=#


    @test_int [sinh(5*x)*SinhIntegral(2*x), x, 6, (1/5)*cosh(5*x)*SinhIntegral(2*x) + (1/10)*SinhIntegral(3*x) - (1/10)*SinhIntegral(7*x)]


    @test_int [cosh(5*x)*SinhIntegral(2*x), x, 6, (1/10)*CoshIntegral(3*x) - (1/10)*CoshIntegral(7*x) + (1/5)*sinh(5*x)*SinhIntegral(2*x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Hyper(a+b*x)*SinhIntegral(a+b*x)^n=#


    #= [x^3*sinh(a + b*x)*SinhIntegral(a + b*x), x, 32, (7*a*x)/(4*b^3) - x^2/b^2 + (3*cosh(a + b*x)^2)/b^4 - (a^2*cosh(a + b*x)^2)/(2*b^4) - (3*CosIntegral(2*a + 2*b*x))/b^4 + (3*a^2*CosIntegral(2*a + 2*b*x))/(2*b^4) + (3*log(a + b*x))/b^4 - (3*a^2*log(a + b*x))/(2*b^4) - (7*a*cosh(a + b*x)*sinh(a + b*x))/(4*b^4) + (2*x*cosh(a + b*x)*sinh(a + b*x))/b^3 - sinh(a + b*x)^2/b^4 - (a*x*sinh(a + b*x)^2)/(2*b^3) + (x^2*sinh(a + b*x)^2)/(2*b^2) + (6*x*cosh(a + b*x)*SinhIntegral(a + b*x))/b^3 - (x^3*cosh(a + b*x)*SinhIntegral(a + b*x))/b - (6*sinh(a + b*x)*SinhIntegral(a + b*x))/b^4 + (3*x^2*sinh(a + b*x)*SinhIntegral(a + b*x))/b^2 + (3*a*SinhIntegral(2*a + 2*b*x))/b^4 - (a^3*SinhIntegral(2*a + 2*b*x))/(2*b^4)] =#
    @test_int [x^2*sinh(a + b*x)*SinhIntegral(a + b*x), x, 21, -(x/b^2) + (a*cosh(2*a + 2*b*x))/(4*b^3) - (x*cosh(2*a + 2*b*x))/(4*b^2) - (a*CoshIntegral(2*a + 2*b*x))/b^3 + (a*log(a + b*x))/b^3 + (cosh(a + b*x)*sinh(a + b*x))/b^3 + sinh(2*a + 2*b*x)/(8*b^3) + (2*cosh(a + b*x)*SinhIntegral(a + b*x))/b^3 + (x^2*cosh(a + b*x)*SinhIntegral(a + b*x))/b - (2*x*sinh(a + b*x)*SinhIntegral(a + b*x))/b^2 - SinhIntegral(2*a + 2*b*x)/b^3 - (a^2*SinhIntegral(2*a + 2*b*x))/(2*b^3)]
    @test_int [x^1*sinh(a + b*x)*SinhIntegral(a + b*x), x, 11, -(cosh(2*a + 2*b*x)/(4*b^2)) + CoshIntegral(2*a + 2*b*x)/(2*b^2) - log(a + b*x)/(2*b^2) + (x*cosh(a + b*x)*SinhIntegral(a + b*x))/b - (sinh(a + b*x)*SinhIntegral(a + b*x))/b^2 + (a*SinhIntegral(2*a + 2*b*x))/(2*b^2)]
    @test_int [x^0*sinh(a + b*x)*SinhIntegral(a + b*x), x, 4, (cosh(a + b*x)*SinhIntegral(a + b*x))/b - SinhIntegral(2*a + 2*b*x)/(2*b)]
    @test_int [sinh(a + b*x)*SinhIntegral(a + b*x)/x^1, x, 0, CannotIntegrate((sinh(a + b*x)*SinhIntegral(a + b*x))/x, x)]


    #= [x^3*cosh(a + b*x)*SinhIntegral(a + b*x), x, 32, (4*x)/b^3 - (a^2*x)/(2*b^3) + (a*x^2)/(4*b^2) - x^3/(6*b) - (3*a*cosh(a + b*x)^2)/(2*b^4) + (3*a*CosIntegral(2*a + 2*b*x))/b^4 - (a^3*CosIntegral(2*a + 2*b*x))/(2*b^4) - (3*a*log(a + b*x))/b^4 + (a^3*log(a + b*x))/(2*b^4) - (4*cosh(a + b*x)*sinh(a + b*x))/b^4 + (a^2*cosh(a + b*x)*sinh(a + b*x))/(2*b^4) - (a*x*cosh(a + b*x)*sinh(a + b*x))/(2*b^3) + (x^2*cosh(a + b*x)*sinh(a + b*x))/(2*b^2) + (a*sinh(a + b*x)^2)/(4*b^4) - (2*x*sinh(a + b*x)^2)/b^3 - (6*cosh(a + b*x)*SinhIntegral(a + b*x))/b^4 + (3*x^2*cosh(a + b*x)*SinhIntegral(a + b*x))/b^2 - (6*x*sinh(a + b*x)*SinhIntegral(a + b*x))/b^3 + (x^3*sinh(a + b*x)*SinhIntegral(a + b*x))/b + (3*SinhIntegral(2*a + 2*b*x))/b^4 - (3*a^2*SinhIntegral(2*a + 2*b*x))/(2*b^4)] =#
    @test_int [x^2*cosh(a + b*x)*SinhIntegral(a + b*x), x, 21, -((a*x)/(2*b^2)) + x^2/(4*b) + cosh(2*a + 2*b*x)/(2*b^3) - CoshIntegral(2*a + 2*b*x)/b^3 - (a^2*CoshIntegral(2*a + 2*b*x))/(2*b^3) + log(a + b*x)/b^3 + (a^2*log(a + b*x))/(2*b^3) + (a*cosh(a + b*x)*sinh(a + b*x))/(2*b^3) - (x*cosh(a + b*x)*sinh(a + b*x))/(2*b^2) + sinh(a + b*x)^2/(4*b^3) - (2*x*cosh(a + b*x)*SinhIntegral(a + b*x))/b^2 + (2*sinh(a + b*x)*SinhIntegral(a + b*x))/b^3 + (x^2*sinh(a + b*x)*SinhIntegral(a + b*x))/b - (a*SinhIntegral(2*a + 2*b*x))/b^3]
    @test_int [x^1*cosh(a + b*x)*SinhIntegral(a + b*x), x, 12, x/(2*b) + (a*CoshIntegral(2*a + 2*b*x))/(2*b^2) - (a*log(a + b*x))/(2*b^2) - (cosh(a + b*x)*sinh(a + b*x))/(2*b^2) - (cosh(a + b*x)*SinhIntegral(a + b*x))/b^2 + (x*sinh(a + b*x)*SinhIntegral(a + b*x))/b + SinhIntegral(2*a + 2*b*x)/(2*b^2)]
    @test_int [x^0*cosh(a + b*x)*SinhIntegral(a + b*x), x, 4, -(CoshIntegral(2*a + 2*b*x)/(2*b)) + log(a + b*x)/(2*b) + (sinh(a + b*x)*SinhIntegral(a + b*x))/b]
    @test_int [cosh(a + b*x)*SinhIntegral(a + b*x)/x^1, x, 0, CannotIntegrate((cosh(a + b*x)*SinhIntegral(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Hyper(a+b*x)*SinhIntegral(c+d*x)^n=#


    #= [x^2*sinh(a + b*x)*SinhIntegral(c + d*x), x, 46, -((c*cosh(a - c + (b - d)*x))/(2*b*(b - d)*d)) + (x*cosh(a - c + (b - d)*x))/(2*b*(b - d)) + (c*cosh(a + c + (b + d)*x))/(2*b*d*(b + d)) - (x*cosh(a + c + (b + d)*x))/(2*b*(b + d)) + (CoshIntegral(((b - d)*(c + d*x))/d)*(2*b*c*d*cosh(a - (b*c)/d) + (b^2*c^2 + 2*d^2)*sinh(a - (b*c)/d)))/(2*b^3*d^2) - (CoshIntegral(((b + d)*(c + d*x))/d)*(2*b*c*d*cosh(a - (b*c)/d) + (b^2*c^2 + 2*d^2)*sinh(a - (b*c)/d)))/(2*b^3*d^2) - sinh(a - c + (b - d)*x)/(2*b*(b - d)^2) - sinh(a - c + (b - d)*x)/(b^2*(b - d)) + sinh(a + c + (b + d)*x)/(2*b*(b + d)^2) + sinh(a + c + (b + d)*x)/(b^2*(b + d)) + (((2 + b^2*x^2)*cosh(a + b*x) - 2*b*x*sinh(a + b*x))*SinhIntegral(c + d*x))/b^3 + (((b^2*c^2 + 2*d^2)*cosh(a - (b*c)/d) + 2*b*c*d*sinh(a - (b*c)/d))*SinhIntegral(((b - d)*(c + d*x))/d))/(2*b^3*d^2) - (((b^2*c^2 + 2*d^2)*cosh(a - (b*c)/d) + 2*b*c*d*sinh(a - (b*c)/d))*SinhIntegral(((b + d)*(c + d*x))/d))/(2*b^3*d^2)] =#
    @test_int [x^1*sinh(a + b*x)*SinhIntegral(c + d*x), x, 24, cosh(a - c + (b - d)*x)/(2*b*(b - d)) - cosh(a + c + (b + d)*x)/(2*b*(b + d)) - (cosh(a - (b*c)/d)*CoshIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) + (cosh(a - (b*c)/d)*CoshIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2) - (c*CoshIntegral((c*(b - d))/d + (b - d)*x)*sinh(a - (b*c)/d))/(2*b*d) + (c*CoshIntegral((c*(b + d))/d + (b + d)*x)*sinh(a - (b*c)/d))/(2*b*d) - (c*cosh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) - (sinh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) + (x*cosh(a + b*x)*SinhIntegral(c + d*x))/b - (sinh(a + b*x)*SinhIntegral(c + d*x))/b^2 + (c*cosh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d) + (sinh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2)]
    @test_int [x^0*sinh(a + b*x)*SinhIntegral(c + d*x), x, 9, (CoshIntegral((c*(b - d))/d + (b - d)*x)*sinh(a - (b*c)/d))/(2*b) - (CoshIntegral((c*(b + d))/d + (b + d)*x)*sinh(a - (b*c)/d))/(2*b) + (cosh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b) + (cosh(a + b*x)*SinhIntegral(c + d*x))/b - (cosh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b)]
    @test_int [sinh(a + b*x)*SinhIntegral(c + d*x)/x^1, x, 0, CannotIntegrate((sinh(a + b*x)*SinhIntegral(c + d*x))/x, x)]


    #= [x^2*cosh(a + b*x)*SinhIntegral(c + d*x), x, 46, -(cosh(a - c + (b - d)*x)/(2*b*(b - d)^2)) - cosh(a - c + (b - d)*x)/(b^2*(b - d)) + cosh(a + c + (b + d)*x)/(2*b*(b + d)^2) + cosh(a + c + (b + d)*x)/(b^2*(b + d)) + (CoshIntegral(((b - d)*(c + d*x))/d)*((b^2*c^2 + 2*d^2)*cosh(a - (b*c)/d) + 2*b*c*d*sinh(a - (b*c)/d)))/(2*b^3*d^2) - (CoshIntegral(((b + d)*(c + d*x))/d)*((b^2*c^2 + 2*d^2)*cosh(a - (b*c)/d) + 2*b*c*d*sinh(a - (b*c)/d)))/(2*b^3*d^2) - (c*sinh(a - c + (b - d)*x))/(2*b*(b - d)*d) + (x*sinh(a - c + (b - d)*x))/(2*b*(b - d)) + (c*sinh(a + c + (b + d)*x))/(2*b*d*(b + d)) - (x*sinh(a + c + (b + d)*x))/(2*b*(b + d)) - ((2*b*x*cosh(a + b*x) - (2 + b^2*x^2)*sinh(a + b*x))*SinhIntegral(c + d*x))/b^3 + ((2*b*c*d*cosh(a - (b*c)/d) + (b^2*c^2 + 2*d^2)*sinh(a - (b*c)/d))*SinhIntegral(((b - d)*(c + d*x))/d))/(2*b^3*d^2) - ((2*b*c*d*cosh(a - (b*c)/d) + (b^2*c^2 + 2*d^2)*sinh(a - (b*c)/d))*SinhIntegral(((b + d)*(c + d*x))/d))/(2*b^3*d^2)] =#
    @test_int [x^1*cosh(a + b*x)*SinhIntegral(c + d*x), x, 24, -((c*cosh(a - (b*c)/d)*CoshIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d)) + (c*cosh(a - (b*c)/d)*CoshIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d) - (CoshIntegral((c*(b - d))/d + (b - d)*x)*sinh(a - (b*c)/d))/(2*b^2) + (CoshIntegral((c*(b + d))/d + (b + d)*x)*sinh(a - (b*c)/d))/(2*b^2) + sinh(a - c + (b - d)*x)/(2*b*(b - d)) - sinh(a + c + (b + d)*x)/(2*b*(b + d)) - (cosh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) - (c*sinh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) - (cosh(a + b*x)*SinhIntegral(c + d*x))/b^2 + (x*sinh(a + b*x)*SinhIntegral(c + d*x))/b + (cosh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2) + (c*sinh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d)]
    @test_int [x^0*cosh(a + b*x)*SinhIntegral(c + d*x), x, 9, (cosh(a - (b*c)/d)*CoshIntegral((c*(b - d))/d + (b - d)*x))/(2*b) - (cosh(a - (b*c)/d)*CoshIntegral((c*(b + d))/d + (b + d)*x))/(2*b) + (sinh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b) + (sinh(a + b*x)*SinhIntegral(c + d*x))/b - (sinh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b)]
    @test_int [cosh(a + b*x)*SinhIntegral(c + d*x)/x^1, x, 0, CannotIntegrate((cosh(a + b*x)*SinhIntegral(c + d*x))/x, x)]


    #= ::Section::Closed:: =#
    #=Hyperbolic*cosine*integral*function=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*CoshIntegral(b*x)^n=#


    @test_int [x^m*CoshIntegral(b*x), x, 5, (x^(1 + m)*CoshIntegral(b*x))/(1 + m) - (x^m*Gamma(1 + m, (-b)*x))/(((-b)*x)^m*(2*b*(1 + m))) + (x^m*Gamma(1 + m, b*x))/((b*x)^m*(2*b*(1 + m)))]

    @test_int [x^3*CoshIntegral(b*x), x, 6, (3*cosh(b*x))/(2*b^4) + (3*x^2*cosh(b*x))/(4*b^2) + (1/4)*x^4*CoshIntegral(b*x) - (3*x*sinh(b*x))/(2*b^3) - (x^3*sinh(b*x))/(4*b)]
    @test_int [x^2*CoshIntegral(b*x), x, 5, (2*x*cosh(b*x))/(3*b^2) + (1/3)*x^3*CoshIntegral(b*x) - (2*sinh(b*x))/(3*b^3) - (x^2*sinh(b*x))/(3*b)]
    @test_int [x^1*CoshIntegral(b*x), x, 4, cosh(b*x)/(2*b^2) + (1/2)*x^2*CoshIntegral(b*x) - (x*sinh(b*x))/(2*b)]
    @test_int [x^0*CoshIntegral(b*x), x, 1, x*CoshIntegral(b*x) - sinh(b*x)/b]
    @test_int [CoshIntegral(b*x)/x^1, x, 1, (-(1/2))*b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-b)*x) + (1/2)*b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], b*x) + EulerGamma*log(x) + (1/2)*log(b*x)^2]
    @test_int [CoshIntegral(b*x)/x^2, x, 4, -(cosh(b*x)/x) - CoshIntegral(b*x)/x + b*SinhIntegral(b*x)]
    @test_int [CoshIntegral(b*x)/x^3, x, 5, -(cosh(b*x)/(4*x^2)) + (1/4)*b^2*CoshIntegral(b*x) - CoshIntegral(b*x)/(2*x^2) - (b*sinh(b*x))/(4*x)]


    @test_int [x^m*CoshIntegral(b*x)^2, x, 0, CannotIntegrate(x^m*CoshIntegral(b*x)^2, x)]

    @test_int [x^3*CoshIntegral(b*x)^2, x, 19, -(x^2/(4*b^2)) + (3*cosh(b*x)^2)/(8*b^4) + (3*cosh(b*x)*CoshIntegral(b*x))/b^4 + (3*x^2*cosh(b*x)*CoshIntegral(b*x))/(2*b^2) + (1/4)*x^4*CoshIntegral(b*x)^2 - (3*CoshIntegral(2*b*x))/(2*b^4) - (3*log(x))/(2*b^4) - (x*cosh(b*x)*sinh(b*x))/b^3 - (3*x*CoshIntegral(b*x)*sinh(b*x))/b^3 - (x^3*CoshIntegral(b*x)*sinh(b*x))/(2*b) + (13*sinh(b*x)^2)/(8*b^4) + (x^2*sinh(b*x)^2)/(4*b^2)]
    @test_int [x^2*CoshIntegral(b*x)^2, x, 15, -(x/(2*b^2)) + (4*x*cosh(b*x)*CoshIntegral(b*x))/(3*b^2) + (1/3)*x^3*CoshIntegral(b*x)^2 - (5*cosh(b*x)*sinh(b*x))/(6*b^3) - (4*CoshIntegral(b*x)*sinh(b*x))/(3*b^3) - (2*x^2*CoshIntegral(b*x)*sinh(b*x))/(3*b) + (x*sinh(b*x)^2)/(3*b^2) + (2*SinhIntegral(2*b*x))/(3*b^3)]
    @test_int [x^1*CoshIntegral(b*x)^2, x, 10, (cosh(b*x)*CoshIntegral(b*x))/b^2 + (1/2)*x^2*CoshIntegral(b*x)^2 - CoshIntegral(2*b*x)/(2*b^2) - log(x)/(2*b^2) - (x*CoshIntegral(b*x)*sinh(b*x))/b + sinh(b*x)^2/(2*b^2)]
    @test_int [x^0*CoshIntegral(b*x)^2, x, 6, x*CoshIntegral(b*x)^2 - (2*CoshIntegral(b*x)*sinh(b*x))/b + SinhIntegral(2*b*x)/b]
    @test_int [CoshIntegral(b*x)^2/x^1, x, 0, CannotIntegrate(CoshIntegral(b*x)^2/x, x)]
    @test_int [CoshIntegral(b*x)^2/x^2, x, 0, CannotIntegrate(CoshIntegral(b*x)^2/x^2, x)]
    @test_int [CoshIntegral(b*x)^2/x^3, x, 0, CannotIntegrate(CoshIntegral(b*x)^2/x^3, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*CoshIntegral(a+b*x)^n=#


    @test_int [x^m*CoshIntegral(a + b*x), x, 1, (x^(1 + m)*CoshIntegral(a + b*x))/(1 + m) - (b*CannotIntegrate((x^(1 + m)*cosh(a + b*x))/(a + b*x), x))/(1 + m)]

    @test_int [x^3*CoshIntegral(a + b*x), x, 14, (3*cosh(a + b*x))/(2*b^4) + (a^2*cosh(a + b*x))/(4*b^4) - (a*x*cosh(a + b*x))/(2*b^3) + (3*x^2*cosh(a + b*x))/(4*b^2) - (a^4*CoshIntegral(a + b*x))/(4*b^4) + (1/4)*x^4*CoshIntegral(a + b*x) + (a*sinh(a + b*x))/(2*b^4) + (a^3*sinh(a + b*x))/(4*b^4) - (3*x*sinh(a + b*x))/(2*b^3) - (a^2*x*sinh(a + b*x))/(4*b^3) + (a*x^2*sinh(a + b*x))/(4*b^2) - (x^3*sinh(a + b*x))/(4*b)]
    @test_int [x^2*CoshIntegral(a + b*x), x, 10, -((a*cosh(a + b*x))/(3*b^3)) + (2*x*cosh(a + b*x))/(3*b^2) + (a^3*CoshIntegral(a + b*x))/(3*b^3) + (1/3)*x^3*CoshIntegral(a + b*x) - (2*sinh(a + b*x))/(3*b^3) - (a^2*sinh(a + b*x))/(3*b^3) + (a*x*sinh(a + b*x))/(3*b^2) - (x^2*sinh(a + b*x))/(3*b)]
    @test_int [x^1*CoshIntegral(a + b*x), x, 7, cosh(a + b*x)/(2*b^2) - (a^2*CoshIntegral(a + b*x))/(2*b^2) + (1/2)*x^2*CoshIntegral(a + b*x) + (a*sinh(a + b*x))/(2*b^2) - (x*sinh(a + b*x))/(2*b)]
    @test_int [x^0*CoshIntegral(a + b*x), x, 1, ((a + b*x)*CoshIntegral(a + b*x))/b - sinh(a + b*x)/b]
    @test_int [CoshIntegral(a + b*x)/x^1, x, 0, CannotIntegrate(CoshIntegral(a + b*x)/x, x)]
    @test_int [CoshIntegral(a + b*x)/x^2, x, 7, (b*cosh(a)*CoshIntegral(b*x))/a - (b*CoshIntegral(a + b*x))/a - CoshIntegral(a + b*x)/x + (b*sinh(a)*SinhIntegral(b*x))/a]
    @test_int [CoshIntegral(a + b*x)/x^3, x, 11, -((b*cosh(a + b*x))/(2*a*x)) - (b^2*cosh(a)*CoshIntegral(b*x))/(2*a^2) + (b^2*CoshIntegral(a + b*x))/(2*a^2) - CoshIntegral(a + b*x)/(2*x^2) + (b^2*CoshIntegral(b*x)*sinh(a))/(2*a) + (b^2*cosh(a)*SinhIntegral(b*x))/(2*a) - (b^2*sinh(a)*SinhIntegral(b*x))/(2*a^2)]


    @test_int [x^m*CoshIntegral(a + b*x)^2, x, 0, CannotIntegrate(x^m*CoshIntegral(a + b*x)^2, x)]

    @test_int [x^2*CoshIntegral(a + b*x)^2, x, 39, -((2*x)/(3*b^2)) - (a*cosh(2*a + 2*b*x))/(3*b^3) + (x*cosh(2*a + 2*b*x))/(6*b^2) - (2*a*cosh(a + b*x)*CoshIntegral(a + b*x))/(3*b^3) + (4*x*cosh(a + b*x)*CoshIntegral(a + b*x))/(3*b^2) + (a^2*(a + b*x)*CoshIntegral(a + b*x)^2)/(3*b^3) - (a*x*(a + b*x)*CoshIntegral(a + b*x)^2)/(3*b^2) + (x^2*(a + b*x)*CoshIntegral(a + b*x)^2)/(3*b) + (a*CoshIntegral(2*a + 2*b*x))/b^3 + (a*log(a + b*x))/b^3 - (2*cosh(a + b*x)*sinh(a + b*x))/(3*b^3) - (4*CoshIntegral(a + b*x)*sinh(a + b*x))/(3*b^3) - (2*a^2*CoshIntegral(a + b*x)*sinh(a + b*x))/(3*b^3) + (2*a*x*CoshIntegral(a + b*x)*sinh(a + b*x))/(3*b^2) - (2*x^2*CoshIntegral(a + b*x)*sinh(a + b*x))/(3*b) - sinh(2*a + 2*b*x)/(12*b^3) + (2*SinhIntegral(2*a + 2*b*x))/(3*b^3) + (a^2*SinhIntegral(2*a + 2*b*x))/b^3]
    @test_int [x^1*CoshIntegral(a + b*x)^2, x, 17, cosh(2*a + 2*b*x)/(4*b^2) + (cosh(a + b*x)*CoshIntegral(a + b*x))/b^2 - (a*(a + b*x)*CoshIntegral(a + b*x)^2)/(2*b^2) + (x*(a + b*x)*CoshIntegral(a + b*x)^2)/(2*b) - CoshIntegral(2*a + 2*b*x)/(2*b^2) - log(a + b*x)/(2*b^2) + (a*CoshIntegral(a + b*x)*sinh(a + b*x))/b^2 - (x*CoshIntegral(a + b*x)*sinh(a + b*x))/b - (a*SinhIntegral(2*a + 2*b*x))/b^2]
    @test_int [x^0*CoshIntegral(a + b*x)^2, x, 5, ((a + b*x)*CoshIntegral(a + b*x)^2)/b - (2*CoshIntegral(a + b*x)*sinh(a + b*x))/b + SinhIntegral(2*a + 2*b*x)/b]
    @test_int [CoshIntegral(a + b*x)^2/x^1, x, 0, CannotIntegrate(CoshIntegral(a + b*x)^2/x, x)]
    @test_int [CoshIntegral(a + b*x)^2/x^2, x, 0, CannotIntegrate(CoshIntegral(a + b*x)^2/x^2, x)]
    @test_int [CoshIntegral(a + b*x)^2/x^3, x, 0, CannotIntegrate(CoshIntegral(a + b*x)^2/x^3, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*CoshIntegral(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*CoshIntegral(d*(a + b*log(c*x^n))), x, 7, (x^3*CoshIntegral(d*(a + b*log(c*x^n))))/3 - (x^3*ExpIntegralEi(((3 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(6*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)) - (x^3*ExpIntegralEi(((3 + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(6*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n))]
    @test_int [x^1*CoshIntegral(d*(a + b*log(c*x^n))), x, 7, (x^2*CoshIntegral(d*(a + b*log(c*x^n))))/2 - (x^2*ExpIntegralEi(((2 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(4*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) - (x^2*ExpIntegralEi(((2 + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(4*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n))]
    @test_int [x^0*CoshIntegral(d*(a + b*log(c*x^n))), x, 7, x*CoshIntegral(d*(a + b*log(c*x^n))) - (x*ExpIntegralEi(((1 - b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^(a/(b*n))*(c*x^n)^n^(-1)) - (x*ExpIntegralEi(((1 + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^(a/(b*n))*(c*x^n)^n^(-1))]
    @test_int [CoshIntegral(d*(a + b*log(c*x^n)))/x^1, x, 3, (CoshIntegral(d*(a + b*log(c*x^n)))*(a + b*log(c*x^n)))/(b*n) - sinh(d*(a + b*log(c*x^n)))/(b*d*n)]
    @test_int [CoshIntegral(d*(a + b*log(c*x^n)))/x^2, x, 7, -(CoshIntegral(d*(a + b*log(c*x^n)))/x) + (ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-(((1 - b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(2*x) + (ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-(((1 + b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(2*x)]
    @test_int [CoshIntegral(d*(a + b*log(c*x^n)))/x^3, x, 7, -CoshIntegral(d*(a + b*log(c*x^n)))/(2*x^2) + (ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi(-(((2 - b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(4*x^2) + (ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi(-(((2 + b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(4*x^2)]


    @test_int [(e*x)^m*CoshIntegral(d*(a + b*log(c*x^n))), x, 7, ((e*x)^(1 + m)*CoshIntegral(d*(a + b*log(c*x^n))))/(e*(1 + m)) - (x*(e*x)^m*ExpIntegralEi(((1 + m - b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^((a*(1 + m))/(b*n))*(1 + m)*(c*x^n)^((1 + m)/n)) - (x*(e*x)^m*ExpIntegralEi(((1 + m + b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^((a*(1 + m))/(b*n))*(1 + m)*(c*x^n)^((1 + m)/n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Hyper(b*x)*CoshIntegral(b*x)^n=#


    @test_int [cosh(b*x)*CoshIntegral(b*x)/x^3, x, 14, -(cosh(b*x)^2/(4*x^2)) - (cosh(b*x)*CoshIntegral(b*x))/(2*x^2) + (1/4)*b^2*CoshIntegral(b*x)^2 + b^2*CoshIntegral(2*b*x) - (b*cosh(b*x)*sinh(b*x))/(2*x) - (b*CoshIntegral(b*x)*sinh(b*x))/(2*x) - (b*sinh(2*b*x))/(4*x)]
    @test_int [cosh(b*x)*CoshIntegral(b*x)/x^2, x, 5, -(cosh(b*x)^2/x) - (cosh(b*x)*CoshIntegral(b*x))/x + b*CannotIntegrate((CoshIntegral(b*x)*sinh(b*x))/x, x) + b*SinhIntegral(2*b*x)]
    @test_int [cosh(b*x)*CoshIntegral(b*x)/x, x, 1, (1/2)*CoshIntegral(b*x)^2]
    @test_int [cosh(b*x)*CoshIntegral(b*x), x, 5, (CoshIntegral(b*x)*sinh(b*x))/b - SinhIntegral(2*b*x)/(2*b)]
    @test_int [x*cosh(b*x)*CoshIntegral(b*x), x, 9, -((cosh(b*x)*CoshIntegral(b*x))/b^2) + CoshIntegral(2*b*x)/(2*b^2) + log(x)/(2*b^2) + (x*CoshIntegral(b*x)*sinh(b*x))/b - sinh(b*x)^2/(2*b^2)]
    @test_int [x^2*cosh(b*x)*CoshIntegral(b*x), x, 14, (3*x)/(4*b^2) - (2*x*cosh(b*x)*CoshIntegral(b*x))/b^2 + (5*cosh(b*x)*sinh(b*x))/(4*b^3) + (2*CoshIntegral(b*x)*sinh(b*x))/b^3 + (x^2*CoshIntegral(b*x)*sinh(b*x))/b - (x*sinh(b*x)^2)/(2*b^2) - SinhIntegral(2*b*x)/b^3]
    @test_int [x^3*cosh(b*x)*CoshIntegral(b*x), x, 18, x^2/(2*b^2) - (3*cosh(b*x)^2)/(4*b^4) - (6*cosh(b*x)*CoshIntegral(b*x))/b^4 - (3*x^2*cosh(b*x)*CoshIntegral(b*x))/b^2 + (3*CoshIntegral(2*b*x))/b^4 + (3*log(x))/b^4 + (2*x*cosh(b*x)*sinh(b*x))/b^3 + (6*x*CoshIntegral(b*x)*sinh(b*x))/b^3 + (x^3*CoshIntegral(b*x)*sinh(b*x))/b - (13*sinh(b*x)^2)/(4*b^4) - (x^2*sinh(b*x)^2)/(2*b^2)]


    @test_int [sinh(b*x)*CoshIntegral(b*x)/x^3, x, 12, -((b*cosh(b*x)^2)/(2*x)) - (b*cosh(2*b*x))/(4*x) - (b*cosh(b*x)*CoshIntegral(b*x))/(2*x) + (1/2)*b^2*CannotIntegrate((CoshIntegral(b*x)*sinh(b*x))/x, x) - (CoshIntegral(b*x)*sinh(b*x))/(2*x^2) - sinh(2*b*x)/(8*x^2) + b^2*SinhIntegral(2*b*x)]
    @test_int [sinh(b*x)*CoshIntegral(b*x)/x^2, x, 7, (1/2)*b*CoshIntegral(b*x)^2 + b*CoshIntegral(2*b*x) - (CoshIntegral(b*x)*sinh(b*x))/x - sinh(2*b*x)/(2*x)]
    @test_int [sinh(b*x)*CoshIntegral(b*x)/x, x, 0, CannotIntegrate((CoshIntegral(b*x)*sinh(b*x))/x, x)]
    @test_int [sinh(b*x)*CoshIntegral(b*x), x, 5, (cosh(b*x)*CoshIntegral(b*x))/b - CoshIntegral(2*b*x)/(2*b) - log(x)/(2*b)]
    @test_int [x*sinh(b*x)*CoshIntegral(b*x), x, 9, -(x/(2*b)) + (x*cosh(b*x)*CoshIntegral(b*x))/b - (cosh(b*x)*sinh(b*x))/(2*b^2) - (CoshIntegral(b*x)*sinh(b*x))/b^2 + SinhIntegral(2*b*x)/(2*b^2)]
    @test_int [x^2*sinh(b*x)*CoshIntegral(b*x), x, 13, -(x^2/(4*b)) + cosh(b*x)^2/(4*b^3) + (2*cosh(b*x)*CoshIntegral(b*x))/b^3 + (x^2*cosh(b*x)*CoshIntegral(b*x))/b - CoshIntegral(2*b*x)/b^3 - log(x)/b^3 - (x*cosh(b*x)*sinh(b*x))/(2*b^2) - (2*x*CoshIntegral(b*x)*sinh(b*x))/b^2 + sinh(b*x)^2/b^3]
    @test_int [x^3*sinh(b*x)*CoshIntegral(b*x), x, 20, -((5*x)/(2*b^3)) - x^3/(6*b) + (x*cosh(b*x)^2)/(2*b^3) + (6*x*cosh(b*x)*CoshIntegral(b*x))/b^3 + (x^3*cosh(b*x)*CoshIntegral(b*x))/b - (4*cosh(b*x)*sinh(b*x))/b^4 - (x^2*cosh(b*x)*sinh(b*x))/(2*b^2) - (6*CoshIntegral(b*x)*sinh(b*x))/b^4 - (3*x^2*CoshIntegral(b*x)*sinh(b*x))/b^2 + (3*x*sinh(b*x)^2)/(2*b^3) + (3*SinhIntegral(2*b*x))/b^4]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Hyper(b*x)*CoshIntegral(d*x)^n=#


    @test_int [sinh(5*x)*CoshIntegral(2*x), x, 6, (1/5)*cosh(5*x)*CoshIntegral(2*x) - (1/10)*CoshIntegral(3*x) - (1/10)*CoshIntegral(7*x)]


    @test_int [cosh(5*x)*CoshIntegral(2*x), x, 6, (1/5)*CoshIntegral(2*x)*sinh(5*x) - (1/10)*SinhIntegral(3*x) - (1/10)*SinhIntegral(7*x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Hyper(a+b*x)*CoshIntegral(a+b*x)^n=#


    #= [x^3*sinh(a + b*x)*CoshIntegral(a + b*x), x, 32, -((5*x)/(2*b^3)) - (a^2*x)/(2*b^3) + (a*x^2)/(4*b^2) - x^3/(6*b) - (7*a*cosh(a + b*x)^2)/(4*b^4) + (x*cosh(a + b*x)^2)/(2*b^3) + (6*x*cosh(a + b*x)*CoshIntegral(a + b*x))/b^3 + (x^3*cosh(a + b*x)*CoshIntegral(a + b*x))/b + (3*a*CoshIntegral(2*a + 2*b*x))/b^4 + (a^3*CoshIntegral(2*a + 2*b*x))/(2*b^4) + (3*a*log(a + b*x))/b^4 + (a^3*log(a + b*x))/(2*b^4) - (4*cosh(a + b*x)*sinh(a + b*x))/b^4 - (a^2*cosh(a + b*x)*sinh(a + b*x))/(2*b^4) + (a*x*cosh(a + b*x)*sinh(a + b*x))/(2*b^3) - (x^2*cosh(a + b*x)*sinh(a + b*x))/(2*b^2) - (6*CoshIntegral(a + b*x)*sinh(a + b*x))/b^4 - (3*x^2*CoshIntegral(a + b*x)*sinh(a + b*x))/b^2 + (3*x*sinh(a + b*x)^2)/(2*b^3) + (3*SinhIntegral(2*a + 2*b*x))/b^4 + (3*a^2*SinhIntegral(2*a + 2*b*x))/(2*b^4)] =#
    @test_int [x^2*sinh(a + b*x)*CoshIntegral(a + b*x), x, 21, (a*x)/(2*b^2) - x^2/(4*b) + cosh(a + b*x)^2/(4*b^3) + cosh(2*a + 2*b*x)/(2*b^3) + (2*cosh(a + b*x)*CoshIntegral(a + b*x))/b^3 + (x^2*cosh(a + b*x)*CoshIntegral(a + b*x))/b - CoshIntegral(2*a + 2*b*x)/b^3 - (a^2*CoshIntegral(2*a + 2*b*x))/(2*b^3) - log(a + b*x)/b^3 - (a^2*log(a + b*x))/(2*b^3) + (a*cosh(a + b*x)*sinh(a + b*x))/(2*b^3) - (x*cosh(a + b*x)*sinh(a + b*x))/(2*b^2) - (2*x*CoshIntegral(a + b*x)*sinh(a + b*x))/b^2 - (a*SinhIntegral(2*a + 2*b*x))/b^3]
    @test_int [x^1*sinh(a + b*x)*CoshIntegral(a + b*x), x, 12, -(x/(2*b)) + (x*cosh(a + b*x)*CoshIntegral(a + b*x))/b + (a*CoshIntegral(2*a + 2*b*x))/(2*b^2) + (a*log(a + b*x))/(2*b^2) - (cosh(a + b*x)*sinh(a + b*x))/(2*b^2) - (CoshIntegral(a + b*x)*sinh(a + b*x))/b^2 + SinhIntegral(2*a + 2*b*x)/(2*b^2)]
    @test_int [x^0*sinh(a + b*x)*CoshIntegral(a + b*x), x, 4, (cosh(a + b*x)*CoshIntegral(a + b*x))/b - CoshIntegral(2*a + 2*b*x)/(2*b) - log(a + b*x)/(2*b)]
    @test_int [sinh(a + b*x)*CoshIntegral(a + b*x)/x^1, x, 0, CannotIntegrate((sinh(a + b*x)*CoshIntegral(a + b*x))/x, x)]


    #= [x^3*cosh(a + b*x)*CoshIntegral(a + b*x), x, 32, -((5*a*x)/(4*b^3)) + x^2/(2*b^2) - (15*cosh(a + b*x)^2)/(4*b^4) - (a^2*cosh(a + b*x)^2)/(2*b^4) - (6*cosh(a + b*x)*CoshIntegral(a + b*x))/b^4 - (3*x^2*cosh(a + b*x)*CoshIntegral(a + b*x))/b^2 + (3*CoshIntegral(2*a + 2*b*x))/b^4 + (3*a^2*CoshIntegral(2*a + 2*b*x))/(2*b^4) + (3*log(a + b*x))/b^4 + (3*a^2*log(a + b*x))/(2*b^4) - (7*a*cosh(a + b*x)*sinh(a + b*x))/(4*b^4) + (2*x*cosh(a + b*x)*sinh(a + b*x))/b^3 + (6*x*CoshIntegral(a + b*x)*sinh(a + b*x))/b^3 + (x^3*CoshIntegral(a + b*x)*sinh(a + b*x))/b - sinh(a + b*x)^2/(4*b^4) + (a*x*sinh(a + b*x)^2)/(2*b^3) - (x^2*sinh(a + b*x)^2)/(2*b^2) + (3*a*SinhIntegral(2*a + 2*b*x))/b^4 + (a^3*SinhIntegral(2*a + 2*b*x))/(2*b^4)] =#
    @test_int [x^2*cosh(a + b*x)*CoshIntegral(a + b*x), x, 21, x/b^2 + (a*cosh(2*a + 2*b*x))/(4*b^3) - (x*cosh(2*a + 2*b*x))/(4*b^2) - (2*x*cosh(a + b*x)*CoshIntegral(a + b*x))/b^2 - (a*CoshIntegral(2*a + 2*b*x))/b^3 - (a*log(a + b*x))/b^3 + (cosh(a + b*x)*sinh(a + b*x))/b^3 + (2*CoshIntegral(a + b*x)*sinh(a + b*x))/b^3 + (x^2*CoshIntegral(a + b*x)*sinh(a + b*x))/b + sinh(2*a + 2*b*x)/(8*b^3) - SinhIntegral(2*a + 2*b*x)/b^3 - (a^2*SinhIntegral(2*a + 2*b*x))/(2*b^3)]
    @test_int [x^1*cosh(a + b*x)*CoshIntegral(a + b*x), x, 11, -(cosh(2*a + 2*b*x)/(4*b^2)) - (cosh(a + b*x)*CoshIntegral(a + b*x))/b^2 + CoshIntegral(2*a + 2*b*x)/(2*b^2) + log(a + b*x)/(2*b^2) + (x*CoshIntegral(a + b*x)*sinh(a + b*x))/b + (a*SinhIntegral(2*a + 2*b*x))/(2*b^2)]
    @test_int [x^0*cosh(a + b*x)*CoshIntegral(a + b*x), x, 4, (CoshIntegral(a + b*x)*sinh(a + b*x))/b - SinhIntegral(2*a + 2*b*x)/(2*b)]
    @test_int [cosh(a + b*x)*CoshIntegral(a + b*x)/x^1, x, 0, CannotIntegrate((cosh(a + b*x)*CoshIntegral(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Hyper(a+b*x)*CoshIntegral(c+d*x)^n=#


    #= [x^2*sinh(a + b*x)*CoshIntegral(c + d*x), x, 46, cosh(a - c + (b - d)*x)/(2*b*(b - d)^2) + cosh(a - c + (b - d)*x)/(b^2*(b - d)) + cosh(a + c + (b + d)*x)/(2*b*(b + d)^2) + cosh(a + c + (b + d)*x)/(b^2*(b + d)) - (CoshIntegral(((b - d)*(c + d*x))/d)*((b^2*c^2 + 2*d^2)*cosh(a - (b*c)/d) + 2*b*c*d*sinh(a - (b*c)/d)))/(2*b^3*d^2) - (CoshIntegral(((b + d)*(c + d*x))/d)*((b^2*c^2 + 2*d^2)*cosh(a - (b*c)/d) + 2*b*c*d*sinh(a - (b*c)/d)))/(2*b^3*d^2) + (CoshIntegral(c + d*x)*((2 + b^2*x^2)*cosh(a + b*x) - 2*b*x*sinh(a + b*x)))/b^3 + (c*sinh(a - c + (b - d)*x))/(2*b*(b - d)*d) - (x*sinh(a - c + (b - d)*x))/(2*b*(b - d)) + (c*sinh(a + c + (b + d)*x))/(2*b*d*(b + d)) - (x*sinh(a + c + (b + d)*x))/(2*b*(b + d)) - ((2*b*c*d*cosh(a - (b*c)/d) + (b^2*c^2 + 2*d^2)*sinh(a - (b*c)/d))*SinhIntegral(((b - d)*(c + d*x))/d))/(2*b^3*d^2) - ((2*b*c*d*cosh(a - (b*c)/d) + (b^2*c^2 + 2*d^2)*sinh(a - (b*c)/d))*SinhIntegral(((b + d)*(c + d*x))/d))/(2*b^3*d^2)] =#
    @test_int [x^1*sinh(a + b*x)*CoshIntegral(c + d*x), x, 24, (c*cosh(a - (b*c)/d)*CoshIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) + (x*cosh(a + b*x)*CoshIntegral(c + d*x))/b + (c*cosh(a - (b*c)/d)*CoshIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d) + (CoshIntegral((c*(b - d))/d + (b - d)*x)*sinh(a - (b*c)/d))/(2*b^2) + (CoshIntegral((c*(b + d))/d + (b + d)*x)*sinh(a - (b*c)/d))/(2*b^2) - (CoshIntegral(c + d*x)*sinh(a + b*x))/b^2 - sinh(a - c + (b - d)*x)/(2*b*(b - d)) - sinh(a + c + (b + d)*x)/(2*b*(b + d)) + (cosh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) + (c*sinh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) + (cosh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2) + (c*sinh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d)]
    @test_int [x^0*sinh(a + b*x)*CoshIntegral(c + d*x), x, 9, -((cosh(a - (b*c)/d)*CoshIntegral((c*(b - d))/d + (b - d)*x))/(2*b)) + (cosh(a + b*x)*CoshIntegral(c + d*x))/b - (cosh(a - (b*c)/d)*CoshIntegral((c*(b + d))/d + (b + d)*x))/(2*b) - (sinh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b) - (sinh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b)]
    @test_int [sinh(a + b*x)*CoshIntegral(c + d*x)/x^1, x, 0, CannotIntegrate((CoshIntegral(c + d*x)*sinh(a + b*x))/x, x)]


    #= [x^2*cosh(a + b*x)*CoshIntegral(c + d*x), x, 46, (c*cosh(a - c + (b - d)*x))/(2*b*(b - d)*d) - (x*cosh(a - c + (b - d)*x))/(2*b*(b - d)) + (c*cosh(a + c + (b + d)*x))/(2*b*d*(b + d)) - (x*cosh(a + c + (b + d)*x))/(2*b*(b + d)) - (CoshIntegral(((b - d)*(c + d*x))/d)*(2*b*c*d*cosh(a - (b*c)/d) + (b^2*c^2 + 2*d^2)*sinh(a - (b*c)/d)))/(2*b^3*d^2) - (CoshIntegral(((b + d)*(c + d*x))/d)*(2*b*c*d*cosh(a - (b*c)/d) + (b^2*c^2 + 2*d^2)*sinh(a - (b*c)/d)))/(2*b^3*d^2) - (CoshIntegral(c + d*x)*(2*b*x*cosh(a + b*x) - (2 + b^2*x^2)*sinh(a + b*x)))/b^3 + sinh(a - c + (b - d)*x)/(2*b*(b - d)^2) + sinh(a - c + (b - d)*x)/(b^2*(b - d)) + sinh(a + c + (b + d)*x)/(2*b*(b + d)^2) + sinh(a + c + (b + d)*x)/(b^2*(b + d)) - (((b^2*c^2 + 2*d^2)*cosh(a - (b*c)/d) + 2*b*c*d*sinh(a - (b*c)/d))*SinhIntegral(((b - d)*(c + d*x))/d))/(2*b^3*d^2) - (((b^2*c^2 + 2*d^2)*cosh(a - (b*c)/d) + 2*b*c*d*sinh(a - (b*c)/d))*SinhIntegral(((b + d)*(c + d*x))/d))/(2*b^3*d^2)] =#
    @test_int [x^1*cosh(a + b*x)*CoshIntegral(c + d*x), x, 24, -(cosh(a - c + (b - d)*x)/(2*b*(b - d))) - cosh(a + c + (b + d)*x)/(2*b*(b + d)) + (cosh(a - (b*c)/d)*CoshIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) - (cosh(a + b*x)*CoshIntegral(c + d*x))/b^2 + (cosh(a - (b*c)/d)*CoshIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2) + (c*CoshIntegral((c*(b - d))/d + (b - d)*x)*sinh(a - (b*c)/d))/(2*b*d) + (c*CoshIntegral((c*(b + d))/d + (b + d)*x)*sinh(a - (b*c)/d))/(2*b*d) + (x*CoshIntegral(c + d*x)*sinh(a + b*x))/b + (c*cosh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) + (sinh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) + (c*cosh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d) + (sinh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2)]
    @test_int [x^0*cosh(a + b*x)*CoshIntegral(c + d*x), x, 9, -((CoshIntegral((c*(b - d))/d + (b - d)*x)*sinh(a - (b*c)/d))/(2*b)) - (CoshIntegral((c*(b + d))/d + (b + d)*x)*sinh(a - (b*c)/d))/(2*b) + (CoshIntegral(c + d*x)*sinh(a + b*x))/b - (cosh(a - (b*c)/d)*SinhIntegral((c*(b - d))/d + (b - d)*x))/(2*b) - (cosh(a - (b*c)/d)*SinhIntegral((c*(b + d))/d + (b + d)*x))/(2*b)]
    @test_int [cosh(a + b*x)*CoshIntegral(c + d*x)/x^1, x, 0, CannotIntegrate((cosh(a + b*x)*CoshIntegral(c + d*x))/x, x)]
    end
