@testset "4.3.0 (a trg)^m (b tan)^n" begin
    @variables a, b, c, d, e, f, m, n, p, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(b*tan(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*tan(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(c+d*x)^n=#


    @test_int [tan(c + d*x)^1, x, 1, -(log(cos(c + d*x))/d)]
    @test_int [tan(c + d*x)^2, x, 2, -x + tan(c + d*x)/d]
    @test_int [tan(c + d*x)^3, x, 2, log(cos(c + d*x))/d + tan(c + d*x)^2/(2*d)]
    @test_int [tan(c + d*x)^4, x, 3, x - tan(c + d*x)/d + tan(c + d*x)^3/(3*d)]
    @test_int [tan(c + d*x)^5, x, 3, -(log(cos(c + d*x))/d) - tan(c + d*x)^2/(2*d) + tan(c + d*x)^4/(4*d)]
    @test_int [tan(c + d*x)^6, x, 4, -x + tan(c + d*x)/d - tan(c + d*x)^3/(3*d) + tan(c + d*x)^5/(5*d)]
    @test_int [tan(c + d*x)^7, x, 4, log(cos(c + d*x))/d + tan(c + d*x)^2/(2*d) - tan(c + d*x)^4/(4*d) + tan(c + d*x)^6/(6*d)]
    @test_int [tan(c + d*x)^8, x, 5, x - tan(c + d*x)/d + tan(c + d*x)^3/(3*d) - tan(c + d*x)^5/(5*d) + tan(c + d*x)^7/(7*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tan(c+d*x))^(n/2)=#


    @test_int [(b*tan(c + d*x))^(7/2), x, 13, -((b^(7/2)*atan(1 - (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*d)) + (b^(7/2)*atan(1 + (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*d) - (b^(7/2)*log(sqrt(b) + sqrt(b)*tan(c + d*x) - sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*d) + (b^(7/2)*log(sqrt(b) + sqrt(b)*tan(c + d*x) + sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*d) - (2*b^3*sqrt(b*tan(c + d*x)))/d + (2*b*(b*tan(c + d*x))^(5/2))/(5*d)]
    @test_int [(b*tan(c + d*x))^(5/2), x, 12, (b^(5/2)*atan(1 - (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*d) - (b^(5/2)*atan(1 + (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*d) - (b^(5/2)*log(sqrt(b) + sqrt(b)*tan(c + d*x) - sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*d) + (b^(5/2)*log(sqrt(b) + sqrt(b)*tan(c + d*x) + sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*d) + (2*b*(b*tan(c + d*x))^(3/2))/(3*d)]
    @test_int [(b*tan(c + d*x))^(3/2), x, 12, (b^(3/2)*atan(1 - (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*d) - (b^(3/2)*atan(1 + (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*d) + (b^(3/2)*log(sqrt(b) + sqrt(b)*tan(c + d*x) - sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*d) - (b^(3/2)*log(sqrt(b) + sqrt(b)*tan(c + d*x) + sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*d) + (2*b*sqrt(b*tan(c + d*x)))/d]
    @test_int [(b*tan(c + d*x))^(1/2), x, 11, -((sqrt(b)*atan(1 - (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*d)) + (sqrt(b)*atan(1 + (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*d) + (sqrt(b)*log(sqrt(b) + sqrt(b)*tan(c + d*x) - sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*d) - (sqrt(b)*log(sqrt(b) + sqrt(b)*tan(c + d*x) + sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*d)]
    @test_int [1/(b*tan(c + d*x))^(1/2), x, 11, -(atan(1 - (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b))/(sqrt(2)*sqrt(b)*d)) + atan(1 + (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b))/(sqrt(2)*sqrt(b)*d) - log(sqrt(b) + sqrt(b)*tan(c + d*x) - sqrt(2)*sqrt(b*tan(c + d*x)))/(2*sqrt(2)*sqrt(b)*d) + log(sqrt(b) + sqrt(b)*tan(c + d*x) + sqrt(2)*sqrt(b*tan(c + d*x)))/(2*sqrt(2)*sqrt(b)*d)]
    @test_int [1/(b*tan(c + d*x))^(3/2), x, 12, atan(1 - (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b))/(sqrt(2)*b^(3/2)*d) - atan(1 + (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b))/(sqrt(2)*b^(3/2)*d) - log(sqrt(b) + sqrt(b)*tan(c + d*x) - sqrt(2)*sqrt(b*tan(c + d*x)))/(2*sqrt(2)*b^(3/2)*d) + log(sqrt(b) + sqrt(b)*tan(c + d*x) + sqrt(2)*sqrt(b*tan(c + d*x)))/(2*sqrt(2)*b^(3/2)*d) - 2/(b*d*sqrt(b*tan(c + d*x)))]
    @test_int [1/(b*tan(c + d*x))^(5/2), x, 12, atan(1 - (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b))/(sqrt(2)*b^(5/2)*d) - atan(1 + (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b))/(sqrt(2)*b^(5/2)*d) + log(sqrt(b) + sqrt(b)*tan(c + d*x) - sqrt(2)*sqrt(b*tan(c + d*x)))/(2*sqrt(2)*b^(5/2)*d) - log(sqrt(b) + sqrt(b)*tan(c + d*x) + sqrt(2)*sqrt(b*tan(c + d*x)))/(2*sqrt(2)*b^(5/2)*d) - 2/(3*b*d*(b*tan(c + d*x))^(3/2))]
    @test_int [1/(b*tan(c + d*x))^(7/2), x, 13, -(atan(1 - (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b))/(sqrt(2)*b^(7/2)*d)) + atan(1 + (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b))/(sqrt(2)*b^(7/2)*d) + log(sqrt(b) + sqrt(b)*tan(c + d*x) - sqrt(2)*sqrt(b*tan(c + d*x)))/(2*sqrt(2)*b^(7/2)*d) - log(sqrt(b) + sqrt(b)*tan(c + d*x) + sqrt(2)*sqrt(b*tan(c + d*x)))/(2*sqrt(2)*b^(7/2)*d) - 2/(5*b*d*(b*tan(c + d*x))^(5/2)) + 2/(b^3*d*sqrt(b*tan(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tan(c+d*x))^(n/3)=#


    @test_int [(b*tan(c + d*x))^(4/3), x, 13, -((b^(4/3)*atan((b*tan(c + d*x))^(1/3)/b^(1/3)))/d) + (b^(4/3)*atan(sqrt(3) - (2*(b*tan(c + d*x))^(1/3))/b^(1/3)))/(2*d) - (b^(4/3)*atan(sqrt(3) + (2*(b*tan(c + d*x))^(1/3))/b^(1/3)))/(2*d) + (sqrt(3)*b^(4/3)*log(b^(2/3) - sqrt(3)*b^(1/3)*(b*tan(c + d*x))^(1/3) + (b*tan(c + d*x))^(2/3)))/(4*d) - (sqrt(3)*b^(4/3)*log(b^(2/3) + sqrt(3)*b^(1/3)*(b*tan(c + d*x))^(1/3) + (b*tan(c + d*x))^(2/3)))/(4*d) + (3*b*(b*tan(c + d*x))^(1/3))/d]
    @test_int [(b*tan(c + d*x))^(2/3), x, 12, (b^(2/3)*atan((b*tan(c + d*x))^(1/3)/b^(1/3)))/d - (b^(2/3)*atan(sqrt(3) - (2*(b*tan(c + d*x))^(1/3))/b^(1/3)))/(2*d) + (b^(2/3)*atan(sqrt(3) + (2*(b*tan(c + d*x))^(1/3))/b^(1/3)))/(2*d) + (sqrt(3)*b^(2/3)*log(b^(2/3) - sqrt(3)*b^(1/3)*(b*tan(c + d*x))^(1/3) + (b*tan(c + d*x))^(2/3)))/(4*d) - (sqrt(3)*b^(2/3)*log(b^(2/3) + sqrt(3)*b^(1/3)*(b*tan(c + d*x))^(1/3) + (b*tan(c + d*x))^(2/3)))/(4*d)]
    @test_int [(b*tan(c + d*x))^(1/3), x, 9, -((sqrt(3)*b^(1/3)*atan((b^(2/3) - 2*(b*tan(c + d*x))^(2/3))/(sqrt(3)*b^(2/3))))/(2*d)) - (b^(1/3)*log(b^(2/3) + (b*tan(c + d*x))^(2/3)))/(2*d) + (b^(1/3)*log(b^(4/3) - b^(2/3)*(b*tan(c + d*x))^(2/3) + (b*tan(c + d*x))^(4/3)))/(4*d)]
    @test_int [1/(b*tan(c + d*x))^(1/3), x, 9, -((sqrt(3)*atan((b^(2/3) - 2*(b*tan(c + d*x))^(2/3))/(sqrt(3)*b^(2/3))))/(2*b^(1/3)*d)) + log(b^(2/3) + (b*tan(c + d*x))^(2/3))/(2*b^(1/3)*d) - log(b^(4/3) - b^(2/3)*(b*tan(c + d*x))^(2/3) + (b*tan(c + d*x))^(4/3))/(4*b^(1/3)*d)]
    @test_int [1/(b*tan(c + d*x))^(2/3), x, 12, atan((b*tan(c + d*x))^(1/3)/b^(1/3))/(b^(2/3)*d) - atan(sqrt(3) - (2*(b*tan(c + d*x))^(1/3))/b^(1/3))/(2*b^(2/3)*d) + atan(sqrt(3) + (2*(b*tan(c + d*x))^(1/3))/b^(1/3))/(2*b^(2/3)*d) - (sqrt(3)*log(b^(2/3) - sqrt(3)*b^(1/3)*(b*tan(c + d*x))^(1/3) + (b*tan(c + d*x))^(2/3)))/(4*b^(2/3)*d) + (sqrt(3)*log(b^(2/3) + sqrt(3)*b^(1/3)*(b*tan(c + d*x))^(1/3) + (b*tan(c + d*x))^(2/3)))/(4*b^(2/3)*d)]
    @test_int [1/(b*tan(c + d*x))^(4/3), x, 13, -(atan((b*tan(c + d*x))^(1/3)/b^(1/3))/(b^(4/3)*d)) + atan(sqrt(3) - (2*(b*tan(c + d*x))^(1/3))/b^(1/3))/(2*b^(4/3)*d) - atan(sqrt(3) + (2*(b*tan(c + d*x))^(1/3))/b^(1/3))/(2*b^(4/3)*d) - (sqrt(3)*log(b^(2/3) - sqrt(3)*b^(1/3)*(b*tan(c + d*x))^(1/3) + (b*tan(c + d*x))^(2/3)))/(4*b^(4/3)*d) + (sqrt(3)*log(b^(2/3) + sqrt(3)*b^(1/3)*(b*tan(c + d*x))^(1/3) + (b*tan(c + d*x))^(2/3)))/(4*b^(4/3)*d) - 3/(b*d*(b*tan(c + d*x))^(1/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tan(c+d*x))^n*with*n*symbolic=#


    @test_int [(b*tan(c + d*x))^n, x, 2, (Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, -tan(c + d*x)^2)*(b*tan(c + d*x))^(1 + n))/(b*d*(1 + n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*tan(c+d*x)^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tan(c+d*x)^p)^(n/2)*with*p*positive*integer=#


    @test_int [(b*tan(c + d*x)^2)^(5/2),x, 4, -((b^2*cot(c + d*x)*log(cos(c + d*x))*sqrt(b*tan(c + d*x)^2))/d) - (b^2*tan(c + d*x)*sqrt(b*tan(c + d*x)^2))/(2*d) + (b^2*tan(c + d*x)^3*sqrt(b*tan(c + d*x)^2))/(4*d)]
    @test_int [(b*tan(c + d*x)^2)^(3/2),x, 3, (b*cot(c + d*x)*log(cos(c + d*x))*sqrt(b*tan(c + d*x)^2))/d + (b*tan(c + d*x)*sqrt(b*tan(c + d*x)^2))/(2*d)]
    @test_int [(b*tan(c + d*x)^2)^(1/2), x, 2, -((cot(c + d*x)*log(cos(c + d*x))*sqrt(b*tan(c + d*x)^2))/d)]
    @test_int [1/(b*tan(c + d*x)^2)^(1/2), x, 2, (log(sin(c + d*x))*tan(c + d*x))/(d*sqrt(b*tan(c + d*x)^2))]
    @test_int [1/(b*tan(c + d*x)^2)^(3/2), x, 3, -(cot(c + d*x)/(2*b*d*sqrt(b*tan(c + d*x)^2))) - (log(sin(c + d*x))*tan(c + d*x))/(b*d*sqrt(b*tan(c + d*x)^2))]
    @test_int [1/(b*tan(c + d*x)^2)^(5/2), x, 4, cot(c + d*x)/(2*b^2*d*sqrt(b*tan(c + d*x)^2)) - cot(c + d*x)^3/(4*b^2*d*sqrt(b*tan(c + d*x)^2)) + (log(sin(c + d*x))*tan(c + d*x))/(b^2*d*sqrt(b*tan(c + d*x)^2))]


    @test_int [(b*tan(c + d*x)^3)^(5/2),x, 16, -((2*b^2*cot(c + d*x)*sqrt(b*tan(c + d*x)^3))/d) - (b^2*atan(1 - sqrt(2)*sqrt(tan(c + d*x)))*sqrt(b*tan(c + d*x)^3))/(sqrt(2)*d*tan(c + d*x)^(3/2)) + (b^2*atan(1 + sqrt(2)*sqrt(tan(c + d*x)))*sqrt(b*tan(c + d*x)^3))/(sqrt(2)*d*tan(c + d*x)^(3/2)) - (b^2*log(1 - sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*sqrt(b*tan(c + d*x)^3))/(2*sqrt(2)*d*tan(c + d*x)^(3/2)) + (b^2*log(1 + sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*sqrt(b*tan(c + d*x)^3))/(2*sqrt(2)*d*tan(c + d*x)^(3/2)) + (2*b^2*tan(c + d*x)*sqrt(b*tan(c + d*x)^3))/(5*d) - (2*b^2*tan(c + d*x)^3*sqrt(b*tan(c + d*x)^3))/(9*d) + (2*b^2*tan(c + d*x)^5*sqrt(b*tan(c + d*x)^3))/(13*d)]
    @test_int [(b*tan(c + d*x)^3)^(3/2),x, 14, -((2*b*sqrt(b*tan(c + d*x)^3))/(3*d)) - (b*atan(1 - sqrt(2)*sqrt(tan(c + d*x)))*sqrt(b*tan(c + d*x)^3))/(sqrt(2)*d*tan(c + d*x)^(3/2)) + (b*atan(1 + sqrt(2)*sqrt(tan(c + d*x)))*sqrt(b*tan(c + d*x)^3))/(sqrt(2)*d*tan(c + d*x)^(3/2)) + (b*log(1 - sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*sqrt(b*tan(c + d*x)^3))/(2*sqrt(2)*d*tan(c + d*x)^(3/2)) - (b*log(1 + sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*sqrt(b*tan(c + d*x)^3))/(2*sqrt(2)*d*tan(c + d*x)^(3/2)) + (2*b*tan(c + d*x)^2*sqrt(b*tan(c + d*x)^3))/(7*d)]
    @test_int [(b*tan(c + d*x)^3)^(1/2), x, 13, (2*cot(c + d*x)*sqrt(b*tan(c + d*x)^3))/d + (atan(1 - sqrt(2)*sqrt(tan(c + d*x)))*sqrt(b*tan(c + d*x)^3))/(sqrt(2)*d*tan(c + d*x)^(3/2)) - (atan(1 + sqrt(2)*sqrt(tan(c + d*x)))*sqrt(b*tan(c + d*x)^3))/(sqrt(2)*d*tan(c + d*x)^(3/2)) + (log(1 - sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*sqrt(b*tan(c + d*x)^3))/(2*sqrt(2)*d*tan(c + d*x)^(3/2)) - (log(1 + sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*sqrt(b*tan(c + d*x)^3))/(2*sqrt(2)*d*tan(c + d*x)^(3/2))]
    @test_int [1/(b*tan(c + d*x)^3)^(1/2), x, 13, -((2*tan(c + d*x))/(d*sqrt(b*tan(c + d*x)^3))) + (atan(1 - sqrt(2)*sqrt(tan(c + d*x)))*tan(c + d*x)^(3/2))/(sqrt(2)*d*sqrt(b*tan(c + d*x)^3)) - (atan(1 + sqrt(2)*sqrt(tan(c + d*x)))*tan(c + d*x)^(3/2))/(sqrt(2)*d*sqrt(b*tan(c + d*x)^3)) - (log(1 - sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*tan(c + d*x)^(3/2))/(2*sqrt(2)*d*sqrt(b*tan(c + d*x)^3)) + (log(1 + sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*tan(c + d*x)^(3/2))/(2*sqrt(2)*d*sqrt(b*tan(c + d*x)^3))]
    @test_int [1/(b*tan(c + d*x)^3)^(3/2),x, 14, 2/(3*b*d*sqrt(b*tan(c + d*x)^3)) - (2*cot(c + d*x)^2)/(7*b*d*sqrt(b*tan(c + d*x)^3)) - (atan(1 - sqrt(2)*sqrt(tan(c + d*x)))*tan(c + d*x)^(3/2))/(sqrt(2)*b*d*sqrt(b*tan(c + d*x)^3)) + (atan(1 + sqrt(2)*sqrt(tan(c + d*x)))*tan(c + d*x)^(3/2))/(sqrt(2)*b*d*sqrt(b*tan(c + d*x)^3)) - (log(1 - sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*tan(c + d*x)^(3/2))/(2*sqrt(2)*b*d*sqrt(b*tan(c + d*x)^3)) + (log(1 + sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*tan(c + d*x)^(3/2))/(2*sqrt(2)*b*d*sqrt(b*tan(c + d*x)^3))]
    @test_int [1/(b*tan(c + d*x)^3)^(5/2),x, 16, -((2*cot(c + d*x))/(5*b^2*d*sqrt(b*tan(c + d*x)^3))) + (2*cot(c + d*x)^3)/(9*b^2*d*sqrt(b*tan(c + d*x)^3)) - (2*cot(c + d*x)^5)/(13*b^2*d*sqrt(b*tan(c + d*x)^3)) + (2*tan(c + d*x))/(b^2*d*sqrt(b*tan(c + d*x)^3)) - (atan(1 - sqrt(2)*sqrt(tan(c + d*x)))*tan(c + d*x)^(3/2))/(sqrt(2)*b^2*d*sqrt(b*tan(c + d*x)^3)) + (atan(1 + sqrt(2)*sqrt(tan(c + d*x)))*tan(c + d*x)^(3/2))/(sqrt(2)*b^2*d*sqrt(b*tan(c + d*x)^3)) + (log(1 - sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*tan(c + d*x)^(3/2))/(2*sqrt(2)*b^2*d*sqrt(b*tan(c + d*x)^3)) - (log(1 + sqrt(2)*sqrt(tan(c + d*x)) + tan(c + d*x))*tan(c + d*x)^(3/2))/(2*sqrt(2)*b^2*d*sqrt(b*tan(c + d*x)^3))]


    @test_int [(b*tan(c + d*x)^4)^(5/2),x, 7, (b^2*cot(c + d*x)*sqrt(b*tan(c + d*x)^4))/d - b^2*x*cot(c + d*x)^2*sqrt(b*tan(c + d*x)^4) - (b^2*tan(c + d*x)*sqrt(b*tan(c + d*x)^4))/(3*d) + (b^2*tan(c + d*x)^3*sqrt(b*tan(c + d*x)^4))/(5*d) - (b^2*tan(c + d*x)^5*sqrt(b*tan(c + d*x)^4))/(7*d) + (b^2*tan(c + d*x)^7*sqrt(b*tan(c + d*x)^4))/(9*d)]
    @test_int [(b*tan(c + d*x)^4)^(3/2),x, 5, (b*cot(c + d*x)*sqrt(b*tan(c + d*x)^4))/d - b*x*cot(c + d*x)^2*sqrt(b*tan(c + d*x)^4) - (b*tan(c + d*x)*sqrt(b*tan(c + d*x)^4))/(3*d) + (b*tan(c + d*x)^3*sqrt(b*tan(c + d*x)^4))/(5*d)]
    @test_int [(b*tan(c + d*x)^4)^(1/2), x, 3, (cot(c + d*x)*sqrt(b*tan(c + d*x)^4))/d - x*cot(c + d*x)^2*sqrt(b*tan(c + d*x)^4)]
    @test_int [1/(b*tan(c + d*x)^4)^(1/2), x, 3, -(tan(c + d*x)/(d*sqrt(b*tan(c + d*x)^4))) - (x*tan(c + d*x)^2)/sqrt(b*tan(c + d*x)^4)]
    @test_int [1/(b*tan(c + d*x)^4)^(3/2),x, 5, cot(c + d*x)/(3*b*d*sqrt(b*tan(c + d*x)^4)) - cot(c + d*x)^3/(5*b*d*sqrt(b*tan(c + d*x)^4)) - tan(c + d*x)/(b*d*sqrt(b*tan(c + d*x)^4)) - (x*tan(c + d*x)^2)/(b*sqrt(b*tan(c + d*x)^4))]
    @test_int [1/(b*tan(c + d*x)^4)^(5/2),x, 7, cot(c + d*x)/(3*b^2*d*sqrt(b*tan(c + d*x)^4)) - cot(c + d*x)^3/(5*b^2*d*sqrt(b*tan(c + d*x)^4)) + cot(c + d*x)^5/(7*b^2*d*sqrt(b*tan(c + d*x)^4)) - cot(c + d*x)^7/(9*b^2*d*sqrt(b*tan(c + d*x)^4)) - tan(c + d*x)/(b^2*d*sqrt(b*tan(c + d*x)^4)) - (x*tan(c + d*x)^2)/(b^2*sqrt(b*tan(c + d*x)^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*tan(c+d*x)^p)^n*with*n*symbolic=#


    @test_int [(b*tan(c + d*x)^p)^n, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + n*p), (1/2)*(3 + n*p), -tan(c + d*x)^2)*tan(c + d*x)*(b*tan(c + d*x)^p)^n)/(d*(1 + n*p))]


    @test_int [(b*tan(c + d*x)^2)^n,x, 3, (Hypergeometric2F1(1, (1/2)*(1 + 2*n), (1/2)*(3 + 2*n), -tan(c + d*x)^2)*tan(c + d*x)*(b*tan(c + d*x)^2)^n)/(d*(1 + 2*n))]
    @test_int [(b*tan(c + d*x)^3)^n,x, 3, (Hypergeometric2F1(1, (1/2)*(1 + 3*n), (3*(1 + n))/2, -tan(c + d*x)^2)*tan(c + d*x)*(b*tan(c + d*x)^3)^n)/(d*(1 + 3*n))]
    @test_int [(b*tan(c + d*x)^4)^n,x, 3, (Hypergeometric2F1(1, (1/2)*(1 + 4*n), (1/2)*(3 + 4*n), -tan(c + d*x)^2)*tan(c + d*x)*(b*tan(c + d*x)^4)^n)/(d*(1 + 4*n))]


    @test_int [(b*tan(c + d*x)^p)^(5/2), x, 3, (2*b^2*Hypergeometric2F1(1, (1/4)*(2 + 5*p), (1/4)*(6 + 5*p), -tan(c + d*x)^2)*tan(c + d*x)^(1 + 2*p)*sqrt(b*tan(c + d*x)^p))/(d*(2 + 5*p))]
    @test_int [(b*tan(c + d*x)^p)^(3/2), x, 3, (2*b*Hypergeometric2F1(1, (1/4)*(2 + 3*p), (3*(2 + p))/4, -tan(c + d*x)^2)*tan(c + d*x)^(1 + p)*sqrt(b*tan(c + d*x)^p))/(d*(2 + 3*p))]
    @test_int [(b*tan(c + d*x)^p)^(1/2), x, 3, (2*Hypergeometric2F1(1, (2 + p)/4, (6 + p)/4, -tan(c + d*x)^2)*tan(c + d*x)*sqrt(b*tan(c + d*x)^p))/(d*(2 + p))]
    @test_int [1/(b*tan(c + d*x)^p)^(1/2), x, 3, (2*Hypergeometric2F1(1, (2 - p)/4, (6 - p)/4, -tan(c + d*x)^2)*tan(c + d*x))/(d*(2 - p)*sqrt(b*tan(c + d*x)^p))]
    @test_int [1/(b*tan(c + d*x)^p)^(3/2), x, 3, (2*Hypergeometric2F1(1, (1/4)*(2 - 3*p), (3*(2 - p))/4, -tan(c + d*x)^2)*tan(c + d*x)^(1 - p))/(b*d*(2 - 3*p)*sqrt(b*tan(c + d*x)^p))]
    @test_int [1/(b*tan(c + d*x)^p)^(5/2), x, 3, (2*Hypergeometric2F1(1, (1/4)*(2 - 5*p), (1/4)*(6 - 5*p), -tan(c + d*x)^2)*tan(c + d*x)^(1 - 2*p))/(b^2*d*(2 - 5*p)*sqrt(b*tan(c + d*x)^p))]


    @test_int [(b*tan(c + d*x)^p)^(1/p), x, 2, -((cot(c + d*x)*log(cos(c + d*x))*(b*tan(c + d*x)^p)^(1/p))/d)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*(b*tan(c+d*x))^p)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*(b*tan(c+d*x))^p)^n*with*n*symbolic=#


    @test_int [(a*(b*tan(c + d*x))^p)^n, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + n*p), (1/2)*(3 + n*p), -tan(c + d*x)^2)*tan(c + d*x)*(a*(b*tan(c + d*x))^p)^n)/(d*(1 + n*p))]


    #= ::Title:: =#
    #=Integrands*of*the*form*(a*Trg(e+f*x))^m*(b*tan(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*tan(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(b*tan(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sin(a + b*x)^4*(d*tan(a + b*x))^(1/2), x, 13, -((21*sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b)) + (21*sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b) + (21*sqrt(d)*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b) - (21*sqrt(d)*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b) - (7*cos(a + b*x)^2*(d*tan(a + b*x))^(3/2))/(16*b*d) - (cos(a + b*x)^4*(d*tan(a + b*x))^(7/2))/(4*b*d^3)]
    @test_int [sin(a + b*x)^2*(d*tan(a + b*x))^(1/2), x, 12, -((3*sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b)) + (3*sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b) + (3*sqrt(d)*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b) - (3*sqrt(d)*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b) - (cos(a + b*x)^2*(d*tan(a + b*x))^(3/2))/(2*b*d)]
    @test_int [csc(a + b*x)^2*(d*tan(a + b*x))^(1/2), x, 2, -((2*d)/(b*sqrt(d*tan(a + b*x))))]
    @test_int [csc(a + b*x)^4*(d*tan(a + b*x))^(1/2), x, 3, -((2*d^3)/(5*b*(d*tan(a + b*x))^(5/2))) - (2*d)/(b*sqrt(d*tan(a + b*x)))]
    @test_int [csc(a + b*x)^6*(d*tan(a + b*x))^(1/2), x, 3, -((2*d^5)/(9*b*(d*tan(a + b*x))^(9/2))) - (4*d^3)/(5*b*(d*tan(a + b*x))^(5/2)) - (2*d)/(b*sqrt(d*tan(a + b*x)))]

    @test_int [sin(a + b*x)^3*(d*tan(a + b*x))^(1/2), x, 5, -((5*d*sin(a + b*x))/(6*b*sqrt(d*tan(a + b*x)))) - (d*sin(a + b*x)^3)/(3*b*sqrt(d*tan(a + b*x))) + (5*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(12*b)]
    @test_int [sin(a + b*x)^1*(d*tan(a + b*x))^(1/2), x, 4, -((d*sin(a + b*x))/(b*sqrt(d*tan(a + b*x)))) + (csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(2*b)]
    @test_int [csc(a + b*x)^1*(d*tan(a + b*x))^(1/2), x, 3, (csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/b]
    @test_int [csc(a + b*x)^3*(d*tan(a + b*x))^(1/2), x, 4, -((2*d*csc(a + b*x))/(3*b*sqrt(d*tan(a + b*x)))) + (2*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(3*b)]
    @test_int [csc(a + b*x)^5*(d*tan(a + b*x))^(1/2), x, 5, -((4*d*csc(a + b*x))/(7*b*sqrt(d*tan(a + b*x)))) - (2*d*csc(a + b*x)^3)/(7*b*sqrt(d*tan(a + b*x))) + (4*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(7*b)]


    @test_int [sin(a + b*x)^4*(d*tan(a + b*x))^(3/2), x, 14, (45*d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b) - (45*d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b) + (45*d^(3/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b) - (45*d^(3/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b) + (45*d*sqrt(d*tan(a + b*x)))/(16*b) - (9*cos(a + b*x)^2*(d*tan(a + b*x))^(5/2))/(16*b*d) - (cos(a + b*x)^4*(d*tan(a + b*x))^(9/2))/(4*b*d^3)]
    @test_int [sin(a + b*x)^2*(d*tan(a + b*x))^(3/2), x, 13, (5*d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b) - (5*d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b) + (5*d^(3/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b) - (5*d^(3/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b) + (5*d*sqrt(d*tan(a + b*x)))/(2*b) - (cos(a + b*x)^2*(d*tan(a + b*x))^(5/2))/(2*b*d)]
    @test_int [csc(a + b*x)^2*(d*tan(a + b*x))^(3/2), x, 2, (2*d*sqrt(d*tan(a + b*x)))/b]
    @test_int [csc(a + b*x)^4*(d*tan(a + b*x))^(3/2), x, 3, -((2*d^3)/(3*b*(d*tan(a + b*x))^(3/2))) + (2*d*sqrt(d*tan(a + b*x)))/b]
    @test_int [csc(a + b*x)^6*(d*tan(a + b*x))^(3/2), x, 3, -((2*d^5)/(7*b*(d*tan(a + b*x))^(7/2))) - (4*d^3)/(3*b*(d*tan(a + b*x))^(3/2)) + (2*d*sqrt(d*tan(a + b*x)))/b]

    @test_int [sin(a + b*x)^3*(d*tan(a + b*x))^(3/2), x, 5, (7*d^3*sin(a + b*x)^3)/(3*b*(d*tan(a + b*x))^(3/2)) - (7*d^2*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(2*b*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x))) + (2*d*sin(a + b*x)^3*sqrt(d*tan(a + b*x)))/b]
    @test_int [sin(a + b*x)^1*(d*tan(a + b*x))^(3/2), x, 4, -((3*d^2*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(b*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))) + (2*d*sin(a + b*x)*sqrt(d*tan(a + b*x)))/b]
    @test_int [csc(a + b*x)^1*(d*tan(a + b*x))^(3/2), x, 4, -((2*d^2*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(b*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))) + (2*d*sin(a + b*x)*sqrt(d*tan(a + b*x)))/b]
    @test_int [csc(a + b*x)^3*(d*tan(a + b*x))^(3/2), x, 5, -((4*d^2*cos(a + b*x))/(b*sqrt(d*tan(a + b*x)))) - (4*d^2*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(b*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x))) + (2*d*csc(a + b*x)*sqrt(d*tan(a + b*x)))/b]


    @test_int [sin(a + b*x)^4*(d*tan(a + b*x))^(5/2), x, 14, (77*d^(5/2)*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b) - (77*d^(5/2)*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b) - (77*d^(5/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b) + (77*d^(5/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b) + (77*d*(d*tan(a + b*x))^(3/2))/(48*b) - (11*cos(a + b*x)^2*(d*tan(a + b*x))^(7/2))/(16*b*d) - (cos(a + b*x)^4*(d*tan(a + b*x))^(11/2))/(4*b*d^3)]
    @test_int [sin(a + b*x)^2*(d*tan(a + b*x))^(5/2), x, 13, (7*d^(5/2)*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b) - (7*d^(5/2)*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b) - (7*d^(5/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b) + (7*d^(5/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b) + (7*d*(d*tan(a + b*x))^(3/2))/(6*b) - (cos(a + b*x)^2*(d*tan(a + b*x))^(7/2))/(2*b*d)]
    @test_int [csc(a + b*x)^2*(d*tan(a + b*x))^(5/2), x, 2, (2*d*(d*tan(a + b*x))^(3/2))/(3*b)]
    @test_int [csc(a + b*x)^4*(d*tan(a + b*x))^(5/2), x, 3, -((2*d^3)/(b*sqrt(d*tan(a + b*x)))) + (2*d*(d*tan(a + b*x))^(3/2))/(3*b)]
    @test_int [csc(a + b*x)^6*(d*tan(a + b*x))^(5/2), x, 3, -((2*d^5)/(5*b*(d*tan(a + b*x))^(5/2))) - (4*d^3)/(b*sqrt(d*tan(a + b*x))) + (2*d*(d*tan(a + b*x))^(3/2))/(3*b)]

    @test_int [sin(a + b*x)^3*(d*tan(a + b*x))^(5/2), x, 6, (5*d^3*sin(a + b*x))/(2*b*sqrt(d*tan(a + b*x))) + (d^3*sin(a + b*x)^3)/(b*sqrt(d*tan(a + b*x))) - (5*d^2*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(4*b) + (2*d*sin(a + b*x)^3*(d*tan(a + b*x))^(3/2))/(3*b)]
    @test_int [sin(a + b*x)^1*(d*tan(a + b*x))^(5/2), x, 5, (5*d^3*sin(a + b*x))/(3*b*sqrt(d*tan(a + b*x))) - (5*d^2*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(6*b) + (2*d*sin(a + b*x)*(d*tan(a + b*x))^(3/2))/(3*b)]
    @test_int [csc(a + b*x)^1*(d*tan(a + b*x))^(5/2), x, 4, -((d^2*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(3*b)) + (2*d*csc(a + b*x)*(d*tan(a + b*x))^(3/2))/(3*b)]
    @test_int [csc(a + b*x)^3*(d*tan(a + b*x))^(5/2), x, 4, (2*d^2*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(3*b) + (2*d*csc(a + b*x)*(d*tan(a + b*x))^(3/2))/(3*b)]
    @test_int [csc(a + b*x)^5*(d*tan(a + b*x))^(5/2), x, 5, -((4*d^3*csc(a + b*x))/(3*b*sqrt(d*tan(a + b*x)))) + (4*d^2*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(3*b) + (2*d*csc(a + b*x)^3*(d*tan(a + b*x))^(3/2))/(3*b)]
    @test_int [csc(a + b*x)^7*(d*tan(a + b*x))^(5/2), x, 6, -((40*d^3*csc(a + b*x))/(21*b*sqrt(d*tan(a + b*x)))) - (20*d^3*csc(a + b*x)^3)/(21*b*sqrt(d*tan(a + b*x))) + (40*d^2*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(21*b) + (2*d*csc(a + b*x)^5*(d*tan(a + b*x))^(3/2))/(3*b)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sin(a + b*x)^4/(d*tan(a + b*x))^(1/2), x, 13, -((5*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b*sqrt(d))) + (5*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b*sqrt(d)) - (5*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b*sqrt(d)) + (5*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b*sqrt(d)) - (5*cos(a + b*x)^2*sqrt(d*tan(a + b*x)))/(16*b*d) - (cos(a + b*x)^4*(d*tan(a + b*x))^(5/2))/(4*b*d^3)]
    @test_int [sin(a + b*x)^2/(d*tan(a + b*x))^(1/2), x, 12, -(atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d))/(4*sqrt(2)*b*sqrt(d))) + atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d))/(4*sqrt(2)*b*sqrt(d)) - log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x)))/(8*sqrt(2)*b*sqrt(d)) + log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x)))/(8*sqrt(2)*b*sqrt(d)) - (cos(a + b*x)^2*sqrt(d*tan(a + b*x)))/(2*b*d)]
    @test_int [csc(a + b*x)^2/(d*tan(a + b*x))^(1/2), x, 2, -((2*d)/(3*b*(d*tan(a + b*x))^(3/2)))]
    @test_int [csc(a + b*x)^4/(d*tan(a + b*x))^(1/2), x, 3, -((2*d^3)/(7*b*(d*tan(a + b*x))^(7/2))) - (2*d)/(3*b*(d*tan(a + b*x))^(3/2))]
    @test_int [csc(a + b*x)^6/(d*tan(a + b*x))^(1/2), x, 3, -((2*d^5)/(11*b*(d*tan(a + b*x))^(11/2))) - (4*d^3)/(7*b*(d*tan(a + b*x))^(7/2)) - (2*d)/(3*b*(d*tan(a + b*x))^(3/2))]

    @test_int [sin(a + b*x)^5/(d*tan(a + b*x))^(1/2), x, 5, -((7*d*sin(a + b*x)^3)/(30*b*(d*tan(a + b*x))^(3/2))) - (d*sin(a + b*x)^5)/(5*b*(d*tan(a + b*x))^(3/2)) + (7*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(20*b*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]
    @test_int [sin(a + b*x)^3/(d*tan(a + b*x))^(1/2), x, 4, -((d*sin(a + b*x)^3)/(3*b*(d*tan(a + b*x))^(3/2))) + (EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(2*b*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]
    @test_int [sin(a + b*x)^1/(d*tan(a + b*x))^(1/2), x, 3, (EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(b*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]
    @test_int [csc(a + b*x)^1/(d*tan(a + b*x))^(1/2), x, 4, -((2*cos(a + b*x))/(b*sqrt(d*tan(a + b*x)))) - (2*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(b*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]
    @test_int [csc(a + b*x)^3/(d*tan(a + b*x))^(1/2), x, 5, -((2*d*csc(a + b*x))/(5*b*(d*tan(a + b*x))^(3/2))) - (4*cos(a + b*x))/(5*b*sqrt(d*tan(a + b*x))) - (4*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(5*b*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]


    @test_int [sin(a + b*x)^4/(d*tan(a + b*x))^(3/2), x, 13, -((3*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b*d^(3/2))) + (3*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b*d^(3/2)) + (3*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b*d^(3/2)) - (3*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b*d^(3/2)) + (3*cos(a + b*x)^2*(d*tan(a + b*x))^(3/2))/(16*b*d^3) - (cos(a + b*x)^4*(d*tan(a + b*x))^(3/2))/(4*b*d^3)]
    @test_int [sin(a + b*x)^2/(d*tan(a + b*x))^(3/2), x, 12, -(atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d))/(4*sqrt(2)*b*d^(3/2))) + atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d))/(4*sqrt(2)*b*d^(3/2)) + log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x)))/(8*sqrt(2)*b*d^(3/2)) - log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x)))/(8*sqrt(2)*b*d^(3/2)) + (cos(a + b*x)^2*(d*tan(a + b*x))^(3/2))/(2*b*d^3)]
    @test_int [csc(a + b*x)^2/(d*tan(a + b*x))^(3/2), x, 2, -((2*d)/(5*b*(d*tan(a + b*x))^(5/2)))]
    @test_int [csc(a + b*x)^4/(d*tan(a + b*x))^(3/2), x, 3, -((2*d^3)/(9*b*(d*tan(a + b*x))^(9/2))) - (2*d)/(5*b*(d*tan(a + b*x))^(5/2))]
    @test_int [csc(a + b*x)^6/(d*tan(a + b*x))^(3/2), x, 3, -((2*d^5)/(13*b*(d*tan(a + b*x))^(13/2))) - (4*d^3)/(9*b*(d*tan(a + b*x))^(9/2)) - (2*d)/(5*b*(d*tan(a + b*x))^(5/2))]

    @test_int [sin(a + b*x)^3/(d*tan(a + b*x))^(3/2), x, 5, -(sin(a + b*x)/(6*b*d*sqrt(d*tan(a + b*x)))) + sin(a + b*x)^3/(3*b*d*sqrt(d*tan(a + b*x))) + (csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(12*b*d^2)]
    @test_int [sin(a + b*x)^1/(d*tan(a + b*x))^(3/2), x, 4, sin(a + b*x)/(b*d*sqrt(d*tan(a + b*x))) + (EllipticF(a - pi/4 + b*x, 2)*sec(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(2*b*d*sqrt(d*tan(a + b*x)))]
    @test_int [csc(a + b*x)^1/(d*tan(a + b*x))^(3/2), x, 4, -((2*csc(a + b*x))/(3*b*d*sqrt(d*tan(a + b*x)))) - (csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(3*b*d^2)]
    @test_int [csc(a + b*x)^3/(d*tan(a + b*x))^(3/2), x, 5, (2*csc(a + b*x))/(21*b*d*sqrt(d*tan(a + b*x))) - (2*csc(a + b*x)^3)/(7*b*d*sqrt(d*tan(a + b*x))) - (2*csc(a + b*x)*EllipticF(a - pi/4 + b*x, 2)*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))/(21*b*d^2)]


    @test_int [sin(a + b*x)^4/(d*tan(a + b*x))^(5/2), x, 13, -((3*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b*d^(5/2))) + (3*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(32*sqrt(2)*b*d^(5/2)) - (3*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b*d^(5/2)) + (3*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(64*sqrt(2)*b*d^(5/2)) + (cos(a + b*x)^2*sqrt(d*tan(a + b*x)))/(16*b*d^3) - (cos(a + b*x)^4*sqrt(d*tan(a + b*x)))/(4*b*d^3)]
    @test_int [sin(a + b*x)^2/(d*tan(a + b*x))^(5/2), x, 12, -((3*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b*d^(5/2))) + (3*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b*d^(5/2)) - (3*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b*d^(5/2)) + (3*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b*d^(5/2)) + (cos(a + b*x)^2*sqrt(d*tan(a + b*x)))/(2*b*d^3)]
    @test_int [csc(a + b*x)^2/(d*tan(a + b*x))^(5/2), x, 2, -((2*d)/(7*b*(d*tan(a + b*x))^(7/2)))]
    @test_int [csc(a + b*x)^4/(d*tan(a + b*x))^(5/2), x, 3, -((2*d^3)/(11*b*(d*tan(a + b*x))^(11/2))) - (2*d)/(7*b*(d*tan(a + b*x))^(7/2))]
    @test_int [csc(a + b*x)^6/(d*tan(a + b*x))^(5/2), x, 3, -((2*d^5)/(15*b*(d*tan(a + b*x))^(15/2))) - (4*d^3)/(11*b*(d*tan(a + b*x))^(11/2)) - (2*d)/(7*b*(d*tan(a + b*x))^(7/2))]

    @test_int [sin(a + b*x)^7/(d*tan(a + b*x))^(5/2), x, 6, -(sin(a + b*x)^3/(20*b*d*(d*tan(a + b*x))^(3/2))) - (3*sin(a + b*x)^5)/(70*b*d*(d*tan(a + b*x))^(3/2)) + sin(a + b*x)^7/(7*b*d*(d*tan(a + b*x))^(3/2)) + (3*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(40*b*d^2*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]
    @test_int [sin(a + b*x)^5/(d*tan(a + b*x))^(5/2), x, 5, -(sin(a + b*x)^3/(10*b*d*(d*tan(a + b*x))^(3/2))) + sin(a + b*x)^5/(5*b*d*(d*tan(a + b*x))^(3/2)) + (3*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(20*b*d^2*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]
    @test_int [sin(a + b*x)^3/(d*tan(a + b*x))^(5/2), x, 4, sin(a + b*x)^3/(3*b*d*(d*tan(a + b*x))^(3/2)) + (EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(2*b*d^2*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]
    @test_int [sin(a + b*x)^1/(d*tan(a + b*x))^(5/2), x, 4, -((2*sin(a + b*x))/(b*d*(d*tan(a + b*x))^(3/2))) - (3*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(b*d^2*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]
    @test_int [csc(a + b*x)^1/(d*tan(a + b*x))^(5/2), x, 5, -((2*csc(a + b*x))/(5*b*d*(d*tan(a + b*x))^(3/2))) + (6*cos(a + b*x))/(5*b*d^2*sqrt(d*tan(a + b*x))) + (6*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(5*b*d^2*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]
    @test_int [csc(a + b*x)^3/(d*tan(a + b*x))^(5/2), x, 6, (2*csc(a + b*x))/(15*b*d*(d*tan(a + b*x))^(3/2)) - (2*csc(a + b*x)^3)/(9*b*d*(d*tan(a + b*x))^(3/2)) + (4*cos(a + b*x))/(15*b*d^2*sqrt(d*tan(a + b*x))) + (4*EllipticE(a - pi/4 + b*x, 2)*sin(a + b*x))/(15*b*d^2*sqrt(sin(2*a + 2*b*x))*sqrt(d*tan(a + b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/2)*(b*tan(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(a*sin(e + f*x))^(5/2)*sqrt(b*tan(e + f*x)), x, 2, (-8*a^2*b*sqrt(a*sin(e + f*x)))/(5*f*sqrt(b*tan(e + f*x))) - (2*b*(a*sin(e + f*x))^(5/2))/(5*f*sqrt(b*tan(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(3/2)*sqrt(b*tan(e + f*x)), x, 3, (-2*b*(a*sin(e + f*x))^(3/2))/(3*f*sqrt(b*tan(e + f*x))) + (4*a^2*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*tan(e + f*x)))/(3*f*sqrt(a*sin(e + f*x)))]
    @test_int [sqrt(a*sin(e + f*x))*sqrt(b*tan(e + f*x)), x, 1, (-2*b*sqrt(a*sin(e + f*x)))/(f*sqrt(b*tan(e + f*x)))]
    @test_int [sqrt(b*tan(e + f*x))/sqrt(a*sin(e + f*x)), x, 2, (2*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*tan(e + f*x)))/(f*sqrt(a*sin(e + f*x)))]
    @test_int [sqrt(b*tan(e + f*x))/(a*sin(e + f*x))^(3/2), x, 7, -((atan(sqrt(cos(e + f*x)))*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))/(a*f*sqrt(a*sin(e + f*x)))) - (atanh(sqrt(cos(e + f*x)))*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))/(a*f*sqrt(a*sin(e + f*x)))]
    @test_int [sqrt(b*tan(e + f*x))/(a*sin(e + f*x))^(5/2), x, 3, -(b/(a^2*f*sqrt(a*sin(e + f*x))*sqrt(b*tan(e + f*x)))) + (sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*tan(e + f*x)))/(a^2*f*sqrt(a*sin(e + f*x)))]


    @test_int [(a*sin(e + f*x))^(5/2)*(b*tan(e + f*x))^(3/2), x, 4, (-24*a^2*b^2*EllipticE((e + f*x)/2, 2)*sqrt(a*sin(e + f*x)))/(5*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x))) + (12*a^2*b*sqrt(a*sin(e + f*x))*sqrt(b*tan(e + f*x)))/(5*f) - (2*b*(a*sin(e + f*x))^(5/2)*sqrt(b*tan(e + f*x)))/(5*f)]
    @test_int [(a*sin(e + f*x))^(3/2)*(b*tan(e + f*x))^(3/2), x, 2, (8*a^2*b*sqrt(b*tan(e + f*x)))/(3*f*sqrt(a*sin(e + f*x))) - (2*b*(a*sin(e + f*x))^(3/2)*sqrt(b*tan(e + f*x)))/(3*f)]
    @test_int [sqrt(a*sin(e + f*x))*(b*tan(e + f*x))^(3/2), x, 3, (-4*b^2*EllipticE((e + f*x)/2, 2)*sqrt(a*sin(e + f*x)))/(f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x))) + (2*b*sqrt(a*sin(e + f*x))*sqrt(b*tan(e + f*x)))/f]
    @test_int [(b*tan(e + f*x))^(3/2)/sqrt(a*sin(e + f*x)), x, 1, (2*b*sqrt(b*tan(e + f*x)))/(f*sqrt(a*sin(e + f*x)))]
    @test_int [(b*tan(e + f*x))^(3/2)/(a*sin(e + f*x))^(3/2), x, 3, (-2*b^2*EllipticE((e + f*x)/2, 2)*sqrt(a*sin(e + f*x)))/(a^2*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x))) + (2*b*sqrt(a*sin(e + f*x))*sqrt(b*tan(e + f*x)))/(a^2*f)]
    @test_int [(b*tan(e + f*x))^(3/2)/(a*sin(e + f*x))^(5/2), x, 8, (b^2*atan(sqrt(cos(e + f*x)))*sqrt(a*sin(e + f*x)))/(a^3*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x))) - (b^2*atanh(sqrt(cos(e + f*x)))*sqrt(a*sin(e + f*x)))/(a^3*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x))) + (2*b*sqrt(b*tan(e + f*x)))/(a^2*f*sqrt(a*sin(e + f*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(a*sin(e + f*x))^(9/2)/sqrt(b*tan(e + f*x)), x, 4, -((4*a^2*b*(a*sin(e + f*x))^(5/2))/(15*f*(b*tan(e + f*x))^(3/2))) - (2*b*(a*sin(e + f*x))^(9/2))/(9*f*(b*tan(e + f*x))^(3/2)) + (8*a^4*EllipticE((1/2)*(e + f*x), 2)*sqrt(a*sin(e + f*x)))/(15*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(7/2)/sqrt(b*tan(e + f*x)), x, 2, -((8*a^2*b*(a*sin(e + f*x))^(3/2))/(21*f*(b*tan(e + f*x))^(3/2))) - (2*b*(a*sin(e + f*x))^(7/2))/(7*f*(b*tan(e + f*x))^(3/2))]
    @test_int [(a*sin(e + f*x))^(5/2)/sqrt(b*tan(e + f*x)), x, 3, (-2*b*(a*sin(e + f*x))^(5/2))/(5*f*(b*tan(e + f*x))^(3/2)) + (4*a^2*EllipticE((e + f*x)/2, 2)*sqrt(a*sin(e + f*x)))/(5*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(3/2)/sqrt(b*tan(e + f*x)), x, 1, (-2*b*(a*sin(e + f*x))^(3/2))/(3*f*(b*tan(e + f*x))^(3/2))]
    @test_int [sqrt(a*sin(e + f*x))/sqrt(b*tan(e + f*x)), x, 2, (2*EllipticE((e + f*x)/2, 2)*sqrt(a*sin(e + f*x)))/(f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))]
    @test_int [1/(sqrt(a*sin(e + f*x))*sqrt(b*tan(e + f*x))), x, 7, (atan(sqrt(cos(e + f*x)))*sqrt(a*sin(e + f*x)))/(a*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x))) - (atanh(sqrt(cos(e + f*x)))*sqrt(a*sin(e + f*x)))/(a*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(3/2)*sqrt(b*tan(e + f*x))), x, 3, -((b*sqrt(a*sin(e + f*x)))/(a^2*f*(b*tan(e + f*x))^(3/2))) - (EllipticE((e + f*x)/2, 2)*sqrt(a*sin(e + f*x)))/(a^2*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(5/2)*sqrt(b*tan(e + f*x))), x, 8, -(b/(2*a^2*f*sqrt(a*sin(e + f*x))*(b*tan(e + f*x))^(3/2))) + (atan(sqrt(cos(e + f*x)))*sqrt(a*sin(e + f*x)))/(4*a^3*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x))) - (atanh(sqrt(cos(e + f*x)))*sqrt(a*sin(e + f*x)))/(4*a^3*f*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))]


    @test_int [(a*sin(e + f*x))^(13/2)/(b*tan(e + f*x))^(3/2), x, 4, -((64*a^6*sqrt(a*sin(e + f*x)))/(585*b*f*sqrt(b*tan(e + f*x)))) - (16*a^4*(a*sin(e + f*x))^(5/2))/(585*b*f*sqrt(b*tan(e + f*x))) - (2*a^2*(a*sin(e + f*x))^(9/2))/(117*b*f*sqrt(b*tan(e + f*x))) + (2*(a*sin(e + f*x))^(13/2))/(13*b*f*sqrt(b*tan(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(9/2)/(b*tan(e + f*x))^(3/2), x, 3, -((8*a^4*sqrt(a*sin(e + f*x)))/(45*b*f*sqrt(b*tan(e + f*x)))) - (2*a^2*(a*sin(e + f*x))^(5/2))/(45*b*f*sqrt(b*tan(e + f*x))) + (2*(a*sin(e + f*x))^(9/2))/(9*b*f*sqrt(b*tan(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(5/2)/(b*tan(e + f*x))^(3/2), x, 1, (-2*b*(a*sin(e + f*x))^(5/2))/(5*f*(b*tan(e + f*x))^(5/2))]
    @test_int [sqrt(a*sin(e + f*x))/(b*tan(e + f*x))^(3/2), x, 8, (2*sqrt(a*sin(e + f*x)))/(b*f*sqrt(b*tan(e + f*x))) - (a*atan(sqrt(cos(e + f*x)))*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))/(b^2*f*sqrt(a*sin(e + f*x))) - (a*atanh(sqrt(cos(e + f*x)))*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))/(b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(3/2)*(b*tan(e + f*x))^(3/2)), x, 8, -(1/(2*b*f*(a*sin(e + f*x))^(3/2)*sqrt(b*tan(e + f*x)))) + (atan(sqrt(cos(e + f*x)))*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))/(4*a*b^2*f*sqrt(a*sin(e + f*x))) + (atanh(sqrt(cos(e + f*x)))*sqrt(cos(e + f*x))*sqrt(b*tan(e + f*x)))/(4*a*b^2*f*sqrt(a*sin(e + f*x)))]

    @test_int [(a*sin(e + f*x))^(11/2)/(b*tan(e + f*x))^(3/2), x, 5, -((4*a^4*(a*sin(e + f*x))^(3/2))/(77*b*f*sqrt(b*tan(e + f*x)))) - (2*a^2*(a*sin(e + f*x))^(7/2))/(77*b*f*sqrt(b*tan(e + f*x))) + (2*(a*sin(e + f*x))^(11/2))/(11*b*f*sqrt(b*tan(e + f*x))) + (8*a^6*sqrt(cos(e + f*x))*EllipticF((1/2)*(e + f*x), 2)*sqrt(b*tan(e + f*x)))/(77*b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(7/2)/(b*tan(e + f*x))^(3/2), x, 4, -((2*a^2*(a*sin(e + f*x))^(3/2))/(21*b*f*sqrt(b*tan(e + f*x)))) + (2*(a*sin(e + f*x))^(7/2))/(7*b*f*sqrt(b*tan(e + f*x))) + (4*a^4*sqrt(cos(e + f*x))*EllipticF((1/2)*(e + f*x), 2)*sqrt(b*tan(e + f*x)))/(21*b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [(a*sin(e + f*x))^(3/2)/(b*tan(e + f*x))^(3/2), x, 3, (2*(a*sin(e + f*x))^(3/2))/(3*b*f*sqrt(b*tan(e + f*x))) + (2*a^2*sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*tan(e + f*x)))/(3*b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [1/(sqrt(a*sin(e + f*x))*(b*tan(e + f*x))^(3/2)), x, 3, -(1/(b*f*sqrt(a*sin(e + f*x))*sqrt(b*tan(e + f*x)))) - (sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*tan(e + f*x)))/(b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(5/2)*(b*tan(e + f*x))^(3/2)), x, 4, -1/(3*b*f*(a*sin(e + f*x))^(5/2)*sqrt(b*tan(e + f*x))) + 1/(6*a^2*b*f*sqrt(a*sin(e + f*x))*sqrt(b*tan(e + f*x))) - (sqrt(cos(e + f*x))*EllipticF((e + f*x)/2, 2)*sqrt(b*tan(e + f*x)))/(6*a^2*b^2*f*sqrt(a*sin(e + f*x)))]
    @test_int [1/((a*sin(e + f*x))^(9/2)*(b*tan(e + f*x))^(3/2)), x, 5, -(1/(5*b*f*(a*sin(e + f*x))^(9/2)*sqrt(b*tan(e + f*x)))) + 1/(30*a^2*b*f*(a*sin(e + f*x))^(5/2)*sqrt(b*tan(e + f*x))) + 1/(12*a^4*b*f*sqrt(a*sin(e + f*x))*sqrt(b*tan(e + f*x))) - (sqrt(cos(e + f*x))*EllipticF((1/2)*(e + f*x), 2)*sqrt(b*tan(e + f*x)))/(12*a^4*b^2*f*sqrt(a*sin(e + f*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/3)*(b*tan(e+f*x))^(n/2)=#


    @test_int [sqrt(d*tan(e + f*x))*(b*sin(e + f*x))^(4/3), x, 2, (6*(cos(e + f*x)^2)^(3/4)*Hypergeometric2F1(3/4, 17/12, 29/12, sin(e + f*x)^2)*(b*sin(e + f*x))^(4/3)*(d*tan(e + f*x))^(3/2))/(17*d*f)]
    @test_int [sqrt(d*tan(e + f*x))*(b*sin(e + f*x))^(1/3), x, 2, (6*(cos(e + f*x)^2)^(3/4)*Hypergeometric2F1(3/4, 11/12, 23/12, sin(e + f*x)^2)*(b*sin(e + f*x))^(1/3)*(d*tan(e + f*x))^(3/2))/(11*d*f)]
    @test_int [sqrt(d*tan(e + f*x))/(b*sin(e + f*x))^(1/3), x, 2, (6*(cos(e + f*x)^2)^(3/4)*Hypergeometric2F1(7/12, 3/4, 19/12, sin(e + f*x)^2)*(d*tan(e + f*x))^(3/2))/(7*d*f*(b*sin(e + f*x))^(1/3))]
    @test_int [sqrt(d*tan(e + f*x))/(b*sin(e + f*x))^(4/3), x, 2, (6*(cos(e + f*x)^2)^(3/4)*Hypergeometric2F1(1/12, 3/4, 13/12, sin(e + f*x)^2)*(d*tan(e + f*x))^(3/2))/(d*f*(b*sin(e + f*x))^(4/3))]


    @test_int [(d*tan(e + f*x))^(3/2)*(b*sin(e + f*x))^(4/3), x, 2, (6*(cos(e + f*x)^2)^(5/4)*Hypergeometric2F1(5/4, 23/12, 35/12, sin(e + f*x)^2)*(b*sin(e + f*x))^(4/3)*(d*tan(e + f*x))^(5/2))/(23*d*f)]
    @test_int [(d*tan(e + f*x))^(3/2)*(b*sin(e + f*x))^(1/3), x, 2, (6*(cos(e + f*x)^2)^(5/4)*Hypergeometric2F1(5/4, 17/12, 29/12, sin(e + f*x)^2)*(b*sin(e + f*x))^(1/3)*(d*tan(e + f*x))^(5/2))/(17*d*f)]
    @test_int [(d*tan(e + f*x))^(3/2)/(b*sin(e + f*x))^(1/3), x, 2, (6*(cos(e + f*x)^2)^(5/4)*Hypergeometric2F1(13/12, 5/4, 25/12, sin(e + f*x)^2)*(d*tan(e + f*x))^(5/2))/(13*d*f*(b*sin(e + f*x))^(1/3))]
    @test_int [(d*tan(e + f*x))^(3/2)/(b*sin(e + f*x))^(4/3), x, 2, (6*(cos(e + f*x)^2)^(5/4)*Hypergeometric2F1(7/12, 5/4, 19/12, sin(e + f*x)^2)*(d*tan(e + f*x))^(5/2))/(7*d*f*(b*sin(e + f*x))^(4/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^(m/2)*(b*tan(e+f*x))^(n/3)=#


    @test_int [sqrt(b*sin(e + f*x))*(d*tan(e + f*x))^(4/3), x, 2, (6*(cos(e + f*x)^2)^(7/6)*Hypergeometric2F1(7/6, 17/12, 29/12, sin(e + f*x)^2)*sqrt(b*sin(e + f*x))*(d*tan(e + f*x))^(7/3))/(17*d*f)]
    @test_int [sqrt(b*sin(e + f*x))*(d*tan(e + f*x))^(1/3), x, 2, (6*(cos(e + f*x)^2)^(2/3)*Hypergeometric2F1(2/3, 11/12, 23/12, sin(e + f*x)^2)*sqrt(b*sin(e + f*x))*(d*tan(e + f*x))^(4/3))/(11*d*f)]
    @test_int [sqrt(b*sin(e + f*x))/(d*tan(e + f*x))^(1/3), x, 2, (6*(cos(e + f*x)^2)^(1/3)*Hypergeometric2F1(1/3, 7/12, 19/12, sin(e + f*x)^2)*sqrt(b*sin(e + f*x))*(d*tan(e + f*x))^(2/3))/(7*d*f)]
    @test_int [sqrt(b*sin(e + f*x))/(d*tan(e + f*x))^(4/3), x, 2, (6*Hypergeometric2F1(-(1/6), 1/12, 13/12, sin(e + f*x)^2)*sqrt(b*sin(e + f*x)))/(d*f*(cos(e + f*x)^2)^(1/6)*(d*tan(e + f*x))^(1/3))]


    @test_int [(b*sin(e + f*x))^(3/2)*(d*tan(e + f*x))^(4/3), x, 2, (6*(cos(e + f*x)^2)^(7/6)*Hypergeometric2F1(7/6, 23/12, 35/12, sin(e + f*x)^2)*(b*sin(e + f*x))^(3/2)*(d*tan(e + f*x))^(7/3))/(23*d*f)]
    @test_int [(b*sin(e + f*x))^(3/2)*(d*tan(e + f*x))^(1/3), x, 2, (6*(cos(e + f*x)^2)^(2/3)*Hypergeometric2F1(2/3, 17/12, 29/12, sin(e + f*x)^2)*(b*sin(e + f*x))^(3/2)*(d*tan(e + f*x))^(4/3))/(17*d*f)]
    @test_int [(b*sin(e + f*x))^(3/2)/(d*tan(e + f*x))^(1/3), x, 2, (6*(cos(e + f*x)^2)^(1/3)*Hypergeometric2F1(1/3, 13/12, 25/12, sin(e + f*x)^2)*(b*sin(e + f*x))^(3/2)*(d*tan(e + f*x))^(2/3))/(13*d*f)]
    @test_int [(b*sin(e + f*x))^(3/2)/(d*tan(e + f*x))^(4/3), x, 2, (6*Hypergeometric2F1(-(1/6), 7/12, 19/12, sin(e + f*x)^2)*(b*sin(e + f*x))^(3/2))/(7*d*f*(cos(e + f*x)^2)^(1/6)*(d*tan(e + f*x))^(1/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*tan(e+f*x))^n*with*m*symbolic=#


    @test_int [(a*sin(e + f*x))^m*tan(e + f*x)^3, x, 2, (Hypergeometric2F1(2, (4 + m)/2, (6 + m)/2, sin(e + f*x)^2)*(a*sin(e + f*x))^(4 + m))/(a^4*f*(4 + m))]
    @test_int [(a*sin(e + f*x))^m*tan(e + f*x)^1, x, 2, (Hypergeometric2F1(1, (2 + m)/2, (4 + m)/2, sin(e + f*x)^2)*(a*sin(e + f*x))^(2 + m))/(a^2*f*(2 + m))]
    @test_int [(a*sin(e + f*x))^m*cot(e + f*x)^1, x, 2, (a*sin(e + f*x))^m/(f*m)]
    @test_int [(a*sin(e + f*x))^m*cot(e + f*x)^3, x, 3, -((a^2*(a*sin(e + f*x))^(-2 + m))/(f*(2 - m))) - (a*sin(e + f*x))^m/(f*m)]
    @test_int [(a*sin(e + f*x))^m*cot(e + f*x)^5, x, 3, -((a^4*(a*sin(e + f*x))^(-4 + m))/(f*(4 - m))) + (2*a^2*(a*sin(e + f*x))^(-2 + m))/(f*(2 - m)) + (a*sin(e + f*x))^m/(f*m)]

    @test_int [(a*sin(e + f*x))^m*tan(e + f*x)^4, x, 2, (sqrt(cos(e + f*x)^2)*Hypergeometric2F1(5/2, (5 + m)/2, (7 + m)/2, sin(e + f*x)^2)*sec(e + f*x)*(a*sin(e + f*x))^(5 + m))/(a^5*f*(5 + m))]
    @test_int [(a*sin(e + f*x))^m*tan(e + f*x)^2, x, 2, (sqrt(cos(e + f*x)^2)*Hypergeometric2F1(3/2, (3 + m)/2, (5 + m)/2, sin(e + f*x)^2)*sec(e + f*x)*(a*sin(e + f*x))^(3 + m))/(a^3*f*(3 + m))]
    @test_int [(a*sin(e + f*x))^m*cot(e + f*x)^2, x, 2, -((a*cos(e + f*x)*Hypergeometric2F1(-(1/2), (1/2)*(-1 + m), (1 + m)/2, sin(e + f*x)^2)*(a*sin(e + f*x))^(-1 + m))/(f*(1 - m)*sqrt(cos(e + f*x)^2)))]
    @test_int [(a*sin(e + f*x))^m*cot(e + f*x)^4, x, 2, -((a^3*cos(e + f*x)*Hypergeometric2F1(-(3/2), (1/2)*(-3 + m), (1/2)*(-1 + m), sin(e + f*x)^2)*(a*sin(e + f*x))^(-3 + m))/(f*(3 - m)*sqrt(cos(e + f*x)^2)))]


    @test_int [(a*sin(e + f*x))^m*(b*tan(e + f*x))^(3/2), x, 2, (2*(cos(e + f*x)^2)^(5/4)*Hypergeometric2F1(5/4, (1/4)*(5 + 2*m), (1/4)*(9 + 2*m), sin(e + f*x)^2)*(a*sin(e + f*x))^m*(b*tan(e + f*x))^(5/2))/(b*f*(5 + 2*m))]
    @test_int [(a*sin(e + f*x))^m*(b*tan(e + f*x))^(1/2), x, 2, (2*(cos(e + f*x)^2)^(3/4)*Hypergeometric2F1(3/4, (1/4)*(3 + 2*m), (1/4)*(7 + 2*m), sin(e + f*x)^2)*(a*sin(e + f*x))^m*(b*tan(e + f*x))^(3/2))/(b*f*(3 + 2*m))]
    @test_int [(a*sin(e + f*x))^m/(b*tan(e + f*x))^(1/2), x, 2, (2*(cos(e + f*x)^2)^(1/4)*Hypergeometric2F1(1/4, (1/4)*(1 + 2*m), (1/4)*(5 + 2*m), sin(e + f*x)^2)*(a*sin(e + f*x))^m*sqrt(b*tan(e + f*x)))/(b*f*(1 + 2*m))]
    @test_int [(a*sin(e + f*x))^m/(b*tan(e + f*x))^(3/2), x, 2, -((2*Hypergeometric2F1(-(1/4), (1/4)*(-1 + 2*m), (1/4)*(3 + 2*m), sin(e + f*x)^2)*(a*sin(e + f*x))^m)/(b*f*(1 - 2*m)*(cos(e + f*x)^2)^(1/4)*sqrt(b*tan(e + f*x))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(e+f*x))^m*(b*tan(e+f*x))^n*with*n*symbolic=#


    @test_int [(a*sin(e + f*x))^m*(b*tan(e + f*x))^n, x, 2, ((cos(e + f*x)^2)^((1 + n)/2)*Hypergeometric2F1((1 + n)/2, (1/2)*(1 + m + n), (1/2)*(3 + m + n), sin(e + f*x)^2)*(a*sin(e + f*x))^m*(b*tan(e + f*x))^(1 + n))/(b*f*(1 + m + n))]


    @test_int [sin(e + f*x)^4*(b*tan(e + f*x))^n, x, 2, (Hypergeometric2F1(3, (5 + n)/2, (7 + n)/2, -tan(e + f*x)^2)*(b*tan(e + f*x))^(5 + n))/(b^5*f*(5 + n))]
    @test_int [sin(e + f*x)^2*(b*tan(e + f*x))^n, x, 2, (Hypergeometric2F1(2, (3 + n)/2, (5 + n)/2, -tan(e + f*x)^2)*(b*tan(e + f*x))^(3 + n))/(b^3*f*(3 + n))]
    @test_int [csc(e + f*x)^2*(b*tan(e + f*x))^n, x, 2, -((b*(b*tan(e + f*x))^(-1 + n))/(f*(1 - n)))]
    @test_int [csc(e + f*x)^4*(b*tan(e + f*x))^n, x, 3, -((b^3*(b*tan(e + f*x))^(-3 + n))/(f*(3 - n))) - (b*(b*tan(e + f*x))^(-1 + n))/(f*(1 - n))]
    @test_int [csc(e + f*x)^6*(b*tan(e + f*x))^n, x, 3, -((b^5*(b*tan(e + f*x))^(-5 + n))/(f*(5 - n))) - (2*b^3*(b*tan(e + f*x))^(-3 + n))/(f*(3 - n)) - (b*(b*tan(e + f*x))^(-1 + n))/(f*(1 - n))]

    @test_int [sin(e + f*x)^3*(b*tan(e + f*x))^n, x, 2, ((cos(e + f*x)^2)^((1 + n)/2)*Hypergeometric2F1((1 + n)/2, (4 + n)/2, (6 + n)/2, sin(e + f*x)^2)*sin(e + f*x)^3*(b*tan(e + f*x))^(1 + n))/(b*f*(4 + n))]
    @test_int [sin(e + f*x)^1*(b*tan(e + f*x))^n, x, 2, ((cos(e + f*x)^2)^((1 + n)/2)*Hypergeometric2F1((1 + n)/2, (2 + n)/2, (4 + n)/2, sin(e + f*x)^2)*sin(e + f*x)*(b*tan(e + f*x))^(1 + n))/(b*f*(2 + n))]
    @test_int [csc(e + f*x)^1*(b*tan(e + f*x))^n, x, 2, -((cos(e + f*x)*Hypergeometric2F1((1 - n)/2, (2 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*tan(e + f*x))^n)/((sin(e + f*x)^2)^(n/2)*(f*(1 - n))))]
    @test_int [csc(e + f*x)^3*(b*tan(e + f*x))^n, x, 2, -((cos(e + f*x)*Hypergeometric2F1((1 - n)/2, (4 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*tan(e + f*x))^n)/((sin(e + f*x)^2)^(n/2)*(f*(1 - n))))]
    @test_int [csc(e + f*x)^5*(b*tan(e + f*x))^n, x, 2, -((cos(e + f*x)*Hypergeometric2F1((1 - n)/2, (6 - n)/2, (3 - n)/2, cos(e + f*x)^2)*(b*tan(e + f*x))^n)/((sin(e + f*x)^2)^(n/2)*(f*(1 - n))))]


    @test_int [(a*sin(e + f*x))^(3/2)*(b*tan(e + f*x))^n, x, 2, (2*(cos(e + f*x)^2)^((1 + n)/2)*Hypergeometric2F1((1 + n)/2, (1/4)*(5 + 2*n), (1/4)*(9 + 2*n), sin(e + f*x)^2)*(a*sin(e + f*x))^(3/2)*(b*tan(e + f*x))^(1 + n))/(b*f*(5 + 2*n))]
    @test_int [(a*sin(e + f*x))^(1/2)*(b*tan(e + f*x))^n, x, 2, (2*(cos(e + f*x)^2)^((1 + n)/2)*Hypergeometric2F1((1 + n)/2, (1/4)*(3 + 2*n), (1/4)*(7 + 2*n), sin(e + f*x)^2)*sqrt(a*sin(e + f*x))*(b*tan(e + f*x))^(1 + n))/(b*f*(3 + 2*n))]
    @test_int [(b*tan(e + f*x))^n/(a*sin(e + f*x))^(1/2), x, 2, (2*(cos(e + f*x)^2)^((1 + n)/2)*Hypergeometric2F1((1 + n)/2, (1/4)*(1 + 2*n), (1/4)*(5 + 2*n), sin(e + f*x)^2)*(b*tan(e + f*x))^(1 + n))/(b*f*(1 + 2*n)*sqrt(a*sin(e + f*x)))]
    @test_int [(b*tan(e + f*x))^n/(a*sin(e + f*x))^(3/2), x, 2, -((2*(cos(e + f*x)^2)^((1 + n)/2)*Hypergeometric2F1((1 + n)/2, (1/4)*(-1 + 2*n), (1/4)*(3 + 2*n), sin(e + f*x)^2)*(b*tan(e + f*x))^(1 + n))/(b*f*(1 - 2*n)*(a*sin(e + f*x))^(3/2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cos(e+f*x))^m*(b*tan(e+f*x))^n=#


    @test_int [(a*cos(e + f*x))^m*(b*tan(e + f*x))^n, x, 2, ((a*cos(e + f*x))^m*(cos(e + f*x)^2)^((1/2)*(1 - m + n))*Hypergeometric2F1((1 + n)/2, (1/2)*(1 - m + n), (3 + n)/2, sin(e + f*x)^2)*(b*tan(e + f*x))^(1 + n))/(b*f*(1 + n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*tan(e+f*x))^m*(b*tan(e+f*x))^n=#


    @test_int [(a*tan(e + f*x))^m*(b*tan(e + f*x))^n, x, 3, (Hypergeometric2F1(1, (1/2)*(1 + m + n), (1/2)*(3 + m + n), -tan(e + f*x)^2)*(a*tan(e + f*x))^(1 + m)*(b*tan(e + f*x))^n)/(a*f*(1 + m + n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*cot(e+f*x))^m*(b*tan(e+f*x))^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(b*tan(e+f*x))^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cot(e+f*x))^(m/2)*tan(e+f*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [tan(e + f*x)^4*sqrt(d*cot(e + f*x)), x, 14, (sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (2*d^3)/(5*f*(d*cot(e + f*x))^(5/2)) - (2*d)/(f*sqrt(d*cot(e + f*x))) - (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) + (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [tan(e + f*x)^3*sqrt(d*cot(e + f*x)), x, 13, -((sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f)) + (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (2*d^2)/(3*f*(d*cot(e + f*x))^(3/2)) - (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) + (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [tan(e + f*x)^2*sqrt(d*cot(e + f*x)), x, 13, -((sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f)) + (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (2*d)/(f*sqrt(d*cot(e + f*x))) + (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) - (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [tan(e + f*x)^1*sqrt(d*cot(e + f*x)), x, 12, (sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) - (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [tan(e + f*x)^0*sqrt(d*cot(e + f*x)), x, 11, (sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) + (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [cot(e + f*x)^1*sqrt(d*cot(e + f*x)), x, 13, -((sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f)) + (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (2*sqrt(d*cot(e + f*x)))/f - (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) + (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [cot(e + f*x)^2*sqrt(d*cot(e + f*x)), x, 13, -((sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f)) + (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (2*(d*cot(e + f*x))^(3/2))/(3*d*f) + (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) - (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [cot(e + f*x)^3*sqrt(d*cot(e + f*x)), x, 14, (sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (2*sqrt(d*cot(e + f*x)))/f - (2*(d*cot(e + f*x))^(5/2))/(5*d^2*f) + (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) - (sqrt(d)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]


    @test_int [tan(e + f*x)^5*(d*cot(e + f*x))^(3/2), x, 14, (d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (2*d^4)/(5*f*(d*cot(e + f*x))^(5/2)) - (2*d^2)/(f*sqrt(d*cot(e + f*x))) - (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) + (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [tan(e + f*x)^4*(d*cot(e + f*x))^(3/2), x, 13, -((d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f)) + (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (2*d^3)/(3*f*(d*cot(e + f*x))^(3/2)) - (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) + (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [tan(e + f*x)^3*(d*cot(e + f*x))^(3/2), x, 13, -((d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f)) + (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (2*d^2)/(f*sqrt(d*cot(e + f*x))) + (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) - (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [tan(e + f*x)^2*(d*cot(e + f*x))^(3/2), x, 12, (d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) - (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [tan(e + f*x)^1*(d*cot(e + f*x))^(3/2), x, 12, (d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) + (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [tan(e + f*x)^0*(d*cot(e + f*x))^(3/2), x, 12, -((d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f)) + (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (2*d*sqrt(d*cot(e + f*x)))/f - (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) + (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [cot(e + f*x)^1*(d*cot(e + f*x))^(3/2), x, 13, -((d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f)) + (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (2*(d*cot(e + f*x))^(3/2))/(3*f) + (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) - (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [cot(e + f*x)^2*(d*cot(e + f*x))^(3/2), x, 14, (d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (2*d*sqrt(d*cot(e + f*x)))/f - (2*(d*cot(e + f*x))^(5/2))/(5*d*f) + (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f) - (d^(3/2)*log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x))))/(2*sqrt(2)*f)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [tan(e + f*x)^3/sqrt(d*cot(e + f*x)), x, 14, atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) - atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) + (2*d^2)/(5*f*(d*cot(e + f*x))^(5/2)) - 2/(f*sqrt(d*cot(e + f*x))) - log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f)]
    @test_int [tan(e + f*x)^2/sqrt(d*cot(e + f*x)), x, 13, -(atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f)) + atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) + (2*d)/(3*f*(d*cot(e + f*x))^(3/2)) - log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f)]
    @test_int [tan(e + f*x)^1/sqrt(d*cot(e + f*x)), x, 13, -(atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f)) + atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) + 2/(f*sqrt(d*cot(e + f*x))) + log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f)]
    @test_int [tan(e + f*x)^0/sqrt(d*cot(e + f*x)), x, 11, atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) - atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f)]
    @test_int [cot(e + f*x)^1/sqrt(d*cot(e + f*x)), x, 12, atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) - atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f)]
    @test_int [cot(e + f*x)^2/sqrt(d*cot(e + f*x)), x, 13, -(atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f)) + atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) - (2*sqrt(d*cot(e + f*x)))/(d*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f)]
    @test_int [cot(e + f*x)^3/sqrt(d*cot(e + f*x)), x, 13, -(atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f)) + atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*sqrt(d)*f) - (2*(d*cot(e + f*x))^(3/2))/(3*d^2*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*sqrt(d)*f)]


    @test_int [tan(e + f*x)^2/(d*cot(e + f*x))^(3/2), x, 14, atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) - atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) + (2*d)/(5*f*(d*cot(e + f*x))^(5/2)) - 2/(d*f*sqrt(d*cot(e + f*x))) - log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f)]
    @test_int [tan(e + f*x)^1/(d*cot(e + f*x))^(3/2), x, 13, -(atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f)) + atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) + 2/(3*f*(d*cot(e + f*x))^(3/2)) - log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f)]
    @test_int [tan(e + f*x)^0/(d*cot(e + f*x))^(3/2), x, 12, -(atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f)) + atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) + 2/(d*f*sqrt(d*cot(e + f*x))) + log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f)]
    @test_int [cot(e + f*x)^1/(d*cot(e + f*x))^(3/2), x, 12, atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) - atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f)]
    @test_int [cot(e + f*x)^2/(d*cot(e + f*x))^(3/2), x, 12, atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) - atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f)]
    @test_int [cot(e + f*x)^3/(d*cot(e + f*x))^(3/2), x, 13, -(atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f)) + atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) - (2*sqrt(d*cot(e + f*x)))/(d^2*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f)]
    @test_int [cot(e + f*x)^4/(d*cot(e + f*x))^(3/2), x, 13, -(atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f)) + atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) - (2*(d*cot(e + f*x))^(3/2))/(3*d^3*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f)]
    @test_int [cot(e + f*x)^5/(d*cot(e + f*x))^(3/2), x, 14, atan(1 - (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) - atan(1 + (sqrt(2)*sqrt(d*cot(e + f*x)))/sqrt(d))/(sqrt(2)*d^(3/2)*f) + (2*sqrt(d*cot(e + f*x)))/(d^2*f) - (2*(d*cot(e + f*x))^(5/2))/(5*d^4*f) + log(sqrt(d) + sqrt(d)*cot(e + f*x) - sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f) - log(sqrt(d) + sqrt(d)*cot(e + f*x) + sqrt(2)*sqrt(d*cot(e + f*x)))/(2*sqrt(2)*d^(3/2)*f)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a*cot(e+f*x))^(m/2)*(b*tan(e+f*x))^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cot(e+f*x))^m*(b*tan(e+f*x))^n*with*n*symbolic=#


    @test_int [(cot(e + f*x))^m*(tan(e + f*x))^n, x, 3, (1/(f*(1 - m + n)))*(cot(e + f*x)^m*Hypergeometric2F1(1, (1/2)*(1 - m + n), (1/2)*(3 - m + n), -tan(e + f*x)^2)*tan(e + f*x)^(1 + n))]
    @test_int [(cot(e + f*x))^m*(b*tan(e + f*x))^n, x, 3, (1/(b*f*(1 - m + n)))*(cot(e + f*x)^m*Hypergeometric2F1(1, (1/2)*(1 - m + n), (1/2)*(3 - m + n), -tan(e + f*x)^2)*(b*tan(e + f*x))^(1 + n))]
    @test_int [(a*cot(e + f*x))^m*(tan(e + f*x))^n, x, 3, (1/(f*(1 - m + n)))*((a*cot(e + f*x))^m*Hypergeometric2F1(1, (1/2)*(1 - m + n), (1/2)*(3 - m + n), -tan(e + f*x)^2)*tan(e + f*x)^(1 + n))]
    @test_int [(a*cot(e + f*x))^m*(b*tan(e + f*x))^n, x, 3, (1/(b*f*(1 - m + n)))*((a*cot(e + f*x))^m*Hypergeometric2F1(1, (1/2)*(1 - m + n), (1/2)*(3 - m + n), -tan(e + f*x)^2)*(b*tan(e + f*x))^(1 + n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^m*(b*tan(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(b*tan(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sec(e + f*x)^6*sqrt(d*tan(e + f*x)), x, 3, (2*(d*tan(e + f*x))^(3/2))/(3*d*f) + (4*(d*tan(e + f*x))^(7/2))/(7*d^3*f) + (2*(d*tan(e + f*x))^(11/2))/(11*d^5*f)]
    @test_int [sec(e + f*x)^4*sqrt(d*tan(e + f*x)), x, 3, (2*(d*tan(e + f*x))^(3/2))/(3*d*f) + (2*(d*tan(e + f*x))^(7/2))/(7*d^3*f)]
    @test_int [sec(e + f*x)^2*sqrt(d*tan(e + f*x)), x, 2, (2*(d*tan(e + f*x))^(3/2))/(3*d*f)]
    @test_int [sec(e + f*x)^0*sqrt(d*tan(e + f*x)), x, 11, -((sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(sqrt(2)*f)) + (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(sqrt(2)*f) + (sqrt(d)*log(sqrt(d) + sqrt(d)*tan(e + f*x) - sqrt(2)*sqrt(d*tan(e + f*x))))/(2*sqrt(2)*f) - (sqrt(d)*log(sqrt(d) + sqrt(d)*tan(e + f*x) + sqrt(2)*sqrt(d*tan(e + f*x))))/(2*sqrt(2)*f)]
    @test_int [cos(e + f*x)^2*sqrt(d*tan(e + f*x)), x, 12, -((sqrt(d)*atan(1 - (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(4*sqrt(2)*f)) + (sqrt(d)*atan(1 + (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(4*sqrt(2)*f) + (sqrt(d)*log(sqrt(d) + sqrt(d)*tan(e + f*x) - sqrt(2)*sqrt(d*tan(e + f*x))))/(8*sqrt(2)*f) - (sqrt(d)*log(sqrt(d) + sqrt(d)*tan(e + f*x) + sqrt(2)*sqrt(d*tan(e + f*x))))/(8*sqrt(2)*f) + (cos(e + f*x)^2*(d*tan(e + f*x))^(3/2))/(2*d*f)]

    @test_int [sec(e + f*x)^3*sqrt(d*tan(e + f*x)), x, 5, -((4*cos(e + f*x)*EllipticE(e - pi/4 + f*x, 2)*sqrt(d*tan(e + f*x)))/(5*f*sqrt(sin(2*e + 2*f*x)))) + (4*cos(e + f*x)*(d*tan(e + f*x))^(3/2))/(5*d*f) + (2*sec(e + f*x)*(d*tan(e + f*x))^(3/2))/(5*d*f)]
    @test_int [sec(e + f*x)^1*sqrt(d*tan(e + f*x)), x, 4, -((2*cos(e + f*x)*EllipticE(e - pi/4 + f*x, 2)*sqrt(d*tan(e + f*x)))/(f*sqrt(sin(2*e + 2*f*x)))) + (2*cos(e + f*x)*(d*tan(e + f*x))^(3/2))/(d*f)]
    @test_int [cos(e + f*x)^1*sqrt(d*tan(e + f*x)), x, 3, (cos(e + f*x)*EllipticE(e - pi/4 + f*x, 2)*sqrt(d*tan(e + f*x)))/(f*sqrt(sin(2*e + 2*f*x)))]
    @test_int [cos(e + f*x)^3*sqrt(d*tan(e + f*x)), x, 4, (cos(e + f*x)*EllipticE(e - pi/4 + f*x, 2)*sqrt(d*tan(e + f*x)))/(2*f*sqrt(sin(2*e + 2*f*x))) + (cos(e + f*x)^3*(d*tan(e + f*x))^(3/2))/(3*d*f)]
    @test_int [cos(e + f*x)^5*sqrt(d*tan(e + f*x)), x, 5, (7*cos(e + f*x)*EllipticE(e - pi/4 + f*x, 2)*sqrt(d*tan(e + f*x)))/(20*f*sqrt(sin(2*e + 2*f*x))) + (7*cos(e + f*x)^3*(d*tan(e + f*x))^(3/2))/(30*d*f) + (cos(e + f*x)^5*(d*tan(e + f*x))^(3/2))/(5*d*f)]


    @test_int [sec(a + b*x)^6*(d*tan(a + b*x))^(3/2), x, 3, (2*(d*tan(a + b*x))^(5/2))/(5*b*d) + (4*(d*tan(a + b*x))^(9/2))/(9*b*d^3) + (2*(d*tan(a + b*x))^(13/2))/(13*b*d^5)]
    @test_int [sec(a + b*x)^4*(d*tan(a + b*x))^(3/2), x, 3, (2*(d*tan(a + b*x))^(5/2))/(5*b*d) + (2*(d*tan(a + b*x))^(9/2))/(9*b*d^3)]
    @test_int [sec(a + b*x)^2*(d*tan(a + b*x))^(3/2), x, 2, (2*(d*tan(a + b*x))^(5/2))/(5*b*d)]
    @test_int [sec(a + b*x)^0*(d*tan(a + b*x))^(3/2), x, 12, (d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(sqrt(2)*b) - (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(sqrt(2)*b) + (d^(3/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(2*sqrt(2)*b) - (d^(3/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(2*sqrt(2)*b) + (2*d*sqrt(d*tan(a + b*x)))/b]
    @test_int [cos(a + b*x)^2*(d*tan(a + b*x))^(3/2), x, 12, -((d^(3/2)*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b)) + (d^(3/2)*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b) - (d^(3/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b) + (d^(3/2)*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b) - (d*cos(a + b*x)^2*sqrt(d*tan(a + b*x)))/(2*b)]

    @test_int [sec(a + b*x)^5*(d*tan(a + b*x))^(3/2), x, 6, -((4*d^2*EllipticF(a - pi/4 + b*x, 2)*sec(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(77*b*sqrt(d*tan(a + b*x)))) - (4*d*sec(a + b*x)*sqrt(d*tan(a + b*x)))/(77*b) - (2*d*sec(a + b*x)^3*sqrt(d*tan(a + b*x)))/(77*b) + (2*d*sec(a + b*x)^5*sqrt(d*tan(a + b*x)))/(11*b)]
    @test_int [sec(a + b*x)^3*(d*tan(a + b*x))^(3/2), x, 5, -((2*d^2*EllipticF(a - pi/4 + b*x, 2)*sec(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(21*b*sqrt(d*tan(a + b*x)))) - (2*d*sec(a + b*x)*sqrt(d*tan(a + b*x)))/(21*b) + (2*d*sec(a + b*x)^3*sqrt(d*tan(a + b*x)))/(7*b)]
    @test_int [sec(a + b*x)^1*(d*tan(a + b*x))^(3/2), x, 4, -((d^2*EllipticF(a - pi/4 + b*x, 2)*sec(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(3*b*sqrt(d*tan(a + b*x)))) + (2*d*sec(a + b*x)*sqrt(d*tan(a + b*x)))/(3*b)]
    @test_int [cos(a + b*x)^1*(d*tan(a + b*x))^(3/2), x, 4, (d^2*EllipticF(a - pi/4 + b*x, 2)*sec(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(2*b*sqrt(d*tan(a + b*x))) - (d*cos(a + b*x)*sqrt(d*tan(a + b*x)))/b]
    @test_int [cos(a + b*x)^3*(d*tan(a + b*x))^(3/2), x, 5, (d^2*EllipticF(a - pi/4 + b*x, 2)*sec(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(12*b*sqrt(d*tan(a + b*x))) + (d*cos(a + b*x)*sqrt(d*tan(a + b*x)))/(6*b) - (d*cos(a + b*x)^3*sqrt(d*tan(a + b*x)))/(3*b)]
    @test_int [cos(a + b*x)^5*(d*tan(a + b*x))^(3/2), x, 6, (d^2*EllipticF(a - pi/4 + b*x, 2)*sec(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(24*b*sqrt(d*tan(a + b*x))) + (d*cos(a + b*x)*sqrt(d*tan(a + b*x)))/(12*b) + (d*cos(a + b*x)^3*sqrt(d*tan(a + b*x)))/(30*b) - (d*cos(a + b*x)^5*sqrt(d*tan(a + b*x)))/(5*b)]


    @test_int [sec(e + f*x)^6*(d*tan(e + f*x))^(5/2), x, 3, (2*(d*tan(e + f*x))^(7/2))/(7*d*f) + (4*(d*tan(e + f*x))^(11/2))/(11*d^3*f) + (2*(d*tan(e + f*x))^(15/2))/(15*d^5*f)]
    @test_int [sec(e + f*x)^4*(d*tan(e + f*x))^(5/2), x, 3, (2*(d*tan(e + f*x))^(7/2))/(7*d*f) + (2*(d*tan(e + f*x))^(11/2))/(11*d^3*f)]
    @test_int [sec(e + f*x)^2*(d*tan(e + f*x))^(5/2), x, 2, (2*(d*tan(e + f*x))^(7/2))/(7*d*f)]
    @test_int [sec(e + f*x)^0*(d*tan(e + f*x))^(5/2), x, 12, (d^(5/2)*atan(1 - (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (d^(5/2)*atan(1 + (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(sqrt(2)*f) - (d^(5/2)*log(sqrt(d) + sqrt(d)*tan(e + f*x) - sqrt(2)*sqrt(d*tan(e + f*x))))/(2*sqrt(2)*f) + (d^(5/2)*log(sqrt(d) + sqrt(d)*tan(e + f*x) + sqrt(2)*sqrt(d*tan(e + f*x))))/(2*sqrt(2)*f) + (2*d*(d*tan(e + f*x))^(3/2))/(3*f)]
    @test_int [cos(e + f*x)^2*(d*tan(e + f*x))^(5/2), x, 12, -((3*d^(5/2)*atan(1 - (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(4*sqrt(2)*f)) + (3*d^(5/2)*atan(1 + (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(4*sqrt(2)*f) + (3*d^(5/2)*log(sqrt(d) + sqrt(d)*tan(e + f*x) - sqrt(2)*sqrt(d*tan(e + f*x))))/(8*sqrt(2)*f) - (3*d^(5/2)*log(sqrt(d) + sqrt(d)*tan(e + f*x) + sqrt(2)*sqrt(d*tan(e + f*x))))/(8*sqrt(2)*f) - (d*cos(e + f*x)^2*(d*tan(e + f*x))^(3/2))/(2*f)]
    @test_int [cos(e + f*x)^4*(d*tan(e + f*x))^(5/2), x, 13, -((3*d^(5/2)*atan(1 - (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(32*sqrt(2)*f)) + (3*d^(5/2)*atan(1 + (sqrt(2)*sqrt(d*tan(e + f*x)))/sqrt(d)))/(32*sqrt(2)*f) + (3*d^(5/2)*log(sqrt(d) + sqrt(d)*tan(e + f*x) - sqrt(2)*sqrt(d*tan(e + f*x))))/(64*sqrt(2)*f) - (3*d^(5/2)*log(sqrt(d) + sqrt(d)*tan(e + f*x) + sqrt(2)*sqrt(d*tan(e + f*x))))/(64*sqrt(2)*f) + (3*d*cos(e + f*x)^2*(d*tan(e + f*x))^(3/2))/(16*f) - (d*cos(e + f*x)^4*(d*tan(e + f*x))^(3/2))/(4*f)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sec(e + f*x)^5/sqrt(d*tan(e + f*x)), x, 5, (4*EllipticF(e - pi/4 + f*x, 2)*sec(e + f*x)*sqrt(sin(2*e + 2*f*x)))/(7*f*sqrt(d*tan(e + f*x))) + (4*sec(e + f*x)*sqrt(d*tan(e + f*x)))/(7*d*f) + (2*sec(e + f*x)^3*sqrt(d*tan(e + f*x)))/(7*d*f)]
    @test_int [sec(e + f*x)^3/sqrt(d*tan(e + f*x)), x, 4, (2*EllipticF(e - pi/4 + f*x, 2)*sec(e + f*x)*sqrt(sin(2*e + 2*f*x)))/(3*f*sqrt(d*tan(e + f*x))) + (2*sec(e + f*x)*sqrt(d*tan(e + f*x)))/(3*d*f)]
    @test_int [sec(e + f*x)^1/sqrt(d*tan(e + f*x)), x, 3, (EllipticF(e - pi/4 + f*x, 2)*sec(e + f*x)*sqrt(sin(2*e + 2*f*x)))/(f*sqrt(d*tan(e + f*x)))]
    @test_int [cos(e + f*x)^1/sqrt(d*tan(e + f*x)), x, 4, (EllipticF(e - pi/4 + f*x, 2)*sec(e + f*x)*sqrt(sin(2*e + 2*f*x)))/(2*f*sqrt(d*tan(e + f*x))) + (cos(e + f*x)*sqrt(d*tan(e + f*x)))/(d*f)]
    @test_int [cos(e + f*x)^3/sqrt(d*tan(e + f*x)), x, 5, (5*EllipticF(e - pi/4 + f*x, 2)*sec(e + f*x)*sqrt(sin(2*e + 2*f*x)))/(12*f*sqrt(d*tan(e + f*x))) + (5*cos(e + f*x)*sqrt(d*tan(e + f*x)))/(6*d*f) + (cos(e + f*x)^3*sqrt(d*tan(e + f*x)))/(3*d*f)]


    @test_int [sec(a + b*x)^6/(d*tan(a + b*x))^(3/2), x, 3, -(2/(b*d*sqrt(d*tan(a + b*x)))) + (4*(d*tan(a + b*x))^(3/2))/(3*b*d^3) + (2*(d*tan(a + b*x))^(7/2))/(7*b*d^5)]
    @test_int [sec(a + b*x)^4/(d*tan(a + b*x))^(3/2), x, 3, -(2/(b*d*sqrt(d*tan(a + b*x)))) + (2*(d*tan(a + b*x))^(3/2))/(3*b*d^3)]
    @test_int [sec(a + b*x)^2/(d*tan(a + b*x))^(3/2), x, 2, -(2/(b*d*sqrt(d*tan(a + b*x))))]
    @test_int [sec(a + b*x)^0/(d*tan(a + b*x))^(3/2), x, 12, atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d))/(sqrt(2)*b*d^(3/2)) - atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d))/(sqrt(2)*b*d^(3/2)) - log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x)))/(2*sqrt(2)*b*d^(3/2)) + log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x)))/(2*sqrt(2)*b*d^(3/2)) - 2/(b*d*sqrt(d*tan(a + b*x)))]
    @test_int [cos(a + b*x)^2/(d*tan(a + b*x))^(3/2), x, 13, (5*atan(1 - (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b*d^(3/2)) - (5*atan(1 + (sqrt(2)*sqrt(d*tan(a + b*x)))/sqrt(d)))/(4*sqrt(2)*b*d^(3/2)) - (5*log(sqrt(d) + sqrt(d)*tan(a + b*x) - sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b*d^(3/2)) + (5*log(sqrt(d) + sqrt(d)*tan(a + b*x) + sqrt(2)*sqrt(d*tan(a + b*x))))/(8*sqrt(2)*b*d^(3/2)) - 5/(2*b*d*sqrt(d*tan(a + b*x))) + cos(a + b*x)^2/(2*b*d*sqrt(d*tan(a + b*x)))]

    @test_int [sec(a + b*x)^5/(d*tan(a + b*x))^(3/2), x, 6, -((2*sec(a + b*x)^3)/(b*d*sqrt(d*tan(a + b*x)))) - (24*cos(a + b*x)*EllipticE(a - pi/4 + b*x, 2)*sqrt(d*tan(a + b*x)))/(5*b*d^2*sqrt(sin(2*a + 2*b*x))) + (24*cos(a + b*x)*(d*tan(a + b*x))^(3/2))/(5*b*d^3) + (12*sec(a + b*x)*(d*tan(a + b*x))^(3/2))/(5*b*d^3)]
    @test_int [sec(a + b*x)^3/(d*tan(a + b*x))^(3/2), x, 5, -((2*sec(a + b*x))/(b*d*sqrt(d*tan(a + b*x)))) - (4*cos(a + b*x)*EllipticE(a - pi/4 + b*x, 2)*sqrt(d*tan(a + b*x)))/(b*d^2*sqrt(sin(2*a + 2*b*x))) + (4*cos(a + b*x)*(d*tan(a + b*x))^(3/2))/(b*d^3)]
    @test_int [sec(a + b*x)^1/(d*tan(a + b*x))^(3/2), x, 4, -((2*cos(a + b*x))/(b*d*sqrt(d*tan(a + b*x)))) - (2*cos(a + b*x)*EllipticE(a - pi/4 + b*x, 2)*sqrt(d*tan(a + b*x)))/(b*d^2*sqrt(sin(2*a + 2*b*x)))]
    @test_int [cos(a + b*x)^1/(d*tan(a + b*x))^(3/2), x, 4, -((2*cos(a + b*x))/(b*d*sqrt(d*tan(a + b*x)))) - (3*cos(a + b*x)*EllipticE(a - pi/4 + b*x, 2)*sqrt(d*tan(a + b*x)))/(b*d^2*sqrt(sin(2*a + 2*b*x)))]
    @test_int [cos(a + b*x)^3/(d*tan(a + b*x))^(3/2), x, 5, -((2*cos(a + b*x)^3)/(b*d*sqrt(d*tan(a + b*x)))) - (7*cos(a + b*x)*EllipticE(a - pi/4 + b*x, 2)*sqrt(d*tan(a + b*x)))/(2*b*d^2*sqrt(sin(2*a + 2*b*x))) - (7*cos(a + b*x)^3*(d*tan(a + b*x))^(3/2))/(3*b*d^3)]
    @test_int [cos(a + b*x)^5/(d*tan(a + b*x))^(3/2), x, 6, -((2*cos(a + b*x)^5)/(b*d*sqrt(d*tan(a + b*x)))) - (77*cos(a + b*x)*EllipticE(a - pi/4 + b*x, 2)*sqrt(d*tan(a + b*x)))/(20*b*d^2*sqrt(sin(2*a + 2*b*x))) - (77*cos(a + b*x)^3*(d*tan(a + b*x))^(3/2))/(30*b*d^3) - (11*cos(a + b*x)^5*(d*tan(a + b*x))^(3/2))/(5*b*d^3)]


    @test_int [sec(a + b*x)^1/(d*tan(a + b*x))^(5/2), x, 4, -((2*sec(a + b*x))/(3*b*d*(d*tan(a + b*x))^(3/2))) - (EllipticF(a - pi/4 + b*x, 2)*sec(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(3*b*d^2*sqrt(d*tan(a + b*x)))]


    @test_int [sec(a + b*x)^3/(d*tan(a + b*x))^(7/2), x, 5, -((2*sec(a + b*x))/(5*b*d*(d*tan(a + b*x))^(5/2))) - (4*cos(a + b*x))/(5*b*d^3*sqrt(d*tan(a + b*x))) - (4*cos(a + b*x)*EllipticE(a - pi/4 + b*x, 2)*sqrt(d*tan(a + b*x)))/(5*b*d^4*sqrt(sin(2*a + 2*b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^(m/3)*(b*tan(e+f*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sec(e + f*x)^(4/3)*tan(e + f*x)^2, x, 2, (3*Hypergeometric2F1(-(7/6), -(1/2), -(1/6), cos(e + f*x)^2)*sec(e + f*x)^(7/3)*sin(e + f*x))/(7*f*sqrt(sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^(2/3)*tan(e + f*x)^2, x, 2, (3*Hypergeometric2F1(-(5/6), -(1/2), 1/6, cos(e + f*x)^2)*sec(e + f*x)^(5/3)*sin(e + f*x))/(5*f*sqrt(sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^(1/3)*tan(e + f*x)^2, x, 2, (3*Hypergeometric2F1(-(2/3), -(1/2), 1/3, cos(e + f*x)^2)*sec(e + f*x)^(4/3)*sin(e + f*x))/(4*f*sqrt(sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/sec(e + f*x)^(1/3), x, 2, (3*Hypergeometric2F1(-(1/2), -(1/3), 2/3, cos(e + f*x)^2)*sec(e + f*x)^(2/3)*sin(e + f*x))/(2*f*sqrt(sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/sec(e + f*x)^(2/3), x, 2, (3*Hypergeometric2F1(-(1/2), -(1/6), 5/6, cos(e + f*x)^2)*sec(e + f*x)^(1/3)*sin(e + f*x))/(f*sqrt(sin(e + f*x)^2))]


    @test_int [sec(e + f*x)^(4/3)*tan(e + f*x)^4, x, 2, (3*Hypergeometric2F1(-(13/6), -(3/2), -(7/6), cos(e + f*x)^2)*sec(e + f*x)^(13/3)*sin(e + f*x))/(13*f*sqrt(sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^(2/3)*tan(e + f*x)^4, x, 2, (3*Hypergeometric2F1(-(11/6), -(3/2), -(5/6), cos(e + f*x)^2)*sec(e + f*x)^(11/3)*sin(e + f*x))/(11*f*sqrt(sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^(1/3)*tan(e + f*x)^4, x, 2, (3*Hypergeometric2F1(-(5/3), -(3/2), -(2/3), cos(e + f*x)^2)*sec(e + f*x)^(10/3)*sin(e + f*x))/(10*f*sqrt(sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^4/sec(e + f*x)^(1/3), x, 2, (3*Hypergeometric2F1(-(3/2), -(4/3), -(1/3), cos(e + f*x)^2)*sec(e + f*x)^(8/3)*sin(e + f*x))/(8*f*sqrt(sin(e + f*x)^2))]
    @test_int [tan(e + f*x)^4/sec(e + f*x)^(2/3), x, 2, (3*Hypergeometric2F1(-(3/2), -(7/6), -(1/6), cos(e + f*x)^2)*sec(e + f*x)^(7/3)*sin(e + f*x))/(7*f*sqrt(sin(e + f*x)^2))]


    @test_int [(d*sec(e + f*x))^(4/3)*tan(e + f*x)^2, x, 1, ((cos(e + f*x)^2)^(13/6)*Hypergeometric2F1(3/2, 13/6, 5/2, sin(e + f*x)^2)*(d*sec(e + f*x))^(4/3)*tan(e + f*x)^3)/(3*f)]
    @test_int [(d*sec(e + f*x))^(2/3)*tan(e + f*x)^2, x, 1, ((cos(e + f*x)^2)^(11/6)*Hypergeometric2F1(3/2, 11/6, 5/2, sin(e + f*x)^2)*(d*sec(e + f*x))^(2/3)*tan(e + f*x)^3)/(3*f)]
    @test_int [(d*sec(e + f*x))^(1/3)*tan(e + f*x)^2, x, 1, ((cos(e + f*x)^2)^(5/3)*Hypergeometric2F1(3/2, 5/3, 5/2, sin(e + f*x)^2)*(d*sec(e + f*x))^(1/3)*tan(e + f*x)^3)/(3*f)]
    @test_int [tan(e + f*x)^2/(d*sec(e + f*x))^(1/3), x, 1, ((cos(e + f*x)^2)^(4/3)*Hypergeometric2F1(4/3, 3/2, 5/2, sin(e + f*x)^2)*tan(e + f*x)^3)/(3*f*(d*sec(e + f*x))^(1/3))]
    @test_int [tan(e + f*x)^2/(d*sec(e + f*x))^(2/3), x, 1, ((cos(e + f*x)^2)^(7/6)*Hypergeometric2F1(7/6, 3/2, 5/2, sin(e + f*x)^2)*tan(e + f*x)^3)/(3*f*(d*sec(e + f*x))^(2/3))]


    @test_int [(d*sec(e + f*x))^(4/3)*tan(e + f*x)^4, x, 1, ((cos(e + f*x)^2)^(19/6)*Hypergeometric2F1(5/2, 19/6, 7/2, sin(e + f*x)^2)*(d*sec(e + f*x))^(4/3)*tan(e + f*x)^5)/(5*f)]
    @test_int [(d*sec(e + f*x))^(2/3)*tan(e + f*x)^4, x, 1, ((cos(e + f*x)^2)^(17/6)*Hypergeometric2F1(5/2, 17/6, 7/2, sin(e + f*x)^2)*(d*sec(e + f*x))^(2/3)*tan(e + f*x)^5)/(5*f)]
    @test_int [(d*sec(e + f*x))^(1/3)*tan(e + f*x)^4, x, 1, ((cos(e + f*x)^2)^(8/3)*Hypergeometric2F1(5/2, 8/3, 7/2, sin(e + f*x)^2)*(d*sec(e + f*x))^(1/3)*tan(e + f*x)^5)/(5*f)]
    @test_int [tan(e + f*x)^4/(d*sec(e + f*x))^(1/3), x, 1, ((cos(e + f*x)^2)^(7/3)*Hypergeometric2F1(7/3, 5/2, 7/2, sin(e + f*x)^2)*tan(e + f*x)^5)/(5*f*(d*sec(e + f*x))^(1/3))]
    @test_int [tan(e + f*x)^4/(d*sec(e + f*x))^(2/3), x, 1, ((cos(e + f*x)^2)^(13/6)*Hypergeometric2F1(13/6, 5/2, 7/2, sin(e + f*x)^2)*tan(e + f*x)^5)/(5*f*(d*sec(e + f*x))^(2/3))]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^(m/2)*(b*tan(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(d*sec(e + f*x))^(5/2)*sqrt(b*tan(e + f*x)), x, 7, -((sqrt(b)*d^3*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(4*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))) + (sqrt(b)*d^3*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(4*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x))) + (d^2*sqrt(d*sec(e + f*x))*(b*tan(e + f*x))^(3/2))/(2*b*f)]
    @test_int [(d*sec(e + f*x))^(3/2)*sqrt(b*tan(e + f*x)), x, 4, -((d^2*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))) + (d^2*(b*tan(e + f*x))^(3/2))/(b*f*sqrt(d*sec(e + f*x)))]
    @test_int [(d*sec(e + f*x))^(1/2)*sqrt(b*tan(e + f*x)), x, 6, -((sqrt(b)*d*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))) + (sqrt(b)*d*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))]
    @test_int [sqrt(b*tan(e + f*x))/(d*sec(e + f*x))^(1/2), x, 3, (2*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [sqrt(b*tan(e + f*x))/(d*sec(e + f*x))^(3/2), x, 1, (2*(b*tan(e + f*x))^(3/2))/(3*b*f*(d*sec(e + f*x))^(3/2))]
    @test_int [sqrt(b*tan(e + f*x))/(d*sec(e + f*x))^(5/2), x, 4, (4*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(5*d^2*f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x))) + (2*(b*tan(e + f*x))^(3/2))/(5*b*f*(d*sec(e + f*x))^(5/2))]
    @test_int [sqrt(b*tan(e + f*x))/(d*sec(e + f*x))^(7/2), x, 2, (2*(b*tan(e + f*x))^(3/2))/(7*b*f*(d*sec(e + f*x))^(7/2)) + (8*(b*tan(e + f*x))^(3/2))/(21*b*d^2*f*(d*sec(e + f*x))^(3/2))]
    @test_int [sqrt(b*tan(e + f*x))/(d*sec(e + f*x))^(9/2), x, 5, (8*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(15*d^4*f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x))) + (2*(b*tan(e + f*x))^(3/2))/(9*b*f*(d*sec(e + f*x))^(9/2)) + (4*(b*tan(e + f*x))^(3/2))/(15*b*d^2*f*(d*sec(e + f*x))^(5/2))]


    @test_int [(d*sec(e + f*x))^(5/2)*(b*tan(e + f*x))^(3/2), x, 5, -((b^2*d^2*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(6*f*sqrt(b*tan(e + f*x)))) - (b*d^2*sqrt(d*sec(e + f*x))*sqrt(b*tan(e + f*x)))/(6*f) + (b*(d*sec(e + f*x))^(5/2)*sqrt(b*tan(e + f*x)))/(3*f)]
    @test_int [(d*sec(e + f*x))^(3/2)*(b*tan(e + f*x))^(3/2), x, 7, -((b^(3/2)*d*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))/(4*f*sqrt(b*tan(e + f*x)))) - (b^(3/2)*d*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))/(4*f*sqrt(b*tan(e + f*x))) + (b*(d*sec(e + f*x))^(3/2)*sqrt(b*tan(e + f*x)))/(2*f)]
    @test_int [(d*sec(e + f*x))^(1/2)*(b*tan(e + f*x))^(3/2), x, 4, -((b^2*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(f*sqrt(b*tan(e + f*x)))) + (b*sqrt(d*sec(e + f*x))*sqrt(b*tan(e + f*x)))/f]
    @test_int [(b*tan(e + f*x))^(3/2)/(d*sec(e + f*x))^(1/2), x, 7, -((2*d*csc(e + f*x)*(b*tan(e + f*x))^(3/2))/(f*(d*sec(e + f*x))^(3/2))) + (b^(3/2)*d*atan(sqrt(b*sin(e + f*x))/sqrt(b))*(b*tan(e + f*x))^(3/2))/(f*(d*sec(e + f*x))^(3/2)*(b*sin(e + f*x))^(3/2)) + (b^(3/2)*d*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*(b*tan(e + f*x))^(3/2))/(f*(d*sec(e + f*x))^(3/2)*(b*sin(e + f*x))^(3/2))]
    @test_int [(b*tan(e + f*x))^(3/2)/(d*sec(e + f*x))^(3/2), x, 4, (2*b^2*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(3*d^2*f*sqrt(b*tan(e + f*x))) - (2*b*sqrt(b*tan(e + f*x)))/(3*f*(d*sec(e + f*x))^(3/2))]
    @test_int [(b*tan(e + f*x))^(3/2)/(d*sec(e + f*x))^(5/2), x, 1, (2*(b*tan(e + f*x))^(5/2))/(5*b*f*(d*sec(e + f*x))^(5/2))]
    @test_int [(b*tan(e + f*x))^(3/2)/(d*sec(e + f*x))^(7/2), x, 5, (4*b^2*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(21*d^4*f*sqrt(b*tan(e + f*x))) - (2*b*sqrt(b*tan(e + f*x)))/(7*f*(d*sec(e + f*x))^(7/2)) + (2*b*sqrt(b*tan(e + f*x)))/(21*d^2*f*(d*sec(e + f*x))^(3/2))]
    @test_int [(b*tan(e + f*x))^(3/2)/(d*sec(e + f*x))^(9/2), x, 3, -((2*b*sqrt(b*tan(e + f*x)))/(9*f*(d*sec(e + f*x))^(9/2))) + (2*b*sqrt(b*tan(e + f*x)))/(45*d^2*f*(d*sec(e + f*x))^(5/2)) + (8*b*sqrt(b*tan(e + f*x)))/(45*d^4*f*sqrt(d*sec(e + f*x)))]


    @test_int [(d*sec(e + f*x))^(5/2)*(b*tan(e + f*x))^(5/2), x, 8, (3*b^(5/2)*d^3*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(32*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x))) - (3*b^(5/2)*d^3*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(32*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x))) - (3*b*d^2*sqrt(d*sec(e + f*x))*(b*tan(e + f*x))^(3/2))/(16*f) + (b*(d*sec(e + f*x))^(5/2)*(b*tan(e + f*x))^(3/2))/(4*f)]
    @test_int [(d*sec(e + f*x))^(3/2)*(b*tan(e + f*x))^(5/2), x, 5, (b^2*d^2*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(2*f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x))) - (b*d^2*(b*tan(e + f*x))^(3/2))/(2*f*sqrt(d*sec(e + f*x))) + (b*(d*sec(e + f*x))^(3/2)*(b*tan(e + f*x))^(3/2))/(3*f)]
    @test_int [(d*sec(e + f*x))^(1/2)*(b*tan(e + f*x))^(5/2), x, 7, (3*b^(5/2)*d*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(4*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x))) - (3*b^(5/2)*d*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(4*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x))) + (b*sqrt(d*sec(e + f*x))*(b*tan(e + f*x))^(3/2))/(2*f)]
    @test_int [(b*tan(e + f*x))^(5/2)/(d*sec(e + f*x))^(1/2), x, 4, -((3*b^2*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))) + (b*(b*tan(e + f*x))^(3/2))/(f*sqrt(d*sec(e + f*x)))]
    @test_int [(b*tan(e + f*x))^(5/2)/(d*sec(e + f*x))^(3/2), x, 7, -((b^(5/2)*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(d*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))) + (b^(5/2)*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(d*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x))) - (2*b*(b*tan(e + f*x))^(3/2))/(3*f*(d*sec(e + f*x))^(3/2))]
    @test_int [(b*tan(e + f*x))^(5/2)/(d*sec(e + f*x))^(5/2), x, 4, (6*b^2*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(5*d^2*f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x))) - (2*b*(b*tan(e + f*x))^(3/2))/(5*f*(d*sec(e + f*x))^(5/2))]
    @test_int [(b*tan(e + f*x))^(5/2)/(d*sec(e + f*x))^(7/2), x, 1, (2*(b*tan(e + f*x))^(7/2))/(7*b*f*(d*sec(e + f*x))^(7/2))]
    @test_int [(b*tan(e + f*x))^(5/2)/(d*sec(e + f*x))^(9/2), x, 5, (4*b^2*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(15*d^4*f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x))) - (2*b*(b*tan(e + f*x))^(3/2))/(9*f*(d*sec(e + f*x))^(9/2)) + (2*b*(b*tan(e + f*x))^(3/2))/(15*d^2*f*(d*sec(e + f*x))^(5/2))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(d*sec(e + f*x))^(7/2)/sqrt(b*tan(e + f*x)), x, 7, (3*d^3*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))/(4*sqrt(b)*f*sqrt(b*tan(e + f*x))) + (3*d^3*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))/(4*sqrt(b)*f*sqrt(b*tan(e + f*x))) + (d^2*(d*sec(e + f*x))^(3/2)*sqrt(b*tan(e + f*x)))/(2*b*f)]
    @test_int [(d*sec(e + f*x))^(5/2)/sqrt(b*tan(e + f*x)), x, 4, (d^2*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(f*sqrt(b*tan(e + f*x))) + (d^2*sqrt(d*sec(e + f*x))*sqrt(b*tan(e + f*x)))/(b*f)]
    @test_int [(d*sec(e + f*x))^(3/2)/sqrt(b*tan(e + f*x)), x, 6, (d*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))/(sqrt(b)*f*sqrt(b*tan(e + f*x))) + (d*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))/(sqrt(b)*f*sqrt(b*tan(e + f*x)))]
    @test_int [(d*sec(e + f*x))^(1/2)/sqrt(b*tan(e + f*x)), x, 3, (2*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(f*sqrt(b*tan(e + f*x)))]
    @test_int [1/((d*sec(e + f*x))^(1/2)*sqrt(b*tan(e + f*x))), x, 1, (2*sqrt(b*tan(e + f*x)))/(b*f*sqrt(d*sec(e + f*x)))]
    @test_int [1/((d*sec(e + f*x))^(3/2)*sqrt(b*tan(e + f*x))), x, 4, (4*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(3*d^2*f*sqrt(b*tan(e + f*x))) + (2*sqrt(b*tan(e + f*x)))/(3*b*f*(d*sec(e + f*x))^(3/2))]
    @test_int [1/((d*sec(e + f*x))^(5/2)*sqrt(b*tan(e + f*x))), x, 2, (2*sqrt(b*tan(e + f*x)))/(5*b*f*(d*sec(e + f*x))^(5/2)) + (8*sqrt(b*tan(e + f*x)))/(5*b*d^2*f*sqrt(d*sec(e + f*x)))]


    @test_int [(d*sec(e + f*x))^(5/2)/(b*tan(e + f*x))^(3/2), x, 7, -((2*d^2*sqrt(d*sec(e + f*x)))/(b*f*sqrt(b*tan(e + f*x)))) - (d^3*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(b^(3/2)*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x))) + (d^3*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(b*tan(e + f*x)))/(b^(3/2)*f*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))]
    @test_int [(d*sec(e + f*x))^(3/2)/(b*tan(e + f*x))^(3/2), x, 4, -((2*d^2)/(b*f*sqrt(d*sec(e + f*x))*sqrt(b*tan(e + f*x)))) - (2*d^2*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(b^2*f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [(d*sec(e + f*x))^(1/2)/(b*tan(e + f*x))^(3/2), x, 1, -((2*sqrt(d*sec(e + f*x)))/(b*f*sqrt(b*tan(e + f*x))))]
    @test_int [1/((d*sec(e + f*x))^(1/2)*(b*tan(e + f*x))^(3/2)), x, 4, -(2/(b*f*sqrt(d*sec(e + f*x))*sqrt(b*tan(e + f*x)))) - (4*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(b^2*f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))]
    @test_int [1/((d*sec(e + f*x))^(3/2)*(b*tan(e + f*x))^(3/2)), x, 2, 2/(3*b*f*(d*sec(e + f*x))^(3/2)*sqrt(b*tan(e + f*x))) - (8*sqrt(d*sec(e + f*x)))/(3*b*d^2*f*sqrt(b*tan(e + f*x))), -(2/(b*f*(d*sec(e + f*x))^(3/2)*sqrt(b*tan(e + f*x)))) - (8*(b*tan(e + f*x))^(3/2))/(3*b^3*f*(d*sec(e + f*x))^(3/2))]
    @test_int [1/((d*sec(e + f*x))^(5/2)*(b*tan(e + f*x))^(3/2)), x, 5, -(2/(b*f*(d*sec(e + f*x))^(5/2)*sqrt(b*tan(e + f*x)))) - (24*EllipticE((1/2)*(e - pi/2 + f*x), 2)*sqrt(b*tan(e + f*x)))/(5*b^2*d^2*f*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x))) - (12*(b*tan(e + f*x))^(3/2))/(5*b^3*f*(d*sec(e + f*x))^(5/2))]


    @test_int [(d*sec(e + f*x))^(7/2)/(b*tan(e + f*x))^(5/2), x, 7, -((2*d^2*(d*sec(e + f*x))^(3/2))/(3*b*f*(b*tan(e + f*x))^(3/2))) + (d^3*atan(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))/(b^(5/2)*f*sqrt(b*tan(e + f*x))) + (d^3*atanh(sqrt(b*sin(e + f*x))/sqrt(b))*sqrt(d*sec(e + f*x))*sqrt(b*sin(e + f*x)))/(b^(5/2)*f*sqrt(b*tan(e + f*x)))]
    @test_int [(d*sec(e + f*x))^(5/2)/(b*tan(e + f*x))^(5/2), x, 4, -((2*d^2*sqrt(d*sec(e + f*x)))/(3*b*f*(b*tan(e + f*x))^(3/2))) + (2*d^2*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(3*b^2*f*sqrt(b*tan(e + f*x)))]
    @test_int [(d*sec(e + f*x))^(3/2)/(b*tan(e + f*x))^(5/2), x, 1, -((2*(d*sec(e + f*x))^(3/2))/(3*b*f*(b*tan(e + f*x))^(3/2)))]
    @test_int [(d*sec(e + f*x))^(1/2)/(b*tan(e + f*x))^(5/2), x, 4, -((2*sqrt(d*sec(e + f*x)))/(3*b*f*(b*tan(e + f*x))^(3/2))) - (4*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(3*b^2*f*sqrt(b*tan(e + f*x)))]
    @test_int [1/((d*sec(e + f*x))^(1/2)*(b*tan(e + f*x))^(5/2)), x, 2, -(2/(3*b*f*sqrt(d*sec(e + f*x))*(b*tan(e + f*x))^(3/2))) - (8*sqrt(b*tan(e + f*x)))/(3*b^3*f*sqrt(d*sec(e + f*x)))]
    @test_int [1/((d*sec(e + f*x))^(3/2)*(b*tan(e + f*x))^(5/2)), x, 5, -(2/(3*b*f*(d*sec(e + f*x))^(3/2)*(b*tan(e + f*x))^(3/2))) - (8*EllipticF((1/2)*(e - pi/2 + f*x), 2)*sqrt(d*sec(e + f*x))*sqrt(sin(e + f*x)))/(3*b^2*d^2*f*sqrt(b*tan(e + f*x))) - (4*sqrt(b*tan(e + f*x)))/(3*b^3*f*(d*sec(e + f*x))^(3/2))]
    @test_int [1/((d*sec(e + f*x))^(5/2)*(b*tan(e + f*x))^(5/2)), x, 3, -(2/(3*b*f*(d*sec(e + f*x))^(5/2)*(b*tan(e + f*x))^(3/2))) - (16*sqrt(b*tan(e + f*x)))/(15*b^3*f*(d*sec(e + f*x))^(5/2)) - (64*sqrt(b*tan(e + f*x)))/(15*b^3*d^2*f*sqrt(d*sec(e + f*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^(m/3)*(b*tan(e+f*x))^(n/2)=#


    @test_int [sqrt(d*tan(e + f*x))*(b*sec(e + f*x))^(4/3), x, 1, (2*(cos(e + f*x)^2)^(17/12)*Hypergeometric2F1(3/4, 17/12, 7/4, sin(e + f*x)^2)*(b*sec(e + f*x))^(4/3)*(d*tan(e + f*x))^(3/2))/(3*d*f)]
    @test_int [sqrt(d*tan(e + f*x))*(b*sec(e + f*x))^(1/3), x, 1, (2*(cos(e + f*x)^2)^(11/12)*Hypergeometric2F1(3/4, 11/12, 7/4, sin(e + f*x)^2)*(b*sec(e + f*x))^(1/3)*(d*tan(e + f*x))^(3/2))/(3*d*f)]
    @test_int [sqrt(d*tan(e + f*x))/(b*sec(e + f*x))^(1/3), x, 1, (2*(cos(e + f*x)^2)^(7/12)*Hypergeometric2F1(7/12, 3/4, 7/4, sin(e + f*x)^2)*(d*tan(e + f*x))^(3/2))/(3*d*f*(b*sec(e + f*x))^(1/3))]
    @test_int [sqrt(d*tan(e + f*x))/(b*sec(e + f*x))^(4/3), x, 1, (2*(cos(e + f*x)^2)^(1/12)*Hypergeometric2F1(1/12, 3/4, 7/4, sin(e + f*x)^2)*(d*tan(e + f*x))^(3/2))/(3*d*f*(b*sec(e + f*x))^(4/3))]


    @test_int [(d*tan(e + f*x))^(3/2)*(b*sec(e + f*x))^(4/3), x, 1, (2*(cos(e + f*x)^2)^(23/12)*Hypergeometric2F1(5/4, 23/12, 9/4, sin(e + f*x)^2)*(b*sec(e + f*x))^(4/3)*(d*tan(e + f*x))^(5/2))/(5*d*f)]
    @test_int [(d*tan(e + f*x))^(3/2)*(b*sec(e + f*x))^(1/3), x, 1, (2*(cos(e + f*x)^2)^(17/12)*Hypergeometric2F1(5/4, 17/12, 9/4, sin(e + f*x)^2)*(b*sec(e + f*x))^(1/3)*(d*tan(e + f*x))^(5/2))/(5*d*f)]
    @test_int [(d*tan(e + f*x))^(3/2)/(b*sec(e + f*x))^(1/3), x, 1, (2*(cos(e + f*x)^2)^(13/12)*Hypergeometric2F1(13/12, 5/4, 9/4, sin(e + f*x)^2)*(d*tan(e + f*x))^(5/2))/(5*d*f*(b*sec(e + f*x))^(1/3))]
    @test_int [(d*tan(e + f*x))^(3/2)/(b*sec(e + f*x))^(4/3), x, 1, (2*(cos(e + f*x)^2)^(7/12)*Hypergeometric2F1(7/12, 5/4, 9/4, sin(e + f*x)^2)*(d*tan(e + f*x))^(5/2))/(5*d*f*(b*sec(e + f*x))^(4/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^(m/2)*(b*tan(e+f*x))^(n/3)=#


    @test_int [sqrt(b*sec(e + f*x))*(d*tan(e + f*x))^(4/3), x, 1, (3*(cos(e + f*x)^2)^(17/12)*Hypergeometric2F1(7/6, 17/12, 13/6, sin(e + f*x)^2)*sqrt(b*sec(e + f*x))*(d*tan(e + f*x))^(7/3))/(7*d*f)]
    @test_int [sqrt(b*sec(e + f*x))*(d*tan(e + f*x))^(1/3), x, 1, (3*(cos(e + f*x)^2)^(11/12)*Hypergeometric2F1(2/3, 11/12, 5/3, sin(e + f*x)^2)*sqrt(b*sec(e + f*x))*(d*tan(e + f*x))^(4/3))/(4*d*f)]
    @test_int [sqrt(b*sec(e + f*x))/(d*tan(e + f*x))^(1/3), x, 1, (3*(cos(e + f*x)^2)^(7/12)*Hypergeometric2F1(1/3, 7/12, 4/3, sin(e + f*x)^2)*sqrt(b*sec(e + f*x))*(d*tan(e + f*x))^(2/3))/(2*d*f)]
    @test_int [sqrt(b*sec(e + f*x))/(d*tan(e + f*x))^(4/3), x, 1, -((3*(cos(e + f*x)^2)^(1/12)*Hypergeometric2F1(-(1/6), 1/12, 5/6, sin(e + f*x)^2)*sqrt(b*sec(e + f*x)))/(d*f*(d*tan(e + f*x))^(1/3)))]


    @test_int [(b*sec(e + f*x))^(3/2)*(d*tan(e + f*x))^(4/3), x, 1, (3*(cos(e + f*x)^2)^(23/12)*Hypergeometric2F1(7/6, 23/12, 13/6, sin(e + f*x)^2)*(b*sec(e + f*x))^(3/2)*(d*tan(e + f*x))^(7/3))/(7*d*f)]
    @test_int [(b*sec(e + f*x))^(3/2)*(d*tan(e + f*x))^(1/3), x, 1, (3*(cos(e + f*x)^2)^(17/12)*Hypergeometric2F1(2/3, 17/12, 5/3, sin(e + f*x)^2)*(b*sec(e + f*x))^(3/2)*(d*tan(e + f*x))^(4/3))/(4*d*f)]
    @test_int [(b*sec(e + f*x))^(3/2)/(d*tan(e + f*x))^(1/3), x, 1, (3*(cos(e + f*x)^2)^(13/12)*Hypergeometric2F1(1/3, 13/12, 4/3, sin(e + f*x)^2)*(b*sec(e + f*x))^(3/2)*(d*tan(e + f*x))^(2/3))/(2*d*f)]
    @test_int [(b*sec(e + f*x))^(3/2)/(d*tan(e + f*x))^(4/3), x, 1, -((3*(cos(e + f*x)^2)^(7/12)*Hypergeometric2F1(-(1/6), 7/12, 5/6, sin(e + f*x)^2)*(b*sec(e + f*x))^(3/2))/(d*f*(d*tan(e + f*x))^(1/3)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^m*(b*tan(e+f*x))^n*with*m*symbolic=#


    @test_int [(b*sec(e + f*x))^m*tan(e + f*x)^5, x, 3, (b*sec(e + f*x))^m/(f*m) - (2*(b*sec(e + f*x))^(2 + m))/(b^2*f*(2 + m)) + (b*sec(e + f*x))^(4 + m)/(b^4*f*(4 + m))]
    @test_int [(b*sec(e + f*x))^m*tan(e + f*x)^3, x, 3, -((b*sec(e + f*x))^m/(f*m)) + (b*sec(e + f*x))^(2 + m)/(b^2*f*(2 + m))]
    @test_int [(b*sec(e + f*x))^m*tan(e + f*x)^1, x, 2, (b*sec(e + f*x))^m/(f*m)]
    @test_int [(b*sec(e + f*x))^m*cot(e + f*x)^1, x, 2, -((Hypergeometric2F1(1, m/2, (2 + m)/2, sec(e + f*x)^2)*(b*sec(e + f*x))^m)/(f*m))]
    @test_int [(b*sec(e + f*x))^m*cot(e + f*x)^3, x, 2, (Hypergeometric2F1(2, m/2, (2 + m)/2, sec(e + f*x)^2)*(b*sec(e + f*x))^m)/(f*m)]
    @test_int [(b*sec(e + f*x))^m*cot(e + f*x)^5, x, 2, -((Hypergeometric2F1(3, m/2, (2 + m)/2, sec(e + f*x)^2)*(b*sec(e + f*x))^m)/(f*m))]

    @test_int [(b*sec(e + f*x))^m*tan(e + f*x)^4, x, 1, ((cos(e + f*x)^2)^((5 + m)/2)*Hypergeometric2F1(5/2, (5 + m)/2, 7/2, sin(e + f*x)^2)*(b*sec(e + f*x))^m*tan(e + f*x)^5)/(5*f)]
    @test_int [(b*sec(e + f*x))^m*tan(e + f*x)^2, x, 1, ((cos(e + f*x)^2)^((3 + m)/2)*Hypergeometric2F1(3/2, (3 + m)/2, 5/2, sin(e + f*x)^2)*(b*sec(e + f*x))^m*tan(e + f*x)^3)/(3*f)]
    @test_int [(b*sec(e + f*x))^m*cot(e + f*x)^2, x, 1, -(((cos(e + f*x)^2)^((1/2)*(-1 + m))*cot(e + f*x)*Hypergeometric2F1(-(1/2), (1/2)*(-1 + m), 1/2, sin(e + f*x)^2)*(b*sec(e + f*x))^m)/f)]
    @test_int [(b*sec(e + f*x))^m*cot(e + f*x)^4, x, 1, -(((cos(e + f*x)^2)^((1/2)*(-3 + m))*cot(e + f*x)^3*Hypergeometric2F1(-(3/2), (1/2)*(-3 + m), -(1/2), sin(e + f*x)^2)*(b*sec(e + f*x))^m)/(3*f))]
    @test_int [(b*sec(e + f*x))^m*cot(e + f*x)^6, x, 1, -(((cos(e + f*x)^2)^((1/2)*(-5 + m))*cot(e + f*x)^5*Hypergeometric2F1(-(5/2), (1/2)*(-5 + m), -(3/2), sin(e + f*x)^2)*(b*sec(e + f*x))^m)/(5*f))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(e+f*x))^m*(b*tan(e+f*x))^n*with*n*symbolic=#


    @test_int [(a*sec(e + f*x))^m*(b*tan(e + f*x))^n, x, 1, ((cos(e + f*x)^2)^((1/2)*(1 + m + n))*Hypergeometric2F1((1 + n)/2, (1/2)*(1 + m + n), (3 + n)/2, sin(e + f*x)^2)*(a*sec(e + f*x))^m*(b*tan(e + f*x))^(1 + n))/(b*f*(1 + n))]


    @test_int [sec(a + b*x)^6*(d*tan(a + b*x))^n, x, 3, (d*tan(a + b*x))^(1 + n)/(b*d*(1 + n)) + (2*(d*tan(a + b*x))^(3 + n))/(b*d^3*(3 + n)) + (d*tan(a + b*x))^(5 + n)/(b*d^5*(5 + n))]
    @test_int [sec(a + b*x)^4*(d*tan(a + b*x))^n, x, 3, (d*tan(a + b*x))^(n + 1)/(b*d*(1 + n)) + (d*tan(a + b*x))^(n + 3)/(b*d^3*(3 + n))]
    @test_int [sec(a + b*x)^2*(d*tan(a + b*x))^n, x, 2, (d*tan(a + b*x))^(1 + n)/(b*d*(1 + n))]
    @test_int [sec(a + b*x)^0*(d*tan(a + b*x))^n, x, 2, (Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, -tan(a + b*x)^2)*(d*tan(a + b*x))^(1 + n))/(b*d*(1 + n))]
    @test_int [cos(a + b*x)^2*(d*tan(a + b*x))^n, x, 2, (Hypergeometric2F1(2, (1 + n)/2, (3 + n)/2, -tan(a + b*x)^2)*(d*tan(a + b*x))^(1 + n))/(b*d*(1 + n))]
    @test_int [cos(a + b*x)^4*(d*tan(a + b*x))^n, x, 2, (Hypergeometric2F1(3, (1 + n)/2, (3 + n)/2, -tan(a + b*x)^2)*(d*tan(a + b*x))^(1 + n))/(b*d*(1 + n))]

    @test_int [sec(a + b*x)^5*(d*tan(a + b*x))^n, x, 1, ((cos(a + b*x)^2)^((6 + n)/2)*Hypergeometric2F1((1 + n)/2, (6 + n)/2, (3 + n)/2, sin(a + b*x)^2)*sec(a + b*x)^5*(d*tan(a + b*x))^(1 + n))/(b*d*(1 + n))]
    @test_int [sec(a + b*x)^3*(d*tan(a + b*x))^n, x, 1, ((cos(a + b*x)^2)^((4 + n)/2)*Hypergeometric2F1((1 + n)/2, (4 + n)/2, (3 + n)/2, sin(a + b*x)^2)*sec(a + b*x)^3*(d*tan(a + b*x))^(1 + n))/(b*d*(1 + n))]
    @test_int [sec(a + b*x)^1*(d*tan(a + b*x))^n, x, 1, ((cos(a + b*x)^2)^((2 + n)/2)*Hypergeometric2F1((1 + n)/2, (2 + n)/2, (3 + n)/2, sin(a + b*x)^2)*sec(a + b*x)*(d*tan(a + b*x))^(1 + n))/(b*d*(1 + n))]
    @test_int [cos(a + b*x)^1*(d*tan(a + b*x))^n, x, 1, (cos(a + b*x)*(cos(a + b*x)^2)^(n/2)*Hypergeometric2F1(n/2, (1 + n)/2, (3 + n)/2, sin(a + b*x)^2)*(d*tan(a + b*x))^(1 + n))/(b*d*(1 + n))]
    @test_int [cos(a + b*x)^3*(d*tan(a + b*x))^n, x, 1, (cos(a + b*x)^3*(cos(a + b*x)^2)^((1/2)*(-2 + n))*Hypergeometric2F1((1/2)*(-2 + n), (1 + n)/2, (3 + n)/2, sin(a + b*x)^2)*(d*tan(a + b*x))^(1 + n))/(b*d*(1 + n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^m*(b*tan(e+f*x))^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^(m/2)*(b*tan(e+f*x))^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^m*(b*tan(e+f*x))^n*with*m*symbolic=#


    @test_int [(b*csc(e + f*x))^m*tan(e + f*x)^3, x, 2, -(((b*csc(e + f*x))^m*Hypergeometric2F1(2, m/2, (2 + m)/2, csc(e + f*x)^2))/(f*m))]
    @test_int [(b*csc(e + f*x))^m*tan(e + f*x)^1, x, 2, ((b*csc(e + f*x))^m*Hypergeometric2F1(1, m/2, (2 + m)/2, csc(e + f*x)^2))/(f*m)]
    @test_int [(b*csc(e + f*x))^m*cot(e + f*x)^1, x, 2, -((b*csc(e + f*x))^m/(f*m))]
    @test_int [(b*csc(e + f*x))^m*cot(e + f*x)^3, x, 3, (b*csc(e + f*x))^m/(f*m) - (b*csc(e + f*x))^(2 + m)/(b^2*f*(2 + m))]
    @test_int [(b*csc(e + f*x))^m*cot(e + f*x)^5, x, 3, -((b*csc(e + f*x))^m/(f*m)) + (2*(b*csc(e + f*x))^(2 + m))/(b^2*f*(2 + m)) - (b*csc(e + f*x))^(4 + m)/(b^4*f*(4 + m))]

    @test_int [(b*csc(e + f*x))^m*tan(e + f*x)^4, x, 1, ((b*csc(e + f*x))^m*Hypergeometric2F1(-(3/2), (1/2)*(-3 + m), -(1/2), cos(e + f*x)^2)*(sin(e + f*x)^2)^((1/2)*(-3 + m))*tan(e + f*x)^3)/(3*f)]
    @test_int [(b*csc(e + f*x))^m*tan(e + f*x)^2, x, 1, ((b*csc(e + f*x))^m*Hypergeometric2F1(-(1/2), (1/2)*(-1 + m), 1/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^((1/2)*(-1 + m))*tan(e + f*x))/f]
    @test_int [(b*csc(e + f*x))^m*cot(e + f*x)^2, x, 1, -((cot(e + f*x)^3*(b*csc(e + f*x))^m*Hypergeometric2F1(3/2, (3 + m)/2, 5/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^((3 + m)/2))/(3*f))]
    @test_int [(b*csc(e + f*x))^m*cot(e + f*x)^4, x, 1, -((cot(e + f*x)^5*(b*csc(e + f*x))^m*Hypergeometric2F1(5/2, (5 + m)/2, 7/2, cos(e + f*x)^2)*(sin(e + f*x)^2)^((5 + m)/2))/(5*f))]


    @test_int [(b*csc(e + f*x))^m*(d*tan(e + f*x))^(3/2), x, 3, (2*(cos(e + f*x)^2)^(5/4)*(b*csc(e + f*x))^m*Hypergeometric2F1(5/4, (1/4)*(5 - 2*m), (1/4)*(9 - 2*m), sin(e + f*x)^2)*(d*tan(e + f*x))^(5/2))/(d*f*(5 - 2*m))]
    @test_int [(b*csc(e + f*x))^m*(d*tan(e + f*x))^(1/2), x, 3, (2*(cos(e + f*x)^2)^(3/4)*(b*csc(e + f*x))^m*Hypergeometric2F1(3/4, (1/4)*(3 - 2*m), (1/4)*(7 - 2*m), sin(e + f*x)^2)*(d*tan(e + f*x))^(3/2))/(d*f*(3 - 2*m))]
    @test_int [(b*csc(e + f*x))^m/(d*tan(e + f*x))^(1/2), x, 3, (2*(cos(e + f*x)^2)^(1/4)*(b*csc(e + f*x))^m*Hypergeometric2F1(1/4, (1/4)*(1 - 2*m), (1/4)*(5 - 2*m), sin(e + f*x)^2)*sqrt(d*tan(e + f*x)))/(d*f*(1 - 2*m))]
    @test_int [(b*csc(e + f*x))^m/(d*tan(e + f*x))^(3/2), x, 3, -((2*(b*csc(e + f*x))^m*Hypergeometric2F1(-(1/4), (1/4)*(-1 - 2*m), (1/4)*(3 - 2*m), sin(e + f*x)^2))/(d*f*(1 + 2*m)*(cos(e + f*x)^2)^(1/4)*sqrt(d*tan(e + f*x))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*csc(e+f*x))^m*(b*tan(e+f*x))^n*with*n*symbolic=#


    @test_int [(a*csc(e + f*x))^m*(b*tan(e + f*x))^n, x, 3, ((cos(e + f*x)^2)^((1 + n)/2)*(a*csc(e + f*x))^m*Hypergeometric2F1((1 + n)/2, (1/2)*(1 - m + n), (1/2)*(3 - m + n), sin(e + f*x)^2)*(b*tan(e + f*x))^(1 + n))/(b*f*(1 - m + n))]
    end
