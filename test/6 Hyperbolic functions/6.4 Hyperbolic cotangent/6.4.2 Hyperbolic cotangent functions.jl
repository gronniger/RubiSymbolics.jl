@testset "6.4.2 Hyperbolic cotangent functions" begin
    @variables a, b, c, d, e, m, n, p, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*Involving*Hyperbolic*Cotangents=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*coth(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*coth(c+d*x))^(n/2)=#


    @test_int [(b*coth(c + d*x))^(7/2),x, 7, (b^(7/2)*atan(sqrt(b*coth(c + d*x))/sqrt(b)))/d + (b^(7/2)*atanh(sqrt(b*coth(c + d*x))/sqrt(b)))/d - (2*b^3*sqrt(b*coth(c + d*x)))/d - (2*b*(b*coth(c + d*x))^(5/2))/(5*d)]
    @test_int [(b*coth(c + d*x))^(5/2),x, 6, -((b^(5/2)*atan(sqrt(b*coth(c + d*x))/sqrt(b)))/d) + (b^(5/2)*atanh(sqrt(b*coth(c + d*x))/sqrt(b)))/d - (2*b*(b*coth(c + d*x))^(3/2))/(3*d)]
    @test_int [(b*coth(c + d*x))^(3/2),x, 6, (b^(3/2)*atan(sqrt(b*coth(c + d*x))/sqrt(b)))/d + (b^(3/2)*atanh(sqrt(b*coth(c + d*x))/sqrt(b)))/d - (2*b*sqrt(b*coth(c + d*x)))/d]
    @test_int [(b*coth(c + d*x))^(1/2), x, 5, -((sqrt(b)*atan(sqrt(b*coth(c + d*x))/sqrt(b)))/d) + (sqrt(b)*atanh(sqrt(b*coth(c + d*x))/sqrt(b)))/d]
    @test_int [1/(b*coth(c + d*x))^(1/2), x, 5, atan(sqrt(b*coth(c + d*x))/sqrt(b))/(sqrt(b)*d) + atanh(sqrt(b*coth(c + d*x))/sqrt(b))/(sqrt(b)*d)]
    @test_int [1/(b*coth(c + d*x))^(3/2), x, 6, -(atan(sqrt(b*coth(c + d*x))/sqrt(b))/(b^(3/2)*d)) + atanh(sqrt(b*coth(c + d*x))/sqrt(b))/(b^(3/2)*d) - 2/(b*d*sqrt(b*coth(c + d*x)))]
    @test_int [1/(b*coth(c + d*x))^(5/2), x, 6, atan(sqrt(b*coth(c + d*x))/sqrt(b))/(b^(5/2)*d) + atanh(sqrt(b*coth(c + d*x))/sqrt(b))/(b^(5/2)*d) - 2/(3*b*d*(b*coth(c + d*x))^(3/2))]
    @test_int [1/(b*coth(c + d*x))^(7/2), x, 7, -(atan(sqrt(b*coth(c + d*x))/sqrt(b))/(b^(7/2)*d)) + atanh(sqrt(b*coth(c + d*x))/sqrt(b))/(b^(7/2)*d) - 2/(5*b*d*(b*coth(c + d*x))^(5/2)) - 2/(b^3*d*sqrt(b*coth(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*coth(c+d*x))^(n/3)=#


    @test_int [(b*coth(c + d*x))^(4/3),x, 13, -((sqrt(3)*b^(4/3)*atan((1 - (2*(b*coth(c + d*x))^(1/3))/b^(1/3))/sqrt(3)))/(2*d)) + (sqrt(3)*b^(4/3)*atan((1 + (2*(b*coth(c + d*x))^(1/3))/b^(1/3))/sqrt(3)))/(2*d) + (b^(4/3)*atanh((b*coth(c + d*x))^(1/3)/b^(1/3)))/d - (3*b*(b*coth(c + d*x))^(1/3))/d - (b^(4/3)*log(b^(2/3) - b^(1/3)*(b*coth(c + d*x))^(1/3) + (b*coth(c + d*x))^(2/3)))/(4*d) + (b^(4/3)*log(b^(2/3) + b^(1/3)*(b*coth(c + d*x))^(1/3) + (b*coth(c + d*x))^(2/3)))/(4*d)]
    @test_int [(b*coth(c + d*x))^(2/3),x, 12, (sqrt(3)*b^(2/3)*atan((1 - (2*(b*coth(c + d*x))^(1/3))/b^(1/3))/sqrt(3)))/(2*d) - (sqrt(3)*b^(2/3)*atan((1 + (2*(b*coth(c + d*x))^(1/3))/b^(1/3))/sqrt(3)))/(2*d) + (b^(2/3)*atanh((b*coth(c + d*x))^(1/3)/b^(1/3)))/d - (b^(2/3)*log(b^(2/3) - b^(1/3)*(b*coth(c + d*x))^(1/3) + (b*coth(c + d*x))^(2/3)))/(4*d) + (b^(2/3)*log(b^(2/3) + b^(1/3)*(b*coth(c + d*x))^(1/3) + (b*coth(c + d*x))^(2/3)))/(4*d)]
    @test_int [(b*coth(c + d*x))^(1/3), x, 9, -((sqrt(3)*b^(1/3)*atan((b^(2/3) + 2*(b*coth(c + d*x))^(2/3))/(sqrt(3)*b^(2/3))))/(2*d)) - (b^(1/3)*log(b^(2/3) - (b*coth(c + d*x))^(2/3)))/(2*d) + (b^(1/3)*log(b^(4/3) + b^(2/3)*(b*coth(c + d*x))^(2/3) + (b*coth(c + d*x))^(4/3)))/(4*d)]
    @test_int [1/(b*coth(c + d*x))^(1/3), x, 9, (sqrt(3)*atan((b^(2/3) + 2*(b*coth(c + d*x))^(2/3))/(sqrt(3)*b^(2/3))))/(2*b^(1/3)*d) - log(b^(2/3) - (b*coth(c + d*x))^(2/3))/(2*b^(1/3)*d) + log(b^(4/3) + b^(2/3)*(b*coth(c + d*x))^(2/3) + (b*coth(c + d*x))^(4/3))/(4*b^(1/3)*d)]
    @test_int [1/(b*coth(c + d*x))^(2/3), x, 12, -((sqrt(3)*atan((1 - (2*(b*coth(c + d*x))^(1/3))/b^(1/3))/sqrt(3)))/(2*b^(2/3)*d)) + (sqrt(3)*atan((1 + (2*(b*coth(c + d*x))^(1/3))/b^(1/3))/sqrt(3)))/(2*b^(2/3)*d) + atanh((b*coth(c + d*x))^(1/3)/b^(1/3))/(b^(2/3)*d) - log(b^(2/3) - b^(1/3)*(b*coth(c + d*x))^(1/3) + (b*coth(c + d*x))^(2/3))/(4*b^(2/3)*d) + log(b^(2/3) + b^(1/3)*(b*coth(c + d*x))^(1/3) + (b*coth(c + d*x))^(2/3))/(4*b^(2/3)*d)]
    @test_int [1/(b*coth(c + d*x))^(4/3), x, 13, (sqrt(3)*atan((1 - (2*(b*coth(c + d*x))^(1/3))/b^(1/3))/sqrt(3)))/(2*b^(4/3)*d) - (sqrt(3)*atan((1 + (2*(b*coth(c + d*x))^(1/3))/b^(1/3))/sqrt(3)))/(2*b^(4/3)*d) + atanh((b*coth(c + d*x))^(1/3)/b^(1/3))/(b^(4/3)*d) - 3/(b*d*(b*coth(c + d*x))^(1/3)) - log(b^(2/3) - b^(1/3)*(b*coth(c + d*x))^(1/3) + (b*coth(c + d*x))^(2/3))/(4*b^(4/3)*d) + log(b^(2/3) + b^(1/3)*(b*coth(c + d*x))^(1/3) + (b*coth(c + d*x))^(2/3))/(4*b^(4/3)*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*coth(c+d*x))^n*with*n*symbolic=#


    @test_int [coth(a + b*x)^n, x, 2, (coth(a + b*x)^(1 + n)*Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, coth(a + b*x)^2))/(b*(1 + n))]
    @test_int [(b*coth(c + d*x))^n,x, 2, ((b*coth(c + d*x))^(1 + n)*Hypergeometric2F1(1, (1 + n)/2, (3 + n)/2, coth(c + d*x)^2))/(b*d*(1 + n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*coth(c+d*x)^m)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*coth(c+d*x)^2)^n=#


    @test_int [(b*coth(c + d*x)^2)^n,x, 3, (coth(c + d*x)*(b*coth(c + d*x)^2)^n*Hypergeometric2F1(1, (1/2)*(1 + 2*n), (1/2)*(3 + 2*n), coth(c + d*x)^2))/(d*(1 + 2*n))]

    @test_int [(b*coth(c + d*x)^2)^(3/2),x, 3, -((b*coth(c + d*x)*sqrt(b*coth(c + d*x)^2))/(2*d)) + (b*sqrt(b*coth(c + d*x)^2)*log(sinh(c + d*x))*tanh(c + d*x))/d]
    @test_int [(b*coth(c + d*x)^2)^(1/2), x, 2, (sqrt(b*coth(c + d*x)^2)*log(sinh(c + d*x))*tanh(c + d*x))/d]
    @test_int [1/(b*coth(c + d*x)^2)^(1/2), x, 2, (coth(c + d*x)*log(cosh(c + d*x)))/(d*sqrt(b*coth(c + d*x)^2))]
    @test_int [1/(b*coth(c + d*x)^2)^(3/2), x, 3, (coth(c + d*x)*log(cosh(c + d*x)))/(b*d*sqrt(b*coth(c + d*x)^2)) - tanh(c + d*x)/(2*b*d*sqrt(b*coth(c + d*x)^2))]


    @test_int [(b*coth(c + d*x)^2)^(4/3),x, 14, (sqrt(3)*b*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^2)^(1/3))/(2*d*coth(c + d*x)^(2/3)) - (sqrt(3)*b*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^2)^(1/3))/(2*d*coth(c + d*x)^(2/3)) + (b*atanh(coth(c + d*x)^(1/3))*(b*coth(c + d*x)^2)^(1/3))/(d*coth(c + d*x)^(2/3)) - (3*b*coth(c + d*x)*(b*coth(c + d*x)^2)^(1/3))/(5*d) - (b*(b*coth(c + d*x)^2)^(1/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(2/3)) + (b*(b*coth(c + d*x)^2)^(1/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(2/3))]
    @test_int [(b*coth(c + d*x)^2)^(2/3),x, 14, -((sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^2)^(2/3))/(2*d*coth(c + d*x)^(4/3))) + (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^2)^(2/3))/(2*d*coth(c + d*x)^(4/3)) + (atanh(coth(c + d*x)^(1/3))*(b*coth(c + d*x)^2)^(2/3))/(d*coth(c + d*x)^(4/3)) - ((b*coth(c + d*x)^2)^(2/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(4/3)) + ((b*coth(c + d*x)^2)^(2/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(4/3)) - (3*(b*coth(c + d*x)^2)^(2/3)*tanh(c + d*x))/d]
    @test_int [(b*coth(c + d*x)^2)^(1/3), x, 13, (sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^2)^(1/3))/(2*d*coth(c + d*x)^(2/3)) - (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^2)^(1/3))/(2*d*coth(c + d*x)^(2/3)) + (atanh(coth(c + d*x)^(1/3))*(b*coth(c + d*x)^2)^(1/3))/(d*coth(c + d*x)^(2/3)) - ((b*coth(c + d*x)^2)^(1/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(2/3)) + ((b*coth(c + d*x)^2)^(1/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(2/3))]
    @test_int [1/(b*coth(c + d*x)^2)^(1/3), x, 13, -((sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(2/3))/(2*d*(b*coth(c + d*x)^2)^(1/3))) + (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(2/3))/(2*d*(b*coth(c + d*x)^2)^(1/3)) + (atanh(coth(c + d*x)^(1/3))*coth(c + d*x)^(2/3))/(d*(b*coth(c + d*x)^2)^(1/3)) - (coth(c + d*x)^(2/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*(b*coth(c + d*x)^2)^(1/3)) + (coth(c + d*x)^(2/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*(b*coth(c + d*x)^2)^(1/3))]
    @test_int [1/(b*coth(c + d*x)^2)^(2/3), x, 14, -((3*coth(c + d*x))/(d*(b*coth(c + d*x)^2)^(2/3))) + (sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(4/3))/(2*d*(b*coth(c + d*x)^2)^(2/3)) - (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(4/3))/(2*d*(b*coth(c + d*x)^2)^(2/3)) + (atanh(coth(c + d*x)^(1/3))*coth(c + d*x)^(4/3))/(d*(b*coth(c + d*x)^2)^(2/3)) - (coth(c + d*x)^(4/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*(b*coth(c + d*x)^2)^(2/3)) + (coth(c + d*x)^(4/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*(b*coth(c + d*x)^2)^(2/3))]
    @test_int [1/(b*coth(c + d*x)^2)^(4/3), x, 14, -((sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(2/3))/(2*b*d*(b*coth(c + d*x)^2)^(1/3))) + (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(2/3))/(2*b*d*(b*coth(c + d*x)^2)^(1/3)) + (atanh(coth(c + d*x)^(1/3))*coth(c + d*x)^(2/3))/(b*d*(b*coth(c + d*x)^2)^(1/3)) - (coth(c + d*x)^(2/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*b*d*(b*coth(c + d*x)^2)^(1/3)) + (coth(c + d*x)^(2/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*b*d*(b*coth(c + d*x)^2)^(1/3)) - (3*tanh(c + d*x))/(5*b*d*(b*coth(c + d*x)^2)^(1/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*coth(c+d*x)^3)^n=#


    @test_int [(b*coth(c + d*x)^3)^n,x, 3, (coth(c + d*x)*(b*coth(c + d*x)^3)^n*Hypergeometric2F1(1, (1/2)*(1 + 3*n), (3*(1 + n))/2, coth(c + d*x)^2))/(d*(1 + 3*n))]

    @test_int [(b*coth(c + d*x)^3)^(3/2),x, 8, -((2*b*sqrt(b*coth(c + d*x)^3))/(3*d)) - (b*atan(sqrt(coth(c + d*x)))*sqrt(b*coth(c + d*x)^3))/(d*coth(c + d*x)^(3/2)) + (b*atanh(sqrt(coth(c + d*x)))*sqrt(b*coth(c + d*x)^3))/(d*coth(c + d*x)^(3/2)) - (2*b*coth(c + d*x)^2*sqrt(b*coth(c + d*x)^3))/(7*d)]
    @test_int [(b*coth(c + d*x)^3)^(1/2), x, 7, (atan(sqrt(coth(c + d*x)))*sqrt(b*coth(c + d*x)^3))/(d*coth(c + d*x)^(3/2)) + (atanh(sqrt(coth(c + d*x)))*sqrt(b*coth(c + d*x)^3))/(d*coth(c + d*x)^(3/2)) - (2*sqrt(b*coth(c + d*x)^3)*tanh(c + d*x))/d]
    @test_int [1/(b*coth(c + d*x)^3)^(1/2), x, 7, -((2*coth(c + d*x))/(d*sqrt(b*coth(c + d*x)^3))) - (atan(sqrt(coth(c + d*x)))*coth(c + d*x)^(3/2))/(d*sqrt(b*coth(c + d*x)^3)) + (atanh(sqrt(coth(c + d*x)))*coth(c + d*x)^(3/2))/(d*sqrt(b*coth(c + d*x)^3))]
    @test_int [1/(b*coth(c + d*x)^3)^(3/2), x, 8, -(2/(3*b*d*sqrt(b*coth(c + d*x)^3))) + (atan(sqrt(coth(c + d*x)))*coth(c + d*x)^(3/2))/(b*d*sqrt(b*coth(c + d*x)^3)) + (atanh(sqrt(coth(c + d*x)))*coth(c + d*x)^(3/2))/(b*d*sqrt(b*coth(c + d*x)^3)) - (2*tanh(c + d*x)^2)/(7*b*d*sqrt(b*coth(c + d*x)^3))]


    @test_int [(b*coth(c + d*x)^3)^(4/3),x, 4, -((b*(b*coth(c + d*x)^3)^(1/3))/d) - (b*coth(c + d*x)^2*(b*coth(c + d*x)^3)^(1/3))/(3*d) + b*x*(b*coth(c + d*x)^3)^(1/3)*tanh(c + d*x)]
    @test_int [(b*coth(c + d*x)^3)^(2/3),x, 3, -(((b*coth(c + d*x)^3)^(2/3)*tanh(c + d*x))/d) + x*(b*coth(c + d*x)^3)^(2/3)*tanh(c + d*x)^2]
    @test_int [(b*coth(c + d*x)^3)^(1/3), x, 2, ((b*coth(c + d*x)^3)^(1/3)*log(sinh(c + d*x))*tanh(c + d*x))/d]
    @test_int [1/(b*coth(c + d*x)^3)^(1/3), x, 2, (coth(c + d*x)*log(cosh(c + d*x)))/(d*(b*coth(c + d*x)^3)^(1/3))]
    @test_int [1/(b*coth(c + d*x)^3)^(2/3), x, 3, -(coth(c + d*x)/(d*(b*coth(c + d*x)^3)^(2/3))) + (x*coth(c + d*x)^2)/(b*coth(c + d*x)^3)^(2/3)]
    @test_int [1/(b*coth(c + d*x)^3)^(4/3), x, 4, -(1/(b*d*(b*coth(c + d*x)^3)^(1/3))) + (x*coth(c + d*x))/(b*(b*coth(c + d*x)^3)^(1/3)) - tanh(c + d*x)^2/(3*b*d*(b*coth(c + d*x)^3)^(1/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*coth(c+d*x)^4)^n=#


    @test_int [(b*coth(c + d*x)^4)^n,x, 3, (coth(c + d*x)*(b*coth(c + d*x)^4)^n*Hypergeometric2F1(1, (1/2)*(1 + 4*n), (1/2)*(3 + 4*n), coth(c + d*x)^2))/(d*(1 + 4*n))]

    @test_int [(b*coth(c + d*x)^4)^(3/2),x, 5, -((b*coth(c + d*x)*sqrt(b*coth(c + d*x)^4))/(3*d)) - (b*coth(c + d*x)^3*sqrt(b*coth(c + d*x)^4))/(5*d) - (b*sqrt(b*coth(c + d*x)^4)*tanh(c + d*x))/d + b*x*sqrt(b*coth(c + d*x)^4)*tanh(c + d*x)^2]
    @test_int [(b*coth(c + d*x)^4)^(1/2), x, 3, -((sqrt(b*coth(c + d*x)^4)*tanh(c + d*x))/d) + x*sqrt(b*coth(c + d*x)^4)*tanh(c + d*x)^2]
    @test_int [1/(b*coth(c + d*x)^4)^(1/2), x, 3, -(coth(c + d*x)/(d*sqrt(b*coth(c + d*x)^4))) + (x*coth(c + d*x)^2)/sqrt(b*coth(c + d*x)^4)]
    @test_int [1/(b*coth(c + d*x)^4)^(3/2), x, 5, -(coth(c + d*x)/(b*d*sqrt(b*coth(c + d*x)^4))) + (x*coth(c + d*x)^2)/(b*sqrt(b*coth(c + d*x)^4)) - tanh(c + d*x)/(3*b*d*sqrt(b*coth(c + d*x)^4)) - tanh(c + d*x)^3/(5*b*d*sqrt(b*coth(c + d*x)^4))]


    @test_int [(b*coth(c + d*x)^4)^(4/3),x, 16, -((sqrt(3)*b*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^4)^(1/3))/(2*d*coth(c + d*x)^(4/3))) + (sqrt(3)*b*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^4)^(1/3))/(2*d*coth(c + d*x)^(4/3)) + (b*atanh(coth(c + d*x)^(1/3))*(b*coth(c + d*x)^4)^(1/3))/(d*coth(c + d*x)^(4/3)) - (3*b*coth(c + d*x)*(b*coth(c + d*x)^4)^(1/3))/(7*d) - (3*b*coth(c + d*x)^3*(b*coth(c + d*x)^4)^(1/3))/(13*d) - (b*(b*coth(c + d*x)^4)^(1/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(4/3)) + (b*(b*coth(c + d*x)^4)^(1/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(4/3)) - (3*b*(b*coth(c + d*x)^4)^(1/3)*tanh(c + d*x))/d]
    @test_int [(b*coth(c + d*x)^4)^(2/3),x, 14, (sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^4)^(2/3))/(2*d*coth(c + d*x)^(8/3)) - (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^4)^(2/3))/(2*d*coth(c + d*x)^(8/3)) + (atanh(coth(c + d*x)^(1/3))*(b*coth(c + d*x)^4)^(2/3))/(d*coth(c + d*x)^(8/3)) - ((b*coth(c + d*x)^4)^(2/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(8/3)) + ((b*coth(c + d*x)^4)^(2/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(8/3)) - (3*(b*coth(c + d*x)^4)^(2/3)*tanh(c + d*x))/(5*d)]
    @test_int [(b*coth(c + d*x)^4)^(1/3), x, 14, -((sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^4)^(1/3))/(2*d*coth(c + d*x)^(4/3))) + (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*(b*coth(c + d*x)^4)^(1/3))/(2*d*coth(c + d*x)^(4/3)) + (atanh(coth(c + d*x)^(1/3))*(b*coth(c + d*x)^4)^(1/3))/(d*coth(c + d*x)^(4/3)) - ((b*coth(c + d*x)^4)^(1/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(4/3)) + ((b*coth(c + d*x)^4)^(1/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*coth(c + d*x)^(4/3)) - (3*(b*coth(c + d*x)^4)^(1/3)*tanh(c + d*x))/d]
    @test_int [1/(b*coth(c + d*x)^4)^(1/3), x, 14, -((3*coth(c + d*x))/(d*(b*coth(c + d*x)^4)^(1/3))) + (sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(4/3))/(2*d*(b*coth(c + d*x)^4)^(1/3)) - (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(4/3))/(2*d*(b*coth(c + d*x)^4)^(1/3)) + (atanh(coth(c + d*x)^(1/3))*coth(c + d*x)^(4/3))/(d*(b*coth(c + d*x)^4)^(1/3)) - (coth(c + d*x)^(4/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*(b*coth(c + d*x)^4)^(1/3)) + (coth(c + d*x)^(4/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*(b*coth(c + d*x)^4)^(1/3))]
    @test_int [1/(b*coth(c + d*x)^4)^(2/3), x, 14, -((3*coth(c + d*x))/(5*d*(b*coth(c + d*x)^4)^(2/3))) - (sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(8/3))/(2*d*(b*coth(c + d*x)^4)^(2/3)) + (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(8/3))/(2*d*(b*coth(c + d*x)^4)^(2/3)) + (atanh(coth(c + d*x)^(1/3))*coth(c + d*x)^(8/3))/(d*(b*coth(c + d*x)^4)^(2/3)) - (coth(c + d*x)^(8/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*(b*coth(c + d*x)^4)^(2/3)) + (coth(c + d*x)^(8/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*d*(b*coth(c + d*x)^4)^(2/3))]
    @test_int [1/(b*coth(c + d*x)^4)^(4/3), x, 16, -((3*coth(c + d*x))/(b*d*(b*coth(c + d*x)^4)^(1/3))) + (sqrt(3)*atan((1 - 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(4/3))/(2*b*d*(b*coth(c + d*x)^4)^(1/3)) - (sqrt(3)*atan((1 + 2*coth(c + d*x)^(1/3))/sqrt(3))*coth(c + d*x)^(4/3))/(2*b*d*(b*coth(c + d*x)^4)^(1/3)) + (atanh(coth(c + d*x)^(1/3))*coth(c + d*x)^(4/3))/(b*d*(b*coth(c + d*x)^4)^(1/3)) - (coth(c + d*x)^(4/3)*log(1 - coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*b*d*(b*coth(c + d*x)^4)^(1/3)) + (coth(c + d*x)^(4/3)*log(1 + coth(c + d*x)^(1/3) + coth(c + d*x)^(2/3)))/(4*b*d*(b*coth(c + d*x)^4)^(1/3)) - (3*tanh(c + d*x))/(7*b*d*(b*coth(c + d*x)^4)^(1/3)) - (3*tanh(c + d*x)^3)/(13*b*d*(b*coth(c + d*x)^4)^(1/3))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(b*coth(c+d*x)^m)^n=#


    @test_int [(b*coth(c + d*x)^m)^n,x, 3, (coth(c + d*x)*(b*coth(c + d*x)^m)^n*Hypergeometric2F1(1, (1/2)*(1 + m*n), (1/2)*(3 + m*n), coth(c + d*x)^2))/(d*(1 + m*n))]

    @test_int [(b*coth(c + d*x)^m)^(3/2),x, 3, (2*b*coth(c + d*x)^(1 + m)*sqrt(b*coth(c + d*x)^m)*Hypergeometric2F1(1, (1/4)*(2 + 3*m), (3*(2 + m))/4, coth(c + d*x)^2))/(d*(2 + 3*m))]
    @test_int [(b*coth(c + d*x)^m)^(1/2), x, 3, (2*coth(c + d*x)*sqrt(b*coth(c + d*x)^m)*Hypergeometric2F1(1, (2 + m)/4, (6 + m)/4, coth(c + d*x)^2))/(d*(2 + m))]
    @test_int [1/(b*coth(c + d*x)^m)^(1/2), x, 3, (2*coth(c + d*x)*Hypergeometric2F1(1, (2 - m)/4, (6 - m)/4, coth(c + d*x)^2))/(d*(2 - m)*sqrt(b*coth(c + d*x)^m))]
    @test_int [1/(b*coth(c + d*x)^m)^(3/2), x, 3, (2*coth(c + d*x)^(1 - m)*Hypergeometric2F1(1, (1/4)*(2 - 3*m), (3*(2 - m))/4, coth(c + d*x)^2))/(b*d*(2 - 3*m)*sqrt(b*coth(c + d*x)^m))]


    @test_int [(b*coth(c + d*x)^m)^(4/3),x, 3, (3*b*coth(c + d*x)^(1 + m)*(b*coth(c + d*x)^m)^(1/3)*Hypergeometric2F1(1, (1/6)*(3 + 4*m), (1/6)*(9 + 4*m), coth(c + d*x)^2))/(d*(3 + 4*m))]
    @test_int [(b*coth(c + d*x)^m)^(2/3),x, 3, (3*coth(c + d*x)*(b*coth(c + d*x)^m)^(2/3)*Hypergeometric2F1(1, (1/6)*(3 + 2*m), (1/6)*(9 + 2*m), coth(c + d*x)^2))/(d*(3 + 2*m))]
    @test_int [(b*coth(c + d*x)^m)^(1/3), x, 3, (3*coth(c + d*x)*(b*coth(c + d*x)^m)^(1/3)*Hypergeometric2F1(1, (3 + m)/6, (9 + m)/6, coth(c + d*x)^2))/(d*(3 + m))]
    @test_int [1/(b*coth(c + d*x)^m)^(1/3), x, 3, (3*coth(c + d*x)*Hypergeometric2F1(1, (3 - m)/6, (9 - m)/6, coth(c + d*x)^2))/(d*(3 - m)*(b*coth(c + d*x)^m)^(1/3))]
    @test_int [1/(b*coth(c + d*x)^m)^(2/3), x, 3, (3*coth(c + d*x)*Hypergeometric2F1(1, (1/6)*(3 - 2*m), (1/6)*(9 - 2*m), coth(c + d*x)^2))/(d*(3 - 2*m)*(b*coth(c + d*x)^m)^(2/3))]
    @test_int [1/(b*coth(c + d*x)^m)^(4/3), x, 3, (3*coth(c + d*x)^(1 - m)*Hypergeometric2F1(1, (1/6)*(3 - 4*m), (1/6)*(9 - 4*m), coth(c + d*x)^2))/(b*d*(3 - 4*m)*(b*coth(c + d*x)^m)^(1/3))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Hyper(c+d*x)^m*(a+b*coth(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*coth(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 = 0=#


    @test_int [(1 + coth(x))^5, x, 5, 16*x - 8*coth(x) - 2*(1 + coth(x))^2 - (2/3)*(1 + coth(x))^3 - (1/4)*(1 + coth(x))^4 + 16*log(sinh(x))]
    @test_int [(1 + coth(x))^4, x, 4, 8*x - 4*coth(x) - (1 + coth(x))^2 - (1/3)*(1 + coth(x))^3 + 8*log(sinh(x))]
    @test_int [(1 + coth(x))^3, x, 3, 4*x - 2*coth(x) - (1/2)*(1 + coth(x))^2 + 4*log(sinh(x))]
    @test_int [(1 + coth(x))^2, x, 2, 2*x - coth(x) + 2*log(sinh(x))]
    @test_int [1/(1 + coth(x)), x, 2, x/2 - 1/(2*(1 + coth(x)))]
    @test_int [1/(1 + coth(x))^2, x, 3, x/4 - 1/(4*(1 + coth(x))^2) - 1/(4*(1 + coth(x)))]
    @test_int [1/(1 + coth(x))^3, x, 4, x/8 - 1/(6*(1 + coth(x))^3) - 1/(8*(1 + coth(x))^2) - 1/(8*(1 + coth(x)))]
    @test_int [1/(1 + coth(x))^4, x, 5, x/16 - 1/(8*(1 + coth(x))^4) - 1/(12*(1 + coth(x))^3) - 1/(16*(1 + coth(x))^2) - 1/(16*(1 + coth(x)))]
    @test_int [1/(1 + coth(x))^5, x, 6, x/32 - 1/(10*(1 + coth(x))^5) - 1/(16*(1 + coth(x))^4) - 1/(24*(1 + coth(x))^3) - 1/(32*(1 + coth(x))^2) - 1/(32*(1 + coth(x)))]


    @test_int [(1 + coth(x))^(7/2), x, 5, 8*sqrt(2)*atanh(sqrt(1 + coth(x))/sqrt(2)) - 8*sqrt(1 + coth(x)) - (4/3)*(1 + coth(x))^(3/2) - (2/5)*(1 + coth(x))^(5/2)]
    @test_int [(1 + coth(x))^(5/2), x, 4, 4*sqrt(2)*atanh(sqrt(1 + coth(x))/sqrt(2)) - 4*sqrt(1 + coth(x)) - (2/3)*(1 + coth(x))^(3/2)]
    @test_int [(1 + coth(x))^(3/2), x, 3, 2*sqrt(2)*atanh(sqrt(1 + coth(x))/sqrt(2)) - 2*sqrt(1 + coth(x))]
    @test_int [(1 + coth(x))^(1/2), x, 2, sqrt(2)*atanh(sqrt(1 + coth(x))/sqrt(2))]
    @test_int [1/(1 + coth(x))^(1/2), x, 3, atanh(sqrt(1 + coth(x))/sqrt(2))/sqrt(2) - 1/sqrt(1 + coth(x))]
    @test_int [1/(1 + coth(x))^(3/2), x, 4, atanh(sqrt(1 + coth(x))/sqrt(2))/(2*sqrt(2)) - 1/(3*(1 + coth(x))^(3/2)) - 1/(2*sqrt(1 + coth(x)))]
    @test_int [1/(1 + coth(x))^(5/2), x, 5, atanh(sqrt(1 + coth(x))/sqrt(2))/(4*sqrt(2)) - 1/(5*(1 + coth(x))^(5/2)) - 1/(6*(1 + coth(x))^(3/2)) - 1/(4*sqrt(1 + coth(x)))]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 /= 0=#


    @test_int [(a + b*coth(c + d*x))^5, x, 5, a*(a^4 + 10*a^2*b^2 + 5*b^4)*x - (4*a*b^2*(a^2 + b^2)*coth(c + d*x))/d - (b*(3*a^2 + b^2)*(a + b*coth(c + d*x))^2)/(2*d) - (2*a*b*(a + b*coth(c + d*x))^3)/(3*d) - (b*(a + b*coth(c + d*x))^4)/(4*d) + (b*(5*a^4 + 10*a^2*b^2 + b^4)*log(sinh(c + d*x)))/d]
    @test_int [(a + b*coth(c + d*x))^4, x, 4, (a^4 + 6*a^2*b^2 + b^4)*x - (b^2*(3*a^2 + b^2)*coth(c + d*x))/d - (a*b*(a + b*coth(c + d*x))^2)/d - (b*(a + b*coth(c + d*x))^3)/(3*d) + (4*a*b*(a^2 + b^2)*log(sinh(c + d*x)))/d]
    @test_int [(a + b*coth(c + d*x))^3, x, 3, a*(a^2 + 3*b^2)*x - (2*a*b^2*coth(c + d*x))/d - (b*(a + b*coth(c + d*x))^2)/(2*d) + (b*(3*a^2 + b^2)*log(sinh(c + d*x)))/d]
    @test_int [(a + b*coth(c + d*x))^2, x, 2, (a^2 + b^2)*x - (b^2*coth(c + d*x))/d + (2*a*b*log(sinh(c + d*x)))/d]
    @test_int [1/(a + b*coth(c + d*x)),x, 2, (a*x)/(a^2 - b^2) - (b*log(b*cosh(c + d*x) + a*sinh(c + d*x)))/((a^2 - b^2)*d)]
    @test_int [1/(a + b*coth(c + d*x))^2,x, 3, ((a^2 + b^2)*x)/(a^2 - b^2)^2 + b/((a^2 - b^2)*d*(a + b*coth(c + d*x))) - (2*a*b*log(b*cosh(c + d*x) + a*sinh(c + d*x)))/((a^2 - b^2)^2*d)]
    @test_int [1/(a + b*coth(c + d*x))^3,x, 4, (a*(a^2 + 3*b^2)*x)/(a^2 - b^2)^3 + b/(2*(a^2 - b^2)*d*(a + b*coth(c + d*x))^2) + (2*a*b)/((a^2 - b^2)^2*d*(a + b*coth(c + d*x))) - (b*(3*a^2 + b^2)*log(b*cosh(c + d*x) + a*sinh(c + d*x)))/((a^2 - b^2)^3*d)]
    @test_int [1/(a + b*coth(c + d*x))^4,x, 5, ((a^4 + 6*a^2*b^2 + b^4)*x)/(a^2 - b^2)^4 + b/(3*(a^2 - b^2)*d*(a + b*coth(c + d*x))^3) + (a*b)/((a^2 - b^2)^2*d*(a + b*coth(c + d*x))^2) + (b*(3*a^2 + b^2))/((a^2 - b^2)^3*d*(a + b*coth(c + d*x))) - (4*a*b*(a^2 + b^2)*log(b*cosh(c + d*x) + a*sinh(c + d*x)))/((a^2 - b^2)^4*d)]

    @test_int [1/(4 + 6*coth(c + d*x)), x, 2, -(x/5) + (3*log(3*cosh(c + d*x) + 2*sinh(c + d*x)))/(10*d)]
    @test_int [1/(4 - 6*coth(c + d*x)), x, 2, -(x/5) - (3*log(3*cosh(c + d*x) - 2*sinh(c + d*x)))/(10*d)]


    @test_int [sqrt(a + b*coth(c + d*x)), x, 5, -((sqrt(a - b)*atanh(sqrt(a + b*coth(c + d*x))/sqrt(a - b)))/d) + (sqrt(a + b)*atanh(sqrt(a + b*coth(c + d*x))/sqrt(a + b)))/d]
    @test_int [1/sqrt(a + b*coth(c + d*x)), x, 5, -(atanh(sqrt(a + b*coth(c + d*x))/sqrt(a - b))/(sqrt(a - b)*d)) + atanh(sqrt(a + b*coth(c + d*x))/sqrt(a + b))/(sqrt(a + b)*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csch(c+d*x)^m*(a+b*coth(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 = 0=#


    @test_int [sinh(x)^4/(1 + coth(x)), x, 4, (5*x)/16 + 1/(32*(1 - coth(x))^2) + 1/(8*(1 - coth(x))) - 1/(24*(1 + coth(x))^3) - 3/(32*(1 + coth(x))^2) - 3/(16*(1 + coth(x)))]
    @test_int [sinh(x)^3/(1 + coth(x)), x, 3, -((4*cosh(x))/5) + (4*cosh(x)^3)/15 - sinh(x)^3/(5*(1 + coth(x)))]
    @test_int [sinh(x)^2/(1 + coth(x)), x, 4, -((3*x)/8) - 1/(8*(1 - coth(x))) + 1/(8*(1 + coth(x))^2) + 1/(4*(1 + coth(x)))]
    @test_int [sinh(x)^1/(1 + coth(x)), x, 2, (2*cosh(x))/3 - sinh(x)/(3*(1 + coth(x)))]
    @test_int [csch(x)^1/(1 + coth(x)), x, 1, -(csch(x)/(1 + coth(x)))]
    @test_int [csch(x)^2/(1 + coth(x)), x, 2, -log(1 + coth(x))]
    @test_int [csch(x)^3/(1 + coth(x)), x, 2, atanh(cosh(x)) - csch(x)]
    @test_int [csch(x)^4/(1 + coth(x)), x, 2, coth(x) - coth(x)^2/2]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 /= 0=#


    @test_int [sinh(x)^4/(a + b*coth(x)), x, 5, -(((3*a^2 + 9*a*b + 8*b^2)*log(1 - coth(x)))/(16*(a + b)^3)) + ((3*a^2 - 9*a*b + 8*b^2)*log(1 + coth(x)))/(16*(a - b)^3) - (b^5*log(a + b*coth(x)))/(a^2 - b^2)^3 - ((4*b^3 - a*(7 - (3*a^2)/b^2)*b^2*coth(x))*sinh(x)^2)/(8*(a^2 - b^2)^2) - ((b - a*coth(x))*sinh(x)^4)/(4*(a^2 - b^2))]
    @test_int [sinh(x)^3/(a + b*coth(x)), x, 9, -((b^4*atanh(((b + a*coth(x))*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2)) + (a*b^2*cosh(x))/(a^2 - b^2)^2 - (a*cosh(x))/(a^2 - b^2) + (a*cosh(x)^3)/(3*(a^2 - b^2)) - (b^3*sinh(x))/(a^2 - b^2)^2 - (b*sinh(x)^3)/(3*(a^2 - b^2))]
    @test_int [sinh(x)^2/(a + b*coth(x)), x, 4, ((a + 2*b)*log(1 - coth(x)))/(4*(a + b)^2) - ((a - 2*b)*log(1 + coth(x)))/(4*(a - b)^2) - (b^3*log(a + b*coth(x)))/(a^2 - b^2)^2 - ((b - a*coth(x))*sinh(x)^2)/(2*(a^2 - b^2))]
    @test_int [sinh(x)^1/(a + b*coth(x)), x, 5, -((b^2*atanh(((b + a*coth(x))*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2)) + (a*cosh(x))/(a^2 - b^2) - (b*sinh(x))/(a^2 - b^2)]
    @test_int [csch(x)^1/(a + b*coth(x)), x, 2, -(atanh(((b + a*coth(x))*sinh(x))/sqrt(a^2 - b^2))/sqrt(a^2 - b^2))]
    @test_int [csch(x)^2/(a + b*coth(x)), x, 2, -(log(a + b*coth(x))/b)]
    @test_int [csch(x)^3/(a + b*coth(x)), x, 5, (a*atanh(cosh(x)))/b^2 - (sqrt(a^2 - b^2)*atanh(((b + a*coth(x))*sinh(x))/sqrt(a^2 - b^2)))/b^2 - csch(x)/b]
    @test_int [csch(x)^4/(a + b*coth(x)), x, 3, (a*coth(x))/b^2 - coth(x)^2/(2*b) - ((a^2 - b^2)*log(a + b*coth(x)))/b^3]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(c+d*x)^m*(a+b*coth(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 = 0=#


    @test_int [cosh(x)^4/(1 + coth(x)), x, 5, x/16 + 1/(32*(1 - coth(x))^2) - 1/(8*(1 - coth(x))) - 1/(24*(1 + coth(x))^3) + 5/(32*(1 + coth(x))^2) - 3/(16*(1 + coth(x)))]
    @test_int [cosh(x)^3/(1 + coth(x)), x, 9, cosh(x)^5/5 - sinh(x)^3/3 - sinh(x)^5/5]
    @test_int [cosh(x)^2/(1 + coth(x)), x, 5, x/8 - 1/(8*(1 - coth(x))) + 1/(8*(1 + coth(x))^2) - 1/(4*(1 + coth(x)))]
    @test_int [cosh(x)^1/(1 + coth(x)), x, 8, cosh(x)^3/3 - sinh(x)^3/3]
    @test_int [sech(x)^1/(1 + coth(x)), x, 8, atan(sinh(x)) + cosh(x) - sinh(x)]
    @test_int [sech(x)^2/(1 + coth(x)), x, 3, -log(1 + coth(x)) - log(tanh(x)) + tanh(x)]
    @test_int [sech(x)^3/(1 + coth(x)), x, 8, (-(1/2))*atan(sinh(x)) - sech(x) + (1/2)*sech(x)*tanh(x)]
    @test_int [sech(x)^4/(1 + coth(x)), x, 4, tanh(x)^2/2 - tanh(x)^3/3]


    @test_int [sech(x)^2*sqrt(1 + coth(x)), x, 4, atanh(sqrt(1 + coth(x))) + sqrt(1 + coth(x))*tanh(x)]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 /= 0=#


    @test_int [cosh(x)^4/(a + b*coth(x)), x, 5, -((a*(3*a + b)*log(1 - coth(x)))/(16*(a + b)^3)) + (a*(3*a - b)*log(1 + coth(x)))/(16*(a - b)^3) - (a^4*b*log(a + b*coth(x)))/(a^2 - b^2)^3 - ((4*b*(2*a^2 - b^2) - a*(5*a^2 - b^2)*coth(x))*sinh(x)^2)/(8*(a^2 - b^2)^2) - ((b - a*coth(x))*sinh(x)^4)/(4*(a^2 - b^2))]
    @test_int [cosh(x)^3/(a + b*coth(x)), x, 10, (a^3*b*atanh((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(5/2) - (a^2*b*cosh(x))/(a^2 - b^2)^2 - (b*cosh(x)^3)/(3*(a^2 - b^2)) + (a*b^2*sinh(x))/(a^2 - b^2)^2 + (a*sinh(x))/(a^2 - b^2) + (a*sinh(x)^3)/(3*(a^2 - b^2))]
    @test_int [cosh(x)^2/(a + b*coth(x)), x, 4, -((a*log(1 - coth(x)))/(4*(a + b)^2)) + (a*log(1 + coth(x)))/(4*(a - b)^2) - (a^2*b*log(a + b*coth(x)))/(a^2 - b^2)^2 - ((b - a*coth(x))*sinh(x)^2)/(2*(a^2 - b^2))]
    @test_int [cosh(x)^1/(a + b*coth(x)), x, 6, (a*b*atanh((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))/(a^2 - b^2)^(3/2) - (b*cosh(x))/(a^2 - b^2) + (a*sinh(x))/(a^2 - b^2)]
    @test_int [sech(x)^1/(a + b*coth(x)), x, 6, atan(sinh(x))/a + (b*atanh((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))/(a*sqrt(a^2 - b^2))]
    @test_int [sech(x)^2/(a + b*coth(x)), x, 3, -((b*log(a + b*coth(x)))/a^2) - (b*log(tanh(x)))/a^2 + tanh(x)/a]
    @test_int [sech(x)^3/(a + b*coth(x)), x, 9, atan(sinh(x))/(2*a) - (b^2*atan(sinh(x)))/a^3 + (b*sqrt(a^2 - b^2)*atanh((a*cosh(x) + b*sinh(x))/sqrt(a^2 - b^2)))/a^3 - (b*sech(x))/a^2 + (sech(x)*tanh(x))/(2*a)]
    @test_int [sech(x)^4/(a + b*coth(x)), x, 3, -((b*(a^2 - b^2)*log(a + b*coth(x)))/a^4) - (b*(a^2 - b^2)*log(tanh(x)))/a^4 + ((a^2 - b^2)*tanh(x))/a^3 + (b*tanh(x)^2)/(2*a^2) - tanh(x)^3/(3*a)]


    #= Following*hangs*Mathematica: =# 
    @test_int [sech(x)/(im + 2*coth(x)), x, 6, (-im)*atan(sinh(x)) - (2*atanh((cosh(x) - 2*im*sinh(x))/sqrt(5)))/sqrt(5)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(c+d*x)^m*(a+b*coth(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 = 0=#


    @test_int [tanh(x)^4/(1 + coth(x)), x, 6, (5*x)/2 - 2*log(cosh(x)) - (5*tanh(x))/2 + tanh(x)^2 - (5*tanh(x)^3)/6 + tanh(x)^3/(2*(1 + coth(x)))]
    @test_int [tanh(x)^3/(1 + coth(x)), x, 5, -((3*x)/2) + 2*log(cosh(x)) + (3*tanh(x))/2 - tanh(x)^2 + tanh(x)^2/(2*(1 + coth(x)))]
    @test_int [tanh(x)^2/(1 + coth(x)), x, 4, (3*x)/2 - log(cosh(x)) - (3*tanh(x))/2 + tanh(x)/(2*(1 + coth(x)))]
    @test_int [tanh(x)^1/(1 + coth(x)), x, 4, -(x/2) + 1/(2*(1 + coth(x))) + log(cosh(x))]
    @test_int [tanh(x)^0/(1 + coth(x)), x, 2, x/2 - 1/(2*(1 + coth(x)))]
    @test_int [coth(x)^1/(1 + coth(x)), x, 2, x/2 + 1/(2*(1 + coth(x)))]
    @test_int [coth(x)^2/(1 + coth(x)), x, 3, -(x/2) - 1/(2*(1 + coth(x))) + log(sinh(x))]
    @test_int [coth(x)^3/(1 + coth(x)), x, 3, (3*x)/2 - (3*coth(x))/2 + coth(x)^2/(2*(1 + coth(x))) - log(sinh(x))]
    @test_int [coth(x)^4/(1 + coth(x)), x, 4, -((3*x)/2) + (3*coth(x))/2 - coth(x)^2 + coth(x)^3/(2*(1 + coth(x))) + 2*log(sinh(x))]


    @test_int [coth(x)*(1 + coth(x))^(3/2), x, 4, 2*sqrt(2)*atanh(sqrt(1 + coth(x))/sqrt(2)) - 2*sqrt(1 + coth(x)) - (2/3)*(1 + coth(x))^(3/2)]
    @test_int [coth(x)*sqrt(1 + coth(x)), x, 3, sqrt(2)*atanh(sqrt(1 + coth(x))/sqrt(2)) - 2*sqrt(1 + coth(x))]
    @test_int [coth(x)/sqrt(1 + coth(x)), x, 3, atanh(sqrt(1 + coth(x))/sqrt(2))/sqrt(2) + 1/sqrt(1 + coth(x))]
    @test_int [coth(x)/(1 + coth(x))^(3/2), x, 4, atanh(sqrt(1 + coth(x))/sqrt(2))/(2*sqrt(2)) + 1/(3*(1 + coth(x))^(3/2)) - 1/(2*sqrt(1 + coth(x)))]


    @test_int [coth(x)^2*(1 + coth(x))^(3/2), x, 4, 2*sqrt(2)*atanh(sqrt(1 + coth(x))/sqrt(2)) - 2*sqrt(1 + coth(x)) - (2/5)*(1 + coth(x))^(5/2)]
    @test_int [coth(x)^2*sqrt(1 + coth(x)), x, 3, sqrt(2)*atanh(sqrt(1 + coth(x))/sqrt(2)) - (2/3)*(1 + coth(x))^(3/2)]
    @test_int [coth(x)^2/sqrt(1 + coth(x)), x, 4, atanh(sqrt(1 + coth(x))/sqrt(2))/sqrt(2) - 1/sqrt(1 + coth(x)) - 2*sqrt(1 + coth(x))]
    @test_int [coth(x)^2/(1 + coth(x))^(3/2), x, 4, atanh(sqrt(1 + coth(x))/sqrt(2))/(2*sqrt(2)) - 1/(3*(1 + coth(x))^(3/2)) + 3/(2*sqrt(1 + coth(x)))]


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2 /= 0=#


    @test_int [tanh(x)^4/(a + b*coth(x)), x, 6, (a*x)/(a^2 - b^2) - (b*(a^2 + b^2)*log(cosh(x)))/a^4 - (b^5*log(b*cosh(x) + a*sinh(x)))/(a^4*(a^2 - b^2)) - ((a^2 + b^2)*tanh(x))/a^3 + (b*tanh(x)^2)/(2*a^2) - tanh(x)^3/(3*a)]
    @test_int [tanh(x)^3/(a + b*coth(x)), x, 5, -((b*x)/(a^2 - b^2)) + ((a^2 + b^2)*log(cosh(x)))/a^3 + (b^4*log(b*cosh(x) + a*sinh(x)))/(a^3*(a^2 - b^2)) + (b*tanh(x))/a^2 - tanh(x)^2/(2*a)]
    @test_int [tanh(x)^2/(a + b*coth(x)), x, 4, (a*x)/(a^2 - b^2) - (b*log(cosh(x)))/a^2 - (b^3*log(b*cosh(x) + a*sinh(x)))/(a^2*(a^2 - b^2)) - tanh(x)/a]
    @test_int [tanh(x)^1/(a + b*coth(x)), x, 3, -((b*x)/(a^2 - b^2)) + log(cosh(x))/a + (b^2*log(b*cosh(x) + a*sinh(x)))/(a*(a^2 - b^2))]
    @test_int [tanh(x)^0/(a + b*coth(x)), x, 2, (a*x)/(a^2 - b^2) - (b*log(b*cosh(x) + a*sinh(x)))/(a^2 - b^2)]
    @test_int [coth(x)^1/(a + b*coth(x)), x, 2, -((b*x)/(a^2 - b^2)) + (a*log(b*cosh(x) + a*sinh(x)))/(a^2 - b^2)]
    @test_int [coth(x)^2/(a + b*coth(x)), x, 4, -((a*x)/b^2) + (a^3*x)/(b^2*(a^2 - b^2)) + log(sinh(x))/b - (a^2*log(b*cosh(x) + a*sinh(x)))/(b*(a^2 - b^2))]
    @test_int [coth(x)^3/(a + b*coth(x)), x, 5, -((b*x)/(a^2 - b^2)) - coth(x)/b + (a^3*log(a + b*coth(x)))/(b^2*(a^2 - b^2)) + (a*log(sinh(x)))/(a^2 - b^2)]
    @test_int [coth(x)^4/(a + b*coth(x)), x, 6, (a*x)/(a^2 - b^2) + (a*coth(x))/b^2 - coth(x)^2/(2*b) - (a^4*log(a + b*coth(x)))/(b^3*(a^2 - b^2)) - (b*log(sinh(x)))/(a^2 - b^2)]
    @test_int [coth(x)^5/(a + b*coth(x)), x, 7, -((b*x)/(a^2 - b^2)) - ((a^2 + b^2)*coth(x))/b^3 + (a*coth(x)^2)/(2*b^2) - coth(x)^3/(3*b) + (a^5*log(a + b*coth(x)))/(b^4*(a^2 - b^2)) + (a*log(sinh(x)))/(a^2 - b^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*csch(c+d*x)^2*(a+b*coth(c+d*x)^n)^p=#


    @test_int [x*csch(x)^2/(a + b*coth(x))^2, x, 3, -((a*x)/(b*(a^2 - b^2))) + x/(b*(a + b*coth(x))) + log(b*cosh(x) + a*sinh(x))/(a^2 - b^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*coth(a+b*log(c*x^n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*coth(a+2*log(x))^p=#


    @test_int [x^3*coth(a + 2*log(x)), x, 4, x^4/4 + log(1 - ℯ^(2*a)*x^4)/(2*ℯ^(2*a))]
    @test_int [x^2*coth(a + 2*log(x)), x, 5, x^3/3 + atan(ℯ^(a/2)*x)/ℯ^((3*a)/2) - atanh(ℯ^(a/2)*x)/ℯ^((3*a)/2)]
    @test_int [x^1*coth(a + 2*log(x)), x, 4, x^2/2 - atanh(ℯ^a*x^2)/ℯ^a]
    @test_int [x^0*coth(a + 2*log(x)), x, 5, x - atan(ℯ^(a/2)*x)/ℯ^(a/2) - atanh(ℯ^(a/2)*x)/ℯ^(a/2)]
    @test_int [coth(a + 2*log(x))/x^1, x, 2, log(sinh(a + 2*log(x)))/2]
    @test_int [coth(a + 2*log(x))/x^2, x, 5, x^(-1) + ℯ^(a/2)*atan(ℯ^(a/2)*x) - ℯ^(a/2)*atanh(ℯ^(a/2)*x)]
    @test_int [coth(a + 2*log(x))/x^3, x, 4, 1/(2*x^2) - ℯ^a*atanh(ℯ^a*x^2)]


    @test_int [x^3*coth(a + 2*log(x))^2, x, 4, x^4/4 + 1/(ℯ^(2*a)*(1 - ℯ^(2*a)*x^4)) + log(1 - ℯ^(2*a)*x^4)/ℯ^(2*a)]
    @test_int [x^2*coth(a + 2*log(x))^2, x, 6, x^3/3 + x^3/(1 - ℯ^(2*a)*x^4) + (3*atan(ℯ^(a/2)*x))/(2*ℯ^((3*a)/2)) - (3*atanh(ℯ^(a/2)*x))/(2*ℯ^((3*a)/2))]
    @test_int [x^1*coth(a + 2*log(x))^2, x, 5, x^2/2 + x^2/(1 - ℯ^(2*a)*x^4) - atanh(ℯ^a*x^2)/ℯ^a]
    @test_int [x^0*coth(a + 2*log(x))^2, x, 7, x + x/(1 - ℯ^(2*a)*x^4) - atan(ℯ^(a/2)*x)/(2*ℯ^(a/2)) - atanh(ℯ^(a/2)*x)/(2*ℯ^(a/2))]
    @test_int [coth(a + 2*log(x))^2/x^1, x, 3, -coth(a + 2*log(x))/2 + log(x)]
    @test_int [coth(a + 2*log(x))^2/x^2, x, 6, -(1/(x*(1 - ℯ^(2*a)*x^4))) + (2*ℯ^(2*a)*x^3)/(1 - ℯ^(2*a)*x^4) - (1/2)*ℯ^(a/2)*atan(ℯ^(a/2)*x) + (1/2)*ℯ^(a/2)*atanh(ℯ^(a/2)*x)]
    @test_int [coth(a + 2*log(x))^2/x^3, x, 5, -(1/(2*x^2*(1 - ℯ^(2*a)*x^4))) + (3*ℯ^(2*a)*x^2)/(2*(1 - ℯ^(2*a)*x^4)) + ℯ^a*atanh(ℯ^a*x^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*coth(a+b*log(x))^p*with*m*symbolic=#


    @test_int [(e*x)^m*coth(a + 2*log(x))^1, x, 3, (e*x)^(1 + m)/(e*(1 + m)) - (2*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/4, (5 + m)/4, ℯ^(2*a)*x^4))/(e*(1 + m))]
    @test_int [(e*x)^m*coth(a + 2*log(x))^2, x, 4, (e*x)^(1 + m)/(e*(1 + m)) + (e*x)^(1 + m)/(e*(1 - ℯ^(2*a)*x^4)) - ((e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/4, (5 + m)/4, ℯ^(2*a)*x^4))/e]
    @test_int [(e*x)^m*coth(a + 2*log(x))^3, x, 5, ((3 + m)*(5 + m)*(e*x)^(1 + m))/(8*e*(1 + m)) - ((e*x)^(1 + m)*(1 + ℯ^(2*a)*x^4)^2)/(4*e*(1 - ℯ^(2*a)*x^4)^2) - ((e*x)^(1 + m)*(ℯ^(2*a)*(3 - m) - ℯ^(4*a)*(5 + m)*x^4))/(ℯ^(2*a)*(8*e*(1 - ℯ^(2*a)*x^4))) - ((9 + 2*m + m^2)*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/4, (5 + m)/4, ℯ^(2*a)*x^4))/(4*e*(1 + m))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*coth(a+b*log(x))^p*with*p*symbolic=#
    #==#


    @test_int [coth(a + b*log(x))^p, x, 3, (x*(-1 - ℯ^(2*a)*x^(2*b))^p*AppellF1(1/(2*b), p, -p, (1/2)*(2 + 1/b), ℯ^(2*a)*x^(2*b), (-ℯ^(2*a))*x^(2*b)))/(1 + ℯ^(2*a)*x^(2*b))^p]
    @test_int [(e*x)^m*coth(a + b*log(x))^p, x, 3, ((e*x)^(1 + m)*(-1 - ℯ^(2*a)*x^(2*b))^p*AppellF1((1 + m)/(2*b), p, -p, 1 + (1 + m)/(2*b), ℯ^(2*a)*x^(2*b), (-ℯ^(2*a))*x^(2*b)))/((1 + ℯ^(2*a)*x^(2*b))^p*(e*(1 + m)))]


    @test_int [coth(a + 1/2*log(x))^p, x, 2, -(((-1 - ℯ^(2*a)*x)^(1 + p)*Hypergeometric2F1(p, 1 + p, 2 + p, (1/2)*(1 + ℯ^(2*a)*x)))/(2^p*ℯ^(2*a)*(1 + p)))]
    @test_int [coth(a + 1/4*log(x))^p, x, 4, ((-1 - ℯ^(2*a)*sqrt(x))^(1 + p)*(1 - ℯ^(2*a)*sqrt(x))^(1 - p))/ℯ^(4*a) - (2^(1 - p)*p*(-1 - ℯ^(2*a)*sqrt(x))^(1 + p)*Hypergeometric2F1(p, 1 + p, 2 + p, (1/2)*(1 + ℯ^(2*a)*sqrt(x))))/(ℯ^(4*a)*(1 + p))]
    @test_int [coth(a + 1/6*log(x))^p, x, 5, (p*(-1 - ℯ^(2*a)*x^(1/3))^(1 + p)*(1 - ℯ^(2*a)*x^(1/3))^(1 - p))/ℯ^(6*a) + ((-1 - ℯ^(2*a)*x^(1/3))^(1 + p)*(1 - ℯ^(2*a)*x^(1/3))^(1 - p)*x^(1/3))/ℯ^(4*a) - ((1 + 2*p^2)*(-1 - ℯ^(2*a)*x^(1/3))^(1 + p)*Hypergeometric2F1(p, 1 + p, 2 + p, (1/2)*(1 + ℯ^(2*a)*x^(1/3))))/(2^p*ℯ^(6*a)*(1 + p))]
    @test_int [coth(a + 1/8*log(x))^p, x, 5, ((1/3)*(-1 - ℯ^(2*a)*x^(1/4))^(1 + p)*(1 - ℯ^(2*a)*x^(1/4))^(1 - p)*(ℯ^(4*a)*(3 + 2*p^2) + 2*ℯ^(6*a)*p*x^(1/4)))/ℯ^(12*a) + ((-1 - ℯ^(2*a)*x^(1/4))^(1 + p)*(1 - ℯ^(2*a)*x^(1/4))^(1 - p)*sqrt(x))/ℯ^(4*a) - (2^(2 - p)*p*(2 + p^2)*(-1 - ℯ^(2*a)*x^(1/4))^(1 + p)*Hypergeometric2F1(p, 1 + p, 2 + p, (1/2)*(1 + ℯ^(2*a)*x^(1/4))))/(ℯ^(8*a)*(3*(1 + p)))]


    @test_int [coth(a + 1*log(x))^p, x, 3, (x*(-1 - ℯ^(2*a)*x^2)^p*AppellF1(1/2, p, -p, 3/2, ℯ^(2*a)*x^2, (-ℯ^(2*a))*x^2))/(1 + ℯ^(2*a)*x^2)^p]
    @test_int [coth(a + 2*log(x))^p, x, 3, (x*(-1 - ℯ^(2*a)*x^4)^p*AppellF1(1/4, p, -p, 5/4, ℯ^(2*a)*x^4, (-ℯ^(2*a))*x^4))/(1 + ℯ^(2*a)*x^4)^p]
    @test_int [coth(a + 3*log(x))^p, x, 3, (x*(-1 - ℯ^(2*a)*x^6)^p*AppellF1(1/6, p, -p, 7/6, ℯ^(2*a)*x^6, (-ℯ^(2*a))*x^6))/(1 + ℯ^(2*a)*x^6)^p]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*coth(a+b*log(c*x^n))^p=#


    @test_int [x^3*coth(d*(a + b*log(c*x^n))), x, 4, x^4/4 - (x^4*Hypergeometric2F1(1, 2/(b*d*n), 1 + 2/(b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/2]
    @test_int [x^2*coth(d*(a + b*log(c*x^n))), x, 4, x^3/3 - (2*x^3*Hypergeometric2F1(1, 3/(2*b*d*n), 1 + 3/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/3]
    @test_int [x^1*coth(d*(a + b*log(c*x^n))), x, 4, x^2/2 - x^2*Hypergeometric2F1(1, 1/(b*d*n), 1 + 1/(b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d))]
    @test_int [x^0*coth(d*(a + b*log(c*x^n))), x, 4, x - 2*x*Hypergeometric2F1(1, 1/(2*b*d*n), 1 + 1/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d))]
    @test_int [coth(d*(a + b*log(c*x^n)))/x^1, x, 2, log(sinh(a*d + b*d*log(c*x^n)))/(b*d*n)]
    @test_int [coth(d*(a + b*log(c*x^n)))/x^2, x, 4, -(1/x) + (2*Hypergeometric2F1(1, -(1/(2*b*d*n)), 1 - 1/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/x]
    @test_int [coth(d*(a + b*log(c*x^n)))/x^3, x, 4, -1/(2*x^2) + Hypergeometric2F1(1, -(1/(b*d*n)), 1 - 1/(b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d))/x^2]


    @test_int [x^3*coth(d*(a + b*log(c*x^n)))^2, x, 5, (1/4)*(1 + 4/(b*d*n))*x^4 + (x^4*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*x^4*Hypergeometric2F1(1, 2/(b*d*n), 1 + 2/(b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n)]
    @test_int [x^2*coth(d*(a + b*log(c*x^n)))^2, x, 5, (1/3)*(1 + 3/(b*d*n))*x^3 + (x^3*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*x^3*Hypergeometric2F1(1, 3/(2*b*d*n), 1 + 3/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n)]
    @test_int [x^1*coth(d*(a + b*log(c*x^n)))^2, x, 5, (1/2)*(1 + 2/(b*d*n))*x^2 + (x^2*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*x^2*Hypergeometric2F1(1, 1/(b*d*n), 1 + 1/(b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n)]
    @test_int [x^0*coth(d*(a + b*log(c*x^n)))^2, x, 5, (1 + 1/(b*d*n))*x + (x*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*x*Hypergeometric2F1(1, 1/(2*b*d*n), 1 + 1/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n)]
    @test_int [coth(d*(a + b*log(c*x^n)))^2/x^1, x, 3, -(coth(a*d + b*d*log(c*x^n))/(b*d*n)) + log(x)]
    @test_int [coth(d*(a + b*log(c*x^n)))^2/x^2, x, 5, -((1 - 1/(b*d*n))/x) + (1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))/(b*d*n*x*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*Hypergeometric2F1(1, -(1/(2*b*d*n)), 1 - 1/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*x)]
    @test_int [coth(d*(a + b*log(c*x^n)))^2/x^3, x, 5, (2 - b*d*n)/(2*b*d*n*x^2) + (1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))/(b*d*n*x^2*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*Hypergeometric2F1(1, -(1/(b*d*n)), 1 - 1/(b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*n*x^2)]


    @test_int [coth(a + b*log(c*x^n))^3/x, x, 3, -(coth(a + b*log(c*x^n))^2/(2*b*n)) + log(sinh(a + b*log(c*x^n)))/(b*n)]
    @test_int [coth(a + b*log(c*x^n))^4/x, x, 4, -(coth(a + b*log(c*x^n))/(b*n)) - coth(a + b*log(c*x^n))^3/(3*b*n) + log(x)]
    @test_int [coth(a + b*log(c*x^n))^5/x, x, 4, -(coth(a + b*log(c*x^n))^2/(2*b*n)) - coth(a + b*log(c*x^n))^4/(4*b*n) + log(sinh(a + b*log(c*x^n)))/(b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*coth(a+b*log(c*x^n))^p*with*m*symbolic=#


    @test_int [(e*x)^m*coth(d*(a + b*log(c*x^n)))^1, x, 4, (e*x)^(1 + m)/(e*(1 + m)) - (2*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/(2*b*d*n), 1 + (1 + m)/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(e*(1 + m))]
    @test_int [(e*x)^m*coth(d*(a + b*log(c*x^n)))^2, x, 5, ((1 + m + b*d*n)*(e*x)^(1 + m))/(b*d*e*(1 + m)*n) + ((e*x)^(1 + m)*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*e*n*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))) - (2*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/(2*b*d*n), 1 + (1 + m)/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b*d*e*n)]
    @test_int [(e*x)^m*coth(d*(a + b*log(c*x^n)))^3, x, 6, ((1 + m + b*d*n)*(1 + m + 2*b*d*n)*(e*x)^(1 + m))/(2*b^2*d^2*e*(1 + m)*n^2) - ((e*x)^(1 + m)*(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))^2)/(2*b*d*e*n*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))^2) + ((e*x)^(1 + m)*((ℯ^(2*a*d)*(1 + m - 2*b*d*n))/n + (ℯ^(4*a*d)*(1 + m + 2*b*d*n)*(c*x^n)^(2*b*d))/n))/(ℯ^(2*a*d)*(2*b^2*d^2*e*n*(1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d)))) - ((1 + 2*m + m^2 + 2*b^2*d^2*n^2)*(e*x)^(1 + m)*Hypergeometric2F1(1, (1 + m)/(2*b*d*n), 1 + (1 + m)/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d)))/(b^2*d^2*e*(1 + m)*n^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e*x)^m*coth(a+b*log(c*x^n))^p*with*p*symbolic=#


    @test_int [coth(d*(a + b*log(c*x^n)))^p, x, 4, (x*(-1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))^p*AppellF1(1/(2*b*d*n), p, -p, 1 + 1/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/(1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))^p]
    @test_int [(e*x)^m*coth(d*(a + b*log(c*x^n)))^p, x, 4, ((e*x)^(1 + m)*(-1 - ℯ^(2*a*d)*(c*x^n)^(2*b*d))^p*AppellF1((1 + m)/(2*b*d*n), p, -p, 1 + (1 + m)/(2*b*d*n), ℯ^(2*a*d)*(c*x^n)^(2*b*d), (-ℯ^(2*a*d))*(c*x^n)^(2*b*d)))/((1 + ℯ^(2*a*d)*(c*x^n)^(2*b*d))^p*(e*(1 + m)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*coth(a+b*log(c*x^n))^(p/2)=#


    @test_int [coth(a + b*log(c*x^n))^(5/2)/x, x, 7, -(atan(sqrt(coth(a + b*log(c*x^n))))/(b*n)) + atanh(sqrt(coth(a + b*log(c*x^n))))/(b*n) - (2*coth(a + b*log(c*x^n))^(3/2))/(3*b*n)]
    @test_int [coth(a + b*log(c*x^n))^(3/2)/x, x, 7, atan(sqrt(coth(a + b*log(c*x^n))))/(b*n) + atanh(sqrt(coth(a + b*log(c*x^n))))/(b*n) - (2*sqrt(coth(a + b*log(c*x^n))))/(b*n)]
    @test_int [sqrt(coth(a + b*log(c*x^n)))/x, x, 6, -(atan(sqrt(coth(a + b*log(c*x^n))))/(b*n)) + atanh(sqrt(coth(a + b*log(c*x^n))))/(b*n)]
    @test_int [1/(x*sqrt(coth(a + b*log(c*x^n)))), x, 6, atan(sqrt(coth(a + b*log(c*x^n))))/(b*n) + atanh(sqrt(coth(a + b*log(c*x^n))))/(b*n)]
    @test_int [1/(x*coth(a + b*log(c*x^n))^(3/2)), x, 7, -(atan(sqrt(coth(a + b*log(c*x^n))))/(b*n)) + atanh(sqrt(coth(a + b*log(c*x^n))))/(b*n) - 2/(b*n*sqrt(coth(a + b*log(c*x^n))))]
    @test_int [1/(x*coth(a + b*log(c*x^n))^(5/2)), x, 7, atan(sqrt(coth(a + b*log(c*x^n))))/(b*n) + atanh(sqrt(coth(a + b*log(c*x^n))))/(b*n) - 2/(3*b*n*coth(a + b*log(c*x^n))^(3/2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Hyper(d+e*x)^m*(a+b*coth(d+e*x)^2+c*coth(d+e*x)^4)^n=#


    @test_int [coth(x)^5/sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 8, ((b - 2*c)*atanh((b + 2*c*coth(x)^2)/(2*sqrt(c)*sqrt(a + b*coth(x)^2 + c*coth(x)^4))))/(4*c^(3/2)) + atanh((2*a + b + (b + 2*c)*coth(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*coth(x)^2 + c*coth(x)^4)))/(2*sqrt(a + b + c)) - sqrt(a + b*coth(x)^2 + c*coth(x)^4)/(2*c)]
    @test_int [coth(x)^3/sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 7, -(atanh((b + 2*c*coth(x)^2)/(2*sqrt(c)*sqrt(a + b*coth(x)^2 + c*coth(x)^4)))/(2*sqrt(c))) + atanh((2*a + b + (b + 2*c)*coth(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*coth(x)^2 + c*coth(x)^4)))/(2*sqrt(a + b + c))]
    @test_int [coth(x)/sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 4, atanh((2*a + b + (b + 2*c)*coth(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*coth(x)^2 + c*coth(x)^4)))/(2*sqrt(a + b + c))]
    @test_int [tanh(x)/sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 8, -(atanh((2*a + b*coth(x)^2)/(2*sqrt(a)*sqrt(a + b*coth(x)^2 + c*coth(x)^4)))/(2*sqrt(a))) + atanh((2*a + b + (b + 2*c)*coth(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*coth(x)^2 + c*coth(x)^4)))/(2*sqrt(a + b + c))]
    @test_int [tanh(x)^3/sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 11, -(atanh((2*a + b*coth(x)^2)/(2*sqrt(a)*sqrt(a + b*coth(x)^2 + c*coth(x)^4)))/(2*sqrt(a))) + (b*atanh((2*a + b*coth(x)^2)/(2*sqrt(a)*sqrt(a + b*coth(x)^2 + c*coth(x)^4))))/(4*a^(3/2)) + atanh((2*a + b + (b + 2*c)*coth(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*coth(x)^2 + c*coth(x)^4)))/(2*sqrt(a + b + c)) - (sqrt(a + b*coth(x)^2 + c*coth(x)^4)*tanh(x)^2)/(2*a)]


    #= [coth(x)^5*sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 0, 0] =#
    #= [coth(x)^3*sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 0, 0] =#
    @test_int [coth(x)*sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 8, -(((b + 2*c)*atanh((b + 2*c*coth(x)^2)/(2*sqrt(c)*sqrt(a + b*coth(x)^2 + c*coth(x)^4))))/(4*sqrt(c))) + (1/2)*sqrt(a + b + c)*atanh((2*a + b + (b + 2*c)*coth(x)^2)/(2*sqrt(a + b + c)*sqrt(a + b*coth(x)^2 + c*coth(x)^4))) - (1/2)*sqrt(a + b*coth(x)^2 + c*coth(x)^4)]
    #= [tanh(x)*sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 0, 0] =#
    #= [tanh(x)^3*sqrt(a + b*coth(x)^2 + c*coth(x)^4), x, 0, 0] =#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*ℯ^(a+b*x)*coth(c+d*x)^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*ℯ^(c*(a+b*x))*(coth(a*c+b*c*x)^2)^(m/2)=#


    @test_int [ℯ^(c*(a + b*x))*(coth(a*c + b*c*x)^2)^(5/2), x, 9, (ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(b*c) - (4*ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^4) + (26*ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(3*b*c*(1 - ℯ^(2*c*(a + b*x)))^3) - (55*ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(6*b*c*(1 - ℯ^(2*c*(a + b*x)))^2) + (25*ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(4*b*c*(1 - ℯ^(2*c*(a + b*x)))) - (15*atanh(ℯ^(c*(a + b*x)))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(4*b*c)]
    @test_int [ℯ^(c*(a + b*x))*(coth(a*c + b*c*x)^2)^(3/2), x, 8, (ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(b*c) - (2*ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))^2) + (3*ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(b*c*(1 - ℯ^(2*c*(a + b*x)))) - (3*atanh(ℯ^(c*(a + b*x)))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2), x, 4, (ℯ^(c*(a + b*x))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(b*c) - (2*atanh(ℯ^(c*(a + b*x)))*sqrt(coth(a*c + b*c*x)^2)*tanh(a*c + b*c*x))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))/sqrt(coth(a*c + b*c*x)^2), x, 4, (ℯ^(c*(a + b*x))*coth(a*c + b*c*x))/(b*c*sqrt(coth(a*c + b*c*x)^2)) - (2*atan(ℯ^(c*(a + b*x)))*coth(a*c + b*c*x))/(b*c*sqrt(coth(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(coth(a*c + b*c*x)^2)^(3/2), x, 8, (ℯ^(c*(a + b*x))*coth(a*c + b*c*x))/(b*c*sqrt(coth(a*c + b*c*x)^2)) - (2*ℯ^(c*(a + b*x))*coth(a*c + b*c*x))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^2*sqrt(coth(a*c + b*c*x)^2)) + (3*ℯ^(c*(a + b*x))*coth(a*c + b*c*x))/(b*c*(1 + ℯ^(2*c*(a + b*x)))*sqrt(coth(a*c + b*c*x)^2)) - (3*atan(ℯ^(c*(a + b*x)))*coth(a*c + b*c*x))/(b*c*sqrt(coth(a*c + b*c*x)^2))]
    @test_int [ℯ^(c*(a + b*x))/(coth(a*c + b*c*x)^2)^(5/2), x, 9, (ℯ^(c*(a + b*x))*coth(a*c + b*c*x))/(b*c*sqrt(coth(a*c + b*c*x)^2)) - (4*ℯ^(c*(a + b*x))*coth(a*c + b*c*x))/(b*c*(1 + ℯ^(2*c*(a + b*x)))^4*sqrt(coth(a*c + b*c*x)^2)) + (26*ℯ^(c*(a + b*x))*coth(a*c + b*c*x))/(3*b*c*(1 + ℯ^(2*c*(a + b*x)))^3*sqrt(coth(a*c + b*c*x)^2)) - (55*ℯ^(c*(a + b*x))*coth(a*c + b*c*x))/(6*b*c*(1 + ℯ^(2*c*(a + b*x)))^2*sqrt(coth(a*c + b*c*x)^2)) + (25*ℯ^(c*(a + b*x))*coth(a*c + b*c*x))/(4*b*c*(1 + ℯ^(2*c*(a + b*x)))*sqrt(coth(a*c + b*c*x)^2)) - (15*atan(ℯ^(c*(a + b*x)))*coth(a*c + b*c*x))/(4*b*c*sqrt(coth(a*c + b*c*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*that*are*function*of*coth(c+d*x)=#


    @test_int [sin(coth(a + b*x))^3, x, 19, -((3*CosIntegral(1 - coth(a + b*x))*sin(1))/(8*b)) - (3*CosIntegral(1 + coth(a + b*x))*sin(1))/(8*b) + (CosIntegral(3 - 3*coth(a + b*x))*sin(3))/(8*b) + (CosIntegral(3 + 3*coth(a + b*x))*sin(3))/(8*b) - (cos(3)*SinIntegral(3 - 3*coth(a + b*x)))/(8*b) + (3*cos(1)*SinIntegral(1 - coth(a + b*x)))/(8*b) + (3*cos(1)*SinIntegral(1 + coth(a + b*x)))/(8*b) - (cos(3)*SinIntegral(3 + 3*coth(a + b*x)))/(8*b)]
    @test_int [sin(coth(a + b*x))^2, x, 13, (cos(2)*CosIntegral(2 - 2*coth(a + b*x)))/(4*b) - (cos(2)*CosIntegral(2 + 2*coth(a + b*x)))/(4*b) - log(1 - coth(a + b*x))/(4*b) + log(1 + coth(a + b*x))/(4*b) + (sin(2)*SinIntegral(2 - 2*coth(a + b*x)))/(4*b) - (sin(2)*SinIntegral(2 + 2*coth(a + b*x)))/(4*b)]
    @test_int [sin(coth(a + b*x))^1, x, 9, -((CosIntegral(1 - coth(a + b*x))*sin(1))/(2*b)) - (CosIntegral(1 + coth(a + b*x))*sin(1))/(2*b) + (cos(1)*SinIntegral(1 - coth(a + b*x)))/(2*b) + (cos(1)*SinIntegral(1 + coth(a + b*x)))/(2*b)]
    @test_int [csc(coth(a + b*x))^1, x, 3, (1/2)*Unintegrable((csc(coth(a + b*x))*csch(a + b*x)^2)/(-1 + coth(a + b*x)), x) - (1/2)*Unintegrable((csc(coth(a + b*x))*csch(a + b*x)^2)/(1 + coth(a + b*x)), x)]


    @test_int [cos(coth(a + b*x))^3, x, 19, -((cos(3)*CosIntegral(3 - 3*coth(a + b*x)))/(8*b)) - (3*cos(1)*CosIntegral(1 - coth(a + b*x)))/(8*b) + (3*cos(1)*CosIntegral(1 + coth(a + b*x)))/(8*b) + (cos(3)*CosIntegral(3 + 3*coth(a + b*x)))/(8*b) - (sin(3)*SinIntegral(3 - 3*coth(a + b*x)))/(8*b) - (3*sin(1)*SinIntegral(1 - coth(a + b*x)))/(8*b) + (3*sin(1)*SinIntegral(1 + coth(a + b*x)))/(8*b) + (sin(3)*SinIntegral(3 + 3*coth(a + b*x)))/(8*b)]
    @test_int [cos(coth(a + b*x))^2, x, 13, -((cos(2)*CosIntegral(2 - 2*coth(a + b*x)))/(4*b)) + (cos(2)*CosIntegral(2 + 2*coth(a + b*x)))/(4*b) - log(1 - coth(a + b*x))/(4*b) + log(1 + coth(a + b*x))/(4*b) - (sin(2)*SinIntegral(2 - 2*coth(a + b*x)))/(4*b) + (sin(2)*SinIntegral(2 + 2*coth(a + b*x)))/(4*b)]
    @test_int [cos(coth(a + b*x))^1, x, 9, -((cos(1)*CosIntegral(1 - coth(a + b*x)))/(2*b)) + (cos(1)*CosIntegral(1 + coth(a + b*x)))/(2*b) - (sin(1)*SinIntegral(1 - coth(a + b*x)))/(2*b) + (sin(1)*SinIntegral(1 + coth(a + b*x)))/(2*b)]
    @test_int [sec(coth(a + b*x))^1, x, 3, (1/2)*Unintegrable((csch(a + b*x)^2*sec(coth(a + b*x)))/(-1 + coth(a + b*x)), x) - (1/2)*Unintegrable((csch(a + b*x)^2*sec(coth(a + b*x)))/(1 + coth(a + b*x)), x)]
    end
