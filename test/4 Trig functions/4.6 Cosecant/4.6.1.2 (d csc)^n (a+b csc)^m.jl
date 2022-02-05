@testset "4.6.1.2 (d csc)^n (a+b csc)^m" begin
    @variables a, b, c, d, e, f, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(a+b*csc(e+f*x))^m*(d*csc(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*csc(e+f*x))^m*(d*csc(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csc(e+f*x)^n*(a+a*csc(e+f*x))^m=#


    @test_int [csc(x)^5/(a + a*csc(x)), x, 6, (3*atanh(cos(x)))/(2*a) - (4*cot(x))/a - (4*cot(x)^3)/(3*a) + (3*cot(x)*csc(x))/(2*a) + (cot(x)*csc(x)^3)/(a + a*csc(x))]
    @test_int [csc(x)^4/(a + a*csc(x)), x, 6, -((3*atanh(cos(x)))/(2*a)) + (2*cot(x))/a - (3*cot(x)*csc(x))/(2*a) + (cot(x)*csc(x)^2)/(a + a*csc(x))]
    @test_int [csc(x)^3/(a + a*csc(x)), x, 4, atanh(cos(x))/a - cot(x)/a - cot(x)/(a + a*csc(x))]
    @test_int [csc(x)^2/(a + a*csc(x)), x, 3, -(atanh(cos(x))/a) + cot(x)/(a + a*csc(x))]
    @test_int [csc(x)^1/(a + a*csc(x)), x, 1, -(cot(x)/(a + a*csc(x)))]
    @test_int [csc(c + d*x)^0/(a + a*csc(c + d*x)), x, 2, x/a + cot(c + d*x)/(d*(a + a*csc(c + d*x)))]
    @test_int [sin(x)^1/(a + a*csc(x)), x, 4, -(x/a) - (2*cos(x))/a + cos(x)/(a + a*csc(x))]
    @test_int [sin(x)^2/(a + a*csc(x)), x, 5, (3*x)/(2*a) + (2*cos(x))/a - (3*cos(x)*sin(x))/(2*a) + (cos(x)*sin(x))/(a + a*csc(x))]
    @test_int [sin(x)^3/(a + a*csc(x)), x, 6, -((3*x)/(2*a)) - (4*cos(x))/a + (4*cos(x)^3)/(3*a) + (3*cos(x)*sin(x))/(2*a) + (cos(x)*sin(x)^2)/(a + a*csc(x))]
    @test_int [sin(x)^4/(a + a*csc(x)), x, 7, (15*x)/(8*a) + (4*cos(x))/a - (4*cos(x)^3)/(3*a) - (15*cos(x)*sin(x))/(8*a) - (5*cos(x)*sin(x)^3)/(4*a) + (cos(x)*sin(x)^3)/(a + a*csc(x))]


    @test_int [csc(c + d*x)^0/(a + a*csc(c + d*x))^2, x, 3, x/a^2 + (4*cot(c + d*x))/(3*a^2*d*(1 + csc(c + d*x))) + cot(c + d*x)/(3*d*(a + a*csc(c + d*x))^2)]


    @test_int [csc(c + d*x)^0/(a + a*csc(c + d*x))^3, x, 4, x/a^3 + cot(c + d*x)/(5*d*(a + a*csc(c + d*x))^3) + (7*cot(c + d*x))/(15*a*d*(a + a*csc(c + d*x))^2) + (22*cot(c + d*x))/(15*d*(a^3 + a^3*csc(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csc(e+f*x)^n*(a+a*csc(e+f*x))^(m/2)=#


    @test_int [(a + a*csc(x))^(5/2), x, 5, -2*a^(5/2)*atan((sqrt(a)*cot(x))/sqrt(a + a*csc(x))) - (14*a^3*cot(x))/(3*sqrt(a + a*csc(x))) - (2/3)*a^2*cot(x)*sqrt(a + a*csc(x))]
    @test_int [(a + a*csc(x))^(3/2), x, 4, -2*a^(3/2)*atan((sqrt(a)*cot(x))/sqrt(a + a*csc(x))) - (2*a^2*cot(x))/sqrt(a + a*csc(x))]
    @test_int [(a + a*csc(x))^(1/2), x, 2, -2*sqrt(a)*atan((sqrt(a)*cot(x))/sqrt(a + a*csc(x)))]
    @test_int [1/(a + a*csc(x))^(1/2), x, 5, -((2*atan((sqrt(a)*cot(x))/sqrt(a + a*csc(x))))/sqrt(a)) + (sqrt(2)*atan((sqrt(a)*cot(x))/(sqrt(2)*sqrt(a + a*csc(x)))))/sqrt(a)]
    @test_int [1/(a + a*csc(x))^(3/2), x, 6, -((2*atan((sqrt(a)*cot(x))/sqrt(a + a*csc(x))))/a^(3/2)) + (5*atan((sqrt(a)*cot(x))/(sqrt(2)*sqrt(a + a*csc(x)))))/(2*sqrt(2)*a^(3/2)) + cot(x)/(2*(a + a*csc(x))^(3/2))]
    @test_int [1/(a + a*csc(x))^(5/2), x, 7, -((2*atan((sqrt(a)*cot(x))/sqrt(a + a*csc(x))))/a^(5/2)) + (43*atan((sqrt(a)*cot(x))/(sqrt(2)*sqrt(a + a*csc(x)))))/(16*sqrt(2)*a^(5/2)) + cot(x)/(4*(a + a*csc(x))^(5/2)) + (11*cot(x))/(16*a*(a + a*csc(x))^(3/2))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^(n/2)*(a+a*csc(e+f*x))^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^(n/2)*(a+a*csc(e+f*x))^(m/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sqrt(csc(e + f*x))*sqrt(a + a*csc(e + f*x)), x, 2, -((2*sqrt(a)*asinh((sqrt(a)*cot(e + f*x))/sqrt(a + a*csc(e + f*x))))/f)]
    @test_int [sqrt(-csc(e + f*x))*sqrt(a - a*csc(e + f*x)), x, 2, -((2*sqrt(a)*asinh((sqrt(a)*cot(e + f*x))/sqrt(a - a*csc(e + f*x))))/f)]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^(n/3)*(a+a*csc(e+f*x))^(m/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sqrt(a + a*csc(c + d*x))*csc(c + d*x)^(4/3), x, 4, -((6*a*cos(c + d*x)*csc(c + d*x)^(4/3))/(5*d*sqrt(a + a*csc(c + d*x)))) - (4*3^(3/4)*sqrt(2 + sqrt(3))*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticF(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(5*d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x)))]
    @test_int [sqrt(a + a*csc(c + d*x))*csc(c + d*x)^(1/3), x, 3, -((2*3^(3/4)*sqrt(2 + sqrt(3))*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticF(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x))))]
    @test_int [sqrt(a + a*csc(c + d*x))/csc(c + d*x)^(2/3), x, 4, -((3*a*cos(c + d*x)*csc(c + d*x)^(1/3))/(2*d*sqrt(a + a*csc(c + d*x)))) - (3^(3/4)*sqrt(2 + sqrt(3))*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticF(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(2*d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x)))]

    @test_int [sqrt(a + a*csc(c + d*x))*csc(c + d*x)^(5/3), x, 6, (24*a*cot(c + d*x))/(7*d*(1 + sqrt(3) - csc(c + d*x)^(1/3))*sqrt(a + a*csc(c + d*x))) - (6*a*cos(c + d*x)*csc(c + d*x)^(5/3))/(7*d*sqrt(a + a*csc(c + d*x))) - (12*3^(1/4)*sqrt(2 - sqrt(3))*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticE(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(7*d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x))) + (8*sqrt(2)*3^(3/4)*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticF(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(7*d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x)))]
    @test_int [sqrt(a + a*csc(c + d*x))*csc(c + d*x)^(2/3), x, 5, (6*a*cot(c + d*x))/(d*(1 + sqrt(3) - csc(c + d*x)^(1/3))*sqrt(a + a*csc(c + d*x))) - (3*3^(1/4)*sqrt(2 - sqrt(3))*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticE(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x))) + (2*sqrt(2)*3^(3/4)*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticF(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x)))]
    @test_int [sqrt(a + a*csc(c + d*x))/csc(c + d*x)^(1/3), x, 6, -((3*a*cot(c + d*x))/(d*(1 + sqrt(3) - csc(c + d*x)^(1/3))*sqrt(a + a*csc(c + d*x)))) - (3*a*cos(c + d*x)*csc(c + d*x)^(2/3))/(d*sqrt(a + a*csc(c + d*x))) + (3*3^(1/4)*sqrt(2 - sqrt(3))*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticE(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(2*d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x))) - (sqrt(2)*3^(3/4)*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticF(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x)))]
    @test_int [sqrt(a + a*csc(c + d*x))/csc(c + d*x)^(4/3), x, 7, -((15*a*cot(c + d*x))/(8*d*(1 + sqrt(3) - csc(c + d*x)^(1/3))*sqrt(a + a*csc(c + d*x)))) - (3*a*cos(c + d*x))/(4*d*csc(c + d*x)^(1/3)*sqrt(a + a*csc(c + d*x))) - (15*a*cos(c + d*x)*csc(c + d*x)^(2/3))/(8*d*sqrt(a + a*csc(c + d*x))) + (15*3^(1/4)*sqrt(2 - sqrt(3))*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticE(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(16*d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x))) - (5*3^(3/4)*a^2*cot(c + d*x)*(1 - csc(c + d*x)^(1/3))*sqrt((1 + csc(c + d*x)^(1/3) + csc(c + d*x)^(2/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*EllipticF(asin((1 - sqrt(3) - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))), -7 - 4*sqrt(3)))/(4*sqrt(2)*d*sqrt((1 - csc(c + d*x)^(1/3))/(1 + sqrt(3) - csc(c + d*x)^(1/3))^2)*(a - a*csc(c + d*x))*sqrt(a + a*csc(c + d*x)))]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^n*(a+a*csc(e+f*x))^m*with*n*symbolic=#


    @test_int [csc(c + d*x)^n*sqrt(a + a*csc(c + d*x)), x, 2, -((2*a*cot(c + d*x)*Hypergeometric2F1(1/2, 1 - n, 3/2, 1 - csc(c + d*x)))/(d*sqrt(a + a*csc(c + d*x))))]
    @test_int [csc(c + d*x)^n*sqrt(a - a*csc(c + d*x)), x, 3, -((2*a*cos(c + d*x)*csc(c + d*x)^(1 + n)*Hypergeometric2F1(1/2, 1 - n, 3/2, 1 + csc(c + d*x)))/((-csc(c + d*x))^n*(d*sqrt(a - a*csc(c + d*x)))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^n*(a+a*csc(e+f*x))^m*with*m*symbolic=#


    @test_int [csc(e + f*x)^3*(a + a*csc(e + f*x))^m, x, 5, If($VersionNumber>=8, (cot(e + f*x)*(a + a*csc(e + f*x))^m)/(f*(2 + 3*m + m^2)) - (cot(e + f*x)*(a + a*csc(e + f*x))^(1 + m))/(a*f*(2 + m)) - (2^(1/2 + m)*(1 + m + m^2)*cot(e + f*x)*(1 + csc(e + f*x))^(-(1/2) - m)*(a + a*csc(e + f*x))^m*Hypergeometric2F1(1/2, 1/2 - m, 3/2, (1/2)*(1 - csc(e + f*x))))/(f*(1 + m)*(2 + m)), (cot(e + f*x)*(a + a*csc(e + f*x))^m)/(f*(2 + 3*m + m^2)) - (cot(e + f*x)*(a + a*csc(e + f*x))^(1 + m))/(a*f*(2 + m)) - (2^(1/2 + m)*(1 + m + m^2)*cot(e + f*x)*(1 + csc(e + f*x))^(-(1/2) - m)*(a + a*csc(e + f*x))^m*Hypergeometric2F1(1/2, 1/2 - m, 3/2, (1/2)*(1 - csc(e + f*x))))/(f*(2 + 3*m + m^2)))]
    @test_int [csc(e + f*x)^2*(a + a*csc(e + f*x))^m, x, 4, -((cot(e + f*x)*(a + a*csc(e + f*x))^m)/(f*(1 + m))) - (2^(1/2 + m)*m*cot(e + f*x)*(1 + csc(e + f*x))^(-(1/2) - m)*(a + a*csc(e + f*x))^m*Hypergeometric2F1(1/2, 1/2 - m, 3/2, (1/2)*(1 - csc(e + f*x))))/(f*(1 + m))]
    @test_int [csc(e + f*x)^1*(a + a*csc(e + f*x))^m, x, 3, -((2^(1/2 + m)*cot(e + f*x)*(1 + csc(e + f*x))^(-(1/2) - m)*(a + a*csc(e + f*x))^m*Hypergeometric2F1(1/2, 1/2 - m, 3/2, (1/2)*(1 - csc(e + f*x))))/f)]
    @test_int [csc(e + f*x)^0*(a + a*csc(e + f*x))^m, x, 3, -((sqrt(2)*AppellF1(1/2 + m, 1/2, 1, 3/2 + m, (1/2)*(1 + csc(e + f*x)), 1 + csc(e + f*x))*cot(e + f*x)*(a + a*csc(e + f*x))^m)/(f*(1 + 2*m)*sqrt(1 - csc(e + f*x))))]
    @test_int [sin(e + f*x)^1*(a + a*csc(e + f*x))^m, x, 3, (sqrt(2)*AppellF1(1/2 + m, 1/2, 2, 3/2 + m, (1/2)*(1 + csc(e + f*x)), 1 + csc(e + f*x))*cot(e + f*x)*(a + a*csc(e + f*x))^m)/(f*(1 + 2*m)*sqrt(1 - csc(e + f*x)))]
    @test_int [sin(e + f*x)^2*(a + a*csc(e + f*x))^m, x, 3, -((sqrt(2)*AppellF1(1/2 + m, 1/2, 3, 3/2 + m, (1/2)*(1 + csc(e + f*x)), 1 + csc(e + f*x))*cot(e + f*x)*(a + a*csc(e + f*x))^m)/(f*(1 + 2*m)*sqrt(1 - csc(e + f*x))))]


    #= ::Section:: =#
    #=Integrands*of*the*form*(a+a*csc(e+f*x))^m*(d*sin(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*csc(e+f*x))^m*(d*csc(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csc(e+f*x)^m*(a+b*csc(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(a + b*csc(c + d*x))^4, x, 6, a^4*x - (2*a*b*(2*a^2 + b^2)*atanh(cos(c + d*x)))/d - (b^2*(17*a^2 + 2*b^2)*cot(c + d*x))/(3*d) - (4*a*b^3*cot(c + d*x)*csc(c + d*x))/(3*d) - (b^2*cot(c + d*x)*(a + b*csc(c + d*x))^2)/(3*d)]
    @test_int [(a + b*csc(c + d*x))^3, x, 5, a^3*x - (b*(6*a^2 + b^2)*atanh(cos(c + d*x)))/(2*d) - (5*a*b^2*cot(c + d*x))/(2*d) - (b^2*cot(c + d*x)*(a + b*csc(c + d*x)))/(2*d)]
    @test_int [(a + b*csc(c + d*x))^2, x, 4, a^2*x - (2*a*b*atanh(cos(c + d*x)))/d - (b^2*cot(c + d*x))/d]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [csc(x)^5/(a + b*csc(x)), x, 9, (a*(2*a^2 + b^2)*atanh(cos(x)))/(2*b^4) - (2*a^4*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(b^4*sqrt(a^2 - b^2)) - ((3*a^2 + 2*b^2)*cot(x))/(3*b^3) + (a*cot(x)*csc(x))/(2*b^2) - (cot(x)*csc(x)^2)/(3*b)]
    @test_int [csc(x)^4/(a + b*csc(x)), x, 8, -(((2*a^2 + b^2)*atanh(cos(x)))/(2*b^3)) + (2*a^3*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(b^3*sqrt(a^2 - b^2)) + (a*cot(x))/b^2 - (cot(x)*csc(x))/(2*b)]
    @test_int [csc(x)^3/(a + b*csc(x)), x, 7, (a*atanh(cos(x)))/b^2 - (2*a^2*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(b^2*sqrt(a^2 - b^2)) - cot(x)/b]
    @test_int [csc(x)^2/(a + b*csc(x)), x, 6, -(atanh(cos(x))/b) + (2*a*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(b*sqrt(a^2 - b^2))]
    @test_int [csc(x)^1/(a + b*csc(x)), x, 4, -((2*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/sqrt(a^2 - b^2))]
    @test_int [csc(c + d*x)^0/(a + b*csc(c + d*x)), x, 4, x/a + (2*b*atanh((a + b*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a*sqrt(a^2 - b^2)*d)]
    @test_int [sin(x)^1/(a + b*csc(x)), x, 6, -((b*x)/a^2) - (2*b^2*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a^2*sqrt(a^2 - b^2)) - cos(x)/a]
    @test_int [sin(x)^2/(a + b*csc(x)), x, 7, ((a^2 + 2*b^2)*x)/(2*a^3) + (2*b^3*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a^3*sqrt(a^2 - b^2)) + (b*cos(x))/a^2 - (cos(x)*sin(x))/(2*a)]
    @test_int [sin(x)^3/(a + b*csc(x)), x, 8, -((b*(a^2 + 2*b^2)*x)/(2*a^4)) - (2*b^4*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a^4*sqrt(a^2 - b^2)) - ((2*a^2 + 3*b^2)*cos(x))/(3*a^3) + (b*cos(x)*sin(x))/(2*a^2) - (cos(x)*sin(x)^2)/(3*a)]
    @test_int [sin(x)^4/(a + b*csc(x)), x, 9, ((3*a^4 + 4*a^2*b^2 + 8*b^4)*x)/(8*a^5) + (2*b^5*atanh((a + b*tan(x/2))/sqrt(a^2 - b^2)))/(a^5*sqrt(a^2 - b^2)) + (b*(2*a^2 + 3*b^2)*cos(x))/(3*a^4) - ((3*a^2 + 4*b^2)*cos(x)*sin(x))/(8*a^3) + (b*cos(x)*sin(x)^2)/(3*a^2) - (cos(x)*sin(x)^3)/(4*a)]


    @test_int [1/(a + b*csc(c + d*x))^2, x, 6, x/a^2 + (2*b*(2*a^2 - b^2)*atanh((a + b*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^2*(a^2 - b^2)^(3/2)*d) - (b^2*cot(c + d*x))/(a*(a^2 - b^2)*d*(a + b*csc(c + d*x)))]
    @test_int [1/(a + b*csc(c + d*x))^3, x, 7, x/a^3 + (b*(6*a^4 - 5*a^2*b^2 + 2*b^4)*atanh((a + b*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^3*(a^2 - b^2)^(5/2)*d) - (b^2*cot(c + d*x))/(2*a*(a^2 - b^2)*d*(a + b*csc(c + d*x))^2) - (b^2*(5*a^2 - 2*b^2)*cot(c + d*x))/(2*a^2*(a^2 - b^2)^2*d*(a + b*csc(c + d*x)))]
    @test_int [1/(a + b*csc(c + d*x))^4, x, 8, x/a^4 + (b*(8*a^6 - 8*a^4*b^2 + 7*a^2*b^4 - 2*b^6)*atanh((a + b*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^4*(a^2 - b^2)^(7/2)*d) - (b^2*cot(c + d*x))/(3*a*(a^2 - b^2)*d*(a + b*csc(c + d*x))^3) - (b^2*(8*a^2 - 3*b^2)*cot(c + d*x))/(6*a^2*(a^2 - b^2)^2*d*(a + b*csc(c + d*x))^2) - (b^2*(26*a^4 - 17*a^2*b^2 + 6*b^4)*cot(c + d*x))/(6*a^3*(a^2 - b^2)^3*d*(a + b*csc(c + d*x)))]


    @test_int [1/(3 + 5*csc(c + d*x)), x, 2, -(x/12) - (5*atan(cos(c + d*x)/(3 + sin(c + d*x))))/(6*d)]
    @test_int [1/(5 + 3*csc(c + d*x)), x, 5, x/5 + (3*log(3*cos((1/2)*(c + d*x)) + sin((1/2)*(c + d*x))))/(20*d) - (3*log(cos((1/2)*(c + d*x)) + 3*sin((1/2)*(c + d*x))))/(20*d)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*csc(e+f*x)^m*(a+b*csc(e+f*x))^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*csc(e+f*x))^m*(d*csc(e+f*x))^n*with*m*symbolic=#


    @test_int [csc(e + f*x)^3*(a + b*csc(e + f*x))^m, x, 8, -((cot(e + f*x)*(a + b*csc(e + f*x))^(1 + m))/(b*f*(2 + m))) + (sqrt(2)*a*(a + b)*AppellF1(1/2, 1/2, -1 - m, 3/2, (1/2)*(1 - csc(e + f*x)), (b*(1 - csc(e + f*x)))/(a + b))*cot(e + f*x)*(a + b*csc(e + f*x))^m)/(((a + b*csc(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + csc(e + f*x)))) - (sqrt(2)*(a^2 + b^2*(1 + m))*AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - csc(e + f*x)), (b*(1 - csc(e + f*x)))/(a + b))*cot(e + f*x)*(a + b*csc(e + f*x))^m)/(((a + b*csc(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + csc(e + f*x))))]
    @test_int [csc(e + f*x)^2*(a + b*csc(e + f*x))^m, x, 7, -((sqrt(2)*(a + b)*AppellF1(1/2, 1/2, -1 - m, 3/2, (1/2)*(1 - csc(e + f*x)), (b*(1 - csc(e + f*x)))/(a + b))*cot(e + f*x)*(a + b*csc(e + f*x))^m)/(((a + b*csc(e + f*x))/(a + b))^m*(b*f*sqrt(1 + csc(e + f*x))))) + (sqrt(2)*a*AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - csc(e + f*x)), (b*(1 - csc(e + f*x)))/(a + b))*cot(e + f*x)*(a + b*csc(e + f*x))^m)/(((a + b*csc(e + f*x))/(a + b))^m*(b*f*sqrt(1 + csc(e + f*x))))]
    @test_int [csc(e + f*x)^1*(a + b*csc(e + f*x))^m, x, 3, -((sqrt(2)*AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - csc(e + f*x)), (b*(1 - csc(e + f*x)))/(a + b))*cot(e + f*x)*(a + b*csc(e + f*x))^m)/(((a + b*csc(e + f*x))/(a + b))^m*(f*sqrt(1 + csc(e + f*x)))))]
    @test_int [csc(e + f*x)^0*(a + b*csc(e + f*x))^m, x, 0, Unintegrable((a + b*csc(e + f*x))^m, x)]
    @test_int [sin(e + f*x)^1*(a + b*csc(e + f*x))^m, x, 0, Unintegrable((a + b*csc(e + f*x))^m*sin(e + f*x), x)]
    @test_int [sin(e + f*x)^2*(a + b*csc(e + f*x))^m, x, 0, Unintegrable((a + b*csc(e + f*x))^m*sin(e + f*x)^2, x)]


    #= ::Section:: =#
    #=Integrands*of*the*form*(a+b*csc(e+f*x))^m*(d*sin(e+f*x))^n=#
    end
