@testset "4.7.6 f^(a+b x+c x^2) trig(d+e x+f x^2)^n" begin
    @variables F, a, b, c, d, e, f, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*involving*products*of*exponentials*and*trig*functions=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*Trig(d+e*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*sin(d+e*x)^n=#


    @test_int [F^(c*(a + b*x))*sin(d + e*x)^n, x, 2, -((F^(c*(a + b*x))*Hypergeometric2F1(-n, -((e*n + im*b*c*log(F))/(2*e)), (1/2)*(2 - n - (im*b*c*log(F))/e), ℯ^(2*im*(d + e*x)))*sin(d + e*x)^n)/((1 - ℯ^(2*im*(d + e*x)))^n*(im*e*n - b*c*log(F))))]


    @test_int [F^(c*(a + b*x))*sin(d + e*x)^3, x, 2, -((6*e^3*F^(c*(a + b*x))*cos(d + e*x))/(9*e^4 + 10*b^2*c^2*e^2*log(F)^2 + b^4*c^4*log(F)^4)) + (6*b*c*e^2*F^(c*(a + b*x))*log(F)*sin(d + e*x))/(9*e^4 + 10*b^2*c^2*e^2*log(F)^2 + b^4*c^4*log(F)^4) - (3*e*F^(c*(a + b*x))*cos(d + e*x)*sin(d + e*x)^2)/(9*e^2 + b^2*c^2*log(F)^2) + (b*c*F^(c*(a + b*x))*log(F)*sin(d + e*x)^3)/(9*e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*sin(d + e*x)^2, x, 2, (2*e^2*F^(c*(a + b*x)))/(b*c*log(F)*(4*e^2 + b^2*c^2*log(F)^2)) - (2*e*F^(c*(a + b*x))*cos(d + e*x)*sin(d + e*x))/(4*e^2 + b^2*c^2*log(F)^2) + (b*c*F^(c*(a + b*x))*log(F)*sin(d + e*x)^2)/(4*e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*sin(d + e*x)^1, x, 1, -((e*F^(c*(a + b*x))*cos(d + e*x))/(e^2 + b^2*c^2*log(F)^2)) + (b*c*F^(c*(a + b*x))*log(F)*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*csc(d + e*x)^1, x, 1, -((2*ℯ^(im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(1, (e - im*b*c*log(F))/(2*e), (1/2)*(3 - (im*b*c*log(F))/e), ℯ^(2*im*(d + e*x))))/(e - im*b*c*log(F)))]
    @test_int [F^(c*(a + b*x))*csc(d + e*x)^2, x, 1, -((4*ℯ^(2*im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 - (im*b*c*log(F))/(2*e), 2 - (im*b*c*log(F))/(2*e), ℯ^(2*im*(d + e*x))))/(2*im*e + b*c*log(F)))]
    @test_int [F^(c*(a + b*x))*csc(d + e*x)^3, x, 2, -((F^(c*(a + b*x))*cot(d + e*x)*csc(d + e*x))/(2*e)) - (b*c*F^(c*(a + b*x))*csc(d + e*x)*log(F))/(2*e^2) - (ℯ^(im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(1, (e - im*b*c*log(F))/(2*e), (1/2)*(3 - (im*b*c*log(F))/e), ℯ^(2*im*(d + e*x)))*(e + im*b*c*log(F)))/e^2]
    @test_int [F^(c*(a + b*x))*csc(d + e*x)^4, x, 2, -((F^(c*(a + b*x))*cot(d + e*x)*csc(d + e*x)^2)/(3*e)) - (b*c*F^(c*(a + b*x))*csc(d + e*x)^2*log(F))/(6*e^2) + (2*ℯ^(2*im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 - (im*b*c*log(F))/(2*e), 2 - (im*b*c*log(F))/(2*e), ℯ^(2*im*(d + e*x)))*(2*im*e - b*c*log(F)))/(3*e^2)]


    @test_int [ℯ^x*sin(x)^4, x, 3, (24*ℯ^x)/85 - (24/85)*ℯ^x*cos(x)*sin(x) + (12/85)*ℯ^x*sin(x)^2 - (4/17)*ℯ^x*cos(x)*sin(x)^3 + (1/17)*ℯ^x*sin(x)^4]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*cos(d+e*x)^n=#


    @test_int [F^(c*(a + b*x))*cos(d + e*x)^n, x, 2, -((F^(c*(a + b*x))*cos(d + e*x)^n*Hypergeometric2F1(-n, -((e*n + im*b*c*log(F))/(2*e)), (1/2)*(2 - n - (im*b*c*log(F))/e), -ℯ^(2*im*(d + e*x))))/((1 + ℯ^(2*im*(d + e*x)))^n*(im*e*n - b*c*log(F))))]


    @test_int [F^(c*(a + b*x))*cos(d + e*x)^3, x, 2, (b*c*F^(c*(a + b*x))*cos(d + e*x)^3*log(F))/(9*e^2 + b^2*c^2*log(F)^2) + (6*b*c*e^2*F^(c*(a + b*x))*cos(d + e*x)*log(F))/(9*e^4 + 10*b^2*c^2*e^2*log(F)^2 + b^4*c^4*log(F)^4) + (3*e*F^(c*(a + b*x))*cos(d + e*x)^2*sin(d + e*x))/(9*e^2 + b^2*c^2*log(F)^2) + (6*e^3*F^(c*(a + b*x))*sin(d + e*x))/(9*e^4 + 10*b^2*c^2*e^2*log(F)^2 + b^4*c^4*log(F)^4)]
    @test_int [F^(c*(a + b*x))*cos(d + e*x)^2, x, 2, (2*e^2*F^(c*(a + b*x)))/(b*c*log(F)*(4*e^2 + b^2*c^2*log(F)^2)) + (b*c*F^(c*(a + b*x))*cos(d + e*x)^2*log(F))/(4*e^2 + b^2*c^2*log(F)^2) + (2*e*F^(c*(a + b*x))*cos(d + e*x)*sin(d + e*x))/(4*e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*cos(d + e*x)^1, x, 1, (b*c*F^(c*(a + b*x))*cos(d + e*x)*log(F))/(e^2 + b^2*c^2*log(F)^2) + (e*F^(c*(a + b*x))*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*sec(d + e*x)^1, x, 1, (2*ℯ^(im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(1, (e - im*b*c*log(F))/(2*e), (1/2)*(3 - (im*b*c*log(F))/e), -ℯ^(2*im*(d + e*x))))/(im*e + b*c*log(F))]
    @test_int [F^(c*(a + b*x))*sec(d + e*x)^2, x, 1, (4*ℯ^(2*im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 - (im*b*c*log(F))/(2*e), 2 - (im*b*c*log(F))/(2*e), -ℯ^(2*im*(d + e*x))))/(2*im*e + b*c*log(F))]
    @test_int [F^(c*(a + b*x))*sec(d + e*x)^3, x, 2, -((ℯ^(im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(1, (e - im*b*c*log(F))/(2*e), (1/2)*(3 - (im*b*c*log(F))/e), -ℯ^(2*im*(d + e*x)))*(im*e - b*c*log(F)))/e^2) - (b*c*F^(c*(a + b*x))*log(F)*sec(d + e*x))/(2*e^2) + (F^(c*(a + b*x))*sec(d + e*x)*tan(d + e*x))/(2*e)]
    @test_int [F^(c*(a + b*x))*sec(d + e*x)^4, x, 2, -((2*ℯ^(2*im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 - (im*b*c*log(F))/(2*e), 2 - (im*b*c*log(F))/(2*e), -ℯ^(2*im*(d + e*x)))*(2*im*e - b*c*log(F)))/(3*e^2)) - (b*c*F^(c*(a + b*x))*log(F)*sec(d + e*x)^2)/(6*e^2) + (F^(c*(a + b*x))*sec(d + e*x)^2*tan(d + e*x))/(3*e)]


    @test_int [ℯ^x*cos(x)^4, x, 3, (24*ℯ^x)/85 + (12/85)*ℯ^x*cos(x)^2 + (1/17)*ℯ^x*cos(x)^4 + (24/85)*ℯ^x*cos(x)*sin(x) + (4/17)*ℯ^x*cos(x)^3*sin(x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*tan(d+e*x)^n=#


    @test_int [ℯ^(c*(a + b*x))*tan(d + e*x)^3, x, 6, (im*ℯ^(c*(a + b*x)))/(b*c) - (6*im*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), -ℯ^(2*im*(d + e*x))))/(b*c) + (12*im*ℯ^(c*(a + b*x))*Hypergeometric2F1(2, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), -ℯ^(2*im*(d + e*x))))/(b*c) - (8*im*ℯ^(c*(a + b*x))*Hypergeometric2F1(3, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), -ℯ^(2*im*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*tan(d + e*x)^2, x, 5, -(ℯ^(c*(a + b*x))/(b*c)) + (4*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), -ℯ^(2*im*(d + e*x))))/(b*c) - (4*ℯ^(c*(a + b*x))*Hypergeometric2F1(2, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), -ℯ^(2*im*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*tan(d + e*x)^1, x, 4, -((im*ℯ^(c*(a + b*x)))/(b*c)) + (2*im*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), -ℯ^(2*im*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*cot(d + e*x)^1, x, 4, (im*ℯ^(c*(a + b*x)))/(b*c) - (2*im*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), ℯ^(2*im*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*cot(d + e*x)^2, x, 5, -(ℯ^(c*(a + b*x))/(b*c)) + (4*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), ℯ^(2*im*(d + e*x))))/(b*c) - (4*ℯ^(c*(a + b*x))*Hypergeometric2F1(2, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), ℯ^(2*im*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*cot(d + e*x)^3, x, 6, -((im*ℯ^(c*(a + b*x)))/(b*c)) + (6*im*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), ℯ^(2*im*(d + e*x))))/(b*c) - (12*im*ℯ^(c*(a + b*x))*Hypergeometric2F1(2, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), ℯ^(2*im*(d + e*x))))/(b*c) + (8*im*ℯ^(c*(a + b*x))*Hypergeometric2F1(3, -((im*b*c)/(2*e)), 1 - (im*b*c)/(2*e), ℯ^(2*im*(d + e*x))))/(b*c)]


    @test_int [F^(a + b*x)*tan(pi/4 - (c + d*x)/2), x, 5, (im*F^(a + b*x))/(b*log(F)) - (2*im*F^(a + b*x)*Hypergeometric2F1(1, -((im*b*log(F))/d), 1 - (im*b*log(F))/d, im*ℯ^(im*(c + d*x))))/(b*log(F))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*sec(d+e*x)^n=#


    @test_int [F^(c*(a + b*x))*sec(d + e*x)^n, x, 2, ((1 + ℯ^(2*im*(d + e*x)))^n*F^(a*c + b*c*x)*Hypergeometric2F1(n, (e*n - im*b*c*log(F))/(2*e), (1/2)*(2 + n - (im*b*c*log(F))/e), -ℯ^(2*im*(d + e*x)))*sec(d + e*x)^n)/(im*e*n + b*c*log(F))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*csc(d+e*x)^n=#


    @test_int [F^(c*(a + b*x))*csc(d + e*x)^n, x, 2, -(((1 - ℯ^(-2*im*(d + e*x)))^n*F^(a*c + b*c*x)*csc(d + e*x)^n*Hypergeometric2F1(n, (e*n + im*b*c*log(F))/(2*e), (1/2)*(2 + n + (im*b*c*log(F))/e), ℯ^(-2*im*(d + e*x))))/(im*e*n - b*c*log(F)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*F^(c*(a+b*x))*Trig(d+e*x)^n=#


    #= [(f*x)^m*F^(c*(a + b*x))*sin(d + e*x)^3, x, 10, -((3*F^(a*c)*(f*x)^m*Gamma(1 + m, x*(im*e - b*c*log(F))))/(ℯ^(im*d)*(x*(im*e - b*c*log(F)))^m*(8*(e + im*b*c*log(F))))) + (F^(a*c)*(f*x)^m*Gamma(1 + m, x*(3*im*e - b*c*log(F))))/(ℯ^(3*im*d)*(x*(3*im*e - b*c*log(F)))^m*(8*(3*e + im*b*c*log(F)))) - (3*ℯ^(im*d)*F^(a*c)*(f*x)^m*Gamma(1 + m, (-x)*(im*e + b*c*log(F))))/(((-x)*(im*e + b*c*log(F)))^m*(8*(e - im*b*c*log(F)))) + (ℯ^(3*im*d)*F^(a*c)*(f*x)^m*Gamma(1 + m, (-x)*(3*im*e + b*c*log(F))))/(((-x)*(3*im*e + b*c*log(F)))^m*(8*(3*e - im*b*c*log(F))))]
    @test_int [(f*x)^m*F^(c*(a + b*x))*sin(d + e*x)^2, x, 7, (F^(a*c)*(f*x)^m*Gamma(1 + m, (-b)*c*x*log(F)))/(((-b)*c*x*log(F))^m*(2*b*c*log(F))) + (F^(a*c)*(f*x)^m*Gamma(1 + m, x*(2*im*e - b*c*log(F))))/(ℯ^(2*im*d)*(x*(2*im*e - b*c*log(F)))^m*(4*(2*im*e - b*c*log(F)))) - (ℯ^(2*im*d)*F^(a*c)*(f*x)^m*Gamma(1 + m, (-x)*(2*im*e + b*c*log(F))))/(((-x)*(2*im*e + b*c*log(F)))^m*(4*(2*im*e + b*c*log(F))))] =#
    @test_int [(f*x)^m*F^(c*(a + b*x))*sin(d + e*x)^1, x, -1, -((F^(a*c)*(f*x)^m*Gamma(1 + m, x*(im*e - b*c*log(F))))/(ℯ^(im*d)*(x*(im*e - b*c*log(F)))^m*(2*(e + im*b*c*log(F))))) - (ℯ^(im*d)*F^(a*c)*(f*x)^m*Gamma(1 + m, (-x)*(im*e + b*c*log(F))))/(((-x)*(im*e + b*c*log(F)))^m*(2*(e - im*b*c*log(F))))]
    @test_int [(f*x)^m*F^(c*(a + b*x))/sin(d + e*x)^1, x, 1, CannotIntegrate(F^(a*c + b*c*x)*(f*x)^m*csc(d + e*x), x)]
    @test_int [(f*x)^m*F^(c*(a + b*x))/sin(d + e*x)^2, x, 1, CannotIntegrate(F^(a*c + b*c*x)*(f*x)^m*csc(d + e*x)^2, x)]


    @test_int [f*F^(c*(a + b*x))*(f*x)^(-2 + m)*(e*x*cos(d + e*x) + (-1 + m + b*c*x*log(F))*sin(d + e*x)), x, 11, F^(a*c + b*c*x)*(f*x)^(-1 + m)*sin(d + e*x)]
    @test_int [f*F^(c*(a + b*x))*(f*x)^m*(e*x*cos(d + e*x) + (1 + m + b*c*x*log(F))*sin(d + e*x)), x, -6, f*F^(c*(a + b*x))*x*(f*x)^m*sin(d + e*x)]
    @test_int [(F^(c*(a + b*x))*(f*x)^m*(e*x*cos(d + e*x) + (m + b*c*x*log(F))*sin(d + e*x)))/x, x, 7, F^(a*c + b*c*x)*(f*x)^m*sin(d + e*x)]


    #= [F^(c*(a + b*x))*x*(e*x*cos(d + e*x) + (2 + b*c*x*log(F))*sin(d + e*x)), x, 0, F^(c*(a + b*x))*x^2*sin(d + e*x)] =#
    @test_int [F^(c*(a + b*x))*(e*x*cos(d + e*x) + (1 + b*c*x*log(F))*sin(d + e*x)), x, 14, F^(c*(a + b*x))*x*sin(d + e*x), (e^3*F^(a*c + b*c*x)*cos(d + e*x))/(e^2 + b^2*c^2*log(F)^2)^2 + (b^2*c^2*e*F^(a*c + b*c*x)*cos(d + e*x)*log(F)^2)/(e^2 + b^2*c^2*log(F)^2)^2 - (e*F^(a*c + b*c*x)*cos(d + e*x))/(e^2 + b^2*c^2*log(F)^2) - (b*c*e^2*F^(a*c + b*c*x)*log(F)*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2)^2 - (b^3*c^3*F^(a*c + b*c*x)*log(F)^3*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2)^2 + (e^2*F^(a*c + b*c*x)*x*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2) + (b*c*F^(a*c + b*c*x)*log(F)*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2) + (b^2*c^2*F^(a*c + b*c*x)*x*log(F)^2*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*(e*cos(d + e*x) + b*c*log(F)*sin(d + e*x)), x, 1, F^(c*(a + b*x))*sin(d + e*x)]
    @test_int [(F^(c*(a + b*x))*(e*x*cos(d + e*x) + (-1 + b*c*x*log(F))*sin(d + e*x)))/x^2, x, 6, (F^(a*c + b*c*x)*sin(d + e*x))/x]
    @test_int [(F^(c*(a + b*x))*(e*x*cos(d + e*x) + (-2 + b*c*x*log(F))*sin(d + e*x)))/x^3, x, 10, (F^(a*c + b*c*x)*sin(d + e*x))/x^2]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(a+b*x)*Trig(c+d*x)^n*Trig(c+d*x)^p=#


    @test_int [ℯ^(a + b*x)*cos(c + d*x)^1*sin(c + d*x)^1, x, 3, -((d*ℯ^(a + b*x)*cos(2*c + 2*d*x))/(b^2 + 4*d^2)) + (b*ℯ^(a + b*x)*sin(2*c + 2*d*x))/(2*(b^2 + 4*d^2))]
    @test_int [ℯ^(a + b*x)*cos(c + d*x)^1*sin(c + d*x)^2, x, 4, (b*ℯ^(a + b*x)*cos(c + d*x))/(4*(b^2 + d^2)) - (b*ℯ^(a + b*x)*cos(3*c + 3*d*x))/(4*(b^2 + 9*d^2)) + (d*ℯ^(a + b*x)*sin(c + d*x))/(4*(b^2 + d^2)) - (3*d*ℯ^(a + b*x)*sin(3*c + 3*d*x))/(4*(b^2 + 9*d^2))]
    @test_int [ℯ^(a + b*x)*cos(c + d*x)^1*sin(c + d*x)^3, x, 4, -((d*ℯ^(a + b*x)*cos(2*c + 2*d*x))/(2*(b^2 + 4*d^2))) + (d*ℯ^(a + b*x)*cos(4*c + 4*d*x))/(2*(b^2 + 16*d^2)) + (b*ℯ^(a + b*x)*sin(2*c + 2*d*x))/(4*(b^2 + 4*d^2)) - (b*ℯ^(a + b*x)*sin(4*c + 4*d*x))/(8*(b^2 + 16*d^2))]

    @test_int [ℯ^(a + b*x)*cos(c + d*x)^2*sin(c + d*x)^1, x, 4, -((d*ℯ^(a + b*x)*cos(c + d*x))/(4*(b^2 + d^2))) - (3*d*ℯ^(a + b*x)*cos(3*c + 3*d*x))/(4*(b^2 + 9*d^2)) + (b*ℯ^(a + b*x)*sin(c + d*x))/(4*(b^2 + d^2)) + (b*ℯ^(a + b*x)*sin(3*c + 3*d*x))/(4*(b^2 + 9*d^2))]
    @test_int [ℯ^(a + b*x)*cos(c + d*x)^2*sin(c + d*x)^2, x, 4, ℯ^(a + b*x)/(8*b) - (b*ℯ^(a + b*x)*cos(4*c + 4*d*x))/(8*(b^2 + 16*d^2)) - (d*ℯ^(a + b*x)*sin(4*c + 4*d*x))/(2*(b^2 + 16*d^2))]
    @test_int [ℯ^(a + b*x)*cos(c + d*x)^2*sin(c + d*x)^3, x, 5, -((d*ℯ^(a + b*x)*cos(c + d*x))/(8*(b^2 + d^2))) - (3*d*ℯ^(a + b*x)*cos(3*c + 3*d*x))/(16*(b^2 + 9*d^2)) + (5*d*ℯ^(a + b*x)*cos(5*c + 5*d*x))/(16*(b^2 + 25*d^2)) + (b*ℯ^(a + b*x)*sin(c + d*x))/(8*(b^2 + d^2)) + (b*ℯ^(a + b*x)*sin(3*c + 3*d*x))/(16*(b^2 + 9*d^2)) - (b*ℯ^(a + b*x)*sin(5*c + 5*d*x))/(16*(b^2 + 25*d^2))]

    @test_int [ℯ^(a + b*x)*cos(c + d*x)^3*sin(c + d*x)^1, x, 4, -((d*ℯ^(a + b*x)*cos(2*c + 2*d*x))/(2*(b^2 + 4*d^2))) - (d*ℯ^(a + b*x)*cos(4*c + 4*d*x))/(2*(b^2 + 16*d^2)) + (b*ℯ^(a + b*x)*sin(2*c + 2*d*x))/(4*(b^2 + 4*d^2)) + (b*ℯ^(a + b*x)*sin(4*c + 4*d*x))/(8*(b^2 + 16*d^2))]
    @test_int [ℯ^(a + b*x)*cos(c + d*x)^3*sin(c + d*x)^2, x, 5, (b*ℯ^(a + b*x)*cos(c + d*x))/(8*(b^2 + d^2)) - (b*ℯ^(a + b*x)*cos(3*c + 3*d*x))/(16*(b^2 + 9*d^2)) - (b*ℯ^(a + b*x)*cos(5*c + 5*d*x))/(16*(b^2 + 25*d^2)) + (d*ℯ^(a + b*x)*sin(c + d*x))/(8*(b^2 + d^2)) - (3*d*ℯ^(a + b*x)*sin(3*c + 3*d*x))/(16*(b^2 + 9*d^2)) - (5*d*ℯ^(a + b*x)*sin(5*c + 5*d*x))/(16*(b^2 + 25*d^2))]
    @test_int [ℯ^(a + b*x)*cos(c + d*x)^3*sin(c + d*x)^3, x, 4, -((3*d*ℯ^(a + b*x)*cos(2*c + 2*d*x))/(16*(b^2 + 4*d^2))) + (3*d*ℯ^(a + b*x)*cos(6*c + 6*d*x))/(16*(b^2 + 36*d^2)) + (3*b*ℯ^(a + b*x)*sin(2*c + 2*d*x))/(32*(b^2 + 4*d^2)) - (b*ℯ^(a + b*x)*sin(6*c + 6*d*x))/(32*(b^2 + 36*d^2))]


    @test_int [ℯ^x*x*sin(x), x, 4, (1/2)*ℯ^x*cos(x) - (1/2)*ℯ^x*x*cos(x) + (1/2)*ℯ^x*x*sin(x)]
    @test_int [ℯ^x*x^2*sin(x), x, 11, (-(1/2))*ℯ^x*cos(x) + ℯ^x*x*cos(x) - (1/2)*ℯ^x*x^2*cos(x) - (1/2)*ℯ^x*sin(x) + (1/2)*ℯ^x*x^2*sin(x)]

    @test_int [ℯ^x*x*cos(x), x, 4, (1/2)*ℯ^x*x*cos(x) - (1/2)*ℯ^x*sin(x) + (1/2)*ℯ^x*x*sin(x)]
    @test_int [ℯ^x*x^2*cos(x), x, 11, (-(1/2))*ℯ^x*cos(x) + (1/2)*ℯ^x*x^2*cos(x) + (1/2)*ℯ^x*sin(x) - ℯ^x*x*sin(x) + (1/2)*ℯ^x*x^2*sin(x)]


    @test_int [ℯ^(3*x)*(-5*cos(4*x) + 2*sin(4*x)), x, 4, (-(23/25))*ℯ^(3*x)*cos(4*x) - (14/25)*ℯ^(3*x)*sin(4*x)]

    @test_int [sin(x)/ℯ^x + ℯ^x*sin(x), x, 3, ((-(1/2))*cos(x))/ℯ^x - (1/2)*ℯ^x*cos(x) - ((1/2)*sin(x))/ℯ^x + (1/2)*ℯ^x*sin(x)]


    @test_int [F^(a + b*x)*(cos(c + d*x)/(e + e*sin(c + d*x))), x, 5, (im*F^(a + b*x))/(b*e*log(F)) - (2*im*F^(a + b*x)*Hypergeometric2F1(1, -((im*b*log(F))/d), 1 - (im*b*log(F))/d, im*ℯ^(im*(c + d*x))))/(b*e*log(F))]
    @test_int [F^(a + b*x)*(cos(c + d*x)/(e - e*sin(c + d*x))), x, 5, -((im*F^(a + b*x))/(b*e*log(F))) + (2*im*F^(a + b*x)*Hypergeometric2F1(1, -((im*b*log(F))/d), 1 - (im*b*log(F))/d, (-im)*ℯ^(im*(c + d*x))))/(b*e*log(F))]
    @test_int [F^(a + b*x)*(sin(c + d*x)/(e + e*cos(c + d*x))), x, 5, -((im*F^(a + b*x))/(b*e*log(F))) + (2*im*F^(a + b*x)*Hypergeometric2F1(1, -((im*b*log(F))/d), 1 - (im*b*log(F))/d, -ℯ^(im*(c + d*x))))/(b*e*log(F))]
    @test_int [F^(a + b*x)*(sin(c + d*x)/(e - e*cos(c + d*x))), x, 5, (im*F^(a + b*x))/(b*e*log(F)) - (2*im*F^(a + b*x)*Hypergeometric2F1(1, -((im*b*log(F))/d), 1 - (im*b*log(F))/d, ℯ^(im*(c + d*x))))/(b*e*log(F))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(a+b*x+c*x^2)*Trig(d+e*x+f*x^2)^m=#


    @test_int [ℯ^(x^2)*sin(b*x), x, 6, (1/4)*im*ℯ^(b^2/4)*sqrt(pi)*Erfi((1/2)*((-im)*b + 2*x)) - (1/4)*im*ℯ^(b^2/4)*sqrt(pi)*Erfi((1/2)*(im*b + 2*x))]
    @test_int [ℯ^(x^2)*cos(b*x), x, 6, (1/4)*ℯ^(b^2/4)*sqrt(pi)*Erfi((1/2)*((-im)*b + 2*x)) + (1/4)*ℯ^(b^2/4)*sqrt(pi)*Erfi((1/2)*(im*b + 2*x))]
    @test_int [ℯ^(x^2)*sin(a + b*x), x, 6, (1/4)*im*ℯ^((-im)*a + b^2/4)*sqrt(pi)*Erfi((1/2)*((-im)*b + 2*x)) - (1/4)*im*ℯ^(im*a + b^2/4)*sqrt(pi)*Erfi((1/2)*(im*b + 2*x))]
    @test_int [ℯ^(x^2)*cos(a + b*x), x, 6, (1/4)*ℯ^((-im)*a + b^2/4)*sqrt(pi)*Erfi((1/2)*((-im)*b + 2*x)) + (1/4)*ℯ^(im*a + b^2/4)*sqrt(pi)*Erfi((1/2)*(im*b + 2*x))]

    @test_int [ℯ^(2*x^2)*x*cos(2*x^2), x, 2, (1/8)*ℯ^(2*x^2)*cos(2*x^2) + (1/8)*ℯ^(2*x^2)*sin(2*x^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*F^(a+b*x)*Trig(F^(a+b*x))=#


    @test_int [ℯ^x*sin(ℯ^x), x, 2, -cos(ℯ^x)]

    @test_int [ℯ^x*csc(ℯ^x)*sec(ℯ^x), x, 3, log(tan(ℯ^x))]
    @test_int [ℯ^x*cos(ℯ^x), x, 2, sin(ℯ^x)]
    @test_int [ℯ^(2*x)*cos(ℯ^(2*x)), x, 2, sin(ℯ^(2*x))/2]
    @test_int [cos(ℯ^(-2*x))/ℯ^(2*x), x, 2, -sin(ℯ^(-2*x))/2]
    @test_int [ℯ^(2*x)*cos(ℯ^x), x, 3, cos(ℯ^x) + ℯ^x*sin(ℯ^x)]
    @test_int [ℯ^(-1 + 3*x)*cos(ℯ^(-1 + 3*x))*sin(1 + ℯ^(-1 + 3*x)), x, 4, -cos(1 + 2*ℯ^(-1 + 3*x))/12 + (ℯ^(-1 + 3*x)*sin(1))/6]

    @test_int [ℯ^x*tan(ℯ^x), x, 2, -log(cos(ℯ^x))]

    @test_int [ℯ^x*sec(ℯ^x), x, 2, atanh(sin(ℯ^x))]
    @test_int [ℯ^x*sec(ℯ^x)*tan(ℯ^x), x, 3, sec(ℯ^x)]

    @test_int [ℯ^x*csc(ℯ^x)^2, x, 3, -cot(ℯ^x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x+c*x^2)*sin(d+e*x+f*x^2)^m=#


    @test_int [ℯ^x*sin(a + b*x), x, 1, -((b*ℯ^x*cos(a + b*x))/(1 + b^2)) + (ℯ^x*sin(a + b*x))/(1 + b^2)]
    @test_int [ℯ^x*sin(a + c*x^2), x, 6, ((-1)^(3/4)*ℯ^((im/4)*(4*a + c^(-1)))*sqrt(pi)*Erf(((-1)^(1/4)*(1 + (2*im)*c*x))/(2*sqrt(c))))/(4*sqrt(c)) + ((-1)^(3/4)*sqrt(pi)*Erfi(((-1)^(1/4)*(1 - (2*im)*c*x))/(2*sqrt(c))))/(4*sqrt(c)*ℯ^((im/4)*(4*a + c^(-1))))]
    @test_int [ℯ^x*sin(a + b*x + c*x^2), x, 6, ((-1)^(3/4)*ℯ^((1/4)*im*(4*a + (1 + im*b)^2/c))*sqrt(pi)*Erf(((-1)^(1/4)*(1 + im*b + 2*im*c*x))/(2*sqrt(c))))/(4*sqrt(c)) + ((-1)^(3/4)*ℯ^((-im)*a + (im*(im + b)^2)/(4*c))*sqrt(pi)*Erfi(((-1)^(1/4)*(1 - im*b - 2*im*c*x))/(2*sqrt(c))))/(4*sqrt(c))]

    @test_int [ℯ^x^2*sin(a + b*x), x, 6, (im/4)*ℯ^((-im)*a + b^2/4)*sqrt(pi)*Erfi(((-im)*b + 2*x)/2) - (im/4)*ℯ^(im*a + b^2/4)*sqrt(pi)*Erfi((im*b + 2*x)/2)]
    @test_int [ℯ^x^2*sin(a + c*x^2), x, 4, ((im/4)*sqrt(pi)*Erfi(sqrt(1 - im*c)*x))/(sqrt(1 - im*c)*ℯ^(im*a)) - ((im/4)*ℯ^(im*a)*sqrt(pi)*Erfi(sqrt(1 + im*c)*x))/sqrt(1 + im*c)]
    @test_int [ℯ^x^2*sin(a + b*x + c*x^2), x, 6, -((im*sqrt(pi)*Erfi((im*b - 2*(1 - im*c)*x)/(2*sqrt(1 - im*c))))/(ℯ^(im*(a - b^2/(4*im + 4*c)))*(4*sqrt(1 - im*c)))) - (im*ℯ^(im*a + b^2/(4*(1 + im*c)))*sqrt(pi)*Erfi((im*b + 2*(1 + im*c)*x)/(2*sqrt(1 + im*c))))/(4*sqrt(1 + im*c))]


    @test_int [f^(a + b*x)*sin(d + f*x^2), x, 8, ((-1)^(3/4)*ℯ^((im/4)*(4*d + (b^2*log(f)^2)/f))*f^(-1/2 + a)*sqrt(pi)*Erf(((-1)^(1/4)*((2*im)*f*x + b*log(f)))/(2*sqrt(f))))/4 - ((-1)^(3/4)*f^(-1/2 + a)*sqrt(pi)*Erfi(((-1)^(1/4)*((2*im)*f*x - b*log(f)))/(2*sqrt(f))))/(4*ℯ^((im/4)*(4*d + (b^2*log(f)^2)/f)))]
    @test_int [f^(a + b*x)*sin(d + f*x^2)^2, x, 9, (1/16 + im/16)*ℯ^((2*im)*d + ((im/8)*b^2*log(f)^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erf(((1/4 + im/4)*((4*im)*f*x + b*log(f)))/sqrt(f)) + ((1/16 + im/16)*f^(-1/2 + a)*sqrt(pi)*Erfi(((1/4 + im/4)*((4*im)*f*x - b*log(f)))/sqrt(f)))/ℯ^((im/8)*(16*d + (b^2*log(f)^2)/f)) + f^(a + b*x)/(2*b*log(f))]
    @test_int [f^(a + b*x)*sin(d + f*x^2)^3, x, 14, (3*(-1)^(3/4)*ℯ^((im/4)*(4*d + (b^2*log(f)^2)/f))*f^(-1/2 + a)*sqrt(pi)*Erf(((-1)^(1/4)*((2*im)*f*x + b*log(f)))/(2*sqrt(f))))/16 + (1/16 - im/16)*ℯ^((3*im)*d + ((im/12)*b^2*log(f)^2)/f)*f^(-1/2 + a)*sqrt(pi/6)*Erf(((1/2 + im/2)*((6*im)*f*x + b*log(f)))/(sqrt(6)*sqrt(f))) - (3*(-1)^(3/4)*f^(-1/2 + a)*sqrt(pi)*Erfi(((-1)^(1/4)*((2*im)*f*x - b*log(f)))/(2*sqrt(f))))/(16*ℯ^((im/4)*(4*d + (b^2*log(f)^2)/f))) - ((1/16 - im/16)*f^(-1/2 + a)*sqrt(pi/6)*Erfi(((1/2 + im/2)*((6*im)*f*x - b*log(f)))/(sqrt(6)*sqrt(f))))/ℯ^((im/12)*(36*d + (b^2*log(f)^2)/f))]

    @test_int [f^(a + b*x)*sin(d + e*x + f*x^2), x, 8, ((-1)^(3/4)*ℯ^((im/4)*(4*d + (im*e + b*log(f))^2/f))*f^(-1/2 + a)*sqrt(pi)*Erf(((-1)^(1/4)*(im*e + (2*im)*f*x + b*log(f)))/(2*sqrt(f))))/4 - ((-1)^(3/4)*ℯ^((-im)*d + ((im/4)*(e + im*b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erfi(((-1)^(1/4)*(im*e + (2*im)*f*x - b*log(f)))/(2*sqrt(f))))/4]
    @test_int [f^(a + b*x)*sin(d + e*x + f*x^2)^2, x, 9, (1/16 + im/16)*ℯ^((2*im)*d + ((im/8)*((2*im)*e + b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erf(((1/4 + im/4)*((2*im)*e + (4*im)*f*x + b*log(f)))/sqrt(f)) + (1/16 + im/16)*ℯ^((-2*im)*d + ((im/8)*(2*e + im*b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erfi(((1/4 + im/4)*((2*im)*e + (4*im)*f*x - b*log(f)))/sqrt(f)) + f^(a + b*x)/(2*b*log(f))]
    @test_int [f^(a + b*x)*sin(d + e*x + f*x^2)^3, x, 14, (3*(-1)^(3/4)*ℯ^((im/4)*(4*d + (im*e + b*log(f))^2/f))*f^(-1/2 + a)*sqrt(pi)*Erf(((-1)^(1/4)*(im*e + (2*im)*f*x + b*log(f)))/(2*sqrt(f))))/16 + (1/16 - im/16)*ℯ^((3*im)*d + ((im/12)*((3*im)*e + b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi/6)*Erf(((1/2 + im/2)*((3*im)*e + (6*im)*f*x + b*log(f)))/(sqrt(6)*sqrt(f))) - (3*(-1)^(3/4)*ℯ^((-im)*d + ((im/4)*(e + im*b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erfi(((-1)^(1/4)*(im*e + (2*im)*f*x - b*log(f)))/(2*sqrt(f))))/16 - (1/16 - im/16)*ℯ^((-3*im)*d + ((im/12)*(3*e + im*b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi/6)*Erfi(((1/2 + im/2)*((3*im)*e + (6*im)*f*x - b*log(f)))/(sqrt(6)*sqrt(f)))]


    @test_int [f^(a + c*x^2)*sin(d + e*x), x, 8, If($VersionNumber>=8, ((-im/4)*ℯ^((-im)*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))) - ((im/4)*ℯ^(im*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))), (im*ℯ^((-im)*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(4*sqrt(c)*sqrt(log(f))) - (im*ℯ^(im*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + c*x^2)*sin(d + e*x)^2, x, 9, If($VersionNumber>=8, (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^((-2*im)*d + e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))) - (ℯ^((2*im)*d + e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))), (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*im*d + e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - c*x*log(f))/(sqrt(c)*sqrt(log(f))))))/(8*sqrt(c)*sqrt(log(f))) - (ℯ^(2*im*d + e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + c*x^2)*sin(d + e*x)^3, x, 14, If($VersionNumber>=8, (((-3*im)/16)*ℯ^((-im)*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))) + ((im/16)*ℯ^((-3*im)*d + (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((3*im)*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))) - (((3*im)/16)*ℯ^(im*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))) + ((im/16)*ℯ^((3*im)*d + (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((3*im)*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))), (3*im*ℯ^((-im)*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) - (im*ℯ^(-3*im*d + (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((3*im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) - (3*im*ℯ^(im*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (im*ℯ^(3*im*d + (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))))]

    @test_int [f^(a + c*x^2)*sin(d + f*x^2), x, 6, ((im/4)*f^a*sqrt(pi)*Erf(x*sqrt(im*f - c*log(f))))/(ℯ^(im*d)*sqrt(im*f - c*log(f))) - ((im/4)*ℯ^(im*d)*f^a*sqrt(pi)*Erfi(x*sqrt(im*f + c*log(f))))/sqrt(im*f + c*log(f))]
    @test_int [f^(a + c*x^2)*sin(d + f*x^2)^2, x, 7, (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) - (f^a*sqrt(pi)*Erf(x*sqrt((2*im)*f - c*log(f))))/(8*ℯ^((2*im)*d)*sqrt((2*im)*f - c*log(f))) - (ℯ^((2*im)*d)*f^a*sqrt(pi)*Erfi(x*sqrt((2*im)*f + c*log(f))))/(8*sqrt((2*im)*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*sin(d + f*x^2)^3, x, 10, (((3*im)/16)*f^a*sqrt(pi)*Erf(x*sqrt(im*f - c*log(f))))/(ℯ^(im*d)*sqrt(im*f - c*log(f))) - ((im/16)*f^a*sqrt(pi)*Erf(x*sqrt((3*im)*f - c*log(f))))/(ℯ^((3*im)*d)*sqrt((3*im)*f - c*log(f))) - (((3*im)/16)*ℯ^(im*d)*f^a*sqrt(pi)*Erfi(x*sqrt(im*f + c*log(f))))/sqrt(im*f + c*log(f)) + ((im/16)*ℯ^((3*im)*d)*f^a*sqrt(pi)*Erfi(x*sqrt((3*im)*f + c*log(f))))/sqrt((3*im)*f + c*log(f))]

    @test_int [f^(a + c*x^2)*sin(d + e*x + f*x^2), x, 8, (im*ℯ^((-im)*d - e^2/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((im*e + 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(4*sqrt(im*f - c*log(f))) - (im*ℯ^(im*d + e^2/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(4*sqrt(im*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*sin(d + e*x + f*x^2)^2, x, 9, (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*im*d - e^2/(2*im*f - c*log(f)))*f^a*sqrt(pi)*Erf((im*e + x*(2*im*f - c*log(f)))/sqrt(2*im*f - c*log(f))))/(8*sqrt(2*im*f - c*log(f))) - (ℯ^(2*im*d + e^2/(2*im*f + c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + x*(2*im*f + c*log(f)))/sqrt(2*im*f + c*log(f))))/(8*sqrt(2*im*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*sin(d + e*x + f*x^2)^3, x, 14, (3*im*ℯ^((-im)*d - e^2/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((im*e + 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(16*sqrt(im*f - c*log(f))) - (im*ℯ^(-3*im*d - (9*e^2)/(4*(3*im*f - c*log(f))))*f^a*sqrt(pi)*Erf((3*im*e + 2*x*(3*im*f - c*log(f)))/(2*sqrt(3*im*f - c*log(f)))))/(16*sqrt(3*im*f - c*log(f))) - (3*im*ℯ^(im*d + e^2/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(16*sqrt(im*f + c*log(f))) + (im*ℯ^(3*im*d + (9*e^2)/(4*(3*im*f + c*log(f))))*f^a*sqrt(pi)*Erfi((3*im*e + 2*x*(3*im*f + c*log(f)))/(2*sqrt(3*im*f + c*log(f)))))/(16*sqrt(3*im*f + c*log(f)))]


    @test_int [f^(a + b*x + c*x^2)*sin(d + e*x), x, 8, If($VersionNumber>=8, ((-im/4)*ℯ^((-im)*d + (e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))) - ((im/4)*ℯ^(im*d + (e - im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))), (im*ℯ^((-im)*d + (e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(4*sqrt(c)*sqrt(log(f))) - (im*ℯ^(im*d + (e - im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + b*x + c*x^2)*sin(d + e*x)^2, x, 10, If($VersionNumber>=8, (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^((-2*im)*d + (2*e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((2*im)*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))) - (ℯ^((2*im)*d - ((2*im)*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((2*im)*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))), (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*im*d + (2*e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((2*im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(8*sqrt(c)*sqrt(log(f))) - (ℯ^(2*im*d - (2*im*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((2*im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + b*x + c*x^2)*sin(d + e*x)^3, x, 14, If($VersionNumber>=8, (((-3*im)/16)*ℯ^((-im)*d + (e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))) + ((im/16)*ℯ^((-3*im)*d + (3*e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((3*im)*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))) - (((3*im)/16)*ℯ^(im*d + (e - im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))) + ((im/16)*ℯ^((3*im)*d - ((3*im)*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((3*im)*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(sqrt(c)*sqrt(log(f))), (3*im*ℯ^((-im)*d + (e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) - (im*ℯ^(-3*im*d + (3*e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((3*im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) - (3*im*ℯ^(im*d + (e - im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (im*ℯ^(3*im*d - (3*im*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))))]

    @test_int [f^(a + b*x + c*x^2)*sin(d + f*x^2), x, 8, -((im*ℯ^((-im)*d + (b^2*log(f)^2)/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(4*sqrt(im*f - c*log(f)))) - (im*ℯ^(im*d - (b^2*log(f)^2)/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(4*sqrt(im*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*sin(d + f*x^2)^2, x, 10, (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*im*d + (b^2*log(f)^2)/(8*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(2*im*f - c*log(f)))/(2*sqrt(2*im*f - c*log(f)))))/(8*sqrt(2*im*f - c*log(f))) - (ℯ^(2*im*d - (b^2*log(f)^2)/(8*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(2*im*f + c*log(f)))/(2*sqrt(2*im*f + c*log(f)))))/(8*sqrt(2*im*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*sin(d + f*x^2)^3, x, 14, -((3*im*ℯ^((-im)*d + (b^2*log(f)^2)/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(16*sqrt(im*f - c*log(f)))) + (im*ℯ^(-3*im*d + (b^2*log(f)^2)/(12*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(3*im*f - c*log(f)))/(2*sqrt(3*im*f - c*log(f)))))/(16*sqrt(3*im*f - c*log(f))) - (3*im*ℯ^(im*d - (b^2*log(f)^2)/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(16*sqrt(im*f + c*log(f))) + (im*ℯ^(3*im*d - (b^2*log(f)^2)/(4*(3*im*f + c*log(f))))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(3*im*f + c*log(f)))/(2*sqrt(3*im*f + c*log(f)))))/(16*sqrt(3*im*f + c*log(f)))]

    @test_int [f^(a + b*x + c*x^2)*sin(d + e*x + f*x^2), x, 8, (im*ℯ^((-im)*d - (e + im*b*log(f))^2/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((im*e - b*log(f) + 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(4*sqrt(im*f - c*log(f))) - (im*ℯ^(im*d + (e - im*b*log(f))^2/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(4*sqrt(im*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*sin(d + e*x + f*x^2)^2, x, 10, (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*im*d - (2*e + im*b*log(f))^2/(8*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((2*im*e - b*log(f) + 2*x*(2*im*f - c*log(f)))/(2*sqrt(2*im*f - c*log(f)))))/(8*sqrt(2*im*f - c*log(f))) - (ℯ^(2*im*d + (2*e - im*b*log(f))^2/(8*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((2*im*e + b*log(f) + 2*x*(2*im*f + c*log(f)))/(2*sqrt(2*im*f + c*log(f)))))/(8*sqrt(2*im*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*sin(d + e*x + f*x^2)^3, x, 14, (3*im*ℯ^((-im)*d - (e + im*b*log(f))^2/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((im*e - b*log(f) + 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(16*sqrt(im*f - c*log(f))) - (im*ℯ^(-3*im*d - (3*e + im*b*log(f))^2/(4*(3*im*f - c*log(f))))*f^a*sqrt(pi)*Erf((3*im*e - b*log(f) + 2*x*(3*im*f - c*log(f)))/(2*sqrt(3*im*f - c*log(f)))))/(16*sqrt(3*im*f - c*log(f))) - (3*im*ℯ^(im*d + (e - im*b*log(f))^2/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(16*sqrt(im*f + c*log(f))) + (im*ℯ^(3*im*d - (3*im*e + b*log(f))^2/(4*(3*im*f + c*log(f))))*f^a*sqrt(pi)*Erfi((3*im*e + b*log(f) + 2*x*(3*im*f + c*log(f)))/(2*sqrt(3*im*f + c*log(f)))))/(16*sqrt(3*im*f + c*log(f)))]

    @test_int [f^(a + b*x + c*x^2)*sin(a + b*x + e*x^2), x, 8, If($VersionNumber>=8, (im*sqrt(pi)*Erf((b*(im - log(f)) + 2*x*(im*e - c*log(f)))/(2*sqrt(im*e - c*log(f)))))/(ℯ^((im - log(f))*(a - (b^2*(im - log(f)))/(4*im*e - 4*c*log(f))))*(4*sqrt(im*e - c*log(f)))) - (im*ℯ^((im + log(f))*(a - (b^2*(im + log(f)))/(4*im*e + 4*c*log(f))))*sqrt(pi)*Erfi((b*(im + log(f)) + 2*x*(im*e + c*log(f)))/(2*sqrt(im*e + c*log(f)))))/(4*sqrt(im*e + c*log(f))), -((im*sqrt(pi)*Erf(-((b*(im - log(f)) + 2*x*(im*e - c*log(f)))/(2*sqrt(im*e - c*log(f))))))/(ℯ^((im - log(f))*(a - (b^2*(im - log(f)))/(4*im*e - 4*c*log(f))))*(4*sqrt(im*e - c*log(f))))) - (im*ℯ^((im + log(f))*(a - (b^2*(im + log(f)))/(4*im*e + 4*c*log(f))))*sqrt(pi)*Erfi((b*(im + log(f)) + 2*x*(im*e + c*log(f)))/(2*sqrt(im*e + c*log(f)))))/(4*sqrt(im*e + c*log(f))))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x+c*x^2)*cos(d+e*x+f*x^2)^m=#


    @test_int [ℯ^x*cos(a + b*x), x, 1, (ℯ^x*cos(a + b*x))/(1 + b^2) + (b*ℯ^x*sin(a + b*x))/(1 + b^2)]
    @test_int [ℯ^x*cos(a + c*x^2), x, 6, -((-1)^(1/4)*ℯ^((im/4)*(4*a + c^(-1)))*sqrt(pi)*Erf(((-1)^(1/4)*(1 + (2*im)*c*x))/(2*sqrt(c))))/(4*sqrt(c)) + ((-1)^(1/4)*sqrt(pi)*Erfi(((-1)^(1/4)*(1 - (2*im)*c*x))/(2*sqrt(c))))/(4*sqrt(c)*ℯ^((im/4)*(4*a + c^(-1))))]
    @test_int [ℯ^x*cos(a + b*x + c*x^2), x, 6, -(((-1)^(1/4)*ℯ^((1/4)*im*(4*a + (1 + im*b)^2/c))*sqrt(pi)*Erf(((-1)^(1/4)*(1 + im*b + 2*im*c*x))/(2*sqrt(c))))/(4*sqrt(c))) + ((-1)^(1/4)*ℯ^((-im)*a + (im*(im + b)^2)/(4*c))*sqrt(pi)*Erfi(((-1)^(1/4)*(1 - im*b - 2*im*c*x))/(2*sqrt(c))))/(4*sqrt(c))]

    @test_int [ℯ^x^2*cos(a + b*x), x, 6, (ℯ^((-im)*a + b^2/4)*sqrt(pi)*Erfi(((-im)*b + 2*x)/2))/4 + (ℯ^(im*a + b^2/4)*sqrt(pi)*Erfi((im*b + 2*x)/2))/4]
    @test_int [ℯ^x^2*cos(a + c*x^2), x, 4, (sqrt(pi)*Erfi(sqrt(1 - im*c)*x))/(4*sqrt(1 - im*c)*ℯ^(im*a)) + (ℯ^(im*a)*sqrt(pi)*Erfi(sqrt(1 + im*c)*x))/(4*sqrt(1 + im*c))]
    @test_int [ℯ^x^2*cos(a + b*x + c*x^2), x, 6, -((sqrt(pi)*Erfi((im*b - 2*(1 - im*c)*x)/(2*sqrt(1 - im*c))))/(ℯ^(im*(a - b^2/(4*im + 4*c)))*(4*sqrt(1 - im*c)))) + (ℯ^(im*a + b^2/(4*(1 + im*c)))*sqrt(pi)*Erfi((im*b + 2*(1 + im*c)*x)/(2*sqrt(1 + im*c))))/(4*sqrt(1 + im*c))]


    @test_int [f^(a + b*x)*cos(d + f*x^2), x, 8, -((-1)^(1/4)*ℯ^((im/4)*(4*d + (b^2*log(f)^2)/f))*f^(-1/2 + a)*sqrt(pi)*Erf(((-1)^(1/4)*((2*im)*f*x + b*log(f)))/(2*sqrt(f))))/4 - ((-1)^(1/4)*f^(-1/2 + a)*sqrt(pi)*Erfi(((-1)^(1/4)*((2*im)*f*x - b*log(f)))/(2*sqrt(f))))/(4*ℯ^((im/4)*(4*d + (b^2*log(f)^2)/f)))]
    @test_int [f^(a + b*x)*cos(d + f*x^2)^2, x, 9, (-1/16 - im/16)*ℯ^((2*im)*d + ((im/8)*b^2*log(f)^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erf(((1/4 + im/4)*((4*im)*f*x + b*log(f)))/sqrt(f)) - ((1/16 + im/16)*f^(-1/2 + a)*sqrt(pi)*Erfi(((1/4 + im/4)*((4*im)*f*x - b*log(f)))/sqrt(f)))/ℯ^((im/8)*(16*d + (b^2*log(f)^2)/f)) + f^(a + b*x)/(2*b*log(f))]
    @test_int [f^(a + b*x)*cos(d + f*x^2)^3, x, 14, (-3*(-1)^(1/4)*ℯ^((im/4)*(4*d + (b^2*log(f)^2)/f))*f^(-1/2 + a)*sqrt(pi)*Erf(((-1)^(1/4)*((2*im)*f*x + b*log(f)))/(2*sqrt(f))))/16 - (1/16 + im/16)*ℯ^((3*im)*d + ((im/12)*b^2*log(f)^2)/f)*f^(-1/2 + a)*sqrt(pi/6)*Erf(((1/2 + im/2)*((6*im)*f*x + b*log(f)))/(sqrt(6)*sqrt(f))) - (3*(-1)^(1/4)*f^(-1/2 + a)*sqrt(pi)*Erfi(((-1)^(1/4)*((2*im)*f*x - b*log(f)))/(2*sqrt(f))))/(16*ℯ^((im/4)*(4*d + (b^2*log(f)^2)/f))) - ((1/16 + im/16)*f^(-1/2 + a)*sqrt(pi/6)*Erfi(((1/2 + im/2)*((6*im)*f*x - b*log(f)))/(sqrt(6)*sqrt(f))))/ℯ^((im/12)*(36*d + (b^2*log(f)^2)/f))]

    @test_int [f^(a + b*x)*cos(d + e*x + f*x^2), x, 8, -((-1)^(1/4)*ℯ^((im/4)*(4*d + (im*e + b*log(f))^2/f))*f^(-1/2 + a)*sqrt(pi)*Erf(((-1)^(1/4)*(im*e + (2*im)*f*x + b*log(f)))/(2*sqrt(f))))/4 - ((-1)^(1/4)*ℯ^((-im)*d + ((im/4)*(e + im*b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erfi(((-1)^(1/4)*(im*e + (2*im)*f*x - b*log(f)))/(2*sqrt(f))))/4]
    @test_int [f^(a + b*x)*cos(d + e*x + f*x^2)^2, x, 9, (-1/16 - im/16)*ℯ^((2*im)*d + ((im/8)*((2*im)*e + b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erf(((1/4 + im/4)*((2*im)*e + (4*im)*f*x + b*log(f)))/sqrt(f)) - (1/16 + im/16)*ℯ^((-2*im)*d + ((im/8)*(2*e + im*b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erfi(((1/4 + im/4)*((2*im)*e + (4*im)*f*x - b*log(f)))/sqrt(f)) + f^(a + b*x)/(2*b*log(f))]
    @test_int [f^(a + b*x)*cos(d + e*x + f*x^2)^3, x, 14, (-3*(-1)^(1/4)*ℯ^((im/4)*(4*d + (im*e + b*log(f))^2/f))*f^(-1/2 + a)*sqrt(pi)*Erf(((-1)^(1/4)*(im*e + (2*im)*f*x + b*log(f)))/(2*sqrt(f))))/16 - (1/16 + im/16)*ℯ^((3*im)*d + ((im/12)*((3*im)*e + b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi/6)*Erf(((1/2 + im/2)*((3*im)*e + (6*im)*f*x + b*log(f)))/(sqrt(6)*sqrt(f))) - (3*(-1)^(1/4)*ℯ^((-im)*d + ((im/4)*(e + im*b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi)*Erfi(((-1)^(1/4)*(im*e + (2*im)*f*x - b*log(f)))/(2*sqrt(f))))/16 - (1/16 + im/16)*ℯ^((-3*im)*d + ((im/12)*(3*e + im*b*log(f))^2)/f)*f^(-1/2 + a)*sqrt(pi/6)*Erfi(((1/2 + im/2)*((3*im)*e + (6*im)*f*x - b*log(f)))/(sqrt(6)*sqrt(f)))]


    @test_int [f^(a + c*x^2)*cos(d + e*x), x, 8, If($VersionNumber>=8, -(ℯ^((-im)*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(im*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))), (ℯ^((-im)*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(im*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + c*x^2)*cos(d + e*x)^2, x, 9, If($VersionNumber>=8, (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^((-2*im)*d + e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^((2*im)*d + e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))), (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*im*d + e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - c*x*log(f))/(sqrt(c)*sqrt(log(f))))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*im*d + e^2/(c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + c*x*log(f))/(sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + c*x^2)*cos(d + e*x)^3, x, 14, If($VersionNumber>=8, (-3*ℯ^((-im)*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) - (ℯ^((-3*im)*d + (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((3*im)*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (3*ℯ^(im*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^((3*im)*d + (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((3*im)*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))), (3*ℯ^((-im)*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(-3*im*d + (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((3*im*e - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) + (3*ℯ^(im*d + e^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*im*d + (9*e^2)/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*im*e + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))))]

    @test_int [f^(a + c*x^2)*cos(d + f*x^2), x, 6, (f^a*sqrt(pi)*Erf(x*sqrt(im*f - c*log(f))))/(4*ℯ^(im*d)*sqrt(im*f - c*log(f))) + (ℯ^(im*d)*f^a*sqrt(pi)*Erfi(x*sqrt(im*f + c*log(f))))/(4*sqrt(im*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*cos(d + f*x^2)^2, x, 7, (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) + (f^a*sqrt(pi)*Erf(x*sqrt((2*im)*f - c*log(f))))/(8*ℯ^((2*im)*d)*sqrt((2*im)*f - c*log(f))) + (ℯ^((2*im)*d)*f^a*sqrt(pi)*Erfi(x*sqrt((2*im)*f + c*log(f))))/(8*sqrt((2*im)*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*cos(d + f*x^2)^3, x, 10, (3*f^a*sqrt(pi)*Erf(x*sqrt(im*f - c*log(f))))/(16*ℯ^(im*d)*sqrt(im*f - c*log(f))) + (f^a*sqrt(pi)*Erf(x*sqrt((3*im)*f - c*log(f))))/(16*ℯ^((3*im)*d)*sqrt((3*im)*f - c*log(f))) + (3*ℯ^(im*d)*f^a*sqrt(pi)*Erfi(x*sqrt(im*f + c*log(f))))/(16*sqrt(im*f + c*log(f))) + (ℯ^((3*im)*d)*f^a*sqrt(pi)*Erfi(x*sqrt((3*im)*f + c*log(f))))/(16*sqrt((3*im)*f + c*log(f)))]

    @test_int [f^(a + c*x^2)*cos(d + e*x + f*x^2), x, 8, (ℯ^((-im)*d - e^2/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((im*e + 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(4*sqrt(im*f - c*log(f))) + (ℯ^(im*d + e^2/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(4*sqrt(im*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*cos(d + e*x + f*x^2)^2, x, 9, (f^a*sqrt(pi)*Erfi(sqrt(c)*x*sqrt(log(f))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*im*d - e^2/(2*im*f - c*log(f)))*f^a*sqrt(pi)*Erf((im*e + x*(2*im*f - c*log(f)))/sqrt(2*im*f - c*log(f))))/(8*sqrt(2*im*f - c*log(f))) + (ℯ^(2*im*d + e^2/(2*im*f + c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + x*(2*im*f + c*log(f)))/sqrt(2*im*f + c*log(f))))/(8*sqrt(2*im*f + c*log(f)))]
    @test_int [f^(a + c*x^2)*cos(d + e*x + f*x^2)^3, x, 14, (3*ℯ^((-im)*d - e^2/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((im*e + 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(16*sqrt(im*f - c*log(f))) + (ℯ^(-3*im*d - (9*e^2)/(4*(3*im*f - c*log(f))))*f^a*sqrt(pi)*Erf((3*im*e + 2*x*(3*im*f - c*log(f)))/(2*sqrt(3*im*f - c*log(f)))))/(16*sqrt(3*im*f - c*log(f))) + (3*ℯ^(im*d + e^2/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(16*sqrt(im*f + c*log(f))) + (ℯ^(3*im*d + (9*e^2)/(4*(3*im*f + c*log(f))))*f^a*sqrt(pi)*Erfi((3*im*e + 2*x*(3*im*f + c*log(f)))/(2*sqrt(3*im*f + c*log(f)))))/(16*sqrt(3*im*f + c*log(f)))]


    @test_int [f^(a + b*x + c*x^2)*cos(d + e*x), x, 8, If($VersionNumber>=8, -(ℯ^((-im)*d + (e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(im*d + (e - im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))), (ℯ^((-im)*d + (e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(im*d + (e - im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(4*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + b*x + c*x^2)*cos(d + e*x)^2, x, 10, If($VersionNumber>=8, (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^((-2*im)*d + (2*e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((2*im)*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^((2*im)*d - ((2*im)*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((2*im)*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))), (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*im*d + (2*e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((2*im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(8*sqrt(c)*sqrt(log(f))) + (ℯ^(2*im*d - (2*im*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((2*im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(8*sqrt(c)*sqrt(log(f))))]
    @test_int [f^(a + b*x + c*x^2)*cos(d + e*x)^3, x, 14, If($VersionNumber>=8, (-3*ℯ^((-im)*d + (e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) - (ℯ^((-3*im)*d + (3*e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((3*im)*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (3*ℯ^(im*d + (e - im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^((3*im)*d - ((3*im)*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(((3*im)*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))), (3*ℯ^((-im)*d + (e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(-3*im*d + (3*e + im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi(-((3*im*e - b*log(f) - 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f))))))/(16*sqrt(c)*sqrt(log(f))) + (3*ℯ^(im*d + (e - im*b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))) + (ℯ^(3*im*d - (3*im*e + b*log(f))^2/(4*c*log(f)))*f^a*sqrt(pi)*Erfi((3*im*e + b*log(f) + 2*c*x*log(f))/(2*sqrt(c)*sqrt(log(f)))))/(16*sqrt(c)*sqrt(log(f))))]

    @test_int [f^(a + b*x + c*x^2)*cos(d + f*x^2), x, 8, -((ℯ^((-im)*d + (b^2*log(f)^2)/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(4*sqrt(im*f - c*log(f)))) + (ℯ^(im*d - (b^2*log(f)^2)/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(4*sqrt(im*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*cos(d + f*x^2)^2, x, 10, (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) - (ℯ^(-2*im*d + (b^2*log(f)^2)/(8*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(2*im*f - c*log(f)))/(2*sqrt(2*im*f - c*log(f)))))/(8*sqrt(2*im*f - c*log(f))) + (ℯ^(2*im*d - (b^2*log(f)^2)/(8*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(2*im*f + c*log(f)))/(2*sqrt(2*im*f + c*log(f)))))/(8*sqrt(2*im*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*cos(d + f*x^2)^3, x, 14, -((3*ℯ^((-im)*d + (b^2*log(f)^2)/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(16*sqrt(im*f - c*log(f)))) - (ℯ^(-3*im*d + (b^2*log(f)^2)/(12*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((b*log(f) - 2*x*(3*im*f - c*log(f)))/(2*sqrt(3*im*f - c*log(f)))))/(16*sqrt(3*im*f - c*log(f))) + (3*ℯ^(im*d - (b^2*log(f)^2)/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(16*sqrt(im*f + c*log(f))) + (ℯ^(3*im*d - (b^2*log(f)^2)/(4*(3*im*f + c*log(f))))*f^a*sqrt(pi)*Erfi((b*log(f) + 2*x*(3*im*f + c*log(f)))/(2*sqrt(3*im*f + c*log(f)))))/(16*sqrt(3*im*f + c*log(f)))]

    @test_int [f^(a + b*x + c*x^2)*cos(d + e*x + f*x^2), x, 8, (ℯ^((-im)*d - (e + im*b*log(f))^2/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((im*e - b*log(f) + 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(4*sqrt(im*f - c*log(f))) + (ℯ^(im*d + (e - im*b*log(f))^2/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(4*sqrt(im*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*cos(d + e*x + f*x^2)^2, x, 10, (f^(a - b^2/(4*c))*sqrt(pi)*Erfi(((b + 2*c*x)*sqrt(log(f)))/(2*sqrt(c))))/(4*sqrt(c)*sqrt(log(f))) + (ℯ^(-2*im*d - (2*e + im*b*log(f))^2/(8*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((2*im*e - b*log(f) + 2*x*(2*im*f - c*log(f)))/(2*sqrt(2*im*f - c*log(f)))))/(8*sqrt(2*im*f - c*log(f))) + (ℯ^(2*im*d + (2*e - im*b*log(f))^2/(8*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((2*im*e + b*log(f) + 2*x*(2*im*f + c*log(f)))/(2*sqrt(2*im*f + c*log(f)))))/(8*sqrt(2*im*f + c*log(f)))]
    @test_int [f^(a + b*x + c*x^2)*cos(d + e*x + f*x^2)^3, x, 14, (3*ℯ^((-im)*d - (e + im*b*log(f))^2/(4*im*f - 4*c*log(f)))*f^a*sqrt(pi)*Erf((im*e - b*log(f) + 2*x*(im*f - c*log(f)))/(2*sqrt(im*f - c*log(f)))))/(16*sqrt(im*f - c*log(f))) + (ℯ^(-3*im*d - (3*e + im*b*log(f))^2/(4*(3*im*f - c*log(f))))*f^a*sqrt(pi)*Erf((3*im*e - b*log(f) + 2*x*(3*im*f - c*log(f)))/(2*sqrt(3*im*f - c*log(f)))))/(16*sqrt(3*im*f - c*log(f))) + (3*ℯ^(im*d + (e - im*b*log(f))^2/(4*im*f + 4*c*log(f)))*f^a*sqrt(pi)*Erfi((im*e + b*log(f) + 2*x*(im*f + c*log(f)))/(2*sqrt(im*f + c*log(f)))))/(16*sqrt(im*f + c*log(f))) + (ℯ^(3*im*d - (3*im*e + b*log(f))^2/(4*(3*im*f + c*log(f))))*f^a*sqrt(pi)*Erfi((3*im*e + b*log(f) + 2*x*(3*im*f + c*log(f)))/(2*sqrt(3*im*f + c*log(f)))))/(16*sqrt(3*im*f + c*log(f)))]

    @test_int [f^(a + b*x + c*x^2)*cos(a + b*x + e*x^2), x, 8, If($VersionNumber>=8, (sqrt(pi)*Erf((b*(im - log(f)) + 2*x*(im*e - c*log(f)))/(2*sqrt(im*e - c*log(f)))))/(ℯ^((im - log(f))*(a - (b^2*(im - log(f)))/(4*im*e - 4*c*log(f))))*(4*sqrt(im*e - c*log(f)))) + (ℯ^((im + log(f))*(a - (b^2*(im + log(f)))/(4*im*e + 4*c*log(f))))*sqrt(pi)*Erfi((b*(im + log(f)) + 2*x*(im*e + c*log(f)))/(2*sqrt(im*e + c*log(f)))))/(4*sqrt(im*e + c*log(f))), -((sqrt(pi)*Erf(-((b*(im - log(f)) + 2*x*(im*e - c*log(f)))/(2*sqrt(im*e - c*log(f))))))/(ℯ^((im - log(f))*(a - (b^2*(im - log(f)))/(4*im*e - 4*c*log(f))))*(4*sqrt(im*e - c*log(f))))) + (ℯ^((im + log(f))*(a - (b^2*(im + log(f)))/(4*im*e + 4*c*log(f))))*sqrt(pi)*Erfi((b*(im + log(f)) + 2*x*(im*e + c*log(f)))/(2*sqrt(im*e + c*log(f)))))/(4*sqrt(im*e + c*log(f))))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*F^(c*(a+b*x))*(f + g*Trig(d+e*x))^n=#


    @test_int [F^(c*(a + b*x))*(f + f*sin(d + e*x))^2, x, 8, (f^2*F^(a*c + b*c*x))/(b*c*log(F)) - (2*e*f^2*F^(a*c + b*c*x)*cos(d + e*x))/(e^2 + b^2*c^2*log(F)^2) + (2*e^2*f^2*F^(a*c + b*c*x))/(b*c*log(F)*(4*e^2 + b^2*c^2*log(F)^2)) + (2*b*c*f^2*F^(a*c + b*c*x)*log(F)*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2) - (2*e*f^2*F^(a*c + b*c*x)*cos(d + e*x)*sin(d + e*x))/(4*e^2 + b^2*c^2*log(F)^2) + (b*c*f^2*F^(a*c + b*c*x)*log(F)*sin(d + e*x)^2)/(4*e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*(f + f*sin(d + e*x))^1, x, 6, (f*F^(a*c + b*c*x))/(b*c*log(F)) - (e*f*F^(a*c + b*c*x)*cos(d + e*x))/(e^2 + b^2*c^2*log(F)^2) + (b*c*f*F^(a*c + b*c*x)*log(F)*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))/(f + f*sin(d + e*x))^1, x, 2, -((2*ℯ^(im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 - (im*b*c*log(F))/e, 2 - (im*b*c*log(F))/e, im*ℯ^(im*(d + e*x))))/(f*(e - im*b*c*log(F))))]
    @test_int [F^(c*(a + b*x))/(f + f*sin(d + e*x))^2, x, 3, -((F^(c*(a + b*x))*cot(d/2 + pi/4 + (e*x)/2)*csc(d/2 + pi/4 + (e*x)/2)^2)/(6*e*f^2)) - (b*c*F^(c*(a + b*x))*csc(d/2 + pi/4 + (e*x)/2)^2*log(F))/(6*e^2*f^2) - (2*ℯ^(im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 - (im*b*c*log(F))/e, 2 - (im*b*c*log(F))/e, im*ℯ^(im*(d + e*x)))*(e + im*b*c*log(F)))/(3*e^2*f^2)]


    @test_int [F^(c*(a + b*x))*(f + f*cos(d + e*x))^2, x, 8, (f^2*F^(a*c + b*c*x))/(b*c*log(F)) + (2*b*c*f^2*F^(a*c + b*c*x)*cos(d + e*x)*log(F))/(e^2 + b^2*c^2*log(F)^2) + (2*e^2*f^2*F^(a*c + b*c*x))/(b*c*log(F)*(4*e^2 + b^2*c^2*log(F)^2)) + (b*c*f^2*F^(a*c + b*c*x)*cos(d + e*x)^2*log(F))/(4*e^2 + b^2*c^2*log(F)^2) + (2*e*f^2*F^(a*c + b*c*x)*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2) + (2*e*f^2*F^(a*c + b*c*x)*cos(d + e*x)*sin(d + e*x))/(4*e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))*(f + f*cos(d + e*x))^1, x, 6, (f*F^(a*c + b*c*x))/(b*c*log(F)) + (b*c*f*F^(a*c + b*c*x)*cos(d + e*x)*log(F))/(e^2 + b^2*c^2*log(F)^2) + (e*f*F^(a*c + b*c*x)*sin(d + e*x))/(e^2 + b^2*c^2*log(F)^2)]
    @test_int [F^(c*(a + b*x))/(f + f*cos(d + e*x))^1, x, 2, (2*ℯ^(im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 - (im*b*c*log(F))/e, 2 - (im*b*c*log(F))/e, -ℯ^(im*(d + e*x))))/(f*(im*e + b*c*log(F)))]
    @test_int [F^(c*(a + b*x))/(f + f*cos(d + e*x))^2, x, 3, -((2*ℯ^(im*(d + e*x))*F^(c*(a + b*x))*Hypergeometric2F1(2, 1 - (im*b*c*log(F))/e, 2 - (im*b*c*log(F))/e, -ℯ^(im*(d + e*x)))*(im*e - b*c*log(F)))/(3*e^2*f^2)) - (b*c*F^(c*(a + b*x))*log(F)*sec(d/2 + (e*x)/2)^2)/(6*e^2*f^2) + (F^(c*(a + b*x))*sec(d/2 + (e*x)/2)^2*tan(d/2 + (e*x)/2))/(6*e*f^2)]
    end
