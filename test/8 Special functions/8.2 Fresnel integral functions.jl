@testset "8.2 Fresnel integral functions" begin
    @variables a, b, c, d, e, m, n, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integration*Problems*Involving*The*Fresnel*S*Integral*Function=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*FresnelS(a+b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*FresnelS(b*x)=#


    @test_int [x^7*FresnelS(b*x), x, 6, -((35*x^3*cos((1/2)*b^2*pi*x^2))/(8*b^5*pi^3)) + (x^7*cos((1/2)*b^2*pi*x^2))/(8*b*pi) - (105*FresnelS(b*x))/(8*b^8*pi^4) + (1/8)*x^8*FresnelS(b*x) + (105*x*sin((1/2)*b^2*pi*x^2))/(8*b^7*pi^4) - (7*x^5*sin((1/2)*b^2*pi*x^2))/(8*b^3*pi^2)]
    @test_int [x^6*FresnelS(b*x), x, 6, -((24*x^2*cos((1/2)*b^2*pi*x^2))/(7*b^5*pi^3)) + (x^6*cos((1/2)*b^2*pi*x^2))/(7*b*pi) + (1/7)*x^7*FresnelS(b*x) + (48*sin((1/2)*b^2*pi*x^2))/(7*b^7*pi^4) - (6*x^4*sin((1/2)*b^2*pi*x^2))/(7*b^3*pi^2)]
    @test_int [x^5*FresnelS(b*x), x, 5, -((5*x*cos((1/2)*b^2*pi*x^2))/(2*b^5*pi^3)) + (x^5*cos((1/2)*b^2*pi*x^2))/(6*b*pi) + (5*FresnelC(b*x))/(2*b^6*pi^3) + (1/6)*x^6*FresnelS(b*x) - (5*x^3*sin((1/2)*b^2*pi*x^2))/(6*b^3*pi^2)]
    @test_int [x^4*FresnelS(b*x), x, 5, -((8*cos((1/2)*b^2*pi*x^2))/(5*b^5*pi^3)) + (x^4*cos((1/2)*b^2*pi*x^2))/(5*b*pi) + (1/5)*x^5*FresnelS(b*x) - (4*x^2*sin((1/2)*b^2*pi*x^2))/(5*b^3*pi^2)]
    @test_int [x^3*FresnelS(b*x), x, 4, (x^3*cos((1/2)*b^2*pi*x^2))/(4*b*pi) + (3*FresnelS(b*x))/(4*b^4*pi^2) + (1/4)*x^4*FresnelS(b*x) - (3*x*sin((1/2)*b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^2*FresnelS(b*x), x, 4, (x^2*cos((1/2)*b^2*pi*x^2))/(3*b*pi) + (1/3)*x^3*FresnelS(b*x) - (2*sin((1/2)*b^2*pi*x^2))/(3*b^3*pi^2)]
    @test_int [x^1*FresnelS(b*x), x, 3, (x*cos((1/2)*b^2*pi*x^2))/(2*b*pi) - FresnelC(b*x)/(2*b^2*pi) + (1/2)*x^2*FresnelS(b*x)]
    @test_int [x^0*FresnelS(b*x), x, 1, cos((1/2)*b^2*pi*x^2)/(b*pi) + x*FresnelS(b*x)]
    @test_int [FresnelS(b*x)/x^1, x, 3, (1/2)*im*b*x*HypergeometricPFQ([1/2, 1/2], [3/2, 3/2], (-(1/2))*im*b^2*pi*x^2) - (1/2)*im*b*x*HypergeometricPFQ([1/2, 1/2], [3/2, 3/2], (1/2)*im*b^2*pi*x^2)]
    @test_int [FresnelS(b*x)/x^2, x, 2, -(FresnelS(b*x)/x) + (1/2)*b*SinIntegral((1/2)*b^2*pi*x^2)]
    @test_int [FresnelS(b*x)/x^3, x, 3, (1/2)*b^2*pi*FresnelC(b*x) - FresnelS(b*x)/(2*x^2) - (b*sin((1/2)*b^2*pi*x^2))/(2*x)]
    @test_int [FresnelS(b*x)/x^4, x, 4, (1/12)*b^3*pi*CosIntegral((1/2)*b^2*pi*x^2) - FresnelS(b*x)/(3*x^3) - (b*sin((1/2)*b^2*pi*x^2))/(6*x^2)]
    @test_int [FresnelS(b*x)/x^5, x, 4, -((b^3*pi*cos((1/2)*b^2*pi*x^2))/(12*x)) - (1/12)*b^4*pi^2*FresnelS(b*x) - FresnelS(b*x)/(4*x^4) - (b*sin((1/2)*b^2*pi*x^2))/(12*x^3)]
    @test_int [FresnelS(b*x)/x^6, x, 5, -((b^3*pi*cos((1/2)*b^2*pi*x^2))/(40*x^2)) - FresnelS(b*x)/(5*x^5) - (b*sin((1/2)*b^2*pi*x^2))/(20*x^4) - (1/80)*b^5*pi^2*SinIntegral((1/2)*b^2*pi*x^2)]
    @test_int [FresnelS(b*x)/x^7, x, 5, -((b^3*pi*cos((1/2)*b^2*pi*x^2))/(90*x^3)) - (1/90)*b^6*pi^3*FresnelC(b*x) - FresnelS(b*x)/(6*x^6) - (b*sin((1/2)*b^2*pi*x^2))/(30*x^5) + (b^5*pi^2*sin((1/2)*b^2*pi*x^2))/(90*x)]
    @test_int [FresnelS(b*x)/x^8, x, 6, -((b^3*pi*cos((1/2)*b^2*pi*x^2))/(168*x^4)) - (1/672)*b^7*pi^3*CosIntegral((1/2)*b^2*pi*x^2) - FresnelS(b*x)/(7*x^7) - (b*sin((1/2)*b^2*pi*x^2))/(42*x^6) + (b^5*pi^2*sin((1/2)*b^2*pi*x^2))/(336*x^2)]
    @test_int [FresnelS(b*x)/x^9, x, 6, -((b^3*pi*cos((1/2)*b^2*pi*x^2))/(280*x^5)) + (b^7*pi^3*cos((1/2)*b^2*pi*x^2))/(840*x) + (1/840)*b^8*pi^4*FresnelS(b*x) - FresnelS(b*x)/(8*x^8) - (b*sin((1/2)*b^2*pi*x^2))/(56*x^7) + (b^5*pi^2*sin((1/2)*b^2*pi*x^2))/(840*x^3)]
    @test_int [FresnelS(b*x)/x^10, x, 7, -((b^3*pi*cos((1/2)*b^2*pi*x^2))/(432*x^6)) + (b^7*pi^3*cos((1/2)*b^2*pi*x^2))/(3456*x^2) - FresnelS(b*x)/(9*x^9) - (b*sin((1/2)*b^2*pi*x^2))/(72*x^8) + (b^5*pi^2*sin((1/2)*b^2*pi*x^2))/(1728*x^4) + (b^9*pi^4*SinIntegral((1/2)*b^2*pi*x^2))/6912]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*FresnelS(a+b*x)=#


    @test_int [(c + d*x)^3*FresnelS(a + b*x), x, 14, ((b*c - a*d)^3*cos((1/2)*pi*(a + b*x)^2))/(b^4*pi) + (3*d*(b*c - a*d)^2*(a + b*x)*cos((1/2)*pi*(a + b*x)^2))/(2*b^4*pi) + (d^2*(b*c - a*d)*(a + b*x)^2*cos((1/2)*pi*(a + b*x)^2))/(b^4*pi) + (d^3*(a + b*x)^3*cos((1/2)*pi*(a + b*x)^2))/(4*b^4*pi) - (3*d*(b*c - a*d)^2*FresnelC(a + b*x))/(2*b^4*pi) - ((b*c - a*d)^4*FresnelS(a + b*x))/(4*b^4*d) + (3*d^3*FresnelS(a + b*x))/(4*b^4*pi^2) + ((c + d*x)^4*FresnelS(a + b*x))/(4*d) - (2*d^2*(b*c - a*d)*sin((1/2)*pi*(a + b*x)^2))/(b^4*pi^2) - (3*d^3*(a + b*x)*sin((1/2)*pi*(a + b*x)^2))/(4*b^4*pi^2)]
    @test_int [(c + d*x)^2*FresnelS(a + b*x), x, 11, ((b*c - a*d)^2*cos((1/2)*pi*(a + b*x)^2))/(b^3*pi) + (d*(b*c - a*d)*(a + b*x)*cos((1/2)*pi*(a + b*x)^2))/(b^3*pi) + (d^2*(a + b*x)^2*cos((1/2)*pi*(a + b*x)^2))/(3*b^3*pi) - (d*(b*c - a*d)*FresnelC(a + b*x))/(b^3*pi) - ((b*c - a*d)^3*FresnelS(a + b*x))/(3*b^3*d) + ((c + d*x)^3*FresnelS(a + b*x))/(3*d) - (2*d^2*sin((1/2)*pi*(a + b*x)^2))/(3*b^3*pi^2)]
    @test_int [(c + d*x)^1*FresnelS(a + b*x), x, 8, ((b*c - a*d)*cos((1/2)*pi*(a + b*x)^2))/(b^2*pi) + (d*(a + b*x)*cos((1/2)*pi*(a + b*x)^2))/(2*b^2*pi) - (d*FresnelC(a + b*x))/(2*b^2*pi) - ((b*c - a*d)^2*FresnelS(a + b*x))/(2*b^2*d) + ((c + d*x)^2*FresnelS(a + b*x))/(2*d)]
    @test_int [(c + d*x)^0*FresnelS(a + b*x), x, 1, cos((1/2)*pi*(a + b*x)^2)/(b*pi) + ((a + b*x)*FresnelS(a + b*x))/b]
    @test_int [FresnelS(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(FresnelS(a + b*x)/(c + d*x), x)]
    @test_int [FresnelS(a + b*x)/(c + d*x)^2, x, 0, Unintegrable(FresnelS(a + b*x)/(c + d*x)^2, x)]


    @test_int [x^3*FresnelS(a + b*x), x, 14, -((a^3*cos((1/2)*pi*(a + b*x)^2))/(b^4*pi)) + (3*a^2*(a + b*x)*cos((1/2)*pi*(a + b*x)^2))/(2*b^4*pi) - (a*(a + b*x)^2*cos((1/2)*pi*(a + b*x)^2))/(b^4*pi) + ((a + b*x)^3*cos((1/2)*pi*(a + b*x)^2))/(4*b^4*pi) - (3*a^2*FresnelC(a + b*x))/(2*b^4*pi) - (a^4*FresnelS(a + b*x))/(4*b^4) + (3*FresnelS(a + b*x))/(4*b^4*pi^2) + (1/4)*x^4*FresnelS(a + b*x) + (2*a*sin((1/2)*pi*(a + b*x)^2))/(b^4*pi^2) - (3*(a + b*x)*sin((1/2)*pi*(a + b*x)^2))/(4*b^4*pi^2)]
    @test_int [x^2*FresnelS(a + b*x), x, 11, (a^2*cos((1/2)*pi*(a + b*x)^2))/(b^3*pi) - (a*(a + b*x)*cos((1/2)*pi*(a + b*x)^2))/(b^3*pi) + ((a + b*x)^2*cos((1/2)*pi*(a + b*x)^2))/(3*b^3*pi) + (a*FresnelC(a + b*x))/(b^3*pi) + (a^3*FresnelS(a + b*x))/(3*b^3) + (1/3)*x^3*FresnelS(a + b*x) - (2*sin((1/2)*pi*(a + b*x)^2))/(3*b^3*pi^2)]
    @test_int [x^1*FresnelS(a + b*x), x, 8, -((a*cos((1/2)*pi*(a + b*x)^2))/(b^2*pi)) + ((a + b*x)*cos((1/2)*pi*(a + b*x)^2))/(2*b^2*pi) - FresnelC(a + b*x)/(2*b^2*pi) - (a^2*FresnelS(a + b*x))/(2*b^2) + (1/2)*x^2*FresnelS(a + b*x)]
    @test_int [x^0*FresnelS(a + b*x), x, 1, cos((1/2)*pi*(a + b*x)^2)/(b*pi) + ((a + b*x)*FresnelS(a + b*x))/b]
    @test_int [FresnelS(a + b*x)/x^1, x, 0, Unintegrable(FresnelS(a + b*x)/x, x)]
    @test_int [FresnelS(a + b*x)/x^2, x, 0, Unintegrable(FresnelS(a + b*x)/x^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*FresnelS(a+b*x)^2=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*FresnelS(b*x)^2=#


    @test_int [x^7*FresnelS(b*x)^2, x, 23, -((105*x^2)/(16*b^6*pi^4)) + (7*x^6)/(48*b^2*pi^2) - (55*x^2*cos(b^2*pi*x^2))/(16*b^6*pi^4) + (x^6*cos(b^2*pi*x^2))/(16*b^2*pi^2) - (35*x^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(4*b^5*pi^3) + (x^7*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(4*b*pi) - (105*FresnelS(b*x)^2)/(8*b^8*pi^4) + (1/8)*x^8*FresnelS(b*x)^2 + (105*x*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(4*b^7*pi^4) - (7*x^5*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(4*b^3*pi^2) + (10*sin(b^2*pi*x^2))/(b^8*pi^5) - (5*x^4*sin(b^2*pi*x^2))/(8*b^4*pi^3)]
    @test_int [x^6*FresnelS(b*x)^2, x, 19, -((48*x)/(7*b^6*pi^4)) + (6*x^5)/(35*b^2*pi^2) - (21*x*cos(b^2*pi*x^2))/(8*b^6*pi^4) + (x^5*cos(b^2*pi*x^2))/(14*b^2*pi^2) + (531*FresnelC(sqrt(2)*b*x))/(56*sqrt(2)*b^7*pi^4) - (48*x^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(7*b^5*pi^3) + (2*x^6*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(7*b*pi) + (1/7)*x^7*FresnelS(b*x)^2 + (96*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(7*b^7*pi^4) - (12*x^4*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(7*b^3*pi^2) - (17*x^3*sin(b^2*pi*x^2))/(28*b^4*pi^3)]
    @test_int [x^5*FresnelS(b*x)^2, x, 16, (5*x^4)/(24*b^2*pi^2) - (11*cos(b^2*pi*x^2))/(6*b^6*pi^4) + (x^4*cos(b^2*pi*x^2))/(12*b^2*pi^2) - (5*x*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^5*pi^3) + (x^5*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(3*b*pi) + (5*FresnelC(b*x)*FresnelS(b*x))/(2*b^6*pi^3) + (1/6)*x^6*FresnelS(b*x)^2 - (5*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*b^4*pi^3) + (5*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*b^4*pi^3) - (5*x^3*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(3*b^3*pi^2) - (7*x^2*sin(b^2*pi*x^2))/(12*b^4*pi^3)]
    @test_int [x^4*FresnelS(b*x)^2, x, 12, (4*x^3)/(15*b^2*pi^2) + (x^3*cos(b^2*pi*x^2))/(10*b^2*pi^2) - (16*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(5*b^5*pi^3) + (2*x^4*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(5*b*pi) + (1/5)*x^5*FresnelS(b*x)^2 + (43*FresnelS(sqrt(2)*b*x))/(20*sqrt(2)*b^5*pi^3) - (8*x^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(5*b^3*pi^2) - (11*x*sin(b^2*pi*x^2))/(20*b^4*pi^3)]
    @test_int [x^3*FresnelS(b*x)^2, x, 10, (3*x^2)/(8*b^2*pi^2) + (x^2*cos(b^2*pi*x^2))/(8*b^2*pi^2) + (x^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(2*b*pi) + (3*FresnelS(b*x)^2)/(4*b^4*pi^2) + (1/4)*x^4*FresnelS(b*x)^2 - (3*x*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(2*b^3*pi^2) - sin(b^2*pi*x^2)/(2*b^4*pi^3)]
    @test_int [x^2*FresnelS(b*x)^2, x, 8, (2*x)/(3*b^2*pi^2) + (x*cos(b^2*pi*x^2))/(6*b^2*pi^2) - (5*FresnelC(sqrt(2)*b*x))/(6*sqrt(2)*b^3*pi^2) + (2*x^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(3*b*pi) + (1/3)*x^3*FresnelS(b*x)^2 - (4*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(3*b^3*pi^2)]
    @test_int [x^1*FresnelS(b*x)^2, x, 5, cos(b^2*pi*x^2)/(4*b^2*pi^2) + (x*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b*pi) - (FresnelC(b*x)*FresnelS(b*x))/(2*b^2*pi) + (1/2)*x^2*FresnelS(b*x)^2 + (im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*pi) - (im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*pi)]
    @test_int [x^0*FresnelS(b*x)^2, x, 4, (2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b*pi) + x*FresnelS(b*x)^2 - FresnelS(sqrt(2)*b*x)/(sqrt(2)*b*pi)]
    @test_int [FresnelS(b*x)^2/x^1, x, 0, Unintegrable(FresnelS(b*x)^2/x, x)]
    @test_int [FresnelS(b*x)^2/x^2, x, 1, -(FresnelS(b*x)^2/x) + 2*b*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x, x)]
    @test_int [FresnelS(b*x)^2/x^3, x, 1, -(FresnelS(b*x)^2/(2*x^2)) + b*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x^2, x)]
    @test_int [FresnelS(b*x)^2/x^4, x, 4, -(b^2/(6*x)) + (b^2*cos(b^2*pi*x^2))/(6*x) - FresnelS(b*x)^2/(3*x^3) + (b^3*pi*FresnelS(sqrt(2)*b*x))/(3*sqrt(2)) - (b*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(3*x^2) + (1/3)*b^3*pi*Unintegrable((cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/x, x)]
    @test_int [FresnelS(b*x)^2/x^5, x, 9, -(b^2/(24*x^2)) + (b^2*cos(b^2*pi*x^2))/(24*x^2) - (b^3*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(6*x) - (1/12)*b^4*pi^2*FresnelS(b*x)^2 - FresnelS(b*x)^2/(4*x^4) - (b*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(6*x^3) + (1/12)*b^4*pi*SinIntegral(b^2*pi*x^2)]
    @test_int [FresnelS(b*x)^2/x^6, x, 8, -(b^2/(60*x^3)) + (b^2*cos(b^2*pi*x^2))/(60*x^3) + (7*b^5*pi^2*FresnelC(sqrt(2)*b*x))/(60*sqrt(2)) - (b^3*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(20*x^2) - FresnelS(b*x)^2/(5*x^5) - (b*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(10*x^4) - (7*b^4*pi*sin(b^2*pi*x^2))/(120*x) - (1/20)*b^5*pi^2*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x, x)]
    @test_int [FresnelS(b*x)^2/x^7, x, 10, -(b^2/(120*x^4)) + (b^2*cos(b^2*pi*x^2))/(120*x^4) + (1/72)*b^6*pi^2*CosIntegral(b^2*pi*x^2) - (b^3*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(45*x^3) - FresnelS(b*x)^2/(6*x^6) - (b*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(15*x^5) - (b^4*pi*sin(b^2*pi*x^2))/(72*x^2) - (1/45)*b^5*pi^2*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x^2, x)]
    @test_int [FresnelS(b*x)^2/x^8, x, 13, -(b^2/(210*x^5)) + (b^6*pi^2)/(336*x) + (b^2*cos(b^2*pi*x^2))/(210*x^5) - (67*b^6*pi^2*cos(b^2*pi*x^2))/(5040*x) - (b^3*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(84*x^4) - FresnelS(b*x)^2/(7*x^7) - (b^7*pi^3*FresnelS(sqrt(2)*b*x))/(72*sqrt(2)) - (2/315)*sqrt(2)*b^7*pi^3*FresnelS(sqrt(2)*b*x) - (b*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(21*x^6) + (b^5*pi^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(168*x^2) - (13*b^4*pi*sin(b^2*pi*x^2))/(2520*x^3) - (1/168)*b^7*pi^3*Unintegrable((cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/x, x)]
    @test_int [FresnelS(b*x)^2/x^9, x, 20, -(b^2/(336*x^6)) + (b^6*pi^2)/(1680*x^2) + (b^2*cos(b^2*pi*x^2))/(336*x^6) - (b^6*pi^2*cos(b^2*pi*x^2))/(336*x^2) - (b^3*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(140*x^5) + (b^7*pi^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(420*x) + (1/840)*b^8*pi^4*FresnelS(b*x)^2 - FresnelS(b*x)^2/(8*x^8) - (b*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(28*x^7) + (b^5*pi^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(420*x^3) - (b^4*pi*sin(b^2*pi*x^2))/(420*x^4) - (1/280)*b^8*pi^3*SinIntegral(b^2*pi*x^2)]
    @test_int [FresnelS(b*x)^2/x^10, x, 19, -(b^2/(504*x^7)) + (b^6*pi^2)/(5184*x^3) + (b^2*cos(b^2*pi*x^2))/(504*x^7) - (187*b^6*pi^2*cos(b^2*pi*x^2))/(181440*x^3) - (853*b^9*pi^4*FresnelC(sqrt(2)*b*x))/(181440*sqrt(2)) - (b^3*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(216*x^6) + (b^7*pi^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(1728*x^2) - FresnelS(b*x)^2/(9*x^9) - (b*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(36*x^8) + (b^5*pi^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(864*x^4) - (19*b^4*pi*sin(b^2*pi*x^2))/(15120*x^5) + (853*b^8*pi^3*sin(b^2*pi*x^2))/(362880*x) + (b^9*pi^4*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x, x))/1728]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*FresnelS(a+b*x)^2=#


    @test_int [(c + d*x)^2*FresnelS(a + b*x)^2, x, 18, (2*d^2*x)/(3*b^2*pi^2) + (d*(b*c - a*d)*cos(pi*(a + b*x)^2))/(2*b^3*pi^2) + (d^2*(a + b*x)*cos(pi*(a + b*x)^2))/(6*b^3*pi^2) - (5*d^2*FresnelC(sqrt(2)*(a + b*x)))/(6*sqrt(2)*b^3*pi^2) + (2*(b*c - a*d)^2*cos((1/2)*pi*(a + b*x)^2)*FresnelS(a + b*x))/(b^3*pi) + (2*d*(b*c - a*d)*(a + b*x)*cos((1/2)*pi*(a + b*x)^2)*FresnelS(a + b*x))/(b^3*pi) + (2*d^2*(a + b*x)^2*cos((1/2)*pi*(a + b*x)^2)*FresnelS(a + b*x))/(3*b^3*pi) - (d*(b*c - a*d)*FresnelC(a + b*x)*FresnelS(a + b*x))/(b^3*pi) + ((b*c - a*d)^2*(a + b*x)*FresnelS(a + b*x)^2)/b^3 + (d*(b*c - a*d)*(a + b*x)^2*FresnelS(a + b*x)^2)/b^3 + (d^2*(a + b*x)^3*FresnelS(a + b*x)^2)/(3*b^3) - ((b*c - a*d)^2*FresnelS(sqrt(2)*(a + b*x)))/(sqrt(2)*b^3*pi) + (im*d*(b*c - a*d)*(a + b*x)^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*pi*(a + b*x)^2))/(4*b^3*pi) - (im*d*(b*c - a*d)*(a + b*x)^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*pi*(a + b*x)^2))/(4*b^3*pi) - (4*d^2*FresnelS(a + b*x)*sin((1/2)*pi*(a + b*x)^2))/(3*b^3*pi^2)]
    @test_int [(c + d*x)^1*FresnelS(a + b*x)^2, x, 10, (d*cos(pi*(a + b*x)^2))/(4*b^2*pi^2) + (2*(b*c - a*d)*cos((1/2)*pi*(a + b*x)^2)*FresnelS(a + b*x))/(b^2*pi) + (d*(a + b*x)*cos((1/2)*pi*(a + b*x)^2)*FresnelS(a + b*x))/(b^2*pi) - (d*FresnelC(a + b*x)*FresnelS(a + b*x))/(2*b^2*pi) + ((b*c - a*d)*(a + b*x)*FresnelS(a + b*x)^2)/b^2 + (d*(a + b*x)^2*FresnelS(a + b*x)^2)/(2*b^2) - ((b*c - a*d)*FresnelS(sqrt(2)*(a + b*x)))/(sqrt(2)*b^2*pi) + (im*d*(a + b*x)^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*pi*(a + b*x)^2))/(8*b^2*pi) - (im*d*(a + b*x)^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*pi*(a + b*x)^2))/(8*b^2*pi)]
    @test_int [(c + d*x)^0*FresnelS(a + b*x)^2, x, 4, (2*cos((1/2)*pi*(a + b*x)^2)*FresnelS(a + b*x))/(b*pi) + ((a + b*x)*FresnelS(a + b*x)^2)/b - FresnelS(sqrt(2)*(a + b*x))/(sqrt(2)*b*pi)]
    @test_int [FresnelS(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(FresnelS(a + b*x)^2/(c + d*x), x)]
    @test_int [FresnelS(a + b*x)^2/(c + d*x)^2, x, 0, Unintegrable(FresnelS(a + b*x)^2/(c + d*x)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*FresnelS(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*FresnelS(d*(a + b*log(c*x^n))), x, 10, ((1/12 - im/12)*ℯ^((-3*a)/(b*n) + ((9*im)/2)/(b^2*d^2*n^2*pi))*x^3*Erf(((1/2 + im/2)*(3/n + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(c*x^n)^(3/n) + ((1/12 - im/12)*ℯ^((-3*a)/(b*n) - ((9*im)/2)/(b^2*d^2*n^2*pi))*x^3*Erfi(((1/2 + im/2)*(3/n - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(c*x^n)^(3/n) + (x^3*FresnelS(d*(a + b*log(c*x^n))))/3]
    @test_int [x^1*FresnelS(d*(a + b*log(c*x^n))), x, 10, ((1/8 - im/8)*ℯ^((2*im - 2*a*b*d^2*n*pi)/(b^2*d^2*n^2*pi))*x^2*Erf(((1/2 + im/2)*(2/n + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(c*x^n)^(2/n) + ((1/8 - im/8)*x^2*Erfi(((1/2 + im/2)*(2/n - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(ℯ^((2*(im + a*b*d^2*n*pi))/(b^2*d^2*n^2*pi))*(c*x^n)^(2/n)) + (x^2*FresnelS(d*(a + b*log(c*x^n))))/2]
    @test_int [x^0*FresnelS(d*(a + b*log(c*x^n))), x, 10, ((1/4 - im/4)*x*Erf(((1/2 + im/2)*(n^(-1) + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(ℯ^((2*a*b*n - im/(d^2*pi))/(2*b^2*n^2))*(c*x^n)^n^(-1)) + ((1/4 - im/4)*x*Erfi(((1/2 + im/2)*(n^(-1) - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(ℯ^((2*a*b*n + im/(d^2*pi))/(2*b^2*n^2))*(c*x^n)^n^(-1)) + x*FresnelS(d*(a + b*log(c*x^n)))]
    @test_int [FresnelS(d*(a + b*log(c*x^n)))/x^1, x, 3, cos((d^2*pi*(a + b*log(c*x^n))^2)/2)/(b*d*n*pi) + (FresnelS(d*(a + b*log(c*x^n)))*(a + b*log(c*x^n)))/(b*n)]
    @test_int [FresnelS(d*(a + b*log(c*x^n)))/x^2, x, 10, ((1/4 - im/4)*ℯ^((2*a*b*n + im/(d^2*pi))/(2*b^2*n^2))*(c*x^n)^n^(-1)*Erf(((1/2 + im/2)*(n^(-1) - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/x + ((1/4 - im/4)*ℯ^((2*a*b*n - im/(d^2*pi))/(2*b^2*n^2))*(c*x^n)^n^(-1)*Erfi(((1/2 + im/2)*(n^(-1) + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/x - FresnelS(d*(a + b*log(c*x^n)))/x]
    @test_int [FresnelS(d*(a + b*log(c*x^n)))/x^3, x, 10, ((1/8 - im/8)*ℯ^((2*im + 2*a*b*d^2*n*pi)/(b^2*d^2*n^2*pi))*(c*x^n)^(2/n)*Erf(((1/2 + im/2)*(2/n - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/x^2 + ((1/8 - im/8)*(c*x^n)^(2/n)*Erfi(((1/2 + im/2)*(2/n + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(ℯ^((2*(im - a*b*d^2*n*pi))/(b^2*d^2*n^2*pi))*x^2) - FresnelS(d*(a + b*log(c*x^n)))/(2*x^2)]


    @test_int [(e*x)^m*FresnelS(d*(a + b*log(c*x^n))), x, 10, ((1/4 - im/4)*ℯ^(((im/2)*(1 + m)*(1 + m + (2*im)*a*b*d^2*n*pi))/(b^2*d^2*n^2*pi))*x*(e*x)^m*Erf(((1/2 + im/2)*(1 + m + im*a*b*d^2*n*pi + im*b^2*d^2*n*pi*log(c*x^n)))/(b*d*n*sqrt(pi))))/((1 + m)*(c*x^n)^((1 + m)/n)) + ((1/4 - im/4)*x*(e*x)^m*Erfi(((1/2 + im/2)*(1 + m - im*a*b*d^2*n*pi - im*b^2*d^2*n*pi*log(c*x^n)))/(b*d*n*sqrt(pi))))/(ℯ^(((im/2)*(1 + m)*(1 + m - (2*im)*a*b*d^2*n*pi))/(b^2*d^2*n^2*pi))*(1 + m)*(c*x^n)^((1 + m)/n)) + ((e*x)^(1 + m)*FresnelS(d*(a + b*log(c*x^n))))/(e*(1 + m))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c+d*x^2)*FresnelS(a+b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c+d*x^2)*FresnelS(b*x)*when*d^2=pi^2/4*b^4=#


    @test_int [ℯ^(c + pi/2*im*b^2*x^2)*FresnelS(b*x), x, 4, If($VersionNumber>=8, -((ℯ^c*Erfi((1/2 + im/2)*b*sqrt(pi)*x)^2)/(8*b)) + (1/4)*im*b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2), (ℯ^c*Erf((1/2 - im/2)*b*sqrt(pi)*x)^2)/(8*b) + (1/4)*im*b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))]
    @test_int [ℯ^(c - pi/2*im*b^2*x^2)*FresnelS(b*x), x, 4, (ℯ^c*Erf((1/2 + im/2)*b*sqrt(pi)*x)^2)/(8*b) - (1/4)*im*b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sin(c+d*x^2)*FresnelS(a+b*x)^n=#


    @test_int [sin(c + pi/2*b^2*x^2)*FresnelS(b*x), x, 4, (cos(c)*FresnelS(b*x)^2)/(2*b) + (FresnelC(b*x)*FresnelS(b*x)*sin(c))/(2*b) - (1/8)*im*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2)*sin(c) + (1/8)*im*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2)*sin(c)]
    @test_int [cos(c + pi/2*b^2*x^2)*FresnelS(b*x), x, 4, (cos(c)*FresnelC(b*x)*FresnelS(b*x))/(2*b) - (1/8)*im*b*x^2*cos(c)*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2) + (1/8)*im*b*x^2*cos(c)*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2) - (FresnelS(b*x)^2*sin(c))/(2*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(pi/2*b^2*x^2)*FresnelS(b*x)^n=#


    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)^2, x, 2, FresnelS(b*x)^3/(3*b)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)^1, x, 2, FresnelS(b*x)^2/(2*b)]
    @test_int [sin(pi/2*b^2*x^2)/FresnelS(b*x)^1, x, 2, log(FresnelS(b*x))/b]
    @test_int [sin(pi/2*b^2*x^2)/FresnelS(b*x)^2, x, 2, -(1/(b*FresnelS(b*x)))]
    @test_int [sin(pi/2*b^2*x^2)/FresnelS(b*x)^3, x, 2, -(1/(2*b*FresnelS(b*x)^2))]


    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)^n, x, 2, FresnelS(b*x)^(1 + n)/(b*(1 + n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sin(pi/2*b^2*x^2)*FresnelS(b*x)=#


    @test_int [x^8*sin(pi/2*b^2*x^2)*FresnelS(b*x), x, 22, (105*x^2)/(4*b^7*pi^4) - (7*x^6)/(12*b^3*pi^2) + (55*x^2*cos(b^2*pi*x^2))/(4*b^7*pi^4) - (x^6*cos(b^2*pi*x^2))/(4*b^3*pi^2) + (35*x^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^6*pi^3) - (x^7*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^2*pi) + (105*FresnelS(b*x)^2)/(2*b^9*pi^4) - (105*x*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^8*pi^4) + (7*x^5*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^4*pi^2) - (40*sin(b^2*pi*x^2))/(b^9*pi^5) + (5*x^4*sin(b^2*pi*x^2))/(2*b^5*pi^3)]
    @test_int [x^7*sin(pi/2*b^2*x^2)*FresnelS(b*x), x, 18, (24*x)/(b^7*pi^4) - (3*x^5)/(5*b^3*pi^2) + (147*x*cos(b^2*pi*x^2))/(16*b^7*pi^4) - (x^5*cos(b^2*pi*x^2))/(4*b^3*pi^2) - (531*FresnelC(sqrt(2)*b*x))/(16*sqrt(2)*b^8*pi^4) + (24*x^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^6*pi^3) - (x^6*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^2*pi) - (48*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^8*pi^4) + (6*x^4*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^4*pi^2) + (17*x^3*sin(b^2*pi*x^2))/(8*b^5*pi^3)]
    @test_int [x^6*sin(pi/2*b^2*x^2)*FresnelS(b*x), x, 15, -((5*x^4)/(8*b^3*pi^2)) + (11*cos(b^2*pi*x^2))/(2*b^7*pi^4) - (x^4*cos(b^2*pi*x^2))/(4*b^3*pi^2) + (15*x*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^6*pi^3) - (x^5*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^2*pi) - (15*FresnelC(b*x)*FresnelS(b*x))/(2*b^7*pi^3) + (15*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*b^5*pi^3) - (15*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*b^5*pi^3) + (5*x^3*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^4*pi^2) + (7*x^2*sin(b^2*pi*x^2))/(4*b^5*pi^3)]
    @test_int [x^5*sin(pi/2*b^2*x^2)*FresnelS(b*x), x, 11, -((2*x^3)/(3*b^3*pi^2)) - (x^3*cos(b^2*pi*x^2))/(4*b^3*pi^2) + (8*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^6*pi^3) - (x^4*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^2*pi) - (43*FresnelS(sqrt(2)*b*x))/(8*sqrt(2)*b^6*pi^3) + (4*x^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^4*pi^2) + (11*x*sin(b^2*pi*x^2))/(8*b^5*pi^3)]
    @test_int [x^4*sin(pi/2*b^2*x^2)*FresnelS(b*x), x, 9, -((3*x^2)/(4*b^3*pi^2)) - (x^2*cos(b^2*pi*x^2))/(4*b^3*pi^2) - (x^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^2*pi) - (3*FresnelS(b*x)^2)/(2*b^5*pi^2) + (3*x*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^4*pi^2) + sin(b^2*pi*x^2)/(b^5*pi^3)]
    @test_int [x^3*sin(pi/2*b^2*x^2)*FresnelS(b*x), x, 7, -(x/(b^3*pi^2)) - (x*cos(b^2*pi*x^2))/(4*b^3*pi^2) + (5*FresnelC(sqrt(2)*b*x))/(4*sqrt(2)*b^4*pi^2) - (x^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^2*pi) + (2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^4*pi^2)]
    @test_int [x^2*sin(pi/2*b^2*x^2)*FresnelS(b*x), x, 4, -(cos(b^2*pi*x^2)/(4*b^3*pi^2)) - (x*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^2*pi) + (FresnelC(b*x)*FresnelS(b*x))/(2*b^3*pi) - (im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*b*pi) + (im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*b*pi)]
    @test_int [x^1*sin(pi/2*b^2*x^2)*FresnelS(b*x), x, 2, -((cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^2*pi)) + FresnelS(sqrt(2)*b*x)/(2*sqrt(2)*b^2*pi)]
    @test_int [x^0*sin(pi/2*b^2*x^2)*FresnelS(b*x), x, 2, FresnelS(b*x)^2/(2*b)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^1, x, 0, Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x, x)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^2, x, 0, Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x^2, x)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^3, x, 3, -(b/(4*x)) + (b*cos(b^2*pi*x^2))/(4*x) + (b^2*pi*FresnelS(sqrt(2)*b*x))/(2*sqrt(2)) - (FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(2*x^2) + (1/2)*b^2*pi*Unintegrable((cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/x, x)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^4, x, 8, -(b/(12*x^2)) + (b*cos(b^2*pi*x^2))/(12*x^2) - (b^2*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(3*x) - (1/6)*b^3*pi^2*FresnelS(b*x)^2 - (FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(3*x^3) + (1/6)*b^3*pi*SinIntegral(b^2*pi*x^2)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^5, x, 7, -(b/(24*x^3)) + (b*cos(b^2*pi*x^2))/(24*x^3) + (7*b^4*pi^2*FresnelC(sqrt(2)*b*x))/(24*sqrt(2)) - (b^2*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(8*x^2) - (FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(4*x^4) - (7*b^3*pi*sin(b^2*pi*x^2))/(48*x) - (1/8)*b^4*pi^2*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x, x)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^6, x, 9, -(b/(40*x^4)) + (b*cos(b^2*pi*x^2))/(40*x^4) + (1/24)*b^5*pi^2*CosIntegral(b^2*pi*x^2) - (b^2*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(15*x^3) - (FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(5*x^5) - (b^3*pi*sin(b^2*pi*x^2))/(24*x^2) - (1/15)*b^4*pi^2*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x^2, x)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^7, x, 12, -(b/(60*x^5)) + (b^5*pi^2)/(96*x) + (b*cos(b^2*pi*x^2))/(60*x^5) - (67*b^5*pi^2*cos(b^2*pi*x^2))/(1440*x) - (b^2*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(24*x^4) - (7*b^6*pi^3*FresnelS(sqrt(2)*b*x))/(144*sqrt(2)) - (1/45)*sqrt(2)*b^6*pi^3*FresnelS(sqrt(2)*b*x) - (FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(6*x^6) + (b^4*pi^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(48*x^2) - (13*b^3*pi*sin(b^2*pi*x^2))/(720*x^3) - (1/48)*b^6*pi^3*Unintegrable((cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/x, x)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^8, x, 19, -(b/(84*x^6)) + (b^5*pi^2)/(420*x^2) + (b*cos(b^2*pi*x^2))/(84*x^6) - (b^5*pi^2*cos(b^2*pi*x^2))/(84*x^2) - (b^2*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(35*x^5) + (b^6*pi^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(105*x) + (1/210)*b^7*pi^4*FresnelS(b*x)^2 - (FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(7*x^7) + (b^4*pi^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(105*x^3) - (b^3*pi*sin(b^2*pi*x^2))/(105*x^4) - (1/70)*b^7*pi^3*SinIntegral(b^2*pi*x^2)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^9, x, 18, -(b/(112*x^7)) + (b^5*pi^2)/(1152*x^3) + (b*cos(b^2*pi*x^2))/(112*x^7) - (187*b^5*pi^2*cos(b^2*pi*x^2))/(40320*x^3) - (853*b^8*pi^4*FresnelC(sqrt(2)*b*x))/(40320*sqrt(2)) - (b^2*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(48*x^6) + (b^6*pi^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(384*x^2) - (FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(8*x^8) + (b^4*pi^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(192*x^4) - (19*b^3*pi*sin(b^2*pi*x^2))/(3360*x^5) + (853*b^7*pi^3*sin(b^2*pi*x^2))/(80640*x) + (1/384)*b^8*pi^4*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x, x)]
    @test_int [sin(pi/2*b^2*x^2)*FresnelS(b*x)/x^10, x, 22, -(b/(144*x^8)) + (b^5*pi^2)/(2520*x^4) + (b*cos(b^2*pi*x^2))/(144*x^8) - (67*b^5*pi^2*cos(b^2*pi*x^2))/(30240*x^4) - (5*b^9*pi^4*CosIntegral(b^2*pi*x^2))/2016 - (b^2*pi*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(63*x^7) + (b^6*pi^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(945*x^3) - (FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(9*x^9) + (b^4*pi^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(315*x^5) - (11*b^3*pi*sin(b^2*pi*x^2))/(3024*x^6) + (5*b^7*pi^3*sin(b^2*pi*x^2))/(2016*x^2) + (1/945)*b^8*pi^4*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x^2, x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*x^m*sin(c+d*x^2)*FresnelS(b*x)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(c+d*x^2)*FresnelS(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(pi/2*b^2*x^2)*FresnelS(b*x)^n=#


    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)^n, x, 0, Unintegrable(cos((1/2)*b^2*pi*x^2)*FresnelS(b*x)^n, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cos(pi/2*b^2*x^2)*FresnelS(b*x)=#


    @test_int [x^8*cos(pi/2*b^2*x^2)*FresnelS(b*x), x, 23, (35*x^4)/(8*b^5*pi^3) - x^8/(16*b*pi) - (40*cos(b^2*pi*x^2))/(b^9*pi^5) + (5*x^4*cos(b^2*pi*x^2))/(2*b^5*pi^3) - (105*x*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^8*pi^4) + (7*x^5*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^4*pi^2) + (105*FresnelC(b*x)*FresnelS(b*x))/(2*b^9*pi^4) - (105*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*b^7*pi^4) + (105*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*b^7*pi^4) - (35*x^3*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^6*pi^3) + (x^7*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) - (55*x^2*sin(b^2*pi*x^2))/(4*b^7*pi^4) + (x^6*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^7*cos(pi/2*b^2*x^2)*FresnelS(b*x), x, 18, (4*x^3)/(b^5*pi^3) - x^7/(14*b*pi) + (17*x^3*cos(b^2*pi*x^2))/(8*b^5*pi^3) - (48*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^8*pi^4) + (6*x^4*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^4*pi^2) + (531*FresnelS(sqrt(2)*b*x))/(16*sqrt(2)*b^8*pi^4) - (24*x^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^6*pi^3) + (x^6*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) - (147*x*sin(b^2*pi*x^2))/(16*b^7*pi^4) + (x^5*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^6*cos(pi/2*b^2*x^2)*FresnelS(b*x), x, 16, (15*x^2)/(4*b^5*pi^3) - x^6/(12*b*pi) + (7*x^2*cos(b^2*pi*x^2))/(4*b^5*pi^3) + (5*x^3*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^4*pi^2) + (15*FresnelS(b*x)^2)/(2*b^7*pi^3) - (15*x*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^6*pi^3) + (x^5*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) - (11*sin(b^2*pi*x^2))/(2*b^7*pi^4) + (x^4*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^5*cos(pi/2*b^2*x^2)*FresnelS(b*x), x, 13, (4*x)/(b^5*pi^3) - x^5/(10*b*pi) + (11*x*cos(b^2*pi*x^2))/(8*b^5*pi^3) - (43*FresnelC(sqrt(2)*b*x))/(8*sqrt(2)*b^6*pi^3) + (4*x^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^4*pi^2) - (8*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^6*pi^3) + (x^4*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) + (x^3*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^4*cos(pi/2*b^2*x^2)*FresnelS(b*x), x, 10, -(x^4/(8*b*pi)) + cos(b^2*pi*x^2)/(b^5*pi^3) + (3*x*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^4*pi^2) - (3*FresnelC(b*x)*FresnelS(b*x))/(2*b^5*pi^2) + (3*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*b^3*pi^2) - (3*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*b^3*pi^2) + (x^3*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) + (x^2*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^3*cos(pi/2*b^2*x^2)*FresnelS(b*x), x, 7, -(x^3/(6*b*pi)) + (2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(b^4*pi^2) - (5*FresnelS(sqrt(2)*b*x))/(4*sqrt(2)*b^4*pi^2) + (x^2*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) + (x*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^2*cos(pi/2*b^2*x^2)*FresnelS(b*x), x, 5, -(x^2/(4*b*pi)) - FresnelS(b*x)^2/(2*b^3*pi) + (x*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) + sin(b^2*pi*x^2)/(4*b^3*pi^2)]
    @test_int [x^1*cos(pi/2*b^2*x^2)*FresnelS(b*x), x, 4, -(x/(2*b*pi)) + FresnelC(sqrt(2)*b*x)/(2*sqrt(2)*b^2*pi) + (FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi)]
    @test_int [x^0*cos(pi/2*b^2*x^2)*FresnelS(b*x), x, 1, (FresnelC(b*x)*FresnelS(b*x))/(2*b) - (1/8)*im*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2) + (1/8)*im*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^1, x, 0, Unintegrable((cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/x, x)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^2, x, 4, -((cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/x) - (1/2)*b*pi*FresnelS(b*x)^2 + (1/4)*b*SinIntegral(b^2*pi*x^2)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^3, x, 3, (b^2*pi*FresnelC(sqrt(2)*b*x))/(2*sqrt(2)) - (cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(2*x^2) - (b*sin(b^2*pi*x^2))/(4*x) - (1/2)*b^2*pi*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x, x)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^4, x, 4, (1/12)*b^3*pi*CosIntegral(b^2*pi*x^2) - (cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(3*x^3) - (b*sin(b^2*pi*x^2))/(12*x^2) - (1/3)*b^2*pi*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x^2, x)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^5, x, 7, (b^3*pi)/(16*x) - (7*b^3*pi*cos(b^2*pi*x^2))/(48*x) - (cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(4*x^4) - (7*b^4*pi^2*FresnelS(sqrt(2)*b*x))/(24*sqrt(2)) + (b^2*pi*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(8*x^2) - (b*sin(b^2*pi*x^2))/(24*x^3) - (1/8)*b^4*pi^2*Unintegrable((cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/x, x)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^6, x, 13, (b^3*pi)/(60*x^2) - (b^3*pi*cos(b^2*pi*x^2))/(24*x^2) - (cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(5*x^5) + (b^4*pi^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(15*x) + (1/30)*b^5*pi^3*FresnelS(b*x)^2 + (b^2*pi*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(15*x^3) - (b*sin(b^2*pi*x^2))/(40*x^4) - (7/120)*b^5*pi^2*SinIntegral(b^2*pi*x^2)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^7, x, 12, (b^3*pi)/(144*x^3) - (13*b^3*pi*cos(b^2*pi*x^2))/(720*x^3) - (7*b^6*pi^3*FresnelC(sqrt(2)*b*x))/(144*sqrt(2)) - (1/45)*sqrt(2)*b^6*pi^3*FresnelC(sqrt(2)*b*x) - (cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(6*x^6) + (b^4*pi^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(48*x^2) + (b^2*pi*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(24*x^4) - (b*sin(b^2*pi*x^2))/(60*x^5) + (67*b^5*pi^2*sin(b^2*pi*x^2))/(1440*x) + (1/48)*b^6*pi^3*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x, x)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^8, x, 15, (b^3*pi)/(280*x^4) - (b^3*pi*cos(b^2*pi*x^2))/(105*x^4) - (1/84)*b^7*pi^3*CosIntegral(b^2*pi*x^2) - (cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(7*x^7) + (b^4*pi^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(105*x^3) + (b^2*pi*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(35*x^5) - (b*sin(b^2*pi*x^2))/(84*x^6) + (b^5*pi^2*sin(b^2*pi*x^2))/(84*x^2) + (1/105)*b^6*pi^3*Unintegrable((FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/x^2, x)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^9, x, 18, (b^3*pi)/(480*x^5) - (b^7*pi^3)/(768*x) - (19*b^3*pi*cos(b^2*pi*x^2))/(3360*x^5) + (853*b^7*pi^3*cos(b^2*pi*x^2))/(80640*x) - (cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(8*x^8) + (b^4*pi^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(192*x^4) + (853*b^8*pi^4*FresnelS(sqrt(2)*b*x))/(40320*sqrt(2)) + (b^2*pi*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(48*x^6) - (b^6*pi^3*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(384*x^2) - (b*sin(b^2*pi*x^2))/(112*x^7) + (187*b^5*pi^2*sin(b^2*pi*x^2))/(40320*x^3) + (1/384)*b^8*pi^4*Unintegrable((cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/x, x)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelS(b*x)/x^10, x, 26, (b^3*pi)/(756*x^6) - (b^7*pi^3)/(3780*x^2) - (11*b^3*pi*cos(b^2*pi*x^2))/(3024*x^6) + (5*b^7*pi^3*cos(b^2*pi*x^2))/(2016*x^2) - (cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(9*x^9) + (b^4*pi^2*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(315*x^5) - (b^8*pi^4*cos((1/2)*b^2*pi*x^2)*FresnelS(b*x))/(945*x) - (b^9*pi^5*FresnelS(b*x)^2)/1890 + (b^2*pi*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(63*x^7) - (b^6*pi^3*FresnelS(b*x)*sin((1/2)*b^2*pi*x^2))/(945*x^3) - (b*sin(b^2*pi*x^2))/(144*x^8) + (67*b^5*pi^2*sin(b^2*pi*x^2))/(30240*x^4) + (83*b^9*pi^4*SinIntegral(b^2*pi*x^2))/30240]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*x^m*cos(c+d*x^2)*FresnelS(b*x)=#


    #= ::Title::Closed:: =#
    #=Integration*Problems*Involving*The*Fresnel*C*Integral*Function=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*FresnelC(a+b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*FresnelC(b*x)=#


    @test_int [x^7*FresnelC(b*x), x, 6, (105*x*cos((b^2*pi*x^2)/2))/(8*b^7*pi^4) - (7*x^5*cos((b^2*pi*x^2)/2))/(8*b^3*pi^2) - (105*FresnelC(b*x))/(8*b^8*pi^4) + (x^8*FresnelC(b*x))/8 + (35*x^3*sin((b^2*pi*x^2)/2))/(8*b^5*pi^3) - (x^7*sin((b^2*pi*x^2)/2))/(8*b*pi)]
    @test_int [x^6*FresnelC(b*x), x, 6, (48*cos((b^2*pi*x^2)/2))/(7*b^7*pi^4) - (6*x^4*cos((b^2*pi*x^2)/2))/(7*b^3*pi^2) + (x^7*FresnelC(b*x))/7 + (24*x^2*sin((b^2*pi*x^2)/2))/(7*b^5*pi^3) - (x^6*sin((b^2*pi*x^2)/2))/(7*b*pi)]
    @test_int [x^5*FresnelC(b*x), x, 5, (-5*x^3*cos((b^2*pi*x^2)/2))/(6*b^3*pi^2) + (x^6*FresnelC(b*x))/6 - (5*FresnelS(b*x))/(2*b^6*pi^3) + (5*x*sin((b^2*pi*x^2)/2))/(2*b^5*pi^3) - (x^5*sin((b^2*pi*x^2)/2))/(6*b*pi)]
    @test_int [x^4*FresnelC(b*x), x, 5, (-4*x^2*cos((b^2*pi*x^2)/2))/(5*b^3*pi^2) + (x^5*FresnelC(b*x))/5 + (8*sin((b^2*pi*x^2)/2))/(5*b^5*pi^3) - (x^4*sin((b^2*pi*x^2)/2))/(5*b*pi)]
    @test_int [x^3*FresnelC(b*x), x, 4, (-3*x*cos((b^2*pi*x^2)/2))/(4*b^3*pi^2) + (3*FresnelC(b*x))/(4*b^4*pi^2) + (x^4*FresnelC(b*x))/4 - (x^3*sin((b^2*pi*x^2)/2))/(4*b*pi)]
    @test_int [x^2*FresnelC(b*x), x, 4, (-2*cos((b^2*pi*x^2)/2))/(3*b^3*pi^2) + (x^3*FresnelC(b*x))/3 - (x^2*sin((b^2*pi*x^2)/2))/(3*b*pi)]
    @test_int [x^1*FresnelC(b*x), x, 3, (x^2*FresnelC(b*x))/2 + FresnelS(b*x)/(2*b^2*pi) - (x*sin((b^2*pi*x^2)/2))/(2*b*pi)]
    @test_int [x^0*FresnelC(b*x), x, 1, x*FresnelC(b*x) - sin((b^2*pi*x^2)/2)/(b*pi)]
    @test_int [FresnelC(b*x)/x^1, x, 3, (b*x*HypergeometricPFQ([1/2, 1/2], [3/2, 3/2], (-im/2)*b^2*pi*x^2))/2 + (b*x*HypergeometricPFQ([1/2, 1/2], [3/2, 3/2], (im/2)*b^2*pi*x^2))/2]
    @test_int [FresnelC(b*x)/x^2, x, 2, (b*CosIntegral((b^2*pi*x^2)/2))/2 - FresnelC(b*x)/x]
    @test_int [FresnelC(b*x)/x^3, x, 3, -(b*cos((b^2*pi*x^2)/2))/(2*x) - FresnelC(b*x)/(2*x^2) - (b^2*pi*FresnelS(b*x))/2]
    @test_int [FresnelC(b*x)/x^4, x, 4, -(b*cos((b^2*pi*x^2)/2))/(6*x^2) - FresnelC(b*x)/(3*x^3) - (b^3*pi*SinIntegral((b^2*pi*x^2)/2))/12]
    @test_int [FresnelC(b*x)/x^5, x, 4, -(b*cos((b^2*pi*x^2)/2))/(12*x^3) - (b^4*pi^2*FresnelC(b*x))/12 - FresnelC(b*x)/(4*x^4) + (b^3*pi*sin((b^2*pi*x^2)/2))/(12*x)]
    @test_int [FresnelC(b*x)/x^6, x, 5, -(b*cos((b^2*pi*x^2)/2))/(20*x^4) - (b^5*pi^2*CosIntegral((b^2*pi*x^2)/2))/80 - FresnelC(b*x)/(5*x^5) + (b^3*pi*sin((b^2*pi*x^2)/2))/(40*x^2)]
    @test_int [FresnelC(b*x)/x^7, x, 5, -(b*cos((b^2*pi*x^2)/2))/(30*x^5) + (b^5*pi^2*cos((b^2*pi*x^2)/2))/(90*x) - FresnelC(b*x)/(6*x^6) + (b^6*pi^3*FresnelS(b*x))/90 + (b^3*pi*sin((b^2*pi*x^2)/2))/(90*x^3)]
    @test_int [FresnelC(b*x)/x^8, x, 6, -(b*cos((b^2*pi*x^2)/2))/(42*x^6) + (b^5*pi^2*cos((b^2*pi*x^2)/2))/(336*x^2) - FresnelC(b*x)/(7*x^7) + (b^3*pi*sin((b^2*pi*x^2)/2))/(168*x^4) + (b^7*pi^3*SinIntegral((b^2*pi*x^2)/2))/672]
    @test_int [FresnelC(b*x)/x^9, x, 6, -(b*cos((b^2*pi*x^2)/2))/(56*x^7) + (b^5*pi^2*cos((b^2*pi*x^2)/2))/(840*x^3) + (b^8*pi^4*FresnelC(b*x))/840 - FresnelC(b*x)/(8*x^8) + (b^3*pi*sin((b^2*pi*x^2)/2))/(280*x^5) - (b^7*pi^3*sin((b^2*pi*x^2)/2))/(840*x)]
    @test_int [FresnelC(b*x)/x^10, x, 7, -(b*cos((b^2*pi*x^2)/2))/(72*x^8) + (b^5*pi^2*cos((b^2*pi*x^2)/2))/(1728*x^4) + (b^9*pi^4*CosIntegral((b^2*pi*x^2)/2))/6912 - FresnelC(b*x)/(9*x^9) + (b^3*pi*sin((b^2*pi*x^2)/2))/(432*x^6) - (b^7*pi^3*sin((b^2*pi*x^2)/2))/(3456*x^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*FresnelC(a+b*x)=#


    @test_int [(c + d*x)^3*FresnelC(a + b*x), x, 14, -((2*d^2*(b*c - a*d)*cos((1/2)*pi*(a + b*x)^2))/(b^4*pi^2)) - (3*d^3*(a + b*x)*cos((1/2)*pi*(a + b*x)^2))/(4*b^4*pi^2) - ((b*c - a*d)^4*FresnelC(a + b*x))/(4*b^4*d) + (3*d^3*FresnelC(a + b*x))/(4*b^4*pi^2) + ((c + d*x)^4*FresnelC(a + b*x))/(4*d) + (3*d*(b*c - a*d)^2*FresnelS(a + b*x))/(2*b^4*pi) - ((b*c - a*d)^3*sin((1/2)*pi*(a + b*x)^2))/(b^4*pi) - (3*d*(b*c - a*d)^2*(a + b*x)*sin((1/2)*pi*(a + b*x)^2))/(2*b^4*pi) - (d^2*(b*c - a*d)*(a + b*x)^2*sin((1/2)*pi*(a + b*x)^2))/(b^4*pi) - (d^3*(a + b*x)^3*sin((1/2)*pi*(a + b*x)^2))/(4*b^4*pi)]
    @test_int [(c + d*x)^2*FresnelC(a + b*x), x, 11, -((2*d^2*cos((1/2)*pi*(a + b*x)^2))/(3*b^3*pi^2)) - ((b*c - a*d)^3*FresnelC(a + b*x))/(3*b^3*d) + ((c + d*x)^3*FresnelC(a + b*x))/(3*d) + (d*(b*c - a*d)*FresnelS(a + b*x))/(b^3*pi) - ((b*c - a*d)^2*sin((1/2)*pi*(a + b*x)^2))/(b^3*pi) - (d*(b*c - a*d)*(a + b*x)*sin((1/2)*pi*(a + b*x)^2))/(b^3*pi) - (d^2*(a + b*x)^2*sin((1/2)*pi*(a + b*x)^2))/(3*b^3*pi)]
    @test_int [(c + d*x)^1*FresnelC(a + b*x), x, 8, -(((b*c - a*d)^2*FresnelC(a + b*x))/(2*b^2*d)) + ((c + d*x)^2*FresnelC(a + b*x))/(2*d) + (d*FresnelS(a + b*x))/(2*b^2*pi) - ((b*c - a*d)*sin((1/2)*pi*(a + b*x)^2))/(b^2*pi) - (d*(a + b*x)*sin((1/2)*pi*(a + b*x)^2))/(2*b^2*pi)]
    @test_int [(c + d*x)^0*FresnelC(a + b*x), x, 1, ((a + b*x)*FresnelC(a + b*x))/b - sin((pi*(a + b*x)^2)/2)/(b*pi)]
    @test_int [FresnelC(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(FresnelC(a + b*x)/(c + d*x), x)]
    @test_int [FresnelC(a + b*x)/(c + d*x)^2, x, 0, Unintegrable(FresnelC(a + b*x)/(c + d*x)^2, x)]


    @test_int [x^3*FresnelC(a + b*x), x, 14, (2*a*cos((pi*(a + b*x)^2)/2))/(b^4*pi^2) - (3*(a + b*x)*cos((pi*(a + b*x)^2)/2))/(4*b^4*pi^2) - (a^4*FresnelC(a + b*x))/(4*b^4) + (3*FresnelC(a + b*x))/(4*b^4*pi^2) + (x^4*FresnelC(a + b*x))/4 + (3*a^2*FresnelS(a + b*x))/(2*b^4*pi) + (a^3*sin((pi*(a + b*x)^2)/2))/(b^4*pi) - (3*a^2*(a + b*x)*sin((pi*(a + b*x)^2)/2))/(2*b^4*pi) + (a*(a + b*x)^2*sin((pi*(a + b*x)^2)/2))/(b^4*pi) - ((a + b*x)^3*sin((pi*(a + b*x)^2)/2))/(4*b^4*pi)]
    @test_int [x^2*FresnelC(a + b*x), x, 11, (-2*cos((pi*(a + b*x)^2)/2))/(3*b^3*pi^2) + (a^3*FresnelC(a + b*x))/(3*b^3) + (x^3*FresnelC(a + b*x))/3 - (a*FresnelS(a + b*x))/(b^3*pi) - (a^2*sin((pi*(a + b*x)^2)/2))/(b^3*pi) + (a*(a + b*x)*sin((pi*(a + b*x)^2)/2))/(b^3*pi) - ((a + b*x)^2*sin((pi*(a + b*x)^2)/2))/(3*b^3*pi)]
    @test_int [x^1*FresnelC(a + b*x), x, 8, -(a^2*FresnelC(a + b*x))/(2*b^2) + (x^2*FresnelC(a + b*x))/2 + FresnelS(a + b*x)/(2*b^2*pi) + (a*sin((pi*(a + b*x)^2)/2))/(b^2*pi) - ((a + b*x)*sin((pi*(a + b*x)^2)/2))/(2*b^2*pi)]
    @test_int [x^0*FresnelC(a + b*x), x, 1, ((a + b*x)*FresnelC(a + b*x))/b - sin((pi*(a + b*x)^2)/2)/(b*pi)]
    @test_int [FresnelC(a + b*x)/x^1, x, 0, Unintegrable(FresnelC(a + b*x)/x, x)]
    @test_int [FresnelC(a + b*x)/x^2, x, 0, Unintegrable(FresnelC(a + b*x)/x^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*FresnelC(a+b*x)^2=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*FresnelC(b*x)^2=#


    @test_int [x^7*FresnelC(b*x)^2, x, 23, -((105*x^2)/(16*b^6*pi^4)) + (7*x^6)/(48*b^2*pi^2) + (55*x^2*cos(b^2*pi*x^2))/(16*b^6*pi^4) - (x^6*cos(b^2*pi*x^2))/(16*b^2*pi^2) + (105*x*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(4*b^7*pi^4) - (7*x^5*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(4*b^3*pi^2) - (105*FresnelC(b*x)^2)/(8*b^8*pi^4) + (1/8)*x^8*FresnelC(b*x)^2 + (35*x^3*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(4*b^5*pi^3) - (x^7*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(4*b*pi) - (10*sin(b^2*pi*x^2))/(b^8*pi^5) + (5*x^4*sin(b^2*pi*x^2))/(8*b^4*pi^3)]
    @test_int [x^6*FresnelC(b*x)^2, x, 19, (-48*x)/(7*b^6*pi^4) + (6*x^5)/(35*b^2*pi^2) + (21*x*cos(b^2*pi*x^2))/(8*b^6*pi^4) - (x^5*cos(b^2*pi*x^2))/(14*b^2*pi^2) + (96*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(7*b^7*pi^4) - (12*x^4*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(7*b^3*pi^2) + (x^7*FresnelC(b*x)^2)/7 - (531*FresnelC(sqrt(2)*b*x))/(56*sqrt(2)*b^7*pi^4) + (48*x^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(7*b^5*pi^3) - (2*x^6*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(7*b*pi) + (17*x^3*sin(b^2*pi*x^2))/(28*b^4*pi^3)]
    @test_int [x^5*FresnelC(b*x)^2, x, 16, (5*x^4)/(24*b^2*pi^2) + (11*cos(b^2*pi*x^2))/(6*b^6*pi^4) - (x^4*cos(b^2*pi*x^2))/(12*b^2*pi^2) - (5*x^3*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(3*b^3*pi^2) + (1/6)*x^6*FresnelC(b*x)^2 - (5*FresnelC(b*x)*FresnelS(b*x))/(2*b^6*pi^3) - (5*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*b^4*pi^3) + (5*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*b^4*pi^3) + (5*x*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^5*pi^3) - (x^5*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(3*b*pi) + (7*x^2*sin(b^2*pi*x^2))/(12*b^4*pi^3)]
    @test_int [x^4*FresnelC(b*x)^2, x, 12, (4*x^3)/(15*b^2*pi^2) - (x^3*cos(b^2*pi*x^2))/(10*b^2*pi^2) - (8*x^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(5*b^3*pi^2) + (x^5*FresnelC(b*x)^2)/5 - (43*FresnelS(sqrt(2)*b*x))/(20*sqrt(2)*b^5*pi^3) + (16*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(5*b^5*pi^3) - (2*x^4*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(5*b*pi) + (11*x*sin(b^2*pi*x^2))/(20*b^4*pi^3)]
    @test_int [x^3*FresnelC(b*x)^2, x, 10, (3*x^2)/(8*b^2*pi^2) - (x^2*cos(b^2*pi*x^2))/(8*b^2*pi^2) - (3*x*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(2*b^3*pi^2) + (3*FresnelC(b*x)^2)/(4*b^4*pi^2) + (1/4)*x^4*FresnelC(b*x)^2 - (x^3*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(2*b*pi) + sin(b^2*pi*x^2)/(2*b^4*pi^3)]
    @test_int [x^2*FresnelC(b*x)^2, x, 8, (2*x)/(3*b^2*pi^2) - (x*cos(b^2*pi*x^2))/(6*b^2*pi^2) - (4*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(3*b^3*pi^2) + (x^3*FresnelC(b*x)^2)/3 + (5*FresnelC(sqrt(2)*b*x))/(6*sqrt(2)*b^3*pi^2) - (2*x^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(3*b*pi)]
    @test_int [x^1*FresnelC(b*x)^2, x, 5, -cos(b^2*pi*x^2)/(4*b^2*pi^2) + (x^2*FresnelC(b*x)^2)/2 + (FresnelC(b*x)*FresnelS(b*x))/(2*b^2*pi) + ((im/8)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-im/2)*b^2*pi*x^2))/pi - ((im/8)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (im/2)*b^2*pi*x^2))/pi - (x*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b*pi)]
    @test_int [x^0*FresnelC(b*x)^2, x, 4, x*FresnelC(b*x)^2 + FresnelS(sqrt(2)*b*x)/(sqrt(2)*b*pi) - (2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b*pi)]
    @test_int [FresnelC(b*x)^2/x^1, x, 0, Unintegrable(FresnelC(b*x)^2/x, x)]
    @test_int [FresnelC(b*x)^2/x^2, x, 1, -(FresnelC(b*x)^2/x) + 2*b*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x, x)]
    @test_int [FresnelC(b*x)^2/x^3, x, 1, -FresnelC(b*x)^2/(2*x^2) + b*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^2, x)]
    @test_int [FresnelC(b*x)^2/x^4, x, 4, -b^2/(6*x) - (b^2*cos(b^2*pi*x^2))/(6*x) - (b*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(3*x^2) - FresnelC(b*x)^2/(3*x^3) - (b^3*pi*FresnelS(sqrt(2)*b*x))/(3*sqrt(2)) - (b^3*pi*Unintegrable((FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x, x))/3]
    @test_int [FresnelC(b*x)^2/x^5, x, 9, -b^2/(24*x^2) - (b^2*cos(b^2*pi*x^2))/(24*x^2) - (b*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(6*x^3) - (b^4*pi^2*FresnelC(b*x)^2)/12 - FresnelC(b*x)^2/(4*x^4) + (b^3*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(6*x) - (b^4*pi*SinIntegral(b^2*pi*x^2))/12]
    @test_int [FresnelC(b*x)^2/x^6, x, 8, -b^2/(60*x^3) - (b^2*cos(b^2*pi*x^2))/(60*x^3) - (b*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(10*x^4) - FresnelC(b*x)^2/(5*x^5) - (7*b^5*pi^2*FresnelC(sqrt(2)*b*x))/(60*sqrt(2)) + (b^3*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(20*x^2) + (7*b^4*pi*sin(b^2*pi*x^2))/(120*x) - (b^5*pi^2*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x, x))/20]
    @test_int [FresnelC(b*x)^2/x^7, x, 10, -b^2/(120*x^4) - (b^2*cos(b^2*pi*x^2))/(120*x^4) - (b^6*pi^2*CosIntegral(b^2*pi*x^2))/72 - (b*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(15*x^5) - FresnelC(b*x)^2/(6*x^6) + (b^3*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(45*x^3) + (b^4*pi*sin(b^2*pi*x^2))/(72*x^2) - (b^5*pi^2*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^2, x))/45]
    @test_int [FresnelC(b*x)^2/x^8, x, 13, -b^2/(210*x^5) + (b^6*pi^2)/(336*x) - (b^2*cos(b^2*pi*x^2))/(210*x^5) + (67*b^6*pi^2*cos(b^2*pi*x^2))/(5040*x) - (b*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(21*x^6) + (b^5*pi^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(168*x^2) - FresnelC(b*x)^2/(7*x^7) + (b^7*pi^3*FresnelS(sqrt(2)*b*x))/(72*sqrt(2)) + (2*sqrt(2)*b^7*pi^3*FresnelS(sqrt(2)*b*x))/315 + (b^3*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(84*x^4) + (13*b^4*pi*sin(b^2*pi*x^2))/(2520*x^3) + (b^7*pi^3*Unintegrable((FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x, x))/168]
    @test_int [FresnelC(b*x)^2/x^9, x, 20, -b^2/(336*x^6) + (b^6*pi^2)/(1680*x^2) - (b^2*cos(b^2*pi*x^2))/(336*x^6) + (b^6*pi^2*cos(b^2*pi*x^2))/(336*x^2) - (b*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(28*x^7) + (b^5*pi^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(420*x^3) + (b^8*pi^4*FresnelC(b*x)^2)/840 - FresnelC(b*x)^2/(8*x^8) + (b^3*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(140*x^5) - (b^7*pi^3*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(420*x) + (b^4*pi*sin(b^2*pi*x^2))/(420*x^4) + (b^8*pi^3*SinIntegral(b^2*pi*x^2))/280]
    @test_int [FresnelC(b*x)^2/x^10, x, 19, -b^2/(504*x^7) + (b^6*pi^2)/(5184*x^3) - (b^2*cos(b^2*pi*x^2))/(504*x^7) + (187*b^6*pi^2*cos(b^2*pi*x^2))/(181440*x^3) - (b*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(36*x^8) + (b^5*pi^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(864*x^4) - FresnelC(b*x)^2/(9*x^9) + (853*b^9*pi^4*FresnelC(sqrt(2)*b*x))/(181440*sqrt(2)) + (b^3*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(216*x^6) - (b^7*pi^3*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(1728*x^2) + (19*b^4*pi*sin(b^2*pi*x^2))/(15120*x^5) - (853*b^8*pi^3*sin(b^2*pi*x^2))/(362880*x) + (b^9*pi^4*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x, x))/1728]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*FresnelC(a+b*x)^2=#


    @test_int [(c + d*x)^2*FresnelC(a + b*x)^2, x, 18, (2*d^2*x)/(3*b^2*pi^2) - (d*(b*c - a*d)*cos(pi*(a + b*x)^2))/(2*b^3*pi^2) - (d^2*(a + b*x)*cos(pi*(a + b*x)^2))/(6*b^3*pi^2) - (4*d^2*cos((pi*(a + b*x)^2)/2)*FresnelC(a + b*x))/(3*b^3*pi^2) + ((b*c - a*d)^2*(a + b*x)*FresnelC(a + b*x)^2)/b^3 + (d*(b*c - a*d)*(a + b*x)^2*FresnelC(a + b*x)^2)/b^3 + (d^2*(a + b*x)^3*FresnelC(a + b*x)^2)/(3*b^3) + (5*d^2*FresnelC(sqrt(2)*(a + b*x)))/(6*sqrt(2)*b^3*pi^2) + (d*(b*c - a*d)*FresnelC(a + b*x)*FresnelS(a + b*x))/(b^3*pi) + ((b*c - a*d)^2*FresnelS(sqrt(2)*(a + b*x)))/(sqrt(2)*b^3*pi) + ((im/4)*d*(b*c - a*d)*(a + b*x)^2*HypergeometricPFQ([1, 1], [3/2, 2], (-im/2)*pi*(a + b*x)^2))/(b^3*pi) - ((im/4)*d*(b*c - a*d)*(a + b*x)^2*HypergeometricPFQ([1, 1], [3/2, 2], (im/2)*pi*(a + b*x)^2))/(b^3*pi) - (2*(b*c - a*d)^2*FresnelC(a + b*x)*sin((pi*(a + b*x)^2)/2))/(b^3*pi) - (2*d*(b*c - a*d)*(a + b*x)*FresnelC(a + b*x)*sin((pi*(a + b*x)^2)/2))/(b^3*pi) - (2*d^2*(a + b*x)^2*FresnelC(a + b*x)*sin((pi*(a + b*x)^2)/2))/(3*b^3*pi)]
    @test_int [(c + d*x)^1*FresnelC(a + b*x)^2, x, 10, -(d*cos(pi*(a + b*x)^2))/(4*b^2*pi^2) + ((b*c - a*d)*(a + b*x)*FresnelC(a + b*x)^2)/b^2 + (d*(a + b*x)^2*FresnelC(a + b*x)^2)/(2*b^2) + (d*FresnelC(a + b*x)*FresnelS(a + b*x))/(2*b^2*pi) + ((b*c - a*d)*FresnelS(sqrt(2)*(a + b*x)))/(sqrt(2)*b^2*pi) + ((im/8)*d*(a + b*x)^2*HypergeometricPFQ([1, 1], [3/2, 2], (-im/2)*pi*(a + b*x)^2))/(b^2*pi) - ((im/8)*d*(a + b*x)^2*HypergeometricPFQ([1, 1], [3/2, 2], (im/2)*pi*(a + b*x)^2))/(b^2*pi) - (2*(b*c - a*d)*FresnelC(a + b*x)*sin((pi*(a + b*x)^2)/2))/(b^2*pi) - (d*(a + b*x)*FresnelC(a + b*x)*sin((pi*(a + b*x)^2)/2))/(b^2*pi)]
    @test_int [(c + d*x)^0*FresnelC(a + b*x)^2, x, 4, ((a + b*x)*FresnelC(a + b*x)^2)/b + FresnelS(sqrt(2)*(a + b*x))/(sqrt(2)*b*pi) - (2*FresnelC(a + b*x)*sin((pi*(a + b*x)^2)/2))/(b*pi)]
    @test_int [FresnelC(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(FresnelC(a + b*x)^2/(c + d*x), x)]
    @test_int [FresnelC(a + b*x)^2/(c + d*x)^2, x, 0, Unintegrable(FresnelC(a + b*x)^2/(c + d*x)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*FresnelC(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*FresnelC(d*(a + b*log(c*x^n))), x, 10, ((1/12 + im/12)*ℯ^((-3*a)/(b*n) + ((9*im)/2)/(b^2*d^2*n^2*pi))*x^3*Erf(((1/2 + im/2)*(3/n + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(c*x^n)^(3/n) - ((1/12 + im/12)*ℯ^((-3*a)/(b*n) - ((9*im)/2)/(b^2*d^2*n^2*pi))*x^3*Erfi(((1/2 + im/2)*(3/n - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(c*x^n)^(3/n) + (x^3*FresnelC(d*(a + b*log(c*x^n))))/3]
    @test_int [x^1*FresnelC(d*(a + b*log(c*x^n))), x, 10, ((1/8 + im/8)*ℯ^((2*im - 2*a*b*d^2*n*pi)/(b^2*d^2*n^2*pi))*x^2*Erf(((1/2 + im/2)*(2/n + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(c*x^n)^(2/n) - ((1/8 + im/8)*x^2*Erfi(((1/2 + im/2)*(2/n - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(ℯ^((2*(im + a*b*d^2*n*pi))/(b^2*d^2*n^2*pi))*(c*x^n)^(2/n)) + (x^2*FresnelC(d*(a + b*log(c*x^n))))/2]
    @test_int [x^0*FresnelC(d*(a + b*log(c*x^n))), x, 10, ((1/4 + im/4)*x*Erf(((1/2 + im/2)*(n^(-1) + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(ℯ^((2*a*b*n - im/(d^2*pi))/(2*b^2*n^2))*(c*x^n)^n^(-1)) - ((1/4 + im/4)*x*Erfi(((1/2 + im/2)*(n^(-1) - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(ℯ^((2*a*b*n + im/(d^2*pi))/(2*b^2*n^2))*(c*x^n)^n^(-1)) + x*FresnelC(d*(a + b*log(c*x^n)))]
    @test_int [FresnelC(d*(a + b*log(c*x^n)))/x^1, x, 3, (FresnelC(d*(a + b*log(c*x^n)))*(a + b*log(c*x^n)))/(b*n) - sin((d^2*pi*(a + b*log(c*x^n))^2)/2)/(b*d*n*pi)]
    @test_int [FresnelC(d*(a + b*log(c*x^n)))/x^2, x, 10, ((1/4 + im/4)*ℯ^((2*a*b*n + im/(d^2*pi))/(2*b^2*n^2))*(c*x^n)^n^(-1)*Erf(((1/2 + im/2)*(n^(-1) - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/x - ((1/4 + im/4)*ℯ^((2*a*b*n - im/(d^2*pi))/(2*b^2*n^2))*(c*x^n)^n^(-1)*Erfi(((1/2 + im/2)*(n^(-1) + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/x - FresnelC(d*(a + b*log(c*x^n)))/x]
    @test_int [FresnelC(d*(a + b*log(c*x^n)))/x^3, x, 10, ((1/8 + im/8)*ℯ^((2*im + 2*a*b*d^2*n*pi)/(b^2*d^2*n^2*pi))*(c*x^n)^(2/n)*Erf(((1/2 + im/2)*(2/n - im*a*b*d^2*pi - im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/x^2 - ((1/8 + im/8)*(c*x^n)^(2/n)*Erfi(((1/2 + im/2)*(2/n + im*a*b*d^2*pi + im*b^2*d^2*pi*log(c*x^n)))/(b*d*sqrt(pi))))/(ℯ^((2*(im - a*b*d^2*n*pi))/(b^2*d^2*n^2*pi))*x^2) - FresnelC(d*(a + b*log(c*x^n)))/(2*x^2)]


    @test_int [(e*x)^m*FresnelC(d*(a + b*log(c*x^n))), x, 10, ((1/4 + im/4)*ℯ^(((im/2)*(1 + m)*(1 + m + (2*im)*a*b*d^2*n*pi))/(b^2*d^2*n^2*pi))*x*(e*x)^m*Erf(((1/2 + im/2)*(1 + m + im*a*b*d^2*n*pi + im*b^2*d^2*n*pi*log(c*x^n)))/(b*d*n*sqrt(pi))))/((1 + m)*(c*x^n)^((1 + m)/n)) - ((1/4 + im/4)*x*(e*x)^m*Erfi(((1/2 + im/2)*(1 + m - im*a*b*d^2*n*pi - im*b^2*d^2*n*pi*log(c*x^n)))/(b*d*n*sqrt(pi))))/(ℯ^(((im/2)*(1 + m)*(1 + m - (2*im)*a*b*d^2*n*pi))/(b^2*d^2*n^2*pi))*(1 + m)*(c*x^n)^((1 + m)/n)) + ((e*x)^(1 + m)*FresnelC(d*(a + b*log(c*x^n))))/(e*(1 + m))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c+d*x^2)*FresnelC(a+b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c+d*x^2)*FresnelC(b*x)*when*d^2=pi^2/4*b^4=#


    @test_int [ℯ^(c + (im/2)*b^2*pi*x^2)*FresnelC(b*x), x, 4, If($VersionNumber>=8, ((-im/8)*ℯ^c*Erfi((1/2 + im/2)*b*sqrt(pi)*x)^2)/b + (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (im/2)*b^2*pi*x^2))/4, (im*ℯ^c*Erf((1/2 - im/2)*b*sqrt(pi)*x)^2)/(8*b) + (1/4)*b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))]
    @test_int [ℯ^(c - (im/2)*b^2*pi*x^2)*FresnelC(b*x), x, 4, ((-im/8)*ℯ^c*Erf((1/2 + im/2)*b*sqrt(pi)*x)^2)/b + (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-im/2)*b^2*pi*x^2))/4]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(c+d*x^2)*FresnelC(a+b*x)^n=#


    @test_int [sin(c + (b^2*pi*x^2)/2)*FresnelC(b*x), x, 4, (cos(c)*FresnelC(b*x)*FresnelS(b*x))/(2*b) + (im/8)*b*x^2*cos(c)*HypergeometricPFQ([1, 1], [3/2, 2], (-im/2)*b^2*pi*x^2) - (im/8)*b*x^2*cos(c)*HypergeometricPFQ([1, 1], [3/2, 2], (im/2)*b^2*pi*x^2) + (FresnelC(b*x)^2*sin(c))/(2*b)]
    @test_int [cos(c + (b^2*pi*x^2)/2)*FresnelC(b*x), x, 4, (cos(c)*FresnelC(b*x)^2)/(2*b) - (FresnelC(b*x)*FresnelS(b*x)*sin(c))/(2*b) - (im/8)*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-im/2)*b^2*pi*x^2)*sin(c) + (im/8)*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (im/2)*b^2*pi*x^2)*sin(c)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(pi/2*b^2*x^2)*FresnelC(b*x)^n=#


    @test_int [cos(pi/2*b^2*x^2)*FresnelC(b*x)^2, x, 2, FresnelC(b*x)^3/(3*b)]
    @test_int [cos(pi/2*b^2*x^2)*FresnelC(b*x)^1, x, 2, FresnelC(b*x)^2/(2*b)]
    @test_int [cos(pi/2*b^2*x^2)/FresnelC(b*x)^1, x, 2, log(FresnelC(b*x))/b]
    @test_int [cos(pi/2*b^2*x^2)/FresnelC(b*x)^2, x, 2, -(1/(b*FresnelC(b*x)))]
    @test_int [cos(pi/2*b^2*x^2)/FresnelC(b*x)^3, x, 2, -(1/(2*b*FresnelC(b*x)^2))]


    @test_int [cos((b^2*pi*x^2)/2)*FresnelC(b*x)^n, x, 2, FresnelC(b*x)^(1 + n)/(b*(1 + n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cos(pi/2*b^2*x^2)*FresnelC(b*x)=#


    @test_int [x^8*cos((b^2*pi*x^2)/2)*FresnelC(b*x), x, 22, (105*x^2)/(4*b^7*pi^4) - (7*x^6)/(12*b^3*pi^2) - (55*x^2*cos(b^2*pi*x^2))/(4*b^7*pi^4) + (x^6*cos(b^2*pi*x^2))/(4*b^3*pi^2) - (105*x*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^8*pi^4) + (7*x^5*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^4*pi^2) + (105*FresnelC(b*x)^2)/(2*b^9*pi^4) - (35*x^3*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^6*pi^3) + (x^7*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) + (40*sin(b^2*pi*x^2))/(b^9*pi^5) - (5*x^4*sin(b^2*pi*x^2))/(2*b^5*pi^3)]
    @test_int [x^7*cos((b^2*pi*x^2)/2)*FresnelC(b*x), x, 18, (24*x)/(b^7*pi^4) - (3*x^5)/(5*b^3*pi^2) - (147*x*cos(b^2*pi*x^2))/(16*b^7*pi^4) + (x^5*cos(b^2*pi*x^2))/(4*b^3*pi^2) - (48*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^8*pi^4) + (6*x^4*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^4*pi^2) + (531*FresnelC(sqrt(2)*b*x))/(16*sqrt(2)*b^8*pi^4) - (24*x^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^6*pi^3) + (x^6*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^2*pi) - (17*x^3*sin(b^2*pi*x^2))/(8*b^5*pi^3)]
    @test_int [x^6*cos((b^2*pi*x^2)/2)*FresnelC(b*x), x, 15, -((5*x^4)/(8*b^3*pi^2)) - (11*cos(b^2*pi*x^2))/(2*b^7*pi^4) + (x^4*cos(b^2*pi*x^2))/(4*b^3*pi^2) + (5*x^3*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^4*pi^2) + (15*FresnelC(b*x)*FresnelS(b*x))/(2*b^7*pi^3) + (15*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*b^5*pi^3) - (15*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*b^5*pi^3) - (15*x*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^6*pi^3) + (x^5*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) - (7*x^2*sin(b^2*pi*x^2))/(4*b^5*pi^3)]
    @test_int [x^5*cos((b^2*pi*x^2)/2)*FresnelC(b*x), x, 11, (-2*x^3)/(3*b^3*pi^2) + (x^3*cos(b^2*pi*x^2))/(4*b^3*pi^2) + (4*x^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^4*pi^2) + (43*FresnelS(sqrt(2)*b*x))/(8*sqrt(2)*b^6*pi^3) - (8*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^6*pi^3) + (x^4*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^2*pi) - (11*x*sin(b^2*pi*x^2))/(8*b^5*pi^3)]
    @test_int [x^4*cos((b^2*pi*x^2)/2)*FresnelC(b*x), x, 9, -((3*x^2)/(4*b^3*pi^2)) + (x^2*cos(b^2*pi*x^2))/(4*b^3*pi^2) + (3*x*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^4*pi^2) - (3*FresnelC(b*x)^2)/(2*b^5*pi^2) + (x^3*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^2*pi) - sin(b^2*pi*x^2)/(b^5*pi^3)]
    @test_int [x^3*cos((b^2*pi*x^2)/2)*FresnelC(b*x), x, 7, -(x/(b^3*pi^2)) + (x*cos(b^2*pi*x^2))/(4*b^3*pi^2) + (2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^4*pi^2) - (5*FresnelC(sqrt(2)*b*x))/(4*sqrt(2)*b^4*pi^2) + (x^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^2*pi)]
    @test_int [x^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x), x, 4, cos(b^2*pi*x^2)/(4*b^3*pi^2) - (FresnelC(b*x)*FresnelS(b*x))/(2*b^3*pi) - ((im/8)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-im/2)*b^2*pi*x^2))/(b*pi) + ((im/8)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (im/2)*b^2*pi*x^2))/(b*pi) + (x*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^2*pi)]
    @test_int [x^1*cos((b^2*pi*x^2)/2)*FresnelC(b*x), x, 2, -FresnelS(sqrt(2)*b*x)/(2*sqrt(2)*b^2*pi) + (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^2*pi)]
    @test_int [x^0*cos((b^2*pi*x^2)/2)*FresnelC(b*x), x, 2, FresnelC(b*x)^2/(2*b)]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^1, x, 0, Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x, x)]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^2, x, 0, Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^2, x)]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^3, x, 3, -b/(4*x) - (b*cos(b^2*pi*x^2))/(4*x) - (cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(2*x^2) - (b^2*pi*FresnelS(sqrt(2)*b*x))/(2*sqrt(2)) - (b^2*pi*Unintegrable((FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x, x))/2]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^4, x, 8, -b/(12*x^2) - (b*cos(b^2*pi*x^2))/(12*x^2) - (cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(3*x^3) - (b^3*pi^2*FresnelC(b*x)^2)/6 + (b^2*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(3*x) - (b^3*pi*SinIntegral(b^2*pi*x^2))/6]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^5, x, 7, -b/(24*x^3) - (b*cos(b^2*pi*x^2))/(24*x^3) - (cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(4*x^4) - (7*b^4*pi^2*FresnelC(sqrt(2)*b*x))/(24*sqrt(2)) + (b^2*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(8*x^2) + (7*b^3*pi*sin(b^2*pi*x^2))/(48*x) - (b^4*pi^2*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x, x))/8]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^6, x, 9, -b/(40*x^4) - (b*cos(b^2*pi*x^2))/(40*x^4) - (b^5*pi^2*CosIntegral(b^2*pi*x^2))/24 - (cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(5*x^5) + (b^2*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(15*x^3) + (b^3*pi*sin(b^2*pi*x^2))/(24*x^2) - (b^4*pi^2*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^2, x))/15]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^7, x, 12, -b/(60*x^5) + (b^5*pi^2)/(96*x) - (b*cos(b^2*pi*x^2))/(60*x^5) + (67*b^5*pi^2*cos(b^2*pi*x^2))/(1440*x) - (cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(6*x^6) + (b^4*pi^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(48*x^2) + (7*b^6*pi^3*FresnelS(sqrt(2)*b*x))/(144*sqrt(2)) + (sqrt(2)*b^6*pi^3*FresnelS(sqrt(2)*b*x))/45 + (b^2*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(24*x^4) + (13*b^3*pi*sin(b^2*pi*x^2))/(720*x^3) + (b^6*pi^3*Unintegrable((FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x, x))/48]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^8, x, 19, -b/(84*x^6) + (b^5*pi^2)/(420*x^2) - (b*cos(b^2*pi*x^2))/(84*x^6) + (b^5*pi^2*cos(b^2*pi*x^2))/(84*x^2) - (cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(7*x^7) + (b^4*pi^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(105*x^3) + (b^7*pi^4*FresnelC(b*x)^2)/210 + (b^2*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(35*x^5) - (b^6*pi^3*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(105*x) + (b^3*pi*sin(b^2*pi*x^2))/(105*x^4) + (b^7*pi^3*SinIntegral(b^2*pi*x^2))/70]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^9, x, 18, -b/(112*x^7) + (b^5*pi^2)/(1152*x^3) - (b*cos(b^2*pi*x^2))/(112*x^7) + (187*b^5*pi^2*cos(b^2*pi*x^2))/(40320*x^3) - (cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(8*x^8) + (b^4*pi^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(192*x^4) + (853*b^8*pi^4*FresnelC(sqrt(2)*b*x))/(40320*sqrt(2)) + (b^2*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(48*x^6) - (b^6*pi^3*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(384*x^2) + (19*b^3*pi*sin(b^2*pi*x^2))/(3360*x^5) - (853*b^7*pi^3*sin(b^2*pi*x^2))/(80640*x) + (b^8*pi^4*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x, x))/384]
    @test_int [(cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^10, x, 22, -b/(144*x^8) + (b^5*pi^2)/(2520*x^4) - (b*cos(b^2*pi*x^2))/(144*x^8) + (67*b^5*pi^2*cos(b^2*pi*x^2))/(30240*x^4) + (5*b^9*pi^4*CosIntegral(b^2*pi*x^2))/2016 - (cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(9*x^9) + (b^4*pi^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(315*x^5) + (b^2*pi*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(63*x^7) - (b^6*pi^3*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(945*x^3) + (11*b^3*pi*sin(b^2*pi*x^2))/(3024*x^6) - (5*b^7*pi^3*sin(b^2*pi*x^2))/(2016*x^2) + (b^8*pi^4*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^2, x))/945]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*x^m*cos(c+d*x^2)*FresnelC(b*x)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sin(c+d*x^2)*FresnelC(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(pi/2*b^2*x^2)*FresnelC(b*x)^n=#


    @test_int [FresnelC(b*x)^n*sin((b^2*pi*x^2)/2), x, 0, Unintegrable(FresnelC(b*x)^n*sin((b^2*pi*x^2)/2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*sin(pi/2*b^2*x^2)*FresnelC(b*x)=#


    @test_int [x^8*FresnelC(b*x)*sin((b^2*pi*x^2)/2), x, 23, -((35*x^4)/(8*b^5*pi^3)) + x^8/(16*b*pi) - (40*cos(b^2*pi*x^2))/(b^9*pi^5) + (5*x^4*cos(b^2*pi*x^2))/(2*b^5*pi^3) + (35*x^3*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^6*pi^3) - (x^7*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^2*pi) + (105*FresnelC(b*x)*FresnelS(b*x))/(2*b^9*pi^4) + (105*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*b^7*pi^4) - (105*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*b^7*pi^4) - (105*x*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^8*pi^4) + (7*x^5*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^4*pi^2) - (55*x^2*sin(b^2*pi*x^2))/(4*b^7*pi^4) + (x^6*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^7*FresnelC(b*x)*sin((b^2*pi*x^2)/2), x, 18, (-4*x^3)/(b^5*pi^3) + x^7/(14*b*pi) + (17*x^3*cos(b^2*pi*x^2))/(8*b^5*pi^3) + (24*x^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^6*pi^3) - (x^6*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^2*pi) + (531*FresnelS(sqrt(2)*b*x))/(16*sqrt(2)*b^8*pi^4) - (48*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^8*pi^4) + (6*x^4*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^4*pi^2) - (147*x*sin(b^2*pi*x^2))/(16*b^7*pi^4) + (x^5*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^6*FresnelC(b*x)*sin((b^2*pi*x^2)/2), x, 16, -((15*x^2)/(4*b^5*pi^3)) + x^6/(12*b*pi) + (7*x^2*cos(b^2*pi*x^2))/(4*b^5*pi^3) + (15*x*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^6*pi^3) - (x^5*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^2*pi) - (15*FresnelC(b*x)^2)/(2*b^7*pi^3) + (5*x^3*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^4*pi^2) - (11*sin(b^2*pi*x^2))/(2*b^7*pi^4) + (x^4*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^5*FresnelC(b*x)*sin((b^2*pi*x^2)/2), x, 13, (-4*x)/(b^5*pi^3) + x^5/(10*b*pi) + (11*x*cos(b^2*pi*x^2))/(8*b^5*pi^3) + (8*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^6*pi^3) - (x^4*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^2*pi) - (43*FresnelC(sqrt(2)*b*x))/(8*sqrt(2)*b^6*pi^3) + (4*x^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^4*pi^2) + (x^3*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^4*FresnelC(b*x)*sin((b^2*pi*x^2)/2), x, 10, x^4/(8*b*pi) + cos(b^2*pi*x^2)/(b^5*pi^3) - (x^3*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^2*pi) - (3*FresnelC(b*x)*FresnelS(b*x))/(2*b^5*pi^2) - (3*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-(1/2))*im*b^2*pi*x^2))/(8*b^3*pi^2) + (3*im*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (1/2)*im*b^2*pi*x^2))/(8*b^3*pi^2) + (3*x*FresnelC(b*x)*sin((1/2)*b^2*pi*x^2))/(b^4*pi^2) + (x^2*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^3*FresnelC(b*x)*sin((b^2*pi*x^2)/2), x, 7, x^3/(6*b*pi) - (x^2*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^2*pi) - (5*FresnelS(sqrt(2)*b*x))/(4*sqrt(2)*b^4*pi^2) + (2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(b^4*pi^2) + (x*sin(b^2*pi*x^2))/(4*b^3*pi^2)]
    @test_int [x^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2), x, 5, x^2/(4*b*pi) - (x*cos((1/2)*b^2*pi*x^2)*FresnelC(b*x))/(b^2*pi) + FresnelC(b*x)^2/(2*b^3*pi) + sin(b^2*pi*x^2)/(4*b^3*pi^2)]
    @test_int [x^1*FresnelC(b*x)*sin((b^2*pi*x^2)/2), x, 4, x/(2*b*pi) - (cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(b^2*pi) + FresnelC(sqrt(2)*b*x)/(2*sqrt(2)*b^2*pi)]
    @test_int [x^0*FresnelC(b*x)*sin((b^2*pi*x^2)/2), x, 1, (FresnelC(b*x)*FresnelS(b*x))/(2*b) + (im/8)*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-im/2)*b^2*pi*x^2) - (im/8)*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (im/2)*b^2*pi*x^2)]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^1, x, 0, Unintegrable((FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x, x)]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^2, x, 4, (b*pi*FresnelC(b*x)^2)/2 - (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x + (b*SinIntegral(b^2*pi*x^2))/4]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^3, x, 3, (b^2*pi*FresnelC(sqrt(2)*b*x))/(2*sqrt(2)) - (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(2*x^2) - (b*sin(b^2*pi*x^2))/(4*x) + (b^2*pi*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x, x))/2]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^4, x, 4, (b^3*pi*CosIntegral(b^2*pi*x^2))/12 - (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(3*x^3) - (b*sin(b^2*pi*x^2))/(12*x^2) + (b^2*pi*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^2, x))/3]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^5, x, 7, -(b^3*pi)/(16*x) - (7*b^3*pi*cos(b^2*pi*x^2))/(48*x) - (b^2*pi*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(8*x^2) - (7*b^4*pi^2*FresnelS(sqrt(2)*b*x))/(24*sqrt(2)) - (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(4*x^4) - (b*sin(b^2*pi*x^2))/(24*x^3) - (b^4*pi^2*Unintegrable((FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x, x))/8]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^6, x, 13, -(b^3*pi)/(60*x^2) - (b^3*pi*cos(b^2*pi*x^2))/(24*x^2) - (b^2*pi*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(15*x^3) - (b^5*pi^3*FresnelC(b*x)^2)/30 - (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(5*x^5) + (b^4*pi^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(15*x) - (b*sin(b^2*pi*x^2))/(40*x^4) - (7*b^5*pi^2*SinIntegral(b^2*pi*x^2))/120]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^7, x, 12, -(b^3*pi)/(144*x^3) - (13*b^3*pi*cos(b^2*pi*x^2))/(720*x^3) - (b^2*pi*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(24*x^4) - (7*b^6*pi^3*FresnelC(sqrt(2)*b*x))/(144*sqrt(2)) - (sqrt(2)*b^6*pi^3*FresnelC(sqrt(2)*b*x))/45 - (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(6*x^6) + (b^4*pi^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(48*x^2) - (b*sin(b^2*pi*x^2))/(60*x^5) + (67*b^5*pi^2*sin(b^2*pi*x^2))/(1440*x) - (b^6*pi^3*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x, x))/48]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^8, x, 15, -(b^3*pi)/(280*x^4) - (b^3*pi*cos(b^2*pi*x^2))/(105*x^4) - (b^7*pi^3*CosIntegral(b^2*pi*x^2))/84 - (b^2*pi*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(35*x^5) - (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(7*x^7) + (b^4*pi^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(105*x^3) - (b*sin(b^2*pi*x^2))/(84*x^6) + (b^5*pi^2*sin(b^2*pi*x^2))/(84*x^2) - (b^6*pi^3*Unintegrable((cos((b^2*pi*x^2)/2)*FresnelC(b*x))/x^2, x))/105]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^9, x, 18, -(b^3*pi)/(480*x^5) + (b^7*pi^3)/(768*x) - (19*b^3*pi*cos(b^2*pi*x^2))/(3360*x^5) + (853*b^7*pi^3*cos(b^2*pi*x^2))/(80640*x) - (b^2*pi*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(48*x^6) + (b^6*pi^3*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(384*x^2) + (853*b^8*pi^4*FresnelS(sqrt(2)*b*x))/(40320*sqrt(2)) - (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(8*x^8) + (b^4*pi^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(192*x^4) - (b*sin(b^2*pi*x^2))/(112*x^7) + (187*b^5*pi^2*sin(b^2*pi*x^2))/(40320*x^3) + (b^8*pi^4*Unintegrable((FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x, x))/384]
    @test_int [(FresnelC(b*x)*sin((b^2*pi*x^2)/2))/x^10, x, 26, -(b^3*pi)/(756*x^6) + (b^7*pi^3)/(3780*x^2) - (11*b^3*pi*cos(b^2*pi*x^2))/(3024*x^6) + (5*b^7*pi^3*cos(b^2*pi*x^2))/(2016*x^2) - (b^2*pi*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(63*x^7) + (b^6*pi^3*cos((b^2*pi*x^2)/2)*FresnelC(b*x))/(945*x^3) + (b^9*pi^5*FresnelC(b*x)^2)/1890 - (FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(9*x^9) + (b^4*pi^2*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(315*x^5) - (b^8*pi^4*FresnelC(b*x)*sin((b^2*pi*x^2)/2))/(945*x) - (b*sin(b^2*pi*x^2))/(144*x^8) + (67*b^5*pi^2*sin(b^2*pi*x^2))/(30240*x^4) + (83*b^9*pi^4*SinIntegral(b^2*pi*x^2))/30240]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*x^m*sin(c+d*x^2)*FresnelC(b*x)=#
    end
