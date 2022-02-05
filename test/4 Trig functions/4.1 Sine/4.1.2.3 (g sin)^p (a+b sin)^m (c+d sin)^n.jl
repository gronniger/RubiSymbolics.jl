@testset "4.1.2.3 (g sin)^p (a+b sin)^m (c+d sin)^n" begin
    @variables A, B, a, b, c, d, e, f, g, m, n, p, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+a*sin(e+f*x))^m*(c-c*sin(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+a*sin(e+f*x))^m*(c-c*sin(e+f*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^p*(a+a*sin(e+f*x))^m*(c-c*sin(e+f*x))=#


    @test_int [sin(e + f*x)^3*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 13, (1/16)*a^2*c*x - (a^2*c*cos(e + f*x)^3)/(3*f) + (a^2*c*cos(e + f*x)^5)/(5*f) - (a^2*c*cos(e + f*x)*sin(e + f*x))/(16*f) - (a^2*c*cos(e + f*x)*sin(e + f*x)^3)/(24*f) + (a^2*c*cos(e + f*x)*sin(e + f*x)^5)/(6*f)]
    @test_int [sin(e + f*x)^2*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 11, (1/8)*a^2*c*x - (a^2*c*cos(e + f*x)^3)/(3*f) + (a^2*c*cos(e + f*x)^5)/(5*f) - (a^2*c*cos(e + f*x)*sin(e + f*x))/(8*f) + (a^2*c*cos(e + f*x)*sin(e + f*x)^3)/(4*f)]
    @test_int [sin(e + f*x)^1*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 10, (1/8)*a^2*c*x - (a^2*c*cos(e + f*x)^3)/(3*f) - (a^2*c*cos(e + f*x)*sin(e + f*x))/(8*f) + (a^2*c*cos(e + f*x)*sin(e + f*x)^3)/(4*f)]
    @test_int [sin(e + f*x)^0*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 4, (1/2)*a^2*c*x - (a^2*c*cos(e + f*x)^3)/(3*f) + (a^2*c*cos(e + f*x)*sin(e + f*x))/(2*f)]
    @test_int [csc(e + f*x)^1*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 6, (1/2)*a^2*c*x - (a^2*c*atanh(cos(e + f*x)))/f + (a^2*c*cos(e + f*x))/f + (a^2*c*cos(e + f*x)*sin(e + f*x))/(2*f)]
    @test_int [csc(e + f*x)^2*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 8, (-a^2)*c*x - (a^2*c*atanh(cos(e + f*x)))/f + (a^2*c*cos(e + f*x))/f - (a^2*c*cot(e + f*x))/f]
    @test_int [csc(e + f*x)^3*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 7, (-a^2)*c*x + (a^2*c*atanh(cos(e + f*x)))/(2*f) - (a^2*c*cot(e + f*x))/f - (a^2*c*cot(e + f*x)*csc(e + f*x))/(2*f)]
    @test_int [csc(e + f*x)^4*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 6, (a^2*c*atanh(cos(e + f*x)))/(2*f) - (a^2*c*cot(e + f*x)^3)/(3*f) - (a^2*c*cot(e + f*x)*csc(e + f*x))/(2*f)]
    @test_int [csc(e + f*x)^5*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 11, (a^2*c*atanh(cos(e + f*x)))/(8*f) - (a^2*c*cot(e + f*x)^3)/(3*f) + (a^2*c*cot(e + f*x)*csc(e + f*x))/(8*f) - (a^2*c*cot(e + f*x)*csc(e + f*x)^3)/(4*f)]
    @test_int [csc(e + f*x)^6*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 11, (a^2*c*atanh(cos(e + f*x)))/(8*f) - (a^2*c*cot(e + f*x)^3)/(3*f) - (a^2*c*cot(e + f*x)^5)/(5*f) + (a^2*c*cot(e + f*x)*csc(e + f*x))/(8*f) - (a^2*c*cot(e + f*x)*csc(e + f*x)^3)/(4*f)]
    @test_int [csc(e + f*x)^7*(a + a*sin(e + f*x))^2*(c - c*sin(e + f*x)), x, 13, (a^2*c*atanh(cos(e + f*x)))/(16*f) - (a^2*c*cot(e + f*x)^3)/(3*f) - (a^2*c*cot(e + f*x)^5)/(5*f) + (a^2*c*cot(e + f*x)*csc(e + f*x))/(16*f) + (a^2*c*cot(e + f*x)*csc(e + f*x)^3)/(24*f) - (a^2*c*cot(e + f*x)*csc(e + f*x)^5)/(6*f)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^p*(a+a*sin(e+f*x))^(m/2)*(c-c*sin(e+f*x))=#


    @test_int [sin(c + d*x)^2*(a + a*sin(c + d*x))^(3/2)*(c - c*sin(c + d*x)), x, 5, -((8*a^3*c*cos(c + d*x)^3)/(63*d*(a + a*sin(c + d*x))^(3/2))) - (2*a^2*c*cos(c + d*x)^3)/(21*d*sqrt(a + a*sin(c + d*x))) + (4*a*c*cos(c + d*x)^3*sqrt(a + a*sin(c + d*x)))/(21*d) - (2*c*cos(c + d*x)^3*(a + a*sin(c + d*x))^(3/2))/(9*d), -((2*a^2*c*cos(c + d*x))/(9*d*sqrt(a + a*sin(c + d*x)))) + (2*a^2*c*cos(c + d*x)*sin(c + d*x)^3)/(63*d*sqrt(a + a*sin(c + d*x))) + (4*a*c*cos(c + d*x)*sqrt(a + a*sin(c + d*x)))/(63*d) + (2*a*c*cos(c + d*x)*sin(c + d*x)^3*sqrt(a + a*sin(c + d*x)))/(9*d) - (2*c*cos(c + d*x)*(a + a*sin(c + d*x))^(3/2))/(21*d)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+a*sin(e+f*x))^m / (c-c*sin(e+f*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^p*(a+a*sin(e+f*x))^(m/2) / (c-c*sin(e+f*x))=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(a + a*sin(e + f*x))/(sin(e + f*x)*(c - c*sin(e + f*x))), x, 5, -((2*sqrt(a)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(c*f)) + (2*sec(e + f*x)*sqrt(a + a*sin(e + f*x)))/(c*f)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [1/(sin(e + f*x)*sqrt(a + a*sin(e + f*x))*(c - c*sin(e + f*x))), x, 8, -((2*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(sqrt(a)*c*f)) + atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x))))/(sqrt(2)*sqrt(a)*c*f) + (sec(e + f*x)*sqrt(a + a*sin(e + f*x)))/(a*c*f)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^(p/2)*(a+a*sin(e+f*x))^(m/2) / (c-c*sin(e+f*x))=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x))/(c - c*sin(e + f*x)), x, 6, (2*sqrt(a)*sqrt(g)*atan((sqrt(a)*sqrt(g)*cos(e + f*x))/(sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))))/(c*f) + (2*sec(e + f*x)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))/(c*f)]
    @test_int [sqrt(a + a*sin(e + f*x))/(sqrt(g*sin(e + f*x))*(c - c*sin(e + f*x))), x, 3, (2*sec(e + f*x)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))/(c*f*g)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [sqrt(g*sin(e + f*x))/(sqrt(a + a*sin(e + f*x))*(c - c*sin(e + f*x))), x, 6, (sqrt(g)*atan((sqrt(a)*sqrt(g)*cos(e + f*x))/(sqrt(2)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))))/(sqrt(2)*sqrt(a)*c*f) + (sec(e + f*x)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))/(a*c*f)]
    @test_int [1/(sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x))*(c - c*sin(e + f*x))), x, 6, -(atan((sqrt(a)*sqrt(g)*cos(e + f*x))/(sqrt(2)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x))))/(sqrt(2)*sqrt(a)*c*f*sqrt(g))) + (sec(e + f*x)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))/(a*c*f*g)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*sin(e+f*x))^m*(c-c*sin(e+f*x))^n / sin(e+f*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+a*sin(e+f*x))^(m/2)*(c-c*sin(e+f*x))^(n/2) / sin(e+f*x)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(a + a*sin(e + f*x))*sqrt(c - c*sin(e + f*x))/sin(e + f*x), x, 2, (log(sin(e + f*x))*sec(e + f*x)*sqrt(a + a*sin(e + f*x))*sqrt(c - c*sin(e + f*x)))/f]
    @test_int [sqrt(a + a*sin(e + f*x))/(sin(e + f*x)*sqrt(c - c*sin(e + f*x))), x, 6, -((a*cos(e + f*x)*log(1 - sin(e + f*x)))/(f*sqrt(a + a*sin(e + f*x))*sqrt(c - c*sin(e + f*x)))) + (log(sin(e + f*x))*sec(e + f*x)*sqrt(a + a*sin(e + f*x))*sqrt(c - c*sin(e + f*x)))/(c*f)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [sqrt(c - c*sin(e + f*x))/(sin(e + f*x)*sqrt(a + a*sin(e + f*x))), x, 6, -((c*cos(e + f*x)*log(1 + sin(e + f*x)))/(f*sqrt(a + a*sin(e + f*x))*sqrt(c - c*sin(e + f*x)))) + (log(sin(e + f*x))*sec(e + f*x)*sqrt(a + a*sin(e + f*x))*sqrt(c - c*sin(e + f*x)))/(a*f)]
    @test_int [1/(sin(e + f*x)*sqrt(a + a*sin(e + f*x))*sqrt(c - c*sin(e + f*x))), x, 3, (cos(e + f*x)*log(tan(e + f*x)))/(f*sqrt(a + a*sin(e + f*x))*sqrt(c - c*sin(e + f*x)))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+a*sin(e+f*x))^m*(c+d*sin(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+a*sin(e+f*x))^m / (c+d*sin(e+f*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^p*(a+a*sin(e+f*x))^(m/2) / (c+d*sin(e+f*x))=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(a + a*sin(e + f*x))/(sin(e + f*x)*(c + d*sin(e + f*x))), x, 5, -((2*sqrt(a)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(c*f)) + (2*sqrt(a)*sqrt(d)*atanh((sqrt(a)*sqrt(d)*cos(e + f*x))/(sqrt(c + d)*sqrt(a + a*sin(e + f*x)))))/(c*sqrt(c + d)*f)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [1/(sin(e + f*x)*sqrt(a + a*sin(e + f*x))*(c + d*sin(e + f*x))), x, 8, -((2*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(sqrt(a)*c*f)) + (sqrt(2)*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(sqrt(a)*(c - d)*f) - (2*d^(3/2)*atanh((sqrt(a)*sqrt(d)*cos(e + f*x))/(sqrt(c + d)*sqrt(a + a*sin(e + f*x)))))/(sqrt(a)*c*(c - d)*sqrt(c + d)*f)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^(p/2)*(a+a*sin(e+f*x))^(m/2) / (c+d*sin(e+f*x))=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x))/(c + d*sin(e + f*x)), x, 5, -((2*sqrt(a)*sqrt(g)*atan((sqrt(a)*sqrt(g)*cos(e + f*x))/(sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))))/(d*f)) + (2*sqrt(a)*sqrt(c)*sqrt(g)*atan((sqrt(a)*sqrt(c)*sqrt(g)*cos(e + f*x))/(sqrt(c + d)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))))/(d*sqrt(c + d)*f)]
    @test_int [sqrt(a + a*sin(e + f*x))/(sqrt(g*sin(e + f*x))*(c + d*sin(e + f*x))), x, 2, -((2*sqrt(a)*atan((sqrt(a)*sqrt(c)*sqrt(g)*cos(e + f*x))/(sqrt(c + d)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))))/(sqrt(c)*sqrt(c + d)*f*sqrt(g)))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [sqrt(g*sin(e + f*x))/(sqrt(a + a*sin(e + f*x))*(c + d*sin(e + f*x))), x, 5, (sqrt(2)*sqrt(g)*atan((sqrt(a)*sqrt(g)*cos(e + f*x))/(sqrt(2)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))))/(sqrt(a)*(c - d)*f) - (2*sqrt(c)*sqrt(g)*atan((sqrt(a)*sqrt(c)*sqrt(g)*cos(e + f*x))/(sqrt(c + d)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))))/(sqrt(a)*(c - d)*sqrt(c + d)*f)]
    @test_int [1/(sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x))*(c + d*sin(e + f*x))), x, 5, -((sqrt(2)*atan((sqrt(a)*sqrt(g)*cos(e + f*x))/(sqrt(2)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))))/(sqrt(a)*(c - d)*f*sqrt(g))) + (2*d*atan((sqrt(a)*sqrt(c)*sqrt(g)*cos(e + f*x))/(sqrt(c + d)*sqrt(g*sin(e + f*x))*sqrt(a + a*sin(e + f*x)))))/(sqrt(a)*sqrt(c)*(c - d)*sqrt(c + d)*f*sqrt(g))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(c+d*sin(e+f*x))^n / (a+a*sin(e+f*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^p*(c+d*sin(e+f*x))^(m/2) / (a+a*sin(e+f*x))=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(a + b*sin(e + f*x))/(sin(e + f*x)*(c + c*sin(e + f*x))), x, 9, (EllipticE((1/2)*(e - pi/2 + f*x), (2*b)/(a + b))*sqrt(a + b*sin(e + f*x)))/(c*f*sqrt((a + b*sin(e + f*x))/(a + b))) - ((a - b)*EllipticF((1/2)*(e - pi/2 + f*x), (2*b)/(a + b))*sqrt((a + b*sin(e + f*x))/(a + b)))/(c*f*sqrt(a + b*sin(e + f*x))) + (2*a*EllipticPi(2, (1/2)*(e - pi/2 + f*x), (2*b)/(a + b))*sqrt((a + b*sin(e + f*x))/(a + b)))/(c*f*sqrt(a + b*sin(e + f*x))) + (cos(e + f*x)*sqrt(a + b*sin(e + f*x)))/(f*(c + c*sin(e + f*x)))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [1/(sin(e + f*x)*sqrt(a + b*sin(e + f*x))*(c + c*sin(e + f*x))), x, 9, (EllipticE((1/2)*(e - pi/2 + f*x), (2*b)/(a + b))*sqrt(a + b*sin(e + f*x)))/((a - b)*c*f*sqrt((a + b*sin(e + f*x))/(a + b))) - (EllipticF((1/2)*(e - pi/2 + f*x), (2*b)/(a + b))*sqrt((a + b*sin(e + f*x))/(a + b)))/(c*f*sqrt(a + b*sin(e + f*x))) + (2*EllipticPi(2, (1/2)*(e - pi/2 + f*x), (2*b)/(a + b))*sqrt((a + b*sin(e + f*x))/(a + b)))/(c*f*sqrt(a + b*sin(e + f*x))) + (cos(e + f*x)*sqrt(a + b*sin(e + f*x)))/((a - b)*f*(c + c*sin(e + f*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^(p/2)*(c+d*sin(e+f*x))^(m/2) / (a+a*sin(e+f*x))=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(g*sin(e + f*x))*sqrt(a + b*sin(e + f*x))/(c + c*sin(e + f*x)), x, 3, (2*sqrt(g)*EllipticPi(b/(a + b), asin((sqrt(a + b)*sqrt(g*sin(e + f*x)))/(sqrt(g)*sqrt(a + b*sin(e + f*x)))), -((a - b)/(a + b)))*sec(e + f*x)*sqrt((a*(1 - sin(e + f*x)))/(a + b*sin(e + f*x)))*sqrt((a*(1 + sin(e + f*x)))/(a + b*sin(e + f*x)))*(a + b*sin(e + f*x)))/(sqrt(a + b)*c*f) + (g*EllipticE(asin(cos(e + f*x)/(1 + sin(e + f*x))), -((a - b)/(a + b)))*sqrt(sin(e + f*x)/(1 + sin(e + f*x)))*sqrt(a + b*sin(e + f*x)))/(c*f*sqrt(g*sin(e + f*x))*sqrt((a + b*sin(e + f*x))/((a + b)*(1 + sin(e + f*x)))))]
    @test_int [sqrt(a + b*sin(e + f*x))/(sqrt(g*sin(e + f*x))*(c + c*sin(e + f*x))), x, 1, -((EllipticE(asin(cos(e + f*x)/(1 + sin(e + f*x))), -((a - b)/(a + b)))*sqrt(sin(e + f*x)/(1 + sin(e + f*x)))*sqrt(a + b*sin(e + f*x)))/(c*f*sqrt(g*sin(e + f*x))*sqrt((a + b*sin(e + f*x))/((a + b)*(1 + sin(e + f*x))))))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [sqrt(g*sin(e + f*x))/(sqrt(a + b*sin(e + f*x))*(c + c*sin(e + f*x))), x, 3, (g*EllipticE(asin(cos(e + f*x)/(1 + sin(e + f*x))), -((a - b)/(a + b)))*sqrt(sin(e + f*x)/(1 + sin(e + f*x)))*sqrt(a + b*sin(e + f*x)))/((a - b)*c*f*sqrt(g*sin(e + f*x))*sqrt((a + b*sin(e + f*x))/((a + b)*(1 + sin(e + f*x))))) - (2*sqrt(a + b)*sqrt(g)*sqrt((a*(1 - csc(e + f*x)))/(a + b))*sqrt((a*(1 + csc(e + f*x)))/(a - b))*EllipticF(asin((sqrt(g)*sqrt(a + b*sin(e + f*x)))/(sqrt(a + b)*sqrt(g*sin(e + f*x)))), -((a + b)/(a - b)))*tan(e + f*x))/((a - b)*c*f)]
    @test_int [1/(sqrt(g*sin(e + f*x))*sqrt(a + b*sin(e + f*x))*(c + c*sin(e + f*x))), x, 3, -((EllipticE(asin(cos(e + f*x)/(1 + sin(e + f*x))), -((a - b)/(a + b)))*sqrt(sin(e + f*x)/(1 + sin(e + f*x)))*sqrt(a + b*sin(e + f*x)))/((a - b)*c*f*sqrt(g*sin(e + f*x))*sqrt((a + b*sin(e + f*x))/((a + b)*(1 + sin(e + f*x)))))) + (2*b*sqrt(a + b)*sqrt((a*(1 - csc(e + f*x)))/(a + b))*sqrt((a*(1 + csc(e + f*x)))/(a - b))*EllipticF(asin((sqrt(g)*sqrt(a + b*sin(e + f*x)))/(sqrt(a + b)*sqrt(g*sin(e + f*x)))), -((a + b)/(a - b)))*tan(e + f*x))/(a*(a - b)*c*f*sqrt(g))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*sin(e+f*x))^m*(c+d*sin(e+f*x))^n / sin(e+f*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+a*sin(e+f*x))^(m/2)*(c+d*sin(e+f*x))^(n/2) / sin(e+f*x)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(a + a*sin(e + f*x))*sqrt(c + d*sin(e + f*x))/sin(e + f*x), x, 5, -((2*sqrt(a)*sqrt(d)*atan((sqrt(a)*sqrt(d)*cos(e + f*x))/(sqrt(a + a*sin(e + f*x))*sqrt(c + d*sin(e + f*x)))))/f) - (2*sqrt(a)*sqrt(c)*atanh((sqrt(a)*sqrt(c)*cos(e + f*x))/(sqrt(a + a*sin(e + f*x))*sqrt(c + d*sin(e + f*x)))))/f]
    @test_int [sqrt(a + a*sin(e + f*x))/(sin(e + f*x)*sqrt(c + d*sin(e + f*x))), x, 2, -((2*sqrt(a)*atanh((sqrt(a)*sqrt(c)*cos(e + f*x))/(sqrt(a + a*sin(e + f*x))*sqrt(c + d*sin(e + f*x)))))/(sqrt(c)*f))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [sqrt(c + d*sin(e + f*x))/(sin(e + f*x)*sqrt(a + a*sin(e + f*x))), x, 5, -((2*sqrt(c)*atanh((sqrt(a)*sqrt(c)*cos(e + f*x))/(sqrt(a + a*sin(e + f*x))*sqrt(c + d*sin(e + f*x)))))/(sqrt(a)*f)) + (sqrt(2)*sqrt(c - d)*atanh((sqrt(a)*sqrt(c - d)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x))*sqrt(c + d*sin(e + f*x)))))/(sqrt(a)*f)]
    @test_int [1/(sin(e + f*x)*sqrt(a + a*sin(e + f*x))*sqrt(c + d*sin(e + f*x))), x, 5, -((2*atanh((sqrt(a)*sqrt(c)*cos(e + f*x))/(sqrt(a + a*sin(e + f*x))*sqrt(c + d*sin(e + f*x)))))/(sqrt(a)*sqrt(c)*f)) + (sqrt(2)*atanh((sqrt(a)*sqrt(c - d)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x))*sqrt(c + d*sin(e + f*x)))))/(sqrt(a)*sqrt(c - d)*f)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+b*sin(e+f*x))^m*(c+d*sin(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+b*sin(e+f*x))^m / (c+d*sin(e+f*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^p*(a+b*sin(e+f*x))^m / (c+d*sin(e+f*x))=#


    #= ::Subsubsection:: =#
    #=m>0=#


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [sin(e + f*x)^2/((a + b*sin(e + f*x))^2*(c + d*sin(e + f*x))), x, 8, -((2*a*(a^2*c - 2*b^2*c + a*b*d)*atan((b + a*tan((1/2)*(e + f*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(3/2)*(b*c - a*d)^2*f)) + (2*c^2*atan((d + c*tan((1/2)*(e + f*x)))/sqrt(c^2 - d^2)))/((b*c - a*d)^2*sqrt(c^2 - d^2)*f) + (a^2*cos(e + f*x))/((a^2 - b^2)*(b*c - a*d)*f*(a + b*sin(e + f*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^p*(a+b*sin(e+f*x))^(m/2) / (c+d*sin(e+f*x))=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    #= [(c + d*sin(e + f*x))^(5/2)/(sin(e + f*x)*(a + b*sin(e + f*x))), x, 0, -((2*d^2*EllipticE((1/4)*(-2*e + pi - 2*f*x), (2*d)/(c + d))*sqrt(c + d*sin(e + f*x)))/(b*f*sqrt((c + d*sin(e + f*x))/(c + d)))) + (2*d^2*(-2*b*c + a*d)*EllipticF((1/4)*(-2*e + pi - 2*f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(b^2*f*sqrt(c + d*sin(e + f*x))) + (2*c^3*EllipticPi(2, -(pi/4) + (1/2)*(e + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*f*sqrt(c + d*sin(e + f*x))) - (2*(b*c - a*d)^3*EllipticPi((2*b)/(a + b), -(pi/4) + (1/2)*(e + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*b^2*(a + b)*f*sqrt(c + d*sin(e + f*x)))]
    @test_int [(c + d*sin(e + f*x))^(3/2)/(sin(e + f*x)*(a + b*sin(e + f*x))), x, 0, -((2*d^2*EllipticF((1/4)*(-2*e + pi - 2*f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(b*f*sqrt(c + d*sin(e + f*x)))) + (2*c^2*EllipticPi(2, -(pi/4) + (1/2)*(e + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*f*sqrt(c + d*sin(e + f*x))) - (2*(b*c - a*d)^2*EllipticPi((2*b)/(a + b), -(pi/4) + (1/2)*(e + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*b*(a + b)*f*sqrt(c + d*sin(e + f*x)))] =#
    @test_int [(c + d*sin(e + f*x))^(1/2)/(sin(e + f*x)*(a + b*sin(e + f*x))), x, 5, (2*c*EllipticPi(2, (1/2)*(e - pi/2 + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*f*sqrt(c + d*sin(e + f*x))) - (2*(b*c - a*d)*EllipticPi((2*b)/(a + b), (1/2)*(e - pi/2 + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*(a + b)*f*sqrt(c + d*sin(e + f*x)))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [1/(sin(e + f*x)*(c + d*sin(e + f*x))^(1/2)*(a + b*sin(e + f*x))), x, 5, (2*EllipticPi(2, (1/2)*(e - pi/2 + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*f*sqrt(c + d*sin(e + f*x))) - (2*b*EllipticPi((2*b)/(a + b), (1/2)*(e - pi/2 + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*(a + b)*f*sqrt(c + d*sin(e + f*x)))]
    #= [1/(sin(e + f*x)*(c + d*sin(e + f*x))^(3/2)*(a + b*sin(e + f*x))), x, 0, (2*d^3*cos(e + f*x))/(c*(b*c - a*d)*(c^2 - d^2)*f*sqrt(c + d*sin(e + f*x))) - (2*d^2*EllipticE((1/4)*(-2*e + pi - 2*f*x), (2*d)/(c + d))*sqrt(c + d*sin(e + f*x)))/(c*(b*c - a*d)*(c^2 - d^2)*f*sqrt((c + d*sin(e + f*x))/(c + d))) + (2*EllipticPi(2, -(pi/4) + (1/2)*(e + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*c*f*sqrt(c + d*sin(e + f*x))) - (2*b^2*EllipticPi((2*b)/(a + b), -(pi/4) + (1/2)*(e + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*(a + b)*(b*c - a*d)*f*sqrt(c + d*sin(e + f*x)))]
    @test_int [1/(sin(e + f*x)*(c + d*sin(e + f*x))^(5/2)*(a + b*sin(e + f*x))), x, 0, sdx((2*d^3*cos(e + f*x))/(3*c*(b*c - a*d)*(c^2 - d^2)*f*(c + d*sin(e + f*x))^(3/2)) + (2*d^3*(10*b*c^3 - 7*a*c^2*d - 6*b*c*d^2 + 3*a*d^3)*cos(e + f*x))/(3*c^2*(b*c - a*d)^2*(c^2 - d^2)^2*f*sqrt(c + d*sin(e + f*x))) - (2*d^2*(10*b*c^3 - 7*a*c^2*d - 6*b*c*d^2 + 3*a*d^3)*EllipticE((1/4)*(-2*e + pi - 2*f*x), (2*d)/(c + d))*sqrt(c + d*sin(e + f*x)))/(3*c^2*(b*c - a*d)^2*(c^2 - d^2)^2*f*sqrt((c + d*sin(e + f*x))/(c + d))) + (2*d^2*EllipticF((1/4)*(-2*e + pi - 2*f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(3*c*(b*c - a*d)*(c^2 - d^2)*f*sqrt(c + d*sin(e + f*x))) + (2*EllipticPi(2, -(pi/4) + (1/2)*(e + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*c^2*f*sqrt(c + d*sin(e + f*x))) - (2*b^3*EllipticPi((2*b)/(a + b), -(pi/4) + (1/2)*(e + f*x), (2*d)/(c + d))*sqrt((c + d*sin(e + f*x))/(c + d)))/(a*(a + b)*(b*c - a*d)^2*f*sqrt(c + d*sin(e + f*x))))] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^(p/2)*(a+b*sin(e+f*x))^(m/2) / (c+d*sin(e+f*x))=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(g*sin(e + f*x))*sqrt(a + b*sin(e + f*x))/(c + d*sin(e + f*x)), x, 3, (2*sqrt(a + b)*sqrt(g)*sqrt((a*(1 - csc(e + f*x)))/(a + b))*sqrt((a*(1 + csc(e + f*x)))/(a - b))*EllipticPi((a + b)/b, asin((sqrt(g)*sqrt(a + b*sin(e + f*x)))/(sqrt(a + b)*sqrt(g*sin(e + f*x)))), -((a + b)/(a - b)))*tan(e + f*x))/(d*f) - (2*(b*c - a*d)*sqrt(-cot(e + f*x)^2)*sqrt((b + a*csc(e + f*x))/(a + b))*EllipticPi((2*c)/(c + d), asin(sqrt(1 - csc(e + f*x))/sqrt(2)), (2*a)/(a + b))*sqrt(g*sin(e + f*x))*tan(e + f*x))/(d*(c + d)*f*sqrt(a + b*sin(e + f*x)))]
    @test_int [sqrt(a + b*sin(e + f*x))/(sqrt(g*sin(e + f*x))*(c + d*sin(e + f*x))), x, 3, -((2*sqrt(a + b)*sqrt((a*(1 - csc(e + f*x)))/(a + b))*sqrt((a*(1 + csc(e + f*x)))/(a - b))*EllipticF(asin((sqrt(g)*sqrt(a + b*sin(e + f*x)))/(sqrt(a + b)*sqrt(g*sin(e + f*x)))), -((a + b)/(a - b)))*tan(e + f*x))/(c*f*sqrt(g))) + (2*(b*c - a*d)*sqrt(-cot(e + f*x)^2)*sqrt((b + a*csc(e + f*x))/(a + b))*EllipticPi((2*c)/(c + d), asin(sqrt(1 - csc(e + f*x))/sqrt(2)), (2*a)/(a + b))*sqrt(g*sin(e + f*x))*tan(e + f*x))/(c*(c + d)*f*g*sqrt(a + b*sin(e + f*x)))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [sqrt(g*sin(e + f*x))/(sqrt(a + b*sin(e + f*x))*(c + d*sin(e + f*x))), x, 1, (2*sqrt(-cot(e + f*x)^2)*sqrt((b + a*csc(e + f*x))/(a + b))*EllipticPi((2*c)/(c + d), asin(sqrt(1 - csc(e + f*x))/sqrt(2)), (2*a)/(a + b))*sqrt(g*sin(e + f*x))*tan(e + f*x))/((c + d)*f*sqrt(a + b*sin(e + f*x)))]
    @test_int [1/(sqrt(g*sin(e + f*x))*sqrt(a + b*sin(e + f*x))*(c + d*sin(e + f*x))), x, 3, -((2*sqrt(a + b)*sqrt((a*(1 - csc(e + f*x)))/(a + b))*sqrt((a*(1 + csc(e + f*x)))/(a - b))*EllipticF(asin((sqrt(g)*sqrt(a + b*sin(e + f*x)))/(sqrt(a + b)*sqrt(g*sin(e + f*x)))), -((a + b)/(a - b)))*tan(e + f*x))/(a*c*f*sqrt(g))) - (2*d*sqrt(-cot(e + f*x)^2)*sqrt((b + a*csc(e + f*x))/(a + b))*EllipticPi((2*c)/(c + d), asin(sqrt(1 - csc(e + f*x))/sqrt(2)), (2*a)/(a + b))*sqrt(g*sin(e + f*x))*tan(e + f*x))/(c*(c + d)*f*g*sqrt(a + b*sin(e + f*x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^p*(a+b*sin(e+f*x))^m / (c+d*sin(e+f*x))^(1/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*sin(e+f*x))^(p/2)*(a+b*sin(e+f*x))^(m/2) / (c+d*sin(e+f*x))^(1/2)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    #= [sqrt(g*sin(e + f*x))*(c + d*sin(e + f*x))^(5/2)/(a + b*sin(e + f*x)), x, 0, 0]
    @test_int [sqrt(g*sin(e + f*x))*(c + d*sin(e + f*x))^(3/2)/(a + b*sin(e + f*x)), x, 0, 0] =#
    @test_int [sqrt(g*sin(e + f*x))*(c + d*sin(e + f*x))^(1/2)/(a + b*sin(e + f*x)), x, 3, (2*sqrt(c + d)*sqrt(g)*sqrt((c*(1 - csc(e + f*x)))/(c + d))*sqrt((c*(1 + csc(e + f*x)))/(c - d))*EllipticPi((c + d)/d, asin((sqrt(g)*sqrt(c + d*sin(e + f*x)))/(sqrt(c + d)*sqrt(g*sin(e + f*x)))), -((c + d)/(c - d)))*tan(e + f*x))/(b*f) + (2*(b*c - a*d)*sqrt(-cot(e + f*x)^2)*sqrt((d + c*csc(e + f*x))/(c + d))*EllipticPi((2*a)/(a + b), asin(sqrt(1 - csc(e + f*x))/sqrt(2)), (2*c)/(c + d))*sqrt(g*sin(e + f*x))*tan(e + f*x))/(b*(a + b)*f*sqrt(c + d*sin(e + f*x)))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [sqrt(g*sin(e + f*x))/((c + d*sin(e + f*x))^(1/2)*(a + b*sin(e + f*x))), x, 1, (2*sqrt(-cot(e + f*x)^2)*sqrt((d + c*csc(e + f*x))/(c + d))*EllipticPi((2*a)/(a + b), asin(sqrt(1 - csc(e + f*x))/sqrt(2)), (2*c)/(c + d))*sqrt(g*sin(e + f*x))*tan(e + f*x))/((a + b)*f*sqrt(c + d*sin(e + f*x)))]
    #= [sqrt(g*sin(e + f*x))/((c + d*sin(e + f*x))^(3/2)*(a + b*sin(e + f*x))), x, 0, 0]
    @test_int [sqrt(g*sin(e + f*x))/((c + d*sin(e + f*x))^(5/2)*(a + b*sin(e + f*x))), x, 0, 0] =#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*sin(e+f*x))^m*(c+d*sin(e+f*x))^n / sin(e+f*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*sin(e+f*x))^(m/2)*(c+d*sin(e+f*x))^(n/2) / sin(e+f*x)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sqrt(a + b*sin(e + f*x))*sqrt(c + d*sin(e + f*x))/sin(e + f*x), x, 3, -((2*sqrt(c + d)*EllipticPi((a*(c + d))/((a + b)*c), asin((sqrt(a + b)*sqrt(c + d*sin(e + f*x)))/(sqrt(c + d)*sqrt(a + b*sin(e + f*x)))), ((a - b)*(c + d))/((a + b)*(c - d)))*sec(e + f*x)*sqrt(-(((b*c - a*d)*(1 - sin(e + f*x)))/((c + d)*(a + b*sin(e + f*x)))))*sqrt(((b*c - a*d)*(1 + sin(e + f*x)))/((c - d)*(a + b*sin(e + f*x))))*(a + b*sin(e + f*x)))/(sqrt(a + b)*f)) + (2*sqrt(c + d)*EllipticPi((b*(c + d))/((a + b)*d), asin((sqrt(a + b)*sqrt(c + d*sin(e + f*x)))/(sqrt(c + d)*sqrt(a + b*sin(e + f*x)))), ((a - b)*(c + d))/((a + b)*(c - d)))*sec(e + f*x)*sqrt(-(((b*c - a*d)*(1 - sin(e + f*x)))/((c + d)*(a + b*sin(e + f*x)))))*sqrt(((b*c - a*d)*(1 + sin(e + f*x)))/((c - d)*(a + b*sin(e + f*x))))*(a + b*sin(e + f*x)))/(sqrt(a + b)*f)]
    @test_int [sqrt(a + b*sin(e + f*x))/(sin(e + f*x)*sqrt(c + d*sin(e + f*x))), x, 1, -((2*sqrt(c + d)*EllipticPi((a*(c + d))/((a + b)*c), asin((sqrt(a + b)*sqrt(c + d*sin(e + f*x)))/(sqrt(c + d)*sqrt(a + b*sin(e + f*x)))), ((a - b)*(c + d))/((a + b)*(c - d)))*sec(e + f*x)*sqrt(-(((b*c - a*d)*(1 - sin(e + f*x)))/((c + d)*(a + b*sin(e + f*x)))))*sqrt(((b*c - a*d)*(1 + sin(e + f*x)))/((c - d)*(a + b*sin(e + f*x))))*(a + b*sin(e + f*x)))/(sqrt(a + b)*c*f))]


    #= [(c + d*sin(e + f*x))^(5/2)/(sin(e + f*x)*sqrt(a + b*sin(e + f*x))), x, 0, 0]
    @test_int [(c + d*sin(e + f*x))^(3/2)/(sin(e + f*x)*sqrt(a + b*sin(e + f*x))), x, 0, 0] =#


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [1/(sin(e + f*x)*sqrt(a + b*sin(e + f*x))*sqrt(c + d*sin(e + f*x))), x, 3, -((2*sqrt(c + d)*EllipticPi((a*(c + d))/((a + b)*c), asin((sqrt(a + b)*sqrt(c + d*sin(e + f*x)))/(sqrt(c + d)*sqrt(a + b*sin(e + f*x)))), ((a - b)*(c + d))/((a + b)*(c - d)))*sec(e + f*x)*sqrt(-(((b*c - a*d)*(1 - sin(e + f*x)))/((c + d)*(a + b*sin(e + f*x)))))*sqrt(((b*c - a*d)*(1 + sin(e + f*x)))/((c - d)*(a + b*sin(e + f*x))))*(a + b*sin(e + f*x)))/(a*sqrt(a + b)*c*f)) - (2*b*sqrt(a + b)*EllipticF(asin((sqrt(c + d)*sqrt(a + b*sin(e + f*x)))/(sqrt(a + b)*sqrt(c + d*sin(e + f*x)))), ((a + b)*(c - d))/((a - b)*(c + d)))*sec(e + f*x)*sqrt(((b*c - a*d)*(1 - sin(e + f*x)))/((a + b)*(c + d*sin(e + f*x))))*sqrt(-(((b*c - a*d)*(1 + sin(e + f*x)))/((a - b)*(c + d*sin(e + f*x)))))*(c + d*sin(e + f*x)))/(a*sqrt(c + d)*(b*c - a*d)*f)]


    #= [1/(sin(e + f*x)*(c + d*sin(e + f*x))^(3/2)*sqrt(a + b*sin(e + f*x))), x, 0, 0]
    @test_int [1/(sin(e + f*x)*(c + d*sin(e + f*x))^(5/2)*sqrt(a + b*sin(e + f*x))), x, 0, 0] =#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(g*cos(e+f*x))^p*(h*sin(e+f*x))^q*(a+a*sin(e+f*x))^m*(c-c*sin(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*cos(e+f*x))^p*(h*sin(e+f*x))^q*(a+a*sin(e+f*x))^m*(c-c*sin(e+f*x))^n=#


    #= [(g*cos(e + f*x))^p*(h*sin(e + f*x))^q*(a + a*sin(e + f*x))^m*(c - c*sin(e + f*x))^n, x, 0, 0] =#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a+a*sin(e+f*x))^m*(c-c*sin(e+f*x))^n*(A+B*sin(e+f*x))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*sin(e+f*x))^m*(c-c*sin(e+f*x))^n*(A+B*sin(e+f*x))^p=#


    @test_int [(a + a*sin(e + f*x))^m*(c - c*sin(e + f*x))^n*(A + B*sin(e + f*x))^p, x, 4, (2^(1/2 + n)*AppellF1(1/2 + m, 1/2 - n, -p, 3/2 + m, (1/2)*(1 + sin(e + f*x)), -((B*(1 + sin(e + f*x)))/(A - B)))*sec(e + f*x)*(1 - sin(e + f*x))^(1/2 - n)*(a + a*sin(e + f*x))^(1 + m)*(A + B*sin(e + f*x))^p*(c - c*sin(e + f*x))^n)/(((A + B*sin(e + f*x))/(A - B))^p*(a*f*(1 + 2*m)))]
    end
