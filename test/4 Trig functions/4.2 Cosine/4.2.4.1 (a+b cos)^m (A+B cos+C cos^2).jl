@testset "4.2.4.1 (a+b cos)^m (A+B cos+C cos^2)" begin
    (A, B, C, a, b, c, d, e, f, m, n, x, ) = @variables A B C a b c d e f m n x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(A+C*cos(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x))^m*(A+C*cos(c+d*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(A+C*cos(e+f*x)^2)=#


    @test_int [cos(c + d*x)^7*(A + C*cos(c + d*x)^2), x, 3, ((A + C)*sin(c + d*x))/d - ((3*A + 4*C)*sin(c + d*x)^3)/(3*d) + (3*(A + 2*C)*sin(c + d*x)^5)/(5*d) - ((A + 4*C)*sin(c + d*x)^7)/(7*d) + (C*sin(c + d*x)^9)/(9*d)]
    @test_int [cos(c + d*x)^5*(A + C*cos(c + d*x)^2), x, 3, ((A + C)*sin(c + d*x))/d - ((2*A + 3*C)*sin(c + d*x)^3)/(3*d) + ((A + 3*C)*sin(c + d*x)^5)/(5*d) - (C*sin(c + d*x)^7)/(7*d)]
    @test_int [cos(c + d*x)^3*(A + C*cos(c + d*x)^2), x, 3, ((A + C)*sin(c + d*x))/d - ((A + 2*C)*sin(c + d*x)^3)/(3*d) + (C*sin(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^1*(A + C*cos(c + d*x)^2), x, 2, ((A + C)*sin(c + d*x))/d - (C*sin(c + d*x)^3)/(3*d)]
    @test_int [sec(c + d*x)^1*(A + C*cos(c + d*x)^2), x, 2, (A*atanh(sin(c + d*x)))/d + (C*sin(c + d*x))/d]
    @test_int [sec(c + d*x)^3*(A + C*cos(c + d*x)^2), x, 2, ((A + 2*C)*atanh(sin(c + d*x)))/(2*d) + (A*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [sec(c + d*x)^5*(A + C*cos(c + d*x)^2), x, 3, ((3*A + 4*C)*atanh(sin(c + d*x)))/(8*d) + ((3*A + 4*C)*sec(c + d*x)*tan(c + d*x))/(8*d) + (A*sec(c + d*x)^3*tan(c + d*x))/(4*d)]
    @test_int [sec(c + d*x)^7*(A + C*cos(c + d*x)^2), x, 4, ((5*A + 6*C)*atanh(sin(c + d*x)))/(16*d) + ((5*A + 6*C)*sec(c + d*x)*tan(c + d*x))/(16*d) + ((5*A + 6*C)*sec(c + d*x)^3*tan(c + d*x))/(24*d) + (A*sec(c + d*x)^5*tan(c + d*x))/(6*d)]

    @test_int [cos(c + d*x)^6*(A + C*cos(c + d*x)^2), x, 5, (5*(8*A + 7*C)*x)/128 + (5*(8*A + 7*C)*cos(c + d*x)*sin(c + d*x))/(128*d) + (5*(8*A + 7*C)*cos(c + d*x)^3*sin(c + d*x))/(192*d) + ((8*A + 7*C)*cos(c + d*x)^5*sin(c + d*x))/(48*d) + (C*cos(c + d*x)^7*sin(c + d*x))/(8*d)]
    @test_int [cos(c + d*x)^4*(A + C*cos(c + d*x)^2), x, 4, ((6*A + 5*C)*x)/16 + ((6*A + 5*C)*cos(c + d*x)*sin(c + d*x))/(16*d) + ((6*A + 5*C)*cos(c + d*x)^3*sin(c + d*x))/(24*d) + (C*cos(c + d*x)^5*sin(c + d*x))/(6*d)]
    @test_int [cos(c + d*x)^2*(A + C*cos(c + d*x)^2), x, 3, ((4*A + 3*C)*x)/8 + ((4*A + 3*C)*cos(c + d*x)*sin(c + d*x))/(8*d) + (C*cos(c + d*x)^3*sin(c + d*x))/(4*d)]
    @test_int [sec(c + d*x)^2*(A + C*cos(c + d*x)^2), x, 2, C*x + (A*tan(c + d*x))/d]
    @test_int [sec(c + d*x)^4*(A + C*cos(c + d*x)^2), x, 3, ((2*A + 3*C)*tan(c + d*x))/(3*d) + (A*sec(c + d*x)^2*tan(c + d*x))/(3*d)]
    @test_int [sec(c + d*x)^6*(A + C*cos(c + d*x)^2), x, 3, ((4*A + 5*C)*tan(c + d*x))/(5*d) + (A*sec(c + d*x)^4*tan(c + d*x))/(5*d) + ((4*A + 5*C)*tan(c + d*x)^3)/(15*d)]
    @test_int [sec(c + d*x)^8*(A + C*cos(c + d*x)^2), x, 3, ((6*A + 7*C)*tan(c + d*x))/(7*d) + (A*sec(c + d*x)^6*tan(c + d*x))/(7*d) + (2*(6*A + 7*C)*tan(c + d*x)^3)/(21*d) + ((6*A + 7*C)*tan(c + d*x)^5)/(35*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^(m/2)*(A+C*cos(e+f*x)^2)=#


    @test_int [(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2), x, 4, (2*b^2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (2*b*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2), x, 4, (2*b^2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*b*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b*d)]
    @test_int [(b*cos(c + d*x))^(1/2)*(A + C*cos(c + d*x)^2), x, 3, (2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b*d)]
    @test_int [(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 3, (2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b*d)]
    @test_int [(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 3, -((2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^2*d*sqrt(cos(c + d*x)))) + (2*A*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 3, (2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(3*b*d*(b*cos(c + d*x))^(3/2))]
    @test_int [(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(7/2), x, 4, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^4*d*sqrt(cos(c + d*x)))) + (2*A*sin(c + d*x))/(5*b*d*(b*cos(c + d*x))^(5/2)) + (2*(3*A + 5*C)*sin(c + d*x))/(5*b^3*d*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(9/2), x, 4, (2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b^4*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(7*b*d*(b*cos(c + d*x))^(7/2)) + (2*(5*A + 7*C)*sin(c + d*x))/(21*b^3*d*(b*cos(c + d*x))^(3/2))]


    @test_int [(3 - 5*cos(c + d*x)^2)*sqrt(cos(c + d*x)), x, 1, -((2*cos(c + d*x)^(3/2)*sin(c + d*x))/d)]
    @test_int [(1 - 3*cos(c + d*x)^2)/sqrt(cos(c + d*x)), x, 1, (-2*sqrt(cos(c + d*x))*sin(c + d*x))/d]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^(m/2)*(A+C*cos(e+f*x)^2)=#


    @test_int [(A + C*cos(c + d*x)^2)*(b*sec(c + d*x))^(9/2), x, 5, (2*b^4*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*d) + (2*b^3*(5*A + 7*C)*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(21*d) + (2*A*b^2*(b*sec(c + d*x))^(5/2)*tan(c + d*x))/(7*d)]
    @test_int [(A + C*cos(c + d*x)^2)*(b*sec(c + d*x))^(7/2), x, 5, -((2*b^4*(3*A + 5*C)*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*b^3*(3*A + 5*C)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*d) + (2*A*b^2*(b*sec(c + d*x))^(3/2)*tan(c + d*x))/(5*d)]
    @test_int [(A + C*cos(c + d*x)^2)*(b*sec(c + d*x))^(5/2), x, 4, (2*b^2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*A*b^2*sqrt(b*sec(c + d*x))*tan(c + d*x))/(3*d)]
    @test_int [(A + C*cos(c + d*x)^2)*(b*sec(c + d*x))^(3/2), x, 4, -((2*b^2*(A - C)*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*A*b^2*tan(c + d*x))/(d*sqrt(b*sec(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)*(b*sec(c + d*x))^(1/2), x, 4, (2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*b^2*C*tan(c + d*x))/(3*d*(b*sec(c + d*x))^(3/2))]
    @test_int [(A + C*cos(c + d*x)^2)/(b*sec(c + d*x))^(1/2), x, 4, (2*(5*A + 3*C)*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*b^2*C*tan(c + d*x))/(5*d*(b*sec(c + d*x))^(5/2))]
    @test_int [(A + C*cos(c + d*x)^2)/(b*sec(c + d*x))^(3/2), x, 5, (2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b^2*d) + (2*(7*A + 5*C)*sin(c + d*x))/(21*b*d*sqrt(b*sec(c + d*x))) + (2*b^2*C*tan(c + d*x))/(7*d*(b*sec(c + d*x))^(7/2))]
    @test_int [(A + C*cos(c + d*x)^2)/(b*sec(c + d*x))^(5/2), x, 5, (2*(9*A + 7*C)*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^2*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*(9*A + 7*C)*sin(c + d*x))/(45*b*d*(b*sec(c + d*x))^(3/2)) + (2*b^2*C*tan(c + d*x))/(9*d*(b*sec(c + d*x))^(9/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(A+C*cos(e+f*x)^2)*with*m*symbolic=#


    @test_int [(b*cos(c + d*x))^m*(A + C*cos(c + d*x)^2), x, 2, (C*(b*cos(c + d*x))^(1 + m)*sin(c + d*x))/(b*d*(2 + m)) - ((C*(1 + m) + A*(2 + m))*(b*cos(c + d*x))^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1 + m)/2, (3 + m)/2, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 + m)*(2 + m)*sqrt(sin(c + d*x)^2))]


    @test_int [(b*cos(c + d*x))^m*(-((C*(1 + m))/(2 + m)) + C*cos(c + d*x)^2), x, 1, (C*(b*cos(c + d*x))^(1 + m)*sin(c + d*x))/(b*d*(2 + m))]
    @test_int [(b*cos(c + d*x))^m*(A - (A*(2 + m)*cos(c + d*x)^2)/(1 + m)), x, 1, -((A*(b*cos(c + d*x))^(1 + m)*sin(c + d*x))/(b*d*(1 + m)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x))^m*(b*cos(c+d*x))^n*(A+C*cos(c+d*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(b*cos(c+d*x))^(n/2)*(A+C*cos(c+d*x)^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^2*sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2), x, 5, (2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^3*d)]
    @test_int [cos(c + d*x)*sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2), x, 5, (2*b*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^2*d)]
    @test_int [sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2), x, 3, (2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b*d)]
    @test_int [sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2)*sec(c + d*x), x, 4, (2*b*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 4, -((2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*A*b*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 4, (2*b*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^2*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 5, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*A*b^3*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b*(3*A + 5*C)*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2)*sec(c + d*x)^5, x, 5, (2*b*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*A*b^4*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*b^2*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]


    @test_int [cos(c + d*x)*(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2), x, 5, (2*b*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^2*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2), x, 4, (2*b^2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*b*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x), x, 4, (2*b*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 4, (2*b^2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 4, -((2*b*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*A*b^2*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 4, (2*b^2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^3*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^5, x, 5, -((2*b*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*A*b^4*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b^2*(3*A + 5*C)*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^6, x, 5, (2*b^2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*A*b^5*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*b^3*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]


    @test_int [(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2), x, 4, (2*b^2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (2*b*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x), x, 5, (2*b^3*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*b^2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 4, (2*b^2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*b*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 4, (2*b^3*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b^2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 4, -((2*b^2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*A*b^3*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^5, x, 4, (2*b^3*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^4*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^6, x, 5, -((2*b^2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*A*b^5*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b^3*(3*A + 5*C)*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^7, x, 5, (2*b^3*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*A*b^6*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*b^4*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cos(c + d*x)^4*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 6, (10*(11*A + 9*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(231*d*sqrt(b*cos(c + d*x))) + (10*(11*A + 9*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(231*b*d) + (2*(11*A + 9*C)*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(77*b^3*d) + (2*C*(b*cos(c + d*x))^(9/2)*sin(c + d*x))/(11*b^5*d)]
    @test_int [cos(c + d*x)^3*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 5, (2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b*d*sqrt(cos(c + d*x))) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b^2*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^4*d)]
    @test_int [cos(c + d*x)^2*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 5, (2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^3*d)]
    @test_int [cos(c + d*x)^1*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 4, (2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x))) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^2*d)]
    @test_int [cos(c + d*x)^0*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 3, (2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b*d)]
    @test_int [sec(c + d*x)^1*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 4, -((2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b*d*sqrt(cos(c + d*x)))) + (2*A*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^2*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 4, (2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^3*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 5, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x)))) + (2*A*b^2*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*(3*A + 5*C)*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^4*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 5, (2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*A*b^3*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*b*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^5*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/2), x, 6, -((2*(7*A + 9*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b*d*sqrt(cos(c + d*x)))) + (2*A*b^4*sin(c + d*x))/(9*d*(b*cos(c + d*x))^(9/2)) + (2*b^2*(7*A + 9*C)*sin(c + d*x))/(45*d*(b*cos(c + d*x))^(5/2)) + (2*(7*A + 9*C)*sin(c + d*x))/(15*d*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^4*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 5, (2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^2*d*sqrt(cos(c + d*x))) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b^3*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^5*d)]
    @test_int [cos(c + d*x)^3*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 5, (2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b*d*sqrt(b*cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b^2*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^4*d)]
    @test_int [cos(c + d*x)^2*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 4, (2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x))) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^3*d)]
    @test_int [cos(c + d*x)^1*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 4, (2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(3*b*d*sqrt(b*cos(c + d*x))) + (2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b^2*d)]
    @test_int [cos(c + d*x)^0*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 3, -((2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^2*d*sqrt(cos(c + d*x)))) + (2*A*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^1*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 4, (2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(3*b*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^2*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 5, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x)))) + (2*A*b*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*(3*A + 5*C)*sin(c + d*x))/(5*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^3*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 5, (2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b*d*sqrt(b*cos(c + d*x))) + (2*A*b^2*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2))]


    @test_int [cos(c + d*x)^5*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 5, (2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^3*d*sqrt(cos(c + d*x))) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b^4*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^6*d)]
    @test_int [cos(c + d*x)^4*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 5, (2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b^2*d*sqrt(b*cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b^3*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^5*d)]
    @test_int [cos(c + d*x)^3*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 4, (2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x))) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^4*d)]
    @test_int [cos(c + d*x)^2*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 4, (2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b^3*d)]
    @test_int [cos(c + d*x)^1*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 4, -((2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^3*d*sqrt(cos(c + d*x)))) + (2*A*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [cos(c + d*x)^0*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 3, (2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((c + d*x)/2, 2))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(3*b*d*(b*cos(c + d*x))^(3/2))]
    @test_int [sec(c + d*x)^1*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 5, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x)))) + (2*A*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*(3*A + 5*C)*sin(c + d*x))/(5*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [sec(c + d*x)^2*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 5, (2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b^2*d*sqrt(b*cos(c + d*x))) + (2*A*b*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*(5*A + 7*C)*sin(c + d*x))/(21*b*d*(b*cos(c + d*x))^(3/2))]


    @test_int [cos(c + d*x)^0*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(7/2), x, 4, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^4*d*sqrt(cos(c + d*x)))) + (2*A*sin(c + d*x))/(5*b*d*(b*cos(c + d*x))^(5/2)) + (2*(3*A + 5*C)*sin(c + d*x))/(5*b^3*d*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)^0*(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(9/2), x, 4, (2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b^4*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(7*b*d*(b*cos(c + d*x))^(7/2)) + (2*(5*A + 7*C)*sin(c + d*x))/(21*b^3*d*(b*cos(c + d*x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x))^(m/2)*(b*cos(c+d*x))^(n/2)*(A+C*cos(c+d*x)^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2), x, 4, ((A + C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - ((A + 2*C)*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x))) + (C*sqrt(b*cos(c + d*x))*sin(c + d*x)^5)/(5*d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2), x, 4, ((4*A + 3*C)*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + ((4*A + 3*C)*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (C*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d)]
    @test_int [sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2), x, 3, ((A + C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - (C*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x)))]
    @test_int [(sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2))/sqrt(cos(c + d*x)), x, 4, (A*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (C*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (C*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [(sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(3/2), x, 3, (A*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x))) + (C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x)))]
    @test_int [(sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(5/2), x, 3, (C*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (A*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [(sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(7/2), x, 3, ((A + 2*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (A*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2))]
    @test_int [(sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(9/2), x, 4, (A*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(7/2)) + ((2*A + 3*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(3/2))]
    @test_int [(sqrt(b*cos(c + d*x))*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(11/2), x, 4, ((3*A + 4*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(8*d*sqrt(cos(c + d*x))) + (A*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d*cos(c + d*x)^(9/2)) + ((3*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d*cos(c + d*x)^(5/2))]


    @test_int [cos(c + d*x)^(3/2)*(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2), x, 4, (b*(A + C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - (b*(A + 2*C)*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x))) + (b*C*sqrt(b*cos(c + d*x))*sin(c + d*x)^5)/(5*d*sqrt(cos(c + d*x)))]
    @test_int [sqrt(cos(c + d*x))*(b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2), x, 4, (b*(4*A + 3*C)*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (b*(4*A + 3*C)*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (b*C*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d)]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2))/sqrt(cos(c + d*x)), x, 3, (b*(A + C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - (b*C*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(3/2), x, 4, (A*b*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (b*C*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (b*C*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(5/2), x, 3, (A*b*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x))) + (b*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(7/2), x, 3, (b*C*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (A*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(9/2), x, 3, (b*(A + 2*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (A*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(11/2), x, 4, (A*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(7/2)) + (b*(2*A + 3*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(13/2), x, 4, (b*(3*A + 4*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(8*d*sqrt(cos(c + d*x))) + (A*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d*cos(c + d*x)^(9/2)) + (b*(3*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d*cos(c + d*x)^(5/2))]


    @test_int [sqrt(cos(c + d*x))*(b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2), x, 4, (b^2*(A + C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - (b^2*(A + 2*C)*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x))) + (b^2*C*sqrt(b*cos(c + d*x))*sin(c + d*x)^5)/(5*d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2))/sqrt(cos(c + d*x)), x, 4, (b^2*(4*A + 3*C)*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (b^2*(4*A + 3*C)*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (b^2*C*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d)]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(3/2), x, 3, (b^2*(A + C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) - (b^2*C*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(5/2), x, 4, (A*b^2*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (b^2*C*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (b^2*C*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(7/2), x, 3, (A*b^2*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x))) + (b^2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(9/2), x, 3, (b^2*C*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (A*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(11/2), x, 3, (b^2*(A + 2*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (A*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(13/2), x, 4, (A*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(7/2)) + (b^2*(2*A + 3*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(15/2), x, 4, (b^2*(3*A + 4*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(8*d*sqrt(cos(c + d*x))) + (A*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d*cos(c + d*x)^(9/2)) + (b^2*(3*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d*cos(c + d*x)^(5/2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(cos(c + d*x)^(5/2)*(A + C*cos(c + d*x)^2))/sqrt(b*cos(c + d*x)), x, 4, ((4*A + 3*C)*x*sqrt(cos(c + d*x)))/(8*sqrt(b*cos(c + d*x))) + ((4*A + 3*C)*cos(c + d*x)^(3/2)*sin(c + d*x))/(8*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(7/2)*sin(c + d*x))/(4*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(3/2)*(A + C*cos(c + d*x)^2))/sqrt(b*cos(c + d*x)), x, 3, ((A + C)*sqrt(cos(c + d*x))*sin(c + d*x))/(d*sqrt(b*cos(c + d*x))) - (C*sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(b*cos(c + d*x)))]
    @test_int [(sqrt(cos(c + d*x))*(A + C*cos(c + d*x)^2))/sqrt(b*cos(c + d*x)), x, 4, (A*x*sqrt(cos(c + d*x)))/sqrt(b*cos(c + d*x)) + (C*x*sqrt(cos(c + d*x)))/(2*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(3/2)*sin(c + d*x))/(2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))), x, 3, (A*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(d*sqrt(b*cos(c + d*x))) + (C*sqrt(cos(c + d*x))*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))), x, 3, (C*x*sqrt(cos(c + d*x)))/sqrt(b*cos(c + d*x)) + (A*sin(c + d*x))/(d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))), x, 3, ((A + 2*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))), x, 4, (A*sin(c + d*x))/(3*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))) + ((2*A + 3*C)*sin(c + d*x))/(3*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(cos(c + d*x)^(9/2)*sqrt(b*cos(c + d*x))), x, 4, ((3*A + 4*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(8*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(4*d*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))) + ((3*A + 4*C)*sin(c + d*x))/(8*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]


    @test_int [(cos(c + d*x)^(7/2)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 4, ((4*A + 3*C)*x*sqrt(cos(c + d*x)))/(8*b*sqrt(b*cos(c + d*x))) + ((4*A + 3*C)*cos(c + d*x)^(3/2)*sin(c + d*x))/(8*b*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(7/2)*sin(c + d*x))/(4*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(5/2)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 3, ((A + C)*sqrt(cos(c + d*x))*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x))) - (C*sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(3/2)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 4, (A*x*sqrt(cos(c + d*x)))/(b*sqrt(b*cos(c + d*x))) + (C*x*sqrt(cos(c + d*x)))/(2*b*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(3/2)*sin(c + d*x))/(2*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [(sqrt(cos(c + d*x))*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 3, (A*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(b*d*sqrt(b*cos(c + d*x))) + (C*sqrt(cos(c + d*x))*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(sqrt(cos(c + d*x))*(b*cos(c + d*x))^(3/2)), x, 3, (C*x*sqrt(cos(c + d*x)))/(b*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(b*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(cos(c + d*x)^(3/2)*(b*cos(c + d*x))^(3/2)), x, 3, ((A + 2*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*b*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(2*b*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(cos(c + d*x)^(5/2)*(b*cos(c + d*x))^(3/2)), x, 4, (A*sin(c + d*x))/(3*b*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))) + ((2*A + 3*C)*sin(c + d*x))/(3*b*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(cos(c + d*x)^(7/2)*(b*cos(c + d*x))^(3/2)), x, 4, ((3*A + 4*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(8*b*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(4*b*d*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))) + ((3*A + 4*C)*sin(c + d*x))/(8*b*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]


    @test_int [(cos(c + d*x)^(9/2)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 4, ((4*A + 3*C)*x*sqrt(cos(c + d*x)))/(8*b^2*sqrt(b*cos(c + d*x))) + ((4*A + 3*C)*cos(c + d*x)^(3/2)*sin(c + d*x))/(8*b^2*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(7/2)*sin(c + d*x))/(4*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(7/2)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 3, ((A + C)*sqrt(cos(c + d*x))*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x))) - (C*sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(5/2)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 4, (A*x*sqrt(cos(c + d*x)))/(b^2*sqrt(b*cos(c + d*x))) + (C*x*sqrt(cos(c + d*x)))/(2*b^2*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(3/2)*sin(c + d*x))/(2*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(3/2)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 3, (A*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(b^2*d*sqrt(b*cos(c + d*x))) + (C*sqrt(cos(c + d*x))*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(sqrt(cos(c + d*x))*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 3, (C*x*sqrt(cos(c + d*x)))/(b^2*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(b^2*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(sqrt(cos(c + d*x))*(b*cos(c + d*x))^(5/2)), x, 3, ((A + 2*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*b^2*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(2*b^2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(cos(c + d*x)^(3/2)*(b*cos(c + d*x))^(5/2)), x, 4, (A*sin(c + d*x))/(3*b^2*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))) + ((2*A + 3*C)*sin(c + d*x))/(3*b^2*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + C*cos(c + d*x)^2)/(cos(c + d*x)^(5/2)*(b*cos(c + d*x))^(5/2)), x, 4, ((3*A + 4*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(8*b^2*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(4*b^2*d*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))) + ((3*A + 4*C)*sin(c + d*x))/(8*b^2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(b*cos(c+d*x))^(n/3)*(A+C*cos(c+d*x)^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^(1/3)*(A + C*cos(c + d*x)^2), x, 3, (3*C*(b*cos(c + d*x))^(10/3)*sin(c + d*x))/(13*b^3*d) - (3*(13*A + 10*C)*(b*cos(c + d*x))^(10/3)*HypergeometricFunctions._₂F₁(1/2, 5/3, 8/3, cos(c + d*x)^2)*sin(c + d*x))/(130*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^(1/3)*(A + C*cos(c + d*x)^2), x, 3, (3*C*(b*cos(c + d*x))^(7/3)*sin(c + d*x))/(10*b^2*d) - (3*(10*A + 7*C)*(b*cos(c + d*x))^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(70*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^(1/3)*(A + C*cos(c + d*x)^2), x, 2, (3*C*(b*cos(c + d*x))^(4/3)*sin(c + d*x))/(7*b*d) - (3*(7*A + 4*C)*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(28*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(1/3)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^1, x, 3, (3*C*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*d) - (3*(4*A + C)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(4*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(1/3)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 3, (3*A*b*sin(c + d*x))/(2*d*(b*cos(c + d*x))^(2/3)) + (3*(A - 2*C)*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(1/3)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 3, (3*A*b^2*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/3)) - (3*(2*A + 5*C)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(5*d*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^(2/3)*(A + C*cos(c + d*x)^2), x, 3, (3*C*(b*cos(c + d*x))^(11/3)*sin(c + d*x))/(14*b^3*d) - (3*(14*A + 11*C)*(b*cos(c + d*x))^(11/3)*HypergeometricFunctions._₂F₁(1/2, 11/6, 17/6, cos(c + d*x)^2)*sin(c + d*x))/(154*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^(2/3)*(A + C*cos(c + d*x)^2), x, 3, (3*C*(b*cos(c + d*x))^(8/3)*sin(c + d*x))/(11*b^2*d) - (3*(11*A + 8*C)*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(88*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^(2/3)*(A + C*cos(c + d*x)^2), x, 2, (3*C*(b*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*b*d) - (3*(8*A + 5*C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(40*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(2/3)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^1, x, 3, (3*C*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*d) - (3*(5*A + 2*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(10*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(2/3)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 3, (3*A*b*sin(c + d*x))/(d*(b*cos(c + d*x))^(1/3)) + (3*(2*A - C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(2/3)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 3, (3*A*b^2*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)) - (3*(A + 4*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(8*d*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^(4/3)*(A + C*cos(c + d*x)^2), x, 3, (3*C*(b*cos(c + d*x))^(13/3)*sin(c + d*x))/(16*b^3*d) - (3*(16*A + 13*C)*(b*cos(c + d*x))^(13/3)*HypergeometricFunctions._₂F₁(1/2, 13/6, 19/6, cos(c + d*x)^2)*sin(c + d*x))/(208*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^(4/3)*(A + C*cos(c + d*x)^2), x, 3, (3*C*(b*cos(c + d*x))^(10/3)*sin(c + d*x))/(13*b^2*d) - (3*(13*A + 10*C)*(b*cos(c + d*x))^(10/3)*HypergeometricFunctions._₂F₁(1/2, 5/3, 8/3, cos(c + d*x)^2)*sin(c + d*x))/(130*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^(4/3)*(A + C*cos(c + d*x)^2), x, 2, (3*C*(b*cos(c + d*x))^(7/3)*sin(c + d*x))/(10*b*d) - (3*(10*A + 7*C)*(b*cos(c + d*x))^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(70*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(4/3)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^1, x, 3, (3*C*(b*cos(c + d*x))^(4/3)*sin(c + d*x))/(7*d) - (3*(7*A + 4*C)*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(28*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(4/3)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 3, (3*b*C*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*d) - (3*b*(4*A + C)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(4*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(4/3)*(A + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 3, (3*A*b^2*sin(c + d*x))/(2*d*(b*cos(c + d*x))^(2/3)) + (3*(A - 2*C)*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(8*d*sqrt(sin(c + d*x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(cos(c + d*x)^2*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(1/3), x, 3, (3*C*(b*cos(c + d*x))^(8/3)*sin(c + d*x))/(11*b^3*d) - (3*(11*A + 8*C)*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(88*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [(cos(c + d*x)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(1/3), x, 3, (3*C*(b*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*b^2*d) - (3*(8*A + 5*C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(40*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/3), x, 2, (3*C*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b*d) - (3*(5*A + 2*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(10*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + C*cos(c + d*x)^2)*sec(c + d*x))/(b*cos(c + d*x))^(1/3), x, 3, (3*A*sin(c + d*x))/(d*(b*cos(c + d*x))^(1/3)) + (3*(2*A - C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + C*cos(c + d*x)^2)*sec(c + d*x)^2)/(b*cos(c + d*x))^(1/3), x, 3, (3*A*b*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)) - (3*(A + 4*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + C*cos(c + d*x)^2)*sec(c + d*x)^3)/(b*cos(c + d*x))^(1/3), x, 3, (3*A*b^2*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/3)) + (3*(4*A + 7*C)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]


    @test_int [(cos(c + d*x)^2*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(2/3), x, 3, (3*C*(b*cos(c + d*x))^(7/3)*sin(c + d*x))/(10*b^3*d) - (3*(10*A + 7*C)*(b*cos(c + d*x))^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(70*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [(cos(c + d*x)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(2/3), x, 3, (3*C*(b*cos(c + d*x))^(4/3)*sin(c + d*x))/(7*b^2*d) - (3*(7*A + 4*C)*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(28*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(2/3), x, 2, (3*C*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*b*d) - (3*(4*A + C)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(4*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + C*cos(c + d*x)^2)*sec(c + d*x))/(b*cos(c + d*x))^(2/3), x, 3, (3*A*sin(c + d*x))/(2*d*(b*cos(c + d*x))^(2/3)) + (3*(A - 2*C)*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + C*cos(c + d*x)^2)*sec(c + d*x)^2)/(b*cos(c + d*x))^(2/3), x, 3, (3*A*b*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/3)) - (3*(2*A + 5*C)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + C*cos(c + d*x)^2)*sec(c + d*x)^3)/(b*cos(c + d*x))^(2/3), x, 3, (3*A*b^2*sin(c + d*x))/(8*d*(b*cos(c + d*x))^(8/3)) + (3*(5*A + 8*C)*HypergeometricFunctions._₂F₁(-(1/3), 1/2, 2/3, cos(c + d*x)^2)*sin(c + d*x))/(16*d*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2))]


    @test_int [(cos(c + d*x)^2*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(4/3), x, 3, (3*C*(b*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*b^3*d) - (3*(8*A + 5*C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(40*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [(cos(c + d*x)*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(4/3), x, 3, (3*C*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b^2*d) - (3*(5*A + 2*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(10*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [(A + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(4/3), x, 2, (3*A*sin(c + d*x))/(b*d*(b*cos(c + d*x))^(1/3)) + (3*(2*A - C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + C*cos(c + d*x)^2)*sec(c + d*x))/(b*cos(c + d*x))^(4/3), x, 3, (3*A*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)) - (3*(A + 4*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + C*cos(c + d*x)^2)*sec(c + d*x)^2)/(b*cos(c + d*x))^(4/3), x, 3, (3*A*b*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/3)) + (3*(4*A + 7*C)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(7*b*d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]
    @test_int [((A + C*cos(c + d*x)^2)*sec(c + d*x)^3)/(b*cos(c + d*x))^(4/3), x, 3, (3*A*b^2*sin(c + d*x))/(10*d*(b*cos(c + d*x))^(10/3)) + (3*(7*A + 10*C)*HypergeometricFunctions._₂F₁(-(2/3), 1/2, 1/3, cos(c + d*x)^2)*sin(c + d*x))/(40*d*(b*cos(c + d*x))^(4/3)*sqrt(sin(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x))^m*(b*cos(c+d*x))^n*(A+C*cos(c+d*x)^2)*with*m*symbolic=#


    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(4/3)*(A + C*cos(c + d*x)^2), x, 3, If(13>=8, (3*b*C*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*(10 + 3*m)) - (3*b*(C*(7 + 3*m) + A*(10 + 3*m))*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 + 3*m), (1/6)*(13 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 3*m)*(10 + 3*m)*sqrt(sin(c + d*x)^2)), (3*b*C*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*(10 + 3*m)) - (3*b*(C*(7 + 3*m) + A*(10 + 3*m))*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 + 3*m), (1/6)*(13 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(70 + 51*m + 9*m^2)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(2/3)*(A + C*cos(c + d*x)^2), x, 3, If(13>=8, (3*C*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(d*(8 + 3*m)) - (3*(C*(5 + 3*m) + A*(8 + 3*m))*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 + 3*m), (1/6)*(11 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 3*m)*(8 + 3*m)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(d*(8 + 3*m)) - (3*(C*(5 + 3*m) + A*(8 + 3*m))*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 + 3*m), (1/6)*(11 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(40 + 39*m + 9*m^2)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(1/3)*(A + C*cos(c + d*x)^2), x, 3, If(13>=8, (3*C*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*(7 + 3*m)) - (3*(C*(4 + 3*m) + A*(7 + 3*m))*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(4 + 3*m), (1/6)*(10 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(4 + 3*m)*(7 + 3*m)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*(7 + 3*m)) - (3*(C*(4 + 3*m) + A*(7 + 3*m))*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(4 + 3*m), (1/6)*(10 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(28 + 33*m + 9*m^2)*sqrt(sin(c + d*x)^2)))]
    @test_int [(cos(c + d*x)^m*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(1/3), x, 3, If(13>=8, (3*C*cos(c + d*x)^(1 + m)*sin(c + d*x))/(d*(5 + 3*m)*(b*cos(c + d*x))^(1/3)) - (3*(C*(2 + 3*m) + A*(5 + 3*m))*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(2 + 3*m), (1/6)*(8 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(2 + 3*m)*(5 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^(1 + m)*sin(c + d*x))/(d*(5 + 3*m)*(b*cos(c + d*x))^(1/3)) - (3*(C*(2 + 3*m) + A*(5 + 3*m))*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(2 + 3*m), (1/6)*(8 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(10 + 21*m + 9*m^2)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [(cos(c + d*x)^m*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(2/3), x, 3, If(13>=8, (3*C*cos(c + d*x)^(1 + m)*sin(c + d*x))/(d*(4 + 3*m)*(b*cos(c + d*x))^(2/3)) - (3*(C + 3*C*m + A*(4 + 3*m))*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(1 + 3*m), (1/6)*(7 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + 3*m)*(4 + 3*m)*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^(1 + m)*sin(c + d*x))/(d*(4 + 3*m)*(b*cos(c + d*x))^(2/3)) - (3*(C + 3*C*m + A*(4 + 3*m))*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(1 + 3*m), (1/6)*(7 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(4 + 15*m + 9*m^2)*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [(cos(c + d*x)^m*(A + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(4/3), x, 3, If(13>=8, (3*C*cos(c + d*x)^m*sin(c + d*x))/(b*d*(2 + 3*m)*(b*cos(c + d*x))^(1/3)) - (3*(C*(1 - 3*m) - A*(2 + 3*m))*cos(c + d*x)^m*HypergeometricFunctions._₂F₁(1/2, (1/6)*(-1 + 3*m), (1/6)*(5 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 - 3*m)*(2 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^m*sin(c + d*x))/(b*d*(2 + 3*m)*(b*cos(c + d*x))^(1/3)) - (3*(C*(1 - 3*m) - A*(2 + 3*m))*cos(c + d*x)^m*HypergeometricFunctions._₂F₁(1/2, (1/6)*(-1 + 3*m), (1/6)*(5 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(b*d*(2 - 3*m - 9*m^2)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x))^m*(b*cos(c+d*x))^n*(A+C*cos(c+d*x)^2)*with*n*symbolic=#


    @test_int [(a*cos(c + d*x))^m*(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2), x, 3, (C*(a*cos(c + d*x))^(1 + m)*(b*cos(c + d*x))^n*sin(c + d*x))/(a*d*(2 + m + n)) - ((C*(1 + m + n) + A*(2 + m + n))*(a*cos(c + d*x))^(1 + m)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 + m + n), (1/2)*(3 + m + n), cos(c + d*x)^2)*sin(c + d*x))/(a*d*(1 + m + n)*(2 + m + n)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2), x, 3, (C*(b*cos(c + d*x))^(3 + n)*sin(c + d*x))/(b^3*d*(4 + n)) - ((C*(3 + n) + A*(4 + n))*(b*cos(c + d*x))^(3 + n)*HypergeometricFunctions._₂F₁(1/2, (3 + n)/2, (5 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^3*d*(3 + n)*(4 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2), x, 3, (C*(b*cos(c + d*x))^(2 + n)*sin(c + d*x))/(b^2*d*(3 + n)) - ((C*(2 + n) + A*(3 + n))*(b*cos(c + d*x))^(2 + n)*HypergeometricFunctions._₂F₁(1/2, (2 + n)/2, (4 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^2*d*(2 + n)*(3 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2), x, 2, (C*(b*cos(c + d*x))^(1 + n)*sin(c + d*x))/(b*d*(2 + n)) - ((C*(1 + n) + A*(2 + n))*(b*cos(c + d*x))^(1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 + n)*(2 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2)*sec(c + d*x)^1, x, 3, (C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(1 + n)) - ((A + A*n + C*n)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, n/2, (2 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*n*(1 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 3, (b*C*(b*cos(c + d*x))^(-1 + n)*sin(c + d*x))/(d*n) - (b*(C*(1 - n) - A*n)*(b*cos(c + d*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (-1 + n)/2, (1 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - n)*n*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 3, If(13>=8, -((b^2*C*(b*cos(c + d*x))^(-2 + n)*sin(c + d*x))/(d*(1 - n))) + (b^2*(A*(1 - n) + C*(2 - n))*(b*cos(c + d*x))^(-2 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-2 + n), n/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - n)*(2 - n)*sqrt(sin(c + d*x)^2)), -((b^2*C*(b*cos(c + d*x))^(-2 + n)*sin(c + d*x))/(d*(1 - n))) + (b^2*(A*(1 - n) + C*(2 - n))*(b*cos(c + d*x))^(-2 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-2 + n), n/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(2 - 3*n + n^2)*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 3, If(13>=8, -((b^3*C*(b*cos(c + d*x))^(-3 + n)*sin(c + d*x))/(d*(2 - n))) + (b^3*(A*(2 - n) + C*(3 - n))*(b*cos(c + d*x))^(-3 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-3 + n), (1/2)*(-1 + n), cos(c + d*x)^2)*sin(c + d*x))/(d*(2 - n)*(3 - n)*sqrt(sin(c + d*x)^2)), -((b^3*C*(b*cos(c + d*x))^(-3 + n)*sin(c + d*x))/(d*(2 - n))) + (b^3*(A*(2 - n) + C*(3 - n))*(b*cos(c + d*x))^(-3 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-3 + n), (1/2)*(-1 + n), cos(c + d*x)^2)*sin(c + d*x))/(d*(6 - 5*n + n^2)*sqrt(sin(c + d*x)^2)))]


    @test_int [cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2), x, 3, If(13>=8, (2*C*cos(c + d*x)^(7/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(9 + 2*n)) - (2*(C*(7 + 2*n) + A*(9 + 2*n))*cos(c + d*x)^(7/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(7 + 2*n), (1/4)*(11 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 2*n)*(9 + 2*n)*sqrt(sin(c + d*x)^2)), (2*C*cos(c + d*x)^(7/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(9 + 2*n)) - (2*(C*(7 + 2*n) + A*(9 + 2*n))*cos(c + d*x)^(7/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(7 + 2*n), (1/4)*(11 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(63 + 32*n + 4*n^2)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2), x, 3, If(13>=8, (2*C*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(7 + 2*n)) - (2*(C*(5 + 2*n) + A*(7 + 2*n))*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 2*n)*(7 + 2*n)*sqrt(sin(c + d*x)^2)), (2*C*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(7 + 2*n)) - (2*(C*(5 + 2*n) + A*(7 + 2*n))*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(35 + 24*n + 4*n^2)*sqrt(sin(c + d*x)^2)))]
    @test_int [sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2), x, 3, If(13>=8, (2*C*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(5 + 2*n)) - (2*(C*(3 + 2*n) + A*(5 + 2*n))*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 + 2*n)*(5 + 2*n)*sqrt(sin(c + d*x)^2)), (2*C*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(5 + 2*n)) - (2*(C*(3 + 2*n) + A*(5 + 2*n))*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(15 + 16*n + 4*n^2)*sqrt(sin(c + d*x)^2)))]
    @test_int [((b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2))/sqrt(cos(c + d*x)), x, 3, If(13>=8, (2*C*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(3 + 2*n)) - (2*(C + 2*C*n + A*(3 + 2*n))*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 + 2*n), (1/4)*(5 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + 2*n)*(3 + 2*n)*sqrt(sin(c + d*x)^2)), (2*C*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(3 + 2*n)) - (2*(C + 2*C*n + A*(3 + 2*n))*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 + 2*n), (1/4)*(5 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 + 8*n + 4*n^2)*sqrt(sin(c + d*x)^2)))]
    @test_int [((b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(3/2), x, 3, (2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(1 + 2*n)*sqrt(cos(c + d*x))) + (2*(A - C*(1 - 2*n) + 2*A*n)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (-1 + 2*n)/4, (3 + 2*n)/4, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - 4*n^2)*sqrt(cos(c + d*x))*sqrt(sin(c + d*x)^2))]
    @test_int [((b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(5/2), x, 3, If(13>=8, -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(1 - 2*n)*cos(c + d*x)^(3/2))) + (2*(A + C*(3 - 2*n) - 2*A*n)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 + 2*n), (1/4)*(1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - 2*n)*(3 - 2*n)*cos(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2)), -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(1 - 2*n)*cos(c + d*x)^(3/2))) + (2*(A + C*(3 - 2*n) - 2*A*n)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 + 2*n), (1/4)*(1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - 8*n + 4*n^2)*cos(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2)))]
    @test_int [((b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(7/2), x, 3, If(13>=8, -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(3 - 2*n)*cos(c + d*x)^(5/2))) + (2*(A*(3 - 2*n) + C*(5 - 2*n))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-5 + 2*n), (1/4)*(-1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - 2*n)*(5 - 2*n)*cos(c + d*x)^(5/2)*sqrt(sin(c + d*x)^2)), -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(3 - 2*n)*cos(c + d*x)^(5/2))) + (2*(A*(3 - 2*n) + C*(5 - 2*n))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-5 + 2*n), (1/4)*(-1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(15 - 16*n + 4*n^2)*cos(c + d*x)^(5/2)*sqrt(sin(c + d*x)^2)))]
    @test_int [((b*cos(c + d*x))^n*(A + C*cos(c + d*x)^2))/cos(c + d*x)^(9/2), x, 3, If(13>=8, -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(5 - 2*n)*cos(c + d*x)^(7/2))) + (2*(A*(5 - 2*n) + C*(7 - 2*n))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-7 + 2*n), (1/4)*(-3 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 - 2*n)*(7 - 2*n)*cos(c + d*x)^(7/2)*sqrt(sin(c + d*x)^2)), -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(5 - 2*n)*cos(c + d*x)^(7/2))) + (2*(A*(5 - 2*n) + C*(7 - 2*n))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-7 + 2*n), (1/4)*(-3 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(35 - 24*n + 4*n^2)*cos(c + d*x)^(7/2)*sqrt(sin(c + d*x)^2)))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(A+C*cos(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*cos(e+f*x))^m*(A+C*cos(e+f*x)^2)=#


    @test_int [(a + a*cos(e + f*x))^m*(A + C*cos(e + f*x)^2), x, 4, If(13>=8, -((C*(a + a*cos(e + f*x))^m*sin(e + f*x))/(f*(2 + 3*m + m^2))) + (C*(a + a*cos(e + f*x))^(1 + m)*sin(e + f*x))/(a*f*(2 + m)) + (2^(1/2 + m)*(C*(1 + m + m^2) + A*(2 + 3*m + m^2))*(1 + cos(e + f*x))^(-(1/2) - m)*(a + a*cos(e + f*x))^m*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - cos(e + f*x)))*sin(e + f*x))/(f*(1 + m)*(2 + m)), -((C*(a + a*cos(e + f*x))^m*sin(e + f*x))/(f*(2 + 3*m + m^2))) + (C*(a + a*cos(e + f*x))^(1 + m)*sin(e + f*x))/(a*f*(2 + m)) + (2^(1/2 + m)*(C*(1 + m + m^2) + A*(2 + 3*m + m^2))*(1 + cos(e + f*x))^(-(1/2) - m)*(a + a*cos(e + f*x))^m*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - cos(e + f*x)))*sin(e + f*x))/(f*(2 + 3*m + m^2)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+C*cos(e+f*x)^2)*(a+a*cos(e+f*x))^(n/3)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(A + C*cos(c + d*x)^2)*(a + a*cos(c + d*x))^(2/3), x, 4, -((9*C*(a + a*cos(c + d*x))^(2/3)*sin(c + d*x))/(40*d)) + (3*C*(a + a*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*a*d) + ((40*A + 19*C)*(a + a*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(10*2^(5/6)*d*(1 + cos(c + d*x))^(7/6))]
    @test_int [(A + C*cos(c + d*x)^2)*(a + a*cos(c + d*x))^(1/3), x, 4, -((9*C*(a + a*cos(c + d*x))^(1/3)*sin(c + d*x))/(28*d)) + (3*C*(a + a*cos(c + d*x))^(4/3)*sin(c + d*x))/(7*a*d) + ((28*A + 13*C)*(a + a*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(14*2^(1/6)*d*(1 + cos(c + d*x))^(5/6))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(A + C*cos(c + d*x)^2)/(a + a*cos(c + d*x))^(1/3), x, 4, -((9*C*sin(c + d*x))/(10*d*(a + a*cos(c + d*x))^(1/3))) + (3*C*(a + a*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*a*d) + ((10*A + 7*C)*HypergeometricFunctions._₂F₁(1/2, 5/6, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(5*2^(5/6)*d*(1 + cos(c + d*x))^(1/6)*(a + a*cos(c + d*x))^(1/3))]
    @test_int [(A + C*cos(c + d*x)^2)/(a + a*cos(c + d*x))^(2/3), x, 4, (3*(A + C)*sin(c + d*x))/(d*(a + a*cos(c + d*x))^(2/3)) + (3*C*(a + a*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*a*d) - ((4*A + 7*C)*(a + a*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(2*2^(1/6)*a*d*(1 + cos(c + d*x))^(5/6))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(A+C*cos(e+f*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^(n/3)*(A+C*cos(e+f*x)^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(A + C*cos(c + d*x)^2)*(a + b*cos(c + d*x))^(2/3), x, 8, (3*C*(a + b*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*b*d) - (3*a*(a + b)*C*AppellF1(1/2, 1/2, -(5/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(4*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3)) + ((3*a^2*C + b^2*(8*A + 5*C))*AppellF1(1/2, 1/2, -(2/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(4*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3))]
    @test_int [(A + C*cos(c + d*x)^2)*(a + b*cos(c + d*x))^(1/3), x, 8, (3*C*(a + b*cos(c + d*x))^(4/3)*sin(c + d*x))/(7*b*d) - (3*sqrt(2)*a*(a + b)*C*AppellF1(1/2, 1/2, -(4/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(7*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3)) + (sqrt(2)*(3*a^2*C + b^2*(7*A + 4*C))*AppellF1(1/2, 1/2, -(1/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(7*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(A + C*cos(c + d*x)^2)/(a + b*cos(c + d*x))^(1/3), x, 8, (3*C*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b*d) - (3*sqrt(2)*a*C*AppellF1(1/2, 1/2, -(2/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3)) + (sqrt(2)*(3*a^2*C + b^2*(5*A + 2*C))*AppellF1(1/2, 1/2, 1/3, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*((a + b*cos(c + d*x))/(a + b))^(1/3)*sin(c + d*x))/(5*b^2*d*sqrt(1 + cos(c + d*x))*(a + b*cos(c + d*x))^(1/3))]
    @test_int [(A + C*cos(c + d*x)^2)/(a + b*cos(c + d*x))^(2/3), x, 8, (3*C*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*b*d) - (3*a*C*AppellF1(1/2, 1/2, -(1/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(2*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3)) + ((3*a^2*C + b^2*(4*A + C))*AppellF1(1/2, 1/2, 2/3, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*((a + b*cos(c + d*x))/(a + b))^(2/3)*sin(c + d*x))/(2*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*(a + b*cos(c + d*x))^(2/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(A+C*cos(e+f*x)^2)*with*m*symbolic=#


    @test_int [(a + b*cos(e + f*x))^m*(A - A*cos(e + f*x)^2), x, 7, -((4*sqrt(2)*A*AppellF1(1/2, -(3/2), -m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(f*sqrt(1 + cos(e + f*x))))) + (4*sqrt(2)*A*AppellF1(1/2, -(1/2), -m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(f*sqrt(1 + cos(e + f*x))))]


    @test_int [(a + b*cos(e + f*x))^m*(A + C*cos(e + f*x)^2), x, 8, (C*(a + b*cos(e + f*x))^(1 + m)*sin(e + f*x))/(b*f*(2 + m)) - (sqrt(2)*a*(a + b)*C*AppellF1(1/2, 1/2, -1 - m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + cos(e + f*x)))) + (sqrt(2)*(a^2*C + b^2*(C*(1 + m) + A*(2 + m)))*AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + cos(e + f*x))))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    @test_int [(a*cos(e + f*x))^m*(B*cos(e + f*x) + C*cos(e + f*x)^2), x, 4, -((B*(a*cos(e + f*x))^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, cos(e + f*x)^2)*sin(e + f*x))/(a^2*f*(2 + m)*sqrt(sin(e + f*x)^2))) - (C*(a*cos(e + f*x))^(3 + m)*HypergeometricFunctions._₂F₁(1/2, (3 + m)/2, (5 + m)/2, cos(e + f*x)^2)*sin(e + f*x))/(a^3*f*(3 + m)*sqrt(sin(e + f*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^n*(B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^(n/2)*(B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^(m/2)*(b*cos(e+f*x))^(n/2)*(B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^(n/3)*(B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(1/3)*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, -((3*B*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 + 3*m), (1/6)*(13 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 3*m)*sqrt(sin(c + d*x)^2))) - (3*C*cos(c + d*x)^(3 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(10 + 3*m), (1/6)*(16 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(10 + 3*m)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(2/3)*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, -((3*B*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(8 + 3*m), (1/6)*(14 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(8 + 3*m)*sqrt(sin(c + d*x)^2))) - (3*C*cos(c + d*x)^(3 + m)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(11 + 3*m), (1/6)*(17 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(11 + 3*m)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(4/3)*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, -((3*b*B*cos(c + d*x)^(3 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(10 + 3*m), (1/6)*(16 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(10 + 3*m)*sqrt(sin(c + d*x)^2))) - (3*b*C*cos(c + d*x)^(4 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(13 + 3*m), (1/6)*(19 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(13 + 3*m)*sqrt(sin(c + d*x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(cos(c + d*x)^m*(B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(1/3), x, 5, -((3*B*cos(c + d*x)^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 + 3*m), (1/6)*(11 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))) - (3*C*cos(c + d*x)^(3 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(8 + 3*m), (1/6)*(14 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(8 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]


    @test_int [(cos(c + d*x)^m*(B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(2/3), x, 5, -((3*B*cos(c + d*x)^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(4 + 3*m), (1/6)*(10 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(4 + 3*m)*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2))) - (3*C*cos(c + d*x)^(3 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 + 3*m), (1/6)*(13 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 3*m)*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2))]


    @test_int [(cos(c + d*x)^m*(B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(4/3), x, 5, -((3*B*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(2 + 3*m), (1/6)*(8 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(b*d*(2 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))) - (3*C*cos(c + d*x)^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 + 3*m), (1/6)*(11 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(b*d*(5 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^n*(B*cos(e+f*x)+C*cos(e+f*x)^2)*with*n*symbolic=#


    @test_int [(a*cos(c + d*x))^m*(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, -((B*(a*cos(c + d*x))^(2 + m)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(2 + m + n), (1/2)*(4 + m + n), cos(c + d*x)^2)*sin(c + d*x))/(a^2*d*(2 + m + n)*sqrt(sin(c + d*x)^2))) - (C*(a*cos(c + d*x))^(3 + m)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(3 + m + n), (1/2)*(5 + m + n), cos(c + d*x)^2)*sin(c + d*x))/(a^3*d*(3 + m + n)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, -((B*(b*cos(c + d*x))^(4 + n)*HypergeometricFunctions._₂F₁(1/2, (4 + n)/2, (6 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^4*d*(4 + n)*sqrt(sin(c + d*x)^2))) - (C*(b*cos(c + d*x))^(5 + n)*HypergeometricFunctions._₂F₁(1/2, (5 + n)/2, (7 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^5*d*(5 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, -((B*(b*cos(c + d*x))^(3 + n)*HypergeometricFunctions._₂F₁(1/2, (3 + n)/2, (5 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^3*d*(3 + n)*sqrt(sin(c + d*x)^2))) - (C*(b*cos(c + d*x))^(4 + n)*HypergeometricFunctions._₂F₁(1/2, (4 + n)/2, (6 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^4*d*(4 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 4, -((B*(b*cos(c + d*x))^(2 + n)*HypergeometricFunctions._₂F₁(1/2, (2 + n)/2, (4 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^2*d*(2 + n)*sqrt(sin(c + d*x)^2))) - (C*(b*cos(c + d*x))^(3 + n)*HypergeometricFunctions._₂F₁(1/2, (3 + n)/2, (5 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^3*d*(3 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^1, x, 5, -((B*(b*cos(c + d*x))^(1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 + n)*sqrt(sin(c + d*x)^2))) - (C*(b*cos(c + d*x))^(2 + n)*HypergeometricFunctions._₂F₁(1/2, (2 + n)/2, (4 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^2*d*(2 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 5, -((B*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, n/2, (2 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*n*sqrt(sin(c + d*x)^2))) - (C*(b*cos(c + d*x))^(1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 5, (b*B*(b*cos(c + d*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-1 + n), (1 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - n)*sqrt(sin(c + d*x)^2)) - (C*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, n/2, (2 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*n*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 5, (b^2*B*(b*cos(c + d*x))^(-2 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-2 + n), n/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(2 - n)*sqrt(sin(c + d*x)^2)) + (b*C*(b*cos(c + d*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-1 + n), (1 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - n)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, -((2*B*cos(c + d*x)^(9/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(9 + 2*n), (1/4)*(13 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(9 + 2*n)*sqrt(sin(c + d*x)^2))) - (2*C*cos(c + d*x)^(11/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(11 + 2*n), (1/4)*(15 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(11 + 2*n)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, -((2*B*cos(c + d*x)^(7/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(7 + 2*n), (1/4)*(11 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 2*n)*sqrt(sin(c + d*x)^2))) - (2*C*cos(c + d*x)^(9/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(9 + 2*n), (1/4)*(13 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(9 + 2*n)*sqrt(sin(c + d*x)^2))]
    @test_int [sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, -((2*B*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 2*n)*sqrt(sin(c + d*x)^2))) - (2*C*cos(c + d*x)^(7/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(7 + 2*n), (1/4)*(11 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 2*n)*sqrt(sin(c + d*x)^2))]
    @test_int [((b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(cos(c + d*x)), x, 5, -((2*B*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 + 2*n)*sqrt(sin(c + d*x)^2))) - (2*C*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 2*n)*sqrt(sin(c + d*x)^2))]
    @test_int [((b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(3/2), x, 5, -((2*B*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 + 2*n), (1/4)*(5 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + 2*n)*sqrt(sin(c + d*x)^2))) - (2*C*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 + 2*n)*sqrt(sin(c + d*x)^2))]
    @test_int [((b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(5/2), x, 5, (2*B*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-1 + 2*n), (1/4)*(3 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - 2*n)*sqrt(cos(c + d*x))*sqrt(sin(c + d*x)^2)) - (2*C*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 + 2*n), (1/4)*(5 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + 2*n)*sqrt(sin(c + d*x)^2))]
    @test_int [((b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(7/2), x, 5, (2*B*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 + 2*n), (1/4)*(1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - 2*n)*cos(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2)) + (2*C*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-1 + 2*n), (1/4)*(3 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - 2*n)*sqrt(cos(c + d*x))*sqrt(sin(c + d*x)^2))]
    @test_int [((b*cos(c + d*x))^n*(B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(9/2), x, 5, (2*B*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-5 + 2*n), (1/4)*(-1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 - 2*n)*cos(c + d*x)^(5/2)*sqrt(sin(c + d*x)^2)) + (2*C*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 + 2*n), (1/4)*(1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - 2*n)*cos(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*cos(e+f*x))^m*(B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    @test_int [(a + a*cos(e + f*x))^m*(B*cos(e + f*x) + C*cos(e + f*x)^2), x, 4, If(13>=8, -(((C - B*(2 + m))*(a + a*cos(e + f*x))^m*sin(e + f*x))/(f*(1 + m)*(2 + m))) + (C*(a + a*cos(e + f*x))^(1 + m)*sin(e + f*x))/(a*f*(2 + m)) + (2^(1/2 + m)*(B*m*(2 + m) + C*(1 + m + m^2))*(1 + cos(e + f*x))^(-(1/2) - m)*(a + a*cos(e + f*x))^m*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - cos(e + f*x)))*sin(e + f*x))/(f*(1 + m)*(2 + m)), -(((C - B*(2 + m))*(a + a*cos(e + f*x))^m*sin(e + f*x))/(f*(1 + m)*(2 + m))) + (C*(a + a*cos(e + f*x))^(1 + m)*sin(e + f*x))/(a*f*(2 + m)) + (2^(1/2 + m)*(B*m*(2 + m) + C*(1 + m + m^2))*(1 + cos(e + f*x))^(-(1/2) - m)*(a + a*cos(e + f*x))^m*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - cos(e + f*x)))*sin(e + f*x))/(f*(2 + 3*m + m^2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    @test_int [(a + b*cos(e + f*x))^m*(B*cos(e + f*x) + C*cos(e + f*x)^2), x, 8, (C*(a + b*cos(e + f*x))^(1 + m)*sin(e + f*x))/(b*f*(2 + m)) - (sqrt(2)*(a + b)*(a*C - b*B*(2 + m))*AppellF1(1/2, 1/2, -1 - m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + cos(e + f*x)))) + (sqrt(2)*(a^2*C + b^2*C*(1 + m) - a*b*B*(2 + m))*AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + cos(e + f*x))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(B*cos(e+f*x)+C*cos(e+f*x)^2)*(a+b*cos(e+f*x))^(n/3)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(B*cos(c + d*x) + C*cos(c + d*x)^2)*(a + b*cos(c + d*x))^(2/3), x, 8, (3*C*(a + b*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*b*d) + ((a + b)*(8*b*B - 3*a*C)*AppellF1(1/2, 1/2, -(5/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(4*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3)) - ((8*a*b*B - 3*a^2*C - 5*b^2*C)*AppellF1(1/2, 1/2, -(2/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(4*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3))]
    @test_int [(B*cos(c + d*x) + C*cos(c + d*x)^2)*(a + b*cos(c + d*x))^(1/3), x, 8, (3*C*(a + b*cos(c + d*x))^(4/3)*sin(c + d*x))/(7*b*d) + (sqrt(2)*(a + b)*(7*b*B - 3*a*C)*AppellF1(1/2, 1/2, -(4/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(7*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3)) - (sqrt(2)*(7*a*b*B - 3*a^2*C - 4*b^2*C)*AppellF1(1/2, 1/2, -(1/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(7*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(B*cos(c + d*x) + C*cos(c + d*x)^2)/(a + b*cos(c + d*x))^(1/3), x, 8, (3*C*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b*d) + (sqrt(2)*(5*b*B - 3*a*C)*AppellF1(1/2, 1/2, -(2/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3)) - (sqrt(2)*(5*a*b*B - 3*a^2*C - 2*b^2*C)*AppellF1(1/2, 1/2, 1/3, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*((a + b*cos(c + d*x))/(a + b))^(1/3)*sin(c + d*x))/(5*b^2*d*sqrt(1 + cos(c + d*x))*(a + b*cos(c + d*x))^(1/3))]
    @test_int [(B*cos(c + d*x) + C*cos(c + d*x)^2)/(a + b*cos(c + d*x))^(2/3), x, 8, (3*C*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*b*d) + ((4*b*B - 3*a*C)*AppellF1(1/2, 1/2, -(1/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(2*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3)) - ((4*a*b*B - 3*a^2*C - b^2*C)*AppellF1(1/2, 1/2, 2/3, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*((a + b*cos(c + d*x))/(a + b))^(2/3)*sin(c + d*x))/(2*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*(a + b*cos(c + d*x))^(2/3))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    @test_int [(a*cos(e + f*x))^m*(A + B*cos(e + f*x) + C*cos(e + f*x)^2), x, 4, (C*(a*cos(e + f*x))^(1 + m)*sin(e + f*x))/(a*f*(2 + m)) - ((C*(1 + m) + A*(2 + m))*(a*cos(e + f*x))^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1 + m)/2, (3 + m)/2, cos(e + f*x)^2)*sin(e + f*x))/(a*f*(1 + m)*(2 + m)*sqrt(sin(e + f*x)^2)) - (B*(a*cos(e + f*x))^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (2 + m)/2, (4 + m)/2, cos(e + f*x)^2)*sin(e + f*x))/(a^2*f*(2 + m)*sqrt(sin(e + f*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^n*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^(n/2)*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^2*sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 10, (2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (10*b*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (10*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b*d) + (2*B*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^2*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^3*d)]
    @test_int [cos(c + d*x)*sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 9, (6*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*b*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*B*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^2*d)]
    @test_int [sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 7, (2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*b*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b*d)]
    @test_int [sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x), x, 7, (2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))) + (2*b*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 7, -((2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*b*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(d*sqrt(b*cos(c + d*x))) + (2*A*b*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 8, -((2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*b*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^2*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*b*B*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 9, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*b*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^3*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b^2*B*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*b*(3*A + 5*C)*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^5, x, 10, -((6*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*b*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*A*b^4*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*b^3*B*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b^2*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2)) + (6*b*B*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]


    @test_int [cos(c + d*x)*(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 10, (2*b*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (10*b^2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (10*b*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*d) + (2*B*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^2*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 8, (6*b*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*b^2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*b*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*B*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x), x, 8, (2*b*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*b^2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 7, (2*b*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))) + (2*b^2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 7, -((2*b*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*b^2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(d*sqrt(b*cos(c + d*x))) + (2*A*b^2*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 8, -((2*b*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*b^2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^3*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*b^2*B*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^5, x, 9, -((2*b*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*b^2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^4*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b^3*B*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*b^2*(3*A + 5*C)*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^6, x, 10, -((6*b*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*b^2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*A*b^5*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*b^4*B*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b^3*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2)) + (6*b^2*B*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]


    @test_int [(b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 9, (2*b^2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*d*sqrt(cos(c + d*x))) + (10*b^3*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (10*b^2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*b*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*d) + (2*B*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x), x, 9, (6*b^2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*b^3*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*b^2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*d) + (2*b*B*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 8, (2*b^2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))) + (2*b^3*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b^2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d) + (2*b*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 7, (2*b^2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))) + (2*b^3*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*b^2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 7, -((2*b^2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*b^3*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(d*sqrt(b*cos(c + d*x))) + (2*A*b^3*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^5, x, 8, -((2*b^2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x)))) + (2*b^3*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^4*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*b^3*B*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^6, x, 9, -((2*b^2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*b^3*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^5*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b^4*B*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*b^3*(3*A + 5*C)*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [(b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^7, x, 10, -((6*b^2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x)))) + (2*b^3*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*A*b^6*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*b^5*B*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b^4*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2)) + (6*b^3*B*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(cos(c + d*x)^3*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(b*cos(c + d*x)), x, 10, (2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b*d*sqrt(cos(c + d*x))) + (10*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (10*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b*d) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b^2*d) + (2*B*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^3*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^4*d)]
    @test_int [(cos(c + d*x)^2*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(b*cos(c + d*x)), x, 9, (6*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b*d) + (2*B*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^2*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^3*d)]
    @test_int [(cos(c + d*x)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(b*cos(c + d*x)), x, 8, (2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b*d) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^2*d)]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/sqrt(b*cos(c + d*x)), x, 6, (2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b*d*sqrt(cos(c + d*x))) + (2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b*d)]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x))/sqrt(b*cos(c + d*x)), x, 7, -((2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b*d*sqrt(cos(c + d*x)))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2)/sqrt(b*cos(c + d*x)), x, 8, -((2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b*d*sqrt(cos(c + d*x)))) + (2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*B*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3)/sqrt(b*cos(c + d*x)), x, 9, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x)))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*d*sqrt(b*cos(c + d*x))) + (2*A*b^2*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b*B*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*(3*A + 5*C)*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^4)/sqrt(b*cos(c + d*x)), x, 10, -((6*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b*d*sqrt(cos(c + d*x)))) + (2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*d*sqrt(b*cos(c + d*x))) + (2*A*b^3*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*b^2*B*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*b*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2)) + (6*B*sin(c + d*x))/(5*d*sqrt(b*cos(c + d*x)))]


    @test_int [(cos(c + d*x)^4*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 10, (2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^2*d*sqrt(cos(c + d*x))) + (10*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b*d*sqrt(b*cos(c + d*x))) + (10*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b^2*d) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b^3*d) + (2*B*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^4*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^5*d)]
    @test_int [(cos(c + d*x)^3*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 9, (6*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b*d*sqrt(b*cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b^2*d) + (2*B*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^3*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^4*d)]
    @test_int [(cos(c + d*x)^2*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 8, (2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b*d*sqrt(b*cos(c + d*x))) + (2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b^2*d) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^3*d)]
    @test_int [(cos(c + d*x)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 7, (2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^2*d*sqrt(cos(c + d*x))) + (2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b*d*sqrt(b*cos(c + d*x))) + (2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b^2*d)]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 6, -((2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^2*d*sqrt(cos(c + d*x)))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(b*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x))/(b*cos(c + d*x))^(3/2), x, 8, -((2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^2*d*sqrt(cos(c + d*x)))) + (2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*B*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2)/(b*cos(c + d*x))^(3/2), x, 9, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x)))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b*d*sqrt(b*cos(c + d*x))) + (2*A*b*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*B*sin(c + d*x))/(3*d*(b*cos(c + d*x))^(3/2)) + (2*(3*A + 5*C)*sin(c + d*x))/(5*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3)/(b*cos(c + d*x))^(3/2), x, 10, -((6*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x)))) + (2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b*d*sqrt(b*cos(c + d*x))) + (2*A*b^2*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*b*B*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*(5*A + 7*C)*sin(c + d*x))/(21*d*(b*cos(c + d*x))^(3/2)) + (6*B*sin(c + d*x))/(5*b*d*sqrt(b*cos(c + d*x)))]


    @test_int [(cos(c + d*x)^5*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 10, (2*(9*A + 7*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(15*b^3*d*sqrt(cos(c + d*x))) + (10*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b^2*d*sqrt(b*cos(c + d*x))) + (10*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b^3*d) + (2*(9*A + 7*C)*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(45*b^4*d) + (2*B*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^5*d) + (2*C*(b*cos(c + d*x))^(7/2)*sin(c + d*x))/(9*b^6*d)]
    @test_int [(cos(c + d*x)^4*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 9, (6*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b^2*d*sqrt(b*cos(c + d*x))) + (2*(7*A + 5*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(21*b^3*d) + (2*B*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^4*d) + (2*C*(b*cos(c + d*x))^(5/2)*sin(c + d*x))/(7*b^5*d)]
    @test_int [(cos(c + d*x)^3*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 8, (2*(5*A + 3*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b^3*d) + (2*C*(b*cos(c + d*x))^(3/2)*sin(c + d*x))/(5*b^4*d)]
    @test_int [(cos(c + d*x)^2*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 7, (2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^3*d*sqrt(cos(c + d*x))) + (2*(3*A + C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*b^3*d)]
    @test_int [(cos(c + d*x)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 7, -((2*(A - C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^3*d*sqrt(cos(c + d*x)))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(b^2*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 7, -((2*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(b^3*d*sqrt(cos(c + d*x)))) + (2*(A + 3*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(3*b*d*(b*cos(c + d*x))^(3/2)) + (2*B*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x))/(b*cos(c + d*x))^(5/2), x, 9, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x)))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*B*sin(c + d*x))/(3*b*d*(b*cos(c + d*x))^(3/2)) + (2*(3*A + 5*C)*sin(c + d*x))/(5*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2)/(b*cos(c + d*x))^(5/2), x, 10, -((6*B*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x)))) + (2*(5*A + 7*C)*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(21*b^2*d*sqrt(b*cos(c + d*x))) + (2*A*b*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/2)) + (2*B*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/2)) + (2*(5*A + 7*C)*sin(c + d*x))/(21*b*d*(b*cos(c + d*x))^(3/2)) + (6*B*sin(c + d*x))/(5*b^2*d*sqrt(b*cos(c + d*x)))]


    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(7/2), x, 8, -((2*(3*A + 5*C)*sqrt(b*cos(c + d*x))*Elliptic.E((1/2)*(c + d*x), 2))/(5*b^4*d*sqrt(cos(c + d*x)))) + (2*B*sqrt(cos(c + d*x))*Elliptic.F((1/2)*(c + d*x), 2))/(3*b^3*d*sqrt(b*cos(c + d*x))) + (2*A*sin(c + d*x))/(5*b*d*(b*cos(c + d*x))^(5/2)) + (2*B*sin(c + d*x))/(3*b^2*d*(b*cos(c + d*x))^(3/2)) + (2*(3*A + 5*C)*sin(c + d*x))/(5*b^3*d*sqrt(b*cos(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^(m/2)*(b*cos(e+f*x))^(n/2)*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 8, (3*B*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + ((5*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(5*d*sqrt(cos(c + d*x))) + (3*B*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (B*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d) + (C*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(5*d) - ((5*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(15*d*sqrt(cos(c + d*x)))]
    @test_int [cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 7, ((4*A + 3*C)*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) + ((4*A + 3*C)*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (C*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d) - (B*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x)))]
    @test_int [sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 3, (B*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + ((3*A + 2*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*sqrt(cos(c + d*x))) + (B*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d) + (C*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [(sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(cos(c + d*x)), x, 5, (A*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (C*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) + (C*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [(sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(3/2), x, 4, (B*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (A*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x))) + (C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x)))]
    @test_int [(sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(5/2), x, 4, (C*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (B*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x))) + (A*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [(sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(7/2), x, 6, ((A + 2*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (A*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2)) + (B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [(sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(9/2), x, 7, (B*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (A*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(7/2)) + (B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2)) + ((2*A + 3*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(3/2))]
    @test_int [(sqrt(b*cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(11/2), x, 7, ((3*A + 4*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(8*d*sqrt(cos(c + d*x))) + (A*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d*cos(c + d*x)^(9/2)) + ((3*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d*cos(c + d*x)^(5/2)) + (B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2)) + (B*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*cos(c + d*x)^(7/2))]


    @test_int [cos(c + d*x)^(3/2)*(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 8, (3*b*B*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (b*(5*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(5*d*sqrt(cos(c + d*x))) + (3*b*B*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (b*B*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d) + (b*C*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(5*d) - (b*(5*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(15*d*sqrt(cos(c + d*x)))]
    @test_int [sqrt(cos(c + d*x))*(b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 7, (b*(4*A + 3*C)*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (b*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) + (b*(4*A + 3*C)*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (b*C*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d) - (b*B*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(cos(c + d*x)), x, 3, (b*B*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (b*(3*A + 2*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*sqrt(cos(c + d*x))) + (b*B*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d) + (b*C*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(3/2), x, 5, (A*b*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (b*C*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (b*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) + (b*C*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(5/2), x, 4, (b*B*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (A*b*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x))) + (b*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(7/2), x, 4, (b*C*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (b*B*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x))) + (A*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(9/2), x, 6, (b*(A + 2*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (A*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2)) + (b*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(11/2), x, 7, (b*B*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (A*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(7/2)) + (b*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2)) + (b*(2*A + 3*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(13/2), x, 7, (b*(3*A + 4*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(8*d*sqrt(cos(c + d*x))) + (A*b*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d*cos(c + d*x)^(9/2)) + (b*(3*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d*cos(c + d*x)^(5/2)) + (b*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2)) + (b*B*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*cos(c + d*x)^(7/2))]


    @test_int [sqrt(cos(c + d*x))*(b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 8, (3*b^2*B*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (b^2*(5*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(5*d*sqrt(cos(c + d*x))) + (3*b^2*B*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (b^2*B*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d) + (b^2*C*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(5*d) - (b^2*(5*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(15*d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(cos(c + d*x)), x, 7, (b^2*(4*A + 3*C)*x*sqrt(b*cos(c + d*x)))/(8*sqrt(cos(c + d*x))) + (b^2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) + (b^2*(4*A + 3*C)*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d) + (b^2*C*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d) - (b^2*B*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(3/2), x, 3, (b^2*B*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (b^2*(3*A + 2*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*sqrt(cos(c + d*x))) + (b^2*B*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d) + (b^2*C*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d)]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(5/2), x, 5, (A*b^2*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (b^2*C*x*sqrt(b*cos(c + d*x)))/(2*sqrt(cos(c + d*x))) + (b^2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x))) + (b^2*C*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d)]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(7/2), x, 4, (b^2*B*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (A*b^2*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x))) + (b^2*C*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*sqrt(cos(c + d*x)))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(9/2), x, 4, (b^2*C*x*sqrt(b*cos(c + d*x)))/sqrt(cos(c + d*x)) + (b^2*B*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(d*sqrt(cos(c + d*x))) + (A*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(11/2), x, 6, (b^2*(A + 2*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (A*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2)) + (b^2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(13/2), x, 7, (b^2*B*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(2*d*sqrt(cos(c + d*x))) + (A*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(7/2)) + (b^2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(2*d*cos(c + d*x)^(5/2)) + (b^2*(2*A + 3*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(3*d*cos(c + d*x)^(3/2))]
    @test_int [((b*cos(c + d*x))^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(15/2), x, 7, (b^2*(3*A + 4*C)*atanh(sin(c + d*x))*sqrt(b*cos(c + d*x)))/(8*d*sqrt(cos(c + d*x))) + (A*b^2*sqrt(b*cos(c + d*x))*sin(c + d*x))/(4*d*cos(c + d*x)^(9/2)) + (b^2*(3*A + 4*C)*sqrt(b*cos(c + d*x))*sin(c + d*x))/(8*d*cos(c + d*x)^(5/2)) + (b^2*B*sqrt(b*cos(c + d*x))*sin(c + d*x))/(d*cos(c + d*x)^(3/2)) + (b^2*B*sqrt(b*cos(c + d*x))*sin(c + d*x)^3)/(3*d*cos(c + d*x)^(7/2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(cos(c + d*x)^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(b*cos(c + d*x)), x, 7, ((4*A + 3*C)*x*sqrt(cos(c + d*x)))/(8*sqrt(b*cos(c + d*x))) + (B*sqrt(cos(c + d*x))*sin(c + d*x))/(d*sqrt(b*cos(c + d*x))) + ((4*A + 3*C)*cos(c + d*x)^(3/2)*sin(c + d*x))/(8*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(7/2)*sin(c + d*x))/(4*d*sqrt(b*cos(c + d*x))) - (B*sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(b*cos(c + d*x)), x, 3, (B*x*sqrt(cos(c + d*x)))/(2*sqrt(b*cos(c + d*x))) + ((3*A + 2*C)*sqrt(cos(c + d*x))*sin(c + d*x))/(3*d*sqrt(b*cos(c + d*x))) + (B*cos(c + d*x)^(3/2)*sin(c + d*x))/(2*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(5/2)*sin(c + d*x))/(3*d*sqrt(b*cos(c + d*x)))]
    @test_int [(sqrt(cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(b*cos(c + d*x)), x, 5, (A*x*sqrt(cos(c + d*x)))/sqrt(b*cos(c + d*x)) + (C*x*sqrt(cos(c + d*x)))/(2*sqrt(b*cos(c + d*x))) + (B*sqrt(cos(c + d*x))*sin(c + d*x))/(d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(3/2)*sin(c + d*x))/(2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))), x, 4, (B*x*sqrt(cos(c + d*x)))/sqrt(b*cos(c + d*x)) + (A*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(d*sqrt(b*cos(c + d*x))) + (C*sqrt(cos(c + d*x))*sin(c + d*x))/(d*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))), x, 4, (C*x*sqrt(cos(c + d*x)))/sqrt(b*cos(c + d*x)) + (B*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))), x, 6, ((A + 2*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x))/(d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))), x, 7, (B*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(3*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x))/(2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))) + ((2*A + 3*C)*sin(c + d*x))/(3*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(cos(c + d*x)^(9/2)*sqrt(b*cos(c + d*x))), x, 7, ((3*A + 4*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(8*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(4*d*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))) + ((3*A + 4*C)*sin(c + d*x))/(8*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x))/(d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x)^3)/(3*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x)))]


    @test_int [(cos(c + d*x)^(7/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 7, ((4*A + 3*C)*x*sqrt(cos(c + d*x)))/(8*b*sqrt(b*cos(c + d*x))) + (B*sqrt(cos(c + d*x))*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x))) + ((4*A + 3*C)*cos(c + d*x)^(3/2)*sin(c + d*x))/(8*b*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(7/2)*sin(c + d*x))/(4*b*d*sqrt(b*cos(c + d*x))) - (B*sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 3, (B*x*sqrt(cos(c + d*x)))/(2*b*sqrt(b*cos(c + d*x))) + ((3*A + 2*C)*sqrt(cos(c + d*x))*sin(c + d*x))/(3*b*d*sqrt(b*cos(c + d*x))) + (B*cos(c + d*x)^(3/2)*sin(c + d*x))/(2*b*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(5/2)*sin(c + d*x))/(3*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 5, (A*x*sqrt(cos(c + d*x)))/(b*sqrt(b*cos(c + d*x))) + (C*x*sqrt(cos(c + d*x)))/(2*b*sqrt(b*cos(c + d*x))) + (B*sqrt(cos(c + d*x))*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(3/2)*sin(c + d*x))/(2*b*d*sqrt(b*cos(c + d*x)))]
    @test_int [(sqrt(cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(3/2), x, 4, (B*x*sqrt(cos(c + d*x)))/(b*sqrt(b*cos(c + d*x))) + (A*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(b*d*sqrt(b*cos(c + d*x))) + (C*sqrt(cos(c + d*x))*sin(c + d*x))/(b*d*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(sqrt(cos(c + d*x))*(b*cos(c + d*x))^(3/2)), x, 4, (C*x*sqrt(cos(c + d*x)))/(b*sqrt(b*cos(c + d*x))) + (B*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(b*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(b*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(cos(c + d*x)^(3/2)*(b*cos(c + d*x))^(3/2)), x, 6, ((A + 2*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*b*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(2*b*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x))/(b*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(cos(c + d*x)^(5/2)*(b*cos(c + d*x))^(3/2)), x, 7, (B*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*b*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(3*b*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x))/(2*b*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))) + ((2*A + 3*C)*sin(c + d*x))/(3*b*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(cos(c + d*x)^(7/2)*(b*cos(c + d*x))^(3/2)), x, 7, ((3*A + 4*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(8*b*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(4*b*d*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))) + ((3*A + 4*C)*sin(c + d*x))/(8*b*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x))/(b*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x)^3)/(3*b*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x)))]


    @test_int [(cos(c + d*x)^(9/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 7, ((4*A + 3*C)*x*sqrt(cos(c + d*x)))/(8*b^2*sqrt(b*cos(c + d*x))) + (B*sqrt(cos(c + d*x))*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x))) + ((4*A + 3*C)*cos(c + d*x)^(3/2)*sin(c + d*x))/(8*b^2*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(7/2)*sin(c + d*x))/(4*b^2*d*sqrt(b*cos(c + d*x))) - (B*sqrt(cos(c + d*x))*sin(c + d*x)^3)/(3*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(7/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 3, (B*x*sqrt(cos(c + d*x)))/(2*b^2*sqrt(b*cos(c + d*x))) + ((3*A + 2*C)*sqrt(cos(c + d*x))*sin(c + d*x))/(3*b^2*d*sqrt(b*cos(c + d*x))) + (B*cos(c + d*x)^(3/2)*sin(c + d*x))/(2*b^2*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(5/2)*sin(c + d*x))/(3*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(5/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 5, (A*x*sqrt(cos(c + d*x)))/(b^2*sqrt(b*cos(c + d*x))) + (C*x*sqrt(cos(c + d*x)))/(2*b^2*sqrt(b*cos(c + d*x))) + (B*sqrt(cos(c + d*x))*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x))) + (C*cos(c + d*x)^(3/2)*sin(c + d*x))/(2*b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(cos(c + d*x)^(3/2)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 4, (B*x*sqrt(cos(c + d*x)))/(b^2*sqrt(b*cos(c + d*x))) + (A*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(b^2*d*sqrt(b*cos(c + d*x))) + (C*sqrt(cos(c + d*x))*sin(c + d*x))/(b^2*d*sqrt(b*cos(c + d*x)))]
    @test_int [(sqrt(cos(c + d*x))*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(5/2), x, 4, (C*x*sqrt(cos(c + d*x)))/(b^2*sqrt(b*cos(c + d*x))) + (B*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(b^2*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(b^2*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(sqrt(cos(c + d*x))*(b*cos(c + d*x))^(5/2)), x, 6, ((A + 2*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*b^2*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(2*b^2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x))/(b^2*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(cos(c + d*x)^(3/2)*(b*cos(c + d*x))^(5/2)), x, 7, (B*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(2*b^2*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(3*b^2*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x))/(2*b^2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))) + ((2*A + 3*C)*sin(c + d*x))/(3*b^2*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x)))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(cos(c + d*x)^(5/2)*(b*cos(c + d*x))^(5/2)), x, 7, ((3*A + 4*C)*atanh(sin(c + d*x))*sqrt(cos(c + d*x)))/(8*b^2*d*sqrt(b*cos(c + d*x))) + (A*sin(c + d*x))/(4*b^2*d*cos(c + d*x)^(7/2)*sqrt(b*cos(c + d*x))) + ((3*A + 4*C)*sin(c + d*x))/(8*b^2*d*cos(c + d*x)^(3/2)*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x))/(b^2*d*sqrt(cos(c + d*x))*sqrt(b*cos(c + d*x))) + (B*sin(c + d*x)^3)/(3*b^2*d*cos(c + d*x)^(5/2)*sqrt(b*cos(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^(n/3)*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)*(b*cos(c + d*x))^(2/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, (3*C*(b*cos(c + d*x))^(8/3)*sin(c + d*x))/(11*b^2*d) - (3*(11*A + 8*C)*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(88*b^2*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(11/3)*HypergeometricFunctions._₂F₁(1/2, 11/6, 17/6, cos(c + d*x)^2)*sin(c + d*x))/(11*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(2/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 4, (3*C*(b*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*b*d) - (3*(8*A + 5*C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(40*b*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(2/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x), x, 5, (3*C*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*d) - (3*(5*A + 2*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(10*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(2/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 5, (3*A*b*sin(c + d*x))/(d*(b*cos(c + d*x))^(1/3)) - (3*B*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(2*d*sqrt(sin(c + d*x)^2)) + (3*(2*A - C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(2/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 5, (3*A*b^2*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)) + (3*b*B*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)) - (3*(A + 4*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(8*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(2/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 5, (3*A*b^3*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/3)) + (3*b^2*B*HypergeometricFunctions._₂F₁(-(2/3), 1/2, 1/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)*sqrt(sin(c + d*x)^2)) + (3*b*(4*A + 7*C)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)*(b*cos(c + d*x))^(4/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, (3*C*(b*cos(c + d*x))^(10/3)*sin(c + d*x))/(13*b^2*d) - (3*(13*A + 10*C)*(b*cos(c + d*x))^(10/3)*HypergeometricFunctions._₂F₁(1/2, 5/3, 8/3, cos(c + d*x)^2)*sin(c + d*x))/(130*b^2*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(13/3)*HypergeometricFunctions._₂F₁(1/2, 13/6, 19/6, cos(c + d*x)^2)*sin(c + d*x))/(13*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(4/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 4, (3*C*(b*cos(c + d*x))^(7/3)*sin(c + d*x))/(10*b*d) - (3*(10*A + 7*C)*(b*cos(c + d*x))^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(70*b*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(10/3)*HypergeometricFunctions._₂F₁(1/2, 5/3, 8/3, cos(c + d*x)^2)*sin(c + d*x))/(10*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(4/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x), x, 5, (3*C*(b*cos(c + d*x))^(4/3)*sin(c + d*x))/(7*d) - (3*(7*A + 4*C)*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(28*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(7/3)*HypergeometricFunctions._₂F₁(1/2, 7/6, 13/6, cos(c + d*x)^2)*sin(c + d*x))/(7*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(4/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 5, (3*b*C*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*d) - (3*b*(4*A + C)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(4*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(4/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 5, (3*A*b^2*sin(c + d*x))/(2*d*(b*cos(c + d*x))^(2/3)) - (3*b*B*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(d*sqrt(sin(c + d*x)^2)) + (3*(A - 2*C)*(b*cos(c + d*x))^(4/3)*HypergeometricFunctions._₂F₁(1/2, 2/3, 5/3, cos(c + d*x)^2)*sin(c + d*x))/(8*d*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^(4/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 5, (3*A*b^3*sin(c + d*x))/(5*d*(b*cos(c + d*x))^(5/3)) + (3*b^2*B*HypergeometricFunctions._₂F₁(-(1/3), 1/2, 2/3, cos(c + d*x)^2)*sin(c + d*x))/(2*d*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)) - (3*b*(2*A + 5*C)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 7/6, cos(c + d*x)^2)*sin(c + d*x))/(5*d*sqrt(sin(c + d*x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(cos(c + d*x)^2*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(1/3), x, 5, (3*C*(b*cos(c + d*x))^(8/3)*sin(c + d*x))/(11*b^3*d) - (3*(11*A + 8*C)*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(88*b^3*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(11/3)*HypergeometricFunctions._₂F₁(1/2, 11/6, 17/6, cos(c + d*x)^2)*sin(c + d*x))/(11*b^4*d*sqrt(sin(c + d*x)^2))]
    @test_int [(cos(c + d*x)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(1/3), x, 5, (3*C*(b*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*b^2*d) - (3*(8*A + 5*C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(40*b^2*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(1/3), x, 4, (3*C*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b*d) - (3*(5*A + 2*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(10*b*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x))/(b*cos(c + d*x))^(1/3), x, 5, (3*A*sin(c + d*x))/(d*(b*cos(c + d*x))^(1/3)) - (3*B*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(2*b*d*sqrt(sin(c + d*x)^2)) + (3*(2*A - C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2)/(b*cos(c + d*x))^(1/3), x, 5, (3*A*b*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)) + (3*B*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)) - (3*(A + 4*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3)/(b*cos(c + d*x))^(1/3), x, 5, (3*A*b^2*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/3)) + (3*b*B*HypergeometricFunctions._₂F₁(-(2/3), 1/2, 1/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)*sqrt(sin(c + d*x)^2)) + (3*(4*A + 7*C)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]


    @test_int [(cos(c + d*x)^3*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(4/3), x, 5, (3*C*(b*cos(c + d*x))^(8/3)*sin(c + d*x))/(11*b^4*d) - (3*(11*A + 8*C)*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(88*b^4*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(11/3)*HypergeometricFunctions._₂F₁(1/2, 11/6, 17/6, cos(c + d*x)^2)*sin(c + d*x))/(11*b^5*d*sqrt(sin(c + d*x)^2))]
    @test_int [(cos(c + d*x)^2*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(4/3), x, 5, (3*C*(b*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*b^3*d) - (3*(8*A + 5*C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(40*b^3*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(8/3)*HypergeometricFunctions._₂F₁(1/2, 4/3, 7/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b^4*d*sqrt(sin(c + d*x)^2))]
    @test_int [(cos(c + d*x)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(4/3), x, 5, (3*C*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b^2*d) - (3*(5*A + 2*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(10*b^2*d*sqrt(sin(c + d*x)^2)) - (3*B*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(b*cos(c + d*x))^(4/3), x, 4, (3*A*sin(c + d*x))/(b*d*(b*cos(c + d*x))^(1/3)) - (3*B*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(2*b^2*d*sqrt(sin(c + d*x)^2)) + (3*(2*A - C)*(b*cos(c + d*x))^(5/3)*HypergeometricFunctions._₂F₁(1/2, 5/6, 11/6, cos(c + d*x)^2)*sin(c + d*x))/(5*b^3*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x))/(b*cos(c + d*x))^(4/3), x, 5, (3*A*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)) + (3*B*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)) - (3*(A + 4*C)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/3, 1/2, 4/3, cos(c + d*x)^2)*sin(c + d*x))/(8*b^2*d*sqrt(sin(c + d*x)^2))]
    @test_int [((A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2)/(b*cos(c + d*x))^(4/3), x, 5, (3*A*b*sin(c + d*x))/(7*d*(b*cos(c + d*x))^(7/3)) + (3*B*HypergeometricFunctions._₂F₁(-(2/3), 1/2, 1/3, cos(c + d*x)^2)*sin(c + d*x))/(4*d*(b*cos(c + d*x))^(4/3)*sqrt(sin(c + d*x)^2)) + (3*(4*A + 7*C)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 5/6, cos(c + d*x)^2)*sin(c + d*x))/(7*b*d*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^n*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)*with*m*symbolic=#


    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(4/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, If(13>=8, (3*b*C*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*(10 + 3*m)) - (3*b*(C*(7 + 3*m) + A*(10 + 3*m))*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 + 3*m), (1/6)*(13 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 3*m)*(10 + 3*m)*sqrt(sin(c + d*x)^2)) - (3*b*B*cos(c + d*x)^(3 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(10 + 3*m), (1/6)*(16 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(10 + 3*m)*sqrt(sin(c + d*x)^2)), (3*b*C*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*(10 + 3*m)) - (3*b*(C*(7 + 3*m) + A*(10 + 3*m))*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 + 3*m), (1/6)*(13 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(70 + 51*m + 9*m^2)*sqrt(sin(c + d*x)^2)) - (3*b*B*cos(c + d*x)^(3 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(10 + 3*m), (1/6)*(16 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(10 + 3*m)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(2/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, If(13>=8, (3*C*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(d*(8 + 3*m)) - (3*(C*(5 + 3*m) + A*(8 + 3*m))*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 + 3*m), (1/6)*(11 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 3*m)*(8 + 3*m)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(8 + 3*m), (1/6)*(14 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(8 + 3*m)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(2/3)*sin(c + d*x))/(d*(8 + 3*m)) - (3*(C*(5 + 3*m) + A*(8 + 3*m))*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 + 3*m), (1/6)*(11 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(40 + 39*m + 9*m^2)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(8 + 3*m), (1/6)*(14 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(8 + 3*m)*sqrt(sin(c + d*x)^2)))]
    @test_int [cos(c + d*x)^m*(b*cos(c + d*x))^(1/3)*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, If(13>=8, (3*C*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*(7 + 3*m)) - (3*(C*(4 + 3*m) + A*(7 + 3*m))*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(4 + 3*m), (1/6)*(10 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(4 + 3*m)*(7 + 3*m)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 + 3*m), (1/6)*(13 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 3*m)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(1/3)*sin(c + d*x))/(d*(7 + 3*m)) - (3*(C*(4 + 3*m) + A*(7 + 3*m))*cos(c + d*x)^(1 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(4 + 3*m), (1/6)*(10 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(28 + 33*m + 9*m^2)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(2 + m)*(b*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(7 + 3*m), (1/6)*(13 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 3*m)*sqrt(sin(c + d*x)^2)))]
    @test_int [(cos(c + d*x)^m*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(1/3), x, 5, If(13>=8, (3*C*cos(c + d*x)^(1 + m)*sin(c + d*x))/(d*(5 + 3*m)*(b*cos(c + d*x))^(1/3)) - (3*(C*(2 + 3*m) + A*(5 + 3*m))*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(2 + 3*m), (1/6)*(8 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(2 + 3*m)*(5 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 + 3*m), (1/6)*(11 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^(1 + m)*sin(c + d*x))/(d*(5 + 3*m)*(b*cos(c + d*x))^(1/3)) - (3*(C*(2 + 3*m) + A*(5 + 3*m))*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(2 + 3*m), (1/6)*(8 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(10 + 21*m + 9*m^2)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(5 + 3*m), (1/6)*(11 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [(cos(c + d*x)^m*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(2/3), x, 5, If(13>=8, (3*C*cos(c + d*x)^(1 + m)*sin(c + d*x))/(d*(4 + 3*m)*(b*cos(c + d*x))^(2/3)) - (3*(C + 3*C*m + A*(4 + 3*m))*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(1 + 3*m), (1/6)*(7 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + 3*m)*(4 + 3*m)*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(4 + 3*m), (1/6)*(10 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(4 + 3*m)*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^(1 + m)*sin(c + d*x))/(d*(4 + 3*m)*(b*cos(c + d*x))^(2/3)) - (3*(C + 3*C*m + A*(4 + 3*m))*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(1 + 3*m), (1/6)*(7 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(4 + 15*m + 9*m^2)*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(2 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(4 + 3*m), (1/6)*(10 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(d*(4 + 3*m)*(b*cos(c + d*x))^(2/3)*sqrt(sin(c + d*x)^2)))]
    @test_int [(cos(c + d*x)^m*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/(b*cos(c + d*x))^(4/3), x, 5, If(13>=8, (3*C*cos(c + d*x)^m*sin(c + d*x))/(b*d*(2 + 3*m)*(b*cos(c + d*x))^(1/3)) - (3*(C*(1 - 3*m) - A*(2 + 3*m))*cos(c + d*x)^m*HypergeometricFunctions._₂F₁(1/2, (1/6)*(-1 + 3*m), (1/6)*(5 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 - 3*m)*(2 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(2 + 3*m), (1/6)*(8 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(b*d*(2 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)), (3*C*cos(c + d*x)^m*sin(c + d*x))/(b*d*(2 + 3*m)*(b*cos(c + d*x))^(1/3)) - (3*(C*(1 - 3*m) - A*(2 + 3*m))*cos(c + d*x)^m*HypergeometricFunctions._₂F₁(1/2, (1/6)*(-1 + 3*m), (1/6)*(5 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(b*d*(2 - 3*m - 9*m^2)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)) - (3*B*cos(c + d*x)^(1 + m)*HypergeometricFunctions._₂F₁(1/2, (1/6)*(2 + 3*m), (1/6)*(8 + 3*m), cos(c + d*x)^2)*sin(c + d*x))/(b*d*(2 + 3*m)*(b*cos(c + d*x))^(1/3)*sqrt(sin(c + d*x)^2)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*cos(e+f*x))^n*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)*with*n*symbolic=#


    @test_int [(a*cos(c + d*x))^m*(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, (C*(a*cos(c + d*x))^(1 + m)*(b*cos(c + d*x))^n*sin(c + d*x))/(a*d*(2 + m + n)) - ((C*(1 + m + n) + A*(2 + m + n))*(a*cos(c + d*x))^(1 + m)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(1 + m + n), (1/2)*(3 + m + n), cos(c + d*x)^2)*sin(c + d*x))/(a*d*(1 + m + n)*(2 + m + n)*sqrt(sin(c + d*x)^2)) - (B*(a*cos(c + d*x))^(2 + m)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/2)*(2 + m + n), (1/2)*(4 + m + n), cos(c + d*x)^2)*sin(c + d*x))/(a^2*d*(2 + m + n)*sqrt(sin(c + d*x)^2))]


    @test_int [cos(c + d*x)^2*(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, (C*(b*cos(c + d*x))^(3 + n)*sin(c + d*x))/(b^3*d*(4 + n)) - ((C*(3 + n) + A*(4 + n))*(b*cos(c + d*x))^(3 + n)*HypergeometricFunctions._₂F₁(1/2, (3 + n)/2, (5 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^3*d*(3 + n)*(4 + n)*sqrt(sin(c + d*x)^2)) - (B*(b*cos(c + d*x))^(4 + n)*HypergeometricFunctions._₂F₁(1/2, (4 + n)/2, (6 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^4*d*(4 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^1*(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, (C*(b*cos(c + d*x))^(2 + n)*sin(c + d*x))/(b^2*d*(3 + n)) - ((C*(2 + n) + A*(3 + n))*(b*cos(c + d*x))^(2 + n)*HypergeometricFunctions._₂F₁(1/2, (2 + n)/2, (4 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^2*d*(2 + n)*(3 + n)*sqrt(sin(c + d*x)^2)) - (B*(b*cos(c + d*x))^(3 + n)*HypergeometricFunctions._₂F₁(1/2, (3 + n)/2, (5 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^3*d*(3 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^0*(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 4, (C*(b*cos(c + d*x))^(1 + n)*sin(c + d*x))/(b*d*(2 + n)) - ((C*(1 + n) + A*(2 + n))*(b*cos(c + d*x))^(1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 + n)*(2 + n)*sqrt(sin(c + d*x)^2)) - (B*(b*cos(c + d*x))^(2 + n)*HypergeometricFunctions._₂F₁(1/2, (2 + n)/2, (4 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b^2*d*(2 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^1, x, 5, (C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(1 + n)) - ((A + A*n + C*n)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, n/2, (2 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*n*(1 + n)*sqrt(sin(c + d*x)^2)) - (B*(b*cos(c + d*x))^(1 + n)*HypergeometricFunctions._₂F₁(1/2, (1 + n)/2, (3 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(b*d*(1 + n)*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^2, x, 5, (b*C*(b*cos(c + d*x))^(-1 + n)*sin(c + d*x))/(d*n) - (b*(C*(1 - n) - A*n)*(b*cos(c + d*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-1 + n), (1 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - n)*n*sqrt(sin(c + d*x)^2)) - (B*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, n/2, (2 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*n*sqrt(sin(c + d*x)^2))]
    @test_int [(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^3, x, 5, If(13>=8, -((b^2*C*(b*cos(c + d*x))^(-2 + n)*sin(c + d*x))/(d*(1 - n))) + (b^2*(A*(1 - n) + C*(2 - n))*(b*cos(c + d*x))^(-2 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-2 + n), n/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - n)*(2 - n)*sqrt(sin(c + d*x)^2)) + (b*B*(b*cos(c + d*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-1 + n), (1 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - n)*sqrt(sin(c + d*x)^2)), -((b^2*C*(b*cos(c + d*x))^(-2 + n)*sin(c + d*x))/(d*(1 - n))) + (b^2*(A*(1 - n) + C*(2 - n))*(b*cos(c + d*x))^(-2 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-2 + n), n/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(2 - 3*n + n^2)*sqrt(sin(c + d*x)^2)) + (b*B*(b*cos(c + d*x))^(-1 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-1 + n), (1 + n)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - n)*sqrt(sin(c + d*x)^2)))]
    @test_int [(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*sec(c + d*x)^4, x, 5, If(13>=8, -((b^3*C*(b*cos(c + d*x))^(-3 + n)*sin(c + d*x))/(d*(2 - n))) + (b^3*(A*(2 - n) + C*(3 - n))*(b*cos(c + d*x))^(-3 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-3 + n), (1/2)*(-1 + n), cos(c + d*x)^2)*sin(c + d*x))/(d*(2 - n)*(3 - n)*sqrt(sin(c + d*x)^2)) + (b^2*B*(b*cos(c + d*x))^(-2 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-2 + n), n/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(2 - n)*sqrt(sin(c + d*x)^2)), -((b^3*C*(b*cos(c + d*x))^(-3 + n)*sin(c + d*x))/(d*(2 - n))) + (b^3*(A*(2 - n) + C*(3 - n))*(b*cos(c + d*x))^(-3 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-3 + n), (1/2)*(-1 + n), cos(c + d*x)^2)*sin(c + d*x))/(d*(6 - 5*n + n^2)*sqrt(sin(c + d*x)^2)) + (b^2*B*(b*cos(c + d*x))^(-2 + n)*HypergeometricFunctions._₂F₁(1/2, (1/2)*(-2 + n), n/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(2 - n)*sqrt(sin(c + d*x)^2)))]


    @test_int [cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, If(13>=8, (2*C*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(7 + 2*n)) - (2*(C*(5 + 2*n) + A*(7 + 2*n))*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 2*n)*(7 + 2*n)*sqrt(sin(c + d*x)^2)) - (2*B*cos(c + d*x)^(7/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(7 + 2*n), (1/4)*(11 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 2*n)*sqrt(sin(c + d*x)^2)), (2*C*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(7 + 2*n)) - (2*(C*(5 + 2*n) + A*(7 + 2*n))*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(35 + 24*n + 4*n^2)*sqrt(sin(c + d*x)^2)) - (2*B*cos(c + d*x)^(7/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(7 + 2*n), (1/4)*(11 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(7 + 2*n)*sqrt(sin(c + d*x)^2)))]
    @test_int [sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2), x, 5, If(13>=8, (2*C*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(5 + 2*n)) - (2*(C*(3 + 2*n) + A*(5 + 2*n))*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 + 2*n)*(5 + 2*n)*sqrt(sin(c + d*x)^2)) - (2*B*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 2*n)*sqrt(sin(c + d*x)^2)), (2*C*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(5 + 2*n)) - (2*(C*(3 + 2*n) + A*(5 + 2*n))*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(15 + 16*n + 4*n^2)*sqrt(sin(c + d*x)^2)) - (2*B*cos(c + d*x)^(5/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(5 + 2*n)*sqrt(sin(c + d*x)^2)))]
    @test_int [((b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/sqrt(cos(c + d*x)), x, 5, If(13>=8, (2*C*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(3 + 2*n)) - (2*(C + 2*C*n + A*(3 + 2*n))*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 + 2*n), (1/4)*(5 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + 2*n)*(3 + 2*n)*sqrt(sin(c + d*x)^2)) - (2*B*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 + 2*n)*sqrt(sin(c + d*x)^2)), (2*C*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(3 + 2*n)) - (2*(C + 2*C*n + A*(3 + 2*n))*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 + 2*n), (1/4)*(5 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 + 8*n + 4*n^2)*sqrt(sin(c + d*x)^2)) - (2*B*cos(c + d*x)^(3/2)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 + 2*n)*sqrt(sin(c + d*x)^2)))]
    @test_int [((b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(3/2), x, 5, (2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(1 + 2*n)*sqrt(cos(c + d*x))) + (2*(A - C*(1 - 2*n) + 2*A*n)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-1 + 2*n), (1/4)*(3 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - 4*n^2)*sqrt(cos(c + d*x))*sqrt(sin(c + d*x)^2)) - (2*B*sqrt(cos(c + d*x))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 + 2*n), (1/4)*(5 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 + 2*n)*sqrt(sin(c + d*x)^2))]
    @test_int [((b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(5/2), x, 5, If(13>=8, -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(1 - 2*n)*cos(c + d*x)^(3/2))) + (2*(A + C*(3 - 2*n) - 2*A*n)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 + 2*n), (1/4)*(1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - 2*n)*(3 - 2*n)*cos(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2)) + (2*B*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-1 + 2*n), (1/4)*(3 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - 2*n)*sqrt(cos(c + d*x))*sqrt(sin(c + d*x)^2)), -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(1 - 2*n)*cos(c + d*x)^(3/2))) + (2*(A + C*(3 - 2*n) - 2*A*n)*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 + 2*n), (1/4)*(1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - 8*n + 4*n^2)*cos(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2)) + (2*B*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-1 + 2*n), (1/4)*(3 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - 2*n)*sqrt(cos(c + d*x))*sqrt(sin(c + d*x)^2)))]
    @test_int [((b*cos(c + d*x))^n*(A + B*cos(c + d*x) + C*cos(c + d*x)^2))/cos(c + d*x)^(7/2), x, 5, If(13>=8, -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(3 - 2*n)*cos(c + d*x)^(5/2))) + (2*(A*(3 - 2*n) + C*(5 - 2*n))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-5 + 2*n), (1/4)*(-1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - 2*n)*(5 - 2*n)*cos(c + d*x)^(5/2)*sqrt(sin(c + d*x)^2)) + (2*B*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 + 2*n), (1/4)*(1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - 2*n)*cos(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2)), -((2*C*(b*cos(c + d*x))^n*sin(c + d*x))/(d*(3 - 2*n)*cos(c + d*x)^(5/2))) + (2*(A*(3 - 2*n) + C*(5 - 2*n))*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-5 + 2*n), (1/4)*(-1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(15 - 16*n + 4*n^2)*cos(c + d*x)^(5/2)*sqrt(sin(c + d*x)^2)) + (2*B*(b*cos(c + d*x))^n*HypergeometricFunctions._₂F₁(1/2, (1/4)*(-3 + 2*n), (1/4)*(1 + 2*n), cos(c + d*x)^2)*sin(c + d*x))/(d*(3 - 2*n)*cos(c + d*x)^(3/2)*sqrt(sin(c + d*x)^2)))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*cos(e+f*x))^m*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    @test_int [(a + a*cos(e + f*x))^m*(A + B*cos(e + f*x) + C*cos(e + f*x)^2), x, 4, If(13>=8, -(((C - B*(2 + m))*(a + a*cos(e + f*x))^m*sin(e + f*x))/(f*(1 + m)*(2 + m))) + (C*(a + a*cos(e + f*x))^(1 + m)*sin(e + f*x))/(a*f*(2 + m)) + (2^(1/2 + m)*(B*m*(2 + m) + C*(1 + m + m^2) + A*(2 + 3*m + m^2))*(1 + cos(e + f*x))^(-(1/2) - m)*(a + a*cos(e + f*x))^m*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - cos(e + f*x)))*sin(e + f*x))/(f*(1 + m)*(2 + m)), -(((C - B*(2 + m))*(a + a*cos(e + f*x))^m*sin(e + f*x))/(f*(1 + m)*(2 + m))) + (C*(a + a*cos(e + f*x))^(1 + m)*sin(e + f*x))/(a*f*(2 + m)) + (2^(1/2 + m)*(B*m*(2 + m) + C*(1 + m + m^2) + A*(2 + 3*m + m^2))*(1 + cos(e + f*x))^(-(1/2) - m)*(a + a*cos(e + f*x))^m*HypergeometricFunctions._₂F₁(1/2, 1/2 - m, 3/2, (1/2)*(1 - cos(e + f*x)))*sin(e + f*x))/(f*(2 + 3*m + m^2)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)*(a+a*cos(e+f*x))^(n/3)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*(a + a*cos(c + d*x))^(2/3), x, 4, (3*(8*B - 3*C)*(a + a*cos(c + d*x))^(2/3)*sin(c + d*x))/(40*d) + (3*C*(a + a*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*a*d) + ((40*A + 16*B + 19*C)*(a + a*cos(c + d*x))^(2/3)*HypergeometricFunctions._₂F₁(-(1/6), 1/2, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(10*2^(5/6)*d*(1 + cos(c + d*x))^(7/6))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*(a + a*cos(c + d*x))^(1/3), x, 4, (3*(7*B - 3*C)*(a + a*cos(c + d*x))^(1/3)*sin(c + d*x))/(28*d) + (3*C*(a + a*cos(c + d*x))^(4/3)*sin(c + d*x))/(7*a*d) + ((28*A + 7*B + 13*C)*(a + a*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(14*2^(1/6)*d*(1 + cos(c + d*x))^(5/6))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(a + a*cos(c + d*x))^(1/3), x, 4, (3*(5*B - 3*C)*sin(c + d*x))/(10*d*(a + a*cos(c + d*x))^(1/3)) + (3*C*(a + a*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*a*d) + ((10*A - 5*B + 7*C)*HypergeometricFunctions._₂F₁(1/2, 5/6, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(5*2^(5/6)*d*(1 + cos(c + d*x))^(1/6)*(a + a*cos(c + d*x))^(1/3))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(a + a*cos(c + d*x))^(2/3), x, 4, (3*(A - B + C)*sin(c + d*x))/(d*(a + a*cos(c + d*x))^(2/3)) + (3*C*(a + a*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*a*d) - ((4*A - 8*B + 7*C)*(a + a*cos(c + d*x))^(1/3)*HypergeometricFunctions._₂F₁(1/6, 1/2, 3/2, (1/2)*(1 - cos(c + d*x)))*sin(c + d*x))/(2*2^(1/6)*a*d*(1 + cos(c + d*x))^(5/6))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^(n/3)*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*(a + b*cos(c + d*x))^(2/3), x, 8, (3*C*(a + b*cos(c + d*x))^(5/3)*sin(c + d*x))/(8*b*d) + ((a + b)*(8*b*B - 3*a*C)*AppellF1(1/2, 1/2, -(5/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(4*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3)) + ((8*A*b^2 - 8*a*b*B + 3*a^2*C + 5*b^2*C)*AppellF1(1/2, 1/2, -(2/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(4*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)*(a + b*cos(c + d*x))^(1/3), x, 8, (3*C*(a + b*cos(c + d*x))^(4/3)*sin(c + d*x))/(7*b*d) + (sqrt(2)*(a + b)*(7*b*B - 3*a*C)*AppellF1(1/2, 1/2, -(4/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(7*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3)) + (sqrt(2)*(7*A*b^2 - 7*a*b*B + 3*a^2*C + 4*b^2*C)*AppellF1(1/2, 1/2, -(1/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(7*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(a + b*cos(c + d*x))^(1/3), x, 8, (3*C*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b*d) + (sqrt(2)*(5*b*B - 3*a*C)*AppellF1(1/2, 1/2, -(2/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(2/3)*sin(c + d*x))/(5*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(2/3)) + (sqrt(2)*(5*A*b^2 - 5*a*b*B + 3*a^2*C + 2*b^2*C)*AppellF1(1/2, 1/2, 1/3, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*((a + b*cos(c + d*x))/(a + b))^(1/3)*sin(c + d*x))/(5*b^2*d*sqrt(1 + cos(c + d*x))*(a + b*cos(c + d*x))^(1/3))]
    @test_int [(A + B*cos(c + d*x) + C*cos(c + d*x)^2)/(a + b*cos(c + d*x))^(2/3), x, 8, (3*C*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(4*b*d) + ((4*b*B - 3*a*C)*AppellF1(1/2, 1/2, -(1/3), 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*(a + b*cos(c + d*x))^(1/3)*sin(c + d*x))/(2*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*((a + b*cos(c + d*x))/(a + b))^(1/3)) + ((4*A*b^2 - 4*a*b*B + 3*a^2*C + b^2*C)*AppellF1(1/2, 1/2, 2/3, 3/2, (1/2)*(1 - cos(c + d*x)), (b*(1 - cos(c + d*x)))/(a + b))*((a + b*cos(c + d*x))/(a + b))^(2/3)*sin(c + d*x))/(2*sqrt(2)*b^2*d*sqrt(1 + cos(c + d*x))*(a + b*cos(c + d*x))^(2/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(A+B*cos(e+f*x)+C*cos(e+f*x)^2)*with*m*symbolic=#


    @test_int [(a + b*cos(e + f*x))^m*(A + (A + C)*cos(e + f*x) + C*cos(e + f*x)^2), x, 7, (4*sqrt(2)*C*AppellF1(1/2, -(3/2), -m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(f*sqrt(1 + cos(e + f*x)))) + (2*sqrt(2)*(A - C)*AppellF1(1/2, -(1/2), -m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(f*sqrt(1 + cos(e + f*x))))]


    @test_int [(a + b*cos(e + f*x))^m*(A + B*cos(e + f*x) + C*cos(e + f*x)^2), x, 8, (C*(a + b*cos(e + f*x))^(1 + m)*sin(e + f*x))/(b*f*(2 + m)) - (sqrt(2)*(a + b)*(a*C - b*B*(2 + m))*AppellF1(1/2, 1/2, -1 - m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + cos(e + f*x)))) + (sqrt(2)*(a^2*C + b^2*C*(1 + m) + A*b^2*(2 + m) - a*b*B*(2 + m))*AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - cos(e + f*x)), (b*(1 - cos(e + f*x)))/(a + b))*(a + b*cos(e + f*x))^m*sin(e + f*x))/(((a + b*cos(e + f*x))/(a + b))^m*(b^2*f*(2 + m)*sqrt(1 + cos(e + f*x))))]
    end
