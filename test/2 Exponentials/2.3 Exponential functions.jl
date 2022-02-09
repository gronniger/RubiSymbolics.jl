@testset "2.3 Exponential functions" begin
    (F, G, H, a, b, c, d, e, f, g, h, i, k, m, n, p, r, s, t, x, ) = @variables F G H a b c d e f g h i k m n p r s t x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Exponentials=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(G^(h*(f+g*x)))^m*(a+b*(F^(e*(c+d*x)))^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F^(e+f*x)*(a+b*F^(e+f*x))^p=#


    @test_int [ℯ^x/(4 + 6*ℯ^x), x, 2, (1/6)*log(2 + 3*ℯ^x)]
    @test_int [ℯ^x/(a + b*ℯ^x), x, 2, log(a + b*ℯ^x)/b]
    @test_int [ℯ^(d*x)/(a + b*ℯ^(c + d*x)), x, 3, log(a + b*ℯ^(c + d*x))/(ℯ^c*(b*d))]
    @test_int [ℯ^(c + d*x)/(a + b*ℯ^(c + d*x)), x, 2, log(a + b*ℯ^(c + d*x))/(b*d)]

    @test_int [ℯ^x*(a + b*ℯ^x)^n, x, 2, (a + b*ℯ^x)^(1 + n)/(b*(1 + n))]
    @test_int [ℯ^(d*x)*(a + b*ℯ^(c + d*x))^n, x, 3, (a + b*ℯ^(c + d*x))^(1 + n)/(ℯ^c*(b*d*(1 + n)))]
    @test_int [ℯ^(c + d*x)*(a + b*ℯ^(c + d*x))^n, x, 2, (a + b*ℯ^(c + d*x))^(1 + n)/(b*d*(1 + n))]


    @test_int [F^x/(a + b*F^x), x, 2, log(a + b*F^x)/(b*log(F))]
    @test_int [F^(d*x)/(a + b*F^(c + d*x)), x, 3, log(a + b*F^(c + d*x))/(F^c*(b*d*log(F)))]
    @test_int [F^(c + d*x)/(a + b*F^(c + d*x)), x, 2, log(a + b*F^(c + d*x))/(b*d*log(F))]

    @test_int [F^x*(a + b*F^x)^n, x, 2, (a + b*F^x)^(1 + n)/(b*(1 + n)*log(F))]
    @test_int [F^(d*x)*(a + b*F^(c + d*x))^n, x, 3, (a + b*F^(c + d*x))^(1 + n)/(F^c*(b*d*(1 + n)*log(F)))]
    @test_int [F^(c + d*x)*(a + b*F^(c + d*x))^n, x, 2, (a + b*F^(c + d*x))^(1 + n)/(b*d*(1 + n)*log(F))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(G^(h*(f+g*x)))^m*(a+b*(F^(e*(c+d*x)))^n)^p*when*d*e*n*log(f)=g*h*m*log(g)=#


    @test_int [(ℯ^x)^n*(a + b*(ℯ^x)^n)^p, x, 2, (a + b*(ℯ^x)^n)^(1 + p)/(b*n*(1 + p))]
    @test_int [ℯ^(n*x)*(a + b*(ℯ^x)^n)^p, x, 3, (ℯ^(n*x)*(a + b*(ℯ^x)^n)^(1 + p))/((ℯ^x)^n*(b*n*(1 + p)))]


    @test_int [(F^(e*(c + d*x)))^n*(a + b*(F^(e*(c + d*x)))^n)^p, x, 2, (a + b*(F^(e*(c + d*x)))^n)^(1 + p)/(b*d*e*n*(1 + p)*log(F))]


    @test_int [(G^(h*(f + g*x)))^(d*e*n*log(F)/(g*h*log(G)))*(a + b*(F^(e*(c + d*x)))^n)^p, x, 3, ((a + b*(F^(e*(c + d*x)))^n)^(1 + p)*(G^(h*(f + g*x)))^((d*e*n*log(F))/(g*h*log(G))))/((F^(e*(c + d*x)))^n*(b*d*e*n*(1 + p)*log(F)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*G^(h*(f+g*x))*(a+b*F^(e*(c+d*x)))^p=#


    @test_int [ℯ^(2*x)/(a + b*ℯ^x), x, 3, ℯ^x/b - (a*log(a + b*ℯ^x))/b^2]
    @test_int [ℯ^(2*x)/(a + b*ℯ^x)^2, x, 3, a/(b^2*(a + b*ℯ^x)) + log(a + b*ℯ^x)/b^2]
    @test_int [ℯ^(2*x)/(a + b*ℯ^x)^3, x, 2, ℯ^(2*x)/(2*a*(a + b*ℯ^x)^2)]
    @test_int [ℯ^(2*x)/(a + b*ℯ^x)^4, x, 3, a/(3*b^2*(a + b*ℯ^x)^3) - 1/(2*b^2*(a + b*ℯ^x)^2)]

    @test_int [ℯ^(4*x)/(a + b*ℯ^(2*x)), x, 3, ℯ^(2*x)/(2*b) - (a*log(a + b*ℯ^(2*x)))/(2*b^2)]
    @test_int [ℯ^(4*x)/(a + b*ℯ^(2*x))^2, x, 3, a/(2*b^2*(a + b*ℯ^(2*x))) + log(a + b*ℯ^(2*x))/(2*b^2)]
    @test_int [ℯ^(4*x)/(a + b*ℯ^(2*x))^3, x, 2, ℯ^(4*x)/(4*a*(a + b*ℯ^(2*x))^2)]
    @test_int [ℯ^(4*x)/(a + b*ℯ^(2*x))^4, x, 3, a/(6*b^2*(a + b*ℯ^(2*x))^3) - 1/(4*b^2*(a + b*ℯ^(2*x))^2)]

    @test_int [ℯ^(4*x)/(a + b*ℯ^(2*x))^(2/3), x, 3, -((3*a*(a + b*ℯ^(2*x))^(1/3))/(2*b^2)) + (3*(a + b*ℯ^(2*x))^(4/3))/(8*b^2)]


    @test_int [ℯ^(-n*x)*(a + b*ℯ^(n*x)), x, 3, -(a/(ℯ^(n*x)*n)) + b*x]
    @test_int [ℯ^(-n*x)*(a + b*ℯ^(n*x))^2, x, 3, -(a^2/(ℯ^(n*x)*n)) + (b^2*ℯ^(n*x))/n + 2*a*b*x]
    @test_int [ℯ^(-n*x)*(a + b*ℯ^(n*x))^3, x, 3, -(a^3/(ℯ^(n*x)*n)) + (3*a*b^2*ℯ^(n*x))/n + (b^3*ℯ^(2*n*x))/(2*n) + 3*a^2*b*x]

    @test_int [ℯ^(-n*x)/(a + b*ℯ^(n*x)), x, 3, -(1/(ℯ^(n*x)*(a*n))) - (b*x)/a^2 + (b*log(a + b*ℯ^(n*x)))/(a^2*n)]
    @test_int [ℯ^(-n*x)/(a + b*ℯ^(n*x))^2, x, 3, -(1/(ℯ^(n*x)*(a^2*n))) - b/(a^2*(a + b*ℯ^(n*x))*n) - (2*b*x)/a^3 + (2*b*log(a + b*ℯ^(n*x)))/(a^3*n)]
    @test_int [ℯ^(-n*x)/(a + b*ℯ^(n*x))^3, x, 3, -(1/(ℯ^(n*x)*(a^3*n))) - b/(2*a^2*(a + b*ℯ^(n*x))^2*n) - (2*b)/(a^3*(a + b*ℯ^(n*x))*n) - (3*b*x)/a^4 + (3*b*log(a + b*ℯ^(n*x)))/(a^4*n)]


    @test_int [f^(a + b*x)/(c + d*f^(e + 2*b*x)), x, 2, (f^(a - e/2)*atan((sqrt(d)*f^(e/2 + b*x))/sqrt(c)))/(b*sqrt(c)*sqrt(d)*log(f))]
    @test_int [f^(a + 2*b*x)/(c + d*f^(e + 2*b*x)), x, 3, (f^(a - e)*log(c + d*f^(e + 2*b*x)))/(2*b*d*log(f))]
    @test_int [f^(a + 3*b*x)/(c + d*f^(e + 2*b*x)), x, 3, f^((1/2)*(2*a - 3*e) + (1/2)*(e + 2*b*x))/(b*d*log(f)) - (sqrt(c)*f^(a - (3*e)/2)*atan((sqrt(d)*f^((1/2)*(e + 2*b*x)))/sqrt(c)))/(b*d^(3/2)*log(f))]
    @test_int [f^(a + 4*b*x)/(c + d*f^(e + 2*b*x)), x, 3, f^(a - e + 2*b*x)/(2*b*d*log(f)) - (c*f^(a - 2*e)*log(c + d*f^(e + 2*b*x)))/(2*b*d^2*log(f))]
    @test_int [f^(a + 5*b*x)/(c + d*f^(e + 2*b*x)), x, 4, -((c*f^((1/2)*(2*a - 5*e) + (1/2)*(e + 2*b*x)))/(b*d^2*log(f))) + f^((1/2)*(2*a - 5*e) + (3/2)*(e + 2*b*x))/(3*b*d*log(f)) + (c^(3/2)*f^(a - (5*e)/2)*atan((sqrt(d)*f^((1/2)*(e + 2*b*x)))/sqrt(c)))/(b*d^(5/2)*log(f))]


    @test_int [x^0*ℯ^x/(1 + ℯ^(2*x)), x, 2, atan(ℯ^x)]
    @test_int [x^0*ℯ^x/(1 - ℯ^(2*x)), x, 2, atanh(ℯ^x)]
    @test_int [x^1*ℯ^x/(1 - ℯ^(2*x)), x, 3, x*atanh(ℯ^x) + (1/2)*PolyLog(2, -ℯ^x) - (1/2)*PolyLog(2, ℯ^x)]
    @test_int [x^2*ℯ^x/(1 - ℯ^(2*x)), x, 8, x^2*atanh(ℯ^x) + x*PolyLog(2, -ℯ^x) - x*PolyLog(2, ℯ^x) - PolyLog(3, -ℯ^x) + PolyLog(3, ℯ^x)]
    @test_int [x^3*ℯ^x/(1 - ℯ^(2*x)), x, 10, x^3*atanh(ℯ^x) + (3/2)*x^2*PolyLog(2, -ℯ^x) - (3/2)*x^2*PolyLog(2, ℯ^x) - 3*x*PolyLog(3, -ℯ^x) + 3*x*PolyLog(3, ℯ^x) + 3*PolyLog(4, -ℯ^x) - 3*PolyLog(4, ℯ^x)]


    @test_int [x^0*f^x/(a + b*f^(2*x)), x, 2, atan((sqrt(b)*f^x)/sqrt(a))/(sqrt(a)*sqrt(b)*log(f))]
    @test_int [x^1*f^x/(a + b*f^(2*x)), x, 6, (x*atan((sqrt(b)*f^x)/sqrt(a)))/(sqrt(a)*sqrt(b)*log(f)) - (im*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*sqrt(a)*sqrt(b)*log(f)^2) + (im*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(2*sqrt(a)*sqrt(b)*log(f)^2)]
    @test_int [x^2*f^x/(a + b*f^(2*x)), x, 9, (x^2*atan((sqrt(b)*f^x)/sqrt(a)))/(sqrt(a)*sqrt(b)*log(f)) - (im*x*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(sqrt(a)*sqrt(b)*log(f)^2) + (im*x*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(sqrt(a)*sqrt(b)*log(f)^2) + (im*PolyLog(3, -((im*sqrt(b)*f^x)/sqrt(a))))/(sqrt(a)*sqrt(b)*log(f)^3) - (im*PolyLog(3, (im*sqrt(b)*f^x)/sqrt(a)))/(sqrt(a)*sqrt(b)*log(f)^3)]
    @test_int [x^3*f^x/(a + b*f^(2*x)), x, 11, (x^3*atan((sqrt(b)*f^x)/sqrt(a)))/(sqrt(a)*sqrt(b)*log(f)) - (3*im*x^2*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*sqrt(a)*sqrt(b)*log(f)^2) + (3*im*x^2*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(2*sqrt(a)*sqrt(b)*log(f)^2) + (3*im*x*PolyLog(3, -((im*sqrt(b)*f^x)/sqrt(a))))/(sqrt(a)*sqrt(b)*log(f)^3) - (3*im*x*PolyLog(3, (im*sqrt(b)*f^x)/sqrt(a)))/(sqrt(a)*sqrt(b)*log(f)^3) - (3*im*PolyLog(4, -((im*sqrt(b)*f^x)/sqrt(a))))/(sqrt(a)*sqrt(b)*log(f)^4) + (3*im*PolyLog(4, (im*sqrt(b)*f^x)/sqrt(a)))/(sqrt(a)*sqrt(b)*log(f)^4)]


    @test_int [x^0*f^x/(a + b*f^(2*x))^2, x, 3, f^x/(2*a*(a + b*f^(2*x))*log(f)) + atan((sqrt(b)*f^x)/sqrt(a))/(2*a^(3/2)*sqrt(b)*log(f))]
    @test_int [x^1*f^x/(a + b*f^(2*x))^2, x, 8, -(atan((sqrt(b)*f^x)/sqrt(a))/(2*a^(3/2)*sqrt(b)*log(f)^2)) + (f^x*x)/(2*a*(a + b*f^(2*x))*log(f)) + (x*atan((sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)) - (im*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(4*a^(3/2)*sqrt(b)*log(f)^2) + (im*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(4*a^(3/2)*sqrt(b)*log(f)^2)]
    @test_int [x^2*f^x/(a + b*f^(2*x))^2, x, 16, -((x*atan((sqrt(b)*f^x)/sqrt(a)))/(a^(3/2)*sqrt(b)*log(f)^2)) + (f^x*x^2)/(2*a*(a + b*f^(2*x))*log(f)) + (x^2*atan((sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)) + (im*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*a^(3/2)*sqrt(b)*log(f)^3) - (im*x*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*a^(3/2)*sqrt(b)*log(f)^2) - (im*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)^3) + (im*x*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)^2) + (im*PolyLog(3, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*a^(3/2)*sqrt(b)*log(f)^3) - (im*PolyLog(3, (im*sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)^3)]
    @test_int [x^3*f^x/(a + b*f^(2*x))^2, x, 21, -((3*x^2*atan((sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)^2)) + (f^x*x^3)/(2*a*(a + b*f^(2*x))*log(f)) + (x^3*atan((sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)) + (3*im*x*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*a^(3/2)*sqrt(b)*log(f)^3) - (3*im*x^2*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(4*a^(3/2)*sqrt(b)*log(f)^2) - (3*im*x*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)^3) + (3*im*x^2*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(4*a^(3/2)*sqrt(b)*log(f)^2) - (3*im*PolyLog(3, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*a^(3/2)*sqrt(b)*log(f)^4) + (3*im*x*PolyLog(3, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*a^(3/2)*sqrt(b)*log(f)^3) + (3*im*PolyLog(3, (im*sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)^4) - (3*im*x*PolyLog(3, (im*sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)^3) - (3*im*PolyLog(4, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*a^(3/2)*sqrt(b)*log(f)^4) + (3*im*PolyLog(4, (im*sqrt(b)*f^x)/sqrt(a)))/(2*a^(3/2)*sqrt(b)*log(f)^4)]


    @test_int [x^0*f^x/(a + b*f^(2*x))^3, x, 4, f^x/(4*a*(a + b*f^(2*x))^2*log(f)) + (3*f^x)/(8*a^2*(a + b*f^(2*x))*log(f)) + (3*atan((sqrt(b)*f^x)/sqrt(a)))/(8*a^(5/2)*sqrt(b)*log(f))]
    @test_int [x^1*f^x/(a + b*f^(2*x))^3, x, 11, -(f^x/(8*a^2*(a + b*f^(2*x))*log(f)^2)) - atan((sqrt(b)*f^x)/sqrt(a))/(2*a^(5/2)*sqrt(b)*log(f)^2) + (f^x*x)/(4*a*(a + b*f^(2*x))^2*log(f)) + (3*f^x*x)/(8*a^2*(a + b*f^(2*x))*log(f)) + (3*x*atan((sqrt(b)*f^x)/sqrt(a)))/(8*a^(5/2)*sqrt(b)*log(f)) - (3*im*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(16*a^(5/2)*sqrt(b)*log(f)^2) + (3*im*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(16*a^(5/2)*sqrt(b)*log(f)^2)]
    @test_int [x^2*f^x/(a + b*f^(2*x))^3, x, 24, atan((sqrt(b)*f^x)/sqrt(a))/(4*a^(5/2)*sqrt(b)*log(f)^3) - (f^x*x)/(4*a^2*(a + b*f^(2*x))*log(f)^2) - (x*atan((sqrt(b)*f^x)/sqrt(a)))/(a^(5/2)*sqrt(b)*log(f)^2) + (f^x*x^2)/(4*a*(a + b*f^(2*x))^2*log(f)) + (3*f^x*x^2)/(8*a^2*(a + b*f^(2*x))*log(f)) + (3*x^2*atan((sqrt(b)*f^x)/sqrt(a)))/(8*a^(5/2)*sqrt(b)*log(f)) + (im*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(2*a^(5/2)*sqrt(b)*log(f)^3) - (3*im*x*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(8*a^(5/2)*sqrt(b)*log(f)^2) - (im*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(2*a^(5/2)*sqrt(b)*log(f)^3) + (3*im*x*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(8*a^(5/2)*sqrt(b)*log(f)^2) + (3*im*PolyLog(3, -((im*sqrt(b)*f^x)/sqrt(a))))/(8*a^(5/2)*sqrt(b)*log(f)^3) - (3*im*PolyLog(3, (im*sqrt(b)*f^x)/sqrt(a)))/(8*a^(5/2)*sqrt(b)*log(f)^3)]
    #= [x^3*f^x/(a + b*f^(2*x))^3, x, 30, (3*x*atan((sqrt(b)*f^x)/sqrt(a)))/(4*a^(5/2)*sqrt(b)*log(f)^3) - (3*f^x*x^2)/(8*a^2*(a + b*f^(2*x))*log(f)^2) - (3*x^2*atan((sqrt(b)*f^x)/sqrt(a)))/(2*a^(5/2)*sqrt(b)*log(f)^2) + (x^3*((2*a^(3/2)*f^x)/(a + b*f^(2*x))^2 + (3*sqrt(a)*f^x)/(a + b*f^(2*x)) + (3*atan((sqrt(b)*f^x)/sqrt(a)))/sqrt(b)))/(8*a^(5/2)*log(f)) - (3*im*(2 - 8*x*log(f) + 3*x^2*log(f)^2)*PolyLog(2, -((im*sqrt(b)*f^x)/sqrt(a))))/(16*a^(5/2)*sqrt(b)*log(f)^4) + (3*im*(2 - 8*x*log(f) + 3*x^2*log(f)^2)*PolyLog(2, (im*sqrt(b)*f^x)/sqrt(a)))/(16*a^(5/2)*sqrt(b)*log(f)^4) - (3*im*(4 - 3*x*log(f))*PolyLog(3, -((im*sqrt(b)*f^x)/sqrt(a))))/(8*a^(5/2)*sqrt(b)*log(f)^4) + (3*im*(4 - 3*x*log(f))*PolyLog(3, (im*sqrt(b)*f^x)/sqrt(a)))/(8*a^(5/2)*sqrt(b)*log(f)^4) - (9*im*PolyLog(4, -((im*sqrt(b)*f^x)/sqrt(a))))/(8*a^(5/2)*sqrt(b)*log(f)^4) + (9*im*PolyLog(4, (im*sqrt(b)*f^x)/sqrt(a)))/(8*a^(5/2)*sqrt(b)*log(f)^4)] =#


    @test_int [x^0/(a*f^x + b*f^(-x)), x, 2, atan((sqrt(a)*f^x)/sqrt(b))/(sqrt(a)*sqrt(b)*log(f))]
    @test_int [x^1/(a*f^x + b*f^(-x)), x, 6, (x*atan((sqrt(a)*f^x)/sqrt(b)))/(sqrt(a)*sqrt(b)*log(f)) - (im*PolyLog(2, -((im*sqrt(a)*f^x)/sqrt(b))))/(2*sqrt(a)*sqrt(b)*log(f)^2) + (im*PolyLog(2, (im*sqrt(a)*f^x)/sqrt(b)))/(2*sqrt(a)*sqrt(b)*log(f)^2)]
    @test_int [x^2/(a*f^x + b*f^(-x)), x, 9, (x^2*atan((sqrt(a)*f^x)/sqrt(b)))/(sqrt(a)*sqrt(b)*log(f)) - (im*x*PolyLog(2, -((im*sqrt(a)*f^x)/sqrt(b))))/(sqrt(a)*sqrt(b)*log(f)^2) + (im*x*PolyLog(2, (im*sqrt(a)*f^x)/sqrt(b)))/(sqrt(a)*sqrt(b)*log(f)^2) + (im*PolyLog(3, -((im*sqrt(a)*f^x)/sqrt(b))))/(sqrt(a)*sqrt(b)*log(f)^3) - (im*PolyLog(3, (im*sqrt(a)*f^x)/sqrt(b)))/(sqrt(a)*sqrt(b)*log(f)^3)]
    @test_int [x^3/(a*f^x + b*f^(-x)), x, 11, (x^3*atan((sqrt(a)*f^x)/sqrt(b)))/(sqrt(a)*sqrt(b)*log(f)) - (3*im*x^2*PolyLog(2, -((im*sqrt(a)*f^x)/sqrt(b))))/(2*sqrt(a)*sqrt(b)*log(f)^2) + (3*im*x^2*PolyLog(2, (im*sqrt(a)*f^x)/sqrt(b)))/(2*sqrt(a)*sqrt(b)*log(f)^2) + (3*im*x*PolyLog(3, -((im*sqrt(a)*f^x)/sqrt(b))))/(sqrt(a)*sqrt(b)*log(f)^3) - (3*im*x*PolyLog(3, (im*sqrt(a)*f^x)/sqrt(b)))/(sqrt(a)*sqrt(b)*log(f)^3) - (3*im*PolyLog(4, -((im*sqrt(a)*f^x)/sqrt(b))))/(sqrt(a)*sqrt(b)*log(f)^4) + (3*im*PolyLog(4, (im*sqrt(a)*f^x)/sqrt(b)))/(sqrt(a)*sqrt(b)*log(f)^4)]


    @test_int [x^0/(a*f^x + b*f^(-x))^2, x, 2, -(1/(2*a*(b + a*f^(2*x))*log(f)))]
    @test_int [x^1/(a*f^x + b*f^(-x))^2, x, 6, x/(2*a*b*log(f)) - x/(2*a*(b + a*f^(2*x))*log(f)) - log(b + a*f^(2*x))/(4*a*b*log(f)^2)]
    @test_int [x^2/(a*f^x + b*f^(-x))^2, x, 6, x^2/(2*a*b*log(f)) - x^2/(2*a*(b + a*f^(2*x))*log(f)) - (x*log(1 + (a*f^(2*x))/b))/(2*a*b*log(f)^2) - PolyLog(2, -((a*f^(2*x))/b))/(4*a*b*log(f)^3)]
    @test_int [x^3/(a*f^x + b*f^(-x))^2, x, 7, x^3/(2*a*b*log(f)) - x^3/(2*a*(b + a*f^(2*x))*log(f)) - (3*x^2*log(1 + (a*f^(2*x))/b))/(4*a*b*log(f)^2) - (3*x*PolyLog(2, -((a*f^(2*x))/b)))/(4*a*b*log(f)^3) + (3*PolyLog(3, -((a*f^(2*x))/b)))/(8*a*b*log(f)^4)]


    @test_int [x^0/(a*f^x + b*f^(-x))^3, x, 4, -(f^x/(4*a*(b + a*f^(2*x))^2*log(f))) + f^x/(8*a*b*(b + a*f^(2*x))*log(f)) + atan((sqrt(a)*f^x)/sqrt(b))/(8*a^(3/2)*b^(3/2)*log(f))]
    @test_int [x^1/(a*f^x + b*f^(-x))^3, x, 22, f^x/(8*a*b*(b + a*f^(2*x))*log(f)^2) - (f^x*x)/(4*a*(b + a*f^(2*x))^2*log(f)) + (f^x*x)/(8*a*b*(b + a*f^(2*x))*log(f)) + (x*atan((sqrt(a)*f^x)/sqrt(b)))/(8*a^(3/2)*b^(3/2)*log(f)) - (im*PolyLog(2, -((im*sqrt(a)*f^x)/sqrt(b))))/(16*a^(3/2)*b^(3/2)*log(f)^2) + (im*PolyLog(2, (im*sqrt(a)*f^x)/sqrt(b)))/(16*a^(3/2)*b^(3/2)*log(f)^2)]
    @test_int [x^2/(a*f^x + b*f^(-x))^3, x, 43, -(atan((sqrt(a)*f^x)/sqrt(b))/(4*a^(3/2)*b^(3/2)*log(f)^3)) + (f^x*x)/(4*a*b*(b + a*f^(2*x))*log(f)^2) - (f^x*x^2)/(4*a*(b + a*f^(2*x))^2*log(f)) + (f^x*x^2)/(8*a*b*(b + a*f^(2*x))*log(f)) + (x^2*atan((sqrt(a)*f^x)/sqrt(b)))/(8*a^(3/2)*b^(3/2)*log(f)) - (im*x*PolyLog(2, -((im*sqrt(a)*f^x)/sqrt(b))))/(8*a^(3/2)*b^(3/2)*log(f)^2) + (im*x*PolyLog(2, (im*sqrt(a)*f^x)/sqrt(b)))/(8*a^(3/2)*b^(3/2)*log(f)^2) + (im*PolyLog(3, -((im*sqrt(a)*f^x)/sqrt(b))))/(8*a^(3/2)*b^(3/2)*log(f)^3) - (im*PolyLog(3, (im*sqrt(a)*f^x)/sqrt(b)))/(8*a^(3/2)*b^(3/2)*log(f)^3)]
    #= [x^3/(a*f^x + b*f^(-x))^3, x, 49, -((3*x*atan((sqrt(a)*f^x)/sqrt(b)))/(4*a^(3/2)*b^(3/2)*log(f)^3)) + (3*f^x*x^2)/(8*a*b*(b + a*f^(2*x))*log(f)^2) - (f^x*(5 + (3*a*f^(2*x))/b)*x^3)/(8*a*(b + a*f^(2*x))^2*log(f)) + (x^3*((4*sqrt(a)*sqrt(b)*f^x)/(b + a*f^(2*x)) + atan((sqrt(a)*f^x)/sqrt(b))))/(8*a^(3/2)*b^(3/2)*log(f)) + (3*im*(2 - x^2*log(f)^2)*PolyLog(2, -((im*sqrt(a)*f^x)/sqrt(b))))/(16*a^(3/2)*b^(3/2)*log(f)^4) - (3*im*(2 - x^2*log(f)^2)*PolyLog(2, (im*sqrt(a)*f^x)/sqrt(b)))/(16*a^(3/2)*b^(3/2)*log(f)^4) + (3*im*x*PolyLog(3, -((im*sqrt(a)*f^x)/sqrt(b))))/(8*a^(3/2)*b^(3/2)*log(f)^3) - (3*im*x*PolyLog(3, (im*sqrt(a)*f^x)/sqrt(b)))/(8*a^(3/2)*b^(3/2)*log(f)^3) - (3*im*PolyLog(4, -((im*sqrt(a)*f^x)/sqrt(b))))/(8*a^(3/2)*b^(3/2)*log(f)^4) + (3*im*PolyLog(4, (im*sqrt(a)*f^x)/sqrt(b)))/(8*a^(3/2)*b^(3/2)*log(f)^4)] =#


    @test_int [f^(a + b*x + c*x^2)*g^(d + e*x + f*x^2), x, 3, (f^a*g^d*sqrt(pi)*erfi((b*log(f) + e*log(g) + 2*x*(c*log(f) + f*log(g)))/(2*sqrt(c*log(f) + f*log(g)))))/(ℯ^((b*log(f) + e*log(g))^2/(4*(c*log(f) + f*log(g))))*(2*sqrt(c*log(f) + f*log(g))))]


    @test_int [F^(e*(c + d*x))*(a + b*G^(h*(f + g*x)))^n, x, 2, (F^(e*(c + d*x))*(a + b*G^(h*(f + g*x)))^n*HypergeometricFunctions._₂F₁(-n, (d*e*log(F))/(g*h*log(G)), 1 + (d*e*log(F))/(g*h*log(G)), -((b*G^(h*(f + g*x)))/a)))/((1 + (b*G^(h*(f + g*x)))/a)^n*(d*e*log(F)))]


    @test_int [F^(e*(c + d*x))*H^(t*(r + s*x))/(a + b*F^(e*(c + d*x))), x, 2, (H^(t*(r + s*x))*HypergeometricFunctions._₂F₁(1, -((s*t*log(H))/(d*e*log(F))), 1 - (s*t*log(H))/(d*e*log(F)), -(a/(F^(e*(c + d*x))*b))))/(b*s*t*log(H))]
    @test_int [F^(e*(f + d*x))*H^(t*(r + s*x))/(a + b*F^(e*(c + d*x))), x, 2, (H^(t*(r + s*x))*HypergeometricFunctions._₂F₁(1, -((s*t*log(H))/(d*e*log(F))), 1 - (s*t*log(H))/(d*e*log(F)), -(a/(F^(e*(c + d*x))*b))))/(F^(e*(c - f))*(b*s*t*log(H)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(a+b*x^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [f^(a + b*x^2)*x^m, x, 1, (-(1/2))*f^a*x^(1 + m)*Gamma((1 + m)/2, (-b)*x^2*log(f))*((-b)*x^2*log(f))^((1/2)*(-1 - m))]

    @test_int [f^(a + b*x^2)*x^11, x, 1, -((f^(a + b*x^2)*(120 - 120*b*x^2*log(f) + 60*b^2*x^4*log(f)^2 - 20*b^3*x^6*log(f)^3 + 5*b^4*x^8*log(f)^4 - b^5*x^10*log(f)^5))/(2*b^6*log(f)^6))]
    @test_int [f^(a + b*x^2)*x^9, x, 1, (f^(a + b*x^2)*(24 - 24*b*x^2*log(f) + 12*b^2*x^4*log(f)^2 - 4*b^3*x^6*log(f)^3 + b^4*x^8*log(f)^4))/(2*b^5*log(f)^5)]
    @test_int [f^(a + b*x^2)*x^7, x, 4, -((3*f^(a + b*x^2))/(b^4*log(f)^4)) + (3*f^(a + b*x^2)*x^2)/(b^3*log(f)^3) - (3*f^(a + b*x^2)*x^4)/(2*b^2*log(f)^2) + (f^(a + b*x^2)*x^6)/(2*b*log(f))]
    @test_int [f^(a + b*x^2)*x^5, x, 3, f^(a + b*x^2)/(b^3*log(f)^3) - (f^(a + b*x^2)*x^2)/(b^2*log(f)^2) + (f^(a + b*x^2)*x^4)/(2*b*log(f))]
    @test_int [f^(a + b*x^2)*x^3, x, 2, -(f^(a + b*x^2)/(2*b^2*log(f)^2)) + (f^(a + b*x^2)*x^2)/(2*b*log(f))]
    @test_int [f^(a + b*x^2)*x^1, x, 1, f^(a + b*x^2)/(2*b*log(f))]
    @test_int [f^(a + b*x^2)/x^1, x, 1, (1/2)*f^a*ExpIntegralEi(b*x^2*log(f))]
    @test_int [f^(a + b*x^2)/x^3, x, 2, -(f^(a + b*x^2)/(2*x^2)) + (1/2)*b*f^a*ExpIntegralEi(b*x^2*log(f))*log(f)]
    @test_int [f^(a + b*x^2)/x^5, x, 3, -(f^(a + b*x^2)/(4*x^4)) - (b*f^(a + b*x^2)*log(f))/(4*x^2) + (1/4)*b^2*f^a*ExpIntegralEi(b*x^2*log(f))*log(f)^2]
    @test_int [f^(a + b*x^2)/x^7, x, 4, -(f^(a + b*x^2)/(6*x^6)) - (b*f^(a + b*x^2)*log(f))/(12*x^4) - (b^2*f^(a + b*x^2)*log(f)^2)/(12*x^2) + (1/12)*b^3*f^a*ExpIntegralEi(b*x^2*log(f))*log(f)^3]
    @test_int [f^(a + b*x^2)/x^9, x, 1, (-(1/2))*b^4*f^a*Gamma(-4, (-b)*x^2*log(f))*log(f)^4]
    @test_int [f^(a + b*x^2)/x^11, x, 1, (1/2)*b^5*f^a*Gamma(-5, (-b)*x^2*log(f))*log(f)^5]

    @test_int [f^(a + b*x^2)*x^12, x, 1, -((f^a*x^13*Gamma(13/2, (-b)*x^2*log(f)))/(2*((-b)*x^2*log(f))^(13/2)))]
    @test_int [f^(a + b*x^2)*x^10, x, 1, -((f^a*x^11*Gamma(11/2, (-b)*x^2*log(f)))/(2*((-b)*x^2*log(f))^(11/2)))]
    @test_int [f^(a + b*x^2)*x^8, x, 5, (105*f^a*sqrt(pi)*erfi(sqrt(b)*x*sqrt(log(f))))/(32*b^(9/2)*log(f)^(9/2)) - (105*f^(a + b*x^2)*x)/(16*b^4*log(f)^4) + (35*f^(a + b*x^2)*x^3)/(8*b^3*log(f)^3) - (7*f^(a + b*x^2)*x^5)/(4*b^2*log(f)^2) + (f^(a + b*x^2)*x^7)/(2*b*log(f))]
    @test_int [f^(a + b*x^2)*x^6, x, 4, -((15*f^a*sqrt(pi)*erfi(sqrt(b)*x*sqrt(log(f))))/(16*b^(7/2)*log(f)^(7/2))) + (15*f^(a + b*x^2)*x)/(8*b^3*log(f)^3) - (5*f^(a + b*x^2)*x^3)/(4*b^2*log(f)^2) + (f^(a + b*x^2)*x^5)/(2*b*log(f))]
    @test_int [f^(a + b*x^2)*x^4, x, 3, (3*f^a*sqrt(pi)*erfi(sqrt(b)*x*sqrt(log(f))))/(8*b^(5/2)*log(f)^(5/2)) - (3*f^(a + b*x^2)*x)/(4*b^2*log(f)^2) + (f^(a + b*x^2)*x^3)/(2*b*log(f))]
    @test_int [f^(a + b*x^2)*x^2, x, 2, -((f^a*sqrt(pi)*erfi(sqrt(b)*x*sqrt(log(f))))/(4*b^(3/2)*log(f)^(3/2))) + (f^(a + b*x^2)*x)/(2*b*log(f))]
    @test_int [f^(a + b*x^2)*x^0, x, 1, (f^a*sqrt(pi)*erfi(sqrt(b)*x*sqrt(log(f))))/(2*sqrt(b)*sqrt(log(f)))]
    @test_int [f^(a + b*x^2)/x^2, x, 2, -(f^(a + b*x^2)/x) + sqrt(b)*f^a*sqrt(pi)*erfi(sqrt(b)*x*sqrt(log(f)))*sqrt(log(f))]
    @test_int [f^(a + b*x^2)/x^4, x, 3, -(f^(a + b*x^2)/(3*x^3)) - (2*b*f^(a + b*x^2)*log(f))/(3*x) + (2/3)*b^(3/2)*f^a*sqrt(pi)*erfi(sqrt(b)*x*sqrt(log(f)))*log(f)^(3/2)]
    @test_int [f^(a + b*x^2)/x^6, x, 4, -(f^(a + b*x^2)/(5*x^5)) - (2*b*f^(a + b*x^2)*log(f))/(15*x^3) - (4*b^2*f^(a + b*x^2)*log(f)^2)/(15*x) + (4/15)*b^(5/2)*f^a*sqrt(pi)*erfi(sqrt(b)*x*sqrt(log(f)))*log(f)^(5/2)]
    @test_int [f^(a + b*x^2)/x^8, x, 5, -(f^(a + b*x^2)/(7*x^7)) - (2*b*f^(a + b*x^2)*log(f))/(35*x^5) - (4*b^2*f^(a + b*x^2)*log(f)^2)/(105*x^3) - (8*b^3*f^(a + b*x^2)*log(f)^3)/(105*x) + (8/105)*b^(7/2)*f^a*sqrt(pi)*erfi(sqrt(b)*x*sqrt(log(f)))*log(f)^(7/2)]
    @test_int [f^(a + b*x^2)/x^10, x, 1, -((f^a*Gamma(-(9/2), (-b)*x^2*log(f))*((-b)*x^2*log(f))^(9/2))/(2*x^9))]
    @test_int [f^(a + b*x^2)/x^12, x, 1, -((f^a*Gamma(-(11/2), (-b)*x^2*log(f))*((-b)*x^2*log(f))^(11/2))/(2*x^11))]


    @test_int [f^(a + b*x^3)*x^m, x, 1, (-(1/3))*f^a*x^(1 + m)*Gamma((1 + m)/3, (-b)*x^3*log(f))*((-b)*x^3*log(f))^((1/3)*(-1 - m))]

    @test_int [f^(a + b*x^3)*x^17, x, 1, -((f^(a + b*x^3)*(120 - 120*b*x^3*log(f) + 60*b^2*x^6*log(f)^2 - 20*b^3*x^9*log(f)^3 + 5*b^4*x^12*log(f)^4 - b^5*x^15*log(f)^5))/(3*b^6*log(f)^6))]
    @test_int [f^(a + b*x^3)*x^14, x, 1, (f^(a + b*x^3)*(24 - 24*b*x^3*log(f) + 12*b^2*x^6*log(f)^2 - 4*b^3*x^9*log(f)^3 + b^4*x^12*log(f)^4))/(3*b^5*log(f)^5)]
    @test_int [f^(a + b*x^3)*x^11, x, 4, -((2*f^(a + b*x^3))/(b^4*log(f)^4)) + (2*f^(a + b*x^3)*x^3)/(b^3*log(f)^3) - (f^(a + b*x^3)*x^6)/(b^2*log(f)^2) + (f^(a + b*x^3)*x^9)/(3*b*log(f))]
    @test_int [f^(a + b*x^3)*x^8, x, 3, (2*f^(a + b*x^3))/(3*b^3*log(f)^3) - (2*f^(a + b*x^3)*x^3)/(3*b^2*log(f)^2) + (f^(a + b*x^3)*x^6)/(3*b*log(f))]
    @test_int [f^(a + b*x^3)*x^5, x, 2, -(f^(a + b*x^3)/(3*b^2*log(f)^2)) + (f^(a + b*x^3)*x^3)/(3*b*log(f))]
    @test_int [f^(a + b*x^3)*x^2, x, 1, f^(a + b*x^3)/(3*b*log(f))]
    @test_int [f^(a + b*x^3)/x^1, x, 1, (1/3)*f^a*ExpIntegralEi(b*x^3*log(f))]
    @test_int [f^(a + b*x^3)/x^4, x, 2, -(f^(a + b*x^3)/(3*x^3)) + (1/3)*b*f^a*ExpIntegralEi(b*x^3*log(f))*log(f)]
    @test_int [f^(a + b*x^3)/x^7, x, 3, -(f^(a + b*x^3)/(6*x^6)) - (b*f^(a + b*x^3)*log(f))/(6*x^3) + (1/6)*b^2*f^a*ExpIntegralEi(b*x^3*log(f))*log(f)^2]
    @test_int [f^(a + b*x^3)/x^10, x, 4, -(f^(a + b*x^3)/(9*x^9)) - (b*f^(a + b*x^3)*log(f))/(18*x^6) - (b^2*f^(a + b*x^3)*log(f)^2)/(18*x^3) + (1/18)*b^3*f^a*ExpIntegralEi(b*x^3*log(f))*log(f)^3]
    @test_int [f^(a + b*x^3)/x^13, x, 1, (-(1/3))*b^4*f^a*Gamma(-4, (-b)*x^3*log(f))*log(f)^4]
    @test_int [f^(a + b*x^3)/x^16, x, 1, (1/3)*b^5*f^a*Gamma(-5, (-b)*x^3*log(f))*log(f)^5]

    @test_int [f^(a + b*x^3)*x^4, x, 1, -((f^a*x^5*Gamma(5/3, (-b)*x^3*log(f)))/(3*((-b)*x^3*log(f))^(5/3)))]
    @test_int [f^(a + b*x^3)*x^3, x, 1, -((f^a*x^4*Gamma(4/3, (-b)*x^3*log(f)))/(3*((-b)*x^3*log(f))^(4/3)))]
    @test_int [f^(a + b*x^3)*x^1, x, 1, -((f^a*x^2*Gamma(2/3, (-b)*x^3*log(f)))/(3*((-b)*x^3*log(f))^(2/3)))]
    @test_int [f^(a + b*x^3)*x^0, x, 1, -((f^a*x*Gamma(1/3, (-b)*x^3*log(f)))/(3*((-b)*x^3*log(f))^(1/3)))]
    @test_int [f^(a + b*x^3)/x^2, x, 1, -((f^a*Gamma(-(1/3), (-b)*x^3*log(f))*((-b)*x^3*log(f))^(1/3))/(3*x))]
    @test_int [f^(a + b*x^3)/x^3, x, 1, -((f^a*Gamma(-(2/3), (-b)*x^3*log(f))*((-b)*x^3*log(f))^(2/3))/(3*x^2))]


    @test_int [ℯ^(4*x^3)*x^2, x, 1, ℯ^(4*x^3)/12]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [f^(a + b/x)*x^m, x, 1, f^a*x^(1 + m)*Gamma(-1 - m, -((b*log(f))/x))*(-((b*log(f))/x))^(1 + m)]

    @test_int [f^(a + b/x)*x^4, x, 1, (-b^5)*f^a*Gamma(-5, -((b*log(f))/x))*log(f)^5]
    @test_int [f^(a + b/x)*x^3, x, 1, b^4*f^a*Gamma(-4, -((b*log(f))/x))*log(f)^4]
    @test_int [f^(a + b/x)*x^2, x, 4, (1/3)*f^(a + b/x)*x^3 + (1/6)*b*f^(a + b/x)*x^2*log(f) + (1/6)*b^2*f^(a + b/x)*x*log(f)^2 - (1/6)*b^3*f^a*ExpIntegralEi((b*log(f))/x)*log(f)^3]
    @test_int [f^(a + b/x)*x^1, x, 3, (1/2)*f^(a + b/x)*x^2 + (1/2)*b*f^(a + b/x)*x*log(f) - (1/2)*b^2*f^a*ExpIntegralEi((b*log(f))/x)*log(f)^2]
    @test_int [f^(a + b/x)*x^0, x, 2, f^(a + b/x)*x - b*f^a*ExpIntegralEi((b*log(f))/x)*log(f)]
    @test_int [f^(a + b/x)/x^1, x, 1, (-f^a)*ExpIntegralEi((b*log(f))/x)]
    @test_int [f^(a + b/x)/x^2, x, 1, -(f^(a + b/x)/(b*log(f)))]
    @test_int [f^(a + b/x)/x^3, x, 2, f^(a + b/x)/(b^2*log(f)^2) - f^(a + b/x)/(b*x*log(f))]
    @test_int [f^(a + b/x)/x^4, x, 3, -((2*f^(a + b/x))/(b^3*log(f)^3)) + (2*f^(a + b/x))/(b^2*x*log(f)^2) - f^(a + b/x)/(b*x^2*log(f))]
    @test_int [f^(a + b/x)/x^5, x, 4, (6*f^(a + b/x))/(b^4*log(f)^4) - (6*f^(a + b/x))/(b^3*x*log(f)^3) + (3*f^(a + b/x))/(b^2*x^2*log(f)^2) - f^(a + b/x)/(b*x^3*log(f))]
    @test_int [f^(a + b/x)/x^6, x, 1, -((f^(a + b/x)*(24*x^4 - 24*b*x^3*log(f) + 12*b^2*x^2*log(f)^2 - 4*b^3*x*log(f)^3 + b^4*log(f)^4))/(b^5*x^4*log(f)^5))]
    @test_int [f^(a + b/x)/x^7, x, 1, (f^(a + b/x)*(120*x^5 - 120*b*x^4*log(f) + 60*b^2*x^3*log(f)^2 - 20*b^3*x^2*log(f)^3 + 5*b^4*x*log(f)^4 - b^5*log(f)^5))/(b^6*x^5*log(f)^6)]


    @test_int [f^(a + b/x^2)*x^m, x, 1, (1/2)*f^a*x^(1 + m)*Gamma((1/2)*(-1 - m), -((b*log(f))/x^2))*(-((b*log(f))/x^2))^((1 + m)/2)]

    @test_int [f^(a + b/x^2)*x^9, x, 1, (-(1/2))*b^5*f^a*Gamma(-5, -((b*log(f))/x^2))*log(f)^5]
    @test_int [f^(a + b/x^2)*x^7, x, 1, (1/2)*b^4*f^a*Gamma(-4, -((b*log(f))/x^2))*log(f)^4]
    @test_int [f^(a + b/x^2)*x^5, x, 4, (1/6)*f^(a + b/x^2)*x^6 + (1/12)*b*f^(a + b/x^2)*x^4*log(f) + (1/12)*b^2*f^(a + b/x^2)*x^2*log(f)^2 - (1/12)*b^3*f^a*ExpIntegralEi((b*log(f))/x^2)*log(f)^3]
    @test_int [f^(a + b/x^2)*x^3, x, 3, (1/4)*f^(a + b/x^2)*x^4 + (1/4)*b*f^(a + b/x^2)*x^2*log(f) - (1/4)*b^2*f^a*ExpIntegralEi((b*log(f))/x^2)*log(f)^2]
    @test_int [f^(a + b/x^2)*x^1, x, 2, (1/2)*f^(a + b/x^2)*x^2 - (1/2)*b*f^a*ExpIntegralEi((b*log(f))/x^2)*log(f)]
    @test_int [f^(a + b/x^2)/x^1, x, 1, (-(1/2))*f^a*ExpIntegralEi((b*log(f))/x^2)]
    @test_int [f^(a + b/x^2)/x^3, x, 1, -(f^(a + b/x^2)/(2*b*log(f)))]
    @test_int [f^(a + b/x^2)/x^5, x, 2, f^(a + b/x^2)/(2*b^2*log(f)^2) - f^(a + b/x^2)/(2*b*x^2*log(f))]
    @test_int [f^(a + b/x^2)/x^7, x, 3, -(f^(a + b/x^2)/(b^3*log(f)^3)) + f^(a + b/x^2)/(b^2*x^2*log(f)^2) - f^(a + b/x^2)/(2*b*x^4*log(f))]
    @test_int [f^(a + b/x^2)/x^9, x, 4, (3*f^(a + b/x^2))/(b^4*log(f)^4) - (3*f^(a + b/x^2))/(b^3*x^2*log(f)^3) + (3*f^(a + b/x^2))/(2*b^2*x^4*log(f)^2) - f^(a + b/x^2)/(2*b*x^6*log(f))]
    @test_int [f^(a + b/x^2)/x^11, x, 1, -((f^(a + b/x^2)*(24*x^8 - 24*b*x^6*log(f) + 12*b^2*x^4*log(f)^2 - 4*b^3*x^2*log(f)^3 + b^4*log(f)^4))/(2*b^5*x^8*log(f)^5))]
    @test_int [f^(a + b/x^2)/x^13, x, 1, (f^(a + b/x^2)*(120*x^10 - 120*b*x^8*log(f) + 60*b^2*x^6*log(f)^2 - 20*b^3*x^4*log(f)^3 + 5*b^4*x^2*log(f)^4 - b^5*log(f)^5))/(2*b^6*x^10*log(f)^6)]

    @test_int [f^(a + b/x^2)*x^10, x, 1, (1/2)*f^a*x^11*Gamma(-(11/2), -((b*log(f))/x^2))*(-((b*log(f))/x^2))^(11/2)]
    @test_int [f^(a + b/x^2)*x^8, x, 1, (1/2)*f^a*x^9*Gamma(-(9/2), -((b*log(f))/x^2))*(-((b*log(f))/x^2))^(9/2)]
    @test_int [f^(a + b/x^2)*x^6, x, 6, (1/7)*f^(a + b/x^2)*x^7 + (2/35)*b*f^(a + b/x^2)*x^5*log(f) + (4/105)*b^2*f^(a + b/x^2)*x^3*log(f)^2 + (8/105)*b^3*f^(a + b/x^2)*x*log(f)^3 - (8/105)*b^(7/2)*f^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(f)))/x)*log(f)^(7/2)]
    @test_int [f^(a + b/x^2)*x^4, x, 5, (1/5)*f^(a + b/x^2)*x^5 + (2/15)*b*f^(a + b/x^2)*x^3*log(f) + (4/15)*b^2*f^(a + b/x^2)*x*log(f)^2 - (4/15)*b^(5/2)*f^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(f)))/x)*log(f)^(5/2)]
    @test_int [f^(a + b/x^2)*x^2, x, 4, (1/3)*f^(a + b/x^2)*x^3 + (2/3)*b*f^(a + b/x^2)*x*log(f) - (2/3)*b^(3/2)*f^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(f)))/x)*log(f)^(3/2)]
    @test_int [f^(a + b/x^2)*x^0, x, 3, f^(a + b/x^2)*x - sqrt(b)*f^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(f)))/x)*sqrt(log(f))]
    @test_int [f^(a + b/x^2)/x^2, x, 2, -((f^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(f)))/x))/(2*sqrt(b)*sqrt(log(f))))]
    @test_int [f^(a + b/x^2)/x^4, x, 3, (f^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(f)))/x))/(4*b^(3/2)*log(f)^(3/2)) - f^(a + b/x^2)/(2*b*x*log(f))]
    @test_int [f^(a + b/x^2)/x^6, x, 4, -((3*f^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(f)))/x))/(8*b^(5/2)*log(f)^(5/2))) + (3*f^(a + b/x^2))/(4*b^2*x*log(f)^2) - f^(a + b/x^2)/(2*b*x^3*log(f))]
    @test_int [f^(a + b/x^2)/x^8, x, 5, (15*f^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(f)))/x))/(16*b^(7/2)*log(f)^(7/2)) - (15*f^(a + b/x^2))/(8*b^3*x*log(f)^3) + (5*f^(a + b/x^2))/(4*b^2*x^3*log(f)^2) - f^(a + b/x^2)/(2*b*x^5*log(f))]
    @test_int [f^(a + b/x^2)/x^10, x, 6, -((105*f^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(f)))/x))/(32*b^(9/2)*log(f)^(9/2))) + (105*f^(a + b/x^2))/(16*b^4*x*log(f)^4) - (35*f^(a + b/x^2))/(8*b^3*x^3*log(f)^3) + (7*f^(a + b/x^2))/(4*b^2*x^5*log(f)^2) - f^(a + b/x^2)/(2*b*x^7*log(f))]
    @test_int [f^(a + b/x^2)/x^12, x, 1, (f^a*Gamma(11/2, -((b*log(f))/x^2)))/(2*x^11*(-((b*log(f))/x^2))^(11/2))]
    @test_int [f^(a + b/x^2)/x^14, x, 1, (f^a*Gamma(13/2, -((b*log(f))/x^2)))/(2*x^13*(-((b*log(f))/x^2))^(13/2))]


    @test_int [f^(a + b/x^3)*x^m, x, 1, (1/3)*f^a*x^(1 + m)*Gamma((1/3)*(-1 - m), -((b*log(f))/x^3))*(-((b*log(f))/x^3))^((1 + m)/3)]

    @test_int [f^(a + b/x^3)*x^14, x, 1, (-(1/3))*b^5*f^a*Gamma(-5, -((b*log(f))/x^3))*log(f)^5]
    @test_int [f^(a + b/x^3)*x^11, x, 1, (1/3)*b^4*f^a*Gamma(-4, -((b*log(f))/x^3))*log(f)^4]
    @test_int [f^(a + b/x^3)*x^8, x, 4, (1/9)*f^(a + b/x^3)*x^9 + (1/18)*b*f^(a + b/x^3)*x^6*log(f) + (1/18)*b^2*f^(a + b/x^3)*x^3*log(f)^2 - (1/18)*b^3*f^a*ExpIntegralEi((b*log(f))/x^3)*log(f)^3]
    @test_int [f^(a + b/x^3)*x^5, x, 3, (1/6)*f^(a + b/x^3)*x^6 + (1/6)*b*f^(a + b/x^3)*x^3*log(f) - (1/6)*b^2*f^a*ExpIntegralEi((b*log(f))/x^3)*log(f)^2]
    @test_int [f^(a + b/x^3)*x^2, x, 2, (1/3)*f^(a + b/x^3)*x^3 - (1/3)*b*f^a*ExpIntegralEi((b*log(f))/x^3)*log(f)]
    @test_int [f^(a + b/x^3)/x^1, x, 1, (-(1/3))*f^a*ExpIntegralEi((b*log(f))/x^3)]
    @test_int [f^(a + b/x^3)/x^4, x, 1, -(f^(a + b/x^3)/(3*b*log(f)))]
    @test_int [f^(a + b/x^3)/x^7, x, 2, f^(a + b/x^3)/(3*b^2*log(f)^2) - f^(a + b/x^3)/(3*b*x^3*log(f))]
    @test_int [f^(a + b/x^3)/x^10, x, 3, -((2*f^(a + b/x^3))/(3*b^3*log(f)^3)) + (2*f^(a + b/x^3))/(3*b^2*x^3*log(f)^2) - f^(a + b/x^3)/(3*b*x^6*log(f))]
    @test_int [f^(a + b/x^3)/x^13, x, 4, (2*f^(a + b/x^3))/(b^4*log(f)^4) - (2*f^(a + b/x^3))/(b^3*x^3*log(f)^3) + f^(a + b/x^3)/(b^2*x^6*log(f)^2) - f^(a + b/x^3)/(3*b*x^9*log(f))]
    @test_int [f^(a + b/x^3)/x^16, x, 1, -((f^(a + b/x^3)*(24*x^12 - 24*b*x^9*log(f) + 12*b^2*x^6*log(f)^2 - 4*b^3*x^3*log(f)^3 + b^4*log(f)^4))/(3*b^5*x^12*log(f)^5))]
    @test_int [f^(a + b/x^3)/x^19, x, 1, (f^(a + b/x^3)*(120*x^15 - 120*b*x^12*log(f) + 60*b^2*x^9*log(f)^2 - 20*b^3*x^6*log(f)^3 + 5*b^4*x^3*log(f)^4 - b^5*log(f)^5))/(3*b^6*x^15*log(f)^6)]

    @test_int [f^(a + b/x^3)*x^4, x, 1, (1/3)*f^a*x^5*Gamma(-(5/3), -((b*log(f))/x^3))*(-((b*log(f))/x^3))^(5/3)]
    @test_int [f^(a + b/x^3)*x^3, x, 1, (1/3)*f^a*x^4*Gamma(-(4/3), -((b*log(f))/x^3))*(-((b*log(f))/x^3))^(4/3)]
    @test_int [f^(a + b/x^3)*x^1, x, 1, (1/3)*f^a*x^2*Gamma(-(2/3), -((b*log(f))/x^3))*(-((b*log(f))/x^3))^(2/3)]
    @test_int [f^(a + b/x^3)*x^0, x, 1, (1/3)*f^a*x*Gamma(-(1/3), -((b*log(f))/x^3))*(-((b*log(f))/x^3))^(1/3)]
    @test_int [f^(a + b/x^3)/x^2, x, 1, (f^a*Gamma(1/3, -((b*log(f))/x^3)))/(3*x*(-((b*log(f))/x^3))^(1/3))]
    @test_int [f^(a + b/x^3)/x^3, x, 1, (f^a*Gamma(2/3, -((b*log(f))/x^3)))/(3*x^2*(-((b*log(f))/x^3))^(2/3))]
    @test_int [f^(a + b/x^3)/x^5, x, 1, (f^a*Gamma(4/3, -((b*log(f))/x^3)))/(3*x^4*(-((b*log(f))/x^3))^(4/3))]


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [f^(a + b*x^n)*x^m, x, 1, -((f^a*x^(1 + m)*Gamma((1 + m)/n, (-b)*x^n*log(f)))/(((-b)*x^n*log(f))^((1 + m)/n)*n))]

    @test_int [f^(a + b*x^n)*x^3, x, 1, -((f^a*x^4*Gamma(4/n, (-b)*x^n*log(f)))/(((-b)*x^n*log(f))^(4/n)*n))]
    @test_int [f^(a + b*x^n)*x^2, x, 1, -((f^a*x^3*Gamma(3/n, (-b)*x^n*log(f)))/(((-b)*x^n*log(f))^(3/n)*n))]
    @test_int [f^(a + b*x^n)*x^1, x, 1, -((f^a*x^2*Gamma(2/n, (-b)*x^n*log(f)))/(((-b)*x^n*log(f))^(2/n)*n))]
    @test_int [f^(a + b*x^n)*x^0, x, 1, -((f^a*x*Gamma(1/n, (-b)*x^n*log(f)))/(((-b)*x^n*log(f))^n^(-1)*n))]
    @test_int [f^(a + b*x^n)/x^1, x, 1, (f^a*ExpIntegralEi(b*x^n*log(f)))/n]
    @test_int [f^(a + b*x^n)/x^2, x, 1, -((f^a*Gamma(-(1/n), (-b)*x^n*log(f))*((-b)*x^n*log(f))^(1/n))/(n*x))]
    @test_int [f^(a + b*x^n)/x^3, x, 1, -((f^a*Gamma(-(2/n), (-b)*x^n*log(f))*((-b)*x^n*log(f))^(2/n))/(n*x^2))]
    @test_int [f^(a + b*x^n)/x^4, x, 1, -((f^a*Gamma(-(3/n), (-b)*x^n*log(f))*((-b)*x^n*log(f))^(3/n))/(n*x^3))]


    @test_int [f^(a + b*x^n)*x^(6*n/2-1), x, 3, (2*f^(a + b*x^n))/(b^3*n*log(f)^3) - (2*f^(a + b*x^n)*x^n)/(b^2*n*log(f)^2) + (f^(a + b*x^n)*x^(2*n))/(b*n*log(f))]
    @test_int [f^(a + b*x^n)*x^(4*n/2-1), x, 2, -(f^(a + b*x^n)/(b^2*n*log(f)^2)) + (f^(a + b*x^n)*x^n)/(b*n*log(f))]
    @test_int [f^(a + b*x^n)*x^(2*n/2-1), x, 1, f^(a + b*x^n)/(b*n*log(f))]
    @test_int [f^(a + b*x^n)*x^(0*n/2-1), x, 1, (f^a*ExpIntegralEi(b*x^n*log(f)))/n]
    @test_int [f^(a + b*x^n)*x^(-2*n/2-1), x, 2, -(f^(a + b*x^n)/(x^n*n)) + (b*f^a*ExpIntegralEi(b*x^n*log(f))*log(f))/n]
    @test_int [f^(a + b*x^n)*x^(-4*n/2-1), x, 3, -(f^(a + b*x^n)/(x^(2*n)*(2*n))) - (b*f^(a + b*x^n)*log(f))/(x^n*(2*n)) + (b^2*f^a*ExpIntegralEi(b*x^n*log(f))*log(f)^2)/(2*n)]

    @test_int [f^(a + b*x^n)*x^(5*n/2-1), x, 4, (3*f^a*sqrt(pi)*erfi(sqrt(b)*x^(n/2)*sqrt(log(f))))/(4*b^(5/2)*n*log(f)^(5/2)) - (3*f^(a + b*x^n)*x^(n/2))/(2*b^2*n*log(f)^2) + (f^(a + b*x^n)*x^((3*n)/2))/(b*n*log(f))]
    @test_int [f^(a + b*x^n)*x^(3*n/2-1), x, 3, -((f^a*sqrt(pi)*erfi(sqrt(b)*x^(n/2)*sqrt(log(f))))/(2*b^(3/2)*n*log(f)^(3/2))) + (f^(a + b*x^n)*x^(n/2))/(b*n*log(f))]
    @test_int [f^(a + b*x^n)*x^(1*n/2-1), x, 2, (f^a*sqrt(pi)*erfi(sqrt(b)*x^(n/2)*sqrt(log(f))))/(sqrt(b)*n*sqrt(log(f)))]
    @test_int [f^(a + b*x^n)*x^(-1*n/2-1), x, 3, -((2*f^(a + b*x^n))/(x^(n/2)*n)) + (2*sqrt(b)*f^a*sqrt(pi)*erfi(sqrt(b)*x^(n/2)*sqrt(log(f)))*sqrt(log(f)))/n]
    @test_int [f^(a + b*x^n)*x^(-3*n/2-1), x, 4, -((2*f^(a + b*x^n))/(x^((3*n)/2)*(3*n))) - (4*b*f^(a + b*x^n)*log(f))/(x^(n/2)*(3*n)) + (4*b^(3/2)*f^a*sqrt(pi)*erfi(sqrt(b)*x^(n/2)*sqrt(log(f)))*log(f)^(3/2))/(3*n)]


    @test_int [x/ℯ^(0.1*x), x, 2, -100.0./ℯ^(0.1*x) - (10.0.*x)/ℯ^(0.1*x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(c*(a+b*x)^n)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(c*(a+b*x)^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [f^(c*(a + b*x)^2)*x^3, x, 8, -(f^(c*(a + b*x)^2)/(2*b^4*c^2*log(f)^2)) + (3*a*sqrt(pi)*erfi(sqrt(c)*(a + b*x)*sqrt(log(f))))/(4*b^4*c^(3/2)*log(f)^(3/2)) + (3*a^2*f^(c*(a + b*x)^2))/(2*b^4*c*log(f)) - (3*a*f^(c*(a + b*x)^2)*(a + b*x))/(2*b^4*c*log(f)) + (f^(c*(a + b*x)^2)*(a + b*x)^2)/(2*b^4*c*log(f)) - (a^3*sqrt(pi)*erfi(sqrt(c)*(a + b*x)*sqrt(log(f))))/(2*b^4*sqrt(c)*sqrt(log(f)))]
    @test_int [f^(c*(a + b*x)^2)*x^2, x, 6, -((sqrt(pi)*erfi(sqrt(c)*(a + b*x)*sqrt(log(f))))/(4*b^3*c^(3/2)*log(f)^(3/2))) - (a*f^(c*(a + b*x)^2))/(b^3*c*log(f)) + (f^(c*(a + b*x)^2)*(a + b*x))/(2*b^3*c*log(f)) + (a^2*sqrt(pi)*erfi(sqrt(c)*(a + b*x)*sqrt(log(f))))/(2*b^3*sqrt(c)*sqrt(log(f)))]
    @test_int [f^(c*(a + b*x)^2)*x^1, x, 4, f^(c*(a + b*x)^2)/(2*b^2*c*log(f)) - (a*sqrt(pi)*erfi(sqrt(c)*(a + b*x)*sqrt(log(f))))/(2*b^2*sqrt(c)*sqrt(log(f)))]
    @test_int [f^(c*(a + b*x)^2)*x^0, x, 1, (sqrt(pi)*erfi(sqrt(c)*(a + b*x)*sqrt(log(f))))/(2*b*sqrt(c)*sqrt(log(f)))]
    @test_int [f^(c*(a + b*x)^2)/x^1, x, 0, Unintegrable(f^(c*(a + b*x)^2)/x, x)]
    @test_int [f^(c*(a + b*x)^2)/x^2, x, 2, -(f^(c*(a + b*x)^2)/x) + b*sqrt(c)*sqrt(pi)*erfi(sqrt(c)*(a + b*x)*sqrt(log(f)))*sqrt(log(f)) + 2*a*b*c*log(f)*Unintegrable(f^(c*(a + b*x)^2)/x, x)]
    @test_int [f^(c*(a + b*x)^2)/x^3, x, 3, -(f^(c*(a + b*x)^2)/(2*x^2)) - (a*b*c*f^(c*(a + b*x)^2)*log(f))/x + a*b^2*c^(3/2)*sqrt(pi)*erfi(sqrt(c)*(a + b*x)*sqrt(log(f)))*log(f)^(3/2) + b^2*c*log(f)*Unintegrable(f^(c*(a + b*x)^2)/x, x) + 2*a^2*b^2*c^2*log(f)^2*Unintegrable(f^(c*(a + b*x)^2)/x, x)]


    @test_int [f^(c*(a + b*x)^3)*x^2, x, 5, f^(c*(a + b*x)^3)/(3*b^3*c*log(f)) + (2*a*(a + b*x)^2*Gamma(2/3, (-c)*(a + b*x)^3*log(f)))/(3*b^3*((-c)*(a + b*x)^3*log(f))^(2/3)) - (a^2*(a + b*x)*Gamma(1/3, (-c)*(a + b*x)^3*log(f)))/(3*b^3*((-c)*(a + b*x)^3*log(f))^(1/3))]
    @test_int [f^(c*(a + b*x)^3)*x^1, x, 4, -(((a + b*x)^2*Gamma(2/3, (-c)*(a + b*x)^3*log(f)))/(3*b^2*((-c)*(a + b*x)^3*log(f))^(2/3))) + (a*(a + b*x)*Gamma(1/3, (-c)*(a + b*x)^3*log(f)))/(3*b^2*((-c)*(a + b*x)^3*log(f))^(1/3))]
    @test_int [f^(c*(a + b*x)^3)*x^0, x, 1, -(((a + b*x)*Gamma(1/3, (-c)*(a + b*x)^3*log(f)))/(3*b*((-c)*(a + b*x)^3*log(f))^(1/3)))]
    @test_int [f^(c*(a + b*x)^3)/x^1, x, 0, Unintegrable(f^(c*(a + b*x)^3)/x, x)]
    @test_int [f^(c*(a + b*x)^3)/x^2, x, 5, -(f^(c*(a + b*x)^3)/x) - (b*c*(a + b*x)^2*Gamma(2/3, (-c)*(a + b*x)^3*log(f))*log(f))/((-c)*(a + b*x)^3*log(f))^(2/3) - (a*b*c*(a + b*x)*Gamma(1/3, (-c)*(a + b*x)^3*log(f))*log(f))/((-c)*(a + b*x)^3*log(f))^(1/3) + 3*a^2*b*c*log(f)*Unintegrable(f^(c*(a + b*x)^3)/x, x)]
    @test_int [f^(c*(a + b*x)^3)/x^3, x, 9, -(f^(c*(a + b*x)^3)/(2*x^2)) - (3*a^2*b*c*f^(c*(a + b*x)^3)*log(f))/(2*x) - (3*a^2*b^2*c^2*(a + b*x)^2*Gamma(2/3, (-c)*(a + b*x)^3*log(f))*log(f)^2)/(2*((-c)*(a + b*x)^3*log(f))^(2/3)) - (b^2*c*(a + b*x)*Gamma(1/3, (-c)*(a + b*x)^3*log(f))*log(f))/(2*((-c)*(a + b*x)^3*log(f))^(1/3)) - (3*a^3*b^2*c^2*(a + b*x)*Gamma(1/3, (-c)*(a + b*x)^3*log(f))*log(f)^2)/(2*((-c)*(a + b*x)^3*log(f))^(1/3)) + 3*a*b^2*c*log(f)*Unintegrable(f^(c*(a + b*x)^3)/x, x) + (9/2)*a^4*b^2*c^2*log(f)^2*Unintegrable(f^(c*(a + b*x)^3)/x, x)]


    @test_int [ℯ^(a^3 + 3*a^2*b*x + 3*a*b^2*x^2 + b^3*x^3)*x^4, x, 8, (2*a^2*ℯ^(a + b*x)^3)/b^5 - (a^4*(a + b*x)*Gamma(1/3, -(a + b*x)^3))/(3*b^5*(-(a + b*x)^3)^(1/3)) + (4*a^3*(a + b*x)^2*Gamma(2/3, -(a + b*x)^3))/(3*b^5*(-(a + b*x)^3)^(2/3)) + (4*a*(a + b*x)^4*Gamma(4/3, -(a + b*x)^3))/(3*b^5*(-(a + b*x)^3)^(4/3)) - ((a + b*x)^5*Gamma(5/3, -(a + b*x)^3))/(3*b^5*(-(a + b*x)^3)^(5/3))]
    @test_int [ℯ^(a^3 + 3*a^2*b*x + 3*a*b^2*x^2 + b^3*x^3)*x^3, x, 7, -((a*ℯ^(a + b*x)^3)/b^4) + (a^3*(a + b*x)*Gamma(1/3, -(a + b*x)^3))/(3*b^4*(-(a + b*x)^3)^(1/3)) - (a^2*(a + b*x)^2*Gamma(2/3, -(a + b*x)^3))/(b^4*(-(a + b*x)^3)^(2/3)) - ((a + b*x)^4*Gamma(4/3, -(a + b*x)^3))/(3*b^4*(-(a + b*x)^3)^(4/3))]
    @test_int [ℯ^(a^3 + 3*a^2*b*x + 3*a*b^2*x^2 + b^3*x^3)*x^2, x, 6, ℯ^(a + b*x)^3/(3*b^3) - (a^2*(a + b*x)*Gamma(1/3, -(a + b*x)^3))/(3*b^3*(-(a + b*x)^3)^(1/3)) + (2*a*(a + b*x)^2*Gamma(2/3, -(a + b*x)^3))/(3*b^3*(-(a + b*x)^3)^(2/3))]
    @test_int [ℯ^(a^3 + 3*a^2*b*x + 3*a*b^2*x^2 + b^3*x^3)*x^1, x, 5, (a*(a + b*x)*Gamma(1/3, -(a + b*x)^3))/(3*b^2*(-(a + b*x)^3)^(1/3)) - ((a + b*x)^2*Gamma(2/3, -(a + b*x)^3))/(3*b^2*(-(a + b*x)^3)^(2/3))]
    @test_int [ℯ^(a^3 + 3*a^2*b*x + 3*a*b^2*x^2 + b^3*x^3)*x^0, x, 2, -(((a + b*x)*Gamma(1/3, -(a + b*x)^3))/(3*b*(-(a + b*x)^3)^(1/3)))]
    @test_int [ℯ^(a^3 + 3*a^2*b*x + 3*a*b^2*x^2 + b^3*x^3)/x^1, x, 0, CannotIntegrate(ℯ^(a^3 + 3*a^2*b*x + 3*a*b^2*x^2 + b^3*x^3)/x, x)]


    @test_int [ℯ^(a^3 + 3*a^2*b*x + 3*a*b^2*x^2 + b^3*x^3)*x^m, x, 0, CannotIntegrate(ℯ^(a^3 + 3*a^2*b*x + 3*a*b^2*x^2 + b^3*x^3)*x^m, x)]


    @test_int [ℯ^sqrt(5 + 3*x), x, 3, (-(2/3))*ℯ^sqrt(5 + 3*x) + (2/3)*ℯ^sqrt(5 + 3*x)*sqrt(5 + 3*x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [f^(c/(a + b*x))*x^4, x, 13, (a^4*f^(c/(a + b*x))*(a + b*x))/b^5 - (2*a^3*f^(c/(a + b*x))*(a + b*x)^2)/b^5 + (2*a^2*f^(c/(a + b*x))*(a + b*x)^3)/b^5 - (2*a^3*c*f^(c/(a + b*x))*(a + b*x)*log(f))/b^5 + (a^2*c*f^(c/(a + b*x))*(a + b*x)^2*log(f))/b^5 - (a^4*c*ExpIntegralEi((c*log(f))/(a + b*x))*log(f))/b^5 + (a^2*c^2*f^(c/(a + b*x))*(a + b*x)*log(f)^2)/b^5 + (2*a^3*c^2*ExpIntegralEi((c*log(f))/(a + b*x))*log(f)^2)/b^5 - (a^2*c^3*ExpIntegralEi((c*log(f))/(a + b*x))*log(f)^3)/b^5 - (4*a*c^4*Gamma(-4, -((c*log(f))/(a + b*x)))*log(f)^4)/b^5 - (c^5*Gamma(-5, -((c*log(f))/(a + b*x)))*log(f)^5)/b^5]
    @test_int [f^(c/(a + b*x))*x^3, x, 12, -((a^3*f^(c/(a + b*x))*(a + b*x))/b^4) + (3*a^2*f^(c/(a + b*x))*(a + b*x)^2)/(2*b^4) - (a*f^(c/(a + b*x))*(a + b*x)^3)/b^4 + (3*a^2*c*f^(c/(a + b*x))*(a + b*x)*log(f))/(2*b^4) - (a*c*f^(c/(a + b*x))*(a + b*x)^2*log(f))/(2*b^4) + (a^3*c*ExpIntegralEi((c*log(f))/(a + b*x))*log(f))/b^4 - (a*c^2*f^(c/(a + b*x))*(a + b*x)*log(f)^2)/(2*b^4) - (3*a^2*c^2*ExpIntegralEi((c*log(f))/(a + b*x))*log(f)^2)/(2*b^4) + (a*c^3*ExpIntegralEi((c*log(f))/(a + b*x))*log(f)^3)/(2*b^4) + (c^4*Gamma(-4, -((c*log(f))/(a + b*x)))*log(f)^4)/b^4]
    @test_int [f^(c/(a + b*x))*x^2, x, 11, (a^2*f^(c/(a + b*x))*(a + b*x))/b^3 - (a*f^(c/(a + b*x))*(a + b*x)^2)/b^3 + (f^(c/(a + b*x))*(a + b*x)^3)/(3*b^3) - (a*c*f^(c/(a + b*x))*(a + b*x)*log(f))/b^3 + (c*f^(c/(a + b*x))*(a + b*x)^2*log(f))/(6*b^3) - (a^2*c*ExpIntegralEi((c*log(f))/(a + b*x))*log(f))/b^3 + (c^2*f^(c/(a + b*x))*(a + b*x)*log(f)^2)/(6*b^3) + (a*c^2*ExpIntegralEi((c*log(f))/(a + b*x))*log(f)^2)/b^3 - (c^3*ExpIntegralEi((c*log(f))/(a + b*x))*log(f)^3)/(6*b^3)]
    @test_int [f^(c/(a + b*x))*x^1, x, 7, -((a*f^(c/(a + b*x))*(a + b*x))/b^2) + (f^(c/(a + b*x))*(a + b*x)^2)/(2*b^2) + (c*f^(c/(a + b*x))*(a + b*x)*log(f))/(2*b^2) + (a*c*ExpIntegralEi((c*log(f))/(a + b*x))*log(f))/b^2 - (c^2*ExpIntegralEi((c*log(f))/(a + b*x))*log(f)^2)/(2*b^2)]
    @test_int [f^(c/(a + b*x))*x^0, x, 2, (f^(c/(a + b*x))*(a + b*x))/b - (c*ExpIntegralEi((c*log(f))/(a + b*x))*log(f))/b]
    @test_int [f^(c/(a + b*x))/x^1, x, 4, -ExpIntegralEi((c*log(f))/(a + b*x)) + f^(c/a)*ExpIntegralEi(-((b*c*x*log(f))/(a*(a + b*x))))]
    @test_int [f^(c/(a + b*x))/x^2, x, 9, -((b*f^(c/(a + b*x)))/a) - f^(c/(a + b*x))/x - (b*c*f^(c/a)*ExpIntegralEi(-((b*c*x*log(f))/(a*(a + b*x))))*log(f))/a^2]
    @test_int [f^(c/(a + b*x))/x^3, x, 18, (b^2*f^(c/(a + b*x)))/(2*a^2) - f^(c/(a + b*x))/(2*x^2) + (b^2*c*f^(c/(a + b*x))*log(f))/(2*a^3) + (b*c*f^(c/(a + b*x))*log(f))/(2*a^2*x) + (b^2*c*f^(c/a)*ExpIntegralEi(-((b*c*x*log(f))/(a*(a + b*x))))*log(f))/a^3 + (b^2*c^2*f^(c/a)*ExpIntegralEi(-((b*c*x*log(f))/(a*(a + b*x))))*log(f)^2)/(2*a^4)]


    @test_int [f^(c/(a + b*x)^2)*x^4, x, 19, (a^4*f^(c/(a + b*x)^2)*(a + b*x))/b^5 - (2*a^3*f^(c/(a + b*x)^2)*(a + b*x)^2)/b^5 + (2*a^2*f^(c/(a + b*x)^2)*(a + b*x)^3)/b^5 - (a*f^(c/(a + b*x)^2)*(a + b*x)^4)/b^5 + (f^(c/(a + b*x)^2)*(a + b*x)^5)/(5*b^5) - (a^4*sqrt(c)*sqrt(pi)*erfi((sqrt(c)*sqrt(log(f)))/(a + b*x))*sqrt(log(f)))/b^5 + (4*a^2*c*f^(c/(a + b*x)^2)*(a + b*x)*log(f))/b^5 - (a*c*f^(c/(a + b*x)^2)*(a + b*x)^2*log(f))/b^5 + (2*c*f^(c/(a + b*x)^2)*(a + b*x)^3*log(f))/(15*b^5) + (2*a^3*c*ExpIntegralEi((c*log(f))/(a + b*x)^2)*log(f))/b^5 - (4*a^2*c^(3/2)*sqrt(pi)*erfi((sqrt(c)*sqrt(log(f)))/(a + b*x))*log(f)^(3/2))/b^5 + (4*c^2*f^(c/(a + b*x)^2)*(a + b*x)*log(f)^2)/(15*b^5) + (a*c^2*ExpIntegralEi((c*log(f))/(a + b*x)^2)*log(f)^2)/b^5 - (4*c^(5/2)*sqrt(pi)*erfi((sqrt(c)*sqrt(log(f)))/(a + b*x))*log(f)^(5/2))/(15*b^5)]
    @test_int [f^(c/(a + b*x)^2)*x^3, x, 14, -((a^3*f^(c/(a + b*x)^2)*(a + b*x))/b^4) + (3*a^2*f^(c/(a + b*x)^2)*(a + b*x)^2)/(2*b^4) - (a*f^(c/(a + b*x)^2)*(a + b*x)^3)/b^4 + (f^(c/(a + b*x)^2)*(a + b*x)^4)/(4*b^4) + (a^3*sqrt(c)*sqrt(pi)*erfi((sqrt(c)*sqrt(log(f)))/(a + b*x))*sqrt(log(f)))/b^4 - (2*a*c*f^(c/(a + b*x)^2)*(a + b*x)*log(f))/b^4 + (c*f^(c/(a + b*x)^2)*(a + b*x)^2*log(f))/(4*b^4) - (3*a^2*c*ExpIntegralEi((c*log(f))/(a + b*x)^2)*log(f))/(2*b^4) + (2*a*c^(3/2)*sqrt(pi)*erfi((sqrt(c)*sqrt(log(f)))/(a + b*x))*log(f)^(3/2))/b^4 - (c^2*ExpIntegralEi((c*log(f))/(a + b*x)^2)*log(f)^2)/(4*b^4)]
    @test_int [f^(c/(a + b*x)^2)*x^2, x, 11, (a^2*f^(c/(a + b*x)^2)*(a + b*x))/b^3 - (a*f^(c/(a + b*x)^2)*(a + b*x)^2)/b^3 + (f^(c/(a + b*x)^2)*(a + b*x)^3)/(3*b^3) - (a^2*sqrt(c)*sqrt(pi)*erfi((sqrt(c)*sqrt(log(f)))/(a + b*x))*sqrt(log(f)))/b^3 + (2*c*f^(c/(a + b*x)^2)*(a + b*x)*log(f))/(3*b^3) + (a*c*ExpIntegralEi((c*log(f))/(a + b*x)^2)*log(f))/b^3 - (2*c^(3/2)*sqrt(pi)*erfi((sqrt(c)*sqrt(log(f)))/(a + b*x))*log(f)^(3/2))/(3*b^3)]
    @test_int [f^(c/(a + b*x)^2)*x^1, x, 7, -((a*f^(c/(a + b*x)^2)*(a + b*x))/b^2) + (f^(c/(a + b*x)^2)*(a + b*x)^2)/(2*b^2) + (a*sqrt(c)*sqrt(pi)*erfi((sqrt(c)*sqrt(log(f)))/(a + b*x))*sqrt(log(f)))/b^2 - (c*ExpIntegralEi((c*log(f))/(a + b*x)^2)*log(f))/(2*b^2)]
    @test_int [f^(c/(a + b*x)^2)*x^0, x, 3, (f^(c/(a + b*x)^2)*(a + b*x))/b - (sqrt(c)*sqrt(pi)*erfi((sqrt(c)*sqrt(log(f)))/(a + b*x))*sqrt(log(f)))/b]
    @test_int [f^(c/(a + b*x)^2)/x^1, x, 0, Unintegrable(f^(c/(a + b*x)^2)/x, x)]
    @test_int [f^(c/(a + b*x)^2)/x^2, x, 0, CannotIntegrate(f^(c/(a + b*x)^2)/x^2, x)]
    @test_int [f^(c/(a + b*x)^2)/x^3, x, 0, CannotIntegrate(f^(c/(a + b*x)^2)/x^3, x)]


    @test_int [f^(c/(a + b*x)^3)*x^4, x, 8, (2*a^2*f^(c/(a + b*x)^3)*(a + b*x)^3)/b^5 - (2*a^2*c*ExpIntegralEi((c*log(f))/(a + b*x)^3)*log(f))/b^5 + (a^4*(a + b*x)*Gamma(-(1/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(1/3))/(3*b^5) - (4*a^3*(a + b*x)^2*Gamma(-(2/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(2/3))/(3*b^5) - (4*a*(a + b*x)^4*Gamma(-(4/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(4/3))/(3*b^5) + ((a + b*x)^5*Gamma(-(5/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(5/3))/(3*b^5)]
    @test_int [f^(c/(a + b*x)^3)*x^3, x, 7, -((a*f^(c/(a + b*x)^3)*(a + b*x)^3)/b^4) + (a*c*ExpIntegralEi((c*log(f))/(a + b*x)^3)*log(f))/b^4 - (a^3*(a + b*x)*Gamma(-(1/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(1/3))/(3*b^4) + (a^2*(a + b*x)^2*Gamma(-(2/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(2/3))/b^4 + ((a + b*x)^4*Gamma(-(4/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(4/3))/(3*b^4)]
    @test_int [f^(c/(a + b*x)^3)*x^2, x, 6, (f^(c/(a + b*x)^3)*(a + b*x)^3)/(3*b^3) - (c*ExpIntegralEi((c*log(f))/(a + b*x)^3)*log(f))/(3*b^3) + (a^2*(a + b*x)*Gamma(-(1/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(1/3))/(3*b^3) - (2*a*(a + b*x)^2*Gamma(-(2/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(2/3))/(3*b^3)]
    @test_int [f^(c/(a + b*x)^3)*x^1, x, 4, -((a*(a + b*x)*Gamma(-(1/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(1/3))/(3*b^2)) + ((a + b*x)^2*Gamma(-(2/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(2/3))/(3*b^2)]
    @test_int [f^(c/(a + b*x)^3)*x^0, x, 1, ((a + b*x)*Gamma(-(1/3), -((c*log(f))/(a + b*x)^3))*(-((c*log(f))/(a + b*x)^3))^(1/3))/(3*b)]
    @test_int [f^(c/(a + b*x)^3)/x^1, x, 0, Unintegrable(f^(c/(a + b*x)^3)/x, x)]
    @test_int [f^(c/(a + b*x)^3)/x^2, x, 0, CannotIntegrate(f^(c/(a + b*x)^3)/x^2, x)]
    @test_int [f^(c/(a + b*x)^3)/x^3, x, 0, CannotIntegrate(f^(c/(a + b*x)^3)/x^3, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(c*(a+b*x)^n)*with*m*symbolic=#


    @test_int [f^(c*(a + b*x)^3)*x^m, x, 0, CannotIntegrate(f^(c*(a + b*x)^3)*x^m, x)]
    @test_int [f^(c*(a + b*x)^2)*x^m, x, 1, Unintegrable(f^(a^2*c + 2*a*b*c*x + b^2*c*x^2)*x^m, x)]
    @test_int [f^(c*(a + b*x)^1)*x^m, x, 1, (f^(a*c)*x^m*Gamma(1 + m, (-b)*c*x*log(f)))/(((-b)*c*x*log(f))^m*(b*c*log(f)))]
    @test_int [f^(c/(a + b*x)^1)*x^m, x, 0, CannotIntegrate(f^(c/(a + b*x))*x^m, x)]
    @test_int [f^(c/(a + b*x)^2)*x^m, x, 0, CannotIntegrate(f^(c/(a + b*x)^2)*x^m, x)]
    @test_int [f^(c/(a + b*x)^3)*x^m, x, 0, CannotIntegrate(f^(c/(a + b*x)^3)*x^m, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(c*(a+b*x)^n)*with*n*symbolic=#


    @test_int [f^(c*(a + b*x)^n)*x^m, x, 0, CannotIntegrate(f^(c*(a + b*x)^n)*x^m, x)]


    @test_int [f^(c*(a + b*x)^n)*x^3, x, 6, -(((a + b*x)^4*Gamma(4/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^(4/n)*(b^4*n))) + (3*a*(a + b*x)^3*Gamma(3/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^(3/n)*(b^4*n)) - (3*a^2*(a + b*x)^2*Gamma(2/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^(2/n)*(b^4*n)) + (a^3*(a + b*x)*Gamma(1/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^n^(-1)*(b^4*n))]
    @test_int [f^(c*(a + b*x)^n)*x^2, x, 5, -(((a + b*x)^3*Gamma(3/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^(3/n)*(b^3*n))) + (2*a*(a + b*x)^2*Gamma(2/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^(2/n)*(b^3*n)) - (a^2*(a + b*x)*Gamma(1/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^n^(-1)*(b^3*n))]
    @test_int [f^(c*(a + b*x)^n)*x^1, x, 4, -(((a + b*x)^2*Gamma(2/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^(2/n)*(b^2*n))) + (a*(a + b*x)*Gamma(1/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^n^(-1)*(b^2*n))]
    @test_int [f^(c*(a + b*x)^n)*x^0, x, 1, -(((a + b*x)*Gamma(1/n, (-c)*(a + b*x)^n*log(f)))/(((-c)*(a + b*x)^n*log(f))^n^(-1)*(b*n)))]
    @test_int [f^(c*(a + b*x)^n)/x^1, x, 0, Unintegrable(f^(c*(a + b*x)^n)/x, x)]
    @test_int [f^(c*(a + b*x)^n)/x^2, x, 0, CannotIntegrate(f^(c*(a + b*x)^n)/x^2, x)]
    @test_int [f^(c*(a + b*x)^n)/x^3, x, 0, CannotIntegrate(f^(c*(a + b*x)^n)/x^3, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*F^(a+b*(c+d*x)^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^m, x, 1, -((F^a*(c + d*x)^(1 + m)*Gamma((1 + m)/2, (-b)*(c + d*x)^2*log(F))*((-b)*(c + d*x)^2*log(F))^((1/2)*(-1 - m)))/(2*d))]

    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^11, x, 1, -((F^(a + b*(c + d*x)^2)*(120 - 120*b*(c + d*x)^2*log(F) + 60*b^2*(c + d*x)^4*log(F)^2 - 20*b^3*(c + d*x)^6*log(F)^3 + 5*b^4*(c + d*x)^8*log(F)^4 - b^5*(c + d*x)^10*log(F)^5))/(2*b^6*d*log(F)^6))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^9, x, 1, (F^(a + b*(c + d*x)^2)*(24 - 24*b*(c + d*x)^2*log(F) + 12*b^2*(c + d*x)^4*log(F)^2 - 4*b^3*(c + d*x)^6*log(F)^3 + b^4*(c + d*x)^8*log(F)^4))/(2*b^5*d*log(F)^5)]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^7, x, 4, -((3*F^(a + b*(c + d*x)^2))/(b^4*d*log(F)^4)) + (3*F^(a + b*(c + d*x)^2)*(c + d*x)^2)/(b^3*d*log(F)^3) - (3*F^(a + b*(c + d*x)^2)*(c + d*x)^4)/(2*b^2*d*log(F)^2) + (F^(a + b*(c + d*x)^2)*(c + d*x)^6)/(2*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^5, x, 3, F^(a + b*(c + d*x)^2)/(b^3*d*log(F)^3) - (F^(a + b*(c + d*x)^2)*(c + d*x)^2)/(b^2*d*log(F)^2) + (F^(a + b*(c + d*x)^2)*(c + d*x)^4)/(2*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^3, x, 2, -(F^(a + b*(c + d*x)^2)/(2*b^2*d*log(F)^2)) + (F^(a + b*(c + d*x)^2)*(c + d*x)^2)/(2*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^1, x, 1, F^(a + b*(c + d*x)^2)/(2*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^1, x, 1, (F^a*ExpIntegralEi(b*(c + d*x)^2*log(F)))/(2*d)]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^3, x, 2, -(F^(a + b*(c + d*x)^2)/(2*d*(c + d*x)^2)) + (b*F^a*ExpIntegralEi(b*(c + d*x)^2*log(F))*log(F))/(2*d)]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^5, x, 3, -(F^(a + b*(c + d*x)^2)/(4*d*(c + d*x)^4)) - (b*F^(a + b*(c + d*x)^2)*log(F))/(4*d*(c + d*x)^2) + (b^2*F^a*ExpIntegralEi(b*(c + d*x)^2*log(F))*log(F)^2)/(4*d)]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^7, x, 4, -(F^(a + b*(c + d*x)^2)/(6*d*(c + d*x)^6)) - (b*F^(a + b*(c + d*x)^2)*log(F))/(12*d*(c + d*x)^4) - (b^2*F^(a + b*(c + d*x)^2)*log(F)^2)/(12*d*(c + d*x)^2) + (b^3*F^a*ExpIntegralEi(b*(c + d*x)^2*log(F))*log(F)^3)/(12*d)]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^9, x, 1, -((b^4*F^a*Gamma(-4, (-b)*(c + d*x)^2*log(F))*log(F)^4)/(2*d))]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^11, x, 1, (b^5*F^a*Gamma(-5, (-b)*(c + d*x)^2*log(F))*log(F)^5)/(2*d)]

    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^12, x, 1, -((F^a*(c + d*x)^13*Gamma(13/2, (-b)*(c + d*x)^2*log(F)))/(2*d*((-b)*(c + d*x)^2*log(F))^(13/2)))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^10, x, 1, -((F^a*(c + d*x)^11*Gamma(11/2, (-b)*(c + d*x)^2*log(F)))/(2*d*((-b)*(c + d*x)^2*log(F))^(11/2)))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^8, x, 5, (105*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(32*b^(9/2)*d*log(F)^(9/2)) - (105*F^(a + b*(c + d*x)^2)*(c + d*x))/(16*b^4*d*log(F)^4) + (35*F^(a + b*(c + d*x)^2)*(c + d*x)^3)/(8*b^3*d*log(F)^3) - (7*F^(a + b*(c + d*x)^2)*(c + d*x)^5)/(4*b^2*d*log(F)^2) + (F^(a + b*(c + d*x)^2)*(c + d*x)^7)/(2*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^6, x, 4, -((15*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(16*b^(7/2)*d*log(F)^(7/2))) + (15*F^(a + b*(c + d*x)^2)*(c + d*x))/(8*b^3*d*log(F)^3) - (5*F^(a + b*(c + d*x)^2)*(c + d*x)^3)/(4*b^2*d*log(F)^2) + (F^(a + b*(c + d*x)^2)*(c + d*x)^5)/(2*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^4, x, 3, (3*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(8*b^(5/2)*d*log(F)^(5/2)) - (3*F^(a + b*(c + d*x)^2)*(c + d*x))/(4*b^2*d*log(F)^2) + (F^(a + b*(c + d*x)^2)*(c + d*x)^3)/(2*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^2, x, 2, -((F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(4*b^(3/2)*d*log(F)^(3/2))) + (F^(a + b*(c + d*x)^2)*(c + d*x))/(2*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^2)*(c + d*x)^0, x, 1, (F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(2*sqrt(b)*d*sqrt(log(F)))]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^2, x, 2, -(F^(a + b*(c + d*x)^2)/(d*(c + d*x))) + (sqrt(b)*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F)))*sqrt(log(F)))/d]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^4, x, 3, -(F^(a + b*(c + d*x)^2)/(3*d*(c + d*x)^3)) - (2*b*F^(a + b*(c + d*x)^2)*log(F))/(3*d*(c + d*x)) + (2*b^(3/2)*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F)))*log(F)^(3/2))/(3*d)]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^6, x, 4, -(F^(a + b*(c + d*x)^2)/(5*d*(c + d*x)^5)) - (2*b*F^(a + b*(c + d*x)^2)*log(F))/(15*d*(c + d*x)^3) - (4*b^2*F^(a + b*(c + d*x)^2)*log(F)^2)/(15*d*(c + d*x)) + (4*b^(5/2)*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F)))*log(F)^(5/2))/(15*d)]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^8, x, 5, -(F^(a + b*(c + d*x)^2)/(7*d*(c + d*x)^7)) - (2*b*F^(a + b*(c + d*x)^2)*log(F))/(35*d*(c + d*x)^5) - (4*b^2*F^(a + b*(c + d*x)^2)*log(F)^2)/(105*d*(c + d*x)^3) - (8*b^3*F^(a + b*(c + d*x)^2)*log(F)^3)/(105*d*(c + d*x)) + (8*b^(7/2)*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F)))*log(F)^(7/2))/(105*d)]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^10, x, 1, -((F^a*Gamma(-(9/2), (-b)*(c + d*x)^2*log(F))*((-b)*(c + d*x)^2*log(F))^(9/2))/(2*d*(c + d*x)^9))]
    @test_int [F^(a + b*(c + d*x)^2)/(c + d*x)^12, x, 1, -((F^a*Gamma(-(11/2), (-b)*(c + d*x)^2*log(F))*((-b)*(c + d*x)^2*log(F))^(11/2))/(2*d*(c + d*x)^11))]


    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^m, x, 1, -((F^a*(c + d*x)^(1 + m)*Gamma((1 + m)/3, (-b)*(c + d*x)^3*log(F))*((-b)*(c + d*x)^3*log(F))^((1/3)*(-1 - m)))/(3*d))]

    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^17, x, 1, -((F^(a + b*(c + d*x)^3)*(120 - 120*b*(c + d*x)^3*log(F) + 60*b^2*(c + d*x)^6*log(F)^2 - 20*b^3*(c + d*x)^9*log(F)^3 + 5*b^4*(c + d*x)^12*log(F)^4 - b^5*(c + d*x)^15*log(F)^5))/(3*b^6*d*log(F)^6))]
    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^14, x, 1, (F^(a + b*(c + d*x)^3)*(24 - 24*b*(c + d*x)^3*log(F) + 12*b^2*(c + d*x)^6*log(F)^2 - 4*b^3*(c + d*x)^9*log(F)^3 + b^4*(c + d*x)^12*log(F)^4))/(3*b^5*d*log(F)^5)]
    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^11, x, 4, -((2*F^(a + b*(c + d*x)^3))/(b^4*d*log(F)^4)) + (2*F^(a + b*(c + d*x)^3)*(c + d*x)^3)/(b^3*d*log(F)^3) - (F^(a + b*(c + d*x)^3)*(c + d*x)^6)/(b^2*d*log(F)^2) + (F^(a + b*(c + d*x)^3)*(c + d*x)^9)/(3*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^8, x, 3, (2*F^(a + b*(c + d*x)^3))/(3*b^3*d*log(F)^3) - (2*F^(a + b*(c + d*x)^3)*(c + d*x)^3)/(3*b^2*d*log(F)^2) + (F^(a + b*(c + d*x)^3)*(c + d*x)^6)/(3*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^5, x, 2, -(F^(a + b*(c + d*x)^3)/(3*b^2*d*log(F)^2)) + (F^(a + b*(c + d*x)^3)*(c + d*x)^3)/(3*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^2, x, 1, F^(a + b*(c + d*x)^3)/(3*b*d*log(F))]
    @test_int [F^(a + b*(c + d*x)^3)/(c + d*x)^1, x, 1, (F^a*ExpIntegralEi(b*(c + d*x)^3*log(F)))/(3*d)]
    @test_int [F^(a + b*(c + d*x)^3)/(c + d*x)^4, x, 2, -(F^(a + b*(c + d*x)^3)/(3*d*(c + d*x)^3)) + (b*F^a*ExpIntegralEi(b*(c + d*x)^3*log(F))*log(F))/(3*d)]
    @test_int [F^(a + b*(c + d*x)^3)/(c + d*x)^7, x, 3, -(F^(a + b*(c + d*x)^3)/(6*d*(c + d*x)^6)) - (b*F^(a + b*(c + d*x)^3)*log(F))/(6*d*(c + d*x)^3) + (b^2*F^a*ExpIntegralEi(b*(c + d*x)^3*log(F))*log(F)^2)/(6*d)]
    @test_int [F^(a + b*(c + d*x)^3)/(c + d*x)^10, x, 4, -(F^(a + b*(c + d*x)^3)/(9*d*(c + d*x)^9)) - (b*F^(a + b*(c + d*x)^3)*log(F))/(18*d*(c + d*x)^6) - (b^2*F^(a + b*(c + d*x)^3)*log(F)^2)/(18*d*(c + d*x)^3) + (b^3*F^a*ExpIntegralEi(b*(c + d*x)^3*log(F))*log(F)^3)/(18*d)]
    @test_int [F^(a + b*(c + d*x)^3)/(c + d*x)^13, x, 1, -((b^4*F^a*Gamma(-4, (-b)*(c + d*x)^3*log(F))*log(F)^4)/(3*d))]
    @test_int [F^(a + b*(c + d*x)^3)/(c + d*x)^16, x, 1, (b^5*F^a*Gamma(-5, (-b)*(c + d*x)^3*log(F))*log(F)^5)/(3*d)]

    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^3, x, 1, -((F^a*(c + d*x)^4*Gamma(4/3, (-b)*(c + d*x)^3*log(F)))/(3*d*((-b)*(c + d*x)^3*log(F))^(4/3)))]
    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^1, x, 1, -((F^a*(c + d*x)^2*Gamma(2/3, (-b)*(c + d*x)^3*log(F)))/(3*d*((-b)*(c + d*x)^3*log(F))^(2/3)))]
    @test_int [F^(a + b*(c + d*x)^3)*(c + d*x)^0, x, 1, -((F^a*(c + d*x)*Gamma(1/3, (-b)*(c + d*x)^3*log(F)))/(3*d*((-b)*(c + d*x)^3*log(F))^(1/3)))]
    @test_int [F^(a + b*(c + d*x)^3)/(c + d*x)^2, x, 1, -((F^a*Gamma(-(1/3), (-b)*(c + d*x)^3*log(F))*((-b)*(c + d*x)^3*log(F))^(1/3))/(3*d*(c + d*x)))]
    @test_int [F^(a + b*(c + d*x)^3)/(c + d*x)^3, x, 1, -((F^a*Gamma(-(2/3), (-b)*(c + d*x)^3*log(F))*((-b)*(c + d*x)^3*log(F))^(2/3))/(3*d*(c + d*x)^2))]
    @test_int [F^(a + b*(c + d*x)^3)/(c + d*x)^5, x, 1, -((F^a*Gamma(-(4/3), (-b)*(c + d*x)^3*log(F))*((-b)*(c + d*x)^3*log(F))^(4/3))/(3*d*(c + d*x)^4))]


    @test_int [f^(a + b*(c + d*x)^(1/2)), x, 3, -((2*f^(a + b*sqrt(c + d*x)))/(b^2*d*log(f)^2)) + (2*f^(a + b*sqrt(c + d*x))*sqrt(c + d*x))/(b*d*log(f))]
    @test_int [f^(a + b*(c + d*x)^(1/3)), x, 4, (6*f^(a + b*(c + d*x)^(1/3)))/(b^3*d*log(f)^3) - (6*f^(a + b*(c + d*x)^(1/3))*(c + d*x)^(1/3))/(b^2*d*log(f)^2) + (3*f^(a + b*(c + d*x)^(1/3))*(c + d*x)^(2/3))/(b*d*log(f))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [F^(a + b/(c + d*x))*(c + d*x)^m, x, 1, (F^a*(c + d*x)^(1 + m)*Gamma(-1 - m, -((b*log(F))/(c + d*x)))*(-((b*log(F))/(c + d*x)))^(1 + m))/d]

    @test_int [F^(a + b/(c + d*x))*(c + d*x)^4, x, 1, -((b^5*F^a*Gamma(-5, -((b*log(F))/(c + d*x)))*log(F)^5)/d)]
    @test_int [F^(a + b/(c + d*x))*(c + d*x)^3, x, 1, (b^4*F^a*Gamma(-4, -((b*log(F))/(c + d*x)))*log(F)^4)/d]
    @test_int [F^(a + b/(c + d*x))*(c + d*x)^2, x, 4, (F^(a + b/(c + d*x))*(c + d*x)^3)/(3*d) + (b*F^(a + b/(c + d*x))*(c + d*x)^2*log(F))/(6*d) + (b^2*F^(a + b/(c + d*x))*(c + d*x)*log(F)^2)/(6*d) - (b^3*F^a*ExpIntegralEi((b*log(F))/(c + d*x))*log(F)^3)/(6*d)]
    @test_int [F^(a + b/(c + d*x))*(c + d*x)^1, x, 3, (F^(a + b/(c + d*x))*(c + d*x)^2)/(2*d) + (b*F^(a + b/(c + d*x))*(c + d*x)*log(F))/(2*d) - (b^2*F^a*ExpIntegralEi((b*log(F))/(c + d*x))*log(F)^2)/(2*d)]
    @test_int [F^(a + b/(c + d*x))*(c + d*x)^0, x, 2, (F^(a + b/(c + d*x))*(c + d*x))/d - (b*F^a*ExpIntegralEi((b*log(F))/(c + d*x))*log(F))/d]
    @test_int [F^(a + b/(c + d*x))/(c + d*x)^1, x, 1, -((F^a*ExpIntegralEi((b*log(F))/(c + d*x)))/d)]
    @test_int [F^(a + b/(c + d*x))/(c + d*x)^2, x, 1, -(F^(a + b/(c + d*x))/(b*d*log(F)))]
    @test_int [F^(a + b/(c + d*x))/(c + d*x)^3, x, 2, F^(a + b/(c + d*x))/(b^2*d*log(F)^2) - F^(a + b/(c + d*x))/(b*d*(c + d*x)*log(F))]
    @test_int [F^(a + b/(c + d*x))/(c + d*x)^4, x, 3, -((2*F^(a + b/(c + d*x)))/(b^3*d*log(F)^3)) + (2*F^(a + b/(c + d*x)))/(b^2*d*(c + d*x)*log(F)^2) - F^(a + b/(c + d*x))/(b*d*(c + d*x)^2*log(F))]
    @test_int [F^(a + b/(c + d*x))/(c + d*x)^5, x, 4, (6*F^(a + b/(c + d*x)))/(b^4*d*log(F)^4) - (6*F^(a + b/(c + d*x)))/(b^3*d*(c + d*x)*log(F)^3) + (3*F^(a + b/(c + d*x)))/(b^2*d*(c + d*x)^2*log(F)^2) - F^(a + b/(c + d*x))/(b*d*(c + d*x)^3*log(F))]
    @test_int [F^(a + b/(c + d*x))/(c + d*x)^6, x, 1, -((F^(a + b/(c + d*x))*(24*(c + d*x)^4 - 24*b*(c + d*x)^3*log(F) + 12*b^2*(c + d*x)^2*log(F)^2 - 4*b^3*(c + d*x)*log(F)^3 + b^4*log(F)^4))/(b^5*d*(c + d*x)^4*log(F)^5))]
    @test_int [F^(a + b/(c + d*x))/(c + d*x)^7, x, 1, (F^(a + b/(c + d*x))*(120*(c + d*x)^5 - 120*b*(c + d*x)^4*log(F) + 60*b^2*(c + d*x)^3*log(F)^2 - 20*b^3*(c + d*x)^2*log(F)^3 + 5*b^4*(c + d*x)*log(F)^4 - b^5*log(F)^5))/(b^6*d*(c + d*x)^5*log(F)^6)]


    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^m, x, 1, (F^a*(c + d*x)^(1 + m)*Gamma((1/2)*(-1 - m), -((b*log(F))/(c + d*x)^2))*(-((b*log(F))/(c + d*x)^2))^((1 + m)/2))/(2*d)]

    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^9, x, 1, -((b^5*F^a*Gamma(-5, -((b*log(F))/(c + d*x)^2))*log(F)^5)/(2*d))]
    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^7, x, 1, (b^4*F^a*Gamma(-4, -((b*log(F))/(c + d*x)^2))*log(F)^4)/(2*d)]
    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^5, x, 4, (F^(a + b/(c + d*x)^2)*(c + d*x)^6)/(6*d) + (b*F^(a + b/(c + d*x)^2)*(c + d*x)^4*log(F))/(12*d) + (b^2*F^(a + b/(c + d*x)^2)*(c + d*x)^2*log(F)^2)/(12*d) - (b^3*F^a*ExpIntegralEi((b*log(F))/(c + d*x)^2)*log(F)^3)/(12*d)]
    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^3, x, 3, (F^(a + b/(c + d*x)^2)*(c + d*x)^4)/(4*d) + (b*F^(a + b/(c + d*x)^2)*(c + d*x)^2*log(F))/(4*d) - (b^2*F^a*ExpIntegralEi((b*log(F))/(c + d*x)^2)*log(F)^2)/(4*d)]
    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^1, x, 2, (F^(a + b/(c + d*x)^2)*(c + d*x)^2)/(2*d) - (b*F^a*ExpIntegralEi((b*log(F))/(c + d*x)^2)*log(F))/(2*d)]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^1, x, 1, -((F^a*ExpIntegralEi((b*log(F))/(c + d*x)^2))/(2*d))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^3, x, 1, -(F^(a + b/(c + d*x)^2)/(2*b*d*log(F)))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^5, x, 2, F^(a + b/(c + d*x)^2)/(2*b^2*d*log(F)^2) - F^(a + b/(c + d*x)^2)/(2*b*d*(c + d*x)^2*log(F))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^7, x, 3, -(F^(a + b/(c + d*x)^2)/(b^3*d*log(F)^3)) + F^(a + b/(c + d*x)^2)/(b^2*d*(c + d*x)^2*log(F)^2) - F^(a + b/(c + d*x)^2)/(2*b*d*(c + d*x)^4*log(F))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^9, x, 4, (3*F^(a + b/(c + d*x)^2))/(b^4*d*log(F)^4) - (3*F^(a + b/(c + d*x)^2))/(b^3*d*(c + d*x)^2*log(F)^3) + (3*F^(a + b/(c + d*x)^2))/(2*b^2*d*(c + d*x)^4*log(F)^2) - F^(a + b/(c + d*x)^2)/(2*b*d*(c + d*x)^6*log(F))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^11, x, 1, -((F^(a + b/(c + d*x)^2)*(24*(c + d*x)^8 - 24*b*(c + d*x)^6*log(F) + 12*b^2*(c + d*x)^4*log(F)^2 - 4*b^3*(c + d*x)^2*log(F)^3 + b^4*log(F)^4))/(2*b^5*d*(c + d*x)^8*log(F)^5))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^13, x, 1, (F^(a + b/(c + d*x)^2)*(120*(c + d*x)^10 - 120*b*(c + d*x)^8*log(F) + 60*b^2*(c + d*x)^6*log(F)^2 - 20*b^3*(c + d*x)^4*log(F)^3 + 5*b^4*(c + d*x)^2*log(F)^4 - b^5*log(F)^5))/(2*b^6*d*(c + d*x)^10*log(F)^6)]

    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^10, x, 1, (F^a*(c + d*x)^11*Gamma(-(11/2), -((b*log(F))/(c + d*x)^2))*(-((b*log(F))/(c + d*x)^2))^(11/2))/(2*d)]
    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^8, x, 1, (F^a*(c + d*x)^9*Gamma(-(9/2), -((b*log(F))/(c + d*x)^2))*(-((b*log(F))/(c + d*x)^2))^(9/2))/(2*d)]
    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^6, x, 6, (F^(a + b/(c + d*x)^2)*(c + d*x)^7)/(7*d) + (2*b*F^(a + b/(c + d*x)^2)*(c + d*x)^5*log(F))/(35*d) + (4*b^2*F^(a + b/(c + d*x)^2)*(c + d*x)^3*log(F)^2)/(105*d) + (8*b^3*F^(a + b/(c + d*x)^2)*(c + d*x)*log(F)^3)/(105*d) - (8*b^(7/2)*F^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(F)))/(c + d*x))*log(F)^(7/2))/(105*d)]
    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^4, x, 5, (F^(a + b/(c + d*x)^2)*(c + d*x)^5)/(5*d) + (2*b*F^(a + b/(c + d*x)^2)*(c + d*x)^3*log(F))/(15*d) + (4*b^2*F^(a + b/(c + d*x)^2)*(c + d*x)*log(F)^2)/(15*d) - (4*b^(5/2)*F^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(F)))/(c + d*x))*log(F)^(5/2))/(15*d)]
    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^2, x, 4, (F^(a + b/(c + d*x)^2)*(c + d*x)^3)/(3*d) + (2*b*F^(a + b/(c + d*x)^2)*(c + d*x)*log(F))/(3*d) - (2*b^(3/2)*F^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(F)))/(c + d*x))*log(F)^(3/2))/(3*d)]
    @test_int [F^(a + b/(c + d*x)^2)*(c + d*x)^0, x, 3, (F^(a + b/(c + d*x)^2)*(c + d*x))/d - (sqrt(b)*F^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(F)))/(c + d*x))*sqrt(log(F)))/d]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^2, x, 2, -((F^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(F)))/(c + d*x)))/(2*sqrt(b)*d*sqrt(log(F))))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^4, x, 3, (F^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(F)))/(c + d*x)))/(4*b^(3/2)*d*log(F)^(3/2)) - F^(a + b/(c + d*x)^2)/(2*b*d*(c + d*x)*log(F))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^6, x, 4, -((3*F^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(F)))/(c + d*x)))/(8*b^(5/2)*d*log(F)^(5/2))) + (3*F^(a + b/(c + d*x)^2))/(4*b^2*d*(c + d*x)*log(F)^2) - F^(a + b/(c + d*x)^2)/(2*b*d*(c + d*x)^3*log(F))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^8, x, 5, (15*F^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(F)))/(c + d*x)))/(16*b^(7/2)*d*log(F)^(7/2)) - (15*F^(a + b/(c + d*x)^2))/(8*b^3*d*(c + d*x)*log(F)^3) + (5*F^(a + b/(c + d*x)^2))/(4*b^2*d*(c + d*x)^3*log(F)^2) - F^(a + b/(c + d*x)^2)/(2*b*d*(c + d*x)^5*log(F))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^10, x, 6, -((105*F^a*sqrt(pi)*erfi((sqrt(b)*sqrt(log(F)))/(c + d*x)))/(32*b^(9/2)*d*log(F)^(9/2))) + (105*F^(a + b/(c + d*x)^2))/(16*b^4*d*(c + d*x)*log(F)^4) - (35*F^(a + b/(c + d*x)^2))/(8*b^3*d*(c + d*x)^3*log(F)^3) + (7*F^(a + b/(c + d*x)^2))/(4*b^2*d*(c + d*x)^5*log(F)^2) - F^(a + b/(c + d*x)^2)/(2*b*d*(c + d*x)^7*log(F))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^12, x, 1, (F^a*Gamma(11/2, -((b*log(F))/(c + d*x)^2)))/(2*d*(c + d*x)^11*(-((b*log(F))/(c + d*x)^2))^(11/2))]
    @test_int [F^(a + b/(c + d*x)^2)/(c + d*x)^14, x, 1, (F^a*Gamma(13/2, -((b*log(F))/(c + d*x)^2)))/(2*d*(c + d*x)^13*(-((b*log(F))/(c + d*x)^2))^(13/2))]


    @test_int [F^(a + b/(c + d*x)^3)*(c + d*x)^m, x, 1, (F^a*(c + d*x)^(1 + m)*Gamma((1/3)*(-1 - m), -((b*log(F))/(c + d*x)^3))*(-((b*log(F))/(c + d*x)^3))^((1 + m)/3))/(3*d)]

    @test_int [F^(a + b/(c + d*x)^3)*(c + d*x)^14, x, 1, -((b^5*F^a*Gamma(-5, -((b*log(F))/(c + d*x)^3))*log(F)^5)/(3*d))]
    @test_int [F^(a + b/(c + d*x)^3)*(c + d*x)^11, x, 1, (b^4*F^a*Gamma(-4, -((b*log(F))/(c + d*x)^3))*log(F)^4)/(3*d)]
    @test_int [F^(a + b/(c + d*x)^3)*(c + d*x)^8, x, 4, (F^(a + b/(c + d*x)^3)*(c + d*x)^9)/(9*d) + (b*F^(a + b/(c + d*x)^3)*(c + d*x)^6*log(F))/(18*d) + (b^2*F^(a + b/(c + d*x)^3)*(c + d*x)^3*log(F)^2)/(18*d) - (b^3*F^a*ExpIntegralEi((b*log(F))/(c + d*x)^3)*log(F)^3)/(18*d)]
    @test_int [F^(a + b/(c + d*x)^3)*(c + d*x)^5, x, 3, (F^(a + b/(c + d*x)^3)*(c + d*x)^6)/(6*d) + (b*F^(a + b/(c + d*x)^3)*(c + d*x)^3*log(F))/(6*d) - (b^2*F^a*ExpIntegralEi((b*log(F))/(c + d*x)^3)*log(F)^2)/(6*d)]
    @test_int [F^(a + b/(c + d*x)^3)*(c + d*x)^2, x, 2, (F^(a + b/(c + d*x)^3)*(c + d*x)^3)/(3*d) - (b*F^a*ExpIntegralEi((b*log(F))/(c + d*x)^3)*log(F))/(3*d)]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^1, x, 1, -((F^a*ExpIntegralEi((b*log(F))/(c + d*x)^3))/(3*d))]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^4, x, 1, -(F^(a + b/(c + d*x)^3)/(3*b*d*log(F)))]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^7, x, 2, F^(a + b/(c + d*x)^3)/(3*b^2*d*log(F)^2) - F^(a + b/(c + d*x)^3)/(3*b*d*(c + d*x)^3*log(F))]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^10, x, 3, -((2*F^(a + b/(c + d*x)^3))/(3*b^3*d*log(F)^3)) + (2*F^(a + b/(c + d*x)^3))/(3*b^2*d*(c + d*x)^3*log(F)^2) - F^(a + b/(c + d*x)^3)/(3*b*d*(c + d*x)^6*log(F))]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^13, x, 4, (2*F^(a + b/(c + d*x)^3))/(b^4*d*log(F)^4) - (2*F^(a + b/(c + d*x)^3))/(b^3*d*(c + d*x)^3*log(F)^3) + F^(a + b/(c + d*x)^3)/(b^2*d*(c + d*x)^6*log(F)^2) - F^(a + b/(c + d*x)^3)/(3*b*d*(c + d*x)^9*log(F))]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^16, x, 1, -((F^(a + b/(c + d*x)^3)*(24*(c + d*x)^12 - 24*b*(c + d*x)^9*log(F) + 12*b^2*(c + d*x)^6*log(F)^2 - 4*b^3*(c + d*x)^3*log(F)^3 + b^4*log(F)^4))/(3*b^5*d*(c + d*x)^12*log(F)^5))]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^19, x, 1, (F^(a + b/(c + d*x)^3)*(120*(c + d*x)^15 - 120*b*(c + d*x)^12*log(F) + 60*b^2*(c + d*x)^9*log(F)^2 - 20*b^3*(c + d*x)^6*log(F)^3 + 5*b^4*(c + d*x)^3*log(F)^4 - b^5*log(F)^5))/(3*b^6*d*(c + d*x)^15*log(F)^6)]

    @test_int [F^(a + b/(c + d*x)^3)*(c + d*x)^3, x, 1, (F^a*(c + d*x)^4*Gamma(-(4/3), -((b*log(F))/(c + d*x)^3))*(-((b*log(F))/(c + d*x)^3))^(4/3))/(3*d)]
    @test_int [F^(a + b/(c + d*x)^3)*(c + d*x)^1, x, 1, (F^a*(c + d*x)^2*Gamma(-(2/3), -((b*log(F))/(c + d*x)^3))*(-((b*log(F))/(c + d*x)^3))^(2/3))/(3*d)]
    @test_int [F^(a + b/(c + d*x)^3)*(c + d*x)^0, x, 1, (F^a*(c + d*x)*Gamma(-(1/3), -((b*log(F))/(c + d*x)^3))*(-((b*log(F))/(c + d*x)^3))^(1/3))/(3*d)]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^2, x, 1, (F^a*Gamma(1/3, -((b*log(F))/(c + d*x)^3)))/(3*d*(c + d*x)*(-((b*log(F))/(c + d*x)^3))^(1/3))]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^3, x, 1, (F^a*Gamma(2/3, -((b*log(F))/(c + d*x)^3)))/(3*d*(c + d*x)^2*(-((b*log(F))/(c + d*x)^3))^(2/3))]
    @test_int [F^(a + b/(c + d*x)^3)/(c + d*x)^5, x, 1, (F^a*Gamma(4/3, -((b*log(F))/(c + d*x)^3)))/(3*d*(c + d*x)^4*(-((b*log(F))/(c + d*x)^3))^(4/3))]


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^m, x, 1, -((F^a*(c + d*x)^(1 + m)*Gamma((1 + m)/n, (-b)*(c + d*x)^n*log(F)))/(((-b)*(c + d*x)^n*log(F))^((1 + m)/n)*(d*n)))]

    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^3, x, 1, -((F^a*(c + d*x)^4*Gamma(4/n, (-b)*(c + d*x)^n*log(F)))/(((-b)*(c + d*x)^n*log(F))^(4/n)*(d*n)))]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^2, x, 1, -((F^a*(c + d*x)^3*Gamma(3/n, (-b)*(c + d*x)^n*log(F)))/(((-b)*(c + d*x)^n*log(F))^(3/n)*(d*n)))]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^1, x, 1, -((F^a*(c + d*x)^2*Gamma(2/n, (-b)*(c + d*x)^n*log(F)))/(((-b)*(c + d*x)^n*log(F))^(2/n)*(d*n)))]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^0, x, 1, -((F^a*(c + d*x)*Gamma(1/n, (-b)*(c + d*x)^n*log(F)))/(((-b)*(c + d*x)^n*log(F))^n^(-1)*(d*n)))]
    @test_int [F^(a + b*(c + d*x)^n)/(c + d*x)^1, x, 1, (F^a*ExpIntegralEi(b*(c + d*x)^n*log(F)))/(d*n)]
    @test_int [F^(a + b*(c + d*x)^n)/(c + d*x)^2, x, 1, -((F^a*Gamma(-(1/n), (-b)*(c + d*x)^n*log(F))*((-b)*(c + d*x)^n*log(F))^(1/n))/(d*n*(c + d*x)))]
    @test_int [F^(a + b*(c + d*x)^n)/(c + d*x)^3, x, 1, -((F^a*Gamma(-(2/n), (-b)*(c + d*x)^n*log(F))*((-b)*(c + d*x)^n*log(F))^(2/n))/(d*n*(c + d*x)^2))]
    @test_int [F^(a + b*(c + d*x)^n)/(c + d*x)^4, x, 1, -((F^a*Gamma(-(3/n), (-b)*(c + d*x)^n*log(F))*((-b)*(c + d*x)^n*log(F))^(3/n))/(d*n*(c + d*x)^3))]


    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(6*n - 1), x, 1, -((F^(a + b*(c + d*x)^n)*(120 - 120*b*(c + d*x)^n*log(F) + 60*b^2*(c + d*x)^(2*n)*log(F)^2 - 20*b^3*(c + d*x)^(3*n)*log(F)^3 + 5*b^4*(c + d*x)^(4*n)*log(F)^4 - b^5*(c + d*x)^(5*n)*log(F)^5))/(b^6*d*n*log(F)^6))]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(5*n - 1), x, 1, (F^(a + b*(c + d*x)^n)*(24 - 24*b*(c + d*x)^n*log(F) + 12*b^2*(c + d*x)^(2*n)*log(F)^2 - 4*b^3*(c + d*x)^(3*n)*log(F)^3 + b^4*(c + d*x)^(4*n)*log(F)^4))/(b^5*d*n*log(F)^5)]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(4*n - 1), x, 4, -((6*F^(a + b*(c + d*x)^n))/(b^4*d*n*log(F)^4)) + (6*F^(a + b*(c + d*x)^n)*(c + d*x)^n)/(b^3*d*n*log(F)^3) - (3*F^(a + b*(c + d*x)^n)*(c + d*x)^(2*n))/(b^2*d*n*log(F)^2) + (F^(a + b*(c + d*x)^n)*(c + d*x)^(3*n))/(b*d*n*log(F))]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(3*n - 1), x, 3, (2*F^(a + b*(c + d*x)^n))/(b^3*d*n*log(F)^3) - (2*F^(a + b*(c + d*x)^n)*(c + d*x)^n)/(b^2*d*n*log(F)^2) + (F^(a + b*(c + d*x)^n)*(c + d*x)^(2*n))/(b*d*n*log(F))]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(2*n - 1), x, 2, -(F^(a + b*(c + d*x)^n)/(b^2*d*n*log(F)^2)) + (F^(a + b*(c + d*x)^n)*(c + d*x)^n)/(b*d*n*log(F))]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(1*n - 1), x, 1, F^(a + b*(c + d*x)^n)/(b*d*n*log(F))]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(0*n - 1), x, 1, (F^a*ExpIntegralEi(b*(c + d*x)^n*log(F)))/(d*n)]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(-1*n - 1), x, 2, -(F^(a + b*(c + d*x)^n)/((c + d*x)^n*(d*n))) + (b*F^a*ExpIntegralEi(b*(c + d*x)^n*log(F))*log(F))/(d*n)]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(-2*n - 1), x, 3, -(F^(a + b*(c + d*x)^n)/((c + d*x)^(2*n)*(2*d*n))) - (b*F^(a + b*(c + d*x)^n)*log(F))/((c + d*x)^n*(2*d*n)) + (b^2*F^a*ExpIntegralEi(b*(c + d*x)^n*log(F))*log(F)^2)/(2*d*n)]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(-3*n - 1), x, 4, -(F^(a + b*(c + d*x)^n)/((c + d*x)^(3*n)*(3*d*n))) - (b*F^(a + b*(c + d*x)^n)*log(F))/((c + d*x)^(2*n)*(6*d*n)) - (b^2*F^(a + b*(c + d*x)^n)*log(F)^2)/((c + d*x)^n*(6*d*n)) + (b^3*F^a*ExpIntegralEi(b*(c + d*x)^n*log(F))*log(F)^3)/(6*d*n)]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(-4*n - 1), x, 1, -((b^4*F^a*Gamma(-4, (-b)*(c + d*x)^n*log(F))*log(F)^4)/(d*n))]
    @test_int [F^(a + b*(c + d*x)^n)*(c + d*x)^(-5*n - 1), x, 1, (b^5*F^a*Gamma(-5, (-b)*(c + d*x)^n*log(F))*log(F)^5)/(d*n)]


    @test_int [(a + b*x)^(n/2 - 1)*F^(c*(a + b*x)^n), x, 2, (sqrt(pi)*erfi(sqrt(c)*(a + b*x)^(n/2)*sqrt(log(F))))/(b*sqrt(c)*n*sqrt(log(F)))]
    @test_int [(a + b*x)^(n/2 - 1)*F^(-c*(a + b*x)^n), x, 2, (sqrt(pi)*erf(sqrt(c)*(a + b*x)^(n/2)*sqrt(log(F))))/(b*sqrt(c)*n*sqrt(log(F)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*F^(a+b*(c+d*x)^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [F^(a + b*(c + d*x)^2)*(e + f*x)^5, x, 14, (f^5*F^(a + b*(c + d*x)^2))/(b^3*d^6*log(F)^3) + (15*f^4*(d*e - c*f)*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(8*b^(5/2)*d^6*log(F)^(5/2)) - (5*f^3*(d*e - c*f)^2*F^(a + b*(c + d*x)^2))/(b^2*d^6*log(F)^2) - (15*f^4*(d*e - c*f)*F^(a + b*(c + d*x)^2)*(c + d*x))/(4*b^2*d^6*log(F)^2) - (f^5*F^(a + b*(c + d*x)^2)*(c + d*x)^2)/(b^2*d^6*log(F)^2) - (5*f^2*(d*e - c*f)^3*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(2*b^(3/2)*d^6*log(F)^(3/2)) + (5*f*(d*e - c*f)^4*F^(a + b*(c + d*x)^2))/(2*b*d^6*log(F)) + (5*f^2*(d*e - c*f)^3*F^(a + b*(c + d*x)^2)*(c + d*x))/(b*d^6*log(F)) + (5*f^3*(d*e - c*f)^2*F^(a + b*(c + d*x)^2)*(c + d*x)^2)/(b*d^6*log(F)) + (5*f^4*(d*e - c*f)*F^(a + b*(c + d*x)^2)*(c + d*x)^3)/(2*b*d^6*log(F)) + (f^5*F^(a + b*(c + d*x)^2)*(c + d*x)^4)/(2*b*d^6*log(F)) + ((d*e - c*f)^5*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(2*sqrt(b)*d^6*sqrt(log(F)))]
    @test_int [F^(a + b*(c + d*x)^2)*(e + f*x)^4, x, 11, (3*f^4*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(8*b^(5/2)*d^5*log(F)^(5/2)) - (2*f^3*(d*e - c*f)*F^(a + b*(c + d*x)^2))/(b^2*d^5*log(F)^2) - (3*f^4*F^(a + b*(c + d*x)^2)*(c + d*x))/(4*b^2*d^5*log(F)^2) - (3*f^2*(d*e - c*f)^2*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(2*b^(3/2)*d^5*log(F)^(3/2)) + (2*f*(d*e - c*f)^3*F^(a + b*(c + d*x)^2))/(b*d^5*log(F)) + (3*f^2*(d*e - c*f)^2*F^(a + b*(c + d*x)^2)*(c + d*x))/(b*d^5*log(F)) + (2*f^3*(d*e - c*f)*F^(a + b*(c + d*x)^2)*(c + d*x)^2)/(b*d^5*log(F)) + (f^4*F^(a + b*(c + d*x)^2)*(c + d*x)^3)/(2*b*d^5*log(F)) + ((d*e - c*f)^4*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(2*sqrt(b)*d^5*sqrt(log(F)))]
    @test_int [F^(a + b*(c + d*x)^2)*(e + f*x)^3, x, 8, -((f^3*F^(a + b*(c + d*x)^2))/(2*b^2*d^4*log(F)^2)) - (3*f^2*(d*e - c*f)*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(4*b^(3/2)*d^4*log(F)^(3/2)) + (3*f*(d*e - c*f)^2*F^(a + b*(c + d*x)^2))/(2*b*d^4*log(F)) + (3*f^2*(d*e - c*f)*F^(a + b*(c + d*x)^2)*(c + d*x))/(2*b*d^4*log(F)) + (f^3*F^(a + b*(c + d*x)^2)*(c + d*x)^2)/(2*b*d^4*log(F)) + ((d*e - c*f)^3*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(2*sqrt(b)*d^4*sqrt(log(F)))]
    @test_int [F^(a + b*(c + d*x)^2)*(e + f*x)^2, x, 6, -((f^2*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(4*b^(3/2)*d^3*log(F)^(3/2))) + (f*(d*e - c*f)*F^(a + b*(c + d*x)^2))/(b*d^3*log(F)) + (f^2*F^(a + b*(c + d*x)^2)*(c + d*x))/(2*b*d^3*log(F)) + ((d*e - c*f)^2*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(2*sqrt(b)*d^3*sqrt(log(F)))]
    @test_int [F^(a + b*(c + d*x)^2)*(e + f*x)^1, x, 4, (f*F^(a + b*(c + d*x)^2))/(2*b*d^2*log(F)) + ((d*e - c*f)*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(2*sqrt(b)*d^2*sqrt(log(F)))]
    @test_int [F^(a + b*(c + d*x)^2)*(e + f*x)^0, x, 1, (F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F))))/(2*sqrt(b)*d*sqrt(log(F)))]
    @test_int [F^(a + b*(c + d*x)^2)/(e + f*x)^1, x, 0, Unintegrable(F^(a + b*(c + d*x)^2)/(e + f*x), x)]
    @test_int [F^(a + b*(c + d*x)^2)/(e + f*x)^2, x, 2, -(F^(a + b*(c + d*x)^2)/(f*(e + f*x))) + (sqrt(b)*d*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F)))*sqrt(log(F)))/f^2 - (2*b*d*(d*e - c*f)*log(F)*Unintegrable(F^(a + b*(c + d*x)^2)/(e + f*x), x))/f^2]
    @test_int [F^(a + b*(c + d*x)^2)/(e + f*x)^3, x, 3, -(F^(a + b*(c + d*x)^2)/(2*f*(e + f*x)^2)) + (b*d*(d*e - c*f)*F^(a + b*(c + d*x)^2)*log(F))/(f^3*(e + f*x)) - (b^(3/2)*d^2*(d*e - c*f)*F^a*sqrt(pi)*erfi(sqrt(b)*(c + d*x)*sqrt(log(F)))*log(F)^(3/2))/f^4 + (b*d^2*log(F)*Unintegrable(F^(a + b*(c + d*x)^2)/(e + f*x), x))/f^2 + (2*b^2*d^2*(d*e - c*f)^2*log(F)^2*Unintegrable(F^(a + b*(c + d*x)^2)/(e + f*x), x))/f^4]


    @test_int [ℯ^(e*(c + d*x)^3)*(a + b*x)^3, x, 6, -((b^2*(b*c - a*d)*ℯ^(e*(c + d*x)^3))/(d^4*e)) + ((b*c - a*d)^3*(c + d*x)*Gamma(1/3, (-e)*(c + d*x)^3))/(3*d^4*((-e)*(c + d*x)^3)^(1/3)) - (b*(b*c - a*d)^2*(c + d*x)^2*Gamma(2/3, (-e)*(c + d*x)^3))/(d^4*((-e)*(c + d*x)^3)^(2/3)) - (b^3*(c + d*x)^4*Gamma(4/3, (-e)*(c + d*x)^3))/(3*d^4*((-e)*(c + d*x)^3)^(4/3))]
    @test_int [ℯ^(e*(c + d*x)^3)*(a + b*x)^2, x, 5, (b^2*ℯ^(e*(c + d*x)^3))/(3*d^3*e) - ((b*c - a*d)^2*(c + d*x)*Gamma(1/3, (-e)*(c + d*x)^3))/(3*d^3*((-e)*(c + d*x)^3)^(1/3)) + (2*b*(b*c - a*d)*(c + d*x)^2*Gamma(2/3, (-e)*(c + d*x)^3))/(3*d^3*((-e)*(c + d*x)^3)^(2/3))]
    @test_int [ℯ^(e*(c + d*x)^3)*(a + b*x)^1, x, 4, ((b*c - a*d)*(c + d*x)*Gamma(1/3, -(e*(c + d*x)^3)))/(3*d^2*(-(e*(c + d*x)^3))^(1/3)) - (b*(c + d*x)^2*Gamma(2/3, -(e*(c + d*x)^3)))/(3*d^2*(-(e*(c + d*x)^3))^(2/3))]
    @test_int [ℯ^(e*(c + d*x)^3)*(a + b*x)^0, x, 1, -(((c + d*x)*Gamma(1/3, (-e)*(c + d*x)^3))/(3*d*((-e)*(c + d*x)^3)^(1/3)))]
    @test_int [ℯ^(e*(c + d*x)^3)/(a + b*x)^1, x, 0, Unintegrable(ℯ^(e*(c + d*x)^3)/(a + b*x), x)]
    @test_int [ℯ^(e*(c + d*x)^3)/(a + b*x)^2, x, 5, -(ℯ^(e*(c + d*x)^3)/(b*(a + b*x))) - (d*(b*c - a*d)*e*(c + d*x)*Gamma(1/3, (-e)*(c + d*x)^3))/(b^3*((-e)*(c + d*x)^3)^(1/3)) - (d*e*(c + d*x)^2*Gamma(2/3, (-e)*(c + d*x)^3))/(b^2*((-e)*(c + d*x)^3)^(2/3)) + (3*d*(b*c - a*d)^2*e*Unintegrable(ℯ^(e*(c + d*x)^3)/(a + b*x), x))/b^3]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [F^(a + b/(c + d*x))/(e + f*x)^1, x, 4, -((F^a*ExpIntegralEi((b*log(F))/(c + d*x)))/f) + (F^(a - (b*f)/(d*e - c*f))*ExpIntegralEi((d*b*(e + f*x)*log(F))/((d*e - c*f)*(c + d*x))))/f]
    @test_int [F^(a + b/(c + d*x))/(e + f*x)^2, x, 9, (d*F^(a + b/(c + d*x)))/(f*(d*e - c*f)) - F^(a + b/(c + d*x))/(f*(e + f*x)) - (b*d*F^(a - (b*f)/(d*e - c*f))*ExpIntegralEi((b*d*(e + f*x)*log(F))/((d*e - c*f)*(c + d*x)))*log(F))/(d*e - c*f)^2]
    @test_int [F^(a + b/(c + d*x))/(e + f*x)^3, x, 18, (d^2*F^(a + b/(c + d*x)))/(2*f*(d*e - c*f)^2) - F^(a + b/(c + d*x))/(2*f*(e + f*x)^2) - (b*d^2*F^(a + b/(c + d*x))*log(F))/(2*(d*e - c*f)^3) + (b*d*F^(a + b/(c + d*x))*log(F))/(2*(d*e - c*f)^2*(e + f*x)) - (b*d^2*F^(a - (b*f)/(d*e - c*f))*ExpIntegralEi((b*d*(e + f*x)*log(F))/((d*e - c*f)*(c + d*x)))*log(F))/(d*e - c*f)^3 + (b^2*d^2*f*F^(a - (b*f)/(d*e - c*f))*ExpIntegralEi((b*d*(e + f*x)*log(F))/((d*e - c*f)*(c + d*x)))*log(F)^2)/(2*(d*e - c*f)^4)]
    @test_int [F^(a + b/(c + d*x))/(e + f*x)^4, x, 36, (d^3*F^(a + b/(c + d*x)))/(3*f*(d*e - c*f)^3) - F^(a + b/(c + d*x))/(3*f*(e + f*x)^3) - (5*b*d^3*F^(a + b/(c + d*x))*log(F))/(6*(d*e - c*f)^4) + (b*d*F^(a + b/(c + d*x))*log(F))/(6*(d*e - c*f)^2*(e + f*x)^2) + (2*b*d^2*F^(a + b/(c + d*x))*log(F))/(3*(d*e - c*f)^3*(e + f*x)) - (b*d^3*F^(a - (b*f)/(d*e - c*f))*ExpIntegralEi((b*d*(e + f*x)*log(F))/((d*e - c*f)*(c + d*x)))*log(F))/(d*e - c*f)^4 + (b^2*d^3*f*F^(a + b/(c + d*x))*log(F)^2)/(6*(d*e - c*f)^5) - (b^2*d^2*f*F^(a + b/(c + d*x))*log(F)^2)/(6*(d*e - c*f)^4*(e + f*x)) + (b^2*d^3*f*F^(a - (b*f)/(d*e - c*f))*ExpIntegralEi((b*d*(e + f*x)*log(F))/((d*e - c*f)*(c + d*x)))*log(F)^2)/(d*e - c*f)^5 - (b^3*d^3*f^2*F^(a - (b*f)/(d*e - c*f))*ExpIntegralEi((b*d*(e + f*x)*log(F))/((d*e - c*f)*(c + d*x)))*log(F)^3)/(6*(d*e - c*f)^6)]


    @test_int [ℯ^(e/(c + d*x))*(a + b*x)^4, x, 13, ((b*c - a*d)^4*ℯ^(e/(c + d*x))*(c + d*x))/d^5 - (2*b*(b*c - a*d)^3*e*ℯ^(e/(c + d*x))*(c + d*x))/d^5 + (b^2*(b*c - a*d)^2*e^2*ℯ^(e/(c + d*x))*(c + d*x))/d^5 - (2*b*(b*c - a*d)^3*ℯ^(e/(c + d*x))*(c + d*x)^2)/d^5 + (b^2*(b*c - a*d)^2*e*ℯ^(e/(c + d*x))*(c + d*x)^2)/d^5 + (2*b^2*(b*c - a*d)^2*ℯ^(e/(c + d*x))*(c + d*x)^3)/d^5 - ((b*c - a*d)^4*e*ExpIntegralEi(e/(c + d*x)))/d^5 + (2*b*(b*c - a*d)^3*e^2*ExpIntegralEi(e/(c + d*x)))/d^5 - (b^2*(b*c - a*d)^2*e^3*ExpIntegralEi(e/(c + d*x)))/d^5 - (b^4*e^5*Gamma(-5, -(e/(c + d*x))))/d^5 - (4*b^3*(b*c - a*d)*e^4*Gamma(-4, -(e/(c + d*x))))/d^5]
    @test_int [ℯ^(e/(c + d*x))*(a + b*x)^3, x, 12, -(((b*c - a*d)^3*ℯ^(e/(c + d*x))*(c + d*x))/d^4) + (3*b*(b*c - a*d)^2*e*ℯ^(e/(c + d*x))*(c + d*x))/(2*d^4) - (b^2*(b*c - a*d)*e^2*ℯ^(e/(c + d*x))*(c + d*x))/(2*d^4) + (3*b*(b*c - a*d)^2*ℯ^(e/(c + d*x))*(c + d*x)^2)/(2*d^4) - (b^2*(b*c - a*d)*e*ℯ^(e/(c + d*x))*(c + d*x)^2)/(2*d^4) - (b^2*(b*c - a*d)*ℯ^(e/(c + d*x))*(c + d*x)^3)/d^4 + ((b*c - a*d)^3*e*ExpIntegralEi(e/(c + d*x)))/d^4 - (3*b*(b*c - a*d)^2*e^2*ExpIntegralEi(e/(c + d*x)))/(2*d^4) + (b^2*(b*c - a*d)*e^3*ExpIntegralEi(e/(c + d*x)))/(2*d^4) + (b^3*e^4*Gamma(-4, -(e/(c + d*x))))/d^4]
    @test_int [ℯ^(e/(c + d*x))*(a + b*x)^2, x, 11, ((b*c - a*d)^2*ℯ^(e/(c + d*x))*(c + d*x))/d^3 - (b*(b*c - a*d)*e*ℯ^(e/(c + d*x))*(c + d*x))/d^3 + (b^2*e^2*ℯ^(e/(c + d*x))*(c + d*x))/(6*d^3) - (b*(b*c - a*d)*ℯ^(e/(c + d*x))*(c + d*x)^2)/d^3 + (b^2*e*ℯ^(e/(c + d*x))*(c + d*x)^2)/(6*d^3) + (b^2*ℯ^(e/(c + d*x))*(c + d*x)^3)/(3*d^3) - ((b*c - a*d)^2*e*ExpIntegralEi(e/(c + d*x)))/d^3 + (b*(b*c - a*d)*e^2*ExpIntegralEi(e/(c + d*x)))/d^3 - (b^2*e^3*ExpIntegralEi(e/(c + d*x)))/(6*d^3)]
    @test_int [ℯ^(e/(c + d*x))*(a + b*x)^1, x, 7, -(((b*c - a*d)*ℯ^(e/(c + d*x))*(c + d*x))/d^2) + (b*e*ℯ^(e/(c + d*x))*(c + d*x))/(2*d^2) + (b*ℯ^(e/(c + d*x))*(c + d*x)^2)/(2*d^2) + ((b*c - a*d)*e*ExpIntegralEi(e/(c + d*x)))/d^2 - (b*e^2*ExpIntegralEi(e/(c + d*x)))/(2*d^2)]
    @test_int [ℯ^(e/(c + d*x))*(a + b*x)^0, x, 2, (ℯ^(e/(c + d*x))*(c + d*x))/d - (e*ExpIntegralEi(e/(c + d*x)))/d]
    @test_int [ℯ^(e/(c + d*x))/(a + b*x)^1, x, 4, -(ExpIntegralEi(e/(c + d*x))/b) + (ℯ^((b*e)/(b*c - a*d))*ExpIntegralEi(-((d*e*(a + b*x))/((b*c - a*d)*(c + d*x)))))/b]
    @test_int [ℯ^(e/(c + d*x))/(a + b*x)^2, x, 9, -((d*ℯ^(e/(c + d*x)))/(b*(b*c - a*d))) - ℯ^(e/(c + d*x))/(b*(a + b*x)) - (d*e*ℯ^((b*e)/(b*c - a*d))*ExpIntegralEi(-((d*e*(a + b*x))/((b*c - a*d)*(c + d*x)))))/(b*c - a*d)^2]
    @test_int [ℯ^(e/(c + d*x))/(a + b*x)^3, x, 18, (d^2*ℯ^(e/(c + d*x)))/(2*b*(b*c - a*d)^2) + (d^2*e*ℯ^(e/(c + d*x)))/(2*(b*c - a*d)^3) - ℯ^(e/(c + d*x))/(2*b*(a + b*x)^2) + (d*e*ℯ^(e/(c + d*x)))/(2*(b*c - a*d)^2*(a + b*x)) + (d^2*e*ℯ^((b*e)/(b*c - a*d))*ExpIntegralEi(-((d*e*(a + b*x))/((b*c - a*d)*(c + d*x)))))/(b*c - a*d)^3 + (b*d^2*e^2*ℯ^((b*e)/(b*c - a*d))*ExpIntegralEi(-((d*e*(a + b*x))/((b*c - a*d)*(c + d*x)))))/(2*(b*c - a*d)^4)]


    @test_int [ℯ^(e/(c + d*x)^2)*(a + b*x)^3, x, 14, -(((b*c - a*d)^3*ℯ^(e/(c + d*x)^2)*(c + d*x))/d^4) - (2*b^2*(b*c - a*d)*e*ℯ^(e/(c + d*x)^2)*(c + d*x))/d^4 + (3*b*(b*c - a*d)^2*ℯ^(e/(c + d*x)^2)*(c + d*x)^2)/(2*d^4) + (b^3*e*ℯ^(e/(c + d*x)^2)*(c + d*x)^2)/(4*d^4) - (b^2*(b*c - a*d)*ℯ^(e/(c + d*x)^2)*(c + d*x)^3)/d^4 + (b^3*ℯ^(e/(c + d*x)^2)*(c + d*x)^4)/(4*d^4) + ((b*c - a*d)^3*sqrt(e)*sqrt(pi)*erfi(sqrt(e)/(c + d*x)))/d^4 + (2*b^2*(b*c - a*d)*e^(3/2)*sqrt(pi)*erfi(sqrt(e)/(c + d*x)))/d^4 - (3*b*(b*c - a*d)^2*e*ExpIntegralEi(e/(c + d*x)^2))/(2*d^4) - (b^3*e^2*ExpIntegralEi(e/(c + d*x)^2))/(4*d^4)]
    @test_int [ℯ^(e/(c + d*x)^2)*(a + b*x)^2, x, 11, ((b*c - a*d)^2*ℯ^(e/(c + d*x)^2)*(c + d*x))/d^3 + (2*b^2*e*ℯ^(e/(c + d*x)^2)*(c + d*x))/(3*d^3) - (b*(b*c - a*d)*ℯ^(e/(c + d*x)^2)*(c + d*x)^2)/d^3 + (b^2*ℯ^(e/(c + d*x)^2)*(c + d*x)^3)/(3*d^3) - ((b*c - a*d)^2*sqrt(e)*sqrt(pi)*erfi(sqrt(e)/(c + d*x)))/d^3 - (2*b^2*e^(3/2)*sqrt(pi)*erfi(sqrt(e)/(c + d*x)))/(3*d^3) + (b*(b*c - a*d)*e*ExpIntegralEi(e/(c + d*x)^2))/d^3]
    @test_int [ℯ^(e/(c + d*x)^2)*(a + b*x)^1, x, 7, -(((b*c - a*d)*ℯ^(e/(c + d*x)^2)*(c + d*x))/d^2) + (b*ℯ^(e/(c + d*x)^2)*(c + d*x)^2)/(2*d^2) + ((b*c - a*d)*sqrt(e)*sqrt(pi)*erfi(sqrt(e)/(c + d*x)))/d^2 - (b*e*ExpIntegralEi(e/(c + d*x)^2))/(2*d^2)]
    @test_int [ℯ^(e/(c + d*x)^2)*(a + b*x)^0, x, 3, (ℯ^(e/(c + d*x)^2)*(c + d*x))/d - (sqrt(e)*sqrt(pi)*erfi(sqrt(e)/(c + d*x)))/d]
    @test_int [ℯ^(e/(c + d*x)^2)/(a + b*x)^1, x, 0, Unintegrable(ℯ^(e/(c + d*x)^2)/(a + b*x), x)]
    @test_int [ℯ^(e/(c + d*x)^2)/(a + b*x)^2, x, 0, CannotIntegrate(ℯ^(e/(c + d*x)^2)/(a + b*x)^2, x)]
    @test_int [ℯ^(e/(c + d*x)^2)/(a + b*x)^3, x, 0, CannotIntegrate(ℯ^(e/(c + d*x)^2)/(a + b*x)^3, x)]


    @test_int [ℯ^(e/(c + d*x)^3)*(a + b*x)^3, x, 7, -((b^2*(b*c - a*d)*ℯ^(e/(c + d*x)^3)*(c + d*x)^3)/d^4) + (b^2*(b*c - a*d)*e*ExpIntegralEi(e/(c + d*x)^3))/d^4 + (b^3*(-(e/(c + d*x)^3))^(4/3)*(c + d*x)^4*Gamma(-(4/3), -(e/(c + d*x)^3)))/(3*d^4) + (b*(b*c - a*d)^2*(-(e/(c + d*x)^3))^(2/3)*(c + d*x)^2*Gamma(-(2/3), -(e/(c + d*x)^3)))/d^4 - ((b*c - a*d)^3*(-(e/(c + d*x)^3))^(1/3)*(c + d*x)*Gamma(-(1/3), -(e/(c + d*x)^3)))/(3*d^4)]
    @test_int [ℯ^(e/(c + d*x)^3)*(a + b*x)^2, x, 6, (b^2*ℯ^(e/(c + d*x)^3)*(c + d*x)^3)/(3*d^3) - (b^2*e*ExpIntegralEi(e/(c + d*x)^3))/(3*d^3) - (2*b*(b*c - a*d)*(-(e/(c + d*x)^3))^(2/3)*(c + d*x)^2*Gamma(-(2/3), -(e/(c + d*x)^3)))/(3*d^3) + ((b*c - a*d)^2*(-(e/(c + d*x)^3))^(1/3)*(c + d*x)*Gamma(-(1/3), -(e/(c + d*x)^3)))/(3*d^3)]
    @test_int [ℯ^(e/(c + d*x)^3)*(a + b*x)^1, x, 4, (b*(-(e/(c + d*x)^3))^(2/3)*(c + d*x)^2*Gamma(-(2/3), -(e/(c + d*x)^3)))/(3*d^2) - ((b*c - a*d)*(-(e/(c + d*x)^3))^(1/3)*(c + d*x)*Gamma(-(1/3), -(e/(c + d*x)^3)))/(3*d^2)]
    @test_int [ℯ^(e/(c + d*x)^3)*(a + b*x)^0, x, 1, ((-(e/(c + d*x)^3))^(1/3)*(c + d*x)*Gamma(-(1/3), -(e/(c + d*x)^3)))/(3*d)]
    @test_int [ℯ^(e/(c + d*x)^3)/(a + b*x)^1, x, 0, Unintegrable(ℯ^(e/(c + d*x)^3)/(a + b*x), x)]
    @test_int [ℯ^(e/(c + d*x)^3)/(a + b*x)^2, x, 0, CannotIntegrate(ℯ^(e/(c + d*x)^3)/(a + b*x)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g+h*x)^m*F^(e+f*(a+b*x)/(c+d*x))=#


    @test_int [F^(e + f*(a + b*x)/(c + d*x))/(g + h*x)^1, x, 5, -((F^(e + (b*f)/d)*ExpIntegralEi(-(((b*c - a*d)*f*log(F))/(d*(c + d*x)))))/h) + (F^(e + (f*(b*g - a*h))/(d*g - c*h))*ExpIntegralEi(-(((b*c - a*d)*f*(g + h*x)*log(F))/((d*g - c*h)*(c + d*x)))))/h]
    @test_int [F^(e + f*(a + b*x)/(c + d*x))/(g + h*x)^2, x, 12, (d*F^(e + (b*f)/d - ((b*c - a*d)*f)/(d*(c + d*x))))/(h*(d*g - c*h)) - F^(e + (f*(a + b*x))/(c + d*x))/(h*(g + h*x)) + ((b*c - a*d)*f*F^(e + (f*(b*g - a*h))/(d*g - c*h))*ExpIntegralEi(-(((b*c - a*d)*f*(g + h*x)*log(F))/((d*g - c*h)*(c + d*x))))*log(F))/(d*g - c*h)^2]
    @test_int [F^(e + f*(a + b*x)/(c + d*x))/(g + h*x)^3, x, 24, (d^2*F^(e + (b*f)/d - ((b*c - a*d)*f)/(d*(c + d*x))))/(2*h*(d*g - c*h)^2) - F^(e + (f*(a + b*x))/(c + d*x))/(2*h*(g + h*x)^2) + (d*(b*c - a*d)*f*F^(e + (b*f)/d - ((b*c - a*d)*f)/(d*(c + d*x)))*log(F))/(2*(d*g - c*h)^3) - ((b*c - a*d)*f*F^(e + (f*(a + b*x))/(c + d*x))*log(F))/(2*(d*g - c*h)^2*(g + h*x)) + (d*(b*c - a*d)*f*F^(e + (f*(b*g - a*h))/(d*g - c*h))*ExpIntegralEi(-(((b*c - a*d)*f*(g + h*x)*log(F))/((d*g - c*h)*(c + d*x))))*log(F))/(d*g - c*h)^3 + ((b*c - a*d)^2*f^2*F^(e + (f*(b*g - a*h))/(d*g - c*h))*h*ExpIntegralEi(-(((b*c - a*d)*f*(g + h*x)*log(F))/((d*g - c*h)*(c + d*x))))*log(F)^2)/(2*(d*g - c*h)^4)]
    @test_int [F^(e + f*(a + b*x)/(c + d*x))/(g + h*x)^4, x, 48, (d^3*F^(e + (b*f)/d - ((b*c - a*d)*f)/(d*(c + d*x))))/(3*h*(d*g - c*h)^3) - F^(e + (f*(a + b*x))/(c + d*x))/(3*h*(g + h*x)^3) + (5*d^2*(b*c - a*d)*f*F^(e + (b*f)/d - ((b*c - a*d)*f)/(d*(c + d*x)))*log(F))/(6*(d*g - c*h)^4) - ((b*c - a*d)*f*F^(e + (f*(a + b*x))/(c + d*x))*log(F))/(6*(d*g - c*h)^2*(g + h*x)^2) - (2*d*(b*c - a*d)*f*F^(e + (f*(a + b*x))/(c + d*x))*log(F))/(3*(d*g - c*h)^3*(g + h*x)) + (d^2*(b*c - a*d)*f*F^(e + (f*(b*g - a*h))/(d*g - c*h))*ExpIntegralEi(-(((b*c - a*d)*f*(g + h*x)*log(F))/((d*g - c*h)*(c + d*x))))*log(F))/(d*g - c*h)^4 + (d*(b*c - a*d)^2*f^2*F^(e + (b*f)/d - ((b*c - a*d)*f)/(d*(c + d*x)))*h*log(F)^2)/(6*(d*g - c*h)^5) - ((b*c - a*d)^2*f^2*F^(e + (f*(a + b*x))/(c + d*x))*h*log(F)^2)/(6*(d*g - c*h)^4*(g + h*x)) + (d*(b*c - a*d)^2*f^2*F^(e + (f*(b*g - a*h))/(d*g - c*h))*h*ExpIntegralEi(-(((b*c - a*d)*f*(g + h*x)*log(F))/((d*g - c*h)*(c + d*x))))*log(F)^2)/(d*g - c*h)^5 + ((b*c - a*d)^3*f^3*F^(e + (f*(b*g - a*h))/(d*g - c*h))*h^2*ExpIntegralEi(-(((b*c - a*d)*f*(g + h*x)*log(F))/((d*g - c*h)*(c + d*x))))*log(F)^3)/(6*(d*g - c*h)^6)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(a+b*x+c*x^2)=#


    @test_int [x^3*f^(a + b*x + c*x^2), x, 10, -(f^(a + b*x + c*x^2)/(2*c^2*log(f)^2)) + (3*b*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(8*c^(5/2)*log(f)^(3/2)) + (b^2*f^(a + b*x + c*x^2))/(8*c^3*log(f)) - (b*f^(a + b*x + c*x^2)*x)/(4*c^2*log(f)) + (f^(a + b*x + c*x^2)*x^2)/(2*c*log(f)) - (b^3*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(16*c^(7/2)*sqrt(log(f)))]
    @test_int [x^2*f^(a + b*x + c*x^2), x, 6, -((f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*c^(3/2)*log(f)^(3/2))) - (b*f^(a + b*x + c*x^2))/(4*c^2*log(f)) + (f^(a + b*x + c*x^2)*x)/(2*c*log(f)) + (b^2*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(8*c^(5/2)*sqrt(log(f)))]
    @test_int [x*f^(a + b*x + c*x^2), x, 3, f^(a + b*x + c*x^2)/(2*c*log(f)) - (b*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*c^(3/2)*sqrt(log(f)))]
    @test_int [f^(a + b*x + c*x^2), x, 2, (f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(2*sqrt(c)*sqrt(log(f)))]
    @test_int [f^(a + b*x + c*x^2)/x, x, 0, Unintegrable(f^(a + b*x + c*x^2)/x, x)]
    @test_int [f^(a + b*x + c*x^2)/x^2, x, 3, -(f^(a + b*x + c*x^2)/x) + sqrt(c)*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c)))*sqrt(log(f)) + b*Unintegrable(f^(a + b*x + c*x^2)/x, x)*log(f)]


    @test_int [x^3*ℯ^(a + b*x - c*x^2), x, 10, -((b^2*ℯ^(a + b*x - c*x^2))/(8*c^3)) - ℯ^(a + b*x - c*x^2)/(2*c^2) - (b*ℯ^(a + b*x - c*x^2)*x)/(4*c^2) - (ℯ^(a + b*x - c*x^2)*x^2)/(2*c) - (b^3*ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(16*c^(7/2)) - (3*b*ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(8*c^(5/2))]
    @test_int [x^2*ℯ^(a + b*x - c*x^2), x, 6, -((b*ℯ^(a + b*x - c*x^2))/(4*c^2)) - (ℯ^(a + b*x - c*x^2)*x)/(2*c) - (b^2*ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(8*c^(5/2)) - (ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(4*c^(3/2))]
    @test_int [x*ℯ^(a + b*x - c*x^2), x, 3, -(ℯ^(a + b*x - c*x^2)/(2*c)) - (b*ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(4*c^(3/2))]
    @test_int [ℯ^(a + b*x - c*x^2), x, 2, -((ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))))/(2*sqrt(c)))]
    @test_int [ℯ^(a + b*x - c*x^2)/x, x, 0, Unintegrable(ℯ^(a + b*x - c*x^2)/x, x)]
    @test_int [ℯ^(a + b*x - c*x^2)/x^2, x, 3, -(ℯ^(a + b*x - c*x^2)/x) + sqrt(c)*ℯ^(a + b^2/(4*c))*sqrt(pi)*erf((b - 2*c*x)/(2*sqrt(c))) + b*Unintegrable(ℯ^(a + b*x - c*x^2)/x, x)]


    @test_int [x^3*ℯ^((a + b*x)*(c + d*x)), x, 11, -(ℯ^(a*c + (b*c + a*d)*x + b*d*x^2)/(2*b^2*d^2)) + ((b*c + a*d)^2*ℯ^(a*c + (b*c + a*d)*x + b*d*x^2))/(8*b^3*d^3) - ((b*c + a*d)*ℯ^(a*c + (b*c + a*d)*x + b*d*x^2)*x)/(4*b^2*d^2) + (ℯ^(a*c + (b*c + a*d)*x + b*d*x^2)*x^2)/(2*b*d) + (3*(b*c + a*d)*sqrt(pi)*erfi((b*c + a*d + 2*b*d*x)/(2*sqrt(b)*sqrt(d))))/(ℯ^((b*c - a*d)^2/(4*b*d))*(8*b^(5/2)*d^(5/2))) - ((b*c + a*d)^3*sqrt(pi)*erfi((b*c + a*d + 2*b*d*x)/(2*sqrt(b)*sqrt(d))))/(ℯ^((b*c - a*d)^2/(4*b*d))*(16*b^(7/2)*d^(7/2)))]
    @test_int [x^2*ℯ^((a + b*x)*(c + d*x)), x, 7, -(((b*c + a*d)*ℯ^(a*c + (b*c + a*d)*x + b*d*x^2))/(4*b^2*d^2)) + (ℯ^(a*c + (b*c + a*d)*x + b*d*x^2)*x)/(2*b*d) - (sqrt(pi)*erfi((b*c + a*d + 2*b*d*x)/(2*sqrt(b)*sqrt(d))))/(ℯ^((b*c - a*d)^2/(4*b*d))*(4*b^(3/2)*d^(3/2))) + ((b*c + a*d)^2*sqrt(pi)*erfi((b*c + a*d + 2*b*d*x)/(2*sqrt(b)*sqrt(d))))/(ℯ^((b*c - a*d)^2/(4*b*d))*(8*b^(5/2)*d^(5/2)))]
    @test_int [x*ℯ^((a + b*x)*(c + d*x)), x, 4, ℯ^(a*c + (b*c + a*d)*x + b*d*x^2)/(2*b*d) - ((b*c + a*d)*sqrt(pi)*erfi((b*c + a*d + 2*b*d*x)/(2*sqrt(b)*sqrt(d))))/(ℯ^((b*c - a*d)^2/(4*b*d))*(4*b^(3/2)*d^(3/2)))]
    @test_int [ℯ^((a + b*x)*(c + d*x)), x, 3, (sqrt(pi)*erfi((b*c + a*d + 2*b*d*x)/(2*sqrt(b)*sqrt(d))))/(ℯ^((b*c - a*d)^2/(4*b*d))*(2*sqrt(b)*sqrt(d)))]
    @test_int [ℯ^((a + b*x)*(c + d*x))/x, x, 1, Unintegrable(ℯ^(a*c + (b*c + a*d)*x + b*d*x^2)/x, x)]
    @test_int [ℯ^((a + b*x)*(c + d*x))/x^2, x, 4, -(ℯ^(a*c + (b*c + a*d)*x + b*d*x^2)/x) + (sqrt(b)*sqrt(d)*sqrt(pi)*erfi((b*c + a*d + 2*b*d*x)/(2*sqrt(b)*sqrt(d))))/ℯ^((b*c - a*d)^2/(4*b*d)) + (b*c + a*d)*Unintegrable(ℯ^(a*c + (b*c + a*d)*x + b*d*x^2)/x, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d+e*x)^m*F^(a+b*x+c*x^2)=#


    @test_int [(d + e*x)^3*f^(a + b*x + c*x^2), x, 10, -((e^3*f^(a + b*x + c*x^2))/(2*c^2*log(f)^2)) - (3*e^2*(2*c*d - b*e)*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(8*c^(5/2)*log(f)^(3/2)) + (e*(2*c*d - b*e)^2*f^(a + b*x + c*x^2))/(8*c^3*log(f)) + (e*(2*c*d - b*e)*f^(a + b*x + c*x^2)*(d + e*x))/(4*c^2*log(f)) + (e*f^(a + b*x + c*x^2)*(d + e*x)^2)/(2*c*log(f)) + ((2*c*d - b*e)^3*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(16*c^(7/2)*sqrt(log(f)))]
    @test_int [(d + e*x)^2*f^(a + b*x + c*x^2), x, 6, -((e^2*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*c^(3/2)*log(f)^(3/2))) + (e*(2*c*d - b*e)*f^(a + b*x + c*x^2))/(4*c^2*log(f)) + (e*f^(a + b*x + c*x^2)*(d + e*x))/(2*c*log(f)) + ((2*c*d - b*e)^2*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(8*c^(5/2)*sqrt(log(f)))]
    @test_int [(d + e*x)*f^(a + b*x + c*x^2), x, 3, (e*f^(a + b*x + c*x^2))/(2*c*log(f)) + ((2*c*d - b*e)*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*c^(3/2)*sqrt(log(f)))]
    @test_int [f^(a + b*x + c*x^2)/(d + e*x), x, 0, Unintegrable(f^(a + b*x + c*x^2)/(d + e*x), x)]
    @test_int [f^(a + b*x + c*x^2)/(d + e*x)^2, x, 3, -(f^(a + b*x + c*x^2)/(e*(d + e*x))) + (sqrt(c)*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c)))*sqrt(log(f)))/e^2 - ((2*c*d - b*e)*Unintegrable(f^(a + b*x + c*x^2)/(d + e*x), x)*log(f))/e^2]
    @test_int [f^(a + b*x + c*x^2)/(d + e*x)^3, x, 4, -(f^(a + b*x + c*x^2)/(2*e*(d + e*x)^2)) + ((2*c*d - b*e)*f^(a + b*x + c*x^2)*log(f))/(2*e^3*(d + e*x)) + (c*Unintegrable(f^(a + b*x + c*x^2)/(d + e*x), x)*log(f))/e^2 - (sqrt(c)*(2*c*d - b*e)*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c)))*log(f)^(3/2))/(2*e^4) + ((2*c*d - b*e)^2*Unintegrable(f^(a + b*x + c*x^2)/(d + e*x), x)*log(f)^2)/(2*e^4)]


    @test_int [(b + 2*c*x)^3*f^(a + b*x + c*x^2), x, 2, -((4*c*f^(a + b*x + c*x^2))/log(f)^2) + (f^(a + b*x + c*x^2)*(b + 2*c*x)^2)/log(f)]
    @test_int [(b + 2*c*x)^2*f^(a + b*x + c*x^2), x, 3, -((sqrt(c)*f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/log(f)^(3/2)) + (f^(a + b*x + c*x^2)*(b + 2*c*x))/log(f)]
    @test_int [(b + 2*c*x)*f^(a + b*x + c*x^2), x, 1, f^(a + b*x + c*x^2)/log(f)]
    @test_int [f^(a + b*x + c*x^2)/(b + 2*c*x), x, 1, (f^(a - b^2/(4*c))*ExpIntegralEi(((b + 2*c*x)^2*log(f))/(4*c)))/(4*c)]
    @test_int [f^(a + b*x + c*x^2)/(b + 2*c*x)^2, x, 3, -(f^(a + b*x + c*x^2)/(2*c*(b + 2*c*x))) + (f^(a - b^2/(4*c))*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c)))*sqrt(log(f)))/(4*c^(3/2))]
    @test_int [f^(a + b*x + c*x^2)/(b + 2*c*x)^3, x, 2, -(f^(a + b*x + c*x^2)/(4*c*(b + 2*c*x)^2)) + (f^(a - b^2/(4*c))*ExpIntegralEi(((b + 2*c*x)^2*log(f))/(4*c))*log(f))/(16*c^2)]


    @test_int [(b + 2*c*x)^3*f^(b*x + c*x^2), x, 2, -((4*c*f^(b*x + c*x^2))/log(f)^2) + (f^(b*x + c*x^2)*(b + 2*c*x)^2)/log(f)]
    @test_int [(b + 2*c*x)^2*f^(b*x + c*x^2), x, 3, -((sqrt(c)*sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(f^(b^2/(4*c))*log(f)^(3/2))) + (f^(b*x + c*x^2)*(b + 2*c*x))/log(f)]
    @test_int [(b + 2*c*x)*f^(b*x + c*x^2), x, 1, f^(b*x + c*x^2)/log(f)]
    @test_int [f^(b*x + c*x^2)/(b + 2*c*x), x, 1, ExpIntegralEi(((b + 2*c*x)^2*log(f))/(4*c))/(f^(b^2/(4*c))*(4*c))]
    @test_int [f^(b*x + c*x^2)/(b + 2*c*x)^2, x, 3, -(f^(b*x + c*x^2)/(2*c*(b + 2*c*x))) + (sqrt(pi)*erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c)))*sqrt(log(f)))/(f^(b^2/(4*c))*(4*c^(3/2)))]
    @test_int [f^(b*x + c*x^2)/(b + 2*c*x)^3, x, 2, -(f^(b*x + c*x^2)/(4*c*(b + 2*c*x)^2)) + (ExpIntegralEi(((b + 2*c*x)^2*log(f))/(4*c))*log(f))/(f^(b^2/(4*c))*(16*c^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(d+e*x)^n*(a+b*x+c*x^2)^p=#


    @test_int [ℯ^(a + b*x)/(x^2*(c + d*x^2)), x, 8, -(ℯ^(a + b*x)/(c*x)) + (b*ℯ^a*ExpIntegralEi(b*x))/c + (sqrt(d)*ℯ^(a + (b*sqrt(-c))/sqrt(d))*ExpIntegralEi(-((b*(sqrt(-c) - sqrt(d)*x))/sqrt(d))))/(2*(-c)^(3/2)) - (sqrt(d)*ℯ^(a - (b*sqrt(-c))/sqrt(d))*ExpIntegralEi((b*(sqrt(-c) + sqrt(d)*x))/sqrt(d)))/(2*(-c)^(3/2))]
    @test_int [ℯ^(a + b*x)/(x^1*(c + d*x^2)), x, 7, (ℯ^a*ExpIntegralEi(b*x))/c - (ℯ^(a + (b*sqrt(-c))/sqrt(d))*ExpIntegralEi(-((b*(sqrt(-c) - sqrt(d)*x))/sqrt(d))))/(2*c) - (ℯ^(a - (b*sqrt(-c))/sqrt(d))*ExpIntegralEi((b*(sqrt(-c) + sqrt(d)*x))/sqrt(d)))/(2*c)]
    @test_int [x^0*ℯ^(a + b*x)/(c + d*x^2), x, 4, (ℯ^(a + (b*sqrt(-c))/sqrt(d))*ExpIntegralEi(-((b*(sqrt(-c) - sqrt(d)*x))/sqrt(d))))/(2*sqrt(-c)*sqrt(d)) - (ℯ^(a - (b*sqrt(-c))/sqrt(d))*ExpIntegralEi((b*(sqrt(-c) + sqrt(d)*x))/sqrt(d)))/(2*sqrt(-c)*sqrt(d))]
    @test_int [x^1*ℯ^(a + b*x)/(c + d*x^2), x, 4, (ℯ^(a + (b*sqrt(-c))/sqrt(d))*ExpIntegralEi(-((b*(sqrt(-c) - sqrt(d)*x))/sqrt(d))))/(2*d) + (ℯ^(a - (b*sqrt(-c))/sqrt(d))*ExpIntegralEi((b*(sqrt(-c) + sqrt(d)*x))/sqrt(d)))/(2*d)]
    @test_int [x^2*ℯ^(a + b*x)/(c + d*x^2), x, 7, ℯ^(a + b*x)/(b*d) + (sqrt(-c)*ℯ^(a + (b*sqrt(-c))/sqrt(d))*ExpIntegralEi(-((b*(sqrt(-c) - sqrt(d)*x))/sqrt(d))))/(2*d^(3/2)) - (sqrt(-c)*ℯ^(a - (b*sqrt(-c))/sqrt(d))*ExpIntegralEi((b*(sqrt(-c) + sqrt(d)*x))/sqrt(d)))/(2*d^(3/2))]


    @test_int [ℯ^(d + e*x)/(x^2*(a + b*x + c*x^2)), x, 9, -(ℯ^(d + e*x)/(a*x)) - (b*ℯ^d*ExpIntegralEi(e*x))/a^2 + (e*ℯ^d*ExpIntegralEi(e*x))/a + ((b + (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b - sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*a^2) + ((b - (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b + sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*a^2)]
    @test_int [ℯ^(d + e*x)/(x^1*(a + b*x + c*x^2)), x, 7, (ℯ^d*ExpIntegralEi(e*x))/a - ((1 + b/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b - sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*a) - ((1 - b/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b + sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*a)]
    @test_int [x^0*ℯ^(d + e*x)/(a + b*x + c*x^2), x, 4, (ℯ^(d - ((b - sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/sqrt(b^2 - 4*a*c) - (ℯ^(d - ((b + sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/sqrt(b^2 - 4*a*c)]
    @test_int [x^1*ℯ^(d + e*x)/(a + b*x + c*x^2), x, 4, ((1 - b/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b - sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*c) + ((1 + b/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b + sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*c)]
    @test_int [x^2*ℯ^(d + e*x)/(a + b*x + c*x^2), x, 7, ℯ^(d + e*x)/(c*e) - ((b - (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b - sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*c^2) - ((b + (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b + sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*c^2)]
    @test_int [x^3*ℯ^(d + e*x)/(a + b*x + c*x^2), x, 9, -(ℯ^(d + e*x)/(c*e^2)) - (b*ℯ^(d + e*x))/(c^2*e) + (ℯ^(d + e*x)*x)/(c*e) + ((b^2 - a*c - (b*(b^2 - 3*a*c))/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b - sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*c^3) + ((b^2 - a*c + (b*(b^2 - 3*a*c))/sqrt(b^2 - 4*a*c))*ℯ^(d - ((b + sqrt(b^2 - 4*a*c))*e)/(2*c))*ExpIntegralEi((e*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c)))/(2*c^3)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*f^x / (a+b*g^x)=#


    @test_int [4^x/(a + b*2^x), x, 3, 2^x/(b*log(2)) - (a*log(a + 2^x*b))/(b^2*log(2))]
    @test_int [2^(2*x)/(a + b*2^x), x, 3, 2^x/(b*log(2)) - (a*log(a + 2^x*b))/(b^2*log(2))]

    @test_int [4^x/(a - b*2^x), x, 3, -(2^x/(b*log(2))) - (a*log(a - 2^x*b))/(b^2*log(2))]
    @test_int [2^(2*x)/(a - b*2^x), x, 3, -(2^x/(b*log(2))) - (a*log(a - 2^x*b))/(b^2*log(2))]


    @test_int [4^x/(a + b/2^x), x, 3, (b^2*x)/a^3 + 2^(-1 + 2*x)/(a*log(2)) - (2^x*b)/(a^2*log(2)) + (b^2*log(a + b/2^x))/(a^3*log(2))]
    @test_int [2^(2*x)/(a + b/2^x), x, 3, (b^2*x)/a^3 + 2^(-1 + 2*x)/(a*log(2)) - (2^x*b)/(a^2*log(2)) + (b^2*log(a + b/2^x))/(a^3*log(2))]

    @test_int [4^x/(a - b/2^x), x, 3, (b^2*x)/a^3 + 2^(-1 + 2*x)/(a*log(2)) + (2^x*b)/(a^2*log(2)) + (b^2*log(a - b/2^x))/(a^3*log(2))]
    @test_int [2^(2*x)/(a - b/2^x), x, 3, (b^2*x)/a^3 + 2^(-1 + 2*x)/(a*log(2)) + (2^x*b)/(a^2*log(2)) + (b^2*log(a - b/2^x))/(a^3*log(2))]


    @test_int [2^x/(a + b*4^x), x, 2, atan((2^x*sqrt(b))/sqrt(a))/(sqrt(a)*sqrt(b)*log(2))]
    @test_int [2^x/(a + b*2^(2*x)), x, 2, atan((2^x*sqrt(b))/sqrt(a))/(sqrt(a)*sqrt(b)*log(2))]

    @test_int [2^x/(a - b*4^x), x, 2, atanh((2^x*sqrt(b))/sqrt(a))/(sqrt(a)*sqrt(b)*log(2))]
    @test_int [2^x/(a - b*2^(2*x)), x, 2, atanh((2^x*sqrt(b))/sqrt(a))/(sqrt(a)*sqrt(b)*log(2))]


    @test_int [2^x/(a + b/4^x), x, 4, 2^x/(a*log(2)) - (sqrt(b)*atan((2^x*sqrt(a))/sqrt(b)))/(a^(3/2)*log(2))]
    @test_int [2^x/(a + b/2^(2*x)), x, 4, 2^x/(a*log(2)) - (sqrt(b)*atan((2^x*sqrt(a))/sqrt(b)))/(a^(3/2)*log(2))]

    @test_int [2^x/(a - b/4^x), x, 4, 2^x/(a*log(2)) - (sqrt(b)*atanh((2^x*sqrt(a))/sqrt(b)))/(a^(3/2)*log(2))]
    @test_int [2^x/(a - b/2^(2*x)), x, 4, 2^x/(a*log(2)) - (sqrt(b)*atanh((2^x*sqrt(a))/sqrt(b)))/(a^(3/2)*log(2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*f^x / sqrt(a+b*g^x)=#


    #= Contributed*by*Robert*Israel*in*sci.math.symbolic =#
    @test_int [2^x/sqrt(a + b*4^x), x, 3, atanh((2^x*sqrt(b))/sqrt(a + 4^x*b))/(sqrt(b)*log(2))]
    @test_int [2^x/sqrt(a + b*2^(2*x)), x, 3, atanh((2^x*sqrt(b))/sqrt(a + 4^x*b))/(sqrt(b)*log(2))]

    @test_int [2^x/sqrt(a - b*4^x), x, 3, atan((2^x*sqrt(b))/sqrt(a - 4^x*b))/(sqrt(b)*log(2))]
    @test_int [2^x/sqrt(a - b*2^(2*x)), x, 3, atan((2^x*sqrt(b))/sqrt(a - 4^x*b))/(sqrt(b)*log(2))]


    @test_int [2^x/sqrt(a + b/4^x), x, 2, (2^x*sqrt(a + b/2^(2*x)))/(a*log(2))]
    @test_int [2^x/sqrt(a + b/2^(2*x)), x, 2, (2^x*sqrt(a + b/2^(2*x)))/(a*log(2))]

    @test_int [2^x/sqrt(a - b/4^x), x, 2, (2^x*sqrt(a - b/2^(2*x)))/(a*log(2))]
    @test_int [2^x/sqrt(a - b/2^(2*x)), x, 2, (2^x*sqrt(a - b/2^(2*x)))/(a*log(2))]


    @test_int [4^x/sqrt(a + b*2^x), x, 3, -((2*a*sqrt(a + 2^x*b))/(b^2*log(2))) + (2*(a + 2^x*b)^(3/2))/(3*b^2*log(2))]
    @test_int [2^(2*x)/sqrt(a + b*2^x), x, 3, -((2*a*sqrt(a + 2^x*b))/(b^2*log(2))) + (2*(a + 2^x*b)^(3/2))/(3*b^2*log(2))]

    @test_int [4^x/sqrt(a - b*2^x), x, 3, -((2*a*sqrt(a - 2^x*b))/(b^2*log(2))) + (2*(a - 2^x*b)^(3/2))/(3*b^2*log(2))]
    @test_int [2^(2*x)/sqrt(a - b*2^x), x, 3, -((2*a*sqrt(a - 2^x*b))/(b^2*log(2))) + (2*(a - 2^x*b)^(3/2))/(3*b^2*log(2))]


    @test_int [4^x/sqrt(a + b/2^x), x, 5, (2^(-1 + 2*x)*sqrt(a + b/2^x))/(a*log(2)) - (3*2^(-2 + x)*b*sqrt(a + b/2^x))/(a^2*log(2)) + (3*b^2*atanh(sqrt(a + b/2^x)/sqrt(a)))/(4*a^(5/2)*log(2))]
    @test_int [2^(2*x)/sqrt(a + b/2^x), x, 5, (2^(-1 + 2*x)*sqrt(a + b/2^x))/(a*log(2)) - (3*2^(-2 + x)*b*sqrt(a + b/2^x))/(a^2*log(2)) + (3*b^2*atanh(sqrt(a + b/2^x)/sqrt(a)))/(4*a^(5/2)*log(2))]

    @test_int [4^x/sqrt(a - b/2^x), x, 5, (2^(-1 + 2*x)*sqrt(a - b/2^x))/(a*log(2)) + (3*2^(-2 + x)*b*sqrt(a - b/2^x))/(a^2*log(2)) + (3*b^2*atanh(sqrt(a - b/2^x)/sqrt(a)))/(4*a^(5/2)*log(2))]
    @test_int [2^(2*x)/sqrt(a - b/2^x), x, 5, (2^(-1 + 2*x)*sqrt(a - b/2^x))/(a*log(2)) + (3*2^(-2 + x)*b*sqrt(a - b/2^x))/(a^2*log(2)) + (3*b^2*atanh(sqrt(a - b/2^x)/sqrt(a)))/(4*a^(5/2)*log(2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*f^(d+e*x)+c*f^(2*(d+e*x)))^n=#


    @test_int [1/(1 + 2*ℯ^x + ℯ^(2*x)), x, 3, 1/(1 + ℯ^x) + x - log(1 + ℯ^x)]
    @test_int [1/(2 + 3*ℯ^x + ℯ^(2*x)), x, 6, x/2 - log(1 + ℯ^x) + (1/2)*log(2 + ℯ^x)]
    @test_int [1/(-1 + ℯ^x + ℯ^(2*x)), x, 6, -x + (1/10)*(5 + sqrt(5))*log(1 - sqrt(5) + 2*ℯ^x) + (1/10)*(5 - sqrt(5))*log(1 + sqrt(5) + 2*ℯ^x)]
    @test_int [1/(3 + 3*ℯ^x + ℯ^(2*x)), x, 7, x/3 - atan((3 + 2*ℯ^x)/sqrt(3))/sqrt(3) - (1/6)*log(3 + 3*ℯ^x + ℯ^(2*x))]
    @test_int [1/(a + b*ℯ^x + c*ℯ^(2*x)), x, 7, x/a + (b*atanh((b + 2*c*ℯ^x)/sqrt(b^2 - 4*a*c)))/(a*sqrt(b^2 - 4*a*c)) - log(a + b*ℯ^x + c*ℯ^(2*x))/(2*a)]

    @test_int [x/(1 + 2*ℯ^x + ℯ^(2*x)), x, 11, -x + x/(1 + ℯ^x) + x^2/2 + log(1 + ℯ^x) - x*log(1 + ℯ^x) - PolyLog(2, -ℯ^x)]
    @test_int [x/(2 + 3*ℯ^x + ℯ^(2*x)), x, 9, x^2/4 + (1/2)*x*log(1 + ℯ^x/2) - x*log(1 + ℯ^x) - PolyLog(2, -ℯ^x) + (1/2)*PolyLog(2, -(ℯ^x/2))]
    @test_int [x/(-1 + ℯ^x + ℯ^(2*x)), x, 9, x^2/(sqrt(5)*(1 - sqrt(5))) - x^2/(sqrt(5)*(1 + sqrt(5))) - (2*x*log(1 + (2*ℯ^x)/(1 - sqrt(5))))/(sqrt(5)*(1 - sqrt(5))) + (2*x*log(1 + (2*ℯ^x)/(1 + sqrt(5))))/(sqrt(5)*(1 + sqrt(5))) - (2*PolyLog(2, -((2*ℯ^x)/(1 - sqrt(5)))))/(sqrt(5)*(1 - sqrt(5))) + (2*PolyLog(2, -((2*ℯ^x)/(1 + sqrt(5)))))/(sqrt(5)*(1 + sqrt(5)))]
    @test_int [x/(3 + 3*ℯ^x + ℯ^(2*x)), x, 9, -(x^2/(sqrt(3)*(3*im - sqrt(3)))) + x^2/(sqrt(3)*(3*im + sqrt(3))) - (2*x*log(1 + (2*ℯ^x)/(3 - im*sqrt(3))))/(sqrt(3)*(3*im + sqrt(3))) + (2*x*log(1 + (2*ℯ^x)/(3 + im*sqrt(3))))/(sqrt(3)*(3*im - sqrt(3))) - (2*PolyLog(2, -((2*ℯ^x)/(3 - im*sqrt(3)))))/(sqrt(3)*(3*im + sqrt(3))) + (2*PolyLog(2, -((2*ℯ^x)/(3 + im*sqrt(3)))))/(sqrt(3)*(3*im - sqrt(3)))]
    @test_int [x/(a + b*ℯ^x + c*ℯ^(2*x)), x, 9, -((c*x^2)/(b^2 - 4*a*c - b*sqrt(b^2 - 4*a*c))) - (c*x^2)/(b^2 - 4*a*c + b*sqrt(b^2 - 4*a*c)) + (2*c*x*log(1 + (2*c*ℯ^x)/(b - sqrt(b^2 - 4*a*c))))/(b^2 - 4*a*c - b*sqrt(b^2 - 4*a*c)) + (2*c*x*log(1 + (2*c*ℯ^x)/(b + sqrt(b^2 - 4*a*c))))/(b^2 - 4*a*c + b*sqrt(b^2 - 4*a*c)) + (2*c*PolyLog(2, -((2*c*ℯ^x)/(b - sqrt(b^2 - 4*a*c)))))/(b^2 - 4*a*c - b*sqrt(b^2 - 4*a*c)) + (2*c*PolyLog(2, -((2*c*ℯ^x)/(b + sqrt(b^2 - 4*a*c)))))/(b^2 - 4*a*c + b*sqrt(b^2 - 4*a*c))]

    @test_int [x^2/(1 + 2*ℯ^x + ℯ^(2*x)), x, 12, -x^2 + x^2/(1 + ℯ^x) + x^3/3 + 2*x*log(1 + ℯ^x) - x^2*log(1 + ℯ^x) + 2*PolyLog(2, -ℯ^x) - 2*x*PolyLog(2, -ℯ^x) + 2*PolyLog(3, -ℯ^x)]
    @test_int [x^2/(2 + 3*ℯ^x + ℯ^(2*x)), x, 11, x^3/6 + (1/2)*x^2*log(1 + ℯ^x/2) - x^2*log(1 + ℯ^x) - 2*x*PolyLog(2, -ℯ^x) + x*PolyLog(2, -(ℯ^x/2)) + 2*PolyLog(3, -ℯ^x) - PolyLog(3, -(ℯ^x/2))]
    @test_int [x^2/(-1 + ℯ^x + ℯ^(2*x)), x, 11, (2*x^3)/(3*sqrt(5)*(1 - sqrt(5))) - (2*x^3)/(3*sqrt(5)*(1 + sqrt(5))) - (2*x^2*log(1 + (2*ℯ^x)/(1 - sqrt(5))))/(sqrt(5)*(1 - sqrt(5))) + (2*x^2*log(1 + (2*ℯ^x)/(1 + sqrt(5))))/(sqrt(5)*(1 + sqrt(5))) - (4*x*PolyLog(2, -((2*ℯ^x)/(1 - sqrt(5)))))/(sqrt(5)*(1 - sqrt(5))) + (4*x*PolyLog(2, -((2*ℯ^x)/(1 + sqrt(5)))))/(sqrt(5)*(1 + sqrt(5))) + (4*PolyLog(3, -((2*ℯ^x)/(1 - sqrt(5)))))/(sqrt(5)*(1 - sqrt(5))) - (4*PolyLog(3, -((2*ℯ^x)/(1 + sqrt(5)))))/(sqrt(5)*(1 + sqrt(5)))]
    @test_int [x^2/(3 + 3*ℯ^x + ℯ^(2*x)), x, 11, -((2*x^3)/(3*sqrt(3)*(3*im - sqrt(3)))) + (2*x^3)/(3*sqrt(3)*(3*im + sqrt(3))) - (2*x^2*log(1 + (2*ℯ^x)/(3 - im*sqrt(3))))/(sqrt(3)*(3*im + sqrt(3))) + (2*x^2*log(1 + (2*ℯ^x)/(3 + im*sqrt(3))))/(sqrt(3)*(3*im - sqrt(3))) - (4*x*PolyLog(2, -((2*ℯ^x)/(3 - im*sqrt(3)))))/(sqrt(3)*(3*im + sqrt(3))) + (4*x*PolyLog(2, -((2*ℯ^x)/(3 + im*sqrt(3)))))/(sqrt(3)*(3*im - sqrt(3))) + (4*PolyLog(3, -((2*ℯ^x)/(3 - im*sqrt(3)))))/(sqrt(3)*(3*im + sqrt(3))) - (4*PolyLog(3, -((2*ℯ^x)/(3 + im*sqrt(3)))))/(sqrt(3)*(3*im - sqrt(3)))]
    @test_int [x^2/(a + b*ℯ^x + c*ℯ^(2*x)), x, 11, -((2*c*x^3)/(3*(b^2 - 4*a*c - b*sqrt(b^2 - 4*a*c)))) - (2*c*x^3)/(3*(b^2 - 4*a*c + b*sqrt(b^2 - 4*a*c))) + (2*c*x^2*log(1 + (2*c*ℯ^x)/(b - sqrt(b^2 - 4*a*c))))/(b^2 - 4*a*c - b*sqrt(b^2 - 4*a*c)) + (2*c*x^2*log(1 + (2*c*ℯ^x)/(b + sqrt(b^2 - 4*a*c))))/(b^2 - 4*a*c + b*sqrt(b^2 - 4*a*c)) + (4*c*x*PolyLog(2, -((2*c*ℯ^x)/(b - sqrt(b^2 - 4*a*c)))))/(b^2 - 4*a*c - b*sqrt(b^2 - 4*a*c)) + (4*c*x*PolyLog(2, -((2*c*ℯ^x)/(b + sqrt(b^2 - 4*a*c)))))/(b^2 - 4*a*c + b*sqrt(b^2 - 4*a*c)) - (4*c*PolyLog(3, -((2*c*ℯ^x)/(b - sqrt(b^2 - 4*a*c)))))/(b^2 - 4*a*c - b*sqrt(b^2 - 4*a*c)) - (4*c*PolyLog(3, -((2*c*ℯ^x)/(b + sqrt(b^2 - 4*a*c)))))/(b^2 - 4*a*c + b*sqrt(b^2 - 4*a*c))]


    @test_int [1/(1 + 2*f^(c + d*x) + f^(2*c + 2*d*x)), x, 3, x + 1/(d*(1 + f^(c + d*x))*log(f)) - log(1 + f^(c + d*x))/(d*log(f))]
    @test_int [1/(a + b*f^(c + d*x) + c*f^(2*c + 2*d*x)), x, 7, x/a + (b*atanh((b + 2*c*f^(c + d*x))/sqrt(b^2 - 4*a*c)))/(a*sqrt(b^2 - 4*a*c)*d*log(f)) - log(a + b*f^(c + d*x) + c*f^(2*c + 2*d*x))/(2*a*d*log(f))]
    @test_int [1/(a + b*f^(g + h*x) + c*f^(2*(g + h*x))), x, 7, x/a + (b*atanh((b + 2*c*f^(g + h*x))/sqrt(b^2 - 4*a*c)))/(a*sqrt(b^2 - 4*a*c)*h*log(f)) - log(a + b*f^(g + h*x) + c*f^(2*g + 2*h*x))/(2*a*h*log(f))]

    @test_int [x/(1 + 2*f^(c + d*x) + f^(2*c + 2*d*x)), x, 11, x^2/2 - x/(d*log(f)) + x/(d*(1 + f^(c + d*x))*log(f)) + log(1 + f^(c + d*x))/(d^2*log(f)^2) - (x*log(1 + f^(c + d*x)))/(d*log(f)) - PolyLog(2, -f^(c + d*x))/(d^2*log(f)^2)]
    @test_int [x/(a + b*f^(c + d*x) + c*f^(2*c + 2*d*x)), x, 9, -((c*x^2)/(b^2 - 4*a*c - b*sqrt(b^2 - 4*a*c))) - (c*x^2)/(b^2 - 4*a*c + b*sqrt(b^2 - 4*a*c)) - (2*c*x*log(1 + (2*c*f^(c + d*x))/(b - sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*(b - sqrt(b^2 - 4*a*c))*d*log(f)) + (2*c*x*log(1 + (2*c*f^(c + d*x))/(b + sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*(b + sqrt(b^2 - 4*a*c))*d*log(f)) - (2*c*PolyLog(2, -((2*c*f^(c + d*x))/(b - sqrt(b^2 - 4*a*c)))))/(sqrt(b^2 - 4*a*c)*(b - sqrt(b^2 - 4*a*c))*d^2*log(f)^2) + (2*c*PolyLog(2, -((2*c*f^(c + d*x))/(b + sqrt(b^2 - 4*a*c)))))/(sqrt(b^2 - 4*a*c)*(b + sqrt(b^2 - 4*a*c))*d^2*log(f)^2)]

    @test_int [x^2/(1 + 2*f^(c + d*x) + f^(2*c + 2*d*x)), x, 12, x^3/3 - x^2/(d*log(f)) + x^2/(d*(1 + f^(c + d*x))*log(f)) + (2*x*log(1 + f^(c + d*x)))/(d^2*log(f)^2) - (x^2*log(1 + f^(c + d*x)))/(d*log(f)) + (2*PolyLog(2, -f^(c + d*x)))/(d^3*log(f)^3) - (2*x*PolyLog(2, -f^(c + d*x)))/(d^2*log(f)^2) + (2*PolyLog(3, -f^(c + d*x)))/(d^3*log(f)^3)]
    @test_int [x^2/(a + b*f^(c + d*x) + c*f^(2*c + 2*d*x)), x, 11, -((2*c*x^3)/(3*(b^2 - 4*a*c - b*sqrt(b^2 - 4*a*c)))) - (2*c*x^3)/(3*(b^2 - 4*a*c + b*sqrt(b^2 - 4*a*c))) - (2*c*x^2*log(1 + (2*c*f^(c + d*x))/(b - sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*(b - sqrt(b^2 - 4*a*c))*d*log(f)) + (2*c*x^2*log(1 + (2*c*f^(c + d*x))/(b + sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*(b + sqrt(b^2 - 4*a*c))*d*log(f)) - (4*c*x*PolyLog(2, -((2*c*f^(c + d*x))/(b - sqrt(b^2 - 4*a*c)))))/(sqrt(b^2 - 4*a*c)*(b - sqrt(b^2 - 4*a*c))*d^2*log(f)^2) + (4*c*x*PolyLog(2, -((2*c*f^(c + d*x))/(b + sqrt(b^2 - 4*a*c)))))/(sqrt(b^2 - 4*a*c)*(b + sqrt(b^2 - 4*a*c))*d^2*log(f)^2) + (4*c*PolyLog(3, -((2*c*f^(c + d*x))/(b - sqrt(b^2 - 4*a*c)))))/(sqrt(b^2 - 4*a*c)*(b - sqrt(b^2 - 4*a*c))*d^3*log(f)^3) - (4*c*PolyLog(3, -((2*c*f^(c + d*x))/(b + sqrt(b^2 - 4*a*c)))))/(sqrt(b^2 - 4*a*c)*(b + sqrt(b^2 - 4*a*c))*d^3*log(f)^3)]


    @test_int [(d + e*f^(g + h*x))/(a + b*f^(g + h*x) + c*f^(2*g + 2*h*x)), x, 7, (d*x)/a + ((b*d - 2*a*e)*atanh((b + 2*c*f^(g + h*x))/sqrt(b^2 - 4*a*c)))/(a*sqrt(b^2 - 4*a*c)*h*log(f)) - (d*log(a + b*f^(g + h*x) + c*f^(2*g + 2*h*x)))/(2*a*h*log(f))]
    @test_int [(d + e*f^(g + h*x))/(a + b*f^(g + h*x) + c*f^(2*(g + h*x))), x, 7, (d*x)/a + ((b*d - 2*a*e)*atanh((b + 2*c*f^(g + h*x))/sqrt(b^2 - 4*a*c)))/(a*sqrt(b^2 - 4*a*c)*h*log(f)) - (d*log(a + b*f^(g + h*x) + c*f^(2*g + 2*h*x)))/(2*a*h*log(f))]


    @test_int [1/(2 + ℯ^(-x) + ℯ^x), x, 2, -(1/(1 + ℯ^x))]
    @test_int [x/(2 + ℯ^(-x) + ℯ^x), x, 7, x - x/(1 + ℯ^x) - log(1 + ℯ^x)]
    @test_int [x^2/(2 + ℯ^(-x) + ℯ^x), x, 7, x^2 - x^2/(1 + ℯ^x) - 2*x*log(1 + ℯ^x) - 2*PolyLog(2, -ℯ^x)]

    @test_int [1/(2 + f^(-c - d*x) + f^(c + d*x)), x, 2, -(1/(d*(1 + f^(c + d*x))*log(f)))]
    @test_int [x/(2 + f^(-c - d*x) + f^(c + d*x)), x, 7, x/(d*log(f)) - x/(d*(1 + f^(c + d*x))*log(f)) - log(1 + f^(c + d*x))/(d^2*log(f)^2)]
    @test_int [x^2/(2 + f^(-c - d*x) + f^(c + d*x)), x, 7, x^2/(d*log(f)) - x^2/(d*(1 + f^(c + d*x))*log(f)) - (2*x*log(1 + f^(c + d*x)))/(d^2*log(f)^2) - (2*PolyLog(2, -f^(c + d*x)))/(d^3*log(f)^3)]


    @test_int [1/(2 + 3^(-x) + 3^x), x, 2, -(1/((1 + 3^x)*log(3)))]
    @test_int [1/(1 - ℯ^(-x) + 2*ℯ^x), x, 4, (1/3)*log(1 - 2*ℯ^x) - (1/3)*log(1 + ℯ^x)]

    @test_int [1/(a + b*ℯ^(-x) + c*ℯ^x), x, 4, -((2*atanh((a + 2*c*ℯ^x)/sqrt(a^2 - 4*b*c)))/sqrt(a^2 - 4*b*c))]
    @test_int [x/(a + b*ℯ^(-x) + c*ℯ^x), x, 8, (x*log(1 + (2*c*ℯ^x)/(a - sqrt(a^2 - 4*b*c))))/sqrt(a^2 - 4*b*c) - (x*log(1 + (2*c*ℯ^x)/(a + sqrt(a^2 - 4*b*c))))/sqrt(a^2 - 4*b*c) + PolyLog(2, -((2*c*ℯ^x)/(a - sqrt(a^2 - 4*b*c))))/sqrt(a^2 - 4*b*c) - PolyLog(2, -((2*c*ℯ^x)/(a + sqrt(a^2 - 4*b*c))))/sqrt(a^2 - 4*b*c)]
    @test_int [x^2/(a + b*ℯ^(-x) + c*ℯ^x), x, 10, (x^2*log(1 + (2*c*ℯ^x)/(a - sqrt(a^2 - 4*b*c))))/sqrt(a^2 - 4*b*c) - (x^2*log(1 + (2*c*ℯ^x)/(a + sqrt(a^2 - 4*b*c))))/sqrt(a^2 - 4*b*c) + (2*x*PolyLog(2, -((2*c*ℯ^x)/(a - sqrt(a^2 - 4*b*c)))))/sqrt(a^2 - 4*b*c) - (2*x*PolyLog(2, -((2*c*ℯ^x)/(a + sqrt(a^2 - 4*b*c)))))/sqrt(a^2 - 4*b*c) - (2*PolyLog(3, -((2*c*ℯ^x)/(a - sqrt(a^2 - 4*b*c)))))/sqrt(a^2 - 4*b*c) + (2*PolyLog(3, -((2*c*ℯ^x)/(a + sqrt(a^2 - 4*b*c)))))/sqrt(a^2 - 4*b*c)]

    @test_int [1/(a + b*f^(-c - d*x) + c*f^(c + d*x)), x, 4, -((2*atanh((a + 2*c*f^(c + d*x))/sqrt(a^2 - 4*b*c)))/(sqrt(a^2 - 4*b*c)*d*log(f)))]
    @test_int [x/(a + b*f^(-c - d*x) + c*f^(c + d*x)), x, 8, (x*log(1 + (2*c*f^(c + d*x))/(a - sqrt(a^2 - 4*b*c))))/(sqrt(a^2 - 4*b*c)*d*log(f)) - (x*log(1 + (2*c*f^(c + d*x))/(a + sqrt(a^2 - 4*b*c))))/(sqrt(a^2 - 4*b*c)*d*log(f)) + PolyLog(2, -((2*c*f^(c + d*x))/(a - sqrt(a^2 - 4*b*c))))/(sqrt(a^2 - 4*b*c)*d^2*log(f)^2) - PolyLog(2, -((2*c*f^(c + d*x))/(a + sqrt(a^2 - 4*b*c))))/(sqrt(a^2 - 4*b*c)*d^2*log(f)^2)]
    @test_int [x^2/(a + b*f^(-c - d*x) + c*f^(c + d*x)), x, 10, (x^2*log(1 + (2*c*f^(c + d*x))/(a - sqrt(a^2 - 4*b*c))))/(sqrt(a^2 - 4*b*c)*d*log(f)) - (x^2*log(1 + (2*c*f^(c + d*x))/(a + sqrt(a^2 - 4*b*c))))/(sqrt(a^2 - 4*b*c)*d*log(f)) + (2*x*PolyLog(2, -((2*c*f^(c + d*x))/(a - sqrt(a^2 - 4*b*c)))))/(sqrt(a^2 - 4*b*c)*d^2*log(f)^2) - (2*x*PolyLog(2, -((2*c*f^(c + d*x))/(a + sqrt(a^2 - 4*b*c)))))/(sqrt(a^2 - 4*b*c)*d^2*log(f)^2) - (2*PolyLog(3, -((2*c*f^(c + d*x))/(a - sqrt(a^2 - 4*b*c)))))/(sqrt(a^2 - 4*b*c)*d^3*log(f)^3) + (2*PolyLog(3, -((2*c*f^(c + d*x))/(a + sqrt(a^2 - 4*b*c)))))/(sqrt(a^2 - 4*b*c)*d^3*log(f)^3)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u^m*(a+b*F^(c*sqrt(d+e*x)/sqrt(f+g*x)))^n=#


    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(f + g*x)))^n/(d*f + (e*f + d*g)*x + e*g*x^2), x, 0, Unintegrable((a + b*F^((c*sqrt(d + e*x))/sqrt(f + g*x)))^n/(d*f + (e*f + d*g)*x + e*g*x^2), x)]


    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(f + g*x)))^3/(d*f + (e*f + d*g)*x + e*g*x^2), x, 6, (6*a^2*b*ExpIntegralEi((c*sqrt(d + e*x)*log(F))/sqrt(f + g*x)))/(e*f - d*g) + (6*a*b^2*ExpIntegralEi((2*c*sqrt(d + e*x)*log(F))/sqrt(f + g*x)))/(e*f - d*g) + (2*b^3*ExpIntegralEi((3*c*sqrt(d + e*x)*log(F))/sqrt(f + g*x)))/(e*f - d*g) + (2*a^3*log(sqrt(d + e*x)/sqrt(f + g*x)))/(e*f - d*g)]
    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(f + g*x)))^2/(d*f + (e*f + d*g)*x + e*g*x^2), x, 5, (4*a*b*ExpIntegralEi((c*sqrt(d + e*x)*log(F))/sqrt(f + g*x)))/(e*f - d*g) + (2*b^2*ExpIntegralEi((2*c*sqrt(d + e*x)*log(F))/sqrt(f + g*x)))/(e*f - d*g) + (2*a^2*log(sqrt(d + e*x)/sqrt(f + g*x)))/(e*f - d*g)]
    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(f + g*x)))^1/(d*f + (e*f + d*g)*x + e*g*x^2), x, 4, (2*b*ExpIntegralEi((c*sqrt(d + e*x)*log(F))/sqrt(f + g*x)))/(e*f - d*g) + (2*a*log(sqrt(d + e*x)/sqrt(f + g*x)))/(e*f - d*g)]
    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(f + g*x)))^0/(d*f + (e*f + d*g)*x + e*g*x^2), x, 3, log(d + e*x)/(e*f - d*g) - log(f + g*x)/(e*f - d*g)]
    @test_int [1/((a + b*F^(c*sqrt(d + e*x)/sqrt(f + g*x)))^1*(d*f + (e*f + d*g)*x + e*g*x^2)), x, 0, Unintegrable(1/((a + b*F^((c*sqrt(d + e*x))/sqrt(f + g*x)))*(d*f + (e*f + d*g)*x + e*g*x^2)), x)]
    @test_int [1/((a + b*F^(c*sqrt(d + e*x)/sqrt(f + g*x)))^2*(d*f + (e*f + d*g)*x + e*g*x^2)), x, 0, Unintegrable(1/((a + b*F^((c*sqrt(d + e*x))/sqrt(f + g*x)))^2*(d*f + (e*f + d*g)*x + e*g*x^2)), x)]


    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(d*f - e*f*x)))^n/(d^2 - e^2*x^2), x, 0, Unintegrable((a + b*F^((c*sqrt(d + e*x))/sqrt(d*f - e*f*x)))^n/(d^2 - e^2*x^2), x)]


    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(d*f - e*f*x)))^3/(d^2 - e^2*x^2), x, 6, (3*a^2*b*ExpIntegralEi((c*sqrt(d + e*x)*log(F))/sqrt(d*f - e*f*x)))/(d*e) + (3*a*b^2*ExpIntegralEi((2*c*sqrt(d + e*x)*log(F))/sqrt(d*f - e*f*x)))/(d*e) + (b^3*ExpIntegralEi((3*c*sqrt(d + e*x)*log(F))/sqrt(d*f - e*f*x)))/(d*e) + (a^3*log(sqrt(d + e*x)/sqrt(d*f - e*f*x)))/(d*e)]
    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(d*f - e*f*x)))^2/(d^2 - e^2*x^2), x, 5, (2*a*b*ExpIntegralEi((c*sqrt(d + e*x)*log(F))/sqrt(d*f - e*f*x)))/(d*e) + (b^2*ExpIntegralEi((2*c*sqrt(d + e*x)*log(F))/sqrt(d*f - e*f*x)))/(d*e) + (a^2*log(sqrt(d + e*x)/sqrt(d*f - e*f*x)))/(d*e)]
    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(d*f - e*f*x)))^1/(d^2 - e^2*x^2), x, 4, (b*ExpIntegralEi((c*sqrt(d + e*x)*log(F))/sqrt(d*f - e*f*x)))/(d*e) + (a*log(sqrt(d + e*x)/sqrt(d*f - e*f*x)))/(d*e)]
    @test_int [(a + b*F^(c*sqrt(d + e*x)/sqrt(d*f - e*f*x)))^0/(d^2 - e^2*x^2), x, 1, atanh((e*x)/d)/(d*e)]
    @test_int [1/((a + b*F^(c*sqrt(d + e*x)/sqrt(d*f - e*f*x)))^1*(d^2 - e^2*x^2)), x, 0, Unintegrable(1/((a + b*F^((c*sqrt(d + e*x))/sqrt(d*f - e*f*x)))*(d^2 - e^2*x^2)), x)]
    @test_int [1/((a + b*F^(c*sqrt(d + e*x)/sqrt(d*f - e*f*x)))^2*(d^2 - e^2*x^2)), x, 0, Unintegrable(1/((a + b*F^((c*sqrt(d + e*x))/sqrt(d*f - e*f*x)))^2*(d^2 - e^2*x^2)), x)]


    @test_int [(F^(sqrt(1 - a*x)/sqrt(1 + a*x)))^n/(1 - a^2*x^2), x, 3, -(((F^(sqrt(1 - a*x)/sqrt(1 + a*x)))^n*ExpIntegralEi((n*sqrt(1 - a*x)*log(F))/sqrt(1 + a*x)))/(F^((n*sqrt(1 - a*x))/sqrt(1 + a*x))*a))]

    @test_int [(F^(sqrt(1 - a*x)/sqrt(1 + a*x)))^3/(1 - a^2*x^2), x, 2, -(ExpIntegralEi((3*sqrt(1 - a*x)*log(F))/sqrt(1 + a*x))/a)]
    @test_int [(F^(sqrt(1 - a*x)/sqrt(1 + a*x)))^2/(1 - a^2*x^2), x, 2, -(ExpIntegralEi((2*sqrt(1 - a*x)*log(F))/sqrt(1 + a*x))/a)]
    @test_int [(F^(sqrt(1 - a*x)/sqrt(1 + a*x)))^1/(1 - a^2*x^2), x, 2, -(ExpIntegralEi((sqrt(1 - a*x)*log(F))/sqrt(1 + a*x))/a)]
    @test_int [1/((F^(sqrt(1 - a*x)/sqrt(1 + a*x)))^1*(1 - a^2*x^2)), x, 2, -(ExpIntegralEi(-((sqrt(1 - a*x)*log(F))/sqrt(1 + a*x)))/a)]
    @test_int [1/((F^(sqrt(1 - a*x)/sqrt(1 + a*x)))^2*(1 - a^2*x^2)), x, 2, -(ExpIntegralEi(-((2*sqrt(1 - a*x)*log(F))/sqrt(1 + a*x)))/a)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(a+b*x)*G^(c+d*x)=#


    @test_int [x^2*a^x*b^x, x, 4, (2*a^x*b^x)/(log(a) + log(b))^3 - (2*a^x*b^x*x)/(log(a) + log(b))^2 + (a^x*b^x*x^2)/(log(a) + log(b))]
    @test_int [x*a^x*b^x, x, 3, -((a^x*b^x)/(log(a) + log(b))^2) + (a^x*b^x*x)/(log(a) + log(b))]
    @test_int [a^x*b^x, x, 2, (a^x*b^x)/(log(a) + log(b))]
    @test_int [a^x*b^x/x, x, 2, ExpIntegralEi(x*(log(a) + log(b)))]
    @test_int [a^x*b^x/x^2, x, 3, -((a^x*b^x)/x) + ExpIntegralEi(x*(log(a) + log(b)))*(log(a) + log(b))]
    @test_int [a^x*b^x/x^3, x, 4, -((a^x*b^x)/(2*x^2)) - (a^x*b^x*(log(a) + log(b)))/(2*x) + (1/2)*ExpIntegralEi(x*(log(a) + log(b)))*(log(a) + log(b))^2]


    @test_int [a^x*b^x*c^x, x, 3, (a^x*b^x*c^x)/(log(a) + log(b) + log(c))]
    @test_int [a^x/b^x, x, 2, a^x/(b^x*(log(a) - log(b)))]

    @test_int [(a^x*x^2)/b^x, x, 4, (2*a^x)/(b^x*(log(a) - log(b))^3) - (2*a^x*x)/(b^x*(log(a) - log(b))^2) + (a^x*x^2)/(b^x*(log(a) - log(b)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f+g*x)^m*(d+e*F^(h+i*x))*(a+b*F^(h+i*x)+c*F^(2*h+2*i*x))^n=#


    @test_int [(f + g*x)^3*(d + e*ℯ^(h + i*x))/(a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x)), x, 13, ((e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^4)/(4*(b + sqrt(b^2 - 4*a*c))*g) + ((e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^4)/(4*(b - sqrt(b^2 - 4*a*c))*g) - ((e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^3*log(1 + (2*c*ℯ^(h + i*x))/(b - sqrt(b^2 - 4*a*c))))/((b - sqrt(b^2 - 4*a*c))*i) - ((e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^3*log(1 + (2*c*ℯ^(h + i*x))/(b + sqrt(b^2 - 4*a*c))))/((b + sqrt(b^2 - 4*a*c))*i) - (3*(e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g*(f + g*x)^2*PolyLog(2, -((2*c*ℯ^(h + i*x))/(b - sqrt(b^2 - 4*a*c)))))/((b - sqrt(b^2 - 4*a*c))*i^2) - (3*(e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g*(f + g*x)^2*PolyLog(2, -((2*c*ℯ^(h + i*x))/(b + sqrt(b^2 - 4*a*c)))))/((b + sqrt(b^2 - 4*a*c))*i^2) + (6*(e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g^2*(f + g*x)*PolyLog(3, -((2*c*ℯ^(h + i*x))/(b - sqrt(b^2 - 4*a*c)))))/((b - sqrt(b^2 - 4*a*c))*i^3) + (6*(e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g^2*(f + g*x)*PolyLog(3, -((2*c*ℯ^(h + i*x))/(b + sqrt(b^2 - 4*a*c)))))/((b + sqrt(b^2 - 4*a*c))*i^3) - (6*(e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g^3*PolyLog(4, -((2*c*ℯ^(h + i*x))/(b - sqrt(b^2 - 4*a*c)))))/((b - sqrt(b^2 - 4*a*c))*i^4) - (6*(e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g^3*PolyLog(4, -((2*c*ℯ^(h + i*x))/(b + sqrt(b^2 - 4*a*c)))))/((b + sqrt(b^2 - 4*a*c))*i^4)]
    @test_int [(f + g*x)^2*(d + e*ℯ^(h + i*x))/(a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x)), x, 11, ((e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^3)/(3*(b + sqrt(b^2 - 4*a*c))*g) + ((e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^3)/(3*(b - sqrt(b^2 - 4*a*c))*g) - ((e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^2*log(1 + (2*c*ℯ^(h + i*x))/(b - sqrt(b^2 - 4*a*c))))/((b - sqrt(b^2 - 4*a*c))*i) - ((e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^2*log(1 + (2*c*ℯ^(h + i*x))/(b + sqrt(b^2 - 4*a*c))))/((b + sqrt(b^2 - 4*a*c))*i) - (2*(e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g*(f + g*x)*PolyLog(2, -((2*c*ℯ^(h + i*x))/(b - sqrt(b^2 - 4*a*c)))))/((b - sqrt(b^2 - 4*a*c))*i^2) - (2*(e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g*(f + g*x)*PolyLog(2, -((2*c*ℯ^(h + i*x))/(b + sqrt(b^2 - 4*a*c)))))/((b + sqrt(b^2 - 4*a*c))*i^2) + (2*(e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g^2*PolyLog(3, -((2*c*ℯ^(h + i*x))/(b - sqrt(b^2 - 4*a*c)))))/((b - sqrt(b^2 - 4*a*c))*i^3) + (2*(e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g^2*PolyLog(3, -((2*c*ℯ^(h + i*x))/(b + sqrt(b^2 - 4*a*c)))))/((b + sqrt(b^2 - 4*a*c))*i^3)]
    @test_int [(f + g*x)^1*(d + e*ℯ^(h + i*x))/(a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x)), x, 9, ((e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^2)/(2*(b + sqrt(b^2 - 4*a*c))*g) + ((e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)^2)/(2*(b - sqrt(b^2 - 4*a*c))*g) - ((e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)*log(1 + (2*c*ℯ^(h + i*x))/(b - sqrt(b^2 - 4*a*c))))/((b - sqrt(b^2 - 4*a*c))*i) - ((e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*(f + g*x)*log(1 + (2*c*ℯ^(h + i*x))/(b + sqrt(b^2 - 4*a*c))))/((b + sqrt(b^2 - 4*a*c))*i) - ((e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g*PolyLog(2, -((2*c*ℯ^(h + i*x))/(b - sqrt(b^2 - 4*a*c)))))/((b - sqrt(b^2 - 4*a*c))*i^2) - ((e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*g*PolyLog(2, -((2*c*ℯ^(h + i*x))/(b + sqrt(b^2 - 4*a*c)))))/((b + sqrt(b^2 - 4*a*c))*i^2)]
    @test_int [(f + g*x)^0*(d + e*ℯ^(h + i*x))/(a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x)), x, 7, (d*x)/a + ((b*d - 2*a*e)*atanh((b + 2*c*ℯ^(h + i*x))/sqrt(b^2 - 4*a*c)))/(a*sqrt(b^2 - 4*a*c)*i) - (d*log(a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x)))/(2*a*i)]
    @test_int [1/(f + g*x)^1*(d + e*ℯ^(h + i*x))/(a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x)), x, 2, d*CannotIntegrate(1/((a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x))*(f + g*x)), x) + e*CannotIntegrate(ℯ^(h + i*x)/((a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x))*(f + g*x)), x)]
    @test_int [1/(f + g*x)^2*(d + e*ℯ^(h + i*x))/(a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x)), x, 2, d*CannotIntegrate(1/((a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x))*(f + g*x)^2), x) + e*CannotIntegrate(ℯ^(h + i*x)/((a + b*ℯ^(h + i*x) + c*ℯ^(2*h + 2*i*x))*(f + g*x)^2), x)]


    @test_int [x*(b*e - a*e*ℯ^(c + d*x))/(b*e - 2*a*e*ℯ^(c + d*x) - b*e*ℯ^(2*(c + d*x))), x, 9, x^2/2 - (x*log(1 + (b*ℯ^(c + d*x))/(a - sqrt(a^2 + b^2))))/(2*d) - (x*log(1 + (b*ℯ^(c + d*x))/(a + sqrt(a^2 + b^2))))/(2*d) - PolyLog(2, -((b*ℯ^(c + d*x))/(a - sqrt(a^2 + b^2))))/(2*d^2) - PolyLog(2, -((b*ℯ^(c + d*x))/(a + sqrt(a^2 + b^2))))/(2*d^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*F^(a+b*log(c+d*x^n))=#


    @test_int [x^2*F^(a + b*log(c + d*x^n)), x, 4, ((1/3)*F^a*x^3*(c + d*x^n)^(b*log(F))*HypergeometricFunctions._₂F₁(3/n, (-b)*log(F), (3 + n)/n, -((d*x^n)/c)))/(1 + (d*x^n)/c)^(b*log(F))]
    @test_int [x^1*F^(a + b*log(c + d*x^n)), x, 4, ((1/2)*F^a*x^2*(c + d*x^n)^(b*log(F))*HypergeometricFunctions._₂F₁(2/n, (-b)*log(F), (2 + n)/n, -((d*x^n)/c)))/(1 + (d*x^n)/c)^(b*log(F))]
    @test_int [x^0*F^(a + b*log(c + d*x^n)), x, 4, (F^a*x*(c + d*x^n)^(b*log(F))*HypergeometricFunctions._₂F₁(1/n, (-b)*log(F), 1 + 1/n, -((d*x^n)/c)))/(1 + (d*x^n)/c)^(b*log(F))]
    @test_int [F^(a + b*log(c + d*x^n))/x^1, x, 4, -((F^a*(c + d*x^n)^(1 + b*log(F))*HypergeometricFunctions._₂F₁(1, 1 + b*log(F), 2 + b*log(F), 1 + (d*x^n)/c))/(c*n*(1 + b*log(F))))]
    @test_int [F^(a + b*log(c + d*x^n))/x^2, x, 4, -((F^a*(c + d*x^n)^(b*log(F))*HypergeometricFunctions._₂F₁(-(1/n), (-b)*log(F), -((1 - n)/n), -((d*x^n)/c)))/((1 + (d*x^n)/c)^(b*log(F))*x))]
    @test_int [F^(a + b*log(c + d*x^n))/x^3, x, 4, -((F^a*(c + d*x^n)^(b*log(F))*HypergeometricFunctions._₂F₁(-(2/n), (-b)*log(F), -((2 - n)/n), -((d*x^n)/c)))/((1 + (d*x^n)/c)^(b*log(F))*(2*x^2)))]


    @test_int [(d*x)^m*F^(a + b*log(c + d*x^n)), x, 4, (F^a*(d*x)^(1 + m)*(c + d*x^n)^(b*log(F))*HypergeometricFunctions._₂F₁((1 + m)/n, (-b)*log(F), (1 + m + n)/n, -((d*x^n)/c)))/((1 + (d*x^n)/c)^(b*log(F))*(d*(1 + m)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g+h*x)^m*F^(f*(a+b*log(c*(d+e*x)^n)^2))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g+h*x)^m*F^(f*(a+b*log(c*(d+e*x)^n)^2))*when*e*g-d*h=0=#


    @test_int [(d + e*x)^m*ℯ^log((d + e*x)^n)^2, x, 3, (sqrt(pi)*(d + e*x)^(1 + m)*erfi((1 + m + 2*n*log((d + e*x)^n))/(2*n)))/(ℯ^((1 + m)^2/(4*n^2))*((d + e*x)^n)^((1 + m)/n)*(2*e*n))]
    @test_int [(d*g + e*g*x)^m*F^(f*(a + b*log(c*(d + e*x)^n)^2)), x, 3, (F^(a*f)*sqrt(pi)*(d*g + e*g*x)^(1 + m)*erfi((1 + m + 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^((1 + m)^2/(4*b*f*n^2*log(F)))*(c*(d + e*x)^n)^((1 + m)/n)*(2*sqrt(b)*e*sqrt(f)*g*n*sqrt(log(F))))]


    @test_int [(d*g + e*g*x)^2*F^(f*(a + b*log(c*(d + e*x)^n)^2)), x, 3, (F^(a*f)*g^2*sqrt(pi)*(d + e*x)^3*erfi((3 + 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(9/(4*b*f*n^2*log(F)))*(c*(d + e*x)^n)^(3/n)*(2*sqrt(b)*e*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(d*g + e*g*x)^1*F^(f*(a + b*log(c*(d + e*x)^n)^2)), x, 3, (F^(a*f)*g*sqrt(pi)*(d + e*x)^2*erfi((1 + b*f*n*log(F)*log(c*(d + e*x)^n))/(sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(b*f*n^2*log(F)))*(c*(d + e*x)^n)^(2/n)*(2*sqrt(b)*e*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(d*g + e*g*x)^0*F^(f*(a + b*log(c*(d + e*x)^n)^2)), x, 3, (F^(a*f)*sqrt(pi)*(d + e*x)*erfi((1 + 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(4*b*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*sqrt(b)*e*sqrt(f)*n*sqrt(log(F))))]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n)^2))/(d*g + e*g*x)^1, x, 2, (F^(a*f)*sqrt(pi)*erfi(sqrt(b)*sqrt(f)*sqrt(log(F))*log(c*(d + e*x)^n)))/(2*sqrt(b)*e*sqrt(f)*g*n*sqrt(log(F)))]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n)^2))/(d*g + e*g*x)^2, x, 3, If(13>=8, -((F^(a*f)*sqrt(pi)*(c*(d + e*x)^n)^(1/n)*erfi((1 - 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(4*b*f*n^2*log(F)))*(2*sqrt(b)*e*sqrt(f)*g^2*n*(d + e*x)*sqrt(log(F))))), (F^(a*f)*sqrt(pi)*(c*(d + e*x)^n)^(1/n)*erfi(-((1 - 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F))))))/(ℯ^(1/(4*b*f*n^2*log(F)))*(2*sqrt(b)*e*sqrt(f)*g^2*n*(d + e*x)*sqrt(log(F)))))]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n)^2))/(d*g + e*g*x)^3, x, 3, If(13>=8, -((F^(a*f)*sqrt(pi)*(c*(d + e*x)^n)^(2/n)*erfi((1 - b*f*n*log(F)*log(c*(d + e*x)^n))/(sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(b*f*n^2*log(F)))*(2*sqrt(b)*e*sqrt(f)*g^3*n*(d + e*x)^2*sqrt(log(F))))), (F^(a*f)*sqrt(pi)*(c*(d + e*x)^n)^(2/n)*erfi(-((1 - b*f*n*log(F)*log(c*(d + e*x)^n))/(sqrt(b)*sqrt(f)*n*sqrt(log(F))))))/(ℯ^(1/(b*f*n^2*log(F)))*(2*sqrt(b)*e*sqrt(f)*g^3*n*(d + e*x)^2*sqrt(log(F)))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g+h*x)^m*F^(f*(a+b*log(c*(d+e*x)^n)^2))=#


    @test_int [(g + h*x)^m*F^(f*(a + b*log(c*(d + e*x)^n)^2)), x, 0, Unintegrable(F^(f*(a + b*log(c*(d + e*x)^n)^2))*(g + h*x)^m, x)]


    @test_int [(g + h*x)^3*F^(f*(a + b*log(c*(d + e*x)^n)^2)), x, 14, (3*F^(a*f)*h*(e*g - d*h)^2*sqrt(pi)*(d + e*x)^2*erfi((1 + b*f*n*log(F)*log(c*(d + e*x)^n))/(sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(b*f*n^2*log(F)))*(c*(d + e*x)^n)^(2/n)*(2*sqrt(b)*e^4*sqrt(f)*n*sqrt(log(F)))) + (F^(a*f)*h^3*sqrt(pi)*(d + e*x)^4*erfi((2 + b*f*n*log(F)*log(c*(d + e*x)^n))/(sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(4/(b*f*n^2*log(F)))*(c*(d + e*x)^n)^(4/n)*(2*sqrt(b)*e^4*sqrt(f)*n*sqrt(log(F)))) + (F^(a*f)*(e*g - d*h)^3*sqrt(pi)*(d + e*x)*erfi((1 + 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(4*b*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*sqrt(b)*e^4*sqrt(f)*n*sqrt(log(F)))) + (3*F^(a*f)*h^2*(e*g - d*h)*sqrt(pi)*(d + e*x)^3*erfi((3 + 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(9/(4*b*f*n^2*log(F)))*(c*(d + e*x)^n)^(3/n)*(2*sqrt(b)*e^4*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(g + h*x)^2*F^(f*(a + b*log(c*(d + e*x)^n)^2)), x, 11, (F^(a*f)*h*(e*g - d*h)*sqrt(pi)*(d + e*x)^2*erfi((1 + b*f*n*log(F)*log(c*(d + e*x)^n))/(sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(b*f*n^2*log(F)))*(c*(d + e*x)^n)^(2/n)*(sqrt(b)*e^3*sqrt(f)*n*sqrt(log(F)))) + (F^(a*f)*(e*g - d*h)^2*sqrt(pi)*(d + e*x)*erfi((1 + 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(4*b*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*sqrt(b)*e^3*sqrt(f)*n*sqrt(log(F)))) + (F^(a*f)*h^2*sqrt(pi)*(d + e*x)^3*erfi((3 + 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(9/(4*b*f*n^2*log(F)))*(c*(d + e*x)^n)^(3/n)*(2*sqrt(b)*e^3*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(g + h*x)^1*F^(f*(a + b*log(c*(d + e*x)^n)^2)), x, 8, (F^(a*f)*h*sqrt(pi)*(d + e*x)^2*erfi((1 + b*f*n*log(F)*log(c*(d + e*x)^n))/(sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(b*f*n^2*log(F)))*(c*(d + e*x)^n)^(2/n)*(2*sqrt(b)*e^2*sqrt(f)*n*sqrt(log(F)))) + (F^(a*f)*(e*g - d*h)*sqrt(pi)*(d + e*x)*erfi((1 + 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(4*b*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*sqrt(b)*e^2*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(g + h*x)^0*F^(f*(a + b*log(c*(d + e*x)^n)^2)), x, 3, (F^(a*f)*sqrt(pi)*(d + e*x)*erfi((1 + 2*b*f*n*log(F)*log(c*(d + e*x)^n))/(2*sqrt(b)*sqrt(f)*n*sqrt(log(F)))))/(ℯ^(1/(4*b*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*sqrt(b)*e*sqrt(f)*n*sqrt(log(F))))]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n)^2))/(g + h*x)^1, x, 0, Unintegrable(F^(f*(a + b*log(c*(d + e*x)^n)^2))/(g + h*x), x)]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n)^2))/(g + h*x)^2, x, 0, Unintegrable(F^(f*(a + b*log(c*(d + e*x)^n)^2))/(g + h*x)^2, x)]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n)^2))/(g + h*x)^3, x, 0, Unintegrable(F^(f*(a + b*log(c*(d + e*x)^n)^2))/(g + h*x)^3, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g+h*x)^m*F^(f*(a+b*log(c*(d+e*x)^n))^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g+h*x)^m*F^(f*(a+b*log(c*(d+e*x)^n))^2)*when*e*g-d*h=0=#


    @test_int [(d*g + e*g*x)^m*F^(f*(a + b*log(c*(d + e*x)^n))^2), x, 4, (F^(a^2*f)*sqrt(pi)*(d + e*x)*(d*g + e*g*x)^m*erfi((1 + m + 2*a*b*f*n*log(F) + 2*b^2*f*n*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*n*sqrt(log(F)))))/(ℯ^((1 + m + 2*a*b*f*n*log(F))^2/(4*b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^((1 + m)/n)*(2*b*e*sqrt(f)*n*sqrt(log(F))))]


    @test_int [(d*g + e*g*x)^2*F^(f*(a + b*log(c*(d + e*x)^n))^2), x, 4, (g^2*sqrt(pi)*(d + e*x)^3*erfi((3/n + 2*a*b*f*log(F) + 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F)))))/(ℯ^((3*(3 + 4*a*b*f*n*log(F)))/(4*b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^(3/n)*(2*b*e*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(d*g + e*g*x)^1*F^(f*(a + b*log(c*(d + e*x)^n))^2), x, 4, (g*sqrt(pi)*(d + e*x)^2*erfi((1/n + a*b*f*log(F) + b^2*f*log(F)*log(c*(d + e*x)^n))/(b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 + 2*a*b*f*n*log(F))/(b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^(2/n)*(2*b*e*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(d*g + e*g*x)^0*F^(f*(a + b*log(c*(d + e*x)^n))^2), x, 4, (sqrt(pi)*(d + e*x)*erfi((1/n + 2*a*b*f*log(F) + 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 + 4*a*b*f*n*log(F))/(4*b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*b*e*sqrt(f)*n*sqrt(log(F))))]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n))^2)/(d*g + e*g*x)^1, x, 4, (sqrt(pi)*erfi(a*sqrt(f)*sqrt(log(F)) + b*sqrt(f)*sqrt(log(F))*log(c*(d + e*x)^n)))/(2*b*e*sqrt(f)*g*n*sqrt(log(F)))]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n))^2)/(d*g + e*g*x)^2, x, 4, If(13>=8, -((ℯ^(a/(b*n) - 1/(4*b^2*f*n^2*log(F)))*sqrt(pi)*(c*(d + e*x)^n)^(1/n)*erfi((1/n - 2*a*b*f*log(F) - 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F)))))/(2*b*e*sqrt(f)*g^2*n*(d + e*x)*sqrt(log(F)))), (ℯ^(a/(b*n) - 1/(4*b^2*f*n^2*log(F)))*sqrt(pi)*(c*(d + e*x)^n)^(1/n)*erfi(-((1/n - 2*a*b*f*log(F) - 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F))))))/(2*b*e*sqrt(f)*g^2*n*(d + e*x)*sqrt(log(F))))]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n))^2)/(d*g + e*g*x)^3, x, 4, If(13>=8, -((sqrt(pi)*(c*(d + e*x)^n)^(2/n)*erfi((1/n - a*b*f*log(F) - b^2*f*log(F)*log(c*(d + e*x)^n))/(b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 - 2*a*b*f*n*log(F))/(b^2*f*n^2*log(F)))*(2*b*e*sqrt(f)*g^3*n*(d + e*x)^2*sqrt(log(F))))), (sqrt(pi)*(c*(d + e*x)^n)^(2/n)*erfi(-((1/n - a*b*f*log(F) - b^2*f*log(F)*log(c*(d + e*x)^n))/(b*sqrt(f)*sqrt(log(F))))))/(ℯ^((1 - 2*a*b*f*n*log(F))/(b^2*f*n^2*log(F)))*(2*b*e*sqrt(f)*g^3*n*(d + e*x)^2*sqrt(log(F)))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g+h*x)^m*F^(f*(a+b*log(c*(d+e*x)^n))^2)=#


    @test_int [(g + h*x)^m*F^(f*(a + b*log(c*(d + e*x)^n))^2), x, 0, Unintegrable(F^(f*(a + b*log(c*(d + e*x)^n))^2)*(g + h*x)^m, x)]


    @test_int [(g + h*x)^3*F^(f*(a + b*log(c*(d + e*x)^n))^2), x, 18, (3*h*(e*g - d*h)^2*sqrt(pi)*(d + e*x)^2*erfi((1/n + a*b*f*log(F) + b^2*f*log(F)*log(c*(d + e*x)^n))/(b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 + 2*a*b*f*n*log(F))/(b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^(2/n)*(2*b*e^4*sqrt(f)*n*sqrt(log(F)))) + (h^3*sqrt(pi)*(d + e*x)^4*erfi((2/n + a*b*f*log(F) + b^2*f*log(F)*log(c*(d + e*x)^n))/(b*sqrt(f)*sqrt(log(F)))))/(ℯ^((4*(1 + a*b*f*n*log(F)))/(b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^(4/n)*(2*b*e^4*sqrt(f)*n*sqrt(log(F)))) + ((e*g - d*h)^3*sqrt(pi)*(d + e*x)*erfi((1/n + 2*a*b*f*log(F) + 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 + 4*a*b*f*n*log(F))/(4*b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*b*e^4*sqrt(f)*n*sqrt(log(F)))) + (3*h^2*(e*g - d*h)*sqrt(pi)*(d + e*x)^3*erfi((3/n + 2*a*b*f*log(F) + 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F)))))/(ℯ^((3*(3 + 4*a*b*f*n*log(F)))/(4*b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^(3/n)*(2*b*e^4*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(g + h*x)^2*F^(f*(a + b*log(c*(d + e*x)^n))^2), x, 14, (h*(e*g - d*h)*sqrt(pi)*(d + e*x)^2*erfi((1/n + a*b*f*log(F) + b^2*f*log(F)*log(c*(d + e*x)^n))/(b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 + 2*a*b*f*n*log(F))/(b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^(2/n)*(b*e^3*sqrt(f)*n*sqrt(log(F)))) + ((e*g - d*h)^2*sqrt(pi)*(d + e*x)*erfi((1/n + 2*a*b*f*log(F) + 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 + 4*a*b*f*n*log(F))/(4*b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*b*e^3*sqrt(f)*n*sqrt(log(F)))) + (h^2*sqrt(pi)*(d + e*x)^3*erfi((3/n + 2*a*b*f*log(F) + 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F)))))/(ℯ^((3*(3 + 4*a*b*f*n*log(F)))/(4*b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^(3/n)*(2*b*e^3*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(g + h*x)^1*F^(f*(a + b*log(c*(d + e*x)^n))^2), x, 10, (h*sqrt(pi)*(d + e*x)^2*erfi((1/n + a*b*f*log(F) + b^2*f*log(F)*log(c*(d + e*x)^n))/(b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 + 2*a*b*f*n*log(F))/(b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^(2/n)*(2*b*e^2*sqrt(f)*n*sqrt(log(F)))) + ((e*g - d*h)*sqrt(pi)*(d + e*x)*erfi((1/n + 2*a*b*f*log(F) + 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 + 4*a*b*f*n*log(F))/(4*b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*b*e^2*sqrt(f)*n*sqrt(log(F))))]
    @test_int [(g + h*x)^0*F^(f*(a + b*log(c*(d + e*x)^n))^2), x, 4, (sqrt(pi)*(d + e*x)*erfi((1/n + 2*a*b*f*log(F) + 2*b^2*f*log(F)*log(c*(d + e*x)^n))/(2*b*sqrt(f)*sqrt(log(F)))))/(ℯ^((1 + 4*a*b*f*n*log(F))/(4*b^2*f*n^2*log(F)))*(c*(d + e*x)^n)^n^(-1)*(2*b*e*sqrt(f)*n*sqrt(log(F))))]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n))^2)/(g + h*x)^1, x, 0, Unintegrable(F^(f*(a + b*log(c*(d + e*x)^n))^2)/(g + h*x), x)]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n))^2)/(g + h*x)^2, x, 0, Unintegrable(F^(f*(a + b*log(c*(d + e*x)^n))^2)/(g + h*x)^2, x)]
    @test_int [F^(f*(a + b*log(c*(d + e*x)^n))^2)/(g + h*x)^3, x, 0, Unintegrable(F^(f*(a + b*log(c*(d + e*x)^n))^2)/(g + h*x)^3, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*F^v*D(v,x)=#


    @test_int [F^(a + b*x + c*x^3)*(b + 3*c*x^2), x, 1, F^(a + b*x + c*x^3)/log(F)]
    @test_int [F^(1/(a + b*x + c*x^2))*(b + 2*c*x)/(a + b*x + c*x^2)^2, x, 1, -(F^(1/(a + b*x + c*x^2))/log(F))]


    @test_int [ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^m*(b + 2*c*x), x, 2, ((a + b*x + c*x^2)^m*Gamma(1 + m, -a - b*x - c*x^2))/(-a - b*x - c*x^2)^m]

    @test_int [ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^3*(b + 2*c*x), x, 5, -6*ℯ^(a + b*x + c*x^2) + 6*ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2) - 3*ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^2 + ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^3]
    @test_int [ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^2*(b + 2*c*x), x, 4, 2*ℯ^(a + b*x + c*x^2) - 2*ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2) + ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^2]
    @test_int [ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^1*(b + 2*c*x), x, 3, -ℯ^(a + b*x + c*x^2) + ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)]
    @test_int [ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^0*(b + 2*c*x), x, 1, ℯ^(a + b*x + c*x^2)]
    @test_int [ℯ^(a + b*x + c*x^2)/(a + b*x + c*x^2)^1*(b + 2*c*x), x, 2, ExpIntegralEi(a + b*x + c*x^2)]
    @test_int [ℯ^(a + b*x + c*x^2)/(a + b*x + c*x^2)^2*(b + 2*c*x), x, 3, -(ℯ^(a + b*x + c*x^2)/(a + b*x + c*x^2)) + ExpIntegralEi(a + b*x + c*x^2)]
    @test_int [ℯ^(a + b*x + c*x^2)/(a + b*x + c*x^2)^3*(b + 2*c*x), x, 4, -(ℯ^(a + b*x + c*x^2)/(2*(a + b*x + c*x^2)^2)) - ℯ^(a + b*x + c*x^2)/(2*(a + b*x + c*x^2)) + (1/2)*ExpIntegralEi(a + b*x + c*x^2)]


    @test_int [ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(7/2)*(b + 2*c*x), x, 7, (-(105/8))*ℯ^(a + b*x + c*x^2)*sqrt(a + b*x + c*x^2) + (35/4)*ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(3/2) - (7/2)*ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(5/2) + ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(7/2) + (105/16)*sqrt(pi)*erfi(sqrt(a + b*x + c*x^2))]
    @test_int [ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(5/2)*(b + 2*c*x), x, 6, (15/4)*ℯ^(a + b*x + c*x^2)*sqrt(a + b*x + c*x^2) - (5/2)*ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(3/2) + ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(5/2) - (15/8)*sqrt(pi)*erfi(sqrt(a + b*x + c*x^2))]
    @test_int [ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(3/2)*(b + 2*c*x), x, 5, (-(3/2))*ℯ^(a + b*x + c*x^2)*sqrt(a + b*x + c*x^2) + ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(3/2) + (3/4)*sqrt(pi)*erfi(sqrt(a + b*x + c*x^2))]
    @test_int [ℯ^(a + b*x + c*x^2)*(a + b*x + c*x^2)^(1/2)*(b + 2*c*x), x, 4, ℯ^(a + b*x + c*x^2)*sqrt(a + b*x + c*x^2) - (1/2)*sqrt(pi)*erfi(sqrt(a + b*x + c*x^2))]
    @test_int [ℯ^(a + b*x + c*x^2)/(a + b*x + c*x^2)^(1/2)*(b + 2*c*x), x, 3, sqrt(pi)*erfi(sqrt(a + b*x + c*x^2))]
    @test_int [ℯ^(a + b*x + c*x^2)/(a + b*x + c*x^2)^(3/2)*(b + 2*c*x), x, 4, -((2*ℯ^(a + b*x + c*x^2))/sqrt(a + b*x + c*x^2)) + 2*sqrt(pi)*erfi(sqrt(a + b*x + c*x^2))]
    @test_int [ℯ^(a + b*x + c*x^2)/(a + b*x + c*x^2)^(5/2)*(b + 2*c*x), x, 5, -((2*ℯ^(a + b*x + c*x^2))/(3*(a + b*x + c*x^2)^(3/2))) - (4*ℯ^(a + b*x + c*x^2))/(3*sqrt(a + b*x + c*x^2)) + (4/3)*sqrt(pi)*erfi(sqrt(a + b*x + c*x^2))]
    @test_int [ℯ^(a + b*x + c*x^2)/(a + b*x + c*x^2)^(7/2)*(b + 2*c*x), x, 6, -((2*ℯ^(a + b*x + c*x^2))/(5*(a + b*x + c*x^2)^(5/2))) - (4*ℯ^(a + b*x + c*x^2))/(15*(a + b*x + c*x^2)^(3/2)) - (8*ℯ^(a + b*x + c*x^2))/(15*sqrt(a + b*x + c*x^2)) + (8/15)*sqrt(pi)*erfi(sqrt(a + b*x + c*x^2))]
    @test_int [ℯ^(a + b*x + c*x^2)/(a + b*x + c*x^2)^(9/2)*(b + 2*c*x), x, 7, -((2*ℯ^(a + b*x + c*x^2))/(7*(a + b*x + c*x^2)^(7/2))) - (4*ℯ^(a + b*x + c*x^2))/(35*(a + b*x + c*x^2)^(5/2)) - (8*ℯ^(a + b*x + c*x^2))/(105*(a + b*x + c*x^2)^(3/2)) - (16*ℯ^(a + b*x + c*x^2))/(105*sqrt(a + b*x + c*x^2)) + (16/105)*sqrt(pi)*erfi(sqrt(a + b*x + c*x^2))]


    #= ::Section::Closed:: =#
    #=Problems*from*Calculus*textbooks=#


    #= ::Subsection::Closed:: =#
    #=Anton*Calculus, 4th*Edition=#


    @test_int [1/(ℯ^x*sqrt(1 - ℯ^(-2*x))), x, 2, -asin(ℯ^(-x))]
    @test_int [ℯ^x/(4 + ℯ^(2*x)), x, 2, atan(ℯ^x/2)/2]
    @test_int [ℯ^x/(1 - ℯ^(2*x)), x, 2, atanh(ℯ^x)]
    @test_int [ℯ^x/(3 - 4*ℯ^(2*x)), x, 2, atanh((2*ℯ^x)/sqrt(3))/(2*sqrt(3))]
    @test_int [ℯ^x*sqrt(3 - 4*ℯ^(2*x)), x, 3, (1/2)*ℯ^x*sqrt(3 - 4*ℯ^(2*x)) + (3/4)*asin((2*ℯ^x)/sqrt(3))]
    @test_int [ℯ^x^2*x^3, x, 2, -(ℯ^x^2/2) + (1/2)*ℯ^x^2*x^2]
    @test_int [ℯ^x*sqrt(1 - ℯ^(2*x)), x, 3, (1/2)*ℯ^x*sqrt(1 - ℯ^(2*x)) + asin(ℯ^x)/2]
    @test_int [ℯ^x/sqrt(1 + ℯ^x + ℯ^(2*x)), x, 3, asinh((1 + 2*ℯ^x)/sqrt(3))]
    @test_int [ℯ^x/(-4 + ℯ^(2*x)), x, 2, -atanh(ℯ^x/2)/2]


    #= ::Subsection::Closed:: =#
    #=Ayres*Calculus, 1964*edition=#


    @test_int [ℯ^(2 - x^2)*x, x, 1, -ℯ^(2 - x^2)/2]
    @test_int [ℯ^x - x^ℯ, x, 2, ℯ^x - x^(1 + ℯ)/(1 + ℯ)]
    @test_int [(-1 + ℯ^(2*x))/(3 + ℯ^(2*x)), x, 3, -(x/3) + (2/3)*log(3 + ℯ^(2*x))]
    @test_int [ℯ^x/sqrt(1 - ℯ^(2*x)), x, 2, asin(ℯ^x)]
    @test_int [ℯ^(2*x)/(1 + ℯ^(4*x)), x, 2, atan(ℯ^(2*x))/2]
    @test_int [1/(-3*ℯ^x + ℯ^(2*x)), x, 3, 1/(ℯ^x*3) - x/9 + (1/9)*log(3 - ℯ^x)]
    @test_int [(ℯ^x*(-2 + ℯ^x))/(1 + ℯ^x), x, 3, ℯ^x - 3*log(1 + ℯ^x)]


    #= ::Subsection::Closed:: =#
    #=Edwards*and*Penney*Calculus=#


    @test_int [ℯ^x/(-1 + ℯ^(2*x)), x, 2, -atanh(ℯ^x)]
    @test_int [ℯ^x/(1 + ℯ^(2*x)), x, 2, atan(ℯ^x)]
    @test_int [(ℯ^(-x) + ℯ^x)/(-ℯ^(-x) + ℯ^x), x, 4, log(ℯ^(-x) - ℯ^x), -x + log(1 - ℯ^(2*x))]
    @test_int [(-ℯ^(-x) + ℯ^x)/(ℯ^(-x) + ℯ^x), x, 4, log(ℯ^(-x) + ℯ^x), -x + log(1 + ℯ^(2*x))]
    @test_int [(ℯ^(-2*x) + ℯ^(2*x))/(-ℯ^(-2*x) + ℯ^(2*x)), x, 4, -x + (1/2)*log(1 - ℯ^(4*x))]
    @test_int [ℯ^x/sqrt(1 + ℯ^(2*x)), x, 2, asinh(ℯ^x)]
    @test_int [ℯ^sqrt(4 + x)/sqrt(4 + x), x, 1, 2*ℯ^sqrt(4 + x)]
    @test_int [x/sqrt(-1 + ℯ^(2*x^2)), x, 4, atan(sqrt(-1 + ℯ^(2*x^2)))/2]
    @test_int [ℯ^x*sqrt(9 + ℯ^(2*x)), x, 3, (1/2)*ℯ^x*sqrt(9 + ℯ^(2*x)) + (9/2)*asinh(ℯ^x/3)]
    @test_int [ℯ^x*sqrt(1 + ℯ^(2*x)), x, 3, (1/2)*ℯ^x*sqrt(1 + ℯ^(2*x)) + asinh(ℯ^x)/2]
    @test_int [(ℯ^x^2*x)/(1 + ℯ^(2*x^2)), x, 3, atan(ℯ^x^2)/2]
    @test_int [ℯ^x^(3/2)*x^2, x, 3, (-(2/3))*ℯ^x^(3/2) + (2/3)*ℯ^x^(3/2)*x^(3/2)]


    #= ::Subsection::Closed:: =#
    #=Grossman*Calculus=#


    @test_int [ℯ^x/sqrt(-3 + ℯ^(2*x)), x, 3, atanh(ℯ^x/sqrt(-3 + ℯ^(2*x)))]
    @test_int [ℯ^x/(16 - ℯ^(2*x)), x, 2, atanh(ℯ^x/4)/4]
    @test_int [ℯ^(5*x)/(1 + ℯ^(10*x)), x, 2, atan(ℯ^(5*x))/5]
    @test_int [ℯ^(4*x)/sqrt(16 + ℯ^(8*x)), x, 2, asinh(ℯ^(4*x)/4)/4]
    @test_int [ℯ^(4*x^3)*x^2*cos(7*x^3), x, 2, (4/195)*ℯ^(4*x^3)*cos(7*x^3) + (7/195)*ℯ^(4*x^3)*sin(7*x^3)]


    #= ::Subsection::Closed:: =#
    #=Hughes, Hallet, Gleason, et*al*Calculus, 2nd*Edition=#


    @test_int [ℯ^(1 + x^2)*x, x, 1, ℯ^(1 + x^2)/2]
    @test_int [ℯ^(1 + x^3)*x^2, x, 1, ℯ^(1 + x^3)/3]
    @test_int [ℯ^sqrt(x)/sqrt(x), x, 1, 2*ℯ^sqrt(x)]
    @test_int [ℯ^x^(1/3)/x^(2/3), x, 1, 3*ℯ^x^(1/3)]
    @test_int [ℯ^(3*x)*(-8 + 2*x^3 + x^5), x, 13, -((724*ℯ^(3*x))/243) + (76/81)*ℯ^(3*x)*x - (38/27)*ℯ^(3*x)*x^2 + (38/27)*ℯ^(3*x)*x^3 - (5/9)*ℯ^(3*x)*x^4 + (1/3)*ℯ^(3*x)*x^5]
    @test_int [(ℯ^x + x)^2, x, 5, -2*ℯ^x + ℯ^(2*x)/2 + 2*ℯ^x*x + x^3/3]


    #= ::Subsection::Closed:: =#
    #=Spivak*Calculus=#


    @test_int [(ℯ^x + ℯ^(2*x) + ℯ^(3*x))/ℯ^(4*x), x, 3, -(1/3)/ℯ^(3*x) - 1/(ℯ^(2*x)*2) - ℯ^(-x)]
    @test_int [ℯ^x/(1 + 2*ℯ^x + ℯ^(2*x)), x, 2, -(1 + ℯ^x)^(-1)]


    #= ::Subsection::Closed:: =#
    #=Stewart*Calculus=#


    @test_int [cos(3*x)/ℯ^x, x, 1, ((-(1/10))*cos(3*x))/ℯ^x + ((3/10)*sin(3*x))/ℯ^x]
    @test_int [ℯ^(2*x)/(2 + 3*ℯ^x + ℯ^(2*x)), x, 4, -log(1 + ℯ^x) + 2*log(2 + ℯ^x)]
    @test_int [ℯ^(2*x)/(1 + ℯ^x), x, 3, ℯ^x - log(1 + ℯ^x)]
    @test_int [ℯ^(3*x)*cos(5*x), x, 1, (3/34)*ℯ^(3*x)*cos(5*x) + (5/34)*ℯ^(3*x)*sin(5*x)]
    @test_int [ℯ^x*sech(ℯ^x), x, 2, atan(sinh(ℯ^x))]
    @test_int [1/(ℯ^x*(1 + 2*ℯ^x)), x, 3, -ℯ^(-x) - 2*x + 2*log(1 + 2*ℯ^x)]
    @test_int [ℯ^x*cos(4 + 3*x), x, 1, (1/10)*ℯ^x*cos(4 + 3*x) + (3/10)*ℯ^x*sin(4 + 3*x)]


    #= ::Subsection::Closed:: =#
    #=Thomas*Calculus, 8th*Edition=#


    @test_int [ℯ^x*sec(1 - ℯ^x)^3, x, 3, (-(1/2))*atanh(sin(1 - ℯ^x)) - (1/2)*sec(1 - ℯ^x)*tan(1 - ℯ^x)]
    @test_int [(ℯ^(-x) + ℯ^x)*x, x, 6, -ℯ^(-x) - ℯ^x - x/ℯ^x + ℯ^x*x]
    @test_int [ℯ^x/(2 + 3*ℯ^x + ℯ^(2*x)), x, 4, log(1 + ℯ^x) - log(2 + ℯ^x)]
    @test_int [ℯ^(2*x)/(1 + ℯ^x)^(1/3), x, 3, (-(3/2))*(1 + ℯ^x)^(2/3) + (3/5)*(1 + ℯ^x)^(5/3)]
    @test_int [ℯ^(2*x)/(1 + ℯ^x)^(1/4), x, 3, (-(4/3))*(1 + ℯ^x)^(3/4) + (4/7)*(1 + ℯ^x)^(7/4)]
    @test_int [(-ℯ^x + 2*ℯ^(2*x))/sqrt(-1 - 6*ℯ^x + 3*ℯ^(2*x)), x, 4, (2/3)*sqrt(-1 - 6*ℯ^x + 3*ℯ^(2*x)) - atanh((sqrt(3)*(1 - ℯ^x))/sqrt(-1 - 6*ℯ^x + 3*ℯ^(2*x)))/sqrt(3)]


    #= ::Section::Closed:: =#
    #=Problems*from*integration*competitions=#


    #= ::Subsection::Closed:: =#
    #=MIT*Integration*Competition=#


    @test_int [ℯ^x*(-5*x + x^2), x, 8, 7*ℯ^x - 7*ℯ^x*x + ℯ^x*x^2]
    @test_int [ℯ^(3*x)*(-x + x^2), x, 8, (5*ℯ^(3*x))/27 - (5/9)*ℯ^(3*x)*x + (1/3)*ℯ^(3*x)*x^2]


    #= ::Subsection::Closed:: =#
    #=University*of*Wisconsin*Integration*Competition=#


    @test_int [ℯ^x^x*x^(2*x)*(1 + log(x)), x, -2, ℯ^x^x*(-1 + x^x)]
    @test_int [(ℯ^(5*x) + ℯ^(7*x))/(ℯ^(-x) + ℯ^x), x, 2, ℯ^(6*x)/6]
    @test_int [x^(-2 - x^(-1))*(1 - log(x)), x, -2, -x^(-x^(-1))]


    #= ::Section::Closed:: =#
    #=Miscellaneous*problems=#


    #= Note: Apart*should*NOT*be*used*to*expand*integrands*of*this*form! =#
    @test_int [(a + b*ℯ^x)^2, x, 3, 2*a*b*ℯ^x + (1/2)*b^2*ℯ^(2*x) + a^2*x]
    @test_int [(a + b*ℯ^x)^3, x, 3, 3*a^2*b*ℯ^x + (3/2)*a*b^2*ℯ^(2*x) + (1/3)*b^3*ℯ^(3*x) + a^3*x]
    @test_int [(a + b*ℯ^x)^4, x, 3, 4*a^3*b*ℯ^x + 3*a^2*b^2*ℯ^(2*x) + (4/3)*a*b^3*ℯ^(3*x) + (1/4)*b^4*ℯ^(4*x) + a^4*x]

    @test_int [1/sqrt(a + b*ℯ^(c + d*x)), x, 3, -((2*atanh(sqrt(a + b*ℯ^(c + d*x))/sqrt(a)))/(sqrt(a)*d))]
    @test_int [1/sqrt(-a + b*ℯ^(c + d*x)), x, 3, (2*atan(sqrt(-a + b*ℯ^(c + d*x))/sqrt(a)))/(sqrt(a)*d)]

    @test_int [sqrt(a + b*ℯ^(c + d*x)), x, 4, (2*sqrt(a + b*ℯ^(c + d*x)))/d - (2*sqrt(a)*atanh(sqrt(a + b*ℯ^(c + d*x))/sqrt(a)))/d]
    @test_int [sqrt(-a + b*ℯ^(c + d*x)), x, 4, (2*sqrt(-a + b*ℯ^(c + d*x)))/d - (2*sqrt(a)*atan(sqrt(-a + b*ℯ^(c + d*x))/sqrt(a)))/d]


    @test_int [ℯ^(6*x)*sin(3*x), x, 1, (-(1/15))*ℯ^(6*x)*cos(3*x) + (2/15)*ℯ^(6*x)*sin(3*x)]
    @test_int [ℯ^(3*x)/(1 + ℯ^(2*x)), x, 3, ℯ^x - atan(ℯ^x)]
    @test_int [ℯ^(3*x)/(-1 + ℯ^(2*x)), x, 3, ℯ^x - atanh(ℯ^x)]
    @test_int [1/(ℯ^x*sqrt(1 + ℯ^(2*x))), x, 2, -(sqrt(1 + ℯ^(2*x))/ℯ^x)]


    @test_int [ℯ^x/(-1 - 8*ℯ^x + ℯ^(2*x)), x, 3, atanh((4 - ℯ^x)/sqrt(17))/sqrt(17)]
    @test_int [ℯ^(7*x)*x^3, x, 4, -((6*ℯ^(7*x))/2401) + (6/343)*ℯ^(7*x)*x - (3/49)*ℯ^(7*x)*x^2 + (1/7)*ℯ^(7*x)*x^3]
    @test_int [ℯ^(8 - 2*x)*x^3, x, 4, (-(3/8))*ℯ^(8 - 2*x) - (3/4)*ℯ^(8 - 2*x)*x - (3/4)*ℯ^(8 - 2*x)*x^2 - (1/2)*ℯ^(8 - 2*x)*x^3]
    @test_int [ℯ^x*sqrt(9 - ℯ^(2*x)), x, 3, (1/2)*ℯ^x*sqrt(9 - ℯ^(2*x)) + (9/2)*asin(ℯ^x/3)]
    @test_int [ℯ^(6*x)*sqrt(9 - ℯ^(2*x)), x, 3, -27*(9 - ℯ^(2*x))^(3/2) + (18/5)*(9 - ℯ^(2*x))^(5/2) - (1/7)*(9 - ℯ^(2*x))^(7/2)]
    @test_int [ℯ^(6*x)/(9 - ℯ^x)^(5/2), x, 3, 39366/(9 - ℯ^x)^(3/2) - 65610/sqrt(9 - ℯ^x) - 14580*sqrt(9 - ℯ^x) + 540*(9 - ℯ^x)^(3/2) - 18*(9 - ℯ^x)^(5/2) + (2/7)*(9 - ℯ^x)^(7/2)]
    @test_int [(2 - 7*ℯ^x^4)^5*x^3, x, 4, -140*ℯ^x^4 + 490*ℯ^(2*x^4) - (3430*ℯ^(3*x^4))/3 + (12005*ℯ^(4*x^4))/8 - (16807*ℯ^(5*x^4))/20 + 8*x^4]
    @test_int [ℯ^x^2*sqrt(1 - ℯ^(2*x^2))*x, x, 4, (1/4)*ℯ^x^2*sqrt(1 - ℯ^(2*x^2)) + (1/4)*asin(ℯ^x^2)]
    @test_int [ℯ^x^3*(1 - ℯ^(4*x^3))^2*x^2, x, 4, ℯ^x^3/3 - (2*ℯ^(5*x^3))/15 + ℯ^(9*x^3)/27]
    @test_int [ℯ^(ℯ^x + x), x, 2, ℯ^ℯ^x]
    @test_int [ℯ^(ℯ^ℯ^x + ℯ^x + x), x, 3, ℯ^ℯ^ℯ^x]


    @test_int [(ℯ^(-x) + ℯ^x)^2, x, 4, -(1/2)/ℯ^(2*x) + ℯ^(2*x)/2 + 2*x]
    @test_int [1/(ℯ^(-x) + ℯ^x), x, 2, atan(ℯ^x)]
    @test_int [1/(ℯ^(-x) + ℯ^x)^2, x, 2, -1/(2*(1 + ℯ^(2*x)))]


    @test_int [1/(-ℯ^(-x) + ℯ^x), x, 2, -atanh(ℯ^x)]
    @test_int [1/(-ℯ^(-x) + ℯ^x)^2, x, 2, 1/(2*(1 - ℯ^(2*x)))]


    @test_int [ℯ^x*(-ℯ^(-x) + ℯ^x)^2, x, 3, -ℯ^(-x) - 2*ℯ^x + ℯ^(3*x)/3]
    @test_int [ℯ^x*(-ℯ^(-x) + ℯ^x)^3, x, 4, 1/(ℯ^(2*x)*2) - (3*ℯ^(2*x))/2 + ℯ^(4*x)/4 + 3*x]


    @test_int [(1 + 4^x)/(1 + 2^x), x, 3, x + 2^x/log(2) - (2*log(1 + 2^x))/log(2)]
    @test_int [(1 + 4^x)/(1 + 2^(-x)), x, 3, -(2^x/log(2)) + 2^(-1 + 2*x)/log(2) + (2*log(1 + 2^x))/log(2)]

    @test_int [ℯ^(a + x)^2/x^2 - (2*a*ℯ^(a + x)^2)/x, x, 3, -(ℯ^(a + x)^2/x) + sqrt(pi)*erfi(a + x)]
    @test_int [(x^4 + x^6 + x^8)/ℯ^x^2, x, 15, ((-(147/16))*x)/ℯ^x^2 - ((49/8)*x^3)/ℯ^x^2 - ((9/4)*x^5)/ℯ^x^2 - ((1/2)*x^7)/ℯ^x^2 + (147/32)*sqrt(pi)*erf(x)]

    @test_int [1/(-ℯ^x + ℯ^(3*x)), x, 3, ℯ^(-x) - atanh(ℯ^x)]
    @test_int [(ℯ^x*(-5 + x + x^2))/(-1 + x)^2, x, 6, ℯ^x - (3*ℯ^x)/(1 - x)]
    @test_int [(ℯ^x^2*x^3)/(1 + x^2)^2, x, 1, ℯ^x^2/(2*(1 + x^2))]
    @test_int [ℯ^(3*x)/sqrt(25 + 16*ℯ^(2*x)), x, 3, (1/32)*ℯ^x*sqrt(25 + 16*ℯ^(2*x)) - (25/128)*asinh((4*ℯ^x)/5)]

    #= [ℯ^(a + b*x + c*x^2)/(d + e*x)^2, x, 0] =#
    @test_int [(1 + ℯ^x)/sqrt(ℯ^x + x), x, 1, 2*sqrt(ℯ^x + x)]
    @test_int [(1 + ℯ^x)/(ℯ^x + x), x, 1, log(ℯ^x + x)]
    @test_int [ℯ^x^2/x^2, x, 2, -(ℯ^x^2/x) + sqrt(pi)*erfi(x)]
    @test_int [(ℯ^x^2*(1 + 4*x^4))/x^2, x, 6, -(ℯ^x^2/x) + 2*ℯ^x^2*x]

    @test_int [sqrt(f^x)*(a + b*x)^2, x, 3, (16*b^2*sqrt(f^x))/log(f)^3 - (8*b*sqrt(f^x)*(a + b*x))/log(f)^2 + (2*sqrt(f^x)*(a + b*x)^2)/log(f)]

    @test_int [3^(1 + x^2)*x, x, 1, 3^(1 + x^2)/(2*log(3))]
    @test_int [2^sqrt(x)/sqrt(x), x, 1, 2^(1 + sqrt(x))/log(2)]
    @test_int [2^x^(-1)/x^2, x, 1, -(2^x^(-1)/log(2))]
    @test_int [2^(-x) + 2^x, x, 3, -(1/(2^x*log(2))) + 2^x/log(2)]
    @test_int [(2 - 3*x + x^2)/ℯ^(4*x), x, 8, -(11/32)/ℯ^(4*x) + ((5/8)*x)/ℯ^(4*x) - ((1/4)*x^2)/ℯ^(4*x)]
    @test_int [k^(x/2) + x^sqrt(k), x, 2, x^(1 + sqrt(k))/(1 + sqrt(k)) + (2*k^(x/2))/log(k)]
    @test_int [10^sqrt(x)/sqrt(x), x, 1, (2^(1 + sqrt(x))*5^sqrt(x))/log(10)]


    #= Problems*requiring*simplification*of*irreducible*integrands =#
    @test_int [ℯ^x/(ℯ^x + x)^(1/2) + 1/sqrt(ℯ^x + x), x, 2, 2*sqrt(ℯ^x + x)]
    @test_int [((1 + ℯ^x)*x)/sqrt(ℯ^x + x) + 2*sqrt(ℯ^x + x), x, 6, 2*x*sqrt(ℯ^x + x)]
    @test_int [x/sqrt(ℯ^x + x) + (ℯ^x*x)/sqrt(ℯ^x + x) + 2*sqrt(ℯ^x + x), x, 4, 2*x*sqrt(ℯ^x + x)]
    @test_int [((1 + ℯ^x)*x)/sqrt(ℯ^x + x), x, 5, 2*x*sqrt(ℯ^x + x) - 2*CannotIntegrate(sqrt(ℯ^x + x), x)]
    @test_int [x/sqrt(ℯ^x + x) + (ℯ^x*x)/sqrt(ℯ^x + x), x, 4, 2*x*sqrt(ℯ^x + x) - 2*CannotIntegrate(sqrt(ℯ^x + x), x)]
    @test_int [x*ℯ^x/sqrt(ℯ^x + x), x, 2, 2*sqrt(ℯ^x + x) + 2*x*sqrt(ℯ^x + x) - CannotIntegrate(1/sqrt(ℯ^x + x), x) - 3*CannotIntegrate(sqrt(ℯ^x + x), x)]

    @test_int [(x^2*(5*ℯ^x + 3*x^2))/(5*sqrt(5*ℯ^x + x^3)) + (4/5)*x*sqrt(5*ℯ^x + x^3), x, 4, (2/5)*x^2*sqrt(5*ℯ^x + x^3)]
    @test_int [x^2*ℯ^x/sqrt(5*ℯ^x + x^3), x, 1, (2/5)*x^2*sqrt(5*ℯ^x + x^3) - (3/5)*CannotIntegrate(x^4/sqrt(5*ℯ^x + x^3), x) - (4/5)*CannotIntegrate(x*sqrt(5*ℯ^x + x^3), x)]

    @test_int [-((1 + ℯ^x)/(ℯ^x + x)^(1/3)), x, 1, (-(3/2))*(ℯ^x + x)^(2/3)]
    @test_int [-(1/(ℯ^x + x)^(1/3)) + x/(ℯ^x + x)^(1/3) - (ℯ^x + x)^(2/3), x, 2, (-(3/2))*(ℯ^x + x)^(2/3)]
    @test_int [x/(ℯ^x + x)^(1/3), x, 1, (-(3/2))*(ℯ^x + x)^(2/3) + CannotIntegrate(1/(ℯ^x + x)^(1/3), x) + CannotIntegrate((ℯ^x + x)^(2/3), x)]

    @test_int [(5*x + ℯ^x*(3 + 2*x))/(ℯ^x + x)^(1/3), x, 8, 3*x*(ℯ^x + x)^(2/3)]
    @test_int [(2*x)/(ℯ^x + x)^(1/3) + (2*ℯ^x*x)/(ℯ^x + x)^(1/3) + 3*(ℯ^x + x)^(2/3), x, 4, 3*x*(ℯ^x + x)^(2/3)]


    @test_int [ℯ^x*(-ℯ^(-x) + ℯ^x)*(ℯ^(-x) + ℯ^x)^2, x, 3, 1/(ℯ^(2*x)*2) + ℯ^(2*x)/2 + ℯ^(4*x)/4 - x]


    #= Unwise*expansion*leads*to*infinite*recursion =#
    @test_int [x/(ℯ^x + x), x, 0, CannotIntegrate(x/(ℯ^x + x), x)]
    @test_int [x^2/sqrt(ℯ^x + x), x, 0, CannotIntegrate(x^2/sqrt(ℯ^x + x), x)]
    @test_int [ℯ^x/(ℯ^x + x), x, 0, CannotIntegrate(ℯ^x/(ℯ^x + x), x)]
    @test_int [ℯ^x/(ℯ^x + x^2), x, 0, CannotIntegrate(ℯ^x/(ℯ^x + x^2), x)]

    @test_int [F0(x)/(F0(x) + x), x, 2, x - CannotIntegrate(x/(x + F0(x)), x)]
    @test_int [F0(x)/(F0(x) + x^2), x, 2, x - CannotIntegrate(x^2/(x^2 + F0(x)), x)]
    @test_int [F0(x)/(F0(x) + x)^2, x, 2, -CannotIntegrate(x/(x + F0(x))^2, x) + CannotIntegrate(1/(x + F0(x)), x)]
    @test_int [F0(x)/(F0(x) + x^2)^2, x, 2, -CannotIntegrate(x^2/(x^2 + F0(x))^2, x) + CannotIntegrate(1/(x^2 + F0(x)), x)]


    @test_int [(a*F^(c + d*x))^m*(b*F^(e + f*x))^n, x, 4, ((a*F^(c + d*x))^m*(b*F^(e + f*x))^n)/((d*m + f*n)*log(F))]


    @test_int [ℯ^(a + b*x^n)*ℯ^(c + d*x^n), x, 2, -((ℯ^(a + c)*x*Gamma(1/n, -((b + d)*x^n)))/((-((b + d)*x^n))^n^(-1)*n))]
    @test_int [f^(a + b*x^n)*g^(c + d*x^n), x, 2, -((f^a*g^c*x*Gamma(1/n, (-x^n)*(b*log(f) + d*log(g))))/(((-x^n)*(b*log(f) + d*log(g)))^n^(-1)*n))]


    @test_int [x^m*ℯ^(x^n), x, 1, -((x^(1 + m)*Gamma((1 + m)/n, -x^n))/((-x^n)^((1 + m)/n)*n))]
    @test_int [x^m*f^(x^n), x, 1, -((x^(1 + m)*Gamma((1 + m)/n, (-x^n)*log(f)))/(((-x^n)*log(f))^((1 + m)/n)*n))]

    @test_int [(a + b*x)^m*ℯ^((a + b*x)^n), x, 1, -(((a + b*x)^(1 + m)*Gamma((1 + m)/n, -(a + b*x)^n))/((-(a + b*x)^n)^((1 + m)/n)*(b*n)))]
    @test_int [(a + b*x)^m*f^((a + b*x)^n), x, 1, -(((a + b*x)^(1 + m)*Gamma((1 + m)/n, (-(a + b*x)^n)*log(f)))/(((-(a + b*x)^n)*log(f))^((1 + m)/n)*(b*n)))]


    #= Contributed*by*Oleg*Marichev, Wolfram*Research =#
    @test_int [x*ℯ^(a + b*x)^3, x, 4, (a*(a + b*x)*Gamma(1/3, -(a + b*x)^3))/(3*b^2*(-(a + b*x)^3)^(1/3)) - ((a + b*x)^2*Gamma(2/3, -(a + b*x)^3))/(3*b^2*(-(a + b*x)^3)^(2/3))]


    #= Problem*posted*on*Maple*Primes*on*1*June*2017 =#
    @test_int [(5*x^2 + 3*(x + ℯ^x)^(1/3) + ℯ^x*(2*x^2 + 3*x))/(x*(x + ℯ^x)^(1/3)), x, 8, 3*x*(ℯ^x + x)^(2/3) + 3*log(x)]
    end
