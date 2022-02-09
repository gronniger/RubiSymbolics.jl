@testset "4.6.3.1 (a+b csc)^m (d csc)^n (A+B csc)" begin
    (A, a, c, d, x, ) = @variables A a c d x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(a+b*csc(e+f*x))^m*(d*csc(e+f*x))^n*(A+B*csc(e+f*x))=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+a*csc(e+f*x))^m*(d*csc(e+f*x))^n*(A+B*csc(e+f*x))=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*csc(c+d*x)^m*(A+B*csc(c+d*x))*(a+a*csc(c+d*x))^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*csc(c+d*x)^m*(A+B*csc(c+d*x))*(a+a*csc(c+d*x))^(n/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csc(c+d*x)^m*(A+A*csc(c+d*x))*(a+a*csc(c+d*x))^n=#


    @test_int [(A + A*csc(c + d*x))*(a + a*csc(c + d*x))^1*csc(c + d*x)^3, x, 7, -((7*a*A*atanh(cos(c + d*x)))/(8*d)) - (2*a*A*cot(c + d*x))/d - (2*a*A*cot(c + d*x)^3)/(3*d) - (7*a*A*cot(c + d*x)*csc(c + d*x))/(8*d) - (a*A*cot(c + d*x)*csc(c + d*x)^3)/(4*d)]
    @test_int [(A + A*csc(c + d*x))*(a + a*csc(c + d*x))^1*csc(c + d*x)^2, x, 7, -((a*A*atanh(cos(c + d*x)))/d) - (5*a*A*cot(c + d*x))/(3*d) - (a*A*cot(c + d*x)*csc(c + d*x))/d - (a*A*cot(c + d*x)*csc(c + d*x)^2)/(3*d)]
    @test_int [(A + A*csc(c + d*x))*(a + a*csc(c + d*x))^1*csc(c + d*x)^1, x, 6, -((3*a*A*atanh(cos(c + d*x)))/(2*d)) - (2*a*A*cot(c + d*x))/d - (a*A*cot(c + d*x)*csc(c + d*x))/(2*d)]
    @test_int [(A + A*csc(c + d*x))*(a + a*csc(c + d*x))^1*sin(c + d*x)^1, x, 5, 2*a*A*x - (a*A*atanh(cos(c + d*x)))/d - (a*A*cos(c + d*x))/d]
    @test_int [(A + A*csc(c + d*x))*(a + a*csc(c + d*x))^1*sin(c + d*x)^2, x, 5, (3*a*A*x)/2 - (2*a*A*cos(c + d*x))/d - (a*A*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [(A + A*csc(c + d*x))*(a + a*csc(c + d*x))^1*sin(c + d*x)^3, x, 7, a*A*x - (2*a*A*cos(c + d*x))/d + (a*A*cos(c + d*x)^3)/(3*d) - (a*A*cos(c + d*x)*sin(c + d*x))/d]


    @test_int [(A + A*csc(c + d*x))*(a - a*csc(c + d*x))^1*csc(c + d*x)^3, x, 4, -((a*A*atanh(cos(c + d*x)))/(8*d)) - (a*A*cot(c + d*x)*csc(c + d*x))/(8*d) + (a*A*cot(c + d*x)*csc(c + d*x)^3)/(4*d)]
    @test_int [(A + A*csc(c + d*x))*(a - a*csc(c + d*x))^1*csc(c + d*x)^2, x, 3, (a*A*cot(c + d*x)^3)/(3*d)]
    @test_int [(A + A*csc(c + d*x))*(a - a*csc(c + d*x))^1*csc(c + d*x)^1, x, 3, -((a*A*atanh(cos(c + d*x)))/(2*d)) + (a*A*cot(c + d*x)*csc(c + d*x))/(2*d)]
    @test_int [(A + A*csc(c + d*x))*(a - a*csc(c + d*x))^1*sin(c + d*x)^1, x, 4, (a*A*atanh(cos(c + d*x)))/d - (a*A*cos(c + d*x))/d]
    @test_int [(A + A*csc(c + d*x))*(a - a*csc(c + d*x))^1*sin(c + d*x)^2, x, 3, (-(1/2))*a*A*x - (a*A*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [(A + A*csc(c + d*x))*(a - a*csc(c + d*x))^1*sin(c + d*x)^3, x, 3, (a*A*cos(c + d*x)^3)/(3*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csc(c+d*x)^m*(A-A*csc(c+d*x))*(a+a*csc(c+d*x))^n=#


    @test_int [(A - A*csc(c + d*x))*(a + a*csc(c + d*x))^1*csc(c + d*x)^3, x, 4, -((a*A*atanh(cos(c + d*x)))/(8*d)) - (a*A*cot(c + d*x)*csc(c + d*x))/(8*d) + (a*A*cot(c + d*x)*csc(c + d*x)^3)/(4*d)]
    @test_int [(A - A*csc(c + d*x))*(a + a*csc(c + d*x))^1*csc(c + d*x)^2, x, 3, (a*A*cot(c + d*x)^3)/(3*d)]
    @test_int [(A - A*csc(c + d*x))*(a + a*csc(c + d*x))^1*csc(c + d*x)^1, x, 3, -((a*A*atanh(cos(c + d*x)))/(2*d)) + (a*A*cot(c + d*x)*csc(c + d*x))/(2*d)]
    @test_int [(A - A*csc(c + d*x))*(a + a*csc(c + d*x))^1/csc(c + d*x)^1, x, 4, (a*A*atanh(cos(c + d*x)))/d - (a*A*cos(c + d*x))/d]
    @test_int [(A - A*csc(c + d*x))*(a + a*csc(c + d*x))^1/csc(c + d*x)^2, x, 3, (-(1/2))*a*A*x - (a*A*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [(A - A*csc(c + d*x))*(a + a*csc(c + d*x))^1/csc(c + d*x)^3, x, 3, (a*A*cos(c + d*x)^3)/(3*d)]


    @test_int [(A - A*csc(c + d*x))*(a - a*csc(c + d*x))^1*csc(c + d*x)^3, x, 7, -((7*a*A*atanh(cos(c + d*x)))/(8*d)) + (2*a*A*cot(c + d*x))/d + (2*a*A*cot(c + d*x)^3)/(3*d) - (7*a*A*cot(c + d*x)*csc(c + d*x))/(8*d) - (a*A*cot(c + d*x)*csc(c + d*x)^3)/(4*d)]
    @test_int [(A - A*csc(c + d*x))*(a - a*csc(c + d*x))^1*csc(c + d*x)^2, x, 7, (a*A*atanh(cos(c + d*x)))/d - (5*a*A*cot(c + d*x))/(3*d) + (a*A*cot(c + d*x)*csc(c + d*x))/d - (a*A*cot(c + d*x)*csc(c + d*x)^2)/(3*d)]
    @test_int [(A - A*csc(c + d*x))*(a - a*csc(c + d*x))^1*csc(c + d*x)^1, x, 6, -((3*a*A*atanh(cos(c + d*x)))/(2*d)) + (2*a*A*cot(c + d*x))/d - (a*A*cot(c + d*x)*csc(c + d*x))/(2*d)]
    @test_int [(A - A*csc(c + d*x))*(a - a*csc(c + d*x))^1/csc(c + d*x)^1, x, 5, -2*a*A*x - (a*A*atanh(cos(c + d*x)))/d - (a*A*cos(c + d*x))/d]
    @test_int [(A - A*csc(c + d*x))*(a - a*csc(c + d*x))^1/csc(c + d*x)^2, x, 5, (3*a*A*x)/2 + (2*a*A*cos(c + d*x))/d - (a*A*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [(A - A*csc(c + d*x))*(a - a*csc(c + d*x))^1/csc(c + d*x)^3, x, 7, (-a)*A*x - (2*a*A*cos(c + d*x))/d + (a*A*cos(c + d*x)^3)/(3*d) + (a*A*cos(c + d*x)*sin(c + d*x))/d]


    #= ::Section:: =#
    #=Integrands*of*the*form*(a+a*csc(e+f*x))^m*(d*sin(e+f*x))^n*(A+B*csc(e+f*x))=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*csc(e+f*x))^m*(d*csc(e+f*x))^n*(A+B*csc(e+f*x))=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*csc(c+d*x)^m*(A+B*csc(c+d*x))*(a+b*csc(c+d*x))^n=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*csc(c+d*x)^m*(A+B*csc(c+d*x))*(a+b*csc(c+d*x))^(n/2)=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(a+b*csc(e+f*x))^m*(d*sin(e+f*x))^n*(A+B*csc(e+f*x))=#
    end
