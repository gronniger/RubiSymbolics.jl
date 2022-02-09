@testset "4.7.5 x^m trig(a+b log(c x^n))^p" begin
    (a, b, c, d, e, m, n, p, x, ) = @variables a b c d e m n p x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Problems*for*integrands*of*the*form*(e*x)^m*Trig(d*(a+b*log(c*x^n)))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sin(d*(a+b*log(c*x^n)))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sin(d*(a+b*log(c*x^n)))^p=#


    @test_int [x^2*sin(a + b*log(c*x^n)), x, 1, -((b*n*x^3*cos(a + b*log(c*x^n)))/(9 + b^2*n^2)) + (3*x^3*sin(a + b*log(c*x^n)))/(9 + b^2*n^2)]
    @test_int [x^1*sin(a + b*log(c*x^n)), x, 1, -((b*n*x^2*cos(a + b*log(c*x^n)))/(4 + b^2*n^2)) + (2*x^2*sin(a + b*log(c*x^n)))/(4 + b^2*n^2)]
    @test_int [x^0*sin(a + b*log(c*x^n)), x, 1, -((b*n*x*cos(a + b*log(c*x^n)))/(1 + b^2*n^2)) + (x*sin(a + b*log(c*x^n)))/(1 + b^2*n^2)]
    @test_int [sin(a + b*log(c*x^n))/x^1, x, 2, -(cos(a + b*log(c*x^n))/(b*n))]
    @test_int [sin(a + b*log(c*x^n))/x^2, x, 1, -((b*n*cos(a + b*log(c*x^n)))/((1 + b^2*n^2)*x)) - sin(a + b*log(c*x^n))/((1 + b^2*n^2)*x)]
    @test_int [sin(a + b*log(c*x^n))/x^3, x, 1, -((b*n*cos(a + b*log(c*x^n)))/((4 + b^2*n^2)*x^2)) - (2*sin(a + b*log(c*x^n)))/((4 + b^2*n^2)*x^2)]


    @test_int [x^2*sin(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*x^3)/(3*(9 + 4*b^2*n^2)) - (2*b*n*x^3*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(9 + 4*b^2*n^2) + (3*x^3*sin(a + b*log(c*x^n))^2)/(9 + 4*b^2*n^2)]
    @test_int [x^1*sin(a + b*log(c*x^n))^2, x, 2, (b^2*n^2*x^2)/(4*(1 + b^2*n^2)) - (b*n*x^2*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(2*(1 + b^2*n^2)) + (x^2*sin(a + b*log(c*x^n))^2)/(2*(1 + b^2*n^2))]
    @test_int [x^0*sin(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*x)/(1 + 4*b^2*n^2) - (2*b*n*x*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(1 + 4*b^2*n^2) + (x*sin(a + b*log(c*x^n))^2)/(1 + 4*b^2*n^2)]
    @test_int [sin(a + b*log(c*x^n))^2/x^1, x, 3, log(x)/2 - (cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(2*b*n)]
    @test_int [sin(a + b*log(c*x^n))^2/x^2, x, 2, -((2*b^2*n^2)/((1 + 4*b^2*n^2)*x)) - (2*b*n*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/((1 + 4*b^2*n^2)*x) - sin(a + b*log(c*x^n))^2/((1 + 4*b^2*n^2)*x)]
    @test_int [sin(a + b*log(c*x^n))^2/x^3, x, 2, -((b^2*n^2)/(4*(1 + b^2*n^2)*x^2)) - (b*n*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(2*(1 + b^2*n^2)*x^2) - sin(a + b*log(c*x^n))^2/(2*(1 + b^2*n^2)*x^2)]


    @test_int [x^2*sin(a + b*log(c*x^n))^3, x, 2, -((2*b^3*n^3*x^3*cos(a + b*log(c*x^n)))/(3*(9 + 10*b^2*n^2 + b^4*n^4))) + (2*b^2*n^2*x^3*sin(a + b*log(c*x^n)))/(9 + 10*b^2*n^2 + b^4*n^4) - (b*n*x^3*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^2)/(3*(1 + b^2*n^2)) + (x^3*sin(a + b*log(c*x^n))^3)/(3*(1 + b^2*n^2))]
    @test_int [x^1*sin(a + b*log(c*x^n))^3, x, 2, -((6*b^3*n^3*x^2*cos(a + b*log(c*x^n)))/(16 + 40*b^2*n^2 + 9*b^4*n^4)) + (12*b^2*n^2*x^2*sin(a + b*log(c*x^n)))/(16 + 40*b^2*n^2 + 9*b^4*n^4) - (3*b*n*x^2*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^2)/(4 + 9*b^2*n^2) + (2*x^2*sin(a + b*log(c*x^n))^3)/(4 + 9*b^2*n^2)]
    @test_int [x^0*sin(a + b*log(c*x^n))^3, x, 2, -((6*b^3*n^3*x*cos(a + b*log(c*x^n)))/(1 + 10*b^2*n^2 + 9*b^4*n^4)) + (6*b^2*n^2*x*sin(a + b*log(c*x^n)))/(1 + 10*b^2*n^2 + 9*b^4*n^4) - (3*b*n*x*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^2)/(1 + 9*b^2*n^2) + (x*sin(a + b*log(c*x^n))^3)/(1 + 9*b^2*n^2)]
    @test_int [sin(a + b*log(c*x^n))^3/x^1, x, 3, -(cos(a + b*log(c*x^n))/(b*n)) + cos(a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [sin(a + b*log(c*x^n))^3/x^2, x, 2, -((6*b^3*n^3*cos(a + b*log(c*x^n)))/((1 + 10*b^2*n^2 + 9*b^4*n^4)*x)) - (6*b^2*n^2*sin(a + b*log(c*x^n)))/((1 + 10*b^2*n^2 + 9*b^4*n^4)*x) - (3*b*n*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^2)/((1 + 9*b^2*n^2)*x) - sin(a + b*log(c*x^n))^3/((1 + 9*b^2*n^2)*x)]
    @test_int [sin(a + b*log(c*x^n))^3/x^3, x, 2, -((6*b^3*n^3*cos(a + b*log(c*x^n)))/((16 + 40*b^2*n^2 + 9*b^4*n^4)*x^2)) - (12*b^2*n^2*sin(a + b*log(c*x^n)))/((16 + 40*b^2*n^2 + 9*b^4*n^4)*x^2) - (3*b*n*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^2)/((4 + 9*b^2*n^2)*x^2) - (2*sin(a + b*log(c*x^n))^3)/((4 + 9*b^2*n^2)*x^2)]


    @test_int [x^2*sin(a + b*log(c*x^n))^4, x, 3, (8*b^4*n^4*x^3)/(81 + 180*b^2*n^2 + 64*b^4*n^4) - (24*b^3*n^3*x^3*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(81 + 180*b^2*n^2 + 64*b^4*n^4) + (36*b^2*n^2*x^3*sin(a + b*log(c*x^n))^2)/(81 + 180*b^2*n^2 + 64*b^4*n^4) - (4*b*n*x^3*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^3)/(9 + 16*b^2*n^2) + (3*x^3*sin(a + b*log(c*x^n))^4)/(9 + 16*b^2*n^2)]
    @test_int [x^1*sin(a + b*log(c*x^n))^4, x, 3, (3*b^4*n^4*x^2)/(4*(1 + 5*b^2*n^2 + 4*b^4*n^4)) - (3*b^3*n^3*x^2*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(2*(1 + 5*b^2*n^2 + 4*b^4*n^4)) + (3*b^2*n^2*x^2*sin(a + b*log(c*x^n))^2)/(2*(1 + 5*b^2*n^2 + 4*b^4*n^4)) - (b*n*x^2*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^3)/(1 + 4*b^2*n^2) + (x^2*sin(a + b*log(c*x^n))^4)/(2*(1 + 4*b^2*n^2))]
    @test_int [x^0*sin(a + b*log(c*x^n))^4, x, 3, (24*b^4*n^4*x)/(1 + 20*b^2*n^2 + 64*b^4*n^4) - (24*b^3*n^3*x*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(1 + 20*b^2*n^2 + 64*b^4*n^4) + (12*b^2*n^2*x*sin(a + b*log(c*x^n))^2)/(1 + 20*b^2*n^2 + 64*b^4*n^4) - (4*b*n*x*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^3)/(1 + 16*b^2*n^2) + (x*sin(a + b*log(c*x^n))^4)/(1 + 16*b^2*n^2)]
    @test_int [sin(a + b*log(c*x^n))^4/x^1, x, 4, 3*log(x)/8 - (3*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(8*b*n) - (cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^3)/(4*b*n)]
    @test_int [sin(a + b*log(c*x^n))^4/x^2, x, 3, -((24*b^4*n^4)/((1 + 20*b^2*n^2 + 64*b^4*n^4)*x)) - (24*b^3*n^3*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/((1 + 20*b^2*n^2 + 64*b^4*n^4)*x) - (12*b^2*n^2*sin(a + b*log(c*x^n))^2)/((1 + 20*b^2*n^2 + 64*b^4*n^4)*x) - (4*b*n*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^3)/((1 + 16*b^2*n^2)*x) - sin(a + b*log(c*x^n))^4/((1 + 16*b^2*n^2)*x)]
    @test_int [sin(a + b*log(c*x^n))^4/x^3, x, 3, -((3*b^4*n^4)/(4*(1 + 5*b^2*n^2 + 4*b^4*n^4)*x^2)) - (3*b^3*n^3*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(2*(1 + 5*b^2*n^2 + 4*b^4*n^4)*x^2) - (3*b^2*n^2*sin(a + b*log(c*x^n))^2)/(2*(1 + 5*b^2*n^2 + 4*b^4*n^4)*x^2) - (b*n*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n))^3)/((1 + 4*b^2*n^2)*x^2) - sin(a + b*log(c*x^n))^4/(2*(1 + 4*b^2*n^2)*x^2)]


    @test_int [sin(log(a + b*x)), x, 2, -(((a + b*x)*cos(log(a + b*x)))/(2*b)) + ((a + b*x)*sin(log(a + b*x)))/(2*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sin(d*(a+b*log(c*x^n)))^p*when*b^2*n^2*p^2+(m+1)^2=0=#


    @test_int [x^m*sin(a + sqrt(-(m+1)^2/(1^2*n^2))*log(c*x^n))^1, x, 3, -((ℯ^((a*(1 + m))/(sqrt(-((1 + m)^2/n^2))*n))*x^(1 + m)*(c*x^n)^((1 + m)/n))/(4*sqrt(-((1 + m)^2/n^2))*n)) + (ℯ^((a*sqrt(-((1 + m)^2/n^2))*n)/(1 + m))*(1 + m)*x^(1 + m)*log(x))/((c*x^n)^((1 + m)/n)*(2*sqrt(-((1 + m)^2/n^2))*n))]

    @test_int [x^2*sin(a + sqrt(-(2+1)^2/(1^2*n^2))*log(c*x^n))^1, x, 3, ((1/12)*sqrt(-(1/n^2))*n*x^3*(c*x^n)^(3/n))/ℯ^(a*sqrt(-(1/n^2))*n) - ((1/2)*ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n*x^3*log(x))/(c*x^n)^(3/n)]
    @test_int [x^1*sin(a + sqrt(-(1+1)^2/(1^2*n^2))*log(c*x^n))^1, x, 3, ((1/8)*sqrt(-(1/n^2))*n*x^2*(c*x^n)^(2/n))/ℯ^(a*sqrt(-(1/n^2))*n) - ((1/2)*ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n*x^2*log(x))/(c*x^n)^(2/n)]
    @test_int [x^0*sin(a + sqrt(-(0+1)^2/(1^2*n^2))*log(c*x^n))^1, x, 3, ((1/4)*sqrt(-(1/n^2))*n*x*(c*x^n)^(1/n))/ℯ^(a*sqrt(-(1/n^2))*n) - ((1/2)*ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n*x*log(x))/(c*x^n)^n^(-1)]
    @test_int [sin(a + sqrt(-(-1+1)^2/(1^2*n^2))*log(c*x^n))^1/x^1, x, 2, log(x)*sin(a)]
    @test_int [sin(a + sqrt(-(-2+1)^2/(1^2*n^2))*log(c*x^n))^1/x^2, x, 3, (ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n)/((c*x^n)^n^(-1)*(4*x)) + (sqrt(-(1/n^2))*n*(c*x^n)^(1/n)*log(x))/(ℯ^(a*sqrt(-(1/n^2))*n)*(2*x))]
    @test_int [sin(a + sqrt(-(-3+1)^2/(1^2*n^2))*log(c*x^n))^1/x^3, x, 3, (ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n)/((c*x^n)^(2/n)*(8*x^2)) + (sqrt(-(1/n^2))*n*(c*x^n)^(2/n)*log(x))/(ℯ^(a*sqrt(-(1/n^2))*n)*(2*x^2))]


    @test_int [x^m*sin(a + sqrt(-(m+1)^2/(2^2*n^2))*log(c*x^n))^2, x, 3, x^(1 + m)/(2*(1 + m)) - (x^(1 + m)*(c*x^n)^((1 + m)/n))/(ℯ^((2*a*sqrt(-((1 + m)^2/n^2))*n)/(1 + m))*(8*(1 + m))) - ((1/4)*ℯ^((2*a*sqrt(-((1 + m)^2/n^2))*n)/(1 + m))*x^(1 + m)*log(x))/(c*x^n)^((1 + m)/n)]

    @test_int [x^2*sin(a + sqrt(-(2+1)^2/(2^2*n^2))*log(c*x^n))^2, x, 3, x^3/6 - ((1/24)*x^3*(c*x^n)^(3/n))/ℯ^(2*a*sqrt(-(1/n^2))*n) - ((1/4)*ℯ^(2*a*sqrt(-(1/n^2))*n)*x^3*log(x))/(c*x^n)^(3/n)]
    @test_int [x^1*sin(a + sqrt(-(1+1)^2/(2^2*n^2))*log(c*x^n))^2, x, 3, x^2/4 - ((1/16)*x^2*(c*x^n)^(2/n))/ℯ^(2*a*sqrt(-(1/n^2))*n) - ((1/4)*ℯ^(2*a*sqrt(-(1/n^2))*n)*x^2*log(x))/(c*x^n)^(2/n)]
    @test_int [x^0*sin(a + sqrt(-(0+1)^2/(2^2*n^2))*log(c*x^n))^2, x, 3, x/2 - ((1/8)*x*(c*x^n)^(1/n))/ℯ^(2*a*sqrt(-(1/n^2))*n) - ((1/4)*ℯ^(2*a*sqrt(-(1/n^2))*n)*x*log(x))/(c*x^n)^n^(-1)]
    @test_int [sin(a + sqrt(-(-1+1)^2/(2^2*n^2))*log(c*x^n))^2/x^1, x, 2, log(x)*sin(a)^2]
    @test_int [sin(a + sqrt(-(-2+1)^2/(2^2*n^2))*log(c*x^n))^2/x^2, x, 3, -(1/(2*x)) + ℯ^(2*a*sqrt(-(1/n^2))*n)/((c*x^n)^n^(-1)*(8*x)) - ((c*x^n)^(1/n)*log(x))/(ℯ^(2*a*sqrt(-(1/n^2))*n)*(4*x))]
    @test_int [sin(a + sqrt(-(-3+1)^2/(2^2*n^2))*log(c*x^n))^2/x^3, x, 3, -(1/(4*x^2)) + ℯ^(2*a*sqrt(-(1/n^2))*n)/((c*x^n)^(2/n)*(16*x^2)) - ((c*x^n)^(2/n)*log(x))/(ℯ^(2*a*sqrt(-(1/n^2))*n)*(4*x^2))]


    @test_int [x^m*sin(a + sqrt(-(m+1)^2/(2^2*n^2))*log(c*x^n))^3, x, 2, -((4*sqrt(-((1 + m)^2/n^2))*n*x^(1 + m)*cos(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n)))/(5*(1 + m)^2)) + (8*x^(1 + m)*sin(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n)))/(5*(1 + m)) + (6*sqrt(-((1 + m)^2/n^2))*n*x^(1 + m)*cos(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n))*sin(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n))^2)/(5*(1 + m)^2) - (4*x^(1 + m)*sin(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n))^3)/(5*(1 + m))]

    @test_int [x^2*sin(a + sqrt(-(2+1)^2/(3^2*n^2))*log(c*x^n))^3, x, 3, ((-(3/16))*ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n*x^3)/(c*x^n)^n^(-1) + ((3/32)*sqrt(-(1/n^2))*n*x^3*(c*x^n)^(1/n))/ℯ^(a*sqrt(-(1/n^2))*n) - ((1/48)*sqrt(-(1/n^2))*n*x^3*(c*x^n)^(3/n))/ℯ^(3*a*sqrt(-(1/n^2))*n) + ((1/8)*ℯ^(3*a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n*x^3*log(x))/(c*x^n)^(3/n)]
    @test_int [x^1*sin(a + sqrt(-(1+1)^2/(3^2*n^2))*log(c*x^n))^3, x, 3, ((-(9/32))*ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n*x^2)/(c*x^n)^(2/(3*n)) + ((9/64)*sqrt(-(1/n^2))*n*x^2*(c*x^n)^(2/(3*n)))/ℯ^(a*sqrt(-(1/n^2))*n) - ((1/32)*sqrt(-(1/n^2))*n*x^2*(c*x^n)^(2/n))/ℯ^(3*a*sqrt(-(1/n^2))*n) + ((1/8)*ℯ^(3*a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n*x^2*log(x))/(c*x^n)^(2/n)]
    @test_int [x^0*sin(a + sqrt(-(0+1)^2/(3^2*n^2))*log(c*x^n))^3, x, 3, ((-(9/16))*ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n*x)/(c*x^n)^(1/(3*n)) + ((9/32)*sqrt(-(1/n^2))*n*x*(c*x^n)^(1/(3*n)))/ℯ^(a*sqrt(-(1/n^2))*n) - ((1/16)*sqrt(-(1/n^2))*n*x*(c*x^n)^(1/n))/ℯ^(3*a*sqrt(-(1/n^2))*n) + ((1/8)*ℯ^(3*a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n*x*log(x))/(c*x^n)^n^(-1)]
    @test_int [sin(a + sqrt(-(-1+1)^2/(3^2*n^2))*log(c*x^n))^3/x^1, x, 2, log(x)*sin(a)^3]
    @test_int [sin(a + sqrt(-(-2+1)^2/(3^2*n^2))*log(c*x^n))^3/x^2, x, 3, -((ℯ^(3*a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n)/((c*x^n)^n^(-1)*(16*x))) + (9*ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n)/((c*x^n)^(1/(3*n))*(32*x)) - (9*sqrt(-(1/n^2))*n*(c*x^n)^(1/(3*n)))/(ℯ^(a*sqrt(-(1/n^2))*n)*(16*x)) - (sqrt(-(1/n^2))*n*(c*x^n)^(1/n)*log(x))/(ℯ^(3*a*sqrt(-(1/n^2))*n)*(8*x))]
    @test_int [sin(a + sqrt(-(-3+1)^2/(3^2*n^2))*log(c*x^n))^3/x^3, x, 3, -((ℯ^(3*a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n)/((c*x^n)^(2/n)*(32*x^2))) + (9*ℯ^(a*sqrt(-(1/n^2))*n)*sqrt(-(1/n^2))*n)/((c*x^n)^(2/(3*n))*(64*x^2)) - (9*sqrt(-(1/n^2))*n*(c*x^n)^(2/(3*n)))/(ℯ^(a*sqrt(-(1/n^2))*n)*(32*x^2)) - (sqrt(-(1/n^2))*n*(c*x^n)^(2/n)*log(x))/(ℯ^(3*a*sqrt(-(1/n^2))*n)*(8*x^2))]


    @test_int [x^m*sin(a + sqrt(-(m+1)^2/(1^2*2^2))*log(c*x^2))^1, x, 3, -((ℯ^((a*(1 + m))/sqrt(-(1 + m)^2))*x^(1 + m)*(c*x^2)^((1 + m)/2))/(4*sqrt(-(1 + m)^2))) + (ℯ^((a*sqrt(-(1 + m)^2))/(1 + m))*(1 + m)*x^(1 + m)*(c*x^2)^((1/2)*(-1 - m))*log(x))/(2*sqrt(-(1 + m)^2))]

    @test_int [x^0*sin(a + sqrt(-(0+1)^2/(1^2*2^2))*log(c*x^2))^1, x, 3, (im*c*x^3)/(ℯ^(im*a)*(4*sqrt(c*x^2))) - (im*ℯ^(im*a)*x*log(x))/(2*sqrt(c*x^2))]


    @test_int [x^m*sin(a + sqrt(-(m+1)^2/(2^2*2^2))*log(c*x^2))^2, x, 3, x^(1 + m)/(2*(1 + m)) - (ℯ^((2*a*(1 + m))/sqrt(-(1 + m)^2))*x^(1 + m)*(c*x^2)^((1 + m)/2))/(8*(1 + m)) - ((1/4)*x^(1 + m)*(c*x^2)^((1/2)*(-1 - m))*log(x))/ℯ^((2*a*(1 + m))/sqrt(-(1 + m)^2))]

    @test_int [x^0*sin(a + sqrt(-(0+1)^2/(2^2*2^2))*log(c*x^2))^2, x, 3, x/2 - (c*x^3)/(ℯ^(2*im*a)*(8*sqrt(c*x^2))) - (ℯ^(2*im*a)*x*log(x))/(4*sqrt(c*x^2))]


    @test_int [x^m*sin(a + sqrt(-(m+1)^2/(3^2*2^2))*log(c*x^2))^3, x, 3, (9*ℯ^((a*sqrt(-(1 + m)^2))/(1 + m))*x^(1 + m)*(c*x^2)^((1/6)*(-1 - m)))/(16*sqrt(-(1 + m)^2)) - (9*ℯ^((a*(1 + m))/sqrt(-(1 + m)^2))*x^(1 + m)*(c*x^2)^((1 + m)/6))/(32*sqrt(-(1 + m)^2)) + (ℯ^((3*a*(1 + m))/sqrt(-(1 + m)^2))*x^(1 + m)*(c*x^2)^((1 + m)/2))/(16*sqrt(-(1 + m)^2)) - ((1 + m)*x^(1 + m)*(c*x^2)^((1/2)*(-1 - m))*log(x))/(ℯ^((3*a*(1 + m))/sqrt(-(1 + m)^2))*(8*sqrt(-(1 + m)^2)))]

    @test_int [x^0*sin(a + sqrt(-(0+1)^2/(3^2*2^2))*log(c*x^2))^3, x, 3, -((im*c*x^3)/(ℯ^(3*im*a)*(16*sqrt(c*x^2)))) - (9*im*ℯ^(im*a)*x)/(16*(c*x^2)^(1/6)) + ((9/32)*im*x*(c*x^2)^(1/6))/ℯ^(im*a) + (im*ℯ^(3*im*a)*x*log(x))/(8*sqrt(c*x^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sin(d*(a+b*log(c*x^n)))^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^1*sqrt(sin(a + b*log(c*x^n))), x, 3, (2*x^2*HypergeometricFunctions._₂F₁(-(1/2), (1/4)*(-1 - (4*im)/(b*n)), (1/4)*(3 - (4*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(sin(a + b*log(c*x^n))))/((4 - im*b*n)*sqrt(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b)))]
    @test_int [x^0*sqrt(sin(a + b*log(c*x^n))), x, 3, (2*x*HypergeometricFunctions._₂F₁(-(1/2), -((2*im + b*n)/(4*b*n)), (1/4)*(3 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(sin(a + b*log(c*x^n))))/((2 - im*b*n)*sqrt(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b)))]
    @test_int [sqrt(sin(a + b*log(c*x^n)))/x^1, x, 2, (2*Elliptic.E((1/2)*(a - pi/2 + b*log(c*x^n)), 2))/(b*n)]
    @test_int [sqrt(sin(a + b*log(c*x^n)))/x^2, x, 3, -((2*HypergeometricFunctions._₂F₁(-(1/2), (1/4)*(-1 + (2*im)/(b*n)), (1/4)*(3 + (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(sin(a + b*log(c*x^n))))/((2 + im*b*n)*x*sqrt(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))))]
    @test_int [sqrt(sin(a + b*log(c*x^n)))/x^3, x, 3, -((2*HypergeometricFunctions._₂F₁(-(1/2), (1/4)*(-1 + (4*im)/(b*n)), (1/4)*(3 + (4*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(sin(a + b*log(c*x^n))))/((4 + im*b*n)*x^2*sqrt(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))))]


    @test_int [x^1*sin(a + b*log(c*x^n))^(3/2), x, 3, (2*x^2*HypergeometricFunctions._₂F₁(-(3/2), (1/4)*(-3 - (4*im)/(b*n)), (1/4)*(1 - (4*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sin(a + b*log(c*x^n))^(3/2))/((4 - 3*im*b*n)*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2))]
    @test_int [x^0*sin(a + b*log(c*x^n))^(3/2), x, 3, (2*x*HypergeometricFunctions._₂F₁(-(3/2), (1/4)*(-3 - (2*im)/(b*n)), (1/4)*(1 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sin(a + b*log(c*x^n))^(3/2))/((2 - 3*im*b*n)*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2))]
    @test_int [sin(a + b*log(c*x^n))^(3/2)/x^1, x, 3, (2*Elliptic.F((1/2)*(a - pi/2 + b*log(c*x^n)), 2))/(3*b*n) - (2*cos(a + b*log(c*x^n))*sqrt(sin(a + b*log(c*x^n))))/(3*b*n)]
    @test_int [sin(a + b*log(c*x^n))^(3/2)/x^2, x, 3, -((2*HypergeometricFunctions._₂F₁(-(3/2), (1/4)*(-3 + (2*im)/(b*n)), (1/4)*(1 + (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sin(a + b*log(c*x^n))^(3/2))/((2 + 3*im*b*n)*x*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)))]
    @test_int [sin(a + b*log(c*x^n))^(3/2)/x^3, x, 3, -((2*HypergeometricFunctions._₂F₁(-(3/2), (1/4)*(-3 + (4*im)/(b*n)), (1/4)*(1 + (4*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sin(a + b*log(c*x^n))^(3/2))/((4 + 3*im*b*n)*x^2*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^0/sqrt(sin(a + b*log(c*x^n))), x, 3, (2*x*sqrt(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 - (2*im)/(b*n)), (1/4)*(5 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((2 + im*b*n)*sqrt(sin(a + b*log(c*x^n))))]
    @test_int [1/(x^1*sqrt(sin(a + b*log(c*x^n)))), x, 2, (2*Elliptic.F((1/2)*(a - pi/2 + b*log(c*x^n)), 2))/(b*n)]


    @test_int [x^0/sin(a + b*log(c*x^n))^(3/2), x, 3, (2*x*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*HypergeometricFunctions._₂F₁(3/2, (1/4)*(3 - (2*im)/(b*n)), (1/4)*(7 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((2 + 3*im*b*n)*sin(a + b*log(c*x^n))^(3/2))]
    @test_int [1/(x^1*sin(a + b*log(c*x^n))^(3/2)), x, 3, -((2*Elliptic.E((1/2)*(a - pi/2 + b*log(c*x^n)), 2))/(b*n)) - (2*cos(a + b*log(c*x^n)))/(b*n*sqrt(sin(a + b*log(c*x^n))))]


    @test_int [x^0/sin(a + b*log(c*x^n))^(5/2), x, 3, (2*x*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2)*HypergeometricFunctions._₂F₁(5/2, (1/4)*(5 - (2*im)/(b*n)), (1/4)*(9 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((2 + 5*im*b*n)*sin(a + b*log(c*x^n))^(5/2))]
    @test_int [1/(x^1*sin(a + b*log(c*x^n))^(5/2)), x, 3, (2*Elliptic.F((1/2)*(a - pi/2 + b*log(c*x^n)), 2))/(3*b*n) - (2*cos(a + b*log(c*x^n)))/(3*b*n*sin(a + b*log(c*x^n))^(3/2))]


    @test_int [1/sin(a - 2*im*log(c*x))^(3/2), x, 3, (1 - c^4*ℯ^(2*im*a)*x^4)/(ℯ^(2*im*a)*(2*c^4*x^3*sin(a - 2*im*log(c*x))^(3/2)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sin(d*(a+b*log(c*x^n)))^p*when*m*symbolic=#


    @test_int [(e*x)^m*sin(d*(a + b*log(c*x^n)))^4, x, 3, (24*b^4*d^4*n^4*(e*x)^(1 + m))/(e*(1 + m)*((1 + m)^2 + 4*b^2*d^2*n^2)*((1 + m)^2 + 16*b^2*d^2*n^2)) - (24*b^3*d^3*n^3*(e*x)^(1 + m)*cos(d*(a + b*log(c*x^n)))*sin(d*(a + b*log(c*x^n))))/(e*((1 + m)^2 + 4*b^2*d^2*n^2)*((1 + m)^2 + 16*b^2*d^2*n^2)) + (12*b^2*d^2*(1 + m)*n^2*(e*x)^(1 + m)*sin(d*(a + b*log(c*x^n)))^2)/(e*((1 + m)^2 + 4*b^2*d^2*n^2)*((1 + m)^2 + 16*b^2*d^2*n^2)) - (4*b*d*n*(e*x)^(1 + m)*cos(d*(a + b*log(c*x^n)))*sin(d*(a + b*log(c*x^n)))^3)/(e*((1 + m)^2 + 16*b^2*d^2*n^2)) + ((1 + m)*(e*x)^(1 + m)*sin(d*(a + b*log(c*x^n)))^4)/(e*((1 + m)^2 + 16*b^2*d^2*n^2))]
    @test_int [(e*x)^m*sin(d*(a + b*log(c*x^n)))^3, x, 2, -((6*b^3*d^3*n^3*(e*x)^(1 + m)*cos(d*(a + b*log(c*x^n))))/(e*((1 + m)^2 + b^2*d^2*n^2)*((1 + m)^2 + 9*b^2*d^2*n^2))) + (6*b^2*d^2*(1 + m)*n^2*(e*x)^(1 + m)*sin(d*(a + b*log(c*x^n))))/(e*((1 + m)^2 + b^2*d^2*n^2)*((1 + m)^2 + 9*b^2*d^2*n^2)) - (3*b*d*n*(e*x)^(1 + m)*cos(d*(a + b*log(c*x^n)))*sin(d*(a + b*log(c*x^n)))^2)/(e*((1 + m)^2 + 9*b^2*d^2*n^2)) + ((1 + m)*(e*x)^(1 + m)*sin(d*(a + b*log(c*x^n)))^3)/(e*((1 + m)^2 + 9*b^2*d^2*n^2))]
    @test_int [(e*x)^m*sin(d*(a + b*log(c*x^n)))^2, x, 2, (2*b^2*d^2*n^2*(e*x)^(1 + m))/(e*(1 + m)*((1 + m)^2 + 4*b^2*d^2*n^2)) - (2*b*d*n*(e*x)^(1 + m)*cos(d*(a + b*log(c*x^n)))*sin(d*(a + b*log(c*x^n))))/(e*((1 + m)^2 + 4*b^2*d^2*n^2)) + ((1 + m)*(e*x)^(1 + m)*sin(d*(a + b*log(c*x^n)))^2)/(e*((1 + m)^2 + 4*b^2*d^2*n^2))]
    @test_int [(e*x)^m*sin(d*(a + b*log(c*x^n)))^1, x, 1, -((b*d*n*(e*x)^(1 + m)*cos(d*(a + b*log(c*x^n))))/(e*((1 + m)^2 + b^2*d^2*n^2))) + ((1 + m)*(e*x)^(1 + m)*sin(d*(a + b*log(c*x^n))))/(e*((1 + m)^2 + b^2*d^2*n^2))]


    @test_int [(e*x)^m*sin(d*(a + b*log(c*x^n)))^(3/2), x, 3, (2*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(-(3/2), -((2*im + 2*im*m + 3*b*d*n)/(4*b*d*n)), -((2*im + 2*im*m - b*d*n)/(4*b*d*n)), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))*sin(d*(a + b*log(c*x^n)))^(3/2))/(e*(2 + 2*m - 3*im*b*d*n)*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^(3/2))]
    @test_int [(e*x)^m*sin(d*(a + b*log(c*x^n)))^(1/2), x, 3, (2*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(-(1/2), -((2*im + 2*im*m + b*d*n)/(4*b*d*n)), -((2*im + 2*im*m - 3*b*d*n)/(4*b*d*n)), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))*sqrt(sin(d*(a + b*log(c*x^n)))))/(e*(2 + 2*m - im*b*d*n)*sqrt(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))]
    @test_int [(e*x)^m/sin(d*(a + b*log(c*x^n)))^(1/2), x, 3, (2*(e*x)^(1 + m)*sqrt(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))*HypergeometricFunctions._₂F₁(1/2, -((2*im + 2*im*m - b*d*n)/(4*b*d*n)), -((2*im + 2*im*m - 5*b*d*n)/(4*b*d*n)), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(e*(2 + 2*m + im*b*d*n)*sqrt(sin(d*(a + b*log(c*x^n)))))]
    @test_int [(e*x)^m/sin(d*(a + b*log(c*x^n)))^(3/2), x, 3, (2*(e*x)^(1 + m)*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^(3/2)*HypergeometricFunctions._₂F₁(3/2, -((2*im + 2*im*m - 3*b*d*n)/(4*b*d*n)), -((2*im + 2*im*m - 7*b*d*n)/(4*b*d*n)), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(e*(2 + 2*m + 3*im*b*d*n)*sin(d*(a + b*log(c*x^n)))^(3/2))]
    @test_int [(e*x)^m/sin(d*(a + b*log(c*x^n)))^(5/2), x, 3, (2*(e*x)^(1 + m)*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^(5/2)*HypergeometricFunctions._₂F₁(5/2, -((2*im + 2*im*m - 5*b*d*n)/(4*b*d*n)), -((2*im + 2*im*m - 9*b*d*n)/(4*b*d*n)), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(e*(2 + 2*m + 5*im*b*d*n)*sin(d*(a + b*log(c*x^n)))^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sin(d*(a+b*log(c*x^n)))^p*when*p*symbolic=#


    @test_int [(e*x)^m*sin(d*(a + b*log(c*x^n)))^p, x, 3, ((e*x)^(1 + m)*HypergeometricFunctions._₂F₁(-p, -((im + im*m + b*d*n*p)/(2*b*d*n)), (1/2)*(2 - (im*(1 + m))/(b*d*n) - p), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))*sin(d*(a + b*log(c*x^n)))^p)/((1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*(e*(1 + m - im*b*d*n*p)))]


    @test_int [x^2*sin(a + b*log(c*x^n))^p, x, 3, (x^3*HypergeometricFunctions._₂F₁(-p, -((3*im + b*n*p)/(2*b*n)), (1/2)*(2 - (3*im)/(b*n) - p), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sin(a + b*log(c*x^n))^p)/((1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*(3 - im*b*n*p))]
    @test_int [x^1*sin(a + b*log(c*x^n))^p, x, 3, (x^2*HypergeometricFunctions._₂F₁((1/2)*(-((2*im)/(b*n)) - p), -p, (1/2)*(2 - (2*im)/(b*n) - p), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sin(a + b*log(c*x^n))^p)/((1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*(2 - im*b*n*p))]
    @test_int [x^0*sin(a + b*log(c*x^n))^p, x, 3, (x*HypergeometricFunctions._₂F₁(-p, -((im + b*n*p)/(2*b*n)), (1/2)*(2 - im/(b*n) - p), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sin(a + b*log(c*x^n))^p)/((1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*(1 - im*b*n*p))]
    @test_int [sin(a + b*log(c*x^n))^p/x^1, x, 2, (cos(a + b*log(c*x^n))*HypergeometricFunctions._₂F₁(1/2, (1 + p)/2, (3 + p)/2, sin(a + b*log(c*x^n))^2)*sin(a + b*log(c*x^n))^(1 + p))/(b*n*(1 + p)*sqrt(cos(a + b*log(c*x^n))^2))]
    @test_int [sin(a + b*log(c*x^n))^p/x^2, x, 3, -((HypergeometricFunctions._₂F₁((1/2)*(im/(b*n) - p), -p, (1/2)*(2 + im/(b*n) - p), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sin(a + b*log(c*x^n))^p)/((1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*((1 + im*b*n*p)*x)))]
    @test_int [sin(a + b*log(c*x^n))^p/x^3, x, 3, -((HypergeometricFunctions._₂F₁((1/2)*((2*im)/(b*n) - p), -p, (1/2)*(2 + (2*im)/(b*n) - p), ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sin(a + b*log(c*x^n))^p)/((1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*((2 + im*b*n*p)*x^2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(d*(a+b*log(c*x^n)))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(d*(a+b*log(c*x^n)))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^2*cos(a + b*log(c*x^n)), x, 1, (3*x^3*cos(a + b*log(c*x^n)))/(9 + b^2*n^2) + (b*n*x^3*sin(a + b*log(c*x^n)))/(9 + b^2*n^2)]
    @test_int [x^1*cos(a + b*log(c*x^n)), x, 1, (2*x^2*cos(a + b*log(c*x^n)))/(4 + b^2*n^2) + (b*n*x^2*sin(a + b*log(c*x^n)))/(4 + b^2*n^2)]
    @test_int [x^0*cos(a + b*log(c*x^n)), x, 1, (x*cos(a + b*log(c*x^n)))/(1 + b^2*n^2) + (b*n*x*sin(a + b*log(c*x^n)))/(1 + b^2*n^2)]
    @test_int [cos(a + b*log(c*x^n))/x^1, x, 2, sin(a + b*log(c*x^n))/(b*n)]
    @test_int [cos(a + b*log(c*x^n))/x^2, x, 1, -(cos(a + b*log(c*x^n))/((1 + b^2*n^2)*x)) + (b*n*sin(a + b*log(c*x^n)))/((1 + b^2*n^2)*x)]


    @test_int [x^2*cos(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*x^3)/(3*(9 + 4*b^2*n^2)) + (3*x^3*cos(a + b*log(c*x^n))^2)/(9 + 4*b^2*n^2) + (2*b*n*x^3*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(9 + 4*b^2*n^2)]
    @test_int [x^1*cos(a + b*log(c*x^n))^2, x, 2, (b^2*n^2*x^2)/(4*(1 + b^2*n^2)) + (x^2*cos(a + b*log(c*x^n))^2)/(2*(1 + b^2*n^2)) + (b*n*x^2*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(2*(1 + b^2*n^2))]
    @test_int [x^0*cos(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*x)/(1 + 4*b^2*n^2) + (x*cos(a + b*log(c*x^n))^2)/(1 + 4*b^2*n^2) + (2*b*n*x*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(1 + 4*b^2*n^2)]
    @test_int [cos(a + b*log(c*x^n))^2/x^1, x, 3, log(x)/2 + (cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(2*b*n)]
    @test_int [cos(a + b*log(c*x^n))^2/x^2, x, 2, -((2*b^2*n^2)/((1 + 4*b^2*n^2)*x)) - cos(a + b*log(c*x^n))^2/((1 + 4*b^2*n^2)*x) + (2*b*n*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/((1 + 4*b^2*n^2)*x)]


    @test_int [x^2*cos(a + b*log(c*x^n))^3, x, 2, (2*b^2*n^2*x^3*cos(a + b*log(c*x^n)))/(9 + 10*b^2*n^2 + b^4*n^4) + (x^3*cos(a + b*log(c*x^n))^3)/(3*(1 + b^2*n^2)) + (2*b^3*n^3*x^3*sin(a + b*log(c*x^n)))/(3*(9 + 10*b^2*n^2 + b^4*n^4)) + (b*n*x^3*cos(a + b*log(c*x^n))^2*sin(a + b*log(c*x^n)))/(3*(1 + b^2*n^2))]
    @test_int [x^1*cos(a + b*log(c*x^n))^3, x, 2, (12*b^2*n^2*x^2*cos(a + b*log(c*x^n)))/(16 + 40*b^2*n^2 + 9*b^4*n^4) + (2*x^2*cos(a + b*log(c*x^n))^3)/(4 + 9*b^2*n^2) + (6*b^3*n^3*x^2*sin(a + b*log(c*x^n)))/(16 + 40*b^2*n^2 + 9*b^4*n^4) + (3*b*n*x^2*cos(a + b*log(c*x^n))^2*sin(a + b*log(c*x^n)))/(4 + 9*b^2*n^2)]
    @test_int [x^0*cos(a + b*log(c*x^n))^3, x, 2, (6*b^2*n^2*x*cos(a + b*log(c*x^n)))/(1 + 10*b^2*n^2 + 9*b^4*n^4) + (x*cos(a + b*log(c*x^n))^3)/(1 + 9*b^2*n^2) + (6*b^3*n^3*x*sin(a + b*log(c*x^n)))/(1 + 10*b^2*n^2 + 9*b^4*n^4) + (3*b*n*x*cos(a + b*log(c*x^n))^2*sin(a + b*log(c*x^n)))/(1 + 9*b^2*n^2)]
    @test_int [cos(a + b*log(c*x^n))^3/x^1, x, 3, sin(a + b*log(c*x^n))/(b*n) - sin(a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [cos(a + b*log(c*x^n))^3/x^2, x, 2, -((6*b^2*n^2*cos(a + b*log(c*x^n)))/((1 + 10*b^2*n^2 + 9*b^4*n^4)*x)) - cos(a + b*log(c*x^n))^3/((1 + 9*b^2*n^2)*x) + (6*b^3*n^3*sin(a + b*log(c*x^n)))/((1 + 10*b^2*n^2 + 9*b^4*n^4)*x) + (3*b*n*cos(a + b*log(c*x^n))^2*sin(a + b*log(c*x^n)))/((1 + 9*b^2*n^2)*x)]


    @test_int [x^0*cos(a + b*log(c*x^n))^4, x, 3, (24*b^4*n^4*x)/(1 + 20*b^2*n^2 + 64*b^4*n^4) + (12*b^2*n^2*x*cos(a + b*log(c*x^n))^2)/(1 + 20*b^2*n^2 + 64*b^4*n^4) + (x*cos(a + b*log(c*x^n))^4)/(1 + 16*b^2*n^2) + (24*b^3*n^3*x*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(1 + 20*b^2*n^2 + 64*b^4*n^4) + (4*b*n*x*cos(a + b*log(c*x^n))^3*sin(a + b*log(c*x^n)))/(1 + 16*b^2*n^2)]
    @test_int [cos(a + b*log(c*x^n))^4/x^1, x, 4, 3*log(x)/8 + (3*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(8*b*n) + (cos(a + b*log(c*x^n))^3*sin(a + b*log(c*x^n)))/(4*b*n)]


    @test_int [cos(log(6 + 3*x)), x, 2, (1/2)*(2 + x)*cos(log(3*(2 + x))) + (1/2)*(2 + x)*sin(log(3*(2 + x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(d*(a+b*log(c*x^n)))^p*when*b^2*n^2*p^2+(m+1)^2=0=#


    @test_int [x^m*cos(a + sqrt(-(m+1)^2/(1^2*n^2))*log(c*x^n))^1, x, 3, (ℯ^((a*(1 + m))/(sqrt(-((1 + m)^2/n^2))*n))*x^(1 + m)*(c*x^n)^((1 + m)/n))/(4*(1 + m)) + ((1/2)*ℯ^((a*sqrt(-((1 + m)^2/n^2))*n)/(1 + m))*x^(1 + m)*log(x))/(c*x^n)^((1 + m)/n)]

    @test_int [x^0*cos(a + sqrt(-(0+1)^2/(1^2*n^2))*log(c*x^n))^1, x, 3, ((1/4)*x*(c*x^n)^(1/n))/ℯ^(a*sqrt(-(1/n^2))*n) + ((1/2)*ℯ^(a*sqrt(-(1/n^2))*n)*x*log(x))/(c*x^n)^n^(-1)]


    @test_int [x^m*cos(a + sqrt(-(m+1)^2/(2^2*n^2))*log(c*x^n))^2, x, 3, x^(1 + m)/(2*(1 + m)) + (x^(1 + m)*(c*x^n)^((1 + m)/n))/(ℯ^((2*a*sqrt(-((1 + m)^2/n^2))*n)/(1 + m))*(8*(1 + m))) + ((1/4)*ℯ^((2*a*sqrt(-((1 + m)^2/n^2))*n)/(1 + m))*x^(1 + m)*log(x))/(c*x^n)^((1 + m)/n)]

    @test_int [x^0*cos(a + sqrt(-(0+1)^2/(2^2*n^2))*log(c*x^n))^2, x, 3, x/2 + ((1/8)*x*(c*x^n)^(1/n))/ℯ^(2*a*sqrt(-(1/n^2))*n) + ((1/4)*ℯ^(2*a*sqrt(-(1/n^2))*n)*x*log(x))/(c*x^n)^n^(-1)]


    @test_int [x^m*cos(a + sqrt(-(m+1)^2/(2^2*n^2))*log(c*x^n))^3, x, 2, (8*x^(1 + m)*cos(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n)))/(5*(1 + m)) - (4*x^(1 + m)*cos(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n))^3)/(5*(1 + m)) + (4*sqrt(-((1 + m)^2/n^2))*n*x^(1 + m)*sin(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n)))/(5*(1 + m)^2) - (6*sqrt(-((1 + m)^2/n^2))*n*x^(1 + m)*cos(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n))^2*sin(a + (1/2)*sqrt(-((1 + m)^2/n^2))*log(c*x^n)))/(5*(1 + m)^2)]

    @test_int [x^0*cos(a + sqrt(-(0+1)^2/(3^2*n^2))*log(c*x^n))^3, x, 3, ((9/16)*ℯ^(a*sqrt(-(1/n^2))*n)*x)/(c*x^n)^(1/(3*n)) + ((9/32)*x*(c*x^n)^(1/(3*n)))/ℯ^(a*sqrt(-(1/n^2))*n) + ((1/16)*x*(c*x^n)^(1/n))/ℯ^(3*a*sqrt(-(1/n^2))*n) + ((1/8)*ℯ^(3*a*sqrt(-(1/n^2))*n)*x*log(x))/(c*x^n)^n^(-1)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(d*(a+b*log(c*x^n)))^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^0*sqrt(cos(a + b*log(c*x^n))), x, 3, (2*x*sqrt(cos(a + b*log(c*x^n)))*HypergeometricFunctions._₂F₁(-(1/2), -((2*im + b*n)/(4*b*n)), (1/4)*(3 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 - im*b*n)*sqrt(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b)))]
    @test_int [sqrt(cos(a + b*log(c*x^n)))/x^1, x, 2, (2*Elliptic.E((a + b*log(c*x^n))/2, 2))/(b*n)]


    @test_int [x^0*cos(a + b*log(c*x^n))^(3/2), x, 3, (2*x*cos(a + b*log(c*x^n))^(3/2)*HypergeometricFunctions._₂F₁(-(3/2), (1/4)*(-3 - (2*im)/(b*n)), (1/4)*(1 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 - 3*im*b*n)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2))]
    @test_int [cos(a + b*log(c*x^n))^(3/2)/x^1, x, 3, (2*Elliptic.F((1/2)*(a + b*log(c*x^n)), 2))/(3*b*n) + (2*sqrt(cos(a + b*log(c*x^n)))*sin(a + b*log(c*x^n)))/(3*b*n)]


    @test_int [x^0*cos(a + b*log(c*x^n))^(5/2), x, 3, (2*x*cos(a + b*log(c*x^n))^(5/2)*HypergeometricFunctions._₂F₁(-(5/2), (1/4)*(-5 - (2*im)/(b*n)), -((2*im + b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 - 5*im*b*n)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2))]
    @test_int [cos(a + b*log(c*x^n))^(5/2)/x^1, x, 3, (6*Elliptic.E((1/2)*(a + b*log(c*x^n)), 2))/(5*b*n) + (2*cos(a + b*log(c*x^n))^(3/2)*sin(a + b*log(c*x^n)))/(5*b*n)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^0/sqrt(cos(a + b*log(c*x^n))), x, 3, (2*x*sqrt(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 - (2*im)/(b*n)), (1/4)*(5 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + im*b*n)*sqrt(cos(a + b*log(c*x^n))))]
    @test_int [1/(x^1*sqrt(cos(a + b*log(c*x^n)))), x, 2, (2*Elliptic.F((a + b*log(c*x^n))/2, 2))/(b*n)]


    @test_int [x^0/cos(a + b*log(c*x^n))^(3/2), x, 3, (2*x*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*HypergeometricFunctions._₂F₁(3/2, (1/4)*(3 - (2*im)/(b*n)), (1/4)*(7 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + 3*im*b*n)*cos(a + b*log(c*x^n))^(3/2))]
    @test_int [1/(x*cos(a + b*log(c*x^n))^(3/2)), x, 3, -((2*Elliptic.E((1/2)*(a + b*log(c*x^n)), 2))/(b*n)) + (2*sin(a + b*log(c*x^n)))/(b*n*sqrt(cos(a + b*log(c*x^n))))]


    @test_int [x^0/cos(a + b*log(c*x^n))^(5/2), x, 3, (2*x*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2)*HypergeometricFunctions._₂F₁(5/2, (1/4)*(5 - (2*im)/(b*n)), (1/4)*(9 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + 5*im*b*n)*cos(a + b*log(c*x^n))^(5/2))]
    @test_int [1/(x*cos(a + b*log(c*x^n))^(5/2)), x, 3, (2*Elliptic.F((1/2)*(a + b*log(c*x^n)), 2))/(3*b*n) + (2*sin(a + b*log(c*x^n)))/(3*b*n*cos(a + b*log(c*x^n))^(3/2))]


    @test_int [1/cos(a - 2*im*log(c*x))^(3/2), x, 3, -((1 + c^4*ℯ^(2*im*a)*x^4)/(ℯ^(2*im*a)*(2*c^4*x^3*cos(a - 2*im*log(c*x))^(3/2))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(d*(a+b*log(c*x^n)))^p*when*m*symbolic=#


    @test_int [x^m*cos(a + b*log(c*x^n))^4, x, 3, (24*b^4*n^4*x^(1 + m))/((1 + m)*((1 + m)^2 + 4*b^2*n^2)*((1 + m)^2 + 16*b^2*n^2)) + (12*b^2*(1 + m)*n^2*x^(1 + m)*cos(a + b*log(c*x^n))^2)/(((1 + m)^2 + 4*b^2*n^2)*((1 + m)^2 + 16*b^2*n^2)) + ((1 + m)*x^(1 + m)*cos(a + b*log(c*x^n))^4)/((1 + m)^2 + 16*b^2*n^2) + (24*b^3*n^3*x^(1 + m)*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/(((1 + m)^2 + 4*b^2*n^2)*((1 + m)^2 + 16*b^2*n^2)) + (4*b*n*x^(1 + m)*cos(a + b*log(c*x^n))^3*sin(a + b*log(c*x^n)))/((1 + m)^2 + 16*b^2*n^2)]
    @test_int [x^m*cos(a + b*log(c*x^n))^3, x, 2, (6*b^2*(1 + m)*n^2*x^(1 + m)*cos(a + b*log(c*x^n)))/(((1 + m)^2 + b^2*n^2)*((1 + m)^2 + 9*b^2*n^2)) + ((1 + m)*x^(1 + m)*cos(a + b*log(c*x^n))^3)/((1 + m)^2 + 9*b^2*n^2) + (6*b^3*n^3*x^(1 + m)*sin(a + b*log(c*x^n)))/(((1 + m)^2 + b^2*n^2)*((1 + m)^2 + 9*b^2*n^2)) + (3*b*n*x^(1 + m)*cos(a + b*log(c*x^n))^2*sin(a + b*log(c*x^n)))/((1 + m)^2 + 9*b^2*n^2)]
    @test_int [x^m*cos(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*x^(1 + m))/((1 + m)*((1 + m)^2 + 4*b^2*n^2)) + ((1 + m)*x^(1 + m)*cos(a + b*log(c*x^n))^2)/((1 + m)^2 + 4*b^2*n^2) + (2*b*n*x^(1 + m)*cos(a + b*log(c*x^n))*sin(a + b*log(c*x^n)))/((1 + m)^2 + 4*b^2*n^2)]
    @test_int [x^m*cos(a + b*log(c*x^n)), x, 1, ((1 + m)*x^(1 + m)*cos(a + b*log(c*x^n)))/((1 + m)^2 + b^2*n^2) + (b*n*x^(1 + m)*sin(a + b*log(c*x^n)))/((1 + m)^2 + b^2*n^2)]


    @test_int [x^m*cos(a + b*log(c*x^n))^(3/2), x, 3, (2*x^(1 + m)*cos(a + b*log(c*x^n))^(3/2)*HypergeometricFunctions._₂F₁(-(3/2), -((2*im + 2*im*m + 3*b*n)/(4*b*n)), -((2*im + 2*im*m - b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + 2*m - 3*im*b*n)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2))]
    @test_int [x^m*cos(a + b*log(c*x^n))^(1/2), x, 3, (2*x^(1 + m)*sqrt(cos(a + b*log(c*x^n)))*HypergeometricFunctions._₂F₁(-(1/2), -((2*im + 2*im*m + b*n)/(4*b*n)), -((2*im + 2*im*m - 3*b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + 2*m - im*b*n)*sqrt(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b)))]
    @test_int [x^m/cos(a + b*log(c*x^n))^(1/2), x, 3, (2*x^(1 + m)*sqrt(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))*HypergeometricFunctions._₂F₁(1/2, -((2*im + 2*im*m - b*n)/(4*b*n)), -((2*im + 2*im*m - 5*b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + 2*m + im*b*n)*sqrt(cos(a + b*log(c*x^n))))]
    @test_int [x^m/cos(a + b*log(c*x^n))^(3/2), x, 3, (2*x^(1 + m)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*HypergeometricFunctions._₂F₁(3/2, -((2*im + 2*im*m - 3*b*n)/(4*b*n)), -((2*im + 2*im*m - 7*b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + 2*m + 3*im*b*n)*cos(a + b*log(c*x^n))^(3/2))]
    @test_int [x^m/cos(a + b*log(c*x^n))^(5/2), x, 3, (2*x^(1 + m)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2)*HypergeometricFunctions._₂F₁(5/2, -((2*im + 2*im*m - 5*b*n)/(4*b*n)), -((2*im + 2*im*m - 9*b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + 2*m + 5*im*b*n)*cos(a + b*log(c*x^n))^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cos(d*(a+b*log(c*x^n)))^p*when*p*symbolic=#


    @test_int [(e*x)^m*cos(d*(a + b*log(c*x^n)))^p, x, 3, ((e*x)^(1 + m)*cos(d*(a + b*log(c*x^n)))^p*HypergeometricFunctions._₂F₁(-p, -((im + im*m + b*d*n*p)/(2*b*d*n)), (1/2)*(2 - (im*(1 + m))/(b*d*n) - p), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/((1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*(e*(1 + m - im*b*d*n*p)))]


    @test_int [x^1*cos(a + b*log(c*x^n))^p, x, 3, (x^2*cos(a + b*log(c*x^n))^p*HypergeometricFunctions._₂F₁((1/2)*(-((2*im)/(b*n)) - p), -p, (1/2)*(2 - (2*im)/(b*n) - p), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*(2 - im*b*n*p))]
    @test_int [x^0*cos(a + b*log(c*x^n))^p, x, 3, (x*cos(a + b*log(c*x^n))^p*HypergeometricFunctions._₂F₁(-p, -((im + b*n*p)/(2*b*n)), (1/2)*(2 - im/(b*n) - p), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*(1 - im*b*n*p))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tan(d*(a+b*log(c*x^n)))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*tan(a+b*log(x))^p=#


    @test_int [x^3*tan(a + im*log(x)), x, 5, (-im)*ℯ^((2*im)*a)*x^2 + (im/4)*x^4 + im*ℯ^((4*im)*a)*log(ℯ^((2*im)*a) + x^2)]
    @test_int [x^2*tan(a + im*log(x)), x, 5, (-2*im)*ℯ^((2*im)*a)*x + (im/3)*x^3 + (2*im)*ℯ^((3*im)*a)*atan(x/ℯ^(im*a))]
    @test_int [x^1*tan(a + im*log(x)), x, 5, (im/2)*x^2 - im*ℯ^((2*im)*a)*log(ℯ^((2*im)*a) + x^2)]
    @test_int [x^0*tan(a + im*log(x)), x, 4, im*x - (2*im)*ℯ^(im*a)*atan(x/ℯ^(im*a))]
    @test_int [tan(a + im*log(x))/x^1, x, 2, im*log(cos(a + im*log(x)))]
    @test_int [tan(a + im*log(x))/x^2, x, 4, im/x + ((2*im)*atan(x/ℯ^(im*a)))/ℯ^(im*a)]
    @test_int [tan(a + im*log(x))/x^3, x, 4, im/(2*x^2) - (im*log(1 + ℯ^(2*im*a)/x^2))/ℯ^(2*im*a)]
    @test_int [tan(a + im*log(x))/x^4, x, 5, im/(3*x^3) - (2*im)/(ℯ^(2*im*a)*x) - (2*im*atan(x/ℯ^(im*a)))/ℯ^(3*im*a)]


    @test_int [x^3*tan(a + im*log(x))^2, x, 5, 2*ℯ^((2*im)*a)*x^2 - x^4/4 - (2*ℯ^((6*im)*a))/(ℯ^((2*im)*a) + x^2) - 4*ℯ^((4*im)*a)*log(ℯ^((2*im)*a) + x^2)]
    @test_int [x^2*tan(a + im*log(x))^2, x, 6, 6*ℯ^(2*im*a)*x - x^3/3 - (2*ℯ^(2*im*a)*x^3)/(ℯ^(2*im*a) + x^2) - 6*ℯ^(3*im*a)*atan(x/ℯ^(im*a))]
    @test_int [x^1*tan(a + im*log(x))^2, x, 5, -x^2/2 + (2*ℯ^((4*im)*a))/(ℯ^((2*im)*a) + x^2) + 2*ℯ^((2*im)*a)*log(ℯ^((2*im)*a) + x^2)]
    @test_int [x^0*tan(a + im*log(x))^2, x, 6, -x - (2*ℯ^(2*im*a)*x)/(ℯ^(2*im*a) + x^2) + 2*ℯ^(im*a)*atan(x/ℯ^(im*a))]
    @test_int [tan(a + im*log(x))^2/x^1, x, 3, -log(x) - im*tan(a + im*log(x))]
    @test_int [tan(a + im*log(x))^2/x^2, x, 5, ℯ^(2*im*a)/(x*(ℯ^(2*im*a) + x^2)) + (3*x)/(ℯ^(2*im*a) + x^2) + (2*atan(x/ℯ^(im*a)))/ℯ^(im*a)]
    @test_int [tan(a + im*log(x))^2/x^3, x, 4, -2/(ℯ^((2*im)*a)*(1 + ℯ^((2*im)*a)/x^2)) + 1/(2*x^2) - (2*log(1 + ℯ^((2*im)*a)/x^2))/ℯ^((2*im)*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tan(a+b*log(x))^p*with*m*symbolic=#


    @test_int [(e*x)^m*tan(a + im*log(x))^1, x, 4, -((im*(e*x)^(1 + m))/(e*(1 + m))) + (2*im*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(1, (1/2)*(-1 - m), (1 - m)/2, -(ℯ^(2*im*a)/x^2)))/(e*(1 + m))]
    @test_int [(e*x)^m*tan(a + im*log(x))^2, x, 5, -((x*(e*x)^m)/(1 + m)) + (2*x*(e*x)^m)/(1 + ℯ^(2*im*a)/x^2) - 2*x*(e*x)^m*HypergeometricFunctions._₂F₁(1, (1/2)*(-1 - m), (1 - m)/2, -(ℯ^(2*im*a)/x^2))]
    @test_int [(e*x)^m*tan(a + im*log(x))^3, x, 6, -((im*(1 - m)*m*x*(e*x)^m)/(2*(1 + m))) + (im*(1 - ℯ^(2*im*a)/x^2)^2*x*(e*x)^m)/(2*(1 + ℯ^(2*im*a)/x^2)^2) + (im*(ℯ^(2*im*a)*(3 + m) + (ℯ^(4*im*a)*(1 - m))/x^2)*x*(e*x)^m)/(ℯ^(2*im*a)*(2*(1 + ℯ^(2*im*a)/x^2))) - (im*(3 + 2*m + m^2)*x*(e*x)^m*HypergeometricFunctions._₂F₁(1, (1/2)*(-1 - m), (1 - m)/2, -(ℯ^(2*im*a)/x^2)))/(1 + m)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tan(a+b*log(x))^p*with*p*symbolic=#
    #==#


    @test_int [tan(a + b*log(x))^p, x, 4, (x*((im*(1 - ℯ^(2*im*a)*x^(2*im*b)))/(1 + ℯ^(2*im*a)*x^(2*im*b)))^p*(1 + ℯ^(2*im*a)*x^(2*im*b))^p*AppellF1(-(im/(2*b)), -p, p, 1 - im/(2*b), ℯ^(2*im*a)*x^(2*im*b), (-ℯ^(2*im*a))*x^(2*im*b)))/(1 - ℯ^(2*im*a)*x^(2*im*b))^p]
    @test_int [(e*x)^m*tan(a + b*log(x))^p, x, 4, ((e*x)^(1 + m)*((im*(1 - ℯ^(2*im*a)*x^(2*im*b)))/(1 + ℯ^(2*im*a)*x^(2*im*b)))^p*(1 + ℯ^(2*im*a)*x^(2*im*b))^p*AppellF1(-((im*(1 + m))/(2*b)), -p, p, 1 - (im*(1 + m))/(2*b), ℯ^(2*im*a)*x^(2*im*b), (-ℯ^(2*im*a))*x^(2*im*b)))/((1 - ℯ^(2*im*a)*x^(2*im*b))^p*(e*(1 + m)))]


    @test_int [tan(a + 1*log(x))^p, x, 4, (((im*(1 - ℯ^(2*im*a)*x^(2*im)))/(1 + ℯ^(2*im*a)*x^(2*im)))^p*(1 + ℯ^(2*im*a)*x^(2*im))^p*x*AppellF1(-(im/2), -p, p, 1 - im/2, ℯ^(2*im*a)*x^(2*im), (-ℯ^(2*im*a))*x^(2*im)))/(1 - ℯ^(2*im*a)*x^(2*im))^p]
    @test_int [tan(a + 2*log(x))^p, x, 4, (((im*(1 - ℯ^(2*im*a)*x^(4*im)))/(1 + ℯ^(2*im*a)*x^(4*im)))^p*(1 + ℯ^(2*im*a)*x^(4*im))^p*x*AppellF1(-(im/4), -p, p, 1 - im/4, ℯ^(2*im*a)*x^(4*im), (-ℯ^(2*im*a))*x^(4*im)))/(1 - ℯ^(2*im*a)*x^(4*im))^p]
    @test_int [tan(a + 3*log(x))^p, x, 4, (((im*(1 - ℯ^(2*im*a)*x^(6*im)))/(1 + ℯ^(2*im*a)*x^(6*im)))^p*(1 + ℯ^(2*im*a)*x^(6*im))^p*x*AppellF1(-(im/6), -p, p, 1 - im/6, ℯ^(2*im*a)*x^(6*im), (-ℯ^(2*im*a))*x^(6*im)))/(1 - ℯ^(2*im*a)*x^(6*im))^p]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*tan(a+b*log(c*x^n))^p=#


    @test_int [x^3*tan(d*(a + b*log(c*x^n))), x, 4, (-im/4)*x^4 + (im/2)*x^4*HypergeometricFunctions._₂F₁(1, (-2*im)/(b*d*n), 1 - (2*im)/(b*d*n), -(ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d)))]
    @test_int [x^2*tan(d*(a + b*log(c*x^n))), x, 4, (-im/3)*x^3 + ((2*im)/3)*x^3*HypergeometricFunctions._₂F₁(1, ((-3*im)/2)/(b*d*n), 1 - ((3*im)/2)/(b*d*n), -(ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d)))]
    @test_int [x^1*tan(d*(a + b*log(c*x^n))), x, 4, (-im/2)*x^2 + im*x^2*HypergeometricFunctions._₂F₁(1, (-im)/(b*d*n), 1 - im/(b*d*n), -(ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d)))]
    @test_int [x^0*tan(d*(a + b*log(c*x^n))), x, 4, (-im)*x + (2*im)*x*HypergeometricFunctions._₂F₁(1, (-im/2)/(b*d*n), 1 - (im/2)/(b*d*n), -(ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d)))]
    @test_int [tan(d*(a + b*log(c*x^n)))/x^1, x, 2, -(log(cos(a*d + b*d*log(c*x^n)))/(b*d*n))]
    @test_int [tan(d*(a + b*log(c*x^n)))/x^2, x, 4, im/x - (2*im*HypergeometricFunctions._₂F₁(1, im/(2*b*d*n), 1 + im/(2*b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/x]
    @test_int [tan(d*(a + b*log(c*x^n)))/x^3, x, 4, (im/2)/x^2 - (im*HypergeometricFunctions._₂F₁(1, im/(b*d*n), 1 + im/(b*d*n), -(ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d))))/x^2]


    @test_int [x^3*tan(d*(a + b*log(c*x^n)))^2, x, 5, ((4*im - b*d*n)*x^4)/(4*b*d*n) + (im*x^4*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*x^4*HypergeometricFunctions._₂F₁(1, -((2*im)/(b*d*n)), 1 - (2*im)/(b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(b*d*n)]
    @test_int [x^2*tan(d*(a + b*log(c*x^n)))^2, x, 5, ((3*im - b*d*n)*x^3)/(3*b*d*n) + (im*x^3*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*x^3*HypergeometricFunctions._₂F₁(1, -((3*im)/(2*b*d*n)), 1 - (3*im)/(2*b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(b*d*n)]
    @test_int [x^1*tan(d*(a + b*log(c*x^n)))^2, x, 5, ((2*im - b*d*n)*x^2)/(2*b*d*n) + (im*x^2*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*x^2*HypergeometricFunctions._₂F₁(1, -(im/(b*d*n)), 1 - im/(b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(b*d*n)]
    @test_int [x^0*tan(d*(a + b*log(c*x^n)))^2, x, 5, ((im - b*d*n)*x)/(b*d*n) + (im*x*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*x*HypergeometricFunctions._₂F₁(1, -(im/(2*b*d*n)), 1 - im/(2*b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(b*d*n)]
    @test_int [tan(d*(a + b*log(c*x^n)))^2/x^1, x, 3, -log(x) + tan(a*d + b*d*log(c*x^n))/(b*d*n)]
    @test_int [tan(d*(a + b*log(c*x^n)))^2/x^2, x, 5, (1 + im/(b*d*n))/x + (im*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*x*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*HypergeometricFunctions._₂F₁(1, im/(2*b*d*n), 1 + im/(2*b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(b*d*n*x)]
    @test_int [tan(d*(a + b*log(c*x^n)))^2/x^3, x, 5, (1 + (2*im)/(b*d*n))/(2*x^2) + (im*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*x^2*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*HypergeometricFunctions._₂F₁(1, im/(b*d*n), 1 + im/(b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(b*d*n*x^2)]


    @test_int [tan(a + b*log(c*x^n))^3/x, x, 3, log(cos(a + b*log(c*x^n)))/(b*n) + tan(a + b*log(c*x^n))^2/(2*b*n)]
    @test_int [tan(a + b*log(c*x^n))^4/x, x, 4, log(x) - tan(a + b*log(c*x^n))/(b*n) + tan(a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [tan(a + b*log(c*x^n))^5/x, x, 4, -(log(cos(a + b*log(c*x^n)))/(b*n)) - tan(a + b*log(c*x^n))^2/(2*b*n) + tan(a + b*log(c*x^n))^4/(4*b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tan(a+b*log(c*x^n))^p*with*m*symbolic=#


    @test_int [(e*x)^m*tan(d*(a + b*log(c*x^n)))^1, x, 4, -((im*(e*x)^(1 + m))/(e*(1 + m))) + (2*im*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(1, -((im*(1 + m))/(2*b*d*n)), 1 - (im*(1 + m))/(2*b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(e*(1 + m))]
    @test_int [(e*x)^m*tan(d*(a + b*log(c*x^n)))^2, x, 5, ((im*(1 + m) - b*d*n)*(e*x)^(1 + m))/(b*d*e*(1 + m)*n) + (im*(e*x)^(1 + m)*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*e*n*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(1, -((im*(1 + m))/(2*b*d*n)), 1 - (im*(1 + m))/(2*b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(b*d*e*n)]
    @test_int [(e*x)^m*tan(d*(a + b*log(c*x^n)))^3, x, 6, -(((im*(1 + m) - b*d*n)*(1 + m + 2*im*b*d*n)*(e*x)^(1 + m))/(2*b^2*d^2*e*(1 + m)*n^2)) - ((e*x)^(1 + m)*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^2)/(2*b*d*e*n*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^2) - (im*(e*x)^(1 + m)*((ℯ^(2*im*a*d)*(1 + m - 2*im*b*d*n))/n - (ℯ^(4*im*a*d)*(1 + m + 2*im*b*d*n)*(c*x^n)^(2*im*b*d))/n))/(ℯ^(2*im*a*d)*(2*b^2*d^2*e*n*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))) + (im*(1 + 2*m + m^2 - 2*b^2*d^2*n^2)*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(1, -((im*(1 + m))/(2*b*d*n)), 1 - (im*(1 + m))/(2*b*d*n), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(b^2*d^2*e*(1 + m)*n^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tan(a+b*log(c*x^n))^p*with*p*symbolic=#


    @test_int [tan(d*(a + b*log(c*x^n)))^p, x, 5, (x*((im*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))^p*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*AppellF1(-(im/(2*b*d*n)), -p, p, 1 - im/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p]
    @test_int [(e*x)^m*tan(d*(a + b*log(c*x^n)))^p, x, 5, ((e*x)^(1 + m)*((im*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))^p*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*AppellF1(-((im*(1 + m))/(2*b*d*n)), -p, p, 1 - (im*(1 + m))/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/((1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*(e*(1 + m)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*tan(a+b*log(c*x^n))^(p/2)=#


    @test_int [tan(a + b*log(c*x^n))^(5/2)/x, x, 13, atan(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) - atan(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) - log(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) + log(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) + (2*tan(a + b*log(c*x^n))^(3/2))/(3*b*n)]
    @test_int [tan(a + b*log(c*x^n))^(3/2)/x, x, 13, atan(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) - atan(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) + log(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) - log(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) + (2*sqrt(tan(a + b*log(c*x^n))))/(b*n)]
    @test_int [tan(a + b*log(c*x^n))^(1/2)/x, x, 12, -(atan(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n)) + atan(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) + log(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) - log(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n)]
    @test_int [1/(x*tan(a + b*log(c*x^n))^(1/2)), x, 12, -(atan(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n)) + atan(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) - log(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) + log(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n)]
    @test_int [1/(x*tan(a + b*log(c*x^n))^(3/2)), x, 13, atan(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) - atan(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) - log(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) + log(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) - 2/(b*n*sqrt(tan(a + b*log(c*x^n))))]
    @test_int [1/(x*tan(a + b*log(c*x^n))^(5/2)), x, 13, atan(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) - atan(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))))/(sqrt(2)*b*n) + log(1 - sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) - log(1 + sqrt(2)*sqrt(tan(a + b*log(c*x^n))) + tan(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) - 2/(3*b*n*tan(a + b*log(c*x^n))^(3/2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cot(d*(a+b*log(c*x^n)))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cot(a+b*log(x))^p=#


    @test_int [x^3*cot(a + im*log(x)), x, 5, (-im)*ℯ^((2*im)*a)*x^2 - (im/4)*x^4 - im*ℯ^((4*im)*a)*log(ℯ^((2*im)*a) - x^2)]
    @test_int [x^2*cot(a + im*log(x)), x, 5, (-2*im)*ℯ^((2*im)*a)*x - (im/3)*x^3 + (2*im)*ℯ^((3*im)*a)*atanh(x/ℯ^(im*a))]
    @test_int [x^1*cot(a + im*log(x)), x, 5, (-im/2)*x^2 - im*ℯ^((2*im)*a)*log(ℯ^((2*im)*a) - x^2)]
    @test_int [x^0*cot(a + im*log(x)), x, 4, (-im)*x + (2*im)*ℯ^(im*a)*atanh(x/ℯ^(im*a))]
    @test_int [cot(a + im*log(x))/x^1, x, 2, (-im)*log(sin(a + im*log(x)))]
    @test_int [cot(a + im*log(x))/x^2, x, 4, (-im)/x + ((2*im)*atanh(x/ℯ^(im*a)))/ℯ^(im*a)]
    @test_int [cot(a + im*log(x))/x^3, x, 4, -(im/(2*x^2)) - (im*log(1 - ℯ^(2*im*a)/x^2))/ℯ^(2*im*a)]
    @test_int [cot(a + im*log(x))/x^4, x, 5, -(im/(3*x^3)) - (2*im)/(ℯ^(2*im*a)*x) + (2*im*atanh(x/ℯ^(im*a)))/ℯ^(3*im*a)]


    @test_int [x^3*cot(a + im*log(x))^2, x, 5, -2*ℯ^((2*im)*a)*x^2 - x^4/4 - (2*ℯ^((6*im)*a))/(ℯ^((2*im)*a) - x^2) - 4*ℯ^((4*im)*a)*log(ℯ^((2*im)*a) - x^2)]
    @test_int [x^2*cot(a + im*log(x))^2, x, 6, -6*ℯ^(2*im*a)*x - x^3/3 - (2*ℯ^(2*im*a)*x^3)/(ℯ^(2*im*a) - x^2) + 6*ℯ^(3*im*a)*atanh(x/ℯ^(im*a))]
    @test_int [x^1*cot(a + im*log(x))^2, x, 5, -x^2/2 - (2*ℯ^((4*im)*a))/(ℯ^((2*im)*a) - x^2) - 2*ℯ^((2*im)*a)*log(ℯ^((2*im)*a) - x^2)]
    @test_int [x^0*cot(a + im*log(x))^2, x, 6, -x - (2*ℯ^(2*im*a)*x)/(ℯ^(2*im*a) - x^2) + 2*ℯ^(im*a)*atanh(x/ℯ^(im*a))]
    @test_int [cot(a + im*log(x))^2/x^1, x, 3, im*cot(a + im*log(x)) - log(x)]
    @test_int [cot(a + im*log(x))^2/x^2, x, 5, ℯ^(2*im*a)/(x*(ℯ^(2*im*a) - x^2)) - (3*x)/(ℯ^(2*im*a) - x^2) - (2*atanh(x/ℯ^(im*a)))/ℯ^(im*a)]
    @test_int [cot(a + im*log(x))^2/x^3, x, 4, 2/(ℯ^((2*im)*a)*(1 - ℯ^((2*im)*a)/x^2)) + 1/(2*x^2) + (2*log(1 - ℯ^((2*im)*a)/x^2))/ℯ^((2*im)*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cot(a+b*log(x))^p*with*m*symbolic=#


    @test_int [(e*x)^m*cot(a + im*log(x))^1, x, 4, (im*(e*x)^(1 + m))/(e*(1 + m)) - (2*im*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(1, (1/2)*(-1 - m), (1 - m)/2, ℯ^(2*im*a)/x^2))/(e*(1 + m))]
    @test_int [(e*x)^m*cot(a + im*log(x))^2, x, 5, -((x*(e*x)^m)/(1 + m)) + (2*x*(e*x)^m)/(1 - ℯ^(2*im*a)/x^2) - 2*x*(e*x)^m*HypergeometricFunctions._₂F₁(1, (1/2)*(-1 - m), (1 - m)/2, ℯ^(2*im*a)/x^2)]
    @test_int [(e*x)^m*cot(a + im*log(x))^3, x, 6, (im*(1 - m)*m*x*(e*x)^m)/(2*(1 + m)) - (im*(1 + ℯ^(2*im*a)/x^2)^2*x*(e*x)^m)/(2*(1 - ℯ^(2*im*a)/x^2)^2) - (im*(3 + m - (ℯ^(2*im*a)*(1 - m))/x^2)*x*(e*x)^m)/(2*(1 - ℯ^(2*im*a)/x^2)) + (im*(3 + 2*m + m^2)*x*(e*x)^m*HypergeometricFunctions._₂F₁(1, (1/2)*(-1 - m), (1 - m)/2, ℯ^(2*im*a)/x^2))/(1 + m)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cot(a+b*log(x))^p*with*p*symbolic=#
    #==#


    @test_int [cot(a + b*log(x))^p, x, 4, (x*(1 - ℯ^(2*im*a)*x^(2*im*b))^p*(-((im*(1 + ℯ^(2*im*a)*x^(2*im*b)))/(1 - ℯ^(2*im*a)*x^(2*im*b))))^p*AppellF1(-(im/(2*b)), p, -p, 1 - im/(2*b), ℯ^(2*im*a)*x^(2*im*b), (-ℯ^(2*im*a))*x^(2*im*b)))/(1 + ℯ^(2*im*a)*x^(2*im*b))^p]
    @test_int [(e*x)^m*cot(a + b*log(x))^p, x, 4, ((e*x)^(1 + m)*(1 - ℯ^(2*im*a)*x^(2*im*b))^p*(-((im*(1 + ℯ^(2*im*a)*x^(2*im*b)))/(1 - ℯ^(2*im*a)*x^(2*im*b))))^p*AppellF1(-((im*(1 + m))/(2*b)), p, -p, 1 - (im*(1 + m))/(2*b), ℯ^(2*im*a)*x^(2*im*b), (-ℯ^(2*im*a))*x^(2*im*b)))/((1 + ℯ^(2*im*a)*x^(2*im*b))^p*(e*(1 + m)))]


    @test_int [cot(a + 1*log(x))^p, x, 4, ((1 - ℯ^(2*im*a)*x^(2*im))^p*(-((im*(1 + ℯ^(2*im*a)*x^(2*im)))/(1 - ℯ^(2*im*a)*x^(2*im))))^p*x*AppellF1(-(im/2), p, -p, 1 - im/2, ℯ^(2*im*a)*x^(2*im), (-ℯ^(2*im*a))*x^(2*im)))/(1 + ℯ^(2*im*a)*x^(2*im))^p]
    @test_int [cot(a + 2*log(x))^p, x, 4, ((1 - ℯ^(2*im*a)*x^(4*im))^p*(-((im*(1 + ℯ^(2*im*a)*x^(4*im)))/(1 - ℯ^(2*im*a)*x^(4*im))))^p*x*AppellF1(-(im/4), p, -p, 1 - im/4, ℯ^(2*im*a)*x^(4*im), (-ℯ^(2*im*a))*x^(4*im)))/(1 + ℯ^(2*im*a)*x^(4*im))^p]
    @test_int [cot(a + 3*log(x))^p, x, 4, ((1 - ℯ^(2*im*a)*x^(6*im))^p*(-((im*(1 + ℯ^(2*im*a)*x^(6*im)))/(1 - ℯ^(2*im*a)*x^(6*im))))^p*x*AppellF1(-(im/6), p, -p, 1 - im/6, ℯ^(2*im*a)*x^(6*im), (-ℯ^(2*im*a))*x^(6*im)))/(1 + ℯ^(2*im*a)*x^(6*im))^p]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cot(a+b*log(c*x^n))^p=#


    @test_int [x^3*cot(d*(a + b*log(c*x^n))), x, 4, (im/4)*x^4 - (im/2)*x^4*HypergeometricFunctions._₂F₁(1, (-2*im)/(b*d*n), 1 - (2*im)/(b*d*n), ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d))]
    @test_int [x^2*cot(d*(a + b*log(c*x^n))), x, 4, (im/3)*x^3 - ((2*im)/3)*x^3*HypergeometricFunctions._₂F₁(1, ((-3*im)/2)/(b*d*n), 1 - ((3*im)/2)/(b*d*n), ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d))]
    @test_int [x^1*cot(d*(a + b*log(c*x^n))), x, 4, (im/2)*x^2 - im*x^2*HypergeometricFunctions._₂F₁(1, (-im)/(b*d*n), 1 - im/(b*d*n), ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d))]
    @test_int [x^0*cot(d*(a + b*log(c*x^n))), x, 4, im*x - (2*im)*x*HypergeometricFunctions._₂F₁(1, (-im/2)/(b*d*n), 1 - (im/2)/(b*d*n), ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d))]
    @test_int [cot(d*(a + b*log(c*x^n)))/x^1, x, 2, log(sin(a*d + b*d*log(c*x^n)))/(b*d*n)]
    @test_int [cot(d*(a + b*log(c*x^n)))/x^2, x, 4, -(im/x) + (2*im*HypergeometricFunctions._₂F₁(1, im/(2*b*d*n), 1 + im/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/x]
    @test_int [cot(d*(a + b*log(c*x^n)))/x^3, x, 4, (-im/2)/x^2 + (im*HypergeometricFunctions._₂F₁(1, im/(b*d*n), 1 + im/(b*d*n), ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d)))/x^2]


    @test_int [x^3*cot(d*(a + b*log(c*x^n)))^2, x, 5, ((4*im - b*d*n)*x^4)/(4*b*d*n) + (im*x^4*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*x^4*HypergeometricFunctions._₂F₁(1, -((2*im)/(b*d*n)), 1 - (2*im)/(b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n)]
    @test_int [x^2*cot(d*(a + b*log(c*x^n)))^2, x, 5, ((3*im - b*d*n)*x^3)/(3*b*d*n) + (im*x^3*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*x^3*HypergeometricFunctions._₂F₁(1, -((3*im)/(2*b*d*n)), 1 - (3*im)/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n)]
    @test_int [x^1*cot(d*(a + b*log(c*x^n)))^2, x, 5, ((2*im - b*d*n)*x^2)/(2*b*d*n) + (im*x^2*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*x^2*HypergeometricFunctions._₂F₁(1, -(im/(b*d*n)), 1 - im/(b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n)]
    @test_int [x^0*cot(d*(a + b*log(c*x^n)))^2, x, 5, ((im - b*d*n)*x)/(b*d*n) + (im*x*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*x*HypergeometricFunctions._₂F₁(1, -(im/(2*b*d*n)), 1 - im/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n)]
    @test_int [cot(d*(a + b*log(c*x^n)))^2/x^1, x, 3, -(cot(a*d + b*d*log(c*x^n))/(b*d*n)) - log(x)]
    @test_int [cot(d*(a + b*log(c*x^n)))^2/x^2, x, 5, (1 + im/(b*d*n))/x + (im*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*x*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*HypergeometricFunctions._₂F₁(1, im/(2*b*d*n), 1 + im/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*x)]
    @test_int [cot(d*(a + b*log(c*x^n)))^2/x^3, x, 5, (1 + (2*im)/(b*d*n))/(2*x^2) + (im*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*x^2*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*HypergeometricFunctions._₂F₁(1, im/(b*d*n), 1 + im/(b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*n*x^2)]


    @test_int [cot(a + b*log(c*x^n))^3/x, x, 3, -(cot(a + b*log(c*x^n))^2/(2*b*n)) - log(sin(a + b*log(c*x^n)))/(b*n)]
    @test_int [cot(a + b*log(c*x^n))^4/x, x, 4, cot(a + b*log(c*x^n))/(b*n) - cot(a + b*log(c*x^n))^3/(3*b*n) + log(x)]
    @test_int [cot(a + b*log(c*x^n))^5/x, x, 4, cot(a + b*log(c*x^n))^2/(2*b*n) - cot(a + b*log(c*x^n))^4/(4*b*n) + log(sin(a + b*log(c*x^n)))/(b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cot(a+b*log(c*x^n))^p*with*m*symbolic=#


    @test_int [(e*x)^m*cot(d*(a + b*log(c*x^n)))^1, x, 4, (im*(e*x)^(1 + m))/(e*(1 + m)) - ((2*im)*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(1, ((-im/2)*(1 + m))/(b*d*n), 1 - ((im/2)*(1 + m))/(b*d*n), ℯ^((2*im)*a*d)*(c*x^n)^((2*im)*b*d)))/(e*(1 + m))]
    @test_int [(e*x)^m*cot(d*(a + b*log(c*x^n)))^2, x, 5, ((im*(1 + m) - b*d*n)*(e*x)^(1 + m))/(b*d*e*(1 + m)*n) + (im*(e*x)^(1 + m)*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*e*n*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))) - (2*im*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(1, -((im*(1 + m))/(2*b*d*n)), 1 - (im*(1 + m))/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b*d*e*n)]
    @test_int [(e*x)^m*cot(d*(a + b*log(c*x^n)))^3, x, 6, ((im*(1 + m) - b*d*n)*(1 + m + 2*im*b*d*n)*(e*x)^(1 + m))/(2*b^2*d^2*e*(1 + m)*n^2) + ((e*x)^(1 + m)*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^2)/(2*b*d*e*n*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^2) + (im*(e*x)^(1 + m)*((ℯ^(2*im*a*d)*(1 + m - 2*im*b*d*n))/n + (ℯ^(4*im*a*d)*(1 + m + 2*im*b*d*n)*(c*x^n)^(2*im*b*d))/n))/(ℯ^(2*im*a*d)*(2*b^2*d^2*e*n*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))) - (im*(1 + 2*m + m^2 - 2*b^2*d^2*n^2)*(e*x)^(1 + m)*HypergeometricFunctions._₂F₁(1, -((im*(1 + m))/(2*b*d*n)), 1 - (im*(1 + m))/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(b^2*d^2*e*(1 + m)*n^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cot(a+b*log(c*x^n))^p*with*p*symbolic=#


    @test_int [cot(d*(a + b*log(c*x^n)))^p, x, 5, (x*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*(-((im*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))))^p*AppellF1(-(im/(2*b*d*n)), p, -p, 1 - im/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p]
    @test_int [(e*x)^m*cot(d*(a + b*log(c*x^n)))^p, x, 5, ((e*x)^(1 + m)*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*(-((im*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))))^p*AppellF1(-((im*(1 + m))/(2*b*d*n)), p, -p, 1 - (im*(1 + m))/(2*b*d*n), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d)))/((1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*(e*(1 + m)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cot(a+b*log(c*x^n))^(p/2)=#


    @test_int [cot(a + b*log(c*x^n))^(5/2)/x, x, 13, -(atan(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n)) + atan(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n) - (2*cot(a + b*log(c*x^n))^(3/2))/(3*b*n) + log(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) - log(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n)]
    @test_int [cot(a + b*log(c*x^n))^(3/2)/x, x, 13, -(atan(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n)) + atan(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n) - (2*sqrt(cot(a + b*log(c*x^n))))/(b*n) - log(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) + log(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n)]
    @test_int [cot(a + b*log(c*x^n))^(1/2)/x, x, 12, atan(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n) - atan(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n) - log(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) + log(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n)]
    @test_int [1/(x*cot(a + b*log(c*x^n))^(1/2)), x, 12, atan(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n) - atan(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n) + log(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) - log(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n)]
    @test_int [1/(x*cot(a + b*log(c*x^n))^(3/2)), x, 13, -(atan(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n)) + atan(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n) + 2/(b*n*sqrt(cot(a + b*log(c*x^n)))) + log(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) - log(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n)]
    @test_int [1/(x*cot(a + b*log(c*x^n))^(5/2)), x, 13, -(atan(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n)) + atan(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))))/(sqrt(2)*b*n) + 2/(3*b*n*cot(a + b*log(c*x^n))^(3/2)) - log(1 - sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n) + log(1 + sqrt(2)*sqrt(cot(a + b*log(c*x^n))) + cot(a + b*log(c*x^n)))/(2*sqrt(2)*b*n)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sec(d*(a+b*log(c*x^n)))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sec(d*(a+b*log(c*x^n)))^p=#


    @test_int [x^2*sec(a + b*log(c*x^n)), x, 3, (2*ℯ^(im*a)*x^3*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 - (3*im)/(b*n)), (3/2)*(1 - im/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(3 + im*b*n)]
    @test_int [x^1*sec(a + b*log(c*x^n)), x, 3, (2*ℯ^(im*a)*x^2*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 - (2*im)/(b*n)), (1/2)*(3 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(2 + im*b*n)]
    @test_int [x^0*sec(a + b*log(c*x^n)), x, 3, (2*ℯ^(im*a)*x*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 - im/(b*n)), (1/2)*(3 - im/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(1 + im*b*n)]
    @test_int [sec(a + b*log(c*x^n))/x^1, x, 2, atanh(sin(a + b*log(c*x^n)))/(b*n)]
    @test_int [sec(a + b*log(c*x^n))/x^2, x, 3, -((2*ℯ^(im*a)*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 + im/(b*n)), (1/2)*(3 + im/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((1 - im*b*n)*x))]
    @test_int [sec(a + b*log(c*x^n))/x^3, x, 3, -((2*ℯ^(im*a)*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 + (2*im)/(b*n)), (1/2)*(3 + (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 - im*b*n)*x^2))]


    @test_int [x^2*sec(a + b*log(c*x^n))^2, x, 3, (4*ℯ^(2*im*a)*x^3*(c*x^n)^(2*im*b)*HypergeometricFunctions._₂F₁(2, (1/2)*(2 - (3*im)/(b*n)), (1/2)*(4 - (3*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(3 + 2*im*b*n)]
    @test_int [x^1*sec(a + b*log(c*x^n))^2, x, 3, (2*ℯ^(2*im*a)*x^2*(c*x^n)^(2*im*b)*HypergeometricFunctions._₂F₁(2, 1 - im/(b*n), 2 - im/(b*n), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(1 + im*b*n)]
    @test_int [x^0*sec(a + b*log(c*x^n))^2, x, 3, (4*ℯ^(2*im*a)*x*(c*x^n)^(2*im*b)*HypergeometricFunctions._₂F₁(2, (1/2)*(2 - im/(b*n)), (1/2)*(4 - im/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(1 + 2*im*b*n)]
    @test_int [sec(a + b*log(c*x^n))^2/x^1, x, 3, tan(a + b*log(c*x^n))/(b*n)]
    @test_int [sec(a + b*log(c*x^n))^2/x^2, x, 3, -((4*ℯ^(2*im*a)*(c*x^n)^(2*im*b)*HypergeometricFunctions._₂F₁(2, (1/2)*(2 + im/(b*n)), (1/2)*(4 + im/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((1 - 2*im*b*n)*x))]
    @test_int [sec(a + b*log(c*x^n))^2/x^3, x, 3, -((2*ℯ^(2*im*a)*(c*x^n)^(2*im*b)*HypergeometricFunctions._₂F₁(2, 1 + im/(b*n), 2 + im/(b*n), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((1 - im*b*n)*x^2))]


    @test_int [x^1*sec(a + b*log(c*x^n))^3, x, 3, (8*ℯ^(3*im*a)*x^2*(c*x^n)^(3*im*b)*HypergeometricFunctions._₂F₁(3, (1/2)*(3 - (2*im)/(b*n)), (1/2)*(5 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(2 + 3*im*b*n)]
    @test_int [x^0*sec(a + b*log(c*x^n))^3, x, 3, (8*ℯ^(3*im*a)*x*(c*x^n)^(3*im*b)*HypergeometricFunctions._₂F₁(3, (1/2)*(3 - im/(b*n)), (1/2)*(5 - im/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(1 + 3*im*b*n)]
    @test_int [sec(a + b*log(c*x^n))^3/x^1, x, 3, atanh(sin(a + b*log(c*x^n)))/(2*b*n) + (sec(a + b*log(c*x^n))*tan(a + b*log(c*x^n)))/(2*b*n)]
    @test_int [sec(a + b*log(c*x^n))^3/x^2, x, 3, -((8*ℯ^(3*im*a)*(c*x^n)^(3*im*b)*HypergeometricFunctions._₂F₁(3, (1/2)*(3 + im/(b*n)), (1/2)*(5 + im/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((1 - 3*im*b*n)*x))]
    @test_int [sec(a + b*log(c*x^n))^3/x^3, x, 3, -((8*ℯ^(3*im*a)*(c*x^n)^(3*im*b)*HypergeometricFunctions._₂F₁(3, (1/2)*(3 + (2*im)/(b*n)), (1/2)*(5 + (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 - 3*im*b*n)*x^2))]


    @test_int [x^1*sec(a + b*log(c*x^n))^4, x, 3, (8*ℯ^(4*im*a)*x^2*(c*x^n)^(4*im*b)*HypergeometricFunctions._₂F₁(4, 2 - im/(b*n), 3 - im/(b*n), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(1 + 2*im*b*n)]
    @test_int [x^0*sec(a + b*log(c*x^n))^4, x, 3, (16*ℯ^(4*im*a)*x*(c*x^n)^(4*im*b)*HypergeometricFunctions._₂F₁(4, (1/2)*(4 - im/(b*n)), (1/2)*(6 - im/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(1 + 4*im*b*n)]
    @test_int [sec(a + b*log(c*x^n))^4/x^1, x, 3, tan(a + b*log(c*x^n))/(b*n) + tan(a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [sec(a + b*log(c*x^n))^4/x^2, x, 3, -((16*ℯ^(4*im*a)*(c*x^n)^(4*im*b)*HypergeometricFunctions._₂F₁(4, (1/2)*(4 + im/(b*n)), (1/2)*(6 + im/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((1 - 4*im*b*n)*x))]
    @test_int [sec(a + b*log(c*x^n))^4/x^3, x, 3, -((8*ℯ^(4*im*a)*(c*x^n)^(4*im*b)*HypergeometricFunctions._₂F₁(4, 2 + im/(b*n), 3 + im/(b*n), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((1 - 2*im*b*n)*x^2))]


    @test_int [2*b^2*n^2*sec(a + b*log(c*x^n))^3 - (1 + b^2*n^2)*sec(a + b*log(c*x^n)), x, -7, (-x)*sec(a + b*log(c*x^n)) + b*n*x*sec(a + b*log(c*x^n))*tan(a + b*log(c*x^n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sec(d*(a+b*log(c*x^n)))^p*when*b^2*n^2*(p-2)^2+(m+1)^2=0=#


    @test_int [x^m*sec(a + 2*log(c*x^(sqrt(-(1 + m)^2)/2)))^3, x, -3, (x^(1 + m)*sec(a + 2*log(c*x^((1/2)*sqrt(-(1 + m)^2)))))/(2*(1 + m)) + (x^(1 + m)*sec(a + 2*log(c*x^((1/2)*sqrt(-(1 + m)^2))))*tan(a + 2*log(c*x^((1/2)*sqrt(-(1 + m)^2)))))/(2*sqrt(-(1 + m)^2))]


    @test_int [x^1*sec(a + 2*log(c*x^im))^3, x, 3, (ℯ^(im*a)*(c*x^im)^(2*im)*x^2)/(1 + ℯ^(2*im*a)*(c*x^im)^(4*im))^2]
    @test_int [x^0*sec(a + 2*log(c*x^(im/2)))^3, x, 3, (1/2)*x*sec(a + 2*log(c*x^(im/2))) - (1/2)*im*x*sec(a + 2*log(c*x^(im/2)))*tan(a + 2*log(c*x^(im/2))), (2*ℯ^(im*a)*(c*x^(im/2))^(2*im)*x)/(1 + ℯ^(2*im*a)*(c*x^(im/2))^(4*im))^2]


    @test_int [sec(a + 2*log(c/x^(im/2)))^3, x, 3, (2*ℯ^(3*im*a)*(c/x^(im/2))^(6*im)*x)/(1 + ℯ^(2*im*a)*(c/x^(im/2))^(4*im))^2]


    @test_int [sec(a + im/(n*(-2 + p))*log(c*x^n))^p, x, 3, ((2 - p)*x*(1 + ℯ^(2*im*a)*(c*x^n)^(2/(n*(2 - p))))*sec(a - (im*log(c*x^n))/(n*(2 - p)))^p)/(ℯ^(2*im*a)*(c*x^n)^(2/(n*(2 - p)))*(2*(1 - p)))]
    @test_int [sec(a - im/(n*(-2 + p))*log(c*x^n))^p, x, 3, ((2 - p)*x*(1 + ℯ^(2*im*a)/(c*x^n)^(2/(n*(2 - p))))*sec(a + (im*log(c*x^n))/(n*(2 - p)))^p)/(2*(1 - p))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sec(d*(a+b*log(c*x^n)))^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^0*sqrt(sec(a + b*log(c*x^n))), x, 3, (2*x*sqrt(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 - (2*im)/(b*n)), (1/4)*(5 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b))*sqrt(sec(a + b*log(c*x^n))))/(2 + im*b*n)]
    @test_int [sqrt(sec(a + b*log(c*x^n)))/x^1, x, 3, (2*sqrt(cos(a + b*log(c*x^n)))*Elliptic.F((a + b*log(c*x^n))/2, 2)*sqrt(sec(a + b*log(c*x^n))))/(b*n)]


    @test_int [x^0*sec(a + b*log(c*x^n))^(3/2), x, 3, (2*x*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*HypergeometricFunctions._₂F₁(3/2, (1/4)*(3 - (2*im)/(b*n)), (1/4)*(7 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b))*sec(a + b*log(c*x^n))^(3/2))/(2 + 3*im*b*n)]
    @test_int [sec(a + b*log(c*x^n))^(3/2)/x^1, x, 4, -((2*sqrt(cos(a + b*log(c*x^n)))*Elliptic.E((1/2)*(a + b*log(c*x^n)), 2)*sqrt(sec(a + b*log(c*x^n))))/(b*n)) + (2*sqrt(sec(a + b*log(c*x^n)))*sin(a + b*log(c*x^n)))/(b*n)]


    @test_int [x^0*sec(a + b*log(c*x^n))^(5/2), x, 3, (2*x*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2)*HypergeometricFunctions._₂F₁(5/2, (1/4)*(5 - (2*im)/(b*n)), (1/4)*(9 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b))*sec(a + b*log(c*x^n))^(5/2))/(2 + 5*im*b*n)]
    @test_int [sec(a + b*log(c*x^n))^(5/2)/x^1, x, 4, (2*sqrt(cos(a + b*log(c*x^n)))*Elliptic.F((1/2)*(a + b*log(c*x^n)), 2)*sqrt(sec(a + b*log(c*x^n))))/(3*b*n) + (2*sec(a + b*log(c*x^n))^(3/2)*sin(a + b*log(c*x^n)))/(3*b*n)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^0/sqrt(sec(a + b*log(c*x^n))), x, 3, (2*x*HypergeometricFunctions._₂F₁(-(1/2), -((2*im + b*n)/(4*b*n)), (1/4)*(3 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 - im*b*n)*sqrt(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(sec(a + b*log(c*x^n))))]
    @test_int [1/(x*sqrt(sec(a + b*log(c*x^n)))), x, 3, (2*sqrt(cos(a + b*log(c*x^n)))*Elliptic.E((a + b*log(c*x^n))/2, 2)*sqrt(sec(a + b*log(c*x^n))))/(b*n)]


    @test_int [x^0/sec(a + b*log(c*x^n))^(3/2), x, 3, (2*x*HypergeometricFunctions._₂F₁(-(3/2), (1/4)*(-3 - (2*im)/(b*n)), (1/4)*(1 - (2*im)/(b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 - 3*im*b*n)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*sec(a + b*log(c*x^n))^(3/2))]
    @test_int [1/(x*sec(a + b*log(c*x^n))^(3/2)), x, 4, (2*sqrt(cos(a + b*log(c*x^n)))*Elliptic.F((1/2)*(a + b*log(c*x^n)), 2)*sqrt(sec(a + b*log(c*x^n))))/(3*b*n) + (2*sin(a + b*log(c*x^n)))/(3*b*n*sqrt(sec(a + b*log(c*x^n))))]


    @test_int [x^0/sec(a + b*log(c*x^n))^(5/2), x, 3, (2*x*HypergeometricFunctions._₂F₁(-(5/2), (1/4)*(-5 - (2*im)/(b*n)), -((2*im + b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 - 5*im*b*n)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2)*sec(a + b*log(c*x^n))^(5/2))]
    @test_int [1/(x*sec(a + b*log(c*x^n))^(5/2)), x, 4, (6*sqrt(cos(a + b*log(c*x^n)))*Elliptic.E((1/2)*(a + b*log(c*x^n)), 2)*sqrt(sec(a + b*log(c*x^n))))/(5*b*n) + (2*sin(a + b*log(c*x^n)))/(5*b*n*sec(a + b*log(c*x^n))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sec(d*(a+b*log(c*x^n)))^p*when*m*symbolic=#


    @test_int [x^m*sec(a + b*log(c*x^n))^3, x, 3, (8*ℯ^(3*im*a)*x^(1 + m)*(c*x^n)^(3*im*b)*HypergeometricFunctions._₂F₁(3, -((im*(1 + m) - 3*b*n)/(2*b*n)), -((im*(1 + m) - 5*b*n)/(2*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(1 + m + 3*im*b*n)]
    @test_int [x^m*sec(a + b*log(c*x^n))^2, x, 3, (4*ℯ^(2*im*a)*x^(1 + m)*(c*x^n)^(2*im*b)*HypergeometricFunctions._₂F₁(2, -((im*(1 + m) - 2*b*n)/(2*b*n)), -((im*(1 + m) - 4*b*n)/(2*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(1 + m + 2*im*b*n)]
    @test_int [x^m*sec(a + b*log(c*x^n))^1, x, 3, (2*ℯ^(im*a)*x^(1 + m)*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, -((im + im*m - b*n)/(2*b*n)), -((im*(1 + m) - 3*b*n)/(2*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/(1 + m + im*b*n)]


    @test_int [x^m*sec(a + b*log(c*x^n))^(5/2), x, 3, (2*x^(1 + m)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2)*HypergeometricFunctions._₂F₁(5/2, -((2*im + 2*im*m - 5*b*n)/(4*b*n)), -((2*im + 2*im*m - 9*b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b))*sec(a + b*log(c*x^n))^(5/2))/(2 + 2*m + 5*im*b*n)]
    @test_int [x^m*sec(a + b*log(c*x^n))^(3/2), x, 3, (2*x^(1 + m)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*HypergeometricFunctions._₂F₁(3/2, -((2*im + 2*im*m - 3*b*n)/(4*b*n)), -((2*im + 2*im*m - 7*b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b))*sec(a + b*log(c*x^n))^(3/2))/(2 + 2*m + 3*im*b*n)]
    @test_int [x^m*sec(a + b*log(c*x^n))^(1/2), x, 3, (2*x^(1 + m)*sqrt(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))*HypergeometricFunctions._₂F₁(1/2, -((2*im + 2*im*m - b*n)/(4*b*n)), -((2*im + 2*im*m - 5*b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b))*sqrt(sec(a + b*log(c*x^n))))/(2 + 2*m + im*b*n)]
    @test_int [x^m/sec(a + b*log(c*x^n))^(1/2), x, 3, (2*x^(1 + m)*HypergeometricFunctions._₂F₁(-(1/2), -((2*im + 2*im*m + b*n)/(4*b*n)), -((2*im + 2*im*m - 3*b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + 2*m - im*b*n)*sqrt(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(sec(a + b*log(c*x^n))))]
    @test_int [x^m/sec(a + b*log(c*x^n))^(3/2), x, 3, (2*x^(1 + m)*HypergeometricFunctions._₂F₁(-(3/2), -((2*im + 2*im*m + 3*b*n)/(4*b*n)), -((2*im + 2*im*m - b*n)/(4*b*n)), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b)))/((2 + 2*m - 3*im*b*n)*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*sec(a + b*log(c*x^n))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sec(d*(a+b*log(c*x^n)))^p*when*p*symbolic=#


    @test_int [(e*x)^m*sec(d*(a + b*log(c*x^n)))^p, x, 3, ((e*x)^(1 + m)*(1 + ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*HypergeometricFunctions._₂F₁(p, -((im + im*m - b*d*n*p)/(2*b*d*n)), (1/2)*(2 - (im*(1 + m))/(b*d*n) + p), (-ℯ^(2*im*a*d))*(c*x^n)^(2*im*b*d))*sec(d*(a + b*log(c*x^n)))^p)/(e*(1 + m + im*b*d*n*p))]


    @test_int [x^1*sec(a + b*log(c*x^n))^p, x, 3, (x^2*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*HypergeometricFunctions._₂F₁(p, (1/2)*(-((2*im)/(b*n)) + p), (1/2)*(2 - (2*im)/(b*n) + p), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b))*sec(a + b*log(c*x^n))^p)/(2 + im*b*n*p)]
    @test_int [x^0*sec(a + b*log(c*x^n))^p, x, 3, (x*(1 + ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*HypergeometricFunctions._₂F₁(p, -((im - b*n*p)/(2*b*n)), (1/2)*(2 - im/(b*n) + p), (-ℯ^(2*im*a))*(c*x^n)^(2*im*b))*sec(a + b*log(c*x^n))^p)/(1 + im*b*n*p)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*csc(d*(a+b*log(c*x^n)))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*csc(d*(a+b*log(c*x^n)))^p=#


    @test_int [x^2*csc(a + b*log(c*x^n)), x, 3, (2*ℯ^(im*a)*x^3*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 - (3*im)/(b*n)), (3/2)*(1 - im/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(3*im - b*n)]
    @test_int [x^1*csc(a + b*log(c*x^n)), x, 3, (2*ℯ^(im*a)*x^2*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 - (2*im)/(b*n)), (1/2)*(3 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(2*im - b*n)]
    @test_int [x^0*csc(a + b*log(c*x^n)), x, 3, (2*ℯ^(im*a)*x*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 - im/(b*n)), (1/2)*(3 - im/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(im - b*n)]
    @test_int [csc(a + b*log(c*x^n))/x^1, x, 2, -(atanh(cos(a + b*log(c*x^n)))/(b*n))]
    @test_int [csc(a + b*log(c*x^n))/x^2, x, 3, -((2*ℯ^(im*a)*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 + im/(b*n)), (1/2)*(3 + im/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((im + b*n)*x))]
    @test_int [csc(a + b*log(c*x^n))/x^3, x, 3, -((2*ℯ^(im*a)*(c*x^n)^(im*b)*HypergeometricFunctions._₂F₁(1, (1/2)*(1 + (2*im)/(b*n)), (1/2)*(3 + (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((2*im + b*n)*x^2))]


    @test_int [x^0*csc(a + b*log(c*x^n))^2, x, 3, -((4*ℯ^(2*im*a)*x*(c*x^n)^(2*im*b)*HypergeometricFunctions._₂F₁(2, (1/2)*(2 - im/(b*n)), (1/2)*(4 - im/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(1 + 2*im*b*n))]
    @test_int [csc(a + b*log(c*x^n))^2/x^1, x, 3, -(cot(a + b*log(c*x^n))/(b*n))]


    @test_int [x^0*csc(a + b*log(c*x^n))^3, x, 3, -((8*ℯ^(3*im*a)*x*(c*x^n)^(3*im*b)*HypergeometricFunctions._₂F₁(3, (1/2)*(3 - im/(b*n)), (1/2)*(5 - im/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(im - 3*b*n))]
    @test_int [csc(a + b*log(c*x^n))^3/x^1, x, 3, -(atanh(cos(a + b*log(c*x^n)))/(2*b*n)) - (cot(a + b*log(c*x^n))*csc(a + b*log(c*x^n)))/(2*b*n)]


    @test_int [x^0*csc(a + b*log(c*x^n))^4, x, 3, (16*ℯ^(4*im*a)*x*(c*x^n)^(4*im*b)*HypergeometricFunctions._₂F₁(4, (1/2)*(4 - im/(b*n)), (1/2)*(6 - im/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(1 + 4*im*b*n)]
    @test_int [csc(a + b*log(c*x^n))^4/x^1, x, 3, -(cot(a + b*log(c*x^n))/(b*n)) - cot(a + b*log(c*x^n))^3/(3*b*n)]


    @test_int [2*b^2*n^2*csc(a + b*log(c*x^n))^3 - (1 + b^2*n^2)*csc(a + b*log(c*x^n)), x, -7, (-x)*csc(a + b*log(c*x^n)) - b*n*x*cot(a + b*log(c*x^n))*csc(a + b*log(c*x^n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*csc(d*(a+b*log(c*x^n)))^p*when*b^2*n^2*(p-2)^2+(m+1)^2=0=#


    @test_int [x^m*csc(a + 2*log(c*x^(sqrt(-(1 + m)^2)/2)))^3, x, -3, (x^(1 + m)*csc(a + 2*log(c*x^((1/2)*sqrt(-(1 + m)^2)))))/(2*(1 + m)) - (x^(1 + m)*cot(a + 2*log(c*x^((1/2)*sqrt(-(1 + m)^2))))*csc(a + 2*log(c*x^((1/2)*sqrt(-(1 + m)^2)))))/(2*sqrt(-(1 + m)^2))]


    @test_int [x^1*csc(a + 2*log(c*x^im))^3, x, 3, -((im*ℯ^(im*a)*(c*x^im)^(2*im)*x^2)/(1 - ℯ^(2*im*a)*(c*x^im)^(4*im))^2)]
    @test_int [csc(a + 2*log(c*x^(im/2)))^3, x, 3, (1/2)*x*csc(a + 2*log(c*x^(im/2))) + (1/2)*im*x*cot(a + 2*log(c*x^(im/2)))*csc(a + 2*log(c*x^(im/2))), -((2*im*ℯ^(im*a)*(c*x^(im/2))^(2*im)*x)/(1 - ℯ^(2*im*a)*(c*x^(im/2))^(4*im))^2)]


    @test_int [csc(a + 2*log(c/x^(im/2)))^3, x, 3, (2*im*ℯ^(3*im*a)*(c/x^(im/2))^(6*im)*x)/(1 - ℯ^(2*im*a)*(c/x^(im/2))^(4*im))^2]


    @test_int [csc(a + im/(n*(-2 + p))*log(c*x^n))^p, x, 3, -(((2 - p)*x*(1 - ℯ^(2*im*a)*(c*x^n)^(2/(n*(2 - p))))*csc(a - (im*log(c*x^n))/(n*(2 - p)))^p)/(ℯ^(2*im*a)*(c*x^n)^(2/(n*(2 - p)))*(2*(1 - p))))]
    @test_int [csc(a - im/(n*(-2 + p))*log(c*x^n))^p, x, 3, ((2 - p)*x*(1 - ℯ^(2*im*a)/(c*x^n)^(2/(n*(2 - p))))*csc(a + (im*log(c*x^n))/(n*(2 - p)))^p)/(2*(1 - p))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*csc(d*(a+b*log(c*x^n)))^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^0*sqrt(csc(a + b*log(c*x^n))), x, 3, (2*x*sqrt(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(csc(a + b*log(c*x^n)))*HypergeometricFunctions._₂F₁(1/2, (1/4)*(1 - (2*im)/(b*n)), (1/4)*(5 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(2 + im*b*n)]
    @test_int [sqrt(csc(a + b*log(c*x^n)))/x, x, 3, (2*sqrt(csc(a + b*log(c*x^n)))*Elliptic.F((1/2)*(a - pi/2 + b*log(c*x^n)), 2)*sqrt(sin(a + b*log(c*x^n))))/(b*n)]


    @test_int [x^0*csc(a + b*log(c*x^n))^(3/2), x, 3, (2*x*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*csc(a + b*log(c*x^n))^(3/2)*HypergeometricFunctions._₂F₁(3/2, (1/4)*(3 - (2*im)/(b*n)), (1/4)*(7 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(2 + 3*im*b*n)]
    @test_int [csc(a + b*log(c*x^n))^(3/2)/x, x, 4, -((2*cos(a + b*log(c*x^n))*sqrt(csc(a + b*log(c*x^n))))/(b*n)) - (2*sqrt(csc(a + b*log(c*x^n)))*Elliptic.E((1/2)*(a - pi/2 + b*log(c*x^n)), 2)*sqrt(sin(a + b*log(c*x^n))))/(b*n)]


    @test_int [x^0*csc(a + b*log(c*x^n))^(5/2), x, 3, (2*x*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2)*csc(a + b*log(c*x^n))^(5/2)*HypergeometricFunctions._₂F₁(5/2, (1/4)*(5 - (2*im)/(b*n)), (1/4)*(9 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(2 + 5*im*b*n)]
    @test_int [csc(a + b*log(c*x^n))^(5/2)/x, x, 4, -((2*cos(a + b*log(c*x^n))*csc(a + b*log(c*x^n))^(3/2))/(3*b*n)) + (2*sqrt(csc(a + b*log(c*x^n)))*Elliptic.F((1/2)*(a - pi/2 + b*log(c*x^n)), 2)*sqrt(sin(a + b*log(c*x^n))))/(3*b*n)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^0/sqrt(csc(a + b*log(c*x^n))), x, 3, (2*x*HypergeometricFunctions._₂F₁(-(1/2), -((2*im + b*n)/(4*b*n)), (1/4)*(3 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((2 - im*b*n)*sqrt(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(csc(a + b*log(c*x^n))))]
    @test_int [1/(x*sqrt(csc(a + b*log(c*x^n)))), x, 3, (2*sqrt(csc(a + b*log(c*x^n)))*Elliptic.E((1/2)*(a - pi/2 + b*log(c*x^n)), 2)*sqrt(sin(a + b*log(c*x^n))))/(b*n)]


    @test_int [x^0/csc(a + b*log(c*x^n))^(3/2), x, 3, (2*x*HypergeometricFunctions._₂F₁(-(3/2), (1/4)*(-3 - (2*im)/(b*n)), (1/4)*(1 - (2*im)/(b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((2 - 3*im*b*n)*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*csc(a + b*log(c*x^n))^(3/2))]
    @test_int [1/(x*csc(a + b*log(c*x^n))^(3/2)), x, 4, -((2*cos(a + b*log(c*x^n)))/(3*b*n*sqrt(csc(a + b*log(c*x^n))))) + (2*sqrt(csc(a + b*log(c*x^n)))*Elliptic.F((1/2)*(a - pi/2 + b*log(c*x^n)), 2)*sqrt(sin(a + b*log(c*x^n))))/(3*b*n)]


    @test_int [x^0/csc(a + b*log(c*x^n))^(5/2), x, 3, (2*x*HypergeometricFunctions._₂F₁(-(5/2), (1/4)*(-5 - (2*im)/(b*n)), -((2*im + b*n)/(4*b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((2 - 5*im*b*n)*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2)*csc(a + b*log(c*x^n))^(5/2))]
    @test_int [1/(x*csc(a + b*log(c*x^n))^(5/2)), x, 4, -((2*cos(a + b*log(c*x^n)))/(5*b*n*csc(a + b*log(c*x^n))^(3/2))) + (6*sqrt(csc(a + b*log(c*x^n)))*Elliptic.E((1/2)*(a - pi/2 + b*log(c*x^n)), 2)*sqrt(sin(a + b*log(c*x^n))))/(5*b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*csc(d*(a+b*log(c*x^n)))^p*when*m*symbolic=#


    @test_int [(e*x)^m*csc(d*(a + b*log(c*x^n)))^3, x, 3, -((8*ℯ^(3*im*a*d)*(e*x)^(1 + m)*(c*x^n)^(3*im*b*d)*HypergeometricFunctions._₂F₁(3, -((im*(1 + m) - 3*b*d*n)/(2*b*d*n)), -((im*(1 + m) - 5*b*d*n)/(2*b*d*n)), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(e*(im*(1 + m) - 3*b*d*n)))]
    @test_int [(e*x)^m*csc(d*(a + b*log(c*x^n)))^2, x, 3, -((4*ℯ^(2*im*a*d)*(e*x)^(1 + m)*(c*x^n)^(2*im*b*d)*HypergeometricFunctions._₂F₁(2, -((im*(1 + m) - 2*b*d*n)/(2*b*d*n)), -((im*(1 + m) - 4*b*d*n)/(2*b*d*n)), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(e*(1 + m + 2*im*b*d*n)))]
    @test_int [(e*x)^m*csc(d*(a + b*log(c*x^n)))^1, x, 3, (2*ℯ^(im*a*d)*(e*x)^(1 + m)*(c*x^n)^(im*b*d)*HypergeometricFunctions._₂F₁(1, -((im + im*m - b*d*n)/(2*b*d*n)), -((im*(1 + m) - 3*b*d*n)/(2*b*d*n)), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(e*(im*(1 + m) - b*d*n))]


    @test_int [x^m*csc(a + b*log(c*x^n))^(5/2), x, 3, (2*x^(1 + m)*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(5/2)*csc(a + b*log(c*x^n))^(5/2)*HypergeometricFunctions._₂F₁(5/2, -((2*im + 2*im*m - 5*b*n)/(4*b*n)), -((2*im + 2*im*m - 9*b*n)/(4*b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(2 + 2*m + 5*im*b*n)]
    @test_int [x^m*csc(a + b*log(c*x^n))^(3/2), x, 3, (2*x^(1 + m)*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*csc(a + b*log(c*x^n))^(3/2)*HypergeometricFunctions._₂F₁(3/2, -((2*im + 2*im*m - 3*b*n)/(4*b*n)), -((2*im + 2*im*m - 7*b*n)/(4*b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(2 + 2*m + 3*im*b*n)]
    @test_int [x^m*csc(a + b*log(c*x^n))^(1/2), x, 3, (2*x^(1 + m)*sqrt(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(csc(a + b*log(c*x^n)))*HypergeometricFunctions._₂F₁(1/2, -((2*im + 2*im*m - b*n)/(4*b*n)), -((2*im + 2*im*m - 5*b*n)/(4*b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(2 + 2*m + im*b*n)]
    @test_int [x^m/csc(a + b*log(c*x^n))^(1/2), x, 3, (2*x^(1 + m)*HypergeometricFunctions._₂F₁(-(1/2), -((2*im + 2*im*m + b*n)/(4*b*n)), -((2*im + 2*im*m - 3*b*n)/(4*b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((2 + 2*m - im*b*n)*sqrt(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))*sqrt(csc(a + b*log(c*x^n))))]
    @test_int [x^m/csc(a + b*log(c*x^n))^(3/2), x, 3, (2*x^(1 + m)*HypergeometricFunctions._₂F₁(-(3/2), -((2*im + 2*im*m + 3*b*n)/(4*b*n)), -((2*im + 2*im*m - b*n)/(4*b*n)), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/((2 + 2*m - 3*im*b*n)*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^(3/2)*csc(a + b*log(c*x^n))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*csc(d*(a+b*log(c*x^n)))^p*when*p*symbolic=#


    @test_int [(e*x)^m*csc(d*(a + b*log(c*x^n)))^p, x, 3, ((e*x)^(1 + m)*(1 - ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d))^p*csc(d*(a + b*log(c*x^n)))^p*HypergeometricFunctions._₂F₁(p, -((im + im*m - b*d*n*p)/(2*b*d*n)), (1/2)*(2 - (im*(1 + m))/(b*d*n) + p), ℯ^(2*im*a*d)*(c*x^n)^(2*im*b*d)))/(e*(1 + m + im*b*d*n*p))]


    @test_int [x^1*csc(a + b*log(c*x^n))^p, x, 3, (x^2*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*csc(a + b*log(c*x^n))^p*HypergeometricFunctions._₂F₁(p, (1/2)*(-((2*im)/(b*n)) + p), (1/2)*(2 - (2*im)/(b*n) + p), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(2 + im*b*n*p)]
    @test_int [x^0*csc(a + b*log(c*x^n))^p, x, 3, (x*(1 - ℯ^(2*im*a)*(c*x^n)^(2*im*b))^p*csc(a + b*log(c*x^n))^p*HypergeometricFunctions._₂F₁(p, -((im - b*n*p)/(2*b*n)), (1/2)*(2 - im/(b*n) + p), ℯ^(2*im*a)*(c*x^n)^(2*im*b)))/(1 + im*b*n*p)]
    end
