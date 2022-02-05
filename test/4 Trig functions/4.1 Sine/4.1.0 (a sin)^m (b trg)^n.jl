@testset "4.1.0 (a sin)^m (b trg)^n" begin
    @variables a, b, c, d, e, f, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(b*sin(c+d*x))^m=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*sin(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(c+d*x)^n=#


    @test_int [sin(a + b*x)^1, x, 1, -(cos(a + b*x)/b)]
    @test_int [sin(a + b*x)^2, x, 2, x/2 - (cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [sin(a + b*x)^3, x, 2, -(cos(a + b*x)/b) + cos(a + b*x)^3/(3*b)]
    @test_int [sin(a + b*x)^4, x, 3, (3*x)/8 - (3*cos(a + b*x)*sin(a + b*x))/(8*b) - (cos(a + b*x)*sin(a + b*x)^3)/(4*b)]
    @test_int [sin(a + b*x)^5, x, 2, -(cos(a + b*x)/b) + (2*cos(a + b*x)^3)/(3*b) - cos(a + b*x)^5/(5*b)]
    @test_int [sin(a + b*x)^6, x, 4, (5*x)/16 - (5*cos(a + b*x)*sin(a + b*x))/(16*b) - (5*cos(a + b*x)*sin(a + b*x)^3)/(24*b) - (cos(a + b*x)*sin(a + b*x)^5)/(6*b)]
    @test_int [sin(a + b*x)^7, x, 2, -(cos(a + b*x)/b) + cos(a + b*x)^3/b - (3*cos(a + b*x)^5)/(5*b) + cos(a + b*x)^7/(7*b)]
    @test_int [sin(a + b*x)^8, x, 5, (35*x)/128 - (35*cos(a + b*x)*sin(a + b*x))/(128*b) - (35*cos(a + b*x)*sin(a + b*x)^3)/(192*b) - (7*cos(a + b*x)*sin(a + b*x)^5)/(48*b) - (cos(a + b*x)*sin(a + b*x)^7)/(8*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sin(c+d*x))^(n/2)=#


    @test_int [sin(b*x)^(7/2), x, 3, -((10*EllipticF(pi/4 - (b*x)/2, 2))/(21*b)) - (10*cos(b*x)*sqrt(sin(b*x)))/(21*b) - (2*cos(b*x)*sin(b*x)^(5/2))/(7*b)]
    @test_int [sin(b*x)^(5/2), x, 2, -((6*EllipticE(pi/4 - (b*x)/2, 2))/(5*b)) - (2*cos(b*x)*sin(b*x)^(3/2))/(5*b)]
    @test_int [sin(b*x)^(3/2), x, 2, -((2*EllipticF(pi/4 - (b*x)/2, 2))/(3*b)) - (2*cos(b*x)*sqrt(sin(b*x)))/(3*b)]
    @test_int [sin(b*x)^(1/2), x, 1, -((2*EllipticE(pi/4 - (b*x)/2, 2))/b)]
    @test_int [1/sin(b*x)^(1/2), x, 1, -((2*EllipticF(pi/4 - (b*x)/2, 2))/b)]
    @test_int [1/sin(b*x)^(3/2), x, 2, (2*EllipticE(pi/4 - (b*x)/2, 2))/b - (2*cos(b*x))/(b*sqrt(sin(b*x)))]
    @test_int [1/sin(b*x)^(5/2), x, 2, -((2*EllipticF(pi/4 - (b*x)/2, 2))/(3*b)) - (2*cos(b*x))/(3*b*sin(b*x)^(3/2))]
    @test_int [1/sin(b*x)^(7/2), x, 3, (6*EllipticE(pi/4 - (b*x)/2, 2))/(5*b) - (2*cos(b*x))/(5*b*sin(b*x)^(5/2)) - (6*cos(b*x))/(5*b*sqrt(sin(b*x)))]


    @test_int [sin(a + b*x)^(7/2), x, 3, (10*EllipticF((1/2)*(a - pi/2 + b*x), 2))/(21*b) - (10*cos(a + b*x)*sqrt(sin(a + b*x)))/(21*b) - (2*cos(a + b*x)*sin(a + b*x)^(5/2))/(7*b)]
    @test_int [sin(a + b*x)^(5/2), x, 2, (6*EllipticE((1/2)*(a - pi/2 + b*x), 2))/(5*b) - (2*cos(a + b*x)*sin(a + b*x)^(3/2))/(5*b)]
    @test_int [sin(a + b*x)^(3/2), x, 2, (2*EllipticF((1/2)*(a - pi/2 + b*x), 2))/(3*b) - (2*cos(a + b*x)*sqrt(sin(a + b*x)))/(3*b)]
    @test_int [sin(a + b*x)^(1/2), x, 1, (2*EllipticE((1/2)*(a - pi/2 + b*x), 2))/b]
    @test_int [1/sin(a + b*x)^(1/2), x, 1, (2*EllipticF((1/2)*(a - pi/2 + b*x), 2))/b]
    @test_int [1/sin(a + b*x)^(3/2), x, 2, -((2*EllipticE((1/2)*(a - pi/2 + b*x), 2))/b) - (2*cos(a + b*x))/(b*sqrt(sin(a + b*x)))]
    @test_int [1/sin(a + b*x)^(5/2), x, 2, (2*EllipticF((1/2)*(a - pi/2 + b*x), 2))/(3*b) - (2*cos(a + b*x))/(3*b*sin(a + b*x)^(3/2))]
    @test_int [1/sin(a + b*x)^(7/2), x, 3, -((6*EllipticE((1/2)*(a - pi/2 + b*x), 2))/(5*b)) - (2*cos(a + b*x))/(5*b*sin(a + b*x)^(5/2)) - (6*cos(a + b*x))/(5*b*sqrt(sin(a + b*x)))]


    @test_int [(c*sin(a + b*x))^(7/2), x, 4, (10*c^4*EllipticF((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(21*b*sqrt(c*sin(a + b*x))) - (10*c^3*cos(a + b*x)*sqrt(c*sin(a + b*x)))/(21*b) - (2*c*cos(a + b*x)*(c*sin(a + b*x))^(5/2))/(7*b)]
    @test_int [(c*sin(a + b*x))^(5/2), x, 3, (6*c^2*EllipticE((1/2)*(a - pi/2 + b*x), 2)*sqrt(c*sin(a + b*x)))/(5*b*sqrt(sin(a + b*x))) - (2*c*cos(a + b*x)*(c*sin(a + b*x))^(3/2))/(5*b)]
    @test_int [(c*sin(a + b*x))^(3/2), x, 3, (2*c^2*EllipticF((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(3*b*sqrt(c*sin(a + b*x))) - (2*c*cos(a + b*x)*sqrt(c*sin(a + b*x)))/(3*b)]
    @test_int [(c*sin(a + b*x))^(1/2), x, 2, (2*EllipticE((1/2)*(a - pi/2 + b*x), 2)*sqrt(c*sin(a + b*x)))/(b*sqrt(sin(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(1/2), x, 2, (2*EllipticF((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(b*sqrt(c*sin(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(3/2), x, 3, -((2*cos(a + b*x))/(b*c*sqrt(c*sin(a + b*x)))) - (2*EllipticE((1/2)*(a - pi/2 + b*x), 2)*sqrt(c*sin(a + b*x)))/(b*c^2*sqrt(sin(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(5/2), x, 3, -((2*cos(a + b*x))/(3*b*c*(c*sin(a + b*x))^(3/2))) + (2*EllipticF((1/2)*(a - pi/2 + b*x), 2)*sqrt(sin(a + b*x)))/(3*b*c^2*sqrt(c*sin(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(7/2), x, 4, -((2*cos(a + b*x))/(5*b*c*(c*sin(a + b*x))^(5/2))) - (6*cos(a + b*x))/(5*b*c^3*sqrt(c*sin(a + b*x))) - (6*EllipticE((1/2)*(a - pi/2 + b*x), 2)*sqrt(c*sin(a + b*x)))/(5*b*c^4*sqrt(sin(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sin(c+d*x))^(n/3)=#


    @test_int [(c*sin(a + b*x))^(4/3), x, 1, (3*cos(a + b*x)*Hypergeometric2F1(1/2, 7/6, 13/6, sin(a + b*x)^2)*(c*sin(a + b*x))^(7/3))/(7*b*c*sqrt(cos(a + b*x)^2))]
    @test_int [(c*sin(a + b*x))^(2/3), x, 1, (3*cos(a + b*x)*Hypergeometric2F1(1/2, 5/6, 11/6, sin(a + b*x)^2)*(c*sin(a + b*x))^(5/3))/(5*b*c*sqrt(cos(a + b*x)^2))]
    @test_int [(c*sin(a + b*x))^(1/3), x, 1, -((3*sqrt((3/2)*(3 - im*sqrt(3)))*c^(1/3)*EllipticE(asin((sqrt(2)*sqrt(1 - (c*sin(a + b*x))^(2/3)/c^(2/3)))/sqrt(3 + im*sqrt(3))), (3*im - sqrt(3))/(3*im + sqrt(3)))*sec(a + b*x)*sqrt(1 - (c*sin(a + b*x))^(2/3)/c^(2/3))*sqrt((im + sqrt(3))/(3*im + sqrt(3)) + (2*(c*sin(a + b*x))^(2/3))/((3 - im*sqrt(3))*c^(2/3)))*sqrt((im - sqrt(3))/(3*im - sqrt(3)) + (2*(c*sin(a + b*x))^(2/3))/((3 + im*sqrt(3))*c^(2/3))))/b) + (3*(1 - im*sqrt(3))*sqrt(3 - im*sqrt(3))*c^(1/3)*EllipticF(asin((sqrt(2)*sqrt(1 - (c*sin(a + b*x))^(2/3)/c^(2/3)))/sqrt(3 - im*sqrt(3))), (3*im + sqrt(3))/(3*im - sqrt(3)))*sec(a + b*x)*sqrt(1 - (c*sin(a + b*x))^(2/3)/c^(2/3))*sqrt((im + sqrt(3))/(3*im + sqrt(3)) + (2*(c*sin(a + b*x))^(2/3))/((3 - im*sqrt(3))*c^(2/3)))*sqrt((im - sqrt(3))/(3*im - sqrt(3)) + (2*(c*sin(a + b*x))^(2/3))/((3 + im*sqrt(3))*c^(2/3))))/(2*sqrt(2)*b), (3*cos(a + b*x)*Hypergeometric2F1(1/2, 2/3, 5/3, sin(a + b*x)^2)*(c*sin(a + b*x))^(4/3))/(4*b*c*sqrt(cos(a + b*x)^2))]
    @test_int [1/(c*sin(a + b*x))^(1/3), x, 1, -((3*sqrt(3 - im*sqrt(3))*EllipticF(asin((sqrt(2)*sqrt(1 - (c*sin(a + b*x))^(2/3)/c^(2/3)))/sqrt(3 - im*sqrt(3))), (3*im + sqrt(3))/(3*im - sqrt(3)))*sec(a + b*x)*sqrt(1 - (c*sin(a + b*x))^(2/3)/c^(2/3))*sqrt((im + sqrt(3))/(3*im + sqrt(3)) + (2*(c*sin(a + b*x))^(2/3))/((3 - im*sqrt(3))*c^(2/3)))*sqrt((im - sqrt(3))/(3*im - sqrt(3)) + (2*(c*sin(a + b*x))^(2/3))/((3 + im*sqrt(3))*c^(2/3))))/(sqrt(2)*b*c^(1/3))), (3*cos(a + b*x)*Hypergeometric2F1(1/3, 1/2, 4/3, sin(a + b*x)^2)*(c*sin(a + b*x))^(2/3))/(2*b*c*sqrt(cos(a + b*x)^2))]
    @test_int [1/(c*sin(a + b*x))^(2/3), x, 1, (3^(3/4)*EllipticF(acos((c^(2/3) - (1 - sqrt(3))*(c*sin(a + b*x))^(2/3))/(c^(2/3) - (1 + sqrt(3))*(c*sin(a + b*x))^(2/3))), (1/4)*(2 + sqrt(3)))*sec(a + b*x)*(c*sin(a + b*x))^(1/3)*(c^(2/3) - (c*sin(a + b*x))^(2/3))*sqrt((c^(4/3)*(1 + (c*sin(a + b*x))^(2/3)/c^(2/3) + (c*sin(a + b*x))^(4/3)/c^(4/3)))/(c^(2/3) - (1 + sqrt(3))*(c*sin(a + b*x))^(2/3))^2))/(2*b*c^(5/3)*sqrt(-(((c*sin(a + b*x))^(2/3)*(c^(2/3) - (c*sin(a + b*x))^(2/3)))/(c^(2/3) - (1 + sqrt(3))*(c*sin(a + b*x))^(2/3))^2))), (3*cos(a + b*x)*Hypergeometric2F1(1/6, 1/2, 7/6, sin(a + b*x)^2)*(c*sin(a + b*x))^(1/3))/(b*c*sqrt(cos(a + b*x)^2))]
    @test_int [1/(c*sin(a + b*x))^(4/3), x, 1, -((3*cos(a + b*x)*Hypergeometric2F1(-(1/6), 1/2, 5/6, sin(a + b*x)^2))/(b*c*sqrt(cos(a + b*x)^2)*(c*sin(a + b*x))^(1/3)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sin(c+d*x))^n*with*n*symbolic=#


    @test_int [sin(a + b*x)^n, x, 1, (cos(a + b*x)*Hypergeometric2F1(1/2, (1 + n)/2, (3 + n)/2, sin(a + b*x)^2)*sin(a + b*x)^(1 + n))/(b*(1 + n)*sqrt(cos(a + b*x)^2))]
    @test_int [(c*sin(a + b*x))^n, x, 1, (cos(a + b*x)*Hypergeometric2F1(1/2, (1 + n)/2, (3 + n)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + n))/(b*c*(1 + n)*sqrt(cos(a + b*x)^2))]


    #= ::Title:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*Trg(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*sin(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*sin(e+f*x))^n*with*m*and*n*symbolic=#


    @test_int [(a*sin(e + f*x))^m*(b*sin(e + f*x))^n, x, 2, (cos(e + f*x)*Hypergeometric2F1(1/2, (1/2)*(1 + m + n), (1/2)*(3 + m + n), sin(e + f*x)^2)*(a*sin(e + f*x))^(1 + m)*(b*sin(e + f*x))^n)/(a*f*(1 + m + n)*sqrt(cos(e + f*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*cos(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*cos(e+f*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [cos(a + b*x)^3*sin(a + b*x), x, 2, -(cos(a + b*x)^4/(4*b))]
    @test_int [cos(a + b*x)^2*sin(a + b*x), x, 2, -(cos(a + b*x)^3/(3*b))]
    @test_int [cos(a + b*x)^1*sin(a + b*x), x, 2, sin(a + b*x)^2/(2*b)]
    @test_int [sec(a + b*x)^1*sin(a + b*x), x, 1, -(log(cos(a + b*x))/b)]
    @test_int [sec(a + b*x)^2*sin(a + b*x), x, 2, sec(a + b*x)/b]
    @test_int [sec(a + b*x)^3*sin(a + b*x), x, 2, sec(a + b*x)^2/(2*b)]
    @test_int [sec(a + b*x)^4*sin(a + b*x), x, 2, sec(a + b*x)^3/(3*b)]


    @test_int [cos(a + b*x)^7*sin(a + b*x)^2, x, 3, sin(a + b*x)^3/(3*b) - (3*sin(a + b*x)^5)/(5*b) + (3*sin(a + b*x)^7)/(7*b) - sin(a + b*x)^9/(9*b)]
    @test_int [cos(a + b*x)^5*sin(a + b*x)^2, x, 3, sin(a + b*x)^3/(3*b) - (2*sin(a + b*x)^5)/(5*b) + sin(a + b*x)^7/(7*b)]
    @test_int [cos(a + b*x)^3*sin(a + b*x)^2, x, 3, sin(a + b*x)^3/(3*b) - sin(a + b*x)^5/(5*b)]
    @test_int [cos(a + b*x)^1*sin(a + b*x)^2, x, 2, sin(a + b*x)^3/(3*b)]

    @test_int [sec(a + b*x)^2*sin(a + b*x)^2, x, 2, -x + tan(a + b*x)/b]
    @test_int [sec(a + b*x)^4*sin(a + b*x)^2, x, 2, tan(a + b*x)^3/(3*b)]
    @test_int [sec(a + b*x)^6*sin(a + b*x)^2, x, 3, tan(a + b*x)^3/(3*b) + tan(a + b*x)^5/(5*b)]
    @test_int [sec(a + b*x)^8*sin(a + b*x)^2, x, 3, tan(a + b*x)^3/(3*b) + (2*tan(a + b*x)^5)/(5*b) + tan(a + b*x)^7/(7*b)]
    @test_int [sec(a + b*x)^10*sin(a + b*x)^2, x, 3, tan(a + b*x)^3/(3*b) + (3*tan(a + b*x)^5)/(5*b) + (3*tan(a + b*x)^7)/(7*b) + tan(a + b*x)^9/(9*b)]

    @test_int [cos(a + b*x)^6*sin(a + b*x)^2, x, 5, (5*x)/128 + (5*cos(a + b*x)*sin(a + b*x))/(128*b) + (5*cos(a + b*x)^3*sin(a + b*x))/(192*b) + (cos(a + b*x)^5*sin(a + b*x))/(48*b) - (cos(a + b*x)^7*sin(a + b*x))/(8*b)]
    @test_int [cos(a + b*x)^4*sin(a + b*x)^2, x, 4, x/16 + (cos(a + b*x)*sin(a + b*x))/(16*b) + (cos(a + b*x)^3*sin(a + b*x))/(24*b) - (cos(a + b*x)^5*sin(a + b*x))/(6*b)]
    @test_int [cos(a + b*x)^2*sin(a + b*x)^2, x, 3, x/8 + (cos(a + b*x)*sin(a + b*x))/(8*b) - (cos(a + b*x)^3*sin(a + b*x))/(4*b)]
    @test_int [cos(a + b*x)^0*sin(a + b*x)^2, x, 2, x/2 - (cos(a + b*x)*sin(a + b*x))/(2*b)]

    @test_int [sec(a + b*x)^1*sin(a + b*x)^2, x, 3, atanh(sin(a + b*x))/b - sin(a + b*x)/b]
    @test_int [sec(a + b*x)^3*sin(a + b*x)^2, x, 2, -(atanh(sin(a + b*x))/(2*b)) + (sec(a + b*x)*tan(a + b*x))/(2*b)]
    @test_int [sec(a + b*x)^5*sin(a + b*x)^2, x, 3, -(atanh(sin(a + b*x))/(8*b)) - (sec(a + b*x)*tan(a + b*x))/(8*b) + (sec(a + b*x)^3*tan(a + b*x))/(4*b)]
    @test_int [sec(a + b*x)^7*sin(a + b*x)^2, x, 4, -(atanh(sin(a + b*x))/(16*b)) - (sec(a + b*x)*tan(a + b*x))/(16*b) - (sec(a + b*x)^3*tan(a + b*x))/(24*b) + (sec(a + b*x)^5*tan(a + b*x))/(6*b)]


    @test_int [cos(a + b*x)^5*sin(a + b*x)^3, x, 3, -(cos(a + b*x)^6/(6*b)) + cos(a + b*x)^8/(8*b)]
    @test_int [cos(a + b*x)^4*sin(a + b*x)^3, x, 3, -(cos(a + b*x)^5/(5*b)) + cos(a + b*x)^7/(7*b)]
    @test_int [cos(a + b*x)^3*sin(a + b*x)^3, x, 3, sin(a + b*x)^4/(4*b) - sin(a + b*x)^6/(6*b)]
    @test_int [cos(a + b*x)^2*sin(a + b*x)^3, x, 3, -(cos(a + b*x)^3/(3*b)) + cos(a + b*x)^5/(5*b)]
    @test_int [cos(a + b*x)^1*sin(a + b*x)^3, x, 2, sin(a + b*x)^4/(4*b)]
    @test_int [sec(a + b*x)^1*sin(a + b*x)^3, x, 3, cos(a + b*x)^2/(2*b) - log(cos(a + b*x))/b]
    @test_int [sec(a + b*x)^2*sin(a + b*x)^3, x, 3, cos(a + b*x)/b + sec(a + b*x)/b]
    @test_int [sec(a + b*x)^3*sin(a + b*x)^3, x, 2, log(cos(a + b*x))/b + tan(a + b*x)^2/(2*b)]
    @test_int [sec(a + b*x)^4*sin(a + b*x)^3, x, 2, -(sec(a + b*x)/b) + sec(a + b*x)^3/(3*b)]
    @test_int [sec(a + b*x)^5*sin(a + b*x)^3, x, 2, tan(a + b*x)^4/(4*b)]
    @test_int [sec(a + b*x)^6*sin(a + b*x)^3, x, 3, -(sec(a + b*x)^3/(3*b)) + sec(a + b*x)^5/(5*b)]
    @test_int [sec(a + b*x)^7*sin(a + b*x)^3, x, 3, -(sec(a + b*x)^4/(4*b)) + sec(a + b*x)^6/(6*b)]
    @test_int [sec(a + b*x)^8*sin(a + b*x)^3, x, 3, -(sec(a + b*x)^5/(5*b)) + sec(a + b*x)^7/(7*b)]
    @test_int [sec(a + b*x)^9*sin(a + b*x)^3, x, 3, -(sec(a + b*x)^6/(6*b)) + sec(a + b*x)^8/(8*b)]


    @test_int [cos(a + b*x)^7*sin(a + b*x)^4, x, 3, sin(a + b*x)^5/(5*b) - (3*sin(a + b*x)^7)/(7*b) + sin(a + b*x)^9/(3*b) - sin(a + b*x)^11/(11*b)]
    @test_int [cos(a + b*x)^5*sin(a + b*x)^4, x, 3, sin(a + b*x)^5/(5*b) - (2*sin(a + b*x)^7)/(7*b) + sin(a + b*x)^9/(9*b)]
    @test_int [cos(a + b*x)^3*sin(a + b*x)^4, x, 3, sin(a + b*x)^5/(5*b) - sin(a + b*x)^7/(7*b)]
    @test_int [cos(a + b*x)^1*sin(a + b*x)^4, x, 2, sin(a + b*x)^5/(5*b)]

    @test_int [sec(a + b*x)^2*sin(a + b*x)^4, x, 4, -((3*x)/2) + (3*tan(a + b*x))/(2*b) - (sin(a + b*x)^2*tan(a + b*x))/(2*b)]
    @test_int [sec(a + b*x)^4*sin(a + b*x)^4, x, 3, x - tan(a + b*x)/b + tan(a + b*x)^3/(3*b)]

    @test_int [sec(a + b*x)^6*sin(a + b*x)^4, x, 2, tan(a + b*x)^5/(5*b)]
    @test_int [sec(a + b*x)^8*sin(a + b*x)^4, x, 3, tan(a + b*x)^5/(5*b) + tan(a + b*x)^7/(7*b)]
    @test_int [sec(a + b*x)^10*sin(a + b*x)^4, x, 3, tan(a + b*x)^5/(5*b) + (2*tan(a + b*x)^7)/(7*b) + tan(a + b*x)^9/(9*b)]

    @test_int [cos(a + b*x)^6*sin(a + b*x)^4, x, 6, (3*x)/256 + (3*cos(a + b*x)*sin(a + b*x))/(256*b) + (cos(a + b*x)^3*sin(a + b*x))/(128*b) + (cos(a + b*x)^5*sin(a + b*x))/(160*b) - (3*cos(a + b*x)^7*sin(a + b*x))/(80*b) - (cos(a + b*x)^7*sin(a + b*x)^3)/(10*b)]
    @test_int [cos(a + b*x)^4*sin(a + b*x)^4, x, 5, (3*x)/128 + (3*cos(a + b*x)*sin(a + b*x))/(128*b) + (cos(a + b*x)^3*sin(a + b*x))/(64*b) - (cos(a + b*x)^5*sin(a + b*x))/(16*b) - (cos(a + b*x)^5*sin(a + b*x)^3)/(8*b)]
    @test_int [cos(a + b*x)^2*sin(a + b*x)^4, x, 4, x/16 + (cos(a + b*x)*sin(a + b*x))/(16*b) - (cos(a + b*x)^3*sin(a + b*x))/(8*b) - (cos(a + b*x)^3*sin(a + b*x)^3)/(6*b)]
    @test_int [cos(a + b*x)^0*sin(a + b*x)^4, x, 3, (3*x)/8 - (3*cos(a + b*x)*sin(a + b*x))/(8*b) - (cos(a + b*x)*sin(a + b*x)^3)/(4*b)]

    @test_int [sec(a + b*x)^1*sin(a + b*x)^4, x, 4, atanh(sin(a + b*x))/b - sin(a + b*x)/b - sin(a + b*x)^3/(3*b)]
    @test_int [sec(a + b*x)^3*sin(a + b*x)^4, x, 4, -((3*atanh(sin(a + b*x)))/(2*b)) + (3*sin(a + b*x))/(2*b) + (sin(a + b*x)*tan(a + b*x)^2)/(2*b)]
    @test_int [sec(a + b*x)^5*sin(a + b*x)^4, x, 3, (3*atanh(sin(a + b*x)))/(8*b) - (3*sec(a + b*x)*tan(a + b*x))/(8*b) + (sec(a + b*x)*tan(a + b*x)^3)/(4*b)]
    @test_int [sec(a + b*x)^7*sin(a + b*x)^4, x, 4, atanh(sin(a + b*x))/(16*b) + (sec(a + b*x)*tan(a + b*x))/(16*b) - (sec(a + b*x)^3*tan(a + b*x))/(8*b) + (sec(a + b*x)^3*tan(a + b*x)^3)/(6*b)]
    @test_int [sec(a + b*x)^9*sin(a + b*x)^4, x, 5, (3*atanh(sin(a + b*x)))/(128*b) + (3*sec(a + b*x)*tan(a + b*x))/(128*b) + (sec(a + b*x)^3*tan(a + b*x))/(64*b) - (sec(a + b*x)^5*tan(a + b*x))/(16*b) + (sec(a + b*x)^5*tan(a + b*x)^3)/(8*b)]


    @test_int [cos(a + b*x)^7*sin(a + b*x)^5, x, 4, -(cos(a + b*x)^8/(8*b)) + cos(a + b*x)^10/(5*b) - cos(a + b*x)^12/(12*b)]
    @test_int [cos(a + b*x)^6*sin(a + b*x)^5, x, 3, -(cos(a + b*x)^7/(7*b)) + (2*cos(a + b*x)^9)/(9*b) - cos(a + b*x)^11/(11*b)]
    @test_int [cos(a + b*x)^5*sin(a + b*x)^5, x, 4, sin(a + b*x)^6/(6*b) - sin(a + b*x)^8/(4*b) + sin(a + b*x)^10/(10*b)]
    @test_int [cos(a + b*x)^4*sin(a + b*x)^5, x, 3, -(cos(a + b*x)^5/(5*b)) + (2*cos(a + b*x)^7)/(7*b) - cos(a + b*x)^9/(9*b)]
    @test_int [cos(a + b*x)^3*sin(a + b*x)^5, x, 3, sin(a + b*x)^6/(6*b) - sin(a + b*x)^8/(8*b)]
    @test_int [cos(a + b*x)^2*sin(a + b*x)^5, x, 3, -(cos(a + b*x)^3/(3*b)) + (2*cos(a + b*x)^5)/(5*b) - cos(a + b*x)^7/(7*b)]
    @test_int [cos(a + b*x)^1*sin(a + b*x)^5, x, 2, sin(a + b*x)^6/(6*b)]
    @test_int [sec(a + b*x)^1*sin(a + b*x)^5, x, 4, cos(a + b*x)^2/b - cos(a + b*x)^4/(4*b) - log(cos(a + b*x))/b]
    @test_int [sec(a + b*x)^2*sin(a + b*x)^5, x, 3, (2*cos(a + b*x))/b - cos(a + b*x)^3/(3*b) + sec(a + b*x)/b]
    @test_int [sec(a + b*x)^3*sin(a + b*x)^5, x, 4, -(cos(a + b*x)^2/(2*b)) + (2*log(cos(a + b*x)))/b + sec(a + b*x)^2/(2*b)]
    @test_int [sec(a + b*x)^4*sin(a + b*x)^5, x, 3, -(cos(a + b*x)/b) - (2*sec(a + b*x))/b + sec(a + b*x)^3/(3*b)]
    @test_int [sec(a + b*x)^5*sin(a + b*x)^5, x, 3, -(log(cos(a + b*x))/b) - tan(a + b*x)^2/(2*b) + tan(a + b*x)^4/(4*b)]
    @test_int [sec(a + b*x)^6*sin(a + b*x)^5, x, 3, sec(a + b*x)/b - (2*sec(a + b*x)^3)/(3*b) + sec(a + b*x)^5/(5*b)]
    @test_int [sec(a + b*x)^7*sin(a + b*x)^5, x, 2, tan(a + b*x)^6/(6*b)]
    @test_int [sec(a + b*x)^8*sin(a + b*x)^5, x, 3, sec(a + b*x)^3/(3*b) - (2*sec(a + b*x)^5)/(5*b) + sec(a + b*x)^7/(7*b)]
    @test_int [sec(a + b*x)^9*sin(a + b*x)^5, x, 3, tan(a + b*x)^6/(6*b) + tan(a + b*x)^8/(8*b)]
    @test_int [sec(a + b*x)^10*sin(a + b*x)^5, x, 3, sec(a + b*x)^5/(5*b) - (2*sec(a + b*x)^7)/(7*b) + sec(a + b*x)^9/(9*b)]
    @test_int [sec(a + b*x)^11*sin(a + b*x)^5, x, 4, sec(a + b*x)^6/(6*b) - sec(a + b*x)^8/(4*b) + sec(a + b*x)^10/(10*b)]
    @test_int [sec(a + b*x)^12*sin(a + b*x)^5, x, 3, sec(a + b*x)^7/(7*b) - (2*sec(a + b*x)^9)/(9*b) + sec(a + b*x)^11/(11*b)]
    @test_int [sec(a + b*x)^13*sin(a + b*x)^5, x, 4, sec(a + b*x)^8/(8*b) - sec(a + b*x)^10/(5*b) + sec(a + b*x)^12/(12*b)]


    @test_int [sec(a + b*x)^3*sin(a + b*x)^6, x, 5, -((5*atanh(sin(a + b*x)))/(2*b)) + (5*sin(a + b*x))/(2*b) + (5*sin(a + b*x)^3)/(6*b) + (sin(a + b*x)^3*tan(a + b*x)^2)/(2*b)]


    @test_int [sec(a + b*x)^6*sin(a + b*x)^7, x, 3, cos(a + b*x)/b + (3*sec(a + b*x))/b - sec(a + b*x)^3/b + sec(a + b*x)^5/(5*b)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [cos(a + b*x)^6/sin(a + b*x), x, 4, -(atanh(cos(a + b*x))/b) + cos(a + b*x)/b + cos(a + b*x)^3/(3*b) + cos(a + b*x)^5/(5*b)]
    @test_int [cos(a + b*x)^5/sin(a + b*x), x, 4, log(sin(a + b*x))/b - sin(a + b*x)^2/b + sin(a + b*x)^4/(4*b)]
    @test_int [cos(a + b*x)^4/sin(a + b*x), x, 4, -(atanh(cos(a + b*x))/b) + cos(a + b*x)/b + cos(a + b*x)^3/(3*b)]
    @test_int [cos(a + b*x)^3/sin(a + b*x), x, 3, log(sin(a + b*x))/b - sin(a + b*x)^2/(2*b)]
    @test_int [cos(a + b*x)^2/sin(a + b*x), x, 3, -(atanh(cos(a + b*x))/b) + cos(a + b*x)/b]
    @test_int [cos(a + b*x)^1/sin(a + b*x), x, 1, log(sin(a + b*x))/b]
    @test_int [sec(a + b*x)^1/sin(a + b*x), x, 2, log(tan(a + b*x))/b]
    @test_int [sec(a + b*x)^2/sin(a + b*x), x, 3, -(atanh(cos(a + b*x))/b) + sec(a + b*x)/b]
    @test_int [sec(a + b*x)^3/sin(a + b*x), x, 3, log(tan(a + b*x))/b + tan(a + b*x)^2/(2*b)]
    @test_int [sec(a + b*x)^4/sin(a + b*x), x, 4, -(atanh(cos(a + b*x))/b) + sec(a + b*x)/b + sec(a + b*x)^3/(3*b)]
    @test_int [sec(a + b*x)^5/sin(a + b*x), x, 4, log(tan(a + b*x))/b + tan(a + b*x)^2/b + tan(a + b*x)^4/(4*b)]
    @test_int [sec(a + b*x)^6/sin(a + b*x), x, 4, -(atanh(cos(a + b*x))/b) + sec(a + b*x)/b + sec(a + b*x)^3/(3*b) + sec(a + b*x)^5/(5*b)]
    @test_int [sec(a + b*x)^7/sin(a + b*x), x, 4, log(tan(a + b*x))/b + (3*tan(a + b*x)^2)/(2*b) + (3*tan(a + b*x)^4)/(4*b) + tan(a + b*x)^6/(6*b)]


    @test_int [cos(a + b*x)^7/sin(a + b*x)^2, x, 3, -(csc(a + b*x)/b) - (3*sin(a + b*x))/b + sin(a + b*x)^3/b - sin(a + b*x)^5/(5*b)]
    @test_int [cos(a + b*x)^6/sin(a + b*x)^2, x, 5, -((15*x)/8) - (15*cot(a + b*x))/(8*b) + (5*cos(a + b*x)^2*cot(a + b*x))/(8*b) + (cos(a + b*x)^4*cot(a + b*x))/(4*b)]
    @test_int [cos(a + b*x)^5/sin(a + b*x)^2, x, 3, -(csc(a + b*x)/b) - (2*sin(a + b*x))/b + sin(a + b*x)^3/(3*b)]
    @test_int [cos(a + b*x)^4/sin(a + b*x)^2, x, 4, -((3*x)/2) - (3*cot(a + b*x))/(2*b) + (cos(a + b*x)^2*cot(a + b*x))/(2*b)]
    @test_int [cos(a + b*x)^3/sin(a + b*x)^2, x, 3, -(csc(a + b*x)/b) - sin(a + b*x)/b]
    @test_int [cos(a + b*x)^2/sin(a + b*x)^2, x, 2, -x - cot(a + b*x)/b]
    @test_int [cos(a + b*x)^1/sin(a + b*x)^2, x, 2, -(csc(a + b*x)/b)]
    @test_int [sec(a + b*x)^1/sin(a + b*x)^2, x, 3, atanh(sin(a + b*x))/b - csc(a + b*x)/b]
    @test_int [sec(a + b*x)^2/sin(a + b*x)^2, x, 3, -(cot(a + b*x)/b) + tan(a + b*x)/b]
    @test_int [sec(a + b*x)^3/sin(a + b*x)^2, x, 4, (3*atanh(sin(a + b*x)))/(2*b) - (3*csc(a + b*x))/(2*b) + (csc(a + b*x)*sec(a + b*x)^2)/(2*b)]
    @test_int [sec(a + b*x)^4/sin(a + b*x)^2, x, 3, -(cot(a + b*x)/b) + (2*tan(a + b*x))/b + tan(a + b*x)^3/(3*b)]
    @test_int [sec(a + b*x)^5/sin(a + b*x)^2, x, 5, (15*atanh(sin(a + b*x)))/(8*b) - (15*csc(a + b*x))/(8*b) + (5*csc(a + b*x)*sec(a + b*x)^2)/(8*b) + (csc(a + b*x)*sec(a + b*x)^4)/(4*b)]


    @test_int [cos(a + b*x)^7/sin(a + b*x)^3, x, 4, -(csc(a + b*x)^2/(2*b)) - (3*log(sin(a + b*x)))/b + (3*sin(a + b*x)^2)/(2*b) - sin(a + b*x)^4/(4*b)]
    @test_int [cos(a + b*x)^6/sin(a + b*x)^3, x, 5, (5*atanh(cos(a + b*x)))/(2*b) - (5*cos(a + b*x))/(2*b) - (5*cos(a + b*x)^3)/(6*b) - (cos(a + b*x)^3*cot(a + b*x)^2)/(2*b)]
    @test_int [cos(a + b*x)^5/sin(a + b*x)^3, x, 4, -(csc(a + b*x)^2/(2*b)) - (2*log(sin(a + b*x)))/b + sin(a + b*x)^2/(2*b)]
    @test_int [cos(a + b*x)^4/sin(a + b*x)^3, x, 4, (3*atanh(cos(a + b*x)))/(2*b) - (3*cos(a + b*x))/(2*b) - (cos(a + b*x)*cot(a + b*x)^2)/(2*b)]
    @test_int [cos(a + b*x)^3/sin(a + b*x)^3, x, 2, -(cot(a + b*x)^2/(2*b)) - log(sin(a + b*x))/b]
    @test_int [cos(a + b*x)^2/sin(a + b*x)^3, x, 2, atanh(cos(a + b*x))/(2*b) - (cot(a + b*x)*csc(a + b*x))/(2*b)]
    @test_int [cos(a + b*x)^1/sin(a + b*x)^3, x, 2, -(csc(a + b*x)^2/(2*b))]
    @test_int [sec(a + b*x)^1/sin(a + b*x)^3, x, 3, -(cot(a + b*x)^2/(2*b)) + log(tan(a + b*x))/b]
    @test_int [sec(a + b*x)^2/sin(a + b*x)^3, x, 4, -((3*atanh(cos(a + b*x)))/(2*b)) + (3*sec(a + b*x))/(2*b) - (csc(a + b*x)^2*sec(a + b*x))/(2*b)]
    @test_int [sec(a + b*x)^3/sin(a + b*x)^3, x, 4, -(cot(a + b*x)^2/(2*b)) + (2*log(tan(a + b*x)))/b + tan(a + b*x)^2/(2*b)]
    @test_int [sec(a + b*x)^4/sin(a + b*x)^3, x, 5, -((5*atanh(cos(a + b*x)))/(2*b)) + (5*sec(a + b*x))/(2*b) + (5*sec(a + b*x)^3)/(6*b) - (csc(a + b*x)^2*sec(a + b*x)^3)/(2*b)]
    @test_int [sec(a + b*x)^5/sin(a + b*x)^3, x, 4, -(cot(a + b*x)^2/(2*b)) + (3*log(tan(a + b*x)))/b + (3*tan(a + b*x)^2)/(2*b) + tan(a + b*x)^4/(4*b)]


    @test_int [cos(a + b*x)^9/sin(a + b*x)^4, x, 3, (4*csc(a + b*x))/b - csc(a + b*x)^3/(3*b) + (6*sin(a + b*x))/b - (4*sin(a + b*x)^3)/(3*b) + sin(a + b*x)^5/(5*b)]
    @test_int [cos(a + b*x)^8/sin(a + b*x)^4, x, 6, (35*x)/8 + (35*cot(a + b*x))/(8*b) - (35*cot(a + b*x)^3)/(24*b) + (7*cos(a + b*x)^2*cot(a + b*x)^3)/(8*b) + (cos(a + b*x)^4*cot(a + b*x)^3)/(4*b)]
    @test_int [cos(a + b*x)^7/sin(a + b*x)^4, x, 3, (3*csc(a + b*x))/b - csc(a + b*x)^3/(3*b) + (3*sin(a + b*x))/b - sin(a + b*x)^3/(3*b)]
    @test_int [cos(a + b*x)^6/sin(a + b*x)^4, x, 5, (5*x)/2 + (5*cot(a + b*x))/(2*b) - (5*cot(a + b*x)^3)/(6*b) + (cos(a + b*x)^2*cot(a + b*x)^3)/(2*b)]
    @test_int [cos(a + b*x)^5/sin(a + b*x)^4, x, 3, (2*csc(a + b*x))/b - csc(a + b*x)^3/(3*b) + sin(a + b*x)/b]
    @test_int [cos(a + b*x)^4/sin(a + b*x)^4, x, 3, x + cot(a + b*x)/b - cot(a + b*x)^3/(3*b)]
    @test_int [cos(a + b*x)^3/sin(a + b*x)^4, x, 2, csc(a + b*x)/b - csc(a + b*x)^3/(3*b)]
    @test_int [cos(a + b*x)^2/sin(a + b*x)^4, x, 2, -(cot(a + b*x)^3/(3*b))]
    @test_int [cos(a + b*x)^1/sin(a + b*x)^4, x, 2, -(csc(a + b*x)^3/(3*b))]
    @test_int [sec(a + b*x)^1/sin(a + b*x)^4, x, 4, atanh(sin(a + b*x))/b - csc(a + b*x)/b - csc(a + b*x)^3/(3*b)]
    @test_int [sec(a + b*x)^2/sin(a + b*x)^4, x, 3, -((2*cot(a + b*x))/b) - cot(a + b*x)^3/(3*b) + tan(a + b*x)/b]
    @test_int [sec(a + b*x)^3/sin(a + b*x)^4, x, 5, (5*atanh(sin(a + b*x)))/(2*b) - (5*csc(a + b*x))/(2*b) - (5*csc(a + b*x)^3)/(6*b) + (csc(a + b*x)^3*sec(a + b*x)^2)/(2*b)]
    @test_int [sec(a + b*x)^4/sin(a + b*x)^4, x, 3, -((3*cot(a + b*x))/b) - cot(a + b*x)^3/(3*b) + (3*tan(a + b*x))/b + tan(a + b*x)^3/(3*b)]
    @test_int [sec(a + b*x)^5/sin(a + b*x)^4, x, 6, (35*atanh(sin(a + b*x)))/(8*b) - (35*csc(a + b*x))/(8*b) - (35*csc(a + b*x)^3)/(24*b) + (7*csc(a + b*x)^3*sec(a + b*x)^2)/(8*b) + (csc(a + b*x)^3*sec(a + b*x)^4)/(4*b)]


    @test_int [cos(a + b*x)^9/sin(a + b*x)^5, x, 4, (2*csc(a + b*x)^2)/b - csc(a + b*x)^4/(4*b) + (6*log(sin(a + b*x)))/b - (2*sin(a + b*x)^2)/b + sin(a + b*x)^4/(4*b)]
    @test_int [cos(a + b*x)^8/sin(a + b*x)^5, x, 6, -((35*atanh(cos(a + b*x)))/(8*b)) + (35*cos(a + b*x))/(8*b) + (35*cos(a + b*x)^3)/(24*b) + (7*cos(a + b*x)^3*cot(a + b*x)^2)/(8*b) - (cos(a + b*x)^3*cot(a + b*x)^4)/(4*b)]
    @test_int [cos(a + b*x)^7/sin(a + b*x)^5, x, 4, (3*csc(a + b*x)^2)/(2*b) - csc(a + b*x)^4/(4*b) + (3*log(sin(a + b*x)))/b - sin(a + b*x)^2/(2*b)]
    @test_int [cos(a + b*x)^6/sin(a + b*x)^5, x, 5, -((15*atanh(cos(a + b*x)))/(8*b)) + (15*cos(a + b*x))/(8*b) + (5*cos(a + b*x)*cot(a + b*x)^2)/(8*b) - (cos(a + b*x)*cot(a + b*x)^4)/(4*b)]
    @test_int [cos(a + b*x)^5/sin(a + b*x)^5, x, 3, cot(a + b*x)^2/(2*b) - cot(a + b*x)^4/(4*b) + log(sin(a + b*x))/b]
    @test_int [cos(a + b*x)^4/sin(a + b*x)^5, x, 3, -((3*atanh(cos(a + b*x)))/(8*b)) + (3*cot(a + b*x)*csc(a + b*x))/(8*b) - (cot(a + b*x)^3*csc(a + b*x))/(4*b)]
    @test_int [cos(a + b*x)^3/sin(a + b*x)^5, x, 2, -(cot(a + b*x)^4/(4*b))]
    @test_int [cos(a + b*x)^2/sin(a + b*x)^5, x, 3, atanh(cos(a + b*x))/(8*b) + (cot(a + b*x)*csc(a + b*x))/(8*b) - (cot(a + b*x)*csc(a + b*x)^3)/(4*b)]
    @test_int [cos(a + b*x)^1/sin(a + b*x)^5, x, 2, -(csc(a + b*x)^4/(4*b))]
    @test_int [sec(a + b*x)^1/sin(a + b*x)^5, x, 4, -(cot(a + b*x)^2/b) - cot(a + b*x)^4/(4*b) + log(tan(a + b*x))/b]
    @test_int [sec(a + b*x)^2/sin(a + b*x)^5, x, 5, -((15*atanh(cos(a + b*x)))/(8*b)) + (15*sec(a + b*x))/(8*b) - (5*csc(a + b*x)^2*sec(a + b*x))/(8*b) - (csc(a + b*x)^4*sec(a + b*x))/(4*b)]
    @test_int [sec(a + b*x)^3/sin(a + b*x)^5, x, 4, -((3*cot(a + b*x)^2)/(2*b)) - cot(a + b*x)^4/(4*b) + (3*log(tan(a + b*x)))/b + tan(a + b*x)^2/(2*b)]
    @test_int [sec(a + b*x)^4/sin(a + b*x)^5, x, 6, -((35*atanh(cos(a + b*x)))/(8*b)) + (35*sec(a + b*x))/(8*b) + (35*sec(a + b*x)^3)/(24*b) - (7*csc(a + b*x)^2*sec(a + b*x)^3)/(8*b) - (csc(a + b*x)^4*sec(a + b*x)^3)/(4*b)]
    @test_int [sec(a + b*x)^5/sin(a + b*x)^5, x, 4, -((2*cot(a + b*x)^2)/b) - cot(a + b*x)^4/(4*b) + (6*log(tan(a + b*x)))/b + (2*tan(a + b*x)^2)/b + tan(a + b*x)^4/(4*b)]


    @test_int [cos(x)^2/sin(x)^6, x, 3, (-(1/3))*cot(x)^3 - cot(x)^5/5]


    @test_int [cos(x)^3/sin(x)^7, x, 3, csc(x)^4/4 - csc(x)^6/6]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(b*cos(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sin(a + b*x)*(d*cos(a + b*x))^(3/2), x, 2, -((2*(d*cos(a + b*x))^(5/2))/(5*b*d))]
    @test_int [sin(a + b*x)*(d*cos(a + b*x))^(1/2), x, 2, -((2*(d*cos(a + b*x))^(3/2))/(3*b*d))]
    @test_int [sin(a + b*x)/(d*cos(a + b*x))^(1/2), x, 2, -((2*sqrt(d*cos(a + b*x)))/(b*d))]
    @test_int [sin(a + b*x)/(d*cos(a + b*x))^(3/2), x, 2, 2/(b*d*sqrt(d*cos(a + b*x)))]
    @test_int [sin(a + b*x)/(d*cos(a + b*x))^(5/2), x, 2, 2/(3*b*d*(d*cos(a + b*x))^(3/2))]
    @test_int [sin(a + b*x)/(d*cos(a + b*x))^(7/2), x, 2, 2/(5*b*d*(d*cos(a + b*x))^(5/2))]
    @test_int [sin(a + b*x)/(d*cos(a + b*x))^(9/2), x, 2, 2/(7*b*d*(d*cos(a + b*x))^(7/2))]


    @test_int [sin(a + b*x)^2*(d*cos(a + b*x))^(9/2), x, 5, (28*d^4*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(195*b*sqrt(cos(a + b*x))) + (28*d^3*(d*cos(a + b*x))^(3/2)*sin(a + b*x))/(585*b) + (4*d*(d*cos(a + b*x))^(7/2)*sin(a + b*x))/(117*b) - (2*(d*cos(a + b*x))^(11/2)*sin(a + b*x))/(13*b*d)]
    @test_int [sin(a + b*x)^2*(d*cos(a + b*x))^(7/2), x, 5, (20*d^4*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(231*b*sqrt(d*cos(a + b*x))) + (20*d^3*sqrt(d*cos(a + b*x))*sin(a + b*x))/(231*b) + (4*d*(d*cos(a + b*x))^(5/2)*sin(a + b*x))/(77*b) - (2*(d*cos(a + b*x))^(9/2)*sin(a + b*x))/(11*b*d)]
    @test_int [sin(a + b*x)^2*(d*cos(a + b*x))^(5/2), x, 4, (4*d^2*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(15*b*sqrt(cos(a + b*x))) + (4*d*(d*cos(a + b*x))^(3/2)*sin(a + b*x))/(45*b) - (2*(d*cos(a + b*x))^(7/2)*sin(a + b*x))/(9*b*d)]
    @test_int [sin(a + b*x)^2*(d*cos(a + b*x))^(3/2), x, 4, (4*d^2*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(21*b*sqrt(d*cos(a + b*x))) + (4*d*sqrt(d*cos(a + b*x))*sin(a + b*x))/(21*b) - (2*(d*cos(a + b*x))^(5/2)*sin(a + b*x))/(7*b*d)]
    @test_int [sin(a + b*x)^2*(d*cos(a + b*x))^(1/2), x, 3, (4*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(5*b*sqrt(cos(a + b*x))) - (2*(d*cos(a + b*x))^(3/2)*sin(a + b*x))/(5*b*d)]
    @test_int [sin(a + b*x)^2/(d*cos(a + b*x))^(1/2), x, 3, (4*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(3*b*sqrt(d*cos(a + b*x))) - (2*sqrt(d*cos(a + b*x))*sin(a + b*x))/(3*b*d)]
    @test_int [sin(a + b*x)^2/(d*cos(a + b*x))^(3/2), x, 3, -((4*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(b*d^2*sqrt(cos(a + b*x)))) + (2*sin(a + b*x))/(b*d*sqrt(d*cos(a + b*x)))]
    @test_int [sin(a + b*x)^2/(d*cos(a + b*x))^(5/2), x, 3, -((4*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(3*b*d^2*sqrt(d*cos(a + b*x)))) + (2*sin(a + b*x))/(3*b*d*(d*cos(a + b*x))^(3/2))]
    @test_int [sin(a + b*x)^2/(d*cos(a + b*x))^(7/2), x, 4, (4*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(5*b*d^4*sqrt(cos(a + b*x))) + (2*sin(a + b*x))/(5*b*d*(d*cos(a + b*x))^(5/2)) - (4*sin(a + b*x))/(5*b*d^3*sqrt(d*cos(a + b*x)))]
    @test_int [sin(a + b*x)^2/(d*cos(a + b*x))^(9/2), x, 4, -((4*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(21*b*d^4*sqrt(d*cos(a + b*x)))) + (2*sin(a + b*x))/(7*b*d*(d*cos(a + b*x))^(7/2)) - (4*sin(a + b*x))/(21*b*d^3*(d*cos(a + b*x))^(3/2))]


    @test_int [sin(a + b*x)^3*(d*cos(a + b*x))^(1/2), x, 3, -((2*(d*cos(a + b*x))^(3/2))/(3*b*d)) + (2*(d*cos(a + b*x))^(7/2))/(7*b*d^3)]
    @test_int [sin(a + b*x)^3/(d*cos(a + b*x))^(1/2), x, 3, -((2*sqrt(d*cos(a + b*x)))/(b*d)) + (2*(d*cos(a + b*x))^(5/2))/(5*b*d^3)]
    @test_int [sin(a + b*x)^3/(d*cos(a + b*x))^(3/2), x, 3, 2/(b*d*sqrt(d*cos(a + b*x))) + (2*(d*cos(a + b*x))^(3/2))/(3*b*d^3)]
    @test_int [sin(a + b*x)^3/(d*cos(a + b*x))^(5/2), x, 3, 2/(3*b*d*(d*cos(a + b*x))^(3/2)) + (2*sqrt(d*cos(a + b*x)))/(b*d^3)]
    @test_int [sin(a + b*x)^3/(d*cos(a + b*x))^(7/2), x, 3, 2/(5*b*d*(d*cos(a + b*x))^(5/2)) - 2/(b*d^3*sqrt(d*cos(a + b*x)))]
    @test_int [sin(a + b*x)^3/(d*cos(a + b*x))^(9/2), x, 3, 2/(7*b*d*(d*cos(a + b*x))^(7/2)) - 2/(3*b*d^3*(d*cos(a + b*x))^(3/2))]
    @test_int [sin(a + b*x)^3/(d*cos(a + b*x))^(11/2), x, 3, 2/(9*b*d*(d*cos(a + b*x))^(9/2)) - 2/(5*b*d^3*(d*cos(a + b*x))^(5/2))]


    @test_int [sin(a + b*x)^4*(d*cos(a + b*x))^(9/2), x, 6, (56*d^4*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(1105*b*sqrt(cos(a + b*x))) + (56*d^3*(d*cos(a + b*x))^(3/2)*sin(a + b*x))/(3315*b) + (8*d*(d*cos(a + b*x))^(7/2)*sin(a + b*x))/(663*b) - (12*(d*cos(a + b*x))^(11/2)*sin(a + b*x))/(221*b*d) - (2*(d*cos(a + b*x))^(11/2)*sin(a + b*x)^3)/(17*b*d)]
    @test_int [sin(a + b*x)^4*(d*cos(a + b*x))^(7/2), x, 6, (8*d^4*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(231*b*sqrt(d*cos(a + b*x))) + (8*d^3*sqrt(d*cos(a + b*x))*sin(a + b*x))/(231*b) + (8*d*(d*cos(a + b*x))^(5/2)*sin(a + b*x))/(385*b) - (4*(d*cos(a + b*x))^(9/2)*sin(a + b*x))/(55*b*d) - (2*(d*cos(a + b*x))^(9/2)*sin(a + b*x)^3)/(15*b*d)]
    @test_int [sin(a + b*x)^4*(d*cos(a + b*x))^(5/2), x, 5, (8*d^2*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(65*b*sqrt(cos(a + b*x))) + (8*d*(d*cos(a + b*x))^(3/2)*sin(a + b*x))/(195*b) - (4*(d*cos(a + b*x))^(7/2)*sin(a + b*x))/(39*b*d) - (2*(d*cos(a + b*x))^(7/2)*sin(a + b*x)^3)/(13*b*d)]
    @test_int [sin(a + b*x)^4*(d*cos(a + b*x))^(3/2), x, 5, (8*d^2*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(77*b*sqrt(d*cos(a + b*x))) + (8*d*sqrt(d*cos(a + b*x))*sin(a + b*x))/(77*b) - (12*(d*cos(a + b*x))^(5/2)*sin(a + b*x))/(77*b*d) - (2*(d*cos(a + b*x))^(5/2)*sin(a + b*x)^3)/(11*b*d)]
    @test_int [sin(a + b*x)^4*(d*cos(a + b*x))^(1/2), x, 4, (8*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(15*b*sqrt(cos(a + b*x))) - (4*(d*cos(a + b*x))^(3/2)*sin(a + b*x))/(15*b*d) - (2*(d*cos(a + b*x))^(3/2)*sin(a + b*x)^3)/(9*b*d)]
    @test_int [sin(a + b*x)^4/(d*cos(a + b*x))^(1/2), x, 4, (8*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(7*b*sqrt(d*cos(a + b*x))) - (4*sqrt(d*cos(a + b*x))*sin(a + b*x))/(7*b*d) - (2*sqrt(d*cos(a + b*x))*sin(a + b*x)^3)/(7*b*d)]
    @test_int [sin(a + b*x)^4/(d*cos(a + b*x))^(3/2), x, 4, -((24*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(5*b*d^2*sqrt(cos(a + b*x)))) + (12*(d*cos(a + b*x))^(3/2)*sin(a + b*x))/(5*b*d^3) + (2*sin(a + b*x)^3)/(b*d*sqrt(d*cos(a + b*x)))]
    @test_int [sin(a + b*x)^4/(d*cos(a + b*x))^(5/2), x, 4, -((8*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(3*b*d^2*sqrt(d*cos(a + b*x)))) + (4*sqrt(d*cos(a + b*x))*sin(a + b*x))/(3*b*d^3) + (2*sin(a + b*x)^3)/(3*b*d*(d*cos(a + b*x))^(3/2))]
    @test_int [sin(a + b*x)^4/(d*cos(a + b*x))^(7/2), x, 4, (24*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(5*b*d^4*sqrt(cos(a + b*x))) - (12*sin(a + b*x))/(5*b*d^3*sqrt(d*cos(a + b*x))) + (2*sin(a + b*x)^3)/(5*b*d*(d*cos(a + b*x))^(5/2))]
    @test_int [sin(a + b*x)^4/(d*cos(a + b*x))^(9/2), x, 4, (8*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(7*b*d^4*sqrt(d*cos(a + b*x))) - (4*sin(a + b*x))/(7*b*d^3*(d*cos(a + b*x))^(3/2)) + (2*sin(a + b*x)^3)/(7*b*d*(d*cos(a + b*x))^(7/2))]


    @test_int [sin(a + b*x)^5*cos(a + b*x)^(3/2), x, 3, -((2*cos(a + b*x)^(5/2))/(5*b)) + (4*cos(a + b*x)^(9/2))/(9*b) - (2*cos(a + b*x)^(13/2))/(13*b)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [csc(a + b*x)*(d*cos(a + b*x))^(9/2), x, 7, (d^(9/2)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/b - (d^(9/2)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/b + (2*d^3*(d*cos(a + b*x))^(3/2))/(3*b) + (2*d*(d*cos(a + b*x))^(7/2))/(7*b)]
    @test_int [csc(a + b*x)*(d*cos(a + b*x))^(7/2), x, 7, -((d^(7/2)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/b) - (d^(7/2)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/b + (2*d^3*sqrt(d*cos(a + b*x)))/b + (2*d*(d*cos(a + b*x))^(5/2))/(5*b)]
    @test_int [csc(a + b*x)*(d*cos(a + b*x))^(5/2), x, 6, (d^(5/2)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/b - (d^(5/2)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/b + (2*d*(d*cos(a + b*x))^(3/2))/(3*b)]
    @test_int [csc(a + b*x)*(d*cos(a + b*x))^(3/2), x, 6, -((d^(3/2)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/b) - (d^(3/2)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/b + (2*d*sqrt(d*cos(a + b*x)))/b]
    @test_int [csc(a + b*x)*(d*cos(a + b*x))^(1/2), x, 5, (sqrt(d)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/b - (sqrt(d)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/b]
    @test_int [csc(a + b*x)/(d*cos(a + b*x))^(1/2), x, 5, -(atan(sqrt(d*cos(a + b*x))/sqrt(d))/(b*sqrt(d))) - atanh(sqrt(d*cos(a + b*x))/sqrt(d))/(b*sqrt(d))]
    @test_int [csc(a + b*x)/(d*cos(a + b*x))^(3/2), x, 6, atan(sqrt(d*cos(a + b*x))/sqrt(d))/(b*d^(3/2)) - atanh(sqrt(d*cos(a + b*x))/sqrt(d))/(b*d^(3/2)) + 2/(b*d*sqrt(d*cos(a + b*x)))]
    @test_int [csc(a + b*x)/(d*cos(a + b*x))^(5/2), x, 6, -(atan(sqrt(d*cos(a + b*x))/sqrt(d))/(b*d^(5/2))) - atanh(sqrt(d*cos(a + b*x))/sqrt(d))/(b*d^(5/2)) + 2/(3*b*d*(d*cos(a + b*x))^(3/2))]
    @test_int [csc(a + b*x)/(d*cos(a + b*x))^(7/2), x, 7, atan(sqrt(d*cos(a + b*x))/sqrt(d))/(b*d^(7/2)) - atanh(sqrt(d*cos(a + b*x))/sqrt(d))/(b*d^(7/2)) + 2/(5*b*d*(d*cos(a + b*x))^(5/2)) + 2/(b*d^3*sqrt(d*cos(a + b*x)))]
    @test_int [csc(a + b*x)/(d*cos(a + b*x))^(9/2), x, 7, -(atan(sqrt(d*cos(a + b*x))/sqrt(d))/(b*d^(9/2))) - atanh(sqrt(d*cos(a + b*x))/sqrt(d))/(b*d^(9/2)) + 2/(7*b*d*(d*cos(a + b*x))^(7/2)) + 2/(3*b*d^3*(d*cos(a + b*x))^(3/2))]


    @test_int [csc(a + b*x)^2*(d*cos(a + b*x))^(11/2), x, 5, -((d*(d*cos(a + b*x))^(9/2)*csc(a + b*x))/b) - (15*d^6*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(7*b*sqrt(d*cos(a + b*x))) - (15*d^5*sqrt(d*cos(a + b*x))*sin(a + b*x))/(7*b) - (9*d^3*(d*cos(a + b*x))^(5/2)*sin(a + b*x))/(7*b)]
    @test_int [csc(a + b*x)^2*(d*cos(a + b*x))^(9/2), x, 4, -((d*(d*cos(a + b*x))^(7/2)*csc(a + b*x))/b) - (21*d^4*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(5*b*sqrt(cos(a + b*x))) - (7*d^3*(d*cos(a + b*x))^(3/2)*sin(a + b*x))/(5*b)]
    @test_int [csc(a + b*x)^2*(d*cos(a + b*x))^(7/2), x, 4, -((d*(d*cos(a + b*x))^(5/2)*csc(a + b*x))/b) - (5*d^4*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(3*b*sqrt(d*cos(a + b*x))) - (5*d^3*sqrt(d*cos(a + b*x))*sin(a + b*x))/(3*b)]
    @test_int [csc(a + b*x)^2*(d*cos(a + b*x))^(5/2), x, 3, -((d*(d*cos(a + b*x))^(3/2)*csc(a + b*x))/b) - (3*d^2*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(b*sqrt(cos(a + b*x)))]
    @test_int [csc(a + b*x)^2*(d*cos(a + b*x))^(3/2), x, 3, -((d*sqrt(d*cos(a + b*x))*csc(a + b*x))/b) - (d^2*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(b*sqrt(d*cos(a + b*x)))]
    @test_int [csc(a + b*x)^2*(d*cos(a + b*x))^(1/2), x, 3, -(((d*cos(a + b*x))^(3/2)*csc(a + b*x))/(b*d)) - (sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(b*sqrt(cos(a + b*x)))]
    @test_int [csc(a + b*x)^2/(d*cos(a + b*x))^(1/2), x, 3, -((sqrt(d*cos(a + b*x))*csc(a + b*x))/(b*d)) + (sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(b*sqrt(d*cos(a + b*x)))]
    @test_int [csc(a + b*x)^2/(d*cos(a + b*x))^(3/2), x, 4, -(csc(a + b*x)/(b*d*sqrt(d*cos(a + b*x)))) - (3*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(b*d^2*sqrt(cos(a + b*x))) + (3*sin(a + b*x))/(b*d*sqrt(d*cos(a + b*x)))]
    @test_int [csc(a + b*x)^2/(d*cos(a + b*x))^(5/2), x, 4, -(csc(a + b*x)/(b*d*(d*cos(a + b*x))^(3/2))) + (5*sqrt(cos(a + b*x))*EllipticF((1/2)*(a + b*x), 2))/(3*b*d^2*sqrt(d*cos(a + b*x))) + (5*sin(a + b*x))/(3*b*d*(d*cos(a + b*x))^(3/2))]
    @test_int [csc(a + b*x)^2/(d*cos(a + b*x))^(7/2), x, 5, -(csc(a + b*x)/(b*d*(d*cos(a + b*x))^(5/2))) - (21*sqrt(d*cos(a + b*x))*EllipticE((1/2)*(a + b*x), 2))/(5*b*d^4*sqrt(cos(a + b*x))) + (7*sin(a + b*x))/(5*b*d*(d*cos(a + b*x))^(5/2)) + (21*sin(a + b*x))/(5*b*d^3*sqrt(d*cos(a + b*x)))]


    @test_int [csc(a + b*x)^3*(d*cos(a + b*x))^(11/2), x, 8, (9*d^(11/2)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) + (9*d^(11/2)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) - (9*d^5*sqrt(d*cos(a + b*x)))/(2*b) - (9*d^3*(d*cos(a + b*x))^(5/2))/(10*b) - (d*(d*cos(a + b*x))^(9/2)*csc(a + b*x)^2)/(2*b)]
    @test_int [csc(a + b*x)^3*(d*cos(a + b*x))^(9/2), x, 7, -((7*d^(9/2)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b)) + (7*d^(9/2)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) - (7*d^3*(d*cos(a + b*x))^(3/2))/(6*b) - (d*(d*cos(a + b*x))^(7/2)*csc(a + b*x)^2)/(2*b)]
    @test_int [csc(a + b*x)^3*(d*cos(a + b*x))^(7/2), x, 7, (5*d^(7/2)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) + (5*d^(7/2)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) - (5*d^3*sqrt(d*cos(a + b*x)))/(2*b) - (d*(d*cos(a + b*x))^(5/2)*csc(a + b*x)^2)/(2*b)]
    @test_int [csc(a + b*x)^3*(d*cos(a + b*x))^(5/2), x, 6, -((3*d^(5/2)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b)) + (3*d^(5/2)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) - (d*(d*cos(a + b*x))^(3/2)*csc(a + b*x)^2)/(2*b)]
    @test_int [csc(a + b*x)^3*(d*cos(a + b*x))^(3/2), x, 6, (d^(3/2)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) + (d^(3/2)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) - (d*sqrt(d*cos(a + b*x))*csc(a + b*x)^2)/(2*b)]
    @test_int [csc(a + b*x)^3*(d*cos(a + b*x))^(1/2), x, 6, (sqrt(d)*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) - (sqrt(d)*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b) - ((d*cos(a + b*x))^(3/2)*csc(a + b*x)^2)/(2*b*d)]
    @test_int [csc(a + b*x)^3/(d*cos(a + b*x))^(1/2), x, 6, -((3*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b*sqrt(d))) - (3*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b*sqrt(d)) - (sqrt(d*cos(a + b*x))*csc(a + b*x)^2)/(2*b*d)]
    @test_int [csc(a + b*x)^3/(d*cos(a + b*x))^(3/2), x, 7, (5*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b*d^(3/2)) - (5*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b*d^(3/2)) + 5/(2*b*d*sqrt(d*cos(a + b*x))) - csc(a + b*x)^2/(2*b*d*sqrt(d*cos(a + b*x)))]
    @test_int [csc(a + b*x)^3/(d*cos(a + b*x))^(5/2), x, 7, -((7*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b*d^(5/2))) - (7*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b*d^(5/2)) + 7/(6*b*d*(d*cos(a + b*x))^(3/2)) - csc(a + b*x)^2/(2*b*d*(d*cos(a + b*x))^(3/2))]
    @test_int [csc(a + b*x)^3/(d*cos(a + b*x))^(7/2), x, 8, (9*atan(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b*d^(7/2)) - (9*atanh(sqrt(d*cos(a + b*x))/sqrt(d)))/(4*b*d^(7/2)) + 9/(10*b*d*(d*cos(a + b*x))^(5/2)) + 9/(2*b*d^3*sqrt(d*cos(a + b*x))) - csc(a + b*x)^2/(2*b*d*(d*cos(a + b*x))^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(b*cos(e+f*x))^(n/5)=#


    @test_int [sin(a + b*x)*(d*cos(a + b*x))^(1/5), x, 2, -((5*(d*cos(a + b*x))^(6/5))/(6*b*d))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/2)*cos(e+f*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [cos(x)^3*sqrt(sin(x)), x, 3, (2/3)*sin(x)^(3/2) - (2/7)*sin(x)^(7/2)]


    @test_int [cos(x)^3*sin(x)^(3/2), x, 3, (2/5)*sin(x)^(5/2) - (2/9)*sin(x)^(9/2)]


    @test_int [cos(x)^3*sin(x)^(5/2), x, 3, (2/7)*sin(x)^(7/2) - (2/11)*sin(x)^(11/2)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [cos(x)^3/sqrt(sin(x)), x, 3, 2*sqrt(sin(x)) - (2/5)*sin(x)^(5/2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/2)*(b*cos(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [(c*sin(a + b*x))^(1/2)*(d*cos(a + b*x))^(9/2), x, 4, (7*d^3*(d*cos(a + b*x))^(3/2)*(c*sin(a + b*x))^(3/2))/(30*b*c) + (d*(d*cos(a + b*x))^(7/2)*(c*sin(a + b*x))^(3/2))/(5*b*c) + (7*d^4*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(20*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sin(a + b*x))^(1/2)*(d*cos(a + b*x))^(5/2), x, 3, (d*(d*cos(a + b*x))^(3/2)*(c*sin(a + b*x))^(3/2))/(3*b*c) + (d^2*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(2*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sin(a + b*x))^(1/2)*(d*cos(a + b*x))^(1/2), x, 2, (sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(3/2), x, 3, (2*(c*sin(a + b*x))^(3/2))/(b*c*d*sqrt(d*cos(a + b*x))) - (2*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(b*d^2*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(7/2), x, 4, (2*(c*sin(a + b*x))^(3/2))/(5*b*c*d*(d*cos(a + b*x))^(5/2)) + (4*(c*sin(a + b*x))^(3/2))/(5*b*c*d^3*sqrt(d*cos(a + b*x))) - (4*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(5*b*d^4*sqrt(sin(2*a + 2*b*x)))]

    @test_int [(c*sin(a + b*x))^(1/2)*(d*cos(a + b*x))^(3/2), x, 11, -((sqrt(c)*d^(3/2)*atan(1 - (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/(sqrt(c)*sqrt(d*cos(a + b*x)))))/(4*sqrt(2)*b)) + (sqrt(c)*d^(3/2)*atan(1 + (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/(sqrt(c)*sqrt(d*cos(a + b*x)))))/(4*sqrt(2)*b) + (sqrt(c)*d^(3/2)*log(sqrt(c) - (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/sqrt(d*cos(a + b*x)) + sqrt(c)*tan(a + b*x)))/(8*sqrt(2)*b) - (sqrt(c)*d^(3/2)*log(sqrt(c) + (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/sqrt(d*cos(a + b*x)) + sqrt(c)*tan(a + b*x)))/(8*sqrt(2)*b) + (d*sqrt(d*cos(a + b*x))*(c*sin(a + b*x))^(3/2))/(2*b*c)]
    @test_int [(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(1/2), x, 10, -((sqrt(c)*atan(1 - (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/(sqrt(c)*sqrt(d*cos(a + b*x)))))/(sqrt(2)*b*sqrt(d))) + (sqrt(c)*atan(1 + (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/(sqrt(c)*sqrt(d*cos(a + b*x)))))/(sqrt(2)*b*sqrt(d)) + (sqrt(c)*log(sqrt(c) - (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/sqrt(d*cos(a + b*x)) + sqrt(c)*tan(a + b*x)))/(2*sqrt(2)*b*sqrt(d)) - (sqrt(c)*log(sqrt(c) + (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/sqrt(d*cos(a + b*x)) + sqrt(c)*tan(a + b*x)))/(2*sqrt(2)*b*sqrt(d))]
    @test_int [(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(5/2), x, 1, (2*(c*sin(a + b*x))^(3/2))/(3*b*c*d*(d*cos(a + b*x))^(3/2))]
    @test_int [(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(9/2), x, 2, (2*(c*sin(a + b*x))^(3/2))/(7*b*c*d*(d*cos(a + b*x))^(7/2)) + (8*(c*sin(a + b*x))^(3/2))/(21*b*c*d^3*(d*cos(a + b*x))^(3/2))]
    @test_int [(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(13/2), x, 3, (2*(c*sin(a + b*x))^(3/2))/(11*b*c*d*(d*cos(a + b*x))^(11/2)) + (16*(c*sin(a + b*x))^(3/2))/(77*b*c*d^3*(d*cos(a + b*x))^(7/2)) + (64*(c*sin(a + b*x))^(3/2))/(231*b*c*d^5*(d*cos(a + b*x))^(3/2))]


    @test_int [(c*sin(a + b*x))^(3/2)*(d*cos(a + b*x))^(3/2), x, 4, (c*d*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))/(6*b) - (c*(d*cos(a + b*x))^(5/2)*sqrt(c*sin(a + b*x)))/(3*b*d) + (c^2*d^2*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x)))/(12*b*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))]
    @test_int [(c*sin(a + b*x))^(3/2)/(d*cos(a + b*x))^(1/2), x, 3, -((c*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))/(b*d)) + (c^2*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x)))/(2*b*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))]
    @test_int [(c*sin(a + b*x))^(3/2)/(d*cos(a + b*x))^(5/2), x, 3, (2*c*sqrt(c*sin(a + b*x)))/(3*b*d*(d*cos(a + b*x))^(3/2)) - (c^2*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x)))/(3*b*d^2*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))]
    @test_int [(c*sin(a + b*x))^(3/2)/(d*cos(a + b*x))^(9/2), x, 4, (2*c*sqrt(c*sin(a + b*x)))/(7*b*d*(d*cos(a + b*x))^(7/2)) - (2*c*sqrt(c*sin(a + b*x)))/(21*b*d^3*(d*cos(a + b*x))^(3/2)) - (2*c^2*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x)))/(21*b*d^4*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))]

    @test_int [(c*sin(a + b*x))^(3/2)*(d*cos(a + b*x))^(1/2), x, 11, (c^(3/2)*sqrt(d)*atan(1 - (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/(sqrt(d)*sqrt(c*sin(a + b*x)))))/(4*sqrt(2)*b) - (c^(3/2)*sqrt(d)*atan(1 + (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/(sqrt(d)*sqrt(c*sin(a + b*x)))))/(4*sqrt(2)*b) - (c^(3/2)*sqrt(d)*log(sqrt(d) + sqrt(d)*cot(a + b*x) - (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/sqrt(c*sin(a + b*x))))/(8*sqrt(2)*b) + (c^(3/2)*sqrt(d)*log(sqrt(d) + sqrt(d)*cot(a + b*x) + (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/sqrt(c*sin(a + b*x))))/(8*sqrt(2)*b) - (c*(d*cos(a + b*x))^(3/2)*sqrt(c*sin(a + b*x)))/(2*b*d)]
    @test_int [(c*sin(a + b*x))^(3/2)/(d*cos(a + b*x))^(3/2), x, 11, -((c^(3/2)*atan(1 - (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/(sqrt(d)*sqrt(c*sin(a + b*x)))))/(sqrt(2)*b*d^(3/2))) + (c^(3/2)*atan(1 + (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/(sqrt(d)*sqrt(c*sin(a + b*x)))))/(sqrt(2)*b*d^(3/2)) + (c^(3/2)*log(sqrt(d) + sqrt(d)*cot(a + b*x) - (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/sqrt(c*sin(a + b*x))))/(2*sqrt(2)*b*d^(3/2)) - (c^(3/2)*log(sqrt(d) + sqrt(d)*cot(a + b*x) + (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/sqrt(c*sin(a + b*x))))/(2*sqrt(2)*b*d^(3/2)) + (2*c*sqrt(c*sin(a + b*x)))/(b*d*sqrt(d*cos(a + b*x)))]
    @test_int [(c*sin(a + b*x))^(3/2)/(d*cos(a + b*x))^(7/2), x, 1, (2*(c*sin(a + b*x))^(5/2))/(5*b*c*d*(d*cos(a + b*x))^(5/2))]
    @test_int [(c*sin(a + b*x))^(3/2)/(d*cos(a + b*x))^(11/2), x, 3, (2*c*sqrt(c*sin(a + b*x)))/(9*b*d*(d*cos(a + b*x))^(9/2)) - (2*c*sqrt(c*sin(a + b*x)))/(45*b*d^3*(d*cos(a + b*x))^(5/2)) - (8*c*sqrt(c*sin(a + b*x)))/(45*b*d^5*sqrt(d*cos(a + b*x)))]
    @test_int [(c*sin(a + b*x))^(3/2)/(d*cos(a + b*x))^(15/2), x, 4, (2*c*sqrt(c*sin(a + b*x)))/(13*b*d*(d*cos(a + b*x))^(13/2)) - (2*c*sqrt(c*sin(a + b*x)))/(117*b*d^3*(d*cos(a + b*x))^(9/2)) - (16*c*sqrt(c*sin(a + b*x)))/(585*b*d^5*(d*cos(a + b*x))^(5/2)) - (64*c*sqrt(c*sin(a + b*x)))/(585*b*d^7*sqrt(d*cos(a + b*x)))]


    @test_int [(c*sin(a + b*x))^(5/2)*(d*cos(a + b*x))^(9/2), x, 5, (c*d^3*(d*cos(a + b*x))^(3/2)*(c*sin(a + b*x))^(3/2))/(20*b) + (3*c*d*(d*cos(a + b*x))^(7/2)*(c*sin(a + b*x))^(3/2))/(70*b) - (c*(d*cos(a + b*x))^(11/2)*(c*sin(a + b*x))^(3/2))/(7*b*d) + (3*c^2*d^4*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(40*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sin(a + b*x))^(5/2)*(d*cos(a + b*x))^(5/2), x, 4, (c*d*(d*cos(a + b*x))^(3/2)*(c*sin(a + b*x))^(3/2))/(10*b) - (c*(d*cos(a + b*x))^(7/2)*(c*sin(a + b*x))^(3/2))/(5*b*d) + (3*c^2*d^2*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(20*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sin(a + b*x))^(5/2)*(d*cos(a + b*x))^(1/2), x, 3, -((c*(d*cos(a + b*x))^(3/2)*(c*sin(a + b*x))^(3/2))/(3*b*d)) + (c^2*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(2*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sin(a + b*x))^(5/2)/(d*cos(a + b*x))^(3/2), x, 3, (2*c*(c*sin(a + b*x))^(3/2))/(b*d*sqrt(d*cos(a + b*x))) - (3*c^2*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(b*d^2*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sin(a + b*x))^(5/2)/(d*cos(a + b*x))^(7/2), x, 4, (2*c*(c*sin(a + b*x))^(3/2))/(5*b*d*(d*cos(a + b*x))^(5/2)) - (6*c*(c*sin(a + b*x))^(3/2))/(5*b*d^3*sqrt(d*cos(a + b*x))) + (6*c^2*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(5*b*d^4*sqrt(sin(2*a + 2*b*x)))]
    @test_int [(c*sin(a + b*x))^(5/2)/(d*cos(a + b*x))^(11/2), x, 5, (2*c*(c*sin(a + b*x))^(3/2))/(9*b*d*(d*cos(a + b*x))^(9/2)) - (2*c*(c*sin(a + b*x))^(3/2))/(15*b*d^3*(d*cos(a + b*x))^(5/2)) - (4*c*(c*sin(a + b*x))^(3/2))/(15*b*d^5*sqrt(d*cos(a + b*x))) + (4*c^2*sqrt(d*cos(a + b*x))*EllipticE(a - pi/4 + b*x, 2)*sqrt(c*sin(a + b*x)))/(15*b*d^6*sqrt(sin(2*a + 2*b*x)))]

    @test_int [(c*sin(a + b*x))^(5/2)/(d*cos(a + b*x))^(1/2), x, 11, -((3*c^(5/2)*atan(1 - (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/(sqrt(c)*sqrt(d*cos(a + b*x)))))/(4*sqrt(2)*b*sqrt(d))) + (3*c^(5/2)*atan(1 + (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/(sqrt(c)*sqrt(d*cos(a + b*x)))))/(4*sqrt(2)*b*sqrt(d)) + (3*c^(5/2)*log(sqrt(c) - (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/sqrt(d*cos(a + b*x)) + sqrt(c)*tan(a + b*x)))/(8*sqrt(2)*b*sqrt(d)) - (3*c^(5/2)*log(sqrt(c) + (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/sqrt(d*cos(a + b*x)) + sqrt(c)*tan(a + b*x)))/(8*sqrt(2)*b*sqrt(d)) - (c*sqrt(d*cos(a + b*x))*(c*sin(a + b*x))^(3/2))/(2*b*d)]
    @test_int [(c*sin(a + b*x))^(5/2)/(d*cos(a + b*x))^(5/2), x, 11, (c^(5/2)*atan(1 - (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/(sqrt(c)*sqrt(d*cos(a + b*x)))))/(sqrt(2)*b*d^(5/2)) - (c^(5/2)*atan(1 + (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/(sqrt(c)*sqrt(d*cos(a + b*x)))))/(sqrt(2)*b*d^(5/2)) - (c^(5/2)*log(sqrt(c) - (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/sqrt(d*cos(a + b*x)) + sqrt(c)*tan(a + b*x)))/(2*sqrt(2)*b*d^(5/2)) + (c^(5/2)*log(sqrt(c) + (sqrt(2)*sqrt(d)*sqrt(c*sin(a + b*x)))/sqrt(d*cos(a + b*x)) + sqrt(c)*tan(a + b*x)))/(2*sqrt(2)*b*d^(5/2)) + (2*c*(c*sin(a + b*x))^(3/2))/(3*b*d*(d*cos(a + b*x))^(3/2))]
    @test_int [(c*sin(a + b*x))^(5/2)/(d*cos(a + b*x))^(9/2), x, 1, (2*(c*sin(a + b*x))^(7/2))/(7*b*c*d*(d*cos(a + b*x))^(7/2))]
    @test_int [(c*sin(a + b*x))^(5/2)/(d*cos(a + b*x))^(13/2), x, 3, (2*c*(c*sin(a + b*x))^(3/2))/(11*b*d*(d*cos(a + b*x))^(11/2)) - (6*c*(c*sin(a + b*x))^(3/2))/(77*b*d^3*(d*cos(a + b*x))^(7/2)) - (8*c*(c*sin(a + b*x))^(3/2))/(77*b*d^5*(d*cos(a + b*x))^(3/2))]
    @test_int [(c*sin(a + b*x))^(5/2)/(d*cos(a + b*x))^(17/2), x, 4, (2*c*(c*sin(a + b*x))^(3/2))/(15*b*d*(d*cos(a + b*x))^(15/2)) - (2*c*(c*sin(a + b*x))^(3/2))/(55*b*d^3*(d*cos(a + b*x))^(11/2)) - (16*c*(c*sin(a + b*x))^(3/2))/(385*b*d^5*(d*cos(a + b*x))^(7/2)) - (64*c*(c*sin(a + b*x))^(3/2))/(1155*b*d^7*(d*cos(a + b*x))^(3/2))]


    @test_int [sin(a + b*x)^(7/2)/cos(a + b*x)^(7/2), x, 12, atan(1 - (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(sqrt(2)*b) - atan(1 + (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(sqrt(2)*b) - log(1 + cot(a + b*x) - (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(2*sqrt(2)*b) + log(1 + cot(a + b*x) + (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(2*sqrt(2)*b) - (2*sqrt(sin(a + b*x)))/(b*sqrt(cos(a + b*x))) + (2*sin(a + b*x)^(5/2))/(5*b*cos(a + b*x)^(5/2))]


    @test_int [sin(x)^(3/2)/cos(x)^(7/2), x, 1, (2*sin(x)^(5/2))/(5*cos(x)^(5/2))]
    @test_int [sqrt(sin(x))/sqrt(cos(x)), x, 10, -(atan(1 - (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x)))/sqrt(2)) + atan(1 + (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x)))/sqrt(2) + log(1 - (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x)) + tan(x))/(2*sqrt(2)) - log(1 + (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x)) + tan(x))/(2*sqrt(2))]
    @test_int [sin(x)^(5/2)/sqrt(cos(x)), x, 11, -((3*atan(1 - (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x))))/(4*sqrt(2))) + (3*atan(1 + (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x))))/(4*sqrt(2)) + (3*log(1 - (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x)) + tan(x)))/(8*sqrt(2)) - (3*log(1 + (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x)) + tan(x)))/(8*sqrt(2)) - (1/2)*sqrt(cos(x))*sin(x)^(3/2)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [1/(c*sin(a + b*x))^(1/2)*(d*cos(a + b*x))^(7/2), x, 4, (5*d^3*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))/(6*b*c) + (d*(d*cos(a + b*x))^(5/2)*sqrt(c*sin(a + b*x)))/(3*b*c) + (5*d^4*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x)))/(12*b*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(1/2)*(d*cos(a + b*x))^(3/2), x, 3, (d*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))/(b*c) + (d^2*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x)))/(2*b*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(1/2), x, 2, (EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x)))/(b*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(5/2), x, 3, (2*sqrt(c*sin(a + b*x)))/(3*b*c*d*(d*cos(a + b*x))^(3/2)) + (2*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x)))/(3*b*d^2*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(9/2), x, 4, (2*sqrt(c*sin(a + b*x)))/(7*b*c*d*(d*cos(a + b*x))^(7/2)) + (4*sqrt(c*sin(a + b*x)))/(7*b*c*d^3*(d*cos(a + b*x))^(3/2)) + (4*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x)))/(7*b*d^4*sqrt(d*cos(a + b*x))*sqrt(c*sin(a + b*x)))]

    @test_int [1/(c*sin(a + b*x))^(1/2)*(d*cos(a + b*x))^(1/2), x, 10, (sqrt(d)*atan(1 - (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/(sqrt(d)*sqrt(c*sin(a + b*x)))))/(sqrt(2)*b*sqrt(c)) - (sqrt(d)*atan(1 + (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/(sqrt(d)*sqrt(c*sin(a + b*x)))))/(sqrt(2)*b*sqrt(c)) - (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(a + b*x) - (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/sqrt(c*sin(a + b*x))))/(2*sqrt(2)*b*sqrt(c)) + (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(a + b*x) + (sqrt(2)*sqrt(c)*sqrt(d*cos(a + b*x)))/sqrt(c*sin(a + b*x))))/(2*sqrt(2)*b*sqrt(c))]
    @test_int [1/(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(3/2), x, 1, (2*sqrt(c*sin(a + b*x)))/(b*c*d*sqrt(d*cos(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(7/2), x, 2, (2*sqrt(c*sin(a + b*x)))/(5*b*c*d*(d*cos(a + b*x))^(5/2)) + (8*sqrt(c*sin(a + b*x)))/(5*b*c*d^3*sqrt(d*cos(a + b*x)))]
    @test_int [1/(c*sin(a + b*x))^(1/2)/(d*cos(a + b*x))^(11/2), x, 3, (2*sqrt(c*sin(a + b*x)))/(9*b*c*d*(d*cos(a + b*x))^(9/2)) + (16*sqrt(c*sin(a + b*x)))/(45*b*c*d^3*(d*cos(a + b*x))^(5/2)) + (64*sqrt(c*sin(a + b*x)))/(45*b*c*d^5*sqrt(d*cos(a + b*x)))]


    @test_int [cos(a + b*x)^(1/2)/sin(a + b*x)^(1/2), x, 10, atan(1 - (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(sqrt(2)*b) - atan(1 + (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(sqrt(2)*b) - log(1 + cot(a + b*x) - (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(2*sqrt(2)*b) + log(1 + cot(a + b*x) + (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(2*sqrt(2)*b)]


    @test_int [cos(a + b*x)^(3/2)/sin(a + b*x)^(3/2), x, 11, atan(1 - (sqrt(2)*sqrt(sin(a + b*x)))/sqrt(cos(a + b*x)))/(sqrt(2)*b) - atan(1 + (sqrt(2)*sqrt(sin(a + b*x)))/sqrt(cos(a + b*x)))/(sqrt(2)*b) - log(1 - (sqrt(2)*sqrt(sin(a + b*x)))/sqrt(cos(a + b*x)) + tan(a + b*x))/(2*sqrt(2)*b) + log(1 + (sqrt(2)*sqrt(sin(a + b*x)))/sqrt(cos(a + b*x)) + tan(a + b*x))/(2*sqrt(2)*b) - (2*sqrt(cos(a + b*x)))/(b*sqrt(sin(a + b*x)))]


    @test_int [cos(a + b*x)^(5/2)/sin(a + b*x)^(5/2), x, 11, -(atan(1 - (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(sqrt(2)*b)) + atan(1 + (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(sqrt(2)*b) + log(1 + cot(a + b*x) - (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(2*sqrt(2)*b) - log(1 + cot(a + b*x) + (sqrt(2)*sqrt(cos(a + b*x)))/sqrt(sin(a + b*x)))/(2*sqrt(2)*b) - (2*cos(a + b*x)^(3/2))/(3*b*sin(a + b*x)^(3/2))]


    @test_int [cos(a + b*x)^(7/2)/sin(a + b*x)^(7/2), x, 12, -(atan(1 - (sqrt(2)*sqrt(sin(a + b*x)))/sqrt(cos(a + b*x)))/(sqrt(2)*b)) + atan(1 + (sqrt(2)*sqrt(sin(a + b*x)))/sqrt(cos(a + b*x)))/(sqrt(2)*b) + log(1 - (sqrt(2)*sqrt(sin(a + b*x)))/sqrt(cos(a + b*x)) + tan(a + b*x))/(2*sqrt(2)*b) - log(1 + (sqrt(2)*sqrt(sin(a + b*x)))/sqrt(cos(a + b*x)) + tan(a + b*x))/(2*sqrt(2)*b) - (2*cos(a + b*x)^(5/2))/(5*b*sin(a + b*x)^(5/2)) + (2*sqrt(cos(a + b*x)))/(b*sqrt(sin(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/3)*cos(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [cos(e + f*x)^4*(b*sin(e + f*x))^(1/3), x, 1, (3*cos(e + f*x)*Hypergeometric2F1(-3/2, 2/3, 5/3, sin(e + f*x)^2)*(b*sin(e + f*x))^(4/3))/(4*b*f*sqrt(cos(e + f*x)^2))]
    @test_int [cos(e + f*x)^2*(b*sin(e + f*x))^(1/3), x, 1, (3*cos(e + f*x)*Hypergeometric2F1(-1/2, 2/3, 5/3, sin(e + f*x)^2)*(b*sin(e + f*x))^(4/3))/(4*b*f*sqrt(cos(e + f*x)^2))]
    @test_int [cos(e + f*x)^0*(b*sin(e + f*x))^(1/3), x, 1, (3*cos(e + f*x)*Hypergeometric2F1(1/2, 2/3, 5/3, sin(e + f*x)^2)*(b*sin(e + f*x))^(4/3))/(4*b*f*sqrt(cos(e + f*x)^2))]
    @test_int [sec(e + f*x)^2*(b*sin(e + f*x))^(1/3), x, 1, (3*sqrt(cos(e + f*x)^2)*Hypergeometric2F1(2/3, 3/2, 5/3, sin(e + f*x)^2)*sec(e + f*x)*(b*sin(e + f*x))^(4/3))/(4*b*f)]
    @test_int [sec(e + f*x)^4*(b*sin(e + f*x))^(1/3), x, 1, (3*sqrt(cos(e + f*x)^2)*Hypergeometric2F1(2/3, 5/2, 5/3, sin(e + f*x)^2)*sec(e + f*x)*(b*sin(e + f*x))^(4/3))/(4*b*f)]


    @test_int [cos(e + f*x)^4*(b*sin(e + f*x))^(5/3), x, 1, (3*cos(e + f*x)*Hypergeometric2F1(-3/2, 4/3, 7/3, sin(e + f*x)^2)*(b*sin(e + f*x))^(8/3))/(8*b*f*sqrt(cos(e + f*x)^2))]
    @test_int [cos(e + f*x)^2*(b*sin(e + f*x))^(5/3), x, 1, (3*cos(e + f*x)*Hypergeometric2F1(-1/2, 4/3, 7/3, sin(e + f*x)^2)*(b*sin(e + f*x))^(8/3))/(8*b*f*sqrt(cos(e + f*x)^2))]
    @test_int [cos(e + f*x)^0*(b*sin(e + f*x))^(5/3), x, 1, (3*cos(e + f*x)*Hypergeometric2F1(1/2, 4/3, 7/3, sin(e + f*x)^2)*(b*sin(e + f*x))^(8/3))/(8*b*f*sqrt(cos(e + f*x)^2))]
    @test_int [sec(e + f*x)^2*(b*sin(e + f*x))^(5/3), x, 1, (3*sqrt(cos(e + f*x)^2)*Hypergeometric2F1(4/3, 3/2, 7/3, sin(e + f*x)^2)*sec(e + f*x)*(b*sin(e + f*x))^(8/3))/(8*b*f)]
    @test_int [sec(e + f*x)^4*(b*sin(e + f*x))^(5/3), x, 1, (3*sqrt(cos(e + f*x)^2)*Hypergeometric2F1(4/3, 5/2, 7/3, sin(e + f*x)^2)*sec(e + f*x)*(b*sin(e + f*x))^(8/3))/(8*b*f)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [cos(e + f*x)^4/(b*sin(e + f*x))^(1/3), x, 1, (3*cos(e + f*x)*Hypergeometric2F1(-3/2, 1/3, 4/3, sin(e + f*x)^2)*(b*sin(e + f*x))^(2/3))/(2*b*f*sqrt(cos(e + f*x)^2))]
    @test_int [cos(e + f*x)^2/(b*sin(e + f*x))^(1/3), x, 1, (3*cos(e + f*x)*Hypergeometric2F1(-1/2, 1/3, 4/3, sin(e + f*x)^2)*(b*sin(e + f*x))^(2/3))/(2*b*f*sqrt(cos(e + f*x)^2))]
    @test_int [cos(e + f*x)^0/(b*sin(e + f*x))^(1/3), x, 1, (3*cos(e + f*x)*Hypergeometric2F1(1/3, 1/2, 4/3, sin(e + f*x)^2)*(b*sin(e + f*x))^(2/3))/(2*b*f*sqrt(cos(e + f*x)^2))]
    @test_int [sec(e + f*x)^2/(b*sin(e + f*x))^(1/3), x, 1, (3*sqrt(cos(e + f*x)^2)*Hypergeometric2F1(1/3, 3/2, 4/3, sin(e + f*x)^2)*sec(e + f*x)*(b*sin(e + f*x))^(2/3))/(2*b*f)]
    @test_int [sec(e + f*x)^4/(b*sin(e + f*x))^(1/3), x, 1, (3*sqrt(cos(e + f*x)^2)*Hypergeometric2F1(1/3, 5/2, 4/3, sin(e + f*x)^2)*sec(e + f*x)*(b*sin(e + f*x))^(2/3))/(2*b*f)]


    @test_int [cos(e + f*x)^4/(b*sin(e + f*x))^(5/3), x, 1, (-3*cos(e + f*x)*Hypergeometric2F1(-3/2, -1/3, 2/3, sin(e + f*x)^2))/(2*b*f*sqrt(cos(e + f*x)^2)*(b*sin(e + f*x))^(2/3))]
    @test_int [cos(e + f*x)^2/(b*sin(e + f*x))^(5/3), x, 1, (-3*cos(e + f*x)*Hypergeometric2F1(-1/2, -1/3, 2/3, sin(e + f*x)^2))/(2*b*f*sqrt(cos(e + f*x)^2)*(b*sin(e + f*x))^(2/3))]
    @test_int [cos(e + f*x)^0/(b*sin(e + f*x))^(5/3), x, 1, (-3*cos(e + f*x)*Hypergeometric2F1(-1/3, 1/2, 2/3, sin(e + f*x)^2))/(2*b*f*sqrt(cos(e + f*x)^2)*(b*sin(e + f*x))^(2/3))]
    @test_int [sec(e + f*x)^2/(b*sin(e + f*x))^(5/3), x, 1, (-3*sqrt(cos(e + f*x)^2)*Hypergeometric2F1(-1/3, 3/2, 2/3, sin(e + f*x)^2)*sec(e + f*x))/(2*b*f*(b*sin(e + f*x))^(2/3))]
    @test_int [sec(e + f*x)^4/(b*sin(e + f*x))^(5/3), x, 1, (-3*sqrt(cos(e + f*x)^2)*Hypergeometric2F1(-1/3, 5/2, 2/3, sin(e + f*x)^2)*sec(e + f*x))/(2*b*f*(b*sin(e + f*x))^(2/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/3)*(b*cos(e+f*x))^(n/3)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sin(a + b*x)^(1/3)/cos(a + b*x)^(1/3), x, 8, -((sqrt(3)*atan((1 - (2*sin(a + b*x)^(2/3))/cos(a + b*x)^(2/3))/sqrt(3)))/(2*b)) - log(1 + sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3))/(2*b) + log(1 - sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3) + sin(a + b*x)^(4/3)/cos(a + b*x)^(4/3))/(4*b)]


    @test_int [sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3), x, 11, -(atan(sqrt(3) - (2*sin(a + b*x)^(1/3))/cos(a + b*x)^(1/3))/(2*b)) + atan(sqrt(3) + (2*sin(a + b*x)^(1/3))/cos(a + b*x)^(1/3))/(2*b) + atan(sin(a + b*x)^(1/3)/cos(a + b*x)^(1/3))/b + (sqrt(3)*log(1 - (sqrt(3)*sin(a + b*x)^(1/3))/cos(a + b*x)^(1/3) + sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3)))/(4*b) - (sqrt(3)*log(1 + (sqrt(3)*sin(a + b*x)^(1/3))/cos(a + b*x)^(1/3) + sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3)))/(4*b)]


    @test_int [sin(a + b*x)^(4/3)/cos(a + b*x)^(4/3), x, 12, -(atan(sqrt(3) - (2*cos(a + b*x)^(1/3))/sin(a + b*x)^(1/3))/(2*b)) + atan(sqrt(3) + (2*cos(a + b*x)^(1/3))/sin(a + b*x)^(1/3))/(2*b) + atan(cos(a + b*x)^(1/3)/sin(a + b*x)^(1/3))/b + (sqrt(3)*log(1 + cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3) - (sqrt(3)*cos(a + b*x)^(1/3))/sin(a + b*x)^(1/3)))/(4*b) - (sqrt(3)*log(1 + cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3) + (sqrt(3)*cos(a + b*x)^(1/3))/sin(a + b*x)^(1/3)))/(4*b) + (3*sin(a + b*x)^(1/3))/(b*cos(a + b*x)^(1/3))]


    @test_int [sin(a + b*x)^(5/3)/cos(a + b*x)^(5/3), x, 9, -((sqrt(3)*atan((1 - (2*cos(a + b*x)^(2/3))/sin(a + b*x)^(2/3))/sqrt(3)))/(2*b)) + log(1 + cos(a + b*x)^(4/3)/sin(a + b*x)^(4/3) - cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3))/(4*b) - log(1 + cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3))/(2*b) + (3*sin(a + b*x)^(2/3))/(2*b*cos(a + b*x)^(2/3))]


    @test_int [sin(a + b*x)^(7/3)/cos(a + b*x)^(7/3), x, 9, (sqrt(3)*atan((1 - (2*sin(a + b*x)^(2/3))/cos(a + b*x)^(2/3))/sqrt(3)))/(2*b) + log(1 + sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3))/(2*b) - log(1 - sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3) + sin(a + b*x)^(4/3)/cos(a + b*x)^(4/3))/(4*b) + (3*sin(a + b*x)^(4/3))/(4*b*cos(a + b*x)^(4/3))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [cos(a + b*x)^(1/3)/sin(a + b*x)^(1/3), x, 8, (sqrt(3)*atan((1 - (2*cos(a + b*x)^(2/3))/sin(a + b*x)^(2/3))/sqrt(3)))/(2*b) - log(1 + cos(a + b*x)^(4/3)/sin(a + b*x)^(4/3) - cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3))/(4*b) + log(1 + cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3))/(2*b)]


    @test_int [cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3), x, 11, atan(sqrt(3) - (2*cos(a + b*x)^(1/3))/sin(a + b*x)^(1/3))/(2*b) - atan(sqrt(3) + (2*cos(a + b*x)^(1/3))/sin(a + b*x)^(1/3))/(2*b) - atan(cos(a + b*x)^(1/3)/sin(a + b*x)^(1/3))/b - (sqrt(3)*log(1 + cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3) - (sqrt(3)*cos(a + b*x)^(1/3))/sin(a + b*x)^(1/3)))/(4*b) + (sqrt(3)*log(1 + cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3) + (sqrt(3)*cos(a + b*x)^(1/3))/sin(a + b*x)^(1/3)))/(4*b)]


    @test_int [cos(a + b*x)^(4/3)/sin(a + b*x)^(4/3), x, 12, atan(sqrt(3) - (2*sin(a + b*x)^(1/3))/cos(a + b*x)^(1/3))/(2*b) - atan(sqrt(3) + (2*sin(a + b*x)^(1/3))/cos(a + b*x)^(1/3))/(2*b) - atan(sin(a + b*x)^(1/3)/cos(a + b*x)^(1/3))/b - (sqrt(3)*log(1 - (sqrt(3)*sin(a + b*x)^(1/3))/cos(a + b*x)^(1/3) + sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3)))/(4*b) + (sqrt(3)*log(1 + (sqrt(3)*sin(a + b*x)^(1/3))/cos(a + b*x)^(1/3) + sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3)))/(4*b) - (3*cos(a + b*x)^(1/3))/(b*sin(a + b*x)^(1/3))]


    @test_int [cos(a + b*x)^(5/3)/sin(a + b*x)^(5/3), x, 9, (sqrt(3)*atan((1 - (2*sin(a + b*x)^(2/3))/cos(a + b*x)^(2/3))/sqrt(3)))/(2*b) + log(1 + sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3))/(2*b) - log(1 - sin(a + b*x)^(2/3)/cos(a + b*x)^(2/3) + sin(a + b*x)^(4/3)/cos(a + b*x)^(4/3))/(4*b) - (3*cos(a + b*x)^(2/3))/(2*b*sin(a + b*x)^(2/3))]


    @test_int [cos(a + b*x)^(7/3)/sin(a + b*x)^(7/3), x, 9, -((sqrt(3)*atan((1 - (2*cos(a + b*x)^(2/3))/sin(a + b*x)^(2/3))/sqrt(3)))/(2*b)) + log(1 + cos(a + b*x)^(4/3)/sin(a + b*x)^(4/3) - cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3))/(4*b) - log(1 + cos(a + b*x)^(2/3)/sin(a + b*x)^(2/3))/(2*b) - (3*cos(a + b*x)^(4/3))/(4*b*sin(a + b*x)^(4/3))]


    @test_int [cos(x)^(2/3)/sin(x)^(8/3), x, 1, (-3*cos(x)^(5/3))/(5*sin(x)^(5/3))]
    @test_int [sin(x)^(2/3)/cos(x)^(8/3), x, 1, (3*sin(x)^(5/3))/(5*cos(x)^(5/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*cos(e+f*x))^n*with*m*symbolic=#


    @test_int [(sin(e + f*x))^m*(cos(e + f*x))^n, x, 1, -((cos(e + f*x)^(1 + n)*Hypergeometric2F1((1 - m)/2, (1 + n)/2, (3 + n)/2, cos(e + f*x)^2)*sin(e + f*x)^(-1 + m)*(sin(e + f*x)^2)^((1 - m)/2))/(f*(1 + n)))]
    @test_int [(sin(e + f*x))^m*(d*cos(e + f*x))^n, x, 1, -(((d*cos(e + f*x))^(1 + n)*Hypergeometric2F1((1 - m)/2, (1 + n)/2, (3 + n)/2, cos(e + f*x)^2)*sin(e + f*x)^(-1 + m)*(sin(e + f*x)^2)^((1 - m)/2))/(d*f*(1 + n)))]
    @test_int [(b*sin(e + f*x))^m*(cos(e + f*x))^n, x, 1, -((b*cos(e + f*x)^(1 + n)*Hypergeometric2F1((1 - m)/2, (1 + n)/2, (3 + n)/2, cos(e + f*x)^2)*(b*sin(e + f*x))^(-1 + m)*(sin(e + f*x)^2)^((1 - m)/2))/(f*(1 + n)))]
    @test_int [(b*sin(e + f*x))^m*(d*cos(e + f*x))^n, x, 1, -((b*(d*cos(e + f*x))^(1 + n)*Hypergeometric2F1((1 - m)/2, (1 + n)/2, (3 + n)/2, cos(e + f*x)^2)*(b*sin(e + f*x))^(-1 + m)*(sin(e + f*x)^2)^((1 - m)/2))/(d*f*(1 + n)))]


    @test_int [cos(a + b*x)^5*(c*sin(a + b*x))^m, x, 3, (c*sin(a + b*x))^(1 + m)/(b*c*(1 + m)) - (2*(c*sin(a + b*x))^(3 + m))/(b*c^3*(3 + m)) + (c*sin(a + b*x))^(5 + m)/(b*c^5*(5 + m))]
    @test_int [cos(a + b*x)^3*(c*sin(a + b*x))^m, x, 3, (c*sin(a + b*x))^(1 + m)/(b*c*(1 + m)) - (c*sin(a + b*x))^(3 + m)/(b*c^3*(3 + m))]
    @test_int [cos(a + b*x)^1*(c*sin(a + b*x))^m, x, 2, (c*sin(a + b*x))^(1 + m)/(b*c*(1 + m))]
    @test_int [sec(a + b*x)^1*(c*sin(a + b*x))^m, x, 2, (Hypergeometric2F1(1, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m))]
    @test_int [sec(a + b*x)^3*(c*sin(a + b*x))^m, x, 2, (Hypergeometric2F1(2, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m))]

    @test_int [cos(a + b*x)^4*(c*sin(a + b*x))^m, x, 1, (cos(a + b*x)*Hypergeometric2F1(-(3/2), (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m)*sqrt(cos(a + b*x)^2))]
    @test_int [cos(a + b*x)^2*(c*sin(a + b*x))^m, x, 1, (cos(a + b*x)*Hypergeometric2F1(-(1/2), (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m)*sqrt(cos(a + b*x)^2))]
    @test_int [cos(a + b*x)^0*(c*sin(a + b*x))^m, x, 1, (cos(a + b*x)*Hypergeometric2F1(1/2, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m)*sqrt(cos(a + b*x)^2))]
    @test_int [sec(a + b*x)^2*(c*sin(a + b*x))^m, x, 1, (sqrt(cos(a + b*x)^2)*Hypergeometric2F1(3/2, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*sec(a + b*x)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m))]
    @test_int [sec(a + b*x)^4*(c*sin(a + b*x))^m, x, 1, (sqrt(cos(a + b*x)^2)*Hypergeometric2F1(5/2, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*sec(a + b*x)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m))]


    @test_int [(c*sin(a + b*x))^m*(d*cos(a + b*x))^(3/2), x, 1, (d*sqrt(d*cos(a + b*x))*Hypergeometric2F1(-(1/4), (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m)*(cos(a + b*x)^2)^(1/4))]
    @test_int [(c*sin(a + b*x))^m*(d*cos(a + b*x))^(1/2), x, 1, (d*(cos(a + b*x)^2)^(1/4)*Hypergeometric2F1(1/4, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m)*sqrt(d*cos(a + b*x)))]
    @test_int [(c*sin(a + b*x))^m/(d*cos(a + b*x))^(1/2), x, 1, (d*(cos(a + b*x)^2)^(3/4)*Hypergeometric2F1(3/4, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m)*(d*cos(a + b*x))^(3/2))]
    @test_int [(c*sin(a + b*x))^m/(d*cos(a + b*x))^(3/2), x, 1, ((cos(a + b*x)^2)^(1/4)*Hypergeometric2F1(5/4, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*d*(1 + m)*sqrt(d*cos(a + b*x)))]
    @test_int [(c*sin(a + b*x))^m/(d*cos(a + b*x))^(5/2), x, 1, ((cos(a + b*x)^2)^(3/4)*Hypergeometric2F1(7/4, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*d*(1 + m)*(d*cos(a + b*x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*cos(e+f*x))^n*with*n*symbolic=#


    @test_int [sin(a + b*x)^5*(d*cos(a + b*x))^n, x, 3, -((d*cos(a + b*x))^(1 + n)/(b*d*(1 + n))) + (2*(d*cos(a + b*x))^(3 + n))/(b*d^3*(3 + n)) - (d*cos(a + b*x))^(5 + n)/(b*d^5*(5 + n))]
    @test_int [sin(a + b*x)^3*(d*cos(a + b*x))^n, x, 3, -((d*cos(a + b*x))^(1 + n)/(b*d*(1 + n))) + (d*cos(a + b*x))^(3 + n)/(b*d^3*(3 + n))]
    @test_int [sin(a + b*x)^1*(d*cos(a + b*x))^n, x, 2, -((d*cos(a + b*x))^(1 + n)/(b*d*(1 + n)))]
    @test_int [csc(a + b*x)^1*(d*cos(a + b*x))^n, x, 2, -(((d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2))/(b*d*(1 + n)))]
    @test_int [csc(a + b*x)^3*(d*cos(a + b*x))^n, x, 2, -(((d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(2, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2))/(b*d*(1 + n)))]
    @test_int [csc(a + b*x)^5*(d*cos(a + b*x))^n, x, 2, -(((d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(3, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2))/(b*d*(1 + n)))]

    @test_int [sin(a + b*x)^4*(d*cos(a + b*x))^n, x, 1, -(((d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(-(3/2), (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*sin(a + b*x))/(b*d*(1 + n)*sqrt(sin(a + b*x)^2)))]
    @test_int [sin(a + b*x)^2*(d*cos(a + b*x))^n, x, 1, -(((d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(-(1/2), (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*sin(a + b*x))/(b*d*(1 + n)*sqrt(sin(a + b*x)^2)))]
    @test_int [sin(a + b*x)^0*(d*cos(a + b*x))^n, x, 1, -(((d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(1/2, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*sin(a + b*x))/(b*d*(1 + n)*sqrt(sin(a + b*x)^2)))]
    @test_int [csc(a + b*x)^2*(d*cos(a + b*x))^n, x, 1, -(((d*cos(a + b*x))^(1 + n)*csc(a + b*x)*Hypergeometric2F1(3/2, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*sqrt(sin(a + b*x)^2))/(b*d*(1 + n)))]
    @test_int [csc(a + b*x)^4*(d*cos(a + b*x))^n, x, 1, -(((d*cos(a + b*x))^(1 + n)*csc(a + b*x)*Hypergeometric2F1(5/2, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*sqrt(sin(a + b*x)^2))/(b*d*(1 + n)))]


    @test_int [(d*cos(a + b*x))^n*(c*sin(a + b*x))^(5/2), x, 1, -((c*(d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(-(3/4), (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*(c*sin(a + b*x))^(3/2))/(b*d*(1 + n)*(sin(a + b*x)^2)^(3/4)))]
    @test_int [(d*cos(a + b*x))^n*(c*sin(a + b*x))^(3/2), x, 1, -((c*(d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(-(1/4), (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*sqrt(c*sin(a + b*x)))/(b*d*(1 + n)*(sin(a + b*x)^2)^(1/4)))]
    @test_int [(d*cos(a + b*x))^n*(c*sin(a + b*x))^(1/2), x, 1, -((c*(d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(1/4, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*(sin(a + b*x)^2)^(1/4))/(b*d*(1 + n)*sqrt(c*sin(a + b*x))))]
    @test_int [(d*cos(a + b*x))^n/(c*sin(a + b*x))^(1/2), x, 1, -((c*(d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(3/4, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*(sin(a + b*x)^2)^(3/4))/(b*d*(1 + n)*(c*sin(a + b*x))^(3/2)))]
    @test_int [(d*cos(a + b*x))^n/(c*sin(a + b*x))^(3/2), x, 1, -(((d*cos(a + b*x))^(1 + n)*Hypergeometric2F1(5/4, (1 + n)/2, (3 + n)/2, cos(a + b*x)^2)*(sin(a + b*x)^2)^(1/4))/(b*c*d*(1 + n)*sqrt(c*sin(a + b*x))))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*sec(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(b*sec(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sqrt(b*sec(e + f*x))*sin(e + f*x)^7, x, 3, (2*b^7)/(13*f*(b*sec(e + f*x))^(13/2)) - (2*b^5)/(3*f*(b*sec(e + f*x))^(9/2)) + (6*b^3)/(5*f*(b*sec(e + f*x))^(5/2)) - (2*b)/(f*sqrt(b*sec(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))*sin(e + f*x)^5, x, 3, (-2*b^5)/(9*f*(b*sec(e + f*x))^(9/2)) + (4*b^3)/(5*f*(b*sec(e + f*x))^(5/2)) - (2*b)/(f*sqrt(b*sec(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))*sin(e + f*x)^3, x, 3, (2*b^3)/(5*f*(b*sec(e + f*x))^(5/2)) - (2*b)/(f*sqrt(b*sec(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))*sin(e + f*x)^1, x, 2, (-2*b)/(f*sqrt(b*sec(e + f*x)))]
    @test_int [csc(e + f*x)^1*sqrt(b*sec(e + f*x)), x, 5, (sqrt(b)*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/f - (sqrt(b)*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/f]
    @test_int [csc(e + f*x)^3*sqrt(b*sec(e + f*x)), x, 6, (3*sqrt(b)*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/(4*f) - (3*sqrt(b)*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/(4*f) - (cot(e + f*x)^2*(b*sec(e + f*x))^(3/2))/(2*b*f)]
    @test_int [csc(e + f*x)^5*sqrt(b*sec(e + f*x)), x, 7, (21*sqrt(b)*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*f) - (21*sqrt(b)*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*f) - (7*cot(e + f*x)^2*(b*sec(e + f*x))^(3/2))/(16*b*f) - (cot(e + f*x)^4*(b*sec(e + f*x))^(7/2))/(4*b^3*f)]

    @test_int [sqrt(b*sec(e + f*x))*sin(e + f*x)^6, x, 5, (80*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(77*f) - (40*b*sin(e + f*x))/(77*f*sqrt(b*sec(e + f*x))) - (20*b*sin(e + f*x)^3)/(77*f*sqrt(b*sec(e + f*x))) - (2*b*sin(e + f*x)^5)/(11*f*sqrt(b*sec(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))*sin(e + f*x)^4, x, 4, (8*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(7*f) - (4*b*sin(e + f*x))/(7*f*sqrt(b*sec(e + f*x))) - (2*b*sin(e + f*x)^3)/(7*f*sqrt(b*sec(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))*sin(e + f*x)^2, x, 3, (4*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(3*f) - (2*b*sin(e + f*x))/(3*f*sqrt(b*sec(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))*sin(e + f*x)^0, x, 2, (2*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/f]
    @test_int [csc(e + f*x)^2*sqrt(b*sec(e + f*x)), x, 3, -((b*csc(e + f*x))/(f*sqrt(b*sec(e + f*x)))) + (sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/f]
    @test_int [csc(e + f*x)^4*sqrt(b*sec(e + f*x)), x, 4, (-5*b*csc(e + f*x))/(6*f*sqrt(b*sec(e + f*x))) - (b*csc(e + f*x)^3)/(3*f*sqrt(b*sec(e + f*x))) + (5*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(6*f)]
    @test_int [csc(e + f*x)^6*sqrt(b*sec(e + f*x)), x, 5, (-3*b*csc(e + f*x))/(4*f*sqrt(b*sec(e + f*x))) - (3*b*csc(e + f*x)^3)/(10*f*sqrt(b*sec(e + f*x))) - (b*csc(e + f*x)^5)/(5*f*sqrt(b*sec(e + f*x))) + (3*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(4*f)]


    @test_int [(b*sec(e + f*x))^(3/2)*sin(e + f*x)^7, x, 3, (2*b^7)/(11*f*(b*sec(e + f*x))^(11/2)) - (6*b^5)/(7*f*(b*sec(e + f*x))^(7/2)) + (2*b^3)/(f*(b*sec(e + f*x))^(3/2)) + (2*b*sqrt(b*sec(e + f*x)))/f]
    @test_int [(b*sec(e + f*x))^(3/2)*sin(e + f*x)^5, x, 3, (-2*b^5)/(7*f*(b*sec(e + f*x))^(7/2)) + (4*b^3)/(3*f*(b*sec(e + f*x))^(3/2)) + (2*b*sqrt(b*sec(e + f*x)))/f]
    @test_int [(b*sec(e + f*x))^(3/2)*sin(e + f*x)^3, x, 3, (2*b^3)/(3*f*(b*sec(e + f*x))^(3/2)) + (2*b*sqrt(b*sec(e + f*x)))/f]
    @test_int [(b*sec(e + f*x))^(3/2)*sin(e + f*x)^1, x, 2, (2*b*sqrt(b*sec(e + f*x)))/f]
    @test_int [csc(e + f*x)^1*(b*sec(e + f*x))^(3/2), x, 6, -((b^(3/2)*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/f) - (b^(3/2)*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/f + (2*b*sqrt(b*sec(e + f*x)))/f]
    @test_int [csc(e + f*x)^3*(b*sec(e + f*x))^(3/2), x, 7, (-5*b^(3/2)*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/(4*f) - (5*b^(3/2)*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/(4*f) + (5*b*sqrt(b*sec(e + f*x)))/(2*f) - (cot(e + f*x)^2*(b*sec(e + f*x))^(5/2))/(2*b*f)]

    @test_int [(b*sec(e + f*x))^(3/2)*sin(e + f*x)^6, x, 5, (-16*b^2*EllipticE((e + f*x)/2, 2))/(3*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) + (8*b^3*sin(e + f*x))/(3*f*(b*sec(e + f*x))^(3/2)) + (20*b^3*sin(e + f*x)^3)/(9*f*(b*sec(e + f*x))^(3/2)) + (2*b*sqrt(b*sec(e + f*x))*sin(e + f*x)^5)/f]
    @test_int [(b*sec(e + f*x))^(3/2)*sin(e + f*x)^4, x, 4, (-24*b^2*EllipticE((e + f*x)/2, 2))/(5*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) + (12*b^3*sin(e + f*x))/(5*f*(b*sec(e + f*x))^(3/2)) + (2*b*sqrt(b*sec(e + f*x))*sin(e + f*x)^3)/f]
    @test_int [(b*sec(e + f*x))^(3/2)*sin(e + f*x)^2, x, 3, (-4*b^2*EllipticE((e + f*x)/2, 2))/(f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) + (2*b*sqrt(b*sec(e + f*x))*sin(e + f*x))/f]
    @test_int [(b*sec(e + f*x))^(3/2)*sin(e + f*x)^0, x, 3, (-2*b^2*EllipticE((e + f*x)/2, 2))/(f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) + (2*b*sqrt(b*sec(e + f*x))*sin(e + f*x))/f]
    @test_int [csc(e + f*x)^2*(b*sec(e + f*x))^(3/2), x, 4, (-3*b^2*EllipticE((e + f*x)/2, 2))/(f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) - (b*csc(e + f*x)*sqrt(b*sec(e + f*x)))/f + (3*b*sqrt(b*sec(e + f*x))*sin(e + f*x))/f]
    @test_int [csc(e + f*x)^4*(b*sec(e + f*x))^(3/2), x, 5, (-7*b^2*EllipticE((e + f*x)/2, 2))/(2*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) - (7*b*csc(e + f*x)*sqrt(b*sec(e + f*x)))/(6*f) - (b*csc(e + f*x)^3*sqrt(b*sec(e + f*x)))/(3*f) + (7*b*sqrt(b*sec(e + f*x))*sin(e + f*x))/(2*f)]


    @test_int [(b*sec(e + f*x))^(5/2)*sin(e + f*x)^7, x, 3, (2*b^7)/(9*f*(b*sec(e + f*x))^(9/2)) - (6*b^5)/(5*f*(b*sec(e + f*x))^(5/2)) + (6*b^3)/(f*sqrt(b*sec(e + f*x))) + (2*b*(b*sec(e + f*x))^(3/2))/(3*f)]
    @test_int [(b*sec(e + f*x))^(5/2)*sin(e + f*x)^5, x, 3, (-2*b^5)/(5*f*(b*sec(e + f*x))^(5/2)) + (4*b^3)/(f*sqrt(b*sec(e + f*x))) + (2*b*(b*sec(e + f*x))^(3/2))/(3*f)]
    @test_int [(b*sec(e + f*x))^(5/2)*sin(e + f*x)^3, x, 3, (2*b^3)/(f*sqrt(b*sec(e + f*x))) + (2*b*(b*sec(e + f*x))^(3/2))/(3*f)]
    @test_int [(b*sec(e + f*x))^(5/2)*sin(e + f*x)^1, x, 2, (2*b*(b*sec(e + f*x))^(3/2))/(3*f)]
    @test_int [csc(e + f*x)^1*(b*sec(e + f*x))^(5/2), x, 6, (b^(5/2)*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/f - (b^(5/2)*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/f + (2*b*(b*sec(e + f*x))^(3/2))/(3*f)]
    @test_int [csc(e + f*x)^3*(b*sec(e + f*x))^(5/2), x, 7, (7*b^(5/2)*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/(4*f) - (7*b^(5/2)*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/(4*f) + (7*b*(b*sec(e + f*x))^(3/2))/(6*f) - (cot(e + f*x)^2*(b*sec(e + f*x))^(7/2))/(2*b*f)]
    @test_int [csc(e + f*x)^5*(b*sec(e + f*x))^(5/2), x, 8, (77*b^(5/2)*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*f) - (77*b^(5/2)*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*f) + (77*b*(b*sec(e + f*x))^(3/2))/(48*f) - (11*cot(e + f*x)^2*(b*sec(e + f*x))^(7/2))/(16*b*f) - (cot(e + f*x)^4*(b*sec(e + f*x))^(11/2))/(4*b^3*f)]

    @test_int [(b*sec(e + f*x))^(5/2)*sin(e + f*x)^6, x, 5, (-80*b^2*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(21*f) + (40*b^3*sin(e + f*x))/(21*f*sqrt(b*sec(e + f*x))) + (20*b^3*sin(e + f*x)^3)/(21*f*sqrt(b*sec(e + f*x))) + (2*b*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^5)/(3*f)]
    @test_int [(b*sec(e + f*x))^(5/2)*sin(e + f*x)^4, x, 4, (-8*b^2*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(3*f) + (4*b^3*sin(e + f*x))/(3*f*sqrt(b*sec(e + f*x))) + (2*b*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^3)/(3*f)]
    @test_int [(b*sec(e + f*x))^(5/2)*sin(e + f*x)^2, x, 3, (-4*b^2*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(3*f) + (2*b*(b*sec(e + f*x))^(3/2)*sin(e + f*x))/(3*f)]
    @test_int [(b*sec(e + f*x))^(5/2)*sin(e + f*x)^0, x, 3, (2*b^2*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(3*f) + (2*b*(b*sec(e + f*x))^(3/2)*sin(e + f*x))/(3*f)]
    @test_int [csc(e + f*x)^2*(b*sec(e + f*x))^(5/2), x, 4, -((5*b^3*csc(e + f*x))/(3*f*sqrt(b*sec(e + f*x)))) + (5*b^2*sqrt(cos(e + f*x))*EllipticF((1/2)*(e + f*x), 2)*sqrt(b*sec(e + f*x)))/(3*f) + (2*b*csc(e + f*x)*(b*sec(e + f*x))^(3/2))/(3*f)]
    @test_int [csc(e + f*x)^4*(b*sec(e + f*x))^(5/2), x, 5, -((5*b^3*csc(e + f*x))/(2*f*sqrt(b*sec(e + f*x)))) + (5*b^2*sqrt(cos(e + f*x))*EllipticF((1/2)*(e + f*x), 2)*sqrt(b*sec(e + f*x)))/(2*f) + (b*csc(e + f*x)*(b*sec(e + f*x))^(3/2))/f - (b*csc(e + f*x)^3*(b*sec(e + f*x))^(3/2))/(3*f)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sin(e + f*x)^7/sqrt(b*sec(e + f*x)), x, 3, (2*b^7)/(15*f*(b*sec(e + f*x))^(15/2)) - (6*b^5)/(11*f*(b*sec(e + f*x))^(11/2)) + (6*b^3)/(7*f*(b*sec(e + f*x))^(7/2)) - (2*b)/(3*f*(b*sec(e + f*x))^(3/2))]
    @test_int [sin(e + f*x)^5/sqrt(b*sec(e + f*x)), x, 3, (-2*b^5)/(11*f*(b*sec(e + f*x))^(11/2)) + (4*b^3)/(7*f*(b*sec(e + f*x))^(7/2)) - (2*b)/(3*f*(b*sec(e + f*x))^(3/2))]
    @test_int [sin(e + f*x)^3/sqrt(b*sec(e + f*x)), x, 3, (2*b^3)/(7*f*(b*sec(e + f*x))^(7/2)) - (2*b)/(3*f*(b*sec(e + f*x))^(3/2))]
    @test_int [sin(e + f*x)^1/sqrt(b*sec(e + f*x)), x, 2, (-2*b)/(3*f*(b*sec(e + f*x))^(3/2))]
    @test_int [csc(e + f*x)^1/sqrt(b*sec(e + f*x)), x, 5, -(atan(sqrt(b*sec(e + f*x))/sqrt(b))/(sqrt(b)*f)) - atanh(sqrt(b*sec(e + f*x))/sqrt(b))/(sqrt(b)*f)]
    @test_int [csc(e + f*x)^3/sqrt(b*sec(e + f*x)), x, 6, -atan(sqrt(b*sec(e + f*x))/sqrt(b))/(4*sqrt(b)*f) - atanh(sqrt(b*sec(e + f*x))/sqrt(b))/(4*sqrt(b)*f) - (cot(e + f*x)^2*sqrt(b*sec(e + f*x)))/(2*b*f)]
    @test_int [csc(e + f*x)^5/sqrt(b*sec(e + f*x)), x, 7, (-5*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*sqrt(b)*f) - (5*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*sqrt(b)*f) - (5*cot(e + f*x)^2*sqrt(b*sec(e + f*x)))/(16*b*f) - (cot(e + f*x)^4*(b*sec(e + f*x))^(5/2))/(4*b^3*f)]

    @test_int [sin(e + f*x)^6/sqrt(b*sec(e + f*x)), x, 5, (16*EllipticE((e + f*x)/2, 2))/(39*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) - (8*b*sin(e + f*x))/(39*f*(b*sec(e + f*x))^(3/2)) - (20*b*sin(e + f*x)^3)/(117*f*(b*sec(e + f*x))^(3/2)) - (2*b*sin(e + f*x)^5)/(13*f*(b*sec(e + f*x))^(3/2))]
    @test_int [sin(e + f*x)^4/sqrt(b*sec(e + f*x)), x, 4, (8*EllipticE((e + f*x)/2, 2))/(15*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) - (4*b*sin(e + f*x))/(15*f*(b*sec(e + f*x))^(3/2)) - (2*b*sin(e + f*x)^3)/(9*f*(b*sec(e + f*x))^(3/2))]
    @test_int [sin(e + f*x)^2/sqrt(b*sec(e + f*x)), x, 3, (4*EllipticE((e + f*x)/2, 2))/(5*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) - (2*b*sin(e + f*x))/(5*f*(b*sec(e + f*x))^(3/2))]
    @test_int [sin(e + f*x)^0/sqrt(b*sec(e + f*x)), x, 2, (2*EllipticE((e + f*x)/2, 2))/(f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x)))]
    @test_int [csc(e + f*x)^2/sqrt(b*sec(e + f*x)), x, 3, -((b*csc(e + f*x))/(f*(b*sec(e + f*x))^(3/2))) - EllipticE((e + f*x)/2, 2)/(f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x)))]
    @test_int [csc(e + f*x)^4/sqrt(b*sec(e + f*x)), x, 4, -(b*csc(e + f*x))/(2*f*(b*sec(e + f*x))^(3/2)) - (b*csc(e + f*x)^3)/(3*f*(b*sec(e + f*x))^(3/2)) - EllipticE((e + f*x)/2, 2)/(2*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x)))]
    @test_int [csc(e + f*x)^6/sqrt(b*sec(e + f*x)), x, 5, (-7*b*csc(e + f*x))/(20*f*(b*sec(e + f*x))^(3/2)) - (7*b*csc(e + f*x)^3)/(30*f*(b*sec(e + f*x))^(3/2)) - (b*csc(e + f*x)^5)/(5*f*(b*sec(e + f*x))^(3/2)) - (7*EllipticE((e + f*x)/2, 2))/(20*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x)))]


    @test_int [sin(e + f*x)^7/(b*sec(e + f*x))^(3/2), x, 3, (2*b^7)/(17*f*(b*sec(e + f*x))^(17/2)) - (6*b^5)/(13*f*(b*sec(e + f*x))^(13/2)) + (2*b^3)/(3*f*(b*sec(e + f*x))^(9/2)) - (2*b)/(5*f*(b*sec(e + f*x))^(5/2))]
    @test_int [sin(e + f*x)^5/(b*sec(e + f*x))^(3/2), x, 3, (-2*b^5)/(13*f*(b*sec(e + f*x))^(13/2)) + (4*b^3)/(9*f*(b*sec(e + f*x))^(9/2)) - (2*b)/(5*f*(b*sec(e + f*x))^(5/2))]
    @test_int [sin(e + f*x)^3/(b*sec(e + f*x))^(3/2), x, 3, (2*b^3)/(9*f*(b*sec(e + f*x))^(9/2)) - (2*b)/(5*f*(b*sec(e + f*x))^(5/2))]
    @test_int [sin(e + f*x)^1/(b*sec(e + f*x))^(3/2), x, 2, (-2*b)/(5*f*(b*sec(e + f*x))^(5/2))]
    @test_int [csc(e + f*x)^1/(b*sec(e + f*x))^(3/2), x, 6, atan(sqrt(b*sec(e + f*x))/sqrt(b))/(b^(3/2)*f) - atanh(sqrt(b*sec(e + f*x))/sqrt(b))/(b^(3/2)*f) + 2/(b*f*sqrt(b*sec(e + f*x)))]
    @test_int [csc(e + f*x)^3/(b*sec(e + f*x))^(3/2), x, 6, -atan(sqrt(b*sec(e + f*x))/sqrt(b))/(4*b^(3/2)*f) + atanh(sqrt(b*sec(e + f*x))/sqrt(b))/(4*b^(3/2)*f) - (cot(e + f*x)^2*(b*sec(e + f*x))^(3/2))/(2*b^3*f)]
    @test_int [csc(e + f*x)^5/(b*sec(e + f*x))^(3/2), x, 7, (-3*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*b^(3/2)*f) + (3*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*b^(3/2)*f) - (3*cot(e + f*x)^2*(b*sec(e + f*x))^(3/2))/(16*b^3*f) - (cot(e + f*x)^4*(b*sec(e + f*x))^(3/2))/(4*b^3*f)]

    @test_int [sin(e + f*x)^4/(b*sec(e + f*x))^(3/2), x, 5, (8*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(77*b^2*f) - (12*b*sin(e + f*x))/(77*f*(b*sec(e + f*x))^(5/2)) + (8*sin(e + f*x))/(77*b*f*sqrt(b*sec(e + f*x))) - (2*b*sin(e + f*x)^3)/(11*f*(b*sec(e + f*x))^(5/2))]
    @test_int [sin(e + f*x)^2/(b*sec(e + f*x))^(3/2), x, 4, (4*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(21*b^2*f) - (2*b*sin(e + f*x))/(7*f*(b*sec(e + f*x))^(5/2)) + (4*sin(e + f*x))/(21*b*f*sqrt(b*sec(e + f*x)))]
    @test_int [sin(e + f*x)^0/(b*sec(e + f*x))^(3/2), x, 3, (2*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(3*b^2*f) + (2*sin(e + f*x))/(3*b*f*sqrt(b*sec(e + f*x)))]
    @test_int [csc(e + f*x)^2/(b*sec(e + f*x))^(3/2), x, 3, -(csc(e + f*x)/(b*f*sqrt(b*sec(e + f*x)))) - (sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(b^2*f)]
    @test_int [csc(e + f*x)^4/(b*sec(e + f*x))^(3/2), x, 4, csc(e + f*x)/(6*b*f*sqrt(b*sec(e + f*x))) - csc(e + f*x)^3/(3*b*f*sqrt(b*sec(e + f*x))) - (sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(6*b^2*f)]
    @test_int [csc(e + f*x)^6/(b*sec(e + f*x))^(3/2), x, 5, csc(e + f*x)/(12*b*f*sqrt(b*sec(e + f*x))) + csc(e + f*x)^3/(30*b*f*sqrt(b*sec(e + f*x))) - csc(e + f*x)^5/(5*b*f*sqrt(b*sec(e + f*x))) - (sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*sec(e + f*x)))/(12*b^2*f)]


    @test_int [sin(e + f*x)^7/(b*sec(e + f*x))^(5/2), x, 3, (2*b^7)/(19*f*(b*sec(e + f*x))^(19/2)) - (2*b^5)/(5*f*(b*sec(e + f*x))^(15/2)) + (6*b^3)/(11*f*(b*sec(e + f*x))^(11/2)) - (2*b)/(7*f*(b*sec(e + f*x))^(7/2))]
    @test_int [sin(e + f*x)^5/(b*sec(e + f*x))^(5/2), x, 3, (-2*b^5)/(15*f*(b*sec(e + f*x))^(15/2)) + (4*b^3)/(11*f*(b*sec(e + f*x))^(11/2)) - (2*b)/(7*f*(b*sec(e + f*x))^(7/2))]
    @test_int [sin(e + f*x)^3/(b*sec(e + f*x))^(5/2), x, 3, (2*b^3)/(11*f*(b*sec(e + f*x))^(11/2)) - (2*b)/(7*f*(b*sec(e + f*x))^(7/2))]
    @test_int [sin(e + f*x)^1/(b*sec(e + f*x))^(5/2), x, 2, (-2*b)/(7*f*(b*sec(e + f*x))^(7/2))]
    @test_int [csc(e + f*x)^1/(b*sec(e + f*x))^(5/2), x, 6, -(atan(sqrt(b*sec(e + f*x))/sqrt(b))/(b^(5/2)*f)) - atanh(sqrt(b*sec(e + f*x))/sqrt(b))/(b^(5/2)*f) + 2/(3*b*f*(b*sec(e + f*x))^(3/2))]
    @test_int [csc(e + f*x)^3/(b*sec(e + f*x))^(5/2), x, 6, (3*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/(4*b^(5/2)*f) + (3*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/(4*b^(5/2)*f) - (cot(e + f*x)^2*sqrt(b*sec(e + f*x)))/(2*b^3*f)]
    @test_int [csc(e + f*x)^5/(b*sec(e + f*x))^(5/2), x, 7, (3*atan(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*b^(5/2)*f) + (3*atanh(sqrt(b*sec(e + f*x))/sqrt(b)))/(32*b^(5/2)*f) - (cot(e + f*x)^2*sqrt(b*sec(e + f*x)))/(16*b^3*f) - (cot(e + f*x)^4*sqrt(b*sec(e + f*x)))/(4*b^3*f)]

    @test_int [sin(e + f*x)^4/(b*sec(e + f*x))^(5/2), x, 5, (8*EllipticE((e + f*x)/2, 2))/(65*b^2*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) - (4*b*sin(e + f*x))/(39*f*(b*sec(e + f*x))^(7/2)) + (8*sin(e + f*x))/(195*b*f*(b*sec(e + f*x))^(3/2)) - (2*b*sin(e + f*x)^3)/(13*f*(b*sec(e + f*x))^(7/2))]
    @test_int [sin(e + f*x)^2/(b*sec(e + f*x))^(5/2), x, 4, (4*EllipticE((e + f*x)/2, 2))/(15*b^2*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) - (2*b*sin(e + f*x))/(9*f*(b*sec(e + f*x))^(7/2)) + (4*sin(e + f*x))/(45*b*f*(b*sec(e + f*x))^(3/2))]
    @test_int [sin(e + f*x)^0/(b*sec(e + f*x))^(5/2), x, 3, (6*EllipticE((e + f*x)/2, 2))/(5*b^2*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x))) + (2*sin(e + f*x))/(5*b*f*(b*sec(e + f*x))^(3/2))]
    @test_int [csc(e + f*x)^2/(b*sec(e + f*x))^(5/2), x, 3, -(csc(e + f*x)/(b*f*(b*sec(e + f*x))^(3/2))) - (3*EllipticE((e + f*x)/2, 2))/(b^2*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x)))]
    @test_int [csc(e + f*x)^4/(b*sec(e + f*x))^(5/2), x, 4, csc(e + f*x)/(2*b*f*(b*sec(e + f*x))^(3/2)) - csc(e + f*x)^3/(3*b*f*(b*sec(e + f*x))^(3/2)) + EllipticE((e + f*x)/2, 2)/(2*b^2*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x)))]
    @test_int [csc(e + f*x)^6/(b*sec(e + f*x))^(5/2), x, 5, (3*csc(e + f*x))/(20*b*f*(b*sec(e + f*x))^(3/2)) + csc(e + f*x)^3/(10*b*f*(b*sec(e + f*x))^(3/2)) - csc(e + f*x)^5/(5*b*f*(b*sec(e + f*x))^(3/2)) + (3*EllipticE((e + f*x)/2, 2))/(20*b^2*f*sqrt(cos(e + f*x))*sqrt(b*sec(e + f*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/2)*(b*sec(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(9/2), x, 13, -((21*a^(9/2)*atan(1 - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(32*sqrt(2)*sqrt(b)*f)) + (21*a^(9/2)*atan(1 + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(32*sqrt(2)*sqrt(b)*f) + (21*a^(9/2)*sqrt(b*cos(e + f*x))*log(sqrt(a) - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(64*sqrt(2)*sqrt(b)*f) - (21*a^(9/2)*sqrt(b*cos(e + f*x))*log(sqrt(a) + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(64*sqrt(2)*sqrt(b)*f) - (7*a^3*b*(a*sin(e + f*x))^(3/2))/(16*f*sqrt(b*sec(e + f*x))) - (a*b*(a*sin(e + f*x))^(7/2))/(4*f*sqrt(b*sec(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(5/2), x, 12, -((3*a^(5/2)*atan(1 - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(4*sqrt(2)*sqrt(b)*f)) + (3*a^(5/2)*atan(1 + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(4*sqrt(2)*sqrt(b)*f) + (3*a^(5/2)*sqrt(b*cos(e + f*x))*log(sqrt(a) - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(8*sqrt(2)*sqrt(b)*f) - (3*a^(5/2)*sqrt(b*cos(e + f*x))*log(sqrt(a) + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(8*sqrt(2)*sqrt(b)*f) - (a*b*(a*sin(e + f*x))^(3/2))/(2*f*sqrt(b*sec(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(1/2), x, 11, -((sqrt(a)*atan(1 - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(sqrt(2)*sqrt(b)*f)) + (sqrt(a)*atan(1 + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(sqrt(2)*sqrt(b)*f) + (sqrt(a)*sqrt(b*cos(e + f*x))*log(sqrt(a) - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(2*sqrt(2)*sqrt(b)*f) - (sqrt(a)*sqrt(b*cos(e + f*x))*log(sqrt(a) + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(2*sqrt(2)*sqrt(b)*f)]
    @test_int [sqrt(b*sec(e + f*x))/(a*sin(e + f*x))^(3/2), x, 1, -((2*b)/(a*f*sqrt(b*sec(e + f*x))*sqrt(a*sin(e + f*x))))]
    @test_int [sqrt(b*sec(e + f*x))/(a*sin(e + f*x))^(7/2), x, 2, -((2*b)/(5*a*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(5/2))) - (8*b)/(5*a^3*f*sqrt(b*sec(e + f*x))*sqrt(a*sin(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))/(a*sin(e + f*x))^(11/2), x, 3, -((2*b)/(9*a*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(9/2))) - (16*b)/(45*a^3*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(5/2)) - (64*b)/(45*a^5*f*sqrt(b*sec(e + f*x))*sqrt(a*sin(e + f*x)))]

    @test_int [sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(7/2), x, 5, -((5*a^3*b*sqrt(a*sin(e + f*x)))/(6*f*sqrt(b*sec(e + f*x)))) - (a*b*(a*sin(e + f*x))^(5/2))/(3*f*sqrt(b*sec(e + f*x))) + (5*a^4*EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(12*f*sqrt(a*sin(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(3/2), x, 4, -((a*b*sqrt(a*sin(e + f*x)))/(f*sqrt(b*sec(e + f*x)))) + (a^2*EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(2*f*sqrt(a*sin(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))/(a*sin(e + f*x))^(1/2), x, 3, (EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(f*sqrt(a*sin(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))/(a*sin(e + f*x))^(5/2), x, 4, -((2*b)/(3*a*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(3/2))) + (2*EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(3*a^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [sqrt(b*sec(e + f*x))/(a*sin(e + f*x))^(9/2), x, 5, -((2*b)/(7*a*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(7/2))) - (4*b)/(7*a^3*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(3/2)) + (4*EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(7*a^4*f*sqrt(a*sin(e + f*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sin(e + f*x)^(9/2)/sqrt(b*sec(e + f*x)), x, 5, -((7*b*sin(e + f*x)^(3/2))/(30*f*(b*sec(e + f*x))^(3/2))) - (b*sin(e + f*x)^(7/2))/(5*f*(b*sec(e + f*x))^(3/2)) + (7*b*EllipticE(e - pi/4 + f*x, 2)*sqrt(sin(e + f*x)))/(20*b*f*(b*sec(e + f*x))^(1/2)*sqrt(sin(2*e + 2*f*x)))]
    @test_int [sin(e + f*x)^(5/2)/sqrt(b*sec(e + f*x)), x, 4, -((b*sin(e + f*x)^(3/2))/(3*f*(b*sec(e + f*x))^(3/2))) + (EllipticE(e - pi/4 + f*x, 2)*sqrt(sin(e + f*x)))/(2*f*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))]
    @test_int [sin(e + f*x)^(1/2)/sqrt(b*sec(e + f*x)), x, 3, (EllipticE(e - pi/4 + f*x, 2)*sqrt(sin(e + f*x)))/(f*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))]
    @test_int [1/(sin(e + f*x)^(3/2)*sqrt(b*sec(e + f*x))), x, 4, -((2*b)/(f*(b*sec(e + f*x))^(3/2)*sqrt(sin(e + f*x)))) - (2*EllipticE(e - pi/4 + f*x, 2)*sqrt(sin(e + f*x)))/(f*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))]
    @test_int [1/(sin(e + f*x)^(7/2)*sqrt(b*sec(e + f*x))), x, 5, -((2*b)/(5*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(5/2))) - (4*b)/(5*f*(b*sec(e + f*x))^(3/2)*sqrt(sin(e + f*x))) - (4*EllipticE(e - pi/4 + f*x, 2)*sqrt(sin(e + f*x)))/(5*f*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))]

    @test_int [sin(e + f*x)^(3/2)/sqrt(b*sec(e + f*x)), x, 12, (sqrt(b)*atan(1 - (sqrt(2)*sqrt(b*cos(e + f*x)))/(sqrt(b)*sqrt(sin(e + f*x)))))/(4*sqrt(2)*f*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x))) - (sqrt(b)*atan(1 + (sqrt(2)*sqrt(b*cos(e + f*x)))/(sqrt(b)*sqrt(sin(e + f*x)))))/(4*sqrt(2)*f*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x))) - (sqrt(b)*log(sqrt(b) + sqrt(b)*cot(e + f*x) - (sqrt(2)*sqrt(b*cos(e + f*x)))/sqrt(sin(e + f*x))))/(8*sqrt(2)*f*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x))) + (sqrt(b)*log(sqrt(b) + sqrt(b)*cot(e + f*x) + (sqrt(2)*sqrt(b*cos(e + f*x)))/sqrt(sin(e + f*x))))/(8*sqrt(2)*f*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x))) - (b*sqrt(sin(e + f*x)))/(2*f*(b*sec(e + f*x))^(3/2))]
    @test_int [1/(sin(e + f*x)^(1/2)*sqrt(b*sec(e + f*x))), x, 11, (sqrt(b)*atan(1 - (sqrt(2)*sqrt(b*cos(e + f*x)))/(sqrt(b)*sqrt(sin(e + f*x)))))/(sqrt(2)*f*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x))) - (sqrt(b)*atan(1 + (sqrt(2)*sqrt(b*cos(e + f*x)))/(sqrt(b)*sqrt(sin(e + f*x)))))/(sqrt(2)*f*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x))) - (sqrt(b)*log(sqrt(b) + sqrt(b)*cot(e + f*x) - (sqrt(2)*sqrt(b*cos(e + f*x)))/sqrt(sin(e + f*x))))/(2*sqrt(2)*f*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x))) + (sqrt(b)*log(sqrt(b) + sqrt(b)*cot(e + f*x) + (sqrt(2)*sqrt(b*cos(e + f*x)))/sqrt(sin(e + f*x))))/(2*sqrt(2)*f*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))]
    @test_int [1/(sin(e + f*x)^(5/2)*sqrt(b*sec(e + f*x))), x, 1, -((2*b)/(3*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(3/2)))]
    @test_int [1/(sin(e + f*x)^(9/2)*sqrt(b*sec(e + f*x))), x, 2, -((2*b)/(7*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(7/2))) - (8*b)/(21*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(3/2))]
    @test_int [1/(sin(e + f*x)^(13/2)*sqrt(b*sec(e + f*x))), x, 3, -((2*b)/(11*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(11/2))) - (16*b)/(77*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(7/2)) - (64*b)/(231*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(3/2))]
    @test_int [1/(sin(e + f*x)^(17/2)*sqrt(b*sec(e + f*x))), x, 4, -((2*b)/(15*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(15/2))) - (8*b)/(55*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(11/2)) - (64*b)/(385*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(7/2)) - (256*b)/(1155*f*(b*sec(e + f*x))^(3/2)*sin(e + f*x)^(3/2))]


    @test_int [(a*sin(e + f*x))^(9/2)/(b*sec(e + f*x))^(3/2), x, 14, -((7*a^(9/2)*atan(1 - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(128*sqrt(2)*b^(5/2)*f)) + (7*a^(9/2)*atan(1 + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(128*sqrt(2)*b^(5/2)*f) + (7*a^(9/2)*sqrt(b*cos(e + f*x))*log(sqrt(a) - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(256*sqrt(2)*b^(5/2)*f) - (7*a^(9/2)*sqrt(b*cos(e + f*x))*log(sqrt(a) + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(256*sqrt(2)*b^(5/2)*f) - (7*a^3*(a*sin(e + f*x))^(3/2))/(192*b*f*sqrt(b*sec(e + f*x))) - (a*(a*sin(e + f*x))^(7/2))/(48*b*f*sqrt(b*sec(e + f*x))) + (a*sin(e + f*x))^(11/2)/(6*a*b*f*sqrt(b*sec(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(5/2)/(b*sec(e + f*x))^(3/2), x, 13, -((3*a^(5/2)*atan(1 - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(32*sqrt(2)*b^(5/2)*f)) + (3*a^(5/2)*atan(1 + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(32*sqrt(2)*b^(5/2)*f) + (3*a^(5/2)*sqrt(b*cos(e + f*x))*log(sqrt(a) - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(64*sqrt(2)*b^(5/2)*f) - (3*a^(5/2)*sqrt(b*cos(e + f*x))*log(sqrt(a) + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(64*sqrt(2)*b^(5/2)*f) - (a*(a*sin(e + f*x))^(3/2))/(16*b*f*sqrt(b*sec(e + f*x))) + (a*sin(e + f*x))^(7/2)/(4*a*b*f*sqrt(b*sec(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(1/2)/(b*sec(e + f*x))^(3/2), x, 12, -((sqrt(a)*atan(1 - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(4*sqrt(2)*b^(5/2)*f)) + (sqrt(a)*atan(1 + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(4*sqrt(2)*b^(5/2)*f) + (sqrt(a)*sqrt(b*cos(e + f*x))*log(sqrt(a) - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(8*sqrt(2)*b^(5/2)*f) - (sqrt(a)*sqrt(b*cos(e + f*x))*log(sqrt(a) + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(8*sqrt(2)*b^(5/2)*f) + (a*sin(e + f*x))^(3/2)/(2*a*b*f*sqrt(b*sec(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(3/2)*(b*sec(e + f*x))^(3/2)), x, 12, (atan(1 - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(sqrt(2)*a^(3/2)*b^(5/2)*f) - (atan(1 + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/(sqrt(a)*sqrt(b*cos(e + f*x))))*sqrt(b*cos(e + f*x))*sqrt(b*sec(e + f*x)))/(sqrt(2)*a^(3/2)*b^(5/2)*f) - (sqrt(b*cos(e + f*x))*log(sqrt(a) - (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(2*sqrt(2)*a^(3/2)*b^(5/2)*f) + (sqrt(b*cos(e + f*x))*log(sqrt(a) + (sqrt(2)*sqrt(b)*sqrt(a*sin(e + f*x)))/sqrt(b*cos(e + f*x)) + sqrt(a)*tan(e + f*x))*sqrt(b*sec(e + f*x)))/(2*sqrt(2)*a^(3/2)*b^(5/2)*f) - 2/(a*b*f*sqrt(b*sec(e + f*x))*sqrt(a*sin(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(7/2)*(b*sec(e + f*x))^(3/2)), x, 1, -((2*b)/(5*a*f*(b*sec(e + f*x))^(5/2)*(a*sin(e + f*x))^(5/2)))]

    @test_int [(a*sin(e + f*x))^(7/2)/(b*sec(e + f*x))^(3/2), x, 6, -((a^3*sqrt(a*sin(e + f*x)))/(12*b*f*sqrt(b*sec(e + f*x)))) - (a*(a*sin(e + f*x))^(5/2))/(30*b*f*sqrt(b*sec(e + f*x))) + (a*sin(e + f*x))^(9/2)/(5*a*b*f*sqrt(b*sec(e + f*x))) + (a^4*EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(24*b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(3/2)/(b*sec(e + f*x))^(3/2), x, 5, -((a*sqrt(a*sin(e + f*x)))/(6*b*f*sqrt(b*sec(e + f*x)))) + (a*sin(e + f*x))^(5/2)/(3*a*b*f*sqrt(b*sec(e + f*x))) + (a^2*EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(12*b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(1/2)*(b*sec(e + f*x))^(3/2)), x, 4, sqrt(a*sin(e + f*x))/(a*b*f*sqrt(b*sec(e + f*x))) + (EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(2*b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(5/2)*(b*sec(e + f*x))^(3/2)), x, 4, -(2/(3*a*b*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(3/2))) - (EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(3*a^2*b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(9/2)*(b*sec(e + f*x))^(3/2)), x, 5, -(2/(7*a*b*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(7/2))) + 2/(21*a^3*b*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(3/2)) - (2*EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(21*a^4*b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(13/2)*(b*sec(e + f*x))^(3/2)), x, 6, -(2/(11*a*b*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(11/2))) + 2/(77*a^3*b*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(7/2)) + 4/(77*a^5*b*f*sqrt(b*sec(e + f*x))*(a*sin(e + f*x))^(3/2)) - (4*EllipticF(e - pi/4 + f*x, 2)*sqrt(b*sec(e + f*x))*sqrt(sin(2*e + 2*f*x)))/(77*a^6*b^2*f*sqrt(a*sin(e + f*x)))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/3)*(b*sec(e+f*x))^(n/3)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*sec(e+f*x))^n*with*m*symbolic=#


    @test_int [(c*sin(a + b*x))^m*(d*sec(a + b*x))^(5/2), x, 2, (d*(cos(a + b*x)^2)^(3/4)*Hypergeometric2F1(7/4, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(d*sec(a + b*x))^(3/2)*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m))]
    @test_int [(c*sin(a + b*x))^m*(d*sec(a + b*x))^(3/2), x, 2, (d*(cos(a + b*x)^2)^(1/4)*Hypergeometric2F1(5/4, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*sqrt(d*sec(a + b*x))*(c*sin(a + b*x))^(1 + m))/(b*c*(1 + m))]
    @test_int [(c*sin(a + b*x))^m*(d*sec(a + b*x))^(1/2), x, 2, ((cos(a + b*x)^2)^(3/4)*Hypergeometric2F1(3/4, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(d*sec(a + b*x))^(3/2)*(c*sin(a + b*x))^(1 + m))/(b*c*d*(1 + m))]
    @test_int [(c*sin(a + b*x))^m/(d*sec(a + b*x))^(1/2), x, 2, ((cos(a + b*x)^2)^(1/4)*Hypergeometric2F1(1/4, (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*sqrt(d*sec(a + b*x))*(c*sin(a + b*x))^(1 + m))/(b*c*d*(1 + m))]
    @test_int [(c*sin(a + b*x))^m/(d*sec(a + b*x))^(3/2), x, 2, (Hypergeometric2F1(-(1/4), (1 + m)/2, (3 + m)/2, sin(a + b*x)^2)*(c*sin(a + b*x))^(1 + m))/(b*c*d*(1 + m)*(cos(a + b*x)^2)^(1/4)*sqrt(d*sec(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*sec(e+f*x))^n*with*n*symbolic=#


    @test_int [(sin(e + f*x))^m*(sec(e + f*x))^n, x, 2, -((Hypergeometric2F1((1 - m)/2, (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*sec(e + f*x)^(-1 + n)*sin(e + f*x)^(-1 + m)*(sin(e + f*x)^2)^((1 - m)/2))/(f*(1 - n)))]
    @test_int [(a*sin(e + f*x))^m*(sec(e + f*x))^n, x, 2, -((a*Hypergeometric2F1((1 - m)/2, (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*sec(e + f*x)^(-1 + n)*(a*sin(e + f*x))^(-1 + m)*(sin(e + f*x)^2)^((1 - m)/2))/(f*(1 - n)))]
    @test_int [(sin(e + f*x))^m*(b*sec(e + f*x))^n, x, 2, -((b*Hypergeometric2F1((1 - m)/2, (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*sec(e + f*x))^(-1 + n)*sin(e + f*x)^(-1 + m)*(sin(e + f*x)^2)^((1 - m)/2))/(f*(1 - n)))]
    @test_int [(a*sin(e + f*x))^m*(b*sec(e + f*x))^n, x, 2, -((a*b*Hypergeometric2F1((1 - m)/2, (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*sec(e + f*x))^(-1 + n)*(a*sin(e + f*x))^(-1 + m)*(sin(e + f*x)^2)^((1 - m)/2))/(f*(1 - n)))]


    @test_int [(b*sec(e + f*x))^n*sin(e + f*x)^5, x, 3, -((b^5*(b*sec(e + f*x))^(-5 + n))/(f*(5 - n))) + (2*b^3*(b*sec(e + f*x))^(-3 + n))/(f*(3 - n)) - (b*(b*sec(e + f*x))^(-1 + n))/(f*(1 - n))]
    @test_int [(b*sec(e + f*x))^n*sin(e + f*x)^3, x, 3, (b^3*(b*sec(e + f*x))^(-3 + n))/(f*(3 - n)) - (b*(b*sec(e + f*x))^(-1 + n))/(f*(1 - n))]
    @test_int [(b*sec(e + f*x))^n*sin(e + f*x)^1, x, 2, -((b*(b*sec(e + f*x))^(-1 + n))/(f*(1 - n)))]
    @test_int [(b*sec(e + f*x))^n*csc(e + f*x)^1, x, 2, -((Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, sec(e + f*x)^2)*(b*sec(e + f*x))^(1 + n))/(f*b*(1 + n)))]
    @test_int [(b*sec(e + f*x))^n*csc(e + f*x)^3, x, 2, (Hypergeometric2F1(2, (3 + n)/2, (5 + n)/2, sec(e + f*x)^2)*(b*sec(e + f*x))^(3 + n))/(f*b^3*(3 + n))]

    @test_int [(b*sec(e + f*x))^n*sin(e + f*x)^6, x, 2, -((b*Hypergeometric2F1(-(5/2), (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*sec(e + f*x))^(-1 + n)*sin(e + f*x))/(f*(1 - n)*sqrt(sin(e + f*x)^2)))]
    @test_int [(b*sec(e + f*x))^n*sin(e + f*x)^4, x, 2, -((b*Hypergeometric2F1(-(3/2), (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*sec(e + f*x))^(-1 + n)*sin(e + f*x))/(f*(1 - n)*sqrt(sin(e + f*x)^2)))]
    @test_int [(b*sec(e + f*x))^n*sin(e + f*x)^2, x, 2, -((b*Hypergeometric2F1(-(1/2), (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*sec(e + f*x))^(-1 + n)*sin(e + f*x))/(f*(1 - n)*sqrt(sin(e + f*x)^2)))]
    @test_int [(b*sec(e + f*x))^n*sin(e + f*x)^0, x, 2, -((b*Hypergeometric2F1(1/2, (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*sec(e + f*x))^(-1 + n)*sin(e + f*x))/(f*(1 - n)*sqrt(sin(e + f*x)^2)))]
    @test_int [(b*sec(e + f*x))^n*csc(e + f*x)^2, x, 2, -((b*csc(e + f*x)*Hypergeometric2F1(3/2, (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*sec(e + f*x))^(-1 + n)*sqrt(sin(e + f*x)^2))/(f*(1 - n)))]
    @test_int [(b*sec(e + f*x))^n*csc(e + f*x)^4, x, 2, -((b*csc(e + f*x)*Hypergeometric2F1(5/2, (1 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*sec(e + f*x))^(-1 + n)*sqrt(sin(e + f*x)^2))/(f*(1 - n)))]


    @test_int [(b*sec(a + b*x))^n*(c*sin(a + b*x))^(3/2), x, 2, -((c*Hypergeometric2F1(-(1/4), (1 - n)/2, (3 - n)/2, cos(a + b*x)^2)*(b*sec(a + b*x))^(-1 + n)*sqrt(c*sin(a + b*x)))/((1 - n)*(sin(a + b*x)^2)^(1/4)))]
    @test_int [(b*sec(a + b*x))^n*(c*sin(a + b*x))^(1/2), x, 2, -((c*Hypergeometric2F1(1/4, (1 - n)/2, (3 - n)/2, cos(a + b*x)^2)*(b*sec(a + b*x))^(-1 + n)*(sin(a + b*x)^2)^(1/4))/((1 - n)*sqrt(c*sin(a + b*x))))]
    @test_int [(b*sec(a + b*x))^n/(c*sin(a + b*x))^(1/2), x, 2, -((c*Hypergeometric2F1(3/4, (1 - n)/2, (3 - n)/2, cos(a + b*x)^2)*(b*sec(a + b*x))^(-1 + n)*(sin(a + b*x)^2)^(3/4))/((1 - n)*(c*sin(a + b*x))^(3/2)))]
    @test_int [(b*sec(a + b*x))^n/(c*sin(a + b*x))^(3/2), x, 2, -((Hypergeometric2F1(5/4, (1 - n)/2, (3 - n)/2, cos(a + b*x)^2)*(b*sec(a + b*x))^(-1 + n)*(sin(a + b*x)^2)^(1/4))/(c*(1 - n)*sqrt(c*sin(a + b*x))))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*csc(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(b*csc(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sqrt(d*csc(e + f*x))*sin(e + f*x)^4, x, 5, -((2*d^3*cos(e + f*x))/(7*f*(d*csc(e + f*x))^(5/2))) - (10*d*cos(e + f*x))/(21*f*sqrt(d*csc(e + f*x))) + (10*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(21*f)]
    @test_int [sqrt(d*csc(e + f*x))*sin(e + f*x)^3, x, 4, -((2*d^2*cos(e + f*x))/(5*f*(d*csc(e + f*x))^(3/2))) + (6*d*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(5*f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [sqrt(d*csc(e + f*x))*sin(e + f*x)^2, x, 4, -((2*d*cos(e + f*x))/(3*f*sqrt(d*csc(e + f*x)))) + (2*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(3*f)]
    @test_int [sqrt(d*csc(e + f*x))*sin(e + f*x)^1, x, 3, (2*d*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [sqrt(d*csc(e + f*x))*sin(e + f*x)^0, x, 2, (2*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/f]
    @test_int [csc(e + f*x)^1*sqrt(d*csc(e + f*x)), x, 4, -((2*cos(e + f*x)*sqrt(d*csc(e + f*x)))/f) - (2*d*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [csc(e + f*x)^2*sqrt(d*csc(e + f*x)), x, 4, -((2*cos(e + f*x)*(d*csc(e + f*x))^(3/2))/(3*d*f)) + (2*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(3*f)]
    @test_int [csc(e + f*x)^3*sqrt(d*csc(e + f*x)), x, 5, -((6*cos(e + f*x)*sqrt(d*csc(e + f*x)))/(5*f)) - (2*cos(e + f*x)*(d*csc(e + f*x))^(5/2))/(5*d^2*f) - (6*d*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(5*f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]


    @test_int [(d*csc(e + f*x))^(3/2)*sin(e + f*x)^5, x, 5, -((2*d^4*cos(e + f*x))/(7*f*(d*csc(e + f*x))^(5/2))) - (10*d^2*cos(e + f*x))/(21*f*sqrt(d*csc(e + f*x))) + (10*d*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(21*f)]
    @test_int [(d*csc(e + f*x))^(3/2)*sin(e + f*x)^4, x, 4, -((2*d^3*cos(e + f*x))/(5*f*(d*csc(e + f*x))^(3/2))) + (6*d^2*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(5*f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [(d*csc(e + f*x))^(3/2)*sin(e + f*x)^3, x, 4, -((2*d^2*cos(e + f*x))/(3*f*sqrt(d*csc(e + f*x)))) + (2*d*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(3*f)]
    @test_int [(d*csc(e + f*x))^(3/2)*sin(e + f*x)^2, x, 3, (2*d^2*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [(d*csc(e + f*x))^(3/2)*sin(e + f*x)^1, x, 3, (2*d*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/f]
    @test_int [(d*csc(e + f*x))^(3/2)*sin(e + f*x)^0, x, 3, -((2*d*cos(e + f*x)*sqrt(d*csc(e + f*x)))/f) - (2*d^2*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [csc(e + f*x)^1*(d*csc(e + f*x))^(3/2), x, 4, -((2*cos(e + f*x)*(d*csc(e + f*x))^(3/2))/(3*f)) + (2*d*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(3*f)]
    @test_int [csc(e + f*x)^2*(d*csc(e + f*x))^(3/2), x, 5, -((6*d*cos(e + f*x)*sqrt(d*csc(e + f*x)))/(5*f)) - (2*cos(e + f*x)*(d*csc(e + f*x))^(5/2))/(5*d*f) - (6*d^2*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(5*f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sin(e + f*x)^3/sqrt(d*csc(e + f*x)), x, 5, -((2*d^2*cos(e + f*x))/(7*f*(d*csc(e + f*x))^(5/2))) - (10*cos(e + f*x))/(21*f*sqrt(d*csc(e + f*x))) + (10*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(21*d*f)]
    @test_int [sin(e + f*x)^2/sqrt(d*csc(e + f*x)), x, 4, -((2*d*cos(e + f*x))/(5*f*(d*csc(e + f*x))^(3/2))) + (6*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(5*f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [sin(e + f*x)^1/sqrt(d*csc(e + f*x)), x, 4, -((2*cos(e + f*x))/(3*f*sqrt(d*csc(e + f*x)))) + (2*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(3*d*f)]
    @test_int [sin(e + f*x)^0/sqrt(d*csc(e + f*x)), x, 2, (2*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [csc(e + f*x)^1/sqrt(d*csc(e + f*x)), x, 3, (2*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(d*f)]
    @test_int [csc(e + f*x)^2/sqrt(d*csc(e + f*x)), x, 4, -((2*cos(e + f*x)*sqrt(d*csc(e + f*x)))/(d*f)) - (2*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [csc(e + f*x)^3/sqrt(d*csc(e + f*x)), x, 4, -((2*cos(e + f*x)*(d*csc(e + f*x))^(3/2))/(3*d^2*f)) + (2*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(3*d*f)]


    @test_int [sin(e + f*x)^2/(d*csc(e + f*x))^(3/2), x, 5, -((2*d*cos(e + f*x))/(7*f*(d*csc(e + f*x))^(5/2))) - (10*cos(e + f*x))/(21*d*f*sqrt(d*csc(e + f*x))) + (10*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(21*d^2*f)]
    @test_int [sin(e + f*x)^1/(d*csc(e + f*x))^(3/2), x, 4, -((2*cos(e + f*x))/(5*f*(d*csc(e + f*x))^(3/2))) + (6*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(5*d*f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [sin(e + f*x)^0/(d*csc(e + f*x))^(3/2), x, 3, -((2*cos(e + f*x))/(3*d*f*sqrt(d*csc(e + f*x)))) + (2*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(3*d^2*f)]
    @test_int [csc(e + f*x)^1/(d*csc(e + f*x))^(3/2), x, 3, (2*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(d*f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [csc(e + f*x)^2/(d*csc(e + f*x))^(3/2), x, 3, (2*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(d^2*f)]
    @test_int [csc(e + f*x)^3/(d*csc(e + f*x))^(3/2), x, 4, -((2*cos(e + f*x)*sqrt(d*csc(e + f*x)))/(d^2*f)) - (2*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(d*f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [csc(e + f*x)^4/(d*csc(e + f*x))^(3/2), x, 4, -((2*cos(e + f*x)*(d*csc(e + f*x))^(3/2))/(3*d^3*f)) + (2*sqrt(d*csc(e + f*x))*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(sin(e + f*x)))/(3*d^2*f)]
    @test_int [csc(e + f*x)^5/(d*csc(e + f*x))^(3/2), x, 5, -((6*cos(e + f*x)*sqrt(d*csc(e + f*x)))/(5*d^2*f)) - (2*cos(e + f*x)*(d*csc(e + f*x))^(5/2))/(5*d^4*f) - (6*EllipticE((1/2)*(e - pi/2 + f*x), 2))/(5*d*f*sqrt(d*csc(e + f*x))*sqrt(sin(e + f*x)))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/2)*(b*csc(e+f*x))^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*csc(e+f*x))^n*with*m*and*n*symbolic=#


    @test_int [(a*sin(e + f*x))^m*(b*csc(e + f*x))^n, x, 2, (cos(e + f*x)*(b*csc(e + f*x))^n*Hypergeometric2F1(1/2, (1/2)*(1 + m - n), (1/2)*(3 + m - n), sin(e + f*x)^2)*(a*sin(e + f*x))^(1 + m))/(a*f*(1 + m - n)*sqrt(cos(e + f*x)^2))]
    end
