@testset "4.1.12 (e x)^m (a+b sin(c+d x^n))^p" begin
    (a, b, c, d, e, f, g, m, n, p, x, ) = @variables a b c d e f g m n p x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*x^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*x^2))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*sin(c+d*x^2))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^5*(a + b*sin(c + d*x^2)), x, 6, (a*x^6)/6 + (b*cos(c + d*x^2))/d^3 - (b*x^4*cos(c + d*x^2))/(2*d) + (b*x^2*sin(c + d*x^2))/d^2]
    @test_int [x^3*(a + b*sin(c + d*x^2)), x, 5, (a*x^4)/4 - (b*x^2*cos(c + d*x^2))/(2*d) + (b*sin(c + d*x^2))/(2*d^2)]
    @test_int [x^1*(a + b*sin(c + d*x^2)), x, 4, (a*x^2)/2 - (b*cos(c + d*x^2))/(2*d)]
    @test_int [(a + b*sin(c + d*x^2))/x^1, x, 5, a*log(x) + (1/2)*b*CosIntegral(d*x^2)*sin(c) + (1/2)*b*cos(c)*SinIntegral(d*x^2)]
    @test_int [(a + b*sin(c + d*x^2))/x^3, x, 7, -(a/(2*x^2)) + (1/2)*b*d*cos(c)*CosIntegral(d*x^2) - (b*sin(c + d*x^2))/(2*x^2) - (1/2)*b*d*sin(c)*SinIntegral(d*x^2)]
    @test_int [(a + b*sin(c + d*x^2))/x^5, x, 8, -(a/(4*x^4)) - (b*d*cos(c + d*x^2))/(4*x^2) - (1/4)*b*d^2*CosIntegral(d*x^2)*sin(c) - (b*sin(c + d*x^2))/(4*x^4) - (1/4)*b*d^2*cos(c)*SinIntegral(d*x^2)]

    @test_int [x^4*(a + b*sin(c + d*x^2)), x, 7, (a*x^5)/5 - (b*x^3*cos(c + d*x^2))/(2*d) - (3*b*sqrt(pi/2)*cos(c)*FresnelS(sqrt(d)*sqrt(2/pi)*x))/(4*d^(5/2)) - (3*b*sqrt(pi/2)*FresnelC(sqrt(d)*sqrt(2/pi)*x)*sin(c))/(4*d^(5/2)) + (3*b*x*sin(c + d*x^2))/(4*d^2)]
    @test_int [x^2*(a + b*sin(c + d*x^2)), x, 6, (a*x^3)/3 - (b*x*cos(c + d*x^2))/(2*d) + (b*sqrt(pi/2)*cos(c)*FresnelC(sqrt(d)*sqrt(2/pi)*x))/(2*d^(3/2)) - (b*sqrt(pi/2)*FresnelS(sqrt(d)*sqrt(2/pi)*x)*sin(c))/(2*d^(3/2))]
    @test_int [x^0*(a + b*sin(c + d*x^2)), x, 4, a*x + (b*sqrt(pi/2)*cos(c)*FresnelS(sqrt(d)*sqrt(2/pi)*x))/sqrt(d) + (b*sqrt(pi/2)*FresnelC(sqrt(d)*sqrt(2/pi)*x)*sin(c))/sqrt(d)]
    @test_int [(a + b*sin(c + d*x^2))/x^2, x, 6, -(a/x) + b*sqrt(d)*sqrt(2*pi)*cos(c)*FresnelC(sqrt(d)*sqrt(2/pi)*x) - b*sqrt(d)*sqrt(2*pi)*FresnelS(sqrt(d)*sqrt(2/pi)*x)*sin(c) - (b*sin(c + d*x^2))/x]
    @test_int [(a + b*sin(c + d*x^2))/x^4, x, 7, -(a/(3*x^3)) - (2*b*d*cos(c + d*x^2))/(3*x) - (2/3)*b*d^(3/2)*sqrt(2*pi)*cos(c)*FresnelS(sqrt(d)*sqrt(2/pi)*x) - (2/3)*b*d^(3/2)*sqrt(2*pi)*FresnelC(sqrt(d)*sqrt(2/pi)*x)*sin(c) - (b*sin(c + d*x^2))/(3*x^3)]


    @test_int [x^5*(a + b*sin(c + d*x^2))^2, x, 10, -((b^2*x^2)/(8*d^2)) + (a^2*x^6)/6 + (b^2*x^6)/12 + (2*a*b*cos(c + d*x^2))/d^3 - (a*b*x^4*cos(c + d*x^2))/d + (2*a*b*x^2*sin(c + d*x^2))/d^2 + (b^2*cos(c + d*x^2)*sin(c + d*x^2))/(8*d^3) - (b^2*x^4*cos(c + d*x^2)*sin(c + d*x^2))/(4*d) + (b^2*x^2*sin(c + d*x^2)^2)/(4*d^2)]
    @test_int [x^3*(a + b*sin(c + d*x^2))^2, x, 7, (a^2*x^4)/4 + (b^2*x^4)/8 - (a*b*x^2*cos(c + d*x^2))/d + (a*b*sin(c + d*x^2))/d^2 - (b^2*x^2*cos(c + d*x^2)*sin(c + d*x^2))/(4*d) + (b^2*sin(c + d*x^2)^2)/(8*d^2)]
    @test_int [x^1*(a + b*sin(c + d*x^2))^2, x, 2, (1/4)*(2*a^2 + b^2)*x^2 - (a*b*cos(c + d*x^2))/d - (b^2*cos(c + d*x^2)*sin(c + d*x^2))/(4*d)]
    @test_int [(a + b*sin(c + d*x^2))^2/x^1, x, 9, (-(1/4))*b^2*cos(2*c)*CosIntegral(2*d*x^2) + (1/2)*(2*a^2 + b^2)*log(x) + a*b*CosIntegral(d*x^2)*sin(c) + a*b*cos(c)*SinIntegral(d*x^2) + (1/4)*b^2*sin(2*c)*SinIntegral(2*d*x^2)]
    @test_int [(a + b*sin(c + d*x^2))^2/x^3, x, 13, -((2*a^2 + b^2)/(4*x^2)) + (b^2*cos(2*(c + d*x^2)))/(4*x^2) + a*b*d*cos(c)*CosIntegral(d*x^2) + (1/2)*b^2*d*CosIntegral(2*d*x^2)*sin(2*c) - (a*b*sin(c + d*x^2))/x^2 - a*b*d*sin(c)*SinIntegral(d*x^2) + (1/2)*b^2*d*cos(2*c)*SinIntegral(2*d*x^2)]
    @test_int [(a + b*sin(c + d*x^2))^2/x^5, x, 15, -((2*a^2 + b^2)/(8*x^4)) - (a*b*d*cos(c + d*x^2))/(2*x^2) + (b^2*cos(2*(c + d*x^2)))/(8*x^4) + (1/2)*b^2*d^2*cos(2*c)*CosIntegral(2*d*x^2) - (1/2)*a*b*d^2*CosIntegral(d*x^2)*sin(c) - (a*b*sin(c + d*x^2))/(2*x^4) - (b^2*d*sin(2*(c + d*x^2)))/(4*x^2) - (1/2)*a*b*d^2*cos(c)*SinIntegral(d*x^2) - (1/2)*b^2*d^2*sin(2*c)*SinIntegral(2*d*x^2)]

    @test_int [x^4*(a + b*sin(c + d*x^2))^2, x, 13, (1/10)*(2*a^2 + b^2)*x^5 - (a*b*x^3*cos(c + d*x^2))/d - (3*b^2*x*cos(2*c + 2*d*x^2))/(32*d^2) + (3*b^2*sqrt(pi)*cos(2*c)*FresnelC((2*sqrt(d)*x)/sqrt(pi)))/(64*d^(5/2)) - (3*a*b*sqrt(pi/2)*cos(c)*FresnelS(sqrt(d)*sqrt(2/pi)*x))/(2*d^(5/2)) - (3*a*b*sqrt(pi/2)*FresnelC(sqrt(d)*sqrt(2/pi)*x)*sin(c))/(2*d^(5/2)) - (3*b^2*sqrt(pi)*FresnelS((2*sqrt(d)*x)/sqrt(pi))*sin(2*c))/(64*d^(5/2)) + (3*a*b*x*sin(c + d*x^2))/(2*d^2) - (b^2*x^3*sin(2*c + 2*d*x^2))/(8*d)]
    @test_int [x^2*(a + b*sin(c + d*x^2))^2, x, 11, (1/6)*(2*a^2 + b^2)*x^3 - (a*b*x*cos(c + d*x^2))/d + (a*b*sqrt(pi/2)*cos(c)*FresnelC(sqrt(d)*sqrt(2/pi)*x))/d^(3/2) + (b^2*sqrt(pi)*cos(2*c)*FresnelS((2*sqrt(d)*x)/sqrt(pi)))/(16*d^(3/2)) - (a*b*sqrt(pi/2)*FresnelS(sqrt(d)*sqrt(2/pi)*x)*sin(c))/d^(3/2) + (b^2*sqrt(pi)*FresnelC((2*sqrt(d)*x)/sqrt(pi))*sin(2*c))/(16*d^(3/2)) - (b^2*x*sin(2*c + 2*d*x^2))/(8*d)]
    @test_int [x^0*(a + b*sin(c + d*x^2))^2, x, 8, (1/2)*(2*a^2 + b^2)*x - (b^2*sqrt(pi)*cos(2*c)*FresnelC((2*sqrt(d)*x)/sqrt(pi)))/(4*sqrt(d)) + (a*b*sqrt(2*pi)*cos(c)*FresnelS(sqrt(d)*sqrt(2/pi)*x))/sqrt(d) + (a*b*sqrt(2*pi)*FresnelC(sqrt(d)*sqrt(2/pi)*x)*sin(c))/sqrt(d) + (b^2*sqrt(pi)*FresnelS((2*sqrt(d)*x)/sqrt(pi))*sin(2*c))/(4*sqrt(d))]
    @test_int [(a + b*sin(c + d*x^2))^2/x^2, x, 11, -((2*a^2 + b^2)/(2*x)) + (b^2*cos(2*c + 2*d*x^2))/(2*x) + 2*a*b*sqrt(d)*sqrt(2*pi)*cos(c)*FresnelC(sqrt(d)*sqrt(2/pi)*x) + b^2*sqrt(d)*sqrt(pi)*cos(2*c)*FresnelS((2*sqrt(d)*x)/sqrt(pi)) - 2*a*b*sqrt(d)*sqrt(2*pi)*FresnelS(sqrt(d)*sqrt(2/pi)*x)*sin(c) + b^2*sqrt(d)*sqrt(pi)*FresnelC((2*sqrt(d)*x)/sqrt(pi))*sin(2*c) - (2*a*b*sin(c + d*x^2))/x]
    @test_int [(a + b*sin(c + d*x^2))^2/x^4, x, 13, -((2*a^2 + b^2)/(6*x^3)) - (4*a*b*d*cos(c + d*x^2))/(3*x) + (b^2*cos(2*c + 2*d*x^2))/(6*x^3) + (4/3)*b^2*d^(3/2)*sqrt(pi)*cos(2*c)*FresnelC((2*sqrt(d)*x)/sqrt(pi)) - (4/3)*a*b*d^(3/2)*sqrt(2*pi)*cos(c)*FresnelS(sqrt(d)*sqrt(2/pi)*x) - (4/3)*a*b*d^(3/2)*sqrt(2*pi)*FresnelC(sqrt(d)*sqrt(2/pi)*x)*sin(c) - (4/3)*b^2*d^(3/2)*sqrt(pi)*FresnelS((2*sqrt(d)*x)/sqrt(pi))*sin(2*c) - (2*a*b*sin(c + d*x^2))/(3*x^3) - (2*b^2*d*sin(2*c + 2*d*x^2))/(3*x)]


    @test_int [x^5*sin(a + b*x^2)^3, x, 7, (7*cos(a + b*x^2))/(9*b^3) - (x^4*cos(a + b*x^2))/(3*b) - cos(a + b*x^2)^3/(27*b^3) + (2*x^2*sin(a + b*x^2))/(3*b^2) - (x^4*cos(a + b*x^2)*sin(a + b*x^2)^2)/(6*b) + (x^2*sin(a + b*x^2)^3)/(9*b^2)]
    @test_int [x^3*sin(a + b*x^2)^3, x, 4, -((x^2*cos(a + b*x^2))/(3*b)) + sin(a + b*x^2)/(3*b^2) - (x^2*cos(a + b*x^2)*sin(a + b*x^2)^2)/(6*b) + sin(a + b*x^2)^3/(18*b^2)]
    @test_int [x^1*sin(a + b*x^2)^3, x, 3, -(cos(a + b*x^2)/(2*b)) + cos(a + b*x^2)^3/(6*b)]
    @test_int [sin(a + b*x^2)^3/x^1, x, 8, (3/8)*CosIntegral(b*x^2)*sin(a) - (1/8)*CosIntegral(3*b*x^2)*sin(3*a) + (3/8)*cos(a)*SinIntegral(b*x^2) - (1/8)*cos(3*a)*SinIntegral(3*b*x^2)]
    @test_int [sin(a + b*x^2)^3/x^3, x, 12, (3/8)*b*cos(a)*CosIntegral(b*x^2) - (3/8)*b*cos(3*a)*CosIntegral(3*b*x^2) - (3*sin(a + b*x^2))/(8*x^2) + sin(3*(a + b*x^2))/(8*x^2) - (3/8)*b*sin(a)*SinIntegral(b*x^2) + (3/8)*b*sin(3*a)*SinIntegral(3*b*x^2)]

    @test_int [x^2*sin(a + b*x^2)^3, x, 10, -((3*x*cos(a + b*x^2))/(8*b)) + (x*cos(3*a + 3*b*x^2))/(24*b) + (3*sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*x))/(8*b^(3/2)) - (sqrt(pi/6)*cos(3*a)*FresnelC(sqrt(b)*sqrt(6/pi)*x))/(24*b^(3/2)) - (3*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*x)*sin(a))/(8*b^(3/2)) + (sqrt(pi/6)*FresnelS(sqrt(b)*sqrt(6/pi)*x)*sin(3*a))/(24*b^(3/2))]
    @test_int [x^0*sin(a + b*x^2)^3, x, 8, (3*sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*x))/(4*sqrt(b)) - (sqrt(pi/6)*cos(3*a)*FresnelS(sqrt(b)*sqrt(6/pi)*x))/(4*sqrt(b)) + (3*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*x)*sin(a))/(4*sqrt(b)) - (sqrt(pi/6)*FresnelC(sqrt(b)*sqrt(6/pi)*x)*sin(3*a))/(4*sqrt(b))]
    @test_int [sin(a + b*x^2)^3/x^2, x, 9, (3/2)*sqrt(b)*sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*x) - (1/2)*sqrt(b)*sqrt((3*pi)/2)*cos(3*a)*FresnelC(sqrt(b)*sqrt(6/pi)*x) - (3/2)*sqrt(b)*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*x)*sin(a) + (1/2)*sqrt(b)*sqrt((3*pi)/2)*FresnelS(sqrt(b)*sqrt(6/pi)*x)*sin(3*a) - sin(a + b*x^2)^3/x]


    @test_int [x^2*sin(x^2)^3, x, 6, (-(1/2))*x*cos(x^2) + (1/6)*x*cos(x^2)^3 + (3/8)*sqrt(pi/2)*FresnelC(sqrt(2/pi)*x) - (1/24)*sqrt(pi/6)*FresnelC(sqrt(6/pi)*x), (-(3/8))*x*cos(x^2) + (1/24)*x*cos(3*x^2) + (3/8)*sqrt(pi/2)*FresnelC(sqrt(2/pi)*x) - (1/24)*sqrt(pi/6)*FresnelC(sqrt(6/pi)*x)]
    @test_int [x^4*cos(x^2)*sin(x^2)^2, x, 7, (1/4)*x*cos(x^2) - (1/12)*x*cos(x^2)^3 - (3/16)*sqrt(pi/2)*FresnelC(sqrt(2/pi)*x) + (1/48)*sqrt(pi/6)*FresnelC(sqrt(6/pi)*x) + (1/6)*x^3*sin(x^2)^3, (3/16)*x*cos(x^2) - (1/48)*x*cos(3*x^2) - (3/16)*sqrt(pi/2)*FresnelC(sqrt(2/pi)*x) + (1/48)*sqrt(pi/6)*FresnelC(sqrt(6/pi)*x) + (1/6)*x^3*sin(x^2)^3]


    @test_int [x*sin(a + b*x^2)^7, x, 3, -(cos(a + b*x^2)/(2*b)) + cos(a + b*x^2)^3/(2*b) - (3*cos(a + b*x^2)^5)/(10*b) + cos(a + b*x^2)^7/(14*b)]


    @test_int [(1 + sin(x^2))^2/x^3, x, 8, -(3/(4*x^2)) + cos(2*x^2)/(4*x^2) + CosIntegral(x^2) - sin(x^2)/x^2 + (1/2)*SinIntegral(2*x^2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^5/(a + b*sin(c + d*x^2)), x, 11, -((im*x^4*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/(2*sqrt(a^2 - b^2)*d)) + (im*x^4*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/(2*sqrt(a^2 - b^2)*d) - (x^2*PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d^2) + (x^2*PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d^2) - (im*PolyLog(3, (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d^3) + (im*PolyLog(3, (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d^3)]
    @test_int [x^3/(a + b*sin(c + d*x^2)), x, 9, -((im*x^2*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/(2*sqrt(a^2 - b^2)*d)) + (im*x^2*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/(2*sqrt(a^2 - b^2)*d) - PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2)))/(2*sqrt(a^2 - b^2)*d^2) + PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2)))/(2*sqrt(a^2 - b^2)*d^2)]
    @test_int [x^1/(a + b*sin(c + d*x^2)), x, 4, atan((b + a*tan((1/2)*(c + d*x^2)))/sqrt(a^2 - b^2))/(sqrt(a^2 - b^2)*d)]
    @test_int [1/(x^1*(a + b*sin(c + d*x^2))), x, 0, Unintegrable(1/(x*(a + b*sin(c + d*x^2))), x)]
    @test_int [1/(x^3*(a + b*sin(c + d*x^2))), x, 0, Unintegrable(1/(x^3*(a + b*sin(c + d*x^2))), x)]

    @test_int [x^2/(a + b*sin(c + d*x^2)), x, 0, Unintegrable(x^2/(a + b*sin(c + d*x^2)), x)]
    @test_int [x^0/(a + b*sin(c + d*x^2)), x, 0, Unintegrable(1/(a + b*sin(c + d*x^2)), x)]
    @test_int [1/(x^2*(a + b*sin(c + d*x^2))), x, 0, Unintegrable(1/(x^2*(a + b*sin(c + d*x^2))), x)]


    @test_int [x^5/(a + b*sin(c + d*x^2))^2, x, 19, (im*x^4)/(2*(a^2 - b^2)*d) - (x^2*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)*d^2) - (im*a*x^4*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/(2*(a^2 - b^2)^(3/2)*d) - (x^2*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)*d^2) + (im*a*x^4*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/(2*(a^2 - b^2)^(3/2)*d) + (im*PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)*d^3) - (a*x^2*PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*d^2) + (im*PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)*d^3) + (a*x^2*PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*d^2) - (im*a*PolyLog(3, (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*d^3) + (im*a*PolyLog(3, (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*d^3) + (b*x^4*cos(c + d*x^2))/(2*(a^2 - b^2)*d*(a + b*sin(c + d*x^2)))]
    @test_int [x^3/(a + b*sin(c + d*x^2))^2, x, 12, -((im*a*x^2*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/(2*(a^2 - b^2)^(3/2)*d)) + (im*a*x^2*log(1 - (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/(2*(a^2 - b^2)^(3/2)*d) - log(a + b*sin(c + d*x^2))/(2*(a^2 - b^2)*d^2) - (a*PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a - sqrt(a^2 - b^2))))/(2*(a^2 - b^2)^(3/2)*d^2) + (a*PolyLog(2, (im*b*ℯ^(im*(c + d*x^2)))/(a + sqrt(a^2 - b^2))))/(2*(a^2 - b^2)^(3/2)*d^2) + (b*x^2*cos(c + d*x^2))/(2*(a^2 - b^2)*d*(a + b*sin(c + d*x^2)))]
    @test_int [x^1/(a + b*sin(c + d*x^2))^2, x, 6, (a*atan((b + a*tan((1/2)*(c + d*x^2)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(3/2)*d) + (b*cos(c + d*x^2))/(2*(a^2 - b^2)*d*(a + b*sin(c + d*x^2)))]
    @test_int [1/(x^1*(a + b*sin(c + d*x^2))^2), x, 0, Unintegrable(1/(x*(a + b*sin(c + d*x^2))^2), x)]
    @test_int [1/(x^3*(a + b*sin(c + d*x^2))^2), x, 0, Unintegrable(1/(x^3*(a + b*sin(c + d*x^2))^2), x)]

    @test_int [x^2/(a + b*sin(c + d*x^2))^2, x, 0, Unintegrable(x^2/(a + b*sin(c + d*x^2))^2, x)]
    @test_int [x^0/(a + b*sin(c + d*x^2))^2, x, 0, Unintegrable(1/(a + b*sin(c + d*x^2))^2, x)]
    @test_int [1/(x^2*(a + b*sin(c + d*x^2))^2), x, 0, Unintegrable(1/(x^2*(a + b*sin(c + d*x^2))^2), x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(e*x)^(m/2)*(a+b*sin(c+d*x^2))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*x^2))^p*with*m*symbolic=#


    @test_int [(e*x)^m*(a + b*sin(c + d*x^2))^p, x, 0, Unintegrable((e*x)^m*(a + b*sin(c + d*x^2))^p, x)]


    @test_int [(e*x)^m*(a + b*sin(c + d*x^2))^3, x, 13, (a*(2*a^2 + 3*b^2)*(e*x)^(1 + m))/(2*e*(1 + m)) + (3*im*b*(4*a^2 + b^2)*ℯ^(im*c)*(e*x)^(1 + m)*((-im)*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, (-im)*d*x^2))/(16*e) - (3*im*b*(4*a^2 + b^2)*(e*x)^(1 + m)*(im*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, im*d*x^2))/(ℯ^(im*c)*(16*e)) + (3*2^(-(7/2) - m/2)*a*b^2*ℯ^(2*im*c)*(e*x)^(1 + m)*((-im)*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, -2*im*d*x^2))/e + (3*2^(-(7/2) - m/2)*a*b^2*(e*x)^(1 + m)*(im*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, 2*im*d*x^2))/(ℯ^(2*im*c)*e) - (im*3^(-(1/2) - m/2)*b^3*ℯ^(3*im*c)*(e*x)^(1 + m)*((-im)*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, -3*im*d*x^2))/(16*e) + (im*3^(-(1/2) - m/2)*b^3*(e*x)^(1 + m)*(im*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, 3*im*d*x^2))/(ℯ^(3*im*c)*(16*e))]
    @test_int [(e*x)^m*(a + b*sin(c + d*x^2))^2, x, 9, ((2*a^2 + b^2)*(e*x)^(1 + m))/(2*e*(1 + m)) + (im*a*b*ℯ^(im*c)*(e*x)^(1 + m)*((-im)*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, (-im)*d*x^2))/(2*e) - (im*a*b*(e*x)^(1 + m)*(im*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, im*d*x^2))/(ℯ^(im*c)*(2*e)) + (2^(-(7/2) - m/2)*b^2*ℯ^(2*im*c)*(e*x)^(1 + m)*((-im)*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, -2*im*d*x^2))/e + (2^(-(7/2) - m/2)*b^2*(e*x)^(1 + m)*(im*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, 2*im*d*x^2))/(ℯ^(2*im*c)*e)]
    @test_int [(e*x)^m*(a + b*sin(c + d*x^2))^1, x, 5, (a*(e*x)^(1 + m))/(e*(1 + m)) + (im*b*ℯ^(im*c)*(e*x)^(1 + m)*((-im)*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, (-im)*d*x^2))/(4*e) - (im*b*(e*x)^(1 + m)*(im*d*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, im*d*x^2))/(ℯ^(im*c)*(4*e))]
    @test_int [(e*x)^m/(a + b*sin(c + d*x^2))^1, x, 0, Unintegrable((e*x)^m/(a + b*sin(c + d*x^2)), x)]
    @test_int [(e*x)^m/(a + b*sin(c + d*x^2))^2, x, 0, Unintegrable((e*x)^m/(a + b*sin(c + d*x^2))^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*x^3))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*sin(c+d*x^3))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^5*(a + b*sin(c + d*x^3)), x, 5, (a*x^6)/6 - (b*x^3*cos(c + d*x^3))/(3*d) + (b*sin(c + d*x^3))/(3*d^2)]
    @test_int [x^2*(a + b*sin(c + d*x^3)), x, 4, (a*x^3)/3 - (b*cos(c + d*x^3))/(3*d)]
    @test_int [(a + b*sin(c + d*x^3))/x, x, 5, a*log(x) + (b*CosIntegral(d*x^3)*sin(c))/3 + (b*cos(c)*SinIntegral(d*x^3))/3]
    @test_int [(a + b*sin(c + d*x^3))/x^4, x, 7, -a/(3*x^3) + (b*d*cos(c)*CosIntegral(d*x^3))/3 - (b*sin(c + d*x^3))/(3*x^3) - (b*d*sin(c)*SinIntegral(d*x^3))/3]

    @test_int [x^4*(a + b*sin(c + d*x^3)), x, 6, (a*x^5)/5 - (b*x^2*cos(c + d*x^3))/(3*d) - (b*ℯ^(im*c)*x^2*Gamma(2/3, (-im)*d*x^3))/(9*d*((-im)*d*x^3)^(2/3)) - (b*x^2*Gamma(2/3, im*d*x^3))/(9*d*ℯ^(im*c)*(im*d*x^3)^(2/3))]
    @test_int [x*(a + b*sin(c + d*x^3)), x, 5, (a*x^2)/2 + ((im/6)*b*ℯ^(im*c)*x^2*Gamma(2/3, (-im)*d*x^3))/((-im)*d*x^3)^(2/3) - ((im/6)*b*x^2*Gamma(2/3, im*d*x^3))/(ℯ^(im*c)*(im*d*x^3)^(2/3))]
    @test_int [(a + b*sin(c + d*x^3))/x^2, x, 6, -(a/x) - (b*d*ℯ^(im*c)*x^2*Gamma(2/3, (-im)*d*x^3))/(2*((-im)*d*x^3)^(2/3)) - (b*d*x^2*Gamma(2/3, im*d*x^3))/(2*ℯ^(im*c)*(im*d*x^3)^(2/3)) - (b*sin(c + d*x^3))/x]
    @test_int [(a + b*sin(c + d*x^3))/x^5, x, 7, -a/(4*x^4) - (3*b*d*cos(c + d*x^3))/(4*x) - (((3*im)/8)*b*d^2*ℯ^(im*c)*x^2*Gamma(2/3, (-im)*d*x^3))/((-im)*d*x^3)^(2/3) + (((3*im)/8)*b*d^2*x^2*Gamma(2/3, im*d*x^3))/(ℯ^(im*c)*(im*d*x^3)^(2/3)) - (b*sin(c + d*x^3))/(4*x^4)]

    @test_int [x^3*(a + b*sin(c + d*x^3)), x, 6, (a*x^4)/4 - (b*x*cos(c + d*x^3))/(3*d) - (b*ℯ^(im*c)*x*Gamma(1/3, (-im)*d*x^3))/(18*d*((-im)*d*x^3)^(1/3)) - (b*x*Gamma(1/3, im*d*x^3))/(18*d*ℯ^(im*c)*(im*d*x^3)^(1/3))]
    @test_int [a + b*sin(c + d*x^3), x, 4, a*x + ((im/6)*b*ℯ^(im*c)*x*Gamma(1/3, (-im)*d*x^3))/((-im)*d*x^3)^(1/3) - ((im/6)*b*x*Gamma(1/3, im*d*x^3))/(ℯ^(im*c)*(im*d*x^3)^(1/3))]
    @test_int [(a + b*sin(c + d*x^3))/x^3, x, 6, -a/(2*x^2) - (b*d*ℯ^(im*c)*x*Gamma(1/3, (-im)*d*x^3))/(4*((-im)*d*x^3)^(1/3)) - (b*d*x*Gamma(1/3, im*d*x^3))/(4*ℯ^(im*c)*(im*d*x^3)^(1/3)) - (b*sin(c + d*x^3))/(2*x^2)]
    @test_int [(a + b*sin(c + d*x^3))/x^6, x, 7, -a/(5*x^5) - (3*b*d*cos(c + d*x^3))/(10*x^2) - (((3*im)/20)*b*d^2*ℯ^(im*c)*x*Gamma(1/3, (-im)*d*x^3))/((-im)*d*x^3)^(1/3) + (((3*im)/20)*b*d^2*x*Gamma(1/3, im*d*x^3))/(ℯ^(im*c)*(im*d*x^3)^(1/3)) - (b*sin(c + d*x^3))/(5*x^5)]


    @test_int [x^5*(a + b*sin(c + d*x^3))^2, x, 7, (a^2*x^6)/6 + (b^2*x^6)/12 - (2*a*b*x^3*cos(c + d*x^3))/(3*d) + (2*a*b*sin(c + d*x^3))/(3*d^2) - (b^2*x^3*cos(c + d*x^3)*sin(c + d*x^3))/(6*d) + (b^2*sin(c + d*x^3)^2)/(12*d^2)]
    @test_int [x^2*(a + b*sin(c + d*x^3))^2, x, 2, ((2*a^2 + b^2)*x^3)/6 - (2*a*b*cos(c + d*x^3))/(3*d) - (b^2*cos(c + d*x^3)*sin(c + d*x^3))/(6*d)]
    @test_int [(a + b*sin(c + d*x^3))^2/x, x, 9, -(b^2*cos(2*c)*CosIntegral(2*d*x^3))/6 + ((2*a^2 + b^2)*log(x))/2 + (2*a*b*CosIntegral(d*x^3)*sin(c))/3 + (2*a*b*cos(c)*SinIntegral(d*x^3))/3 + (b^2*sin(2*c)*SinIntegral(2*d*x^3))/6]
    @test_int [(a + b*sin(c + d*x^3))^2/x^4, x, 13, -((2*a^2 + b^2)/(6*x^3)) + (b^2*cos(2*(c + d*x^3)))/(6*x^3) + (2/3)*a*b*d*cos(c)*CosIntegral(d*x^3) + (1/3)*b^2*d*CosIntegral(2*d*x^3)*sin(2*c) - (2*a*b*sin(c + d*x^3))/(3*x^3) - (2/3)*a*b*d*sin(c)*SinIntegral(d*x^3) + (1/3)*b^2*d*cos(2*c)*SinIntegral(2*d*x^3)]

    @test_int [x^4*(a + b*sin(c + d*x^3))^2, x, 11, ((2*a^2 + b^2)*x^5)/10 - (2*a*b*x^2*cos(c + d*x^3))/(3*d) - (2*a*b*ℯ^(im*c)*x^2*Gamma(2/3, (-im)*d*x^3))/(9*d*((-im)*d*x^3)^(2/3)) - (2*a*b*x^2*Gamma(2/3, im*d*x^3))/(9*d*ℯ^(im*c)*(im*d*x^3)^(2/3)) + ((im/36)*b^2*ℯ^((2*im)*c)*x^2*Gamma(2/3, (-2*im)*d*x^3))/(2^(2/3)*d*((-im)*d*x^3)^(2/3)) - ((im/36)*b^2*x^2*Gamma(2/3, (2*im)*d*x^3))/(2^(2/3)*d*ℯ^((2*im)*c)*(im*d*x^3)^(2/3)) - (b^2*x^2*sin(2*c + 2*d*x^3))/(12*d)]
    @test_int [x*(a + b*sin(c + d*x^3))^2, x, 9, ((2*a^2 + b^2)*x^2)/4 + ((im/3)*a*b*ℯ^(im*c)*x^2*Gamma(2/3, (-im)*d*x^3))/((-im)*d*x^3)^(2/3) - ((im/3)*a*b*x^2*Gamma(2/3, im*d*x^3))/(ℯ^(im*c)*(im*d*x^3)^(2/3)) + (b^2*ℯ^((2*im)*c)*x^2*Gamma(2/3, (-2*im)*d*x^3))/(12*2^(2/3)*((-im)*d*x^3)^(2/3)) + (b^2*x^2*Gamma(2/3, (2*im)*d*x^3))/(12*2^(2/3)*ℯ^((2*im)*c)*(im*d*x^3)^(2/3))]
    @test_int [(a + b*sin(c + d*x^3))^2/x^2, x, 11, -(2*a^2 + b^2)/(2*x) + (b^2*cos(2*c + 2*d*x^3))/(2*x) - (a*b*d*ℯ^(im*c)*x^2*Gamma(2/3, (-im)*d*x^3))/((-im)*d*x^3)^(2/3) - (a*b*d*x^2*Gamma(2/3, im*d*x^3))/(ℯ^(im*c)*(im*d*x^3)^(2/3)) + ((im/2)*b^2*d*ℯ^((2*im)*c)*x^2*Gamma(2/3, (-2*im)*d*x^3))/(2^(2/3)*((-im)*d*x^3)^(2/3)) - ((im/2)*b^2*d*x^2*Gamma(2/3, (2*im)*d*x^3))/(2^(2/3)*ℯ^((2*im)*c)*(im*d*x^3)^(2/3)) - (2*a*b*sin(c + d*x^3))/x]
    @test_int [(a + b*sin(c + d*x^3))^2/x^5, x, 13, -(2*a^2 + b^2)/(8*x^4) - (3*a*b*d*cos(c + d*x^3))/(2*x) + (b^2*cos(2*c + 2*d*x^3))/(8*x^4) - (((3*im)/4)*a*b*d^2*ℯ^(im*c)*x^2*Gamma(2/3, (-im)*d*x^3))/((-im)*d*x^3)^(2/3) + (((3*im)/4)*a*b*d^2*x^2*Gamma(2/3, im*d*x^3))/(ℯ^(im*c)*(im*d*x^3)^(2/3)) - (3*b^2*d^2*ℯ^((2*im)*c)*x^2*Gamma(2/3, (-2*im)*d*x^3))/(4*2^(2/3)*((-im)*d*x^3)^(2/3)) - (3*b^2*d^2*x^2*Gamma(2/3, (2*im)*d*x^3))/(4*2^(2/3)*ℯ^((2*im)*c)*(im*d*x^3)^(2/3)) - (a*b*sin(c + d*x^3))/(2*x^4) - (3*b^2*d*sin(2*c + 2*d*x^3))/(4*x)]

    @test_int [x^3*(a + b*sin(c + d*x^3))^2, x, 11, ((2*a^2 + b^2)*x^4)/8 - (2*a*b*x*cos(c + d*x^3))/(3*d) - (a*b*ℯ^(im*c)*x*Gamma(1/3, (-im)*d*x^3))/(9*d*((-im)*d*x^3)^(1/3)) - (a*b*x*Gamma(1/3, im*d*x^3))/(9*d*ℯ^(im*c)*(im*d*x^3)^(1/3)) + ((im/72)*b^2*ℯ^((2*im)*c)*x*Gamma(1/3, (-2*im)*d*x^3))/(2^(1/3)*d*((-im)*d*x^3)^(1/3)) - ((im/72)*b^2*x*Gamma(1/3, (2*im)*d*x^3))/(2^(1/3)*d*ℯ^((2*im)*c)*(im*d*x^3)^(1/3)) - (b^2*x*sin(2*c + 2*d*x^3))/(12*d)]
    @test_int [(a + b*sin(c + d*x^3))^2, x, 8, ((2*a^2 + b^2)*x)/2 + ((im/3)*a*b*ℯ^(im*c)*x*Gamma(1/3, (-im)*d*x^3))/((-im)*d*x^3)^(1/3) - ((im/3)*a*b*x*Gamma(1/3, im*d*x^3))/(ℯ^(im*c)*(im*d*x^3)^(1/3)) + (b^2*ℯ^((2*im)*c)*x*Gamma(1/3, (-2*im)*d*x^3))/(12*2^(1/3)*((-im)*d*x^3)^(1/3)) + (b^2*x*Gamma(1/3, (2*im)*d*x^3))/(12*2^(1/3)*ℯ^((2*im)*c)*(im*d*x^3)^(1/3))]
    @test_int [(a + b*sin(c + d*x^3))^2/x^3, x, 11, -(2*a^2 + b^2)/(4*x^2) + (b^2*cos(2*c + 2*d*x^3))/(4*x^2) - (a*b*d*ℯ^(im*c)*x*Gamma(1/3, (-im)*d*x^3))/(2*((-im)*d*x^3)^(1/3)) - (a*b*d*x*Gamma(1/3, im*d*x^3))/(2*ℯ^(im*c)*(im*d*x^3)^(1/3)) + ((im/4)*b^2*d*ℯ^((2*im)*c)*x*Gamma(1/3, (-2*im)*d*x^3))/(2^(1/3)*((-im)*d*x^3)^(1/3)) - ((im/4)*b^2*d*x*Gamma(1/3, (2*im)*d*x^3))/(2^(1/3)*ℯ^((2*im)*c)*(im*d*x^3)^(1/3)) - (a*b*sin(c + d*x^3))/x^2]
    @test_int [(a + b*sin(c + d*x^3))^2/x^6, x, 13, -(2*a^2 + b^2)/(10*x^5) - (3*a*b*d*cos(c + d*x^3))/(5*x^2) + (b^2*cos(2*c + 2*d*x^3))/(10*x^5) - (((3*im)/10)*a*b*d^2*ℯ^(im*c)*x*Gamma(1/3, (-im)*d*x^3))/((-im)*d*x^3)^(1/3) + (((3*im)/10)*a*b*d^2*x*Gamma(1/3, im*d*x^3))/(ℯ^(im*c)*(im*d*x^3)^(1/3)) - (3*b^2*d^2*ℯ^((2*im)*c)*x*Gamma(1/3, (-2*im)*d*x^3))/(10*2^(1/3)*((-im)*d*x^3)^(1/3)) - (3*b^2*d^2*x*Gamma(1/3, (2*im)*d*x^3))/(10*2^(1/3)*ℯ^((2*im)*c)*(im*d*x^3)^(1/3)) - (2*a*b*sin(c + d*x^3))/(5*x^5) - (3*b^2*d*sin(2*c + 2*d*x^3))/(10*x^2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^5/(a + b*sin(c + d*x^3)), x, 9, ((-im/3)*x^3*log(1 - (im*b*ℯ^(im*(c + d*x^3)))/(a - sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d) + ((im/3)*x^3*log(1 - (im*b*ℯ^(im*(c + d*x^3)))/(a + sqrt(a^2 - b^2))))/(sqrt(a^2 - b^2)*d) - PolyLog(2, (im*b*ℯ^(im*(c + d*x^3)))/(a - sqrt(a^2 - b^2)))/(3*sqrt(a^2 - b^2)*d^2) + PolyLog(2, (im*b*ℯ^(im*(c + d*x^3)))/(a + sqrt(a^2 - b^2)))/(3*sqrt(a^2 - b^2)*d^2)]
    @test_int [x^2/(a + b*sin(c + d*x^3)), x, 4, (2*atan((b + a*tan((c + d*x^3)/2))/sqrt(a^2 - b^2)))/(3*sqrt(a^2 - b^2)*d)]
    @test_int [1/(x*(a + b*sin(c + d*x^3))), x, 0, Unintegrable(1/(x*(a + b*sin(c + d*x^3))), x)]
    @test_int [1/(x^4*(a + b*sin(c + d*x^3))), x, 0, Unintegrable(1/(x^4*(a + b*sin(c + d*x^3))), x)]

    @test_int [x/(a + b*sin(c + d*x^3)), x, 0, Unintegrable(x/(a + b*sin(c + d*x^3)), x)]
    @test_int [1/(x^2*(a + b*sin(c + d*x^3))), x, 0, Unintegrable(1/(x^2*(a + b*sin(c + d*x^3))), x)]

    @test_int [(a + b*sin(c + d*x^3))^(-1), x, 0, Unintegrable((a + b*sin(c + d*x^3))^(-1), x)]
    @test_int [1/(x^3*(a + b*sin(c + d*x^3))), x, 0, Unintegrable(1/(x^3*(a + b*sin(c + d*x^3))), x)]


    @test_int [x^5/(a + b*sin(c + d*x^3))^2, x, 12, ((-im/3)*a*x^3*log(1 - (im*b*ℯ^(im*(c + d*x^3)))/(a - sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*d) + ((im/3)*a*x^3*log(1 - (im*b*ℯ^(im*(c + d*x^3)))/(a + sqrt(a^2 - b^2))))/((a^2 - b^2)^(3/2)*d) - log(a + b*sin(c + d*x^3))/(3*(a^2 - b^2)*d^2) - (a*PolyLog(2, (im*b*ℯ^(im*(c + d*x^3)))/(a - sqrt(a^2 - b^2))))/(3*(a^2 - b^2)^(3/2)*d^2) + (a*PolyLog(2, (im*b*ℯ^(im*(c + d*x^3)))/(a + sqrt(a^2 - b^2))))/(3*(a^2 - b^2)^(3/2)*d^2) + (b*x^3*cos(c + d*x^3))/(3*(a^2 - b^2)*d*(a + b*sin(c + d*x^3)))]
    @test_int [x^2/(a + b*sin(c + d*x^3))^2, x, 6, (2*a*atan((b + a*tan((c + d*x^3)/2))/sqrt(a^2 - b^2)))/(3*(a^2 - b^2)^(3/2)*d) + (b*cos(c + d*x^3))/(3*(a^2 - b^2)*d*(a + b*sin(c + d*x^3)))]
    @test_int [1/(x*(a + b*sin(c + d*x^3))^2), x, 0, Unintegrable(1/(x*(a + b*sin(c + d*x^3))^2), x)]
    @test_int [1/(x^4*(a + b*sin(c + d*x^3))^2), x, 0, Unintegrable(1/(x^4*(a + b*sin(c + d*x^3))^2), x)]

    @test_int [x/(a + b*sin(c + d*x^3))^2, x, 0, Unintegrable(x/(a + b*sin(c + d*x^3))^2, x)]
    @test_int [1/(x^2*(a + b*sin(c + d*x^3))^2), x, 0, Unintegrable(1/(x^2*(a + b*sin(c + d*x^3))^2), x)]

    @test_int [(a + b*sin(c + d*x^3))^(-2), x, 0, Unintegrable((a + b*sin(c + d*x^3))^(-2), x)]
    @test_int [1/(x^3*(a + b*sin(c + d*x^3))^2), x, 0, Unintegrable(1/(x^3*(a + b*sin(c + d*x^3))^2), x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(e*x)^(m/2)*(a+b*sin(c+d*x^3))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*x^3))^p*with*m*symbolic=#


    @test_int [(e*x)^m*(a + b*sin(c + d*x^3))^p, x, 0, Unintegrable((e*x)^m*(a + b*sin(c + d*x^3))^p, x)]


    @test_int [(e*x)^m*(a + b*sin(c + d*x^3))^3, x, 13, (a*(2*a^2 + 3*b^2)*(e*x)^(1 + m))/(2*e*(1 + m)) + ((im/8)*b*(4*a^2 + b^2)*ℯ^(im*c)*(e*x)^(1 + m)*((-im)*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, (-im)*d*x^3))/e - ((im/8)*b*(4*a^2 + b^2)*(e*x)^(1 + m)*(im*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, im*d*x^3))/(e*ℯ^(im*c)) + (2^(-7/3 - m/3)*a*b^2*ℯ^((2*im)*c)*(e*x)^(1 + m)*((-im)*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, (-2*im)*d*x^3))/e + (2^(-7/3 - m/3)*a*b^2*(e*x)^(1 + m)*(im*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, (2*im)*d*x^3))/(e*ℯ^((2*im)*c)) - ((im/8)*3^(-4/3 - m/3)*b^3*ℯ^((3*im)*c)*(e*x)^(1 + m)*((-im)*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, (-3*im)*d*x^3))/e + ((im/8)*3^(-4/3 - m/3)*b^3*(e*x)^(1 + m)*(im*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, (3*im)*d*x^3))/(e*ℯ^((3*im)*c))]
    @test_int [(e*x)^m*(a + b*sin(c + d*x^3))^2, x, 9, ((2*a^2 + b^2)*(e*x)^(1 + m))/(2*e*(1 + m)) + ((im/3)*a*b*ℯ^(im*c)*(e*x)^(1 + m)*((-im)*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, (-im)*d*x^3))/e - ((im/3)*a*b*(e*x)^(1 + m)*(im*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, im*d*x^3))/(e*ℯ^(im*c)) + (2^(-7/3 - m/3)*b^2*ℯ^((2*im)*c)*(e*x)^(1 + m)*((-im)*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, (-2*im)*d*x^3))/(3*e) + (2^(-7/3 - m/3)*b^2*(e*x)^(1 + m)*(im*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, (2*im)*d*x^3))/(3*e*ℯ^((2*im)*c))]
    @test_int [(e*x)^m*(a + b*sin(c + d*x^3))^1, x, 5, (a*(e*x)^(1 + m))/(e*(1 + m)) + ((im/6)*b*ℯ^(im*c)*(e*x)^(1 + m)*((-im)*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, (-im)*d*x^3))/e - ((im/6)*b*(e*x)^(1 + m)*(im*d*x^3)^((-1 - m)/3)*Gamma((1 + m)/3, im*d*x^3))/(e*ℯ^(im*c))]
    @test_int [(e*x)^m/(a + b*sin(c + d*x^3))^1, x, 0, Unintegrable((e*x)^m/(a + b*sin(c + d*x^3)), x)]
    @test_int [(e*x)^m/(a + b*sin(c + d*x^3))^2, x, 0, Unintegrable((e*x)^m/(a + b*sin(c + d*x^3))^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d / x^1))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*sin(c+d / x^1))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^2*sin(a + b/x), x, 7, (1/6)*b*x^2*cos(a + b/x) + (1/6)*b^3*cos(a)*CosIntegral(b/x) - (1/6)*b^2*x*sin(a + b/x) + (1/3)*x^3*sin(a + b/x) - (1/6)*b^3*sin(a)*SinIntegral(b/x)]
    @test_int [x^1*sin(a + b/x), x, 6, (1/2)*b*x*cos(a + b/x) + (1/2)*b^2*CosIntegral(b/x)*sin(a) + (1/2)*x^2*sin(a + b/x) + (1/2)*b^2*cos(a)*SinIntegral(b/x)]
    @test_int [x^0*sin(a + b/x), x, 5, (-b)*cos(a)*CosIntegral(b/x) + x*sin(a + b/x) + b*sin(a)*SinIntegral(b/x)]
    @test_int [sin(a + b/x)/x^1, x, 3, (-CosIntegral(b/x))*sin(a) - cos(a)*SinIntegral(b/x)]
    @test_int [sin(a + b/x)/x^2, x, 2, cos(a + b/x)/b]
    @test_int [sin(a + b/x)/x^3, x, 3, cos(a + b/x)/(b*x) - sin(a + b/x)/b^2]
    @test_int [sin(a + b/x)/x^4, x, 4, -((2*cos(a + b/x))/b^3) + cos(a + b/x)/(b*x^2) - (2*sin(a + b/x))/(b^2*x)]
    @test_int [sin(a + b/x)/x^5, x, 5, cos(a + b/x)/(b*x^3) - (6*cos(a + b/x))/(b^3*x) + (6*sin(a + b/x))/b^4 - (3*sin(a + b/x))/(b^2*x^2)]


    @test_int [x^2*sin(a + b/x)^2, x, 9, x^3/6 + (1/3)*b^2*x*cos(2*(a + b/x)) - (1/6)*x^3*cos(2*(a + b/x)) + (2/3)*b^3*CosIntegral((2*b)/x)*sin(2*a) + (1/6)*b*x^2*sin(2*(a + b/x)) + (2/3)*b^3*cos(2*a)*SinIntegral((2*b)/x)]
    @test_int [x^1*sin(a + b/x)^2, x, 8, (-b^2)*cos(2*a)*CosIntegral((2*b)/x) + (1/2)*x^2*sin(a + b/x)^2 + (1/2)*b*x*sin(2*(a + b/x)) + b^2*sin(2*a)*SinIntegral((2*b)/x)]
    @test_int [x^0*sin(a + b/x)^2, x, 6, (-b)*CosIntegral((2*b)/x)*sin(2*a) + x*sin(a + b/x)^2 - b*cos(2*a)*SinIntegral((2*b)/x)]
    @test_int [sin(a + b/x)^2/x^1, x, 5, (1/2)*cos(2*a)*CosIntegral((2*b)/x) + log(x)/2 - (1/2)*sin(2*a)*SinIntegral((2*b)/x)]
    @test_int [sin(a + b/x)^2/x^2, x, 3, -(1/(2*x)) + (cos(a + b/x)*sin(a + b/x))/(2*b)]
    @test_int [sin(a + b/x)^2/x^3, x, 3, -(1/(4*x^2)) + (cos(a + b/x)*sin(a + b/x))/(2*b*x) - sin(a + b/x)^2/(4*b^2)]
    @test_int [sin(a + b/x)^2/x^4, x, 5, -(1/(6*x^3)) + 1/(4*b^2*x) - (cos(a + b/x)*sin(a + b/x))/(4*b^3) + (cos(a + b/x)*sin(a + b/x))/(2*b*x^2) - sin(a + b/x)^2/(2*b^2*x)]
    @test_int [sin(a + b/x)^2/x^5, x, 5, -(1/(8*x^4)) + 3/(8*b^2*x^2) + (cos(a + b/x)*sin(a + b/x))/(2*b*x^3) - (3*cos(a + b/x)*sin(a + b/x))/(4*b^3*x) + (3*sin(a + b/x)^2)/(8*b^4) - (3*sin(a + b/x)^2)/(4*b^2*x^2)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d / x^2))^p=#


    @test_int [sin(a + b/x^2), x, 5, (-sqrt(b))*sqrt(2*pi)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/x) + sqrt(b)*sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi))/x)*sin(a) + x*sin(a + b/x^2)]
    @test_int [sin(a + b/x^2)/x, x, 3, (-(1/2))*CosIntegral(b/x^2)*sin(a) - (1/2)*cos(a)*SinIntegral(b/x^2)]
    @test_int [sin(a + b/x^2)/x^2, x, 4, -((sqrt(pi/2)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/x))/sqrt(b)) - (sqrt(pi/2)*FresnelC((sqrt(b)*sqrt(2/pi))/x)*sin(a))/sqrt(b)]
    @test_int [sin(a + b/x^2)/x^3, x, 2, cos(a + b/x^2)/(2*b)]
    @test_int [sin(a + b/x^2)/x^4, x, 5, cos(a + b/x^2)/(2*b*x) - (sqrt(pi/2)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/x))/(2*b^(3/2)) + (sqrt(pi/2)*FresnelS((sqrt(b)*sqrt(2/pi))/x)*sin(a))/(2*b^(3/2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*x^(1/2)))^p=#


    @test_int [sin(sqrt(x))/sqrt(x), x, 2, -2*cos(sqrt(x))]
    @test_int [sin(sqrt(x))^3/sqrt(x), x, 3, -2*cos(sqrt(x)) + (2/3)*cos(sqrt(x))^3]
    @test_int [sin(sqrt(x)), x, 3, -2*sqrt(x)*cos(sqrt(x)) + 2*sin(sqrt(x))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*x^(1/3)))^p=#


    @test_int [sin(x^(1/3))^2, x, 5, -((3*x^(1/3))/4) + x/2 + (3/4)*cos(x^(1/3))*sin(x^(1/3)) - (3/2)*x^(2/3)*cos(x^(1/3))*sin(x^(1/3)) + (3/2)*x^(1/3)*sin(x^(1/3))^2]
    @test_int [sin(x^(1/3))^3, x, 7, (14/3)*cos(x^(1/3)) - 2*x^(2/3)*cos(x^(1/3)) - (2/9)*cos(x^(1/3))^3 + 4*x^(1/3)*sin(x^(1/3)) - x^(2/3)*cos(x^(1/3))*sin(x^(1/3))^2 + (2/3)*x^(1/3)*sin(x^(1/3))^3]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*x^n))^p=#


    @test_int [(e*x)^m*(b*sin(c + d*x^n))^p, x, 0, Unintegrable((e*x)^m*(b*sin(c + d*x^n))^p, x)]
    @test_int [(e*x)^m*(a + b*sin(c + d*x^n))^p, x, 0, Unintegrable((e*x)^m*(a + b*sin(c + d*x^n))^p, x)]


    @test_int [(e*x)^(n - 1)*(b*sin(c + d*x^n))^p, x, 3, ((e*x)^n*cos(c + d*x^n)*HypergeometricFunctions._₂F₁(1/2, (1 + p)/2, (3 + p)/2, sin(c + d*x^n)^2)*(b*sin(c + d*x^n))^(1 + p))/(x^n*(b*d*e*n*(1 + p)*sqrt(cos(c + d*x^n)^2)))]
    @test_int [(e*x)^(2*n - 1)*(b*sin(c + d*x^n))^p, x, 1, ((e*x)^(2*n)*Unintegrable(x^(-1 + 2*n)*(b*sin(c + d*x^n))^p, x))/(x^(2*n)*e)]

    @test_int [(e*x)^(n - 1)*(a + b*sin(c + d*x^n))^p, x, 5, -((sqrt(2)*(e*x)^n*AppellF1(1/2, 1/2, -p, 3/2, (1/2)*(1 - sin(c + d*x^n)), (b*(1 - sin(c + d*x^n)))/(a + b))*cos(c + d*x^n)*(a + b*sin(c + d*x^n))^p)/(x^n*((a + b*sin(c + d*x^n))/(a + b))^p*(d*e*n*sqrt(1 + sin(c + d*x^n)))))]
    @test_int [(e*x)^(2*n - 1)*(a + b*sin(c + d*x^n))^p, x, 1, ((e*x)^(2*n)*Unintegrable(x^(-1 + 2*n)*(a + b*sin(c + d*x^n))^p, x))/(x^(2*n)*e)]


    @test_int [sin(a + b*x^n)/x, x, 3, (CosIntegral(b*x^n)*sin(a))/n + (cos(a)*SinIntegral(b*x^n))/n]
    @test_int [sin(a + b*x^n)^2/x, x, 5, -((cos(2*a)*CosIntegral(2*b*x^n))/(2*n)) + log(x)/2 + (sin(2*a)*SinIntegral(2*b*x^n))/(2*n)]
    @test_int [sin(a + b*x^n)^3/x, x, 8, (3*CosIntegral(b*x^n)*sin(a))/(4*n) - (CosIntegral(3*b*x^n)*sin(3*a))/(4*n) + (3*cos(a)*SinIntegral(b*x^n))/(4*n) - (cos(3*a)*SinIntegral(3*b*x^n))/(4*n)]
    @test_int [sin(a + b*x^n)^4/x, x, 8, -((cos(2*a)*CosIntegral(2*b*x^n))/(2*n)) + (cos(4*a)*CosIntegral(4*b*x^n))/(8*n) + (3*log(x))/8 + (sin(2*a)*SinIntegral(2*b*x^n))/(2*n) - (sin(4*a)*SinIntegral(4*b*x^n))/(8*n)]


    @test_int [sin(a + b*x^n), x, 3, (im*ℯ^(im*a)*x*Gamma(1/n, (-im)*b*x^n))/(((-im)*b*x^n)^n^(-1)*(2*n)) - (im*x*Gamma(1/n, im*b*x^n))/(ℯ^(im*a)*(im*b*x^n)^n^(-1)*(2*n))]
    @test_int [sin(a + b*x^n)^2, x, 5, x/2 + (2^(-2 - 1/n)*ℯ^(2*im*a)*x*Gamma(1/n, -2*im*b*x^n))/(((-im)*b*x^n)^n^(-1)*n) + (2^(-2 - 1/n)*x*Gamma(1/n, 2*im*b*x^n))/(ℯ^(2*im*a)*(im*b*x^n)^n^(-1)*n)]
    @test_int [sin(a + b*x^n)^3, x, 8, (3*im*ℯ^(im*a)*x*Gamma(1/n, (-im)*b*x^n))/(((-im)*b*x^n)^n^(-1)*(8*n)) - (3*im*x*Gamma(1/n, im*b*x^n))/(ℯ^(im*a)*(im*b*x^n)^n^(-1)*(8*n)) - (im*ℯ^(3*im*a)*x*Gamma(1/n, -3*im*b*x^n))/(3^n^(-1)*((-im)*b*x^n)^n^(-1)*(8*n)) + (im*x*Gamma(1/n, 3*im*b*x^n))/(3^n^(-1)*ℯ^(3*im*a)*(im*b*x^n)^n^(-1)*(8*n))]

    @test_int [x^m*sin(a + b*x^n), x, 3, (im*ℯ^(im*a)*x^(1 + m)*Gamma((1 + m)/n, (-im)*b*x^n))/(((-im)*b*x^n)^((1 + m)/n)*(2*n)) - (im*x^(1 + m)*Gamma((1 + m)/n, im*b*x^n))/(ℯ^(im*a)*(im*b*x^n)^((1 + m)/n)*(2*n))]
    @test_int [x^m*sin(a + b*x^n)^2, x, 5, x^(1 + m)/(2*(1 + m)) + (ℯ^(2*im*a)*x^(1 + m)*Gamma((1 + m)/n, -2*im*b*x^n))/(2^((1 + m + 2*n)/n)*((-im)*b*x^n)^((1 + m)/n)*n) + (x^(1 + m)*Gamma((1 + m)/n, 2*im*b*x^n))/(2^((1 + m + 2*n)/n)*ℯ^(2*im*a)*(im*b*x^n)^((1 + m)/n)*n)]
    @test_int [x^m*sin(a + b*x^n)^3, x, 8, (3*im*ℯ^(im*a)*x^(1 + m)*Gamma((1 + m)/n, (-im)*b*x^n))/(((-im)*b*x^n)^((1 + m)/n)*(8*n)) - (3*im*x^(1 + m)*Gamma((1 + m)/n, im*b*x^n))/(ℯ^(im*a)*(im*b*x^n)^((1 + m)/n)*(8*n)) - (im*ℯ^(3*im*a)*x^(1 + m)*Gamma((1 + m)/n, -3*im*b*x^n))/(3^((1 + m)/n)*((-im)*b*x^n)^((1 + m)/n)*(8*n)) + (im*x^(1 + m)*Gamma((1 + m)/n, 3*im*b*x^n))/(3^((1 + m)/n)*ℯ^(3*im*a)*(im*b*x^n)^((1 + m)/n)*(8*n))]


    @test_int [x^(2*n - 1)*sin(a + b*x^n), x, 3, -((x^n*cos(a + b*x^n))/(b*n)) + sin(a + b*x^n)/(b^2*n)]
    @test_int [x^(2*n - 1)*cos(a + b*x^n), x, 3, cos(a + b*x^n)/(b^2*n) + (x^n*sin(a + b*x^n))/(b*n)]


    @test_int [sin(a + b*x^n)/x^(n + 1), x, 5, (b*cos(a)*CosIntegral(b*x^n))/n - sin(a + b*x^n)/(x^n*n) - (b*sin(a)*SinIntegral(b*x^n))/n]
    @test_int [sin(a + b*x^n)^2/x^(n + 1), x, 7, -(1/(x^n*(2*n))) + cos(2*(a + b*x^n))/(x^n*(2*n)) + (b*CosIntegral(2*b*x^n)*sin(2*a))/n + (b*cos(2*a)*SinIntegral(2*b*x^n))/n]
    @test_int [sin(a + b*x^n)^3/x^(n + 1), x, 12, (3*b*cos(a)*CosIntegral(b*x^n))/(4*n) - (3*b*cos(3*a)*CosIntegral(3*b*x^n))/(4*n) - (3*sin(a + b*x^n))/(x^n*(4*n)) + sin(3*(a + b*x^n))/(x^n*(4*n)) - (3*b*sin(a)*SinIntegral(b*x^n))/(4*n) + (3*b*sin(3*a)*SinIntegral(3*b*x^n))/(4*n)]

    @test_int [sin(a + b*x^n)/x^(2*n + 1), x, 6, -((b*cos(a + b*x^n))/(x^n*(2*n))) - (b^2*CosIntegral(b*x^n)*sin(a))/(2*n) - sin(a + b*x^n)/(x^(2*n)*(2*n)) - (b^2*cos(a)*SinIntegral(b*x^n))/(2*n)]
    @test_int [sin(a + b*x^n)^2/x^(2*n + 1), x, 8, -(1/(x^(2*n)*(4*n))) + cos(2*(a + b*x^n))/(x^(2*n)*(4*n)) + (b^2*cos(2*a)*CosIntegral(2*b*x^n))/n - (b*sin(2*(a + b*x^n)))/(x^n*(2*n)) - (b^2*sin(2*a)*SinIntegral(2*b*x^n))/n]
    @test_int [sin(a + b*x^n)^3/x^(2*n + 1), x, 14, -((3*b*cos(a + b*x^n))/(x^n*(8*n))) + (3*b*cos(3*(a + b*x^n)))/(x^n*(8*n)) - (3*b^2*CosIntegral(b*x^n)*sin(a))/(8*n) + (9*b^2*CosIntegral(3*b*x^n)*sin(3*a))/(8*n) - (3*sin(a + b*x^n))/(x^(2*n)*(8*n)) + sin(3*(a + b*x^n))/(x^(2*n)*(8*n)) - (3*b^2*cos(a)*SinIntegral(b*x^n))/(8*n) + (9*b^2*cos(3*a)*SinIntegral(3*b*x^n))/(8*n)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(g+h*x)^m*(a+b*sin(c+d*(e+f*x)^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sin(a+b*(c+d*x)^n)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sin(b*(c+d*x)^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(e + f*x)^3*sin(b*(c + d*x)^2), x, 10, -((3*f*(d*e - c*f)^2*cos(b*(c + d*x)^2))/(2*b*d^4)) - (3*f^2*(d*e - c*f)*(c + d*x)*cos(b*(c + d*x)^2))/(2*b*d^4) - (f^3*(c + d*x)^2*cos(b*(c + d*x)^2))/(2*b*d^4) + (3*f^2*(d*e - c*f)*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(2*b^(3/2)*d^4) + ((d*e - c*f)^3*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(sqrt(b)*d^4) + (f^3*sin(b*(c + d*x)^2))/(2*b^2*d^4)]
    @test_int [(e + f*x)^2*sin(b*(c + d*x)^2), x, 7, -((f*(d*e - c*f)*cos(b*(c + d*x)^2))/(b*d^3)) - (f^2*(c + d*x)*cos(b*(c + d*x)^2))/(2*b*d^3) + (f^2*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(2*b^(3/2)*d^3) + ((d*e - c*f)^2*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(sqrt(b)*d^3)]
    @test_int [(e + f*x)^1*sin(b*(c + d*x)^2), x, 5, -((f*cos(b*(c + d*x)^2))/(2*b*d^2)) + ((d*e - c*f)*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(sqrt(b)*d^2)]
    @test_int [(e + f*x)^0*sin(b*(c + d*x)^2), x, 1, (sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(sqrt(b)*d)]
    @test_int [sin(b*(c + d*x)^2)/(e + f*x)^1, x, 0, Unintegrable(sin(b*(c + d*x)^2)/(e + f*x), x)]
    @test_int [sin(b*(c + d*x)^2)/(e + f*x)^2, x, 0, Unintegrable(sin(b*(c + d*x)^2)/(e + f*x)^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(e + f*x)^3*sin(b/(c + d*x)^2), x, 16, (2*b*f^2*(d*e - c*f)*(c + d*x)*cos(b/(c + d*x)^2))/d^4 + (b*f^3*(c + d*x)^2*cos(b/(c + d*x)^2))/(4*d^4) - (3*b*f*(d*e - c*f)^2*CosIntegral(b/(c + d*x)^2))/(2*d^4) - (sqrt(b)*(d*e - c*f)^3*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)))/d^4 + (2*b^(3/2)*f^2*(d*e - c*f)*sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)))/d^4 + ((d*e - c*f)^3*(c + d*x)*sin(b/(c + d*x)^2))/d^4 + (3*f*(d*e - c*f)^2*(c + d*x)^2*sin(b/(c + d*x)^2))/(2*d^4) + (f^2*(d*e - c*f)*(c + d*x)^3*sin(b/(c + d*x)^2))/d^4 + (f^3*(c + d*x)^4*sin(b/(c + d*x)^2))/(4*d^4) + (b^2*f^3*SinIntegral(b/(c + d*x)^2))/(4*d^4)]
    @test_int [(e + f*x)^2*sin(b/(c + d*x)^2), x, 12, (2*b*f^2*(c + d*x)*cos(b/(c + d*x)^2))/(3*d^3) - (b*f*(d*e - c*f)*CosIntegral(b/(c + d*x)^2))/d^3 - (sqrt(b)*(d*e - c*f)^2*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)))/d^3 + (2*b^(3/2)*f^2*sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)))/(3*d^3) + ((d*e - c*f)^2*(c + d*x)*sin(b/(c + d*x)^2))/d^3 + (f*(d*e - c*f)*(c + d*x)^2*sin(b/(c + d*x)^2))/d^3 + (f^2*(c + d*x)^3*sin(b/(c + d*x)^2))/(3*d^3)]
    @test_int [(e + f*x)^1*sin(b/(c + d*x)^2), x, 8, -((b*f*CosIntegral(b/(c + d*x)^2))/(2*d^2)) - (sqrt(b)*(d*e - c*f)*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)))/d^2 + ((d*e - c*f)*(c + d*x)*sin(b/(c + d*x)^2))/d^2 + (f*(c + d*x)^2*sin(b/(c + d*x)^2))/(2*d^2)]
    @test_int [(e + f*x)^0*sin(b/(c + d*x)^2), x, 3, -((sqrt(b)*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)))/d) + ((c + d*x)*sin(b/(c + d*x)^2))/d]
    @test_int [sin(b/(c + d*x)^2)/(e + f*x)^1, x, 0, Unintegrable(sin(b/(c + d*x)^2)/(e + f*x), x)]
    @test_int [sin(b/(c + d*x)^2)/(e + f*x)^2, x, 0, Unintegrable(sin(b/(c + d*x)^2)/(e + f*x)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sin(a+b*(c+d*x)^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(e + f*x)^3*sin(a + b*(c + d*x)^2), x, 14, -((3*f*(d*e - c*f)^2*cos(a + b*(c + d*x)^2))/(2*b*d^4)) - (3*f^2*(d*e - c*f)*(c + d*x)*cos(a + b*(c + d*x)^2))/(2*b*d^4) - (f^3*(c + d*x)^2*cos(a + b*(c + d*x)^2))/(2*b*d^4) + (3*f^2*(d*e - c*f)*sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(2*b^(3/2)*d^4) + ((d*e - c*f)^3*sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(sqrt(b)*d^4) + ((d*e - c*f)^3*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x))*sin(a))/(sqrt(b)*d^4) - (3*f^2*(d*e - c*f)*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x))*sin(a))/(2*b^(3/2)*d^4) + (f^3*sin(a + b*(c + d*x)^2))/(2*b^2*d^4)]
    @test_int [(e + f*x)^2*sin(a + b*(c + d*x)^2), x, 11, -((f*(d*e - c*f)*cos(a + b*(c + d*x)^2))/(b*d^3)) - (f^2*(c + d*x)*cos(a + b*(c + d*x)^2))/(2*b*d^3) + (f^2*sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(2*b^(3/2)*d^3) + ((d*e - c*f)^2*sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(sqrt(b)*d^3) + ((d*e - c*f)^2*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x))*sin(a))/(sqrt(b)*d^3) - (f^2*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x))*sin(a))/(2*b^(3/2)*d^3)]
    @test_int [(e + f*x)^1*sin(a + b*(c + d*x)^2), x, 7, -((f*cos(a + b*(c + d*x)^2))/(2*b*d^2)) + ((d*e - c*f)*sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(sqrt(b)*d^2) + ((d*e - c*f)*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x))*sin(a))/(sqrt(b)*d^2)]
    @test_int [(e + f*x)^0*sin(a + b*(c + d*x)^2), x, 3, (sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)))/(sqrt(b)*d) + (sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x))*sin(a))/(sqrt(b)*d)]
    @test_int [sin(a + b*(c + d*x)^2)/(e + f*x)^1, x, 0, Unintegrable(sin(a + b*(c + d*x)^2)/(e + f*x), x)]
    @test_int [sin(a + b*(c + d*x)^2)/(e + f*x)^2, x, 0, Unintegrable(sin(a + b*(c + d*x)^2)/(e + f*x)^2, x)]


    @test_int [(e + f*x)^3*sin(a + b*(c + d*x)^3), x, 14, -((f^2*(d*e - c*f)*cos(a + b*(c + d*x)^3))/(b*d^4)) - (f^3*(c + d*x)*cos(a + b*(c + d*x)^3))/(3*b*d^4) - (ℯ^(im*a)*f^3*(c + d*x)*Gamma(1/3, (-im)*b*(c + d*x)^3))/(18*b*d^4*((-im)*b*(c + d*x)^3)^(1/3)) + (im*ℯ^(im*a)*(d*e - c*f)^3*(c + d*x)*Gamma(1/3, (-im)*b*(c + d*x)^3))/(6*d^4*((-im)*b*(c + d*x)^3)^(1/3)) - (f^3*(c + d*x)*Gamma(1/3, im*b*(c + d*x)^3))/(ℯ^(im*a)*(18*b*d^4*(im*b*(c + d*x)^3)^(1/3))) - (im*(d*e - c*f)^3*(c + d*x)*Gamma(1/3, im*b*(c + d*x)^3))/(ℯ^(im*a)*(6*d^4*(im*b*(c + d*x)^3)^(1/3))) + (im*ℯ^(im*a)*f*(d*e - c*f)^2*(c + d*x)^2*Gamma(2/3, (-im)*b*(c + d*x)^3))/(2*d^4*((-im)*b*(c + d*x)^3)^(2/3)) - (im*f*(d*e - c*f)^2*(c + d*x)^2*Gamma(2/3, im*b*(c + d*x)^3))/(ℯ^(im*a)*(2*d^4*(im*b*(c + d*x)^3)^(2/3)))]
    @test_int [(e + f*x)^2*sin(a + b*(c + d*x)^3), x, 10, -((f^2*cos(a + b*(c + d*x)^3))/(3*b*d^3)) + (im*ℯ^(im*a)*(d*e - c*f)^2*(c + d*x)*Gamma(1/3, (-im)*b*(c + d*x)^3))/(6*d^3*((-im)*b*(c + d*x)^3)^(1/3)) - (im*(d*e - c*f)^2*(c + d*x)*Gamma(1/3, im*b*(c + d*x)^3))/(ℯ^(im*a)*(6*d^3*(im*b*(c + d*x)^3)^(1/3))) + (im*ℯ^(im*a)*f*(d*e - c*f)*(c + d*x)^2*Gamma(2/3, (-im)*b*(c + d*x)^3))/(3*d^3*((-im)*b*(c + d*x)^3)^(2/3)) - (im*f*(d*e - c*f)*(c + d*x)^2*Gamma(2/3, im*b*(c + d*x)^3))/(ℯ^(im*a)*(3*d^3*(im*b*(c + d*x)^3)^(2/3)))]
    @test_int [(e + f*x)^1*sin(a + b*(c + d*x)^3), x, 8, (im*ℯ^(im*a)*(d*e - c*f)*(c + d*x)*Gamma(1/3, (-im)*b*(c + d*x)^3))/(6*d^2*((-im)*b*(c + d*x)^3)^(1/3)) - (im*(d*e - c*f)*(c + d*x)*Gamma(1/3, im*b*(c + d*x)^3))/(ℯ^(im*a)*(6*d^2*(im*b*(c + d*x)^3)^(1/3))) + (im*ℯ^(im*a)*f*(c + d*x)^2*Gamma(2/3, (-im)*b*(c + d*x)^3))/(6*d^2*((-im)*b*(c + d*x)^3)^(2/3)) - (im*f*(c + d*x)^2*Gamma(2/3, im*b*(c + d*x)^3))/(ℯ^(im*a)*(6*d^2*(im*b*(c + d*x)^3)^(2/3)))]
    @test_int [(e + f*x)^0*sin(a + b*(c + d*x)^3), x, 3, (im*ℯ^(im*a)*(c + d*x)*Gamma(1/3, (-im)*b*(c + d*x)^3))/(6*d*((-im)*b*(c + d*x)^3)^(1/3)) - (im*(c + d*x)*Gamma(1/3, im*b*(c + d*x)^3))/(ℯ^(im*a)*(6*d*(im*b*(c + d*x)^3)^(1/3)))]
    @test_int [sin(a + b*(c + d*x)^3)/(e + f*x)^1, x, 0, Unintegrable(sin(a + b*(c + d*x)^3)/(e + f*x), x)]
    @test_int [sin(a + b*(c + d*x)^3)/(e + f*x)^2, x, 0, Unintegrable(sin(a + b*(c + d*x)^3)/(e + f*x)^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(e + f*x)^2*sin(a + b/(c + d*x)^2), x, 18, (2*b*f^2*(c + d*x)*cos(a + b/(c + d*x)^2))/(3*d^3) - (b*f*(d*e - c*f)*cos(a)*CosIntegral(b/(c + d*x)^2))/d^3 - (sqrt(b)*(d*e - c*f)^2*sqrt(2*pi)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)))/d^3 + (2*b^(3/2)*f^2*sqrt(2*pi)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)))/(3*d^3) + (2*b^(3/2)*f^2*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x))*sin(a))/(3*d^3) + (sqrt(b)*(d*e - c*f)^2*sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x))*sin(a))/d^3 + ((d*e - c*f)^2*(c + d*x)*sin(a + b/(c + d*x)^2))/d^3 + (f*(d*e - c*f)*(c + d*x)^2*sin(a + b/(c + d*x)^2))/d^3 + (f^2*(c + d*x)^3*sin(a + b/(c + d*x)^2))/(3*d^3) + (b*f*(d*e - c*f)*sin(a)*SinIntegral(b/(c + d*x)^2))/d^3]
    @test_int [(e + f*x)^1*sin(a + b/(c + d*x)^2), x, 12, -((b*f*cos(a)*CosIntegral(b/(c + d*x)^2))/(2*d^2)) - (sqrt(b)*(d*e - c*f)*sqrt(2*pi)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)))/d^2 + (sqrt(b)*(d*e - c*f)*sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x))*sin(a))/d^2 + ((d*e - c*f)*(c + d*x)*sin(a + b/(c + d*x)^2))/d^2 + (f*(c + d*x)^2*sin(a + b/(c + d*x)^2))/(2*d^2) + (b*f*sin(a)*SinIntegral(b/(c + d*x)^2))/(2*d^2)]
    @test_int [(e + f*x)^0*sin(a + b/(c + d*x)^2), x, 5, -((sqrt(b)*sqrt(2*pi)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)))/d) + (sqrt(b)*sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x))*sin(a))/d + ((c + d*x)*sin(a + b/(c + d*x)^2))/d]
    @test_int [sin(a + b/(c + d*x)^2)/(e + f*x)^1, x, 0, Unintegrable(sin(a + b/(c + d*x)^2)/(e + f*x), x)]
    @test_int [sin(a + b/(c + d*x)^2)/(e + f*x)^2, x, 0, Unintegrable(sin(a + b/(c + d*x)^2)/(e + f*x)^2, x)]


    @test_int [(e + f*x)^2*sin(a + b/(c + d*x)^3), x, 13, -((b*f^2*cos(a)*CosIntegral(b/(c + d*x)^3))/(3*d^3)) - (im*ℯ^(im*a)*f*(d*e - c*f)*(-((im*b)/(c + d*x)^3))^(2/3)*(c + d*x)^2*Gamma(-(2/3), -((im*b)/(c + d*x)^3)))/(3*d^3) + (im*f*(d*e - c*f)*((im*b)/(c + d*x)^3)^(2/3)*(c + d*x)^2*Gamma(-(2/3), (im*b)/(c + d*x)^3))/(ℯ^(im*a)*(3*d^3)) - (im*ℯ^(im*a)*(d*e - c*f)^2*(-((im*b)/(c + d*x)^3))^(1/3)*(c + d*x)*Gamma(-(1/3), -((im*b)/(c + d*x)^3)))/(6*d^3) + (im*(d*e - c*f)^2*((im*b)/(c + d*x)^3)^(1/3)*(c + d*x)*Gamma(-(1/3), (im*b)/(c + d*x)^3))/(ℯ^(im*a)*(6*d^3)) + (f^2*(c + d*x)^3*sin(a + b/(c + d*x)^3))/(3*d^3) + (b*f^2*sin(a)*SinIntegral(b/(c + d*x)^3))/(3*d^3)]
    @test_int [(e + f*x)^1*sin(a + b/(c + d*x)^3), x, 8, -((im*ℯ^(im*a)*f*(-((im*b)/(c + d*x)^3))^(2/3)*(c + d*x)^2*Gamma(-(2/3), -((im*b)/(c + d*x)^3)))/(6*d^2)) + (im*f*((im*b)/(c + d*x)^3)^(2/3)*(c + d*x)^2*Gamma(-(2/3), (im*b)/(c + d*x)^3))/(ℯ^(im*a)*(6*d^2)) - (im*ℯ^(im*a)*(d*e - c*f)*(-((im*b)/(c + d*x)^3))^(1/3)*(c + d*x)*Gamma(-(1/3), -((im*b)/(c + d*x)^3)))/(6*d^2) + (im*(d*e - c*f)*((im*b)/(c + d*x)^3)^(1/3)*(c + d*x)*Gamma(-(1/3), (im*b)/(c + d*x)^3))/(ℯ^(im*a)*(6*d^2))]
    @test_int [(e + f*x)^0*sin(a + b/(c + d*x)^3), x, 3, -((im*ℯ^(im*a)*(-((im*b)/(c + d*x)^3))^(1/3)*(c + d*x)*Gamma(-(1/3), -((im*b)/(c + d*x)^3)))/(6*d)) + (im*((im*b)/(c + d*x)^3)^(1/3)*(c + d*x)*Gamma(-(1/3), (im*b)/(c + d*x)^3))/(ℯ^(im*a)*(6*d))]
    @test_int [sin(a + b/(c + d*x)^3)/(e + f*x)^1, x, 0, Unintegrable(sin(a + b/(c + d*x)^3)/(e + f*x), x)]
    @test_int [sin(a + b/(c + d*x)^3)/(e + f*x)^2, x, 0, Unintegrable(sin(a + b/(c + d*x)^3)/(e + f*x)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sin(a+b*(c+d*x)^(n/2))=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(e + f*x)^2*sin(a + b*sqrt(c + d*x)), x, 14, -((240*f^2*sqrt(c + d*x)*cos(a + b*sqrt(c + d*x)))/(b^5*d^3)) + (24*f*(d*e - c*f)*sqrt(c + d*x)*cos(a + b*sqrt(c + d*x)))/(b^3*d^3) - (2*(d*e - c*f)^2*sqrt(c + d*x)*cos(a + b*sqrt(c + d*x)))/(b*d^3) + (40*f^2*(c + d*x)^(3/2)*cos(a + b*sqrt(c + d*x)))/(b^3*d^3) - (4*f*(d*e - c*f)*(c + d*x)^(3/2)*cos(a + b*sqrt(c + d*x)))/(b*d^3) - (2*f^2*(c + d*x)^(5/2)*cos(a + b*sqrt(c + d*x)))/(b*d^3) + (240*f^2*sin(a + b*sqrt(c + d*x)))/(b^6*d^3) - (24*f*(d*e - c*f)*sin(a + b*sqrt(c + d*x)))/(b^4*d^3) + (2*(d*e - c*f)^2*sin(a + b*sqrt(c + d*x)))/(b^2*d^3) - (120*f^2*(c + d*x)*sin(a + b*sqrt(c + d*x)))/(b^4*d^3) + (12*f*(d*e - c*f)*(c + d*x)*sin(a + b*sqrt(c + d*x)))/(b^2*d^3) + (10*f^2*(c + d*x)^2*sin(a + b*sqrt(c + d*x)))/(b^2*d^3)]
    @test_int [(e + f*x)^1*sin(a + b*sqrt(c + d*x)), x, 8, (12*f*sqrt(c + d*x)*cos(a + b*sqrt(c + d*x)))/(b^3*d^2) - (2*(d*e - c*f)*sqrt(c + d*x)*cos(a + b*sqrt(c + d*x)))/(b*d^2) - (2*f*(c + d*x)^(3/2)*cos(a + b*sqrt(c + d*x)))/(b*d^2) - (12*f*sin(a + b*sqrt(c + d*x)))/(b^4*d^2) + (2*(d*e - c*f)*sin(a + b*sqrt(c + d*x)))/(b^2*d^2) + (6*f*(c + d*x)*sin(a + b*sqrt(c + d*x)))/(b^2*d^2)]
    @test_int [(e + f*x)^0*sin(a + b*sqrt(c + d*x)), x, 3, -((2*sqrt(c + d*x)*cos(a + b*sqrt(c + d*x)))/(b*d)) + (2*sin(a + b*sqrt(c + d*x)))/(b^2*d)]
    @test_int [sin(a + b*sqrt(c + d*x))/(e + f*x)^1, x, 8, (CosIntegral((b*sqrt((-d)*e + c*f))/sqrt(f) + b*sqrt(c + d*x))*sin(a - (b*sqrt((-d)*e + c*f))/sqrt(f)))/f + (CosIntegral((b*sqrt((-d)*e + c*f))/sqrt(f) - b*sqrt(c + d*x))*sin(a + (b*sqrt((-d)*e + c*f))/sqrt(f)))/f - (cos(a + (b*sqrt((-d)*e + c*f))/sqrt(f))*SinIntegral((b*sqrt((-d)*e + c*f))/sqrt(f) - b*sqrt(c + d*x)))/f + (cos(a - (b*sqrt((-d)*e + c*f))/sqrt(f))*SinIntegral((b*sqrt((-d)*e + c*f))/sqrt(f) + b*sqrt(c + d*x)))/f]
    @test_int [sin(a + b*sqrt(c + d*x))/(e + f*x)^2, x, 10, (b*d*cos(a + (b*sqrt((-d)*e + c*f))/sqrt(f))*CosIntegral((b*sqrt((-d)*e + c*f))/sqrt(f) - b*sqrt(c + d*x)))/(2*f^(3/2)*sqrt((-d)*e + c*f)) - (b*d*cos(a - (b*sqrt((-d)*e + c*f))/sqrt(f))*CosIntegral((b*sqrt((-d)*e + c*f))/sqrt(f) + b*sqrt(c + d*x)))/(2*f^(3/2)*sqrt((-d)*e + c*f)) - sin(a + b*sqrt(c + d*x))/(f*(e + f*x)) + (b*d*sin(a + (b*sqrt((-d)*e + c*f))/sqrt(f))*SinIntegral((b*sqrt((-d)*e + c*f))/sqrt(f) - b*sqrt(c + d*x)))/(2*f^(3/2)*sqrt((-d)*e + c*f)) + (b*d*sin(a - (b*sqrt((-d)*e + c*f))/sqrt(f))*SinIntegral((b*sqrt((-d)*e + c*f))/sqrt(f) + b*sqrt(c + d*x)))/(2*f^(3/2)*sqrt((-d)*e + c*f))]


    @test_int [(e + f*x)^2*sin(a + b*(c + d*x)^(3/2)), x, 12, -((4*f*(d*e - c*f)*sqrt(c + d*x)*cos(a + b*(c + d*x)^(3/2)))/(3*b*d^3)) - (2*f^2*(c + d*x)^(3/2)*cos(a + b*(c + d*x)^(3/2)))/(3*b*d^3) - (2*ℯ^(im*a)*f*(d*e - c*f)*sqrt(c + d*x)*Gamma(1/3, (-im)*b*(c + d*x)^(3/2)))/(9*b*d^3*((-im)*b*(c + d*x)^(3/2))^(1/3)) - (2*f*(d*e - c*f)*sqrt(c + d*x)*Gamma(1/3, im*b*(c + d*x)^(3/2)))/(ℯ^(im*a)*(9*b*d^3*(im*b*(c + d*x)^(3/2))^(1/3))) + (im*ℯ^(im*a)*(d*e - c*f)^2*(c + d*x)*Gamma(2/3, (-im)*b*(c + d*x)^(3/2)))/(3*d^3*((-im)*b*(c + d*x)^(3/2))^(2/3)) - (im*(d*e - c*f)^2*(c + d*x)*Gamma(2/3, im*b*(c + d*x)^(3/2)))/(ℯ^(im*a)*(3*d^3*(im*b*(c + d*x)^(3/2))^(2/3))) + (2*f^2*sin(a + b*(c + d*x)^(3/2)))/(3*b^2*d^3)]
    @test_int [(e + f*x)^1*sin(a + b*(c + d*x)^(3/2)), x, 9, -((2*f*sqrt(c + d*x)*cos(a + b*(c + d*x)^(3/2)))/(3*b*d^2)) - (ℯ^(im*a)*f*sqrt(c + d*x)*Gamma(1/3, (-im)*b*(c + d*x)^(3/2)))/(9*b*d^2*((-im)*b*(c + d*x)^(3/2))^(1/3)) - (f*sqrt(c + d*x)*Gamma(1/3, im*b*(c + d*x)^(3/2)))/(ℯ^(im*a)*(9*b*d^2*(im*b*(c + d*x)^(3/2))^(1/3))) + (im*ℯ^(im*a)*(d*e - c*f)*(c + d*x)*Gamma(2/3, (-im)*b*(c + d*x)^(3/2)))/(3*d^2*((-im)*b*(c + d*x)^(3/2))^(2/3)) - (im*(d*e - c*f)*(c + d*x)*Gamma(2/3, im*b*(c + d*x)^(3/2)))/(ℯ^(im*a)*(3*d^2*(im*b*(c + d*x)^(3/2))^(2/3)))]
    @test_int [(e + f*x)^0*sin(a + b*(c + d*x)^(3/2)), x, 4, (im*ℯ^(im*a)*(c + d*x)*Gamma(2/3, (-im)*b*(c + d*x)^(3/2)))/(3*d*((-im)*b*(c + d*x)^(3/2))^(2/3)) - (im*(c + d*x)*Gamma(2/3, im*b*(c + d*x)^(3/2)))/(ℯ^(im*a)*(3*d*(im*b*(c + d*x)^(3/2))^(2/3)))]
    @test_int [sin(a + b*(c + d*x)^(3/2))/(e + f*x)^1, x, 0, Unintegrable(sin(a + b*(c + d*x)^(3/2))/(e + f*x), x)]
    @test_int [sin(a + b*(c + d*x)^(3/2))/(e + f*x)^2, x, 0, Unintegrable(sin(a + b*(c + d*x)^(3/2))/(e + f*x)^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(e + f*x)^2*sin(a + b/sqrt(c + d*x)), x, 23, (b^5*f^2*sqrt(c + d*x)*cos(a + b/sqrt(c + d*x)))/(360*d^3) - (b^3*f*(d*e - c*f)*sqrt(c + d*x)*cos(a + b/sqrt(c + d*x)))/(6*d^3) + (b*(d*e - c*f)^2*sqrt(c + d*x)*cos(a + b/sqrt(c + d*x)))/d^3 - (b^3*f^2*(c + d*x)^(3/2)*cos(a + b/sqrt(c + d*x)))/(180*d^3) + (b*f*(d*e - c*f)*(c + d*x)^(3/2)*cos(a + b/sqrt(c + d*x)))/(3*d^3) + (b*f^2*(c + d*x)^(5/2)*cos(a + b/sqrt(c + d*x)))/(15*d^3) + (b^6*f^2*CosIntegral(b/sqrt(c + d*x))*sin(a))/(360*d^3) - (b^4*f*(d*e - c*f)*CosIntegral(b/sqrt(c + d*x))*sin(a))/(6*d^3) + (b^2*(d*e - c*f)^2*CosIntegral(b/sqrt(c + d*x))*sin(a))/d^3 + (b^4*f^2*(c + d*x)*sin(a + b/sqrt(c + d*x)))/(360*d^3) - (b^2*f*(d*e - c*f)*(c + d*x)*sin(a + b/sqrt(c + d*x)))/(6*d^3) + ((d*e - c*f)^2*(c + d*x)*sin(a + b/sqrt(c + d*x)))/d^3 - (b^2*f^2*(c + d*x)^2*sin(a + b/sqrt(c + d*x)))/(60*d^3) + (f*(d*e - c*f)*(c + d*x)^2*sin(a + b/sqrt(c + d*x)))/d^3 + (f^2*(c + d*x)^3*sin(a + b/sqrt(c + d*x)))/(3*d^3) + (b^6*f^2*cos(a)*SinIntegral(b/sqrt(c + d*x)))/(360*d^3) - (b^4*f*(d*e - c*f)*cos(a)*SinIntegral(b/sqrt(c + d*x)))/(6*d^3) + (b^2*(d*e - c*f)^2*cos(a)*SinIntegral(b/sqrt(c + d*x)))/d^3]
    @test_int [(e + f*x)^1*sin(a + b/sqrt(c + d*x)), x, 14, -((b^3*f*sqrt(c + d*x)*cos(a + b/sqrt(c + d*x)))/(12*d^2)) + (b*(d*e - c*f)*sqrt(c + d*x)*cos(a + b/sqrt(c + d*x)))/d^2 + (b*f*(c + d*x)^(3/2)*cos(a + b/sqrt(c + d*x)))/(6*d^2) - (b^4*f*CosIntegral(b/sqrt(c + d*x))*sin(a))/(12*d^2) + (b^2*(d*e - c*f)*CosIntegral(b/sqrt(c + d*x))*sin(a))/d^2 - (b^2*f*(c + d*x)*sin(a + b/sqrt(c + d*x)))/(12*d^2) + ((d*e - c*f)*(c + d*x)*sin(a + b/sqrt(c + d*x)))/d^2 + (f*(c + d*x)^2*sin(a + b/sqrt(c + d*x)))/(2*d^2) - (b^4*f*cos(a)*SinIntegral(b/sqrt(c + d*x)))/(12*d^2) + (b^2*(d*e - c*f)*cos(a)*SinIntegral(b/sqrt(c + d*x)))/d^2]
    @test_int [(e + f*x)^0*sin(a + b/sqrt(c + d*x)), x, 6, (b*sqrt(c + d*x)*cos(a + b/sqrt(c + d*x)))/d + (b^2*CosIntegral(b/sqrt(c + d*x))*sin(a))/d + ((c + d*x)*sin(a + b/sqrt(c + d*x)))/d + (b^2*cos(a)*SinIntegral(b/sqrt(c + d*x)))/d]
    @test_int [sin(a + b/sqrt(c + d*x))/(e + f*x)^1, x, 13, -((2*CosIntegral(b/sqrt(c + d*x))*sin(a))/f) + (CosIntegral((b*sqrt(f))/sqrt((-d)*e + c*f) + b/sqrt(c + d*x))*sin(a - (b*sqrt(f))/sqrt((-d)*e + c*f)))/f + (CosIntegral((b*sqrt(f))/sqrt((-d)*e + c*f) - b/sqrt(c + d*x))*sin(a + (b*sqrt(f))/sqrt((-d)*e + c*f)))/f - (2*cos(a)*SinIntegral(b/sqrt(c + d*x)))/f - (cos(a + (b*sqrt(f))/sqrt((-d)*e + c*f))*SinIntegral((b*sqrt(f))/sqrt((-d)*e + c*f) - b/sqrt(c + d*x)))/f + (cos(a - (b*sqrt(f))/sqrt((-d)*e + c*f))*SinIntegral((b*sqrt(f))/sqrt((-d)*e + c*f) + b/sqrt(c + d*x)))/f]
    @test_int [sin(a + b/sqrt(c + d*x))/(e + f*x)^2, x, 10, -((b*d*cos(a + (b*sqrt(f))/sqrt((-d)*e + c*f))*CosIntegral((b*sqrt(f))/sqrt((-d)*e + c*f) - b/sqrt(c + d*x)))/(2*sqrt(f)*((-d)*e + c*f)^(3/2))) + (b*d*cos(a - (b*sqrt(f))/sqrt((-d)*e + c*f))*CosIntegral((b*sqrt(f))/sqrt((-d)*e + c*f) + b/sqrt(c + d*x)))/(2*sqrt(f)*((-d)*e + c*f)^(3/2)) + ((c + d*x)*sin(a + b/sqrt(c + d*x)))/((d*e - c*f)*(e + f*x)) - (b*d*sin(a + (b*sqrt(f))/sqrt((-d)*e + c*f))*SinIntegral((b*sqrt(f))/sqrt((-d)*e + c*f) - b/sqrt(c + d*x)))/(2*sqrt(f)*((-d)*e + c*f)^(3/2)) - (b*d*sin(a - (b*sqrt(f))/sqrt((-d)*e + c*f))*SinIntegral((b*sqrt(f))/sqrt((-d)*e + c*f) + b/sqrt(c + d*x)))/(2*sqrt(f)*((-d)*e + c*f)^(3/2))]


    @test_int [(e + f*x)^2*sin(a + b/(c + d*x)^(3/2)), x, 14, (b*f^2*(c + d*x)^(3/2)*cos(a + b/(c + d*x)^(3/2)))/(3*d^3) - (2*im*ℯ^(im*a)*f*(d*e - c*f)*(-((im*b)/(c + d*x)^(3/2)))^(4/3)*(c + d*x)^2*Gamma(-(4/3), -((im*b)/(c + d*x)^(3/2))))/(3*d^3) + (2*im*f*(d*e - c*f)*((im*b)/(c + d*x)^(3/2))^(4/3)*(c + d*x)^2*Gamma(-(4/3), (im*b)/(c + d*x)^(3/2)))/(ℯ^(im*a)*(3*d^3)) - (im*ℯ^(im*a)*(d*e - c*f)^2*(-((im*b)/(c + d*x)^(3/2)))^(2/3)*(c + d*x)*Gamma(-(2/3), -((im*b)/(c + d*x)^(3/2))))/(3*d^3) + (im*(d*e - c*f)^2*((im*b)/(c + d*x)^(3/2))^(2/3)*(c + d*x)*Gamma(-(2/3), (im*b)/(c + d*x)^(3/2)))/(ℯ^(im*a)*(3*d^3)) + (b^2*f^2*CosIntegral(b/(c + d*x)^(3/2))*sin(a))/(3*d^3) + (f^2*(c + d*x)^3*sin(a + b/(c + d*x)^(3/2)))/(3*d^3) + (b^2*f^2*cos(a)*SinIntegral(b/(c + d*x)^(3/2)))/(3*d^3)]
    @test_int [(e + f*x)^1*sin(a + b/(c + d*x)^(3/2)), x, 8, -((im*ℯ^(im*a)*f*(-((im*b)/(c + d*x)^(3/2)))^(4/3)*(c + d*x)^2*Gamma(-(4/3), -((im*b)/(c + d*x)^(3/2))))/(3*d^2)) + (im*f*((im*b)/(c + d*x)^(3/2))^(4/3)*(c + d*x)^2*Gamma(-(4/3), (im*b)/(c + d*x)^(3/2)))/(ℯ^(im*a)*(3*d^2)) - (im*ℯ^(im*a)*(d*e - c*f)*(-((im*b)/(c + d*x)^(3/2)))^(2/3)*(c + d*x)*Gamma(-(2/3), -((im*b)/(c + d*x)^(3/2))))/(3*d^2) + (im*(d*e - c*f)*((im*b)/(c + d*x)^(3/2))^(2/3)*(c + d*x)*Gamma(-(2/3), (im*b)/(c + d*x)^(3/2)))/(ℯ^(im*a)*(3*d^2))]
    @test_int [(e + f*x)^0*sin(a + b/(c + d*x)^(3/2)), x, 4, -((im*ℯ^(im*a)*(-((im*b)/(c + d*x)^(3/2)))^(2/3)*(c + d*x)*Gamma(-(2/3), -((im*b)/(c + d*x)^(3/2))))/(3*d)) + (im*((im*b)/(c + d*x)^(3/2))^(2/3)*(c + d*x)*Gamma(-(2/3), (im*b)/(c + d*x)^(3/2)))/(ℯ^(im*a)*(3*d))]
    @test_int [sin(a + b/(c + d*x)^(3/2))/(e + f*x)^1, x, 0, Unintegrable(sin(a + b/(c + d*x)^(3/2))/(e + f*x), x)]
    @test_int [sin(a + b/(c + d*x)^(3/2))/(e + f*x)^2, x, 0, Unintegrable(sin(a + b/(c + d*x)^(3/2))/(e + f*x)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sin(a+b*(c+d*x)^(n/3))=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(e + f*x)^2*sin(a + b*(c + d*x)^(1/3)), x, 20, -((120960*f^2*cos(a + b*(c + d*x)^(1/3)))/(b^9*d^3)) + (6*(d*e - c*f)^2*cos(a + b*(c + d*x)^(1/3)))/(b^3*d^3) - (720*f*(d*e - c*f)*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^5*d^3) + (60480*f^2*(c + d*x)^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b^7*d^3) - (3*(d*e - c*f)^2*(c + d*x)^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d^3) + (120*f*(d*e - c*f)*(c + d*x)*cos(a + b*(c + d*x)^(1/3)))/(b^3*d^3) - (5040*f^2*(c + d*x)^(4/3)*cos(a + b*(c + d*x)^(1/3)))/(b^5*d^3) - (6*f*(d*e - c*f)*(c + d*x)^(5/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d^3) + (168*f^2*(c + d*x)^2*cos(a + b*(c + d*x)^(1/3)))/(b^3*d^3) - (3*f^2*(c + d*x)^(8/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d^3) + (720*f*(d*e - c*f)*sin(a + b*(c + d*x)^(1/3)))/(b^6*d^3) - (120960*f^2*(c + d*x)^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^8*d^3) + (6*(d*e - c*f)^2*(c + d*x)^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d^3) - (360*f*(d*e - c*f)*(c + d*x)^(2/3)*sin(a + b*(c + d*x)^(1/3)))/(b^4*d^3) + (20160*f^2*(c + d*x)*sin(a + b*(c + d*x)^(1/3)))/(b^6*d^3) + (30*f*(d*e - c*f)*(c + d*x)^(4/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d^3) - (1008*f^2*(c + d*x)^(5/3)*sin(a + b*(c + d*x)^(1/3)))/(b^4*d^3) + (24*f^2*(c + d*x)^(7/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d^3)]
    @test_int [(e + f*x)^1*sin(a + b*(c + d*x)^(1/3)), x, 11, (6*(d*e - c*f)*cos(a + b*(c + d*x)^(1/3)))/(b^3*d^2) - (360*f*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^5*d^2) - (3*(d*e - c*f)*(c + d*x)^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d^2) + (60*f*(c + d*x)*cos(a + b*(c + d*x)^(1/3)))/(b^3*d^2) - (3*f*(c + d*x)^(5/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d^2) + (360*f*sin(a + b*(c + d*x)^(1/3)))/(b^6*d^2) + (6*(d*e - c*f)*(c + d*x)^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d^2) - (180*f*(c + d*x)^(2/3)*sin(a + b*(c + d*x)^(1/3)))/(b^4*d^2) + (15*f*(c + d*x)^(4/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d^2)]
    @test_int [(e + f*x)^0*sin(a + b*(c + d*x)^(1/3)), x, 4, (6*cos(a + b*(c + d*x)^(1/3)))/(b^3*d) - (3*(c + d*x)^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d) + (6*(c + d*x)^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d)]
    @test_int [sin(a + b*(c + d*x)^(1/3))/(e + f*x)^1, x, 11, (CosIntegral((b*(d*e - c*f)^(1/3))/f^(1/3) + b*(c + d*x)^(1/3))*sin(a - (b*(d*e - c*f)^(1/3))/f^(1/3)))/f + (CosIntegral(((-1)^(1/3)*b*(d*e - c*f)^(1/3))/f^(1/3) - b*(c + d*x)^(1/3))*sin(a + ((-1)^(1/3)*b*(d*e - c*f)^(1/3))/f^(1/3)))/f + (CosIntegral(((-1)^(2/3)*b*(d*e - c*f)^(1/3))/f^(1/3) + b*(c + d*x)^(1/3))*sin(a - ((-1)^(2/3)*b*(d*e - c*f)^(1/3))/f^(1/3)))/f - (cos(a + ((-1)^(1/3)*b*(d*e - c*f)^(1/3))/f^(1/3))*SinIntegral(((-1)^(1/3)*b*(d*e - c*f)^(1/3))/f^(1/3) - b*(c + d*x)^(1/3)))/f + (cos(a - (b*(d*e - c*f)^(1/3))/f^(1/3))*SinIntegral((b*(d*e - c*f)^(1/3))/f^(1/3) + b*(c + d*x)^(1/3)))/f + (cos(a - ((-1)^(2/3)*b*(d*e - c*f)^(1/3))/f^(1/3))*SinIntegral(((-1)^(2/3)*b*(d*e - c*f)^(1/3))/f^(1/3) + b*(c + d*x)^(1/3)))/f]
    @test_int [sin(a + b*(c + d*x)^(1/3))/(e + f*x)^2, x, 13, -(((-1)^(1/3)*b*d*cos(a + ((-1)^(1/3)*b*(d*e - c*f)^(1/3))/f^(1/3))*CosIntegral(((-1)^(1/3)*b*(d*e - c*f)^(1/3))/f^(1/3) - b*(c + d*x)^(1/3)))/(3*f^(4/3)*(d*e - c*f)^(2/3))) + (b*d*cos(a - (b*(d*e - c*f)^(1/3))/f^(1/3))*CosIntegral((b*(d*e - c*f)^(1/3))/f^(1/3) + b*(c + d*x)^(1/3)))/(3*f^(4/3)*(d*e - c*f)^(2/3)) + ((-1)^(2/3)*b*d*cos(a - ((-1)^(2/3)*b*(d*e - c*f)^(1/3))/f^(1/3))*CosIntegral(((-1)^(2/3)*b*(d*e - c*f)^(1/3))/f^(1/3) + b*(c + d*x)^(1/3)))/(3*f^(4/3)*(d*e - c*f)^(2/3)) - sin(a + b*(c + d*x)^(1/3))/(f*(e + f*x)) - ((-1)^(1/3)*b*d*sin(a + ((-1)^(1/3)*b*(d*e - c*f)^(1/3))/f^(1/3))*SinIntegral(((-1)^(1/3)*b*(d*e - c*f)^(1/3))/f^(1/3) - b*(c + d*x)^(1/3)))/(3*f^(4/3)*(d*e - c*f)^(2/3)) - (b*d*sin(a - (b*(d*e - c*f)^(1/3))/f^(1/3))*SinIntegral((b*(d*e - c*f)^(1/3))/f^(1/3) + b*(c + d*x)^(1/3)))/(3*f^(4/3)*(d*e - c*f)^(2/3)) - ((-1)^(2/3)*b*d*sin(a - ((-1)^(2/3)*b*(d*e - c*f)^(1/3))/f^(1/3))*SinIntegral(((-1)^(2/3)*b*(d*e - c*f)^(1/3))/f^(1/3) + b*(c + d*x)^(1/3)))/(3*f^(4/3)*(d*e - c*f)^(2/3))]


    @test_int [(e + f*x)^2*sin(a + b*(c + d*x)^(2/3)), x, 17, (6*f*(d*e - c*f)*cos(a + b*(c + d*x)^(2/3)))/(b^3*d^3) - (3*(d*e - c*f)^2*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(2/3)))/(2*b*d^3) + (105*f^2*(c + d*x)*cos(a + b*(c + d*x)^(2/3)))/(8*b^3*d^3) - (3*f*(d*e - c*f)*(c + d*x)^(4/3)*cos(a + b*(c + d*x)^(2/3)))/(b*d^3) - (3*f^2*(c + d*x)^(7/3)*cos(a + b*(c + d*x)^(2/3)))/(2*b*d^3) + (3*(d*e - c*f)^2*sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3)))/(2*b^(3/2)*d^3) + (315*f^2*sqrt(pi/2)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3)))/(16*b^(9/2)*d^3) + (315*f^2*sqrt(pi/2)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3))*sin(a))/(16*b^(9/2)*d^3) - (3*(d*e - c*f)^2*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3))*sin(a))/(2*b^(3/2)*d^3) - (315*f^2*(c + d*x)^(1/3)*sin(a + b*(c + d*x)^(2/3)))/(16*b^4*d^3) + (6*f*(d*e - c*f)*(c + d*x)^(2/3)*sin(a + b*(c + d*x)^(2/3)))/(b^2*d^3) + (21*f^2*(c + d*x)^(5/3)*sin(a + b*(c + d*x)^(2/3)))/(4*b^2*d^3)]
    @test_int [(e + f*x)^1*sin(a + b*(c + d*x)^(2/3)), x, 10, (3*f*cos(a + b*(c + d*x)^(2/3)))/(b^3*d^2) - (3*(d*e - c*f)*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(2/3)))/(2*b*d^2) - (3*f*(c + d*x)^(4/3)*cos(a + b*(c + d*x)^(2/3)))/(2*b*d^2) + (3*(d*e - c*f)*sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3)))/(2*b^(3/2)*d^2) - (3*(d*e - c*f)*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3))*sin(a))/(2*b^(3/2)*d^2) + (3*f*(c + d*x)^(2/3)*sin(a + b*(c + d*x)^(2/3)))/(b^2*d^2)]
    @test_int [(e + f*x)^0*sin(a + b*(c + d*x)^(2/3)), x, 5, -((3*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(2/3)))/(2*b*d)) + (3*sqrt(pi/2)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3)))/(2*b^(3/2)*d) - (3*sqrt(pi/2)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3))*sin(a))/(2*b^(3/2)*d)]
    @test_int [sin(a + b*(c + d*x)^(2/3))/(e + f*x)^1, x, 0, Unintegrable(sin(a + b*(c + d*x)^(2/3))/(e + f*x), x)]
    @test_int [sin(a + b*(c + d*x)^(2/3))/(e + f*x)^2, x, 0, Unintegrable(sin(a + b*(c + d*x)^(2/3))/(e + f*x)^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(e + f*x)^2*sin(a + b/(c + d*x)^(1/3)), x, 29, (b^5*f*(d*e - c*f)*(c + d*x)^(1/3)*cos(a + b/(c + d*x)^(1/3)))/(120*d^3) - (b^7*f^2*(c + d*x)^(2/3)*cos(a + b/(c + d*x)^(1/3)))/(120960*d^3) + (b*(d*e - c*f)^2*(c + d*x)^(2/3)*cos(a + b/(c + d*x)^(1/3)))/(2*d^3) - (b^3*f*(d*e - c*f)*(c + d*x)*cos(a + b/(c + d*x)^(1/3)))/(60*d^3) + (b^5*f^2*(c + d*x)^(4/3)*cos(a + b/(c + d*x)^(1/3)))/(20160*d^3) + (b*f*(d*e - c*f)*(c + d*x)^(5/3)*cos(a + b/(c + d*x)^(1/3)))/(5*d^3) - (b^3*f^2*(c + d*x)^2*cos(a + b/(c + d*x)^(1/3)))/(1008*d^3) + (b*f^2*(c + d*x)^(8/3)*cos(a + b/(c + d*x)^(1/3)))/(24*d^3) - (b^9*f^2*cos(a)*CosIntegral(b/(c + d*x)^(1/3)))/(120960*d^3) + (b^3*(d*e - c*f)^2*cos(a)*CosIntegral(b/(c + d*x)^(1/3)))/(2*d^3) + (b^6*f*(d*e - c*f)*CosIntegral(b/(c + d*x)^(1/3))*sin(a))/(120*d^3) + (b^8*f^2*(c + d*x)^(1/3)*sin(a + b/(c + d*x)^(1/3)))/(120960*d^3) - (b^2*(d*e - c*f)^2*(c + d*x)^(1/3)*sin(a + b/(c + d*x)^(1/3)))/(2*d^3) + (b^4*f*(d*e - c*f)*(c + d*x)^(2/3)*sin(a + b/(c + d*x)^(1/3)))/(120*d^3) - (b^6*f^2*(c + d*x)*sin(a + b/(c + d*x)^(1/3)))/(60480*d^3) + ((d*e - c*f)^2*(c + d*x)*sin(a + b/(c + d*x)^(1/3)))/d^3 - (b^2*f*(d*e - c*f)*(c + d*x)^(4/3)*sin(a + b/(c + d*x)^(1/3)))/(20*d^3) + (b^4*f^2*(c + d*x)^(5/3)*sin(a + b/(c + d*x)^(1/3)))/(5040*d^3) + (f*(d*e - c*f)*(c + d*x)^2*sin(a + b/(c + d*x)^(1/3)))/d^3 - (b^2*f^2*(c + d*x)^(7/3)*sin(a + b/(c + d*x)^(1/3)))/(168*d^3) + (f^2*(c + d*x)^3*sin(a + b/(c + d*x)^(1/3)))/(3*d^3) + (b^6*f*(d*e - c*f)*cos(a)*SinIntegral(b/(c + d*x)^(1/3)))/(120*d^3) + (b^9*f^2*sin(a)*SinIntegral(b/(c + d*x)^(1/3)))/(120960*d^3) - (b^3*(d*e - c*f)^2*sin(a)*SinIntegral(b/(c + d*x)^(1/3)))/(2*d^3)]
    @test_int [(e + f*x)^1*sin(a + b/(c + d*x)^(1/3)), x, 17, (b^5*f*(c + d*x)^(1/3)*cos(a + b/(c + d*x)^(1/3)))/(240*d^2) + (b*(d*e - c*f)*(c + d*x)^(2/3)*cos(a + b/(c + d*x)^(1/3)))/(2*d^2) - (b^3*f*(c + d*x)*cos(a + b/(c + d*x)^(1/3)))/(120*d^2) + (b*f*(c + d*x)^(5/3)*cos(a + b/(c + d*x)^(1/3)))/(10*d^2) + (b^3*(d*e - c*f)*cos(a)*CosIntegral(b/(c + d*x)^(1/3)))/(2*d^2) + (b^6*f*CosIntegral(b/(c + d*x)^(1/3))*sin(a))/(240*d^2) - (b^2*(d*e - c*f)*(c + d*x)^(1/3)*sin(a + b/(c + d*x)^(1/3)))/(2*d^2) + (b^4*f*(c + d*x)^(2/3)*sin(a + b/(c + d*x)^(1/3)))/(240*d^2) + ((d*e - c*f)*(c + d*x)*sin(a + b/(c + d*x)^(1/3)))/d^2 - (b^2*f*(c + d*x)^(4/3)*sin(a + b/(c + d*x)^(1/3)))/(40*d^2) + (f*(c + d*x)^2*sin(a + b/(c + d*x)^(1/3)))/(2*d^2) + (b^6*f*cos(a)*SinIntegral(b/(c + d*x)^(1/3)))/(240*d^2) - (b^3*(d*e - c*f)*sin(a)*SinIntegral(b/(c + d*x)^(1/3)))/(2*d^2)]
    @test_int [(e + f*x)^0*sin(a + b/(c + d*x)^(1/3)), x, 7, (b*(c + d*x)^(2/3)*cos(a + b/(c + d*x)^(1/3)))/(2*d) + (b^3*cos(a)*CosIntegral(b/(c + d*x)^(1/3)))/(2*d) - (b^2*(c + d*x)^(1/3)*sin(a + b/(c + d*x)^(1/3)))/(2*d) + ((c + d*x)*sin(a + b/(c + d*x)^(1/3)))/d - (b^3*sin(a)*SinIntegral(b/(c + d*x)^(1/3)))/(2*d)]
    @test_int [sin(a + b/(c + d*x)^(1/3))/(e + f*x)^1, x, 16, -((3*CosIntegral(b/(c + d*x)^(1/3))*sin(a))/f) + (CosIntegral((b*f^(1/3))/(d*e - c*f)^(1/3) + b/(c + d*x)^(1/3))*sin(a - (b*f^(1/3))/(d*e - c*f)^(1/3)))/f + (CosIntegral(((-1)^(1/3)*b*f^(1/3))/(d*e - c*f)^(1/3) - b/(c + d*x)^(1/3))*sin(a + ((-1)^(1/3)*b*f^(1/3))/(d*e - c*f)^(1/3)))/f + (CosIntegral(((-1)^(2/3)*b*f^(1/3))/(d*e - c*f)^(1/3) + b/(c + d*x)^(1/3))*sin(a - ((-1)^(2/3)*b*f^(1/3))/(d*e - c*f)^(1/3)))/f - (3*cos(a)*SinIntegral(b/(c + d*x)^(1/3)))/f - (cos(a + ((-1)^(1/3)*b*f^(1/3))/(d*e - c*f)^(1/3))*SinIntegral(((-1)^(1/3)*b*f^(1/3))/(d*e - c*f)^(1/3) - b/(c + d*x)^(1/3)))/f + (cos(a - (b*f^(1/3))/(d*e - c*f)^(1/3))*SinIntegral((b*f^(1/3))/(d*e - c*f)^(1/3) + b/(c + d*x)^(1/3)))/f + (cos(a - ((-1)^(2/3)*b*f^(1/3))/(d*e - c*f)^(1/3))*SinIntegral(((-1)^(2/3)*b*f^(1/3))/(d*e - c*f)^(1/3) + b/(c + d*x)^(1/3)))/f]
    @test_int [sin(a + b/(c + d*x)^(1/3))/(e + f*x)^2, x, 13, -((b*d*cos(a + (b*f^(1/3))/((-d)*e + c*f)^(1/3))*CosIntegral((b*f^(1/3))/((-d)*e + c*f)^(1/3) - b/(c + d*x)^(1/3)))/(3*f^(2/3)*((-d)*e + c*f)^(4/3))) - ((-1)^(2/3)*b*d*cos(a + ((-1)^(2/3)*b*f^(1/3))/((-d)*e + c*f)^(1/3))*CosIntegral(((-1)^(2/3)*b*f^(1/3))/((-d)*e + c*f)^(1/3) - b/(c + d*x)^(1/3)))/(3*f^(2/3)*((-d)*e + c*f)^(4/3)) + ((-1)^(1/3)*b*d*cos(a - ((-1)^(1/3)*b*f^(1/3))/((-d)*e + c*f)^(1/3))*CosIntegral(((-1)^(1/3)*b*f^(1/3))/((-d)*e + c*f)^(1/3) + b/(c + d*x)^(1/3)))/(3*f^(2/3)*((-d)*e + c*f)^(4/3)) + ((c + d*x)*sin(a + b/(c + d*x)^(1/3)))/((d*e - c*f)*(e + f*x)) - (b*d*sin(a + (b*f^(1/3))/((-d)*e + c*f)^(1/3))*SinIntegral((b*f^(1/3))/((-d)*e + c*f)^(1/3) - b/(c + d*x)^(1/3)))/(3*f^(2/3)*((-d)*e + c*f)^(4/3)) - ((-1)^(2/3)*b*d*sin(a + ((-1)^(2/3)*b*f^(1/3))/((-d)*e + c*f)^(1/3))*SinIntegral(((-1)^(2/3)*b*f^(1/3))/((-d)*e + c*f)^(1/3) - b/(c + d*x)^(1/3)))/(3*f^(2/3)*((-d)*e + c*f)^(4/3)) - ((-1)^(1/3)*b*d*sin(a - ((-1)^(1/3)*b*f^(1/3))/((-d)*e + c*f)^(1/3))*SinIntegral(((-1)^(1/3)*b*f^(1/3))/((-d)*e + c*f)^(1/3) + b/(c + d*x)^(1/3)))/(3*f^(2/3)*((-d)*e + c*f)^(4/3))]


    @test_int [(e + f*x)^2*sin(a + b/(c + d*x)^(2/3)), x, 24, (2*b*(d*e - c*f)^2*(c + d*x)^(1/3)*cos(a + b/(c + d*x)^(2/3)))/d^3 - (8*b^3*f^2*(c + d*x)*cos(a + b/(c + d*x)^(2/3)))/(315*d^3) + (b*f*(d*e - c*f)*(c + d*x)^(4/3)*cos(a + b/(c + d*x)^(2/3)))/(2*d^3) + (2*b*f^2*(c + d*x)^(7/3)*cos(a + b/(c + d*x)^(2/3)))/(21*d^3) + (b^3*f*(d*e - c*f)*cos(a)*CosIntegral(b/(c + d*x)^(2/3)))/(2*d^3) - (16*b^(9/2)*f^2*sqrt(2*pi)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/(315*d^3) + (2*b^(3/2)*(d*e - c*f)^2*sqrt(2*pi)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/d^3 + (2*b^(3/2)*(d*e - c*f)^2*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/d^3 + (16*b^(9/2)*f^2*sqrt(2*pi)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/(315*d^3) + (16*b^4*f^2*(c + d*x)^(1/3)*sin(a + b/(c + d*x)^(2/3)))/(315*d^3) - (b^2*f*(d*e - c*f)*(c + d*x)^(2/3)*sin(a + b/(c + d*x)^(2/3)))/(2*d^3) + ((d*e - c*f)^2*(c + d*x)*sin(a + b/(c + d*x)^(2/3)))/d^3 - (4*b^2*f^2*(c + d*x)^(5/3)*sin(a + b/(c + d*x)^(2/3)))/(105*d^3) + (f*(d*e - c*f)*(c + d*x)^2*sin(a + b/(c + d*x)^(2/3)))/d^3 + (f^2*(c + d*x)^3*sin(a + b/(c + d*x)^(2/3)))/(3*d^3) - (b^3*f*(d*e - c*f)*sin(a)*SinIntegral(b/(c + d*x)^(2/3)))/(2*d^3)]
    @test_int [(e + f*x)^1*sin(a + b/(c + d*x)^(2/3)), x, 15, (2*b*(d*e - c*f)*(c + d*x)^(1/3)*cos(a + b/(c + d*x)^(2/3)))/d^2 + (b*f*(c + d*x)^(4/3)*cos(a + b/(c + d*x)^(2/3)))/(4*d^2) + (b^3*f*cos(a)*CosIntegral(b/(c + d*x)^(2/3)))/(4*d^2) + (2*b^(3/2)*(d*e - c*f)*sqrt(2*pi)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/d^2 + (2*b^(3/2)*(d*e - c*f)*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/d^2 - (b^2*f*(c + d*x)^(2/3)*sin(a + b/(c + d*x)^(2/3)))/(4*d^2) + ((d*e - c*f)*(c + d*x)*sin(a + b/(c + d*x)^(2/3)))/d^2 + (f*(c + d*x)^2*sin(a + b/(c + d*x)^(2/3)))/(2*d^2) - (b^3*f*sin(a)*SinIntegral(b/(c + d*x)^(2/3)))/(4*d^2)]
    @test_int [(e + f*x)^0*sin(a + b/(c + d*x)^(2/3)), x, 7, (2*b*(c + d*x)^(1/3)*cos(a + b/(c + d*x)^(2/3)))/d + (2*b^(3/2)*sqrt(2*pi)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/d + (2*b^(3/2)*sqrt(2*pi)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/d + ((c + d*x)*sin(a + b/(c + d*x)^(2/3)))/d]
    @test_int [sin(a + b/(c + d*x)^(2/3))/(e + f*x)^1, x, 0, Unintegrable(sin(a + b/(c + d*x)^(2/3))/(e + f*x), x)]
    @test_int [sin(a + b/(c + d*x)^(2/3))/(e + f*x)^2, x, 0, Unintegrable(sin(a + b/(c + d*x)^(2/3))/(e + f*x)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sin(a+b*(c+d*x)^(n/3))*when*c*f-b*e=0 =#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(c*e + d*e*x)^(4/3)*sin(a + b*(c + d*x)^(1/3)), x, 9, (2160*e*(e*(c + d*x))^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^7*d*(c + d*x)^(1/3)) - (1080*e*(c + d*x)^(1/3)*(e*(c + d*x))^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^5*d) + (90*e*(c + d*x)*(e*(c + d*x))^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^3*d) - (3*e*(c + d*x)^(5/3)*(e*(c + d*x))^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d) + (2160*e*(e*(c + d*x))^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^6*d) - (360*e*(c + d*x)^(2/3)*(e*(c + d*x))^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^4*d) + (18*e*(c + d*x)^(4/3)*(e*(c + d*x))^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d)]
    @test_int [(c*e + d*e*x)^(2/3)*sin(a + b*(c + d*x)^(1/3)), x, 7, (36*(e*(c + d*x))^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b^3*d) - (72*(e*(c + d*x))^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b^5*d*(c + d*x)^(2/3)) - (3*(c + d*x)^(2/3)*(e*(c + d*x))^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d) - (72*(e*(c + d*x))^(2/3)*sin(a + b*(c + d*x)^(1/3)))/(b^4*d*(c + d*x)^(1/3)) + (12*(c + d*x)^(1/3)*(e*(c + d*x))^(2/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d)]
    @test_int [(c*e + d*e*x)^(1/3)*sin(a + b*(c + d*x)^(1/3)), x, 6, (18*(e*(c + d*x))^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b^3*d) - (3*(c + d*x)^(2/3)*(e*(c + d*x))^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d) - (18*(e*(c + d*x))^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^4*d*(c + d*x)^(1/3)) + (9*(c + d*x)^(1/3)*(e*(c + d*x))^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d)]
    @test_int [sin(a + b*(c + d*x)^(1/3))/(c*e + d*e*x)^(1/3), x, 4, -((3*(c + d*x)^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d*(e*(c + d*x))^(1/3))) + (3*(c + d*x)^(1/3)*sin(a + b*(c + d*x)^(1/3)))/(b^2*d*(e*(c + d*x))^(1/3))]
    @test_int [sin(a + b*(c + d*x)^(1/3))/(c*e + d*e*x)^(2/3), x, 3, -((3*(c + d*x)^(2/3)*cos(a + b*(c + d*x)^(1/3)))/(b*d*(e*(c + d*x))^(2/3)))]
    @test_int [sin(a + b*(c + d*x)^(1/3))/(c*e + d*e*x)^(4/3), x, 6, (3*b*(c + d*x)^(1/3)*cos(a)*CosIntegral(b*(c + d*x)^(1/3)))/(d*e*(e*(c + d*x))^(1/3)) - (3*sin(a + b*(c + d*x)^(1/3)))/(d*e*(e*(c + d*x))^(1/3)) - (3*b*(c + d*x)^(1/3)*sin(a)*SinIntegral(b*(c + d*x)^(1/3)))/(d*e*(e*(c + d*x))^(1/3))]
    @test_int [sin(a + b*(c + d*x)^(1/3))/(c*e + d*e*x)^(5/3), x, 7, -((3*b*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(1/3)))/(2*d*e*(e*(c + d*x))^(2/3))) - (3*b^2*(c + d*x)^(2/3)*CosIntegral(b*(c + d*x)^(1/3))*sin(a))/(2*d*e*(e*(c + d*x))^(2/3)) - (3*sin(a + b*(c + d*x)^(1/3)))/(2*d*e*(e*(c + d*x))^(2/3)) - (3*b^2*(c + d*x)^(2/3)*cos(a)*SinIntegral(b*(c + d*x)^(1/3)))/(2*d*e*(e*(c + d*x))^(2/3))]
    @test_int [sin(a + b*(c + d*x)^(1/3))/(c*e + d*e*x)^(7/3), x, 9, (b^3*cos(a + b*(c + d*x)^(1/3)))/(8*d*e^2*(e*(c + d*x))^(1/3)) - (b*cos(a + b*(c + d*x)^(1/3)))/(4*d*e^2*(c + d*x)^(2/3)*(e*(c + d*x))^(1/3)) + (b^4*(c + d*x)^(1/3)*CosIntegral(b*(c + d*x)^(1/3))*sin(a))/(8*d*e^2*(e*(c + d*x))^(1/3)) - (3*sin(a + b*(c + d*x)^(1/3)))/(4*d*e^2*(c + d*x)*(e*(c + d*x))^(1/3)) + (b^2*sin(a + b*(c + d*x)^(1/3)))/(8*d*e^2*(c + d*x)^(1/3)*(e*(c + d*x))^(1/3)) + (b^4*(c + d*x)^(1/3)*cos(a)*SinIntegral(b*(c + d*x)^(1/3)))/(8*d*e^2*(e*(c + d*x))^(1/3))]


    @test_int [(c*e + d*e*x)^(4/3)*sin(a + b*(c + d*x)^(2/3)), x, 9, (45*e*(e*(c + d*x))^(1/3)*cos(a + b*(c + d*x)^(2/3)))/(8*b^3*d) - (3*e*(c + d*x)^(4/3)*(e*(c + d*x))^(1/3)*cos(a + b*(c + d*x)^(2/3)))/(2*b*d) - (45*e*sqrt(pi)*(e*(c + d*x))^(1/3)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3)))/(8*sqrt(2)*b^(7/2)*d*(c + d*x)^(1/3)) + (45*e*sqrt(pi)*(e*(c + d*x))^(1/3)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3))*sin(a))/(8*sqrt(2)*b^(7/2)*d*(c + d*x)^(1/3)) + (15*e*(c + d*x)^(2/3)*(e*(c + d*x))^(1/3)*sin(a + b*(c + d*x)^(2/3)))/(4*b^2*d)]
    @test_int [(c*e + d*e*x)^(2/3)*sin(a + b*(c + d*x)^(2/3)), x, 8, -((3*(c + d*x)^(1/3)*(e*(c + d*x))^(2/3)*cos(a + b*(c + d*x)^(2/3)))/(2*b*d)) - (9*sqrt(pi)*(e*(c + d*x))^(2/3)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3)))/(4*sqrt(2)*b^(5/2)*d*(c + d*x)^(2/3)) - (9*sqrt(pi)*(e*(c + d*x))^(2/3)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3))*sin(a))/(4*sqrt(2)*b^(5/2)*d*(c + d*x)^(2/3)) + (9*(e*(c + d*x))^(2/3)*sin(a + b*(c + d*x)^(2/3)))/(4*b^2*d*(c + d*x)^(1/3))]
    @test_int [(c*e + d*e*x)^(1/3)*sin(a + b*(c + d*x)^(2/3)), x, 5, -((3*(c + d*x)^(1/3)*(e*(c + d*x))^(1/3)*cos(a + b*(c + d*x)^(2/3)))/(2*b*d)) + (3*(e*(c + d*x))^(1/3)*sin(a + b*(c + d*x)^(2/3)))/(2*b^2*d*(c + d*x)^(1/3))]
    @test_int [sin(a + b*(c + d*x)^(2/3))/(c*e + d*e*x)^(1/3), x, 4, -((3*(c + d*x)^(1/3)*cos(a + b*(c + d*x)^(2/3)))/(2*b*d*(e*(c + d*x))^(1/3)))]
    @test_int [sin(a + b*(c + d*x)^(2/3))/(c*e + d*e*x)^(2/3), x, 6, (3*sqrt(pi/2)*(c + d*x)^(2/3)*cos(a)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3)))/(sqrt(b)*d*(e*(c + d*x))^(2/3)) + (3*sqrt(pi/2)*(c + d*x)^(2/3)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3))*sin(a))/(sqrt(b)*d*(e*(c + d*x))^(2/3))]
    @test_int [sin(a + b*(c + d*x)^(2/3))/(c*e + d*e*x)^(4/3), x, 7, (3*sqrt(b)*sqrt(2*pi)*(c + d*x)^(1/3)*cos(a)*FresnelC(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3)))/(d*e*(e*(c + d*x))^(1/3)) - (3*sqrt(b)*sqrt(2*pi)*(c + d*x)^(1/3)*FresnelS(sqrt(b)*sqrt(2/pi)*(c + d*x)^(1/3))*sin(a))/(d*e*(e*(c + d*x))^(1/3)) - (3*sin(a + b*(c + d*x)^(2/3)))/(d*e*(e*(c + d*x))^(1/3))]
    @test_int [sin(a + b*(c + d*x)^(2/3))/(c*e + d*e*x)^(5/3), x, 7, (3*b*(c + d*x)^(2/3)*cos(a)*CosIntegral(b*(c + d*x)^(2/3)))/(2*d*e*(e*(c + d*x))^(2/3)) - (3*sin(a + b*(c + d*x)^(2/3)))/(2*d*e*(e*(c + d*x))^(2/3)) - (3*b*(c + d*x)^(2/3)*sin(a)*SinIntegral(b*(c + d*x)^(2/3)))/(2*d*e*(e*(c + d*x))^(2/3))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(c*e + d*e*x)^(1/3)*sin(a + b/(c + d*x)^(1/3)), x, 9, -((b^3*(e*(c + d*x))^(1/3)*cos(a + b/(c + d*x)^(1/3)))/(8*d)) + (b*(c + d*x)^(2/3)*(e*(c + d*x))^(1/3)*cos(a + b/(c + d*x)^(1/3)))/(4*d) - (b^4*(e*(c + d*x))^(1/3)*CosIntegral(b/(c + d*x)^(1/3))*sin(a))/(8*d*(c + d*x)^(1/3)) - (b^2*(c + d*x)^(1/3)*(e*(c + d*x))^(1/3)*sin(a + b/(c + d*x)^(1/3)))/(8*d) + (3*(c + d*x)*(e*(c + d*x))^(1/3)*sin(a + b/(c + d*x)^(1/3)))/(4*d) - (b^4*(e*(c + d*x))^(1/3)*cos(a)*SinIntegral(b/(c + d*x)^(1/3)))/(8*d*(c + d*x)^(1/3))]
    @test_int [sin(a + b/(c + d*x)^(1/3))/(c*e + d*e*x)^(1/3), x, 7, (3*b*(c + d*x)^(2/3)*cos(a + b/(c + d*x)^(1/3)))/(2*d*(e*(c + d*x))^(1/3)) + (3*b^2*(c + d*x)^(1/3)*CosIntegral(b/(c + d*x)^(1/3))*sin(a))/(2*d*(e*(c + d*x))^(1/3)) + (3*(c + d*x)*sin(a + b/(c + d*x)^(1/3)))/(2*d*(e*(c + d*x))^(1/3)) + (3*b^2*(c + d*x)^(1/3)*cos(a)*SinIntegral(b/(c + d*x)^(1/3)))/(2*d*(e*(c + d*x))^(1/3))]
    @test_int [sin(a + b/(c + d*x)^(1/3))/(c*e + d*e*x)^(2/3), x, 6, -((3*b*(c + d*x)^(2/3)*cos(a)*CosIntegral(b/(c + d*x)^(1/3)))/(d*(e*(c + d*x))^(2/3))) + (3*(c + d*x)*sin(a + b/(c + d*x)^(1/3)))/(d*(e*(c + d*x))^(2/3)) + (3*b*(c + d*x)^(2/3)*sin(a)*SinIntegral(b/(c + d*x)^(1/3)))/(d*(e*(c + d*x))^(2/3))]
    @test_int [sin(a + b/(c + d*x)^(1/3))/(c*e + d*e*x)^(4/3), x, 3, (3*(c + d*x)^(1/3)*cos(a + b/(c + d*x)^(1/3)))/(b*d*e*(e*(c + d*x))^(1/3))]
    @test_int [sin(a + b/(c + d*x)^(1/3))/(c*e + d*e*x)^(5/3), x, 4, (3*(c + d*x)^(1/3)*cos(a + b/(c + d*x)^(1/3)))/(b*d*e*(e*(c + d*x))^(2/3)) - (3*(c + d*x)^(2/3)*sin(a + b/(c + d*x)^(1/3)))/(b^2*d*e*(e*(c + d*x))^(2/3))]
    @test_int [sin(a + b/(c + d*x)^(1/3))/(c*e + d*e*x)^(7/3), x, 6, -((18*cos(a + b/(c + d*x)^(1/3)))/(b^3*d*e^2*(e*(c + d*x))^(1/3))) + (3*cos(a + b/(c + d*x)^(1/3)))/(b*d*e^2*(c + d*x)^(2/3)*(e*(c + d*x))^(1/3)) - (9*sin(a + b/(c + d*x)^(1/3)))/(b^2*d*e^2*(c + d*x)^(1/3)*(e*(c + d*x))^(1/3)) + (18*(c + d*x)^(1/3)*sin(a + b/(c + d*x)^(1/3)))/(b^4*d*e^2*(e*(c + d*x))^(1/3))]
    @test_int [sin(a + b/(c + d*x)^(1/3))/(c*e + d*e*x)^(8/3), x, 7, -((36*cos(a + b/(c + d*x)^(1/3)))/(b^3*d*e^2*(e*(c + d*x))^(2/3))) + (3*cos(a + b/(c + d*x)^(1/3)))/(b*d*e^2*(c + d*x)^(2/3)*(e*(c + d*x))^(2/3)) + (72*(c + d*x)^(2/3)*cos(a + b/(c + d*x)^(1/3)))/(b^5*d*e^2*(e*(c + d*x))^(2/3)) - (12*sin(a + b/(c + d*x)^(1/3)))/(b^2*d*e^2*(c + d*x)^(1/3)*(e*(c + d*x))^(2/3)) + (72*(c + d*x)^(1/3)*sin(a + b/(c + d*x)^(1/3)))/(b^4*d*e^2*(e*(c + d*x))^(2/3))]


    @test_int [(c*e + d*e*x)^(4/3)*sin(a + b/(c + d*x)^(2/3)), x, 11, -((8*b^3*e*(e*(c + d*x))^(1/3)*cos(a + b/(c + d*x)^(2/3)))/(35*d)) + (6*b*e*(c + d*x)^(4/3)*(e*(c + d*x))^(1/3)*cos(a + b/(c + d*x)^(2/3)))/(35*d) - (8*b^(7/2)*e*sqrt(2*pi)*(e*(c + d*x))^(1/3)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/(35*d*(c + d*x)^(1/3)) - (8*b^(7/2)*e*sqrt(2*pi)*(e*(c + d*x))^(1/3)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/(35*d*(c + d*x)^(1/3)) - (4*b^2*e*(c + d*x)^(2/3)*(e*(c + d*x))^(1/3)*sin(a + b/(c + d*x)^(2/3)))/(35*d) + (3*e*(c + d*x)^2*(e*(c + d*x))^(1/3)*sin(a + b/(c + d*x)^(2/3)))/(7*d)]
    @test_int [(c*e + d*e*x)^(2/3)*sin(a + b/(c + d*x)^(2/3)), x, 10, (2*b*(c + d*x)^(1/3)*(e*(c + d*x))^(2/3)*cos(a + b/(c + d*x)^(2/3)))/(5*d) + (4*sqrt(2)*b^(5/2)*sqrt(pi)*(e*(c + d*x))^(2/3)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/(5*d*(c + d*x)^(2/3)) - (4*sqrt(2)*b^(5/2)*sqrt(pi)*(e*(c + d*x))^(2/3)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/(5*d*(c + d*x)^(2/3)) - (4*b^2*(e*(c + d*x))^(2/3)*sin(a + b/(c + d*x)^(2/3)))/(5*d*(c + d*x)^(1/3)) + (3*(c + d*x)*(e*(c + d*x))^(2/3)*sin(a + b/(c + d*x)^(2/3)))/(5*d)]
    @test_int [(c*e + d*e*x)^(1/3)*sin(a + b/(c + d*x)^(2/3)), x, 8, (3*b*(c + d*x)^(1/3)*(e*(c + d*x))^(1/3)*cos(a + b/(c + d*x)^(2/3)))/(4*d) + (3*b^2*(e*(c + d*x))^(1/3)*CosIntegral(b/(c + d*x)^(2/3))*sin(a))/(4*d*(c + d*x)^(1/3)) + (3*(c + d*x)*(e*(c + d*x))^(1/3)*sin(a + b/(c + d*x)^(2/3)))/(4*d) + (3*b^2*(e*(c + d*x))^(1/3)*cos(a)*SinIntegral(b/(c + d*x)^(2/3)))/(4*d*(c + d*x)^(1/3))]
    @test_int [sin(a + b/(c + d*x)^(2/3))/(c*e + d*e*x)^(1/3), x, 7, -((3*b*(c + d*x)^(1/3)*cos(a)*CosIntegral(b/(c + d*x)^(2/3)))/(2*d*(e*(c + d*x))^(1/3))) + (3*(c + d*x)*sin(a + b/(c + d*x)^(2/3)))/(2*d*(e*(c + d*x))^(1/3)) + (3*b*(c + d*x)^(1/3)*sin(a)*SinIntegral(b/(c + d*x)^(2/3)))/(2*d*(e*(c + d*x))^(1/3))]
    @test_int [sin(a + b/(c + d*x)^(2/3))/(c*e + d*e*x)^(2/3), x, 8, -((3*sqrt(b)*sqrt(2*pi)*(c + d*x)^(2/3)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/(d*(e*(c + d*x))^(2/3))) + (3*sqrt(b)*sqrt(2*pi)*(c + d*x)^(2/3)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/(d*(e*(c + d*x))^(2/3)) + (3*(c + d*x)*sin(a + b/(c + d*x)^(2/3)))/(d*(e*(c + d*x))^(2/3))]
    @test_int [sin(a + b/(c + d*x)^(2/3))/(c*e + d*e*x)^(4/3), x, 6, -((3*sqrt(pi)*(c + d*x)^(1/3)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/(sqrt(2)*sqrt(b)*d*e*(e*(c + d*x))^(1/3))) - (3*sqrt(pi)*(c + d*x)^(1/3)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/(sqrt(2)*sqrt(b)*d*e*(e*(c + d*x))^(1/3))]
    @test_int [sin(a + b/(c + d*x)^(2/3))/(c*e + d*e*x)^(5/3), x, 4, (3*(c + d*x)^(2/3)*cos(a + b/(c + d*x)^(2/3)))/(2*b*d*e*(e*(c + d*x))^(2/3))]
    @test_int [sin(a + b/(c + d*x)^(2/3))/(c*e + d*e*x)^(7/3), x, 5, (3*cos(a + b/(c + d*x)^(2/3)))/(2*b*d*e^2*(c + d*x)^(1/3)*(e*(c + d*x))^(1/3)) - (3*(c + d*x)^(1/3)*sin(a + b/(c + d*x)^(2/3)))/(2*b^2*d*e^2*(e*(c + d*x))^(1/3))]
    @test_int [sin(a + b/(c + d*x)^(2/3))/(c*e + d*e*x)^(8/3), x, 9, (3*cos(a + b/(c + d*x)^(2/3)))/(2*b*d*e^2*(c + d*x)^(1/3)*(e*(c + d*x))^(2/3)) + (9*sqrt(pi/2)*(c + d*x)^(2/3)*cos(a)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/(4*b^(5/2)*d*e^2*(e*(c + d*x))^(2/3)) + (9*sqrt(pi/2)*(c + d*x)^(2/3)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/(4*b^(5/2)*d*e^2*(e*(c + d*x))^(2/3)) - (9*(c + d*x)^(1/3)*sin(a + b/(c + d*x)^(2/3)))/(4*b^2*d*e^2*(e*(c + d*x))^(2/3))]
    @test_int [sin(a + b/(c + d*x)^(2/3))/(c*e + d*e*x)^(10/3), x, 10, -((45*cos(a + b/(c + d*x)^(2/3)))/(8*b^3*d*e^3*(e*(c + d*x))^(1/3))) + (3*cos(a + b/(c + d*x)^(2/3)))/(2*b*d*e^3*(c + d*x)^(4/3)*(e*(c + d*x))^(1/3)) + (45*sqrt(pi)*(c + d*x)^(1/3)*cos(a)*FresnelC((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3)))/(8*sqrt(2)*b^(7/2)*d*e^3*(e*(c + d*x))^(1/3)) - (45*sqrt(pi)*(c + d*x)^(1/3)*FresnelS((sqrt(b)*sqrt(2/pi))/(c + d*x)^(1/3))*sin(a))/(8*sqrt(2)*b^(7/2)*d*e^3*(e*(c + d*x))^(1/3)) - (15*sin(a + b/(c + d*x)^(2/3)))/(4*b^2*d*e^3*(c + d*x)^(2/3)*(e*(c + d*x))^(1/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*sin(a+b*(c+d*x)^n)*when*n*symbolic=#


    @test_int [(e*x)^m*sin(a + b*(c + d*x)^n), x, 0, Unintegrable((e*x)^m*sin(a + b*(c + d*x)^n), x)]


    @test_int [x^3*sin(a + b*(c + d*x)^n), x, 14, -((im*c^3*ℯ^(im*a)*(c + d*x)*Gamma(1/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^n^(-1)*(2*d^4*n))) + (im*c^3*(c + d*x)*Gamma(1/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^n^(-1)*(2*d^4*n)) + (3*im*c^2*ℯ^(im*a)*(c + d*x)^2*Gamma(2/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^(2/n)*(2*d^4*n)) - (3*im*c^2*(c + d*x)^2*Gamma(2/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^(2/n)*(2*d^4*n)) - (3*im*c*ℯ^(im*a)*(c + d*x)^3*Gamma(3/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^(3/n)*(2*d^4*n)) + (3*im*c*(c + d*x)^3*Gamma(3/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^(3/n)*(2*d^4*n)) + (im*ℯ^(im*a)*(c + d*x)^4*Gamma(4/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^(4/n)*(2*d^4*n)) - (im*(c + d*x)^4*Gamma(4/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^(4/n)*(2*d^4*n))]
    @test_int [x^2*sin(a + b*(c + d*x)^n), x, 11, (im*c^2*ℯ^(im*a)*(c + d*x)*Gamma(1/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^n^(-1)*(2*d^3*n)) - (im*c^2*(c + d*x)*Gamma(1/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^n^(-1)*(2*d^3*n)) - (im*c*ℯ^(im*a)*(c + d*x)^2*Gamma(2/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^(2/n)*(d^3*n)) + (im*c*(c + d*x)^2*Gamma(2/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^(2/n)*(d^3*n)) + (im*ℯ^(im*a)*(c + d*x)^3*Gamma(3/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^(3/n)*(2*d^3*n)) - (im*(c + d*x)^3*Gamma(3/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^(3/n)*(2*d^3*n))]
    @test_int [x^1*sin(a + b*(c + d*x)^n), x, 8, -((im*c*ℯ^(im*a)*(c + d*x)*Gamma(1/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^n^(-1)*(2*d^2*n))) + (im*c*(c + d*x)*Gamma(1/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^n^(-1)*(2*d^2*n)) + (im*ℯ^(im*a)*(c + d*x)^2*Gamma(2/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^(2/n)*(2*d^2*n)) - (im*(c + d*x)^2*Gamma(2/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^(2/n)*(2*d^2*n))]
    @test_int [x^0*sin(a + b*(c + d*x)^n), x, 3, (im*ℯ^(im*a)*(c + d*x)*Gamma(1/n, (-im)*b*(c + d*x)^n))/(((-im)*b*(c + d*x)^n)^n^(-1)*(2*d*n)) - (im*(c + d*x)*Gamma(1/n, im*b*(c + d*x)^n))/(ℯ^(im*a)*(im*b*(c + d*x)^n)^n^(-1)*(2*d*n))]
    @test_int [sin(a + b*(c + d*x)^n)/x^1, x, 0, Unintegrable(sin(a + b*(c + d*x)^n)/x, x)]
    @test_int [sin(a + b*(c + d*x)^n)/x^2, x, 0, Unintegrable(sin(a + b*(c + d*x)^n)/x^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*(f+g*x)^n))^p*when*n*symbolic=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*sin(c+d*(f+g*x)^n))^p*when*n*symbolic=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^3*(a + b*sin(c + d*(f + g*x)^n)), x, 16, (a*x^4)/4 - (im*b*ℯ^(im*c)*f^3*(f + g*x)*Gamma(1/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(2*g^4*n)) + (im*b*f^3*(f + g*x)*Gamma(1/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^n^(-1)*(2*g^4*n)) + (3*im*b*ℯ^(im*c)*f^2*(f + g*x)^2*Gamma(2/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(2/n)*(2*g^4*n)) - (3*im*b*f^2*(f + g*x)^2*Gamma(2/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^(2/n)*(2*g^4*n)) - (3*im*b*ℯ^(im*c)*f*(f + g*x)^3*Gamma(3/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(3/n)*(2*g^4*n)) + (3*im*b*f*(f + g*x)^3*Gamma(3/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^(3/n)*(2*g^4*n)) + (im*b*ℯ^(im*c)*(f + g*x)^4*Gamma(4/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(4/n)*(2*g^4*n)) - (im*b*(f + g*x)^4*Gamma(4/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^(4/n)*(2*g^4*n))]
    @test_int [x^2*(a + b*sin(c + d*(f + g*x)^n)), x, 13, (a*x^3)/3 + (im*b*ℯ^(im*c)*f^2*(f + g*x)*Gamma(1/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(2*g^3*n)) - (im*b*f^2*(f + g*x)*Gamma(1/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^n^(-1)*(2*g^3*n)) - (im*b*ℯ^(im*c)*f*(f + g*x)^2*Gamma(2/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(2/n)*(g^3*n)) + (im*b*f*(f + g*x)^2*Gamma(2/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^(2/n)*(g^3*n)) + (im*b*ℯ^(im*c)*(f + g*x)^3*Gamma(3/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(3/n)*(2*g^3*n)) - (im*b*(f + g*x)^3*Gamma(3/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^(3/n)*(2*g^3*n))]
    @test_int [x^1*(a + b*sin(c + d*(f + g*x)^n)), x, 10, (a*x^2)/2 - (im*b*ℯ^(im*c)*f*(f + g*x)*Gamma(1/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(2*g^2*n)) + (im*b*f*(f + g*x)*Gamma(1/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^n^(-1)*(2*g^2*n)) + (im*b*ℯ^(im*c)*(f + g*x)^2*Gamma(2/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(2/n)*(2*g^2*n)) - (im*b*(f + g*x)^2*Gamma(2/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^(2/n)*(2*g^2*n))]
    @test_int [x^0*(a + b*sin(c + d*(f + g*x)^n)), x, 4, a*x + (im*b*ℯ^(im*c)*(f + g*x)*Gamma(1/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(2*g*n)) - (im*b*(f + g*x)*Gamma(1/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^n^(-1)*(2*g*n))]
    @test_int [(a + b*sin(c + d*(f + g*x)^n))/x^1, x, 2, a*log(x) + b*Unintegrable(sin(c + d*(f + g*x)^n)/x, x)]
    @test_int [(a + b*sin(c + d*(f + g*x)^n))/x^2, x, 2, -(a/x) + b*Unintegrable(sin(c + d*(f + g*x)^n)/x^2, x)]


    @test_int [x^2*(a + b*sin(c + d*(f + g*x)^n))^2, x, 28, ((2*a^2 + b^2)*f^2*x)/(2*g^2) - ((2*a^2 + b^2)*f*(f + g*x)^2)/(2*g^3) + ((2*a^2 + b^2)*(f + g*x)^3)/(6*g^3) + (im*a*b*ℯ^(im*c)*f^2*(f + g*x)*Gamma(1/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(g^3*n)) - (im*a*b*f^2*(f + g*x)*Gamma(1/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^n^(-1)*(g^3*n)) + (2^(-2 - 1/n)*b^2*ℯ^(2*im*c)*f^2*(f + g*x)*Gamma(1/n, -2*im*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(g^3*n)) + (2^(-2 - 1/n)*b^2*f^2*(f + g*x)*Gamma(1/n, 2*im*d*(f + g*x)^n))/(ℯ^(2*im*c)*(im*d*(f + g*x)^n)^n^(-1)*(g^3*n)) - (2*im*a*b*ℯ^(im*c)*f*(f + g*x)^2*Gamma(2/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(2/n)*(g^3*n)) + (2*im*a*b*f*(f + g*x)^2*Gamma(2/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^(2/n)*(g^3*n)) - (2^(-1 - 2/n)*b^2*ℯ^(2*im*c)*f*(f + g*x)^2*Gamma(2/n, -2*im*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(2/n)*(g^3*n)) - (2^(-1 - 2/n)*b^2*f*(f + g*x)^2*Gamma(2/n, 2*im*d*(f + g*x)^n))/(ℯ^(2*im*c)*(im*d*(f + g*x)^n)^(2/n)*(g^3*n)) + (im*a*b*ℯ^(im*c)*(f + g*x)^3*Gamma(3/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(3/n)*(g^3*n)) - (im*a*b*(f + g*x)^3*Gamma(3/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^(3/n)*(g^3*n)) + (2^(-2 - 3/n)*b^2*ℯ^(2*im*c)*(f + g*x)^3*Gamma(3/n, -2*im*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(3/n)*(g^3*n)) + (2^(-2 - 3/n)*b^2*(f + g*x)^3*Gamma(3/n, 2*im*d*(f + g*x)^n))/(ℯ^(2*im*c)*(im*d*(f + g*x)^n)^(3/n)*(g^3*n))]
    @test_int [x^1*(a + b*sin(c + d*(f + g*x)^n))^2, x, 19, -(((2*a^2 + b^2)*f*x)/(2*g)) + ((2*a^2 + b^2)*(f + g*x)^2)/(4*g^2) - (im*a*b*ℯ^(im*c)*f*(f + g*x)*Gamma(1/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(g^2*n)) + (im*a*b*f*(f + g*x)*Gamma(1/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^n^(-1)*(g^2*n)) - (2^(-2 - 1/n)*b^2*ℯ^(2*im*c)*f*(f + g*x)*Gamma(1/n, -2*im*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(g^2*n)) - (2^(-2 - 1/n)*b^2*f*(f + g*x)*Gamma(1/n, 2*im*d*(f + g*x)^n))/(ℯ^(2*im*c)*(im*d*(f + g*x)^n)^n^(-1)*(g^2*n)) + (im*a*b*ℯ^(im*c)*(f + g*x)^2*Gamma(2/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(2/n)*(g^2*n)) - (im*a*b*(f + g*x)^2*Gamma(2/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^(2/n)*(g^2*n)) + (4^(-1 - 1/n)*b^2*ℯ^(2*im*c)*(f + g*x)^2*Gamma(2/n, -2*im*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^(2/n)*(g^2*n)) + (4^(-1 - 1/n)*b^2*(f + g*x)^2*Gamma(2/n, 2*im*d*(f + g*x)^n))/(ℯ^(2*im*c)*(im*d*(f + g*x)^n)^(2/n)*(g^2*n))]
    @test_int [x^0*(a + b*sin(c + d*(f + g*x)^n))^2, x, 8, (1/2)*(2*a^2 + b^2)*x + (im*a*b*ℯ^(im*c)*(f + g*x)*Gamma(1/n, (-im)*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(g*n)) - (im*a*b*(f + g*x)*Gamma(1/n, im*d*(f + g*x)^n))/(ℯ^(im*c)*(im*d*(f + g*x)^n)^n^(-1)*(g*n)) + (2^(-2 - 1/n)*b^2*ℯ^(2*im*c)*(f + g*x)*Gamma(1/n, -2*im*d*(f + g*x)^n))/(((-im)*d*(f + g*x)^n)^n^(-1)*(g*n)) + (2^(-2 - 1/n)*b^2*(f + g*x)*Gamma(1/n, 2*im*d*(f + g*x)^n))/(ℯ^(2*im*c)*(im*d*(f + g*x)^n)^n^(-1)*(g*n))]
    @test_int [(a + b*sin(c + d*(f + g*x)^n))^2/x^1, x, 0, Unintegrable((a + b*sin(c + d*(f + g*x)^n))^2/x, x)]
    @test_int [(a + b*sin(c + d*(f + g*x)^n))^2/x^2, x, 0, Unintegrable((a + b*sin(c + d*(f + g*x)^n))^2/x^2, x)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^2/(a + b*sin(c + d*(f + g*x)^n)), x, 0, Unintegrable(x^2/(a + b*sin(c + d*(f + g*x)^n)), x)]
    @test_int [x^1/(a + b*sin(c + d*(f + g*x)^n)), x, 0, Unintegrable(x/(a + b*sin(c + d*(f + g*x)^n)), x)]
    @test_int [x^0/(a + b*sin(c + d*(f + g*x)^n)), x, 0, Unintegrable(1/(a + b*sin(c + d*(f + g*x)^n)), x)]
    @test_int [1/(x^1*(a + b*sin(c + d*(f + g*x)^n))), x, 0, Unintegrable(1/(x*(a + b*sin(c + d*(f + g*x)^n))), x)]
    @test_int [1/(x^2*(a + b*sin(c + d*(f + g*x)^n))), x, 0, Unintegrable(1/(x^2*(a + b*sin(c + d*(f + g*x)^n))), x)]


    @test_int [x^2/(a + b*sin(c + d*(f + g*x)^n))^2, x, 0, Unintegrable(x^2/(a + b*sin(c + d*(f + g*x)^n))^2, x)]
    @test_int [x^1/(a + b*sin(c + d*(f + g*x)^n))^2, x, 0, Unintegrable(x/(a + b*sin(c + d*(f + g*x)^n))^2, x)]
    @test_int [x^0/(a + b*sin(c + d*(f + g*x)^n))^2, x, 0, Unintegrable(1/(a + b*sin(c + d*(f + g*x)^n))^2, x)]
    @test_int [1/(x^1*(a + b*sin(c + d*(f + g*x)^n))^2), x, 0, Unintegrable(1/(x*(a + b*sin(c + d*(f + g*x)^n))^2), x)]
    @test_int [1/(x^2*(a + b*sin(c + d*(f + g*x)^n))^2), x, 0, Unintegrable(1/(x^2*(a + b*sin(c + d*(f + g*x)^n))^2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*(f+g*x)^n))^p*when*p*symbolic=#


    @test_int [(e*x)^m*(a + b*sin(c + d*(f + g*x)^n))^p, x, 0, Unintegrable((e*x)^m*(a + b*sin(c + d*(f + g*x)^n))^p, x)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*sin(c+d*x^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*sin(c+d*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*sin(c+d/x))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(e + f*x)^2*(a + b*sin(c + d/x)), x, 23, a*e^2*x + a*e*f*x^2 + (1/3)*a*f^2*x^3 + b*d*e*f*x*cos(c + d/x) + (1/6)*b*d*f^2*x^2*cos(c + d/x) - b*d*e^2*cos(c)*CosIntegral(d/x) + (1/6)*b*d^3*f^2*cos(c)*CosIntegral(d/x) + b*d^2*e*f*CosIntegral(d/x)*sin(c) + b*e^2*x*sin(c + d/x) - (1/6)*b*d^2*f^2*x*sin(c + d/x) + b*e*f*x^2*sin(c + d/x) + (1/3)*b*f^2*x^3*sin(c + d/x) + b*d^2*e*f*cos(c)*SinIntegral(d/x) + b*d*e^2*sin(c)*SinIntegral(d/x) - (1/6)*b*d^3*f^2*sin(c)*SinIntegral(d/x)]
    @test_int [(e + f*x)^1*(a + b*sin(c + d/x)), x, 15, a*e*x + (1/2)*a*f*x^2 + (1/2)*b*d*f*x*cos(c + d/x) - b*d*e*cos(c)*CosIntegral(d/x) + (1/2)*b*d^2*f*CosIntegral(d/x)*sin(c) + b*e*x*sin(c + d/x) + (1/2)*b*f*x^2*sin(c + d/x) + (1/2)*b*d^2*f*cos(c)*SinIntegral(d/x) + b*d*e*sin(c)*SinIntegral(d/x)]
    @test_int [(e + f*x)^0*(a + b*sin(c + d/x)), x, 6, a*x - b*d*cos(c)*CosIntegral(d/x) + b*x*sin(c + d/x) + b*d*sin(c)*SinIntegral(d/x)]
    @test_int [(a + b*sin(c + d/x))/(e + f*x)^1, x, 12, (a*log(f + e/x))/f + (a*log(x))/f - (b*CosIntegral(d/x)*sin(c))/f + (b*CosIntegral(d*(f/e + 1/x))*sin(c - (d*f)/e))/f + (b*cos(c - (d*f)/e)*SinIntegral(d*(f/e + 1/x)))/f - (b*cos(c)*SinIntegral(d/x))/f]
    @test_int [(a + b*sin(c + d/x))/(e + f*x)^2, x, 7, a/(e*(f + e/x)) - (b*d*cos(c - (d*f)/e)*CosIntegral(d*(f/e + 1/x)))/e^2 + (b*sin(c + d/x))/(e*(f + e/x)) + (b*d*sin(c - (d*f)/e)*SinIntegral(d*(f/e + 1/x)))/e^2]
    @test_int [(a + b*sin(c + d/x))/(e + f*x)^3, x, 15, -((a*f)/(2*e^2*(f + e/x)^2)) + a/(e^2*(f + e/x)) - (b*d*f*cos(c + d/x))/(2*e^3*(f + e/x)) - (b*d*cos(c - (d*f)/e)*CosIntegral(d*(f/e + 1/x)))/e^3 - (b*d^2*f*CosIntegral(d*(f/e + 1/x))*sin(c - (d*f)/e))/(2*e^4) - (b*f*sin(c + d/x))/(2*e^2*(f + e/x)^2) + (b*sin(c + d/x))/(e^2*(f + e/x)) - (b*d^2*f*cos(c - (d*f)/e)*SinIntegral(d*(f/e + 1/x)))/(2*e^4) + (b*d*sin(c - (d*f)/e)*SinIntegral(d*(f/e + 1/x)))/e^3]


    @test_int [(e + f*x)^1*(a + b*sin(c + d/x))^2, x, 27, a^2*e*x + (1/2)*a^2*f*x^2 + a*b*d*f*x*cos(c + d/x) - 2*a*b*d*e*cos(c)*CosIntegral(d/x) - b^2*d^2*f*cos(2*c)*CosIntegral((2*d)/x) + a*b*d^2*f*CosIntegral(d/x)*sin(c) - b^2*d*e*CosIntegral((2*d)/x)*sin(2*c) + 2*a*b*e*x*sin(c + d/x) + a*b*f*x^2*sin(c + d/x) + b^2*d*f*x*cos(c + d/x)*sin(c + d/x) + b^2*e*x*sin(c + d/x)^2 + (1/2)*b^2*f*x^2*sin(c + d/x)^2 + a*b*d^2*f*cos(c)*SinIntegral(d/x) + 2*a*b*d*e*sin(c)*SinIntegral(d/x) - b^2*d*e*cos(2*c)*SinIntegral((2*d)/x) + b^2*d^2*f*sin(2*c)*SinIntegral((2*d)/x)]
    @test_int [(e + f*x)^0*(a + b*sin(c + d/x))^2, x, 12, a^2*x - 2*a*b*d*cos(c)*CosIntegral(d/x) - b^2*d*CosIntegral((2*d)/x)*sin(2*c) + 2*a*b*x*sin(c + d/x) + b^2*x*sin(c + d/x)^2 + 2*a*b*d*sin(c)*SinIntegral(d/x) - b^2*d*cos(2*c)*SinIntegral((2*d)/x)]
    @test_int [(a + b*sin(c + d/x))^2/(e + f*x)^1, x, 22, -((b^2*cos(2*c - (2*d*f)/e)*CosIntegral(2*d*(f/e + 1/x)))/(2*f)) + (b^2*cos(2*c)*CosIntegral((2*d)/x))/(2*f) + (a^2*log(f + e/x))/f + (b^2*log(f + e/x))/(2*f) + (a^2*log(x))/f + (b^2*log(x))/(2*f) - (2*a*b*CosIntegral(d/x)*sin(c))/f + (2*a*b*CosIntegral(d*(f/e + 1/x))*sin(c - (d*f)/e))/f + (2*a*b*cos(c - (d*f)/e)*SinIntegral(d*(f/e + 1/x)))/f + (b^2*sin(2*c - (2*d*f)/e)*SinIntegral(2*d*(f/e + 1/x)))/(2*f) - (2*a*b*cos(c)*SinIntegral(d/x))/f - (b^2*sin(2*c)*SinIntegral((2*d)/x))/(2*f)]
    @test_int [(a + b*sin(c + d/x))^2/(e + f*x)^2, x, 12, a^2/(e*(f + e/x)) - (2*a*b*d*cos(c - (d*f)/e)*CosIntegral(d*(f/e + 1/x)))/e^2 - (b^2*d*CosIntegral(2*d*(f/e + 1/x))*sin(2*c - (2*d*f)/e))/e^2 + (2*a*b*sin(c + d/x))/(e*(f + e/x)) + (b^2*sin(c + d/x)^2)/(e*(f + e/x)) + (2*a*b*d*sin(c - (d*f)/e)*SinIntegral(d*(f/e + 1/x)))/e^2 - (b^2*d*cos(2*c - (2*d*f)/e)*SinIntegral(2*d*(f/e + 1/x)))/e^2]
    @test_int [(a + b*sin(c + d/x))^2/(e + f*x)^3, x, 27, -((a^2*f)/(2*e^2*(f + e/x)^2)) + a^2/(e^2*(f + e/x)) - (a*b*d*f*cos(c + d/x))/(e^3*(f + e/x)) - (2*a*b*d*cos(c - (d*f)/e)*CosIntegral(d*(f/e + 1/x)))/e^3 + (b^2*d^2*f*cos(2*c - (2*d*f)/e)*CosIntegral(2*d*(f/e + 1/x)))/e^4 - (b^2*d*CosIntegral(2*d*(f/e + 1/x))*sin(2*c - (2*d*f)/e))/e^3 - (a*b*d^2*f*CosIntegral(d*(f/e + 1/x))*sin(c - (d*f)/e))/e^4 - (a*b*f*sin(c + d/x))/(e^2*(f + e/x)^2) + (2*a*b*sin(c + d/x))/(e^2*(f + e/x)) - (b^2*d*f*cos(c + d/x)*sin(c + d/x))/(e^3*(f + e/x)) - (b^2*f*sin(c + d/x)^2)/(2*e^2*(f + e/x)^2) + (b^2*sin(c + d/x)^2)/(e^2*(f + e/x)) - (a*b*d^2*f*cos(c - (d*f)/e)*SinIntegral(d*(f/e + 1/x)))/e^4 + (2*a*b*d*sin(c - (d*f)/e)*SinIntegral(d*(f/e + 1/x)))/e^3 - (b^2*d*cos(2*c - (2*d*f)/e)*SinIntegral(2*d*(f/e + 1/x)))/e^3 - (b^2*d^2*f*sin(2*c - (2*d*f)/e)*SinIntegral(2*d*(f/e + 1/x)))/e^4]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [(e + f*x)^2/(a + b*sin(c + d/x)), x, 0, Unintegrable((e + f*x)^2/(a + b*sin(c + d/x)), x)]
    @test_int [(e + f*x)^1/(a + b*sin(c + d/x)), x, 0, Unintegrable((e + f*x)/(a + b*sin(c + d/x)), x)]
    @test_int [(e + f*x)^0/(a + b*sin(c + d/x)), x, 0, Unintegrable(1/(a + b*sin(c + d/x)), x)]
    @test_int [(e + f*x)^1/(a + b*sin(c + d/x)), x, 0, Unintegrable((e + f*x)/(a + b*sin(c + d/x)), x)]
    @test_int [(e + f*x)^2/(a + b*sin(c + d/x)), x, 0, Unintegrable((e + f*x)^2/(a + b*sin(c + d/x)), x)]


    @test_int [(e + f*x)^2/(a + b*sin(c + d/x))^2, x, 0, Unintegrable((e + f*x)^2/(a + b*sin(c + d/x))^2, x)]
    @test_int [(e + f*x)^1/(a + b*sin(c + d/x))^2, x, 0, Unintegrable((e + f*x)/(a + b*sin(c + d/x))^2, x)]
    @test_int [(e + f*x)^0/(a + b*sin(c + d/x))^2, x, 0, Unintegrable(1/(a + b*sin(c + d/x))^2, x)]
    @test_int [(e + f*x)^1/(a + b*sin(c + d/x))^2, x, 0, Unintegrable((e + f*x)/(a + b*sin(c + d/x))^2, x)]
    @test_int [(e + f*x)^2/(a + b*sin(c + d/x))^2, x, 0, Unintegrable((e + f*x)^2/(a + b*sin(c + d/x))^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*sin(c+d*x^n))^p*when*p*symbolic=#


    @test_int [(e + f*x)^m*(a + b*sin(c + d/x))^p, x, 0, Unintegrable((e + f*x)^m*(a + b*sin(c + d/x))^p, x)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sin(c+d*x^n)^p)^q=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(c*sin(a+b*x^n)^p)^(q/3)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(c*sin(a+b*x^n)^3)^(1/3)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^m*(c*sin(a + b*x)^3)^(1/3), x, 4, -(ℯ^(im*a)*x^m*csc(a + b*x)*Gamma(1 + m, (-im)*b*x)*(c*sin(a + b*x)^3)^(1/3))/(2*b*((-im)*b*x)^m) - (x^m*csc(a + b*x)*Gamma(1 + m, im*b*x)*(c*sin(a + b*x)^3)^(1/3))/(2*b*ℯ^(im*a)*(im*b*x)^m)]
    @test_int [x^3*(c*sin(a + b*x)^3)^(1/3), x, 5, (-6*(c*sin(a + b*x)^3)^(1/3))/b^4 + (3*x^2*(c*sin(a + b*x)^3)^(1/3))/b^2 + (6*x*cot(a + b*x)*(c*sin(a + b*x)^3)^(1/3))/b^3 - (x^3*cot(a + b*x)*(c*sin(a + b*x)^3)^(1/3))/b]
    @test_int [x^2*(c*sin(a + b*x)^3)^(1/3), x, 4, (2*x*(c*sin(a + b*x)^3)^(1/3))/b^2 + (2*cot(a + b*x)*(c*sin(a + b*x)^3)^(1/3))/b^3 - (x^2*cot(a + b*x)*(c*sin(a + b*x)^3)^(1/3))/b]
    @test_int [x*(c*sin(a + b*x)^3)^(1/3), x, 3, (c*sin(a + b*x)^3)^(1/3)/b^2 - (x*cot(a + b*x)*(c*sin(a + b*x)^3)^(1/3))/b]
    @test_int [(c*sin(a + b*x)^3)^(1/3), x, 2, -((cot(a + b*x)*(c*sin(a + b*x)^3)^(1/3))/b)]
    @test_int [(c*sin(a + b*x)^3)^(1/3)/x, x, 4, CosIntegral(b*x)*csc(a + b*x)*sin(a)*(c*sin(a + b*x)^3)^(1/3) + cos(a)*csc(a + b*x)*(c*sin(a + b*x)^3)^(1/3)*SinIntegral(b*x)]
    @test_int [(c*sin(a + b*x)^3)^(1/3)/x^2, x, 5, -((c*sin(a + b*x)^3)^(1/3)/x) + b*cos(a)*CosIntegral(b*x)*csc(a + b*x)*(c*sin(a + b*x)^3)^(1/3) - b*csc(a + b*x)*sin(a)*(c*sin(a + b*x)^3)^(1/3)*SinIntegral(b*x)]
    @test_int [(c*sin(a + b*x)^3)^(1/3)/x^3, x, 6, -(c*sin(a + b*x)^3)^(1/3)/(2*x^2) - (b*cot(a + b*x)*(c*sin(a + b*x)^3)^(1/3))/(2*x) - (b^2*CosIntegral(b*x)*csc(a + b*x)*sin(a)*(c*sin(a + b*x)^3)^(1/3))/2 - (b^2*cos(a)*csc(a + b*x)*(c*sin(a + b*x)^3)^(1/3)*SinIntegral(b*x))/2]


    @test_int [x^m*(c*sin(a + b*x^2)^3)^(1/3), x, 4, (im/4)*ℯ^(im*a)*x^(1 + m)*((-im)*b*x^2)^((-1 - m)/2)*csc(a + b*x^2)*Gamma((1 + m)/2, (-im)*b*x^2)*(c*sin(a + b*x^2)^3)^(1/3) - ((im/4)*x^(1 + m)*(im*b*x^2)^((-1 - m)/2)*csc(a + b*x^2)*Gamma((1 + m)/2, im*b*x^2)*(c*sin(a + b*x^2)^3)^(1/3))/ℯ^(im*a)]
    @test_int [x^3*(c*sin(a + b*x^2)^3)^(1/3), x, 4, (c*sin(a + b*x^2)^3)^(1/3)/(2*b^2) - (x^2*cot(a + b*x^2)*(c*sin(a + b*x^2)^3)^(1/3))/(2*b)]
    @test_int [x^2*(c*sin(a + b*x^2)^3)^(1/3), x, 5, -(x*cot(a + b*x^2)*(c*sin(a + b*x^2)^3)^(1/3))/(2*b) + (sqrt(pi/2)*cos(a)*csc(a + b*x^2)*FresnelC(sqrt(b)*sqrt(2/pi)*x)*(c*sin(a + b*x^2)^3)^(1/3))/(2*b^(3/2)) - (sqrt(pi/2)*csc(a + b*x^2)*FresnelS(sqrt(b)*sqrt(2/pi)*x)*sin(a)*(c*sin(a + b*x^2)^3)^(1/3))/(2*b^(3/2))]
    @test_int [x*(c*sin(a + b*x^2)^3)^(1/3), x, 3, -(cot(a + b*x^2)*(c*sin(a + b*x^2)^3)^(1/3))/(2*b)]
    @test_int [(c*sin(a + b*x^2)^3)^(1/3), x, 4, (sqrt(pi/2)*cos(a)*csc(a + b*x^2)*FresnelS(sqrt(b)*sqrt(2/pi)*x)*(c*sin(a + b*x^2)^3)^(1/3))/sqrt(b) + (sqrt(pi/2)*csc(a + b*x^2)*FresnelC(sqrt(b)*sqrt(2/pi)*x)*sin(a)*(c*sin(a + b*x^2)^3)^(1/3))/sqrt(b)]
    @test_int [(c*sin(a + b*x^2)^3)^(1/3)/x, x, 4, (CosIntegral(b*x^2)*csc(a + b*x^2)*sin(a)*(c*sin(a + b*x^2)^3)^(1/3))/2 + (cos(a)*csc(a + b*x^2)*(c*sin(a + b*x^2)^3)^(1/3)*SinIntegral(b*x^2))/2]
    @test_int [(c*sin(a + b*x^2)^3)^(1/3)/x^2, x, 5, -((c*sin(a + b*x^2)^3)^(1/3)/x) + sqrt(b)*sqrt(2*pi)*cos(a)*csc(a + b*x^2)*FresnelC(sqrt(b)*sqrt(2/pi)*x)*(c*sin(a + b*x^2)^3)^(1/3) - sqrt(b)*sqrt(2*pi)*csc(a + b*x^2)*FresnelS(sqrt(b)*sqrt(2/pi)*x)*sin(a)*(c*sin(a + b*x^2)^3)^(1/3)]
    @test_int [(c*sin(a + b*x^2)^3)^(1/3)/x^3, x, 6, -(c*sin(a + b*x^2)^3)^(1/3)/(2*x^2) + (b*cos(a)*CosIntegral(b*x^2)*csc(a + b*x^2)*(c*sin(a + b*x^2)^3)^(1/3))/2 - (b*csc(a + b*x^2)*sin(a)*(c*sin(a + b*x^2)^3)^(1/3)*SinIntegral(b*x^2))/2]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [x^m*(c*sin(a + b*x^n)^3)^(1/3), x, 4, ((im/2)*ℯ^(im*a)*x^(1 + m)*csc(a + b*x^n)*Gamma((1 + m)/n, (-im)*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(n*((-im)*b*x^n)^((1 + m)/n)) - ((im/2)*x^(1 + m)*csc(a + b*x^n)*Gamma((1 + m)/n, im*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(ℯ^(im*a)*n*(im*b*x^n)^((1 + m)/n))]
    @test_int [x^3*(c*sin(a + b*x^n)^3)^(1/3), x, 4, ((im/2)*ℯ^(im*a)*x^4*csc(a + b*x^n)*Gamma(4/n, (-im)*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(n*((-im)*b*x^n)^(4/n)) - ((im/2)*x^4*csc(a + b*x^n)*Gamma(4/n, im*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(ℯ^(im*a)*n*(im*b*x^n)^(4/n))]
    @test_int [x^2*(c*sin(a + b*x^n)^3)^(1/3), x, 4, ((im/2)*ℯ^(im*a)*x^3*csc(a + b*x^n)*Gamma(3/n, (-im)*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(n*((-im)*b*x^n)^(3/n)) - ((im/2)*x^3*csc(a + b*x^n)*Gamma(3/n, im*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(ℯ^(im*a)*n*(im*b*x^n)^(3/n))]
    @test_int [x*(c*sin(a + b*x^n)^3)^(1/3), x, 4, ((im/2)*ℯ^(im*a)*x^2*csc(a + b*x^n)*Gamma(2/n, (-im)*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(n*((-im)*b*x^n)^(2/n)) - ((im/2)*x^2*csc(a + b*x^n)*Gamma(2/n, im*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(ℯ^(im*a)*n*(im*b*x^n)^(2/n))]
    @test_int [(c*sin(a + b*x^n)^3)^(1/3), x, 4, ((im/2)*ℯ^(im*a)*x*csc(a + b*x^n)*Gamma(n^(-1), (-im)*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(n*((-im)*b*x^n)^n^(-1)) - ((im/2)*x*csc(a + b*x^n)*Gamma(n^(-1), im*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(ℯ^(im*a)*n*(im*b*x^n)^n^(-1))]
    @test_int [(c*sin(a + b*x^n)^3)^(1/3)/x, x, 4, (CosIntegral(b*x^n)*csc(a + b*x^n)*sin(a)*(c*sin(a + b*x^n)^3)^(1/3))/n + (cos(a)*csc(a + b*x^n)*(c*sin(a + b*x^n)^3)^(1/3)*SinIntegral(b*x^n))/n]
    @test_int [(c*sin(a + b*x^n)^3)^(1/3)/x^2, x, 4, ((im/2)*ℯ^(im*a)*((-im)*b*x^n)^n^(-1)*csc(a + b*x^n)*Gamma(-n^(-1), (-im)*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(n*x) - ((im/2)*(im*b*x^n)^n^(-1)*csc(a + b*x^n)*Gamma(-n^(-1), im*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(ℯ^(im*a)*n*x)]
    @test_int [(c*sin(a + b*x^n)^3)^(1/3)/x^3, x, 4, ((im/2)*ℯ^(im*a)*((-im)*b*x^n)^(2/n)*csc(a + b*x^n)*Gamma(-2/n, (-im)*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(n*x^2) - ((im/2)*(im*b*x^n)^(2/n)*csc(a + b*x^n)*Gamma(-2/n, im*b*x^n)*(c*sin(a + b*x^n)^3)^(1/3))/(ℯ^(im*a)*n*x^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(c*sin(a+b*x^n)^3)^(2/3)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^m*(c*sin(a + b*x)^3)^(2/3), x, 6, (x^(1 + m)*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3))/(2*(1 + m)) + (im*2^(-3 - m)*ℯ^((2*im)*a)*x^m*csc(a + b*x)^2*Gamma(1 + m, (-2*im)*b*x)*(c*sin(a + b*x)^3)^(2/3))/(b*((-im)*b*x)^m) - (im*2^(-3 - m)*x^m*csc(a + b*x)^2*Gamma(1 + m, (2*im)*b*x)*(c*sin(a + b*x)^3)^(2/3))/(b*ℯ^((2*im)*a)*(im*b*x)^m)]
    @test_int [x^3*(c*sin(a + b*x)^3)^(2/3), x, 5, (-3*(c*sin(a + b*x)^3)^(2/3))/(8*b^4) + (3*x^2*(c*sin(a + b*x)^3)^(2/3))/(4*b^2) + (3*x*cot(a + b*x)*(c*sin(a + b*x)^3)^(2/3))/(4*b^3) - (x^3*cot(a + b*x)*(c*sin(a + b*x)^3)^(2/3))/(2*b) - (3*x^2*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3))/(8*b^2) + (x^4*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3))/8]
    @test_int [x^2*(c*sin(a + b*x)^3)^(2/3), x, 5, (x*(c*sin(a + b*x)^3)^(2/3))/(2*b^2) + (cot(a + b*x)*(c*sin(a + b*x)^3)^(2/3))/(4*b^3) - (x^2*cot(a + b*x)*(c*sin(a + b*x)^3)^(2/3))/(2*b) - (x*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3))/(4*b^2) + (x^3*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3))/6]
    @test_int [x*(c*sin(a + b*x)^3)^(2/3), x, 3, (c*sin(a + b*x)^3)^(2/3)/(4*b^2) - (x*cot(a + b*x)*(c*sin(a + b*x)^3)^(2/3))/(2*b) + (x^2*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3))/4]
    @test_int [(c*sin(a + b*x)^3)^(2/3), x, 3, -(cot(a + b*x)*(c*sin(a + b*x)^3)^(2/3))/(2*b) + (x*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3))/2]
    @test_int [(c*sin(a + b*x)^3)^(2/3)/x, x, 6, -(cos(2*a)*CosIntegral(2*b*x)*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3))/2 + (csc(a + b*x)^2*log(x)*(c*sin(a + b*x)^3)^(2/3))/2 + (csc(a + b*x)^2*sin(2*a)*(c*sin(a + b*x)^3)^(2/3)*SinIntegral(2*b*x))/2]
    @test_int [(c*sin(a + b*x)^3)^(2/3)/x^2, x, 6, -((c*sin(a + b*x)^3)^(2/3)/x) + b*CosIntegral(2*b*x)*csc(a + b*x)^2*sin(2*a)*(c*sin(a + b*x)^3)^(2/3) + b*cos(2*a)*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3)*SinIntegral(2*b*x)]
    @test_int [(c*sin(a + b*x)^3)^(2/3)/x^3, x, 8, -((c*sin(a + b*x)^3)^(2/3)/(2*x^2)) - (b*cot(a + b*x)*(c*sin(a + b*x)^3)^(2/3))/x + b^2*cos(2*a)*CosIntegral(2*b*x)*csc(a + b*x)^2*(c*sin(a + b*x)^3)^(2/3) - b^2*csc(a + b*x)^2*sin(2*a)*(c*sin(a + b*x)^3)^(2/3)*SinIntegral(2*b*x)]


    @test_int [x^m*(c*sin(a + b*x^2)^3)^(2/3), x, 6, (x^(1 + m)*csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3))/(2*(1 + m)) + 2^(-7/2 - m/2)*ℯ^((2*im)*a)*x^(1 + m)*((-im)*b*x^2)^((-1 - m)/2)*csc(a + b*x^2)^2*Gamma((1 + m)/2, (-2*im)*b*x^2)*(c*sin(a + b*x^2)^3)^(2/3) + (2^(-7/2 - m/2)*x^(1 + m)*(im*b*x^2)^((-1 - m)/2)*csc(a + b*x^2)^2*Gamma((1 + m)/2, (2*im)*b*x^2)*(c*sin(a + b*x^2)^3)^(2/3))/ℯ^((2*im)*a)]
    @test_int [x^3*(c*sin(a + b*x^2)^3)^(2/3), x, 4, (c*sin(a + b*x^2)^3)^(2/3)/(8*b^2) - (x^2*cot(a + b*x^2)*(c*sin(a + b*x^2)^3)^(2/3))/(4*b) + (x^4*csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3))/8]
    @test_int [x^2*(c*sin(a + b*x^2)^3)^(2/3), x, 7, (x^3*csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3))/6 + (sqrt(pi)*cos(2*a)*csc(a + b*x^2)^2*FresnelS((2*sqrt(b)*x)/sqrt(pi))*(c*sin(a + b*x^2)^3)^(2/3))/(16*b^(3/2)) + (sqrt(pi)*csc(a + b*x^2)^2*FresnelC((2*sqrt(b)*x)/sqrt(pi))*sin(2*a)*(c*sin(a + b*x^2)^3)^(2/3))/(16*b^(3/2)) - (x*csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3)*sin(2*a + 2*b*x^2))/(8*b)]
    @test_int [x*(c*sin(a + b*x^2)^3)^(2/3), x, 4, -(cot(a + b*x^2)*(c*sin(a + b*x^2)^3)^(2/3))/(4*b) + (x^2*csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3))/4]
    @test_int [(c*sin(a + b*x^2)^3)^(2/3), x, 6, (x*csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3))/2 - (sqrt(pi)*cos(2*a)*csc(a + b*x^2)^2*FresnelC((2*sqrt(b)*x)/sqrt(pi))*(c*sin(a + b*x^2)^3)^(2/3))/(4*sqrt(b)) + (sqrt(pi)*csc(a + b*x^2)^2*FresnelS((2*sqrt(b)*x)/sqrt(pi))*sin(2*a)*(c*sin(a + b*x^2)^3)^(2/3))/(4*sqrt(b))]
    @test_int [(c*sin(a + b*x^2)^3)^(2/3)/x, x, 6, -(cos(2*a)*CosIntegral(2*b*x^2)*csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3))/4 + (csc(a + b*x^2)^2*log(x)*(c*sin(a + b*x^2)^3)^(2/3))/2 + (csc(a + b*x^2)^2*sin(2*a)*(c*sin(a + b*x^2)^3)^(2/3)*SinIntegral(2*b*x^2))/4]
    @test_int [(c*sin(a + b*x^2)^3)^(2/3)/x^2, x, 7, -((c*sin(a + b*x^2)^3)^(2/3)/x) + sqrt(b)*sqrt(pi)*cos(2*a)*csc(a + b*x^2)^2*FresnelS((2*sqrt(b)*x)/sqrt(pi))*(c*sin(a + b*x^2)^3)^(2/3) + sqrt(b)*sqrt(pi)*csc(a + b*x^2)^2*FresnelC((2*sqrt(b)*x)/sqrt(pi))*sin(2*a)*(c*sin(a + b*x^2)^3)^(2/3)]
    @test_int [(c*sin(a + b*x^2)^3)^(2/3)/x^3, x, 8, -((csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3))/(4*x^2)) + (cos(2*(a + b*x^2))*csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3))/(4*x^2) + (1/2)*b*CosIntegral(2*b*x^2)*csc(a + b*x^2)^2*sin(2*a)*(c*sin(a + b*x^2)^3)^(2/3) + (1/2)*b*cos(2*a)*csc(a + b*x^2)^2*(c*sin(a + b*x^2)^3)^(2/3)*SinIntegral(2*b*x^2)]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [x^m*(c*sin(a + b*x^n)^3)^(2/3), x, 6, (x^(1 + m)*csc(a + b*x^n)^2*(c*sin(a + b*x^n)^3)^(2/3))/(2*(1 + m)) + (ℯ^((2*im)*a)*x^(1 + m)*csc(a + b*x^n)^2*Gamma((1 + m)/n, (-2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(2^((1 + m + 2*n)/n)*n*((-im)*b*x^n)^((1 + m)/n)) + (x^(1 + m)*csc(a + b*x^n)^2*Gamma((1 + m)/n, (2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(2^((1 + m + 2*n)/n)*ℯ^((2*im)*a)*n*(im*b*x^n)^((1 + m)/n))]
    @test_int [x^3*(c*sin(a + b*x^n)^3)^(2/3), x, 6, (x^4*csc(a + b*x^n)^2*(c*sin(a + b*x^n)^3)^(2/3))/8 + (4^(-1 - 2/n)*ℯ^((2*im)*a)*x^4*csc(a + b*x^n)^2*Gamma(4/n, (-2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(n*((-im)*b*x^n)^(4/n)) + (4^(-1 - 2/n)*x^4*csc(a + b*x^n)^2*Gamma(4/n, (2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(ℯ^((2*im)*a)*n*(im*b*x^n)^(4/n))]
    @test_int [x^2*(c*sin(a + b*x^n)^3)^(2/3), x, 6, (x^3*csc(a + b*x^n)^2*(c*sin(a + b*x^n)^3)^(2/3))/6 + (2^(-2 - 3/n)*ℯ^((2*im)*a)*x^3*csc(a + b*x^n)^2*Gamma(3/n, (-2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(n*((-im)*b*x^n)^(3/n)) + (2^(-2 - 3/n)*x^3*csc(a + b*x^n)^2*Gamma(3/n, (2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(ℯ^((2*im)*a)*n*(im*b*x^n)^(3/n))]
    @test_int [x*(c*sin(a + b*x^n)^3)^(2/3), x, 6, (x^2*csc(a + b*x^n)^2*(c*sin(a + b*x^n)^3)^(2/3))/4 + (4^(-1 - n^(-1))*ℯ^((2*im)*a)*x^2*csc(a + b*x^n)^2*Gamma(2/n, (-2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(n*((-im)*b*x^n)^(2/n)) + (4^(-1 - n^(-1))*x^2*csc(a + b*x^n)^2*Gamma(2/n, (2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(ℯ^((2*im)*a)*n*(im*b*x^n)^(2/n))]
    @test_int [(c*sin(a + b*x^n)^3)^(2/3), x, 6, (x*csc(a + b*x^n)^2*(c*sin(a + b*x^n)^3)^(2/3))/2 + (2^(-2 - n^(-1))*ℯ^((2*im)*a)*x*csc(a + b*x^n)^2*Gamma(n^(-1), (-2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(n*((-im)*b*x^n)^n^(-1)) + (2^(-2 - n^(-1))*x*csc(a + b*x^n)^2*Gamma(n^(-1), (2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(ℯ^((2*im)*a)*n*(im*b*x^n)^n^(-1))]
    @test_int [(c*sin(a + b*x^n)^3)^(2/3)/x, x, 6, -(cos(2*a)*CosIntegral(2*b*x^n)*csc(a + b*x^n)^2*(c*sin(a + b*x^n)^3)^(2/3))/(2*n) + (csc(a + b*x^n)^2*log(x)*(c*sin(a + b*x^n)^3)^(2/3))/2 + (csc(a + b*x^n)^2*sin(2*a)*(c*sin(a + b*x^n)^3)^(2/3)*SinIntegral(2*b*x^n))/(2*n)]
    @test_int [(c*sin(a + b*x^n)^3)^(2/3)/x^2, x, 6, -(csc(a + b*x^n)^2*(c*sin(a + b*x^n)^3)^(2/3))/(2*x) + (2^(-2 + n^(-1))*ℯ^((2*im)*a)*((-im)*b*x^n)^n^(-1)*csc(a + b*x^n)^2*Gamma(-n^(-1), (-2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(n*x) + (2^(-2 + n^(-1))*(im*b*x^n)^n^(-1)*csc(a + b*x^n)^2*Gamma(-n^(-1), (2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(ℯ^((2*im)*a)*n*x)]
    @test_int [(c*sin(a + b*x^n)^3)^(2/3)/x^3, x, 6, -(csc(a + b*x^n)^2*(c*sin(a + b*x^n)^3)^(2/3))/(4*x^2) + (4^(-1 + n^(-1))*ℯ^((2*im)*a)*((-im)*b*x^n)^(2/n)*csc(a + b*x^n)^2*Gamma(-2/n, (-2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(n*x^2) + (4^(-1 + n^(-1))*(im*b*x^n)^(2/n)*csc(a + b*x^n)^2*Gamma(-2/n, (2*im)*b*x^n)*(c*sin(a + b*x^n)^3)^(2/3))/(ℯ^((2*im)*a)*n*x^2)]
    end
