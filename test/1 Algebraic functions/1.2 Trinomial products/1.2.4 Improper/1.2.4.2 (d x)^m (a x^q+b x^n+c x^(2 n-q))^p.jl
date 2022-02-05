@testset "1.2.4.2 (d x)^m (a x^q+b x^n+c x^(2 n-q))^p" begin
    @variables a, b, c, d, e, m, n, q, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*problems*of*the*form*x^m*(a*x^q+b*x^n+c*x^(2*n-q))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a*x^2+b*x^3+c*x^4)^p=#


    #= ::Subsection::Closed:: =#
    #=x^m*(a*x^2+b*x^3+c*x^4)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^2*(a*x^2 + b*x^3 + c*x^4), x, 2, (a*x^5)/5 + (b*x^6)/6 + (c*x^7)/7]
    @test_int [x*(a*x^2 + b*x^3 + c*x^4), x, 2, (a*x^4)/4 + (b*x^5)/5 + (c*x^6)/6]
    @test_int [a*x^2 + b*x^3 + c*x^4, x, 1, (a*x^3)/3 + (b*x^4)/4 + (c*x^5)/5]
    @test_int [(a*x^2 + b*x^3 + c*x^4)/x, x, 2, (a*x^2)/2 + (b*x^3)/3 + (c*x^4)/4]
    @test_int [(a*x^2 + b*x^3 + c*x^4)/x^2, x, 2, a*x + (b*x^2)/2 + (c*x^3)/3]


    @test_int [x^2*(a*x^2 + b*x^3 + c*x^4)^2, x, 3, (a^2*x^7)/7 + (a*b*x^8)/4 + ((b^2 + 2*a*c)*x^9)/9 + (b*c*x^10)/5 + (c^2*x^11)/11]
    @test_int [x*(a*x^2 + b*x^3 + c*x^4)^2, x, 3, (a^2*x^6)/6 + (2*a*b*x^7)/7 + ((b^2 + 2*a*c)*x^8)/8 + (2*b*c*x^9)/9 + (c^2*x^10)/10]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^2, x, 3, (a^2*x^5)/5 + (a*b*x^6)/3 + ((b^2 + 2*a*c)*x^7)/7 + (b*c*x^8)/4 + (c^2*x^9)/9]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^2/x, x, 3, (a^2*x^4)/4 + (2*a*b*x^5)/5 + ((b^2 + 2*a*c)*x^6)/6 + (2*b*c*x^7)/7 + (c^2*x^8)/8]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^2/x^2, x, 3, (a^2*x^3)/3 + (a*b*x^4)/2 + ((b^2 + 2*a*c)*x^5)/5 + (b*c*x^6)/3 + (c^2*x^7)/7]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^5/(a*x^2 + b*x^3 + c*x^4), x, 7, -((b*x)/c^2) + x^2/(2*c) + (b*(b^2 - 3*a*c)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(c^3*sqrt(b^2 - 4*a*c)) + ((b^2 - a*c)*log(a + b*x + c*x^2))/(2*c^3)]
    @test_int [x^4/(a*x^2 + b*x^3 + c*x^4), x, 6, x/c - ((b^2 - 2*a*c)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(c^2*sqrt(b^2 - 4*a*c)) - (b*log(a + b*x + c*x^2))/(2*c^2)]
    @test_int [x^3/(a*x^2 + b*x^3 + c*x^4), x, 5, (b*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(c*sqrt(b^2 - 4*a*c)) + log(a + b*x + c*x^2)/(2*c)]
    @test_int [x^2/(a*x^2 + b*x^3 + c*x^4), x, 3, (-2*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/sqrt(b^2 - 4*a*c)]
    @test_int [x/(a*x^2 + b*x^3 + c*x^4), x, 7, (b*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(a*sqrt(b^2 - 4*a*c)) + log(x)/a - log(a + b*x + c*x^2)/(2*a)]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(-1), x, 8, -(1/(a*x)) - ((b^2 - 2*a*c)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(a^2*sqrt(b^2 - 4*a*c)) - (b*log(x))/a^2 + (b*log(a + b*x + c*x^2))/(2*a^2)]
    @test_int [1/(x*(a*x^2 + b*x^3 + c*x^4)), x, 8, -1/(2*a*x^2) + b/(a^2*x) + (b*(b^2 - 3*a*c)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(a^3*sqrt(b^2 - 4*a*c)) + ((b^2 - a*c)*log(x))/a^3 - ((b^2 - a*c)*log(a + b*x + c*x^2))/(2*a^3)]
    @test_int [1/(x^2*(a*x^2 + b*x^3 + c*x^4)), x, 8, -1/(3*a*x^3) + b/(2*a^2*x^2) - (b^2 - a*c)/(a^3*x) - ((b^4 - 4*a*b^2*c + 2*a^2*c^2)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(a^4*sqrt(b^2 - 4*a*c)) - (b*(b^2 - 2*a*c)*log(x))/a^4 + (b*(b^2 - 2*a*c)*log(a + b*x + c*x^2))/(2*a^4)]


    @test_int [x^8/(a*x^2 + b*x^3 + c*x^4)^2, x, 8, (2*(b^2 - 3*a*c)*x)/(c^2*(b^2 - 4*a*c)) - (b*x^2)/(c*(b^2 - 4*a*c)) + (x^3*(2*a + b*x))/((b^2 - 4*a*c)*(a + b*x + c*x^2)) - (2*(b^4 - 6*a*b^2*c + 6*a^2*c^2)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(c^3*(b^2 - 4*a*c)^(3/2)) - (b*log(a + b*x + c*x^2))/c^3]
    @test_int [x^7/(a*x^2 + b*x^3 + c*x^4)^2, x, 7, -((b*x)/(c*(b^2 - 4*a*c))) + (x^2*(2*a + b*x))/((b^2 - 4*a*c)*(a + b*x + c*x^2)) + (b*(b^2 - 6*a*c)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(c^2*(b^2 - 4*a*c)^(3/2)) + log(a + b*x + c*x^2)/(2*c^2)]
    @test_int [x^6/(a*x^2 + b*x^3 + c*x^4)^2, x, 4, (x*(2*a + b*x))/((b^2 - 4*a*c)*(a + b*x + c*x^2)) + (4*a*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(b^2 - 4*a*c)^(3/2)]
    @test_int [x^5/(a*x^2 + b*x^3 + c*x^4)^2, x, 4, (2*a + b*x)/((b^2 - 4*a*c)*(a + b*x + c*x^2)) - (2*b*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(b^2 - 4*a*c)^(3/2)]
    @test_int [x^4/(a*x^2 + b*x^3 + c*x^4)^2, x, 4, -((b + 2*c*x)/((b^2 - 4*a*c)*(a + b*x + c*x^2))) + (4*c*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(b^2 - 4*a*c)^(3/2)]
    @test_int [x^3/(a*x^2 + b*x^3 + c*x^4)^2, x, 8, (b^2 - 2*a*c + b*c*x)/(a*(b^2 - 4*a*c)*(a + b*x + c*x^2)) + (b*(b^2 - 6*a*c)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(a^2*(b^2 - 4*a*c)^(3/2)) + log(x)/a^2 - log(a + b*x + c*x^2)/(2*a^2)]
    @test_int [x^2/(a*x^2 + b*x^3 + c*x^4)^2, x, 8, (-2*(b^2 - 3*a*c))/(a^2*(b^2 - 4*a*c)*x) + (b^2 - 2*a*c + b*c*x)/(a*(b^2 - 4*a*c)*x*(a + b*x + c*x^2)) - (2*(b^4 - 6*a*b^2*c + 6*a^2*c^2)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(a^3*(b^2 - 4*a*c)^(3/2)) - (2*b*log(x))/a^3 + (b*log(a + b*x + c*x^2))/a^3]
    @test_int [x^1/(a*x^2 + b*x^3 + c*x^4)^2, x, 8, -((3*b^2 - 8*a*c)/(2*a^2*(b^2 - 4*a*c)*x^2)) + (b*(3*b^2 - 11*a*c))/(a^3*(b^2 - 4*a*c)*x) + (b^2 - 2*a*c + b*c*x)/(a*(b^2 - 4*a*c)*x^2*(a + b*x + c*x^2)) + (b*(3*b^4 - 20*a*b^2*c + 30*a^2*c^2)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(a^4*(b^2 - 4*a*c)^(3/2)) + ((3*b^2 - 2*a*c)*log(x))/a^4 - ((3*b^2 - 2*a*c)*log(a + b*x + c*x^2))/(2*a^4)]
    @test_int [x^0/(a*x^2 + b*x^3 + c*x^4)^2, x, 8, -((2*(2*b^2 - 5*a*c))/(3*a^2*(b^2 - 4*a*c)*x^3)) + (b*(2*b^2 - 7*a*c))/(a^3*(b^2 - 4*a*c)*x^2) - (2*(2*b^4 - 9*a*b^2*c + 5*a^2*c^2))/(a^4*(b^2 - 4*a*c)*x) + (b^2 - 2*a*c + b*c*x)/(a*(b^2 - 4*a*c)*x^3*(a + b*x + c*x^2)) - (2*(2*b^6 - 15*a*b^4*c + 30*a^2*b^2*c^2 - 10*a^3*c^3)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(a^5*(b^2 - 4*a*c)^(3/2)) - (2*b*(2*b^2 - 3*a*c)*log(x))/a^5 + (b*(2*b^2 - 3*a*c)*log(a + b*x + c*x^2))/a^5]
    @test_int [1/(x*(a*x^2 + b*x^3 + c*x^4)^2), x, 8, -((5*b^2 - 12*a*c)/(4*a^2*(b^2 - 4*a*c)*x^4)) + (b*(5*b^2 - 17*a*c))/(3*a^3*(b^2 - 4*a*c)*x^3) - (5*b^4 - 22*a*b^2*c + 12*a^2*c^2)/(2*a^4*(b^2 - 4*a*c)*x^2) + (b*(5*b^4 - 27*a*b^2*c + 29*a^2*c^2))/(a^5*(b^2 - 4*a*c)*x) + (b^2 - 2*a*c + b*c*x)/(a*(b^2 - 4*a*c)*x^4*(a + b*x + c*x^2)) + (b*(5*b^6 - 42*a*b^4*c + 105*a^2*b^2*c^2 - 70*a^3*c^3)*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(a^6*(b^2 - 4*a*c)^(3/2)) + ((5*b^4 - 12*a*b^2*c + 3*a^2*c^2)*log(x))/a^6 - ((5*b^4 - 12*a*b^2*c + 3*a^2*c^2)*log(a + b*x + c*x^2))/(2*a^6)]


    #= ::Subsection::Closed:: =#
    #=x^m*(a*x^2+b*x^3+c*x^4)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^2*sqrt(a*x^2 + b*x^3 + c*x^4), x, 8, (b*(35*b^2 - 116*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(960*c^3) - ((105*b^4 - 460*a*b^2*c + 256*a^2*c^2)*sqrt(a*x^2 + b*x^3 + c*x^4))/(1920*c^4*x) - ((7*b^2 - 16*a*c)*x*sqrt(a*x^2 + b*x^3 + c*x^4))/(240*c^2) + (x^2*(b + 8*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(40*c) + (b*(7*b^2 - 12*a*c)*(b^2 - 4*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(256*c^(9/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [x*sqrt(a*x^2 + b*x^3 + c*x^4), x, 7, -(((5*b^2 - 12*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(96*c^2)) + (b*(15*b^2 - 52*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(192*c^3*x) + (x*(b + 6*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(24*c) - ((b^2 - 4*a*c)*(5*b^2 - 4*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(128*c^(7/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [sqrt(a*x^2 + b*x^3 + c*x^4), x, 5, -((b*(b + 2*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(8*c^2*x)) + ((a + b*x + c*x^2)*sqrt(a*x^2 + b*x^3 + c*x^4))/(3*c*x) + (b*(b^2 - 4*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(16*c^(5/2)*x*sqrt(a + b*x + c*x^2))]
    @test_int [sqrt(a*x^2 + b*x^3 + c*x^4)/x, x, 4, ((b + 2*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(4*c*x) - ((b^2 - 4*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(8*c^(3/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [sqrt(a*x^2 + b*x^3 + c*x^4)/x^2, x, 7, sqrt(a*x^2 + b*x^3 + c*x^4)/x - (sqrt(a)*x*sqrt(a + b*x + c*x^2)*atanh((2*a + b*x)/(2*sqrt(a)*sqrt(a + b*x + c*x^2))))/sqrt(a*x^2 + b*x^3 + c*x^4) + (b*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(2*sqrt(c)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [sqrt(a*x^2 + b*x^3 + c*x^4)/x^3, x, 7, -(sqrt(a*x^2 + b*x^3 + c*x^4)/x^2) - (b*x*sqrt(a + b*x + c*x^2)*atanh((2*a + b*x)/(2*sqrt(a)*sqrt(a + b*x + c*x^2))))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4)) + (sqrt(c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/sqrt(a*x^2 + b*x^3 + c*x^4)]
    @test_int [sqrt(a*x^2 + b*x^3 + c*x^4)/x^4, x, 5, -(sqrt(a*x^2 + b*x^3 + c*x^4)/(2*x^3)) - (b*sqrt(a*x^2 + b*x^3 + c*x^4))/(4*a*x^2) + ((b^2 - 4*a*c)*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(8*a^(3/2))]
    @test_int [sqrt(a*x^2 + b*x^3 + c*x^4)/x^5, x, 6, -(sqrt(a*x^2 + b*x^3 + c*x^4)/(3*x^4)) - (b*sqrt(a*x^2 + b*x^3 + c*x^4))/(12*a*x^3) + ((3*b^2 - 8*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(24*a^2*x^2) - (b*(b^2 - 4*a*c)*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(16*a^(5/2))]
    @test_int [sqrt(a*x^2 + b*x^3 + c*x^4)/x^6, x, 7, -(sqrt(a*x^2 + b*x^3 + c*x^4)/(4*x^5)) - (b*sqrt(a*x^2 + b*x^3 + c*x^4))/(24*a*x^4) + ((5*b^2 - 12*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(96*a^2*x^3) - (b*(15*b^2 - 52*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(192*a^3*x^2) + ((b^2 - 4*a*c)*(5*b^2 - 4*a*c)*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(128*a^(7/2))]


    @test_int [x*(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 10, ((1155*b^6 - 8988*a*b^4*c + 18896*a^2*b^2*c^2 - 6720*a^3*c^3)*sqrt(a*x^2 + b*x^3 + c*x^4))/(286720*c^5) - (b*(3465*b^6 - 30660*a*b^4*c + 81648*a^2*b^2*c^2 - 58816*a^3*c^3)*sqrt(a*x^2 + b*x^3 + c*x^4))/(573440*c^6*x) - (b*(231*b^4 - 1560*a*b^2*c + 2416*a^2*c^2)*x*sqrt(a*x^2 + b*x^3 + c*x^4))/(71680*c^4) + ((99*b^4 - 568*a*b^2*c + 560*a^2*c^2)*x^2*sqrt(a*x^2 + b*x^3 + c*x^4))/(35840*c^3) - (x^3*(b*(11*b^2 + 68*a*c) + 10*c*(11*b^2 - 28*a*c)*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(4480*c^2) + (x*(3*b + 14*c*x)*(a*x^2 + b*x^3 + c*x^4)^(3/2))/(112*c) + (3*(b^2 - 4*a*c)^2*(33*b^4 - 72*a*b^2*c + 16*a^2*c^2)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(32768*c^(13/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 10, -((b*(105*b^4 - 728*a*b^2*c + 1168*a^2*c^2)*sqrt(a*x^2 + b*x^3 + c*x^4))/(17920*c^4)) + ((315*b^6 - 2520*a*b^4*c + 5488*a^2*b^2*c^2 - 2048*a^3*c^3)*sqrt(a*x^2 + b*x^3 + c*x^4))/(35840*c^5*x) + ((7*b^2 - 32*a*c)*(3*b^2 - 4*a*c)*x*sqrt(a*x^2 + b*x^3 + c*x^4))/(4480*c^3) - (b*(9*b^2 - 44*a*c)*x^2*sqrt(a*x^2 + b*x^3 + c*x^4))/(2240*c^2) + (x^3*(b^2 + 24*a*c + 10*b*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(280*c) + (1/7)*x*(a*x^2 + b*x^3 + c*x^4)^(3/2) - (3*b*(b^2 - 4*a*c)^2*(3*b^2 - 4*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(2048*c^(11/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2)/x, x, 8, ((35*b^4 - 216*a*b^2*c + 240*a^2*c^2)*sqrt(a*x^2 + b*x^3 + c*x^4))/(3840*c^3) - (b*(105*b^4 - 760*a*b^2*c + 1296*a^2*c^2)*sqrt(a*x^2 + b*x^3 + c*x^4))/(7680*c^4*x) - (x*(b*(7*b^2 + 12*a*c) + 6*c*(7*b^2 - 20*a*c)*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(960*c^2) + ((3*b + 10*c*x)*(a*x^2 + b*x^3 + c*x^4)^(3/2))/(60*c*x) + ((b^2 - 4*a*c)^2*(7*b^2 - 4*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(1024*c^(9/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2)/x^2, x, 6, (3*b*(b^2 - 4*a*c)*(b + 2*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(128*c^3*x) - (b*(b + 2*c*x)*(a*x^2 + b*x^3 + c*x^4)^(3/2))/(16*c^2*x^3) + (a*x^2 + b*x^3 + c*x^4)^(5/2)/(5*c*x^5) - (3*b*(b^2 - 4*a*c)^2*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(256*c^(7/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2)/x^3, x, 5, -((3*(b^2 - 4*a*c)*(b + 2*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(64*c^2*x)) + ((b + 2*c*x)*(a*x^2 + b*x^3 + c*x^4)^(3/2))/(8*c*x^3) + (3*(b^2 - 4*a*c)^2*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(128*c^(5/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2)/x^4, x, 8, ((b^2 + 8*a*c + 2*b*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(8*c*x) + (a*x^2 + b*x^3 + c*x^4)^(3/2)/(3*x^3) - (a^(3/2)*x*sqrt(a + b*x + c*x^2)*atanh((2*a + b*x)/(2*sqrt(a)*sqrt(a + b*x + c*x^2))))/sqrt(a*x^2 + b*x^3 + c*x^4) - (b*(b^2 - 12*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(16*c^(3/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2)/x^5, x, 8, (3*(3*b + 2*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(4*x) - (a*x^2 + b*x^3 + c*x^4)^(3/2)/x^4 - (3*sqrt(a)*b*x*sqrt(a + b*x + c*x^2)*atanh((2*a + b*x)/(2*sqrt(a)*sqrt(a + b*x + c*x^2))))/(2*sqrt(a*x^2 + b*x^3 + c*x^4)) + (3*(b^2 + 4*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(8*sqrt(c)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2)/x^6, x, 8, -((3*(b - 2*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(4*x^2)) - (a*x^2 + b*x^3 + c*x^4)^(3/2)/(2*x^5) - (3*(b^2 + 4*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((2*a + b*x)/(2*sqrt(a)*sqrt(a + b*x + c*x^2))))/(8*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4)) + (3*b*sqrt(c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(2*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2)/x^7, x, 9, ((b^2 - 8*a*c + 2*b*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(8*a*x^2) - (a*x^2 + b*x^3 + c*x^4)^(3/2)/(3*x^6) - (b*(a*x^2 + b*x^3 + c*x^4)^(3/2))/(4*a*x^5) + (b*(b^2 - 12*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((2*a + b*x)/(2*sqrt(a)*sqrt(a + b*x + c*x^2))))/(16*a^(3/2)*sqrt(a*x^2 + b*x^3 + c*x^4)) + (c^(3/2)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/sqrt(a*x^2 + b*x^3 + c*x^4)]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2)/x^8, x, 7, -(((b^2 - 12*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(32*a*x^3)) + (b*(3*b^2 - 20*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(64*a^2*x^2) - ((b + 6*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(8*x^4) - (a*x^2 + b*x^3 + c*x^4)^(3/2)/(4*x^7) - (3*(b^2 - 4*a*c)^2*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(128*a^(5/2))]
    @test_int [(a*x^2 + b*x^3 + c*x^4)^(3/2)/x^9, x, 8, -(((b^2 - 8*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(80*a*x^4)) + (b*(5*b^2 - 28*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(320*a^2*x^3) - ((15*b^4 - 100*a*b^2*c + 128*a^2*c^2)*sqrt(a*x^2 + b*x^3 + c*x^4))/(640*a^3*x^2) - (3*(b + 4*c*x)*sqrt(a*x^2 + b*x^3 + c*x^4))/(40*x^5) - (a*x^2 + b*x^3 + c*x^4)^(3/2)/(5*x^8) + (3*b*(b^2 - 4*a*c)^2*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(256*a^(7/2))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^3/sqrt(a*x^2 + b*x^3 + c*x^4), x, 6, -((3*b*sqrt(a*x^2 + b*x^3 + c*x^4))/(4*c^2*x)) + sqrt(a*x^2 + b*x^3 + c*x^4)/(2*c) + ((3*b^2 - 4*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(8*c^(5/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [x^2/sqrt(a*x^2 + b*x^3 + c*x^4), x, 4, sqrt(a*x^2 + b*x^3 + c*x^4)/(c*x) - (b*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(2*c^(3/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [x/sqrt(a*x^2 + b*x^3 + c*x^4), x, 3, (x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(sqrt(c)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [1/sqrt(a*x^2 + b*x^3 + c*x^4), x, 2, -(atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4)))/sqrt(a))]
    @test_int [1/(x*sqrt(a*x^2 + b*x^3 + c*x^4)), x, 3, -(sqrt(a*x^2 + b*x^3 + c*x^4)/(a*x^2)) + (b*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(2*a^(3/2))]
    @test_int [1/(x^2*sqrt(a*x^2 + b*x^3 + c*x^4)), x, 5, -(sqrt(a*x^2 + b*x^3 + c*x^4)/(2*a*x^3)) + (3*b*sqrt(a*x^2 + b*x^3 + c*x^4))/(4*a^2*x^2) - ((3*b^2 - 4*a*c)*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(8*a^(5/2))]


    @test_int [x^7/(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 8, (2*x^4*(2*a + b*x))/((b^2 - 4*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4)) + ((5*b^2 - 12*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(2*c^2*(b^2 - 4*a*c)) - (b*(15*b^2 - 52*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(4*c^3*(b^2 - 4*a*c)*x) - (2*b*x*sqrt(a*x^2 + b*x^3 + c*x^4))/(c*(b^2 - 4*a*c)) + (3*(5*b^2 - 4*a*c)*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(8*c^(7/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [x^6/(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 7, (2*x^3*(2*a + b*x))/((b^2 - 4*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4)) - (2*b*sqrt(a*x^2 + b*x^3 + c*x^4))/(c*(b^2 - 4*a*c)) + ((3*b^2 - 8*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(c^2*(b^2 - 4*a*c)*x) - (3*b*x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(2*c^(5/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [x^5/(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 6, (2*x^2*(2*a + b*x))/((b^2 - 4*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4)) - (2*b*sqrt(a*x^2 + b*x^3 + c*x^4))/(c*(b^2 - 4*a*c)*x) + (x*sqrt(a + b*x + c*x^2)*atanh((b + 2*c*x)/(2*sqrt(c)*sqrt(a + b*x + c*x^2))))/(c^(3/2)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [x^4/(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 1, (2*x*(2*a + b*x))/((b^2 - 4*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))]
    @test_int [x^3/(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 1, -((2*x*(b + 2*c*x))/((b^2 - 4*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4)))]
    @test_int [x^2/(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 3, (2*x*(b^2 - 2*a*c + b*c*x))/(a*(b^2 - 4*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4)) - atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4)))/a^(3/2)]
    @test_int [x/(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 5, (2*(b^2 - 2*a*c + b*c*x))/(a*(b^2 - 4*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4)) - ((3*b^2 - 8*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(a^2*(b^2 - 4*a*c)*x^2) + (3*b*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(2*a^(5/2))]
    @test_int [1/(a*x^2 + b*x^3 + c*x^4)^(3/2), x, 6, (2*(b^2 - 2*a*c + b*c*x))/(a*(b^2 - 4*a*c)*x*sqrt(a*x^2 + b*x^3 + c*x^4)) - ((5*b^2 - 12*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(2*a^2*(b^2 - 4*a*c)*x^3) + (b*(15*b^2 - 52*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(4*a^3*(b^2 - 4*a*c)*x^2) - (3*(5*b^2 - 4*a*c)*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(8*a^(7/2))]
    @test_int [1/(x*(a*x^2 + b*x^3 + c*x^4)^(3/2)), x, 7, (2*(b^2 - 2*a*c + b*c*x))/(a*(b^2 - 4*a*c)*x^2*sqrt(a*x^2 + b*x^3 + c*x^4)) - ((7*b^2 - 16*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(3*a^2*(b^2 - 4*a*c)*x^4) + (b*(35*b^2 - 116*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(12*a^3*(b^2 - 4*a*c)*x^3) - ((105*b^4 - 460*a*b^2*c + 256*a^2*c^2)*sqrt(a*x^2 + b*x^3 + c*x^4))/(24*a^4*(b^2 - 4*a*c)*x^2) + (5*b*(7*b^2 - 12*a*c)*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(16*a^(9/2))]
    @test_int [1/(x^2*(a*x^2 + b*x^3 + c*x^4)^(3/2)), x, 8, (2*(b^2 - 2*a*c + b*c*x))/(a*(b^2 - 4*a*c)*x^3*sqrt(a*x^2 + b*x^3 + c*x^4)) - ((9*b^2 - 20*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(4*a^2*(b^2 - 4*a*c)*x^5) + (b*(21*b^2 - 68*a*c)*sqrt(a*x^2 + b*x^3 + c*x^4))/(8*a^3*(b^2 - 4*a*c)*x^4) - ((105*b^4 - 448*a*b^2*c + 240*a^2*c^2)*sqrt(a*x^2 + b*x^3 + c*x^4))/(32*a^4*(b^2 - 4*a*c)*x^3) + (b*(315*b^4 - 1680*a*b^2*c + 1808*a^2*c^2)*sqrt(a*x^2 + b*x^3 + c*x^4))/(64*a^5*(b^2 - 4*a*c)*x^2) - (15*(21*b^4 - 56*a*b^2*c + 16*a^2*c^2)*atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4))))/(128*a^(11/2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a*x+b*x^3+c*x^5)^p=#


    #= ::Subsection::Closed:: =#
    #=x^m*(a*x+b*x^3+c*x^5)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^m*(a*x + b*x^3 + c*x^5), x, 2, (a*x^(2 + m))/(2 + m) + (b*x^(4 + m))/(4 + m) + (c*x^(6 + m))/(6 + m)]

    @test_int [x^2*(a*x + b*x^3 + c*x^5), x, 2, (a*x^4)/4 + (b*x^6)/6 + (c*x^8)/8]
    @test_int [x^1*(a*x + b*x^3 + c*x^5), x, 2, (a*x^3)/3 + (b*x^5)/5 + (c*x^7)/7]
    @test_int [x^0*(a*x + b*x^3 + c*x^5), x, 1, (a*x^2)/2 + (b*x^4)/4 + (c*x^6)/6]
    @test_int [(a*x + b*x^3 + c*x^5)/x^1, x, 2, a*x + (b*x^3)/3 + (c*x^5)/5]
    @test_int [(a*x + b*x^3 + c*x^5)/x^2, x, 2, (b*x^2)/2 + (c*x^4)/4 + a*log(x)]
    @test_int [(a*x + b*x^3 + c*x^5)/x^3, x, 2, -(a/x) + b*x + (c*x^3)/3]


    @test_int [x^m*(a*x + b*x^3 + c*x^5)^2, x, 3, (a^2*x^(3 + m))/(3 + m) + (2*a*b*x^(5 + m))/(5 + m) + ((b^2 + 2*a*c)*x^(7 + m))/(7 + m) + (2*b*c*x^(9 + m))/(9 + m) + (c^2*x^(11 + m))/(11 + m)]

    @test_int [x^2*(a*x + b*x^3 + c*x^5)^2, x, 3, (a^2*x^5)/5 + (2*a*b*x^7)/7 + ((b^2 + 2*a*c)*x^9)/9 + (2*b*c*x^11)/11 + (c^2*x^13)/13]
    @test_int [x^1*(a*x + b*x^3 + c*x^5)^2, x, 4, (a^2*x^4)/4 + (a*b*x^6)/3 + ((b^2 + 2*a*c)*x^8)/8 + (b*c*x^10)/5 + (c^2*x^12)/12]
    @test_int [x^0*(a*x + b*x^3 + c*x^5)^2, x, 3, (a^2*x^3)/3 + (2*a*b*x^5)/5 + ((b^2 + 2*a*c)*x^7)/7 + (2*b*c*x^9)/9 + (c^2*x^11)/11]
    @test_int [(a*x + b*x^3 + c*x^5)^2/x^1, x, 4, (a^2*x^2)/2 + (a*b*x^4)/2 + ((b^2 + 2*a*c)*x^6)/6 + (b*c*x^8)/4 + (c^2*x^10)/10]
    @test_int [(a*x + b*x^3 + c*x^5)^2/x^2, x, 3, a^2*x + (2*a*b*x^3)/3 + ((b^2 + 2*a*c)*x^5)/5 + (2*b*c*x^7)/7 + (c^2*x^9)/9]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^8/(a*x + b*x^3 + c*x^5), x, 8, -((b*x^2)/(2*c^2)) + x^4/(4*c) + (b*(b^2 - 3*a*c)*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(2*c^3*sqrt(b^2 - 4*a*c)) + ((b^2 - a*c)*log(a + b*x^2 + c*x^4))/(4*c^3)]
    @test_int [x^7/(a*x + b*x^3 + c*x^5), x, 6, -((b*x)/c^2) + x^3/(3*c) + ((b^2 - a*c - (b*(b^2 - 3*a*c))/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(sqrt(2)*c^(5/2)*sqrt(b - sqrt(b^2 - 4*a*c))) + ((b^2 - a*c + (b*(b^2 - 3*a*c))/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(sqrt(2)*c^(5/2)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [x^6/(a*x + b*x^3 + c*x^5), x, 7, x^2/(2*c) - ((b^2 - 2*a*c)*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(2*c^2*sqrt(b^2 - 4*a*c)) - (b*log(a + b*x^2 + c*x^4))/(4*c^2)]
    @test_int [x^5/(a*x + b*x^3 + c*x^5), x, 5, x/c - ((b - (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(sqrt(2)*c^(3/2)*sqrt(b - sqrt(b^2 - 4*a*c))) - ((b + (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(sqrt(2)*c^(3/2)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [x^4/(a*x + b*x^3 + c*x^5), x, 6, (b*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(2*c*sqrt(b^2 - 4*a*c)) + log(a + b*x^2 + c*x^4)/(4*c)]
    @test_int [x^3/(a*x + b*x^3 + c*x^5), x, 4, -((sqrt(b - sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(sqrt(2)*sqrt(c)*sqrt(b^2 - 4*a*c))) + (sqrt(b + sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(sqrt(2)*sqrt(c)*sqrt(b^2 - 4*a*c))]
    @test_int [x^2/(a*x + b*x^3 + c*x^5), x, 4, -(atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c))/sqrt(b^2 - 4*a*c))]
    @test_int [x/(a*x + b*x^3 + c*x^5), x, 4, (sqrt(2)*sqrt(c)*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*sqrt(b - sqrt(b^2 - 4*a*c))) - (sqrt(2)*sqrt(c)*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [1/(a*x + b*x^3 + c*x^5), x, 8, (b*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(2*a*sqrt(b^2 - 4*a*c)) + log(x)/a - log(a + b*x^2 + c*x^4)/(4*a)]
    @test_int [1/(x*(a*x + b*x^3 + c*x^5)), x, 5, -(1/(a*x)) - (sqrt(c)*(1 + b/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(sqrt(2)*a*sqrt(b - sqrt(b^2 - 4*a*c))) - (sqrt(c)*(1 - b/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(sqrt(2)*a*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [1/(x^2*(a*x + b*x^3 + c*x^5)), x, 9, -1/(2*a*x^2) - ((b^2 - 2*a*c)*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(2*a^2*sqrt(b^2 - 4*a*c)) - (b*log(x))/a^2 + (b*log(a + b*x^2 + c*x^4))/(4*a^2)]


    @test_int [x^11/(a*x + b*x^3 + c*x^5)^2, x, 9, ((b^2 - 3*a*c)*x^2)/(c^2*(b^2 - 4*a*c)) - (b*x^4)/(2*c*(b^2 - 4*a*c)) + (x^6*(2*a + b*x^2))/(2*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4)) - ((b^4 - 6*a*b^2*c + 6*a^2*c^2)*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(c^3*(b^2 - 4*a*c)^(3/2)) - (b*log(a + b*x^2 + c*x^4))/(2*c^3)]
    @test_int [x^10/(a*x + b*x^3 + c*x^5)^2, x, 7, ((3*b^2 - 10*a*c)*x)/(2*c^2*(b^2 - 4*a*c)) - (b*x^3)/(2*c*(b^2 - 4*a*c)) + (x^5*(2*a + b*x^2))/(2*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4)) - ((3*b^3 - 13*a*b*c - (3*b^4 - 19*a*b^2*c + 20*a^2*c^2)/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*c^(5/2)*(b^2 - 4*a*c)*sqrt(b - sqrt(b^2 - 4*a*c))) - ((3*b^3 - 13*a*b*c + (3*b^4 - 19*a*b^2*c + 20*a^2*c^2)/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*c^(5/2)*(b^2 - 4*a*c)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [x^9/(a*x + b*x^3 + c*x^5)^2, x, 8, -((b*x^2)/(2*c*(b^2 - 4*a*c))) + (x^4*(2*a + b*x^2))/(2*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4)) + (b*(b^2 - 6*a*c)*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(2*c^2*(b^2 - 4*a*c)^(3/2)) + log(a + b*x^2 + c*x^4)/(4*c^2)]
    @test_int [x^8/(a*x + b*x^3 + c*x^5)^2, x, 6, -((b*x)/(2*c*(b^2 - 4*a*c))) + (x^3*(2*a + b*x^2))/(2*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4)) + ((b^2 - 6*a*c - (b*(b^2 - 8*a*c))/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*c^(3/2)*(b^2 - 4*a*c)*sqrt(b - sqrt(b^2 - 4*a*c))) + ((b^2 - 6*a*c + (b*(b^2 - 8*a*c))/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*c^(3/2)*(b^2 - 4*a*c)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [x^7/(a*x + b*x^3 + c*x^5)^2, x, 5, (x^2*(2*a + b*x^2))/(2*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4)) + (2*a*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(b^2 - 4*a*c)^(3/2)]
    @test_int [x^6/(a*x + b*x^3 + c*x^5)^2, x, 5, (x*(2*a + b*x^2))/(2*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4)) + ((b - (b^2 + 4*a*c)/sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*sqrt(c)*(b^2 - 4*a*c)*sqrt(b - sqrt(b^2 - 4*a*c))) + ((b^2 + 4*a*c + b*sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*sqrt(c)*(b^2 - 4*a*c)^(3/2)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [x^5/(a*x + b*x^3 + c*x^5)^2, x, 5, (2*a + b*x^2)/(2*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4)) - (b*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(b^2 - 4*a*c)^(3/2)]
    @test_int [x^4/(a*x + b*x^3 + c*x^5)^2, x, 5, -((x*(b + 2*c*x^2))/(2*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4))) + (sqrt(c)*(2*b - sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(sqrt(2)*(b^2 - 4*a*c)^(3/2)*sqrt(b - sqrt(b^2 - 4*a*c))) - (sqrt(c)*(2*b + sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(sqrt(2)*(b^2 - 4*a*c)^(3/2)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [x^3/(a*x + b*x^3 + c*x^5)^2, x, 5, -((b + 2*c*x^2)/(2*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4))) + (2*c*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(b^2 - 4*a*c)^(3/2)]
    @test_int [x^2/(a*x + b*x^3 + c*x^5)^2, x, 5, (x*(b^2 - 2*a*c + b*c*x^2))/(2*a*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4)) + (sqrt(c)*(b^2 - 12*a*c + b*sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*a*(b^2 - 4*a*c)^(3/2)*sqrt(b - sqrt(b^2 - 4*a*c))) - (sqrt(c)*(b^2 - 12*a*c - b*sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*a*(b^2 - 4*a*c)^(3/2)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [x^1/(a*x + b*x^3 + c*x^5)^2, x, 9, (b^2 - 2*a*c + b*c*x^2)/(2*a*(b^2 - 4*a*c)*(a + b*x^2 + c*x^4)) + (b*(b^2 - 6*a*c)*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(2*a^2*(b^2 - 4*a*c)^(3/2)) + log(x)/a^2 - log(a + b*x^2 + c*x^4)/(4*a^2)]
    @test_int [x^0/(a*x + b*x^3 + c*x^5)^2, x, 6, -((3*b^2 - 10*a*c)/(2*a^2*(b^2 - 4*a*c)*x)) + (b^2 - 2*a*c + b*c*x^2)/(2*a*(b^2 - 4*a*c)*x*(a + b*x^2 + c*x^4)) - (sqrt(c)*(3*b^3 - 16*a*b*c + (3*b^2 - 10*a*c)*sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*a^2*(b^2 - 4*a*c)^(3/2)*sqrt(b - sqrt(b^2 - 4*a*c))) + (sqrt(c)*(3*b^3 - 16*a*b*c - (3*b^2 - 10*a*c)*sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*a^2*(b^2 - 4*a*c)^(3/2)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [1/(x^1*(a*x + b*x^3 + c*x^5)^2), x, 9, -((b^2 - 3*a*c)/(a^2*(b^2 - 4*a*c)*x^2)) + (b^2 - 2*a*c + b*c*x^2)/(2*a*(b^2 - 4*a*c)*x^2*(a + b*x^2 + c*x^4)) - ((b^4 - 6*a*b^2*c + 6*a^2*c^2)*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(a^3*(b^2 - 4*a*c)^(3/2)) - (2*b*log(x))/a^3 + (b*log(a + b*x^2 + c*x^4))/(2*a^3)]
    @test_int [1/(x^2*(a*x + b*x^3 + c*x^5)^2), x, 7, -((5*b^2 - 14*a*c)/(6*a^2*(b^2 - 4*a*c)*x^3)) + (b*(5*b^2 - 19*a*c))/(2*a^3*(b^2 - 4*a*c)*x) + (b^2 - 2*a*c + b*c*x^2)/(2*a*(b^2 - 4*a*c)*x^3*(a + b*x^2 + c*x^4)) + (sqrt(c)*(5*b^4 - 29*a*b^2*c + 28*a^2*c^2 + b*(5*b^2 - 19*a*c)*sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b - sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*a^3*(b^2 - 4*a*c)^(3/2)*sqrt(b - sqrt(b^2 - 4*a*c))) - (sqrt(c)*(5*b^4 - 29*a*b^2*c + 28*a^2*c^2 - b*(5*b^2 - 19*a*c)*sqrt(b^2 - 4*a*c))*atan((sqrt(2)*sqrt(c)*x)/sqrt(b + sqrt(b^2 - 4*a*c))))/(2*sqrt(2)*a^3*(b^2 - 4*a*c)^(3/2)*sqrt(b + sqrt(b^2 - 4*a*c)))]
    @test_int [1/(x^3*(a*x + b*x^3 + c*x^5)^2), x, 9, -((3*b^2 - 8*a*c)/(4*a^2*(b^2 - 4*a*c)*x^4)) + (b*(3*b^2 - 11*a*c))/(2*a^3*(b^2 - 4*a*c)*x^2) + (b^2 - 2*a*c + b*c*x^2)/(2*a*(b^2 - 4*a*c)*x^4*(a + b*x^2 + c*x^4)) + (b*(3*b^4 - 20*a*b^2*c + 30*a^2*c^2)*atanh((b + 2*c*x^2)/sqrt(b^2 - 4*a*c)))/(2*a^4*(b^2 - 4*a*c)^(3/2)) + ((3*b^2 - 2*a*c)*log(x))/a^4 - ((3*b^2 - 2*a*c)*log(a + b*x^2 + c*x^4))/(4*a^4)]


    #= ::Subsection::Closed:: =#
    #=x^m*(a*x+b*x^3+c*x^5)^(p/2)=#


    @test_int [x/sqrt(a*x + b*x^3 + c*x^5), x, 3, (2*x^2*sqrt(1 + (2*c*x^2)/(b - sqrt(b^2 - 4*a*c)))*sqrt(1 + (2*c*x^2)/(b + sqrt(b^2 - 4*a*c)))*AppellF1(3/4, 1/2, 1/2, 7/4, -((2*c*x^2)/(b - sqrt(b^2 - 4*a*c))), -((2*c*x^2)/(b + sqrt(b^2 - 4*a*c)))))/(3*sqrt(a*x + b*x^3 + c*x^5))]


    #= ::Subsection::Closed:: =#
    #=x^(m/2)*(a*x+b*x^3+c*x^5)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^(3/2)*sqrt(a*x + b*x^3 + c*x^5), x, 5, -((2*(b^2 - 3*a*c)*x^(3/2)*(a + b*x^2 + c*x^4))/(15*c^(3/2)*(sqrt(a) + sqrt(c)*x^2)*sqrt(a*x + b*x^3 + c*x^5))) + (sqrt(x)*(b + 3*c*x^2)*sqrt(a*x + b*x^3 + c*x^5))/(15*c) + (2*a^(1/4)*(b^2 - 3*a*c)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticE(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(15*c^(7/4)*sqrt(a*x + b*x^3 + c*x^5)) - (a^(1/4)*(2*b^2 + sqrt(a)*b*sqrt(c) - 6*a*c)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticF(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(30*c^(7/4)*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [sqrt(x)*sqrt(a*x + b*x^3 + c*x^5), x, 5, ((b + 2*c*x^2)*sqrt(a*x + b*x^3 + c*x^5))/(8*c*sqrt(x)) - ((b^2 - 4*a*c)*sqrt(x)*sqrt(a + b*x^2 + c*x^4)*atanh((b + 2*c*x^2)/(2*sqrt(c)*sqrt(a + b*x^2 + c*x^4))))/(16*c^(3/2)*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [sqrt(a*x + b*x^3 + c*x^5)/sqrt(x), x, 5, (b*x^(3/2)*(a + b*x^2 + c*x^4))/(3*sqrt(c)*(sqrt(a) + sqrt(c)*x^2)*sqrt(a*x + b*x^3 + c*x^5)) + (1/3)*sqrt(x)*sqrt(a*x + b*x^3 + c*x^5) - (a^(1/4)*b*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticE(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(3*c^(3/4)*sqrt(a*x + b*x^3 + c*x^5)) + (a^(1/4)*(b + 2*sqrt(a)*sqrt(c))*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticF(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(6*c^(3/4)*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [sqrt(a*x + b*x^3 + c*x^5)/x^(3/2), x, 8, sqrt(a*x + b*x^3 + c*x^5)/(2*sqrt(x)) - (sqrt(a)*sqrt(x)*sqrt(a + b*x^2 + c*x^4)*atanh((2*a + b*x^2)/(2*sqrt(a)*sqrt(a + b*x^2 + c*x^4))))/(2*sqrt(a*x + b*x^3 + c*x^5)) + (b*sqrt(x)*sqrt(a + b*x^2 + c*x^4)*atanh((b + 2*c*x^2)/(2*sqrt(c)*sqrt(a + b*x^2 + c*x^4))))/(4*sqrt(c)*sqrt(a*x + b*x^3 + c*x^5))]


    @test_int [x^(3/2)*(a*x + b*x^3 + c*x^5)^(3/2), x, 8, ((15*b^4 - 100*a*b^2*c + 128*a^2*c^2)*sqrt(a*x + b*x^3 + c*x^5))/(1280*c^3*sqrt(x)) - (x^(3/2)*(b*(5*b^2 - 4*a*c) + 4*c*(5*b^2 - 16*a*c)*x^2)*sqrt(a*x + b*x^3 + c*x^5))/(640*c^2) + (sqrt(x)*(3*b + 8*c*x^2)*(a*x + b*x^3 + c*x^5)^(3/2))/(80*c) - (3*b*(b^2 - 4*a*c)^2*sqrt(x)*sqrt(a + b*x^2 + c*x^4)*atanh((b + 2*c*x^2)/(2*sqrt(c)*sqrt(a + b*x^2 + c*x^4))))/(512*c^(7/2)*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [sqrt(x)*(a*x + b*x^3 + c*x^5)^(3/2), x, 6, ((8*b^4 - 57*a*b^2*c + 84*a^2*c^2)*x^(3/2)*(a + b*x^2 + c*x^4))/(315*c^(5/2)*(sqrt(a) + sqrt(c)*x^2)*sqrt(a*x + b*x^3 + c*x^5)) - (sqrt(x)*(b*(4*b^2 - 9*a*c) + 6*c*(2*b^2 - 7*a*c)*x^2)*sqrt(a*x + b*x^3 + c*x^5))/(315*c^2) + ((3*b + 7*c*x^2)*(a*x + b*x^3 + c*x^5)^(3/2))/(63*c*sqrt(x)) - (a^(1/4)*(8*b^4 - 57*a*b^2*c + 84*a^2*c^2)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticE(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(315*c^(11/4)*sqrt(a*x + b*x^3 + c*x^5)) + (a^(1/4)*(8*b^4 - 57*a*b^2*c + 84*a^2*c^2 + 4*sqrt(a)*b*sqrt(c)*(b^2 - 6*a*c))*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticF(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(630*c^(11/4)*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [(a*x + b*x^3 + c*x^5)^(3/2)/sqrt(x), x, 6, -((3*(b^2 - 4*a*c)*(b + 2*c*x^2)*sqrt(a*x + b*x^3 + c*x^5))/(128*c^2*sqrt(x))) + ((b + 2*c*x^2)*(a*x + b*x^3 + c*x^5)^(3/2))/(16*c*x^(3/2)) + (3*(b^2 - 4*a*c)^2*sqrt(x)*sqrt(a + b*x^2 + c*x^4)*atanh((b + 2*c*x^2)/(2*sqrt(c)*sqrt(a + b*x^2 + c*x^4))))/(256*c^(5/2)*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [(a*x + b*x^3 + c*x^5)^(3/2)/x^(3/2), x, 6, -((2*b*(b^2 - 8*a*c)*x^(3/2)*(a + b*x^2 + c*x^4))/(35*c^(3/2)*(sqrt(a) + sqrt(c)*x^2)*sqrt(a*x + b*x^3 + c*x^5))) + (sqrt(x)*(b^2 + 10*a*c + 3*b*c*x^2)*sqrt(a*x + b*x^3 + c*x^5))/(35*c) + (a*x + b*x^3 + c*x^5)^(3/2)/(7*sqrt(x)) + (2*a^(1/4)*b*(b^2 - 8*a*c)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticE(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(35*c^(7/4)*sqrt(a*x + b*x^3 + c*x^5)) - (a^(1/4)*(sqrt(a)*sqrt(c)*(b^2 - 20*a*c) + 2*b*(b^2 - 8*a*c))*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticF(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(70*c^(7/4)*sqrt(a*x + b*x^3 + c*x^5))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^(3/2)/sqrt(a*x + b*x^3 + c*x^5), x, 4, (sqrt(x)*sqrt(a + b*x^2 + c*x^4)*atanh((b + 2*c*x^2)/(2*sqrt(c)*sqrt(a + b*x^2 + c*x^4))))/(2*sqrt(c)*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [sqrt(x)/sqrt(a*x + b*x^3 + c*x^5), x, 2, (sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticF(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(2*a^(1/4)*c^(1/4)*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [1/(sqrt(x)*sqrt(a*x + b*x^3 + c*x^5)), x, 2, -(atanh((sqrt(x)*(2*a + b*x^2))/(2*sqrt(a)*sqrt(a*x + b*x^3 + c*x^5)))/(2*sqrt(a)))]
    @test_int [1/(x^(3/2)*sqrt(a*x + b*x^3 + c*x^5)), x, 6, (sqrt(c)*x^(3/2)*(a + b*x^2 + c*x^4))/(a*(sqrt(a) + sqrt(c)*x^2)*sqrt(a*x + b*x^3 + c*x^5)) - sqrt(a*x + b*x^3 + c*x^5)/(a*x^(3/2)) - (c^(1/4)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticE(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(a^(3/4)*sqrt(a*x + b*x^3 + c*x^5)) + (c^(1/4)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticF(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(2*a^(3/4)*sqrt(a*x + b*x^3 + c*x^5))]


    @test_int [x^(3/2)/(a*x + b*x^3 + c*x^5)^(3/2), x, 5, (x^(3/2)*(b^2 - 2*a*c + b*c*x^2))/(a*(b^2 - 4*a*c)*sqrt(a*x + b*x^3 + c*x^5)) - (b*sqrt(c)*x^(3/2)*(a + b*x^2 + c*x^4))/(a*(b^2 - 4*a*c)*(sqrt(a) + sqrt(c)*x^2)*sqrt(a*x + b*x^3 + c*x^5)) + (b*c^(1/4)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticE(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(a^(3/4)*(b^2 - 4*a*c)*sqrt(a*x + b*x^3 + c*x^5)) - (c^(1/4)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticF(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(2*a^(3/4)*(b - 2*sqrt(a)*sqrt(c))*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [sqrt(x)/(a*x + b*x^3 + c*x^5)^(3/2), x, 3, (sqrt(x)*(b^2 - 2*a*c + b*c*x^2))/(a*(b^2 - 4*a*c)*sqrt(a*x + b*x^3 + c*x^5)) - atanh((sqrt(x)*(2*a + b*x^2))/(2*sqrt(a)*sqrt(a*x + b*x^3 + c*x^5)))/(2*a^(3/2))]
    @test_int [1/(sqrt(x)*(a*x + b*x^3 + c*x^5)^(3/2)), x, 6, (b^2 - 2*a*c + b*c*x^2)/(a*(b^2 - 4*a*c)*sqrt(x)*sqrt(a*x + b*x^3 + c*x^5)) + (2*sqrt(c)*(b^2 - 3*a*c)*x^(3/2)*(a + b*x^2 + c*x^4))/(a^2*(b^2 - 4*a*c)*(sqrt(a) + sqrt(c)*x^2)*sqrt(a*x + b*x^3 + c*x^5)) - (2*(b^2 - 3*a*c)*sqrt(a*x + b*x^3 + c*x^5))/(a^2*(b^2 - 4*a*c)*x^(3/2)) - (2*c^(1/4)*(b^2 - 3*a*c)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticE(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(a^(7/4)*(b^2 - 4*a*c)*sqrt(a*x + b*x^3 + c*x^5)) + (c^(1/4)*(2*b^2 + sqrt(a)*b*sqrt(c) - 6*a*c)*sqrt(x)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*EllipticF(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(2*a^(7/4)*(b^2 - 4*a*c)*sqrt(a*x + b*x^3 + c*x^5))]
    @test_int [1/(x^(3/2)*(a*x + b*x^3 + c*x^5)^(3/2)), x, 5, (b^2 - 2*a*c + b*c*x^2)/(a*(b^2 - 4*a*c)*x^(3/2)*sqrt(a*x + b*x^3 + c*x^5)) - ((3*b^2 - 8*a*c)*sqrt(a*x + b*x^3 + c*x^5))/(2*a^2*(b^2 - 4*a*c)*x^(5/2)) + (3*b*atanh((sqrt(x)*(2*a + b*x^2))/(2*sqrt(a)*sqrt(a*x + b*x^3 + c*x^5))))/(4*a^(5/2))]


    @test_int [x^((3*(n - 1))/2)/(a*x^(n - 1) + b*x^n + c*x^(n + 1))^(3/2), x, 1, -((2*x^((1/2)*(-1 + n))*(b + 2*c*x))/((b^2 - 4*a*c)*sqrt(a*x^(-1 + n) + b*x^n + c*x^(1 + n))))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x^2)^n*(a*x+b*x^3+c*x^5)^p=#


    #= ::Subsection:: =#
    #=x^m*(d+e*x^2)^n*(a*x+b*x^3+c*x^5)^p=#


    #= ::Subsection::Closed:: =#
    #=x^m*(d+e*x^2)^n*(a*x+b*x^3+c*x^5)^(p/2)=#


    @test_int [x*(d + e*x^2)/sqrt(a*x + b*x^3 + c*x^5), x, 7, (2*d*x^2*sqrt(1 + (2*c*x^2)/(b - sqrt(b^2 - 4*a*c)))*sqrt(1 + (2*c*x^2)/(b + sqrt(b^2 - 4*a*c)))*AppellF1(3/4, 1/2, 1/2, 7/4, -((2*c*x^2)/(b - sqrt(b^2 - 4*a*c))), -((2*c*x^2)/(b + sqrt(b^2 - 4*a*c)))))/(3*sqrt(a*x + b*x^3 + c*x^5)) + (2*e*x^4*sqrt(1 + (2*c*x^2)/(b - sqrt(b^2 - 4*a*c)))*sqrt(1 + (2*c*x^2)/(b + sqrt(b^2 - 4*a*c)))*AppellF1(7/4, 1/2, 1/2, 11/4, -((2*c*x^2)/(b - sqrt(b^2 - 4*a*c))), -((2*c*x^2)/(b + sqrt(b^2 - 4*a*c)))))/(7*sqrt(a*x + b*x^3 + c*x^5))]


    #= ::Subsection:: =#
    #=x^(m/2)*(d+e*x^2)^n*(a*x+b*x^3+c*x^5)^(p/2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a*x^q+b*x^n+c*x^(2*n-q))^p*when*m=q/2-1=#


    @test_int [1/sqrt(3*x^2 - 3*x^4 + x^6), x, 2, -(atanh((x*(6 - 3*x^2))/(2*sqrt(3)*sqrt(3*x^2 - 3*x^4 + x^6)))/(2*sqrt(3)))]
    @test_int [1/sqrt(x^2*(3 - 3*x^2 + x^4)), x, 3, -(atanh((x*(6 - 3*x^2))/(2*sqrt(3)*sqrt(3*x^2 - 3*x^4 + x^6)))/(2*sqrt(3)))]
    @test_int [1/sqrt(1 - (1 - x^2)^3), x, 3, -(atanh((x*(6 - 3*x^2))/(2*sqrt(3)*sqrt(3*x^2 - 3*x^4 + x^6)))/(2*sqrt(3)))]


    @test_int [sqrt(3*x^2 - 3*x^4 + x^6), x, 5, -(((3 - 2*x^2)*sqrt(3*x^2 - 3*x^4 + x^6))/(8*x)) - (3*sqrt(3*x^2 - 3*x^4 + x^6)*asinh((3 - 2*x^2)/sqrt(3)))/(16*x*sqrt(3 - 3*x^2 + x^4))]
    @test_int [sqrt(x^2*(3 - 3*x^2 + x^4)), x, 6, -(((3 - 2*x^2)*sqrt(3*x^2 - 3*x^4 + x^6))/(8*x)) - (3*sqrt(3*x^2 - 3*x^4 + x^6)*asinh((3 - 2*x^2)/sqrt(3)))/(16*x*sqrt(3 - 3*x^2 + x^4))]
    @test_int [sqrt(1 - (1 - x^2)^3), x, 6, -(((3 - 2*x^2)*sqrt(3*x^2 - 3*x^4 + x^6))/(8*x)) - (3*sqrt(3*x^2 - 3*x^4 + x^6)*asinh((3 - 2*x^2)/sqrt(3)))/(16*x*sqrt(3 - 3*x^2 + x^4))]


    @test_int [1/(x*sqrt(a + b*x + c*x^2)), x, 2, -(atanh((2*a + b*x)/(2*sqrt(a)*sqrt(a + b*x + c*x^2)))/sqrt(a))]
    @test_int [1/sqrt(x^2*(a + b*x + c*x^2)), x, 3, -(atanh((x*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^2 + b*x^3 + c*x^4)))/sqrt(a))]
    @test_int [1/(sqrt(x)*sqrt(x*(a + b*x + c*x^2))), x, 3, -(atanh((sqrt(x)*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x + b*x^2 + c*x^3)))/sqrt(a))]
    @test_int [sqrt(x)/sqrt(x^3*(a + b*x + c*x^2)), x, 3, -(atanh((x^(3/2)*(2*a + b*x))/(2*sqrt(a)*sqrt(a*x^3 + b*x^4 + c*x^5)))/sqrt(a))]


    @test_int [1/(x*sqrt(a + b*x^2 + c*x^4)), x, 3, -(atanh((2*a + b*x^2)/(2*sqrt(a)*sqrt(a + b*x^2 + c*x^4)))/(2*sqrt(a)))]
    @test_int [1/sqrt(x^2*(a + b*x^2 + c*x^4)), x, 3, -(atanh((x*(2*a + b*x^2))/(2*sqrt(a)*sqrt(a*x^2 + b*x^4 + c*x^6)))/(2*sqrt(a)))]
    @test_int [1/(sqrt(x)*sqrt(x*(a + b*x^2 + c*x^4))), x, 3, -(atanh((sqrt(x)*(2*a + b*x^2))/(2*sqrt(a)*sqrt(a*x + b*x^3 + c*x^5)))/(2*sqrt(a)))]
    @test_int [sqrt(x)/(sqrt(x^3*(a + b*x^2 + c*x^4))), x, 3, -(atanh((x^(3/2)*(2*a + b*x^2))/(2*sqrt(a)*sqrt(a*x^3 + b*x^5 + c*x^7)))/(2*sqrt(a)))]


    @test_int [1/(x*sqrt(3 - 3*x^2 + x^4)), x, 3, -(atanh((sqrt(3)*(2 - x^2))/(2*sqrt(3 - 3*x^2 + x^4)))/(2*sqrt(3)))]
    @test_int [1/sqrt(x^2*(3 - 3*x^2 + x^4)), x, 3, -(atanh((x*(6 - 3*x^2))/(2*sqrt(3)*sqrt(3*x^2 - 3*x^4 + x^6)))/(2*sqrt(3)))]
    @test_int [1/(sqrt(x)*sqrt(x*(3 - 3*x + x^2))), x, 3, -(atanh((sqrt(3)*(2 - x)*sqrt(x))/(2*sqrt(3*x - 3*x^2 + x^3)))/sqrt(3))]


    @test_int [x^(q/2 - 1)/sqrt(a*x^q + b*x^n + c*x^(2*n - q)), x, 2, -(atanh((x^(q/2)*(2*a + b*x^(n - q)))/(2*sqrt(a)*sqrt(b*x^n + c*x^(2*n - q) + a*x^q)))/(sqrt(a)*(n - q)))]
    end
