@testset "3.5 Logarithm functions" begin
    (A, B, F, a, b, c, d, e, f, g, m, n, p, q, x, ) = @variables A B F a b c d e f g m n p q x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Problems*Involving*Logarithms=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x^m+e*log(c*x^n)^(q-1))*(a*x^m+b*log(c*x^n)^q)^p / x=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*log(c*x^n)^(q-1)*(a*x^m+b*log(c*x^n)^q)^p / x=#


    @test_int [log(c*x^n)^(q - 1)*(a*x^m + b*log(c*x^n)^q)^p/x, x, 1, -((a*m*CannotIntegrate(x^(-1 + m)*(a*x^m + b*log(c*x^n)^q)^p, x))/(b*n*q)) + (a*x^m + b*log(c*x^n)^q)^(1 + p)/(b*n*(1 + p)*q)]


    @test_int [log(c*x^n)^(q - 1)*(a*x^m + b*log(c*x^n)^q)^3/x, x, 10, (b^3*log(c*x^n)^(4*q))/(4*n*q) - (3*a*b^2*x^m*Gamma(3*q, -((m*log(c*x^n))/n))*log(c*x^n)^(3*q))/((c*x^n)^(m/n)*(-((m*log(c*x^n))/n))^(3*q)*n) - (3*a^2*b*x^(2*m)*Gamma(2*q, -((2*m*log(c*x^n))/n))*log(c*x^n)^(2*q))/(4^q*(c*x^n)^((2*m)/n)*(-((m*log(c*x^n))/n))^(2*q)*n) - (a^3*x^(3*m)*Gamma(q, -((3*m*log(c*x^n))/n))*log(c*x^n)^q)/(3^q*(c*x^n)^((3*m)/n)*(-((m*log(c*x^n))/n))^q*n)]
    @test_int [log(c*x^n)^(q - 1)*(a*x^m + b*log(c*x^n)^q)^2/x, x, 8, (b^2*log(c*x^n)^(3*q))/(3*n*q) - (2*a*b*x^m*Gamma(2*q, -((m*log(c*x^n))/n))*log(c*x^n)^(2*q))/((c*x^n)^(m/n)*(-((m*log(c*x^n))/n))^(2*q)*n) - (a^2*x^(2*m)*Gamma(q, -((2*m*log(c*x^n))/n))*log(c*x^n)^q)/(2^q*(c*x^n)^((2*m)/n)*(-((m*log(c*x^n))/n))^q*n)]
    @test_int [log(c*x^n)^(q - 1)*(a*x^m + b*log(c*x^n)^q)^1/x, x, 6, (b*log(c*x^n)^(2*q))/(2*n*q) - (a*x^m*Gamma(q, -((m*log(c*x^n))/n))*log(c*x^n)^q)/((c*x^n)^(m/n)*(-((m*log(c*x^n))/n))^q*n)]
    @test_int [log(c*x^n)^(q - 1)*(a*x^m + b*log(c*x^n)^q)^0/x, x, 2, log(c*x^n)^q/(n*q)]
    @test_int [log(c*x^n)^(q - 1)/(x*(a*x^m + b*log(c*x^n)^q)^1), x, 1, -((a*m*CannotIntegrate(x^(-1 + m)/(a*x^m + b*log(c*x^n)^q), x))/(b*n*q)) + log(a*x^m + b*log(c*x^n)^q)/(b*n*q)]
    @test_int [log(c*x^n)^(q - 1)/(x*(a*x^m + b*log(c*x^n)^q)^2), x, 1, -((a*m*CannotIntegrate(x^(-1 + m)/(a*x^m + b*log(c*x^n)^q)^2, x))/(b*n*q)) - 1/(b*n*q*(a*x^m + b*log(c*x^n)^q))]
    @test_int [log(c*x^n)^(q - 1)/(x*(a*x^m + b*log(c*x^n)^q)^3), x, 1, -((a*m*CannotIntegrate(x^(-1 + m)/(a*x^m + b*log(c*x^n)^q)^3, x))/(b*n*q)) - 1/(2*b*n*q*(a*x^m + b*log(c*x^n)^q)^2)]


    @test_int [log(c*x^n)*(a*x^m + b*log(c*x^n)^2)^3/x, x, 13, -((360*a*b^2*n^5*x^m)/m^6) - (9*a^2*b*n^3*x^(2*m))/(8*m^4) - (a^3*n*x^(3*m))/(9*m^2) + (360*a*b^2*n^4*x^m*log(c*x^n))/m^5 + (9*a^2*b*n^2*x^(2*m)*log(c*x^n))/(4*m^3) + (a^3*x^(3*m)*log(c*x^n))/(3*m) - (180*a*b^2*n^3*x^m*log(c*x^n)^2)/m^4 - (9*a^2*b*n*x^(2*m)*log(c*x^n)^2)/(4*m^2) + (60*a*b^2*n^2*x^m*log(c*x^n)^3)/m^3 + (3*a^2*b*x^(2*m)*log(c*x^n)^3)/(2*m) - (15*a*b^2*n*x^m*log(c*x^n)^4)/m^2 + (3*a*b^2*x^m*log(c*x^n)^5)/m + (b^3*log(c*x^n)^8)/(8*n)]
    @test_int [log(c*x^n)*(a*x^m + b*log(c*x^n)^2)^2/x, x, 8, -((12*a*b*n^3*x^m)/m^4) - (a^2*n*x^(2*m))/(4*m^2) + (12*a*b*n^2*x^m*log(c*x^n))/m^3 + (a^2*x^(2*m)*log(c*x^n))/(2*m) - (6*a*b*n*x^m*log(c*x^n)^2)/m^2 + (2*a*b*x^m*log(c*x^n)^3)/m + (b^2*log(c*x^n)^6)/(6*n)]
    @test_int [log(c*x^n)*(a*x^m + b*log(c*x^n)^2)^1/x, x, 5, -((a*n*x^m)/m^2) + (a*x^m*log(c*x^n))/m + (b*log(c*x^n)^4)/(4*n)]
    @test_int [log(c*x^n)*(a*x^m + b*log(c*x^n)^2)^0/x, x, 1, log(c*x^n)^2/(2*n)]
    @test_int [log(c*x^n)/(x*(a*x^m + b*log(c*x^n)^2)^1), x, 1, -((a*m*CannotIntegrate(x^(-1 + m)/(a*x^m + b*log(c*x^n)^2), x))/(2*b*n)) + log(a*x^m + b*log(c*x^n)^2)/(2*b*n)]
    @test_int [log(c*x^n)/(x*(a*x^m + b*log(c*x^n)^2)^2), x, 1, -((a*m*CannotIntegrate(x^(-1 + m)/(a*x^m + b*log(c*x^n)^2)^2, x))/(2*b*n)) - 1/(2*b*n*(a*x^m + b*log(c*x^n)^2))]
    @test_int [log(c*x^n)/(x*(a*x^m + b*log(c*x^n)^2)^3), x, 1, -((a*m*CannotIntegrate(x^(-1 + m)/(a*x^m + b*log(c*x^n)^2)^3, x))/(2*b*n)) - 1/(4*b*n*(a*x^m + b*log(c*x^n)^2)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x^m+e*log(c*x^n)^(q-1))*(a*x^m+b*log(c*x^n)^q)^p / x*when*a*e*m-b*d*n*q=0=#


    @test_int [(a*m*x^m + b*n*q*log(c*x^n)^(q - 1))*(a*x^m + b*log(c*x^n)^q)^p/x, x, 1, (a*x^m + b*log(c*x^n)^q)^(1 + p)/(1 + p)]


    @test_int [(a*m*x^m + b*n*q*log(c*x^n)^(q - 1))*(a*x^m + b*log(c*x^n)^q)^2/x, x, 1, (1/3)*(a*x^m + b*log(c*x^n)^q)^3]
    @test_int [(a*m*x^m + b*n*q*log(c*x^n)^(q - 1))*(a*x^m + b*log(c*x^n)^q)^1/x, x, 1, (1/2)*(a*x^m + b*log(c*x^n)^q)^2]
    @test_int [(a*m*x^m + b*n*q*log(c*x^n)^(q - 1))*(a*x^m + b*log(c*x^n)^q)^0/x, x, 4, a*x^m + b*log(c*x^n)^q]
    @test_int [(a*m*x^m + b*n*q*log(c*x^n)^(q - 1))/(x*(a*x^m + b*log(c*x^n)^q)^1), x, 1, log(a*x^m + b*log(c*x^n)^q)]
    @test_int [(a*m*x^m + b*n*q*log(c*x^n)^(q - 1))/(x*(a*x^m + b*log(c*x^n)^q)^2), x, 1, -(1/(a*x^m + b*log(c*x^n)^q))]
    @test_int [(a*m*x^m + b*n*q*log(c*x^n)^(q - 1))/(x*(a*x^m + b*log(c*x^n)^q)^3), x, 1, -(1/(2*(a*x^m + b*log(c*x^n)^q)^2))]


    @test_int [(a*x^2 + b*x*log(c*x^n)^2)^2*(a/x^2 + 2*b*n/x^3*log(c*x^n)), x, 3, (1/3)*(a*x + b*log(c*x^n)^2)^3]
    @test_int [(a*x^2 + b*x*log(c*x^n)^2)^1*(a/x^1 + 2*b*n/x^2*log(c*x^n)), x, 3, (1/2)*(a*x + b*log(c*x^n)^2)^2]
    @test_int [(a*x^2 + b*x*log(c*x^n)^2)^0*(a*x^0 + 2*b*n/x^1*log(c*x^n)), x, 2, a*x + b*log(c*x^n)^2]
    @test_int [(a*x^1 + 2*b*n*x^0*log(c*x^n))/(a*x^2 + b*x*log(c*x^n)^2)^1, x, 2, log(a*x + b*log(c*x^n)^2)]
    @test_int [(a*x^2 + 2*b*n*x^1*log(c*x^n))/(a*x^2 + b*x*log(c*x^n)^2)^2, x, 3, -(1/(a*x + b*log(c*x^n)^2))]
    @test_int [(a*x^3 + 2*b*n*x^2*log(c*x^n))/(a*x^2 + b*x*log(c*x^n)^2)^3, x, 3, -(1/(2*(a*x + b*log(c*x^n)^2)^2))]


    @test_int [(a*(m - 1)*x^(m - 1) + b*n*q*log(c*x^n)^(q - 1))/(a*x^m + b*x*log(c*x^n)^q), x, 2, log(a*x^(m - 1) + b*log(c*x^n)^q)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x^m+e*log(c*x^n)^(q-1))*(a*x^m+b*log(c*x^n)^q)^p / x=#


    @test_int [(d*x^m + e*log(c*x^n)^(q - 1))*(a*x^m + b*log(c*x^n)^q)^p/x, x, 1, (d - (a*e*m)/(b*n*q))*CannotIntegrate(x^(-1 + m)*(a*x^m + b*log(c*x^n)^q)^p, x) + (e*(a*x^m + b*log(c*x^n)^q)^(1 + p))/(b*n*(1 + p)*q)]


    @test_int [(d*x^m + e*log(c*x^n)^(q - 1))*(a*x^m + b*log(c*x^n)^q)^3/x, x, 9, -((a^3*(a*e*m - b*d*n*q)*x^(4*m))/(4*b*m*n*q)) - (b^2*(a*e*m - b*d*n*q)*x^m*Gamma(1 + 3*q, -((m*log(c*x^n))/n))*log(c*x^n)^(3*q))/((c*x^n)^(m/n)*(-((m*log(c*x^n))/n))^(3*q)*(m*n*q)) - (3*2^(-1 - 2*q)*a*b*(a*e*m - b*d*n*q)*x^(2*m)*Gamma(1 + 2*q, -((2*m*log(c*x^n))/n))*log(c*x^n)^(2*q))/((c*x^n)^((2*m)/n)*(-((m*log(c*x^n))/n))^(2*q)*(m*n*q)) - (a^2*(a*e*m - b*d*n*q)*x^(3*m)*Gamma(1 + q, -((3*m*log(c*x^n))/n))*log(c*x^n)^q)/(3^q*(c*x^n)^((3*m)/n)*(-((m*log(c*x^n))/n))^q*(m*n*q)) + (e*(a*x^m + b*log(c*x^n)^q)^4)/(4*b*n*q)]
    @test_int [(d*x^m + e*log(c*x^n)^(q - 1))*(a*x^m + b*log(c*x^n)^q)^2/x, x, 7, -((a^2*(a*e*m - b*d*n*q)*x^(3*m))/(3*b*m*n*q)) - (b*(a*e*m - b*d*n*q)*x^m*Gamma(1 + 2*q, -((m*log(c*x^n))/n))*log(c*x^n)^(2*q))/((c*x^n)^(m/n)*(-((m*log(c*x^n))/n))^(2*q)*(m*n*q)) - (a*(a*e*m - b*d*n*q)*x^(2*m)*Gamma(1 + q, -((2*m*log(c*x^n))/n))*log(c*x^n)^q)/(2^q*(c*x^n)^((2*m)/n)*(-((m*log(c*x^n))/n))^q*(m*n*q)) + (e*(a*x^m + b*log(c*x^n)^q)^3)/(3*b*n*q)]
    @test_int [(d*x^m + e*log(c*x^n)^(q - 1))*(a*x^m + b*log(c*x^n)^q)^1/x, x, 5, -((a*(a*e*m - b*d*n*q)*x^(2*m))/(2*b*m*n*q)) + (((b*d)/m - (a*e)/(n*q))*x^m*Gamma(1 + q, -((m*log(c*x^n))/n))*log(c*x^n)^q)/((c*x^n)^(m/n)*(-((m*log(c*x^n))/n))^q) + (e*(a*x^m + b*log(c*x^n)^q)^2)/(2*b*n*q)]
    @test_int [(d*x^m + e*log(c*x^n)^(q - 1))*(a*x^m + b*log(c*x^n)^q)^0/x, x, 4, (d*x^m)/m + (e*log(c*x^n)^q)/(n*q)]
    @test_int [(d*x^m + e*log(c*x^n)^(q - 1))/(x*(a*x^m + b*log(c*x^n)^q)^1), x, 1, (d - (a*e*m)/(b*n*q))*CannotIntegrate(x^(-1 + m)/(a*x^m + b*log(c*x^n)^q), x) + (e*log(a*x^m + b*log(c*x^n)^q))/(b*n*q)]
    @test_int [(d*x^m + e*log(c*x^n)^(q - 1))/(x*(a*x^m + b*log(c*x^n)^q)^2), x, 1, (d - (a*e*m)/(b*n*q))*CannotIntegrate(x^(-1 + m)/(a*x^m + b*log(c*x^n)^q)^2, x) - e/(b*n*q*(a*x^m + b*log(c*x^n)^q))]
    @test_int [(d*x^m + e*log(c*x^n)^(q - 1))/(x*(a*x^m + b*log(c*x^n)^q)^3), x, 1, (d - (a*e*m)/(b*n*q))*CannotIntegrate(x^(-1 + m)/(a*x^m + b*log(c*x^n)^q)^3, x) - e/(2*b*n*q*(a*x^m + b*log(c*x^n)^q)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x^m + e*x^m*log(c*x^n) + f*log(c*x^n)^q) / (x*(a*x^m + b*log(c*x^n)^q)^2)=#


    @test_int [(a*d*n*x^m - a*d*m*x^m*log(c*x^n) - b*d*n*(q - 1)*log(c*x^n)^q)/(x*(a*x^m + b*log(c*x^n)^q)^2), x, 1, (d*log(c*x^n))/(a*x^m + b*log(c*x^n)^q)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d + e*log(c*x^n))/(a*x + b*log(c*x^n)^q)^2=#


    @test_int [(n*q - log(c*x^n))/(a*x + b*log(c*x^n)^q)^2, x, 1, -((n*(1 - q)*CannotIntegrate(1/(x*(a*x + b*log(c*x^n)^q)), x))/a) + log(c*x^n)/(a*(a*x + b*log(c*x^n)^q))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*G(x)*log(F(x))*when*C=G(x)*(1-F(x)) / D(F(x),x)=#


    @test_int [log(2*x*(d*sqrt(-e/d) + e*x)/(d + e*x^2))/(d + e*x^2), x, 1, -((sqrt(-(e/d))*PolyLog(2, 1 - (2*x*(d*sqrt(-(e/d)) + e*x))/(d + e*x^2)))/(2*e))]
    @test_int [log(-2*x*(d*sqrt(-e/d) - e*x)/(d + e*x^2))/(d + e*x^2), x, 1, (sqrt(-(e/d))*PolyLog(2, 1 + (2*x*(d*sqrt(-(e/d)) - e*x))/(d + e*x^2)))/(2*e)]

    @test_int [log(2*x*(d*sqrt(e)/sqrt(-d) + e*x)/(d + e*x^2))/(d + e*x^2), x, 1, -(PolyLog(2, 1 + (2*sqrt(e)*x*(sqrt(-d) - sqrt(e)*x))/(d + e*x^2))/(2*sqrt(-d)*sqrt(e)))]
    @test_int [log(-2*x*(d*sqrt(e)/sqrt(-d) - e*x)/(d + e*x^2))/(d + e*x^2), x, 1, PolyLog(2, 1 - (2*sqrt(e)*x*(sqrt(-d) + sqrt(e)*x))/(d + e*x^2))/(2*sqrt(-d)*sqrt(e))]

    @test_int [log(2*x*(d*sqrt(-e)/sqrt(d) + e*x)/(d + e*x^2))/(d + e*x^2), x, 1, PolyLog(2, 1 - (2*x*(sqrt(d)*sqrt(-e) + e*x))/(d + e*x^2))/(2*sqrt(d)*sqrt(-e))]
    @test_int [log(-2*x*(d*sqrt(-e)/sqrt(d) - e*x)/(d + e*x^2))/(d + e*x^2), x, 1, -(PolyLog(2, 1 + (2*x*(sqrt(d)*sqrt(-e) - e*x))/(d + e*x^2))/(2*sqrt(d)*sqrt(-e)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*log(c*log(d*x^n)^p))=#


    @test_int [(e*x)^m*(a + b*log(c*log(d*x)^p)), x, 3, -((b*p*(d*x)^(-1 - m)*(e*x)^(1 + m)*ExpIntegralEi((1 + m)*log(d*x)))/(e*(1 + m))) + ((e*x)^(1 + m)*(a + b*log(c*log(d*x)^p)))/(e*(1 + m))]
    @test_int [(e*x)^m*(a + b*log(c*log(d*x^n)^p)), x, 3, -((b*p*(e*x)^(1 + m)*ExpIntegralEi(((1 + m)*log(d*x^n))/n))/((d*x^n)^((1 + m)/n)*(e*(1 + m)))) + ((e*x)^(1 + m)*(a + b*log(c*log(d*x^n)^p)))/(e*(1 + m))]


    @test_int [x^2*(a + b*log(c*log(d*x^n)^p)), x, 3, ((-(1/3))*b*p*x^3*ExpIntegralEi((3*log(d*x^n))/n))/(d*x^n)^(3/n) + (1/3)*x^3*(a + b*log(c*log(d*x^n)^p))]
    @test_int [x^1*(a + b*log(c*log(d*x^n)^p)), x, 3, ((-(1/2))*b*p*x^2*ExpIntegralEi((2*log(d*x^n))/n))/(d*x^n)^(2/n) + (1/2)*x^2*(a + b*log(c*log(d*x^n)^p))]
    @test_int [x^0*(a + b*log(c*log(d*x^n)^p)), x, 4, a*x - (b*p*x*ExpIntegralEi(log(d*x^n)/n))/(d*x^n)^n^(-1) + b*x*log(c*log(d*x^n)^p)]
    @test_int [(a + b*log(c*log(d*x^n)^p))/x^1, x, 1, (-b)*p*log(x) + (log(d*x^n)*(a + b*log(c*log(d*x^n)^p)))/n]
    @test_int [(a + b*log(c*log(d*x^n)^p))/x^2, x, 3, (b*p*(d*x^n)^(1/n)*ExpIntegralEi(-(log(d*x^n)/n)))/x - (a + b*log(c*log(d*x^n)^p))/x]
    @test_int [(a + b*log(c*log(d*x^n)^p))/x^3, x, 3, (b*p*(d*x^n)^(2/n)*ExpIntegralEi(-((2*log(d*x^n))/n)))/(2*x^2) - (a + b*log(c*log(d*x^n)^p))/(2*x^2)]
    @test_int [(a + b*log(c*log(d*x^n)^p))/x^4, x, 3, (b*p*(d*x^n)^(3/n)*ExpIntegralEi(-((3*log(d*x^n))/n)))/(3*x^3) - (a + b*log(c*log(d*x^n)^p))/(3*x^3)]


    @test_int [log(c*log(d*x)^p), x, 2, x*log(c*log(d*x)^p) - (p*LogIntegral(d*x))/d]
    @test_int [log(c*log(d*x)^p)/x, x, 1, (-p)*log(x) + log(d*x)*log(c*log(d*x)^p)]

    @test_int [log(c*log(d*x^n)^p), x, 3, ((-p)*x*ExpIntegralEi(log(d*x^n)/n))/(d*x^n)^n^(-1) + x*log(c*log(d*x^n)^p)]
    @test_int [log(c*log(d*x^n)^p)/x, x, 1, (-p)*log(x) + (log(d*x^n)*log(c*log(d*x^n)^p))/n]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*log(d*(a+b*x+c*x^2)^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*log(d*(a+b*x+c*x^2)^p)=#


    @test_int [x^m*log(d*(b*x + c*x^2)^n), x, 3, -((2*n*x^(1 + m))/(1 + m)^2) + (n*x^(1 + m)*HypergeometricFunctions._₂F₁(1, 1 + m, 2 + m, -((c*x)/b)))/(1 + m)^2 + (x^(1 + m)*log(d*(b*x + c*x^2)^n))/(1 + m)]

    @test_int [x^4*log(d*(b*x + c*x^2)^n), x, 3, -((b^4*n*x)/(5*c^4)) + (b^3*n*x^2)/(10*c^3) - (b^2*n*x^3)/(15*c^2) + (b*n*x^4)/(20*c) - (2*n*x^5)/25 + (b^5*n*log(b + c*x))/(5*c^5) + (1/5)*x^5*log(d*(b*x + c*x^2)^n)]
    @test_int [x^3*log(d*(b*x + c*x^2)^n), x, 3, (b^3*n*x)/(4*c^3) - (b^2*n*x^2)/(8*c^2) + (b*n*x^3)/(12*c) - (n*x^4)/8 - (b^4*n*log(b + c*x))/(4*c^4) + (1/4)*x^4*log(d*(b*x + c*x^2)^n)]
    @test_int [x^2*log(d*(b*x + c*x^2)^n), x, 3, -((b^2*n*x)/(3*c^2)) + (b*n*x^2)/(6*c) - (2*n*x^3)/9 + (b^3*n*log(b + c*x))/(3*c^3) + (1/3)*x^3*log(d*(b*x + c*x^2)^n)]
    @test_int [x^1*log(d*(b*x + c*x^2)^n), x, 3, (b*n*x)/(2*c) - (n*x^2)/2 - (b^2*n*log(b + c*x))/(2*c^2) + (1/2)*x^2*log(d*(b*x + c*x^2)^n)]
    @test_int [x^0*log(d*(b*x + c*x^2)^n), x, 3, -2*n*x + (b*n*log(b + c*x))/c + x*log(d*(b*x + c*x^2)^n)]
    @test_int [log(d*(b*x + c*x^2)^n)/x^1, x, 7, (-(1/2))*n*log(x)^2 - n*log(x)*log(1 + (c*x)/b) + log(x)*log(d*(b*x + c*x^2)^n) - n*PolyLog(2, -((c*x)/b))]
    @test_int [log(d*(b*x + c*x^2)^n)/x^2, x, 3, -(n/x) + (c*n*log(x))/b - (c*n*log(b + c*x))/b - log(d*(b*x + c*x^2)^n)/x]
    @test_int [log(d*(b*x + c*x^2)^n)/x^3, x, 3, -(n/(4*x^2)) - (c*n)/(2*b*x) - (c^2*n*log(x))/(2*b^2) + (c^2*n*log(b + c*x))/(2*b^2) - log(d*(b*x + c*x^2)^n)/(2*x^2)]
    @test_int [log(d*(b*x + c*x^2)^n)/x^4, x, 3, -(n/(9*x^3)) - (c*n)/(6*b*x^2) + (c^2*n)/(3*b^2*x) + (c^3*n*log(x))/(3*b^3) - (c^3*n*log(b + c*x))/(3*b^3) - log(d*(b*x + c*x^2)^n)/(3*x^3)]
    @test_int [log(d*(b*x + c*x^2)^n)/x^5, x, 3, -(n/(16*x^4)) - (c*n)/(12*b*x^3) + (c^2*n)/(8*b^2*x^2) - (c^3*n)/(4*b^3*x) - (c^4*n*log(x))/(4*b^4) + (c^4*n*log(b + c*x))/(4*b^4) - log(d*(b*x + c*x^2)^n)/(4*x^4)]


    @test_int [x^m*log(d*(a + b*x + c*x^2)^n), x, 5, -((2*c*n*x^(2 + m)*HypergeometricFunctions._₂F₁(1, 2 + m, 3 + m, -((2*c*x)/(b - sqrt(b^2 - 4*a*c)))))/((b - sqrt(b^2 - 4*a*c))*(1 + m)*(2 + m))) - (2*c*n*x^(2 + m)*HypergeometricFunctions._₂F₁(1, 2 + m, 3 + m, -((2*c*x)/(b + sqrt(b^2 - 4*a*c)))))/((b + sqrt(b^2 - 4*a*c))*(1 + m)*(2 + m)) + (x^(1 + m)*log(d*(a + b*x + c*x^2)^n))/(1 + m)]

    @test_int [x^4*log(d*(a + b*x + c*x^2)^n), x, 7, -(((b^4 - 4*a*b^2*c + 2*a^2*c^2)*n*x)/(5*c^4)) + (b*(b^2 - 3*a*c)*n*x^2)/(10*c^3) - ((b^2 - 2*a*c)*n*x^3)/(15*c^2) + (b*n*x^4)/(20*c) - (2*n*x^5)/25 + (sqrt(b^2 - 4*a*c)*(b^4 - 3*a*b^2*c + a^2*c^2)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(5*c^5) + (b*(b^4 - 5*a*b^2*c + 5*a^2*c^2)*n*log(a + b*x + c*x^2))/(10*c^5) + (1/5)*x^5*log(d*(a + b*x + c*x^2)^n)]
    @test_int [x^3*log(d*(a + b*x + c*x^2)^n), x, 7, (b*(b^2 - 3*a*c)*n*x)/(4*c^3) - ((b^2 - 2*a*c)*n*x^2)/(8*c^2) + (b*n*x^3)/(12*c) - (n*x^4)/8 - (b*sqrt(b^2 - 4*a*c)*(b^2 - 2*a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(4*c^4) - ((b^4 - 4*a*b^2*c + 2*a^2*c^2)*n*log(a + b*x + c*x^2))/(8*c^4) + (1/4)*x^4*log(d*(a + b*x + c*x^2)^n)]
    @test_int [x^2*log(d*(a + b*x + c*x^2)^n), x, 7, -(((b^2 - 2*a*c)*n*x)/(3*c^2)) + (b*n*x^2)/(6*c) - (2*n*x^3)/9 + (sqrt(b^2 - 4*a*c)*(b^2 - a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(3*c^3) + (b*(b^2 - 3*a*c)*n*log(a + b*x + c*x^2))/(6*c^3) + (1/3)*x^3*log(d*(a + b*x + c*x^2)^n)]
    @test_int [x^1*log(d*(a + b*x + c*x^2)^n), x, 7, (b*n*x)/(2*c) - (n*x^2)/2 - (b*sqrt(b^2 - 4*a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(2*c^2) - ((b^2 - 2*a*c)*n*log(a + b*x + c*x^2))/(4*c^2) + (1/2)*x^2*log(d*(a + b*x + c*x^2)^n)]
    @test_int [x^0*log(d*(a + b*x + c*x^2)^n), x, 6, -2*n*x + (sqrt(b^2 - 4*a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/c + (b*n*log(a + b*x + c*x^2))/(2*c) + x*log(d*(a + b*x + c*x^2)^n)]
    @test_int [log(d*(a + b*x + c*x^2)^n)/x^1, x, 7, (-n)*log(x)*log(1 + (2*c*x)/(b - sqrt(b^2 - 4*a*c))) - n*log(x)*log(1 + (2*c*x)/(b + sqrt(b^2 - 4*a*c))) + log(x)*log(d*(a + b*x + c*x^2)^n) - n*PolyLog(2, -((2*c*x)/(b - sqrt(b^2 - 4*a*c)))) - n*PolyLog(2, -((2*c*x)/(b + sqrt(b^2 - 4*a*c))))]
    @test_int [log(d*(a + b*x + c*x^2)^n)/x^2, x, 7, (sqrt(b^2 - 4*a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/a + (b*n*log(x))/a - (b*n*log(a + b*x + c*x^2))/(2*a) - log(d*(a + b*x + c*x^2)^n)/x]
    @test_int [log(d*(a + b*x + c*x^2)^n)/x^3, x, 7, -((b*n)/(2*a*x)) - (b*sqrt(b^2 - 4*a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(2*a^2) - ((b^2 - 2*a*c)*n*log(x))/(2*a^2) + ((b^2 - 2*a*c)*n*log(a + b*x + c*x^2))/(4*a^2) - log(d*(a + b*x + c*x^2)^n)/(2*x^2)]
    @test_int [log(d*(a + b*x + c*x^2)^n)/x^4, x, 7, -((b*n)/(6*a*x^2)) + ((b^2 - 2*a*c)*n)/(3*a^2*x) + (sqrt(b^2 - 4*a*c)*(b^2 - a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(3*a^3) + (b*(b^2 - 3*a*c)*n*log(x))/(3*a^3) - (b*(b^2 - 3*a*c)*n*log(a + b*x + c*x^2))/(6*a^3) - log(d*(a + b*x + c*x^2)^n)/(3*x^3)]
    @test_int [log(d*(a + b*x + c*x^2)^n)/x^5, x, 7, -((b*n)/(12*a*x^3)) + ((b^2 - 2*a*c)*n)/(8*a^2*x^2) - (b*(b^2 - 3*a*c)*n)/(4*a^3*x) - (b*sqrt(b^2 - 4*a*c)*(b^2 - 2*a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(4*a^4) - ((b^4 - 4*a*b^2*c + 2*a^2*c^2)*n*log(x))/(4*a^4) + ((b^4 - 4*a*b^2*c + 2*a^2*c^2)*n*log(a + b*x + c*x^2))/(8*a^4) - log(d*(a + b*x + c*x^2)^n)/(4*x^4)]


    @test_int [log(1 + x + x^2), x, 6, -2*x + sqrt(3)*atan((1 + 2*x)/sqrt(3)) + (1/2)*log(1 + x + x^2) + x*log(1 + x + x^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*log(d*(a+b*x+c*x^2)^p)=#


    @test_int [log(d*(a + b*x + c*x^2)^n)*(d + e*x)^4, x, 7, -(((10*c^4*d^4 + b^4*e^4 - 10*c^3*d^2*e*(b*d + 2*a*e) - b^2*c*e^3*(5*b*d + 4*a*e) + c^2*e^2*(10*b^2*d^2 + 15*a*b*d*e + 2*a^2*e^2))*n*x)/(5*c^4)) - (e*(20*c^3*d^3 - b^3*e^3 - 10*c^2*d*e*(b*d + a*e) + b*c*e^2*(5*b*d + 3*a*e))*n*x^2)/(10*c^3) - (e^2*(20*c^2*d^2 + b^2*e^2 - c*e*(5*b*d + 2*a*e))*n*x^3)/(15*c^2) - (e^3*(10*c*d - b*e)*n*x^4)/(20*c) - (2/25)*e^4*n*x^5 + (sqrt(b^2 - 4*a*c)*(5*c^4*d^4 + b^4*e^4 - 10*c^3*d^2*e*(b*d + a*e) - b^2*c*e^3*(5*b*d + 3*a*e) + c^2*e^2*(10*b^2*d^2 + 10*a*b*d*e + a^2*e^2))*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(5*c^5) - ((2*c*d - b*e)*(c^4*d^4 + b^4*e^4 - 2*c^3*d^2*e*(b*d + 5*a*e) - b^2*c*e^3*(3*b*d + 5*a*e) + c^2*e^2*(4*b^2*d^2 + 10*a*b*d*e + 5*a^2*e^2))*n*log(a + b*x + c*x^2))/(10*c^5*e) + ((d + e*x)^5*log(d*(a + b*x + c*x^2)^n))/(5*e)]
    @test_int [log(d*(a + b*x + c*x^2)^n)*(d + e*x)^3, x, 7, -(((8*c^3*d^3 - b^3*e^3 + b*c*e^2*(4*b*d + 3*a*e) - 2*c^2*d*e*(3*b*d + 4*a*e))*n*x)/(4*c^3)) - (e*(12*c^2*d^2 + b^2*e^2 - 2*c*e*(2*b*d + a*e))*n*x^2)/(8*c^2) - (e^2*(8*c*d - b*e)*n*x^3)/(12*c) - (1/8)*e^3*n*x^4 + (sqrt(b^2 - 4*a*c)*(2*c*d - b*e)*(2*c^2*d^2 + b^2*e^2 - 2*c*e*(b*d + a*e))*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(4*c^4) - ((2*c^4*d^4 + b^4*e^4 - 4*b^2*c*e^3*(b*d + a*e) - 4*c^3*d^2*e*(b*d + 3*a*e) + 2*c^2*e^2*(3*b^2*d^2 + 6*a*b*d*e + a^2*e^2))*n*log(a + b*x + c*x^2))/(8*c^4*e) + ((d + e*x)^4*log(d*(a + b*x + c*x^2)^n))/(4*e)]
    @test_int [log(d*(a + b*x + c*x^2)^n)*(d + e*x)^2, x, 7, -(((6*c^2*d^2 + b^2*e^2 - c*e*(3*b*d + 2*a*e))*n*x)/(3*c^2)) - (e*(6*c*d - b*e)*n*x^2)/(6*c) - (2/9)*e^2*n*x^3 + (sqrt(b^2 - 4*a*c)*(3*c^2*d^2 + b^2*e^2 - c*e*(3*b*d + a*e))*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(3*c^3) - ((2*c*d - b*e)*(c^2*d^2 + b^2*e^2 - c*e*(b*d + 3*a*e))*n*log(a + b*x + c*x^2))/(6*c^3*e) + ((d + e*x)^3*log(d*(a + b*x + c*x^2)^n))/(3*e)]
    @test_int [log(d*(a + b*x + c*x^2)^n)*(d + e*x)^1, x, 7, (-(1/2))*(4*d - (b*e)/c)*n*x - (1/2)*e*n*x^2 + (sqrt(b^2 - 4*a*c)*(2*c*d - b*e)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(2*c^2) - ((2*c^2*d^2 + b^2*e^2 - 2*c*e*(b*d + a*e))*n*log(a + b*x + c*x^2))/(4*c^2*e) + ((d + e*x)^2*log(d*(a + b*x + c*x^2)^n))/(2*e)]
    @test_int [log(d*(a + b*x + c*x^2)^n)*(d + e*x)^0, x, 6, -2*n*x + (sqrt(b^2 - 4*a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/c + (b*n*log(a + b*x + c*x^2))/(2*c) + x*log(d*(a + b*x + c*x^2)^n)]
    @test_int [log(d*(a + b*x + c*x^2)^n)/(d + e*x)^1, x, 9, -((n*log(-((e*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c*d - (b - sqrt(b^2 - 4*a*c))*e)))*log(d + e*x))/e) - (n*log(-((e*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c*d - (b + sqrt(b^2 - 4*a*c))*e)))*log(d + e*x))/e + (log(d + e*x)*log(d*(a + b*x + c*x^2)^n))/e - (n*PolyLog(2, (2*c*(d + e*x))/(2*c*d - (b - sqrt(b^2 - 4*a*c))*e)))/e - (n*PolyLog(2, (2*c*(d + e*x))/(2*c*d - (b + sqrt(b^2 - 4*a*c))*e)))/e]
    @test_int [log(d*(a + b*x + c*x^2)^n)/(d + e*x)^2, x, 7, (sqrt(b^2 - 4*a*c)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(c*d^2 - b*d*e + a*e^2) - ((2*c*d - b*e)*n*log(d + e*x))/(e*(c*d^2 - b*d*e + a*e^2)) + ((2*c*d - b*e)*n*log(a + b*x + c*x^2))/(2*e*(c*d^2 - b*d*e + a*e^2)) - log(d*(a + b*x + c*x^2)^n)/(e*(d + e*x))]
    @test_int [log(d*(a + b*x + c*x^2)^n)/(d + e*x)^3, x, 7, ((2*c*d - b*e)*n)/(2*e*(c*d^2 - b*d*e + a*e^2)*(d + e*x)) + (sqrt(b^2 - 4*a*c)*(2*c*d - b*e)*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(2*(c*d^2 - b*d*e + a*e^2)^2) - ((2*c^2*d^2 + b^2*e^2 - 2*c*e*(b*d + a*e))*n*log(d + e*x))/(2*e*(c*d^2 - b*d*e + a*e^2)^2) + ((2*c^2*d^2 + b^2*e^2 - 2*c*e*(b*d + a*e))*n*log(a + b*x + c*x^2))/(4*e*(c*d^2 - b*d*e + a*e^2)^2) - log(d*(a + b*x + c*x^2)^n)/(2*e*(d + e*x)^2)]
    @test_int [log(d*(a + b*x + c*x^2)^n)/(d + e*x)^4, x, 7, ((2*c*d - b*e)*n)/(6*e*(c*d^2 - b*d*e + a*e^2)*(d + e*x)^2) + ((2*c^2*d^2 + b^2*e^2 - 2*c*e*(b*d + a*e))*n)/(3*e*(c*d^2 - b*d*e + a*e^2)^2*(d + e*x)) + (sqrt(b^2 - 4*a*c)*(3*c^2*d^2 + b^2*e^2 - c*e*(3*b*d + a*e))*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(3*(c*d^2 - b*d*e + a*e^2)^3) - ((2*c*d - b*e)*(c^2*d^2 + b^2*e^2 - c*e*(b*d + 3*a*e))*n*log(d + e*x))/(3*e*(c*d^2 - b*d*e + a*e^2)^3) + ((2*c*d - b*e)*(c^2*d^2 + b^2*e^2 - c*e*(b*d + 3*a*e))*n*log(a + b*x + c*x^2))/(6*e*(c*d^2 - b*d*e + a*e^2)^3) - log(d*(a + b*x + c*x^2)^n)/(3*e*(d + e*x)^3)]
    @test_int [log(d*(a + b*x + c*x^2)^n)/(d + e*x)^5, x, 7, ((2*c*d - b*e)*n)/(12*e*(c*d^2 - b*d*e + a*e^2)*(d + e*x)^3) + ((2*c^2*d^2 + b^2*e^2 - 2*c*e*(b*d + a*e))*n)/(8*e*(c*d^2 - b*d*e + a*e^2)^2*(d + e*x)^2) + ((2*c*d - b*e)*(c^2*d^2 + b^2*e^2 - c*e*(b*d + 3*a*e))*n)/(4*e*(c*d^2 - b*d*e + a*e^2)^3*(d + e*x)) + (sqrt(b^2 - 4*a*c)*(2*c*d - b*e)*(2*c^2*d^2 + b^2*e^2 - 2*c*e*(b*d + a*e))*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/(4*(c*d^2 - b*d*e + a*e^2)^4) - ((2*c^4*d^4 + b^4*e^4 - 4*b^2*c*e^3*(b*d + a*e) - 4*c^3*d^2*e*(b*d + 3*a*e) + 2*c^2*e^2*(3*b^2*d^2 + 6*a*b*d*e + a^2*e^2))*n*log(d + e*x))/(4*e*(c*d^2 - b*d*e + a*e^2)^4) + ((2*c^4*d^4 + b^4*e^4 - 4*b^2*c*e^3*(b*d + a*e) - 4*c^3*d^2*e*(b*d + 3*a*e) + 2*c^2*e^2*(3*b^2*d^2 + 6*a*b*d*e + a^2*e^2))*n*log(a + b*x + c*x^2))/(8*e*(c*d^2 - b*d*e + a*e^2)^4) - log(d*(a + b*x + c*x^2)^n)/(4*e*(d + e*x)^4)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*RFx*(e+f*x)^m*log(d*(a+b*x+c*x^2)^p)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x+g*x^2)^m*log(d*(a+b*x+c*x^2)^p)^n=#


    @test_int [log(d*(a + c*x^2)^n)/(a*e + c*e*x^2), x, 6, (im*n*atan((sqrt(c)*x)/sqrt(a))^2)/(sqrt(a)*sqrt(c)*e) + (2*n*atan((sqrt(c)*x)/sqrt(a))*log((2*sqrt(a))/(sqrt(a) + im*sqrt(c)*x)))/(sqrt(a)*sqrt(c)*e) + (atan((sqrt(c)*x)/sqrt(a))*log(d*(a + c*x^2)^n))/(sqrt(a)*sqrt(c)*e) + (im*n*PolyLog(2, 1 - (2*sqrt(a))/(sqrt(a) + im*sqrt(c)*x)))/(sqrt(a)*sqrt(c)*e)]
    @test_int [log(d*(a + b*x + c*x^2)^n)/(a*e + b*e*x + c*e*x^2), x, 8, (2*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c))^2)/(sqrt(b^2 - 4*a*c)*e) - (4*n*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c))*log(2/(1 - b/sqrt(b^2 - 4*a*c) - (2*c*x)/sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*e) - (2*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c))*log(d*(a + b*x + c*x^2)^n))/(sqrt(b^2 - 4*a*c)*e) - (2*n*PolyLog(2, -((1 + b/sqrt(b^2 - 4*a*c) + (2*c*x)/sqrt(b^2 - 4*a*c))/(1 - b/sqrt(b^2 - 4*a*c) - (2*c*x)/sqrt(b^2 - 4*a*c)))))/(sqrt(b^2 - 4*a*c)*e)]


    @test_int [log(g*(a + b*x + c*x^2)^n)/(d + e*x^2), x, 20, -((n*log((sqrt(e)*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c*sqrt(-d) + (b - sqrt(b^2 - 4*a*c))*sqrt(e)))*log(sqrt(-d) - sqrt(e)*x))/(2*sqrt(-d)*sqrt(e))) - (n*log((sqrt(e)*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c*sqrt(-d) + (b + sqrt(b^2 - 4*a*c))*sqrt(e)))*log(sqrt(-d) - sqrt(e)*x))/(2*sqrt(-d)*sqrt(e)) + (n*log(-((sqrt(e)*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c*sqrt(-d) - (b - sqrt(b^2 - 4*a*c))*sqrt(e))))*log(sqrt(-d) + sqrt(e)*x))/(2*sqrt(-d)*sqrt(e)) + (n*log(-((sqrt(e)*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/(2*c*sqrt(-d) - (b + sqrt(b^2 - 4*a*c))*sqrt(e))))*log(sqrt(-d) + sqrt(e)*x))/(2*sqrt(-d)*sqrt(e)) + (log(sqrt(-d) - sqrt(e)*x)*log(g*(a + b*x + c*x^2)^n))/(2*sqrt(-d)*sqrt(e)) - (log(sqrt(-d) + sqrt(e)*x)*log(g*(a + b*x + c*x^2)^n))/(2*sqrt(-d)*sqrt(e)) - (n*PolyLog(2, (2*c*(sqrt(-d) - sqrt(e)*x))/(2*c*sqrt(-d) + (b - sqrt(b^2 - 4*a*c))*sqrt(e))))/(2*sqrt(-d)*sqrt(e)) - (n*PolyLog(2, (2*c*(sqrt(-d) - sqrt(e)*x))/(2*c*sqrt(-d) + (b + sqrt(b^2 - 4*a*c))*sqrt(e))))/(2*sqrt(-d)*sqrt(e)) + (n*PolyLog(2, (2*c*(sqrt(-d) + sqrt(e)*x))/(2*c*sqrt(-d) - (b - sqrt(b^2 - 4*a*c))*sqrt(e))))/(2*sqrt(-d)*sqrt(e)) + (n*PolyLog(2, (2*c*(sqrt(-d) + sqrt(e)*x))/(2*c*sqrt(-d) - (b + sqrt(b^2 - 4*a*c))*sqrt(e))))/(2*sqrt(-d)*sqrt(e))]
    @test_int [log(g*(a + b*x + c*x^2)^n)/(d + e*x +f*x^2), x, 20, -((n*log(-((f*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/(c*e - b*f + sqrt(b^2 - 4*a*c)*f - c*sqrt(e^2 - 4*d*f))))*log(e - sqrt(e^2 - 4*d*f) + 2*f*x))/sqrt(e^2 - 4*d*f)) - (n*log((f*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/((b + sqrt(b^2 - 4*a*c))*f - c*(e - sqrt(e^2 - 4*d*f))))*log(e - sqrt(e^2 - 4*d*f) + 2*f*x))/sqrt(e^2 - 4*d*f) + (n*log((f*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/((b - sqrt(b^2 - 4*a*c))*f - c*(e + sqrt(e^2 - 4*d*f))))*log(e + sqrt(e^2 - 4*d*f) + 2*f*x))/sqrt(e^2 - 4*d*f) + (n*log((f*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/((b + sqrt(b^2 - 4*a*c))*f - c*(e + sqrt(e^2 - 4*d*f))))*log(e + sqrt(e^2 - 4*d*f) + 2*f*x))/sqrt(e^2 - 4*d*f) + (log(e - sqrt(e^2 - 4*d*f) + 2*f*x)*log(g*(a + b*x + c*x^2)^n))/sqrt(e^2 - 4*d*f) - (log(e + sqrt(e^2 - 4*d*f) + 2*f*x)*log(g*(a + b*x + c*x^2)^n))/sqrt(e^2 - 4*d*f) - (n*PolyLog(2, -((c*(e - sqrt(e^2 - 4*d*f) + 2*f*x))/((b - sqrt(b^2 - 4*a*c))*f - c*(e - sqrt(e^2 - 4*d*f))))))/sqrt(e^2 - 4*d*f) - (n*PolyLog(2, -((c*(e - sqrt(e^2 - 4*d*f) + 2*f*x))/((b + sqrt(b^2 - 4*a*c))*f - c*(e - sqrt(e^2 - 4*d*f))))))/sqrt(e^2 - 4*d*f) + (n*PolyLog(2, -((c*(e + sqrt(e^2 - 4*d*f) + 2*f*x))/((b - sqrt(b^2 - 4*a*c))*f - c*(e + sqrt(e^2 - 4*d*f))))))/sqrt(e^2 - 4*d*f) + (n*PolyLog(2, -((c*(e + sqrt(e^2 - 4*d*f) + 2*f*x))/((b + sqrt(b^2 - 4*a*c))*f - c*(e + sqrt(e^2 - 4*d*f))))))/sqrt(e^2 - 4*d*f)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*log(d*(a+b*x+c*x^2)^p)^2=#


    @test_int [log(d*(b*x + c*x^2)^n)^2, x, 14, 8*n^2*x - (4*b*n^2*log(b + c*x))/c - (2*b*n^2*log(-((c*x)/b))*log(b + c*x))/c - (b*n^2*log(b + c*x)^2)/c - 4*n*x*log(d*(b*x + c*x^2)^n) + (2*b*n*log(b + c*x)*log(d*(b*x + c*x^2)^n))/c + x*log(d*(b*x + c*x^2)^n)^2 - (2*b*n^2*PolyLog(2, 1 + (c*x)/b))/c]
    @test_int [log(d*(a + b*x + c*x^2)^n)^2, x, 27, 8*n^2*x - (4*sqrt(b^2 - 4*a*c)*n^2*atanh((b + 2*c*x)/sqrt(b^2 - 4*a*c)))/c - ((b - sqrt(b^2 - 4*a*c))*n^2*log(b - sqrt(b^2 - 4*a*c) + 2*c*x)^2)/(2*c) - ((b + sqrt(b^2 - 4*a*c))*n^2*log(-((b - sqrt(b^2 - 4*a*c) + 2*c*x)/(2*sqrt(b^2 - 4*a*c))))*log(b + sqrt(b^2 - 4*a*c) + 2*c*x))/c - ((b + sqrt(b^2 - 4*a*c))*n^2*log(b + sqrt(b^2 - 4*a*c) + 2*c*x)^2)/(2*c) - ((b - sqrt(b^2 - 4*a*c))*n^2*log(b - sqrt(b^2 - 4*a*c) + 2*c*x)*log((b + sqrt(b^2 - 4*a*c) + 2*c*x)/(2*sqrt(b^2 - 4*a*c))))/c - (2*b*n^2*log(a + b*x + c*x^2))/c - 4*n*x*log(d*(a + b*x + c*x^2)^n) + ((b - sqrt(b^2 - 4*a*c))*n*log(b - sqrt(b^2 - 4*a*c) + 2*c*x)*log(d*(a + b*x + c*x^2)^n))/c + ((b + sqrt(b^2 - 4*a*c))*n*log(b + sqrt(b^2 - 4*a*c) + 2*c*x)*log(d*(a + b*x + c*x^2)^n))/c + x*log(d*(a + b*x + c*x^2)^n)^2 - ((b - sqrt(b^2 - 4*a*c))*n^2*PolyLog(2, -((b - sqrt(b^2 - 4*a*c) + 2*c*x)/(2*sqrt(b^2 - 4*a*c)))))/c - ((b + sqrt(b^2 - 4*a*c))*n^2*PolyLog(2, (b + sqrt(b^2 - 4*a*c) + 2*c*x)/(2*sqrt(b^2 - 4*a*c))))/c]


    @test_int [x^2*log(1 + x + x^2)/(2 + 3*x + x^2), x, 28, -2*x + sqrt(3)*atan((1 + 2*x)/sqrt(3)) - log(2 + 2*x)*log(-((1 - im*sqrt(3) + 2*x)/(1 + im*sqrt(3)))) + 4*log(4 + 2*x)*log(-((1 - im*sqrt(3) + 2*x)/(3 + im*sqrt(3)))) - log(2 + 2*x)*log(-((1 + im*sqrt(3) + 2*x)/(1 - im*sqrt(3)))) + 4*log(4 + 2*x)*log(-((1 + im*sqrt(3) + 2*x)/(3 - im*sqrt(3)))) + (1/2)*log(1 + x + x^2) + x*log(1 + x + x^2) + log(2 + 2*x)*log(1 + x + x^2) - 4*log(4 + 2*x)*log(1 + x + x^2) - PolyLog(2, (2*(1 + x))/(1 - im*sqrt(3))) - PolyLog(2, (2*(1 + x))/(1 + im*sqrt(3))) + 4*PolyLog(2, (2*(2 + x))/(3 - im*sqrt(3))) + 4*PolyLog(2, (2*(2 + x))/(3 + im*sqrt(3)))]


    @test_int [log(1 + x + x^2)^2, x, 27, 8*x - 4*sqrt(3)*atan((1 + 2*x)/sqrt(3)) - (1/2)*(1 - im*sqrt(3))*log(1 - im*sqrt(3) + 2*x)^2 - (1 + im*sqrt(3))*log((im*(1 - im*sqrt(3) + 2*x))/(2*sqrt(3)))*log(1 + im*sqrt(3) + 2*x) - (1/2)*(1 + im*sqrt(3))*log(1 + im*sqrt(3) + 2*x)^2 - (1 - im*sqrt(3))*log(1 - im*sqrt(3) + 2*x)*log(-((im*(1 + im*sqrt(3) + 2*x))/(2*sqrt(3)))) - 2*log(1 + x + x^2) - 4*x*log(1 + x + x^2) + (1 - im*sqrt(3))*log(1 - im*sqrt(3) + 2*x)*log(1 + x + x^2) + (1 + im*sqrt(3))*log(1 + im*sqrt(3) + 2*x)*log(1 + x + x^2) + x*log(1 + x + x^2)^2 - (1 + im*sqrt(3))*PolyLog(2, -((im - sqrt(3) + 2*im*x)/(2*sqrt(3)))) - (1 - im*sqrt(3))*PolyLog(2, (im + sqrt(3) + 2*im*x)/(2*sqrt(3)))]

    @test_int [log(-1 + x + x^2)^2/x^3, x, 34, log(x) - (1/2)*(1 + sqrt(5))*log(1 - sqrt(5) + 2*x) + 3*log((1/2)*(-1 + sqrt(5)))*log(1 - sqrt(5) + 2*x) - (1/4)*(3 + sqrt(5))*log(1 - sqrt(5) + 2*x)^2 - (1/2)*(1 - sqrt(5))*log(1 + sqrt(5) + 2*x) - (1/2)*(3 - sqrt(5))*log(-((1 - sqrt(5) + 2*x)/(2*sqrt(5))))*log(1 + sqrt(5) + 2*x) - (1/4)*(3 - sqrt(5))*log(1 + sqrt(5) + 2*x)^2 - (1/2)*(3 + sqrt(5))*log(1 - sqrt(5) + 2*x)*log((1 + sqrt(5) + 2*x)/(2*sqrt(5))) + 3*log(x)*log(1 + (2*x)/(1 + sqrt(5))) + log(-1 + x + x^2)/x - 3*log(x)*log(-1 + x + x^2) + (1/2)*(3 + sqrt(5))*log(1 - sqrt(5) + 2*x)*log(-1 + x + x^2) + (1/2)*(3 - sqrt(5))*log(1 + sqrt(5) + 2*x)*log(-1 + x + x^2) - log(-1 + x + x^2)^2/(2*x^2) + 3*PolyLog(2, -((2*x)/(1 + sqrt(5)))) - (1/2)*(3 + sqrt(5))*PolyLog(2, -((1 - sqrt(5) + 2*x)/(2*sqrt(5)))) - (1/2)*(3 - sqrt(5))*PolyLog(2, (1 + sqrt(5) + 2*x)/(2*sqrt(5))) - 3*PolyLog(2, 1 + (2*x)/(1 - sqrt(5)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*log(d+e*x+f*(a+b*x+c*x^2)^p)=#


    @test_int [x^3*log(-1 + 4*x + 4*sqrt((-1 + x)*x)), x, 25, x/4096 - x^2/1024 + x^3/192 - x^4/32 - (683*sqrt(-x + x^2))/4096 + (149*(1 - 2*x)*sqrt(-x + x^2))/2048 - (1/12)*(-x + x^2)^(3/2) - (1/32)*x*(-x + x^2)^(3/2) + atanh((1 - 10*x)/(6*sqrt(-x + x^2)))/32768 - (1537*atanh(x/sqrt(-x + x^2)))/16384 - log(1 + 8*x)/32768 + (1/4)*x^4*log(-1 + 4*x + 4*sqrt(-x + x^2))]
    @test_int [x^2*log(-1 + 4*x + 4*sqrt((-1 + x)*x)), x, 20, -(x/384) + x^2/96 - x^3/18 - (85/384)*sqrt(-x + x^2) + (5/64)*(1 - 2*x)*sqrt(-x + x^2) - (1/18)*(-x + x^2)^(3/2) - atanh((1 - 10*x)/(6*sqrt(-x + x^2)))/3072 - (223*atanh(x/sqrt(-x + x^2)))/1536 + log(1 + 8*x)/3072 + (1/3)*x^3*log(-1 + 4*x + 4*sqrt(-x + x^2))]
    @test_int [x^1*log(-1 + 4*x + 4*sqrt((-1 + x)*x)), x, 16, x/32 - x^2/8 - (11/32)*sqrt(-x + x^2) + (1/16)*(1 - 2*x)*sqrt(-x + x^2) + (1/256)*atanh((1 - 10*x)/(6*sqrt(-x + x^2))) - (33/128)*atanh(x/sqrt(-x + x^2)) - (1/256)*log(1 + 8*x) + (1/2)*x^2*log(-1 + 4*x + 4*sqrt(-x + x^2))]
    @test_int [x^0*log(-1 + 4*x + 4*sqrt((-1 + x)*x)), x, 13, -(x/2) - (1/2)*sqrt(-x + x^2) - (1/16)*atanh((1 - 10*x)/(6*sqrt(-x + x^2))) - (7/8)*atanh(x/sqrt(-x + x^2)) + (1/16)*log(1 + 8*x) + x*log(-1 + 4*x + 4*sqrt(-x + x^2))]
    @test_int [log(-1 + 4*x + 4*sqrt((-1 + x)*x))/x^1, x, 1, CannotIntegrate(log(-1 + 4*x + 4*sqrt(-x + x^2))/x, x)]
    @test_int [log(-1 + 4*x + 4*sqrt((-1 + x)*x))/x^2, x, 19, (4*sqrt(-x + x^2))/x + 4*atanh((1 - 10*x)/(6*sqrt(-x + x^2))) + 4*log(x) - 4*log(1 + 8*x) - log(-1 + 4*x + 4*sqrt(-x + x^2))/x]
    @test_int [log(-1 + 4*x + 4*sqrt((-1 + x)*x))/x^3, x, 20, -(2/x) - (10*sqrt(-x + x^2))/x - (2*(-x + x^2)^(3/2))/(3*x^3) - 16*atanh((1 - 10*x)/(6*sqrt(-x + x^2))) - 16*log(x) + 16*log(1 + 8*x) - log(-1 + 4*x + 4*sqrt(-x + x^2))/(2*x^2)]


    @test_int [x^(3/2)*log(-1 + 4*x + 4*sqrt((-1 + x)*x)), x, 15, -(sqrt(x)/160) + x^(3/2)/60 - (2*x^(5/2))/25 - (17*sqrt(-x + x^2))/(32*sqrt(x)) - (71*(-x + x^2)^(3/2))/(300*x^(3/2)) - (2*(-x + x^2)^(3/2))/(25*sqrt(x)) - (sqrt(-x + x^2)*atan((2/3)*sqrt(2)*sqrt(-1 + x)))/(320*sqrt(2)*sqrt(-1 + x)*sqrt(x)) + atan(2*sqrt(2)*sqrt(x))/(320*sqrt(2)) + (2/5)*x^(5/2)*log(-1 + 4*x + 4*sqrt(-x + x^2))]
    @test_int [x^(1/2)*log(-1 + 4*x + 4*sqrt((-1 + x)*x)), x, 13, sqrt(x)/12 - (2*x^(3/2))/9 - (11*sqrt(-x + x^2))/(12*sqrt(x)) - (2*(-x + x^2)^(3/2))/(9*x^(3/2)) + (sqrt(-x + x^2)*atan((2/3)*sqrt(2)*sqrt(-1 + x)))/(24*sqrt(2)*sqrt(-1 + x)*sqrt(x)) - atan(2*sqrt(2)*sqrt(x))/(24*sqrt(2)) + (2/3)*x^(3/2)*log(-1 + 4*x + 4*sqrt(-x + x^2))]
    @test_int [log(-1 + 4*x + 4*sqrt((-1 + x)*x))/x^(1/2), x, 12, -2*sqrt(x) - (2*sqrt(-x + x^2))/sqrt(x) - (sqrt(-x + x^2)*atan((2/3)*sqrt(2)*sqrt(-1 + x)))/(sqrt(2)*sqrt(-1 + x)*sqrt(x)) + atan(2*sqrt(2)*sqrt(x))/sqrt(2) + 2*sqrt(x)*log(-1 + 4*x + 4*sqrt(-x + x^2))]
    @test_int [log(-1 + 4*x + 4*sqrt((-1 + x)*x))/x^(3/2), x, 15, -((4*sqrt(2)*sqrt(-x + x^2)*atan((2/3)*sqrt(2)*sqrt(-1 + x)))/(sqrt(-1 + x)*sqrt(x))) + 4*sqrt(2)*atan(2*sqrt(2)*sqrt(x)) - 8*atan(sqrt(x)/sqrt(-x + x^2)) - (2*log(-1 + 4*x + 4*sqrt(-x + x^2)))/sqrt(x)]
    @test_int [log(-1 + 4*x + 4*sqrt((-1 + x)*x))/x^(5/2), x, 18, -(16/(3*sqrt(x))) + (4*sqrt(-x + x^2))/(3*x^(3/2)) + (32*sqrt(2)*sqrt(-x + x^2)*atan((2/3)*sqrt(2)*sqrt(-1 + x)))/(3*sqrt(-1 + x)*sqrt(x)) - (32/3)*sqrt(2)*atan(2*sqrt(2)*sqrt(x)) + (44/3)*atan(sqrt(x)/sqrt(-x + x^2)) - (2*log(-1 + 4*x + 4*sqrt(-x + x^2)))/(3*x^(3/2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*log(d+e*(F^(c*(a+b*x)))^n)=#


    @test_int [x^3*log(a + b*ℯ^x), x, 6, (1/4)*x^4*log(a + b*ℯ^x) - (1/4)*x^4*log(1 + (b*ℯ^x)/a) - x^3*PolyLog(2, -((b*ℯ^x)/a)) + 3*x^2*PolyLog(3, -((b*ℯ^x)/a)) - 6*x*PolyLog(4, -((b*ℯ^x)/a)) + 6*PolyLog(5, -((b*ℯ^x)/a))]
    @test_int [x^2*log(a + b*ℯ^x), x, 5, (1/3)*x^3*log(a + b*ℯ^x) - (1/3)*x^3*log(1 + (b*ℯ^x)/a) - x^2*PolyLog(2, -((b*ℯ^x)/a)) + 2*x*PolyLog(3, -((b*ℯ^x)/a)) - 2*PolyLog(4, -((b*ℯ^x)/a))]
    @test_int [x^1*log(a + b*ℯ^x), x, 4, (1/2)*x^2*log(a + b*ℯ^x) - (1/2)*x^2*log(1 + (b*ℯ^x)/a) - x*PolyLog(2, -((b*ℯ^x)/a)) + PolyLog(3, -((b*ℯ^x)/a))]
    @test_int [x^0*log(a + b*ℯ^x), x, 4, x*log(a + b*ℯ^x) - x*log(1 + (b*ℯ^x)/a) - PolyLog(2, -((b*ℯ^x)/a))]
    @test_int [log(a + b*ℯ^x)/x^1, x, 0, CannotIntegrate(log(a + b*ℯ^x)/x, x)]


    @test_int [x^3*log(1 + e*(f^(c*(a + b*x)))^n), x, 5, -((x^3*PolyLog(2, (-e)*(f^(c*(a + b*x)))^n))/(b*c*n*log(f))) + (3*x^2*PolyLog(3, (-e)*(f^(c*(a + b*x)))^n))/(b^2*c^2*n^2*log(f)^2) - (6*x*PolyLog(4, (-e)*(f^(c*(a + b*x)))^n))/(b^3*c^3*n^3*log(f)^3) + (6*PolyLog(5, (-e)*(f^(c*(a + b*x)))^n))/(b^4*c^4*n^4*log(f)^4)]
    @test_int [x^2*log(1 + e*(f^(c*(a + b*x)))^n), x, 4, -((x^2*PolyLog(2, (-e)*(f^(c*(a + b*x)))^n))/(b*c*n*log(f))) + (2*x*PolyLog(3, (-e)*(f^(c*(a + b*x)))^n))/(b^2*c^2*n^2*log(f)^2) - (2*PolyLog(4, (-e)*(f^(c*(a + b*x)))^n))/(b^3*c^3*n^3*log(f)^3)]
    @test_int [x^1*log(1 + e*(f^(c*(a + b*x)))^n), x, 3, -((x*PolyLog(2, (-e)*(f^(c*(a + b*x)))^n))/(b*c*n*log(f))) + PolyLog(3, (-e)*(f^(c*(a + b*x)))^n)/(b^2*c^2*n^2*log(f)^2)]
    @test_int [x^0*log(1 + e*(f^(c*(a + b*x)))^n), x, 2, -(PolyLog(2, (-e)*(f^(c*(a + b*x)))^n)/(b*c*n*log(f)))]
    @test_int [log(1 + e*(f^(c*(a + b*x)))^n)/x^1, x, 0, CannotIntegrate(log(1 + e*(f^(c*(a + b*x)))^n)/x, x)]


    @test_int [x^3*log(d + e*(f^(c*(a + b*x)))^n), x, 6, (1/4)*x^4*log(d + e*(f^(c*(a + b*x)))^n) - (1/4)*x^4*log(1 + (e*(f^(c*(a + b*x)))^n)/d) - (x^3*PolyLog(2, -((e*(f^(c*(a + b*x)))^n)/d)))/(b*c*n*log(f)) + (3*x^2*PolyLog(3, -((e*(f^(c*(a + b*x)))^n)/d)))/(b^2*c^2*n^2*log(f)^2) - (6*x*PolyLog(4, -((e*(f^(c*(a + b*x)))^n)/d)))/(b^3*c^3*n^3*log(f)^3) + (6*PolyLog(5, -((e*(f^(c*(a + b*x)))^n)/d)))/(b^4*c^4*n^4*log(f)^4)]
    @test_int [x^2*log(d + e*(f^(c*(a + b*x)))^n), x, 5, (1/3)*x^3*log(d + e*(f^(c*(a + b*x)))^n) - (1/3)*x^3*log(1 + (e*(f^(c*(a + b*x)))^n)/d) - (x^2*PolyLog(2, -((e*(f^(c*(a + b*x)))^n)/d)))/(b*c*n*log(f)) + (2*x*PolyLog(3, -((e*(f^(c*(a + b*x)))^n)/d)))/(b^2*c^2*n^2*log(f)^2) - (2*PolyLog(4, -((e*(f^(c*(a + b*x)))^n)/d)))/(b^3*c^3*n^3*log(f)^3)]
    @test_int [x^1*log(d + e*(f^(c*(a + b*x)))^n), x, 4, (1/2)*x^2*log(d + e*(f^(c*(a + b*x)))^n) - (1/2)*x^2*log(1 + (e*(f^(c*(a + b*x)))^n)/d) - (x*PolyLog(2, -((e*(f^(c*(a + b*x)))^n)/d)))/(b*c*n*log(f)) + PolyLog(3, -((e*(f^(c*(a + b*x)))^n)/d))/(b^2*c^2*n^2*log(f)^2)]
    @test_int [x^0*log(d + e*(f^(c*(a + b*x)))^n), x, 4, x*log(d + e*(f^(c*(a + b*x)))^n) - x*log(1 + (e*(f^(c*(a + b*x)))^n)/d) - PolyLog(2, -((e*(f^(c*(a + b*x)))^n)/d))/(b*c*n*log(f))]
    @test_int [log(d + e*(f^(c*(a + b*x)))^n)/x^1, x, 0, CannotIntegrate(log(d + e*(f^(c*(a + b*x)))^n)/x, x)]


    @test_int [log(pi + b*(F^(e*(c + d*x)))^n), x, 3, x*log(pi) - PolyLog(2, -((b*(F^(e*(c + d*x)))^n)/pi))/(d*e*n*log(F))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*F(log(c*x^n))/x=#


    @test_int [1/(x*(3 + log(x))), x, 2, log(3 + log(x))]
    @test_int [sqrt(1 + log(x))/x, x, 2, (2*(1 + log(x))^(3/2))/3]
    @test_int [(1 + log(x))^5/x, x, 2, (1 + log(x))^6/6]
    @test_int [1/(x*sqrt(log(x))), x, 2, 2*sqrt(log(x))]

    @test_int [1/(x*(1 + log(x)^2)), x, 2, atan(log(x))]
    @test_int [1/(x*sqrt(-3 + log(x)^2)), x, 3, atanh(log(x)/sqrt(-3 + log(x)^2))]
    @test_int [1/(x*sqrt(4 - 9*log(x)^2)), x, 2, asin((3*log(x))/2)/3]
    @test_int [1/(x*sqrt(4 + log(x)^2)), x, 2, asinh(log(x)/2)]
    @test_int [1/(x*(2 + 3*log(6*x)^3)), x, 7, -(atan(1/sqrt(3) - (2^(2/3)*log(6*x))/3^(1/6))/(2^(2/3)*3^(5/6))) + log(2^(1/3) + 3^(1/3)*log(6*x))/(3*2^(2/3)*3^(1/3)) - log(2^(2/3) - 6^(1/3)*log(6*x) + 3^(2/3)*log(6*x)^2)/(6*2^(2/3)*3^(1/3))]

    @test_int [log(log(6*x))/(x*log(6*x)), x, 2, log(log(6*x))^2/2]
    @test_int [2^log(x)/x, x, 2, 2^log(x)/log(2), x^log(2)/log(2)]
    @test_int [sin(log(x))^2/x, x, 3, log(x)/2 - (1/2)*cos(log(x))*sin(log(x))]
    @test_int [(7 - log(x))/(x*(3 + log(x))), x, 3, -log(x) + 10*log(3 + log(x))]
    @test_int [((2 - log(x))*(3 + log(x))^2)/x, x, 3, (5/3)*(3 + log(x))^3 - (1/4)*(3 + log(x))^4]
    @test_int [(log(x)^2*sqrt(1 + log(x)^2))/x, x, 4, (-(1/8))*asinh(log(x)) + (1/8)*log(x)*sqrt(1 + log(x)^2) + (1/4)*log(x)^3*sqrt(1 + log(x)^2)]
    @test_int [(1 + log(x))/(x*(3 + 2*log(x))^2), x, 3, 1/(4*(3 + 2*log(x))) + (1/4)*log(3 + 2*log(x))]
    @test_int [log(x)/(x*sqrt(1 + log(x))), x, 3, -2*sqrt(1 + log(x)) + (2/3)*(1 + log(x))^(3/2)]
    @test_int [log(x)/(x*sqrt(-1 + 4*log(x))), x, 3, (1/8)*sqrt(-1 + 4*log(x)) + (1/24)*(-1 + 4*log(x))^(3/2)]
    @test_int [sqrt(1 + log(x))/(x*log(x)), x, 4, -2*atanh(sqrt(1 + log(x))) + 2*sqrt(1 + log(x))]
    @test_int [(1 - 4*log(x) + log(x)^2)/(x*(-1 + log(x))^4), x, 3, -(2/(3*(1 - log(x))^3)) + 1/(1 - log(x)) + 1/(-1 + log(x))^2]


    @test_int [(log(a*x^n)^2)^p/x, x, 3, (log(a*x^n)*(log(a*x^n)^2)^p)/(n*(1 + 2*p))]
    @test_int [(log(a*x^n)^m)^p/x, x, 3, (log(a*x^n)*(log(a*x^n)^m)^p)/(n*(1 + m*p))]
    @test_int [sqrt(log(a*x^n)^2)/x, x, 3, (log(a*x^n)*sqrt(log(a*x^n)^2))/(2*n)]
    @test_int [(b*log(a*x^n)^m)^p/x, x, 3, (log(a*x^n)*(b*log(a*x^n)^m)^p)/(n*(1 + m*p))]


    @test_int [1/(x*log(ℯ^x)), x, 4, -(log(x)/(x - log(ℯ^x))) + log(log(ℯ^x))/(x - log(ℯ^x))]


    #= ::Section::Closed:: =#
    #=Integrands*involving*logarithms*and*trig*functions=#


    #= ::Subsection::Closed:: =#
    #=Integrands*involving*products*of*logarithms*and*trig*functions=#


    @test_int [log(x)*sin(a + b*x)^1, x, 5, (cos(a)*CosIntegral(b*x))/b - (cos(a + b*x)*log(x))/b - (sin(a)*SinIntegral(b*x))/b]
    @test_int [log(x)*sin(a + b*x)^2, x, 5, -(x/2) + (1/2)*x*log(x) + (CosIntegral(2*b*x)*sin(2*a))/(4*b) - (cos(a + b*x)*log(x)*sin(a + b*x))/(2*b) + (cos(2*a)*SinIntegral(2*b*x))/(4*b)]
    @test_int [log(x)*sin(a + b*x)^3, x, 15, (3*cos(a)*CosIntegral(b*x))/(4*b) - (cos(3*a)*CosIntegral(3*b*x))/(12*b) - (cos(a + b*x)*log(x))/b + (cos(a + b*x)^3*log(x))/(3*b) - (3*sin(a)*SinIntegral(b*x))/(4*b) + (sin(3*a)*SinIntegral(3*b*x))/(12*b)]


    @test_int [log(x)*cos(a + b*x)^1, x, 5, -((CosIntegral(b*x)*sin(a))/b) + (log(x)*sin(a + b*x))/b - (cos(a)*SinIntegral(b*x))/b]
    @test_int [log(x)*cos(a + b*x)^2, x, 7, -(x/2) + (1/2)*x*log(x) - (CosIntegral(2*b*x)*sin(2*a))/(4*b) + (cos(a + b*x)*log(x)*sin(a + b*x))/(2*b) - (cos(2*a)*SinIntegral(2*b*x))/(4*b)]
    @test_int [log(x)*cos(a + b*x)^3, x, 15, -((3*CosIntegral(b*x)*sin(a))/(4*b)) - (CosIntegral(3*b*x)*sin(3*a))/(12*b) + (log(x)*sin(a + b*x))/b - (log(x)*sin(a + b*x)^3)/(3*b) - (3*cos(a)*SinIntegral(b*x))/(4*b) - (cos(3*a)*SinIntegral(3*b*x))/(12*b)]


    @test_int [cos(x)*log(x) + sin(x)/x, x, 4, log(x)*sin(x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*involving*logarithms*of*trig*functions=#


    @test_int [log(a*sin(x)), x, 5, (im*x^2)/2 - x*log(1 - ℯ^(2*im*x)) + x*log(a*sin(x)) + (1/2)*im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(a*sin(x)^2), x, 6, im*x^2 - 2*x*log(1 - ℯ^(2*im*x)) + x*log(a*sin(x)^2) + im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(a*sin(x)^n), x, 6, (1/2)*im*n*x^2 - n*x*log(1 - ℯ^(2*im*x)) + x*log(a*sin(x)^n) + (1/2)*im*n*PolyLog(2, ℯ^(2*im*x))]

    @test_int [log(a*cos(x)), x, 5, (im*x^2)/2 - x*log(1 + ℯ^(2*im*x)) + x*log(a*cos(x)) + (1/2)*im*PolyLog(2, -ℯ^(2*im*x))]
    @test_int [log(a*cos(x)^2), x, 6, im*x^2 - 2*x*log(1 + ℯ^(2*im*x)) + x*log(a*cos(x)^2) + im*PolyLog(2, -ℯ^(2*im*x))]
    @test_int [log(a*cos(x)^n), x, 6, (1/2)*im*n*x^2 - n*x*log(1 + ℯ^(2*im*x)) + x*log(a*cos(x)^n) + (1/2)*im*n*PolyLog(2, -ℯ^(2*im*x))]

    @test_int [log(a*tan(x)), x, 7, 2*x*atanh(ℯ^(2*im*x)) + x*log(a*tan(x)) - (1/2)*im*PolyLog(2, -ℯ^(2*im*x)) + (1/2)*im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(a*tan(x)^2), x, 8, 4*x*atanh(ℯ^(2*im*x)) + x*log(a*tan(x)^2) - im*PolyLog(2, -ℯ^(2*im*x)) + im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(a*tan(x)^n), x, 8, 2*n*x*atanh(ℯ^(2*im*x)) + x*log(a*tan(x)^n) - (1/2)*im*n*PolyLog(2, -ℯ^(2*im*x)) + (1/2)*im*n*PolyLog(2, ℯ^(2*im*x))]

    @test_int [log(a*cot(x)), x, 7, -2*x*atanh(ℯ^(2*im*x)) + x*log(a*cot(x)) + (1/2)*im*PolyLog(2, -ℯ^(2*im*x)) - (1/2)*im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(a*cot(x)^2), x, 8, -4*x*atanh(ℯ^(2*im*x)) + x*log(a*cot(x)^2) + im*PolyLog(2, -ℯ^(2*im*x)) - im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(a*cot(x)^n), x, 8, -2*n*x*atanh(ℯ^(2*im*x)) + x*log(a*cot(x)^n) + (1/2)*im*n*PolyLog(2, -ℯ^(2*im*x)) - (1/2)*im*n*PolyLog(2, ℯ^(2*im*x))]

    @test_int [log(a*sec(x)), x, 5, -((im*x^2)/2) + x*log(1 + ℯ^(2*im*x)) + x*log(a*sec(x)) - (1/2)*im*PolyLog(2, -ℯ^(2*im*x))]
    @test_int [log(a*sec(x)^2), x, 6, (-im)*x^2 + 2*x*log(1 + ℯ^(2*im*x)) + x*log(a*sec(x)^2) - im*PolyLog(2, -ℯ^(2*im*x))]
    @test_int [log(a*sec(x)^n), x, 6, (-(1/2))*im*n*x^2 + n*x*log(1 + ℯ^(2*im*x)) + x*log(a*sec(x)^n) - (1/2)*im*n*PolyLog(2, -ℯ^(2*im*x))]

    @test_int [log(a*csc(x)), x, 5, -((im*x^2)/2) + x*log(1 - ℯ^(2*im*x)) + x*log(a*csc(x)) - (1/2)*im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(a*csc(x)^2), x, 6, (-im)*x^2 + 2*x*log(1 - ℯ^(2*im*x)) + x*log(a*csc(x)^2) - im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(a*csc(x)^n), x, 6, (-(1/2))*im*n*x^2 + n*x*log(1 - ℯ^(2*im*x)) + x*log(a*csc(x)^n) - (1/2)*im*n*PolyLog(2, ℯ^(2*im*x))]


    @test_int [cos(x)*log((1 - cos(2*x))/2), x, 3, -2*sin(x) + log((1/2)*(1 - cos(2*x)))*sin(x)]
    @test_int [cot(x)/log(ℯ*sin(x)), x, 3, log(log(ℯ*sin(x))), log(1 + log(sin(x)))]
    @test_int [cot(x)/log(ℯ^sin(x)), x, 5, log(log(ℯ^sin(x)))/(-log(ℯ^sin(x)) + sin(x)) - log(sin(x))/(-log(ℯ^sin(x)) + sin(x))]
    @test_int [log(cos(x))*sec(x)^2, x, 3, -x + tan(x) + log(cos(x))*tan(x)]
    @test_int [cot(x)*log(sin(x)), x, 2, log(sin(x))^2/2]
    @test_int [cos(x)*log(sin(x))*sin(x)^2, x, 4, (-(1/9))*sin(x)^3 + (1/3)*log(sin(x))*sin(x)^3]
    @test_int [log(sin(a/2 + b*x/2)*cos(a/2 + b*x/2))*cos(a + b*x), x, 2, -(sin(a + b*x)/b) + (log(cos(a/2 + (b*x)/2)*sin(a/2 + (b*x)/2))*sin(a + b*x))/b]
    @test_int [tan(x)/log(cos(x)), x, 3, -log(log(cos(x)))]


    @test_int [log(cos(x))*tan(x), x, 2, -log(cos(x))^2/2]
    @test_int [log(cos(x))*sin(x), x, 2, cos(x) - cos(x)*log(cos(x))]
    @test_int [log(cos(x))*cos(x), x, 4, atanh(sin(x)) - sin(x) + log(cos(x))*sin(x)]

    @test_int [log(sin(x))*cos(x), x, 2, -sin(x) + log(sin(x))*sin(x)]
    @test_int [log(sin(x))*sin(x)^2, x, 10, x/4 + (im*x^2)/4 - (1/2)*x*log(1 - ℯ^(2*im*x)) + (1/2)*x*log(sin(x)) + (1/4)*im*PolyLog(2, ℯ^(2*im*x)) + (1/4)*cos(x)*sin(x) - (1/2)*cos(x)*log(sin(x))*sin(x)]
    @test_int [log(sin(x))*sin(x)^3, x, 7, (-(2/3))*atanh(cos(x)) + (2*cos(x))/3 - cos(x)^3/9 - cos(x)*log(sin(x)) + (1/3)*cos(x)^3*log(sin(x))]
    @test_int [log(sin(sqrt(x))), x, 8, (im/3)*x^(3/2) - x*log(1 - ℯ^((2*im)*sqrt(x))) + x*log(sin(sqrt(x))) + im*sqrt(x)*PolyLog(2, ℯ^((2*im)*sqrt(x))) - PolyLog(3, ℯ^((2*im)*sqrt(x)))/2]
    @test_int [log(sin(x))*csc(x)^2, x, 3, -x - cot(x) - cot(x)*log(sin(x))]


    #= ::Section::Closed:: =#
    #=Integrands*involving*logarithms*and*hyperbolic*functions=#


    #= ::Subsection::Closed:: =#
    #=Integrands*involving*products*of*logarithms*and*hyperbolic*functions=#


    @test_int [log(x)*sinh(a + b*x)^1, x, 5, -((cosh(a)*CoshIntegral(b*x))/b) + (cosh(a + b*x)*log(x))/b - (sinh(a)*SinhIntegral(b*x))/b]
    @test_int [log(x)*sinh(a + b*x)^2, x, 7, x/2 - (1/2)*x*log(x) - (CoshIntegral(2*b*x)*sinh(2*a))/(4*b) + (cosh(a + b*x)*log(x)*sinh(a + b*x))/(2*b) - (cosh(2*a)*SinhIntegral(2*b*x))/(4*b)]
    @test_int [log(x)*sinh(a + b*x)^3, x, 15, (3*cosh(a)*CoshIntegral(b*x))/(4*b) - (cosh(3*a)*CoshIntegral(3*b*x))/(12*b) - (cosh(a + b*x)*log(x))/b + (cosh(a + b*x)^3*log(x))/(3*b) + (3*sinh(a)*SinhIntegral(b*x))/(4*b) - (sinh(3*a)*SinhIntegral(3*b*x))/(12*b)]


    @test_int [log(x)*cosh(a + b*x)^1, x, 5, -((CoshIntegral(b*x)*sinh(a))/b) + (log(x)*sinh(a + b*x))/b - (cosh(a)*SinhIntegral(b*x))/b]
    @test_int [log(x)*cosh(a + b*x)^2, x, 7, -(x/2) + (1/2)*x*log(x) - (CoshIntegral(2*b*x)*sinh(2*a))/(4*b) + (cosh(a + b*x)*log(x)*sinh(a + b*x))/(2*b) - (cosh(2*a)*SinhIntegral(2*b*x))/(4*b)]
    @test_int [log(x)*cosh(a + b*x)^3, x, 15, -((3*CoshIntegral(b*x)*sinh(a))/(4*b)) - (CoshIntegral(3*b*x)*sinh(3*a))/(12*b) + (log(x)*sinh(a + b*x))/b + (log(x)*sinh(a + b*x)^3)/(3*b) - (3*cosh(a)*SinhIntegral(b*x))/(4*b) - (cosh(3*a)*SinhIntegral(3*b*x))/(12*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*involving*logarithms*of*hyperbolic*functions=#


    @test_int [log(a*sinh(x)), x, 5, x^2/2 - x*log(1 - ℯ^(2*x)) + x*log(a*sinh(x)) - (1/2)*PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*sinh(x)^2), x, 6, x^2 - 2*x*log(1 - ℯ^(2*x)) + x*log(a*sinh(x)^2) - PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*sinh(x)^n), x, 6, (n*x^2)/2 - n*x*log(1 - ℯ^(2*x)) + x*log(a*sinh(x)^n) - (1/2)*n*PolyLog(2, ℯ^(2*x))]

    @test_int [log(a*cosh(x)), x, 5, x^2/2 - x*log(1 + ℯ^(2*x)) + x*log(a*cosh(x)) - (1/2)*PolyLog(2, -ℯ^(2*x))]
    @test_int [log(a*cosh(x)^2), x, 6, x^2 - 2*x*log(1 + ℯ^(2*x)) + x*log(a*cosh(x)^2) - PolyLog(2, -ℯ^(2*x))]
    @test_int [log(a*cosh(x)^n), x, 6, (n*x^2)/2 - n*x*log(1 + ℯ^(2*x)) + x*log(a*cosh(x)^n) - (1/2)*n*PolyLog(2, -ℯ^(2*x))]

    @test_int [log(tanh(x)), x, 7, 2*x*atanh(ℯ^(2*x)) + x*log(tanh(x)) + (1/2)*PolyLog(2, -ℯ^(2*x)) - (1/2)*PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*tanh(x)), x, 7, 2*x*atanh(ℯ^(2*x)) + x*log(a*tanh(x)) + (1/2)*PolyLog(2, -ℯ^(2*x)) - (1/2)*PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*tanh(x)^2), x, 8, 4*x*atanh(ℯ^(2*x)) + x*log(a*tanh(x)^2) + PolyLog(2, -ℯ^(2*x)) - PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*tanh(x)^n), x, 8, 2*n*x*atanh(ℯ^(2*x)) + x*log(a*tanh(x)^n) + (1/2)*n*PolyLog(2, -ℯ^(2*x)) - (1/2)*n*PolyLog(2, ℯ^(2*x))]

    @test_int [log(coth(x)), x, 7, -2*x*atanh(ℯ^(2*x)) + x*log(coth(x)) - (1/2)*PolyLog(2, -ℯ^(2*x)) + (1/2)*PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*coth(x)), x, 7, -2*x*atanh(ℯ^(2*x)) + x*log(a*coth(x)) - (1/2)*PolyLog(2, -ℯ^(2*x)) + (1/2)*PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*coth(x)^2), x, 8, -4*x*atanh(ℯ^(2*x)) + x*log(a*coth(x)^2) - PolyLog(2, -ℯ^(2*x)) + PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*coth(x)^n), x, 8, -2*n*x*atanh(ℯ^(2*x)) + x*log(a*coth(x)^n) - (1/2)*n*PolyLog(2, -ℯ^(2*x)) + (1/2)*n*PolyLog(2, ℯ^(2*x))]

    @test_int [log(a*sech(x)), x, 5, -(x^2/2) + x*log(1 + ℯ^(2*x)) + x*log(a*sech(x)) + (1/2)*PolyLog(2, -ℯ^(2*x))]
    @test_int [log(a*sech(x)^2), x, 6, -x^2 + 2*x*log(1 + ℯ^(2*x)) + x*log(a*sech(x)^2) + PolyLog(2, -ℯ^(2*x))]
    @test_int [log(a*sech(x)^n), x, 6, -((n*x^2)/2) + n*x*log(1 + ℯ^(2*x)) + x*log(a*sech(x)^n) + (1/2)*n*PolyLog(2, -ℯ^(2*x))]

    @test_int [log(a*csch(x)), x, 5, -(x^2/2) + x*log(1 - ℯ^(2*x)) + x*log(a*csch(x)) + (1/2)*PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*csch(x)^2), x, 6, -x^2 + 2*x*log(1 - ℯ^(2*x)) + x*log(a*csch(x)^2) + PolyLog(2, ℯ^(2*x))]
    @test_int [log(a*csch(x)^n), x, 6, -((n*x^2)/2) + n*x*log(1 - ℯ^(2*x)) + x*log(a*csch(x)^n) + (1/2)*n*PolyLog(2, ℯ^(2*x))]


    @test_int [log(sinh(a/2 + b*x/2)*cosh(a/2 + b*x/2))*cosh(a + b*x), x, 2, -(sinh(a + b*x)/b) + (log(cosh(a/2 + (b*x)/2)*sinh(a/2 + (b*x)/2))*sinh(a + b*x))/b]
    @test_int [log(cosh(x)^2)*sinh(x), x, 3, -2*cosh(x) + cosh(x)*log(cosh(x)^2)]


    #= ::Section::Closed:: =#
    #=Problems*from*Calculus*textbooks=#


    #= ::Subsection::Closed:: =#
    #=Anton*Calculus, 4th*Edition=#


    @test_int [log(x)/sqrt(x), x, 1, -4*sqrt(x) + 2*sqrt(x)*log(x)]
    @test_int [x*log(2 - 3*x^2), x, 3, -(x^2/2) - (1/6)*(2 - 3*x^2)*log(2 - 3*x^2)]


    #= ::Subsection::Closed:: =#
    #=Edwards*and*Penney*Calculus=#


    @test_int [1/(x*sqrt(1 - log(x)^2)), x, 2, asin(log(x))]


    #= ::Subsection::Closed:: =#
    #=Thomas*Calculus, 8th*Edition=#


    @test_int [16*x^3*log(x)^2, x, 3, x^4/2 - 2*x^4*log(x) + 4*x^4*log(x)^2]
    @test_int [log(sqrt(a + b*x)), x, 2, -(x/2) + ((a + b*x)*log(sqrt(a + b*x)))/b]
    @test_int [x*log(sqrt(2 + x)), x, 3, x/2 - x^2/8 + (1/2)*x^2*log(sqrt(2 + x)) - log(2 + x)]
    @test_int [x*log((1 + 3*x)^(1/3)), x, 3, x/18 - x^2/12 + (1/2)*x^2*log((1 + 3*x)^(1/3)) - (1/54)*log(1 + 3*x)]
    @test_int [x*log(x + x^3), x, 4, -((3*x^2)/4) + (1/2)*log(1 + x^2) + (1/2)*x^2*log(x + x^3)]
    @test_int [log(x + sqrt(1 + x^2)), x, 2, -sqrt(1 + x^2) + x*log(x + sqrt(1 + x^2))]
    @test_int [log(x + sqrt(-1 + x^2)), x, 2, -sqrt(-1 + x^2) + x*log(x + sqrt(-1 + x^2))]
    @test_int [log(x - sqrt(-1 + x^2)), x, 2, sqrt(-1 + x^2) + x*log(x - sqrt(-1 + x^2))]
    @test_int [log(sqrt(x) + sqrt(1 + x)), x, 6, (-(1/2))*sqrt(x)*sqrt(1 + x) + asinh(sqrt(x))/2 + x*log(sqrt(x) + sqrt(1 + x))]


    #= ::Section::Closed:: =#
    #=Problems*from*integration*competitions=#


    #= ::Subsection::Closed:: =#
    #=MIT*Integration*Competition=#


    @test_int [x^(1/3)*log(x), x, 1, -((9*x^(4/3))/16) + (3/4)*x^(4/3)*log(x)]


    #= ::Subsection::Closed:: =#
    #=University*of*Wisconsin*Integration*Competition=#


    @test_int [2^log(x), x, 2, x^(1 + log(2))/(1 + log(2))]
    @test_int [(1 - log(x))/x^2, x, 1, log(x)/x]


    #= ::Section::Closed:: =#
    #=Miscellaneous*problems=#


    @test_int [log(1 + x + sqrt(1 + x)), x, 3, - x + sqrt(1 + x) + (1/2)*log(1 + x) + x*log(1 + x + sqrt(1 + x))]
    @test_int [log(x + x^3), x, 3, -3*x + 2*atan(x) + x*log(x + x^3)]
    @test_int [2^log(-8 + 7*x), x, 2, (-8 + 7*x)^(1 + log(2))/(7*(1 + log(2)))]
    @test_int [log((-11 + 5*x)/(5 + 76*x)), x, 2, (-(1/5))*(11 - 5*x)*log(-((11 - 5*x)/(5 + 76*x))) - (861/380)*log(5 + 76*x)]
    @test_int [log(1/(13 + x)), x, 2, x + (13 + x)*log((13 + x)^(-1))]
    @test_int [x*log((1 + x)/x^2), x, 4, x/2 + x^2/4 - (1/2)*log(1 + x) + (1/2)*x^2*log((1 + x)/x^2)]
    @test_int [x^3*log((7 + 5*x)/x^2), x, 4, (343*x)/500 - (49*x^2)/200 + (7*x^3)/60 + x^4/16 - (2401*log(7 + 5*x))/2500 + (1/4)*x^4*log((7 + 5*x)/x^2)]
    #= [x^3*log(d + c*x)^4, x, 89, (c*x*(-70140*d^3 + 5190*c*d^2*x - 700*c^2*d*x^2 + 81*c^3*x^3) + 12*(5845*d^4 + 4980*c*d^3*x - 690*c^2*d^2*x^2 + 148*c^3*d*x^3 - 27*c^4*x^4)*log(d + c*x) - 72*(415*d^4 + 300*c*d^3*x - 78*c^2*d^2*x^2 + 28*c^3*d*x^3 - 9*c^4*x^4)*log(d + c*x)^2 + 288*(25*d^4 + 12*c*d^3*x - 6*c^2*d^2*x^2 + 4*c^3*d*x^3 - 3*c^4*x^4)*log(d + c*x)^3 - 864*(d^4 - c^4*x^4)*log(d + c*x)^4)/(3456*c^4)] =#


    @test_int [(a + b*x)*log(a + b*x), x, 2, -((a + b*x)^2/(4*b)) + ((a + b*x)^2*log(a + b*x))/(2*b)]
    @test_int [(a + b*x)^2*log(a + b*x), x, 2, -((a + b*x)^3/(9*b)) + ((a + b*x)^3*log(a + b*x))/(3*b)]
    @test_int [log(a + b*x)/(a + b*x), x, 2, log(a + b*x)^2/(2*b)]
    @test_int [log(a + b*x)/(a + b*x)^2, x, 2, -(1/(b*(a + b*x))) - log(a + b*x)/(b*(a + b*x))]
    @test_int [(a + b*x)^n*log(a + b*x), x, 2, -((a + b*x)^(1 + n)/(b*(1 + n)^2)) + ((a + b*x)^(1 + n)*log(a + b*x))/(b*(1 + n))]


    @test_int [1/(a*x + b*x*log(c*x^n)), x, 2, log(a + b*log(c*x^n))/(b*n)]
    @test_int [1/(a*x + b*x*log(c*x^n)^2), x, 2, atan((sqrt(b)*log(c*x^n))/sqrt(a))/(sqrt(a)*sqrt(b)*n)]
    @test_int [1/(a*x + b*x*log(c*x^n)^3), x, 7, -(atan((a^(1/3) - 2*b^(1/3)*log(c*x^n))/(sqrt(3)*a^(1/3)))/(sqrt(3)*a^(2/3)*b^(1/3)*n)) + log(a^(1/3) + b^(1/3)*log(c*x^n))/(3*a^(2/3)*b^(1/3)*n) - log(a^(2/3) - a^(1/3)*b^(1/3)*log(c*x^n) + b^(2/3)*log(c*x^n)^2)/(6*a^(2/3)*b^(1/3)*n)]
    @test_int [1/(a*x + b*x*log(c*x^n)^4), x, 10, -(atan(1 - (sqrt(2)*b^(1/4)*log(c*x^n))/a^(1/4))/(2*sqrt(2)*a^(3/4)*b^(1/4)*n)) + atan(1 + (sqrt(2)*b^(1/4)*log(c*x^n))/a^(1/4))/(2*sqrt(2)*a^(3/4)*b^(1/4)*n) - log(sqrt(a) - sqrt(2)*a^(1/4)*b^(1/4)*log(c*x^n) + sqrt(b)*log(c*x^n)^2)/(4*sqrt(2)*a^(3/4)*b^(1/4)*n) + log(sqrt(a) + sqrt(2)*a^(1/4)*b^(1/4)*log(c*x^n) + sqrt(b)*log(c*x^n)^2)/(4*sqrt(2)*a^(3/4)*b^(1/4)*n)]

    @test_int [1/(a*x + b*x/log(c*x^n)), x, 3, log(x)/a - (b*log(b + a*log(c*x^n)))/(a^2*n)]
    @test_int [1/(a*x + b*x/log(c*x^n)^2), x, 3, -((sqrt(b)*atan((sqrt(a)*log(c*x^n))/sqrt(b)))/(a^(3/2)*n)) + log(x)/a]
    @test_int [1/(a*x + b*x/log(c*x^n)^3), x, 8, (b^(1/3)*atan((b^(1/3) - 2*a^(1/3)*log(c*x^n))/(sqrt(3)*b^(1/3))))/(sqrt(3)*a^(4/3)*n) + log(x)/a - (b^(1/3)*log(b^(1/3) + a^(1/3)*log(c*x^n)))/(3*a^(4/3)*n) + (b^(1/3)*log(b^(2/3) - a^(1/3)*b^(1/3)*log(c*x^n) + a^(2/3)*log(c*x^n)^2))/(6*a^(4/3)*n)]
    @test_int [1/(a*x + b*x/log(c*x^n)^4), x, 11, (b^(1/4)*atan(1 - (sqrt(2)*a^(1/4)*log(c*x^n))/b^(1/4)))/(2*sqrt(2)*a^(5/4)*n) - (b^(1/4)*atan(1 + (sqrt(2)*a^(1/4)*log(c*x^n))/b^(1/4)))/(2*sqrt(2)*a^(5/4)*n) + log(x)/a + (b^(1/4)*log(sqrt(b) - sqrt(2)*a^(1/4)*b^(1/4)*log(c*x^n) + sqrt(a)*log(c*x^n)^2))/(4*sqrt(2)*a^(5/4)*n) - (b^(1/4)*log(sqrt(b) + sqrt(2)*a^(1/4)*b^(1/4)*log(c*x^n) + sqrt(a)*log(c*x^n)^2))/(4*sqrt(2)*a^(5/4)*n)]


    @test_int [1/(x + x*log(7*x) + x*log(7*x)^2), x, 3, (2*atan((1 + 2*log(7*x))/sqrt(3)))/sqrt(3)]

    @test_int [(-1 + log(3*x))/(x*(1 - log(3*x) + log(3*x)^2)), x, 5, atan((1 - 2*log(3*x))/sqrt(3))/sqrt(3) + (1/2)*log(1 - log(3*x) + log(3*x)^2)]
    @test_int [(-1 + log(3*x)^2)/(x + x*log(3*x)^3), x, 5, atan((1 - 2*log(3*x))/sqrt(3))/sqrt(3) + (1/2)*log(1 - log(3*x) + log(3*x)^2)]
    @test_int [(-1 + log(3*x)^2)/(x + x*log(3*x) + x*log(3*x)^2), x, 7, -(sqrt(3)*atan((1 + 2*log(3*x))/sqrt(3))) + log(x) - log(1 + log(3*x) + log(3*x)^2)/2]


    @test_int [log(1/x)^2/x^5, x, 2, -(1/(32*x^4)) + log(1/x)/(8*x^4) - log(1/x)^2/(4*x^4)]

    @test_int [1/sqrt(-log(a*x^2)), x, 3, -((sqrt(pi/2)*x*erf(sqrt(-log(a*x^2))/sqrt(2)))/sqrt(a*x^2))]
    @test_int [1/sqrt(-log(a/x^2)), x, 3, sqrt(pi/2)*sqrt(a/x^2)*x*erfi(sqrt(-log(a/x^2))/sqrt(2))]
    @test_int [1/sqrt(-log(a*x^n)), x, 3, -((sqrt(pi)*x*erf(sqrt(-log(a*x^n))/sqrt(n)))/(sqrt(n)*(a*x^n)^n^(-1)))]

    @test_int [log(1 + sqrt(x) - x)/x, x, 8, -2*log((1/2)*(1 + sqrt(5)))*log(1 + sqrt(5) - 2*sqrt(x)) - 2*log(1 - (2*sqrt(x))/(1 - sqrt(5)))*log(sqrt(x)) + 2*log(1 + sqrt(x) - x)*log(sqrt(x)) + 2*PolyLog(2, 1 - (2*sqrt(x))/(1 + sqrt(5))) - 2*PolyLog(2, (2*sqrt(x))/(1 - sqrt(5)))]

    @test_int [(x*log(c + d*x))/(a + b*x), x, 7, -(x/b) + ((c + d*x)*log(c + d*x))/(b*d) - (a*log(-((d*(a + b*x))/(b*c - a*d)))*log(c + d*x))/b^2 - (a*PolyLog(2, (b*(c + d*x))/(b*c - a*d)))/b^2]
    @test_int [log(x)/(-1 + x), x, 1, -PolyLog(2, 1 - x)]
    @test_int [(x*log(1 - a - b*x))/(a + b*x), x, 6, -(x/b) - ((1 - a - b*x)*log(1 - a - b*x))/b^2 + (a*PolyLog(2, a + b*x))/b^2]
    @test_int [((b + 2*c*x)*log(x))/(x*(b + c*x)), x, 5, log(x)^2/2 + log(x)*log(1 + (c*x)/b) + PolyLog(2, -((c*x)/b))]

    @test_int [sin(x*log(x)) + log(x)*sin(x*log(x)), x, 2, -cos(x*log(x))]
    @test_int [log((1 - (-1 + x)^2)/(1 + (-1 + x)^2))/x^2, x, 8, -(1/x) + atan(1 - x) - log((1 - (1 - x)^2)/(1 + (-1 + x)^2))/x + (1/2)*log(2 - x) + log(x)/2 - (1/2)*log(2 - 2*x + x^2)]
    @test_int [log(sqrt(x) + x), x, 4, sqrt(x) - x - log(1 + sqrt(x)) + x*log(sqrt(x) + x)]
    @test_int [log(-(x/(1 + x))), x, 2, x*log(-(x/(1 + x))) - log(1 + x)]
    @test_int [log((-1 + x)/(1 + x)), x, 2, -((1 - x)*log(-((1 - x)/(1 + x)))) - 2*log(1 + x)]

    @test_int [log((1 - x^2)/(1 + x^2))/(1 + x)^2, x, 8, -(1/(1 + x)) - atan(x) + (1/2)*log(1 - x^2) - log((1 - x^2)/(1 + x^2))/(1 + x) - (1/2)*log(1 + x^2)]


    @test_int [log(c*(1 + x^2)^n)/(1 + x^2), x, 5, im*n*atan(x)^2 + 2*n*atan(x)*log(2/(1 + im*x)) + atan(x)*log(c*(1 + x^2)^n) + im*n*PolyLog(2, 1 - 2/(1 + im*x))]
    @test_int [log(x^2/(1 + x^2))/(1 + x^2), x, 5, im*atan(x)^2 - 2*atan(x)*log(2 - 2/(1 - im*x)) + atan(x)*log(x^2/(1 + x^2)) + im*PolyLog(2, -1 + 2/(1 - im*x))]
    @test_int [log(c*x^2/(a + b*x^2))/(a + b*x^2), x, 5, (im*atan((sqrt(b)*x)/sqrt(a))^2)/(sqrt(a)*sqrt(b)) + (atan((sqrt(b)*x)/sqrt(a))*log((c*x^2)/(a + b*x^2)))/(sqrt(a)*sqrt(b)) - (2*atan((sqrt(b)*x)/sqrt(a))*log(2 - (2*sqrt(a))/(sqrt(a) - im*sqrt(b)*x)))/(sqrt(a)*sqrt(b)) + (im*PolyLog(2, -1 + (2*sqrt(a))/(sqrt(a) - im*sqrt(b)*x)))/(sqrt(a)*sqrt(b))]


    @test_int [log(1 + (im*sqrt(1 - a*x))/sqrt(1 + a*x))/(1 - a^2*x^2), x, 1, PolyLog(2, -((im*sqrt(1 - a*x))/sqrt(1 + a*x)))/a]
    @test_int [log(1 - (im*sqrt(1 - a*x))/sqrt(1 + a*x))/(1 - a^2*x^2), x, 1, PolyLog(2, (im*sqrt(1 - a*x))/sqrt(1 + a*x))/a]


    @test_int [log(ℯ^(a + b*x)), x, 2, log(ℯ^(a + b*x))^2/(2*b)]
    @test_int [log(ℯ^(a + b*x^n)), x, 3, -((b*n*x^(1 + n))/(1 + n)) + x*log(ℯ^(a + b*x^n))]


    @test_int [ℯ^x*log(a + b*ℯ^x), x, 5, -ℯ^x + ((a + b*ℯ^x)*log(a + b*ℯ^x))/b, -ℯ^x + (a*log(a + b*ℯ^x))/b + ℯ^x*log(a + b*ℯ^x)]


    @test_int [log(x)*ℯ^(a + b*x), x, 3, -((ℯ^a*ExpIntegralEi(b*x))/b) + (ℯ^(a + b*x)*log(x))/b]


    #= Attempted*expansion*of*these*integrands*can*lead*to*infinite*recursion! =#
    @test_int [x^2/(x + log(x)), x, 0, CannotIntegrate(x^2/(x + log(x)), x)]
    @test_int [x^1/(x + log(x)), x, 0, CannotIntegrate(x/(x + log(x)), x)]
    @test_int [x^0/(x + log(x)), x, 0, CannotIntegrate(1/(x + log(x)), x)]
    @test_int [1/(x^1*(x + log(x))), x, 0, CannotIntegrate(1/(x*(x + log(x))), x)]
    @test_int [1/(x^2*(x + log(x))), x, 0, CannotIntegrate(1/(x^2*(x + log(x))), x)]


    @test_int [log(x)/(x + 4*x*log(x)^2), x, 2, log(1 + 4*log(x)^2)/8]


    @test_int [(1 - log(x))/(x*(x + log(x))), x, 2, log(1 + log(x)/x)]
    @test_int [(1 + x)/(log(x)*(x + log(x))), x, 8, log(log(x)) - log(x + log(x)) + LogIntegral(x)]


    @test_int [log(sqrt((x + 1)/x) + 2), x, 5, (-(1/6))*log(1 - sqrt(1 + 1/x)) + (1/2)*log(1 + sqrt(1 + 1/x)) - (1/3)*log(2 + sqrt(1 + 1/x)) + x*log(2 + sqrt((1 + x)/x))]
    @test_int [log(sqrt((x + 1)/x) + 1), x, 6, -(1/(2*(1 + sqrt(1 + 1/x)))) + (1/2)*atanh(sqrt((1 + x)/x)) + x*log(1 + sqrt((1 + x)/x))]
    @test_int [log(sqrt((x + 1)/x) + 0), x, 4, x*log(sqrt(1 + 1/x)) + (1/2)*log(1 + x)]
    @test_int [log(sqrt((x + 1)/x) - 1), x, 5, -(1/(2*(1 - sqrt(1 + 1/x)))) - (1/2)*atanh(sqrt(1 + 1/x)) + x*log(-1 + sqrt((1 + x)/x))]
    @test_int [log(sqrt((x + 1)/x) - 2), x, If(13>=8, 7, 4), (1/2)*log(1 - sqrt(1 + 1/x)) - (1/3)*log(2 - sqrt(1 + 1/x)) - (1/6)*log(1 + sqrt(1 + 1/x)) + x*log(-2 + sqrt((1 + x)/x))]


    #= Contributed*by*Oleg*Marichev*of*Wolfram*Research*Inc. =#
    @test_int [x^(a*x) + x^(a*x)*log(x), x, 2, x^(a*x)/a]


    @test_int [(log(x)^m)^p, x, 3, (Gamma(1 + m*p, -log(x))*(log(x)^m)^p)/(-log(x))^(m*p)]


    #= [log(a + b*x + c*sqrt(d + e*x))/(f + g*x^2), x, 44, (log((g^(1/4)*(c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2) + 2*b*sqrt(d + e*x)))/(2*b*sqrt((-e)*sqrt(-f) + d*sqrt(g)) + (c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))*log(sqrt((-e)*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) + (log((g^(1/4)*(c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2) + 2*b*sqrt(d + e*x)))/(2*b*sqrt((-e)*sqrt(-f) + d*sqrt(g)) + (c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))*log(sqrt((-e)*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) - (log(a + b*x + c*sqrt(d + e*x))*log(sqrt((-e)*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) - (log((g^(1/4)*(c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2) + 2*b*sqrt(d + e*x)))/(2*b*sqrt(e*sqrt(-f) + d*sqrt(g)) + (c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))*log(sqrt(e*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) - (log((g^(1/4)*(c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2) + 2*b*sqrt(d + e*x)))/(2*b*sqrt(e*sqrt(-f) + d*sqrt(g)) + (c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))*log(sqrt(e*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) + (log(a + b*x + c*sqrt(d + e*x))*log(sqrt(e*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) + (log(-((g^(1/4)*(c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2) + 2*b*sqrt(d + e*x)))/(2*b*sqrt((-e)*sqrt(-f) + d*sqrt(g)) - (c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4))))*log(sqrt((-e)*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) + (log(-((g^(1/4)*(c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2) + 2*b*sqrt(d + e*x)))/(2*b*sqrt((-e)*sqrt(-f) + d*sqrt(g)) - (c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4))))*log(sqrt((-e)*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) - (log(a + b*x + c*sqrt(d + e*x))*log(sqrt((-e)*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) - (log(-((g^(1/4)*(c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2) + 2*b*sqrt(d + e*x)))/(2*b*sqrt(e*sqrt(-f) + d*sqrt(g)) - (c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4))))*log(sqrt(e*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) - (log(-((g^(1/4)*(c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2) + 2*b*sqrt(d + e*x)))/(2*b*sqrt(e*sqrt(-f) + d*sqrt(g)) - (c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4))))*log(sqrt(e*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) + (log(a + b*x + c*sqrt(d + e*x))*log(sqrt(e*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*sqrt(-f)*sqrt(g)) + PolyLog(2, (2*b*(sqrt((-e)*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*b*sqrt((-e)*sqrt(-f) + d*sqrt(g)) + (c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))/(2*sqrt(-f)*sqrt(g)) + PolyLog(2, (2*b*(sqrt((-e)*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*b*sqrt((-e)*sqrt(-f) + d*sqrt(g)) + (c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))/(2*sqrt(-f)*sqrt(g)) - PolyLog(2, (2*b*(sqrt(e*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*b*sqrt(e*sqrt(-f) + d*sqrt(g)) + (c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))/(2*sqrt(-f)*sqrt(g)) - PolyLog(2, (2*b*(sqrt(e*sqrt(-f) + d*sqrt(g)) - g^(1/4)*sqrt(d + e*x)))/(2*b*sqrt(e*sqrt(-f) + d*sqrt(g)) + (c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))/(2*sqrt(-f)*sqrt(g)) + PolyLog(2, (2*b*(sqrt((-e)*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*b*sqrt((-e)*sqrt(-f) + d*sqrt(g)) - (c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))/(2*sqrt(-f)*sqrt(g)) + PolyLog(2, (2*b*(sqrt((-e)*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*b*sqrt((-e)*sqrt(-f) + d*sqrt(g)) - (c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))/(2*sqrt(-f)*sqrt(g)) - PolyLog(2, (2*b*(sqrt(e*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*b*sqrt(e*sqrt(-f) + d*sqrt(g)) - (c*e - sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))/(2*sqrt(-f)*sqrt(g)) - PolyLog(2, (2*b*(sqrt(e*sqrt(-f) + d*sqrt(g)) + g^(1/4)*sqrt(d + e*x)))/(2*b*sqrt(e*sqrt(-f) + d*sqrt(g)) - (c*e + sqrt(4*b^2*d - 4*a*b*e + c^2*e^2))*g^(1/4)))/(2*sqrt(-f)*sqrt(g))] =#


    @test_int [log(x)/sqrt(a + b*log(x)), x, 4, -(((2*a + b)*sqrt(pi)*erfi(sqrt(a + b*log(x))/sqrt(b)))/(ℯ^(a/b)*(2*b^(3/2)))) + (x*sqrt(a + b*log(x)))/b]
    @test_int [log(x)/sqrt(a - b*log(x)), x, 4, -(((2*a - b)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a - b*log(x))/sqrt(b)))/(2*b^(3/2))) - (x*sqrt(a - b*log(x)))/b]

    @test_int [(A + B*log(x))/sqrt(a + b*log(x)), x, 4, ((2*A*b - (2*a + b)*B)*sqrt(pi)*erfi(sqrt(a + b*log(x))/sqrt(b)))/(ℯ^(a/b)*(2*b^(3/2))) + (B*x*sqrt(a + b*log(x)))/b]
    @test_int [(A + B*log(x))/sqrt(a - b*log(x)), x, 4, -(((2*A*b + 2*a*B - b*B)*ℯ^(a/b)*sqrt(pi)*erf(sqrt(a - b*log(x))/sqrt(b)))/(2*b^(3/2))) - (B*x*sqrt(a - b*log(x)))/b]


    @test_int [x^2*log(log(x)*sin(x)), x, 13, (im*x^4)/12 - (1/3)*ExpIntegralEi(3*log(x)) - (1/3)*x^3*log(1 - ℯ^(2*im*x)) + (1/3)*x^3*log(log(x)*sin(x)) + (1/2)*im*x^2*PolyLog(2, ℯ^(2*im*x)) - (1/2)*x*PolyLog(3, ℯ^(2*im*x)) - (1/4)*im*PolyLog(4, ℯ^(2*im*x))]
    @test_int [x^1*log(log(x)*sin(x)), x, 12, (im*x^3)/6 - (1/2)*ExpIntegralEi(2*log(x)) - (1/2)*x^2*log(1 - ℯ^(2*im*x)) + (1/2)*x^2*log(log(x)*sin(x)) + (1/2)*im*x*PolyLog(2, ℯ^(2*im*x)) - (1/4)*PolyLog(3, ℯ^(2*im*x))]
    @test_int [x^0*log(log(x)*sin(x)), x, 7, (im*x^2)/2 - x*log(1 - ℯ^(2*im*x)) + x*log(log(x)*sin(x)) - LogIntegral(x) + (1/2)*im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(log(x)*sin(x))/x^1, x, 0, CannotIntegrate(log(log(x)*sin(x))/x, x)]
    @test_int [log(log(x)*sin(x))/x^2, x, 5, ExpIntegralEi(-log(x)) - log(log(x)*sin(x))/x + Unintegrable(cot(x)/x, x)]


    @test_int [x^2*log(ℯ^x*log(x)*sin(x)), x, 14, (-(1/12) + im/12)*x^4 - (1/3)*ExpIntegralEi(3*log(x)) - (1/3)*x^3*log(1 - ℯ^(2*im*x)) + (1/3)*x^3*log(ℯ^x*log(x)*sin(x)) + (1/2)*im*x^2*PolyLog(2, ℯ^(2*im*x)) - (1/2)*x*PolyLog(3, ℯ^(2*im*x)) - (1/4)*im*PolyLog(4, ℯ^(2*im*x))]
    @test_int [x^1*log(ℯ^x*log(x)*sin(x)), x, 13, (-(1/6) + im/6)*x^3 - (1/2)*ExpIntegralEi(2*log(x)) - (1/2)*x^2*log(1 - ℯ^(2*im*x)) + (1/2)*x^2*log(ℯ^x*log(x)*sin(x)) + (1/2)*im*x*PolyLog(2, ℯ^(2*im*x)) - (1/4)*PolyLog(3, ℯ^(2*im*x))]
    @test_int [x^0*log(ℯ^x*log(x)*sin(x)), x, 7, (-(1/2) + im/2)*x^2 - x*log(1 - ℯ^(2*im*x)) + x*log(ℯ^x*log(x)*sin(x)) - LogIntegral(x) + (1/2)*im*PolyLog(2, ℯ^(2*im*x))]
    @test_int [log(ℯ^x*log(x)*sin(x))/x^1, x, 0, CannotIntegrate(log(ℯ^x*log(x)*sin(x))/x, x)]
    @test_int [log(ℯ^x*log(x)*sin(x))/x^2, x, 7, ExpIntegralEi(-log(x)) + log(x) - log(ℯ^x*log(x)*sin(x))/x + Unintegrable(cot(x)/x, x)]
    end
