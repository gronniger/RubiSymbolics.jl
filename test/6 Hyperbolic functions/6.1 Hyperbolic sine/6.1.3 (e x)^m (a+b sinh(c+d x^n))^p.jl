@testset "6.1.3 (e x)^m (a+b sinh(c+d x^n))^p" begin
    (a, b, c, d, e, m, n, p, x, ) = @variables a b c d e m n p x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d*x^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d*x^2))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*sinh(c+d*x^2))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^3*sinh(a + b*x^2), x, 3, (x^2*cosh(a + b*x^2))/(2*b) - sinh(a + b*x^2)/(2*b^2)]
    @test_int [x^2*sinh(a + b*x^2), x, 4, (x*cosh(a + b*x^2))/(2*b) - (sqrt(pi)*erf(sqrt(b)*x))/(ℯ^a*(8*b^(3/2))) - (ℯ^a*sqrt(pi)*erfi(sqrt(b)*x))/(8*b^(3/2))]
    @test_int [x*sinh(a + b*x^2), x, 2, cosh(a + b*x^2)/(2*b)]
    @test_int [sinh(a + b*x^2), x, 3, -((sqrt(pi)*erf(sqrt(b)*x))/(ℯ^a*(4*sqrt(b)))) + (ℯ^a*sqrt(pi)*erfi(sqrt(b)*x))/(4*sqrt(b))]
    @test_int [sinh(a + b*x^2)/x, x, 3, (1/2)*CoshIntegral(b*x^2)*sinh(a) + (1/2)*cosh(a)*SinhIntegral(b*x^2)]
    @test_int [sinh(a + b*x^2)/x^2, x, 4, ((1/2)*sqrt(b)*sqrt(pi)*erf(sqrt(b)*x))/ℯ^a + (1/2)*sqrt(b)*ℯ^a*sqrt(pi)*erfi(sqrt(b)*x) - sinh(a + b*x^2)/x]
    @test_int [sinh(a + b*x^2)/x^3, x, 5, (1/2)*b*cosh(a)*CoshIntegral(b*x^2) - sinh(a + b*x^2)/(2*x^2) + (1/2)*b*sinh(a)*SinhIntegral(b*x^2)]


    @test_int [x^3*sinh(a + b*x^2)^2, x, 3, -(x^4/8) + (x^2*cosh(a + b*x^2)*sinh(a + b*x^2))/(4*b) - sinh(a + b*x^2)^2/(8*b^2)]
    @test_int [x^2*sinh(a + b*x^2)^2, x, 6, -(x^3/6) + (sqrt(pi/2)*erf(sqrt(2)*sqrt(b)*x))/(ℯ^(2*a)*(32*b^(3/2))) - (ℯ^(2*a)*sqrt(pi/2)*erfi(sqrt(2)*sqrt(b)*x))/(32*b^(3/2)) + (x*sinh(2*a + 2*b*x^2))/(8*b)]
    @test_int [x*sinh(a + b*x^2)^2, x, 3, -(x^2/4) + (cosh(a + b*x^2)*sinh(a + b*x^2))/(4*b)]
    @test_int [sinh(a + b*x^2)^2, x, 5, -(x/2) + (sqrt(pi/2)*erf(sqrt(2)*sqrt(b)*x))/(ℯ^(2*a)*(8*sqrt(b))) + (ℯ^(2*a)*sqrt(pi/2)*erfi(sqrt(2)*sqrt(b)*x))/(8*sqrt(b))]
    @test_int [sinh(a + b*x^2)^2/x, x, 5, (1/4)*cosh(2*a)*CoshIntegral(2*b*x^2) - log(x)/2 + (1/4)*sinh(2*a)*SinhIntegral(2*b*x^2)]
    @test_int [sinh(a + b*x^2)^2/x^2, x, 6, ((-(1/2))*sqrt(b)*sqrt(pi/2)*erf(sqrt(2)*sqrt(b)*x))/ℯ^(2*a) + (1/2)*sqrt(b)*ℯ^(2*a)*sqrt(pi/2)*erfi(sqrt(2)*sqrt(b)*x) - sinh(a + b*x^2)^2/x]
    @test_int [sinh(a + b*x^2)^2/x^3, x, 7, 1/(4*x^2) - cosh(2*(a + b*x^2))/(4*x^2) + (1/2)*b*CoshIntegral(2*b*x^2)*sinh(2*a) + (1/2)*b*cosh(2*a)*SinhIntegral(2*b*x^2)]


    @test_int [x^3*sinh(a + b*x^2)^3, x, 4, -((x^2*cosh(a + b*x^2))/(3*b)) + sinh(a + b*x^2)/(3*b^2) + (x^2*cosh(a + b*x^2)*sinh(a + b*x^2)^2)/(6*b) - sinh(a + b*x^2)^3/(18*b^2)]
    @test_int [x^2*sinh(a + b*x^2)^3, x, 10, -((3*x*cosh(a + b*x^2))/(8*b)) + (x*cosh(3*a + 3*b*x^2))/(24*b) + (3*sqrt(pi)*erf(sqrt(b)*x))/(ℯ^a*(32*b^(3/2))) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(b)*x))/(ℯ^(3*a)*(96*b^(3/2))) + (3*ℯ^a*sqrt(pi)*erfi(sqrt(b)*x))/(32*b^(3/2)) - (ℯ^(3*a)*sqrt(pi/3)*erfi(sqrt(3)*sqrt(b)*x))/(96*b^(3/2))]
    @test_int [x*sinh(a + b*x^2)^3, x, 3, -(cosh(a + b*x^2)/(2*b)) + cosh(a + b*x^2)^3/(6*b)]
    @test_int [sinh(a + b*x^2)^3, x, 8, (3*sqrt(pi)*erf(sqrt(b)*x))/(ℯ^a*(16*sqrt(b))) - (sqrt(pi/3)*erf(sqrt(3)*sqrt(b)*x))/(ℯ^(3*a)*(16*sqrt(b))) - (3*ℯ^a*sqrt(pi)*erfi(sqrt(b)*x))/(16*sqrt(b)) + (ℯ^(3*a)*sqrt(pi/3)*erfi(sqrt(3)*sqrt(b)*x))/(16*sqrt(b))]
    @test_int [sinh(a + b*x^2)^3/x, x, 8, (-(3/8))*CoshIntegral(b*x^2)*sinh(a) + (1/8)*CoshIntegral(3*b*x^2)*sinh(3*a) - (3/8)*cosh(a)*SinhIntegral(b*x^2) + (1/8)*cosh(3*a)*SinhIntegral(3*b*x^2)]
    @test_int [sinh(a + b*x^2)^3/x^2, x, 9, ((-(3/8))*sqrt(b)*sqrt(pi)*erf(sqrt(b)*x))/ℯ^a + ((1/8)*sqrt(b)*sqrt(3*pi)*erf(sqrt(3)*sqrt(b)*x))/ℯ^(3*a) - (3/8)*sqrt(b)*ℯ^a*sqrt(pi)*erfi(sqrt(b)*x) + (1/8)*sqrt(b)*ℯ^(3*a)*sqrt(3*pi)*erfi(sqrt(3)*sqrt(b)*x) - sinh(a + b*x^2)^3/x]
    @test_int [sinh(a + b*x^2)^3/x^3, x, 12, (-(3/8))*b*cosh(a)*CoshIntegral(b*x^2) + (3/8)*b*cosh(3*a)*CoshIntegral(3*b*x^2) + (3*sinh(a + b*x^2))/(8*x^2) - sinh(3*(a + b*x^2))/(8*x^2) - (3/8)*b*sinh(a)*SinhIntegral(b*x^2) + (3/8)*b*sinh(3*a)*SinhIntegral(3*b*x^2)]


    @test_int [x*sinh(a + b*x^2)^7, x, 3, -(cosh(a + b*x^2)/(2*b)) + cosh(a + b*x^2)^3/(2*b) - (3*cosh(a + b*x^2)^5)/(10*b) + cosh(a + b*x^2)^7/(14*b)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d*x^2))^p*with*m*symbolic=#


    @test_int [(e*x)^m*sinh(a + b*x^2)^p, x, 0, Unintegrable((e*x)^m*sinh(a + b*x^2)^p, x)]


    @test_int [(e*x)^m*sinh(a + b*x^2)^3, x, 8, -((3^(-(1/2) - m/2)*ℯ^(3*a)*(e*x)^(1 + m)*((-b)*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, -3*b*x^2))/(16*e)) + (3*ℯ^a*(e*x)^(1 + m)*((-b)*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, (-b)*x^2))/(16*e) - (3*(e*x)^(1 + m)*(b*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, b*x^2))/(ℯ^a*(16*e)) + (3^(-(1/2) - m/2)*(e*x)^(1 + m)*(b*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, 3*b*x^2))/(ℯ^(3*a)*(16*e))]
    @test_int [(e*x)^m*sinh(a + b*x^2)^2, x, 5, -((e*x)^(1 + m)/(2*e*(1 + m))) - (2^(-(7/2) - m/2)*ℯ^(2*a)*(e*x)^(1 + m)*((-b)*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, -2*b*x^2))/e - (2^(-(7/2) - m/2)*(e*x)^(1 + m)*(b*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, 2*b*x^2))/(ℯ^(2*a)*e)]
    @test_int [(e*x)^m*sinh(a + b*x^2)^1, x, 3, -((ℯ^a*(e*x)^(1 + m)*((-b)*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, (-b)*x^2))/(4*e)) + ((e*x)^(1 + m)*(b*x^2)^((1/2)*(-1 - m))*Gamma((1 + m)/2, b*x^2))/(ℯ^a*(4*e))]
    @test_int [(e*x)^m/sinh(a + b*x^2)^1, x, 1, ((e*x)^m*Unintegrable(x^m*csch(a + b*x^2), x))/x^m]


    #= ::Section:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d*x^3))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d*x^4))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*sinh(c+d*x^2))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^3*sinh(a + b*x^4), x, 2, cosh(a + b*x^4)/(4*b)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d / x^1))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*sinh(c+d / x))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sinh(a + b/x)*x^2, x, 7, (1/6)*b*x^2*cosh(a + b/x) - (1/6)*b^3*cosh(a)*CoshIntegral(b/x) + (1/6)*b^2*x*sinh(a + b/x) + (1/3)*x^3*sinh(a + b/x) - (1/6)*b^3*sinh(a)*SinhIntegral(b/x)]
    @test_int [sinh(a + b/x)*x^1, x, 6, (1/2)*b*x*cosh(a + b/x) - (1/2)*b^2*CoshIntegral(b/x)*sinh(a) + (1/2)*x^2*sinh(a + b/x) - (1/2)*b^2*cosh(a)*SinhIntegral(b/x)]
    @test_int [sinh(a + b/x)*x^0, x, 5, (-b)*cosh(a)*CoshIntegral(b/x) + x*sinh(a + b/x) - b*sinh(a)*SinhIntegral(b/x)]
    @test_int [sinh(a + b/x)/x^1, x, 3, (-CoshIntegral(b/x))*sinh(a) - cosh(a)*SinhIntegral(b/x)]
    @test_int [sinh(a + b/x)/x^2, x, 2, -(cosh(a + b/x)/b)]
    @test_int [sinh(a + b/x)/x^3, x, 3, -(cosh(a + b/x)/(b*x)) + sinh(a + b/x)/b^2]
    @test_int [sinh(a + b/x)/x^4, x, 4, -((2*cosh(a + b/x))/b^3) - cosh(a + b/x)/(b*x^2) + (2*sinh(a + b/x))/(b^2*x)]
    @test_int [sinh(a + b/x)/x^5, x, 5, -(cosh(a + b/x)/(b*x^3)) - (6*cosh(a + b/x))/(b^3*x) + (6*sinh(a + b/x))/b^4 + (3*sinh(a + b/x))/(b^2*x^2)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d / x))^p*with*m*symbolic=#


    @test_int [(e*x)^m*sinh(a + b/x)^3, x, 9, (-(1/8))*3^(1 + m)*b*ℯ^(3*a)*(-(b/x))^m*(e*x)^m*Gamma(-1 - m, -((3*b)/x)) + (3/8)*b*ℯ^a*(-(b/x))^m*(e*x)^m*Gamma(-1 - m, -(b/x)) + ((3/8)*b*(b/x)^m*(e*x)^m*Gamma(-1 - m, b/x))/ℯ^a - ((1/8)*3^(1 + m)*b*(b/x)^m*(e*x)^m*Gamma(-1 - m, (3*b)/x))/ℯ^(3*a)]
    @test_int [(e*x)^m*sinh(a + b/x)^2, x, 6, -((x*(e*x)^m)/(2*(1 + m))) - 2^(-1 + m)*b*ℯ^(2*a)*(-(b/x))^m*(e*x)^m*Gamma(-1 - m, -((2*b)/x)) + (2^(-1 + m)*b*(b/x)^m*(e*x)^m*Gamma(-1 - m, (2*b)/x))/ℯ^(2*a)]
    @test_int [(e*x)^m*sinh(a + b/x)^1, x, 4, (-(1/2))*b*ℯ^a*(-(b/x))^m*(e*x)^m*Gamma(-1 - m, -(b/x)) - ((1/2)*b*(b/x)^m*(e*x)^m*Gamma(-1 - m, b/x))/ℯ^a]
    @test_int [(e*x)^m/sinh(a + b/x)^1, x, 1, ((e*x)^m*Unintegrable(x^m*csch(a + b/x), x))/x^m]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d / x^2))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*sinh(c+d / x^2))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sinh(a + b/x^2)*x^4, x, 7, (2/15)*b*x^3*cosh(a + b/x^2) - ((2/15)*b^(5/2)*sqrt(pi)*erf(sqrt(b)/x))/ℯ^a - (2/15)*b^(5/2)*ℯ^a*sqrt(pi)*erfi(sqrt(b)/x) + (4/15)*b^2*x*sinh(a + b/x^2) + (1/5)*x^5*sinh(a + b/x^2)]
    @test_int [sinh(a + b/x^2)*x^3, x, 6, (1/4)*b*x^2*cosh(a + b/x^2) - (1/4)*b^2*CoshIntegral(b/x^2)*sinh(a) + (1/4)*x^4*sinh(a + b/x^2) - (1/4)*b^2*cosh(a)*SinhIntegral(b/x^2)]
    @test_int [sinh(a + b/x^2)*x^2, x, 6, (2/3)*b*x*cosh(a + b/x^2) + ((1/3)*b^(3/2)*sqrt(pi)*erf(sqrt(b)/x))/ℯ^a - (1/3)*b^(3/2)*ℯ^a*sqrt(pi)*erfi(sqrt(b)/x) + (1/3)*x^3*sinh(a + b/x^2)]
    @test_int [sinh(a + b/x^2)*x^1, x, 5, (-(1/2))*b*cosh(a)*CoshIntegral(b/x^2) + (1/2)*x^2*sinh(a + b/x^2) - (1/2)*b*sinh(a)*SinhIntegral(b/x^2)]
    @test_int [sinh(a + b/x^2)*x^0, x, 5, ((-(1/2))*sqrt(b)*sqrt(pi)*erf(sqrt(b)/x))/ℯ^a - (1/2)*sqrt(b)*ℯ^a*sqrt(pi)*erfi(sqrt(b)/x) + x*sinh(a + b/x^2)]
    @test_int [sinh(a + b/x^2)/x^1, x, 3, (-(1/2))*CoshIntegral(b/x^2)*sinh(a) - (1/2)*cosh(a)*SinhIntegral(b/x^2)]
    @test_int [sinh(a + b/x^2)/x^2, x, 4, (sqrt(pi)*erf(sqrt(b)/x))/(ℯ^a*(4*sqrt(b))) - (ℯ^a*sqrt(pi)*erfi(sqrt(b)/x))/(4*sqrt(b))]
    @test_int [sinh(a + b/x^2)/x^3, x, 2, -(cosh(a + b/x^2)/(2*b))]
    @test_int [sinh(a + b/x^2)/x^4, x, 5, -(cosh(a + b/x^2)/(2*b*x)) + (sqrt(pi)*erf(sqrt(b)/x))/(ℯ^a*(8*b^(3/2))) + (ℯ^a*sqrt(pi)*erfi(sqrt(b)/x))/(8*b^(3/2))]
    @test_int [sinh(a + b/x^2)/x^5, x, 3, -(cosh(a + b/x^2)/(2*b*x^2)) + sinh(a + b/x^2)/(2*b^2)]
    @test_int [sinh(a + b/x^2)/x^6, x, 6, -(cosh(a + b/x^2)/(2*b*x^3)) + (3*sqrt(pi)*erf(sqrt(b)/x))/(ℯ^a*(16*b^(5/2))) - (3*ℯ^a*sqrt(pi)*erfi(sqrt(b)/x))/(16*b^(5/2)) + (3*sinh(a + b/x^2))/(4*b^2*x)]
    @test_int [sinh(a + b/x^2)/x^7, x, 4, -(cosh(a + b/x^2)/b^3) - cosh(a + b/x^2)/(2*b*x^4) + sinh(a + b/x^2)/(b^2*x^2)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d / x))^p*with*m*symbolic=#


    @test_int [(e*x)^m*sinh(a + b/x^2)^3, x, 9, (1/16)*3^((1 + m)/2)*ℯ^(3*a)*(-(b/x^2))^((1 + m)/2)*x*(e*x)^m*Gamma((1/2)*(-1 - m), -((3*b)/x^2)) - (3/16)*ℯ^a*(-(b/x^2))^((1 + m)/2)*x*(e*x)^m*Gamma((1/2)*(-1 - m), -(b/x^2)) + ((3/16)*(b/x^2)^((1 + m)/2)*x*(e*x)^m*Gamma((1/2)*(-1 - m), b/x^2))/ℯ^a - ((1/16)*3^((1 + m)/2)*(b/x^2)^((1 + m)/2)*x*(e*x)^m*Gamma((1/2)*(-1 - m), (3*b)/x^2))/ℯ^(3*a)]
    @test_int [(e*x)^m*sinh(a + b/x^2)^2, x, 6, -((x*(e*x)^m)/(2*(1 + m))) + 2^((1/2)*(-5 + m))*ℯ^(2*a)*(-(b/x^2))^((1 + m)/2)*x*(e*x)^m*Gamma((1/2)*(-1 - m), -((2*b)/x^2)) + (2^((1/2)*(-5 + m))*(b/x^2)^((1 + m)/2)*x*(e*x)^m*Gamma((1/2)*(-1 - m), (2*b)/x^2))/ℯ^(2*a)]
    @test_int [(e*x)^m*sinh(a + b/x^2)^1, x, 4, (1/4)*ℯ^a*(-(b/x^2))^((1 + m)/2)*x*(e*x)^m*Gamma((1/2)*(-1 - m), -(b/x^2)) - ((1/4)*(b/x^2)^((1 + m)/2)*x*(e*x)^m*Gamma((1/2)*(-1 - m), b/x^2))/ℯ^a]
    @test_int [(e*x)^m/sinh(a + b/x^2)^1, x, 1, ((e*x)^m*Unintegrable(x^m*csch(a + b/x^2), x))/x^m]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d*x^(1/2)))^p=#


    @test_int [sinh(sqrt(x))/sqrt(x), x, 2, 2*cosh(sqrt(x))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d*x^n))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^2*sinh(a + b*x^n), x, 3, -((ℯ^a*x^3*Gamma(3/n, (-b)*x^n))/(((-b)*x^n)^(3/n)*(2*n))) + (x^3*Gamma(3/n, b*x^n))/(ℯ^a*(b*x^n)^(3/n)*(2*n))]
    @test_int [x^1*sinh(a + b*x^n), x, 3, -((ℯ^a*x^2*Gamma(2/n, (-b)*x^n))/(((-b)*x^n)^(2/n)*(2*n))) + (x^2*Gamma(2/n, b*x^n))/(ℯ^a*(b*x^n)^(2/n)*(2*n))]
    @test_int [x^0*sinh(a + b*x^n), x, 3, -((ℯ^a*x*Gamma(1/n, (-b)*x^n))/(((-b)*x^n)^n^(-1)*(2*n))) + (x*Gamma(1/n, b*x^n))/(ℯ^a*(b*x^n)^n^(-1)*(2*n))]
    @test_int [sinh(a + b*x^n)/x^1, x, 3, (CoshIntegral(b*x^n)*sinh(a))/n + (cosh(a)*SinhIntegral(b*x^n))/n]
    @test_int [sinh(a + b*x^n)/x^2, x, 3, -((ℯ^a*((-b)*x^n)^(1/n)*Gamma(-(1/n), (-b)*x^n))/(2*n*x)) + ((b*x^n)^(1/n)*Gamma(-(1/n), b*x^n))/(ℯ^a*(2*n*x))]
    @test_int [sinh(a + b*x^n)/x^3, x, 3, -((ℯ^a*((-b)*x^n)^(2/n)*Gamma(-(2/n), (-b)*x^n))/(2*n*x^2)) + ((b*x^n)^(2/n)*Gamma(-(2/n), b*x^n))/(ℯ^a*(2*n*x^2))]


    @test_int [x^2*sinh(a + b*x^n)^2, x, 5, -(x^3/6) - (2^(-2 - 3/n)*ℯ^(2*a)*x^3*Gamma(3/n, -2*b*x^n))/(((-b)*x^n)^(3/n)*n) - (2^(-2 - 3/n)*x^3*Gamma(3/n, 2*b*x^n))/(ℯ^(2*a)*(b*x^n)^(3/n)*n)]
    @test_int [x^1*sinh(a + b*x^n)^2, x, 5, -(x^2/4) - (4^(-1 - 1/n)*ℯ^(2*a)*x^2*Gamma(2/n, -2*b*x^n))/(((-b)*x^n)^(2/n)*n) - (4^(-1 - 1/n)*x^2*Gamma(2/n, 2*b*x^n))/(ℯ^(2*a)*(b*x^n)^(2/n)*n)]
    @test_int [x^0*sinh(a + b*x^n)^2, x, 5, -(x/2) - (2^(-2 - 1/n)*ℯ^(2*a)*x*Gamma(1/n, -2*b*x^n))/(((-b)*x^n)^n^(-1)*n) - (2^(-2 - 1/n)*x*Gamma(1/n, 2*b*x^n))/(ℯ^(2*a)*(b*x^n)^n^(-1)*n)]
    @test_int [sinh(a + b*x^n)^2/x^1, x, 5, (cosh(2*a)*CoshIntegral(2*b*x^n))/(2*n) - log(x)/2 + (sinh(2*a)*SinhIntegral(2*b*x^n))/(2*n)]
    @test_int [sinh(a + b*x^n)^2/x^2, x, 5, 1/(2*x) - (2^(-2 + 1/n)*ℯ^(2*a)*((-b)*x^n)^(1/n)*Gamma(-(1/n), -2*b*x^n))/(n*x) - (2^(-2 + 1/n)*(b*x^n)^(1/n)*Gamma(-(1/n), 2*b*x^n))/(ℯ^(2*a)*(n*x))]


    @test_int [x^2*sinh(a + b*x^n)^3, x, 8, -((ℯ^(3*a)*x^3*Gamma(3/n, -3*b*x^n))/(3^(3/n)*((-b)*x^n)^(3/n)*(8*n))) + (3*ℯ^a*x^3*Gamma(3/n, (-b)*x^n))/(((-b)*x^n)^(3/n)*(8*n)) - (3*x^3*Gamma(3/n, b*x^n))/(ℯ^a*(b*x^n)^(3/n)*(8*n)) + (x^3*Gamma(3/n, 3*b*x^n))/(3^(3/n)*ℯ^(3*a)*(b*x^n)^(3/n)*(8*n))]
    @test_int [x^1*sinh(a + b*x^n)^3, x, 8, -((ℯ^(3*a)*x^2*Gamma(2/n, -3*b*x^n))/(9^n^(-1)*((-b)*x^n)^(2/n)*(8*n))) + (3*ℯ^a*x^2*Gamma(2/n, (-b)*x^n))/(((-b)*x^n)^(2/n)*(8*n)) - (3*x^2*Gamma(2/n, b*x^n))/(ℯ^a*(b*x^n)^(2/n)*(8*n)) + (x^2*Gamma(2/n, 3*b*x^n))/(9^n^(-1)*ℯ^(3*a)*(b*x^n)^(2/n)*(8*n))]
    @test_int [x^0*sinh(a + b*x^n)^3, x, 8, -((ℯ^(3*a)*x*Gamma(1/n, -3*b*x^n))/(3^n^(-1)*((-b)*x^n)^n^(-1)*(8*n))) + (3*ℯ^a*x*Gamma(1/n, (-b)*x^n))/(((-b)*x^n)^n^(-1)*(8*n)) - (3*x*Gamma(1/n, b*x^n))/(ℯ^a*(b*x^n)^n^(-1)*(8*n)) + (x*Gamma(1/n, 3*b*x^n))/(3^n^(-1)*ℯ^(3*a)*(b*x^n)^n^(-1)*(8*n))]
    @test_int [sinh(a + b*x^n)^3/x^1, x, 8, -((3*CoshIntegral(b*x^n)*sinh(a))/(4*n)) + (CoshIntegral(3*b*x^n)*sinh(3*a))/(4*n) - (3*cosh(a)*SinhIntegral(b*x^n))/(4*n) + (cosh(3*a)*SinhIntegral(3*b*x^n))/(4*n)]
    @test_int [sinh(a + b*x^n)^3/x^2, x, 8, -((3^(1/n)*ℯ^(3*a)*((-b)*x^n)^(1/n)*Gamma(-(1/n), -3*b*x^n))/(8*n*x)) + (3*ℯ^a*((-b)*x^n)^(1/n)*Gamma(-(1/n), (-b)*x^n))/(8*n*x) - (3*(b*x^n)^(1/n)*Gamma(-(1/n), b*x^n))/(ℯ^a*(8*n*x)) + (3^(1/n)*(b*x^n)^(1/n)*Gamma(-(1/n), 3*b*x^n))/(ℯ^(3*a)*(8*n*x))]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*sinh(c+d*x^n))^p*with*m*symbolic=#


    @test_int [(e*x)^m*(b*sinh(c + d*x^n))^p, x, 0, Unintegrable((e*x)^m*(b*sinh(c + d*x^n))^p, x)]
    @test_int [(e*x)^m*(a + b*sinh(c + d*x^n))^p, x, 0, Unintegrable((e*x)^m*(a + b*sinh(c + d*x^n))^p, x)]


    @test_int [(e*x)^(n - 1)*(b*sinh(c + d*x^n))^p, x, 3, ((e*x)^n*cosh(c + d*x^n)*HypergeometricFunctions._₂F₁(1/2, (1 + p)/2, (3 + p)/2, -sinh(c + d*x^n)^2)*(b*sinh(c + d*x^n))^(1 + p))/(x^n*(b*d*e*n*(1 + p)*sqrt(cosh(c + d*x^n)^2)))]
    @test_int [(e*x)^(2*n - 1)*(b*sinh(c + d*x^n))^p, x, 1, ((e*x)^(2*n)*Unintegrable(x^(-1 + 2*n)*(b*sinh(c + d*x^n))^p, x))/(x^(2*n)*e)]

    @test_int [(e*x)^(n - 1)*(a + b*sinh(c + d*x^n))^p, x, 5, (im*sqrt(2)*(e*x)^n*AppellF1(1/2, 1/2, -p, 3/2, (1/2)*(1 - im*sinh(c + d*x^n)), (b*(1 - im*sinh(c + d*x^n)))/(im*a + b))*cosh(c + d*x^n)*(a + b*sinh(c + d*x^n))^p)/(x^n*((a + b*sinh(c + d*x^n))/(a - im*b))^p*(d*e*n*sqrt(1 + im*sinh(c + d*x^n))))]
    @test_int [(e*x)^(2*n - 1)*(a + b*sinh(c + d*x^n))^p, x, 1, ((e*x)^(2*n)*Unintegrable(x^(-1 + 2*n)*(a + b*sinh(c + d*x^n))^p, x))/(x^(2*n)*e)]


    @test_int [(e*x)^m*sinh(a + b*x^n)^3, x, 8, -((ℯ^(3*a)*(e*x)^(1 + m)*Gamma((1 + m)/n, -3*b*x^n))/(3^((1 + m)/n)*((-b)*x^n)^((1 + m)/n)*(8*e*n))) + (3*ℯ^a*(e*x)^(1 + m)*Gamma((1 + m)/n, (-b)*x^n))/(((-b)*x^n)^((1 + m)/n)*(8*e*n)) - (3*(e*x)^(1 + m)*Gamma((1 + m)/n, b*x^n))/(ℯ^a*(b*x^n)^((1 + m)/n)*(8*e*n)) + ((e*x)^(1 + m)*Gamma((1 + m)/n, 3*b*x^n))/(3^((1 + m)/n)*ℯ^(3*a)*(b*x^n)^((1 + m)/n)*(8*e*n))]
    @test_int [(e*x)^m*sinh(a + b*x^n)^2, x, 5, -((e*x)^(1 + m)/(2*e*(1 + m))) - (ℯ^(2*a)*(e*x)^(1 + m)*Gamma((1 + m)/n, -2*b*x^n))/(2^((1 + m + 2*n)/n)*((-b)*x^n)^((1 + m)/n)*(e*n)) - ((e*x)^(1 + m)*Gamma((1 + m)/n, 2*b*x^n))/(2^((1 + m + 2*n)/n)*ℯ^(2*a)*(b*x^n)^((1 + m)/n)*(e*n))]
    @test_int [(e*x)^m*sinh(a + b*x^n)^1, x, 3, -((ℯ^a*(e*x)^(1 + m)*Gamma((1 + m)/n, (-b)*x^n))/(((-b)*x^n)^((1 + m)/n)*(2*e*n))) + ((e*x)^(1 + m)*Gamma((1 + m)/n, b*x^n))/(ℯ^a*(b*x^n)^((1 + m)/n)*(2*e*n))]
    @test_int [(e*x)^m/sinh(a + b*x^n)^2, x, 1, ((e*x)^m*Unintegrable(x^m*csch(a + b*x^n)^2, x))/x^m]


    @test_int [sinh(a + b*x^n)^1/x^(n + 1), x, 5, (b*cosh(a)*CoshIntegral(b*x^n))/n - sinh(a + b*x^n)/(x^n*n) + (b*sinh(a)*SinhIntegral(b*x^n))/n]
    @test_int [sinh(a + b*x^n)^2/x^(n + 1), x, 7, 1/(x^n*(2*n)) - cosh(2*(a + b*x^n))/(x^n*(2*n)) + (b*CoshIntegral(2*b*x^n)*sinh(2*a))/n + (b*cosh(2*a)*SinhIntegral(2*b*x^n))/n]
    @test_int [sinh(a + b*x^n)^3/x^(n + 1), x, 12, -((3*b*cosh(a)*CoshIntegral(b*x^n))/(4*n)) + (3*b*cosh(3*a)*CoshIntegral(3*b*x^n))/(4*n) + (3*sinh(a + b*x^n))/(x^n*(4*n)) - sinh(3*(a + b*x^n))/(x^n*(4*n)) - (3*b*sinh(a)*SinhIntegral(b*x^n))/(4*n) + (3*b*sinh(3*a)*SinhIntegral(3*b*x^n))/(4*n)]


    @test_int [x^(n/2 - 1)*sinh(a + b*x^n), x, 4, -((sqrt(pi)*erf(sqrt(b)*x^(n/2)))/(ℯ^a*(2*sqrt(b)*n))) + (ℯ^a*sqrt(pi)*erfi(sqrt(b)*x^(n/2)))/(2*sqrt(b)*n)]


    #= ::Title:: =#
    #=Integrands*of*the*form*(e*x)^m*sinh(a+b*(c+d*x)^n)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sinh(a+b*(c+d*x)^n)=#


    @test_int [x^2*sinh((a + b*x)^2), x, 12, -((a*cosh((a + b*x)^2))/b^3) + ((a + b*x)*cosh((a + b*x)^2))/(2*b^3) - (sqrt(pi)*erf(a + b*x))/(8*b^3) - (a^2*sqrt(pi)*erf(a + b*x))/(4*b^3) - (sqrt(pi)*erfi(a + b*x))/(8*b^3) + (a^2*sqrt(pi)*erfi(a + b*x))/(4*b^3)]
    @test_int [x^1*sinh((a + b*x)^2), x, 8, cosh((a + b*x)^2)/(2*b^2) + (a*sqrt(pi)*erf(a + b*x))/(4*b^2) - (a*sqrt(pi)*erfi(a + b*x))/(4*b^2)]
    @test_int [x^0*sinh((a + b*x)^2), x, 4, -((sqrt(pi)*erf(a + b*x))/(4*b)) + (sqrt(pi)*erfi(a + b*x))/(4*b)]
    @test_int [sinh((a + b*x)^2)/x^1, x, 1, b*CannotIntegrate(sinh((a + b*x)^2)/(b*x), x)]
    @test_int [sinh((a + b*x)^2)/x^2, x, 1, Unintegrable(sinh((a + b*x)^2)/x^2, x), b^2*CannotIntegrate(sinh((a + b*x)^2)/(b^2*x^2), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sinh(a+b*(c+d*x)^(n/2))=#


    @test_int [sinh(a + b*sqrt(c + d*x))*x^2, x, 16, (240*sqrt(c + d*x)*cosh(a + b*sqrt(c + d*x)))/(b^5*d^3) - (24*c*sqrt(c + d*x)*cosh(a + b*sqrt(c + d*x)))/(b^3*d^3) + (2*c^2*sqrt(c + d*x)*cosh(a + b*sqrt(c + d*x)))/(b*d^3) + (40*(c + d*x)^(3/2)*cosh(a + b*sqrt(c + d*x)))/(b^3*d^3) - (4*c*(c + d*x)^(3/2)*cosh(a + b*sqrt(c + d*x)))/(b*d^3) + (2*(c + d*x)^(5/2)*cosh(a + b*sqrt(c + d*x)))/(b*d^3) - (240*sinh(a + b*sqrt(c + d*x)))/(b^6*d^3) + (24*c*sinh(a + b*sqrt(c + d*x)))/(b^4*d^3) - (2*c^2*sinh(a + b*sqrt(c + d*x)))/(b^2*d^3) - (120*(c + d*x)*sinh(a + b*sqrt(c + d*x)))/(b^4*d^3) + (12*c*(c + d*x)*sinh(a + b*sqrt(c + d*x)))/(b^2*d^3) - (10*(c + d*x)^2*sinh(a + b*sqrt(c + d*x)))/(b^2*d^3)]
    @test_int [sinh(a + b*sqrt(c + d*x))*x^1, x, 10, (12*sqrt(c + d*x)*cosh(a + b*sqrt(c + d*x)))/(b^3*d^2) - (2*c*sqrt(c + d*x)*cosh(a + b*sqrt(c + d*x)))/(b*d^2) + (2*(c + d*x)^(3/2)*cosh(a + b*sqrt(c + d*x)))/(b*d^2) - (12*sinh(a + b*sqrt(c + d*x)))/(b^4*d^2) + (2*c*sinh(a + b*sqrt(c + d*x)))/(b^2*d^2) - (6*(c + d*x)*sinh(a + b*sqrt(c + d*x)))/(b^2*d^2)]
    @test_int [sinh(a + b*sqrt(c + d*x))*x^0, x, 4, (2*sqrt(c + d*x)*cosh(a + b*sqrt(c + d*x)))/(b*d) - (2*sinh(a + b*sqrt(c + d*x)))/(b^2*d)]
    @test_int [sinh(a + b*sqrt(c + d*x))/x^1, x, 10, CoshIntegral(b*(sqrt(c) + sqrt(c + d*x)))*sinh(a - b*sqrt(c)) + CoshIntegral(b*(sqrt(c) - sqrt(c + d*x)))*sinh(a + b*sqrt(c)) - cosh(a + b*sqrt(c))*SinhIntegral(b*(sqrt(c) - sqrt(c + d*x))) + cosh(a - b*sqrt(c))*SinhIntegral(b*(sqrt(c) + sqrt(c + d*x)))]
    @test_int [sinh(a + b*sqrt(c + d*x))/x^2, x, 11, (b*d*cosh(a + b*sqrt(c))*CoshIntegral(b*(sqrt(c) - sqrt(c + d*x))))/(2*sqrt(c)) - (b*d*cosh(a - b*sqrt(c))*CoshIntegral(b*(sqrt(c) + sqrt(c + d*x))))/(2*sqrt(c)) - sinh(a + b*sqrt(c + d*x))/x - (b*d*sinh(a + b*sqrt(c))*SinhIntegral(b*(sqrt(c) - sqrt(c + d*x))))/(2*sqrt(c)) - (b*d*sinh(a - b*sqrt(c))*SinhIntegral(b*(sqrt(c) + sqrt(c + d*x))))/(2*sqrt(c))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*sinh(a+b*(c+d*x)^(n/3))=#


    @test_int [sinh(a + b*(c + d*x)^(1/3))*x^2, x, 23, (120960*cosh(a + b*(c + d*x)^(1/3)))/(b^9*d^3) + (6*c^2*cosh(a + b*(c + d*x)^(1/3)))/(b^3*d^3) - (720*c*(c + d*x)^(1/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^5*d^3) + (60480*(c + d*x)^(2/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^7*d^3) + (3*c^2*(c + d*x)^(2/3)*cosh(a + b*(c + d*x)^(1/3)))/(b*d^3) - (120*c*(c + d*x)*cosh(a + b*(c + d*x)^(1/3)))/(b^3*d^3) + (5040*(c + d*x)^(4/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^5*d^3) - (6*c*(c + d*x)^(5/3)*cosh(a + b*(c + d*x)^(1/3)))/(b*d^3) + (168*(c + d*x)^2*cosh(a + b*(c + d*x)^(1/3)))/(b^3*d^3) + (3*(c + d*x)^(8/3)*cosh(a + b*(c + d*x)^(1/3)))/(b*d^3) + (720*c*sinh(a + b*(c + d*x)^(1/3)))/(b^6*d^3) - (120960*(c + d*x)^(1/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^8*d^3) - (6*c^2*(c + d*x)^(1/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^2*d^3) + (360*c*(c + d*x)^(2/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^4*d^3) - (20160*(c + d*x)*sinh(a + b*(c + d*x)^(1/3)))/(b^6*d^3) + (30*c*(c + d*x)^(4/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^2*d^3) - (1008*(c + d*x)^(5/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^4*d^3) - (24*(c + d*x)^(7/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^2*d^3)]
    @test_int [sinh(a + b*(c + d*x)^(1/3))*x^1, x, 13, -((6*c*cosh(a + b*(c + d*x)^(1/3)))/(b^3*d^2)) + (360*(c + d*x)^(1/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^5*d^2) - (3*c*(c + d*x)^(2/3)*cosh(a + b*(c + d*x)^(1/3)))/(b*d^2) + (60*(c + d*x)*cosh(a + b*(c + d*x)^(1/3)))/(b^3*d^2) + (3*(c + d*x)^(5/3)*cosh(a + b*(c + d*x)^(1/3)))/(b*d^2) - (360*sinh(a + b*(c + d*x)^(1/3)))/(b^6*d^2) + (6*c*(c + d*x)^(1/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^2*d^2) - (180*(c + d*x)^(2/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^4*d^2) - (15*(c + d*x)^(4/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^2*d^2)]
    @test_int [sinh(a + b*(c + d*x)^(1/3))*x^0, x, 5, (6*cosh(a + b*(c + d*x)^(1/3)))/(b^3*d) + (3*(c + d*x)^(2/3)*cosh(a + b*(c + d*x)^(1/3)))/(b*d) - (6*(c + d*x)^(1/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^2*d)]
    @test_int [sinh(a + b*(c + d*x)^(1/3))/x^1, x, 13, CoshIntegral(b*(c^(1/3) - (c + d*x)^(1/3)))*sinh(a + b*c^(1/3)) + CoshIntegral(b*((-1)^(1/3)*c^(1/3) + (c + d*x)^(1/3)))*sinh(a - (-1)^(1/3)*b*c^(1/3)) + CoshIntegral((-b)*((-1)^(2/3)*c^(1/3) - (c + d*x)^(1/3)))*sinh(a + (-1)^(2/3)*b*c^(1/3)) - cosh(a + b*c^(1/3))*SinhIntegral(b*(c^(1/3) - (c + d*x)^(1/3))) - cosh(a + (-1)^(2/3)*b*c^(1/3))*SinhIntegral(b*((-1)^(2/3)*c^(1/3) - (c + d*x)^(1/3))) + cosh(a - (-1)^(1/3)*b*c^(1/3))*SinhIntegral(b*((-1)^(1/3)*c^(1/3) + (c + d*x)^(1/3)))]
    @test_int [sinh(a + b*(c + d*x)^(1/3))/x^2, x, 14, (b*d*cosh(a + b*c^(1/3))*CoshIntegral(b*(c^(1/3) - (c + d*x)^(1/3))))/(3*c^(2/3)) + ((-1)^(2/3)*b*d*cosh(a + (-1)^(2/3)*b*c^(1/3))*CoshIntegral((-b)*((-1)^(2/3)*c^(1/3) - (c + d*x)^(1/3))))/(3*c^(2/3)) - ((-1)^(1/3)*b*d*cosh(a - (-1)^(1/3)*b*c^(1/3))*CoshIntegral(b*((-1)^(1/3)*c^(1/3) + (c + d*x)^(1/3))))/(3*c^(2/3)) - sinh(a + b*(c + d*x)^(1/3))/x - (b*d*sinh(a + b*c^(1/3))*SinhIntegral(b*(c^(1/3) - (c + d*x)^(1/3))))/(3*c^(2/3)) - ((-1)^(2/3)*b*d*sinh(a + (-1)^(2/3)*b*c^(1/3))*SinhIntegral(b*((-1)^(2/3)*c^(1/3) - (c + d*x)^(1/3))))/(3*c^(2/3)) - ((-1)^(1/3)*b*d*sinh(a - (-1)^(1/3)*b*c^(1/3))*SinhIntegral(b*((-1)^(1/3)*c^(1/3) + (c + d*x)^(1/3))))/(3*c^(2/3))]
    end
