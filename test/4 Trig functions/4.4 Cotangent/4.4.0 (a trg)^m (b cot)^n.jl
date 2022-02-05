@testset "4.4.0 (a trg)^m (b cot)^n" begin
    @variables a, b, c, d, e, f, m, n, p, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cot(c+d*x)^n=#


    @test_int [cot(a + b*x)^1, x, 1, log(sin(a + b*x))/b]
    @test_int [cot(a + b*x)^2, x, 2, -x - cot(a + b*x)/b]
    @test_int [cot(a + b*x)^3, x, 2, -(cot(a + b*x)^2/(2*b)) - log(sin(a + b*x))/b]
    @test_int [cot(a + b*x)^4, x, 3, x + cot(a + b*x)/b - cot(a + b*x)^3/(3*b)]
    @test_int [cot(a + b*x)^5, x, 3, cot(a + b*x)^2/(2*b) - cot(a + b*x)^4/(4*b) + log(sin(a + b*x))/b]
    @test_int [cot(a + b*x)^6, x, 4, -x - cot(a + b*x)/b + cot(a + b*x)^3/(3*b) - cot(a + b*x)^5/(5*b)]
    @test_int [cot(a + b*x)^7, x, 4, -(cot(a + b*x)^2/(2*b)) + cot(a + b*x)^4/(4*b) - cot(a + b*x)^6/(6*b) - log(sin(a + b*x))/b]
    @test_int [cot(a + b*x)^8, x, 5, x + cot(a + b*x)/b - cot(a + b*x)^3/(3*b) + cot(a + b*x)^5/(5*b) - cot(a + b*x)^7/(7*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x))^(n/2)=#


    @test_int [(c*cot(a + b*x))^(7/2), x, 13, (c^(7/2)*atan(1 - (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c)))/(sqrt(2)*b) - (c^(7/2)*atan(1 + (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c)))/(sqrt(2)*b) + (2*c^3*sqrt(c*cot(a + b*x)))/b - (2*c*(c*cot(a + b*x))^(5/2))/(5*b) + (c^(7/2)*log(sqrt(c) + sqrt(c)*cot(a + b*x) - sqrt(2)*sqrt(c*cot(a + b*x))))/(2*sqrt(2)*b) - (c^(7/2)*log(sqrt(c) + sqrt(c)*cot(a + b*x) + sqrt(2)*sqrt(c*cot(a + b*x))))/(2*sqrt(2)*b)]
    @test_int [(c*cot(a + b*x))^(5/2), x, 12, -((c^(5/2)*atan(1 - (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c)))/(sqrt(2)*b)) + (c^(5/2)*atan(1 + (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c)))/(sqrt(2)*b) - (2*c*(c*cot(a + b*x))^(3/2))/(3*b) + (c^(5/2)*log(sqrt(c) + sqrt(c)*cot(a + b*x) - sqrt(2)*sqrt(c*cot(a + b*x))))/(2*sqrt(2)*b) - (c^(5/2)*log(sqrt(c) + sqrt(c)*cot(a + b*x) + sqrt(2)*sqrt(c*cot(a + b*x))))/(2*sqrt(2)*b)]
    @test_int [(c*cot(a + b*x))^(3/2), x, 12, -((c^(3/2)*atan(1 - (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c)))/(sqrt(2)*b)) + (c^(3/2)*atan(1 + (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c)))/(sqrt(2)*b) - (2*c*sqrt(c*cot(a + b*x)))/b - (c^(3/2)*log(sqrt(c) + sqrt(c)*cot(a + b*x) - sqrt(2)*sqrt(c*cot(a + b*x))))/(2*sqrt(2)*b) + (c^(3/2)*log(sqrt(c) + sqrt(c)*cot(a + b*x) + sqrt(2)*sqrt(c*cot(a + b*x))))/(2*sqrt(2)*b)]
    @test_int [(c*cot(a + b*x))^(1/2), x, 11, (sqrt(c)*atan(1 - (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c)))/(sqrt(2)*b) - (sqrt(c)*atan(1 + (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c)))/(sqrt(2)*b) - (sqrt(c)*log(sqrt(c) + sqrt(c)*cot(a + b*x) - sqrt(2)*sqrt(c*cot(a + b*x))))/(2*sqrt(2)*b) + (sqrt(c)*log(sqrt(c) + sqrt(c)*cot(a + b*x) + sqrt(2)*sqrt(c*cot(a + b*x))))/(2*sqrt(2)*b)]
    @test_int [1/(c*cot(a + b*x))^(1/2), x, 11, atan(1 - (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c))/(sqrt(2)*b*sqrt(c)) - atan(1 + (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c))/(sqrt(2)*b*sqrt(c)) + log(sqrt(c) + sqrt(c)*cot(a + b*x) - sqrt(2)*sqrt(c*cot(a + b*x)))/(2*sqrt(2)*b*sqrt(c)) - log(sqrt(c) + sqrt(c)*cot(a + b*x) + sqrt(2)*sqrt(c*cot(a + b*x)))/(2*sqrt(2)*b*sqrt(c))]
    @test_int [1/(c*cot(a + b*x))^(3/2), x, 12, -(atan(1 - (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c))/(sqrt(2)*b*c^(3/2))) + atan(1 + (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c))/(sqrt(2)*b*c^(3/2)) + 2/(b*c*sqrt(c*cot(a + b*x))) + log(sqrt(c) + sqrt(c)*cot(a + b*x) - sqrt(2)*sqrt(c*cot(a + b*x)))/(2*sqrt(2)*b*c^(3/2)) - log(sqrt(c) + sqrt(c)*cot(a + b*x) + sqrt(2)*sqrt(c*cot(a + b*x)))/(2*sqrt(2)*b*c^(3/2))]
    @test_int [1/(c*cot(a + b*x))^(5/2), x, 12, -(atan(1 - (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c))/(sqrt(2)*b*c^(5/2))) + atan(1 + (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c))/(sqrt(2)*b*c^(5/2)) + 2/(3*b*c*(c*cot(a + b*x))^(3/2)) - log(sqrt(c) + sqrt(c)*cot(a + b*x) - sqrt(2)*sqrt(c*cot(a + b*x)))/(2*sqrt(2)*b*c^(5/2)) + log(sqrt(c) + sqrt(c)*cot(a + b*x) + sqrt(2)*sqrt(c*cot(a + b*x)))/(2*sqrt(2)*b*c^(5/2))]
    @test_int [1/(c*cot(a + b*x))^(7/2), x, 13, atan(1 - (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c))/(sqrt(2)*b*c^(7/2)) - atan(1 + (sqrt(2)*sqrt(c*cot(a + b*x)))/sqrt(c))/(sqrt(2)*b*c^(7/2)) + 2/(5*b*c*(c*cot(a + b*x))^(5/2)) - 2/(b*c^3*sqrt(c*cot(a + b*x))) - log(sqrt(c) + sqrt(c)*cot(a + b*x) - sqrt(2)*sqrt(c*cot(a + b*x)))/(2*sqrt(2)*b*c^(7/2)) + log(sqrt(c) + sqrt(c)*cot(a + b*x) + sqrt(2)*sqrt(c*cot(a + b*x)))/(2*sqrt(2)*b*c^(7/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x))^(n/3)=#


    @test_int [(c*cot(a + b*x))^(4/3), x, 13, (c^(4/3)*atan((c*cot(a + b*x))^(1/3)/c^(1/3)))/b - (c^(4/3)*atan(sqrt(3) - (2*(c*cot(a + b*x))^(1/3))/c^(1/3)))/(2*b) + (c^(4/3)*atan(sqrt(3) + (2*(c*cot(a + b*x))^(1/3))/c^(1/3)))/(2*b) - (3*c*(c*cot(a + b*x))^(1/3))/b - (sqrt(3)*c^(4/3)*log(c^(2/3) - sqrt(3)*c^(1/3)*(c*cot(a + b*x))^(1/3) + (c*cot(a + b*x))^(2/3)))/(4*b) + (sqrt(3)*c^(4/3)*log(c^(2/3) + sqrt(3)*c^(1/3)*(c*cot(a + b*x))^(1/3) + (c*cot(a + b*x))^(2/3)))/(4*b)]
    @test_int [(c*cot(a + b*x))^(2/3), x, 12, -((c^(2/3)*atan((c*cot(a + b*x))^(1/3)/c^(1/3)))/b) + (c^(2/3)*atan(sqrt(3) - (2*(c*cot(a + b*x))^(1/3))/c^(1/3)))/(2*b) - (c^(2/3)*atan(sqrt(3) + (2*(c*cot(a + b*x))^(1/3))/c^(1/3)))/(2*b) - (sqrt(3)*c^(2/3)*log(c^(2/3) - sqrt(3)*c^(1/3)*(c*cot(a + b*x))^(1/3) + (c*cot(a + b*x))^(2/3)))/(4*b) + (sqrt(3)*c^(2/3)*log(c^(2/3) + sqrt(3)*c^(1/3)*(c*cot(a + b*x))^(1/3) + (c*cot(a + b*x))^(2/3)))/(4*b)]
    @test_int [(c*cot(a + b*x))^(1/3), x, 9, (sqrt(3)*c^(1/3)*atan((c^(2/3) - 2*(c*cot(a + b*x))^(2/3))/(sqrt(3)*c^(2/3))))/(2*b) + (c^(1/3)*log(c^(2/3) + (c*cot(a + b*x))^(2/3)))/(2*b) - (c^(1/3)*log(c^(4/3) - c^(2/3)*(c*cot(a + b*x))^(2/3) + (c*cot(a + b*x))^(4/3)))/(4*b)]
    @test_int [1/(c*cot(a + b*x))^(1/3), x, 9, (sqrt(3)*atan((c^(2/3) - 2*(c*cot(a + b*x))^(2/3))/(sqrt(3)*c^(2/3))))/(2*b*c^(1/3)) - log(c^(2/3) + (c*cot(a + b*x))^(2/3))/(2*b*c^(1/3)) + log(c^(4/3) - c^(2/3)*(c*cot(a + b*x))^(2/3) + (c*cot(a + b*x))^(4/3))/(4*b*c^(1/3))]
    @test_int [1/(c*cot(a + b*x))^(2/3), x, 12, -(atan((c*cot(a + b*x))^(1/3)/c^(1/3))/(b*c^(2/3))) + atan(sqrt(3) - (2*(c*cot(a + b*x))^(1/3))/c^(1/3))/(2*b*c^(2/3)) - atan(sqrt(3) + (2*(c*cot(a + b*x))^(1/3))/c^(1/3))/(2*b*c^(2/3)) + (sqrt(3)*log(c^(2/3) - sqrt(3)*c^(1/3)*(c*cot(a + b*x))^(1/3) + (c*cot(a + b*x))^(2/3)))/(4*b*c^(2/3)) - (sqrt(3)*log(c^(2/3) + sqrt(3)*c^(1/3)*(c*cot(a + b*x))^(1/3) + (c*cot(a + b*x))^(2/3)))/(4*b*c^(2/3))]
    @test_int [1/(c*cot(a + b*x))^(4/3), x, 13, atan((c*cot(a + b*x))^(1/3)/c^(1/3))/(b*c^(4/3)) - atan(sqrt(3) - (2*(c*cot(a + b*x))^(1/3))/c^(1/3))/(2*b*c^(4/3)) + atan(sqrt(3) + (2*(c*cot(a + b*x))^(1/3))/c^(1/3))/(2*b*c^(4/3)) + 3/(b*c*(c*cot(a + b*x))^(1/3)) + (sqrt(3)*log(c^(2/3) - sqrt(3)*c^(1/3)*(c*cot(a + b*x))^(1/3) + (c*cot(a + b*x))^(2/3)))/(4*b*c^(4/3)) - (sqrt(3)*log(c^(2/3) + sqrt(3)*c^(1/3)*(c*cot(a + b*x))^(1/3) + (c*cot(a + b*x))^(2/3)))/(4*b*c^(4/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x))^n*with*n*symbolic=#


    @test_int [cot(a + b*x)^n, x, 2, -((cot(a + b*x)^(1 + n)*Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, -cot(a + b*x)^2))/(b*(1 + n)))]


    @test_int [(b*cot(c + d*x))^n, x, 2, -(((b*cot(c + d*x))^(1 + n)*Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, -cot(c + d*x)^2))/(b*d*(1 + n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x)^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x)^2)^(n/2)=#


    @test_int [(a*cot(x)^2)^(3/2),x, 3, (-(1/2))*a*cot(x)*sqrt(a*cot(x)^2) - a*sqrt(a*cot(x)^2)*log(sin(x))*tan(x)]
    @test_int [sqrt(a*cot(x)^2), x, 2, sqrt(a*cot(x)^2)*log(sin(x))*tan(x)]
    @test_int [1/sqrt(a*cot(x)^2), x, 2, -((cot(x)*log(cos(x)))/sqrt(a*cot(x)^2))]
    @test_int [1/(a*cot(x)^2)^(3/2),x, 3, (cot(x)*log(cos(x)))/(a*sqrt(a*cot(x)^2)) + tan(x)/(2*a*sqrt(a*cot(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x)^3)^(n/2)=#


    @test_int [(a*cot(x)^3)^(3/2), x, 14, (2/3)*a*sqrt(a*cot(x)^3) + (a*atan(1 - sqrt(2)*sqrt(cot(x)))*sqrt(a*cot(x)^3))/(sqrt(2)*cot(x)^(3/2)) - (a*atan(1 + sqrt(2)*sqrt(cot(x)))*sqrt(a*cot(x)^3))/(sqrt(2)*cot(x)^(3/2)) - (2/7)*a*cot(x)^2*sqrt(a*cot(x)^3) - (a*sqrt(a*cot(x)^3)*log(1 - sqrt(2)*sqrt(cot(x)) + cot(x)))/(2*sqrt(2)*cot(x)^(3/2)) + (a*sqrt(a*cot(x)^3)*log(1 + sqrt(2)*sqrt(cot(x)) + cot(x)))/(2*sqrt(2)*cot(x)^(3/2))]
    @test_int [sqrt(a*cot(x)^3), x, 13, -((atan(1 - sqrt(2)*sqrt(cot(x)))*sqrt(a*cot(x)^3))/(sqrt(2)*cot(x)^(3/2))) + (atan(1 + sqrt(2)*sqrt(cot(x)))*sqrt(a*cot(x)^3))/(sqrt(2)*cot(x)^(3/2)) - (sqrt(a*cot(x)^3)*log(1 - sqrt(2)*sqrt(cot(x)) + cot(x)))/(2*sqrt(2)*cot(x)^(3/2)) + (sqrt(a*cot(x)^3)*log(1 + sqrt(2)*sqrt(cot(x)) + cot(x)))/(2*sqrt(2)*cot(x)^(3/2)) - 2*sqrt(a*cot(x)^3)*tan(x)]
    @test_int [1/sqrt(a*cot(x)^3), x, 13, (2*cot(x))/sqrt(a*cot(x)^3) - (atan(1 - sqrt(2)*sqrt(cot(x)))*cot(x)^(3/2))/(sqrt(2)*sqrt(a*cot(x)^3)) + (atan(1 + sqrt(2)*sqrt(cot(x)))*cot(x)^(3/2))/(sqrt(2)*sqrt(a*cot(x)^3)) + (cot(x)^(3/2)*log(1 - sqrt(2)*sqrt(cot(x)) + cot(x)))/(2*sqrt(2)*sqrt(a*cot(x)^3)) - (cot(x)^(3/2)*log(1 + sqrt(2)*sqrt(cot(x)) + cot(x)))/(2*sqrt(2)*sqrt(a*cot(x)^3))]
    @test_int [1/(a*cot(x)^3)^(3/2),x, 14, -(2/(3*a*sqrt(a*cot(x)^3))) + (atan(1 - sqrt(2)*sqrt(cot(x)))*cot(x)^(3/2))/(sqrt(2)*a*sqrt(a*cot(x)^3)) - (atan(1 + sqrt(2)*sqrt(cot(x)))*cot(x)^(3/2))/(sqrt(2)*a*sqrt(a*cot(x)^3)) + (cot(x)^(3/2)*log(1 - sqrt(2)*sqrt(cot(x)) + cot(x)))/(2*sqrt(2)*a*sqrt(a*cot(x)^3)) - (cot(x)^(3/2)*log(1 + sqrt(2)*sqrt(cot(x)) + cot(x)))/(2*sqrt(2)*a*sqrt(a*cot(x)^3)) + (2*tan(x)^2)/(7*a*sqrt(a*cot(x)^3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x)^4)^(n/2)=#


    @test_int [(a*cot(x)^4)^(3/2),x, 5, (1/3)*a*cot(x)*sqrt(a*cot(x)^4) - (1/5)*a*cot(x)^3*sqrt(a*cot(x)^4) - a*sqrt(a*cot(x)^4)*tan(x) - a*x*sqrt(a*cot(x)^4)*tan(x)^2]
    @test_int [sqrt(a*cot(x)^4), x, 3, (-sqrt(a*cot(x)^4))*tan(x) - x*sqrt(a*cot(x)^4)*tan(x)^2]
    @test_int [1/sqrt(a*cot(x)^4), x, 3, cot(x)/sqrt(a*cot(x)^4) - (x*cot(x)^2)/sqrt(a*cot(x)^4)]
    @test_int [1/(a*cot(x)^4)^(3/2),x, 5, cot(x)/(a*sqrt(a*cot(x)^4)) - (x*cot(x)^2)/(a*sqrt(a*cot(x)^4)) - tan(x)/(3*a*sqrt(a*cot(x)^4)) + tan(x)^3/(5*a*sqrt(a*cot(x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*cot(c+d*x)^p)^n*with*n*symbolic=#


    @test_int [(b*cot(c + d*x)^p)^n, x, 3, -((cot(c + d*x)*(b*cot(c + d*x)^p)^n*Hypergeometric2F1(1, (1/2)*(1 + n*p), (1/2)*(3 + n*p), -cot(c + d*x)^2))/(d*(1 + n*p)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*(b*cot(c+d*x))^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*(b*cot(c+d*x))^p)^n*with*n*symbolic=#


    @test_int [(a*(b*cot(c + d*x))^p)^n, x, 3, -((cot(c + d*x)*(a*(b*cot(c + d*x))^p)^n*Hypergeometric2F1(1, (1/2)*(1 + n*p), (1/2)*(3 + n*p), -cot(c + d*x)^2))/(d*(1 + n*p)))]


    #= ::Title:: =#
    #=Integrands*of*the*form*(a*Trg(e+f*x))^m*(b*cot(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*cot(e+f*x))^n=#


    @test_int [(a*sin(e + f*x))^m*(b*cot(e + f*x))^n, x, 2, -(((b*cot(e + f*x))^(1 + n)*Hypergeometric2F1((1 + n)/2, (1/2)*(1 - m + n), (3 + n)/2, cos(e + f*x)^2)*(a*sin(e + f*x))^m*(sin(e + f*x)^2)^((1/2)*(1 - m + n)))/(b*f*(1 + n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cot(e+f*x))^n=#


    @test_int [(a*cos(e + f*x))^m*(b*cot(e + f*x))^n, x, 2, -(((a*cos(e + f*x))^m*(b*cot(e + f*x))^(1 + n)*Hypergeometric2F1((1 + n)/2, (1/2)*(1 + m + n), (1/2)*(3 + m + n), cos(e + f*x)^2)*(sin(e + f*x)^2)^((1 + n)/2))/(b*f*(1 + m + n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cot(e+f*x))^m*(b*cot(e+f*x))^n=#


    @test_int [(a*cot(e + f*x))^m*(b*cot(e + f*x))^n, x, 3, -(((a*cot(e + f*x))^(1 + m)*(b*cot(e + f*x))^n*Hypergeometric2F1(1, (1/2)*(1 + m + n), (1/2)*(3 + m + n), -cot(e + f*x)^2))/(a*f*(1 + m + n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^m*(b*cot(e+f*x))^n=#


    @test_int [(a*sec(e + f*x))^m*(b*cot(e + f*x))^n, x, 3, -(((b*cot(e + f*x))^(1 + n)*Hypergeometric2F1((1 + n)/2, (1/2)*(1 - m + n), (1/2)*(3 - m + n), cos(e + f*x)^2)*(a*sec(e + f*x))^m*(sin(e + f*x)^2)^((1 + n)/2))/(b*f*(1 - m + n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^m*(b*cot(e+f*x))^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*csc(e+f*x)^m*(b*cot(e+f*x))^(n/2)=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^(m/2)*(b*cot(e+f*x))^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^m*(b*cot(e+f*x))^n*with*n*symbolic=#


    @test_int [csc(e + f*x)^6*(d*cot(e + f*x))^n, x, 3, -((d*cot(e + f*x))^(1 + n)/(d*f*(1 + n))) - (2*(d*cot(e + f*x))^(3 + n))/(d^3*f*(3 + n)) - (d*cot(e + f*x))^(5 + n)/(d^5*f*(5 + n))]
    @test_int [csc(e + f*x)^4*(d*cot(e + f*x))^n, x, 3, -((d*cot(e + f*x))^(1 + n)/(d*f*(1 + n))) - (d*cot(e + f*x))^(3 + n)/(d^3*f*(3 + n))]
    @test_int [csc(e + f*x)^2*(d*cot(e + f*x))^n, x, 2, -((d*cot(e + f*x))^(1 + n)/(d*f*(1 + n)))]
    @test_int [sin(e + f*x)^2*(d*cot(e + f*x))^n, x, 2, -(((d*cot(e + f*x))^(1 + n)*Hypergeometric2F1(2, (1 + n)/2, (3 + n)/2, -cot(e + f*x)^2))/(d*f*(1 + n)))]
    @test_int [sin(e + f*x)^4*(d*cot(e + f*x))^n, x, 2, -(((d*cot(e + f*x))^(1 + n)*Hypergeometric2F1(3, (1 + n)/2, (3 + n)/2, -cot(e + f*x)^2))/(d*f*(1 + n)))]

    @test_int [csc(e + f*x)^3*(d*cot(e + f*x))^n, x, 1, -(((d*cot(e + f*x))^(1 + n)*csc(e + f*x)^3*Hypergeometric2F1((1 + n)/2, (4 + n)/2, (3 + n)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^((4 + n)/2))/(d*f*(1 + n)))]
    @test_int [csc(e + f*x)^1*(d*cot(e + f*x))^n, x, 1, -(((d*cot(e + f*x))^(1 + n)*csc(e + f*x)*Hypergeometric2F1((1 + n)/2, (2 + n)/2, (3 + n)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^((2 + n)/2))/(d*f*(1 + n)))]
    @test_int [sin(e + f*x)^1*(d*cot(e + f*x))^n, x, 1, -(((d*cot(e + f*x))^(1 + n)*Hypergeometric2F1(n/2, (1 + n)/2, (3 + n)/2, cos(e + f*x)^2)*sin(e + f*x)*(sin(e + f*x)^2)^(n/2))/(d*f*(1 + n)))]
    @test_int [sin(e + f*x)^3*(d*cot(e + f*x))^n, x, 1, -(((d*cot(e + f*x))^(1 + n)*Hypergeometric2F1((1/2)*(-2 + n), (1 + n)/2, (3 + n)/2, cos(e + f*x)^2)*sin(e + f*x)^3*(sin(e + f*x)^2)^((1/2)*(-2 + n)))/(d*f*(1 + n)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^m*(b*cot(e+f*x))^n*with*m*and*n*symbolic=#


    @test_int [(a*csc(e + f*x))^m*(b*cot(e + f*x))^n, x, 1, -(((b*cot(e + f*x))^(1 + n)*(a*csc(e + f*x))^m*Hypergeometric2F1((1 + n)/2, (1/2)*(1 + m + n), (3 + n)/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^((1/2)*(1 + m + n)))/(b*f*(1 + n)))]
    end
