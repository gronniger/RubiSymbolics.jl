@testset "7.6.2 Inverse hyperbolic cosecant functions" begin
    @variables a, b, c, d, e, f, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Inverse*Hyperbolic*Cosecants=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*acsch(a+b*x)^n=#


    @test_int [x^3*acsch(a + b*x), x, 8, -(((2 - 17*a^2)*(a + b*x)*sqrt(1 + 1/(a + b*x)^2))/(12*b^4)) + (x^2*(a + b*x)*sqrt(1 + 1/(a + b*x)^2))/(12*b^2) - (a*(a + b*x)^2*sqrt(1 + 1/(a + b*x)^2))/(3*b^4) - (a^4*acsch(a + b*x))/(4*b^4) + (1/4)*x^4*acsch(a + b*x) + (a*(1 - 2*a^2)*atanh(sqrt(1 + 1/(a + b*x)^2)))/(2*b^4)]
    @test_int [x^2*acsch(a + b*x), x, 7, -((5*a*(a + b*x)*sqrt(1 + 1/(a + b*x)^2))/(6*b^3)) + (x*(a + b*x)*sqrt(1 + 1/(a + b*x)^2))/(6*b^2) + (a^3*acsch(a + b*x))/(3*b^3) + (1/3)*x^3*acsch(a + b*x) - ((1 - 6*a^2)*atanh(sqrt(1 + 1/(a + b*x)^2)))/(6*b^3)]
    @test_int [x^1*acsch(a + b*x), x, 6, ((a + b*x)*sqrt(1 + 1/(a + b*x)^2))/(2*b^2) - (a^2*acsch(a + b*x))/(2*b^2) + (1/2)*x^2*acsch(a + b*x) - (a*atanh(sqrt(1 + 1/(a + b*x)^2)))/b^2]
    @test_int [acsch(a + b*x)/x^1, x, 14, acsch(a + b*x)*log(1 - (a*ℯ^acsch(a + b*x))/(1 - sqrt(1 + a^2))) + acsch(a + b*x)*log(1 - (a*ℯ^acsch(a + b*x))/(1 + sqrt(1 + a^2))) - acsch(a + b*x)*log(1 - ℯ^(2*acsch(a + b*x))) + PolyLog(2, (a*ℯ^acsch(a + b*x))/(1 - sqrt(1 + a^2))) + PolyLog(2, (a*ℯ^acsch(a + b*x))/(1 + sqrt(1 + a^2))) - (1/2)*PolyLog(2, ℯ^(2*acsch(a + b*x)))]
    @test_int [acsch(a + b*x)/x^2, x, 6, -((b*acsch(a + b*x))/a) - acsch(a + b*x)/x + (2*b*atanh((a + tanh((1/2)*acsch(a + b*x)))/sqrt(1 + a^2)))/(a*sqrt(1 + a^2))]
    @test_int [acsch(a + b*x)/x^3, x, 8, (b*(a + b*x)*sqrt(1 + 1/(a + b*x)^2))/(2*a*(1 + a^2)*x) + (b^2*acsch(a + b*x))/(2*a^2) - acsch(a + b*x)/(2*x^2) - ((1 + 2*a^2)*b^2*atanh((a + tanh((1/2)*acsch(a + b*x)))/sqrt(1 + a^2)))/(a^2*(1 + a^2)^(3/2))]


    @test_int [(e + f*x)^3*(a + b*acsch(c + d*x))^2, x, 20, (b^2*f^2*(d*e - c*f)*x)/d^3 + (b^2*f^3*(c + d*x)^2)/(12*d^4) - (b*f^3*(c + d*x)*sqrt(1 + 1/(c + d*x)^2)*(a + b*acsch(c + d*x)))/(3*d^4) + (3*b*f*(d*e - c*f)^2*(c + d*x)*sqrt(1 + 1/(c + d*x)^2)*(a + b*acsch(c + d*x)))/d^4 + (b*f^2*(d*e - c*f)*(c + d*x)^2*sqrt(1 + 1/(c + d*x)^2)*(a + b*acsch(c + d*x)))/d^4 + (b*f^3*(c + d*x)^3*sqrt(1 + 1/(c + d*x)^2)*(a + b*acsch(c + d*x)))/(6*d^4) - ((d*e - c*f)^4*(a + b*acsch(c + d*x))^2)/(4*d^4*f) + ((e + f*x)^4*(a + b*acsch(c + d*x))^2)/(4*f) - (2*b*f^2*(d*e - c*f)*(a + b*acsch(c + d*x))*atanh(ℯ^acsch(c + d*x)))/d^4 + (4*b*(d*e - c*f)^3*(a + b*acsch(c + d*x))*atanh(ℯ^acsch(c + d*x)))/d^4 - (b^2*f^3*log(c + d*x))/(3*d^4) + (3*b^2*f*(d*e - c*f)^2*log(c + d*x))/d^4 - (b^2*f^2*(d*e - c*f)*PolyLog(2, -ℯ^acsch(c + d*x)))/d^4 + (2*b^2*(d*e - c*f)^3*PolyLog(2, -ℯ^acsch(c + d*x)))/d^4 + (b^2*f^2*(d*e - c*f)*PolyLog(2, ℯ^acsch(c + d*x)))/d^4 - (2*b^2*(d*e - c*f)^3*PolyLog(2, ℯ^acsch(c + d*x)))/d^4]
    @test_int [(e + f*x)^2*(a + b*acsch(c + d*x))^2, x, 17, (b^2*f^2*x)/(3*d^2) + (2*b*f*(d*e - c*f)*(c + d*x)*sqrt(1 + 1/(c + d*x)^2)*(a + b*acsch(c + d*x)))/d^3 + (b*f^2*(c + d*x)^2*sqrt(1 + 1/(c + d*x)^2)*(a + b*acsch(c + d*x)))/(3*d^3) - ((d*e - c*f)^3*(a + b*acsch(c + d*x))^2)/(3*d^3*f) + ((e + f*x)^3*(a + b*acsch(c + d*x))^2)/(3*f) - (2*b*f^2*(a + b*acsch(c + d*x))*atanh(ℯ^acsch(c + d*x)))/(3*d^3) + (4*b*(d*e - c*f)^2*(a + b*acsch(c + d*x))*atanh(ℯ^acsch(c + d*x)))/d^3 + (2*b^2*f*(d*e - c*f)*log(c + d*x))/d^3 - (b^2*f^2*PolyLog(2, -ℯ^acsch(c + d*x)))/(3*d^3) + (2*b^2*(d*e - c*f)^2*PolyLog(2, -ℯ^acsch(c + d*x)))/d^3 + (b^2*f^2*PolyLog(2, ℯ^acsch(c + d*x)))/(3*d^3) - (2*b^2*(d*e - c*f)^2*PolyLog(2, ℯ^acsch(c + d*x)))/d^3]
    @test_int [(e + f*x)^1*(a + b*acsch(c + d*x))^2, x, 11, (b*f*(c + d*x)*sqrt(1 + 1/(c + d*x)^2)*(a + b*acsch(c + d*x)))/d^2 - ((d*e - c*f)^2*(a + b*acsch(c + d*x))^2)/(2*d^2*f) + ((e + f*x)^2*(a + b*acsch(c + d*x))^2)/(2*f) + (4*b*(d*e - c*f)*(a + b*acsch(c + d*x))*atanh(ℯ^acsch(c + d*x)))/d^2 + (b^2*f*log(c + d*x))/d^2 + (2*b^2*(d*e - c*f)*PolyLog(2, -ℯ^acsch(c + d*x)))/d^2 - (2*b^2*(d*e - c*f)*PolyLog(2, ℯ^acsch(c + d*x)))/d^2]
    @test_int [(e + f*x)^0*(a + b*acsch(c + d*x))^2, x, 8, ((c + d*x)*(a + b*acsch(c + d*x))^2)/d + (4*b*(a + b*acsch(c + d*x))*atanh(ℯ^acsch(c + d*x)))/d + (2*b^2*PolyLog(2, -ℯ^acsch(c + d*x)))/d - (2*b^2*PolyLog(2, ℯ^acsch(c + d*x)))/d]
    @test_int [(a + b*acsch(c + d*x))^2/(e + f*x)^1, x, 17, -(((a + b*acsch(c + d*x))^2*log(1 - ℯ^(2*acsch(c + d*x))))/f) + ((a + b*acsch(c + d*x))^2*log(1 + (ℯ^acsch(c + d*x)*(d*e - c*f))/(f - sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))))/f + ((a + b*acsch(c + d*x))^2*log(1 + (ℯ^acsch(c + d*x)*(d*e - c*f))/(f + sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))))/f - (b*(a + b*acsch(c + d*x))*PolyLog(2, ℯ^(2*acsch(c + d*x))))/f + (2*b*(a + b*acsch(c + d*x))*PolyLog(2, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f - sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/f + (2*b*(a + b*acsch(c + d*x))*PolyLog(2, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f + sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/f + (b^2*PolyLog(3, ℯ^(2*acsch(c + d*x))))/(2*f) - (2*b^2*PolyLog(3, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f - sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/f - (2*b^2*PolyLog(3, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f + sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/f]
    @test_int [(a + b*acsch(c + d*x))^2/(e + f*x)^2, x, 12, (d*(a + b*acsch(c + d*x))^2)/(f*(d*e - c*f)) - (a + b*acsch(c + d*x))^2/(f*(e + f*x)) - (2*b*d*(a + b*acsch(c + d*x))*log(1 + (ℯ^acsch(c + d*x)*(d*e - c*f))/(f - sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))))/((d*e - c*f)*sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) + (2*b*d*(a + b*acsch(c + d*x))*log(1 + (ℯ^acsch(c + d*x)*(d*e - c*f))/(f + sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))))/((d*e - c*f)*sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) - (2*b^2*d*PolyLog(2, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f - sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/((d*e - c*f)*sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) + (2*b^2*d*PolyLog(2, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f + sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/((d*e - c*f)*sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))]
    @test_int [(a + b*acsch(c + d*x))^2/(e + f*x)^3, x, 23, -((b*d^2*f*sqrt(1 + 1/(c + d*x)^2)*(a + b*acsch(c + d*x)))/((d*e - c*f)*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)*(f + (d*e - c*f)/(c + d*x)))) + (d^2*(a + b*acsch(c + d*x))^2)/(2*f*(d*e - c*f)^2) - (a + b*acsch(c + d*x))^2/(2*f*(e + f*x)^2) + (b*d^2*f^2*(a + b*acsch(c + d*x))*log(1 + (ℯ^acsch(c + d*x)*(d*e - c*f))/(f - sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))))/((d*e - c*f)^2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)^(3/2)) - (2*b*d^2*(a + b*acsch(c + d*x))*log(1 + (ℯ^acsch(c + d*x)*(d*e - c*f))/(f - sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))))/((d*e - c*f)^2*sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) - (b*d^2*f^2*(a + b*acsch(c + d*x))*log(1 + (ℯ^acsch(c + d*x)*(d*e - c*f))/(f + sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))))/((d*e - c*f)^2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)^(3/2)) + (2*b*d^2*(a + b*acsch(c + d*x))*log(1 + (ℯ^acsch(c + d*x)*(d*e - c*f))/(f + sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))))/((d*e - c*f)^2*sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) + (b^2*d^2*f*log(f + (d*e - c*f)/(c + d*x)))/((d*e - c*f)^2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) + (b^2*d^2*f^2*PolyLog(2, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f - sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/((d*e - c*f)^2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)^(3/2)) - (2*b^2*d^2*PolyLog(2, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f - sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/((d*e - c*f)^2*sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) - (b^2*d^2*f^2*PolyLog(2, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f + sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/((d*e - c*f)^2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)^(3/2)) + (2*b^2*d^2*PolyLog(2, -((ℯ^acsch(c + d*x)*(d*e - c*f))/(f + sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)))))/((d*e - c*f)^2*sqrt(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*acsch(a*x^n)=#


    @test_int [x^3*acsch(sqrt(x)), x, 4, -((sqrt(-1 - x)*sqrt(x))/(4*sqrt(-x))) - ((-1 - x)^(3/2)*sqrt(x))/(4*sqrt(-x)) - (3*(-1 - x)^(5/2)*sqrt(x))/(20*sqrt(-x)) - ((-1 - x)^(7/2)*sqrt(x))/(28*sqrt(-x)) + (1/4)*x^4*acsch(sqrt(x))]
    @test_int [x^2*acsch(sqrt(x)), x, 4, (sqrt(-1 - x)*sqrt(x))/(3*sqrt(-x)) + (2*(-1 - x)^(3/2)*sqrt(x))/(9*sqrt(-x)) + ((-1 - x)^(5/2)*sqrt(x))/(15*sqrt(-x)) + (1/3)*x^3*acsch(sqrt(x))]
    @test_int [x^1*acsch(sqrt(x)), x, 4, -((sqrt(-1 - x)*sqrt(x))/(2*sqrt(-x))) - ((-1 - x)^(3/2)*sqrt(x))/(6*sqrt(-x)) + (1/2)*x^2*acsch(sqrt(x))]
    @test_int [x^0*acsch(sqrt(x)), x, 3, (sqrt(-1 - x)*sqrt(x))/sqrt(-x) + x*acsch(sqrt(x))]
    @test_int [acsch(sqrt(x))/x^1, x, 7, acsch(sqrt(x))^2 - 2*acsch(sqrt(x))*log(1 - ℯ^(2*acsch(sqrt(x)))) - PolyLog(2, ℯ^(2*acsch(sqrt(x))))]
    @test_int [acsch(sqrt(x))/x^2, x, 5, sqrt(-1 - x)/(2*sqrt(-x)*sqrt(x)) - acsch(sqrt(x))/x - (sqrt(x)*atan(sqrt(-1 - x)))/(2*sqrt(-x))]
    @test_int [acsch(sqrt(x))/x^3, x, 6, sqrt(-1 - x)/(8*sqrt(-x)*x^(3/2)) - (3*sqrt(-1 - x))/(16*sqrt(-x)*sqrt(x)) - acsch(sqrt(x))/(2*x^2) + (3*sqrt(x)*atan(sqrt(-1 - x)))/(16*sqrt(-x))]
    @test_int [acsch(sqrt(x))/x^4, x, 7, sqrt(-1 - x)/(18*sqrt(-x)*x^(5/2)) - (5*sqrt(-1 - x))/(72*sqrt(-x)*x^(3/2)) + (5*sqrt(-1 - x))/(48*sqrt(-x)*sqrt(x)) - acsch(sqrt(x))/(3*x^3) - (5*sqrt(x)*atan(sqrt(-1 - x)))/(48*sqrt(-x))]


    @test_int [acsch(1/x), x, 3, -sqrt(1 + x^2) + x*asinh(x)]


    @test_int [acsch(a*x^n)/x, x, 7, acsch(a*x^n)^2/(2*n) - (acsch(a*x^n)*log(1 - ℯ^(2*acsch(a*x^n))))/n - PolyLog(2, ℯ^(2*acsch(a*x^n)))/(2*n)]
    @test_int [acsch(a*x^5)/x, x, 7, (1/10)*acsch(a*x^5)^2 - (1/5)*acsch(a*x^5)*log(1 - ℯ^(2*acsch(a*x^5))) - (1/10)*PolyLog(2, ℯ^(2*acsch(a*x^5)))]


    #= ::Section::Closed:: =#
    #=Integrands*involving*inverse*hyperbolic*cosecants*of*exponentials=#


    @test_int [acsch(c*ℯ^(a + b*x)), x, 7, acsch(c*ℯ^(a + b*x))^2/(2*b) - (acsch(c*ℯ^(a + b*x))*log(1 - ℯ^(2*acsch(c*ℯ^(a + b*x)))))/b - PolyLog(2, ℯ^(2*acsch(c*ℯ^(a + b*x))))/(2*b)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*exponentials*of*inverse*hyperbolic*cosecants=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^acsch(a*x^p)=#


    @test_int [x^m*ℯ^acsch(a*x), x, 4, x^m/(a*m) + (x^(1 + m)*Hypergeometric2F1(-(1/2), (1/2)*(-1 - m), (1 - m)/2, -(1/(a^2*x^2))))/(1 + m)]

    @test_int [x^4*ℯ^acsch(a*x), x, 4, -((2*(1 + 1/(a^2*x^2))^(3/2)*x^3)/(15*a^2)) + x^4/(4*a) + (1/5)*(1 + 1/(a^2*x^2))^(3/2)*x^5]
    @test_int [x^3*ℯ^acsch(a*x), x, 7, (sqrt(1 + 1/(a^2*x^2))*x^2)/(8*a^2) + x^3/(3*a) + (1/4)*sqrt(1 + 1/(a^2*x^2))*x^4 - atanh(sqrt(1 + 1/(a^2*x^2)))/(8*a^4)]
    @test_int [x^2*ℯ^acsch(a*x), x, 3, x^2/(2*a) + (1/3)*(1 + 1/(a^2*x^2))^(3/2)*x^3]
    @test_int [x^1*ℯ^acsch(a*x), x, 6, x/a + (1/2)*sqrt(1 + 1/(a^2*x^2))*x^2 + atanh(sqrt(1 + 1/(a^2*x^2)))/(2*a^2)]
    @test_int [x^0*ℯ^acsch(a*x), x, 5, ℯ^acsch(a*x)*x - acsch(a*x)/a + log(x)/a, sqrt(1 + 1/(a^2*x^2))*x - acsch(a*x)/a + log(x)/a]
    @test_int [ℯ^acsch(a*x)/x^1, x, 6, -sqrt(1 + 1/(a^2*x^2)) - 1/(a*x) + atanh(sqrt(1 + 1/(a^2*x^2)))]
    @test_int [ℯ^acsch(a*x)/x^2, x, 5, -(1/(2*a*x^2)) - sqrt(1 + 1/(a^2*x^2))/(2*x) - (1/2)*a*acsch(a*x)]
    @test_int [ℯ^acsch(a*x)/x^3, x, 3, (-(1/3))*a^2*(1 + 1/(a^2*x^2))^(3/2) - 1/(3*a*x^3)]
    @test_int [ℯ^acsch(a*x)/x^4, x, 6, -(1/(4*a*x^4)) - sqrt(1 + 1/(a^2*x^2))/(4*x^3) - (a^2*sqrt(1 + 1/(a^2*x^2)))/(8*x) + (1/8)*a^3*acsch(a*x)]
    @test_int [ℯ^acsch(a*x)/x^5, x, 5, (1/3)*a^4*(1 + 1/(a^2*x^2))^(3/2) - (1/5)*a^4*(1 + 1/(a^2*x^2))^(5/2) - 1/(5*a*x^5)]


    @test_int [x^m*ℯ^acsch(a*x^2), x, 4, -(x^(-1 + m)/(a*(1 - m))) + (x^(1 + m)*Hypergeometric2F1(-(1/2), (1/4)*(-1 - m), (3 - m)/4, -(1/(a^2*x^4))))/(1 + m)]

    @test_int [x^4*ℯ^acsch(a*x^2), x, 8, -((2*sqrt(1 + 1/(a^2*x^4)))/(5*a^2*(a + 1/x^2)*x)) + (2*sqrt(1 + 1/(a^2*x^4))*x)/(5*a^2) + x^3/(3*a) + (1/5)*sqrt(1 + 1/(a^2*x^4))*x^5 + (2*sqrt((a^2 + 1/x^4)/(a + 1/x^2)^2)*(a + 1/x^2)*EllipticE(2*acot(sqrt(a)*x), 1/2))/(5*a^(7/2)*sqrt(1 + 1/(a^2*x^4))) - (sqrt((a^2 + 1/x^4)/(a + 1/x^2)^2)*(a + 1/x^2)*EllipticF(2*acot(sqrt(a)*x), 1/2))/(5*a^(7/2)*sqrt(1 + 1/(a^2*x^4)))]
    @test_int [x^3*ℯ^acsch(a*x^2), x, 6, x^2/(2*a) + (1/4)*sqrt(1 + 1/(a^2*x^4))*x^4 + atanh(sqrt(1 + 1/(a^2*x^4)))/(4*a^2)]
    @test_int [x^2*ℯ^acsch(a*x^2), x, 5, x/a + (1/3)*sqrt(1 + 1/(a^2*x^4))*x^3 - (sqrt((a^2 + 1/x^4)/(a + 1/x^2)^2)*(a + 1/x^2)*EllipticF(2*acot(sqrt(a)*x), 1/2))/(3*a^(5/2)*sqrt(1 + 1/(a^2*x^4)))]
    @test_int [x^1*ℯ^acsch(a*x^2), x, 6, (1/2)*sqrt(1 + 1/(a^2*x^4))*x^2 - acsch(a*x^2)/(2*a) + log(x)/a]
    @test_int [x^0*ℯ^acsch(a*x^2), x, 7, -(1/(a*x)) - (2*sqrt(1 + 1/(a^2*x^4)))/((a + 1/x^2)*x) + sqrt(1 + 1/(a^2*x^4))*x + (2*sqrt((a^2 + 1/x^4)/(a + 1/x^2)^2)*(a + 1/x^2)*EllipticE(2*acot(sqrt(a)*x), 1/2))/(a^(3/2)*sqrt(1 + 1/(a^2*x^4))) - (sqrt((a^2 + 1/x^4)/(a + 1/x^2)^2)*(a + 1/x^2)*EllipticF(2*acot(sqrt(a)*x), 1/2))/(a^(3/2)*sqrt(1 + 1/(a^2*x^4)))]
    @test_int [ℯ^acsch(a*x^2)/x^1, x, 6, (-(1/2))*sqrt(1 + 1/(a^2*x^4)) - 1/(2*a*x^2) + (1/2)*atanh(sqrt(1 + 1/(a^2*x^4)))]
    @test_int [ℯ^acsch(a*x^2)/x^2, x, 5, -(1/(3*a*x^3)) - sqrt(1 + 1/(a^2*x^4))/(3*x) - (sqrt((a^2 + 1/x^4)/(a + 1/x^2)^2)*(a + 1/x^2)*EllipticF(2*acot(sqrt(a)*x), 1/2))/(3*sqrt(a)*sqrt(1 + 1/(a^2*x^4)))]
    @test_int [ℯ^acsch(a*x^2)/x^3, x, 6, -(1/(4*a*x^4)) - sqrt(1 + 1/(a^2*x^4))/(4*x^2) - (1/4)*a*acsch(a*x^2)]
    @test_int [ℯ^acsch(a*x^2)/x^4, x, 7, -(1/(5*a*x^5)) - sqrt(1 + 1/(a^2*x^4))/(5*x^3) - (2*a^2*sqrt(1 + 1/(a^2*x^4)))/(5*(a + 1/x^2)*x) + (2*sqrt(a)*sqrt((a^2 + 1/x^4)/(a + 1/x^2)^2)*(a + 1/x^2)*EllipticE(2*acot(sqrt(a)*x), 1/2))/(5*sqrt(1 + 1/(a^2*x^4))) - (sqrt(a)*sqrt((a^2 + 1/x^4)/(a + 1/x^2)^2)*(a + 1/x^2)*EllipticF(2*acot(sqrt(a)*x), 1/2))/(5*sqrt(1 + 1/(a^2*x^4)))]
    @test_int [ℯ^acsch(a*x^2)/x^5, x, 3, (-(1/6))*a^2*(1 + 1/(a^2*x^4))^(3/2) - 1/(6*a*x^6)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(n*acsch(a*x))=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^m*ℯ^(2*acsch(a*x)), x, 5, -((2*x^(-1 + m))/(a^2*(1 - m))) + x^(1 + m)/(1 + m) + (2*x^m*Hypergeometric2F1(-(1/2), -(m/2), 1 - m/2, -(1/(a^2*x^2))))/(a*m)]

    @test_int [x^4*ℯ^(2*acsch(a*x)), x, 8, (sqrt(1 + 1/(a^2*x^2))*x^2)/(4*a^3) + (2*x^3)/(3*a^2) + (sqrt(1 + 1/(a^2*x^2))*x^4)/(2*a) + x^5/5 - atanh(sqrt(1 + 1/(a^2*x^2)))/(4*a^5)]
    @test_int [x^3*ℯ^(2*acsch(a*x)), x, 4, x^2/a^2 + (2*(1 + 1/(a^2*x^2))^(3/2)*x^3)/(3*a) + x^4/4]
    @test_int [x^2*ℯ^(2*acsch(a*x)), x, 7, (2*x)/a^2 + (sqrt(1 + 1/(a^2*x^2))*x^2)/a + x^3/3 + atanh(sqrt(1 + 1/(a^2*x^2)))/a^3]
    @test_int [x^1*ℯ^(2*acsch(a*x)), x, 6, (2*sqrt(1 + 1/(a^2*x^2))*x)/a + x^2/2 - (2*acsch(a*x))/a^2 + (2*log(x))/a^2]
    @test_int [x^0*ℯ^(2*acsch(a*x)), x, 7, -((2*sqrt(1 + 1/(a^2*x^2)))/a) - 2/(a^2*x) + x + (2*atanh(sqrt(1 + 1/(a^2*x^2))))/a]
    @test_int [ℯ^(2*acsch(a*x))/x^1, x, 6, -(1/(a^2*x^2)) - sqrt(1 + 1/(a^2*x^2))/(a*x) - acsch(a*x) + log(x)]
    @test_int [ℯ^(2*acsch(a*x))/x^2, x, 4, (-(2/3))*a*(1 + 1/(a^2*x^2))^(3/2) - 2/(3*a^2*x^3) - 1/x, (-(1/2))*a*sqrt(1 + 1/(a^2*x^2)) - (1/6)*a*(sqrt(1 + 1/(a^2*x^2)) + 1/(a*x))^3 - 1/(2*x)]
    @test_int [ℯ^(2*acsch(a*x))/x^3, x, 7, -(1/(2*a^2*x^4)) - sqrt(1 + 1/(a^2*x^2))/(2*a*x^3) - 1/(2*x^2) - (a*sqrt(1 + 1/(a^2*x^2)))/(4*x) + (1/4)*a^2*acsch(a*x)]
    @test_int [ℯ^(2*acsch(a*x))/x^4, x, 6, (2/3)*a^3*(1 + 1/(a^2*x^2))^(3/2) - (2/5)*a^3*(1 + 1/(a^2*x^2))^(5/2) - 2/(5*a^2*x^5) - 1/(3*x^3)]
    @test_int [ℯ^(2*acsch(a*x))/x^5, x, 8, -(1/(3*a^2*x^6)) - sqrt(1 + 1/(a^2*x^2))/(3*a*x^5) - 1/(4*x^4) - (a*sqrt(1 + 1/(a^2*x^2)))/(12*x^3) + (a^3*sqrt(1 + 1/(a^2*x^2)))/(8*x) - (1/8)*a^4*acsch(a*x)]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(n*acsch(a*x)) / (1-a^2*x^2)=#


    @test_int [(d*x)^m*ℯ^acsch(c*x)/(1 + c^2*x^2), x, 4, -((d*(d*x)^(-1 + m)*Hypergeometric2F1(1/2, (1 - m)/2, (3 - m)/2, -(1/(c^2*x^2))))/(c^2*(1 - m))) + ((d*x)^m*Hypergeometric2F1(1, m/2, (2 + m)/2, (-c^2)*x^2))/(c*m)]


    @test_int [x^5*ℯ^acsch(c*x)/(1 + c^2*x^2), x, 9, -(x/c^5) - (3*sqrt(1 + 1/(c^2*x^2))*x^2)/(8*c^4) + x^3/(3*c^3) + (sqrt(1 + 1/(c^2*x^2))*x^4)/(4*c^2) + atan(c*x)/c^6 + (3*atanh(sqrt(1 + 1/(c^2*x^2))))/(8*c^6)]
    @test_int [x^4*ℯ^acsch(c*x)/(1 + c^2*x^2), x, 6, -((2*sqrt(1 + 1/(c^2*x^2))*x)/(3*c^4)) + x^2/(2*c^3) + (sqrt(1 + 1/(c^2*x^2))*x^3)/(3*c^2) - log(1 + c^2*x^2)/(2*c^5)]
    @test_int [x^3*ℯ^acsch(c*x)/(1 + c^2*x^2), x, 7, x/c^3 + (sqrt(1 + 1/(c^2*x^2))*x^2)/(2*c^2) - atan(c*x)/c^4 - atanh(sqrt(1 + 1/(c^2*x^2)))/(2*c^4)]
    @test_int [x^2*ℯ^acsch(c*x)/(1 + c^2*x^2), x, 3, (sqrt(1 + 1/(c^2*x^2))*x)/c^2 + log(1 + c^2*x^2)/(2*c^3)]
    @test_int [x^1*ℯ^acsch(c*x)/(1 + c^2*x^2), x, 5, atan(c*x)/c^2 + atanh(sqrt(1 + 1/(c^2*x^2)))/c^2]
    @test_int [x^0*ℯ^acsch(c*x)/(1 + c^2*x^2), x, 7, -(acsch(c*x)/c) + log(x)/c - log(1 + c^2*x^2)/(2*c)]
    @test_int [ℯ^acsch(c*x)/(x^1*(1 + c^2*x^2)), x, 4, -sqrt(1 + 1/(c^2*x^2)) - 1/(c*x) - atan(c*x)]
    @test_int [ℯ^acsch(c*x)/(x^2*(1 + c^2*x^2)), x, 7, -(1/(2*c*x^2)) - sqrt(1 + 1/(c^2*x^2))/(2*x) + (1/2)*c*acsch(c*x) - c*log(x) + (1/2)*c*log(1 + c^2*x^2)]
    @test_int [ℯ^acsch(c*x)/(x^3*(1 + c^2*x^2)), x, 7, c^2*sqrt(1 + 1/(c^2*x^2)) - (1/3)*c^2*(1 + 1/(c^2*x^2))^(3/2) - 1/(3*c*x^3) + c/x + c^2*atan(c*x)]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*inverse*hyperbolic*cosecants=#


    @test_int [acsch(a + b*x)/((a*d)/b + d*x), x, 8, acsch(a + b*x)^2/(2*d) - (acsch(a + b*x)*log(1 - ℯ^(2*acsch(a + b*x))))/d - PolyLog(2, ℯ^(2*acsch(a + b*x)))/(2*d)]


    @test_int [x^3*acsch(a + b*x^4), x, 6, ((a + b*x^4)*acsch(a + b*x^4))/(4*b) + atanh(sqrt(1 + 1/(a + b*x^4)^2))/(4*b)]

    @test_int [x^(n-1)*acsch(a + b*x^n), x, 6, ((a + b*x^n)*acsch(a + b*x^n))/(b*n) + atanh(sqrt(1 + 1/(a + b*x^n)^2))/(b*n)]
    end
