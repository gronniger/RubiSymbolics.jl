@testset "5.3.7 Inverse tangent functions" begin
    (a, b, c, d, e, f, m, n, x, ) = @variables a b c d e f m n x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*involving*inverse*tangents*of*algebraic*functions=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*atan(a+b*x^n)=#


    @test_int [x^3*atan(a + b*x^4), x, 4, ((a + b*x^4)*atan(a + b*x^4))/(4*b) - log(1 + (a + b*x^4)^2)/(8*b)]


    @test_int [x^(n-1)*atan(a + b*x^n), x, 4, ((a + b*x^n)*atan(a + b*x^n))/(b*n) - log(1 + (a + b*x^n)^2)/(2*b*n)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(a+b*atan(c*x/sqrt(d+e*x^2)))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*atan(c*x/sqrt(d+e*x^2)))*when*e=c^2=#


    @test_int [x^5*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 6, (5*d^2*x*sqrt(d + e*x^2))/(96*(-e)^(5/2)) + (5*d*x^3*sqrt(d + e*x^2))/(144*(-e)^(3/2)) + (x^5*sqrt(d + e*x^2))/(36*sqrt(-e)) + (x^6*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/6 + (5*d^3*sqrt(-e)*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(96*e^(7/2))]
    @test_int [x^3*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 5, (3*d*x*sqrt(d + e*x^2))/(32*(-e)^(3/2)) + (x^3*sqrt(d + e*x^2))/(16*sqrt(-e)) + (x^4*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/4 - (3*d^2*sqrt(-e)*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(32*e^(5/2))]
    @test_int [x^1*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 4, (x*sqrt(d + e*x^2))/(4*sqrt(-e)) + (x^2*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/2 + (d*sqrt(-e)*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(4*e^(3/2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^1, x, 8, -((sqrt(d)*sqrt(-e)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(2*sqrt(e)*sqrt(d + e*x^2))) + (sqrt(d)*sqrt(-e)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(sqrt(e)*sqrt(d + e*x^2)) - (sqrt(d)*sqrt(-e)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(x))/(sqrt(e)*sqrt(d + e*x^2)) + atan((sqrt(-e)*x)/sqrt(d + e*x^2))*log(x) + (sqrt(d)*sqrt(-e)*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*sqrt(e)*sqrt(d + e*x^2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^3, x, 2, -(sqrt(-e)*sqrt(d + e*x^2))/(2*d*x) - atan((sqrt(-e)*x)/sqrt(d + e*x^2))/(2*x^2)]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^5, x, 3, -(sqrt(-e)*sqrt(d + e*x^2))/(12*d*x^3) - ((-e)^(3/2)*sqrt(d + e*x^2))/(6*d^2*x) - atan((sqrt(-e)*x)/sqrt(d + e*x^2))/(4*x^4)]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^7, x, 4, -(sqrt(-e)*sqrt(d + e*x^2))/(30*d*x^5) - (2*(-e)^(3/2)*sqrt(d + e*x^2))/(45*d^2*x^3) - (4*(-e)^(5/2)*sqrt(d + e*x^2))/(45*d^3*x) - atan((sqrt(-e)*x)/sqrt(d + e*x^2))/(6*x^6)]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^9, x, 5, -(sqrt(-e)*sqrt(d + e*x^2))/(56*d*x^7) - (3*(-e)^(3/2)*sqrt(d + e*x^2))/(140*d^2*x^5) - ((-e)^(5/2)*sqrt(d + e*x^2))/(35*d^3*x^3) - (2*(-e)^(7/2)*sqrt(d + e*x^2))/(35*d^4*x) - atan((sqrt(-e)*x)/sqrt(d + e*x^2))/(8*x^8)]

    @test_int [x^6*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 4, (d^3*sqrt(d + e*x^2))/(7*(-e)^(7/2)) - (d^2*(d + e*x^2)^(3/2))/(7*(-e)^(7/2)) + (3*d*(d + e*x^2)^(5/2))/(35*(-e)^(7/2)) - (d + e*x^2)^(7/2)/(49*(-e)^(7/2)) + (x^7*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/7]
    @test_int [x^4*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 4, (d^2*sqrt(d + e*x^2))/(5*(-e)^(5/2)) - (2*d*(d + e*x^2)^(3/2))/(15*(-e)^(5/2)) + (d + e*x^2)^(5/2)/(25*(-e)^(5/2)) + (x^5*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/5]
    @test_int [x^2*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 4, (d*sqrt(d + e*x^2))/(3*(-e)^(3/2)) - (d + e*x^2)^(3/2)/(9*(-e)^(3/2)) + (x^3*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/3]
    @test_int [x^0*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 2, sqrt(d + e*x^2)/sqrt(-e) + x*atan((sqrt(-e)*x)/sqrt(d + e*x^2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^2, x, 4, -(atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x) - (sqrt(-e)*atanh(sqrt(d + e*x^2)/sqrt(d)))/sqrt(d)]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^4, x, 5, -(sqrt(-e)*sqrt(d + e*x^2))/(6*d*x^2) - atan((sqrt(-e)*x)/sqrt(d + e*x^2))/(3*x^3) - ((-e)^(3/2)*atanh(sqrt(d + e*x^2)/sqrt(d)))/(6*d^(3/2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^6, x, 6, -(sqrt(-e)*sqrt(d + e*x^2))/(20*d*x^4) - (3*(-e)^(3/2)*sqrt(d + e*x^2))/(40*d^2*x^2) - atan((sqrt(-e)*x)/sqrt(d + e*x^2))/(5*x^5) - (3*(-e)^(5/2)*atanh(sqrt(d + e*x^2)/sqrt(d)))/(40*d^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f*x)^(m/2)*(a+b*atan(c*x/sqrt(d+e*x^2)))*when*e=c^2=#


    @test_int [x^(9/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 6, (60*d^2*sqrt(x)*sqrt(d + e*x^2))/(847*(-e)^(5/2)) + (36*d*x^(5/2)*sqrt(d + e*x^2))/(847*(-e)^(3/2)) + (4*x^(9/2)*sqrt(d + e*x^2))/(121*sqrt(-e)) + (2*x^(11/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/11 + (30*d^(11/4)*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(847*e^(13/4)*sqrt(d + e*x^2))]
    @test_int [x^(5/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 5, (20*d*sqrt(x)*sqrt(d + e*x^2))/(147*(-e)^(3/2)) + (4*x^(5/2)*sqrt(d + e*x^2))/(49*sqrt(-e)) + (2*x^(7/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/7 - (10*d^(7/4)*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(147*e^(9/4)*sqrt(d + e*x^2))]
    @test_int [x^(1/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 4, (4*sqrt(x)*sqrt(d + e*x^2))/(9*sqrt(-e)) + (2*x^(3/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/3 + (2*d^(3/4)*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(9*e^(5/4)*sqrt(d + e*x^2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^(3/2), x, 3, (-2*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/sqrt(x) + (2*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(d^(1/4)*e^(1/4)*sqrt(d + e*x^2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^(7/2), x, 4, (-4*sqrt(-e)*sqrt(d + e*x^2))/(15*d*x^(3/2)) - (2*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/(5*x^(5/2)) - (2*sqrt(-e)*e^(3/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(15*d^(5/4)*sqrt(d + e*x^2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^(11/2), x, 5, (-4*sqrt(-e)*sqrt(d + e*x^2))/(63*d*x^(7/2)) - (20*(-e)^(3/2)*sqrt(d + e*x^2))/(189*d^2*x^(3/2)) - (2*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/(9*x^(9/2)) + (10*sqrt(-e)*e^(7/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(189*d^(9/4)*sqrt(d + e*x^2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^(15/2), x, 6, (-4*sqrt(-e)*sqrt(d + e*x^2))/(143*d*x^(11/2)) - (36*(-e)^(3/2)*sqrt(d + e*x^2))/(1001*d^2*x^(7/2)) - (60*(-e)^(5/2)*sqrt(d + e*x^2))/(1001*d^3*x^(3/2)) - (2*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/(13*x^(13/2)) - (30*sqrt(-e)*e^(11/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(1001*d^(13/4)*sqrt(d + e*x^2))]

    @test_int [x^(7/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 7, (28*d*x^(3/2)*sqrt(d + e*x^2))/(405*(-e)^(3/2)) + (4*x^(7/2)*sqrt(d + e*x^2))/(81*sqrt(-e)) - (28*d^2*sqrt(-e)*sqrt(x)*sqrt(d + e*x^2))/(135*e^(5/2)*(sqrt(d) + sqrt(e)*x)) + (2*x^(9/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/9 + (28*d^(9/4)*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.E(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(135*e^(11/4)*sqrt(d + e*x^2)) - (14*d^(9/4)*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(135*e^(11/4)*sqrt(d + e*x^2))]
    @test_int [x^(3/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)), x, 6, (4*x^(3/2)*sqrt(d + e*x^2))/(25*sqrt(-e)) + (12*d*sqrt(-e)*sqrt(x)*sqrt(d + e*x^2))/(25*e^(3/2)*(sqrt(d) + sqrt(e)*x)) + (2*x^(5/2)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/5 - (12*d^(5/4)*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.E(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(25*e^(7/4)*sqrt(d + e*x^2)) + (6*d^(5/4)*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(25*e^(7/4)*sqrt(d + e*x^2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^(1/2), x, 5, (-4*sqrt(-e)*sqrt(x)*sqrt(d + e*x^2))/(sqrt(e)*(sqrt(d) + sqrt(e)*x)) + 2*sqrt(x)*atan((sqrt(-e)*x)/sqrt(d + e*x^2)) + (4*d^(1/4)*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.E(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(e^(3/4)*sqrt(d + e*x^2)) - (2*d^(1/4)*sqrt(-e)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(e^(3/4)*sqrt(d + e*x^2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^(5/2), x, 6, (-4*sqrt(-e)*sqrt(d + e*x^2))/(3*d*sqrt(x)) + (4*sqrt(-e^2)*sqrt(x)*sqrt(d + e*x^2))/(3*d*(sqrt(d) + sqrt(e)*x)) - (2*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/(3*x^(3/2)) - (4*sqrt(-e)*e^(1/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.E(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(3*d^(3/4)*sqrt(d + e*x^2)) + (2*sqrt(-e)*e^(1/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(3*d^(3/4)*sqrt(d + e*x^2))]
    @test_int [atan((sqrt(-e)*x)/sqrt(d + e*x^2))/x^(9/2), x, 7, (-4*sqrt(-e)*sqrt(d + e*x^2))/(35*d*x^(5/2)) - (12*(-e)^(3/2)*sqrt(d + e*x^2))/(35*d^2*sqrt(x)) - (12*sqrt(-e)*e^(3/2)*sqrt(x)*sqrt(d + e*x^2))/(35*d^2*(sqrt(d) + sqrt(e)*x)) - (2*atan((sqrt(-e)*x)/sqrt(d + e*x^2)))/(7*x^(7/2)) + (12*sqrt(-e)*e^(5/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.E(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(35*d^(7/4)*sqrt(d + e*x^2)) - (6*sqrt(-e)*e^(5/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*Elliptic.F(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(35*d^(7/4)*sqrt(d + e*x^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*atan(a+b*x+c*x^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atan(a+b*x+c*x^2)=#


    @test_int [atan(1 + x + x^2)/x^2, x, 8, (1/2)*atan(1 + x) - atan(1 + x + x^2)/x + log(x)/2 - (1/2)*log(1 + x^2) + (1/4)*log(2 + 2*x + x^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u^m*(a+b*atan(sqrt(1-c*x)/sqrt(1+c*x)))^n=#


    @test_int [(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^n/(1 - c^2*x^2), x, 0, Unintegrable((a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^n/(1 - c^2*x^2), x)]


    @test_int [(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^3/(1 - c^2*x^2), x, 9, -((2*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^3*atanh(1 - 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/c) + (3*im*b*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*PolyLog(2, 1 - 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/(2*c) - (3*im*b*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*PolyLog(2, -1 + 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/(2*c) + (3*b^2*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(3, 1 - 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/(2*c) - (3*b^2*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(3, -1 + 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/(2*c) - (3*im*b^3*PolyLog(4, 1 - 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/(4*c) + (3*im*b^3*PolyLog(4, -1 + 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/(4*c)]
    @test_int [(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^2/(1 - c^2*x^2), x, 7, -((2*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*atanh(1 - 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/c) + (im*b*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(2, 1 - 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/c - (im*b*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(2, -1 + 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/c + (b^2*PolyLog(3, 1 - 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/(2*c) - (b^2*PolyLog(3, -1 + 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/(2*c)]
    @test_int [(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^1/(1 - c^2*x^2), x, 4, -((a*log(sqrt(1 - c*x)/sqrt(1 + c*x)))/c) - (im*b*PolyLog(2, -((im*sqrt(1 - c*x))/sqrt(1 + c*x))))/(2*c) + (im*b*PolyLog(2, (im*sqrt(1 - c*x))/sqrt(1 + c*x)))/(2*c)]
    @test_int [1/((a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^1*(1 - c^2*x^2)), x, 0, Unintegrable(1/((1 - c^2*x^2)*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))), x)]
    @test_int [1/((a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*(1 - c^2*x^2)), x, 0, Unintegrable(1/((1 - c^2*x^2)*(a + b*atan(sqrt(1 - c*x)/sqrt(1 + c*x)))^2), x)]


    #= ::Title::Closed:: =#
    #=Integrands*involving*inverse*tangents*of*trig*functions=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*atan(Trig(a+b*x))=#


    @test_int [x^m*atan(tan(a + b*x)), x, 2, -((b*x^(2 + m))/(2 + 3*m + m^2)) + (x^(1 + m)*atan(tan(a + b*x)))/(1 + m)]

    @test_int [x^2*atan(tan(a + b*x)), x, 2, -((b*x^4)/12) + (1/3)*x^3*atan(tan(a + b*x))]
    @test_int [x^1*atan(tan(a + b*x)), x, 2, -((b*x^3)/6) + (1/2)*x^2*atan(tan(a + b*x))]
    @test_int [x^0*atan(tan(a + b*x)), x, 2, atan(tan(a + b*x))^2/(2*b)]
    @test_int [atan(tan(a + b*x))/x^1, x, 2, b*x - (b*x - atan(tan(a + b*x)))*log(x)]


    @test_int [x^m*atan(cot(a + b*x)), x, 2, (b*x^(2 + m))/(2 + 3*m + m^2) + (x^(1 + m)*atan(cot(a + b*x)))/(1 + m)]

    @test_int [x^2*atan(cot(a + b*x)), x, 2, (b*x^4)/12 + (1/3)*x^3*atan(cot(a + b*x))]
    @test_int [x^1*atan(cot(a + b*x)), x, 2, (b*x^3)/6 + (1/2)*x^2*atan(cot(a + b*x))]
    @test_int [x^0*atan(cot(a + b*x)), x, 2, -(atan(cot(a + b*x))^2/(2*b))]
    @test_int [atan(cot(a + b*x))/x^1, x, 2, (-b)*x + (b*x + atan(cot(a + b*x)))*log(x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*atan(c+d*Trig(a+b*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atan(c+d*tan(a+b*x))=#


    @test_int [atan(tan(a + b*x)), x, 2, atan(tan(a + b*x))^2/(2*b)]


    @test_int [x^2*atan(c + d*tan(a + b*x)), x, 11, (1/3)*x^3*atan(c + d*tan(a + b*x)) + (1/6)*im*x^3*log(1 + ((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)) - (1/6)*im*x^3*log(1 + ((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))) + (x^2*PolyLog(2, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d))))/(4*b) - (x^2*PolyLog(2, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d)))))/(4*b) + (im*x*PolyLog(3, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d))))/(4*b^2) - (im*x*PolyLog(3, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d)))))/(4*b^2) - PolyLog(4, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)))/(8*b^3) + PolyLog(4, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))))/(8*b^3)]
    @test_int [x^1*atan(c + d*tan(a + b*x)), x, 9, (1/2)*x^2*atan(c + d*tan(a + b*x)) + (1/4)*im*x^2*log(1 + ((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)) - (1/4)*im*x^2*log(1 + ((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))) + (x*PolyLog(2, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d))))/(4*b) - (x*PolyLog(2, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d)))))/(4*b) + (im*PolyLog(3, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d))))/(8*b^2) - (im*PolyLog(3, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d)))))/(8*b^2)]
    @test_int [x^0*atan(c + d*tan(a + b*x)), x, 7, x*atan(c + d*tan(a + b*x)) + (1/2)*im*x*log(1 + ((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)) - (1/2)*im*x*log(1 + ((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))) + PolyLog(2, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)))/(4*b) - PolyLog(2, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))))/(4*b)]
    @test_int [atan(c + d*tan(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + d*tan(a + b*x))/x, x)]


    @test_int [x^2*atan(c + (1 + im*c)*tan(a + b*x)), x, 7, -((b*x^4)/12) + (1/3)*x^3*atan(c + (1 + im*c)*tan(a + b*x)) - (1/6)*im*x^3*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) - (x^2*PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (im*x*PolyLog(3, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) + PolyLog(4, im*c*ℯ^(2*im*a + 2*im*b*x))/(8*b^3)]
    @test_int [x^1*atan(c + (1 + im*c)*tan(a + b*x)), x, 6, -((b*x^3)/6) + (1/2)*x^2*atan(c + (1 + im*c)*tan(a + b*x)) - (1/4)*im*x^2*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) - (x*PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (im*PolyLog(3, im*c*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*atan(c + (1 + im*c)*tan(a + b*x)), x, 5, -((b*x^2)/2) + x*atan(c + (1 + im*c)*tan(a + b*x)) - (1/2)*im*x*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) - PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x))/(4*b)]
    @test_int [atan(c + (1 + im*c)*tan(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + (1 + im*c)*tan(a + b*x))/x, x)]


    @test_int [x^2*atan(c + (-1 + im*c)*tan(a + b*x)), x, 7, (b*x^4)/12 + (1/3)*x^3*atan(c - (1 - im*c)*tan(a + b*x)) + (1/6)*im*x^3*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) + (x^2*PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) + (im*x*PolyLog(3, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) - PolyLog(4, (-im)*c*ℯ^(2*im*a + 2*im*b*x))/(8*b^3)]
    @test_int [x^1*atan(c + (-1 + im*c)*tan(a + b*x)), x, 6, (b*x^3)/6 + (1/2)*x^2*atan(c - (1 - im*c)*tan(a + b*x)) + (1/4)*im*x^2*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) + (x*PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) + (im*PolyLog(3, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*atan(c + (-1 + im*c)*tan(a + b*x)), x, 5, (b*x^2)/2 + x*atan(c - (1 - im*c)*tan(a + b*x)) + (1/2)*im*x*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) + PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x))/(4*b)]
    @test_int [atan(c + (-1 + im*c)*tan(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + (-1 + im*c)*tan(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atan(c+d*cot(a+b*x))=#


    @test_int [atan(cot(a + b*x)), x, 2, -(atan(cot(a + b*x))^2/(2*b))]


    @test_int [x^2*atan(c + d*cot(a + b*x)), x, 11, (1/3)*x^3*atan(c + d*cot(a + b*x)) + (1/6)*im*x^3*log(1 - ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)) - (1/6)*im*x^3*log(1 - ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))) + (x^2*PolyLog(2, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)))/(4*b) - (x^2*PolyLog(2, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))))/(4*b) + (im*x*PolyLog(3, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)))/(4*b^2) - (im*x*PolyLog(3, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))))/(4*b^2) - PolyLog(4, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d))/(8*b^3) + PolyLog(4, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d)))/(8*b^3)]
    @test_int [x^1*atan(c + d*cot(a + b*x)), x, 9, (1/2)*x^2*atan(c + d*cot(a + b*x)) + (1/4)*im*x^2*log(1 - ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)) - (1/4)*im*x^2*log(1 - ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))) + (x*PolyLog(2, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)))/(4*b) - (x*PolyLog(2, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))))/(4*b) + (im*PolyLog(3, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)))/(8*b^2) - (im*PolyLog(3, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))))/(8*b^2)]
    @test_int [x^0*atan(c + d*cot(a + b*x)), x, 7, x*atan(c + d*cot(a + b*x)) + (1/2)*im*x*log(1 - ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)) - (1/2)*im*x*log(1 - ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))) + PolyLog(2, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d))/(4*b) - PolyLog(2, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d)))/(4*b)]
    @test_int [atan(c + d*cot(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + d*cot(a + b*x))/x, x)]


    @test_int [x^2*atan(c + (1 - im*c)*cot(a + b*x)), x, 7, (b*x^4)/12 + (1/3)*x^3*atan(c + (1 - im*c)*cot(a + b*x)) + (1/6)*im*x^3*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) + (x^2*PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) + (im*x*PolyLog(3, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) - PolyLog(4, im*c*ℯ^(2*im*a + 2*im*b*x))/(8*b^3)]
    @test_int [x^1*atan(c + (1 - im*c)*cot(a + b*x)), x, 6, (b*x^3)/6 + (1/2)*x^2*atan(c + (1 - im*c)*cot(a + b*x)) + (1/4)*im*x^2*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) + (x*PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) + (im*PolyLog(3, im*c*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*atan(c + (1 - im*c)*cot(a + b*x)), x, 5, (b*x^2)/2 + x*atan(c + (1 - im*c)*cot(a + b*x)) + (1/2)*im*x*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) + PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x))/(4*b)]
    @test_int [atan(c + (1 - im*c)*cot(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + (1 - im*c)*cot(a + b*x))/x, x)]


    @test_int [x^2*atan(c + (-1 - im*c)*cot(a + b*x)), x, 7, -((b*x^4)/12) + (1/3)*x^3*atan(c - (1 + im*c)*cot(a + b*x)) - (1/6)*im*x^3*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) - (x^2*PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (im*x*PolyLog(3, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) + PolyLog(4, (-im)*c*ℯ^(2*im*a + 2*im*b*x))/(8*b^3)]
    @test_int [x^1*atan(c + (-1 - im*c)*cot(a + b*x)), x, 6, -((b*x^3)/6) + (1/2)*x^2*atan(c - (1 + im*c)*cot(a + b*x)) - (1/4)*im*x^2*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) - (x*PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (im*PolyLog(3, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*atan(c + (-1 - im*c)*cot(a + b*x)), x, 5, -((b*x^2)/2) + x*atan(c - (1 + im*c)*cot(a + b*x)) - (1/2)*im*x*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) - PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x))/(4*b)]
    @test_int [atan(c + (-1 - im*c)*cot(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + (-1 - im*c)*cot(a + b*x))/x, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*atan(c+d*Hyper(a+b*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atan(c+d*sinh(a+b*x))=#


    @test_int [atan(sinh(x)), x, 6, -2*x*atan(ℯ^x) + x*atan(sinh(x)) + im*PolyLog(2, (-im)*ℯ^x) - im*PolyLog(2, im*ℯ^x)]
    @test_int [x*atan(sinh(x)), x, 8, (-x^2)*atan(ℯ^x) + (1/2)*x^2*atan(sinh(x)) + im*x*PolyLog(2, (-im)*ℯ^x) - im*x*PolyLog(2, im*ℯ^x) - im*PolyLog(3, (-im)*ℯ^x) + im*PolyLog(3, im*ℯ^x)]
    @test_int [x^2*atan(sinh(x)), x, 10, (-(2/3))*x^3*atan(ℯ^x) + (1/3)*x^3*atan(sinh(x)) + im*x^2*PolyLog(2, (-im)*ℯ^x) - im*x^2*PolyLog(2, im*ℯ^x) - 2*im*x*PolyLog(3, (-im)*ℯ^x) + 2*im*x*PolyLog(3, im*ℯ^x) + 2*im*PolyLog(4, (-im)*ℯ^x) - 2*im*PolyLog(4, im*ℯ^x)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*x^m*atan(c+d*cosh(a+b*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atan(c+d*tanh(a+b*x))=#


    @test_int [(e + f*x)^3*atan(tanh(a + b*x)), x, 12, -(((e + f*x)^4*atan(ℯ^(2*a + 2*b*x)))/(4*f)) + ((e + f*x)^4*atan(tanh(a + b*x)))/(4*f) + (im*(e + f*x)^3*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) - (im*(e + f*x)^3*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) - (3*im*f*(e + f*x)^2*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^2) + (3*im*f*(e + f*x)^2*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(8*b^2) + (3*im*f^2*(e + f*x)*PolyLog(4, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^3) - (3*im*f^2*(e + f*x)*PolyLog(4, im*ℯ^(2*a + 2*b*x)))/(8*b^3) - (3*im*f^3*PolyLog(5, (-im)*ℯ^(2*a + 2*b*x)))/(16*b^4) + (3*im*f^3*PolyLog(5, im*ℯ^(2*a + 2*b*x)))/(16*b^4)]
    @test_int [(e + f*x)^2*atan(tanh(a + b*x)), x, 10, -(((e + f*x)^3*atan(ℯ^(2*a + 2*b*x)))/(3*f)) + ((e + f*x)^3*atan(tanh(a + b*x)))/(3*f) + (im*(e + f*x)^2*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) - (im*(e + f*x)^2*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) - (im*f*(e + f*x)*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(4*b^2) + (im*f*(e + f*x)*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(4*b^2) + (im*f^2*PolyLog(4, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^3) - (im*f^2*PolyLog(4, im*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [(e + f*x)^1*atan(tanh(a + b*x)), x, 8, -(((e + f*x)^2*atan(ℯ^(2*a + 2*b*x)))/(2*f)) + ((e + f*x)^2*atan(tanh(a + b*x)))/(2*f) + (im*(e + f*x)*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) - (im*(e + f*x)*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) - (im*f*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^2) + (im*f*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [(e + f*x)^0*atan(tanh(a + b*x)), x, 6, (-x)*atan(ℯ^(2*a + 2*b*x)) + x*atan(tanh(a + b*x)) + (im*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) - (im*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [atan(tanh(a + b*x))/(e + f*x)^1, x, 0, CannotIntegrate(atan(tanh(a + b*x))/(e + f*x), x)]


    @test_int [x^2*atan(c + d*tanh(a + b*x)), x, 11, (1/3)*x^3*atan(c + d*tanh(a + b*x)) + (1/6)*im*x^3*log(1 + ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) - (1/6)*im*x^3*log(1 + ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) + (im*x^2*PolyLog(2, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(4*b) - (im*x^2*PolyLog(2, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(4*b) - (im*x*PolyLog(3, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(4*b^2) + (im*x*PolyLog(3, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(4*b^2) + (im*PolyLog(4, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(8*b^3) - (im*PolyLog(4, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(8*b^3)]
    @test_int [x^1*atan(c + d*tanh(a + b*x)), x, 9, (1/2)*x^2*atan(c + d*tanh(a + b*x)) + (1/4)*im*x^2*log(1 + ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) - (1/4)*im*x^2*log(1 + ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) + (im*x*PolyLog(2, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(4*b) - (im*x*PolyLog(2, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(4*b) - (im*PolyLog(3, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(8*b^2) + (im*PolyLog(3, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(8*b^2)]
    @test_int [x^0*atan(c + d*tanh(a + b*x)), x, 7, x*atan(c + d*tanh(a + b*x)) + (1/2)*im*x*log(1 + ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) - (1/2)*im*x*log(1 + ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) + (im*PolyLog(2, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(4*b) - (im*PolyLog(2, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(4*b)]
    @test_int [atan(c + d*tanh(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + d*tanh(a + b*x))/x, x)]


    @test_int [x^2*atan(c + (im + c)*tanh(a + b*x)), x, 7, (-(1/12))*im*b*x^4 + (1/3)*x^3*atan(c + (im + c)*tanh(a + b*x)) + (1/6)*im*x^3*log(1 + im*c*ℯ^(2*a + 2*b*x)) + (im*x^2*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b) - (im*x*PolyLog(3, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b^2) + (im*PolyLog(4, (-im)*c*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [x^1*atan(c + (im + c)*tanh(a + b*x)), x, 6, (-(1/6))*im*b*x^3 + (1/2)*x^2*atan(c + (im + c)*tanh(a + b*x)) + (1/4)*im*x^2*log(1 + im*c*ℯ^(2*a + 2*b*x)) + (im*x*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b) - (im*PolyLog(3, (-im)*c*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [x^0*atan(c + (im + c)*tanh(a + b*x)), x, 5, (-(1/2))*im*b*x^2 + x*atan(c + (im + c)*tanh(a + b*x)) + (1/2)*im*x*log(1 + im*c*ℯ^(2*a + 2*b*x)) + (im*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [atan(c + (im + c)*tanh(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + (im + c)*tanh(a + b*x))/x, x)]


    @test_int [x^2*atan(c - (im - c)*tanh(a + b*x)), x, 7, (1/12)*im*b*x^4 + (1/3)*x^3*atan(c - (im - c)*tanh(a + b*x)) - (1/6)*im*x^3*log(1 - im*c*ℯ^(2*a + 2*b*x)) - (im*x^2*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b) + (im*x*PolyLog(3, im*c*ℯ^(2*a + 2*b*x)))/(4*b^2) - (im*PolyLog(4, im*c*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [x^1*atan(c - (im - c)*tanh(a + b*x)), x, 6, (1/6)*im*b*x^3 + (1/2)*x^2*atan(c - (im - c)*tanh(a + b*x)) - (1/4)*im*x^2*log(1 - im*c*ℯ^(2*a + 2*b*x)) - (im*x*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b) + (im*PolyLog(3, im*c*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [x^0*atan(c - (im - c)*tanh(a + b*x)), x, 5, (1/2)*im*b*x^2 + x*atan(c - (im - c)*tanh(a + b*x)) - (1/2)*im*x*log(1 - im*c*ℯ^(2*a + 2*b*x)) - (im*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [atan(c - (im - c)*tanh(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c - (im - c)*tanh(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atan(c+d*coth(a+b*x))=#


    @test_int [(e + f*x)^3*atan(coth(a + b*x)), x, 12, ((e + f*x)^4*atan(ℯ^(2*a + 2*b*x)))/(4*f) + ((e + f*x)^4*atan(coth(a + b*x)))/(4*f) - (im*(e + f*x)^3*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) + (im*(e + f*x)^3*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) + (3*im*f*(e + f*x)^2*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^2) - (3*im*f*(e + f*x)^2*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(8*b^2) - (3*im*f^2*(e + f*x)*PolyLog(4, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^3) + (3*im*f^2*(e + f*x)*PolyLog(4, im*ℯ^(2*a + 2*b*x)))/(8*b^3) + (3*im*f^3*PolyLog(5, (-im)*ℯ^(2*a + 2*b*x)))/(16*b^4) - (3*im*f^3*PolyLog(5, im*ℯ^(2*a + 2*b*x)))/(16*b^4)]
    @test_int [(e + f*x)^2*atan(coth(a + b*x)), x, 10, ((e + f*x)^3*atan(ℯ^(2*a + 2*b*x)))/(3*f) + ((e + f*x)^3*atan(coth(a + b*x)))/(3*f) - (im*(e + f*x)^2*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) + (im*(e + f*x)^2*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) + (im*f*(e + f*x)*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(4*b^2) - (im*f*(e + f*x)*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(4*b^2) - (im*f^2*PolyLog(4, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^3) + (im*f^2*PolyLog(4, im*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [(e + f*x)^1*atan(coth(a + b*x)), x, 8, ((e + f*x)^2*atan(ℯ^(2*a + 2*b*x)))/(2*f) + ((e + f*x)^2*atan(coth(a + b*x)))/(2*f) - (im*(e + f*x)*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) + (im*(e + f*x)*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) + (im*f*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^2) - (im*f*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [(e + f*x)^0*atan(coth(a + b*x)), x, 6, x*atan(ℯ^(2*a + 2*b*x)) + x*atan(coth(a + b*x)) - (im*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) + (im*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [atan(coth(a + b*x))/(e + f*x)^1, x, 0, CannotIntegrate(atan(coth(a + b*x))/(e + f*x), x)]


    @test_int [x^2*atan(c + d*coth(a + b*x)), x, 11, (1/3)*x^3*atan(c + d*coth(a + b*x)) + (1/6)*im*x^3*log(1 - ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) - (1/6)*im*x^3*log(1 - ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) + (im*x^2*PolyLog(2, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(4*b) - (im*x^2*PolyLog(2, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(4*b) - (im*x*PolyLog(3, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(4*b^2) + (im*x*PolyLog(3, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(4*b^2) + (im*PolyLog(4, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(8*b^3) - (im*PolyLog(4, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(8*b^3)]
    @test_int [x^1*atan(c + d*coth(a + b*x)), x, 9, (1/2)*x^2*atan(c + d*coth(a + b*x)) + (1/4)*im*x^2*log(1 - ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) - (1/4)*im*x^2*log(1 - ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) + (im*x*PolyLog(2, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(4*b) - (im*x*PolyLog(2, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(4*b) - (im*PolyLog(3, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(8*b^2) + (im*PolyLog(3, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(8*b^2)]
    @test_int [x^0*atan(c + d*coth(a + b*x)), x, 7, x*atan(c + d*coth(a + b*x)) + (1/2)*im*x*log(1 - ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) - (1/2)*im*x*log(1 - ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) + (im*PolyLog(2, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(4*b) - (im*PolyLog(2, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(4*b)]
    @test_int [atan(c + d*coth(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + d*coth(a + b*x))/x, x)]


    @test_int [x^2*atan(c + (im + c)*coth(a + b*x)), x, 7, (-(1/12))*im*b*x^4 + (1/3)*x^3*atan(c + (im + c)*coth(a + b*x)) + (1/6)*im*x^3*log(1 - im*c*ℯ^(2*a + 2*b*x)) + (im*x^2*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b) - (im*x*PolyLog(3, im*c*ℯ^(2*a + 2*b*x)))/(4*b^2) + (im*PolyLog(4, im*c*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [x^1*atan(c + (im + c)*coth(a + b*x)), x, 6, (-(1/6))*im*b*x^3 + (1/2)*x^2*atan(c + (im + c)*coth(a + b*x)) + (1/4)*im*x^2*log(1 - im*c*ℯ^(2*a + 2*b*x)) + (im*x*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b) - (im*PolyLog(3, im*c*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [x^0*atan(c + (im + c)*coth(a + b*x)), x, 5, (-(1/2))*im*b*x^2 + x*atan(c + (im + c)*coth(a + b*x)) + (1/2)*im*x*log(1 - im*c*ℯ^(2*a + 2*b*x)) + (im*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [atan(c + (im + c)*coth(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c + (im + c)*coth(a + b*x))/x, x)]


    @test_int [x^2*atan(c - (im - c)*coth(a + b*x)), x, 7, (1/12)*im*b*x^4 + (1/3)*x^3*atan(c - (im - c)*coth(a + b*x)) - (1/6)*im*x^3*log(1 + im*c*ℯ^(2*a + 2*b*x)) - (im*x^2*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b) + (im*x*PolyLog(3, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b^2) - (im*PolyLog(4, (-im)*c*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [x^1*atan(c - (im - c)*coth(a + b*x)), x, 6, (1/6)*im*b*x^3 + (1/2)*x^2*atan(c - (im - c)*coth(a + b*x)) - (1/4)*im*x^2*log(1 + im*c*ℯ^(2*a + 2*b*x)) - (im*x*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b) + (im*PolyLog(3, (-im)*c*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [x^0*atan(c - (im - c)*coth(a + b*x)), x, 5, (1/2)*im*b*x^2 + x*atan(c - (im - c)*coth(a + b*x)) - (1/2)*im*x*log(1 + im*c*ℯ^(2*a + 2*b*x)) - (im*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [atan(c - (im - c)*coth(a + b*x))/x^1, x, 0, CannotIntegrate(atan(c - (im - c)*coth(a + b*x))/x, x)]


    #= ::Title::Closed:: =#
    #=Integrands*involving*inverse*tangents*of*exponentials=#


    @test_int [atan(ℯ^x), x, 4, (1/2)*im*PolyLog(2, (-im)*ℯ^x) - (1/2)*im*PolyLog(2, im*ℯ^x)]
    @test_int [x*atan(ℯ^x), x, 7, (1/2)*im*x*PolyLog(2, (-im)*ℯ^x) - (1/2)*im*x*PolyLog(2, im*ℯ^x) - (1/2)*im*PolyLog(3, (-im)*ℯ^x) + (1/2)*im*PolyLog(3, im*ℯ^x)]
    @test_int [x^2*atan(ℯ^x), x, 9, (1/2)*im*x^2*PolyLog(2, (-im)*ℯ^x) - (1/2)*im*x^2*PolyLog(2, im*ℯ^x) - im*x*PolyLog(3, (-im)*ℯ^x) + im*x*PolyLog(3, im*ℯ^x) + im*PolyLog(4, (-im)*ℯ^x) - im*PolyLog(4, im*ℯ^x)]


    @test_int [atan(ℯ^(a + b*x)), x, 4, (im*PolyLog(2, (-im)*ℯ^(a + b*x)))/(2*b) - (im*PolyLog(2, im*ℯ^(a + b*x)))/(2*b)]
    @test_int [x*atan(ℯ^(a + b*x)), x, 7, (im*x*PolyLog(2, (-im)*ℯ^(a + b*x)))/(2*b) - (im*x*PolyLog(2, im*ℯ^(a + b*x)))/(2*b) - (im*PolyLog(3, (-im)*ℯ^(a + b*x)))/(2*b^2) + (im*PolyLog(3, im*ℯ^(a + b*x)))/(2*b^2)]
    @test_int [x^2*atan(ℯ^(a + b*x)), x, 9, (im*x^2*PolyLog(2, (-im)*ℯ^(a + b*x)))/(2*b) - (im*x^2*PolyLog(2, im*ℯ^(a + b*x)))/(2*b) - (im*x*PolyLog(3, (-im)*ℯ^(a + b*x)))/b^2 + (im*x*PolyLog(3, im*ℯ^(a + b*x)))/b^2 + (im*PolyLog(4, (-im)*ℯ^(a + b*x)))/b^3 - (im*PolyLog(4, im*ℯ^(a + b*x)))/b^3]


    @test_int [atan(a + b*f^(c + d*x)), x, 6, -((atan(a + b*f^(c + d*x))*log(2/(1 - im*(a + b*f^(c + d*x)))))/(d*log(f))) + (atan(a + b*f^(c + d*x))*log((2*b*f^(c + d*x))/((im - a)*(1 - im*(a + b*f^(c + d*x))))))/(d*log(f)) + (im*PolyLog(2, 1 - 2/(1 - im*(a + b*f^(c + d*x)))))/(2*d*log(f)) - (im*PolyLog(2, 1 - (2*b*f^(c + d*x))/((im - a)*(1 - im*(a + b*f^(c + d*x))))))/(2*d*log(f))]
    @test_int [x*atan(a + b*f^(c + d*x)), x, 9, (1/2)*x^2*atan(a + b*f^(c + d*x)) - (1/4)*im*x^2*log(1 - (im*b*f^(c + d*x))/(1 - im*a)) + (1/4)*im*x^2*log(1 + (im*b*f^(c + d*x))/(1 + im*a)) - (im*x*PolyLog(2, (im*b*f^(c + d*x))/(1 - im*a)))/(2*d*log(f)) + (im*x*PolyLog(2, -((im*b*f^(c + d*x))/(1 + im*a))))/(2*d*log(f)) + (im*PolyLog(3, (im*b*f^(c + d*x))/(1 - im*a)))/(2*d^2*log(f)^2) - (im*PolyLog(3, -((im*b*f^(c + d*x))/(1 + im*a))))/(2*d^2*log(f)^2), (1/4)*im*x^2*log(1 - im*a - im*b*f^(c + d*x)) - (1/4)*im*x^2*log(1 + im*a + im*b*f^(c + d*x)) + (1/4)*im*x^2*log(1 - (b*f^(c + d*x))/(im - a)) - (1/4)*im*x^2*log(1 + (b*f^(c + d*x))/(im + a)) + (im*x*PolyLog(2, (b*f^(c + d*x))/(im - a)))/(2*d*log(f)) - (im*x*PolyLog(2, -((b*f^(c + d*x))/(im + a))))/(2*d*log(f)) - (im*PolyLog(3, (b*f^(c + d*x))/(im - a)))/(2*d^2*log(f)^2) + (im*PolyLog(3, -((b*f^(c + d*x))/(im + a))))/(2*d^2*log(f)^2)]
    @test_int [x^2*atan(a + b*f^(c + d*x)), x, 11, (1/3)*x^3*atan(a + b*f^(c + d*x)) - (1/6)*im*x^3*log(1 - (im*b*f^(c + d*x))/(1 - im*a)) + (1/6)*im*x^3*log(1 + (im*b*f^(c + d*x))/(1 + im*a)) - (im*x^2*PolyLog(2, (im*b*f^(c + d*x))/(1 - im*a)))/(2*d*log(f)) + (im*x^2*PolyLog(2, -((im*b*f^(c + d*x))/(1 + im*a))))/(2*d*log(f)) + (im*x*PolyLog(3, (im*b*f^(c + d*x))/(1 - im*a)))/(d^2*log(f)^2) - (im*x*PolyLog(3, -((im*b*f^(c + d*x))/(1 + im*a))))/(d^2*log(f)^2) - (im*PolyLog(4, (im*b*f^(c + d*x))/(1 - im*a)))/(d^3*log(f)^3) + (im*PolyLog(4, -((im*b*f^(c + d*x))/(1 + im*a))))/(d^3*log(f)^3), (1/6)*im*x^3*log(1 - im*a - im*b*f^(c + d*x)) - (1/6)*im*x^3*log(1 + im*a + im*b*f^(c + d*x)) + (1/6)*im*x^3*log(1 - (b*f^(c + d*x))/(im - a)) - (1/6)*im*x^3*log(1 + (b*f^(c + d*x))/(im + a)) + (im*x^2*PolyLog(2, (b*f^(c + d*x))/(im - a)))/(2*d*log(f)) - (im*x^2*PolyLog(2, -((b*f^(c + d*x))/(im + a))))/(2*d*log(f)) - (im*x*PolyLog(3, (b*f^(c + d*x))/(im - a)))/(d^2*log(f)^2) + (im*x*PolyLog(3, -((b*f^(c + d*x))/(im + a))))/(d^2*log(f)^2) + (im*PolyLog(4, (b*f^(c + d*x))/(im - a)))/(d^3*log(f)^3) - (im*PolyLog(4, -((b*f^(c + d*x))/(im + a))))/(d^3*log(f)^3)]


    @test_int [atan(ℯ^x)/ℯ^x, x, 5, x - atan(ℯ^x)/ℯ^x - (1/2)*log(1 + ℯ^(2*x))]


    #= ::Title::Closed:: =#
    #=Miscellaneous*integrands*involving*inverse*tangents=#


    #= ::Section::Closed:: =#
    #=Problems*from*Calculus*textbooks=#


    #= ::Subsubsection::Closed:: =#
    #=Edwards*and*Penney*Calculus=#


    @test_int [atan(x)/(-1 + x)^3, x, 5, 1/(4*(1 - x)) - atan(x)/(2*(1 - x)^2) - (1/4)*log(1 - x) + (1/8)*log(1 + x^2)]
    @test_int [atan(1 + 2*x)/(4 + 3*x)^3, x, 9, -(1/(34*(4 + 3*x))) + (8/867)*atan(1 + 2*x) - atan(1 + 2*x)/(6*(4 + 3*x)^2) + (5/289)*log(4 + 3*x) - (5/578)*log(1 + 2*x + 2*x^2)]


    #= ::Subsubsection::Closed:: =#
    #=Thomas*Calculus, 8th*Edition=#


    @test_int [atan(sqrt(1 + x)), x, 4, -sqrt(1 + x) + 2*atan(sqrt(1 + x)) + x*atan(sqrt(1 + x))]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*inverse*tangents=#


    @test_int [1/((1 + x^2)*(2 + atan(x))), x, 1, log(2 + atan(x))]
    @test_int [1/((a + a*x^2)*(b - 2*b*atan(x))), x, 1, -(log(1 - 2*atan(x))/(2*a*b))]


    @test_int [(x + x^3 + (1 + x)^2*atan(x))/((1 + x)^2*(1 + x^2)), x, 5, 1/(1 + x) + atan(x)^2/2 + log(1 + x)]


    @test_int [x^3*atan(sqrt(x + 1) - sqrt(x)), x, 9, -(sqrt(x)/8) + x^(3/2)/24 - x^(5/2)/40 + x^(7/2)/56 + (pi*x^4)/16 + atan(sqrt(x))/8 - (1/8)*x^4*atan(sqrt(x))]
    @test_int [x^2*atan(sqrt(x + 1) - sqrt(x)), x, 8, sqrt(x)/6 - x^(3/2)/18 + x^(5/2)/30 + (pi*x^3)/12 - atan(sqrt(x))/6 - (1/6)*x^3*atan(sqrt(x))]
    @test_int [x^1*atan(sqrt(x + 1) - sqrt(x)), x, 7, -(sqrt(x)/4) + x^(3/2)/12 + (pi*x^2)/8 + atan(sqrt(x))/4 - (1/4)*x^2*atan(sqrt(x))]
    @test_int [x^0*atan(sqrt(x + 1) - sqrt(x)), x, 6, sqrt(x)/2 + (pi*x)/4 - atan(sqrt(x))/2 - (1/2)*x*atan(sqrt(x))]
    @test_int [atan(sqrt(x + 1) - sqrt(x))/x^1, x, 6, (1/4)*pi*log(x) - (1/2)*im*PolyLog(2, (-im)*sqrt(x)) + (1/2)*im*PolyLog(2, im*sqrt(x))]
    @test_int [atan(sqrt(x + 1) - sqrt(x))/x^2, x, 6, -(pi/(4*x)) + 1/(2*sqrt(x)) + atan(sqrt(x))/2 + atan(sqrt(x))/(2*x)]
    @test_int [atan(sqrt(x + 1) - sqrt(x))/x^3, x, 7, -(pi/(8*x^2)) + 1/(12*x^(3/2)) - 1/(4*sqrt(x)) - atan(sqrt(x))/4 + atan(sqrt(x))/(4*x^2)]
    @test_int [atan(sqrt(x + 1) - sqrt(x))/x^4, x, 8, -(pi/(12*x^3)) + 1/(30*x^(5/2)) - 1/(18*x^(3/2)) + 1/(6*sqrt(x)) + atan(sqrt(x))/6 + atan(sqrt(x))/(6*x^3)]


    @test_int [atan(c*x/sqrt(a - c^2*x^2))^m/sqrt(d - c^2*d/a*x^2), x, 2, (sqrt(a - c^2*x^2)*atan((c*x)/sqrt(a - c^2*x^2))^(1 + m))/(c*(1 + m)*sqrt(d - (c^2*d*x^2)/a))]

    @test_int [atan(c*x/sqrt(a - c^2*x^2))^2/sqrt(d - c^2*d/a*x^2), x, 2, (sqrt(a - c^2*x^2)*atan((c*x)/sqrt(a - c^2*x^2))^3)/(3*c*sqrt(d - (c^2*d*x^2)/a))]
    @test_int [atan(c*x/sqrt(a - c^2*x^2))^1/sqrt(d - c^2*d/a*x^2), x, 2, (sqrt(a - c^2*x^2)*atan((c*x)/sqrt(a - c^2*x^2))^2)/(2*c*sqrt(d - (c^2*d*x^2)/a))]
    @test_int [1/atan(c*x/sqrt(a - c^2*x^2))^1/sqrt(d - c^2*d/a*x^2), x, 2, (sqrt(a - c^2*x^2)*log(atan((c*x)/sqrt(a - c^2*x^2))))/(c*sqrt(d - (c^2*d*x^2)/a))]
    @test_int [1/atan(c*x/sqrt(a - c^2*x^2))^2/sqrt(d - c^2*d/a*x^2), x, 2, -(sqrt(a - c^2*x^2)/(c*sqrt(d - (c^2*d*x^2)/a)*atan((c*x)/sqrt(a - c^2*x^2))))]
    @test_int [1/atan(c*x/sqrt(a - c^2*x^2))^3/sqrt(d - c^2*d/a*x^2), x, 2, -(sqrt(a - c^2*x^2)/(2*c*sqrt(d - (c^2*d*x^2)/a)*atan((c*x)/sqrt(a - c^2*x^2))^2))]


    @test_int [atan(e*x/sqrt(-a*e^2/b - e^2*x^2))^m/sqrt(a + b*x^2), x, 2, (sqrt(-((a*e^2)/b) - e^2*x^2)*atan((e*x)/sqrt(-((a*e^2)/b) - e^2*x^2))^(1 + m))/(e*(1 + m)*sqrt(a + b*x^2))]

    @test_int [atan(e*x/sqrt(-a*e^2/b - e^2*x^2))^2/sqrt(a + b*x^2), x, 2, (sqrt(-((a*e^2)/b) - e^2*x^2)*atan((e*x)/sqrt(-((a*e^2)/b) - e^2*x^2))^3)/(3*e*sqrt(a + b*x^2))]
    @test_int [atan(e*x/sqrt(-a*e^2/b - e^2*x^2))^1/sqrt(a + b*x^2), x, 2, (sqrt(-((a*e^2)/b) - e^2*x^2)*atan((e*x)/sqrt(-((a*e^2)/b) - e^2*x^2))^2)/(2*e*sqrt(a + b*x^2))]
    @test_int [1/atan(e*x/sqrt(-a*e^2/b - e^2*x^2))^1/sqrt(a + b*x^2), x, 2, (sqrt(-((a*e^2)/b) - e^2*x^2)*log(atan((e*x)/sqrt(-((a*e^2)/b) - e^2*x^2))))/(e*sqrt(a + b*x^2))]
    @test_int [1/atan(e*x/sqrt(-a*e^2/b - e^2*x^2))^2/sqrt(a + b*x^2), x, 2, -(sqrt(-((a*e^2)/b) - e^2*x^2)/(e*sqrt(a + b*x^2)*atan((e*x)/sqrt(-((a*e^2)/b) - e^2*x^2))))]
    @test_int [1/atan(e*x/sqrt(-a*e^2/b - e^2*x^2))^3/sqrt(a + b*x^2), x, 2, -(sqrt(-((a*e^2)/b) - e^2*x^2)/(2*e*sqrt(a + b*x^2)*atan((e*x)/sqrt(-((a*e^2)/b) - e^2*x^2))^2))]


    @test_int [atan(c*(a + b*x))*log(d*(a + b*x))/(a + b*x), x, 9, (im*log(d*(a + b*x))*PolyLog(2, (-im)*c*(a + b*x)))/(2*b) - (im*log(d*(a + b*x))*PolyLog(2, im*c*(a + b*x)))/(2*b) - (im*PolyLog(3, (-im)*c*(a + b*x)))/(2*b) + (im*PolyLog(3, im*c*(a + b*x)))/(2*b)]


    @test_int [ℯ^(c*(a + b*x))*atan(sinh(a*c + b*c*x)), x, 5, (ℯ^(a*c + b*c*x)*atan(sinh(c*(a + b*x))))/(b*c) - log(1 + ℯ^(2*c*(a + b*x)))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*atan(cosh(a*c + b*c*x)), x, 8, (ℯ^(a*c + b*c*x)*atan(cosh(c*(a + b*x))))/(b*c) - ((1 - sqrt(2))*log(3 - 2*sqrt(2) + ℯ^(2*c*(a + b*x))))/(2*b*c) - ((1 + sqrt(2))*log(3 + 2*sqrt(2) + ℯ^(2*c*(a + b*x))))/(2*b*c)]
    @test_int [ℯ^(c*(a + b*x))*atan(tanh(a*c + b*c*x)), x, 13, atan(1 - sqrt(2)*ℯ^(a*c + b*c*x))/(sqrt(2)*b*c) - atan(1 + sqrt(2)*ℯ^(a*c + b*c*x))/(sqrt(2)*b*c) + (ℯ^(a*c + b*c*x)*atan(tanh(c*(a + b*x))))/(b*c) - log(1 + ℯ^(2*c*(a + b*x)) - sqrt(2)*ℯ^(a*c + b*c*x))/(2*sqrt(2)*b*c) + log(1 + ℯ^(2*c*(a + b*x)) + sqrt(2)*ℯ^(a*c + b*c*x))/(2*sqrt(2)*b*c)]
    @test_int [ℯ^(c*(a + b*x))*atan(coth(a*c + b*c*x)), x, 13, -(atan(1 - sqrt(2)*ℯ^(a*c + b*c*x))/(sqrt(2)*b*c)) + atan(1 + sqrt(2)*ℯ^(a*c + b*c*x))/(sqrt(2)*b*c) + (ℯ^(a*c + b*c*x)*atan(coth(c*(a + b*x))))/(b*c) + log(1 + ℯ^(2*c*(a + b*x)) - sqrt(2)*ℯ^(a*c + b*c*x))/(2*sqrt(2)*b*c) - log(1 + ℯ^(2*c*(a + b*x)) + sqrt(2)*ℯ^(a*c + b*c*x))/(2*sqrt(2)*b*c)]
    @test_int [ℯ^(c*(a + b*x))*atan(sech(a*c + b*c*x)), x, 8, (ℯ^(a*c + b*c*x)*atan(sech(c*(a + b*x))))/(b*c) + ((1 - sqrt(2))*log(3 - 2*sqrt(2) + ℯ^(2*c*(a + b*x))))/(2*b*c) + ((1 + sqrt(2))*log(3 + 2*sqrt(2) + ℯ^(2*c*(a + b*x))))/(2*b*c)]
    @test_int [ℯ^(c*(a + b*x))*atan(csch(a*c + b*c*x)), x, 5, (ℯ^(a*c + b*c*x)*atan(csch(c*(a + b*x))))/(b*c) + log(1 + ℯ^(2*c*(a + b*x)))/(b*c)]


    @test_int [((a + b*atan(c*x^n))*(d + e*log(f*x^m)))/x, x, 13, a*d*log(x) + (a*e*log(f*x^m)^2)/(2*m) + (im*b*d*PolyLog(2, (-im)*c*x^n))/(2*n) + (im*b*e*log(f*x^m)*PolyLog(2, (-im)*c*x^n))/(2*n) - (im*b*d*PolyLog(2, im*c*x^n))/(2*n) - (im*b*e*log(f*x^m)*PolyLog(2, im*c*x^n))/(2*n) - (im*b*e*m*PolyLog(3, (-im)*c*x^n))/(2*n^2) + (im*b*e*m*PolyLog(3, im*c*x^n))/(2*n^2)]
    end
