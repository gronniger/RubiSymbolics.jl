@testset "Jeffrey Problems" begin
    (p, q, r, x, ) = @variables p q r x

    #= ::Package:: =#

    #= ::Title:: =#
    #=David*Jeffrey - Rectifying*Transformations*for*Trig*Integration*(1997)=#


    #= ::Subsection::Closed:: =#
    #=Problem*(1.2)=#


    @test_int [3/(5 - 4*cos(x)), x, 2, x + 2*atan(sin(x)/(2 - cos(x)))]


    #= ::Subsection::Closed:: =#
    #=Problem*(1.4)=#


    @test_int [(cos(x) + 2*sin(x) + 1)/(cos(x)^2 - 2*sin(x)*cos(x) + 2*sin(x) + 3), x, -43, -atan((2*cos(x) - sin(x))/(2 + sin(x)))]


    #= ::Subsection::Closed:: =#
    #=Problem*(1.5)=#


    @test_int [(2 + 5*sin(x) + cos(x))/(4*cos(x) + sin(x)*cos(x) - 2*sin(x) - 2*sin(x)^2), x, -25, -log(1 - 3*cos(x) + sin(x)) + log(3 + cos(x) + sin(x))]


    #= ::Subsection::Closed:: =#
    #=Problem*(3.3)=#


    @test_int [(7*cos(x) + 2*sin(x) + 3)/(3*cos(x)^2 - sin(x)*cos(x) + 4*cos(x) - 5*sin(x) + 1), x, -32, -log(1 + cos(x) - 2*sin(x)) + log(3 + cos(x) + sin(x))]


    #= ::Subsection::Closed:: =#
    #=Problem =#


    @test_int [(5*cos(x)^2 + 4*cos(x) - 1)/(4*cos(x)^3 - 3*cos(x)^2 - 4*cos(x) - 1), x, -2, x - 2*atan(sin(x)/(3 + cos(x))) - 2*atan((3*sin(x) + 7*cos(x)*sin(x))/(1 + 2*cos(x) + 5*cos(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Problem =#


    @test_int [(7*cos(x)^2 + 2*cos(x) - 5)/(4*cos(x)^3 - 9*cos(x)^2 + 2*cos(x) - 1), x, -2, x - 2*atan((2*cos(x)*sin(x))/(1 - cos(x) + 2*cos(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Problem*(3.4)=#


    @test_int [3/(5 + 4*sin(x)), x, 2, x + 2*atan(cos(x)/(2 + sin(x)))]


    #= ::Subsection::Closed:: =#
    #=Problem*(3.6)=#


    @test_int [2/(1 + cos(x)^2), x, 3, sqrt(2)*x - sqrt(2)*atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Problem*(3.8)=#


    @test_int [1/(p + q*cos(x) + r*sin(x)), x, 3, (2*atan((r + (p - q)*tan(x/2))/sqrt(p^2 - q^2 - r^2)))/sqrt(p^2 - q^2 - r^2)]
    end
