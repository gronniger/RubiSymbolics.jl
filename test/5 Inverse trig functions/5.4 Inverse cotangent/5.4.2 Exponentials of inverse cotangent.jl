@testset "5.4.2 Exponentials of inverse cotangent" begin
    (a, c, n, x, ) = @variables a c n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*involving*exponentials*of*inverse*cotangent=#


    #= ::Section::Closed:: =#
    #=Integrands*involving*exponentials*of*inverse*cotangents=#


    @test_int [ℯ^acot(x), x, 2, (4/5 + (8*im)/5)*((-im + x)/x)^(1 + im/2)*((im + x)/x)^(-1 - im/2)*HypergeometricFunctions._₂F₁(1 + im/2, 2, 2 + im/2, (1 - im/x)/(1 + im/x))]


    @test_int [ℯ^acot(x)/(a + a*x^2), x, 1, -(ℯ^acot(x)/a)]
    @test_int [ℯ^acot(x)/(a + a*x^2)^2, x, 2, -((2*ℯ^acot(x))/(5*a^2)) - (ℯ^acot(x)*(1 - 2*x))/(5*a^2*(1 + x^2))]
    @test_int [ℯ^acot(x)/(a + a*x^2)^3, x, 3, -((24*ℯ^acot(x))/(85*a^3)) - (ℯ^acot(x)*(1 - 4*x))/(17*a^3*(1 + x^2)^2) - (12*ℯ^acot(x)*(1 - 2*x))/(85*a^3*(1 + x^2))]

    @test_int [ℯ^acot(x)/(a + a*x^2)^(3/2), x, 1, -((ℯ^acot(x)*(1 - x))/(2*a*sqrt(a + a*x^2)))]
    @test_int [ℯ^acot(x)/(a + a*x^2)^(5/2), x, 2, -((ℯ^acot(x)*(1 - 3*x))/(10*a*(a + a*x^2)^(3/2))) - (3*ℯ^acot(x)*(1 - x))/(10*a^2*sqrt(a + a*x^2))]
    @test_int [ℯ^acot(x)/(a + a*x^2)^(7/2), x, 3, -((ℯ^acot(x)*(1 - 5*x))/(26*a*(a + a*x^2)^(5/2))) - (ℯ^acot(x)*(1 - 3*x))/(13*a^2*(a + a*x^2)^(3/2)) - (3*ℯ^acot(x)*(1 - x))/(13*a^3*sqrt(a + a*x^2))]


    @test_int [ℯ^(n*acot(a*x))/(c + a^2*c*x^2)^(1/3), x, 3, (3*(1 + 1/(a^2*x^2))^(1/3)*((a - im/x)/(a + im/x))^((1/6)*(2 - 3*im*n))*(1 - im/(a*x))^((1/6)*(-2 + 3*im*n))*(1 + im/(a*x))^((1/6)*(4 - 3*im*n))*x*HypergeometricFunctions._₂F₁(-(1/3), (1/6)*(2 - 3*im*n), 2/3, (2*im)/((a + im/x)*x)))/(c + a^2*c*x^2)^(1/3)]
    @test_int [ℯ^(n*acot(a*x))/(c + a^2*c*x^2)^(2/3), x, 3, -((3*(1 + 1/(a^2*x^2))^(2/3)*((a - im/x)/(a + im/x))^((1/6)*(4 - 3*im*n))*(1 - im/(a*x))^((1/6)*(-4 + 3*im*n))*(1 + im/(a*x))^((1/6)*(2 - 3*im*n))*x*HypergeometricFunctions._₂F₁(1/3, (1/6)*(4 - 3*im*n), 4/3, (2*im)/((a + im/x)*x)))/(c + a^2*c*x^2)^(2/3))]
    @test_int [ℯ^(n*acot(a*x))/(c + a^2*c*x^2)^(4/3), x, 4, -((3*ℯ^(n*acot(a*x))*(3*n - 2*a*x))/(a*c*(4 + 9*n^2)*(c + a^2*c*x^2)^(1/3))) - (6*(1 + 1/(a^2*x^2))^(1/3)*((a - im/x)/(a + im/x))^((1/6)*(2 - 3*im*n))*(1 - im/(a*x))^((1/6)*(-2 + 3*im*n))*(1 + im/(a*x))^((1/6)*(4 - 3*im*n))*x*HypergeometricFunctions._₂F₁(-(1/3), (1/6)*(2 - 3*im*n), 2/3, (2*im)/((a + im/x)*x)))/(c*(4 + 9*n^2)*(c + a^2*c*x^2)^(1/3))]
    @test_int [ℯ^(n*acot(a*x))/(c + a^2*c*x^2)^(5/3), x, 4, -((3*ℯ^(n*acot(a*x))*(3*n - 4*a*x))/(a*c*(16 + 9*n^2)*(c + a^2*c*x^2)^(2/3))) - (12*(1 + 1/(a^2*x^2))^(2/3)*((a - im/x)/(a + im/x))^((1/6)*(4 - 3*im*n))*(1 - im/(a*x))^((1/6)*(-4 + 3*im*n))*(1 + im/(a*x))^((1/6)*(2 - 3*im*n))*x*HypergeometricFunctions._₂F₁(1/3, (1/6)*(4 - 3*im*n), 4/3, (2*im)/((a + im/x)*x)))/(c*(16 + 9*n^2)*(c + a^2*c*x^2)^(2/3))]
    @test_int [ℯ^(n*acot(a*x))/(c + a^2*c*x^2)^(7/3), x, 5, If(13>=8, -((3*ℯ^(n*acot(a*x))*(3*n - 8*a*x))/(a*c*(64 + 9*n^2)*(c + a^2*c*x^2)^(4/3))) - (120*ℯ^(n*acot(a*x))*(3*n - 2*a*x))/(a*c^2*(4 + 9*n^2)*(64 + 9*n^2)*(c + a^2*c*x^2)^(1/3)) - (240*(1 + 1/(a^2*x^2))^(1/3)*((a - im/x)/(a + im/x))^((1/6)*(2 - 3*im*n))*(1 - im/(a*x))^((1/6)*(-2 + 3*im*n))*(1 + im/(a*x))^((1/6)*(4 - 3*im*n))*x*HypergeometricFunctions._₂F₁(-(1/3), (1/6)*(2 - 3*im*n), 2/3, (2*im)/((a + im/x)*x)))/(c^2*(4 + 9*n^2)*(64 + 9*n^2)*(c + a^2*c*x^2)^(1/3)), -((3*ℯ^(n*acot(a*x))*(3*n - 8*a*x))/(a*c*(64 + 9*n^2)*(c + a^2*c*x^2)^(4/3))) - (120*ℯ^(n*acot(a*x))*(3*n - 2*a*x))/(a*c^2*(256 + 612*n^2 + 81*n^4)*(c + a^2*c*x^2)^(1/3)) - (240*(1 + 1/(a^2*x^2))^(1/3)*((a - im/x)/(a + im/x))^((1/6)*(2 - 3*im*n))*(1 - im/(a*x))^((1/6)*(-2 + 3*im*n))*(1 + im/(a*x))^((1/6)*(4 - 3*im*n))*x*HypergeometricFunctions._₂F₁(-(1/3), (1/6)*(2 - 3*im*n), 2/3, (2*im)/((a + im/x)*x)))/(c^2*(256 + 612*n^2 + 81*n^4)*(c + a^2*c*x^2)^(1/3)))]
    end
