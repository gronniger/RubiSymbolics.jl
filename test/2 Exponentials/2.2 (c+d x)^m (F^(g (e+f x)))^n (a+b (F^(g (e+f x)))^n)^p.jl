@testset "2.2 (c+d x)^m (F^(g (e+f x)))^n (a+b (F^(g (e+f x)))^n)^p" begin
    @variables F, a, b, c, d, e, f, g, m, n, p, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*(F^(g*(e+f*x)))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*F^(e+f*x))^p=#


    #= ::Subsection:: =#
    #=p>0=#


    #= ::Subsection::Closed:: =#
    #=p<0=#


    @test_int [x^3/(a + b*ℯ^(c + d*x)), x, 6, x^4/(4*a) - (x^3*log(1 + (b*ℯ^(c + d*x))/a))/(a*d) - (3*x^2*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a*d^2) + (6*x*PolyLog(3, -((b*ℯ^(c + d*x))/a)))/(a*d^3) - (6*PolyLog(4, -((b*ℯ^(c + d*x))/a)))/(a*d^4)]
    @test_int [x^2/(a + b*ℯ^(c + d*x)), x, 5, x^3/(3*a) - (x^2*log(1 + (b*ℯ^(c + d*x))/a))/(a*d) - (2*x*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a*d^2) + (2*PolyLog(3, -((b*ℯ^(c + d*x))/a)))/(a*d^3)]
    @test_int [x^1/(a + b*ℯ^(c + d*x)), x, 4, x^2/(2*a) - (x*log(1 + (b*ℯ^(c + d*x))/a))/(a*d) - PolyLog(2, -((b*ℯ^(c + d*x))/a))/(a*d^2)]
    @test_int [x^0/(a + b*ℯ^(c + d*x)), x, 4, x/a - log(a + b*ℯ^(c + d*x))/(a*d)]
    @test_int [1/(x^1*(a + b*ℯ^(c + d*x))), x, 0, Unintegrable(1/((a + b*ℯ^(c + d*x))*x), x)]
    @test_int [1/(x^2*(a + b*ℯ^(c + d*x))), x, 0, Unintegrable(1/((a + b*ℯ^(c + d*x))*x^2), x)]

    @test_int [1/(a + b*ℯ^(c - d*x)), x, 4, x/a + log(a + b*ℯ^(c - d*x))/(a*d)]
    @test_int [1/(a + b*ℯ^(-c - d*x)), x, 4, x/a + log(a + b*ℯ^(-c - d*x))/(a*d)]


    @test_int [x^3/(a + b*ℯ^(c + d*x))^2, x, 13, -(x^3/(a^2*d)) + x^3/(a*d*(a + b*ℯ^(c + d*x))) + x^4/(4*a^2) + (3*x^2*log(1 + (b*ℯ^(c + d*x))/a))/(a^2*d^2) - (x^3*log(1 + (b*ℯ^(c + d*x))/a))/(a^2*d) + (6*x*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a^2*d^3) - (3*x^2*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a^2*d^2) - (6*PolyLog(3, -((b*ℯ^(c + d*x))/a)))/(a^2*d^4) + (6*x*PolyLog(3, -((b*ℯ^(c + d*x))/a)))/(a^2*d^3) - (6*PolyLog(4, -((b*ℯ^(c + d*x))/a)))/(a^2*d^4)]
    @test_int [x^2/(a + b*ℯ^(c + d*x))^2, x, 11, -(x^2/(a^2*d)) + x^2/(a*d*(a + b*ℯ^(c + d*x))) + x^3/(3*a^2) + (2*x*log(1 + (b*ℯ^(c + d*x))/a))/(a^2*d^2) - (x^2*log(1 + (b*ℯ^(c + d*x))/a))/(a^2*d) + (2*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a^2*d^3) - (2*x*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a^2*d^2) + (2*PolyLog(3, -((b*ℯ^(c + d*x))/a)))/(a^2*d^3)]
    @test_int [x^1/(a + b*ℯ^(c + d*x))^2, x, 10, -(x/(a^2*d)) + x/(a*d*(a + b*ℯ^(c + d*x))) + x^2/(2*a^2) + log(a + b*ℯ^(c + d*x))/(a^2*d^2) - (x*log(1 + (b*ℯ^(c + d*x))/a))/(a^2*d) - PolyLog(2, -((b*ℯ^(c + d*x))/a))/(a^2*d^2)]
    @test_int [x^0/(a + b*ℯ^(c + d*x))^2, x, 3, 1/(a*d*(a + b*ℯ^(c + d*x))) + x/a^2 - log(a + b*ℯ^(c + d*x))/(a^2*d)]
    @test_int [1/(x^1*(a + b*ℯ^(c + d*x))^2), x, 0, Unintegrable(1/((a + b*ℯ^(c + d*x))^2*x), x)]
    @test_int [1/(x^2*(a + b*ℯ^(c + d*x))^2), x, 0, Unintegrable(1/((a + b*ℯ^(c + d*x))^2*x^2), x)]

    @test_int [1/(a + b*ℯ^(c - d*x))^2, x, 3, -(1/(a*d*(a + b*ℯ^(c - d*x)))) + x/a^2 + log(a + b*ℯ^(c - d*x))/(a^2*d)]
    @test_int [1/(a + b*ℯ^(-c - d*x))^2, x, 3, -(1/(a*d*(a + b*ℯ^(-c - d*x)))) + x/a^2 + log(a + b*ℯ^(-c - d*x))/(a^2*d)]


    @test_int [x^3/(a + b*ℯ^(c + d*x))^3, x, 26, (3*x^2)/(2*a^3*d^2) - (3*x^2)/(2*a^2*d^2*(a + b*ℯ^(c + d*x))) - (3*x^3)/(2*a^3*d) + x^3/(2*a*d*(a + b*ℯ^(c + d*x))^2) + x^3/(a^2*d*(a + b*ℯ^(c + d*x))) + x^4/(4*a^3) - (3*x*log(1 + (b*ℯ^(c + d*x))/a))/(a^3*d^3) + (9*x^2*log(1 + (b*ℯ^(c + d*x))/a))/(2*a^3*d^2) - (x^3*log(1 + (b*ℯ^(c + d*x))/a))/(a^3*d) - (3*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a^3*d^4) + (9*x*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a^3*d^3) - (3*x^2*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a^3*d^2) - (9*PolyLog(3, -((b*ℯ^(c + d*x))/a)))/(a^3*d^4) + (6*x*PolyLog(3, -((b*ℯ^(c + d*x))/a)))/(a^3*d^3) - (6*PolyLog(4, -((b*ℯ^(c + d*x))/a)))/(a^3*d^4)]
    @test_int [x^2/(a + b*ℯ^(c + d*x))^3, x, 23, x/(a^3*d^2) - x/(a^2*d^2*(a + b*ℯ^(c + d*x))) - (3*x^2)/(2*a^3*d) + x^2/(2*a*d*(a + b*ℯ^(c + d*x))^2) + x^2/(a^2*d*(a + b*ℯ^(c + d*x))) + x^3/(3*a^3) - log(a + b*ℯ^(c + d*x))/(a^3*d^3) + (3*x*log(1 + (b*ℯ^(c + d*x))/a))/(a^3*d^2) - (x^2*log(1 + (b*ℯ^(c + d*x))/a))/(a^3*d) + (3*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a^3*d^3) - (2*x*PolyLog(2, -((b*ℯ^(c + d*x))/a)))/(a^3*d^2) + (2*PolyLog(3, -((b*ℯ^(c + d*x))/a)))/(a^3*d^3)]
    @test_int [x^1/(a + b*ℯ^(c + d*x))^3, x, 15, -(1/(2*a^2*d^2*(a + b*ℯ^(c + d*x)))) - (3*x)/(2*a^3*d) + x/(2*a*d*(a + b*ℯ^(c + d*x))^2) + x/(a^2*d*(a + b*ℯ^(c + d*x))) + x^2/(2*a^3) + (3*log(a + b*ℯ^(c + d*x)))/(2*a^3*d^2) - (x*log(1 + (b*ℯ^(c + d*x))/a))/(a^3*d) - PolyLog(2, -((b*ℯ^(c + d*x))/a))/(a^3*d^2)]
    @test_int [x^0/(a + b*ℯ^(c + d*x))^3, x, 3, 1/(2*a*d*(a + b*ℯ^(c + d*x))^2) + 1/(a^2*d*(a + b*ℯ^(c + d*x))) + x/a^3 - log(a + b*ℯ^(c + d*x))/(a^3*d)]
    @test_int [1/(x^1*(a + b*ℯ^(c + d*x))^3), x, 0, Unintegrable(1/((a + b*ℯ^(c + d*x))^3*x), x)]
    @test_int [1/(x^2*(a + b*ℯ^(c + d*x))^3), x, 0, Unintegrable(1/((a + b*ℯ^(c + d*x))^3*x^2), x)]

    @test_int [1/(a + b*ℯ^(c - d*x))^3, x, 3, -(1/(2*a*d*(a + b*ℯ^(c - d*x))^2)) - 1/(a^2*d*(a + b*ℯ^(c - d*x))) + x/a^3 + log(a + b*ℯ^(c - d*x))/(a^3*d)]
    @test_int [1/(a + b*ℯ^(-c - d*x))^3, x, 3, -(1/(2*a*d*(a + b*ℯ^(-c - d*x))^2)) - 1/(a^2*d*(a + b*ℯ^(-c - d*x))) + x/a^3 + log(a + b*ℯ^(-c - d*x))/(a^3*d)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*(F^(g*(e+f*x)))^n)^p=#


    #= ::Subsection::Closed:: =#
    #=p>0=#


    @test_int [(c + d*x)^3*(a + b*(F^(g*(e + f*x)))^n), x, 6, (a*(c + d*x)^4)/(4*d) - (6*b*d^3*(F^(e*g + f*g*x))^n)/(f^4*g^4*n^4*log(F)^4) + (6*b*d^2*(F^(e*g + f*g*x))^n*(c + d*x))/(f^3*g^3*n^3*log(F)^3) - (3*b*d*(F^(e*g + f*g*x))^n*(c + d*x)^2)/(f^2*g^2*n^2*log(F)^2) + (b*(F^(e*g + f*g*x))^n*(c + d*x)^3)/(f*g*n*log(F))]
    @test_int [(c + d*x)^2*(a + b*(F^(g*(e + f*x)))^n), x, 5, (a*(c + d*x)^3)/(3*d) + (2*b*d^2*(F^(e*g + f*g*x))^n)/(f^3*g^3*n^3*log(F)^3) - (2*b*d*(F^(e*g + f*g*x))^n*(c + d*x))/(f^2*g^2*n^2*log(F)^2) + (b*(F^(e*g + f*g*x))^n*(c + d*x)^2)/(f*g*n*log(F))]
    @test_int [(c + d*x)^1*(a + b*(F^(g*(e + f*x)))^n), x, 4, (a*(c + d*x)^2)/(2*d) - (b*d*(F^(e*g + f*g*x))^n)/(f^2*g^2*n^2*log(F)^2) + (b*(F^(e*g + f*g*x))^n*(c + d*x))/(f*g*n*log(F))]
    @test_int [(c + d*x)^0*(a + b*(F^(g*(e + f*x)))^n), x, 2, a*x + (b*(F^(g*(e + f*x)))^n)/(f*g*n*log(F))]
    @test_int [(a + b*(F^(g*(e + f*x)))^n)/(c + d*x)^1, x, 4, (b*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*ExpIntegralEi((f*g*n*(c + d*x)*log(F))/d))/d + (a*log(c + d*x))/d]
    @test_int [(a + b*(F^(g*(e + f*x)))^n)/(c + d*x)^2, x, 5, -(a/(d*(c + d*x))) - (b*(F^(e*g + f*g*x))^n)/(d*(c + d*x)) + (b*f*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*g*n*ExpIntegralEi((f*g*n*(c + d*x)*log(F))/d)*log(F))/d^2]
    @test_int [(a + b*(F^(g*(e + f*x)))^n)/(c + d*x)^3, x, 6, -(a/(2*d*(c + d*x)^2)) - (b*(F^(e*g + f*g*x))^n)/(2*d*(c + d*x)^2) - (b*f*(F^(e*g + f*g*x))^n*g*n*log(F))/(2*d^2*(c + d*x)) + (b*f^2*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*g^2*n^2*ExpIntegralEi((f*g*n*(c + d*x)*log(F))/d)*log(F)^2)/(2*d^3)]


    @test_int [(c + d*x)^3*(a + b*(F^(g*(e + f*x)))^n)^2, x, 10, (a^2*(c + d*x)^4)/(4*d) - (12*a*b*d^3*(F^(e*g + f*g*x))^n)/(f^4*g^4*n^4*log(F)^4) - (3*b^2*d^3*(F^(e*g + f*g*x))^(2*n))/(8*f^4*g^4*n^4*log(F)^4) + (12*a*b*d^2*(F^(e*g + f*g*x))^n*(c + d*x))/(f^3*g^3*n^3*log(F)^3) + (3*b^2*d^2*(F^(e*g + f*g*x))^(2*n)*(c + d*x))/(4*f^3*g^3*n^3*log(F)^3) - (6*a*b*d*(F^(e*g + f*g*x))^n*(c + d*x)^2)/(f^2*g^2*n^2*log(F)^2) - (3*b^2*d*(F^(e*g + f*g*x))^(2*n)*(c + d*x)^2)/(4*f^2*g^2*n^2*log(F)^2) + (2*a*b*(F^(e*g + f*g*x))^n*(c + d*x)^3)/(f*g*n*log(F)) + (b^2*(F^(e*g + f*g*x))^(2*n)*(c + d*x)^3)/(2*f*g*n*log(F))]
    @test_int [(c + d*x)^2*(a + b*(F^(g*(e + f*x)))^n)^2, x, 8, (a^2*(c + d*x)^3)/(3*d) + (4*a*b*d^2*(F^(e*g + f*g*x))^n)/(f^3*g^3*n^3*log(F)^3) + (b^2*d^2*(F^(e*g + f*g*x))^(2*n))/(4*f^3*g^3*n^3*log(F)^3) - (4*a*b*d*(F^(e*g + f*g*x))^n*(c + d*x))/(f^2*g^2*n^2*log(F)^2) - (b^2*d*(F^(e*g + f*g*x))^(2*n)*(c + d*x))/(2*f^2*g^2*n^2*log(F)^2) + (2*a*b*(F^(e*g + f*g*x))^n*(c + d*x)^2)/(f*g*n*log(F)) + (b^2*(F^(e*g + f*g*x))^(2*n)*(c + d*x)^2)/(2*f*g*n*log(F))]
    @test_int [(c + d*x)^1*(a + b*(F^(g*(e + f*x)))^n)^2, x, 6, (a^2*(c + d*x)^2)/(2*d) - (2*a*b*d*(F^(e*g + f*g*x))^n)/(f^2*g^2*n^2*log(F)^2) - (b^2*d*(F^(e*g + f*g*x))^(2*n))/(4*f^2*g^2*n^2*log(F)^2) + (2*a*b*(F^(e*g + f*g*x))^n*(c + d*x))/(f*g*n*log(F)) + (b^2*(F^(e*g + f*g*x))^(2*n)*(c + d*x))/(2*f*g*n*log(F))]
    @test_int [(c + d*x)^0*(a + b*(F^(g*(e + f*x)))^n)^2, x, 4, a^2*x + (2*a*b*(F^(g*(e + f*x)))^n)/(f*g*n*log(F)) + (b^2*(F^(g*(e + f*x)))^(2*n))/(2*f*g*n*log(F))]
    @test_int [(a + b*(F^(g*(e + f*x)))^n)^2/(c + d*x)^1, x, 6, (2*a*b*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*ExpIntegralEi((f*g*n*(c + d*x)*log(F))/d))/d + (b^2*F^(2*(e - (c*f)/d)*g*n - 2*g*n*(e + f*x))*(F^(e*g + f*g*x))^(2*n)*ExpIntegralEi((2*f*g*n*(c + d*x)*log(F))/d))/d + (a^2*log(c + d*x))/d]
    @test_int [(a + b*(F^(g*(e + f*x)))^n)^2/(c + d*x)^2, x, 8, -(a^2/(d*(c + d*x))) - (2*a*b*(F^(e*g + f*g*x))^n)/(d*(c + d*x)) - (b^2*(F^(e*g + f*g*x))^(2*n))/(d*(c + d*x)) + (2*a*b*f*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*g*n*ExpIntegralEi((f*g*n*(c + d*x)*log(F))/d)*log(F))/d^2 + (2*b^2*f*F^(2*(e - (c*f)/d)*g*n - 2*g*n*(e + f*x))*(F^(e*g + f*g*x))^(2*n)*g*n*ExpIntegralEi((2*f*g*n*(c + d*x)*log(F))/d)*log(F))/d^2]
    @test_int [(a + b*(F^(g*(e + f*x)))^n)^2/(c + d*x)^3, x, 10, -(a^2/(2*d*(c + d*x)^2)) - (a*b*(F^(e*g + f*g*x))^n)/(d*(c + d*x)^2) - (b^2*(F^(e*g + f*g*x))^(2*n))/(2*d*(c + d*x)^2) - (a*b*f*(F^(e*g + f*g*x))^n*g*n*log(F))/(d^2*(c + d*x)) - (b^2*f*(F^(e*g + f*g*x))^(2*n)*g*n*log(F))/(d^2*(c + d*x)) + (a*b*f^2*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*g^2*n^2*ExpIntegralEi((f*g*n*(c + d*x)*log(F))/d)*log(F)^2)/d^3 + (2*b^2*f^2*F^(2*(e - (c*f)/d)*g*n - 2*g*n*(e + f*x))*(F^(e*g + f*g*x))^(2*n)*g^2*n^2*ExpIntegralEi((2*f*g*n*(c + d*x)*log(F))/d)*log(F)^2)/d^3]


    @test_int [(c + d*x)^3*(a + b*(F^(g*(e + f*x)))^n)^3, x, 14, (a^3*(c + d*x)^4)/(4*d) - (18*a^2*b*d^3*(F^(e*g + f*g*x))^n)/(f^4*g^4*n^4*log(F)^4) - (9*a*b^2*d^3*(F^(e*g + f*g*x))^(2*n))/(8*f^4*g^4*n^4*log(F)^4) - (2*b^3*d^3*(F^(e*g + f*g*x))^(3*n))/(27*f^4*g^4*n^4*log(F)^4) + (18*a^2*b*d^2*(F^(e*g + f*g*x))^n*(c + d*x))/(f^3*g^3*n^3*log(F)^3) + (9*a*b^2*d^2*(F^(e*g + f*g*x))^(2*n)*(c + d*x))/(4*f^3*g^3*n^3*log(F)^3) + (2*b^3*d^2*(F^(e*g + f*g*x))^(3*n)*(c + d*x))/(9*f^3*g^3*n^3*log(F)^3) - (9*a^2*b*d*(F^(e*g + f*g*x))^n*(c + d*x)^2)/(f^2*g^2*n^2*log(F)^2) - (9*a*b^2*d*(F^(e*g + f*g*x))^(2*n)*(c + d*x)^2)/(4*f^2*g^2*n^2*log(F)^2) - (b^3*d*(F^(e*g + f*g*x))^(3*n)*(c + d*x)^2)/(3*f^2*g^2*n^2*log(F)^2) + (3*a^2*b*(F^(e*g + f*g*x))^n*(c + d*x)^3)/(f*g*n*log(F)) + (3*a*b^2*(F^(e*g + f*g*x))^(2*n)*(c + d*x)^3)/(2*f*g*n*log(F)) + (b^3*(F^(e*g + f*g*x))^(3*n)*(c + d*x)^3)/(3*f*g*n*log(F))]
    @test_int [(c + d*x)^2*(a + b*(F^(g*(e + f*x)))^n)^3, x, 11, (a^3*(c + d*x)^3)/(3*d) + (6*a^2*b*d^2*(F^(e*g + f*g*x))^n)/(f^3*g^3*n^3*log(F)^3) + (3*a*b^2*d^2*(F^(e*g + f*g*x))^(2*n))/(4*f^3*g^3*n^3*log(F)^3) + (2*b^3*d^2*(F^(e*g + f*g*x))^(3*n))/(27*f^3*g^3*n^3*log(F)^3) - (6*a^2*b*d*(F^(e*g + f*g*x))^n*(c + d*x))/(f^2*g^2*n^2*log(F)^2) - (3*a*b^2*d*(F^(e*g + f*g*x))^(2*n)*(c + d*x))/(2*f^2*g^2*n^2*log(F)^2) - (2*b^3*d*(F^(e*g + f*g*x))^(3*n)*(c + d*x))/(9*f^2*g^2*n^2*log(F)^2) + (3*a^2*b*(F^(e*g + f*g*x))^n*(c + d*x)^2)/(f*g*n*log(F)) + (3*a*b^2*(F^(e*g + f*g*x))^(2*n)*(c + d*x)^2)/(2*f*g*n*log(F)) + (b^3*(F^(e*g + f*g*x))^(3*n)*(c + d*x)^2)/(3*f*g*n*log(F))]
    @test_int [(c + d*x)^1*(a + b*(F^(g*(e + f*x)))^n)^3, x, 8, (a^3*(c + d*x)^2)/(2*d) - (3*a^2*b*d*(F^(e*g + f*g*x))^n)/(f^2*g^2*n^2*log(F)^2) - (3*a*b^2*d*(F^(e*g + f*g*x))^(2*n))/(4*f^2*g^2*n^2*log(F)^2) - (b^3*d*(F^(e*g + f*g*x))^(3*n))/(9*f^2*g^2*n^2*log(F)^2) + (3*a^2*b*(F^(e*g + f*g*x))^n*(c + d*x))/(f*g*n*log(F)) + (3*a*b^2*(F^(e*g + f*g*x))^(2*n)*(c + d*x))/(2*f*g*n*log(F)) + (b^3*(F^(e*g + f*g*x))^(3*n)*(c + d*x))/(3*f*g*n*log(F))]
    @test_int [(c + d*x)^0*(a + b*(F^(g*(e + f*x)))^n)^3, x, 4, a^3*x + (3*a^2*b*(F^(g*(e + f*x)))^n)/(f*g*n*log(F)) + (3*a*b^2*(F^(g*(e + f*x)))^(2*n))/(2*f*g*n*log(F)) + (b^3*(F^(g*(e + f*x)))^(3*n))/(3*f*g*n*log(F))]
    @test_int [(a + b*(F^(g*(e + f*x)))^n)^3/(c + d*x)^1, x, 8, (3*a^2*b*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*ExpIntegralEi((f*g*n*(c + d*x)*log(F))/d))/d + (3*a*b^2*F^(2*(e - (c*f)/d)*g*n - 2*g*n*(e + f*x))*(F^(e*g + f*g*x))^(2*n)*ExpIntegralEi((2*f*g*n*(c + d*x)*log(F))/d))/d + (b^3*F^(3*(e - (c*f)/d)*g*n - 3*g*n*(e + f*x))*(F^(e*g + f*g*x))^(3*n)*ExpIntegralEi((3*f*g*n*(c + d*x)*log(F))/d))/d + (a^3*log(c + d*x))/d]
    @test_int [(a + b*(F^(g*(e + f*x)))^n)^3/(c + d*x)^2, x, 11, -(a^3/(d*(c + d*x))) - (3*a^2*b*(F^(e*g + f*g*x))^n)/(d*(c + d*x)) - (3*a*b^2*(F^(e*g + f*g*x))^(2*n))/(d*(c + d*x)) - (b^3*(F^(e*g + f*g*x))^(3*n))/(d*(c + d*x)) + (3*a^2*b*f*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*g*n*ExpIntegralEi((f*g*n*(c + d*x)*log(F))/d)*log(F))/d^2 + (6*a*b^2*f*F^(2*(e - (c*f)/d)*g*n - 2*g*n*(e + f*x))*(F^(e*g + f*g*x))^(2*n)*g*n*ExpIntegralEi((2*f*g*n*(c + d*x)*log(F))/d)*log(F))/d^2 + (3*b^3*f*F^(3*(e - (c*f)/d)*g*n - 3*g*n*(e + f*x))*(F^(e*g + f*g*x))^(3*n)*g*n*ExpIntegralEi((3*f*g*n*(c + d*x)*log(F))/d)*log(F))/d^2]
    @test_int [(a + b*(F^(g*(e + f*x)))^n)^3/(c + d*x)^3, x, 14, -(a^3/(2*d*(c + d*x)^2)) - (3*a^2*b*(F^(e*g + f*g*x))^n)/(2*d*(c + d*x)^2) - (3*a*b^2*(F^(e*g + f*g*x))^(2*n))/(2*d*(c + d*x)^2) - (b^3*(F^(e*g + f*g*x))^(3*n))/(2*d*(c + d*x)^2) - (3*a^2*b*f*(F^(e*g + f*g*x))^n*g*n*log(F))/(2*d^2*(c + d*x)) - (3*a*b^2*f*(F^(e*g + f*g*x))^(2*n)*g*n*log(F))/(d^2*(c + d*x)) - (3*b^3*f*(F^(e*g + f*g*x))^(3*n)*g*n*log(F))/(2*d^2*(c + d*x)) + (3*a^2*b*f^2*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*g^2*n^2*ExpIntegralEi((f*g*n*(c + d*x)*log(F))/d)*log(F)^2)/(2*d^3) + (6*a*b^2*f^2*F^(2*(e - (c*f)/d)*g*n - 2*g*n*(e + f*x))*(F^(e*g + f*g*x))^(2*n)*g^2*n^2*ExpIntegralEi((2*f*g*n*(c + d*x)*log(F))/d)*log(F)^2)/d^3 + (9*b^3*f^2*F^(3*(e - (c*f)/d)*g*n - 3*g*n*(e + f*x))*(F^(e*g + f*g*x))^(3*n)*g^2*n^2*ExpIntegralEi((3*f*g*n*(c + d*x)*log(F))/d)*log(F)^2)/(2*d^3)]


    #= ::Subsection::Closed:: =#
    #=p<0=#


    @test_int [(c + d*x)^3/(a + b*(F^(g*(e + f*x)))^n), x, 6, (c + d*x)^4/(4*a*d) - ((c + d*x)^3*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a*f*g*n*log(F)) - (3*d*(c + d*x)^2*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a*f^2*g^2*n^2*log(F)^2) + (6*d^2*(c + d*x)*PolyLog(3, -((b*(F^(g*(e + f*x)))^n)/a)))/(a*f^3*g^3*n^3*log(F)^3) - (6*d^3*PolyLog(4, -((b*(F^(g*(e + f*x)))^n)/a)))/(a*f^4*g^4*n^4*log(F)^4)]
    @test_int [(c + d*x)^2/(a + b*(F^(g*(e + f*x)))^n), x, 5, (c + d*x)^3/(3*a*d) - ((c + d*x)^2*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a*f*g*n*log(F)) - (2*d*(c + d*x)*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a*f^2*g^2*n^2*log(F)^2) + (2*d^2*PolyLog(3, -((b*(F^(g*(e + f*x)))^n)/a)))/(a*f^3*g^3*n^3*log(F)^3)]
    @test_int [(c + d*x)^1/(a + b*(F^(g*(e + f*x)))^n), x, 4, (c + d*x)^2/(2*a*d) - ((c + d*x)*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a*f*g*n*log(F)) - (d*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a*f^2*g^2*n^2*log(F)^2)]
    @test_int [(c + d*x)^0/(a + b*(F^(g*(e + f*x)))^n), x, 5, x/a - log(a + b*(F^(g*(e + f*x)))^n)/(a*f*g*n*log(F))]
    @test_int [1/((c + d*x)^1*(a + b*(F^(g*(e + f*x)))^n)), x, 1, Unintegrable(1/((a + b*(F^(e*g + f*g*x))^n)*(c + d*x)), x)]
    @test_int [1/((c + d*x)^2*(a + b*(F^(g*(e + f*x)))^n)), x, 1, Unintegrable(1/((a + b*(F^(e*g + f*g*x))^n)*(c + d*x)^2), x)]


    @test_int [(c + d*x)^3/(a + b*(F^(g*(e + f*x)))^n)^2, x, 13, (c + d*x)^4/(4*a^2*d) - (c + d*x)^3/(a^2*f*g*n*log(F)) + (c + d*x)^3/(a*f*(a + b*(F^(g*(e + f*x)))^n)*g*n*log(F)) + (3*d*(c + d*x)^2*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^2*f^2*g^2*n^2*log(F)^2) - ((c + d*x)^3*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^2*f*g*n*log(F)) + (6*d^2*(c + d*x)*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^2*f^3*g^3*n^3*log(F)^3) - (3*d*(c + d*x)^2*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^2*f^2*g^2*n^2*log(F)^2) - (6*d^3*PolyLog(3, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^2*f^4*g^4*n^4*log(F)^4) + (6*d^2*(c + d*x)*PolyLog(3, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^2*f^3*g^3*n^3*log(F)^3) - (6*d^3*PolyLog(4, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^2*f^4*g^4*n^4*log(F)^4)]
    @test_int [(c + d*x)^2/(a + b*(F^(g*(e + f*x)))^n)^2, x, 11, (c + d*x)^3/(3*a^2*d) - (c + d*x)^2/(a^2*f*g*n*log(F)) + (c + d*x)^2/(a*f*(a + b*(F^(g*(e + f*x)))^n)*g*n*log(F)) + (2*d*(c + d*x)*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^2*f^2*g^2*n^2*log(F)^2) - ((c + d*x)^2*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^2*f*g*n*log(F)) + (2*d^2*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^2*f^3*g^3*n^3*log(F)^3) - (2*d*(c + d*x)*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^2*f^2*g^2*n^2*log(F)^2) + (2*d^2*PolyLog(3, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^2*f^3*g^3*n^3*log(F)^3)]
    @test_int [(c + d*x)^1/(a + b*(F^(g*(e + f*x)))^n)^2, x, 11, (c + d*x)^2/(2*a^2*d) - (d*x)/(a^2*f*g*n*log(F)) + (c + d*x)/(a*f*(a + b*(F^(g*(e + f*x)))^n)*g*n*log(F)) + (d*log(a + b*(F^(g*(e + f*x)))^n))/(a^2*f^2*g^2*n^2*log(F)^2) - ((c + d*x)*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^2*f*g*n*log(F)) - (d*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^2*f^2*g^2*n^2*log(F)^2)]
    @test_int [(c + d*x)^0/(a + b*(F^(g*(e + f*x)))^n)^2, x, 4, x/a^2 + 1/(a*f*(a + b*(F^(g*(e + f*x)))^n)*g*n*log(F)) - log(a + b*(F^(g*(e + f*x)))^n)/(a^2*f*g*n*log(F))]
    @test_int [1/((c + d*x)^1*(a + b*(F^(g*(e + f*x)))^n)^2), x, 1, Unintegrable(1/((a + b*(F^(e*g + f*g*x))^n)^2*(c + d*x)), x)]
    @test_int [1/((c + d*x)^2*(a + b*(F^(g*(e + f*x)))^n)^2), x, 1, Unintegrable(1/((a + b*(F^(e*g + f*g*x))^n)^2*(c + d*x)^2), x)]


    @test_int [(c + d*x)^3/(a + b*(F^(g*(e + f*x)))^n)^3, x, 26, (c + d*x)^4/(4*a^3*d) + (3*d*(c + d*x)^2)/(2*a^3*f^2*g^2*n^2*log(F)^2) - (3*d*(c + d*x)^2)/(2*a^2*f^2*(a + b*(F^(g*(e + f*x)))^n)*g^2*n^2*log(F)^2) - (3*(c + d*x)^3)/(2*a^3*f*g*n*log(F)) + (c + d*x)^3/(2*a*f*(a + b*(F^(g*(e + f*x)))^n)^2*g*n*log(F)) + (c + d*x)^3/(a^2*f*(a + b*(F^(g*(e + f*x)))^n)*g*n*log(F)) - (3*d^2*(c + d*x)*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^3*f^3*g^3*n^3*log(F)^3) + (9*d*(c + d*x)^2*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(2*a^3*f^2*g^2*n^2*log(F)^2) - ((c + d*x)^3*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^3*f*g*n*log(F)) - (3*d^3*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^4*g^4*n^4*log(F)^4) + (9*d^2*(c + d*x)*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^3*g^3*n^3*log(F)^3) - (3*d*(c + d*x)^2*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^2*g^2*n^2*log(F)^2) - (9*d^3*PolyLog(3, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^4*g^4*n^4*log(F)^4) + (6*d^2*(c + d*x)*PolyLog(3, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^3*g^3*n^3*log(F)^3) - (6*d^3*PolyLog(4, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^4*g^4*n^4*log(F)^4)]
    @test_int [(c + d*x)^2/(a + b*(F^(g*(e + f*x)))^n)^3, x, 24, (c + d*x)^3/(3*a^3*d) + (d^2*x)/(a^3*f^2*g^2*n^2*log(F)^2) - (d*(c + d*x))/(a^2*f^2*(a + b*(F^(g*(e + f*x)))^n)*g^2*n^2*log(F)^2) - (3*(c + d*x)^2)/(2*a^3*f*g*n*log(F)) + (c + d*x)^2/(2*a*f*(a + b*(F^(g*(e + f*x)))^n)^2*g*n*log(F)) + (c + d*x)^2/(a^2*f*(a + b*(F^(g*(e + f*x)))^n)*g*n*log(F)) - (d^2*log(a + b*(F^(g*(e + f*x)))^n))/(a^3*f^3*g^3*n^3*log(F)^3) + (3*d*(c + d*x)*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^3*f^2*g^2*n^2*log(F)^2) - ((c + d*x)^2*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^3*f*g*n*log(F)) + (3*d^2*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^3*g^3*n^3*log(F)^3) - (2*d*(c + d*x)*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^2*g^2*n^2*log(F)^2) + (2*d^2*PolyLog(3, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^3*g^3*n^3*log(F)^3)]
    @test_int [(c + d*x)^1/(a + b*(F^(g*(e + f*x)))^n)^3, x, 17, (c + d*x)^2/(2*a^3*d) - d/(2*a^2*f^2*(a + b*(F^(g*(e + f*x)))^n)*g^2*n^2*log(F)^2) - (3*d*x)/(2*a^3*f*g*n*log(F)) + (c + d*x)/(2*a*f*(a + b*(F^(g*(e + f*x)))^n)^2*g*n*log(F)) + (c + d*x)/(a^2*f*(a + b*(F^(g*(e + f*x)))^n)*g*n*log(F)) + (3*d*log(a + b*(F^(g*(e + f*x)))^n))/(2*a^3*f^2*g^2*n^2*log(F)^2) - ((c + d*x)*log(1 + (b*(F^(g*(e + f*x)))^n)/a))/(a^3*f*g*n*log(F)) - (d*PolyLog(2, -((b*(F^(g*(e + f*x)))^n)/a)))/(a^3*f^2*g^2*n^2*log(F)^2)]
    @test_int [(c + d*x)^0/(a + b*(F^(g*(e + f*x)))^n)^3, x, 4, x/a^3 + 1/(2*a*f*(a + b*(F^(g*(e + f*x)))^n)^2*g*n*log(F)) + 1/(a^2*f*(a + b*(F^(g*(e + f*x)))^n)*g*n*log(F)) - log(a + b*(F^(g*(e + f*x)))^n)/(a^3*f*g*n*log(F))]
    @test_int [1/((c + d*x)^1*(a + b*(F^(g*(e + f*x)))^n)^3), x, 1, Unintegrable(1/((a + b*(F^(e*g + f*g*x))^n)^3*(c + d*x)), x)]
    @test_int [1/((c + d*x)^2*(a + b*(F^(g*(e + f*x)))^n)^3), x, 1, Unintegrable(1/((a + b*(F^(e*g + f*g*x))^n)^3*(c + d*x)^2), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^(m/2)*(a+b*(F^(g*(e+f*x)))^n)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(c + d*x)*(a + b*ℯ^x), x, 5, b*ℯ^x*sqrt(c + d*x) + (2*a*(c + d*x)^(3/2))/(3*d) - ((1/2)*b*sqrt(d)*sqrt(pi)*Erfi(sqrt(c + d*x)/sqrt(d)))/ℯ^(c/d)]


    @test_int [sqrt(c + d*x)*(a + b*ℯ^x)^2, x, 8, 2*a*b*ℯ^x*sqrt(c + d*x) + (1/2)*b^2*ℯ^(2*x)*sqrt(c + d*x) + (2*a^2*(c + d*x)^(3/2))/(3*d) - (a*b*sqrt(d)*sqrt(pi)*Erfi(sqrt(c + d*x)/sqrt(d)))/ℯ^(c/d) - ((1/4)*b^2*sqrt(d)*sqrt(pi/2)*Erfi((sqrt(2)*sqrt(c + d*x))/sqrt(d)))/ℯ^((2*c)/d)]


    @test_int [sqrt(c + d*x)*(a + b*ℯ^x)^3, x, 11, 3*a^2*b*ℯ^x*sqrt(c + d*x) + (3/2)*a*b^2*ℯ^(2*x)*sqrt(c + d*x) + (1/3)*b^3*ℯ^(3*x)*sqrt(c + d*x) + (2*a^3*(c + d*x)^(3/2))/(3*d) - ((3/2)*a^2*b*sqrt(d)*sqrt(pi)*Erfi(sqrt(c + d*x)/sqrt(d)))/ℯ^(c/d) - ((3/4)*a*b^2*sqrt(d)*sqrt(pi/2)*Erfi((sqrt(2)*sqrt(c + d*x))/sqrt(d)))/ℯ^((2*c)/d) - ((1/6)*b^3*sqrt(d)*sqrt(pi/3)*Erfi((sqrt(3)*sqrt(c + d*x))/sqrt(d)))/ℯ^((3*c)/d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sqrt(c + d*x)/(a + b*ℯ^x), x, 0, Unintegrable(sqrt(c + d*x)/(a + b*ℯ^x), x)]


    @test_int [sqrt(c + d*x)/(a + b*ℯ^x)^2, x, 0, Unintegrable(sqrt(c + d*x)/(a + b*ℯ^x)^2, x)]


    @test_int [sqrt(c + d*x)/(a + b*ℯ^x)^3, x, 0, Unintegrable(sqrt(c + d*x)/(a + b*ℯ^x)^3, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*(F^(g*(e+f*x)))^n)^p*with*m*symbolic=#


    @test_int [(c + d*x)^m*(a + b*(F^(g*(e + f*x)))^n)^3, x, 8, (a^3*(c + d*x)^(1 + m))/(d*(1 + m)) + (3^(-1 - m)*b^3*F^(3*(e - (c*f)/d)*g*n - 3*g*n*(e + f*x))*(F^(e*g + f*g*x))^(3*n)*(c + d*x)^m*Gamma(1 + m, -((3*f*g*n*(c + d*x)*log(F))/d)))/((-((f*g*n*(c + d*x)*log(F))/d))^m*(f*g*n*log(F))) + (3*2^(-1 - m)*a*b^2*F^(2*(e - (c*f)/d)*g*n - 2*g*n*(e + f*x))*(F^(e*g + f*g*x))^(2*n)*(c + d*x)^m*Gamma(1 + m, -((2*f*g*n*(c + d*x)*log(F))/d)))/((-((f*g*n*(c + d*x)*log(F))/d))^m*(f*g*n*log(F))) + (3*a^2*b*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*(c + d*x)^m*Gamma(1 + m, -((f*g*n*(c + d*x)*log(F))/d)))/((-((f*g*n*(c + d*x)*log(F))/d))^m*(f*g*n*log(F)))]
    @test_int [(c + d*x)^m*(a + b*(F^(g*(e + f*x)))^n)^2, x, 6, (a^2*(c + d*x)^(1 + m))/(d*(1 + m)) + (2^(-1 - m)*b^2*F^(2*(e - (c*f)/d)*g*n - 2*g*n*(e + f*x))*(F^(e*g + f*g*x))^(2*n)*(c + d*x)^m*Gamma(1 + m, -((2*f*g*n*(c + d*x)*log(F))/d)))/((-((f*g*n*(c + d*x)*log(F))/d))^m*(f*g*n*log(F))) + (2*a*b*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*(c + d*x)^m*Gamma(1 + m, -((f*g*n*(c + d*x)*log(F))/d)))/((-((f*g*n*(c + d*x)*log(F))/d))^m*(f*g*n*log(F)))]
    @test_int [(c + d*x)^m*(a + b*(F^(g*(e + f*x)))^n)^1, x, 4, (a*(c + d*x)^(1 + m))/(d*(1 + m)) + (b*F^((e - (c*f)/d)*g*n - g*n*(e + f*x))*(F^(e*g + f*g*x))^n*(c + d*x)^m*Gamma(1 + m, -((f*g*n*(c + d*x)*log(F))/d)))/((-((f*g*n*(c + d*x)*log(F))/d))^m*(f*g*n*log(F)))]
    @test_int [(c + d*x)^m/(a + b*(F^(g*(e + f*x)))^n)^1, x, 1, Unintegrable((c + d*x)^m/(a + b*(F^(e*g + f*g*x))^n), x)]
    @test_int [(c + d*x)^m/(a + b*(F^(g*(e + f*x)))^n)^2, x, 1, Unintegrable((c + d*x)^m/(a + b*(F^(e*g + f*g*x))^n)^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(a+b*(F^(g*(e+f*x)))^n)^p*with*p*symbolic=#


    @test_int [(c + d*x)^m*(a + b*(F^(g*(e + f*x)))^n)^p, x, 1, Unintegrable((a + b*(F^(e*g + f*g*x))^n)^p*(c + d*x)^m, x)]


    #= ::Title:: =#
    #=Integrands*of*the*form*(c+d*x)^m*(F^(g*(e+f*x)))^n*(a+b*(F^(g*(e+f*x)))^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*F^(e+f*x)*(a+b*F^(e+f*x))^n=#


    @test_int [x^3*F^(c + d*x)/(a + b*F^(c + d*x)), x, 5, (x^3*log(1 + (b*F^(c + d*x))/a))/(b*d*log(F)) + (3*x^2*PolyLog(2, -((b*F^(c + d*x))/a)))/(b*d^2*log(F)^2) - (6*x*PolyLog(3, -((b*F^(c + d*x))/a)))/(b*d^3*log(F)^3) + (6*PolyLog(4, -((b*F^(c + d*x))/a)))/(b*d^4*log(F)^4)]
    @test_int [x^2*F^(c + d*x)/(a + b*F^(c + d*x)), x, 4, (x^2*log(1 + (b*F^(c + d*x))/a))/(b*d*log(F)) + (2*x*PolyLog(2, -((b*F^(c + d*x))/a)))/(b*d^2*log(F)^2) - (2*PolyLog(3, -((b*F^(c + d*x))/a)))/(b*d^3*log(F)^3)]
    @test_int [x^1*F^(c + d*x)/(a + b*F^(c + d*x)), x, 3, (x*log(1 + (b*F^(c + d*x))/a))/(b*d*log(F)) + PolyLog(2, -((b*F^(c + d*x))/a))/(b*d^2*log(F)^2)]
    @test_int [x^0*F^(c + d*x)/(a + b*F^(c + d*x)), x, 2, log(a + b*F^(c + d*x))/(b*d*log(F))]
    @test_int [1/x^1*F^(c + d*x)/(a + b*F^(c + d*x)), x, 0, Unintegrable(F^(c + d*x)/((a + b*F^(c + d*x))*x), x)]
    @test_int [1/x^2*F^(c + d*x)/(a + b*F^(c + d*x)), x, 0, Unintegrable(F^(c + d*x)/((a + b*F^(c + d*x))*x^2), x)]


    @test_int [x^3*F^(c + d*x)/(a + b*F^(c + d*x))^2, x, 6, x^3/(a*b*d*log(F)) - x^3/(b*d*(a + b*F^(c + d*x))*log(F)) - (3*x^2*log(1 + (b*F^(c + d*x))/a))/(a*b*d^2*log(F)^2) - (6*x*PolyLog(2, -((b*F^(c + d*x))/a)))/(a*b*d^3*log(F)^3) + (6*PolyLog(3, -((b*F^(c + d*x))/a)))/(a*b*d^4*log(F)^4)]
    @test_int [x^2*F^(c + d*x)/(a + b*F^(c + d*x))^2, x, 5, x^2/(a*b*d*log(F)) - x^2/(b*d*(a + b*F^(c + d*x))*log(F)) - (2*x*log(1 + (b*F^(c + d*x))/a))/(a*b*d^2*log(F)^2) - (2*PolyLog(2, -((b*F^(c + d*x))/a)))/(a*b*d^3*log(F)^3)]
    @test_int [x^1*F^(c + d*x)/(a + b*F^(c + d*x))^2, x, 5, x/(a*b*d*log(F)) - x/(b*d*(a + b*F^(c + d*x))*log(F)) - log(a + b*F^(c + d*x))/(a*b*d^2*log(F)^2)]
    @test_int [x^0*F^(c + d*x)/(a + b*F^(c + d*x))^2, x, 2, -(1/(b*d*(a + b*F^(c + d*x))*log(F)))]
    @test_int [1/x^1*F^(c + d*x)/(a + b*F^(c + d*x))^2, x, 1, -(1/(b*d*(a + b*F^(c + d*x))*x*log(F))) - Unintegrable(1/((a + b*F^(c + d*x))*x^2), x)/(b*d*log(F))]
    @test_int [1/x^2*F^(c + d*x)/(a + b*F^(c + d*x))^2, x, 1, -(1/(b*d*(a + b*F^(c + d*x))*x^2*log(F))) - (2*Unintegrable(1/((a + b*F^(c + d*x))*x^3), x))/(b*d*log(F))]


    @test_int [x^3*F^(c + d*x)/(a + b*F^(c + d*x))^3, x, 12, -((3*x^2)/(2*a^2*b*d^2*log(F)^2)) + (3*x^2)/(2*a*b*d^2*(a + b*F^(c + d*x))*log(F)^2) + x^3/(2*a^2*b*d*log(F)) - x^3/(2*b*d*(a + b*F^(c + d*x))^2*log(F)) + (3*x*log(1 + (b*F^(c + d*x))/a))/(a^2*b*d^3*log(F)^3) - (3*x^2*log(1 + (b*F^(c + d*x))/a))/(2*a^2*b*d^2*log(F)^2) + (3*PolyLog(2, -((b*F^(c + d*x))/a)))/(a^2*b*d^4*log(F)^4) - (3*x*PolyLog(2, -((b*F^(c + d*x))/a)))/(a^2*b*d^3*log(F)^3) + (3*PolyLog(3, -((b*F^(c + d*x))/a)))/(a^2*b*d^4*log(F)^4)]
    @test_int [x^2*F^(c + d*x)/(a + b*F^(c + d*x))^3, x, 11, -(x/(a^2*b*d^2*log(F)^2)) + x/(a*b*d^2*(a + b*F^(c + d*x))*log(F)^2) + x^2/(2*a^2*b*d*log(F)) - x^2/(2*b*d*(a + b*F^(c + d*x))^2*log(F)) + log(a + b*F^(c + d*x))/(a^2*b*d^3*log(F)^3) - (x*log(1 + (b*F^(c + d*x))/a))/(a^2*b*d^2*log(F)^2) - PolyLog(2, -((b*F^(c + d*x))/a))/(a^2*b*d^3*log(F)^3)]
    @test_int [x^1*F^(c + d*x)/(a + b*F^(c + d*x))^3, x, 4, 1/(2*a*b*d^2*(a + b*F^(c + d*x))*log(F)^2) + x/(2*a^2*b*d*log(F)) - x/(2*b*d*(a + b*F^(c + d*x))^2*log(F)) - log(a + b*F^(c + d*x))/(2*a^2*b*d^2*log(F)^2)]
    @test_int [x^0*F^(c + d*x)/(a + b*F^(c + d*x))^3, x, 2, -(1/(2*b*d*(a + b*F^(c + d*x))^2*log(F)))]
    @test_int [1/x^1*F^(c + d*x)/(a + b*F^(c + d*x))^3, x, 1, -(1/(2*b*d*(a + b*F^(c + d*x))^2*x*log(F))) - Unintegrable(1/((a + b*F^(c + d*x))^2*x^2), x)/(2*b*d*log(F))]
    @test_int [1/x^2*F^(c + d*x)/(a + b*F^(c + d*x))^3, x, 1, -(1/(2*b*d*(a + b*F^(c + d*x))^2*x^2*log(F))) - Unintegrable(1/((a + b*F^(c + d*x))^2*x^3), x)/(b*d*log(F))]
    end
