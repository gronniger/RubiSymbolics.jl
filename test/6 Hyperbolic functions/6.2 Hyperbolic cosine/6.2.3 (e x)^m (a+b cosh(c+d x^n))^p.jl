@testset "6.2.3 (e x)^m (a+b cosh(c+d x^n))^p" begin
    (a, b, c, d, e, m, n, p, x, ) = @variables a b c d e m n p x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d*x^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d*x^2))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*cosh(c+d*x^2))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^3*cosh(a + b*x^2), x, 3, -(cosh(a + b*x^2)/(2*b^2)) + (x^2*sinh(a + b*x^2))/(2*b)]
    @test_int [x^2*cosh(a + b*x^2), x, 4, (sqrt(pi)*erf(sqrt(b)*x))/(ℯ^a*(8*b^(3/2))) - (ℯ^a*sqrt(pi)*erfi(sqrt(b)*x))/(8*b^(3/2)) + (x*sinh(a + b*x^2))/(2*b)]
    @test_int [x*cosh(a + b*x^2), x, 2, sinh(a + b*x^2)/(2*b)]
    @test_int [cosh(a + b*x^2), x, 3, (sqrt(pi)*erf(sqrt(b)*x))/(ℯ^a*(4*sqrt(b))) + (ℯ^a*sqrt(pi)*erfi(sqrt(b)*x))/(4*sqrt(b))]
    @test_int [cosh(a + b*x^2)/x, x, 3, (1/2)*cosh(a)*CoshIntegral(b*x^2) + (1/2)*sinh(a)*SinhIntegral(b*x^2)]
    @test_int [cosh(a + b*x^2)/x^2, x, 4, -(cosh(a + b*x^2)/x) - ((1/2)*sqrt(b)*sqrt(pi)*erf(sqrt(b)*x))/ℯ^a + (1/2)*sqrt(b)*ℯ^a*sqrt(pi)*erfi(sqrt(b)*x)]
    @test_int [cosh(a + b*x^2)/x^3, x, 5, -(cosh(a + b*x^2)/(2*x^2)) + (1/2)*b*CoshIntegral(b*x^2)*sinh(a) + (1/2)*b*cosh(a)*SinhIntegral(b*x^2)]


    @test_int [x^3*cosh(a + b*x^2)^2, x, 3, x^4/8 - cosh(a + b*x^2)^2/(8*b^2) + (x^2*cosh(a + b*x^2)*sinh(a + b*x^2))/(4*b)]
    @test_int [x^2*cosh(a + b*x^2)^2, x, 6, x^3/6 + (sqrt(pi/2)*erf(sqrt(2)*sqrt(b)*x))/(ℯ^(2*a)*(32*b^(3/2))) - (ℯ^(2*a)*sqrt(pi/2)*erfi(sqrt(2)*sqrt(b)*x))/(32*b^(3/2)) + (x*sinh(2*a + 2*b*x^2))/(8*b)]
    @test_int [x*cosh(a + b*x^2)^2, x, 3, x^2/4 + (cosh(a + b*x^2)*sinh(a + b*x^2))/(4*b)]
    @test_int [cosh(a + b*x^2)^2, x, 5, x/2 + (sqrt(pi/2)*erf(sqrt(2)*sqrt(b)*x))/(ℯ^(2*a)*(8*sqrt(b))) + (ℯ^(2*a)*sqrt(pi/2)*erfi(sqrt(2)*sqrt(b)*x))/(8*sqrt(b))]
    @test_int [cosh(a + b*x^2)^2/x, x, 5, (1/4)*cosh(2*a)*CoshIntegral(2*b*x^2) + log(x)/2 + (1/4)*sinh(2*a)*SinhIntegral(2*b*x^2)]
    @test_int [cosh(a + b*x^2)^2/x^2, x, 6, -(cosh(a + b*x^2)^2/x) - ((1/2)*sqrt(b)*sqrt(pi/2)*erf(sqrt(2)*sqrt(b)*x))/ℯ^(2*a) + (1/2)*sqrt(b)*ℯ^(2*a)*sqrt(pi/2)*erfi(sqrt(2)*sqrt(b)*x)]
    @test_int [cosh(a + b*x^2)^2/x^3, x, 7, -(1/(4*x^2)) - cosh(2*(a + b*x^2))/(4*x^2) + (1/2)*b*CoshIntegral(2*b*x^2)*sinh(2*a) + (1/2)*b*cosh(2*a)*SinhIntegral(2*b*x^2)]


    @test_int [x^3*cosh(a + b*x^2)^3, x, 4, -(cosh(a + b*x^2)/(3*b^2)) - cosh(a + b*x^2)^3/(18*b^2) + (x^2*sinh(a + b*x^2))/(3*b) + (x^2*cosh(a + b*x^2)^2*sinh(a + b*x^2))/(6*b)]
    @test_int [x^2*cosh(a + b*x^2)^3, x, 10, (3*sqrt(pi)*erf(sqrt(b)*x))/(ℯ^a*(32*b^(3/2))) + (sqrt(pi/3)*erf(sqrt(3)*sqrt(b)*x))/(ℯ^(3*a)*(96*b^(3/2))) - (3*ℯ^a*sqrt(pi)*erfi(sqrt(b)*x))/(32*b^(3/2)) - (ℯ^(3*a)*sqrt(pi/3)*erfi(sqrt(3)*sqrt(b)*x))/(96*b^(3/2)) + (3*x*sinh(a + b*x^2))/(8*b) + (x*sinh(3*a + 3*b*x^2))/(24*b)]
    @test_int [x*cosh(a + b*x^2)^3, x, 3, sinh(a + b*x^2)/(2*b) + sinh(a + b*x^2)^3/(6*b)]
    @test_int [cosh(a + b*x^2)^3, x, 8, (3*sqrt(pi)*erf(sqrt(b)*x))/(ℯ^a*(16*sqrt(b))) + (sqrt(pi/3)*erf(sqrt(3)*sqrt(b)*x))/(ℯ^(3*a)*(16*sqrt(b))) + (3*ℯ^a*sqrt(pi)*erfi(sqrt(b)*x))/(16*sqrt(b)) + (ℯ^(3*a)*sqrt(pi/3)*erfi(sqrt(3)*sqrt(b)*x))/(16*sqrt(b))]
    @test_int [cosh(a + b*x^2)^3/x, x, 8, (3/8)*cosh(a)*CoshIntegral(b*x^2) + (1/8)*cosh(3*a)*CoshIntegral(3*b*x^2) + (3/8)*sinh(a)*SinhIntegral(b*x^2) + (1/8)*sinh(3*a)*SinhIntegral(3*b*x^2)]
    @test_int [cosh(a + b*x^2)^3/x^2, x, 9, -(cosh(a + b*x^2)^3/x) - ((3/8)*sqrt(b)*sqrt(pi)*erf(sqrt(b)*x))/ℯ^a - ((1/8)*sqrt(b)*sqrt(3*pi)*erf(sqrt(3)*sqrt(b)*x))/ℯ^(3*a) + (3/8)*sqrt(b)*ℯ^a*sqrt(pi)*erfi(sqrt(b)*x) + (1/8)*sqrt(b)*ℯ^(3*a)*sqrt(3*pi)*erfi(sqrt(3)*sqrt(b)*x)]
    @test_int [cosh(a + b*x^2)^3/x^3, x, 12, -((3*cosh(a + b*x^2))/(8*x^2)) - cosh(3*(a + b*x^2))/(8*x^2) + (3/8)*b*CoshIntegral(b*x^2)*sinh(a) + (3/8)*b*CoshIntegral(3*b*x^2)*sinh(3*a) + (3/8)*b*cosh(a)*SinhIntegral(b*x^2) + (3/8)*b*cosh(3*a)*SinhIntegral(3*b*x^2)]


    @test_int [x*cosh(a + b*x^2)^7, x, 3, sinh(a + b*x^2)/(2*b) + sinh(a + b*x^2)^3/(2*b) + (3*sinh(a + b*x^2)^5)/(10*b) + sinh(a + b*x^2)^7/(14*b)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d*x^3))^p=#


    @test_int [x^2*cosh(x^3), x, 2, sinh(x^3)/3]
    @test_int [cosh(1/x^5)/x^6, x, 2, -sinh(x^(-5))/5]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d / x^1))^p=#


    @test_int [cosh(a + b/x), x, 5, x*cosh(a + b/x) - b*CoshIntegral(b/x)*sinh(a) - b*cosh(a)*SinhIntegral(b/x)]
    @test_int [cosh(a + b/x)/x, x, 3, (-cosh(a))*CoshIntegral(b/x) - sinh(a)*SinhIntegral(b/x)]
    @test_int [cosh(a + b/x)/x^2, x, 2, -(sinh(a + b/x)/b)]
    @test_int [cosh(a + b/x)/x^3, x, 3, cosh(a + b/x)/b^2 - sinh(a + b/x)/(b*x)]
    @test_int [cosh(a + b/x)/x^4, x, 4, (2*cosh(a + b/x))/(b^2*x) - (2*sinh(a + b/x))/b^3 - sinh(a + b/x)/(b*x^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d / x^2))^p=#


    @test_int [cosh(a + b/x^2), x, 5, x*cosh(a + b/x^2) + ((1/2)*sqrt(b)*sqrt(pi)*erf(sqrt(b)/x))/ℯ^a - (1/2)*sqrt(b)*ℯ^a*sqrt(pi)*erfi(sqrt(b)/x)]
    @test_int [cosh(a + b/x^2)/x, x, 3, (-(1/2))*cosh(a)*CoshIntegral(b/x^2) - (1/2)*sinh(a)*SinhIntegral(b/x^2)]
    @test_int [cosh(a + b/x^2)/x^2, x, 4, -((sqrt(pi)*erf(sqrt(b)/x))/(ℯ^a*(4*sqrt(b)))) - (ℯ^a*sqrt(pi)*erfi(sqrt(b)/x))/(4*sqrt(b))]
    @test_int [cosh(a + b/x^2)/x^3, x, 2, -(sinh(a + b/x^2)/(2*b))]
    @test_int [cosh(a + b/x^2)/x^4, x, 5, -((sqrt(pi)*erf(sqrt(b)/x))/(ℯ^a*(8*b^(3/2)))) + (ℯ^a*sqrt(pi)*erfi(sqrt(b)/x))/(8*b^(3/2)) - sinh(a + b/x^2)/(2*b*x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d*x^n))^p=#


    @test_int [cosh(a + b*x^n), x, 3, -((ℯ^a*x*Gamma(1/n, (-b)*x^n))/(((-b)*x^n)^n^(-1)*(2*n))) - (x*Gamma(1/n, b*x^n))/(ℯ^a*(b*x^n)^n^(-1)*(2*n))]
    @test_int [cosh(a + b*x^n)/x, x, 3, (cosh(a)*CoshIntegral(b*x^n))/n + (sinh(a)*SinhIntegral(b*x^n))/n]


    @test_int [cosh(a + b*x^n)^2, x, 5, x/2 - (2^(-2 - 1/n)*ℯ^(2*a)*x*Gamma(1/n, -2*b*x^n))/(((-b)*x^n)^n^(-1)*n) - (2^(-2 - 1/n)*x*Gamma(1/n, 2*b*x^n))/(ℯ^(2*a)*(b*x^n)^n^(-1)*n)]
    @test_int [cosh(a + b*x^n)^2/x, x, 5, (cosh(2*a)*CoshIntegral(2*b*x^n))/(2*n) + log(x)/2 + (sinh(2*a)*SinhIntegral(2*b*x^n))/(2*n)]


    @test_int [cosh(a + b*x^n)^3, x, 8, -((ℯ^(3*a)*x*Gamma(1/n, -3*b*x^n))/(3^n^(-1)*((-b)*x^n)^n^(-1)*(8*n))) - (3*ℯ^a*x*Gamma(1/n, (-b)*x^n))/(((-b)*x^n)^n^(-1)*(8*n)) - (3*x*Gamma(1/n, b*x^n))/(ℯ^a*(b*x^n)^n^(-1)*(8*n)) - (x*Gamma(1/n, 3*b*x^n))/(3^n^(-1)*ℯ^(3*a)*(b*x^n)^n^(-1)*(8*n))]
    @test_int [cosh(a + b*x^n)^3/x, x, 8, (3*cosh(a)*CoshIntegral(b*x^n))/(4*n) + (cosh(3*a)*CoshIntegral(3*b*x^n))/(4*n) + (3*sinh(a)*SinhIntegral(b*x^n))/(4*n) + (sinh(3*a)*SinhIntegral(3*b*x^n))/(4*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*(a+b*cosh(c+d*x^n))^p*with*m*symbolic=#


    @test_int [(e*x)^m*(b*cosh(c + d*x^n))^p, x, 0, Unintegrable((e*x)^m*(b*cosh(c + d*x^n))^p, x)]
    @test_int [(e*x)^m*(a + b*cosh(c + d*x^n))^p, x, 0, Unintegrable((e*x)^m*(a + b*cosh(c + d*x^n))^p, x)]


    @test_int [(e*x)^(n - 1)*(b*cosh(c + d*x^n))^p, x, 3, -(((e*x)^n*(b*cosh(c + d*x^n))^(1 + p)*HypergeometricFunctions._₂F₁(1/2, (1 + p)/2, (3 + p)/2, cosh(c + d*x^n)^2)*sinh(c + d*x^n))/(x^n*(b*d*e*n*(1 + p)*sqrt(-sinh(c + d*x^n)^2))))]
    @test_int [(e*x)^(2*n - 1)*(b*cosh(c + d*x^n))^p, x, 1, ((e*x)^(2*n)*Unintegrable(x^(-1 + 2*n)*(b*cosh(c + d*x^n))^p, x))/(x^(2*n)*e)]

    @test_int [(e*x)^(n - 1)*(a + b*cosh(c + d*x^n))^p, x, 5, (sqrt(2)*(e*x)^n*AppellF1(1/2, 1/2, -p, 3/2, (1/2)*(1 - cosh(c + d*x^n)), (b*(1 - cosh(c + d*x^n)))/(a + b))*(a + b*cosh(c + d*x^n))^p*sinh(c + d*x^n))/(x^n*((a + b*cosh(c + d*x^n))/(a + b))^p*(d*e*n*sqrt(1 + cosh(c + d*x^n))))]
    @test_int [(e*x)^(2*n - 1)*(a + b*cosh(c + d*x^n))^p, x, 1, ((e*x)^(2*n)*Unintegrable(x^(-1 + 2*n)*(a + b*cosh(c + d*x^n))^p, x))/(x^(2*n)*e)]


    @test_int [x^m*cosh(a + b*x^n), x, 3, -((ℯ^a*x^(1 + m)*Gamma((1 + m)/n, (-b)*x^n))/(((-b)*x^n)^((1 + m)/n)*(2*n))) - (x^(1 + m)*Gamma((1 + m)/n, b*x^n))/(ℯ^a*(b*x^n)^((1 + m)/n)*(2*n))]
    @test_int [x^m*cosh(a + b*x^n)^2, x, 5, x^(1 + m)/(2*(1 + m)) - (ℯ^(2*a)*x^(1 + m)*Gamma((1 + m)/n, -2*b*x^n))/(2^((1 + m + 2*n)/n)*((-b)*x^n)^((1 + m)/n)*n) - (x^(1 + m)*Gamma((1 + m)/n, 2*b*x^n))/(2^((1 + m + 2*n)/n)*ℯ^(2*a)*(b*x^n)^((1 + m)/n)*n)]
    @test_int [x^m*cosh(a + b*x^n)^3, x, 8, -((ℯ^(3*a)*x^(1 + m)*Gamma((1 + m)/n, -3*b*x^n))/(3^((1 + m)/n)*((-b)*x^n)^((1 + m)/n)*(8*n))) - (3*ℯ^a*x^(1 + m)*Gamma((1 + m)/n, (-b)*x^n))/(((-b)*x^n)^((1 + m)/n)*(8*n)) - (3*x^(1 + m)*Gamma((1 + m)/n, b*x^n))/(ℯ^a*(b*x^n)^((1 + m)/n)*(8*n)) - (x^(1 + m)*Gamma((1 + m)/n, 3*b*x^n))/(3^((1 + m)/n)*ℯ^(3*a)*(b*x^n)^((1 + m)/n)*(8*n))]


    @test_int [cosh(a + b*x^n)/x^(n + 1), x, 5, -(cosh(a + b*x^n)/(x^n*n)) + (b*CoshIntegral(b*x^n)*sinh(a))/n + (b*cosh(a)*SinhIntegral(b*x^n))/n]
    @test_int [cosh(a + b*x^n)^2/x^(n + 1), x, 7, -(1/(x^n*(2*n))) - cosh(2*(a + b*x^n))/(x^n*(2*n)) + (b*CoshIntegral(2*b*x^n)*sinh(2*a))/n + (b*cosh(2*a)*SinhIntegral(2*b*x^n))/n]
    @test_int [cosh(a + b*x^n)^3/x^(n + 1), x, 12, -((3*cosh(a + b*x^n))/(x^n*(4*n))) - cosh(3*(a + b*x^n))/(x^n*(4*n)) + (3*b*CoshIntegral(b*x^n)*sinh(a))/(4*n) + (3*b*CoshIntegral(3*b*x^n)*sinh(3*a))/(4*n) + (3*b*cosh(a)*SinhIntegral(b*x^n))/(4*n) + (3*b*cosh(3*a)*SinhIntegral(3*b*x^n))/(4*n)]


    @test_int [x^(n/2 - 1)*cosh(a + b*x^n), x, 4, (sqrt(pi)*erf(sqrt(b)*x^(n/2)))/(ℯ^a*(2*sqrt(b)*n)) + (ℯ^a*sqrt(pi)*erfi(sqrt(b)*x^(n/2)))/(2*sqrt(b)*n)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cosh(a+b*(c+d*x)^n)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cosh(a+b*(c+d*x)^n)=#


    @test_int [x^2*cosh((a + b*x)^2), x, 12, (sqrt(pi)*erf(a + b*x))/(8*b^3) + (a^2*sqrt(pi)*erf(a + b*x))/(4*b^3) - (sqrt(pi)*erfi(a + b*x))/(8*b^3) + (a^2*sqrt(pi)*erfi(a + b*x))/(4*b^3) - (a*sinh((a + b*x)^2))/b^3 + ((a + b*x)*sinh((a + b*x)^2))/(2*b^3)]
    @test_int [x^1*cosh((a + b*x)^2), x, 8, -((a*sqrt(pi)*erf(a + b*x))/(4*b^2)) - (a*sqrt(pi)*erfi(a + b*x))/(4*b^2) + sinh((a + b*x)^2)/(2*b^2)]
    @test_int [x^0*cosh((a + b*x)^2), x, 4, (sqrt(pi)*erf(a + b*x))/(4*b) + (sqrt(pi)*erfi(a + b*x))/(4*b)]
    @test_int [cosh((a + b*x)^2)/x^1, x, 1, b*CannotIntegrate(cosh((a + b*x)^2)/(b*x), x)]
    @test_int [cosh((a + b*x)^2)/x^2, x, 1, Unintegrable(cosh((a + b*x)^2)/x^2, x), b^2*CannotIntegrate(cosh((a + b*x)^2)/(b^2*x^2), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cosh(a+b*(c+d*x)^(n/2))=#


    @test_int [cosh(a + b*sqrt(c + d*x))*x^2, x, 16, -((240*cosh(a + b*sqrt(c + d*x)))/(b^6*d^3)) + (24*c*cosh(a + b*sqrt(c + d*x)))/(b^4*d^3) - (2*c^2*cosh(a + b*sqrt(c + d*x)))/(b^2*d^3) - (120*(c + d*x)*cosh(a + b*sqrt(c + d*x)))/(b^4*d^3) + (12*c*(c + d*x)*cosh(a + b*sqrt(c + d*x)))/(b^2*d^3) - (10*(c + d*x)^2*cosh(a + b*sqrt(c + d*x)))/(b^2*d^3) + (240*sqrt(c + d*x)*sinh(a + b*sqrt(c + d*x)))/(b^5*d^3) - (24*c*sqrt(c + d*x)*sinh(a + b*sqrt(c + d*x)))/(b^3*d^3) + (2*c^2*sqrt(c + d*x)*sinh(a + b*sqrt(c + d*x)))/(b*d^3) + (40*(c + d*x)^(3/2)*sinh(a + b*sqrt(c + d*x)))/(b^3*d^3) - (4*c*(c + d*x)^(3/2)*sinh(a + b*sqrt(c + d*x)))/(b*d^3) + (2*(c + d*x)^(5/2)*sinh(a + b*sqrt(c + d*x)))/(b*d^3)]
    @test_int [cosh(a + b*sqrt(c + d*x))*x^1, x, 10, -((12*cosh(a + b*sqrt(c + d*x)))/(b^4*d^2)) + (2*c*cosh(a + b*sqrt(c + d*x)))/(b^2*d^2) - (6*(c + d*x)*cosh(a + b*sqrt(c + d*x)))/(b^2*d^2) + (12*sqrt(c + d*x)*sinh(a + b*sqrt(c + d*x)))/(b^3*d^2) - (2*c*sqrt(c + d*x)*sinh(a + b*sqrt(c + d*x)))/(b*d^2) + (2*(c + d*x)^(3/2)*sinh(a + b*sqrt(c + d*x)))/(b*d^2)]
    @test_int [cosh(a + b*sqrt(c + d*x))*x^0, x, 4, -((2*cosh(a + b*sqrt(c + d*x)))/(b^2*d)) + (2*sqrt(c + d*x)*sinh(a + b*sqrt(c + d*x)))/(b*d)]
    @test_int [cosh(a + b*sqrt(c + d*x))/x^1, x, 10, cosh(a + b*sqrt(c))*CoshIntegral(b*(sqrt(c) - sqrt(c + d*x))) + cosh(a - b*sqrt(c))*CoshIntegral(b*(sqrt(c) + sqrt(c + d*x))) - sinh(a + b*sqrt(c))*SinhIntegral(b*(sqrt(c) - sqrt(c + d*x))) + sinh(a - b*sqrt(c))*SinhIntegral(b*(sqrt(c) + sqrt(c + d*x)))]
    @test_int [cosh(a + b*sqrt(c + d*x))/x^2, x, 11, -(cosh(a + b*sqrt(c + d*x))/x) - (b*d*CoshIntegral(b*(sqrt(c) + sqrt(c + d*x)))*sinh(a - b*sqrt(c)))/(2*sqrt(c)) + (b*d*CoshIntegral(b*(sqrt(c) - sqrt(c + d*x)))*sinh(a + b*sqrt(c)))/(2*sqrt(c)) - (b*d*cosh(a + b*sqrt(c))*SinhIntegral(b*(sqrt(c) - sqrt(c + d*x))))/(2*sqrt(c)) - (b*d*cosh(a - b*sqrt(c))*SinhIntegral(b*(sqrt(c) + sqrt(c + d*x))))/(2*sqrt(c))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*cosh(a+b*(c+d*x)^(n/3))=#


    @test_int [cosh(a + b*(c + d*x)^(1/3))*x^2, x, 23, (720*c*cosh(a + b*(c + d*x)^(1/3)))/(b^6*d^3) - (120960*(c + d*x)^(1/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^8*d^3) - (6*c^2*(c + d*x)^(1/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^2*d^3) + (360*c*(c + d*x)^(2/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^4*d^3) - (20160*(c + d*x)*cosh(a + b*(c + d*x)^(1/3)))/(b^6*d^3) + (30*c*(c + d*x)^(4/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^2*d^3) - (1008*(c + d*x)^(5/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^4*d^3) - (24*(c + d*x)^(7/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^2*d^3) + (120960*sinh(a + b*(c + d*x)^(1/3)))/(b^9*d^3) + (6*c^2*sinh(a + b*(c + d*x)^(1/3)))/(b^3*d^3) - (720*c*(c + d*x)^(1/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^5*d^3) + (60480*(c + d*x)^(2/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^7*d^3) + (3*c^2*(c + d*x)^(2/3)*sinh(a + b*(c + d*x)^(1/3)))/(b*d^3) - (120*c*(c + d*x)*sinh(a + b*(c + d*x)^(1/3)))/(b^3*d^3) + (5040*(c + d*x)^(4/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^5*d^3) - (6*c*(c + d*x)^(5/3)*sinh(a + b*(c + d*x)^(1/3)))/(b*d^3) + (168*(c + d*x)^2*sinh(a + b*(c + d*x)^(1/3)))/(b^3*d^3) + (3*(c + d*x)^(8/3)*sinh(a + b*(c + d*x)^(1/3)))/(b*d^3)]
    @test_int [cosh(a + b*(c + d*x)^(1/3))*x^1, x, 13, -((360*cosh(a + b*(c + d*x)^(1/3)))/(b^6*d^2)) + (6*c*(c + d*x)^(1/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^2*d^2) - (180*(c + d*x)^(2/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^4*d^2) - (15*(c + d*x)^(4/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^2*d^2) - (6*c*sinh(a + b*(c + d*x)^(1/3)))/(b^3*d^2) + (360*(c + d*x)^(1/3)*sinh(a + b*(c + d*x)^(1/3)))/(b^5*d^2) - (3*c*(c + d*x)^(2/3)*sinh(a + b*(c + d*x)^(1/3)))/(b*d^2) + (60*(c + d*x)*sinh(a + b*(c + d*x)^(1/3)))/(b^3*d^2) + (3*(c + d*x)^(5/3)*sinh(a + b*(c + d*x)^(1/3)))/(b*d^2)]
    @test_int [cosh(a + b*(c + d*x)^(1/3))*x^0, x, 5, -((6*(c + d*x)^(1/3)*cosh(a + b*(c + d*x)^(1/3)))/(b^2*d)) + (6*sinh(a + b*(c + d*x)^(1/3)))/(b^3*d) + (3*(c + d*x)^(2/3)*sinh(a + b*(c + d*x)^(1/3)))/(b*d)]
    @test_int [cosh(a + b*(c + d*x)^(1/3))/x^1, x, 13, cosh(a + b*c^(1/3))*CoshIntegral(b*(c^(1/3) - (c + d*x)^(1/3))) + cosh(a + (-1)^(2/3)*b*c^(1/3))*CoshIntegral((-b)*((-1)^(2/3)*c^(1/3) - (c + d*x)^(1/3))) + cosh(a - (-1)^(1/3)*b*c^(1/3))*CoshIntegral(b*((-1)^(1/3)*c^(1/3) + (c + d*x)^(1/3))) - sinh(a + b*c^(1/3))*SinhIntegral(b*(c^(1/3) - (c + d*x)^(1/3))) - sinh(a + (-1)^(2/3)*b*c^(1/3))*SinhIntegral(b*((-1)^(2/3)*c^(1/3) - (c + d*x)^(1/3))) + sinh(a - (-1)^(1/3)*b*c^(1/3))*SinhIntegral(b*((-1)^(1/3)*c^(1/3) + (c + d*x)^(1/3)))]
    @test_int [cosh(a + b*(c + d*x)^(1/3))/x^2, x, 14, -(cosh(a + b*(c + d*x)^(1/3))/x) + (b*d*CoshIntegral(b*(c^(1/3) - (c + d*x)^(1/3)))*sinh(a + b*c^(1/3)))/(3*c^(2/3)) - ((-1)^(1/3)*b*d*CoshIntegral(b*((-1)^(1/3)*c^(1/3) + (c + d*x)^(1/3)))*sinh(a - (-1)^(1/3)*b*c^(1/3)))/(3*c^(2/3)) + ((-1)^(2/3)*b*d*CoshIntegral((-b)*((-1)^(2/3)*c^(1/3) - (c + d*x)^(1/3)))*sinh(a + (-1)^(2/3)*b*c^(1/3)))/(3*c^(2/3)) - (b*d*cosh(a + b*c^(1/3))*SinhIntegral(b*(c^(1/3) - (c + d*x)^(1/3))))/(3*c^(2/3)) - ((-1)^(2/3)*b*d*cosh(a + (-1)^(2/3)*b*c^(1/3))*SinhIntegral(b*((-1)^(2/3)*c^(1/3) - (c + d*x)^(1/3))))/(3*c^(2/3)) - ((-1)^(1/3)*b*d*cosh(a - (-1)^(1/3)*b*c^(1/3))*SinhIntegral(b*((-1)^(1/3)*c^(1/3) + (c + d*x)^(1/3))))/(3*c^(2/3))]
    end
