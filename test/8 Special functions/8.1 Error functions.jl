@testset "8.1 Error functions" begin
    (a, b, c, d, e, m, n, x, ) = @variables a b c d e m n x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integration*Problems*Involving*The*Error*Function=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*erf(a+b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*erf(b*x)=#


    @test_int [x^5*erf(b*x), x, 5, (5*x)/(ℯ^(b^2*x^2)*(8*b^5*sqrt(pi))) + (5*x^3)/(ℯ^(b^2*x^2)*(12*b^3*sqrt(pi))) + x^5/(ℯ^(b^2*x^2)*(6*b*sqrt(pi))) - (5*erf(b*x))/(16*b^6) + (1/6)*x^6*erf(b*x)]
    @test_int [x^3*erf(b*x), x, 4, (3*x)/(ℯ^(b^2*x^2)*(8*b^3*sqrt(pi))) + x^3/(ℯ^(b^2*x^2)*(4*b*sqrt(pi))) - (3*erf(b*x))/(16*b^4) + (1/4)*x^4*erf(b*x)]
    @test_int [x^1*erf(b*x), x, 3, x/(ℯ^(b^2*x^2)*(2*b*sqrt(pi))) - erf(b*x)/(4*b^2) + (1/2)*x^2*erf(b*x)]
    @test_int [erf(b*x)/x^1, x, 1, (2*b*x*HypergeometricPFQ([1/2, 1/2], [3/2, 3/2], (-b^2)*x^2))/sqrt(pi)]
    @test_int [erf(b*x)/x^3, x, 3, -(b/(ℯ^(b^2*x^2)*(sqrt(pi)*x))) - b^2*erf(b*x) - erf(b*x)/(2*x^2)]
    @test_int [erf(b*x)/x^5, x, 4, -(b/(ℯ^(b^2*x^2)*(6*sqrt(pi)*x^3))) + b^3/(ℯ^(b^2*x^2)*(3*sqrt(pi)*x)) + (1/3)*b^4*erf(b*x) - erf(b*x)/(4*x^4)]
    @test_int [erf(b*x)/x^7, x, 5, -(b/(ℯ^(b^2*x^2)*(15*sqrt(pi)*x^5))) + (2*b^3)/(ℯ^(b^2*x^2)*(45*sqrt(pi)*x^3)) - (4*b^5)/(ℯ^(b^2*x^2)*(45*sqrt(pi)*x)) - (4/45)*b^6*erf(b*x) - erf(b*x)/(6*x^6)]

    @test_int [x^6*erf(b*x), x, 5, 6/(ℯ^(b^2*x^2)*(7*b^7*sqrt(pi))) + (6*x^2)/(ℯ^(b^2*x^2)*(7*b^5*sqrt(pi))) + (3*x^4)/(ℯ^(b^2*x^2)*(7*b^3*sqrt(pi))) + x^6/(ℯ^(b^2*x^2)*(7*b*sqrt(pi))) + (1/7)*x^7*erf(b*x)]
    @test_int [x^4*erf(b*x), x, 4, 2/(ℯ^(b^2*x^2)*(5*b^5*sqrt(pi))) + (2*x^2)/(ℯ^(b^2*x^2)*(5*b^3*sqrt(pi))) + x^4/(ℯ^(b^2*x^2)*(5*b*sqrt(pi))) + (1/5)*x^5*erf(b*x)]
    @test_int [x^2*erf(b*x), x, 3, 1/(ℯ^(b^2*x^2)*(3*b^3*sqrt(pi))) + x^2/(ℯ^(b^2*x^2)*(3*b*sqrt(pi))) + (1/3)*x^3*erf(b*x)]
    @test_int [x^0*erf(b*x), x, 1, 1/(ℯ^(b^2*x^2)*(b*sqrt(pi))) + x*erf(b*x)]
    @test_int [erf(b*x)/x^2, x, 2, -(erf(b*x)/x) + (b*ExpIntegralEi((-b^2)*x^2))/sqrt(pi)]
    @test_int [erf(b*x)/x^4, x, 3, -(b/(ℯ^(b^2*x^2)*(3*sqrt(pi)*x^2))) - erf(b*x)/(3*x^3) - (b^3*ExpIntegralEi((-b^2)*x^2))/(3*sqrt(pi))]
    @test_int [erf(b*x)/x^6, x, 4, -(b/(ℯ^(b^2*x^2)*(10*sqrt(pi)*x^4))) + b^3/(ℯ^(b^2*x^2)*(10*sqrt(pi)*x^2)) - erf(b*x)/(5*x^5) + (b^5*ExpIntegralEi((-b^2)*x^2))/(10*sqrt(pi))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*erf(a+b*x)=#


    @test_int [(c + d*x)^3*erf(a + b*x), x, 12, (d^2*(b*c - a*d))/(ℯ^(a + b*x)^2*(b^4*sqrt(pi))) + (b*c - a*d)^3/(ℯ^(a + b*x)^2*(b^4*sqrt(pi))) + (3*d^3*(a + b*x))/(ℯ^(a + b*x)^2*(8*b^4*sqrt(pi))) + (3*d*(b*c - a*d)^2*(a + b*x))/(ℯ^(a + b*x)^2*(2*b^4*sqrt(pi))) + (d^2*(b*c - a*d)*(a + b*x)^2)/(ℯ^(a + b*x)^2*(b^4*sqrt(pi))) + (d^3*(a + b*x)^3)/(ℯ^(a + b*x)^2*(4*b^4*sqrt(pi))) - (3*d^3*erf(a + b*x))/(16*b^4) - (3*d*(b*c - a*d)^2*erf(a + b*x))/(4*b^4) - ((b*c - a*d)^4*erf(a + b*x))/(4*b^4*d) + ((c + d*x)^4*erf(a + b*x))/(4*d)]
    @test_int [(c + d*x)^2*erf(a + b*x), x, 9, d^2/(ℯ^(a + b*x)^2*(3*b^3*sqrt(pi))) + (b*c - a*d)^2/(ℯ^(a + b*x)^2*(b^3*sqrt(pi))) + (d*(b*c - a*d)*(a + b*x))/(ℯ^(a + b*x)^2*(b^3*sqrt(pi))) + (d^2*(a + b*x)^2)/(ℯ^(a + b*x)^2*(3*b^3*sqrt(pi))) - (d*(b*c - a*d)*erf(a + b*x))/(2*b^3) - ((b*c - a*d)^3*erf(a + b*x))/(3*b^3*d) + ((c + d*x)^3*erf(a + b*x))/(3*d)]
    @test_int [(c + d*x)^1*erf(a + b*x), x, 7, (b*c - a*d)/(ℯ^(a + b*x)^2*(b^2*sqrt(pi))) + (d*(a + b*x))/(ℯ^(a + b*x)^2*(2*b^2*sqrt(pi))) - (d*erf(a + b*x))/(4*b^2) - ((b*c - a*d)^2*erf(a + b*x))/(2*b^2*d) + ((c + d*x)^2*erf(a + b*x))/(2*d)]
    @test_int [(c + d*x)^0*erf(a + b*x), x, 1, 1/(ℯ^(a + b*x)^2*(b*sqrt(pi))) + ((a + b*x)*erf(a + b*x))/b]
    @test_int [erf(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(erf(a + b*x)/(c + d*x), x)]
    @test_int [erf(a + b*x)/(c + d*x)^2, x, 1, -(erf(a + b*x)/(d*(c + d*x))) + (2*b*Unintegrable(1/(ℯ^(a + b*x)^2*(c + d*x)), x))/(d*sqrt(pi))]
    @test_int [erf(a + b*x)/(c + d*x)^3, x, 3, -(b/(ℯ^(a + b*x)^2*(d^2*sqrt(pi)*(c + d*x)))) - (b^2*erf(a + b*x))/d^3 - erf(a + b*x)/(2*d*(c + d*x)^2) + (2*b^2*(b*c - a*d)*Unintegrable(1/(ℯ^(a + b*x)^2*(c + d*x)), x))/(d^3*sqrt(pi))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*erf(a+b*x)^2=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*erf(b*x)^2=#


    @test_int [x^5*erf(b*x)^2, x, 12, 11/(ℯ^(2*b^2*x^2)*(12*b^6*pi)) + (7*x^2)/(ℯ^(2*b^2*x^2)*(12*b^4*pi)) + x^4/(ℯ^(2*b^2*x^2)*(6*b^2*pi)) + (5*x*erf(b*x))/(ℯ^(b^2*x^2)*(4*b^5*sqrt(pi))) + (5*x^3*erf(b*x))/(ℯ^(b^2*x^2)*(6*b^3*sqrt(pi))) + (x^5*erf(b*x))/(ℯ^(b^2*x^2)*(3*b*sqrt(pi))) - (5*erf(b*x)^2)/(16*b^6) + (1/6)*x^6*erf(b*x)^2]
    @test_int [x^3*erf(b*x)^2, x, 8, 1/(ℯ^(2*b^2*x^2)*(2*b^4*pi)) + x^2/(ℯ^(2*b^2*x^2)*(4*b^2*pi)) + (3*x*erf(b*x))/(ℯ^(b^2*x^2)*(4*b^3*sqrt(pi))) + (x^3*erf(b*x))/(ℯ^(b^2*x^2)*(2*b*sqrt(pi))) - (3*erf(b*x)^2)/(16*b^4) + (1/4)*x^4*erf(b*x)^2]
    @test_int [x^1*erf(b*x)^2, x, 5, 1/(ℯ^(2*b^2*x^2)*(2*b^2*pi)) + (x*erf(b*x))/(ℯ^(b^2*x^2)*(b*sqrt(pi))) - erf(b*x)^2/(4*b^2) + (1/2)*x^2*erf(b*x)^2]
    @test_int [erf(b*x)^2/x^1, x, 0, Unintegrable(erf(b*x)^2/x, x)]
    @test_int [erf(b*x)^2/x^3, x, 5, -((2*b*erf(b*x))/(ℯ^(b^2*x^2)*(sqrt(pi)*x))) - b^2*erf(b*x)^2 - erf(b*x)^2/(2*x^2) + (2*b^2*ExpIntegralEi(-2*b^2*x^2))/pi]
    @test_int [erf(b*x)^2/x^5, x, 8, -(b^2/(ℯ^(2*b^2*x^2)*(3*pi*x^2))) - (b*erf(b*x))/(ℯ^(b^2*x^2)*(3*sqrt(pi)*x^3)) + (2*b^3*erf(b*x))/(ℯ^(b^2*x^2)*(3*sqrt(pi)*x)) + (1/3)*b^4*erf(b*x)^2 - erf(b*x)^2/(4*x^4) - (4*b^4*ExpIntegralEi(-2*b^2*x^2))/(3*pi)]
    @test_int [erf(b*x)^2/x^7, x, 12, -(b^2/(ℯ^(2*b^2*x^2)*(15*pi*x^4))) + (2*b^4)/(ℯ^(2*b^2*x^2)*(9*pi*x^2)) - (2*b*erf(b*x))/(ℯ^(b^2*x^2)*(15*sqrt(pi)*x^5)) + (4*b^3*erf(b*x))/(ℯ^(b^2*x^2)*(45*sqrt(pi)*x^3)) - (8*b^5*erf(b*x))/(ℯ^(b^2*x^2)*(45*sqrt(pi)*x)) - (4/45)*b^6*erf(b*x)^2 - erf(b*x)^2/(6*x^6) + (28*b^6*ExpIntegralEi(-2*b^2*x^2))/(45*pi)]

    @test_int [x^4*erf(b*x)^2, x, 10, (11*x)/(ℯ^(2*b^2*x^2)*(20*b^4*pi)) + x^3/(ℯ^(2*b^2*x^2)*(5*b^2*pi)) + (4*erf(b*x))/(ℯ^(b^2*x^2)*(5*b^5*sqrt(pi))) + (4*x^2*erf(b*x))/(ℯ^(b^2*x^2)*(5*b^3*sqrt(pi))) + (2*x^4*erf(b*x))/(ℯ^(b^2*x^2)*(5*b*sqrt(pi))) + (1/5)*x^5*erf(b*x)^2 - (43*erf(sqrt(2)*b*x))/(40*b^5*sqrt(2*pi))]
    @test_int [x^2*erf(b*x)^2, x, 6, x/(ℯ^(2*b^2*x^2)*(3*b^2*pi)) + (2*erf(b*x))/(ℯ^(b^2*x^2)*(3*b^3*sqrt(pi))) + (2*x^2*erf(b*x))/(ℯ^(b^2*x^2)*(3*b*sqrt(pi))) + (1/3)*x^3*erf(b*x)^2 - (5*erf(sqrt(2)*b*x))/(6*b^3*sqrt(2*pi))]
    @test_int [x^0*erf(b*x)^2, x, 4, (2*erf(b*x))/(ℯ^(b^2*x^2)*(b*sqrt(pi))) + x*erf(b*x)^2 - (sqrt(2/pi)*erf(sqrt(2)*b*x))/b]
    @test_int [erf(b*x)^2/x^2, x, 0, Unintegrable(erf(b*x)^2/x^2, x)]
    @test_int [erf(b*x)^2/x^4, x, 0, Unintegrable(erf(b*x)^2/x^4, x)]
    @test_int [erf(b*x)^2/x^6, x, 0, Unintegrable(erf(b*x)^2/x^6, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*erf(a+b*x)^2=#


    @test_int [(c + d*x)^2*erf(a + b*x)^2, x, 16, (d*(b*c - a*d))/(ℯ^(2*(a + b*x)^2)*(b^3*pi)) + (d^2*(a + b*x))/(ℯ^(2*(a + b*x)^2)*(3*b^3*pi)) + (2*d^2*erf(a + b*x))/(ℯ^(a + b*x)^2*(3*b^3*sqrt(pi))) + (2*(b*c - a*d)^2*erf(a + b*x))/(ℯ^(a + b*x)^2*(b^3*sqrt(pi))) + (2*d*(b*c - a*d)*(a + b*x)*erf(a + b*x))/(ℯ^(a + b*x)^2*(b^3*sqrt(pi))) + (2*d^2*(a + b*x)^2*erf(a + b*x))/(ℯ^(a + b*x)^2*(3*b^3*sqrt(pi))) - (d*(b*c - a*d)*erf(a + b*x)^2)/(2*b^3) + ((b*c - a*d)^2*(a + b*x)*erf(a + b*x)^2)/b^3 + (d*(b*c - a*d)*(a + b*x)^2*erf(a + b*x)^2)/b^3 + (d^2*(a + b*x)^3*erf(a + b*x)^2)/(3*b^3) - ((b*c - a*d)^2*sqrt(2/pi)*erf(sqrt(2)*(a + b*x)))/b^3 - (5*d^2*erf(sqrt(2)*(a + b*x)))/(6*b^3*sqrt(2*pi))]
    @test_int [(c + d*x)^1*erf(a + b*x)^2, x, 10, d/(ℯ^(2*(a + b*x)^2)*(2*b^2*pi)) + (2*(b*c - a*d)*erf(a + b*x))/(ℯ^(a + b*x)^2*(b^2*sqrt(pi))) + (d*(a + b*x)*erf(a + b*x))/(ℯ^(a + b*x)^2*(b^2*sqrt(pi))) - (d*erf(a + b*x)^2)/(4*b^2) + ((b*c - a*d)*(a + b*x)*erf(a + b*x)^2)/b^2 + (d*(a + b*x)^2*erf(a + b*x)^2)/(2*b^2) - ((b*c - a*d)*sqrt(2/pi)*erf(sqrt(2)*(a + b*x)))/b^2]
    @test_int [(c + d*x)^0*erf(a + b*x)^2, x, 4, (2*erf(a + b*x))/(ℯ^(a + b*x)^2*(b*sqrt(pi))) + ((a + b*x)*erf(a + b*x)^2)/b - (sqrt(2/pi)*erf(sqrt(2)*(a + b*x)))/b]
    @test_int [erf(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(erf(a + b*x)^2/(c + d*x), x)]
    @test_int [erf(a + b*x)^2/(c + d*x)^2, x, 0, Unintegrable(erf(a + b*x)^2/(c + d*x)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*erf(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*erf(d*(a + b*log(c*x^n))), x, 5, (x^3*erf(d*(a + b*log(c*x^n))))/3 - (ℯ^((9 - 12*a*b*d^2*n)/(4*b^2*d^2*n^2))*x^3*erf((2*a*b*d^2 - 3/n + 2*b^2*d^2*log(c*x^n))/(2*b*d)))/(3*(c*x^n)^(3/n))]
    @test_int [x^1*erf(d*(a + b*log(c*x^n))), x, 5, (x^2*erf(d*(a + b*log(c*x^n))))/2 - (ℯ^((1 - 2*a*b*d^2*n)/(b^2*d^2*n^2))*x^2*erf((a*b*d^2 - n^(-1) + b^2*d^2*log(c*x^n))/(b*d)))/(2*(c*x^n)^(2/n))]
    @test_int [x^0*erf(d*(a + b*log(c*x^n))), x, 5, x*erf(d*(a + b*log(c*x^n))) - (ℯ^((1 - 4*a*b*d^2*n)/(4*b^2*d^2*n^2))*x*erf((2*a*b*d^2 - n^(-1) + 2*b^2*d^2*log(c*x^n))/(2*b*d)))/(c*x^n)^n^(-1)]
    @test_int [erf(d*(a + b*log(c*x^n)))/x^1, x, 3, 1/(b*d*ℯ^(d^2*(a + b*log(c*x^n))^2)*n*sqrt(pi)) + (erf(d*(a + b*log(c*x^n)))*(a + b*log(c*x^n)))/(b*n)]
    @test_int [erf(d*(a + b*log(c*x^n)))/x^2, x, 5, -(erf(d*(a + b*log(c*x^n)))/x) + (ℯ^(1/(4*b^2*d^2*n^2) + a/(b*n))*(c*x^n)^n^(-1)*erf((2*a*b*d^2 + n^(-1) + 2*b^2*d^2*log(c*x^n))/(2*b*d)))/x]
    @test_int [erf(d*(a + b*log(c*x^n)))/x^3, x, 5, -erf(d*(a + b*log(c*x^n)))/(2*x^2) + (ℯ^((1 + 2*a*b*d^2*n)/(b^2*d^2*n^2))*(c*x^n)^(2/n)*erf((1 + a*b*d^2*n + b^2*d^2*n*log(c*x^n))/(b*d*n)))/(2*x^2)]


    @test_int [(e*x)^m*erf(d*(a + b*log(c*x^n))), x, 5, ((e*x)^(1 + m)*erf(d*(a + b*log(c*x^n))))/(e*(1 + m)) + (ℯ^(((1 + m)*(1 + m - 4*a*b*d^2*n))/(4*b^2*d^2*n^2))*x*(e*x)^m*erf((1 + m - 2*a*b*d^2*n - 2*b^2*d^2*n*log(c*x^n))/(2*b*d*n)))/((1 + m)*(c*x^n)^((1 + m)/n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*ℯ^(c+d*x^2)*erf(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c-b^2*x^2)*erf(b*x)^n=#


    @test_int [ℯ^(c - b^2*x^2)*erf(b*x)^2, x, 2, (ℯ^c*sqrt(pi)*erf(b*x)^3)/(6*b)]
    @test_int [ℯ^(c - b^2*x^2)*erf(b*x)^1, x, 2, (ℯ^c*sqrt(pi)*erf(b*x)^2)/(4*b)]
    @test_int [ℯ^(c - b^2*x^2)/erf(b*x)^1, x, 2, (ℯ^c*sqrt(pi)*log(erf(b*x)))/(2*b)]
    @test_int [ℯ^(c - b^2*x^2)/erf(b*x)^2, x, 2, -((ℯ^c*sqrt(pi))/(2*b*erf(b*x)))]
    @test_int [ℯ^(c - b^2*x^2)/erf(b*x)^3, x, 2, -((ℯ^c*sqrt(pi))/(4*b*erf(b*x)^2))]


    @test_int [ℯ^(c - b^2*x^2)*erf(b*x)^n, x, 2, (ℯ^c*sqrt(pi)*erf(b*x)^(1 + n))/(2*b*(1 + n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(c+d*x^2)*erf(b*x)=#


    @test_int [x^5*ℯ^(c + d*x^2)*erf(b*x), x, 9, -((b*ℯ^(c - (b^2 - d)*x^2)*x)/((b^2 - d)*d^2*sqrt(pi))) + (3*b*ℯ^(c - (b^2 - d)*x^2)*x)/(4*(b^2 - d)^2*d*sqrt(pi)) + (b*ℯ^(c - (b^2 - d)*x^2)*x^3)/(2*(b^2 - d)*d*sqrt(pi)) + (ℯ^(c + d*x^2)*erf(b*x))/d^3 - (ℯ^(c + d*x^2)*x^2*erf(b*x))/d^2 + (ℯ^(c + d*x^2)*x^4*erf(b*x))/(2*d) - (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(sqrt(b^2 - d)*d^3) + (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(2*(b^2 - d)^(3/2)*d^2) - (3*b*ℯ^c*erf(sqrt(b^2 - d)*x))/(8*(b^2 - d)^(5/2)*d)]
    @test_int [x^3*ℯ^(c + d*x^2)*erf(b*x), x, 5, (b*ℯ^(c - (b^2 - d)*x^2)*x)/(2*(b^2 - d)*d*sqrt(pi)) - (ℯ^(c + d*x^2)*erf(b*x))/(2*d^2) + (ℯ^(c + d*x^2)*x^2*erf(b*x))/(2*d) + (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(2*sqrt(b^2 - d)*d^2) - (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(4*(b^2 - d)^(3/2)*d)]
    @test_int [x^1*ℯ^(c + d*x^2)*erf(b*x), x, 2, (ℯ^(c + d*x^2)*erf(b*x))/(2*d) - (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(2*sqrt(b^2 - d)*d)]
    @test_int [ℯ^(c + d*x^2)*erf(b*x)/x^1, x, 0, Unintegrable((ℯ^(c + d*x^2)*erf(b*x))/x, x)]
    @test_int [ℯ^(c + d*x^2)*erf(b*x)/x^3, x, 3, -((b*ℯ^(c - (b^2 - d)*x^2))/(sqrt(pi)*x)) - (ℯ^(c + d*x^2)*erf(b*x))/(2*x^2) - b*sqrt(b^2 - d)*ℯ^c*erf(sqrt(b^2 - d)*x) + d*Unintegrable((ℯ^(c + d*x^2)*erf(b*x))/x, x)]
    @test_int [ℯ^(c + d*x^2)*erf(b*x)/x^5, x, 7, -((b*ℯ^(c - (b^2 - d)*x^2))/(6*sqrt(pi)*x^3)) + (b*(b^2 - d)*ℯ^(c - (b^2 - d)*x^2))/(3*sqrt(pi)*x) - (b*d*ℯ^(c - (b^2 - d)*x^2))/(2*sqrt(pi)*x) - (ℯ^(c + d*x^2)*erf(b*x))/(4*x^4) - (d*ℯ^(c + d*x^2)*erf(b*x))/(4*x^2) + (1/3)*b*(b^2 - d)^(3/2)*ℯ^c*erf(sqrt(b^2 - d)*x) - (1/2)*b*sqrt(b^2 - d)*d*ℯ^c*erf(sqrt(b^2 - d)*x) + (1/2)*d^2*Unintegrable((ℯ^(c + d*x^2)*erf(b*x))/x, x)]

    @test_int [x^4*ℯ^(c + d*x^2)*erf(b*x), x, 5, -((3*b*ℯ^(c - (b^2 - d)*x^2))/(4*(b^2 - d)*d^2*sqrt(pi))) + (b*ℯ^(c - (b^2 - d)*x^2))/(2*(b^2 - d)^2*d*sqrt(pi)) + (b*ℯ^(c - (b^2 - d)*x^2)*x^2)/(2*(b^2 - d)*d*sqrt(pi)) - (3*ℯ^(c + d*x^2)*x*erf(b*x))/(4*d^2) + (ℯ^(c + d*x^2)*x^3*erf(b*x))/(2*d) + (3*Unintegrable(ℯ^(c + d*x^2)*erf(b*x), x))/(4*d^2)]
    @test_int [x^2*ℯ^(c + d*x^2)*erf(b*x), x, 2, (b*ℯ^(c - (b^2 - d)*x^2))/(2*(b^2 - d)*d*sqrt(pi)) + (ℯ^(c + d*x^2)*x*erf(b*x))/(2*d) - Unintegrable(ℯ^(c + d*x^2)*erf(b*x), x)/(2*d)]
    @test_int [x^0*ℯ^(c + d*x^2)*erf(b*x), x, 0, Unintegrable(ℯ^(c + d*x^2)*erf(b*x), x)]
    @test_int [ℯ^(c + d*x^2)*erf(b*x)/x^2, x, 2, -((ℯ^(c + d*x^2)*erf(b*x))/x) + (b*ℯ^c*ExpIntegralEi(-((b^2 - d)*x^2)))/sqrt(pi) + 2*d*Unintegrable(ℯ^(c + d*x^2)*erf(b*x), x)]
    @test_int [ℯ^(c + d*x^2)*erf(b*x)/x^4, x, 5, -((b*ℯ^(c - (b^2 - d)*x^2))/(3*sqrt(pi)*x^2)) - (ℯ^(c + d*x^2)*erf(b*x))/(3*x^3) - (2*d*ℯ^(c + d*x^2)*erf(b*x))/(3*x) - (b*(b^2 - d)*ℯ^c*ExpIntegralEi(-((b^2 - d)*x^2)))/(3*sqrt(pi)) + (2*b*d*ℯ^c*ExpIntegralEi(-((b^2 - d)*x^2)))/(3*sqrt(pi)) + (4/3)*d^2*Unintegrable(ℯ^(c + d*x^2)*erf(b*x), x)]


    @test_int [x^5*ℯ^(c + b^2*x^2)*erf(b*x), x, 8, -((2*ℯ^c*x)/(b^5*sqrt(pi))) + (2*ℯ^c*x^3)/(3*b^3*sqrt(pi)) - (ℯ^c*x^5)/(5*b*sqrt(pi)) + (ℯ^(c + b^2*x^2)*erf(b*x))/b^6 - (ℯ^(c + b^2*x^2)*x^2*erf(b*x))/b^4 + (ℯ^(c + b^2*x^2)*x^4*erf(b*x))/(2*b^2)]
    @test_int [x^3*ℯ^(c + b^2*x^2)*erf(b*x), x, 5, (ℯ^c*x)/(b^3*sqrt(pi)) - (ℯ^c*x^3)/(3*b*sqrt(pi)) - (ℯ^(c + b^2*x^2)*erf(b*x))/(2*b^4) + (ℯ^(c + b^2*x^2)*x^2*erf(b*x))/(2*b^2)]
    @test_int [x^1*ℯ^(c + b^2*x^2)*erf(b*x), x, 2, -((ℯ^c*x)/(b*sqrt(pi))) + (ℯ^(c + b^2*x^2)*erf(b*x))/(2*b^2)]
    @test_int [ℯ^(c + b^2*x^2)*erf(b*x)/x^1, x, 1, (2*b*ℯ^c*x*HypergeometricPFQ([1/2, 1], [3/2, 3/2], b^2*x^2))/sqrt(pi)]
    @test_int [ℯ^(c + b^2*x^2)*erf(b*x)/x^3, x, 4, -((b*ℯ^c)/(sqrt(pi)*x)) - (ℯ^(c + b^2*x^2)*erf(b*x))/(2*x^2) + (2*b^3*ℯ^c*x*HypergeometricPFQ([1/2, 1], [3/2, 3/2], b^2*x^2))/sqrt(pi)]
    @test_int [ℯ^(c + b^2*x^2)*erf(b*x)/x^5, x, 7, -((b*ℯ^c)/(6*sqrt(pi)*x^3)) - (b^3*ℯ^c)/(2*sqrt(pi)*x) - (ℯ^(c + b^2*x^2)*erf(b*x))/(4*x^4) - (b^2*ℯ^(c + b^2*x^2)*erf(b*x))/(4*x^2) + (b^5*ℯ^c*x*HypergeometricPFQ([1/2, 1], [3/2, 3/2], b^2*x^2))/sqrt(pi)]

    @test_int [x^4*ℯ^(c + b^2*x^2)*erf(b*x), x, 7, (3*ℯ^c*x^2)/(4*b^3*sqrt(pi)) - (ℯ^c*x^4)/(4*b*sqrt(pi)) - (3*ℯ^(c + b^2*x^2)*x*erf(b*x))/(4*b^4) + (ℯ^(c + b^2*x^2)*x^3*erf(b*x))/(2*b^2) + (3*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(4*b^3*sqrt(pi))]
    @test_int [x^2*ℯ^(c + b^2*x^2)*erf(b*x), x, 4, -((ℯ^c*x^2)/(2*b*sqrt(pi))) + (ℯ^(c + b^2*x^2)*x*erf(b*x))/(2*b^2) - (ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*b*sqrt(pi))]
    @test_int [x^0*ℯ^(c + b^2*x^2)*erf(b*x), x, 1, (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/sqrt(pi)]
    @test_int [ℯ^(c + b^2*x^2)*erf(b*x)/x^2, x, 4, -((ℯ^(c + b^2*x^2)*erf(b*x))/x) + (2*b^3*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/sqrt(pi) + (2*b*ℯ^c*log(x))/sqrt(pi)]
    @test_int [ℯ^(c + b^2*x^2)*erf(b*x)/x^4, x, 7, -((b*ℯ^c)/(3*sqrt(pi)*x^2)) - (ℯ^(c + b^2*x^2)*erf(b*x))/(3*x^3) - (2*b^2*ℯ^(c + b^2*x^2)*erf(b*x))/(3*x) + (4*b^5*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(3*sqrt(pi)) + (4*b^3*ℯ^c*log(x))/(3*sqrt(pi))]


    @test_int [x^5*ℯ^(-b^2*x^2)*erf(b*x), x, 9, -((11*x)/(ℯ^(2*b^2*x^2)*(16*b^5*sqrt(pi)))) - x^3/(ℯ^(2*b^2*x^2)*(4*b^3*sqrt(pi))) - erf(b*x)/(ℯ^(b^2*x^2)*b^6) - (x^2*erf(b*x))/(ℯ^(b^2*x^2)*b^4) - (x^4*erf(b*x))/(ℯ^(b^2*x^2)*(2*b^2)) + (43*erf(sqrt(2)*b*x))/(32*sqrt(2)*b^6)]
    @test_int [x^3*ℯ^(-b^2*x^2)*erf(b*x), x, 5, -(x/(ℯ^(2*b^2*x^2)*(4*b^3*sqrt(pi)))) - erf(b*x)/(ℯ^(b^2*x^2)*(2*b^4)) - (x^2*erf(b*x))/(ℯ^(b^2*x^2)*(2*b^2)) + (5*erf(sqrt(2)*b*x))/(8*sqrt(2)*b^4)]
    @test_int [x^1*ℯ^(-b^2*x^2)*erf(b*x), x, 2, -(erf(b*x)/(ℯ^(b^2*x^2)*(2*b^2))) + erf(sqrt(2)*b*x)/(2*sqrt(2)*b^2)]
    @test_int [ℯ^(-b^2*x^2)*erf(b*x)/x^1, x, 0, Unintegrable(erf(b*x)/(ℯ^(b^2*x^2)*x), x)]
    @test_int [ℯ^(-b^2*x^2)*erf(b*x)/x^3, x, 3, -(b/(ℯ^(2*b^2*x^2)*(sqrt(pi)*x))) - erf(b*x)/(ℯ^(b^2*x^2)*(2*x^2)) - sqrt(2)*b^2*erf(sqrt(2)*b*x) - b^2*Unintegrable(erf(b*x)/(ℯ^(b^2*x^2)*x), x)]
    @test_int [ℯ^(-b^2*x^2)*erf(b*x)/x^5, x, 7, -(b/(ℯ^(2*b^2*x^2)*(6*sqrt(pi)*x^3))) + (7*b^3)/(ℯ^(2*b^2*x^2)*(6*sqrt(pi)*x)) - erf(b*x)/(ℯ^(b^2*x^2)*(4*x^4)) + (b^2*erf(b*x))/(ℯ^(b^2*x^2)*(4*x^2)) + (b^4*erf(sqrt(2)*b*x))/sqrt(2) + (2/3)*sqrt(2)*b^4*erf(sqrt(2)*b*x) + (1/2)*b^4*Unintegrable(erf(b*x)/(ℯ^(b^2*x^2)*x), x)]

    @test_int [x^4*ℯ^(-b^2*x^2)*erf(b*x), x, 7, -(1/(ℯ^(2*b^2*x^2)*(2*b^5*sqrt(pi)))) - x^2/(ℯ^(2*b^2*x^2)*(4*b^3*sqrt(pi))) - (3*x*erf(b*x))/(ℯ^(b^2*x^2)*(4*b^4)) - (x^3*erf(b*x))/(ℯ^(b^2*x^2)*(2*b^2)) + (3*sqrt(pi)*erf(b*x)^2)/(16*b^5)]
    @test_int [x^2*ℯ^(-b^2*x^2)*erf(b*x), x, 4, -(1/(ℯ^(2*b^2*x^2)*(4*b^3*sqrt(pi)))) - (x*erf(b*x))/(ℯ^(b^2*x^2)*(2*b^2)) + (sqrt(pi)*erf(b*x)^2)/(8*b^3)]
    @test_int [x^0*ℯ^(-b^2*x^2)*erf(b*x), x, 2, (sqrt(pi)*erf(b*x)^2)/(4*b)]
    @test_int [ℯ^(-b^2*x^2)*erf(b*x)/x^2, x, 4, -(erf(b*x)/(ℯ^(b^2*x^2)*x)) - (1/2)*b*sqrt(pi)*erf(b*x)^2 + (b*ExpIntegralEi(-2*b^2*x^2))/sqrt(pi)]
    @test_int [ℯ^(-b^2*x^2)*erf(b*x)/x^4, x, 7, -(b/(ℯ^(2*b^2*x^2)*(3*sqrt(pi)*x^2))) - erf(b*x)/(ℯ^(b^2*x^2)*(3*x^3)) + (2*b^2*erf(b*x))/(ℯ^(b^2*x^2)*(3*x)) + (1/3)*b^3*sqrt(pi)*erf(b*x)^2 - (4*b^3*ExpIntegralEi(-2*b^2*x^2))/(3*sqrt(pi))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(c+d*x^2)*erf(a+b*x)=#


    @test_int [x^3*ℯ^(c + d*x^2)*erf(a + b*x), x, 10, -((a*b^2*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(2*(b^2 - d)^2*d*sqrt(pi))) + (b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2)*x)/(2*(b^2 - d)*d*sqrt(pi)) - (ℯ^(c + d*x^2)*erf(a + b*x))/(2*d^2) + (ℯ^(c + d*x^2)*x^2*erf(a + b*x))/(2*d) + (b*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*sqrt(b^2 - d)*d^2) - (a^2*b^3*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*(b^2 - d)^(5/2)*d) - (b*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(4*(b^2 - d)^(3/2)*d)]
    @test_int [x^1*ℯ^(c + d*x^2)*erf(a + b*x), x, 3, (ℯ^(c + d*x^2)*erf(a + b*x))/(2*d) - (b*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*sqrt(b^2 - d)*d)]
    @test_int [ℯ^(c + d*x^2)*erf(a + b*x)/x^1, x, 0, Unintegrable((ℯ^(c + d*x^2)*erf(a + b*x))/x, x)]
    @test_int [ℯ^(c + d*x^2)*erf(a + b*x)/x^3, x, 4, -((b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(sqrt(pi)*x)) - (ℯ^(c + d*x^2)*erf(a + b*x))/(2*x^2) - b*sqrt(b^2 - d)*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)) - (2*a*b^2*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/sqrt(pi) + d*Unintegrable((ℯ^(c + d*x^2)*erf(a + b*x))/x, x)]

    @test_int [x^4*ℯ^(c + d*x^2)*erf(a + b*x), x, 15, -((3*b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(4*(b^2 - d)*d^2*sqrt(pi))) + (a^2*b^3*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(2*(b^2 - d)^3*d*sqrt(pi)) + (b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(2*(b^2 - d)^2*d*sqrt(pi)) - (a*b^2*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2)*x)/(2*(b^2 - d)^2*d*sqrt(pi)) + (b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2)*x^2)/(2*(b^2 - d)*d*sqrt(pi)) - (3*ℯ^(c + d*x^2)*x*erf(a + b*x))/(4*d^2) + (ℯ^(c + d*x^2)*x^3*erf(a + b*x))/(2*d) - (3*a*b^2*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(4*(b^2 - d)^(3/2)*d^2) + (a^3*b^4*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*(b^2 - d)^(7/2)*d) + (3*a*b^2*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(4*(b^2 - d)^(5/2)*d) + (3*Unintegrable(ℯ^(c + d*x^2)*erf(a + b*x), x))/(4*d^2)]
    @test_int [x^2*ℯ^(c + d*x^2)*erf(a + b*x), x, 4, (b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(2*(b^2 - d)*d*sqrt(pi)) + (ℯ^(c + d*x^2)*x*erf(a + b*x))/(2*d) + (a*b^2*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*(b^2 - d)^(3/2)*d) - Unintegrable(ℯ^(c + d*x^2)*erf(a + b*x), x)/(2*d)]
    @test_int [x^0*ℯ^(c + d*x^2)*erf(a + b*x), x, 0, Unintegrable(ℯ^(c + d*x^2)*erf(a + b*x), x)]
    @test_int [ℯ^(c + d*x^2)*erf(a + b*x)/x^2, x, 1, -((ℯ^(c + d*x^2)*erf(a + b*x))/x) + (2*b*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/sqrt(pi) + 2*d*Unintegrable(ℯ^(c + d*x^2)*erf(a + b*x), x)]
    @test_int [ℯ^(c + d*x^2)*erf(a + b*x)/x^4, x, 6, -((b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(3*sqrt(pi)*x^2)) + (2*a*b^2*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(3*sqrt(pi)*x) - (ℯ^(c + d*x^2)*erf(a + b*x))/(3*x^3) - (2*d*ℯ^(c + d*x^2)*erf(a + b*x))/(3*x) + (2/3)*a*b^2*sqrt(b^2 - d)*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)) + (4*a^2*b^3*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/(3*sqrt(pi)) - (2*b*(b^2 - d)*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/(3*sqrt(pi)) + (4*b*d*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/(3*sqrt(pi)) + (4/3)*d^2*Unintegrable(ℯ^(c + d*x^2)*erf(a + b*x), x)]


    @test_int [erf(b*x)/(ℯ^(b^2*x^2)*x^3) + (b^2*erf(b*x))/(ℯ^(b^2*x^2)*x), x, 4, -(b/(ℯ^(2*b^2*x^2)*(sqrt(pi)*x))) - erf(b*x)/(ℯ^(b^2*x^2)*(2*x^2)) - sqrt(2)*b^2*erf(sqrt(2)*b*x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*Trig(c+d*x^2)*erf(a+b*x)^n=#


    @test_int [sin(c + im*b^2*x^2)*erf(b*x), x, 4, -((im*ℯ^(im*c)*sqrt(pi)*erf(b*x)^2)/(8*b)) + (im*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(ℯ^(im*c)*(2*sqrt(pi)))]
    @test_int [sin(c - im*b^2*x^2)*erf(b*x), x, 4, (im*sqrt(pi)*erf(b*x)^2)/(ℯ^(im*c)*(8*b)) - (im*b*ℯ^(im*c)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*sqrt(pi))]


    @test_int [cos(c + im*b^2*x^2)*erf(b*x), x, 4, (ℯ^(im*c)*sqrt(pi)*erf(b*x)^2)/(8*b) + (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(ℯ^(im*c)*(2*sqrt(pi)))]
    @test_int [cos(c - im*b^2*x^2)*erf(b*x), x, 4, (sqrt(pi)*erf(b*x)^2)/(ℯ^(im*c)*(8*b)) + (b*ℯ^(im*c)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*sqrt(pi))]


    @test_int [sinh(c + b^2*x^2)*erf(b*x), x, 4, -((sqrt(pi)*erf(b*x)^2)/(ℯ^c*(8*b))) + (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*sqrt(pi))]
    @test_int [sinh(c - b^2*x^2)*erf(b*x), x, 4, (ℯ^c*sqrt(pi)*erf(b*x)^2)/(8*b) - (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(ℯ^c*(2*sqrt(pi)))]


    @test_int [cosh(c + b^2*x^2)*erf(b*x), x, 4, (sqrt(pi)*erf(b*x)^2)/(ℯ^c*(8*b)) + (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*sqrt(pi))]
    @test_int [cosh(c - b^2*x^2)*erf(b*x), x, 4, (ℯ^c*sqrt(pi)*erf(b*x)^2)/(8*b) + (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(ℯ^c*(2*sqrt(pi)))]


    #= ::Title::Closed:: =#
    #=Integration*Problems*Involving*The*Complementary*Error*Function=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*Erfc(a+b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Erfc(b*x)=#


    @test_int [x^5*Erfc(b*x), x, 5, (-5*x)/(8*b^5*ℯ^(b^2*x^2)*sqrt(pi)) - (5*x^3)/(12*b^3*ℯ^(b^2*x^2)*sqrt(pi)) - x^5/(6*b*ℯ^(b^2*x^2)*sqrt(pi)) + (5*erf(b*x))/(16*b^6) + (x^6*Erfc(b*x))/6]
    @test_int [x^3*Erfc(b*x), x, 4, (-3*x)/(8*b^3*ℯ^(b^2*x^2)*sqrt(pi)) - x^3/(4*b*ℯ^(b^2*x^2)*sqrt(pi)) + (3*erf(b*x))/(16*b^4) + (x^4*Erfc(b*x))/4]
    @test_int [x^1*Erfc(b*x), x, 3, -x/(2*b*ℯ^(b^2*x^2)*sqrt(pi)) + erf(b*x)/(4*b^2) + (x^2*Erfc(b*x))/2]
    @test_int [Erfc(b*x)/x^1, x, 2, (-2*b*x*HypergeometricPFQ([1/2, 1/2], [3/2, 3/2], -(b^2*x^2)))/sqrt(pi) + log(x)]
    @test_int [Erfc(b*x)/x^3, x, 3, b/(ℯ^(b^2*x^2)*sqrt(pi)*x) + b^2*erf(b*x) - Erfc(b*x)/(2*x^2)]
    @test_int [Erfc(b*x)/x^5, x, 4, b/(6*ℯ^(b^2*x^2)*sqrt(pi)*x^3) - b^3/(3*ℯ^(b^2*x^2)*sqrt(pi)*x) - (b^4*erf(b*x))/3 - Erfc(b*x)/(4*x^4)]
    @test_int [Erfc(b*x)/x^7, x, 5, b/(15*ℯ^(b^2*x^2)*sqrt(pi)*x^5) - (2*b^3)/(45*ℯ^(b^2*x^2)*sqrt(pi)*x^3) + (4*b^5)/(45*ℯ^(b^2*x^2)*sqrt(pi)*x) + (4*b^6*erf(b*x))/45 - Erfc(b*x)/(6*x^6)]

    @test_int [x^6*Erfc(b*x), x, 5, -6/(7*b^7*ℯ^(b^2*x^2)*sqrt(pi)) - (6*x^2)/(7*b^5*ℯ^(b^2*x^2)*sqrt(pi)) - (3*x^4)/(7*b^3*ℯ^(b^2*x^2)*sqrt(pi)) - x^6/(7*b*ℯ^(b^2*x^2)*sqrt(pi)) + (x^7*Erfc(b*x))/7]
    @test_int [x^4*Erfc(b*x), x, 4, -2/(5*b^5*ℯ^(b^2*x^2)*sqrt(pi)) - (2*x^2)/(5*b^3*ℯ^(b^2*x^2)*sqrt(pi)) - x^4/(5*b*ℯ^(b^2*x^2)*sqrt(pi)) + (x^5*Erfc(b*x))/5]
    @test_int [x^2*Erfc(b*x), x, 3, -1/(3*b^3*ℯ^(b^2*x^2)*sqrt(pi)) - x^2/(3*b*ℯ^(b^2*x^2)*sqrt(pi)) + (x^3*Erfc(b*x))/3]
    @test_int [x^0*Erfc(b*x), x, 1, -(1/(b*ℯ^(b^2*x^2)*sqrt(pi))) + x*Erfc(b*x)]
    @test_int [Erfc(b*x)/x^2, x, 2, -(Erfc(b*x)/x) - (b*ExpIntegralEi(-(b^2*x^2)))/sqrt(pi)]
    @test_int [Erfc(b*x)/x^4, x, 3, b/(3*ℯ^(b^2*x^2)*sqrt(pi)*x^2) - Erfc(b*x)/(3*x^3) + (b^3*ExpIntegralEi(-(b^2*x^2)))/(3*sqrt(pi))]
    @test_int [Erfc(b*x)/x^6, x, 4, b/(10*ℯ^(b^2*x^2)*sqrt(pi)*x^4) - b^3/(10*ℯ^(b^2*x^2)*sqrt(pi)*x^2) - Erfc(b*x)/(5*x^5) - (b^5*ExpIntegralEi(-(b^2*x^2)))/(10*sqrt(pi))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*Erfc(a+b*x)=#


    @test_int [(c + d*x)^3*Erfc(a + b*x), x, 12, -((d^2*(b*c - a*d))/(b^4*ℯ^(a + b*x)^2*sqrt(pi))) - (b*c - a*d)^3/(b^4*ℯ^(a + b*x)^2*sqrt(pi)) - (3*d^3*(a + b*x))/(8*b^4*ℯ^(a + b*x)^2*sqrt(pi)) - (3*d*(b*c - a*d)^2*(a + b*x))/(2*b^4*ℯ^(a + b*x)^2*sqrt(pi)) - (d^2*(b*c - a*d)*(a + b*x)^2)/(b^4*ℯ^(a + b*x)^2*sqrt(pi)) - (d^3*(a + b*x)^3)/(4*b^4*ℯ^(a + b*x)^2*sqrt(pi)) + (3*d^3*erf(a + b*x))/(16*b^4) + (3*d*(b*c - a*d)^2*erf(a + b*x))/(4*b^4) + ((b*c - a*d)^4*erf(a + b*x))/(4*b^4*d) + ((c + d*x)^4*Erfc(a + b*x))/(4*d)]
    @test_int [(c + d*x)^2*Erfc(a + b*x), x, 9, -d^2/(3*b^3*ℯ^(a + b*x)^2*sqrt(pi)) - (b*c - a*d)^2/(b^3*ℯ^(a + b*x)^2*sqrt(pi)) - (d*(b*c - a*d)*(a + b*x))/(b^3*ℯ^(a + b*x)^2*sqrt(pi)) - (d^2*(a + b*x)^2)/(3*b^3*ℯ^(a + b*x)^2*sqrt(pi)) + (d*(b*c - a*d)*erf(a + b*x))/(2*b^3) + ((b*c - a*d)^3*erf(a + b*x))/(3*b^3*d) + ((c + d*x)^3*Erfc(a + b*x))/(3*d)]
    @test_int [(c + d*x)^1*Erfc(a + b*x), x, 7, -((b*c - a*d)/(b^2*ℯ^(a + b*x)^2*sqrt(pi))) - (d*(a + b*x))/(2*b^2*ℯ^(a + b*x)^2*sqrt(pi)) + (d*erf(a + b*x))/(4*b^2) + ((b*c - a*d)^2*erf(a + b*x))/(2*b^2*d) + ((c + d*x)^2*Erfc(a + b*x))/(2*d)]
    @test_int [(c + d*x)^0*Erfc(a + b*x), x, 1, -(1/(b*ℯ^(a + b*x)^2*sqrt(pi))) + ((a + b*x)*Erfc(a + b*x))/b]
    @test_int [Erfc(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(Erfc(a + b*x)/(c + d*x), x)]
    @test_int [Erfc(a + b*x)/(c + d*x)^2, x, 1, -(Erfc(a + b*x)/(d*(c + d*x))) - (2*b*Unintegrable(1/(ℯ^(a + b*x)^2*(c + d*x)), x))/(d*sqrt(pi))]
    @test_int [Erfc(a + b*x)/(c + d*x)^3, x, 3, b/(d^2*ℯ^(a + b*x)^2*sqrt(pi)*(c + d*x)) + (b^2*erf(a + b*x))/d^3 - Erfc(a + b*x)/(2*d*(c + d*x)^2) - (2*b^2*(b*c - a*d)*Unintegrable(1/(ℯ^(a + b*x)^2*(c + d*x)), x))/(d^3*sqrt(pi))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*Erfc(a+b*x)^2=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*Erfc(b*x)^2=#


    @test_int [x^5*Erfc(b*x)^2, x, 12, 11/(12*b^6*ℯ^(2*b^2*x^2)*pi) + (7*x^2)/(12*b^4*ℯ^(2*b^2*x^2)*pi) + x^4/(6*b^2*ℯ^(2*b^2*x^2)*pi) - (5*x*Erfc(b*x))/(4*b^5*ℯ^(b^2*x^2)*sqrt(pi)) - (5*x^3*Erfc(b*x))/(6*b^3*ℯ^(b^2*x^2)*sqrt(pi)) - (x^5*Erfc(b*x))/(3*b*ℯ^(b^2*x^2)*sqrt(pi)) - (5*Erfc(b*x)^2)/(16*b^6) + (x^6*Erfc(b*x)^2)/6]
    @test_int [x^3*Erfc(b*x)^2, x, 8, 1/(2*b^4*ℯ^(2*b^2*x^2)*pi) + x^2/(4*b^2*ℯ^(2*b^2*x^2)*pi) - (3*x*Erfc(b*x))/(4*b^3*ℯ^(b^2*x^2)*sqrt(pi)) - (x^3*Erfc(b*x))/(2*b*ℯ^(b^2*x^2)*sqrt(pi)) - (3*Erfc(b*x)^2)/(16*b^4) + (x^4*Erfc(b*x)^2)/4]
    @test_int [x^1*Erfc(b*x)^2, x, 5, 1/(2*b^2*ℯ^(2*b^2*x^2)*pi) - (x*Erfc(b*x))/(b*ℯ^(b^2*x^2)*sqrt(pi)) - Erfc(b*x)^2/(4*b^2) + (x^2*Erfc(b*x)^2)/2]
    @test_int [Erfc(b*x)^2/x^1, x, 0, Unintegrable(Erfc(b*x)^2/x, x)]
    @test_int [Erfc(b*x)^2/x^3, x, 5, (2*b*Erfc(b*x))/(ℯ^(b^2*x^2)*sqrt(pi)*x) - b^2*Erfc(b*x)^2 - Erfc(b*x)^2/(2*x^2) + (2*b^2*ExpIntegralEi(-2*b^2*x^2))/pi]
    @test_int [Erfc(b*x)^2/x^5, x, 8, -b^2/(3*ℯ^(2*b^2*x^2)*pi*x^2) + (b*Erfc(b*x))/(3*ℯ^(b^2*x^2)*sqrt(pi)*x^3) - (2*b^3*Erfc(b*x))/(3*ℯ^(b^2*x^2)*sqrt(pi)*x) + (b^4*Erfc(b*x)^2)/3 - Erfc(b*x)^2/(4*x^4) - (4*b^4*ExpIntegralEi(-2*b^2*x^2))/(3*pi)]
    @test_int [Erfc(b*x)^2/x^7, x, 12, -b^2/(15*ℯ^(2*b^2*x^2)*pi*x^4) + (2*b^4)/(9*ℯ^(2*b^2*x^2)*pi*x^2) + (2*b*Erfc(b*x))/(15*ℯ^(b^2*x^2)*sqrt(pi)*x^5) - (4*b^3*Erfc(b*x))/(45*ℯ^(b^2*x^2)*sqrt(pi)*x^3) + (8*b^5*Erfc(b*x))/(45*ℯ^(b^2*x^2)*sqrt(pi)*x) - (4*b^6*Erfc(b*x)^2)/45 - Erfc(b*x)^2/(6*x^6) + (28*b^6*ExpIntegralEi(-2*b^2*x^2))/(45*pi)]

    @test_int [x^4*Erfc(b*x)^2, x, 10, (11*x)/(20*b^4*ℯ^(2*b^2*x^2)*pi) + x^3/(5*b^2*ℯ^(2*b^2*x^2)*pi) - (43*erf(sqrt(2)*b*x))/(40*b^5*sqrt(2*pi)) - (4*Erfc(b*x))/(5*b^5*ℯ^(b^2*x^2)*sqrt(pi)) - (4*x^2*Erfc(b*x))/(5*b^3*ℯ^(b^2*x^2)*sqrt(pi)) - (2*x^4*Erfc(b*x))/(5*b*ℯ^(b^2*x^2)*sqrt(pi)) + (x^5*Erfc(b*x)^2)/5]
    @test_int [x^2*Erfc(b*x)^2, x, 6, x/(3*b^2*ℯ^(2*b^2*x^2)*pi) - (5*erf(sqrt(2)*b*x))/(6*b^3*sqrt(2*pi)) - (2*Erfc(b*x))/(3*b^3*ℯ^(b^2*x^2)*sqrt(pi)) - (2*x^2*Erfc(b*x))/(3*b*ℯ^(b^2*x^2)*sqrt(pi)) + (x^3*Erfc(b*x)^2)/3]
    @test_int [x^0*Erfc(b*x)^2, x, 4, -((sqrt(2/pi)*erf(sqrt(2)*b*x))/b) - (2*Erfc(b*x))/(b*ℯ^(b^2*x^2)*sqrt(pi)) + x*Erfc(b*x)^2]
    @test_int [Erfc(b*x)^2/x^2, x, 0, Unintegrable(Erfc(b*x)^2/x^2, x)]
    @test_int [Erfc(b*x)^2/x^4, x, 0, Unintegrable(Erfc(b*x)^2/x^4, x)]
    @test_int [Erfc(b*x)^2/x^6, x, 0, Unintegrable(Erfc(b*x)^2/x^6, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*Erfc(a+b*x)^2=#


    @test_int [(c + d*x)^2*Erfc(a + b*x)^2, x, 16, (d*(b*c - a*d))/(b^3*ℯ^(2*(a + b*x)^2)*pi) + (d^2*(a + b*x))/(3*b^3*ℯ^(2*(a + b*x)^2)*pi) - ((b*c - a*d)^2*sqrt(2/pi)*erf(sqrt(2)*(a + b*x)))/b^3 - (5*d^2*erf(sqrt(2)*(a + b*x)))/(6*b^3*sqrt(2*pi)) - (2*d^2*Erfc(a + b*x))/(3*b^3*ℯ^(a + b*x)^2*sqrt(pi)) - (2*(b*c - a*d)^2*Erfc(a + b*x))/(b^3*ℯ^(a + b*x)^2*sqrt(pi)) - (2*d*(b*c - a*d)*(a + b*x)*Erfc(a + b*x))/(b^3*ℯ^(a + b*x)^2*sqrt(pi)) - (2*d^2*(a + b*x)^2*Erfc(a + b*x))/(3*b^3*ℯ^(a + b*x)^2*sqrt(pi)) - (d*(b*c - a*d)*Erfc(a + b*x)^2)/(2*b^3) + ((b*c - a*d)^2*(a + b*x)*Erfc(a + b*x)^2)/b^3 + (d*(b*c - a*d)*(a + b*x)^2*Erfc(a + b*x)^2)/b^3 + (d^2*(a + b*x)^3*Erfc(a + b*x)^2)/(3*b^3)]
    @test_int [(c + d*x)^1*Erfc(a + b*x)^2, x, 10, d/(2*b^2*ℯ^(2*(a + b*x)^2)*pi) - ((b*c - a*d)*sqrt(2/pi)*erf(sqrt(2)*(a + b*x)))/b^2 - (2*(b*c - a*d)*Erfc(a + b*x))/(b^2*ℯ^(a + b*x)^2*sqrt(pi)) - (d*(a + b*x)*Erfc(a + b*x))/(b^2*ℯ^(a + b*x)^2*sqrt(pi)) - (d*Erfc(a + b*x)^2)/(4*b^2) + ((b*c - a*d)*(a + b*x)*Erfc(a + b*x)^2)/b^2 + (d*(a + b*x)^2*Erfc(a + b*x)^2)/(2*b^2)]
    @test_int [(c + d*x)^0*Erfc(a + b*x)^2, x, 4, -((sqrt(2/pi)*erf(sqrt(2)*(a + b*x)))/b) - (2*Erfc(a + b*x))/(b*ℯ^(a + b*x)^2*sqrt(pi)) + ((a + b*x)*Erfc(a + b*x)^2)/b]
    @test_int [Erfc(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(Erfc(a + b*x)^2/(c + d*x), x)]
    @test_int [Erfc(a + b*x)^2/(c + d*x)^2, x, 0, Unintegrable(Erfc(a + b*x)^2/(c + d*x)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*Erfc(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*Erfc(d*(a + b*log(c*x^n))), x, 5, (ℯ^((9 - 12*a*b*d^2*n)/(4*b^2*d^2*n^2))*x^3*erf((2*a*b*d^2 - 3/n + 2*b^2*d^2*log(c*x^n))/(2*b*d)))/(3*(c*x^n)^(3/n)) + (x^3*Erfc(d*(a + b*log(c*x^n))))/3]
    @test_int [x^1*Erfc(d*(a + b*log(c*x^n))), x, 5, (ℯ^((1 - 2*a*b*d^2*n)/(b^2*d^2*n^2))*x^2*erf((a*b*d^2 - n^(-1) + b^2*d^2*log(c*x^n))/(b*d)))/(2*(c*x^n)^(2/n)) + (x^2*Erfc(d*(a + b*log(c*x^n))))/2]
    @test_int [x^0*Erfc(d*(a + b*log(c*x^n))), x, 5, (ℯ^((1 - 4*a*b*d^2*n)/(4*b^2*d^2*n^2))*x*erf((2*a*b*d^2 - n^(-1) + 2*b^2*d^2*log(c*x^n))/(2*b*d)))/(c*x^n)^n^(-1) + x*Erfc(d*(a + b*log(c*x^n)))]
    @test_int [Erfc(d*(a + b*log(c*x^n)))/x^1, x, 3, -(1/(b*d*ℯ^(d^2*(a + b*log(c*x^n))^2)*n*sqrt(pi))) + (Erfc(d*(a + b*log(c*x^n)))*(a + b*log(c*x^n)))/(b*n)]
    @test_int [Erfc(d*(a + b*log(c*x^n)))/x^2, x, 5, -((ℯ^(1/(4*b^2*d^2*n^2) + a/(b*n))*(c*x^n)^n^(-1)*erf((2*a*b*d^2 + n^(-1) + 2*b^2*d^2*log(c*x^n))/(2*b*d)))/x) - Erfc(d*(a + b*log(c*x^n)))/x]
    @test_int [Erfc(d*(a + b*log(c*x^n)))/x^3, x, 5, -(ℯ^((1 + 2*a*b*d^2*n)/(b^2*d^2*n^2))*(c*x^n)^(2/n)*erf((1 + a*b*d^2*n + b^2*d^2*n*log(c*x^n))/(b*d*n)))/(2*x^2) - Erfc(d*(a + b*log(c*x^n)))/(2*x^2)]


    @test_int [(e*x)^m*Erfc(d*(a + b*log(c*x^n))), x, 5, -((ℯ^(((1 + m)*(1 + m - 4*a*b*d^2*n))/(4*b^2*d^2*n^2))*x*(e*x)^m*erf((1 + m - 2*a*b*d^2*n - 2*b^2*d^2*n*log(c*x^n))/(2*b*d*n)))/((1 + m)*(c*x^n)^((1 + m)/n))) + ((e*x)^(1 + m)*Erfc(d*(a + b*log(c*x^n))))/(e*(1 + m))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*ℯ^(c+d*x^2)*Erfc(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c-b^2*x^2)*Erfc(b*x)^n=#


    @test_int [ℯ^(c - b^2*x^2)*Erfc(b*x)^2, x, 2, -((ℯ^c*sqrt(pi)*Erfc(b*x)^3)/(6*b))]
    @test_int [ℯ^(c - b^2*x^2)*Erfc(b*x)^1, x, 2, -((ℯ^c*sqrt(pi)*Erfc(b*x)^2)/(4*b))]
    @test_int [ℯ^(c - b^2*x^2)/Erfc(b*x)^1, x, 2, -((ℯ^c*sqrt(pi)*log(Erfc(b*x)))/(2*b))]
    @test_int [ℯ^(c - b^2*x^2)/Erfc(b*x)^2, x, 2, (ℯ^c*sqrt(pi))/(2*b*Erfc(b*x))]
    @test_int [ℯ^(c - b^2*x^2)/Erfc(b*x)^3, x, 2, (ℯ^c*sqrt(pi))/(4*b*Erfc(b*x)^2)]


    @test_int [ℯ^(c - b^2*x^2)*Erfc(b*x)^n, x, 2, -((ℯ^c*sqrt(pi)*Erfc(b*x)^(1 + n))/(2*b*(1 + n)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(c+d*x^2)*Erfc(b*x)=#


    @test_int [ℯ^(c + d*x^2)*x^5*Erfc(b*x), x, 9, (b*ℯ^(c - (b^2 - d)*x^2)*x)/((b^2 - d)*d^2*sqrt(pi)) - (3*b*ℯ^(c - (b^2 - d)*x^2)*x)/(4*(b^2 - d)^2*d*sqrt(pi)) - (b*ℯ^(c - (b^2 - d)*x^2)*x^3)/(2*(b^2 - d)*d*sqrt(pi)) + (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(sqrt(b^2 - d)*d^3) - (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(2*(b^2 - d)^(3/2)*d^2) + (3*b*ℯ^c*erf(sqrt(b^2 - d)*x))/(8*(b^2 - d)^(5/2)*d) + (ℯ^(c + d*x^2)*Erfc(b*x))/d^3 - (ℯ^(c + d*x^2)*x^2*Erfc(b*x))/d^2 + (ℯ^(c + d*x^2)*x^4*Erfc(b*x))/(2*d)]
    @test_int [ℯ^(c + d*x^2)*x^3*Erfc(b*x), x, 5, -(b*ℯ^(c - (b^2 - d)*x^2)*x)/(2*(b^2 - d)*d*sqrt(pi)) - (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(2*sqrt(b^2 - d)*d^2) + (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(4*(b^2 - d)^(3/2)*d) - (ℯ^(c + d*x^2)*Erfc(b*x))/(2*d^2) + (ℯ^(c + d*x^2)*x^2*Erfc(b*x))/(2*d)]
    @test_int [ℯ^(c + d*x^2)*x^1*Erfc(b*x), x, 2, (b*ℯ^c*erf(sqrt(b^2 - d)*x))/(2*sqrt(b^2 - d)*d) + (ℯ^(c + d*x^2)*Erfc(b*x))/(2*d)]
    @test_int [(ℯ^(c + d*x^2)*Erfc(b*x))/x^1, x, 0, Unintegrable((ℯ^(c + d*x^2)*Erfc(b*x))/x, x)]
    @test_int [(ℯ^(c + d*x^2)*Erfc(b*x))/x^3, x, 3, (b*ℯ^(c - (b^2 - d)*x^2))/(sqrt(pi)*x) + b*sqrt(b^2 - d)*ℯ^c*erf(sqrt(b^2 - d)*x) - (ℯ^(c + d*x^2)*Erfc(b*x))/(2*x^2) + d*Unintegrable((ℯ^(c + d*x^2)*Erfc(b*x))/x, x)]
    @test_int [(ℯ^(c + d*x^2)*Erfc(b*x))/x^5, x, 7, (b*ℯ^(c - (b^2 - d)*x^2))/(6*sqrt(pi)*x^3) - (b*(b^2 - d)*ℯ^(c - (b^2 - d)*x^2))/(3*sqrt(pi)*x) + (b*d*ℯ^(c - (b^2 - d)*x^2))/(2*sqrt(pi)*x) - (b*(b^2 - d)^(3/2)*ℯ^c*erf(sqrt(b^2 - d)*x))/3 + (b*sqrt(b^2 - d)*d*ℯ^c*erf(sqrt(b^2 - d)*x))/2 - (ℯ^(c + d*x^2)*Erfc(b*x))/(4*x^4) - (d*ℯ^(c + d*x^2)*Erfc(b*x))/(4*x^2) + (d^2*Unintegrable((ℯ^(c + d*x^2)*Erfc(b*x))/x, x))/2]

    @test_int [ℯ^(c + d*x^2)*x^4*Erfc(b*x), x, 5, (3*b*ℯ^(c - (b^2 - d)*x^2))/(4*(b^2 - d)*d^2*sqrt(pi)) - (b*ℯ^(c - (b^2 - d)*x^2))/(2*(b^2 - d)^2*d*sqrt(pi)) - (b*ℯ^(c - (b^2 - d)*x^2)*x^2)/(2*(b^2 - d)*d*sqrt(pi)) - (3*ℯ^(c + d*x^2)*x*Erfc(b*x))/(4*d^2) + (ℯ^(c + d*x^2)*x^3*Erfc(b*x))/(2*d) + (3*Unintegrable(ℯ^(c + d*x^2)*Erfc(b*x), x))/(4*d^2)]
    @test_int [ℯ^(c + d*x^2)*x^2*Erfc(b*x), x, 2, -(b*ℯ^(c - (b^2 - d)*x^2))/(2*(b^2 - d)*d*sqrt(pi)) + (ℯ^(c + d*x^2)*x*Erfc(b*x))/(2*d) - Unintegrable(ℯ^(c + d*x^2)*Erfc(b*x), x)/(2*d)]
    @test_int [ℯ^(c + d*x^2)*x^0*Erfc(b*x), x, 0, Unintegrable(ℯ^(c + d*x^2)*Erfc(b*x), x)]
    @test_int [(ℯ^(c + d*x^2)*Erfc(b*x))/x^2, x, 2, -((ℯ^(c + d*x^2)*Erfc(b*x))/x) - (b*ℯ^c*ExpIntegralEi(-((b^2 - d)*x^2)))/sqrt(pi) + 2*d*Unintegrable(ℯ^(c + d*x^2)*Erfc(b*x), x)]
    @test_int [(ℯ^(c + d*x^2)*Erfc(b*x))/x^4, x, 5, (b*ℯ^(c - (b^2 - d)*x^2))/(3*sqrt(pi)*x^2) - (ℯ^(c + d*x^2)*Erfc(b*x))/(3*x^3) - (2*d*ℯ^(c + d*x^2)*Erfc(b*x))/(3*x) + (b*(b^2 - d)*ℯ^c*ExpIntegralEi(-((b^2 - d)*x^2)))/(3*sqrt(pi)) - (2*b*d*ℯ^c*ExpIntegralEi(-((b^2 - d)*x^2)))/(3*sqrt(pi)) + (4*d^2*Unintegrable(ℯ^(c + d*x^2)*Erfc(b*x), x))/3]


    @test_int [ℯ^(c + b^2*x^2)*x^5*Erfc(b*x), x, 8, (2*ℯ^c*x)/(b^5*sqrt(pi)) - (2*ℯ^c*x^3)/(3*b^3*sqrt(pi)) + (ℯ^c*x^5)/(5*b*sqrt(pi)) + (ℯ^(c + b^2*x^2)*Erfc(b*x))/b^6 - (ℯ^(c + b^2*x^2)*x^2*Erfc(b*x))/b^4 + (ℯ^(c + b^2*x^2)*x^4*Erfc(b*x))/(2*b^2)]
    @test_int [ℯ^(c + b^2*x^2)*x^3*Erfc(b*x), x, 5, -((ℯ^c*x)/(b^3*sqrt(pi))) + (ℯ^c*x^3)/(3*b*sqrt(pi)) - (ℯ^(c + b^2*x^2)*Erfc(b*x))/(2*b^4) + (ℯ^(c + b^2*x^2)*x^2*Erfc(b*x))/(2*b^2)]
    @test_int [ℯ^(c + b^2*x^2)*x^1*Erfc(b*x), x, 2, (ℯ^c*x)/(b*sqrt(pi)) + (ℯ^(c + b^2*x^2)*Erfc(b*x))/(2*b^2)]
    @test_int [(ℯ^(c + b^2*x^2)*Erfc(b*x))/x^1, x, 3, (ℯ^c*ExpIntegralEi(b^2*x^2))/2 - (2*b*ℯ^c*x*HypergeometricPFQ([1/2, 1], [3/2, 3/2], b^2*x^2))/sqrt(pi)]
    @test_int [(ℯ^(c + b^2*x^2)*Erfc(b*x))/x^3, x, 6, (b*ℯ^c)/(sqrt(pi)*x) - (ℯ^(c + b^2*x^2)*Erfc(b*x))/(2*x^2) + (b^2*ℯ^c*ExpIntegralEi(b^2*x^2))/2 - (2*b^3*ℯ^c*x*HypergeometricPFQ([1/2, 1], [3/2, 3/2], b^2*x^2))/sqrt(pi)]
    @test_int [(ℯ^(c + b^2*x^2)*Erfc(b*x))/x^5, x, 9, (b*ℯ^c)/(6*sqrt(pi)*x^3) + (b^3*ℯ^c)/(2*sqrt(pi)*x) - (ℯ^(c + b^2*x^2)*Erfc(b*x))/(4*x^4) - (b^2*ℯ^(c + b^2*x^2)*Erfc(b*x))/(4*x^2) + (b^4*ℯ^c*ExpIntegralEi(b^2*x^2))/4 - (b^5*ℯ^c*x*HypergeometricPFQ([1/2, 1], [3/2, 3/2], b^2*x^2))/sqrt(pi)]

    @test_int [ℯ^(c + b^2*x^2)*x^4*Erfc(b*x), x, 9, -((3*ℯ^c*x^2)/(4*b^3*sqrt(pi))) + (ℯ^c*x^4)/(4*b*sqrt(pi)) - (3*ℯ^(c + b^2*x^2)*x*Erfc(b*x))/(4*b^4) + (ℯ^(c + b^2*x^2)*x^3*Erfc(b*x))/(2*b^2) + (3*ℯ^c*sqrt(pi)*erfi(b*x))/(8*b^5) - (3*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(4*b^3*sqrt(pi))]
    @test_int [ℯ^(c + b^2*x^2)*x^2*Erfc(b*x), x, 6, (ℯ^c*x^2)/(2*b*sqrt(pi)) + (ℯ^(c + b^2*x^2)*x*Erfc(b*x))/(2*b^2) - (ℯ^c*sqrt(pi)*erfi(b*x))/(4*b^3) + (ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*b*sqrt(pi))]
    @test_int [ℯ^(c + b^2*x^2)*x^0*Erfc(b*x), x, 3, (ℯ^c*sqrt(pi)*erfi(b*x))/(2*b) - (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/sqrt(pi)]
    @test_int [(ℯ^(c + b^2*x^2)*Erfc(b*x))/x^2, x, 6, -((ℯ^(c + b^2*x^2)*Erfc(b*x))/x) + b*ℯ^c*sqrt(pi)*erfi(b*x) - (2*b^3*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/sqrt(pi) - (2*b*ℯ^c*log(x))/sqrt(pi)]
    @test_int [(ℯ^(c + b^2*x^2)*Erfc(b*x))/x^4, x, 9, (b*ℯ^c)/(3*sqrt(pi)*x^2) - (ℯ^(c + b^2*x^2)*Erfc(b*x))/(3*x^3) - (2*b^2*ℯ^(c + b^2*x^2)*Erfc(b*x))/(3*x) + (2/3)*b^3*ℯ^c*sqrt(pi)*erfi(b*x) - (4*b^5*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(3*sqrt(pi)) - (4*b^3*ℯ^c*log(x))/(3*sqrt(pi))]


    @test_int [x^5*Erfc(b*x)/ℯ^(b^2*x^2), x, 9, (11*x)/(16*b^5*ℯ^(2*b^2*x^2)*sqrt(pi)) + x^3/(4*b^3*ℯ^(2*b^2*x^2)*sqrt(pi)) - (43*erf(sqrt(2)*b*x))/(32*sqrt(2)*b^6) - Erfc(b*x)/(b^6*ℯ^(b^2*x^2)) - (x^2*Erfc(b*x))/(b^4*ℯ^(b^2*x^2)) - (x^4*Erfc(b*x))/(2*b^2*ℯ^(b^2*x^2))]
    @test_int [x^3*Erfc(b*x)/ℯ^(b^2*x^2), x, 5, x/(4*b^3*ℯ^(2*b^2*x^2)*sqrt(pi)) - (5*erf(sqrt(2)*b*x))/(8*sqrt(2)*b^4) - Erfc(b*x)/(2*b^4*ℯ^(b^2*x^2)) - (x^2*Erfc(b*x))/(2*b^2*ℯ^(b^2*x^2))]
    @test_int [x^1*Erfc(b*x)/ℯ^(b^2*x^2), x, 2, -erf(sqrt(2)*b*x)/(2*sqrt(2)*b^2) - Erfc(b*x)/(2*b^2*ℯ^(b^2*x^2))]
    @test_int [Erfc(b*x)/(ℯ^(b^2*x^2)*x^1), x, 0, Unintegrable(Erfc(b*x)/(ℯ^(b^2*x^2)*x), x)]
    @test_int [Erfc(b*x)/(ℯ^(b^2*x^2)*x^3), x, 3, b/(ℯ^(2*b^2*x^2)*sqrt(pi)*x) + sqrt(2)*b^2*erf(sqrt(2)*b*x) - Erfc(b*x)/(2*ℯ^(b^2*x^2)*x^2) - b^2*Unintegrable(Erfc(b*x)/(ℯ^(b^2*x^2)*x), x)]
    @test_int [Erfc(b*x)/(ℯ^(b^2*x^2)*x^5), x, 7, b/(6*ℯ^(2*b^2*x^2)*sqrt(pi)*x^3) - (7*b^3)/(6*ℯ^(2*b^2*x^2)*sqrt(pi)*x) - (b^4*erf(sqrt(2)*b*x))/sqrt(2) - (2*sqrt(2)*b^4*erf(sqrt(2)*b*x))/3 - Erfc(b*x)/(4*ℯ^(b^2*x^2)*x^4) + (b^2*Erfc(b*x))/(4*ℯ^(b^2*x^2)*x^2) + (b^4*Unintegrable(Erfc(b*x)/(ℯ^(b^2*x^2)*x), x))/2]

    @test_int [x^4*Erfc(b*x)/ℯ^(b^2*x^2), x, 7, 1/(2*b^5*ℯ^(2*b^2*x^2)*sqrt(pi)) + x^2/(4*b^3*ℯ^(2*b^2*x^2)*sqrt(pi)) - (3*x*Erfc(b*x))/(4*b^4*ℯ^(b^2*x^2)) - (x^3*Erfc(b*x))/(2*b^2*ℯ^(b^2*x^2)) - (3*sqrt(pi)*Erfc(b*x)^2)/(16*b^5)]
    @test_int [x^2*Erfc(b*x)/ℯ^(b^2*x^2), x, 4, 1/(4*b^3*ℯ^(2*b^2*x^2)*sqrt(pi)) - (x*Erfc(b*x))/(2*b^2*ℯ^(b^2*x^2)) - (sqrt(pi)*Erfc(b*x)^2)/(8*b^3)]
    @test_int [x^0*Erfc(b*x)/ℯ^(b^2*x^2), x, 2, -(sqrt(pi)*Erfc(b*x)^2)/(4*b)]
    @test_int [Erfc(b*x)/(ℯ^(b^2*x^2)*x^2), x, 4, -(Erfc(b*x)/(ℯ^(b^2*x^2)*x)) + (b*sqrt(pi)*Erfc(b*x)^2)/2 - (b*ExpIntegralEi(-2*b^2*x^2))/sqrt(pi)]
    @test_int [Erfc(b*x)/(ℯ^(b^2*x^2)*x^4), x, 7, b/(3*ℯ^(2*b^2*x^2)*sqrt(pi)*x^2) - Erfc(b*x)/(3*ℯ^(b^2*x^2)*x^3) + (2*b^2*Erfc(b*x))/(3*ℯ^(b^2*x^2)*x) - (b^3*sqrt(pi)*Erfc(b*x)^2)/3 + (4*b^3*ExpIntegralEi(-2*b^2*x^2))/(3*sqrt(pi))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(c+d*x^2)*Erfc(a+b*x)=#


    @test_int [ℯ^(c + d*x^2)*x^3*Erfc(a + b*x), x, 10, (a*b^2*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(2*(b^2 - d)^2*d*sqrt(pi)) - (b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2)*x)/(2*(b^2 - d)*d*sqrt(pi)) - (b*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*sqrt(b^2 - d)*d^2) + (a^2*b^3*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*(b^2 - d)^(5/2)*d) + (b*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(4*(b^2 - d)^(3/2)*d) - (ℯ^(c + d*x^2)*Erfc(a + b*x))/(2*d^2) + (ℯ^(c + d*x^2)*x^2*Erfc(a + b*x))/(2*d)]
    @test_int [ℯ^(c + d*x^2)*x^1*Erfc(a + b*x), x, 3, (b*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*sqrt(b^2 - d)*d) + (ℯ^(c + d*x^2)*Erfc(a + b*x))/(2*d)]
    @test_int [ℯ^(c + d*x^2)*Erfc(a + b*x)/x^1, x, 0, Unintegrable((ℯ^(c + d*x^2)*Erfc(a + b*x))/x, x)]
    @test_int [ℯ^(c + d*x^2)*Erfc(a + b*x)/x^3, x, 4, (b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(sqrt(pi)*x) + b*sqrt(b^2 - d)*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)) - (ℯ^(c + d*x^2)*Erfc(a + b*x))/(2*x^2) + (2*a*b^2*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/sqrt(pi) + d*Unintegrable((ℯ^(c + d*x^2)*Erfc(a + b*x))/x, x)]

    @test_int [ℯ^(c + d*x^2)*x^4*Erfc(a + b*x), x, 15, (3*b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(4*(b^2 - d)*d^2*sqrt(pi)) - (a^2*b^3*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(2*(b^2 - d)^3*d*sqrt(pi)) - (b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(2*(b^2 - d)^2*d*sqrt(pi)) + (a*b^2*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2)*x)/(2*(b^2 - d)^2*d*sqrt(pi)) - (b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2)*x^2)/(2*(b^2 - d)*d*sqrt(pi)) + (3*a*b^2*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(4*(b^2 - d)^(3/2)*d^2) - (a^3*b^4*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*(b^2 - d)^(7/2)*d) - (3*a*b^2*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(4*(b^2 - d)^(5/2)*d) - (3*ℯ^(c + d*x^2)*x*Erfc(a + b*x))/(4*d^2) + (ℯ^(c + d*x^2)*x^3*Erfc(a + b*x))/(2*d) + (3*Unintegrable(ℯ^(c + d*x^2)*Erfc(a + b*x), x))/(4*d^2)]
    @test_int [ℯ^(c + d*x^2)*x^2*Erfc(a + b*x), x, 4, -(b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(2*(b^2 - d)*d*sqrt(pi)) - (a*b^2*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/(2*(b^2 - d)^(3/2)*d) + (ℯ^(c + d*x^2)*x*Erfc(a + b*x))/(2*d) - Unintegrable(ℯ^(c + d*x^2)*Erfc(a + b*x), x)/(2*d)]
    @test_int [ℯ^(c + d*x^2)*x^0*Erfc(a + b*x), x, 0, Unintegrable(ℯ^(c + d*x^2)*Erfc(a + b*x), x)]
    @test_int [ℯ^(c + d*x^2)*Erfc(a + b*x)/x^2, x, 1, -((ℯ^(c + d*x^2)*Erfc(a + b*x))/x) - (2*b*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/sqrt(pi) + 2*d*Unintegrable(ℯ^(c + d*x^2)*Erfc(a + b*x), x)]
    @test_int [ℯ^(c + d*x^2)*Erfc(a + b*x)/x^4, x, 6, (b*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(3*sqrt(pi)*x^2) - (2*a*b^2*ℯ^(-a^2 + c - 2*a*b*x - (b^2 - d)*x^2))/(3*sqrt(pi)*x) - (2*a*b^2*sqrt(b^2 - d)*ℯ^(c + (a^2*d)/(b^2 - d))*erf((a*b + (b^2 - d)*x)/sqrt(b^2 - d)))/3 - (ℯ^(c + d*x^2)*Erfc(a + b*x))/(3*x^3) - (2*d*ℯ^(c + d*x^2)*Erfc(a + b*x))/(3*x) - (4*a^2*b^3*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/(3*sqrt(pi)) + (2*b*(b^2 - d)*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/(3*sqrt(pi)) - (4*b*d*Unintegrable(ℯ^(-a^2 + c - 2*a*b*x + (-b^2 + d)*x^2)/x, x))/(3*sqrt(pi)) + (4*d^2*Unintegrable(ℯ^(c + d*x^2)*Erfc(a + b*x), x))/3]


    @test_int [Erfc(b*x)/(ℯ^(b^2*x^2)*x^3) + (b^2*Erfc(b*x))/(ℯ^(b^2*x^2)*x), x, 4, b/(ℯ^(2*b^2*x^2)*sqrt(pi)*x) + sqrt(2)*b^2*erf(sqrt(2)*b*x) - Erfc(b*x)/(2*ℯ^(b^2*x^2)*x^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*Trig(c+d*x^2)*Erfc(a+b*x)^n=#


    @test_int [sin(c + im*b^2*x^2)*Erfc(b*x), x, 6, (im*ℯ^(im*c)*sqrt(pi)*Erfc(b*x)^2)/(8*b) + (im*sqrt(pi)*erfi(b*x))/(ℯ^(im*c)*(4*b)) - (im*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(ℯ^(im*c)*(2*sqrt(pi)))]
    @test_int [sin(c - im*b^2*x^2)*Erfc(b*x), x, 6, -((im*sqrt(pi)*Erfc(b*x)^2)/(ℯ^(im*c)*(8*b))) - (im*ℯ^(im*c)*sqrt(pi)*erfi(b*x))/(4*b) + (im*b*ℯ^(im*c)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*sqrt(pi))]


    @test_int [cos(c + im*b^2*x^2)*Erfc(b*x), x, 6, -((ℯ^(im*c)*sqrt(pi)*Erfc(b*x)^2)/(8*b)) + (sqrt(pi)*erfi(b*x))/(ℯ^(im*c)*(4*b)) - (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(ℯ^(im*c)*(2*sqrt(pi)))]
    @test_int [cos(c - im*b^2*x^2)*Erfc(b*x), x, 6, -((sqrt(pi)*Erfc(b*x)^2)/(ℯ^(im*c)*(8*b))) + (ℯ^(im*c)*sqrt(pi)*erfi(b*x))/(4*b) - (b*ℯ^(im*c)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*sqrt(pi))]


    @test_int [sinh(c + b^2*x^2)*Erfc(b*x), x, 6, (sqrt(pi)*Erfc(b*x)^2)/(ℯ^c*(8*b)) + (ℯ^c*sqrt(pi)*erfi(b*x))/(4*b) - (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*sqrt(pi))]
    @test_int [sinh(c - b^2*x^2)*Erfc(b*x), x, 6, -((ℯ^c*sqrt(pi)*Erfc(b*x)^2)/(8*b)) - (sqrt(pi)*erfi(b*x))/(ℯ^c*(4*b)) + (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(ℯ^c*(2*sqrt(pi)))]


    @test_int [cosh(c + b^2*x^2)*Erfc(b*x), x, 6, -((sqrt(pi)*Erfc(b*x)^2)/(ℯ^c*(8*b))) + (ℯ^c*sqrt(pi)*erfi(b*x))/(4*b) - (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(2*sqrt(pi))]
    @test_int [cosh(c - b^2*x^2)*Erfc(b*x), x, 6, -((ℯ^c*sqrt(pi)*Erfc(b*x)^2)/(8*b)) + (sqrt(pi)*erfi(b*x))/(ℯ^c*(4*b)) - (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], b^2*x^2))/(ℯ^c*(2*sqrt(pi)))]


    #= ::Title::Closed:: =#
    #=Integration*Problems*Involving*The*Imaginary*Error*Function=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*erfi(a+b*x)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*erfi(b*x)=#


    @test_int [x^5*erfi(b*x), x, 5, (-5*ℯ^(b^2*x^2)*x)/(8*b^5*sqrt(pi)) + (5*ℯ^(b^2*x^2)*x^3)/(12*b^3*sqrt(pi)) - (ℯ^(b^2*x^2)*x^5)/(6*b*sqrt(pi)) + (5*erfi(b*x))/(16*b^6) + (x^6*erfi(b*x))/6]
    @test_int [x^3*erfi(b*x), x, 4, (3*ℯ^(b^2*x^2)*x)/(8*b^3*sqrt(pi)) - (ℯ^(b^2*x^2)*x^3)/(4*b*sqrt(pi)) - (3*erfi(b*x))/(16*b^4) + (x^4*erfi(b*x))/4]
    @test_int [x^1*erfi(b*x), x, 3, -(ℯ^(b^2*x^2)*x)/(2*b*sqrt(pi)) + erfi(b*x)/(4*b^2) + (x^2*erfi(b*x))/2]
    @test_int [erfi(b*x)/x^1, x, 1, (2*b*x*HypergeometricPFQ([1/2, 1/2], [3/2, 3/2], b^2*x^2))/sqrt(pi)]
    @test_int [erfi(b*x)/x^3, x, 3, -((b*ℯ^(b^2*x^2))/(sqrt(pi)*x)) + b^2*erfi(b*x) - erfi(b*x)/(2*x^2)]
    @test_int [erfi(b*x)/x^5, x, 4, -(b*ℯ^(b^2*x^2))/(6*sqrt(pi)*x^3) - (b^3*ℯ^(b^2*x^2))/(3*sqrt(pi)*x) + (b^4*erfi(b*x))/3 - erfi(b*x)/(4*x^4)]
    @test_int [erfi(b*x)/x^7, x, 5, -(b*ℯ^(b^2*x^2))/(15*sqrt(pi)*x^5) - (2*b^3*ℯ^(b^2*x^2))/(45*sqrt(pi)*x^3) - (4*b^5*ℯ^(b^2*x^2))/(45*sqrt(pi)*x) + (4*b^6*erfi(b*x))/45 - erfi(b*x)/(6*x^6)]

    @test_int [x^6*erfi(b*x), x, 5, (6*ℯ^(b^2*x^2))/(7*b^7*sqrt(pi)) - (6*ℯ^(b^2*x^2)*x^2)/(7*b^5*sqrt(pi)) + (3*ℯ^(b^2*x^2)*x^4)/(7*b^3*sqrt(pi)) - (ℯ^(b^2*x^2)*x^6)/(7*b*sqrt(pi)) + (x^7*erfi(b*x))/7]
    @test_int [x^4*erfi(b*x), x, 4, (-2*ℯ^(b^2*x^2))/(5*b^5*sqrt(pi)) + (2*ℯ^(b^2*x^2)*x^2)/(5*b^3*sqrt(pi)) - (ℯ^(b^2*x^2)*x^4)/(5*b*sqrt(pi)) + (x^5*erfi(b*x))/5]
    @test_int [x^2*erfi(b*x), x, 3, ℯ^(b^2*x^2)/(3*b^3*sqrt(pi)) - (ℯ^(b^2*x^2)*x^2)/(3*b*sqrt(pi)) + (x^3*erfi(b*x))/3]
    @test_int [x^0*erfi(b*x), x, 1, -(ℯ^(b^2*x^2)/(b*sqrt(pi))) + x*erfi(b*x)]
    @test_int [erfi(b*x)/x^2, x, 2, -(erfi(b*x)/x) + (b*ExpIntegralEi(b^2*x^2))/sqrt(pi)]
    @test_int [erfi(b*x)/x^4, x, 3, -(b*ℯ^(b^2*x^2))/(3*sqrt(pi)*x^2) - erfi(b*x)/(3*x^3) + (b^3*ExpIntegralEi(b^2*x^2))/(3*sqrt(pi))]
    @test_int [erfi(b*x)/x^6, x, 4, -(b*ℯ^(b^2*x^2))/(10*sqrt(pi)*x^4) - (b^3*ℯ^(b^2*x^2))/(10*sqrt(pi)*x^2) - erfi(b*x)/(5*x^5) + (b^5*ExpIntegralEi(b^2*x^2))/(10*sqrt(pi))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*erfi(a+b*x)=#


    @test_int [(c + d*x)^3*erfi(a + b*x), x, 12, (d^2*(b*c - a*d)*ℯ^(a + b*x)^2)/(b^4*sqrt(pi)) - ((b*c - a*d)^3*ℯ^(a + b*x)^2)/(b^4*sqrt(pi)) + (3*d^3*ℯ^(a + b*x)^2*(a + b*x))/(8*b^4*sqrt(pi)) - (3*d*(b*c - a*d)^2*ℯ^(a + b*x)^2*(a + b*x))/(2*b^4*sqrt(pi)) - (d^2*(b*c - a*d)*ℯ^(a + b*x)^2*(a + b*x)^2)/(b^4*sqrt(pi)) - (d^3*ℯ^(a + b*x)^2*(a + b*x)^3)/(4*b^4*sqrt(pi)) - (3*d^3*erfi(a + b*x))/(16*b^4) + (3*d*(b*c - a*d)^2*erfi(a + b*x))/(4*b^4) - ((b*c - a*d)^4*erfi(a + b*x))/(4*b^4*d) + ((c + d*x)^4*erfi(a + b*x))/(4*d)]
    @test_int [(c + d*x)^2*erfi(a + b*x), x, 9, (d^2*ℯ^(a + b*x)^2)/(3*b^3*sqrt(pi)) - ((b*c - a*d)^2*ℯ^(a + b*x)^2)/(b^3*sqrt(pi)) - (d*(b*c - a*d)*ℯ^(a + b*x)^2*(a + b*x))/(b^3*sqrt(pi)) - (d^2*ℯ^(a + b*x)^2*(a + b*x)^2)/(3*b^3*sqrt(pi)) + (d*(b*c - a*d)*erfi(a + b*x))/(2*b^3) - ((b*c - a*d)^3*erfi(a + b*x))/(3*b^3*d) + ((c + d*x)^3*erfi(a + b*x))/(3*d)]
    @test_int [(c + d*x)^1*erfi(a + b*x), x, 7, -(((b*c - a*d)*ℯ^(a + b*x)^2)/(b^2*sqrt(pi))) - (d*ℯ^(a + b*x)^2*(a + b*x))/(2*b^2*sqrt(pi)) + (d*erfi(a + b*x))/(4*b^2) - ((b*c - a*d)^2*erfi(a + b*x))/(2*b^2*d) + ((c + d*x)^2*erfi(a + b*x))/(2*d)]
    @test_int [(c + d*x)^0*erfi(a + b*x), x, 1, -(ℯ^(a + b*x)^2/(b*sqrt(pi))) + ((a + b*x)*erfi(a + b*x))/b]
    @test_int [erfi(a + b*x)/(c + d*x)^1, x, 0, Unintegrable(erfi(a + b*x)/(c + d*x), x)]
    @test_int [erfi(a + b*x)/(c + d*x)^2, x, 1, -(erfi(a + b*x)/(d*(c + d*x))) + (2*b*Unintegrable(ℯ^(a + b*x)^2/(c + d*x), x))/(d*sqrt(pi))]
    @test_int [erfi(a + b*x)/(c + d*x)^3, x, 3, -((b*ℯ^(a + b*x)^2)/(d^2*sqrt(pi)*(c + d*x))) + (b^2*erfi(a + b*x))/d^3 - erfi(a + b*x)/(2*d*(c + d*x)^2) - (2*b^2*(b*c - a*d)*Unintegrable(ℯ^(a + b*x)^2/(c + d*x), x))/(d^3*sqrt(pi))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*erfi(a+b*x)^2=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*erfi(b*x)^2=#


    @test_int [x^5*erfi(b*x)^2, x, 12, (11*ℯ^(2*b^2*x^2))/(12*b^6*pi) - (7*ℯ^(2*b^2*x^2)*x^2)/(12*b^4*pi) + (ℯ^(2*b^2*x^2)*x^4)/(6*b^2*pi) - (5*ℯ^(b^2*x^2)*x*erfi(b*x))/(4*b^5*sqrt(pi)) + (5*ℯ^(b^2*x^2)*x^3*erfi(b*x))/(6*b^3*sqrt(pi)) - (ℯ^(b^2*x^2)*x^5*erfi(b*x))/(3*b*sqrt(pi)) + (5*erfi(b*x)^2)/(16*b^6) + (x^6*erfi(b*x)^2)/6]
    @test_int [x^3*erfi(b*x)^2, x, 8, -ℯ^(2*b^2*x^2)/(2*b^4*pi) + (ℯ^(2*b^2*x^2)*x^2)/(4*b^2*pi) + (3*ℯ^(b^2*x^2)*x*erfi(b*x))/(4*b^3*sqrt(pi)) - (ℯ^(b^2*x^2)*x^3*erfi(b*x))/(2*b*sqrt(pi)) - (3*erfi(b*x)^2)/(16*b^4) + (x^4*erfi(b*x)^2)/4]
    @test_int [x^1*erfi(b*x)^2, x, 5, ℯ^(2*b^2*x^2)/(2*b^2*pi) - (ℯ^(b^2*x^2)*x*erfi(b*x))/(b*sqrt(pi)) + erfi(b*x)^2/(4*b^2) + (x^2*erfi(b*x)^2)/2]
    @test_int [erfi(b*x)^2/x^1, x, 0, Unintegrable(erfi(b*x)^2/x, x)]
    @test_int [erfi(b*x)^2/x^3, x, 5, (-2*b*ℯ^(b^2*x^2)*erfi(b*x))/(sqrt(pi)*x) + b^2*erfi(b*x)^2 - erfi(b*x)^2/(2*x^2) + (2*b^2*ExpIntegralEi(2*b^2*x^2))/pi]
    @test_int [erfi(b*x)^2/x^5, x, 8, -(b^2*ℯ^(2*b^2*x^2))/(3*pi*x^2) - (b*ℯ^(b^2*x^2)*erfi(b*x))/(3*sqrt(pi)*x^3) - (2*b^3*ℯ^(b^2*x^2)*erfi(b*x))/(3*sqrt(pi)*x) + (b^4*erfi(b*x)^2)/3 - erfi(b*x)^2/(4*x^4) + (4*b^4*ExpIntegralEi(2*b^2*x^2))/(3*pi)]
    @test_int [erfi(b*x)^2/x^7, x, 12, -(b^2*ℯ^(2*b^2*x^2))/(15*pi*x^4) - (2*b^4*ℯ^(2*b^2*x^2))/(9*pi*x^2) - (2*b*ℯ^(b^2*x^2)*erfi(b*x))/(15*sqrt(pi)*x^5) - (4*b^3*ℯ^(b^2*x^2)*erfi(b*x))/(45*sqrt(pi)*x^3) - (8*b^5*ℯ^(b^2*x^2)*erfi(b*x))/(45*sqrt(pi)*x) + (4*b^6*erfi(b*x)^2)/45 - erfi(b*x)^2/(6*x^6) + (28*b^6*ExpIntegralEi(2*b^2*x^2))/(45*pi)]

    @test_int [x^4*erfi(b*x)^2, x, 10, (-11*ℯ^(2*b^2*x^2)*x)/(20*b^4*pi) + (ℯ^(2*b^2*x^2)*x^3)/(5*b^2*pi) - (4*ℯ^(b^2*x^2)*erfi(b*x))/(5*b^5*sqrt(pi)) + (4*ℯ^(b^2*x^2)*x^2*erfi(b*x))/(5*b^3*sqrt(pi)) - (2*ℯ^(b^2*x^2)*x^4*erfi(b*x))/(5*b*sqrt(pi)) + (x^5*erfi(b*x)^2)/5 + (43*erfi(sqrt(2)*b*x))/(40*b^5*sqrt(2*pi))]
    @test_int [x^2*erfi(b*x)^2, x, 6, (ℯ^(2*b^2*x^2)*x)/(3*b^2*pi) + (2*ℯ^(b^2*x^2)*erfi(b*x))/(3*b^3*sqrt(pi)) - (2*ℯ^(b^2*x^2)*x^2*erfi(b*x))/(3*b*sqrt(pi)) + (x^3*erfi(b*x)^2)/3 - (5*erfi(sqrt(2)*b*x))/(6*b^3*sqrt(2*pi))]
    @test_int [x^0*erfi(b*x)^2, x, 4, (-2*ℯ^(b^2*x^2)*erfi(b*x))/(b*sqrt(pi)) + x*erfi(b*x)^2 + (sqrt(2/pi)*erfi(sqrt(2)*b*x))/b]
    @test_int [erfi(b*x)^2/x^2, x, 0, Unintegrable(erfi(b*x)^2/x^2, x)]
    @test_int [erfi(b*x)^2/x^4, x, 0, Unintegrable(erfi(b*x)^2/x^4, x)]
    @test_int [erfi(b*x)^2/x^6, x, 0, Unintegrable(erfi(b*x)^2/x^6, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*erfi(a+b*x)^2=#


    @test_int [(c + d*x)^2*erfi(a + b*x)^2, x, 16, (d*(b*c - a*d)*ℯ^(2*(a + b*x)^2))/(b^3*pi) + (d^2*ℯ^(2*(a + b*x)^2)*(a + b*x))/(3*b^3*pi) + (2*d^2*ℯ^(a + b*x)^2*erfi(a + b*x))/(3*b^3*sqrt(pi)) - (2*(b*c - a*d)^2*ℯ^(a + b*x)^2*erfi(a + b*x))/(b^3*sqrt(pi)) - (2*d*(b*c - a*d)*ℯ^(a + b*x)^2*(a + b*x)*erfi(a + b*x))/(b^3*sqrt(pi)) - (2*d^2*ℯ^(a + b*x)^2*(a + b*x)^2*erfi(a + b*x))/(3*b^3*sqrt(pi)) + (d*(b*c - a*d)*erfi(a + b*x)^2)/(2*b^3) + ((b*c - a*d)^2*(a + b*x)*erfi(a + b*x)^2)/b^3 + (d*(b*c - a*d)*(a + b*x)^2*erfi(a + b*x)^2)/b^3 + (d^2*(a + b*x)^3*erfi(a + b*x)^2)/(3*b^3) + ((b*c - a*d)^2*sqrt(2/pi)*erfi(sqrt(2)*(a + b*x)))/b^3 - (5*d^2*erfi(sqrt(2)*(a + b*x)))/(6*b^3*sqrt(2*pi))]
    @test_int [(c + d*x)^1*erfi(a + b*x)^2, x, 10, (d*ℯ^(2*(a + b*x)^2))/(2*b^2*pi) - (2*(b*c - a*d)*ℯ^(a + b*x)^2*erfi(a + b*x))/(b^2*sqrt(pi)) - (d*ℯ^(a + b*x)^2*(a + b*x)*erfi(a + b*x))/(b^2*sqrt(pi)) + (d*erfi(a + b*x)^2)/(4*b^2) + ((b*c - a*d)*(a + b*x)*erfi(a + b*x)^2)/b^2 + (d*(a + b*x)^2*erfi(a + b*x)^2)/(2*b^2) + ((b*c - a*d)*sqrt(2/pi)*erfi(sqrt(2)*(a + b*x)))/b^2]
    @test_int [(c + d*x)^0*erfi(a + b*x)^2, x, 4, (-2*ℯ^(a + b*x)^2*erfi(a + b*x))/(b*sqrt(pi)) + ((a + b*x)*erfi(a + b*x)^2)/b + (sqrt(2/pi)*erfi(sqrt(2)*(a + b*x)))/b]
    @test_int [erfi(a + b*x)^2/(c + d*x)^1, x, 0, Unintegrable(erfi(a + b*x)^2/(c + d*x), x)]
    @test_int [erfi(a + b*x)^2/(c + d*x)^2, x, 0, Unintegrable(erfi(a + b*x)^2/(c + d*x)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*erfi(d*(a+b*log(c*x^n)))=#


    @test_int [x^2*erfi(d*(a + b*log(c*x^n))), x, 5, (x^3*erfi(d*(a + b*log(c*x^n))))/3 - (x^3*erfi((2*a*b*d^2 + 3/n + 2*b^2*d^2*log(c*x^n))/(2*b*d)))/(3*ℯ^((3*(3 + 4*a*b*d^2*n))/(4*b^2*d^2*n^2))*(c*x^n)^(3/n))]
    @test_int [x^1*erfi(d*(a + b*log(c*x^n))), x, 5, (x^2*erfi(d*(a + b*log(c*x^n))))/2 - (x^2*erfi((a*b*d^2 + n^(-1) + b^2*d^2*log(c*x^n))/(b*d)))/(2*ℯ^((1 + 2*a*b*d^2*n)/(b^2*d^2*n^2))*(c*x^n)^(2/n))]
    @test_int [x^0*erfi(d*(a + b*log(c*x^n))), x, 5, x*erfi(d*(a + b*log(c*x^n))) - (x*erfi((2*a*b*d^2 + n^(-1) + 2*b^2*d^2*log(c*x^n))/(2*b*d)))/(ℯ^((1 + 4*a*b*d^2*n)/(4*b^2*d^2*n^2))*(c*x^n)^n^(-1))]
    @test_int [erfi(d*(a + b*log(c*x^n)))/x^1, x, 3, -(ℯ^(a*d + b*d*log(c*x^n))^2/(b*d*n*sqrt(pi))) + (erfi(d*(a + b*log(c*x^n)))*(a + b*log(c*x^n)))/(b*n)]
    @test_int [erfi(d*(a + b*log(c*x^n)))/x^2, x, 5, -(erfi(d*(a + b*log(c*x^n)))/x) + (ℯ^(-1/(4*b^2*d^2*n^2) + a/(b*n))*(c*x^n)^n^(-1)*erfi((2*a*b*d^2 - n^(-1) + 2*b^2*d^2*log(c*x^n))/(2*b*d)))/x]
    @test_int [erfi(d*(a + b*log(c*x^n)))/x^3, x, 5, -erfi(d*(a + b*log(c*x^n)))/(2*x^2) + ((c*x^n)^(2/n)*erfi((a*b*d^2 - n^(-1) + b^2*d^2*log(c*x^n))/(b*d)))/(2*ℯ^((1 - 2*a*b*d^2*n)/(b^2*d^2*n^2))*x^2)]


    @test_int [(e*x)^m*erfi(d*(a + b*log(c*x^n))), x, 5, ((e*x)^(1 + m)*erfi(d*(a + b*log(c*x^n))))/(e*(1 + m)) - (x*(e*x)^m*erfi((1 + m + 2*a*b*d^2*n + 2*b^2*d^2*n*log(c*x^n))/(2*b*d*n)))/(ℯ^(((1 + m)*(1 + m + 4*a*b*d^2*n))/(4*b^2*d^2*n^2))*(1 + m)*(c*x^n)^((1 + m)/n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*ℯ^(c+d*x^2)*erfi(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c+b^2*x^2)*erfi(b*x)^n=#


    @test_int [ℯ^(c + b^2*x^2)*erfi(b*x)^2, x, 2, (ℯ^c*sqrt(pi)*erfi(b*x)^3)/(6*b)]
    @test_int [ℯ^(c + b^2*x^2)*erfi(b*x)^1, x, 2, (ℯ^c*sqrt(pi)*erfi(b*x)^2)/(4*b)]
    @test_int [ℯ^(c + b^2*x^2)/erfi(b*x)^1, x, 2, (ℯ^c*sqrt(pi)*log(erfi(b*x)))/(2*b)]
    @test_int [ℯ^(c + b^2*x^2)/erfi(b*x)^2, x, 2, -((ℯ^c*sqrt(pi))/(2*b*erfi(b*x)))]
    @test_int [ℯ^(c + b^2*x^2)/erfi(b*x)^3, x, 2, -((ℯ^c*sqrt(pi))/(4*b*erfi(b*x)^2))]


    @test_int [ℯ^(c + b^2*x^2)*erfi(b*x)^n, x, 2, (ℯ^c*sqrt(pi)*erfi(b*x)^(1 + n))/(2*b*(1 + n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(c+d*x^2)*erfi(b*x)=#


    @test_int [ℯ^(c + d*x^2)*x^5*erfi(b*x), x, 9, (3*b*ℯ^(c + (b^2 + d)*x^2)*x)/(4*d*(b^2 + d)^2*sqrt(pi)) + (b*ℯ^(c + (b^2 + d)*x^2)*x)/(d^2*(b^2 + d)*sqrt(pi)) - (b*ℯ^(c + (b^2 + d)*x^2)*x^3)/(2*d*(b^2 + d)*sqrt(pi)) + (ℯ^(c + d*x^2)*erfi(b*x))/d^3 - (ℯ^(c + d*x^2)*x^2*erfi(b*x))/d^2 + (ℯ^(c + d*x^2)*x^4*erfi(b*x))/(2*d) - (3*b*ℯ^c*erfi(sqrt(b^2 + d)*x))/(8*d*(b^2 + d)^(5/2)) - (b*ℯ^c*erfi(sqrt(b^2 + d)*x))/(2*d^2*(b^2 + d)^(3/2)) - (b*ℯ^c*erfi(sqrt(b^2 + d)*x))/(d^3*sqrt(b^2 + d))]
    @test_int [ℯ^(c + d*x^2)*x^3*erfi(b*x), x, 5, -(b*ℯ^(c + (b^2 + d)*x^2)*x)/(2*d*(b^2 + d)*sqrt(pi)) - (ℯ^(c + d*x^2)*erfi(b*x))/(2*d^2) + (ℯ^(c + d*x^2)*x^2*erfi(b*x))/(2*d) + (b*ℯ^c*erfi(sqrt(b^2 + d)*x))/(4*d*(b^2 + d)^(3/2)) + (b*ℯ^c*erfi(sqrt(b^2 + d)*x))/(2*d^2*sqrt(b^2 + d))]
    @test_int [ℯ^(c + d*x^2)*x^1*erfi(b*x), x, 2, (ℯ^(c + d*x^2)*erfi(b*x))/(2*d) - (b*ℯ^c*erfi(sqrt(b^2 + d)*x))/(2*d*sqrt(b^2 + d))]
    @test_int [(ℯ^(c + d*x^2)*erfi(b*x))/x^1, x, 0, Unintegrable((ℯ^(c + d*x^2)*erfi(b*x))/x, x)]
    @test_int [(ℯ^(c + d*x^2)*erfi(b*x))/x^3, x, 3, -((b*ℯ^(c + (b^2 + d)*x^2))/(sqrt(pi)*x)) - (ℯ^(c + d*x^2)*erfi(b*x))/(2*x^2) + b*sqrt(b^2 + d)*ℯ^c*erfi(sqrt(b^2 + d)*x) + d*Unintegrable((ℯ^(c + d*x^2)*erfi(b*x))/x, x)]
    @test_int [(ℯ^(c + d*x^2)*erfi(b*x))/x^5, x, 7, -(b*ℯ^(c + (b^2 + d)*x^2))/(6*sqrt(pi)*x^3) - (b*d*ℯ^(c + (b^2 + d)*x^2))/(2*sqrt(pi)*x) - (b*(b^2 + d)*ℯ^(c + (b^2 + d)*x^2))/(3*sqrt(pi)*x) - (ℯ^(c + d*x^2)*erfi(b*x))/(4*x^4) - (d*ℯ^(c + d*x^2)*erfi(b*x))/(4*x^2) + (b*d*sqrt(b^2 + d)*ℯ^c*erfi(sqrt(b^2 + d)*x))/2 + (b*(b^2 + d)^(3/2)*ℯ^c*erfi(sqrt(b^2 + d)*x))/3 + (d^2*Unintegrable((ℯ^(c + d*x^2)*erfi(b*x))/x, x))/2]

    @test_int [ℯ^(c + d*x^2)*x^4*erfi(b*x), x, 5, (b*ℯ^(c + (b^2 + d)*x^2))/(2*d*(b^2 + d)^2*sqrt(pi)) + (3*b*ℯ^(c + (b^2 + d)*x^2))/(4*d^2*(b^2 + d)*sqrt(pi)) - (b*ℯ^(c + (b^2 + d)*x^2)*x^2)/(2*d*(b^2 + d)*sqrt(pi)) - (3*ℯ^(c + d*x^2)*x*erfi(b*x))/(4*d^2) + (ℯ^(c + d*x^2)*x^3*erfi(b*x))/(2*d) + (3*Unintegrable(ℯ^(c + d*x^2)*erfi(b*x), x))/(4*d^2)]
    @test_int [ℯ^(c + d*x^2)*x^2*erfi(b*x), x, 2, -(b*ℯ^(c + (b^2 + d)*x^2))/(2*d*(b^2 + d)*sqrt(pi)) + (ℯ^(c + d*x^2)*x*erfi(b*x))/(2*d) - Unintegrable(ℯ^(c + d*x^2)*erfi(b*x), x)/(2*d)]
    @test_int [ℯ^(c + d*x^2)*x^0*erfi(b*x), x, 0, Unintegrable(ℯ^(c + d*x^2)*erfi(b*x), x)]
    @test_int [(ℯ^(c + d*x^2)*erfi(b*x))/x^2, x, 2, -((ℯ^(c + d*x^2)*erfi(b*x))/x) + (b*ℯ^c*ExpIntegralEi((b^2 + d)*x^2))/sqrt(pi) + 2*d*Unintegrable(ℯ^(c + d*x^2)*erfi(b*x), x)]
    @test_int [(ℯ^(c + d*x^2)*erfi(b*x))/x^4, x, 5, -(b*ℯ^(c + (b^2 + d)*x^2))/(3*sqrt(pi)*x^2) - (ℯ^(c + d*x^2)*erfi(b*x))/(3*x^3) - (2*d*ℯ^(c + d*x^2)*erfi(b*x))/(3*x) + (2*b*d*ℯ^c*ExpIntegralEi((b^2 + d)*x^2))/(3*sqrt(pi)) + (b*(b^2 + d)*ℯ^c*ExpIntegralEi((b^2 + d)*x^2))/(3*sqrt(pi)) + (4*d^2*Unintegrable(ℯ^(c + d*x^2)*erfi(b*x), x))/3]


    @test_int [x^5*erfi(b*x)/ℯ^(b^2*x^2), x, 6, (2*x)/(b^5*sqrt(pi)) + (2*x^3)/(3*b^3*sqrt(pi)) + x^5/(5*b*sqrt(pi)) - erfi(b*x)/(b^6*ℯ^(b^2*x^2)) - (x^2*erfi(b*x))/(b^4*ℯ^(b^2*x^2)) - (x^4*erfi(b*x))/(2*b^2*ℯ^(b^2*x^2))]
    @test_int [x^3*erfi(b*x)/ℯ^(b^2*x^2), x, 4, x/(b^3*sqrt(pi)) + x^3/(3*b*sqrt(pi)) - erfi(b*x)/(2*b^4*ℯ^(b^2*x^2)) - (x^2*erfi(b*x))/(2*b^2*ℯ^(b^2*x^2))]
    @test_int [x^1*erfi(b*x)/ℯ^(b^2*x^2), x, 2, x/(b*sqrt(pi)) - erfi(b*x)/(2*b^2*ℯ^(b^2*x^2))]
    @test_int [erfi(b*x)/(ℯ^(b^2*x^2)*x^1), x, 1, (2*b*x*HypergeometricPFQ([1/2, 1], [3/2, 3/2], -(b^2*x^2)))/sqrt(pi)]
    @test_int [erfi(b*x)/(ℯ^(b^2*x^2)*x^3), x, 3, -(b/(sqrt(pi)*x)) - erfi(b*x)/(2*ℯ^(b^2*x^2)*x^2) - (2*b^3*x*HypergeometricPFQ([1/2, 1], [3/2, 3/2], -(b^2*x^2)))/sqrt(pi)]
    @test_int [erfi(b*x)/(ℯ^(b^2*x^2)*x^5), x, 5, -b/(6*sqrt(pi)*x^3) + b^3/(2*sqrt(pi)*x) - erfi(b*x)/(4*ℯ^(b^2*x^2)*x^4) + (b^2*erfi(b*x))/(4*ℯ^(b^2*x^2)*x^2) + (b^5*x*HypergeometricPFQ([1/2, 1], [3/2, 3/2], -(b^2*x^2)))/sqrt(pi)]

    @test_int [x^6*erfi(b*x)/ℯ^(b^2*x^2), x, 7, (15*x^2)/(8*b^5*sqrt(pi)) + (5*x^4)/(8*b^3*sqrt(pi)) + x^6/(6*b*sqrt(pi)) - (15*x*erfi(b*x))/(ℯ^(b^2*x^2)*(8*b^6)) - (5*x^3*erfi(b*x))/(ℯ^(b^2*x^2)*(4*b^4)) - (x^5*erfi(b*x))/(ℯ^(b^2*x^2)*(2*b^2)) + (15*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(8*b^5*sqrt(pi))]
    @test_int [x^4*erfi(b*x)/ℯ^(b^2*x^2), x, 5, (3*x^2)/(4*b^3*sqrt(pi)) + x^4/(4*b*sqrt(pi)) - (3*x*erfi(b*x))/(ℯ^(b^2*x^2)*(4*b^4)) - (x^3*erfi(b*x))/(ℯ^(b^2*x^2)*(2*b^2)) + (3*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(4*b^3*sqrt(pi))]
    @test_int [x^2*erfi(b*x)/ℯ^(b^2*x^2), x, 3, x^2/(2*b*sqrt(pi)) - (x*erfi(b*x))/(ℯ^(b^2*x^2)*(2*b^2)) + (x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(2*b*sqrt(pi))]
    @test_int [x^0*erfi(b*x)/ℯ^(b^2*x^2), x, 1, (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/sqrt(pi)]
    @test_int [erfi(b*x)/(ℯ^(b^2*x^2)*x^2), x, 3, -(erfi(b*x)/(ℯ^(b^2*x^2)*x)) - (2*b^3*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/sqrt(pi) + (2*b*log(x))/sqrt(pi)]
    @test_int [erfi(b*x)/(ℯ^(b^2*x^2)*x^4), x, 5, -(b/(3*sqrt(pi)*x^2)) - erfi(b*x)/(ℯ^(b^2*x^2)*(3*x^3)) + (2*b^2*erfi(b*x))/(ℯ^(b^2*x^2)*(3*x)) + (4*b^5*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(3*sqrt(pi)) - (4*b^3*log(x))/(3*sqrt(pi))]
    @test_int [erfi(b*x)/(ℯ^(b^2*x^2)*x^6), x, 7, -(b/(10*sqrt(pi)*x^4)) + (2*b^3)/(15*sqrt(pi)*x^2) - erfi(b*x)/(ℯ^(b^2*x^2)*(5*x^5)) + (2*b^2*erfi(b*x))/(ℯ^(b^2*x^2)*(15*x^3)) - (4*b^4*erfi(b*x))/(ℯ^(b^2*x^2)*(15*x)) - (8*b^7*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(15*sqrt(pi)) + (8*b^5*log(x))/(15*sqrt(pi))]


    @test_int [ℯ^(c + b^2*x^2)*x^5*erfi(b*x), x, 9, (11*ℯ^(c + 2*b^2*x^2)*x)/(16*b^5*sqrt(pi)) - (ℯ^(c + 2*b^2*x^2)*x^3)/(4*b^3*sqrt(pi)) + (ℯ^(c + b^2*x^2)*erfi(b*x))/b^6 - (ℯ^(c + b^2*x^2)*x^2*erfi(b*x))/b^4 + (ℯ^(c + b^2*x^2)*x^4*erfi(b*x))/(2*b^2) - (43*ℯ^c*erfi(sqrt(2)*b*x))/(32*sqrt(2)*b^6)]
    @test_int [ℯ^(c + b^2*x^2)*x^3*erfi(b*x), x, 5, -(ℯ^(c + 2*b^2*x^2)*x)/(4*b^3*sqrt(pi)) - (ℯ^(c + b^2*x^2)*erfi(b*x))/(2*b^4) + (ℯ^(c + b^2*x^2)*x^2*erfi(b*x))/(2*b^2) + (5*ℯ^c*erfi(sqrt(2)*b*x))/(8*sqrt(2)*b^4)]
    @test_int [ℯ^(c + b^2*x^2)*x^1*erfi(b*x), x, 2, (ℯ^(c + b^2*x^2)*erfi(b*x))/(2*b^2) - (ℯ^c*erfi(sqrt(2)*b*x))/(2*sqrt(2)*b^2)]
    @test_int [(ℯ^(c + b^2*x^2)*erfi(b*x))/x^1, x, 0, Unintegrable((ℯ^(c + b^2*x^2)*erfi(b*x))/x, x)]
    @test_int [(ℯ^(c + b^2*x^2)*erfi(b*x))/x^3, x, 3, -((b*ℯ^(c + 2*b^2*x^2))/(sqrt(pi)*x)) - (ℯ^(c + b^2*x^2)*erfi(b*x))/(2*x^2) + sqrt(2)*b^2*ℯ^c*erfi(sqrt(2)*b*x) + b^2*Unintegrable((ℯ^(c + b^2*x^2)*erfi(b*x))/x, x)]
    @test_int [(ℯ^(c + b^2*x^2)*erfi(b*x))/x^5, x, 7, -(b*ℯ^(c + 2*b^2*x^2))/(6*sqrt(pi)*x^3) - (7*b^3*ℯ^(c + 2*b^2*x^2))/(6*sqrt(pi)*x) - (ℯ^(c + b^2*x^2)*erfi(b*x))/(4*x^4) - (b^2*ℯ^(c + b^2*x^2)*erfi(b*x))/(4*x^2) + (b^4*ℯ^c*erfi(sqrt(2)*b*x))/sqrt(2) + (2*sqrt(2)*b^4*ℯ^c*erfi(sqrt(2)*b*x))/3 + (b^4*Unintegrable((ℯ^(c + b^2*x^2)*erfi(b*x))/x, x))/2]

    @test_int [ℯ^(c + b^2*x^2)*x^4*erfi(b*x), x, 7, ℯ^(c + 2*b^2*x^2)/(2*b^5*sqrt(pi)) - (ℯ^(c + 2*b^2*x^2)*x^2)/(4*b^3*sqrt(pi)) - (3*ℯ^(c + b^2*x^2)*x*erfi(b*x))/(4*b^4) + (ℯ^(c + b^2*x^2)*x^3*erfi(b*x))/(2*b^2) + (3*ℯ^c*sqrt(pi)*erfi(b*x)^2)/(16*b^5)]
    @test_int [ℯ^(c + b^2*x^2)*x^2*erfi(b*x), x, 4, -ℯ^(c + 2*b^2*x^2)/(4*b^3*sqrt(pi)) + (ℯ^(c + b^2*x^2)*x*erfi(b*x))/(2*b^2) - (ℯ^c*sqrt(pi)*erfi(b*x)^2)/(8*b^3)]
    @test_int [ℯ^(c + b^2*x^2)*x^0*erfi(b*x), x, 2, (ℯ^c*sqrt(pi)*erfi(b*x)^2)/(4*b)]
    @test_int [(ℯ^(c + b^2*x^2)*erfi(b*x))/x^2, x, 4, -((ℯ^(c + b^2*x^2)*erfi(b*x))/x) + (b*ℯ^c*sqrt(pi)*erfi(b*x)^2)/2 + (b*ℯ^c*ExpIntegralEi(2*b^2*x^2))/sqrt(pi)]
    @test_int [(ℯ^(c + b^2*x^2)*erfi(b*x))/x^4, x, 7, -(b*ℯ^(c + 2*b^2*x^2))/(3*sqrt(pi)*x^2) - (ℯ^(c + b^2*x^2)*erfi(b*x))/(3*x^3) - (2*b^2*ℯ^(c + b^2*x^2)*erfi(b*x))/(3*x) + (b^3*ℯ^c*sqrt(pi)*erfi(b*x)^2)/3 + (4*b^3*ℯ^c*ExpIntegralEi(2*b^2*x^2))/(3*sqrt(pi))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*ℯ^(c+d*x^2)*erfi(a+b*x)=#


    @test_int [ℯ^(c + d*x^2)*x^3*erfi(a + b*x), x, 10, (a*b^2*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2))/(2*d*(b^2 + d)^2*sqrt(pi)) - (b*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2)*x)/(2*d*(b^2 + d)*sqrt(pi)) - (ℯ^(c + d*x^2)*erfi(a + b*x))/(2*d^2) + (ℯ^(c + d*x^2)*x^2*erfi(a + b*x))/(2*d) - (a^2*b^3*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)))/(2*d*(b^2 + d)^(5/2)) + (b*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)))/(4*d*(b^2 + d)^(3/2)) + (b*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)))/(2*d^2*sqrt(b^2 + d))]
    @test_int [ℯ^(c + d*x^2)*x^1*erfi(a + b*x), x, 3, (ℯ^(c + d*x^2)*erfi(a + b*x))/(2*d) - (b*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)))/(2*d*sqrt(b^2 + d))]
    @test_int [ℯ^(c + d*x^2)*erfi(a + b*x)/x^1, x, 0, Unintegrable((ℯ^(c + d*x^2)*erfi(a + b*x))/x, x)]
    @test_int [ℯ^(c + d*x^2)*erfi(a + b*x)/x^3, x, 4, -((b*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2))/(sqrt(pi)*x)) - (ℯ^(c + d*x^2)*erfi(a + b*x))/(2*x^2) + b*sqrt(b^2 + d)*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)) + (2*a*b^2*Unintegrable(ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2)/x, x))/sqrt(pi) + d*Unintegrable((ℯ^(c + d*x^2)*erfi(a + b*x))/x, x)]

    @test_int [ℯ^(c + d*x^2)*x^4*erfi(a + b*x), x, 15, -(a^2*b^3*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2))/(2*d*(b^2 + d)^3*sqrt(pi)) + (b*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2))/(2*d*(b^2 + d)^2*sqrt(pi)) + (3*b*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2))/(4*d^2*(b^2 + d)*sqrt(pi)) + (a*b^2*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2)*x)/(2*d*(b^2 + d)^2*sqrt(pi)) - (b*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2)*x^2)/(2*d*(b^2 + d)*sqrt(pi)) - (3*ℯ^(c + d*x^2)*x*erfi(a + b*x))/(4*d^2) + (ℯ^(c + d*x^2)*x^3*erfi(a + b*x))/(2*d) + (a^3*b^4*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)))/(2*d*(b^2 + d)^(7/2)) - (3*a*b^2*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)))/(4*d*(b^2 + d)^(5/2)) - (3*a*b^2*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)))/(4*d^2*(b^2 + d)^(3/2)) + (3*Unintegrable(ℯ^(c + d*x^2)*erfi(a + b*x), x))/(4*d^2)]
    @test_int [ℯ^(c + d*x^2)*x^2*erfi(a + b*x), x, 4, -(b*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2))/(2*d*(b^2 + d)*sqrt(pi)) + (ℯ^(c + d*x^2)*x*erfi(a + b*x))/(2*d) + (a*b^2*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)))/(2*d*(b^2 + d)^(3/2)) - Unintegrable(ℯ^(c + d*x^2)*erfi(a + b*x), x)/(2*d)]
    @test_int [ℯ^(c + d*x^2)*x^0*erfi(a + b*x), x, 0, Unintegrable(ℯ^(c + d*x^2)*erfi(a + b*x), x)]
    @test_int [ℯ^(c + d*x^2)*erfi(a + b*x)/x^2, x, 1, -((ℯ^(c + d*x^2)*erfi(a + b*x))/x) + (2*b*Unintegrable(ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2)/x, x))/sqrt(pi) + 2*d*Unintegrable(ℯ^(c + d*x^2)*erfi(a + b*x), x)]
    @test_int [ℯ^(c + d*x^2)*erfi(a + b*x)/x^4, x, 6, -(b*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2))/(3*sqrt(pi)*x^2) - (2*a*b^2*ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2))/(3*sqrt(pi)*x) - (ℯ^(c + d*x^2)*erfi(a + b*x))/(3*x^3) - (2*d*ℯ^(c + d*x^2)*erfi(a + b*x))/(3*x) + (2*a*b^2*sqrt(b^2 + d)*ℯ^(c + (a^2*d)/(b^2 + d))*erfi((a*b + (b^2 + d)*x)/sqrt(b^2 + d)))/3 + (4*a^2*b^3*Unintegrable(ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2)/x, x))/(3*sqrt(pi)) + (4*b*d*Unintegrable(ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2)/x, x))/(3*sqrt(pi)) + (2*b*(b^2 + d)*Unintegrable(ℯ^(a^2 + c + 2*a*b*x + (b^2 + d)*x^2)/x, x))/(3*sqrt(pi)) + (4*d^2*Unintegrable(ℯ^(c + d*x^2)*erfi(a + b*x), x))/3]


    @test_int [erfi(b*x)/(ℯ^(b^2*x^2)*x^3) + (b^2*erfi(b*x))/(ℯ^(b^2*x^2)*x), x, 5, -(b/(sqrt(pi)*x)) - erfi(b*x)/(2*ℯ^(b^2*x^2)*x^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*Trig(c+d*x^2)*erfi(a+b*x)^n=#


    @test_int [sin(c + im*b^2*x^2)*erfi(b*x), x, 4, (im*sqrt(pi)*erfi(b*x)^2)/(ℯ^(im*c)*(8*b)) - (im*b*ℯ^(im*c)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(2*sqrt(pi))]
    @test_int [sin(c - im*b^2*x^2)*erfi(b*x), x, 4, -((im*ℯ^(im*c)*sqrt(pi)*erfi(b*x)^2)/(8*b)) + (im*b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(ℯ^(im*c)*(2*sqrt(pi)))]


    @test_int [cos(c + im*b^2*x^2)*erfi(b*x), x, 4, (sqrt(pi)*erfi(b*x)^2)/(ℯ^(im*c)*(8*b)) + (b*ℯ^(im*c)*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(2*sqrt(pi))]
    @test_int [cos(c - im*b^2*x^2)*erfi(b*x), x, 4, (ℯ^(im*c)*sqrt(pi)*erfi(b*x)^2)/(8*b) + (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(ℯ^(im*c)*(2*sqrt(pi)))]


    @test_int [sinh(c + b^2*x^2)*erfi(b*x), x, 4, (ℯ^c*sqrt(pi)*erfi(b*x)^2)/(8*b) - (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(ℯ^c*(2*sqrt(pi)))]
    @test_int [sinh(c - b^2*x^2)*erfi(b*x), x, 4, -((sqrt(pi)*erfi(b*x)^2)/(ℯ^c*(8*b))) + (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(2*sqrt(pi))]


    @test_int [cosh(c + b^2*x^2)*erfi(b*x), x, 4, (ℯ^c*sqrt(pi)*erfi(b*x)^2)/(8*b) + (b*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(ℯ^c*(2*sqrt(pi)))]
    @test_int [cosh(c - b^2*x^2)*erfi(b*x), x, 4, (sqrt(pi)*erfi(b*x)^2)/(ℯ^c*(8*b)) + (b*ℯ^c*x^2*HypergeometricPFQ([1, 1], [3/2, 2], (-b^2)*x^2))/(2*sqrt(pi))]
    end
