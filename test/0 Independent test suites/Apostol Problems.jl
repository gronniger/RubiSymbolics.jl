@testset "Apostol Problems" begin
    @variables a, a1, b, b1, n, t, x, z

    #= ::Package:: =#

    #= ::Title:: =#
    #=Tom*M. Apostol - Calculus, Volume*im, Second*Edition*(1967)=#


    #= ::Section::Closed:: =#
    #=Section*5.8*Exercises*(p. 216-217)=#


    #= ::Subsection::Closed:: =#
    #=Exercises*1 - 10=#


    @test_int [sqrt(2*x + 1), x, 1, (1/3)*(1 + 2*x)^(3/2)]
    @test_int [x*sqrt(1 + 3*x), x, 2, (-(2/27))*(1 + 3*x)^(3/2) + (2/45)*(1 + 3*x)^(5/2)]
    @test_int [x^2*sqrt(x + 1), x, 2, (2/3)*(1 + x)^(3/2) - (4/5)*(1 + x)^(5/2) + (2/7)*(1 + x)^(7/2)]
    @test_int [x/sqrt(2 - 3*x), x, 2, (-(4/9))*sqrt(2 - 3*x) + (2/27)*(2 - 3*x)^(3/2)]
    @test_int [(x + 1)/(x^2 + 2*x + 2)^3, x, 1, -(1/(4*(2 + 2*x + x^2)^2))]
    @test_int [sin(x)^3, x, 2, -cos(x) + cos(x)^3/3]
    @test_int [z*(z - 1)^(1/3), z, 2, (3/4)*(-1 + z)^(4/3) + (3/7)*(-1 + z)^(7/3)]
    @test_int [cos(x)/sin(x)^3, x, 2, (-(1/2))*csc(x)^2]
    @test_int [cos(2*x)*sqrt(4 - sin(2*x)), x, 2, (-(1/3))*(4 - sin(2*x))^(3/2)]
    @test_int [sin(x)/(3 + cos(x))^2, x, 2, 1/(3 + cos(x))]


    #= ::Subsection::Closed:: =#
    #=Exercises*11 - 20=#


    @test_int [sin(x)/sqrt(cos(x)^3), x, 3, (2*cos(x))/sqrt(cos(x)^3)]
    @test_int [sin(sqrt(x + 1))/sqrt(x + 1), x, 3, -2*cos(sqrt(1 + x))]
    @test_int [x^(n - 1)*sin(x^n), x, 2, -(cos(x^n)/n)]
    @test_int [x^5/sqrt(1 - x^6), x, 1, (-(1/3))*sqrt(1 - x^6)]
    @test_int [t*(1 + t)^(1/4), t, 2, (-(4/5))*(1 + t)^(5/4) + (4/9)*(1 + t)^(9/4)]
    @test_int [(x^2 + 1)^(-3/2), x, 1, x/sqrt(1 + x^2)]
    @test_int [x^2*(8*x^3 + 27)^(2/3), x, 1, (1/40)*(27 + 8*x^3)^(5/3)]
    @test_int [(sin(x) + cos(x))/(sin(x) - cos(x))^(1/3), x, 1, (3/2)*(-cos(x) + sin(x))^(2/3)]
    @test_int [x/sqrt(1 + x^2 + (1 + x^2)^(3/2)), x, 3, (2*sqrt((1 + x^2)*(1 + sqrt(1 + x^2))))/sqrt(1 + x^2)]
    @test_int [x/(sqrt(1 + x^2)*sqrt(1 + sqrt(1 + x^2))), x, 1, 2*sqrt(1 + sqrt(1 + x^2))]
    @test_int [(x^2 + 1 - 2*x)^(1/5)/(1 - x), x, 2, (-(5/2))*(1 - 2*x + x^2)^(1/5)]


    #= ::Section::Closed:: =#
    #=Section*5.10*Exercises*(p. 220-222)=#


    #= ::Subsection::Closed:: =#
    #=Exercises*1 - 6=#


    @test_int [x*sin(x), x, 2, (-x)*cos(x) + sin(x)]
    @test_int [x^2*sin(x), x, 3, 2*cos(x) - x^2*cos(x) + 2*x*sin(x)]
    @test_int [x^3*cos(x), x, 4, -6*cos(x) + 3*x^2*cos(x) - 6*x*sin(x) + x^3*sin(x)]
    @test_int [x^3*sin(x), x, 4, 6*x*cos(x) - x^3*cos(x) - 6*sin(x) + 3*x^2*sin(x)]
    @test_int [sin(x)*cos(x), x, 2, sin(x)^2/2]
    @test_int [x*sin(x)*cos(x), x, 3, -(x/4) + (1/4)*cos(x)*sin(x) + (1/2)*x*sin(x)^2]


    #= ::Subsection::Closed:: =#
    #=Exercises*7 - 10=#


    @test_int [sin(x)^2, x, 2, x/2 - (1/2)*cos(x)*sin(x)]
    @test_int [sin(x)^3, x, 2, -cos(x) + cos(x)^3/3]
    @test_int [sin(x)^4, x, 3, (3*x)/8 - (3/8)*cos(x)*sin(x) - (1/4)*cos(x)*sin(x)^3]
    @test_int [sin(x)^5, x, 2, -cos(x) + (2*cos(x)^3)/3 - cos(x)^5/5]
    @test_int [sin(x)^6, x, 4, (5*x)/16 - (5/16)*cos(x)*sin(x) - (5/24)*cos(x)*sin(x)^3 - (1/6)*cos(x)*sin(x)^5]


    #= ::Subsection::Closed:: =#
    #=Exercise*11=#


    @test_int [x*sin(x)^2, x, 2, x^2/4 - (1/2)*x*cos(x)*sin(x) + sin(x)^2/4]
    @test_int [x*sin(x)^3, x, 3, (-(2/3))*x*cos(x) + (2*sin(x))/3 - (1/3)*x*cos(x)*sin(x)^2 + sin(x)^3/9]
    @test_int [x^2*sin(x)^2, x, 4, -(x/4) + x^3/6 + (1/4)*cos(x)*sin(x) - (1/2)*x^2*cos(x)*sin(x) + (1/2)*x*sin(x)^2]


    #= ::Subsection::Closed:: =#
    #=Exercise*13=#


    @test_int [cos(x)^2, x, 2, x/2 + (1/2)*cos(x)*sin(x)]
    @test_int [cos(x)^3, x, 2, sin(x) - sin(x)^3/3]
    @test_int [cos(x)^4, x, 3, (3*x)/8 + (3/8)*cos(x)*sin(x) + (1/4)*cos(x)^3*sin(x)]


    #= ::Subsection::Closed:: =#
    #=Exercises*15 - 17=#


    @test_int [(a^2 - x^2)^(5/2), x, 5, (5/16)*a^4*x*sqrt(a^2 - x^2) + (5/24)*a^2*x*(a^2 - x^2)^(3/2) + (1/6)*x*(a^2 - x^2)^(5/2) + (5/16)*a^6*atan(x/sqrt(a^2 - x^2))]
    @test_int [x^5/sqrt(5 + x^2), x, 3, 25*sqrt(5 + x^2) - (10/3)*(5 + x^2)^(3/2) + (1/5)*(5 + x^2)^(5/2)]
    @test_int [t^3/(4 + t^3)^(1/2), t, 2, (2/5)*t*sqrt(4 + t^3) - (8*2^(2/3)*sqrt(2 + sqrt(3))*(2^(2/3) + t)*sqrt((2*2^(1/3) - 2^(2/3)*t + t^2)/(2^(2/3)*(1 + sqrt(3)) + t)^2)*EllipticF(asin((2^(2/3)*(1 - sqrt(3)) + t)/(2^(2/3)*(1 + sqrt(3)) + t)), -7 - 4*sqrt(3)))/(5*3^(1/4)*sqrt((2^(2/3) + t)/(2^(2/3)*(1 + sqrt(3)) + t)^2)*sqrt(4 + t^3))]


    #= ::Subsection::Closed:: =#
    #=Exercises*18 - 19=#


    @test_int [tan(x)^2, x, 2, -x + tan(x)]
    @test_int [tan(x)^4, x, 3, x - tan(x) + tan(x)^3/3]
    @test_int [cot(x)^2, x, 2, -x - cot(x)]
    @test_int [cot(x)^4, x, 3, x + cot(x) - cot(x)^3/3]


    #= ::Section::Closed:: =#
    #=Section*5.11*Miscellaneous*review*exercises*(p. 222-225)=#


    #= ::Subsection::Closed:: =#
    #=Exercises*11 - 20=#


    @test_int [(2 + 3*x)*sin(5*x), x, 2, (-(1/5))*(2 + 3*x)*cos(5*x) + (3/25)*sin(5*x)]
    @test_int [x*sqrt(1 + x^2), x, 1, (1/3)*(1 + x^2)^(3/2)]
    @test_int [x*(x^2 - 1)^9, x, 1, (1/20)*(1 - x^2)^10]
    @test_int [(2*x + 3)/(6*x + 7)^3, x, 1, -((3 + 2*x)^2/(8*(7 + 6*x)^2))]
    @test_int [x^4*(1 + x^5)^5, x, 1, (1/30)*(1 + x^5)^6]
    @test_int [x^4*(1 - x)^20, x, 2, (-(1/21))*(1 - x)^21 + (2/11)*(1 - x)^22 - (6/23)*(1 - x)^23 + (1/6)*(1 - x)^24 - (1/25)*(1 - x)^25]
    @test_int [sin(1/x)/x^2, x, 2, cos(1/x)]
    @test_int [sin((x - 1)^(1/4)), x, 5, 24*(-1 + x)^(1/4)*cos((-1 + x)^(1/4)) - 4*(-1 + x)^(3/4)*cos((-1 + x)^(1/4)) - 24*sin((-1 + x)^(1/4)) + 12*sqrt(-1 + x)*sin((-1 + x)^(1/4))]
    @test_int [x*sin(x^2)*cos(x^2), x, 1, (1/4)*sin(x^2)^2]
    @test_int [sqrt(1 + 3*cos(x)^2)*sin(2*x), x, 3, (-(2/9))*(4 - 3*sin(x)^2)^(3/2)]


    #= ::Section::Closed:: =#
    #=Section*6.9*Exercises*(p. 236-238)=#


    #= ::Subsection::Closed:: =#
    #=Exercises*16 - 21=#


    @test_int [1/(2 + 3*x), x, 1, (1/3)*log(2 + 3*x)]
    @test_int [log(x)^2, x, 2, 2*x - 2*x*log(x) + x*log(x)^2]
    @test_int [x*log(x), x, 1, -(x^2/4) + (1/2)*x^2*log(x)]
    @test_int [x*log(x)^2, x, 2, x^2/4 - (1/2)*x^2*log(x) + (1/2)*x^2*log(x)^2]
    @test_int [1/(1 + t), t, 1, log(1 + t)]
    @test_int [cot(x), x, 1, log(sin(x))]


    #= ::Subsection::Closed:: =#
    #=Exercises*22 - 27=#


    @test_int [x^n*log(a*x), x, 1, -(x^(1 + n)/(1 + n)^2) + (x^(1 + n)*log(a*x))/(1 + n)]
    @test_int [x^2*log(x)^2, x, 2, (2*x^3)/27 - (2/9)*x^3*log(x) + (1/3)*x^3*log(x)^2]
    @test_int [1/(x*log(x)), x, 2, log(log(x))]
    @test_int [log(1 - t)/(1 - t), t, 2, (-(1/2))*log(1 - t)^2]
    @test_int [log(x)/(x*sqrt(1 + log(x))), x, 3, -2*sqrt(1 + log(x)) + (2/3)*(1 + log(x))^(3/2)]
    @test_int [x^3*log(x)^3, x, 3, -((3*x^4)/128) + (3/32)*x^4*log(x) - (3/16)*x^4*log(x)^2 + (1/4)*x^4*log(x)^3]


    #= ::Section::Closed:: =#
    #=Section*6.16*Differentiation*and*integration*formulas*involving*exponentials*(p. 245-248)=#


    #= ::Subsection::Closed:: =#
    #=Example*1=#


    @test_int [x^2*ℯ^(x^3), x, 1, ℯ^x^3/3]


    #= ::Subsection::Closed:: =#
    #=Example*2=#


    @test_int [2^sqrt(x)/sqrt(x), x, 1, 2^(1 + sqrt(x))/log(2)]


    #= ::Subsection::Closed:: =#
    #=Example*3=#


    @test_int [cos(x)*ℯ^(2*sin(x)), x, 2, (1/2)*ℯ^(2*sin(x))]


    #= ::Subsection::Closed:: =#
    #=Example*4=#


    @test_int [ℯ^x*sin(x), x, 1, (-(1/2))*ℯ^x*cos(x) + (1/2)*ℯ^x*sin(x)]
    @test_int [ℯ^x*cos(x), x, 1, (1/2)*ℯ^x*cos(x) + (1/2)*ℯ^x*sin(x)]


    #= ::Subsection::Closed:: =#
    #=Example*5=#


    @test_int [1/(1 + ℯ^x), x, 4, x - log(1 + ℯ^x)]


    #= ::Section::Closed:: =#
    #=Section*6.17*Exercises*(p. 248-250)=#


    #= ::Subsection::Closed:: =#
    #=Exercises*13 - 18=#


    @test_int [x*ℯ^x, x, 2, -ℯ^x + ℯ^x*x]
    @test_int [x*ℯ^(-x), x, 2, -ℯ^(-x) - x/ℯ^x]
    @test_int [x^2*ℯ^x, x, 3, 2*ℯ^x - 2*ℯ^x*x + ℯ^x*x^2]
    @test_int [x^2*ℯ^(-2*x), x, 3, -(1/4)/ℯ^(2*x) - ((1/2)*x)/ℯ^(2*x) - ((1/2)*x^2)/ℯ^(2*x)]
    @test_int [ℯ^sqrt(x), x, 3, -2*ℯ^sqrt(x) + 2*ℯ^sqrt(x)*sqrt(x)]
    @test_int [x^3*ℯ^(-x^2), x, 2, -(1/(ℯ^x^2*2)) - ((1/2)*x^2)/ℯ^x^2]


    #= ::Subsection::Closed:: =#
    #=Exercise*20=#


    @test_int [ℯ^(a*x)*cos(b*x), x, 1, (a*ℯ^(a*x)*cos(b*x))/(a^2 + b^2) + (b*ℯ^(a*x)*sin(b*x))/(a^2 + b^2)]
    @test_int [ℯ^(a*x)*sin(b*x), x, 1, -((b*ℯ^(a*x)*cos(b*x))/(a^2 + b^2)) + (a*ℯ^(a*x)*sin(b*x))/(a^2 + b^2)]


    #= ::Section::Closed:: =#
    #=Section*6.22*Exercises*(p. 256-258)=#


    #= ::Subsection::Closed:: =#
    #=Exercises*6 - 10=#


    @test_int [acot(x), x, 2, x*acot(x) + (1/2)*log(1 + x^2)]
    @test_int [asec(x), x, 4, x*asec(x) - atanh(sqrt(1 - 1/x^2))]
    @test_int [acsc(x), x, 4, x*acsc(x) + atanh(sqrt(1 - 1/x^2))]
    @test_int [asin(x)^2, x, 3, -2*x + 2*sqrt(1 - x^2)*asin(x) + x*asin(x)^2]
    @test_int [asin(x)/x^2, x, 4, -(asin(x)/x) - atanh(sqrt(1 - x^2))]


    #= ::Subsection::Closed:: =#
    #=Exercises*29 - 37=#


    @test_int [1/sqrt(a^2 - x^2), x, 2, atan(x/sqrt(a^2 - x^2))]
    @test_int [1/sqrt(1 - 2*x - x^2), x, 2, asin((1 + x)/sqrt(2))]
    @test_int [1/(a^2 + x^2), x, 1, atan(x/a)/a]
    @test_int [1/(a + b*x^2), x, 1, atan((sqrt(b)*x)/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [1/(x^2 - x + 2), x, 2, -((2*atan((1 - 2*x)/sqrt(7)))/sqrt(7))]
    @test_int [x*atan(x), x, 3, -(x/2) + atan(x)/2 + (1/2)*x^2*atan(x)]
    @test_int [x^2*acos(x), x, 4, (-(1/3))*sqrt(1 - x^2) + (1/9)*(1 - x^2)^(3/2) + (1/3)*x^3*acos(x)]
    @test_int [x*atan(x)^2, x, 5, (-x)*atan(x) + atan(x)^2/2 + (1/2)*x^2*atan(x)^2 + (1/2)*log(1 + x^2)]
    @test_int [atan(sqrt(x)), x, 4, -sqrt(x) + atan(sqrt(x)) + x*atan(sqrt(x))]


    #= ::Subsection::Closed:: =#
    #=Exercises*38 - 47=#


    @test_int [atan(sqrt(x))/(sqrt(x)*(1 + x)), x, 1, atan(sqrt(x))^2]
    @test_int [sqrt(1 - x^2), x, 2, (1/2)*x*sqrt(1 - x^2) + asin(x)/2]
    @test_int [x*ℯ^atan(x)/(1 + x^2)^(3/2), x, 1, -((ℯ^atan(x)*(1 - x))/(2*sqrt(1 + x^2)))]
    @test_int [ℯ^atan(x)/(1 + x^2)^(3/2), x, 1, (ℯ^atan(x)*(1 + x))/(2*sqrt(1 + x^2))]
    @test_int [x^2/(1 + x^2)^2, x, 2, -(x/(2*(1 + x^2))) + atan(x)/2]
    @test_int [ℯ^x/(1 + ℯ^(2*x)), x, 2, atan(ℯ^x)]
    @test_int [acot(ℯ^x)/ℯ^x, x, 5, -x - acot(ℯ^x)/ℯ^x + (1/2)*log(1 + ℯ^(2*x))]
    @test_int [((a + x)/(a - x))^(1/2), x, 3, -((a - x)*sqrt((a + x)/(a - x))) + 2*a*atan(sqrt((a + x)/(a - x)))]
    @test_int [sqrt((x - a)*(b - x)), x, 4, (-(1/4))*(a + b - 2*x)*sqrt((-a)*b + (a + b)*x - x^2) - (1/8)*(a - b)^2*atan((a + b - 2*x)/(2*sqrt((-a)*b + (a + b)*x - x^2)))]
    @test_int [1/sqrt((x - a)*(b - x)), x, 3, -atan((a + b - 2*x)/(2*sqrt((-a)*b + (a + b)*x - x^2)))]


    #= ::Section::Closed:: =#
    #=Section*6.23*Integration*by*partial*fractions*(p. 258-264)=#


    #= ::Subsection::Closed:: =#
    #=Example*1=#


    @test_int [(5*x + 3)/(x^2 + 2*x - 3), x, 3, 2*log(1 - x) + 3*log(3 + x)]


    #= ::Subsection::Closed:: =#
    #=Example*2=#


    @test_int [(2*x + 5)/(x^2 + 2*x - 3), x, 3, (7/4)*log(1 - x) + (1/4)*log(3 + x)]
    @test_int [(x^3 + 3*x)/(x^2 - 2*x - 3), x, 6, 2*x + x^2/2 + 9*log(3 - x) + log(1 + x)]


    #= ::Subsection::Closed:: =#
    #=Example*3=#


    @test_int [(2*x^2 + 5*x - 1)/(x^3 + x^2 - 2*x), x, 3, 2*log(1 - x) + log(x)/2 - (1/2)*log(2 + x)]


    #= ::Subsection::Closed:: =#
    #=Example*4=#


    @test_int [(x^2 + 2*x + 3)/((x - 1)*(x + 1)^2), x, 2, 1/(1 + x) + (3/2)*log(1 - x) - (1/2)*log(1 + x)]


    #= ::Subsection::Closed:: =#
    #=Example*5=#


    @test_int [(3*x^2 + 2*x - 2)/(x^3 - 1), x, 5, (4*atan((1 + 2*x)/sqrt(3)))/sqrt(3) + log(1 - x^3)]


    #= ::Subsection::Closed:: =#
    #=Example*6=#


    @test_int [(x^4 - x^3 + 2*x^2 - x + 2)/((x - 1)*(x^2 + 2)^2), x, 6, 1/(2*(2 + x^2)) - atan(x/sqrt(2))/(3*sqrt(2)) + (1/3)*log(1 - x) + (1/3)*log(2 + x^2)]


    #= ::Section::Closed:: =#
    #=Section*6.24*Integrals*which*can*be*transformed*into*integrals*of*rational*functions*(p. 264-266)=#


    #= ::Subsection::Closed:: =#
    #=Example*1=#


    @test_int [1/(sin(x) + cos(x)), x, 2, -(atanh((cos(x) - sin(x))/sqrt(2))/sqrt(2))]


    #= ::Subsection::Closed:: =#
    #=Example*2=#


    @test_int [x/(4 - x^2 + sqrt(4 - x^2)), x, 3, -log(1 + sqrt(4 - x^2))]


    #= ::Section::Closed:: =#
    #=Section*6.25*Exercises*(p. 267-268)=#


    #= ::Subsection::Closed:: =#
    #=Exercises*1 - 10=#


    @test_int [(2*x + 3)/((x - 2)*(x + 5)), x, 2, log(2 - x) + log(5 + x)]
    @test_int [x/((x + 1)*(x + 2)*(x + 3)), x, 2, (-(1/2))*log(1 + x) + 2*log(2 + x) - (3/2)*log(3 + x)]
    @test_int [x/(x^3 - 3*x + 2), x, 2, 1/(3*(1 - x)) + (2/9)*log(1 - x) - (2/9)*log(2 + x)]
    @test_int [(x^4 + 2*x - 6)/(x^3 + x^2 - 2*x), x, 3, -x + x^2/2 - log(1 - x) + 3*log(x) + log(2 + x)]
    @test_int [(8*x^3 + 7)/((x + 1)*(2*x + 1)^3), x, 2, -(3/(1 + 2*x)^2) + 3/(1 + 2*x) + log(1 + x)]
    @test_int [(4*x^2 + x + 1)/(x^3 - 1), x, 3, 2*log(1 - x) + log(1 + x + x^2)]
    @test_int [x^4/(x^4 + 5*x^2 + 4), x, 4, x - (8/3)*atan(x/2) + atan(x)/3]
    @test_int [(x + 2)/(x^2 + x), x, 2, 2*log(x) - log(1 + x)]
    @test_int [1/(x*(x^2 + 1)^2), x, 3, 1/(2*(1 + x^2)) + log(x) - (1/2)*log(1 + x^2)]
    @test_int [1/((x + 1)*(x + 2)^2*(x + 3)^3), x, 2, 1/(2 + x) + 1/(4*(3 + x)^2) + 5/(4*(3 + x)) + (1/8)*log(1 + x) + 2*log(2 + x) - (17/8)*log(3 + x)]


    #= ::Subsection::Closed:: =#
    #=Exercises*11 - 20=#


    @test_int [x/(x + 1)^2, x, 2, 1/(1 + x) + log(1 + x)]
    @test_int [1/(x^3 - x), x, 5, -log(x) + (1/2)*log(1 - x^2)]
    @test_int [x^2/(x^2 + x - 6), x, 4, x + (4/5)*log(2 - x) - (9/5)*log(3 + x)]
    @test_int [(x + 2)/(x^2 - 4*x + 4), x, 3, 4/(2 - x) + log(2 - x)]
    @test_int [1/((x^2 - 4*x + 4)*(x^2 - 4*x + 5)), x, 4, 1/(2 - x) + atan(2 - x)]
    @test_int [(x - 3)/(x^3 + 3*x^2 + 2*x), x, 3, -((3*log(x))/2) + 4*log(1 + x) - (5/2)*log(2 + x)]
    @test_int [1/(x^2 - 1)^2, x, 2, x/(2*(1 - x^2)) + atanh(x)/2]
    @test_int [(x + 1)/(x^3 - 1), x, 3, (2/3)*log(1 - x) - (1/3)*log(1 + x + x^2)]
    @test_int [(x^4 + 1)/(x*(x^2 + 1)^2), x, 3, 1/(1 + x^2) + log(x)]
    @test_int [1/(x^4 - 2*x^3), x, 3, 1/(4*x^2) + 1/(4*x) + (1/8)*log(2 - x) - log(x)/8]


    #= ::Subsection::Closed:: =#
    #=Exercises*21 - 30=#


    @test_int [(1 - x^3)/(x*(x^2 + 1)), x, 5, -x + atan(x) + log(x) - log(1 + x^2)/2]
    @test_int [1/(x^4 - 1), x, 3, -(atan(x)/2) - atanh(x)/2]
    @test_int [1/(x^4 + 1), x, 9, -(atan(1 - sqrt(2)*x)/(2*sqrt(2))) + atan(1 + sqrt(2)*x)/(2*sqrt(2)) - log(1 - sqrt(2)*x + x^2)/(4*sqrt(2)) + log(1 + sqrt(2)*x + x^2)/(4*sqrt(2))]
    @test_int [x^2/(x^2 + 2*x + 2)^2, x, 3, -((x*(2 + x))/(2*(2 + 2*x + x^2))) + atan(1 + x)]
    @test_int [(4*x^5 - 1)/(x^5 + x + 1)^2, x, 1, -(x/(1 + x + x^5))]
    @test_int [1/(2*sin(x) - cos(x) + 5), x, 3, x/(2*sqrt(5)) + atan((2*cos(x) + sin(x))/(5 + 2*sqrt(5) - cos(x) + 2*sin(x)))/sqrt(5)]
    @test_int [1/(1 + a*cos(x)), x, 2, (2*atan((sqrt(1 - a)*tan(x/2))/sqrt(1 + a)))/sqrt(1 - a^2)]
    @test_int [1/(1 + 2*cos(x)), x, 2, -(log(sqrt(3)*cos(x/2) - sin(x/2))/sqrt(3)) + log(sqrt(3)*cos(x/2) + sin(x/2))/sqrt(3)]
    @test_int [1/(1 + 1/2*cos(x)), x, 1, (2*x)/sqrt(3) - (4*atan(sin(x)/(2 + sqrt(3) + cos(x))))/sqrt(3)]
    @test_int [sin(x)^2/(1 + sin(x)^2), x, 3, x - x/sqrt(2) - atan((cos(x)*sin(x))/(1 + sqrt(2) + sin(x)^2))/sqrt(2)]
    @test_int [1/(a^2*sin(x)^2 + b^2*cos(x)^2), x, 2, atan((a*tan(x))/b)/(a*b)]


    #= ::Subsection::Closed:: =#
    #=Exercises*31 - 40=#


    @test_int [1/(a*sin(x) + b*cos(x))^2, x, 1, sin(x)/(b*(b*cos(x) + a*sin(x)))]
    @test_int [sin(x)/(1 + sin(x) + cos(x)), x, 3, x/2 - (1/2)*log(1 + cos(x) + sin(x)) - (1/2)*log(1 + tan(x/2))]
    @test_int [sqrt(3 - x^2), x, 2, (1/2)*x*sqrt(3 - x^2) + (3/2)*asin(x/sqrt(3))]
    @test_int [x/sqrt(3 - x^2), x, 1, -sqrt(3 - x^2)]
    @test_int [sqrt(3 - x^2)/x, x, 4, sqrt(3 - x^2) - sqrt(3)*atanh(sqrt(3 - x^2)/sqrt(3))]
    @test_int [sqrt(x^2 + x)/x, x, 3, sqrt(x + x^2) + atanh(x/sqrt(x + x^2))]
    @test_int [sqrt(x^2 + 5), x, 2, (1/2)*x*sqrt(5 + x^2) + (5/2)*asinh(x/sqrt(5))]
    @test_int [x/sqrt(x^2 + x + 1), x, 3, sqrt(1 + x + x^2) - (1/2)*asinh((1 + 2*x)/sqrt(3))]
    @test_int [1/sqrt(x^2 + x), x, 2, 2*atanh(x/sqrt(x + x^2))]
    @test_int [sqrt(2 - x - x^2)/x^2, x, 6, -(sqrt(2 - x - x^2)/x) + asin((1/3)*(-1 - 2*x)) + atanh((4 - x)/(2*sqrt(2)*sqrt(2 - x - x^2)))/(2*sqrt(2))]


    #= ::Section::Closed:: =#
    #=Section*6.26*Miscellaneous*review*exercises*(p. 268-271)=#


    #= ::Subsection::Closed:: =#
    #=Exercise*1=#


    @test_int [log(t)/(t + 1), t, 2, log(t)*log(1 + t) + PolyLog(2, -t)]


    #= ::Subsection::Closed:: =#
    #=Exercise*4=#


    @test_int [log(ℯ^cos(x)), x, 3, (-x)*cos(x) + x*log(ℯ^cos(x)) + sin(x)]


    #= ::Subsection::Closed:: =#
    #=Exercise*6=#


    @test_int [ℯ^t/t, t, 1, ExpIntegralEi(t)]
    @test_int [ℯ^(a*t)/t, t, 1, ExpIntegralEi(a*t)]
    @test_int [ℯ^t/t^2, t, 2, -(ℯ^t/t) + ExpIntegralEi(t)]
    @test_int [ℯ^(1/t), t, 2, ℯ^(1/t)*t - ExpIntegralEi(1/t)]


    #= ::Subsection::Closed:: =#
    #=Exercise*12=#


    @test_int [1/(ℯ^t*(t - a - 1)), t, 1, ℯ^(-1 - a)*ExpIntegralEi(1 + a - t)]
    @test_int [t*(ℯ^t^2/(t^2 + 1)), t, 2, ExpIntegralEi(1 + t^2)/(2*ℯ)]
    @test_int [ℯ^t/(t + 1)^2, t, 2, -(ℯ^t/(1 + t)) + ExpIntegralEi(1 + t)/ℯ]
    @test_int [ℯ^t*log(1 + t), t, 2, -(ExpIntegralEi(1 + t)/ℯ) + ℯ^t*log(1 + t)]


    #= ::Subsection::Closed:: =#
    #=Exercise*25=#


    @test_int [t/ℯ^t, t, 2, -ℯ^(-t) - t/ℯ^t]
    @test_int [t^2/ℯ^t, t, 3, -2/ℯ^t - (2*t)/ℯ^t - t^2/ℯ^t]
    @test_int [t^3/ℯ^t, t, 4, -6/ℯ^t - (6*t)/ℯ^t - (3*t^2)/ℯ^t - t^3/ℯ^t]


    #= ::Subsection::Closed:: =#
    #=Exercise*26=#


    @test_int [(a1*sin(x) + b1*cos(x))/(a*sin(x) + b*cos(x)), x, 1, ((a*a1 + b*b1)*x)/(a^2 + b^2) - ((a1*b - a*b1)*log(b*cos(x) + a*sin(x)))/(a^2 + b^2)]


    #= ::Subsection::Closed:: =#
    #=Exercise*28=#


    @test_int [1/log(t), t, 1, LogIntegral(t)]
    @test_int [1/log(t)^2, t, 2, -(t/log(t)) + LogIntegral(t)]
    @test_int [1/log(t)^(n + 1), t, 2, ((-Gamma(-n, -log(t)))*(-log(t))^n)/log(t)^n]
    @test_int [ℯ^(2*t)/(t - 1), t, 1, ℯ^2*ExpIntegralEi(-2*(1 - t))]
    @test_int [ℯ^(2*x)/(x^2 - 3*x + 2), x, 4, ℯ^4*ExpIntegralEi(-4 + 2*x) - ℯ^2*ExpIntegralEi(-2 + 2*x)]


    #= ::Subsection::Closed:: =#
    #=Exercise*30=#


    @test_int [1/(1 + t^3)^(1/2), t, 1, (2*sqrt(2 + sqrt(3))*(1 + t)*sqrt((1 - t + t^2)/(1 + sqrt(3) + t)^2)*EllipticF(asin((1 - sqrt(3) + t)/(1 + sqrt(3) + t)), -7 - 4*sqrt(3)))/(3^(1/4)*sqrt((1 + t)/(1 + sqrt(3) + t)^2)*sqrt(1 + t^3))]
    end
