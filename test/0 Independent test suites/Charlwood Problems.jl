@testset "Charlwood Problems" begin
    (x, ) = @variables x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Kevin*Charlwood - Integration*on*Computer*Algebra*Systems*(2008)=#


    #= ::Subsection::Closed:: =#
    #=Problem #1=#


    @test_int [asin(x)*log(x), x, 8, -2*sqrt(1 - x^2) + atanh(sqrt(1 - x^2)) - x*asin(x)*(1 - log(x)) + sqrt(1 - x^2)*log(x), -2*sqrt(1 - x^2) - x*asin(x) + atanh(sqrt(1 - x^2)) + sqrt(1 - x^2)*log(x) + x*asin(x)*log(x)]


    #= ::Subsection::Closed:: =#
    #=Problem #2=#


    @test_int [x*asin(x)/sqrt(1 - x^2), x, 2, x - sqrt(1 - x^2)*asin(x)]


    #= ::Subsection::Closed:: =#
    #=Problem #3=#


    @test_int [asin(sqrt(x + 1) - sqrt(x)), x, -3, ((sqrt(x) + 3*sqrt(1 + x))*sqrt(-x + sqrt(x)*sqrt(1 + x)))/(4*sqrt(2)) - (3/8 + x)*asin(sqrt(x) - sqrt(1 + x))]


    #= ::Subsection::Closed:: =#
    #=Problem #4=#


    @test_int [log(1 + x*sqrt(1 + x^2)), x, -32, -2*x + sqrt(2*(1 + sqrt(5)))*atan(sqrt(-2 + sqrt(5))*(x + sqrt(1 + x^2))) - sqrt(2*(-1 + sqrt(5)))*atanh(sqrt(2 + sqrt(5))*(x + sqrt(1 + x^2))) + x*log(1 + x*sqrt(1 + x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #5=#


    @test_int [cos(x)^2/sqrt(cos(x)^4 + cos(x)^2 + 1), x, -5, x/3 + (1/3)*atan((cos(x)*(1 + cos(x)^2)*sin(x))/(1 + cos(x)^2*sqrt(1 + cos(x)^2 + cos(x)^4)))]


    #= ::Subsection::Closed:: =#
    #=Problem #6=#


    @test_int [tan(x)*sqrt(1 + tan(x)^4), x, 7, (-(1/2))*asinh(tan(x)^2) - atanh((1 - tan(x)^2)/(sqrt(2)*sqrt(1 + tan(x)^4)))/sqrt(2) + (1/2)*sqrt(1 + tan(x)^4)]


    #= ::Subsection::Closed:: =#
    #=Problem #7=#


    @test_int [tan(x)/sqrt(1 + sec(x)^3), x, 4, (-(2/3))*atanh(sqrt(1 + sec(x)^3))]


    #= ::Subsection::Closed:: =#
    #=Problem #8=#


    @test_int [sqrt(tan(x)^2 + 2*tan(x) + 2), x, 9, asinh(1 + tan(x)) - sqrt((1/2)*(1 + sqrt(5)))*atan((2*sqrt(5) - (5 + sqrt(5))*tan(x))/(sqrt(10*(1 + sqrt(5)))*sqrt(2 + 2*tan(x) + tan(x)^2))) - sqrt((1/2)*(-1 + sqrt(5)))*atanh((2*sqrt(5) + (5 - sqrt(5))*tan(x))/(sqrt(10*(-1 + sqrt(5)))*sqrt(2 + 2*tan(x) + tan(x)^2)))]


    #= ::Subsection::Closed:: =#
    #=Problem #9=#


    @test_int [sin(x)*atan(sqrt(sec(x) - 1)), x, 7, (1/2)*atan(sqrt(-1 + sec(x))) - atan(sqrt(-1 + sec(x)))*cos(x) + (1/2)*cos(x)*sqrt(-1 + sec(x))]


    #= ::Subsection::Closed:: =#
    #=Problem #10=#


    @test_int [x^3*ℯ^asin(x)/sqrt(1 - x^2), x, 5, (1/10)*ℯ^asin(x)*(3*x + x^3 - 3*sqrt(1 - x^2) - 3*x^2*sqrt(1 - x^2)), (3/10)*ℯ^asin(x)*x + (1/10)*ℯ^asin(x)*x^3 - (3/10)*ℯ^asin(x)*sqrt(1 - x^2) - (3/10)*ℯ^asin(x)*x^2*sqrt(1 - x^2)]


    #= ::Subsection::Closed:: =#
    #=Problem #11=#


    @test_int [(x*log(1 + x^2)*log(x + sqrt(1 + x^2)))/sqrt(1 + x^2), x, 7, 4*x - 2*atan(x) - x*log(1 + x^2) - 2*sqrt(1 + x^2)*log(x + sqrt(1 + x^2)) + sqrt(1 + x^2)*log(1 + x^2)*log(x + sqrt(1 + x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #12=#


    @test_int [atan(x + sqrt(1 - x^2)), x, -40, -(asin(x)/2) + (1/4)*sqrt(3)*atan((-1 + sqrt(3)*x)/sqrt(1 - x^2)) + (1/4)*sqrt(3)*atan((1 + sqrt(3)*x)/sqrt(1 - x^2)) - (1/4)*sqrt(3)*atan((-1 + 2*x^2)/sqrt(3)) + x*atan(x + sqrt(1 - x^2)) - (1/4)*atanh(x*sqrt(1 - x^2)) - (1/8)*log(1 - x^2 + x^4)]


    #= ::Subsection::Closed:: =#
    #=Problem #13=#


    @test_int [x*atan(x + sqrt(1 - x^2))/sqrt(1 - x^2), x, -32, -(asin(x)/2) + (1/4)*sqrt(3)*atan((-1 + sqrt(3)*x)/sqrt(1 - x^2)) + (1/4)*sqrt(3)*atan((1 + sqrt(3)*x)/sqrt(1 - x^2)) - (1/4)*sqrt(3)*atan((-1 + 2*x^2)/sqrt(3)) - sqrt(1 - x^2)*atan(x + sqrt(1 - x^2)) + (1/4)*atanh(x*sqrt(1 - x^2)) + (1/8)*log(1 - x^2 + x^4)]


    #= ::Subsection::Closed:: =#
    #=Problem #14=#


    @test_int [asin(x)/(1 + sqrt(1 - x^2)), x, 9, -((x*asin(x))/(1 + sqrt(1 - x^2))) + asin(x)^2/2 - log(1 + sqrt(1 - x^2)), -(asin(x)/x) + (sqrt(1 - x^2)*asin(x))/x + asin(x)^2/2 - atanh(sqrt(1 - x^2)) - log(x)]


    #= ::Subsection::Closed:: =#
    #=Problem #15=#


    @test_int [log(x + sqrt(1 + x^2))/(1 - x^2)^(3/2), x, 3, (-(1/2))*asin(x^2) + (x*log(x + sqrt(1 + x^2)))/sqrt(1 - x^2)]


    #= ::Subsection::Closed:: =#
    #=Problem #16=#


    @test_int [asin(x)/(1 + x^2)^(3/2), x, 3, (x*asin(x))/sqrt(1 + x^2) - asin(x^2)/2]


    #= ::Subsection::Closed:: =#
    #=Problem #17=#


    @test_int [log(x + sqrt(x^2 - 1))/(1 + x^2)^(3/2), x, 3, (-(1/2))*acosh(x^2) + (x*log(x + sqrt(-1 + x^2)))/sqrt(1 + x^2)]


    #= ::Subsection::Closed:: =#
    #=Problem #18=#


    @test_int [log(x)/(x^2*sqrt(x^2 - 1)), x, 4, sqrt(-1 + x^2)/x - atanh(x/sqrt(-1 + x^2)) + (sqrt(-1 + x^2)*log(x))/x]


    #= ::Subsection::Closed:: =#
    #=Problem #19=#


    @test_int [sqrt(1 + x^3)/x, x, 4, (2*sqrt(1 + x^3))/3 - (2/3)*atanh(sqrt(1 + x^3))]


    #= ::Subsection::Closed:: =#
    #=Problem #20=#


    @test_int [x*log(x + sqrt(x^2 - 1))/sqrt(x^2 - 1), x, 2, -x + sqrt(-1 + x^2)*log(x + sqrt(-1 + x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #21=#


    @test_int [x^3*(asin(x)/sqrt(1 - x^4)), x, 5, (1/4)*x*sqrt(1 + x^2) - (1/2)*sqrt(1 - x^4)*asin(x) + asinh(x)/4]


    #= ::Subsection::Closed:: =#
    #=Problem #22=#


    @test_int [x^3*(asec(x)/sqrt(x^4 - 1)), x, 7, -(sqrt(-1 + x^4)/(2*sqrt(1 - 1/x^2)*x)) + (1/2)*sqrt(-1 + x^4)*asec(x) + (1/2)*atanh((sqrt(1 - 1/x^2)*x)/sqrt(-1 + x^4)), -(sqrt(-1 + x^4)/(2*sqrt(1 - 1/x^2)*x)) + (1/2)*sqrt(-1 + x^4)*asec(x) + (sqrt(1 - x^2)*atan(sqrt(-1 + x^4)/sqrt(1 - x^2)))/(2*sqrt(1 - 1/x^2)*x)]


    #= ::Subsection::Closed:: =#
    #=Problem #23=#


    @test_int [x*atan(x)*log(x + sqrt(1 + x^2))/sqrt(1 + x^2), x, 4, (-x)*atan(x) + (1/2)*log(1 + x^2) + sqrt(1 + x^2)*atan(x)*log(x + sqrt(1 + x^2)) - (1/2)*log(x + sqrt(1 + x^2))^2]


    #= ::Subsection::Closed:: =#
    #=Problem #24=#


    @test_int [x*log(1 + sqrt(1 - x^2))/sqrt(1 - x^2), x, 5, sqrt(1 - x^2) - log(1 + sqrt(1 - x^2)) - sqrt(1 - x^2)*log(1 + sqrt(1 - x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #25=#


    @test_int [x*log(x + sqrt(1 + x^2))/sqrt(1 + x^2), x, 2, -x + sqrt(1 + x^2)*log(x + sqrt(1 + x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #26=#


    @test_int [x*log(x + sqrt(1 - x^2))/sqrt(1 - x^2), x, 18, sqrt(1 - x^2) + atanh(sqrt(2)*x)/sqrt(2) - atanh(sqrt(2)*sqrt(1 - x^2))/sqrt(2) - sqrt(1 - x^2)*log(x + sqrt(1 - x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #27=#


    @test_int [log(x)/(x^2*sqrt(1 - x^2)), x, 3, -(sqrt(1 - x^2)/x) - asin(x) - (sqrt(1 - x^2)*log(x))/x]


    #= ::Subsection::Closed:: =#
    #=Problem #28=#


    @test_int [x*atan(x)/sqrt(1 + x^2), x, 2, -asinh(x) + sqrt(1 + x^2)*atan(x)]


    #= ::Subsection::Closed:: =#
    #=Problem #29=#


    @test_int [atan(x)/(x^2*sqrt(1 - x^2)), x, 7, -((sqrt(1 - x^2)*atan(x))/x) - atanh(sqrt(1 - x^2)) + sqrt(2)*atanh(sqrt(1 - x^2)/sqrt(2))]


    #= ::Subsection::Closed:: =#
    #=Problem #30=#


    @test_int [x*atan(x)/sqrt(1 - x^2), x, 5, -asin(x) - sqrt(1 - x^2)*atan(x) + sqrt(2)*atan((sqrt(2)*x)/sqrt(1 - x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #31=#


    @test_int [atan(x)/(x^2*sqrt(1 + x^2)), x, 4, -((sqrt(1 + x^2)*atan(x))/x) - atanh(sqrt(1 + x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #32=#


    @test_int [asin(x)/(x^2*sqrt(1 - x^2)), x, 2, -((sqrt(1 - x^2)*asin(x))/x) + log(x)]


    #= ::Subsection::Closed:: =#
    #=Problem #33=#


    @test_int [x*log(x)/sqrt(x^2 - 1), x, 5, -sqrt(-1 + x^2) + atan(sqrt(-1 + x^2)) + sqrt(-1 + x^2)*log(x)]


    #= ::Subsection::Closed:: =#
    #=Problem #34=#


    @test_int [log(x)/(x^2*sqrt(1 + x^2)), x, 3, -(sqrt(1 + x^2)/x) + asinh(x) - (sqrt(1 + x^2)*log(x))/x]


    #= ::Subsection::Closed:: =#
    #=Problem #35=#


    @test_int [x*asec(x)/sqrt(x^2 - 1), x, 2, sqrt(-1 + x^2)*asec(x) - (x*log(x))/sqrt(x^2)]


    #= ::Subsection::Closed:: =#
    #=Problem #36=#


    @test_int [x*log(x)/sqrt(1 + x^2), x, 5, -sqrt(1 + x^2) + atanh(sqrt(1 + x^2)) + sqrt(1 + x^2)*log(x)]


    #= ::Subsection::Closed:: =#
    #=Problem #37=#


    @test_int [sin(x)/(1 + sin(x)^2), x, 2, -(atanh(cos(x)/sqrt(2))/sqrt(2))]


    #= ::Subsection::Closed:: =#
    #=Problem #38=#


    @test_int [(1 + x^2)/((1 - x^2)*sqrt(1 + x^4)), x, 2, (1/sqrt(2))*atanh(sqrt(2)*(x/sqrt(1 + x^4)))]


    #= ::Subsection::Closed:: =#
    #=Problem #39=#


    @test_int [(1 - x^2)/((1 + x^2)*sqrt(1 + x^4)), x, 2, atan((sqrt(2)*x)/sqrt(1 + x^4))/sqrt(2)]


    #= ::Subsection::Closed:: =#
    #=Problem #40=#


    @test_int [log(sin(x))/(1 + sin(x)), x, 4, -x - atanh(cos(x)) - (cos(x)*log(sin(x)))/(1 + sin(x))]


    #= ::Subsection::Closed:: =#
    #=Problem #41=#


    @test_int [log(sin(x))*sqrt(1 + sin(x)), x, 6, (4*cos(x))/sqrt(1 + sin(x)) - (2*cos(x)*log(sin(x)))/sqrt(1 + sin(x)) - 4*atanh(cos(x)/sqrt(1 + sin(x)))]


    #= ::Subsection::Closed:: =#
    #=Problem #42=#


    @test_int [sec(x)/sqrt(sec(x)^4 - 1), x, -5, -(atanh((cos(x)*cot(x)*sqrt(sec(x)^4 - 1))/sqrt(2))/sqrt(2))]


    #= ::Subsection::Closed:: =#
    #=Problem #43=#


    @test_int [tan(x)/sqrt(1 + tan(x)^4), x, 4, -(atanh((1 - tan(x)^2)/(sqrt(2)*sqrt(1 + tan(x)^4)))/(2*sqrt(2)))]


    #= ::Subsection::Closed:: =#
    #=Problem #44=#


    @test_int [sin(x)/sqrt(1 - sin(x)^6), x, 4, atanh((sqrt(3)*cos(x)*(1 + sin(x)^2))/(2*sqrt(1 - sin(x)^6)))/(2*sqrt(3)), atanh((cos(x)*(6 - 3*cos(x)^2))/(2*sqrt(3)*sqrt(3*cos(x)^2 - 3*cos(x)^4 + cos(x)^6)))/(2*sqrt(3))]


    #= ::Subsection::Closed:: =#
    #=Problem #45=#


    @test_int [sqrt(sqrt(sec(x) + 1) - sqrt(sec(x) - 1)), x, -1, sqrt(2)*(sqrt(-1 + sqrt(2))*atan((sqrt(-2 + 2*sqrt(2))*(-sqrt(2) - sqrt(-1 + sec(x)) + sqrt(1 + sec(x))))/(2*sqrt(-sqrt(-1 + sec(x)) + sqrt(1 + sec(x))))) - sqrt(1 + sqrt(2))*atan((sqrt(2 + 2*sqrt(2))*(-sqrt(2) - sqrt(-1 + sec(x)) + sqrt(1 + sec(x))))/(2*sqrt(-sqrt(-1 + sec(x)) + sqrt(1 + sec(x))))) - sqrt(1 + sqrt(2))*atanh((sqrt(-2 + 2*sqrt(2))*sqrt(-sqrt(-1 + sec(x)) + sqrt(1 + sec(x))))/(sqrt(2) - sqrt(-1 + sec(x)) + sqrt(1 + sec(x)))) + sqrt(-1 + sqrt(2))*atanh((sqrt(2 + 2*sqrt(2))*sqrt(-sqrt(-1 + sec(x)) + sqrt(1 + sec(x))))/(sqrt(2) - sqrt(-1 + sec(x)) + sqrt(1 + sec(x)))))*cot(x)*sqrt(-1 + sec(x))*sqrt(1 + sec(x))]


    #= ::Subsection::Closed:: =#
    #=Problem #46=#


    @test_int [x*log(x^2 + 1)*atan(x)^2, x, 13, 3*x*atan(x) - (3*atan(x)^2)/2 - (1/2)*x^2*atan(x)^2 - (3/2)*log(1 + x^2) - x*atan(x)*log(1 + x^2) + (1/2)*(1 + x^2)*atan(x)^2*log(1 + x^2) + (1/4)*log(1 + x^2)^2]


    #= ::Subsection::Closed:: =#
    #=Problem #47=#


    @test_int [atan(x*sqrt(1 + x^2)), x, 12, x*atan(x*sqrt(1 + x^2)) + (1/2)*atan(sqrt(3) - 2*sqrt(1 + x^2)) - (1/2)*atan(sqrt(3) + 2*sqrt(1 + x^2)) - (1/4)*sqrt(3)*log(2 + x^2 - sqrt(3)*sqrt(1 + x^2)) + (1/4)*sqrt(3)*log(2 + x^2 + sqrt(3)*sqrt(1 + x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #48=#


    @test_int [atan(sqrt(x + 1) - sqrt(x)), x, 6, sqrt(x)/2 + (1 + x)*atan(sqrt(1 + x) - sqrt(x)), sqrt(x)/2 + (pi*x)/4 - atan(sqrt(x))/2 - (1/2)*x*atan(sqrt(x))]


    #= ::Subsection::Closed:: =#
    #=Problem #49=#


    @test_int [asin(x/sqrt(1 - x^2)), x, 4, x*asin(x/sqrt(1 - x^2)) + atan(sqrt(1 - 2*x^2))]


    #= ::Subsection::Closed:: =#
    #=Problem #50=#


    @test_int [atan(x*sqrt(1 - x^2)), x, 6, x*atan(x*sqrt(1 - x^2)) - sqrt((1/2)*(1 + sqrt(5)))*atan(sqrt((1/2)*(1 + sqrt(5)))*sqrt(1 - x^2)) + sqrt((1/2)*(-1 + sqrt(5)))*atanh(sqrt((1/2)*(-1 + sqrt(5)))*sqrt(1 - x^2)), (-sqrt(2/(-1 + sqrt(5))))*atan(sqrt(2/(-1 + sqrt(5)))*sqrt(1 - x^2)) + x*atan(x*sqrt(1 - x^2)) + sqrt(2/(1 + sqrt(5)))*atanh(sqrt(2/(1 + sqrt(5)))*sqrt(1 - x^2))]
    end
