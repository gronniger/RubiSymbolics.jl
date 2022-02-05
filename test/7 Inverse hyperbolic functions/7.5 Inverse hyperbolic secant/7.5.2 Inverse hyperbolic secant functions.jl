@testset "7.5.2 Inverse hyperbolic secant functions" begin
    @variables a, b, c, d, m, n, p, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Inverse*Hyperbolic*Secants=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*asech(a+b*x)^n=#


    @test_int [x^3*asech(a + b*x), x, 8, -(((2 + 17*a^2)*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(12*b^4)) - (x^2*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(12*b^2) + (a*(a + b*x)*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(3*b^4) - (a^4*asech(a + b*x))/(4*b^4) + (1/4)*x^4*asech(a + b*x) + (a*(1 + 2*a^2)*atan((sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(a + b*x)))/(2*b^4)]
    @test_int [x^2*asech(a + b*x), x, 7, (5*a*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(6*b^3) - (x*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(6*b^2) + (a^3*asech(a + b*x))/(3*b^3) + (1/3)*x^3*asech(a + b*x) - ((1 + 6*a^2)*atan((sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(a + b*x)))/(6*b^3)]
    @test_int [x^1*asech(a + b*x), x, 6, -((sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(2*b^2)) - (a^2*asech(a + b*x))/(2*b^2) + (1/2)*x^2*asech(a + b*x) + (a*atan((sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(a + b*x)))/b^2]
    @test_int [x^0*asech(a + b*x), x, 4, ((a + b*x)*asech(a + b*x))/b - (2*atan(sqrt((1 - a - b*x)/(1 + a + b*x))))/b]
    @test_int [asech(a + b*x)/x^1, x, 14, asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))) + asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))) - asech(a + b*x)*log(1 + ℯ^(2*asech(a + b*x))) + PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))) + PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))) - (1/2)*PolyLog(2, -ℯ^(2*asech(a + b*x)))]
    @test_int [asech(a + b*x)/x^2, x, 5, -((b*asech(a + b*x))/a) - asech(a + b*x)/x + (2*b*atanh((sqrt(1 + a)*tanh((1/2)*asech(a + b*x)))/sqrt(1 - a)))/(a*sqrt(1 - a^2))]
    @test_int [asech(a + b*x)/x^3, x, 7, (b*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(2*a*(1 - a^2)*x) + (b^2*asech(a + b*x))/(2*a^2) - asech(a + b*x)/(2*x^2) - ((1 - 2*a^2)*b^2*atanh((sqrt(1 + a)*tanh((1/2)*asech(a + b*x)))/sqrt(1 - a)))/(a^2*(1 - a^2)^(3/2))]
    @test_int [asech(a + b*x)/x^4, x, 8, (b*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(6*a*(1 - a^2)*x^2) - ((2 - 5*a^2)*b^2*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x))/(6*a^2*(1 - a^2)^2*x) - (b^3*asech(a + b*x))/(3*a^3) - asech(a + b*x)/(3*x^3) + ((2 - 5*a^2 + 6*a^4)*b^3*atanh((sqrt(1 + a)*tanh((1/2)*asech(a + b*x)))/sqrt(1 - a)))/(3*a^3*(1 - a^2)^(5/2))]


    @test_int [x^2*asech(a + b*x)^2, x, 17, -(x/(3*b^2)) + (2*a*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x)*asech(a + b*x))/b^3 - ((a + b*x)*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x)*asech(a + b*x))/(3*b^3) + (a^3*asech(a + b*x)^2)/(3*b^3) + (1/3)*x^3*asech(a + b*x)^2 - (2*asech(a + b*x)*atan(ℯ^asech(a + b*x)))/(3*b^3) - (4*a^2*asech(a + b*x)*atan(ℯ^asech(a + b*x)))/b^3 + (2*a*log(a + b*x))/b^3 + (im*PolyLog(2, (-im)*ℯ^asech(a + b*x)))/(3*b^3) + (2*im*a^2*PolyLog(2, (-im)*ℯ^asech(a + b*x)))/b^3 - (im*PolyLog(2, im*ℯ^asech(a + b*x)))/(3*b^3) - (2*im*a^2*PolyLog(2, im*ℯ^asech(a + b*x)))/b^3]
    @test_int [x^1*asech(a + b*x)^2, x, 11, -((sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x)*asech(a + b*x))/b^2) - (a^2*asech(a + b*x)^2)/(2*b^2) + (1/2)*x^2*asech(a + b*x)^2 + (4*a*asech(a + b*x)*atan(ℯ^asech(a + b*x)))/b^2 - log(a + b*x)/b^2 - (2*im*a*PolyLog(2, (-im)*ℯ^asech(a + b*x)))/b^2 + (2*im*a*PolyLog(2, im*ℯ^asech(a + b*x)))/b^2]
    @test_int [x^0*asech(a + b*x)^2, x, 8, ((a + b*x)*asech(a + b*x)^2)/b - (4*asech(a + b*x)*atan(ℯ^asech(a + b*x)))/b + (2*im*PolyLog(2, (-im)*ℯ^asech(a + b*x)))/b - (2*im*PolyLog(2, im*ℯ^asech(a + b*x)))/b]
    @test_int [asech(a + b*x)^2/x^1, x, 17, asech(a + b*x)^2*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))) + asech(a + b*x)^2*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))) - asech(a + b*x)^2*log(1 + ℯ^(2*asech(a + b*x))) + 2*asech(a + b*x)*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))) + 2*asech(a + b*x)*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))) - asech(a + b*x)*PolyLog(2, -ℯ^(2*asech(a + b*x))) - 2*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))) - 2*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))) + (1/2)*PolyLog(3, -ℯ^(2*asech(a + b*x)))]
    @test_int [asech(a + b*x)^2/x^2, x, 12, -((b*asech(a + b*x)^2)/a) - asech(a + b*x)^2/x + (2*b*asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (2*b*asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (2*b*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (2*b*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2))]
    @test_int [asech(a + b*x)^2/x^3, x, 23, (b^2*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x)*asech(a + b*x))/(a*(1 - a^2)*(a + b*x)*(1 - a/(a + b*x))) + (b^2*asech(a + b*x)^2)/(2*a^2) - asech(a + b*x)^2/(2*x^2) + (b^2*asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*(1 - a^2)^(3/2)) - (2*b^2*asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2)) - (b^2*asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*(1 - a^2)^(3/2)) + (2*b^2*asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2)) + (b^2*log(x/(a + b*x)))/(a^2*(1 - a^2)) + (b^2*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*(1 - a^2)^(3/2)) - (2*b^2*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2)) - (b^2*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*(1 - a^2)^(3/2)) + (2*b^2*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2))]


    @test_int [x^1*asech(a + b*x)^3, x, 16, -((3*asech(a + b*x)^2)/(2*b^2)) - (3*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x)*asech(a + b*x)^2)/(2*b^2) - (a^2*asech(a + b*x)^3)/(2*b^2) + (1/2)*x^2*asech(a + b*x)^3 + (6*a*asech(a + b*x)^2*atan(ℯ^asech(a + b*x)))/b^2 + (3*asech(a + b*x)*log(1 + ℯ^(2*asech(a + b*x))))/b^2 - (6*im*a*asech(a + b*x)*PolyLog(2, (-im)*ℯ^asech(a + b*x)))/b^2 + (6*im*a*asech(a + b*x)*PolyLog(2, im*ℯ^asech(a + b*x)))/b^2 + (3*PolyLog(2, -ℯ^(2*asech(a + b*x))))/(2*b^2) + (6*im*a*PolyLog(3, (-im)*ℯ^asech(a + b*x)))/b^2 - (6*im*a*PolyLog(3, im*ℯ^asech(a + b*x)))/b^2]
    @test_int [x^0*asech(a + b*x)^3, x, 10, ((a + b*x)*asech(a + b*x)^3)/b - (6*asech(a + b*x)^2*atan(ℯ^asech(a + b*x)))/b + (6*im*asech(a + b*x)*PolyLog(2, (-im)*ℯ^asech(a + b*x)))/b - (6*im*asech(a + b*x)*PolyLog(2, im*ℯ^asech(a + b*x)))/b - (6*im*PolyLog(3, (-im)*ℯ^asech(a + b*x)))/b + (6*im*PolyLog(3, im*ℯ^asech(a + b*x)))/b]
    @test_int [asech(a + b*x)^3/x^1, x, 20, asech(a + b*x)^3*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))) + asech(a + b*x)^3*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))) - asech(a + b*x)^3*log(1 + ℯ^(2*asech(a + b*x))) + 3*asech(a + b*x)^2*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))) + 3*asech(a + b*x)^2*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))) - (3/2)*asech(a + b*x)^2*PolyLog(2, -ℯ^(2*asech(a + b*x))) - 6*asech(a + b*x)*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))) - 6*asech(a + b*x)*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))) + (3/2)*asech(a + b*x)*PolyLog(3, -ℯ^(2*asech(a + b*x))) + 6*PolyLog(4, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))) + 6*PolyLog(4, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))) - (3/4)*PolyLog(4, -ℯ^(2*asech(a + b*x)))]
    @test_int [asech(a + b*x)^3/x^2, x, 14, -((b*asech(a + b*x)^3)/a) - asech(a + b*x)^3/x + (3*b*asech(a + b*x)^2*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (3*b*asech(a + b*x)^2*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (6*b*asech(a + b*x)*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (6*b*asech(a + b*x)*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (6*b*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (6*b*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2))]
    @test_int [asech(a + b*x)^3/x^3, x, 32, -((3*b^2*asech(a + b*x)^2)/(2*a^2*(1 - a^2))) + (3*b^2*sqrt((1 - a - b*x)/(1 + a + b*x))*(1 + a + b*x)*asech(a + b*x)^2)/(2*a*(1 - a^2)*(a + b*x)*(1 - a/(a + b*x))) + (b^2*asech(a + b*x)^3)/(2*a^2) - asech(a + b*x)^3/(2*x^2) + (3*b^2*asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*(1 - a^2)) + (3*b^2*asech(a + b*x)^2*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(2*a^2*(1 - a^2)^(3/2)) - (3*b^2*asech(a + b*x)^2*log(1 - (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2)) + (3*b^2*asech(a + b*x)*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*(1 - a^2)) - (3*b^2*asech(a + b*x)^2*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(2*a^2*(1 - a^2)^(3/2)) + (3*b^2*asech(a + b*x)^2*log(1 - (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2)) + (3*b^2*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*(1 - a^2)) + (3*b^2*asech(a + b*x)*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*(1 - a^2)^(3/2)) - (6*b^2*asech(a + b*x)*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2)) + (3*b^2*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*(1 - a^2)) - (3*b^2*asech(a + b*x)*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*(1 - a^2)^(3/2)) + (6*b^2*asech(a + b*x)*PolyLog(2, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2)) - (3*b^2*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*(1 - a^2)^(3/2)) + (6*b^2*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 - sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2)) + (3*b^2*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*(1 - a^2)^(3/2)) - (6*b^2*PolyLog(3, (a*ℯ^asech(a + b*x))/(1 + sqrt(1 - a^2))))/(a^2*sqrt(1 - a^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*asech(a*x^n)=#


    @test_int [x^3*asech(sqrt(x)), x, 4, -((1 - x)/(4*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x))) + (1 - x)^2/(4*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x)) - (3*(1 - x)^3)/(20*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x)) + (1 - x)^4/(28*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x)) + (1/4)*x^4*asech(sqrt(x))]
    @test_int [x^2*asech(sqrt(x)), x, 4, -((1 - x)/(3*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x))) + (2*(1 - x)^2)/(9*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x)) - (1 - x)^3/(15*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x)) + (1/3)*x^3*asech(sqrt(x))]
    @test_int [x^1*asech(sqrt(x)), x, 4, -((1 - x)/(2*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x))) + (1 - x)^2/(6*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x)) + (1/2)*x^2*asech(sqrt(x))]
    @test_int [x^0*asech(sqrt(x)), x, 3, -((1 - x)/(sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x))) + x*asech(sqrt(x))]
    @test_int [asech(sqrt(x))/x^1, x, 7, asech(sqrt(x))^2 - 2*asech(sqrt(x))*log(1 + ℯ^(2*asech(sqrt(x)))) - PolyLog(2, -ℯ^(2*asech(sqrt(x))))]
    @test_int [asech(sqrt(x))/x^2, x, 5, (1 - x)/(2*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*x^(3/2)) - asech(sqrt(x))/x + (sqrt(1 - x)*atanh(sqrt(1 - x)))/(2*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x))]
    @test_int [asech(sqrt(x))/x^3, x, 6, (1 - x)/(8*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*x^(5/2)) + (3*(1 - x))/(16*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*x^(3/2)) - asech(sqrt(x))/(2*x^2) + (3*sqrt(1 - x)*atanh(sqrt(1 - x)))/(16*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x))]
    @test_int [asech(sqrt(x))/x^4, x, 7, (1 - x)/(18*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*x^(7/2)) + (5*(1 - x))/(72*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*x^(5/2)) + (5*(1 - x))/(48*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*x^(3/2)) - asech(sqrt(x))/(3*x^3) + (5*sqrt(1 - x)*atanh(sqrt(1 - x)))/(48*sqrt(-1 + 1/sqrt(x))*sqrt(1 + 1/sqrt(x))*sqrt(x))]


    @test_int [asech(1/x), x, 3, -(sqrt(-1 + x)*sqrt(1 + x)) + x*acosh(x)]


    @test_int [asech(a*x^n)/x, x, 7, asech(a*x^n)^2/(2*n) - (asech(a*x^n)*log(1 + ℯ^(2*asech(a*x^n))))/n - PolyLog(2, -ℯ^(2*asech(a*x^n)))/(2*n)]
    @test_int [asech(a*x^5)/x, x, 7, (1/10)*asech(a*x^5)^2 - (1/5)*asech(a*x^5)*log(1 + ℯ^(2*asech(a*x^5))) - (1/10)*PolyLog(2, -ℯ^(2*asech(a*x^5)))]


    #= ::Section::Closed:: =#
    #=Integrands*involving*inverse*hyperbolic*secants*of*exponentials=#


    @test_int [asech(c*ℯ^(a + b*x)), x, 7, asech(c*ℯ^(a + b*x))^2/(2*b) - (asech(c*ℯ^(a + b*x))*log(1 + ℯ^(2*asech(c*ℯ^(a + b*x)))))/b - PolyLog(2, -ℯ^(2*asech(c*ℯ^(a + b*x))))/(2*b)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*exponentials*of*inverse*hyperbolic*secants=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^asech(a*x^p)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [ℯ^asech(a*x)*x^4, x, 5, -((2*ℯ^asech(a*x)*x)/(15*a^4)) + x^2/(15*a^3) - (ℯ^asech(a*x)*x^3)/(15*a^2) + x^4/(20*a) + (1/5)*ℯ^asech(a*x)*x^5, x^4/(20*a) + (1/5)*ℯ^asech(a*x)*x^5 - (2*sqrt(1 - a*x))/(15*a^5*sqrt(1/(1 + a*x))) - (x^2*sqrt(1 - a*x))/(15*a^3*sqrt(1/(1 + a*x)))]
    @test_int [ℯ^asech(a*x)*x^3, x, 5, x^3/(12*a) + (1/4)*ℯ^asech(a*x)*x^4 - (x*sqrt(1 - a*x))/(8*a^3*sqrt(1/(1 + a*x))) + (sqrt(1/(1 + a*x))*sqrt(1 + a*x)*asin(a*x))/(8*a^4)]
    @test_int [ℯ^asech(a*x)*x^2, x, 3, -((ℯ^asech(a*x)*x)/(3*a^2)) + x^2/(6*a) + (1/3)*ℯ^asech(a*x)*x^3, x^2/(6*a) + (1/3)*ℯ^asech(a*x)*x^3 - sqrt(1 - a*x)/(3*a^3*sqrt(1/(1 + a*x)))]
    @test_int [ℯ^asech(a*x)*x^1, x, 4, x/(2*a) + (1/2)*ℯ^asech(a*x)*x^2 + (sqrt(1/(1 + a*x))*sqrt(1 + a*x)*asin(a*x))/(2*a^2)]
    @test_int [ℯ^asech(a*x)*x^0, x, 3, ℯ^asech(a*x)*x - asech(a*x)/a + log(x)/a, ℯ^asech(a*x)*x - (2*atanh(sqrt((1 - a*x)/(1 + a*x))))/a + log(x)/a]
    @test_int [ℯ^asech(a*x)/x^1, x, 5, -(2/(1 - sqrt((1 - a*x)/(1 + a*x)))) + 2*atan(sqrt((1 - a*x)/(1 + a*x))), -(1/(a*x)) - sqrt(1 - a*x)/(a*x*sqrt(1/(1 + a*x))) - sqrt(1/(1 + a*x))*sqrt(1 + a*x)*asin(a*x)]
    @test_int [ℯ^asech(a*x)/x^2, x, 6, -(ℯ^asech(a*x)/(2*x)) + a*atanh(sqrt((1 - a*x)/(1 + a*x))), 1/(2*a*x^2) - ℯ^asech(a*x)/x + sqrt(1 - a*x)/(2*a*x^2*sqrt(1/(1 + a*x))) + (1/2)*a*sqrt(1/(1 + a*x))*sqrt(1 + a*x)*atanh(sqrt(1 - a*x)*sqrt(1 + a*x))]
    @test_int [ℯ^asech(a*x)/x^3, x, 5, -(1/(3*a*x^3)) - (8*a^2*((1 - a*x)/(1 + a*x))^(3/2))/(3*(1 - (1 - a*x)/(1 + a*x))^3), 1/(6*a*x^3) - ℯ^asech(a*x)/(2*x^2) + sqrt(1 - a*x)/(6*a*x^3*sqrt(1/(1 + a*x))) + (a*sqrt(1 - a*x))/(3*x*sqrt(1/(1 + a*x)))]
    @test_int [ℯ^asech(a*x)/x^4, x, 8, 1/(12*a*x^4) - ℯ^asech(a*x)/(3*x^3) + sqrt(1 - a*x)/(12*a*x^4*sqrt(1/(1 + a*x))) + (a*sqrt(1 - a*x))/(8*x^2*sqrt(1/(1 + a*x))) + (1/8)*a^3*sqrt(1/(1 + a*x))*sqrt(1 + a*x)*atanh(sqrt(1 - a*x)*sqrt(1 + a*x))]
    @test_int [ℯ^asech(a*x)/x^5, x, 7, 1/(20*a*x^5) - ℯ^asech(a*x)/(4*x^4) + sqrt(1 - a*x)/(20*a*x^5*sqrt(1/(1 + a*x))) + (a*sqrt(1 - a*x))/(15*x^3*sqrt(1/(1 + a*x))) + (2*a^3*sqrt(1 - a*x))/(15*x*sqrt(1/(1 + a*x)))]
    @test_int [ℯ^asech(a*x)/x^6, x, 10, 1/(30*a*x^6) - ℯ^asech(a*x)/(5*x^5) + sqrt(1 - a*x)/(30*a*x^6*sqrt(1/(1 + a*x))) + (a*sqrt(1 - a*x))/(24*x^4*sqrt(1/(1 + a*x))) + (a^3*sqrt(1 - a*x))/(16*x^2*sqrt(1/(1 + a*x))) + (1/16)*a^5*sqrt(1/(1 + a*x))*sqrt(1 + a*x)*atanh(sqrt(1 - a*x)*sqrt(1 + a*x))]
    @test_int [ℯ^asech(a*x)/x^7, x, 9, 1/(42*a*x^7) - ℯ^asech(a*x)/(6*x^6) + sqrt(1 - a*x)/(42*a*x^7*sqrt(1/(1 + a*x))) + (a*sqrt(1 - a*x))/(35*x^5*sqrt(1/(1 + a*x))) + (4*a^3*sqrt(1 - a*x))/(105*x^3*sqrt(1/(1 + a*x))) + (8*a^5*sqrt(1 - a*x))/(105*x*sqrt(1/(1 + a*x)))]
    @test_int [ℯ^asech(a*x)/x^8, x, 12, 1/(56*a*x^8) - ℯ^asech(a*x)/(7*x^7) + sqrt(1 - a*x)/(56*a*x^8*sqrt(1/(1 + a*x))) + (a*sqrt(1 - a*x))/(48*x^6*sqrt(1/(1 + a*x))) + (5*a^3*sqrt(1 - a*x))/(192*x^4*sqrt(1/(1 + a*x))) + (5*a^5*sqrt(1 - a*x))/(128*x^2*sqrt(1/(1 + a*x))) + (5/128)*a^7*sqrt(1/(1 + a*x))*sqrt(1 + a*x)*atanh(sqrt(1 - a*x)*sqrt(1 + a*x))]


    #= Mathematica*8*is*unable*to*validate*some*of*the*following*antiderivatives. =#
    @test_int [ℯ^asech(a*x^2)*x^7, x, 6, x^6/(24*a) + (1/8)*ℯ^asech(a*x^2)*x^8 - (x^2*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*sqrt(1 - a^2*x^4))/(16*a^3) + (sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*asin(a*x^2))/(16*a^4)]
    @test_int [ℯ^asech(a*x^2)*x^6, x, 5, (2*x^5)/(35*a) + (1/7)*ℯ^asech(a*x^2)*x^7 - (2*x*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*sqrt(1 - a^2*x^4))/(21*a^3) + (2*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*EllipticF(asin(sqrt(a)*x), -1))/(21*a^(7/2))]
    @test_int [ℯ^asech(a*x^2)*x^5, x, 4, x^4/(12*a) + (1/6)*ℯ^asech(a*x^2)*x^6 - sqrt(1 - a*x^2)/(6*a^3*sqrt(1/(1 + a*x^2))), x^4/(12*a) + (1/6)*ℯ^asech(a*x^2)*x^6 - (sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*sqrt(1 - a^2*x^4))/(6*a^3)]
    @test_int [ℯ^asech(a*x^2)*x^4, x, 7, (2*x^3)/(15*a) + (1/5)*ℯ^asech(a*x^2)*x^5 + (2*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*EllipticE(asin(sqrt(a)*x), -1))/(5*a^(5/2)) - (2*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*EllipticF(asin(sqrt(a)*x), -1))/(5*a^(5/2))]
    @test_int [ℯ^asech(a*x^2)*x^3, x, 5, x^2/(4*a) + (1/4)*ℯ^asech(a*x^2)*x^4 + (sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*asin(a*x^2))/(4*a^2)]
    @test_int [ℯ^asech(a*x^2)*x^2, x, 4, (2*x)/(3*a) + (1/3)*ℯ^asech(a*x^2)*x^3 + (2*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*EllipticF(asin(sqrt(a)*x), -1))/(3*a^(3/2))]
    @test_int [ℯ^asech(a*x^2)*x^1, x, 6, (1/2)*ℯ^asech(a*x^2)*x^2 - (sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*atanh(sqrt(1 - a^2*x^4)))/(2*a) + log(x)/a]
    @test_int [ℯ^asech(a*x^2)*x^0, x, 8, -(2/(a*x)) + ℯ^asech(a*x^2)*x - (2*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*sqrt(1 - a^2*x^4))/(a*x) - (2*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*EllipticE(asin(sqrt(a)*x), -1))/sqrt(a) + (2*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*EllipticF(asin(sqrt(a)*x), -1))/sqrt(a)]
    @test_int [ℯ^asech(a*x^2)/x^1, x, 5, -(1/(2*a*x^2)) - sqrt(1 - a*x^2)/(2*a*x^2*sqrt(1/(1 + a*x^2))) - (1/2)*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*asin(a*x^2), -(1/(2*a*x^2)) - (sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*sqrt(1 - a^2*x^4))/(2*a*x^2) - (1/2)*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*asin(a*x^2)]
    @test_int [ℯ^asech(a*x^2)/x^2, x, 5, 2/(3*a*x^3) - ℯ^asech(a*x^2)/x + (2*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*sqrt(1 - a^2*x^4))/(3*a*x^3) - (2/3)*sqrt(a)*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*EllipticF(asin(sqrt(a)*x), -1)]
    @test_int [ℯ^asech(a*x^2)/x^3, x, 7, 1/(4*a*x^4) - ℯ^asech(a*x^2)/(2*x^2) + (sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*sqrt(1 - a^2*x^4))/(4*a*x^4) + (1/4)*a*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*atanh(sqrt(1 - a^2*x^4))]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^asech(a*x^p)*with*m*symbolic=#


    @test_int [ℯ^asech(a*x^3)*x^m, x, 4, -((3*x^(-2 + m))/(a*(2 + m - m^2))) + (ℯ^asech(a*x^3)*x^(1 + m))/(1 + m) - (3*x^(-2 + m)*sqrt(1/(1 + a*x^3))*sqrt(1 + a*x^3)*Hypergeometric2F1(1/2, (1/6)*(-2 + m), (4 + m)/6, a^2*x^6))/(a*(2 + m - m^2))]
    @test_int [ℯ^asech(a*x^2)*x^m, x, 4, -((2*x^(-1 + m))/(a*(1 - m^2))) + (ℯ^asech(a*x^2)*x^(1 + m))/(1 + m) - (2*x^(-1 + m)*sqrt(1/(1 + a*x^2))*sqrt(1 + a*x^2)*Hypergeometric2F1(1/2, (1/4)*(-1 + m), (3 + m)/4, a^2*x^4))/(a*(1 - m^2))]
    @test_int [ℯ^asech(a*x^1)*x^m, x, 4, x^m/(a*m*(1 + m)) + (ℯ^asech(a*x)*x^(1 + m))/(1 + m) + (x^m*sqrt(1/(1 + a*x))*sqrt(1 + a*x)*Hypergeometric2F1(1/2, m/2, (2 + m)/2, a^2*x^2))/(a*m*(1 + m))]
    @test_int [ℯ^asech(a/x^1)*x^m, x, 5, (ℯ^asech(a/x)*x^(1 + m))/(1 + m) - x^(2 + m)/(a*(2 + 3*m + m^2)) - (sqrt(1/(1 + a/x))*sqrt(1 + a/x)*x^(2 + m)*Hypergeometric2F1(1/2, (1/2)*(-2 - m), -(m/2), a^2/x^2))/(a*(2 + 3*m + m^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^asech(a*x^p)*with*p*symbolic=#


    @test_int [ℯ^asech(a*x^p)*x^m, x, 4,  (ℯ^asech(a*x^p)*x^(1 + m))/(1 + m) + (p*x^(1 + m - p))/(a*(1 + m)*(1 + m - p)) + (p*x^(1 + m - p)*sqrt(1/(1 + a*x^p))*sqrt(1 + a*x^p)*Hypergeometric2F1(1/2, (1 + m - p)/(2*p), (1 + m + p)/(2*p), a^2*x^(2*p)))/(a*(1 + m)*(1 + m - p))]


    @test_int [ℯ^asech(a*x^p)*x^1, x, 4, (1/2)*ℯ^asech(a*x^p)*x^2 + (p*x^(2 - p))/(2*a*(2 - p)) + (p*x^(2 - p)*sqrt(1/(1 + a*x^p))*sqrt(1 + a*x^p)*Hypergeometric2F1(1/2, (1/2)*(-1 + 2/p), (1/2)*(1 + 2/p), a^2*x^(2*p)))/(2*a*(2 - p))]
    @test_int [ℯ^asech(a*x^p)*x^0, x, 4, ℯ^asech(a*x^p)*x + (p*x^(1 - p))/(a*(1 - p)) + (p*x^(1 - p)*sqrt(1/(1 + a*x^p))*sqrt(1 + a*x^p)*Hypergeometric2F1(1/2, (1/2)*(-1 + 1/p), (1 + p)/(2*p), a^2*x^(2*p)))/(a*(1 - p))]
    @test_int [ℯ^asech(a*x^p)/x^1, x, 6, -(1/(x^p*(a*p))) - sqrt(1 - a*x^p)/(x^p*(a*p*sqrt(1/(1 + a*x^p)))) - (sqrt(1/(1 + a*x^p))*sqrt(1 + a*x^p)*asin(a*x^p))/p, -(1/(x^p*(a*p))) - (sqrt(1/(1 + a*x^p))*sqrt(1 + a*x^p)*sqrt(1 - a^2*x^(2*p)))/(x^p*(a*p)) - (sqrt(1/(1 + a*x^p))*sqrt(1 + a*x^p)*acsc(1/(x^p*a)))/p]
    @test_int [ℯ^asech(a*x^p)/x^2, x, 4, -(ℯ^asech(a*x^p)/x) + (p*x^(-1 - p))/(a*(1 + p)) + (1/(a*(1 + p)))*(p*x^(-1 - p)*sqrt(1/(1 + a*x^p))*sqrt(1 + a*x^p)*Hypergeometric2F1(1/2, -((1 + p)/(2*p)), -((1 - p)/(2*p)), a^2*x^(2*p)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(n*asech(a*x))=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    #= [ℯ^(2*asech(a*x))*x^m, x, 14, 0] =#

    @test_int [ℯ^(2*asech(a*x))*x^4, x, 9, (5*sqrt((1 - a*x)/(1 + a*x))*(1 + a*x)^2)/(4*a^5) + ((1 - a*x)*(1 + a*x)^4)/(5*a^5) + (sqrt((1 - a*x)/(1 + a*x))*(1 + a*x)^4*(5 - 6*sqrt((1 - a*x)/(1 + a*x))))/(10*a^5) + ((1 + a*x)*(4 - sqrt((1 - a*x)/(1 + a*x))))/(4*a^5) - ((1 + a*x)^3*(4 + 45*sqrt((1 - a*x)/(1 + a*x))))/(30*a^5) - atan(sqrt((1 - a*x)/(1 + a*x)))/(2*a^5)]
    @test_int [ℯ^(2*asech(a*x))*x^3, x, 8, -(x/a^3) + ((1 - a*x)*(1 + a*x)^3)/(4*a^4) + ((1 + a*x)^2*(3 - 8*sqrt((1 - a*x)/(1 + a*x))))/(6*a^4) + (sqrt((1 - a*x)/(1 + a*x))*(1 + a*x)^3*(4 - 3*sqrt((1 - a*x)/(1 + a*x))))/(6*a^4)]
    @test_int [ℯ^(2*asech(a*x))*x^2, x, 7, ((1 + a*x)*(1 - sqrt((1 - a*x)/(1 + a*x)))*(1 + sqrt((1 - a*x)/(1 + a*x))))/(2*a^3) - (sqrt((1 - a*x)/(1 + a*x))*(1 + a*x)^2*(1 + sqrt((1 - a*x)/(1 + a*x)))^3)/(6*a^3) + ((1 + a*x)^3*(1 + sqrt((1 - a*x)/(1 + a*x)))^4)/(12*a^3) - (2*atan(sqrt((1 - a*x)/(1 + a*x))))/a^3]
    @test_int [ℯ^(2*asech(a*x))*x^1, x, 8, -((1 + a*x)^2/(2*a^2)) + ((1 + a*x)*(1 + 2*sqrt((1 - a*x)/(1 + a*x))))/a^2 + (2*log(1 + a*x))/a^2 + (4*log(1 - sqrt((1 - a*x)/(1 + a*x))))/a^2]
    @test_int [ℯ^(2*asech(a*x))*x^0, x, 7, -x - 4/(a*(1 - sqrt((1 - a*x)/(1 + a*x)))) + (4*atan(sqrt((1 - a*x)/(1 + a*x))))/a]
    @test_int [ℯ^(2*asech(a*x))/x^1, x, 5, -(2/(1 - sqrt((1 - a*x)/(1 + a*x)))^2) + 2/(1 - sqrt((1 - a*x)/(1 + a*x))) - log(1 + a*x) - 2*log(1 - sqrt((1 - a*x)/(1 + a*x)))]
    @test_int [ℯ^(2*asech(a*x))/x^2, x, 4, -((4*a)/(3*(1 - sqrt((1 - a*x)/(1 + a*x)))^3)) + (2*a)/(1 - sqrt((1 - a*x)/(1 + a*x)))^2]
    @test_int [ℯ^(2*asech(a*x))/x^3, x, 5, -(a^2/(1 - sqrt((1 - a*x)/(1 + a*x)))^4) + (2*a^2)/(1 - sqrt((1 - a*x)/(1 + a*x)))^3 - (3*a^2)/(2*(1 - sqrt((1 - a*x)/(1 + a*x)))^2) + a^2/(2*(1 - sqrt((1 - a*x)/(1 + a*x)))) + (1/2)*a^2*atanh(sqrt((1 - a*x)/(1 + a*x)))]
    @test_int [ℯ^(2*asech(a*x))/x^4, x, 4, -((4*a^3)/(5*(1 - sqrt((1 - a*x)/(1 + a*x)))^5)) + (2*a^3)/(1 - sqrt((1 - a*x)/(1 + a*x)))^4 - (7*a^3)/(3*(1 - sqrt((1 - a*x)/(1 + a*x)))^3) + (3*a^3)/(2*(1 - sqrt((1 - a*x)/(1 + a*x)))^2) - a^3/(4*(1 - sqrt((1 - a*x)/(1 + a*x)))) - a^3/(4*(1 + sqrt((1 - a*x)/(1 + a*x))))]
    @test_int [ℯ^(2*asech(a*x))/x^5, x, 5, -((2*a^4)/(3*(1 - sqrt((1 - a*x)/(1 + a*x)))^6)) + (2*a^4)/(1 - sqrt((1 - a*x)/(1 + a*x)))^5 - (3*a^4)/(1 - sqrt((1 - a*x)/(1 + a*x)))^4 + (8*a^4)/(3*(1 - sqrt((1 - a*x)/(1 + a*x)))^3) - (11*a^4)/(8*(1 - sqrt((1 - a*x)/(1 + a*x)))^2) + (3*a^4)/(8*(1 - sqrt((1 - a*x)/(1 + a*x)))) - a^4/(8*(1 + sqrt((1 - a*x)/(1 + a*x)))^2) + a^4/(8*(1 + sqrt((1 - a*x)/(1 + a*x)))) + (1/4)*a^4*atanh(sqrt((1 - a*x)/(1 + a*x)))]
    @test_int [ℯ^(2*asech(a*x))/x^6, x, 4, -((4*a^5)/(7*(1 - sqrt((1 - a*x)/(1 + a*x)))^7)) + (2*a^5)/(1 - sqrt((1 - a*x)/(1 + a*x)))^6 - (18*a^5)/(5*(1 - sqrt((1 - a*x)/(1 + a*x)))^5) + (4*a^5)/(1 - sqrt((1 - a*x)/(1 + a*x)))^4 - (35*a^5)/(12*(1 - sqrt((1 - a*x)/(1 + a*x)))^3) + (11*a^5)/(8*(1 - sqrt((1 - a*x)/(1 + a*x)))^2) - a^5/(4*(1 - sqrt((1 - a*x)/(1 + a*x)))) - a^5/(12*(1 + sqrt((1 - a*x)/(1 + a*x)))^3) + a^5/(8*(1 + sqrt((1 - a*x)/(1 + a*x)))^2) - a^5/(4*(1 + sqrt((1 - a*x)/(1 + a*x))))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    #= [ℯ^(-asech(a*x))*x^m, x, 7, 0] =#

    @test_int [ℯ^(-asech(a*x))*x^4, x, 8, -(x/a^4) - (sqrt((1 - a*x)/(1 + a*x))*(1 + a*x)^5)/(5*a^5) + ((1 + a*x)^2*(9 + 4*sqrt((1 - a*x)/(1 + a*x))))/(6*a^5) + ((1 + a*x)^4*(5 + 16*sqrt((1 - a*x)/(1 + a*x))))/(20*a^5) - ((1 + a*x)^3*(15 + 17*sqrt((1 - a*x)/(1 + a*x))))/(15*a^5)]
    @test_int [ℯ^(-asech(a*x))*x^3, x, 7, -((sqrt((1 - a*x)/(1 + a*x))*(1 + a*x)^4)/(4*a^4)) + ((1 + a*x)*(8 + sqrt((1 - a*x)/(1 + a*x))))/(8*a^4) - ((1 + a*x)^2*(8 + 5*sqrt((1 - a*x)/(1 + a*x))))/(8*a^4) + ((1 + a*x)^3*(4 + 9*sqrt((1 - a*x)/(1 + a*x))))/(12*a^4) + atan(sqrt((1 - a*x)/(1 + a*x)))/(4*a^4)]
    @test_int [ℯ^(-asech(a*x))*x^2, x, 6, -(x/a^2) - (sqrt((1 - a*x)/(1 + a*x))*(1 + a*x)^3)/(3*a^3) + ((1 + a*x)^2*(3 + 4*sqrt((1 - a*x)/(1 + a*x))))/(6*a^3)]
    @test_int [ℯ^(-asech(a*x))*x^1, x, 5, ((1 + a*x)^2*(1 - sqrt((1 - a*x)/(1 + a*x)))^2)/(4*a^2) + ((1 + a*x)*(1 + sqrt((1 - a*x)/(1 + a*x))))/(2*a^2) + atan(sqrt((1 - a*x)/(1 + a*x)))/a^2]
    @test_int [ℯ^(-asech(a*x))*x^0, x, 6, -((sqrt((1 - a*x)/(1 + a*x))*(1 + a*x))/a) + log(1 + a*x)/a + (2*log(1 + sqrt((1 - a*x)/(1 + a*x))))/a]
    @test_int [ℯ^(-asech(a*x))/x^1, x, 5, -(2/(1 + sqrt((1 - a*x)/(1 + a*x)))) - 2*atan(sqrt((1 - a*x)/(1 + a*x)))]
    @test_int [ℯ^(-asech(a*x))/x^2, x, 5, -(a/(1 + sqrt((1 - a*x)/(1 + a*x)))^2) + a/(1 + sqrt((1 - a*x)/(1 + a*x))) - a*atanh(sqrt((1 - a*x)/(1 + a*x)))]
    @test_int [ℯ^(-asech(a*x))/x^3, x, 4, -(a^2/(2*(1 - sqrt((1 - a*x)/(1 + a*x))))) - (2*a^2)/(3*(1 + sqrt((1 - a*x)/(1 + a*x)))^3) + a^2/(1 + sqrt((1 - a*x)/(1 + a*x)))^2 - a^2/(2*(1 + sqrt((1 - a*x)/(1 + a*x))))]
    @test_int [ℯ^(-asech(a*x))/x^4, x, 5, -(a^3/(4*(1 - sqrt((1 - a*x)/(1 + a*x)))^2)) + a^3/(4*(1 - sqrt((1 - a*x)/(1 + a*x)))) - a^3/(2*(1 + sqrt((1 - a*x)/(1 + a*x)))^4) + a^3/(1 + sqrt((1 - a*x)/(1 + a*x)))^3 - a^3/(1 + sqrt((1 - a*x)/(1 + a*x)))^2 + a^3/(2*(1 + sqrt((1 - a*x)/(1 + a*x)))) - (1/4)*a^3*atanh(sqrt((1 - a*x)/(1 + a*x)))]
    @test_int [ℯ^(-asech(a*x))/x^5, x, 4, -(a^4/(6*(1 - sqrt((1 - a*x)/(1 + a*x)))^3)) + a^4/(4*(1 - sqrt((1 - a*x)/(1 + a*x)))^2) - (3*a^4)/(8*(1 - sqrt((1 - a*x)/(1 + a*x)))) - (2*a^4)/(5*(1 + sqrt((1 - a*x)/(1 + a*x)))^5) + a^4/(1 + sqrt((1 - a*x)/(1 + a*x)))^4 - (4*a^4)/(3*(1 + sqrt((1 - a*x)/(1 + a*x)))^3) + a^4/(1 + sqrt((1 - a*x)/(1 + a*x)))^2 - (3*a^4)/(8*(1 + sqrt((1 - a*x)/(1 + a*x))))]
    @test_int [ℯ^(-asech(a*x))/x^6, x, 5, -(a^5/(8*(1 - sqrt((1 - a*x)/(1 + a*x)))^4)) + a^5/(4*(1 - sqrt((1 - a*x)/(1 + a*x)))^3) - (3*a^5)/(8*(1 - sqrt((1 - a*x)/(1 + a*x)))^2) + a^5/(4*(1 - sqrt((1 - a*x)/(1 + a*x)))) - a^5/(3*(1 + sqrt((1 - a*x)/(1 + a*x)))^6) + a^5/(1 + sqrt((1 - a*x)/(1 + a*x)))^5 - (13*a^5)/(8*(1 + sqrt((1 - a*x)/(1 + a*x)))^4) + (19*a^5)/(12*(1 + sqrt((1 - a*x)/(1 + a*x)))^3) - a^5/(1 + sqrt((1 - a*x)/(1 + a*x)))^2 + (3*a^5)/(8*(1 + sqrt((1 - a*x)/(1 + a*x)))) - (1/8)*a^5*atanh(sqrt((1 - a*x)/(1 + a*x)))]
    @test_int [ℯ^(-asech(a*x))/x^7, x, 4, -(a^6/(10*(1 - sqrt((1 - a*x)/(1 + a*x)))^5)) + a^6/(4*(1 - sqrt((1 - a*x)/(1 + a*x)))^4) - (5*a^6)/(12*(1 - sqrt((1 - a*x)/(1 + a*x)))^3) + (3*a^6)/(8*(1 - sqrt((1 - a*x)/(1 + a*x)))^2) - (5*a^6)/(16*(1 - sqrt((1 - a*x)/(1 + a*x)))) - (2*a^6)/(7*(1 + sqrt((1 - a*x)/(1 + a*x)))^7) + a^6/(1 + sqrt((1 - a*x)/(1 + a*x)))^6 - (19*a^6)/(10*(1 + sqrt((1 - a*x)/(1 + a*x)))^5) + (9*a^6)/(4*(1 + sqrt((1 - a*x)/(1 + a*x)))^4) - (11*a^6)/(6*(1 + sqrt((1 - a*x)/(1 + a*x)))^3) + a^6/(1 + sqrt((1 - a*x)/(1 + a*x)))^2 - (5*a^6)/(16*(1 + sqrt((1 - a*x)/(1 + a*x))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(n*asech(a*x)) / (1-a^2*x^2)=#


    @test_int [(d*x)^m*ℯ^asech(c*x)/(1 - c^2*x^2), x, 5, ((d*x)^m*sqrt(1/(1 + c*x))*sqrt(1 + c*x)*Hypergeometric2F1(1/2, m/2, (2 + m)/2, c^2*x^2))/(c*m) + ((d*x)^m*Hypergeometric2F1(1, m/2, (2 + m)/2, c^2*x^2))/(c*m)]


    @test_int [x^4*ℯ^asech(c*x)/(1 - c^2*x^2), x, 8, -(x^2/(2*c^3)) - (2*sqrt(1 - c*x))/(3*c^5*sqrt(1/(1 + c*x))) - (x^2*sqrt(1 - c*x))/(3*c^3*sqrt(1/(1 + c*x))) - log(1 - c^2*x^2)/(2*c^5)]
    @test_int [x^3*ℯ^asech(c*x)/(1 - c^2*x^2), x, 7, -(x/c^3) - (x*sqrt(1 - c*x))/(2*c^3*sqrt(1/(1 + c*x))) + (sqrt(1/(1 + c*x))*sqrt(1 + c*x)*asin(c*x))/(2*c^4) + atanh(c*x)/c^4]
    @test_int [x^2*ℯ^asech(c*x)/(1 - c^2*x^2), x, 4, -(sqrt(1 - c*x)/(c^3*sqrt(1/(1 + c*x)))) - log(1 - c^2*x^2)/(2*c^3)]
    @test_int [x^1*ℯ^asech(c*x)/(1 - c^2*x^2), x, 5, (sqrt(1/(1 + c*x))*sqrt(1 + c*x)*asin(c*x))/c^2 + atanh(c*x)/c^2]
    @test_int [x^0*ℯ^asech(c*x)/(1 - c^2*x^2), x, 8, -((sqrt(1/(1 + c*x))*sqrt(1 + c*x)*atanh(sqrt(1 - c*x)*sqrt(1 + c*x)))/c) + log(x)/c - log(1 - c^2*x^2)/(2*c)]
    @test_int [ℯ^asech(c*x)/(x^1*(1 - c^2*x^2)), x, 5, -(1/(c*x)) - sqrt(1 - c*x)/(c*x*sqrt(1/(1 + c*x))) + atanh(c*x)]
    @test_int [ℯ^asech(c*x)/(x^2*(1 - c^2*x^2)), x, 9, -(1/(2*c*x^2)) - sqrt(1 - c*x)/(2*c*x^2*sqrt(1/(1 + c*x))) - (1/2)*c*sqrt(1/(1 + c*x))*sqrt(1 + c*x)*atanh(sqrt(1 - c*x)*sqrt(1 + c*x)) + c*log(x) - (1/2)*c*log(1 - c^2*x^2)]
    @test_int [ℯ^asech(c*x)/(x^3*(1 - c^2*x^2)), x, 8, -(1/(3*c*x^3)) - c/x - sqrt(1 - c*x)/(3*c*x^3*sqrt(1/(1 + c*x))) - (2*c*sqrt(1 - c*x))/(3*x*sqrt(1/(1 + c*x))) + c^2*atanh(c*x)]


    @test_int [x*(a*x*ℯ^asech(a*x) - 1)/(1 - a^2*x^2), x, 7, -(ℯ^asech(a*x)*x)/a, -(sqrt(1 - a*x)/(a^2*sqrt(1/(1 + a*x))))]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*inverse*hyperbolic*secants=#


    @test_int [asech(a + b*x)/((a*d)/b + d*x), x, 8, asech(a + b*x)^2/(2*d) - (asech(a + b*x)*log(1 + ℯ^(2*asech(a + b*x))))/d - PolyLog(2, -ℯ^(2*asech(a + b*x)))/(2*d)]


    @test_int [x^3*asech(a + b*x^4), x, 5, ((a + b*x^4)*asech(a + b*x^4))/(4*b) - atan(sqrt((1 - a - b*x^4)/(1 + a + b*x^4)))/(2*b)]

    @test_int [x^(n-1)*asech(a + b*x^n), x, 5, ((a + b*x^n)*asech(a + b*x^n))/(b*n) - (2*atan(sqrt((1 - a - b*x^n)/(1 + a + b*x^n))))/(b*n)]
    end
