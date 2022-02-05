@testset "7.3.7 Inverse hyperbolic tangent functions" begin
    @variables a, b, c, d, e, f, m, n, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*involving*inverse*hyperbolic*tangents*of*algebraic*functions=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(a+b*atanh(c*x/sqrt(d+e*x^2)))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*atanh(c*x/sqrt(d+e*x^2)))*when*e=c^2=#


    @test_int [x^5*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 6, -((5*d^2*x*sqrt(d + e*x^2))/(96*e^(5/2))) + (5*d*x^3*sqrt(d + e*x^2))/(144*e^(3/2)) - (x^5*sqrt(d + e*x^2))/(36*sqrt(e)) + (5*d^3*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(96*e^3) + (1/6)*x^6*atanh((sqrt(e)*x)/sqrt(d + e*x^2))]
    @test_int [x^3*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 5, (3*d*x*sqrt(d + e*x^2))/(32*e^(3/2)) - (x^3*sqrt(d + e*x^2))/(16*sqrt(e)) - (3*d^2*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(32*e^2) + (1/4)*x^4*atanh((sqrt(e)*x)/sqrt(d + e*x^2))]
    @test_int [x^1*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 4, -((x*sqrt(d + e*x^2))/(4*sqrt(e))) + (d*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(4*e) + (1/2)*x^2*atanh((sqrt(e)*x)/sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^1, x, 8, -((sqrt(d)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))^2)/(2*sqrt(d + e*x^2))) + (sqrt(d)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(1 - ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/sqrt(d + e*x^2) - (sqrt(d)*sqrt(1 + (e*x^2)/d)*asinh((sqrt(e)*x)/sqrt(d))*log(x))/sqrt(d + e*x^2) + atanh((sqrt(e)*x)/sqrt(d + e*x^2))*log(x) + (sqrt(d)*sqrt(1 + (e*x^2)/d)*PolyLog(2, ℯ^(2*asinh((sqrt(e)*x)/sqrt(d)))))/(2*sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^3, x, 2, -((sqrt(e)*sqrt(d + e*x^2))/(2*d*x)) - atanh((sqrt(e)*x)/sqrt(d + e*x^2))/(2*x^2)]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^5, x, 3, -((sqrt(e)*sqrt(d + e*x^2))/(12*d*x^3)) + (e^(3/2)*sqrt(d + e*x^2))/(6*d^2*x) - atanh((sqrt(e)*x)/sqrt(d + e*x^2))/(4*x^4)]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^7, x, 4, -((sqrt(e)*sqrt(d + e*x^2))/(30*d*x^5)) + (2*e^(3/2)*sqrt(d + e*x^2))/(45*d^2*x^3) - (4*e^(5/2)*sqrt(d + e*x^2))/(45*d^3*x) - atanh((sqrt(e)*x)/sqrt(d + e*x^2))/(6*x^6)]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^9, x, 5, -((sqrt(e)*sqrt(d + e*x^2))/(56*d*x^7)) + (3*e^(3/2)*sqrt(d + e*x^2))/(140*d^2*x^5) - (e^(5/2)*sqrt(d + e*x^2))/(35*d^3*x^3) + (2*e^(7/2)*sqrt(d + e*x^2))/(35*d^4*x) - atanh((sqrt(e)*x)/sqrt(d + e*x^2))/(8*x^8)]

    @test_int [x^6*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 4, (d^3*sqrt(d + e*x^2))/(7*e^(7/2)) - (d^2*(d + e*x^2)^(3/2))/(7*e^(7/2)) + (3*d*(d + e*x^2)^(5/2))/(35*e^(7/2)) - (d + e*x^2)^(7/2)/(49*e^(7/2)) + (1/7)*x^7*atanh((sqrt(e)*x)/sqrt(d + e*x^2))]
    @test_int [x^4*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 4, -((d^2*sqrt(d + e*x^2))/(5*e^(5/2))) + (2*d*(d + e*x^2)^(3/2))/(15*e^(5/2)) - (d + e*x^2)^(5/2)/(25*e^(5/2)) + (1/5)*x^5*atanh((sqrt(e)*x)/sqrt(d + e*x^2))]
    @test_int [x^2*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 4, (d*sqrt(d + e*x^2))/(3*e^(3/2)) - (d + e*x^2)^(3/2)/(9*e^(3/2)) + (1/3)*x^3*atanh((sqrt(e)*x)/sqrt(d + e*x^2))]
    @test_int [x^0*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 2, -(sqrt(d + e*x^2)/sqrt(e)) + x*atanh((sqrt(e)*x)/sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^2, x, 4, -(atanh((sqrt(e)*x)/sqrt(d + e*x^2))/x) - (sqrt(e)*atanh(sqrt(d + e*x^2)/sqrt(d)))/sqrt(d)]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^4, x, 5, -((sqrt(e)*sqrt(d + e*x^2))/(6*d*x^2)) - atanh((sqrt(e)*x)/sqrt(d + e*x^2))/(3*x^3) + (e^(3/2)*atanh(sqrt(d + e*x^2)/sqrt(d)))/(6*d^(3/2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^6, x, 6, -((sqrt(e)*sqrt(d + e*x^2))/(20*d*x^4)) + (3*e^(3/2)*sqrt(d + e*x^2))/(40*d^2*x^2) - atanh((sqrt(e)*x)/sqrt(d + e*x^2))/(5*x^5) - (3*e^(5/2)*atanh(sqrt(d + e*x^2)/sqrt(d)))/(40*d^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f*x)^(m/2)*(a+b*atanh(c*x/sqrt(d+e*x^2)))*when*e=c^2=#


    @test_int [x^(9/2)*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 6, -((60*d^2*sqrt(x)*sqrt(d + e*x^2))/(847*e^(5/2))) + (36*d*x^(5/2)*sqrt(d + e*x^2))/(847*e^(3/2)) - (4*x^(9/2)*sqrt(d + e*x^2))/(121*sqrt(e)) + (2/11)*x^(11/2)*atanh((sqrt(e)*x)/sqrt(d + e*x^2)) + (30*d^(11/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(847*e^(11/4)*sqrt(d + e*x^2))]
    @test_int [x^(5/2)*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 5, (20*d*sqrt(x)*sqrt(d + e*x^2))/(147*e^(3/2)) - (4*x^(5/2)*sqrt(d + e*x^2))/(49*sqrt(e)) + (2/7)*x^(7/2)*atanh((sqrt(e)*x)/sqrt(d + e*x^2)) - (10*d^(7/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(147*e^(7/4)*sqrt(d + e*x^2))]
    @test_int [x^(1/2)*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 4, -((4*sqrt(x)*sqrt(d + e*x^2))/(9*sqrt(e))) + (2/3)*x^(3/2)*atanh((sqrt(e)*x)/sqrt(d + e*x^2)) + (2*d^(3/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(9*e^(3/4)*sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^(3/2), x, 3, -((2*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/sqrt(x)) + (2*e^(1/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(d^(1/4)*sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^(7/2), x, 4, -((4*sqrt(e)*sqrt(d + e*x^2))/(15*d*x^(3/2))) - (2*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(5*x^(5/2)) - (2*e^(5/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(15*d^(5/4)*sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^(11/2), x, 5, -((4*sqrt(e)*sqrt(d + e*x^2))/(63*d*x^(7/2))) + (20*e^(3/2)*sqrt(d + e*x^2))/(189*d^2*x^(3/2)) - (2*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(9*x^(9/2)) + (10*e^(9/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(189*d^(9/4)*sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^(15/2), x, 6, -((4*sqrt(e)*sqrt(d + e*x^2))/(143*d*x^(11/2))) + (36*e^(3/2)*sqrt(d + e*x^2))/(1001*d^2*x^(7/2)) - (60*e^(5/2)*sqrt(d + e*x^2))/(1001*d^3*x^(3/2)) - (2*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(13*x^(13/2)) - (30*e^(13/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(1001*d^(13/4)*sqrt(d + e*x^2))]

    @test_int [x^(7/2)*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 7, (28*d*x^(3/2)*sqrt(d + e*x^2))/(405*e^(3/2)) - (4*x^(7/2)*sqrt(d + e*x^2))/(81*sqrt(e)) - (28*d^2*sqrt(x)*sqrt(d + e*x^2))/(135*e^2*(sqrt(d) + sqrt(e)*x)) + (2/9)*x^(9/2)*atanh((sqrt(e)*x)/sqrt(d + e*x^2)) + (28*d^(9/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticE(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(135*e^(9/4)*sqrt(d + e*x^2)) - (14*d^(9/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(135*e^(9/4)*sqrt(d + e*x^2))]
    @test_int [x^(3/2)*atanh(sqrt(e)*x/sqrt(d + e*x^2)), x, 6, -((4*x^(3/2)*sqrt(d + e*x^2))/(25*sqrt(e))) + (12*d*sqrt(x)*sqrt(d + e*x^2))/(25*e*(sqrt(d) + sqrt(e)*x)) + (2/5)*x^(5/2)*atanh((sqrt(e)*x)/sqrt(d + e*x^2)) - (12*d^(5/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticE(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(25*e^(5/4)*sqrt(d + e*x^2)) + (6*d^(5/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(25*e^(5/4)*sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^(1/2), x, 5, -((4*sqrt(x)*sqrt(d + e*x^2))/(sqrt(d) + sqrt(e)*x)) + 2*sqrt(x)*atanh((sqrt(e)*x)/sqrt(d + e*x^2)) + (4*d^(1/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticE(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(e^(1/4)*sqrt(d + e*x^2)) - (2*d^(1/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(e^(1/4)*sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^(5/2), x, 6, -((4*sqrt(e)*sqrt(d + e*x^2))/(3*d*sqrt(x))) + (4*e*sqrt(x)*sqrt(d + e*x^2))/(3*d*(sqrt(d) + sqrt(e)*x)) - (2*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(3*x^(3/2)) - (4*e^(3/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticE(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(3*d^(3/4)*sqrt(d + e*x^2)) + (2*e^(3/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(3*d^(3/4)*sqrt(d + e*x^2))]
    @test_int [atanh(sqrt(e)*x/sqrt(d + e*x^2))/x^(9/2), x, 7, -((4*sqrt(e)*sqrt(d + e*x^2))/(35*d*x^(5/2))) + (12*e^(3/2)*sqrt(d + e*x^2))/(35*d^2*sqrt(x)) - (12*e^2*sqrt(x)*sqrt(d + e*x^2))/(35*d^2*(sqrt(d) + sqrt(e)*x)) - (2*atanh((sqrt(e)*x)/sqrt(d + e*x^2)))/(7*x^(7/2)) + (12*e^(7/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticE(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(35*d^(7/4)*sqrt(d + e*x^2)) - (6*e^(7/4)*(sqrt(d) + sqrt(e)*x)*sqrt((d + e*x^2)/(sqrt(d) + sqrt(e)*x)^2)*EllipticF(2*atan((e^(1/4)*sqrt(x))/d^(1/4)), 1/2))/(35*d^(7/4)*sqrt(d + e*x^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*atanh(c+d*x^m))^n=#


    @test_int [x^3*atanh(a + b*x^4), x, 4, ((a + b*x^4)*atanh(a + b*x^4))/(4*b) + log(1 - (a + b*x^4)^2)/(8*b)]


    @test_int [x^(n-1)*atanh(a + b*x^n), x, 4, ((a + b*x^n)*atanh(a + b*x^n))/(b*n) + log(1 - (a + b*x^n)^2)/(2*b*n)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d+e*x^2)^q*(a+b*atanh(sqrt(1-c*x)/sqrt(1+c*x)))^n=#


    @test_int [(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^n/(1 - c^2*x^2), x, 0, Unintegrable((a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^n/(1 - c^2*x^2), x)]


    @test_int [(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^3/(1 - c^2*x^2), x, 9, -((2*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^3*atanh(1 - 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/c) + (3*b*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*PolyLog(2, 1 - 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c) - (3*b*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*PolyLog(2, -1 + 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c) - (3*b^2*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(3, 1 - 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c) + (3*b^2*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(3, -1 + 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c) + (3*b^3*PolyLog(4, 1 - 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/(4*c) - (3*b^3*PolyLog(4, -1 + 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/(4*c)]
    @test_int [(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^2/(1 - c^2*x^2), x, 7, -((2*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*atanh(1 - 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/c) + (b*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(2, 1 - 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/c - (b*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(2, -1 + 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/c - (b^2*PolyLog(3, 1 - 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c) + (b^2*PolyLog(3, -1 + 2/(1 - sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c)]
    @test_int [(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^1/(1 - c^2*x^2), x, 2, -((a*log(sqrt(1 - c*x)/sqrt(1 + c*x)))/c) + (b*PolyLog(2, -(sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c) - (b*PolyLog(2, sqrt(1 - c*x)/sqrt(1 + c*x)))/(2*c)]
    @test_int [1/((a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^1*(1 - c^2*x^2)), x, 0, Unintegrable(1/((1 - c^2*x^2)*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))), x)]
    @test_int [1/((a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*(1 - c^2*x^2)), x, 0, Unintegrable(1/((1 - c^2*x^2)*(a + b*atanh(sqrt(1 - c*x)/sqrt(1 + c*x)))^2), x)]


    #= ::Title::Closed:: =#
    #=Integrands*involving*inverse*hyperbolic*tangents*of*hyperbolic*functions=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(tanh(a+b*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(tanh(a+b*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [atanh(tanh(a + b*x))*x^m, x, 2, -((b*x^(2 + m))/(2 + 3*m + m^2)) + (x^(1 + m)*atanh(tanh(a + b*x)))/(1 + m)]

    @test_int [atanh(tanh(a + b*x))*x^2, x, 2, -((b*x^4)/12) + (1/3)*x^3*atanh(tanh(a + b*x))]
    @test_int [atanh(tanh(a + b*x))*x^1, x, 2, -((b*x^3)/6) + (1/2)*x^2*atanh(tanh(a + b*x))]
    @test_int [atanh(tanh(a + b*x))*x^0, x, 2, atanh(tanh(a + b*x))^2/(2*b)]
    @test_int [atanh(tanh(a + b*x))/x^1, x, 2, b*x - (b*x - atanh(tanh(a + b*x)))*log(x)]
    @test_int [atanh(tanh(a + b*x))/x^2, x, 2, -(atanh(tanh(a + b*x))/x) + b*log(x)]
    @test_int [atanh(tanh(a + b*x))/x^3, x, 2, -(b/(2*x)) - atanh(tanh(a + b*x))/(2*x^2)]
    @test_int [atanh(tanh(a + b*x))/x^4, x, 2, -(b/(6*x^2)) - atanh(tanh(a + b*x))/(3*x^3)]


    @test_int [atanh(tanh(a + b*x))^2*x^m, x, 3, (2*b^2*x^(3 + m))/(6 + 11*m + 6*m^2 + m^3) - (2*b*x^(2 + m)*atanh(tanh(a + b*x)))/(2 + 3*m + m^2) + (x^(1 + m)*atanh(tanh(a + b*x))^2)/(1 + m)]

    @test_int [atanh(tanh(a + b*x))^2*x^3, x, 3, (b^2*x^6)/60 - (1/10)*b*x^5*atanh(tanh(a + b*x)) + (1/4)*x^4*atanh(tanh(a + b*x))^2]
    @test_int [atanh(tanh(a + b*x))^2*x^2, x, 3, (b^2*x^5)/30 - (1/6)*b*x^4*atanh(tanh(a + b*x)) + (1/3)*x^3*atanh(tanh(a + b*x))^2]
    @test_int [atanh(tanh(a + b*x))^2*x^1, x, 3, (x*atanh(tanh(a + b*x))^3)/(3*b) - atanh(tanh(a + b*x))^4/(12*b^2)]
    @test_int [atanh(tanh(a + b*x))^2*x^0, x, 2, atanh(tanh(a + b*x))^3/(3*b)]
    @test_int [atanh(tanh(a + b*x))^2/x^1, x, 3, (-b)*x*(b*x - atanh(tanh(a + b*x))) + (1/2)*atanh(tanh(a + b*x))^2 + (b*x - atanh(tanh(a + b*x)))^2*log(x)]
    @test_int [atanh(tanh(a + b*x))^2/x^2, x, 3, 2*b^2*x - atanh(tanh(a + b*x))^2/x - 2*b*(b*x - atanh(tanh(a + b*x)))*log(x)]
    @test_int [atanh(tanh(a + b*x))^2/x^3, x, 3, -((b*atanh(tanh(a + b*x)))/x) - atanh(tanh(a + b*x))^2/(2*x^2) + b^2*log(x)]
    @test_int [atanh(tanh(a + b*x))^2/x^4, x, 1, atanh(tanh(a + b*x))^3/(3*x^3*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^2/x^5, x, 2, -(b^2/(12*x^2)) - (b*atanh(tanh(a + b*x)))/(6*x^3) - atanh(tanh(a + b*x))^2/(4*x^4), (b*atanh(tanh(a + b*x))^3)/(12*x^3*(b*x - atanh(tanh(a + b*x)))^2) + atanh(tanh(a + b*x))^3/(4*x^4*(b*x - atanh(tanh(a + b*x))))]


    @test_int [atanh(tanh(a + b*x))^3*x^m, x, 4, -((6*b^3*x^(4 + m))/((1 + m)*(24 + 26*m + 9*m^2 + m^3))) + (6*b^2*x^(3 + m)*atanh(tanh(a + b*x)))/(6 + 11*m + 6*m^2 + m^3) - (3*b*x^(2 + m)*atanh(tanh(a + b*x))^2)/(2 + 3*m + m^2) + (x^(1 + m)*atanh(tanh(a + b*x))^3)/(1 + m)]

    @test_int [atanh(tanh(a + b*x))^3*x^3, x, 4, (-(1/140))*b^3*x^7 + (1/20)*b^2*x^6*atanh(tanh(a + b*x)) - (3/20)*b*x^5*atanh(tanh(a + b*x))^2 + (1/4)*x^4*atanh(tanh(a + b*x))^3]
    @test_int [atanh(tanh(a + b*x))^3*x^2, x, 4, (x^2*atanh(tanh(a + b*x))^4)/(4*b) - (x*atanh(tanh(a + b*x))^5)/(10*b^2) + atanh(tanh(a + b*x))^6/(60*b^3)]
    @test_int [atanh(tanh(a + b*x))^3*x^1, x, 3, (x*atanh(tanh(a + b*x))^4)/(4*b) - atanh(tanh(a + b*x))^5/(20*b^2)]
    @test_int [atanh(tanh(a + b*x))^3*x^0, x, 2, atanh(tanh(a + b*x))^4/(4*b)]
    @test_int [atanh(tanh(a + b*x))^3/x^1, x, 4, b*x*(b*x - atanh(tanh(a + b*x)))^2 - (1/2)*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^2 + (1/3)*atanh(tanh(a + b*x))^3 - (b*x - atanh(tanh(a + b*x)))^3*log(x)]
    @test_int [atanh(tanh(a + b*x))^3/x^2, x, 4, -3*b^2*x*(b*x - atanh(tanh(a + b*x))) + (3/2)*b*atanh(tanh(a + b*x))^2 - atanh(tanh(a + b*x))^3/x + 3*b*(b*x - atanh(tanh(a + b*x)))^2*log(x)]
    @test_int [atanh(tanh(a + b*x))^3/x^3, x, 4, 3*b^3*x - (3*b*atanh(tanh(a + b*x))^2)/(2*x) - atanh(tanh(a + b*x))^3/(2*x^2) - 3*b^2*(b*x - atanh(tanh(a + b*x)))*log(x)]
    @test_int [atanh(tanh(a + b*x))^3/x^4, x, 4, -((b^2*atanh(tanh(a + b*x)))/x) - (b*atanh(tanh(a + b*x))^2)/(2*x^2) - atanh(tanh(a + b*x))^3/(3*x^3) + b^3*log(x)]
    @test_int [atanh(tanh(a + b*x))^3/x^5, x, 1, atanh(tanh(a + b*x))^4/(4*x^4*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^3/x^6, x, 2, (b*atanh(tanh(a + b*x))^4)/(20*x^4*(b*x - atanh(tanh(a + b*x)))^2) + atanh(tanh(a + b*x))^4/(5*x^5*(b*x - atanh(tanh(a + b*x))))]


    @test_int [atanh(tanh(a + b*x))^4*x^m, x, 5, (24*b^4*x^(5 + m))/((1 + m)*(2 + m)*(3 + m)*(20 + 9*m + m^2)) - (24*b^3*x^(4 + m)*atanh(tanh(a + b*x)))/((1 + m)*(24 + 26*m + 9*m^2 + m^3)) + (12*b^2*x^(3 + m)*atanh(tanh(a + b*x))^2)/(6 + 11*m + 6*m^2 + m^3) - (4*b*x^(2 + m)*atanh(tanh(a + b*x))^3)/(2 + 3*m + m^2) + (x^(1 + m)*atanh(tanh(a + b*x))^4)/(1 + m)]

    @test_int [atanh(tanh(a + b*x))^4*x^6, x, 5, (b^4*x^11)/2310 - (1/210)*b^3*x^10*atanh(tanh(a + b*x)) + (1/42)*b^2*x^9*atanh(tanh(a + b*x))^2 - (1/14)*b*x^8*atanh(tanh(a + b*x))^3 + (1/7)*x^7*atanh(tanh(a + b*x))^4]
    @test_int [atanh(tanh(a + b*x))^4*x^5, x, 5, (b^4*x^10)/1260 - (1/126)*b^3*x^9*atanh(tanh(a + b*x)) + (1/28)*b^2*x^8*atanh(tanh(a + b*x))^2 - (2/21)*b*x^7*atanh(tanh(a + b*x))^3 + (1/6)*x^6*atanh(tanh(a + b*x))^4]
    @test_int [atanh(tanh(a + b*x))^4*x^4, x, 5, (b^4*x^9)/630 - (1/70)*b^3*x^8*atanh(tanh(a + b*x)) + (2/35)*b^2*x^7*atanh(tanh(a + b*x))^2 - (2/15)*b*x^6*atanh(tanh(a + b*x))^3 + (1/5)*x^5*atanh(tanh(a + b*x))^4]
    @test_int [atanh(tanh(a + b*x))^4*x^3, x, 5, (x^3*atanh(tanh(a + b*x))^5)/(5*b) - (x^2*atanh(tanh(a + b*x))^6)/(10*b^2) + (x*atanh(tanh(a + b*x))^7)/(35*b^3) - atanh(tanh(a + b*x))^8/(280*b^4)]
    @test_int [atanh(tanh(a + b*x))^4*x^2, x, 4, (x^2*atanh(tanh(a + b*x))^5)/(5*b) - (x*atanh(tanh(a + b*x))^6)/(15*b^2) + atanh(tanh(a + b*x))^7/(105*b^3)]
    @test_int [atanh(tanh(a + b*x))^4*x^1, x, 3, (x*atanh(tanh(a + b*x))^5)/(5*b) - atanh(tanh(a + b*x))^6/(30*b^2)]
    @test_int [atanh(tanh(a + b*x))^4*x^0, x, 2, atanh(tanh(a + b*x))^5/(5*b)]
    @test_int [atanh(tanh(a + b*x))^4/x^1, x, 5, (-b)*x*(b*x - atanh(tanh(a + b*x)))^3 + (1/2)*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^2 - (1/3)*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^3 + (1/4)*atanh(tanh(a + b*x))^4 + (b*x - atanh(tanh(a + b*x)))^4*log(x)]
    @test_int [atanh(tanh(a + b*x))^4/x^2, x, 5, 4*b^2*x*(b*x - atanh(tanh(a + b*x)))^2 - 2*b*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^2 + (4/3)*b*atanh(tanh(a + b*x))^3 - atanh(tanh(a + b*x))^4/x - 4*b*(b*x - atanh(tanh(a + b*x)))^3*log(x)]
    @test_int [atanh(tanh(a + b*x))^4/x^3, x, 5, -6*b^3*x*(b*x - atanh(tanh(a + b*x))) + 3*b^2*atanh(tanh(a + b*x))^2 - (2*b*atanh(tanh(a + b*x))^3)/x - atanh(tanh(a + b*x))^4/(2*x^2) + 6*b^2*(b*x - atanh(tanh(a + b*x)))^2*log(x)]
    @test_int [atanh(tanh(a + b*x))^4/x^4, x, 5, 4*b^4*x - (2*b^2*atanh(tanh(a + b*x))^2)/x - (2*b*atanh(tanh(a + b*x))^3)/(3*x^2) - atanh(tanh(a + b*x))^4/(3*x^3) - 4*b^3*(b*x - atanh(tanh(a + b*x)))*log(x)]
    @test_int [atanh(tanh(a + b*x))^4/x^5, x, 5, -((b^3*atanh(tanh(a + b*x)))/x) - (b^2*atanh(tanh(a + b*x))^2)/(2*x^2) - (b*atanh(tanh(a + b*x))^3)/(3*x^3) - atanh(tanh(a + b*x))^4/(4*x^4) + b^4*log(x)]
    @test_int [atanh(tanh(a + b*x))^4/x^6, x, 1, atanh(tanh(a + b*x))^5/(5*x^5*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^4/x^7, x, 2, (b*atanh(tanh(a + b*x))^5)/(30*x^5*(b*x - atanh(tanh(a + b*x)))^2) + atanh(tanh(a + b*x))^5/(6*x^6*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^4/x^8, x, 3, (b^2*atanh(tanh(a + b*x))^5)/(105*x^5*(b*x - atanh(tanh(a + b*x)))^3) + (b*atanh(tanh(a + b*x))^5)/(21*x^6*(b*x - atanh(tanh(a + b*x)))^2) + atanh(tanh(a + b*x))^5/(7*x^7*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^4/x^9, x, 4, -(b^4/(280*x^4)) - (b^3*atanh(tanh(a + b*x)))/(70*x^5) - (b^2*atanh(tanh(a + b*x))^2)/(28*x^6) - (b*atanh(tanh(a + b*x))^3)/(14*x^7) - atanh(tanh(a + b*x))^4/(8*x^8), (b^3*atanh(tanh(a + b*x))^5)/(280*x^5*(b*x - atanh(tanh(a + b*x)))^4) + (b^2*atanh(tanh(a + b*x))^5)/(56*x^6*(b*x - atanh(tanh(a + b*x)))^3) + (3*b*atanh(tanh(a + b*x))^5)/(56*x^7*(b*x - atanh(tanh(a + b*x)))^2) + atanh(tanh(a + b*x))^5/(8*x^8*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^4/x^10, x, 5, -(b^4/(630*x^5)) - (b^3*atanh(tanh(a + b*x)))/(126*x^6) - (b^2*atanh(tanh(a + b*x))^2)/(42*x^7) - (b*atanh(tanh(a + b*x))^3)/(18*x^8) - atanh(tanh(a + b*x))^4/(9*x^9)]
    @test_int [atanh(tanh(a + b*x))^4/x^11, x, 5, -(b^4/(1260*x^6)) - (b^3*atanh(tanh(a + b*x)))/(210*x^7) - (b^2*atanh(tanh(a + b*x))^2)/(60*x^8) - (2*b*atanh(tanh(a + b*x))^3)/(45*x^9) - atanh(tanh(a + b*x))^4/(10*x^10)]


    @test_int [atanh(tanh(a + b*x))^6*x^1, x, 3, (x*atanh(tanh(a + b*x))^7)/(7*b) - atanh(tanh(a + b*x))^8/(56*b^2)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [1/atanh(tanh(a + b*x))*x^m, x, 1, -((x^(1 + m)*Hypergeometric2F1(1, 1 + m, 2 + m, (b*x)/(b*x - atanh(tanh(a + b*x)))))/((1 + m)*(b*x - atanh(tanh(a + b*x)))))]

    @test_int [1/atanh(tanh(a + b*x))*x^3, x, 5, x^3/(3*b) + (x^2*(b*x - atanh(tanh(a + b*x))))/(2*b^2) + (x*(b*x - atanh(tanh(a + b*x)))^2)/b^3 + ((b*x - atanh(tanh(a + b*x)))^3*log(atanh(tanh(a + b*x))))/b^4]
    @test_int [1/atanh(tanh(a + b*x))*x^2, x, 4, x^2/(2*b) + (x*(b*x - atanh(tanh(a + b*x))))/b^2 + ((b*x - atanh(tanh(a + b*x)))^2*log(atanh(tanh(a + b*x))))/b^3]
    @test_int [1/atanh(tanh(a + b*x))*x^1, x, 3, x/b + ((b*x - atanh(tanh(a + b*x)))*log(atanh(tanh(a + b*x))))/b^2]
    @test_int [1/atanh(tanh(a + b*x))*x^0, x, 2, log(atanh(tanh(a + b*x)))/b]
    @test_int [1/atanh(tanh(a + b*x))/x^1, x, 4, -(log(x)/(b*x - atanh(tanh(a + b*x)))) + log(atanh(tanh(a + b*x)))/(b*x - atanh(tanh(a + b*x)))]
    @test_int [1/atanh(tanh(a + b*x))/x^2, x, 5, 1/(x*(b*x - atanh(tanh(a + b*x)))) - (b*log(x))/(b*x - atanh(tanh(a + b*x)))^2 + (b*log(atanh(tanh(a + b*x))))/(b*x - atanh(tanh(a + b*x)))^2]
    @test_int [1/atanh(tanh(a + b*x))/x^3, x, 6, b/(x*(b*x - atanh(tanh(a + b*x)))^2) + 1/(2*x^2*(b*x - atanh(tanh(a + b*x)))) - (b^2*log(x))/(b*x - atanh(tanh(a + b*x)))^3 + (b^2*log(atanh(tanh(a + b*x))))/(b*x - atanh(tanh(a + b*x)))^3]


    @test_int [1/atanh(tanh(a + b*x))^2*x^m, x, 2, -(x^m/(b*atanh(tanh(a + b*x)))) - (x^m*Hypergeometric2F1(1, m, 1 + m, (b*x)/(b*x - atanh(tanh(a + b*x)))))/(b*(b*x - atanh(tanh(a + b*x))))]

    @test_int [1/atanh(tanh(a + b*x))^2*x^4, x, 6, (4*x^3)/(3*b^2) + (2*x^2*(b*x - atanh(tanh(a + b*x))))/b^3 + (4*x*(b*x - atanh(tanh(a + b*x)))^2)/b^4 - x^4/(b*atanh(tanh(a + b*x))) + (4*(b*x - atanh(tanh(a + b*x)))^3*log(atanh(tanh(a + b*x))))/b^5]
    @test_int [1/atanh(tanh(a + b*x))^2*x^3, x, 5, (3*x^2)/(2*b^2) + (3*x*(b*x - atanh(tanh(a + b*x))))/b^3 - x^3/(b*atanh(tanh(a + b*x))) + (3*(b*x - atanh(tanh(a + b*x)))^2*log(atanh(tanh(a + b*x))))/b^4]
    @test_int [1/atanh(tanh(a + b*x))^2*x^2, x, 4, (2*x)/b^2 - x^2/(b*atanh(tanh(a + b*x))) + (2*(b*x - atanh(tanh(a + b*x)))*log(atanh(tanh(a + b*x))))/b^3]
    @test_int [1/atanh(tanh(a + b*x))^2*x^1, x, 3, -(x/(b*atanh(tanh(a + b*x)))) + log(atanh(tanh(a + b*x)))/b^2]
    @test_int [1/atanh(tanh(a + b*x))^2*x^0, x, 2, -(1/(b*atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^2/x^1, x, 5, -(1/((b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x)))) + log(x)/(b*x - atanh(tanh(a + b*x)))^2 - log(atanh(tanh(a + b*x)))/(b*x - atanh(tanh(a + b*x)))^2]
    @test_int [1/atanh(tanh(a + b*x))^2/x^2, x, 6, -((2*b)/((b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x)))) + 1/(x*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))) + (2*b*log(x))/(b*x - atanh(tanh(a + b*x)))^3 - (2*b*log(atanh(tanh(a + b*x))))/(b*x - atanh(tanh(a + b*x)))^3]
    @test_int [1/atanh(tanh(a + b*x))^2/x^3, x, 7, -((3*b^2)/((b*x - atanh(tanh(a + b*x)))^3*atanh(tanh(a + b*x)))) + (3*b)/(2*x*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))) + 1/(2*x^2*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))) + (3*b^2*log(x))/(b*x - atanh(tanh(a + b*x)))^4 - (3*b^2*log(atanh(tanh(a + b*x))))/(b*x - atanh(tanh(a + b*x)))^4]


    @test_int [1/atanh(tanh(a + b*x))^3*x^m, x, 3, -(x^m/(2*b*atanh(tanh(a + b*x))^2)) - (m*x^(-1 + m))/(2*b^2*atanh(tanh(a + b*x))) - (m*x^(-1 + m)*Hypergeometric2F1(1, -1 + m, m, (b*x)/(b*x - atanh(tanh(a + b*x)))))/(2*b^2*(b*x - atanh(tanh(a + b*x))))]

    @test_int [1/atanh(tanh(a + b*x))^3*x^4, x, 6, (3*x^2)/b^3 + (6*x*(b*x - atanh(tanh(a + b*x))))/b^4 - x^4/(2*b*atanh(tanh(a + b*x))^2) - (2*x^3)/(b^2*atanh(tanh(a + b*x))) + (6*(b*x - atanh(tanh(a + b*x)))^2*log(atanh(tanh(a + b*x))))/b^5]
    @test_int [1/atanh(tanh(a + b*x))^3*x^3, x, 5, (3*x)/b^3 - x^3/(2*b*atanh(tanh(a + b*x))^2) - (3*x^2)/(2*b^2*atanh(tanh(a + b*x))) + (3*(b*x - atanh(tanh(a + b*x)))*log(atanh(tanh(a + b*x))))/b^4]
    @test_int [1/atanh(tanh(a + b*x))^3*x^2, x, 4, -(x^2/(2*b*atanh(tanh(a + b*x))^2)) - x/(b^2*atanh(tanh(a + b*x))) + log(atanh(tanh(a + b*x)))/b^3]
    @test_int [1/atanh(tanh(a + b*x))^3*x^1, x, 3, -(x/(2*b*atanh(tanh(a + b*x))^2)) - 1/(2*b^2*atanh(tanh(a + b*x)))]
    @test_int [1/atanh(tanh(a + b*x))^3*x^0, x, 2, -(1/(2*b*atanh(tanh(a + b*x))^2))]
    @test_int [1/atanh(tanh(a + b*x))^3/x^1, x, 6, -(1/(2*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^2)) + 1/((b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))) - log(x)/(b*x - atanh(tanh(a + b*x)))^3 + log(atanh(tanh(a + b*x)))/(b*x - atanh(tanh(a + b*x)))^3]
    @test_int [1/atanh(tanh(a + b*x))^3/x^2, x, 7, -((3*b)/(2*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^2)) + 1/(x*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^2) + (3*b)/((b*x - atanh(tanh(a + b*x)))^3*atanh(tanh(a + b*x))) - (3*b*log(x))/(b*x - atanh(tanh(a + b*x)))^4 + (3*b*log(atanh(tanh(a + b*x))))/(b*x - atanh(tanh(a + b*x)))^4]
    @test_int [1/atanh(tanh(a + b*x))^3/x^3, x, 8, -((3*b^2)/((b*x - atanh(tanh(a + b*x)))^3*atanh(tanh(a + b*x))^2)) + (2*b)/(x*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^2) + 1/(2*x^2*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^2) + (6*b^2)/((b*x - atanh(tanh(a + b*x)))^4*atanh(tanh(a + b*x))) - (6*b^2*log(x))/(b*x - atanh(tanh(a + b*x)))^5 + (6*b^2*log(atanh(tanh(a + b*x))))/(b*x - atanh(tanh(a + b*x)))^5]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(tanh(a+b*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sqrt(atanh(tanh(a + b*x)))*x^4, x, 6, (2*x^4*atanh(tanh(a + b*x))^(3/2))/(3*b) - (16*x^3*atanh(tanh(a + b*x))^(5/2))/(15*b^2) + (32*x^2*atanh(tanh(a + b*x))^(7/2))/(35*b^3) - (128*x*atanh(tanh(a + b*x))^(9/2))/(315*b^4) + (256*atanh(tanh(a + b*x))^(11/2))/(3465*b^5)]
    @test_int [sqrt(atanh(tanh(a + b*x)))*x^3, x, 5, (2*x^3*atanh(tanh(a + b*x))^(3/2))/(3*b) - (4*x^2*atanh(tanh(a + b*x))^(5/2))/(5*b^2) + (16*x*atanh(tanh(a + b*x))^(7/2))/(35*b^3) - (32*atanh(tanh(a + b*x))^(9/2))/(315*b^4)]
    @test_int [sqrt(atanh(tanh(a + b*x)))*x^2, x, 4, (2*x^2*atanh(tanh(a + b*x))^(3/2))/(3*b) - (8*x*atanh(tanh(a + b*x))^(5/2))/(15*b^2) + (16*atanh(tanh(a + b*x))^(7/2))/(105*b^3)]
    @test_int [sqrt(atanh(tanh(a + b*x)))*x^1, x, 3, (2*x*atanh(tanh(a + b*x))^(3/2))/(3*b) - (4*atanh(tanh(a + b*x))^(5/2))/(15*b^2)]
    @test_int [sqrt(atanh(tanh(a + b*x)))*x^0, x, 2, (2*atanh(tanh(a + b*x))^(3/2))/(3*b)]
    @test_int [sqrt(atanh(tanh(a + b*x)))/x^1, x, 2, -2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x))))*sqrt(b*x - atanh(tanh(a + b*x))) + 2*sqrt(atanh(tanh(a + b*x)))]
    @test_int [sqrt(atanh(tanh(a + b*x)))/x^2, x, 2, (b*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/sqrt(b*x - atanh(tanh(a + b*x))) - sqrt(atanh(tanh(a + b*x)))/x]
    @test_int [sqrt(atanh(tanh(a + b*x)))/x^3, x, 4, (b^2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*(b*x - atanh(tanh(a + b*x)))^(3/2)) - b/(4*x*sqrt(atanh(tanh(a + b*x)))) + b^2/(4*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x)))) - sqrt(atanh(tanh(a + b*x)))/(2*x^2)]
    @test_int [sqrt(atanh(tanh(a + b*x)))/x^4, x, 6, (b^3*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(8*(b*x - atanh(tanh(a + b*x)))^(5/2)) + b^2/(24*x*atanh(tanh(a + b*x))^(3/2)) - b^3/(24*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2)) - b/(12*x^2*sqrt(atanh(tanh(a + b*x)))) + b^3/(8*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x)))) - sqrt(atanh(tanh(a + b*x)))/(3*x^3)]


    @test_int [atanh(tanh(a + b*x))^(3/2)*x^4, x, 6, (2*x^4*atanh(tanh(a + b*x))^(5/2))/(5*b) - (16*x^3*atanh(tanh(a + b*x))^(7/2))/(35*b^2) + (32*x^2*atanh(tanh(a + b*x))^(9/2))/(105*b^3) - (128*x*atanh(tanh(a + b*x))^(11/2))/(1155*b^4) + (256*atanh(tanh(a + b*x))^(13/2))/(15015*b^5)]
    @test_int [atanh(tanh(a + b*x))^(3/2)*x^3, x, 5, (2*x^3*atanh(tanh(a + b*x))^(5/2))/(5*b) - (12*x^2*atanh(tanh(a + b*x))^(7/2))/(35*b^2) + (16*x*atanh(tanh(a + b*x))^(9/2))/(105*b^3) - (32*atanh(tanh(a + b*x))^(11/2))/(1155*b^4)]
    @test_int [atanh(tanh(a + b*x))^(3/2)*x^2, x, 4, (2*x^2*atanh(tanh(a + b*x))^(5/2))/(5*b) - (8*x*atanh(tanh(a + b*x))^(7/2))/(35*b^2) + (16*atanh(tanh(a + b*x))^(9/2))/(315*b^3)]
    @test_int [atanh(tanh(a + b*x))^(3/2)*x^1, x, 3, (2*x*atanh(tanh(a + b*x))^(5/2))/(5*b) - (4*atanh(tanh(a + b*x))^(7/2))/(35*b^2)]
    @test_int [atanh(tanh(a + b*x))^(3/2)*x^0, x, 2, (2*atanh(tanh(a + b*x))^(5/2))/(5*b)]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^1, x, 3, 2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^(3/2) - 2*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))) + (2/3)*atanh(tanh(a + b*x))^(3/2)]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^2, x, 3, -3*b*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x))))*sqrt(b*x - atanh(tanh(a + b*x))) + 3*b*sqrt(atanh(tanh(a + b*x))) - atanh(tanh(a + b*x))^(3/2)/x]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^3, x, 3, (3*b^2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*sqrt(b*x - atanh(tanh(a + b*x)))) - (3*b*sqrt(atanh(tanh(a + b*x))))/(4*x) - atanh(tanh(a + b*x))^(3/2)/(2*x^2)]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^4, x, 5, (b^3*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(8*(b*x - atanh(tanh(a + b*x)))^(3/2)) - b^2/(8*x*sqrt(atanh(tanh(a + b*x)))) + b^3/(8*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x)))) - (b*sqrt(atanh(tanh(a + b*x))))/(4*x^2) - atanh(tanh(a + b*x))^(3/2)/(3*x^3)]


    @test_int [atanh(tanh(a + b*x))^(5/2)*x^4, x, 6, (2*x^4*atanh(tanh(a + b*x))^(7/2))/(7*b) - (16*x^3*atanh(tanh(a + b*x))^(9/2))/(63*b^2) + (32*x^2*atanh(tanh(a + b*x))^(11/2))/(231*b^3) - (128*x*atanh(tanh(a + b*x))^(13/2))/(3003*b^4) + (256*atanh(tanh(a + b*x))^(15/2))/(45045*b^5)]
    @test_int [atanh(tanh(a + b*x))^(5/2)*x^3, x, 5, (2*x^3*atanh(tanh(a + b*x))^(7/2))/(7*b) - (4*x^2*atanh(tanh(a + b*x))^(9/2))/(21*b^2) + (16*x*atanh(tanh(a + b*x))^(11/2))/(231*b^3) - (32*atanh(tanh(a + b*x))^(13/2))/(3003*b^4)]
    @test_int [atanh(tanh(a + b*x))^(5/2)*x^2, x, 4, (2*x^2*atanh(tanh(a + b*x))^(7/2))/(7*b) - (8*x*atanh(tanh(a + b*x))^(9/2))/(63*b^2) + (16*atanh(tanh(a + b*x))^(11/2))/(693*b^3)]
    @test_int [atanh(tanh(a + b*x))^(5/2)*x^1, x, 3, (2*x*atanh(tanh(a + b*x))^(7/2))/(7*b) - (4*atanh(tanh(a + b*x))^(9/2))/(63*b^2)]
    @test_int [atanh(tanh(a + b*x))^(5/2)*x^0, x, 2, (2*atanh(tanh(a + b*x))^(7/2))/(7*b)]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^1, x, 4, -2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^(5/2) + 2*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))) - (2/3)*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2) + (2/5)*atanh(tanh(a + b*x))^(5/2)]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^2, x, 4, 5*b*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^(3/2) - 5*b*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))) + (5/3)*b*atanh(tanh(a + b*x))^(3/2) - atanh(tanh(a + b*x))^(5/2)/x]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^3, x, 4, (-(15/4))*b^2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x))))*sqrt(b*x - atanh(tanh(a + b*x))) + (15/4)*b^2*sqrt(atanh(tanh(a + b*x))) - (5*b*atanh(tanh(a + b*x))^(3/2))/(4*x) - atanh(tanh(a + b*x))^(5/2)/(2*x^2)]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^4, x, 4, (5*b^3*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(8*sqrt(b*x - atanh(tanh(a + b*x)))) - (5*b^2*sqrt(atanh(tanh(a + b*x))))/(8*x) - (5*b*atanh(tanh(a + b*x))^(3/2))/(12*x^2) - atanh(tanh(a + b*x))^(5/2)/(3*x^3)]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^5, x, 6, (5*b^4*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(64*(b*x - atanh(tanh(a + b*x)))^(3/2)) - (5*b^3)/(64*x*sqrt(atanh(tanh(a + b*x)))) + (5*b^4)/(64*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x)))) - (5*b^2*sqrt(atanh(tanh(a + b*x))))/(32*x^2) - (5*b*atanh(tanh(a + b*x))^(3/2))/(24*x^3) - atanh(tanh(a + b*x))^(5/2)/(4*x^4)]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^6, x, 8, (3*b^5*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(128*(b*x - atanh(tanh(a + b*x)))^(5/2)) + b^4/(128*x*atanh(tanh(a + b*x))^(3/2)) - b^5/(128*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2)) - b^3/(64*x^2*sqrt(atanh(tanh(a + b*x)))) + (3*b^5)/(128*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x)))) - (b^2*sqrt(atanh(tanh(a + b*x))))/(16*x^3) - (b*atanh(tanh(a + b*x))^(3/2))/(8*x^4) - atanh(tanh(a + b*x))^(5/2)/(5*x^5)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [1/sqrt(atanh(tanh(a + b*x)))*x^4, x, 6, (2*x^4*sqrt(atanh(tanh(a + b*x))))/b - (16*x^3*atanh(tanh(a + b*x))^(3/2))/(3*b^2) + (32*x^2*atanh(tanh(a + b*x))^(5/2))/(5*b^3) - (128*x*atanh(tanh(a + b*x))^(7/2))/(35*b^4) + (256*atanh(tanh(a + b*x))^(9/2))/(315*b^5)]
    @test_int [1/sqrt(atanh(tanh(a + b*x)))*x^3, x, 5, (2*x^3*sqrt(atanh(tanh(a + b*x))))/b - (4*x^2*atanh(tanh(a + b*x))^(3/2))/b^2 + (16*x*atanh(tanh(a + b*x))^(5/2))/(5*b^3) - (32*atanh(tanh(a + b*x))^(7/2))/(35*b^4)]
    @test_int [1/sqrt(atanh(tanh(a + b*x)))*x^2, x, 4, (2*x^2*sqrt(atanh(tanh(a + b*x))))/b - (8*x*atanh(tanh(a + b*x))^(3/2))/(3*b^2) + (16*atanh(tanh(a + b*x))^(5/2))/(15*b^3)]
    @test_int [1/sqrt(atanh(tanh(a + b*x)))*x^1, x, 3, (2*x*sqrt(atanh(tanh(a + b*x))))/b - (4*atanh(tanh(a + b*x))^(3/2))/(3*b^2)]
    @test_int [1/sqrt(atanh(tanh(a + b*x)))*x^0, x, 2, (2*sqrt(atanh(tanh(a + b*x))))/b]
    @test_int [1/sqrt(atanh(tanh(a + b*x)))/x^1, x, 1, (2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/sqrt(b*x - atanh(tanh(a + b*x)))]
    @test_int [1/sqrt(atanh(tanh(a + b*x)))/x^2, x, 3, (b*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(3/2) - 1/(x*sqrt(atanh(tanh(a + b*x)))) + b/((b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/sqrt(atanh(tanh(a + b*x)))/x^3, x, 5, (3*b^2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*(b*x - atanh(tanh(a + b*x)))^(5/2)) + b/(4*x*atanh(tanh(a + b*x))^(3/2)) - b^2/(4*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2)) - 1/(2*x^2*sqrt(atanh(tanh(a + b*x)))) + (3*b^2)/(4*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/sqrt(atanh(tanh(a + b*x)))/x^4, x, 7, (5*b^3*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(8*(b*x - atanh(tanh(a + b*x)))^(7/2)) - b^2/(8*x*atanh(tanh(a + b*x))^(5/2)) + b^3/(8*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(5/2)) + b/(12*x^2*atanh(tanh(a + b*x))^(3/2)) - (5*b^3)/(24*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^(3/2)) - 1/(3*x^3*sqrt(atanh(tanh(a + b*x)))) + (5*b^3)/(8*(b*x - atanh(tanh(a + b*x)))^3*sqrt(atanh(tanh(a + b*x))))]


    @test_int [1/atanh(tanh(a + b*x))^(3/2)*x^4, x, 6, -((2*x^4)/(b*sqrt(atanh(tanh(a + b*x))))) + (16*x^3*sqrt(atanh(tanh(a + b*x))))/b^2 - (32*x^2*atanh(tanh(a + b*x))^(3/2))/b^3 + (128*x*atanh(tanh(a + b*x))^(5/2))/(5*b^4) - (256*atanh(tanh(a + b*x))^(7/2))/(35*b^5)]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)*x^3, x, 5, -((2*x^3)/(b*sqrt(atanh(tanh(a + b*x))))) + (12*x^2*sqrt(atanh(tanh(a + b*x))))/b^2 - (16*x*atanh(tanh(a + b*x))^(3/2))/b^3 + (32*atanh(tanh(a + b*x))^(5/2))/(5*b^4)]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)*x^2, x, 4, -((2*x^2)/(b*sqrt(atanh(tanh(a + b*x))))) + (8*x*sqrt(atanh(tanh(a + b*x))))/b^2 - (16*atanh(tanh(a + b*x))^(3/2))/(3*b^3)]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)*x^1, x, 3, -((2*x)/(b*sqrt(atanh(tanh(a + b*x))))) + (4*sqrt(atanh(tanh(a + b*x))))/b^2]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)*x^0, x, 2, -(2/(b*sqrt(atanh(tanh(a + b*x)))))]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)/x^1, x, 2, -((2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(3/2)) - 2/((b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)/x^2, x, 4, -((3*b*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(5/2)) - 1/(x*atanh(tanh(a + b*x))^(3/2)) + b/((b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2)) - (3*b)/((b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)/x^3, x, 6, -((15*b^2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*(b*x - atanh(tanh(a + b*x)))^(7/2))) + (3*b)/(4*x*atanh(tanh(a + b*x))^(5/2)) - (3*b^2)/(4*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(5/2)) - 1/(2*x^2*atanh(tanh(a + b*x))^(3/2)) + (5*b^2)/(4*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^(3/2)) - (15*b^2)/(4*(b*x - atanh(tanh(a + b*x)))^3*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)/x^4, x, 8, -((35*b^3*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(8*(b*x - atanh(tanh(a + b*x)))^(9/2))) - (5*b^2)/(8*x*atanh(tanh(a + b*x))^(7/2)) + (5*b^3)/(8*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(7/2)) + b/(4*x^2*atanh(tanh(a + b*x))^(5/2)) - (7*b^3)/(8*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^(5/2)) - 1/(3*x^3*atanh(tanh(a + b*x))^(3/2)) + (35*b^3)/(24*(b*x - atanh(tanh(a + b*x)))^3*atanh(tanh(a + b*x))^(3/2)) - (35*b^3)/(8*(b*x - atanh(tanh(a + b*x)))^4*sqrt(atanh(tanh(a + b*x))))]


    @test_int [1/atanh(tanh(a + b*x))^(5/2)*x^4, x, 6, -((2*x^4)/(3*b*atanh(tanh(a + b*x))^(3/2))) - (16*x^3)/(3*b^2*sqrt(atanh(tanh(a + b*x)))) + (32*x^2*sqrt(atanh(tanh(a + b*x))))/b^3 - (128*x*atanh(tanh(a + b*x))^(3/2))/(3*b^4) + (256*atanh(tanh(a + b*x))^(5/2))/(15*b^5)]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)*x^3, x, 5, -((2*x^3)/(3*b*atanh(tanh(a + b*x))^(3/2))) - (4*x^2)/(b^2*sqrt(atanh(tanh(a + b*x)))) + (16*x*sqrt(atanh(tanh(a + b*x))))/b^3 - (32*atanh(tanh(a + b*x))^(3/2))/(3*b^4)]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)*x^2, x, 4, -((2*x^2)/(3*b*atanh(tanh(a + b*x))^(3/2))) - (8*x)/(3*b^2*sqrt(atanh(tanh(a + b*x)))) + (16*sqrt(atanh(tanh(a + b*x))))/(3*b^3)]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)*x^1, x, 3, -((2*x)/(3*b*atanh(tanh(a + b*x))^(3/2))) - 4/(3*b^2*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)*x^0, x, 2, -(2/(3*b*atanh(tanh(a + b*x))^(3/2)))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)/x^1, x, 3, (2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(5/2) - 2/(3*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2)) + 2/((b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)/x^2, x, 5, (5*b*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(7/2) - 1/(x*atanh(tanh(a + b*x))^(5/2)) + b/((b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(5/2)) - (5*b)/(3*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^(3/2)) + (5*b)/((b*x - atanh(tanh(a + b*x)))^3*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)/x^3, x, 7, (35*b^2*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*(b*x - atanh(tanh(a + b*x)))^(9/2)) + (5*b)/(4*x*atanh(tanh(a + b*x))^(7/2)) - (5*b^2)/(4*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(7/2)) - 1/(2*x^2*atanh(tanh(a + b*x))^(5/2)) + (7*b^2)/(4*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^(5/2)) - (35*b^2)/(12*(b*x - atanh(tanh(a + b*x)))^3*atanh(tanh(a + b*x))^(3/2)) + (35*b^2)/(4*(b*x - atanh(tanh(a + b*x)))^4*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)/x^4, x, 9, (105*b^3*atan(sqrt(atanh(tanh(a + b*x)))/sqrt(b*x - atanh(tanh(a + b*x)))))/(8*(b*x - atanh(tanh(a + b*x)))^(11/2)) - (35*b^2)/(24*x*atanh(tanh(a + b*x))^(9/2)) + (35*b^3)/(24*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(9/2)) + (5*b)/(12*x^2*atanh(tanh(a + b*x))^(7/2)) - (15*b^3)/(8*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^(7/2)) - 1/(3*x^3*atanh(tanh(a + b*x))^(5/2)) + (21*b^3)/(8*(b*x - atanh(tanh(a + b*x)))^3*atanh(tanh(a + b*x))^(5/2)) - (35*b^3)/(8*(b*x - atanh(tanh(a + b*x)))^4*atanh(tanh(a + b*x))^(3/2)) + (105*b^3)/(8*(b*x - atanh(tanh(a + b*x)))^5*sqrt(atanh(tanh(a + b*x))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^(m/2)*atanh(tanh(a+b*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^(7/2)*atanh(tanh(a + b*x)), x, 2, (-4*b*x^(11/2))/99 + (2*x^(9/2)*atanh(tanh(a + b*x)))/9]
    @test_int [x^(5/2)*atanh(tanh(a + b*x)), x, 2, (-4*b*x^(9/2))/63 + (2*x^(7/2)*atanh(tanh(a + b*x)))/7]
    @test_int [x^(3/2)*atanh(tanh(a + b*x)), x, 2, (-4*b*x^(7/2))/35 + (2*x^(5/2)*atanh(tanh(a + b*x)))/5]
    @test_int [sqrt(x)*atanh(tanh(a + b*x)), x, 2, (-4*b*x^(5/2))/15 + (2*x^(3/2)*atanh(tanh(a + b*x)))/3]
    @test_int [atanh(tanh(a + b*x))/sqrt(x), x, 2, (-4*b*x^(3/2))/3 + 2*sqrt(x)*atanh(tanh(a + b*x))]
    @test_int [atanh(tanh(a + b*x))/x^(3/2), x, 2, 4*b*sqrt(x) - (2*atanh(tanh(a + b*x)))/sqrt(x)]
    @test_int [atanh(tanh(a + b*x))/x^(5/2), x, 2, (-4*b)/(3*sqrt(x)) - (2*atanh(tanh(a + b*x)))/(3*x^(3/2))]
    @test_int [atanh(tanh(a + b*x))/x^(7/2), x, 2, (-4*b)/(15*x^(3/2)) - (2*atanh(tanh(a + b*x)))/(5*x^(5/2))]


    @test_int [x^(7/2)*atanh(tanh(a + b*x))^2, x, 3, (16*b^2*x^(13/2))/1287 - (8*b*x^(11/2)*atanh(tanh(a + b*x)))/99 + (2*x^(9/2)*atanh(tanh(a + b*x))^2)/9]
    @test_int [x^(5/2)*atanh(tanh(a + b*x))^2, x, 3, (16*b^2*x^(11/2))/693 - (8*b*x^(9/2)*atanh(tanh(a + b*x)))/63 + (2*x^(7/2)*atanh(tanh(a + b*x))^2)/7]
    @test_int [x^(3/2)*atanh(tanh(a + b*x))^2, x, 3, (16*b^2*x^(9/2))/315 - (8*b*x^(7/2)*atanh(tanh(a + b*x)))/35 + (2*x^(5/2)*atanh(tanh(a + b*x))^2)/5]
    @test_int [sqrt(x)*atanh(tanh(a + b*x))^2, x, 3, (16*b^2*x^(7/2))/105 - (8*b*x^(5/2)*atanh(tanh(a + b*x)))/15 + (2*x^(3/2)*atanh(tanh(a + b*x))^2)/3]
    @test_int [atanh(tanh(a + b*x))^2/sqrt(x), x, 3, (16*b^2*x^(5/2))/15 - (8*b*x^(3/2)*atanh(tanh(a + b*x)))/3 + 2*sqrt(x)*atanh(tanh(a + b*x))^2]
    @test_int [atanh(tanh(a + b*x))^2/x^(3/2), x, 3, (-16*b^2*x^(3/2))/3 + 8*b*sqrt(x)*atanh(tanh(a + b*x)) - (2*atanh(tanh(a + b*x))^2)/sqrt(x)]
    @test_int [atanh(tanh(a + b*x))^2/x^(5/2), x, 3, (16*b^2*sqrt(x))/3 - (8*b*atanh(tanh(a + b*x)))/(3*sqrt(x)) - (2*atanh(tanh(a + b*x))^2)/(3*x^(3/2))]
    @test_int [atanh(tanh(a + b*x))^2/x^(7/2), x, 3, (-16*b^2)/(15*sqrt(x)) - (8*b*atanh(tanh(a + b*x)))/(15*x^(3/2)) - (2*atanh(tanh(a + b*x))^2)/(5*x^(5/2))]


    @test_int [x^(7/2)*atanh(tanh(a + b*x))^3, x, 4, (-32*b^3*x^(15/2))/6435 + (16*b^2*x^(13/2)*atanh(tanh(a + b*x)))/429 - (4*b*x^(11/2)*atanh(tanh(a + b*x))^2)/33 + (2*x^(9/2)*atanh(tanh(a + b*x))^3)/9]
    @test_int [x^(5/2)*atanh(tanh(a + b*x))^3, x, 4, (-32*b^3*x^(13/2))/3003 + (16*b^2*x^(11/2)*atanh(tanh(a + b*x)))/231 - (4*b*x^(9/2)*atanh(tanh(a + b*x))^2)/21 + (2*x^(7/2)*atanh(tanh(a + b*x))^3)/7]
    @test_int [x^(3/2)*atanh(tanh(a + b*x))^3, x, 4, (-32*b^3*x^(11/2))/1155 + (16*b^2*x^(9/2)*atanh(tanh(a + b*x)))/105 - (12*b*x^(7/2)*atanh(tanh(a + b*x))^2)/35 + (2*x^(5/2)*atanh(tanh(a + b*x))^3)/5]
    @test_int [sqrt(x)*atanh(tanh(a + b*x))^3, x, 4, (-32*b^3*x^(9/2))/315 + (16*b^2*x^(7/2)*atanh(tanh(a + b*x)))/35 - (4*b*x^(5/2)*atanh(tanh(a + b*x))^2)/5 + (2*x^(3/2)*atanh(tanh(a + b*x))^3)/3]
    @test_int [atanh(tanh(a + b*x))^3/sqrt(x), x, 4, (-32*b^3*x^(7/2))/35 + (16*b^2*x^(5/2)*atanh(tanh(a + b*x)))/5 - 4*b*x^(3/2)*atanh(tanh(a + b*x))^2 + 2*sqrt(x)*atanh(tanh(a + b*x))^3]
    @test_int [atanh(tanh(a + b*x))^3/x^(3/2), x, 4, (32*b^3*x^(5/2))/5 - 16*b^2*x^(3/2)*atanh(tanh(a + b*x)) + 12*b*sqrt(x)*atanh(tanh(a + b*x))^2 - (2*atanh(tanh(a + b*x))^3)/sqrt(x)]
    @test_int [atanh(tanh(a + b*x))^3/x^(5/2), x, 4, (-32*b^3*x^(3/2))/3 + 16*b^2*sqrt(x)*atanh(tanh(a + b*x)) - (4*b*atanh(tanh(a + b*x))^2)/sqrt(x) - (2*atanh(tanh(a + b*x))^3)/(3*x^(3/2))]
    @test_int [atanh(tanh(a + b*x))^3/x^(7/2), x, 4, (32*b^3*sqrt(x))/5 - (16*b^2*atanh(tanh(a + b*x)))/(5*sqrt(x)) - (4*b*atanh(tanh(a + b*x))^2)/(5*x^(3/2)) - (2*atanh(tanh(a + b*x))^3)/(5*x^(5/2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^(7/2)/atanh(tanh(a + b*x)), x, 5, (2*x^(7/2))/(7*b) + (2*x^(5/2)*(b*x - atanh(tanh(a + b*x))))/(5*b^2) + (2*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2)/(3*b^3) + (2*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^3)/b^4 - (2*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^(7/2))/b^(9/2)]
    @test_int [x^(5/2)/atanh(tanh(a + b*x)), x, 4, (2*x^(5/2))/(5*b) + (2*x^(3/2)*(b*x - atanh(tanh(a + b*x))))/(3*b^2) + (2*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2)/b^3 - (2*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^(5/2))/b^(7/2)]
    @test_int [x^(3/2)/atanh(tanh(a + b*x)), x, 3, (2*x^(3/2))/(3*b) + (2*sqrt(x)*(b*x - atanh(tanh(a + b*x))))/b^2 - (2*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^(3/2))/b^(5/2)]
    @test_int [sqrt(x)/atanh(tanh(a + b*x)), x, 2, (2*sqrt(x))/b - (2*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))*sqrt(b*x - atanh(tanh(a + b*x))))/b^(3/2)]
    @test_int [1/(sqrt(x)*atanh(tanh(a + b*x))), x, 1, (-2*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(sqrt(b)*sqrt(b*x - atanh(tanh(a + b*x))))]
    @test_int [1/(x^(3/2)*atanh(tanh(a + b*x))), x, 2, (-2*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(3/2) + 2/(sqrt(x)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [1/(x^(5/2)*atanh(tanh(a + b*x))), x, 3, (-2*b^(3/2)*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(5/2) + (2*b)/(sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2) + 2/(3*x^(3/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [1/(x^(7/2)*atanh(tanh(a + b*x))), x, 4, (-2*b^(5/2)*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(7/2) + (2*b^2)/(sqrt(x)*(b*x - atanh(tanh(a + b*x)))^3) + (2*b)/(3*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2) + 2/(5*x^(5/2)*(b*x - atanh(tanh(a + b*x))))]


    @test_int [x^(7/2)/atanh(tanh(a + b*x))^2, x, 5, (7*x^(5/2))/(5*b^2) + (7*x^(3/2)*(b*x - atanh(tanh(a + b*x))))/(3*b^3) + (7*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2)/b^4 - (7*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^(5/2))/b^(9/2) - x^(7/2)/(b*atanh(tanh(a + b*x)))]
    @test_int [x^(5/2)/atanh(tanh(a + b*x))^2, x, 4, (5*x^(3/2))/(3*b^2) + (5*sqrt(x)*(b*x - atanh(tanh(a + b*x))))/b^3 - (5*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^(3/2))/b^(7/2) - x^(5/2)/(b*atanh(tanh(a + b*x)))]
    @test_int [x^(3/2)/atanh(tanh(a + b*x))^2, x, 3, (3*sqrt(x))/b^2 - (3*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))*sqrt(b*x - atanh(tanh(a + b*x))))/b^(5/2) - x^(3/2)/(b*atanh(tanh(a + b*x)))]
    @test_int [sqrt(x)/atanh(tanh(a + b*x))^2, x, 2, -(atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))/(b^(3/2)*sqrt(b*x - atanh(tanh(a + b*x))))) - sqrt(x)/(b*atanh(tanh(a + b*x)))]
    @test_int [1/(sqrt(x)*atanh(tanh(a + b*x))^2), x, 3, atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))/(sqrt(b)*(b*x - atanh(tanh(a + b*x)))^(3/2)) - 1/(b*sqrt(x)*(b*x - atanh(tanh(a + b*x)))) - 1/(b*sqrt(x)*atanh(tanh(a + b*x)))]
    @test_int [1/(x^(3/2)*atanh(tanh(a + b*x))^2), x, 4, (3*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(5/2) - 3/(sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2) - 1/(b*x^(3/2)*(b*x - atanh(tanh(a + b*x)))) - 1/(b*x^(3/2)*atanh(tanh(a + b*x)))]
    @test_int [1/(x^(5/2)*atanh(tanh(a + b*x))^2), x, 5, (5*b^(3/2)*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(7/2) - (5*b)/(sqrt(x)*(b*x - atanh(tanh(a + b*x)))^3) - 5/(3*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2) - 1/(b*x^(5/2)*(b*x - atanh(tanh(a + b*x)))) - 1/(b*x^(5/2)*atanh(tanh(a + b*x)))]
    @test_int [1/(x^(7/2)*atanh(tanh(a + b*x))^2), x, 6, (7*b^(5/2)*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(b*x - atanh(tanh(a + b*x)))^(9/2) - (7*b^2)/(sqrt(x)*(b*x - atanh(tanh(a + b*x)))^4) - (7*b)/(3*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^3) - 7/(5*x^(5/2)*(b*x - atanh(tanh(a + b*x)))^2) - 1/(b*x^(7/2)*(b*x - atanh(tanh(a + b*x)))) - 1/(b*x^(7/2)*atanh(tanh(a + b*x)))]


    @test_int [x^(7/2)/atanh(tanh(a + b*x))^3, x, 5, (35*x^(3/2))/(12*b^3) + (35*sqrt(x)*(b*x - atanh(tanh(a + b*x))))/(4*b^4) - (35*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^(3/2))/(4*b^(9/2)) - x^(7/2)/(2*b*atanh(tanh(a + b*x))^2) - (7*x^(5/2))/(4*b^2*atanh(tanh(a + b*x)))]
    @test_int [x^(5/2)/atanh(tanh(a + b*x))^3, x, 4, (15*sqrt(x))/(4*b^3) - (15*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))*sqrt(b*x - atanh(tanh(a + b*x))))/(4*b^(7/2)) - x^(5/2)/(2*b*atanh(tanh(a + b*x))^2) - (5*x^(3/2))/(4*b^2*atanh(tanh(a + b*x)))]
    @test_int [x^(3/2)/atanh(tanh(a + b*x))^3, x, 3, (-3*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*b^(5/2)*sqrt(b*x - atanh(tanh(a + b*x)))) - x^(3/2)/(2*b*atanh(tanh(a + b*x))^2) - (3*sqrt(x))/(4*b^2*atanh(tanh(a + b*x)))]
    @test_int [sqrt(x)/atanh(tanh(a + b*x))^3, x, 4, atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x))))/(4*b^(3/2)*(b*x - atanh(tanh(a + b*x)))^(3/2)) - 1/(4*b^2*sqrt(x)*(b*x - atanh(tanh(a + b*x)))) - sqrt(x)/(2*b*atanh(tanh(a + b*x))^2) - 1/(4*b^2*sqrt(x)*atanh(tanh(a + b*x)))]
    @test_int [1/(sqrt(x)*atanh(tanh(a + b*x))^3), x, 5, (-3*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*sqrt(b)*(b*x - atanh(tanh(a + b*x)))^(5/2)) + 3/(4*b*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2) + 1/(4*b^2*x^(3/2)*(b*x - atanh(tanh(a + b*x)))) - 1/(2*b*sqrt(x)*atanh(tanh(a + b*x))^2) + 1/(4*b^2*x^(3/2)*atanh(tanh(a + b*x)))]
    @test_int [1/(x^(3/2)*atanh(tanh(a + b*x))^3), x, 6, (-15*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*(b*x - atanh(tanh(a + b*x)))^(7/2)) + 15/(4*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^3) + 5/(4*b*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2) + 3/(4*b^2*x^(5/2)*(b*x - atanh(tanh(a + b*x)))) - 1/(2*b*x^(3/2)*atanh(tanh(a + b*x))^2) + 3/(4*b^2*x^(5/2)*atanh(tanh(a + b*x)))]
    @test_int [1/(x^(5/2)*atanh(tanh(a + b*x))^3), x, 7, (-35*b^(3/2)*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*(b*x - atanh(tanh(a + b*x)))^(9/2)) + (35*b)/(4*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^4) + 35/(12*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^3) + 7/(4*b*x^(5/2)*(b*x - atanh(tanh(a + b*x)))^2) + 5/(4*b^2*x^(7/2)*(b*x - atanh(tanh(a + b*x)))) - 1/(2*b*x^(5/2)*atanh(tanh(a + b*x))^2) + 5/(4*b^2*x^(7/2)*atanh(tanh(a + b*x)))]
    @test_int [1/(x^(7/2)*atanh(tanh(a + b*x))^3), x, 8, (-63*b^(5/2)*atanh((sqrt(b)*sqrt(x))/sqrt(b*x - atanh(tanh(a + b*x)))))/(4*(b*x - atanh(tanh(a + b*x)))^(11/2)) + (63*b^2)/(4*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^5) + (21*b)/(4*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^4) + 63/(20*x^(5/2)*(b*x - atanh(tanh(a + b*x)))^3) + 9/(4*b*x^(7/2)*(b*x - atanh(tanh(a + b*x)))^2) + 7/(4*b^2*x^(9/2)*(b*x - atanh(tanh(a + b*x)))) - 1/(2*b*x^(7/2)*atanh(tanh(a + b*x))^2) + 7/(4*b^2*x^(9/2)*atanh(tanh(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^(m/2)*atanh(tanh(a+b*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [atanh(tanh(a + b*x))^(1/2)*x^(3/2), x, 4, -((atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^3)/(8*b^(5/2))) + (1/3)*x^(5/2)*sqrt(atanh(tanh(a + b*x))) - (x^(3/2)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))/(12*b) - (sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))/(8*b^2)]
    @test_int [atanh(tanh(a + b*x))^(1/2)*x^(1/2), x, 3, -((atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^2)/(4*b^(3/2))) + (1/2)*x^(3/2)*sqrt(atanh(tanh(a + b*x))) - (sqrt(x)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))/(4*b)]
    @test_int [atanh(tanh(a + b*x))^(1/2)/x^(1/2), x, 2, -((atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x))))/sqrt(b)) + sqrt(x)*sqrt(atanh(tanh(a + b*x)))]
    @test_int [atanh(tanh(a + b*x))^(1/2)/x^(3/2), x, 2, 2*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x)))) - (2*sqrt(atanh(tanh(a + b*x))))/sqrt(x)]
    @test_int [atanh(tanh(a + b*x))^(1/2)/x^(5/2), x, 1, (2*atanh(tanh(a + b*x))^(3/2))/(3*x^(3/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^(1/2)/x^(7/2), x, 2, (4*b*atanh(tanh(a + b*x))^(3/2))/(15*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*atanh(tanh(a + b*x))^(3/2))/(5*x^(5/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^(1/2)/x^(9/2), x, 3, (16*b^2*atanh(tanh(a + b*x))^(3/2))/(105*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^3) + (8*b*atanh(tanh(a + b*x))^(3/2))/(35*x^(5/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*atanh(tanh(a + b*x))^(3/2))/(7*x^(7/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^(1/2)/x^(11/2), x, 4, (32*b^3*atanh(tanh(a + b*x))^(3/2))/(315*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^4) + (16*b^2*atanh(tanh(a + b*x))^(3/2))/(105*x^(5/2)*(b*x - atanh(tanh(a + b*x)))^3) + (4*b*atanh(tanh(a + b*x))^(3/2))/(21*x^(7/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*atanh(tanh(a + b*x))^(3/2))/(9*x^(9/2)*(b*x - atanh(tanh(a + b*x))))]


    @test_int [atanh(tanh(a + b*x))^(3/2)*x^(3/2), x, 5, (3*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^4)/(64*b^(5/2)) - (1/8)*x^(5/2)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))) + (x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))/(32*b) + (3*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^3*sqrt(atanh(tanh(a + b*x))))/(64*b^2) + (1/4)*x^(5/2)*atanh(tanh(a + b*x))^(3/2)]
    @test_int [atanh(tanh(a + b*x))^(3/2)*x^(1/2), x, 4, (atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^3)/(8*b^(3/2)) - (1/4)*x^(3/2)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))) + (sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))/(8*b) + (1/3)*x^(3/2)*atanh(tanh(a + b*x))^(3/2)]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^(1/2), x, 3, (3*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^2)/(4*sqrt(b)) - (3/4)*sqrt(x)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))) + (1/2)*sqrt(x)*atanh(tanh(a + b*x))^(3/2)]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^(3/2), x, 3, -3*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x))) + 3*b*sqrt(x)*sqrt(atanh(tanh(a + b*x))) - (2*atanh(tanh(a + b*x))^(3/2))/sqrt(x)]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^(5/2), x, 3, 2*b^(3/2)*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x)))) - (2*b*sqrt(atanh(tanh(a + b*x))))/sqrt(x) - (2*atanh(tanh(a + b*x))^(3/2))/(3*x^(3/2))]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^(7/2), x, 1, (2*atanh(tanh(a + b*x))^(5/2))/(5*x^(5/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^(9/2), x, 2, (4*b*atanh(tanh(a + b*x))^(5/2))/(35*x^(5/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*atanh(tanh(a + b*x))^(5/2))/(7*x^(7/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^(11/2), x, 3, (16*b^2*atanh(tanh(a + b*x))^(5/2))/(315*x^(5/2)*(b*x - atanh(tanh(a + b*x)))^3) + (8*b*atanh(tanh(a + b*x))^(5/2))/(63*x^(7/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*atanh(tanh(a + b*x))^(5/2))/(9*x^(9/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^(3/2)/x^(13/2), x, 4, (32*b^3*atanh(tanh(a + b*x))^(5/2))/(1155*x^(5/2)*(b*x - atanh(tanh(a + b*x)))^4) + (16*b^2*atanh(tanh(a + b*x))^(5/2))/(231*x^(7/2)*(b*x - atanh(tanh(a + b*x)))^3) + (4*b*atanh(tanh(a + b*x))^(5/2))/(33*x^(9/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*atanh(tanh(a + b*x))^(5/2))/(11*x^(11/2)*(b*x - atanh(tanh(a + b*x))))]


    @test_int [atanh(tanh(a + b*x))^(5/2)*x^(1/2), x, 5, -((5*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^4)/(64*b^(3/2))) + (5/32)*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))) - (5*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^3*sqrt(atanh(tanh(a + b*x))))/(64*b) - (5/24)*x^(3/2)*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2) + (1/4)*x^(3/2)*atanh(tanh(a + b*x))^(5/2)]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^(1/2), x, 4, -((5*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^3)/(8*sqrt(b))) + (5/8)*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))) - (5/12)*sqrt(x)*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2) + (1/3)*sqrt(x)*atanh(tanh(a + b*x))^(5/2)]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^(3/2), x, 4, (15/4)*sqrt(b)*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^2 - (15/4)*b*sqrt(x)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))) + (5/2)*b*sqrt(x)*atanh(tanh(a + b*x))^(3/2) - (2*atanh(tanh(a + b*x))^(5/2))/sqrt(x)]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^(5/2), x, 4, -5*b^(3/2)*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x))) + 5*b^2*sqrt(x)*sqrt(atanh(tanh(a + b*x))) - (10*b*atanh(tanh(a + b*x))^(3/2))/(3*sqrt(x)) - (2*atanh(tanh(a + b*x))^(5/2))/(3*x^(3/2))]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^(7/2), x, 4, 2*b^(5/2)*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x)))) - (2*b^2*sqrt(atanh(tanh(a + b*x))))/sqrt(x) - (2*b*atanh(tanh(a + b*x))^(3/2))/(3*x^(3/2)) - (2*atanh(tanh(a + b*x))^(5/2))/(5*x^(5/2))]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^(9/2), x, 1, (2*atanh(tanh(a + b*x))^(7/2))/(7*x^(7/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^(11/2), x, 2, (4*b*atanh(tanh(a + b*x))^(7/2))/(63*x^(7/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*atanh(tanh(a + b*x))^(7/2))/(9*x^(9/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^(13/2), x, 3, (16*b^2*atanh(tanh(a + b*x))^(7/2))/(693*x^(7/2)*(b*x - atanh(tanh(a + b*x)))^3) + (8*b*atanh(tanh(a + b*x))^(7/2))/(99*x^(9/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*atanh(tanh(a + b*x))^(7/2))/(11*x^(11/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^(5/2)/x^(15/2), x, 4, (32*b^3*atanh(tanh(a + b*x))^(7/2))/(3003*x^(7/2)*(b*x - atanh(tanh(a + b*x)))^4) + (16*b^2*atanh(tanh(a + b*x))^(7/2))/(429*x^(9/2)*(b*x - atanh(tanh(a + b*x)))^3) + (12*b*atanh(tanh(a + b*x))^(7/2))/(143*x^(11/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*atanh(tanh(a + b*x))^(7/2))/(13*x^(13/2)*(b*x - atanh(tanh(a + b*x))))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [1/atanh(tanh(a + b*x))^(1/2)*x^(5/2), x, 4, (5*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^3)/(8*b^(7/2)) + (x^(5/2)*sqrt(atanh(tanh(a + b*x))))/(3*b) + (5*x^(3/2)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))/(12*b^2) + (5*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))/(8*b^3)]
    @test_int [1/atanh(tanh(a + b*x))^(1/2)*x^(3/2), x, 3, (3*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^2)/(4*b^(5/2)) + (x^(3/2)*sqrt(atanh(tanh(a + b*x))))/(2*b) + (3*sqrt(x)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))/(4*b^2)]
    @test_int [1/atanh(tanh(a + b*x))^(1/2)*x^(1/2), x, 2, (atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x))))/b^(3/2) + (sqrt(x)*sqrt(atanh(tanh(a + b*x))))/b]
    @test_int [1/atanh(tanh(a + b*x))^(1/2)/x^(1/2), x, 1, (2*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x)))))/sqrt(b)]
    @test_int [1/atanh(tanh(a + b*x))^(1/2)/x^(3/2), x, 1, (2*sqrt(atanh(tanh(a + b*x))))/(sqrt(x)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(1/2)/x^(5/2), x, 2, (4*b*sqrt(atanh(tanh(a + b*x))))/(3*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2) + (2*sqrt(atanh(tanh(a + b*x))))/(3*x^(3/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(1/2)/x^(7/2), x, 3, (16*b^2*sqrt(atanh(tanh(a + b*x))))/(15*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^3) + (8*b*sqrt(atanh(tanh(a + b*x))))/(15*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*sqrt(atanh(tanh(a + b*x))))/(5*x^(5/2)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(1/2)/x^(9/2), x, 4, (32*b^3*sqrt(atanh(tanh(a + b*x))))/(35*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^4) + (16*b^2*sqrt(atanh(tanh(a + b*x))))/(35*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^3) + (12*b*sqrt(atanh(tanh(a + b*x))))/(35*x^(5/2)*(b*x - atanh(tanh(a + b*x)))^2) + (2*sqrt(atanh(tanh(a + b*x))))/(7*x^(7/2)*(b*x - atanh(tanh(a + b*x))))]


    @test_int [1/atanh(tanh(a + b*x))^(3/2)*x^(7/2), x, 5, (35*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^3)/(8*b^(9/2)) - (2*x^(7/2))/(b*sqrt(atanh(tanh(a + b*x)))) + (7*x^(5/2)*sqrt(atanh(tanh(a + b*x))))/(3*b^2) + (35*x^(3/2)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))/(12*b^3) + (35*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))/(8*b^4)]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)*x^(5/2), x, 4, (15*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^2)/(4*b^(7/2)) - (2*x^(5/2))/(b*sqrt(atanh(tanh(a + b*x)))) + (5*x^(3/2)*sqrt(atanh(tanh(a + b*x))))/(2*b^2) + (15*sqrt(x)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))/(4*b^3)]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)*x^(3/2), x, 3, (3*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x))))/b^(5/2) - (2*x^(3/2))/(b*sqrt(atanh(tanh(a + b*x)))) + (3*sqrt(x)*sqrt(atanh(tanh(a + b*x))))/b^2]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)*x^(1/2), x, 2, (2*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x)))))/b^(3/2) - (2*sqrt(x))/(b*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)/x^(1/2), x, 1, -((2*sqrt(x))/((b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x)))))]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)/x^(3/2), x, 2, -((4*b*sqrt(x))/((b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))) + 2/(sqrt(x)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)/x^(5/2), x, 3, -((16*b^2*sqrt(x))/(3*(b*x - atanh(tanh(a + b*x)))^3*sqrt(atanh(tanh(a + b*x))))) + (8*b)/(3*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x)))) + 2/(3*x^(3/2)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(3/2)/x^(7/2), x, 4, -((32*b^3*sqrt(x))/(5*(b*x - atanh(tanh(a + b*x)))^4*sqrt(atanh(tanh(a + b*x))))) + (16*b^2)/(5*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^3*sqrt(atanh(tanh(a + b*x)))) + (4*b)/(5*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x)))) + 2/(5*x^(5/2)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))]


    @test_int [1/atanh(tanh(a + b*x))^(5/2)*x^(7/2), x, 5, (35*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x)))^2)/(4*b^(9/2)) - (2*x^(7/2))/(3*b*atanh(tanh(a + b*x))^(3/2)) - (14*x^(5/2))/(3*b^2*sqrt(atanh(tanh(a + b*x)))) + (35*x^(3/2)*sqrt(atanh(tanh(a + b*x))))/(6*b^3) + (35*sqrt(x)*(b*x - atanh(tanh(a + b*x)))*sqrt(atanh(tanh(a + b*x))))/(4*b^4)]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)*x^(5/2), x, 4, (5*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x))))*(b*x - atanh(tanh(a + b*x))))/b^(7/2) - (2*x^(5/2))/(3*b*atanh(tanh(a + b*x))^(3/2)) - (10*x^(3/2))/(3*b^2*sqrt(atanh(tanh(a + b*x)))) + (5*sqrt(x)*sqrt(atanh(tanh(a + b*x))))/b^3]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)*x^(3/2), x, 3, (2*atanh((sqrt(b)*sqrt(x))/sqrt(atanh(tanh(a + b*x)))))/b^(5/2) - (2*x^(3/2))/(3*b*atanh(tanh(a + b*x))^(3/2)) - (2*sqrt(x))/(b^2*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)*x^(1/2), x, 1, -((2*x^(3/2))/(3*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2)))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)/x^(1/2), x, 2, -((2*sqrt(x))/(3*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2))) + (4*sqrt(x))/(3*(b*x - atanh(tanh(a + b*x)))^2*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)/x^(3/2), x, 3, -((8*b*sqrt(x))/(3*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^(3/2))) + 2/(sqrt(x)*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2)) + (16*b*sqrt(x))/(3*(b*x - atanh(tanh(a + b*x)))^3*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)/x^(5/2), x, 4, -((16*b^2*sqrt(x))/(3*(b*x - atanh(tanh(a + b*x)))^3*atanh(tanh(a + b*x))^(3/2))) + (4*b)/(sqrt(x)*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^(3/2)) + 2/(3*x^(3/2)*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2)) + (32*b^2*sqrt(x))/(3*(b*x - atanh(tanh(a + b*x)))^4*sqrt(atanh(tanh(a + b*x))))]
    @test_int [1/atanh(tanh(a + b*x))^(5/2)/x^(7/2), x, 5, -((128*b^3*sqrt(x))/(15*(b*x - atanh(tanh(a + b*x)))^4*atanh(tanh(a + b*x))^(3/2))) + (32*b^2)/(5*sqrt(x)*(b*x - atanh(tanh(a + b*x)))^3*atanh(tanh(a + b*x))^(3/2)) + (16*b)/(15*x^(3/2)*(b*x - atanh(tanh(a + b*x)))^2*atanh(tanh(a + b*x))^(3/2)) + 2/(5*x^(5/2)*(b*x - atanh(tanh(a + b*x)))*atanh(tanh(a + b*x))^(3/2)) + (256*b^3*sqrt(x))/(15*(b*x - atanh(tanh(a + b*x)))^5*sqrt(atanh(tanh(a + b*x))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(tanh(a+b*x))^n*when*n*symbolic=#


    @test_int [atanh(tanh(a + b*x))^n*x^m, x, 1, (1/(b*(1 + n)))*((x^m*atanh(tanh(a + b*x))^(1 + n)*Hypergeometric2F1(-m, 1 + n, 2 + n, -(atanh(tanh(a + b*x))/(b*x - atanh(tanh(a + b*x))))))/((b*x)/(b*x - atanh(tanh(a + b*x))))^m)]

    @test_int [atanh(tanh(a + b*x))^n*x^4, x, 6, If($VersionNumber>=8, (x^4*atanh(tanh(a + b*x))^(1 + n))/(b*(1 + n)) - (4*x^3*atanh(tanh(a + b*x))^(2 + n))/(b^2*(1 + n)*(2 + n)) + (12*x^2*atanh(tanh(a + b*x))^(3 + n))/(b^3*(1 + n)*(2 + n)*(3 + n)) - (24*x*atanh(tanh(a + b*x))^(4 + n))/(b^4*(1 + n)*(2 + n)*(3 + n)*(4 + n)) + (24*atanh(tanh(a + b*x))^(5 + n))/(b^5*(1 + n)*(2 + n)*(3 + n)*(4 + n)*(5 + n)), (x^4*atanh(tanh(a + b*x))^(1 + n))/(b*(1 + n)) - (4*x^3*atanh(tanh(a + b*x))^(2 + n))/(b^2*(1 + n)*(2 + n)) + (12*x^2*atanh(tanh(a + b*x))^(3 + n))/(b^3*(3 + n)*(2 + 3*n + n^2)) - (24*x*atanh(tanh(a + b*x))^(4 + n))/(b^4*(4 + 5*n + n^2)*(6 + 5*n + n^2)) + (24*atanh(tanh(a + b*x))^(5 + n))/(b^5*(12 + 7*n + n^2)*(10 + 17*n + 8*n^2 + n^3)))]
    @test_int [atanh(tanh(a + b*x))^n*x^3, x, 5, If($VersionNumber>=8, (x^3*atanh(tanh(a + b*x))^(1 + n))/(b*(1 + n)) - (3*x^2*atanh(tanh(a + b*x))^(2 + n))/(b^2*(1 + n)*(2 + n)) + (6*x*atanh(tanh(a + b*x))^(3 + n))/(b^3*(1 + n)*(2 + n)*(3 + n)) - (6*atanh(tanh(a + b*x))^(4 + n))/(b^4*(1 + n)*(2 + n)*(3 + n)*(4 + n)), (x^3*atanh(tanh(a + b*x))^(1 + n))/(b*(1 + n)) - (3*x^2*atanh(tanh(a + b*x))^(2 + n))/(b^2*(1 + n)*(2 + n)) + (6*x*atanh(tanh(a + b*x))^(3 + n))/(b^3*(3 + n)*(2 + 3*n + n^2)) - (6*atanh(tanh(a + b*x))^(4 + n))/(b^4*(4 + 5*n + n^2)*(6 + 5*n + n^2)))]
    @test_int [atanh(tanh(a + b*x))^n*x^2, x, 4, If($VersionNumber>=8, (x^2*atanh(tanh(a + b*x))^(1 + n))/(b*(1 + n)) - (2*x*atanh(tanh(a + b*x))^(2 + n))/(b^2*(1 + n)*(2 + n)) + (2*atanh(tanh(a + b*x))^(3 + n))/(b^3*(1 + n)*(2 + n)*(3 + n)), (x^2*atanh(tanh(a + b*x))^(1 + n))/(b*(1 + n)) - (2*x*atanh(tanh(a + b*x))^(2 + n))/(b^2*(1 + n)*(2 + n)) + (2*atanh(tanh(a + b*x))^(3 + n))/(b^3*(3 + n)*(2 + 3*n + n^2)))]
    @test_int [atanh(tanh(a + b*x))^n*x^1, x, 3, (x*atanh(tanh(a + b*x))^(1 + n))/(b*(1 + n)) - atanh(tanh(a + b*x))^(2 + n)/(b^2*(1 + n)*(2 + n))]
    @test_int [atanh(tanh(a + b*x))^n*x^0, x, 2, atanh(tanh(a + b*x))^(1 + n)/(b*(1 + n))]
    @test_int [atanh(tanh(a + b*x))^n/x^1, x, 1, (atanh(tanh(a + b*x))^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, -(atanh(tanh(a + b*x))/(b*x - atanh(tanh(a + b*x))))))/((1 + n)*(b*x - atanh(tanh(a + b*x))))]
    @test_int [atanh(tanh(a + b*x))^n/x^2, x, 2, -(atanh(tanh(a + b*x))^n/x) + (b*atanh(tanh(a + b*x))^n*Hypergeometric2F1(1, n, 1 + n, -(atanh(tanh(a + b*x))/(b*x - atanh(tanh(a + b*x))))))/(b*x - atanh(tanh(a + b*x)))]
    @test_int [atanh(tanh(a + b*x))^n/x^3, x, 3, -((b*n*atanh(tanh(a + b*x))^(-1 + n))/(2*x)) - atanh(tanh(a + b*x))^n/(2*x^2) + (b^2*n*atanh(tanh(a + b*x))^(-1 + n)*Hypergeometric2F1(1, -1 + n, n, -(atanh(tanh(a + b*x))/(b*x - atanh(tanh(a + b*x))))))/(2*(b*x - atanh(tanh(a + b*x))))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(coth(a+b*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(coth(a+b*x))^n=#


    @test_int [acoth(tanh(a + b*x))*x^m, x, 2, -((b*x^(2 + m))/(2 + 3*m + m^2)) + (x^(1 + m)*acoth(tanh(a + b*x)))/(1 + m)]

    @test_int [atanh(coth(a + b*x))*x^2, x, 2, -((b*x^4)/12) + (1/3)*x^3*atanh(coth(a + b*x))]
    @test_int [atanh(coth(a + b*x))*x^1, x, 2, -((b*x^3)/6) + (1/2)*x^2*atanh(coth(a + b*x))]
    @test_int [atanh(coth(a + b*x))*x^0, x, 2, atanh(coth(a + b*x))^2/(2*b)]
    @test_int [atanh(coth(a + b*x))/x^1, x, 2, b*x - (b*x - atanh(coth(a + b*x)))*log(x)]
    @test_int [atanh(coth(a + b*x))/x^2, x, 2, -(atanh(coth(a + b*x))/x) + b*log(x)]
    @test_int [atanh(coth(a + b*x))/x^3, x, 2, -(b/(2*x)) - atanh(coth(a + b*x))/(2*x^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(c+d*Hyper(a+b*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(c+d*sinh(a+b*x))=#


    #= [atanh(sinh(x)), x, 6, 0]
    @test_int [x*atanh(sinh(x)), x, 8, 0]
    @test_int [x^2*atanh(sinh(x)), x, 10, 0] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(c+d*cosh(a+b*x))=#


    @test_int [atanh(cosh(x)), x, 6, -2*x*atanh(ℯ^x) + x*atanh(cosh(x)) - PolyLog(2, -ℯ^x) + PolyLog(2, ℯ^x)]
    @test_int [x*atanh(cosh(x)), x, 8, (-x^2)*atanh(ℯ^x) + (1/2)*x^2*atanh(cosh(x)) - x*PolyLog(2, -ℯ^x) + x*PolyLog(2, ℯ^x) + PolyLog(3, -ℯ^x) - PolyLog(3, ℯ^x)]
    @test_int [x^2*atanh(cosh(x)), x, 10, (-(2/3))*x^3*atanh(ℯ^x) + (1/3)*x^3*atanh(cosh(x)) - x^2*PolyLog(2, -ℯ^x) + x^2*PolyLog(2, ℯ^x) + 2*x*PolyLog(3, -ℯ^x) - 2*x*PolyLog(3, ℯ^x) - 2*PolyLog(4, -ℯ^x) + 2*PolyLog(4, ℯ^x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(c+d*tanh(a+b*x))=#


    @test_int [atanh(c + d*tanh(a + b*x))*x^2, x, 11, (1/3)*x^3*atanh(c + d*tanh(a + b*x)) + (1/6)*x^3*log(1 + ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)) - (1/6)*x^3*log(1 + ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)) + (x^2*PolyLog(2, -(((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d))))/(4*b) - (x^2*PolyLog(2, -(((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d))))/(4*b) - (x*PolyLog(3, -(((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d))))/(4*b^2) + (x*PolyLog(3, -(((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d))))/(4*b^2) + PolyLog(4, -(((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)))/(8*b^3) - PolyLog(4, -(((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)))/(8*b^3)]
    @test_int [atanh(c + d*tanh(a + b*x))*x^1, x, 9, (1/2)*x^2*atanh(c + d*tanh(a + b*x)) + (1/4)*x^2*log(1 + ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)) - (1/4)*x^2*log(1 + ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)) + (x*PolyLog(2, -(((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d))))/(4*b) - (x*PolyLog(2, -(((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d))))/(4*b) - PolyLog(3, -(((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)))/(8*b^2) + PolyLog(3, -(((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)))/(8*b^2)]
    @test_int [atanh(c + d*tanh(a + b*x))*x^0, x, 7, x*atanh(c + d*tanh(a + b*x)) + (1/2)*x*log(1 + ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)) - (1/2)*x*log(1 + ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)) + PolyLog(2, -(((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)))/(4*b) - PolyLog(2, -(((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)))/(4*b)]
    @test_int [atanh(c + d*tanh(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(c + d*tanh(a + b*x))/x, x)]


    @test_int [atanh(1 + d + d*tanh(a + b*x))*x^3, x, 8, (b*x^5)/20 + (1/4)*x^4*atanh(1 + d + d*tanh(a + b*x)) - (1/8)*x^4*log(1 + (1 + d)*ℯ^(2*a + 2*b*x)) - (x^3*PolyLog(2, -((1 + d)*ℯ^(2*a + 2*b*x))))/(4*b) + (3*x^2*PolyLog(3, -((1 + d)*ℯ^(2*a + 2*b*x))))/(8*b^2) - (3*x*PolyLog(4, -((1 + d)*ℯ^(2*a + 2*b*x))))/(8*b^3) + (3*PolyLog(5, -((1 + d)*ℯ^(2*a + 2*b*x))))/(16*b^4)]
    @test_int [atanh(1 + d + d*tanh(a + b*x))*x^2, x, 7, (b*x^4)/12 + (1/3)*x^3*atanh(1 + d + d*tanh(a + b*x)) - (1/6)*x^3*log(1 + (1 + d)*ℯ^(2*a + 2*b*x)) - (x^2*PolyLog(2, -((1 + d)*ℯ^(2*a + 2*b*x))))/(4*b) + (x*PolyLog(3, -((1 + d)*ℯ^(2*a + 2*b*x))))/(4*b^2) - PolyLog(4, -((1 + d)*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [atanh(1 + d + d*tanh(a + b*x))*x^1, x, 6, (b*x^3)/6 + (1/2)*x^2*atanh(1 + d + d*tanh(a + b*x)) - (1/4)*x^2*log(1 + (1 + d)*ℯ^(2*a + 2*b*x)) - (x*PolyLog(2, -((1 + d)*ℯ^(2*a + 2*b*x))))/(4*b) + PolyLog(3, -((1 + d)*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [atanh(1 + d + d*tanh(a + b*x))*x^0, x, 5, (b*x^2)/2 + x*atanh(1 + d + d*tanh(a + b*x)) - (1/2)*x*log(1 + (1 + d)*ℯ^(2*a + 2*b*x)) - PolyLog(2, -((1 + d)*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [atanh(1 + d + d*tanh(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(1 + d + d*tanh(a + b*x))/x, x)]


    @test_int [atanh(1 - d - d*tanh(a + b*x))*x^3, x, 8, (b*x^5)/20 + (1/4)*x^4*atanh(1 - d - d*tanh(a + b*x)) - (1/8)*x^4*log(1 + (1 - d)*ℯ^(2*a + 2*b*x)) - (x^3*PolyLog(2, -((1 - d)*ℯ^(2*a + 2*b*x))))/(4*b) + (3*x^2*PolyLog(3, -((1 - d)*ℯ^(2*a + 2*b*x))))/(8*b^2) - (3*x*PolyLog(4, -((1 - d)*ℯ^(2*a + 2*b*x))))/(8*b^3) + (3*PolyLog(5, -((1 - d)*ℯ^(2*a + 2*b*x))))/(16*b^4)]
    @test_int [atanh(1 - d - d*tanh(a + b*x))*x^2, x, 7, (b*x^4)/12 + (1/3)*x^3*atanh(1 - d - d*tanh(a + b*x)) - (1/6)*x^3*log(1 + (1 - d)*ℯ^(2*a + 2*b*x)) - (x^2*PolyLog(2, -((1 - d)*ℯ^(2*a + 2*b*x))))/(4*b) + (x*PolyLog(3, -((1 - d)*ℯ^(2*a + 2*b*x))))/(4*b^2) - PolyLog(4, -((1 - d)*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [atanh(1 - d - d*tanh(a + b*x))*x^1, x, 6, (b*x^3)/6 + (1/2)*x^2*atanh(1 - d - d*tanh(a + b*x)) - (1/4)*x^2*log(1 + (1 - d)*ℯ^(2*a + 2*b*x)) - (x*PolyLog(2, -((1 - d)*ℯ^(2*a + 2*b*x))))/(4*b) + PolyLog(3, -((1 - d)*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [atanh(1 - d - d*tanh(a + b*x))*x^0, x, 5, (b*x^2)/2 + x*atanh(1 - d - d*tanh(a + b*x)) - (1/2)*x*log(1 + (1 - d)*ℯ^(2*a + 2*b*x)) - PolyLog(2, -((1 - d)*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [atanh(1 - d - d*tanh(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(1 - d - d*tanh(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(c+d*coth(a+b*x))=#


    @test_int [atanh(c + d*coth(a + b*x))*x^2, x, 11, (1/3)*x^3*atanh(c + d*coth(a + b*x)) + (1/6)*x^3*log(1 - ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)) - (1/6)*x^3*log(1 - ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)) + (x^2*PolyLog(2, ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)))/(4*b) - (x^2*PolyLog(2, ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)))/(4*b) - (x*PolyLog(3, ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)))/(4*b^2) + (x*PolyLog(3, ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)))/(4*b^2) + PolyLog(4, ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d))/(8*b^3) - PolyLog(4, ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d))/(8*b^3)]
    @test_int [atanh(c + d*coth(a + b*x))*x^1, x, 9, (1/2)*x^2*atanh(c + d*coth(a + b*x)) + (1/4)*x^2*log(1 - ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)) - (1/4)*x^2*log(1 - ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)) + (x*PolyLog(2, ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)))/(4*b) - (x*PolyLog(2, ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)))/(4*b) - PolyLog(3, ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d))/(8*b^2) + PolyLog(3, ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d))/(8*b^2)]
    @test_int [atanh(c + d*coth(a + b*x))*x^0, x, 7, x*atanh(c + d*coth(a + b*x)) + (1/2)*x*log(1 - ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d)) - (1/2)*x*log(1 - ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d)) + PolyLog(2, ((1 - c - d)*ℯ^(2*a + 2*b*x))/(1 - c + d))/(4*b) - PolyLog(2, ((1 + c + d)*ℯ^(2*a + 2*b*x))/(1 + c - d))/(4*b)]
    @test_int [atanh(c + d*coth(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(c + d*coth(a + b*x))/x, x)]


    @test_int [atanh(1 + d + d*coth(a + b*x))*x^3, x, 8, (b*x^5)/20 + (1/4)*x^4*atanh(1 + d + d*coth(a + b*x)) - (1/8)*x^4*log(1 - (1 + d)*ℯ^(2*a + 2*b*x)) - (x^3*PolyLog(2, (1 + d)*ℯ^(2*a + 2*b*x)))/(4*b) + (3*x^2*PolyLog(3, (1 + d)*ℯ^(2*a + 2*b*x)))/(8*b^2) - (3*x*PolyLog(4, (1 + d)*ℯ^(2*a + 2*b*x)))/(8*b^3) + (3*PolyLog(5, (1 + d)*ℯ^(2*a + 2*b*x)))/(16*b^4)]
    @test_int [atanh(1 + d + d*coth(a + b*x))*x^2, x, 7, (b*x^4)/12 + (1/3)*x^3*atanh(1 + d + d*coth(a + b*x)) - (1/6)*x^3*log(1 - (1 + d)*ℯ^(2*a + 2*b*x)) - (x^2*PolyLog(2, (1 + d)*ℯ^(2*a + 2*b*x)))/(4*b) + (x*PolyLog(3, (1 + d)*ℯ^(2*a + 2*b*x)))/(4*b^2) - PolyLog(4, (1 + d)*ℯ^(2*a + 2*b*x))/(8*b^3)]
    @test_int [atanh(1 + d + d*coth(a + b*x))*x^1, x, 6, (b*x^3)/6 + (1/2)*x^2*atanh(1 + d + d*coth(a + b*x)) - (1/4)*x^2*log(1 - (1 + d)*ℯ^(2*a + 2*b*x)) - (x*PolyLog(2, (1 + d)*ℯ^(2*a + 2*b*x)))/(4*b) + PolyLog(3, (1 + d)*ℯ^(2*a + 2*b*x))/(8*b^2)]
    @test_int [atanh(1 + d + d*coth(a + b*x))*x^0, x, 5, (b*x^2)/2 + x*atanh(1 + d + d*coth(a + b*x)) - (1/2)*x*log(1 - (1 + d)*ℯ^(2*a + 2*b*x)) - PolyLog(2, (1 + d)*ℯ^(2*a + 2*b*x))/(4*b)]
    @test_int [atanh(1 + d + d*coth(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(1 + d + d*coth(a + b*x))/x, x)]


    @test_int [atanh(1 - d - d*coth(a + b*x))*x^3, x, 8, (b*x^5)/20 + (1/4)*x^4*atanh(1 - d - d*coth(a + b*x)) - (1/8)*x^4*log(1 - (1 - d)*ℯ^(2*a + 2*b*x)) - (x^3*PolyLog(2, (1 - d)*ℯ^(2*a + 2*b*x)))/(4*b) + (3*x^2*PolyLog(3, (1 - d)*ℯ^(2*a + 2*b*x)))/(8*b^2) - (3*x*PolyLog(4, (1 - d)*ℯ^(2*a + 2*b*x)))/(8*b^3) + (3*PolyLog(5, (1 - d)*ℯ^(2*a + 2*b*x)))/(16*b^4)]
    @test_int [atanh(1 - d - d*coth(a + b*x))*x^2, x, 7, (b*x^4)/12 + (1/3)*x^3*atanh(1 - d - d*coth(a + b*x)) - (1/6)*x^3*log(1 - (1 - d)*ℯ^(2*a + 2*b*x)) - (x^2*PolyLog(2, (1 - d)*ℯ^(2*a + 2*b*x)))/(4*b) + (x*PolyLog(3, (1 - d)*ℯ^(2*a + 2*b*x)))/(4*b^2) - PolyLog(4, (1 - d)*ℯ^(2*a + 2*b*x))/(8*b^3)]
    @test_int [atanh(1 - d - d*coth(a + b*x))*x^1, x, 6, (b*x^3)/6 + (1/2)*x^2*atanh(1 - d - d*coth(a + b*x)) - (1/4)*x^2*log(1 - (1 - d)*ℯ^(2*a + 2*b*x)) - (x*PolyLog(2, (1 - d)*ℯ^(2*a + 2*b*x)))/(4*b) + PolyLog(3, (1 - d)*ℯ^(2*a + 2*b*x))/(8*b^2)]
    @test_int [atanh(1 - d - d*coth(a + b*x))*x^0, x, 5, (b*x^2)/2 + x*atanh(1 - d - d*coth(a + b*x)) - (1/2)*x*log(1 - (1 - d)*ℯ^(2*a + 2*b*x)) - PolyLog(2, (1 - d)*ℯ^(2*a + 2*b*x))/(4*b)]
    @test_int [atanh(1 - d - d*coth(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(1 - d - d*coth(a + b*x))/x, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(c+d*Trig(a+b*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(c+d*tan(a+b*x))=#


    @test_int [(e + f*x)^3*atanh(tan(a + b*x)), x, 12, (im*(e + f*x)^4*atan(ℯ^(2*im*(a + b*x))))/(4*f) + ((e + f*x)^4*atanh(tan(a + b*x)))/(4*f) - (im*(e + f*x)^3*PolyLog(2, (-im)*ℯ^(2*im*(a + b*x))))/(4*b) + (im*(e + f*x)^3*PolyLog(2, im*ℯ^(2*im*(a + b*x))))/(4*b) + (3*f*(e + f*x)^2*PolyLog(3, (-im)*ℯ^(2*im*(a + b*x))))/(8*b^2) - (3*f*(e + f*x)^2*PolyLog(3, im*ℯ^(2*im*(a + b*x))))/(8*b^2) + (3*im*f^2*(e + f*x)*PolyLog(4, (-im)*ℯ^(2*im*(a + b*x))))/(8*b^3) - (3*im*f^2*(e + f*x)*PolyLog(4, im*ℯ^(2*im*(a + b*x))))/(8*b^3) - (3*f^3*PolyLog(5, (-im)*ℯ^(2*im*(a + b*x))))/(16*b^4) + (3*f^3*PolyLog(5, im*ℯ^(2*im*(a + b*x))))/(16*b^4)]
    @test_int [(e + f*x)^2*atanh(tan(a + b*x)), x, 10, (im*(e + f*x)^3*atan(ℯ^(2*im*(a + b*x))))/(3*f) + ((e + f*x)^3*atanh(tan(a + b*x)))/(3*f) - (im*(e + f*x)^2*PolyLog(2, (-im)*ℯ^(2*im*(a + b*x))))/(4*b) + (im*(e + f*x)^2*PolyLog(2, im*ℯ^(2*im*(a + b*x))))/(4*b) + (f*(e + f*x)*PolyLog(3, (-im)*ℯ^(2*im*(a + b*x))))/(4*b^2) - (f*(e + f*x)*PolyLog(3, im*ℯ^(2*im*(a + b*x))))/(4*b^2) + (im*f^2*PolyLog(4, (-im)*ℯ^(2*im*(a + b*x))))/(8*b^3) - (im*f^2*PolyLog(4, im*ℯ^(2*im*(a + b*x))))/(8*b^3)]
    @test_int [(e + f*x)^1*atanh(tan(a + b*x)), x, 8, (im*(e + f*x)^2*atan(ℯ^(2*im*(a + b*x))))/(2*f) + ((e + f*x)^2*atanh(tan(a + b*x)))/(2*f) - (im*(e + f*x)*PolyLog(2, (-im)*ℯ^(2*im*(a + b*x))))/(4*b) + (im*(e + f*x)*PolyLog(2, im*ℯ^(2*im*(a + b*x))))/(4*b) + (f*PolyLog(3, (-im)*ℯ^(2*im*(a + b*x))))/(8*b^2) - (f*PolyLog(3, im*ℯ^(2*im*(a + b*x))))/(8*b^2)]
    @test_int [(e + f*x)^0*atanh(tan(a + b*x)), x, 6, im*x*atan(ℯ^(2*im*(a + b*x))) + x*atanh(tan(a + b*x)) - (im*PolyLog(2, (-im)*ℯ^(2*im*(a + b*x))))/(4*b) + (im*PolyLog(2, im*ℯ^(2*im*(a + b*x))))/(4*b)]
    @test_int [atanh(tan(a + b*x))/(e + f*x)^1, x, 0, CannotIntegrate(atanh(tan(a + b*x))/(e + f*x), x)]


    @test_int [x^2*atanh(c + d*tan(a + b*x)), x, 11, (1/3)*x^3*atanh(c + d*tan(a + b*x)) + (1/6)*x^3*log(1 + ((1 - c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c - im*d)) - (1/6)*x^3*log(1 + ((1 + c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c + im*d)) - (im*x^2*PolyLog(2, -(((1 - c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c - im*d))))/(4*b) + (im*x^2*PolyLog(2, -(((1 + c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c + im*d))))/(4*b) + (x*PolyLog(3, -(((1 - c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c - im*d))))/(4*b^2) - (x*PolyLog(3, -(((1 + c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c + im*d))))/(4*b^2) + (im*PolyLog(4, -(((1 - c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c - im*d))))/(8*b^3) - (im*PolyLog(4, -(((1 + c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c + im*d))))/(8*b^3)]
    @test_int [x^1*atanh(c + d*tan(a + b*x)), x, 9, (1/2)*x^2*atanh(c + d*tan(a + b*x)) + (1/4)*x^2*log(1 + ((1 - c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c - im*d)) - (1/4)*x^2*log(1 + ((1 + c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c + im*d)) - (im*x*PolyLog(2, -(((1 - c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c - im*d))))/(4*b) + (im*x*PolyLog(2, -(((1 + c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c + im*d))))/(4*b) + PolyLog(3, -(((1 - c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c - im*d)))/(8*b^2) - PolyLog(3, -(((1 + c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c + im*d)))/(8*b^2)]
    @test_int [x^0*atanh(c + d*tan(a + b*x)), x, 7, x*atanh(c + d*tan(a + b*x)) + (1/2)*x*log(1 + ((1 - c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c - im*d)) - (1/2)*x*log(1 + ((1 + c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c + im*d)) - (im*PolyLog(2, -(((1 - c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c - im*d))))/(4*b) + (im*PolyLog(2, -(((1 + c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c + im*d))))/(4*b)]
    @test_int [atanh(c + d*tan(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(c + d*tan(a + b*x))/x, x)]


    @test_int [x^2*atanh(1 - im*d + d*tan(a + b*x)), x, 7, (1/12)*im*b*x^4 + (1/3)*x^3*atanh(1 - im*d + d*tan(a + b*x)) - (1/6)*x^3*log(1 + (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*x^2*PolyLog(2, -((1 - im*d)*ℯ^(2*im*a + 2*im*b*x))))/(4*b) - (x*PolyLog(3, -((1 - im*d)*ℯ^(2*im*a + 2*im*b*x))))/(4*b^2) - (im*PolyLog(4, -((1 - im*d)*ℯ^(2*im*a + 2*im*b*x))))/(8*b^3)]
    @test_int [x^1*atanh(1 - im*d + d*tan(a + b*x)), x, 6, (1/6)*im*b*x^3 + (1/2)*x^2*atanh(1 - im*d + d*tan(a + b*x)) - (1/4)*x^2*log(1 + (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*x*PolyLog(2, -((1 - im*d)*ℯ^(2*im*a + 2*im*b*x))))/(4*b) - PolyLog(3, -((1 - im*d)*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*atanh(1 - im*d + d*tan(a + b*x)), x, 5, (1/2)*im*b*x^2 + x*atanh(1 - im*d + d*tan(a + b*x)) - (1/2)*x*log(1 + (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*PolyLog(2, -((1 - im*d)*ℯ^(2*im*a + 2*im*b*x))))/(4*b)]
    @test_int [atanh(1 - im*d + d*tan(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(1 - im*d + d*tan(a + b*x))/x, x)]


    @test_int [x^2*atanh(1 + im*d - d*tan(a + b*x)), x, 7, (1/12)*im*b*x^4 + (1/3)*x^3*atanh(1 + im*d - d*tan(a + b*x)) - (1/6)*x^3*log(1 + (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*x^2*PolyLog(2, -((1 + im*d)*ℯ^(2*im*a + 2*im*b*x))))/(4*b) - (x*PolyLog(3, -((1 + im*d)*ℯ^(2*im*a + 2*im*b*x))))/(4*b^2) - (im*PolyLog(4, -((1 + im*d)*ℯ^(2*im*a + 2*im*b*x))))/(8*b^3)]
    @test_int [x^1*atanh(1 + im*d - d*tan(a + b*x)), x, 6, (1/6)*im*b*x^3 + (1/2)*x^2*atanh(1 + im*d - d*tan(a + b*x)) - (1/4)*x^2*log(1 + (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*x*PolyLog(2, -((1 + im*d)*ℯ^(2*im*a + 2*im*b*x))))/(4*b) - PolyLog(3, -((1 + im*d)*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*atanh(1 + im*d - d*tan(a + b*x)), x, 5, (1/2)*im*b*x^2 + x*atanh(1 + im*d - d*tan(a + b*x)) - (1/2)*x*log(1 + (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*PolyLog(2, -((1 + im*d)*ℯ^(2*im*a + 2*im*b*x))))/(4*b)]
    @test_int [atanh(1 + im*d - d*tan(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(1 + im*d - d*tan(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(c+d*cot(a+b*x))=#


    @test_int [(e + f*x)^3*atanh(cot(a + b*x)), x, 12, (im*(e + f*x)^4*atan(ℯ^(2*im*(a + b*x))))/(4*f) + ((e + f*x)^4*atanh(cot(a + b*x)))/(4*f) - (im*(e + f*x)^3*PolyLog(2, (-im)*ℯ^(2*im*(a + b*x))))/(4*b) + (im*(e + f*x)^3*PolyLog(2, im*ℯ^(2*im*(a + b*x))))/(4*b) + (3*f*(e + f*x)^2*PolyLog(3, (-im)*ℯ^(2*im*(a + b*x))))/(8*b^2) - (3*f*(e + f*x)^2*PolyLog(3, im*ℯ^(2*im*(a + b*x))))/(8*b^2) + (3*im*f^2*(e + f*x)*PolyLog(4, (-im)*ℯ^(2*im*(a + b*x))))/(8*b^3) - (3*im*f^2*(e + f*x)*PolyLog(4, im*ℯ^(2*im*(a + b*x))))/(8*b^3) - (3*f^3*PolyLog(5, (-im)*ℯ^(2*im*(a + b*x))))/(16*b^4) + (3*f^3*PolyLog(5, im*ℯ^(2*im*(a + b*x))))/(16*b^4)]
    @test_int [(e + f*x)^2*atanh(cot(a + b*x)), x, 10, (im*(e + f*x)^3*atan(ℯ^(2*im*(a + b*x))))/(3*f) + ((e + f*x)^3*atanh(cot(a + b*x)))/(3*f) - (im*(e + f*x)^2*PolyLog(2, (-im)*ℯ^(2*im*(a + b*x))))/(4*b) + (im*(e + f*x)^2*PolyLog(2, im*ℯ^(2*im*(a + b*x))))/(4*b) + (f*(e + f*x)*PolyLog(3, (-im)*ℯ^(2*im*(a + b*x))))/(4*b^2) - (f*(e + f*x)*PolyLog(3, im*ℯ^(2*im*(a + b*x))))/(4*b^2) + (im*f^2*PolyLog(4, (-im)*ℯ^(2*im*(a + b*x))))/(8*b^3) - (im*f^2*PolyLog(4, im*ℯ^(2*im*(a + b*x))))/(8*b^3)]
    @test_int [(e + f*x)^1*atanh(cot(a + b*x)), x, 8, (im*(e + f*x)^2*atan(ℯ^(2*im*(a + b*x))))/(2*f) + ((e + f*x)^2*atanh(cot(a + b*x)))/(2*f) - (im*(e + f*x)*PolyLog(2, (-im)*ℯ^(2*im*(a + b*x))))/(4*b) + (im*(e + f*x)*PolyLog(2, im*ℯ^(2*im*(a + b*x))))/(4*b) + (f*PolyLog(3, (-im)*ℯ^(2*im*(a + b*x))))/(8*b^2) - (f*PolyLog(3, im*ℯ^(2*im*(a + b*x))))/(8*b^2)]
    @test_int [(e + f*x)^0*atanh(cot(a + b*x)), x, 6, im*x*atan(ℯ^(2*im*(a + b*x))) + x*atanh(cot(a + b*x)) - (im*PolyLog(2, (-im)*ℯ^(2*im*(a + b*x))))/(4*b) + (im*PolyLog(2, im*ℯ^(2*im*(a + b*x))))/(4*b)]
    @test_int [atanh(cot(a + b*x))/(e + f*x)^1, x, 0, CannotIntegrate(atanh(cot(a + b*x))/(e + f*x), x)]


    @test_int [x^2*atanh(c + d*cot(a + b*x)), x, 11, (1/3)*x^3*atanh(c + d*cot(a + b*x)) + (1/6)*x^3*log(1 - ((1 - c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c + im*d)) - (1/6)*x^3*log(1 - ((1 + c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c - im*d)) - (im*x^2*PolyLog(2, ((1 - c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c + im*d)))/(4*b) + (im*x^2*PolyLog(2, ((1 + c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c - im*d)))/(4*b) + (x*PolyLog(3, ((1 - c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c + im*d)))/(4*b^2) - (x*PolyLog(3, ((1 + c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c - im*d)))/(4*b^2) + (im*PolyLog(4, ((1 - c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c + im*d)))/(8*b^3) - (im*PolyLog(4, ((1 + c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c - im*d)))/(8*b^3)]
    @test_int [x^1*atanh(c + d*cot(a + b*x)), x, 9, (1/2)*x^2*atanh(c + d*cot(a + b*x)) + (1/4)*x^2*log(1 - ((1 - c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c + im*d)) - (1/4)*x^2*log(1 - ((1 + c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c - im*d)) - (im*x*PolyLog(2, ((1 - c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c + im*d)))/(4*b) + (im*x*PolyLog(2, ((1 + c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c - im*d)))/(4*b) + PolyLog(3, ((1 - c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c + im*d))/(8*b^2) - PolyLog(3, ((1 + c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c - im*d))/(8*b^2)]
    @test_int [x^0*atanh(c + d*cot(a + b*x)), x, 7, x*atanh(c + d*cot(a + b*x)) + (1/2)*x*log(1 - ((1 - c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c + im*d)) - (1/2)*x*log(1 - ((1 + c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c - im*d)) - (im*PolyLog(2, ((1 - c - im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 - c + im*d)))/(4*b) + (im*PolyLog(2, ((1 + c + im*d)*ℯ^(2*im*a + 2*im*b*x))/(1 + c - im*d)))/(4*b)]
    @test_int [atanh(c + d*cot(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(c + d*cot(a + b*x))/x, x)]


    @test_int [x^2*atanh(1 + im*d + d*cot(a + b*x)), x, 7, (1/12)*im*b*x^4 + (1/3)*x^3*atanh(1 + im*d + d*cot(a + b*x)) - (1/6)*x^3*log(1 - (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*x^2*PolyLog(2, (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (x*PolyLog(3, (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) - (im*PolyLog(4, (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)))/(8*b^3)]
    @test_int [x^1*atanh(1 + im*d + d*cot(a + b*x)), x, 6, (1/6)*im*b*x^3 + (1/2)*x^2*atanh(1 + im*d + d*cot(a + b*x)) - (1/4)*x^2*log(1 - (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*x*PolyLog(2, (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - PolyLog(3, (1 + im*d)*ℯ^(2*im*a + 2*im*b*x))/(8*b^2)]
    @test_int [x^0*atanh(1 + im*d + d*cot(a + b*x)), x, 5, (1/2)*im*b*x^2 + x*atanh(1 + im*d + d*cot(a + b*x)) - (1/2)*x*log(1 - (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*PolyLog(2, (1 + im*d)*ℯ^(2*im*a + 2*im*b*x)))/(4*b)]
    @test_int [atanh(1 + im*d + d*cot(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(1 + im*d + d*cot(a + b*x))/x, x)]


    @test_int [x^2*atanh(1 - im*d - d*cot(a + b*x)), x, 7, (1/12)*im*b*x^4 + (1/3)*x^3*atanh(1 - im*d - d*cot(a + b*x)) - (1/6)*x^3*log(1 - (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*x^2*PolyLog(2, (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (x*PolyLog(3, (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) - (im*PolyLog(4, (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)))/(8*b^3)]
    @test_int [x^1*atanh(1 - im*d - d*cot(a + b*x)), x, 6, (1/6)*im*b*x^3 + (1/2)*x^2*atanh(1 - im*d - d*cot(a + b*x)) - (1/4)*x^2*log(1 - (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*x*PolyLog(2, (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - PolyLog(3, (1 - im*d)*ℯ^(2*im*a + 2*im*b*x))/(8*b^2)]
    @test_int [x^0*atanh(1 - im*d - d*cot(a + b*x)), x, 5, (1/2)*im*b*x^2 + x*atanh(1 - im*d - d*cot(a + b*x)) - (1/2)*x*log(1 - (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)) + (im*PolyLog(2, (1 - im*d)*ℯ^(2*im*a + 2*im*b*x)))/(4*b)]
    @test_int [atanh(1 - im*d - d*cot(a + b*x))/x^1, x, 0, CannotIntegrate(atanh(1 - im*d - d*cot(a + b*x))/x, x)]


    #= ::Title::Closed:: =#
    #=Integrands*involving*inverse*hyperbolic*tangents*of*exponentials=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*atanh(ℯ^(a+b*x))^n=#


    @test_int [atanh(ℯ^x), x, 2, (-(1/2))*PolyLog(2, -ℯ^x) + (1/2)*PolyLog(2, ℯ^x)]
    @test_int [x*atanh(ℯ^x), x, 7, (-(1/2))*x*PolyLog(2, -ℯ^x) + (1/2)*x*PolyLog(2, ℯ^x) + (1/2)*PolyLog(3, -ℯ^x) - (1/2)*PolyLog(3, ℯ^x)]
    @test_int [x^2*atanh(ℯ^x), x, 9, (-(1/2))*x^2*PolyLog(2, -ℯ^x) + (1/2)*x^2*PolyLog(2, ℯ^x) + x*PolyLog(3, -ℯ^x) - x*PolyLog(3, ℯ^x) - PolyLog(4, -ℯ^x) + PolyLog(4, ℯ^x)]


    @test_int [atanh(ℯ^(a + b*x)), x, 2, -(PolyLog(2, -ℯ^(a + b*x))/(2*b)) + PolyLog(2, ℯ^(a + b*x))/(2*b)]
    @test_int [x*atanh(ℯ^(a + b*x)), x, 7, -((x*PolyLog(2, -ℯ^(a + b*x)))/(2*b)) + (x*PolyLog(2, ℯ^(a + b*x)))/(2*b) + PolyLog(3, -ℯ^(a + b*x))/(2*b^2) - PolyLog(3, ℯ^(a + b*x))/(2*b^2)]
    @test_int [x^2*atanh(ℯ^(a + b*x)), x, 9, -((x^2*PolyLog(2, -ℯ^(a + b*x)))/(2*b)) + (x^2*PolyLog(2, ℯ^(a + b*x)))/(2*b) + (x*PolyLog(3, -ℯ^(a + b*x)))/b^2 - (x*PolyLog(3, ℯ^(a + b*x)))/b^2 - PolyLog(4, -ℯ^(a + b*x))/b^3 + PolyLog(4, ℯ^(a + b*x))/b^3]


    @test_int [atanh(a + b*f^(c + d*x)), x, 6, -((atanh(a + b*f^(c + d*x))*log(2/(1 + a + b*f^(c + d*x))))/(d*log(f))) + (atanh(a + b*f^(c + d*x))*log((2*b*f^(c + d*x))/((1 - a)*(1 + a + b*f^(c + d*x)))))/(d*log(f)) + PolyLog(2, 1 - 2/(1 + a + b*f^(c + d*x)))/(2*d*log(f)) - PolyLog(2, 1 - (2*b*f^(c + d*x))/((1 - a)*(1 + a + b*f^(c + d*x))))/(2*d*log(f))]
    @test_int [x*atanh(a + b*f^(c + d*x)), x, 9, (-(1/4))*x^2*log(1 - a - b*f^(c + d*x)) + (1/4)*x^2*log(1 + a + b*f^(c + d*x)) + (1/4)*x^2*log(1 - (b*f^(c + d*x))/(1 - a)) - (1/4)*x^2*log(1 + (b*f^(c + d*x))/(1 + a)) + (x*PolyLog(2, (b*f^(c + d*x))/(1 - a)))/(2*d*log(f)) - (x*PolyLog(2, -((b*f^(c + d*x))/(1 + a))))/(2*d*log(f)) - PolyLog(3, (b*f^(c + d*x))/(1 - a))/(2*d^2*log(f)^2) + PolyLog(3, -((b*f^(c + d*x))/(1 + a)))/(2*d^2*log(f)^2)]
    @test_int [x^2*atanh(a + b*f^(c + d*x)), x, 11, (-(1/6))*x^3*log(1 - a - b*f^(c + d*x)) + (1/6)*x^3*log(1 + a + b*f^(c + d*x)) + (1/6)*x^3*log(1 - (b*f^(c + d*x))/(1 - a)) - (1/6)*x^3*log(1 + (b*f^(c + d*x))/(1 + a)) + (x^2*PolyLog(2, (b*f^(c + d*x))/(1 - a)))/(2*d*log(f)) - (x^2*PolyLog(2, -((b*f^(c + d*x))/(1 + a))))/(2*d*log(f)) - (x*PolyLog(3, (b*f^(c + d*x))/(1 - a)))/(d^2*log(f)^2) + (x*PolyLog(3, -((b*f^(c + d*x))/(1 + a))))/(d^2*log(f)^2) + PolyLog(4, (b*f^(c + d*x))/(1 - a))/(d^3*log(f)^3) - PolyLog(4, -((b*f^(c + d*x))/(1 + a)))/(d^3*log(f)^3)]


    #= ::Title::Closed:: =#
    #=Miscellaneous*integrands*involving*inverse*hyperbolic*tangents=#


    @test_int [ℯ^(c*(a + b*x))*atanh(sinh(a*c + b*c*x)), x, 8, (ℯ^(a*c + b*c*x)*atanh(sinh(c*(a + b*x))))/(b*c) + ((1 - sqrt(2))*log(3 - 2*sqrt(2) - ℯ^(2*c*(a + b*x))))/(2*b*c) + ((1 + sqrt(2))*log(3 + 2*sqrt(2) - ℯ^(2*c*(a + b*x))))/(2*b*c)]
    @test_int [ℯ^(c*(a + b*x))*atanh(cosh(a*c + b*c*x)), x, 5, (ℯ^(a*c + b*c*x)*atanh(cosh(c*(a + b*x))))/(b*c) + log(1 - ℯ^(2*c*(a + b*x)))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*atanh(tanh(a*c + b*c*x)), x, 3, -(ℯ^(a*c + b*c*x)/(b*c)) + (ℯ^(a*c + b*c*x)*atanh(tanh(c*(a + b*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*atanh(coth(a*c + b*c*x)), x, 3, -(ℯ^(a*c + b*c*x)/(b*c)) + (ℯ^(a*c + b*c*x)*atanh(coth(c*(a + b*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*atanh(sech(a*c + b*c*x)), x, 5, (ℯ^(a*c + b*c*x)*atanh(sech(c*(a + b*x))))/(b*c) + log(1 - ℯ^(2*c*(a + b*x)))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*atanh(csch(a*c + b*c*x)), x, 8, (ℯ^(a*c + b*c*x)*atanh(csch(c*(a + b*x))))/(b*c) + ((1 - sqrt(2))*log(3 - 2*sqrt(2) - ℯ^(2*c*(a + b*x))))/(2*b*c) + ((1 + sqrt(2))*log(3 + 2*sqrt(2) - ℯ^(2*c*(a + b*x))))/(2*b*c)]


    @test_int [((a + b*atanh(c*x^n))*(d + e*log(f*x^m)))/x, x, 11, a*d*log(x) + (a*e*log(f*x^m)^2)/(2*m) - (b*d*PolyLog(2, (-c)*x^n))/(2*n) - (b*e*log(f*x^m)*PolyLog(2, (-c)*x^n))/(2*n) + (b*d*PolyLog(2, c*x^n))/(2*n) + (b*e*log(f*x^m)*PolyLog(2, c*x^n))/(2*n) + (b*e*m*PolyLog(3, (-c)*x^n))/(2*n^2) - (b*e*m*PolyLog(3, c*x^n))/(2*n^2)]
    end
