@testset "4.5.4.1 (a+b sec)^m (A+B sec+C sec^2)" begin
    @variables A, B, C, b, c, d, e, f, m, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(b*sec(e+f*x))^m*(A+B*sec(e+f*x)+C*sec(e+f*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*sec(e+f*x))^m*(A+C*sec(e+f*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(A+C*sec(e+f*x)^2)=#


    @test_int [sec(c + d*x)^6*(A + C*sec(c + d*x)^2), x, 3, ((7*A + 6*C)*tan(c + d*x))/(7*d) + (C*sec(c + d*x)^6*tan(c + d*x))/(7*d) + (2*(7*A + 6*C)*tan(c + d*x)^3)/(21*d) + ((7*A + 6*C)*tan(c + d*x)^5)/(35*d)]
    @test_int [sec(c + d*x)^5*(A + C*sec(c + d*x)^2), x, 4, ((6*A + 5*C)*atanh(sin(c + d*x)))/(16*d) + ((6*A + 5*C)*sec(c + d*x)*tan(c + d*x))/(16*d) + ((6*A + 5*C)*sec(c + d*x)^3*tan(c + d*x))/(24*d) + (C*sec(c + d*x)^5*tan(c + d*x))/(6*d)]
    @test_int [sec(c + d*x)^4*(A + C*sec(c + d*x)^2), x, 3, ((5*A + 4*C)*tan(c + d*x))/(5*d) + (C*sec(c + d*x)^4*tan(c + d*x))/(5*d) + ((5*A + 4*C)*tan(c + d*x)^3)/(15*d)]
    @test_int [sec(c + d*x)^3*(A + C*sec(c + d*x)^2), x, 3, ((4*A + 3*C)*atanh(sin(c + d*x)))/(8*d) + ((4*A + 3*C)*sec(c + d*x)*tan(c + d*x))/(8*d) + (C*sec(c + d*x)^3*tan(c + d*x))/(4*d)]
    @test_int [sec(c + d*x)^2*(A + C*sec(c + d*x)^2), x, 3, ((3*A + 2*C)*tan(c + d*x))/(3*d) + (C*sec(c + d*x)^2*tan(c + d*x))/(3*d)]
    @test_int [sec(c + d*x)^1*(A + C*sec(c + d*x)^2), x, 2, ((2*A + C)*atanh(sin(c + d*x)))/(2*d) + (C*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [sec(c + d*x)^0*(A + C*sec(c + d*x)^2), x, 3, A*x + (C*tan(c + d*x))/d]
    @test_int [cos(c + d*x)^1*(A + C*sec(c + d*x)^2), x, 2, (C*atanh(sin(c + d*x)))/d + (A*sin(c + d*x))/d]
    @test_int [cos(c + d*x)^2*(A + C*sec(c + d*x)^2), x, 2, (1/2)*(A + 2*C)*x + (A*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [cos(c + d*x)^3*(A + C*sec(c + d*x)^2), x, 3, ((A + C)*sin(c + d*x))/d - (A*sin(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^4*(A + C*sec(c + d*x)^2), x, 3, (1/8)*(3*A + 4*C)*x + ((3*A + 4*C)*cos(c + d*x)*sin(c + d*x))/(8*d) + (A*cos(c + d*x)^3*sin(c + d*x))/(4*d)]
    @test_int [cos(c + d*x)^5*(A + C*sec(c + d*x)^2), x, 4, ((A + C)*sin(c + d*x))/d - ((2*A + C)*sin(c + d*x)^3)/(3*d) + (A*sin(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^6*(A + C*sec(c + d*x)^2), x, 4, (1/16)*(5*A + 6*C)*x + ((5*A + 6*C)*cos(c + d*x)*sin(c + d*x))/(16*d) + ((5*A + 6*C)*cos(c + d*x)^3*sin(c + d*x))/(24*d) + (A*cos(c + d*x)^5*sin(c + d*x))/(6*d)]


    @test_int [sec(c + d*x)^m*(-C*m/(m + 1) + C*sec(c + d*x)^2), x, 1, (C*sec(c + d*x)^(1 + m)*sin(c + d*x))/(d*(1 + m))]
    @test_int [sec(c + d*x)^m*(A - A*(m + 1)/m*sec(c + d*x)^2), x, 1, -((A*sec(c + d*x)^(1 + m)*sin(c + d*x))/(d*m))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sec(e+f*x))^(m/2)*(A+C*sec(e+f*x)^2)=#


    @test_int [(A + C*sec(c + d*x)^2)*(b*sec(c + d*x))^(5/2), x, 4, (2*b^2*(7*A + 5*C)*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*d) + (2*b*(7*A + 5*C)*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(21*d) + (2*C*(b*sec(c + d*x))^(5/2)*tan(c + d*x))/(7*d)]
    @test_int [(A + C*sec(c + d*x)^2)*(b*sec(c + d*x))^(3/2), x, 4, -((2*b^2*(5*A + 3*C)*EllipticE((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*b*(5*A + 3*C)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*d) + (2*C*(b*sec(c + d*x))^(3/2)*tan(c + d*x))/(5*d)]
    @test_int [(A + C*sec(c + d*x)^2)*(b*sec(c + d*x))^(1/2), x, 3, (2*(3*A + C)*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*C*sqrt(b*sec(c + d*x))*tan(c + d*x))/(3*d)]
    @test_int [(A + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(1/2), x, 3, (2*(A - C)*EllipticE((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*C*tan(c + d*x))/(d*sqrt(b*sec(c + d*x)))]
    @test_int [(A + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(3/2), x, 3, (2*(A + 3*C)*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b^2*d) + (2*A*tan(c + d*x))/(3*d*(b*sec(c + d*x))^(3/2))]
    @test_int [(A + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(5/2), x, 3, (2*(3*A + 5*C)*EllipticE((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*A*tan(c + d*x))/(5*d*(b*sec(c + d*x))^(5/2))]
    @test_int [(A + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(7/2), x, 4, (2*(5*A + 7*C)*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b^4*d) + (2*(5*A + 7*C)*sin(c + d*x))/(21*b^3*d*sqrt(b*sec(c + d*x))) + (2*A*tan(c + d*x))/(7*d*(b*sec(c + d*x))^(7/2))]
    @test_int [(A + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(9/2), x, 4, (2*(7*A + 9*C)*EllipticE((1/2)*(c + d*x), 2))/(15*b^4*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*(7*A + 9*C)*sin(c + d*x))/(45*b^3*d*(b*sec(c + d*x))^(3/2)) + (2*A*tan(c + d*x))/(9*d*(b*sec(c + d*x))^(9/2))]


    @test_int [(3 + 3*sec(c + d*x)^2)/sec(c + d*x)^(1/2), x, 1, (6*sqrt(sec(c + d*x))*sin(c + d*x))/d]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(A+C*sec(e+f*x)^2)*when*A*(m+1)+C*m=0=#


    @test_int [sec(e + f*x)^m*(m - (m + 1)*sec(e + f*x)^2), x, 1, -((sec(e + f*x)^(1 + m)*sin(e + f*x))/f)]

    @test_int [sec(e + f*x)^5*(5 - 6*sec(e + f*x)^2), x, 1, -((sec(e + f*x)^5*tan(e + f*x))/f)]
    @test_int [sec(e + f*x)^4*(4 - 5*sec(e + f*x)^2), x, 1, -((sec(e + f*x)^4*tan(e + f*x))/f)]
    @test_int [sec(e + f*x)^3*(3 - 4*sec(e + f*x)^2), x, 1, -((sec(e + f*x)^3*tan(e + f*x))/f)]
    @test_int [sec(e + f*x)^2*(2 - 3*sec(e + f*x)^2), x, 1, -((sec(e + f*x)^2*tan(e + f*x))/f)]
    @test_int [sec(e + f*x)^1*(1 - 2*sec(e + f*x)^2), x, 1, -((sec(e + f*x)*tan(e + f*x))/f)]
    @test_int [sec(e + f*x)^0*(0 - 1*sec(e + f*x)^2), x, 2, -(tan(e + f*x)/f)]
    @test_int [cos(e + f*x)^1*(-1 - 0*sec(e + f*x)^2), x, 1, -(sin(e + f*x)/f)]
    @test_int [cos(e + f*x)^2*(-2 + 1*sec(e + f*x)^2), x, 1, -((cos(e + f*x)*sin(e + f*x))/f)]
    @test_int [cos(e + f*x)^3*(-3 + 2*sec(e + f*x)^2), x, 1, -((cos(e + f*x)^2*sin(e + f*x))/f)]
    @test_int [cos(e + f*x)^4*(-4 + 3*sec(e + f*x)^2), x, 1, -((cos(e + f*x)^3*sin(e + f*x))/f)]
    @test_int [cos(e + f*x)^5*(-5 + 4*sec(e + f*x)^2), x, 1, -((cos(e + f*x)^4*sin(e + f*x))/f)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*sec(e+f*x))^m*(B*sec(e+f*x)+C*sec(e+f*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(B*sec(e+f*x)+C*sec(e+f*x)^2)=#


    @test_int [sec(c + d*x)^3*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 7, (3*C*atanh(sin(c + d*x)))/(8*d) + (B*tan(c + d*x))/d + (3*C*sec(c + d*x)*tan(c + d*x))/(8*d) + (C*sec(c + d*x)^3*tan(c + d*x))/(4*d) + (B*tan(c + d*x)^3)/(3*d)]
    @test_int [sec(c + d*x)^2*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 6, (B*atanh(sin(c + d*x)))/(2*d) + (C*tan(c + d*x))/d + (B*sec(c + d*x)*tan(c + d*x))/(2*d) + (C*tan(c + d*x)^3)/(3*d)]
    @test_int [sec(c + d*x)^1*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 6, (C*atanh(sin(c + d*x)))/(2*d) + (B*tan(c + d*x))/d + (C*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [sec(c + d*x)^0*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 4, (B*atanh(sin(c + d*x)))/d + (C*tan(c + d*x))/d]
    @test_int [cos(c + d*x)^1*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 4, B*x + (C*atanh(sin(c + d*x)))/d]
    @test_int [cos(c + d*x)^2*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 3, C*x + (B*sin(c + d*x))/d]
    @test_int [cos(c + d*x)^3*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 5, (B*x)/2 + (C*sin(c + d*x))/d + (B*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [cos(c + d*x)^4*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 6, (C*x)/2 + (B*sin(c + d*x))/d + (C*cos(c + d*x)*sin(c + d*x))/(2*d) - (B*sin(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^5*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 7, (3*B*x)/8 + (C*sin(c + d*x))/d + (3*B*cos(c + d*x)*sin(c + d*x))/(8*d) + (B*cos(c + d*x)^3*sin(c + d*x))/(4*d) - (C*sin(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^6*(B*sec(c + d*x) + C*sec(c + d*x)^2), x, 7, (3*C*x)/8 + (B*sin(c + d*x))/d + (3*C*cos(c + d*x)*sin(c + d*x))/(8*d) + (C*cos(c + d*x)^3*sin(c + d*x))/(4*d) - (2*B*sin(c + d*x)^3)/(3*d) + (B*sin(c + d*x)^5)/(5*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sec(e+f*x))^(m/2)*(B*sec(e+f*x)+C*sec(e+f*x)^2)=#


    @test_int [(B*sec(c + d*x) + C*sec(c + d*x)^2)*(b*sec(c + d*x))^(3/2), x, 10, -((6*b^2*C*EllipticE((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*b*B*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (6*b*C*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*d) + (2*B*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(3*d) + (2*C*(b*sec(c + d*x))^(5/2)*sin(c + d*x))/(5*b*d)]
    @test_int [(B*sec(c + d*x) + C*sec(c + d*x)^2)*(b*sec(c + d*x))^(1/2), x, 9, -((2*b*B*EllipticE((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*C*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*B*sqrt(b*sec(c + d*x))*sin(c + d*x))/d + (2*C*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(3*b*d)]
    @test_int [(B*sec(c + d*x) + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(1/2), x, 8, -((2*C*EllipticE((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*B*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(b*d) + (2*C*sqrt(b*sec(c + d*x))*sin(c + d*x))/(b*d)]
    @test_int [(B*sec(c + d*x) + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(3/2), x, 7, (2*B*EllipticE((1/2)*(c + d*x), 2))/(b*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*C*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(b^2*d)]
    @test_int [(B*sec(c + d*x) + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(5/2), x, 8, (2*C*EllipticE((1/2)*(c + d*x), 2))/(b^2*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*B*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b^3*d) + (2*B*sin(c + d*x))/(3*b^2*d*sqrt(b*sec(c + d*x)))]
    @test_int [(B*sec(c + d*x) + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(7/2), x, 9, (6*B*EllipticE((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*C*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b^4*d) + (2*B*sin(c + d*x))/(5*b^2*d*(b*sec(c + d*x))^(3/2)) + (2*C*sin(c + d*x))/(3*b^3*d*sqrt(b*sec(c + d*x)))]
    @test_int [(B*sec(c + d*x) + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(9/2), x, 10, (6*C*EllipticE((1/2)*(c + d*x), 2))/(5*b^4*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (10*B*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b^5*d) + (2*B*sin(c + d*x))/(7*b^2*d*(b*sec(c + d*x))^(5/2)) + (2*C*sin(c + d*x))/(5*b^3*d*(b*sec(c + d*x))^(3/2)) + (10*B*sin(c + d*x))/(21*b^4*d*sqrt(b*sec(c + d*x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*sec(e+f*x))^m*(A+B*sec(e+f*x)+C*sec(e+f*x)^2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(A+B*sec(e+f*x)+C*sec(e+f*x)^2)=#


    @test_int [sec(c + d*x)^4*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 7, (3*B*atanh(sin(c + d*x)))/(8*d) + ((5*A + 4*C)*tan(c + d*x))/(5*d) + (3*B*sec(c + d*x)*tan(c + d*x))/(8*d) + (B*sec(c + d*x)^3*tan(c + d*x))/(4*d) + (C*sec(c + d*x)^4*tan(c + d*x))/(5*d) + ((5*A + 4*C)*tan(c + d*x)^3)/(15*d)]
    @test_int [sec(c + d*x)^3*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 6, ((4*A + 3*C)*atanh(sin(c + d*x)))/(8*d) + (B*tan(c + d*x))/d + ((4*A + 3*C)*sec(c + d*x)*tan(c + d*x))/(8*d) + (C*sec(c + d*x)^3*tan(c + d*x))/(4*d) + (B*tan(c + d*x)^3)/(3*d)]
    @test_int [sec(c + d*x)^2*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 6, (B*atanh(sin(c + d*x)))/(2*d) + ((3*A + 2*C)*tan(c + d*x))/(3*d) + (B*sec(c + d*x)*tan(c + d*x))/(2*d) + (C*sec(c + d*x)^2*tan(c + d*x))/(3*d)]
    @test_int [sec(c + d*x)^1*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 5, ((2*A + C)*atanh(sin(c + d*x)))/(2*d) + (B*tan(c + d*x))/d + (C*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [sec(c + d*x)^0*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 4, A*x + (B*atanh(sin(c + d*x)))/d + (C*tan(c + d*x))/d]
    @test_int [cos(c + d*x)^1*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 4, B*x + (C*atanh(sin(c + d*x)))/d + (A*sin(c + d*x))/d]
    @test_int [cos(c + d*x)^2*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 4, (1/2)*(A + 2*C)*x + (B*sin(c + d*x))/d + (A*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [cos(c + d*x)^3*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 6, (B*x)/2 + ((A + C)*sin(c + d*x))/d + (B*cos(c + d*x)*sin(c + d*x))/(2*d) - (A*sin(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^4*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 6, (1/8)*(3*A + 4*C)*x + (B*sin(c + d*x))/d + ((3*A + 4*C)*cos(c + d*x)*sin(c + d*x))/(8*d) + (A*cos(c + d*x)^3*sin(c + d*x))/(4*d) - (B*sin(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^5*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 8, (3*B*x)/8 + ((A + C)*sin(c + d*x))/d + (3*B*cos(c + d*x)*sin(c + d*x))/(8*d) + (B*cos(c + d*x)^3*sin(c + d*x))/(4*d) - ((2*A + C)*sin(c + d*x)^3)/(3*d) + (A*sin(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^6*(A + B*sec(c + d*x) + C*sec(c + d*x)^2), x, 7, (1/16)*(5*A + 6*C)*x + (B*sin(c + d*x))/d + ((5*A + 6*C)*cos(c + d*x)*sin(c + d*x))/(16*d) + ((5*A + 6*C)*cos(c + d*x)^3*sin(c + d*x))/(24*d) + (A*cos(c + d*x)^5*sin(c + d*x))/(6*d) - (2*B*sin(c + d*x)^3)/(3*d) + (B*sin(c + d*x)^5)/(5*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sec(e+f*x))^(m/2)*(A+B*sec(e+f*x)+C*sec(e+f*x)^2)=#


    @test_int [(A + B*sec(c + d*x) + C*sec(c + d*x)^2)*(b*sec(c + d*x))^(3/2), x, 8, -((2*b^2*(5*A + 3*C)*EllipticE((1/2)*(c + d*x), 2))/(5*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*b*B*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*b*(5*A + 3*C)*sqrt(b*sec(c + d*x))*sin(c + d*x))/(5*d) + (2*B*(b*sec(c + d*x))^(3/2)*sin(c + d*x))/(3*d) + (2*C*(b*sec(c + d*x))^(3/2)*tan(c + d*x))/(5*d)]
    @test_int [(A + B*sec(c + d*x) + C*sec(c + d*x)^2)*(b*sec(c + d*x))^(1/2), x, 7, -((2*b*B*EllipticE((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x)))) + (2*(3*A + C)*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*d) + (2*B*sqrt(b*sec(c + d*x))*sin(c + d*x))/d + (2*C*sqrt(b*sec(c + d*x))*tan(c + d*x))/(3*d)]
    @test_int [(A + B*sec(c + d*x) + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(1/2), x, 6, (2*(A - C)*EllipticE((1/2)*(c + d*x), 2))/(d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*B*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(b*d) + (2*C*tan(c + d*x))/(d*sqrt(b*sec(c + d*x)))]
    @test_int [(A + B*sec(c + d*x) + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(3/2), x, 6, (2*B*EllipticE((1/2)*(c + d*x), 2))/(b*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*(A + 3*C)*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b^2*d) + (2*A*tan(c + d*x))/(3*d*(b*sec(c + d*x))^(3/2))]
    @test_int [(A + B*sec(c + d*x) + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(5/2), x, 7, (2*(3*A + 5*C)*EllipticE((1/2)*(c + d*x), 2))/(5*b^2*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*B*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(3*b^3*d) + (2*B*sin(c + d*x))/(3*b^2*d*sqrt(b*sec(c + d*x))) + (2*A*tan(c + d*x))/(5*d*(b*sec(c + d*x))^(5/2))]
    @test_int [(A + B*sec(c + d*x) + C*sec(c + d*x)^2)/(b*sec(c + d*x))^(7/2), x, 8, (6*B*EllipticE((1/2)*(c + d*x), 2))/(5*b^3*d*sqrt(cos(c + d*x))*sqrt(b*sec(c + d*x))) + (2*(5*A + 7*C)*sqrt(cos(c + d*x))*EllipticF((1/2)*(c + d*x), 2)*sqrt(b*sec(c + d*x)))/(21*b^4*d) + (2*B*sin(c + d*x))/(5*b^2*d*(b*sec(c + d*x))^(3/2)) + (2*(5*A + 7*C)*sin(c + d*x))/(21*b^3*d*sqrt(b*sec(c + d*x))) + (2*A*tan(c + d*x))/(7*d*(b*sec(c + d*x))^(7/2))]


    #= ::Title:: =#
    #=Integrands*of*the*form*(a+b*sec(e+f*x))^m*(A+B*sec(e+f*x)+C*sec(e+f*x)^2)=#
    end
