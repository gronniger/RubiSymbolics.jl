@testset "Bronstein Problems" begin
    (x, ) = @variables x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Manuel*Bronstein - Symbolic*Integration*Tutorial*(1998)=#


    #= ::Section::Closed:: =#
    #=2  Algebraic*Functions=#


    @test_int [(2*x^8 + 1)*(sqrt(x^8 + 1)/(x^17 + 2*x^9 + x)), x, 6, -(1/(4*sqrt(1 + x^8))) - (1/4)*atanh(sqrt(1 + x^8))]
    @test_int [1/(1 + x^2), x, 1, atan(x)]
    @test_int [sqrt(x^8 + 1)/(x*(x^8 + 1)), x, 3, (-(1/4))*atanh(sqrt(1 + x^8))]
    @test_int [x/sqrt(1 - x^3), x, 3, (2*sqrt(1 - x^3))/(1 + sqrt(3) - x) - (3^(1/4)*sqrt(2 - sqrt(3))*(1 - x)*sqrt((1 + x + x^2)/(1 + sqrt(3) - x)^2)*Elliptic.E(asin((1 - sqrt(3) - x)/(1 + sqrt(3) - x)), -7 - 4*sqrt(3)))/(sqrt((1 - x)/(1 + sqrt(3) - x)^2)*sqrt(1 - x^3)) + (2*sqrt(2)*(1 - x)*sqrt((1 + x + x^2)/(1 + sqrt(3) - x)^2)*Elliptic.F(asin((1 - sqrt(3) - x)/(1 + sqrt(3) - x)), -7 - 4*sqrt(3)))/(3^(1/4)*sqrt((1 - x)/(1 + sqrt(3) - x)^2)*sqrt(1 - x^3))]
    @test_int [1/(x*sqrt(1 - x^3)), x, 3, (-(2/3))*atanh(sqrt(1 - x^3))]
    @test_int [x/sqrt(x^4 + 10*x^2 - 96*x - 71), x, 1, (1/8)*log(10001 + 3124*x^2 - 1408*x^3 + 54*x^4 - 128*x^5 + 20*x^6 + x^8 + sqrt(-71 - 96*x + 10*x^2 + x^4)*(781 - 528*x + 27*x^2 - 80*x^3 + 15*x^4 + x^6))]


    #= ::Section::Closed:: =#
    #=3  Elementary*Functions=#


    @test_int [(x - tan(x))/tan(x)^2, x, 6, -(x^2/2) - x*cot(x)]
    @test_int [1 + x*tan(x) + tan(x)^2, x, 7, (im*x^2)/2 - x*log(1 + ℯ^(2*im*x)) + (1/2)*im*PolyLog(2, -ℯ^(2*im*x)) + tan(x)]
    @test_int [sin(x)/x, x, 1, SinIntegral(x)]
    @test_int [(3*(x + ℯ^x)^(1/3) + (2*x^2 + 3*x)*ℯ^x + 5*x^2)/(x*(x + ℯ^x)^(1/3)), x, 8, 3*x*(ℯ^x + x)^(2/3) + 3*log(x)]


    @test_int [1/x + (1 + 1/x)/(x + log(x))^(3/2), x, 2, log(x) - 2/sqrt(x + log(x))]
    @test_int [(log(x)^2 + 2*x*log(x) + x^2 + (x + 1)*sqrt(x + log(x)))/(x*log(x)^2 + 2*x^2*log(x) + x^3), x, -3, log(x) - 2/sqrt(x + log(x))]

    @test_int [(2*log(x)^2 - log(x) - x^2)/(log(x)^3 - x^2*log(x)), x, 6, (-(1/2))*log(x - log(x)) + (1/2)*log(x + log(x)) + LogIntegral(x)]
    #= [log(1 + ℯ^x)^(1/3)/(1 + log(1 + ℯ^x)), x, 0, CannotIntegrate(log(1 + ℯ^x)^(1/3)/(1 + log(1 + ℯ^x)), x)] =#
    #= [((x^2 + 2*x + 1)*sqrt(x + log(x)) + (3*x + 1)*log(x) + 3*x^2 + x)/((x*log(x) + x^2)*sqrt(x + log(x)) + x^2*log(x) + x^3), x, 0, 2*sqrt(x + log(x)) + 2*log(x + sqrt(x + log(x)))] =#


    #= ::Title:: =#
    #=Manuel*Bronstein - Symbolic*Integration*im; Transcendental*FunctionsTutorial*(2005)=#


    #= ::Section::Closed:: =#
    #=2.8  Rioboo's*Algorithm*for*Real*Rational*Functions=#


    @test_int [(x^4 - 3*x^2 + 6)/(x^6 - 5*x^4 + 5*x^2 + 4), x, 1, -atan(sqrt(3) - 2*x) + atan(sqrt(3) + 2*x) + atan((1/2)*x*(1 - 3*x^2 + x^4))]
    end
