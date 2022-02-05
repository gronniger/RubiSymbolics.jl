@testset "4.3.7 (d trig)^m (a+b (c tan)^n)^p" begin
    @variables a, b, c, d, e, f, m, n, p, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(b*(c*tan(e+f*x))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*(c*tan(e+f*x))^n)^(p/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tan(e+f*x)^2)^(p/2)=#


    @test_int [(b*tan(e + f*x)^2)^(5/2), x, 4, -((b^2*cot(e + f*x)*log(cos(e + f*x))*sqrt(b*tan(e + f*x)^2))/f) - (b^2*tan(e + f*x)*sqrt(b*tan(e + f*x)^2))/(2*f) + (b^2*tan(e + f*x)^3*sqrt(b*tan(e + f*x)^2))/(4*f)]
    @test_int [(b*tan(e + f*x)^2)^(3/2), x, 3, (b*cot(e + f*x)*log(cos(e + f*x))*sqrt(b*tan(e + f*x)^2))/f + (b*tan(e + f*x)*sqrt(b*tan(e + f*x)^2))/(2*f)]
    @test_int [(b*tan(e + f*x)^2)^(1/2), x, 2, -((cot(e + f*x)*log(cos(e + f*x))*sqrt(b*tan(e + f*x)^2))/f)]
    @test_int [1/(b*tan(e + f*x)^2)^(1/2), x, 2, (log(sin(e + f*x))*tan(e + f*x))/(f*sqrt(b*tan(e + f*x)^2))]
    @test_int [1/(b*tan(e + f*x)^2)^(3/2), x, 3, -(cot(e + f*x)/(2*b*f*sqrt(b*tan(e + f*x)^2))) - (log(sin(e + f*x))*tan(e + f*x))/(b*f*sqrt(b*tan(e + f*x)^2))]
    @test_int [1/(b*tan(e + f*x)^2)^(5/2), x, 4, cot(e + f*x)/(2*b^2*f*sqrt(b*tan(e + f*x)^2)) - cot(e + f*x)^3/(4*b^2*f*sqrt(b*tan(e + f*x)^2)) + (log(sin(e + f*x))*tan(e + f*x))/(b^2*f*sqrt(b*tan(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tan(e+f*x)^3)^(p/2)=#


    @test_int [(b*tan(e + f*x)^3)^(5/2), x, 16, -((2*b^2*cot(e + f*x)*sqrt(b*tan(e + f*x)^3))/f) - (b^2*atan(1 - sqrt(2)*sqrt(tan(e + f*x)))*sqrt(b*tan(e + f*x)^3))/(sqrt(2)*f*tan(e + f*x)^(3/2)) + (b^2*atan(1 + sqrt(2)*sqrt(tan(e + f*x)))*sqrt(b*tan(e + f*x)^3))/(sqrt(2)*f*tan(e + f*x)^(3/2)) - (b^2*log(1 - sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*sqrt(b*tan(e + f*x)^3))/(2*sqrt(2)*f*tan(e + f*x)^(3/2)) + (b^2*log(1 + sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*sqrt(b*tan(e + f*x)^3))/(2*sqrt(2)*f*tan(e + f*x)^(3/2)) + (2*b^2*tan(e + f*x)*sqrt(b*tan(e + f*x)^3))/(5*f) - (2*b^2*tan(e + f*x)^3*sqrt(b*tan(e + f*x)^3))/(9*f) + (2*b^2*tan(e + f*x)^5*sqrt(b*tan(e + f*x)^3))/(13*f)]
    @test_int [(b*tan(e + f*x)^3)^(3/2), x, 14, -((2*b*sqrt(b*tan(e + f*x)^3))/(3*f)) - (b*atan(1 - sqrt(2)*sqrt(tan(e + f*x)))*sqrt(b*tan(e + f*x)^3))/(sqrt(2)*f*tan(e + f*x)^(3/2)) + (b*atan(1 + sqrt(2)*sqrt(tan(e + f*x)))*sqrt(b*tan(e + f*x)^3))/(sqrt(2)*f*tan(e + f*x)^(3/2)) + (b*log(1 - sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*sqrt(b*tan(e + f*x)^3))/(2*sqrt(2)*f*tan(e + f*x)^(3/2)) - (b*log(1 + sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*sqrt(b*tan(e + f*x)^3))/(2*sqrt(2)*f*tan(e + f*x)^(3/2)) + (2*b*tan(e + f*x)^2*sqrt(b*tan(e + f*x)^3))/(7*f)]
    @test_int [(b*tan(e + f*x)^3)^(1/2), x, 13, (2*cot(e + f*x)*sqrt(b*tan(e + f*x)^3))/f + (atan(1 - sqrt(2)*sqrt(tan(e + f*x)))*sqrt(b*tan(e + f*x)^3))/(sqrt(2)*f*tan(e + f*x)^(3/2)) - (atan(1 + sqrt(2)*sqrt(tan(e + f*x)))*sqrt(b*tan(e + f*x)^3))/(sqrt(2)*f*tan(e + f*x)^(3/2)) + (log(1 - sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*sqrt(b*tan(e + f*x)^3))/(2*sqrt(2)*f*tan(e + f*x)^(3/2)) - (log(1 + sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*sqrt(b*tan(e + f*x)^3))/(2*sqrt(2)*f*tan(e + f*x)^(3/2))]
    @test_int [1/(b*tan(e + f*x)^3)^(1/2), x, 13, -((2*tan(e + f*x))/(f*sqrt(b*tan(e + f*x)^3))) + (atan(1 - sqrt(2)*sqrt(tan(e + f*x)))*tan(e + f*x)^(3/2))/(sqrt(2)*f*sqrt(b*tan(e + f*x)^3)) - (atan(1 + sqrt(2)*sqrt(tan(e + f*x)))*tan(e + f*x)^(3/2))/(sqrt(2)*f*sqrt(b*tan(e + f*x)^3)) - (log(1 - sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*tan(e + f*x)^(3/2))/(2*sqrt(2)*f*sqrt(b*tan(e + f*x)^3)) + (log(1 + sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*tan(e + f*x)^(3/2))/(2*sqrt(2)*f*sqrt(b*tan(e + f*x)^3))]
    @test_int [1/(b*tan(e + f*x)^3)^(3/2), x, 14, 2/(3*b*f*sqrt(b*tan(e + f*x)^3)) - (2*cot(e + f*x)^2)/(7*b*f*sqrt(b*tan(e + f*x)^3)) - (atan(1 - sqrt(2)*sqrt(tan(e + f*x)))*tan(e + f*x)^(3/2))/(sqrt(2)*b*f*sqrt(b*tan(e + f*x)^3)) + (atan(1 + sqrt(2)*sqrt(tan(e + f*x)))*tan(e + f*x)^(3/2))/(sqrt(2)*b*f*sqrt(b*tan(e + f*x)^3)) - (log(1 - sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*tan(e + f*x)^(3/2))/(2*sqrt(2)*b*f*sqrt(b*tan(e + f*x)^3)) + (log(1 + sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*tan(e + f*x)^(3/2))/(2*sqrt(2)*b*f*sqrt(b*tan(e + f*x)^3))]
    @test_int [1/(b*tan(e + f*x)^3)^(5/2), x, 16, -((2*cot(e + f*x))/(5*b^2*f*sqrt(b*tan(e + f*x)^3))) + (2*cot(e + f*x)^3)/(9*b^2*f*sqrt(b*tan(e + f*x)^3)) - (2*cot(e + f*x)^5)/(13*b^2*f*sqrt(b*tan(e + f*x)^3)) + (2*tan(e + f*x))/(b^2*f*sqrt(b*tan(e + f*x)^3)) - (atan(1 - sqrt(2)*sqrt(tan(e + f*x)))*tan(e + f*x)^(3/2))/(sqrt(2)*b^2*f*sqrt(b*tan(e + f*x)^3)) + (atan(1 + sqrt(2)*sqrt(tan(e + f*x)))*tan(e + f*x)^(3/2))/(sqrt(2)*b^2*f*sqrt(b*tan(e + f*x)^3)) + (log(1 - sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*tan(e + f*x)^(3/2))/(2*sqrt(2)*b^2*f*sqrt(b*tan(e + f*x)^3)) - (log(1 + sqrt(2)*sqrt(tan(e + f*x)) + tan(e + f*x))*tan(e + f*x)^(3/2))/(2*sqrt(2)*b^2*f*sqrt(b*tan(e + f*x)^3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tan(e+f*x)^4)^(p/2)=#


    @test_int [(b*tan(e + f*x)^4)^(5/2), x, 7, (b^2*cot(e + f*x)*sqrt(b*tan(e + f*x)^4))/f - b^2*x*cot(e + f*x)^2*sqrt(b*tan(e + f*x)^4) - (b^2*tan(e + f*x)*sqrt(b*tan(e + f*x)^4))/(3*f) + (b^2*tan(e + f*x)^3*sqrt(b*tan(e + f*x)^4))/(5*f) - (b^2*tan(e + f*x)^5*sqrt(b*tan(e + f*x)^4))/(7*f) + (b^2*tan(e + f*x)^7*sqrt(b*tan(e + f*x)^4))/(9*f)]
    @test_int [(b*tan(e + f*x)^4)^(3/2), x, 5, (b*cot(e + f*x)*sqrt(b*tan(e + f*x)^4))/f - b*x*cot(e + f*x)^2*sqrt(b*tan(e + f*x)^4) - (b*tan(e + f*x)*sqrt(b*tan(e + f*x)^4))/(3*f) + (b*tan(e + f*x)^3*sqrt(b*tan(e + f*x)^4))/(5*f)]
    @test_int [(b*tan(e + f*x)^4)^(1/2), x, 3, (cot(e + f*x)*sqrt(b*tan(e + f*x)^4))/f - x*cot(e + f*x)^2*sqrt(b*tan(e + f*x)^4)]
    @test_int [1/(b*tan(e + f*x)^4)^(1/2), x, 3, -(tan(e + f*x)/(f*sqrt(b*tan(e + f*x)^4))) - (x*tan(e + f*x)^2)/sqrt(b*tan(e + f*x)^4)]
    @test_int [1/(b*tan(e + f*x)^4)^(3/2), x, 5, cot(e + f*x)/(3*b*f*sqrt(b*tan(e + f*x)^4)) - cot(e + f*x)^3/(5*b*f*sqrt(b*tan(e + f*x)^4)) - tan(e + f*x)/(b*f*sqrt(b*tan(e + f*x)^4)) - (x*tan(e + f*x)^2)/(b*sqrt(b*tan(e + f*x)^4))]
    @test_int [1/(b*tan(e + f*x)^4)^(5/2), x, 7, cot(e + f*x)/(3*b^2*f*sqrt(b*tan(e + f*x)^4)) - cot(e + f*x)^3/(5*b^2*f*sqrt(b*tan(e + f*x)^4)) + cot(e + f*x)^5/(7*b^2*f*sqrt(b*tan(e + f*x)^4)) - cot(e + f*x)^7/(9*b^2*f*sqrt(b*tan(e + f*x)^4)) - tan(e + f*x)/(b^2*f*sqrt(b*tan(e + f*x)^4)) - (x*tan(e + f*x)^2)/(b^2*sqrt(b*tan(e + f*x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*(c*tan(e+f*x))^n)^(p/2)=#


    @test_int [(b*tan(e + f*x)^n)^(5/2), x, 3, (2*b^2*Hypergeometric2F1(1, (1/4)*(2 + 5*n), (1/4)*(6 + 5*n), -tan(e + f*x)^2)*tan(e + f*x)^(1 + 2*n)*sqrt(b*tan(e + f*x)^n))/(f*(2 + 5*n))]
    @test_int [(b*tan(e + f*x)^n)^(3/2), x, 3, (2*b*Hypergeometric2F1(1, (1/4)*(2 + 3*n), (3*(2 + n))/4, -tan(e + f*x)^2)*tan(e + f*x)^(1 + n)*sqrt(b*tan(e + f*x)^n))/(f*(2 + 3*n))]
    @test_int [(b*tan(e + f*x)^n)^(1/2), x, 3, (2*Hypergeometric2F1(1, (2 + n)/4, (6 + n)/4, -tan(e + f*x)^2)*tan(e + f*x)*sqrt(b*tan(e + f*x)^n))/(f*(2 + n))]
    @test_int [1/(b*tan(e + f*x)^n)^(1/2), x, 3, (2*Hypergeometric2F1(1, (2 - n)/4, (6 - n)/4, -tan(e + f*x)^2)*tan(e + f*x))/(f*(2 - n)*sqrt(b*tan(e + f*x)^n))]
    @test_int [1/(b*tan(e + f*x)^n)^(3/2), x, 3, (2*Hypergeometric2F1(1, (1/4)*(2 - 3*n), (3*(2 - n))/4, -tan(e + f*x)^2)*tan(e + f*x)^(1 - n))/(b*f*(2 - 3*n)*sqrt(b*tan(e + f*x)^n))]
    @test_int [1/(b*tan(e + f*x)^n)^(5/2), x, 3, (2*Hypergeometric2F1(1, (1/4)*(2 - 5*n), (1/4)*(6 - 5*n), -tan(e + f*x)^2)*tan(e + f*x)^(1 - 2*n))/(b^2*f*(2 - 5*n)*sqrt(b*tan(e + f*x)^n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*(c*tan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(b*tan(e + f*x)^n)^p, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + n*p), (1/2)*(3 + n*p), -tan(e + f*x)^2)*tan(e + f*x)*(b*tan(e + f*x)^n)^p)/(f*(1 + n*p))]


    @test_int [(b*tan(e + f*x)^2)^p, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + 2*p), (1/2)*(3 + 2*p), -tan(e + f*x)^2)*tan(e + f*x)*(b*tan(e + f*x)^2)^p)/(f*(1 + 2*p))]
    @test_int [(b*tan(e + f*x)^3)^p, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + 3*p), (3*(1 + p))/2, -tan(e + f*x)^2)*tan(e + f*x)*(b*tan(e + f*x)^3)^p)/(f*(1 + 3*p))]
    @test_int [(b*tan(e + f*x)^4)^p, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + 4*p), (1/2)*(3 + 4*p), -tan(e + f*x)^2)*tan(e + f*x)*(b*tan(e + f*x)^4)^p)/(f*(1 + 4*p))]


    @test_int [(b*tan(e + f*x)^n)^(1/n), x, 2, -((cot(e + f*x)*log(cos(e + f*x))*(b*tan(e + f*x)^n)^(1/n))/f)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*tan(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*tan(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sin(e + f*x)^5*(a + b*tan(e + f*x)^2), x, 3, -(((a - 3*b)*cos(e + f*x))/f) + ((2*a - 3*b)*cos(e + f*x)^3)/(3*f) - ((a - b)*cos(e + f*x)^5)/(5*f) + (b*sec(e + f*x))/f]
    @test_int [sin(e + f*x)^3*(a + b*tan(e + f*x)^2), x, 3, -(((a - 2*b)*cos(e + f*x))/f) + ((a - b)*cos(e + f*x)^3)/(3*f) + (b*sec(e + f*x))/f]
    @test_int [sin(e + f*x)^1*(a + b*tan(e + f*x)^2), x, 3, -(((a - b)*cos(e + f*x))/f) + (b*sec(e + f*x))/f]
    @test_int [csc(e + f*x)^1*(a + b*tan(e + f*x)^2), x, 3, -((a*atanh(cos(e + f*x)))/f) + (b*sec(e + f*x))/f]
    @test_int [csc(e + f*x)^3*(a + b*tan(e + f*x)^2), x, 4, -((a + 2*b)*atanh(cos(e + f*x)))/(2*f) - (a*cot(e + f*x)*csc(e + f*x))/(2*f) + (b*sec(e + f*x))/f]
    @test_int [csc(e + f*x)^5*(a + b*tan(e + f*x)^2), x, 5, (-3*(a + 4*b)*atanh(cos(e + f*x)))/(8*f) - ((5*a + 4*b)*cot(e + f*x)*csc(e + f*x))/(8*f) - (a*cot(e + f*x)^3*csc(e + f*x))/(4*f) + (b*sec(e + f*x))/f]

    @test_int [sin(e + f*x)^6*(a + b*tan(e + f*x)^2), x, 6, (5*(a - 7*b)*x)/16 - ((11*a - 29*b)*cos(e + f*x)*sin(e + f*x))/(16*f) + ((13*a - 19*b)*cos(e + f*x)^3*sin(e + f*x))/(24*f) - ((a - b)*cos(e + f*x)^5*sin(e + f*x))/(6*f) + (b*tan(e + f*x))/f]
    @test_int [sin(e + f*x)^4*(a + b*tan(e + f*x)^2), x, 5, (3*(a - 5*b)*x)/8 - ((5*a - 9*b)*cos(e + f*x)*sin(e + f*x))/(8*f) + ((a - b)*cos(e + f*x)^3*sin(e + f*x))/(4*f) + (b*tan(e + f*x))/f]
    @test_int [sin(e + f*x)^2*(a + b*tan(e + f*x)^2), x, 4, ((a - 3*b)*x)/2 - ((a - b)*cos(e + f*x)*sin(e + f*x))/(2*f) + (b*tan(e + f*x))/f]
    @test_int [sin(e + f*x)^0*(a + b*tan(e + f*x)^2), x, 3, a*x - b*x + (b*tan(e + f*x))/f]
    @test_int [csc(e + f*x)^2*(a + b*tan(e + f*x)^2), x, 3, -((a*cot(e + f*x))/f) + (b*tan(e + f*x))/f]
    @test_int [csc(e + f*x)^4*(a + b*tan(e + f*x)^2), x, 3, -(((a + b)*cot(e + f*x))/f) - (a*cot(e + f*x)^3)/(3*f) + (b*tan(e + f*x))/f]
    @test_int [csc(e + f*x)^6*(a + b*tan(e + f*x)^2), x, 3, -(((a + 2*b)*cot(e + f*x))/f) - ((2*a + b)*cot(e + f*x)^3)/(3*f) - (a*cot(e + f*x)^5)/(5*f) + (b*tan(e + f*x))/f]


    @test_int [sin(e + f*x)^5*(a + b*tan(e + f*x)^2)^2, x, 3, -(((a^2 - 6*a*b + 6*b^2)*cos(e + f*x))/f) + (2*(a - 2*b)*(a - b)*cos(e + f*x)^3)/(3*f) - ((a - b)^2*cos(e + f*x)^5)/(5*f) + (2*(a - 2*b)*b*sec(e + f*x))/f + (b^2*sec(e + f*x)^3)/(3*f)]
    @test_int [sin(e + f*x)^3*(a + b*tan(e + f*x)^2)^2, x, 3, -(((a - 3*b)*(a - b)*cos(e + f*x))/f) + ((a - b)^2*cos(e + f*x)^3)/(3*f) + ((2*a - 3*b)*b*sec(e + f*x))/f + (b^2*sec(e + f*x)^3)/(3*f)]
    @test_int [sin(e + f*x)^1*(a + b*tan(e + f*x)^2)^2, x, 3, -(((a - b)^2*cos(e + f*x))/f) + (2*(a - b)*b*sec(e + f*x))/f + (b^2*sec(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^1*(a + b*tan(e + f*x)^2)^2, x, 4, -((a^2*atanh(cos(e + f*x)))/f) + ((2*a - b)*b*sec(e + f*x))/f + (b^2*sec(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^3*(a + b*tan(e + f*x)^2)^2, x, 5, -(a*(a + 4*b)*atanh(cos(e + f*x)))/(2*f) + (a*(a + 4*b)*sec(e + f*x))/(2*f) - (a^2*csc(e + f*x)^2*sec(e + f*x))/(2*f) + (b^2*sec(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^5*(a + b*tan(e + f*x)^2)^2, x, 6, -((3*a^2 + 24*a*b + 8*b^2)*atanh(cos(e + f*x)))/(8*f) - (a*(a + 8*b)*cot(e + f*x)*csc(e + f*x))/(8*f) + ((a^2 + 8*a*b + 4*b^2)*sec(e + f*x))/(4*f) - (a^2*csc(e + f*x)^4*sec(e + f*x))/(4*f) + (b^2*sec(e + f*x)^3)/(3*f)]

    @test_int [sin(e + f*x)^4*(a + b*tan(e + f*x)^2)^2, x, 6, ((3*a^2 - 30*a*b + 35*b^2)*x)/8 - ((a - 9*b)*(a - b)*cos(e + f*x)*sin(e + f*x))/(8*f) - ((a^2 - 10*a*b + 13*b^2)*tan(e + f*x))/(4*f) + ((a - b)^2*sin(e + f*x)^4*tan(e + f*x))/(4*f) + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [sin(e + f*x)^2*(a + b*tan(e + f*x)^2)^2, x, 5, ((a - 5*b)*(a - b)*x)/2 - ((a - 5*b)*(a - b)*tan(e + f*x))/(2*f) + ((a - b)^2*sin(e + f*x)^2*tan(e + f*x))/(2*f) + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [sin(e + f*x)^0*(a + b*tan(e + f*x)^2)^2, x, 4, (a - b)^2*x + ((2*a - b)*b*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^2*(a + b*tan(e + f*x)^2)^2, x, 3, -((a^2*cot(e + f*x))/f) + (2*a*b*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^4*(a + b*tan(e + f*x)^2)^2, x, 3, -((a*(a + 2*b)*cot(e + f*x))/f) - (a^2*cot(e + f*x)^3)/(3*f) + (b*(2*a + b)*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^6*(a + b*tan(e + f*x)^2)^2, x, 3, -(((a^2 + 4*a*b + b^2)*cot(e + f*x))/f) - (2*a*(a + b)*cot(e + f*x)^3)/(3*f) - (a^2*cot(e + f*x)^5)/(5*f) + (2*b*(a + b)*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(e + f*x)^5/(a + b*tan(e + f*x)^2), x, 4, -((a^2*sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/((a - b)^(7/2)*f)) - (a^2*cos(e + f*x))/((a - b)^3*f) + ((2*a - b)*cos(e + f*x)^3)/(3*(a - b)^2*f) - cos(e + f*x)^5/(5*(a - b)*f)]
    @test_int [sin(e + f*x)^3/(a + b*tan(e + f*x)^2), x, 4, -((a*sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/((a - b)^(5/2)*f)) - (a*cos(e + f*x))/((a - b)^2*f) + cos(e + f*x)^3/(3*(a - b)*f)]
    @test_int [sin(e + f*x)^1/(a + b*tan(e + f*x)^2), x, 3, -((sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/((a - b)^(3/2)*f)) - cos(e + f*x)/((a - b)*f)]
    @test_int [csc(e + f*x)^1/(a + b*tan(e + f*x)^2), x, 4, -((sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(a*sqrt(a - b)*f)) - atanh(cos(e + f*x))/(a*f)]
    @test_int [csc(e + f*x)^3/(a + b*tan(e + f*x)^2), x, 5, -((sqrt(a - b)*sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(a^2*f)) - ((a - 2*b)*atanh(cos(e + f*x)))/(2*a^2*f) - (cot(e + f*x)*csc(e + f*x))/(2*a*f)]
    @test_int [csc(e + f*x)^5/(a + b*tan(e + f*x)^2), x, 6, -(((a - b)^(3/2)*sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(a^3*f)) - ((3*a^2 - 12*a*b + 8*b^2)*atanh(cos(e + f*x)))/(8*a^3*f) - ((5*a - 4*b)*cot(e + f*x)*csc(e + f*x))/(8*a^2*f) - (cot(e + f*x)^3*csc(e + f*x))/(4*a*f)]

    @test_int [sin(e + f*x)^6/(a + b*tan(e + f*x)^2), x, 7, ((5*a^3 + 15*a^2*b - 5*a*b^2 + b^3)*x)/(16*(a - b)^4) - (a^(5/2)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/((a - b)^4*f) - ((11*a^2 - 4*a*b + b^2)*cos(e + f*x)*sin(e + f*x))/(16*(a - b)^3*f) + ((3*a - b)*cos(e + f*x)^3*sin(e + f*x))/(8*(a - b)^2*f) + (cos(e + f*x)^3*sin(e + f*x)^3)/(6*(a - b)*f)]
    @test_int [sin(e + f*x)^4/(a + b*tan(e + f*x)^2), x, 6, ((3*a^2 + 6*a*b - b^2)*x)/(8*(a - b)^3) - (a^(3/2)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/((a - b)^3*f) - ((5*a - b)*cos(e + f*x)*sin(e + f*x))/(8*(a - b)^2*f) + (cos(e + f*x)^3*sin(e + f*x))/(4*(a - b)*f)]
    @test_int [sin(e + f*x)^2/(a + b*tan(e + f*x)^2), x, 5, ((a + b)*x)/(2*(a - b)^2) - (sqrt(a)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/((a - b)^2*f) - (cos(e + f*x)*sin(e + f*x))/(2*(a - b)*f)]
    @test_int [sin(e + f*x)^0/(a + b*tan(e + f*x)^2), x, 3, x/(a - b) - (sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(sqrt(a)*(a - b)*f)]
    @test_int [csc(e + f*x)^2/(a + b*tan(e + f*x)^2), x, 3, -((sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(a^(3/2)*f)) - cot(e + f*x)/(a*f)]
    @test_int [csc(e + f*x)^4/(a + b*tan(e + f*x)^2), x, 4, -(((a - b)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(a^(5/2)*f)) - ((a - b)*cot(e + f*x))/(a^2*f) - cot(e + f*x)^3/(3*a*f)]
    @test_int [csc(e + f*x)^6/(a + b*tan(e + f*x)^2), x, 4, -(((a - b)^2*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(a^(7/2)*f)) - ((a - b)^2*cot(e + f*x))/(a^3*f) - ((2*a - b)*cot(e + f*x)^3)/(3*a^2*f) - cot(e + f*x)^5/(5*a*f)]


    @test_int [sin(e + f*x)^5/(a + b*tan(e + f*x)^2)^2, x, 6, -(a*sqrt(b)*(3*a + 4*b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(2*(a - b)^(9/2)*f) - ((5*a^2 + 10*a*b - b^2)*cos(e + f*x))/(5*(a - b)^4*f) + ((10*a - 3*b)*cos(e + f*x)^3)/(15*(a - b)^3*f) - cos(e + f*x)^5/(5*(a - b)*f*(a - b + b*sec(e + f*x)^2)) - (b*(5*a^2 + 2*b^2)*sec(e + f*x))/(10*(a - b)^4*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^3/(a + b*tan(e + f*x)^2)^2, x, 5, -(sqrt(b)*(3*a + 2*b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(2*(a - b)^(7/2)*f) - ((a + b)*cos(e + f*x))/((a - b)^3*f) + cos(e + f*x)^3/(3*(a - b)^2*f) - (a*b*sec(e + f*x))/(2*(a - b)^3*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^1/(a + b*tan(e + f*x)^2)^2, x, 4, (-3*sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(2*(a - b)^(5/2)*f) - (3*cos(e + f*x))/(2*(a - b)^2*f) + cos(e + f*x)/(2*(a - b)*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^1/(a + b*tan(e + f*x)^2)^2, x, 5, -((3*a - 2*b)*sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(2*a^2*(a - b)^(3/2)*f) - atanh(cos(e + f*x))/(a^2*f) - (b*sec(e + f*x))/(2*a*(a - b)*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^3/(a + b*tan(e + f*x)^2)^2, x, 6, -((3*a - 4*b)*sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(2*a^3*sqrt(a - b)*f) - ((a - 4*b)*atanh(cos(e + f*x)))/(2*a^3*f) - (cot(e + f*x)*csc(e + f*x))/(2*a*f*(a - b + b*sec(e + f*x)^2)) - (b*sec(e + f*x))/(a^2*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^5/(a + b*tan(e + f*x)^2)^2, x, 7, (-3*(a - 2*b)*sqrt(a - b)*sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(2*a^4*f) - (3*(a^2 - 8*a*b + 8*b^2)*atanh(cos(e + f*x)))/(8*a^4*f) - ((5*a - 6*b)*cot(e + f*x)*csc(e + f*x))/(8*a^2*f*(a - b + b*sec(e + f*x)^2)) - (cot(e + f*x)^3*csc(e + f*x))/(4*a*f*(a - b + b*sec(e + f*x)^2)) - (3*(3*a - 4*b)*b*sec(e + f*x))/(8*a^3*f*(a - b + b*sec(e + f*x)^2))]

    @test_int [sin(e + f*x)^4/(a + b*tan(e + f*x)^2)^2, x, 7, (3*(a^2 + 6*a*b + b^2)*x)/(8*(a - b)^4) - (3*sqrt(a)*sqrt(b)*(a + b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*(a - b)^4*f) - ((5*a + b)*cos(e + f*x)*sin(e + f*x))/(8*(a - b)^2*f*(a + b*tan(e + f*x)^2)) + (cos(e + f*x)^3*sin(e + f*x))/(4*(a - b)*f*(a + b*tan(e + f*x)^2)) - (3*b*(3*a + b)*tan(e + f*x))/(8*(a - b)^3*f*(a + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*tan(e + f*x)^2)^2, x, 6, ((a + 3*b)*x)/(2*(a - b)^3) - (sqrt(b)*(3*a + b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*sqrt(a)*(a - b)^3*f) - (cos(e + f*x)*sin(e + f*x))/(2*(a - b)*f*(a + b*tan(e + f*x)^2)) - (b*tan(e + f*x))/((a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*tan(e + f*x)^2)^2, x, 5, x/(a - b)^2 - ((3*a - b)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^2*f) - (b*tan(e + f*x))/(2*a*(a - b)*f*(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/(a + b*tan(e + f*x)^2)^2, x, 4, (-3*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*a^(5/2)*f) - (3*cot(e + f*x))/(2*a^2*f) + cot(e + f*x)/(2*a*f*(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^4/(a + b*tan(e + f*x)^2)^2, x, 5, -((3*a - 5*b)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*a^(7/2)*f) - ((a - 2*b)*cot(e + f*x))/(a^3*f) - cot(e + f*x)^3/(3*a^2*f) - ((a - b)*b*tan(e + f*x))/(2*a^3*f*(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^6/(a + b*tan(e + f*x)^2)^2, x, 6, -(((3*a - 7*b)*(a - b)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*a^(9/2)*f)) - ((5*a^2 - 20*a*b + 14*b^2)*cot(e + f*x))/(5*a^4*f) - ((10*a - 7*b)*cot(e + f*x)^3)/(15*a^3*f) - cot(e + f*x)^5/(5*a*f*(a + b*tan(e + f*x)^2)) - (b*(5*a^2 - 10*a*b + 7*b^2)*tan(e + f*x))/(10*a^4*f*(a + b*tan(e + f*x)^2))]


    @test_int [sin(e + f*x)^5/(a + b*tan(e + f*x)^2)^3, x, 7, -(sqrt(b)*(15*a^2 + 40*a*b + 8*b^2)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(8*(a - b)^(11/2)*f) - ((5*a^2 + 20*a*b + 2*b^2)*cos(e + f*x))/(5*(a - b)^5*f) + ((10*a - b)*cos(e + f*x)^3)/(15*(a - b)^4*f) - cos(e + f*x)^5/(5*(a - b)*f*(a - b + b*sec(e + f*x)^2)^2) - (b*(5*a^2 + 4*b^2)*sec(e + f*x))/(20*(a - b)^4*f*(a - b + b*sec(e + f*x)^2)^2) - (b*(35*a^2 + 40*a*b + 24*b^2)*sec(e + f*x))/(40*(a - b)^5*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^3/(a + b*tan(e + f*x)^2)^3, x, 6, (-5*sqrt(b)*(3*a + 4*b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(8*(a - b)^(9/2)*f) - ((a + 2*b)*cos(e + f*x))/((a - b)^4*f) + cos(e + f*x)^3/(3*(a - b)^3*f) - (a*b*sec(e + f*x))/(4*(a - b)^3*f*(a - b + b*sec(e + f*x)^2)^2) - (b*(7*a + 4*b)*sec(e + f*x))/(8*(a - b)^4*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^1/(a + b*tan(e + f*x)^2)^3, x, 5, (-15*sqrt(b)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(8*(a - b)^(7/2)*f) - (15*cos(e + f*x))/(8*(a - b)^3*f) + cos(e + f*x)/(4*(a - b)*f*(a - b + b*sec(e + f*x)^2)^2) + (5*cos(e + f*x))/(8*(a - b)^2*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^1/(a + b*tan(e + f*x)^2)^3, x, 6, -(sqrt(b)*(15*a^2 - 20*a*b + 8*b^2)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(8*a^3*(a - b)^(5/2)*f) - atanh(cos(e + f*x))/(a^3*f) - (b*sec(e + f*x))/(4*a*(a - b)*f*(a - b + b*sec(e + f*x)^2)^2) - ((7*a - 4*b)*b*sec(e + f*x))/(8*a^2*(a - b)^2*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^3/(a + b*tan(e + f*x)^2)^3, x, 7, -(sqrt(b)*(15*a^2 - 40*a*b + 24*b^2)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(8*a^4*(a - b)^(3/2)*f) - ((a - 6*b)*atanh(cos(e + f*x)))/(2*a^4*f) - (cot(e + f*x)*csc(e + f*x))/(2*a*f*(a - b + b*sec(e + f*x)^2)^2) - (3*b*sec(e + f*x))/(4*a^2*f*(a - b + b*sec(e + f*x)^2)^2) - ((11*a - 12*b)*b*sec(e + f*x))/(8*a^3*(a - b)*f*(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^5/(a + b*tan(e + f*x)^2)^3, x, 8, (-3*sqrt(b)*(5*a^2 - 20*a*b + 16*b^2)*atan((sqrt(b)*sec(e + f*x))/sqrt(a - b)))/(8*a^5*sqrt(a - b)*f) - (3*(a^2 - 12*a*b + 16*b^2)*atanh(cos(e + f*x)))/(8*a^5*f) - ((5*a - 8*b)*cot(e + f*x)*csc(e + f*x))/(8*a^2*f*(a - b + b*sec(e + f*x)^2)^2) - (cot(e + f*x)^3*csc(e + f*x))/(4*a*f*(a - b + b*sec(e + f*x)^2)^2) - ((7*a - 12*b)*b*sec(e + f*x))/(8*a^3*f*(a - b + b*sec(e + f*x)^2)^2) - (3*(a - 2*b)*b*sec(e + f*x))/(2*a^4*f*(a - b + b*sec(e + f*x)^2))]

    @test_int [sin(e + f*x)^4/(a + b*tan(e + f*x)^2)^3, x, 8, (3*(a^2 + 10*a*b + 5*b^2)*x)/(8*(a - b)^5) - (3*sqrt(b)*(5*a^2 + 10*a*b + b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*sqrt(a)*(a - b)^5*f) - ((5*a + 3*b)*cos(e + f*x)*sin(e + f*x))/(8*(a - b)^2*f*(a + b*tan(e + f*x)^2)^2) + (cos(e + f*x)^3*sin(e + f*x))/(4*(a - b)*f*(a + b*tan(e + f*x)^2)^2) - (b*(7*a + 5*b)*tan(e + f*x))/(8*(a - b)^3*f*(a + b*tan(e + f*x)^2)^2) - (3*b*(a + b)*tan(e + f*x))/(2*(a - b)^4*f*(a + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*tan(e + f*x)^2)^3, x, 7, ((a + 5*b)*x)/(2*(a - b)^4) - (sqrt(b)*(15*a^2 + 10*a*b - b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(3/2)*(a - b)^4*f) - (cos(e + f*x)*sin(e + f*x))/(2*(a - b)*f*(a + b*tan(e + f*x)^2)^2) - (3*b*tan(e + f*x))/(4*(a - b)^2*f*(a + b*tan(e + f*x)^2)^2) - (b*(11*a + b)*tan(e + f*x))/(8*a*(a - b)^3*f*(a + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*tan(e + f*x)^2)^3, x, 6, x/(a - b)^3 - (sqrt(b)*(15*a^2 - 10*a*b + 3*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^3*f) - (b*tan(e + f*x))/(4*a*(a - b)*f*(a + b*tan(e + f*x)^2)^2) - ((7*a - 3*b)*b*tan(e + f*x))/(8*a^2*(a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/(a + b*tan(e + f*x)^2)^3, x, 5, (-15*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(7/2)*f) - (15*cot(e + f*x))/(8*a^3*f) + cot(e + f*x)/(4*a*f*(a + b*tan(e + f*x)^2)^2) + (5*cot(e + f*x))/(8*a^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^4/(a + b*tan(e + f*x)^2)^3, x, 6, (-5*(3*a - 7*b)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(9/2)*f) - ((a - 3*b)*cot(e + f*x))/(a^4*f) - cot(e + f*x)^3/(3*a^3*f) - ((a - b)*b*tan(e + f*x))/(4*a^3*f*(a + b*tan(e + f*x)^2)^2) - ((7*a - 11*b)*b*tan(e + f*x))/(8*a^4*f*(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^6/(a + b*tan(e + f*x)^2)^3, x, 7, -(sqrt(b)*(15*a^2 - 70*a*b + 63*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(11/2)*f) - ((5*a^2 - 30*a*b + 27*b^2)*cot(e + f*x))/(5*a^5*f) - ((10*a - 9*b)*cot(e + f*x)^3)/(15*a^4*f) - cot(e + f*x)^5/(5*a*f*(a + b*tan(e + f*x)^2)^2) - (b*(5*a^2 - 10*a*b + 9*b^2)*tan(e + f*x))/(20*a^4*f*(a + b*tan(e + f*x)^2)^2) - (b*(35*a^2 - 110*a*b + 99*b^2)*tan(e + f*x))/(40*a^5*f*(a + b*tan(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*tan(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sin(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2), x, 6, (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/f - (cos(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/f + (2*(5*a - 4*b)*cos(e + f*x)^3*(a - b + b*sec(e + f*x)^2)^(3/2))/(15*(a - b)^2*f) - (cos(e + f*x)^5*(a - b + b*sec(e + f*x)^2)^(3/2))/(5*(a - b)*f)]
    @test_int [sin(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2), x, 5, (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/f - (cos(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/f + (cos(e + f*x)^3*(a - b + b*sec(e + f*x)^2)^(3/2))/(3*(a - b)*f)]
    @test_int [sin(e + f*x)^1*sqrt(a + b*tan(e + f*x)^2), x, 4, (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/f - (cos(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/f]
    @test_int [csc(e + f*x)^1*sqrt(a + b*tan(e + f*x)^2), x, 6, -((sqrt(a)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/f) + (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/f]
    @test_int [csc(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2), x, 7, -((a + b)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*sqrt(a)*f) + (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/f - (cot(e + f*x)*csc(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(2*f)]
    @test_int [csc(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2), x, 8, -((3*a^2 + 6*a*b - b^2)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(8*a^(3/2)*f) + (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/f - ((3*a + b)*cot(e + f*x)*csc(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(8*a*f) - (cot(e + f*x)*csc(e + f*x)^3*sqrt(a - b + b*sec(e + f*x)^2))/(4*f)]

    @test_int [sin(e + f*x)^4*sqrt(a + b*tan(e + f*x)^2), x, 8, ((3*a^2 - 12*a*b + 8*b^2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(8*(a - b)^(3/2)*f) + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f - ((3*a - 4*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(8*(a - b)*f) - (cos(e + f*x)*sin(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(4*f)]
    @test_int [sin(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2), x, 7, ((a - 2*b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*sqrt(a - b)*f) + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f - (cos(e + f*x)*sin(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*f)]
    @test_int [sin(e + f*x)^0*sqrt(a + b*tan(e + f*x)^2), x, 6, (sqrt(a - b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f]
    @test_int [csc(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2), x, 4, (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f - (cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/f]
    @test_int [csc(e + f*x)^4*sqrt(a + b*tan(e + f*x)^2), x, 5, (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f - (cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/f - (cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^(3/2))/(3*a*f)]
    @test_int [csc(e + f*x)^6*sqrt(a + b*tan(e + f*x)^2), x, 6, (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f - (cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/f - (2*(5*a - b)*cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^(3/2))/(15*a^2*f) - (cot(e + f*x)^5*(a + b*tan(e + f*x)^2)^(3/2))/(5*a*f)]


    @test_int [sin(e + f*x)^5*(a + b*tan(e + f*x)^2)^(3/2), x, 7, ((3*a - 7*b)*sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*f) + ((3*a - 7*b)*b*sec(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(2*(a - b)*f) - ((3*a - 7*b)*cos(e + f*x)*(a - b + b*sec(e + f*x)^2)^(3/2))/(3*(a - b)*f) + (2*cos(e + f*x)^3*(a - b + b*sec(e + f*x)^2)^(5/2))/(3*(a - b)*f) - (cos(e + f*x)^5*(a - b + b*sec(e + f*x)^2)^(5/2))/(5*(a - b)*f)]
    @test_int [sin(e + f*x)^3*(a + b*tan(e + f*x)^2)^(3/2), x, 6, ((3*a - 5*b)*sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*f) + ((3*a - 5*b)*b*sec(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(2*(a - b)*f) - ((3*a - 5*b)*cos(e + f*x)*(a - b + b*sec(e + f*x)^2)^(3/2))/(3*(a - b)*f) + (cos(e + f*x)^3*(a - b + b*sec(e + f*x)^2)^(5/2))/(3*(a - b)*f)]
    @test_int [sin(e + f*x)^1*(a + b*tan(e + f*x)^2)^(3/2), x, 5, (3*(a - b)*sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*f) + (3*b*sec(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(2*f) - (cos(e + f*x)*(a - b + b*sec(e + f*x)^2)^(3/2))/f]
    @test_int [csc(e + f*x)^1*(a + b*tan(e + f*x)^2)^(3/2), x, 7, -((a^(3/2)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/f) + ((3*a - b)*sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*f) + (b*sec(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(2*f)]
    @test_int [csc(e + f*x)^3*(a + b*tan(e + f*x)^2)^(3/2), x, 8, -(sqrt(a)*(a + 3*b)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*f) + (sqrt(b)*(3*a + b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*f) + (b*sec(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/f - (cot(e + f*x)*csc(e + f*x)*(a - b + b*sec(e + f*x)^2)^(3/2))/(2*f)]
    @test_int [csc(e + f*x)^5*(a + b*tan(e + f*x)^2)^(3/2), x, 9, (-3*(a^2 + 6*a*b + b^2)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(8*sqrt(a)*f) + (3*sqrt(b)*(a + b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*f) + (3*(a + 3*b)*sec(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(8*f) - (3*(a + b)*csc(e + f*x)^2*sec(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(8*f) - (cot(e + f*x)*csc(e + f*x)^3*(a - b + b*sec(e + f*x)^2)^(3/2))/(4*f)]

    @test_int [sin(e + f*x)^4*(a + b*tan(e + f*x)^2)^(3/2), x, 9, (3*(a^2 - 8*a*b + 8*b^2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(8*sqrt(a - b)*f) + (3*(a - 2*b)*sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*f) - (3*(a - 4*b)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(8*f) + (3*(a - 2*b)*sin(e + f*x)^2*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(8*f) - (cos(e + f*x)*sin(e + f*x)^3*(a + b*tan(e + f*x)^2)^(3/2))/(4*f)]
    @test_int [sin(e + f*x)^2*(a + b*tan(e + f*x)^2)^(3/2), x, 8, ((a - 4*b)*sqrt(a - b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*f) + ((3*a - 4*b)*sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*f) + (b*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/f - (cos(e + f*x)*sin(e + f*x)*(a + b*tan(e + f*x)^2)^(3/2))/(2*f)]
    @test_int [sin(e + f*x)^0*(a + b*tan(e + f*x)^2)^(3/2), x, 7, ((a - b)^(3/2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f + ((3*a - 2*b)*sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*f) + (b*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*f)]
    @test_int [csc(e + f*x)^2*(a + b*tan(e + f*x)^2)^(3/2), x, 5, (3*a*sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*f) + (3*b*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*f) - (cot(e + f*x)*(a + b*tan(e + f*x)^2)^(3/2))/f]
    @test_int [csc(e + f*x)^4*(a + b*tan(e + f*x)^2)^(3/2), x, 6, (sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*f) + (b*(3*a + 2*b)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*a*f) - ((3*a + 2*b)*cot(e + f*x)*(a + b*tan(e + f*x)^2)^(3/2))/(3*a*f) - (cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^(5/2))/(3*a*f)]
    @test_int [csc(e + f*x)^6*(a + b*tan(e + f*x)^2)^(3/2), x, 7, (sqrt(b)*(3*a + 4*b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*f) + (b*(3*a + 4*b)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*a*f) - ((3*a + 4*b)*cot(e + f*x)*(a + b*tan(e + f*x)^2)^(3/2))/(3*a*f) - (2*cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^(5/2))/(3*a*f) - (cot(e + f*x)^5*(a + b*tan(e + f*x)^2)^(5/2))/(5*a*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(e + f*x)^5/sqrt(a + b*tan(e + f*x)^2), x, 4, -((15*a^2 - 10*a*b + 3*b^2)*cos(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(15*(a - b)^3*f) + (2*(5*a - 3*b)*cos(e + f*x)^3*sqrt(a - b + b*sec(e + f*x)^2))/(15*(a - b)^2*f) - (cos(e + f*x)^5*sqrt(a - b + b*sec(e + f*x)^2))/(5*(a - b)*f)]
    @test_int [sin(e + f*x)^3/sqrt(a + b*tan(e + f*x)^2), x, 3, -((3*a - b)*cos(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(3*(a - b)^2*f) + (cos(e + f*x)^3*sqrt(a - b + b*sec(e + f*x)^2))/(3*(a - b)*f)]
    @test_int [sin(e + f*x)^1/sqrt(a + b*tan(e + f*x)^2), x, 2, -((cos(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/((a - b)*f))]
    @test_int [csc(e + f*x)^1/sqrt(a + b*tan(e + f*x)^2), x, 3, -(atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2))/(sqrt(a)*f))]
    @test_int [csc(e + f*x)^3/sqrt(a + b*tan(e + f*x)^2), x, 5, -((a - b)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*a^(3/2)*f) - (cot(e + f*x)*csc(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(2*a*f)]
    @test_int [csc(e + f*x)^5/sqrt(a + b*tan(e + f*x)^2), x, 6, (-3*(a - b)^2*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(8*a^(5/2)*f) - ((5*a - 3*b)*cot(e + f*x)*csc(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(8*a^2*f) - (cot(e + f*x)^3*csc(e + f*x)*sqrt(a - b + b*sec(e + f*x)^2))/(4*a*f)]

    @test_int [sin(e + f*x)^4/sqrt(a + b*tan(e + f*x)^2), x, 6, (3*a^2*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(8*(a - b)^(5/2)*f) - ((5*a - 2*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(8*(a - b)^2*f) + (cos(e + f*x)^3*sin(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(4*(a - b)*f)]
    @test_int [sin(e + f*x)^2/sqrt(a + b*tan(e + f*x)^2), x, 5, (a*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*(a - b)^(3/2)*f) - (cos(e + f*x)*sin(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*(a - b)*f)]
    @test_int [sin(e + f*x)^0/sqrt(a + b*tan(e + f*x)^2), x, 3, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(sqrt(a - b)*f)]
    @test_int [csc(e + f*x)^2/sqrt(a + b*tan(e + f*x)^2), x, 2, -((cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(a*f))]
    @test_int [csc(e + f*x)^4/sqrt(a + b*tan(e + f*x)^2), x, 3, -((3*a - 2*b)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(3*a^2*f) - (cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(3*a*f)]
    @test_int [csc(e + f*x)^6/sqrt(a + b*tan(e + f*x)^2), x, 4, -((15*a^2 - 20*a*b + 8*b^2)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(15*a^3*f) - (2*(5*a - 2*b)*cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(15*a^2*f) - (cot(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2))/(5*a*f)]


    @test_int [sin(e + f*x)^5/(a + b*tan(e + f*x)^2)^(3/2), x, 5, -((15*a^2 + 10*a*b - b^2)*cos(e + f*x))/(15*(a - b)^3*f*sqrt(a - b + b*sec(e + f*x)^2)) + (2*(5*a - 2*b)*cos(e + f*x)^3)/(15*(a - b)^2*f*sqrt(a - b + b*sec(e + f*x)^2)) - cos(e + f*x)^5/(5*(a - b)*f*sqrt(a - b + b*sec(e + f*x)^2)) - (2*b*(15*a^2 + 10*a*b - b^2)*sec(e + f*x))/(15*(a - b)^4*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^3/(a + b*tan(e + f*x)^2)^(3/2), x, 4, -((3*a + b)*cos(e + f*x))/(3*(a - b)^2*f*sqrt(a - b + b*sec(e + f*x)^2)) + cos(e + f*x)^3/(3*(a - b)*f*sqrt(a - b + b*sec(e + f*x)^2)) - (2*b*(3*a + b)*sec(e + f*x))/(3*(a - b)^3*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^1/(a + b*tan(e + f*x)^2)^(3/2), x, 3, -(cos(e + f*x)/((a - b)*f*sqrt(a - b + b*sec(e + f*x)^2))) - (2*b*sec(e + f*x))/((a - b)^2*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^1/(a + b*tan(e + f*x)^2)^(3/2), x, 4, -(atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2))/(a^(3/2)*f)) - (b*sec(e + f*x))/(a*(a - b)*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^3/(a + b*tan(e + f*x)^2)^(3/2), x, 6, -((a - 3*b)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*a^(5/2)*f) - (cot(e + f*x)*csc(e + f*x))/(2*a*f*sqrt(a - b + b*sec(e + f*x)^2)) - (3*b*sec(e + f*x))/(2*a^2*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^5/(a + b*tan(e + f*x)^2)^(3/2), x, 7, (-3*(a - 5*b)*(a - b)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(8*a^(7/2)*f) - (5*(a - b)*cot(e + f*x)*csc(e + f*x))/(8*a^2*f*sqrt(a - b + b*sec(e + f*x)^2)) - (cot(e + f*x)^3*csc(e + f*x))/(4*a*f*sqrt(a - b + b*sec(e + f*x)^2)) - ((13*a - 15*b)*b*sec(e + f*x))/(8*a^3*f*sqrt(a - b + b*sec(e + f*x)^2))]

    @test_int [sin(e + f*x)^4/(a + b*tan(e + f*x)^2)^(3/2), x, 7, (3*a*(a + 4*b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(8*(a - b)^(7/2)*f) - (5*a*cos(e + f*x)*sin(e + f*x))/(8*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2)) + (cos(e + f*x)^3*sin(e + f*x))/(4*(a - b)*f*sqrt(a + b*tan(e + f*x)^2)) - (b*(13*a + 2*b)*tan(e + f*x))/(8*(a - b)^3*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*tan(e + f*x)^2)^(3/2), x, 6, ((a + 2*b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*(a - b)^(5/2)*f) - (cos(e + f*x)*sin(e + f*x))/(2*(a - b)*f*sqrt(a + b*tan(e + f*x)^2)) - (3*b*tan(e + f*x))/(2*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*tan(e + f*x)^2)^(3/2), x, 4, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(3/2)*f) - (b*tan(e + f*x))/(a*(a - b)*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/(a + b*tan(e + f*x)^2)^(3/2), x, 3, -(cot(e + f*x)/(a*f*sqrt(a + b*tan(e + f*x)^2))) - (2*b*tan(e + f*x))/(a^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^4/(a + b*tan(e + f*x)^2)^(3/2), x, 4, -((3*a - 4*b)*cot(e + f*x))/(3*a^2*f*sqrt(a + b*tan(e + f*x)^2)) - cot(e + f*x)^3/(3*a*f*sqrt(a + b*tan(e + f*x)^2)) - (2*(3*a - 4*b)*b*tan(e + f*x))/(3*a^3*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^6/(a + b*tan(e + f*x)^2)^(3/2), x, 5, -((15*a^2 - 40*a*b + 24*b^2)*cot(e + f*x))/(15*a^3*f*sqrt(a + b*tan(e + f*x)^2)) - (2*(5*a - 3*b)*cot(e + f*x)^3)/(15*a^2*f*sqrt(a + b*tan(e + f*x)^2)) - cot(e + f*x)^5/(5*a*f*sqrt(a + b*tan(e + f*x)^2)) - (2*b*(15*a^2 - 40*a*b + 24*b^2)*tan(e + f*x))/(15*a^4*f*sqrt(a + b*tan(e + f*x)^2))]


    @test_int [sin(e + f*x)^5/(a + b*tan(e + f*x)^2)^(5/2), x, 6, -((5*a^2 + 10*a*b + b^2)*cos(e + f*x))/(5*(a - b)^3*f*(a - b + b*sec(e + f*x)^2)^(3/2)) + (2*(5*a - b)*cos(e + f*x)^3)/(15*(a - b)^2*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - cos(e + f*x)^5/(5*(a - b)*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - (4*b*(5*a^2 + 10*a*b + b^2)*sec(e + f*x))/(15*(a - b)^4*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - (8*b*(5*a^2 + 10*a*b + b^2)*sec(e + f*x))/(15*(a - b)^5*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^3/(a + b*tan(e + f*x)^2)^(5/2), x, 5, -(((a + b)*cos(e + f*x))/((a - b)^2*f*(a - b + b*sec(e + f*x)^2)^(3/2))) + cos(e + f*x)^3/(3*(a - b)*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - (4*b*(a + b)*sec(e + f*x))/(3*(a - b)^3*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - (8*b*(a + b)*sec(e + f*x))/(3*(a - b)^4*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^1/(a + b*tan(e + f*x)^2)^(5/2), x, 4, -(cos(e + f*x)/((a - b)*f*(a - b + b*sec(e + f*x)^2)^(3/2))) - (4*b*sec(e + f*x))/(3*(a - b)^2*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - (8*b*sec(e + f*x))/(3*(a - b)^3*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^1/(a + b*tan(e + f*x)^2)^(5/2), x, 6, -(atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2))/(a^(5/2)*f)) - (b*sec(e + f*x))/(3*a*(a - b)*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - ((5*a - 3*b)*b*sec(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^3/(a + b*tan(e + f*x)^2)^(5/2), x, 7, -((a - 5*b)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(2*a^(7/2)*f) - (cot(e + f*x)*csc(e + f*x))/(2*a*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - (5*b*sec(e + f*x))/(6*a^2*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - ((13*a - 15*b)*b*sec(e + f*x))/(6*a^3*(a - b)*f*sqrt(a - b + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^5/(a + b*tan(e + f*x)^2)^(5/2), x, 8, -((3*a^2 - 30*a*b + 35*b^2)*atanh((sqrt(a)*sec(e + f*x))/sqrt(a - b + b*sec(e + f*x)^2)))/(8*a^(9/2)*f) - ((5*a - 7*b)*cot(e + f*x)*csc(e + f*x))/(8*a^2*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - (cot(e + f*x)^3*csc(e + f*x))/(4*a*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - ((23*a - 35*b)*b*sec(e + f*x))/(24*a^3*f*(a - b + b*sec(e + f*x)^2)^(3/2)) - (5*(11*a - 21*b)*b*sec(e + f*x))/(24*a^4*f*sqrt(a - b + b*sec(e + f*x)^2))]

    @test_int [sin(e + f*x)^4/(a + b*tan(e + f*x)^2)^(5/2), x, 8, ((3*a^2 + 24*a*b + 8*b^2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(8*(a - b)^(9/2)*f) - ((5*a + 2*b)*cos(e + f*x)*sin(e + f*x))/(8*(a - b)^2*f*(a + b*tan(e + f*x)^2)^(3/2)) + (cos(e + f*x)^3*sin(e + f*x))/(4*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) - (b*(23*a + 12*b)*tan(e + f*x))/(24*(a - b)^3*f*(a + b*tan(e + f*x)^2)^(3/2)) - (5*b*(11*a + 10*b)*tan(e + f*x))/(24*(a - b)^4*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*tan(e + f*x)^2)^(5/2), x, 7, ((a + 4*b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*(a - b)^(7/2)*f) - (cos(e + f*x)*sin(e + f*x))/(2*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) - (5*b*tan(e + f*x))/(6*(a - b)^2*f*(a + b*tan(e + f*x)^2)^(3/2)) - (b*(13*a + 2*b)*tan(e + f*x))/(6*a*(a - b)^3*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*tan(e + f*x)^2)^(5/2), x, 6, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(5/2)*f) - (b*tan(e + f*x))/(3*a*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) - ((5*a - 2*b)*b*tan(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/(a + b*tan(e + f*x)^2)^(5/2), x, 4, -(cot(e + f*x)/(a*f*(a + b*tan(e + f*x)^2)^(3/2))) - (4*b*tan(e + f*x))/(3*a^2*f*(a + b*tan(e + f*x)^2)^(3/2)) - (8*b*tan(e + f*x))/(3*a^3*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^4/(a + b*tan(e + f*x)^2)^(5/2), x, 5, -(((a - 2*b)*cot(e + f*x))/(a^2*f*(a + b*tan(e + f*x)^2)^(3/2))) - cot(e + f*x)^3/(3*a*f*(a + b*tan(e + f*x)^2)^(3/2)) - (4*(a - 2*b)*b*tan(e + f*x))/(3*a^3*f*(a + b*tan(e + f*x)^2)^(3/2)) - (8*(a - 2*b)*b*tan(e + f*x))/(3*a^4*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^6/(a + b*tan(e + f*x)^2)^(5/2), x, 6, -((5*a^2 - 20*a*b + 16*b^2)*cot(e + f*x))/(5*a^3*f*(a + b*tan(e + f*x)^2)^(3/2)) - (2*(5*a - 4*b)*cot(e + f*x)^3)/(15*a^2*f*(a + b*tan(e + f*x)^2)^(3/2)) - cot(e + f*x)^5/(5*a*f*(a + b*tan(e + f*x)^2)^(3/2)) - (4*b*(5*a^2 - 20*a*b + 16*b^2)*tan(e + f*x))/(15*a^4*f*(a + b*tan(e + f*x)^2)^(3/2)) - (8*b*(5*a^2 - 20*a*b + 16*b^2)*tan(e + f*x))/(15*a^5*f*sqrt(a + b*tan(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*tan(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*sin(e + f*x))^m*(b*tan(e + f*x)^2)^p, x, 3, ((cos(e + f*x)^2)^(1/2 + p)*Hypergeometric2F1((1/2)*(1 + 2*p), (1/2)*(1 + m + 2*p), (1/2)*(3 + m + 2*p), sin(e + f*x)^2)*(d*sin(e + f*x))^m*tan(e + f*x)*(b*tan(e + f*x)^2)^p)/(f*(1 + m + 2*p))]


    @test_int [(d*sin(e + f*x))^m*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1((1 + m)/2, (2 + m)/2, -p, (3 + m)/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*(sec(e + f*x)^2)^(m/2)*(d*sin(e + f*x))^m*tan(e + f*x)*(a + b*tan(e + f*x)^2)^p)/(f*(1 + m)*(1 + (b*tan(e + f*x)^2)/a)^p)]


    @test_int [sin(e + f*x)^5*(a + b*tan(e + f*x)^2)^p, x, 5, ((10*a - 7*b - 2*b*p)*cos(e + f*x)^3*(a - b + b*sec(e + f*x)^2)^(1 + p))/(15*(a - b)^2*f) - (cos(e + f*x)^5*(a - b + b*sec(e + f*x)^2)^(1 + p))/(5*(a - b)*f) - ((15*a^2 - 20*a*b*(1 + p) + 4*b^2*(2 + 3*p + p^2))*cos(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*sec(e + f*x)^2)/(a - b)))*(a - b + b*sec(e + f*x)^2)^p)/(15*(a - b)^2*f*(1 + (b*sec(e + f*x)^2)/(a - b))^p)]
    @test_int [sin(e + f*x)^3*(a + b*tan(e + f*x)^2)^p, x, 4, (cos(e + f*x)^3*(a - b + b*sec(e + f*x)^2)^(1 + p))/(3*(a - b)*f) - ((3*a - 2*b*(1 + p))*cos(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*sec(e + f*x)^2)/(a - b)))*(a - b + b*sec(e + f*x)^2)^p)/(3*(a - b)*f*(1 + (b*sec(e + f*x)^2)/(a - b))^p)]
    @test_int [sin(e + f*x)^1*(a + b*tan(e + f*x)^2)^p, x, 3, -((cos(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*sec(e + f*x)^2)/(a - b)))*(a - b + b*sec(e + f*x)^2)^p)/(f*(1 + (b*sec(e + f*x)^2)/(a - b))^p))]
    @test_int [csc(e + f*x)^1*(a + b*tan(e + f*x)^2)^p, x, 3, -((AppellF1(1/2, 1, -p, 3/2, sec(e + f*x)^2, -((b*sec(e + f*x)^2)/(a - b)))*sec(e + f*x)*(a - b + b*sec(e + f*x)^2)^p)/(f*(1 + (b*sec(e + f*x)^2)/(a - b))^p))]
    @test_int [csc(e + f*x)^3*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1(3/2, 2, -p, 5/2, sec(e + f*x)^2, -((b*sec(e + f*x)^2)/(a - b)))*sec(e + f*x)^3*(a - b + b*sec(e + f*x)^2)^p)/(3*f*(1 + (b*sec(e + f*x)^2)/(a - b))^p)]

    @test_int [sin(e + f*x)^2*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1(3/2, 2, -p, 5/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*tan(e + f*x)^3*(a + b*tan(e + f*x)^2)^p)/(3*f*(1 + (b*tan(e + f*x)^2)/a)^p)]
    @test_int [sin(e + f*x)^0*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 1, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*tan(e + f*x)*(a + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/a)^p)]
    @test_int [csc(e + f*x)^2*(a + b*tan(e + f*x)^2)^p, x, 3, -((cot(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*tan(e + f*x)^2)/a))*(a + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/a)^p))]
    @test_int [csc(e + f*x)^4*(a + b*tan(e + f*x)^2)^p, x, 4, -(cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^(1 + p))/(3*a*f) - ((3*a - b*(1 - 2*p))*cot(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*tan(e + f*x)^2)/a))*(a + b*tan(e + f*x)^2)^p)/(3*a*f*(1 + (b*tan(e + f*x)^2)/a)^p)]
    @test_int [csc(e + f*x)^6*(a + b*tan(e + f*x)^2)^p, x, 5, -((10*a - b*(3 - 2*p))*cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^(1 + p))/(15*a^2*f) - (cot(e + f*x)^5*(a + b*tan(e + f*x)^2)^(1 + p))/(5*a*f) - ((15*a^2 - b*(10*a - b*(3 - 2*p))*(1 - 2*p))*cot(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*tan(e + f*x)^2)/a))*(a + b*tan(e + f*x)^2)^p)/(15*a^2*f*(1 + (b*tan(e + f*x)^2)/a)^p)]


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*tan(e+f*x)^3)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*tan(e+f*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(b*(c*tan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*sin(e + f*x))^m*(b*(c*tan(e + f*x))^n)^p, x, 3, ((cos(e + f*x)^2)^((1/2)*(1 + n*p))*Hypergeometric2F1((1/2)*(1 + n*p), (1/2)*(1 + m + n*p), (1/2)*(3 + m + n*p), sin(e + f*x)^2)*(d*sin(e + f*x))^m*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + m + n*p))]


    @test_int [sin(e + f*x)^2*(b*(c*tan(e + f*x))^n)^p, x, 3, (Hypergeometric2F1(2, (1/2)*(3 + n*p), (1/2)*(5 + n*p), -tan(e + f*x)^2)*tan(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p)/(f*(3 + n*p))]
    @test_int [sin(e + f*x)^0*(b*(c*tan(e + f*x))^n)^p, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + n*p), (1/2)*(3 + n*p), -tan(e + f*x)^2)*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]
    @test_int [csc(e + f*x)^2*(b*(c*tan(e + f*x))^n)^p, x, 3, -((cot(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 - n*p)))]
    @test_int [csc(e + f*x)^4*(b*(c*tan(e + f*x))^n)^p, x, 4, -((cot(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 - n*p))) - (cot(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p)/(f*(3 - n*p))]
    @test_int [csc(e + f*x)^6*(b*(c*tan(e + f*x))^n)^p, x, 4, -((cot(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 - n*p))) - (2*cot(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p)/(f*(3 - n*p)) - (cot(e + f*x)^5*(b*(c*tan(e + f*x))^n)^p)/(f*(5 - n*p))]

    @test_int [sin(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p, x, 3, ((cos(e + f*x)^2)^((1/2)*(1 + n*p))*Hypergeometric2F1((1/2)*(1 + n*p), (1/2)*(4 + n*p), (1/2)*(6 + n*p), sin(e + f*x)^2)*sin(e + f*x)^3*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(4 + n*p))]
    @test_int [sin(e + f*x)^1*(b*(c*tan(e + f*x))^n)^p, x, 3, ((cos(e + f*x)^2)^((1/2)*(1 + n*p))*Hypergeometric2F1((1/2)*(1 + n*p), (1/2)*(2 + n*p), (1/2)*(4 + n*p), sin(e + f*x)^2)*sin(e + f*x)*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(2 + n*p))]
    @test_int [csc(e + f*x)^1*(b*(c*tan(e + f*x))^n)^p, x, 3, ((cos(e + f*x)^2)^((1/2)*(1 + n*p))*Hypergeometric2F1((n*p)/2, (1/2)*(1 + n*p), (1/2)*(2 + n*p), sin(e + f*x)^2)*sec(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*n*p)]
    @test_int [csc(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p, x, 3, -(((cos(e + f*x)^2)^((1/2)*(1 + n*p))*csc(e + f*x)^2*Hypergeometric2F1((1/2)*(-2 + n*p), (1/2)*(1 + n*p), (n*p)/2, sin(e + f*x)^2)*sec(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(2 - n*p)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*sin(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*sin(e + f*x))^m*(a + b*tan(e + f*x)^n)^p, x, 0, Unintegrable((d*sin(e + f*x))^m*(a + b*tan(e + f*x)^n)^p, x)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*tan(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*tan(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*cos(e + f*x))^m*(b*tan(e + f*x)^2)^p, x, 3, ((d*cos(e + f*x))^m*(cos(e + f*x)^2)^((1/2)*(1 - m + 2*p))*Hypergeometric2F1((1/2)*(1 + 2*p), (1/2)*(1 - m + 2*p), (1/2)*(3 + 2*p), sin(e + f*x)^2)*tan(e + f*x)*(b*tan(e + f*x)^2)^p)/(f*(1 + 2*p))]


    @test_int [(d*cos(e + f*x))^m*(a + b*tan(e + f*x)^2)^p, x, 4, (AppellF1(1/2, (2 + m)/2, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*(d*cos(e + f*x))^m*(sec(e + f*x)^2)^(m/2)*tan(e + f*x)*(a + b*tan(e + f*x)^2)^p)/((1 + (b*tan(e + f*x)^2)/a)^p*f)]


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*tan(e+f*x)^3)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*tan(e+f*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(b*(cTan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*cos(e + f*x))^m*(b*(c*tan(e + f*x))^n)^p, x, 3, ((d*cos(e + f*x))^m*(cos(e + f*x)^2)^((1/2)*(1 - m + n*p))*Hypergeometric2F1((1/2)*(1 + n*p), (1/2)*(1 - m + n*p), (1/2)*(3 + n*p), sin(e + f*x)^2)*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cos(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*cos(e + f*x))^m*(a + b*(c*tan(e + f*x))^n)^p, x, 1, (d*cos(e + f*x))^m*(sec(e + f*x)/d)^m*Unintegrable((a + b*(c*tan(e + f*x))^n)^p/(sec(e + f*x)/d)^m, x)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*tan(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*tan(e+f*x)^2)^p*when*a-b=0=#


    @test_int [(a + a*tan(c + d*x)^2)^4, x, 4, (a^4*tan(c + d*x))/d + (a^4*tan(c + d*x)^3)/d + (3*a^4*tan(c + d*x)^5)/(5*d) + (a^4*tan(c + d*x)^7)/(7*d)]
    @test_int [(a + a*tan(c + d*x)^2)^3, x, 4, (a^3*tan(c + d*x))/d + (2*a^3*tan(c + d*x)^3)/(3*d) + (a^3*tan(c + d*x)^5)/(5*d)]
    @test_int [(a + a*tan(c + d*x)^2)^2, x, 4, (a^2*tan(c + d*x))/d + (a^2*tan(c + d*x)^3)/(3*d)]
    @test_int [1/(a + a*tan(c + d*x)^2)^1, x, 4, x/(2*a) + (cos(c + d*x)*sin(c + d*x))/(2*a*d)]
    @test_int [1/(a + a*tan(c + d*x)^2)^2, x, 5, (3*x)/(8*a^2) + (3*cos(c + d*x)*sin(c + d*x))/(8*a^2*d) + (cos(c + d*x)^3*sin(c + d*x))/(4*a^2*d)]
    @test_int [1/(a + a*tan(c + d*x)^2)^3, x, 6, (5*x)/(16*a^3) + (5*cos(c + d*x)*sin(c + d*x))/(16*a^3*d) + (5*cos(c + d*x)^3*sin(c + d*x))/(24*a^3*d) + (cos(c + d*x)^5*sin(c + d*x))/(6*a^3*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*tan(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tan(e + f*x)^5*(a + b*tan(e + f*x)^2), x, 4, -(((a - b)*log(cos(e + f*x)))/f) - ((a - b)*tan(e + f*x)^2)/(2*f) + ((a - b)*tan(e + f*x)^4)/(4*f) + (b*tan(e + f*x)^6)/(6*f)]
    @test_int [tan(e + f*x)^3*(a + b*tan(e + f*x)^2), x, 3, ((a - b)*log(cos(e + f*x)))/f + ((a - b)*tan(e + f*x)^2)/(2*f) + (b*tan(e + f*x)^4)/(4*f)]
    @test_int [tan(e + f*x)^1*(a + b*tan(e + f*x)^2), x, 2, -(((a - b)*log(cos(e + f*x)))/f) + (b*tan(e + f*x)^2)/(2*f)]
    @test_int [cot(e + f*x)^1*(a + b*tan(e + f*x)^2), x, 3, -((b*log(cos(e + f*x)))/f) + (a*log(sin(e + f*x)))/f]
    @test_int [cot(e + f*x)^3*(a + b*tan(e + f*x)^2), x, 3, -(a*cot(e + f*x)^2)/(2*f) - ((a - b)*log(sin(e + f*x)))/f]
    @test_int [cot(e + f*x)^5*(a + b*tan(e + f*x)^2), x, 4, ((a - b)*cot(e + f*x)^2)/(2*f) - (a*cot(e + f*x)^4)/(4*f) + ((a - b)*log(sin(e + f*x)))/f]

    @test_int [tan(e + f*x)^6*(a + b*tan(e + f*x)^2), x, 5, -((a - b)*x) + ((a - b)*tan(e + f*x))/f - ((a - b)*tan(e + f*x)^3)/(3*f) + ((a - b)*tan(e + f*x)^5)/(5*f) + (b*tan(e + f*x)^7)/(7*f)]
    @test_int [tan(e + f*x)^4*(a + b*tan(e + f*x)^2), x, 4, (a - b)*x - ((a - b)*tan(e + f*x))/f + ((a - b)*tan(e + f*x)^3)/(3*f) + (b*tan(e + f*x)^5)/(5*f)]
    @test_int [tan(e + f*x)^2*(a + b*tan(e + f*x)^2), x, 3, -((a - b)*x) + ((a - b)*tan(e + f*x))/f + (b*tan(e + f*x)^3)/(3*f)]
    @test_int [tan(e + f*x)^0*(a + b*tan(e + f*x)^2), x, 3, a*x - b*x + (b*tan(e + f*x))/f]
    @test_int [cot(e + f*x)^2*(a + b*tan(e + f*x)^2), x, 2, -((a - b)*x) - (a*cot(e + f*x))/f]
    @test_int [cot(e + f*x)^4*(a + b*tan(e + f*x)^2), x, 4, (a - b)*x + ((a - b)*cot(e + f*x))/f - (a*cot(e + f*x)^3)/(3*f)]
    @test_int [cot(e + f*x)^6*(a + b*tan(e + f*x)^2), x, 5, -((a - b)*x) - ((a - b)*cot(e + f*x))/f + ((a - b)*cot(e + f*x)^3)/(3*f) - (a*cot(e + f*x)^5)/(5*f)]


    @test_int [tan(e + f*x)^5*(a + b*tan(e + f*x)^2)^2, x, 4, -(((a - b)^2*log(cos(e + f*x)))/f) - ((a - b)^2*tan(e + f*x)^2)/(2*f) + ((a - b)^2*tan(e + f*x)^4)/(4*f) + ((2*a - b)*b*tan(e + f*x)^6)/(6*f) + (b^2*tan(e + f*x)^8)/(8*f)]
    @test_int [tan(e + f*x)^3*(a + b*tan(e + f*x)^2)^2, x, 4, ((a - b)^2*log(cos(e + f*x)))/f + ((a - b)^2*tan(e + f*x)^2)/(2*f) + ((2*a - b)*b*tan(e + f*x)^4)/(4*f) + (b^2*tan(e + f*x)^6)/(6*f)]
    @test_int [tan(e + f*x)^1*(a + b*tan(e + f*x)^2)^2, x, 4, -(((a - b)^2*log(cos(e + f*x)))/f) + ((a - b)*b*tan(e + f*x)^2)/(2*f) + (a + b*tan(e + f*x)^2)^2/(4*f)]
    @test_int [cot(e + f*x)^1*(a + b*tan(e + f*x)^2)^2, x, 4, ((a - b)^2*log(cos(e + f*x)))/f + (a^2*log(tan(e + f*x)))/f + (b^2*tan(e + f*x)^2)/(2*f)]
    @test_int [cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^2, x, 4, -(a^2*cot(e + f*x)^2)/(2*f) - ((a - b)^2*log(cos(e + f*x)))/f - (a*(a - 2*b)*log(tan(e + f*x)))/f]
    @test_int [cot(e + f*x)^5*(a + b*tan(e + f*x)^2)^2, x, 4, (a*(a - 2*b)*cot(e + f*x)^2)/(2*f) - (a^2*cot(e + f*x)^4)/(4*f) + ((a - b)^2*log(cos(e + f*x)))/f + ((a - b)^2*log(tan(e + f*x)))/f]

    @test_int [tan(e + f*x)^6*(a + b*tan(e + f*x)^2)^2, x, 4, -((a - b)^2*x) + ((a - b)^2*tan(e + f*x))/f - ((a - b)^2*tan(e + f*x)^3)/(3*f) + ((a - b)^2*tan(e + f*x)^5)/(5*f) + ((2*a - b)*b*tan(e + f*x)^7)/(7*f) + (b^2*tan(e + f*x)^9)/(9*f)]
    @test_int [tan(e + f*x)^4*(a + b*tan(e + f*x)^2)^2, x, 4, (a - b)^2*x - ((a - b)^2*tan(e + f*x))/f + ((a - b)^2*tan(e + f*x)^3)/(3*f) + ((2*a - b)*b*tan(e + f*x)^5)/(5*f) + (b^2*tan(e + f*x)^7)/(7*f)]
    @test_int [tan(e + f*x)^2*(a + b*tan(e + f*x)^2)^2, x, 4, -((a - b)^2*x) + ((a - b)^2*tan(e + f*x))/f + ((2*a - b)*b*tan(e + f*x)^3)/(3*f) + (b^2*tan(e + f*x)^5)/(5*f)]
    @test_int [tan(e + f*x)^0*(a + b*tan(e + f*x)^2)^2, x, 4, (a - b)^2*x + ((2*a - b)*b*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [cot(e + f*x)^2*(a + b*tan(e + f*x)^2)^2, x, 4, -((a - b)^2*x) - (a^2*cot(e + f*x))/f + (b^2*tan(e + f*x))/f]
    @test_int [cot(e + f*x)^4*(a + b*tan(e + f*x)^2)^2, x, 4, (a - b)^2*x + (a*(a - 2*b)*cot(e + f*x))/f - (a^2*cot(e + f*x)^3)/(3*f)]
    @test_int [cot(e + f*x)^6*(a + b*tan(e + f*x)^2)^2, x, 4, -((a - b)^2*x) - ((a - b)^2*cot(e + f*x))/f + (a*(a - 2*b)*cot(e + f*x)^3)/(3*f) - (a^2*cot(e + f*x)^5)/(5*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(e + f*x)^5/(a + b*tan(e + f*x)^2), x, 4, -(log(cos(e + f*x))/((a - b)*f)) - (a^2*log(a + b*tan(e + f*x)^2))/(2*(a - b)*b^2*f) + tan(e + f*x)^2/(2*b*f)]
    @test_int [tan(e + f*x)^3/(a + b*tan(e + f*x)^2), x, 4, log(cos(e + f*x))/((a - b)*f) + (a*log(a + b*tan(e + f*x)^2))/(2*(a - b)*b*f)]
    @test_int [tan(e + f*x)^1/(a + b*tan(e + f*x)^2), x, 5, -log(a*cos(e + f*x)^2 + b*sin(e + f*x)^2)/(2*(a - b)*f)]
    @test_int [cot(e + f*x)^1/(a + b*tan(e + f*x)^2), x, 4, log(cos(e + f*x))/((a - b)*f) + log(tan(e + f*x))/(a*f) + (b*log(a + b*tan(e + f*x)^2))/(2*a*(a - b)*f)]
    @test_int [cot(e + f*x)^3/(a + b*tan(e + f*x)^2), x, 4, -cot(e + f*x)^2/(2*a*f) - log(cos(e + f*x))/((a - b)*f) - ((a + b)*log(tan(e + f*x)))/(a^2*f) - (b^2*log(a + b*tan(e + f*x)^2))/(2*a^2*(a - b)*f)]
    @test_int [cot(e + f*x)^5/(a + b*tan(e + f*x)^2), x, 4, ((a + b)*cot(e + f*x)^2)/(2*a^2*f) - cot(e + f*x)^4/(4*a*f) + log(cos(e + f*x))/((a - b)*f) + ((a^2 + a*b + b^2)*log(tan(e + f*x)))/(a^3*f) + (b^3*log(a + b*tan(e + f*x)^2))/(2*a^3*(a - b)*f)]

    @test_int [tan(e + f*x)^6/(a + b*tan(e + f*x)^2), x, 6, -(x/(a - b)) + (a^(5/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/((a - b)*b^(5/2)*f) - ((a + b)*tan(e + f*x))/(b^2*f) + tan(e + f*x)^3/(3*b*f)]
    @test_int [tan(e + f*x)^4/(a + b*tan(e + f*x)^2), x, 5, x/(a - b) - (a^(3/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/((a - b)*b^(3/2)*f) + tan(e + f*x)/(b*f)]
    @test_int [tan(e + f*x)^2/(a + b*tan(e + f*x)^2), x, 4, -(x/(a - b)) + (sqrt(a)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/((a - b)*sqrt(b)*f)]
    @test_int [tan(e + f*x)^0/(a + b*tan(e + f*x)^2), x, 3, x/(a - b) - (sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(sqrt(a)*(a - b)*f)]
    @test_int [cot(e + f*x)^2/(a + b*tan(e + f*x)^2), x, 5, -(x/(a - b)) + (b^(3/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(a^(3/2)*(a - b)*f) - cot(e + f*x)/(a*f)]
    @test_int [cot(e + f*x)^4/(a + b*tan(e + f*x)^2), x, 6, x/(a - b) - (b^(5/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(a^(5/2)*(a - b)*f) + ((a + b)*cot(e + f*x))/(a^2*f) - cot(e + f*x)^3/(3*a*f)]
    @test_int [cot(e + f*x)^6/(a + b*tan(e + f*x)^2), x, 7, -(x/(a - b)) + (b^(7/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(a^(7/2)*(a - b)*f) - ((a^2 + a*b + b^2)*cot(e + f*x))/(a^3*f) + ((a + b)*cot(e + f*x)^3)/(3*a^2*f) - cot(e + f*x)^5/(5*a*f)]


    @test_int [tan(e + f*x)^5/(a + b*tan(e + f*x)^2)^2, x, 4, -(log(cos(e + f*x))/((a - b)^2*f)) + (a*(a - 2*b)*log(a + b*tan(e + f*x)^2))/(2*(a - b)^2*b^2*f) + a^2/(2*(a - b)*b^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^3/(a + b*tan(e + f*x)^2)^2, x, 4, log(a*cos(e + f*x)^2 + b*sin(e + f*x)^2)/(2*(a - b)^2*f) - a/(2*(a - b)*b*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^1/(a + b*tan(e + f*x)^2)^2, x, 4, -log(a*cos(e + f*x)^2 + b*sin(e + f*x)^2)/(2*(a - b)^2*f) + 1/(2*(a - b)*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^1/(a + b*tan(e + f*x)^2)^2, x, 4, log(cos(e + f*x))/((a - b)^2*f) + log(tan(e + f*x))/(a^2*f) + ((2*a - b)*b*log(a + b*tan(e + f*x)^2))/(2*a^2*(a - b)^2*f) - b/(2*a*(a - b)*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^3/(a + b*tan(e + f*x)^2)^2, x, 4, -cot(e + f*x)^2/(2*a^2*f) - log(cos(e + f*x))/((a - b)^2*f) - ((a + 2*b)*log(tan(e + f*x)))/(a^3*f) - ((3*a - 2*b)*b^2*log(a + b*tan(e + f*x)^2))/(2*a^3*(a - b)^2*f) + b^2/(2*a^2*(a - b)*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^5/(a + b*tan(e + f*x)^2)^2, x, 4, ((a + 2*b)*cot(e + f*x)^2)/(2*a^3*f) - cot(e + f*x)^4/(4*a^2*f) + log(cos(e + f*x))/((a - b)^2*f) + ((a^2 + 2*a*b + 3*b^2)*log(tan(e + f*x)))/(a^4*f) + ((4*a - 3*b)*b^3*log(a + b*tan(e + f*x)^2))/(2*a^4*(a - b)^2*f) - b^3/(2*a^3*(a - b)*f*(a + b*tan(e + f*x)^2))]

    @test_int [tan(e + f*x)^6/(a + b*tan(e + f*x)^2)^2, x, 6, -(x/(a - b)^2) - (a^(3/2)*(3*a - 5*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*(a - b)^2*b^(5/2)*f) + ((3*a - 2*b)*tan(e + f*x))/(2*(a - b)*b^2*f) - (a*tan(e + f*x)^3)/(2*(a - b)*b*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^4/(a + b*tan(e + f*x)^2)^2, x, 5, x/(a - b)^2 + (sqrt(a)*(a - 3*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*(a - b)^2*b^(3/2)*f) - (a*tan(e + f*x))/(2*(a - b)*b*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/(a + b*tan(e + f*x)^2)^2, x, 5, -(x/(a - b)^2) + ((a + b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*sqrt(a)*(a - b)^2*sqrt(b)*f) + tan(e + f*x)/(2*(a - b)*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^0/(a + b*tan(e + f*x)^2)^2, x, 5, x/(a - b)^2 - ((3*a - b)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^2*f) - (b*tan(e + f*x))/(2*a*(a - b)*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a + b*tan(e + f*x)^2)^2, x, 6, -(x/(a - b)^2) + ((5*a - 3*b)*b^(3/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*a^(5/2)*(a - b)^2*f) - ((2*a - 3*b)*cot(e + f*x))/(2*a^2*(a - b)*f) - (b*cot(e + f*x))/(2*a*(a - b)*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^4/(a + b*tan(e + f*x)^2)^2, x, 7, x/(a - b)^2 - ((7*a - 5*b)*b^(5/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*a^(7/2)*(a - b)^2*f) + ((2*a^2 + 2*a*b - 5*b^2)*cot(e + f*x))/(2*a^3*(a - b)*f) - ((2*a - 5*b)*cot(e + f*x)^3)/(6*a^2*(a - b)*f) - (b*cot(e + f*x)^3)/(2*a*(a - b)*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^6/(a + b*tan(e + f*x)^2)^2, x, 8, -(x/(a - b)^2) + ((9*a - 7*b)*b^(7/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(2*a^(9/2)*(a - b)^2*f) - ((2*a^3 + 2*a^2*b + 2*a*b^2 - 7*b^3)*cot(e + f*x))/(2*a^4*(a - b)*f) + ((2*a^2 + 2*a*b - 7*b^2)*cot(e + f*x)^3)/(6*a^3*(a - b)*f) - ((2*a - 7*b)*cot(e + f*x)^5)/(10*a^2*(a - b)*f) - (b*cot(e + f*x)^5)/(2*a*(a - b)*f*(a + b*tan(e + f*x)^2))]


    @test_int [tan(e + f*x)^5/(a + b*tan(e + f*x)^2)^3, x, 4, -log(a*cos(e + f*x)^2 + b*sin(e + f*x)^2)/(2*(a - b)^3*f) + a^2/(4*(a - b)*b^2*f*(a + b*tan(e + f*x)^2)^2) - (a*(a - 2*b))/(2*(a - b)^2*b^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^3/(a + b*tan(e + f*x)^2)^3, x, 4, log(a*cos(e + f*x)^2 + b*sin(e + f*x)^2)/(2*(a - b)^3*f) - a/(4*(a - b)*b*f*(a + b*tan(e + f*x)^2)^2) - 1/(2*(a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^1/(a + b*tan(e + f*x)^2)^3, x, 4, -log(a*cos(e + f*x)^2 + b*sin(e + f*x)^2)/(2*(a - b)^3*f) + 1/(4*(a - b)*f*(a + b*tan(e + f*x)^2)^2) + 1/(2*(a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^1/(a + b*tan(e + f*x)^2)^3, x, 4, log(cos(e + f*x))/((a - b)^3*f) + log(tan(e + f*x))/(a^3*f) + (b*(3*a^2 - 3*a*b + b^2)*log(a + b*tan(e + f*x)^2))/(2*a^3*(a - b)^3*f) - b/(4*a*(a - b)*f*(a + b*tan(e + f*x)^2)^2) - ((2*a - b)*b)/(2*a^2*(a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^3/(a + b*tan(e + f*x)^2)^3, x, 4, -cot(e + f*x)^2/(2*a^3*f) - log(cos(e + f*x))/((a - b)^3*f) - ((a + 3*b)*log(tan(e + f*x)))/(a^4*f) - (b^2*(6*a^2 - 8*a*b + 3*b^2)*log(a + b*tan(e + f*x)^2))/(2*a^4*(a - b)^3*f) + b^2/(4*a^2*(a - b)*f*(a + b*tan(e + f*x)^2)^2) + ((3*a - 2*b)*b^2)/(2*a^3*(a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^5/(a + b*tan(e + f*x)^2)^3, x, 4, ((a + 3*b)*cot(e + f*x)^2)/(2*a^4*f) - cot(e + f*x)^4/(4*a^3*f) + log(cos(e + f*x))/((a - b)^3*f) + ((a^2 + 3*a*b + 6*b^2)*log(tan(e + f*x)))/(a^5*f) + (b^3*(10*a^2 - 15*a*b + 6*b^2)*log(a + b*tan(e + f*x)^2))/(2*a^5*(a - b)^3*f) - b^3/(4*a^3*(a - b)*f*(a + b*tan(e + f*x)^2)^2) - ((4*a - 3*b)*b^3)/(2*a^4*(a - b)^2*f*(a + b*tan(e + f*x)^2))]

    @test_int [tan(e + f*x)^6/(a + b*tan(e + f*x)^2)^3, x, 6, -(x/(a - b)^3) + (sqrt(a)*(3*a^2 - 10*a*b + 15*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*(a - b)^3*b^(5/2)*f) - (a*tan(e + f*x)^3)/(4*(a - b)*b*f*(a + b*tan(e + f*x)^2)^2) - (a*(3*a - 7*b)*tan(e + f*x))/(8*(a - b)^2*b^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^4/(a + b*tan(e + f*x)^2)^3, x, 6, x/(a - b)^3 + ((a^2 - 6*a*b - 3*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*sqrt(a)*(a - b)^3*b^(3/2)*f) - (a*tan(e + f*x))/(4*(a - b)*b*f*(a + b*tan(e + f*x)^2)^2) + ((a - 5*b)*tan(e + f*x))/(8*(a - b)^2*b*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/(a + b*tan(e + f*x)^2)^3, x, 6, -(x/(a - b)^3) + ((3*a^2 + 6*a*b - b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(3/2)*(a - b)^3*sqrt(b)*f) + tan(e + f*x)/(4*(a - b)*f*(a + b*tan(e + f*x)^2)^2) + ((3*a + b)*tan(e + f*x))/(8*a*(a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^0/(a + b*tan(e + f*x)^2)^3, x, 6, x/(a - b)^3 - (sqrt(b)*(15*a^2 - 10*a*b + 3*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^3*f) - (b*tan(e + f*x))/(4*a*(a - b)*f*(a + b*tan(e + f*x)^2)^2) - ((7*a - 3*b)*b*tan(e + f*x))/(8*a^2*(a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a + b*tan(e + f*x)^2)^3, x, 7, -(x/(a - b)^3) + (b^(3/2)*(35*a^2 - 42*a*b + 15*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(7/2)*(a - b)^3*f) - ((8*a^2 - 27*a*b + 15*b^2)*cot(e + f*x))/(8*a^3*(a - b)^2*f) - (b*cot(e + f*x))/(4*a*(a - b)*f*(a + b*tan(e + f*x)^2)^2) - ((9*a - 5*b)*b*cot(e + f*x))/(8*a^2*(a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^4/(a + b*tan(e + f*x)^2)^3, x, 8, x/(a - b)^3 - (b^(5/2)*(63*a^2 - 90*a*b + 35*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(9/2)*(a - b)^3*f) + ((8*a^3 + 8*a^2*b - 55*a*b^2 + 35*b^3)*cot(e + f*x))/(8*a^4*(a - b)^2*f) - ((8*a^2 - 55*a*b + 35*b^2)*cot(e + f*x)^3)/(24*a^3*(a - b)^2*f) - (b*cot(e + f*x)^3)/(4*a*(a - b)*f*(a + b*tan(e + f*x)^2)^2) - ((11*a - 7*b)*b*cot(e + f*x)^3)/(8*a^2*(a - b)^2*f*(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^6/(a + b*tan(e + f*x)^2)^3, x, 9, -(x/(a - b)^3) + (b^(7/2)*(99*a^2 - 154*a*b + 63*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a)))/(8*a^(11/2)*(a - b)^3*f) - ((8*a^4 + 8*a^3*b + 8*a^2*b^2 - 91*a*b^3 + 63*b^4)*cot(e + f*x))/(8*a^5*(a - b)^2*f) + ((8*a^3 + 8*a^2*b - 91*a*b^2 + 63*b^3)*cot(e + f*x)^3)/(24*a^4*(a - b)^2*f) - ((8*a^2 - 91*a*b + 63*b^2)*cot(e + f*x)^5)/(40*a^3*(a - b)^2*f) - (b*cot(e + f*x)^5)/(4*a*(a - b)*f*(a + b*tan(e + f*x)^2)^2) - ((13*a - 9*b)*b*cot(e + f*x)^5)/(8*a^2*(a - b)^2*f*(a + b*tan(e + f*x)^2))]


    @test_int [(a + b*tan(c + d*x)^2)^4, x, 4, ((a - b)^4*d*x)/d + ((2*a - b)*b*(2*a^2 - 2*a*b + b^2)*tan(c + d*x))/d + (b^2*(6*a^2 - 4*a*b + b^2)*tan(c + d*x)^3)/(3*d) + ((4*a - b)*b^3*tan(c + d*x)^5)/(5*d) + (b^4*tan(c + d*x)^7)/(7*d)]
    @test_int [(a + b*tan(c + d*x)^2)^3, x, 4, ((a - b)^3*d*x)/d + (b*(3*a^2 - 3*a*b + b^2)*tan(c + d*x))/d + ((3*a - b)*b^2*tan(c + d*x)^3)/(3*d) + (b^3*tan(c + d*x)^5)/(5*d)]
    @test_int [(a + b*tan(c + d*x)^2)^2, x, 4, ((a - b)^2*d*x)/d + ((2*a - b)*b*tan(c + d*x))/d + (b^2*tan(c + d*x)^3)/(3*d)]
    @test_int [(a + b*tan(c + d*x)^2)^1, x, 3, a*x - b*x + (b*tan(c + d*x))/d]
    @test_int [1/(a + b*tan(c + d*x)^2)^1, x, 3, (d*x)/((a - b)*d) - (sqrt(b)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)*d)]
    @test_int [1/(a + b*tan(c + d*x)^2)^2, x, 5, (d*x)/((a - b)^2*d) - ((3*a - b)*sqrt(b)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^2*d) - (b*tan(c + d*x))/(2*a*(a - b)*d*(a + b*tan(c + d*x)^2))]
    @test_int [1/(a + b*tan(c + d*x)^2)^3, x, 6, (d*x)/((a - b)^3*d) - (sqrt(b)*(15*a^2 - 10*a*b + 3*b^2)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^3*d) - (b*tan(c + d*x))/(4*a*(a - b)*d*(a + b*tan(c + d*x)^2)^2) - ((7*a - 3*b)*b*tan(c + d*x))/(8*a^2*(a - b)^2*d*(a + b*tan(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*tan(e+f*x)^2)^(p/2)*when*a-b=0=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tan(x)^4*sqrt(a + a*tan(x)^2), x, 5, (3/8)*atanh(sin(x))*cos(x)*sqrt(a*sec(x)^2) - (3/8)*sqrt(a*sec(x)^2)*tan(x) + (1/4)*sqrt(a*sec(x)^2)*tan(x)^3]
    @test_int [tan(x)^3*sqrt(a + a*tan(x)^2), x, 4, -sqrt(a*sec(x)^2) + (a*sec(x)^2)^(3/2)/(3*a)]
    @test_int [tan(x)^2*sqrt(a + a*tan(x)^2), x, 4, (-(1/2))*atanh(sin(x))*cos(x)*sqrt(a*sec(x)^2) + (1/2)*sqrt(a*sec(x)^2)*tan(x)]
    @test_int [tan(x)^1*sqrt(a + a*tan(x)^2), x, 3, sqrt(a*sec(x)^2)]
    @test_int [cot(x)^1*sqrt(a + a*tan(x)^2), x, 4, (-sqrt(a))*atanh(sqrt(a*sec(x)^2)/sqrt(a))]
    @test_int [cot(x)^2*sqrt(a + a*tan(x)^2), x, 4, (-cot(x))*sqrt(a*sec(x)^2)]
    @test_int [cot(x)^3*sqrt(a + a*tan(x)^2), x, 5, (1/2)*sqrt(a)*atanh(sqrt(a*sec(x)^2)/sqrt(a)) - (1/2)*cot(x)^2*sqrt(a*sec(x)^2)]
    @test_int [cot(x)^4*sqrt(a + a*tan(x)^2), x, 4, cot(x)*sqrt(a*sec(x)^2) - (1/3)*cot(x)*csc(x)^2*sqrt(a*sec(x)^2)]


    @test_int [(a + a*tan(c + d*x)^2)^(1/2), x, 4, (sqrt(a)*atanh((sqrt(a)*tan(c + d*x))/sqrt(a*sec(c + d*x)^2)))/d]


    @test_int [tan(x)^3*(a + a*tan(x)^2)^(3/2), x, 4, (-(1/3))*(a*sec(x)^2)^(3/2) + (a*sec(x)^2)^(5/2)/(5*a)]
    @test_int [tan(x)^2*(a + a*tan(x)^2)^(3/2), x, 5, (-(1/8))*a*atanh(sin(x))*cos(x)*sqrt(a*sec(x)^2) - (1/8)*a*sqrt(a*sec(x)^2)*tan(x) + (1/4)*a*sec(x)^2*sqrt(a*sec(x)^2)*tan(x)]
    @test_int [tan(x)^1*(a + a*tan(x)^2)^(3/2), x, 3, (1/3)*(a*sec(x)^2)^(3/2)]
    @test_int [cot(x)^1*(a + a*tan(x)^2)^(3/2), x, 5, (-a^(3/2))*atanh(sqrt(a*sec(x)^2)/sqrt(a)) + a*sqrt(a*sec(x)^2)]
    @test_int [cot(x)^2*(a + a*tan(x)^2)^(3/2), x, 5, a*atanh(sin(x))*cos(x)*sqrt(a*sec(x)^2) - a*cot(x)*sqrt(a*sec(x)^2)]


    @test_int [(a + a*tan(c + d*x)^2)^(3/2), x, 5, (a^(3/2)*atanh((sqrt(a)*tan(c + d*x))/sqrt(a*sec(c + d*x)^2)))/(2*d) + (a*sqrt(a*sec(c + d*x)^2)*tan(c + d*x))/(2*d)]


    @test_int [(a + a*tan(c + d*x)^2)^(5/2), x, 6, (3*a^(5/2)*atanh((sqrt(a)*tan(c + d*x))/sqrt(a*sec(c + d*x)^2)))/(8*d) + (3*a^2*sqrt(a*sec(c + d*x)^2)*tan(c + d*x))/(8*d) + (a*(a*sec(c + d*x)^2)^(3/2)*tan(c + d*x))/(4*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(x)^3/sqrt(a + a*tan(x)^2), x, 4, 1/sqrt(a*sec(x)^2) + sqrt(a*sec(x)^2)/a]
    @test_int [tan(x)^2/sqrt(a + a*tan(x)^2), x, 5, (atanh(sin(x))*sec(x))/sqrt(a*sec(x)^2) - tan(x)/sqrt(a*sec(x)^2)]
    @test_int [tan(x)^1/sqrt(a + a*tan(x)^2), x, 3, -(1/sqrt(a*sec(x)^2))]
    @test_int [cot(x)^1/sqrt(a + a*tan(x)^2), x, 5, -(atanh(sqrt(a*sec(x)^2)/sqrt(a))/sqrt(a)) + 1/sqrt(a*sec(x)^2)]
    @test_int [cot(x)^2/sqrt(a + a*tan(x)^2), x, 5, -((csc(x)*sec(x))/sqrt(a*sec(x)^2)) - tan(x)/sqrt(a*sec(x)^2)]


    @test_int [tan(x)^3/(a + a*tan(x)^2)^(3/2), x, 4, 1/(3*(a*sec(x)^2)^(3/2)) - 1/(a*sqrt(a*sec(x)^2))]
    @test_int [tan(x)^2/(a + a*tan(x)^2)^(3/2), x, 4, (sin(x)^2*tan(x))/(3*a*sqrt(a*sec(x)^2))]
    @test_int [tan(x)^1/(a + a*tan(x)^2)^(3/2), x, 3, -(1/(3*(a*sec(x)^2)^(3/2)))]
    @test_int [cot(x)^1/(a + a*tan(x)^2)^(3/2), x, 6, -(atanh(sqrt(a*sec(x)^2)/sqrt(a))/a^(3/2)) + 1/(3*(a*sec(x)^2)^(3/2)) + 1/(a*sqrt(a*sec(x)^2))]
    @test_int [cot(x)^2/(a + a*tan(x)^2)^(3/2), x, 5, -((csc(x)*sec(x))/(a*sqrt(a*sec(x)^2))) - (2*tan(x))/(a*sqrt(a*sec(x)^2)) + (sin(x)^2*tan(x))/(3*a*sqrt(a*sec(x)^2))]


    @test_int [1/(a + a*tan(c + d*x)^2)^(1/2), x, 3, tan(c + d*x)/(d*sqrt(a*sec(c + d*x)^2))]
    @test_int [1/(a + a*tan(c + d*x)^2)^(3/2), x, 4, tan(c + d*x)/(3*d*(a*sec(c + d*x)^2)^(3/2)) + (2*tan(c + d*x))/(3*a*d*sqrt(a*sec(c + d*x)^2))]
    @test_int [1/(a + a*tan(c + d*x)^2)^(5/2), x, 5, tan(c + d*x)/(5*d*(a*sec(c + d*x)^2)^(5/2)) + (4*tan(c + d*x))/(15*a*d*(a*sec(c + d*x)^2)^(3/2)) + (8*tan(c + d*x))/(15*a^2*d*sqrt(a*sec(c + d*x)^2))]
    @test_int [1/(a + a*tan(c + d*x)^2)^(7/2), x, 6, tan(c + d*x)/(7*d*(a*sec(c + d*x)^2)^(7/2)) + (6*tan(c + d*x))/(35*a*d*(a*sec(c + d*x)^2)^(5/2)) + (8*tan(c + d*x))/(35*a^2*d*(a*sec(c + d*x)^2)^(3/2)) + (16*tan(c + d*x))/(35*a^3*d*sqrt(a*sec(c + d*x)^2))]


    @test_int [(1 + tan(x)^2)^(3/2), x, 4, (1/2)*asinh(tan(x)) + (1/2)*sqrt(sec(x)^2)*tan(x)]
    @test_int [sqrt(1 + tan(x)^2), x, 3, asinh(tan(x))]
    @test_int [1/sqrt(1 + tan(x)^2), x, 3, tan(x)/sqrt(sec(x)^2)]


    @test_int [(-1 - tan(x)^2)^(3/2), x, 5, (1/2)*atan(tan(x)/sqrt(-sec(x)^2)) - (1/2)*sqrt(-sec(x)^2)*tan(x)]
    @test_int [sqrt(-1 - tan(x)^2), x, 4, -atan(tan(x)/sqrt(-sec(x)^2))]
    @test_int [1/sqrt(-1 - tan(x)^2), x, 3, tan(x)/sqrt(-sec(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*tan(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tan(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2), x, 7, -((sqrt(a - b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f) + sqrt(a + b*tan(e + f*x)^2)/f - ((a + b)*(a + b*tan(e + f*x)^2)^(3/2))/(3*b^2*f) + (a + b*tan(e + f*x)^2)^(5/2)/(5*b^2*f)]
    @test_int [tan(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2), x, 6, (sqrt(a - b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f - sqrt(a + b*tan(e + f*x)^2)/f + (a + b*tan(e + f*x)^2)^(3/2)/(3*b*f)]
    @test_int [tan(e + f*x)^1*sqrt(a + b*tan(e + f*x)^2), x, 5, -((sqrt(a - b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f) + sqrt(a + b*tan(e + f*x)^2)/f]
    @test_int [cot(e + f*x)^1*sqrt(a + b*tan(e + f*x)^2), x, 7, -((sqrt(a)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/f) + (sqrt(a - b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f]
    @test_int [cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2), x, 8, ((2*a - b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(2*sqrt(a)*f) - (sqrt(a - b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f - (cot(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2))/(2*f)]
    @test_int [cot(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2), x, 9, -((8*a^2 - 4*a*b - b^2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(8*a^(3/2)*f) + (sqrt(a - b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f + ((4*a - b)*cot(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2))/(8*a*f) - (cot(e + f*x)^4*sqrt(a + b*tan(e + f*x)^2))/(4*f)]

    @test_int [tan(e + f*x)^6*sqrt(a + b*tan(e + f*x)^2), x, 9, -((sqrt(a - b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f) + ((a^3 + 2*a^2*b + 8*a*b^2 - 16*b^3)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(16*b^(5/2)*f) - ((a - 2*b)*(a + 4*b)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(16*b^2*f) + ((a - 6*b)*tan(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(24*b*f) + (tan(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2))/(6*f)]
    @test_int [tan(e + f*x)^4*sqrt(a + b*tan(e + f*x)^2), x, 8, (sqrt(a - b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f - ((a^2 + 4*a*b - 8*b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(8*b^(3/2)*f) + ((a - 4*b)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(8*b*f) + (tan(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(4*f)]
    @test_int [tan(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2), x, 7, -((sqrt(a - b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f) + ((a - 2*b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*sqrt(b)*f) + (tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*f)]
    @test_int [tan(e + f*x)^0*sqrt(a + b*tan(e + f*x)^2), x, 6, (sqrt(a - b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f]
    @test_int [cot(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2), x, 5, -((sqrt(a - b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f) - (cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/f]
    @test_int [cot(e + f*x)^4*sqrt(a + b*tan(e + f*x)^2), x, 6, (sqrt(a - b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f + ((3*a - b)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(3*a*f) - (cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(3*f)]
    @test_int [cot(e + f*x)^6*sqrt(a + b*tan(e + f*x)^2), x, 7, -((sqrt(a - b)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f) - ((15*a^2 - 5*a*b - 2*b^2)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(15*a^2*f) + ((5*a - b)*cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(15*a*f) - (cot(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2))/(5*f)]


    @test_int [tan(e + f*x)^5*(a + b*tan(e + f*x)^2)^(3/2), x, 8, -(((a - b)^(3/2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f) + ((a - b)*sqrt(a + b*tan(e + f*x)^2))/f + (a + b*tan(e + f*x)^2)^(3/2)/(3*f) - ((a + b)*(a + b*tan(e + f*x)^2)^(5/2))/(5*b^2*f) + (a + b*tan(e + f*x)^2)^(7/2)/(7*b^2*f)]
    @test_int [tan(e + f*x)^3*(a + b*tan(e + f*x)^2)^(3/2), x, 7, ((a - b)^(3/2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f - ((a - b)*sqrt(a + b*tan(e + f*x)^2))/f - (a + b*tan(e + f*x)^2)^(3/2)/(3*f) + (a + b*tan(e + f*x)^2)^(5/2)/(5*b*f)]
    @test_int [tan(e + f*x)^1*(a + b*tan(e + f*x)^2)^(3/2), x, 6, -(((a - b)^(3/2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f) + ((a - b)*sqrt(a + b*tan(e + f*x)^2))/f + (a + b*tan(e + f*x)^2)^(3/2)/(3*f)]
    @test_int [cot(e + f*x)^1*(a + b*tan(e + f*x)^2)^(3/2), x, 8, -((a^(3/2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/f) + ((a - b)^(3/2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f + (b*sqrt(a + b*tan(e + f*x)^2))/f]
    @test_int [cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^(3/2), x, 8, (sqrt(a)*(2*a - 3*b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(2*f) - ((a - b)^(3/2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f - (a*cot(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2))/(2*f)]
    @test_int [cot(e + f*x)^5*(a + b*tan(e + f*x)^2)^(3/2), x, 9, -((8*a^2 - 12*a*b + 3*b^2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(8*sqrt(a)*f) + ((a - b)^(3/2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b)))/f + ((4*a - 5*b)*cot(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2))/(8*f) - (a*cot(e + f*x)^4*sqrt(a + b*tan(e + f*x)^2))/(4*f)]

    @test_int [tan(e + f*x)^6*(a + b*tan(e + f*x)^2)^(3/2), x, 10, -(((a - b)^(3/2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f) + ((3*a^4 + 8*a^3*b + 48*a^2*b^2 - 192*a*b^3 + 128*b^4)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(128*b^(5/2)*f) - ((3*a^3 + 8*a^2*b - 80*a*b^2 + 64*b^3)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(128*b^2*f) + ((3*a^2 - 56*a*b + 48*b^2)*tan(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(192*b*f) + ((9*a - 8*b)*tan(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2))/(48*f) + (b*tan(e + f*x)^7*sqrt(a + b*tan(e + f*x)^2))/(8*f)]
    @test_int [tan(e + f*x)^4*(a + b*tan(e + f*x)^2)^(3/2), x, 9, ((a - b)^(3/2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f - ((a^3 + 6*a^2*b - 24*a*b^2 + 16*b^3)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(16*b^(3/2)*f) + ((a^2 - 10*a*b + 8*b^2)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(16*b*f) + ((7*a - 6*b)*tan(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(24*f) + (b*tan(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2))/(6*f)]
    @test_int [tan(e + f*x)^2*(a + b*tan(e + f*x)^2)^(3/2), x, 8, -(((a - b)^(3/2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f) + ((3*a^2 - 12*a*b + 8*b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(8*sqrt(b)*f) + ((5*a - 4*b)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(8*f) + (b*tan(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(4*f)]
    @test_int [tan(e + f*x)^0*(a + b*tan(e + f*x)^2)^(3/2), x, 7, ((a - b)^(3/2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f + ((3*a - 2*b)*sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*f) + (b*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*f)]
    @test_int [cot(e + f*x)^2*(a + b*tan(e + f*x)^2)^(3/2), x, 7, -(((a - b)^(3/2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f) + (b^(3/2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f - (a*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/f]
    @test_int [cot(e + f*x)^4*(a + b*tan(e + f*x)^2)^(3/2), x, 6, ((a - b)^(3/2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f + ((3*a - 4*b)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(3*f) - (a*cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(3*f)]
    @test_int [cot(e + f*x)^6*(a + b*tan(e + f*x)^2)^(3/2), x, 7, -(((a - b)^(3/2)*atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/f) - ((15*a^2 - 20*a*b + 3*b^2)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(15*a*f) + ((5*a - 6*b)*cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(15*f) - (a*cot(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2))/(5*f)]


    @test_int [(a + b*tan(c + d*x)^2)^(5/2), x, 8, ((a - b)^(5/2)*atan((sqrt(a - b)*tan(c + d*x))/sqrt(a + b*tan(c + d*x)^2)))/d + (sqrt(b)*(15*a^2 - 20*a*b + 8*b^2)*atanh((sqrt(b)*tan(c + d*x))/sqrt(a + b*tan(c + d*x)^2)))/(8*d) + ((7*a - 4*b)*b*tan(c + d*x)*sqrt(a + b*tan(c + d*x)^2))/(8*d) + (b*tan(c + d*x)*(a + b*tan(c + d*x)^2)^(3/2))/(4*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(e + f*x)^5/sqrt(a + b*tan(e + f*x)^2), x, 6, -(atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/(sqrt(a - b)*f)) - ((a + b)*sqrt(a + b*tan(e + f*x)^2))/(b^2*f) + (a + b*tan(e + f*x)^2)^(3/2)/(3*b^2*f)]
    @test_int [tan(e + f*x)^3/sqrt(a + b*tan(e + f*x)^2), x, 5, atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/(sqrt(a - b)*f) + sqrt(a + b*tan(e + f*x)^2)/(b*f)]
    @test_int [tan(e + f*x)^1/sqrt(a + b*tan(e + f*x)^2), x, 4, -(atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/(sqrt(a - b)*f))]
    @test_int [cot(e + f*x)^1/sqrt(a + b*tan(e + f*x)^2), x, 7, -(atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a))/(sqrt(a)*f)) + atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/(sqrt(a - b)*f)]
    @test_int [cot(e + f*x)^3/sqrt(a + b*tan(e + f*x)^2), x, 8, ((2*a + b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(2*a^(3/2)*f) - atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/(sqrt(a - b)*f) - (cot(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2))/(2*a*f)]
    @test_int [cot(e + f*x)^5/sqrt(a + b*tan(e + f*x)^2), x, 9, -((8*a^2 + 4*a*b + 3*b^2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(8*a^(5/2)*f) + atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/(sqrt(a - b)*f) + ((4*a + 3*b)*cot(e + f*x)^2*sqrt(a + b*tan(e + f*x)^2))/(8*a^2*f) - (cot(e + f*x)^4*sqrt(a + b*tan(e + f*x)^2))/(4*a*f)]

    @test_int [tan(e + f*x)^6/sqrt(a + b*tan(e + f*x)^2), x, 8, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(sqrt(a - b)*f)) + ((3*a^2 + 4*a*b + 8*b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(8*b^(5/2)*f) - ((3*a + 4*b)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(8*b^2*f) + (tan(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(4*b*f)]
    @test_int [tan(e + f*x)^4/sqrt(a + b*tan(e + f*x)^2), x, 7, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(sqrt(a - b)*f) - ((a + 2*b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*b^(3/2)*f) + (tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*b*f)]
    @test_int [tan(e + f*x)^2/sqrt(a + b*tan(e + f*x)^2), x, 6, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(sqrt(a - b)*f)) + atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(sqrt(b)*f)]
    @test_int [tan(e + f*x)^0/sqrt(a + b*tan(e + f*x)^2), x, 3, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(sqrt(a - b)*f)]
    @test_int [cot(e + f*x)^2/sqrt(a + b*tan(e + f*x)^2), x, 5, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(sqrt(a - b)*f)) - (cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(a*f)]
    @test_int [cot(e + f*x)^4/sqrt(a + b*tan(e + f*x)^2), x, 6, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(sqrt(a - b)*f) + ((3*a + 2*b)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(3*a^2*f) - (cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(3*a*f)]
    @test_int [cot(e + f*x)^6/sqrt(a + b*tan(e + f*x)^2), x, 7, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(sqrt(a - b)*f)) - ((15*a^2 + 10*a*b + 8*b^2)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(15*a^3*f) + ((5*a + 4*b)*cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(15*a^2*f) - (cot(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2))/(5*a*f)]


    @test_int [tan(e + f*x)^5/(a + b*tan(e + f*x)^2)^(3/2), x, 6, -(atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(3/2)*f)) + a^2/((a - b)*b^2*f*sqrt(a + b*tan(e + f*x)^2)) + sqrt(a + b*tan(e + f*x)^2)/(b^2*f)]
    @test_int [tan(e + f*x)^3/(a + b*tan(e + f*x)^2)^(3/2), x, 5, atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(3/2)*f) - a/((a - b)*b*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^1/(a + b*tan(e + f*x)^2)^(3/2), x, 5, -(atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(3/2)*f)) + 1/((a - b)*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^1/(a + b*tan(e + f*x)^2)^(3/2), x, 8, -(atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a))/(a^(3/2)*f)) + atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(3/2)*f) - b/(a*(a - b)*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^3/(a + b*tan(e + f*x)^2)^(3/2), x, 9, ((2*a + 3*b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(2*a^(5/2)*f) - atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(3/2)*f) - ((a - 3*b)*b)/(2*a^2*(a - b)*f*sqrt(a + b*tan(e + f*x)^2)) - cot(e + f*x)^2/(2*a*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^5/(a + b*tan(e + f*x)^2)^(3/2), x, 10, -((8*a^2 + 12*a*b + 15*b^2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(8*a^(7/2)*f) + atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(3/2)*f) + (b*(4*a^2 + 3*a*b - 15*b^2))/(8*a^3*(a - b)*f*sqrt(a + b*tan(e + f*x)^2)) + ((4*a + 5*b)*cot(e + f*x)^2)/(8*a^2*f*sqrt(a + b*tan(e + f*x)^2)) - cot(e + f*x)^4/(4*a*f*sqrt(a + b*tan(e + f*x)^2))]

    @test_int [tan(e + f*x)^6/(a + b*tan(e + f*x)^2)^(3/2), x, 8, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(3/2)*f)) - ((3*a + 2*b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2)))/(2*b^(5/2)*f) - (a*tan(e + f*x)^3)/((a - b)*b*f*sqrt(a + b*tan(e + f*x)^2)) + ((3*a - b)*tan(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(2*(a - b)*b^2*f)]
    @test_int [tan(e + f*x)^4/(a + b*tan(e + f*x)^2)^(3/2), x, 7, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(3/2)*f) + atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(b^(3/2)*f) - (a*tan(e + f*x))/((a - b)*b*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/(a + b*tan(e + f*x)^2)^(3/2), x, 4, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(3/2)*f)) + tan(e + f*x)/((a - b)*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^0/(a + b*tan(e + f*x)^2)^(3/2), x, 4, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(3/2)*f) - (b*tan(e + f*x))/(a*(a - b)*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a + b*tan(e + f*x)^2)^(3/2), x, 6, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(3/2)*f)) - (b*cot(e + f*x))/(a*(a - b)*f*sqrt(a + b*tan(e + f*x)^2)) - ((a - 2*b)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(a^2*(a - b)*f)]
    @test_int [cot(e + f*x)^4/(a + b*tan(e + f*x)^2)^(3/2), x, 7, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(3/2)*f) - (b*cot(e + f*x)^3)/(a*(a - b)*f*sqrt(a + b*tan(e + f*x)^2)) + ((3*a - 4*b)*(a + 2*b)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(3*a^3*(a - b)*f) - ((a - 4*b)*cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(3*a^2*(a - b)*f)]
    @test_int [cot(e + f*x)^6/(a + b*tan(e + f*x)^2)^(3/2), x, 8, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(3/2)*f)) - (b*cot(e + f*x)^5)/(a*(a - b)*f*sqrt(a + b*tan(e + f*x)^2)) - ((15*a^3 + 10*a^2*b + 8*a*b^2 - 48*b^3)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(15*a^4*(a - b)*f) + ((5*a^2 + 4*a*b - 24*b^2)*cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(15*a^3*(a - b)*f) - ((a - 6*b)*cot(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2))/(5*a^2*(a - b)*f)]


    @test_int [tan(e + f*x)^5/(a + b*tan(e + f*x)^2)^(5/2), x, 6, -(atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(5/2)*f)) + a^2/(3*(a - b)*b^2*f*(a + b*tan(e + f*x)^2)^(3/2)) - (a*(a - 2*b))/((a - b)^2*b^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^3/(a + b*tan(e + f*x)^2)^(5/2), x, 6, atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(5/2)*f) - a/(3*(a - b)*b*f*(a + b*tan(e + f*x)^2)^(3/2)) - 1/((a - b)^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^1/(a + b*tan(e + f*x)^2)^(5/2), x, 6, -(atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(5/2)*f)) + 1/(3*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) + 1/((a - b)^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^1/(a + b*tan(e + f*x)^2)^(5/2), x, 9, -(atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a))/(a^(5/2)*f)) + atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(5/2)*f) - b/(3*a*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) - ((2*a - b)*b)/(a^2*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^3/(a + b*tan(e + f*x)^2)^(5/2), x, 10, ((2*a + 5*b)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(2*a^(7/2)*f) - atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(5/2)*f) - ((3*a - 5*b)*b)/(6*a^2*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) - cot(e + f*x)^2/(2*a*f*(a + b*tan(e + f*x)^2)^(3/2)) - (b*(a^2 - 8*a*b + 5*b^2))/(2*a^3*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^5/(a + b*tan(e + f*x)^2)^(5/2), x, 11, -((8*a^2 + 20*a*b + 35*b^2)*atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a)))/(8*a^(9/2)*f) + atanh(sqrt(a + b*tan(e + f*x)^2)/sqrt(a - b))/((a - b)^(5/2)*f) + (b*(12*a^2 + 15*a*b - 35*b^2))/(24*a^3*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) + ((4*a + 7*b)*cot(e + f*x)^2)/(8*a^2*f*(a + b*tan(e + f*x)^2)^(3/2)) - cot(e + f*x)^4/(4*a*f*(a + b*tan(e + f*x)^2)^(3/2)) + (b*(4*a^3 + 3*a^2*b - 50*a*b^2 + 35*b^3))/(8*a^4*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2))]

    @test_int [tan(e + f*x)^6/(a + b*tan(e + f*x)^2)^(5/2), x, 8, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(5/2)*f)) + atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/(b^(5/2)*f) - (a*tan(e + f*x)^3)/(3*(a - b)*b*f*(a + b*tan(e + f*x)^2)^(3/2)) - (a*(a - 2*b)*tan(e + f*x))/((a - b)^2*b^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^4/(a + b*tan(e + f*x)^2)^(5/2), x, 6, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(5/2)*f) - (a*tan(e + f*x))/(3*(a - b)*b*f*(a + b*tan(e + f*x)^2)^(3/2)) + ((a - 4*b)*tan(e + f*x))/(3*(a - b)^2*b*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/(a + b*tan(e + f*x)^2)^(5/2), x, 6, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(5/2)*f)) + tan(e + f*x)/(3*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) + ((2*a + b)*tan(e + f*x))/(3*a*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^0/(a + b*tan(e + f*x)^2)^(5/2), x, 6, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(5/2)*f) - (b*tan(e + f*x))/(3*a*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) - ((5*a - 2*b)*b*tan(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a + b*tan(e + f*x)^2)^(5/2), x, 7, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(5/2)*f)) - (b*cot(e + f*x))/(3*a*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) - ((7*a - 4*b)*b*cot(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2)) - ((a - 4*b)*(3*a - 2*b)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(3*a^3*(a - b)^2*f)]
    @test_int [cot(e + f*x)^4/(a + b*tan(e + f*x)^2)^(5/2), x, 8, atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(5/2)*f) - (b*cot(e + f*x)^3)/(3*a*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) - ((3*a - 2*b)*b*cot(e + f*x)^3)/(a^2*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2)) + ((a - 2*b)*(3*a^2 + 8*a*b - 8*b^2)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(3*a^4*(a - b)^2*f) - ((a^2 - 12*a*b + 8*b^2)*cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(3*a^3*(a - b)^2*f)]
    @test_int [cot(e + f*x)^6/(a + b*tan(e + f*x)^2)^(5/2), x, 9, -(atan((sqrt(a - b)*tan(e + f*x))/sqrt(a + b*tan(e + f*x)^2))/((a - b)^(5/2)*f)) - (b*cot(e + f*x)^5)/(3*a*(a - b)*f*(a + b*tan(e + f*x)^2)^(3/2)) - ((11*a - 8*b)*b*cot(e + f*x)^5)/(3*a^2*(a - b)^2*f*sqrt(a + b*tan(e + f*x)^2)) - ((15*a^4 + 10*a^3*b + 8*a^2*b^2 - 176*a*b^3 + 128*b^4)*cot(e + f*x)*sqrt(a + b*tan(e + f*x)^2))/(15*a^5*(a - b)^2*f) + ((5*a^3 + 4*a^2*b - 88*a*b^2 + 64*b^3)*cot(e + f*x)^3*sqrt(a + b*tan(e + f*x)^2))/(15*a^4*(a - b)^2*f) - ((a^2 - 22*a*b + 16*b^2)*cot(e + f*x)^5*sqrt(a + b*tan(e + f*x)^2))/(5*a^3*(a - b)^2*f)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*tan(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*tan(e + f*x))^m*(b*tan(e + f*x)^2)^p, x, 4, (Hypergeometric2F1(1, (1/2)*(1 + m + 2*p), (1/2)*(3 + m + 2*p), -tan(e + f*x)^2)*tan(e + f*x)*(d*tan(e + f*x))^m*(b*tan(e + f*x)^2)^p)/(f*(1 + m + 2*p))]


    @test_int [(d*tan(e + f*x))^m*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1((1 + m)/2, 1, -p, (3 + m)/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*(d*tan(e + f*x))^(1 + m)*(a + b*tan(e + f*x)^2)^p)/(d*f*(1 + m)*(1 + (b*tan(e + f*x)^2)/a)^p)]


    @test_int [tan(e + f*x)^5*(a + b*tan(e + f*x)^2)^p, x, 5, -((a + b)*(a + b*tan(e + f*x)^2)^(1 + p))/(2*b^2*f*(1 + p)) - (Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*tan(e + f*x)^2)/(a - b))*(a + b*tan(e + f*x)^2)^(1 + p))/(2*(a - b)*f*(1 + p)) + (a + b*tan(e + f*x)^2)^(2 + p)/(2*b^2*f*(2 + p))]
    @test_int [tan(e + f*x)^3*(a + b*tan(e + f*x)^2)^p, x, 4, (a + b*tan(e + f*x)^2)^(1 + p)/(2*b*f*(1 + p)) + (Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*tan(e + f*x)^2)/(a - b))*(a + b*tan(e + f*x)^2)^(1 + p))/(2*(a - b)*f*(1 + p))]
    @test_int [tan(e + f*x)^1*(a + b*tan(e + f*x)^2)^p, x, 3, -(Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*tan(e + f*x)^2)/(a - b))*(a + b*tan(e + f*x)^2)^(1 + p))/(2*(a - b)*f*(1 + p))]
    @test_int [cot(e + f*x)^1*(a + b*tan(e + f*x)^2)^p, x, 5, (Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*tan(e + f*x)^2)/(a - b))*(a + b*tan(e + f*x)^2)^(1 + p))/(2*(a - b)*f*(1 + p)) - (Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*tan(e + f*x)^2)/a)*(a + b*tan(e + f*x)^2)^(1 + p))/(2*a*f*(1 + p))]
    @test_int [cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^p, x, 6, -(cot(e + f*x)^2*(a + b*tan(e + f*x)^2)^(1 + p))/(2*a*f) - (Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*tan(e + f*x)^2)/(a - b))*(a + b*tan(e + f*x)^2)^(1 + p))/(2*(a - b)*f*(1 + p)) + ((a - b*p)*Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*tan(e + f*x)^2)/a)*(a + b*tan(e + f*x)^2)^(1 + p))/(2*a^2*f*(1 + p))]
    @test_int [cot(e + f*x)^5*(a + b*tan(e + f*x)^2)^p, x, 7, ((2*a + b - b*p)*cot(e + f*x)^2*(a + b*tan(e + f*x)^2)^(1 + p))/(4*a^2*f) - (cot(e + f*x)^4*(a + b*tan(e + f*x)^2)^(1 + p))/(4*a*f) + (Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*tan(e + f*x)^2)/(a - b))*(a + b*tan(e + f*x)^2)^(1 + p))/(2*(a - b)*f*(1 + p)) - ((2*a^2 - 2*a*b*p - b^2*(1 - p)*p)*Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*tan(e + f*x)^2)/a)*(a + b*tan(e + f*x)^2)^(1 + p))/(4*a^3*f*(1 + p))]

    @test_int [tan(e + f*x)^6*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1(7/2, 1, -p, 9/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*tan(e + f*x)^7*(a + b*tan(e + f*x)^2)^p)/(7*f*(1 + (b*tan(e + f*x)^2)/a)^p)]
    @test_int [tan(e + f*x)^4*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1(5/2, 1, -p, 7/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*tan(e + f*x)^5*(a + b*tan(e + f*x)^2)^p)/(5*f*(1 + (b*tan(e + f*x)^2)/a)^p)]
    @test_int [tan(e + f*x)^2*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1(3/2, 1, -p, 5/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*tan(e + f*x)^3*(a + b*tan(e + f*x)^2)^p)/(3*f*(1 + (b*tan(e + f*x)^2)/a)^p)]
    @test_int [tan(e + f*x)^0*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 1, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*tan(e + f*x)*(a + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/a)^p)]
    @test_int [cot(e + f*x)^2*(a + b*tan(e + f*x)^2)^p, x, 3, -((AppellF1(-1/2, 1, -p, 1/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*cot(e + f*x)*(a + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/a)^p))]
    @test_int [cot(e + f*x)^4*(a + b*tan(e + f*x)^2)^p, x, 3, -(AppellF1(-3/2, 1, -p, -1/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*cot(e + f*x)^3*(a + b*tan(e + f*x)^2)^p)/(3*f*(1 + (b*tan(e + f*x)^2)/a)^p)]
    @test_int [cot(e + f*x)^6*(a + b*tan(e + f*x)^2)^p, x, 3, -(AppellF1(-5/2, 1, -p, -3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*cot(e + f*x)^5*(a + b*tan(e + f*x)^2)^p)/(5*f*(1 + (b*tan(e + f*x)^2)/a)^p)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*tan(e+f*x)^3)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*tan(e+f*x)^3)^p=#


    @test_int [(a + b*tan(c + d*x)^3)^4, x, 6, (a^4 - 6*a^2*b^2 + b^4)*x + (4*a*b*(a^2 - b^2)*log(cos(c + d*x)))/d + (b^2*(6*a^2 - b^2)*tan(c + d*x))/d + (2*a*b*(a^2 - b^2)*tan(c + d*x)^2)/d - (b^2*(6*a^2 - b^2)*tan(c + d*x)^3)/(3*d) + (a*b^3*tan(c + d*x)^4)/d + (b^2*(6*a^2 - b^2)*tan(c + d*x)^5)/(5*d) - (2*a*b^3*tan(c + d*x)^6)/(3*d) + (b^4*tan(c + d*x)^7)/(7*d) + (a*b^3*tan(c + d*x)^8)/(2*d) - (b^4*tan(c + d*x)^9)/(9*d) + (b^4*tan(c + d*x)^11)/(11*d)]
    @test_int [(a + b*tan(c + d*x)^3)^3, x, 6, a*(a^2 - 3*b^2)*x + (b*(3*a^2 - b^2)*log(cos(c + d*x)))/d + (3*a*b^2*tan(c + d*x))/d + (b*(3*a^2 - b^2)*tan(c + d*x)^2)/(2*d) - (a*b^2*tan(c + d*x)^3)/d + (b^3*tan(c + d*x)^4)/(4*d) + (3*a*b^2*tan(c + d*x)^5)/(5*d) - (b^3*tan(c + d*x)^6)/(6*d) + (b^3*tan(c + d*x)^8)/(8*d)]
    @test_int [(a + b*tan(c + d*x)^3)^2, x, 6, (a^2 - b^2)*x + (2*a*b*log(cos(c + d*x)))/d + (b^2*tan(c + d*x))/d + (a*b*tan(c + d*x)^2)/d - (b^2*tan(c + d*x)^3)/(3*d) + (b^2*tan(c + d*x)^5)/(5*d)]
    @test_int [(a + b*tan(c + d*x)^3)^1, x, 3, a*x + (b*log(cos(c + d*x)))/d + (b*tan(c + d*x)^2)/(2*d)]
    @test_int [1/(a + b*tan(c + d*x)^3)^1, x, 14, (a*x)/(a^2 + b^2) + (b^(1/3)*(a^(4/3) - b^(4/3))*atan((a^(1/3) - 2*b^(1/3)*tan(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(2/3)*(a^2 + b^2)*d) - (b*log(a*cos(c + d*x)^3 + b*sin(c + d*x)^3))/(3*(a^2 + b^2)*d) + (b^(1/3)*(a^(4/3) + b^(4/3))*log(a^(1/3) + b^(1/3)*tan(c + d*x)))/(3*a^(2/3)*(a^2 + b^2)*d) - (b^(1/3)*(a^(4/3) + b^(4/3))*log(a^(2/3) - a^(1/3)*b^(1/3)*tan(c + d*x) + b^(2/3)*tan(c + d*x)^2))/(6*a^(2/3)*(a^2 + b^2)*d)]
    @test_int [1/(a + b*tan(c + d*x)^3)^2, x, 21, ((a^2 - b^2)*x)/(a^2 + b^2)^2 + (b^(1/3)*(a^2 - 2*a^(2/3)*b^(4/3) - b^2)*atan((a^(1/3) - 2*b^(1/3)*tan(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(1/3)*(a^2 + b^2)^2*d) + (b^(1/3)*(a^(4/3) - 2*b^(4/3))*atan((a^(1/3) - 2*b^(1/3)*tan(c + d*x))/(sqrt(3)*a^(1/3))))/(3*sqrt(3)*a^(5/3)*(a^2 + b^2)*d) - (2*a*b*log(a*cos(c + d*x)^3 + b*sin(c + d*x)^3))/(3*(a^2 + b^2)^2*d) + (b^(1/3)*(a^2 + 2*a^(2/3)*b^(4/3) - b^2)*log(a^(1/3) + b^(1/3)*tan(c + d*x)))/(3*a^(1/3)*(a^2 + b^2)^2*d) + (b^(1/3)*(a^(4/3) + 2*b^(4/3))*log(a^(1/3) + b^(1/3)*tan(c + d*x)))/(9*a^(5/3)*(a^2 + b^2)*d) - (b^(1/3)*(a^2 + 2*a^(2/3)*b^(4/3) - b^2)*log(a^(2/3) - a^(1/3)*b^(1/3)*tan(c + d*x) + b^(2/3)*tan(c + d*x)^2))/(6*a^(1/3)*(a^2 + b^2)^2*d) - (b^(1/3)*(a^(4/3) + 2*b^(4/3))*log(a^(2/3) - a^(1/3)*b^(1/3)*tan(c + d*x) + b^(2/3)*tan(c + d*x)^2))/(18*a^(5/3)*(a^2 + b^2)*d) + (b*(a + tan(c + d*x)*(b - a*tan(c + d*x))))/(3*a*(a^2 + b^2)*d*(a + b*tan(c + d*x)^3))]


    @test_int [1/(1 + tan(x)^3), x, 7, x/2 - (1/2)*log(cos(x)) + (1/6)*log(1 + tan(x)) - (1/3)*log(1 - tan(x) + tan(x)^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*tan(e+f*x)^4)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*tan(e+f*x)^4)^p=#


    @test_int [(a + b*tan(c + d*x)^4)^4, x, 4, (a + b)^4*x - (b*(2*a + b)*(2*a^2 + 2*a*b + b^2)*tan(c + d*x))/d + (b*(2*a + b)*(2*a^2 + 2*a*b + b^2)*tan(c + d*x)^3)/(3*d) - (b^2*(6*a^2 + 4*a*b + b^2)*tan(c + d*x)^5)/(5*d) + (b^2*(6*a^2 + 4*a*b + b^2)*tan(c + d*x)^7)/(7*d) - (b^3*(4*a + b)*tan(c + d*x)^9)/(9*d) + (b^3*(4*a + b)*tan(c + d*x)^11)/(11*d) - (b^4*tan(c + d*x)^13)/(13*d) + (b^4*tan(c + d*x)^15)/(15*d)]
    @test_int [(a + b*tan(c + d*x)^4)^3, x, 4, (a + b)^3*x - (b*(3*a^2 + 3*a*b + b^2)*tan(c + d*x))/d + (b*(3*a^2 + 3*a*b + b^2)*tan(c + d*x)^3)/(3*d) - (b^2*(3*a + b)*tan(c + d*x)^5)/(5*d) + (b^2*(3*a + b)*tan(c + d*x)^7)/(7*d) - (b^3*tan(c + d*x)^9)/(9*d) + (b^3*tan(c + d*x)^11)/(11*d)]
    @test_int [(a + b*tan(c + d*x)^4)^2, x, 4, (a + b)^2*x - (b*(2*a + b)*tan(c + d*x))/d + (b*(2*a + b)*tan(c + d*x)^3)/(3*d) - (b^2*tan(c + d*x)^5)/(5*d) + (b^2*tan(c + d*x)^7)/(7*d)]
    @test_int [(a + b*tan(c + d*x)^4)^1, x, 4, a*x + b*x - (b*tan(c + d*x))/d + (b*tan(c + d*x)^3)/(3*d)]
    @test_int [1/(a + b*tan(c + d*x)^4)^1, x, 13, x/(a + b) + ((sqrt(a) - sqrt(b))*b^(1/4)*atan(1 - (sqrt(2)*b^(1/4)*tan(c + d*x))/a^(1/4)))/(2*sqrt(2)*a^(3/4)*(a + b)*d) - ((sqrt(a) - sqrt(b))*b^(1/4)*atan(1 + (sqrt(2)*b^(1/4)*tan(c + d*x))/a^(1/4)))/(2*sqrt(2)*a^(3/4)*(a + b)*d) - ((sqrt(a) + sqrt(b))*b^(1/4)*log(sqrt(a) - sqrt(2)*a^(1/4)*b^(1/4)*tan(c + d*x) + sqrt(b)*tan(c + d*x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)*d) + ((sqrt(a) + sqrt(b))*b^(1/4)*log(sqrt(a) + sqrt(2)*a^(1/4)*b^(1/4)*tan(c + d*x) + sqrt(b)*tan(c + d*x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)*d)]
    @test_int [1/(a + b*tan(c + d*x)^4)^2, x, 23, x/(a + b)^2 + ((sqrt(a) - sqrt(b))*b^(1/4)*atan(1 - (sqrt(2)*b^(1/4)*tan(c + d*x))/a^(1/4)))/(2*sqrt(2)*a^(3/4)*(a + b)^2*d) + ((sqrt(a) - 3*sqrt(b))*b^(1/4)*atan(1 - (sqrt(2)*b^(1/4)*tan(c + d*x))/a^(1/4)))/(8*sqrt(2)*a^(7/4)*(a + b)*d) - ((sqrt(a) - sqrt(b))*b^(1/4)*atan(1 + (sqrt(2)*b^(1/4)*tan(c + d*x))/a^(1/4)))/(2*sqrt(2)*a^(3/4)*(a + b)^2*d) - ((sqrt(a) - 3*sqrt(b))*b^(1/4)*atan(1 + (sqrt(2)*b^(1/4)*tan(c + d*x))/a^(1/4)))/(8*sqrt(2)*a^(7/4)*(a + b)*d) - ((sqrt(a) + sqrt(b))*b^(1/4)*log(sqrt(a) - sqrt(2)*a^(1/4)*b^(1/4)*tan(c + d*x) + sqrt(b)*tan(c + d*x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)^2*d) - ((sqrt(a) + 3*sqrt(b))*b^(1/4)*log(sqrt(a) - sqrt(2)*a^(1/4)*b^(1/4)*tan(c + d*x) + sqrt(b)*tan(c + d*x)^2))/(16*sqrt(2)*a^(7/4)*(a + b)*d) + ((sqrt(a) + sqrt(b))*b^(1/4)*log(sqrt(a) + sqrt(2)*a^(1/4)*b^(1/4)*tan(c + d*x) + sqrt(b)*tan(c + d*x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)^2*d) + ((sqrt(a) + 3*sqrt(b))*b^(1/4)*log(sqrt(a) + sqrt(2)*a^(1/4)*b^(1/4)*tan(c + d*x) + sqrt(b)*tan(c + d*x)^2))/(16*sqrt(2)*a^(7/4)*(a + b)*d) + (b*tan(c + d*x)*(1 - tan(c + d*x)^2))/(4*a*(a + b)*d*(a + b*tan(c + d*x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*tan(e+f*x)^4)^(p/2)=#


    @test_int [(a + b*tan(c + d*x)^4)^(1/2), x, 8, (sqrt(a + b)*atan((sqrt(a + b)*tan(c + d*x))/sqrt(a + b*tan(c + d*x)^4)))/(2*d) + (sqrt(b)*tan(c + d*x)*sqrt(a + b*tan(c + d*x)^4))/(d*(sqrt(a) + sqrt(b)*tan(c + d*x)^2)) - (a^(1/4)*b^(1/4)*EllipticE(2*atan((b^(1/4)*tan(c + d*x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(c + d*x)^2)*sqrt((a + b*tan(c + d*x)^4)/(sqrt(a) + sqrt(b)*tan(c + d*x)^2)^2))/(d*sqrt(a + b*tan(c + d*x)^4)) + ((sqrt(a) - sqrt(b))*b^(1/4)*EllipticF(2*atan((b^(1/4)*tan(c + d*x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(c + d*x)^2)*sqrt((a + b*tan(c + d*x)^4)/(sqrt(a) + sqrt(b)*tan(c + d*x)^2)^2))/(2*a^(1/4)*d*sqrt(a + b*tan(c + d*x)^4)) - (b^(1/4)*(a + b)*EllipticF(2*atan((b^(1/4)*tan(c + d*x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(c + d*x)^2)*sqrt((a + b*tan(c + d*x)^4)/(sqrt(a) + sqrt(b)*tan(c + d*x)^2)^2))/(2*a^(1/4)*(sqrt(a) - sqrt(b))*d*sqrt(a + b*tan(c + d*x)^4)) + ((sqrt(a) + sqrt(b))*(a + b)*EllipticPi(-((sqrt(a) - sqrt(b))^2/(4*sqrt(a)*sqrt(b))), 2*atan((b^(1/4)*tan(c + d*x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(c + d*x)^2)*sqrt((a + b*tan(c + d*x)^4)/(sqrt(a) + sqrt(b)*tan(c + d*x)^2)^2))/(4*a^(1/4)*(sqrt(a) - sqrt(b))*b^(1/4)*d*sqrt(a + b*tan(c + d*x)^4))]
    @test_int [1/(a + b*tan(c + d*x)^4)^(1/2), x, 4, atan((sqrt(a + b)*tan(c + d*x))/sqrt(a + b*tan(c + d*x)^4))/(2*sqrt(a + b)*d) - (b^(1/4)*EllipticF(2*atan((b^(1/4)*tan(c + d*x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(c + d*x)^2)*sqrt((a + b*tan(c + d*x)^4)/(sqrt(a) + sqrt(b)*tan(c + d*x)^2)^2))/(2*a^(1/4)*(sqrt(a) - sqrt(b))*d*sqrt(a + b*tan(c + d*x)^4)) + ((sqrt(a) + sqrt(b))*EllipticPi(-((sqrt(a) - sqrt(b))^2/(4*sqrt(a)*sqrt(b))), 2*atan((b^(1/4)*tan(c + d*x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(c + d*x)^2)*sqrt((a + b*tan(c + d*x)^4)/(sqrt(a) + sqrt(b)*tan(c + d*x)^2)^2))/(4*a^(1/4)*(sqrt(a) - sqrt(b))*b^(1/4)*d*sqrt(a + b*tan(c + d*x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*tan(e+f*x)^4)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tan(x)^3*sqrt(a + b*tan(x)^4), x, 8, ((a + 2*b)*atanh((sqrt(b)*tan(x)^2)/sqrt(a + b*tan(x)^4)))/(4*sqrt(b)) + (1/2)*sqrt(a + b)*atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4))) - (1/4)*(2 - tan(x)^2)*sqrt(a + b*tan(x)^4)]
    @test_int [tan(x)^1*sqrt(a + b*tan(x)^4), x, 8, (-(1/2))*sqrt(b)*atanh((sqrt(b)*tan(x)^2)/sqrt(a + b*tan(x)^4)) - (1/2)*sqrt(a + b)*atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4))) + (1/2)*sqrt(a + b*tan(x)^4)]
    @test_int [cot(x)^1*sqrt(a + b*tan(x)^4), x, 11, (1/2)*sqrt(b)*atanh((sqrt(b)*tan(x)^2)/sqrt(a + b*tan(x)^4)) + (1/2)*sqrt(a + b)*atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4))) - (1/2)*sqrt(a)*atanh(sqrt(a + b*tan(x)^4)/sqrt(a))]

    @test_int [tan(x)^2*sqrt(a + b*tan(x)^4), x, 12, (-(1/2))*sqrt(a + b)*atan((sqrt(a + b)*tan(x))/sqrt(a + b*tan(x)^4)) + (1/3)*tan(x)*sqrt(a + b*tan(x)^4) - (sqrt(b)*tan(x)*sqrt(a + b*tan(x)^4))/(sqrt(a) + sqrt(b)*tan(x)^2) + (a^(1/4)*b^(1/4)*EllipticE(2*atan((b^(1/4)*tan(x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(x)^2)*sqrt((a + b*tan(x)^4)/(sqrt(a) + sqrt(b)*tan(x)^2)^2))/sqrt(a + b*tan(x)^4) + (a^(3/4)*EllipticF(2*atan((b^(1/4)*tan(x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(x)^2)*sqrt((a + b*tan(x)^4)/(sqrt(a) + sqrt(b)*tan(x)^2)^2))/(3*b^(1/4)*sqrt(a + b*tan(x)^4)) - ((sqrt(a) - sqrt(b))*b^(1/4)*EllipticF(2*atan((b^(1/4)*tan(x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(x)^2)*sqrt((a + b*tan(x)^4)/(sqrt(a) + sqrt(b)*tan(x)^2)^2))/(2*a^(1/4)*sqrt(a + b*tan(x)^4)) + (b^(1/4)*(a + b)*EllipticF(2*atan((b^(1/4)*tan(x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(x)^2)*sqrt((a + b*tan(x)^4)/(sqrt(a) + sqrt(b)*tan(x)^2)^2))/(2*a^(1/4)*(sqrt(a) - sqrt(b))*sqrt(a + b*tan(x)^4)) - ((sqrt(a) + sqrt(b))*(a + b)*EllipticPi(-((sqrt(a) - sqrt(b))^2/(4*sqrt(a)*sqrt(b))), 2*atan((b^(1/4)*tan(x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(x)^2)*sqrt((a + b*tan(x)^4)/(sqrt(a) + sqrt(b)*tan(x)^2)^2))/(4*a^(1/4)*(sqrt(a) - sqrt(b))*b^(1/4)*sqrt(a + b*tan(x)^4))]


    @test_int [tan(x)^3*(a + b*tan(x)^4)^(3/2), x, 9, ((3*a^2 + 12*a*b + 8*b^2)*atanh((sqrt(b)*tan(x)^2)/sqrt(a + b*tan(x)^4)))/(16*sqrt(b)) + (1/2)*(a + b)^(3/2)*atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4))) - (1/16)*(8*(a + b) - (3*a + 4*b)*tan(x)^2)*sqrt(a + b*tan(x)^4) - (1/24)*(4 - 3*tan(x)^2)*(a + b*tan(x)^4)^(3/2)]
    @test_int [tan(x)^1*(a + b*tan(x)^4)^(3/2), x, 9, (-(1/4))*sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*tan(x)^2)/sqrt(a + b*tan(x)^4)) - (1/2)*(a + b)^(3/2)*atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4))) + (1/4)*(2*(a + b) - b*tan(x)^2)*sqrt(a + b*tan(x)^4) + (1/6)*(a + b*tan(x)^4)^(3/2)]
    @test_int [cot(x)^1*(a + b*tan(x)^4)^(3/2), x, 13, (1/4)*sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*tan(x)^2)/sqrt(a + b*tan(x)^4)) + (1/2)*(a + b)^(3/2)*atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4))) - (1/2)*a^(3/2)*atanh(sqrt(a + b*tan(x)^4)/sqrt(a)) + (1/2)*a*sqrt(a + b*tan(x)^4) - (1/4)*(2*(a + b) - b*tan(x)^2)*sqrt(a + b*tan(x)^4)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(x)^3/sqrt(a + b*tan(x)^4), x, 7, atanh((sqrt(b)*tan(x)^2)/sqrt(a + b*tan(x)^4))/(2*sqrt(b)) + atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4)))/(2*sqrt(a + b))]
    @test_int [tan(x)^1/sqrt(a + b*tan(x)^4), x, 4, -(atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4)))/(2*sqrt(a + b)))]
    @test_int [cot(x)^1/sqrt(a + b*tan(x)^4), x, 9, atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4)))/(2*sqrt(a + b)) - atanh(sqrt(a + b*tan(x)^4)/sqrt(a))/(2*sqrt(a))]

    @test_int [tan(x)^2/sqrt(a + b*tan(x)^4), x, 4, -(atan((sqrt(a + b)*tan(x))/sqrt(a + b*tan(x)^4))/(2*sqrt(a + b))) + (a^(1/4)*EllipticF(2*atan((b^(1/4)*tan(x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(x)^2)*sqrt((a + b*tan(x)^4)/(sqrt(a) + sqrt(b)*tan(x)^2)^2))/(2*(sqrt(a) - sqrt(b))*b^(1/4)*sqrt(a + b*tan(x)^4)) - ((sqrt(a) + sqrt(b))*EllipticPi(-((sqrt(a) - sqrt(b))^2/(4*sqrt(a)*sqrt(b))), 2*atan((b^(1/4)*tan(x))/a^(1/4)), 1/2)*(sqrt(a) + sqrt(b)*tan(x)^2)*sqrt((a + b*tan(x)^4)/(sqrt(a) + sqrt(b)*tan(x)^2)^2))/(4*a^(1/4)*(sqrt(a) - sqrt(b))*b^(1/4)*sqrt(a + b*tan(x)^4))]


    @test_int [tan(x)^3/(a + b*tan(x)^4)^(3/2), x, 6, atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4)))/(2*(a + b)^(3/2)) - (1 - tan(x)^2)/(2*(a + b)*sqrt(a + b*tan(x)^4))]
    @test_int [tan(x)^1/(a + b*tan(x)^4)^(3/2), x, 6, -(atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4)))/(2*(a + b)^(3/2))) + (a + b*tan(x)^2)/(2*a*(a + b)*sqrt(a + b*tan(x)^4))]
    @test_int [cot(x)^1/(a + b*tan(x)^4)^(3/2), x, 12, atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4)))/(2*(a + b)^(3/2)) - atanh(sqrt(a + b*tan(x)^4)/sqrt(a))/(2*a^(3/2)) + 1/(2*a*sqrt(a + b*tan(x)^4)) - (a + b*tan(x)^2)/(2*a*(a + b)*sqrt(a + b*tan(x)^4))]


    @test_int [tan(x)^3/(a + b*tan(x)^4)^(5/2), x, 7, atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4)))/(2*(a + b)^(5/2)) - (1 - tan(x)^2)/(6*(a + b)*(a + b*tan(x)^4)^(3/2)) - (3*a + (-2*a + b)*tan(x)^2)/(6*a*(a + b)^2*sqrt(a + b*tan(x)^4))]
    @test_int [tan(x)^1/(a + b*tan(x)^4)^(5/2), x, 7, -(atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4)))/(2*(a + b)^(5/2))) + (a + b*tan(x)^2)/(6*a*(a + b)*(a + b*tan(x)^4)^(3/2)) + (3*a^2 + b*(5*a + 2*b)*tan(x)^2)/(6*a^2*(a + b)^2*sqrt(a + b*tan(x)^4))]
    @test_int [cot(x)^1/(a + b*tan(x)^4)^(5/2), x, 14, atanh((a - b*tan(x)^2)/(sqrt(a + b)*sqrt(a + b*tan(x)^4)))/(2*(a + b)^(5/2)) - atanh(sqrt(a + b*tan(x)^4)/sqrt(a))/(2*a^(5/2)) + 1/(6*a*(a + b*tan(x)^4)^(3/2)) - (a + b*tan(x)^2)/(6*a*(a + b)*(a + b*tan(x)^4)^(3/2)) + 1/(2*a^2*sqrt(a + b*tan(x)^4)) - (3*a^2 + b*(5*a + 2*b)*tan(x)^2)/(6*a^2*(a + b)^2*sqrt(a + b*tan(x)^4))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*tan(e+f*x)^(n/2))^p=#


    @test_int [(d*tan(e + f*x))^m*(a + b*sqrt(c*tan(e + f*x)))^2, x, 9, ((a^2 - b^2*sqrt(-c^2))*Hypergeometric2F1(1, 1 + m, 2 + m, -((c*tan(e + f*x))/sqrt(-c^2)))*tan(e + f*x)*(d*tan(e + f*x))^m)/(2*f*(1 + m)) + ((a^2 + b^2*sqrt(-c^2))*Hypergeometric2F1(1, 1 + m, 2 + m, (c*tan(e + f*x))/sqrt(-c^2))*tan(e + f*x)*(d*tan(e + f*x))^m)/(2*f*(1 + m)) + (4*a*b*Hypergeometric2F1(1, (1/4)*(3 + 2*m), (1/4)*(7 + 2*m), -tan(e + f*x)^2)*(c*tan(e + f*x))^(3/2)*(d*tan(e + f*x))^m)/(c*f*(3 + 2*m))]
    @test_int [(d*tan(e + f*x))^m*(a + b*sqrt(c*tan(e + f*x)))^1, x, 7, (a*Hypergeometric2F1(1, (1 + m)/2, (3 + m)/2, -tan(e + f*x)^2)*tan(e + f*x)*(d*tan(e + f*x))^m)/(f*(1 + m)) + (2*b*Hypergeometric2F1(1, (1/4)*(3 + 2*m), (1/4)*(7 + 2*m), -tan(e + f*x)^2)*(c*tan(e + f*x))^(3/2)*(d*tan(e + f*x))^m)/(c*f*(3 + 2*m))]
    @test_int [(d*tan(e + f*x))^m/(a + b*sqrt(c*tan(e + f*x)))^1, x, 14, (a*(a^2 - b^2*sqrt(-c^2))*Hypergeometric2F1(1, 1 + m, 2 + m, -((c*tan(e + f*x))/sqrt(-c^2)))*tan(e + f*x)*(d*tan(e + f*x))^m)/(2*(a^4 + b^4*c^2)*f*(1 + m)) + (a*(a^2 + b^2*sqrt(-c^2))*Hypergeometric2F1(1, 1 + m, 2 + m, (c*tan(e + f*x))/sqrt(-c^2))*tan(e + f*x)*(d*tan(e + f*x))^m)/(2*(a^4 + b^4*c^2)*f*(1 + m)) + (b^4*c^2*Hypergeometric2F1(1, 2*(1 + m), 3 + 2*m, -((b*sqrt(c*tan(e + f*x)))/a))*tan(e + f*x)*(d*tan(e + f*x))^m)/(a*(a^4 + b^4*c^2)*f*(1 + m)) - (b*(a^2 - b^2*sqrt(-c^2))*Hypergeometric2F1(1, (1/2)*(3 + 2*m), (1/2)*(5 + 2*m), -((c*tan(e + f*x))/sqrt(-c^2)))*(c*tan(e + f*x))^(3/2)*(d*tan(e + f*x))^m)/(c*(a^4 + b^4*c^2)*f*(3 + 2*m)) - (b*(a^2 + b^2*sqrt(-c^2))*Hypergeometric2F1(1, (1/2)*(3 + 2*m), (1/2)*(5 + 2*m), (c*tan(e + f*x))/sqrt(-c^2))*(c*tan(e + f*x))^(3/2)*(d*tan(e + f*x))^m)/(c*(a^4 + b^4*c^2)*f*(3 + 2*m))]
    @test_int [(d*tan(e + f*x))^m/(a + b*sqrt(c*tan(e + f*x)))^2, x, 15, ((a^6 - 3*a^2*b^4*c^2 - 3*a^4*b^2*sqrt(-c^2) - b^6*(-c^2)^(3/2))*Hypergeometric2F1(1, 1 + m, 2 + m, -((c*tan(e + f*x))/sqrt(-c^2)))*tan(e + f*x)*(d*tan(e + f*x))^m)/(2*(a^4 + b^4*c^2)^2*f*(1 + m)) + ((a^6 - 3*a^2*b^4*c^2 + 3*a^4*b^2*sqrt(-c^2) + b^6*(-c^2)^(3/2))*Hypergeometric2F1(1, 1 + m, 2 + m, (c*tan(e + f*x))/sqrt(-c^2))*tan(e + f*x)*(d*tan(e + f*x))^m)/(2*(a^4 + b^4*c^2)^2*f*(1 + m)) + (4*a^2*b^4*c^2*Hypergeometric2F1(1, 2*(1 + m), 3 + 2*m, -((b*sqrt(c*tan(e + f*x)))/a))*tan(e + f*x)*(d*tan(e + f*x))^m)/((a^4 + b^4*c^2)^2*f*(1 + m)) + (b^4*c^2*Hypergeometric2F1(2, 2*(1 + m), 3 + 2*m, -((b*sqrt(c*tan(e + f*x)))/a))*tan(e + f*x)*(d*tan(e + f*x))^m)/(a^2*(a^4 + b^4*c^2)*f*(1 + m)) - (2*a*b*(a^4 - b^4*c^2 - 2*a^2*b^2*sqrt(-c^2))*Hypergeometric2F1(1, (1/2)*(3 + 2*m), (1/2)*(5 + 2*m), -((c*tan(e + f*x))/sqrt(-c^2)))*(c*tan(e + f*x))^(3/2)*(d*tan(e + f*x))^m)/(c*(a^4 + b^4*c^2)^2*f*(3 + 2*m)) - (2*a*b*(a^4 - b^4*c^2 + 2*a^2*b^2*sqrt(-c^2))*Hypergeometric2F1(1, (1/2)*(3 + 2*m), (1/2)*(5 + 2*m), (c*tan(e + f*x))/sqrt(-c^2))*(c*tan(e + f*x))^(3/2)*(d*tan(e + f*x))^m)/(c*(a^4 + b^4*c^2)^2*f*(3 + 2*m))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(b*(c*tan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*tan(e + f*x))^m*(b*(c*tan(e + f*x))^n)^p, x, 4, (Hypergeometric2F1(1, (1/2)*(1 + m + n*p), (1/2)*(3 + m + n*p), -tan(e + f*x)^2)*tan(e + f*x)*(d*tan(e + f*x))^m*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + m + n*p))]


    @test_int [tan(e + f*x)^2*(b*(c*tan(e + f*x))^n)^p, x, 4, (Hypergeometric2F1(1, (1/2)*(3 + n*p), (1/2)*(5 + n*p), -tan(e + f*x)^2)*tan(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p)/(f*(3 + n*p))]
    @test_int [tan(e + f*x)^0*(b*(c*tan(e + f*x))^n)^p, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + n*p), (1/2)*(3 + n*p), -tan(e + f*x)^2)*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]
    @test_int [cot(e + f*x)^2*(b*(c*tan(e + f*x))^n)^p, x, 4, -((cot(e + f*x)*Hypergeometric2F1(1, (1/2)*(-1 + n*p), (1/2)*(1 + n*p), -tan(e + f*x)^2)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 - n*p)))]
    @test_int [cot(e + f*x)^4*(b*(c*tan(e + f*x))^n)^p, x, 4, -((cot(e + f*x)^3*Hypergeometric2F1(1, (1/2)*(-3 + n*p), (1/2)*(-1 + n*p), -tan(e + f*x)^2)*(b*(c*tan(e + f*x))^n)^p)/(f*(3 - n*p)))]
    @test_int [cot(e + f*x)^6*(b*(c*tan(e + f*x))^n)^p, x, 4, -((cot(e + f*x)^5*Hypergeometric2F1(1, (1/2)*(-5 + n*p), (1/2)*(-3 + n*p), -tan(e + f*x)^2)*(b*(c*tan(e + f*x))^n)^p)/(f*(5 - n*p)))]

    @test_int [tan(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p, x, 4, (Hypergeometric2F1(1, (1/2)*(4 + n*p), (1/2)*(6 + n*p), -tan(e + f*x)^2)*tan(e + f*x)^4*(b*(c*tan(e + f*x))^n)^p)/(f*(4 + n*p))]
    @test_int [tan(e + f*x)^1*(b*(c*tan(e + f*x))^n)^p, x, 4, (Hypergeometric2F1(1, (1/2)*(2 + n*p), (1/2)*(4 + n*p), -tan(e + f*x)^2)*tan(e + f*x)^2*(b*(c*tan(e + f*x))^n)^p)/(f*(2 + n*p))]
    @test_int [cot(e + f*x)^1*(b*(c*tan(e + f*x))^n)^p, x, 4, (Hypergeometric2F1(1, (n*p)/2, 1 + (n*p)/2, -tan(e + f*x)^2)*(b*(c*tan(e + f*x))^n)^p)/(f*n*p)]
    @test_int [cot(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p, x, 4, -((cot(e + f*x)^2*Hypergeometric2F1(1, (1/2)*(-2 + n*p), (n*p)/2, -tan(e + f*x)^2)*(b*(c*tan(e + f*x))^n)^p)/(f*(2 - n*p)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*tan(e + f*x))^m*(a + b*(c*tan(e + f*x))^n)^p, x, 0, Unintegrable((d*tan(e + f*x))^m*(a + b*(c*tan(e + f*x))^n)^p, x)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^m*(a+b*tan(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^m*(a+b*tan(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*cot(e + f*x))^m*(b*tan(e + f*x)^2)^p, x, 4, ((d*cot(e + f*x))^m*Hypergeometric2F1(1, (1/2)*(1 - m + 2*p), (1/2)*(3 - m + 2*p), -tan(e + f*x)^2)*tan(e + f*x)*(b*tan(e + f*x)^2)^p)/(f*(1 - m + 2*p))]


    @test_int [(d*cot(e + f*x))^m*(a + b*tan(e + f*x)^2)^p, x, 4, (AppellF1((1 - m)/2, 1, -p, (3 - m)/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*(d*cot(e + f*x))^m*tan(e + f*x)*(a + b*tan(e + f*x)^2)^p)/((1 + (b*tan(e + f*x)^2)/a)^p*(f*(1 - m)))]


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^m*(a+b*tan(e+f*x)^3)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^m*(a+b*tan(e+f*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^m*(b*(cTan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*cot(e + f*x))^m*(b*(c*tan(e + f*x))^n)^p, x, 4, ((d*cot(e + f*x))^m*Hypergeometric2F1(1, (1/2)*(1 - m + n*p), (1/2)*(3 - m + n*p), -tan(e + f*x)^2)*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 - m + n*p))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*cot(e + f*x))^m*(a + b*(c*tan(e + f*x))^n)^p, x, 1, (d*cot(e + f*x))^m*(tan(e + f*x)/d)^m*Unintegrable((a + b*(c*tan(e + f*x))^n)^p/(tan(e + f*x)/d)^m, x)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*sec(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*sec(e+f*x))^m*(a+b*tan(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*tan(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sec(c + d*x)^3*(a + b*tan(c + d*x)^2), x, 4, ((4*a - b)*atanh(sin(c + d*x)))/(8*d) + ((4*a - b)*sec(c + d*x)*tan(c + d*x))/(8*d) + (b*sec(c + d*x)^3*tan(c + d*x))/(4*d)]
    @test_int [sec(c + d*x)^1*(a + b*tan(c + d*x)^2), x, 3, ((2*a - b)*atanh(sin(c + d*x)))/(2*d) + (b*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [cos(c + d*x)^1*(a + b*tan(c + d*x)^2), x, 3, (b*atanh(sin(c + d*x)))/d + ((a - b)*sin(c + d*x))/d]
    @test_int [cos(c + d*x)^3*(a + b*tan(c + d*x)^2), x, 2, (a*sin(c + d*x))/d - ((a - b)*sin(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^5*(a + b*tan(c + d*x)^2), x, 3, (a*sin(c + d*x))/d - ((2*a - b)*sin(c + d*x)^3)/(3*d) + ((a - b)*sin(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^7*(a + b*tan(c + d*x)^2), x, 3, (a*sin(c + d*x))/d - ((3*a - b)*sin(c + d*x)^3)/(3*d) + ((3*a - 2*b)*sin(c + d*x)^5)/(5*d) - ((a - b)*sin(c + d*x)^7)/(7*d)]

    @test_int [sec(c + d*x)^6*(a + b*tan(c + d*x)^2), x, 3, (a*tan(c + d*x))/d + ((2*a + b)*tan(c + d*x)^3)/(3*d) + ((a + 2*b)*tan(c + d*x)^5)/(5*d) + (b*tan(c + d*x)^7)/(7*d)]
    @test_int [sec(c + d*x)^4*(a + b*tan(c + d*x)^2), x, 3, (a*tan(c + d*x))/d + ((a + b)*tan(c + d*x)^3)/(3*d) + (b*tan(c + d*x)^5)/(5*d)]
    @test_int [sec(c + d*x)^2*(a + b*tan(c + d*x)^2), x, 2, (a*tan(c + d*x))/d + (b*tan(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^2*(a + b*tan(c + d*x)^2), x, 3, (1/2)*(a + b)*x + ((a - b)*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [cos(c + d*x)^4*(a + b*tan(c + d*x)^2), x, 4, (1/8)*(3*a + b)*x + ((3*a + b)*cos(c + d*x)*sin(c + d*x))/(8*d) + ((a - b)*cos(c + d*x)^3*sin(c + d*x))/(4*d)]
    @test_int [cos(c + d*x)^6*(a + b*tan(c + d*x)^2), x, 5, (1/16)*(5*a + b)*x + ((5*a + b)*cos(c + d*x)*sin(c + d*x))/(16*d) + ((5*a + b)*cos(c + d*x)^3*sin(c + d*x))/(24*d) + ((a - b)*cos(c + d*x)^5*sin(c + d*x))/(6*d)]


    @test_int [sec(c + d*x)^3*(a + b*tan(c + d*x)^2)^2, x, 5, ((8*a^2 - 4*a*b + b^2)*atanh(sin(c + d*x)))/(16*d) + ((8*a^2 - 4*a*b + b^2)*sec(c + d*x)*tan(c + d*x))/(16*d) + ((8*a - 3*b)*b*sec(c + d*x)^3*tan(c + d*x))/(24*d) + (b*sec(c + d*x)^5*(a - (a - b)*sin(c + d*x)^2)*tan(c + d*x))/(6*d)]
    @test_int [sec(c + d*x)^1*(a + b*tan(c + d*x)^2)^2, x, 4, ((8*a^2 - 8*a*b + 3*b^2)*atanh(sin(c + d*x)))/(8*d) + (3*(2*a - b)*b*sec(c + d*x)*tan(c + d*x))/(8*d) + (b*sec(c + d*x)^3*(a - (a - b)*sin(c + d*x)^2)*tan(c + d*x))/(4*d)]
    @test_int [cos(c + d*x)^1*(a + b*tan(c + d*x)^2)^2, x, 5, ((4*a - 3*b)*b*atanh(sin(c + d*x)))/(2*d) + ((a - b)^2*sin(c + d*x))/d + (b^2*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [cos(c + d*x)^3*(a + b*tan(c + d*x)^2)^2, x, 4, (b^2*atanh(sin(c + d*x)))/d + ((a^2 - b^2)*sin(c + d*x))/d - ((a - b)^2*sin(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^5*(a + b*tan(c + d*x)^2)^2, x, 3, (a^2*sin(c + d*x))/d - (2*a*(a - b)*sin(c + d*x)^3)/(3*d) + ((a - b)^2*sin(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^7*(a + b*tan(c + d*x)^2)^2, x, 3, (a^2*sin(c + d*x))/d - (a*(3*a - 2*b)*sin(c + d*x)^3)/(3*d) + ((a - b)*(3*a - b)*sin(c + d*x)^5)/(5*d) - ((a - b)^2*sin(c + d*x)^7)/(7*d)]
    @test_int [cos(c + d*x)^9*(a + b*tan(c + d*x)^2)^2, x, 3, (a^2*sin(c + d*x))/d - (2*a*(2*a - b)*sin(c + d*x)^3)/(3*d) + ((6*a^2 - 6*a*b + b^2)*sin(c + d*x)^5)/(5*d) - (2*(a - b)*(2*a - b)*sin(c + d*x)^7)/(7*d) + ((a - b)^2*sin(c + d*x)^9)/(9*d)]

    @test_int [sec(c + d*x)^6*(a + b*tan(c + d*x)^2)^2, x, 3, (a^2*tan(c + d*x))/d + (2*a*(a + b)*tan(c + d*x)^3)/(3*d) + ((a^2 + 4*a*b + b^2)*tan(c + d*x)^5)/(5*d) + (2*b*(a + b)*tan(c + d*x)^7)/(7*d) + (b^2*tan(c + d*x)^9)/(9*d)]
    @test_int [sec(c + d*x)^4*(a + b*tan(c + d*x)^2)^2, x, 3, (a^2*tan(c + d*x))/d + (a*(a + 2*b)*tan(c + d*x)^3)/(3*d) + (b*(2*a + b)*tan(c + d*x)^5)/(5*d) + (b^2*tan(c + d*x)^7)/(7*d)]
    @test_int [sec(c + d*x)^2*(a + b*tan(c + d*x)^2)^2, x, 3, (a^2*tan(c + d*x))/d + (2*a*b*tan(c + d*x)^3)/(3*d) + (b^2*tan(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^2*(a + b*tan(c + d*x)^2)^2, x, 5, (1/2)*(a - b)*(a + 3*b)*x + ((a - b)^2*cos(c + d*x)*sin(c + d*x))/(2*d) + (b^2*tan(c + d*x))/d]
    @test_int [cos(c + d*x)^4*(a + b*tan(c + d*x)^2)^2, x, 4, (1/8)*(3*a^2 + 2*a*b + 3*b^2)*x + (3*(a^2 - b^2)*cos(c + d*x)*sin(c + d*x))/(8*d) + ((a - b)*cos(c + d*x)^3*sin(c + d*x)*(a + b*tan(c + d*x)^2))/(4*d)]
    @test_int [cos(c + d*x)^6*(a + b*tan(c + d*x)^2)^2, x, 5, (1/16)*(5*a^2 + 2*a*b + b^2)*x + ((5*a^2 + 2*a*b + b^2)*cos(c + d*x)*sin(c + d*x))/(16*d) + ((a - b)*(5*a + 3*b)*cos(c + d*x)^3*sin(c + d*x))/(24*d) + ((a - b)*cos(c + d*x)^5*sin(c + d*x)*(a + b*tan(c + d*x)^2))/(6*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sec(c + d*x)^5/(a + b*tan(c + d*x)^2), x, 5, -(((2*a - 3*b)*atanh(sin(c + d*x)))/(2*b^2*d)) + ((a - b)^(3/2)*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(sqrt(a)*b^2*d) + (sec(c + d*x)*tan(c + d*x))/(2*b*d)]
    @test_int [sec(c + d*x)^3/(a + b*tan(c + d*x)^2), x, 4, atanh(sin(c + d*x))/(b*d) - (sqrt(a - b)*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(sqrt(a)*b*d)]
    @test_int [sec(c + d*x)^1/(a + b*tan(c + d*x)^2), x, 2, atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a))/(sqrt(a)*sqrt(a - b)*d)]
    @test_int [cos(c + d*x)^1/(a + b*tan(c + d*x)^2), x, 3, -((b*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^(3/2)*d)) + sin(c + d*x)/((a - b)*d)]
    @test_int [cos(c + d*x)^3/(a + b*tan(c + d*x)^2), x, 4, (b^2*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^(5/2)*d) + ((a - 2*b)*sin(c + d*x))/((a - b)^2*d) - sin(c + d*x)^3/(3*(a - b)*d)]
    @test_int [cos(c + d*x)^5/(a + b*tan(c + d*x)^2), x, 4, -((b^3*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^(7/2)*d)) + ((a^2 - 3*a*b + 3*b^2)*sin(c + d*x))/((a - b)^3*d) - ((2*a - 3*b)*sin(c + d*x)^3)/(3*(a - b)^2*d) + sin(c + d*x)^5/(5*(a - b)*d)]

    @test_int [sec(c + d*x)^8/(a + b*tan(c + d*x)^2), x, 4, -(((a - b)^3*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(sqrt(a)*b^(7/2)*d)) + ((a^2 - 3*a*b + 3*b^2)*tan(c + d*x))/(b^3*d) - ((a - 3*b)*tan(c + d*x)^3)/(3*b^2*d) + tan(c + d*x)^5/(5*b*d)]
    @test_int [sec(c + d*x)^6/(a + b*tan(c + d*x)^2), x, 4, ((a - b)^2*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(sqrt(a)*b^(5/2)*d) - ((a - 2*b)*tan(c + d*x))/(b^2*d) + tan(c + d*x)^3/(3*b*d)]
    @test_int [sec(c + d*x)^4/(a + b*tan(c + d*x)^2), x, 3, -(((a - b)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(sqrt(a)*b^(3/2)*d)) + tan(c + d*x)/(b*d)]
    @test_int [sec(c + d*x)^2/(a + b*tan(c + d*x)^2), x, 2, atan((sqrt(b)*tan(c + d*x))/sqrt(a))/(sqrt(a)*sqrt(b)*d)]
    @test_int [cos(c + d*x)^2/(a + b*tan(c + d*x)^2), x, 5, ((a - 3*b)*x)/(2*(a - b)^2) + (b^(3/2)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^2*d) + (cos(c + d*x)*sin(c + d*x))/(2*(a - b)*d)]
    @test_int [cos(c + d*x)^4/(a + b*tan(c + d*x)^2), x, 6, ((3*a^2 - 10*a*b + 15*b^2)*x)/(8*(a - b)^3) - (b^(5/2)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^3*d) + ((3*a - 7*b)*cos(c + d*x)*sin(c + d*x))/(8*(a - b)^2*d) + (cos(c + d*x)^3*sin(c + d*x))/(4*(a - b)*d)]


    @test_int [sec(c + d*x)^7/(a + b*tan(c + d*x)^2)^2, x, 6, -(((4*a - 5*b)*atanh(sin(c + d*x)))/(2*b^3*d)) + ((a - b)^(3/2)*(4*a + b)*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^3*d) + ((a - b)*(2*a - b)*sin(c + d*x))/(2*a*b^2*d*(a - (a - b)*sin(c + d*x)^2)) + (sec(c + d*x)*tan(c + d*x))/(2*b*d*(a - (a - b)*sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^5/(a + b*tan(c + d*x)^2)^2, x, 5, atanh(sin(c + d*x))/(b^2*d) - (sqrt(a - b)*(2*a + b)*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^2*d) - ((a - b)*sin(c + d*x))/(2*a*b*d*(a - (a - b)*sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^3/(a + b*tan(c + d*x)^2)^2, x, 3, atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a))/(2*a^(3/2)*sqrt(a - b)*d) + sin(c + d*x)/(2*a*d*(a - (a - b)*sin(c + d*x)^2))]
    @test_int [sec(c + d*x)^1/(a + b*tan(c + d*x)^2)^2, x, 3, ((2*a - b)*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^(3/2)*d) - (b*sin(c + d*x))/(2*a*(a - b)*d*(a - (a - b)*sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^1/(a + b*tan(c + d*x)^2)^2, x, 5, -(((4*a - b)*b*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^(5/2)*d)) + sin(c + d*x)/((a - b)^2*d) + (b^2*sin(c + d*x))/(2*a*(a - b)^2*d*(a - (a - b)*sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^3/(a + b*tan(c + d*x)^2)^2, x, 5, ((6*a - b)*b^2*atanh((sqrt(a - b)*sin(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^(7/2)*d) + ((a - 3*b)*sin(c + d*x))/((a - b)^3*d) - sin(c + d*x)^3/(3*(a - b)^2*d) - (b^3*sin(c + d*x))/(2*a*(a - b)^3*d*(a - (a - b)*sin(c + d*x)^2))]

    @test_int [sec(c + d*x)^8/(a + b*tan(c + d*x)^2)^2, x, 5, ((a - b)^2*(5*a + b)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^(7/2)*d) - ((2*a - 3*b)*tan(c + d*x))/(b^3*d) + tan(c + d*x)^3/(3*b^2*d) - ((a - b)^3*tan(c + d*x))/(2*a*b^3*d*(a + b*tan(c + d*x)^2))]
    @test_int [sec(c + d*x)^6/(a + b*tan(c + d*x)^2)^2, x, 5, -(((3*a^2 - 2*a*b - b^2)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^(5/2)*d)) + tan(c + d*x)/(b^2*d) + ((a - b)^2*tan(c + d*x))/(2*a*b^2*d*(a + b*tan(c + d*x)^2))]
    @test_int [sec(c + d*x)^4/(a + b*tan(c + d*x)^2)^2, x, 3, ((a + b)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^(3/2)*d) - ((a - b)*tan(c + d*x))/(2*a*b*d*(a + b*tan(c + d*x)^2))]
    @test_int [sec(c + d*x)^2/(a + b*tan(c + d*x)^2)^2, x, 3, atan((sqrt(b)*tan(c + d*x))/sqrt(a))/(2*a^(3/2)*sqrt(b)*d) + tan(c + d*x)/(2*a*d*(a + b*tan(c + d*x)^2))]
    @test_int [cos(c + d*x)^2/(a + b*tan(c + d*x)^2)^2, x, 6, ((a - 5*b)*x)/(2*(a - b)^3) + ((5*a - b)*b^(3/2)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^3*d) + (cos(c + d*x)*sin(c + d*x))/(2*(a - b)*d*(a + b*tan(c + d*x)^2)) + (b*(a + b)*tan(c + d*x))/(2*a*(a - b)^2*d*(a + b*tan(c + d*x)^2))]
    @test_int [cos(c + d*x)^4/(a + b*tan(c + d*x)^2)^2, x, 7, ((3*a^2 - 14*a*b + 35*b^2)*x)/(8*(a - b)^4) - ((7*a - b)*b^(5/2)*atan((sqrt(b)*tan(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^4*d) + (3*(a - 3*b)*cos(c + d*x)*sin(c + d*x))/(8*(a - b)^2*d*(a + b*tan(c + d*x)^2)) + (cos(c + d*x)^3*sin(c + d*x))/(4*(a - b)*d*(a + b*tan(c + d*x)^2)) + ((a - 4*b)*b*(3*a + b)*tan(c + d*x))/(8*a*(a - b)^3*d*(a + b*tan(c + d*x)^2))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*tan(e+f*x)^2)^(p/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*sec(e+f*x))^m*(a+b*tan(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*sec(e + f*x))^m*(b*tan(e + f*x)^2)^p, x, 2, ((cos(e + f*x)^2)^((1/2)*(1 + m + 2*p))*Hypergeometric2F1((1/2)*(1 + 2*p), (1/2)*(1 + m + 2*p), (1/2)*(3 + 2*p), sin(e + f*x)^2)*(d*sec(e + f*x))^m*tan(e + f*x)*(b*tan(e + f*x)^2)^p)/(f*(1 + 2*p))]


    @test_int [(d*sec(e + f*x))^m*(a + b*tan(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 1 - m/2, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*(d*sec(e + f*x))^m*tan(e + f*x)*(a + b*tan(e + f*x)^2)^p)/((sec(e + f*x)^2)^(m/2)*(1 + (b*tan(e + f*x)^2)/a)^p*f)]


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*sec(e+f*x))^m*(a+b*tan(e+f*x)^3)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*sec(e+f*x))^m*(a+b*tan(e+f*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*sec(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*sec(e+f*x))^m*(b*(cTan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*sec(e + f*x))^m*(b*(c*tan(e + f*x))^n)^p, x, 2, ((cos(e + f*x)^2)^((1/2)*(1 + m + n*p))*Hypergeometric2F1((1/2)*(1 + n*p), (1/2)*(1 + m + n*p), (1/2)*(3 + n*p), sin(e + f*x)^2)*(d*sec(e + f*x))^m*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]


    @test_int [sec(e + f*x)^6*(b*(c*tan(e + f*x))^n)^p, x, 4, (tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p)) + (2*tan(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p)/(f*(3 + n*p)) + (tan(e + f*x)^5*(b*(c*tan(e + f*x))^n)^p)/(f*(5 + n*p))]
    @test_int [sec(e + f*x)^4*(b*(c*tan(e + f*x))^n)^p, x, 4, (tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p)) + (tan(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p)/(f*(3 + n*p))]
    @test_int [sec(e + f*x)^2*(b*(c*tan(e + f*x))^n)^p, x, 3, (tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]
    @test_int [cos(e + f*x)^0*(b*(c*tan(e + f*x))^n)^p, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + n*p), (1/2)*(3 + n*p), -tan(e + f*x)^2)*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]
    @test_int [cos(e + f*x)^2*(b*(c*tan(e + f*x))^n)^p, x, 3, (Hypergeometric2F1(2, (1/2)*(1 + n*p), (1/2)*(3 + n*p), -tan(e + f*x)^2)*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]

    @test_int [sec(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p, x, 2, ((cos(e + f*x)^2)^((1/2)*(4 + n*p))*Hypergeometric2F1((1/2)*(1 + n*p), (1/2)*(4 + n*p), (1/2)*(3 + n*p), sin(e + f*x)^2)*sec(e + f*x)^3*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]
    @test_int [sec(e + f*x)^1*(b*(c*tan(e + f*x))^n)^p, x, 2, ((cos(e + f*x)^2)^((1/2)*(2 + n*p))*Hypergeometric2F1((1/2)*(1 + n*p), (1/2)*(2 + n*p), (1/2)*(3 + n*p), sin(e + f*x)^2)*sec(e + f*x)*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]
    @test_int [cos(e + f*x)^1*(b*(c*tan(e + f*x))^n)^p, x, 2, ((cos(e + f*x)^2)^((n*p)/2)*Hypergeometric2F1((n*p)/2, (1/2)*(1 + n*p), (1/2)*(3 + n*p), sin(e + f*x)^2)*sin(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]
    @test_int [cos(e + f*x)^3*(b*(c*tan(e + f*x))^n)^p, x, 2, ((cos(e + f*x)^2)^((n*p)/2)*Hypergeometric2F1((1/2)*(-2 + n*p), (1/2)*(1 + n*p), (1/2)*(3 + n*p), sin(e + f*x)^2)*sin(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 + n*p))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*sec(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*sec(e + f*x))^m*(a + b*(c*tan(e + f*x))^n)^p, x, 0, Unintegrable((d*sec(e + f*x))^m*(a + b*(c*tan(e + f*x))^n)^p, x)]


    @test_int [sec(e + f*x)^3*(a + b*(c*tan(e + f*x))^n)^p, x, 0, Unintegrable(sec(e + f*x)^3*(a + b*(c*tan(e + f*x))^n)^p, x)]
    @test_int [sec(e + f*x)^1*(a + b*(c*tan(e + f*x))^n)^p, x, 0, Unintegrable(sec(e + f*x)*(a + b*(c*tan(e + f*x))^n)^p, x)]
    @test_int [cos(e + f*x)^1*(a + b*(c*tan(e + f*x))^n)^p, x, 0, Unintegrable(cos(e + f*x)*(a + b*(c*tan(e + f*x))^n)^p, x)]
    @test_int [cos(e + f*x)^3*(a + b*(c*tan(e + f*x))^n)^p, x, 0, Unintegrable(cos(e + f*x)^3*(a + b*(c*tan(e + f*x))^n)^p, x)]

    @test_int [sec(e + f*x)^6*(a + b*(c*tan(e + f*x))^n)^p, x, 9, (Hypergeometric2F1(1/n, -p, 1 + 1/n, -((b*(c*tan(e + f*x))^n)/a))*tan(e + f*x)*(a + b*(c*tan(e + f*x))^n)^p)/((1 + (b*(c*tan(e + f*x))^n)/a)^p*f) + (2*Hypergeometric2F1(3/n, -p, (3 + n)/n, -((b*(c*tan(e + f*x))^n)/a))*tan(e + f*x)^3*(a + b*(c*tan(e + f*x))^n)^p)/((1 + (b*(c*tan(e + f*x))^n)/a)^p*(3*f)) + (Hypergeometric2F1(5/n, -p, (5 + n)/n, -((b*(c*tan(e + f*x))^n)/a))*tan(e + f*x)^5*(a + b*(c*tan(e + f*x))^n)^p)/((1 + (b*(c*tan(e + f*x))^n)/a)^p*(5*f))]
    @test_int [sec(e + f*x)^4*(a + b*(c*tan(e + f*x))^n)^p, x, 7, (Hypergeometric2F1(1/n, -p, 1 + 1/n, -((b*(c*tan(e + f*x))^n)/a))*tan(e + f*x)*(a + b*(c*tan(e + f*x))^n)^p)/((1 + (b*(c*tan(e + f*x))^n)/a)^p*f) + (Hypergeometric2F1(3/n, -p, (3 + n)/n, -((b*(c*tan(e + f*x))^n)/a))*tan(e + f*x)^3*(a + b*(c*tan(e + f*x))^n)^p)/((1 + (b*(c*tan(e + f*x))^n)/a)^p*(3*f))]
    @test_int [sec(e + f*x)^2*(a + b*(c*tan(e + f*x))^n)^p, x, 3, (Hypergeometric2F1(1/n, -p, 1 + 1/n, -((b*(c*tan(e + f*x))^n)/a))*tan(e + f*x)*(a + b*(c*tan(e + f*x))^n)^p)/((1 + (b*(c*tan(e + f*x))^n)/a)^p*f)]
    @test_int [sec(e + f*x)^0*(a + b*(c*tan(e + f*x))^n)^p, x, 0, Unintegrable((a + b*(c*tan(e + f*x))^n)^p, x)]
    @test_int [cos(e + f*x)^2*(a + b*(c*tan(e + f*x))^n)^p, x, 0, Unintegrable(cos(e + f*x)^2*(a + b*(c*tan(e + f*x))^n)^p, x)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*tan(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*tan(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*csc(e + f*x))^m*(b*tan(e + f*x)^2)^p, x, 4, ((cos(e + f*x)^2)^(1/2 + p)*(d*csc(e + f*x))^m*Hypergeometric2F1((1/2)*(1 + 2*p), (1/2)*(1 - m + 2*p), (1/2)*(3 - m + 2*p), sin(e + f*x)^2)*tan(e + f*x)*(b*tan(e + f*x)^2)^p)/(f*(1 - m + 2*p))]


    @test_int [(d*csc(e + f*x))^m*(a + b*tan(e + f*x)^2)^p, x, 4, (AppellF1((1 - m)/2, 1 - m/2, -p, (3 - m)/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/a))*(d*csc(e + f*x))^m*tan(e + f*x)*(a + b*tan(e + f*x)^2)^p)/((sec(e + f*x)^2)^(m/2)*(1 + (b*tan(e + f*x)^2)/a)^p*(f*(1 - m)))]


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*tan(e+f*x)^3)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*tan(e+f*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(b*(cTan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*csc(e + f*x))^m*(b*(c*tan(e + f*x))^n)^p, x, 4, ((cos(e + f*x)^2)^((1/2)*(1 + n*p))*(d*csc(e + f*x))^m*Hypergeometric2F1((1/2)*(1 + n*p), (1/2)*(1 - m + n*p), (1/2)*(3 - m + n*p), sin(e + f*x)^2)*tan(e + f*x)*(b*(c*tan(e + f*x))^n)^p)/(f*(1 - m + n*p))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*csc(e+f*x))^m*(a+b*(c*tan(e+f*x))^n)^p*when*p*symbolic=#


    @test_int [(d*csc(e + f*x))^m*(a + b*(c*tan(e + f*x))^n)^p, x, 1, (d*csc(e + f*x))^m*(sin(e + f*x)/d)^m*Unintegrable((a + b*(c*tan(e + f*x))^n)^p/(sin(e + f*x)/d)^m, x)]
    end
