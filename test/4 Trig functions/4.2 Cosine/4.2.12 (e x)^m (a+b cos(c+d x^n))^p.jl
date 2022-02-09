@testset "4.2.12 (e x)^m (a+b cos(c+d x^n))^p" begin
    (a, b, c, d, e, m, n, p, x, ) = @variables a b c d e m n p x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cos(c+d*x^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cos(c+d*x^2))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cos(a+b*x^2)^p=#


    @test_int [x^3*cos(a + b*x^2), x, 3, cos(a + b*x^2)/(2*b^2) + (x^2*sin(a + b*x^2))/(2*b)]
    @test_int [x^2*cos(a + b*x^2), x, 4, -((sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*x))/(2*b^(3/2))) - (sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*x)*sin(a))/(2*b^(3/2)) + (x*sin(a + b*x^2))/(2*b)]
    @test_int [x^1*cos(a + b*x^2), x, 2, sin(a + b*x^2)/(2*b)]
    @test_int [x^0*cos(a + b*x^2), x, 3, (sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*x))/sqrt(b) - (sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*x)*sin(a))/sqrt(b)]
    @test_int [cos(a + b*x^2)/x^1, x, 3, (1/2)*cos(a)*CosIntegral(b*x^2) - (1/2)*sin(a)*SinIntegral(b*x^2)]
    @test_int [cos(a + b*x^2)/x^2, x, 4, -(cos(a + b*x^2)/x) - sqrt(b)*sqrt(2*pi)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*x) - sqrt(b)*sqrt(2*pi)*FresnelC(sqrt(b)*sqrt(2/pi)*x)*sin(a)]
    @test_int [cos(a + b*x^2)/x^3, x, 5, -(cos(a + b*x^2)/(2*x^2)) - (1/2)*b*CosIntegral(b*x^2)*sin(a) - (1/2)*b*cos(a)*SinIntegral(b*x^2)]


    @test_int [x^3*cos(a + b*x^2)^2, x, 3, x^4/8 + cos(a + b*x^2)^2/(8*b^2) + (x^2*cos(a + b*x^2)*sin(a + b*x^2))/(4*b)]
    @test_int [x^2*cos(a + b*x^2)^2, x, 6, x^3/6 - (sqrt(pi)*cos(2*a)*FresnelS((2*sqrt(b)*x)/sqrt(pi)))/(16*b^(3/2)) - (sqrt(pi)*FresnelC((2*sqrt(b)*x)/sqrt(pi))*sin(2*a))/(16*b^(3/2)) + (x*sin(2*a + 2*b*x^2))/(8*b)]
    @test_int [x^1*cos(a + b*x^2)^2, x, 3, x^2/4 + (cos(a + b*x^2)*sin(a + b*x^2))/(4*b)]
    @test_int [x^0*cos(a + b*x^2)^2, x, 5, x/2 + (sqrt(pi)*cos(2*a)*FresnelC((2*sqrt(b)*x)/sqrt(pi)))/(4*sqrt(b)) - (sqrt(pi)*FresnelS((2*sqrt(b)*x)/sqrt(pi))*sin(2*a))/(4*sqrt(b))]
    @test_int [cos(a + b*x^2)^2/x^1, x, 5, (1/4)*cos(2*a)*CosIntegral(2*b*x^2) + log(x)/2 - (1/4)*sin(2*a)*SinIntegral(2*b*x^2)]
    @test_int [cos(a + b*x^2)^2/x^2, x, 6, -(cos(a + b*x^2)^2/x) - sqrt(b)*sqrt(pi)*cos(2*a)*FresnelS((2*sqrt(b)*x)/sqrt(pi)) - sqrt(b)*sqrt(pi)*FresnelC((2*sqrt(b)*x)/sqrt(pi))*sin(2*a)]
    @test_int [cos(a + b*x^2)^2/x^3, x, 7, -(1/(4*x^2)) - cos(2*(a + b*x^2))/(4*x^2) - (1/2)*b*CosIntegral(2*b*x^2)*sin(2*a) - (1/2)*b*cos(2*a)*SinIntegral(2*b*x^2)]


    @test_int [x^3*cos(a + b*x^2)^3, x, 4, cos(a + b*x^2)/(3*b^2) + cos(a + b*x^2)^3/(18*b^2) + (x^2*sin(a + b*x^2))/(3*b) + (x^2*cos(a + b*x^2)^2*sin(a + b*x^2))/(6*b)]
    @test_int [x^2*cos(a + b*x^2)^3, x, 10, -((3*sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*x))/(8*b^(3/2))) - (sqrt(pi/6)*cos(3*a)*FresnelS(sqrt(b)*sqrt(6/pi)*x))/(24*b^(3/2)) - (3*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*x)*sin(a))/(8*b^(3/2)) - (sqrt(pi/6)*FresnelC(sqrt(b)*sqrt(6/pi)*x)*sin(3*a))/(24*b^(3/2)) + (3*x*sin(a + b*x^2))/(8*b) + (x*sin(3*a + 3*b*x^2))/(24*b)]
    @test_int [x^1*cos(a + b*x^2)^3, x, 3, sin(a + b*x^2)/(2*b) - sin(a + b*x^2)^3/(6*b)]
    @test_int [x^0*cos(a + b*x^2)^3, x, 8, (3*sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*x))/(4*sqrt(b)) + (sqrt(pi/6)*cos(3*a)*FresnelC(sqrt(b)*sqrt(6/pi)*x))/(4*sqrt(b)) - (3*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*x)*sin(a))/(4*sqrt(b)) - (sqrt(pi/6)*FresnelS(sqrt(b)*sqrt(6/pi)*x)*sin(3*a))/(4*sqrt(b))]
    @test_int [cos(a + b*x^2)^3/x^1, x, 8, (3/8)*cos(a)*CosIntegral(b*x^2) + (1/8)*cos(3*a)*CosIntegral(3*b*x^2) - (3/8)*sin(a)*SinIntegral(b*x^2) - (1/8)*sin(3*a)*SinIntegral(3*b*x^2)]
    @test_int [cos(a + b*x^2)^3/x^2, x, 9, -(cos(a + b*x^2)^3/x) - (3/2)*sqrt(b)*sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*x) - (1/2)*sqrt(b)*sqrt((3*pi)/2)*cos(3*a)*FresnelS(sqrt(b)*sqrt(6/pi)*x) - (3/2)*sqrt(b)*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*x)*sin(a) - (1/2)*sqrt(b)*sqrt((3*pi)/2)*FresnelC(sqrt(b)*sqrt(6/pi)*x)*sin(3*a)]
    @test_int [cos(a + b*x^2)^3/x^3, x, 12, -((3*cos(a + b*x^2))/(8*x^2)) - cos(3*(a + b*x^2))/(8*x^2) - (3/8)*b*CosIntegral(b*x^2)*sin(a) - (3/8)*b*CosIntegral(3*b*x^2)*sin(3*a) - (3/8)*b*cos(a)*SinIntegral(b*x^2) - (3/8)*b*cos(3*a)*SinIntegral(3*b*x^2)]


    @test_int [x*cos(a + b*x^2)^7, x, 3, sin(a + b*x^2)/(2*b) - sin(a + b*x^2)^3/(2*b) + (3*sin(a + b*x^2)^5)/(10*b) - sin(a + b*x^2)^7/(14*b)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*x^m*cos(a+b*x^2)^(p/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^(m/2)*cos(a+b*x^2)^p=#


    @test_int [x^(5/2)*cos(a + b*x^2), x, 4, -((3*im*ℯ^(im*a)*x^(3/2)*Gamma(3/4, (-im)*b*x^2))/(16*b*((-im)*b*x^2)^(3/4))) + (3*im*x^(3/2)*Gamma(3/4, im*b*x^2))/(ℯ^(im*a)*(16*b*(im*b*x^2)^(3/4))) + (x^(3/2)*sin(a + b*x^2))/(2*b)]
    @test_int [x^(3/2)*cos(a + b*x^2), x, 4, -((im*ℯ^(im*a)*sqrt(x)*Gamma(1/4, (-im)*b*x^2))/(16*b*((-im)*b*x^2)^(1/4))) + (im*sqrt(x)*Gamma(1/4, im*b*x^2))/(ℯ^(im*a)*(16*b*(im*b*x^2)^(1/4))) + (sqrt(x)*sin(a + b*x^2))/(2*b)]
    @test_int [x^(1/2)*cos(a + b*x^2), x, 3, -((ℯ^(im*a)*x^(3/2)*Gamma(3/4, (-im)*b*x^2))/(4*((-im)*b*x^2)^(3/4))) - (x^(3/2)*Gamma(3/4, im*b*x^2))/(ℯ^(im*a)*(4*(im*b*x^2)^(3/4)))]
    @test_int [cos(a + b*x^2)/x^(1/2), x, 3, -((ℯ^(im*a)*sqrt(x)*Gamma(1/4, (-im)*b*x^2))/(4*((-im)*b*x^2)^(1/4))) - (sqrt(x)*Gamma(1/4, im*b*x^2))/(ℯ^(im*a)*(4*(im*b*x^2)^(1/4)))]
    @test_int [cos(a + b*x^2)/x^(3/2), x, 4, -((2*cos(a + b*x^2))/sqrt(x)) - (im*b*ℯ^(im*a)*x^(3/2)*Gamma(3/4, (-im)*b*x^2))/((-im)*b*x^2)^(3/4) + (im*b*x^(3/2)*Gamma(3/4, im*b*x^2))/(ℯ^(im*a)*(im*b*x^2)^(3/4))]
    @test_int [cos(a + b*x^2)/x^(5/2), x, 4, -((2*cos(a + b*x^2))/(3*x^(3/2))) - (im*b*ℯ^(im*a)*sqrt(x)*Gamma(1/4, (-im)*b*x^2))/(3*((-im)*b*x^2)^(1/4)) + (im*b*sqrt(x)*Gamma(1/4, im*b*x^2))/(ℯ^(im*a)*(3*(im*b*x^2)^(1/4)))]


    @test_int [x^(5/2)*cos(a + b*x^2)^2, x, 7, x^(7/2)/7 - (3*im*ℯ^(2*im*a)*x^(3/2)*Gamma(3/4, -2*im*b*x^2))/(64*2^(3/4)*b*((-im)*b*x^2)^(3/4)) + (3*im*x^(3/2)*Gamma(3/4, 2*im*b*x^2))/(ℯ^(2*im*a)*(64*2^(3/4)*b*(im*b*x^2)^(3/4))) + (x^(3/2)*sin(2*(a + b*x^2)))/(8*b)]
    @test_int [x^(3/2)*cos(a + b*x^2)^2, x, 7, x^(5/2)/5 - (im*ℯ^(2*im*a)*sqrt(x)*Gamma(1/4, -2*im*b*x^2))/(64*2^(1/4)*b*((-im)*b*x^2)^(1/4)) + (im*sqrt(x)*Gamma(1/4, 2*im*b*x^2))/(ℯ^(2*im*a)*(64*2^(1/4)*b*(im*b*x^2)^(1/4))) + (sqrt(x)*sin(2*(a + b*x^2)))/(8*b)]
    @test_int [x^(1/2)*cos(a + b*x^2)^2, x, 6, x^(3/2)/3 - (ℯ^(2*im*a)*x^(3/2)*Gamma(3/4, -2*im*b*x^2))/(8*2^(3/4)*((-im)*b*x^2)^(3/4)) - (x^(3/2)*Gamma(3/4, 2*im*b*x^2))/(ℯ^(2*im*a)*(8*2^(3/4)*(im*b*x^2)^(3/4)))]
    @test_int [cos(a + b*x^2)^2/x^(1/2), x, 6, sqrt(x) - (ℯ^(2*im*a)*sqrt(x)*Gamma(1/4, -2*im*b*x^2))/(8*2^(1/4)*((-im)*b*x^2)^(1/4)) - (sqrt(x)*Gamma(1/4, 2*im*b*x^2))/(ℯ^(2*im*a)*(8*2^(1/4)*(im*b*x^2)^(1/4)))]
    @test_int [cos(a + b*x^2)^2/x^(3/2), x, 7, -(1/sqrt(x)) - cos(2*(a + b*x^2))/sqrt(x) - (im*b*ℯ^(2*im*a)*x^(3/2)*Gamma(3/4, -2*im*b*x^2))/(2^(3/4)*((-im)*b*x^2)^(3/4)) + (im*b*x^(3/2)*Gamma(3/4, 2*im*b*x^2))/(ℯ^(2*im*a)*(2^(3/4)*(im*b*x^2)^(3/4)))]
    @test_int [cos(a + b*x^2)^2/x^(5/2), x, 7, -((2*cos(a + b*x^2)^2)/(3*x^(3/2))) - (im*b*ℯ^(2*im*a)*sqrt(x)*Gamma(1/4, -2*im*b*x^2))/(3*2^(1/4)*((-im)*b*x^2)^(1/4)) + (im*b*sqrt(x)*Gamma(1/4, 2*im*b*x^2))/(ℯ^(2*im*a)*(3*2^(1/4)*(im*b*x^2)^(1/4)))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*x^(m/2)*cos(a+b*x^2)^(p/2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cos(c+d / x^1))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cos(a+b / x)^p=#


    @test_int [cos(a + b/x), x, 5, x*cos(a + b/x) + b*CosIntegral(b/x)*sin(a) + b*cos(a)*SinIntegral(b/x)]
    @test_int [cos(a + b/x)/x, x, 3, (-cos(a))*CosIntegral(b/x) + sin(a)*SinIntegral(b/x)]
    @test_int [cos(a + b/x)/x^2, x, 2, -(sin(a + b/x)/b)]
    @test_int [cos(a + b/x)/x^3, x, 3, -(cos(a + b/x)/b^2) - sin(a + b/x)/(b*x)]
    @test_int [cos(a + b/x)/x^4, x, 4, -((2*cos(a + b/x))/(b^2*x)) + (2*sin(a + b/x))/b^3 - sin(a + b/x)/(b*x^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cos(c+d / x^2))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cos(a+b / x^2)^p=#


    @test_int [x^0*cos(a + b/x^2), x, 5, x*cos(a + b/x^2) + sqrt(b)*sqrt(2*pi)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/x) + sqrt(b)*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi))/x)*sin(a)]
    @test_int [cos(a + b/x^2)/x^1, x, 3, (-(1/2))*cos(a)*CosIntegral(b/x^2) + (1/2)*sin(a)*SinIntegral(b/x^2)]
    @test_int [cos(a + b/x^2)/x^2, x, 4, -((sqrt(pi/2)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/x))/sqrt(b)) + (sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi))/x)*sin(a))/sqrt(b)]
    @test_int [cos(a + b/x^2)/x^3, x, 2, -(sin(a + b/x^2)/(2*b))]
    @test_int [cos(a + b/x^2)/x^4, x, 5, (sqrt(pi/2)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/x))/(2*b^(3/2)) + (sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi))/x)*sin(a))/(2*b^(3/2)) - sin(a + b/x^2)/(2*b*x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cos(c+d*x^(1/2)))^p=#


    @test_int [cos(sqrt(x))^2/sqrt(x), x, 3, sqrt(x) + cos(sqrt(x))*sin(sqrt(x))]
    @test_int [cos(sqrt(x))/sqrt(x), x, 2, 2*sin(sqrt(x))]
    @test_int [cos(sqrt(x)), x, 3, 2*cos(sqrt(x)) + 2*sqrt(x)*sin(sqrt(x))]
    @test_int [cos(sqrt(x))^2, x, 3, x/2 + (1/2)*cos(sqrt(x))^2 + sqrt(x)*cos(sqrt(x))*sin(sqrt(x))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cos(c+d*x^(1/3)))^p=#


    @test_int [x^(3/2)*cos(a + b*x^(1/3)), x, 13, (135135*sqrt(x)*cos(a + b*x^(1/3)))/(32*b^6) - (3861*x^(7/6)*cos(a + b*x^(1/3)))/(8*b^4) + (39*x^(11/6)*cos(a + b*x^(1/3)))/(2*b^2) + (405405*sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*x^(1/6)))/(64*b^(15/2)) + (405405*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*x^(1/6))*sin(a))/(64*b^(15/2)) - (405405*x^(1/6)*sin(a + b*x^(1/3)))/(64*b^7) + (27027*x^(5/6)*sin(a + b*x^(1/3)))/(16*b^5) - (429*x^(3/2)*sin(a + b*x^(1/3)))/(4*b^3) + (3*x^(13/6)*sin(a + b*x^(1/3)))/b]
    @test_int [x^(1/2)*cos(a + b*x^(1/3)), x, 10, -((315*x^(1/6)*cos(a + b*x^(1/3)))/(8*b^4)) + (21*x^(5/6)*cos(a + b*x^(1/3)))/(2*b^2) + (315*sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*x^(1/6)))/(8*b^(9/2)) - (315*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*x^(1/6))*sin(a))/(8*b^(9/2)) - (105*sqrt(x)*sin(a + b*x^(1/3)))/(4*b^3) + (3*x^(7/6)*sin(a + b*x^(1/3)))/b]
    @test_int [cos(a + b*x^(1/3))/x^(1/2), x, 7, -((3*sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*x^(1/6)))/b^(3/2)) - (3*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*x^(1/6))*sin(a))/b^(3/2) + (3*x^(1/6)*sin(a + b*x^(1/3)))/b]
    @test_int [cos(a + b*x^(1/3))/x^(3/2), x, 8, -((2*cos(a + b*x^(1/3)))/sqrt(x)) - 4*b^(3/2)*sqrt(2*pi)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*x^(1/6)) + 4*b^(3/2)*sqrt(2*pi)*FresnelS(sqrt(b)*sqrt(2/pi)*x^(1/6))*sin(a) + (4*b*sin(a + b*x^(1/3)))/x^(1/6)]
    @test_int [cos(a + b*x^(1/3))/x^(5/2), x, 11, -((2*cos(a + b*x^(1/3)))/(3*x^(3/2))) + (8*b^2*cos(a + b*x^(1/3)))/(105*x^(5/6)) - (32*b^4*cos(a + b*x^(1/3)))/(315*x^(1/6)) - (32/315)*b^(9/2)*sqrt(2*pi)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*x^(1/6)) - (32/315)*b^(9/2)*sqrt(2*pi)*FresnelC(sqrt(b)*sqrt(2/pi)*x^(1/6))*sin(a) + (4*b*sin(a + b*x^(1/3)))/(21*x^(7/6)) - (16*b^3*sin(a + b*x^(1/3)))/(315*sqrt(x))]
    @test_int [cos(a + b*x^(1/3))/x^(7/2), x, 14, -((2*cos(a + b*x^(1/3)))/(5*x^(5/2))) + (8*b^2*cos(a + b*x^(1/3)))/(715*x^(11/6)) - (32*b^4*cos(a + b*x^(1/3)))/(45045*x^(7/6)) + (128*b^6*cos(a + b*x^(1/3)))/(675675*sqrt(x)) + (256*b^(15/2)*sqrt(2*pi)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*x^(1/6)))/675675 - (256*b^(15/2)*sqrt(2*pi)*FresnelS(sqrt(b)*sqrt(2/pi)*x^(1/6))*sin(a))/675675 + (4*b*sin(a + b*x^(1/3)))/(65*x^(13/6)) - (16*b^3*sin(a + b*x^(1/3)))/(6435*x^(3/2)) + (64*b^5*sin(a + b*x^(1/3)))/(225225*x^(5/6)) - (256*b^7*sin(a + b*x^(1/3)))/(675675*x^(1/6))]


    @test_int [x^(3/2)*cos(a + b*x^(1/3))^2, x, 15, -((135135*sqrt(x))/(4096*b^6)) + (3861*x^(7/6))/(256*b^4) - (39*x^(11/6))/(16*b^2) + x^(5/2)/5 + (135135*sqrt(x)*cos(a + b*x^(1/3))^2)/(2048*b^6) - (3861*x^(7/6)*cos(a + b*x^(1/3))^2)/(128*b^4) + (39*x^(11/6)*cos(a + b*x^(1/3))^2)/(8*b^2) + (405405*sqrt(pi)*cos(2*a)*FresnelS((2*sqrt(b)*x^(1/6))/sqrt(pi)))/(32768*b^(15/2)) + (405405*sqrt(pi)*FresnelC((2*sqrt(b)*x^(1/6))/sqrt(pi))*sin(2*a))/(32768*b^(15/2)) + (27027*x^(5/6)*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(512*b^5) - (429*x^(3/2)*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(32*b^3) + (3*x^(13/6)*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(2*b) - (405405*x^(1/6)*sin(2*(a + b*x^(1/3))))/(16384*b^7)]
    @test_int [x^(1/2)*cos(a + b*x^(1/3))^2, x, 12, (315*x^(1/6))/(256*b^4) - (21*x^(5/6))/(16*b^2) + x^(3/2)/3 - (315*x^(1/6)*cos(a + b*x^(1/3))^2)/(128*b^4) + (21*x^(5/6)*cos(a + b*x^(1/3))^2)/(8*b^2) + (315*sqrt(pi)*cos(2*a)*FresnelC((2*sqrt(b)*x^(1/6))/sqrt(pi)))/(512*b^(9/2)) - (315*sqrt(pi)*FresnelS((2*sqrt(b)*x^(1/6))/sqrt(pi))*sin(2*a))/(512*b^(9/2)) - (105*sqrt(x)*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(32*b^3) + (3*x^(7/6)*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(2*b)]
    @test_int [cos(a + b*x^(1/3))^2/x^(1/2), x, 9, sqrt(x) - (3*sqrt(pi)*cos(2*a)*FresnelS((2*sqrt(b)*x^(1/6))/sqrt(pi)))/(8*b^(3/2)) - (3*sqrt(pi)*FresnelC((2*sqrt(b)*x^(1/6))/sqrt(pi))*sin(2*a))/(8*b^(3/2)) + (3*x^(1/6)*sin(2*(a + b*x^(1/3))))/(4*b)]
    @test_int [cos(a + b*x^(1/3))^2/x^(3/2), x, 10, -((2*cos(a + b*x^(1/3))^2)/sqrt(x)) - 8*b^(3/2)*sqrt(pi)*cos(2*a)*FresnelC((2*sqrt(b)*x^(1/6))/sqrt(pi)) + 8*b^(3/2)*sqrt(pi)*FresnelS((2*sqrt(b)*x^(1/6))/sqrt(pi))*sin(2*a) + (8*b*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/x^(1/6)]
    @test_int [cos(a + b*x^(1/3))^2/x^(5/2), x, 12, -((16*b^2)/(105*x^(5/6))) + (256*b^4)/(315*x^(1/6)) - (2*cos(a + b*x^(1/3))^2)/(3*x^(3/2)) + (32*b^2*cos(a + b*x^(1/3))^2)/(105*x^(5/6)) - (512*b^4*cos(a + b*x^(1/3))^2)/(315*x^(1/6)) - (512/315)*b^(9/2)*sqrt(pi)*cos(2*a)*FresnelS((2*sqrt(b)*x^(1/6))/sqrt(pi)) - (512/315)*b^(9/2)*sqrt(pi)*FresnelC((2*sqrt(b)*x^(1/6))/sqrt(pi))*sin(2*a) + (8*b*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(21*x^(7/6)) - (128*b^3*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(315*sqrt(x))]
    @test_int [cos(a + b*x^(1/3))^2/x^(7/2), x, 16, -((16*b^2)/(715*x^(11/6))) + (256*b^4)/(45045*x^(7/6)) - (4096*b^6)/(675675*sqrt(x)) - (2*cos(a + b*x^(1/3))^2)/(5*x^(5/2)) + (32*b^2*cos(a + b*x^(1/3))^2)/(715*x^(11/6)) - (512*b^4*cos(a + b*x^(1/3))^2)/(45045*x^(7/6)) + (8192*b^6*cos(a + b*x^(1/3))^2)/(675675*sqrt(x)) + (32768*b^(15/2)*sqrt(pi)*cos(2*a)*FresnelC((2*sqrt(b)*x^(1/6))/sqrt(pi)))/675675 - (32768*b^(15/2)*sqrt(pi)*FresnelS((2*sqrt(b)*x^(1/6))/sqrt(pi))*sin(2*a))/675675 + (8*b*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(65*x^(13/6)) - (128*b^3*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(6435*x^(3/2)) + (2048*b^5*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(225225*x^(5/6)) - (32768*b^7*cos(a + b*x^(1/3))*sin(a + b*x^(1/3)))/(675675*x^(1/6))]


    @test_int [cos(x^(1/3))^3, x, 7, 4*x^(1/3)*cos(x^(1/3)) + (2/3)*x^(1/3)*cos(x^(1/3))^3 - (14/3)*sin(x^(1/3)) + 2*x^(2/3)*sin(x^(1/3)) + x^(2/3)*cos(x^(1/3))^2*sin(x^(1/3)) + (2/9)*sin(x^(1/3))^3]
    @test_int [cos(x^(1/6))/x^(5/6), x, 2, 6*sin(x^(1/6))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cos(c+d*x^n))^p=#


    @test_int [(e*x)^m*(b*cos(c + d*x^n))^p, x, 0, Unintegrable((e*x)^m*(b*cos(c + d*x^n))^p, x)]
    @test_int [(e*x)^m*(a + b*cos(c + d*x^n))^p, x, 0, Unintegrable((e*x)^m*(a + b*cos(c + d*x^n))^p, x)]


    @test_int [(e*x)^(n - 1)*(b*cos(c + d*x^n))^p, x, 3, -(((e*x)^n*(b*cos(c + d*x^n))^(1 + p)*HypergeometricFunctions._₂F₁(1/2, (1 + p)/2, (3 + p)/2, cos(c + d*x^n)^2)*sin(c + d*x^n))/(x^n*(b*d*e*n*(1 + p)*sqrt(sin(c + d*x^n)^2))))]
    @test_int [(e*x)^(2*n - 1)*(b*cos(c + d*x^n))^p, x, 1, ((e*x)^(2*n)*Unintegrable(x^(-1 + 2*n)*(b*cos(c + d*x^n))^p, x))/(x^(2*n)*e)]

    @test_int [(e*x)^(n - 1)*(a + b*cos(c + d*x^n))^p, x, 5, (sqrt(2)*(e*x)^n*AppellF1(1/2, 1/2, -p, 3/2, (1/2)*(1 - cos(c + d*x^n)), (b*(1 - cos(c + d*x^n)))/(a + b))*(a + b*cos(c + d*x^n))^p*sin(c + d*x^n))/(x^n*((a + b*cos(c + d*x^n))/(a + b))^p*(d*e*n*sqrt(1 + cos(c + d*x^n))))]
    @test_int [(e*x)^(2*n - 1)*(a + b*cos(c + d*x^n))^p, x, 1, ((e*x)^(2*n)*Unintegrable(x^(-1 + 2*n)*(a + b*cos(c + d*x^n))^p, x))/(x^(2*n)*e)]


    @test_int [cos(a + b*x^n)/x, x, 3, (cos(a)*CosIntegral(b*x^n))/n - (sin(a)*SinIntegral(b*x^n))/n]
    @test_int [cos(a + b*x^n)^2/x, x, 5, (cos(2*a)*CosIntegral(2*b*x^n))/(2*n) + log(x)/2 - (sin(2*a)*SinIntegral(2*b*x^n))/(2*n)]
    @test_int [cos(a + b*x^n)^3/x, x, 8, (3*cos(a)*CosIntegral(b*x^n))/(4*n) + (cos(3*a)*CosIntegral(3*b*x^n))/(4*n) - (3*sin(a)*SinIntegral(b*x^n))/(4*n) - (sin(3*a)*SinIntegral(3*b*x^n))/(4*n)]
    @test_int [cos(a + b*x^n)^4/x, x, 8, (cos(2*a)*CosIntegral(2*b*x^n))/(2*n) + (cos(4*a)*CosIntegral(4*b*x^n))/(8*n) + (3*log(x))/8 - (sin(2*a)*SinIntegral(2*b*x^n))/(2*n) - (sin(4*a)*SinIntegral(4*b*x^n))/(8*n)]


    @test_int [cos(a + b*x^n), x, 3, -((ℯ^(im*a)*x*Gamma(1/n, (-im)*b*x^n))/(((-im)*b*x^n)^n^(-1)*(2*n))) - (x*Gamma(1/n, im*b*x^n))/(ℯ^(im*a)*(im*b*x^n)^n^(-1)*(2*n))]
    @test_int [cos(a + b*x^n)^2, x, 5, x/2 - (2^(-2 - 1/n)*ℯ^(2*im*a)*x*Gamma(1/n, -2*im*b*x^n))/(((-im)*b*x^n)^n^(-1)*n) - (2^(-2 - 1/n)*x*Gamma(1/n, 2*im*b*x^n))/(ℯ^(2*im*a)*(im*b*x^n)^n^(-1)*n)]
    @test_int [cos(a + b*x^n)^3, x, 8, -((3*ℯ^(im*a)*x*Gamma(1/n, (-im)*b*x^n))/(((-im)*b*x^n)^n^(-1)*(8*n))) - (3*x*Gamma(1/n, im*b*x^n))/(ℯ^(im*a)*(im*b*x^n)^n^(-1)*(8*n)) - (ℯ^(3*im*a)*x*Gamma(1/n, -3*im*b*x^n))/(3^n^(-1)*((-im)*b*x^n)^n^(-1)*(8*n)) - (x*Gamma(1/n, 3*im*b*x^n))/(3^n^(-1)*ℯ^(3*im*a)*(im*b*x^n)^n^(-1)*(8*n))]

    @test_int [x^m*cos(a + b*x^n), x, 3, -((ℯ^(im*a)*x^(1 + m)*Gamma((1 + m)/n, (-im)*b*x^n))/(((-im)*b*x^n)^((1 + m)/n)*(2*n))) - (x^(1 + m)*Gamma((1 + m)/n, im*b*x^n))/(ℯ^(im*a)*(im*b*x^n)^((1 + m)/n)*(2*n))]
    @test_int [x^m*cos(a + b*x^n)^2, x, 5, x^(1 + m)/(2*(1 + m)) - (ℯ^(2*im*a)*x^(1 + m)*Gamma((1 + m)/n, -2*im*b*x^n))/(2^((1 + m + 2*n)/n)*((-im)*b*x^n)^((1 + m)/n)*n) - (x^(1 + m)*Gamma((1 + m)/n, 2*im*b*x^n))/(2^((1 + m + 2*n)/n)*ℯ^(2*im*a)*(im*b*x^n)^((1 + m)/n)*n)]
    @test_int [x^m*cos(a + b*x^n)^3, x, 8, -((3*ℯ^(im*a)*x^(1 + m)*Gamma((1 + m)/n, (-im)*b*x^n))/(((-im)*b*x^n)^((1 + m)/n)*(8*n))) - (3*x^(1 + m)*Gamma((1 + m)/n, im*b*x^n))/(ℯ^(im*a)*(im*b*x^n)^((1 + m)/n)*(8*n)) - (ℯ^(3*im*a)*x^(1 + m)*Gamma((1 + m)/n, -3*im*b*x^n))/(3^((1 + m)/n)*((-im)*b*x^n)^((1 + m)/n)*(8*n)) - (x^(1 + m)*Gamma((1 + m)/n, 3*im*b*x^n))/(3^((1 + m)/n)*ℯ^(3*im*a)*(im*b*x^n)^((1 + m)/n)*(8*n))]


    @test_int [cos(a + b*x^n)/x^(n + 1), x, 5, -(cos(a + b*x^n)/(x^n*n)) - (b*CosIntegral(b*x^n)*sin(a))/n - (b*cos(a)*SinIntegral(b*x^n))/n]
    @test_int [cos(a + b*x^n)^2/x^(n + 1), x, 7, -(1/(x^n*(2*n))) - cos(2*(a + b*x^n))/(x^n*(2*n)) - (b*CosIntegral(2*b*x^n)*sin(2*a))/n - (b*cos(2*a)*SinIntegral(2*b*x^n))/n]
    @test_int [cos(a + b*x^n)^3/x^(n + 1), x, 12, -((3*cos(a + b*x^n))/(x^n*(4*n))) - cos(3*(a + b*x^n))/(x^n*(4*n)) - (3*b*CosIntegral(b*x^n)*sin(a))/(4*n) - (3*b*CosIntegral(3*b*x^n)*sin(3*a))/(4*n) - (3*b*cos(a)*SinIntegral(b*x^n))/(4*n) - (3*b*cos(3*a)*SinIntegral(3*b*x^n))/(4*n)]

    @test_int [cos(a + b*x^n)/x^(2*n + 1), x, 6, -(cos(a + b*x^n)/(x^(2*n)*(2*n))) - (b^2*cos(a)*CosIntegral(b*x^n))/(2*n) + (b*sin(a + b*x^n))/(x^n*(2*n)) + (b^2*sin(a)*SinIntegral(b*x^n))/(2*n)]
    @test_int [cos(a + b*x^n)^2/x^(2*n + 1), x, 8, -(1/(x^(2*n)*(4*n))) - cos(2*(a + b*x^n))/(x^(2*n)*(4*n)) - (b^2*cos(2*a)*CosIntegral(2*b*x^n))/n + (b*sin(2*(a + b*x^n)))/(x^n*(2*n)) + (b^2*sin(2*a)*SinIntegral(2*b*x^n))/n]
    @test_int [cos(a + b*x^n)^3/x^(2*n + 1), x, 14, -((3*cos(a + b*x^n))/(x^(2*n)*(8*n))) - cos(3*(a + b*x^n))/(x^(2*n)*(8*n)) - (3*b^2*cos(a)*CosIntegral(b*x^n))/(8*n) - (9*b^2*cos(3*a)*CosIntegral(3*b*x^n))/(8*n) + (3*b*sin(a + b*x^n))/(x^n*(8*n)) + (3*b*sin(3*(a + b*x^n)))/(x^n*(8*n)) + (3*b^2*sin(a)*SinIntegral(b*x^n))/(8*n) + (9*b^2*sin(3*a)*SinIntegral(3*b*x^n))/(8*n)]


    #= ::Title:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(a+b*(c+d*x)^n)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(a+b*(c+d*x)^n)=#


    @test_int [x^2*cos((a + b*x)^2), x, 7, (a^2*sqrt(pi/2)*FresnelC(sqrt(2/pi)*(a + b*x)))/b^3 - (sqrt(pi/2)*FresnelS(sqrt(2/pi)*(a + b*x)))/(2*b^3) - (a*sin((a + b*x)^2))/b^3 + ((a + b*x)*sin((a + b*x)^2))/(2*b^3)]
    @test_int [x^1*cos((a + b*x)^2), x, 5, -((a*sqrt(pi/2)*FresnelC(sqrt(2/pi)*(a + b*x)))/b^2) + sin((a + b*x)^2)/(2*b^2)]
    @test_int [x^0*cos((a + b*x)^2), x, 1, (sqrt(pi/2)*FresnelC(sqrt(2/pi)*(a + b*x)))/b]
    @test_int [cos((a + b*x)^2)/x^1, x, 0, Unintegrable(cos((a + b*x)^2)/x, x)]
    @test_int [cos((a + b*x)^2)/x^2, x, 0, Unintegrable(cos((a + b*x)^2)/x^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(a+b*(c+d*x)^(n/2))=#


    @test_int [cos(a + b*sqrt(c + d*x))*x^2, x, 14, (240*cos(a + b*sqrt(c + d*x)))/(b^6*d^3) + (24*c*cos(a + b*sqrt(c + d*x)))/(b^4*d^3) + (2*c^2*cos(a + b*sqrt(c + d*x)))/(b^2*d^3) - (120*(c + d*x)*cos(a + b*sqrt(c + d*x)))/(b^4*d^3) - (12*c*(c + d*x)*cos(a + b*sqrt(c + d*x)))/(b^2*d^3) + (10*(c + d*x)^2*cos(a + b*sqrt(c + d*x)))/(b^2*d^3) + (240*sqrt(c + d*x)*sin(a + b*sqrt(c + d*x)))/(b^5*d^3) + (24*c*sqrt(c + d*x)*sin(a + b*sqrt(c + d*x)))/(b^3*d^3) + (2*c^2*sqrt(c + d*x)*sin(a + b*sqrt(c + d*x)))/(b*d^3) - (40*(c + d*x)^(3/2)*sin(a + b*sqrt(c + d*x)))/(b^3*d^3) - (4*c*(c + d*x)^(3/2)*sin(a + b*sqrt(c + d*x)))/(b*d^3) + (2*(c + d*x)^(5/2)*sin(a + b*sqrt(c + d*x)))/(b*d^3)]
    @test_int [cos(a + b*sqrt(c + d*x))*x^1, x, 8, -((12*cos(a + b*sqrt(c + d*x)))/(b^4*d^2)) - (2*c*cos(a + b*sqrt(c + d*x)))/(b^2*d^2) + (6*(c + d*x)*cos(a + b*sqrt(c + d*x)))/(b^2*d^2) - (12*sqrt(c + d*x)*sin(a + b*sqrt(c + d*x)))/(b^3*d^2) - (2*c*sqrt(c + d*x)*sin(a + b*sqrt(c + d*x)))/(b*d^2) + (2*(c + d*x)^(3/2)*sin(a + b*sqrt(c + d*x)))/(b*d^2)]
    @test_int [cos(a + b*sqrt(c + d*x))*x^0, x, 3, (2*cos(a + b*sqrt(c + d*x)))/(b^2*d) + (2*sqrt(c + d*x)*sin(a + b*sqrt(c + d*x)))/(b*d)]
    @test_int [cos(a + b*sqrt(c + d*x))/x^1, x, 8, cos(a - b*sqrt(c))*CosIntegral(b*(sqrt(c) + sqrt(c + d*x))) + cos(a + b*sqrt(c))*CosIntegral(b*sqrt(c) - b*sqrt(c + d*x)) - sin(a - b*sqrt(c))*SinIntegral(b*(sqrt(c) + sqrt(c + d*x))) + sin(a + b*sqrt(c))*SinIntegral(b*sqrt(c) - b*sqrt(c + d*x))]
    @test_int [cos(a + b*sqrt(c + d*x))/x^2, x, 10, -(cos(a + b*sqrt(c + d*x))/x) + (b*d*CosIntegral(b*(sqrt(c) + sqrt(c + d*x)))*sin(a - b*sqrt(c)))/(2*sqrt(c)) - (b*d*CosIntegral(b*sqrt(c) - b*sqrt(c + d*x))*sin(a + b*sqrt(c)))/(2*sqrt(c)) + (b*d*cos(a - b*sqrt(c))*SinIntegral(b*(sqrt(c) + sqrt(c + d*x))))/(2*sqrt(c)) + (b*d*cos(a + b*sqrt(c))*SinIntegral(b*sqrt(c) - b*sqrt(c + d*x)))/(2*sqrt(c))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(a+b*(c+d*x)^(n/3))=#


    @test_int [cos(a + b*(c + d*x)^(1/3))*x^2, x, 20, -((720*c*cos(a + b*(c + d*x)^(1/3)))/(b^6*d^3)) - (120960*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^8*d^3) + (6*c^2*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^2*d^3) + (360*c*(c + d*x)^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b^4*d^3) + (20160*(c + d*x)*cos(a + b*(c + d*x)^(1/3)))/(b^6*d^3) - (30*c*(c + d*x)^(4/3)*cos(a + b*(c + d*x)^(1/3)))/(b^2*d^3) - (1008*(c + d*x)^(5/3)*cos(a + b*(c + d*x)^(1/3)))/(b^4*d^3) + (24*(c + d*x)^(7/3)*cos(a + b*(c + d*x)^(1/3)))/(b^2*d^3) + (120960*sin(a + b*(c + d*x)^(1/3)))/(b^9*d^3) - (6*c^2*sin(a + b*(c + d*x)^(1/3)))/(b^3*d^3) - (720*c*(c + d*x)^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^5*d^3) - (60480*(c + d*x)^(2/3)*sin(a + b*(c + d*x)^(1/3)))/(b^7*d^3) + (3*c^2*(c + d*x)^(2/3)*sin(a + b*(c + d*x)^(1/3)))/(b*d^3) + (120*c*(c + d*x)*sin(a + b*(c + d*x)^(1/3)))/(b^3*d^3) + (5040*(c + d*x)^(4/3)*sin(a + b*(c + d*x)^(1/3)))/(b^5*d^3) - (6*c*(c + d*x)^(5/3)*sin(a + b*(c + d*x)^(1/3)))/(b*d^3) - (168*(c + d*x)^2*sin(a + b*(c + d*x)^(1/3)))/(b^3*d^3) + (3*(c + d*x)^(8/3)*sin(a + b*(c + d*x)^(1/3)))/(b*d^3)]
    @test_int [cos(a + b*(c + d*x)^(1/3))*x^1, x, 11, (360*cos(a + b*(c + d*x)^(1/3)))/(b^6*d^2) - (6*c*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^2*d^2) - (180*(c + d*x)^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b^4*d^2) + (15*(c + d*x)^(4/3)*cos(a + b*(c + d*x)^(1/3)))/(b^2*d^2) + (6*c*sin(a + b*(c + d*x)^(1/3)))/(b^3*d^2) + (360*(c + d*x)^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^5*d^2) - (3*c*(c + d*x)^(2/3)*sin(a + b*(c + d*x)^(1/3)))/(b*d^2) - (60*(c + d*x)*sin(a + b*(c + d*x)^(1/3)))/(b^3*d^2) + (3*(c + d*x)^(5/3)*sin(a + b*(c + d*x)^(1/3)))/(b*d^2)]
    @test_int [cos(a + b*(c + d*x)^(1/3))*x^0, x, 4, (6*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^2*d) - (6*sin(a + b*(c + d*x)^(1/3)))/(b^3*d) + (3*(c + d*x)^(2/3)*sin(a + b*(c + d*x)^(1/3)))/(b*d)]
    @test_int [cos(a + b*(c + d*x)^(1/3))/x^1, x, 11, cos(a + b*c^(1/3))*CosIntegral(b*c^(1/3) - b*(c + d*x)^(1/3)) + cos(a + (-1)^(2/3)*b*c^(1/3))*CosIntegral((-1)^(2/3)*b*c^(1/3) - b*(c + d*x)^(1/3)) + cos(a - (-1)^(1/3)*b*c^(1/3))*CosIntegral((-1)^(1/3)*b*c^(1/3) + b*(c + d*x)^(1/3)) + sin(a + b*c^(1/3))*SinIntegral(b*c^(1/3) - b*(c + d*x)^(1/3)) + sin(a + (-1)^(2/3)*b*c^(1/3))*SinIntegral((-1)^(2/3)*b*c^(1/3) - b*(c + d*x)^(1/3)) - sin(a - (-1)^(1/3)*b*c^(1/3))*SinIntegral((-1)^(1/3)*b*c^(1/3) + b*(c + d*x)^(1/3))]
    @test_int [cos(a + b*(c + d*x)^(1/3))/x^2, x, 13, -(cos(a + b*(c + d*x)^(1/3))/x) - (b*d*CosIntegral(b*c^(1/3) - b*(c + d*x)^(1/3))*sin(a + b*c^(1/3)))/(3*c^(2/3)) + ((-1)^(1/3)*b*d*CosIntegral((-1)^(1/3)*b*c^(1/3) + b*(c + d*x)^(1/3))*sin(a - (-1)^(1/3)*b*c^(1/3)))/(3*c^(2/3)) - ((-1)^(2/3)*b*d*CosIntegral((-1)^(2/3)*b*c^(1/3) - b*(c + d*x)^(1/3))*sin(a + (-1)^(2/3)*b*c^(1/3)))/(3*c^(2/3)) + (b*d*cos(a + b*c^(1/3))*SinIntegral(b*c^(1/3) - b*(c + d*x)^(1/3)))/(3*c^(2/3)) + ((-1)^(2/3)*b*d*cos(a + (-1)^(2/3)*b*c^(1/3))*SinIntegral((-1)^(2/3)*b*c^(1/3) - b*(c + d*x)^(1/3)))/(3*c^(2/3)) + ((-1)^(1/3)*b*d*cos(a - (-1)^(1/3)*b*c^(1/3))*SinIntegral((-1)^(1/3)*b*c^(1/3) + b*(c + d*x)^(1/3)))/(3*c^(2/3))]
    end
