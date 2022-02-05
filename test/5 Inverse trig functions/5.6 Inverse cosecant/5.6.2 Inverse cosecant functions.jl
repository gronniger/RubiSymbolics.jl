@testset "5.6.2 Inverse cosecant functions" begin
    @variables a, b, c, d, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Inverse*Cosecants=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*acsc(a*x^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acsc(a*x^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [acsc(a*x^5)/x, x, 7, (1/10)*im*acsc(a*x^5)^2 - (1/5)*acsc(a*x^5)*log(1 - ℯ^(2*im*acsc(a*x^5))) + (1/10)*im*PolyLog(2, ℯ^(2*im*acsc(a*x^5)))]


    @test_int [x^3*acsc(sqrt(x)), x, 4, sqrt(-1 + x)/4 + (1/4)*(-1 + x)^(3/2) + (3/20)*(-1 + x)^(5/2) + (1/28)*(-1 + x)^(7/2) + (1/4)*x^4*acsc(sqrt(x))]
    @test_int [x^2*acsc(sqrt(x)), x, 4, sqrt(-1 + x)/3 + (2/9)*(-1 + x)^(3/2) + (1/15)*(-1 + x)^(5/2) + (1/3)*x^3*acsc(sqrt(x))]
    @test_int [x^1*acsc(sqrt(x)), x, 4, sqrt(-1 + x)/2 + (1/6)*(-1 + x)^(3/2) + (1/2)*x^2*acsc(sqrt(x))]
    @test_int [x^0*acsc(sqrt(x)), x, 3, sqrt(-1 + x) + x*acsc(sqrt(x))]
    @test_int [acsc(sqrt(x))/x^1, x, 7, im*acsc(sqrt(x))^2 - 2*acsc(sqrt(x))*log(1 - ℯ^(2*im*acsc(sqrt(x)))) + im*PolyLog(2, ℯ^(2*im*acsc(sqrt(x))))]
    @test_int [acsc(sqrt(x))/x^2, x, 5, -(sqrt(-1 + x)/(2*x)) - acsc(sqrt(x))/x - (1/2)*atan(sqrt(-1 + x))]
    @test_int [acsc(sqrt(x))/x^3, x, 6, -(sqrt(-1 + x)/(8*x^2)) - (3*sqrt(-1 + x))/(16*x) - acsc(sqrt(x))/(2*x^2) - (3/16)*atan(sqrt(-1 + x))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^2*acsc(a/x), x, 5, (1/3)*a^3*sqrt(1 - x^2/a^2) - (1/9)*a^3*(1 - x^2/a^2)^(3/2) + (1/3)*x^3*asin(x/a)]
    @test_int [x^1*acsc(a/x), x, 4, (1/4)*a*x*sqrt(1 - x^2/a^2) - (1/4)*a^2*asin(x/a) + (1/2)*x^2*asin(x/a)]
    @test_int [x^0*acsc(a/x), x, 3, a*sqrt(1 - x^2/a^2) + x*asin(x/a)]
    @test_int [acsc(a/x)/x^1, x, 6, (-(1/2))*im*asin(x/a)^2 + asin(x/a)*log(1 - ℯ^(2*im*asin(x/a))) - (1/2)*im*PolyLog(2, ℯ^(2*im*asin(x/a)))]
    @test_int [acsc(a/x)/x^2, x, 5, -(asin(x/a)/x) - atanh(sqrt(1 - x^2/a^2))/a]
    @test_int [acsc(a/x)/x^3, x, 3, -(sqrt(1 - x^2/a^2)/(2*a*x)) - asin(x/a)/(2*x^2)]
    @test_int [acsc(a/x)/x^4, x, 6, -(sqrt(1 - x^2/a^2)/(6*a*x^2)) - asin(x/a)/(3*x^3) - atanh(sqrt(1 - x^2/a^2))/(6*a^3)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acsc(a*x^n)*when*n*symbolic=#


    @test_int [acsc(a*x^n)/x, x, 7, (im*acsc(a*x^n)^2)/(2*n) - (acsc(a*x^n)*log(1 - ℯ^(2*im*acsc(a*x^n))))/n + (im*PolyLog(2, ℯ^(2*im*acsc(a*x^n))))/(2*n)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*acsc(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acsc(a+b*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^4*acsc(a + b*x), x, 9, -((a*(20 + 53*a^2)*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(30*b^5)) - (11*a*x^2*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(60*b^3) + (x^3*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(20*b^2) + ((9 + 58*a^2)*(a + b*x)^2*sqrt(1 - 1/(a + b*x)^2))/(120*b^5) + (a^5*acsc(a + b*x))/(5*b^5) + (1/5)*x^5*acsc(a + b*x) + ((3 + 40*a^2 + 40*a^4)*atanh(sqrt(1 - 1/(a + b*x)^2)))/(40*b^5)]
    @test_int [x^3*acsc(a + b*x), x, 8, ((2 + 17*a^2)*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(12*b^4) + (x^2*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(12*b^2) - (a*(a + b*x)^2*sqrt(1 - 1/(a + b*x)^2))/(3*b^4) - (a^4*acsc(a + b*x))/(4*b^4) + (1/4)*x^4*acsc(a + b*x) - (a*(1 + 2*a^2)*atanh(sqrt(1 - 1/(a + b*x)^2)))/(2*b^4)]
    @test_int [x^2*acsc(a + b*x), x, 7, -((5*a*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(6*b^3)) + (x*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(6*b^2) + (a^3*acsc(a + b*x))/(3*b^3) + (1/3)*x^3*acsc(a + b*x) + ((1 + 6*a^2)*atanh(sqrt(1 - 1/(a + b*x)^2)))/(6*b^3)]
    @test_int [x^1*acsc(a + b*x), x, 6, ((a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(2*b^2) - (a^2*acsc(a + b*x))/(2*b^2) + (1/2)*x^2*acsc(a + b*x) - (a*atanh(sqrt(1 - 1/(a + b*x)^2)))/b^2]
    @test_int [x^0*acsc(a + b*x), x, 5, ((a + b*x)*acsc(a + b*x))/b + atanh(sqrt(1 - 1/(a + b*x)^2))/b]
    @test_int [acsc(a + b*x)/x^1, x, 14, acsc(a + b*x)*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2))) + acsc(a + b*x)*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2))) - acsc(a + b*x)*log(1 - ℯ^(2*im*acsc(a + b*x))) - im*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2)))) - im*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2)))) + (1/2)*im*PolyLog(2, ℯ^(2*im*acsc(a + b*x)))]
    @test_int [acsc(a + b*x)/x^2, x, 6, -((b*acsc(a + b*x))/a) - acsc(a + b*x)/x - (2*b*atan((a - tan((1/2)*acsc(a + b*x)))/sqrt(1 - a^2)))/(a*sqrt(1 - a^2))]
    @test_int [acsc(a + b*x)/x^3, x, 8, -((b*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(2*a*(1 - a^2)*x)) + (b^2*acsc(a + b*x))/(2*a^2) - acsc(a + b*x)/(2*x^2) + ((1 - 2*a^2)*b^2*atan((a - tan((1/2)*acsc(a + b*x)))/sqrt(1 - a^2)))/(a^2*(1 - a^2)^(3/2))]
    @test_int [acsc(a + b*x)/x^4, x, 9, -((b*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(6*a*(1 - a^2)*x^2)) + ((2 - 5*a^2)*b^2*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(6*a^2*(1 - a^2)^2*x) - (b^3*acsc(a + b*x))/(3*a^3) - acsc(a + b*x)/(3*x^3) - ((2 - 5*a^2 + 6*a^4)*b^3*atan((a - tan((1/2)*acsc(a + b*x)))/sqrt(1 - a^2)))/(3*a^3*(1 - a^2)^(5/2))]
    @test_int [acsc(a + b*x)/x^5, x, 10, -((b*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(12*a*(1 - a^2)*x^3)) + ((3 - 8*a^2)*b^2*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(24*a^2*(1 - a^2)^2*x^2) - ((6 - 17*a^2 + 26*a^4)*b^3*(a + b*x)*sqrt(1 - 1/(a + b*x)^2))/(24*a^3*(1 - a^2)^3*x) + (b^4*acsc(a + b*x))/(4*a^4) - acsc(a + b*x)/(4*x^4) + ((2 - 7*a^2 + 8*a^4 - 8*a^6)*b^4*atan((a - tan((1/2)*acsc(a + b*x)))/sqrt(1 - a^2)))/(4*a^4*(1 - a^2)^(7/2))]


    @test_int [x^3*acsc(a + b*x)^2, x, 20, -((a*x)/b^3) + (a + b*x)^2/(12*b^4) + ((a + b*x)*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x))/(3*b^4) + (3*a^2*(a + b*x)*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x))/b^4 - (a*(a + b*x)^2*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x))/b^4 + ((a + b*x)^3*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x))/(6*b^4) - (a^4*acsc(a + b*x)^2)/(4*b^4) + (1/4)*x^4*acsc(a + b*x)^2 - (2*a*acsc(a + b*x)*atanh(ℯ^(im*acsc(a + b*x))))/b^4 - (4*a^3*acsc(a + b*x)*atanh(ℯ^(im*acsc(a + b*x))))/b^4 + log(a + b*x)/(3*b^4) + (3*a^2*log(a + b*x))/b^4 + (im*a*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/b^4 + (2*im*a^3*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/b^4 - (im*a*PolyLog(2, ℯ^(im*acsc(a + b*x))))/b^4 - (2*im*a^3*PolyLog(2, ℯ^(im*acsc(a + b*x))))/b^4]
    @test_int [x^2*acsc(a + b*x)^2, x, 17, x/(3*b^2) - (2*a*(a + b*x)*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x))/b^3 + ((a + b*x)^2*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x))/(3*b^3) + (a^3*acsc(a + b*x)^2)/(3*b^3) + (1/3)*x^3*acsc(a + b*x)^2 + (2*acsc(a + b*x)*atanh(ℯ^(im*acsc(a + b*x))))/(3*b^3) + (4*a^2*acsc(a + b*x)*atanh(ℯ^(im*acsc(a + b*x))))/b^3 - (2*a*log(a + b*x))/b^3 - (im*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/(3*b^3) - (2*im*a^2*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/b^3 + (im*PolyLog(2, ℯ^(im*acsc(a + b*x))))/(3*b^3) + (2*im*a^2*PolyLog(2, ℯ^(im*acsc(a + b*x))))/b^3]
    @test_int [x^1*acsc(a + b*x)^2, x, 11, ((a + b*x)*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x))/b^2 - (a^2*acsc(a + b*x)^2)/(2*b^2) + (1/2)*x^2*acsc(a + b*x)^2 - (4*a*acsc(a + b*x)*atanh(ℯ^(im*acsc(a + b*x))))/b^2 + log(a + b*x)/b^2 + (2*im*a*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/b^2 - (2*im*a*PolyLog(2, ℯ^(im*acsc(a + b*x))))/b^2]
    @test_int [x^0*acsc(a + b*x)^2, x, 8, ((a + b*x)*acsc(a + b*x)^2)/b + (4*acsc(a + b*x)*atanh(ℯ^(im*acsc(a + b*x))))/b - (2*im*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/b + (2*im*PolyLog(2, ℯ^(im*acsc(a + b*x))))/b]
    @test_int [acsc(a + b*x)^2/x^1, x, 17, acsc(a + b*x)^2*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2))) + acsc(a + b*x)^2*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2))) - acsc(a + b*x)^2*log(1 - ℯ^(2*im*acsc(a + b*x))) - 2*im*acsc(a + b*x)*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2)))) - 2*im*acsc(a + b*x)*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2)))) + im*acsc(a + b*x)*PolyLog(2, ℯ^(2*im*acsc(a + b*x))) + 2*PolyLog(3, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2)))) + 2*PolyLog(3, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2)))) - (1/2)*PolyLog(3, ℯ^(2*im*acsc(a + b*x)))]
    @test_int [acsc(a + b*x)^2/x^2, x, 12, -((b*acsc(a + b*x)^2)/a) - acsc(a + b*x)^2/x - (2*im*b*acsc(a + b*x)*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (2*im*b*acsc(a + b*x)*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (2*b*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2)))))/(a*sqrt(1 - a^2)) + (2*b*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2)))))/(a*sqrt(1 - a^2))]


    @test_int [x^2*acsc(a + b*x)^3, x, 25, ((a + b*x)*acsc(a + b*x))/b^3 - (3*im*a*acsc(a + b*x)^2)/b^3 - (3*a*(a + b*x)*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x)^2)/b^3 + ((a + b*x)^2*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x)^2)/(2*b^3) + (a^3*acsc(a + b*x)^3)/(3*b^3) + (1/3)*x^3*acsc(a + b*x)^3 + (acsc(a + b*x)^2*atanh(ℯ^(im*acsc(a + b*x))))/b^3 + (6*a^2*acsc(a + b*x)^2*atanh(ℯ^(im*acsc(a + b*x))))/b^3 + atanh(sqrt(1 - 1/(a + b*x)^2))/b^3 + (6*a*acsc(a + b*x)*log(1 - ℯ^(2*im*acsc(a + b*x))))/b^3 - (im*acsc(a + b*x)*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/b^3 - (6*im*a^2*acsc(a + b*x)*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/b^3 + (im*acsc(a + b*x)*PolyLog(2, ℯ^(im*acsc(a + b*x))))/b^3 + (6*im*a^2*acsc(a + b*x)*PolyLog(2, ℯ^(im*acsc(a + b*x))))/b^3 - (3*im*a*PolyLog(2, ℯ^(2*im*acsc(a + b*x))))/b^3 + PolyLog(3, -ℯ^(im*acsc(a + b*x)))/b^3 + (6*a^2*PolyLog(3, -ℯ^(im*acsc(a + b*x))))/b^3 - PolyLog(3, ℯ^(im*acsc(a + b*x)))/b^3 - (6*a^2*PolyLog(3, ℯ^(im*acsc(a + b*x))))/b^3]
    @test_int [x^1*acsc(a + b*x)^3, x, 16, (3*im*acsc(a + b*x)^2)/(2*b^2) + (3*(a + b*x)*sqrt(1 - 1/(a + b*x)^2)*acsc(a + b*x)^2)/(2*b^2) - (a^2*acsc(a + b*x)^3)/(2*b^2) + (1/2)*x^2*acsc(a + b*x)^3 - (6*a*acsc(a + b*x)^2*atanh(ℯ^(im*acsc(a + b*x))))/b^2 - (3*acsc(a + b*x)*log(1 - ℯ^(2*im*acsc(a + b*x))))/b^2 + (6*im*a*acsc(a + b*x)*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/b^2 - (6*im*a*acsc(a + b*x)*PolyLog(2, ℯ^(im*acsc(a + b*x))))/b^2 + (3*im*PolyLog(2, ℯ^(2*im*acsc(a + b*x))))/(2*b^2) - (6*a*PolyLog(3, -ℯ^(im*acsc(a + b*x))))/b^2 + (6*a*PolyLog(3, ℯ^(im*acsc(a + b*x))))/b^2]
    @test_int [x^0*acsc(a + b*x)^3, x, 10, ((a + b*x)*acsc(a + b*x)^3)/b + (6*acsc(a + b*x)^2*atanh(ℯ^(im*acsc(a + b*x))))/b - (6*im*acsc(a + b*x)*PolyLog(2, -ℯ^(im*acsc(a + b*x))))/b + (6*im*acsc(a + b*x)*PolyLog(2, ℯ^(im*acsc(a + b*x))))/b + (6*PolyLog(3, -ℯ^(im*acsc(a + b*x))))/b - (6*PolyLog(3, ℯ^(im*acsc(a + b*x))))/b]
    @test_int [acsc(a + b*x)^3/x^1, x, 20, acsc(a + b*x)^3*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2))) + acsc(a + b*x)^3*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2))) - acsc(a + b*x)^3*log(1 - ℯ^(2*im*acsc(a + b*x))) - 3*im*acsc(a + b*x)^2*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2)))) - 3*im*acsc(a + b*x)^2*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2)))) + (3/2)*im*acsc(a + b*x)^2*PolyLog(2, ℯ^(2*im*acsc(a + b*x))) + 6*acsc(a + b*x)*PolyLog(3, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2)))) + 6*acsc(a + b*x)*PolyLog(3, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2)))) - (3/2)*acsc(a + b*x)*PolyLog(3, ℯ^(2*im*acsc(a + b*x))) + 6*im*PolyLog(4, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2)))) + 6*im*PolyLog(4, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2)))) - (3/4)*im*PolyLog(4, ℯ^(2*im*acsc(a + b*x)))]
    @test_int [acsc(a + b*x)^3/x^2, x, 14, -((b*acsc(a + b*x)^3)/a) - acsc(a + b*x)^3/x - (3*im*b*acsc(a + b*x)^2*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) + (3*im*b*acsc(a + b*x)^2*log(1 + (im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2))))/(a*sqrt(1 - a^2)) - (6*b*acsc(a + b*x)*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2)))))/(a*sqrt(1 - a^2)) + (6*b*acsc(a + b*x)*PolyLog(2, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2)))))/(a*sqrt(1 - a^2)) - (6*im*b*PolyLog(3, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 - sqrt(1 - a^2)))))/(a*sqrt(1 - a^2)) + (6*im*b*PolyLog(3, -((im*a*ℯ^(im*acsc(a + b*x)))/(1 + sqrt(1 - a^2)))))/(a*sqrt(1 - a^2))]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*acsc(a +b*x^n)=#


    @test_int [x^3*acsc(a + b*x^4), x, 6, ((a + b*x^4)*acsc(a + b*x^4))/(4*b) + atanh(sqrt(1 - 1/(a + b*x^4)^2))/(4*b)]


    @test_int [x^(n-1)*acsc(a + b*x^n), x, 6, ((a + b*x^n)*acsc(a + b*x^n))/(b*n) + atanh(sqrt(1 - 1/(a + b*x^n)^2))/(b*n)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*inverse*cosecant*functions*of*exponentials=#


    @test_int [acsc(c*ℯ^(a + b*x)), x, 7, (im*acsc(c*ℯ^(a + b*x))^2)/(2*b) - (acsc(c*ℯ^(a + b*x))*log(1 - ℯ^(2*im*acsc(c*ℯ^(a + b*x)))))/b + (im*PolyLog(2, ℯ^(2*im*acsc(c*ℯ^(a + b*x)))))/(2*b)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*exponentials*of*inverse*cosecant*functions=#


    @test_int [ℯ^acsc(a*x)*x^2, x, 6, ((4/5 - (12*im)/5)*ℯ^((1 + 3*im)*acsc(a*x))*Hypergeometric2F1(3/2 - im/2, 3, 5/2 - im/2, ℯ^(2*im*acsc(a*x))))/a^3 - ((8/5 - (24*im)/5)*ℯ^((1 + 3*im)*acsc(a*x))*Hypergeometric2F1(3/2 - im/2, 4, 5/2 - im/2, ℯ^(2*im*acsc(a*x))))/a^3]
    @test_int [ℯ^acsc(a*x)*x^1, x, 6, ((8/5 + (4*im)/5)*ℯ^((1 + 2*im)*acsc(a*x))*Hypergeometric2F1(1 - im/2, 2, 2 - im/2, ℯ^(2*im*acsc(a*x))))/a^2 - ((16/5 + (8*im)/5)*ℯ^((1 + 2*im)*acsc(a*x))*Hypergeometric2F1(1 - im/2, 3, 2 - im/2, ℯ^(2*im*acsc(a*x))))/a^2]
    @test_int [ℯ^acsc(a*x)*x^0, x, 5, -(((1 - im)*ℯ^((1 + im)*acsc(a*x))*Hypergeometric2F1(1/2 - im/2, 1, 3/2 - im/2, ℯ^(2*im*acsc(a*x))))/a) + ((2 - 2*im)*ℯ^((1 + im)*acsc(a*x))*Hypergeometric2F1(1/2 - im/2, 2, 3/2 - im/2, ℯ^(2*im*acsc(a*x))))/a]
    @test_int [ℯ^acsc(a*x)/x^1, x, 6, (-im)*ℯ^acsc(a*x) + 2*im*ℯ^acsc(a*x)*Hypergeometric2F1(-(im/2), 1, 1 - im/2, ℯ^(2*im*acsc(a*x)))]
    @test_int [ℯ^acsc(a*x)/x^2, x, 3, (-(1/2))*a*ℯ^acsc(a*x)*sqrt(1 - 1/(a^2*x^2)) - ℯ^acsc(a*x)/(2*x)]
    @test_int [ℯ^acsc(a*x)/x^3, x, 5, (1/5)*a^2*ℯ^acsc(a*x)*cos(2*acsc(a*x)) - (1/10)*a^2*ℯ^acsc(a*x)*sin(2*acsc(a*x))]
    @test_int [ℯ^acsc(a*x)/x^4, x, 6, (-(1/8))*a^3*ℯ^acsc(a*x)*sqrt(1 - 1/(a^2*x^2)) - (a^2*ℯ^acsc(a*x))/(8*x) + (1/40)*a^3*ℯ^acsc(a*x)*cos(3*acsc(a*x)) + (3/40)*a^3*ℯ^acsc(a*x)*sin(3*acsc(a*x))]
    @test_int [ℯ^acsc(a*x)/x^5, x, 6, (1/10)*a^4*ℯ^acsc(a*x)*cos(2*acsc(a*x)) - (1/34)*a^4*ℯ^acsc(a*x)*cos(4*acsc(a*x)) - (1/20)*a^4*ℯ^acsc(a*x)*sin(2*acsc(a*x)) + (1/136)*a^4*ℯ^acsc(a*x)*sin(4*acsc(a*x))]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*inverse*cosecants=#


    @test_int [acsc(a + b*x)/((a*d)/b + d*x), x, 8, (im*acsc(a + b*x)^2)/(2*d) - (acsc(a + b*x)*log(1 - ℯ^(2*im*acsc(a + b*x))))/d + (im*PolyLog(2, ℯ^(2*im*acsc(a + b*x))))/(2*d)]
    end
