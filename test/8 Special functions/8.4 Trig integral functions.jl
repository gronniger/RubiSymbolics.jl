@testset "8.4 Trig integral functions" begin
    @variables a, b, c, d, e, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Trig*Integral*Functions=#


    #= ::Section::Closed:: =#
    #=Sine*integral*function=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*SinIntegral(b*x)^n=#


    @test_int [x^m*SinIntegral(b*x), x, 5, (x^m*Gamma(1 + m, (-im)*b*x))/(((-im)*b*x)^m*(2*b*(1 + m))) + (x^m*Gamma(1 + m, im*b*x))/((im*b*x)^m*(2*b*(1 + m))) + (x^(1 + m)*SinIntegral(b*x))/(1 + m)]

    @test_int [x^3*SinIntegral(b*x), x, 6, -((3*x*cos(b*x))/(2*b^3)) + (x^3*cos(b*x))/(4*b) + (3*sin(b*x))/(2*b^4) - (3*x^2*sin(b*x))/(4*b^2) + (1/4)*x^4*SinIntegral(b*x)]
    @test_int [x^2*SinIntegral(b*x), x, 5, -((2*cos(b*x))/(3*b^3)) + (x^2*cos(b*x))/(3*b) - (2*x*sin(b*x))/(3*b^2) + (1/3)*x^3*SinIntegral(b*x)]
    @test_int [x^1*SinIntegral(b*x), x, 4, (x*cos(b*x))/(2*b) - sin(b*x)/(2*b^2) + (1/2)*x^2*SinIntegral(b*x)]
    @test_int [x^0*SinIntegral(b*x), x, 1, cos(b*x)/b + x*SinIntegral(b*x)]
    @test_int [SinIntegral(b*x)/x^1, x, 1, (1/2)*b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-im)*b*x) + (1/2)*b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], im*b*x)]
    @test_int [SinIntegral(b*x)/x^2, x, 4, b*CosIntegral(b*x) - sin(b*x)/x - SinIntegral(b*x)/x]
    @test_int [SinIntegral(b*x)/x^3, x, 5, -((b*cos(b*x))/(4*x)) - sin(b*x)/(4*x^2) - (1/4)*b^2*SinIntegral(b*x) - SinIntegral(b*x)/(2*x^2)]


    @test_int [x^m*SinIntegral(b*x)^2, x, 0, CannotIntegrate(x^m*SinIntegral(b*x)^2, x)]

    @test_int [x^3*SinIntegral(b*x)^2, x, 19, x^2/(2*b^2) + (3*CosIntegral(2*b*x))/(2*b^4) - (3*log(x))/(2*b^4) - (x*cos(b*x)*sin(b*x))/b^3 + (2*sin(b*x)^2)/b^4 - (x^2*sin(b*x)^2)/(4*b^2) - (3*x*cos(b*x)*SinIntegral(b*x))/b^3 + (x^3*cos(b*x)*SinIntegral(b*x))/(2*b) + (3*sin(b*x)*SinIntegral(b*x))/b^4 - (3*x^2*sin(b*x)*SinIntegral(b*x))/(2*b^2) + (1/4)*x^4*SinIntegral(b*x)^2]
    @test_int [x^2*SinIntegral(b*x)^2, x, 15, (5*x)/(6*b^2) - (5*cos(b*x)*sin(b*x))/(6*b^3) - (x*sin(b*x)^2)/(3*b^2) - (4*cos(b*x)*SinIntegral(b*x))/(3*b^3) + (2*x^2*cos(b*x)*SinIntegral(b*x))/(3*b) - (4*x*sin(b*x)*SinIntegral(b*x))/(3*b^2) + (1/3)*x^3*SinIntegral(b*x)^2 + (2*SinIntegral(2*b*x))/(3*b^3)]
    @test_int [x^1*SinIntegral(b*x)^2, x, 10, -(CosIntegral(2*b*x)/(2*b^2)) + log(x)/(2*b^2) - sin(b*x)^2/(2*b^2) + (x*cos(b*x)*SinIntegral(b*x))/b - (sin(b*x)*SinIntegral(b*x))/b^2 + (1/2)*x^2*SinIntegral(b*x)^2]
    @test_int [x^0*SinIntegral(b*x)^2, x, 6, (2*cos(b*x)*SinIntegral(b*x))/b + x*SinIntegral(b*x)^2 - SinIntegral(2*b*x)/b]
    @test_int [SinIntegral(b*x)^2/x^1, x, 0, CannotIntegrate(SinIntegral(b*x)^2/x, x)]
    @test_int [SinIntegral(b*x)^2/x^2, x, 0, CannotIntegrate(SinIntegral(b*x)^2/x^2, x)]
    @test_int [SinIntegral(b*x)^2/x^3, x, 0, CannotIntegrate(SinIntegral(b*x)^2/x^3, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*SinIntegral(a+b*x)^n=#


    @test_int [x^m*SinIntegral(a + b*x), x, 1, -((b*CannotIntegrate((x^(1 + m)*sin(a + b*x))/(a + b*x), x))/(1 + m)) + (x^(1 + m)*SinIntegral(a + b*x))/(1 + m)]

    @test_int [x^3*SinIntegral(a + b*x), x, 14, (a*cos(a + b*x))/(2*b^4) - (a^3*cos(a + b*x))/(4*b^4) - (3*x*cos(a + b*x))/(2*b^3) + (a^2*x*cos(a + b*x))/(4*b^3) - (a*x^2*cos(a + b*x))/(4*b^2) + (x^3*cos(a + b*x))/(4*b) + (3*sin(a + b*x))/(2*b^4) - (a^2*sin(a + b*x))/(4*b^4) + (a*x*sin(a + b*x))/(2*b^3) - (3*x^2*sin(a + b*x))/(4*b^2) - (a^4*SinIntegral(a + b*x))/(4*b^4) + (1/4)*x^4*SinIntegral(a + b*x)]
    @test_int [x^2*SinIntegral(a + b*x), x, 10, -((2*cos(a + b*x))/(3*b^3)) + (a^2*cos(a + b*x))/(3*b^3) - (a*x*cos(a + b*x))/(3*b^2) + (x^2*cos(a + b*x))/(3*b) + (a*sin(a + b*x))/(3*b^3) - (2*x*sin(a + b*x))/(3*b^2) + (a^3*SinIntegral(a + b*x))/(3*b^3) + (1/3)*x^3*SinIntegral(a + b*x)]
    @test_int [x^1*SinIntegral(a + b*x), x, 7, -((a*cos(a + b*x))/(2*b^2)) + (x*cos(a + b*x))/(2*b) - sin(a + b*x)/(2*b^2) - (a^2*SinIntegral(a + b*x))/(2*b^2) + (1/2)*x^2*SinIntegral(a + b*x)]
    @test_int [x^0*SinIntegral(a + b*x), x, 1, cos(a + b*x)/b + ((a + b*x)*SinIntegral(a + b*x))/b]
    @test_int [SinIntegral(a + b*x)/x^1, x, 0, CannotIntegrate(SinIntegral(a + b*x)/x, x)]
    @test_int [SinIntegral(a + b*x)/x^2, x, 7, (b*CosIntegral(b*x)*sin(a))/a + (b*cos(a)*SinIntegral(b*x))/a - (b*SinIntegral(a + b*x))/a - SinIntegral(a + b*x)/x]
    @test_int [SinIntegral(a + b*x)/x^3, x, 11, (b^2*cos(a)*CosIntegral(b*x))/(2*a) - (b^2*CosIntegral(b*x)*sin(a))/(2*a^2) - (b*sin(a + b*x))/(2*a*x) - (b^2*cos(a)*SinIntegral(b*x))/(2*a^2) - (b^2*sin(a)*SinIntegral(b*x))/(2*a) + (b^2*SinIntegral(a + b*x))/(2*a^2) - SinIntegral(a + b*x)/(2*x^2)]


    @test_int [x^m*SinIntegral(a + b*x)^2, x, 0, CannotIntegrate(x^m*SinIntegral(a + b*x)^2, x)]

    @test_int [x^2*SinIntegral(a + b*x)^2, x, 39, (2*x)/(3*b^2) - (a*cos(2*a + 2*b*x))/(3*b^3) + (x*cos(2*a + 2*b*x))/(6*b^2) + (a*CosIntegral(2*a + 2*b*x))/b^3 - (a*log(a + b*x))/b^3 - (2*cos(a + b*x)*sin(a + b*x))/(3*b^3) - sin(2*a + 2*b*x)/(12*b^3) - (4*cos(a + b*x)*SinIntegral(a + b*x))/(3*b^3) + (2*a^2*cos(a + b*x)*SinIntegral(a + b*x))/(3*b^3) - (2*a*x*cos(a + b*x)*SinIntegral(a + b*x))/(3*b^2) + (2*x^2*cos(a + b*x)*SinIntegral(a + b*x))/(3*b) + (2*a*sin(a + b*x)*SinIntegral(a + b*x))/(3*b^3) - (4*x*sin(a + b*x)*SinIntegral(a + b*x))/(3*b^2) + (a^2*(a + b*x)*SinIntegral(a + b*x)^2)/(3*b^3) - (a*x*(a + b*x)*SinIntegral(a + b*x)^2)/(3*b^2) + (x^2*(a + b*x)*SinIntegral(a + b*x)^2)/(3*b) + (2*SinIntegral(2*a + 2*b*x))/(3*b^3) - (a^2*SinIntegral(2*a + 2*b*x))/b^3]
    @test_int [x^1*SinIntegral(a + b*x)^2, x, 17, cos(2*a + 2*b*x)/(4*b^2) - CosIntegral(2*a + 2*b*x)/(2*b^2) + log(a + b*x)/(2*b^2) - (a*cos(a + b*x)*SinIntegral(a + b*x))/b^2 + (x*cos(a + b*x)*SinIntegral(a + b*x))/b - (sin(a + b*x)*SinIntegral(a + b*x))/b^2 - (a*(a + b*x)*SinIntegral(a + b*x)^2)/(2*b^2) + (x*(a + b*x)*SinIntegral(a + b*x)^2)/(2*b) + (a*SinIntegral(2*a + 2*b*x))/b^2]
    @test_int [x^0*SinIntegral(a + b*x)^2, x, 5, (2*cos(a + b*x)*SinIntegral(a + b*x))/b + ((a + b*x)*SinIntegral(a + b*x)^2)/b - SinIntegral(2*a + 2*b*x)/b]
    @test_int [SinIntegral(a + b*x)^2/x^1, x, 0, CannotIntegrate(SinIntegral(a + b*x)^2/x, x)]
    @test_int [SinIntegral(a + b*x)^2/x^2, x, 0, CannotIntegrate(SinIntegral(a + b*x)^2/x^2, x)]
    @test_int [SinIntegral(a + b*x)^2/x^3, x, 0, CannotIntegrate(SinIntegral(a + b*x)^2/x^3, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*SinIntegral(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*SinIntegral(d*(a + b*log(c*x^n))), x, 7, ((-(1/6))*im*x^3*ExpIntegralEi(((3 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)) + ((1/6)*im*x^3*ExpIntegralEi(((3 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)) + (1/3)*x^3*SinIntegral(d*(a + b*log(c*x^n)))]
    @test_int [x^1*SinIntegral(d*(a + b*log(c*x^n))), x, 7, ((-(1/4))*im*x^2*ExpIntegralEi(((2 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) + ((1/4)*im*x^2*ExpIntegralEi(((2 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) + (1/2)*x^2*SinIntegral(d*(a + b*log(c*x^n)))]
    @test_int [x^0*SinIntegral(d*(a + b*log(c*x^n))), x, 7, ((-(1/2))*im*x*ExpIntegralEi(((1 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^(a/(b*n))*(c*x^n)^n^(-1)) + ((1/2)*im*x*ExpIntegralEi(((1 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^(a/(b*n))*(c*x^n)^n^(-1)) + x*SinIntegral(d*(a + b*log(c*x^n)))]
    @test_int [SinIntegral(d*(a + b*log(c*x^n)))/x^1, x, 3, cos(d*(a + b*log(c*x^n)))/(b*d*n) + ((a + b*log(c*x^n))*SinIntegral(d*(a + b*log(c*x^n))))/(b*n)]
    @test_int [SinIntegral(d*(a + b*log(c*x^n)))/x^2, x, 7, -((im*ℯ^(a/(b*n))*(c*x^n)^(1/n)*ExpIntegralEi(-(((1 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(2*x)) + (im*ℯ^(a/(b*n))*(c*x^n)^(1/n)*ExpIntegralEi(-(((1 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(2*x) - SinIntegral(d*(a + b*log(c*x^n)))/x]
    @test_int [SinIntegral(d*(a + b*log(c*x^n)))/x^3, x, 7, -((im*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi(-(((2 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(4*x^2)) + (im*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi(-(((2 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(4*x^2) - SinIntegral(d*(a + b*log(c*x^n)))/(2*x^2)]


    @test_int [(e*x)^m*SinIntegral(d*(a + b*log(c*x^n))), x, 7, -((im*x*(e*x)^m*ExpIntegralEi(((1 + m - im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(2*(1 + m)))) + (im*x*(e*x)^m*ExpIntegralEi(((1 + m + im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(2*(1 + m))) + ((e*x)^(1 + m)*SinIntegral(d*(a + b*log(c*x^n))))/(e*(1 + m))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Trig(b*x)*SinIntegral(b*x)^n=#


    @test_int [sin(b*x)*SinIntegral(b*x)/x^3, x, 14, b^2*CosIntegral(2*b*x) - (b*cos(b*x)*sin(b*x))/(2*x) - sin(b*x)^2/(4*x^2) - (b*sin(2*b*x))/(4*x) - (b*cos(b*x)*SinIntegral(b*x))/(2*x) - (sin(b*x)*SinIntegral(b*x))/(2*x^2) - (1/4)*b^2*SinIntegral(b*x)^2]
    @test_int [sin(b*x)*SinIntegral(b*x)/x^2, x, 5, b*CannotIntegrate((cos(b*x)*SinIntegral(b*x))/x, x) - sin(b*x)^2/x - (sin(b*x)*SinIntegral(b*x))/x + b*SinIntegral(2*b*x)]
    @test_int [sin(b*x)*SinIntegral(b*x)/x, x, 1, (1/2)*SinIntegral(b*x)^2]
    @test_int [sin(b*x)*SinIntegral(b*x), x, 5, -((cos(b*x)*SinIntegral(b*x))/b) + SinIntegral(2*b*x)/(2*b)]
    @test_int [x*sin(b*x)*SinIntegral(b*x), x, 9, CosIntegral(2*b*x)/(2*b^2) - log(x)/(2*b^2) + sin(b*x)^2/(2*b^2) - (x*cos(b*x)*SinIntegral(b*x))/b + (sin(b*x)*SinIntegral(b*x))/b^2]
    @test_int [x^2*sin(b*x)*SinIntegral(b*x), x, 14, -((5*x)/(4*b^2)) + (5*cos(b*x)*sin(b*x))/(4*b^3) + (x*sin(b*x)^2)/(2*b^2) + (2*cos(b*x)*SinIntegral(b*x))/b^3 - (x^2*cos(b*x)*SinIntegral(b*x))/b + (2*x*sin(b*x)*SinIntegral(b*x))/b^2 - SinIntegral(2*b*x)/b^3]
    @test_int [x^3*sin(b*x)*SinIntegral(b*x), x, 18, -(x^2/b^2) - (3*CosIntegral(2*b*x))/b^4 + (3*log(x))/b^4 + (2*x*cos(b*x)*sin(b*x))/b^3 - (4*sin(b*x)^2)/b^4 + (x^2*sin(b*x)^2)/(2*b^2) + (6*x*cos(b*x)*SinIntegral(b*x))/b^3 - (x^3*cos(b*x)*SinIntegral(b*x))/b - (6*sin(b*x)*SinIntegral(b*x))/b^4 + (3*x^2*sin(b*x)*SinIntegral(b*x))/b^2]


    @test_int [cos(b*x)*SinIntegral(b*x)/x^3, x, 12, -((b*cos(2*b*x))/(4*x)) - (1/2)*b^2*CannotIntegrate((cos(b*x)*SinIntegral(b*x))/x, x) + (b*sin(b*x)^2)/(2*x) - sin(2*b*x)/(8*x^2) - (cos(b*x)*SinIntegral(b*x))/(2*x^2) + (b*sin(b*x)*SinIntegral(b*x))/(2*x) - b^2*SinIntegral(2*b*x)]
    @test_int [cos(b*x)*SinIntegral(b*x)/x^2, x, 7, b*CosIntegral(2*b*x) - sin(2*b*x)/(2*x) - (cos(b*x)*SinIntegral(b*x))/x - (1/2)*b*SinIntegral(b*x)^2]
    @test_int [cos(b*x)*SinIntegral(b*x)/x, x, 0, CannotIntegrate((cos(b*x)*SinIntegral(b*x))/x, x)]
    @test_int [cos(b*x)*SinIntegral(b*x), x, 5, CosIntegral(2*b*x)/(2*b) - log(x)/(2*b) + (sin(b*x)*SinIntegral(b*x))/b]
    @test_int [x*cos(b*x)*SinIntegral(b*x), x, 9, -(x/(2*b)) + (cos(b*x)*sin(b*x))/(2*b^2) + (cos(b*x)*SinIntegral(b*x))/b^2 + (x*sin(b*x)*SinIntegral(b*x))/b - SinIntegral(2*b*x)/(2*b^2)]
    @test_int [x^2*cos(b*x)*SinIntegral(b*x), x, 13, -(x^2/(4*b)) - CosIntegral(2*b*x)/b^3 + log(x)/b^3 + (x*cos(b*x)*sin(b*x))/(2*b^2) - (5*sin(b*x)^2)/(4*b^3) + (2*x*cos(b*x)*SinIntegral(b*x))/b^2 - (2*sin(b*x)*SinIntegral(b*x))/b^3 + (x^2*sin(b*x)*SinIntegral(b*x))/b]
    @test_int [x^3*cos(b*x)*SinIntegral(b*x), x, 20, (4*x)/b^3 - x^3/(6*b) - (4*cos(b*x)*sin(b*x))/b^4 + (x^2*cos(b*x)*sin(b*x))/(2*b^2) - (2*x*sin(b*x)^2)/b^3 - (6*cos(b*x)*SinIntegral(b*x))/b^4 + (3*x^2*cos(b*x)*SinIntegral(b*x))/b^2 - (6*x*sin(b*x)*SinIntegral(b*x))/b^3 + (x^3*sin(b*x)*SinIntegral(b*x))/b + (3*SinIntegral(2*b*x))/b^4]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Trig(b*x)*SinIntegral(d*x)^n=#


    @test_int [sin(5*x)*SinIntegral(2*x), x, 6, (-(1/5))*cos(5*x)*SinIntegral(2*x) - (1/10)*SinIntegral(3*x) + (1/10)*SinIntegral(7*x)]


    @test_int [cos(5*x)*SinIntegral(2*x), x, 6, (-(1/10))*CosIntegral(3*x) + (1/10)*CosIntegral(7*x) + (1/5)*sin(5*x)*SinIntegral(2*x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Trig(a+b*x)*SinIntegral(a+b*x)^n=#


    #= [x^3*sin(a + b*x)*SinIntegral(a + b*x), x, 32, (7*a*x)/(4*b^3) - x^2/b^2 + (3*cos(a + b*x)^2)/b^4 - (a^2*cos(a + b*x)^2)/(2*b^4) - (3*CosIntegral(2*a + 2*b*x))/b^4 + (3*a^2*CosIntegral(2*a + 2*b*x))/(2*b^4) + (3*log(a + b*x))/b^4 - (3*a^2*log(a + b*x))/(2*b^4) - (7*a*cos(a + b*x)*sin(a + b*x))/(4*b^4) + (2*x*cos(a + b*x)*sin(a + b*x))/b^3 - sin(a + b*x)^2/b^4 - (a*x*sin(a + b*x)^2)/(2*b^3) + (x^2*sin(a + b*x)^2)/(2*b^2) + (6*x*cos(a + b*x)*SinIntegral(a + b*x))/b^3 - (x^3*cos(a + b*x)*SinIntegral(a + b*x))/b - (6*sin(a + b*x)*SinIntegral(a + b*x))/b^4 + (3*x^2*sin(a + b*x)*SinIntegral(a + b*x))/b^2 + (3*a*SinIntegral(2*a + 2*b*x))/b^4 - (a^3*SinIntegral(2*a + 2*b*x))/(2*b^4)] =#
    @test_int [x^2*sin(a + b*x)*SinIntegral(a + b*x), x, 21, -(x/b^2) + (a*cos(2*a + 2*b*x))/(4*b^3) - (x*cos(2*a + 2*b*x))/(4*b^2) - (a*CosIntegral(2*a + 2*b*x))/b^3 + (a*log(a + b*x))/b^3 + (cos(a + b*x)*sin(a + b*x))/b^3 + sin(2*a + 2*b*x)/(8*b^3) + (2*cos(a + b*x)*SinIntegral(a + b*x))/b^3 - (x^2*cos(a + b*x)*SinIntegral(a + b*x))/b + (2*x*sin(a + b*x)*SinIntegral(a + b*x))/b^2 - SinIntegral(2*a + 2*b*x)/b^3 + (a^2*SinIntegral(2*a + 2*b*x))/(2*b^3)]
    @test_int [x^1*sin(a + b*x)*SinIntegral(a + b*x), x, 11, -(cos(2*a + 2*b*x)/(4*b^2)) + CosIntegral(2*a + 2*b*x)/(2*b^2) - log(a + b*x)/(2*b^2) - (x*cos(a + b*x)*SinIntegral(a + b*x))/b + (sin(a + b*x)*SinIntegral(a + b*x))/b^2 - (a*SinIntegral(2*a + 2*b*x))/(2*b^2)]
    @test_int [x^0*sin(a + b*x)*SinIntegral(a + b*x), x, 4, -((cos(a + b*x)*SinIntegral(a + b*x))/b) + SinIntegral(2*a + 2*b*x)/(2*b)]
    @test_int [sin(a + b*x)*SinIntegral(a + b*x)/x^1, x, 0, CannotIntegrate((sin(a + b*x)*SinIntegral(a + b*x))/x, x)]


    #= [x^3*cos(a + b*x)*SinIntegral(a + b*x), x, 32, (4*x)/b^3 - (a^2*x)/(2*b^3) + (a*x^2)/(4*b^2) - x^3/(6*b) - (3*a*cos(a + b*x)^2)/(2*b^4) + (3*a*CosIntegral(2*a + 2*b*x))/b^4 - (a^3*CosIntegral(2*a + 2*b*x))/(2*b^4) - (3*a*log(a + b*x))/b^4 + (a^3*log(a + b*x))/(2*b^4) - (4*cos(a + b*x)*sin(a + b*x))/b^4 + (a^2*cos(a + b*x)*sin(a + b*x))/(2*b^4) - (a*x*cos(a + b*x)*sin(a + b*x))/(2*b^3) + (x^2*cos(a + b*x)*sin(a + b*x))/(2*b^2) + (a*sin(a + b*x)^2)/(4*b^4) - (2*x*sin(a + b*x)^2)/b^3 - (6*cos(a + b*x)*SinIntegral(a + b*x))/b^4 + (3*x^2*cos(a + b*x)*SinIntegral(a + b*x))/b^2 - (6*x*sin(a + b*x)*SinIntegral(a + b*x))/b^3 + (x^3*sin(a + b*x)*SinIntegral(a + b*x))/b + (3*SinIntegral(2*a + 2*b*x))/b^4 - (3*a^2*SinIntegral(2*a + 2*b*x))/(2*b^4)] =#
    @test_int [x^2*cos(a + b*x)*SinIntegral(a + b*x), x, 21, (a*x)/(2*b^2) - x^2/(4*b) + cos(2*a + 2*b*x)/(2*b^3) - CosIntegral(2*a + 2*b*x)/b^3 + (a^2*CosIntegral(2*a + 2*b*x))/(2*b^3) + log(a + b*x)/b^3 - (a^2*log(a + b*x))/(2*b^3) - (a*cos(a + b*x)*sin(a + b*x))/(2*b^3) + (x*cos(a + b*x)*sin(a + b*x))/(2*b^2) - sin(a + b*x)^2/(4*b^3) + (2*x*cos(a + b*x)*SinIntegral(a + b*x))/b^2 - (2*sin(a + b*x)*SinIntegral(a + b*x))/b^3 + (x^2*sin(a + b*x)*SinIntegral(a + b*x))/b + (a*SinIntegral(2*a + 2*b*x))/b^3]
    @test_int [x^1*cos(a + b*x)*SinIntegral(a + b*x), x, 12, -(x/(2*b)) - (a*CosIntegral(2*a + 2*b*x))/(2*b^2) + (a*log(a + b*x))/(2*b^2) + (cos(a + b*x)*sin(a + b*x))/(2*b^2) + (cos(a + b*x)*SinIntegral(a + b*x))/b^2 + (x*sin(a + b*x)*SinIntegral(a + b*x))/b - SinIntegral(2*a + 2*b*x)/(2*b^2)]
    @test_int [x^0*cos(a + b*x)*SinIntegral(a + b*x), x, 4, CosIntegral(2*a + 2*b*x)/(2*b) - log(a + b*x)/(2*b) + (sin(a + b*x)*SinIntegral(a + b*x))/b]
    @test_int [cos(a + b*x)*SinIntegral(a + b*x)/x^1, x, 0, CannotIntegrate((cos(a + b*x)*SinIntegral(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Trig(a+b*x)*SinIntegral(c+d*x)^n=#


    #= [x^2*sin(a + b*x)*SinIntegral(c + d*x), x, 46, -((c*cos(a - c + (b - d)*x))/(2*b*(b - d)*d)) + (x*cos(a - c + (b - d)*x))/(2*b*(b - d)) + (c*cos(a + c + (b + d)*x))/(2*b*d*(b + d)) - (x*cos(a + c + (b + d)*x))/(2*b*(b + d)) + (CosIntegral(((b - d)*(c + d*x))/d)*(2*b*c*d*cos(a - (b*c)/d) - (b^2*c^2 - 2*d^2)*sin(a - (b*c)/d)))/(2*b^3*d^2) - (CosIntegral(((b + d)*(c + d*x))/d)*(2*b*c*d*cos(a - (b*c)/d) - (b^2*c^2 - 2*d^2)*sin(a - (b*c)/d)))/(2*b^3*d^2) - sin(a - c + (b - d)*x)/(2*b*(b - d)^2) - sin(a - c + (b - d)*x)/(b^2*(b - d)) + sin(a + c + (b + d)*x)/(2*b*(b + d)^2) + sin(a + c + (b + d)*x)/(b^2*(b + d)) + (((2 - b^2*x^2)*cos(a + b*x) + 2*b*x*sin(a + b*x))*SinIntegral(c + d*x))/b^3 - (((b^2*c^2 - 2*d^2)*cos(a - (b*c)/d) + 2*b*c*d*sin(a - (b*c)/d))*SinIntegral(((b - d)*(c + d*x))/d))/(2*b^3*d^2) + (((b^2*c^2 - 2*d^2)*cos(a - (b*c)/d) + 2*b*c*d*sin(a - (b*c)/d))*SinIntegral(((b + d)*(c + d*x))/d))/(2*b^3*d^2)] =#
    @test_int [x^1*sin(a + b*x)*SinIntegral(c + d*x), x, 24, cos(a - c + (b - d)*x)/(2*b*(b - d)) - cos(a + c + (b + d)*x)/(2*b*(b + d)) - (cos(a - (b*c)/d)*CosIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) + (cos(a - (b*c)/d)*CosIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2) + (c*CosIntegral((c*(b - d))/d + (b - d)*x)*sin(a - (b*c)/d))/(2*b*d) - (c*CosIntegral((c*(b + d))/d + (b + d)*x)*sin(a - (b*c)/d))/(2*b*d) + (c*cos(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) + (sin(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) - (x*cos(a + b*x)*SinIntegral(c + d*x))/b + (sin(a + b*x)*SinIntegral(c + d*x))/b^2 - (c*cos(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d) - (sin(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2)]
    @test_int [x^0*sin(a + b*x)*SinIntegral(c + d*x), x, 9, -((CosIntegral((c*(b - d))/d + (b - d)*x)*sin(a - (b*c)/d))/(2*b)) + (CosIntegral((c*(b + d))/d + (b + d)*x)*sin(a - (b*c)/d))/(2*b) - (cos(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b) - (cos(a + b*x)*SinIntegral(c + d*x))/b + (cos(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b)]
    @test_int [sin(a + b*x)*SinIntegral(c + d*x)/x^1, x, 0, CannotIntegrate((sin(a + b*x)*SinIntegral(c + d*x))/x, x)]


    #= [x^2*cos(a + b*x)*SinIntegral(c + d*x), x, 46, -(cos(a - c + (b - d)*x)/(2*b*(b - d)^2)) - cos(a - c + (b - d)*x)/(b^2*(b - d)) + cos(a + c + (b + d)*x)/(2*b*(b + d)^2) + cos(a + c + (b + d)*x)/(b^2*(b + d)) - (CosIntegral(((b - d)*(c + d*x))/d)*((b^2*c^2 - 2*d^2)*cos(a - (b*c)/d) + 2*b*c*d*sin(a - (b*c)/d)))/(2*b^3*d^2) + (CosIntegral(((b + d)*(c + d*x))/d)*((b^2*c^2 - 2*d^2)*cos(a - (b*c)/d) + 2*b*c*d*sin(a - (b*c)/d)))/(2*b^3*d^2) + (c*sin(a - c + (b - d)*x))/(2*b*(b - d)*d) - (x*sin(a - c + (b - d)*x))/(2*b*(b - d)) - (c*sin(a + c + (b + d)*x))/(2*b*d*(b + d)) + (x*sin(a + c + (b + d)*x))/(2*b*(b + d)) + ((2*b*x*cos(a + b*x) - (2 - b^2*x^2)*sin(a + b*x))*SinIntegral(c + d*x))/b^3 - ((2*b*c*d*cos(a - (b*c)/d) - (b^2*c^2 - 2*d^2)*sin(a - (b*c)/d))*SinIntegral(((b - d)*(c + d*x))/d))/(2*b^3*d^2) + ((2*b*c*d*cos(a - (b*c)/d) - (b^2*c^2 - 2*d^2)*sin(a - (b*c)/d))*SinIntegral(((b + d)*(c + d*x))/d))/(2*b^3*d^2)] =#
    @test_int [x^1*cos(a + b*x)*SinIntegral(c + d*x), x, 24, (c*cos(a - (b*c)/d)*CosIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) - (c*cos(a - (b*c)/d)*CosIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d) + (CosIntegral((c*(b - d))/d + (b - d)*x)*sin(a - (b*c)/d))/(2*b^2) - (CosIntegral((c*(b + d))/d + (b + d)*x)*sin(a - (b*c)/d))/(2*b^2) - sin(a - c + (b - d)*x)/(2*b*(b - d)) + sin(a + c + (b + d)*x)/(2*b*(b + d)) + (cos(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) - (c*sin(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) + (cos(a + b*x)*SinIntegral(c + d*x))/b^2 + (x*sin(a + b*x)*SinIntegral(c + d*x))/b - (cos(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2) + (c*sin(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d)]
    @test_int [x^0*cos(a + b*x)*SinIntegral(c + d*x), x, 9, -((cos(a - (b*c)/d)*CosIntegral((c*(b - d))/d + (b - d)*x))/(2*b)) + (cos(a - (b*c)/d)*CosIntegral((c*(b + d))/d + (b + d)*x))/(2*b) + (sin(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b) + (sin(a + b*x)*SinIntegral(c + d*x))/b - (sin(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b)]
    @test_int [cos(a + b*x)*SinIntegral(c + d*x)/x^1, x, 0, CannotIntegrate((cos(a + b*x)*SinIntegral(c + d*x))/x, x)]


    #= ::Section::Closed:: =#
    #=Cosine*integral*function=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*CosIntegral(b*x)^n=#


    @test_int [x^m*CosIntegral(b*x), x, 5, (x^(1 + m)*CosIntegral(b*x))/(1 + m) + (im*x^m*Gamma(1 + m, (-im)*b*x))/(((-im)*b*x)^m*(2*b*(1 + m))) - (im*x^m*Gamma(1 + m, im*b*x))/((im*b*x)^m*(2*b*(1 + m)))]

    @test_int [x^3*CosIntegral(b*x), x, 6, (3*cos(b*x))/(2*b^4) - (3*x^2*cos(b*x))/(4*b^2) + (1/4)*x^4*CosIntegral(b*x) + (3*x*sin(b*x))/(2*b^3) - (x^3*sin(b*x))/(4*b)]
    @test_int [x^2*CosIntegral(b*x), x, 5, -((2*x*cos(b*x))/(3*b^2)) + (1/3)*x^3*CosIntegral(b*x) + (2*sin(b*x))/(3*b^3) - (x^2*sin(b*x))/(3*b)]
    @test_int [x^1*CosIntegral(b*x), x, 4, -(cos(b*x)/(2*b^2)) + (1/2)*x^2*CosIntegral(b*x) - (x*sin(b*x))/(2*b)]
    @test_int [x^0*CosIntegral(b*x), x, 1, x*CosIntegral(b*x) - sin(b*x)/b]
    @test_int [CosIntegral(b*x)/x^1, x, 1, (-(1/2))*im*b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], (-im)*b*x) + (1/2)*im*b*x*HypergeometricPFQ([1, 1, 1], [2, 2, 2], im*b*x) + EulerGamma*log(x) + (1/2)*log(b*x)^2]
    @test_int [CosIntegral(b*x)/x^2, x, 4, -(cos(b*x)/x) - CosIntegral(b*x)/x - b*SinIntegral(b*x)]
    @test_int [CosIntegral(b*x)/x^3, x, 5, -(cos(b*x)/(4*x^2)) - (1/4)*b^2*CosIntegral(b*x) - CosIntegral(b*x)/(2*x^2) + (b*sin(b*x))/(4*x)]


    @test_int [x^m*CosIntegral(b*x)^2, x, 0, CannotIntegrate(x^m*CosIntegral(b*x)^2, x)]

    @test_int [x^3*CosIntegral(b*x)^2, x, 19, x^2/(4*b^2) + (3*cos(b*x)^2)/(8*b^4) + (3*cos(b*x)*CosIntegral(b*x))/b^4 - (3*x^2*cos(b*x)*CosIntegral(b*x))/(2*b^2) + (1/4)*x^4*CosIntegral(b*x)^2 - (3*CosIntegral(2*b*x))/(2*b^4) - (3*log(x))/(2*b^4) + (x*cos(b*x)*sin(b*x))/b^3 + (3*x*CosIntegral(b*x)*sin(b*x))/b^3 - (x^3*CosIntegral(b*x)*sin(b*x))/(2*b) - (13*sin(b*x)^2)/(8*b^4) + (x^2*sin(b*x)^2)/(4*b^2)]
    @test_int [x^2*CosIntegral(b*x)^2, x, 15, x/(2*b^2) - (4*x*cos(b*x)*CosIntegral(b*x))/(3*b^2) + (1/3)*x^3*CosIntegral(b*x)^2 + (5*cos(b*x)*sin(b*x))/(6*b^3) + (4*CosIntegral(b*x)*sin(b*x))/(3*b^3) - (2*x^2*CosIntegral(b*x)*sin(b*x))/(3*b) + (x*sin(b*x)^2)/(3*b^2) - (2*SinIntegral(2*b*x))/(3*b^3)]
    @test_int [x^1*CosIntegral(b*x)^2, x, 10, -((cos(b*x)*CosIntegral(b*x))/b^2) + (1/2)*x^2*CosIntegral(b*x)^2 + CosIntegral(2*b*x)/(2*b^2) + log(x)/(2*b^2) - (x*CosIntegral(b*x)*sin(b*x))/b + sin(b*x)^2/(2*b^2)]
    @test_int [x^0*CosIntegral(b*x)^2, x, 6, x*CosIntegral(b*x)^2 - (2*CosIntegral(b*x)*sin(b*x))/b + SinIntegral(2*b*x)/b]
    @test_int [CosIntegral(b*x)^2/x^1, x, 0, CannotIntegrate(CosIntegral(b*x)^2/x, x)]
    @test_int [CosIntegral(b*x)^2/x^2, x, 0, CannotIntegrate(CosIntegral(b*x)^2/x^2, x)]
    @test_int [CosIntegral(b*x)^2/x^3, x, 0, CannotIntegrate(CosIntegral(b*x)^2/x^3, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*CosIntegral(a+b*x)^n=#


    @test_int [x^m*CosIntegral(a + b*x), x, 1, (x^(1 + m)*CosIntegral(a + b*x))/(1 + m) - (b*CannotIntegrate((x^(1 + m)*cos(a + b*x))/(a + b*x), x))/(1 + m)]

    @test_int [x^3*CosIntegral(a + b*x), x, 14, (3*cos(a + b*x))/(2*b^4) - (a^2*cos(a + b*x))/(4*b^4) + (a*x*cos(a + b*x))/(2*b^3) - (3*x^2*cos(a + b*x))/(4*b^2) - (a^4*CosIntegral(a + b*x))/(4*b^4) + (1/4)*x^4*CosIntegral(a + b*x) - (a*sin(a + b*x))/(2*b^4) + (a^3*sin(a + b*x))/(4*b^4) + (3*x*sin(a + b*x))/(2*b^3) - (a^2*x*sin(a + b*x))/(4*b^3) + (a*x^2*sin(a + b*x))/(4*b^2) - (x^3*sin(a + b*x))/(4*b)]
    @test_int [x^2*CosIntegral(a + b*x), x, 10, (a*cos(a + b*x))/(3*b^3) - (2*x*cos(a + b*x))/(3*b^2) + (a^3*CosIntegral(a + b*x))/(3*b^3) + (1/3)*x^3*CosIntegral(a + b*x) + (2*sin(a + b*x))/(3*b^3) - (a^2*sin(a + b*x))/(3*b^3) + (a*x*sin(a + b*x))/(3*b^2) - (x^2*sin(a + b*x))/(3*b)]
    @test_int [x^1*CosIntegral(a + b*x), x, 7, -(cos(a + b*x)/(2*b^2)) - (a^2*CosIntegral(a + b*x))/(2*b^2) + (1/2)*x^2*CosIntegral(a + b*x) + (a*sin(a + b*x))/(2*b^2) - (x*sin(a + b*x))/(2*b)]
    @test_int [x^0*CosIntegral(a + b*x), x, 1, ((a + b*x)*CosIntegral(a + b*x))/b - sin(a + b*x)/b]
    @test_int [CosIntegral(a + b*x)/x^1, x, 0, CannotIntegrate(CosIntegral(a + b*x)/x, x)]
    @test_int [CosIntegral(a + b*x)/x^2, x, 7, (b*cos(a)*CosIntegral(b*x))/a - (b*CosIntegral(a + b*x))/a - CosIntegral(a + b*x)/x - (b*sin(a)*SinIntegral(b*x))/a]
    @test_int [CosIntegral(a + b*x)/x^3, x, 11, -((b*cos(a + b*x))/(2*a*x)) - (b^2*cos(a)*CosIntegral(b*x))/(2*a^2) + (b^2*CosIntegral(a + b*x))/(2*a^2) - CosIntegral(a + b*x)/(2*x^2) - (b^2*CosIntegral(b*x)*sin(a))/(2*a) - (b^2*cos(a)*SinIntegral(b*x))/(2*a) + (b^2*sin(a)*SinIntegral(b*x))/(2*a^2)]


    @test_int [x^m*CosIntegral(a + b*x)^2, x, 0, CannotIntegrate(x^m*CosIntegral(a + b*x)^2, x)]

    @test_int [x^2*CosIntegral(a + b*x)^2, x, 39, (2*x)/(3*b^2) + (a*cos(2*a + 2*b*x))/(3*b^3) - (x*cos(2*a + 2*b*x))/(6*b^2) + (2*a*cos(a + b*x)*CosIntegral(a + b*x))/(3*b^3) - (4*x*cos(a + b*x)*CosIntegral(a + b*x))/(3*b^2) + (a^2*(a + b*x)*CosIntegral(a + b*x)^2)/(3*b^3) - (a*x*(a + b*x)*CosIntegral(a + b*x)^2)/(3*b^2) + (x^2*(a + b*x)*CosIntegral(a + b*x)^2)/(3*b) - (a*CosIntegral(2*a + 2*b*x))/b^3 - (a*log(a + b*x))/b^3 + (2*cos(a + b*x)*sin(a + b*x))/(3*b^3) + (4*CosIntegral(a + b*x)*sin(a + b*x))/(3*b^3) - (2*a^2*CosIntegral(a + b*x)*sin(a + b*x))/(3*b^3) + (2*a*x*CosIntegral(a + b*x)*sin(a + b*x))/(3*b^2) - (2*x^2*CosIntegral(a + b*x)*sin(a + b*x))/(3*b) + sin(2*a + 2*b*x)/(12*b^3) - (2*SinIntegral(2*a + 2*b*x))/(3*b^3) + (a^2*SinIntegral(2*a + 2*b*x))/b^3]
    @test_int [x^1*CosIntegral(a + b*x)^2, x, 17, -(cos(2*a + 2*b*x)/(4*b^2)) - (cos(a + b*x)*CosIntegral(a + b*x))/b^2 - (a*(a + b*x)*CosIntegral(a + b*x)^2)/(2*b^2) + (x*(a + b*x)*CosIntegral(a + b*x)^2)/(2*b) + CosIntegral(2*a + 2*b*x)/(2*b^2) + log(a + b*x)/(2*b^2) + (a*CosIntegral(a + b*x)*sin(a + b*x))/b^2 - (x*CosIntegral(a + b*x)*sin(a + b*x))/b - (a*SinIntegral(2*a + 2*b*x))/b^2]
    @test_int [x^0*CosIntegral(a + b*x)^2, x, 5, ((a + b*x)*CosIntegral(a + b*x)^2)/b - (2*CosIntegral(a + b*x)*sin(a + b*x))/b + SinIntegral(2*a + 2*b*x)/b]
    @test_int [CosIntegral(a + b*x)^2/x^1, x, 0, CannotIntegrate(CosIntegral(a + b*x)^2/x, x)]
    @test_int [CosIntegral(a + b*x)^2/x^2, x, 0, CannotIntegrate(CosIntegral(a + b*x)^2/x^2, x)]
    @test_int [CosIntegral(a + b*x)^2/x^3, x, 0, CannotIntegrate(CosIntegral(a + b*x)^2/x^3, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*CosIntegral(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*CosIntegral(d*(a + b*log(c*x^n))), x, 7, (x^3*CosIntegral(d*(a + b*log(c*x^n))))/3 - (x^3*ExpIntegralEi(((3 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(6*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)) - (x^3*ExpIntegralEi(((3 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(6*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n))]
    @test_int [x^1*CosIntegral(d*(a + b*log(c*x^n))), x, 7, (x^2*CosIntegral(d*(a + b*log(c*x^n))))/2 - (x^2*ExpIntegralEi(((2 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(4*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) - (x^2*ExpIntegralEi(((2 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(4*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n))]
    @test_int [x^0*CosIntegral(d*(a + b*log(c*x^n))), x, 7, x*CosIntegral(d*(a + b*log(c*x^n))) - (x*ExpIntegralEi(((1 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^(a/(b*n))*(c*x^n)^n^(-1)) - (x*ExpIntegralEi(((1 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^(a/(b*n))*(c*x^n)^n^(-1))]
    @test_int [CosIntegral(d*(a + b*log(c*x^n)))/x^1, x, 3, (CosIntegral(d*(a + b*log(c*x^n)))*(a + b*log(c*x^n)))/(b*n) - sin(d*(a + b*log(c*x^n)))/(b*d*n)]
    @test_int [CosIntegral(d*(a + b*log(c*x^n)))/x^2, x, 7, -(CosIntegral(d*(a + b*log(c*x^n)))/x) + (ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-(((1 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(2*x) + (ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-(((1 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(2*x)]
    @test_int [CosIntegral(d*(a + b*log(c*x^n)))/x^3, x, 7, -CosIntegral(d*(a + b*log(c*x^n)))/(2*x^2) + (ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi(-(((2 - im*b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(4*x^2) + (ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi(-(((2 + im*b*d*n)*(a + b*log(c*x^n)))/(b*n))))/(4*x^2)]


    @test_int [(e*x)^m*CosIntegral(d*(a + b*log(c*x^n))), x, 7, ((e*x)^(1 + m)*CosIntegral(d*(a + b*log(c*x^n))))/(e*(1 + m)) - (x*(e*x)^m*ExpIntegralEi(((1 + m - im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^((a*(1 + m))/(b*n))*(1 + m)*(c*x^n)^((1 + m)/n)) - (x*(e*x)^m*ExpIntegralEi(((1 + m + im*b*d*n)*(a + b*log(c*x^n)))/(b*n)))/(2*ℯ^((a*(1 + m))/(b*n))*(1 + m)*(c*x^n)^((1 + m)/n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Trig(b*x)*CosIntegral(b*x)^n=#


    @test_int [sin(b*x)*CosIntegral(b*x)/x^3, x, 12, -((b*cos(b*x)^2)/(2*x)) - (b*cos(2*b*x))/(4*x) - (b*cos(b*x)*CosIntegral(b*x))/(2*x) - (1/2)*b^2*CannotIntegrate((CosIntegral(b*x)*sin(b*x))/x, x) - (CosIntegral(b*x)*sin(b*x))/(2*x^2) - sin(2*b*x)/(8*x^2) - b^2*SinIntegral(2*b*x)]
    @test_int [sin(b*x)*CosIntegral(b*x)/x^2, x, 7, (1/2)*b*CosIntegral(b*x)^2 + b*CosIntegral(2*b*x) - (CosIntegral(b*x)*sin(b*x))/x - sin(2*b*x)/(2*x)]
    @test_int [sin(b*x)*CosIntegral(b*x)/x, x, 0, CannotIntegrate((CosIntegral(b*x)*sin(b*x))/x, x)]
    @test_int [sin(b*x)*CosIntegral(b*x), x, 5, -((cos(b*x)*CosIntegral(b*x))/b) + CosIntegral(2*b*x)/(2*b) + log(x)/(2*b)]
    @test_int [x*sin(b*x)*CosIntegral(b*x), x, 9, x/(2*b) - (x*cos(b*x)*CosIntegral(b*x))/b + (cos(b*x)*sin(b*x))/(2*b^2) + (CosIntegral(b*x)*sin(b*x))/b^2 - SinIntegral(2*b*x)/(2*b^2)]
    @test_int [x^2*sin(b*x)*CosIntegral(b*x), x, 13, x^2/(4*b) + cos(b*x)^2/(4*b^3) + (2*cos(b*x)*CosIntegral(b*x))/b^3 - (x^2*cos(b*x)*CosIntegral(b*x))/b - CosIntegral(2*b*x)/b^3 - log(x)/b^3 + (x*cos(b*x)*sin(b*x))/(2*b^2) + (2*x*CosIntegral(b*x)*sin(b*x))/b^2 - sin(b*x)^2/b^3]
    @test_int [x^3*sin(b*x)*CosIntegral(b*x), x, 20, -((5*x)/(2*b^3)) + x^3/(6*b) + (x*cos(b*x)^2)/(2*b^3) + (6*x*cos(b*x)*CosIntegral(b*x))/b^3 - (x^3*cos(b*x)*CosIntegral(b*x))/b - (4*cos(b*x)*sin(b*x))/b^4 + (x^2*cos(b*x)*sin(b*x))/(2*b^2) - (6*CosIntegral(b*x)*sin(b*x))/b^4 + (3*x^2*CosIntegral(b*x)*sin(b*x))/b^2 - (3*x*sin(b*x)^2)/(2*b^3) + (3*SinIntegral(2*b*x))/b^4]


    @test_int [cos(b*x)*CosIntegral(b*x)/x^3, x, 14, -(cos(b*x)^2/(4*x^2)) - (cos(b*x)*CosIntegral(b*x))/(2*x^2) - (1/4)*b^2*CosIntegral(b*x)^2 - b^2*CosIntegral(2*b*x) + (b*cos(b*x)*sin(b*x))/(2*x) + (b*CosIntegral(b*x)*sin(b*x))/(2*x) + (b*sin(2*b*x))/(4*x)]
    @test_int [cos(b*x)*CosIntegral(b*x)/x^2, x, 5, -(cos(b*x)^2/x) - (cos(b*x)*CosIntegral(b*x))/x - b*CannotIntegrate((CosIntegral(b*x)*sin(b*x))/x, x) - b*SinIntegral(2*b*x)]
    @test_int [cos(b*x)*CosIntegral(b*x)/x, x, 1, (1/2)*CosIntegral(b*x)^2]
    @test_int [cos(b*x)*CosIntegral(b*x), x, 5, (CosIntegral(b*x)*sin(b*x))/b - SinIntegral(2*b*x)/(2*b)]
    @test_int [x*cos(b*x)*CosIntegral(b*x), x, 9, (cos(b*x)*CosIntegral(b*x))/b^2 - CosIntegral(2*b*x)/(2*b^2) - log(x)/(2*b^2) + (x*CosIntegral(b*x)*sin(b*x))/b - sin(b*x)^2/(2*b^2)]
    @test_int [x^2*cos(b*x)*CosIntegral(b*x), x, 14, -((3*x)/(4*b^2)) + (2*x*cos(b*x)*CosIntegral(b*x))/b^2 - (5*cos(b*x)*sin(b*x))/(4*b^3) - (2*CosIntegral(b*x)*sin(b*x))/b^3 + (x^2*CosIntegral(b*x)*sin(b*x))/b - (x*sin(b*x)^2)/(2*b^2) + SinIntegral(2*b*x)/b^3]
    @test_int [x^3*cos(b*x)*CosIntegral(b*x), x, 18, -(x^2/(2*b^2)) - (3*cos(b*x)^2)/(4*b^4) - (6*cos(b*x)*CosIntegral(b*x))/b^4 + (3*x^2*cos(b*x)*CosIntegral(b*x))/b^2 + (3*CosIntegral(2*b*x))/b^4 + (3*log(x))/b^4 - (2*x*cos(b*x)*sin(b*x))/b^3 - (6*x*CosIntegral(b*x)*sin(b*x))/b^3 + (x^3*CosIntegral(b*x)*sin(b*x))/b + (13*sin(b*x)^2)/(4*b^4) - (x^2*sin(b*x)^2)/(2*b^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Trig(b*x)*CosIntegral(d*x)^n=#


    @test_int [sin(5*x)*CosIntegral(2*x), x, 6, (-(1/5))*cos(5*x)*CosIntegral(2*x) + (1/10)*CosIntegral(3*x) + (1/10)*CosIntegral(7*x)]


    @test_int [cos(5*x)*CosIntegral(2*x), x, 6, (1/5)*CosIntegral(2*x)*sin(5*x) - (1/10)*SinIntegral(3*x) - (1/10)*SinIntegral(7*x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Trig(a+b*x)*CosIntegral(a+b*x)^n=#


    #= [x^3*sin(a + b*x)*CosIntegral(a + b*x), x, 32, -((5*x)/(2*b^3)) + (a^2*x)/(2*b^3) - (a*x^2)/(4*b^2) + x^3/(6*b) - (7*a*cos(a + b*x)^2)/(4*b^4) + (x*cos(a + b*x)^2)/(2*b^3) + (6*x*cos(a + b*x)*CosIntegral(a + b*x))/b^3 - (x^3*cos(a + b*x)*CosIntegral(a + b*x))/b + (3*a*CosIntegral(2*a + 2*b*x))/b^4 - (a^3*CosIntegral(2*a + 2*b*x))/(2*b^4) + (3*a*log(a + b*x))/b^4 - (a^3*log(a + b*x))/(2*b^4) - (4*cos(a + b*x)*sin(a + b*x))/b^4 + (a^2*cos(a + b*x)*sin(a + b*x))/(2*b^4) - (a*x*cos(a + b*x)*sin(a + b*x))/(2*b^3) + (x^2*cos(a + b*x)*sin(a + b*x))/(2*b^2) - (6*CosIntegral(a + b*x)*sin(a + b*x))/b^4 + (3*x^2*CosIntegral(a + b*x)*sin(a + b*x))/b^2 - (3*x*sin(a + b*x)^2)/(2*b^3) + (3*SinIntegral(2*a + 2*b*x))/b^4 - (3*a^2*SinIntegral(2*a + 2*b*x))/(2*b^4)] =#
    @test_int [x^2*sin(a + b*x)*CosIntegral(a + b*x), x, 21, -((a*x)/(2*b^2)) + x^2/(4*b) + cos(a + b*x)^2/(4*b^3) + cos(2*a + 2*b*x)/(2*b^3) + (2*cos(a + b*x)*CosIntegral(a + b*x))/b^3 - (x^2*cos(a + b*x)*CosIntegral(a + b*x))/b - CosIntegral(2*a + 2*b*x)/b^3 + (a^2*CosIntegral(2*a + 2*b*x))/(2*b^3) - log(a + b*x)/b^3 + (a^2*log(a + b*x))/(2*b^3) - (a*cos(a + b*x)*sin(a + b*x))/(2*b^3) + (x*cos(a + b*x)*sin(a + b*x))/(2*b^2) + (2*x*CosIntegral(a + b*x)*sin(a + b*x))/b^2 + (a*SinIntegral(2*a + 2*b*x))/b^3]
    @test_int [x^1*sin(a + b*x)*CosIntegral(a + b*x), x, 12, x/(2*b) - (x*cos(a + b*x)*CosIntegral(a + b*x))/b - (a*CosIntegral(2*a + 2*b*x))/(2*b^2) - (a*log(a + b*x))/(2*b^2) + (cos(a + b*x)*sin(a + b*x))/(2*b^2) + (CosIntegral(a + b*x)*sin(a + b*x))/b^2 - SinIntegral(2*a + 2*b*x)/(2*b^2)]
    @test_int [x^0*sin(a + b*x)*CosIntegral(a + b*x), x, 4, -((cos(a + b*x)*CosIntegral(a + b*x))/b) + CosIntegral(2*a + 2*b*x)/(2*b) + log(a + b*x)/(2*b)]
    @test_int [sin(a + b*x)*CosIntegral(a + b*x)/x^1, x, 0, CannotIntegrate((sin(a + b*x)*CosIntegral(a + b*x))/x, x)]


    #= [x^3*cos(a + b*x)*CosIntegral(a + b*x), x, 32, (5*a*x)/(4*b^3) - x^2/(2*b^2) - (15*cos(a + b*x)^2)/(4*b^4) + (a^2*cos(a + b*x)^2)/(2*b^4) - (6*cos(a + b*x)*CosIntegral(a + b*x))/b^4 + (3*x^2*cos(a + b*x)*CosIntegral(a + b*x))/b^2 + (3*CosIntegral(2*a + 2*b*x))/b^4 - (3*a^2*CosIntegral(2*a + 2*b*x))/(2*b^4) + (3*log(a + b*x))/b^4 - (3*a^2*log(a + b*x))/(2*b^4) + (7*a*cos(a + b*x)*sin(a + b*x))/(4*b^4) - (2*x*cos(a + b*x)*sin(a + b*x))/b^3 - (6*x*CosIntegral(a + b*x)*sin(a + b*x))/b^3 + (x^3*CosIntegral(a + b*x)*sin(a + b*x))/b + sin(a + b*x)^2/(4*b^4) + (a*x*sin(a + b*x)^2)/(2*b^3) - (x^2*sin(a + b*x)^2)/(2*b^2) - (3*a*SinIntegral(2*a + 2*b*x))/b^4 + (a^3*SinIntegral(2*a + 2*b*x))/(2*b^4)] =#
    @test_int [x^2*cos(a + b*x)*CosIntegral(a + b*x), x, 21, -(x/b^2) - (a*cos(2*a + 2*b*x))/(4*b^3) + (x*cos(2*a + 2*b*x))/(4*b^2) + (2*x*cos(a + b*x)*CosIntegral(a + b*x))/b^2 + (a*CosIntegral(2*a + 2*b*x))/b^3 + (a*log(a + b*x))/b^3 - (cos(a + b*x)*sin(a + b*x))/b^3 - (2*CosIntegral(a + b*x)*sin(a + b*x))/b^3 + (x^2*CosIntegral(a + b*x)*sin(a + b*x))/b - sin(2*a + 2*b*x)/(8*b^3) + SinIntegral(2*a + 2*b*x)/b^3 - (a^2*SinIntegral(2*a + 2*b*x))/(2*b^3)]
    @test_int [x^1*cos(a + b*x)*CosIntegral(a + b*x), x, 11, cos(2*a + 2*b*x)/(4*b^2) + (cos(a + b*x)*CosIntegral(a + b*x))/b^2 - CosIntegral(2*a + 2*b*x)/(2*b^2) - log(a + b*x)/(2*b^2) + (x*CosIntegral(a + b*x)*sin(a + b*x))/b + (a*SinIntegral(2*a + 2*b*x))/(2*b^2)]
    @test_int [x^0*cos(a + b*x)*CosIntegral(a + b*x), x, 4, (CosIntegral(a + b*x)*sin(a + b*x))/b - SinIntegral(2*a + 2*b*x)/(2*b)]
    @test_int [cos(a + b*x)*CosIntegral(a + b*x)/x^1, x, 0, CannotIntegrate((cos(a + b*x)*CosIntegral(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Trig(a+b*x)*CosIntegral(c+d*x)^n=#


    #= [x^2*sin(a + b*x)*CosIntegral(c + d*x), x, 46, cos(a - c + (b - d)*x)/(2*b*(b - d)^2) + cos(a - c + (b - d)*x)/(b^2*(b - d)) + cos(a + c + (b + d)*x)/(2*b*(b + d)^2) + cos(a + c + (b + d)*x)/(b^2*(b + d)) + (CosIntegral(((b - d)*(c + d*x))/d)*((b^2*c^2 - 2*d^2)*cos(a - (b*c)/d) + 2*b*c*d*sin(a - (b*c)/d)))/(2*b^3*d^2) + (CosIntegral(((b + d)*(c + d*x))/d)*((b^2*c^2 - 2*d^2)*cos(a - (b*c)/d) + 2*b*c*d*sin(a - (b*c)/d)))/(2*b^3*d^2) + (CosIntegral(c + d*x)*((2 - b^2*x^2)*cos(a + b*x) + 2*b*x*sin(a + b*x)))/b^3 - (c*sin(a - c + (b - d)*x))/(2*b*(b - d)*d) + (x*sin(a - c + (b - d)*x))/(2*b*(b - d)) - (c*sin(a + c + (b + d)*x))/(2*b*d*(b + d)) + (x*sin(a + c + (b + d)*x))/(2*b*(b + d)) + ((2*b*c*d*cos(a - (b*c)/d) - (b^2*c^2 - 2*d^2)*sin(a - (b*c)/d))*SinIntegral(((b - d)*(c + d*x))/d))/(2*b^3*d^2) + ((2*b*c*d*cos(a - (b*c)/d) - (b^2*c^2 - 2*d^2)*sin(a - (b*c)/d))*SinIntegral(((b + d)*(c + d*x))/d))/(2*b^3*d^2)] =#
    @test_int [x^1*sin(a + b*x)*CosIntegral(c + d*x), x, 24, -((c*cos(a - (b*c)/d)*CosIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d)) - (x*cos(a + b*x)*CosIntegral(c + d*x))/b - (c*cos(a - (b*c)/d)*CosIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d) - (CosIntegral((c*(b - d))/d + (b - d)*x)*sin(a - (b*c)/d))/(2*b^2) - (CosIntegral((c*(b + d))/d + (b + d)*x)*sin(a - (b*c)/d))/(2*b^2) + (CosIntegral(c + d*x)*sin(a + b*x))/b^2 + sin(a - c + (b - d)*x)/(2*b*(b - d)) + sin(a + c + (b + d)*x)/(2*b*(b + d)) - (cos(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) + (c*sin(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) - (cos(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2) + (c*sin(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d)]
    @test_int [x^0*sin(a + b*x)*CosIntegral(c + d*x), x, 9, (cos(a - (b*c)/d)*CosIntegral((c*(b - d))/d + (b - d)*x))/(2*b) - (cos(a + b*x)*CosIntegral(c + d*x))/b + (cos(a - (b*c)/d)*CosIntegral((c*(b + d))/d + (b + d)*x))/(2*b) - (sin(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b) - (sin(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b)]
    @test_int [sin(a + b*x)*CosIntegral(c + d*x)/x^1, x, 0, CannotIntegrate((CosIntegral(c + d*x)*sin(a + b*x))/x, x)]


    #= [x^2*cos(a + b*x)*CosIntegral(c + d*x), x, 46, -((c*cos(a - c + (b - d)*x))/(2*b*(b - d)*d)) + (x*cos(a - c + (b - d)*x))/(2*b*(b - d)) - (c*cos(a + c + (b + d)*x))/(2*b*d*(b + d)) + (x*cos(a + c + (b + d)*x))/(2*b*(b + d)) + (CosIntegral(((b - d)*(c + d*x))/d)*(2*b*c*d*cos(a - (b*c)/d) - (b^2*c^2 - 2*d^2)*sin(a - (b*c)/d)))/(2*b^3*d^2) + (CosIntegral(((b + d)*(c + d*x))/d)*(2*b*c*d*cos(a - (b*c)/d) - (b^2*c^2 - 2*d^2)*sin(a - (b*c)/d)))/(2*b^3*d^2) + (CosIntegral(c + d*x)*(2*b*x*cos(a + b*x) - (2 - b^2*x^2)*sin(a + b*x)))/b^3 - sin(a - c + (b - d)*x)/(2*b*(b - d)^2) - sin(a - c + (b - d)*x)/(b^2*(b - d)) - sin(a + c + (b + d)*x)/(2*b*(b + d)^2) - sin(a + c + (b + d)*x)/(b^2*(b + d)) - (((b^2*c^2 - 2*d^2)*cos(a - (b*c)/d) + 2*b*c*d*sin(a - (b*c)/d))*SinIntegral(((b - d)*(c + d*x))/d))/(2*b^3*d^2) - (((b^2*c^2 - 2*d^2)*cos(a - (b*c)/d) + 2*b*c*d*sin(a - (b*c)/d))*SinIntegral(((b + d)*(c + d*x))/d))/(2*b^3*d^2)] =#
    @test_int [x^1*cos(a + b*x)*CosIntegral(c + d*x), x, 24, cos(a - c + (b - d)*x)/(2*b*(b - d)) + cos(a + c + (b + d)*x)/(2*b*(b + d)) - (cos(a - (b*c)/d)*CosIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) + (cos(a + b*x)*CosIntegral(c + d*x))/b^2 - (cos(a - (b*c)/d)*CosIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2) + (c*CosIntegral((c*(b - d))/d + (b - d)*x)*sin(a - (b*c)/d))/(2*b*d) + (c*CosIntegral((c*(b + d))/d + (b + d)*x)*sin(a - (b*c)/d))/(2*b*d) + (x*CosIntegral(c + d*x)*sin(a + b*x))/b + (c*cos(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b*d) + (sin(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b^2) + (c*cos(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b*d) + (sin(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b^2)]
    @test_int [x^0*cos(a + b*x)*CosIntegral(c + d*x), x, 9, -((CosIntegral((c*(b - d))/d + (b - d)*x)*sin(a - (b*c)/d))/(2*b)) - (CosIntegral((c*(b + d))/d + (b + d)*x)*sin(a - (b*c)/d))/(2*b) + (CosIntegral(c + d*x)*sin(a + b*x))/b - (cos(a - (b*c)/d)*SinIntegral((c*(b - d))/d + (b - d)*x))/(2*b) - (cos(a - (b*c)/d)*SinIntegral((c*(b + d))/d + (b + d)*x))/(2*b)]
    @test_int [cos(a + b*x)*CosIntegral(c + d*x)/x^1, x, 0, CannotIntegrate((cos(a + b*x)*CosIntegral(c + d*x))/x, x)]
    end
