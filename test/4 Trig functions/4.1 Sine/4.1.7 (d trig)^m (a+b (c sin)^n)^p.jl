@testset "4.1.7 (d trig)^m (a+b (c sin)^n)^p" begin
    @variables a, b, c, d, e, f, g, m, n, p, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(b*sin(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*sin(e+f*x)^n)^(p/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sin(e+f*x)^2)^(p/2)=#


    @test_int [(a*sin(x)^2)^(5/2), x, 4, (-(8/15))*a^2*cot(x)*sqrt(a*sin(x)^2) - (4/15)*a*cot(x)*(a*sin(x)^2)^(3/2) - (1/5)*cot(x)*(a*sin(x)^2)^(5/2)]
    @test_int [(a*sin(x)^2)^(3/2), x, 3, (-(2/3))*a*cot(x)*sqrt(a*sin(x)^2) - (1/3)*cot(x)*(a*sin(x)^2)^(3/2)]
    @test_int [(a*sin(x)^2)^(1/2), x, 2, (-cot(x))*sqrt(a*sin(x)^2)]
    @test_int [1/(a*sin(x)^2)^(1/2), x, 2, -((atanh(cos(x))*sin(x))/sqrt(a*sin(x)^2))]
    @test_int [1/(a*sin(x)^2)^(3/2), x, 3, -(cot(x)/(2*a*sqrt(a*sin(x)^2))) - (atanh(cos(x))*sin(x))/(2*a*sqrt(a*sin(x)^2))]
    @test_int [1/(a*sin(x)^2)^(5/2), x, 4, -(cot(x)/(4*a*(a*sin(x)^2)^(3/2))) - (3*cot(x))/(8*a^2*sqrt(a*sin(x)^2)) - (3*atanh(cos(x))*sin(x))/(8*a^2*sqrt(a*sin(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sin(e+f*x)^3)^(p/2)=#


    @test_int [(a*sin(x)^3)^(5/2), x, 6, (-(26/77))*a^2*cot(x)*sqrt(a*sin(x)^3) - (26*a^2*EllipticF(pi/4 - x/2, 2)*sqrt(a*sin(x)^3))/(77*sin(x)^(3/2)) - (78/385)*a^2*cos(x)*sin(x)*sqrt(a*sin(x)^3) - (26/165)*a^2*cos(x)*sin(x)^3*sqrt(a*sin(x)^3) - (2/15)*a^2*cos(x)*sin(x)^5*sqrt(a*sin(x)^3)]
    @test_int [(a*sin(x)^3)^(3/2), x, 4, (-(14/45))*a*cos(x)*sqrt(a*sin(x)^3) - (14*a*EllipticE(pi/4 - x/2, 2)*sqrt(a*sin(x)^3))/(15*sin(x)^(3/2)) - (2/9)*a*cos(x)*sin(x)^2*sqrt(a*sin(x)^3)]
    @test_int [(a*sin(x)^3)^(1/2), x, 3, (-(2/3))*cot(x)*sqrt(a*sin(x)^3) - (2*EllipticF(pi/4 - x/2, 2)*sqrt(a*sin(x)^3))/(3*sin(x)^(3/2))]
    @test_int [1/(a*sin(x)^3)^(1/2), x, 3, -((2*cos(x)*sin(x))/sqrt(a*sin(x)^3)) + (2*EllipticE(pi/4 - x/2, 2)*sin(x)^(3/2))/sqrt(a*sin(x)^3)]
    @test_int [1/(a*sin(x)^3)^(3/2), x, 4, -((10*cos(x))/(21*a*sqrt(a*sin(x)^3))) - (2*cot(x)*csc(x))/(7*a*sqrt(a*sin(x)^3)) - (10*EllipticF(pi/4 - x/2, 2)*sin(x)^(3/2))/(21*a*sqrt(a*sin(x)^3))]
    @test_int [1/(a*sin(x)^3)^(5/2), x, 6, -((154*cot(x))/(585*a^2*sqrt(a*sin(x)^3))) - (22*cot(x)*csc(x)^2)/(117*a^2*sqrt(a*sin(x)^3)) - (2*cot(x)*csc(x)^4)/(13*a^2*sqrt(a*sin(x)^3)) - (154*cos(x)*sin(x))/(195*a^2*sqrt(a*sin(x)^3)) + (154*EllipticE(pi/4 - x/2, 2)*sin(x)^(3/2))/(195*a^2*sqrt(a*sin(x)^3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sin(e+f*x)^4)^(p/2)=#


    @test_int [(a*sin(x)^4)^(5/2), x, 7, (-(63/256))*a^2*cot(x)*sqrt(a*sin(x)^4) + (63/256)*a^2*x*csc(x)^2*sqrt(a*sin(x)^4) - (21/128)*a^2*cos(x)*sin(x)*sqrt(a*sin(x)^4) - (21/160)*a^2*cos(x)*sin(x)^3*sqrt(a*sin(x)^4) - (9/80)*a^2*cos(x)*sin(x)^5*sqrt(a*sin(x)^4) - (1/10)*a^2*cos(x)*sin(x)^7*sqrt(a*sin(x)^4)]
    @test_int [(a*sin(x)^4)^(3/2), x, 5, (-(5/16))*a*cot(x)*sqrt(a*sin(x)^4) + (5/16)*a*x*csc(x)^2*sqrt(a*sin(x)^4) - (5/24)*a*cos(x)*sin(x)*sqrt(a*sin(x)^4) - (1/6)*a*cos(x)*sin(x)^3*sqrt(a*sin(x)^4)]
    @test_int [(a*sin(x)^4)^(1/2), x, 3, (-(1/2))*cot(x)*sqrt(a*sin(x)^4) + (1/2)*x*csc(x)^2*sqrt(a*sin(x)^4)]
    @test_int [1/(a*sin(x)^4)^(1/2), x, 3, -((cos(x)*sin(x))/sqrt(a*sin(x)^4))]
    @test_int [1/(a*sin(x)^4)^(3/2), x, 3, -((2*cos(x)^2*cot(x))/(3*a*sqrt(a*sin(x)^4))) - (cos(x)^2*cot(x)^3)/(5*a*sqrt(a*sin(x)^4)) - (cos(x)*sin(x))/(a*sqrt(a*sin(x)^4))]
    @test_int [1/(a*sin(x)^4)^(5/2), x, 3, -((4*cos(x)^2*cot(x))/(3*a^2*sqrt(a*sin(x)^4))) - (6*cos(x)^2*cot(x)^3)/(5*a^2*sqrt(a*sin(x)^4)) - (4*cos(x)^2*cot(x)^5)/(7*a^2*sqrt(a*sin(x)^4)) - (cos(x)^2*cot(x)^7)/(9*a^2*sqrt(a*sin(x)^4)) - (cos(x)*sin(x))/(a^2*sqrt(a*sin(x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*sin(e+f*x)^n)^(p/2)=#


    @test_int [(c*sin(a + b*x)^m)^(5/2), x, 2, (2*c^2*cos(a + b*x)*Hypergeometric2F1(1/2, (1/4)*(2 + 5*m), (1/4)*(6 + 5*m), sin(a + b*x)^2)*sin(a + b*x)^(1 + 2*m)*sqrt(c*sin(a + b*x)^m))/(b*(2 + 5*m)*sqrt(cos(a + b*x)^2))]
    @test_int [(c*sin(a + b*x)^m)^(3/2), x, 2, (2*c*cos(a + b*x)*Hypergeometric2F1(1/2, (1/4)*(2 + 3*m), (3*(2 + m))/4, sin(a + b*x)^2)*sin(a + b*x)^(1 + m)*sqrt(c*sin(a + b*x)^m))/(b*(2 + 3*m)*sqrt(cos(a + b*x)^2))]
    @test_int [(c*sin(a + b*x)^m)^(1/2), x, 2, (2*cos(a + b*x)*Hypergeometric2F1(1/2, (2 + m)/4, (6 + m)/4, sin(a + b*x)^2)*sin(a + b*x)*sqrt(c*sin(a + b*x)^m))/(b*(2 + m)*sqrt(cos(a + b*x)^2))]
    @test_int [1/(c*sin(a + b*x)^m)^(1/2), x, 2, (2*cos(a + b*x)*Hypergeometric2F1(1/2, (2 - m)/4, (6 - m)/4, sin(a + b*x)^2)*sin(a + b*x))/(b*(2 - m)*sqrt(cos(a + b*x)^2)*sqrt(c*sin(a + b*x)^m))]
    @test_int [1/(c*sin(a + b*x)^m)^(3/2), x, 2, (2*cos(a + b*x)*Hypergeometric2F1(1/2, (1/4)*(2 - 3*m), (3*(2 - m))/4, sin(a + b*x)^2)*sin(a + b*x)^(1 - m))/(b*c*(2 - 3*m)*sqrt(cos(a + b*x)^2)*sqrt(c*sin(a + b*x)^m))]
    @test_int [1/(c*sin(a + b*x)^m)^(5/2), x, 2, (2*cos(a + b*x)*Hypergeometric2F1(1/2, (1/4)*(2 - 5*m), (1/4)*(6 - 5*m), sin(a + b*x)^2)*sin(a + b*x)^(1 - 2*m))/(b*c^2*(2 - 5*m)*sqrt(cos(a + b*x)^2)*sqrt(c*sin(a + b*x)^m))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*sin(e+f*x)^n)^p*with*p*symbolic=#


    @test_int [(b*sin(c + d*x)^n)^p, x, 2, (cos(c + d*x)*Hypergeometric2F1(1/2, (1/2)*(1 + n*p), (1/2)*(3 + n*p), sin(c + d*x)^2)*sin(c + d*x)*(b*sin(c + d*x)^n)^p)/(d*(1 + n*p)*sqrt(cos(c + d*x)^2))]


    @test_int [(c*sin(a + b*x)^2)^p, x, 2, (cos(a + b*x)*Hypergeometric2F1(1/2, (1/2)*(1 + 2*p), (1/2)*(3 + 2*p), sin(a + b*x)^2)*sin(a + b*x)*(c*sin(a + b*x)^2)^p)/(b*(1 + 2*p)*sqrt(cos(a + b*x)^2))]
    @test_int [(c*sin(a + b*x)^3)^p, x, 2, (cos(a + b*x)*Hypergeometric2F1(1/2, (1/2)*(1 + 3*p), (3*(1 + p))/2, sin(a + b*x)^2)*sin(a + b*x)*(c*sin(a + b*x)^3)^p)/(b*(1 + 3*p)*sqrt(cos(a + b*x)^2))]
    @test_int [(c*sin(a + b*x)^4)^p, x, 2, (cos(a + b*x)*Hypergeometric2F1(1/2, (1/2)*(1 + 4*p), (1/2)*(3 + 4*p), sin(a + b*x)^2)*sin(a + b*x)*(c*sin(a + b*x)^4)^p)/(b*(1 + 4*p)*sqrt(cos(a + b*x)^2))]


    @test_int [(c*sin(a + b*x)^n)^(1/n), x, 2, -((cot(a + b*x)*(c*sin(a + b*x)^n)^(1/n))/b)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*(b*sin(e+f*x))^n)^p*with*n*symbolic=#


    @test_int [(a*(b*sin(c + d*x))^p)^n, x, 2, (cos(c + d*x)*Hypergeometric2F1(1/2, (1/2)*(1 + n*p), (1/2)*(3 + n*p), sin(c + d*x)^2)*sin(c + d*x)*(a*(b*sin(c + d*x))^p)^n)/(d*(1 + n*p)*sqrt(cos(c + d*x)^2))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*sin(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*sin(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sin(e+f*x)^2)^p*when*a+b=0=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(a - a*sin(x)^2)^1, x, 3, (a*x)/2 + (1/2)*a*cos(x)*sin(x)]
    @test_int [(a - a*sin(x)^2)^2, x, 4, (3*a^2*x)/8 + (3/8)*a^2*cos(x)*sin(x) + (1/4)*a^2*cos(x)^3*sin(x)]
    @test_int [(a - a*sin(x)^2)^3, x, 5, (5*a^3*x)/16 + (5/16)*a^3*cos(x)*sin(x) + (5/24)*a^3*cos(x)^3*sin(x) + (1/6)*a^3*cos(x)^5*sin(x)]
    @test_int [(a - a*sin(x)^2)^4, x, 6, (35*a^4*x)/128 + (35/128)*a^4*cos(x)*sin(x) + (35/192)*a^4*cos(x)^3*sin(x) + (7/48)*a^4*cos(x)^5*sin(x) + (1/8)*a^4*cos(x)^7*sin(x)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(c + d*x)^7/(a - a*sin(c + d*x)^2), x, 4, (3*cos(c + d*x))/(a*d) - cos(c + d*x)^3/(a*d) + cos(c + d*x)^5/(5*a*d) + sec(c + d*x)/(a*d)]
    @test_int [sin(c + d*x)^5/(a - a*sin(c + d*x)^2), x, 4, (2*cos(c + d*x))/(a*d) - cos(c + d*x)^3/(3*a*d) + sec(c + d*x)/(a*d)]
    @test_int [sin(c + d*x)^3/(a - a*sin(c + d*x)^2), x, 4, cos(c + d*x)/(a*d) + sec(c + d*x)/(a*d)]
    @test_int [sin(c + d*x)^1/(a - a*sin(c + d*x)^2), x, 3, sec(c + d*x)/(a*d)]
    @test_int [csc(c + d*x)^1/(a - a*sin(c + d*x)^2), x, 4, -(atanh(cos(c + d*x))/(a*d)) + sec(c + d*x)/(a*d)]
    @test_int [csc(c + d*x)^3/(a - a*sin(c + d*x)^2), x, 5, -((3*atanh(cos(c + d*x)))/(2*a*d)) + (3*sec(c + d*x))/(2*a*d) - (csc(c + d*x)^2*sec(c + d*x))/(2*a*d)]
    @test_int [csc(c + d*x)^5/(a - a*sin(c + d*x)^2), x, 6, -((15*atanh(cos(c + d*x)))/(8*a*d)) + (15*sec(c + d*x))/(8*a*d) - (5*csc(c + d*x)^2*sec(c + d*x))/(8*a*d) - (csc(c + d*x)^4*sec(c + d*x))/(4*a*d)]

    @test_int [sin(c + d*x)^6/(a - a*sin(c + d*x)^2), x, 6, -((15*x)/(8*a)) + (15*tan(c + d*x))/(8*a*d) - (5*sin(c + d*x)^2*tan(c + d*x))/(8*a*d) - (sin(c + d*x)^4*tan(c + d*x))/(4*a*d)]
    @test_int [sin(c + d*x)^4/(a - a*sin(c + d*x)^2), x, 5, -((3*x)/(2*a)) + (3*tan(c + d*x))/(2*a*d) - (sin(c + d*x)^2*tan(c + d*x))/(2*a*d)]
    @test_int [sin(c + d*x)^2/(a - a*sin(c + d*x)^2), x, 4, -(x/a) + tan(c + d*x)/(a*d)]
    @test_int [sin(c + d*x)^0/(a - a*sin(c + d*x)^2), x, 3, tan(c + d*x)/(a*d)]
    @test_int [csc(c + d*x)^2/(a - a*sin(c + d*x)^2), x, 4, -(cot(c + d*x)/(a*d)) + tan(c + d*x)/(a*d)]
    @test_int [csc(c + d*x)^4/(a - a*sin(c + d*x)^2), x, 4, -((2*cot(c + d*x))/(a*d)) - cot(c + d*x)^3/(3*a*d) + tan(c + d*x)/(a*d)]
    @test_int [csc(c + d*x)^6/(a - a*sin(c + d*x)^2), x, 4, -((3*cot(c + d*x))/(a*d)) - cot(c + d*x)^3/(a*d) - cot(c + d*x)^5/(5*a*d) + tan(c + d*x)/(a*d)]


    @test_int [sin(c + d*x)^7/(a - a*sin(c + d*x)^2)^2, x, 4, -((3*cos(c + d*x))/(a^2*d)) + cos(c + d*x)^3/(3*a^2*d) - (3*sec(c + d*x))/(a^2*d) + sec(c + d*x)^3/(3*a^2*d)]
    @test_int [sin(c + d*x)^5/(a - a*sin(c + d*x)^2)^2, x, 4, -(cos(c + d*x)/(a^2*d)) - (2*sec(c + d*x))/(a^2*d) + sec(c + d*x)^3/(3*a^2*d)]
    @test_int [sin(c + d*x)^3/(a - a*sin(c + d*x)^2)^2, x, 3, -(sec(c + d*x)/(a^2*d)) + sec(c + d*x)^3/(3*a^2*d)]
    @test_int [sin(c + d*x)^1/(a - a*sin(c + d*x)^2)^2, x, 3, sec(c + d*x)^3/(3*a^2*d)]
    @test_int [csc(c + d*x)^1/(a - a*sin(c + d*x)^2)^2, x, 5, -(atanh(cos(c + d*x))/(a^2*d)) + sec(c + d*x)/(a^2*d) + sec(c + d*x)^3/(3*a^2*d)]
    @test_int [csc(c + d*x)^3/(a - a*sin(c + d*x)^2)^2, x, 6, -((5*atanh(cos(c + d*x)))/(2*a^2*d)) + (5*sec(c + d*x))/(2*a^2*d) + (5*sec(c + d*x)^3)/(6*a^2*d) - (csc(c + d*x)^2*sec(c + d*x)^3)/(2*a^2*d)]

    @test_int [sin(c + d*x)^6/(a - a*sin(c + d*x)^2)^2, x, 6, (5*x)/(2*a^2) - (5*tan(c + d*x))/(2*a^2*d) + (5*tan(c + d*x)^3)/(6*a^2*d) - (sin(c + d*x)^2*tan(c + d*x)^3)/(2*a^2*d)]
    @test_int [sin(c + d*x)^4/(a - a*sin(c + d*x)^2)^2, x, 4, x/a^2 - tan(c + d*x)/(a^2*d) + tan(c + d*x)^3/(3*a^2*d)]
    @test_int [sin(c + d*x)^2/(a - a*sin(c + d*x)^2)^2, x, 3, tan(c + d*x)^3/(3*a^2*d)]
    @test_int [sin(c + d*x)^0/(a - a*sin(c + d*x)^2)^2, x, 3, tan(c + d*x)/(a^2*d) + tan(c + d*x)^3/(3*a^2*d)]
    @test_int [csc(c + d*x)^2/(a - a*sin(c + d*x)^2)^2, x, 4, -(cot(c + d*x)/(a^2*d)) + (2*tan(c + d*x))/(a^2*d) + tan(c + d*x)^3/(3*a^2*d)]
    @test_int [csc(c + d*x)^4/(a - a*sin(c + d*x)^2)^2, x, 4, -((3*cot(c + d*x))/(a^2*d)) - cot(c + d*x)^3/(3*a^2*d) + (3*tan(c + d*x))/(a^2*d) + tan(c + d*x)^3/(3*a^2*d)]


    @test_int [1/(a - a*sin(x)^2)^3, x, 3, tan(x)/a^3 + (2*tan(x)^3)/(3*a^3) + tan(x)^5/(5*a^3)]
    @test_int [1/(a - a*sin(x)^2)^4, x, 3, tan(x)/a^4 + tan(x)^3/a^4 + (3*tan(x)^5)/(5*a^4) + tan(x)^7/(7*a^4)]
    @test_int [1/(a - a*sin(x)^2)^5, x, 3, tan(x)/a^5 + (4*tan(x)^3)/(3*a^5) + (6*tan(x)^5)/(5*a^5) + (4*tan(x)^7)/(7*a^5) + tan(x)^9/(9*a^5)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sin(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sin(c + d*x)^3*(a + b*sin(c + d*x)^2), x, 3, -(((a + b)*cos(c + d*x))/d) + ((a + 2*b)*cos(c + d*x)^3)/(3*d) - (b*cos(c + d*x)^5)/(5*d)]
    @test_int [sin(c + d*x)^1*(a + b*sin(c + d*x)^2), x, 2, -(((a + b)*cos(c + d*x))/d) + (b*cos(c + d*x)^3)/(3*d)]
    @test_int [csc(c + d*x)^1*(a + b*sin(c + d*x)^2), x, 2, -((a*atanh(cos(c + d*x)))/d) - (b*cos(c + d*x))/d]
    @test_int [csc(c + d*x)^3*(a + b*sin(c + d*x)^2), x, 2, -(((a + 2*b)*atanh(cos(c + d*x)))/(2*d)) - (a*cot(c + d*x)*csc(c + d*x))/(2*d)]

    @test_int [sin(c + d*x)^4*(a + b*sin(c + d*x)^2), x, 4, (1/16)*(6*a + 5*b)*x - ((6*a + 5*b)*cos(c + d*x)*sin(c + d*x))/(16*d) - ((6*a + 5*b)*cos(c + d*x)*sin(c + d*x)^3)/(24*d) - (b*cos(c + d*x)*sin(c + d*x)^5)/(6*d)]
    @test_int [sin(c + d*x)^2*(a + b*sin(c + d*x)^2), x, 3, (1/8)*(4*a + 3*b)*x - ((4*a + 3*b)*cos(c + d*x)*sin(c + d*x))/(8*d) - (b*cos(c + d*x)*sin(c + d*x)^3)/(4*d)]
    @test_int [sin(c + d*x)^0*(a + b*sin(c + d*x)^2), x, 3, a*x + (b*x)/2 - (b*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [csc(c + d*x)^2*(a + b*sin(c + d*x)^2), x, 2, b*x - (a*cot(c + d*x))/d]
    @test_int [csc(c + d*x)^4*(a + b*sin(c + d*x)^2), x, 3, -(((2*a + 3*b)*cot(c + d*x))/(3*d)) - (a*cot(c + d*x)*csc(c + d*x)^2)/(3*d)]
    @test_int [csc(c + d*x)^6*(a + b*sin(c + d*x)^2), x, 3, -(((4*a + 5*b)*cot(c + d*x))/(5*d)) - ((4*a + 5*b)*cot(c + d*x)^3)/(15*d) - (a*cot(c + d*x)*csc(c + d*x)^4)/(5*d)]


    @test_int [(a + b*sin(x)^2)^1, x, 3, a*x + (b*x)/2 - (1/2)*b*cos(x)*sin(x)]
    @test_int [(a + b*sin(x)^2)^2, x, 1, (1/8)*(8*a^2 + 8*a*b + 3*b^2)*x - (1/8)*b*(8*a + 3*b)*cos(x)*sin(x) - (1/4)*b^2*cos(x)*sin(x)^3]
    @test_int [(a + b*sin(x)^2)^3, x, 2, (1/16)*(2*a + b)*(8*a^2 + 8*a*b + 5*b^2)*x - (1/48)*b*(64*a^2 + 54*a*b + 15*b^2)*cos(x)*sin(x) - (5/24)*b^2*(2*a + b)*cos(x)*sin(x)^3 - (1/6)*b*cos(x)*sin(x)*(a + b*sin(x)^2)^2]
    @test_int [(a + b*sin(x)^2)^4, x, 3, (1/128)*(128*a^4 + 256*a^3*b + 288*a^2*b^2 + 160*a*b^3 + 35*b^4)*x - (1/384)*b*(608*a^3 + 808*a^2*b + 480*a*b^2 + 105*b^3)*cos(x)*sin(x) - (1/192)*b^2*(104*a^2 + 104*a*b + 35*b^2)*cos(x)*sin(x)^3 - (7/48)*b*(2*a + b)*cos(x)*sin(x)*(a + b*sin(x)^2)^2 - (1/8)*b*cos(x)*sin(x)*(a + b*sin(x)^2)^3]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(c + d*x)^7/(a + b*sin(c + d*x)^2), x, 4, (a^3*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(b^(7/2)*sqrt(a + b)*d) - ((a^2 - a*b + b^2)*cos(c + d*x))/(b^3*d) - ((a - 2*b)*cos(c + d*x)^3)/(3*b^2*d) - cos(c + d*x)^5/(5*b*d)]
    @test_int [sin(c + d*x)^5/(a + b*sin(c + d*x)^2), x, 4, -((a^2*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(b^(5/2)*sqrt(a + b)*d)) + ((a - b)*cos(c + d*x))/(b^2*d) + cos(c + d*x)^3/(3*b*d)]
    @test_int [sin(c + d*x)^3/(a + b*sin(c + d*x)^2), x, 3, (a*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(b^(3/2)*sqrt(a + b)*d) - cos(c + d*x)/(b*d)]
    @test_int [sin(c + d*x)^1/(a + b*sin(c + d*x)^2), x, 2, -(atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b))/(sqrt(b)*sqrt(a + b)*d))]
    @test_int [csc(c + d*x)^1/(a + b*sin(c + d*x)^2), x, 4, -(atanh(cos(c + d*x))/(a*d)) + (sqrt(b)*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(a*sqrt(a + b)*d)]
    @test_int [csc(c + d*x)^3/(a + b*sin(c + d*x)^2), x, 5, -(((a - 2*b)*atanh(cos(c + d*x)))/(2*a^2*d)) - (b^(3/2)*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(a^2*sqrt(a + b)*d) - (cot(c + d*x)*csc(c + d*x))/(2*a*d)]
    @test_int [csc(c + d*x)^5/(a + b*sin(c + d*x)^2), x, 6, -(((3*a^2 - 4*a*b + 8*b^2)*atanh(cos(c + d*x)))/(8*a^3*d)) + (b^(5/2)*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(a^3*sqrt(a + b)*d) - ((3*a - 4*b)*cot(c + d*x)*csc(c + d*x))/(8*a^2*d) - (cot(c + d*x)*csc(c + d*x)^3)/(4*a*d)]

    @test_int [sin(c + d*x)^8/(a + b*sin(c + d*x)^2), x, 7, -(((16*a^3 - 8*a^2*b + 6*a*b^2 - 5*b^3)*x)/(16*b^4)) + (a^(7/2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(b^4*sqrt(a + b)*d) - ((8*a^2 - 6*a*b + 5*b^2)*cos(c + d*x)*sin(c + d*x))/(16*b^3*d) + ((6*a - 5*b)*cos(c + d*x)*sin(c + d*x)^3)/(24*b^2*d) - (cos(c + d*x)*sin(c + d*x)^5)/(6*b*d)]
    @test_int [sin(c + d*x)^6/(a + b*sin(c + d*x)^2), x, 6, ((8*a^2 - 4*a*b + 3*b^2)*x)/(8*b^3) - (a^(5/2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(b^3*sqrt(a + b)*d) + ((4*a - 3*b)*cos(c + d*x)*sin(c + d*x))/(8*b^2*d) - (cos(c + d*x)*sin(c + d*x)^3)/(4*b*d)]
    @test_int [sin(c + d*x)^4/(a + b*sin(c + d*x)^2), x, 5, -(((2*a - b)*x)/(2*b^2)) + (a^(3/2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(b^2*sqrt(a + b)*d) - (cos(c + d*x)*sin(c + d*x))/(2*b*d)]
    @test_int [sin(c + d*x)^2/(a + b*sin(c + d*x)^2), x, 3, x/b - (sqrt(a)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(b*sqrt(a + b)*d)]
    @test_int [sin(c + d*x)^0/(a + b*sin(c + d*x)^2), x, 2, atan((sqrt(a + b)*tan(c + d*x))/sqrt(a))/(sqrt(a)*sqrt(a + b)*d)]
    @test_int [csc(c + d*x)^2/(a + b*sin(c + d*x)^2), x, 3, -((b*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(a^(3/2)*sqrt(a + b)*d)) - cot(c + d*x)/(a*d)]
    @test_int [csc(c + d*x)^4/(a + b*sin(c + d*x)^2), x, 4, (b^2*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(a^(5/2)*sqrt(a + b)*d) - ((a - b)*cot(c + d*x))/(a^2*d) - cot(c + d*x)^3/(3*a*d)]
    @test_int [csc(c + d*x)^6/(a + b*sin(c + d*x)^2), x, 4, -((b^3*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(a^(7/2)*sqrt(a + b)*d)) - ((a^2 - a*b + b^2)*cot(c + d*x))/(a^3*d) - ((2*a - b)*cot(c + d*x)^3)/(3*a^2*d) - cot(c + d*x)^5/(5*a*d)]
    @test_int [csc(c + d*x)^8/(a + b*sin(c + d*x)^2), x, 4, (b^4*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(a^(9/2)*sqrt(a + b)*d) - ((a - b)*(a^2 + b^2)*cot(c + d*x))/(a^4*d) - ((3*a^2 - 2*a*b + b^2)*cot(c + d*x)^3)/(3*a^3*d) - ((3*a - b)*cot(c + d*x)^5)/(5*a^2*d) - cot(c + d*x)^7/(7*a*d)]


    @test_int [sin(c + d*x)^7/(a + b*sin(c + d*x)^2)^2, x, 5, -((a^2*(5*a + 6*b)*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(2*b^(7/2)*(a + b)^(3/2)*d)) + ((2*a - b)*cos(c + d*x))/(b^3*d) + cos(c + d*x)^3/(3*b^2*d) + (a^3*cos(c + d*x))/(2*b^3*(a + b)*d*(a + b - b*cos(c + d*x)^2))]
    @test_int [sin(c + d*x)^5/(a + b*sin(c + d*x)^2)^2, x, 5, (a*(3*a + 4*b)*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(2*b^(5/2)*(a + b)^(3/2)*d) - cos(c + d*x)/(b^2*d) - (a^2*cos(c + d*x))/(2*b^2*(a + b)*d*(a + b - b*cos(c + d*x)^2))]
    @test_int [sin(c + d*x)^3/(a + b*sin(c + d*x)^2)^2, x, 3, -(((a + 2*b)*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(2*b^(3/2)*(a + b)^(3/2)*d)) + (a*cos(c + d*x))/(2*b*(a + b)*d*(a + b - b*cos(c + d*x)^2))]
    @test_int [sin(c + d*x)^1/(a + b*sin(c + d*x)^2)^2, x, 3, -(atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b))/(2*sqrt(b)*(a + b)^(3/2)*d)) - cos(c + d*x)/(2*(a + b)*d*(a + b - b*cos(c + d*x)^2))]
    @test_int [csc(c + d*x)^1/(a + b*sin(c + d*x)^2)^2, x, 5, -(atanh(cos(c + d*x))/(a^2*d)) + (sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(2*a^2*(a + b)^(3/2)*d) + (b*cos(c + d*x))/(2*a*(a + b)*d*(a + b - b*cos(c + d*x)^2))]
    @test_int [csc(c + d*x)^3/(a + b*sin(c + d*x)^2)^2, x, 6, -(((a - 4*b)*atanh(cos(c + d*x)))/(2*a^3*d)) - (b^(3/2)*(5*a + 4*b)*atanh((sqrt(b)*cos(c + d*x))/sqrt(a + b)))/(2*a^3*(a + b)^(3/2)*d) - (b*(a + 2*b)*cos(c + d*x))/(2*a^2*(a + b)*d*(a + b - b*cos(c + d*x)^2)) - (cot(c + d*x)*csc(c + d*x))/(2*a*d*(a + b - b*cos(c + d*x)^2))]

    @test_int [sin(c + d*x)^6/(a + b*sin(c + d*x)^2)^2, x, 6, -(((4*a - b)*x)/(2*b^3)) + (a^(3/2)*(4*a + 5*b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(2*b^3*(a + b)^(3/2)*d) - (a*(2*a + b)*tan(c + d*x))/(2*b^2*(a + b)*d*(a + (a + b)*tan(c + d*x)^2)) - (sin(c + d*x)^2*tan(c + d*x))/(2*b*d*(a + (a + b)*tan(c + d*x)^2))]
    @test_int [sin(c + d*x)^4/(a + b*sin(c + d*x)^2)^2, x, 5, x/b^2 - (sqrt(a)*(2*a + 3*b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(2*b^2*(a + b)^(3/2)*d) + (a*tan(c + d*x))/(2*b*(a + b)*d*(a + (a + b)*tan(c + d*x)^2))]
    @test_int [sin(c + d*x)^2/(a + b*sin(c + d*x)^2)^2, x, 4, atan((sqrt(a + b)*tan(c + d*x))/sqrt(a))/(2*sqrt(a)*(a + b)^(3/2)*d) - (cos(c + d*x)*sin(c + d*x))/(2*(a + b)*d*(a + b*sin(c + d*x)^2))]
    @test_int [sin(c + d*x)^0/(a + b*sin(c + d*x)^2)^2, x, 4, ((2*a + b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a + b)^(3/2)*d) + (b*cos(c + d*x)*sin(c + d*x))/(2*a*(a + b)*d*(a + b*sin(c + d*x)^2))]
    @test_int [csc(c + d*x)^2/(a + b*sin(c + d*x)^2)^2, x, 4, -((b*(4*a + 3*b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(2*a^(5/2)*(a + b)^(3/2)*d)) - cot(c + d*x)/(a*d*(a + b*sin(c + d*x)^2)) - ((2*a*b + 3*b^2)*cos(c + d*x)*sin(c + d*x))/(2*a^2*(a + b)*d*(a + b*sin(c + d*x)^2)), -((b*(4*a + 3*b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(2*a^(5/2)*(a + b)^(3/2)*d)) - cot(c + d*x)/(a*d*(a + (a + b)*tan(c + d*x)^2)) - ((2*a^2 + 4*a*b + 3*b^2)*tan(c + d*x))/(2*a^2*(a + b)*d*(a + (a + b)*tan(c + d*x)^2))]
    @test_int [csc(c + d*x)^4/(a + b*sin(c + d*x)^2)^2, x, 5, (b^2*(6*a + 5*b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(2*a^(7/2)*(a + b)^(3/2)*d) - ((2*a^2 - a*b - 5*b^2)*cot(c + d*x))/(2*a^3*(a + b)*d) - ((2*a + 5*b)*cot(c + d*x)^3)/(6*a^2*(a + b)*d) + (b*csc(c + d*x)^3*sec(c + d*x))/(2*a*(a + b)*d*(a + (a + b)*tan(c + d*x)^2))]


    @test_int [sin(c + d*x)^6/(a + b*sin(c + d*x)^2)^3, x, 6, x/b^3 - (sqrt(a)*(8*a^2 + 20*a*b + 15*b^2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(8*b^3*(a + b)^(5/2)*d) + (a*tan(c + d*x)^3)/(4*b*(a + b)*d*(a + (a + b)*tan(c + d*x)^2)^2) + (a*(4*a + 7*b)*tan(c + d*x))/(8*b^2*(a + b)^2*d*(a + (a + b)*tan(c + d*x)^2))]
    @test_int [sin(c + d*x)^4/(a + b*sin(c + d*x)^2)^3, x, 4, (3*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(8*sqrt(a)*(a + b)^(5/2)*d) - tan(c + d*x)^3/(4*(a + b)*d*(a + (a + b)*tan(c + d*x)^2)^2) - (3*tan(c + d*x))/(8*(a + b)^2*d*(a + (a + b)*tan(c + d*x)^2))]
    @test_int [sin(c + d*x)^2/(a + b*sin(c + d*x)^2)^3, x, 5, ((4*a + b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(8*a^(3/2)*(a + b)^(5/2)*d) - (cos(c + d*x)*sin(c + d*x))/(4*(a + b)*d*(a + b*sin(c + d*x)^2)^2) - ((2*a - b)*cos(c + d*x)*sin(c + d*x))/(8*a*(a + b)^2*d*(a + b*sin(c + d*x)^2))]
    @test_int [sin(c + d*x)^0/(a + b*sin(c + d*x)^2)^3, x, 5, ((8*a^2 + 8*a*b + 3*b^2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a + b)^(5/2)*d) + (b*cos(c + d*x)*sin(c + d*x))/(4*a*(a + b)*d*(a + b*sin(c + d*x)^2)^2) + (3*b*(2*a + b)*cos(c + d*x)*sin(c + d*x))/(8*a^2*(a + b)^2*d*(a + b*sin(c + d*x)^2))]
    @test_int [csc(c + d*x)^2/(a + b*sin(c + d*x)^2)^3, x, 5, -((3*b*(8*a^2 + 12*a*b + 5*b^2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(8*a^(7/2)*(a + b)^(5/2)*d)) - ((2*a + 3*b)*(4*a + 5*b)*cot(c + d*x))/(8*a^3*(a + b)^2*d) + (b*csc(c + d*x)*sec(c + d*x)^3)/(4*a*(a + b)*d*(a + (a + b)*tan(c + d*x)^2)^2) + (b*cot(c + d*x)*(4*a + 5*b + (4*a + b)*tan(c + d*x)^2))/(8*a^2*(a + b)^2*d*(a + (a + b)*tan(c + d*x)^2))]


    @test_int [1/(a + b*sin(c + d*x)^2)^4, x, 6, ((2*a + b)*(8*a^2 + 8*a*b + 5*b^2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(16*a^(7/2)*(a + b)^(7/2)*d) + (b*cos(c + d*x)*sin(c + d*x))/(6*a*(a + b)*d*(a + b*sin(c + d*x)^2)^3) + (5*b*(2*a + b)*cos(c + d*x)*sin(c + d*x))/(24*a^2*(a + b)^2*d*(a + b*sin(c + d*x)^2)^2) + (b*(44*a^2 + 44*a*b + 15*b^2)*cos(c + d*x)*sin(c + d*x))/(48*a^3*(a + b)^3*d*(a + b*sin(c + d*x)^2))]
    @test_int [1/(a + b*sin(c + d*x)^2)^5, x, 7, ((128*a^4 + 256*a^3*b + 288*a^2*b^2 + 160*a*b^3 + 35*b^4)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(128*a^(9/2)*(a + b)^(9/2)*d) + (b*cos(c + d*x)*sin(c + d*x))/(8*a*(a + b)*d*(a + b*sin(c + d*x)^2)^4) + (7*b*(2*a + b)*cos(c + d*x)*sin(c + d*x))/(48*a^2*(a + b)^2*d*(a + b*sin(c + d*x)^2)^3) + (b*(104*a^2 + 104*a*b + 35*b^2)*cos(c + d*x)*sin(c + d*x))/(192*a^3*(a + b)^3*d*(a + b*sin(c + d*x)^2)^2) + (5*b*(2*a + b)*(40*a^2 + 40*a*b + 21*b^2)*cos(c + d*x)*sin(c + d*x))/(384*a^4*(a + b)^4*d*(a + b*sin(c + d*x)^2))]


    @test_int [sin(x)/sqrt(1 + sin(x)^2), x, 2, -asin(cos(x)/sqrt(2))]
    @test_int [sin(x)*sqrt(1 + sin(x)^2), x, 3, -asin(cos(x)/sqrt(2)) - (cos(x)*sqrt(2 - cos(x)^2))/2]
    @test_int [sin(7 + 3*x)/sqrt(3 + sin(7 + 3*x)^2), x, 2, -asin(cos(7 + 3*x)/2)/3]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sin(e+f*x)^2)^(p/2)*when*a+b=0=#


    @test_int [(a - a*sin(x)^2)^(5/2), x, 5, (8/15)*a^2*sqrt(a*cos(x)^2)*tan(x) + (4/15)*a*(a*cos(x)^2)^(3/2)*tan(x) + (1/5)*(a*cos(x)^2)^(5/2)*tan(x)]
    @test_int [(a - a*sin(x)^2)^(3/2), x, 4, (2/3)*a*sqrt(a*cos(x)^2)*tan(x) + (1/3)*(a*cos(x)^2)^(3/2)*tan(x)]
    @test_int [(a - a*sin(x)^2)^(1/2), x, 3, sqrt(a*cos(x)^2)*tan(x)]
    @test_int [1/(a - a*sin(x)^2)^(1/2), x, 3, (atanh(sin(x))*cos(x))/sqrt(a*cos(x)^2)]
    @test_int [1/(a - a*sin(x)^2)^(3/2), x, 4, (atanh(sin(x))*cos(x))/(2*a*sqrt(a*cos(x)^2)) + tan(x)/(2*a*sqrt(a*cos(x)^2))]
    @test_int [1/(a - a*sin(x)^2)^(5/2), x, 5, (3*atanh(sin(x))*cos(x))/(8*a^2*sqrt(a*cos(x)^2)) + tan(x)/(4*a*(a*cos(x)^2)^(3/2)) + (3*tan(x))/(8*a^2*sqrt(a*cos(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sin(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sin(e + f*x)^3*sqrt(a + b*sin(e + f*x)^2), x, 5, ((a - 3*b)*(a + b)*atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(8*b^(3/2)*f) + ((a - 3*b)*cos(e + f*x)*sqrt(a + b - b*cos(e + f*x)^2))/(8*b*f) - (cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^(3/2))/(4*b*f)]
    @test_int [sin(e + f*x)^1*sqrt(a + b*sin(e + f*x)^2), x, 4, -((a + b)*atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(2*sqrt(b)*f) - (cos(e + f*x)*sqrt(a + b - b*cos(e + f*x)^2))/(2*f)]
    @test_int [csc(e + f*x)^1*sqrt(a + b*sin(e + f*x)^2), x, 6, -((sqrt(b)*atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/f) - (sqrt(a)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/f]
    @test_int [csc(e + f*x)^3*sqrt(a + b*sin(e + f*x)^2), x, 4, -((a + b)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(2*sqrt(a)*f) - (sqrt(a + b - b*cos(e + f*x)^2)*cot(e + f*x)*csc(e + f*x))/(2*f)]
    @test_int [csc(e + f*x)^5*sqrt(a + b*sin(e + f*x)^2), x, 5, -((3*a - b)*(a + b)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(8*a^(3/2)*f) - ((3*a - b)*sqrt(a + b - b*cos(e + f*x)^2)*cot(e + f*x)*csc(e + f*x))/(8*a*f) - ((a + b - b*cos(e + f*x)^2)^(3/2)*cot(e + f*x)*csc(e + f*x)^3)/(4*a*f)]

    @test_int [sin(e + f*x)^4*sqrt(a + b*sin(e + f*x)^2), x, 8, -(((a + 4*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(15*b*f)) - (cos(e + f*x)*sin(e + f*x)^3*sqrt(a + b*sin(e + f*x)^2))/(5*f) - ((2*a^2 - 3*a*b - 8*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(15*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (2*a*(a - 2*b)*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(15*b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2), x, 6, -((cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f)) + ((a + 2*b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*b*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (a*(a + b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^0*sqrt(a + b*sin(e + f*x)^2), x, 2, (EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a))]
    @test_int [csc(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2), x, 8, -((cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/f) - (sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [csc(e + f*x)^4*sqrt(a + b*sin(e + f*x)^2), x, 8, -(((2*a + b)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a*f)) - (cot(e + f*x)*csc(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(3*f) - ((2*a + b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (2*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2))]


    @test_int [sin(e + f*x)^3*(a + b*sin(e + f*x)^2)^(3/2), x, 6, ((a - 5*b)*(a + b)^2*atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(16*b^(3/2)*f) + ((a - 5*b)*(a + b)*cos(e + f*x)*sqrt(a + b - b*cos(e + f*x)^2))/(16*b*f) + ((a - 5*b)*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^(3/2))/(24*b*f) - (cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^(5/2))/(6*b*f)]
    @test_int [sin(e + f*x)^1*(a + b*sin(e + f*x)^2)^(3/2), x, 5, (-3*(a + b)^2*atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(8*sqrt(b)*f) - (3*(a + b)*cos(e + f*x)*sqrt(a + b - b*cos(e + f*x)^2))/(8*f) - (cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^(3/2))/(4*f)]
    @test_int [csc(e + f*x)^1*(a + b*sin(e + f*x)^2)^(3/2), x, 7, -(sqrt(b)*(3*a + b)*atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(2*f) - (a^(3/2)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/f - (b*cos(e + f*x)*sqrt(a + b - b*cos(e + f*x)^2))/(2*f)]
    @test_int [csc(e + f*x)^3*(a + b*sin(e + f*x)^2)^(3/2), x, 7, -((b^(3/2)*atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/f) - (sqrt(a)*(a + 3*b)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(2*f) - (a*sqrt(a + b - b*cos(e + f*x)^2)*cot(e + f*x)*csc(e + f*x))/(2*f)]
    @test_int [csc(e + f*x)^5*(a + b*sin(e + f*x)^2)^(3/2), x, 5, (-3*(a + b)^2*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(8*sqrt(a)*f) - (3*(a + b)*sqrt(a + b - b*cos(e + f*x)^2)*cot(e + f*x)*csc(e + f*x))/(8*f) - ((a + b - b*cos(e + f*x)^2)^(3/2)*cot(e + f*x)*csc(e + f*x)^3)/(4*f)]
    @test_int [csc(e + f*x)^7*(a + b*sin(e + f*x)^2)^(3/2), x, 6, -((5*a - b)*(a + b)^2*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(16*a^(3/2)*f) - ((5*a - b)*(a + b)*sqrt(a + b - b*cos(e + f*x)^2)*cot(e + f*x)*csc(e + f*x))/(16*a*f) - ((5*a - b)*(a + b - b*cos(e + f*x)^2)^(3/2)*cot(e + f*x)*csc(e + f*x)^3)/(24*a*f) - ((a + b - b*cos(e + f*x)^2)^(5/2)*cot(e + f*x)*csc(e + f*x)^5)/(6*a*f)]

    @test_int [sin(e + f*x)^4*(a + b*sin(e + f*x)^2)^(3/2), x, 9, -((a^2 + 11*a*b + 8*b^2)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(35*b*f) - (2*(4*a + 3*b)*cos(e + f*x)*sin(e + f*x)^3*sqrt(a + b*sin(e + f*x)^2))/(35*f) - (b*cos(e + f*x)*sin(e + f*x)^5*sqrt(a + b*sin(e + f*x)^2))/(7*f) - (2*(a + 2*b)*(a^2 - 4*a*b - 4*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(35*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (a*(a + b)*(2*a^2 - 5*a*b - 8*b^2)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(35*b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^2*(a + b*sin(e + f*x)^2)^(3/2), x, 7, -((3*a + 4*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(15*f) - (cos(e + f*x)*sin(e + f*x)*(a + b*sin(e + f*x)^2)^(3/2))/(5*f) + ((3*a^2 + 13*a*b + 8*b^2)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(15*b*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (a*(a + b)*(3*a + 4*b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(15*b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^0*(a + b*sin(e + f*x)^2)^(3/2), x, 6, -(b*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f) + (2*(2*a + b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (a*(a + b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [csc(e + f*x)^2*(a + b*sin(e + f*x)^2)^(3/2), x, 7, -((a*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/f) - ((a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (a*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [csc(e + f*x)^4*(a + b*sin(e + f*x)^2)^(3/2), x, 8, (-2*(a + 2*b)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f) - (a*cot(e + f*x)*csc(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(3*f) - (2*(a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((a + b)*(2*a + 3*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2))]


    @test_int [(a + b*sin(c + d*x)^2)^(5/2), x, 7, -((4*b*(2*a + b)*cos(c + d*x)*sin(c + d*x)*sqrt(a + b*sin(c + d*x)^2))/(15*d)) - (b*cos(c + d*x)*sin(c + d*x)*(a + b*sin(c + d*x)^2)^(3/2))/(5*d) + ((23*a^2 + 23*a*b + 8*b^2)*EllipticE(c + d*x, -(b/a))*sqrt(a + b*sin(c + d*x)^2))/(15*d*sqrt(1 + (b*sin(c + d*x)^2)/a)) - (4*a*(a + b)*(2*a + b)*EllipticF(c + d*x, -(b/a))*sqrt(1 + (b*sin(c + d*x)^2)/a))/(15*d*sqrt(a + b*sin(c + d*x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(e + f*x)^3/sqrt(a + b*sin(e + f*x)^2), x, 4, ((a - b)*atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(2*b^(3/2)*f) - (cos(e + f*x)*sqrt(a + b - b*cos(e + f*x)^2))/(2*b*f)]
    @test_int [sin(e + f*x)^1/sqrt(a + b*sin(e + f*x)^2), x, 3, -(atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2))/(sqrt(b)*f))]
    @test_int [csc(e + f*x)^1/sqrt(a + b*sin(e + f*x)^2), x, 3, -(atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2))/(sqrt(a)*f))]
    @test_int [csc(e + f*x)^3/sqrt(a + b*sin(e + f*x)^2), x, 4, -((a - b)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(2*a^(3/2)*f) - (sqrt(a + b - b*cos(e + f*x)^2)*cot(e + f*x)*csc(e + f*x))/(2*a*f)]

    @test_int [sin(e + f*x)^4/sqrt(a + b*sin(e + f*x)^2), x, 7, -((cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b*f)) - (2*(a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (a*(2*a - b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/sqrt(a + b*sin(e + f*x)^2), x, 5, (EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(b*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (a*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/sqrt(a + b*sin(e + f*x)^2), x, 2, (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/sqrt(a + b*sin(e + f*x)^2), x, 8, -((cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a*f)) - (sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [csc(e + f*x)^4/sqrt(a + b*sin(e + f*x)^2), x, 8, -((2*(a - b)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*f)) - (cot(e + f*x)*csc(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(3*a*f) - (2*(a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((2*a - b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*f*sqrt(a + b*sin(e + f*x)^2))]


    @test_int [sin(e + f*x)^3/(a + b*sin(e + f*x)^2)^(3/2), x, 4, -(atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2))/(b^(3/2)*f)) + (a*cos(e + f*x))/(b*(a + b)*f*sqrt(a + b - b*cos(e + f*x)^2))]
    @test_int [sin(e + f*x)^1/(a + b*sin(e + f*x)^2)^(3/2), x, 2, -(cos(e + f*x)/((a + b)*f*sqrt(a + b - b*cos(e + f*x)^2)))]
    @test_int [csc(e + f*x)^1/(a + b*sin(e + f*x)^2)^(3/2), x, 4, -(atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2))/(a^(3/2)*f)) + (b*cos(e + f*x))/(a*(a + b)*f*sqrt(a + b - b*cos(e + f*x)^2))]
    @test_int [csc(e + f*x)^3/(a + b*sin(e + f*x)^2)^(3/2), x, 6, -((a - 3*b)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2)))/(2*a^(5/2)*f) - (b*(a + 3*b)*cos(e + f*x))/(2*a^2*(a + b)*f*sqrt(a + b - b*cos(e + f*x)^2)) - (cot(e + f*x)*csc(e + f*x))/(2*a*f*sqrt(a + b - b*cos(e + f*x)^2))]

    @test_int [sin(e + f*x)^6/(a + b*sin(e + f*x)^2)^(3/2), x, 8, (a*cos(e + f*x)*sin(e + f*x)^3)/(b*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) - ((4*a + b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b^2*(a + b)*f) - ((8*a^2 + 3*a*b - 2*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b^3*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (a*(8*a - b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b^3*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^4/(a + b*sin(e + f*x)^2)^(3/2), x, 7, (a*cos(e + f*x)*sin(e + f*x))/(b*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + ((2*a + b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(b^2*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (2*a*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*sin(e + f*x)^2)^(3/2), x, 6, -((cos(e + f*x)*sin(e + f*x))/((a + b)*f*sqrt(a + b*sin(e + f*x)^2))) - (EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(b*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*sin(e + f*x)^2)^(3/2), x, 4, (b*cos(e + f*x)*sin(e + f*x))/(a*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + (EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(a*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a))]
    @test_int [csc(e + f*x)^2/(a + b*sin(e + f*x)^2)^(3/2), x, 8, (b*cot(e + f*x))/(a*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) - ((a + 2*b)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a^2*(a + b)*f) - ((a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a^2*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(a*f*sqrt(a + b*sin(e + f*x)^2))]


    @test_int [sin(e + f*x)^5/(a + b*sin(e + f*x)^2)^(5/2), x, 5, -(atan((sqrt(b)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2))/(b^(5/2)*f)) + (a*(3*a + 5*b)*cos(e + f*x))/(3*b^2*(a + b)^2*f*sqrt(a + b - b*cos(e + f*x)^2)) + (a*cos(e + f*x)*sin(e + f*x)^2)/(3*b*(a + b)*f*(a + b - b*cos(e + f*x)^2)^(3/2))]
    @test_int [sin(e + f*x)^3/(a + b*sin(e + f*x)^2)^(5/2), x, 3, (-2*cos(e + f*x))/(3*(a + b)^2*f*sqrt(a + b - b*cos(e + f*x)^2)) - (cos(e + f*x)*sin(e + f*x)^2)/(3*(a + b)*f*(a + b - b*cos(e + f*x)^2)^(3/2))]
    @test_int [sin(e + f*x)^1/(a + b*sin(e + f*x)^2)^(5/2), x, 3, -cos(e + f*x)/(3*(a + b)*f*(a + b - b*cos(e + f*x)^2)^(3/2)) - (2*cos(e + f*x))/(3*(a + b)^2*f*sqrt(a + b - b*cos(e + f*x)^2))]
    @test_int [csc(e + f*x)^1/(a + b*sin(e + f*x)^2)^(5/2), x, 6, -(atanh((sqrt(a)*cos(e + f*x))/sqrt(a + b - b*cos(e + f*x)^2))/(a^(5/2)*f)) + (b*cos(e + f*x))/(3*a*(a + b)*f*(a + b - b*cos(e + f*x)^2)^(3/2)) + (b*(5*a + 3*b)*cos(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b - b*cos(e + f*x)^2))]

    @test_int [sin(e + f*x)^6/(a + b*sin(e + f*x)^2)^(5/2), x, 8, (a*cos(e + f*x)*sin(e + f*x)^3)/(3*b*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) + (2*a*(2*a + 3*b)*cos(e + f*x)*sin(e + f*x))/(3*b^2*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + ((8*a^2 + 13*a*b + 3*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b^3*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (a*(8*a + 9*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b^3*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^4/(a + b*sin(e + f*x)^2)^(5/2), x, 8, (a*cos(e + f*x)*sin(e + f*x))/(3*b*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) - (2*(a + 2*b)*cos(e + f*x)*sin(e + f*x))/(3*b*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) - (2*(a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b^2*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((2*a + 3*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b^2*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*sin(e + f*x)^2)^(5/2), x, 7, -((cos(e + f*x)*sin(e + f*x))/(3*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2))) - ((a - b)*cos(e + f*x)*sin(e + f*x))/(3*a*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) - ((a - b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*a*b*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*sin(e + f*x)^2)^(5/2), x, 7, (b*cos(e + f*x)*sin(e + f*x))/(3*a*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) + (2*b*(2*a + b)*cos(e + f*x)*sin(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + (2*(2*a + b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/(a + b*sin(e + f*x)^2)^(5/2), x, 9, (b*cot(e + f*x))/(3*a*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) + (2*b*(3*a + 2*b)*cot(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) - ((3*a^2 + 13*a*b + 8*b^2)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^3*(a + b)^2*f) - ((3*a^2 + 13*a*b + 8*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^3*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((3*a + 4*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a^2*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))*(a+b*sin(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*sin(e + f*x))^m*(a + b*sin(e + f*x)^2)^p, x, 3, -((d*AppellF1(1/2, (1 - m)/2, -p, 3/2, cos(e + f*x)^2, (b*cos(e + f*x)^2)/(a + b))*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^p*(d*sin(e + f*x))^(-1 + m)*(sin(e + f*x)^2)^((1 - m)/2))/((1 - (b*cos(e + f*x)^2)/(a + b))^p*f))]


    @test_int [sin(e + f*x)^5*(a + b*sin(e + f*x)^2)^p, x, 5, If($VersionNumber>=8, ((3*a - 2*b*(2 + p))*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^(1 + p))/(b^2*f*(3 + 2*p)*(5 + 2*p)) - ((3*a^2 - 4*a*b*(1 + p) + 4*b^2*(2 + 3*p + p^2))*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^p*Hypergeometric2F1(1/2, -p, 3/2, (b*cos(e + f*x)^2)/(a + b)))/((1 - (b*cos(e + f*x)^2)/(a + b))^p*(b^2*f*(3 + 2*p)*(5 + 2*p))) - (cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^(1 + p)*sin(e + f*x)^2)/(b*f*(5 + 2*p)), ((3*a - 2*b*(2 + p))*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^(1 + p))/(b^2*f*(15 + 16*p + 4*p^2)) - ((3*a^2 - 4*a*b*(1 + p) + 4*b^2*(2 + 3*p + p^2))*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^p*Hypergeometric2F1(1/2, -p, 3/2, (b*cos(e + f*x)^2)/(a + b)))/((1 - (b*cos(e + f*x)^2)/(a + b))^p*(b^2*f*(15 + 16*p + 4*p^2))) - (cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^(1 + p)*sin(e + f*x)^2)/(b*f*(5 + 2*p)))]
    @test_int [sin(e + f*x)^3*(a + b*sin(e + f*x)^2)^p, x, 4, -((cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^(1 + p))/(b*f*(3 + 2*p))) + ((a - 2*b*(1 + p))*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^p*Hypergeometric2F1(1/2, -p, 3/2, (b*cos(e + f*x)^2)/(a + b)))/((1 - (b*cos(e + f*x)^2)/(a + b))^p*(b*f*(3 + 2*p)))]
    @test_int [sin(e + f*x)^1*(a + b*sin(e + f*x)^2)^p, x, 3, -((cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^p*Hypergeometric2F1(1/2, -p, 3/2, (b*cos(e + f*x)^2)/(a + b)))/((1 - (b*cos(e + f*x)^2)/(a + b))^p*f))]
    @test_int [csc(e + f*x)^1*(a + b*sin(e + f*x)^2)^p, x, 3, -((AppellF1(1/2, 1, -p, 3/2, cos(e + f*x)^2, (b*cos(e + f*x)^2)/(a + b))*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^p)/((1 - (b*cos(e + f*x)^2)/(a + b))^p*f))]
    @test_int [csc(e + f*x)^3*(a + b*sin(e + f*x)^2)^p, x, 3, -((AppellF1(1/2, 2, -p, 3/2, cos(e + f*x)^2, (b*cos(e + f*x)^2)/(a + b))*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^p)/((1 - (b*cos(e + f*x)^2)/(a + b))^p*f))]
    @test_int [csc(e + f*x)^5*(a + b*sin(e + f*x)^2)^p, x, 3, -((AppellF1(1/2, 3, -p, 3/2, cos(e + f*x)^2, (b*cos(e + f*x)^2)/(a + b))*cos(e + f*x)*(a + b - b*cos(e + f*x)^2)^p)/((1 - (b*cos(e + f*x)^2)/(a + b))^p*f))]

    @test_int [sin(e + f*x)^4*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1(5/2, 1/2, -p, 7/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sqrt(cos(e + f*x)^2)*sin(e + f*x)^4*(a + b*sin(e + f*x)^2)^p*tan(e + f*x))/((1 + (b*sin(e + f*x)^2)/a)^p*(5*f))]
    @test_int [sin(e + f*x)^2*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1(3/2, 2 + p, -p, 5/2, -tan(e + f*x)^2, -(((a + b)*tan(e + f*x)^2)/a))*(sec(e + f*x)^2)^p*(a + b*sin(e + f*x)^2)^p*tan(e + f*x)^3)/((1 + ((a + b)*tan(e + f*x)^2)/a)^p*(3*f))]
    @test_int [csc(e + f*x)^2*(a + b*sin(e + f*x)^2)^p, x, 3, -((AppellF1(-(1/2), 1/2, -p, 1/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sqrt(cos(e + f*x)^2)*csc(e + f*x)*sec(e + f*x)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*f))]
    @test_int [csc(e + f*x)^4*(a + b*sin(e + f*x)^2)^p, x, 3, -((AppellF1(-(3/2), 1/2, -p, -(1/2), sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sqrt(cos(e + f*x)^2)*csc(e + f*x)^3*sec(e + f*x)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*(3*f)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*sin(e+f*x)^3)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sin(e+f*x)^3)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(c + d*x)^7/(a + b*sin(c + d*x)^3), x, 17, (3*x)/(8*b) + (2*(-1)^(2/3)*a^(5/3)*atan(((-1)^(1/3)*b^(1/3) - a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*b^(7/3)*d) - (2*a^(5/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*b^(7/3)*d) + (2*(-1)^(1/3)*a^(5/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*b^(7/3)*d) + (a*cos(c + d*x))/(b^2*d) - (3*cos(c + d*x)*sin(c + d*x))/(8*b*d) - (cos(c + d*x)*sin(c + d*x)^3)/(4*b*d)]
    @test_int [sin(c + d*x)^5/(a + b*sin(c + d*x)^3), x, 15, x/(2*b) - (2*a*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*b^(5/3)*d) + (2*a*atanh((b^(1/3) - (-1)^(1/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))))/(3*sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))*b^(5/3)*d) + (2*a*atanh((b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))*b^(5/3)*d) - (cos(c + d*x)*sin(c + d*x))/(2*b*d)]
    @test_int [sin(c + d*x)^3/(a + b*sin(c + d*x)^3), x, 13, x/b - (2*a^(1/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*b*d) - (2*a^(1/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*b*d) + (2*a^(1/3)*atan(((-1)^(1/3)*(b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x))))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*b*d)]
    @test_int [sin(c + d*x)^1/(a + b*sin(c + d*x)^3), x, 11, (2*(-1)^(2/3)*atan(((-1)^(1/3)*b^(1/3) - a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(1/3)*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*b^(1/3)*d) - (2*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(1/3)*sqrt(a^(2/3) - b^(2/3))*b^(1/3)*d) + (2*(-1)^(1/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(1/3)*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*b^(1/3)*d)]
    @test_int [csc(c + d*x)^1/(a + b*sin(c + d*x)^3), x, 14, -((2*b^(1/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a*sqrt(a^(2/3) - b^(2/3))*d)) - atanh(cos(c + d*x))/(a*d) + (2*b^(1/3)*atanh((b^(1/3) - (-1)^(1/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))))/(3*a*sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))*d) + (2*b^(1/3)*atanh((b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))))/(3*a*sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))*d)]
    @test_int [csc(c + d*x)^3/(a + b*sin(c + d*x)^3), x, 15, -((2*b*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(5/3)*sqrt(a^(2/3) - b^(2/3))*d)) - (2*b*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(5/3)*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*d) + (2*b*atan(((-1)^(1/3)*(b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x))))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(5/3)*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*d) - atanh(cos(c + d*x))/(2*a*d) - (cot(c + d*x)*csc(c + d*x))/(2*a*d)]
    @test_int [csc(c + d*x)^5/(a + b*sin(c + d*x)^3), x, 18, (2*(-1)^(2/3)*b^(5/3)*atan(((-1)^(1/3)*b^(1/3) - a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(7/3)*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*d) - (2*b^(5/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(7/3)*sqrt(a^(2/3) - b^(2/3))*d) + (2*(-1)^(1/3)*b^(5/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(7/3)*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*d) - (3*atanh(cos(c + d*x)))/(8*a*d) + (b*cot(c + d*x))/(a^2*d) - (3*cot(c + d*x)*csc(c + d*x))/(8*a*d) - (cot(c + d*x)*csc(c + d*x)^3)/(4*a*d)]

    @test_int [sin(c + d*x)^6/(a + b*sin(c + d*x)^3), x, 15, -((a*x)/b^2) + (2*a^(4/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*b^2*d) + (2*a^(4/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*b^2*d) - (2*a^(4/3)*atan(((-1)^(1/3)*(b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x))))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*b^2*d) - cos(c + d*x)/(b*d) + cos(c + d*x)^3/(3*b*d)]
    @test_int [sin(c + d*x)^4/(a + b*sin(c + d*x)^3), x, 14, -((2*(-1)^(2/3)*a^(2/3)*atan(((-1)^(1/3)*b^(1/3) - a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*b^(4/3)*d)) + (2*a^(2/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*b^(4/3)*d) - (2*(-1)^(1/3)*a^(2/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*b^(4/3)*d) - cos(c + d*x)/(b*d)]
    @test_int [sin(c + d*x)^2/(a + b*sin(c + d*x)^3), x, 11, (2*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*b^(2/3)*d) - (2*atanh((b^(1/3) - (-1)^(1/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))))/(3*sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))*b^(2/3)*d) - (2*atanh((b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))*b^(2/3)*d)]
    @test_int [sin(c + d*x)^0/(a + b*sin(c + d*x)^3), x, 11, (2*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - b^(2/3))*d) + (2*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*d) - (2*atan(((-1)^(1/3)*(b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x))))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*d)]
    @test_int [csc(c + d*x)^2/(a + b*sin(c + d*x)^3), x, 15, -((2*(-1)^(2/3)*b^(2/3)*atan(((-1)^(1/3)*b^(1/3) - a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(4/3)*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*d)) + (2*b^(2/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(4/3)*sqrt(a^(2/3) - b^(2/3))*d) - (2*(-1)^(1/3)*b^(2/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(4/3)*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*d) - cot(c + d*x)/(a*d)]
    @test_int [csc(c + d*x)^4/(a + b*sin(c + d*x)^3), x, 16, (2*b^(4/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^2*sqrt(a^(2/3) - b^(2/3))*d) + (b*atanh(cos(c + d*x)))/(a^2*d) - (2*b^(4/3)*atanh((b^(1/3) - (-1)^(1/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))))/(3*a^2*sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))*d) - (2*b^(4/3)*atanh((b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))))/(3*a^2*sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))*d) - cot(c + d*x)/(a*d) - cot(c + d*x)^3/(3*a*d)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sin(e+f*x)^3)^(p/2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*sin(e+f*x)^4)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sin(e+f*x)^4)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(c + d*x)^9/(a - b*sin(c + d*x)^4), x, 6, -(a^(3/2)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*sqrt(sqrt(a) - sqrt(b))*b^(9/4)*d) - (a^(3/2)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*sqrt(sqrt(a) + sqrt(b))*b^(9/4)*d) + ((a + b)*cos(c + d*x))/(b^2*d) - (2*cos(c + d*x)^3)/(3*b*d) + cos(c + d*x)^5/(5*b*d)]
    @test_int [sin(c + d*x)^7/(a - b*sin(c + d*x)^4), x, 6, -((a*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*sqrt(sqrt(a) - sqrt(b))*b^(7/4)*d)) + (a*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*sqrt(sqrt(a) + sqrt(b))*b^(7/4)*d) + cos(c + d*x)/(b*d) - cos(c + d*x)^3/(3*b*d)]
    @test_int [sin(c + d*x)^5/(a - b*sin(c + d*x)^4), x, 6, -((sqrt(a)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*sqrt(sqrt(a) - sqrt(b))*b^(5/4)*d)) - (sqrt(a)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*sqrt(sqrt(a) + sqrt(b))*b^(5/4)*d) + cos(c + d*x)/(b*d)]
    @test_int [sin(c + d*x)^3/(a - b*sin(c + d*x)^4), x, 4, -(atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b)))/(2*sqrt(sqrt(a) - sqrt(b))*b^(3/4)*d)) + atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b)))/(2*sqrt(sqrt(a) + sqrt(b))*b^(3/4)*d)]
    @test_int [sin(c + d*x)^1/(a - b*sin(c + d*x)^4), x, 4, -(atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b)))/(2*sqrt(a)*sqrt(sqrt(a) - sqrt(b))*b^(1/4)*d)) - atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b)))/(2*sqrt(a)*sqrt(sqrt(a) + sqrt(b))*b^(1/4)*d)]
    @test_int [csc(c + d*x)^1/(a - b*sin(c + d*x)^4), x, 7, -((b^(1/4)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*a*sqrt(sqrt(a) - sqrt(b))*d)) - atanh(cos(c + d*x))/(a*d) + (b^(1/4)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*a*sqrt(sqrt(a) + sqrt(b))*d)]
    @test_int [csc(c + d*x)^3/(a - b*sin(c + d*x)^4), x, 7, -((b^(3/4)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*a^(3/2)*sqrt(sqrt(a) - sqrt(b))*d)) - atanh(cos(c + d*x))/(2*a*d) - (b^(3/4)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*a^(3/2)*sqrt(sqrt(a) + sqrt(b))*d) - 1/(4*a*d*(1 - cos(c + d*x))) + 1/(4*a*d*(1 + cos(c + d*x)))]
    @test_int [csc(c + d*x)^5/(a - b*sin(c + d*x)^4), x, 7, -(b^(5/4)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*a^2*sqrt(sqrt(a) - sqrt(b))*d) - ((3*a + 8*b)*atanh(cos(c + d*x)))/(8*a^2*d) + (b^(5/4)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*a^2*sqrt(sqrt(a) + sqrt(b))*d) - 1/(16*a*d*(1 - cos(c + d*x))^2) - 3/(16*a*d*(1 - cos(c + d*x))) + 1/(16*a*d*(1 + cos(c + d*x))^2) + 3/(16*a*d*(1 + cos(c + d*x)))]

    @test_int [sin(c + d*x)^8/(a - b*sin(c + d*x)^4), x, 12, (5*x)/(8*b) - ((a + b)*x)/b^2 + (a^(5/4)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) - sqrt(b))*b^2*d) + (a^(5/4)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) + sqrt(b))*b^2*d) + (5*cos(c + d*x)*sin(c + d*x))/(8*b*d) - (cos(c + d*x)^3*sin(c + d*x))/(4*b*d)]
    @test_int [sin(c + d*x)^6/(a - b*sin(c + d*x)^4), x, 9, -(x/(2*b)) + (a^(3/4)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) - sqrt(b))*b^(3/2)*d) - (a^(3/4)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) + sqrt(b))*b^(3/2)*d) + (cos(c + d*x)*sin(c + d*x))/(2*b*d)]
    @test_int [sin(c + d*x)^4/(a - b*sin(c + d*x)^4), x, 7, -(x/b) + (a^(1/4)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) - sqrt(b))*b*d) + (a^(1/4)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) + sqrt(b))*b*d)]
    @test_int [sin(c + d*x)^2/(a - b*sin(c + d*x)^4), x, 4, atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4))/(2*a^(1/4)*sqrt(sqrt(a) - sqrt(b))*sqrt(b)*d) - atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4))/(2*a^(1/4)*sqrt(sqrt(a) + sqrt(b))*sqrt(b)*d)]
    @test_int [sin(c + d*x)^0/(a - b*sin(c + d*x)^4), x, 4, atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4))/(2*a^(3/4)*sqrt(sqrt(a) - sqrt(b))*d) + atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4))/(2*a^(3/4)*sqrt(sqrt(a) + sqrt(b))*d)]
    @test_int [csc(c + d*x)^2/(a - b*sin(c + d*x)^4), x, 6, (sqrt(b)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(5/4)*sqrt(sqrt(a) - sqrt(b))*d) - (sqrt(b)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(5/4)*sqrt(sqrt(a) + sqrt(b))*d) - cot(c + d*x)/(a*d)]
    @test_int [csc(c + d*x)^4/(a - b*sin(c + d*x)^4), x, 6, (b*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(7/4)*sqrt(sqrt(a) - sqrt(b))*d) + (b*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(7/4)*sqrt(sqrt(a) + sqrt(b))*d) - cot(c + d*x)/(a*d) - cot(c + d*x)^3/(3*a*d)]
    @test_int [csc(c + d*x)^6/(a - b*sin(c + d*x)^4), x, 6, (b^(3/2)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(9/4)*sqrt(sqrt(a) - sqrt(b))*d) - (b^(3/2)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(9/4)*sqrt(sqrt(a) + sqrt(b))*d) - ((a + b)*cot(c + d*x))/(a^2*d) - (2*cot(c + d*x)^3)/(3*a*d) - cot(c + d*x)^5/(5*a*d)]
    @test_int [csc(c + d*x)^8/(a - b*sin(c + d*x)^4), x, 6, (b^2*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(11/4)*sqrt(sqrt(a) - sqrt(b))*d) + (b^2*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(11/4)*sqrt(sqrt(a) + sqrt(b))*d) - ((a + b)*cot(c + d*x))/(a^2*d) - ((3*a + b)*cot(c + d*x)^3)/(3*a^2*d) - (3*cot(c + d*x)^5)/(5*a*d) - cot(c + d*x)^7/(7*a*d)]


    @test_int [sin(c + d*x)^9/(a - b*sin(c + d*x)^4)^2, x, 7, (sqrt(a)*(5*sqrt(a) - 6*sqrt(b))*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*(sqrt(a) - sqrt(b))^(3/2)*b^(9/4)*d) + (sqrt(a)*(5*sqrt(a) + 6*sqrt(b))*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*(sqrt(a) + sqrt(b))^(3/2)*b^(9/4)*d) - cos(c + d*x)/(b^2*d) - (a*cos(c + d*x)*(a + b - b*cos(c + d*x)^2))/(4*(a - b)*b^2*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^7/(a - b*sin(c + d*x)^4)^2, x, 5, ((3*sqrt(a) - 4*sqrt(b))*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*(sqrt(a) - sqrt(b))^(3/2)*b^(7/4)*d) - ((3*sqrt(a) + 4*sqrt(b))*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*(sqrt(a) + sqrt(b))^(3/2)*b^(7/4)*d) - (a*cos(c + d*x)*(2 - cos(c + d*x)^2))/(4*(a - b)*b*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^5/(a - b*sin(c + d*x)^4)^2, x, 5, ((sqrt(a) - 2*sqrt(b))*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*sqrt(a)*(sqrt(a) - sqrt(b))^(3/2)*b^(5/4)*d) + ((sqrt(a) + 2*sqrt(b))*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*sqrt(a)*(sqrt(a) + sqrt(b))^(3/2)*b^(5/4)*d) - (cos(c + d*x)*(a + b - b*cos(c + d*x)^2))/(4*(a - b)*b*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^3/(a - b*sin(c + d*x)^4)^2, x, 5, -(atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b)))/(8*sqrt(a)*(sqrt(a) - sqrt(b))^(3/2)*b^(3/4)*d)) + atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b)))/(8*sqrt(a)*(sqrt(a) + sqrt(b))^(3/2)*b^(3/4)*d) - (cos(c + d*x)*(2 - cos(c + d*x)^2))/(4*(a - b)*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^1/(a - b*sin(c + d*x)^4)^2, x, 5, -(((3*sqrt(a) - 2*sqrt(b))*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*a^(3/2)*(sqrt(a) - sqrt(b))^(3/2)*b^(1/4)*d)) - ((3*sqrt(a) + 2*sqrt(b))*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*a^(3/2)*(sqrt(a) + sqrt(b))^(3/2)*b^(1/4)*d) - (cos(c + d*x)*(a + b - b*cos(c + d*x)^2))/(4*a*(a - b)*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [csc(c + d*x)^1/(a - b*sin(c + d*x)^4)^2, x, 11, -((b^(1/4)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*a^(3/2)*(sqrt(a) - sqrt(b))^(3/2)*d)) - (b^(1/4)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*a^2*sqrt(sqrt(a) - sqrt(b))*d) - atanh(cos(c + d*x))/(a^2*d) + (b^(1/4)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*a^(3/2)*(sqrt(a) + sqrt(b))^(3/2)*d) + (b^(1/4)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*a^2*sqrt(sqrt(a) + sqrt(b))*d) - (b*cos(c + d*x)*(2 - cos(c + d*x)^2))/(4*a*(a - b)*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]

    @test_int [sin(c + d*x)^8/(a - b*sin(c + d*x)^4)^2, x, 14, x/b^2 - (a^(1/4)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) - sqrt(b))*b^2*d) + (a^(1/4)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*(sqrt(a) - sqrt(b))^(3/2)*b^(3/2)*d) - (a^(1/4)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) + sqrt(b))*b^2*d) - (a^(1/4)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*(sqrt(a) + sqrt(b))^(3/2)*b^(3/2)*d) - tan(c + d*x)/(4*(a - b)*b*d) + tan(c + d*x)^5/(4*b*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [sin(c + d*x)^6/(a - b*sin(c + d*x)^4)^2, x, 6, -(((2*sqrt(a) - 3*sqrt(b))*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*a^(1/4)*(sqrt(a) - sqrt(b))^(3/2)*b^(3/2)*d)) + ((2*sqrt(a) + 3*sqrt(b))*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*a^(1/4)*(sqrt(a) + sqrt(b))^(3/2)*b^(3/2)*d) - tan(c + d*x)/(4*(a - b)*b*d) + (sec(c + d*x)^2*tan(c + d*x)^3)/(4*b*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [sin(c + d*x)^4/(a - b*sin(c + d*x)^4)^2, x, 7, atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4))/(8*a^(3/4)*(sqrt(a) - sqrt(b))^(3/2)*sqrt(b)*d) - atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4))/(8*a^(3/4)*(sqrt(a) + sqrt(b))^(3/2)*sqrt(b)*d) - tan(c + d*x)/(4*a*(a - b)*d) + tan(c + d*x)^5/(4*a*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [sin(c + d*x)^2/(a - b*sin(c + d*x)^4)^2, x, 5, ((2*sqrt(a) - sqrt(b))*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*a^(5/4)*(sqrt(a) - sqrt(b))^(3/2)*sqrt(b)*d) - ((2*sqrt(a) + sqrt(b))*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*a^(5/4)*(sqrt(a) + sqrt(b))^(3/2)*sqrt(b)*d) - (tan(c + d*x)*(a + (a + b)*tan(c + d*x)^2))/(4*a*(a - b)*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [sin(c + d*x)^0/(a - b*sin(c + d*x)^4)^2, x, 5, ((4*sqrt(a) - 3*sqrt(b))*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*a^(7/4)*(sqrt(a) - sqrt(b))^(3/2)*d) + ((4*sqrt(a) + 3*sqrt(b))*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*a^(7/4)*(sqrt(a) + sqrt(b))^(3/2)*d) - (b*tan(c + d*x)*(1 + 2*tan(c + d*x)^2))/(4*a*(a - b)*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [csc(c + d*x)^2/(a - b*sin(c + d*x)^4)^2, x, 7, ((6*sqrt(a) - 5*sqrt(b))*sqrt(b)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*a^(9/4)*(sqrt(a) - sqrt(b))^(3/2)*d) - ((6*sqrt(a) + 5*sqrt(b))*sqrt(b)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(8*a^(9/4)*(sqrt(a) + sqrt(b))^(3/2)*d) - cot(c + d*x)/(a^2*d) - (b*tan(c + d*x)*(a + (a + b)*tan(c + d*x)^2))/(4*a^2*(a - b)*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]


    @test_int [sin(c + d*x)^9/(a - b*sin(c + d*x)^4)^3, x, 6, -(((5*a - 14*sqrt(a)*sqrt(b) + 12*b)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*sqrt(a)*(sqrt(a) - sqrt(b))^(5/2)*b^(9/4)*d)) - ((5*a + 14*sqrt(a)*sqrt(b) + 12*b)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*sqrt(a)*(sqrt(a) + sqrt(b))^(5/2)*b^(9/4)*d) - (a*cos(c + d*x)*(a + b - b*cos(c + d*x)^2))/(8*(a - b)*b^2*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4)^2) + (cos(c + d*x)*(9*a^2 - 11*a*b - 10*b^2 - 2*(2*a - 5*b)*b*cos(c + d*x)^2))/(32*(a - b)^2*b^2*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^7/(a - b*sin(c + d*x)^4)^3, x, 6, (3*(sqrt(a) - 2*sqrt(b))*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*sqrt(a)*(sqrt(a) - sqrt(b))^(5/2)*b^(7/4)*d) - (3*(sqrt(a) + 2*sqrt(b))*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*sqrt(a)*(sqrt(a) + sqrt(b))^(5/2)*b^(7/4)*d) - (a*cos(c + d*x)*(2 - cos(c + d*x)^2))/(8*(a - b)*b*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4)^2) + (cos(c + d*x)*(5*a - 17*b - 3*(a - 3*b)*cos(c + d*x)^2))/(32*(a - b)^2*b*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^5/(a - b*sin(c + d*x)^4)^3, x, 6, ((3*a - 10*sqrt(a)*sqrt(b) + 4*b)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*a^(3/2)*(sqrt(a) - sqrt(b))^(5/2)*b^(5/4)*d) + ((3*a + 10*sqrt(a)*sqrt(b) + 4*b)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*a^(3/2)*(sqrt(a) + sqrt(b))^(5/2)*b^(5/4)*d) - (cos(c + d*x)*(a + b - b*cos(c + d*x)^2))/(8*(a - b)*b*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4)^2) + (cos(c + d*x)*(a^2 - 11*a*b - 2*b^2 + 2*b*(2*a + b)*cos(c + d*x)^2))/(32*a*(a - b)^2*b*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^3/(a - b*sin(c + d*x)^4)^3, x, 6, -(((5*sqrt(a) - 2*sqrt(b))*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*a^(3/2)*(sqrt(a) - sqrt(b))^(5/2)*b^(3/4)*d)) + ((5*sqrt(a) + 2*sqrt(b))*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*a^(3/2)*(sqrt(a) + sqrt(b))^(5/2)*b^(3/4)*d) - (cos(c + d*x)*(2 - cos(c + d*x)^2))/(8*(a - b)*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4)^2) - (cos(c + d*x)*(11*a + b - (5*a + b)*cos(c + d*x)^2))/(32*a*(a - b)^2*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^1/(a - b*sin(c + d*x)^4)^3, x, 6, -((3*(7*a - 10*sqrt(a)*sqrt(b) + 4*b)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*a^(5/2)*(sqrt(a) - sqrt(b))^(5/2)*b^(1/4)*d)) - (3*(7*a + 10*sqrt(a)*sqrt(b) + 4*b)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*a^(5/2)*(sqrt(a) + sqrt(b))^(5/2)*b^(1/4)*d) - (cos(c + d*x)*(a + b - b*cos(c + d*x)^2))/(8*a*(a - b)*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4)^2) - (cos(c + d*x)*((7*a - 3*b)*(a + 2*b) - 6*(2*a - b)*b*cos(c + d*x)^2))/(32*a^2*(a - b)^2*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]
    @test_int [csc(c + d*x)^1/(a - b*sin(c + d*x)^4)^3, x, 16, -(((5*sqrt(a) - 2*sqrt(b))*b^(1/4)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*a^(5/2)*(sqrt(a) - sqrt(b))^(5/2)*d)) - (b^(1/4)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*a^(5/2)*(sqrt(a) - sqrt(b))^(3/2)*d) - (b^(1/4)*atan((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*a^3*sqrt(sqrt(a) - sqrt(b))*d) - atanh(cos(c + d*x))/(a^3*d) + (b^(1/4)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*a^(5/2)*(sqrt(a) + sqrt(b))^(3/2)*d) + (b^(1/4)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*a^3*sqrt(sqrt(a) + sqrt(b))*d) + ((5*sqrt(a) + 2*sqrt(b))*b^(1/4)*atanh((b^(1/4)*cos(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*a^(5/2)*(sqrt(a) + sqrt(b))^(5/2)*d) - (b*cos(c + d*x)*(2 - cos(c + d*x)^2))/(8*a*(a - b)*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4)^2) - (b*cos(c + d*x)*(2 - cos(c + d*x)^2))/(4*a^2*(a - b)*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4)) - (b*cos(c + d*x)*(11*a + b - (5*a + b)*cos(c + d*x)^2))/(32*a^2*(a - b)^2*d*(a - b + 2*b*cos(c + d*x)^2 - b*cos(c + d*x)^4))]

    @test_int [sin(c + d*x)^8/(a - b*sin(c + d*x)^4)^3, x, 9, -(((2*sqrt(a) - 5*sqrt(b))*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(3/4)*(sqrt(a) - sqrt(b))^(5/2)*b^(3/2)*d)) + ((2*sqrt(a) + 5*sqrt(b))*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(3/4)*(sqrt(a) + sqrt(b))^(5/2)*b^(3/2)*d) - ((a + 5*b)*tan(c + d*x))/(32*a*(a - b)^2*b*d) + tan(c + d*x)^3/(32*a*(a - b)*b*d) + tan(c + d*x)^9/(8*a*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4)^2) - (sec(c + d*x)^2*tan(c + d*x)^5)/(32*a*b*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [sin(c + d*x)^6/(a - b*sin(c + d*x)^4)^3, x, 6, -(((4*a - 10*sqrt(a)*sqrt(b) + 3*b)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(5/4)*(sqrt(a) - sqrt(b))^(5/2)*b^(3/2)*d)) + ((4*a + 10*sqrt(a)*sqrt(b) + 3*b)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(5/4)*(sqrt(a) + sqrt(b))^(5/2)*b^(3/2)*d) - (tan(c + d*x)*(a*(a + 3*b) + (a^2 + 6*a*b + b^2)*tan(c + d*x)^2))/(8*(a - b)^3*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4)^2) - (tan(c + d*x)*((2*a*(a^2 - a*b - 8*b^2))/(a - b)^3 + ((2*a^2 + 15*a*b + 3*b^2)*tan(c + d*x)^2)/(a - b)^2))/(32*a*b*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [sin(c + d*x)^4/(a - b*sin(c + d*x)^4)^3, x, 6, (3*(2*sqrt(a) - sqrt(b))*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(7/4)*(sqrt(a) - sqrt(b))^(5/2)*sqrt(b)*d) - (3*(2*sqrt(a) + sqrt(b))*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(7/4)*(sqrt(a) + sqrt(b))^(5/2)*sqrt(b)*d) - (b*tan(c + d*x)*(3*a + b + 4*(a + b)*tan(c + d*x)^2))/(8*(a - b)^3*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4)^2) - (tan(c + d*x)*((9*a^2 - 24*a*b - b^2)/(a - b)^3 + ((17*a + 3*b)*tan(c + d*x)^2)/(a - b)^2))/(32*a*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [sin(c + d*x)^2/(a - b*sin(c + d*x)^4)^3, x, 6, ((12*a - 14*sqrt(a)*sqrt(b) + 5*b)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(9/4)*(sqrt(a) - sqrt(b))^(5/2)*sqrt(b)*d) - ((12*a + 14*sqrt(a)*sqrt(b) + 5*b)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(9/4)*(sqrt(a) + sqrt(b))^(5/2)*sqrt(b)*d) - (b*tan(c + d*x)*(a*(a + 3*b) + (a^2 + 6*a*b + b^2)*tan(c + d*x)^2))/(8*a*(a - b)^3*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4)^2) - (tan(c + d*x)*((2*a*(5*a^2 - 9*a*b - 4*b^2))/(a - b)^3 + (5*(2*a^2 + 3*a*b - b^2)*tan(c + d*x)^2)/(a - b)^2))/(32*a^2*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [sin(c + d*x)^0/(a - b*sin(c + d*x)^4)^3, x, 6, ((32*a - 50*sqrt(a)*sqrt(b) + 21*b)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(11/4)*(sqrt(a) - sqrt(b))^(5/2)*d) + ((32*a + 50*sqrt(a)*sqrt(b) + 21*b)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(11/4)*(sqrt(a) + sqrt(b))^(5/2)*d) - (b^2*tan(c + d*x)*(3*a + b + 4*(a + b)*tan(c + d*x)^2))/(8*a*(a - b)^3*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4)^2) - (b*tan(c + d*x)*((17*a^2 - 40*a*b + 7*b^2)/(a - b)^3 + ((33*a - 13*b)*tan(c + d*x)^2)/(a - b)^2))/(32*a^2*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]
    @test_int [csc(c + d*x)^2/(a - b*sin(c + d*x)^4)^3, x, 8, (3*sqrt(b)*(20*a - 34*sqrt(a)*sqrt(b) + 15*b)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(13/4)*(sqrt(a) - sqrt(b))^(5/2)*d) - (3*sqrt(b)*(20*a + 34*sqrt(a)*sqrt(b) + 15*b)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(64*a^(13/4)*(sqrt(a) + sqrt(b))^(5/2)*d) - cot(c + d*x)/(a^3*d) - (b^2*tan(c + d*x)*(a*(a + 3*b) + (a^2 + 6*a*b + b^2)*tan(c + d*x)^2))/(8*a^2*(a - b)^3*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4)^2) - (b*tan(c + d*x)*((2*a^2*(9*a - 17*b))/(a - b)^3 + ((18*a^2 + 15*a*b - 13*b^2)*tan(c + d*x)^2)/(a - b)^2))/(32*a^3*d*(a + 2*a*tan(c + d*x)^2 + (a - b)*tan(c + d*x)^4))]


    @test_int [1/(1 - sin(x)^4), x, 3, atan(sqrt(2)*tan(x))/(2*sqrt(2)) + tan(x)/2, x/(2*sqrt(2)) + atan((cos(x)*sin(x))/(1 + sqrt(2) + sin(x)^2))/(2*sqrt(2)) + tan(x)/2]


    @test_int [1/(a + b*sin(x)^4), x, 10, -(((sqrt(a) + sqrt(a + b))*atan((a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b)) - sqrt(2)*(a + b)^(3/4)*tan(x))/(a^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b)))))/(2*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b)))) + ((sqrt(a) + sqrt(a + b))*atan((a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b)) + sqrt(2)*(a + b)^(3/4)*tan(x))/(a^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b)))))/(2*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b))) + ((sqrt(a) - sqrt(a + b))*log(sqrt(a)*(a + b)^(1/4) - sqrt(2)*a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b))*tan(x) + (a + b)^(3/4)*tan(x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b))) - ((sqrt(a) - sqrt(a + b))*log(sqrt(a)*(a + b)^(1/4) + sqrt(2)*a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b))*tan(x) + (a + b)^(3/4)*tan(x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b)))]


    @test_int [1/(1 + sin(x)^4), x, 10, x/(2*sqrt(-1 + sqrt(2))) + atan((sqrt(-1 + sqrt(2)) - 2*sqrt(-1 + sqrt(2))*cos(x)^2 - (-2 + sqrt(2))*cos(x)*sin(x))/(2 + sqrt(1 + sqrt(2)) + (-2 + sqrt(2))*cos(x)^2 - 2*sqrt(-1 + sqrt(2))*cos(x)*sin(x)))/(4*sqrt(-1 + sqrt(2))) - atan((sqrt(-1 + sqrt(2)) - 2*sqrt(-1 + sqrt(2))*cos(x)^2 + (-2 + sqrt(2))*cos(x)*sin(x))/(2 + sqrt(1 + sqrt(2)) + (-2 + sqrt(2))*cos(x)^2 + 2*sqrt(-1 + sqrt(2))*cos(x)*sin(x)))/(4*sqrt(-1 + sqrt(2))) - (1/8)*sqrt(-1 + sqrt(2))*log(sqrt(2) - 2*sqrt(-1 + sqrt(2))*tan(x) + 2*tan(x)^2) + (1/8)*sqrt(-1 + sqrt(2))*log(1 + sqrt(2*(-1 + sqrt(2)))*tan(x) + sqrt(2)*tan(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sin(e+f*x)^4)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sin(c + d*x)*sqrt(a + b*sin(c + d*x)^4), x, 5, -((cos(c + d*x)*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))/(3*d)) + (2*sqrt(b)*cos(c + d*x)*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))/(3*sqrt(a + b)*d*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))) - (2*b^(1/4)*(a + b)^(3/4)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticE(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(3*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)) + ((a + b)^(3/4)*(sqrt(b) - sqrt(a + b))*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticF(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(3*b^(1/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))]
    @test_int [csc(c + d*x)*sqrt(a + b*sin(c + d*x)^4), x, 8, (sqrt(-a)*atan((sqrt(-a)*cos(c + d*x))/sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)))/(2*d) + (sqrt(b)*cos(c + d*x)*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))/(sqrt(a + b)*d*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))) - (b^(1/4)*(a + b)^(3/4)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticE(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)) - ((a + b)^(1/4)*(sqrt(b) - sqrt(a + b))^2*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticPi((sqrt(b) + sqrt(a + b))^2/(4*sqrt(b)*sqrt(a + b)), 2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(4*b^(1/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(c + d*x)^5/sqrt(a + b*sin(c + d*x)^4), x, 5, -((cos(c + d*x)*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))/(3*b*d)) + (2*cos(c + d*x)*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))/(3*sqrt(b)*sqrt(a + b)*d*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))) - (2*(a + b)^(3/4)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticE(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(3*b^(3/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)) + ((a + b)^(1/4)*(a - 2*b + 2*sqrt(b)*sqrt(a + b))*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticF(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(6*b^(5/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^3/sqrt(a + b*sin(c + d*x)^4), x, 4, (cos(c + d*x)*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))/(sqrt(b)*sqrt(a + b)*d*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))) - ((a + b)^(3/4)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticE(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(b^(3/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)) - ((a + b)^(1/4)*(sqrt(b) - sqrt(a + b))*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticF(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(2*b^(3/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))]
    @test_int [sin(c + d*x)^1/sqrt(a + b*sin(c + d*x)^4), x, 2, -(((a + b)^(1/4)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticF(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(2*b^(1/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)))]
    @test_int [csc(c + d*x)^1/sqrt(a + b*sin(c + d*x)^4), x, 4, -(atan((sqrt(-a)*cos(c + d*x))/sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))/(2*sqrt(-a)*d)) + (b^(1/4)*(a + b)^(1/4)*(sqrt(b) - sqrt(a + b))*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticF(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(2*a*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)) - ((a + b)^(1/4)*(sqrt(b) - sqrt(a + b))^2*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticPi((sqrt(b) + sqrt(a + b))^2/(4*sqrt(b)*sqrt(a + b)), 2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(4*a*b^(1/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))]
    @test_int [csc(c + d*x)^3/sqrt(a + b*sin(c + d*x)^4), x, 7, -(atan((sqrt(-a)*cos(c + d*x))/sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))/(4*sqrt(-a)*d)) - (sqrt(b)*cos(c + d*x)*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))/(2*a*sqrt(a + b)*d*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))) - (sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)*cot(c + d*x)*csc(c + d*x))/(2*a*d) + (b^(1/4)*(a + b)^(3/4)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticE(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(2*a*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)) - (b^(1/4)*(a + b - sqrt(b)*sqrt(a + b))*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticF(2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(2*a*(a + b)^(1/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)) - ((a + b)^(1/4)*(sqrt(b) - sqrt(a + b))^2*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))*sqrt((a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4)/((a + b)*(1 + (sqrt(b)*cos(c + d*x)^2)/sqrt(a + b))^2))*EllipticPi((sqrt(b) + sqrt(a + b))^2/(4*sqrt(b)*sqrt(a + b)), 2*atan((b^(1/4)*cos(c + d*x))/(a + b)^(1/4)), (1/2)*(1 + sqrt(b)/sqrt(a + b))))/(8*a*b^(1/4)*d*sqrt(a + b - 2*b*cos(c + d*x)^2 + b*cos(c + d*x)^4))]

    @test_int [sin(c + d*x)^2/sqrt(a + b*sin(c + d*x)^4), x, 4, -((atan((sqrt(b)*tan(c + d*x))/sqrt(a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4))*cos(c + d*x)^2*sqrt(a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4))/(2*sqrt(b)*d*sqrt(a + b*sin(c + d*x)^4))) - (a^(1/4)*(sqrt(a) + sqrt(a + b))*cos(c + d*x)^2*EllipticF(2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/(2*b*(a + b)^(1/4)*d*sqrt(a + b*sin(c + d*x)^4)) + ((sqrt(a) + sqrt(a + b))^2*cos(c + d*x)^2*EllipticPi(-((sqrt(a) - sqrt(a + b))^2/(4*sqrt(a)*sqrt(a + b))), 2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/(4*a^(1/4)*b*(a + b)^(1/4)*d*sqrt(a + b*sin(c + d*x)^4))]
    @test_int [sin(c + d*x)^0/sqrt(a + b*sin(c + d*x)^4), x, 2, (cos(c + d*x)^2*EllipticF(2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/(2*a^(1/4)*(a + b)^(1/4)*d*sqrt(a + b*sin(c + d*x)^4))]
    @test_int [csc(c + d*x)^2/sqrt(a + b*sin(c + d*x)^4), x, 5, -((cos(c + d*x)^2*cot(c + d*x)*(a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4))/(a*d*sqrt(a + b*sin(c + d*x)^4))) + (sqrt(a + b)*cos(c + d*x)*sin(c + d*x)*(a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4))/(a*d*sqrt(a + b*sin(c + d*x)^4)*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)) - ((a + b)^(1/4)*cos(c + d*x)^2*EllipticE(2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/(a^(3/4)*d*sqrt(a + b*sin(c + d*x)^4)) + ((a + b + sqrt(a)*sqrt(a + b))*cos(c + d*x)^2*EllipticF(2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/(2*a^(3/4)*(a + b)^(3/4)*d*sqrt(a + b*sin(c + d*x)^4))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*sin(e+f*x)^n)^p=#


    @test_int [1/(a + b*sin(x)^5), x, 17, (2*atan((b^(1/5) + a^(1/5)*tan(x/2))/sqrt(a^(2/5) - b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) - b^(2/5))) + (2*atan(((-1)^(2/5)*b^(1/5) + a^(1/5)*tan(x/2))/sqrt(a^(2/5) - (-1)^(4/5)*b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) - (-1)^(4/5)*b^(2/5))) + (2*atan(((-1)^(4/5)*b^(1/5) + a^(1/5)*tan(x/2))/sqrt(a^(2/5) + (-1)^(3/5)*b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) + (-1)^(3/5)*b^(2/5))) - (2*atan(((-1)^(3/5)*(b^(1/5) + (-1)^(2/5)*a^(1/5)*tan(x/2)))/sqrt(a^(2/5) + (-1)^(1/5)*b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) + (-1)^(1/5)*b^(2/5))) - (2*atan(((-1)^(1/5)*(b^(1/5) + (-1)^(4/5)*a^(1/5)*tan(x/2)))/sqrt(a^(2/5) - (-1)^(2/5)*b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) - (-1)^(2/5)*b^(2/5)))]
    @test_int [1/(a + b*sin(x)^6), x, 7, atan((sqrt(a^(1/3) + b^(1/3))*tan(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) + b^(1/3))) + atan((sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3))*tan(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3))) + atan((sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3))*tan(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3)))]
    @test_int [1/(a + b*sin(x)^8), x, 9, -(atan((sqrt((-a)^(1/4) - b^(1/4))*tan(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) - b^(1/4)))) - atan((sqrt((-a)^(1/4) - im*b^(1/4))*tan(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) - im*b^(1/4))) - atan((sqrt((-a)^(1/4) + im*b^(1/4))*tan(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) + im*b^(1/4))) - atan((sqrt((-a)^(1/4) + b^(1/4))*tan(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) + b^(1/4)))]

    @test_int [1/(a - b*sin(x)^5), x, 17, -((2*atan((b^(1/5) - a^(1/5)*tan(x/2))/sqrt(a^(2/5) - b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) - b^(2/5)))) - (2*atan(((-1)^(2/5)*b^(1/5) - a^(1/5)*tan(x/2))/sqrt(a^(2/5) - (-1)^(4/5)*b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) - (-1)^(4/5)*b^(2/5))) - (2*atan(((-1)^(4/5)*b^(1/5) - a^(1/5)*tan(x/2))/sqrt(a^(2/5) + (-1)^(3/5)*b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) + (-1)^(3/5)*b^(2/5))) + (2*atan(((-1)^(1/5)*b^(1/5) + a^(1/5)*tan(x/2))/sqrt(a^(2/5) - (-1)^(2/5)*b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) - (-1)^(2/5)*b^(2/5))) + (2*atan(((-1)^(3/5)*b^(1/5) + a^(1/5)*tan(x/2))/sqrt(a^(2/5) + (-1)^(1/5)*b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) + (-1)^(1/5)*b^(2/5)))]
    @test_int [1/(a - b*sin(x)^6), x, 7, atan((sqrt(a^(1/3) - b^(1/3))*tan(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) - b^(1/3))) + atan((sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))*tan(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))) + atan((sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3))*tan(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3)))]
    @test_int [1/(a - b*sin(x)^8), x, 9, atan((sqrt(a^(1/4) - b^(1/4))*tan(x))/a^(1/8))/(4*a^(7/8)*sqrt(a^(1/4) - b^(1/4))) + atan((sqrt(a^(1/4) - im*b^(1/4))*tan(x))/a^(1/8))/(4*a^(7/8)*sqrt(a^(1/4) - im*b^(1/4))) + atan((sqrt(a^(1/4) + im*b^(1/4))*tan(x))/a^(1/8))/(4*a^(7/8)*sqrt(a^(1/4) + im*b^(1/4))) + atan((sqrt(a^(1/4) + b^(1/4))*tan(x))/a^(1/8))/(4*a^(7/8)*sqrt(a^(1/4) + b^(1/4)))]


    @test_int [1/(1 + sin(x)^5), x, 15, (2*atan(((-1)^(2/5) + tan(x/2))/sqrt(1 - (-1)^(4/5))))/(5*sqrt(1 - (-1)^(4/5))) + (2*atan(((-1)^(4/5) + tan(x/2))/sqrt(1 + (-1)^(3/5))))/(5*sqrt(1 + (-1)^(3/5))) - (2*atan(((-1)^(3/5)*(1 + (-1)^(2/5)*tan(x/2)))/sqrt(1 + (-1)^(1/5))))/(5*sqrt(1 + (-1)^(1/5))) - (2*atan(((-1)^(1/5)*(1 + (-1)^(4/5)*tan(x/2)))/sqrt(1 - (-1)^(2/5))))/(5*sqrt(1 - (-1)^(2/5))) - cos(x)/(5*(1 + sin(x)))]
    @test_int [1/(1 + sin(x)^6), x, 7, x/(3*sqrt(2)) + atan((cos(x)*sin(x))/(1 + sqrt(2) + sin(x)^2))/(3*sqrt(2)) + atan(sqrt(1 - (-1)^(1/3))*tan(x))/(3*sqrt(1 - (-1)^(1/3))) + atan(sqrt(1 + (-1)^(2/3))*tan(x))/(3*sqrt(1 + (-1)^(2/3)))]
    @test_int [1/(1 + sin(x)^8), x, 9, (1/8)*(sqrt(1 + sqrt(4 - 2*sqrt(2))) + sqrt(2 + 2*2^(1/4) + 2*sqrt(1 + sqrt(2)) + 2*sqrt(2 + sqrt(2))) + sqrt(1 + sqrt(4 + 2*sqrt(2))))*(x - atan(tan(x))) + atan(sqrt(1 - (-1)^(1/4))*tan(x))/(4*sqrt(1 - (-1)^(1/4))) + atan(sqrt(1 + (-1)^(1/4))*tan(x))/(4*sqrt(1 + (-1)^(1/4))) + atan(sqrt(1 - (-1)^(3/4))*tan(x))/(4*sqrt(1 - (-1)^(3/4))) + atan(sqrt(1 + (-1)^(3/4))*tan(x))/(4*sqrt(1 + (-1)^(3/4))), atan(sqrt(1 - (-1)^(1/4))*tan(x))/(4*sqrt(1 - (-1)^(1/4))) + atan(sqrt(1 + (-1)^(1/4))*tan(x))/(4*sqrt(1 + (-1)^(1/4))) + atan(sqrt(1 - (-1)^(3/4))*tan(x))/(4*sqrt(1 - (-1)^(3/4))) + atan(sqrt(1 + (-1)^(3/4))*tan(x))/(4*sqrt(1 + (-1)^(3/4)))]

    @test_int [1/(1 - sin(x)^5), x, 15, -((2*atan(((-1)^(2/5) - tan(x/2))/sqrt(1 - (-1)^(4/5))))/(5*sqrt(1 - (-1)^(4/5)))) - (2*atan(((-1)^(4/5) - tan(x/2))/sqrt(1 + (-1)^(3/5))))/(5*sqrt(1 + (-1)^(3/5))) + (2*atan(((-1)^(1/5) + tan(x/2))/sqrt(1 - (-1)^(2/5))))/(5*sqrt(1 - (-1)^(2/5))) + (2*atan(((-1)^(3/5) + tan(x/2))/sqrt(1 + (-1)^(1/5))))/(5*sqrt(1 + (-1)^(1/5))) + cos(x)/(5*(1 - sin(x)))]
    @test_int [1/(1 - sin(x)^6), x, 8, atan(sqrt(1 + (-1)^(1/3))*tan(x))/(3*sqrt(1 + (-1)^(1/3))) + atan(sqrt(1 - (-1)^(2/3))*tan(x))/(3*sqrt(1 - (-1)^(2/3))) + tan(x)/3]
    @test_int [1/(1 - sin(x)^8), x, 10, x/(4*sqrt(2)) + atan((cos(x)*sin(x))/(1 + sqrt(2) + sin(x)^2))/(4*sqrt(2)) + atan(sqrt(1 - im)*tan(x))/(4*sqrt(1 - im)) + atan(sqrt(1 + im)*tan(x))/(4*sqrt(1 + im)) + tan(x)/4]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*sin(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*sin(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*sin(e+f*x)^2)^p*when*a+b=0=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(x)^9/(a - a*sin(x)^2), x, 3, sin(x)/a - sin(x)^3/a + (3*sin(x)^5)/(5*a) - sin(x)^7/(7*a)]
    @test_int [cos(x)^7/(a - a*sin(x)^2), x, 3, sin(x)/a - (2*sin(x)^3)/(3*a) + sin(x)^5/(5*a)]
    @test_int [cos(x)^5/(a - a*sin(x)^2), x, 3, sin(x)/a - sin(x)^3/(3*a)]
    @test_int [cos(x)^3/(a - a*sin(x)^2), x, 2, sin(x)/a]
    @test_int [cos(x)^1/(a - a*sin(x)^2), x, 2, atanh(sin(x))/a]
    @test_int [sec(x)^3/(a - a*sin(x)^2), x, 4, (3*atanh(sin(x)))/(8*a) + (3*sec(x)*tan(x))/(8*a) + (sec(x)^3*tan(x))/(4*a)]

    @test_int [cos(x)^6/(a - a*sin(x)^2), x, 4, (3*x)/(8*a) + (3*cos(x)*sin(x))/(8*a) + (cos(x)^3*sin(x))/(4*a)]
    @test_int [cos(x)^4/(a - a*sin(x)^2), x, 3, x/(2*a) + (cos(x)*sin(x))/(2*a)]
    @test_int [cos(x)^2/(a - a*sin(x)^2), x, 2, x/a]
    @test_int [sec(x)^1/(a - a*sin(x)^2), x, 3, atanh(sin(x))/(2*a) + (sec(x)*tan(x))/(2*a)]
    @test_int [sec(x)^2/(a - a*sin(x)^2), x, 3, tan(x)/a + tan(x)^3/(3*a)]
    @test_int [sec(x)^4/(a - a*sin(x)^2), x, 3, tan(x)/a + (2*tan(x)^3)/(3*a) + tan(x)^5/(5*a)]


    @test_int [cos(x)^9/(a - a*sin(x)^2)^2, x, 3, sin(x)/a^2 - (2*sin(x)^3)/(3*a^2) + sin(x)^5/(5*a^2)]
    @test_int [cos(x)^7/(a - a*sin(x)^2)^2, x, 3, sin(x)/a^2 - sin(x)^3/(3*a^2)]
    @test_int [cos(x)^5/(a - a*sin(x)^2)^2, x, 2, sin(x)/a^2]
    @test_int [cos(x)^3/(a - a*sin(x)^2)^2, x, 2, atanh(sin(x))/a^2]
    @test_int [cos(x)^1/(a - a*sin(x)^2)^2, x, 3, atanh(sin(x))/(2*a^2) + (sec(x)*tan(x))/(2*a^2)]
    @test_int [sec(x)^1/(a - a*sin(x)^2)^2, x, 4, (3*atanh(sin(x)))/(8*a^2) + (3*sec(x)*tan(x))/(8*a^2) + (sec(x)^3*tan(x))/(4*a^2)]

    @test_int [cos(x)^8/(a - a*sin(x)^2)^2, x, 4, (3*x)/(8*a^2) + (3*cos(x)*sin(x))/(8*a^2) + (cos(x)^3*sin(x))/(4*a^2)]
    @test_int [cos(x)^6/(a - a*sin(x)^2)^2, x, 3, x/(2*a^2) + (cos(x)*sin(x))/(2*a^2)]
    @test_int [cos(x)^4/(a - a*sin(x)^2)^2, x, 2, x/a^2]
    @test_int [cos(x)^2/(a - a*sin(x)^2)^2, x, 3, tan(x)/a^2]
    @test_int [sec(x)^2/(a - a*sin(x)^2)^2, x, 3, tan(x)/a^2 + (2*tan(x)^3)/(3*a^2) + tan(x)^5/(5*a^2)]
    @test_int [sec(x)^4/(a - a*sin(x)^2)^2, x, 3, tan(x)/a^2 + tan(x)^3/a^2 + (3*tan(x)^5)/(5*a^2) + tan(x)^7/(7*a^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*sin(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cos(e + f*x)^6*(a + b*sin(e + f*x)^2), x, 6, (5/128)*(8*a + b)*x + (5*(8*a + b)*cos(e + f*x)*sin(e + f*x))/(128*f) + (5*(8*a + b)*cos(e + f*x)^3*sin(e + f*x))/(192*f) + ((8*a + b)*cos(e + f*x)^5*sin(e + f*x))/(48*f) - (b*cos(e + f*x)^7*sin(e + f*x))/(8*f)]
    @test_int [cos(e + f*x)^4*(a + b*sin(e + f*x)^2), x, 5, (1/16)*(6*a + b)*x + ((6*a + b)*cos(e + f*x)*sin(e + f*x))/(16*f) + ((6*a + b)*cos(e + f*x)^3*sin(e + f*x))/(24*f) - (b*cos(e + f*x)^5*sin(e + f*x))/(6*f)]
    @test_int [cos(e + f*x)^2*(a + b*sin(e + f*x)^2), x, 4, (1/8)*(4*a + b)*x + ((4*a + b)*cos(e + f*x)*sin(e + f*x))/(8*f) - (b*cos(e + f*x)^3*sin(e + f*x))/(4*f)]
    @test_int [cos(e + f*x)^0*(a + b*sin(e + f*x)^2), x, 3, a*x + (b*x)/2 - (b*cos(e + f*x)*sin(e + f*x))/(2*f)]
    @test_int [sec(e + f*x)^2*(a + b*sin(e + f*x)^2), x, 3, (-b)*x + ((a + b)*tan(e + f*x))/f]
    @test_int [sec(e + f*x)^4*(a + b*sin(e + f*x)^2), x, 2, (a*tan(e + f*x))/f + ((a + b)*tan(e + f*x)^3)/(3*f)]
    @test_int [sec(e + f*x)^6*(a + b*sin(e + f*x)^2), x, 3, (a*tan(e + f*x))/f + ((2*a + b)*tan(e + f*x)^3)/(3*f) + ((a + b)*tan(e + f*x)^5)/(5*f)]
    @test_int [sec(e + f*x)^8*(a + b*sin(e + f*x)^2), x, 3, (a*tan(e + f*x))/f + ((3*a + b)*tan(e + f*x)^3)/(3*f) + ((3*a + 2*b)*tan(e + f*x)^5)/(5*f) + ((a + b)*tan(e + f*x)^7)/(7*f)]


    @test_int [cos(e + f*x)^4*(a + b*sin(e + f*x)^2)^2, x, 6, (1/128)*(48*a^2 + 16*a*b + 3*b^2)*x + ((48*a^2 + 16*a*b + 3*b^2)*cos(e + f*x)*sin(e + f*x))/(128*f) + ((48*a^2 + 16*a*b + 3*b^2)*cos(e + f*x)^3*sin(e + f*x))/(192*f) - (b*(10*a + 3*b)*cos(e + f*x)^5*sin(e + f*x))/(48*f) - (b*cos(e + f*x)^7*sin(e + f*x)*(a + (a + b)*tan(e + f*x)^2))/(8*f)]
    @test_int [cos(e + f*x)^2*(a + b*sin(e + f*x)^2)^2, x, 5, (1/16)*(8*a^2 + 4*a*b + b^2)*x + ((8*a^2 + 4*a*b + b^2)*cos(e + f*x)*sin(e + f*x))/(16*f) - (b*(8*a + 3*b)*cos(e + f*x)^3*sin(e + f*x))/(24*f) - (b*cos(e + f*x)^5*sin(e + f*x)*(a + (a + b)*tan(e + f*x)^2))/(6*f)]
    @test_int [cos(e + f*x)^0*(a + b*sin(e + f*x)^2)^2, x, 1, (1/8)*(8*a^2 + 8*a*b + 3*b^2)*x - (b*(8*a + 3*b)*cos(e + f*x)*sin(e + f*x))/(8*f) - (b^2*cos(e + f*x)*sin(e + f*x)^3)/(4*f)]
    @test_int [sec(e + f*x)^2*(a + b*sin(e + f*x)^2)^2, x, 5, (-(1/2))*b*(4*a + 3*b)*x + (b^2*cos(e + f*x)*sin(e + f*x))/(2*f) + ((a + b)^2*tan(e + f*x))/f]
    @test_int [sec(e + f*x)^4*(a + b*sin(e + f*x)^2)^2, x, 4, b^2*x + ((a^2 - b^2)*tan(e + f*x))/f + ((a + b)^2*tan(e + f*x)^3)/(3*f)]
    @test_int [sec(e + f*x)^6*(a + b*sin(e + f*x)^2)^2, x, 3, (a^2*tan(e + f*x))/f + (2*a*(a + b)*tan(e + f*x)^3)/(3*f) + ((a + b)^2*tan(e + f*x)^5)/(5*f)]
    @test_int [sec(e + f*x)^8*(a + b*sin(e + f*x)^2)^2, x, 3, (a^2*tan(e + f*x))/f + (a*(3*a + 2*b)*tan(e + f*x)^3)/(3*f) + ((a + b)*(3*a + b)*tan(e + f*x)^5)/(5*f) + ((a + b)^2*tan(e + f*x)^7)/(7*f)]
    @test_int [sec(e + f*x)^10*(a + b*sin(e + f*x)^2)^2, x, 3, (a^2*tan(e + f*x))/f + (2*a*(2*a + b)*tan(e + f*x)^3)/(3*f) + ((6*a^2 + 6*a*b + b^2)*tan(e + f*x)^5)/(5*f) + (2*(a + b)*(2*a + b)*tan(e + f*x)^7)/(7*f) + ((a + b)^2*tan(e + f*x)^9)/(9*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(x)^7/(a + b*sin(x)^2), x, 4, ((a + b)^3*atan((sqrt(b)*sin(x))/sqrt(a)))/(sqrt(a)*b^(7/2)) - ((a^2 + 3*a*b + 3*b^2)*sin(x))/b^3 + ((a + 3*b)*sin(x)^3)/(3*b^2) - sin(x)^5/(5*b)]
    @test_int [cos(x)^6/(a + b*sin(x)^2), x, 6, -(((8*a^2 + 20*a*b + 15*b^2)*x)/(8*b^3)) + ((a + b)^(5/2)*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(sqrt(a)*b^3) - ((4*a + 7*b)*cos(x)*sin(x))/(8*b^2) - (cos(x)^3*sin(x))/(4*b)]
    @test_int [cos(x)^5/(a + b*sin(x)^2), x, 4, ((a + b)^2*atan((sqrt(b)*sin(x))/sqrt(a)))/(sqrt(a)*b^(5/2)) - ((a + 2*b)*sin(x))/b^2 + sin(x)^3/(3*b)]
    @test_int [cos(x)^4/(a + b*sin(x)^2), x, 5, -(((2*a + 3*b)*x)/(2*b^2)) + ((a + b)^(3/2)*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(sqrt(a)*b^2) - (cos(x)*sin(x))/(2*b)]
    @test_int [cos(x)^3/(a + b*sin(x)^2), x, 3, ((a + b)*atan((sqrt(b)*sin(x))/sqrt(a)))/(sqrt(a)*b^(3/2)) - sin(x)/b]
    @test_int [cos(x)^2/(a + b*sin(x)^2), x, 4, -(x/b) + (sqrt(a + b)*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(sqrt(a)*b)]
    @test_int [cos(x)^1/(a + b*sin(x)^2), x, 2, atan((sqrt(b)*sin(x))/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [sec(x)^1/(a + b*sin(x)^2), x, 4, (sqrt(b)*atan((sqrt(b)*sin(x))/sqrt(a)))/(sqrt(a)*(a + b)) + atanh(sin(x))/(a + b)]
    @test_int [sec(x)^2/(a + b*sin(x)^2), x, 3, (b*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(sqrt(a)*(a + b)^(3/2)) + tan(x)/(a + b)]
    @test_int [sec(x)^3/(a + b*sin(x)^2), x, 5, (b^(3/2)*atan((sqrt(b)*sin(x))/sqrt(a)))/(sqrt(a)*(a + b)^2) + ((a + 3*b)*atanh(sin(x)))/(2*(a + b)^2) + (sec(x)*tan(x))/(2*(a + b))]
    @test_int [sec(x)^4/(a + b*sin(x)^2), x, 4, (b^2*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(sqrt(a)*(a + b)^(5/2)) + ((a + 2*b)*tan(x))/(a + b)^2 + tan(x)^3/(3*(a + b))]
    @test_int [sec(x)^5/(a + b*sin(x)^2), x, 6, (b^(5/2)*atan((sqrt(b)*sin(x))/sqrt(a)))/(sqrt(a)*(a + b)^3) + ((3*a^2 + 10*a*b + 15*b^2)*atanh(sin(x)))/(8*(a + b)^3) + ((3*a + 7*b)*sec(x)*tan(x))/(8*(a + b)^2) + (sec(x)^3*tan(x))/(4*(a + b))]
    @test_int [sec(x)^6/(a + b*sin(x)^2), x, 4, (b^3*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(sqrt(a)*(a + b)^(7/2)) + ((a^2 + 3*a*b + 3*b^2)*tan(x))/(a + b)^3 + ((2*a + 3*b)*tan(x)^3)/(3*(a + b)^2) + tan(x)^5/(5*(a + b))]


    @test_int [cos(x)^6/(a + b*sin(x)^2)^2, x, 6, ((4*a + 5*b)*x)/(2*b^3) - ((4*a - b)*(a + b)^(3/2)*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(2*a^(3/2)*b^3) - (cos(x)*sin(x))/(2*b*(a + (a + b)*tan(x)^2)) + ((a + b)*(2*a + b)*tan(x))/(2*a*b^2*(a + (a + b)*tan(x)^2))]
    @test_int [cos(x)^5/(a + b*sin(x)^2)^2, x, 5, -(((3*a - b)*(a + b)*atan((sqrt(b)*sin(x))/sqrt(a)))/(2*a^(3/2)*b^(5/2))) + sin(x)/b^2 + ((a + b)^2*sin(x))/(2*a*b^2*(a + b*sin(x)^2))]
    @test_int [cos(x)^4/(a + b*sin(x)^2)^2, x, 5, x/b^2 - ((2*a - b)*sqrt(a + b)*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(2*a^(3/2)*b^2) + ((a + b)*tan(x))/(2*a*b*(a + (a + b)*tan(x)^2))]
    @test_int [cos(x)^3/(a + b*sin(x)^2)^2, x, 3, -(((a - b)*atan((sqrt(b)*sin(x))/sqrt(a)))/(2*a^(3/2)*b^(3/2))) + ((a + b)*sin(x))/(2*a*b*(a + b*sin(x)^2))]
    @test_int [cos(x)^2/(a + b*sin(x)^2)^2, x, 3, atan((sqrt(a + b)*tan(x))/sqrt(a))/(2*a^(3/2)*sqrt(a + b)) + tan(x)/(2*a*(a + (a + b)*tan(x)^2))]
    @test_int [cos(x)^1/(a + b*sin(x)^2)^2, x, 3, atan((sqrt(b)*sin(x))/sqrt(a))/(2*a^(3/2)*sqrt(b)) + sin(x)/(2*a*(a + b*sin(x)^2))]
    @test_int [sec(x)^1/(a + b*sin(x)^2)^2, x, 5, (sqrt(b)*(3*a + b)*atan((sqrt(b)*sin(x))/sqrt(a)))/(2*a^(3/2)*(a + b)^2) + atanh(sin(x))/(a + b)^2 + (b*sin(x))/(2*a*(a + b)*(a + b*sin(x)^2))]
    @test_int [sec(x)^2/(a + b*sin(x)^2)^2, x, 5, (b*(4*a + b)*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(2*a^(3/2)*(a + b)^(5/2)) + tan(x)/(a + b)^2 + (b^2*tan(x))/(2*a*(a + b)^2*(a + (a + b)*tan(x)^2))]
    @test_int [sec(x)^3/(a + b*sin(x)^2)^2, x, 6, (b^(3/2)*(5*a + b)*atan((sqrt(b)*sin(x))/sqrt(a)))/(2*a^(3/2)*(a + b)^3) + ((a + 5*b)*atanh(sin(x)))/(2*(a + b)^3) - ((a - b)*b*sin(x))/(2*a*(a + b)^2*(a + b*sin(x)^2)) + (sec(x)*tan(x))/(2*(a + b)*(a + b*sin(x)^2))]
    @test_int [sec(x)^4/(a + b*sin(x)^2)^2, x, 5, (b^2*(6*a + b)*atan((sqrt(a + b)*tan(x))/sqrt(a)))/(2*a^(3/2)*(a + b)^(7/2)) + ((a + 3*b)*tan(x))/(a + b)^3 + tan(x)^3/(3*(a + b)^2) + (b^3*tan(x))/(2*a*(a + b)^3*(a + (a + b)*tan(x)^2))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*sin(e+f*x)^2)^(p/2)*when*a+b=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*sin(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cos(e + f*x)^3*sqrt(a + b*sin(e + f*x)^2), x, 5, (a*(a + 4*b)*atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(8*b^(3/2)*f) + ((a + 4*b)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(8*b*f) - (sin(e + f*x)*(a + b*sin(e + f*x)^2)^(3/2))/(4*b*f)]
    @test_int [cos(e + f*x)^1*sqrt(a + b*sin(e + f*x)^2), x, 4, (a*atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(2*sqrt(b)*f) + (sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(2*f)]
    @test_int [sec(e + f*x)^1*sqrt(a + b*sin(e + f*x)^2), x, 6, -((sqrt(b)*atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/f) + (sqrt(a + b)*atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/f]
    @test_int [sec(e + f*x)^3*sqrt(a + b*sin(e + f*x)^2), x, 4, (a*atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(2*sqrt(a + b)*f) + (sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(2*f)]
    @test_int [sec(e + f*x)^5*sqrt(a + b*sin(e + f*x)^2), x, 5, (a*(3*a + 4*b)*atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(8*(a + b)^(3/2)*f) + ((3*a + 4*b)*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(8*(a + b)*f) + (sec(e + f*x)^3*(a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x))/(4*(a + b)*f)]

    @test_int [cos(e + f*x)^4*sqrt(a + b*sin(e + f*x)^2), x, 8, (2*(a + 3*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(15*b*f) - (cos(e + f*x)*sin(e + f*x)*(a + b*sin(e + f*x)^2)^(3/2))/(5*b*f) - ((2*a^2 + 7*a*b - 3*b^2)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(15*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (2*a*(a + b)*(a + 3*b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(15*b^2*f*sqrt(a + b*sin(e + f*x)^2)), (2*(a + 3*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(15*b*f) - (cos(e + f*x)*sin(e + f*x)*(a + b*sin(e + f*x)^2)^(3/2))/(5*b*f) - ((2*a^2 + 7*a*b - 3*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(15*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (2*a*(a + b)*(a + 3*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(15*b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2), x, 7, (cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f) - ((a - b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*b*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (a*(a + b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b*f*sqrt(a + b*sin(e + f*x)^2)), (cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f) - ((a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (a*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^0*sqrt(a + b*sin(e + f*x)^2), x, 2, (EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a))]
    @test_int [sec(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2), x, 8, -((EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (a*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2)) + (sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/f, -((sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (a*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2)) + (sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/f]
    @test_int [sec(e + f*x)^4*sqrt(a + b*sin(e + f*x)^2), x, 8, -(((2*a + b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (2*a*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2)) + ((2*a + b)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*(a + b)*f) + (sec(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*f), -(((2*a + b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (2*a*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2)) + ((2*a + b)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*(a + b)*f) + (sec(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*f)]


    @test_int [cos(e + f*x)^3*(a + b*sin(e + f*x)^2)^(3/2), x, 6, (a^2*(a + 6*b)*atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(16*b^(3/2)*f) + (a*(a + 6*b)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(16*b*f) + ((a + 6*b)*sin(e + f*x)*(a + b*sin(e + f*x)^2)^(3/2))/(24*b*f) - (sin(e + f*x)*(a + b*sin(e + f*x)^2)^(5/2))/(6*b*f)]
    @test_int [cos(e + f*x)^1*(a + b*sin(e + f*x)^2)^(3/2), x, 5, (3*a^2*atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(8*sqrt(b)*f) + (3*a*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(8*f) + (sin(e + f*x)*(a + b*sin(e + f*x)^2)^(3/2))/(4*f)]
    @test_int [sec(e + f*x)^1*(a + b*sin(e + f*x)^2)^(3/2), x, 7, -((sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(2*f)) + ((a + b)^(3/2)*atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/f - (b*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(2*f)]
    @test_int [sec(e + f*x)^3*(a + b*sin(e + f*x)^2)^(3/2), x, 7, (b^(3/2)*atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/f + ((a - 2*b)*sqrt(a + b)*atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(2*f) + ((a + b)*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(2*f)]
    @test_int [sec(e + f*x)^5*(a + b*sin(e + f*x)^2)^(3/2), x, 5, (3*a^2*atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(8*sqrt(a + b)*f) + (3*a*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(8*f) + (sec(e + f*x)^3*(a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x))/(4*f)]
    @test_int [sec(e + f*x)^7*(a + b*sin(e + f*x)^2)^(3/2), x, 6, (a^2*(5*a + 6*b)*atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(16*(a + b)^(3/2)*f) + (a*(5*a + 6*b)*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(16*(a + b)*f) + ((5*a + 6*b)*sec(e + f*x)^3*(a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x))/(24*(a + b)*f) + (sec(e + f*x)^5*(a + b*sin(e + f*x)^2)^(5/2)*tan(e + f*x))/(6*(a + b)*f)]

    @test_int [cos(e + f*x)^4*(a + b*sin(e + f*x)^2)^(3/2), x, 9, -(((a^2 - 9*a*b - 2*b^2)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(35*b*f)) + (2*(4*a + b)*cos(e + f*x)^3*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(35*f) - (b*cos(e + f*x)^5*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(7*f) - (2*(a - b)*(a^2 + 6*a*b + b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(35*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (a*(a + b)*(2*a^2 + 9*a*b - b^2)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(35*b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^2*(a + b*sin(e + f*x)^2)^(3/2), x, 8, (2*(3*a + b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(15*f) - (b*cos(e + f*x)^3*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(5*f) - ((3*a^2 - 7*a*b - 2*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(15*b*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (a*(3*a - b)*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(15*b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^0*(a + b*sin(e + f*x)^2)^(3/2), x, 6, -((b*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f)) + (2*(2*a + b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (a*(a + b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^2*(a + b*sin(e + f*x)^2)^(3/2), x, 7, -(((a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (a*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2)) + ((a + b)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/f]
    @test_int [sec(e + f*x)^4*(a + b*sin(e + f*x)^2)^(3/2), x, 8, -((2*(a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (a*(2*a - b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2)) + (2*(a - b)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*f) + ((a + b)*sec(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(e + f*x)^3/sqrt(a + b*sin(e + f*x)^2), x, 4, ((a + 2*b)*atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(2*b^(3/2)*f) - (sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(2*b*f)]
    @test_int [cos(e + f*x)^1/sqrt(a + b*sin(e + f*x)^2), x, 3, atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2))/(sqrt(b)*f)]
    @test_int [sec(e + f*x)^1/sqrt(a + b*sin(e + f*x)^2), x, 3, atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2))/(sqrt(a + b)*f)]
    @test_int [sec(e + f*x)^3/sqrt(a + b*sin(e + f*x)^2), x, 4, ((a + 2*b)*atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(2*(a + b)^(3/2)*f) + (sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(2*(a + b)*f)]

    @test_int [cos(e + f*x)^4/sqrt(a + b*sin(e + f*x)^2), x, 7, -((cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b*f)) - (2*(a + 2*b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((a + b)*(2*a + 3*b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b^2*f*sqrt(a + b*sin(e + f*x)^2)), -((cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b*f)) - (2*(a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((a + b)*(2*a + 3*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^2/sqrt(a + b*sin(e + f*x)^2), x, 6, -((a*EllipticE(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(b*f*sqrt(a + b*sin(e + f*x)^2))) + ((a + b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(b*f*sqrt(a + b*sin(e + f*x)^2)), -((sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(b*f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + ((a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^0/sqrt(a + b*sin(e + f*x)^2), x, 2, (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^2/sqrt(a + b*sin(e + f*x)^2), x, 8, -((EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/((a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2)) + (sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/((a + b)*f), -((sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/((a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2)) + (sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/((a + b)*f)]
    @test_int [sec(e + f*x)^4/sqrt(a + b*sin(e + f*x)^2), x, 8, -((2*(a + 2*b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + ((2*a + 3*b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + (2*(a + 2*b)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*(a + b)^2*f) + (sec(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*(a + b)*f), -((2*(a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + ((2*a + 3*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + (2*(a + 2*b)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*(a + b)^2*f) + (sec(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*(a + b)*f)]


    @test_int [cos(e + f*x)^3/(a + b*sin(e + f*x)^2)^(3/2), x, 4, -(atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2))/(b^(3/2)*f)) + ((a + b)*sin(e + f*x))/(a*b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^1/(a + b*sin(e + f*x)^2)^(3/2), x, 2, sin(e + f*x)/(a*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^1/(a + b*sin(e + f*x)^2)^(3/2), x, 4, atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2))/((a + b)^(3/2)*f) + (b*sin(e + f*x))/(a*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^3/(a + b*sin(e + f*x)^2)^(3/2), x, 6, ((a + 4*b)*atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2)))/(2*(a + b)^(5/2)*f) - ((a - 2*b)*b*sin(e + f*x))/(2*a*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + (sec(e + f*x)*tan(e + f*x))/(2*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]

    @test_int [cos(e + f*x)^6/(a + b*sin(e + f*x)^2)^(3/2), x, 8, ((a + b)*cos(e + f*x)^3*sin(e + f*x))/(a*b*f*sqrt(a + b*sin(e + f*x)^2)) + ((4*a + 3*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a*b^2*f) + ((8*a^2 + 13*a*b + 3*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a*b^3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - ((a + b)*(8*a + 9*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*b^3*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^4/(a + b*sin(e + f*x)^2)^(3/2), x, 7, ((a + b)*cos(e + f*x)*sin(e + f*x))/(a*b*f*sqrt(a + b*sin(e + f*x)^2)) + ((2*a + b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (2*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^2/(a + b*sin(e + f*x)^2)^(3/2), x, 7, (cos(e + f*x)*sin(e + f*x))/(a*f*sqrt(a + b*sin(e + f*x)^2)) + (sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a*b*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^0/(a + b*sin(e + f*x)^2)^(3/2), x, 4, (b*cos(e + f*x)*sin(e + f*x))/(a*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + (EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(a*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a))]
    @test_int [sec(e + f*x)^2/(a + b*sin(e + f*x)^2)^(3/2), x, 8, -(((a - b)*b*cos(e + f*x)*sin(e + f*x))/(a*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2))) - ((a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/((a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + tan(e + f*x)/((a + b)*f*sqrt(a + b*sin(e + f*x)^2))]


    @test_int [cos(e + f*x)^5/(a + b*sin(e + f*x)^2)^(5/2), x, 5, atanh((sqrt(b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2))/(b^(5/2)*f) + ((a + b)*cos(e + f*x)^2*sin(e + f*x))/(3*a*b*f*(a + b*sin(e + f*x)^2)^(3/2)) - ((3*a - 2*b)*(a + b)*sin(e + f*x))/(3*a^2*b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^3/(a + b*sin(e + f*x)^2)^(5/2), x, 3, (cos(e + f*x)^2*sin(e + f*x))/(3*a*f*(a + b*sin(e + f*x)^2)^(3/2)) + (2*sin(e + f*x))/(3*a^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^1/(a + b*sin(e + f*x)^2)^(5/2), x, 3, sin(e + f*x)/(3*a*f*(a + b*sin(e + f*x)^2)^(3/2)) + (2*sin(e + f*x))/(3*a^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^1/(a + b*sin(e + f*x)^2)^(5/2), x, 6, atanh((sqrt(a + b)*sin(e + f*x))/sqrt(a + b*sin(e + f*x)^2))/((a + b)^(5/2)*f) + (b*sin(e + f*x))/(3*a*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) + (b*(5*a + 2*b)*sin(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2))]

    @test_int [cos(e + f*x)^6/(a + b*sin(e + f*x)^2)^(5/2), x, 8, ((a + b)*cos(e + f*x)^3*sin(e + f*x))/(3*a*b*f*(a + b*sin(e + f*x)^2)^(3/2)) - (2*(2*a - b)*(a + b)*cos(e + f*x)*sin(e + f*x))/(3*a^2*b^2*f*sqrt(a + b*sin(e + f*x)^2)) - ((8*a^2 + 3*a*b - 2*b^2)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*b^3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((8*a - b)*(a + b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*b^3*f*sqrt(a + b*sin(e + f*x)^2)), ((a + b)*cos(e + f*x)^3*sin(e + f*x))/(3*a*b*f*(a + b*sin(e + f*x)^2)^(3/2)) - (2*(2*a - b)*(a + b)*cos(e + f*x)*sin(e + f*x))/(3*a^2*b^2*f*sqrt(a + b*sin(e + f*x)^2)) - ((8*a^2 + 3*a*b - 2*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*b^3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((8*a - b)*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*b^3*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^4/(a + b*sin(e + f*x)^2)^(5/2), x, 8, ((a + b)*cos(e + f*x)*sin(e + f*x))/(3*a*b*f*(a + b*sin(e + f*x)^2)^(3/2)) - (2*(a - b)*cos(e + f*x)*sin(e + f*x))/(3*a^2*b*f*sqrt(a + b*sin(e + f*x)^2)) - (2*(a - b)*EllipticE(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*b^2*f*sqrt(a + b*sin(e + f*x)^2)) + ((2*a - b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*b^2*f*sqrt(a + b*sin(e + f*x)^2)), ((a + b)*cos(e + f*x)*sin(e + f*x))/(3*a*b*f*(a + b*sin(e + f*x)^2)^(3/2)) - (2*(a - b)*cos(e + f*x)*sin(e + f*x))/(3*a^2*b*f*sqrt(a + b*sin(e + f*x)^2)) - (2*(a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*b^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((2*a - b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*b^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^2/(a + b*sin(e + f*x)^2)^(5/2), x, 8, (cos(e + f*x)*sin(e + f*x))/(3*a*f*(a + b*sin(e + f*x)^2)^(3/2)) + ((a + 2*b)*cos(e + f*x)*sin(e + f*x))/(3*a^2*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + ((a + 2*b)*EllipticE(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*b*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) - (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*b*f*sqrt(a + b*sin(e + f*x)^2)), (cos(e + f*x)*sin(e + f*x))/(3*a*f*(a + b*sin(e + f*x)^2)^(3/2)) + ((a + 2*b)*cos(e + f*x)*sin(e + f*x))/(3*a^2*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + ((a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*b*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*b*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^0/(a + b*sin(e + f*x)^2)^(5/2), x, 7, (b*cos(e + f*x)*sin(e + f*x))/(3*a*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) + (2*b*(2*a + b)*cos(e + f*x)*sin(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + (2*(2*a + b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^2/(a + b*sin(e + f*x)^2)^(5/2), x, 9, -(((3*a - b)*b*cos(e + f*x)*sin(e + f*x))/(3*a*(a + b)^2*f*(a + b*sin(e + f*x)^2)^(3/2))) - (b*(3*a^2 - 7*a*b - 2*b^2)*cos(e + f*x)*sin(e + f*x))/(3*a^2*(a + b)^3*f*sqrt(a + b*sin(e + f*x)^2)) - ((3*a^2 - 7*a*b - 2*b^2)*EllipticE(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*(a + b)^3*f*sqrt(a + b*sin(e + f*x)^2)) + ((3*a - b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + tan(e + f*x)/((a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)), -(((3*a - b)*b*cos(e + f*x)*sin(e + f*x))/(3*a*(a + b)^2*f*(a + b*sin(e + f*x)^2)^(3/2))) - (b*(3*a^2 - 7*a*b - 2*b^2)*cos(e + f*x)*sin(e + f*x))/(3*a^2*(a + b)^3*f*sqrt(a + b*sin(e + f*x)^2)) - ((3*a^2 - 7*a*b - 2*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*(a + b)^3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((3*a - b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + tan(e + f*x)/((a + b)*f*(a + b*sin(e + f*x)^2)^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*sin(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*cos(e + f*x))^m*(a + b*sin(e + f*x)^2)^p, x, 3, (d*AppellF1(1/2, (1 - m)/2, -p, 3/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*(d*cos(e + f*x))^(-1 + m)*(cos(e + f*x)^2)^((1 - m)/2)*sin(e + f*x)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*f)]


    @test_int [cos(e + f*x)^5*(a + b*sin(e + f*x)^2)^p, x, 5, If($VersionNumber>=8, -(((3*a + b*(7 + 2*p))*sin(e + f*x)*(a + b*sin(e + f*x)^2)^(1 + p))/(b^2*f*(3 + 2*p)*(5 + 2*p))) - (cos(e + f*x)^2*sin(e + f*x)*(a + b*sin(e + f*x)^2)^(1 + p))/(b*f*(5 + 2*p)) + ((3*a^2 + 2*a*b*(5 + 2*p) + b^2*(15 + 16*p + 4*p^2))*Hypergeometric2F1(1/2, -p, 3/2, -((b*sin(e + f*x)^2)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*(b^2*f*(3 + 2*p)*(5 + 2*p))), -(((3*a + b*(7 + 2*p))*sin(e + f*x)*(a + b*sin(e + f*x)^2)^(1 + p))/(b^2*f*(15 + 16*p + 4*p^2))) - (cos(e + f*x)^2*sin(e + f*x)*(a + b*sin(e + f*x)^2)^(1 + p))/(b*f*(5 + 2*p)) + ((3*a^2 + 2*a*b*(5 + 2*p) + b^2*(15 + 16*p + 4*p^2))*Hypergeometric2F1(1/2, -p, 3/2, -((b*sin(e + f*x)^2)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*(b^2*f*(15 + 16*p + 4*p^2))))]
    @test_int [cos(e + f*x)^3*(a + b*sin(e + f*x)^2)^p, x, 4, -((sin(e + f*x)*(a + b*sin(e + f*x)^2)^(1 + p))/(b*f*(3 + 2*p))) + ((a + b*(3 + 2*p))*Hypergeometric2F1(1/2, -p, 3/2, -((b*sin(e + f*x)^2)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*(b*f*(3 + 2*p)))]
    @test_int [cos(e + f*x)^1*(a + b*sin(e + f*x)^2)^p, x, 3, (Hypergeometric2F1(1/2, -p, 3/2, -((b*sin(e + f*x)^2)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*f)]
    @test_int [sec(e + f*x)^1*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 1, -p, 3/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*f)]
    @test_int [sec(e + f*x)^3*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 2, -p, 3/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*f)]

    @test_int [cos(e + f*x)^4*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1(1/2, -(3/2), -p, 3/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sqrt(cos(e + f*x)^2)*(a + b*sin(e + f*x)^2)^p*tan(e + f*x))/((1 + (b*sin(e + f*x)^2)/a)^p*f)]
    @test_int [cos(e + f*x)^2*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1(1/2, -(1/2), -p, 3/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sqrt(cos(e + f*x)^2)*(a + b*sin(e + f*x)^2)^p*tan(e + f*x))/((1 + (b*sin(e + f*x)^2)/a)^p*f)]
    @test_int [cos(e + f*x)^0*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 1/2, -p, 3/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sqrt(cos(e + f*x)^2)*(a + b*sin(e + f*x)^2)^p*tan(e + f*x))/((1 + (b*sin(e + f*x)^2)/a)^p*f)]
    @test_int [sec(e + f*x)^2*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 3/2, -p, 3/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sqrt(cos(e + f*x)^2)*(a + b*sin(e + f*x)^2)^p*tan(e + f*x))/((1 + (b*sin(e + f*x)^2)/a)^p*f)]
    @test_int [sec(e + f*x)^4*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 5/2, -p, 3/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*sqrt(cos(e + f*x)^2)*(a + b*sin(e + f*x)^2)^p*tan(e + f*x))/((1 + (b*sin(e + f*x)^2)/a)^p*f)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*sin(e+f*x)^3)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*sin(e+f*x)^3)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(c + d*x)^5/(a + b*sin(c + d*x)^3), x, 11, ((a^(4/3) - b^(4/3))*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(2/3)*b^(5/3)*d) + ((a^(4/3) + b^(4/3))*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(3*a^(2/3)*b^(5/3)*d) - ((a^(4/3) + b^(4/3))*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2))/(6*a^(2/3)*b^(5/3)*d) - (2*log(a + b*sin(c + d*x)^3))/(3*b*d) + sin(c + d*x)^2/(2*b*d)]
    @test_int [cos(c + d*x)^3/(a + b*sin(c + d*x)^3), x, 9, -(atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3)))/(sqrt(3)*a^(2/3)*b^(1/3)*d)) + log(a^(1/3) + b^(1/3)*sin(c + d*x))/(3*a^(2/3)*b^(1/3)*d) - log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2)/(6*a^(2/3)*b^(1/3)*d) - log(a + b*sin(c + d*x)^3)/(3*b*d)]
    @test_int [cos(c + d*x)^1/(a + b*sin(c + d*x)^3), x, 7, -(atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3)))/(sqrt(3)*a^(2/3)*b^(1/3)*d)) + log(a^(1/3) + b^(1/3)*sin(c + d*x))/(3*a^(2/3)*b^(1/3)*d) - log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2)/(6*a^(2/3)*b^(1/3)*d)]
    @test_int [sec(c + d*x)^1/(a + b*sin(c + d*x)^3), x, 11, -((b^(1/3)*(a^(4/3) - b^(4/3))*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(2/3)*(a^2 - b^2)*d)) - log(1 - sin(c + d*x))/(2*(a + b)*d) + log(1 + sin(c + d*x))/(2*(a - b)*d) - (b^(1/3)*(a^(4/3) + b^(4/3))*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(3*a^(2/3)*(a^2 - b^2)*d) + (b^(1/3)*(a^(4/3) + b^(4/3))*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2))/(6*a^(2/3)*(a^2 - b^2)*d) - (b*log(a + b*sin(c + d*x)^3))/(3*(a^2 - b^2)*d)]
    @test_int [sec(c + d*x)^3/(a + b*sin(c + d*x)^3), x, 11, -((b^(5/3)*(2*a^2 - 3*a^(4/3)*b^(2/3) + b^2)*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(2/3)*(a^2 - b^2)^2*d)) - ((a + 4*b)*log(1 - sin(c + d*x)))/(4*(a + b)^2*d) + ((a - 4*b)*log(1 + sin(c + d*x)))/(4*(a - b)^2*d) + (b^(5/3)*(2*a^2 + 3*a^(4/3)*b^(2/3) + b^2)*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(3*a^(2/3)*(a^2 - b^2)^2*d) - (b^(5/3)*(2*a^2 + 3*a^(4/3)*b^(2/3) + b^2)*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2))/(6*a^(2/3)*(a^2 - b^2)^2*d) + (b*(a^2 + 2*b^2)*log(a + b*sin(c + d*x)^3))/(3*(a^2 - b^2)^2*d) + 1/(4*(a + b)*d*(1 - sin(c + d*x))) - 1/(4*(a - b)*d*(1 + sin(c + d*x)))]

    @test_int [cos(c + d*x)^4/(a + b*sin(c + d*x)^3), x, 38, -((2*(-1)^(2/3)*a^(2/3)*atan(((-1)^(1/3)*b^(1/3) - a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*b^(4/3)*d)) + (2*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - b^(2/3))*d) + (2*a^(2/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*b^(4/3)*d) - (4*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*b^(2/3)*d) + (2*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*d) - (2*(-1)^(1/3)*a^(2/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*b^(4/3)*d) - (2*atan(((-1)^(1/3)*(b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x))))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*d) + (4*atanh((b^(1/3) - (-1)^(1/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))))/(3*sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))*b^(2/3)*d) + (4*atanh((b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))*b^(2/3)*d) - cos(c + d*x)/(b*d)]
    @test_int [cos(c + d*x)^2/(a + b*sin(c + d*x)^3), x, 24, (2*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - b^(2/3))*d) - (2*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*b^(2/3)*d) + (2*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*d) - (2*atan(((-1)^(1/3)*(b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x))))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*d) + (2*atanh((b^(1/3) - (-1)^(1/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))))/(3*sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))*b^(2/3)*d) + (2*atanh((b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))*b^(2/3)*d)]
    @test_int [cos(c + d*x)^0/(a + b*sin(c + d*x)^3), x, 11, (2*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - b^(2/3))*d) + (2*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*d) - (2*atan(((-1)^(1/3)*(b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x))))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*d)]
    @test_int [sec(c + d*x)^2/(a + b*sin(c + d*x)^3), x, -1, (2*(-1)^(2/3)*b^(2/3)*atan(((-1)^(1/3)*b^(1/3) - a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(2/3)*(a^(2/3) - (-1)^(2/3)*b^(2/3))^(3/2)*d) - (2*b^(2/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(2/3)*(a^(2/3) - b^(2/3))^(3/2)*d) + (2*(-1)^(1/3)*b^(2/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(2/3)*(a^(2/3) + (-1)^(1/3)*b^(2/3))^(3/2)*d) + (sec(c + d*x)*(b - a*sin(c + d*x)))/((-a^2 + b^2)*d)]
    @test_int [sec(c + d*x)^4/(a + b*sin(c + d*x)^3), x, -1, -((2*(-1)^(2/3)*a^(2/3)*b^(8/3)*atan(((-1)^(1/3)*b^(1/3) - a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*(a^2 - b^2)^2*d)) - (2*b^2*(2*a^2 + b^2)*atan(((-1)^(1/3)*b^(1/3) - a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - (-1)^(2/3)*b^(2/3))*(a^2 - b^2)^2*d) + (2*a^(2/3)*b^(8/3)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(sqrt(a^(2/3) - b^(2/3))*(a^2 - b^2)^2*d) + (2*b^2*(2*a^2 + b^2)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) - b^(2/3))*(a^2 - b^2)^2*d) + (2*b^(4/3)*(a^2 + 2*b^2)*atan((b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) - b^(2/3))))/(3*sqrt(a^(2/3) - b^(2/3))*(a^2 - b^2)^2*d) - (2*(-1)^(1/3)*a^(2/3)*b^(8/3)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*(a^2 - b^2)^2*d) + (2*b^2*(2*a^2 + b^2)*atan(((-1)^(2/3)*b^(1/3) + a^(1/3)*tan((1/2)*(c + d*x)))/sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) + (-1)^(1/3)*b^(2/3))*(a^2 - b^2)^2*d) - (2*b^(4/3)*(a^2 + 2*b^2)*atanh((b^(1/3) - (-1)^(1/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))))/(3*sqrt((-(-1)^(2/3))*a^(2/3) + b^(2/3))*(a^2 - b^2)^2*d) - (2*b^(4/3)*(a^2 + 2*b^2)*atanh((b^(1/3) + (-1)^(2/3)*a^(1/3)*tan((1/2)*(c + d*x)))/sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) + b^(2/3))*(a^2 - b^2)^2*d) + cos(c + d*x)/(12*(a + b)*d*(1 - sin(c + d*x))^2) + cos(c + d*x)/(12*(a + b)*d*(1 - sin(c + d*x))) + ((a + 4*b)*cos(c + d*x))/(4*(a + b)^2*d*(1 - sin(c + d*x))) - cos(c + d*x)/(12*(a - b)*d*(1 + sin(c + d*x))^2) - ((a - 4*b)*cos(c + d*x))/(4*(a - b)^2*d*(1 + sin(c + d*x))) - cos(c + d*x)/(12*(a - b)*d*(1 + sin(c + d*x)))]


    @test_int [cos(c + d*x)^7/(a + b*sin(c + d*x)^3)^2, x, 10, -((2*(2*a^2 + 3*a^(4/3)*b^(2/3) + b^2)*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(3*sqrt(3)*a^(5/3)*b^(7/3)*d)) + (2*(2*a^2 - 3*a^(4/3)*b^(2/3) + b^2)*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(9*a^(5/3)*b^(7/3)*d) - ((2*a^2 - 3*a^(4/3)*b^(2/3) + b^2)*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2))/(9*a^(5/3)*b^(7/3)*d) - sin(c + d*x)/(b^2*d) - (sin(c + d*x)*(a^2 - b^2 + 3*a*b*sin(c + d*x) + 3*b^2*sin(c + d*x)^2))/(3*a*b^2*d*(a + b*sin(c + d*x)^3))]
    @test_int [cos(c + d*x)^5/(a + b*sin(c + d*x)^3)^2, x, 8, -((2*(a^(4/3) + b^(4/3))*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(3*sqrt(3)*a^(5/3)*b^(5/3)*d)) - (2*(a^(4/3) - b^(4/3))*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(9*a^(5/3)*b^(5/3)*d) + ((a^(4/3) - b^(4/3))*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2))/(9*a^(5/3)*b^(5/3)*d) + (sin(c + d*x)*(b - a*sin(c + d*x) - 2*b*sin(c + d*x)^2))/(3*a*b*d*(a + b*sin(c + d*x)^3))]
    @test_int [cos(c + d*x)^3/(a + b*sin(c + d*x)^3)^2, x, 9, -((2*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(3*sqrt(3)*a^(5/3)*b^(1/3)*d)) + (2*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(9*a^(5/3)*b^(1/3)*d) - log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2)/(9*a^(5/3)*b^(1/3)*d) + (a + b*sin(c + d*x))/(3*a*b*d*(a + b*sin(c + d*x)^3))]
    @test_int [cos(c + d*x)^1/(a + b*sin(c + d*x)^3)^2, x, 8, -((2*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(3*sqrt(3)*a^(5/3)*b^(1/3)*d)) + (2*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(9*a^(5/3)*b^(1/3)*d) - log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2)/(9*a^(5/3)*b^(1/3)*d) + sin(c + d*x)/(3*a*d*(a + b*sin(c + d*x)^3))]
    @test_int [sec(c + d*x)^1/(a + b*sin(c + d*x)^3)^2, x, 18, -((b^(1/3)*(a^(4/3) - 2*b^(4/3))*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(3*sqrt(3)*a^(5/3)*(a^2 - b^2)*d)) - (b^(1/3)*(a^2 - 2*a^(2/3)*b^(4/3) + b^2)*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(1/3)*(a^2 - b^2)^2*d) - log(1 - sin(c + d*x))/(2*(a + b)^2*d) + log(1 + sin(c + d*x))/(2*(a - b)^2*d) - (b^(1/3)*(a^(4/3) + 2*b^(4/3))*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(9*a^(5/3)*(a^2 - b^2)*d) - (b^(1/3)*(a^2 + 2*a^(2/3)*b^(4/3) + b^2)*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(3*a^(1/3)*(a^2 - b^2)^2*d) + (b^(1/3)*(a^(4/3) + 2*b^(4/3))*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2))/(18*a^(5/3)*(a^2 - b^2)*d) + (b^(1/3)*(a^2 + 2*a^(2/3)*b^(4/3) + b^2)*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2))/(6*a^(1/3)*(a^2 - b^2)^2*d) - (2*a*b*log(a + b*sin(c + d*x)^3))/(3*(a^2 - b^2)^2*d) + (b*(a - sin(c + d*x)*(b - a*sin(c + d*x))))/(3*a*(a^2 - b^2)*d*(a + b*sin(c + d*x)^3))]
    @test_int [sec(c + d*x)^3/(a + b*sin(c + d*x)^3)^2, x, 18, -((b^(5/3)*(4*a^2 - 3*a^(4/3)*b^(2/3) + 2*b^2)*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(3*sqrt(3)*a^(5/3)*(a^2 - b^2)^2*d)) - (b^(5/3)*(4*a^(8/3) - 9*a^2*b^(2/3) + 8*a^(2/3)*b^2 - 3*b^(8/3))*atan((a^(1/3) - 2*b^(1/3)*sin(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(1/3)*(a^2 - b^2)^3*d) - ((a + 7*b)*log(1 - sin(c + d*x)))/(4*(a + b)^3*d) + ((a - 7*b)*log(1 + sin(c + d*x)))/(4*(a - b)^3*d) + (b^(5/3)*(4*a^2 + 3*a^(4/3)*b^(2/3) + 2*b^2)*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(9*a^(5/3)*(a^2 - b^2)^2*d) + (b^(5/3)*(3*b^(2/3)*(3*a^2 + b^2) + 4*a^(2/3)*(a^2 + 2*b^2))*log(a^(1/3) + b^(1/3)*sin(c + d*x)))/(3*a^(1/3)*(a^2 - b^2)^3*d) - (b^(5/3)*(4*a^2 + 3*a^(4/3)*b^(2/3) + 2*b^2)*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2))/(18*a^(5/3)*(a^2 - b^2)^2*d) - (b^(5/3)*(3*b^(2/3)*(3*a^2 + b^2) + 4*a^(2/3)*(a^2 + 2*b^2))*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(c + d*x) + b^(2/3)*sin(c + d*x)^2))/(6*a^(1/3)*(a^2 - b^2)^3*d) + (2*a*b*(a^2 + 5*b^2)*log(a + b*sin(c + d*x)^3))/(3*(a^2 - b^2)^3*d) + 1/(4*(a + b)^2*d*(1 - sin(c + d*x))) - 1/(4*(a - b)^2*d*(1 + sin(c + d*x))) - (b*(a*(a^2 + 2*b^2) - b*sin(c + d*x)*(2*a^2 + b^2 - 3*a*b*sin(c + d*x))))/(3*a*(a^2 - b^2)^2*d*(a + b*sin(c + d*x)^3))]

    @test_int [cos(c + d*x)^4/(a + b*sin(c + d*x)^3)^2, x, 0, Unintegrable(cos(c + d*x)^4/(a + b*sin(c + d*x)^3)^2, x)]
    @test_int [cos(c + d*x)^2/(a + b*sin(c + d*x)^3)^2, x, 0, Unintegrable(cos(c + d*x)^2/(a + b*sin(c + d*x)^3)^2, x)]
    @test_int [cos(c + d*x)^0/(a + b*sin(c + d*x)^3)^2, x, 0, Unintegrable(1/(a + b*sin(c + d*x)^3)^2, x)]
    @test_int [sec(c + d*x)^2/(a + b*sin(c + d*x)^3)^2, x, 0, Unintegrable(sec(c + d*x)^2/(a + b*sin(c + d*x)^3)^2, x)]
    @test_int [sec(c + d*x)^4/(a + b*sin(c + d*x)^3)^2, x, 0, Unintegrable(sec(c + d*x)^4/(a + b*sin(c + d*x)^3)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*sin(e+f*x)^4)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*sin(e+f*x)^4)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(c + d*x)^7/(a - b*sin(c + d*x)^4), x, 6, ((sqrt(a) + sqrt(b))^3*atan((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(7/4)*d) - ((sqrt(a) - sqrt(b))^3*atanh((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(7/4)*d) - (3*sin(c + d*x))/(b*d) + sin(c + d*x)^3/(3*b*d)]
    @test_int [cos(c + d*x)^5/(a - b*sin(c + d*x)^4), x, 6, ((sqrt(a) + sqrt(b))^2*atan((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(5/4)*d) + ((a - 2*sqrt(a)*sqrt(b) + b)*atanh((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(5/4)*d) - sin(c + d*x)/(b*d)]
    @test_int [cos(c + d*x)^3/(a - b*sin(c + d*x)^4), x, 4, ((sqrt(a) + sqrt(b))*atan((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(3/4)*d) - ((sqrt(a) - sqrt(b))*atanh((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(3/4)*d)]
    @test_int [cos(c + d*x)^1/(a - b*sin(c + d*x)^4), x, 4, atan((b^(1/4)*sin(c + d*x))/a^(1/4))/(2*a^(3/4)*b^(1/4)*d) + atanh((b^(1/4)*sin(c + d*x))/a^(1/4))/(2*a^(3/4)*b^(1/4)*d)]
    @test_int [sec(c + d*x)^1/(a - b*sin(c + d*x)^4), x, 7, (b^(1/4)*atan((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) + sqrt(b))*d) + atanh(sin(c + d*x))/((a - b)*d) - (b^(1/4)*atanh((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) - sqrt(b))*d)]
    @test_int [sec(c + d*x)^3/(a - b*sin(c + d*x)^4), x, 7, (b^(3/4)*atan((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) + sqrt(b))^2*d) + ((a - 5*b)*atanh(sin(c + d*x)))/(2*(a - b)^2*d) + (b^(3/4)*atanh((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) - sqrt(b))^2*d) + 1/(4*(a - b)*d*(1 - sin(c + d*x))) - 1/(4*(a - b)*d*(1 + sin(c + d*x)))]
    @test_int [sec(c + d*x)^5/(a - b*sin(c + d*x)^4), x, 7, (b^(5/4)*atan((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) + sqrt(b))^3*d) + ((3*a^2 - 6*a*b + 35*b^2)*atanh(sin(c + d*x)))/(8*(a - b)^3*d) - (b^(5/4)*atanh((b^(1/4)*sin(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) - sqrt(b))^3*d) + 1/(16*(a - b)*d*(1 - sin(c + d*x))^2) + (3*a - 11*b)/(16*(a - b)^2*d*(1 - sin(c + d*x))) - 1/(16*(a - b)*d*(1 + sin(c + d*x))^2) - (3*a - 11*b)/(16*(a - b)^2*d*(1 + sin(c + d*x)))]

    @test_int [cos(c + d*x)^10/(a - b*sin(c + d*x)^4), x, 16, -((17*x)/(16*b)) - (4*(a + b)*x)/b^2 - ((a + 3*b)*x)/(2*b^2) - ((sqrt(a) - sqrt(b))^(9/2)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(5/2)*d) + ((sqrt(a) + sqrt(b))^(9/2)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(5/2)*d) - (17*cos(c + d*x)*sin(c + d*x))/(16*b*d) - ((a + 3*b)*cos(c + d*x)*sin(c + d*x))/(2*b^2*d) - (17*cos(c + d*x)^3*sin(c + d*x))/(24*b*d) - (cos(c + d*x)^5*sin(c + d*x))/(6*b*d)]
    @test_int [cos(c + d*x)^8/(a - b*sin(c + d*x)^4), x, 12, -((11*x)/(8*b)) - ((a + 3*b)*x)/b^2 + ((sqrt(a) - sqrt(b))^(7/2)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^2*d) + ((sqrt(a) + sqrt(b))^(7/2)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^2*d) - (11*cos(c + d*x)*sin(c + d*x))/(8*b*d) - (cos(c + d*x)^3*sin(c + d*x))/(4*b*d)]
    @test_int [cos(c + d*x)^6/(a - b*sin(c + d*x)^4), x, 9, -((5*x)/(2*b)) - ((sqrt(a) - sqrt(b))^(5/2)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(3/2)*d) + ((sqrt(a) + sqrt(b))^(5/2)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*b^(3/2)*d) - (cos(c + d*x)*sin(c + d*x))/(2*b*d)]
    @test_int [cos(c + d*x)^4/(a - b*sin(c + d*x)^4), x, 7, -(x/b) + ((sqrt(a) - sqrt(b))^(3/2)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*b*d) + ((sqrt(a) + sqrt(b))^(3/2)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*b*d)]
    @test_int [cos(c + d*x)^2/(a - b*sin(c + d*x)^4), x, 4, -((sqrt(sqrt(a) - sqrt(b))*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*sqrt(b)*d)) + (sqrt(sqrt(a) + sqrt(b))*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*sqrt(b)*d)]
    @test_int [sec(c + d*x)^2/(a - b*sin(c + d*x)^4), x, 6, -((sqrt(b)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) - sqrt(b))^(3/2)*d)) + (sqrt(b)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) + sqrt(b))^(3/2)*d) + tan(c + d*x)/((a - b)*d)]
    @test_int [sec(c + d*x)^4/(a - b*sin(c + d*x)^4), x, 6, (b*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) - sqrt(b))^(5/2)*d) + (b*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) + sqrt(b))^(5/2)*d) + ((a - 3*b)*tan(c + d*x))/((a - b)^2*d) + tan(c + d*x)^3/(3*(a - b)*d)]
    @test_int [sec(c + d*x)^6/(a - b*sin(c + d*x)^4), x, 6, -((b^(3/2)*atan((sqrt(sqrt(a) - sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) - sqrt(b))^(7/2)*d)) + (b^(3/2)*atan((sqrt(sqrt(a) + sqrt(b))*tan(c + d*x))/a^(1/4)))/(2*a^(3/4)*(sqrt(a) + sqrt(b))^(7/2)*d) + ((a^2 - 3*a*b + 6*b^2)*tan(c + d*x))/((a - b)^3*d) + (2*(a - 2*b)*tan(c + d*x)^3)/(3*(a - b)^2*d) + tan(c + d*x)^5/(5*(a - b)*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*sin(e+f*x)^4)^p*when*p*symbolic=#


    @test_int [cos(e + f*x)^m*(a + b*sin(e + f*x)^4)^p, x, 0, Unintegrable(cos(e + f*x)^m*(a + b*sin(e + f*x)^4)^p, x)]


    @test_int [cos(e + f*x)^5*(a + b*sin(e + f*x)^4)^p, x, 8, (sin(e + f*x)*(a + b*sin(e + f*x)^4)^(1 + p))/(b*f*(5 + 4*p)) - ((a - b*(5 + 4*p))*Hypergeometric2F1(1/4, -p, 5/4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*(b*f*(5 + 4*p))) - (2*Hypergeometric2F1(3/4, -p, 7/4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)^3*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*(3*f))]
    @test_int [cos(e + f*x)^3*(a + b*sin(e + f*x)^4)^p, x, 7, (Hypergeometric2F1(1/4, -p, 5/4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*f) - (Hypergeometric2F1(3/4, -p, 7/4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)^3*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*(3*f))]
    @test_int [cos(e + f*x)^1*(a + b*sin(e + f*x)^4)^p, x, 3, (Hypergeometric2F1(1/4, -p, 5/4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*f)]
    @test_int [sec(e + f*x)^1*(a + b*sin(e + f*x)^4)^p, x, 7, (AppellF1(1/4, 1, -p, 5/4, sin(e + f*x)^4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*f) + (AppellF1(3/4, 1, -p, 7/4, sin(e + f*x)^4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)^3*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*(3*f))]
    @test_int [sec(e + f*x)^3*(a + b*sin(e + f*x)^4)^p, x, 9, (AppellF1(1/4, 2, -p, 5/4, sin(e + f*x)^4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*f) + (2*AppellF1(3/4, 2, -p, 7/4, sin(e + f*x)^4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)^3*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*(3*f)) + (AppellF1(5/4, 2, -p, 9/4, sin(e + f*x)^4, -((b*sin(e + f*x)^4)/a))*sin(e + f*x)^5*(a + b*sin(e + f*x)^4)^p)/((1 + (b*sin(e + f*x)^4)/a)^p*(5*f))]

    @test_int [cos(e + f*x)^4*(a + b*sin(e + f*x)^4)^p, x, 0, Unintegrable(cos(e + f*x)^4*(a + b*sin(e + f*x)^4)^p, x)]
    @test_int [cos(e + f*x)^2*(a + b*sin(e + f*x)^4)^p, x, 0, Unintegrable(cos(e + f*x)^2*(a + b*sin(e + f*x)^4)^p, x)]
    @test_int [cos(e + f*x)^0*(a + b*sin(e + f*x)^4)^p, x, 0, Unintegrable((a + b*sin(e + f*x)^4)^p, x)]
    @test_int [sec(e + f*x)^2*(a + b*sin(e + f*x)^4)^p, x, 0, Unintegrable(sec(e + f*x)^2*(a + b*sin(e + f*x)^4)^p, x)]
    @test_int [sec(e + f*x)^4*(a + b*sin(e + f*x)^4)^p, x, 0, Unintegrable(sec(e + f*x)^4*(a + b*sin(e + f*x)^4)^p, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*sin(e+f*x)^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*sin(e+f*x)^n)^p*when*p*symbolic=#


    @test_int [cos(e + f*x)^m*(a + b*sin(e + f*x)^n)^p, x, 0, Unintegrable(cos(e + f*x)^m*(a + b*sin(e + f*x)^n)^p, x)]


    @test_int [cos(e + f*x)^5*(a + b*sin(e + f*x)^n)^p, x, 9, (Hypergeometric2F1(1/n, -p, 1 + 1/n, -((b*sin(e + f*x)^n)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^n)^p)/((1 + (b*sin(e + f*x)^n)/a)^p*f) - (2*Hypergeometric2F1(3/n, -p, (3 + n)/n, -((b*sin(e + f*x)^n)/a))*sin(e + f*x)^3*(a + b*sin(e + f*x)^n)^p)/((1 + (b*sin(e + f*x)^n)/a)^p*(3*f)) + (Hypergeometric2F1(5/n, -p, (5 + n)/n, -((b*sin(e + f*x)^n)/a))*sin(e + f*x)^5*(a + b*sin(e + f*x)^n)^p)/((1 + (b*sin(e + f*x)^n)/a)^p*(5*f))]
    @test_int [cos(e + f*x)^3*(a + b*sin(e + f*x)^n)^p, x, 7, (Hypergeometric2F1(1/n, -p, 1 + 1/n, -((b*sin(e + f*x)^n)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^n)^p)/((1 + (b*sin(e + f*x)^n)/a)^p*f) - (Hypergeometric2F1(3/n, -p, (3 + n)/n, -((b*sin(e + f*x)^n)/a))*sin(e + f*x)^3*(a + b*sin(e + f*x)^n)^p)/((1 + (b*sin(e + f*x)^n)/a)^p*(3*f))]
    @test_int [cos(e + f*x)^1*(a + b*sin(e + f*x)^n)^p, x, 3, (Hypergeometric2F1(1/n, -p, 1 + 1/n, -((b*sin(e + f*x)^n)/a))*sin(e + f*x)*(a + b*sin(e + f*x)^n)^p)/((1 + (b*sin(e + f*x)^n)/a)^p*f)]
    @test_int [sec(e + f*x)^1*(a + b*sin(e + f*x)^n)^p, x, 0, Unintegrable(sec(e + f*x)*(a + b*sin(e + f*x)^n)^p, x)]
    @test_int [sec(e + f*x)^3*(a + b*sin(e + f*x)^n)^p, x, 0, Unintegrable(sec(e + f*x)^3*(a + b*sin(e + f*x)^n)^p, x)]

    @test_int [cos(e + f*x)^4*(a + b*sin(e + f*x)^n)^p, x, 0, Unintegrable(cos(e + f*x)^4*(a + b*sin(e + f*x)^n)^p, x)]
    @test_int [cos(e + f*x)^2*(a + b*sin(e + f*x)^n)^p, x, 0, Unintegrable(cos(e + f*x)^2*(a + b*sin(e + f*x)^n)^p, x)]
    @test_int [cos(e + f*x)^0*(a + b*sin(e + f*x)^n)^p, x, 0, Unintegrable((a + b*sin(e + f*x)^n)^p, x)]
    @test_int [sec(e + f*x)^2*(a + b*sin(e + f*x)^n)^p, x, 0, Unintegrable(sec(e + f*x)^2*(a + b*sin(e + f*x)^n)^p, x)]
    @test_int [sec(e + f*x)^4*(a + b*sin(e + f*x)^n)^p, x, 0, Unintegrable(sec(e + f*x)^4*(a + b*sin(e + f*x)^n)^p, x)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*sin(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*sin(e+f*x)^2)^p=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^2)^p*when*a+b=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^2)^p=#


    @test_int [tan(c + d*x)^7/(a + b*sin(c + d*x)^2), x, 3, (a^3*log(cos(c + d*x)))/((a + b)^4*d) - (a^3*log(a + b*sin(c + d*x)^2))/(2*(a + b)^4*d) + ((3*a^2 + 3*a*b + b^2)*sec(c + d*x)^2)/(2*(a + b)^3*d) - ((3*a + 2*b)*sec(c + d*x)^4)/(4*(a + b)^2*d) + sec(c + d*x)^6/(6*(a + b)*d)]
    @test_int [tan(c + d*x)^5/(a + b*sin(c + d*x)^2), x, 3, -((a^2*log(cos(c + d*x)))/((a + b)^3*d)) + (a^2*log(a + b*sin(c + d*x)^2))/(2*(a + b)^3*d) - ((2*a + b)*sec(c + d*x)^2)/(2*(a + b)^2*d) + sec(c + d*x)^4/(4*(a + b)*d)]
    @test_int [tan(c + d*x)^3/(a + b*sin(c + d*x)^2), x, 3, (a*log(cos(c + d*x)))/((a + b)^2*d) - (a*log(a + b*sin(c + d*x)^2))/(2*(a + b)^2*d) + sec(c + d*x)^2/(2*(a + b)*d)]
    @test_int [tan(c + d*x)^1/(a + b*sin(c + d*x)^2), x, 4, -(log(cos(c + d*x))/((a + b)*d)) + log(a + b*sin(c + d*x)^2)/(2*(a + b)*d)]
    @test_int [cot(c + d*x)^1/(a + b*sin(c + d*x)^2), x, 4, log(sin(c + d*x))/(a*d) - log(a + b*sin(c + d*x)^2)/(2*a*d)]
    @test_int [cot(c + d*x)^3/(a + b*sin(c + d*x)^2), x, 3, -(csc(c + d*x)^2/(2*a*d)) - ((a + b)*log(sin(c + d*x)))/(a^2*d) + ((a + b)*log(a + b*sin(c + d*x)^2))/(2*a^2*d)]
    @test_int [cot(c + d*x)^5/(a + b*sin(c + d*x)^2), x, 3, ((2*a + b)*csc(c + d*x)^2)/(2*a^2*d) - csc(c + d*x)^4/(4*a*d) + ((a + b)^2*log(sin(c + d*x)))/(a^3*d) - ((a + b)^2*log(a + b*sin(c + d*x)^2))/(2*a^3*d)]
    @test_int [cot(c + d*x)^7/(a + b*sin(c + d*x)^2), x, 3, -(((3*a^2 + 3*a*b + b^2)*csc(c + d*x)^2)/(2*a^3*d)) + ((3*a + b)*csc(c + d*x)^4)/(4*a^2*d) - csc(c + d*x)^6/(6*a*d) - ((a + b)^3*log(sin(c + d*x)))/(a^4*d) + ((a + b)^3*log(a + b*sin(c + d*x)^2))/(2*a^4*d)]

    @test_int [tan(c + d*x)^8/(a + b*sin(c + d*x)^2), x, 4, (a^(7/2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/((a + b)^(9/2)*d) - (a^3*tan(c + d*x))/((a + b)^4*d) + (a^2*tan(c + d*x)^3)/(3*(a + b)^3*d) - (a*tan(c + d*x)^5)/(5*(a + b)^2*d) + tan(c + d*x)^7/(7*(a + b)*d)]
    @test_int [tan(c + d*x)^6/(a + b*sin(c + d*x)^2), x, 4, -((a^(5/2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/((a + b)^(7/2)*d)) + (a^2*tan(c + d*x))/((a + b)^3*d) - (a*tan(c + d*x)^3)/(3*(a + b)^2*d) + tan(c + d*x)^5/(5*(a + b)*d)]
    @test_int [tan(c + d*x)^4/(a + b*sin(c + d*x)^2), x, 4, (a^(3/2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/((a + b)^(5/2)*d) - (a*tan(c + d*x))/((a + b)^2*d) + tan(c + d*x)^3/(3*(a + b)*d)]
    @test_int [tan(c + d*x)^2/(a + b*sin(c + d*x)^2), x, 3, -((sqrt(a)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/((a + b)^(3/2)*d)) + tan(c + d*x)/((a + b)*d)]
    @test_int [cot(c + d*x)^2/(a + b*sin(c + d*x)^2), x, 3, -((sqrt(a + b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(a^(3/2)*d)) - cot(c + d*x)/(a*d)]
    @test_int [cot(c + d*x)^4/(a + b*sin(c + d*x)^2), x, 4, ((a + b)^(3/2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(a^(5/2)*d) + ((a + b)*cot(c + d*x))/(a^2*d) - cot(c + d*x)^3/(3*a*d)]
    @test_int [cot(c + d*x)^6/(a + b*sin(c + d*x)^2), x, 5, -(((a + b)^(5/2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(a^(7/2)*d)) - ((a + b)^2*cot(c + d*x))/(a^3*d) + ((a + b)*cot(c + d*x)^3)/(3*a^2*d) - cot(c + d*x)^5/(5*a*d)]
    @test_int [cot(c + d*x)^8/(a + b*sin(c + d*x)^2), x, 6, ((a + b)^(7/2)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a)))/(a^(9/2)*d) + ((a + b)^3*cot(c + d*x))/(a^4*d) - ((a + b)^2*cot(c + d*x)^3)/(3*a^3*d) + ((a + b)*cot(c + d*x)^5)/(5*a^2*d) - cot(c + d*x)^7/(7*a*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^2)^(p/2)*when*a+b=0=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(a - a*sin(e + f*x)^2)*tan(e + f*x)^5, x, 5, a^2/(3*f*(a*cos(e + f*x)^2)^(3/2)) - (2*a)/(f*sqrt(a*cos(e + f*x)^2)) - sqrt(a*cos(e + f*x)^2)/f]
    @test_int [sqrt(a - a*sin(e + f*x)^2)*tan(e + f*x)^3, x, 5, a/(f*sqrt(a*cos(e + f*x)^2)) + sqrt(a*cos(e + f*x)^2)/f]
    @test_int [sqrt(a - a*sin(e + f*x)^2)*tan(e + f*x)^1, x, 4, -(sqrt(a*cos(e + f*x)^2)/f)]
    @test_int [cot(e + f*x)^1*sqrt(a - a*sin(e + f*x)^2), x, 5, -((sqrt(a)*atanh(sqrt(a*cos(e + f*x)^2)/sqrt(a)))/f) + sqrt(a*cos(e + f*x)^2)/f]
    @test_int [cot(e + f*x)^3*sqrt(a - a*sin(e + f*x)^2), x, 7, (3*sqrt(a)*atanh(sqrt(a*cos(e + f*x)^2)/sqrt(a)))/(2*f) - (3*sqrt(a*cos(e + f*x)^2))/(2*f) - ((a*cos(e + f*x)^2)^(3/2)*csc(e + f*x)^2)/(2*a*f)]

    @test_int [sqrt(a - a*sin(e + f*x)^2)*tan(e + f*x)^6, x, 7, (15*atanh(sin(e + f*x))*sqrt(a*cos(e + f*x)^2)*sec(e + f*x))/(8*f) - (15*sqrt(a*cos(e + f*x)^2)*tan(e + f*x))/(8*f) - (5*sqrt(a*cos(e + f*x)^2)*tan(e + f*x)^3)/(8*f) + (sqrt(a*cos(e + f*x)^2)*tan(e + f*x)^5)/(4*f)]
    @test_int [sqrt(a - a*sin(e + f*x)^2)*tan(e + f*x)^4, x, 6, (-3*atanh(sin(e + f*x))*sqrt(a*cos(e + f*x)^2)*sec(e + f*x))/(2*f) + (3*sqrt(a*cos(e + f*x)^2)*tan(e + f*x))/(2*f) + (sqrt(a*cos(e + f*x)^2)*tan(e + f*x)^3)/(2*f)]
    @test_int [sqrt(a - a*sin(e + f*x)^2)*tan(e + f*x)^2, x, 5, (atanh(sin(e + f*x))*sqrt(a*cos(e + f*x)^2)*sec(e + f*x))/f - (sqrt(a*cos(e + f*x)^2)*tan(e + f*x))/f]
    @test_int [cot(e + f*x)^2*sqrt(a - a*sin(e + f*x)^2), x, 5, -((sqrt(a*cos(e + f*x)^2)*csc(e + f*x)*sec(e + f*x))/f) - (sqrt(a*cos(e + f*x)^2)*tan(e + f*x))/f]
    @test_int [cot(e + f*x)^4*sqrt(a - a*sin(e + f*x)^2), x, 5, (2*sqrt(a*cos(e + f*x)^2)*csc(e + f*x)*sec(e + f*x))/f - (sqrt(a*cos(e + f*x)^2)*csc(e + f*x)^3*sec(e + f*x))/(3*f) + (sqrt(a*cos(e + f*x)^2)*tan(e + f*x))/f]
    @test_int [cot(e + f*x)^6*sqrt(a - a*sin(e + f*x)^2), x, 5, (-3*sqrt(a*cos(e + f*x)^2)*csc(e + f*x)*sec(e + f*x))/f + (sqrt(a*cos(e + f*x)^2)*csc(e + f*x)^3*sec(e + f*x))/f - (sqrt(a*cos(e + f*x)^2)*csc(e + f*x)^5*sec(e + f*x))/(5*f) - (sqrt(a*cos(e + f*x)^2)*tan(e + f*x))/f]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(e + f*x)^5/sqrt(a - a*sin(e + f*x)^2), x, 5, a^2/(5*f*(a*cos(e + f*x)^2)^(5/2)) - (2*a)/(3*f*(a*cos(e + f*x)^2)^(3/2)) + 1/(f*sqrt(a*cos(e + f*x)^2))]
    @test_int [tan(e + f*x)^3/sqrt(a - a*sin(e + f*x)^2), x, 5, a/(3*f*(a*cos(e + f*x)^2)^(3/2)) - 1/(f*sqrt(a*cos(e + f*x)^2))]
    @test_int [tan(e + f*x)^1/sqrt(a - a*sin(e + f*x)^2), x, 4, 1/(f*sqrt(a*cos(e + f*x)^2))]
    @test_int [cot(e + f*x)^1/sqrt(a - a*sin(e + f*x)^2), x, 4, -(atanh(sqrt(a*cos(e + f*x)^2)/sqrt(a))/(sqrt(a)*f))]
    @test_int [cot(e + f*x)^3/sqrt(a - a*sin(e + f*x)^2), x, 6, atanh(sqrt(a*cos(e + f*x)^2)/sqrt(a))/(2*sqrt(a)*f) - (sqrt(a*cos(e + f*x)^2)*csc(e + f*x)^2)/(2*a*f)]

    @test_int [tan(e + f*x)^4/sqrt(a - a*sin(e + f*x)^2), x, 5, (3*atanh(sin(e + f*x))*cos(e + f*x))/(8*f*sqrt(a*cos(e + f*x)^2)) - (3*tan(e + f*x))/(8*f*sqrt(a*cos(e + f*x)^2)) + tan(e + f*x)^3/(4*f*sqrt(a*cos(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/sqrt(a - a*sin(e + f*x)^2), x, 4, -(atanh(sin(e + f*x))*cos(e + f*x))/(2*f*sqrt(a*cos(e + f*x)^2)) + tan(e + f*x)/(2*f*sqrt(a*cos(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/sqrt(a - a*sin(e + f*x)^2), x, 4, -(cot(e + f*x)/(f*sqrt(a*cos(e + f*x)^2)))]
    @test_int [cot(e + f*x)^4/sqrt(a - a*sin(e + f*x)^2), x, 4, cot(e + f*x)/(f*sqrt(a*cos(e + f*x)^2)) - (cot(e + f*x)*csc(e + f*x)^2)/(3*f*sqrt(a*cos(e + f*x)^2))]
    @test_int [cot(e + f*x)^6/sqrt(a - a*sin(e + f*x)^2), x, 5, -(cot(e + f*x)/(f*sqrt(a*cos(e + f*x)^2))) + (2*cot(e + f*x)*csc(e + f*x)^2)/(3*f*sqrt(a*cos(e + f*x)^2)) - (cot(e + f*x)*csc(e + f*x)^4)/(5*f*sqrt(a*cos(e + f*x)^2))]


    @test_int [tan(e + f*x)^5/(a - a*sin(e + f*x)^2)^(3/2), x, 5, a^2/(7*f*(a*cos(e + f*x)^2)^(7/2)) - (2*a)/(5*f*(a*cos(e + f*x)^2)^(5/2)) + 1/(3*f*(a*cos(e + f*x)^2)^(3/2))]
    @test_int [tan(e + f*x)^3/(a - a*sin(e + f*x)^2)^(3/2), x, 5, a/(5*f*(a*cos(e + f*x)^2)^(5/2)) - 1/(3*f*(a*cos(e + f*x)^2)^(3/2))]
    @test_int [tan(e + f*x)^1/(a - a*sin(e + f*x)^2)^(3/2), x, 4, 1/(3*f*(a*cos(e + f*x)^2)^(3/2))]
    @test_int [cot(e + f*x)^1/(a - a*sin(e + f*x)^2)^(3/2), x, 5, -(atanh(sqrt(a*cos(e + f*x)^2)/sqrt(a))/(a^(3/2)*f)) + 1/(a*f*sqrt(a*cos(e + f*x)^2))]
    @test_int [cot(e + f*x)^3/(a - a*sin(e + f*x)^2)^(3/2), x, 6, -atanh(sqrt(a*cos(e + f*x)^2)/sqrt(a))/(2*a^(3/2)*f) - (sqrt(a*cos(e + f*x)^2)*csc(e + f*x)^2)/(2*a^2*f)]

    @test_int [tan(e + f*x)^2/(a - a*sin(e + f*x)^2)^(3/2), x, 5, -(atanh(sin(e + f*x))*cos(e + f*x))/(8*a*f*sqrt(a*cos(e + f*x)^2)) - tan(e + f*x)/(8*a*f*sqrt(a*cos(e + f*x)^2)) + (sec(e + f*x)^2*tan(e + f*x))/(4*a*f*sqrt(a*cos(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a - a*sin(e + f*x)^2)^(3/2), x, 5, (atanh(sin(e + f*x))*cos(e + f*x))/(a*f*sqrt(a*cos(e + f*x)^2)) - cot(e + f*x)/(a*f*sqrt(a*cos(e + f*x)^2))]
    @test_int [cot(e + f*x)^4/(a - a*sin(e + f*x)^2)^(3/2), x, 4, -(cot(e + f*x)*csc(e + f*x)^2)/(3*a*f*sqrt(a*cos(e + f*x)^2))]
    @test_int [cot(e + f*x)^6/(a - a*sin(e + f*x)^2)^(3/2), x, 5, (cot(e + f*x)*csc(e + f*x)^2)/(3*a*f*sqrt(a*cos(e + f*x)^2)) - (cot(e + f*x)*csc(e + f*x)^4)/(5*a*f*sqrt(a*cos(e + f*x)^2))]
    @test_int [cot(e + f*x)^8/(a - a*sin(e + f*x)^2)^(3/2), x, 5, -(cot(e + f*x)*csc(e + f*x)^2)/(3*a*f*sqrt(a*cos(e + f*x)^2)) + (2*cot(e + f*x)*csc(e + f*x)^4)/(5*a*f*sqrt(a*cos(e + f*x)^2)) - (cot(e + f*x)*csc(e + f*x)^6)/(7*a*f*sqrt(a*cos(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x)^5, x, 6, ((8*a^2 + 24*a*b + 15*b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(8*(a + b)^(3/2)*f) - ((8*a^2 + 24*a*b + 15*b^2)*sqrt(a + b*sin(e + f*x)^2))/(8*(a + b)^2*f) - ((8*a + 7*b)*sec(e + f*x)^2*(a + b*sin(e + f*x)^2)^(3/2))/(8*(a + b)^2*f) + (sec(e + f*x)^4*(a + b*sin(e + f*x)^2)^(3/2))/(4*(a + b)*f)]
    @test_int [sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x)^3, x, 5, -((2*a + 3*b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(2*sqrt(a + b)*f) + ((2*a + 3*b)*sqrt(a + b*sin(e + f*x)^2))/(2*(a + b)*f) + (sec(e + f*x)^2*(a + b*sin(e + f*x)^2)^(3/2))/(2*(a + b)*f)]
    @test_int [sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x)^1, x, 4, (sqrt(a + b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/f - sqrt(a + b*sin(e + f*x)^2)/f]
    @test_int [cot(e + f*x)^1*sqrt(a + b*sin(e + f*x)^2), x, 4, -((sqrt(a)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/f) + sqrt(a + b*sin(e + f*x)^2)/f]
    @test_int [cot(e + f*x)^3*sqrt(a + b*sin(e + f*x)^2), x, 5, ((2*a - b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(2*sqrt(a)*f) - ((2*a - b)*sqrt(a + b*sin(e + f*x)^2))/(2*a*f) - (csc(e + f*x)^2*(a + b*sin(e + f*x)^2)^(3/2))/(2*a*f)]
    @test_int [cot(e + f*x)^5*sqrt(a + b*sin(e + f*x)^2), x, 6, -((8*a^2 - 8*a*b - b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(8*a^(3/2)*f) + ((8*a^2 - 8*a*b - b^2)*sqrt(a + b*sin(e + f*x)^2))/(8*a^2*f) + ((8*a + b)*csc(e + f*x)^2*(a + b*sin(e + f*x)^2)^(3/2))/(8*a^2*f) - (csc(e + f*x)^4*(a + b*sin(e + f*x)^2)^(3/2))/(4*a*f)]

    @test_int [sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x)^4, x, 8, ((7*a + 8*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (4*a*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2)) - ((3*a + 4*b)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*(a + b)*f) + (sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x)^3)/(3*f)]
    @test_int [sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x)^2, x, 7, -((2*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (a*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2)) + (sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/f]
    @test_int [sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x)^0, x, 2, (EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a))]
    @test_int [cot(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2), x, 7, -((cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/f) - (2*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + ((a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^4*sqrt(a + b*sin(e + f*x)^2), x, 8, ((3*a - b)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a*f) - (cot(e + f*x)^3*sqrt(a + b*sin(e + f*x)^2))/(3*f) + ((7*a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (4*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2))]


    @test_int [(a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x)^5, x, 7, ((8*a^2 + 40*a*b + 35*b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(8*sqrt(a + b)*f) - ((8*a^2 + 40*a*b + 35*b^2)*sqrt(a + b*sin(e + f*x)^2))/(8*(a + b)*f) - ((8*a^2 + 40*a*b + 35*b^2)*(a + b*sin(e + f*x)^2)^(3/2))/(24*(a + b)^2*f) - ((8*a + 9*b)*sec(e + f*x)^2*(a + b*sin(e + f*x)^2)^(5/2))/(8*(a + b)^2*f) + (sec(e + f*x)^4*(a + b*sin(e + f*x)^2)^(5/2))/(4*(a + b)*f)]
    @test_int [(a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x)^3, x, 6, -(sqrt(a + b)*(2*a + 5*b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(2*f) + ((2*a + 5*b)*sqrt(a + b*sin(e + f*x)^2))/(2*f) + ((2*a + 5*b)*(a + b*sin(e + f*x)^2)^(3/2))/(6*(a + b)*f) + (sec(e + f*x)^2*(a + b*sin(e + f*x)^2)^(5/2))/(2*(a + b)*f)]
    @test_int [(a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x)^1, x, 5, ((a + b)^(3/2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/f - ((a + b)*sqrt(a + b*sin(e + f*x)^2))/f - (a + b*sin(e + f*x)^2)^(3/2)/(3*f)]
    @test_int [cot(e + f*x)^1*(a + b*sin(e + f*x)^2)^(3/2), x, 5, -((a^(3/2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/f) + (a*sqrt(a + b*sin(e + f*x)^2))/f + (a + b*sin(e + f*x)^2)^(3/2)/(3*f)]
    @test_int [cot(e + f*x)^3*(a + b*sin(e + f*x)^2)^(3/2), x, 6, (sqrt(a)*(2*a - 3*b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(2*f) - ((2*a - 3*b)*sqrt(a + b*sin(e + f*x)^2))/(2*f) - ((2*a - 3*b)*(a + b*sin(e + f*x)^2)^(3/2))/(6*a*f) - (csc(e + f*x)^2*(a + b*sin(e + f*x)^2)^(5/2))/(2*a*f)]
    @test_int [cot(e + f*x)^5*(a + b*sin(e + f*x)^2)^(3/2), x, 7, -((8*a^2 - 24*a*b + 3*b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(8*sqrt(a)*f) + ((8*a^2 - 24*a*b + 3*b^2)*sqrt(a + b*sin(e + f*x)^2))/(8*a*f) + ((8*a^2 - 24*a*b + 3*b^2)*(a + b*sin(e + f*x)^2)^(3/2))/(24*a^2*f) + ((8*a - b)*csc(e + f*x)^2*(a + b*sin(e + f*x)^2)^(5/2))/(8*a^2*f) - (csc(e + f*x)^4*(a + b*sin(e + f*x)^2)^(5/2))/(4*a*f)]

    @test_int [(a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x)^4, x, 9, -(((3*a + 8*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f)) + (8*(a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (a*(5*a + 8*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2)) - ((a + 2*b)*sin(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/f + ((a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x)^3)/(3*f)]
    @test_int [(a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x)^2, x, 8, (4*b*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f) - ((7*a + 8*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (4*a*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2)) + ((a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x))/f]
    @test_int [(a + b*sin(e + f*x)^2)^(3/2)*tan(e + f*x)^0, x, 6, -((b*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f)) + (2*(2*a + b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (a*(a + b)*EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^2*(a + b*sin(e + f*x)^2)^(3/2), x, 8, (4*b*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f) - (cot(e + f*x)*(a + b*sin(e + f*x)^2)^(3/2))/f - ((7*a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (4*a*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^4*(a + b*sin(e + f*x)^2)^(3/2), x, 9, ((a - b)*cos(e + f*x)^2*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/f + ((3*a - 5*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f) - (cot(e + f*x)^3*(a + b*sin(e + f*x)^2)^(3/2))/(3*f) + (8*(a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - ((5*a - 3*b)*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*f*sqrt(a + b*sin(e + f*x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(e + f*x)^5/sqrt(a + b*sin(e + f*x)^2), x, 5, ((8*a^2 + 8*a*b + 3*b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(8*(a + b)^(5/2)*f) - ((8*a + 5*b)*sec(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(8*(a + b)^2*f) + (sec(e + f*x)^4*sqrt(a + b*sin(e + f*x)^2))/(4*(a + b)*f)]
    @test_int [tan(e + f*x)^3/sqrt(a + b*sin(e + f*x)^2), x, 4, -((2*a + b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(2*(a + b)^(3/2)*f) + (sec(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(2*(a + b)*f)]
    @test_int [tan(e + f*x)^1/sqrt(a + b*sin(e + f*x)^2), x, 3, atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b))/(sqrt(a + b)*f)]
    @test_int [cot(e + f*x)^1/sqrt(a + b*sin(e + f*x)^2), x, 3, -(atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a))/(sqrt(a)*f))]
    @test_int [cot(e + f*x)^3/sqrt(a + b*sin(e + f*x)^2), x, 4, ((2*a + b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(2*a^(3/2)*f) - (csc(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(2*a*f)]
    @test_int [cot(e + f*x)^5/sqrt(a + b*sin(e + f*x)^2), x, 5, -((8*a^2 + 8*a*b + 3*b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(8*a^(5/2)*f) + ((8*a + 3*b)*csc(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(8*a^2*f) - (csc(e + f*x)^4*sqrt(a + b*sin(e + f*x)^2))/(4*a*f)]

    @test_int [tan(e + f*x)^4/sqrt(a + b*sin(e + f*x)^2), x, 8, (2*(2*a + b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (a*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) - (2*(2*a + b)*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*(a + b)^2*f) + (sec(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/(3*(a + b)*f)]
    @test_int [tan(e + f*x)^2/sqrt(a + b*sin(e + f*x)^2), x, 4, -((sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/((a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a))) + (sqrt(a + b*sin(e + f*x)^2)*tan(e + f*x))/((a + b)*f)]
    @test_int [tan(e + f*x)^0/sqrt(a + b*sin(e + f*x)^2), x, 2, (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/sqrt(a + b*sin(e + f*x)^2), x, 5, -((cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a*f)) - (sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a*f*sqrt(1 + (b*sin(e + f*x)^2)/a))]
    @test_int [cot(e + f*x)^4/sqrt(a + b*sin(e + f*x)^2), x, 8, (2*(2*a + b)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*f) - (cot(e + f*x)*csc(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(3*a*f) + (2*(2*a + b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - ((a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*f*sqrt(a + b*sin(e + f*x)^2))]


    @test_int [tan(e + f*x)^5/(a + b*sin(e + f*x)^2)^(3/2), x, 6, ((8*a^2 - 8*a*b - b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(8*(a + b)^(7/2)*f) - (8*a^2 - 8*a*b - b^2)/(8*(a + b)^3*f*sqrt(a + b*sin(e + f*x)^2)) - ((8*a + 3*b)*sec(e + f*x)^2)/(8*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + sec(e + f*x)^4/(4*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^3/(a + b*sin(e + f*x)^2)^(3/2), x, 5, -((2*a - b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(2*(a + b)^(5/2)*f) + (2*a - b)/(2*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + sec(e + f*x)^2/(2*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^1/(a + b*sin(e + f*x)^2)^(3/2), x, 4, atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b))/((a + b)^(3/2)*f) - 1/((a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^1/(a + b*sin(e + f*x)^2)^(3/2), x, 4, -(atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a))/(a^(3/2)*f)) + 1/(a*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^3/(a + b*sin(e + f*x)^2)^(3/2), x, 5, ((2*a + 3*b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(2*a^(5/2)*f) - (2*a + 3*b)/(2*a^2*f*sqrt(a + b*sin(e + f*x)^2)) - csc(e + f*x)^2/(2*a*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^5/(a + b*sin(e + f*x)^2)^(3/2), x, 6, -((8*a^2 + 24*a*b + 15*b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(8*a^(7/2)*f) + (8*a^2 + 24*a*b + 15*b^2)/(8*a^3*f*sqrt(a + b*sin(e + f*x)^2)) + ((8*a + 5*b)*csc(e + f*x)^2)/(8*a^2*f*sqrt(a + b*sin(e + f*x)^2)) - csc(e + f*x)^4/(4*a*f*sqrt(a + b*sin(e + f*x)^2))]

    @test_int [tan(e + f*x)^4/(a + b*sin(e + f*x)^2)^(3/2), x, 9, ((7*a - b)*b*cos(e + f*x)*sin(e + f*x))/(3*(a + b)^3*f*sqrt(a + b*sin(e + f*x)^2)) + ((7*a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*(a + b)^3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (4*a*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) - (4*a*tan(e + f*x))/(3*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + (sec(e + f*x)^2*tan(e + f*x))/(3*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/(a + b*sin(e + f*x)^2)^(3/2), x, 8, -((2*b*cos(e + f*x)*sin(e + f*x))/((a + b)^2*f*sqrt(a + b*sin(e + f*x)^2))) - (2*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/((a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/((a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + tan(e + f*x)/((a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^0/(a + b*sin(e + f*x)^2)^(3/2), x, 4, (b*cos(e + f*x)*sin(e + f*x))/(a*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) + (EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(a*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a))]
    @test_int [cot(e + f*x)^2/(a + b*sin(e + f*x)^2)^(3/2), x, 8, cot(e + f*x)/(a*f*sqrt(a + b*sin(e + f*x)^2)) - (2*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a^2*f) - (2*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(a^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(a*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^4/(a + b*sin(e + f*x)^2)^(3/2), x, 9, ((a + b)*cot(e + f*x)*csc(e + f*x)^2)/(a*b*f*sqrt(a + b*sin(e + f*x)^2)) + ((7*a + 8*b)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^3*f) - ((3*a + 4*b)*cot(e + f*x)*csc(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*b*f) + ((7*a + 8*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (4*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a^2*f*sqrt(a + b*sin(e + f*x)^2))]


    @test_int [tan(e + f*x)^5/(a + b*sin(e + f*x)^2)^(5/2), x, 7, ((8*a^2 - 24*a*b + 3*b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(8*(a + b)^(9/2)*f) - (8*a^2 - 24*a*b + 3*b^2)/(24*(a + b)^3*f*(a + b*sin(e + f*x)^2)^(3/2)) - ((8*a + b)*sec(e + f*x)^2)/(8*(a + b)^2*f*(a + b*sin(e + f*x)^2)^(3/2)) + sec(e + f*x)^4/(4*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) - (8*a^2 - 24*a*b + 3*b^2)/(8*(a + b)^4*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^3/(a + b*sin(e + f*x)^2)^(5/2), x, 6, -((2*a - 3*b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b)))/(2*(a + b)^(7/2)*f) + (2*a - 3*b)/(6*(a + b)^2*f*(a + b*sin(e + f*x)^2)^(3/2)) + sec(e + f*x)^2/(2*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) + (2*a - 3*b)/(2*(a + b)^3*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^1/(a + b*sin(e + f*x)^2)^(5/2), x, 5, atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a + b))/((a + b)^(5/2)*f) - 1/(3*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) - 1/((a + b)^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^1/(a + b*sin(e + f*x)^2)^(5/2), x, 5, -(atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a))/(a^(5/2)*f)) + 1/(3*a*f*(a + b*sin(e + f*x)^2)^(3/2)) + 1/(a^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^3/(a + b*sin(e + f*x)^2)^(5/2), x, 6, ((2*a + 5*b)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(2*a^(7/2)*f) - (2*a + 5*b)/(6*a^2*f*(a + b*sin(e + f*x)^2)^(3/2)) - csc(e + f*x)^2/(2*a*f*(a + b*sin(e + f*x)^2)^(3/2)) - (2*a + 5*b)/(2*a^3*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^5/(a + b*sin(e + f*x)^2)^(5/2), x, 7, -((8*a^2 + 40*a*b + 35*b^2)*atanh(sqrt(a + b*sin(e + f*x)^2)/sqrt(a)))/(8*a^(9/2)*f) + (8*a^2 + 40*a*b + 35*b^2)/(24*a^3*f*(a + b*sin(e + f*x)^2)^(3/2)) + ((8*a + 7*b)*csc(e + f*x)^2)/(8*a^2*f*(a + b*sin(e + f*x)^2)^(3/2)) - csc(e + f*x)^4/(4*a*f*(a + b*sin(e + f*x)^2)^(3/2)) + (8*a^2 + 40*a*b + 35*b^2)/(8*a^4*f*sqrt(a + b*sin(e + f*x)^2))]

    @test_int [tan(e + f*x)^4/(a + b*sin(e + f*x)^2)^(5/2), x, 10, ((5*a - 3*b)*b*cos(e + f*x)*sin(e + f*x))/(3*(a + b)^3*f*(a + b*sin(e + f*x)^2)^(3/2)) + (8*(a - b)*b*cos(e + f*x)*sin(e + f*x))/(3*(a + b)^4*f*sqrt(a + b*sin(e + f*x)^2)) + (8*(a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*(a + b)^4*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - ((5*a - 3*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*(a + b)^3*f*sqrt(a + b*sin(e + f*x)^2)) - (2*(2*a - b)*tan(e + f*x))/(3*(a + b)^2*f*(a + b*sin(e + f*x)^2)^(3/2)) + (sec(e + f*x)^2*tan(e + f*x))/(3*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2))]
    @test_int [tan(e + f*x)^2/(a + b*sin(e + f*x)^2)^(5/2), x, 9, -((4*b*cos(e + f*x)*sin(e + f*x))/(3*(a + b)^2*f*(a + b*sin(e + f*x)^2)^(3/2))) - ((7*a - b)*b*cos(e + f*x)*sin(e + f*x))/(3*a*(a + b)^3*f*sqrt(a + b*sin(e + f*x)^2)) - ((7*a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a*(a + b)^3*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (4*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + tan(e + f*x)/((a + b)*f*(a + b*sin(e + f*x)^2)^(3/2))]
    @test_int [tan(e + f*x)^0/(a + b*sin(e + f*x)^2)^(5/2), x, 7, (b*cos(e + f*x)*sin(e + f*x))/(3*a*(a + b)*f*(a + b*sin(e + f*x)^2)^(3/2)) + (2*b*(2*a + b)*cos(e + f*x)*sin(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b*sin(e + f*x)^2)) + (2*(2*a + b)*EllipticE(e + f*x, -(b/a))*sqrt(a + b*sin(e + f*x)^2))/(3*a^2*(a + b)^2*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - (EllipticF(e + f*x, -(b/a))*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a*(a + b)*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a + b*sin(e + f*x)^2)^(5/2), x, 9, cot(e + f*x)/(3*a*f*(a + b*sin(e + f*x)^2)^(3/2)) + ((3*a + 4*b)*cot(e + f*x))/(3*a^2*(a + b)*f*sqrt(a + b*sin(e + f*x)^2)) - ((7*a + 8*b)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^3*(a + b)*f) - ((7*a + 8*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^3*(a + b)*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) + (4*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a^2*f*sqrt(a + b*sin(e + f*x)^2))]
    @test_int [cot(e + f*x)^4/(a + b*sin(e + f*x)^2)^(5/2), x, 10, ((a + b)*cot(e + f*x)*csc(e + f*x)^2)/(3*a*b*f*(a + b*sin(e + f*x)^2)^(3/2)) + (2*(a + 3*b)*cot(e + f*x)*csc(e + f*x)^2)/(3*a^2*b*f*sqrt(a + b*sin(e + f*x)^2)) + (8*(a + 2*b)*cot(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^4*f) - ((3*a + 8*b)*cot(e + f*x)*csc(e + f*x)^2*sqrt(a + b*sin(e + f*x)^2))/(3*a^3*b*f) + (8*(a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(a + b*sin(e + f*x)^2))/(3*a^4*f*sqrt(1 + (b*sin(e + f*x)^2)/a)) - ((5*a + 8*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), -(b/a))*sec(e + f*x)*sqrt(1 + (b*sin(e + f*x)^2)/a))/(3*a^3*f*sqrt(a + b*sin(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*sin(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*tan(e + f*x))^m*(a + b*sin(e + f*x)^2)^p, x, 3, (AppellF1((1 + m)/2, (1 + m)/2, -p, (3 + m)/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*(cos(e + f*x)^2)^((1 + m)/2)*(a + b*sin(e + f*x)^2)^p*(d*tan(e + f*x))^(1 + m))/((1 + (b*sin(e + f*x)^2)/a)^p*(d*f*(1 + m)))]


    @test_int [tan(c + d*x)^3*(a + b*sin(c + d*x)^2)^p, x, 3, -(((a + b + b*p)*Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*sin(c + d*x)^2)/(a + b))*(a + b*sin(c + d*x)^2)^(1 + p))/(2*(a + b)^2*d*(1 + p))) + (sec(c + d*x)^2*(a + b*sin(c + d*x)^2)^(1 + p))/(2*(a + b)*d)]
    @test_int [tan(c + d*x)^1*(a + b*sin(c + d*x)^2)^p, x, 2, (Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*sin(c + d*x)^2)/(a + b))*(a + b*sin(c + d*x)^2)^(1 + p))/(2*(a + b)*d*(1 + p))]
    @test_int [cot(c + d*x)^1*(a + b*sin(c + d*x)^2)^p, x, 2, -((Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sin(c + d*x)^2)/a)*(a + b*sin(c + d*x)^2)^(1 + p))/(2*a*d*(1 + p)))]
    @test_int [cot(c + d*x)^3*(a + b*sin(c + d*x)^2)^p, x, 3, -((csc(c + d*x)^2*(a + b*sin(c + d*x)^2)^(1 + p))/(2*a*d)) + ((a - b*p)*Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sin(c + d*x)^2)/a)*(a + b*sin(c + d*x)^2)^(1 + p))/(2*a^2*d*(1 + p))]

    @test_int [tan(c + d*x)^4*(a + b*sin(c + d*x)^2)^p, x, 3, (AppellF1(5/2, 5/2, -p, 7/2, sin(c + d*x)^2, -((b*sin(c + d*x)^2)/a))*sqrt(cos(c + d*x)^2)*sin(c + d*x)^4*(a + b*sin(c + d*x)^2)^p*tan(c + d*x))/((1 + (b*sin(c + d*x)^2)/a)^p*(5*d))]
    @test_int [tan(c + d*x)^2*(a + b*sin(c + d*x)^2)^p, x, 3, (AppellF1(3/2, 3/2, -p, 5/2, sin(c + d*x)^2, -((b*sin(c + d*x)^2)/a))*sqrt(cos(c + d*x)^2)*sin(c + d*x)^2*(a + b*sin(c + d*x)^2)^p*tan(c + d*x))/((1 + (b*sin(c + d*x)^2)/a)^p*(3*d))]
    @test_int [cot(c + d*x)^2*(a + b*sin(c + d*x)^2)^p, x, 3, -((AppellF1(-(1/2), -(1/2), -p, 1/2, sin(c + d*x)^2, -((b*sin(c + d*x)^2)/a))*sqrt(cos(c + d*x)^2)*csc(c + d*x)*sec(c + d*x)*(a + b*sin(c + d*x)^2)^p)/((1 + (b*sin(c + d*x)^2)/a)^p*d))]
    @test_int [cot(c + d*x)^4*(a + b*sin(c + d*x)^2)^p, x, 3, -((AppellF1(-(3/2), -(3/2), -p, -(1/2), sin(c + d*x)^2, -((b*sin(c + d*x)^2)/a))*sqrt(cos(c + d*x)^2)*csc(c + d*x)^3*sec(c + d*x)*(a + b*sin(c + d*x)^2)^p)/((1 + (b*sin(c + d*x)^2)/a)^p*(3*d)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*sin(e+f*x)^3)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^3)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cot(x)^3/(a + b*sin(x)^3), x, 11, (b^(2/3)*atan((a^(1/3) - 2*b^(1/3)*sin(x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(5/3)) - csc(x)^2/(2*a) - log(sin(x))/a - (b^(2/3)*log(a^(1/3) + b^(1/3)*sin(x)))/(3*a^(5/3)) + (b^(2/3)*log(a^(2/3) - a^(1/3)*b^(1/3)*sin(x) + b^(2/3)*sin(x)^2))/(6*a^(5/3)) + log(a + b*sin(x)^3)/(3*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^3)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cot(x)*sqrt(a + b*sin(x)^3), x, 5, (-(2/3))*sqrt(a)*atanh(sqrt(a + b*sin(x)^3)/sqrt(a)) + (2/3)*sqrt(a + b*sin(x)^3)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cot(x)^1/sqrt(a + b*sin(x)^3), x, 4, -((2*atanh(sqrt(a + b*sin(x)^3)/sqrt(a)))/(3*sqrt(a)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*sin(e+f*x)^4)^p=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^4)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^4)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cot(c + d*x)*sqrt(a + b*sin(c + d*x)^4), x, 5, -((sqrt(a)*atanh(sqrt(a + b*sin(c + d*x)^4)/sqrt(a)))/(2*d)) + sqrt(a + b*sin(c + d*x)^4)/(2*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(c + d*x)^3/sqrt(a + b*sin(c + d*x)^4), x, 4, -((a*atanh((a + b*sin(c + d*x)^2)/(sqrt(a + b)*sqrt(a + b*sin(c + d*x)^4))))/(2*(a + b)^(3/2)*d)) + (sec(c + d*x)^2*sqrt(a + b*sin(c + d*x)^4))/(2*(a + b)*d)]
    @test_int [tan(c + d*x)^1/sqrt(a + b*sin(c + d*x)^4), x, 3, atanh((a + b*sin(c + d*x)^2)/(sqrt(a + b)*sqrt(a + b*sin(c + d*x)^4)))/(2*sqrt(a + b)*d)]
    @test_int [cot(c + d*x)^1/sqrt(a + b*sin(c + d*x)^4), x, 4, -(atanh(sqrt(a + b*sin(c + d*x)^4)/sqrt(a))/(2*sqrt(a)*d))]
    @test_int [cot(c + d*x)^3/sqrt(a + b*sin(c + d*x)^4), x, 5, atanh(sqrt(a + b*sin(c + d*x)^4)/sqrt(a))/(2*sqrt(a)*d) - (csc(c + d*x)^2*sqrt(a + b*sin(c + d*x)^4))/(2*a*d)]
    @test_int [cot(c + d*x)^5/sqrt(a + b*sin(c + d*x)^4), x, 6, -(((2*a - b)*atanh(sqrt(a + b*sin(c + d*x)^4)/sqrt(a)))/(4*a^(3/2)*d)) + (csc(c + d*x)^2*sqrt(a + b*sin(c + d*x)^4))/(a*d) - (csc(c + d*x)^4*sqrt(a + b*sin(c + d*x)^4))/(4*a*d)]

    @test_int [tan(c + d*x)^2/sqrt(a + b*sin(c + d*x)^4), x, 4, (cos(c + d*x)*sin(c + d*x)*(a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4))/(sqrt(a + b)*d*sqrt(a + b*sin(c + d*x)^4)*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)) - (a^(1/4)*cos(c + d*x)^2*EllipticE(2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/((a + b)^(3/4)*d*sqrt(a + b*sin(c + d*x)^4)) + (a^(1/4)*cos(c + d*x)^2*EllipticF(2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/(2*(a + b)^(3/4)*d*sqrt(a + b*sin(c + d*x)^4))]
    @test_int [tan(c + d*x)^0/sqrt(a + b*sin(c + d*x)^4), x, 2, (cos(c + d*x)^2*EllipticF(2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/(2*a^(1/4)*(a + b)^(1/4)*d*sqrt(a + b*sin(c + d*x)^4))]
    @test_int [cot(c + d*x)^2/sqrt(a + b*sin(c + d*x)^4), x, 6, -((cos(c + d*x)^2*cot(c + d*x)*(a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4))/(a*d*sqrt(a + b*sin(c + d*x)^4))) + (sqrt(a + b)*cos(c + d*x)*sin(c + d*x)*(a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4))/(a*d*sqrt(a + b*sin(c + d*x)^4)*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)) - ((a + b)^(1/4)*cos(c + d*x)^2*EllipticE(2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/(a^(3/4)*d*sqrt(a + b*sin(c + d*x)^4)) + ((a + b)^(1/4)*cos(c + d*x)^2*EllipticF(2*atan(((a + b)^(1/4)*tan(c + d*x))/a^(1/4)), (1/2)*(1 - sqrt(a)/sqrt(a + b)))*(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)*sqrt((a + 2*a*tan(c + d*x)^2 + (a + b)*tan(c + d*x)^4)/(sqrt(a) + sqrt(a + b)*tan(c + d*x)^2)^2))/(2*a^(3/4)*d*sqrt(a + b*sin(c + d*x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^4)^p*when*p*symbolic=#


    @test_int [tan(c + d*x)^m*(a + b*sin(c + d*x)^4)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^4)^p*tan(c + d*x)^m, x)]


    @test_int [tan(c + d*x)^3*(a + b*sin(c + d*x)^4)^p, x, 11, -(((a + b + 2*b*p)*Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*sin(c + d*x)^4)/(a + b))*(a + b*sin(c + d*x)^4)^(1 + p))/(4*(a + b)^2*d*(1 + p))) + (sec(c + d*x)^2*(a + b*sin(c + d*x)^4)^(1 + p))/(2*(a + b)*d) - ((a + b + 2*b*p)*AppellF1(1/2, 1, -p, 3/2, sin(c + d*x)^4, -((b*sin(c + d*x)^4)/a))*sin(c + d*x)^2*(a + b*sin(c + d*x)^4)^p)/((1 + (b*sin(c + d*x)^4)/a)^p*(2*(a + b)*d)) + (b*(1 + 2*p)*Hypergeometric2F1(1/2, -p, 3/2, -((b*sin(c + d*x)^4)/a))*sin(c + d*x)^2*(a + b*sin(c + d*x)^4)^p)/((1 + (b*sin(c + d*x)^4)/a)^p*(2*(a + b)*d))]
    @test_int [tan(c + d*x)^1*(a + b*sin(c + d*x)^4)^p, x, 7, (Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*sin(c + d*x)^4)/(a + b))*(a + b*sin(c + d*x)^4)^(1 + p))/(4*(a + b)*d*(1 + p)) + (AppellF1(1/2, 1, -p, 3/2, sin(c + d*x)^4, -((b*sin(c + d*x)^4)/a))*sin(c + d*x)^2*(a + b*sin(c + d*x)^4)^p)/((1 + (b*sin(c + d*x)^4)/a)^p*(2*d))]
    @test_int [cot(c + d*x)^1*(a + b*sin(c + d*x)^4)^p, x, 3, -((Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sin(c + d*x)^4)/a)*(a + b*sin(c + d*x)^4)^(1 + p))/(4*a*d*(1 + p)))]
    @test_int [cot(c + d*x)^3*(a + b*sin(c + d*x)^4)^p, x, 6, (Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sin(c + d*x)^4)/a)*(a + b*sin(c + d*x)^4)^(1 + p))/(4*a*d*(1 + p)) - (csc(c + d*x)^2*Hypergeometric2F1(-(1/2), -p, 1/2, -((b*sin(c + d*x)^4)/a))*(a + b*sin(c + d*x)^4)^p)/((1 + (b*sin(c + d*x)^4)/a)^p*(2*d))]

    @test_int [tan(c + d*x)^4*(a + b*sin(c + d*x)^4)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^4)^p*tan(c + d*x)^4, x)]
    @test_int [tan(c + d*x)^2*(a + b*sin(c + d*x)^4)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^4)^p*tan(c + d*x)^2, x)]
    @test_int [tan(c + d*x)^0*(a + b*sin(c + d*x)^4)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^4)^p, x)]
    @test_int [cot(c + d*x)^2*(a + b*sin(c + d*x)^4)^p, x, 0, Unintegrable(cot(c + d*x)^2*(a + b*sin(c + d*x)^4)^p, x)]
    @test_int [cot(c + d*x)^4*(a + b*sin(c + d*x)^4)^p, x, 0, Unintegrable(cot(c + d*x)^4*(a + b*sin(c + d*x)^4)^p, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*sin(e+f*x)^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^n)^p=#


    @test_int [tan(c + d*x)^m*(a + b*sin(c + d*x)^n)^3, x, 10, (a^3*Hypergeometric2F1(1, (1 + m)/2, (3 + m)/2, -tan(c + d*x)^2)*tan(c + d*x)^(1 + m))/(d*(1 + m)) + (3*a^2*b*(cos(c + d*x)^2)^((1 + m)/2)*Hypergeometric2F1((1 + m)/2, (1/2)*(1 + m + n), (1/2)*(3 + m + n), sin(c + d*x)^2)*sin(c + d*x)^n*tan(c + d*x)^(1 + m))/(d*(1 + m + n)) + (3*a*b^2*(cos(c + d*x)^2)^((1 + m)/2)*Hypergeometric2F1((1 + m)/2, (1/2)*(1 + m + 2*n), (1/2)*(3 + m + 2*n), sin(c + d*x)^2)*sin(c + d*x)^(2*n)*tan(c + d*x)^(1 + m))/(d*(1 + m + 2*n)) + (b^3*(cos(c + d*x)^2)^((1 + m)/2)*Hypergeometric2F1((1 + m)/2, (1/2)*(1 + m + 3*n), (1/2)*(3 + m + 3*n), sin(c + d*x)^2)*sin(c + d*x)^(3*n)*tan(c + d*x)^(1 + m))/(d*(1 + m + 3*n))]
    @test_int [tan(c + d*x)^m*(a + b*sin(c + d*x)^n)^2, x, 8, (a^2*Hypergeometric2F1(1, (1 + m)/2, (3 + m)/2, -tan(c + d*x)^2)*tan(c + d*x)^(1 + m))/(d*(1 + m)) + (2*a*b*(cos(c + d*x)^2)^((1 + m)/2)*Hypergeometric2F1((1 + m)/2, (1/2)*(1 + m + n), (1/2)*(3 + m + n), sin(c + d*x)^2)*sin(c + d*x)^n*tan(c + d*x)^(1 + m))/(d*(1 + m + n)) + (b^2*(cos(c + d*x)^2)^((1 + m)/2)*Hypergeometric2F1((1 + m)/2, (1/2)*(1 + m + 2*n), (1/2)*(3 + m + 2*n), sin(c + d*x)^2)*sin(c + d*x)^(2*n)*tan(c + d*x)^(1 + m))/(d*(1 + m + 2*n))]
    @test_int [tan(c + d*x)^m*(a + b*sin(c + d*x)^n)^1, x, 6, (a*Hypergeometric2F1(1, (1 + m)/2, (3 + m)/2, -tan(c + d*x)^2)*tan(c + d*x)^(1 + m))/(d*(1 + m)) + (b*(cos(c + d*x)^2)^((1 + m)/2)*Hypergeometric2F1((1 + m)/2, (1/2)*(1 + m + n), (1/2)*(3 + m + n), sin(c + d*x)^2)*sin(c + d*x)^n*tan(c + d*x)^(1 + m))/(d*(1 + m + n))]
    @test_int [tan(c + d*x)^m/(a + b*sin(c + d*x)^n)^1, x, 0, Unintegrable(tan(c + d*x)^m/(a + b*sin(c + d*x)^n), x)]
    @test_int [tan(c + d*x)^m/(a + b*sin(c + d*x)^n)^2, x, 0, Unintegrable(tan(c + d*x)^m/(a + b*sin(c + d*x)^n)^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^n)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cot(x)*sqrt(a + b*sin(x)^n), x, 5, -((2*sqrt(a)*atanh(sqrt(a + b*sin(x)^n)/sqrt(a)))/n) + (2*sqrt(a + b*sin(x)^n))/n]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cot(x)/sqrt(a + b*sin(x)^n), x, 4, -((2*atanh(sqrt(a + b*sin(x)^n)/sqrt(a)))/(sqrt(a)*n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sin(e+f*x)^n)^p*when*p*symbolic=#


    @test_int [tan(c + d*x)^m*(a + b*sin(c + d*x)^n)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^n)^p*tan(c + d*x)^m, x)]


    @test_int [tan(c + d*x)^3*(a + b*sin(c + d*x)^n)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^n)^p*tan(c + d*x)^3, x)]
    @test_int [tan(c + d*x)^1*(a + b*sin(c + d*x)^n)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^n)^p*tan(c + d*x), x)]
    @test_int [cot(c + d*x)^1*(a + b*sin(c + d*x)^n)^p, x, 3, -((Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sin(c + d*x)^n)/a)*(a + b*sin(c + d*x)^n)^(1 + p))/(a*d*n*(1 + p)))]
    @test_int [cot(c + d*x)^3*(a + b*sin(c + d*x)^n)^p, x, 7, (Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sin(c + d*x)^n)/a)*(a + b*sin(c + d*x)^n)^(1 + p))/(a*d*n*(1 + p)) - (csc(c + d*x)^2*Hypergeometric2F1(-(2/n), -p, -((2 - n)/n), -((b*sin(c + d*x)^n)/a))*(a + b*sin(c + d*x)^n)^p)/((1 + (b*sin(c + d*x)^n)/a)^p*(2*d))]

    @test_int [tan(c + d*x)^4*(a + b*sin(c + d*x)^n)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^n)^p*tan(c + d*x)^4, x)]
    @test_int [tan(c + d*x)^2*(a + b*sin(c + d*x)^n)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^n)^p*tan(c + d*x)^2, x)]
    @test_int [tan(c + d*x)^0*(a + b*sin(c + d*x)^n)^p, x, 0, Unintegrable((a + b*sin(c + d*x)^n)^p, x)]
    @test_int [cot(c + d*x)^2*(a + b*sin(c + d*x)^n)^p, x, 0, Unintegrable(cot(c + d*x)^2*(a + b*sin(c + d*x)^n)^p, x)]
    @test_int [cot(c + d*x)^4*(a + b*sin(c + d*x)^n)^p, x, 0, Unintegrable(cot(c + d*x)^4*(a + b*sin(c + d*x)^n)^p, x)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(c*cos(e+f*x))^m*(d*sin(e+f*x))^n*(a+b*sin(e+f*x)^r)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c*cos(e+f*x))^m*(d*sin(e+f*x))^n*(a+b*sin(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*cos(e+f*x))^(m/2)*(d*sin(e+f*x))^(n/2)*(a+b*sin(e+f*x)^2)^p=#


    @test_int [(a + b*sin(e + f*x)^2)/((g*cos(e + f*x))^(5/2)*sqrt(d*sin(e + f*x))), x, 7, (2*(a + b)*sqrt(d*sin(e + f*x)))/(3*d*f*g*(g*cos(e + f*x))^(3/2)) + ((2*a - b)*EllipticF(e - pi/4 + f*x, 2)*sqrt(sin(2*e + 2*f*x)))/(3*f*g^2*sqrt(g*cos(e + f*x))*sqrt(d*sin(e + f*x))), (2*(a + b)*sqrt(d*sin(e + f*x)))/(3*d*f*g*(g*cos(e + f*x))^(3/2)) - (2*(2*a - b)*(1 - csc(e + f*x)^2)^(3/4)*EllipticF((1/2)*acsc(sin(e + f*x)), 2)*(d*sin(e + f*x))^(3/2))/(3*d^2*f*g*(g*cos(e + f*x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c*cos(e+f*x))^m*(d*sin(e+f*x))^n*(a+b*sin(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(c*cos(e + f*x))^m*(d*sin(e + f*x))^n*(a + b*sin(e + f*x)^2)^p, x, 3, (c*AppellF1((1 + n)/2, (1 - m)/2, -p, (3 + n)/2, sin(e + f*x)^2, -((b*sin(e + f*x)^2)/a))*(c*cos(e + f*x))^(-1 + m)*(cos(e + f*x)^2)^((1 - m)/2)*(d*sin(e + f*x))^(1 + n)*(a + b*sin(e + f*x)^2)^p)/((1 + (b*sin(e + f*x)^2)/a)^p*(d*f*(1 + n)))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a+b*(c*sin(e+f*x)+d*cos(e+f*x))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*(c*sin(e+f*x)+d*cos(e+f*x))^2)^p=#


    @test_int [sqrt(a + (b*sin(e+f*x) + c*cos(e+f*x))^2), x, 3, (EllipticE(e + f*x + atan(b, c), -((b^2 + c^2)/a))*sqrt(a + (c*cos(e + f*x) + b*sin(e + f*x))^2))/(f*sqrt(1 + (c*cos(e + f*x) + b*sin(e + f*x))^2/a))]


    @test_int [1/sqrt(a + (b*sin(e+f*x) + c*cos(e+f*x))^2), x, 3, (EllipticF(e + f*x + atan(b, c), -((b^2 + c^2)/a))*sqrt(1 + (c*cos(e + f*x) + b*sin(e + f*x))^2/a))/(f*sqrt(a + (c*cos(e + f*x) + b*sin(e + f*x))^2))]
    end
