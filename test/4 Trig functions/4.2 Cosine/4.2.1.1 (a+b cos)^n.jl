@testset "4.2.1.1 (a+b cos)^n" begin
    @variables a, b, c, d, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*cos(c+d*x))^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a+a*cos(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+a*cos(c+d*x))^(n/2)=#


    @test_int [(a + a*cos(c + d*x))^(7/2), x, 4, (256*a^4*sin(c + d*x))/(35*d*sqrt(a + a*cos(c + d*x))) + (64*a^3*sqrt(a + a*cos(c + d*x))*sin(c + d*x))/(35*d) + (24*a^2*(a + a*cos(c + d*x))^(3/2)*sin(c + d*x))/(35*d) + (2*a*(a + a*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*d)]
    @test_int [(a + a*cos(c + d*x))^(5/2), x, 3, (64*a^3*sin(c + d*x))/(15*d*sqrt(a + a*cos(c + d*x))) + (16*a^2*sqrt(a + a*cos(c + d*x))*sin(c + d*x))/(15*d) + (2*a*(a + a*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d)]
    @test_int [(a + a*cos(c + d*x))^(3/2), x, 2, (8*a^2*sin(c + d*x))/(3*d*sqrt(a + a*cos(c + d*x))) + (2*a*sqrt(a + a*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [(a + a*cos(c + d*x))^(1/2), x, 1, (2*a*sin(c + d*x))/(d*sqrt(a + a*cos(c + d*x)))]
    @test_int [1/(a + a*cos(c + d*x))^(1/2), x, 2, (sqrt(2)*atanh((sqrt(a)*sin(c + d*x))/(sqrt(2)*sqrt(a + a*cos(c + d*x)))))/(sqrt(a)*d)]
    @test_int [1/(a + a*cos(c + d*x))^(3/2), x, 3, atanh((sqrt(a)*sin(c + d*x))/(sqrt(2)*sqrt(a + a*cos(c + d*x))))/(2*sqrt(2)*a^(3/2)*d) + sin(c + d*x)/(2*d*(a + a*cos(c + d*x))^(3/2))]
    @test_int [1/(a + a*cos(c + d*x))^(5/2), x, 4, (3*atanh((sqrt(a)*sin(c + d*x))/(sqrt(2)*sqrt(a + a*cos(c + d*x)))))/(16*sqrt(2)*a^(5/2)*d) + sin(c + d*x)/(4*d*(a + a*cos(c + d*x))^(5/2)) + (3*sin(c + d*x))/(16*a*d*(a + a*cos(c + d*x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+a*cos(c+d*x))^(n/3)=#


    @test_int [(a + a*cos(c + d*x))^(4/3), x, 2, (2*2^(5/6)*a*(a + a*cos(c + d*x))^(1/3)*Hypergeometric2F1(-(5/6), 1/2, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(d*(1 + cos(c + d*x))^(5/6))]
    @test_int [(a + a*cos(c + d*x))^(2/3), x, 2, (2*2^(1/6)*(a + a*cos(c + d*x))^(2/3)*Hypergeometric2F1(-(1/6), 1/2, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(d*(1 + cos(c + d*x))^(7/6))]
    @test_int [(a + a*cos(c + d*x))^(1/3), x, 2, (2^(5/6)*(a + a*cos(c + d*x))^(1/3)*Hypergeometric2F1(1/6, 1/2, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(d*(1 + cos(c + d*x))^(5/6))]
    @test_int [1/(a + a*cos(c + d*x))^(1/3), x, 2, (2^(1/6)*Hypergeometric2F1(1/2, 5/6, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(d*(1 + cos(c + d*x))^(1/6)*(a + a*cos(c + d*x))^(1/3))]
    @test_int [1/(a + a*cos(c + d*x))^(2/3), x, 2, ((1 + cos(c + d*x))^(1/6)*Hypergeometric2F1(1/2, 7/6, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(2^(1/6)*d*(a + a*cos(c + d*x))^(2/3))]
    @test_int [1/(a + a*cos(c + d*x))^(4/3), x, 2, (Hypergeometric2F1(1/2, 11/6, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(2^(5/6)*a*d*(1 + cos(c + d*x))^(1/6)*(a + a*cos(c + d*x))^(1/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+a*cos(c+d*x))^n*with*n*symbolic=#


    @test_int [(a + a*cos(c + d*x))^n, x, 2, (2^(1/2 + n)*(1 + cos(c + d*x))^(-(1/2) - n)*(a + a*cos(c + d*x))^n*Hypergeometric2F1(1/2, 1/2 - n, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/d]
    @test_int [(a - a*cos(c + d*x))^n, x, 2, -((2^(1/2 + n)*(1 - cos(c + d*x))^(-(1/2) - n)*(a - a*cos(c + d*x))^n*Hypergeometric2F1(1/2, 1/2 - n, 3/2, (1/2)*(1 + cos(c + d*x)))*sin(c + d*x))/d)]


    @test_int [(2 + 2*cos(c + d*x))^n, x, 1, (2^(1/2 + 2*n)*Hypergeometric2F1(1/2, 1/2 - n, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(d*sqrt(1 + cos(c + d*x)))]
    @test_int [(2 - 2*cos(c + d*x))^n, x, 1, -((2^(1/2 + 2*n)*Hypergeometric2F1(1/2, 1/2 - n, 3/2, (1/2)*(1 + cos(c + d*x)))*sin(c + d*x))/(d*sqrt(1 - cos(c + d*x))))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^n=#


    @test_int [1/(5 + 3*cos(c + d*x)), x, 1, x/4 - atan(sin(c + d*x)/(3 + cos(c + d*x)))/(2*d)]
    @test_int [1/(5 + 3*cos(c + d*x))^2, x, 3, (5*x)/64 - (5*atan(sin(c + d*x)/(3 + cos(c + d*x))))/(32*d) - (3*sin(c + d*x))/(16*d*(5 + 3*cos(c + d*x)))]
    @test_int [1/(5 + 3*cos(c + d*x))^3, x, 4, (59*x)/2048 - (59*atan(sin(c + d*x)/(3 + cos(c + d*x))))/(1024*d) - (3*sin(c + d*x))/(32*d*(5 + 3*cos(c + d*x))^2) - (45*sin(c + d*x))/(512*d*(5 + 3*cos(c + d*x)))]
    @test_int [1/(5 + 3*cos(c + d*x))^4, x, 5, (385*x)/32768 - (385*atan(sin(c + d*x)/(3 + cos(c + d*x))))/(16384*d) - sin(c + d*x)/(16*d*(5 + 3*cos(c + d*x))^3) - (25*sin(c + d*x))/(512*d*(5 + 3*cos(c + d*x))^2) - (311*sin(c + d*x))/(8192*d*(5 + 3*cos(c + d*x)))]


    @test_int [1/(5 - 3*cos(c + d*x)), x, 1, x/4 + atan(sin(c + d*x)/(3 - cos(c + d*x)))/(2*d)]
    @test_int [1/(5 - 3*cos(c + d*x))^2, x, 3, (5*x)/64 + (5*atan(sin(c + d*x)/(3 - cos(c + d*x))))/(32*d) + (3*sin(c + d*x))/(16*d*(5 - 3*cos(c + d*x)))]
    @test_int [1/(5 - 3*cos(c + d*x))^3, x, 4, (59*x)/2048 + (59*atan(sin(c + d*x)/(3 - cos(c + d*x))))/(1024*d) + (3*sin(c + d*x))/(32*d*(5 - 3*cos(c + d*x))^2) + (45*sin(c + d*x))/(512*d*(5 - 3*cos(c + d*x)))]
    @test_int [1/(5 - 3*cos(c + d*x))^4, x, 5, (385*x)/32768 + (385*atan(sin(c + d*x)/(3 - cos(c + d*x))))/(16384*d) + sin(c + d*x)/(16*d*(5 - 3*cos(c + d*x))^3) + (25*sin(c + d*x))/(512*d*(5 - 3*cos(c + d*x))^2) + (311*sin(c + d*x))/(8192*d*(5 - 3*cos(c + d*x)))]


    @test_int [1/(-5 + 3*cos(c + d*x)), x, 1, -(x/4) - atan(sin(c + d*x)/(3 - cos(c + d*x)))/(2*d)]
    @test_int [1/(-5 + 3*cos(c + d*x))^2, x, 3, (5*x)/64 + (5*atan(sin(c + d*x)/(3 - cos(c + d*x))))/(32*d) + (3*sin(c + d*x))/(16*d*(5 - 3*cos(c + d*x)))]
    @test_int [1/(-5 + 3*cos(c + d*x))^3, x, 4, -((59*x)/2048) - (59*atan(sin(c + d*x)/(3 - cos(c + d*x))))/(1024*d) - (3*sin(c + d*x))/(32*d*(5 - 3*cos(c + d*x))^2) - (45*sin(c + d*x))/(512*d*(5 - 3*cos(c + d*x)))]
    @test_int [1/(-5 + 3*cos(c + d*x))^4, x, 5, (385*x)/32768 + (385*atan(sin(c + d*x)/(3 - cos(c + d*x))))/(16384*d) + sin(c + d*x)/(16*d*(5 - 3*cos(c + d*x))^3) + (25*sin(c + d*x))/(512*d*(5 - 3*cos(c + d*x))^2) + (311*sin(c + d*x))/(8192*d*(5 - 3*cos(c + d*x)))]


    @test_int [1/(-5 - 3*cos(c + d*x)), x, 1, -(x/4) + atan(sin(c + d*x)/(3 + cos(c + d*x)))/(2*d)]
    @test_int [1/(-5 - 3*cos(c + d*x))^2, x, 3, (5*x)/64 - (5*atan(sin(c + d*x)/(3 + cos(c + d*x))))/(32*d) - (3*sin(c + d*x))/(16*d*(5 + 3*cos(c + d*x)))]
    @test_int [1/(-5 - 3*cos(c + d*x))^3, x, 4, -((59*x)/2048) + (59*atan(sin(c + d*x)/(3 + cos(c + d*x))))/(1024*d) + (3*sin(c + d*x))/(32*d*(5 + 3*cos(c + d*x))^2) + (45*sin(c + d*x))/(512*d*(5 + 3*cos(c + d*x)))]
    @test_int [1/(-5 - 3*cos(c + d*x))^4, x, 5, (385*x)/32768 - (385*atan(sin(c + d*x)/(3 + cos(c + d*x))))/(16384*d) - sin(c + d*x)/(16*d*(5 + 3*cos(c + d*x))^3) - (25*sin(c + d*x))/(512*d*(5 + 3*cos(c + d*x))^2) - (311*sin(c + d*x))/(8192*d*(5 + 3*cos(c + d*x)))]


    @test_int [1/(3 + 5*cos(c + d*x)), x, 2, -(log(2*cos((1/2)*(c + d*x)) - sin((1/2)*(c + d*x)))/(4*d)) + log(2*cos((1/2)*(c + d*x)) + sin((1/2)*(c + d*x)))/(4*d)]
    @test_int [1/(3 + 5*cos(c + d*x))^2, x, 4, (3*log(2*cos((1/2)*(c + d*x)) - sin((1/2)*(c + d*x))))/(64*d) - (3*log(2*cos((1/2)*(c + d*x)) + sin((1/2)*(c + d*x))))/(64*d) + (5*sin(c + d*x))/(16*d*(3 + 5*cos(c + d*x)))]
    @test_int [1/(3 + 5*cos(c + d*x))^3, x, 5, -((43*log(2*cos((1/2)*(c + d*x)) - sin((1/2)*(c + d*x))))/(2048*d)) + (43*log(2*cos((1/2)*(c + d*x)) + sin((1/2)*(c + d*x))))/(2048*d) + (5*sin(c + d*x))/(32*d*(3 + 5*cos(c + d*x))^2) - (45*sin(c + d*x))/(512*d*(3 + 5*cos(c + d*x)))]
    @test_int [1/(3 + 5*cos(c + d*x))^4, x, 6, (279*log(2*cos((1/2)*(c + d*x)) - sin((1/2)*(c + d*x))))/(32768*d) - (279*log(2*cos((1/2)*(c + d*x)) + sin((1/2)*(c + d*x))))/(32768*d) + (5*sin(c + d*x))/(48*d*(3 + 5*cos(c + d*x))^3) - (25*sin(c + d*x))/(512*d*(3 + 5*cos(c + d*x))^2) + (995*sin(c + d*x))/(24576*d*(3 + 5*cos(c + d*x)))]


    @test_int [1/(3 - 5*cos(c + d*x)), x, 2, log(cos((1/2)*(c + d*x)) - 2*sin((1/2)*(c + d*x)))/(4*d) - log(cos((1/2)*(c + d*x)) + 2*sin((1/2)*(c + d*x)))/(4*d)]
    @test_int [1/(3 - 5*cos(c + d*x))^2, x, 4, -((3*log(cos((1/2)*(c + d*x)) - 2*sin((1/2)*(c + d*x))))/(64*d)) + (3*log(cos((1/2)*(c + d*x)) + 2*sin((1/2)*(c + d*x))))/(64*d) - (5*sin(c + d*x))/(16*d*(3 - 5*cos(c + d*x)))]
    @test_int [1/(3 - 5*cos(c + d*x))^3, x, 5, (43*log(cos((1/2)*(c + d*x)) - 2*sin((1/2)*(c + d*x))))/(2048*d) - (43*log(cos((1/2)*(c + d*x)) + 2*sin((1/2)*(c + d*x))))/(2048*d) - (5*sin(c + d*x))/(32*d*(3 - 5*cos(c + d*x))^2) + (45*sin(c + d*x))/(512*d*(3 - 5*cos(c + d*x)))]
    @test_int [1/(3 - 5*cos(c + d*x))^4, x, 6, -((279*log(cos((1/2)*(c + d*x)) - 2*sin((1/2)*(c + d*x))))/(32768*d)) + (279*log(cos((1/2)*(c + d*x)) + 2*sin((1/2)*(c + d*x))))/(32768*d) - (5*sin(c + d*x))/(48*d*(3 - 5*cos(c + d*x))^3) + (25*sin(c + d*x))/(512*d*(3 - 5*cos(c + d*x))^2) - (995*sin(c + d*x))/(24576*d*(3 - 5*cos(c + d*x)))]


    @test_int [1/(-3 + 5*cos(c + d*x)), x, 2, -(log(cos((1/2)*(c + d*x)) - 2*sin((1/2)*(c + d*x)))/(4*d)) + log(cos((1/2)*(c + d*x)) + 2*sin((1/2)*(c + d*x)))/(4*d)]
    @test_int [1/(-3 + 5*cos(c + d*x))^2, x, 4, -((3*log(cos((1/2)*(c + d*x)) - 2*sin((1/2)*(c + d*x))))/(64*d)) + (3*log(cos((1/2)*(c + d*x)) + 2*sin((1/2)*(c + d*x))))/(64*d) - (5*sin(c + d*x))/(16*d*(3 - 5*cos(c + d*x)))]
    @test_int [1/(-3 + 5*cos(c + d*x))^3, x, 5, -((43*log(cos((1/2)*(c + d*x)) - 2*sin((1/2)*(c + d*x))))/(2048*d)) + (43*log(cos((1/2)*(c + d*x)) + 2*sin((1/2)*(c + d*x))))/(2048*d) + (5*sin(c + d*x))/(32*d*(3 - 5*cos(c + d*x))^2) - (45*sin(c + d*x))/(512*d*(3 - 5*cos(c + d*x)))]
    @test_int [1/(-3 + 5*cos(c + d*x))^4, x, 6, -((279*log(cos((1/2)*(c + d*x)) - 2*sin((1/2)*(c + d*x))))/(32768*d)) + (279*log(cos((1/2)*(c + d*x)) + 2*sin((1/2)*(c + d*x))))/(32768*d) - (5*sin(c + d*x))/(48*d*(3 - 5*cos(c + d*x))^3) + (25*sin(c + d*x))/(512*d*(3 - 5*cos(c + d*x))^2) - (995*sin(c + d*x))/(24576*d*(3 - 5*cos(c + d*x)))]


    @test_int [1/(-3 - 5*cos(c + d*x)), x, 2, log(2*cos((1/2)*(c + d*x)) - sin((1/2)*(c + d*x)))/(4*d) - log(2*cos((1/2)*(c + d*x)) + sin((1/2)*(c + d*x)))/(4*d)]
    @test_int [1/(-3 - 5*cos(c + d*x))^2, x, 4, (3*log(2*cos((1/2)*(c + d*x)) - sin((1/2)*(c + d*x))))/(64*d) - (3*log(2*cos((1/2)*(c + d*x)) + sin((1/2)*(c + d*x))))/(64*d) + (5*sin(c + d*x))/(16*d*(3 + 5*cos(c + d*x)))]
    @test_int [1/(-3 - 5*cos(c + d*x))^3, x, 5, (43*log(2*cos((1/2)*(c + d*x)) - sin((1/2)*(c + d*x))))/(2048*d) - (43*log(2*cos((1/2)*(c + d*x)) + sin((1/2)*(c + d*x))))/(2048*d) - (5*sin(c + d*x))/(32*d*(3 + 5*cos(c + d*x))^2) + (45*sin(c + d*x))/(512*d*(3 + 5*cos(c + d*x)))]
    @test_int [1/(-3 - 5*cos(c + d*x))^4, x, 6, (279*log(2*cos((1/2)*(c + d*x)) - sin((1/2)*(c + d*x))))/(32768*d) - (279*log(2*cos((1/2)*(c + d*x)) + sin((1/2)*(c + d*x))))/(32768*d) + (5*sin(c + d*x))/(48*d*(3 + 5*cos(c + d*x))^3) - (25*sin(c + d*x))/(512*d*(3 + 5*cos(c + d*x))^2) + (995*sin(c + d*x))/(24576*d*(3 + 5*cos(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^(n/2)=#


    @test_int [(a + b*cos(c + d*x))^(5/2), x, 7, (2*(23*a^2 + 9*b^2)*sqrt(a + b*cos(c + d*x))*EllipticE((1/2)*(c + d*x), (2*b)/(a + b)))/(15*d*sqrt((a + b*cos(c + d*x))/(a + b))) - (16*a*(a^2 - b^2)*sqrt((a + b*cos(c + d*x))/(a + b))*EllipticF((1/2)*(c + d*x), (2*b)/(a + b)))/(15*d*sqrt(a + b*cos(c + d*x))) + (16*a*b*sqrt(a + b*cos(c + d*x))*sin(c + d*x))/(15*d) + (2*b*(a + b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d)]
    @test_int [(a + b*cos(c + d*x))^(3/2), x, 6, (8*a*sqrt(a + b*cos(c + d*x))*EllipticE((1/2)*(c + d*x), (2*b)/(a + b)))/(3*d*sqrt((a + b*cos(c + d*x))/(a + b))) - (2*(a^2 - b^2)*sqrt((a + b*cos(c + d*x))/(a + b))*EllipticF((1/2)*(c + d*x), (2*b)/(a + b)))/(3*d*sqrt(a + b*cos(c + d*x))) + (2*b*sqrt(a + b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [(a + b*cos(c + d*x))^(1/2), x, 2, (2*sqrt(a + b*cos(c + d*x))*EllipticE((1/2)*(c + d*x), (2*b)/(a + b)))/(d*sqrt((a + b*cos(c + d*x))/(a + b)))]
    @test_int [1/(a + b*cos(c + d*x))^(1/2), x, 2, (2*sqrt((a + b*cos(c + d*x))/(a + b))*EllipticF((1/2)*(c + d*x), (2*b)/(a + b)))/(d*sqrt(a + b*cos(c + d*x)))]
    @test_int [1/(a + b*cos(c + d*x))^(3/2), x, 4, (2*sqrt(a + b*cos(c + d*x))*EllipticE((1/2)*(c + d*x), (2*b)/(a + b)))/((a^2 - b^2)*d*sqrt((a + b*cos(c + d*x))/(a + b))) - (2*b*sin(c + d*x))/((a^2 - b^2)*d*sqrt(a + b*cos(c + d*x)))]
    @test_int [1/(a + b*cos(c + d*x))^(5/2), x, 7, (8*a*sqrt(a + b*cos(c + d*x))*EllipticE((1/2)*(c + d*x), (2*b)/(a + b)))/(3*(a^2 - b^2)^2*d*sqrt((a + b*cos(c + d*x))/(a + b))) - (2*sqrt((a + b*cos(c + d*x))/(a + b))*EllipticF((1/2)*(c + d*x), (2*b)/(a + b)))/(3*(a^2 - b^2)*d*sqrt(a + b*cos(c + d*x))) - (2*b*sin(c + d*x))/(3*(a^2 - b^2)*d*(a + b*cos(c + d*x))^(3/2)) - (8*a*b*sin(c + d*x))/(3*(a^2 - b^2)^2*d*sqrt(a + b*cos(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^(n/3)=#


    @test_int [(a + b*cos(c + d*x))^(4/3), x, 3, (sqrt(2)*(a + b)*AppellF1(1/2, 1/2, -(4/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3))]
    @test_int [(a + b*cos(c + d*x))^(2/3), x, 3, (sqrt(2)*AppellF1(1/2, 1/2, -(2/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3))]
    @test_int [(a + b*cos(c + d*x))^(1/3), x, 3, (sqrt(2)*AppellF1(1/2, 1/2, -(1/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3))]
    @test_int [1/(a + b*cos(c + d*x))^(1/3), x, 3, (sqrt(2)*AppellF1(1/2, 1/2, 1/3, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*((a + b*cos(c + d*x))/(a + b))^(1/3)*sin(c + d*x))/(d*sqrt(1 + cos(c + d*x))*(a + b*cos(c + d*x))^(1/3))]
    @test_int [1/(a + b*cos(c + d*x))^(2/3), x, 3, (sqrt(2)*AppellF1(1/2, 1/2, 2/3, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*((a + b*cos(c + d*x))/(a + b))^(2/3)*sin(c + d*x))/(d*sqrt(1 + cos(c + d*x))*(a + b*cos(c + d*x))^(2/3))]
    @test_int [1/(a + b*cos(c + d*x))^(4/3), x, 3, (sqrt(2)*AppellF1(1/2, 1/2, 4/3, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*((a + b*cos(c + d*x))/(a + b))^(1/3)*sin(c + d*x))/((a + b)*d*sqrt(1 + cos(c + d*x))*(a + b*cos(c + d*x))^(1/3))]


    #= [(a + b*cos(c + d*x))^(4/3) - (4*a^2 + b^2 + 5*a*b*cos(c + d*x))/(4*(a + b*cos(c + d*x))^(2/3)), x, -11, (3*b*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*d)] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^n*with*n*symbolic=#


    @test_int [(a + b*cos(c + d*x))^n, x, 3, (sqrt(2)*AppellF1(1/2, 1/2, -n, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^n*sin(c + d*x))/(((a + b*cos(c + d*x))/(a + b))^n*(d*sqrt(1 + cos(c + d*x))))]
    end
