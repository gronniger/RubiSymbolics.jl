@testset "Hebisch Problems" begin
    @variables x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Waldek*Hebisch - email*May*2013=#


    #= ::Subsection:: =#
    #=Problem #1=#


    @test_int [(x^6 - x^5 + x^4 - x^3 + 1)*Exp(x), x, 25, 871*ℯ^x - 870*ℯ^x*x + 435*ℯ^x*x^2 - 145*ℯ^x*x^3 + 36*ℯ^x*x^4 - 7*ℯ^x*x^5 + ℯ^x*x^6]


    #= ::Subsection:: =#
    #=Problem #2=#


    @test_int [(2 - x^2)*Exp(x/(x^2 + 2))/(x^3 + 2*x), x, -5, ExpIntegralEi(x/(2 + x^2))]


    @test_int [(2 + 2*x + 3*x^2 - x^3 + 2*x^4)*Exp(x/(2 + x^2))/(x^3 + 2*x), x, -5, ℯ^(x/(2 + x^2))*(2 + x^2) + ExpIntegralEi(x/(2 + x^2))]


    #= ::Subsection:: =#
    #=Problem #3=#


    @test_int [(Exp(x) + 1)*(Exp(Exp(x) + x)/(Exp(x) + x)), x, 2, ExpIntegralEi(ℯ^x + x)]


    #= ::Subsection:: =#
    #=Problem #4=#


    @test_int [(x^3 - x^2 - 3*x + 1)*(Exp(1/(x^2 - 1))/(x^3 - x^2 - x + 1)), x, -6, ℯ^(1/(-1 + x^2))*(1 + x)]


    #= ::Subsection:: =#
    #=Problem #5=#


    @test_int [(log(x)^2 - 1)*Exp(1 + 1/log(x))/log(x)^2, x, 1, x*ℯ^(1 + 1/log(x))]


    @test_int [((x + 1)*log(x)^2  - 1)*Exp(x + 1/log(x))/log(x)^2, x, -2, ℯ^(x + 1/log(x))*x]
    end
