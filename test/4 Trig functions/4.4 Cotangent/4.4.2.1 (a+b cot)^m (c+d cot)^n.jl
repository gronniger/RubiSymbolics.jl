@testset "4.4.2.1 (a+b cot)^m (c+d cot)^n" begin
    @variables A, B, a, b, c, d, e, f, m, n, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^n*(a+b*cot(e+f*x))^m=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^n*(a+im*a*cot(e+f*x))^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+im*a*cot(e+f*x))^m*(d*cot(e+f*x))^n*with*m*symbolic=#


    @test_int [(a + a*im*cot(c + d*x))^n, x, 2, (im*(a + im*a*cot(c + d*x))^n*Hypergeometric2F1(1, n, 1 + n, (1/2)*(1 + im*cot(c + d*x))))/(2*d*n)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^n*(a+a*cot(e+f*x))^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^(n/2)*(a+a*cot(e+f*x))^m=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [(a + a*cot(c + d*x))*(e*cot(c + d*x))^(5/2), x, 5, -((sqrt(2)*a*e^(5/2)*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/d) + (2*a*e^2*sqrt(e*cot(c + d*x)))/d - (2*a*e*(e*cot(c + d*x))^(3/2))/(3*d) - (2*a*(e*cot(c + d*x))^(5/2))/(5*d)]
    @test_int [(a + a*cot(c + d*x))*(e*cot(c + d*x))^(3/2), x, 4, -((sqrt(2)*a*e^(3/2)*atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/d) - (2*a*e*sqrt(e*cot(c + d*x)))/d - (2*a*(e*cot(c + d*x))^(3/2))/(3*d)]
    @test_int [(a + a*cot(c + d*x))*(e*cot(c + d*x))^(1/2), x, 3, (sqrt(2)*a*sqrt(e)*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/d - (2*a*sqrt(e*cot(c + d*x)))/d]
    @test_int [(a + a*cot(c + d*x))/(e*cot(c + d*x))^(1/2), x, 2, (sqrt(2)*a*atan((sqrt(e)*(1 - cot(c + d*x)))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(d*sqrt(e))]
    @test_int [(a + a*cot(c + d*x))/(e*cot(c + d*x))^(3/2), x, 3, -((sqrt(2)*a*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(d*e^(3/2))) + (2*a)/(d*e*sqrt(e*cot(c + d*x)))]
    @test_int [(a + a*cot(c + d*x))/(e*cot(c + d*x))^(5/2), x, 4, -((sqrt(2)*a*atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(d*e^(5/2))) + (2*a)/(3*d*e*(e*cot(c + d*x))^(3/2)) + (2*a)/(d*e^2*sqrt(e*cot(c + d*x)))]


    @test_int [(a + a*cot(c + d*x))^2*(e*cot(c + d*x))^(5/2), x, 16, (sqrt(2)*a^2*e^(5/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/d - (sqrt(2)*a^2*e^(5/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/d + (4*a^2*e^2*sqrt(e*cot(c + d*x)))/d - (4*a^2*(e*cot(c + d*x))^(5/2))/(5*d) - (2*a^2*(e*cot(c + d*x))^(7/2))/(7*d*e) + (a^2*e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d) - (a^2*e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d)]
    @test_int [(a + a*cot(c + d*x))^2*(e*cot(c + d*x))^(3/2), x, 15, -((sqrt(2)*a^2*e^(3/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/d) + (sqrt(2)*a^2*e^(3/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/d - (4*a^2*(e*cot(c + d*x))^(3/2))/(3*d) - (2*a^2*(e*cot(c + d*x))^(5/2))/(5*d*e) + (a^2*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d) - (a^2*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d)]
    @test_int [(a + a*cot(c + d*x))^2*(e*cot(c + d*x))^(1/2), x, 15, -((sqrt(2)*a^2*sqrt(e)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/d) + (sqrt(2)*a^2*sqrt(e)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/d - (4*a^2*sqrt(e*cot(c + d*x)))/d - (2*a^2*(e*cot(c + d*x))^(3/2))/(3*d*e) - (a^2*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d) + (a^2*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d)]
    @test_int [(a + a*cot(c + d*x))^2/(e*cot(c + d*x))^(1/2), x, 14, (sqrt(2)*a^2*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(d*sqrt(e)) - (sqrt(2)*a^2*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(d*sqrt(e)) - (2*a^2*sqrt(e*cot(c + d*x)))/(d*e) - (a^2*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d*sqrt(e)) + (a^2*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d*sqrt(e))]
    @test_int [(a + a*cot(c + d*x))^2/(e*cot(c + d*x))^(3/2), x, 13, (sqrt(2)*a^2*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(d*e^(3/2)) - (sqrt(2)*a^2*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(d*e^(3/2)) + (2*a^2)/(d*e*sqrt(e*cot(c + d*x))) + (a^2*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d*e^(3/2)) - (a^2*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d*e^(3/2))]
    @test_int [(a + a*cot(c + d*x))^2/(e*cot(c + d*x))^(5/2), x, 14, -((sqrt(2)*a^2*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(d*e^(5/2))) + (sqrt(2)*a^2*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(d*e^(5/2)) + (2*a^2)/(3*d*e*(e*cot(c + d*x))^(3/2)) + (4*a^2)/(d*e^2*sqrt(e*cot(c + d*x))) + (a^2*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d*e^(5/2)) - (a^2*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d*e^(5/2))]
    @test_int [(a + a*cot(c + d*x))^2/(e*cot(c + d*x))^(7/2), x, 14, -((sqrt(2)*a^2*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(d*e^(7/2))) + (sqrt(2)*a^2*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(d*e^(7/2)) + (2*a^2)/(5*d*e*(e*cot(c + d*x))^(5/2)) + (4*a^2)/(3*d*e^2*(e*cot(c + d*x))^(3/2)) - (a^2*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d*e^(7/2)) + (a^2*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*d*e^(7/2))]


    @test_int [(a + a*cot(c + d*x))^3*(e*cot(c + d*x))^(5/2), x, 7, (2*sqrt(2)*a^3*e^(5/2)*atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/d + (4*a^3*e^2*sqrt(e*cot(c + d*x)))/d + (4*a^3*e*(e*cot(c + d*x))^(3/2))/(3*d) - (4*a^3*(e*cot(c + d*x))^(5/2))/(5*d) - (40*a^3*(e*cot(c + d*x))^(7/2))/(63*d*e) - (2*(e*cot(c + d*x))^(7/2)*(a^3 + a^3*cot(c + d*x)))/(9*d*e)]
    @test_int [(a + a*cot(c + d*x))^3*(e*cot(c + d*x))^(3/2), x, 6, -((2*sqrt(2)*a^3*e^(3/2)*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/d) + (4*a^3*e*sqrt(e*cot(c + d*x)))/d - (4*a^3*(e*cot(c + d*x))^(3/2))/(3*d) - (32*a^3*(e*cot(c + d*x))^(5/2))/(35*d*e) - (2*(e*cot(c + d*x))^(5/2)*(a^3 + a^3*cot(c + d*x)))/(7*d*e)]
    @test_int [(a + a*cot(c + d*x))^3*(e*cot(c + d*x))^(1/2), x, 5, -((2*sqrt(2)*a^3*sqrt(e)*atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/d) - (4*a^3*sqrt(e*cot(c + d*x)))/d - (8*a^3*(e*cot(c + d*x))^(3/2))/(5*d*e) - (2*(e*cot(c + d*x))^(3/2)*(a^3 + a^3*cot(c + d*x)))/(5*d*e)]
    @test_int [(a + a*cot(c + d*x))^3/(e*cot(c + d*x))^(1/2), x, 4, (2*sqrt(2)*a^3*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(d*sqrt(e)) - (16*a^3*sqrt(e*cot(c + d*x)))/(3*d*e) - (2*sqrt(e*cot(c + d*x))*(a^3 + a^3*cot(c + d*x)))/(3*d*e)]
    @test_int [(a + a*cot(c + d*x))^3/(e*cot(c + d*x))^(3/2), x, 4, (2*sqrt(2)*a^3*atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(d*e^(3/2)) - (4*a^3*sqrt(e*cot(c + d*x)))/(d*e^2) + (2*(a^3 + a^3*cot(c + d*x)))/(d*e*sqrt(e*cot(c + d*x)))]
    @test_int [(a + a*cot(c + d*x))^3/(e*cot(c + d*x))^(5/2), x, 4, -((2*sqrt(2)*a^3*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(d*e^(5/2))) + (16*a^3)/(3*d*e^2*sqrt(e*cot(c + d*x))) + (2*(a^3 + a^3*cot(c + d*x)))/(3*d*e*(e*cot(c + d*x))^(3/2))]
    @test_int [(a + a*cot(c + d*x))^3/(e*cot(c + d*x))^(7/2), x, 5, -((2*sqrt(2)*a^3*atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(d*e^(7/2))) + (8*a^3)/(5*d*e^2*(e*cot(c + d*x))^(3/2)) + (4*a^3)/(d*e^3*sqrt(e*cot(c + d*x))) + (2*(a^3 + a^3*cot(c + d*x)))/(5*d*e*(e*cot(c + d*x))^(5/2))]
    @test_int [(a + a*cot(c + d*x))^3/(e*cot(c + d*x))^(9/2), x, 6, (2*sqrt(2)*a^3*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(d*e^(9/2)) + (32*a^3)/(35*d*e^2*(e*cot(c + d*x))^(5/2)) + (4*a^3)/(3*d*e^3*(e*cot(c + d*x))^(3/2)) - (4*a^3)/(d*e^4*sqrt(e*cot(c + d*x))) + (2*(a^3 + a^3*cot(c + d*x)))/(7*d*e*(e*cot(c + d*x))^(7/2))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [1/(a + a*cot(c + d*x))*(e*cot(c + d*x))^(5/2), x, 7, (e^(5/2)*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(a*d) - (e^(5/2)*atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(sqrt(2)*a*d) - (2*e^2*sqrt(e*cot(c + d*x)))/(a*d)]
    @test_int [1/(a + a*cot(c + d*x))*(e*cot(c + d*x))^(3/2), x, 6, -((e^(3/2)*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(a*d)) + (e^(3/2)*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(sqrt(2)*a*d)]
    @test_int [1/(a + a*cot(c + d*x))*(e*cot(c + d*x))^(1/2), x, 6, (sqrt(e)*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(a*d) + (sqrt(e)*atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(sqrt(2)*a*d)]
    @test_int [1/(a + a*cot(c + d*x))/(e*cot(c + d*x))^(1/2), x, 6, -(atan(sqrt(e*cot(c + d*x))/sqrt(e))/(a*d*sqrt(e))) - atanh((sqrt(e)*(1 + cot(c + d*x)))/(sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*a*d*sqrt(e))]
    @test_int [1/(a + a*cot(c + d*x))/(e*cot(c + d*x))^(3/2), x, 7, atan(sqrt(e*cot(c + d*x))/sqrt(e))/(a*d*e^(3/2)) - atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*a*d*e^(3/2)) + 2/(a*d*e*sqrt(e*cot(c + d*x)))]
    @test_int [1/(a + a*cot(c + d*x))/(e*cot(c + d*x))^(5/2), x, 10, -(atan(sqrt(e*cot(c + d*x))/sqrt(e))/(a*d*e^(5/2))) + atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x))))/(sqrt(2)*a*d*e^(5/2)) + 2/(3*a*d*e*(e*cot(c + d*x))^(3/2)) - 2/(a*d*e^2*sqrt(e*cot(c + d*x)))]


    @test_int [1/(a + a*cot(c + d*x))^2*(e*cot(c + d*x))^(5/2), x, 17, -((3*e^(5/2)*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(2*a^2*d)) - (e^(5/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(2*sqrt(2)*a^2*d) + (e^(5/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(2*sqrt(2)*a^2*d) + (e^2*sqrt(e*cot(c + d*x)))/(2*d*(a^2 + a^2*cot(c + d*x))) - (e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(4*sqrt(2)*a^2*d) + (e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(4*sqrt(2)*a^2*d)]
    @test_int [1/(a + a*cot(c + d*x))^2*(e*cot(c + d*x))^(3/2), x, 18, (e^(3/2)*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(2*a^2*d) + (e^(3/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(2*sqrt(2)*a^2*d) - (e^(3/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(2*sqrt(2)*a^2*d) - (e*sqrt(e*cot(c + d*x)))/(2*d*(a^2 + a^2*cot(c + d*x))) - (e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(4*sqrt(2)*a^2*d) + (e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(4*sqrt(2)*a^2*d)]
    @test_int [1/(a + a*cot(c + d*x))^2*(e*cot(c + d*x))^(1/2), x, 17, (sqrt(e)*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(2*a^2*d) + (sqrt(e)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(2*sqrt(2)*a^2*d) - (sqrt(e)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(2*sqrt(2)*a^2*d) + sqrt(e*cot(c + d*x))/(2*d*(a^2 + a^2*cot(c + d*x))) + (sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(4*sqrt(2)*a^2*d) - (sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(4*sqrt(2)*a^2*d)]
    @test_int [1/(a + a*cot(c + d*x))^2/(e*cot(c + d*x))^(1/2), x, 18, -((3*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(2*a^2*d*sqrt(e))) - atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e))/(2*sqrt(2)*a^2*d*sqrt(e)) + atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e))/(2*sqrt(2)*a^2*d*sqrt(e)) - sqrt(e*cot(c + d*x))/(2*d*e*(a^2 + a^2*cot(c + d*x))) + log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x)))/(4*sqrt(2)*a^2*d*sqrt(e)) - log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x)))/(4*sqrt(2)*a^2*d*sqrt(e))]
    @test_int [1/(a + a*cot(c + d*x))^2/(e*cot(c + d*x))^(3/2), x, 18, (5*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(2*a^2*d*e^(3/2)) - atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e))/(2*sqrt(2)*a^2*d*e^(3/2)) + atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e))/(2*sqrt(2)*a^2*d*e^(3/2)) + 5/(2*a^2*d*e*sqrt(e*cot(c + d*x))) - 1/(2*d*e*sqrt(e*cot(c + d*x))*(a^2 + a^2*cot(c + d*x))) - log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x)))/(4*sqrt(2)*a^2*d*e^(3/2)) + log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x)))/(4*sqrt(2)*a^2*d*e^(3/2))]
    @test_int [1/(a + a*cot(c + d*x))^2/(e*cot(c + d*x))^(5/2), x, 20, -((7*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(2*a^2*d*e^(5/2))) + atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e))/(2*sqrt(2)*a^2*d*e^(5/2)) - atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e))/(2*sqrt(2)*a^2*d*e^(5/2)) + 7/(6*a^2*d*e*(e*cot(c + d*x))^(3/2)) - 9/(2*a^2*d*e^2*sqrt(e*cot(c + d*x))) - 1/(2*d*e*(e*cot(c + d*x))^(3/2)*(a^2 + a^2*cot(c + d*x))) - log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x)))/(4*sqrt(2)*a^2*d*e^(5/2)) + log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x)))/(4*sqrt(2)*a^2*d*e^(5/2))]


    @test_int [1/(a + a*cot(c + d*x))^3*(e*cot(c + d*x))^(5/2), x, 8, -((e^(5/2)*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(8*a^3*d)) + (e^(5/2)*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(2*sqrt(2)*a^3*d) - (5*e^2*sqrt(e*cot(c + d*x)))/(8*a^3*d*(1 + cot(c + d*x))) + (e^2*sqrt(e*cot(c + d*x)))/(4*a*d*(a + a*cot(c + d*x))^2)]
    @test_int [1/(a + a*cot(c + d*x))^3*(e*cot(c + d*x))^(3/2), x, 8, (5*e^(3/2)*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(8*a^3*d) + (e^(3/2)*atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(2*sqrt(2)*a^3*d) - (e*sqrt(e*cot(c + d*x)))/(4*a*d*(a + a*cot(c + d*x))^2) + (e*sqrt(e*cot(c + d*x)))/(8*d*(a^3 + a^3*cot(c + d*x)))]
    @test_int [1/(a + a*cot(c + d*x))^3*(e*cot(c + d*x))^(1/2), x, 8, -((sqrt(e)*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(8*a^3*d)) - (sqrt(e)*atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x)))))/(2*sqrt(2)*a^3*d) + sqrt(e*cot(c + d*x))/(4*a*d*(a + a*cot(c + d*x))^2) + (3*sqrt(e*cot(c + d*x)))/(8*d*(a^3 + a^3*cot(c + d*x)))]
    @test_int [1/(a + a*cot(c + d*x))^3/(e*cot(c + d*x))^(1/2), x, 8, -((11*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(8*a^3*d*sqrt(e))) - atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*a^3*d*sqrt(e)) - (7*sqrt(e*cot(c + d*x)))/(8*a^3*d*e*(1 + cot(c + d*x))) - sqrt(e*cot(c + d*x))/(4*a*d*e*(a + a*cot(c + d*x))^2)]
    @test_int [1/(a + a*cot(c + d*x))^3/(e*cot(c + d*x))^(3/2), x, 9, (31*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(8*a^3*d*e^(3/2)) + atanh((sqrt(e) + sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*a^3*d*e^(3/2)) + 27/(8*a^3*d*e*sqrt(e*cot(c + d*x))) - 9/(8*a^3*d*e*sqrt(e*cot(c + d*x))*(1 + cot(c + d*x))) - 1/(4*a*d*e*sqrt(e*cot(c + d*x))*(a + a*cot(c + d*x))^2)]
    @test_int [1/(a + a*cot(c + d*x))^3/(e*cot(c + d*x))^(5/2), x, 10, -((59*atan(sqrt(e*cot(c + d*x))/sqrt(e)))/(8*a^3*d*e^(5/2))) + atan((sqrt(e) - sqrt(e)*cot(c + d*x))/(sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*a^3*d*e^(5/2)) + 55/(24*a^3*d*e*(e*cot(c + d*x))^(3/2)) - 63/(8*a^3*d*e^2*sqrt(e*cot(c + d*x))) - 11/(8*a^3*d*e*(e*cot(c + d*x))^(3/2)*(1 + cot(c + d*x))) - 1/(4*a*d*e*(e*cot(c + d*x))^(3/2)*(a + a*cot(c + d*x))^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^n*(a+a*cot(e+f*x))^(m/2)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [cot(x)^2*sqrt(1 + cot(x)), x, 12, (-sqrt((1/2)*(1 + sqrt(2))))*atan((sqrt(2*(1 + sqrt(2))) - 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) + sqrt((1/2)*(1 + sqrt(2)))*atan((sqrt(2*(1 + sqrt(2))) + 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) - (2/3)*(1 + cot(x))^(3/2) + log(1 + sqrt(2) + cot(x) - sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(2*sqrt(2*(1 + sqrt(2)))) - log(1 + sqrt(2) + cot(x) + sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(2*sqrt(2*(1 + sqrt(2))))]
    @test_int [cot(x)^1*sqrt(1 + cot(x)), x, 6, sqrt((1/2)*(-1 + sqrt(2)))*atan((4 - 3*sqrt(2) + (2 - sqrt(2))*cot(x))/(2*sqrt(-7 + 5*sqrt(2))*sqrt(1 + cot(x)))) + sqrt((1/2)*(1 + sqrt(2)))*atanh((4 + 3*sqrt(2) + (2 + sqrt(2))*cot(x))/(2*sqrt(7 + 5*sqrt(2))*sqrt(1 + cot(x)))) - 2*sqrt(1 + cot(x))]


    @test_int [cot(x)^2*(1 + cot(x))^(3/2), x, 8, (-sqrt(-1 + sqrt(2)))*atan((3 - 2*sqrt(2) + (1 - sqrt(2))*cot(x))/(sqrt(2*(-7 + 5*sqrt(2)))*sqrt(1 + cot(x)))) - sqrt(1 + sqrt(2))*atanh((3 + 2*sqrt(2) + (1 + sqrt(2))*cot(x))/(sqrt(2*(7 + 5*sqrt(2)))*sqrt(1 + cot(x)))) + 2*sqrt(1 + cot(x)) - (2/5)*(1 + cot(x))^(5/2)]
    @test_int [cot(x)^1*(1 + cot(x))^(3/2), x, 14, (-sqrt(1 + sqrt(2)))*atan((sqrt(2*(1 + sqrt(2))) - 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) + sqrt(1 + sqrt(2))*atan((sqrt(2*(1 + sqrt(2))) + 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) - 2*sqrt(1 + cot(x)) - (2/3)*(1 + cot(x))^(3/2) - log(1 + sqrt(2) + cot(x) - sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(2*sqrt(1 + sqrt(2))) + log(1 + sqrt(2) + cot(x) + sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(2*sqrt(1 + sqrt(2)))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [cot(x)^2/sqrt(1 + cot(x)), x, 12, (-(1/2))*sqrt(1 + sqrt(2))*atan((sqrt(2*(1 + sqrt(2))) - 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) + (1/2)*sqrt(1 + sqrt(2))*atan((sqrt(2*(1 + sqrt(2))) + 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) - 2*sqrt(1 + cot(x)) - log(1 + sqrt(2) + cot(x) - sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(4*sqrt(1 + sqrt(2))) + log(1 + sqrt(2) + cot(x) + sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(4*sqrt(1 + sqrt(2)))]
    @test_int [cot(x)^1/sqrt(1 + cot(x)), x, 5, (1/2)*sqrt(-1 + sqrt(2))*atan((3 - 2*sqrt(2) + (1 - sqrt(2))*cot(x))/(sqrt(2*(-7 + 5*sqrt(2)))*sqrt(1 + cot(x)))) + (1/2)*sqrt(1 + sqrt(2))*atanh((3 + 2*sqrt(2) + (1 + sqrt(2))*cot(x))/(sqrt(2*(7 + 5*sqrt(2)))*sqrt(1 + cot(x))))]


    @test_int [cot(x)^2/(1 + cot(x))^(3/2), x, 6, (1/2)*sqrt((1/2)*(-1 + sqrt(2)))*atan((4 - 3*sqrt(2) + (2 - sqrt(2))*cot(x))/(2*sqrt(-7 + 5*sqrt(2))*sqrt(1 + cot(x)))) + (1/2)*sqrt((1/2)*(1 + sqrt(2)))*atanh((4 + 3*sqrt(2) + (2 + sqrt(2))*cot(x))/(2*sqrt(7 + 5*sqrt(2))*sqrt(1 + cot(x)))) + 1/sqrt(1 + cot(x))]
    @test_int [cot(x)^1/(1 + cot(x))^(3/2), x, 13, (1/2)*sqrt((1/2)*(1 + sqrt(2)))*atan((sqrt(2*(1 + sqrt(2))) - 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) - (1/2)*sqrt((1/2)*(1 + sqrt(2)))*atan((sqrt(2*(1 + sqrt(2))) + 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) - 1/sqrt(1 + cot(x)) - log(1 + sqrt(2) + cot(x) - sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(4*sqrt(2*(1 + sqrt(2)))) + log(1 + sqrt(2) + cot(x) + sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(4*sqrt(2*(1 + sqrt(2))))]


    @test_int [cot(x)^2/(1 + cot(x))^(5/2), x, 8, (1/4)*sqrt(-1 + sqrt(2))*atan((3 - 2*sqrt(2) + (1 - sqrt(2))*cot(x))/(sqrt(2*(-7 + 5*sqrt(2)))*sqrt(1 + cot(x)))) + (1/4)*sqrt(1 + sqrt(2))*atanh((3 + 2*sqrt(2) + (1 + sqrt(2))*cot(x))/(sqrt(2*(7 + 5*sqrt(2)))*sqrt(1 + cot(x)))) + 1/(3*(1 + cot(x))^(3/2)) - 1/sqrt(1 + cot(x))]
    @test_int [cot(x)^1/(1 + cot(x))^(5/2), x, 13, (1/4)*sqrt(1 + sqrt(2))*atan((sqrt(2*(1 + sqrt(2))) - 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) - (1/4)*sqrt(1 + sqrt(2))*atan((sqrt(2*(1 + sqrt(2))) + 2*sqrt(1 + cot(x)))/sqrt(2*(-1 + sqrt(2)))) - 1/(3*(1 + cot(x))^(3/2)) + log(1 + sqrt(2) + cot(x) - sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(8*sqrt(1 + sqrt(2))) - log(1 + sqrt(2) + cot(x) + sqrt(2*(1 + sqrt(2)))*sqrt(1 + cot(x)))/(8*sqrt(1 + sqrt(2)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^n*(a+b*cot(e+f*x))^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^(n/2)*(a+b*cot(e+f*x))^m=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [(a + b*cot(c + d*x))*(e*cot(c + d*x))^(3/2), x, 12, -(((a + b)*e^(3/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d)) + ((a + b)*e^(3/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d) - (2*a*e*sqrt(e*cot(c + d*x)))/d - (2*b*(e*cot(c + d*x))^(3/2))/(3*d) - ((a - b)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d) + ((a - b)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d)]
    @test_int [(a + b*cot(c + d*x))*(e*cot(c + d*x))^(1/2), x, 11, ((a - b)*sqrt(e)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d) - ((a - b)*sqrt(e)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d) - (2*b*sqrt(e*cot(c + d*x)))/d - ((a + b)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d) + ((a + b)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d)]
    @test_int [(a + b*cot(c + d*x))/(e*cot(c + d*x))^(1/2), x, 10, ((a + b)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*sqrt(e)) - ((a + b)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*sqrt(e)) + ((a - b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*sqrt(e)) - ((a - b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*sqrt(e))]
    @test_int [(a + b*cot(c + d*x))/(e*cot(c + d*x))^(3/2), x, 11, -(((a - b)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(3/2))) + ((a - b)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(3/2)) + (2*a)/(d*e*sqrt(e*cot(c + d*x))) + ((a + b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(3/2)) - ((a + b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(3/2))]
    @test_int [(a + b*cot(c + d*x))/(e*cot(c + d*x))^(5/2), x, 12, -(((a + b)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(5/2))) + ((a + b)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(5/2)) + (2*a)/(3*d*e*(e*cot(c + d*x))^(3/2)) + (2*b)/(d*e^2*sqrt(e*cot(c + d*x))) - ((a - b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(5/2)) + ((a - b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(5/2))]


    @test_int [(a + b*cot(c + d*x))^2*(e*cot(c + d*x))^(3/2), x, 13, -(((a^2 + 2*a*b - b^2)*e^(3/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d)) + ((a^2 + 2*a*b - b^2)*e^(3/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d) - (2*(a^2 - b^2)*e*sqrt(e*cot(c + d*x)))/d - (4*a*b*(e*cot(c + d*x))^(3/2))/(3*d) - (2*b^2*(e*cot(c + d*x))^(5/2))/(5*d*e) - ((a^2 - 2*a*b - b^2)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d) + ((a^2 - 2*a*b - b^2)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d)]
    @test_int [(a + b*cot(c + d*x))^2*(e*cot(c + d*x))^(1/2), x, 12, ((a^2 - 2*a*b - b^2)*sqrt(e)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d) - ((a^2 - 2*a*b - b^2)*sqrt(e)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d) - (4*a*b*sqrt(e*cot(c + d*x)))/d - (2*b^2*(e*cot(c + d*x))^(3/2))/(3*d*e) - ((a^2 + 2*a*b - b^2)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d) + ((a^2 + 2*a*b - b^2)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d)]
    @test_int [(a + b*cot(c + d*x))^2/(e*cot(c + d*x))^(1/2), x, 11, ((a^2 + 2*a*b - b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*sqrt(e)) - ((a^2 + 2*a*b - b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*sqrt(e)) - (2*b^2*sqrt(e*cot(c + d*x)))/(d*e) + ((a^2 - 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*sqrt(e)) - ((a^2 - 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*sqrt(e))]
    @test_int [(a + b*cot(c + d*x))^2/(e*cot(c + d*x))^(3/2), x, 11, -(((a^2 - 2*a*b - b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(3/2))) + ((a^2 - 2*a*b - b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(3/2)) + (2*a^2)/(d*e*sqrt(e*cot(c + d*x))) + ((a^2 + 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(3/2)) - ((a^2 + 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(3/2))]
    @test_int [(a + b*cot(c + d*x))^2/(e*cot(c + d*x))^(5/2), x, 12, -(((a^2 + 2*a*b - b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(5/2))) + ((a^2 + 2*a*b - b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(5/2)) + (2*a^2)/(3*d*e*(e*cot(c + d*x))^(3/2)) + (4*a*b)/(d*e^2*sqrt(e*cot(c + d*x))) - ((a^2 - 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(5/2)) + ((a^2 - 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(5/2))]
    @test_int [(a + b*cot(c + d*x))^2/(e*cot(c + d*x))^(7/2), x, 13, ((a^2 - 2*a*b - b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(7/2)) - ((a^2 - 2*a*b - b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(7/2)) + (2*a^2)/(5*d*e*(e*cot(c + d*x))^(5/2)) + (4*a*b)/(3*d*e^2*(e*cot(c + d*x))^(3/2)) - (2*(a^2 - b^2))/(d*e^3*sqrt(e*cot(c + d*x))) - ((a^2 + 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(7/2)) + ((a^2 + 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(7/2))]


    @test_int [(a + b*cot(c + d*x))^3*(e*cot(c + d*x))^(3/2), x, 14, -(((a - b)*(a^2 + 4*a*b + b^2)*e^(3/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d)) + ((a - b)*(a^2 + 4*a*b + b^2)*e^(3/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d) - (2*a*(a^2 - 3*b^2)*e*sqrt(e*cot(c + d*x)))/d - (2*b*(3*a^2 - b^2)*(e*cot(c + d*x))^(3/2))/(3*d) - (32*a*b^2*(e*cot(c + d*x))^(5/2))/(35*d*e) - (2*b^2*(e*cot(c + d*x))^(5/2)*(a + b*cot(c + d*x)))/(7*d*e) - ((a + b)*(a^2 - 4*a*b + b^2)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d) + ((a + b)*(a^2 - 4*a*b + b^2)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d)]
    @test_int [(a + b*cot(c + d*x))^3*(e*cot(c + d*x))^(1/2), x, 13, ((a + b)*(a^2 - 4*a*b + b^2)*sqrt(e)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d) - ((a + b)*(a^2 - 4*a*b + b^2)*sqrt(e)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d) - (2*b*(3*a^2 - b^2)*sqrt(e*cot(c + d*x)))/d - (8*a*b^2*(e*cot(c + d*x))^(3/2))/(5*d*e) - (2*b^2*(e*cot(c + d*x))^(3/2)*(a + b*cot(c + d*x)))/(5*d*e) - ((a - b)*(a^2 + 4*a*b + b^2)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d) + ((a - b)*(a^2 + 4*a*b + b^2)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d)]
    @test_int [(a + b*cot(c + d*x))^3/(e*cot(c + d*x))^(1/2), x, 12, ((a - b)*(a^2 + 4*a*b + b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*sqrt(e)) - ((a - b)*(a^2 + 4*a*b + b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*sqrt(e)) - (16*a*b^2*sqrt(e*cot(c + d*x)))/(3*d*e) - (2*b^2*sqrt(e*cot(c + d*x))*(a + b*cot(c + d*x)))/(3*d*e) + ((a + b)*(a^2 - 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*sqrt(e)) - ((a + b)*(a^2 - 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*sqrt(e))]
    @test_int [(a + b*cot(c + d*x))^3/(e*cot(c + d*x))^(3/2), x, 12, -(((a + b)*(a^2 - 4*a*b + b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(3/2))) + ((a + b)*(a^2 - 4*a*b + b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(3/2)) - (2*b*(a^2 + b^2)*sqrt(e*cot(c + d*x)))/(d*e^2) + (2*a^2*(a + b*cot(c + d*x)))/(d*e*sqrt(e*cot(c + d*x))) + ((a - b)*(a^2 + 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(3/2)) - ((a - b)*(a^2 + 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(3/2))]
    @test_int [(a + b*cot(c + d*x))^3/(e*cot(c + d*x))^(5/2), x, 12, -(((a - b)*(a^2 + 4*a*b + b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(5/2))) + ((a - b)*(a^2 + 4*a*b + b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(5/2)) + (16*a^2*b)/(3*d*e^2*sqrt(e*cot(c + d*x))) + (2*a^2*(a + b*cot(c + d*x)))/(3*d*e*(e*cot(c + d*x))^(3/2)) - ((a + b)*(a^2 - 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(5/2)) + ((a + b)*(a^2 - 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(5/2))]
    @test_int [(a + b*cot(c + d*x))^3/(e*cot(c + d*x))^(7/2), x, 13, ((a + b)*(a^2 - 4*a*b + b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(7/2)) - ((a + b)*(a^2 - 4*a*b + b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(7/2)) + (8*a^2*b)/(5*d*e^2*(e*cot(c + d*x))^(3/2)) - (2*a*(a^2 - 3*b^2))/(d*e^3*sqrt(e*cot(c + d*x))) + (2*a^2*(a + b*cot(c + d*x)))/(5*d*e*(e*cot(c + d*x))^(5/2)) - ((a - b)*(a^2 + 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(7/2)) + ((a - b)*(a^2 + 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(7/2))]
    @test_int [(a + b*cot(c + d*x))^3/(e*cot(c + d*x))^(9/2), x, 14, ((a - b)*(a^2 + 4*a*b + b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(9/2)) - ((a - b)*(a^2 + 4*a*b + b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*d*e^(9/2)) + (32*a^2*b)/(35*d*e^2*(e*cot(c + d*x))^(5/2)) - (2*a*(a^2 - 3*b^2))/(3*d*e^3*(e*cot(c + d*x))^(3/2)) - (2*b*(3*a^2 - b^2))/(d*e^4*sqrt(e*cot(c + d*x))) + (2*a^2*(a + b*cot(c + d*x)))/(7*d*e*(e*cot(c + d*x))^(7/2)) + ((a + b)*(a^2 - 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(9/2)) - ((a + b)*(a^2 - 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*d*e^(9/2))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [1/(a + b*cot(c + d*x))*(e*cot(c + d*x))^(5/2), x, 15, (2*a^(5/2)*e^(5/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(b^(3/2)*(a^2 + b^2)*d) - ((a + b)*e^(5/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d) + ((a + b)*e^(5/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d) - (2*e^2*sqrt(e*cot(c + d*x)))/(b*d) + ((a - b)*e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d) - ((a - b)*e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d)]
    @test_int [1/(a + b*cot(c + d*x))*(e*cot(c + d*x))^(3/2), x, 14, -((2*a^(3/2)*e^(3/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(sqrt(b)*(a^2 + b^2)*d)) - ((a - b)*e^(3/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d) + ((a - b)*e^(3/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d) - ((a + b)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d) + ((a + b)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d)]
    @test_int [1/(a + b*cot(c + d*x))*(e*cot(c + d*x))^(1/2), x, 14, (2*sqrt(a)*sqrt(b)*sqrt(e)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/((a^2 + b^2)*d) + ((a + b)*sqrt(e)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d) - ((a + b)*sqrt(e)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d) - ((a - b)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d) + ((a - b)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d)]
    @test_int [1/(a + b*cot(c + d*x))/(e*cot(c + d*x))^(1/2), x, 14, -((2*b^(3/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(sqrt(a)*(a^2 + b^2)*d*sqrt(e))) + ((a - b)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d*sqrt(e)) - ((a - b)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d*sqrt(e)) + ((a + b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d*sqrt(e)) - ((a + b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d*sqrt(e))]
    @test_int [1/(a + b*cot(c + d*x))/(e*cot(c + d*x))^(3/2), x, 15, (2*b^(5/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(a^(3/2)*(a^2 + b^2)*d*e^(3/2)) - ((a + b)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d*e^(3/2)) + ((a + b)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d*e^(3/2)) + 2/(a*d*e*sqrt(e*cot(c + d*x))) + ((a - b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d*e^(3/2)) - ((a - b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d*e^(3/2))]
    @test_int [1/(a + b*cot(c + d*x))/(e*cot(c + d*x))^(5/2), x, 16, -((2*b^(7/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(a^(5/2)*(a^2 + b^2)*d*e^(5/2))) - ((a - b)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d*e^(5/2)) + ((a - b)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)*d*e^(5/2)) + 2/(3*a*d*e*(e*cot(c + d*x))^(3/2)) - (2*b)/(a^2*d*e^2*sqrt(e*cot(c + d*x))) - ((a + b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d*e^(5/2)) + ((a + b)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)*d*e^(5/2))]


    @test_int [1/(a + b*cot(c + d*x))^2*(e*cot(c + d*x))^(7/2), x, 16, (a^(5/2)*(3*a^2 + 7*b^2)*e^(7/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(b^(5/2)*(a^2 + b^2)^2*d) + ((a^2 - 2*a*b - b^2)*e^(7/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d) - ((a^2 - 2*a*b - b^2)*e^(7/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d) - ((3*a^2 + 2*b^2)*e^3*sqrt(e*cot(c + d*x)))/(b^2*(a^2 + b^2)*d) + (a^2*e^2*(e*cot(c + d*x))^(3/2))/(b*(a^2 + b^2)*d*(a + b*cot(c + d*x))) + ((a^2 + 2*a*b - b^2)*e^(7/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d) - ((a^2 + 2*a*b - b^2)*e^(7/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d)]
    @test_int [1/(a + b*cot(c + d*x))^2*(e*cot(c + d*x))^(5/2), x, 15, -((a^(3/2)*(a^2 + 5*b^2)*e^(5/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(b^(3/2)*(a^2 + b^2)^2*d)) - ((a^2 + 2*a*b - b^2)*e^(5/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d) + ((a^2 + 2*a*b - b^2)*e^(5/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d) + (a^2*e^2*sqrt(e*cot(c + d*x)))/(b*(a^2 + b^2)*d*(a + b*cot(c + d*x))) + ((a^2 - 2*a*b - b^2)*e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d) - ((a^2 - 2*a*b - b^2)*e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d)]
    @test_int [1/(a + b*cot(c + d*x))^2*(e*cot(c + d*x))^(3/2), x, 15, -((sqrt(a)*(a^2 - 3*b^2)*e^(3/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(sqrt(b)*(a^2 + b^2)^2*d)) - ((a^2 - 2*a*b - b^2)*e^(3/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d) + ((a^2 - 2*a*b - b^2)*e^(3/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d) - (a*e*sqrt(e*cot(c + d*x)))/((a^2 + b^2)*d*(a + b*cot(c + d*x))) - ((a^2 + 2*a*b - b^2)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d) + ((a^2 + 2*a*b - b^2)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d)]
    @test_int [1/(a + b*cot(c + d*x))^2*(e*cot(c + d*x))^(1/2), x, 15, (sqrt(b)*(3*a^2 - b^2)*sqrt(e)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(sqrt(a)*(a^2 + b^2)^2*d) + ((a^2 + 2*a*b - b^2)*sqrt(e)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d) - ((a^2 + 2*a*b - b^2)*sqrt(e)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d) + (b*sqrt(e*cot(c + d*x)))/((a^2 + b^2)*d*(a + b*cot(c + d*x))) - ((a^2 - 2*a*b - b^2)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d) + ((a^2 - 2*a*b - b^2)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d)]
    @test_int [1/(a + b*cot(c + d*x))^2/(e*cot(c + d*x))^(1/2), x, 15, -((b^(3/2)*(5*a^2 + b^2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(a^(3/2)*(a^2 + b^2)^2*d*sqrt(e))) + ((a^2 - 2*a*b - b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d*sqrt(e)) - ((a^2 - 2*a*b - b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d*sqrt(e)) - (b^2*sqrt(e*cot(c + d*x)))/(a*(a^2 + b^2)*d*e*(a + b*cot(c + d*x))) + ((a^2 + 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d*sqrt(e)) - ((a^2 + 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d*sqrt(e))]
    @test_int [1/(a + b*cot(c + d*x))^2/(e*cot(c + d*x))^(3/2), x, 16, (b^(5/2)*(7*a^2 + 3*b^2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(a^(5/2)*(a^2 + b^2)^2*d*e^(3/2)) - ((a^2 + 2*a*b - b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d*e^(3/2)) + ((a^2 + 2*a*b - b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^2*d*e^(3/2)) + (2*a^2 + 3*b^2)/(a^2*(a^2 + b^2)*d*e*sqrt(e*cot(c + d*x))) - b^2/(a*(a^2 + b^2)*d*e*sqrt(e*cot(c + d*x))*(a + b*cot(c + d*x))) + ((a^2 - 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d*e^(3/2)) - ((a^2 - 2*a*b - b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^2*d*e^(3/2))]


    @test_int [1/(a + b*cot(c + d*x))^3*(e*cot(c + d*x))^(9/2), x, 17, (a^(5/2)*(15*a^4 + 46*a^2*b^2 + 63*b^4)*e^(9/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(4*b^(7/2)*(a^2 + b^2)^3*d) + ((a - b)*(a^2 + 4*a*b + b^2)*e^(9/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) - ((a - b)*(a^2 + 4*a*b + b^2)*e^(9/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) - ((15*a^4 + 31*a^2*b^2 + 8*b^4)*e^4*sqrt(e*cot(c + d*x)))/(4*b^3*(a^2 + b^2)^2*d) + (a^2*e^2*(e*cot(c + d*x))^(5/2))/(2*b*(a^2 + b^2)*d*(a + b*cot(c + d*x))^2) + (a^2*(5*a^2 + 13*b^2)*e^3*(e*cot(c + d*x))^(3/2))/(4*b^2*(a^2 + b^2)^2*d*(a + b*cot(c + d*x))) - ((a + b)*(a^2 - 4*a*b + b^2)*e^(9/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d) + ((a + b)*(a^2 - 4*a*b + b^2)*e^(9/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d)]
    @test_int [1/(a + b*cot(c + d*x))^3*(e*cot(c + d*x))^(7/2), x, 16, -((a^(3/2)*(3*a^4 + 6*a^2*b^2 + 35*b^4)*e^(7/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(4*b^(5/2)*(a^2 + b^2)^3*d)) + ((a + b)*(a^2 - 4*a*b + b^2)*e^(7/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) - ((a + b)*(a^2 - 4*a*b + b^2)*e^(7/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) + (a^2*e^2*(e*cot(c + d*x))^(3/2))/(2*b*(a^2 + b^2)*d*(a + b*cot(c + d*x))^2) + (a^2*(3*a^2 + 11*b^2)*e^3*sqrt(e*cot(c + d*x)))/(4*b^2*(a^2 + b^2)^2*d*(a + b*cot(c + d*x))) + ((a - b)*(a^2 + 4*a*b + b^2)*e^(7/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d) - ((a - b)*(a^2 + 4*a*b + b^2)*e^(7/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d)]
    @test_int [1/(a + b*cot(c + d*x))^3*(e*cot(c + d*x))^(5/2), x, 16, -((sqrt(a)*(a^4 + 18*a^2*b^2 - 15*b^4)*e^(5/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(4*b^(3/2)*(a^2 + b^2)^3*d)) - ((a - b)*(a^2 + 4*a*b + b^2)*e^(5/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) + ((a - b)*(a^2 + 4*a*b + b^2)*e^(5/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) + (a^2*e^2*sqrt(e*cot(c + d*x)))/(2*b*(a^2 + b^2)*d*(a + b*cot(c + d*x))^2) - (a*(a^2 + 9*b^2)*e^2*sqrt(e*cot(c + d*x)))/(4*b*(a^2 + b^2)^2*d*(a + b*cot(c + d*x))) + ((a + b)*(a^2 - 4*a*b + b^2)*e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d) - ((a + b)*(a^2 - 4*a*b + b^2)*e^(5/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d)]
    @test_int [1/(a + b*cot(c + d*x))^3*(e*cot(c + d*x))^(3/2), x, 16, -(((3*a^4 - 26*a^2*b^2 + 3*b^4)*e^(3/2)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(4*sqrt(a)*sqrt(b)*(a^2 + b^2)^3*d)) - ((a + b)*(a^2 - 4*a*b + b^2)*e^(3/2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) + ((a + b)*(a^2 - 4*a*b + b^2)*e^(3/2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) - (a*e*sqrt(e*cot(c + d*x)))/(2*(a^2 + b^2)*d*(a + b*cot(c + d*x))^2) - ((3*a^2 - 5*b^2)*e*sqrt(e*cot(c + d*x)))/(4*(a^2 + b^2)^2*d*(a + b*cot(c + d*x))) - ((a - b)*(a^2 + 4*a*b + b^2)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d) + ((a - b)*(a^2 + 4*a*b + b^2)*e^(3/2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d)]
    @test_int [1/(a + b*cot(c + d*x))^3*(e*cot(c + d*x))^(1/2), x, 16, (sqrt(b)*(15*a^4 - 18*a^2*b^2 - b^4)*sqrt(e)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(4*a^(3/2)*(a^2 + b^2)^3*d) + ((a - b)*(a^2 + 4*a*b + b^2)*sqrt(e)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) - ((a - b)*(a^2 + 4*a*b + b^2)*sqrt(e)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d) + (b*sqrt(e*cot(c + d*x)))/(2*(a^2 + b^2)*d*(a + b*cot(c + d*x))^2) + (b*(7*a^2 - b^2)*sqrt(e*cot(c + d*x)))/(4*a*(a^2 + b^2)^2*d*(a + b*cot(c + d*x))) - ((a + b)*(a^2 - 4*a*b + b^2)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d) + ((a + b)*(a^2 - 4*a*b + b^2)*sqrt(e)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d)]
    @test_int [1/(a + b*cot(c + d*x))^3/(e*cot(c + d*x))^(1/2), x, 16, -((b^(3/2)*(35*a^4 + 6*a^2*b^2 + 3*b^4)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(4*a^(5/2)*(a^2 + b^2)^3*d*sqrt(e))) + ((a + b)*(a^2 - 4*a*b + b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d*sqrt(e)) - ((a + b)*(a^2 - 4*a*b + b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d*sqrt(e)) - (b^2*sqrt(e*cot(c + d*x)))/(2*a*(a^2 + b^2)*d*e*(a + b*cot(c + d*x))^2) - (b^2*(11*a^2 + 3*b^2)*sqrt(e*cot(c + d*x)))/(4*a^2*(a^2 + b^2)^2*d*e*(a + b*cot(c + d*x))) + ((a - b)*(a^2 + 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d*sqrt(e)) - ((a - b)*(a^2 + 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d*sqrt(e))]
    @test_int [1/(a + b*cot(c + d*x))^3/(e*cot(c + d*x))^(3/2), x, 17, (b^(5/2)*(63*a^4 + 46*a^2*b^2 + 15*b^4)*atan((sqrt(b)*sqrt(e*cot(c + d*x)))/(sqrt(a)*sqrt(e))))/(4*a^(7/2)*(a^2 + b^2)^3*d*e^(3/2)) - ((a - b)*(a^2 + 4*a*b + b^2)*atan(1 - (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d*e^(3/2)) + ((a - b)*(a^2 + 4*a*b + b^2)*atan(1 + (sqrt(2)*sqrt(e*cot(c + d*x)))/sqrt(e)))/(sqrt(2)*(a^2 + b^2)^3*d*e^(3/2)) + (8*a^4 + 31*a^2*b^2 + 15*b^4)/(4*a^3*(a^2 + b^2)^2*d*e*sqrt(e*cot(c + d*x))) - b^2/(2*a*(a^2 + b^2)*d*e*sqrt(e*cot(c + d*x))*(a + b*cot(c + d*x))^2) - (b^2*(13*a^2 + 5*b^2))/(4*a^2*(a^2 + b^2)^2*d*e*sqrt(e*cot(c + d*x))*(a + b*cot(c + d*x))) + ((a + b)*(a^2 - 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) - sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d*e^(3/2)) - ((a + b)*(a^2 - 4*a*b + b^2)*log(sqrt(e) + sqrt(e)*cot(c + d*x) + sqrt(2)*sqrt(e*cot(c + d*x))))/(2*sqrt(2)*(a^2 + b^2)^3*d*e^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cot(e+f*x))^n*(a+b*cot(e+f*x))^m*with*m*symbolic=#


    @test_int [(a + b*cot(c + d*x))^n, x, 5, -((b*(a + b*cot(c + d*x))^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, (a + b*cot(c + d*x))/(a - sqrt(-b^2))))/(2*sqrt(-b^2)*(a - sqrt(-b^2))*d*(1 + n))) + (b*(a + b*cot(c + d*x))^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, (a + b*cot(c + d*x))/(a + sqrt(-b^2))))/(2*sqrt(-b^2)*(a + sqrt(-b^2))*d*(1 + n))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^n*(a+b*cot(e+f*x))^m=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^n*(a+im*a*cot(e+f*x))^m=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^n*(a+a*cot(e+f*x))^m=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^n*(a+b*cot(e+f*x))^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*tan(e+f*x))^n*(a+b*cot(e+f*x))^m*with*m*symbolic=#


    @test_int [(a + b*cot(e + f*x))^m*(d*tan(e + f*x))^n, x, 8, -((AppellF1(1 - n, -m, 1, 2 - n, -((b*cot(e + f*x))/a), (-im)*cot(e + f*x))*cot(e + f*x)*(a + b*cot(e + f*x))^m*(d*tan(e + f*x))^n)/((1 + (b*cot(e + f*x))/a)^m*(2*f*(1 - n)))) - (AppellF1(1 - n, -m, 1, 2 - n, -((b*cot(e + f*x))/a), im*cot(e + f*x))*cot(e + f*x)*(a + b*cot(e + f*x))^m*(d*tan(e + f*x))^n)/((1 + (b*cot(e + f*x))/a)^m*(2*f*(1 - n)))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*(a+b*cot(e+f*x))^m*(c+d*cot(e+f*x))^n=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(a+a*im*cot(e+f*x))^m*(c-c*im*cot(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*im*cot(e+f*x))^m*(c+d*cot(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+a*im*cot(e+f*x))^m*(c+d*cot(e+f*x))^(n/2)=#


    @test_int [(1 + im*cot(c + d*x))/sqrt(a + b*cot(c + d*x)), x, 3, (2*im*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/(sqrt(a - im*b)*d)]
    @test_int [(1 - im*cot(c + d*x))/sqrt(a + b*cot(c + d*x)), x, 3, -((2*im*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/(sqrt(a + im*b)*d))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cot(e+f*x))^m*(c+d*cot(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cot(e+f*x))^m*(c+d*cot(e+f*x))^n=#


    #= ::Subsubsection:: =#
    #=m>0=#


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [(A + B*cot(c + d*x))/(a + b*cot(c + d*x)), x, 2, ((a*A + b*B)*x)/(a^2 + b^2) - ((A*b - a*B)*log(b*cos(c + d*x) + a*sin(c + d*x)))/((a^2 + b^2)*d)]


    @test_int [(A + B*cot(c + d*x))/(a + b*cot(c + d*x))^2, x, 3, ((a^2*A - A*b^2 + 2*a*b*B)*x)/(a^2 + b^2)^2 + (A*b - a*B)/((a^2 + b^2)*d*(a + b*cot(c + d*x))) - ((2*a*A*b - a^2*B + b^2*B)*log(b*cos(c + d*x) + a*sin(c + d*x)))/((a^2 + b^2)^2*d)]


    @test_int [(A + B*cot(c + d*x))/(a + b*cot(c + d*x))^3, x, 4, ((a^3*A - 3*a*A*b^2 + 3*a^2*b*B - b^3*B)*x)/(a^2 + b^2)^3 + (A*b - a*B)/(2*(a^2 + b^2)*d*(a + b*cot(c + d*x))^2) + (2*a*A*b - a^2*B + b^2*B)/((a^2 + b^2)^2*d*(a + b*cot(c + d*x))) - ((3*a^2*A*b - A*b^3 - a^3*B + 3*a*b^2*B)*log(b*cos(c + d*x) + a*sin(c + d*x)))/((a^2 + b^2)^3*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cot(e+f*x))^m*(c+d*cot(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(A + B*cot(c + d*x))*(a + b*cot(c + d*x))^(5/2), x, 10, ((a - im*b)^(5/2)*(im*A + B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/d - ((a + im*b)^(5/2)*(im*A - B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/d - (2*(2*a*A*b + a^2*B - b^2*B)*sqrt(a + b*cot(c + d*x)))/d - (2*(A*b + a*B)*(a + b*cot(c + d*x))^(3/2))/(3*d) - (2*B*(a + b*cot(c + d*x))^(5/2))/(5*d)]
    @test_int [(A + B*cot(c + d*x))*(a + b*cot(c + d*x))^(3/2), x, 9, ((a - im*b)^(3/2)*(im*A + B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/d - ((a + im*b)^(3/2)*(im*A - B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/d - (2*(A*b + a*B)*sqrt(a + b*cot(c + d*x)))/d - (2*B*(a + b*cot(c + d*x))^(3/2))/(3*d)]
    @test_int [(A + B*cot(c + d*x))*(a + b*cot(c + d*x))^(1/2), x, 8, (sqrt(a - im*b)*(im*A + B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/d - (sqrt(a + im*b)*(im*A - B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/d - (2*B*sqrt(a + b*cot(c + d*x)))/d]


    @test_int [(-a + b*cot(c + d*x))*(a + b*cot(c + d*x))^(5/2), x, 10, -(((im*a - b)*(a - im*b)^(5/2)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/d) + ((a + im*b)^(5/2)*(im*a + b)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/d + (2*b*(a^2 + b^2)*sqrt(a + b*cot(c + d*x)))/d - (2*b*(a + b*cot(c + d*x))^(5/2))/(5*d)]
    @test_int [(-a + b*cot(c + d*x))*(a + b*cot(c + d*x))^(3/2), x, 13, (b*(a^2 + b^2)*atanh((sqrt(a + sqrt(a^2 + b^2)) - sqrt(2)*sqrt(a + b*cot(c + d*x)))/sqrt(a - sqrt(a^2 + b^2))))/(sqrt(2)*sqrt(a - sqrt(a^2 + b^2))*d) - (b*(a^2 + b^2)*atanh((sqrt(a + sqrt(a^2 + b^2)) + sqrt(2)*sqrt(a + b*cot(c + d*x)))/sqrt(a - sqrt(a^2 + b^2))))/(sqrt(2)*sqrt(a - sqrt(a^2 + b^2))*d) - (2*b*(a + b*cot(c + d*x))^(3/2))/(3*d) + (b*(a^2 + b^2)*log(a + sqrt(a^2 + b^2) + b*cot(c + d*x) - sqrt(2)*sqrt(a + sqrt(a^2 + b^2))*sqrt(a + b*cot(c + d*x))))/(2*sqrt(2)*sqrt(a + sqrt(a^2 + b^2))*d) - (b*(a^2 + b^2)*log(a + sqrt(a^2 + b^2) + b*cot(c + d*x) + sqrt(2)*sqrt(a + sqrt(a^2 + b^2))*sqrt(a + b*cot(c + d*x))))/(2*sqrt(2)*sqrt(a + sqrt(a^2 + b^2))*d)]
    @test_int [(-a + b*cot(c + d*x))*(a + b*cot(c + d*x))^(1/2), x, 13, (b*sqrt(a^2 + b^2)*atanh((sqrt(a + sqrt(a^2 + b^2)) - sqrt(2)*sqrt(a + b*cot(c + d*x)))/sqrt(a - sqrt(a^2 + b^2))))/(sqrt(2)*sqrt(a - sqrt(a^2 + b^2))*d) - (b*sqrt(a^2 + b^2)*atanh((sqrt(a + sqrt(a^2 + b^2)) + sqrt(2)*sqrt(a + b*cot(c + d*x)))/sqrt(a - sqrt(a^2 + b^2))))/(sqrt(2)*sqrt(a - sqrt(a^2 + b^2))*d) - (2*b*sqrt(a + b*cot(c + d*x)))/d - (b*sqrt(a^2 + b^2)*log(a + sqrt(a^2 + b^2) + b*cot(c + d*x) - sqrt(2)*sqrt(a + sqrt(a^2 + b^2))*sqrt(a + b*cot(c + d*x))))/(2*sqrt(2)*sqrt(a + sqrt(a^2 + b^2))*d) + (b*sqrt(a^2 + b^2)*log(a + sqrt(a^2 + b^2) + b*cot(c + d*x) + sqrt(2)*sqrt(a + sqrt(a^2 + b^2))*sqrt(a + b*cot(c + d*x))))/(2*sqrt(2)*sqrt(a + sqrt(a^2 + b^2))*d)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(A + B*cot(c + d*x))/(a + b*cot(c + d*x))^(1/2), x, 7, ((im*A + B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/(sqrt(a - im*b)*d) - ((im*A - B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/(sqrt(a + im*b)*d)]
    @test_int [(A + B*cot(c + d*x))/(a + b*cot(c + d*x))^(3/2), x, 8, ((im*A + B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/((a - im*b)^(3/2)*d) - ((im*A - B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/((a + im*b)^(3/2)*d) + (2*(A*b - a*B))/((a^2 + b^2)*d*sqrt(a + b*cot(c + d*x)))]
    @test_int [(A + B*cot(c + d*x))/(a + b*cot(c + d*x))^(5/2), x, 9, ((im*A + B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/((a - im*b)^(5/2)*d) - ((im*A - B)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/((a + im*b)^(5/2)*d) + (2*(A*b - a*B))/(3*(a^2 + b^2)*d*(a + b*cot(c + d*x))^(3/2)) + (2*(2*a*A*b - a^2*B + b^2*B))/((a^2 + b^2)^2*d*sqrt(a + b*cot(c + d*x)))]


    @test_int [(-a + b*cot(c + d*x))/(a + b*cot(c + d*x))^(1/2), x, 7, -(((im*a - b)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/(sqrt(a - im*b)*d)) + ((im*a + b)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/(sqrt(a + im*b)*d)]
    @test_int [(-a + b*cot(c + d*x))/(a + b*cot(c + d*x))^(3/2), x, 8, -(((im*a - b)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/((a - im*b)^(3/2)*d)) + ((im*a + b)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/((a + im*b)^(3/2)*d) - (4*a*b)/((a^2 + b^2)*d*sqrt(a + b*cot(c + d*x)))]
    @test_int [(-a + b*cot(c + d*x))/(a + b*cot(c + d*x))^(5/2), x, 9, -(((im*a - b)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a - im*b)))/((a - im*b)^(5/2)*d)) + ((im*a + b)*atanh(sqrt(a + b*cot(c + d*x))/sqrt(a + im*b)))/((a + im*b)^(5/2)*d) - (4*a*b)/(3*(a^2 + b^2)*d*(a + b*cot(c + d*x))^(3/2)) - (2*b*(3*a^2 - b^2))/((a^2 + b^2)^2*d*sqrt(a + b*cot(c + d*x)))]
    end
