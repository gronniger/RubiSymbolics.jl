@testset "6.3.2 Hyperbolic tangent functions" begin
    @variables a, b, c, d, e, m, n, p, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*Involving*Hyperbolic*Tangents=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*tanh(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^n=#


    @test_int [tanh(a + b*x)^6, x, 4, x - tanh(a + b*x)/b - tanh(a + b*x)^3/(3*b) - tanh(a + b*x)^5/(5*b)]
    @test_int [tanh(a + b*x)^5, x, 3, log(cosh(a + b*x))/b - tanh(a + b*x)^2/(2*b) - tanh(a + b*x)^4/(4*b)]
    @test_int [tanh(a + b*x)^4, x, 3, x - tanh(a + b*x)/b - tanh(a + b*x)^3/(3*b)]
    @test_int [tanh(a + b*x)^3, x, 2, log(cosh(a + b*x))/b - tanh(a + b*x)^2/(2*b)]
    @test_int [tanh(a + b*x)^2, x, 2, x - tanh(a + b*x)/b]
    @test_int [tanh(a + b*x)^1, x, 1, log(cosh(a + b*x))/b]
    @test_int [coth(a + b*x)^1, x, 1, log(sinh(a + b*x))/b]
    @test_int [coth(a + b*x)^2, x, 2, x - coth(a + b*x)/b]
    @test_int [coth(a + b*x)^3, x, 2, -(coth(a + b*x)^2/(2*b)) + log(sinh(a + b*x))/b]
    @test_int [coth(a + b*x)^4, x, 3, x - coth(a + b*x)/b - coth(a + b*x)^3/(3*b)]
    @test_int [coth(a + b*x)^5, x, 3, -(coth(a + b*x)^2/(2*b)) - coth(a + b*x)^4/(4*b) + log(sinh(a + b*x))/b]
    @test_int [coth(a + b*x)^6, x, 4, x - coth(a + b*x)/b - coth(a + b*x)^3/(3*b) - coth(a + b*x)^5/(5*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tanh(c+d*x))^(n/2)=#


    @test_int [(b*tanh(c + d*x))^(7/2),x, 7, (b^(7/2)*atan(sqrt(b*tanh(c + d*x))/sqrt(b)))/d + (b^(7/2)*atanh(sqrt(b*tanh(c + d*x))/sqrt(b)))/d - (2*b^3*sqrt(b*tanh(c + d*x)))/d - (2*b*(b*tanh(c + d*x))^(5/2))/(5*d)]
    @test_int [(b*tanh(c + d*x))^(5/2),x, 6, -((b^(5/2)*atan(sqrt(b*tanh(c + d*x))/sqrt(b)))/d) + (b^(5/2)*atanh(sqrt(b*tanh(c + d*x))/sqrt(b)))/d - (2*b*(b*tanh(c + d*x))^(3/2))/(3*d)]
    @test_int [(b*tanh(c + d*x))^(3/2),x, 6, (b^(3/2)*atan(sqrt(b*tanh(c + d*x))/sqrt(b)))/d + (b^(3/2)*atanh(sqrt(b*tanh(c + d*x))/sqrt(b)))/d - (2*b*sqrt(b*tanh(c + d*x)))/d]
    @test_int [(b*tanh(c + d*x))^(1/2), x, 5, -((sqrt(b)*atan(sqrt(b*tanh(c + d*x))/sqrt(b)))/d) + (sqrt(b)*atanh(sqrt(b*tanh(c + d*x))/sqrt(b)))/d]
    @test_int [1/(b*tanh(c + d*x))^(1/2), x, 5, atan(sqrt(b*tanh(c + d*x))/sqrt(b))/(sqrt(b)*d) + atanh(sqrt(b*tanh(c + d*x))/sqrt(b))/(sqrt(b)*d)]
    @test_int [1/(b*tanh(c + d*x))^(3/2), x, 6, -(atan(sqrt(b*tanh(c + d*x))/sqrt(b))/(b^(3/2)*d)) + atanh(sqrt(b*tanh(c + d*x))/sqrt(b))/(b^(3/2)*d) - 2/(b*d*sqrt(b*tanh(c + d*x)))]
    @test_int [1/(b*tanh(c + d*x))^(5/2), x, 6, atan(sqrt(b*tanh(c + d*x))/sqrt(b))/(b^(5/2)*d) + atanh(sqrt(b*tanh(c + d*x))/sqrt(b))/(b^(5/2)*d) - 2/(3*b*d*(b*tanh(c + d*x))^(3/2))]
    @test_int [1/(b*tanh(c + d*x))^(7/2), x, 7, -(atan(sqrt(b*tanh(c + d*x))/sqrt(b))/(b^(7/2)*d)) + atanh(sqrt(b*tanh(c + d*x))/sqrt(b))/(b^(7/2)*d) - 2/(5*b*d*(b*tanh(c + d*x))^(5/2)) - 2/(b^3*d*sqrt(b*tanh(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tanh(c+d*x))^(n/3)=#


    @test_int [tanh(8*x)^(1/3), x, 9, (-(1/16))*sqrt(3)*atan((1 + 2*tanh(8*x)^(2/3))/sqrt(3)) - (1/16)*log(1 - tanh(8*x)^(2/3)) + (1/32)*log(1 + tanh(8*x)^(2/3) + tanh(8*x)^(4/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tanh(c+d*x))^n*with*n*symbolic=#


    @test_int [tanh(a + b*x)^n, x, 2, (Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, tanh(a + b*x)^2)*tanh(a + b*x)^(1 + n))/(b*(1 + n))]
    @test_int [(b*tanh(c + d*x))^n,x, 2, (Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, tanh(c + d*x)^2)*(b*tanh(c + d*x))^(1 + n))/(b*d*(1 + n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*tanh(c+d*x)^m)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tanh(c+d*x)^2)^n=#


    @test_int [(a*tanh(x)^2)^(3/2),x, 3, a*coth(x)*log(cosh(x))*sqrt(a*tanh(x)^2) - (1/2)*a*tanh(x)*sqrt(a*tanh(x)^2)]
    @test_int [sqrt(a*tanh(x)^2), x, 2, coth(x)*log(cosh(x))*sqrt(a*tanh(x)^2)]
    @test_int [1/sqrt(a*tanh(x)^2), x, 2, (log(sinh(x))*tanh(x))/sqrt(a*tanh(x)^2)]


    @test_int [(-tanh(c + d*x)^2)^(5/2), x, 4, (coth(c + d*x)*log(cosh(c + d*x))*sqrt(-tanh(c + d*x)^2))/d - (tanh(c + d*x)*sqrt(-tanh(c + d*x)^2))/(2*d) - (tanh(c + d*x)^3*sqrt(-tanh(c + d*x)^2))/(4*d)]
    @test_int [(-tanh(c + d*x)^2)^(3/2), x, 3, -((coth(c + d*x)*log(cosh(c + d*x))*sqrt(-tanh(c + d*x)^2))/d) + (tanh(c + d*x)*sqrt(-tanh(c + d*x)^2))/(2*d)]
    @test_int [(-tanh(c + d*x)^2)^(1/2), x, 2, (coth(c + d*x)*log(cosh(c + d*x))*sqrt(-tanh(c + d*x)^2))/d]
    @test_int [1/(-tanh(c + d*x)^2)^(1/2), x, 2, (log(sinh(c + d*x))*tanh(c + d*x))/(d*sqrt(-tanh(c + d*x)^2))]
    @test_int [1/(-tanh(c + d*x)^2)^(3/2), x, 3, coth(c + d*x)/(2*d*sqrt(-tanh(c + d*x)^2)) - (log(sinh(c + d*x))*tanh(c + d*x))/(d*sqrt(-tanh(c + d*x)^2))]
    @test_int [1/(-tanh(c + d*x)^2)^(5/2), x, 4, -(coth(c + d*x)/(2*d*sqrt(-tanh(c + d*x)^2))) - coth(c + d*x)^3/(4*d*sqrt(-tanh(c + d*x)^2)) + (log(sinh(c + d*x))*tanh(c + d*x))/(d*sqrt(-tanh(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tanh(c+d*x)^3)^n=#


    @test_int [sqrt(tanh(x)^3), x, 7, -2*coth(x)*sqrt(tanh(x)^3) + (atan(sqrt(tanh(x)))*sqrt(tanh(x)^3))/tanh(x)^(3/2) + (atanh(sqrt(tanh(x)))*sqrt(tanh(x)^3))/tanh(x)^(3/2)]


    @test_int [(a*tanh(x)^3)^(3/2),x, 8, (-(2/3))*a*sqrt(a*tanh(x)^3) - (a*atan(sqrt(tanh(x)))*sqrt(a*tanh(x)^3))/tanh(x)^(3/2) + (a*atanh(sqrt(tanh(x)))*sqrt(a*tanh(x)^3))/tanh(x)^(3/2) - (2/7)*a*tanh(x)^2*sqrt(a*tanh(x)^3)]
    @test_int [sqrt(a*tanh(x)^3), x, 7, -2*coth(x)*sqrt(a*tanh(x)^3) + (atan(sqrt(tanh(x)))*sqrt(a*tanh(x)^3))/tanh(x)^(3/2) + (atanh(sqrt(tanh(x)))*sqrt(a*tanh(x)^3))/tanh(x)^(3/2)]
    @test_int [1/sqrt(a*tanh(x)^3), x, 7, -((2*tanh(x))/sqrt(a*tanh(x)^3)) - (atan(sqrt(tanh(x)))*tanh(x)^(3/2))/sqrt(a*tanh(x)^3) + (atanh(sqrt(tanh(x)))*tanh(x)^(3/2))/sqrt(a*tanh(x)^3)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tanh(c+d*x)^4)^n=#


    @test_int [(a*tanh(x)^4)^(3/2),x, 5, (-a)*coth(x)*sqrt(a*tanh(x)^4) + a*x*coth(x)^2*sqrt(a*tanh(x)^4) - (1/3)*a*tanh(x)*sqrt(a*tanh(x)^4) - (1/5)*a*tanh(x)^3*sqrt(a*tanh(x)^4)]
    @test_int [sqrt(a*tanh(x)^4), x, 3, (-coth(x))*sqrt(a*tanh(x)^4) + x*coth(x)^2*sqrt(a*tanh(x)^4)]
    @test_int [1/sqrt(a*tanh(x)^4), x, 3, -(tanh(x)/sqrt(a*tanh(x)^4)) + (x*tanh(x)^2)/sqrt(a*tanh(x)^4)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tanh(c+d*x)^m)^n=#


    @test_int [(b*tanh(c + d*x)^m)^n, x, 3, (1/(d*(1 + m*n)))*(Hypergeometric2F1(1, (1/2)*(1 + m*n), (1/2)*(3 + m*n), tanh(c + d*x)^2)*tanh(c + d*x)*(b*tanh(c + d*x)^m)^n)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Hyper(c+d*x)^m*(a+b*tanh(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*tanh(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 = 0=#


    @test_int [(a + a*tanh(c + d*x))^5, x, 5, 16*a^5*x + (16*a^5*log(cosh(c + d*x)))/d - (8*a^5*tanh(c + d*x))/d - (2*a^2*(a + a*tanh(c + d*x))^3)/(3*d) - (a*(a + a*tanh(c + d*x))^4)/(4*d) - (2*a*(a^2 + a^2*tanh(c + d*x))^2)/d]
    @test_int [(a + a*tanh(c + d*x))^4, x, 4, 8*a^4*x + (8*a^4*log(cosh(c + d*x)))/d - (4*a^4*tanh(c + d*x))/d - (a*(a + a*tanh(c + d*x))^3)/(3*d) - (a^2 + a^2*tanh(c + d*x))^2/d]
    @test_int [(a + a*tanh(c + d*x))^3, x, 3, 4*a^3*x + (4*a^3*log(cosh(c + d*x)))/d - (2*a^3*tanh(c + d*x))/d - (a*(a + a*tanh(c + d*x))^2)/(2*d)]
    @test_int [(a + a*tanh(c + d*x))^2, x, 2, 2*a^2*x + (2*a^2*log(cosh(c + d*x)))/d - (a^2*tanh(c + d*x))/d]
    @test_int [1/(a + a*tanh(c + d*x)), x, 2, x/(2*a) - 1/(2*d*(a + a*tanh(c + d*x)))]
    @test_int [1/(a + a*tanh(c + d*x))^2, x, 3, x/(4*a^2) - 1/(4*d*(a + a*tanh(c + d*x))^2) - 1/(4*d*(a^2 + a^2*tanh(c + d*x)))]
    @test_int [1/(a + a*tanh(c + d*x))^3, x, 4, x/(8*a^3) - 1/(6*d*(a + a*tanh(c + d*x))^3) - 1/(8*a*d*(a + a*tanh(c + d*x))^2) - 1/(8*d*(a^3 + a^3*tanh(c + d*x)))]
    @test_int [1/(a + a*tanh(c + d*x))^4, x, 5, x/(16*a^4) - 1/(8*d*(a + a*tanh(c + d*x))^4) - 1/(12*a*d*(a + a*tanh(c + d*x))^3) - 1/(16*d*(a^2 + a^2*tanh(c + d*x))^2) - 1/(16*d*(a^4 + a^4*tanh(c + d*x)))]
    @test_int [1/(a + a*tanh(c + d*x))^5, x, 6, x/(32*a^5) - 1/(10*d*(a + a*tanh(c + d*x))^5) - 1/(16*a*d*(a + a*tanh(c + d*x))^4) - 1/(24*a^2*d*(a + a*tanh(c + d*x))^3) - 1/(32*a*d*(a^2 + a^2*tanh(c + d*x))^2) - 1/(32*d*(a^5 + a^5*tanh(c + d*x)))]


    @test_int [(1 + tanh(x))^(7/2), x, 5, 8*sqrt(2)*atanh(sqrt(1 + tanh(x))/sqrt(2)) - 8*sqrt(1 + tanh(x)) - (4/3)*(1 + tanh(x))^(3/2) - (2/5)*(1 + tanh(x))^(5/2)]
    @test_int [(1 + tanh(x))^(5/2), x, 4, 4*sqrt(2)*atanh(sqrt(1 + tanh(x))/sqrt(2)) - 4*sqrt(1 + tanh(x)) - (2/3)*(1 + tanh(x))^(3/2)]
    @test_int [(1 + tanh(x))^(3/2), x, 3, 2*sqrt(2)*atanh(sqrt(1 + tanh(x))/sqrt(2)) - 2*sqrt(1 + tanh(x))]
    @test_int [(1 + tanh(x))^(1/2), x, 2, sqrt(2)*atanh(sqrt(1 + tanh(x))/sqrt(2))]
    @test_int [1/(1 + tanh(x))^(1/2), x, 3, atanh(sqrt(1 + tanh(x))/sqrt(2))/sqrt(2) - 1/sqrt(1 + tanh(x))]
    @test_int [1/(1 + tanh(x))^(3/2), x, 4, atanh(sqrt(1 + tanh(x))/sqrt(2))/(2*sqrt(2)) - 1/(3*(1 + tanh(x))^(3/2)) - 1/(2*sqrt(1 + tanh(x)))]
    @test_int [1/(1 + tanh(x))^(5/2), x, 5, atanh(sqrt(1 + tanh(x))/sqrt(2))/(4*sqrt(2)) - 1/(5*(1 + tanh(x))^(5/2)) - 1/(6*(1 + tanh(x))^(3/2)) - 1/(4*sqrt(1 + tanh(x)))]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 /= 0=#


    @test_int [(a + b*tanh(c + d*x))^5, x, 5, a*(a^4 + 10*a^2*b^2 + 5*b^4)*x + (b*(5*a^4 + 10*a^2*b^2 + b^4)*log(cosh(c + d*x)))/d - (4*a*b^2*(a^2 + b^2)*tanh(c + d*x))/d - (b*(3*a^2 + b^2)*(a + b*tanh(c + d*x))^2)/(2*d) - (2*a*b*(a + b*tanh(c + d*x))^3)/(3*d) - (b*(a + b*tanh(c + d*x))^4)/(4*d)]
    @test_int [(a + b*tanh(c + d*x))^4, x, 4, (a^4 + 6*a^2*b^2 + b^4)*x + (4*a*b*(a^2 + b^2)*log(cosh(c + d*x)))/d - (b^2*(3*a^2 + b^2)*tanh(c + d*x))/d - (a*b*(a + b*tanh(c + d*x))^2)/d - (b*(a + b*tanh(c + d*x))^3)/(3*d)]
    @test_int [(a + b*tanh(c + d*x))^3, x, 3, a*(a^2 + 3*b^2)*x + (b*(3*a^2 + b^2)*log(cosh(c + d*x)))/d - (2*a*b^2*tanh(c + d*x))/d - (b*(a + b*tanh(c + d*x))^2)/(2*d)]
    @test_int [(a + b*tanh(c + d*x))^2, x, 2, (a^2 + b^2)*x + (2*a*b*log(cosh(c + d*x)))/d - (b^2*tanh(c + d*x))/d]
    @test_int [1/(a + b*tanh(c + d*x)),x, 2, (a*x)/(a^2 - b^2) - (b*log(a*cosh(c + d*x) + b*sinh(c + d*x)))/((a^2 - b^2)*d)]
    @test_int [1/(a + b*tanh(c + d*x))^2,x, 3, ((a^2 + b^2)*x)/(a^2 - b^2)^2 - (2*a*b*log(a*cosh(c + d*x) + b*sinh(c + d*x)))/((a^2 - b^2)^2*d) + b/((a^2 - b^2)*d*(a + b*tanh(c + d*x)))]
    @test_int [1/(a + b*tanh(c + d*x))^3,x, 4, (a*(a^2 + 3*b^2)*x)/(a^2 - b^2)^3 - (b*(3*a^2 + b^2)*log(a*cosh(c + d*x) + b*sinh(c + d*x)))/((a^2 - b^2)^3*d) + b/(2*(a^2 - b^2)*d*(a + b*tanh(c + d*x))^2) + (2*a*b)/((a^2 - b^2)^2*d*(a + b*tanh(c + d*x)))]
    @test_int [1/(a + b*tanh(c + d*x))^4,x, 5, ((a^4 + 6*a^2*b^2 + b^4)*x)/(a^2 - b^2)^4 - (4*a*b*(a^2 + b^2)*log(a*cosh(c + d*x) + b*sinh(c + d*x)))/((a^2 - b^2)^4*d) + b/(3*(a^2 - b^2)*d*(a + b*tanh(c + d*x))^3) + (a*b)/((a^2 - b^2)^2*d*(a + b*tanh(c + d*x))^2) + (b*(3*a^2 + b^2))/((a^2 - b^2)^3*d*(a + b*tanh(c + d*x)))]

    @test_int [1/(4 + 6*tanh(c + d*x)), x, 2, -(x/5) + (3*log(2*cosh(c + d*x) + 3*sinh(c + d*x)))/(10*d)]
    @test_int [1/(4 - 6*tanh(c + d*x)), x, 2, -(x/5) - (3*log(2*cosh(c + d*x) - 3*sinh(c + d*x)))/(10*d)]


    @test_int [sqrt(a + b*tanh(c + d*x)), x, 5, -((sqrt(a - b)*atanh(sqrt(a + b*tanh(c + d*x))/sqrt(a - b)))/d) + (sqrt(a + b)*atanh(sqrt(a + b*tanh(c + d*x))/sqrt(a + b)))/d]
    @test_int [1/sqrt(a + b*tanh(c + d*x)), x, 5, -(atanh(sqrt(a + b*tanh(c + d*x))/sqrt(a - b))/(sqrt(a - b)*d)) + atanh(sqrt(a + b*tanh(c + d*x))/sqrt(a + b))/(sqrt(a + b)*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(c+d*x)^m*(a+b*tanh(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 = 0=#


    @test_int [sinh(x)^4/(1 + tanh(x)), x, 5, x/16 + 1/(32*(1 - tanh(x))^2) - 1/(8*(1 - tanh(x))) - 1/(24*(1 + tanh(x))^3) + 5/(32*(1 + tanh(x))^2) - 3/(16*(1 + tanh(x)))]
    @test_int [sinh(x)^3/(1 + tanh(x)), x, 9, (-(1/3))*cosh(x)^3 + cosh(x)^5/5 - sinh(x)^5/5]
    @test_int [sinh(x)^2/(1 + tanh(x)), x, 5, -(x/8) + 1/(8*(1 - tanh(x))) - 1/(8*(1 + tanh(x))^2) + 1/(4*(1 + tanh(x)))]
    @test_int [sinh(x)^1/(1 + tanh(x)), x, 8, cosh(x)^3/3 - sinh(x)^3/3]
    @test_int [csch(x)^1/(1 + tanh(x)), x, 8, -atanh(cosh(x)) + cosh(x) - sinh(x)]
    @test_int [csch(x)^2/(1 + tanh(x)), x, 3, -coth(x) - log(tanh(x)) + log(1 + tanh(x))]
    @test_int [csch(x)^3/(1 + tanh(x)), x, 8, (-(1/2))*atanh(cosh(x)) + csch(x) - (1/2)*coth(x)*csch(x)]
    @test_int [csch(x)^4/(1 + tanh(x)), x, 4, coth(x)^2/2 - coth(x)^3/3]
    @test_int [csch(x)^5/(1 + tanh(x)), x, 9, (1/8)*atanh(cosh(x)) - (1/8)*coth(x)*csch(x) + csch(x)^3/3 - (1/4)*coth(x)*csch(x)^3]
    @test_int [csch(x)^6/(1 + tanh(x)), x, 4, (-(1/2))*coth(x)^2 + coth(x)^3/3 + coth(x)^4/4 - coth(x)^5/5]
    @test_int [csch(x)^7/(1 + tanh(x)), x, 10, (-(1/16))*atanh(cosh(x)) + (1/16)*coth(x)*csch(x) - (1/24)*coth(x)*csch(x)^3 + csch(x)^5/5 - (1/6)*coth(x)*csch(x)^5]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 /= 0=#


    @test_int [sinh(x)^4/(a + b*tanh(x)), x, 5, -((a*(3*a + b)*log(1 - tanh(x)))/(16*(a + b)^3)) + (a*(3*a - b)*log(1 + tanh(x)))/(16*(a - b)^3) - (a^4*b*log(a + b*tanh(x)))/(a^2 - b^2)^3 - (cosh(x)^4*(b - a*tanh(x)))/(4*(a^2 - b^2)) + (cosh(x)^2*(4*b*(2*a^2 - b^2) - a*(5*a^2 - b^2)*tanh(x)))/(8*(a^2 - b^2)^2)]
    @test_int [sinh(x)^3/(a + b*tanh(x)), x, 10, -((a^3*b*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2)) - (a*b^2*cosh(x))/(a^2 - b^2)^2 - (a*cosh(x))/(a^2 - b^2) + (a*cosh(x)^3)/(3*(a^2 - b^2)) + (a^2*b*sinh(x))/(a^2 - b^2)^2 - (b*sinh(x)^3)/(3*(a^2 - b^2))]
    @test_int [sinh(x)^2/(a + b*tanh(x)), x, 4, (a*log(1 - tanh(x)))/(4*(a + b)^2) - (a*log(1 + tanh(x)))/(4*(a - b)^2) + (a^2*b*log(a + b*tanh(x)))/(a^2 - b^2)^2 - (cosh(x)^2*(b - a*tanh(x)))/(2*(a^2 - b^2))]
    @test_int [sinh(x)^1/(a + b*tanh(x)), x, 6, (a*b*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2) + (a*cosh(x))/(a^2 - b^2) - (b*sinh(x))/(a^2 - b^2)]
    @test_int [csch(x)^1/(a + b*tanh(x)), x, 6, -((b*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/(a*sqrt(a^2 - b^2))) - atanh(cosh(x))/a]
    @test_int [csch(x)^2/(a + b*tanh(x)), x, 3, -(coth(x)/a) - (b*log(tanh(x)))/a^2 + (b*log(a + b*tanh(x)))/a^2]
    @test_int [csch(x)^3/(a + b*tanh(x)), x, 15, (b*sqrt(a^2 - b^2)*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/a^3 + atanh(cosh(x))/(2*a) - (b^2*atanh(cosh(x)))/a^3 + (b*csch(x))/a^2 - (coth(x)*csch(x))/(2*a)]
    @test_int [csch(x)^4/(a + b*tanh(x)), x, 3, ((a^2 - b^2)*coth(x))/a^3 + (b*coth(x)^2)/(2*a^2) - coth(x)^3/(3*a) + (b*(a^2 - b^2)*log(tanh(x)))/a^4 - (b*(a^2 - b^2)*log(a + b*tanh(x)))/a^4]
    @test_int [csch(x)^5/(a + b*tanh(x)), x, 29, -((b*atan(sinh(x)))/a^2) + (b^3*atan(sinh(x)))/a^4 + (b*(a^2 - b^2)*atan(sinh(x)))/a^4 - (b*(a^2 - b^2)^(3/2)*atan((b*cosh(x) + a*sinh(x))/sqrt(a^2 - b^2)))/a^5 - (3*atanh(cosh(x)))/(8*a) + (3*b^2*atanh(cosh(x)))/(2*a^3) - (b^4*atanh(cosh(x)))/a^5 - (b*csch(x))/a^2 + (3*b^3*csch(x))/(2*a^4) + (3*coth(x)*csch(x))/(8*a) + (b*csch(x)^3)/(3*a^2) - (coth(x)*csch(x)^3)/(4*a) - (3*b^2*sech(x))/(2*a^3) + (b^4*sech(x))/a^5 + (b^2*(a^2 - b^2)*sech(x))/a^5 - (b^2*csch(x)^2*sech(x))/(2*a^3) - (b^3*csch(x)*sech(x)^2)/(2*a^4) - (b^3*sech(x)*tanh(x))/(2*a^4)]
    @test_int [csch(x)^6/(a + b*tanh(x)), x, 3, -(((a^2 - b^2)^2*coth(x))/a^5) - (b*(2*a^2 - b^2)*coth(x)^2)/(2*a^4) + ((2*a^2 - b^2)*coth(x)^3)/(3*a^3) + (b*coth(x)^4)/(4*a^2) - coth(x)^5/(5*a) - (b*(a^2 - b^2)^2*log(tanh(x)))/a^6 + (b*(a^2 - b^2)^2*log(a + b*tanh(x)))/a^6]


    #= Following*hangs*Mathematica*6 & 7: =# 
    @test_int [csch(x)/(im + tanh(x)), x, 6, im*atanh(cosh(x)) - (im*atanh((cosh(x) + im*sinh(x))/sqrt(2)))/sqrt(2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sech(c+d*x)^m*(a+b*tanh(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 = 0=#


    @test_int [cosh(x)^4/(1 + tanh(x)), x, 4, (5*x)/16 + 1/(32*(1 - tanh(x))^2) + 1/(8*(1 - tanh(x))) - 1/(24*(1 + tanh(x))^3) - 3/(32*(1 + tanh(x))^2) - 3/(16*(1 + tanh(x)))]
    @test_int [cosh(x)^3/(1 + tanh(x)), x, 3, (4*sinh(x))/5 + (4*sinh(x)^3)/15 - cosh(x)^3/(5*(1 + tanh(x)))]
    @test_int [cosh(x)^2/(1 + tanh(x)), x, 4, (3*x)/8 + 1/(8*(1 - tanh(x))) - 1/(8*(1 + tanh(x))^2) - 1/(4*(1 + tanh(x)))]
    @test_int [cosh(x)^1/(1 + tanh(x)), x, 2, (2*sinh(x))/3 - cosh(x)/(3*(1 + tanh(x)))]
    @test_int [sech(x)^1/(1 + tanh(x)), x, 1, -(sech(x)/(1 + tanh(x)))]
    @test_int [sech(x)^2/(1 + tanh(x)), x, 2, log(1 + tanh(x))]
    @test_int [sech(x)^3/(1 + tanh(x)), x, 2, atan(sinh(x)) + sech(x)]
    @test_int [sech(x)^4/(1 + tanh(x)), x, 2, tanh(x) - tanh(x)^2/2]
    @test_int [sech(x)^5/(1 + tanh(x)), x, 3, (1/2)*atan(sinh(x)) + sech(x)^3/3 + (1/2)*sech(x)*tanh(x)]
    @test_int [sech(x)^6/(1 + tanh(x)), x, 3, (-(2/3))*(1 - tanh(x))^3 + (1/4)*(1 - tanh(x))^4]
    @test_int [sech(x)^7/(1 + tanh(x)), x, 4, (3/8)*atan(sinh(x)) + sech(x)^5/5 + (3/8)*sech(x)*tanh(x) + (1/4)*sech(x)^3*tanh(x)]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 /= 0=#


    @test_int [sech(x)^8/(a + b*tanh(x)), x, 3, -(((a^2 - b^2)^3*log(a + b*tanh(x)))/b^7) + (a*(a^4 - 3*a^2*b^2 + 3*b^4)*tanh(x))/b^6 - ((a^4 - 3*a^2*b^2 + 3*b^4)*tanh(x)^2)/(2*b^5) + (a*(a^2 - 3*b^2)*tanh(x)^3)/(3*b^4) - ((a^2 - 3*b^2)*tanh(x)^4)/(4*b^3) + (a*tanh(x)^5)/(5*b^2) - tanh(x)^6/(6*b)]
    @test_int [sech(x)^6/(a + b*tanh(x)), x, 3, ((a^2 - b^2)^2*log(a + b*tanh(x)))/b^5 - (a*(a^2 - 2*b^2)*tanh(x))/b^4 + ((a^2 - 2*b^2)*tanh(x)^2)/(2*b^3) - (a*tanh(x)^3)/(3*b^2) + tanh(x)^4/(4*b)]
    @test_int [sech(x)^4/(a + b*tanh(x)), x, 3, -(((a^2 - b^2)*log(a + b*tanh(x)))/b^3) + (a*tanh(x))/b^2 - tanh(x)^2/(2*b)]
    @test_int [sech(x)^2/(a + b*tanh(x)), x, 2, log(a + b*tanh(x))/b]
    @test_int [sech(x)^0/(a + b*tanh(x)), x, 2, (a*x)/(a^2 - b^2) - (b*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)]
    @test_int [cosh(x)^2/(a + b*tanh(x)), x, 4, -(((a + 2*b)*log(1 - tanh(x)))/(4*(a + b)^2)) + ((a - 2*b)*log(1 + tanh(x)))/(4*(a - b)^2) + (b^3*log(a + b*tanh(x)))/(a^2 - b^2)^2 - (cosh(x)^2*(b - a*tanh(x)))/(2*(a^2 - b^2))]
    @test_int [cosh(x)^4/(a + b*tanh(x)), x, 5, -(((3*a^2 + 9*a*b + 8*b^2)*log(1 - tanh(x)))/(16*(a + b)^3)) + ((3*a^2 - 9*a*b + 8*b^2)*log(1 + tanh(x)))/(16*(a - b)^3) - (b^5*log(a + b*tanh(x)))/(a^2 - b^2)^3 - (cosh(x)^4*(b - a*tanh(x)))/(4*(a^2 - b^2)) + (cosh(x)^2*(4*b^3 - a*(7 - (3*a^2)/b^2)*b^2*tanh(x)))/(8*(a^2 - b^2)^2)]

    @test_int [sech(x)^7/(a + b*tanh(x)), x, 14, (a*(8*a^4 - 20*a^2*b^2 + 15*b^4)*atan(sinh(x)))/(8*b^6) - ((a^2 - b^2)^(5/2)*atan((cosh(x)*(b + a*tanh(x)))/sqrt(a^2 - b^2)))/b^6 + ((a^2 - b^2)^2*sech(x))/b^5 - ((a^2 - b^2)*sech(x)^3)/(3*b^3) + sech(x)^5/(5*b) - (a*(4*a^2 - 7*b^2)*sech(x)*tanh(x))/(8*b^4) + (a*sech(x)^3*tanh(x))/(4*b^2), (3*a*atan(sinh(x)))/(8*b^2) - (a*(a^2 - b^2)*atan(sinh(x)))/(2*b^4) + (a*(a^2 - b^2)^2*atan(sinh(x)))/b^6 - ((a^2 - b^2)^(5/2)*atan((cosh(x)*(b + a*tanh(x)))/sqrt(a^2 - b^2)))/b^6 + ((a^2 - b^2)^2*sech(x))/b^5 - ((a^2 - b^2)*sech(x)^3)/(3*b^3) + sech(x)^5/(5*b) + (3*a*sech(x)*tanh(x))/(8*b^2) - (a*(a^2 - b^2)*sech(x)*tanh(x))/(2*b^4) + (a*sech(x)^3*tanh(x))/(4*b^2)]
    @test_int [sech(x)^5/(a + b*tanh(x)), x, 9, -((a*(2*a^2 - 3*b^2)*atan(sinh(x)))/(2*b^4)) + ((a^2 - b^2)^(3/2)*atan((cosh(x)*(b + a*tanh(x)))/sqrt(a^2 - b^2)))/b^4 - ((a^2 - b^2)*sech(x))/b^3 + sech(x)^3/(3*b) + (a*sech(x)*tanh(x))/(2*b^2), (a*atan(sinh(x)))/(2*b^2) - (a*(a^2 - b^2)*atan(sinh(x)))/b^4 + ((a^2 - b^2)^(3/2)*atan((cosh(x)*(b + a*tanh(x)))/sqrt(a^2 - b^2)))/b^4 - ((a^2 - b^2)*sech(x))/b^3 + sech(x)^3/(3*b) + (a*sech(x)*tanh(x))/(2*b^2)]
    @test_int [sech(x)^3/(a + b*tanh(x)), x, 5, (a*atan(sinh(x)))/b^2 - (sqrt(a^2 - b^2)*atan((cosh(x)*(b + a*tanh(x)))/sqrt(a^2 - b^2)))/b^2 + sech(x)/b]
    @test_int [sech(x)^1/(a + b*tanh(x)), x, 2, atan((cosh(x)*(b + a*tanh(x)))/sqrt(a^2 - b^2))/sqrt(a^2 - b^2)]
    @test_int [cosh(x)^1/(a + b*tanh(x)), x, 5, -((b^2*atan((cosh(x)*(b + a*tanh(x)))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2)) - (b*cosh(x))/(a^2 - b^2) + (a*sinh(x))/(a^2 - b^2)]
    @test_int [cosh(x)^3/(a + b*tanh(x)), x, 9, (b^4*atan((cosh(x)*(b + a*tanh(x)))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2) + (b^3*cosh(x))/(a^2 - b^2)^2 - (b*cosh(x)^3)/(3*(a^2 - b^2)) - (a*b^2*sinh(x))/(a^2 - b^2)^2 + (a*sinh(x))/(a^2 - b^2) + (a*sinh(x)^3)/(3*(a^2 - b^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*tanh(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 = 0=#


    @test_int [tanh(x)^5/(1 + tanh(x)), x, 5, (5*x)/2 - 2*log(cosh(x)) - (5*tanh(x))/2 + tanh(x)^2 - (5*tanh(x)^3)/6 + tanh(x)^4/(2*(1 + tanh(x)))]
    @test_int [tanh(x)^4/(1 + tanh(x)), x, 4, -((3*x)/2) + 2*log(cosh(x)) + (3*tanh(x))/2 - tanh(x)^2 + tanh(x)^3/(2*(1 + tanh(x)))]
    @test_int [tanh(x)^3/(1 + tanh(x)), x, 3, (3*x)/2 - log(cosh(x)) - (3*tanh(x))/2 + tanh(x)^2/(2*(1 + tanh(x)))]
    @test_int [tanh(x)^2/(1 + tanh(x)), x, 3, -(x/2) + log(cosh(x)) - 1/(2*(1 + tanh(x)))]
    @test_int [tanh(x)^1/(1 + tanh(x)), x, 2, x/2 + 1/(2*(1 + tanh(x)))]
    @test_int [tanh(x)^0/(1 + tanh(x)), x, 2, x/2 - 1/(2*(1 + tanh(x)))]
    @test_int [coth(x)^1/(1 + tanh(x)), x, 4, -(x/2) + log(sinh(x)) + 1/(2*(1 + tanh(x)))]
    @test_int [coth(x)^2/(1 + tanh(x)), x, 4, (3*x)/2 - (3*coth(x))/2 - log(sinh(x)) + coth(x)/(2*(1 + tanh(x)))]
    @test_int [coth(x)^3/(1 + tanh(x)), x, 5, -((3*x)/2) + (3*coth(x))/2 - coth(x)^2 + 2*log(sinh(x)) + coth(x)^2/(2*(1 + tanh(x)))]
    @test_int [coth(x)^4/(1 + tanh(x)), x, 6, (5*x)/2 - (5*coth(x))/2 + coth(x)^2 - (5*coth(x)^3)/6 - 2*log(sinh(x)) + coth(x)^3/(2*(1 + tanh(x)))]


    @test_int [tanh(x)*(1 + tanh(x))^(3/2), x, 4, 2*sqrt(2)*atanh(sqrt(1 + tanh(x))/sqrt(2)) - 2*sqrt(1 + tanh(x)) - (2/3)*(1 + tanh(x))^(3/2)]
    @test_int [tanh(x)*sqrt(1 + tanh(x)), x, 3, sqrt(2)*atanh(sqrt(1 + tanh(x))/sqrt(2)) - 2*sqrt(1 + tanh(x))]
    @test_int [tanh(x)/sqrt(1 + tanh(x)), x, 3, atanh(sqrt(1 + tanh(x))/sqrt(2))/sqrt(2) + 1/sqrt(1 + tanh(x))]
    @test_int [tanh(x)/(1 + tanh(x))^(3/2), x, 4, atanh(sqrt(1 + tanh(x))/sqrt(2))/(2*sqrt(2)) + 1/(3*(1 + tanh(x))^(3/2)) - 1/(2*sqrt(1 + tanh(x)))]

    @test_int [tanh(x)^2*(1 + tanh(x))^(3/2), x, 4, 2*sqrt(2)*atanh(sqrt(1 + tanh(x))/sqrt(2)) - 2*sqrt(1 + tanh(x)) - (2/5)*(1 + tanh(x))^(5/2)]
    @test_int [tanh(x)^2*sqrt(1 + tanh(x)), x, 3, sqrt(2)*atanh(sqrt(1 + tanh(x))/sqrt(2)) - (2/3)*(1 + tanh(x))^(3/2)]
    @test_int [tanh(x)^2/sqrt(1 + tanh(x)), x, 4, atanh(sqrt(1 + tanh(x))/sqrt(2))/sqrt(2) - 1/sqrt(1 + tanh(x)) - 2*sqrt(1 + tanh(x))]
    @test_int [tanh(x)^2/(1 + tanh(x))^(3/2), x, 4, atanh(sqrt(1 + tanh(x))/sqrt(2))/(2*sqrt(2)) - 1/(3*(1 + tanh(x))^(3/2)) + 3/(2*sqrt(1 + tanh(x)))]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 /= 0=#


    @test_int [tanh(x)^5/(a + b*tanh(x)), x, 7, -((b*x)/(a^2 - b^2)) + (a*log(cosh(x)))/(a^2 - b^2) + (a^5*log(a + b*tanh(x)))/(b^4*(a^2 - b^2)) - ((a^2 + b^2)*tanh(x))/b^3 + (a*tanh(x)^2)/(2*b^2) - tanh(x)^3/(3*b)]
    @test_int [tanh(x)^4/(a + b*tanh(x)), x, 6, (a*x)/(a^2 - b^2) - (b*log(cosh(x)))/(a^2 - b^2) - (a^4*log(a + b*tanh(x)))/(b^3*(a^2 - b^2)) + (a*tanh(x))/b^2 - tanh(x)^2/(2*b)]
    @test_int [tanh(x)^3/(a + b*tanh(x)), x, 5, -((b*x)/(a^2 - b^2)) + (a*log(cosh(x)))/(a^2 - b^2) + (a^3*log(a + b*tanh(x)))/(b^2*(a^2 - b^2)) - tanh(x)/b]
    @test_int [tanh(x)^2/(a + b*tanh(x)), x, 4, -((a*x)/b^2) + (a^3*x)/(b^2*(a^2 - b^2)) + log(cosh(x))/b - (a^2*log(a*cosh(x) + b*sinh(x)))/(b*(a^2 - b^2))]
    @test_int [tanh(x)^1/(a + b*tanh(x)), x, 2, -((b*x)/(a^2 - b^2)) + (a*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)]
    @test_int [tanh(x)^0/(a + b*tanh(x)), x, 2, (a*x)/(a^2 - b^2) - (b*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)]
    @test_int [coth(x)^1/(a + b*tanh(x)), x, 3, -((b*x)/(a^2 - b^2)) + log(sinh(x))/a + (b^2*log(a*cosh(x) + b*sinh(x)))/(a*(a^2 - b^2))]
    @test_int [coth(x)^2/(a + b*tanh(x)), x, 4, (a*x)/(a^2 - b^2) - coth(x)/a - (b*log(sinh(x)))/a^2 - (b^3*log(a*cosh(x) + b*sinh(x)))/(a^2*(a^2 - b^2))]
    @test_int [coth(x)^3/(a + b*tanh(x)), x, 5, -((b*x)/(a^2 - b^2)) + (b*coth(x))/a^2 - coth(x)^2/(2*a) + ((a^2 + b^2)*log(sinh(x)))/a^3 + (b^4*log(a*cosh(x) + b*sinh(x)))/(a^3*(a^2 - b^2))]
    @test_int [coth(x)^4/(a + b*tanh(x)), x, 6, (a*x)/(a^2 - b^2) - ((a^2 + b^2)*coth(x))/a^3 + (b*coth(x)^2)/(2*a^2) - coth(x)^3/(3*a) - (b*(a^2 + b^2)*log(sinh(x)))/a^4 - (b^5*log(a*cosh(x) + b*sinh(x)))/(a^4*(a^2 - b^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*sech(c+d*x)^2*(a+b*tanh(c+d*x)^n)^p=#


    @test_int [x*sech(x)^2/(a + b*tanh(x))^2, x, 3, (a*x)/(b*(a^2 - b^2)) - log(a*cosh(x) + b*sinh(x))/(a^2 - b^2) - x/(b*(a + b*tanh(x)))]


    @test_int [x*sech(c + d*x)^2/(a + b*tanh(c + d*x)^2), x, 9, (x*log(1 + ((a + b)*ℯ^(2*c + 2*d*x))/(a - 2*sqrt(-a)*sqrt(b) - b)))/(2*sqrt(-a)*sqrt(b)*d) - (x*log(1 + ((a + b)*ℯ^(2*c + 2*d*x))/(a + 2*sqrt(-a)*sqrt(b) - b)))/(2*sqrt(-a)*sqrt(b)*d) + PolyLog(2, -(((a + b)*ℯ^(2*c + 2*d*x))/(a - 2*sqrt(-a)*sqrt(b) - b)))/(4*sqrt(-a)*sqrt(b)*d^2) - PolyLog(2, -(((a + b)*ℯ^(2*c + 2*d*x))/(a + 2*sqrt(-a)*sqrt(b) - b)))/(4*sqrt(-a)*sqrt(b)*d^2)]
    @test_int [x^2*sech(c + d*x)^2/(a + b*tanh(c + d*x)^2), x, 11, (x^2*log(1 + ((a + b)*ℯ^(2*c + 2*d*x))/(a - 2*sqrt(-a)*sqrt(b) - b)))/(2*sqrt(-a)*sqrt(b)*d) - (x^2*log(1 + ((a + b)*ℯ^(2*c + 2*d*x))/(a + 2*sqrt(-a)*sqrt(b) - b)))/(2*sqrt(-a)*sqrt(b)*d) + (x*PolyLog(2, -(((a + b)*ℯ^(2*c + 2*d*x))/(a - 2*sqrt(-a)*sqrt(b) - b))))/(2*sqrt(-a)*sqrt(b)*d^2) - (x*PolyLog(2, -(((a + b)*ℯ^(2*c + 2*d*x))/(a + 2*sqrt(-a)*sqrt(b) - b))))/(2*sqrt(-a)*sqrt(b)*d^2) - PolyLog(3, -(((a + b)*ℯ^(2*c + 2*d*x))/(a - 2*sqrt(-a)*sqrt(b) - b)))/(4*sqrt(-a)*sqrt(b)*d^3) + PolyLog(3, -(((a + b)*ℯ^(2*c + 2*d*x))/(a + 2*sqrt(-a)*sqrt(b) - b)))/(4*sqrt(-a)*sqrt(b)*d^3)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tanh(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*tanh(a+b*log(x))^p=#


    @test_int [x^3*tanh(a + 2*log(x)), x, 4, x^4/4 - log(1 + ℯ^(2*a)*x^4)/(2*ℯ^(2*a))]
    @test_int [x^2*tanh(a + 2*log(x)), x, 11, x^3/3 + atan(1 - sqrt(2)*ℯ^(a/2)*x)/(sqrt(2)*ℯ^((3*a)/2)) - atan(1 + sqrt(2)*ℯ^(a/2)*x)/(sqrt(2)*ℯ^((3*a)/2)) - log(1 - sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2)/(2*sqrt(2)*ℯ^((3*a)/2)) + log(1 + sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2)/(2*sqrt(2)*ℯ^((3*a)/2))]
    @test_int [x^1*tanh(a + 2*log(x)), x, 4, x^2/2 - atan(ℯ^a*x^2)/ℯ^a]
    @test_int [x^0*tanh(a + 2*log(x)), x, 11, x + atan(1 - sqrt(2)*ℯ^(a/2)*x)/(sqrt(2)*ℯ^(a/2)) - atan(1 + sqrt(2)*ℯ^(a/2)*x)/(sqrt(2)*ℯ^(a/2)) + log(1 - sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2)/(2*sqrt(2)*ℯ^(a/2)) - log(1 + sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2)/(2*sqrt(2)*ℯ^(a/2))]
    @test_int [tanh(a + 2*log(x))/x^1, x, 2, log(cosh(a + 2*log(x)))/2]
    @test_int [tanh(a + 2*log(x))/x^2, x, 11, x^(-1) - (ℯ^(a/2)*atan(1 - sqrt(2)*ℯ^(a/2)*x))/sqrt(2) + (ℯ^(a/2)*atan(1 + sqrt(2)*ℯ^(a/2)*x))/sqrt(2) + (ℯ^(a/2)*log(1 - sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2))/(2*sqrt(2)) - (ℯ^(a/2)*log(1 + sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2))/(2*sqrt(2))]
    @test_int [tanh(a + 2*log(x))/x^3, x, 4, 1/(2*x^2) + ℯ^a*atan(ℯ^a*x^2)]


    @test_int [x^3*tanh(a + 2*log(x))^2, x, 4, x^4/4 - 1/(ℯ^(2*a)*(1 + ℯ^(2*a)*x^4)) - log(1 + ℯ^(2*a)*x^4)/ℯ^(2*a)]
    @test_int [x^2*tanh(a + 2*log(x))^2, x, 12, x^3/3 + x^3/(1 + ℯ^(2*a)*x^4) + (3*atan(1 - sqrt(2)*ℯ^(a/2)*x))/(ℯ^((3*a)/2)*(2*sqrt(2))) - (3*atan(1 + sqrt(2)*ℯ^(a/2)*x))/(ℯ^((3*a)/2)*(2*sqrt(2))) - (3*log(1 - sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2))/(ℯ^((3*a)/2)*(4*sqrt(2))) + (3*log(1 + sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2))/(ℯ^((3*a)/2)*(4*sqrt(2)))]
    @test_int [x^1*tanh(a + 2*log(x))^2, x, 5, x^2/2 + x^2/(1 + ℯ^(2*a)*x^4) - atan(ℯ^a*x^2)/ℯ^a]
    @test_int [x^0*tanh(a + 2*log(x))^2, x, 13, x + x/(1 + ℯ^(2*a)*x^4) + atan(1 - sqrt(2)*ℯ^(a/2)*x)/(ℯ^(a/2)*(2*sqrt(2))) - atan(1 + sqrt(2)*ℯ^(a/2)*x)/(ℯ^(a/2)*(2*sqrt(2))) + log(1 - sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2)/(ℯ^(a/2)*(4*sqrt(2))) - log(1 + sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2)/(ℯ^(a/2)*(4*sqrt(2)))]
    @test_int [tanh(a + 2*log(x))^2/x^1, x, 3, log(x) - tanh(a + 2*log(x))/2]
    @test_int [tanh(a + 2*log(x))^2/x^2, x, 12, -(1/(x*(1 + ℯ^(2*a)*x^4))) - (2*ℯ^(2*a)*x^3)/(1 + ℯ^(2*a)*x^4) + (ℯ^(a/2)*atan(1 - sqrt(2)*ℯ^(a/2)*x))/(2*sqrt(2)) - (ℯ^(a/2)*atan(1 + sqrt(2)*ℯ^(a/2)*x))/(2*sqrt(2)) - (ℯ^(a/2)*log(1 - sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2))/(4*sqrt(2)) + (ℯ^(a/2)*log(1 + sqrt(2)*ℯ^(a/2)*x + ℯ^a*x^2))/(4*sqrt(2))]
    @test_int [tanh(a + 2*log(x))^2/x^3, x, 5, -(1/(2*x^2*(1 + ℯ^(2*a)*x^4))) - (3*ℯ^(2*a)*x^2)/(2*(1 + ℯ^(2*a)*x^4)) - ℯ^a*atan(ℯ^a*x^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tanh(a+b*log(x))^p*with*m*symbolic=#


    @test_int [(e*x)^m*tanh(a + 2*log(x))^1, x, 3, (e*x)^(1 + m)/(e*(1 + m)) - (2*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/4, (5 + m)/4, -(ℯ^(2*a)*x^4)))/(e*(1 + m))]
    @test_int [(e*x)^m*tanh(a + 2*log(x))^2, x, 4, (e*x)^(1 + m)/(e*(1 + m)) + (e*x)^(1 + m)/(e*(1 + ℯ^(2*a)*x^4)) - ((e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/4, (5 + m)/4, (-ℯ^(2*a))*x^4))/e]
    @test_int [(e*x)^m*tanh(a + 2*log(x))^3, x, 5, ((3 + m)*(5 + m)*(e*x)^(1 + m))/(8*e*(1 + m)) - ((e*x)^(1 + m)*(1 - ℯ^(2*a)*x^4)^2)/(4*e*(1 + ℯ^(2*a)*x^4)^2) - ((e*x)^(1 + m)*(ℯ^(2*a)*(3 - m) + ℯ^(4*a)*(5 + m)*x^4))/(ℯ^(2*a)*(8*e*(1 + ℯ^(2*a)*x^4))) - ((9 + 2*m + m^2)*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/4, (5 + m)/4, (-ℯ^(2*a))*x^4))/(4*e*(1 + m))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tanh(a+b*log(x))^p*with*p*symbolic=#
    #==#


    @test_int [tanh(a + b*log(x))^p, x, 3, (x*(-1 + ℯ^(2*a)*x^(2*b))^p*AppellF1(1/(2*b), -p, p, (1/2)*(2 + 1/b), ℯ^(2*a)*x^(2*b), (-ℯ^(2*a))*x^(2*b)))/(1 - ℯ^(2*a)*x^(2*b))^p]
    @test_int [(e*x)^m*tanh(a + b*log(x))^p, x, 3, ((e*x)^(1 + m)*(-1 + ℯ^(2*a)*x^(2*b))^p*AppellF1((1 + m)/(2*b), -p, p, 1 + (1 + m)/(2*b), ℯ^(2*a)*x^(2*b), (-ℯ^(2*a))*x^(2*b)))/((1 - ℯ^(2*a)*x^(2*b))^p*(e*(1 + m)))]


    @test_int [tanh(a + 1/2*log(x))^p, x, 2, ((-1 + ℯ^(2*a)*x)^(1 + p)*Hypergeometric2F1(p, 1 + p, 2 + p, (1/2)*(1 - ℯ^(2*a)*x)))/(2^p*ℯ^(2*a)*(1 + p))]
    @test_int [tanh(a + 1/4*log(x))^p, x, 4, ((-1 + ℯ^(2*a)*sqrt(x))^(1 + p)*(1 + ℯ^(2*a)*sqrt(x))^(1 - p))/ℯ^(4*a) - (2^(1 - p)*p*(-1 + ℯ^(2*a)*sqrt(x))^(1 + p)*Hypergeometric2F1(p, 1 + p, 2 + p, (1/2)*(1 - ℯ^(2*a)*sqrt(x))))/(ℯ^(4*a)*(1 + p))]
    @test_int [tanh(a + 1/6*log(x))^p, x, 5, (-ℯ^(-6*a))*p*(-1 + ℯ^(2*a)*x^(1/3))^(1 + p)*(1 + ℯ^(2*a)*x^(1/3))^(1 - p) + ((-1 + ℯ^(2*a)*x^(1/3))^(1 + p)*(1 + ℯ^(2*a)*x^(1/3))^(1 - p)*x^(1/3))/ℯ^(4*a) + ((1 + 2*p^2)*(-1 + ℯ^(2*a)*x^(1/3))^(1 + p)*Hypergeometric2F1(p, 1 + p, 2 + p, (1/2)*(1 - ℯ^(2*a)*x^(1/3))))/(2^p*ℯ^(6*a)*(1 + p))]
    @test_int [tanh(a + 1/8*log(x))^p, x, 5, ((1/3)*(-1 + ℯ^(2*a)*x^(1/4))^(1 + p)*(1 + ℯ^(2*a)*x^(1/4))^(1 - p)*(ℯ^(4*a)*(3 + 2*p^2) - 2*ℯ^(6*a)*p*x^(1/4)))/ℯ^(12*a) + ((-1 + ℯ^(2*a)*x^(1/4))^(1 + p)*(1 + ℯ^(2*a)*x^(1/4))^(1 - p)*sqrt(x))/ℯ^(4*a) - (2^(2 - p)*p*(2 + p^2)*(-1 + ℯ^(2*a)*x^(1/4))^(1 + p)*Hypergeometric2F1(p, 1 + p, 2 + p, (1/2)*(1 - ℯ^(2*a)*x^(1/4))))/(ℯ^(8*a)*(3*(1 + p)))]


    @test_int [tanh(a + 1*log(x))^p, x, 3, (x*(-1 + ℯ^(2*a)*x^2)^p*AppellF1(1/2, -p, p, 3/2, ℯ^(2*a)*x^2, (-ℯ^(2*a))*x^2))/(1 - ℯ^(2*a)*x^2)^p]
    @test_int [tanh(a + 2*log(x))^p, x, 3, (x*(-1 + ℯ^(2*a)*x^4)^p*AppellF1(1/4, -p, p, 5/4, ℯ^(2*a)*x^4, (-ℯ^(2*a))*x^4))/(1 - ℯ^(2*a)*x^4)^p]
    @test_int [tanh(a + 3*log(x))^p, x, 3, (x*(-1 + ℯ^(2*a)*x^6)^p*AppellF1(1/6, -p, p, 7/6, ℯ^(2*a)*x^6, (-ℯ^(2*a))*x^6))/(1 - ℯ^(2*a)*x^6)^p]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*tanh(a+b*log(c*x^n))^p=#


    @test_int [x^3*tanh(d*(a + b*log(c*x^n))), x, 4, x^4/4 - (x^4*Hypergeometric2F1(1, 2/(b*d*n), 1 + 2/(b*d*n), -(ℯ^(2*a*d)*(c*x^n)^(2*b*d))))/2]
    @test_int [x^2*tanh(d*(a + b*log(c*x^n))), x, 4, x^3/3 - (2*x^3*Hypergeometric2F1(1, 3/(2*b*d*n), 1 + 3/(2*b*d*n), -(ℯ^(2*a*d)*(c*x^n)^(2*b*d))))/3]
    @test_int [x^1*tanh(d*(a + b*log(c*x^n))), x, 4, x^2/2 - x^2*Hypergeometric2F1(1, 1/(b*d*n), 1 + 1/(b*d*n), -(ℯ^(2*a*d)*(c*x^n)^(2*b*d)))]
    @test_int [x^0*tanh(d*(a + b*log(c*x^n))), x, 4, x - 2*x*Hypergeometric2F1(1, 1/(2*b*d*n), 1 + 1/(2*b*d*n), -(ℯ^(2*a*d)*(c*x^n)^(2*b*d)))]
    @test_int [tanh(d*(a + b*log(c*x^n)))/x^1, x, 2, log(cosh(a*d + b*d*log(c*x^n)))/(b*d*n)]
    @test_int [tanh(d*(a + b*log(c*x^n)))/x^2, x, 4, -(1/x) + (2*Hypergeometric2F1(1, -(1/(2*b*d*n)), 1 - 1/(2*b*d*n), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/x]
    @test_int [tanh(d*(a + b*log(c*x^n)))/x^3, x, 4, -1/(2*x^2) + Hypergeometric2F1(1, -(1/(b*d*n)), 1 - 1/(b*d*n), -(ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/x^2]


    @test_int [x^3*tanh(d*(a + b*log(c*x^n)))^2, x, 5, (1/4)*(1 + 4/(b*d*n))*x^4 + (x^4*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*x^4*Hypergeometric2F1(1, 2/(b*d*n), 1 + 2/(b*d*n), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(b*d*n)]
    @test_int [x^2*tanh(d*(a + b*log(c*x^n)))^2, x, 5, (1/3)*(1 + 3/(b*d*n))*x^3 + (x^3*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*x^3*Hypergeometric2F1(1, 3/(2*b*d*n), 1 + 3/(2*b*d*n), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(b*d*n)]
    @test_int [x^1*tanh(d*(a + b*log(c*x^n)))^2, x, 5, (1/2)*(1 + 2/(b*d*n))*x^2 + (x^2*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*x^2*Hypergeometric2F1(1, 1/(b*d*n), 1 + 1/(b*d*n), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(b*d*n)]
    @test_int [x^0*tanh(d*(a + b*log(c*x^n)))^2, x, 5, (1 + 1/(b*d*n))*x + (x*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*x*Hypergeometric2F1(1, 1/(2*b*d*n), 1 + 1/(2*b*d*n), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(b*d*n)]
    @test_int [tanh(d*(a + b*log(c*x^n)))^2/x^1, x, 3, log(x) - tanh(a*d + b*d*log(c*x^n))/(b*d*n)]
    @test_int [tanh(d*(a + b*log(c*x^n)))^2/x^2, x, 5, -((1 - 1/(b*d*n))/x) + (1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))/(b*d*n*x*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*Hypergeometric2F1(1, -(1/(2*b*d*n)), 1 - 1/(2*b*d*n), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(b*d*n*x)]
    @test_int [tanh(d*(a + b*log(c*x^n)))^2/x^3, x, 5, (2 - b*d*n)/(2*b*d*n*x^2) + (1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))/(b*d*n*x^2*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*Hypergeometric2F1(1, -(1/(b*d*n)), 1 - 1/(b*d*n), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(b*d*n*x^2)]


    @test_int [tanh(a + b*log(c*x^n))^3/x, x, 3, log(cosh(a + b*log(c*x^n)))/(b*n) - tanh(a + b*log(c*x^n))^2/(2*b*n)]
    @test_int [tanh(a + b*log(c*x^n))^4/x, x, 4, log(x) - tanh(a + b*log(c*x^n))/(b*n) - tanh(a + b*log(c*x^n))^3/(3*b*n)]
    @test_int [tanh(a + b*log(c*x^n))^5/x, x, 4, log(cosh(a + b*log(c*x^n)))/(b*n) - tanh(a + b*log(c*x^n))^2/(2*b*n) - tanh(a + b*log(c*x^n))^4/(4*b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tanh(a+b*log(c*x^n))^p*with*m*symbolic=#


    @test_int [(e*x)^m*tanh(d*(a + b*log(c*x^n)))^1, x, 4, (e*x)^(1 + m)/(e*(1 + m)) - (2*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/(2*b*d*n), 1 + (1 + m)/(2*b*d*n), -(ℯ^(2*a*d)*(c*x^n)^(2*b*d))))/(e*(1 + m))]
    @test_int [(e*x)^m*tanh(d*(a + b*log(c*x^n)))^2, x, 5, ((1 + m + b*d*n)*(e*x)^(1 + m))/(b*d*e*(1 + m)*n) + ((e*x)^(1 + m)*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*e*n*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/(2*b*d*n), 1 + (1 + m)/(2*b*d*n), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(b*d*e*n)]
    @test_int [(e*x)^m*tanh(d*(a + b*log(c*x^n)))^3, x, 6, ((1 + m + b*d*n)*(1 + m + 2*b*d*n)*(e*x)^(1 + m))/(2*b^2*d^2*e*(1 + m)*n^2) - ((e*x)^(1 + m)*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))^2)/(2*b*d*e*n*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))^2) + ((e*x)^(1 + m)*((ℯ^(2*a*d)*(1 + m - 2*b*d*n))/n - (ℯ^(4*a*d)*(1 + m + 2*b*d*n)*(c*x^n)^(2*b*d))/n))/(ℯ^(2*a*d)*(2*b^2*d^2*e*n*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d)))) - ((1 + 2*m + m^2 + 2*b^2*d^2*n^2)*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/(2*b*d*n), 1 + (1 + m)/(2*b*d*n), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(b^2*d^2*e*(1 + m)*n^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*tanh(a+b*log(c*x^n))^p*with*p*symbolic=#


    @test_int [tanh(d*(a + b*log(c*x^n)))^p, x, 4, (x*(-1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))^p*AppellF1(1/(2*b*d*n), -p, p, 1 + 1/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))^p]
    @test_int [(e*x)^m*tanh(d*(a + b*log(c*x^n)))^p, x, 4, ((e*x)^(1 + m)*(-1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))^p*AppellF1((1 + m)/(2*b*d*n), -p, p, 1 + (1 + m)/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/((1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))^p*(e*(1 + m)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*tanh(a+b*log(c*x^n))^(p/2)=#


    @test_int [tanh(a + b*log(c*x^n))^(5/2)/x, x, 7, -(atan(sqrt(tanh(a + b*log(c*x^n))))/(b*n)) + atanh(sqrt(tanh(a + b*log(c*x^n))))/(b*n) - (2*tanh(a + b*log(c*x^n))^(3/2))/(3*b*n)]
    @test_int [tanh(a + b*log(c*x^n))^(3/2)/x, x, 7, atan(sqrt(tanh(a + b*log(c*x^n))))/(b*n) + atanh(sqrt(tanh(a + b*log(c*x^n))))/(b*n) - (2*sqrt(tanh(a + b*log(c*x^n))))/(b*n)]
    @test_int [sqrt(tanh(a + b*log(c*x^n)))/x, x, 6, -(atan(sqrt(tanh(a + b*log(c*x^n))))/(b*n)) + atanh(sqrt(tanh(a + b*log(c*x^n))))/(b*n)]
    @test_int [1/(x*sqrt(tanh(a + b*log(c*x^n)))), x, 6, atan(sqrt(tanh(a + b*log(c*x^n))))/(b*n) + atanh(sqrt(tanh(a + b*log(c*x^n))))/(b*n)]
    @test_int [1/(x*tanh(a + b*log(c*x^n))^(3/2)), x, 7, -(atan(sqrt(tanh(a + b*log(c*x^n))))/(b*n)) + atanh(sqrt(tanh(a + b*log(c*x^n))))/(b*n) - 2/(b*n*sqrt(tanh(a + b*log(c*x^n))))]
    @test_int [1/(x*tanh(a + b*log(c*x^n))^(5/2)), x, 7, atan(sqrt(tanh(a + b*log(c*x^n))))/(b*n) + atanh(sqrt(tanh(a + b*log(c*x^n))))/(b*n) - 2/(3*b*n*tanh(a + b*log(c*x^n))^(3/2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Hyper(d+e*x)^m*(a+b*tanh(d+e*x)^2+c*tanh(d+e*x)^4)^n=#


    @test_int [tanh(x)^5/sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 8, ((b - 2*c)*atanh((b + 2*c*tanh(x)^2)/(2*sqrt(c)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4))))/(4*c^(3/2)) + atanh((2*a + b + (b + 2*c)*tanh(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)))/(2*sqrt(a + b + c)) - sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)/(2*c)]
    @test_int [tanh(x)^3/sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 7, -(atanh((b + 2*c*tanh(x)^2)/(2*sqrt(c)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)))/(2*sqrt(c))) + atanh((2*a + b + (b + 2*c)*tanh(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)))/(2*sqrt(a + b + c))]
    @test_int [tanh(x)/sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 4, atanh((2*a + b + (b + 2*c)*tanh(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)))/(2*sqrt(a + b + c))]
    @test_int [coth(x)/sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 8, -(atanh((2*a + b*tanh(x)^2)/(2*sqrt(a)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)))/(2*sqrt(a))) + atanh((2*a + b + (b + 2*c)*tanh(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)))/(2*sqrt(a + b + c))]
    @test_int [coth(x)^3/sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 11, -(atanh((2*a + b*tanh(x)^2)/(2*sqrt(a)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)))/(2*sqrt(a))) + (b*atanh((2*a + b*tanh(x)^2)/(2*sqrt(a)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4))))/(4*a^(3/2)) + atanh((2*a + b + (b + 2*c)*tanh(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)))/(2*sqrt(a + b + c)) - (coth(x)^2*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4))/(2*a)]


    #= [tanh(x)^5*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 0, 0] =#
    #= [tanh(x)^3*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 0, 0] =#
    @test_int [tanh(x)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 8, -(((b + 2*c)*atanh((b + 2*c*tanh(x)^2)/(2*sqrt(c)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4))))/(4*sqrt(c))) + (1/2)*sqrt(a + b + c)*atanh((2*a + b + (b + 2*c)*tanh(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4))) - (1/2)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4)]
    #= [coth(x)*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 0, 0] =#
    #= [coth(x)^3*sqrt(a + b*tanh(x)^2 + c*tanh(x)^4), x, 0, 0] =#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*tanh(c+d*x)^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*tanh(a+b*x)^m=#


    @test_int [ℯ^(a + b*x)*tanh(a + b*x)^4, x, 7, ℯ^(a + b*x)/b + (8*ℯ^(a + b*x))/(3*b*(1 + ℯ^(2*a + 2*b*x))^3) - (14*ℯ^(a + b*x))/(3*b*(1 + ℯ^(2*a + 2*b*x))^2) + (5*ℯ^(a + b*x))/(b*(1 + ℯ^(2*a + 2*b*x))) - (3*atan(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*tanh(a + b*x)^3, x, 7, ℯ^(a + b*x)/b - (2*ℯ^(a + b*x))/(b*(1 + ℯ^(2*a + 2*b*x))^2) + (3*ℯ^(a + b*x))/(b*(1 + ℯ^(2*a + 2*b*x))) - (3*atan(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*tanh(a + b*x)^2, x, 5, ℯ^(a + b*x)/b + (2*ℯ^(a + b*x))/(b*(1 + ℯ^(2*a + 2*b*x))) - (2*atan(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*tanh(a + b*x)^1, x, 3, ℯ^(a + b*x)/b - (2*atan(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*coth(a + b*x)^1, x, 3, ℯ^(a + b*x)/b - (2*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*coth(a + b*x)^2, x, 5, ℯ^(a + b*x)/b + (2*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (2*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*coth(a + b*x)^3, x, 7, ℯ^(a + b*x)/b - (2*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))^2) + (3*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (3*atanh(ℯ^(a + b*x)))/b]
    @test_int [ℯ^(a + b*x)*coth(a + b*x)^4, x, 7, ℯ^(a + b*x)/b + (8*ℯ^(a + b*x))/(3*b*(1 - ℯ^(2*a + 2*b*x))^3) - (14*ℯ^(a + b*x))/(3*b*(1 - ℯ^(2*a + 2*b*x))^2) + (5*ℯ^(a + b*x))/(b*(1 - ℯ^(2*a + 2*b*x))) - (3*atanh(ℯ^(a + b*x)))/b]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^x*tanh(n*x)^m=#


    @test_int [ℯ^x*tanh(2*x)^2, x, 13, ℯ^x + ℯ^x/(1 + ℯ^(4*x)) + atan(1 - sqrt(2)*ℯ^x)/(2*sqrt(2)) - atan(1 + sqrt(2)*ℯ^x)/(2*sqrt(2)) + log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2)) - log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2))]
    @test_int [ℯ^x*tanh(2*x), x, 11, ℯ^x + atan(1 - sqrt(2)*ℯ^x)/sqrt(2) - atan(1 + sqrt(2)*ℯ^x)/sqrt(2) + log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(2*sqrt(2)) - log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(2*sqrt(2))]
    @test_int [ℯ^x*coth(2*x), x, 5, ℯ^x - atan(ℯ^x) - atanh(ℯ^x)]
    @test_int [ℯ^x*coth(2*x)^2, x, 7, ℯ^x + ℯ^x/(1 - ℯ^(4*x)) - atan(ℯ^x)/2 - atanh(ℯ^x)/2]


    @test_int [ℯ^x*tanh(3*x)^2, x, 14, ℯ^x + (2*ℯ^x)/(3*(1 + ℯ^(6*x))) - (2*atan(ℯ^x))/9 + (1/9)*atan(sqrt(3) - 2*ℯ^x) - (1/9)*atan(sqrt(3) + 2*ℯ^x) + log(1 - sqrt(3)*ℯ^x + ℯ^(2*x))/(6*sqrt(3)) - log(1 + sqrt(3)*ℯ^x + ℯ^(2*x))/(6*sqrt(3))]
    @test_int [ℯ^x*tanh(3*x), x, 12, ℯ^x - (2*atan(ℯ^x))/3 + (1/3)*atan(sqrt(3) - 2*ℯ^x) - (1/3)*atan(sqrt(3) + 2*ℯ^x) + log(1 - sqrt(3)*ℯ^x + ℯ^(2*x))/(2*sqrt(3)) - log(1 + sqrt(3)*ℯ^x + ℯ^(2*x))/(2*sqrt(3))]
    @test_int [ℯ^x*coth(3*x), x, 12, ℯ^x + atan((1 - 2*ℯ^x)/sqrt(3))/sqrt(3) - atan((1 + 2*ℯ^x)/sqrt(3))/sqrt(3) - (2*atanh(ℯ^x))/3 + (1/6)*log(1 - ℯ^x + ℯ^(2*x)) - (1/6)*log(1 + ℯ^x + ℯ^(2*x))]
    @test_int [ℯ^x*coth(3*x)^2, x, 14, ℯ^x + (2*ℯ^x)/(3*(1 - ℯ^(6*x))) + atan((1 - 2*ℯ^x)/sqrt(3))/(3*sqrt(3)) - atan((1 + 2*ℯ^x)/sqrt(3))/(3*sqrt(3)) - (2*atanh(ℯ^x))/9 + (1/18)*log(1 - ℯ^x + ℯ^(2*x)) - (1/18)*log(1 + ℯ^x + ℯ^(2*x))]


    @test_int [ℯ^x*tanh(4*x)^2, x, 23, ℯ^x + ℯ^x/(2*(1 + ℯ^(8*x))) + atan((sqrt(2 - sqrt(2)) - 2*ℯ^x)/sqrt(2 + sqrt(2)))/(8*sqrt(2*(2 - sqrt(2)))) + atan((sqrt(2 + sqrt(2)) - 2*ℯ^x)/sqrt(2 - sqrt(2)))/(8*sqrt(2*(2 + sqrt(2)))) - atan((sqrt(2 - sqrt(2)) + 2*ℯ^x)/sqrt(2 + sqrt(2)))/(8*sqrt(2*(2 - sqrt(2)))) - atan((sqrt(2 + sqrt(2)) + 2*ℯ^x)/sqrt(2 - sqrt(2)))/(8*sqrt(2*(2 + sqrt(2)))) + (1/32)*sqrt(2 - sqrt(2))*log(1 - sqrt(2 - sqrt(2))*ℯ^x + ℯ^(2*x)) - (1/32)*sqrt(2 - sqrt(2))*log(1 + sqrt(2 - sqrt(2))*ℯ^x + ℯ^(2*x)) + (1/32)*sqrt(2 + sqrt(2))*log(1 - sqrt(2 + sqrt(2))*ℯ^x + ℯ^(2*x)) - (1/32)*sqrt(2 + sqrt(2))*log(1 + sqrt(2 + sqrt(2))*ℯ^x + ℯ^(2*x))]
    @test_int [ℯ^x*tanh(4*x), x, 21, ℯ^x + atan((sqrt(2 - sqrt(2)) - 2*ℯ^x)/sqrt(2 + sqrt(2)))/(2*sqrt(2*(2 - sqrt(2)))) + atan((sqrt(2 + sqrt(2)) - 2*ℯ^x)/sqrt(2 - sqrt(2)))/(2*sqrt(2*(2 + sqrt(2)))) - atan((sqrt(2 - sqrt(2)) + 2*ℯ^x)/sqrt(2 + sqrt(2)))/(2*sqrt(2*(2 - sqrt(2)))) - atan((sqrt(2 + sqrt(2)) + 2*ℯ^x)/sqrt(2 - sqrt(2)))/(2*sqrt(2*(2 + sqrt(2)))) + (1/8)*sqrt(2 - sqrt(2))*log(1 - sqrt(2 - sqrt(2))*ℯ^x + ℯ^(2*x)) - (1/8)*sqrt(2 - sqrt(2))*log(1 + sqrt(2 - sqrt(2))*ℯ^x + ℯ^(2*x)) + (1/8)*sqrt(2 + sqrt(2))*log(1 - sqrt(2 + sqrt(2))*ℯ^x + ℯ^(2*x)) - (1/8)*sqrt(2 + sqrt(2))*log(1 + sqrt(2 + sqrt(2))*ℯ^x + ℯ^(2*x))]
    @test_int [ℯ^x*coth(4*x), x, 15, ℯ^x - atan(ℯ^x)/2 + atan(1 - sqrt(2)*ℯ^x)/(2*sqrt(2)) - atan(1 + sqrt(2)*ℯ^x)/(2*sqrt(2)) - atanh(ℯ^x)/2 + log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2)) - log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(4*sqrt(2))]
    @test_int [ℯ^x*coth(4*x)^2, x, 17, ℯ^x + ℯ^x/(2*(1 - ℯ^(8*x))) - atan(ℯ^x)/8 + atan(1 - sqrt(2)*ℯ^x)/(8*sqrt(2)) - atan(1 + sqrt(2)*ℯ^x)/(8*sqrt(2)) - atanh(ℯ^x)/8 + log(1 - sqrt(2)*ℯ^x + ℯ^(2*x))/(16*sqrt(2)) - log(1 + sqrt(2)*ℯ^x + ℯ^(2*x))/(16*sqrt(2))]


    @test_int [ℯ^x/(a - tanh(2*x)), x, 5, -(ℯ^x/(1 - a)) + atan(((1 - a)^(1/4)*ℯ^x)/(1 + a)^(1/4))/((1 - a)*sqrt(1 + a)*(1 - a^2)^(1/4)) + atanh(((1 - a)^(1/4)*ℯ^x)/(1 + a)^(1/4))/((1 - a)*sqrt(1 + a)*(1 - a^2)^(1/4))]
    @test_int [ℯ^x/(a - tanh(2*x))^2, x, 7, ℯ^x/(1 - a)^2 + ℯ^x/((1 - a)^2*(1 + a)*(1 + a + (-1 + a)*ℯ^(4*x))) - ((1 + 4*a)*atan(((1 - a)^(1/4)*ℯ^x)/(1 + a)^(1/4)))/(2*(1 - a)^2*(1 + a)^(3/2)*(1 - a^2)^(1/4)) - ((1 + 4*a)*atanh(((1 - a)^(1/4)*ℯ^x)/(1 + a)^(1/4)))/(2*(1 - a)^2*(1 + a)^(3/2)*(1 - a^2)^(1/4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*tanh(d+e*x)^n=#


    @test_int [ℯ^(c*(a + b*x))*tanh(d + e*x)^3, x, 6, ℯ^(c*(a + b*x))/(b*c) - (6*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, (b*c)/(2*e), 1 + (b*c)/(2*e), -ℯ^(2*(d + e*x))))/(b*c) + (12*ℯ^(c*(a + b*x))*Hypergeometric2F1(2, (b*c)/(2*e), 1 + (b*c)/(2*e), -ℯ^(2*(d + e*x))))/(b*c) - (8*ℯ^(c*(a + b*x))*Hypergeometric2F1(3, (b*c)/(2*e), 1 + (b*c)/(2*e), -ℯ^(2*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*tanh(d + e*x)^2, x, 5, ℯ^(c*(a + b*x))/(b*c) - (4*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, (b*c)/(2*e), 1 + (b*c)/(2*e), -ℯ^(2*(d + e*x))))/(b*c) + (4*ℯ^(c*(a + b*x))*Hypergeometric2F1(2, (b*c)/(2*e), 1 + (b*c)/(2*e), -ℯ^(2*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*tanh(d + e*x)^1, x, 4, ℯ^(c*(a + b*x))/(b*c) - (2*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, (b*c)/(2*e), 1 + (b*c)/(2*e), -ℯ^(2*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*coth(d + e*x)^1, x, 4, ℯ^(c*(a + b*x))/(b*c) - (2*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, (b*c)/(2*e), 1 + (b*c)/(2*e), ℯ^(2*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*coth(d + e*x)^2, x, 5, ℯ^(c*(a + b*x))/(b*c) - (4*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, (b*c)/(2*e), 1 + (b*c)/(2*e), ℯ^(2*(d + e*x))))/(b*c) + (4*ℯ^(c*(a + b*x))*Hypergeometric2F1(2, (b*c)/(2*e), 1 + (b*c)/(2*e), ℯ^(2*(d + e*x))))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*coth(d + e*x)^3, x, 6, ℯ^(c*(a + b*x))/(b*c) - (6*ℯ^(c*(a + b*x))*Hypergeometric2F1(1, (b*c)/(2*e), 1 + (b*c)/(2*e), ℯ^(2*(d + e*x))))/(b*c) + (12*ℯ^(c*(a + b*x))*Hypergeometric2F1(2, (b*c)/(2*e), 1 + (b*c)/(2*e), ℯ^(2*(d + e*x))))/(b*c) - (8*ℯ^(c*(a + b*x))*Hypergeometric2F1(3, (b*c)/(2*e), 1 + (b*c)/(2*e), ℯ^(2*(d + e*x))))/(b*c)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*(tanh(a*c+b*c*x)^2)^(m/2)=#


    @test_int [ℯ^(c*(a + b*x))*(tanh(a*c + b*c*x)^2)^(5/2), x, 9, (ℯ^(c*(a + b*x))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(b*c) - (4*ℯ^(c*(a + b*x))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^4) + (26*ℯ^(c*(a + b*x))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(3*b*c*(1 + ℯ^(2*c*(a + b*x)))^3) - (55*ℯ^(c*(a + b*x))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(6*b*c*(1 + ℯ^(2*c*(a + b*x)))^2) + (25*ℯ^(c*(a + b*x))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(4*b*c*(1 + ℯ^(2*c*(a + b*x)))) - (15*atan(ℯ^(c*(a + b*x)))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(4*b*c)]
    @test_int [ℯ^(c*(a + b*x))*(tanh(a*c + b*c*x)^2)^(3/2), x, 8, (ℯ^(c*(a + b*x))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(b*c) - (2*ℯ^(c*(a + b*x))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^2) + (3*ℯ^(c*(a + b*x))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(b*c*(1 + ℯ^(2*c*(a + b*x)))) - (3*atan(ℯ^(c*(a + b*x)))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*sqrt(tanh(a*c + b*c*x)^2), x, 4, (ℯ^(c*(a + b*x))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(b*c) - (2*atan(ℯ^(c*(a + b*x)))*coth(a*c + b*c*x)*sqrt(tanh(a*c + b*c*x)^2))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))/sqrt(tanh(a*c + b*c*x)^2), x, 4, (ℯ^(c*(a + b*x))*tanh(a*c + b*c*x))/(b*c*sqrt(tanh(a*c + b*c*x)^2)) - (2*atanh(ℯ^(c*(a + b*x)))*tanh(a*c + b*c*x))/(b*c*sqrt(tanh(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(tanh(a*c + b*c*x)^2)^(3/2), x, 8, (ℯ^(c*(a + b*x))*tanh(a*c + b*c*x))/(b*c*sqrt(tanh(a*c + b*c*x)^2)) - (2*ℯ^(c*(a + b*x))*tanh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^2*sqrt(tanh(a*c + b*c*x)^2)) + (3*ℯ^(c*(a + b*x))*tanh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))*sqrt(tanh(a*c + b*c*x)^2)) - (3*atanh(ℯ^(c*(a + b*x)))*tanh(a*c + b*c*x))/(b*c*sqrt(tanh(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(tanh(a*c + b*c*x)^2)^(5/2), x, 9, (ℯ^(c*(a + b*x))*tanh(a*c + b*c*x))/(b*c*sqrt(tanh(a*c + b*c*x)^2)) - (4*ℯ^(c*(a + b*x))*tanh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^4*sqrt(tanh(a*c + b*c*x)^2)) + (26*ℯ^(c*(a + b*x))*tanh(a*c + b*c*x))/(3*b*c*(1 - ℯ^(2*c*(a + b*x)))^3*sqrt(tanh(a*c + b*c*x)^2)) - (55*ℯ^(c*(a + b*x))*tanh(a*c + b*c*x))/(6*b*c*(1 - ℯ^(2*c*(a + b*x)))^2*sqrt(tanh(a*c + b*c*x)^2)) + (25*ℯ^(c*(a + b*x))*tanh(a*c + b*c*x))/(4*b*c*(1 - ℯ^(2*c*(a + b*x)))*sqrt(tanh(a*c + b*c*x)^2)) - (15*atanh(ℯ^(c*(a + b*x)))*tanh(a*c + b*c*x))/(4*b*c*sqrt(tanh(a*c + b*c*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*that*are*functions*of*tanh(a+b*x)=#


    @test_int [sin(tanh(a + b*x))^3, x, 19, -((3*CosIntegral(1 - tanh(a + b*x))*sin(1))/(8*b)) - (3*CosIntegral(1 + tanh(a + b*x))*sin(1))/(8*b) + (CosIntegral(3 - 3*tanh(a + b*x))*sin(3))/(8*b) + (CosIntegral(3 + 3*tanh(a + b*x))*sin(3))/(8*b) - (cos(3)*SinIntegral(3 - 3*tanh(a + b*x)))/(8*b) + (3*cos(1)*SinIntegral(1 - tanh(a + b*x)))/(8*b) + (3*cos(1)*SinIntegral(1 + tanh(a + b*x)))/(8*b) - (cos(3)*SinIntegral(3 + 3*tanh(a + b*x)))/(8*b)]
    @test_int [sin(tanh(a + b*x))^2, x, 13, (cos(2)*CosIntegral(2 - 2*tanh(a + b*x)))/(4*b) - (cos(2)*CosIntegral(2 + 2*tanh(a + b*x)))/(4*b) - log(1 - tanh(a + b*x))/(4*b) + log(1 + tanh(a + b*x))/(4*b) + (sin(2)*SinIntegral(2 - 2*tanh(a + b*x)))/(4*b) - (sin(2)*SinIntegral(2 + 2*tanh(a + b*x)))/(4*b)]
    @test_int [sin(tanh(a + b*x))^1, x, 9, -((CosIntegral(1 - tanh(a + b*x))*sin(1))/(2*b)) - (CosIntegral(1 + tanh(a + b*x))*sin(1))/(2*b) + (cos(1)*SinIntegral(1 - tanh(a + b*x)))/(2*b) + (cos(1)*SinIntegral(1 + tanh(a + b*x)))/(2*b)]
    @test_int [csc(tanh(a + b*x))^1, x, 3, (-(1/2))*Unintegrable((csc(tanh(a + b*x))*sech(a + b*x)^2)/(-1 + tanh(a + b*x)), x) + (1/2)*Unintegrable((csc(tanh(a + b*x))*sech(a + b*x)^2)/(1 + tanh(a + b*x)), x)]


    @test_int [cos(tanh(a + b*x))^3, x, 19, -((cos(3)*CosIntegral(3 - 3*tanh(a + b*x)))/(8*b)) - (3*cos(1)*CosIntegral(1 - tanh(a + b*x)))/(8*b) + (3*cos(1)*CosIntegral(1 + tanh(a + b*x)))/(8*b) + (cos(3)*CosIntegral(3 + 3*tanh(a + b*x)))/(8*b) - (sin(3)*SinIntegral(3 - 3*tanh(a + b*x)))/(8*b) - (3*sin(1)*SinIntegral(1 - tanh(a + b*x)))/(8*b) + (3*sin(1)*SinIntegral(1 + tanh(a + b*x)))/(8*b) + (sin(3)*SinIntegral(3 + 3*tanh(a + b*x)))/(8*b)]
    @test_int [cos(tanh(a + b*x))^2, x, 13, -((cos(2)*CosIntegral(2 - 2*tanh(a + b*x)))/(4*b)) + (cos(2)*CosIntegral(2 + 2*tanh(a + b*x)))/(4*b) - log(1 - tanh(a + b*x))/(4*b) + log(1 + tanh(a + b*x))/(4*b) - (sin(2)*SinIntegral(2 - 2*tanh(a + b*x)))/(4*b) + (sin(2)*SinIntegral(2 + 2*tanh(a + b*x)))/(4*b)]
    @test_int [cos(tanh(a + b*x))^1, x, 9, -((cos(1)*CosIntegral(1 - tanh(a + b*x)))/(2*b)) + (cos(1)*CosIntegral(1 + tanh(a + b*x)))/(2*b) - (sin(1)*SinIntegral(1 - tanh(a + b*x)))/(2*b) + (sin(1)*SinIntegral(1 + tanh(a + b*x)))/(2*b)]
    @test_int [sec(tanh(a + b*x))^1, x, 3, (-(1/2))*Unintegrable((sec(tanh(a + b*x))*sech(a + b*x)^2)/(-1 + tanh(a + b*x)), x) + (1/2)*Unintegrable((sec(tanh(a + b*x))*sech(a + b*x)^2)/(1 + tanh(a + b*x)), x)]
    end
