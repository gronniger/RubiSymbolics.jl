@testset "(d+e x)^p (-d+e x)^q (a+b arccosh(c x))^n" begin
    @variables a, b, c, x

    #= ::Package:: =#

    @test_int [(-1 + c*x)^(5/2)*sqrt(1 + c*x)*(a + b*acosh(c*x)), x, 0, 0]
    @test_int [(-1 + c*x)^(3/2)*sqrt(1 + c*x)*(a + b*acosh(c*x)), x, 0, 0]
    @test_int [(-1 + c*x)^(1/2)*sqrt(1 + c*x)*(a + b*acosh(c*x)), x, 3, (-(1/4))*b*c*x^2 + (1/2)*x*sqrt(-1 + c*x)*sqrt(1 + c*x)*(a + b*acosh(c*x)) - (a + b*acosh(c*x))^2/(4*b*c)]
    @test_int [sqrt(1 + c*x)*(a + b*acosh(c*x))/(-1 + c*x)^(1/2), x, 0, 0]
    @test_int [sqrt(1 + c*x)*(a + b*acosh(c*x))/(-1 + c*x)^(3/2), x, 0, 0]
    @test_int [sqrt(1 + c*x)*(a + b*acosh(c*x))/(-1 + c*x)^(5/2), x, 7, (b*sqrt((1 - c*x)*(1 + c*x))*sqrt(1 - c^2*x^2))/(3*c*sqrt(-1 + c*x)*(-((1 - c*x)/(1 + c*x)))^(3/2)*(1 + c*x)^(3/2)) - ((1 + c*x)^(3/2)*(a + b*acosh(c*x)))/(3*c*(-1 + c*x)^(3/2)) - (2*b*sqrt((1 - c*x)*(1 + c*x))*sqrt(1 - c^2*x^2)*log(sqrt(-((1 - c*x)/(1 + c*x)))))/(3*c*sqrt(-1 + c*x)*sqrt(-((1 - c*x)/(1 + c*x)))*(1 + c*x)^(3/2)) + (b*sqrt((1 - c*x)*(1 + c*x))*sqrt(1 - c^2*x^2)*log(2/(1 + c*x)))/(3*c*sqrt(-1 + c*x)*sqrt(-((1 - c*x)/(1 + c*x)))*(1 + c*x)^(3/2))]


    @test_int [(-1 + c*x)^(5/2)*(1 + c*x)^(3/2)*(a + b*acosh(c*x)), x, 0, 0]
    @test_int [(-1 + c*x)^(3/2)*(1 + c*x)^(3/2)*(a + b*acosh(c*x)), x, 6, (5/16)*b*c*x^2 - (1/16)*b*c^3*x^4 - (3/8)*x*sqrt(-1 + c*x)*sqrt(1 + c*x)*(a + b*acosh(c*x)) + (1/4)*x*(-1 + c*x)^(3/2)*(1 + c*x)^(3/2)*(a + b*acosh(c*x)) + (3*(a + b*acosh(c*x))^2)/(16*b*c)]
    @test_int [(-1 + c*x)^(1/2)*(1 + c*x)^(3/2)*(a + b*acosh(c*x)), x, 0, 0]
    @test_int [(1 + c*x)^(3/2)*(a + b*acosh(c*x))/(-1 + c*x)^(1/2), x, 0, 0]
    @test_int [(1 + c*x)^(3/2)*(a + b*acosh(c*x))/(-1 + c*x)^(3/2), x, 0, 0]
    @test_int [(1 + c*x)^(3/2)*(a + b*acosh(c*x))/(-1 + c*x)^(5/2), x, 0, 0]


    @test_int [(-1 + c*x)^(5/2)/sqrt(1 + c*x)*(a + b*acosh(c*x)), x, 0, 0]
    @test_int [(-1 + c*x)^(3/2)/sqrt(1 + c*x)*(a + b*acosh(c*x)), x, 0, 0]
    @test_int [(-1 + c*x)^(1/2)/sqrt(1 + c*x)*(a + b*acosh(c*x)), x, 0, (-b)*x + (b*acosh(c*x)^2)/(2*c) + (sqrt(-1 + c*x)*sqrt(1 + c*x)*(a + b*acosh(c*x)))/c - (acosh(c*x)*(a + b*acosh(c*x)))/c]
    @test_int [(a + b*acosh(c*x))/((-1 + c*x)^(1/2)*sqrt(1 + c*x)), x, 1, (a + b*acosh(c*x))^2/(2*b*c)]
    @test_int [(a + b*acosh(c*x))/((-1 + c*x)^(3/2)*sqrt(1 + c*x)), x, 8, -((sqrt(1 + c*x)*(a + b*acosh(c*x)))/(c*sqrt(-1 + c*x))) - (2*b*sqrt((1 - c*x)*(1 + c*x))*sqrt(1 - c^2*x^2)*log(sqrt(-((1 - c*x)/(1 + c*x)))))/(c*sqrt(-1 + c*x)*sqrt(-((1 - c*x)/(1 + c*x)))*(1 + c*x)^(3/2)) + (b*sqrt((1 - c*x)*(1 + c*x))*sqrt(1 - c^2*x^2)*log(2/(1 + c*x)))/(c*sqrt(-1 + c*x)*sqrt(-((1 - c*x)/(1 + c*x)))*(1 + c*x)^(3/2))]
    @test_int [(a + b*acosh(c*x))/((-1 + c*x)^(5/2)*sqrt(1 + c*x)), x, 11, -(b/(3*c*(1 - c*x))) + (2*b*sqrt(1 - c^2*x^2))/(3*c*(1 - c*x)^(3/2)*sqrt(1 + c*x)) - (sqrt(1 + c*x)*(a + b*acosh(c*x)))/(3*c*(-1 + c*x)^(3/2)) + (sqrt(1 + c*x)*(a + b*acosh(c*x)))/(3*c*sqrt(-1 + c*x)) - (2*b*log(sqrt(-1 + c*x)))/(3*c)]


    @test_int [(-1 + c*x)^(5/2)/(1 + c*x)^(3/2)*(a + b*acosh(c*x)), x, 0, 0]
    @test_int [(-1 + c*x)^(3/2)/(1 + c*x)^(3/2)*(a + b*acosh(c*x)), x, 0, 0]
    @test_int [(-1 + c*x)^(1/2)/(1 + c*x)^(3/2)*(a + b*acosh(c*x)), x, 0, 0]
    @test_int [(a + b*acosh(c*x))/((-1 + c*x)^(1/2)*(1 + c*x)^(3/2)), x, 5, (sqrt(-1 + c*x)*(a + b*acosh(c*x)))/(c*sqrt(1 + c*x)) - (b*sqrt((1 - c*x)*(1 + c*x))*sqrt(1 - c^2*x^2)*log(2/(1 + c*x)))/(c*sqrt(-1 + c*x)*sqrt(-((1 - c*x)/(1 + c*x)))*(1 + c*x)^(3/2))]
    @test_int [(a + b*acosh(c*x))/((-1 + c*x)^(3/2)*(1 + c*x)^(3/2)), x, 2, -((x*(a + b*acosh(c*x)))/(sqrt(-1 + c*x)*sqrt(1 + c*x))) + (b*log(1 - c^2*x^2))/(2*c)]
    @test_int [(a + b*acosh(c*x))/((-1 + c*x)^(5/2)*(1 + c*x)^(3/2)), x, 19, (b*sqrt(1 - c^2*x^2))/(6*c*(1 - c*x)^(3/2)*sqrt(1 + c*x)) - (a + b*acosh(c*x))/(3*c*(-1 + c*x)^(3/2)*sqrt(1 + c*x)) + (2*x*(a + b*acosh(c*x)))/(3*sqrt(-1 + c*x)*sqrt(1 + c*x)) + (b*sqrt(1 - c^2*x^2)*atanh(c*x))/(6*c*sqrt(1 - c*x)*sqrt(1 + c*x)) - (2*b*log(sqrt(-1 + c*x)))/(3*c) - (b*log(1 + c*x))/(3*c)]
    end
