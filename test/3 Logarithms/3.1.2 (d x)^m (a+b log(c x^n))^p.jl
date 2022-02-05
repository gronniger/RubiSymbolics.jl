@testset "3.1.2 (d x)^m (a+b log(c x^n))^p" begin
    @variables a, b, c, d, d1, d2, m, m1, m2, n, p, q, q1, q2, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*log(c*x^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*log(c*x)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^3*log(c*x), x, 1, -x^4/16 + (x^4*log(c*x))/4]
    @test_int [x^2*log(c*x), x, 1, -x^3/9 + (x^3*log(c*x))/3]
    @test_int [x^1*log(c*x), x, 1, -x^2/4 + (x^2*log(c*x))/2]
    @test_int [x^0*log(c*x), x, 1, -x + x*log(c*x)]
    @test_int [log(c*x)/x^1, x, 1, log(c*x)^2/2]
    @test_int [log(c*x)/x^2, x, 1, -x^(-1) - log(c*x)/x]
    @test_int [log(c*x)/x^3, x, 1, -1/(4*x^2) - log(c*x)/(2*x^2)]


    @test_int [x^3*log(c*x)^2, x, 2, x^4/32 - (x^4*log(c*x))/8 + (x^4*log(c*x)^2)/4]
    @test_int [x^2*log(c*x)^2, x, 2, (2*x^3)/27 - (2*x^3*log(c*x))/9 + (x^3*log(c*x)^2)/3]
    @test_int [x^1*log(c*x)^2, x, 2, x^2/4 - (x^2*log(c*x))/2 + (x^2*log(c*x)^2)/2]
    @test_int [x^0*log(c*x)^2, x, 2, 2*x - 2*x*log(c*x) + x*log(c*x)^2]
    @test_int [log(c*x)^2/x^1, x, 2, log(c*x)^3/3]
    @test_int [log(c*x)^2/x^2, x, 2, -2/x - (2*log(c*x))/x - log(c*x)^2/x]
    @test_int [log(c*x)^2/x^3, x, 2, -1/(4*x^2) - log(c*x)/(2*x^2) - log(c*x)^2/(2*x^2)]


    @test_int [x^3*log(c*x)^3, x, 3, (-3*x^4)/128 + (3*x^4*log(c*x))/32 - (3*x^4*log(c*x)^2)/16 + (x^4*log(c*x)^3)/4]
    @test_int [x^2*log(c*x)^3, x, 3, (-2*x^3)/27 + (2*x^3*log(c*x))/9 - (x^3*log(c*x)^2)/3 + (x^3*log(c*x)^3)/3]
    @test_int [x^1*log(c*x)^3, x, 3, (-3*x^2)/8 + (3*x^2*log(c*x))/4 - (3*x^2*log(c*x)^2)/4 + (x^2*log(c*x)^3)/2]
    @test_int [x^0*log(c*x)^3, x, 3, -6*x + 6*x*log(c*x) - 3*x*log(c*x)^2 + x*log(c*x)^3]
    @test_int [log(c*x)^3/x^1, x, 2, log(c*x)^4/4]
    @test_int [log(c*x)^3/x^2, x, 3, -6/x - (6*log(c*x))/x - (3*log(c*x)^2)/x - log(c*x)^3/x]
    @test_int [log(c*x)^3/x^3, x, 3, -3/(8*x^2) - (3*log(c*x))/(4*x^2) - (3*log(c*x)^2)/(4*x^2) - log(c*x)^3/(2*x^2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^3/log(c*x), x, 2, ExpIntegralEi(4*log(c*x))/c^4]
    @test_int [x^2/log(c*x), x, 2, ExpIntegralEi(3*log(c*x))/c^3]
    @test_int [x^1/log(c*x), x, 2, ExpIntegralEi(2*log(c*x))/c^2]
    @test_int [x^0/log(c*x), x, 1, LogIntegral(c*x)/c]
    @test_int [1/(x^1*log(c*x)), x, 2, log(log(c*x))]
    @test_int [1/(x^2*log(c*x)), x, 2, c*ExpIntegralEi(-log(c*x))]
    @test_int [1/(x^3*log(c*x)), x, 2, c^2*ExpIntegralEi(-2*log(c*x))]


    @test_int [x^3/log(c*x)^2, x, 3, (4*ExpIntegralEi(4*log(c*x)))/c^4 - x^4/log(c*x)]
    @test_int [x^2/log(c*x)^2, x, 3, (3*ExpIntegralEi(3*log(c*x)))/c^3 - x^3/log(c*x)]
    @test_int [x^1/log(c*x)^2, x, 3, (2*ExpIntegralEi(2*log(c*x)))/c^2 - x^2/log(c*x)]
    @test_int [x^0/log(c*x)^2, x, 2, -(x/log(c*x)) + LogIntegral(c*x)/c]
    @test_int [1/(x^1*log(c*x)^2), x, 2, -log(c*x)^(-1)]
    @test_int [1/(x^2*log(c*x)^2), x, 3, -(c*ExpIntegralEi(-log(c*x))) - 1/(x*log(c*x))]
    @test_int [1/(x^3*log(c*x)^2), x, 3, -2*c^2*ExpIntegralEi(-2*log(c*x)) - 1/(x^2*log(c*x))]


    @test_int [x^3/log(c*x)^3, x, 4, (8*ExpIntegralEi(4*log(c*x)))/c^4 - x^4/(2*log(c*x)^2) - (2*x^4)/log(c*x)]
    @test_int [x^2/log(c*x)^3, x, 4, (9*ExpIntegralEi(3*log(c*x)))/(2*c^3) - x^3/(2*log(c*x)^2) - (3*x^3)/(2*log(c*x))]
    @test_int [x^1/log(c*x)^3, x, 4, (2*ExpIntegralEi(2*log(c*x)))/c^2 - x^2/(2*log(c*x)^2) - x^2/log(c*x)]
    @test_int [x^0/log(c*x)^3, x, 3, -(x/(2*log(c*x)^2)) - x/(2*log(c*x)) + LogIntegral(c*x)/(2*c)]
    @test_int [1/(x^1*log(c*x)^3), x, 2, -1/(2*log(c*x)^2)]
    @test_int [1/(x^2*log(c*x)^3), x, 4, (1/2)*c*ExpIntegralEi(-log(c*x)) - 1/(2*x*log(c*x)^2) + 1/(2*x*log(c*x))]
    @test_int [1/(x^3*log(c*x)^3), x, 4, 2*c^2*ExpIntegralEi(-2*log(c*x)) - 1/(2*x^2*log(c*x)^2) + 1/(x^2*log(c*x))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*log(c*x^n))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^3*(a + b*log(c*x^n)), x, 1, -(b*n*x^4)/16 + (x^4*(a + b*log(c*x^n)))/4]
    @test_int [x^2*(a + b*log(c*x^n)), x, 1, -(b*n*x^3)/9 + (x^3*(a + b*log(c*x^n)))/3]
    @test_int [x^1*(a + b*log(c*x^n)), x, 1, -(b*n*x^2)/4 + (x^2*(a + b*log(c*x^n)))/2]
    @test_int [x^0*(a + b*log(c*x^n)), x, 2, a*x - b*n*x + b*x*log(c*x^n)]
    @test_int [(a + b*log(c*x^n))/x^1, x, 1, (a + b*log(c*x^n))^2/(2*b*n)]
    @test_int [(a + b*log(c*x^n))/x^2, x, 1, -((b*n)/x) - (a + b*log(c*x^n))/x]
    @test_int [(a + b*log(c*x^n))/x^3, x, 1, -(b*n)/(4*x^2) - (a + b*log(c*x^n))/(2*x^2)]


    @test_int [x^3*(a + b*log(c*x^n))^2, x, 2, (b^2*n^2*x^4)/32 - (b*n*x^4*(a + b*log(c*x^n)))/8 + (x^4*(a + b*log(c*x^n))^2)/4]
    @test_int [x^2*(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*x^3)/27 - (2*b*n*x^3*(a + b*log(c*x^n)))/9 + (x^3*(a + b*log(c*x^n))^2)/3]
    @test_int [x^1*(a + b*log(c*x^n))^2, x, 2, (b^2*n^2*x^2)/4 - (b*n*x^2*(a + b*log(c*x^n)))/2 + (x^2*(a + b*log(c*x^n))^2)/2]
    @test_int [x^0*(a + b*log(c*x^n))^2, x, 3, -2*a*b*n*x + 2*b^2*n^2*x - 2*b^2*n*x*log(c*x^n) + x*(a + b*log(c*x^n))^2]
    @test_int [(a + b*log(c*x^n))^2/x^1, x, 2, (a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [(a + b*log(c*x^n))^2/x^2, x, 2, (-2*b^2*n^2)/x - (2*b*n*(a + b*log(c*x^n)))/x - (a + b*log(c*x^n))^2/x]
    @test_int [(a + b*log(c*x^n))^2/x^3, x, 2, -(b^2*n^2)/(4*x^2) - (b*n*(a + b*log(c*x^n)))/(2*x^2) - (a + b*log(c*x^n))^2/(2*x^2)]


    @test_int [x^3*(a + b*log(c*x^n))^3, x, 3, (-3*b^3*n^3*x^4)/128 + (3*b^2*n^2*x^4*(a + b*log(c*x^n)))/32 - (3*b*n*x^4*(a + b*log(c*x^n))^2)/16 + (x^4*(a + b*log(c*x^n))^3)/4]
    @test_int [x^2*(a + b*log(c*x^n))^3, x, 3, (-2*b^3*n^3*x^3)/27 + (2*b^2*n^2*x^3*(a + b*log(c*x^n)))/9 - (b*n*x^3*(a + b*log(c*x^n))^2)/3 + (x^3*(a + b*log(c*x^n))^3)/3]
    @test_int [x^1*(a + b*log(c*x^n))^3, x, 3, (-3*b^3*n^3*x^2)/8 + (3*b^2*n^2*x^2*(a + b*log(c*x^n)))/4 - (3*b*n*x^2*(a + b*log(c*x^n))^2)/4 + (x^2*(a + b*log(c*x^n))^3)/2]
    @test_int [x^0*(a + b*log(c*x^n))^3, x, 4, 6*a*b^2*n^2*x - 6*b^3*n^3*x + 6*b^3*n^2*x*log(c*x^n) - 3*b*n*x*(a + b*log(c*x^n))^2 + x*(a + b*log(c*x^n))^3]
    @test_int [(a + b*log(c*x^n))^3/x^1, x, 2, (a + b*log(c*x^n))^4/(4*b*n)]
    @test_int [(a + b*log(c*x^n))^3/x^2, x, 3, (-6*b^3*n^3)/x - (6*b^2*n^2*(a + b*log(c*x^n)))/x - (3*b*n*(a + b*log(c*x^n))^2)/x - (a + b*log(c*x^n))^3/x]
    @test_int [(a + b*log(c*x^n))^3/x^3, x, 3, (-3*b^3*n^3)/(8*x^2) - (3*b^2*n^2*(a + b*log(c*x^n)))/(4*x^2) - (3*b*n*(a + b*log(c*x^n))^2)/(4*x^2) - (a + b*log(c*x^n))^3/(2*x^2)]
    @test_int [(a + b*log(c*x^n))^3/x^4, x, 3, (-2*b^3*n^3)/(27*x^3) - (2*b^2*n^2*(a + b*log(c*x^n)))/(9*x^3) - (b*n*(a + b*log(c*x^n))^2)/(3*x^3) - (a + b*log(c*x^n))^3/(3*x^3)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^3/(a + b*log(c*x^n)), x, 2, (x^4*ExpIntegralEi((4*(a + b*log(c*x^n)))/(b*n)))/(b*ℯ^((4*a)/(b*n))*n*(c*x^n)^(4/n))]
    @test_int [x^2/(a + b*log(c*x^n)), x, 2, (x^3*ExpIntegralEi((3*(a + b*log(c*x^n)))/(b*n)))/(b*ℯ^((3*a)/(b*n))*n*(c*x^n)^(3/n))]
    @test_int [x^1/(a + b*log(c*x^n)), x, 2, (x^2*ExpIntegralEi((2*(a + b*log(c*x^n)))/(b*n)))/(b*ℯ^((2*a)/(b*n))*n*(c*x^n)^(2/n))]
    @test_int [x^0/(a + b*log(c*x^n)), x, 2, (x*ExpIntegralEi((a + b*log(c*x^n))/(b*n)))/(b*ℯ^(a/(b*n))*n*(c*x^n)^n^(-1))]
    @test_int [1/(x^1*(a + b*log(c*x^n))), x, 2, log(a + b*log(c*x^n))/(b*n)]
    @test_int [1/(x^2*(a + b*log(c*x^n))), x, 2, (ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-((a + b*log(c*x^n))/(b*n))))/(b*n*x)]
    @test_int [1/(x^3*(a + b*log(c*x^n))), x, 2, (ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi((-2*(a + b*log(c*x^n)))/(b*n)))/(b*n*x^2)]
    @test_int [1/(x^4*(a + b*log(c*x^n))), x, 2, (ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)*ExpIntegralEi((-3*(a + b*log(c*x^n)))/(b*n)))/(b*n*x^3)]


    @test_int [x^3/(a + b*log(c*x^n))^2, x, 3, (4*x^4*ExpIntegralEi((4*(a + b*log(c*x^n)))/(b*n)))/(b^2*ℯ^((4*a)/(b*n))*n^2*(c*x^n)^(4/n)) - x^4/(b*n*(a + b*log(c*x^n)))]
    @test_int [x^2/(a + b*log(c*x^n))^2, x, 3, (3*x^3*ExpIntegralEi((3*(a + b*log(c*x^n)))/(b*n)))/(b^2*ℯ^((3*a)/(b*n))*n^2*(c*x^n)^(3/n)) - x^3/(b*n*(a + b*log(c*x^n)))]
    @test_int [x^1/(a + b*log(c*x^n))^2, x, 3, (2*x^2*ExpIntegralEi((2*(a + b*log(c*x^n)))/(b*n)))/(b^2*ℯ^((2*a)/(b*n))*n^2*(c*x^n)^(2/n)) - x^2/(b*n*(a + b*log(c*x^n)))]
    @test_int [x^0/(a + b*log(c*x^n))^2, x, 3, (x*ExpIntegralEi((a + b*log(c*x^n))/(b*n)))/(b^2*ℯ^(a/(b*n))*n^2*(c*x^n)^n^(-1)) - x/(b*n*(a + b*log(c*x^n)))]
    @test_int [1/(x^1*(a + b*log(c*x^n))^2), x, 2, -(1/(b*n*(a + b*log(c*x^n))))]
    @test_int [1/(x^2*(a + b*log(c*x^n))^2), x, 3, -((ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-((a + b*log(c*x^n))/(b*n))))/(b^2*n^2*x)) - 1/(b*n*x*(a + b*log(c*x^n)))]
    @test_int [1/(x^3*(a + b*log(c*x^n))^2), x, 3, (-2*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi((-2*(a + b*log(c*x^n)))/(b*n)))/(b^2*n^2*x^2) - 1/(b*n*x^2*(a + b*log(c*x^n)))]
    @test_int [1/(x^4*(a + b*log(c*x^n))^2), x, 3, (-3*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)*ExpIntegralEi((-3*(a + b*log(c*x^n)))/(b*n)))/(b^2*n^2*x^3) - 1/(b*n*x^3*(a + b*log(c*x^n)))]


    @test_int [x^3/(a + b*log(c*x^n))^3, x, 4, (8*x^4*ExpIntegralEi((4*(a + b*log(c*x^n)))/(b*n)))/(b^3*ℯ^((4*a)/(b*n))*n^3*(c*x^n)^(4/n)) - x^4/(2*b*n*(a + b*log(c*x^n))^2) - (2*x^4)/(b^2*n^2*(a + b*log(c*x^n)))]
    @test_int [x^2/(a + b*log(c*x^n))^3, x, 4, (9*x^3*ExpIntegralEi((3*(a + b*log(c*x^n)))/(b*n)))/(2*b^3*ℯ^((3*a)/(b*n))*n^3*(c*x^n)^(3/n)) - x^3/(2*b*n*(a + b*log(c*x^n))^2) - (3*x^3)/(2*b^2*n^2*(a + b*log(c*x^n)))]
    @test_int [x^1/(a + b*log(c*x^n))^3, x, 4, (2*x^2*ExpIntegralEi((2*(a + b*log(c*x^n)))/(b*n)))/(b^3*ℯ^((2*a)/(b*n))*n^3*(c*x^n)^(2/n)) - x^2/(2*b*n*(a + b*log(c*x^n))^2) - x^2/(b^2*n^2*(a + b*log(c*x^n)))]
    @test_int [x^0/(a + b*log(c*x^n))^3, x, 4, (x*ExpIntegralEi((a + b*log(c*x^n))/(b*n)))/(2*b^3*ℯ^(a/(b*n))*n^3*(c*x^n)^n^(-1)) - x/(2*b*n*(a + b*log(c*x^n))^2) - x/(2*b^2*n^2*(a + b*log(c*x^n)))]
    @test_int [1/(x^1*(a + b*log(c*x^n))^3), x, 2, -1/(2*b*n*(a + b*log(c*x^n))^2)]
    @test_int [1/(x^2*(a + b*log(c*x^n))^3), x, 4, (ℯ^(a/(b*n))*(c*x^n)^n^(-1)*ExpIntegralEi(-((a + b*log(c*x^n))/(b*n))))/(2*b^3*n^3*x) - 1/(2*b*n*x*(a + b*log(c*x^n))^2) + 1/(2*b^2*n^2*x*(a + b*log(c*x^n)))]
    @test_int [1/(x^3*(a + b*log(c*x^n))^3), x, 4, (2*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*ExpIntegralEi((-2*(a + b*log(c*x^n)))/(b*n)))/(b^3*n^3*x^2) - 1/(2*b*n*x^2*(a + b*log(c*x^n))^2) + 1/(b^2*n^2*x^2*(a + b*log(c*x^n)))]
    @test_int [1/(x^4*(a + b*log(c*x^n))^3), x, 4, (9*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)*ExpIntegralEi((-3*(a + b*log(c*x^n)))/(b*n)))/(2*b^3*n^3*x^3) - 1/(2*b*n*x^3*(a + b*log(c*x^n))^2) + 3/(2*b^2*n^2*x^3*(a + b*log(c*x^n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^(m/2)*(a+b*log(c*x^n))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(d*x)^(5/2)*(a + b*log(c*x^n)), x, 1, (-4*b*n*(d*x)^(7/2))/(49*d) + (2*(d*x)^(7/2)*(a + b*log(c*x^n)))/(7*d)]
    @test_int [(d*x)^(3/2)*(a + b*log(c*x^n)), x, 1, (-4*b*n*(d*x)^(5/2))/(25*d) + (2*(d*x)^(5/2)*(a + b*log(c*x^n)))/(5*d)]
    @test_int [(d*x)^(1/2)*(a + b*log(c*x^n)), x, 1, (-4*b*n*(d*x)^(3/2))/(9*d) + (2*(d*x)^(3/2)*(a + b*log(c*x^n)))/(3*d)]
    @test_int [(a + b*log(c*x^n))/(d*x)^(1/2), x, 1, (-4*b*n*sqrt(d*x))/d + (2*sqrt(d*x)*(a + b*log(c*x^n)))/d]
    @test_int [(a + b*log(c*x^n))/(d*x)^(3/2), x, 1, (-4*b*n)/(d*sqrt(d*x)) - (2*(a + b*log(c*x^n)))/(d*sqrt(d*x))]
    @test_int [(a + b*log(c*x^n))/(d*x)^(5/2), x, 1, (-4*b*n)/(9*d*(d*x)^(3/2)) - (2*(a + b*log(c*x^n)))/(3*d*(d*x)^(3/2))]


    @test_int [(d*x)^(5/2)*(a + b*log(c*x^n))^2, x, 2, (16*b^2*n^2*(d*x)^(7/2))/(343*d) - (8*b*n*(d*x)^(7/2)*(a + b*log(c*x^n)))/(49*d) + (2*(d*x)^(7/2)*(a + b*log(c*x^n))^2)/(7*d)]
    @test_int [(d*x)^(3/2)*(a + b*log(c*x^n))^2, x, 2, (16*b^2*n^2*(d*x)^(5/2))/(125*d) - (8*b*n*(d*x)^(5/2)*(a + b*log(c*x^n)))/(25*d) + (2*(d*x)^(5/2)*(a + b*log(c*x^n))^2)/(5*d)]
    @test_int [(d*x)^(1/2)*(a + b*log(c*x^n))^2, x, 2, (16*b^2*n^2*(d*x)^(3/2))/(27*d) - (8*b*n*(d*x)^(3/2)*(a + b*log(c*x^n)))/(9*d) + (2*(d*x)^(3/2)*(a + b*log(c*x^n))^2)/(3*d)]
    @test_int [(a + b*log(c*x^n))^2/(d*x)^(1/2), x, 2, (16*b^2*n^2*sqrt(d*x))/d - (8*b*n*sqrt(d*x)*(a + b*log(c*x^n)))/d + (2*sqrt(d*x)*(a + b*log(c*x^n))^2)/d]
    @test_int [(a + b*log(c*x^n))^2/(d*x)^(3/2), x, 2, (-16*b^2*n^2)/(d*sqrt(d*x)) - (8*b*n*(a + b*log(c*x^n)))/(d*sqrt(d*x)) - (2*(a + b*log(c*x^n))^2)/(d*sqrt(d*x))]
    @test_int [(a + b*log(c*x^n))^2/(d*x)^(5/2), x, 2, (-16*b^2*n^2)/(27*d*(d*x)^(3/2)) - (8*b*n*(a + b*log(c*x^n)))/(9*d*(d*x)^(3/2)) - (2*(a + b*log(c*x^n))^2)/(3*d*(d*x)^(3/2))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [(d*x)^(5/2)/(a + b*log(c*x^n)), x, 2, ((d*x)^(7/2)*ExpIntegralEi((7*(a + b*log(c*x^n)))/(2*b*n)))/(b*d*ℯ^((7*a)/(2*b*n))*n*(c*x^n)^(7/(2*n)))]
    @test_int [(d*x)^(3/2)/(a + b*log(c*x^n)), x, 2, ((d*x)^(5/2)*ExpIntegralEi((5*(a + b*log(c*x^n)))/(2*b*n)))/(b*d*ℯ^((5*a)/(2*b*n))*n*(c*x^n)^(5/(2*n)))]
    @test_int [(d*x)^(1/2)/(a + b*log(c*x^n)), x, 2, ((d*x)^(3/2)*ExpIntegralEi((3*(a + b*log(c*x^n)))/(2*b*n)))/(b*d*ℯ^((3*a)/(2*b*n))*n*(c*x^n)^(3/(2*n)))]
    @test_int [1/((d*x)^(1/2)*(a + b*log(c*x^n))), x, 2, (sqrt(d*x)*ExpIntegralEi((a + b*log(c*x^n))/(2*b*n)))/(b*d*ℯ^(a/(2*b*n))*n*(c*x^n)^(1/(2*n)))]
    @test_int [1/((d*x)^(3/2)*(a + b*log(c*x^n))), x, 2, (ℯ^(a/(2*b*n))*(c*x^n)^(1/(2*n))*ExpIntegralEi(-(a + b*log(c*x^n))/(2*b*n)))/(b*d*n*sqrt(d*x))]
    @test_int [1/((d*x)^(5/2)*(a + b*log(c*x^n))), x, 2, (ℯ^((3*a)/(2*b*n))*(c*x^n)^(3/(2*n))*ExpIntegralEi((-3*(a + b*log(c*x^n)))/(2*b*n)))/(b*d*n*(d*x)^(3/2))]


    @test_int [(d*x)^(5/2)/(a + b*log(c*x^n))^2, x, 3, (7*(d*x)^(7/2)*ExpIntegralEi((7*(a + b*log(c*x^n)))/(2*b*n)))/(2*b^2*d*ℯ^((7*a)/(2*b*n))*n^2*(c*x^n)^(7/(2*n))) - (d*x)^(7/2)/(b*d*n*(a + b*log(c*x^n)))]
    @test_int [(d*x)^(3/2)/(a + b*log(c*x^n))^2, x, 3, (5*(d*x)^(5/2)*ExpIntegralEi((5*(a + b*log(c*x^n)))/(2*b*n)))/(2*b^2*d*ℯ^((5*a)/(2*b*n))*n^2*(c*x^n)^(5/(2*n))) - (d*x)^(5/2)/(b*d*n*(a + b*log(c*x^n)))]
    @test_int [(d*x)^(1/2)/(a + b*log(c*x^n))^2, x, 3, (3*(d*x)^(3/2)*ExpIntegralEi((3*(a + b*log(c*x^n)))/(2*b*n)))/(2*b^2*d*ℯ^((3*a)/(2*b*n))*n^2*(c*x^n)^(3/(2*n))) - (d*x)^(3/2)/(b*d*n*(a + b*log(c*x^n)))]
    @test_int [1/((d*x)^(1/2)*(a + b*log(c*x^n))^2), x, 3, (sqrt(d*x)*ExpIntegralEi((a + b*log(c*x^n))/(2*b*n)))/(2*b^2*d*ℯ^(a/(2*b*n))*n^2*(c*x^n)^(1/(2*n))) - sqrt(d*x)/(b*d*n*(a + b*log(c*x^n)))]
    @test_int [1/((d*x)^(3/2)*(a + b*log(c*x^n))^2), x, 3, -(ℯ^(a/(2*b*n))*(c*x^n)^(1/(2*n))*ExpIntegralEi(-(a + b*log(c*x^n))/(2*b*n)))/(2*b^2*d*n^2*sqrt(d*x)) - 1/(b*d*n*sqrt(d*x)*(a + b*log(c*x^n)))]
    @test_int [1/((d*x)^(5/2)*(a + b*log(c*x^n))^2), x, 3, (-3*ℯ^((3*a)/(2*b*n))*(c*x^n)^(3/(2*n))*ExpIntegralEi((-3*(a + b*log(c*x^n)))/(2*b*n)))/(2*b^2*d*n^2*(d*x)^(3/2)) - 1/(b*d*n*(d*x)^(3/2)*(a + b*log(c*x^n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*log(c*x^n))^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(a + b*log(c*x^n))^(1/2), x, 4, ((-(1/2))*sqrt(b)*sqrt(n)*sqrt(pi)*x*Erfi(sqrt(a + b*log(c*x^n))/(sqrt(b)*sqrt(n))))/(ℯ^(a/(b*n))*(c*x^n)^n^(-1)) + x*sqrt(a + b*log(c*x^n))]


    @test_int [x^3*sqrt(log(a*x^n)), x, 4, ((-(1/16))*sqrt(n)*sqrt(pi)*x^4*Erfi((2*sqrt(log(a*x^n)))/sqrt(n)))/(a*x^n)^(4/n) + (1/4)*x^4*sqrt(log(a*x^n))]
    @test_int [x^2*sqrt(log(a*x^n)), x, 4, ((-(1/6))*sqrt(n)*sqrt(pi/3)*x^3*Erfi((sqrt(3)*sqrt(log(a*x^n)))/sqrt(n)))/(a*x^n)^(3/n) + (1/3)*x^3*sqrt(log(a*x^n))]
    @test_int [x^1*sqrt(log(a*x^n)), x, 4, ((-(1/4))*sqrt(n)*sqrt(pi/2)*x^2*Erfi((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/(a*x^n)^(2/n) + (1/2)*x^2*sqrt(log(a*x^n))]
    @test_int [x^0*sqrt(log(a*x^n)), x, 4, ((-(1/2))*sqrt(n)*sqrt(pi)*x*Erfi(sqrt(log(a*x^n))/sqrt(n)))/(a*x^n)^n^(-1) + x*sqrt(log(a*x^n))]
    @test_int [sqrt(log(a*x^n))/x^1, x, 2, (2*log(a*x^n)^(3/2))/(3*n)]
    @test_int [sqrt(log(a*x^n))/x^2, x, 4, (sqrt(n)*sqrt(pi)*(a*x^n)^(1/n)*Erf(sqrt(log(a*x^n))/sqrt(n)))/(2*x) - sqrt(log(a*x^n))/x]
    @test_int [sqrt(log(a*x^n))/x^3, x, 4, (sqrt(n)*sqrt(pi/2)*(a*x^n)^(2/n)*Erf((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/(4*x^2) - sqrt(log(a*x^n))/(2*x^2)]


    @test_int [x^3*log(a*x^n)^(3/2), x, 5, ((3/128)*n^(3/2)*sqrt(pi)*x^4*Erfi((2*sqrt(log(a*x^n)))/sqrt(n)))/(a*x^n)^(4/n) - (3/32)*n*x^4*sqrt(log(a*x^n)) + (1/4)*x^4*log(a*x^n)^(3/2)]
    @test_int [x^2*log(a*x^n)^(3/2), x, 5, ((1/12)*n^(3/2)*sqrt(pi/3)*x^3*Erfi((sqrt(3)*sqrt(log(a*x^n)))/sqrt(n)))/(a*x^n)^(3/n) - (1/6)*n*x^3*sqrt(log(a*x^n)) + (1/3)*x^3*log(a*x^n)^(3/2)]
    @test_int [x^1*log(a*x^n)^(3/2), x, 5, ((3/16)*n^(3/2)*sqrt(pi/2)*x^2*Erfi((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/(a*x^n)^(2/n) - (3/8)*n*x^2*sqrt(log(a*x^n)) + (1/2)*x^2*log(a*x^n)^(3/2)]
    @test_int [x^0*log(a*x^n)^(3/2), x, 5, ((3/4)*n^(3/2)*sqrt(pi)*x*Erfi(sqrt(log(a*x^n))/sqrt(n)))/(a*x^n)^n^(-1) - (3/2)*n*x*sqrt(log(a*x^n)) + x*log(a*x^n)^(3/2)]
    @test_int [log(a*x^n)^(3/2)/x^1, x, 2, (2*log(a*x^n)^(5/2))/(5*n)]
    @test_int [log(a*x^n)^(3/2)/x^2, x, 5, (3*n^(3/2)*sqrt(pi)*(a*x^n)^(1/n)*Erf(sqrt(log(a*x^n))/sqrt(n)))/(4*x) - (3*n*sqrt(log(a*x^n)))/(2*x) - log(a*x^n)^(3/2)/x]
    @test_int [log(a*x^n)^(3/2)/x^3, x, 5, (3*n^(3/2)*sqrt(pi/2)*(a*x^n)^(2/n)*Erf((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/(16*x^2) - (3*n*sqrt(log(a*x^n)))/(8*x^2) - log(a*x^n)^(3/2)/(2*x^2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^3/sqrt(log(a*x^n)), x, 3, (sqrt(pi)*x^4*Erfi((2*sqrt(log(a*x^n)))/sqrt(n)))/(2*sqrt(n)*(a*x^n)^(4/n))]
    @test_int [x^2/sqrt(log(a*x^n)), x, 3, (sqrt(pi/3)*x^3*Erfi((sqrt(3)*sqrt(log(a*x^n)))/sqrt(n)))/(sqrt(n)*(a*x^n)^(3/n))]
    @test_int [x^1/sqrt(log(a*x^n)), x, 3, (sqrt(pi/2)*x^2*Erfi((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/(sqrt(n)*(a*x^n)^(2/n))]
    @test_int [x^0/sqrt(log(a*x^n)), x, 3, (sqrt(pi)*x*Erfi(sqrt(log(a*x^n))/sqrt(n)))/(sqrt(n)*(a*x^n)^n^(-1))]
    @test_int [1/(x^1*sqrt(log(a*x^n))), x, 2, (2*sqrt(log(a*x^n)))/n]
    @test_int [1/(x^2*sqrt(log(a*x^n))), x, 3, (sqrt(pi)*(a*x^n)^n^(-1)*Erf(sqrt(log(a*x^n))/sqrt(n)))/(sqrt(n)*x)]
    @test_int [1/(x^3*sqrt(log(a*x^n))), x, 3, (sqrt(pi/2)*(a*x^n)^(2/n)*Erf((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/(sqrt(n)*x^2)]


    @test_int [x^3/log(a*x^n)^(3/2), x, 4, (4*sqrt(pi)*x^4*Erfi((2*sqrt(log(a*x^n)))/sqrt(n)))/(n^(3/2)*(a*x^n)^(4/n)) - (2*x^4)/(n*sqrt(log(a*x^n)))]
    @test_int [x^2/log(a*x^n)^(3/2), x, 4, (2*sqrt(3*pi)*x^3*Erfi((sqrt(3)*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^(3/n)*n^(3/2)) - (2*x^3)/(n*sqrt(log(a*x^n)))]
    @test_int [x^1/log(a*x^n)^(3/2), x, 4, (2*sqrt(2*pi)*x^2*Erfi((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^(2/n)*n^(3/2)) - (2*x^2)/(n*sqrt(log(a*x^n)))]
    @test_int [x^0/log(a*x^n)^(3/2), x, 4, (2*sqrt(pi)*x*Erfi(sqrt(log(a*x^n))/sqrt(n)))/(n^(3/2)*(a*x^n)^n^(-1)) - (2*x)/(n*sqrt(log(a*x^n)))]
    @test_int [1/(x^1*log(a*x^n)^(3/2)), x, 2, -2/(n*sqrt(log(a*x^n)))]
    @test_int [1/(x^2*log(a*x^n)^(3/2)), x, 4, -((2*sqrt(pi)*(a*x^n)^(1/n)*Erf(sqrt(log(a*x^n))/sqrt(n)))/(n^(3/2)*x)) - 2/(n*x*sqrt(log(a*x^n)))]
    @test_int [1/(x^3*log(a*x^n)^(3/2)), x, 4, -((2*sqrt(2*pi)*(a*x^n)^(2/n)*Erf((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/(n^(3/2)*x^2)) - 2/(n*x^2*sqrt(log(a*x^n)))]


    @test_int [x^3/log(a*x^n)^(5/2), x, 5, (32*sqrt(pi)*x^4*Erfi((2*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^(4/n)*(3*n^(5/2))) - (2*x^4)/(3*n*log(a*x^n)^(3/2)) - (16*x^4)/(3*n^2*sqrt(log(a*x^n)))]
    @test_int [x^2/log(a*x^n)^(5/2), x, 5, (4*sqrt(3*pi)*x^3*Erfi((sqrt(3)*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^(3/n)*n^(5/2)) - (2*x^3)/(3*n*log(a*x^n)^(3/2)) - (4*x^3)/(n^2*sqrt(log(a*x^n)))]
    @test_int [x^1/log(a*x^n)^(5/2), x, 5, (8*sqrt(2*pi)*x^2*Erfi((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^(2/n)*(3*n^(5/2))) - (2*x^2)/(3*n*log(a*x^n)^(3/2)) - (8*x^2)/(3*n^2*sqrt(log(a*x^n)))]
    @test_int [x^0/log(a*x^n)^(5/2), x, 5, (4*sqrt(pi)*x*Erfi(sqrt(log(a*x^n))/sqrt(n)))/((a*x^n)^n^(-1)*(3*n^(5/2))) - (2*x)/(3*n*log(a*x^n)^(3/2)) - (4*x)/(3*n^2*sqrt(log(a*x^n)))]
    @test_int [1/(x^1*log(a*x^n)^(5/2)), x, 2, -(2/(3*n*log(a*x^n)^(3/2)))]
    @test_int [1/(x^2*log(a*x^n)^(5/2)), x, 5, (4*sqrt(pi)*(a*x^n)^(1/n)*Erf(sqrt(log(a*x^n))/sqrt(n)))/(3*n^(5/2)*x) - 2/(3*n*x*log(a*x^n)^(3/2)) + 4/(3*n^2*x*sqrt(log(a*x^n)))]
    @test_int [1/(x^3*log(a*x^n)^(5/2)), x, 5, (8*sqrt(2*pi)*(a*x^n)^(2/n)*Erf((sqrt(2)*sqrt(log(a*x^n)))/sqrt(n)))/(3*n^(5/2)*x^2) - 2/(3*n*x^2*log(a*x^n)^(3/2)) + 8/(3*n^2*x^2*sqrt(log(a*x^n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*log(c*x^n))^p*with*m*symbolic=#


    @test_int [(d*x)^m*(a + a*(m + 1)/n*log(c*x^n)), x, 1, (a*(d*x)^(1 + m)*log(c*x^n))/(d*n)]


    @test_int [(d*x)^m*(a + b*log(c*x^n))^3, x, 3, -((6*b^3*n^3*(d*x)^(1 + m))/(d*(1 + m)^4)) + (6*b^2*n^2*(d*x)^(1 + m)*(a + b*log(c*x^n)))/(d*(1 + m)^3) - (3*b*n*(d*x)^(1 + m)*(a + b*log(c*x^n))^2)/(d*(1 + m)^2) + ((d*x)^(1 + m)*(a + b*log(c*x^n))^3)/(d*(1 + m))]
    @test_int [(d*x)^m*(a + b*log(c*x^n))^2, x, 2, (2*b^2*n^2*(d*x)^(1 + m))/(d*(1 + m)^3) - (2*b*n*(d*x)^(1 + m)*(a + b*log(c*x^n)))/(d*(1 + m)^2) + ((d*x)^(1 + m)*(a + b*log(c*x^n))^2)/(d*(1 + m))]
    @test_int [(d*x)^m*(a + b*log(c*x^n))^1, x, 1, -((b*n*(d*x)^(1 + m))/(d*(1 + m)^2)) + ((d*x)^(1 + m)*(a + b*log(c*x^n)))/(d*(1 + m))]
    @test_int [(d*x)^m/(a + b*log(c*x^n))^1, x, 2, ((d*x)^(1 + m)*ExpIntegralEi(((1 + m)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(b*d*n))]
    @test_int [(d*x)^m/(a + b*log(c*x^n))^2, x, 3, ((1 + m)*(d*x)^(1 + m)*ExpIntegralEi(((1 + m)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(b^2*d*n^2)) - (d*x)^(1 + m)/(b*d*n*(a + b*log(c*x^n)))]
    @test_int [(d*x)^m/(a + b*log(c*x^n))^3, x, 4, ((1 + m)^2*(d*x)^(1 + m)*ExpIntegralEi(((1 + m)*(a + b*log(c*x^n)))/(b*n)))/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(2*b^3*d*n^3)) - (d*x)^(1 + m)/(2*b*d*n*(a + b*log(c*x^n))^2) - ((1 + m)*(d*x)^(1 + m))/(2*b^2*d*n^2*(a + b*log(c*x^n)))]


    @test_int [(d*x)^(n - 1)*log(c*x^n)^3, x, 3, -((6*(d*x)^n)/(d*n)) + (6*(d*x)^n*log(c*x^n))/(d*n) - (3*(d*x)^n*log(c*x^n)^2)/(d*n) + ((d*x)^n*log(c*x^n)^3)/(d*n)]
    @test_int [(d*x)^(n - 1)*log(c*x^n)^2, x, 2, (2*(d*x)^n)/(d*n) - (2*(d*x)^n*log(c*x^n))/(d*n) + ((d*x)^n*log(c*x^n)^2)/(d*n)]
    @test_int [(d*x)^(n - 1)*log(c*x^n)^1, x, 1, -((d*x)^n/(d*n)) + ((d*x)^n*log(c*x^n))/(d*n)]
    @test_int [(d*x)^(n - 1)/log(c*x^n)^1, x, 3, (x^(1 - n)*(d*x)^(-1 + n)*LogIntegral(c*x^n))/(c*n)]
    @test_int [(d*x)^(n - 1)/log(c*x^n)^2, x, 4, -((d*x)^n/(d*n*log(c*x^n))) + (x^(1 - n)*(d*x)^(-1 + n)*LogIntegral(c*x^n))/(c*n)]
    @test_int [(d*x)^(n - 1)/log(c*x^n)^3, x, 5, -((d*x)^n/(2*d*n*log(c*x^n)^2)) - (d*x)^n/(2*d*n*log(c*x^n)) + (x^(1 - n)*(d*x)^(-1 + n)*LogIntegral(c*x^n))/(2*c*n)]


    @test_int [x^m*log(a*x^n)^(3/2), x, 5, (3*n^(3/2)*sqrt(pi)*x^(1 + m)*Erfi((sqrt(1 + m)*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^((1 + m)/n)*(4*(1 + m)^(5/2))) - (3*n*x^(1 + m)*sqrt(log(a*x^n)))/(2*(1 + m)^2) + (x^(1 + m)*log(a*x^n)^(3/2))/(1 + m)]
    @test_int [x^m*log(a*x^n)^(1/2), x, 4, -((sqrt(n)*sqrt(pi)*x^(1 + m)*Erfi((sqrt(1 + m)*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^((1 + m)/n)*(2*(1 + m)^(3/2)))) + (x^(1 + m)*sqrt(log(a*x^n)))/(1 + m)]
    @test_int [x^m/log(a*x^n)^(1/2), x, 3, (sqrt(pi)*x^(1 + m)*Erfi((sqrt(1 + m)*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^((1 + m)/n)*(sqrt(1 + m)*sqrt(n)))]
    @test_int [x^m/log(a*x^n)^(3/2), x, 4, (2*sqrt(1 + m)*sqrt(pi)*x^(1 + m)*Erfi((sqrt(1 + m)*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^((1 + m)/n)*n^(3/2)) - (2*x^(1 + m))/(n*sqrt(log(a*x^n)))]
    @test_int [x^m/log(a*x^n)^(5/2), x, 5, (4*(1 + m)^(3/2)*sqrt(pi)*x^(1 + m)*Erfi((sqrt(1 + m)*sqrt(log(a*x^n)))/sqrt(n)))/((a*x^n)^((1 + m)/n)*(3*n^(5/2))) - (2*x^(1 + m))/(3*n*log(a*x^n)^(3/2)) - (4*(1 + m)*x^(1 + m))/(3*n^2*sqrt(log(a*x^n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*log(a*x^n))^p*with*p*symbolic=#


    @test_int [(d*x)^m*(a + b*log(c*x^n))^p, x, 2, ((d*x)^(1 + m)*Gamma(1 + p, -(((1 + m)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m))/(b*n))*(c*x^n)^((1 + m)/n)*(-(((1 + m)*(a + b*log(c*x^n)))/(b*n)))^p*(d*(1 + m)))]

    @test_int [x^2*(a + b*log(c*x^n))^p, x, 2, (3^(-1 - p)*x^3*Gamma(1 + p, -((3*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)*(-((a + b*log(c*x^n))/(b*n)))^p)]
    @test_int [x^1*(a + b*log(c*x^n))^p, x, 2, (2^(-1 - p)*x^2*Gamma(1 + p, -((2*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*(-((a + b*log(c*x^n))/(b*n)))^p)]
    @test_int [x^0*(a + b*log(c*x^n))^p, x, 2, (x*Gamma(1 + p, -((a + b*log(c*x^n))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^(a/(b*n))*(c*x^n)^n^(-1)*(-((a + b*log(c*x^n))/(b*n)))^p)]
    @test_int [(a + b*log(c*x^n))^p/x^1, x, 2, (a + b*log(c*x^n))^(1 + p)/(b*n*(1 + p))]
    @test_int [(a + b*log(c*x^n))^p/x^2, x, 2, -((ℯ^(a/(b*n))*(c*x^n)^(1/n)*Gamma(1 + p, (a + b*log(c*x^n))/(b*n))*(a + b*log(c*x^n))^p)/(((a + b*log(c*x^n))/(b*n))^p*x))]
    @test_int [(a + b*log(c*x^n))^p/x^3, x, 2, -((2^(-1 - p)*ℯ^((2*a)/(b*n))*(c*x^n)^(2/n)*Gamma(1 + p, (2*(a + b*log(c*x^n)))/(b*n))*(a + b*log(c*x^n))^p)/(((a + b*log(c*x^n))/(b*n))^p*x^2))]
    @test_int [(a + b*log(c*x^n))^p/x^4, x, 2, -((3^(-1 - p)*ℯ^((3*a)/(b*n))*(c*x^n)^(3/n)*Gamma(1 + p, (3*(a + b*log(c*x^n)))/(b*n))*(a + b*log(c*x^n))^p)/(((a + b*log(c*x^n))/(b*n))^p*x^3))]


    @test_int [(d*x)^m*(a + b*log(c*x))^p, x, 2, ((c*x)^(-1 - m)*(d*x)^(1 + m)*Gamma(1 + p, -(((1 + m)*(a + b*log(c*x)))/b))*(a + b*log(c*x))^p)/(ℯ^((a*(1 + m))/b)*(-(((1 + m)*(a + b*log(c*x)))/b))^p*(d*(1 + m)))]

    @test_int [x^2*(a + b*log(c*x))^p, x, 2, (3^(-1 - p)*Gamma(1 + p, -((3*(a + b*log(c*x)))/b))*(a + b*log(c*x))^p)/(ℯ^((3*a)/b)*(-((a + b*log(c*x))/b))^p*c^3)]
    @test_int [x^1*(a + b*log(c*x))^p, x, 2, (2^(-1 - p)*Gamma(1 + p, -((2*(a + b*log(c*x)))/b))*(a + b*log(c*x))^p)/(ℯ^((2*a)/b)*(-((a + b*log(c*x))/b))^p*c^2)]
    @test_int [x^0*(a + b*log(c*x))^p, x, 2, (Gamma(1 + p, -((a + b*log(c*x))/b))*(a + b*log(c*x))^p)/(ℯ^(a/b)*(-((a + b*log(c*x))/b))^p*c)]
    @test_int [(a + b*log(c*x))^p/x^1, x, 2, (a + b*log(c*x))^(1 + p)/(b*(1 + p))]
    @test_int [(a + b*log(c*x))^p/x^2, x, 2, ((-c)*ℯ^(a/b)*Gamma(1 + p, (a + b*log(c*x))/b)*(a + b*log(c*x))^p)/((a + b*log(c*x))/b)^p]
    @test_int [(a + b*log(c*x))^p/x^3, x, 2, ((-2^(-1 - p))*c^2*ℯ^((2*a)/b)*Gamma(1 + p, (2*(a + b*log(c*x)))/b)*(a + b*log(c*x))^p)/((a + b*log(c*x))/b)^p]
    @test_int [(a + b*log(c*x))^p/x^4, x, 2, ((-3^(-1 - p))*c^3*ℯ^((3*a)/b)*Gamma(1 + p, (3*(a + b*log(c*x)))/b)*(a + b*log(c*x))^p)/((a + b*log(c*x))/b)^p]


    @test_int [(d*x)^m*(a + b*log(c*sqrt(x)))^p, x, 2, ((d*x)^(1 + m)*Gamma(1 + p, -((2*(1 + m)*(a + b*log(c*sqrt(x))))/b))*(a + b*log(c*sqrt(x)))^p)/(2^p*ℯ^((2*a*(1 + m))/b)*(c*sqrt(x))^(2*(1 + m))*(-(((1 + m)*(a + b*log(c*sqrt(x))))/b))^p*(d*(1 + m)))]

    @test_int [x^2*(a + b*log(c*sqrt(x)))^p, x, 2, (3^(-1 - p)*Gamma(1 + p, -((6*(a + b*log(c*sqrt(x))))/b))*(a + b*log(c*sqrt(x)))^p)/(2^p*ℯ^((6*a)/b)*(-((a + b*log(c*sqrt(x)))/b))^p*c^6)]
    @test_int [x^1*(a + b*log(c*sqrt(x)))^p, x, 2, (2^(-1 - 2*p)*Gamma(1 + p, -((4*(a + b*log(c*sqrt(x))))/b))*(a + b*log(c*sqrt(x)))^p)/(ℯ^((4*a)/b)*(-((a + b*log(c*sqrt(x)))/b))^p*c^4)]
    @test_int [x^0*(a + b*log(c*sqrt(x)))^p, x, 2, (Gamma(1 + p, -((2*(a + b*log(c*sqrt(x))))/b))*(a + b*log(c*sqrt(x)))^p)/(2^p*ℯ^((2*a)/b)*(-((a + b*log(c*sqrt(x)))/b))^p*c^2)]
    @test_int [(a + b*log(c*sqrt(x)))^p/x^1, x, 2, (2*(a + b*log(c*sqrt(x)))^(1 + p))/(b*(1 + p))]
    @test_int [(a + b*log(c*sqrt(x)))^p/x^2, x, 2, ((-2^(-p))*c^2*ℯ^((2*a)/b)*Gamma(1 + p, (2*(a + b*log(c*sqrt(x))))/b)*(a + b*log(c*sqrt(x)))^p)/((a + b*log(c*sqrt(x)))/b)^p]
    @test_int [(a + b*log(c*sqrt(x)))^p/x^3, x, 2, ((-2^(-1 - 2*p))*c^4*ℯ^((4*a)/b)*Gamma(1 + p, (4*(a + b*log(c*sqrt(x))))/b)*(a + b*log(c*sqrt(x)))^p)/((a + b*log(c*sqrt(x)))/b)^p]
    @test_int [(a + b*log(c*sqrt(x)))^p/x^4, x, 2, ((-2^(-p))*3^(-1 - p)*c^6*ℯ^((6*a)/b)*Gamma(1 + p, (6*(a + b*log(c*sqrt(x))))/b)*(a + b*log(c*sqrt(x)))^p)/((a + b*log(c*sqrt(x)))/b)^p]


    @test_int [x^(n - 1)*(a + b*log(c*x^n))^p, x, 2, (Gamma(1 + p, -((a + b*log(c*x^n))/b))*(a + b*log(c*x^n))^p)/(ℯ^(a/b)*(-((a + b*log(c*x^n))/b))^p*(c*n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x^q)^m*(a+b*log(c*x^n))^p=#


    @test_int [(d*x^q)^m*(a + b*log(c*x^n))^p, x, 3, (x*(d*x^q)^m*Gamma(1 + p, -(((1 + m*q)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a + a*m*q)/(b*n))*(c*x^n)^((1 + m*q)/n)*(-(((1 + m*q)*(a + b*log(c*x^n)))/(b*n)))^p*(1 + m*q))]


    @test_int [(d1*x^q1)^m1*(d2*x^q2)^m2*(a + b*log(c*x^n))^p, x, 4, (x*(d1*x^q1)^m1*(d2*x^q2)^m2*Gamma(1 + p, -(((1 + m1*q1 + m2*q2)*(a + b*log(c*x^n)))/(b*n)))*(a + b*log(c*x^n))^p)/(ℯ^((a*(1 + m1*q1 + m2*q2))/(b*n))*(c*x^n)^((1 + m1*q1 + m2*q2)/n)*(-(((1 + m1*q1 + m2*q2)*(a + b*log(c*x^n)))/(b*n)))^p*(1 + m1*q1 + m2*q2))]
    end
