@testset "5.5.2 Inverse secant functions" begin
    (a, b, c, d, n, x, ) = @variables a b c d n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Inverse*Secants=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*asec(a*x^n)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*asec(a*x^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [asec(a*x^5)/x, x, 7, (1/10)*im*asec(a*x^5)^2 - (1/5)*asec(a*x^5)*log(1 + ℯ^(2*im*asec(a*x^5))) + (1/10)*im*PolyLog(2, -ℯ^(2*im*asec(a*x^5)))]


    @test_int [x^3*asec(sqrt(x)), x, 4, (-(1/4))*sqrt(-1 + x) - (1/4)*(-1 + x)^(3/2) - (3/20)*(-1 + x)^(5/2) - (1/28)*(-1 + x)^(7/2) + (1/4)*x^4*asec(sqrt(x))]
    @test_int [x^2*asec(sqrt(x)), x, 4, (-(1/3))*sqrt(-1 + x) - (2/9)*(-1 + x)^(3/2) - (1/15)*(-1 + x)^(5/2) + (1/3)*x^3*asec(sqrt(x))]
    @test_int [x^1*asec(sqrt(x)), x, 4, (-(1/2))*sqrt(-1 + x) - (1/6)*(-1 + x)^(3/2) + (1/2)*x^2*asec(sqrt(x))]
    @test_int [x^0*asec(sqrt(x)), x, 3, -sqrt(-1 + x) + x*asec(sqrt(x))]
    @test_int [asec(sqrt(x))/x^1, x, 7, im*asec(sqrt(x))^2 - 2*asec(sqrt(x))*log(1 + ℯ^(2*im*asec(sqrt(x)))) + im*PolyLog(2, -ℯ^(2*im*asec(sqrt(x))))]
    @test_int [asec(sqrt(x))/x^2, x, 5, sqrt(-1 + x)/(2*x) - asec(sqrt(x))/x + (1/2)*atan(sqrt(-1 + x))]
    @test_int [asec(sqrt(x))/x^3, x, 6, sqrt(-1 + x)/(8*x^2) + (3*sqrt(-1 + x))/(16*x) - asec(sqrt(x))/(2*x^2) + (3/16)*atan(sqrt(-1 + x))]
    @test_int [asec(sqrt(x))/x^4, x, 7, sqrt(-1 + x)/(18*x^3) + (5*sqrt(-1 + x))/(72*x^2) + (5*sqrt(-1 + x))/(48*x) - asec(sqrt(x))/(3*x^3) + (5/48)*atan(sqrt(-1 + x))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^2*asec(a/x), x, 5, (-(1/3))*a^3*sqrt(1 - x^2/a^2) + (1/9)*a^3*(1 - x^2/a^2)^(3/2) + (1/3)*x^3*acos(x/a)]
    @test_int [x^1*asec(a/x), x, 4, (-(1/4))*a*x*sqrt(1 - x^2/a^2) + (1/2)*x^2*acos(x/a) + (1/4)*a^2*asin(x/a)]
    @test_int [x^0*asec(a/x), x, 3, (-a)*sqrt(1 - x^2/a^2) + x*acos(x/a)]
    @test_int [asec(a/x)/x^1, x, 6, (-(1/2))*im*acos(x/a)^2 + acos(x/a)*log(1 + ℯ^(2*im*acos(x/a))) - (1/2)*im*PolyLog(2, -ℯ^(2*im*acos(x/a)))]
    @test_int [asec(a/x)/x^2, x, 5, -(acos(x/a)/x) + atanh(sqrt(1 - x^2/a^2))/a]
    @test_int [asec(a/x)/x^3, x, 3, sqrt(1 - x^2/a^2)/(2*a*x) - acos(x/a)/(2*x^2)]
    @test_int [asec(a/x)/x^4, x, 6, sqrt(1 - x^2/a^2)/(6*a*x^2) - acos(x/a)/(3*x^3) + atanh(sqrt(1 - x^2/a^2))/(6*a^3)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*asec(a*x^n)*when*n*symbolic=#


    @test_int [asec(a*x^n)/x, x, 7, (im*asec(a*x^n)^2)/(2*n) - (asec(a*x^n)*log(1 + ℯ^(2*im*asec(a*x^n))))/n + (im*PolyLog(2, -ℯ^(2*im*asec(a*x^n))))/(2*n)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*asec(a+b*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^4*asec(a + b*x), x, 9, (a*(20 + 53*a^2)*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(30*b^5) + (11*a*x^2*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(60*b^3) - (x^3*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(20*b^2) - ((9 + 58*a^2)*(a + b*x)^2*sqrt(1 - 1/(a + b*x)^2))/(120*b^5) + (a^5*asec(a + b*x))/(5*b^5) + (1/5)*x^5*asec(a + b*x) - ((3 + 40*a^2 + 40*a^4)*atanh(sqrt(1 - 1/(a + b*x)^2)))/(40*b^5)]
    @test_int [x^3*asec(a + b*x), x, 8, -(((2 + 17*a^2)*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(12*b^4)) - (x^2*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(12*b^2) + (a*(a + b*x)^2*sqrt(1 - 1/(a + b*x)^2))/(3*b^4) - (a^4*asec(a + b*x))/(4*b^4) + (1/4)*x^4*asec(a + b*x) + (a*(1 + 2*a^2)*atanh(sqrt(1 - 1/(a + b*x)^2)))/(2*b^4)]
    @test_int [x^2*asec(a + b*x), x, 7, (5*a*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(6*b^3) - (x*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(6*b^2) + (a^3*asec(a + b*x))/(3*b^3) + (1/3)*x^3*asec(a + b*x) - ((1 + 6*a^2)*atanh(sqrt(1 - 1/(a + b*x)^2)))/(6*b^3)]
    @test_int [x^1*asec(a + b*x), x, 6, -(((a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(2*b^2)) - (a^2*asec(a + b*x))/(2*b^2) + (1/2)*x^2*asec(a + b*x) + (a*atanh(sqrt(1 - 1/(a + b*x)^2)))/b^2]
    @test_int [x^0*asec(a + b*x), x, 5, ((a + b*x)*asec(a + b*x))/b - atanh(sqrt(1 - 1/(a + b*x)^2))/b]
    @test_int [asec(a + b*x)/x^1, x, 14, asec(a + b*x)*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))) + asec(a + b*x)*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))) - asec(a + b*x)*log(1 + ℯ^(2*im*asec(a + b*x))) - im*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))) - im*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))) + (1/2)*im*PolyLog(2, -ℯ^(2*im*asec(a + b*x)))]
    @test_int [asec(a + b*x)/x^2, x, 5, -((b*asec(a + b*x))/a) - asec(a + b*x)/x + (2*b*atan((sqrt(1 + a)*tan((1/2)*asec(a + b*x)))/sqrt(1 - a)))/(a*sqrt(1 - a^2))]
    @test_int [asec(a + b*x)/x^3, x, 7, (b*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(2*a*(1 - a^2)*x) + (b^2*asec(a + b*x))/(2*a^2) - asec(a + b*x)/(2*x^2) - ((1 - 2*a^2)*b^2*atan((sqrt(1 + a)*tan((1/2)*asec(a + b*x)))/sqrt(1 - a)))/(a^2*(1 - a^2)^(3/2))]
    @test_int [asec(a + b*x)/x^4, x, 8, (b*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(6*a*(1 - a^2)*x^2) - ((2 - 5*a^2)*b^2*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(6*a^2*(1 - a^2)^2*x) - (b^3*asec(a + b*x))/(3*a^3) - asec(a + b*x)/(3*x^3) + ((2 - 5*a^2 + 6*a^4)*b^3*atan((sqrt(1 + a)*tan((1/2)*asec(a + b*x)))/sqrt(1 - a)))/(3*a^3*(1 - a^2)^(5/2))]


    @test_int [x^3*asec(a + b*x)^2, x, 20, -((a*x)/b^3) + (a + b*x)^2/(12*b^4) - ((a + b*x)*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x))/(3*b^4) - (3*a^2*(a + b*x)*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x))/b^4 + (a*(a + b*x)^2*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x))/b^4 - ((a + b*x)^3*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x))/(6*b^4) - (a^4*asec(a + b*x)^2)/(4*b^4) + (1/4)*x^4*asec(a + b*x)^2 - (2*im*a*asec(a + b*x)*atan(ℯ^(im*asec(a + b*x))))/b^4 - (4*im*a^3*asec(a + b*x)*atan(ℯ^(im*asec(a + b*x))))/b^4 + log(a + b*x)/(3*b^4) + (3*a^2*log(a + b*x))/b^4 + (im*a*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/b^4 + (2*im*a^3*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/b^4 - (im*a*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/b^4 - (2*im*a^3*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/b^4]
    @test_int [x^2*asec(a + b*x)^2, x, 17, x/(3*b^2) + (2*a*(a + b*x)*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x))/b^3 - ((a + b*x)^2*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x))/(3*b^3) + (a^3*asec(a + b*x)^2)/(3*b^3) + (1/3)*x^3*asec(a + b*x)^2 + (2*im*asec(a + b*x)*atan(ℯ^(im*asec(a + b*x))))/(3*b^3) + (4*im*a^2*asec(a + b*x)*atan(ℯ^(im*asec(a + b*x))))/b^3 - (2*a*log(a + b*x))/b^3 - (im*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/(3*b^3) - (2*im*a^2*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/b^3 + (im*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/(3*b^3) + (2*im*a^2*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/b^3]
    @test_int [x^1*asec(a + b*x)^2, x, 11, -(((a + b*x)*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x))/b^2) - (a^2*asec(a + b*x)^2)/(2*b^2) + (1/2)*x^2*asec(a + b*x)^2 - (4*im*a*asec(a + b*x)*atan(ℯ^(im*asec(a + b*x))))/b^2 + log(a + b*x)/b^2 + (2*im*a*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/b^2 - (2*im*a*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/b^2]
    @test_int [x^0*asec(a + b*x)^2, x, 8, ((a + b*x)*asec(a + b*x)^2)/b + (4*im*asec(a + b*x)*atan(ℯ^(im*asec(a + b*x))))/b - (2*im*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/b + (2*im*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/b]
    @test_int [asec(a + b*x)^2/x^1, x, 17, (-asec(a + b*x)^2)*log(1 + ℯ^(2*im*asec(a + b*x))) + im*asec(a + b*x)*PolyLog(2, -ℯ^(2*im*asec(a + b*x))) - (1/2)*PolyLog(3, -ℯ^(2*im*asec(a + b*x))) + asec(a + b*x)^2*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))) + asec(a + b*x)^2*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))) - 2*im*asec(a + b*x)*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))) - 2*im*asec(a + b*x)*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))) + 2*PolyLog(3, (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))) + 2*PolyLog(3, (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2)))]
    @test_int [asec(a + b*x)^2/x^2, x, 12, -((b*asec(a + b*x)^2)/a) - asec(a + b*x)^2/x - (2*im*b*asec(a + b*x)*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (2*im*b*asec(a + b*x)*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (2*b*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (2*b*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2))]


    @test_int [x^2*asec(a + b*x)^3, x, 25, ((a + b*x)*asec(a + b*x))/b^3 - (3*im*a*asec(a + b*x)^2)/b^3 + (3*a*(a + b*x)*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x)^2)/b^3 - ((a + b*x)^2*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x)^2)/(2*b^3) + (a^3*asec(a + b*x)^3)/(3*b^3) + (1/3)*x^3*asec(a + b*x)^3 + (im*asec(a + b*x)^2*atan(ℯ^(im*asec(a + b*x))))/b^3 + (6*im*a^2*asec(a + b*x)^2*atan(ℯ^(im*asec(a + b*x))))/b^3 - atanh(sqrt(1 - 1/(a + b*x)^2))/b^3 + (6*a*asec(a + b*x)*log(1 + ℯ^(2*im*asec(a + b*x))))/b^3 - (im*asec(a + b*x)*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/b^3 - (6*im*a^2*asec(a + b*x)*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/b^3 + (im*asec(a + b*x)*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/b^3 + (6*im*a^2*asec(a + b*x)*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/b^3 - (3*im*a*PolyLog(2, -ℯ^(2*im*asec(a + b*x))))/b^3 + PolyLog(3, (-im)*ℯ^(im*asec(a + b*x)))/b^3 + (6*a^2*PolyLog(3, (-im)*ℯ^(im*asec(a + b*x))))/b^3 - PolyLog(3, im*ℯ^(im*asec(a + b*x)))/b^3 - (6*a^2*PolyLog(3, im*ℯ^(im*asec(a + b*x))))/b^3]
    @test_int [x^1*asec(a + b*x)^3, x, 16, (3*im*asec(a + b*x)^2)/(2*b^2) - (3*(a + b*x)*sqrt(1 - 1/(a + b*x)^2)*asec(a + b*x)^2)/(2*b^2) - (a^2*asec(a + b*x)^3)/(2*b^2) + (1/2)*x^2*asec(a + b*x)^3 - (6*im*a*asec(a + b*x)^2*atan(ℯ^(im*asec(a + b*x))))/b^2 - (3*asec(a + b*x)*log(1 + ℯ^(2*im*asec(a + b*x))))/b^2 + (6*im*a*asec(a + b*x)*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/b^2 - (6*im*a*asec(a + b*x)*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/b^2 + (3*im*PolyLog(2, -ℯ^(2*im*asec(a + b*x))))/(2*b^2) - (6*a*PolyLog(3, (-im)*ℯ^(im*asec(a + b*x))))/b^2 + (6*a*PolyLog(3, im*ℯ^(im*asec(a + b*x))))/b^2]
    @test_int [x^0*asec(a + b*x)^3, x, 10, ((a + b*x)*asec(a + b*x)^3)/b + (6*im*asec(a + b*x)^2*atan(ℯ^(im*asec(a + b*x))))/b - (6*im*asec(a + b*x)*PolyLog(2, (-im)*ℯ^(im*asec(a + b*x))))/b + (6*im*asec(a + b*x)*PolyLog(2, im*ℯ^(im*asec(a + b*x))))/b + (6*PolyLog(3, (-im)*ℯ^(im*asec(a + b*x))))/b - (6*PolyLog(3, im*ℯ^(im*asec(a + b*x))))/b]
    @test_int [asec(a + b*x)^3/x^1, x, 20, asec(a + b*x)^3*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))) + asec(a + b*x)^3*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))) - asec(a + b*x)^3*log(1 + ℯ^(2*im*asec(a + b*x))) - 3*im*asec(a + b*x)^2*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))) - 3*im*asec(a + b*x)^2*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))) + (3/2)*im*asec(a + b*x)^2*PolyLog(2, -ℯ^(2*im*asec(a + b*x))) + 6*asec(a + b*x)*PolyLog(3, (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))) + 6*asec(a + b*x)*PolyLog(3, (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))) - (3/2)*asec(a + b*x)*PolyLog(3, -ℯ^(2*im*asec(a + b*x))) + 6*im*PolyLog(4, (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))) + 6*im*PolyLog(4, (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))) - (3/4)*im*PolyLog(4, -ℯ^(2*im*asec(a + b*x)))]
    @test_int [asec(a + b*x)^3/x^2, x, 14, -((b*asec(a + b*x)^3)/a) - asec(a + b*x)^3/x - (3*im*b*asec(a + b*x)^2*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (3*im*b*asec(a + b*x)^2*log(1 - (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (6*b*asec(a + b*x)*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (6*b*asec(a + b*x)*PolyLog(2, (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (6*im*b*PolyLog(3, (a*ℯ^(im*asec(a + b*x)))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (6*im*b*PolyLog(3, (a*ℯ^(im*asec(a + b*x)))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2))]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*asec(c+d*x^n))=#


    @test_int [x^1*(a + b*asec(c + d*x^2)), x, 7, (a*x^2)/2 + (b*(c + d*x^2)*asec(c + d*x^2))/(2*d) - (b*atanh(sqrt(1 - 1/(c + d*x^2)^2)))/(2*d)]


    @test_int [x^2*(a + b*asec(c + d*x^3)), x, 7, (a*x^3)/3 + (b*(c + d*x^3)*asec(c + d*x^3))/(3*d) - (b*atanh(sqrt(1 - 1/(c + d*x^3)^2)))/(3*d)]


    @test_int [x^3*(a + b*asec(c + d*x^4)), x, 7, (a*x^4)/4 + (b*(c + d*x^4)*asec(c + d*x^4))/(4*d) - (b*atanh(sqrt(1 - 1/(c + d*x^4)^2)))/(4*d)]


    @test_int [x^(n-1)*asec(a + b*x^n), x, 6, ((a + b*x^n)*asec(a + b*x^n))/(b*n) - atanh(sqrt(1 - 1/(a + b*x^n)^2))/(b*n)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*inverse*secant*functions*of*exponentials=#


    @test_int [asec(c*ℯ^(a + b*x)), x, 7, (im*asec(c*ℯ^(a + b*x))^2)/(2*b) - (asec(c*ℯ^(a + b*x))*log(1 + ℯ^(2*im*asec(c*ℯ^(a + b*x)))))/b + (im*PolyLog(2, -ℯ^(2*im*asec(c*ℯ^(a + b*x)))))/(2*b)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*exponentials*of*inverse*secant*functions=#


    @test_int [ℯ^asec(a*x)*x^2, x, 6, -(((12/5 + (4*im)/5)*ℯ^((1 + 3*im)*asec(a*x))*HypergeometricFunctions._₂F₁(3/2 - im/2, 3, 5/2 - im/2, -ℯ^(2*im*asec(a*x))))/a^3) + ((24/5 + (8*im)/5)*ℯ^((1 + 3*im)*asec(a*x))*HypergeometricFunctions._₂F₁(3/2 - im/2, 4, 5/2 - im/2, -ℯ^(2*im*asec(a*x))))/a^3]
    @test_int [ℯ^asec(a*x)*x^1, x, 6, -(((8/5 + (4*im)/5)*ℯ^((1 + 2*im)*asec(a*x))*HypergeometricFunctions._₂F₁(1 - im/2, 2, 2 - im/2, -ℯ^(2*im*asec(a*x))))/a^2) + ((16/5 + (8*im)/5)*ℯ^((1 + 2*im)*asec(a*x))*HypergeometricFunctions._₂F₁(1 - im/2, 3, 2 - im/2, -ℯ^(2*im*asec(a*x))))/a^2]
    @test_int [ℯ^asec(a*x)*x^0, x, 5, -(((1 + im)*ℯ^((1 + im)*asec(a*x))*HypergeometricFunctions._₂F₁(1/2 - im/2, 1, 3/2 - im/2, -ℯ^(2*im*asec(a*x))))/a) + ((2 + 2*im)*ℯ^((1 + im)*asec(a*x))*HypergeometricFunctions._₂F₁(1/2 - im/2, 2, 3/2 - im/2, -ℯ^(2*im*asec(a*x))))/a]
    @test_int [ℯ^asec(a*x)/x^1, x, 6, (-im)*ℯ^asec(a*x) + 2*im*ℯ^asec(a*x)*HypergeometricFunctions._₂F₁(-(im/2), 1, 1 - im/2, -ℯ^(2*im*asec(a*x)))]
    @test_int [ℯ^asec(a*x)/x^2, x, 3, (1/2)*a*ℯ^asec(a*x)*sqrt(1 - 1/(a^2*x^2)) - ℯ^asec(a*x)/(2*x)]
    @test_int [ℯ^asec(a*x)/x^3, x, 5, (-(1/5))*a^2*ℯ^asec(a*x)*cos(2*asec(a*x)) + (1/10)*a^2*ℯ^asec(a*x)*sin(2*asec(a*x))]
    @test_int [ℯ^asec(a*x)/x^4, x, 6, (1/8)*a^3*ℯ^asec(a*x)*sqrt(1 - 1/(a^2*x^2)) - (a^2*ℯ^asec(a*x))/(8*x) - (3/40)*a^3*ℯ^asec(a*x)*cos(3*asec(a*x)) + (1/40)*a^3*ℯ^asec(a*x)*sin(3*asec(a*x))]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*inverse*secants=#


    @test_int [asec(a + b*x)/((a*d)/b + d*x), x, 8, (im*asec(a + b*x)^2)/(2*d) - (asec(a + b*x)*log(1 + ℯ^(2*im*asec(a + b*x))))/d + (im*PolyLog(2, -ℯ^(2*im*asec(a + b*x))))/(2*d)]
    end
