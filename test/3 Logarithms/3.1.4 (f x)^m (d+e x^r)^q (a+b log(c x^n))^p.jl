@testset "3.1.4 (f x)^m (d+e x^r)^q (a+b log(c x^n))^p" begin
    @variables a, b, c, d, e, f, g, m, n, p, q, r, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^r)^q*(a+b*log(c*x^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^1)^q*(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x)^q*(a+b*log(c*x^n))=#


    #= ::Subsubsection::Closed:: =#
    #=q>0=#


    @test_int [x^3*(d + e*x)*(a + b*log(c*x^n)), x, 4, (-(1/16))*b*d*n*x^4 - (1/25)*b*e*n*x^5 + (1/20)*(5*d*x^4 + 4*e*x^5)*(a + b*log(c*x^n))]
    @test_int [x^2*(d + e*x)*(a + b*log(c*x^n)), x, 4, (-(1/9))*b*d*n*x^3 - (1/16)*b*e*n*x^4 + (1/12)*(4*d*x^3 + 3*e*x^4)*(a + b*log(c*x^n))]
    @test_int [x^1*(d + e*x)*(a + b*log(c*x^n)), x, 4, (-(1/4))*b*d*n*x^2 - (1/9)*b*e*n*x^3 + (1/6)*(3*d*x^2 + 2*e*x^3)*(a + b*log(c*x^n))]
    @test_int [x^0*(d + e*x)*(a + b*log(c*x^n)), x, 2, (-b)*d*n*x - (1/4)*b*e*n*x^2 + d*x*(a + b*log(c*x^n)) + (1/2)*e*x^2*(a + b*log(c*x^n))]
    @test_int [(d + e*x)*(a + b*log(c*x^n))/x^1, x, 4, a*e*x - b*e*n*x + b*e*x*log(c*x^n) + (d*(a + b*log(c*x^n))^2)/(2*b*n)]
    @test_int [(d + e*x)*(a + b*log(c*x^n))/x^2, x, 4, -((b*d*n)/x) - (d*(a + b*log(c*x^n)))/x + (e*(a + b*log(c*x^n))^2)/(2*b*n), -((b*d*n)/x) - (1/2)*b*e*n*log(x)^2 - (d*(a + b*log(c*x^n)))/x + e*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x)*(a + b*log(c*x^n))/x^3, x, 4, -((b*d*n)/(4*x^2)) - (b*e*n)/x + (b*e^2*n*log(x))/(2*d) - ((d + e*x)^2*(a + b*log(c*x^n)))/(2*d*x^2)]
    @test_int [(d + e*x)*(a + b*log(c*x^n))/x^4, x, 4, -((b*d*n)/(9*x^3)) - (b*e*n)/(4*x^2) - (d*(a + b*log(c*x^n)))/(3*x^3) - (e*(a + b*log(c*x^n)))/(2*x^2)]


    @test_int [x^3*(d + e*x)^2*(a + b*log(c*x^n)), x, 4, (-(1/16))*b*d^2*n*x^4 - (2/25)*b*d*e*n*x^5 - (1/36)*b*e^2*n*x^6 + (1/60)*(15*d^2*x^4 + 24*d*e*x^5 + 10*e^2*x^6)*(a + b*log(c*x^n))]
    @test_int [x^2*(d + e*x)^2*(a + b*log(c*x^n)), x, 4, (-(1/9))*b*d^2*n*x^3 - (1/8)*b*d*e*n*x^4 - (1/25)*b*e^2*n*x^5 + (1/30)*(10*d^2*x^3 + 15*d*e*x^4 + 6*e^2*x^5)*(a + b*log(c*x^n))]
    @test_int [x^1*(d + e*x)^2*(a + b*log(c*x^n)), x, 4, (-(1/4))*b*d^2*n*x^2 - (2/9)*b*d*e*n*x^3 - (1/16)*b*e^2*n*x^4 + (1/12)*(6*d^2*x^2 + 8*d*e*x^3 + 3*e^2*x^4)*(a + b*log(c*x^n))]
    @test_int [x^0*(d + e*x)^2*(a + b*log(c*x^n)), x, 4, (-b)*d^2*n*x - (1/2)*b*d*e*n*x^2 - (1/9)*b*e^2*n*x^3 - (b*d^3*n*log(x))/(3*e) + ((d + e*x)^3*(a + b*log(c*x^n)))/(3*e)]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))/x^1, x, 3, (-(1/4))*b*n*(4*d + e*x)^2 - (1/2)*b*d^2*n*log(x)^2 + 2*d*e*x*(a + b*log(c*x^n)) + (1/2)*e^2*x^2*(a + b*log(c*x^n)) + d^2*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))/x^2, x, 3, -((b*d^2*n)/x) - b*e^2*n*x - b*d*e*n*log(x)^2 - (d^2*(a + b*log(c*x^n)))/x + e^2*x*(a + b*log(c*x^n)) + 2*d*e*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))/x^3, x, 6, -((b*n*(d + 4*e*x)^2)/(4*x^2)) - (1/2)*b*e^2*n*log(x)^2 - (d^2*(a + b*log(c*x^n)))/(2*x^2) - (2*d*e*(a + b*log(c*x^n)))/x + e^2*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))/x^4, x, 4, -((b*d^2*n)/(9*x^3)) - (b*d*e*n)/(2*x^2) - (b*e^2*n)/x + (b*e^3*n*log(x))/(3*d) - ((d + e*x)^3*(a + b*log(c*x^n)))/(3*d*x^3)]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))/x^5, x, 4, -((b*d^2*n)/(16*x^4)) - (2*b*d*e*n)/(9*x^3) - (b*e^2*n)/(4*x^2) - (d^2*(a + b*log(c*x^n)))/(4*x^4) - (2*d*e*(a + b*log(c*x^n)))/(3*x^3) - (e^2*(a + b*log(c*x^n)))/(2*x^2)]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))/x^6, x, 4, -((b*d^2*n)/(25*x^5)) - (b*d*e*n)/(8*x^4) - (b*e^2*n)/(9*x^3) - (d^2*(a + b*log(c*x^n)))/(5*x^5) - (d*e*(a + b*log(c*x^n)))/(2*x^4) - (e^2*(a + b*log(c*x^n)))/(3*x^3)]


    @test_int [x^3*(d + e*x)^3*(a + b*log(c*x^n)), x, 4, (-(1/16))*b*d^3*n*x^4 - (3/25)*b*d^2*e*n*x^5 - (1/12)*b*d*e^2*n*x^6 - (1/49)*b*e^3*n*x^7 + (1/140)*(35*d^3*x^4 + 84*d^2*e*x^5 + 70*d*e^2*x^6 + 20*e^3*x^7)*(a + b*log(c*x^n))]
    @test_int [x^2*(d + e*x)^3*(a + b*log(c*x^n)), x, 4, (-(1/9))*b*d^3*n*x^3 - (3/16)*b*d^2*e*n*x^4 - (3/25)*b*d*e^2*n*x^5 - (1/36)*b*e^3*n*x^6 + (1/60)*(20*d^3*x^3 + 45*d^2*e*x^4 + 36*d*e^2*x^5 + 10*e^3*x^6)*(a + b*log(c*x^n))]
    @test_int [x^1*(d + e*x)^3*(a + b*log(c*x^n)), x, 5, (b*d^4*n*x)/(5*e) + (3/20)*b*d^3*n*x^2 + (1/15)*b*d^2*e*n*x^3 + (1/80)*b*d*e^2*n*x^4 - (b*n*(d + e*x)^5)/(25*e^2) + (b*d^5*n*log(x))/(20*e^2) - (1/20)*((5*d*(d + e*x)^4)/e^2 - (4*(d + e*x)^5)/e^2)*(a + b*log(c*x^n))]
    @test_int [x^0*(d + e*x)^3*(a + b*log(c*x^n)), x, 4, (-b)*d^3*n*x - (3/4)*b*d^2*e*n*x^2 - (1/3)*b*d*e^2*n*x^3 - (1/16)*b*e^3*n*x^4 - (b*d^4*n*log(x))/(4*e) + ((d + e*x)^4*(a + b*log(c*x^n)))/(4*e)]
    @test_int [(d + e*x)^3*(a + b*log(c*x^n))/x^1, x, 4, -3*b*d^2*e*n*x - (3/4)*b*d*e^2*n*x^2 - (1/9)*b*e^3*n*x^3 - (1/2)*b*d^3*n*log(x)^2 + 3*d^2*e*x*(a + b*log(c*x^n)) + (3/2)*d*e^2*x^2*(a + b*log(c*x^n)) + (1/3)*e^3*x^3*(a + b*log(c*x^n)) + d^3*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x)^3*(a + b*log(c*x^n))/x^2, x, 3, -((b*d^3*n)/x) - 3*b*d*e^2*n*x - (1/4)*b*e^3*n*x^2 - (3/2)*b*d^2*e*n*log(x)^2 - (d^3*(a + b*log(c*x^n)))/x + 3*d*e^2*x*(a + b*log(c*x^n)) + (1/2)*e^3*x^2*(a + b*log(c*x^n)) + 3*d^2*e*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x)^3*(a + b*log(c*x^n))/x^3, x, 3, -((b*d^3*n)/(4*x^2)) - (3*b*d^2*e*n)/x - b*e^3*n*x - (3/2)*b*d*e^2*n*log(x)^2 - (d^3*(a + b*log(c*x^n)))/(2*x^2) - (3*d^2*e*(a + b*log(c*x^n)))/x + e^3*x*(a + b*log(c*x^n)) + 3*d*e^2*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x)^3*(a + b*log(c*x^n))/x^4, x, 7, -((b*d^3*n)/(9*x^3)) - (3*b*d^2*e*n)/(4*x^2) - (3*b*d*e^2*n)/x - (1/2)*b*e^3*n*log(x)^2 - (d^3*(a + b*log(c*x^n)))/(3*x^3) - (3*d^2*e*(a + b*log(c*x^n)))/(2*x^2) - (3*d*e^2*(a + b*log(c*x^n)))/x + e^3*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x)^3*(a + b*log(c*x^n))/x^5, x, 4, -((b*d^3*n)/(16*x^4)) - (b*d^2*e*n)/(3*x^3) - (3*b*d*e^2*n)/(4*x^2) - (b*e^3*n)/x + (b*e^4*n*log(x))/(4*d) - ((d + e*x)^4*(a + b*log(c*x^n)))/(4*d*x^4)]
    @test_int [(d + e*x)^3*(a + b*log(c*x^n))/x^6, x, 5, (b*d^2*e*n)/(80*x^4) + (b*d*e^2*n)/(15*x^3) + (3*b*e^3*n)/(20*x^2) + (b*e^4*n)/(5*d*x) - (b*n*(d + e*x)^5)/(25*d^2*x^5) - (b*e^5*n*log(x))/(20*d^2) - ((d + e*x)^4*(a + b*log(c*x^n)))/(5*d*x^5) + (e*(d + e*x)^4*(a + b*log(c*x^n)))/(20*d^2*x^4)]
    @test_int [(d + e*x)^3*(a + b*log(c*x^n))/x^7, x, 4, -((b*d^3*n)/(36*x^6)) - (3*b*d^2*e*n)/(25*x^5) - (3*b*d*e^2*n)/(16*x^4) - (b*e^3*n)/(9*x^3) - (d^3*(a + b*log(c*x^n)))/(6*x^6) - (3*d^2*e*(a + b*log(c*x^n)))/(5*x^5) - (3*d*e^2*(a + b*log(c*x^n)))/(4*x^4) - (e^3*(a + b*log(c*x^n)))/(3*x^3)]
    @test_int [(d + e*x)^3*(a + b*log(c*x^n))/x^8, x, 4, -((b*d^3*n)/(49*x^7)) - (b*d^2*e*n)/(12*x^6) - (3*b*d*e^2*n)/(25*x^5) - (b*e^3*n)/(16*x^4) - (d^3*(a + b*log(c*x^n)))/(7*x^7) - (d^2*e*(a + b*log(c*x^n)))/(2*x^6) - (3*d*e^2*(a + b*log(c*x^n)))/(5*x^5) - (e^3*(a + b*log(c*x^n)))/(4*x^4)]


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x), x, 8, (a*d^2*x)/e^3 - (b*d^2*n*x)/e^3 + (b*d*n*x^2)/(4*e^2) - (b*n*x^3)/(9*e) + (b*d^2*x*log(c*x^n))/e^3 - (d*x^2*(a + b*log(c*x^n)))/(2*e^2) + (x^3*(a + b*log(c*x^n)))/(3*e) - (d^3*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^4 - (b*d^3*n*PolyLog(2, -((e*x)/d)))/e^4]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x), x, 7, -((a*d*x)/e^2) + (b*d*n*x)/e^2 - (b*n*x^2)/(4*e) - (b*d*x*log(c*x^n))/e^2 + (x^2*(a + b*log(c*x^n)))/(2*e) + (d^2*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^3 + (b*d^2*n*PolyLog(2, -((e*x)/d)))/e^3]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x), x, 6, (a*x)/e - (b*n*x)/e + (b*x*log(c*x^n))/e - (d*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^2 - (b*d*n*PolyLog(2, -((e*x)/d)))/e^2]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x), x, 2, ((a + b*log(c*x^n))*log(1 + (e*x)/d))/e + (b*n*PolyLog(2, -((e*x)/d)))/e]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x)), x, 2, -((log(1 + d/(e*x))*(a + b*log(c*x^n)))/d) + (b*n*PolyLog(2, -(d/(e*x))))/d]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x)), x, 4, -((b*n)/(d*x)) - (a + b*log(c*x^n))/(d*x) + (e*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^2 - (b*e*n*PolyLog(2, -(d/(e*x))))/d^2]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x)), x, 6, -((b*n)/(4*d*x^2)) + (b*e*n)/(d^2*x) - (a + b*log(c*x^n))/(2*d*x^2) + (e*(a + b*log(c*x^n)))/(d^2*x) - (e^2*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^3 + (b*e^2*n*PolyLog(2, -(d/(e*x))))/d^3]
    @test_int [(a + b*log(c*x^n))/(x^4*(d + e*x)), x, 8, -((b*n)/(9*d*x^3)) + (b*e*n)/(4*d^2*x^2) - (b*e^2*n)/(d^3*x) - (a + b*log(c*x^n))/(3*d*x^3) + (e*(a + b*log(c*x^n)))/(2*d^2*x^2) - (e^2*(a + b*log(c*x^n)))/(d^3*x) + (e^3*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^4 - (b*e^3*n*PolyLog(2, -(d/(e*x))))/d^4]


    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x)^2, x, 8, (3*b*d*n*x)/e^3 - (d*(3*a + b*n)*x)/e^3 - (3*b*n*x^2)/(4*e^2) - (3*b*d*x*log(c*x^n))/e^3 - (x^3*(a + b*log(c*x^n)))/(e*(d + e*x)) + (x^2*(3*a + b*n + 3*b*log(c*x^n)))/(2*e^2) + (d^2*(3*a + b*n + 3*b*log(c*x^n))*log(1 + (e*x)/d))/e^4 + (3*b*d^2*n*PolyLog(2, -((e*x)/d)))/e^4]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x)^2, x, 7, -((b*n*x)/e^2) + (2*x*(a + b*log(c*x^n)))/e^2 - (x^2*(a + b*log(c*x^n)))/(e*(d + e*x)) - (d*(2*a + b*n + 2*b*log(c*x^n))*log(1 + (e*x)/d))/e^3 - (2*b*d*n*PolyLog(2, -((e*x)/d)))/e^3, -((2*b*n*x)/e^2) + ((2*a + b*n)*x)/e^2 + (2*b*x*log(c*x^n))/e^2 - (x^2*(a + b*log(c*x^n)))/(e*(d + e*x)) - (d*(2*a + b*n + 2*b*log(c*x^n))*log(1 + (e*x)/d))/e^3 - (2*b*d*n*PolyLog(2, -((e*x)/d)))/e^3]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x)^2, x, 3, -((x*(a + b*log(c*x^n)))/(e*(d + e*x))) + ((a + b*n + b*log(c*x^n))*log(1 + (e*x)/d))/e^2 + (b*n*PolyLog(2, -((e*x)/d)))/e^2]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x)^2, x, 2, (x*(a + b*log(c*x^n)))/(d*(d + e*x)) - (b*n*log(d + e*x))/(d*e)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x)^2), x, 5, -((e*x*(a + b*log(c*x^n)))/(d^2*(d + e*x))) - (log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^2 + (b*n*log(d + e*x))/d^2 + (b*n*PolyLog(2, -(d/(e*x))))/d^2]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x)^2), x, 7, -((b*n)/(d^2*x)) - (a + b*log(c*x^n))/(d^2*x) + (e^2*x*(a + b*log(c*x^n)))/(d^3*(d + e*x)) + (2*e*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^3 - (b*e*n*log(d + e*x))/d^3 - (2*b*e*n*PolyLog(2, -(d/(e*x))))/d^3]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x)^2), x, 8, -((b*n)/(4*d^2*x^2)) + (2*b*e*n)/(d^3*x) - (a + b*log(c*x^n))/(2*d^2*x^2) + (2*e*(a + b*log(c*x^n)))/(d^3*x) - (e^3*x*(a + b*log(c*x^n)))/(d^4*(d + e*x)) - (3*e^2*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^4 + (b*e^2*n*log(d + e*x))/d^4 + (3*b*e^2*n*PolyLog(2, -(d/(e*x))))/d^4]


    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x)^3, x, 8, -((3*b*n*x)/e^3) + ((6*a + 5*b*n)*x)/(2*e^3) + (3*b*x*log(c*x^n))/e^3 - (x^3*(a + b*log(c*x^n)))/(2*e*(d + e*x)^2) - (x^2*(3*a + b*n + 3*b*log(c*x^n)))/(2*e^2*(d + e*x)) - (d*(6*a + 5*b*n + 6*b*log(c*x^n))*log(1 + (e*x)/d))/(2*e^4) - (3*b*d*n*PolyLog(2, -((e*x)/d)))/e^4]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x)^3, x, 4, -((x^2*(a + b*log(c*x^n)))/(2*e*(d + e*x)^2)) - (x*(2*a + b*n + 2*b*log(c*x^n)))/(2*e^2*(d + e*x)) + ((2*a + 3*b*n + 2*b*log(c*x^n))*log(1 + (e*x)/d))/(2*e^3) + (b*n*PolyLog(2, -((e*x)/d)))/e^3]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x)^3, x, 3, -((b*n)/(2*e^2*(d + e*x))) + (x^2*(a + b*log(c*x^n)))/(2*d*(d + e*x)^2) - (b*n*log(d + e*x))/(2*d*e^2)]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x)^3, x, 3, (b*n)/(2*d*e*(d + e*x)) + (b*n*log(x))/(2*d^2*e) - (a + b*log(c*x^n))/(2*e*(d + e*x)^2) - (b*n*log(d + e*x))/(2*d^2*e)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x)^3), x, 9, -((b*n)/(2*d^2*(d + e*x))) - (b*n*log(x))/(2*d^3) + (a + b*log(c*x^n))/(2*d*(d + e*x)^2) - (e*x*(a + b*log(c*x^n)))/(d^3*(d + e*x)) - (log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^3 + (3*b*n*log(d + e*x))/(2*d^3) + (b*n*PolyLog(2, -(d/(e*x))))/d^3]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x)^3), x, 10, -((b*n)/(d^3*x)) + (b*e*n)/(2*d^3*(d + e*x)) + (b*e*n*log(x))/(2*d^4) - (a + b*log(c*x^n))/(d^3*x) - (e*(a + b*log(c*x^n)))/(2*d^2*(d + e*x)^2) + (2*e^2*x*(a + b*log(c*x^n)))/(d^4*(d + e*x)) + (3*e*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^4 - (5*b*e*n*log(d + e*x))/(2*d^4) - (3*b*e*n*PolyLog(2, -(d/(e*x))))/d^4]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x)^3), x, 11, -((b*n)/(4*d^3*x^2)) + (3*b*e*n)/(d^4*x) - (b*e^2*n)/(2*d^4*(d + e*x)) - (b*e^2*n*log(x))/(2*d^5) - (a + b*log(c*x^n))/(2*d^3*x^2) + (3*e*(a + b*log(c*x^n)))/(d^4*x) + (e^2*(a + b*log(c*x^n)))/(2*d^3*(d + e*x)^2) - (3*e^3*x*(a + b*log(c*x^n)))/(d^5*(d + e*x)) - (6*e^2*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^5 + (7*b*e^2*n*log(d + e*x))/(2*d^5) + (6*b*e^2*n*PolyLog(2, -(d/(e*x))))/d^5]


    @test_int [x^5*(a + b*log(c*x^n))/(d + e*x)^4, x, 10, (10*b*d*n*x)/e^5 - (d*(60*a + 47*b*n)*x)/(6*e^5) - (5*b*n*x^2)/(2*e^4) - (10*b*d*x*log(c*x^n))/e^5 - (x^5*(a + b*log(c*x^n)))/(3*e*(d + e*x)^3) - (x^4*(5*a + b*n + 5*b*log(c*x^n)))/(6*e^2*(d + e*x)^2) - (x^3*(20*a + 9*b*n + 20*b*log(c*x^n)))/(6*e^3*(d + e*x)) + (x^2*(60*a + 47*b*n + 60*b*log(c*x^n)))/(12*e^4) + (d^2*(60*a + 47*b*n + 60*b*log(c*x^n))*log(1 + (e*x)/d))/(6*e^6) + (10*b*d^2*n*PolyLog(2, -((e*x)/d)))/e^6]
    @test_int [x^4*(a + b*log(c*x^n))/(d + e*x)^4, x, 9, -((4*b*n*x)/e^4) + ((12*a + 13*b*n)*x)/(3*e^4) + (4*b*x*log(c*x^n))/e^4 - (x^4*(a + b*log(c*x^n)))/(3*e*(d + e*x)^3) - (x^3*(4*a + b*n + 4*b*log(c*x^n)))/(6*e^2*(d + e*x)^2) - (x^2*(12*a + 7*b*n + 12*b*log(c*x^n)))/(6*e^3*(d + e*x)) - (d*(12*a + 13*b*n + 12*b*log(c*x^n))*log(1 + (e*x)/d))/(3*e^5) - (4*b*d*n*PolyLog(2, -((e*x)/d)))/e^5]
    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x)^4, x, 5, -((x^3*(a + b*log(c*x^n)))/(3*e*(d + e*x)^3)) - (x^2*(3*a + b*n + 3*b*log(c*x^n)))/(6*e^2*(d + e*x)^2) - (x*(6*a + 5*b*n + 6*b*log(c*x^n)))/(6*e^3*(d + e*x)) + ((6*a + 11*b*n + 6*b*log(c*x^n))*log(1 + (e*x)/d))/(6*e^4) + (b*n*PolyLog(2, -((e*x)/d)))/e^4]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x)^4, x, 3, (b*d*n)/(6*e^3*(d + e*x)^2) - (2*b*n)/(3*e^3*(d + e*x)) + (x^3*(a + b*log(c*x^n)))/(3*d*(d + e*x)^3) - (b*n*log(d + e*x))/(3*d*e^3)]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x)^4, x, 4, -((b*n)/(6*e^2*(d + e*x)^2)) + (b*n)/(6*d*e^2*(d + e*x)) + (b*n*log(x))/(6*d^2*e^2) + (d*(a + b*log(c*x^n)))/(3*e^2*(d + e*x)^3) - (a + b*log(c*x^n))/(2*e^2*(d + e*x)^2) - (b*n*log(d + e*x))/(6*d^2*e^2)]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x)^4, x, 3, (b*n)/(6*d*e*(d + e*x)^2) + (b*n)/(3*d^2*e*(d + e*x)) + (b*n*log(x))/(3*d^3*e) - (a + b*log(c*x^n))/(3*e*(d + e*x)^3) - (b*n*log(d + e*x))/(3*d^3*e)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x)^4), x, 13, -((b*n)/(6*d^2*(d + e*x)^2)) - (5*b*n)/(6*d^3*(d + e*x)) - (5*b*n*log(x))/(6*d^4) + (a + b*log(c*x^n))/(3*d*(d + e*x)^3) + (a + b*log(c*x^n))/(2*d^2*(d + e*x)^2) - (e*x*(a + b*log(c*x^n)))/(d^4*(d + e*x)) - (log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^4 + (11*b*n*log(d + e*x))/(6*d^4) + (b*n*PolyLog(2, -(d/(e*x))))/d^4]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x)^4), x, 13, -((b*n)/(d^4*x)) + (b*e*n)/(6*d^3*(d + e*x)^2) + (4*b*e*n)/(3*d^4*(d + e*x)) + (4*b*e*n*log(x))/(3*d^5) - (a + b*log(c*x^n))/(d^4*x) - (e*(a + b*log(c*x^n)))/(3*d^2*(d + e*x)^3) - (e*(a + b*log(c*x^n)))/(d^3*(d + e*x)^2) + (3*e^2*x*(a + b*log(c*x^n)))/(d^5*(d + e*x)) + (4*e*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^5 - (13*b*e*n*log(d + e*x))/(3*d^5) - (4*b*e*n*PolyLog(2, -(d/(e*x))))/d^5]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x)^4), x, 14, -((b*n)/(4*d^4*x^2)) + (4*b*e*n)/(d^5*x) - (b*e^2*n)/(6*d^4*(d + e*x)^2) - (11*b*e^2*n)/(6*d^5*(d + e*x)) - (11*b*e^2*n*log(x))/(6*d^6) - (a + b*log(c*x^n))/(2*d^4*x^2) + (4*e*(a + b*log(c*x^n)))/(d^5*x) + (e^2*(a + b*log(c*x^n)))/(3*d^3*(d + e*x)^3) + (3*e^2*(a + b*log(c*x^n)))/(2*d^4*(d + e*x)^2) - (6*e^3*x*(a + b*log(c*x^n)))/(d^6*(d + e*x)) - (10*e^2*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^6 + (47*b*e^2*n*log(d + e*x))/(6*d^6) + (10*b*e^2*n*PolyLog(2, -(d/(e*x))))/d^6]


    @test_int [x^8*(a + b*log(c*x^n))/(d + e*x)^7, x, 13, (28*b*d*n*x)/e^8 - (d*(280*a + 341*b*n)*x)/(10*e^8) - (7*b*n*x^2)/e^7 - (28*b*d*x*log(c*x^n))/e^8 - (x^8*(a + b*log(c*x^n)))/(6*e*(d + e*x)^6) - (x^7*(8*a + b*n + 8*b*log(c*x^n)))/(30*e^2*(d + e*x)^5) - (x^6*(56*a + 15*b*n + 56*b*log(c*x^n)))/(120*e^3*(d + e*x)^4) - (x^5*(168*a + 73*b*n + 168*b*log(c*x^n)))/(180*e^4*(d + e*x)^3) + (x^2*(280*a + 341*b*n + 280*b*log(c*x^n)))/(20*e^7) - (x^4*(840*a + 533*b*n + 840*b*log(c*x^n)))/(360*e^5*(d + e*x)^2) - (x^3*(840*a + 743*b*n + 840*b*log(c*x^n)))/(90*e^6*(d + e*x)) + (d^2*(280*a + 341*b*n + 280*b*log(c*x^n))*log(1 + (e*x)/d))/(10*e^9) + (28*b*d^2*n*PolyLog(2, -((e*x)/d)))/e^9]
    @test_int [x^7*(a + b*log(c*x^n))/(d + e*x)^7, x, 12, -((7*b*n*x)/e^7) + ((140*a + 223*b*n)*x)/(20*e^7) + (7*b*x*log(c*x^n))/e^7 - (x^7*(a + b*log(c*x^n)))/(6*e*(d + e*x)^6) - (x^6*(7*a + b*n + 7*b*log(c*x^n)))/(30*e^2*(d + e*x)^5) - (x^5*(42*a + 13*b*n + 42*b*log(c*x^n)))/(120*e^3*(d + e*x)^4) - (x^2*(140*a + 153*b*n + 140*b*log(c*x^n)))/(40*e^6*(d + e*x)) - (x^4*(210*a + 107*b*n + 210*b*log(c*x^n)))/(360*e^4*(d + e*x)^3) - (x^3*(420*a + 319*b*n + 420*b*log(c*x^n)))/(360*e^5*(d + e*x)^2) - (d*(140*a + 223*b*n + 140*b*log(c*x^n))*log(1 + (e*x)/d))/(20*e^8) - (7*b*d*n*PolyLog(2, -((e*x)/d)))/e^8]
    @test_int [x^6*(a + b*log(c*x^n))/(d + e*x)^7, x, 8, -((x^6*(a + b*log(c*x^n)))/(6*e*(d + e*x)^6)) - (x^5*(6*a + b*n + 6*b*log(c*x^n)))/(30*e^2*(d + e*x)^5) - (x^2*(20*a + 19*b*n + 20*b*log(c*x^n)))/(40*e^5*(d + e*x)^2) - (x*(20*a + 29*b*n + 20*b*log(c*x^n)))/(20*e^6*(d + e*x)) - (x^4*(30*a + 11*b*n + 30*b*log(c*x^n)))/(120*e^3*(d + e*x)^4) - (x^3*(60*a + 37*b*n + 60*b*log(c*x^n)))/(180*e^4*(d + e*x)^3) + ((20*a + 49*b*n + 20*b*log(c*x^n))*log(1 + (e*x)/d))/(20*e^7) + (b*n*PolyLog(2, -((e*x)/d)))/e^7]
    @test_int [x^5*(a + b*log(c*x^n))/(d + e*x)^7, x, 3, -((b*d^4*n)/(30*e^6*(d + e*x)^5)) + (5*b*d^3*n)/(24*e^6*(d + e*x)^4) - (5*b*d^2*n)/(9*e^6*(d + e*x)^3) + (5*b*d*n)/(6*e^6*(d + e*x)^2) - (5*b*n)/(6*e^6*(d + e*x)) + (x^6*(a + b*log(c*x^n)))/(6*d*(d + e*x)^6) - (b*n*log(d + e*x))/(6*d*e^6)]
    @test_int [x^4*(a + b*log(c*x^n))/(d + e*x)^7, x, 5, -((b*n*x^5)/(30*d^2*(d + e*x)^5)) + (b*d^2*n)/(120*e^5*(d + e*x)^4) - (2*b*d*n)/(45*e^5*(d + e*x)^3) + (b*n)/(10*e^5*(d + e*x)^2) - (2*b*n)/(15*d*e^5*(d + e*x)) + (x^5*(a + b*log(c*x^n)))/(6*d*(d + e*x)^6) + (x^5*(a + b*log(c*x^n)))/(30*d^2*(d + e*x)^5) - (b*n*log(d + e*x))/(30*d^2*e^5)]
    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x)^7, x, 4, -((b*d^2*n)/(30*e^4*(d + e*x)^5)) + (13*b*d*n)/(120*e^4*(d + e*x)^4) - (19*b*n)/(180*e^4*(d + e*x)^3) + (b*n)/(120*d*e^4*(d + e*x)^2) + (b*n)/(60*d^2*e^4*(d + e*x)) + (b*n*log(x))/(60*d^3*e^4) + (d^3*(a + b*log(c*x^n)))/(6*e^4*(d + e*x)^6) - (3*d^2*(a + b*log(c*x^n)))/(5*e^4*(d + e*x)^5) + (3*d*(a + b*log(c*x^n)))/(4*e^4*(d + e*x)^4) - (a + b*log(c*x^n))/(3*e^4*(d + e*x)^3) - (b*n*log(d + e*x))/(60*d^3*e^4)]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x)^7, x, 4, (b*d*n)/(30*e^3*(d + e*x)^5) - (7*b*n)/(120*e^3*(d + e*x)^4) + (b*n)/(180*d*e^3*(d + e*x)^3) + (b*n)/(120*d^2*e^3*(d + e*x)^2) + (b*n)/(60*d^3*e^3*(d + e*x)) + (b*n*log(x))/(60*d^4*e^3) - (d^2*(a + b*log(c*x^n)))/(6*e^3*(d + e*x)^6) + (2*d*(a + b*log(c*x^n)))/(5*e^3*(d + e*x)^5) - (a + b*log(c*x^n))/(4*e^3*(d + e*x)^4) - (b*n*log(d + e*x))/(60*d^4*e^3)]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x)^7, x, 4, -((b*n)/(30*e^2*(d + e*x)^5)) + (b*n)/(120*d*e^2*(d + e*x)^4) + (b*n)/(90*d^2*e^2*(d + e*x)^3) + (b*n)/(60*d^3*e^2*(d + e*x)^2) + (b*n)/(30*d^4*e^2*(d + e*x)) + (b*n*log(x))/(30*d^5*e^2) + (d*(a + b*log(c*x^n)))/(6*e^2*(d + e*x)^6) - (a + b*log(c*x^n))/(5*e^2*(d + e*x)^5) - (b*n*log(d + e*x))/(30*d^5*e^2)]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x)^7, x, 3, (b*n)/(30*d*e*(d + e*x)^5) + (b*n)/(24*d^2*e*(d + e*x)^4) + (b*n)/(18*d^3*e*(d + e*x)^3) + (b*n)/(12*d^4*e*(d + e*x)^2) + (b*n)/(6*d^5*e*(d + e*x)) + (b*n*log(x))/(6*d^6*e) - (a + b*log(c*x^n))/(6*e*(d + e*x)^6) - (b*n*log(d + e*x))/(6*d^6*e)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x)^7), x, 25, -((b*n)/(30*d^2*(d + e*x)^5)) - (11*b*n)/(120*d^3*(d + e*x)^4) - (37*b*n)/(180*d^4*(d + e*x)^3) - (19*b*n)/(40*d^5*(d + e*x)^2) - (29*b*n)/(20*d^6*(d + e*x)) - (29*b*n*log(x))/(20*d^7) + (a + b*log(c*x^n))/(6*d*(d + e*x)^6) + (a + b*log(c*x^n))/(5*d^2*(d + e*x)^5) + (a + b*log(c*x^n))/(4*d^3*(d + e*x)^4) + (a + b*log(c*x^n))/(3*d^4*(d + e*x)^3) + (a + b*log(c*x^n))/(2*d^5*(d + e*x)^2) - (e*x*(a + b*log(c*x^n)))/(d^7*(d + e*x)) - (log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^7 + (49*b*n*log(d + e*x))/(20*d^7) + (b*n*PolyLog(2, -(d/(e*x))))/d^7]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x)^7), x, 22, -((b*n)/(d^7*x)) + (b*e*n)/(30*d^3*(d + e*x)^5) + (17*b*e*n)/(120*d^4*(d + e*x)^4) + (79*b*e*n)/(180*d^5*(d + e*x)^3) + (53*b*e*n)/(40*d^6*(d + e*x)^2) + (103*b*e*n)/(20*d^7*(d + e*x)) + (103*b*e*n*log(x))/(20*d^8) - (a + b*log(c*x^n))/(d^7*x) - (e*(a + b*log(c*x^n)))/(6*d^2*(d + e*x)^6) - (2*e*(a + b*log(c*x^n)))/(5*d^3*(d + e*x)^5) - (3*e*(a + b*log(c*x^n)))/(4*d^4*(d + e*x)^4) - (4*e*(a + b*log(c*x^n)))/(3*d^5*(d + e*x)^3) - (5*e*(a + b*log(c*x^n)))/(2*d^6*(d + e*x)^2) + (6*e^2*x*(a + b*log(c*x^n)))/(d^8*(d + e*x)) + (7*e*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^8 - (223*b*e*n*log(d + e*x))/(20*d^8) - (7*b*e*n*PolyLog(2, -(d/(e*x))))/d^8]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x)^7), x, 23, -((b*n)/(4*d^7*x^2)) + (7*b*e*n)/(d^8*x) - (b*e^2*n)/(30*d^4*(d + e*x)^5) - (23*b*e^2*n)/(120*d^5*(d + e*x)^4) - (34*b*e^2*n)/(45*d^6*(d + e*x)^3) - (14*b*e^2*n)/(5*d^7*(d + e*x)^2) - (131*b*e^2*n)/(10*d^8*(d + e*x)) - (131*b*e^2*n*log(x))/(10*d^9) - (a + b*log(c*x^n))/(2*d^7*x^2) + (7*e*(a + b*log(c*x^n)))/(d^8*x) + (e^2*(a + b*log(c*x^n)))/(6*d^3*(d + e*x)^6) + (3*e^2*(a + b*log(c*x^n)))/(5*d^4*(d + e*x)^5) + (3*e^2*(a + b*log(c*x^n)))/(2*d^5*(d + e*x)^4) + (10*e^2*(a + b*log(c*x^n)))/(3*d^6*(d + e*x)^3) + (15*e^2*(a + b*log(c*x^n)))/(2*d^7*(d + e*x)^2) - (21*e^3*x*(a + b*log(c*x^n)))/(d^9*(d + e*x)) - (28*e^2*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^9 + (341*b*e^2*n*log(d + e*x))/(10*d^9) + (28*b*e^2*n*PolyLog(2, -(d/(e*x))))/d^9]


    @test_int [log(c*x)/(1 - c*x), x, 1, PolyLog(2, 1 - c*x)/c]
    @test_int [log(x/c)/(c - x), x, 1, PolyLog(2, 1 - x/c)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x)^q*(a+b*log(c*x^n))^2=#


    #= ::Subsubsection::Closed:: =#
    #=q>0=#


    @test_int [x^2*(d + e*x)*(a + b*log(c*x^n))^2, x, 6, (2/27)*b^2*d*n^2*x^3 + (1/32)*b^2*e*n^2*x^4 - (2/9)*b*d*n*x^3*(a + b*log(c*x^n)) - (1/8)*b*e*n*x^4*(a + b*log(c*x^n)) + (1/3)*d*x^3*(a + b*log(c*x^n))^2 + (1/4)*e*x^4*(a + b*log(c*x^n))^2]
    @test_int [x^1*(d + e*x)*(a + b*log(c*x^n))^2, x, 6, (1/4)*b^2*d*n^2*x^2 + (2/27)*b^2*e*n^2*x^3 - (1/2)*b*d*n*x^2*(a + b*log(c*x^n)) - (2/9)*b*e*n*x^3*(a + b*log(c*x^n)) + (1/2)*d*x^2*(a + b*log(c*x^n))^2 + (1/3)*e*x^3*(a + b*log(c*x^n))^2]
    @test_int [x^0*(d + e*x)*(a + b*log(c*x^n))^2, x, 7, -2*a*b*d*n*x + 2*b^2*d*n^2*x + (1/4)*b^2*e*n^2*x^2 - 2*b^2*d*n*x*log(c*x^n) - (1/2)*b*e*n*x^2*(a + b*log(c*x^n)) + d*x*(a + b*log(c*x^n))^2 + (1/2)*e*x^2*(a + b*log(c*x^n))^2]
    @test_int [(d + e*x)*(a + b*log(c*x^n))^2/x^1, x, 6, -2*a*b*e*n*x + 2*b^2*e*n^2*x - 2*b^2*e*n*x*log(c*x^n) + e*x*(a + b*log(c*x^n))^2 + (d*(a + b*log(c*x^n))^3)/(3*b*n)]
    @test_int [(d + e*x)*(a + b*log(c*x^n))^2/x^2, x, 6, -((2*b^2*d*n^2)/x) - (2*b*d*n*(a + b*log(c*x^n)))/x - (d*(a + b*log(c*x^n))^2)/x + (e*(a + b*log(c*x^n))^3)/(3*b*n)]
    @test_int [(d + e*x)*(a + b*log(c*x^n))^2/x^3, x, 6, -((b^2*d*n^2)/(4*x^2)) - (2*b^2*e*n^2)/x - (b*d*n*(a + b*log(c*x^n)))/(2*x^2) - (2*b*e*n*(a + b*log(c*x^n)))/x - (d*(a + b*log(c*x^n))^2)/(2*x^2) - (e*(a + b*log(c*x^n))^2)/x]
    @test_int [(d + e*x)*(a + b*log(c*x^n))^2/x^4, x, 6, -((2*b^2*d*n^2)/(27*x^3)) - (b^2*e*n^2)/(4*x^2) - (2*b*d*n*(a + b*log(c*x^n)))/(9*x^3) - (b*e*n*(a + b*log(c*x^n)))/(2*x^2) - (d*(a + b*log(c*x^n))^2)/(3*x^3) - (e*(a + b*log(c*x^n))^2)/(2*x^2)]
    @test_int [(d + e*x)*(a + b*log(c*x^n))^2/x^5, x, 6, -((b^2*d*n^2)/(32*x^4)) - (2*b^2*e*n^2)/(27*x^3) - (b*d*n*(a + b*log(c*x^n)))/(8*x^4) - (2*b*e*n*(a + b*log(c*x^n)))/(9*x^3) - (d*(a + b*log(c*x^n))^2)/(4*x^4) - (e*(a + b*log(c*x^n))^2)/(3*x^3)]


    @test_int [x^2*(d + e*x)^2*(a + b*log(c*x^n))^2, x, 8, (2/27)*b^2*d^2*n^2*x^3 + (1/16)*b^2*d*e*n^2*x^4 + (2/125)*b^2*e^2*n^2*x^5 - (2/9)*b*d^2*n*x^3*(a + b*log(c*x^n)) - (1/4)*b*d*e*n*x^4*(a + b*log(c*x^n)) - (2/25)*b*e^2*n*x^5*(a + b*log(c*x^n)) + (1/3)*d^2*x^3*(a + b*log(c*x^n))^2 + (1/2)*d*e*x^4*(a + b*log(c*x^n))^2 + (1/5)*e^2*x^5*(a + b*log(c*x^n))^2]
    @test_int [x^1*(d + e*x)^2*(a + b*log(c*x^n))^2, x, 8, (1/4)*b^2*d^2*n^2*x^2 + (4/27)*b^2*d*e*n^2*x^3 + (1/32)*b^2*e^2*n^2*x^4 - (1/2)*b*d^2*n*x^2*(a + b*log(c*x^n)) - (4/9)*b*d*e*n*x^3*(a + b*log(c*x^n)) - (1/8)*b*e^2*n*x^4*(a + b*log(c*x^n)) + (1/2)*d^2*x^2*(a + b*log(c*x^n))^2 + (2/3)*d*e*x^3*(a + b*log(c*x^n))^2 + (1/4)*e^2*x^4*(a + b*log(c*x^n))^2]
    @test_int [x^0*(d + e*x)^2*(a + b*log(c*x^n))^2, x, 5, 2*b^2*d^2*n^2*x + (1/2)*b^2*d*e*n^2*x^2 + (2/27)*b^2*e^2*n^2*x^3 + (b^2*d^3*n^2*log(x)^2)/(3*e) - 2*b*d^2*n*x*(a + b*log(c*x^n)) - b*d*e*n*x^2*(a + b*log(c*x^n)) - (2/9)*b*e^2*n*x^3*(a + b*log(c*x^n)) - (2*b*d^3*n*log(x)*(a + b*log(c*x^n)))/(3*e) + ((d + e*x)^3*(a + b*log(c*x^n))^2)/(3*e)]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))^2/x^1, x, 14, -4*a*b*d*e*n*x + 4*b^2*d*e*n^2*x + (1/4)*b^2*e^2*n^2*x^2 - 4*b^2*d*e*n*x*log(c*x^n) - (1/2)*b*e^2*n*x^2*(a + b*log(c*x^n)) + 2*d*e*x*(a + b*log(c*x^n))^2 + (1/2)*e^2*x^2*(a + b*log(c*x^n))^2 + (d^2*(a + b*log(c*x^n))^3)/(3*b*n)]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))^2/x^2, x, 9, -((2*b^2*d^2*n^2)/x) - 2*a*b*e^2*n*x + 2*b^2*e^2*n^2*x - 2*b^2*e^2*n*x*log(c*x^n) - (2*b*d^2*n*(a + b*log(c*x^n)))/x - (d^2*(a + b*log(c*x^n))^2)/x + e^2*x*(a + b*log(c*x^n))^2 + (2*d*e*(a + b*log(c*x^n))^3)/(3*b*n)]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))^2/x^3, x, 8, -((b^2*d^2*n^2)/(4*x^2)) - (4*b^2*d*e*n^2)/x - (b*d^2*n*(a + b*log(c*x^n)))/(2*x^2) - (4*b*d*e*n*(a + b*log(c*x^n)))/x - (d^2*(a + b*log(c*x^n))^2)/(2*x^2) - (2*d*e*(a + b*log(c*x^n))^2)/x + (e^2*(a + b*log(c*x^n))^3)/(3*b*n)]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))^2/x^4, x, 8, -((2*b^2*d^2*n^2)/(27*x^3)) - (b^2*d*e*n^2)/(2*x^2) - (2*b^2*e^2*n^2)/x - (2*b*d^2*n*(a + b*log(c*x^n)))/(9*x^3) - (b*d*e*n*(a + b*log(c*x^n)))/x^2 - (2*b*e^2*n*(a + b*log(c*x^n)))/x - (d^2*(a + b*log(c*x^n))^2)/(3*x^3) - (d*e*(a + b*log(c*x^n))^2)/x^2 - (e^2*(a + b*log(c*x^n))^2)/x]
    @test_int [(d + e*x)^2*(a + b*log(c*x^n))^2/x^5, x, 8, -((b^2*d^2*n^2)/(32*x^4)) - (4*b^2*d*e*n^2)/(27*x^3) - (b^2*e^2*n^2)/(4*x^2) - (b*d^2*n*(a + b*log(c*x^n)))/(8*x^4) - (4*b*d*e*n*(a + b*log(c*x^n)))/(9*x^3) - (b*e^2*n*(a + b*log(c*x^n)))/(2*x^2) - (d^2*(a + b*log(c*x^n))^2)/(4*x^4) - (2*d*e*(a + b*log(c*x^n))^2)/(3*x^3) - (e^2*(a + b*log(c*x^n))^2)/(2*x^2)]


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [x^3*(a + b*log(c*x^n))^2/(d + e*x), x, 12, -((2*a*b*d^2*n*x)/e^3) + (2*b^2*d^2*n^2*x)/e^3 - (b^2*d*n^2*x^2)/(4*e^2) + (2*b^2*n^2*x^3)/(27*e) - (2*b^2*d^2*n*x*log(c*x^n))/e^3 + (b*d*n*x^2*(a + b*log(c*x^n)))/(2*e^2) - (2*b*n*x^3*(a + b*log(c*x^n)))/(9*e) + (d^2*x*(a + b*log(c*x^n))^2)/e^3 - (d*x^2*(a + b*log(c*x^n))^2)/(2*e^2) + (x^3*(a + b*log(c*x^n))^2)/(3*e) - (d^3*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^4 - (2*b*d^3*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^4 + (2*b^2*d^3*n^2*PolyLog(3, -((e*x)/d)))/e^4]
    @test_int [x^2*(a + b*log(c*x^n))^2/(d + e*x), x, 10, (2*a*b*d*n*x)/e^2 - (2*b^2*d*n^2*x)/e^2 + (b^2*n^2*x^2)/(4*e) + (2*b^2*d*n*x*log(c*x^n))/e^2 - (b*n*x^2*(a + b*log(c*x^n)))/(2*e) - (d*x*(a + b*log(c*x^n))^2)/e^2 + (x^2*(a + b*log(c*x^n))^2)/(2*e) + (d^2*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^3 + (2*b*d^2*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^3 - (2*b^2*d^2*n^2*PolyLog(3, -((e*x)/d)))/e^3]
    @test_int [x^1*(a + b*log(c*x^n))^2/(d + e*x), x, 8, -((2*a*b*n*x)/e) + (2*b^2*n^2*x)/e - (2*b^2*n*x*log(c*x^n))/e + (x*(a + b*log(c*x^n))^2)/e - (d*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^2 - (2*b*d*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^2 + (2*b^2*d*n^2*PolyLog(3, -((e*x)/d)))/e^2]
    @test_int [x^0*(a + b*log(c*x^n))^2/(d + e*x), x, 3, ((a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e - (2*b^2*n^2*PolyLog(3, -((e*x)/d)))/e]
    @test_int [(a + b*log(c*x^n))^2/(x^1*(d + e*x)), x, 3, -((log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d) + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d + (2*b^2*n^2*PolyLog(3, -(d/(e*x))))/d]
    @test_int [(a + b*log(c*x^n))^2/(x^2*(d + e*x)), x, 6, -((2*b^2*n^2)/(d*x)) - (2*b*n*(a + b*log(c*x^n)))/(d*x) - (a + b*log(c*x^n))^2/(d*x) + (e*log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^2 - (2*b*e*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^2 - (2*b^2*e*n^2*PolyLog(3, -(d/(e*x))))/d^2]
    @test_int [(a + b*log(c*x^n))^2/(x^3*(d + e*x)), x, 9, -((b^2*n^2)/(4*d*x^2)) + (2*b^2*e*n^2)/(d^2*x) - (b*n*(a + b*log(c*x^n)))/(2*d*x^2) + (2*b*e*n*(a + b*log(c*x^n)))/(d^2*x) - (a + b*log(c*x^n))^2/(2*d*x^2) + (e*(a + b*log(c*x^n))^2)/(d^2*x) - (e^2*log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^3 + (2*b*e^2*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^3 + (2*b^2*e^2*n^2*PolyLog(3, -(d/(e*x))))/d^3]
    @test_int [(a + b*log(c*x^n))^2/(x^4*(d + e*x)), x, 12, -((2*b^2*n^2)/(27*d*x^3)) + (b^2*e*n^2)/(4*d^2*x^2) - (2*b^2*e^2*n^2)/(d^3*x) - (2*b*n*(a + b*log(c*x^n)))/(9*d*x^3) + (b*e*n*(a + b*log(c*x^n)))/(2*d^2*x^2) - (2*b*e^2*n*(a + b*log(c*x^n)))/(d^3*x) - (a + b*log(c*x^n))^2/(3*d*x^3) + (e*(a + b*log(c*x^n))^2)/(2*d^2*x^2) - (e^2*(a + b*log(c*x^n))^2)/(d^3*x) + (e^3*log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^4 - (2*b*e^3*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^4 - (2*b^2*e^3*n^2*PolyLog(3, -(d/(e*x))))/d^4]


    @test_int [x^3*(a + b*log(c*x^n))^2/(d + e*x)^2, x, 13, (4*a*b*d*n*x)/e^3 - (4*b^2*d*n^2*x)/e^3 + (b^2*n^2*x^2)/(4*e^2) + (4*b^2*d*n*x*log(c*x^n))/e^3 - (b*n*x^2*(a + b*log(c*x^n)))/(2*e^2) - (2*d*x*(a + b*log(c*x^n))^2)/e^3 + (x^2*(a + b*log(c*x^n))^2)/(2*e^2) - (d^2*x*(a + b*log(c*x^n))^2)/(e^3*(d + e*x)) + (2*b*d^2*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^4 + (3*d^2*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^4 + (2*b^2*d^2*n^2*PolyLog(2, -((e*x)/d)))/e^4 + (6*b*d^2*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^4 - (6*b^2*d^2*n^2*PolyLog(3, -((e*x)/d)))/e^4]
    @test_int [x^2*(a + b*log(c*x^n))^2/(d + e*x)^2, x, 11, -((2*a*b*n*x)/e^2) + (2*b^2*n^2*x)/e^2 - (2*b^2*n*x*log(c*x^n))/e^2 + (x*(a + b*log(c*x^n))^2)/e^2 + (d*x*(a + b*log(c*x^n))^2)/(e^2*(d + e*x)) - (2*b*d*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^3 - (2*d*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^3 - (2*b^2*d*n^2*PolyLog(2, -((e*x)/d)))/e^3 - (4*b*d*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^3 + (4*b^2*d*n^2*PolyLog(3, -((e*x)/d)))/e^3]
    @test_int [x^1*(a + b*log(c*x^n))^2/(d + e*x)^2, x, 8, -((x*(a + b*log(c*x^n))^2)/(e*(d + e*x))) + (2*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^2 + ((a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^2 + (2*b^2*n^2*PolyLog(2, -((e*x)/d)))/e^2 + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^2 - (2*b^2*n^2*PolyLog(3, -((e*x)/d)))/e^2]
    @test_int [x^0*(a + b*log(c*x^n))^2/(d + e*x)^2, x, 3, (x*(a + b*log(c*x^n))^2)/(d*(d + e*x)) - (2*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/(d*e) - (2*b^2*n^2*PolyLog(2, -((e*x)/d)))/(d*e)]
    @test_int [(a + b*log(c*x^n))^2/(x^1*(d + e*x)^2), x, 7, -((e*x*(a + b*log(c*x^n))^2)/(d^2*(d + e*x))) - (log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^2 + (2*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^2 + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^2 + (2*b^2*n^2*PolyLog(2, -((e*x)/d)))/d^2 + (2*b^2*n^2*PolyLog(3, -(d/(e*x))))/d^2]
    @test_int [(a + b*log(c*x^n))^2/(x^2*(d + e*x)^2), x, 10, -((2*b^2*n^2)/(d^2*x)) - (2*b*n*(a + b*log(c*x^n)))/(d^2*x) - (a + b*log(c*x^n))^2/(d^2*x) + (e^2*x*(a + b*log(c*x^n))^2)/(d^3*(d + e*x)) + (2*e*log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^3 - (2*b*e*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^3 - (4*b*e*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^3 - (2*b^2*e*n^2*PolyLog(2, -((e*x)/d)))/d^3 - (4*b^2*e*n^2*PolyLog(3, -(d/(e*x))))/d^3]
    @test_int [(a + b*log(c*x^n))^2/(x^3*(d + e*x)^2), x, 12, -((b^2*n^2)/(4*d^2*x^2)) + (4*b^2*e*n^2)/(d^3*x) - (b*n*(a + b*log(c*x^n)))/(2*d^2*x^2) + (4*b*e*n*(a + b*log(c*x^n)))/(d^3*x) - (a + b*log(c*x^n))^2/(2*d^2*x^2) + (2*e*(a + b*log(c*x^n))^2)/(d^3*x) - (e^3*x*(a + b*log(c*x^n))^2)/(d^4*(d + e*x)) - (3*e^2*log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^4 + (2*b*e^2*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^4 + (6*b*e^2*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^4 + (2*b^2*e^2*n^2*PolyLog(2, -((e*x)/d)))/d^4 + (6*b^2*e^2*n^2*PolyLog(3, -(d/(e*x))))/d^4]


    @test_int [x^3*(a + b*log(c*x^n))^2/(d + e*x)^3, x, 17, -((2*a*b*n*x)/e^3) + (2*b^2*n^2*x)/e^3 - (2*b^2*n*x*log(c*x^n))/e^3 + (b*d*n*x*(a + b*log(c*x^n)))/(e^3*(d + e*x)) - (d*(a + b*log(c*x^n))^2)/(2*e^4) + (x*(a + b*log(c*x^n))^2)/e^3 + (d^3*(a + b*log(c*x^n))^2)/(2*e^4*(d + e*x)^2) + (3*d*x*(a + b*log(c*x^n))^2)/(e^3*(d + e*x)) - (b^2*d*n^2*log(d + e*x))/e^4 - (5*b*d*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^4 - (3*d*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^4 - (5*b^2*d*n^2*PolyLog(2, -((e*x)/d)))/e^4 - (6*b*d*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^4 + (6*b^2*d*n^2*PolyLog(3, -((e*x)/d)))/e^4, -((2*a*b*n*x)/e^3) + (2*b^2*n^2*x)/e^3 - (2*b^2*n*x*log(c*x^n))/e^3 + (b*d*n*x*(a + b*log(c*x^n)))/(e^3*(d + e*x)) + (b*d*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/e^4 + (x*(a + b*log(c*x^n))^2)/e^3 + (d^3*(a + b*log(c*x^n))^2)/(2*e^4*(d + e*x)^2) + (3*d*x*(a + b*log(c*x^n))^2)/(e^3*(d + e*x)) - (b^2*d*n^2*log(d + e*x))/e^4 - (6*b*d*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^4 - (3*d*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^4 - (b^2*d*n^2*PolyLog(2, -(d/(e*x))))/e^4 - (6*b^2*d*n^2*PolyLog(2, -((e*x)/d)))/e^4 - (6*b*d*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^4 + (6*b^2*d*n^2*PolyLog(3, -((e*x)/d)))/e^4]
    @test_int [x^2*(a + b*log(c*x^n))^2/(d + e*x)^3, x, 14, -((b*n*x*(a + b*log(c*x^n)))/(e^2*(d + e*x))) + (a + b*log(c*x^n))^2/(2*e^3) - (d^2*(a + b*log(c*x^n))^2)/(2*e^3*(d + e*x)^2) - (2*x*(a + b*log(c*x^n))^2)/(e^2*(d + e*x)) + (b^2*n^2*log(d + e*x))/e^3 + (3*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^3 + ((a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^3 + (3*b^2*n^2*PolyLog(2, -((e*x)/d)))/e^3 + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^3 - (2*b^2*n^2*PolyLog(3, -((e*x)/d)))/e^3, -((b*n*x*(a + b*log(c*x^n)))/(e^2*(d + e*x))) - (b*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/e^3 - (d^2*(a + b*log(c*x^n))^2)/(2*e^3*(d + e*x)^2) - (2*x*(a + b*log(c*x^n))^2)/(e^2*(d + e*x)) + (b^2*n^2*log(d + e*x))/e^3 + (4*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^3 + ((a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^3 + (b^2*n^2*PolyLog(2, -(d/(e*x))))/e^3 + (4*b^2*n^2*PolyLog(2, -((e*x)/d)))/e^3 + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^3 - (2*b^2*n^2*PolyLog(3, -((e*x)/d)))/e^3]
    @test_int [x^1*(a + b*log(c*x^n))^2/(d + e*x)^3, x, 4, (b*n*x*(a + b*log(c*x^n)))/(d*e*(d + e*x)) + (x^2*(a + b*log(c*x^n))^2)/(2*d*(d + e*x)^2) - (b*n*(a + b*n + b*log(c*x^n))*log(1 + (e*x)/d))/(d*e^2) - (b^2*n^2*PolyLog(2, -((e*x)/d)))/(d*e^2)]
    @test_int [x^0*(a + b*log(c*x^n))^2/(d + e*x)^3, x, 6, -((b*n*x*(a + b*log(c*x^n)))/(d^2*(d + e*x))) - (b*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/(d^2*e) - (a + b*log(c*x^n))^2/(2*e*(d + e*x)^2) + (b^2*n^2*log(d + e*x))/(d^2*e) + (b^2*n^2*PolyLog(2, -(d/(e*x))))/(d^2*e)]
    @test_int [(a + b*log(c*x^n))^2/(x^1*(d + e*x)^3), x, 14, (b*e*n*x*(a + b*log(c*x^n)))/(d^3*(d + e*x)) - (a + b*log(c*x^n))^2/(2*d^3) + (a + b*log(c*x^n))^2/(2*d*(d + e*x)^2) - (e*x*(a + b*log(c*x^n))^2)/(d^3*(d + e*x)) + (a + b*log(c*x^n))^3/(3*b*d^3*n) - (b^2*n^2*log(d + e*x))/d^3 + (3*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^3 - ((a + b*log(c*x^n))^2*log(1 + (e*x)/d))/d^3 + (3*b^2*n^2*PolyLog(2, -((e*x)/d)))/d^3 - (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/d^3 + (2*b^2*n^2*PolyLog(3, -((e*x)/d)))/d^3, (b*e*n*x*(a + b*log(c*x^n)))/(d^3*(d + e*x)) + (b*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^3 + (a + b*log(c*x^n))^2/(2*d*(d + e*x)^2) - (e*x*(a + b*log(c*x^n))^2)/(d^3*(d + e*x)) - (log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^3 - (b^2*n^2*log(d + e*x))/d^3 + (2*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^3 - (b^2*n^2*PolyLog(2, -(d/(e*x))))/d^3 + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^3 + (2*b^2*n^2*PolyLog(2, -((e*x)/d)))/d^3 + (2*b^2*n^2*PolyLog(3, -(d/(e*x))))/d^3]
    @test_int [(a + b*log(c*x^n))^2/(x^2*(d + e*x)^3), x, 16, -((2*b^2*n^2)/(d^3*x)) - (2*b*n*(a + b*log(c*x^n)))/(d^3*x) - (b*e^2*n*x*(a + b*log(c*x^n)))/(d^4*(d + e*x)) + (e*(a + b*log(c*x^n))^2)/(2*d^4) - (a + b*log(c*x^n))^2/(d^3*x) - (e*(a + b*log(c*x^n))^2)/(2*d^2*(d + e*x)^2) + (2*e^2*x*(a + b*log(c*x^n))^2)/(d^4*(d + e*x)) - (e*(a + b*log(c*x^n))^3)/(b*d^4*n) + (b^2*e*n^2*log(d + e*x))/d^4 - (5*b*e*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^4 + (3*e*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/d^4 - (5*b^2*e*n^2*PolyLog(2, -((e*x)/d)))/d^4 + (6*b*e*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/d^4 - (6*b^2*e*n^2*PolyLog(3, -((e*x)/d)))/d^4, -((2*b^2*n^2)/(d^3*x)) - (2*b*n*(a + b*log(c*x^n)))/(d^3*x) - (b*e^2*n*x*(a + b*log(c*x^n)))/(d^4*(d + e*x)) - (b*e*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/d^4 - (a + b*log(c*x^n))^2/(d^3*x) - (e*(a + b*log(c*x^n))^2)/(2*d^2*(d + e*x)^2) + (2*e^2*x*(a + b*log(c*x^n))^2)/(d^4*(d + e*x)) + (3*e*log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^4 + (b^2*e*n^2*log(d + e*x))/d^4 - (4*b*e*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^4 + (b^2*e*n^2*PolyLog(2, -(d/(e*x))))/d^4 - (6*b*e*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^4 - (4*b^2*e*n^2*PolyLog(2, -((e*x)/d)))/d^4 - (6*b^2*e*n^2*PolyLog(3, -(d/(e*x))))/d^4]


    @test_int [x^4*(a + b*log(c*x^n))^2/(d + e*x)^4, x, 27, -((2*a*b*n*x)/e^4) + (2*b^2*n^2*x)/e^4 - (b^2*d^2*n^2)/(3*e^5*(d + e*x)) - (b^2*d*n^2*log(x))/(3*e^5) - (2*b^2*n*x*log(c*x^n))/e^4 + (b*d^3*n*(a + b*log(c*x^n)))/(3*e^5*(d + e*x)^2) + (10*b*d*n*x*(a + b*log(c*x^n)))/(3*e^4*(d + e*x)) - (5*d*(a + b*log(c*x^n))^2)/(3*e^5) + (x*(a + b*log(c*x^n))^2)/e^4 - (d^4*(a + b*log(c*x^n))^2)/(3*e^5*(d + e*x)^3) + (2*d^3*(a + b*log(c*x^n))^2)/(e^5*(d + e*x)^2) + (6*d*x*(a + b*log(c*x^n))^2)/(e^4*(d + e*x)) - (3*b^2*d*n^2*log(d + e*x))/e^5 - (26*b*d*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/(3*e^5) - (4*d*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^5 - (26*b^2*d*n^2*PolyLog(2, -((e*x)/d)))/(3*e^5) - (8*b*d*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^5 + (8*b^2*d*n^2*PolyLog(3, -((e*x)/d)))/e^5, -((2*a*b*n*x)/e^4) + (2*b^2*n^2*x)/e^4 - (b^2*d^2*n^2)/(3*e^5*(d + e*x)) - (b^2*d*n^2*log(x))/(3*e^5) - (2*b^2*n*x*log(c*x^n))/e^4 + (b*d^3*n*(a + b*log(c*x^n)))/(3*e^5*(d + e*x)^2) + (10*b*d*n*x*(a + b*log(c*x^n)))/(3*e^4*(d + e*x)) + (10*b*d*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/(3*e^5) + (x*(a + b*log(c*x^n))^2)/e^4 - (d^4*(a + b*log(c*x^n))^2)/(3*e^5*(d + e*x)^3) + (2*d^3*(a + b*log(c*x^n))^2)/(e^5*(d + e*x)^2) + (6*d*x*(a + b*log(c*x^n))^2)/(e^4*(d + e*x)) - (3*b^2*d*n^2*log(d + e*x))/e^5 - (12*b*d*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^5 - (4*d*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^5 - (10*b^2*d*n^2*PolyLog(2, -(d/(e*x))))/(3*e^5) - (12*b^2*d*n^2*PolyLog(2, -((e*x)/d)))/e^5 - (8*b*d*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^5 + (8*b^2*d*n^2*PolyLog(3, -((e*x)/d)))/e^5]
    @test_int [x^3*(a + b*log(c*x^n))^2/(d + e*x)^4, x, 24, (b^2*d*n^2)/(3*e^4*(d + e*x)) + (b^2*n^2*log(x))/(3*e^4) - (b*d^2*n*(a + b*log(c*x^n)))/(3*e^4*(d + e*x)^2) - (7*b*n*x*(a + b*log(c*x^n)))/(3*e^3*(d + e*x)) + (7*(a + b*log(c*x^n))^2)/(6*e^4) + (d^3*(a + b*log(c*x^n))^2)/(3*e^4*(d + e*x)^3) - (3*d^2*(a + b*log(c*x^n))^2)/(2*e^4*(d + e*x)^2) - (3*x*(a + b*log(c*x^n))^2)/(e^3*(d + e*x)) + (2*b^2*n^2*log(d + e*x))/e^4 + (11*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/(3*e^4) + ((a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^4 + (11*b^2*n^2*PolyLog(2, -((e*x)/d)))/(3*e^4) + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^4 - (2*b^2*n^2*PolyLog(3, -((e*x)/d)))/e^4, (b^2*d*n^2)/(3*e^4*(d + e*x)) + (b^2*n^2*log(x))/(3*e^4) - (b*d^2*n*(a + b*log(c*x^n)))/(3*e^4*(d + e*x)^2) - (7*b*n*x*(a + b*log(c*x^n)))/(3*e^3*(d + e*x)) - (7*b*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/(3*e^4) + (d^3*(a + b*log(c*x^n))^2)/(3*e^4*(d + e*x)^3) - (3*d^2*(a + b*log(c*x^n))^2)/(2*e^4*(d + e*x)^2) - (3*x*(a + b*log(c*x^n))^2)/(e^3*(d + e*x)) + (2*b^2*n^2*log(d + e*x))/e^4 + (6*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/e^4 + ((a + b*log(c*x^n))^2*log(1 + (e*x)/d))/e^4 + (7*b^2*n^2*PolyLog(2, -(d/(e*x))))/(3*e^4) + (6*b^2*n^2*PolyLog(2, -((e*x)/d)))/e^4 + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/e^4 - (2*b^2*n^2*PolyLog(3, -((e*x)/d)))/e^4]
    @test_int [x^2*(a + b*log(c*x^n))^2/(d + e*x)^4, x, 5, (b*n*x^2*(a + b*log(c*x^n)))/(3*d*e*(d + e*x)^2) + (x^3*(a + b*log(c*x^n))^2)/(3*d*(d + e*x)^3) + (b*n*x*(2*a + b*n + 2*b*log(c*x^n)))/(3*d*e^2*(d + e*x)) - (b*n*(2*a + 3*b*n + 2*b*log(c*x^n))*log(1 + (e*x)/d))/(3*d*e^3) - (2*b^2*n^2*PolyLog(2, -((e*x)/d)))/(3*d*e^3)]
    @test_int [x^1*(a + b*log(c*x^n))^2/(d + e*x)^4, x, 8, (b^2*n^2)/(3*d*e^2*(d + e*x)) + (b*n*(a + b*log(c*x^n)))/(3*d*e^2*(d + e*x)) - (b*n*(a + b*log(c*x^n)))/(3*e^2*(d + e*x)^2) + (a + b*log(c*x^n))^2/(6*d^2*e^2) + (d*(a + b*log(c*x^n))^2)/(3*e^2*(d + e*x)^3) - (a + b*log(c*x^n))^2/(2*e^2*(d + e*x)^2) - (b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/(3*d^2*e^2) - (b^2*n^2*PolyLog(2, -((e*x)/d)))/(3*d^2*e^2), (b^2*n^2)/(3*d*e^2*(d + e*x)) - (b*n*x^2*(a + b*log(c*x^n)))/(3*d^2*(d + e*x)^2) + (b*n*x*(a + b*log(c*x^n)))/(3*d^2*e*(d + e*x)) + (x^2*(a + b*log(c*x^n))^2)/(3*d*(d + e*x)^3) + (x^2*(a + b*log(c*x^n))^2)/(6*d^2*(d + e*x)^2) + (b^2*n^2*log(d + e*x))/(3*d^2*e^2) - (b*n*(a + b*n + b*log(c*x^n))*log(1 + (e*x)/d))/(3*d^2*e^2) - (b^2*n^2*PolyLog(2, -((e*x)/d)))/(3*d^2*e^2)]
    @test_int [x^0*(a + b*log(c*x^n))^2/(d + e*x)^4, x, 10, -((b^2*n^2)/(3*d^2*e*(d + e*x))) - (b^2*n^2*log(x))/(3*d^3*e) + (b*n*(a + b*log(c*x^n)))/(3*d*e*(d + e*x)^2) - (2*b*n*x*(a + b*log(c*x^n)))/(3*d^3*(d + e*x)) - (2*b*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/(3*d^3*e) - (a + b*log(c*x^n))^2/(3*e*(d + e*x)^3) + (b^2*n^2*log(d + e*x))/(d^3*e) + (2*b^2*n^2*PolyLog(2, -(d/(e*x))))/(3*d^3*e)]
    @test_int [(a + b*log(c*x^n))^2/(x^1*(d + e*x)^4), x, 25, (b^2*n^2)/(3*d^3*(d + e*x)) + (b^2*n^2*log(x))/(3*d^4) - (b*n*(a + b*log(c*x^n)))/(3*d^2*(d + e*x)^2) + (5*b*e*n*x*(a + b*log(c*x^n)))/(3*d^4*(d + e*x)) - (5*(a + b*log(c*x^n))^2)/(6*d^4) + (a + b*log(c*x^n))^2/(3*d*(d + e*x)^3) + (a + b*log(c*x^n))^2/(2*d^2*(d + e*x)^2) - (e*x*(a + b*log(c*x^n))^2)/(d^4*(d + e*x)) + (a + b*log(c*x^n))^3/(3*b*d^4*n) - (2*b^2*n^2*log(d + e*x))/d^4 + (11*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/(3*d^4) - ((a + b*log(c*x^n))^2*log(1 + (e*x)/d))/d^4 + (11*b^2*n^2*PolyLog(2, -((e*x)/d)))/(3*d^4) - (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/d^4 + (2*b^2*n^2*PolyLog(3, -((e*x)/d)))/d^4, (b^2*n^2)/(3*d^3*(d + e*x)) + (b^2*n^2*log(x))/(3*d^4) - (b*n*(a + b*log(c*x^n)))/(3*d^2*(d + e*x)^2) + (5*b*e*n*x*(a + b*log(c*x^n)))/(3*d^4*(d + e*x)) + (5*b*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/(3*d^4) + (a + b*log(c*x^n))^2/(3*d*(d + e*x)^3) + (a + b*log(c*x^n))^2/(2*d^2*(d + e*x)^2) - (e*x*(a + b*log(c*x^n))^2)/(d^4*(d + e*x)) - (log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^4 - (2*b^2*n^2*log(d + e*x))/d^4 + (2*b*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^4 - (5*b^2*n^2*PolyLog(2, -(d/(e*x))))/(3*d^4) + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^4 + (2*b^2*n^2*PolyLog(2, -((e*x)/d)))/d^4 + (2*b^2*n^2*PolyLog(3, -(d/(e*x))))/d^4]
    @test_int [(a + b*log(c*x^n))^2/(x^2*(d + e*x)^4), x, 26, -((2*b^2*n^2)/(d^4*x)) - (b^2*e*n^2)/(3*d^4*(d + e*x)) - (b^2*e*n^2*log(x))/(3*d^5) - (2*b*n*(a + b*log(c*x^n)))/(d^4*x) + (b*e*n*(a + b*log(c*x^n)))/(3*d^3*(d + e*x)^2) - (8*b*e^2*n*x*(a + b*log(c*x^n)))/(3*d^5*(d + e*x)) + (4*e*(a + b*log(c*x^n))^2)/(3*d^5) - (a + b*log(c*x^n))^2/(d^4*x) - (e*(a + b*log(c*x^n))^2)/(3*d^2*(d + e*x)^3) - (e*(a + b*log(c*x^n))^2)/(d^3*(d + e*x)^2) + (3*e^2*x*(a + b*log(c*x^n))^2)/(d^5*(d + e*x)) - (4*e*(a + b*log(c*x^n))^3)/(3*b*d^5*n) + (3*b^2*e*n^2*log(d + e*x))/d^5 - (26*b*e*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/(3*d^5) + (4*e*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/d^5 - (26*b^2*e*n^2*PolyLog(2, -((e*x)/d)))/(3*d^5) + (8*b*e*n*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/d^5 - (8*b^2*e*n^2*PolyLog(3, -((e*x)/d)))/d^5, -((2*b^2*n^2)/(d^4*x)) - (b^2*e*n^2)/(3*d^4*(d + e*x)) - (b^2*e*n^2*log(x))/(3*d^5) - (2*b*n*(a + b*log(c*x^n)))/(d^4*x) + (b*e*n*(a + b*log(c*x^n)))/(3*d^3*(d + e*x)^2) - (8*b*e^2*n*x*(a + b*log(c*x^n)))/(3*d^5*(d + e*x)) - (8*b*e*n*log(1 + d/(e*x))*(a + b*log(c*x^n)))/(3*d^5) - (a + b*log(c*x^n))^2/(d^4*x) - (e*(a + b*log(c*x^n))^2)/(3*d^2*(d + e*x)^3) - (e*(a + b*log(c*x^n))^2)/(d^3*(d + e*x)^2) + (3*e^2*x*(a + b*log(c*x^n))^2)/(d^5*(d + e*x)) + (4*e*log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/d^5 + (3*b^2*e*n^2*log(d + e*x))/d^5 - (6*b*e*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^5 + (8*b^2*e*n^2*PolyLog(2, -(d/(e*x))))/(3*d^5) - (8*b*e*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^5 - (6*b^2*e*n^2*PolyLog(2, -((e*x)/d)))/d^5 - (8*b^2*e*n^2*PolyLog(3, -(d/(e*x))))/d^5]


    @test_int [(x*log(x)^2)/(d + e*x)^4, x, 8, -(x/(3*d^2*e*(d + e*x))) + (x*log(x))/(3*d*e*(d + e*x)^2) + (x^2*(3*d + e*x)*log(x)^2)/(6*d^2*(d + e*x)^3) - (log(x)*log(1 + (e*x)/d))/(3*d^2*e^2) - PolyLog(2, -((e*x)/d))/(3*d^2*e^2), 1/(3*d*e^2*(d + e*x)) - (x^2*log(x))/(3*d^2*(d + e*x)^2) + (x*log(x))/(3*d^2*e*(d + e*x)) + (x^2*log(x)^2)/(3*d*(d + e*x)^3) + (x^2*log(x)^2)/(6*d^2*(d + e*x)^2) + log(d + e*x)/(3*d^2*e^2) - ((1 + log(x))*log(1 + (e*x)/d))/(3*d^2*e^2) - PolyLog(2, -((e*x)/d))/(3*d^2*e^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x)^q*(a+b*log(c*x^n))^3=#


    #= ::Subsubsection:: =#
    #=q>0=#


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [(a + b*log(c*x^n))^3/(x*(d + e*x)), x, 4, -((log(1 + d/(e*x))*(a + b*log(c*x^n))^3)/d) + (3*b*n*(a + b*log(c*x^n))^2*PolyLog(2, -(d/(e*x))))/d + (6*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, -(d/(e*x))))/d + (6*b^3*n^3*PolyLog(4, -(d/(e*x))))/d]


    @test_int [(a + b*log(c*x^n))^3/(x*(d + e*x)^2), x, 9, -((e*x*(a + b*log(c*x^n))^3)/(d^2*(d + e*x))) - (log(1 + d/(e*x))*(a + b*log(c*x^n))^3)/d^2 + (3*b*n*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/d^2 + (3*b*n*(a + b*log(c*x^n))^2*PolyLog(2, -(d/(e*x))))/d^2 + (6*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/d^2 + (6*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, -(d/(e*x))))/d^2 - (6*b^3*n^3*PolyLog(3, -((e*x)/d)))/d^2 + (6*b^3*n^3*PolyLog(4, -(d/(e*x))))/d^2]


    @test_int [(a + b*log(c*x^n))^3/(x*(d + e*x)^3), x, 18, (3*b*e*n*x*(a + b*log(c*x^n))^2)/(2*d^3*(d + e*x)) - (a + b*log(c*x^n))^3/(2*d^3) + (a + b*log(c*x^n))^3/(2*d*(d + e*x)^2) - (e*x*(a + b*log(c*x^n))^3)/(d^3*(d + e*x)) + (a + b*log(c*x^n))^4/(4*b*d^3*n) - (3*b^2*n^2*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^3 + (9*b*n*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/(2*d^3) - ((a + b*log(c*x^n))^3*log(1 + (e*x)/d))/d^3 - (3*b^3*n^3*PolyLog(2, -((e*x)/d)))/d^3 + (9*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/d^3 - (3*b*n*(a + b*log(c*x^n))^2*PolyLog(2, -((e*x)/d)))/d^3 - (9*b^3*n^3*PolyLog(3, -((e*x)/d)))/d^3 + (6*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, -((e*x)/d)))/d^3 - (6*b^3*n^3*PolyLog(4, -((e*x)/d)))/d^3, (3*b*e*n*x*(a + b*log(c*x^n))^2)/(2*d^3*(d + e*x)) + (3*b*n*log(1 + d/(e*x))*(a + b*log(c*x^n))^2)/(2*d^3) + (a + b*log(c*x^n))^3/(2*d*(d + e*x)^2) - (e*x*(a + b*log(c*x^n))^3)/(d^3*(d + e*x)) - (log(1 + d/(e*x))*(a + b*log(c*x^n))^3)/d^3 - (3*b^2*n^2*(a + b*log(c*x^n))*log(1 + (e*x)/d))/d^3 + (3*b*n*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/d^3 - (3*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, -(d/(e*x))))/d^3 + (3*b*n*(a + b*log(c*x^n))^2*PolyLog(2, -(d/(e*x))))/d^3 - (3*b^3*n^3*PolyLog(2, -((e*x)/d)))/d^3 + (6*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/d^3 - (3*b^3*n^3*PolyLog(3, -(d/(e*x))))/d^3 + (6*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, -(d/(e*x))))/d^3 - (6*b^3*n^3*PolyLog(3, -((e*x)/d)))/d^3 + (6*b^3*n^3*PolyLog(4, -(d/(e*x))))/d^3]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x)^q*(a+b*log(c*x^n))^(1/2)=#


    #= ::Subsubsection::Closed:: =#
    #=q>0=#


    @test_int [(d + e*x)^1*(a + b*log(c*x^n))^(1/2), x, 10, ((-(1/2))*sqrt(b)*d*sqrt(n)*sqrt(pi)*x*Erfi(sqrt(a + b*log(c*x^n))/(sqrt(b)*sqrt(n))))/(ℯ^(a/(b*n))*(c*x^n)^n^(-1)) - ((1/4)*sqrt(b)*e*sqrt(n)*sqrt(pi/2)*x^2*Erfi((sqrt(2)*sqrt(a + b*log(c*x^n)))/(sqrt(b)*sqrt(n))))/(ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) + d*x*sqrt(a + b*log(c*x^n)) + (1/2)*e*x^2*sqrt(a + b*log(c*x^n))]


    @test_int [(d + e*x)^2*(a + b*log(c*x^n))^(1/2), x, 14, ((-(1/2))*sqrt(b)*d^2*sqrt(n)*sqrt(pi)*x*Erfi(sqrt(a + b*log(c*x^n))/(sqrt(b)*sqrt(n))))/(ℯ^(a/(b*n))*(c*x^n)^n^(-1)) - ((1/2)*sqrt(b)*d*e*sqrt(n)*sqrt(pi/2)*x^2*Erfi((sqrt(2)*sqrt(a + b*log(c*x^n)))/(sqrt(b)*sqrt(n))))/(ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) - ((1/6)*sqrt(b)*e^2*sqrt(n)*sqrt(pi/3)*x^3*Erfi((sqrt(3)*sqrt(a + b*log(c*x^n)))/(sqrt(b)*sqrt(n))))/(ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)) + d^2*x*sqrt(a + b*log(c*x^n)) + d*e*x^2*sqrt(a + b*log(c*x^n)) + (1/3)*e^2*x^3*sqrt(a + b*log(c*x^n))]


    @test_int [(d + e*x)^3*(a + b*log(c*x^n))^(1/2), x, 18, ((-(1/2))*sqrt(b)*d^3*sqrt(n)*sqrt(pi)*x*Erfi(sqrt(a + b*log(c*x^n))/(sqrt(b)*sqrt(n))))/(ℯ^(a/(b*n))*(c*x^n)^n^(-1)) - ((1/16)*sqrt(b)*e^3*sqrt(n)*sqrt(pi)*x^4*Erfi((2*sqrt(a + b*log(c*x^n)))/(sqrt(b)*sqrt(n))))/(ℯ^((4*a)/(b*n))*(c*x^n)^(4/n)) - ((3/4)*sqrt(b)*d^2*e*sqrt(n)*sqrt(pi/2)*x^2*Erfi((sqrt(2)*sqrt(a + b*log(c*x^n)))/(sqrt(b)*sqrt(n))))/(ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)) - ((1/2)*sqrt(b)*d*e^2*sqrt(n)*sqrt(pi/3)*x^3*Erfi((sqrt(3)*sqrt(a + b*log(c*x^n)))/(sqrt(b)*sqrt(n))))/(ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)) + d^3*x*sqrt(a + b*log(c*x^n)) + (3/2)*d^2*e*x^2*sqrt(a + b*log(c*x^n)) + d*e^2*x^3*sqrt(a + b*log(c*x^n)) + (1/4)*e^3*x^4*sqrt(a + b*log(c*x^n))]


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [(a + b*log(c*x^n))^(1/2)/(d + e*x)^1, x, 0, Unintegrable(sqrt(a + b*log(c*x^n))/(d + e*x), x)]


    @test_int [(a + b*log(c*x^n))^(1/2)/(d + e*x)^2, x, 1, (x*sqrt(a + b*log(c*x^n)))/(d*(d + e*x)) - (b*n*Unintegrable(1/((d + e*x)*sqrt(a + b*log(c*x^n))), x))/(2*d)]


    @test_int [(a + b*log(c*x^n))^(1/2)/(d + e*x)^3, x, 1, -(sqrt(a + b*log(c*x^n))/(2*e*(d + e*x)^2)) + (b*n*Unintegrable(1/(x*(d + e*x)^2*sqrt(a + b*log(c*x^n))), x))/(4*e)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x)^(q/2)*(a+b*log(c*x^n))=#


    #= ::Subsubsection::Closed:: =#
    #=q>0=#


    @test_int [x^3*sqrt(d + e*x)*(a + b*log(c*x^n)), x, If($VersionNumber>=8, 8, 9), (64*b*d^4*n*sqrt(d + e*x))/(315*e^4) + (64*b*d^3*n*(d + e*x)^(3/2))/(945*e^4) - (356*b*d^2*n*(d + e*x)^(5/2))/(1575*e^4) + (80*b*d*n*(d + e*x)^(7/2))/(441*e^4) - (4*b*n*(d + e*x)^(9/2))/(81*e^4) - (64*b*d^(9/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(315*e^4) - (2*d^3*(d + e*x)^(3/2)*(a + b*log(c*x^n)))/(3*e^4) + (6*d^2*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e^4) - (6*d*(d + e*x)^(7/2)*(a + b*log(c*x^n)))/(7*e^4) + (2*(d + e*x)^(9/2)*(a + b*log(c*x^n)))/(9*e^4)]
    @test_int [x^2*sqrt(d + e*x)*(a + b*log(c*x^n)), x, If($VersionNumber>=8, 6, 7), -((32*b*d^3*n*sqrt(d + e*x))/(105*e^3)) - (32*b*d^2*n*(d + e*x)^(3/2))/(315*e^3) + (36*b*d*n*(d + e*x)^(5/2))/(175*e^3) - (4*b*n*(d + e*x)^(7/2))/(49*e^3) + (32*b*d^(7/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(105*e^3) + (2*d^2*(d + e*x)^(3/2)*(a + b*log(c*x^n)))/(3*e^3) - (4*d*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e^3) + (2*(d + e*x)^(7/2)*(a + b*log(c*x^n)))/(7*e^3)]
    @test_int [x^1*sqrt(d + e*x)*(a + b*log(c*x^n)), x, If($VersionNumber>=8, 7, 8), (8*b*d^2*n*sqrt(d + e*x))/(15*e^2) + (8*b*d*n*(d + e*x)^(3/2))/(45*e^2) - (4*b*n*(d + e*x)^(5/2))/(25*e^2) - (8*b*d^(5/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(15*e^2) - (2*d*(d + e*x)^(3/2)*(a + b*log(c*x^n)))/(3*e^2) + (2*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e^2)]
    @test_int [x^0*sqrt(d + e*x)*(a + b*log(c*x^n)), x, 5, -((4*b*d*n*sqrt(d + e*x))/(3*e)) - (4*b*n*(d + e*x)^(3/2))/(9*e) + (4*b*d^(3/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(3*e) + (2*(d + e*x)^(3/2)*(a + b*log(c*x^n)))/(3*e)]
    @test_int [sqrt(d + e*x)*(a + b*log(c*x^n))/x^1, x, 12, -4*b*n*sqrt(d + e*x) + 4*b*sqrt(d)*n*atanh(sqrt(d + e*x)/sqrt(d)) + 2*b*sqrt(d)*n*atanh(sqrt(d + e*x)/sqrt(d))^2 + 2*sqrt(d + e*x)*(a + b*log(c*x^n)) - 2*sqrt(d)*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)) - 4*b*sqrt(d)*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))) - 2*b*sqrt(d)*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x)))]
    @test_int [sqrt(d + e*x)*(a + b*log(c*x^n))/x^2, x, 11, -((b*n*sqrt(d + e*x))/x) - (b*e*n*atanh(sqrt(d + e*x)/sqrt(d)))/sqrt(d) + (b*e*n*atanh(sqrt(d + e*x)/sqrt(d))^2)/sqrt(d) - (sqrt(d + e*x)*(a + b*log(c*x^n)))/x - (e*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)))/sqrt(d) - (2*b*e*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/sqrt(d) - (b*e*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/sqrt(d)]
    @test_int [sqrt(d + e*x)*(a + b*log(c*x^n))/x^3, x, 16, -((b*n*sqrt(d + e*x))/(4*x^2)) - (3*b*e*n*sqrt(d + e*x))/(8*d*x) - (b*e^2*n*atanh(sqrt(d + e*x)/sqrt(d)))/(8*d^(3/2)) - (b*e^2*n*atanh(sqrt(d + e*x)/sqrt(d))^2)/(4*d^(3/2)) - (sqrt(d + e*x)*(a + b*log(c*x^n)))/(2*x^2) - (e*sqrt(d + e*x)*(a + b*log(c*x^n)))/(4*d*x) + (e^2*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)))/(4*d^(3/2)) + (b*e^2*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/(2*d^(3/2)) + (b*e^2*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/(4*d^(3/2))]


    @test_int [x^3*(d + e*x)^(3/2)*(a + b*log(c*x^n)), x, 9, (64*b*d^5*n*sqrt(d + e*x))/(1155*e^4) + (64*b*d^4*n*(d + e*x)^(3/2))/(3465*e^4) + (64*b*d^3*n*(d + e*x)^(5/2))/(5775*e^4) - (172*b*d^2*n*(d + e*x)^(7/2))/(1617*e^4) + (32*b*d*n*(d + e*x)^(9/2))/(297*e^4) - (4*b*n*(d + e*x)^(11/2))/(121*e^4) - (64*b*d^(11/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(1155*e^4) - (2*d^3*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e^4) + (6*d^2*(d + e*x)^(7/2)*(a + b*log(c*x^n)))/(7*e^4) - (2*d*(d + e*x)^(9/2)*(a + b*log(c*x^n)))/(3*e^4) + (2*(d + e*x)^(11/2)*(a + b*log(c*x^n)))/(11*e^4)]
    @test_int [x^2*(d + e*x)^(3/2)*(a + b*log(c*x^n)), x, 6, -((32*b*d^4*n*sqrt(d + e*x))/(315*e^3)) - (32*b*d^3*n*(d + e*x)^(3/2))/(945*e^3) - (32*b*d^2*n*(d + e*x)^(5/2))/(1575*e^3) + (44*b*d*n*(d + e*x)^(7/2))/(441*e^3) - (4*b*n*(d + e*x)^(9/2))/(81*e^3) + (32*b*d^(9/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(315*e^3) + (2*d^2*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e^3) - (4*d*(d + e*x)^(7/2)*(a + b*log(c*x^n)))/(7*e^3) + (2*(d + e*x)^(9/2)*(a + b*log(c*x^n)))/(9*e^3)]
    @test_int [x^1*(d + e*x)^(3/2)*(a + b*log(c*x^n)), x, 8, (8*b*d^3*n*sqrt(d + e*x))/(35*e^2) + (8*b*d^2*n*(d + e*x)^(3/2))/(105*e^2) + (8*b*d*n*(d + e*x)^(5/2))/(175*e^2) - (4*b*n*(d + e*x)^(7/2))/(49*e^2) - (8*b*d^(7/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(35*e^2) - (2*d*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e^2) + (2*(d + e*x)^(7/2)*(a + b*log(c*x^n)))/(7*e^2)]
    @test_int [x^0*(d + e*x)^(3/2)*(a + b*log(c*x^n)), x, 6, -((4*b*d^2*n*sqrt(d + e*x))/(5*e)) - (4*b*d*n*(d + e*x)^(3/2))/(15*e) - (4*b*n*(d + e*x)^(5/2))/(25*e) + (4*b*d^(5/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(5*e) + (2*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e)]
    @test_int [(d + e*x)^(3/2)*(a + b*log(c*x^n))/x^1, x, 18, (-(16/3))*b*d*n*sqrt(d + e*x) - (4/9)*b*n*(d + e*x)^(3/2) + (16/3)*b*d^(3/2)*n*atanh(sqrt(d + e*x)/sqrt(d)) + 2*b*d^(3/2)*n*atanh(sqrt(d + e*x)/sqrt(d))^2 + 2*d*sqrt(d + e*x)*(a + b*log(c*x^n)) + (2/3)*(d + e*x)^(3/2)*(a + b*log(c*x^n)) - 2*d^(3/2)*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)) - 4*b*d^(3/2)*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))) - 2*b*d^(3/2)*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x)))]
    @test_int [(d + e*x)^(3/2)*(a + b*log(c*x^n))/x^2, x, 14, -4*b*e*n*sqrt(d + e*x) - (b*d*n*sqrt(d + e*x))/x + 3*b*sqrt(d)*e*n*atanh(sqrt(d + e*x)/sqrt(d)) + 3*b*sqrt(d)*e*n*atanh(sqrt(d + e*x)/sqrt(d))^2 + 3*e*sqrt(d + e*x)*(a + b*log(c*x^n)) - ((d + e*x)^(3/2)*(a + b*log(c*x^n)))/x - 3*sqrt(d)*e*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)) - 6*b*sqrt(d)*e*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))) - 3*b*sqrt(d)*e*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x)))]
    @test_int [(d + e*x)^(3/2)*(a + b*log(c*x^n))/x^3, x, 16, -((b*d*n*sqrt(d + e*x))/(4*x^2)) - (11*b*e*n*sqrt(d + e*x))/(8*x) - (9*b*e^2*n*atanh(sqrt(d + e*x)/sqrt(d)))/(8*sqrt(d)) + (3*b*e^2*n*atanh(sqrt(d + e*x)/sqrt(d))^2)/(4*sqrt(d)) - (3*e*sqrt(d + e*x)*(a + b*log(c*x^n)))/(4*x) - ((d + e*x)^(3/2)*(a + b*log(c*x^n)))/(2*x^2) - (3*e^2*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)))/(4*sqrt(d)) - (3*b*e^2*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/(2*sqrt(d)) - (3*b*e^2*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/(4*sqrt(d))]


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [x^3*(a + b*log(c*x^n))/sqrt(d + e*x), x, 7, (64*b*d^3*n*sqrt(d + e*x))/(35*e^4) - (76*b*d^2*n*(d + e*x)^(3/2))/(105*e^4) + (64*b*d*n*(d + e*x)^(5/2))/(175*e^4) - (4*b*n*(d + e*x)^(7/2))/(49*e^4) - (64*b*d^(7/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(35*e^4) - (2*d^3*sqrt(d + e*x)*(a + b*log(c*x^n)))/e^4 + (2*d^2*(d + e*x)^(3/2)*(a + b*log(c*x^n)))/e^4 - (6*d*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e^4) + (2*(d + e*x)^(7/2)*(a + b*log(c*x^n)))/(7*e^4)]
    @test_int [x^2*(a + b*log(c*x^n))/sqrt(d + e*x), x, 6, -((32*b*d^2*n*sqrt(d + e*x))/(15*e^3)) + (28*b*d*n*(d + e*x)^(3/2))/(45*e^3) - (4*b*n*(d + e*x)^(5/2))/(25*e^3) + (32*b*d^(5/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(15*e^3) + (2*d^2*sqrt(d + e*x)*(a + b*log(c*x^n)))/e^3 - (4*d*(d + e*x)^(3/2)*(a + b*log(c*x^n)))/(3*e^3) + (2*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e^3)]
    @test_int [x^1*(a + b*log(c*x^n))/sqrt(d + e*x), x, 6, (8*b*d*n*sqrt(d + e*x))/(3*e^2) - (4*b*n*(d + e*x)^(3/2))/(9*e^2) - (8*b*d^(3/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(3*e^2) - (2*d*sqrt(d + e*x)*(a + b*log(c*x^n)))/e^2 + (2*(d + e*x)^(3/2)*(a + b*log(c*x^n)))/(3*e^2)]
    @test_int [x^0*(a + b*log(c*x^n))/sqrt(d + e*x), x, 4, -((4*b*n*sqrt(d + e*x))/e) + (4*b*sqrt(d)*n*atanh(sqrt(d + e*x)/sqrt(d)))/e + (2*sqrt(d + e*x)*(a + b*log(c*x^n)))/e]
    @test_int [(a + b*log(c*x^n))/(x^1*sqrt(d + e*x)), x, 7, (2*b*n*atanh(sqrt(d + e*x)/sqrt(d))^2)/sqrt(d) - (2*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)))/sqrt(d) - (4*b*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/sqrt(d) - (2*b*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/sqrt(d)]
    @test_int [(a + b*log(c*x^n))/(x^2*sqrt(d + e*x)), x, 11, -((b*n*sqrt(d + e*x))/(d*x)) - (b*e*n*atanh(sqrt(d + e*x)/sqrt(d)))/d^(3/2) - (b*e*n*atanh(sqrt(d + e*x)/sqrt(d))^2)/d^(3/2) - (sqrt(d + e*x)*(a + b*log(c*x^n)))/(d*x) + (e*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)))/d^(3/2) + (2*b*e*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/d^(3/2) + (b*e*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/d^(3/2)]
    @test_int [(a + b*log(c*x^n))/(x^3*sqrt(d + e*x)), x, 16, -((b*n*sqrt(d + e*x))/(4*d*x^2)) + (5*b*e*n*sqrt(d + e*x))/(8*d^2*x) + (7*b*e^2*n*atanh(sqrt(d + e*x)/sqrt(d)))/(8*d^(5/2)) + (3*b*e^2*n*atanh(sqrt(d + e*x)/sqrt(d))^2)/(4*d^(5/2)) - (sqrt(d + e*x)*(a + b*log(c*x^n)))/(2*d*x^2) + (3*e*sqrt(d + e*x)*(a + b*log(c*x^n)))/(4*d^2*x) - (3*e^2*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)))/(4*d^(5/2)) - (3*b*e^2*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/(2*d^(5/2)) - (3*b*e^2*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/(4*d^(5/2))]


    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x)^(3/2), x, 6, -((44*b*d^2*n*sqrt(d + e*x))/(5*e^4)) + (16*b*d*n*(d + e*x)^(3/2))/(15*e^4) - (4*b*n*(d + e*x)^(5/2))/(25*e^4) + (64*b*d^(5/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(5*e^4) + (2*d^3*(a + b*log(c*x^n)))/(e^4*sqrt(d + e*x)) + (6*d^2*sqrt(d + e*x)*(a + b*log(c*x^n)))/e^4 - (2*d*(d + e*x)^(3/2)*(a + b*log(c*x^n)))/e^4 + (2*(d + e*x)^(5/2)*(a + b*log(c*x^n)))/(5*e^4)]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x)^(3/2), x, 6, (20*b*d*n*sqrt(d + e*x))/(3*e^3) - (4*b*n*(d + e*x)^(3/2))/(9*e^3) - (32*b*d^(3/2)*n*atanh(sqrt(d + e*x)/sqrt(d)))/(3*e^3) - (2*d^2*(a + b*log(c*x^n)))/(e^3*sqrt(d + e*x)) - (4*d*sqrt(d + e*x)*(a + b*log(c*x^n)))/e^3 + (2*(d + e*x)^(3/2)*(a + b*log(c*x^n)))/(3*e^3)]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x)^(3/2), x, 5, -((4*b*n*sqrt(d + e*x))/e^2) + (8*b*sqrt(d)*n*atanh(sqrt(d + e*x)/sqrt(d)))/e^2 + (2*d*(a + b*log(c*x^n)))/(e^2*sqrt(d + e*x)) + (2*sqrt(d + e*x)*(a + b*log(c*x^n)))/e^2]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x)^(3/2), x, 3, -((4*b*n*atanh(sqrt(d + e*x)/sqrt(d)))/(sqrt(d)*e)) - (2*(a + b*log(c*x^n)))/(e*sqrt(d + e*x))]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x)^(3/2)), x, 11, (4*b*n*atanh(sqrt(d + e*x)/sqrt(d)))/d^(3/2) + (2*b*n*atanh(sqrt(d + e*x)/sqrt(d))^2)/d^(3/2) + (2*(a + b*log(c*x^n)))/(d*sqrt(d + e*x)) - (2*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)))/d^(3/2) - (4*b*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/d^(3/2) - (2*b*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/d^(3/2)]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x)^(3/2)), x, If($VersionNumber<9, 11, 15), -((b*n*sqrt(d + e*x))/(d^2*x)) - (5*b*e*n*atanh(sqrt(d + e*x)/sqrt(d)))/d^(5/2) - (3*b*e*n*atanh(sqrt(d + e*x)/sqrt(d))^2)/d^(5/2) - (3*e*(a + b*log(c*x^n)))/(d^2*sqrt(d + e*x)) - (a + b*log(c*x^n))/(d*x*sqrt(d + e*x)) + (3*e*atanh(sqrt(d + e*x)/sqrt(d))*(a + b*log(c*x^n)))/d^(5/2) + (6*b*e*n*atanh(sqrt(d + e*x)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/d^(5/2) + (3*b*e*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x))))/d^(5/2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x)^q / (a+b*log(c*x^n))=#


    #= ::Subsubsection:: =#
    #=q>0=#


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [x^2/((d + e*x)*(a + b*log(c*x^n))), x, 0, Unintegrable(x^2/((d + e*x)*(a + b*log(c*x^n))), x)]
    @test_int [x^1/((d + e*x)*(a + b*log(c*x^n))), x, 0, Unintegrable(x/((d + e*x)*(a + b*log(c*x^n))), x)]
    @test_int [x^0/((d + e*x)*(a + b*log(c*x^n))), x, 0, Unintegrable(1/((d + e*x)*(a + b*log(c*x^n))), x)]
    @test_int [1/(x^1*(d + e*x)*(a + b*log(c*x^n))), x, 0, Unintegrable(1/(x*(d + e*x)*(a + b*log(c*x^n))), x)]
    @test_int [1/(x^2*(d + e*x)*(a + b*log(c*x^n))), x, 0, Unintegrable(1/(x^2*(d + e*x)*(a + b*log(c*x^n))), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x)^q*(a+b*log(c*x^n))^p*when*m*symbolic=#


    @test_int [(f*x)^m*(d + e*x)^3*(a + b*log(c*x^n)), x, 3, -((b*d^3*n*(f*x)^(1 + m))/(f*(1 + m)^2)) - (3*b*d^2*e*n*(f*x)^(2 + m))/(f^2*(2 + m)^2) - (3*b*d*e^2*n*(f*x)^(3 + m))/(f^3*(3 + m)^2) - (b*e^3*n*(f*x)^(4 + m))/(f^4*(4 + m)^2) + (d^3*(f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m)) + (3*d^2*e*(f*x)^(2 + m)*(a + b*log(c*x^n)))/(f^2*(2 + m)) + (3*d*e^2*(f*x)^(3 + m)*(a + b*log(c*x^n)))/(f^3*(3 + m)) + (e^3*(f*x)^(4 + m)*(a + b*log(c*x^n)))/(f^4*(4 + m))]
    @test_int [(f*x)^m*(d + e*x)^2*(a + b*log(c*x^n)), x, 4, -((b*d^2*n*(f*x)^(1 + m))/(f*(1 + m)^2)) - (2*b*d*e*n*(f*x)^(2 + m))/(f^2*(2 + m)^2) - (b*e^2*n*(f*x)^(3 + m))/(f^3*(3 + m)^2) + (d^2*(f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m)) + (2*d*e*(f*x)^(2 + m)*(a + b*log(c*x^n)))/(f^2*(2 + m)) + (e^2*(f*x)^(3 + m)*(a + b*log(c*x^n)))/(f^3*(3 + m))]
    @test_int [(f*x)^m*(d + e*x)^1*(a + b*log(c*x^n)), x, 4, -((b*d*n*(f*x)^(1 + m))/(f*(1 + m)^2)) - (b*e*n*(f*x)^(2 + m))/(f^2*(2 + m)^2) + (d*(f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m)) + (e*(f*x)^(2 + m)*(a + b*log(c*x^n)))/(f^2*(2 + m))]
    @test_int [(f*x)^m*(d + e*x)^0*(a + b*log(c*x^n)), x, 1, -((b*n*(f*x)^(1 + m))/(f*(1 + m)^2)) + ((f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m))]
    @test_int [(f*x)^m*(a + b*log(c*x^n))/(d + e*x)^1, x, 0, Unintegrable(((f*x)^m*(a + b*log(c*x^n)))/(d + e*x), x)]
    @test_int [(f*x)^m*(a + b*log(c*x^n))/(d + e*x)^2, x, 0, Unintegrable(((f*x)^m*(a + b*log(c*x^n)))/(d + e*x)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x)^q*(a+b*log(c*x^n))^p*when*q*symbolic=#


    @test_int [x^1*(a + b*x)^m*log(c*x^n), x, 0, Unintegrable(x*(a + b*x)^m*log(c*x^n), x)]
    @test_int [x^0*(a + b*x)^m*log(c*x^n), x, 2, (n*(a + b*x)^(2 + m)*Hypergeometric2F1(1, 2 + m, 3 + m, 1 + (b*x)/a))/(a*b*(2 + 3*m + m^2)) + ((a + b*x)^(1 + m)*log(c*x^n))/(b*(1 + m))]
    @test_int [(a + b*x)^m*log(c*x^n)/x^1, x, 0, Unintegrable(((a + b*x)^m*log(c*x^n))/x, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^2)^q*(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x^2)^q*(a+b*log(c*x^n))=#


    #= ::Subsubsection::Closed:: =#
    #=q>0=#


    @test_int [x^5*(d + e*x^2)*(a + b*log(c*x^n)), x, 2, (-(1/36))*b*d*n*x^6 - (1/64)*b*e*n*x^8 + (1/24)*(4*d*x^6 + 3*e*x^8)*(a + b*log(c*x^n))]
    @test_int [x^3*(d + e*x^2)*(a + b*log(c*x^n)), x, 2, (-(1/16))*b*d*n*x^4 - (1/36)*b*e*n*x^6 + (1/12)*(3*d*x^4 + 2*e*x^6)*(a + b*log(c*x^n))]
    @test_int [x^1*(d + e*x^2)*(a + b*log(c*x^n)), x, 4, (-(1/4))*b*d*n*x^2 - (1/16)*b*e*n*x^4 + (1/4)*(2*d*x^2 + e*x^4)*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)*(a + b*log(c*x^n)))/x^1, x, 4, -(b*e*n*x^2)/4 + (e*x^2*(a + b*log(c*x^n)))/2 + (d*(a + b*log(c*x^n))^2)/(2*b*n)]
    @test_int [((d + e*x^2)*(a + b*log(c*x^n)))/x^3, x, 3, -(b*d*n)/(4*x^2) - (d*(a + b*log(c*x^n)))/(2*x^2) + (e*(a + b*log(c*x^n))^2)/(2*b*n), -((b*d*n)/(4*x^2)) - (1/2)*b*e*n*log(x)^2 - (d*(a + b*log(c*x^n)))/(2*x^2) + e*log(x)*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)*(a + b*log(c*x^n)))/x^5, x, 4, -((b*d*n)/(16*x^4)) - (b*e*n)/(4*x^2) - (d*(a + b*log(c*x^n)))/(4*x^4) - (e*(a + b*log(c*x^n)))/(2*x^2)]

    @test_int [x^4*(d + e*x^2)*(a + b*log(c*x^n)), x, 2, (-(1/25))*b*d*n*x^5 - (1/49)*b*e*n*x^7 + (1/35)*(7*d*x^5 + 5*e*x^7)*(a + b*log(c*x^n))]
    @test_int [x^2*(d + e*x^2)*(a + b*log(c*x^n)), x, 2, (-(1/9))*b*d*n*x^3 - (1/25)*b*e*n*x^5 + (1/15)*(5*d*x^3 + 3*e*x^5)*(a + b*log(c*x^n))]
    @test_int [x^0*(d + e*x^2)*(a + b*log(c*x^n)), x, 2, (-b)*d*n*x - (1/9)*b*e*n*x^3 + d*x*(a + b*log(c*x^n)) + (1/3)*e*x^3*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)*(a + b*log(c*x^n)))/x^2, x, 2, -((b*d*n)/x) - b*e*n*x - (d*(a + b*log(c*x^n)))/x + e*x*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)*(a + b*log(c*x^n)))/x^4, x, 4, -((b*d*n)/(9*x^3)) - (b*e*n)/x - (d*(a + b*log(c*x^n)))/(3*x^3) - (e*(a + b*log(c*x^n)))/x]
    @test_int [((d + e*x^2)*(a + b*log(c*x^n)))/x^6, x, 4, -((b*d*n)/(25*x^5)) - (b*e*n)/(9*x^3) - (d*(a + b*log(c*x^n)))/(5*x^5) - (e*(a + b*log(c*x^n)))/(3*x^3)]


    @test_int [x^5*(d + e*x^2)^2*(a + b*log(c*x^n)), x, 4, (-(1/36))*b*d^2*n*x^6 - (1/32)*b*d*e*n*x^8 - (1/100)*b*e^2*n*x^10 + (1/60)*(10*d^2*x^6 + 15*d*e*x^8 + 6*e^2*x^10)*(a + b*log(c*x^n))]
    @test_int [x^3*(d + e*x^2)^2*(a + b*log(c*x^n)), x, 4, (-(1/16))*b*d^2*n*x^4 - (1/18)*b*d*e*n*x^6 - (1/64)*b*e^2*n*x^8 + (1/24)*(6*d^2*x^4 + 8*d*e*x^6 + 3*e^2*x^8)*(a + b*log(c*x^n))]
    @test_int [x^1*(d + e*x^2)^2*(a + b*log(c*x^n)), x, 5, -(b*d^2*n*x^2)/4 - (b*d*e*n*x^4)/8 - (b*e^2*n*x^6)/36 - (b*d^3*n*log(x))/(6*e) + ((d + e*x^2)^3*(a + b*log(c*x^n)))/(6*e)]
    @test_int [((d + e*x^2)^2*(a + b*log(c*x^n)))/x^1, x, 3, (-(1/2))*b*d*e*n*x^2 - (1/16)*b*e^2*n*x^4 - (1/2)*b*d^2*n*log(x)^2 + d*e*x^2*(a + b*log(c*x^n)) + (1/4)*e^2*x^4*(a + b*log(c*x^n)) + d^2*log(x)*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^2*(a + b*log(c*x^n)))/x^3, x, 7, -((b*d^2*n)/(4*x^2)) - (1/4)*b*e^2*n*x^2 - b*d*e*n*log(x)^2 - (d^2*(a + b*log(c*x^n)))/(2*x^2) + (1/2)*e^2*x^2*(a + b*log(c*x^n)) + 2*d*e*log(x)*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^2*(a + b*log(c*x^n)))/x^5, x, 7, -((b*d^2*n)/(16*x^4)) - (b*d*e*n)/(2*x^2) - (1/2)*b*e^2*n*log(x)^2 - (d^2*(a + b*log(c*x^n)))/(4*x^4) - (d*e*(a + b*log(c*x^n)))/x^2 + e^2*log(x)*(a + b*log(c*x^n))]

    @test_int [x^4*(d + e*x^2)^2*(a + b*log(c*x^n)), x, 2, (-(1/25))*b*d^2*n*x^5 - (2/49)*b*d*e*n*x^7 - (1/81)*b*e^2*n*x^9 + (1/315)*(63*d^2*x^5 + 90*d*e*x^7 + 35*e^2*x^9)*(a + b*log(c*x^n))]
    @test_int [x^2*(d + e*x^2)^2*(a + b*log(c*x^n)), x, 2, (-(1/9))*b*d^2*n*x^3 - (2/25)*b*d*e*n*x^5 - (1/49)*b*e^2*n*x^7 + (1/105)*(35*d^2*x^3 + 42*d*e*x^5 + 15*e^2*x^7)*(a + b*log(c*x^n))]
    @test_int [x^0*(d + e*x^2)^2*(a + b*log(c*x^n)), x, 2, (-b)*d^2*n*x - (2/9)*b*d*e*n*x^3 - (1/25)*b*e^2*n*x^5 + d^2*x*(a + b*log(c*x^n)) + (2/3)*d*e*x^3*(a + b*log(c*x^n)) + (1/5)*e^2*x^5*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^2*(a + b*log(c*x^n)))/x^2, x, 2, -((b*d^2*n)/x) - 2*b*d*e*n*x - (1/9)*b*e^2*n*x^3 - (d^2*(a + b*log(c*x^n)))/x + 2*d*e*x*(a + b*log(c*x^n)) + (1/3)*e^2*x^3*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^2*(a + b*log(c*x^n)))/x^4, x, 2, -((b*d^2*n)/(9*x^3)) - (2*b*d*e*n)/x - b*e^2*n*x - (d^2*(a + b*log(c*x^n)))/(3*x^3) - (2*d*e*(a + b*log(c*x^n)))/x + e^2*x*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^2*(a + b*log(c*x^n)))/x^6, x, 4, -((b*d^2*n)/(25*x^5)) - (2*b*d*e*n)/(9*x^3) - (b*e^2*n)/x - (d^2*(a + b*log(c*x^n)))/(5*x^5) - (2*d*e*(a + b*log(c*x^n)))/(3*x^3) - (e^2*(a + b*log(c*x^n)))/x]
    @test_int [((d + e*x^2)^2*(a + b*log(c*x^n)))/x^8, x, 4, -((b*d^2*n)/(49*x^7)) - (2*b*d*e*n)/(25*x^5) - (b*e^2*n)/(9*x^3) - (d^2*(a + b*log(c*x^n)))/(7*x^7) - (2*d*e*(a + b*log(c*x^n)))/(5*x^5) - (e^2*(a + b*log(c*x^n)))/(3*x^3)]


    @test_int [x^5*(d + e*x^2)^3*(a + b*log(c*x^n)), x, 4, (-(1/36))*b*d^3*n*x^6 - (3/64)*b*d^2*e*n*x^8 - (3/100)*b*d*e^2*n*x^10 - (1/144)*b*e^3*n*x^12 + (1/120)*(20*d^3*x^6 + 45*d^2*e*x^8 + 36*d*e^2*x^10 + 10*e^3*x^12)*(a + b*log(c*x^n))]
    @test_int [x^3*(d + e*x^2)^3*(a + b*log(c*x^n)), x, 6, (b*d^4*n*x^2)/(20*e) + (3/80)*b*d^3*n*x^4 + (1/60)*b*d^2*e*n*x^6 + (1/320)*b*d*e^2*n*x^8 - (b*n*(d + e*x^2)^5)/(100*e^2) + (b*d^5*n*log(x))/(40*e^2) - (1/40)*((5*d*(d + e*x^2)^4)/e^2 - (4*(d + e*x^2)^5)/e^2)*(a + b*log(c*x^n))]
    @test_int [x^1*(d + e*x^2)^3*(a + b*log(c*x^n)), x, 5, -(b*d^3*n*x^2)/4 - (3*b*d^2*e*n*x^4)/16 - (b*d*e^2*n*x^6)/12 - (b*e^3*n*x^8)/64 - (b*d^4*n*log(x))/(8*e) + ((d + e*x^2)^4*(a + b*log(c*x^n)))/(8*e)]
    @test_int [((d + e*x^2)^3*(a + b*log(c*x^n)))/x^1, x, 5, (-(3/4))*b*d^2*e*n*x^2 - (3/16)*b*d*e^2*n*x^4 - (1/36)*b*e^3*n*x^6 - (1/2)*b*d^3*n*log(x)^2 + (3/2)*d^2*e*x^2*(a + b*log(c*x^n)) + (3/4)*d*e^2*x^4*(a + b*log(c*x^n)) + (1/6)*e^3*x^6*(a + b*log(c*x^n)) + d^3*log(x)*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^3*(a + b*log(c*x^n)))/x^3, x, 7, -((b*d^3*n)/(4*x^2)) - (3/4)*b*d*e^2*n*x^2 - (1/16)*b*e^3*n*x^4 - (3/2)*b*d^2*e*n*log(x)^2 - (d^3*(a + b*log(c*x^n)))/(2*x^2) + (3/2)*d*e^2*x^2*(a + b*log(c*x^n)) + (1/4)*e^3*x^4*(a + b*log(c*x^n)) + 3*d^2*e*log(x)*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^3*(a + b*log(c*x^n)))/x^5, x, 7, -((b*d^3*n)/(16*x^4)) - (3*b*d^2*e*n)/(4*x^2) - (1/4)*b*e^3*n*x^2 - (3/2)*b*d*e^2*n*log(x)^2 - (d^3*(a + b*log(c*x^n)))/(4*x^4) - (3*d^2*e*(a + b*log(c*x^n)))/(2*x^2) + (1/2)*e^3*x^2*(a + b*log(c*x^n)) + 3*d*e^2*log(x)*(a + b*log(c*x^n))]

    @test_int [x^4*(d + e*x^2)^3*(a + b*log(c*x^n)), x, 2, (-(1/25))*b*d^3*n*x^5 - (3/49)*b*d^2*e*n*x^7 - (1/27)*b*d*e^2*n*x^9 - (1/121)*b*e^3*n*x^11 + ((231*d^3*x^5 + 495*d^2*e*x^7 + 385*d*e^2*x^9 + 105*e^3*x^11)*(a + b*log(c*x^n)))/1155]
    @test_int [x^2*(d + e*x^2)^3*(a + b*log(c*x^n)), x, 2, (-(1/9))*b*d^3*n*x^3 - (3/25)*b*d^2*e*n*x^5 - (3/49)*b*d*e^2*n*x^7 - (1/81)*b*e^3*n*x^9 + (1/315)*(105*d^3*x^3 + 189*d^2*e*x^5 + 135*d*e^2*x^7 + 35*e^3*x^9)*(a + b*log(c*x^n))]
    @test_int [x^0*(d + e*x^2)^3*(a + b*log(c*x^n)), x, 2, (-b)*d^3*n*x - (1/3)*b*d^2*e*n*x^3 - (3/25)*b*d*e^2*n*x^5 - (1/49)*b*e^3*n*x^7 + d^3*x*(a + b*log(c*x^n)) + d^2*e*x^3*(a + b*log(c*x^n)) + (3/5)*d*e^2*x^5*(a + b*log(c*x^n)) + (1/7)*e^3*x^7*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^3*(a + b*log(c*x^n)))/x^2, x, 2, -((b*d^3*n)/x) - 3*b*d^2*e*n*x - (1/3)*b*d*e^2*n*x^3 - (1/25)*b*e^3*n*x^5 - (d^3*(a + b*log(c*x^n)))/x + 3*d^2*e*x*(a + b*log(c*x^n)) + d*e^2*x^3*(a + b*log(c*x^n)) + (1/5)*e^3*x^5*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^3*(a + b*log(c*x^n)))/x^4, x, 3, -((b*d^3*n)/(9*x^3)) - (3*b*d^2*e*n)/x - 3*b*d*e^2*n*x - (1/9)*b*e^3*n*x^3 - (d^3*(a + b*log(c*x^n)))/(3*x^3) - (3*d^2*e*(a + b*log(c*x^n)))/x + 3*d*e^2*x*(a + b*log(c*x^n)) + (1/3)*e^3*x^3*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^3*(a + b*log(c*x^n)))/x^6, x, 2, -((b*d^3*n)/(25*x^5)) - (b*d^2*e*n)/(3*x^3) - (3*b*d*e^2*n)/x - b*e^3*n*x - (d^3*(a + b*log(c*x^n)))/(5*x^5) - (d^2*e*(a + b*log(c*x^n)))/x^3 - (3*d*e^2*(a + b*log(c*x^n)))/x + e^3*x*(a + b*log(c*x^n))]
    @test_int [((d + e*x^2)^3*(a + b*log(c*x^n)))/x^8, x, 4, -((b*d^3*n)/(49*x^7)) - (3*b*d^2*e*n)/(25*x^5) - (b*d*e^2*n)/(3*x^3) - (b*e^3*n)/x - (d^3*(a + b*log(c*x^n)))/(7*x^7) - (3*d^2*e*(a + b*log(c*x^n)))/(5*x^5) - (d*e^2*(a + b*log(c*x^n)))/x^3 - (e^3*(a + b*log(c*x^n)))/x]
    @test_int [((d + e*x^2)^3*(a + b*log(c*x^n)))/x^10, x, 4, -((b*d^3*n)/(81*x^9)) - (3*b*d^2*e*n)/(49*x^7) - (3*b*d*e^2*n)/(25*x^5) - (b*e^3*n)/(9*x^3) - (d^3*(a + b*log(c*x^n)))/(9*x^9) - (3*d^2*e*(a + b*log(c*x^n)))/(7*x^7) - (3*d*e^2*(a + b*log(c*x^n)))/(5*x^5) - (e^3*(a + b*log(c*x^n)))/(3*x^3)]


    #= ::InheritFromParent:: =#
    #==#


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [x^5*(a + b*log(c*x^n))/(d + e*x^2), x, 6, (b*d*n*x^2)/(4*e^2) - (b*n*x^4)/(16*e) - (d*x^2*(a + b*log(c*x^n)))/(2*e^2) + (x^4*(a + b*log(c*x^n)))/(4*e) + (d^2*(a + b*log(c*x^n))*log(1 + (e*x^2)/d))/(2*e^3) + (b*d^2*n*PolyLog(2, -((e*x^2)/d)))/(4*e^3)]
    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x^2), x, 5, -((b*n*x^2)/(4*e)) + (x^2*(a + b*log(c*x^n)))/(2*e) - (d*(a + b*log(c*x^n))*log(1 + (e*x^2)/d))/(2*e^2) - (b*d*n*PolyLog(2, -((e*x^2)/d)))/(4*e^2)]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x^2), x, 2, ((a + b*log(c*x^n))*log(1 + (e*x^2)/d))/(2*e) + (b*n*PolyLog(2, -((e*x^2)/d)))/(4*e)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^2)), x, 2, -((log(1 + d/(e*x^2))*(a + b*log(c*x^n)))/(2*d)) + (b*n*PolyLog(2, -(d/(e*x^2))))/(4*d)]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x^2)), x, 4, -((b*n)/(4*d*x^2)) - (a + b*log(c*x^n))/(2*d*x^2) + (e*log(1 + d/(e*x^2))*(a + b*log(c*x^n)))/(2*d^2) - (b*e*n*PolyLog(2, -(d/(e*x^2))))/(4*d^2)]
    @test_int [(a + b*log(c*x^n))/(x^5*(d + e*x^2)), x, 6, -((b*n)/(16*d*x^4)) + (b*e*n)/(4*d^2*x^2) - (a + b*log(c*x^n))/(4*d*x^4) + (e*(a + b*log(c*x^n)))/(2*d^2*x^2) - (e^2*log(1 + d/(e*x^2))*(a + b*log(c*x^n)))/(2*d^3) + (b*e^2*n*PolyLog(2, -(d/(e*x^2))))/(4*d^3)]

    @test_int [x^4*(a + b*log(c*x^n))/(d + e*x^2), x, 10, -((a*d*x)/e^2) + (b*d*n*x)/e^2 - (b*n*x^3)/(9*e) - (b*d*x*log(c*x^n))/e^2 + (x^3*(a + b*log(c*x^n)))/(3*e) + (d^(3/2)*atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/e^(5/2) - (im*b*d^(3/2)*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(2*e^(5/2)) + (im*b*d^(3/2)*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(2*e^(5/2))]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x^2), x, 9, (a*x)/e - (b*n*x)/e + (b*x*log(c*x^n))/e - (sqrt(d)*atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/e^(3/2) + (im*b*sqrt(d)*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(2*e^(3/2)) - (im*b*sqrt(d)*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(2*e^(3/2))]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x^2), x, 5, (atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(sqrt(d)*sqrt(e)) - (im*b*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(2*sqrt(d)*sqrt(e)) + (im*b*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(2*sqrt(d)*sqrt(e))]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x^2)), x, 7, -((b*n)/(d*x)) - (a + b*log(c*x^n))/(d*x) - (sqrt(e)*atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/d^(3/2) + (im*b*sqrt(e)*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(2*d^(3/2)) - (im*b*sqrt(e)*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(2*d^(3/2))]
    @test_int [(a + b*log(c*x^n))/(x^4*(d + e*x^2)), x, 9, -((b*n)/(9*d*x^3)) + (b*e*n)/(d^2*x) - (a + b*log(c*x^n))/(3*d*x^3) + (e*(a + b*log(c*x^n)))/(d^2*x) + (e^(3/2)*atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/d^(5/2) - (im*b*e^(3/2)*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(2*d^(5/2)) + (im*b*e^(3/2)*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(2*d^(5/2))]


    @test_int [x^5*(a + b*log(c*x^n))/(d + e*x^2)^2, x, 7, -((b*n*x^2)/(4*e^2)) + (x^2*(a + b*log(c*x^n)))/(2*e^2) + (d*x^2*(a + b*log(c*x^n)))/(2*e^2*(d + e*x^2)) - (b*d*n*log(d + e*x^2))/(4*e^3) - (d*(a + b*log(c*x^n))*log(1 + (e*x^2)/d))/e^3 - (b*d*n*PolyLog(2, -((e*x^2)/d)))/(2*e^3)]
    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x^2)^2, x, 6, -((x^2*(a + b*log(c*x^n)))/(2*e*(d + e*x^2))) + (b*n*log(d + e*x^2))/(4*e^2) + ((a + b*log(c*x^n))*log(1 + (e*x^2)/d))/(2*e^2) + (b*n*PolyLog(2, -((e*x^2)/d)))/(4*e^2)]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x^2)^2, x, 2, (x^2*(a + b*log(c*x^n)))/(2*d*(d + e*x^2)) - (b*n*log(d + e*x^2))/(4*d*e)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^2)^2), x, 3, (a + b*log(c*x^n))/(2*d*(d + e*x^2)) - (log(1 + d/(e*x^2))*(2*a - b*n + 2*b*log(c*x^n)))/(4*d^2) + (b*n*PolyLog(2, -(d/(e*x^2))))/(4*d^2)]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x^2)^2), x, 5, -((b*n)/(2*d^2*x^2)) + (a + b*log(c*x^n))/(2*d*x^2*(d + e*x^2)) - (4*a - b*n + 4*b*log(c*x^n))/(4*d^2*x^2) + (e*log(1 + d/(e*x^2))*(4*a - b*n + 4*b*log(c*x^n)))/(4*d^3) - (b*e*n*PolyLog(2, -(d/(e*x^2))))/(2*d^3)]

    @test_int [x^4*(a + b*log(c*x^n))/(d + e*x^2)^2, x, 16, (a*x)/e^2 - (b*n*x)/e^2 - (b*sqrt(d)*n*atan((sqrt(e)*x)/sqrt(d)))/(2*e^(5/2)) + (b*x*log(c*x^n))/e^2 + (d*x*(a + b*log(c*x^n)))/(2*e^2*(d + e*x^2)) - (3*sqrt(d)*atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(2*e^(5/2)) + (3*im*b*sqrt(d)*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(4*e^(5/2)) - (3*im*b*sqrt(d)*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(4*e^(5/2))]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x^2)^2, x, 14, (b*n*atan((sqrt(e)*x)/sqrt(d)))/(2*sqrt(d)*e^(3/2)) - (x*(a + b*log(c*x^n)))/(2*e*(d + e*x^2)) + (atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(2*sqrt(d)*e^(3/2)) - (im*b*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(4*sqrt(d)*e^(3/2)) + (im*b*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(4*sqrt(d)*e^(3/2))]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x^2)^2, x, 7, -((b*n*atan((sqrt(e)*x)/sqrt(d)))/(2*d^(3/2)*sqrt(e))) + (x*(a + b*log(c*x^n)))/(2*d*(d + e*x^2)) + (atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(2*d^(3/2)*sqrt(e)) - (im*b*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(4*d^(3/2)*sqrt(e)) + (im*b*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(4*d^(3/2)*sqrt(e))]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x^2)^2), x, 8, -((3*b*n)/(2*d^2*x)) + (a + b*log(c*x^n))/(2*d*x*(d + e*x^2)) - (3*a - b*n + 3*b*log(c*x^n))/(2*d^2*x) - (sqrt(e)*atan((sqrt(e)*x)/sqrt(d))*(3*a - b*n + 3*b*log(c*x^n)))/(2*d^(5/2)) + (3*im*b*sqrt(e)*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(4*d^(5/2)) - (3*im*b*sqrt(e)*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(4*d^(5/2))]
    @test_int [(a + b*log(c*x^n))/(x^4*(d + e*x^2)^2), x, 10, -((5*b*n)/(18*d^2*x^3)) + (5*b*e*n)/(2*d^3*x) + (a + b*log(c*x^n))/(2*d*x^3*(d + e*x^2)) - (5*a - b*n + 5*b*log(c*x^n))/(6*d^2*x^3) + (e*(5*a - b*n + 5*b*log(c*x^n)))/(2*d^3*x) + (e^(3/2)*atan((sqrt(e)*x)/sqrt(d))*(5*a - b*n + 5*b*log(c*x^n)))/(2*d^(7/2)) - (5*im*b*e^(3/2)*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(4*d^(7/2)) + (5*im*b*e^(3/2)*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(4*d^(7/2))]


    @test_int [x^5*(a + b*log(c*x^n))/(d + e*x^2)^3, x, 10, (b*d*n)/(8*e^3*(d + e*x^2)) + (b*n*log(x))/(4*e^3) - (d^2*(a + b*log(c*x^n)))/(4*e^3*(d + e*x^2)^2) - (x^2*(a + b*log(c*x^n)))/(e^2*(d + e*x^2)) + (3*b*n*log(d + e*x^2))/(8*e^3) + ((a + b*log(c*x^n))*log(1 + (e*x^2)/d))/(2*e^3) + (b*n*PolyLog(2, -((e*x^2)/d)))/(4*e^3)]
    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x^2)^3, x, 4, -((b*n)/(8*e^2*(d + e*x^2))) + (x^4*(a + b*log(c*x^n)))/(4*d*(d + e*x^2)^2) - (b*n*log(d + e*x^2))/(8*d*e^2)]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x^2)^3, x, 4, (b*n)/(8*d*e*(d + e*x^2)) + (b*n*log(x))/(4*d^2*e) - (a + b*log(c*x^n))/(4*e*(d + e*x^2)^2) - (b*n*log(d + e*x^2))/(8*d^2*e)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^2)^3), x, 4, (a + b*log(c*x^n))/(4*d*(d + e*x^2)^2) - (log(1 + d/(e*x^2))*(4*a - 3*b*n + 4*b*log(c*x^n)))/(8*d^3) + (4*a - b*n + 4*b*log(c*x^n))/(8*d^2*(d + e*x^2)) + (b*n*PolyLog(2, -(d/(e*x^2))))/(4*d^3)]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x^2)^3), x, 6, -((3*b*n)/(4*d^3*x^2)) + (a + b*log(c*x^n))/(4*d*x^2*(d + e*x^2)^2) + (6*a - b*n + 6*b*log(c*x^n))/(8*d^2*x^2*(d + e*x^2)) - (12*a - 5*b*n + 12*b*log(c*x^n))/(8*d^3*x^2) + (e*log(1 + d/(e*x^2))*(12*a - 5*b*n + 12*b*log(c*x^n)))/(8*d^4) - (3*b*e*n*PolyLog(2, -(d/(e*x^2))))/(4*d^4)]

    @test_int [x^4*(a + b*log(c*x^n))/(d + e*x^2)^3, x, 24, -((b*n*x)/(8*e^2*(d + e*x^2))) + (b*n*atan((sqrt(e)*x)/sqrt(d)))/(2*sqrt(d)*e^(5/2)) + (d*x*(a + b*log(c*x^n)))/(4*e^2*(d + e*x^2)^2) - (5*x*(a + b*log(c*x^n)))/(8*e^2*(d + e*x^2)) + (3*atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(8*sqrt(d)*e^(5/2)) - (3*im*b*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(16*sqrt(d)*e^(5/2)) + (3*im*b*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(16*sqrt(d)*e^(5/2))]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x^2)^3, x, 19, (b*n*x)/(8*d*e*(d + e*x^2)) - (x*(a + b*log(c*x^n)))/(4*e*(d + e*x^2)^2) + (x*(a + b*log(c*x^n)))/(8*d*e*(d + e*x^2)) + (atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(8*d^(3/2)*e^(3/2)) - (im*b*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(16*d^(3/2)*e^(3/2)) + (im*b*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(16*d^(3/2)*e^(3/2))]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x^2)^3, x, 10, -((b*n*x)/(8*d^2*(d + e*x^2))) - (b*n*atan((sqrt(e)*x)/sqrt(d)))/(2*d^(5/2)*sqrt(e)) + (x*(a + b*log(c*x^n)))/(4*d*(d + e*x^2)^2) + (3*x*(a + b*log(c*x^n)))/(8*d^2*(d + e*x^2)) + (3*atan((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(8*d^(5/2)*sqrt(e)) - (3*im*b*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(16*d^(5/2)*sqrt(e)) + (3*im*b*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(16*d^(5/2)*sqrt(e))]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x^2)^3), x, 9, -((15*b*n)/(8*d^3*x)) + (a + b*log(c*x^n))/(4*d*x*(d + e*x^2)^2) + (5*a - b*n + 5*b*log(c*x^n))/(8*d^2*x*(d + e*x^2)) - (15*a - 8*b*n + 15*b*log(c*x^n))/(8*d^3*x) - (sqrt(e)*atan((sqrt(e)*x)/sqrt(d))*(15*a - 8*b*n + 15*b*log(c*x^n)))/(8*d^(7/2)) + (15*im*b*sqrt(e)*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(16*d^(7/2)) - (15*im*b*sqrt(e)*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(16*d^(7/2))]
    @test_int [(a + b*log(c*x^n))/(x^4*(d + e*x^2)^3), x, 11, -((35*b*n)/(72*d^3*x^3)) + (35*b*e*n)/(8*d^4*x) + (a + b*log(c*x^n))/(4*d*x^3*(d + e*x^2)^2) + (7*a - b*n + 7*b*log(c*x^n))/(8*d^2*x^3*(d + e*x^2)) - (35*a - 12*b*n + 35*b*log(c*x^n))/(24*d^3*x^3) + (e*(35*a - 12*b*n + 35*b*log(c*x^n)))/(8*d^4*x) + (e^(3/2)*atan((sqrt(e)*x)/sqrt(d))*(35*a - 12*b*n + 35*b*log(c*x^n)))/(8*d^(9/2)) - (35*im*b*e^(3/2)*n*PolyLog(2, -((im*sqrt(e)*x)/sqrt(d))))/(16*d^(9/2)) + (35*im*b*e^(3/2)*n*PolyLog(2, (im*sqrt(e)*x)/sqrt(d)))/(16*d^(9/2))]


    @test_int [x*log(c*x^2)/(1 - c*x^2), x, 2, PolyLog(2, 1 - c*x^2)/(2*c)]
    @test_int [x*log(x^2/c)/(c - x^2), x, 2, (1/2)*PolyLog(2, 1 - x^2/c)]


    @test_int [log(x)/(1 - x^2), x, 2, atanh(x)*log(x) + (1/2)*PolyLog(2, -x) - (1/2)*PolyLog(2, x)]
    @test_int [log(x)/(1 + x^2), x, 4, atan(x)*log(x) - (1/2)*im*PolyLog(2, (-im)*x) + (1/2)*im*PolyLog(2, im*x)]


    @test_int [(a + b*log(c*x))/(1 - e*x^2), x, 3, (atanh(sqrt(e)*x)*(a + b*log(c*x)))/sqrt(e) + (b*PolyLog(2, (-sqrt(e))*x))/(2*sqrt(e)) - (b*PolyLog(2, sqrt(e)*x))/(2*sqrt(e))]
    @test_int [(a + b*log(c*x^n))/(1 - e*x^2), x, 3, (atanh(sqrt(e)*x)*(a + b*log(c*x^n)))/sqrt(e) + (b*n*PolyLog(2, (-sqrt(e))*x))/(2*sqrt(e)) - (b*n*PolyLog(2, sqrt(e)*x))/(2*sqrt(e))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x^2)^q*(a+b*log(c*x^n))^2=#


    #= ::Subsubsection:: =#
    #=q>0=#


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [(a + b*log(c*x^n))^2/(d + e*x^2)^2, x, 16, (x*(a + b*log(c*x^n))^2)/(4*(-d)^(3/2)*(sqrt(-d) - sqrt(e)*x)) + (x*(a + b*log(c*x^n))^2)/(4*(-d)^(3/2)*(sqrt(-d) + sqrt(e)*x)) + (b*n*(a + b*log(c*x^n))*log(1 - (sqrt(e)*x)/sqrt(-d)))/(2*(-d)^(3/2)*sqrt(e)) - ((a + b*log(c*x^n))^2*log(1 - (sqrt(e)*x)/sqrt(-d)))/(4*(-d)^(3/2)*sqrt(e)) - (b*n*(a + b*log(c*x^n))*log(1 + (sqrt(e)*x)/sqrt(-d)))/(2*(-d)^(3/2)*sqrt(e)) + ((a + b*log(c*x^n))^2*log(1 + (sqrt(e)*x)/sqrt(-d)))/(4*(-d)^(3/2)*sqrt(e)) - (b^2*n^2*PolyLog(2, -((sqrt(e)*x)/sqrt(-d))))/(2*(-d)^(3/2)*sqrt(e)) + (b*n*(a + b*log(c*x^n))*PolyLog(2, -((sqrt(e)*x)/sqrt(-d))))/(2*(-d)^(3/2)*sqrt(e)) + (b^2*n^2*PolyLog(2, (sqrt(e)*x)/sqrt(-d)))/(2*(-d)^(3/2)*sqrt(e)) - (b*n*(a + b*log(c*x^n))*PolyLog(2, (sqrt(e)*x)/sqrt(-d)))/(2*(-d)^(3/2)*sqrt(e)) - (b^2*n^2*PolyLog(3, -((sqrt(e)*x)/sqrt(-d))))/(2*(-d)^(3/2)*sqrt(e)) + (b^2*n^2*PolyLog(3, (sqrt(e)*x)/sqrt(-d)))/(2*(-d)^(3/2)*sqrt(e))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x^2)^q*(a+b*log(c*x^n))^3=#


    #= ::Subsubsection:: =#
    #=q>0=#


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [(a + b*log(c*x^n))^3/(d + e*x^2)^2, x, 20, (x*(a + b*log(c*x^n))^3)/(4*(-d)^(3/2)*(sqrt(-d) - sqrt(e)*x)) + (x*(a + b*log(c*x^n))^3)/(4*(-d)^(3/2)*(sqrt(-d) + sqrt(e)*x)) + (3*b*n*(a + b*log(c*x^n))^2*log(1 - (sqrt(e)*x)/sqrt(-d)))/(4*(-d)^(3/2)*sqrt(e)) - ((a + b*log(c*x^n))^3*log(1 - (sqrt(e)*x)/sqrt(-d)))/(4*(-d)^(3/2)*sqrt(e)) - (3*b*n*(a + b*log(c*x^n))^2*log(1 + (sqrt(e)*x)/sqrt(-d)))/(4*(-d)^(3/2)*sqrt(e)) + ((a + b*log(c*x^n))^3*log(1 + (sqrt(e)*x)/sqrt(-d)))/(4*(-d)^(3/2)*sqrt(e)) - (3*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, -((sqrt(e)*x)/sqrt(-d))))/(2*(-d)^(3/2)*sqrt(e)) + (3*b*n*(a + b*log(c*x^n))^2*PolyLog(2, -((sqrt(e)*x)/sqrt(-d))))/(4*(-d)^(3/2)*sqrt(e)) + (3*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, (sqrt(e)*x)/sqrt(-d)))/(2*(-d)^(3/2)*sqrt(e)) - (3*b*n*(a + b*log(c*x^n))^2*PolyLog(2, (sqrt(e)*x)/sqrt(-d)))/(4*(-d)^(3/2)*sqrt(e)) + (3*b^3*n^3*PolyLog(3, -((sqrt(e)*x)/sqrt(-d))))/(2*(-d)^(3/2)*sqrt(e)) - (3*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, -((sqrt(e)*x)/sqrt(-d))))/(2*(-d)^(3/2)*sqrt(e)) - (3*b^3*n^3*PolyLog(3, (sqrt(e)*x)/sqrt(-d)))/(2*(-d)^(3/2)*sqrt(e)) + (3*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, (sqrt(e)*x)/sqrt(-d)))/(2*(-d)^(3/2)*sqrt(e)) + (3*b^3*n^3*PolyLog(4, -((sqrt(e)*x)/sqrt(-d))))/(2*(-d)^(3/2)*sqrt(e)) - (3*b^3*n^3*PolyLog(4, (sqrt(e)*x)/sqrt(-d)))/(2*(-d)^(3/2)*sqrt(e))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x^2)^q*(a+b*log(c*x^n))^p=#


    #= ::Subsubsection:: =#
    #=q>0=#


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [1/((d + e*x^2)^2*(a + b*log(c*x^n))^1), x, 0, Unintegrable(1/((d + e*x^2)^2*(a + b*log(c*x^n))), x)]
    @test_int [1/((d + e*x^2)^2*(a + b*log(c*x^n))^2), x, 0, Unintegrable(1/((d + e*x^2)^2*(a + b*log(c*x^n))^2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x^2)^(q/2)*(a+b*log(c*x^n))=#


    #= ::Subsubsection::Closed:: =#
    #=q>0=#


    @test_int [x^5*sqrt(d + e*x^2)*(a + b*log(c*x^n)), x, If($VersionNumber>=8, 7, 8), -((8*b*d^3*n*sqrt(d + e*x^2))/(105*e^3)) - (8*b*d^2*n*(d + e*x^2)^(3/2))/(315*e^3) + (9*b*d*n*(d + e*x^2)^(5/2))/(175*e^3) - (b*n*(d + e*x^2)^(7/2))/(49*e^3) + (8*b*d^(7/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(105*e^3) + (d^2*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(3*e^3) - (2*d*(d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(5*e^3) + ((d + e*x^2)^(7/2)*(a + b*log(c*x^n)))/(7*e^3)]
    @test_int [x^3*sqrt(d + e*x^2)*(a + b*log(c*x^n)), x, If($VersionNumber>=8, 8, 9), (2*b*d^2*n*sqrt(d + e*x^2))/(15*e^2) + (2*b*d*n*(d + e*x^2)^(3/2))/(45*e^2) - (b*n*(d + e*x^2)^(5/2))/(25*e^2) - (2*b*d^(5/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(15*e^2) - (d*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(3*e^2) + ((d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(5*e^2)]
    @test_int [x^1*sqrt(d + e*x^2)*(a + b*log(c*x^n)), x, 6, -((b*d*n*sqrt(d + e*x^2))/(3*e)) - (b*n*(d + e*x^2)^(3/2))/(9*e) + (b*d^(3/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(3*e) + ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(3*e)]
    @test_int [sqrt(d + e*x^2)*(a + b*log(c*x^n))/x^1, x, 12, (-b)*n*sqrt(d + e*x^2) + b*sqrt(d)*n*atanh(sqrt(d + e*x^2)/sqrt(d)) + (1/2)*b*sqrt(d)*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2 + (sqrt(d + e*x^2) - sqrt(d)*atanh(sqrt(d + e*x^2)/sqrt(d)))*(a + b*log(c*x^n)) - b*sqrt(d)*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))) - (1/2)*b*sqrt(d)*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2)))]
    @test_int [sqrt(d + e*x^2)*(a + b*log(c*x^n))/x^3, x, 14, -((b*n*sqrt(d + e*x^2))/(4*x^2)) - (b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(4*sqrt(d)) + (b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2)/(4*sqrt(d)) - (sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(2*x^2) - (e*atanh(sqrt(d + e*x^2)/sqrt(d))*(a + b*log(c*x^n)))/(2*sqrt(d)) - (b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(2*sqrt(d)) - (b*e*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(4*sqrt(d))]

    @test_int [x^4*sqrt(d + e*x^2)*(a + b*log(c*x^n)), x, 19, (7*b*d^2*n*x*sqrt(d + e*x^2))/(192*e^2) - (5*b*d*n*x^3*sqrt(d + e*x^2))/(288*e) - (1/36)*b*n*x^5*sqrt(d + e*x^2) + (5*b*d^(5/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d)))/(192*e^(5/2)*sqrt(1 + (e*x^2)/d)) + (b*d^(5/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))^2)/(32*e^(5/2)*sqrt(1 + (e*x^2)/d)) - (b*d^(5/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(16*e^(5/2)*sqrt(1 + (e*x^2)/d)) - (d^2*x*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(16*e^2) + (d*x^3*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(24*e) + (1/6)*x^5*sqrt(d + e*x^2)*(a + b*log(c*x^n)) + (d^(5/2)*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(16*e^(5/2)*sqrt(1 + (e*x^2)/d)) - (b*d^(5/2)*n*sqrt(d + e*x^2)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(32*e^(5/2)*sqrt(1 + (e*x^2)/d))]
    @test_int [x^2*sqrt(d + e*x^2)*(a + b*log(c*x^n)), x, 15, -((3*b*d*n*x*sqrt(d + e*x^2))/(32*e)) - (1/16)*b*n*x^3*sqrt(d + e*x^2) - (b*d^(3/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d)))/(32*e^(3/2)*sqrt(1 + (e*x^2)/d)) - (b*d^(3/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))^2)/(16*e^(3/2)*sqrt(1 + (e*x^2)/d)) + (b*d^(3/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(8*e^(3/2)*sqrt(1 + (e*x^2)/d)) + (d*x*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(8*e) + (1/4)*x^3*sqrt(d + e*x^2)*(a + b*log(c*x^n)) - (d^(3/2)*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(8*e^(3/2)*sqrt(1 + (e*x^2)/d)) + (b*d^(3/2)*n*sqrt(d + e*x^2)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(16*e^(3/2)*sqrt(1 + (e*x^2)/d))]
    @test_int [x^0*sqrt(d + e*x^2)*(a + b*log(c*x^n)), x, 11, (-(1/4))*b*n*x*sqrt(d + e*x^2) + (b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(4*sqrt(e)*sqrt(d + e*x^2)) - (b*d*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(4*sqrt(e)) - (b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*sqrt(e)*sqrt(d + e*x^2)) + (1/2)*x*sqrt(d + e*x^2)*(a + b*log(c*x^n)) + (d^(3/2)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(2*sqrt(e)*sqrt(d + e*x^2)) - (b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(4*sqrt(e)*sqrt(d + e*x^2))]
    @test_int [sqrt(d + e*x^2)*(a + b*log(c*x^n))/x^2, x, 11, -((b*n*sqrt(d + e*x^2))/x) + (b*sqrt(e)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d)))/(sqrt(d)*sqrt(1 + (e*x^2)/d)) + (b*sqrt(e)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))^2)/(2*sqrt(d)*sqrt(1 + (e*x^2)/d)) - (b*sqrt(e)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(sqrt(d)*sqrt(1 + (e*x^2)/d)) - (sqrt(d + e*x^2)*(a + b*log(c*x^n)))/x + (sqrt(e)*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(sqrt(d)*sqrt(1 + (e*x^2)/d)) - (b*sqrt(e)*n*sqrt(d + e*x^2)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*sqrt(d)*sqrt(1 + (e*x^2)/d))]
    @test_int [sqrt(d + e*x^2)*(a + b*log(c*x^n))/x^4, x, 5, -((b*e*n*sqrt(d + e*x^2))/(3*d*x)) - (b*n*(d + e*x^2)^(3/2))/(9*d*x^3) + (b*e^(3/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(3*d) - ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(3*d*x^3)]
    @test_int [sqrt(d + e*x^2)*(a + b*log(c*x^n))/x^6, x, If($VersionNumber>=8, 7, 8), If($VersionNumber>=8, (2*b*e^2*n*sqrt(d + e*x^2))/(15*d^2*x) + (2*b*e*n*(d + e*x^2)^(3/2))/(45*d^2*x^3) - (b*n*(d + e*x^2)^(5/2))/(25*d^2*x^5) - (2*b*e^(5/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(15*d^2) - ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(5*d*x^5) + (2*e*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(15*d^2*x^3), (2*b*e^2*n*sqrt(d + e*x^2))/(15*d^2*x) + (2*b*e*n*(d + e*x^2)^(3/2))/(45*d^2*x^3) - (b*n*(d + e*x^2)^(5/2))/(25*d^2*x^5) - (2*b*e^(5/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(15*d^2) - ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(5*d*x^5) + (2*e*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(15*d^2*x^3))]
    @test_int [sqrt(d + e*x^2)*(a + b*log(c*x^n))/x^8, x, If($VersionNumber>=8, 8, 9), If($VersionNumber>=8, -((8*b*e^3*n*sqrt(d + e*x^2))/(105*d^3*x)) - (8*b*e^2*n*(d + e*x^2)^(3/2))/(315*d^3*x^3) - (b*n*(d + e*x^2)^(5/2))/(49*d^2*x^7) + (38*b*e*n*(d + e*x^2)^(5/2))/(1225*d^3*x^5) + (8*b*e^(7/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(105*d^3) - ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(7*d*x^7) + (4*e*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(35*d^2*x^5) - (8*e^2*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(105*d^3*x^3), -((8*b*e^3*n*sqrt(d + e*x^2))/(105*d^3*x)) - (b*n*(d + e*x^2)^(3/2))/(49*d*x^7) + (13*b*e*n*(d + e*x^2)^(3/2))/(1225*d^2*x^5) + (62*b*e^2*n*(d + e*x^2)^(3/2))/(11025*d^3*x^3) + (8*b*e^(7/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(105*d^3) - ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(7*d*x^7) + (4*e*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(35*d^2*x^5) - (8*e^2*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(105*d^3*x^3))]


    @test_int [x^5*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)), x, 7, -((8*b*d^4*n*sqrt(d + e*x^2))/(315*e^3)) - (8*b*d^3*n*(d + e*x^2)^(3/2))/(945*e^3) - (8*b*d^2*n*(d + e*x^2)^(5/2))/(1575*e^3) + (11*b*d*n*(d + e*x^2)^(7/2))/(441*e^3) - (b*n*(d + e*x^2)^(9/2))/(81*e^3) + (8*b*d^(9/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(315*e^3) + (d^2*(d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(5*e^3) - (2*d*(d + e*x^2)^(7/2)*(a + b*log(c*x^n)))/(7*e^3) + ((d + e*x^2)^(9/2)*(a + b*log(c*x^n)))/(9*e^3)]
    @test_int [x^3*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)), x, 9, (2*b*d^3*n*sqrt(d + e*x^2))/(35*e^2) + (2*b*d^2*n*(d + e*x^2)^(3/2))/(105*e^2) + (2*b*d*n*(d + e*x^2)^(5/2))/(175*e^2) - (b*n*(d + e*x^2)^(7/2))/(49*e^2) - (2*b*d^(7/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(35*e^2) - (d*(d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(5*e^2) + ((d + e*x^2)^(7/2)*(a + b*log(c*x^n)))/(7*e^2)]
    @test_int [x^1*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)), x, 7, -((b*d^2*n*sqrt(d + e*x^2))/(5*e)) - (b*d*n*(d + e*x^2)^(3/2))/(15*e) - (b*n*(d + e*x^2)^(5/2))/(25*e) + (b*d^(5/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(5*e) + ((d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(5*e)]
    @test_int [(d + e*x^2)^(3/2)*(a + b*log(c*x^n))/x^1, x, 17, (-(4/3))*b*d*n*sqrt(d + e*x^2) - (1/9)*b*n*(d + e*x^2)^(3/2) + (4/3)*b*d^(3/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)) + (1/2)*b*d^(3/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2 + (1/3)*(3*d*sqrt(d + e*x^2) + (d + e*x^2)^(3/2) - 3*d^(3/2)*atanh(sqrt(d + e*x^2)/sqrt(d)))*(a + b*log(c*x^n)) - b*d^(3/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))) - (1/2)*b*d^(3/2)*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2)))]
    @test_int [(d + e*x^2)^(3/2)*(a + b*log(c*x^n))/x^3, x, 18, (-b)*e*n*sqrt(d + e*x^2) - (b*d*n*sqrt(d + e*x^2))/(4*x^2) + (3/4)*b*sqrt(d)*e*n*atanh(sqrt(d + e*x^2)/sqrt(d)) + (3/4)*b*sqrt(d)*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2 + (3/2)*e*sqrt(d + e*x^2)*(a + b*log(c*x^n)) - ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(2*x^2) - (3/2)*sqrt(d)*e*atanh(sqrt(d + e*x^2)/sqrt(d))*(a + b*log(c*x^n)) - (3/2)*b*sqrt(d)*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))) - (3/4)*b*sqrt(d)*e*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2)))]

    @test_int [x^2*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)), x, 19, -((11*b*d^2*n*x*sqrt(d + e*x^2))/(192*e)) - (23/288)*b*d*n*x^3*sqrt(d + e*x^2) - (1/36)*b*e*n*x^5*sqrt(d + e*x^2) - (b*d^(5/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d)))/(192*e^(3/2)*sqrt(1 + (e*x^2)/d)) - (b*d^(5/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))^2)/(32*e^(3/2)*sqrt(1 + (e*x^2)/d)) + (b*d^(5/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(16*e^(3/2)*sqrt(1 + (e*x^2)/d)) + (d^2*x*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(16*e) + (1/8)*d*x^3*sqrt(d + e*x^2)*(a + b*log(c*x^n)) + (1/6)*x^3*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)) - (d^(5/2)*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(16*e^(3/2)*sqrt(1 + (e*x^2)/d)) + (b*d^(5/2)*n*sqrt(d + e*x^2)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(32*e^(3/2)*sqrt(1 + (e*x^2)/d))]
    @test_int [x^0*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)), x, 16, (-(9/32))*b*d*n*x*sqrt(d + e*x^2) - (1/16)*b*n*x*(d + e*x^2)^(3/2) + (3*b*d^(5/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(16*sqrt(e)*sqrt(d + e*x^2)) - (9*b*d^2*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(32*sqrt(e)) - (3*b*d^(5/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(8*sqrt(e)*sqrt(d + e*x^2)) + (3/8)*d*x*sqrt(d + e*x^2)*(a + b*log(c*x^n)) + (1/4)*x*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)) + (3*d^(5/2)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(8*sqrt(e)*sqrt(d + e*x^2)) - (3*b*d^(5/2)*n*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(16*sqrt(e)*sqrt(d + e*x^2))]
    @test_int [(d + e*x^2)^(3/2)*(a + b*log(c*x^n))/x^2, x, 14, -((b*d*n*sqrt(d + e*x^2))/x) - (1/4)*b*e*n*x*sqrt(d + e*x^2) + (3*b*sqrt(d)*sqrt(e)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d)))/(4*sqrt(1 + (e*x^2)/d)) + (3*b*sqrt(d)*sqrt(e)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))^2)/(4*sqrt(1 + (e*x^2)/d)) - (3*b*sqrt(d)*sqrt(e)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*sqrt(1 + (e*x^2)/d)) + (3/2)*e*x*sqrt(d + e*x^2)*(a + b*log(c*x^n)) - ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/x + (3*sqrt(d)*sqrt(e)*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(2*sqrt(1 + (e*x^2)/d)) - (3*b*sqrt(d)*sqrt(e)*n*sqrt(d + e*x^2)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(4*sqrt(1 + (e*x^2)/d))]
    @test_int [(d + e*x^2)^(3/2)*(a + b*log(c*x^n))/x^4, x, 13, -((4*b*e*n*sqrt(d + e*x^2))/(3*x)) - (b*n*(d + e*x^2)^(3/2))/(9*x^3) + (4*b*e^(3/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d)))/(3*sqrt(d)*sqrt(1 + (e*x^2)/d)) + (b*e^(3/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))^2)/(2*sqrt(d)*sqrt(1 + (e*x^2)/d)) - (b*e^(3/2)*n*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(sqrt(d)*sqrt(1 + (e*x^2)/d)) - (e*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/x - ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(3*x^3) + (e^(3/2)*sqrt(d + e*x^2)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(sqrt(d)*sqrt(1 + (e*x^2)/d)) - (b*e^(3/2)*n*sqrt(d + e*x^2)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*sqrt(d)*sqrt(1 + (e*x^2)/d))]
    @test_int [(d + e*x^2)^(3/2)*(a + b*log(c*x^n))/x^6, x, 6, -((b*e^2*n*sqrt(d + e*x^2))/(5*d*x)) - (b*e*n*(d + e*x^2)^(3/2))/(15*d*x^3) - (b*n*(d + e*x^2)^(5/2))/(25*d*x^5) + (b*e^(5/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(5*d) - ((d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(5*d*x^5)]
    @test_int [(d + e*x^2)^(3/2)*(a + b*log(c*x^n))/x^8, x, 8, (2*b*e^3*n*sqrt(d + e*x^2))/(35*d^2*x) + (2*b*e^2*n*(d + e*x^2)^(3/2))/(105*d^2*x^3) + (2*b*e*n*(d + e*x^2)^(5/2))/(175*d^2*x^5) - (b*n*(d + e*x^2)^(7/2))/(49*d^2*x^7) - (2*b*e^(7/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(35*d^2) - ((d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(7*d*x^7) + (2*e*(d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(35*d^2*x^5)]
    @test_int [(d + e*x^2)^(3/2)*(a + b*log(c*x^n))/x^10, x, 9, -((8*b*e^4*n*sqrt(d + e*x^2))/(315*d^3*x)) - (8*b*e^3*n*(d + e*x^2)^(3/2))/(945*d^3*x^3) - (8*b*e^2*n*(d + e*x^2)^(5/2))/(1575*d^3*x^5) - (b*n*(d + e*x^2)^(7/2))/(81*d^2*x^9) + (50*b*e*n*(d + e*x^2)^(7/2))/(3969*d^3*x^7) + (8*b*e^(9/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(315*d^3) - ((d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(9*d*x^9) + (4*e*(d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(63*d^2*x^7) - (8*e^2*(d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(315*d^3*x^5)]


    @test_int [x*sqrt(4 + x^2)*log(x), x, 6, (-(4/3))*sqrt(4 + x^2) - (1/9)*(4 + x^2)^(3/2) + (8/3)*atanh(sqrt(4 + x^2)/2) + (1/3)*(4 + x^2)^(3/2)*log(x)]


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [x^5*(a + b*log(c*x^n))/sqrt(d + e*x^2), x, 7, -((8*b*d^2*n*sqrt(d + e*x^2))/(15*e^3)) + (7*b*d*n*(d + e*x^2)^(3/2))/(45*e^3) - (b*n*(d + e*x^2)^(5/2))/(25*e^3) + (8*b*d^(5/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(15*e^3) + (d^2*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/e^3 - (2*d*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(3*e^3) + ((d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(5*e^3)]
    @test_int [x^3*(a + b*log(c*x^n))/sqrt(d + e*x^2), x, 7, (2*b*d*n*sqrt(d + e*x^2))/(3*e^2) - (b*n*(d + e*x^2)^(3/2))/(9*e^2) - (2*b*d^(3/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(3*e^2) - (d*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/e^2 + ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(3*e^2)]
    @test_int [x^1*(a + b*log(c*x^n))/sqrt(d + e*x^2), x, 5, -((b*n*sqrt(d + e*x^2))/e) + (b*sqrt(d)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/e + (sqrt(d + e*x^2)*(a + b*log(c*x^n)))/e]
    @test_int [(a + b*log(c*x^n))/(x^1*sqrt(d + e*x^2)), x, 8, (b*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2)/(2*sqrt(d)) - (atanh(sqrt(d + e*x^2)/sqrt(d))*(a + b*log(c*x^n)))/sqrt(d) - (b*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/sqrt(d) - (b*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(2*sqrt(d))]
    @test_int [(a + b*log(c*x^n))/(x^3*sqrt(d + e*x^2)), x, 14, -((b*n*sqrt(d + e*x^2))/(4*d*x^2)) - (b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(4*d^(3/2)) - (b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2)/(4*d^(3/2)) - (sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(2*d*x^2) + (e*atanh(sqrt(d + e*x^2)/sqrt(d))*(a + b*log(c*x^n)))/(2*d^(3/2)) + (b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(2*d^(3/2)) + (b*e*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(4*d^(3/2))]

    @test_int [x^2*(a + b*log(c*x^n))/sqrt(d + e*x^2), x, 12, -((b*n*x*sqrt(d + e*x^2))/(4*e)) - (b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d)))/(4*e^(3/2)*sqrt(d + e*x^2)) - (b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(4*e^(3/2)*sqrt(d + e*x^2)) + (b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*e^(3/2)*sqrt(d + e*x^2)) + (x*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(2*e) - (d^(3/2)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(2*e^(3/2)*sqrt(d + e*x^2)) + (b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(4*e^(3/2)*sqrt(d + e*x^2))]
    @test_int [x^0*(a + b*log(c*x^n))/sqrt(d + e*x^2), x, 7, (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(2*sqrt(e)*sqrt(d + e*x^2)) - (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(sqrt(e)*sqrt(d + e*x^2)) + (sqrt(d)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(sqrt(e)*sqrt(d + e*x^2)) - (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*sqrt(e)*sqrt(d + e*x^2))]
    @test_int [(a + b*log(c*x^n))/(x^2*sqrt(d + e*x^2)), x, 4, -((b*n*sqrt(d + e*x^2))/(d*x)) + (b*sqrt(e)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/d - (sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(d*x)]
    @test_int [(a + b*log(c*x^n))/(x^4*sqrt(d + e*x^2)), x, 6, (2*b*e*n*sqrt(d + e*x^2))/(3*d^2*x) - (b*n*(d + e*x^2)^(3/2))/(9*d^2*x^3) - (2*b*e^(3/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(3*d^2) - (sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(3*d*x^3) + (2*e*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(3*d^2*x)]
    @test_int [(a + b*log(c*x^n))/(x^6*sqrt(d + e*x^2)), x, 7, -((8*b*e^2*n*sqrt(d + e*x^2))/(15*d^3*x)) - (b*n*(d + e*x^2)^(3/2))/(25*d^2*x^5) + (26*b*e*n*(d + e*x^2)^(3/2))/(225*d^3*x^3) + (8*b*e^(5/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(15*d^3) - (sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(5*d*x^5) + (4*e*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(15*d^2*x^3) - (8*e^2*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(15*d^3*x)]


    @test_int [x^7*(a + b*log(c*x^n))/(d + e*x^2)^(3/2), x, 7, -((11*b*d^2*n*sqrt(d + e*x^2))/(5*e^4)) + (4*b*d*n*(d + e*x^2)^(3/2))/(15*e^4) - (b*n*(d + e*x^2)^(5/2))/(25*e^4) + (16*b*d^(5/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(5*e^4) + (d^3*(a + b*log(c*x^n)))/(e^4*sqrt(d + e*x^2)) + (3*d^2*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/e^4 - (d*(d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/e^4 + ((d + e*x^2)^(5/2)*(a + b*log(c*x^n)))/(5*e^4)]
    @test_int [x^5*(a + b*log(c*x^n))/(d + e*x^2)^(3/2), x, 7, (5*b*d*n*sqrt(d + e*x^2))/(3*e^3) - (b*n*(d + e*x^2)^(3/2))/(9*e^3) - (8*b*d^(3/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(3*e^3) - (d^2*(a + b*log(c*x^n)))/(e^3*sqrt(d + e*x^2)) - (2*d*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/e^3 + ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(3*e^3)]
    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x^2)^(3/2), x, 6, -((b*n*sqrt(d + e*x^2))/e^2) + (2*b*sqrt(d)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/e^2 + (d*(a + b*log(c*x^n)))/(e^2*sqrt(d + e*x^2)) + (sqrt(d + e*x^2)*(a + b*log(c*x^n)))/e^2]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x^2)^(3/2), x, 4, -((b*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(sqrt(d)*e)) - (a + b*log(c*x^n))/(e*sqrt(d + e*x^2))]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^2)^(3/2)), x, 11, (b*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/d^(3/2) + (b*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2)/(2*d^(3/2)) + (1/(d*sqrt(d + e*x^2)) - atanh(sqrt(d + e*x^2)/sqrt(d))/d^(3/2))*(a + b*log(c*x^n)) - (b*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/d^(3/2) - (b*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(2*d^(3/2))]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x^2)^(3/2)), x, 12, -((b*n*sqrt(d + e*x^2))/(4*d^2*x^2)) - (5*b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(4*d^(5/2)) - (3*b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2)/(4*d^(5/2)) - (3*e*(a + b*log(c*x^n)))/(2*d^2*sqrt(d + e*x^2)) - (a + b*log(c*x^n))/(2*d*x^2*sqrt(d + e*x^2)) + (3*e*atanh(sqrt(d + e*x^2)/sqrt(d))*(a + b*log(c*x^n)))/(2*d^(5/2)) + (3*b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(2*d^(5/2)) + (3*b*e*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(4*d^(5/2))]

    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x^2)^(3/2), x, 11, (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d)))/(e^(3/2)*sqrt(d + e*x^2)) + (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(2*e^(3/2)*sqrt(d + e*x^2)) - (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(e^(3/2)*sqrt(d + e*x^2)) - (x*(a + b*log(c*x^n)))/(e*sqrt(d + e*x^2)) + (sqrt(d)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(e^(3/2)*sqrt(d + e*x^2)) - (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*e^(3/2)*sqrt(d + e*x^2))]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x^2)^(3/2), x, 3, -((b*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(d*sqrt(e))) + (x*(a + b*log(c*x^n)))/(d*sqrt(d + e*x^2))]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x^2)^(3/2)), x, 5, -((b*n*sqrt(d + e*x^2))/(d^2*x)) + (2*b*sqrt(e)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/d^2 - (a + b*log(c*x^n))/(d*x*sqrt(d + e*x^2)) - (2*e*x*(a + b*log(c*x^n)))/(d^2*sqrt(d + e*x^2))]
    @test_int [(a + b*log(c*x^n))/(x^4*(d + e*x^2)^(3/2)), x, 6, -((b*n*sqrt(d + e*x^2))/(9*d^2*x^3)) + (14*b*e*n*sqrt(d + e*x^2))/(9*d^3*x) - (8*b*e^(3/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(3*d^3) - (a + b*log(c*x^n))/(3*d*x^3*sqrt(d + e*x^2)) + (4*e*(a + b*log(c*x^n)))/(3*d^2*x*sqrt(d + e*x^2)) + (8*e^2*x*(a + b*log(c*x^n)))/(3*d^3*sqrt(d + e*x^2))]
    @test_int [(a + b*log(c*x^n))/(x^6*(d + e*x^2)^(3/2)), x, 8, -((b*n*sqrt(d + e*x^2))/(25*d^2*x^5)) + (14*b*e*n*sqrt(d + e*x^2))/(75*d^3*x^3) - (148*b*e^2*n*sqrt(d + e*x^2))/(75*d^4*x) + (16*b*e^(5/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(5*d^4) - (a + b*log(c*x^n))/(5*d*x^5*sqrt(d + e*x^2)) + (2*e*(a + b*log(c*x^n)))/(5*d^2*x^3*sqrt(d + e*x^2)) - (8*e^2*(a + b*log(c*x^n)))/(5*d^3*x*sqrt(d + e*x^2)) - (16*e^3*x*(a + b*log(c*x^n)))/(5*d^4*sqrt(d + e*x^2))]


    @test_int [x^7*(a + b*log(c*x^n))/(d + e*x^2)^(5/2), x, 9, -((b*d^2*n)/(3*e^4*sqrt(d + e*x^2))) + (8*b*d*n*sqrt(d + e*x^2))/(3*e^4) - (b*n*(d + e*x^2)^(3/2))/(9*e^4) - (16*b*d^(3/2)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(3*e^4) + (d^3*(a + b*log(c*x^n)))/(3*e^4*(d + e*x^2)^(3/2)) - (3*d^2*(a + b*log(c*x^n)))/(e^4*sqrt(d + e*x^2)) - (3*d*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/e^4 + ((d + e*x^2)^(3/2)*(a + b*log(c*x^n)))/(3*e^4)]
    @test_int [x^5*(a + b*log(c*x^n))/(d + e*x^2)^(5/2), x, 7, (b*d*n)/(3*e^3*sqrt(d + e*x^2)) - (b*n*sqrt(d + e*x^2))/e^3 + (8*b*sqrt(d)*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(3*e^3) - (d^2*(a + b*log(c*x^n)))/(3*e^3*(d + e*x^2)^(3/2)) + (2*d*(a + b*log(c*x^n)))/(e^3*sqrt(d + e*x^2)) + (sqrt(d + e*x^2)*(a + b*log(c*x^n)))/e^3]
    @test_int [x^3*(a + b*log(c*x^n))/(d + e*x^2)^(5/2), x, 6, -((b*n)/(3*e^2*sqrt(d + e*x^2))) - (2*b*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(3*sqrt(d)*e^2) + (d*(a + b*log(c*x^n)))/(3*e^2*(d + e*x^2)^(3/2)) - (a + b*log(c*x^n))/(e^2*sqrt(d + e*x^2))]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e*x^2)^(5/2), x, 5, (b*n)/(3*d*e*sqrt(d + e*x^2)) - (b*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(3*d^(3/2)*e) - (a + b*log(c*x^n))/(3*e*(d + e*x^2)^(3/2))]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^2)^(5/2)), x, 15, -((b*n)/(3*d^2*sqrt(d + e*x^2))) + (4*b*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(3*d^(5/2)) + (b*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2)/(2*d^(5/2)) + (1/3)*(1/(d*(d + e*x^2)^(3/2)) + 3/(d^2*sqrt(d + e*x^2)) - (3*atanh(sqrt(d + e*x^2)/sqrt(d)))/d^(5/2))*(a + b*log(c*x^n)) - (b*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/d^(5/2) - (b*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(2*d^(5/2))]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x^2)^(5/2)), x, 14, (b*e*n)/(3*d^3*sqrt(d + e*x^2)) - (b*n*sqrt(d + e*x^2))/(4*d^3*x^2) - (31*b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d)))/(12*d^(7/2)) - (5*b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))^2)/(4*d^(7/2)) - (5*e*(a + b*log(c*x^n)))/(6*d^2*(d + e*x^2)^(3/2)) - (a + b*log(c*x^n))/(2*d*x^2*(d + e*x^2)^(3/2)) - (5*e*(a + b*log(c*x^n)))/(2*d^3*sqrt(d + e*x^2)) + (5*e*atanh(sqrt(d + e*x^2)/sqrt(d))*(a + b*log(c*x^n)))/(2*d^(7/2)) + (5*b*e*n*atanh(sqrt(d + e*x^2)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(2*d^(7/2)) + (5*b*e*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^2))))/(4*d^(7/2))]

    @test_int [x^6*(a + b*log(c*x^n))/(d + e*x^2)^(5/2), x, 24, If($VersionNumber<11, (5*b*d*n*x)/(6*e^3*sqrt(d + e*x^2)) + (b*n*x^3)/(2*e^2*sqrt(d + e*x^2)) - (3*b*n*x*sqrt(d + e*x^2))/(4*e^3) - (31*b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d)))/(12*e^(7/2)*sqrt(d + e*x^2)) - (5*b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(4*e^(7/2)*sqrt(d + e*x^2)) - (5*b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*atanh(ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(e^(7/2)*sqrt(d + e*x^2)) + (5*b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 + ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*e^(7/2)*sqrt(d + e*x^2)) - (x^5*(a + b*log(c*x^n)))/(3*e*(d + e*x^2)^(3/2)) - (5*x^3*(a + b*log(c*x^n)))/(3*e^2*sqrt(d + e*x^2)) + (5*x*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(2*e^3) - (5*d^(3/2)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(2*e^(7/2)*sqrt(d + e*x^2)) + (5*b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(4*e^(7/2)*sqrt(d + e*x^2)), (b*d*n*x)/(3*e^3*sqrt(d + e*x^2)) - (b*n*x*sqrt(d + e*x^2))/(4*e^3) - (31*b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d)))/(12*e^(7/2)*sqrt(d + e*x^2)) - (5*b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(4*e^(7/2)*sqrt(d + e*x^2)) + (5*b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*e^(7/2)*sqrt(d + e*x^2)) - (x^5*(a + b*log(c*x^n)))/(3*e*(d + e*x^2)^(3/2)) - (5*x^3*(a + b*log(c*x^n)))/(3*e^2*sqrt(d + e*x^2)) + (5*x*sqrt(d + e*x^2)*(a + b*log(c*x^n)))/(2*e^3) - (5*d^(3/2)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(2*e^(7/2)*sqrt(d + e*x^2)) + (5*b*d^(3/2)*n*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(4*e^(7/2)*sqrt(d + e*x^2)))]
    @test_int [x^4*(a + b*log(c*x^n))/(d + e*x^2)^(5/2), x, 13, -((b*n*x)/(3*e^2*sqrt(d + e*x^2))) + (4*b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d)))/(3*e^(5/2)*sqrt(d + e*x^2)) + (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(2*e^(5/2)*sqrt(d + e*x^2)) - (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(e^(5/2)*sqrt(d + e*x^2)) - (x^3*(a + b*log(c*x^n)))/(3*e*(d + e*x^2)^(3/2)) - (x*(a + b*log(c*x^n)))/(e^2*sqrt(d + e*x^2)) + (sqrt(d)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*(a + b*log(c*x^n)))/(e^(5/2)*sqrt(d + e*x^2)) - (b*sqrt(d)*n*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*e^(5/2)*sqrt(d + e*x^2))]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x^2)^(5/2), x, 4, (b*n*x)/(3*d*e*sqrt(d + e*x^2)) - (b*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(3*d*e^(3/2)) + (x^3*(a + b*log(c*x^n)))/(3*d*(d + e*x^2)^(3/2))]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x^2)^(5/2), x, 5, -((b*n*x)/(3*d^2*sqrt(d + e*x^2))) - (2*b*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(3*d^2*sqrt(e)) + (x*(a + b*log(c*x^n)))/(3*d*(d + e*x^2)^(3/2)) + (2*x*(a + b*log(c*x^n)))/(3*d^2*sqrt(d + e*x^2))]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x^2)^(5/2)), x, 6, -((b*n)/(d^2*x*sqrt(d + e*x^2))) - (2*b*e*n*x)/(3*d^3*sqrt(d + e*x^2)) + (8*b*sqrt(e)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(3*d^3) - (a + b*log(c*x^n))/(d*x*(d + e*x^2)^(3/2)) - (4*e*x*(a + b*log(c*x^n)))/(3*d^2*(d + e*x^2)^(3/2)) - (8*e*x*(a + b*log(c*x^n)))/(3*d^3*sqrt(d + e*x^2))]
    @test_int [(a + b*log(c*x^n))/(x^4*(d + e*x^2)^(5/2)), x, 7, -((b*e^2*n*x)/(3*d^4*sqrt(d + e*x^2))) - (b*n*sqrt(d + e*x^2))/(9*d^3*x^3) + (23*b*e*n*sqrt(d + e*x^2))/(9*d^4*x) - (16*b*e^(3/2)*n*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(3*d^4) - (a + b*log(c*x^n))/(3*d*x^3*(d + e*x^2)^(3/2)) + (2*e*(a + b*log(c*x^n)))/(d^2*x*(d + e*x^2)^(3/2)) + (8*e^2*x*(a + b*log(c*x^n)))/(3*d^3*(d + e*x^2)^(3/2)) + (16*e^2*x*(a + b*log(c*x^n)))/(3*d^4*sqrt(d + e*x^2))]


    @test_int [x^3*(a + b*log(c*x^n))/(sqrt(d + e*x)*sqrt(d - e*x)), x, 8, (2*b*d^2*n*(d^2 - e^2*x^2))/(3*e^4*sqrt(d - e*x)*sqrt(d + e*x)) - (b*n*(d^2 - e^2*x^2)^2)/(9*e^4*sqrt(d - e*x)*sqrt(d + e*x)) - (2*b*d^4*n*sqrt(1 - (e^2*x^2)/d^2)*atanh(sqrt(1 - (e^2*x^2)/d^2)))/(3*e^4*sqrt(d - e*x)*sqrt(d + e*x)) - (d^2*(d^2 - e^2*x^2)*(a + b*log(c*x^n)))/(e^4*sqrt(d - e*x)*sqrt(d + e*x)) + ((d^2 - e^2*x^2)^2*(a + b*log(c*x^n)))/(3*e^4*sqrt(d - e*x)*sqrt(d + e*x))]
    @test_int [x^1*(a + b*log(c*x^n))/(sqrt(d + e*x)*sqrt(d - e*x)), x, 6, (b*n*(d^2 - e^2*x^2))/(e^2*sqrt(d - e*x)*sqrt(d + e*x)) - (b*d^2*n*sqrt(1 - (e^2*x^2)/d^2)*atanh(sqrt(1 - (e^2*x^2)/d^2)))/(e^2*sqrt(d - e*x)*sqrt(d + e*x)) - ((d^2 - e^2*x^2)*(a + b*log(c*x^n)))/(e^2*sqrt(d - e*x)*sqrt(d + e*x))]
    @test_int [(a + b*log(c*x^n))/(x^1*sqrt(d + e*x)*sqrt(d - e*x)), x, 8, (b*n*sqrt(1 - (e^2*x^2)/d^2)*atanh(sqrt(1 - (e^2*x^2)/d^2))^2)/(2*sqrt(d - e*x)*sqrt(d + e*x)) - (sqrt(1 - (e^2*x^2)/d^2)*atanh(sqrt(1 - (e^2*x^2)/d^2))*(a + b*log(c*x^n)))/(sqrt(d - e*x)*sqrt(d + e*x)) - (b*n*sqrt(1 - (e^2*x^2)/d^2)*atanh(sqrt(1 - (e^2*x^2)/d^2))*log(2/(1 - sqrt(1 - (e^2*x^2)/d^2))))/(sqrt(d - e*x)*sqrt(d + e*x)) - (b*n*sqrt(1 - (e^2*x^2)/d^2)*PolyLog(2, -((1 + sqrt(1 - (e^2*x^2)/d^2))/(1 - sqrt(1 - (e^2*x^2)/d^2)))))/(2*sqrt(d - e*x)*sqrt(d + e*x))]
    @test_int [(a + b*log(c*x^n))/(x^3*sqrt(d + e*x)*sqrt(d - e*x)), x, 13, -((b*n*(d^2 - e^2*x^2))/(4*d^2*x^2*sqrt(d - e*x)*sqrt(d + e*x))) + (b*e^2*n*sqrt(1 - (e^2*x^2)/d^2)*atanh(sqrt(1 - (e^2*x^2)/d^2)))/(4*d^2*sqrt(d - e*x)*sqrt(d + e*x)) + (b*e^2*n*sqrt(1 - (e^2*x^2)/d^2)*atanh(sqrt(1 - (e^2*x^2)/d^2))^2)/(4*d^2*sqrt(d - e*x)*sqrt(d + e*x)) - ((d^2 - e^2*x^2)*(a + b*log(c*x^n)))/(2*d^2*x^2*sqrt(d - e*x)*sqrt(d + e*x)) - (e^2*sqrt(1 - (e^2*x^2)/d^2)*atanh(sqrt(1 - (e^2*x^2)/d^2))*(a + b*log(c*x^n)))/(2*d^2*sqrt(d - e*x)*sqrt(d + e*x)) - (b*e^2*n*sqrt(1 - (e^2*x^2)/d^2)*atanh(sqrt(1 - (e^2*x^2)/d^2))*log(2/(1 - sqrt(1 - (e^2*x^2)/d^2))))/(2*d^2*sqrt(d - e*x)*sqrt(d + e*x)) - (b*e^2*n*sqrt(1 - (e^2*x^2)/d^2)*PolyLog(2, -((1 + sqrt(1 - (e^2*x^2)/d^2))/(1 - sqrt(1 - (e^2*x^2)/d^2)))))/(4*d^2*sqrt(d - e*x)*sqrt(d + e*x))]

    @test_int [x^2*(a + b*log(c*x^n))/(sqrt(d + e*x)*sqrt(d - e*x)), x, 12, (b*n*x*(d^2 - e^2*x^2))/(4*e^2*sqrt(d - e*x)*sqrt(d + e*x)) + (b*d^3*n*sqrt(1 - (e^2*x^2)/d^2)*asin((e*x)/d))/(4*e^3*sqrt(d - e*x)*sqrt(d + e*x)) + (im*b*d^3*n*sqrt(1 - (e^2*x^2)/d^2)*asin((e*x)/d)^2)/(4*e^3*sqrt(d - e*x)*sqrt(d + e*x)) - (b*d^3*n*sqrt(1 - (e^2*x^2)/d^2)*asin((e*x)/d)*log(1 - ℯ^(2*im*asin((e*x)/d))))/(2*e^3*sqrt(d - e*x)*sqrt(d + e*x)) - (x*(d^2 - e^2*x^2)*(a + b*log(c*x^n)))/(2*e^2*sqrt(d - e*x)*sqrt(d + e*x)) + (d^3*sqrt(1 - (e^2*x^2)/d^2)*asin((e*x)/d)*(a + b*log(c*x^n)))/(2*e^3*sqrt(d - e*x)*sqrt(d + e*x)) + (im*b*d^3*n*sqrt(1 - (e^2*x^2)/d^2)*PolyLog(2, ℯ^(2*im*asin((e*x)/d))))/(4*e^3*sqrt(d - e*x)*sqrt(d + e*x))]
    @test_int [x^0*(a + b*log(c*x^n))/(sqrt(d + e*x)*sqrt(d - e*x)), x, 7, (im*b*d*n*sqrt(1 - (e^2*x^2)/d^2)*asin((e*x)/d)^2)/(2*e*sqrt(d - e*x)*sqrt(d + e*x)) - (b*d*n*sqrt(1 - (e^2*x^2)/d^2)*asin((e*x)/d)*log(1 - ℯ^(2*im*asin((e*x)/d))))/(e*sqrt(d - e*x)*sqrt(d + e*x)) + (d*sqrt(1 - (e^2*x^2)/d^2)*asin((e*x)/d)*(a + b*log(c*x^n)))/(e*sqrt(d - e*x)*sqrt(d + e*x)) + (im*b*d*n*sqrt(1 - (e^2*x^2)/d^2)*PolyLog(2, ℯ^(2*im*asin((e*x)/d))))/(2*e*sqrt(d - e*x)*sqrt(d + e*x))]
    @test_int [(a + b*log(c*x^n))/(x^2*sqrt(d + e*x)*sqrt(d - e*x)), x, 4, -((b*n*(d^2 - e^2*x^2))/(d^2*x*sqrt(d - e*x)*sqrt(d + e*x))) - (b*e*n*sqrt(1 - (e^2*x^2)/d^2)*asin((e*x)/d))/(d*sqrt(d - e*x)*sqrt(d + e*x)) - ((d^2 - e^2*x^2)*(a + b*log(c*x^n)))/(d^2*x*sqrt(d - e*x)*sqrt(d + e*x))]
    @test_int [(a + b*log(c*x^n))/(x^4*sqrt(d + e*x)*sqrt(d - e*x)), x, 6, -((2*b*e^2*n*(d^2 - e^2*x^2))/(3*d^4*x*sqrt(d - e*x)*sqrt(d + e*x))) - (b*n*(d^2 - e^2*x^2)^2)/(9*d^4*x^3*sqrt(d - e*x)*sqrt(d + e*x)) - (2*b*e^3*n*sqrt(1 - (e^2*x^2)/d^2)*asin((e*x)/d))/(3*d^3*sqrt(d - e*x)*sqrt(d + e*x)) - ((d^2 - e^2*x^2)*(a + b*log(c*x^n)))/(3*d^2*x^3*sqrt(d - e*x)*sqrt(d + e*x)) - (2*e^2*(d^2 - e^2*x^2)*(a + b*log(c*x^n)))/(3*d^4*x*sqrt(d - e*x)*sqrt(d + e*x))]


    @test_int [x*log(x)/sqrt(-1 + x^2), x, 5, -sqrt(-1 + x^2) + atan(sqrt(-1 + x^2)) + sqrt(-1 + x^2)*log(x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^2)^q*(a+b*log(c*x^n))*when*m*symbolic=#


    @test_int [(f*x)^m*(d + e*x^2)^3*(a + b*log(c*x^n)), x, 3, -((b*d^3*n*(f*x)^(1 + m))/(f*(1 + m)^2)) - (3*b*d^2*e*n*(f*x)^(3 + m))/(f^3*(3 + m)^2) - (3*b*d*e^2*n*(f*x)^(5 + m))/(f^5*(5 + m)^2) - (b*e^3*n*(f*x)^(7 + m))/(f^7*(7 + m)^2) + (d^3*(f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m)) + (3*d^2*e*(f*x)^(3 + m)*(a + b*log(c*x^n)))/(f^3*(3 + m)) + (3*d*e^2*(f*x)^(5 + m)*(a + b*log(c*x^n)))/(f^5*(5 + m)) + (e^3*(f*x)^(7 + m)*(a + b*log(c*x^n)))/(f^7*(7 + m))]
    @test_int [(f*x)^m*(d + e*x^2)^2*(a + b*log(c*x^n)), x, 4, -((b*d^2*n*(f*x)^(1 + m))/(f*(1 + m)^2)) - (2*b*d*e*n*(f*x)^(3 + m))/(f^3*(3 + m)^2) - (b*e^2*n*(f*x)^(5 + m))/(f^5*(5 + m)^2) + (d^2*(f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m)) + (2*d*e*(f*x)^(3 + m)*(a + b*log(c*x^n)))/(f^3*(3 + m)) + (e^2*(f*x)^(5 + m)*(a + b*log(c*x^n)))/(f^5*(5 + m))]
    @test_int [(f*x)^m*(d + e*x^2)^1*(a + b*log(c*x^n)), x, 4, -((b*d*n*(f*x)^(1 + m))/(f*(1 + m)^2)) - (b*e*n*(f*x)^(3 + m))/(f^3*(3 + m)^2) + (d*(f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m)) + (e*(f*x)^(3 + m)*(a + b*log(c*x^n)))/(f^3*(3 + m))]
    @test_int [(f*x)^m*(d + e*x^2)^0*(a + b*log(c*x^n)), x, 1, -((b*n*(f*x)^(1 + m))/(f*(1 + m)^2)) + ((f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m))]
    @test_int [(f*x)^m*(a + b*log(c*x^n))/(d + e*x^2)^1, x, 0, Unintegrable(((f*x)^m*(a + b*log(c*x^n)))/(d + e*x^2), x)]
    @test_int [(f*x)^m*(a + b*log(c*x^n))/(d + e*x^2)^2, x, 0, Unintegrable(((f*x)^m*(a + b*log(c*x^n)))/(d + e*x^2)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^3)^q*(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*x^3)^q*(a+b*log(c*x^n))^p=#


    @test_int [(a + b*log(c*x^n))^3/(d + e*x^3)^2, x, 26, If($VersionNumber>=8, (x*(a + b*log(c*x^n))^3)/(9*d^(5/3)*(d^(1/3) + e^(1/3)*x)) - ((-1)^(1/3)*x*(a + b*log(c*x^n))^3)/((1 + (-1)^(1/3))^4*d^(5/3)*((-1)^(2/3)*d^(1/3) + e^(1/3)*x)) + (x*(a + b*log(c*x^n))^3)/(9*d^(5/3)*(d^(1/3) + (-1)^(2/3)*e^(1/3)*x)) - (b*n*(a + b*log(c*x^n))^2*log(1 + (e^(1/3)*x)/d^(1/3)))/(3*d^(5/3)*e^(1/3)) + (2*(a + b*log(c*x^n))^3*log(1 + (e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) + (3*(-1)^(1/3)*b*n*(a + b*log(c*x^n))^2*log(1 - ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (2*im*sqrt(3)*(a + b*log(c*x^n))^3*log(1 - ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^5*d^(5/3)*e^(1/3)) + ((-1)^(1/3)*b*n*(a + b*log(c*x^n))^2*log(1 + ((-1)^(2/3)*e^(1/3)*x)/d^(1/3)))/(3*d^(5/3)*e^(1/3)) + (2*(a + b*log(c*x^n))^3*log(1 + ((-1)^(2/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (2*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) + (2*b*n*(a + b*log(c*x^n))^2*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) + (6*(-1)^(1/3)*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (6*im*sqrt(3)*b*n*(a + b*log(c*x^n))^2*PolyLog(2, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^5*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) + (6*b*n*(a + b*log(c*x^n))^2*PolyLog(2, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) + (2*b^3*n^3*PolyLog(3, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) - (4*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) - (6*(-1)^(1/3)*b^3*n^3*PolyLog(3, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) + (12*im*sqrt(3)*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^5*d^(5/3)*e^(1/3)) - (2*(-1)^(1/3)*b^3*n^3*PolyLog(3, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) - (12*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) + (4*b^3*n^3*PolyLog(4, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) - (12*im*sqrt(3)*b^3*n^3*PolyLog(4, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^5*d^(5/3)*e^(1/3)) + (12*b^3*n^3*PolyLog(4, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)), (x*(a + b*log(c*x^n))^3)/(9*d^(5/3)*(d^(1/3) + e^(1/3)*x)) - ((-1)^(1/3)*x*(a + b*log(c*x^n))^3)/((1 + (-1)^(1/3))^4*d^(5/3)*((-1)^(2/3)*d^(1/3) + e^(1/3)*x)) + (x*(a + b*log(c*x^n))^3)/(9*d^(5/3)*(d^(1/3) + (-1)^(2/3)*e^(1/3)*x)) - (b*n*(a + b*log(c*x^n))^2*log(1 + (e^(1/3)*x)/d^(1/3)))/(3*d^(5/3)*e^(1/3)) + (2*(a + b*log(c*x^n))^3*log(1 + (e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) + (3*(-1)^(1/3)*b*n*(a + b*log(c*x^n))^2*log(1 - ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) + ((-1)^(1/3)*b*n*(a + b*log(c*x^n))^2*log(1 + ((-1)^(2/3)*e^(1/3)*x)/d^(1/3)))/(3*d^(5/3)*e^(1/3)) - (4*(a + b*log(c*x^n))^3*log(1 - ((1 - im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 - im*sqrt(3))*d^(5/3)*e^(1/3)) - (4*(a + b*log(c*x^n))^3*log(1 - ((1 + im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 + im*sqrt(3))*d^(5/3)*e^(1/3)) - (2*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) + (2*b*n*(a + b*log(c*x^n))^2*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) + (6*(-1)^(1/3)*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b^2*n^2*(a + b*log(c*x^n))*PolyLog(2, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) - (4*b*n*(a + b*log(c*x^n))^2*PolyLog(2, ((1 - im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(3*(1 - im*sqrt(3))*d^(5/3)*e^(1/3)) - (4*b*n*(a + b*log(c*x^n))^2*PolyLog(2, ((1 + im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(3*(1 + im*sqrt(3))*d^(5/3)*e^(1/3)) + (2*b^3*n^3*PolyLog(3, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) - (4*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) - (6*(-1)^(1/3)*b^3*n^3*PolyLog(3, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (2*(-1)^(1/3)*b^3*n^3*PolyLog(3, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) + (8*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, ((1 - im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(3*(1 - im*sqrt(3))*d^(5/3)*e^(1/3)) + (8*b^2*n^2*(a + b*log(c*x^n))*PolyLog(3, ((1 + im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(3*(1 + im*sqrt(3))*d^(5/3)*e^(1/3)) + (4*b^3*n^3*PolyLog(4, -((e^(1/3)*x)/d^(1/3))))/(3*d^(5/3)*e^(1/3)) - (8*b^3*n^3*PolyLog(4, ((1 - im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(3*(1 - im*sqrt(3))*d^(5/3)*e^(1/3)) - (8*b^3*n^3*PolyLog(4, ((1 + im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(3*(1 + im*sqrt(3))*d^(5/3)*e^(1/3)))]
    @test_int [(a + b*log(c*x^n))^2/(d + e*x^3)^2, x, 20, If($VersionNumber>=8, (x*(a + b*log(c*x^n))^2)/(9*d^(5/3)*(d^(1/3) + e^(1/3)*x)) - ((-1)^(1/3)*x*(a + b*log(c*x^n))^2)/((1 + (-1)^(1/3))^4*d^(5/3)*((-1)^(2/3)*d^(1/3) + e^(1/3)*x)) + (x*(a + b*log(c*x^n))^2)/(9*d^(5/3)*(d^(1/3) + (-1)^(2/3)*e^(1/3)*x)) - (2*b*n*(a + b*log(c*x^n))*log(1 + (e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) + (2*(a + b*log(c*x^n))^2*log(1 + (e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b*n*(a + b*log(c*x^n))*log(1 - ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (2*im*sqrt(3)*(a + b*log(c*x^n))^2*log(1 - ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^5*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b*n*(a + b*log(c*x^n))*log(1 + ((-1)^(2/3)*e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) + (2*(a + b*log(c*x^n))^2*log(1 + ((-1)^(2/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (2*b^2*n^2*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) + (4*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b^2*n^2*PolyLog(2, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (4*im*sqrt(3)*b*n*(a + b*log(c*x^n))*PolyLog(2, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^5*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b^2*n^2*PolyLog(2, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) + (4*b*n*(a + b*log(c*x^n))*PolyLog(2, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (4*b^2*n^2*PolyLog(3, -((e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) + (4*im*sqrt(3)*b^2*n^2*PolyLog(3, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^5*d^(5/3)*e^(1/3)) - (4*b^2*n^2*PolyLog(3, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)), (x*(a + b*log(c*x^n))^2)/(9*d^(5/3)*(d^(1/3) + e^(1/3)*x)) - ((-1)^(1/3)*x*(a + b*log(c*x^n))^2)/((1 + (-1)^(1/3))^4*d^(5/3)*((-1)^(2/3)*d^(1/3) + e^(1/3)*x)) + (x*(a + b*log(c*x^n))^2)/(9*d^(5/3)*(d^(1/3) + (-1)^(2/3)*e^(1/3)*x)) - (2*b*n*(a + b*log(c*x^n))*log(1 + (e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) + (2*(a + b*log(c*x^n))^2*log(1 + (e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b*n*(a + b*log(c*x^n))*log(1 - ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b*n*(a + b*log(c*x^n))*log(1 + ((-1)^(2/3)*e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) - (4*(a + b*log(c*x^n))^2*log(1 - ((1 - im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 - im*sqrt(3))*d^(5/3)*e^(1/3)) - (4*(a + b*log(c*x^n))^2*log(1 - ((1 + im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 + im*sqrt(3))*d^(5/3)*e^(1/3)) - (2*b^2*n^2*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) + (4*b*n*(a + b*log(c*x^n))*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b^2*n^2*PolyLog(2, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) + (2*(-1)^(1/3)*b^2*n^2*PolyLog(2, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) - (8*b*n*(a + b*log(c*x^n))*PolyLog(2, ((1 - im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 - im*sqrt(3))*d^(5/3)*e^(1/3)) - (8*b*n*(a + b*log(c*x^n))*PolyLog(2, ((1 + im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 + im*sqrt(3))*d^(5/3)*e^(1/3)) - (4*b^2*n^2*PolyLog(3, -((e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) + (8*b^2*n^2*PolyLog(3, ((1 - im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 - im*sqrt(3))*d^(5/3)*e^(1/3)) + (8*b^2*n^2*PolyLog(3, ((1 + im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 + im*sqrt(3))*d^(5/3)*e^(1/3)))]
    @test_int [(a + b*log(c*x^n))^1/(d + e*x^3)^2, x, 14, If($VersionNumber>=8, (x*(a + b*log(c*x^n)))/(9*d^(5/3)*(d^(1/3) + e^(1/3)*x)) - ((-1)^(1/3)*x*(a + b*log(c*x^n)))/((1 + (-1)^(1/3))^4*d^(5/3)*((-1)^(2/3)*d^(1/3) + e^(1/3)*x)) + (x*(a + b*log(c*x^n)))/(9*d^(5/3)*(d^(1/3) + (-1)^(2/3)*e^(1/3)*x)) + ((-1)^(1/3)*b*n*log((-(-1)^(2/3))*d^(1/3) - e^(1/3)*x))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (b*n*log(d^(1/3) + e^(1/3)*x))/(9*d^(5/3)*e^(1/3)) + ((-1)^(1/3)*b*n*log(d^(1/3) + (-1)^(2/3)*e^(1/3)*x))/(9*d^(5/3)*e^(1/3)) + (2*(a + b*log(c*x^n))*log(1 + (e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) - (2*im*sqrt(3)*(a + b*log(c*x^n))*log(1 - ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^5*d^(5/3)*e^(1/3)) + (2*(a + b*log(c*x^n))*log(1 + ((-1)^(2/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) + (2*b*n*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) - (2*im*sqrt(3)*b*n*PolyLog(2, ((-1)^(1/3)*e^(1/3)*x)/d^(1/3)))/((1 + (-1)^(1/3))^5*d^(5/3)*e^(1/3)) + (2*b*n*PolyLog(2, -(((-1)^(2/3)*e^(1/3)*x)/d^(1/3))))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)), (x*(a + b*log(c*x^n)))/(9*d^(5/3)*(d^(1/3) + e^(1/3)*x)) - ((-1)^(1/3)*x*(a + b*log(c*x^n)))/((1 + (-1)^(1/3))^4*d^(5/3)*((-1)^(2/3)*d^(1/3) + e^(1/3)*x)) + (x*(a + b*log(c*x^n)))/(9*d^(5/3)*(d^(1/3) + (-1)^(2/3)*e^(1/3)*x)) + ((-1)^(1/3)*b*n*log((-(-1)^(2/3))*d^(1/3) - e^(1/3)*x))/((1 + (-1)^(1/3))^4*d^(5/3)*e^(1/3)) - (b*n*log(d^(1/3) + e^(1/3)*x))/(9*d^(5/3)*e^(1/3)) + ((-1)^(1/3)*b*n*log(d^(1/3) + (-1)^(2/3)*e^(1/3)*x))/(9*d^(5/3)*e^(1/3)) + (2*(a + b*log(c*x^n))*log(1 + (e^(1/3)*x)/d^(1/3)))/(9*d^(5/3)*e^(1/3)) - (4*(a + b*log(c*x^n))*log(1 - ((1 - im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 - im*sqrt(3))*d^(5/3)*e^(1/3)) - (4*(a + b*log(c*x^n))*log(1 - ((1 + im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 + im*sqrt(3))*d^(5/3)*e^(1/3)) + (2*b*n*PolyLog(2, -((e^(1/3)*x)/d^(1/3))))/(9*d^(5/3)*e^(1/3)) - (4*b*n*PolyLog(2, ((1 - im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 - im*sqrt(3))*d^(5/3)*e^(1/3)) - (4*b*n*PolyLog(2, ((1 + im*sqrt(3))*e^(1/3)*x)/(2*d^(1/3))))/(9*(1 + im*sqrt(3))*d^(5/3)*e^(1/3)))]
    @test_int [1/((d + e*x^3)^2*(a + b*log(c*x^n))^1), x, 0, Unintegrable(1/((d + e*x^3)^2*(a + b*log(c*x^n))), x)]
    @test_int [1/((d + e*x^3)^2*(a + b*log(c*x^n))^2), x, 0, Unintegrable(1/((d + e*x^3)^2*(a + b*log(c*x^n))^2), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^r)^q*(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e / x)^q*(a+b*log(c*x^n))=#


    #= ::Subsubsection:: =#
    #=q>0=#


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [x^3*(a + b*log(c*x^n))/(d + e/x), x, 9, -((a*e^3*x)/d^4) + (b*e^3*n*x)/d^4 - (b*e^2*n*x^2)/(4*d^3) + (b*e*n*x^3)/(9*d^2) - (b*n*x^4)/(16*d) - (b*e^3*x*log(c*x^n))/d^4 + (e^2*x^2*(a + b*log(c*x^n)))/(2*d^3) - (e*x^3*(a + b*log(c*x^n)))/(3*d^2) + (x^4*(a + b*log(c*x^n)))/(4*d) + (e^4*(a + b*log(c*x^n))*log(1 + (d*x)/e))/d^5 + (b*e^4*n*PolyLog(2, -((d*x)/e)))/d^5]
    @test_int [x^2*(a + b*log(c*x^n))/(d + e/x), x, 8, (a*e^2*x)/d^3 - (b*e^2*n*x)/d^3 + (b*e*n*x^2)/(4*d^2) - (b*n*x^3)/(9*d) + (b*e^2*x*log(c*x^n))/d^3 - (e*x^2*(a + b*log(c*x^n)))/(2*d^2) + (x^3*(a + b*log(c*x^n)))/(3*d) - (e^3*(a + b*log(c*x^n))*log(1 + (d*x)/e))/d^4 - (b*e^3*n*PolyLog(2, -((d*x)/e)))/d^4]
    @test_int [x^1*(a + b*log(c*x^n))/(d + e/x), x, 7, -((a*e*x)/d^2) + (b*e*n*x)/d^2 - (b*n*x^2)/(4*d) - (b*e*x*log(c*x^n))/d^2 + (x^2*(a + b*log(c*x^n)))/(2*d) + (e^2*(a + b*log(c*x^n))*log(1 + (d*x)/e))/d^3 + (b*e^2*n*PolyLog(2, -((d*x)/e)))/d^3]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e/x), x, 6, (a*x)/d - (b*n*x)/d + (b*x*log(c*x^n))/d - (e*(a + b*log(c*x^n))*log(1 + (d*x)/e))/d^2 - (b*e*n*PolyLog(2, -((d*x)/e)))/d^2]
    @test_int [(a + b*log(c*x^n))/((d + e/x)*x^1), x, 3, ((a + b*log(c*x^n))*log(1 + (d*x)/e))/d + (b*n*PolyLog(2, -((d*x)/e)))/d]
    @test_int [(a + b*log(c*x^n))/((d + e/x)*x^2), x, 2, -((log(1 + e/(d*x))*(a + b*log(c*x^n)))/e) + (b*n*PolyLog(2, -(e/(d*x))))/e]
    @test_int [(a + b*log(c*x^n))/((d + e/x)*x^3), x, 6, -((b*n)/(e*x)) - (a + b*log(c*x^n))/(e*x) - (d*(a + b*log(c*x^n))^2)/(2*b*e^2*n) + (d*(a + b*log(c*x^n))*log(1 + (d*x)/e))/e^2 + (b*d*n*PolyLog(2, -((d*x)/e)))/e^2]
    @test_int [(a + b*log(c*x^n))/((d + e/x)*x^4), x, 7, -((b*n)/(4*e*x^2)) + (b*d*n)/(e^2*x) - (a + b*log(c*x^n))/(2*e*x^2) + (d*(a + b*log(c*x^n)))/(e^2*x) + (d^2*(a + b*log(c*x^n))^2)/(2*b*e^3*n) - (d^2*(a + b*log(c*x^n))*log(1 + (d*x)/e))/e^3 - (b*d^2*n*PolyLog(2, -((d*x)/e)))/e^3]


    @test_int [x^3*(a + b*log(c*x))/(d + e/x), x, 9, -((a*e^3*x)/d^4) + (b*e^3*x)/d^4 - (b*e^2*x^2)/(4*d^3) + (b*e*x^3)/(9*d^2) - (b*x^4)/(16*d) - (b*e^3*x*log(c*x))/d^4 + (e^2*x^2*(a + b*log(c*x)))/(2*d^3) - (e*x^3*(a + b*log(c*x)))/(3*d^2) + (x^4*(a + b*log(c*x)))/(4*d) + (e^4*(a + b*log(c*x))*log(1 + (d*x)/e))/d^5 + (b*e^4*PolyLog(2, -((d*x)/e)))/d^5]
    @test_int [x^2*(a + b*log(c*x))/(d + e/x), x, 8, (a*e^2*x)/d^3 - (b*e^2*x)/d^3 + (b*e*x^2)/(4*d^2) - (b*x^3)/(9*d) + (b*e^2*x*log(c*x))/d^3 - (e*x^2*(a + b*log(c*x)))/(2*d^2) + (x^3*(a + b*log(c*x)))/(3*d) - (e^3*(a + b*log(c*x))*log(1 + (d*x)/e))/d^4 - (b*e^3*PolyLog(2, -((d*x)/e)))/d^4]
    @test_int [x^1*(a + b*log(c*x))/(d + e/x), x, 7, -((a*e*x)/d^2) + (b*e*x)/d^2 - (b*x^2)/(4*d) - (b*e*x*log(c*x))/d^2 + (x^2*(a + b*log(c*x)))/(2*d) + (e^2*(a + b*log(c*x))*log(1 + (d*x)/e))/d^3 + (b*e^2*PolyLog(2, -((d*x)/e)))/d^3]
    @test_int [x^0*(a + b*log(c*x))/(d + e/x), x, 6, (a*x)/d - (b*x)/d + (b*x*log(c*x))/d - (e*(a + b*log(c*x))*log(1 + (d*x)/e))/d^2 - (b*e*PolyLog(2, -((d*x)/e)))/d^2]
    @test_int [(a + b*log(c*x))/((d + e/x)*x^1), x, 3, ((a + b*log(c*x))*log(1 + (d*x)/e))/d + (b*PolyLog(2, -((d*x)/e)))/d]
    @test_int [(a + b*log(c*x))/((d + e/x)*x^2), x, 2, -((log(1 + e/(d*x))*(a + b*log(c*x)))/e) + (b*PolyLog(2, -(e/(d*x))))/e]
    @test_int [(a + b*log(c*x))/((d + e/x)*x^3), x, 6, -(b/(e*x)) - (a + b*log(c*x))/(e*x) - (d*(a + b*log(c*x))^2)/(2*b*e^2) + (d*(a + b*log(c*x))*log(1 + (d*x)/e))/e^2 + (b*d*PolyLog(2, -((d*x)/e)))/e^2]
    @test_int [(a + b*log(c*x))/((d + e/x)*x^4), x, 7, -(b/(4*e*x^2)) + (b*d)/(e^2*x) - (a + b*log(c*x))/(2*e*x^2) + (d*(a + b*log(c*x)))/(e^2*x) + (d^2*(a + b*log(c*x))^2)/(2*b*e^3) - (d^2*(a + b*log(c*x))*log(1 + (d*x)/e))/e^3 - (b*d^2*PolyLog(2, -((d*x)/e)))/e^3]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^n)^q*(a+b*log(c*x^n))^p*when*m=n-1*and*c=-e/d=#


    @test_int [x^(n - 1)*log(e*x^n)/(1 - e*x^n), x, 2, PolyLog(2, 1 - e*x^n)/(e*n)]
    @test_int [x^(n - 1)*log(x^n/d)/(d - x^n), x, 2, PolyLog(2, 1 - x^n/d)/n]
    @test_int [x^(n - 1)*log(-e*x^n/d)/(d + e*x^n), x, 2, -(PolyLog(2, 1 + (e*x^n)/d)/(e*n))]


    @test_int [log(a/x)/(a*x - x^2), x, 4, PolyLog(2, 1 - a/x)/a] 
    @test_int [log(a/x^2)/(a*x - x^3), x, 4, PolyLog(2, 1 - a/x^2)/(2*a)]
    @test_int [log(a/x^(n - 1))/(a*x - x^n), x, 3, -(PolyLog(2, 1 - a*x^(1 - n))/(a*(1 - n)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^r)^q*(a+b*log(c*x^n))^p*when*m=r-1=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(f*x)^(m - 1)*(d + e*x^m)^3*(a + b*log(c*x^n)), x, 5, -((b*d^3*n*x*(f*x)^(-1 + m))/m^2) - (3*b*d^2*e*n*x^(1 + m)*(f*x)^(-1 + m))/(4*m^2) - (b*d*e^2*n*x^(1 + 2*m)*(f*x)^(-1 + m))/(3*m^2) - (b*e^3*n*x^(1 + 3*m)*(f*x)^(-1 + m))/(16*m^2) - (b*d^4*n*x^(1 - m)*(f*x)^(-1 + m)*log(x))/(4*e*m) + (x^(1 - m)*(f*x)^(-1 + m)*(d + e*x^m)^4*(a + b*log(c*x^n)))/(4*e*m)]
    @test_int [(f*x)^(m - 1)*(d + e*x^m)^2*(a + b*log(c*x^n)), x, 5, -((b*d^2*n*x*(f*x)^(-1 + m))/m^2) - (b*d*e*n*x^(1 + m)*(f*x)^(-1 + m))/(2*m^2) - (b*e^2*n*x^(1 + 2*m)*(f*x)^(-1 + m))/(9*m^2) - (b*d^3*n*x^(1 - m)*(f*x)^(-1 + m)*log(x))/(3*e*m) + (x^(1 - m)*(f*x)^(-1 + m)*(d + e*x^m)^3*(a + b*log(c*x^n)))/(3*e*m)]
    @test_int [(f*x)^(m - 1)*(d + e*x^m)^1*(a + b*log(c*x^n)), x, 5, -((b*d*n*(f*x)^m)/(f*m^2)) - (b*e*n*x^m*(f*x)^m)/(4*f*m^2) + (d*(f*x)^m*(a + b*log(c*x^n)))/(f*m) + (e*x^m*(f*x)^m*(a + b*log(c*x^n)))/(2*f*m), -((b*d*n*x*(f*x)^(-1 + m))/m^2) - (b*e*n*x^(1 + m)*(f*x)^(-1 + m))/(4*m^2) - (b*d^2*n*x^(1 - m)*(f*x)^(-1 + m)*log(x))/(2*e*m) + (x^(1 - m)*(f*x)^(-1 + m)*(d + e*x^m)^2*(a + b*log(c*x^n)))/(2*e*m)]
    @test_int [(f*x)^(m - 1)*(d + e*x^m)^0*(a + b*log(c*x^n)), x, 1, -((b*n*(f*x)^m)/(f*m^2)) + ((f*x)^m*(a + b*log(c*x^n)))/(f*m)]
    @test_int [(f*x)^(m - 1)*(a + b*log(c*x^n))/(d + e*x^m)^1, x, 3, (x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n))*log(1 + (e*x^m)/d))/(e*m) + (b*n*x^(1 - m)*(f*x)^(-1 + m)*PolyLog(2, -((e*x^m)/d)))/(e*m^2)]
    @test_int [(f*x)^(m - 1)*(a + b*log(c*x^n))/(d + e*x^m)^2, x, 3, ((f*x)^m*(a + b*log(c*x^n)))/(d*f*m*(d + e*x^m)) - (b*n*(f*x)^m*log(d + e*x^m))/(x^m*(d*e*f*m^2))]
    @test_int [(f*x)^(m - 1)*(a + b*log(c*x^n))/(d + e*x^m)^3, x, 5, (b*n*x^(1 - m)*(f*x)^(-1 + m))/(2*d*e*m^2*(d + e*x^m)) + (b*n*x^(1 - m)*(f*x)^(-1 + m)*log(x))/(2*d^2*e*m) - (x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(2*e*m*(d + e*x^m)^2) - (b*n*x^(1 - m)*(f*x)^(-1 + m)*log(d + e*x^m))/(2*d^2*e*m^2)]
    @test_int [(f*x)^(m - 1)*(a + b*log(c*x^n))/(d + e*x^m)^4, x, 5, (b*n*x^(1 - m)*(f*x)^(-1 + m))/(6*d*e*m^2*(d + e*x^m)^2) + (b*n*x^(1 - m)*(f*x)^(-1 + m))/(3*d^2*e*m^2*(d + e*x^m)) + (b*n*x^(1 - m)*(f*x)^(-1 + m)*log(x))/(3*d^3*e*m) - (x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(3*e*m*(d + e*x^m)^3) - (b*n*x^(1 - m)*(f*x)^(-1 + m)*log(d + e*x^m))/(3*d^3*e*m^2)]


    @test_int [(f*x)^(m - 1)*(d + e*x^m)^3*(a + b*log(c*x^n))^2, x, 7, (2*b^2*d^3*n^2*x*(f*x)^(-1 + m))/m^3 + (3*b^2*d^2*e*n^2*x^(1 + m)*(f*x)^(-1 + m))/(4*m^3) + (2*b^2*d*e^2*n^2*x^(1 + 2*m)*(f*x)^(-1 + m))/(9*m^3) + (b^2*e^3*n^2*x^(1 + 3*m)*(f*x)^(-1 + m))/(32*m^3) + (b^2*d^4*n^2*x^(1 - m)*(f*x)^(-1 + m)*log(x)^2)/(4*e*m) - (2*b*d^3*n*x*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/m^2 - (3*b*d^2*e*n*x^(1 + m)*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(2*m^2) - (2*b*d*e^2*n*x^(1 + 2*m)*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(3*m^2) - (b*e^3*n*x^(1 + 3*m)*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(8*m^2) - (b*d^4*n*x^(1 - m)*(f*x)^(-1 + m)*log(x)*(a + b*log(c*x^n)))/(2*e*m) + (x^(1 - m)*(f*x)^(-1 + m)*(d + e*x^m)^4*(a + b*log(c*x^n))^2)/(4*e*m)]
    @test_int [(f*x)^(m - 1)*(d + e*x^m)^2*(a + b*log(c*x^n))^2, x, 7, (2*b^2*d^2*n^2*x*(f*x)^(-1 + m))/m^3 + (b^2*d*e*n^2*x^(1 + m)*(f*x)^(-1 + m))/(2*m^3) + (2*b^2*e^2*n^2*x^(1 + 2*m)*(f*x)^(-1 + m))/(27*m^3) + (b^2*d^3*n^2*x^(1 - m)*(f*x)^(-1 + m)*log(x)^2)/(3*e*m) - (2*b*d^2*n*x*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/m^2 - (b*d*e*n*x^(1 + m)*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/m^2 - (2*b*e^2*n*x^(1 + 2*m)*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(9*m^2) - (2*b*d^3*n*x^(1 - m)*(f*x)^(-1 + m)*log(x)*(a + b*log(c*x^n)))/(3*e*m) + (x^(1 - m)*(f*x)^(-1 + m)*(d + e*x^m)^3*(a + b*log(c*x^n))^2)/(3*e*m)]
    @test_int [(f*x)^(m - 1)*(d + e*x^m)^1*(a + b*log(c*x^n))^2, x, 7, (2*b^2*d*n^2*x*(f*x)^(-1 + m))/m^3 + (b^2*e*n^2*x^(1 + m)*(f*x)^(-1 + m))/(4*m^3) + (b^2*d^2*n^2*x^(1 - m)*(f*x)^(-1 + m)*log(x)^2)/(2*e*m) - (2*b*d*n*x*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/m^2 - (b*e*n*x^(1 + m)*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(2*m^2) - (b*d^2*n*x^(1 - m)*(f*x)^(-1 + m)*log(x)*(a + b*log(c*x^n)))/(e*m) + (x^(1 - m)*(f*x)^(-1 + m)*(d + e*x^m)^2*(a + b*log(c*x^n))^2)/(2*e*m)]
    @test_int [(f*x)^(m - 1)*(d + e*x^m)^0*(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*(f*x)^m)/(f*m^3) - (2*b*n*(f*x)^m*(a + b*log(c*x^n)))/(f*m^2) + ((f*x)^m*(a + b*log(c*x^n))^2)/(f*m)]
    @test_int [(f*x)^(m - 1)*(a + b*log(c*x^n))^2/(d + e*x^m)^1, x, 4, (x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n))^2*log(1 + (e*x^m)/d))/(e*m) + (2*b*n*x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n))*PolyLog(2, -((e*x^m)/d)))/(e*m^2) - (2*b^2*n^2*x^(1 - m)*(f*x)^(-1 + m)*PolyLog(3, -((e*x^m)/d)))/(e*m^3)]
    @test_int [(f*x)^(m - 1)*(a + b*log(c*x^n))^2/(d + e*x^m)^2, x, 4, -((x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n))^2)/(e*m*(d + e*x^m))) - (2*b*n*x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n))*log(1 + d/(x^m*e)))/(d*e*m^2) + (2*b^2*n^2*x^(1 - m)*(f*x)^(-1 + m)*PolyLog(2, -(d/(x^m*e))))/(d*e*m^3)]
    @test_int [(f*x)^(m - 1)*(a + b*log(c*x^n))^2/(d + e*x^m)^3, x, 7, -((b*n*x*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(d^2*m^2*(d + e*x^m))) - (x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n))^2)/(2*e*m*(d + e*x^m)^2) - (b*n*x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n))*log(1 + d/(x^m*e)))/(d^2*e*m^2) + (b^2*n^2*x^(1 - m)*(f*x)^(-1 + m)*log(d + e*x^m))/(d^2*e*m^3) + (b^2*n^2*x^(1 - m)*(f*x)^(-1 + m)*PolyLog(2, -(d/(x^m*e))))/(d^2*e*m^3)]
    @test_int [(f*x)^(m - 1)*(a + b*log(c*x^n))^2/(d + e*x^m)^4, x, 12, -((b^2*n^2*x^(1 - m)*(f*x)^(-1 + m))/(3*d^2*e*m^3*(d + e*x^m))) - (b^2*n^2*x^(1 - m)*(f*x)^(-1 + m)*log(x))/(3*d^3*e*m^2) + (b*n*x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(3*d*e*m^2*(d + e*x^m)^2) - (2*b*n*x*(f*x)^(-1 + m)*(a + b*log(c*x^n)))/(3*d^3*m^2*(d + e*x^m)) - (x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n))^2)/(3*e*m*(d + e*x^m)^3) - (2*b*n*x^(1 - m)*(f*x)^(-1 + m)*(a + b*log(c*x^n))*log(1 + d/(x^m*e)))/(3*d^3*e*m^2) + (b^2*n^2*x^(1 - m)*(f*x)^(-1 + m)*log(d + e*x^m))/(d^3*e*m^3) + (2*b^2*n^2*x^(1 - m)*(f*x)^(-1 + m)*PolyLog(2, -(d/(x^m*e))))/(3*d^3*e*m^3)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x^r)^q*(a+b*log(c*x^n))=#


    #= ::Subsubsection::Closed:: =#
    #=q>0=#


    @test_int [x^5*(d + e*x^r)*(a + b*log(c*x^n)), x, 4, -(b*d*n*x^6)/36 - (b*e*n*x^(6 + r))/(6 + r)^2 + ((d*x^6 + (6*e*x^(6 + r))/(6 + r))*(a + b*log(c*x^n)))/6]
    @test_int [x^3*(d + e*x^r)*(a + b*log(c*x^n)), x, 4, -(b*d*n*x^4)/16 - (b*e*n*x^(4 + r))/(4 + r)^2 + ((d*x^4 + (4*e*x^(4 + r))/(4 + r))*(a + b*log(c*x^n)))/4]
    @test_int [x^1*(d + e*x^r)*(a + b*log(c*x^n)), x, 4, -(b*d*n*x^2)/4 - (b*e*n*x^(2 + r))/(2 + r)^2 + ((d*x^2 + (2*e*x^(2 + r))/(2 + r))*(a + b*log(c*x^n)))/2]
    @test_int [((d + e*x^r)*(a + b*log(c*x^n)))/x^1, x, 4, -((b*e*n*x^r)/r^2) + (e*x^r*(a + b*log(c*x^n)))/r + (d*(a + b*log(c*x^n))^2)/(2*b*n)]
    @test_int [((d + e*x^r)*(a + b*log(c*x^n)))/x^3, x, 4, -((b*d*n)/(4*x^2)) - (b*e*n*x^(-2 + r))/(2 - r)^2 - (d*(a + b*log(c*x^n)))/(2*x^2) - (e*x^(-2 + r)*(a + b*log(c*x^n)))/(2 - r)]
    @test_int [((d + e*x^r)*(a + b*log(c*x^n)))/x^5, x, 4, -((b*d*n)/(16*x^4)) - (b*e*n*x^(-4 + r))/(4 - r)^2 - (d*(a + b*log(c*x^n)))/(4*x^4) - (e*x^(-4 + r)*(a + b*log(c*x^n)))/(4 - r)]

    @test_int [x^4*(d + e*x^r)*(a + b*log(c*x^n)), x, 4, -(b*d*n*x^5)/25 - (b*e*n*x^(5 + r))/(5 + r)^2 + ((d*x^5 + (5*e*x^(5 + r))/(5 + r))*(a + b*log(c*x^n)))/5]
    @test_int [x^2*(d + e*x^r)*(a + b*log(c*x^n)), x, 4, -(b*d*n*x^3)/9 - (b*e*n*x^(3 + r))/(3 + r)^2 + ((d*x^3 + (3*e*x^(3 + r))/(3 + r))*(a + b*log(c*x^n)))/3]
    @test_int [x^0*(d + e*x^r)*(a + b*log(c*x^n)), x, 3, (-b)*d*n*x - (b*e*n*x^(1 + r))/(1 + r)^2 + d*x*(a + b*log(c*x^n)) + (e*x^(1 + r)*(a + b*log(c*x^n)))/(1 + r)]
    @test_int [((d + e*x^r)*(a + b*log(c*x^n)))/x^2, x, 4, -((b*d*n)/x) - (b*e*n*x^(-1 + r))/(1 - r)^2 - (d*(a + b*log(c*x^n)))/x - (e*x^(-1 + r)*(a + b*log(c*x^n)))/(1 - r)]
    @test_int [((d + e*x^r)*(a + b*log(c*x^n)))/x^4, x, 4, -((b*d*n)/(9*x^3)) - (b*e*n*x^(-3 + r))/(3 - r)^2 - (d*(a + b*log(c*x^n)))/(3*x^3) - (e*x^(-3 + r)*(a + b*log(c*x^n)))/(3 - r)]
    @test_int [((d + e*x^r)*(a + b*log(c*x^n)))/x^6, x, 4, -((b*d*n)/(25*x^5)) - (b*e*n*x^(-5 + r))/(5 - r)^2 - (d*(a + b*log(c*x^n)))/(5*x^5) - (e*x^(-5 + r)*(a + b*log(c*x^n)))/(5 - r)]


    @test_int [x^5*(d + e*x^r)^2*(a + b*log(c*x^n)), x, 4, -(b*d^2*n*x^6)/36 - (b*e^2*n*x^(2*(3 + r)))/(4*(3 + r)^2) - (2*b*d*e*n*x^(6 + r))/(6 + r)^2 + ((d^2*x^6 + (3*e^2*x^(2*(3 + r)))/(3 + r) + (12*d*e*x^(6 + r))/(6 + r))*(a + b*log(c*x^n)))/6]
    @test_int [x^3*(d + e*x^r)^2*(a + b*log(c*x^n)), x, 4, -(b*d^2*n*x^4)/16 - (b*e^2*n*x^(2*(2 + r)))/(4*(2 + r)^2) - (2*b*d*e*n*x^(4 + r))/(4 + r)^2 + ((d^2*x^4 + (2*e^2*x^(2*(2 + r)))/(2 + r) + (8*d*e*x^(4 + r))/(4 + r))*(a + b*log(c*x^n)))/4]
    @test_int [x^1*(d + e*x^r)^2*(a + b*log(c*x^n)), x, 4, -(b*d^2*n*x^2)/4 - (b*e^2*n*x^(2*(1 + r)))/(4*(1 + r)^2) - (2*b*d*e*n*x^(2 + r))/(2 + r)^2 + ((d^2*x^2 + (e^2*x^(2*(1 + r)))/(1 + r) + (4*d*e*x^(2 + r))/(2 + r))*(a + b*log(c*x^n)))/2]
    @test_int [((d + e*x^r)^2*(a + b*log(c*x^n)))/x^1, x, 5, -((2*b*d*e*n*x^r)/r^2) - (b*e^2*n*x^(2*r))/(4*r^2) - (1/2)*b*d^2*n*log(x)^2 + (2*d*e*x^r*(a + b*log(c*x^n)))/r + (e^2*x^(2*r)*(a + b*log(c*x^n)))/(2*r) + d^2*log(x)*(a + b*log(c*x^n))]
    @test_int [((d + e*x^r)^2*(a + b*log(c*x^n)))/x^3, x, 4, -((b*d^2*n)/(4*x^2)) - (b*e^2*n)/(x^(2*(1 - r))*(4*(1 - r)^2)) - (2*b*d*e*n*x^(-2 + r))/(2 - r)^2 - (d^2*(a + b*log(c*x^n)))/(2*x^2) - (e^2*(a + b*log(c*x^n)))/(x^(2*(1 - r))*(2*(1 - r))) - (2*d*e*x^(-2 + r)*(a + b*log(c*x^n)))/(2 - r)]
    @test_int [((d + e*x^r)^2*(a + b*log(c*x^n)))/x^5, x, 4, -((b*d^2*n)/(16*x^4)) - (b*e^2*n)/(x^(2*(2 - r))*(4*(2 - r)^2)) - (2*b*d*e*n*x^(-4 + r))/(4 - r)^2 - (d^2*(a + b*log(c*x^n)))/(4*x^4) - (e^2*(a + b*log(c*x^n)))/(x^(2*(2 - r))*(2*(2 - r))) - (2*d*e*x^(-4 + r)*(a + b*log(c*x^n)))/(4 - r)]

    @test_int [x^4*(d + e*x^r)^2*(a + b*log(c*x^n)), x, 4, -(b*d^2*n*x^5)/25 - (2*b*d*e*n*x^(5 + r))/(5 + r)^2 - (b*e^2*n*x^(5 + 2*r))/(5 + 2*r)^2 + ((d^2*x^5 + (10*d*e*x^(5 + r))/(5 + r) + (5*e^2*x^(5 + 2*r))/(5 + 2*r))*(a + b*log(c*x^n)))/5]
    @test_int [x^2*(d + e*x^r)^2*(a + b*log(c*x^n)), x, 4, -(b*d^2*n*x^3)/9 - (2*b*d*e*n*x^(3 + r))/(3 + r)^2 - (b*e^2*n*x^(3 + 2*r))/(3 + 2*r)^2 + ((d^2*x^3 + (6*d*e*x^(3 + r))/(3 + r) + (3*e^2*x^(3 + 2*r))/(3 + 2*r))*(a + b*log(c*x^n)))/3]
    @test_int [x^0*(d + e*x^r)^2*(a + b*log(c*x^n)), x, 2, (-b)*d^2*n*x - (2*b*d*e*n*x^(1 + r))/(1 + r)^2 - (b*e^2*n*x^(1 + 2*r))/(1 + 2*r)^2 + d^2*x*(a + b*log(c*x^n)) + (2*d*e*x^(1 + r)*(a + b*log(c*x^n)))/(1 + r) + (e^2*x^(1 + 2*r)*(a + b*log(c*x^n)))/(1 + 2*r)]
    @test_int [((d + e*x^r)^2*(a + b*log(c*x^n)))/x^2, x, 3, -((b*d^2*n)/x) - (2*b*d*e*n*x^(-1 + r))/(1 - r)^2 - (b*e^2*n*x^(-1 + 2*r))/(1 - 2*r)^2 - (d^2*(a + b*log(c*x^n)))/x - (2*d*e*x^(-1 + r)*(a + b*log(c*x^n)))/(1 - r) - (e^2*x^(-1 + 2*r)*(a + b*log(c*x^n)))/(1 - 2*r)]
    @test_int [((d + e*x^r)^2*(a + b*log(c*x^n)))/x^4, x, 4, -((b*d^2*n)/(9*x^3)) - (2*b*d*e*n*x^(-3 + r))/(3 - r)^2 - (b*e^2*n*x^(-3 + 2*r))/(3 - 2*r)^2 - (d^2*(a + b*log(c*x^n)))/(3*x^3) - (2*d*e*x^(-3 + r)*(a + b*log(c*x^n)))/(3 - r) - (e^2*x^(-3 + 2*r)*(a + b*log(c*x^n)))/(3 - 2*r)]
    @test_int [((d + e*x^r)^2*(a + b*log(c*x^n)))/x^6, x, 4, -((b*d^2*n)/(25*x^5)) - (2*b*d*e*n*x^(-5 + r))/(5 - r)^2 - (b*e^2*n*x^(-5 + 2*r))/(5 - 2*r)^2 - (d^2*(a + b*log(c*x^n)))/(5*x^5) - (2*d*e*x^(-5 + r)*(a + b*log(c*x^n)))/(5 - r) - (e^2*x^(-5 + 2*r)*(a + b*log(c*x^n)))/(5 - 2*r)]
    @test_int [((d + e*x^r)^2*(a + b*log(c*x^n)))/x^8, x, 4, -((b*d^2*n)/(49*x^7)) - (2*b*d*e*n*x^(-7 + r))/(7 - r)^2 - (b*e^2*n*x^(-7 + 2*r))/(7 - 2*r)^2 - (d^2*(a + b*log(c*x^n)))/(7*x^7) - (2*d*e*x^(-7 + r)*(a + b*log(c*x^n)))/(7 - r) - (e^2*x^(-7 + 2*r)*(a + b*log(c*x^n)))/(7 - 2*r)]


    @test_int [x^5*(d + e*x^r)^3*(a + b*log(c*x^n)), x, 4, -(b*d^3*n*x^6)/36 - (b*e^3*n*x^(3*(2 + r)))/(9*(2 + r)^2) - (3*b*d*e^2*n*x^(2*(3 + r)))/(4*(3 + r)^2) - (3*b*d^2*e*n*x^(6 + r))/(6 + r)^2 + ((d^3*x^6 + (2*e^3*x^(3*(2 + r)))/(2 + r) + (9*d*e^2*x^(2*(3 + r)))/(3 + r) + (18*d^2*e*x^(6 + r))/(6 + r))*(a + b*log(c*x^n)))/6]
    @test_int [x^3*(d + e*x^r)^3*(a + b*log(c*x^n)), x, 4, -(b*d^3*n*x^4)/16 - (3*b*d*e^2*n*x^(2*(2 + r)))/(4*(2 + r)^2) - (3*b*d^2*e*n*x^(4 + r))/(4 + r)^2 - (b*e^3*n*x^(4 + 3*r))/(4 + 3*r)^2 + ((d^3*x^4 + (6*d*e^2*x^(2*(2 + r)))/(2 + r) + (12*d^2*e*x^(4 + r))/(4 + r) + (4*e^3*x^(4 + 3*r))/(4 + 3*r))*(a + b*log(c*x^n)))/4]
    @test_int [x^1*(d + e*x^r)^3*(a + b*log(c*x^n)), x, 4, -(b*d^3*n*x^2)/4 - (3*b*d*e^2*n*x^(2*(1 + r)))/(4*(1 + r)^2) - (3*b*d^2*e*n*x^(2 + r))/(2 + r)^2 - (b*e^3*n*x^(2 + 3*r))/(2 + 3*r)^2 + ((d^3*x^2 + (3*d*e^2*x^(2*(1 + r)))/(1 + r) + (6*d^2*e*x^(2 + r))/(2 + r) + (2*e^3*x^(2 + 3*r))/(2 + 3*r))*(a + b*log(c*x^n)))/2]
    @test_int [((d + e*x^r)^3*(a + b*log(c*x^n)))/x^1, x, 5, -((3*b*d^2*e*n*x^r)/r^2) - (3*b*d*e^2*n*x^(2*r))/(4*r^2) - (b*e^3*n*x^(3*r))/(9*r^2) - (1/2)*b*d^3*n*log(x)^2 + (3*d^2*e*x^r*(a + b*log(c*x^n)))/r + (3*d*e^2*x^(2*r)*(a + b*log(c*x^n)))/(2*r) + (e^3*x^(3*r)*(a + b*log(c*x^n)))/(3*r) + d^3*log(x)*(a + b*log(c*x^n))]
    @test_int [((d + e*x^r)^3*(a + b*log(c*x^n)))/x^3, x, 4, -((b*d^3*n)/(4*x^2)) - (3*b*d*e^2*n)/(x^(2*(1 - r))*(4*(1 - r)^2)) - (3*b*d^2*e*n*x^(-2 + r))/(2 - r)^2 - (b*e^3*n*x^(-2 + 3*r))/(2 - 3*r)^2 - (d^3*(a + b*log(c*x^n)))/(2*x^2) - (3*d*e^2*(a + b*log(c*x^n)))/(x^(2*(1 - r))*(2*(1 - r))) - (3*d^2*e*x^(-2 + r)*(a + b*log(c*x^n)))/(2 - r) - (e^3*x^(-2 + 3*r)*(a + b*log(c*x^n)))/(2 - 3*r)]
    @test_int [((d + e*x^r)^3*(a + b*log(c*x^n)))/x^5, x, 4, -((b*d^3*n)/(16*x^4)) - (3*b*d*e^2*n)/(x^(2*(2 - r))*(4*(2 - r)^2)) - (3*b*d^2*e*n*x^(-4 + r))/(4 - r)^2 - (b*e^3*n*x^(-4 + 3*r))/(4 - 3*r)^2 - (d^3*(a + b*log(c*x^n)))/(4*x^4) - (3*d*e^2*(a + b*log(c*x^n)))/(x^(2*(2 - r))*(2*(2 - r))) - (3*d^2*e*x^(-4 + r)*(a + b*log(c*x^n)))/(4 - r) - (e^3*x^(-4 + 3*r)*(a + b*log(c*x^n)))/(4 - 3*r)]

    @test_int [x^4*(d + e*x^r)^3*(a + b*log(c*x^n)), x, 4, -(b*d^3*n*x^5)/25 - (3*b*d^2*e*n*x^(5 + r))/(5 + r)^2 - (3*b*d*e^2*n*x^(5 + 2*r))/(5 + 2*r)^2 - (b*e^3*n*x^(5 + 3*r))/(5 + 3*r)^2 + ((d^3*x^5 + (15*d^2*e*x^(5 + r))/(5 + r) + (15*d*e^2*x^(5 + 2*r))/(5 + 2*r) + (5*e^3*x^(5 + 3*r))/(5 + 3*r))*(a + b*log(c*x^n)))/5]
    @test_int [x^2*(d + e*x^r)^3*(a + b*log(c*x^n)), x, 4, -(b*d^3*n*x^3)/9 - (b*e^3*n*x^(3*(1 + r)))/(9*(1 + r)^2) - (3*b*d^2*e*n*x^(3 + r))/(3 + r)^2 - (3*b*d*e^2*n*x^(3 + 2*r))/(3 + 2*r)^2 + ((d^3*x^3 + (e^3*x^(3*(1 + r)))/(1 + r) + (9*d^2*e*x^(3 + r))/(3 + r) + (9*d*e^2*x^(3 + 2*r))/(3 + 2*r))*(a + b*log(c*x^n)))/3]
    @test_int [x^0*(d + e*x^r)^3*(a + b*log(c*x^n)), x, 2, (-b)*d^3*n*x - (3*b*d^2*e*n*x^(1 + r))/(1 + r)^2 - (3*b*d*e^2*n*x^(1 + 2*r))/(1 + 2*r)^2 - (b*e^3*n*x^(1 + 3*r))/(1 + 3*r)^2 + d^3*x*(a + b*log(c*x^n)) + (3*d^2*e*x^(1 + r)*(a + b*log(c*x^n)))/(1 + r) + (3*d*e^2*x^(1 + 2*r)*(a + b*log(c*x^n)))/(1 + 2*r) + (e^3*x^(1 + 3*r)*(a + b*log(c*x^n)))/(1 + 3*r)]
    @test_int [((d + e*x^r)^3*(a + b*log(c*x^n)))/x^2, x, 3, -((b*d^3*n)/x) - (3*b*d^2*e*n*x^(-1 + r))/(1 - r)^2 - (3*b*d*e^2*n*x^(-1 + 2*r))/(1 - 2*r)^2 - (b*e^3*n*x^(-1 + 3*r))/(1 - 3*r)^2 - (d^3*(a + b*log(c*x^n)))/x - (3*d^2*e*x^(-1 + r)*(a + b*log(c*x^n)))/(1 - r) - (3*d*e^2*x^(-1 + 2*r)*(a + b*log(c*x^n)))/(1 - 2*r) - (e^3*x^(-1 + 3*r)*(a + b*log(c*x^n)))/(1 - 3*r)]
    @test_int [((d + e*x^r)^3*(a + b*log(c*x^n)))/x^4, x, 4, -((b*d^3*n)/(9*x^3)) - (b*e^3*n)/(x^(3*(1 - r))*(9*(1 - r)^2)) - (3*b*d^2*e*n*x^(-3 + r))/(3 - r)^2 - (3*b*d*e^2*n*x^(-3 + 2*r))/(3 - 2*r)^2 - (d^3*(a + b*log(c*x^n)))/(3*x^3) - (e^3*(a + b*log(c*x^n)))/(x^(3*(1 - r))*(3*(1 - r))) - (3*d^2*e*x^(-3 + r)*(a + b*log(c*x^n)))/(3 - r) - (3*d*e^2*x^(-3 + 2*r)*(a + b*log(c*x^n)))/(3 - 2*r)]
    @test_int [((d + e*x^r)^3*(a + b*log(c*x^n)))/x^6, x, 4, -((b*d^3*n)/(25*x^5)) - (3*b*d^2*e*n*x^(-5 + r))/(5 - r)^2 - (3*b*d*e^2*n*x^(-5 + 2*r))/(5 - 2*r)^2 - (b*e^3*n*x^(-5 + 3*r))/(5 - 3*r)^2 - (d^3*(a + b*log(c*x^n)))/(5*x^5) - (3*d^2*e*x^(-5 + r)*(a + b*log(c*x^n)))/(5 - r) - (3*d*e^2*x^(-5 + 2*r)*(a + b*log(c*x^n)))/(5 - 2*r) - (e^3*x^(-5 + 3*r)*(a + b*log(c*x^n)))/(5 - 3*r)]
    @test_int [((d + e*x^r)^3*(a + b*log(c*x^n)))/x^8, x, 4, -((b*d^3*n)/(49*x^7)) - (3*b*d^2*e*n*x^(-7 + r))/(7 - r)^2 - (3*b*d*e^2*n*x^(-7 + 2*r))/(7 - 2*r)^2 - (b*e^3*n*x^(-7 + 3*r))/(7 - 3*r)^2 - (d^3*(a + b*log(c*x^n)))/(7*x^7) - (3*d^2*e*x^(-7 + r)*(a + b*log(c*x^n)))/(7 - r) - (3*d*e^2*x^(-7 + 2*r)*(a + b*log(c*x^n)))/(7 - 2*r) - (e^3*x^(-7 + 3*r)*(a + b*log(c*x^n)))/(7 - 3*r)]
    @test_int [((d + e*x^r)^3*(a + b*log(c*x^n)))/x^10, x, 4, -((b*d^3*n)/(81*x^9)) - (b*e^3*n)/(x^(3*(3 - r))*(9*(3 - r)^2)) - (3*b*d^2*e*n*x^(-9 + r))/(9 - r)^2 - (3*b*d*e^2*n*x^(-9 + 2*r))/(9 - 2*r)^2 - (d^3*(a + b*log(c*x^n)))/(9*x^9) - (e^3*(a + b*log(c*x^n)))/(x^(3*(3 - r))*(3*(3 - r))) - (3*d^2*e*x^(-9 + r)*(a + b*log(c*x^n)))/(9 - r) - (3*d*e^2*x^(-9 + 2*r)*(a + b*log(c*x^n)))/(9 - 2*r)]


    #= ::InheritFromParent:: =#
    #==#


    #= ::Subsubsection::Closed:: =#
    #=q<0=#


    @test_int [(x^3*(a + b*log(c*x^n)))/(d + e*x^r), x, 0, Unintegrable((x^3*(a + b*log(c*x^n)))/(d + e*x^r), x)]
    @test_int [(x^1*(a + b*log(c*x^n)))/(d + e*x^r), x, 0, Unintegrable((x*(a + b*log(c*x^n)))/(d + e*x^r), x)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^r)), x, 2, -(((a + b*log(c*x^n))*log(1 + d/(e*x^r)))/(d*r)) + (b*n*PolyLog(2, -(d/(e*x^r))))/(d*r^2)]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x^r)), x, 0, Unintegrable((a + b*log(c*x^n))/(x^3*(d + e*x^r)), x)]

    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x^r), x, 0, Unintegrable((x^2*(a + b*log(c*x^n)))/(d + e*x^r), x)]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x^r), x, 0, Unintegrable((a + b*log(c*x^n))/(d + e*x^r), x)]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x^r)), x, 0, Unintegrable((a + b*log(c*x^n))/(x^2*(d + e*x^r)), x)]


    @test_int [(x^3*(a + b*log(c*x^n)))/(d + e*x^r)^2, x, 0, Unintegrable((x^3*(a + b*log(c*x^n)))/(d + e*x^r)^2, x)]
    @test_int [(x^1*(a + b*log(c*x^n)))/(d + e*x^r)^2, x, 0, Unintegrable((x*(a + b*log(c*x^n)))/(d + e*x^r)^2, x)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^r)^2), x, 5, -((e*x^r*(a + b*log(c*x^n)))/(d^2*r*(d + e*x^r))) - ((a + b*log(c*x^n))*log(1 + d/(x^r*e)))/(d^2*r) + (b*n*log(d + e*x^r))/(d^2*r^2) + (b*n*PolyLog(2, -(d/(x^r*e))))/(d^2*r^2)]
    @test_int [(a + b*log(c*x^n))/(x^3*(d + e*x^r)^2), x, 0, Unintegrable((a + b*log(c*x^n))/(x^3*(d + e*x^r)^2), x)]

    @test_int [x^2*(a + b*log(c*x^n))/(d + e*x^r)^2, x, 0, Unintegrable((x^2*(a + b*log(c*x^n)))/(d + e*x^r)^2, x)]
    @test_int [x^0*(a + b*log(c*x^n))/(d + e*x^r)^2, x, 0, Unintegrable((a + b*log(c*x^n))/(d + e*x^r)^2, x)]
    @test_int [(a + b*log(c*x^n))/(x^2*(d + e*x^r)^2), x, 0, Unintegrable((a + b*log(c*x^n))/(x^2*(d + e*x^r)^2), x)]


    @test_int [(a + b*log(c*x^n))/(x*(c - x^(-n))), x, 4, (a*log(1 - c*x^n))/(c*n) - (b*PolyLog(2, 1 - c*x^n))/(c*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*x^r)^q*(a+b*log(c*x^n))^p/x=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(d + e*x^r)^3*(a + b*log(c*x^n))/x, x, 5, -((3*b*d^2*e*n*x^r)/r^2) - (3*b*d*e^2*n*x^(2*r))/(4*r^2) - (b*e^3*n*x^(3*r))/(9*r^2) - (1/2)*b*d^3*n*log(x)^2 + (3*d^2*e*x^r*(a + b*log(c*x^n)))/r + (3*d*e^2*x^(2*r)*(a + b*log(c*x^n)))/(2*r) + (e^3*x^(3*r)*(a + b*log(c*x^n)))/(3*r) + d^3*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x^r)^2*(a + b*log(c*x^n))/x, x, 5, -((2*b*d*e*n*x^r)/r^2) - (b*e^2*n*x^(2*r))/(4*r^2) - (1/2)*b*d^2*n*log(x)^2 + (2*d*e*x^r*(a + b*log(c*x^n)))/r + (e^2*x^(2*r)*(a + b*log(c*x^n)))/(2*r) + d^2*log(x)*(a + b*log(c*x^n))]
    @test_int [(d + e*x^r)^1*(a + b*log(c*x^n))/x, x, 4, -((b*e*n*x^r)/r^2) + (e*x^r*(a + b*log(c*x^n)))/r + (d*(a + b*log(c*x^n))^2)/(2*b*n)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^r)^1), x, 2, -(((a + b*log(c*x^n))*log(1 + d/(x^r*e)))/(d*r)) + (b*n*PolyLog(2, -(d/(x^r*e))))/(d*r^2)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^r)^2), x, 5, -((e*x^r*(a + b*log(c*x^n)))/(d^2*r*(d + e*x^r))) - ((a + b*log(c*x^n))*log(1 + d/(x^r*e)))/(d^2*r) + (b*n*log(d + e*x^r))/(d^2*r^2) + (b*n*PolyLog(2, -(d/(x^r*e))))/(d^2*r^2)]
    @test_int [(a + b*log(c*x^n))/(x^1*(d + e*x^r)^3), x, 10, -((b*n)/(2*d^2*r^2*(d + e*x^r))) - (b*n*log(x))/(2*d^3*r) + (a + b*log(c*x^n))/(2*d*r*(d + e*x^r)^2) - (e*x^r*(a + b*log(c*x^n)))/(d^3*r*(d + e*x^r)) - ((a + b*log(c*x^n))*log(1 + d/(x^r*e)))/(d^3*r) + (3*b*n*log(d + e*x^r))/(2*d^3*r^2) + (b*n*PolyLog(2, -(d/(x^r*e))))/(d^3*r^2)]


    @test_int [(d + e*x^r)^3*(a + b*log(c*x^n))^2/x, x, 10, (6*b^2*d^2*e*n^2*x^r)/r^3 + (3*b^2*d*e^2*n^2*x^(2*r))/(4*r^3) + (2*b^2*e^3*n^2*x^(3*r))/(27*r^3) - (6*b*d^2*e*n*x^r*(a + b*log(c*x^n)))/r^2 - (3*b*d*e^2*n*x^(2*r)*(a + b*log(c*x^n)))/(2*r^2) - (2*b*e^3*n*x^(3*r)*(a + b*log(c*x^n)))/(9*r^2) + (3*d^2*e*x^r*(a + b*log(c*x^n))^2)/r + (3*d*e^2*x^(2*r)*(a + b*log(c*x^n))^2)/(2*r) + (e^3*x^(3*r)*(a + b*log(c*x^n))^2)/(3*r) + (d^3*(a + b*log(c*x^n))^3)/(3*b*n)]
    @test_int [(d + e*x^r)^2*(a + b*log(c*x^n))^2/x, x, 8, (4*b^2*d*e*n^2*x^r)/r^3 + (b^2*e^2*n^2*x^(2*r))/(4*r^3) - (4*b*d*e*n*x^r*(a + b*log(c*x^n)))/r^2 - (b*e^2*n*x^(2*r)*(a + b*log(c*x^n)))/(2*r^2) + (2*d*e*x^r*(a + b*log(c*x^n))^2)/r + (e^2*x^(2*r)*(a + b*log(c*x^n))^2)/(2*r) + (d^2*(a + b*log(c*x^n))^3)/(3*b*n)]
    @test_int [(d + e*x^r)^1*(a + b*log(c*x^n))^2/x, x, 6, (2*b^2*e*n^2*x^r)/r^3 - (2*b*e*n*x^r*(a + b*log(c*x^n)))/r^2 + (e*x^r*(a + b*log(c*x^n))^2)/r + (d*(a + b*log(c*x^n))^3)/(3*b*n)]
    @test_int [(a + b*log(c*x^n))^2/(x^1*(d + e*x^r)^1), x, 3, -(((a + b*log(c*x^n))^2*log(1 + d/(x^r*e)))/(d*r)) + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(x^r*e))))/(d*r^2) + (2*b^2*n^2*PolyLog(3, -(d/(x^r*e))))/(d*r^3)]
    @test_int [(a + b*log(c*x^n))^2/(x^1*(d + e*x^r)^2), x, 7, (a + b*log(c*x^n))^2/(d*r*(d + e*x^r)) + (2*b*n*(a + b*log(c*x^n))*log(1 + d/(x^r*e)))/(d^2*r^2) - ((a + b*log(c*x^n))^2*log(1 + d/(x^r*e)))/(d^2*r) - (2*b^2*n^2*PolyLog(2, -(d/(x^r*e))))/(d^2*r^3) + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(x^r*e))))/(d^2*r^2) + (2*b^2*n^2*PolyLog(3, -(d/(x^r*e))))/(d^2*r^3)]
    @test_int [(a + b*log(c*x^n))^2/(x^1*(d + e*x^r)^3), x, 14, (b*e*n*x^r*(a + b*log(c*x^n)))/(d^3*r^2*(d + e*x^r)) + (a + b*log(c*x^n))^2/(2*d*r*(d + e*x^r)^2) + (a + b*log(c*x^n))^2/(d^2*r*(d + e*x^r)) + (3*b*n*(a + b*log(c*x^n))*log(1 + d/(x^r*e)))/(d^3*r^2) - ((a + b*log(c*x^n))^2*log(1 + d/(x^r*e)))/(d^3*r) - (b^2*n^2*log(d + e*x^r))/(d^3*r^3) - (3*b^2*n^2*PolyLog(2, -(d/(x^r*e))))/(d^3*r^3) + (2*b*n*(a + b*log(c*x^n))*PolyLog(2, -(d/(x^r*e))))/(d^3*r^2) + (2*b^2*n^2*PolyLog(3, -(d/(x^r*e))))/(d^3*r^3)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x^r)^(q/2)*(a+b*log(c*x^n))=#


    @test_int [(d + e*x^r)^(5/2)*(a + b*log(c*x^n))/x, x, 23, -((92*b*d^2*n*sqrt(d + e*x^r))/(15*r^2)) - (32*b*d*n*(d + e*x^r)^(3/2))/(45*r^2) - (4*b*n*(d + e*x^r)^(5/2))/(25*r^2) + (92*b*d^(5/2)*n*atanh(sqrt(d + e*x^r)/sqrt(d)))/(15*r^2) + (2*b*d^(5/2)*n*atanh(sqrt(d + e*x^r)/sqrt(d))^2)/r^2 + (2/15)*((15*d^2*sqrt(d + e*x^r))/r + (5*d*(d + e*x^r)^(3/2))/r + (3*(d + e*x^r)^(5/2))/r - (15*d^(5/2)*atanh(sqrt(d + e*x^r)/sqrt(d)))/r)*(a + b*log(c*x^n)) - (4*b*d^(5/2)*n*atanh(sqrt(d + e*x^r)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/r^2 - (2*b*d^(5/2)*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/r^2]
    @test_int [(d + e*x^r)^(3/2)*(a + b*log(c*x^n))/x, x, 17, -((16*b*d*n*sqrt(d + e*x^r))/(3*r^2)) - (4*b*n*(d + e*x^r)^(3/2))/(9*r^2) + (16*b*d^(3/2)*n*atanh(sqrt(d + e*x^r)/sqrt(d)))/(3*r^2) + (2*b*d^(3/2)*n*atanh(sqrt(d + e*x^r)/sqrt(d))^2)/r^2 + (2/3)*((3*d*sqrt(d + e*x^r))/r + (d + e*x^r)^(3/2)/r - (3*d^(3/2)*atanh(sqrt(d + e*x^r)/sqrt(d)))/r)*(a + b*log(c*x^n)) - (4*b*d^(3/2)*n*atanh(sqrt(d + e*x^r)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/r^2 - (2*b*d^(3/2)*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/r^2]
    @test_int [(d + e*x^r)^(1/2)*(a + b*log(c*x^n))/x, x, 12, -((4*b*n*sqrt(d + e*x^r))/r^2) + (4*b*sqrt(d)*n*atanh(sqrt(d + e*x^r)/sqrt(d)))/r^2 + (2*b*sqrt(d)*n*atanh(sqrt(d + e*x^r)/sqrt(d))^2)/r^2 + 2*(sqrt(d + e*x^r)/r - (sqrt(d)*atanh(sqrt(d + e*x^r)/sqrt(d)))/r)*(a + b*log(c*x^n)) - (4*b*sqrt(d)*n*atanh(sqrt(d + e*x^r)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/r^2 - (2*b*sqrt(d)*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/r^2]
    @test_int [(a + b*log(c*x^n))/(x*(d + e*x^r)^(1/2)), x, 8, (2*b*n*atanh(sqrt(d + e*x^r)/sqrt(d))^2)/(sqrt(d)*r^2) - (2*atanh(sqrt(d + e*x^r)/sqrt(d))*(a + b*log(c*x^n)))/(sqrt(d)*r) - (4*b*n*atanh(sqrt(d + e*x^r)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/(sqrt(d)*r^2) - (2*b*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/(sqrt(d)*r^2)]
    @test_int [(a + b*log(c*x^n))/(x*(d + e*x^r)^(3/2)), x, 11, (4*b*n*atanh(sqrt(d + e*x^r)/sqrt(d)))/(d^(3/2)*r^2) + (2*b*n*atanh(sqrt(d + e*x^r)/sqrt(d))^2)/(d^(3/2)*r^2) + 2*(1/(d*r*sqrt(d + e*x^r)) - atanh(sqrt(d + e*x^r)/sqrt(d))/(d^(3/2)*r))*(a + b*log(c*x^n)) - (4*b*n*atanh(sqrt(d + e*x^r)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/(d^(3/2)*r^2) - (2*b*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/(d^(3/2)*r^2)]
    @test_int [(a + b*log(c*x^n))/(x*(d + e*x^r)^(5/2)), x, 15, -((4*b*n)/(3*d^2*r^2*sqrt(d + e*x^r))) + (16*b*n*atanh(sqrt(d + e*x^r)/sqrt(d)))/(3*d^(5/2)*r^2) + (2*b*n*atanh(sqrt(d + e*x^r)/sqrt(d))^2)/(d^(5/2)*r^2) + (2/3)*(1/(d*r*(d + e*x^r)^(3/2)) + 3/(d^2*r*sqrt(d + e*x^r)) - (3*atanh(sqrt(d + e*x^r)/sqrt(d)))/(d^(5/2)*r))*(a + b*log(c*x^n)) - (4*b*n*atanh(sqrt(d + e*x^r)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/(d^(5/2)*r^2) - (2*b*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/(d^(5/2)*r^2)]
    @test_int [(a + b*log(c*x^n))/(x*(d + e*x^r)^(7/2)), x, 20, -((4*b*n)/(15*d^2*r^2*(d + e*x^r)^(3/2))) - (32*b*n)/(15*d^3*r^2*sqrt(d + e*x^r)) + (92*b*n*atanh(sqrt(d + e*x^r)/sqrt(d)))/(15*d^(7/2)*r^2) + (2*b*n*atanh(sqrt(d + e*x^r)/sqrt(d))^2)/(d^(7/2)*r^2) + (2/15)*(3/(d*r*(d + e*x^r)^(5/2)) + 5/(d^2*r*(d + e*x^r)^(3/2)) + 15/(d^3*r*sqrt(d + e*x^r)) - (15*atanh(sqrt(d + e*x^r)/sqrt(d)))/(d^(7/2)*r))*(a + b*log(c*x^n)) - (4*b*n*atanh(sqrt(d + e*x^r)/sqrt(d))*log((2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/(d^(7/2)*r^2) - (2*b*n*PolyLog(2, 1 - (2*sqrt(d))/(sqrt(d) - sqrt(d + e*x^r))))/(d^(7/2)*r^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^r)^q*(a+b*log(c*x^n))*when*m*and*r*symbolic=#


    @test_int [(f*x)^m*(d + e*x^r)^3*(a + b*log(c*x^n)), x, 9, -((3*b*d^2*e*n*x^(1 + r)*(f*x)^m)/(1 + m + r)^2) - (3*b*d*e^2*n*x^(1 + 2*r)*(f*x)^m)/(1 + m + 2*r)^2 - (b*e^3*n*x^(1 + 3*r)*(f*x)^m)/(1 + m + 3*r)^2 - (b*d^3*n*(f*x)^(1 + m))/(f*(1 + m)^2) + (3*d^2*e*x^(1 + r)*(f*x)^m*(a + b*log(c*x^n)))/(1 + m + r) + (3*d*e^2*x^(1 + 2*r)*(f*x)^m*(a + b*log(c*x^n)))/(1 + m + 2*r) + (e^3*x^(1 + 3*r)*(f*x)^m*(a + b*log(c*x^n)))/(1 + m + 3*r) + (d^3*(f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m))]
    @test_int [(f*x)^m*(d + e*x^r)^2*(a + b*log(c*x^n)), x, 7, -((2*b*d*e*n*x^(1 + r)*(f*x)^m)/(1 + m + r)^2) - (b*e^2*n*x^(1 + 2*r)*(f*x)^m)/(1 + m + 2*r)^2 - (b*d^2*n*(f*x)^(1 + m))/(f*(1 + m)^2) + (2*d*e*x^(1 + r)*(f*x)^m*(a + b*log(c*x^n)))/(1 + m + r) + (e^2*x^(1 + 2*r)*(f*x)^m*(a + b*log(c*x^n)))/(1 + m + 2*r) + (d^2*(f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m))]
    @test_int [(f*x)^m*(d + e*x^r)^1*(a + b*log(c*x^n)), x, 6, -((b*e*n*x^(1 + r)*(f*x)^m)/(1 + m + r)^2) - (b*d*n*(f*x)^(1 + m))/(f*(1 + m)^2) + (e*x^(1 + r)*(f*x)^m*(a + b*log(c*x^n)))/(1 + m + r) + (d*(f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m))]
    @test_int [(f*x)^m*(d + e*x^r)^0*(a + b*log(c*x^n)), x, 1, -((b*n*(f*x)^(1 + m))/(f*(1 + m)^2)) + ((f*x)^(1 + m)*(a + b*log(c*x^n)))/(f*(1 + m))]
    @test_int [(f*x)^m*(a + b*log(c*x^n))/(d + e*x^r)^1, x, 0, Unintegrable(((f*x)^m*(a + b*log(c*x^n)))/(d + e*x^r), x)]
    @test_int [(f*x)^m*(a + b*log(c*x^n))/(d + e*x^r)^2, x, 0, Unintegrable(((f*x)^m*(a + b*log(c*x^n)))/(d + e*x^r)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^r)^q*(a+b*log(c*x^n))^p*when*m, p*and*r*symbolic=#


    @test_int [(d + e/x^(1/(q + 1)))^q*(a + b*log(c*x^n)), x, 3, ((-b)*n*x*(d + e/x^(1/(1 + q)))^q*Hypergeometric2F1(-1 - q, -1 - q, -q, -(e/(x^(1/(1 + q))*d))))/(1 + e/(x^(1/(1 + q))*d))^q + (x*(d + e/x^(1/(1 + q)))^(1 + q)*(a + b*log(c*x^n)))/d]


    @test_int [(d + e*x^r)^q*(a + b*log(c*x^n))/(f*x)^(r*(q + 1) + 1), x, 3, -((b*n*(d + e*x^r)^q*Hypergeometric2F1(-1 - q, -1 - q, -q, -((e*x^r)/d)))/((f*x)^((1 + q)*r)*(1 + (e*x^r)/d)^q*(f*(1 + q)^2*r^2))) - ((d + e*x^r)^(1 + q)*(a + b*log(c*x^n)))/((f*x)^((1 + q)*r)*(d*f*(1 + q)*r))]


    @test_int [(f*x)^m*(d + e*x^r)^3*(a + b*log(c*x^n))^p, x, 13, (d^3*(f*x)^(1 + m)*Gamma(1 + p, -(((1 + m)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(-(((1 + m)*(a + b*log(c*x^n)))/(b*n)))^p*(f*(1 + m))) + (3*d^2*e*x^(1 + r)*(f*x)^m*Gamma(1 + p, -(((1 + m + r)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m + r))/(b*n))*(c*x^n)^((1 + m + r)/n)*(-(((1 + m + r)*(a + b*log(c*x^n)))/(b*n)))^p*(1 + m + r)) + (3*d*e^2*x^(1 + 2*r)*(f*x)^m*Gamma(1 + p, -(((1 + m + 2*r)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m + 2*r))/(b*n))*(c*x^n)^((1 + m + 2*r)/n)*(-(((1 + m + 2*r)*(a + b*log(c*x^n)))/(b*n)))^p*(1 + m + 2*r)) + (e^3*x^(1 + 3*r)*(f*x)^m*Gamma(1 + p, -(((1 + m + 3*r)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m + 3*r))/(b*n))*(c*x^n)^((1 + m + 3*r)/n)*(-(((1 + m + 3*r)*(a + b*log(c*x^n)))/(b*n)))^p*(1 + m + 3*r))]
    @test_int [(f*x)^m*(d + e*x^r)^2*(a + b*log(c*x^n))^p, x, 10, (d^2*(f*x)^(1 + m)*Gamma(1 + p, -(((1 + m)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(-(((1 + m)*(a + b*log(c*x^n)))/(b*n)))^p*(f*(1 + m))) + (2*d*e*x^(1 + r)*(f*x)^m*Gamma(1 + p, -(((1 + m + r)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m + r))/(b*n))*(c*x^n)^((1 + m + r)/n)*(-(((1 + m + r)*(a + b*log(c*x^n)))/(b*n)))^p*(1 + m + r)) + (e^2*x^(1 + 2*r)*(f*x)^m*Gamma(1 + p, -(((1 + m + 2*r)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m + 2*r))/(b*n))*(c*x^n)^((1 + m + 2*r)/n)*(-(((1 + m + 2*r)*(a + b*log(c*x^n)))/(b*n)))^p*(1 + m + 2*r))]
    @test_int [(f*x)^m*(d + e*x^r)^1*(a + b*log(c*x^n))^p, x, 7, (d*(f*x)^(1 + m)*Gamma(1 + p, -(((1 + m)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(-(((1 + m)*(a + b*log(c*x^n)))/(b*n)))^p*(f*(1 + m))) + (e*x^(1 + r)*(f*x)^m*Gamma(1 + p, -(((1 + m + r)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m + r))/(b*n))*(c*x^n)^((1 + m + r)/n)*(-(((1 + m + r)*(a + b*log(c*x^n)))/(b*n)))^p*(1 + m + r))]
    @test_int [(f*x)^m*(d + e*x^r)^0*(a + b*log(c*x^n))^p, x, 2, ((f*x)^(1 + m)*Gamma(1 + p, -(((1 + m)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(-(((1 + m)*(a + b*log(c*x^n)))/(b*n)))^p*(f*(1 + m)))]
    @test_int [(f*x)^m*(a + b*log(c*x^n))^p/(d + e*x^r)^1, x, 0, Unintegrable(((f*x)^m*(a + b*log(c*x^n))^p)/(d + e*x^r), x)]
    @test_int [(f*x)^m*(a + b*log(c*x^n))^p/(d + e*x^r)^2, x, 0, Unintegrable(((f*x)^m*(a + b*log(c*x^n))^p)/(d + e*x^r)^2, x)]


    #= ::Title:: =#
    #=Integrands*of*the*form*(f+g*x)^m*(d+e*x)^q*(a+b*log(c*x^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f+g*x)^m*(d+e*x)^q*(a+b*log(c*x^n))^p=#


    @test_int [(f + g*x)*(a + b*log(c*x^n))^1/(d + e*x)^3, x, 3, (b*(e*f - d*g)*n)/(2*d*e^2*(d + e*x)) + (b*f^2*n*log(x))/(2*d^2*(e*f - d*g)) - ((f + g*x)^2*(a + b*log(c*x^n)))/(2*(e*f - d*g)*(d + e*x)^2) - (b*(e*f + d*g)*n*log(d + e*x))/(2*d^2*e^2)]
    @test_int [(f + g*x)*(a + b*log(c*x^n))^2/(d + e*x)^3, x, 8, -((b*(e*f - d*g)*n*x*(a + b*log(c*x^n)))/(d^2*e*(d + e*x))) + (f^2*(a + b*log(c*x^n))^2)/(2*d^2*(e*f - d*g)) - ((f + g*x)^2*(a + b*log(c*x^n))^2)/(2*(e*f - d*g)*(d + e*x)^2) + (b^2*(e*f - d*g)*n^2*log(d + e*x))/(d^2*e^2) - (b*(e*f + d*g)*n*(a + b*log(c*x^n))*log(1 + (e*x)/d))/(d^2*e^2) - (b^2*(e*f + d*g)*n^2*PolyLog(2, -((e*x)/d)))/(d^2*e^2)]
    @test_int [(f + g*x)*(a + b*log(c*x^n))^3/(d + e*x)^3, x, 11, -((3*b*(e*f - d*g)*n*x*(a + b*log(c*x^n))^2)/(2*d^2*e*(d + e*x))) + (f^2*(a + b*log(c*x^n))^3)/(2*d^2*(e*f - d*g)) - ((f + g*x)^2*(a + b*log(c*x^n))^3)/(2*(e*f - d*g)*(d + e*x)^2) + (3*b^2*(e*f - d*g)*n^2*(a + b*log(c*x^n))*log(1 + (e*x)/d))/(d^2*e^2) - (3*b*(e*f + d*g)*n*(a + b*log(c*x^n))^2*log(1 + (e*x)/d))/(2*d^2*e^2) + (3*b^3*(e*f - d*g)*n^3*PolyLog(2, -((e*x)/d)))/(d^2*e^2) - (3*b^2*(e*f + d*g)*n^2*(a + b*log(c*x^n))*PolyLog(2, -((e*x)/d)))/(d^2*e^2) + (3*b^3*(e*f + d*g)*n^3*PolyLog(3, -((e*x)/d)))/(d^2*e^2)]
    end
