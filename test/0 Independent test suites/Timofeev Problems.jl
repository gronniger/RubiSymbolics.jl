@testset "Timofeev Problems" begin
    @variables A, B, a, b, b1, c, c1, k, l, m, n, r, s, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=A. F. Timofeev - Integration*of*Functions*(1948)=#


    #= ::Section::Closed:: =#
    #=Chapter*1*Integration*Problems=#


    #= ::Subsection::Closed:: =#
    #=Problems*1 - 5*(p. 25)=#


    @test_int [1/(a^2 - b^2*x^2), x, 1, atanh((b*x)/a)/(a*b)]
    @test_int [1/(a^2 + b^2*x^2), x, 1, atan((b*x)/a)/(a*b)]
    @test_int [sec(2*a*x), x, 1, atanh(sin(2*a*x))/(2*a)]
    @test_int [1/(4*sin(x/3)), x, 2, (-3*atanh(cos(x/3)))/4]
    @test_int [1/cos(3*pi/4 - 2*x), x, 1, -atanh(sin(pi/4 + 2*x))/2]


    #= ::Subsection::Closed:: =#
    #=Problems*6 - 11*(p. 25-26)=#


    @test_int [sec(x)*tan(x), x, 2, sec(x)]
    @test_int [csc(x)*cot(x), x, 2, -csc(x)]
    @test_int [tan(x)/sin(2*x), x, 2, tan(x)/2]
    @test_int [1/(1 + cos(x)), x, 1, sin(x)/(1 + cos(x))]
    @test_int [1/(1 - cos(x)), x, 1, -(sin(x)/(1 - cos(x)))]
    @test_int [sin(x)/(a - b*cos(x)), x, 2, log(a - b*cos(x))/b]


    #= ::Subsection::Closed:: =#
    #=Problems*12 - 16*(p. 26)=#


    @test_int [cos(x)/(a^2 + b^2*sin(x)^2), x, 2, atan((b*sin(x))/a)/(a*b)]
    @test_int [cos(x)/(a^2 - b^2*sin(x)^2), x, 2, atanh((b*sin(x))/a)/(a*b)]
    @test_int [sin(2*x)/(a^2 + b^2*sin(x)^2), x, 3, log(a^2 + b^2*sin(x)^2)/b^2]
    @test_int [sin(2*x)/(a^2 - b^2*sin(x)^2), x, 3, -log(a^2 - b^2*sin(x)^2)/b^2]
    @test_int [sin(2*x)/(a^2 + b^2*cos(x)^2), x, 3, -log(a^2 + b^2*cos(x)^2)/b^2, -log(a^2 + b^2 - b^2*sin(x)^2)/b^2]
    @test_int [sin(2*x)/(a^2 - b^2*cos(x)^2), x, 3, log(a^2 - b^2*cos(x)^2)/b^2, log(a^2 - b^2 + b^2*sin(x)^2)/b^2]
    @test_int [1/(4 - cos(x)^2), x, 2, x/(2*sqrt(3)) + (1/(2*sqrt(3)))*atan((cos(x)*sin(x))/(3 + 2*sqrt(3) + sin(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Problems*17 - 21*(p. 26)=#


    @test_int [ℯ^x/(-1 + ℯ^(2*x)), x, 2, -atanh(ℯ^x)]
    @test_int [1/(x*log(x)), x, 2, log(log(x))]
    @test_int [1/(x*(1 + log(x)^2)), x, 2, atan(log(x))]
    @test_int [1/(x*(1 - log(x))), x, 2, -log(1 - log(x))]
    @test_int [1/(x*(1 + log(x/a))), x, 2, log(1 + log(x/a))]


    #= ::Subsection::Closed:: =#
    #=Problems*22 - 26*(p. 27)=#


    @test_int [(1 - sqrt(x) + x)^2/x^2, x, 3, -1/x + 4/sqrt(x) - 4*sqrt(x) + x + 3*log(x)]
    @test_int [(2 - x^(2/3))*(x + sqrt(x))/x^(3/2), x, 4, 4*sqrt(x) - (3*x^(2/3))/2 - (6*x^(7/6))/7 + 2*log(x)]
    @test_int [(2*x - 1)/(2*x + 3), x, 2, x - 2*log(2*x + 3)]
    @test_int [(2*x - 5)/(3*x^2 - 2), x, 3, (1/12)*(4 - 5*sqrt(6))*log(sqrt(6) - 3*x) + (1/12)*(4 + 5*sqrt(6))*log(sqrt(6) + 3*x)]
    @test_int [(2*x - 5)/(3*x^2 + 2), x, 3, (-5*atan(sqrt(3/2)*x))/sqrt(6) + log(3*x^2 + 2)/3]


    #= ::Subsection::Closed:: =#
    #=Problems*27 - 33*(p. 27-28)=#


    @test_int [sin(x/4)*sin(x), x, 1, (2*sin((3*x)/4))/3 - (2*sin((5*x)/4))/5]
    @test_int [cos(3*x)*cos(4*x), x, 1, sin(x)/2 + sin(7*x)/14]
    @test_int [tan(x)*tan(x - a), x, 4, -x + cot(a)*log(cos(x - a)) - cot(a)*log(cos(x))]
    @test_int [sin(x)^2, x, 2, x/2 - (cos(x)*sin(x))/2]
    @test_int [cos(x)^2, x, 2, x/2 + (cos(x)*sin(x))/2]
    @test_int [sin(x)*cos(x)^3, x, 2, -cos(x)^4/4]
    @test_int [cos(x)^3/sin(x)^4, x, 2, 1/sin(x) - 1/(3*sin(x)^3)]
    @test_int [1/(sin(x)^2*cos(x)^2), x, 3, tan(x) - cot(x)]


    #= ::Subsection::Closed:: =#
    #=Problems*34 - 37*(p. 28)=#


    @test_int [cot(3*x/4)^2, x, 2, -x - (4*cot((3*x)/4))/3]
    @test_int [(1 + tan(2*x))^2, x, 2, -log(cos(2*x)) + tan(2*x)/2]
    @test_int [(tan(x) - cot(x))^2, x, 4, -4*x - cot(x) + tan(x)]
    @test_int [(tan(x) - sec(x))^2, x, 4, -x - (2*cos(x))/(1 + sin(x))]


    #= ::Subsection::Closed:: =#
    #=Problems*38 - 40*(p. 28)=#


    @test_int [sin(x)/(1 + sin(x)), x, 2, x + cos(x)/(1 + sin(x))]
    @test_int [cos(x)/(1 - cos(x)), x, 2, -x - sin(x)/(1 - cos(x))]
    @test_int [(ℯ^(x/2) - 1)^3*ℯ^(-x/2), x, 3, 2/ℯ^(x/2) - 6*ℯ^(x/2) + ℯ^x + 3*x]


    #= ::Subsection::Closed:: =#
    #=Problems*41 - 43*(p. 35)=#


    @test_int [1/(5 - 6*x + x^2), x, 3, -log(1 - x)/4 + log(5 - x)/4]
    @test_int [x^2/(13 - 6*x^3 + x^6), x, 3, (1/6)*atan((1/2)*(-3 + x^3))]
    @test_int [(2 + x)/(-1 - 4*x + x^2), x, 3, ((5 - 4*sqrt(5))*log(2 - sqrt(5) - x))/10 + ((5 + 4*sqrt(5))*log(2 + sqrt(5) - x))/10]


    #= ::Subsection::Closed:: =#
    #=Problems*44 - 48c*(p. 35-36)=#


    @test_int [1/(1 + (1 + x)^(1/3)), x, 4, -3*(1 + x)^(1/3) + (3*(1 + x)^(2/3))/2 + 3*log(1 + (1 + x)^(1/3))]
    @test_int [1/(sqrt(x)*(a*x + b)), x, 2, (2*atan((sqrt(a)*sqrt(x))/sqrt(b)))/(sqrt(a)*sqrt(b))]
    @test_int [x^3*sqrt(1 + x^2), x, 3, -(1 + x^2)^(3/2)/3 + (1 + x^2)^(5/2)/5]
    @test_int [x/sqrt(a^4 - x^4), x, 3, atan(x^2/sqrt(a^4 - x^4))/2]
    @test_int [1/(x*sqrt(x^2 - a^2)), x, 3, atan(sqrt(x^2 - a^2)/a)/a]
    @test_int [1/(x*sqrt(a^2 - x^2)), x, 3, -(atanh(sqrt(a^2 - x^2)/a)/a)]
    @test_int [1/(x*sqrt(x^2 + a^2)), x, 3, -(atanh(sqrt(x^2 + a^2)/a)/a)]


    #= ::Subsection::Closed:: =#
    #=Problems*49 - 54*(p. 36)=#


    @test_int [1/sqrt(2 + x - x^2), x, 2, -asin((1 - 2*x)/3)]
    @test_int [1/sqrt(5 - 4*x + 3*x^2), x, 2, -(asinh((2 - 3*x)/sqrt(11))/sqrt(3))]
    @test_int [1/sqrt(x - x^2), x, 2, -asin(1 - 2*x)]
    @test_int [(1 + 2*x)/sqrt(2 + x - x^2), x, 3, -2*sqrt(2 + x - x^2) - 2*asin((1 - 2*x)/3)]
    @test_int [1/(x*sqrt(2 + x - x^2)), x, 2, -(atanh((4 + x)/(2*sqrt(2)*sqrt(2 + x - x^2)))/sqrt(2))]
    @test_int [1/((x - 2)*sqrt(2 + x - x^2)), x, 1, 2*sqrt(2 + x - x^2)/(3*(x - 2)), -((2*sqrt(2 + x - x^2))/(3*(2 - x)))]


    #= ::Subsection::Closed:: =#
    #=Problems*55 - 60*(p. 36-37)=#


    @test_int [(2 + 3*sin(x))/(sin(x)*(1 - cos(x))), x, 7, -atanh(cos(x)) - 1/(1 - cos(x)) - (3*sin(x))/(1 - cos(x))]
    @test_int [1/(2 + 3*cos(x)^2), x, 2, x/sqrt(10) - 1/sqrt(10)*atan(3*cos(x)*sin(x)/(2 + sqrt(10) + 3*cos(x)^2)), x/sqrt(10) - atan(((-1 + sqrt(5/2))*cos(x)*sin(x))/(1 + (-1 + sqrt(5/2))*cos(x)^2))/sqrt(10)]
    @test_int [(1 - tan(x))/sin(2*x), x, 3, log(tan(x))/2 - tan(x)/2]
    @test_int [(1 + tan(x)^2)/(1 - tan(x)^2), x, 2, (1/2)*atanh(2*cos(x)*sin(x))]
    @test_int [(a^2 - 4*cos(x)^2)^(3/4)*sin(2*x), x, 3, (1/7)*(a^2 - 4*cos(x)^2)^(7/4), 1/7*(a^2 - 4 + 4*sin(x)^2)^(7/4)]
    @test_int [sin(2*x)/(a^2 - 4*sin(x)^2)^(1/3), x, 3, -3/8*(a^2 - 4*sin(x)^2)^(2/3)]


    #= ::Subsection::Closed:: =#
    #=Problems*61 - 65*(p. 37)=#


    @test_int [1/sqrt(a^(2*x) - 1), x, 3, atan(sqrt(a^(2*x) - 1))/log(a)]
    @test_int [ℯ^(x/2)/sqrt(ℯ^x - 1), x, 3, 2*atanh(ℯ^(x/2)/sqrt(ℯ^x - 1))]
    @test_int [atan(x)^n/(1 + x^2), x, 1, atan(x)^(n + 1)/(n + 1)]
    @test_int [asin(x/a)^(3/2)/sqrt(a^2 - x^2), x, 1, (2*a*sqrt(1 - x^2/a^2)*asin(x/a)^(5/2))/(5*sqrt(a^2 - x^2))]
    @test_int [1/(acos(x)^3*sqrt(1 - x^2)), x, 1, 1/(2*acos(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Problems*66 - 68*(p. 41)=#


    @test_int [x*log(x)^2, x, 2, x^2/4 - (x^2*log(x))/2 + (x^2*log(x)^2)/2]
    @test_int [log(x)/x^5, x, 1, -1/(16*x^4) - log(x)/(4*x^4)]
    @test_int [x^2*log((x - 1)/x), x, 5, -x/3 - x^2/6 + x^3*log((x - 1)/x)/3 - log(x - 1)/3, -(x/3) - x^2/6 + (1/3)*x^3*log(1 - 1/x) - (1/3)*log(1 - x)]


    #= ::Subsection::Closed:: =#
    #=Problems*69 - 71*(p. 41)=#


    @test_int [cos(x)^5, x, 2, sin(x) - (2*sin(x)^3)/3 + sin(x)^5/5]
    @test_int [sin(x)^2*cos(x)^4, x, 4, x/16 + (cos(x)*sin(x))/16 + (cos(x)^3*sin(x))/24 - (cos(x)^5*sin(x))/6]
    @test_int [1/sin(x)^5, x, 3, (-3*atanh(cos(x)))/8 - (3*cot(x)*csc(x))/8 - (cot(x)*csc(x)^3)/4]


    #= ::Subsection::Closed:: =#
    #=Problems*72 - 76*(p. 42)=#


    @test_int [sin(x)/ℯ^x, x, 1, -cos(x)/(2*ℯ^x) - sin(x)/(2*ℯ^x)]
    @test_int [ℯ^(2*x)*sin(3*x), x, 1, (-3*ℯ^(2*x)*cos(3*x))/13 + (2*ℯ^(2*x)*sin(3*x))/13]
    @test_int [a^x*cos(x), x, 1, (a^x*cos(x)*log(a))/(1 + log(a)^2) + (a^x*sin(x))/(1 + log(a)^2)]
    @test_int [cos(log(x)), x, 1, (x*cos(log(x)))/2 + (x*sin(log(x)))/2]
    @test_int [sec(x)^2*log(cos(x)), x, 3, -x + tan(x) + log(cos(x))*tan(x)]


    #= ::Subsection::Closed:: =#
    #=Problems*77 - 81*(p. 42)=#


    @test_int [x*tan(x)^2, x, 3, -x^2/2 + log(cos(x)) + x*tan(x)]
    @test_int [asin(x)/x^2, x, 4, -(asin(x)/x) - atanh(sqrt(1 - x^2))]
    @test_int [asin(x)^2, x, 3, -2*x + 2*sqrt(1 - x^2)*asin(x) + x*asin(x)^2]
    @test_int [atan(x)*x^2/(1 + x^2), x, 4, x*atan(x) - atan(x)^2/2 - log(1 + x^2)/2]
    @test_int [acos(sqrt(x/(1 + x))), x, 6, (1 + x)*(sqrt(1/(1 + x))*sqrt(x/(1 + x)) + acos(sqrt(x/(1 + x)))), sqrt(x/(1 + x)^2)*(1 + x) + x*acos(sqrt(x/(1 + x))) - (sqrt(x/(1 + x)^2)*(1 + x)*atan(sqrt(x)))/sqrt(x)]


    #= ::Section::Closed:: =#
    #=Chapter*2*Integration*Problems=#


    #= ::Subsection::Closed:: =#
    #=Problems*1 - 3*(p. 60)=#


    @test_int [(3*x^2 + 2*x)^3, x, 2, 2*x^4 + (36*x^5)/5 + 9*x^6 + (27*x^7)/7]
    @test_int [(3*x^2 + 2*x - 1)^2*(x - 1), x, 2, -x + (5*x^2)/2 - (2*x^3)/3 - (7*x^4)/2 + (3*x^5)/5 + (3*x^6)/2]
    @test_int [(a + b*x^k)^n*x^(k - 1), x, 1, (a + b*x^k)^(1 + n)/(b*k*(1 + n))]


    #= ::Subsection::Closed:: =#
    #=Problems*4 - 9*(p. 62-63)=#


    @test_int [x^3/(1 + 2*x), x, 2, x/8 - x^2/8 + x^3/6 - (1/16)*log(1 + 2*x)]
    @test_int [x^6/(2 + 3*x^2), x, 3, (4*x)/27 - (2*x^3)/27 + x^5/15 - (4/27)*sqrt(2/3)*atan(sqrt(3/2)*x)]
    @test_int [1/(3*x^2 - 7*x + 2), x, 3, (-(1/5))*log(1 - 3*x) + (1/5)*log(2 - x)]
    @test_int [(3*x - 1)/(x^2 - x + 1), x, 4, -(atan((1 - 2*x)/sqrt(3))/sqrt(3)) + (3/2)*log(1 - x + x^2)]
    @test_int [x^2/(5 + 2*x + x^2), x, 5, x - (3/2)*atan((1 + x)/2) - log(5 + 2*x + x^2)]
    @test_int [(6*x^4 - 5*x^3 + 4*x^2)/(2*x^2 - x + 1), x, 7, -(x^2/2) + x^3 - atan((1 - 4*x)/sqrt(7))/(2*sqrt(7)) + (1/4)*log(1 - x + 2*x^2)]


    #= ::Subsection::Closed:: =#
    #=Problems*10 - 14*(p. 63)=#


    @test_int [(x^2 + x - 1)/(x^3 + x^2 - 6*x), x, 3, (1/2)*log(2 - x) + log(x)/6 + (1/3)*log(3 + x)]
    @test_int [(5*x^2 - 7*a*x + 11*a^2)/(x^3 - 6*a*x^2 + 11*a^2*x - 6*a^3), x, 2, (9/2)*log(a - x) - 17*log(2*a - x) + (35/2)*log(3*a - x)]
    @test_int [(x^2 - x + 2)/(x^4 - 5*x^2 + 4), x, 12, (-(1/3))*log(1 - x) + (1/3)*log(2 - x) + (2/3)*log(1 + x) - (2/3)*log(2 + x), (-(1/2))*log(1 - x) + (1/2)*log(2 - x) + (1/2)*log(1 + x) - (1/2)*log(2 + x) + (1/6)*log(1 - x^2) - (1/6)*log(4 - x^2)]
    @test_int [(2*x^2 - 5)/(x^4 - 5*x^2 + 6), x, 3, -(atanh(x/sqrt(2))/sqrt(2)) - atanh(x/sqrt(3))/sqrt(3)]
    @test_int [1/((x - 1)*(x - 2)*(x - 3)*(x - 4)), x, 2, (-(1/6))*log(1 - x) + (1/2)*log(2 - x) - (1/2)*log(3 - x) + (1/6)*log(4 - x)]


    #= ::Subsection::Closed:: =#
    #=Problems*15 - 17*(p. 64)=#


    @test_int [(x^2 + 1)/(x - 1)^3, x, 2, -(1/(1 - x)^2) + 2/(1 - x) + log(1 - x)]
    @test_int [x^5/(3 + x)^2, x, 2, -108*x + (27*x^2)/2 - 2*x^3 + x^4/4 + 243/(3 + x) + 405*log(3 + x)]
    @test_int [(5*x^3 - 2)/(x^4 - 8*x^3 + 18*x^2 - 27), x, 2, -(133/(8*(3 - x)^2)) + 407/(16*(3 - x)) + (313/64)*log(3 - x) + (7/64)*log(1 + x)]


    #= ::Subsection::Closed:: =#
    #=Problems*18 - 20*(p. 65)=#


    @test_int [(x^3 - 6*x^2 + 3*x - 9)/((x + 3)^2*(x + 4)^2), x, 2, 99/(3 + x) + 181/(4 + x) + 264*log(3 + x) - 263*log(4 + x)]
    @test_int [(x^3 + x^2 + 2)/(x*(x^2 - 1)^2), x, 3, (3 + x)/(2*(1 - x^2)) - (3/4)*log(1 - x) + 2*log(x) - (5/4)*log(1 + x)]
    @test_int [1/(x^3 - x^4 - x^5 + x^6), x, 2, 1/(2*(1 - x)) - 1/(2*x^2) - 1/x - (7/4)*log(1 - x) + 2*log(x) - (1/4)*log(1 + x)]


    #= ::Subsection::Closed:: =#
    #=Problems*21 - 25*(p. 66)=#


    @test_int [(x^4 + 1)/(x^3 - x^2 + x - 1), x, 5, x + x^2/2 - atan(x) + log(1 - x) - (1/2)*log(1 + x^2)]
    @test_int [1/(x*(1 + x)*(1 + x^2)), x, 5, -(atan(x)/2) + log(x) - (1/2)*log(1 + x) - (1/4)*log(1 + x^2)]
    @test_int [x^2/(x^4 + x^2 - 2), x, 3, (1/3)*sqrt(2)*atan(x/sqrt(2)) - atanh(x)/3]
    @test_int [(x^3 + 4*x^2 + 6*x)/(x^4 + 2*x^3 + 3*x^2 + 4*x + 2), x, 6, 1/(1 + x) + (4/3)*sqrt(2)*atan(x/sqrt(2)) - (1/3)*log(1 + x) + (2/3)*log(2 + x^2)]
    @test_int [x/((1 + x)*(1 + 2*x)^2*(1 + x^2)), x, 5, 2/(5*(1 + 2*x)) + atan(x)/50 - (1/2)*log(1 + x) + (16/25)*log(1 + 2*x) - (7/100)*log(1 + x^2)]


    #= ::Subsection::Closed:: =#
    #=Problems*26 - 27*(p. 67)=#


    @test_int [(3*x^2 + x - 2)/((x - 1)^3*(x^2 + 1)), x, 5, -(1/(2*(1 - x)^2)) + 5/(2*(1 - x)) - atan(x) - (3/2)*log(1 - x) + (3/4)*log(1 + x^2)]
    @test_int [1/(x^4 + x^2 + 1), x, 9, -(atan((1 - 2*x)/sqrt(3))/(2*sqrt(3))) + atan((1 + 2*x)/sqrt(3))/(2*sqrt(3)) - (1/4)*log(1 - x + x^2) + (1/4)*log(1 + x + x^2)]


    #= ::Subsection::Closed:: =#
    #=Problems*28 - 32*(p. 68)=#


    @test_int [(2*x^3 + 3)/(x^5 - 9*x), x, 10, atan(x/sqrt(3))/sqrt(3) - atanh(x/sqrt(3))/sqrt(3) - log(x)/3 + (1/12)*log(9 - x^4)]
    @test_int [(5*x^3 + 8*x - 20)/((x - 4)^3*(x^2 - 4*x + 8)), x, 6, -(83/(4*(4 - x)^2)) + 41/(4*(4 - x)) - (3/16)*atan(1 - x/2) - (45/16)*log(4 - x) + (45/32)*log(8 - 4*x + x^2)]
    @test_int [1/((x^2 + 1)*(x^2 + 2)*(x^2 + 3)*(x^2 + 4)), x, 6, (-(1/12))*atan(x/2) + atan(x)/6 - atan(x/sqrt(2))/(2*sqrt(2)) + atan(x/sqrt(3))/(2*sqrt(3))]
    @test_int [x/((x^2 + 1)*(x^2 + 2)*(x^2 + 3)*(x^2 + 4)), x, 3, (1/12)*log(1 + x^2) - (1/4)*log(2 + x^2) + (1/4)*log(3 + x^2) - (1/12)*log(4 + x^2)]
    @test_int [1/(a^3 + x^3), x, 6, -(atan((a - 2*x)/(sqrt(3)*a))/(sqrt(3)*a^2)) + log(a + x)/(3*a^2) - log(a^2 - a*x + x^2)/(6*a^2)]


    #= ::Subsection::Closed:: =#
    #=Problems*33 - 44*(p. 69)=#


    @test_int [x/(a^3 + x^3), x, 6, -(atan((a - 2*x)/(sqrt(3)*a))/(sqrt(3)*a)) - log(a + x)/(3*a) + log(a^2 - a*x + x^2)/(6*a)]
    @test_int [x^2/(a^3 + x^3), x, 1, (1/3)*log(a^3 + x^3)]
    @test_int [1/(x*(a^3 + x^3)), x, 4, log(x)/a^3 - log(a^3 + x^3)/(3*a^3)]
    @test_int [1/(x^2*(a^3 + x^3)), x, 7, -(1/(a^3*x)) + atan((a - 2*x)/(sqrt(3)*a))/(sqrt(3)*a^4) + log(a + x)/(3*a^4) - log(a^2 - a*x + x^2)/(6*a^4)]
    @test_int [1/(x^3*(a^3 + x^3)), x, 7, -(1/(2*a^3*x^2)) + atan((a - 2*x)/(sqrt(3)*a))/(sqrt(3)*a^5) - log(a + x)/(3*a^5) + log(a^2 - a*x + x^2)/(6*a^5)]
    @test_int [1/(x^4*(a^3 + x^3)), x, 3, -(1/(3*a^3*x^3)) - log(x)/a^6 + log(a^3 + x^3)/(3*a^6)]
    @test_int [1/(x^5*(a^3 + x^3)), x, 8, -(1/(4*a^3*x^4)) + 1/(a^6*x) - atan((a - 2*x)/(sqrt(3)*a))/(sqrt(3)*a^7) - log(a + x)/(3*a^7) + log(a^2 - a*x + x^2)/(6*a^7)]
    @test_int [1/(x^m*(a^3 + x^3)), x, 1, (x^(1 - m)*Hypergeometric2F1(1, (1 - m)/3, (4 - m)/3, -(x^3/a^3)))/(a^3*(1 - m))]
    @test_int [1/(a^4 - x^4), x, 3, atan(x/a)/(2*a^3) + atanh(x/a)/(2*a^3)]
    @test_int [x/(a^4 - x^4), x, 2, atanh(x^2/a^2)/(2*a^2)]
    @test_int [1/(x*(a^4 - x^4)), x, 4, log(x)/a^4 - log(a^4 - x^4)/(4*a^4)]
    @test_int [1/(x^2*(a^4 - x^4)), x, 4, -(1/(a^4*x)) - atan(x/a)/(2*a^5) + atanh(x/a)/(2*a^5)]
    @test_int [1/(x^3*(a^4 - x^4)), x, 3, -(1/(2*a^4*x^2)) + atanh(x^2/a^2)/(2*a^6)]
    @test_int [1/(x^4*(a^4 - x^4)), x, 4, -(1/(3*a^4*x^3)) + atan(x/a)/(2*a^7) + atanh(x/a)/(2*a^7)]
    @test_int [1/(x^m*(a^4 - x^4)), x, 1, (x^(1 - m)*Hypergeometric2F1(1, (1 - m)/4, (5 - m)/4, x^4/a^4))/(a^4*(1 - m))]
    @test_int [x/(a^4 + x^4), x, 2, atan(x^2/a^2)/(2*a^2)]
    @test_int [x^2/(a^4 + x^4), x, 9, -(atan(1 - (sqrt(2)*x)/a)/(2*sqrt(2)*a)) + atan(1 + (sqrt(2)*x)/a)/(2*sqrt(2)*a) + log(a^2 - sqrt(2)*a*x + x^2)/(4*sqrt(2)*a) - log(a^2 + sqrt(2)*a*x + x^2)/(4*sqrt(2)*a)]
    @test_int [1/(a^5 + x^5), x, 6, -((sqrt((1/2)*(5 + sqrt(5)))*atan(((1 - sqrt(5))*a - 4*x)/(sqrt(2*(5 + sqrt(5)))*a)))/(5*a^4)) - (sqrt((1/2)*(5 - sqrt(5)))*atan((sqrt((1/10)*(5 + sqrt(5)))*((1 + sqrt(5))*a - 4*x))/(2*a)))/(5*a^4) + log(a + x)/(5*a^4) - ((1 - sqrt(5))*log(a^2 - (1/2)*(1 - sqrt(5))*a*x + x^2))/(20*a^4) - ((1 + sqrt(5))*log(a^2 - (1/2)*(1 + sqrt(5))*a*x + x^2))/(20*a^4)]


    #= ::Subsection::Closed:: =#
    #=Problems*45 - 50*(p. 71-72)=#


    @test_int [x/(a^5 + x^5), x, 6, (sqrt((1/2)*(5 - sqrt(5)))*atan(((1 - sqrt(5))*a - 4*x)/(sqrt(2*(5 + sqrt(5)))*a)))/(5*a^3) - (sqrt((1/2)*(5 + sqrt(5)))*atan((sqrt((1/10)*(5 + sqrt(5)))*((1 + sqrt(5))*a - 4*x))/(2*a)))/(5*a^3) - log(a + x)/(5*a^3) + ((1 + sqrt(5))*log(a^2 - (1/2)*(1 - sqrt(5))*a*x + x^2))/(20*a^3) + ((1 - sqrt(5))*log(a^2 - (1/2)*(1 + sqrt(5))*a*x + x^2))/(20*a^3)]
    @test_int [x^2/(a^5 + x^5), x, 6, (sqrt((1/2)*(5 - sqrt(5)))*atan(((1 - sqrt(5))*a - 4*x)/(sqrt(2*(5 + sqrt(5)))*a)))/(5*a^2) - (sqrt((1/2)*(5 + sqrt(5)))*atan((sqrt((1/10)*(5 + sqrt(5)))*((1 + sqrt(5))*a - 4*x))/(2*a)))/(5*a^2) + log(a + x)/(5*a^2) - ((1 + sqrt(5))*log(a^2 - (1/2)*(1 - sqrt(5))*a*x + x^2))/(20*a^2) - ((1 - sqrt(5))*log(a^2 - (1/2)*(1 + sqrt(5))*a*x + x^2))/(20*a^2)]
    @test_int [x^3/(a^5 + x^5), x, 6, -((sqrt((1/2)*(5 + sqrt(5)))*atan(((1 - sqrt(5))*a - 4*x)/(sqrt(2*(5 + sqrt(5)))*a)))/(5*a)) - (sqrt((1/2)*(5 - sqrt(5)))*atan((sqrt((1/10)*(5 + sqrt(5)))*((1 + sqrt(5))*a - 4*x))/(2*a)))/(5*a) - log(a + x)/(5*a) + ((1 - sqrt(5))*log(a^2 - (1/2)*(1 - sqrt(5))*a*x + x^2))/(20*a) + ((1 + sqrt(5))*log(a^2 - (1/2)*(1 + sqrt(5))*a*x + x^2))/(20*a)]
    @test_int [x^4/(a^5 + x^5), x, 1, (1/5)*log(a^5 + x^5)]
    @test_int [1/(x*(a^5 + x^5)), x, 4, log(x)/a^5 - log(a^5 + x^5)/(5*a^5)]
    @test_int [1/(x^2*(a^5 + x^5)), x, 7, -(1/(a^5*x)) + (sqrt((1/2)*(5 + sqrt(5)))*atan(((1 - sqrt(5))*a - 4*x)/(sqrt(2*(5 + sqrt(5)))*a)))/(5*a^6) + (sqrt((1/2)*(5 - sqrt(5)))*atan((sqrt((1/10)*(5 + sqrt(5)))*((1 + sqrt(5))*a - 4*x))/(2*a)))/(5*a^6) + log(a + x)/(5*a^6) - ((1 - sqrt(5))*log(a^2 - (1/2)*(1 - sqrt(5))*a*x + x^2))/(20*a^6) - ((1 + sqrt(5))*log(a^2 - (1/2)*(1 + sqrt(5))*a*x + x^2))/(20*a^6)]
    @test_int [1/(x^3*(a^5 + x^5)), x, 7, -(1/(2*a^5*x^2)) - (sqrt((1/2)*(5 - sqrt(5)))*atan(((1 - sqrt(5))*a - 4*x)/(sqrt(2*(5 + sqrt(5)))*a)))/(5*a^7) + (sqrt((1/2)*(5 + sqrt(5)))*atan((sqrt((1/10)*(5 + sqrt(5)))*((1 + sqrt(5))*a - 4*x))/(2*a)))/(5*a^7) - log(a + x)/(5*a^7) + ((1 + sqrt(5))*log(a^2 - (1/2)*(1 - sqrt(5))*a*x + x^2))/(20*a^7) + ((1 - sqrt(5))*log(a^2 - (1/2)*(1 + sqrt(5))*a*x + x^2))/(20*a^7)]
    @test_int [1/(x^4*(a^5 + x^5)), x, 7, -(1/(3*a^5*x^3)) - (sqrt((1/2)*(5 - sqrt(5)))*atan(((1 - sqrt(5))*a - 4*x)/(sqrt(2*(5 + sqrt(5)))*a)))/(5*a^8) + (sqrt((1/2)*(5 + sqrt(5)))*atan((sqrt((1/10)*(5 + sqrt(5)))*((1 + sqrt(5))*a - 4*x))/(2*a)))/(5*a^8) + log(a + x)/(5*a^8) - ((1 + sqrt(5))*log(a^2 - (1/2)*(1 - sqrt(5))*a*x + x^2))/(20*a^8) - ((1 - sqrt(5))*log(a^2 - (1/2)*(1 + sqrt(5))*a*x + x^2))/(20*a^8)]
    @test_int [1/(x^m*(a^5 + x^5)), x, 1, (x^(1 - m)*Hypergeometric2F1(1, (1 - m)/5, (6 - m)/5, -(x^5/a^5)))/(a^5*(1 - m))]


    #= ::Subsection::Closed:: =#
    #=Problems*51 - 57*(p. 77-79)=#


    @test_int [(x^4 + 1)/(x^6 + 1), x, 22, (-(1/3))*atan(sqrt(3) - 2*x) + (2*atan(x))/3 + (1/3)*atan(sqrt(3) + 2*x)]
    @test_int [1/(x^2 + 3*x + 5)^3, x, 4, (3 + 2*x)/(22*(5 + 3*x + x^2)^2) + (3*(3 + 2*x))/(121*(5 + 3*x + x^2)) + (12*atan((3 + 2*x)/sqrt(11)))/(121*sqrt(11))]
    @test_int [(x^4 + x^2 + 1)/(x^2 + 1)^4, x, 4, x/(6*(1 + x^2)^3) - x/(24*(1 + x^2)^2) + (7*x)/(16*(1 + x^2)) + (7*atan(x))/16]
    @test_int [(A*x + B)/(a*x^2 + 2*b*x + c)^2, x, 3, -((b*B - A*c - (A*b - a*B)*x)/(2*(b^2 - a*c)*(c + 2*b*x + a*x^2))) - ((A*b - a*B)*atanh((b + a*x)/sqrt(b^2 - a*c)))/(2*(b^2 - a*c)^(3/2))]
    @test_int [(5*x^3 - 27*x^2 + 55*x - 41)/(x^2 - 4*x + 5)^2, x, 5, (1 - x)/(5 - 4*x + x^2) - 2*atan(2 - x) + (5/2)*log(5 - 4*x + x^2)]
    @test_int [1/(x^3 - 1)^2, x, 7, x/(3*(1 - x^3)) + (2*atan((1 + 2*x)/sqrt(3)))/(3*sqrt(3)) - (2/9)*log(1 - x) + (1/9)*log(1 + x + x^2)]
    @test_int [(3*x^4 + 4)/(x^2*(x^2 + 1)^3), x, 4, -(4/x) - (7*x)/(4*(1 + x^2)^2) - (25*x)/(8*(1 + x^2)) - (57*atan(x))/8]


    #= ::Subsection::Closed:: =#
    #=Problems*58 - 65*(p. 80-81)=#


    @test_int [x/(x^6 + 1), x, 7, -(atan((1 - 2*x^2)/sqrt(3))/(2*sqrt(3))) + (1/6)*log(1 + x^2) - (1/12)*log(1 - x^2 + x^4)]
    @test_int [(x^(n - 1) - 1)/(x^n - n*x), x, 5, log(x^n - n*x)/n, log(x) + log(1 - n*x^(1 - n))/n]
    @test_int [x^3/(3*x^4 - 2*x^2 + 1), x, 5, -(atan((1 - 3*x^2)/sqrt(2))/(6*sqrt(2))) + (1/12)*log(1 - 2*x^2 + 3*x^4)]
    @test_int [x^5/(3*x^4 + x^2 - 4), x, 5, x^2/6 + (1/14)*log(1 - x^2) - (8/63)*log(4 + 3*x^2)]
    @test_int [x^2/(9 - 10*x^3 + x^6), x, 4, (-(1/24))*log(1 - x^3) + (1/24)*log(9 - x^3)]
    @test_int [(x^3 - 4*x^2 + 1)/(x - 2)^4, x, 2, -(7/(3*(2 - x)^3)) + 2/(2 - x)^2 + 2/(2 - x) + log(2 - x)]
    @test_int [x^3/(x - 1)^12, x, 2, 1/(11*(1 - x)^11) - 3/(10*(1 - x)^10) + 1/(3*(1 - x)^9) - 1/(8*(1 - x)^8)]
    @test_int [(x^4 - 3*x)/(1 + 2*x)^5, x, 3, -(25/(128*(1 + 2*x)^4)) + 7/(24*(1 + 2*x)^3) - 3/(32*(1 + 2*x)^2) + 1/(8*(1 + 2*x)) + (1/32)*log(1 + 2*x)]


    #= ::Subsection::Closed:: =#
    #=Problems*66 - 70*(p. 83-78)=#


    @test_int [1/((x + 1)^3*(x - 1)^2), x, 3, 1/(8*(1 - x)) - 1/(8*(1 + x)^2) - 1/(4*(1 + x)) + (3*atanh(x))/8]
    @test_int [1/(x^2*(5 - 6*x)^2), x, 2, 6/(25*(5 - 6*x)) - 1/(25*x) - (12/125)*log(5 - 6*x) + (12*log(x))/125]
    @test_int [1/(x^2 - 2*x - 3)^3, x, 5, (1 - x)/(16*(3 + 2*x - x^2)^2) + (3*(1 - x))/(128*(3 + 2*x - x^2)) + (3/512)*log(3 - x) - (3/512)*log(1 + x)]
    @test_int [1/(x^2 - 4*x + 13)^3, x, 4, -((2 - x)/(36*(13 - 4*x + x^2)^2)) - (2 - x)/(216*(13 - 4*x + x^2)) + (1/648)*atan((1/3)*(-2 + x))]
    @test_int [1/((x + 2)^3*(x + 3)^4), x, 2, -(1/(2*(2 + x)^2)) + 4/(2 + x) + 1/(3*(3 + x)^3) + 3/(2*(3 + x)^2) + 6/(3 + x) + 10*log(2 + x) - 10*log(3 + x)]


    #= ::Subsection::Closed:: =#
    #=Problems*71 - 82*(p. 86-87)=#


    @test_int [x^6/(x^2 - 2)^2, x, 4, 4*x + x^3/3 - (2*x)/(x^2 - 2) - 5*sqrt(2)*atanh(x/sqrt(2)), 5*x + (5*x^3)/6 + x^5/(2*(2 - x^2)) - 5*sqrt(2)*atanh(x/sqrt(2))]
    @test_int [x^8/(x^2 + 4)^4, x, 5, (35*x)/16 - x^7/(6*(4 + x^2)^3) - (7*x^5)/(24*(4 + x^2)^2) - (35*x^3)/(48*(4 + x^2)) - (35/8)*atan(x/2)]
    @test_int [(7*x - 4)/(3*x^2 + 2*x + 5)^2, x, 3, -((39 + 19*x)/(28*(5 + 2*x + 3*x^2))) - (19*atan((1 + 3*x)/sqrt(14)))/(28*sqrt(14))]
    @test_int [(5 - 4*x)/(3*x^2 - 4*x - 2)^2, x, 3, -((18 - 7*x)/(20*(2 + 4*x - 3*x^2))) - (7*atanh((2 - 3*x)/sqrt(10)))/(20*sqrt(10))]
    @test_int [x^5/(x^4 + 1)^3, x, 4, -(x^2/(8*(1 + x^4)^2)) + x^2/(16*(1 + x^4)) + atan(x^2)/16]
    @test_int [x*((x^2 + 1)^3/(x^4 + 2*x^2 + 2)^2), x, 3, 1/(4*(x^4 + 2*x^2 + 2)) + (1/4)*log(x^4 + 2*x^2 + 2), -((1 + x^2)^2/(4*(2 + 2*x^2 + x^4))) + (1/4)*log(2 + 2*x^2 + x^4)]
    @test_int [x^3/(a^4 + x^4)^3, x, 1, -(1/(8*(a^4 + x^4)^2))]
    @test_int [1/(x*(a^4 + x^4)^3), x, 3, 1/(8*a^4*(a^4 + x^4)^2) + 1/(4*a^8*(a^4 + x^4)) + log(x)/a^12 - log(a^4 + x^4)/(4*a^12)]
    @test_int [1/(x^2*(a^4 + x^4)^3), x, 12, -(45/(32*a^12*x)) + 1/(8*a^4*x*(a^4 + x^4)^2) + 9/(32*a^8*x*(a^4 + x^4)) + (45*atan(1 - (sqrt(2)*x)/a))/(64*sqrt(2)*a^13) - (45*atan(1 + (sqrt(2)*x)/a))/(64*sqrt(2)*a^13) - (45*log(a^2 - sqrt(2)*a*x + x^2))/(128*sqrt(2)*a^13) + (45*log(a^2 + sqrt(2)*a*x + x^2))/(128*sqrt(2)*a^13)]
    @test_int [1/(x^3*(a^4 + x^4)^3), x, 5, -(15/(16*a^12*x^2)) + 1/(8*a^4*x^2*(a^4 + x^4)^2) + 5/(16*a^8*x^2*(a^4 + x^4)) - (15*atan(x^2/a^2))/(16*a^14)]
    @test_int [x^14/(3 + 2*x^5)^3, x, 3, -(9/(80*(3 + 2*x^5)^2)) + 3/(20*(3 + 2*x^5)) + (1/40)*log(3 + 2*x^5)]
    @test_int [x^6/(3 + 2*x^5)^3, x, 8, If($VersionNumber<9, -(x^2/(20*(3 + 2*x^5)^2)) + x^2/(150*(3 + 2*x^5)) - (sqrt(5 + sqrt(5))*atan(sqrt((1/5)*(5 + 2*sqrt(5))) - (2*2^(7/10)*x)/(3^(1/5)*sqrt(5 - sqrt(5)))))/(250*2^(9/10)*3^(3/5)) - (sqrt(5 - sqrt(5))*atan(sqrt((1/5)*(5 - 2*sqrt(5))) + (2*2^(7/10)*x)/(3^(1/5)*sqrt(5 + sqrt(5)))))/(250*2^(9/10)*3^(3/5)) - log(3^(1/5) + 2^(1/5)*x)/(250*2^(2/5)*3^(3/5)) + ((1 + sqrt(5))*log(2^(3/5)*3^(2/5) - (3/2)^(1/5)*(1 - sqrt(5))*x + 2*x^2))/(1000*2^(2/5)*3^(3/5)) + ((1 - sqrt(5))*log(2^(3/5)*3^(2/5) - (3/2)^(1/5)*(1 + sqrt(5))*x + 2*x^2))/(1000*2^(2/5)*3^(3/5)), -(x^2/(20*(3 + 2*x^5)^2)) + x^2/(150*(3 + 2*x^5)) - (sqrt(5 + sqrt(5))*atan(sqrt((1/5)*(5 + 2*sqrt(5))) - (2*2^(7/10)*x)/(3^(1/5)*sqrt(5 - sqrt(5)))))/(250*2^(9/10)*3^(3/5)) - (sqrt(5 - sqrt(5))*atan(sqrt((1/5)*(5 - 2*sqrt(5))) + (2*2^(7/10)*x)/(3^(1/5)*sqrt(5 + sqrt(5)))))/(250*2^(9/10)*3^(3/5)) - log(3^(1/5) + 2^(1/5)*x)/(250*2^(2/5)*3^(3/5)) + ((1 + sqrt(5))*log(3^(2/5) - (3^(1/5)*(1 - sqrt(5))*x)/2^(4/5) + 2^(2/5)*x^2))/(1000*2^(2/5)*3^(3/5)) + ((1 - sqrt(5))*log(3^(2/5) - (3^(1/5)*(1 + sqrt(5))*x)/2^(4/5) + 2^(2/5)*x^2))/(1000*2^(2/5)*3^(3/5)))]


    #= ::Subsection::Closed:: =#
    #=Problems*83 - 87*(p. 90-91)=#


    @test_int [9/(5*x^2*(3 - 2*x^2)^3), x, 5, -(1/(8*x)) + 3/(20*x*(3 - 2*x^2)^2) + 1/(8*x*(3 - 2*x^2)) + atanh(sqrt(2/3)*x)/(4*sqrt(6))]
    @test_int [(3*x^4 + 4)/(x^2*(x^2 + 1)^3), x, 4, -(4/x) - (7*x)/(4*(1 + x^2)^2) - (25*x)/(8*(1 + x^2)) - (57*atan(x))/8]
    @test_int [(5 - 3*x + 6*x^2 + 5*x^3 - x^4)/(x^5 - x^4 - 2*x^3 + 2*x^2 + x - 1), x, 2, -(3/(2*(1 - x)^2)) + 2/(1 - x) + 1/(1 + x) + log(1 - x) - 2*log(1 + x)]
    @test_int [(x^2 + 1)/(x*(x^3 + 1)^2), x, 7, (x*(x - x^2))/(3*(x^3 + 1)) - atan((1 - 2*x)/sqrt(3))/(3*sqrt(3)) + log(x) - (4/9)*log(1 + x) - (5/18)*log(1 - x + x^2)]
    @test_int [(x^2 - 3*x - 2)/((x + 1)^2*(x^2 + x + 1)^2), x, 7, -(2/(1 + x)) - (7 + 5*x)/(3*(1 + x + x^2)) - (25*atan((1 + 2*x)/sqrt(3)))/(3*sqrt(3)) - log(1 + x) + (1/2)*log(1 + x + x^2)]


    #= ::Subsection::Closed:: =#
    #=Problems*88 - 90*(p. 97)=#


    @test_int [1/((2 - 3*x)*(1 - 4*x)^3), x, 2, 1/(10*(1 - 4*x)^2) - 3/(25*(1 - 4*x)) - (9/125)*log(1 - 4*x) + (9/125)*log(2 - 3*x)]
    @test_int [x^3/(2 - 5*x^2)^7, x, 3, 1/(150*(2 - 5*x^2)^6) - 1/(250*(2 - 5*x^2)^5)]
    @test_int [x^7/(2 - 5*x^2)^3, x, 3, -(x^2/250) + 2/(625*(2 - 5*x^2)^2) - 6/(625*(2 - 5*x^2)) - (3/625)*log(2 - 5*x^2)]


    #= ::Section::Closed:: =#
    #=Chapter*3*Integration*Problems=#


    #= ::Subsection::Closed:: =#
    #=Problems*1 - 3*(p. 101)=#


    @test_int [1/((x - 2)^3*(x + 1)^2), x, 2, -1/(18*(x - 2)^2) + 2/(27*(x - 2)) + 1/(27*(x + 1)) + log(x - 2)/27 - log(x + 1)/27, -(1/(18*(2 - x)^2)) - 2/(27*(2 - x)) + 1/(27*(1 + x)) + (1/27)*log(2 - x) - (1/27)*log(1 + x)]
    @test_int [1/((x + 2)^3*(x + 3)^4), x, 2, -1/(2*(x + 2)^2) + 4/(x + 2) + 1/(3*(x + 3)^3) + 3/(2*(x + 3)^2) + 6/(x + 3) + 10*log(x + 2) - 10*log(x + 3)]
    @test_int [x^5/(3 + x)^2, x, 2, -108*x + (27*x^2)/2 - 2*x^3 + x^4/4 + 243/(3 + x) + 405*log(3 + x)]


    #= ::Subsection::Closed:: =#
    #=Problems*4 - 9*(p. 105)=#


    @test_int [(b1 + c1*x)*(a + 2*b*x + c*x^2)^1, x, 2, a*b1*x + (1/2)*(2*b*b1 + a*c1)*x^2 + (1/3)*(b1*c + 2*b*c1)*x^3 + (1/4)*c*c1*x^4]
    @test_int [(b1 + c1*x)*(a + 2*b*x + c*x^2)^2, x, 2, a^2*b1*x + (1/2)*a*(4*b*b1 + a*c1)*x^2 + (2/3)*(2*b^2*b1 + a*b1*c + 2*a*b*c1)*x^3 + (1/2)*(2*b*b1*c + 2*b^2*c1 + a*c*c1)*x^4 + (1/5)*c*(b1*c + 4*b*c1)*x^5 + (1/6)*c^2*c1*x^6]
    @test_int [(b1 + c1*x)*(a + 2*b*x + c*x^2)^3, x, 2, a^3*b1*x + (1/2)*a^2*(6*b*b1 + a*c1)*x^2 + a*(4*b^2*b1 + a*b1*c + 2*a*b*c1)*x^3 + (1/4)*(8*b^3*b1 + 12*a*b*b1*c + 12*a*b^2*c1 + 3*a^2*c*c1)*x^4 + (1/5)*(12*b^2*b1*c + 3*a*b1*c^2 + 8*b^3*c1 + 12*a*b*c*c1)*x^5 + (1/2)*c*(2*b*b1*c + 4*b^2*c1 + a*c*c1)*x^6 + (1/7)*c^2*(b1*c + 6*b*c1)*x^7 + (1/8)*c^3*c1*x^8]
    @test_int [(b1 + c1*x)*(a + 2*b*x + c*x^2)^4, x, 2, a^4*b1*x + (1/2)*a^3*(8*b*b1 + a*c1)*x^2 + (4/3)*a^2*(6*b^2*b1 + a*b1*c + 2*a*b*c1)*x^3 + a*(8*b^3*b1 + 6*a*b*b1*c + 6*a*b^2*c1 + a^2*c*c1)*x^4 + (2/5)*(8*b^4*b1 + 24*a*b^2*b1*c + 3*a^2*b1*c^2 + 16*a*b^3*c1 + 12*a^2*b*c*c1)*x^5 + (1/3)*(16*b^3*b1*c + 12*a*b*b1*c^2 + 8*b^4*c1 + 24*a*b^2*c*c1 + 3*a^2*c^2*c1)*x^6 + (4/7)*c*(6*b^2*b1*c + a*b1*c^2 + 8*b^3*c1 + 6*a*b*c*c1)*x^7 + (1/2)*c^2*(2*b*b1*c + 6*b^2*c1 + a*c*c1)*x^8 + (1/9)*c^3*(b1*c + 8*b*c1)*x^9 + (1/10)*c^4*c1*x^10]
    @test_int [(b1 + c1*x)*(a + 2*b*x + c*x^2)^n, x, 2, (c1*(a + 2*b*x + c*x^2)^(n + 1))/(2*c*(n + 1)) - (((b1*c - b*c1)*(a + 2*b*x + c*x^2)^(n + 1))/(2*c*(n + 1)*sqrt(b^2 - a*c)*(-((b + c*x - sqrt(b^2 - a*c))/(2*sqrt(b^2 - a*c))))^(n + 1)))*Hypergeometric2F1(-n, 1 + n, 2 + n, (b + c*x + sqrt(b^2 - a*c))/(2*sqrt(b^2 - a*c)))]
    @test_int [(b1 + c1*x)/(a + 2*b*x + c*x^2)^1, x, 4, -(((b1*c - b*c1)*atanh((b + c*x)/sqrt(b^2 - a*c)))/(c*sqrt(b^2 - a*c))) + (c1*log(a + 2*b*x + c*x^2))/(2*c)]
    @test_int [(b1 + c1*x)/(a + 2*b*x + c*x^2)^2, x, 3, -((b*b1 - a*c1 + (b1*c - b*c1)*x)/(2*(b^2 - a*c)*(a + 2*b*x + c*x^2))) + ((b1*c - b*c1)*atanh((b + c*x)/sqrt(b^2 - a*c)))/(2*(b^2 - a*c)^(3/2))]
    @test_int [(b1 + c1*x)/(a + 2*b*x + c*x^2)^3, x, 4, -((b*b1 - a*c1 + (b1*c - b*c1)*x)/(4*(b^2 - a*c)*(a + 2*b*x + c*x^2)^2)) + (3*(b1*c - b*c1)*(b + c*x))/(8*(b^2 - a*c)^2*(a + 2*b*x + c*x^2)) - (3*c*(b1*c - b*c1)*atanh((b + c*x)/sqrt(b^2 - a*c)))/(8*(b^2 - a*c)^(5/2))]
    @test_int [(b1 + c1*x)/(a + 2*b*x + c*x^2)^4, x, 5, -((b*b1 - a*c1 + (b1*c - b*c1)*x)/(6*(b^2 - a*c)*(a + 2*b*x + c*x^2)^3)) + (5*(b1*c - b*c1)*(b + c*x))/(24*(b^2 - a*c)^2*(a + 2*b*x + c*x^2)^2) - (5*c*(b1*c - b*c1)*(b + c*x))/(16*(b^2 - a*c)^3*(a + 2*b*x + c*x^2)) + (5*c^2*(b1*c - b*c1)*atanh((b + c*x)/sqrt(b^2 - a*c)))/(16*(b^2 - a*c)^(7/2))]
    @test_int [(b1 + c1*x)/(a + 2*b*x + c*x^2)^n, x, 2, (c1*(a + 2*b*x + c*x^2)^(1 - n))/(2*c*(1 - n)) - ((b1*c - b*c1)*(-((b - sqrt(b^2 - a*c) + c*x)/sqrt(b^2 - a*c)))^(-1 + n)*(a + 2*b*x + c*x^2)^(1 - n)*Hypergeometric2F1(1 - n, n, 2 - n, (b + sqrt(b^2 - a*c) + c*x)/(2*sqrt(b^2 - a*c))))/(2^n*(c*sqrt(b^2 - a*c)*(1 - n)))]
    @test_int [x/(3 + 6*x + 2*x^2), x, 3, (1/4)*(1 - sqrt(3))*log(3 - sqrt(3) + 2*x) + (1/4)*(1 + sqrt(3))*log(3 + sqrt(3) + 2*x)]
    @test_int [(2*x - 3)/(3 + 6*x + 2*x^2)^3, x, 4, (5 + 4*x)/(4*(3 + 6*x + 2*x^2)^2) - (3 + 2*x)/(2*(3 + 6*x + 2*x^2)) + atanh((3 + 2*x)/sqrt(3))/sqrt(3)]
    @test_int [(x - 1)/(x^2 + 5*x + 4)^2, x, 4, (7*x + 13)/(9*(x^2 + 5*x + 4)) + (7*log(x + 1))/27 - (7*log(x + 4))/27]
    @test_int [1/(x^2 + 3*x + 2)^5, x, 7, -(2*x + 3)/(4*(x^2 + 3*x + 2)^4) + (7*(2*x + 3))/(6*(x^2 + 3*x + 2)^3) - (35*(2*x + 3))/(6*(x^2 + 3*x + 2)^2) + (35*(2*x + 3))/(x^2 + 3*x + 2) + 70*log(x + 1) - 70*log(x + 2)]


    #= ::Subsection::Closed:: =#
    #=Problems*10 - 12*(p. 109)=#


    @test_int [1/(x^3*(7 - 6*x + 2*x^2)^2), x, 7, -1/(490*x^2) - 69/(1715*x) - (2 - 3*x)/(35*x^2*(7 - 6*x + 2*x^2)) - (234*atan((3 - 2*x)/sqrt(5)))/(12005*sqrt(5)) + (80*log(x))/2401 - (40*log(7 - 6*x + 2*x^2))/2401]
    @test_int [x^9/(x^2 + 3*x + 2)^5, x, 8, 735*x + (x^8*(4 + 3*x))/(4*(2 + 3*x + x^2)^4) - (x^6*(110 + 81*x))/(12*(2 + 3*x + x^2)^3) + (x^4*(184 + 135*x))/(2*(2 + 3*x + x^2)^2) - (x^2*(2206 + 1593*x))/(2*(2 + 3*x + x^2)) - 1471*log(1 + x) + 1472*log(2 + x)]
    @test_int [(1 + 2*x)^2/(3 + 5*x + 2*x^2)^5, x, 7, ((1 + 2*x)*(7 + 6*x))/(4*(3 + 5*x + 2*x^2)^4) + (73 + 62*x)/(3*(3 + 5*x + 2*x^2)^3) - (155*(5 + 4*x))/(3*(3 + 5*x + 2*x^2)^2) + (620*(5 + 4*x))/(3 + 5*x + 2*x^2) + 2480*log(x + 1) - 2480*log(2*x + 3)]


    #= ::Subsection::Closed:: =#
    #=Problems*13 - 14*(p. 113)=#


    @test_int [(a - b*x^2)^3/x^7, x, 3, -a^3/(6*x^6) + (3*a^2*b)/(4*x^4) - (3*a*b^2)/(2*x^2) - b^3*log(x)]
    @test_int [x^13/(a^4 + x^4)^5, x, 6, -x^10/(16*(a^4 + x^4)^4) - (5*x^6)/(96*(a^4 + x^4)^3) - (5*x^2)/(128*(a^4 + x^4)^2) + (5*x^2)/(256*a^4*(a^4 + x^4)) + (5*atan(x^2/a^2))/(256*a^6)]


    #= ::Section::Closed:: =#
    #=Chapter*4*Integration*Problems=#


    #= ::Subsection::Closed:: =#
    #=Problems*1 - 9*(p. 115-116)=#


    @test_int [x^(3/2)*(1 + x^2)*(2*sqrt(x) - x)^2, x, 9, (8*x^(7/2))/7 - x^4 + (2*x^(9/2))/9 + (8*x^(11/2))/11 - (2*x^6)/3 + (2*x^(13/2))/13]
    @test_int [(x^(3/2) - 3*x^(3/5))^2*(4*x^(3/2) - (1/3)*x^(2/3)), x, 5, -((45*x^(43/15))/43) + (360*x^(37/10))/37 + (60*x^(113/30))/113 - (120*x^(23/5))/23 - x^(14/3)/14 + (8*x^(11/2))/11]
    @test_int [1/(1 + sqrt(1 + x)), x, 4, 2*sqrt(1 + x) - 2*log(1 + sqrt(1 + x))]
    @test_int [x/(1 + sqrt(1 + x)), x, 2, (2/3)*(1 + x)^(3/2) - x]
    @test_int [(sqrt(1 + x) + 1)/(sqrt(1 + x) - 1), x, 4, x + 4*sqrt(1 + x) + 4*log(1 - sqrt(1 + x))]
    @test_int [1/((1 + x)^(2/3) - sqrt(1 + x)), x, 5, 6*(1 + x)^(1/6) + 3*(1 + x)^(1/3) + 6*log(1 - (1 + x)^(1/6))]
    @test_int [(1 + x^(1/4))^(1/3)/sqrt(x), x, 3, (12/7)*(1 + x^(1/4))^(7/3) - 3*(1 + x^(1/4))^(4/3)]
    @test_int [1/(x^3*(1 + x)^(3/2)), x, 5, 15/(4*sqrt(1 + x)) - 1/(2*x^2*sqrt(1 + x)) + 5/(4*x*sqrt(1 + x)) - (15/4)*atanh(sqrt(1 + x))]
    @test_int [1/(x^5*(1 - x)^(7/2)), x, 9, 3003/(320*(1 - x)^(5/2)) + 1001/(64*(1 - x)^(3/2)) + 3003/(64*sqrt(1 - x)) - 1/(4*(1 - x)^(5/2)*x^4) - 13/(24*(1 - x)^(5/2)*x^3) - 143/(96*(1 - x)^(5/2)*x^2) - 429/(64*(1 - x)^(5/2)*x) - (3003/64)*atanh(sqrt(1 - x))]


    #= ::Subsection::Closed:: =#
    #=Problems*10 - 12*(p. 117-118)=#


    @test_int [1/(x^5*(x - 1)^(2/3)), x, 8, (x - 1)^(1/3)/(4*x^4) + (11*(x - 1)^(1/3))/(36*x^3) + (11*(x - 1)^(1/3))/(27*x^2) + (55*(x - 1)^(1/3))/(81*x) - 110/(81*sqrt(3))*atan((1 - 2*(x - 1)^(1/3))/sqrt(3)) + (55/81)*log(1 + (x - 1)^(1/3)) - (55*log(x))/243]
    @test_int [sqrt((1 - x)/(1 + x)), x, 3, (1 + x)*sqrt((1 - x)/(1 + x)) - 2*atan(sqrt((1 - x)/(1 + x)))]
    @test_int [sqrt((x - a)/(b - x))*x, x, 4, (1/4)*(a - 5*b)*sqrt((x - a)/(b - x))*(b - x) + (1/2)*sqrt((x - a)/(b - x))*(b - x)^2 - (1/4)*(a - b)*(a + 3*b)*atan(sqrt((x - a)/(b - x))), (1/4)*(a - 5*b)*sqrt(-((a - x)/(b - x)))*(b - x) + (1/2)*sqrt(-((a - x)/(b - x)))*(b - x)^2 - (1/4)*(a - b)*(a + 3*b)*atan(sqrt(-((a - x)/(b - x))))]


    #= ::Subsection::Closed:: =#
    #=Problems*13 - 15*(p. 119-120)=#


    @test_int [sqrt(x - 5)*(sqrt(x + 3)/((x - 1)*(x^2 - 25))), x, 6, (1/6)*atan((1/4)*sqrt(-5 + x)*sqrt(3 + x)) + atanh((sqrt(5)*sqrt(3 + x))/sqrt(-5 + x))/(3*sqrt(5))]
    @test_int [x^2*(1 - x^2)^(1/4)*sqrt(1 + x)/(sqrt(1 - x)*(sqrt(1 - x) - sqrt(1 + x))), x, 33, (5/16)*(1 - x)^(3/4)*(1 + x)^(1/4) - (1/16)*(1 - x)^(1/4)*(1 + x)^(3/4) + (1/24)*(1 - x)^(5/4)*(1 + x)^(3/4) + (7*(1 - x^2)^(5/4))/(24*sqrt(1 - x)) + (x*(1 - x^2)^(5/4))/(6*sqrt(1 - x)) + (1/6)*sqrt(1 + x)*(1 - x^2)^(5/4) - (3*atan(1 - (sqrt(2)*(1 - x)^(1/4))/(1 + x)^(1/4)))/(8*sqrt(2)) + (3*atan(1 + (sqrt(2)*(1 - x)^(1/4))/(1 + x)^(1/4)))/(8*sqrt(2)) + log(1 + sqrt(1 - x)/sqrt(1 + x) - (sqrt(2)*(1 - x)^(1/4))/(1 + x)^(1/4))/(8*sqrt(2)) - log(1 + sqrt(1 - x)/sqrt(1 + x) + (sqrt(2)*(1 - x)^(1/4))/(1 + x)^(1/4))/(8*sqrt(2)), (-(5/48))*(1 - x)^(3/4)*(1 + x)^(1/4) + (5/24)*(1 - x)^(7/4)*(1 + x)^(1/4) - (1/16)*(1 - x)^(1/4)*(1 + x)^(3/4) + (1/24)*(1 - x)^(5/4)*(1 + x)^(3/4) + (1/6)*(1 - x)^(7/4)*(1 + x)^(5/4) + (1/6)*sqrt(1 + x)*(1 - x^2)^(5/4) + (1 - x^2)^(9/4)/(3*(1 - x)^(3/2)) - (3*atan(1 - (sqrt(2)*(1 - x)^(1/4))/(1 + x)^(1/4)))/(8*sqrt(2)) + (3*atan(1 + (sqrt(2)*(1 - x)^(1/4))/(1 + x)^(1/4)))/(8*sqrt(2)) + log(1 + sqrt(1 - x)/sqrt(1 + x) - (sqrt(2)*(1 - x)^(1/4))/(1 + x)^(1/4))/(8*sqrt(2)) - log(1 + sqrt(1 - x)/sqrt(1 + x) + (sqrt(2)*(1 - x)^(1/4))/(1 + x)^(1/4))/(8*sqrt(2))]
    @test_int [x*(1 + x)^(2/3)*sqrt(1 - x)/(sqrt(1 + x)*(1 - x)^(2/3) - (1 + x)^(1/3)*(1 - x)^(5/6)), x, If($VersionNumber>=8, -46, -4), (-(1/12))*(1 - 3*x)*(1 - x)^(2/3)*(1 + x)^(1/3) + (1/4)*sqrt(1 - x)*x*sqrt(1 + x) - (1/4)*(1 - x)*(3 + x) + (1/12)*(1 - x)^(1/3)*(1 + x)^(2/3)*(1 + 3*x) + (1/12)*(1 - x)^(1/6)*(1 + x)^(5/6)*(2 + 3*x) - (1/12)*(1 - x)^(5/6)*(1 + x)^(1/6)*(10 + 3*x) + (1/6)*atan((1 + x)^(1/6)/(1 - x)^(1/6)) - (4*atan(((1 - x)^(1/3) - 2*(1 + x)^(1/3))/(sqrt(3)*(1 - x)^(1/3))))/(3*sqrt(3)) - (5/6)*atan(((1 - x)^(1/3) - (1 + x)^(1/3))/((1 - x)^(1/6)*(1 + x)^(1/6))) + atanh((sqrt(3)*(1 - x)^(1/6)*(1 + x)^(1/6))/((1 - x)^(1/3) + (1 + x)^(1/3)))/(6*sqrt(3))]


    #= ::Subsection::Closed:: =#
    #=Problems*16 - 21*(p. 127)=#


    @test_int [1/((x + 1)^2*(x - 1)^4)^(1/3), x, 2, -((3*(x - 1)*(x + 1))/(2*((x + 1)^2*(x - 1)^4)^(1/3))), (3*(1 - x)*(1 + x))/(2*((1 - x)^4*(1 + x)^2)^(1/3))]
    @test_int [1/((x - 1)^3*(x + 2)^5)^(1/4), x, 2, (4*(x - 1)*(2 + x))/(3*((x - 1)^3*(x + 2)^5)^(1/4)), -((4*(1 - x)*(2 + x))/(3*((-(1 - x)^3)*(2 + x)^5)^(1/4)))]
    @test_int [1/((x + 1)^2*(x - 1)^7)^(1/3), x, 3, -((3*(x - 1)*(x + 1))/(8*((x + 1)^2*(x - 1)^7)^(1/3))) + (9*(x - 1)^2*(x + 1))/(16*((x + 1)^2*(x - 1)^7)^(1/3)), (3*(1 - x)*(1 + x))/(8*((-(1 - x)^7)*(1 + x)^2)^(1/3)) + (9*(1 - x)^2*(1 + x))/(16*((-(1 - x)^7)*(1 + x)^2)^(1/3))]
    @test_int [1/((x - 1)^2*(x + 1))^(1/3), x, -3, sqrt(3)*atan((1/sqrt(3))*(1 + (2*(x - 1))/((x - 1)^2*(x + 1))^(1/3))) - (1/2)*log(x + 1) - (3/2)*log(1 - (x - 1)/((x - 1)^2*(x + 1))^(1/3))]
    @test_int [(x + 1/x)/sqrt((x + 1)^3*(x - 2)), x, 9, -((4*(x - 2)*(x + 1))/(3*sqrt((x + 1)^3*(x - 2)))) + (2*sqrt(x - 2)*(x + 1)^(3/2)*asinh(sqrt(x - 2)/sqrt(3)))/sqrt((x + 1)^3*(x - 2)) - (sqrt(2)*sqrt(x - 2)*(x + 1)^(3/2)*atan((sqrt(2)*sqrt(x + 1))/sqrt(x - 2)))/sqrt((x + 1)^3*(x - 2)), (4*(2 - x)*(1 + x))/(3*sqrt(-((2 - x)*(1 + x)^3))) + (2*sqrt(-2 + x)*(1 + x)^(3/2)*asinh(sqrt(-2 + x)/sqrt(3)))/sqrt(-((2 - x)*(1 + x)^3)) - (sqrt(2)*sqrt(-2 + x)*(1 + x)^(3/2)*atan((sqrt(2)*sqrt(1 + x))/sqrt(-2 + x)))/sqrt(-((2 - x)*(1 + x)^3))]
    @test_int [((x - 1)^2*(x + 1))^(1/3)/x^2, x, -6, -(((x - 1)^2*(x + 1))^(1/3)/x) - (1/sqrt(3))*atan((1/sqrt(3))*(1 - (2*(x - 1))/((x - 1)^2*(x + 1))^(1/3))) - sqrt(3)*atan((1/sqrt(3))*(1 + (2*(x - 1))/((x - 1)^2*(x + 1))^(1/3))) + log(x)/6 - (2/3)*log(x + 1) - (3/2)*log(1 - (x - 1)/((x - 1)^2*(1 + x))^(1/3)) - (1/2)*log(1 + (x - 1)/((x - 1)^2*(1 + x))^(1/3))]


    #= ::Subsection::Closed:: =#
    #=Problems*22 - 27*(p. 128)=#


    @test_int [1/(x^2 - 2*x - 3)^(5/2), x, 2, (1 - x)/(12*(x^2 - 2*x - 3)^(3/2)) - (1 - x)/(24*sqrt(x^2 - 2*x - 3))]
    @test_int [1/sqrt(x^3 - 5*x^2 + 3*x + 9), x, 4, ((3 - x)*sqrt(1 + x)*atanh(sqrt(1 + x)/2))/sqrt(x^3 - 5*x^2 + 3*x + 9)]
    @test_int [1/(x^3 - 5*x^2 + 3*x + 9)^(3/2), x, 7, ((3 - x)*(1 + x))/(8*(x^3 - 5*x^2 + 3*x + 9)^(3/2)) + (5*(3 - x)^2*(1 + x))/(64*(x^3 - 5*x^2 + 3*x + 9)^(3/2)) - (15*(3 - x)^3*(1 + x))/(256*(x^3 - 5*x^2 + 3*x + 9)^(3/2)) + (15*(3 - x)^3*(1 + x)^(3/2)*atanh(sqrt(1 + x)/2))/(512*(x^3 - 5*x^2 + 3*x + 9)^(3/2))]
    @test_int [1/(x^3 - 5*x^2 + 3*x + 9)^(1/3), x, -3, sqrt(3)*atan((1/sqrt(3))*(1 + (2*(x - 3))/(x^3 - 5*x^2 + 3*x + 9)^(1/3))) - (1/2)*log(x + 1) - (3/2)*log(1 - (x - 3)/(x^3 - 5*x^2 + 3*x + 9)^(1/3))]
    @test_int [1/(x^3 - 5*x^2 + 3*x + 9)^(2/3), x, 3, (3*(3 - x)*(1 + x))/(4*(x^3 - 5*x^2 + 3*x + 9)^(2/3))]
    @test_int [1/(x^3 - 5*x^2 + 3*x + 9)^(4/3), x, 5, (3*(3 - x)*(1 + x))/(20*(x^3 - 5*x^2 + 3*x + 9)^(4/3)) + (9*(3 - x)^2*(1 + x))/(80*(x^3 - 5*x^2 + 3*x + 9)^(4/3)) - (27*(3 - x)^3*(1 + x))/(320*(x^3 - 5*x^2 + 3*x + 9)^(4/3))]


    #= ::Subsection::Closed:: =#
    #=Problems*28 - 37*(p. 143-144)=#


    @test_int [1/sqrt(4 + 3*x - 2*x^2), x, 2, -1/sqrt(2)*asin((3 - 4*x)/sqrt(41))]
    @test_int [1/sqrt(-3 + 4*x - x^2), x, 2, -asin(2 - x)]
    @test_int [1/sqrt(-2 - 5*x - 3*x^2), x, 2, asin(5 + 6*x)/sqrt(3)]
    @test_int [1/((x^2 + 4)*sqrt(1 - x^2)), x, 2, atan((sqrt(5)*x)/(2*sqrt(1 - x^2)))/(2*sqrt(5))]
    @test_int [1/((x^2 + 4)*sqrt(4*x^2 + 1)), x, 2, 1/(2*sqrt(15))*atanh((sqrt(15)*x)/(2*sqrt(1 + 4*x^2)))]
    @test_int [x/((3 - x^2)*sqrt(5 - x^2)), x, 3, 1/sqrt(2)*atanh(sqrt(5 - x^2)/sqrt(2))]
    @test_int [x/((5 - x^2)*sqrt(3 - x^2)), x, 3, -1/sqrt(2)*atan(sqrt(3 - x^2)/sqrt(2))]
    @test_int [1/((x^4 - 1)*sqrt(x^2 + 2)), x, 5, -1/2*atan(x/sqrt(2 + x^2)) - 1/(2*sqrt(3))*atanh((sqrt(3)*x)/sqrt(2 + x^2))]
    @test_int [x/((x^2 - 1)*sqrt(x^2 + 2*x + 4)), x, 5, -1/(2*sqrt(7))*atanh((5 + 2*x)/(sqrt(7)*sqrt(x^2 + 2*x + 4))) - 1/(2*sqrt(3))*atanh(sqrt(x^2 + 2*x + 4)/sqrt(3))]
    @test_int [1/((x^3 - 8)*sqrt(x^2 + 2*x + 5)), x, 9, -1/(4*sqrt(3))*atan((1 + x)/(sqrt(3)*sqrt(x^2 + 2*x + 5))) - 1/(12*sqrt(13))*atanh((7 + 3*x)/(sqrt(13)*sqrt(x^2 + 2*x + 5))) + 1/12*atanh(sqrt(x^2 + 2*x + 5))]


    #= ::Subsection::Closed:: =#
    #=Problems*38 - 42*(p. 145-146)=#


    @test_int [x/((x^2 + x + 4)*sqrt(4*x^2 + 4*x + 5)), x, 5, (1/sqrt(11))*atan(sqrt(4*x^2 + 4*x + 5)/sqrt(11)) - (1/sqrt(165))*atanh((sqrt(11/15)*(2*x + 1))/sqrt(4*x^2 + 4*x + 5))]
    @test_int [(x + 3)/((x^2 + 1)*sqrt(x^2 + x + 1)), x, 5, -2*sqrt(2)*atan((1 - x)/(sqrt(2)*sqrt(1 + x + x^2))) + sqrt(2)*atanh((1 + x)/(sqrt(2)*sqrt(1 + x + x^2)))]
    @test_int [(2*x + 1)/((3*x^2 + 4*x + 4)*sqrt(x^2 + 6*x - 1)), x, 5, (-(5/(6*sqrt(14))))*atan((sqrt(7)*(2 - x))/(2*sqrt(2)*sqrt(x^2 + 6*x - 1))) - (1/(3*sqrt(7)))*atanh((sqrt(7)*(1 + x))/sqrt(x^2 + 6*x - 1))]
    @test_int [(A*x + B)/((5*x^2 - 18*x + 17)*sqrt(10*x^2 - 22*x + 13)), x, 5, (-((2*A + B)/sqrt(35)))*atan((sqrt(35)*(2 - x))/sqrt(10*x^2 - 22*x + 13)) - ((A + B)/(2*sqrt(35)))*atanh((sqrt(35)*(1 - x))/(2*sqrt(10*x^2 - 22*x + 13))), -(((2*A + B)*atan((sqrt(35)*(2 - x))/sqrt(13 - 22*x + 10*x^2)))/sqrt(35)) - ((A + B)*atanh((sqrt(35)*(A + B - (A + B)*x))/(2*(A + B)*sqrt(13 - 22*x + 10*x^2))))/(2*sqrt(35))]
    @test_int [(x - 2)/((5*x^2 - 18*x + 17)*sqrt(10*x^2 - 22*x + 13)), x, 2, (1/(2*sqrt(35)))*atanh((sqrt(35)*(1 - x))/(2*sqrt(10*x^2 - 22*x + 13)))]


    #= ::Subsection::Closed:: =#
    #=Problems*43 - 49*(p. 163)=#


    @test_int [x^4*sqrt(5 - x^2), x, 4, -25/16*x*sqrt(5 - x^2) - (5/24)*x^3*sqrt(5 - x^2) + (1/6)*x^5*sqrt(5 - x^2) + (125/16)*asin(x/sqrt(5))]
    @test_int [1/(x^6*sqrt(x^2 + 2)), x, 3, -(sqrt(x^2 + 2)/(10*x^5)) + sqrt(x^2 + 2)/(15*x^3) - sqrt(x^2 + 2)/(15*x)]
    @test_int [1/(2*x^2 + 3)^(7/2), x, 3, x/(15*(2*x^2 + 3)^(5/2)) + (4*x)/(135*(2*x^2 + 3)^(3/2)) + (8*x)/(405*sqrt(2*x^2 + 3))]
    @test_int [x/(1 + x^2 + a*sqrt(1 + x^2)), x, 3, log(a + sqrt(1 + x^2))]
    @test_int [(x^2 - x + 1)/((1 + x^2)*sqrt(1 + x^2)), x, 2, 1/sqrt(1 + x^2) + asinh(x)]
    @test_int [sqrt(1 + x^2)/(2 + x^2), x, 4, asinh(x) - 1/sqrt(2)*atanh(x/(sqrt(2)*sqrt(1 + x^2)))]
    @test_int [1/((2 + x^2)^2*sqrt(1 + x^2)), x, 3, -((x*sqrt(1 + x^2))/(4*(2 + x^2))) + 3/(4*sqrt(2))*atanh(x/(sqrt(2)*sqrt(1 + x^2)))]


    #= ::Subsection::Closed:: =#
    #=Problems*50 - 62*(p. 164)=#


    @test_int [x^2/((x^2 - 6)*sqrt(x^2 - 2)), x, 5, atanh(x/sqrt(x^2 - 2)) - sqrt(3/2)*atanh((sqrt(2/3)*x)/sqrt(x^2 - 2))]
    @test_int [(x^2 + 5)/((1 + x^2)^2*sqrt(1 - x^2)), x, 4, (x*sqrt(1 - x^2))/(1 + x^2) + 2*sqrt(2)*atan((sqrt(2)*x)/sqrt(1 - x^2))]
    @test_int [(4*x - sqrt(1 - x^2))/(5 + sqrt(1 - x^2)), x, 15, -x - 4*sqrt(1 - x^2) + 5*asin(x) + (25*atan(x/(2*sqrt(6))))/(2*sqrt(6)) - (25*atan((5*x)/(2*sqrt(6)*sqrt(1 - x^2))))/(2*sqrt(6)) + 20*log(5 + sqrt(1 - x^2))]
    @test_int [(2 - sqrt(x^2 + 1))*(x^2/(sqrt(x^2 + 1)*((x^2 + 1)^(3/2) - x^3 + 1))), x, 32, (8*x)/9 - x^2/6 + (8*sqrt(x^2 + 1))/9 - (1/6)*x*sqrt(x^2 + 1) - (41*asinh(x))/54 + (4/27)*sqrt(2)*atan((1 + 3*x)/(2*sqrt(2))) + (4/27)*sqrt(2)*atan((1 + x)/(sqrt(2)*sqrt(x^2 + 1))) + (7/27)*atanh((1 - x)/(2*sqrt(x^2 + 1))) - (7/54)*log(3 + 2*x + 3*x^2)]
    @test_int [x*sqrt(2*r*x - x^2), x, 4, (-(1/2))*r*(r - x)*sqrt(2*r*x - x^2) - (1/3)*(2*r*x - x^2)^(3/2) + r^3*atan(x/sqrt(2*r*x - x^2))]
    @test_int [x^2*sqrt(2*r*x - x^2), x, 5, -5/8*r^2*(r - x)*sqrt(2*r*x - x^2) - (5/12)*r*(2*r*x - x^2)^(3/2) - (1/4)*x*(2*r*x - x^2)^(3/2) + (5/4)*r^4*atan(x/sqrt(2*r*x - x^2))]
    @test_int [x^3*sqrt(2*r*x - x^2), x, 6, (-(7/8))*r^3*(r - x)*sqrt(2*r*x - x^2) - (7/12)*r^2*(2*r*x - x^2)^(3/2) - (7/20)*r*x*(2*r*x - x^2)^(3/2) - (1/5)*x^2*(2*r*x - x^2)^(3/2) + (7/4)*r^5*atan(x/sqrt(2*r*x - x^2))]
    @test_int [1/((x^2 - 1)*sqrt(2*x + x^2)), x, 5, (-(1/2))*atan(sqrt(2*x + x^2)) - 1/(2*sqrt(3))*atanh((1 + 2*x)/(sqrt(3)*sqrt(2*x + x^2)))]
    @test_int [(3*x - 2)/((x + 1)^3*sqrt(2*x - x^2)), x, 4, -((5*sqrt(2*x - x^2))/(6*(1 + x)^2)) - (2*sqrt(2*x - x^2))/(3*(1 + x)) + 1/(2*sqrt(3))*atan((1 - 2*x)/(sqrt(3)*sqrt(2*x - x^2)))]
    @test_int [1/sqrt(1 + x + x^2), x, 2, asinh((1 + 2*x)/sqrt(3))]
    @test_int [x^3/sqrt(1 + x + x^2), x, 4, (1/3)*x^2*sqrt(1 + x + x^2) - (1/24)*(1 + 10*x)*sqrt(1 + x + x^2) + (7/16)*asinh((1 + 2*x)/sqrt(3))]
    @test_int [1/(1 + x + x^2)^(3/2), x, 1, (2*(1 + 2*x))/(3*sqrt(1 + x + x^2))]
    @test_int [x/(1 + x + x^2)^(3/2), x, 1, -((2*(2 + x))/(3*sqrt(1 + x + x^2)))]


    #= ::Subsection::Closed:: =#
    #=Problems*63 - 72*(p. 165)=#


    @test_int [x^3/(1 + x + x^2)^(3/2), x, 4, -((2*x^2*(2 + x))/(3*sqrt(1 + x + x^2))) + (1/3)*(5 + 2*x)*sqrt(1 + x + x^2) - (3/2)*asinh((1 + 2*x)/sqrt(3))]
    @test_int [x^2*sqrt(1 + x + x^2), x, 5, (1/64)*(1 + 2*x)*sqrt(1 + x + x^2) - (5/24)*(1 + x + x^2)^(3/2) + (1/4)*x*(1 + x + x^2)^(3/2) + (3/128)*asinh((1 + 2*x)/sqrt(3))]
    @test_int [(1 + x + x^2)^(3/2), x, 4, (9/64)*(1 + 2*x)*sqrt(1 + x + x^2) + (1/8)*(1 + 2*x)*(1 + x + x^2)^(3/2) + (27/128)*asinh((1 + 2*x)/sqrt(3))]
    @test_int [(1 + x + x^2)^(5/2), x, 5, (45/512)*(1 + 2*x)*sqrt(1 + x + x^2) + (5/64)*(1 + 2*x)*(1 + x + x^2)^(3/2) + (1/12)*(1 + 2*x)*(1 + x + x^2)^(5/2) + 135/1024*asinh((1 + 2*x)/sqrt(3))]
    @test_int [1/(x^2*sqrt(1 + x + x^2)), x, 3, -(sqrt(1 + x + x^2)/x) + (1/2)*atanh((2 + x)/(2*sqrt(1 + x + x^2)))]
    @test_int [1/(x^3*sqrt(1 + x + x^2)), x, 4, -(sqrt(1 + x + x^2)/(2*x^2)) + (3*sqrt(1 + x + x^2))/(4*x) + (1/8)*atanh((2 + x)/(2*sqrt(1 + x + x^2)))]
    @test_int [1/(x^2*(1 + x + x^2)^(3/2)), x, 4, (2*(1 - x))/(3*x*sqrt(1 + x + x^2)) - (5*sqrt(1 + x + x^2))/(3*x) + (3/2)*atanh((2 + x)/(2*sqrt(1 + x + x^2)))]
    @test_int [1/(x^3*(1 + x + x^2)^(3/2)), x, 5, (2*(1 - x))/(3*x^2*sqrt(1 + x + x^2)) - (7*sqrt(1 + x + x^2))/(6*x^2) + (37*sqrt(1 + x + x^2))/(12*x) - (3/8)*atanh((2 + x)/(2*sqrt(1 + x + x^2)))]
    @test_int [1/((x + 1)*sqrt(1 + x + x^2)), x, 2, -atanh((1 - x)/(2*sqrt(1 + x + x^2)))]
    @test_int [1/((x^3 - x)*sqrt(x^2 + 2*x + 4)), x, 10, (1/2)*atanh((4 + x)/(2*sqrt(x^2 + 2*x + 4))) - 1/(2*sqrt(7))*atanh((5 + 2*x)/(sqrt(7)*sqrt(x^2 + 2*x + 4))) - 1/(2*sqrt(3))*atanh(sqrt(x^2 + 2*x + 4)/sqrt(3))]


    #= ::Subsection::Closed:: =#
    #=Problems*73 - 79*(p. 166)=#


    @test_int [sqrt(x^2 + 2*x + 4)/(x - 1)^2, x, 6, sqrt(x^2 + 2*x + 4)/(1 - x) + asinh((1 + x)/sqrt(3)) - 2/sqrt(7)*atanh((5 + 2*x)/(sqrt(7)*sqrt(x^2 + 2*x + 4)))]
    @test_int [(2*x + 3)/((x^2 + 2*x + 3)^2*sqrt(x^2 + 2*x + 4)), x, 6, -(((3 - x)*sqrt(4 + 2*x + x^2))/(4*(3 + 2*x + x^2))) - atan((1 + x)/(sqrt(2)*sqrt(4 + 2*x + x^2)))/(4*sqrt(2)) + atanh(sqrt(4 + 2*x + x^2))]
    @test_int [(2*x^3 + 3*x^2)/((2*x^2 + x - 3)*sqrt(x^2 + 2*x - 3)), x, 4, sqrt(x^2 + 2*x - 3) + sqrt(x^2 + 2*x - 3)/(2*(1 - x))]
    @test_int [(x^4 + 1)/((x^2 + x + 1)*sqrt(x^2 + x + 2)), x, 14, -7/4*sqrt(x^2 + x + 2) + (1/2)*x*sqrt(x^2 + x + 2) - (1/8)*asinh((1 + 2*x)/sqrt(7)) + 1/sqrt(3)*atan((1 + 2*x)/(sqrt(3)*sqrt(x^2 + x + 2))) - atanh(sqrt(x^2 + x + 2))]
    @test_int [1/(x^2 + 2*x + 4)^(7/2), x, 3, (1 + x)/(15*(x^2 + 2*x + 4)^(5/2)) + (4*(1 + x))/(135*(x^2 + 2*x + 4)^(3/2)) + (8*(1 + x))/(405*sqrt(x^2 + 2*x + 4))]
    @test_int [1/(3*x^2 + 8*x + 1)^(5/2), x, 2, -((4 + 3*x)/(39*(3*x^2 + 8*x + 1)^(3/2))) + (2*(4 + 3*x))/(169*sqrt(3*x^2 + 8*x + 1))]
    @test_int [1/(5 + 4*x - 3*x^2)^(5/2), x, 2, -((2 - 3*x)/(57*(5 + 4*x - 3*x^2)^(3/2))) - (2*(2 - 3*x))/(361*sqrt(5 + 4*x - 3*x^2))]


    #= ::Subsection::Closed:: =#
    #=Problems*80 - 84*(p. 167)=#


    @test_int [1/(1 + sqrt(x^2 + 2*x + 2)), x, 5, 1/(1 + x) - sqrt(x^2 + 2*x + 2)/(1 + x) + asinh(1 + x)]
    @test_int [1/(x + sqrt(1 + x + x^2)), x, -3, -x + sqrt(1 + x + x^2) - 3/2*asinh((1 + 2*x)/sqrt(3)) + 2*log(x + sqrt(1 + x + x^2))]
    @test_int [x^2/(2*x + 1 + 2*sqrt(1 + x + x^2)), x, 7, -(x^3/9) - x^4/6 + (1/96)*(1 + 2*x)*sqrt(1 + x + x^2) - (5/36)*(1 + x + x^2)^(3/2) + (1/6)*x*(1 + x + x^2)^(3/2) + (1/64)*asinh((1 + 2*x)/sqrt(3))]
    @test_int [(sqrt(1 + x + x^2) - 3*x)/(sqrt(1 + x + x^2) - 1), x, 26, x - 3*sqrt(1 + x + x^2) + (5/2)*asinh((1 + 2*x)/sqrt(3)) + 4*atanh((1 - x)/(2*sqrt(1 + x + x^2))) - atanh((2 + x)/(2*sqrt(1 + x + x^2))) + log(x) - 4*log(1 + x)]
    @test_int [(x + 1)/(sqrt(x^2 + 2*x + 4) - sqrt(x^2 + x + 1)), x, 36, -2*sqrt(x^2 + x + 1) + (1/4)*(1 + 2*x)*sqrt(x^2 + x + 1) - 2*sqrt(x^2 + 2*x + 4) + (1/2)*(1 + x)*sqrt(x^2 + 2*x + 4) + (11/2)*asinh((1 + x)/sqrt(3)) + (43/8)*asinh((1 + 2*x)/sqrt(3)) - 2*sqrt(7)*atanh((1 + 5*x)/(2*sqrt(7)*sqrt(x^2 + x + 1))) + 2*sqrt(7)*atanh((1 - 2*x)/(sqrt(7)*sqrt(x^2 + 2*x + 4)))]


    #= ::Subsection::Closed:: =#
    #=Problems*85 - 91*(p. 177)=#


    @test_int [1/(x^3*sqrt(x - 1)), x, 4, sqrt(x - 1)/(2*x^2) + (3*sqrt(x - 1))/(4*x) + (3/4)*atan(sqrt(x - 1))]
    @test_int [1/(x^2*(1 - 3/x)^(4/3)), x, 1, -(1/(1 - 3/x)^(1/3))]
    @test_int [(3*x - 1)^(4/3)/x^2, x, 6, 12*(3*x - 1)^(1/3) - (3*x - 1)^(4/3)/x + 4*sqrt(3)*atan((1 - 2*(3*x - 1)^(1/3))/sqrt(3)) + 2*log(x) - 6*log(1 + (3*x - 1)^(1/3))]
    @test_int [(4 - 3*x)^(4/3)*x^2, x, 2, (-(16/63))*(4 - 3*x)^(7/3) + (4/45)*(4 - 3*x)^(10/3) - (1/117)*(4 - 3*x)^(13/3)]
    @test_int [(1 - 2*x^(1/3))^(3/4)/x, x, 6, 4*(1 - 2*x^(1/3))^(3/4) + 6*atan((1 - 2*x^(1/3))^(1/4)) - 6*atanh((1 - 2*x^(1/3))^(1/4))]
    @test_int [x/(3 - 2*sqrt(x))^(3/4), x, 3, (-(27/2))*(3 - 2*sqrt(x))^(1/4) + (27/10)*(3 - 2*sqrt(x))^(5/4) - (1/2)*(3 - 2*sqrt(x))^(9/4) + (1/26)*(3 - 2*sqrt(x))^(13/4)]
    @test_int [(2*sqrt(x) - 1)^(5/4)/x^2, x, 13, -((2*sqrt(x) - 1)^(5/4)/x) - (5*(2*sqrt(x) - 1)^(1/4))/(2*sqrt(x)) - (5*atan(1 - sqrt(2)*(2*sqrt(x) - 1)^(1/4)))/(2*sqrt(2)) + (5*atan(1 + sqrt(2)*(2*sqrt(x) - 1)^(1/4)))/(2*sqrt(2)) - (5*log(1 - sqrt(2)*(2*sqrt(x) - 1)^(1/4) + sqrt(2*sqrt(x) - 1)))/(4*sqrt(2)) + (5*log(1 + sqrt(2)*(2*sqrt(x) - 1)^(1/4) + sqrt(2*sqrt(x) - 1)))/(4*sqrt(2))]


    #= ::Subsection::Closed:: =#
    #=Problems*92 - 100*(p. 178)=#


    @test_int [(x^7 + 1)^(1/3)*x^6, x, 1, (3/28)*(x^7 + 1)^(4/3)]
    @test_int [x^6/(x^7 + 1)^(5/3), x, 1, -(3/(14*(x^7 + 1)^(2/3)))]
    @test_int [1/(x*(2*x^7 - 27)^(2/3)), x, 5, (-(1/(21*sqrt(3))))*atan((3 - 2*(2*x^7 - 27)^(1/3))/(3*sqrt(3))) - log(x)/18 + (1/42)*log(3 + (2*x^7 - 27)^(1/3))]
    @test_int [(x^7 + 1)^(2/3)/x^8, x, 6, -((x^7 + 1)^(2/3)/(7*x^7)) + (2*atan((1 + 2*(x^7 + 1)^(1/3))/sqrt(3)))/(7*sqrt(3)) - log(x)/3 + (1/7)*log(1 - (x^7 + 1)^(1/3))]
    @test_int [(3 + 4*x^4)^(1/4)/x^2, x, 5, -((3 + 4*x^4)^(1/4)/x) - atan((sqrt(2)*x)/(3 + 4*x^4)^(1/4))/sqrt(2) + atanh((sqrt(2)*x)/(3 + 4*x^4)^(1/4))/sqrt(2)]
    @test_int [x^2*(3 + 4*x^4)^(5/4), x, 6, (15/32)*x^3*(3 + 4*x^4)^(1/4) + (1/8)*x^3*(3 + 4*x^4)^(5/4) - (45*atan((sqrt(2)*x)/(3 + 4*x^4)^(1/4)))/(128*sqrt(2)) + (45*atanh((sqrt(2)*x)/(3 + 4*x^4)^(1/4)))/(128*sqrt(2))]
    @test_int [x^6*(3 + 4*x^4)^(1/4), x, 6, (3/128)*x^3*(3 + 4*x^4)^(1/4) + (1/8)*x^7*(3 + 4*x^4)^(1/4) + (27*atan((sqrt(2)*x)/(3 + 4*x^4)^(1/4)))/(512*sqrt(2)) - (27*atanh((sqrt(2)*x)/(3 + 4*x^4)^(1/4)))/(512*sqrt(2))]
    @test_int [(x*(1 - x^2))^(1/3), x, 6, (1/2)*x*(x*(1 - x^2))^(1/3) + (1/(2*sqrt(3)))*atan((2*x - (x*(1 - x^2))^(1/3))/(sqrt(3)*(x*(1 - x^2))^(1/3))) + log(x)/12 - (1/4)*log(x + (x*(1 - x^2))^(1/3)), (1/2)*x*(x - x^3)^(1/3) - (x^(2/3)*(1 - x^2)^(2/3)*atan((1 - (2*x^(2/3))/(1 - x^2)^(1/3))/sqrt(3)))/(2*sqrt(3)*(x - x^3)^(2/3)) - (x^(2/3)*(1 - x^2)^(2/3)*log(x^(2/3) + (1 - x^2)^(1/3)))/(4*(x - x^3)^(2/3))]
    @test_int [sqrt(x*(1 + x^(1/3))), x, 8, (7/64)*sqrt(x*(1 + x^(1/3))) - (21*sqrt(x*(1 + x^(1/3))))/(128*x^(1/3)) - (7/80)*x^(1/3)*sqrt(x*(1 + x^(1/3))) + (3/40)*x^(2/3)*sqrt(x*(1 + x^(1/3))) + (3/5)*x*sqrt(x*(1 + x^(1/3))) + (21/128)*atanh(x^(2/3)/sqrt(x*(1 + x^(1/3)))), (7/64)*sqrt(x + x^(4/3)) - (21*sqrt(x + x^(4/3)))/(128*x^(1/3)) - (7/80)*x^(1/3)*sqrt(x + x^(4/3)) + (3/40)*x^(2/3)*sqrt(x + x^(4/3)) + (3/5)*x*sqrt(x + x^(4/3)) + (21/128)*atanh(x^(2/3)/sqrt(x + x^(4/3)))]


    #= ::Subsection::Closed:: =#
    #=Problems*101 - 112*(p. 193-194)=#


    @test_int [x^3/((x^4 - 1)*sqrt(2*x^8 + 1)), x, 3, -1/(4*sqrt(3))*atanh((2*x^4 + 1)/(sqrt(3)*sqrt(2*x^8 + 1)))]
    @test_int [x^9*sqrt(1 + x^5 + x^10), x, 5, (-(1/40))*(1 + 2*x^5)*sqrt(1 + x^5 + x^10) + (1/15)*(1 + x^5 + x^10)^(3/2) - (3/80)*asinh((1 + 2*x^5)/sqrt(3))]
    @test_int [1/(x^5*sqrt(4 + 2*x^2 + x^4)), x, 5, -(sqrt(4 + 2*x^2 + x^4)/(16*x^4)) + (3*sqrt(4 + 2*x^2 + x^4))/(64*x^2) + (1/128)*atanh((4 + x^2)/(2*sqrt(4 + 2*x^2 + x^4)))]
    @test_int [(x^2 - 1)/(x*sqrt(1 + 3*x^2 + x^4)), x, 3, atanh((1 + x^2)/sqrt(1 + 3*x^2 + x^4))]
    @test_int [(x^4 - 3*x^2)^(3/5)*(2*x^3 - 3*x), x, 1, (5/16)*(x^4 - 3*x^2)^(8/5)]
    @test_int [(3*x^8 - 2*x^5 - x^2*(3*x^3 - 1)^(2/3))/(3*x^3 - 1)^(3/4), x, 9, (-(4/27))*(3*x^3 - 1)^(1/4) - (4/33)*(3*x^3 - 1)^(11/12) + (4/243)*(3*x^3 - 1)^(9/4)]
    @test_int [1/((x^3 - 1)*(x^3 + 2)^(1/3)), x, 1, -(atan((1 + (2*3^(1/3)*x)/(2 + x^3)^(1/3))/sqrt(3))/3^(5/6)) - log(-1 + x^3)/(6*3^(1/3)) + log(3^(1/3)*x - (2 + x^3)^(1/3))/(2*3^(1/3))]
    @test_int [1/((x^4 + 1)*(x^4 + 2)^(1/4)), x, 10, -(atan(1 - (sqrt(2)*x)/(x^4 + 2)^(1/4))/(2*sqrt(2))) + atan(1 + (sqrt(2)*x)/(x^4 + 2)^(1/4))/(2*sqrt(2)) - log(1 + x^2/sqrt(x^4 + 2) - (sqrt(2)*x)/(x^4 + 2)^(1/4))/(4*sqrt(2)) + log(1 + x^2/sqrt(x^4 + 2) + (sqrt(2)*x)/(x^4 + 2)^(1/4))/(4*sqrt(2))]
    @test_int [(x^3 - 1)/(x^3 + 2)^(1/3), x, 2, (1/3)*x*(2 + x^3)^(2/3) - (5*atan((1 + (2*x)/(2 + x^3)^(1/3))/sqrt(3)))/(3*sqrt(3)) + (5/6)*log(-x + (2 + x^3)^(1/3))]
    @test_int [(x^4 + 1)^(3/4)/(x^4 + 2)^2, x, 5, (x*(x^4 + 1)^(3/4))/(8*(x^4 + 2)) + (3*atan(x/(2^(1/4)*(x^4 + 1)^(1/4))))/(16*2^(3/4)) + (3*atanh(x/(2^(1/4)*(x^4 + 1)^(1/4))))/(16*2^(3/4))]
    @test_int [(x^5 - 2)^2/((x^5 + 3)^3*(x^5 + 3)^(1/5)), x, 3, -(5*x*(x^5 - 2))/(33*(x^5 + 3)^(11/5)) + (5*x)/(297*(x^5 + 3)^(6/5)) + (97*x)/(891*(x^5 + 3)^(1/5)), (x*(2 - x^5)^2)/(33*(3 + x^5)^(11/5)) + (10*x*(2 - x^5))/(297*(3 + x^5)^(6/5)) + (100*x)/(891*(3 + x^5)^(1/5))]
    @test_int [1/((x^3 + 3*x^2 + 3*x)*(x^3 + 3*x^2 + 3*x + 3)^(1/3)), x, 3, -(atan((1 + (2*3^(1/3)*(1 + x))/(2 + (1 + x)^3)^(1/3))/sqrt(3))/3^(5/6)) - log(1 - (1 + x)^3)/(6*3^(1/3)) + log(3^(1/3)*(1 + x) - (2 + (1 + x)^3)^(1/3))/(2*3^(1/3))]


    #= ::Subsection::Closed:: =#
    #=Problems*113 - 122*(p. 195-196)=#


    @test_int [(1 - x^2)/((1 + x^2)*sqrt(1 + x^4)), x, 2, 1/sqrt(2)*atan((sqrt(2)*x)/sqrt(1 + x^4))]
    @test_int [(1 + x^2)/((1 - x^2)*sqrt(1 + x^4)), x, 2, 1/sqrt(2)*atanh((sqrt(2)*x)/sqrt(1 + x^4))]
    @test_int [(x^2 + 1)/(x*sqrt(1 + x^4)), x, 6, atanh((x^2 - 1)/sqrt(1 + x^4)), asinh(x^2)/2 - (1/2)*atanh(sqrt(1 + x^4))]
    @test_int [(x^2 - 1)/(x*sqrt(1 + x^4)), x, 6, atanh((x^2 + 1)/sqrt(1 + x^4)), asinh(x^2)/2 + (1/2)*atanh(sqrt(1 + x^4))]
    @test_int [(1 + x^2)/((1 - x^2)*sqrt(1 + x^2 + x^4)), x, 2, (1/sqrt(3))*atanh((sqrt(3)*x)/sqrt(1 + x^2 + x^4))]
    @test_int [(1 - x^2)/((1 + x^2)*sqrt(1 + x^2 + x^4)), x, 2, atan(x/sqrt(1 + x^2 + x^4))]
    @test_int [(x^4 - 1)/(x^2*sqrt(x^4 + x^2 + 1)), x, 1, sqrt(x^4 + x^2 + 1)/x]
    @test_int [(1 - x^2)/((1 + 2*a*x + x^2)*sqrt(1 + 2*a*x + 2*b*x^2 + 2*a*x^3 + x^4)), x, 1, (1/(sqrt(2)*sqrt(1 - b)))*atan((a + 2*(a^2 - b + 1)*x + a*x^2)/(sqrt(2)*sqrt(1 - b)*sqrt(1 + 2*a*x + 2*b*x^2 + 2*a*x^3 + x^4)))]
    @test_int [1/((1 + x^4)*sqrt(sqrt(1 + x^4) - x^2)), x, 2, atan(x/sqrt(sqrt(1 + x^4) - x^2))]
    @test_int [1/((1 + x^(2*n))*((1 + x^(2*n))^(1/n) - x^2)^(1/2)), x, 2, atan(x/sqrt((1 + x^(2*n))^(1/n) - x^2))]


    #= ::Section::Closed:: =#
    #=Chapter*5*Integration*Problems=#


    #= ::Subsection::Closed:: =#
    #=Problems*1 - 3*(p. 202-203)=#


    @test_int [cos(x)^2, x, 2, x/2 + (1/2)*cos(x)*sin(x)]
    @test_int [cos(x)^3, x, 2, sin(x) - sin(x)^3/3]
    @test_int [sin(x)^4, x, 3, (3*x)/8 - (3/8)*cos(x)*sin(x) - (1/4)*cos(x)*sin(x)^3]


    #= ::Subsection::Closed:: =#
    #=Problems*4 - 7*(p. 208)=#


    @test_int [cos(x)^6, x, 4, (5*x)/16 + (5/16)*cos(x)*sin(x) + (5/24)*cos(x)^3*sin(x) + (1/6)*cos(x)^5*sin(x)]
    @test_int [sin(x)^8, x, 5, (35*x)/128 - (35/128)*cos(x)*sin(x) - (35/192)*cos(x)*sin(x)^3 - (7/48)*cos(x)*sin(x)^5 - (1/8)*cos(x)*sin(x)^7]
    @test_int [cos(pi/4 + x/2)^4, x, 3, (3*x)/8 + cos(x)/2 - (1/8)*cos(x)*sin(x), (3*x)/8 + (3/4)*cos(pi/4 + x/2)*sin(pi/4 + x/2) + (1/2)*cos(pi/4 + x/2)^3*sin(pi/4 + x/2)]
    @test_int [sin(3*x - pi/12)^3, x, 2, (-(1/3))*cos(pi/12 - 3*x) + (1/9)*cos(pi/12 - 3*x)^3]


    #= ::Subsection::Closed:: =#
    #=Problems*8 - 11*(p. 211)=#


    @test_int [1/sin(x)^6, x, 2, -cot(x) - (2*cot(x)^3)/3 - cot(x)^5/5]
    @test_int [csc(x)^7, x, 4, (-(5/16))*atanh(cos(x)) - (5/16)*cot(x)*csc(x) - (5/24)*cot(x)*csc(x)^3 - (1/6)*cot(x)*csc(x)^5]
    @test_int [1/cos(x)^12, x, 2, tan(x) + (5*tan(x)^3)/3 + 2*tan(x)^5 + (10*tan(x)^7)/7 + (5*tan(x)^9)/9 + tan(x)^11/11]
    @test_int [1/cos(pi/4 + 3*x)^3, x, 2, (1/6)*atanh(sin(pi/4 + 3*x)) + (1/6)*sec(pi/4 + 3*x)*tan(pi/4 + 3*x)]


    #= ::Subsection::Closed:: =#
    #=Problems*12 - 14*(p. 213)=#


    @test_int [tan(x)^6, x, 4, -x + tan(x) - tan(x)^3/3 + tan(x)^5/5]
    @test_int [1/tan(x)^5, x, 3, cot(x)^2/2 - cot(x)^4/4 + log(sin(x))]
    @test_int [cot(x/3 - 3*pi/4)^4, x, 3, x + 3*cot(pi/4 + x/3) - cot(pi/4 + x/3)^3]


    #= ::Subsection::Closed:: =#
    #=Problems*15 - 20*(p. 219-220)=#


    @test_int [sin(x)^4*cos(x)^6, x, 6, (3*x)/256 + (3/256)*cos(x)*sin(x) + (1/128)*cos(x)^3*sin(x) + (1/160)*cos(x)^5*sin(x) - (3/80)*cos(x)^7*sin(x) - (1/10)*cos(x)^7*sin(x)^3]
    @test_int [sin(x)^7*cos(x)^6, x, 3, (-(1/7))*cos(x)^7 + cos(x)^9/3 - (3*cos(x)^11)/11 + cos(x)^13/13]
    @test_int [sin(x)^11/cos(x), x, 4, (5*cos(x)^2)/2 - (5*cos(x)^4)/2 + (5*cos(x)^6)/3 - (5*cos(x)^8)/8 + cos(x)^10/10 - log(cos(x))]
    @test_int [1/(sin(x)^6*cos(x)^6), x, 3, -10*cot(x) - (5*cot(x)^3)/3 - cot(x)^5/5 + 10*tan(x) + (5*tan(x)^3)/3 + tan(x)^5/5]
    @test_int [sin(x)^2*cos(x)^2, x, 3, x/8 + (1/8)*cos(x)*sin(x) - (1/4)*cos(x)^3*sin(x)]
    @test_int [sin(x)^4*cos(x)^4, x, 5, (3*x)/128 + (3/128)*cos(x)*sin(x) + (1/64)*cos(x)^3*sin(x) - (1/16)*cos(x)^5*sin(x) - (1/8)*cos(x)^5*sin(x)^3]
    @test_int [sin(x)^6*cos(x)^6, x, 7, (5*x)/1024 + (5*cos(x)*sin(x))/1024 + (5*cos(x)^3*sin(x))/1536 + (1/384)*cos(x)^5*sin(x) - (1/64)*cos(x)^7*sin(x) - (1/24)*cos(x)^7*sin(x)^3 - (1/12)*cos(x)^7*sin(x)^5]
    @test_int [sin(x)^8*cos(x)^8, x, 9, (35*x)/32768 + (35*cos(x)*sin(x))/32768 + (35*cos(x)^3*sin(x))/49152 + (7*cos(x)^5*sin(x))/12288 + (cos(x)^7*sin(x))/2048 - (1/256)*cos(x)^9*sin(x) - (5/384)*cos(x)^9*sin(x)^3 - (1/32)*cos(x)^9*sin(x)^5 - (1/16)*cos(x)^9*sin(x)^7]
    @test_int [sin(x)^(2*m)*cos(x)^(2*m), x, 1, (cos(x)^(-1 + 2*m)*(cos(x)^2)^(1/2 - m)*Hypergeometric2F1((1/2)*(1 - 2*m), (1/2)*(1 + 2*m), (1/2)*(3 + 2*m), sin(x)^2)*sin(x)^(1 + 2*m))/(1 + 2*m)]
    @test_int [1/(sin(pi/4 + 2*x)^3*cos(pi/4 + 2*x)), x, 3, (-(1/4))*cot(pi/4 + 2*x)^2 + (1/2)*log(tan(pi/4 + 2*x))]


    #= ::Subsection::Closed:: =#
    #=Problems*21 - 29*(p. 223)=#


    @test_int [tan(x)^2*sec(x)^2, x, 2, tan(x)^3/3]
    @test_int [cot(x)^3*csc(x), x, 2, csc(x) - csc(x)^3/3]
    @test_int [tan(x)*sec(x)^3, x, 2, sec(x)^3/3]
    @test_int [cot(x)^2*csc(x)^3, x, 3, (1/8)*atanh(cos(x)) + (1/8)*cot(x)*csc(x) - (1/4)*cot(x)*csc(x)^3]
    @test_int [cos(x)^3/sin(x)^7, x, 3, csc(x)^4/4 - csc(x)^6/6]
    @test_int [tan(x)^5*sec(x)^(3/2), x, 3, (2/3)*sec(x)^(3/2) - (4/7)*sec(x)^(7/2) + (2/11)*sec(x)^(11/2)]
    @test_int [tan(x)^(3/2)*sec(x)^4, x, 3, (2/5)*tan(x)^(5/2) + (2/9)*tan(x)^(9/2)]
    @test_int [cot(x)^4*csc(x)^3, x, 4, (-(1/16))*atanh(cos(x)) - (1/16)*cot(x)*csc(x) + (1/8)*cot(x)*csc(x)^3 - (1/6)*cot(x)^3*csc(x)^3]
    @test_int [tan(pi/4 + x/2)^2*sec(pi/4 + x/2)^3, x, 3, (-(1/4))*atanh(sin(pi/4 + x/2)) - (1/4)*sec(pi/4 + x/2)*tan(pi/4 + x/2) + (1/2)*sec(pi/4 + x/2)^3*tan(pi/4 + x/2)]


    #= ::Subsection::Closed:: =#
    #=Problems*30 - 32*(p. 228)=#


    @test_int [(a*sec(x)^2 - sin(2*x))^2*(cot(x)^3 + 1), x, 8, x/2 + 4*a*x + 2*cos(x)^2 + cos(x)^4 + 4*a*cot(x) - (1/2)*a^2*cot(x)^2 + (4 - a)*a*log(cos(x)) + (4 + a^2)*log(sin(x)) + (1/2)*cos(x)*sin(x) - cos(x)^3*sin(x) + a^2*tan(x) + (1/3)*a^2*tan(x)^3, (1/2)*(1 + 8*a)*x + 4*a*cot(x) - (1/2)*a^2*cot(x)^2 + 4*(1 + a)*log(cos(x)) + (4 + a^2)*log(tan(x)) + cos(x)^4*(1 - tan(x)) + a^2*tan(x) + (1/3)*a^2*tan(x)^3 + (1/2)*cos(x)^2*(4 + tan(x))]
    @test_int [(1 - 1/2*sin(x))^4*(4 - 3*cos(x)), x, 15, (227*x)/32 + 10*cos(x) - 3*cos(x)^2 - (2*cos(x)^3)/3 - 3*sin(x) - (99/32)*cos(x)*sin(x) - (3*sin(x)^3)/2 - (1/16)*cos(x)*sin(x)^3 + (3*sin(x)^4)/8 - (3*sin(x)^5)/80]
    @test_int [(3 - 2*cot(x))^3*(1/2 - 3*cot(x)), x, 4, -((285*x)/2) + 5*(3 - 2*cot(x))^2 + (3 - 2*cot(x))^3 - 42*cot(x) + 4*log(sin(x))]


    #= ::Subsection::Closed:: =#
    #=Problems*33 - 36*(p. 229)=#


    @test_int [cos(5*x)/cos(x)^5, x, 4, 16*x - 15*tan(x) + (5*tan(x)^3)/3]
    @test_int [cos(4*x)/cos(x), x, 4, atanh(sin(x)) - (8*sin(x)^3)/3]
    @test_int [cos(4*x)*cos(x), x, 1, (1/6)*sin(3*x) + (1/10)*sin(5*x)]
    @test_int [cos(4*x)/cos(x)^5, x, 4, (35/8)*atanh(sin(x)) - (29/8)*sec(x)*tan(x) + (1/4)*sec(x)^3*tan(x)]


    #= ::Subsection::Closed:: =#
    #=Problems*37 - 39*(p. 233)=#


    @test_int [cos(4*x)*cos(x)^4, x, 6, x/16 + (1/8)*sin(2*x) + (3/32)*sin(4*x) + (1/24)*sin(6*x) + (1/128)*sin(8*x)]
    @test_int [cos(5*x)/sin(x)^5, x, 4, 6*csc(x)^2 - csc(x)^4/4 + 16*log(sin(x))]
    @test_int [sin(4*x)/sin(x)^4, x, 3, -2*csc(x)^2 - 8*log(sin(x))]


    #= ::Subsection::Closed:: =#
    #=Problems*40 - 49*(p. 254-255)=#


    @test_int [cos(x)/(sin(x)*(2 + sin(2*x))), x, 7, -x/(2*sqrt(3)) + 1/(2*sqrt(3))*atan((1 - 2*cos(x)^2)/(2 + sqrt(3) + 2*cos(x)*sin(x))) + 1/2*log(sin(x)) - 1/4*log(1 + cos(x)*sin(x)), -(x/(2*sqrt(3))) + atan((1 - 2*cos(x)^2)/(2 + sqrt(3) + 2*cos(x)*sin(x)))/(2*sqrt(3)) + (1/2)*log(tan(x)) - (1/4)*log(1 + tan(x) + tan(x)^2)]
    @test_int [cos(x)^2/(sin(x)*cos(3*x)), x, 5, -1/2*log(csc(x)^2 - 4), log(sin(x)) - (1/2)*log(1 - 4*sin(x)^2)]
    @test_int [sin(2*x)/(cos(x)^4 + sin(x)^4), x, 5, -atan(cos(2*x))]
    @test_int [1/(4 + sqrt(3)*cos(x) + sin(x)), x, 3, x/(2*sqrt(3)) + (1/sqrt(3))*atan((cos(x) - sqrt(3)*sin(x))/(2*(2 + sqrt(3)) + sqrt(3)*cos(x) + sin(x))), x/(2*sqrt(3)) + atan(((4 - sqrt(3))*cos(x) + (3 - 4*sqrt(3))*sin(x))/(2*(5 + 2*sqrt(3)) - (3 - 4*sqrt(3))*cos(x) + (4 - sqrt(3))*sin(x)))/sqrt(3)]
    @test_int [1/(3 + 4*cos(x) + 4*sin(x)), x, 3, -1/sqrt(23)*atanh(sqrt(23)*(cos(x) - sin(x))/(8 + 3*cos(x) + 3*sin(x))), -(log(4*(5 + sqrt(23)) + 19*cos(x) + 4*sqrt(23)*cos(x) - 4*sin(x) - sqrt(23)*sin(x))/(2*sqrt(23))) + log(4*(5 - sqrt(23)) + 19*cos(x) - 4*sqrt(23)*cos(x) - 4*sin(x) + sqrt(23)*sin(x))/(2*sqrt(23))]
    @test_int [1/(4 - 3*cos(x)^2 + 5*sin(x)^2), x, 2, x/3 + (1/3)*atan((2*cos(x)*sin(x))/(1 + 2*sin(x)^2))]
    @test_int [1/(4 + tan(x) + 4*cot(x)), x, 6, (4*x)/25 - (3/25)*log(2*cos(x) + sin(x)) + 2/(5*(2 + tan(x)))]
    @test_int [1/(sin(x) + 2*sec(x))^2, x, 4, (8*x)/(15*sqrt(15)) - (8/(15*sqrt(15)))*atan((1 - 2*cos(x)^2)/(4 + sqrt(15) + 2*cos(x)*sin(x))) + (1 + 4*tan(x))/(15*(2 + tan(x) + 2*tan(x)^2))]
    @test_int [1/(cos(x) + 2*sec(x))^2, x, 3, x/(6*sqrt(6)) - (1/(6*sqrt(6)))*atan((cos(x)*sin(x))/(2 + sqrt(6) + cos(x)^2)) + tan(x)/(6*(3 + 2*tan(x)^2))]
    @test_int [(5 - tan(x) - 6*tan(x)^2)/(1 + 3*tan(x))^3, x, 4, -((67*x)/250) - (28/125)*log(cos(x) + 3*sin(x)) - 7/(10*(1 + 3*tan(x))^2) - 29/(50*(1 + 3*tan(x)))]


    #= ::Subsection::Closed:: =#
    #=Problems*50 - 56*(p. 260)=#


    @test_int [cos(x)^2/cos(3*x), x, 2, 1/2*atanh(2*sin(x))]
    @test_int [sin(x)/cos(2*x), x, 2, atanh(sqrt(2)*cos(x))/sqrt(2)]
    @test_int [sin(x)^2/cos(2*x), x, 4, -x/2 + 1/4*atanh(2*cos(x)*sin(x))]
    @test_int [sin(x)^3/cos(3*x), x, 4, 1/3*log(cos(x)) - 1/24*log(3 - 4*cos(x)^2)]
    @test_int [cos(x)/sin(3*x), x, 5, 1/3*log(sin(x)) - 1/6*log(3 - 4*sin(x)^2)]
    @test_int [sin(x)/sin(4*x), x, 4, -1/4*atanh(sin(x)) + atanh(sqrt(2)*sin(x))/(2*sqrt(2))]
    @test_int [sin(x)^3/sin(4*x), x, 4, -1/4*atanh(sin(x)) + atanh(sqrt(2)*sin(x))/(4*sqrt(2))]


    #= ::Subsection::Closed:: =#
    #=Problems*57 - 61*(p. 266)=#


    @test_int [sqrt(1 + sin(2*x)), x, 1, -(cos(2*x)/sqrt(1 + sin(2*x)))]
    @test_int [sqrt(1 - sin(2*x)), x, 1, cos(2*x)/sqrt(1 - sin(2*x))]
    @test_int [1/sqrt(1 + cos(2*x)), x, 2, atanh(sin(2*x)/(sqrt(2)*sqrt(1 + cos(2*x))))/sqrt(2)]
    @test_int [1/sqrt(1 - cos(2*x)), x, 2, -1/sqrt(2)*atanh(sin(2*x)/(sqrt(2)*sqrt(1 - cos(2*x))))]
    @test_int [1/(1 - cos(3*x))^(3/2), x, 3, -(atanh(sin(3*x)/(sqrt(2)*sqrt(1 - cos(3*x))))/(6*sqrt(2))) - sin(3*x)/(6*(1 - cos(3*x))^(3/2))]
    @test_int [(1 - sin(2*(x/3)))^(5/2), x, 3, (32*cos((2*x)/3))/(5*sqrt(1 - sin((2*x)/3))) + (8/5)*cos((2*x)/3)*sqrt(1 - sin((2*x)/3)) + (3/5)*cos((2*x)/3)*(1 - sin((2*x)/3))^(3/2)]
    @test_int [(2*(1 + 2*sin(x))^(1/4) - cos(x)^2)/(1 + 2*sin(x))^(3/2)*cos(x), x, 4, 3/(4*sqrt(1 + 2*sin(x))) - 4/(1 + 2*sin(x))^(1/4) - (1/2)*sqrt(1 + 2*sin(x)) + (1/12)*(1 + 2*sin(x))^(3/2)]


    #= ::Subsection::Closed:: =#
    #=Problems*62 - 66*(p. 268)=#


    @test_int [sqrt(tan(x)), x, 11, -(atan(1 - sqrt(2)*sqrt(tan(x)))/sqrt(2)) + atan(1 + sqrt(2)*sqrt(tan(x)))/sqrt(2) + log(1 - sqrt(2)*sqrt(tan(x)) + tan(x))/(2*sqrt(2)) - log(1 + sqrt(2)*sqrt(tan(x)) + tan(x))/(2*sqrt(2))]
    @test_int [1/tan(5*x)^(1/3), x, 9, -1/10*sqrt(3)*atan((1 - 2*tan(5*x)^(2/3))/sqrt(3)) + 3/20*log(1 + tan(5*x)^(2/3)) - 1/20*log(1 + tan(5*x)^2), (-(1/10))*sqrt(3)*atan((1 - 2*tan(5*x)^(2/3))/sqrt(3)) + (1/10)*log(1 + tan(5*x)^(2/3)) - (1/20)*log(1 - tan(5*x)^(2/3) + tan(5*x)^(4/3))]
    @test_int [1/(4 + 3*tan(2*x))^(3/2), x, 6, -((9*atan((1 - 3*tan(2*x))/(sqrt(2)*sqrt(4 + 3*tan(2*x)))))/(250*sqrt(2))) + (13*atanh((3 + tan(2*x))/(sqrt(2)*sqrt(4 + 3*tan(2*x)))))/(250*sqrt(2)) - 3/(25*sqrt(4 + 3*tan(2*x)))]
    @test_int [(3*tan(x) - sqrt(4 - 3*tan(x)))/(cos(x)^2*(4 - 3*tan(x))^(3/2)), x, 4, (1/3)*log(4 - 3*tan(x)) + 8/(3*sqrt(4 - 3*tan(x))) + (2/3)*sqrt(4 - 3*tan(x))]
    @test_int [tan(x)/(sqrt(tan(x)) - 1)^2, x, -19, -(x/2) + atan((1 - tan(x))/(sqrt(2)*sqrt(tan(x))))/sqrt(2) + atanh((1 + tan(x))/(sqrt(2)*sqrt(tan(x))))/sqrt(2) + (1/2)*log(cos(x)) + log(1 - sqrt(tan(x))) + 1/(1 - sqrt(tan(x)))]


    #= ::Subsection::Closed:: =#
    #=Problems*67 - 75*(p. 272-273)=#


    @test_int [sin(x)/sqrt(sin(2*x)), x, 1, (-(1/2))*asin(cos(x) - sin(x)) - (1/2)*log(cos(x) + sin(x) + sqrt(sin(2*x)))]
    @test_int [cos(x)/sqrt(sin(2*x)), x, 1, (-(1/2))*asin(cos(x) - sin(x)) + (1/2)*log(cos(x) + sin(x) + sqrt(sin(2*x)))]
    @test_int [sqrt(sin(2*x))*sin(x), x, 2, (-(1/4))*asin(cos(x) - sin(x)) + (1/4)*log(cos(x) + sin(x) + sqrt(sin(2*x))) - (1/2)*cos(x)*sqrt(sin(2*x))]
    @test_int [(cos(x) - sin(x))*sqrt(sin(2*x)), x, 6, (-(1/2))*log(cos(x) + sin(x) + sqrt(sin(2*x))) + (1/2)*cos(x)*sqrt(sin(2*x)) + (1/2)*sin(x)*sqrt(sin(2*x))]
    @test_int [sin(x)^7/sin(2*x)^(7/2), x, 4, -1/16*asin(cos(x) - sin(x)) + 1/16*log(cos(x) + sin(x) + sqrt(sin(2*x))) + sin(x)^5/(5*sin(2*x)^(5/2)) - sin(x)/(4*sqrt(sin(2*x)))]
    @test_int [cos(x)^7/sin(2*x)^(7/2), x, 4, -1/16*asin(cos(x) - sin(x)) - 1/16*log(cos(x) + sin(x) + sqrt(sin(2*x))) - cos(x)^5/(5*sin(2*x)^(5/2)) + cos(x)/(4*sqrt(sin(2*x)))]
    @test_int [sin(2*x)^(3/2)/sin(x)^5, x, 1, (-(1/5))*csc(x)^5*sin(2*x)^(5/2)]
    @test_int [1/(cos(x)^3*sqrt(sin(2*x))), x, 2, (4/5)*sec(x)*sqrt(sin(2*x)) + (1/5)*sec(x)^3*sqrt(sin(2*x))]
    @test_int [1/(sin(x)*sin(2*x)^(3/2)), x, 3, -((2*cos(x))/(3*sin(2*x)^(3/2))) + (4*sin(x))/(3*sqrt(sin(2*x)))]
    @test_int [(cos(2*x) - 3*tan(x))*(cos(x)^3/((sin(x)^2 - sin(2*x))*sin(2*x)^(5/2))), x, 6, (33/32)*atanh(sqrt(sin(2*x))/(2*cos(x))) - (9*cos(x))/(16*sqrt(sin(2*x))) - (5*cos(x)*cot(x))/(24*sqrt(sin(2*x))) + (cos(x)*cot(x)^2)/(20*sqrt(sin(2*x))), cos(x)^5/(5*sin(2*x)^(5/2)) - (5*cos(x)^4*sin(x))/(6*sin(2*x)^(5/2)) - (9*cos(x)^3*sin(x)^2)/(4*sin(2*x)^(5/2)) + (33*atanh(sqrt(tan(x))/sqrt(2))*sin(x)^5)/(4*sqrt(2)*sin(2*x)^(5/2)*tan(x)^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Problems*76 - 82*(p. 276)=#


    @test_int [sqrt(sin(x)/cos(x)^5), x, 5, (2/3)*cos(x)*sin(x)*sqrt(sec(x)^4*tan(x)), (2*sec(x)^2*tan(x)^2)/(3*sqrt(tan(x) + 2*tan(x)^3 + tan(x)^5))]
    @test_int [sqrt(sin(x)^5/cos(x)), x, 13, 3/(4*sqrt(2))*atan((1 - cot(x))*csc(x)^2*sqrt(sin(x)^4*tan(x))/sqrt(2)) + 3/(4*sqrt(2))*log(cos(x) + sin(x) - sqrt(2)*cot(x)*csc(x)*sqrt(sin(x)^4*tan(x))) - 1/2*cot(x)*sqrt(sin(x)^4*tan(x)), (-(1/2))*cot(x)*sqrt(sin(x)^4*tan(x)) - (3*atan(1 - sqrt(2)*sqrt(tan(x)))*sec(x)^2*sqrt(sin(x)^4*tan(x)))/(4*sqrt(2)*tan(x)^(5/2)) + (3*atan(1 + sqrt(2)*sqrt(tan(x)))*sec(x)^2*sqrt(sin(x)^4*tan(x)))/(4*sqrt(2)*tan(x)^(5/2)) + (3*log(1 - sqrt(2)*sqrt(tan(x)) + tan(x))*sec(x)^2*sqrt(sin(x)^4*tan(x)))/(8*sqrt(2)*tan(x)^(5/2)) - (3*log(1 + sqrt(2)*sqrt(tan(x)) + tan(x))*sec(x)^2*sqrt(sin(x)^4*tan(x)))/(8*sqrt(2)*tan(x)^(5/2))]
    @test_int [(sin(x)^2/cos(x)^14)^(1/3), x, 5, (3/5)*cos(x)^3*sin(x)*(sec(x)^12*tan(x)^2)^(1/3) + (3/11)*cos(x)*sin(x)^3*(sec(x)^12*tan(x)^2)^(1/3)]
    @test_int [1/(sin(x)^13*cos(x)^11)^(1/4), x, 4, -((4*cos(x)^5*sin(x))/(9*(cos(x)^11*sin(x)^13)^(1/4))) - (8*cos(x)^3*sin(x)^3)/(cos(x)^11*sin(x)^13)^(1/4) + (4*cos(x)*sin(x)^5)/(7*(cos(x)^11*sin(x)^13)^(1/4))]
    @test_int [(cos(2*x) - sqrt(sin(2*x)))/sqrt(sin(x)*cos(x)^3), x, If($VersionNumber<11, -28, -27), -sqrt(2)*log(cos(x) + sin(x) - sqrt(2)*sec(x)*sqrt(cos(x)^3*sin(x))) - asin(cos(x) - sin(x))*cos(x)*sqrt(sin(2*x))/sqrt(cos(x)^3*sin(x)) - atanh(sin(x))*cos(x)*sqrt(sin(2*x))/sqrt(cos(x)^3*sin(x)) - sin(2*x)/sqrt(cos(x)^3*sin(x))]
    @test_int [(sqrt(sin(x)^3*cos(x)) - 2*sin(2*x))/(sqrt(tan(x)) - sqrt(sin(x)*cos(x)^3)), x, 66, -2*sqrt(2)*acoth((cos(x)*(cos(x) + sin(x)))/(sqrt(2)*sqrt(cos(x)^3*sin(x)))) + 2^(1/4)*acoth((cos(x)*(sqrt(2)*cos(x) + sin(x)))/(2^(3/4)*sqrt(cos(x)^3*sin(x)))) - 2^(1/4)*acoth((sqrt(2) + tan(x))/(2^(3/4)*sqrt(tan(x)))) - 2*sqrt(2)*atan((cos(x)*(cos(x) - sin(x)))/(sqrt(2)*sqrt(cos(x)^3*sin(x)))) + 2^(1/4)*atan((cos(x)*(sqrt(2)*cos(x) - sin(x)))/(2^(3/4)*sqrt(cos(x)^3*sin(x)))) - 2^(1/4)*atan((sqrt(2) - tan(x))/(2^(3/4)*sqrt(tan(x)))) + 4*csc(x)*sec(x)*sqrt(cos(x)^3*sin(x)) + (1/4)*csc(x)^2*log(1 + cos(x)^2)*sec(x)^2*sqrt(cos(x)^3*sin(x))*sqrt(cos(x)*sin(x)^3) + (1/2)*csc(x)^2*log(sin(x))*sec(x)^2*sqrt(cos(x)^3*sin(x))*sqrt(cos(x)*sin(x)^3) + 4/sqrt(tan(x)) - (1/4)*csc(x)^2*log(1 + cos(x)^2)*sqrt(cos(x)*sin(x)^3)*sqrt(tan(x)) + (1/2)*csc(x)^2*log(sin(x))*sqrt(cos(x)*sin(x)^3)*sqrt(tan(x)), (-2^(1/4))*atan(1 - 2^(1/4)*sqrt(tan(x))) + 2^(1/4)*atan(1 + 2^(1/4)*sqrt(tan(x))) + log(sqrt(2) - 2^(3/4)*sqrt(tan(x)) + tan(x))/2^(3/4) - log(sqrt(2) + 2^(3/4)*sqrt(tan(x)) + tan(x))/2^(3/4) + 4*csc(x)*sec(x)*sqrt(cos(x)^3*sin(x)) - (1/2)*csc(x)^2*log(sec(x)^2)*sec(x)^2*sqrt(cos(x)^3*sin(x))*sqrt(cos(x)*sin(x)^3) + csc(x)^2*log(sqrt(tan(x)))*sec(x)^2*sqrt(cos(x)^3*sin(x))*sqrt(cos(x)*sin(x)^3) + (1/4)*csc(x)^2*log(2 + tan(x)^2)*sec(x)^2*sqrt(cos(x)^3*sin(x))*sqrt(cos(x)*sin(x)^3) + (log(tan(x))*sec(x)^2*sqrt(cos(x)*sin(x)^3))/(2*tan(x)^(3/2)) - (log(2 + tan(x)^2)*sec(x)^2*sqrt(cos(x)*sin(x)^3))/(4*tan(x)^(3/2)) + 4/sqrt(tan(x)) + (2^(1/4)*atan(1 - 2^(1/4)*sqrt(tan(x)))*sec(x)^2*sqrt(cos(x)^3*sin(x)))/sqrt(tan(x)) - (2^(1/4)*atan(1 + 2^(1/4)*sqrt(tan(x)))*sec(x)^2*sqrt(cos(x)^3*sin(x)))/sqrt(tan(x)) - (2*sqrt(2)*atan(1 - sqrt(2)*sqrt(tan(x)))*sec(x)^2*sqrt(cos(x)^3*sin(x)))/sqrt(tan(x)) + (2*sqrt(2)*atan(1 + sqrt(2)*sqrt(tan(x)))*sec(x)^2*sqrt(cos(x)^3*sin(x)))/sqrt(tan(x)) + (sqrt(2)*log(1 - sqrt(2)*sqrt(tan(x)) + tan(x))*sec(x)^2*sqrt(cos(x)^3*sin(x)))/sqrt(tan(x)) - (sqrt(2)*log(1 + sqrt(2)*sqrt(tan(x)) + tan(x))*sec(x)^2*sqrt(cos(x)^3*sin(x)))/sqrt(tan(x)) - (log(sqrt(2) - 2^(3/4)*sqrt(tan(x)) + tan(x))*sec(x)^2*sqrt(cos(x)^3*sin(x)))/(2^(3/4)*sqrt(tan(x))) + (log(sqrt(2) + 2^(3/4)*sqrt(tan(x)) + tan(x))*sec(x)^2*sqrt(cos(x)^3*sin(x)))/(2^(3/4)*sqrt(tan(x)))]
    @test_int [((sin(x)/cos(x)^7)^(1/3) - 3*tan(x))/(sin(x)*cos(x)^5)^(2/3), x, 13, -((9*sin(x)^4)/(10*(cos(x)^5*sin(x))^(2/3))) - (9/4)*sec(x)^8*(cos(x)^5*sin(x))^(4/3) + (3/2)*(cos(x)^5*sin(x))^(1/3)*(sec(x)^6*tan(x))^(1/3) + (3/4)*(cos(x)^5*sin(x))^(1/3)*tan(x)^2*(sec(x)^6*tan(x))^(1/3) + (3/14)*(cos(x)^5*sin(x))^(1/3)*tan(x)^4*(sec(x)^6*tan(x))^(1/3), -((9*cos(x)^2*sin(x)^2)/(4*(cos(x)^5*sin(x))^(2/3))) - (9*sin(x)^4)/(10*(cos(x)^5*sin(x))^(2/3)) + (3*cos(x)^5*sin(x)*(sec(x)^6*tan(x))^(1/3))/(2*(cos(x)^5*sin(x))^(2/3)) + (3*cos(x)^3*sin(x)^3*(sec(x)^6*tan(x))^(1/3))/(4*(cos(x)^5*sin(x))^(2/3)) + (3*cos(x)*sin(x)^5*(sec(x)^6*tan(x))^(1/3))/(14*(cos(x)^5*sin(x))^(2/3))]


    #= ::Subsection::Closed:: =#
    #=Problems*83 - 92*(p. 288-289)=#


    @test_int [(2*cos(x)^2 + 1)^(5/2)*sin(x), x, 5, -((5*asinh(sqrt(2)*cos(x)))/(16*sqrt(2))) - (5/16)*cos(x)*sqrt(1 + 2*cos(x)^2) - (5/24)*cos(x)*(1 + 2*cos(x)^2)^(3/2) - (1/6)*cos(x)*(1 + 2*cos(x)^2)^(5/2), -((5*asinh(sqrt(2)*cos(x)))/(16*sqrt(2))) - (5/16)*cos(x)*sqrt(2 + cos(2*x)) - (5/24)*cos(x)*(2 + cos(2*x))^(3/2) - (1/6)*cos(x)*(2 + cos(2*x))^(5/2)]
    @test_int [(5*cos(x)^2 + sin(x)^2)^(5/2)*cos(x), x, 5, (625/32)*asin((2*sin(x))/sqrt(5)) + (125/16)*sin(x)*sqrt(5 - 4*sin(x)^2) + (25/24)*sin(x)*(5 - 4*sin(x)^2)^(3/2) + (1/6)*sin(x)*(5 - 4*sin(x)^2)^(5/2)]
    @test_int [(-cos(x)^2 - 5*sin(x)^2)^(3/2)*cos(x), x, 5, (3/16)*atan((2*sin(x))/sqrt(-1 - 4*sin(x)^2)) - (3/8)*sin(x)*sqrt(-1 - 4*sin(x)^2) + (1/4)*sin(x)*(-1 - 4*sin(x)^2)^(3/2)]
    @test_int [sin(x)/(5*cos(x)^2 - 2*sin(x)^2)^(7/2), x, 4, cos(x)/(10*(-2 + 7*cos(x)^2)^(5/2)) - cos(x)/(15*(-2 + 7*cos(x)^2)^(3/2)) + cos(x)/(15*sqrt(-2 + 7*cos(x)^2))]
    @test_int [cos(2*x)*(cos(x)/(2 - 5*sin(x)^2)^(3/2)), x, 3, (2*asin(sqrt(5/2)*sin(x)))/(5*sqrt(5)) + sin(x)/(10*sqrt(2 - 5*sin(x)^2))]
    @test_int [sin(5*x)/(5*cos(x)^2 + 9*sin(x)^2)^(5/2), x, 4, (-(1/2))*asin((2*cos(x))/3) - (55*cos(x))/(27*(9 - 4*cos(x)^2)^(3/2)) + (295*cos(x))/(243*sqrt(9 - 4*cos(x)^2))]
    @test_int [cos(x)*cos(2*x)*sin(3*x)/(4*sin(x)^2 - 5)^(5/2), x, 4, -(1/(4*(-5 + 4*sin(x)^2)^(3/2))) - 5/(8*sqrt(-5 + 4*sin(x)^2)) + (1/8)*sqrt(-5 + 4*sin(x)^2)]
    @test_int [(sin(x)*cos(2*x) - 2*(sin(x) - 1)*cos(x)^3)/(sin(x)^2*sqrt(sin(x)^2 - 5)), x, 18, 2*atan(cos(x)/sqrt(sin(x)^2 - 5)) - (1/sqrt(5))*atan((sqrt(5)*cos(x))/sqrt(sin(x)^2 - 5)) - (2/sqrt(5))*atan(sqrt(sin(x)^2 - 5)/sqrt(5)) - 2*atanh(sin(x)/sqrt(sin(x)^2 - 5)) + (2*sqrt(sin(x)^2 - 5))/(5*sin(x)) + 2*sqrt(sin(x)^2 - 5), 2*atan(cos(x)/sqrt(-4 - cos(x)^2)) - atan((sqrt(5)*cos(x))/sqrt(-4 - cos(x)^2))/sqrt(5) - (2*atan(sqrt(-4 - cos(x)^2)/sqrt(5)))/sqrt(5) - 2*atanh(sin(x)/sqrt(-5 + sin(x)^2)) + 2*sqrt(-4 - cos(x)^2) + (2/5)*csc(x)*sqrt(-5 + sin(x)^2)]
    @test_int [cos(3*x)/(sqrt(3*cos(x)^2 - sin(x)^2) - sqrt(8*cos(x)^2 - 1)), x, 27, (5/(4*sqrt(2)))*asin(2*sqrt(2/7)*sin(x)) + (3/4)*asin((2*sin(x))/sqrt(3)) - (3/4)*atan(sin(x)/sqrt(4*cos(x)^2 - 1)) - (3/4)*atan(sin(x)/sqrt(8*cos(x)^2 - 1)) - (1/2)*sin(x)*sqrt(4*cos(x)^2 - 1) - (1/2)*sin(x)*sqrt(8*cos(x)^2 - 1), (5*asin(2*sqrt(2/7)*sin(x)))/(4*sqrt(2)) + (3/4)*asin((2*sin(x))/sqrt(3)) - (3/4)*atan(sin(x)/sqrt(7 - 8*sin(x)^2)) - (3/4)*atan(sin(x)/sqrt(3 - 4*sin(x)^2)) - (1/2)*sin(x)*sqrt(7 - 8*sin(x)^2) - (1/2)*sin(x)*sqrt(3 - 4*sin(x)^2)]
    @test_int [(2 - 3*sin(x)^2)^(3/5)*sin(4*x), x, 5, (5/36)*(2 - 3*sin(x)^2)^(8/5) - (20/117)*(2 - 3*sin(x)^2)^(13/5)]


    #= ::Subsection::Closed:: =#
    #=Problems*93 - 97*(p. 293)=#


    @test_int [sqrt(cos(2*x))*cos(x), x, 3, asin(sqrt(2)*sin(x))/(2*sqrt(2)) + (1/2)*sin(x)*sqrt(cos(2*x))]
    @test_int [cos(2*x)^(3/2)*sin(x), x, 5, (-(3/(8*sqrt(2))))*atanh((sqrt(2)*cos(x))/sqrt(cos(2*x))) + (3/8)*cos(x)*sqrt(cos(2*x)) - (1/4)*cos(x)*cos(2*x)^(3/2)]
    @test_int [sin(x)/cos(2*x)^(5/2), x, 1, -(cos(3*x)/(3*cos(2*x)^(3/2)))]
    @test_int [cos(2*x)^(3/2)/cos(x)^3, x, 6, 2*sqrt(2)*asin(sqrt(2)*sin(x)) - (5/2)*atan(sin(x)/sqrt(cos(2*x))) - (1/2)*sec(x)*tan(x)*sqrt(cos(2*x))]
    @test_int [(3*sin(x)^3 - cos(x)*sin(4*x))/(csc(x)^2*cos(2*x)^(7/2)), x, 11, -(atanh((sqrt(2)*cos(x))/sqrt(cos(2*x)))/sqrt(2)) - (11*cos(x))/(20*cos(2*x)^(3/2)) - (2*cos(x)^3)/(3*cos(2*x)^(3/2)) + (63*cos(x))/(20*sqrt(cos(2*x))) + (3*cos(x)*sin(x)^2)/(10*cos(2*x)^(5/2)), -(atanh((sqrt(2)*cos(x))/sqrt(cos(2*x)))/sqrt(2)) - (2*cos(x)^3)/(3*cos(2*x)^(3/2)) + (13*cos(x))/(5*sqrt(cos(2*x))) - (4*cos(x)*sin(x)^2)/(5*cos(2*x)^(3/2)) + (3*cos(x)*sin(x)^4)/(5*cos(2*x)^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Problems*98 - 103*(p. 297)=#


    @test_int [(4 - 5*sec(x)^2)^(3/2), x, 7, 8*atan((2*tan(x))/sqrt(-1 - 5*tan(x)^2)) - (7/2)*sqrt(5)*atan((sqrt(5)*tan(x))/sqrt(-1 - 5*tan(x)^2)) - (5/2)*tan(x)*sqrt(-1 - 5*tan(x)^2)]
    @test_int [1/(4 - 5*sec(x)^2)^(3/2), x, 4, (1/8)*atan((2*tan(x))/sqrt(-1 - 5*tan(x)^2)) - (5*tan(x))/(4*sqrt(-1 - 5*tan(x)^2))]
    @test_int [(sin(x) - 2*cot(x)^2)/(1 + 5*tan(x)^2)^(3/2), x, 10, -1/4*atanh((2*tan(x))/sqrt(1 + 5*tan(x)^2)) - cos(x)/(4*sqrt(1 + 5*tan(x)^2)) - (5*cot(x))/(2*sqrt(1 + 5*tan(x)^2)) - 1/8*cos(x)*sqrt(1 + 5*tan(x)^2) + 9/2*cot(x)*sqrt(1 + 5*tan(x)^2), (-(1/4))*atanh((2*tan(x))/sqrt(1 + 5*tan(x)^2)) + cos(x)/(4*sqrt(-4 + 5*sec(x)^2)) - (5*sec(x))/(8*sqrt(-4 + 5*sec(x)^2)) - (5*cot(x))/(2*sqrt(1 + 5*tan(x)^2)) + (9/2)*cot(x)*sqrt(1 + 5*tan(x)^2)]
    @test_int [(cos(2*x) - 3)/(cos(x)^4*sqrt(4 - cot(x)^2)), x, 5, (-(2/3))*sqrt(4 - cot(x)^2)*tan(x) - (1/3)*sqrt(4 - cot(x)^2)*tan(x)^3]
    @test_int [(3 + sin(x)^2)*tan(x)^3/((cos(x)^2 - 2)*(5 - 4*sec(x)^2)^(3/2)), x, 16, -(atanh(sqrt(5 - 4*sec(x)^2)/sqrt(3))/(6*sqrt(3))) - atanh(sqrt(5 - 4*sec(x)^2)/sqrt(5))/(5*sqrt(5)) - 2/(15*sqrt(5 - 4*sec(x)^2))]
    @test_int [(sec(x)^2 - 3*tan(x)*sqrt(4*sec(x)^2 + 5*tan(x)^2))/(sin(x)^2*(4*sec(x)^2 + 5*tan(x)^2)^(3/2)), x, 10, (-(3/4))*log(tan(x)) + (3/8)*log(4 + 9*tan(x)^2) - cot(x)/(4*sqrt(4 + 9*tan(x)^2)) - (7*tan(x))/(8*sqrt(4 + 9*tan(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Problems*104 - 110*(p. 303)=#


    @test_int [(1 + 5*tan(x)^2)^(5/2)*tan(x), x, 7, -32*atan((1/2)*sqrt(1 + 5*tan(x)^2)) + 16*sqrt(1 + 5*tan(x)^2) - (4/3)*(1 + 5*tan(x)^2)^(3/2) + (1/5)*(1 + 5*tan(x)^2)^(5/2)]
    @test_int [tan(x)/(1 + 5*tan(x)^2)^(5/2), x, 6, (1/32)*atan((1/2)*sqrt(1 + 5*tan(x)^2)) - 1/(12*(1 + 5*tan(x)^2)^(3/2)) + 1/(16*sqrt(1 + 5*tan(x)^2))]
    @test_int [tan(x)/(a^3 + b^3*tan(x)^2)^(1/3), x, 6, (sqrt(3)*atan((1 + (2*(a^3 + b^3*tan(x)^2)^(1/3))/(a^3 - b^3)^(1/3))/sqrt(3)))/(2*(a^3 - b^3)^(1/3)) + log(cos(x))/(2*(a^3 - b^3)^(1/3)) + (3*log((a^3 - b^3)^(1/3) - (a^3 + b^3*tan(x)^2)^(1/3)))/(4*(a^3 - b^3)^(1/3))]
    @test_int [(1 - 7*tan(x)^2)^(2/3)*tan(x), x, 7, 2*sqrt(3)*atan((1 + (1 - 7*tan(x)^2)^(1/3))/sqrt(3)) + 2*log(cos(x)) + 3*log(2 - (1 - 7*tan(x)^2)^(1/3)) + (3/4)*(1 - 7*tan(x)^2)^(2/3)]
    @test_int [cot(x)/(a^4 + b^4*csc(x)^2)^(1/4), x, 6, -atan((a^4 + b^4*csc(x)^2)^(1/4)/a)/a + atanh((a^4 + b^4*csc(x)^2)^(1/4)/a)/a]
    @test_int [cot(x)/(a^4 - b^4*csc(x)^2)^(1/4), x, 6, -atan((a^4 - b^4*csc(x)^2)^(1/4)/a)/a + atanh((a^4 - b^4*csc(x)^2)^(1/4)/a)/a]
    @test_int [(3*tan(x)^2 + sin(x)^2*(1 - 3*sec(x)^2)^(1/3))/(cos(x)^2*(1 - 3*sec(x)^2)^(5/6)*(1 - sqrt(1 - 3*sec(x)^2)))*tan(x), x, 29, sqrt(3)*atan((1 + 2*(1 - 3*sec(x)^2)^(1/6))/sqrt(3)) + (1/4)*log(sec(x)^2) - (3/2)*log(1 - (1 - 3*sec(x)^2)^(1/6)) + (1/3)*log(1 - sqrt(1 - 3*sec(x)^2)) - (1 - 3*sec(x)^2)^(1/6) - (1/4)*(1 - 3*sec(x)^2)^(2/3) + 1/(2*(1 - sqrt(1 - 3*sec(x)^2))), sqrt(3)*atan((1 + 2*(1 - 3*sec(x)^2)^(1/6))/sqrt(3)) + (1/2)*atanh(sqrt(1 - 3*sec(x)^2)) + cos(x)^2/6 + (1/3)*log(1 - sqrt(-((3 - cos(x)^2)*sec(x)^2))) - (3/2)*log(1 - (1 - 3*sec(x)^2)^(1/6)) + (1/2)*log(1 - sqrt(1 - 3*sec(x)^2)) - (1 - 3*sec(x)^2)^(1/6) + (1/6)*cos(x)^2*sqrt(1 - 3*sec(x)^2) - (1/4)*(1 - 3*sec(x)^2)^(2/3)]
    @test_int [(2*tan(x)^2 - cos(2*x))/(cos(x)^2*(tan(x)*tan(2*x))^(3/2)), x, -22, 2*atanh(tan(x)/sqrt(tan(x)*tan(2*x))) - (11/(4*sqrt(2)))*atanh((sqrt(2)*tan(x))/sqrt(tan(x)*tan(2*x))) + tan(x)/(2*(tan(x)*tan(2*x))^(3/2)) + (2*tan(x)^3)/(3*(tan(x)*tan(2*x))^(3/2)) + (3*tan(x))/(4*sqrt(tan(x)*tan(2*x)))]


    #= ::Subsection::Closed:: =#
    #=Problems*111 - 113*(p. 305-306)=#


    @test_int [tan(x)/(a^3 - b^3*cos(x)^n)^(4/3), x, 7, (-(sqrt(3)/(a^4*n)))*atan((a + 2*(a^3 - b^3*cos(x)^n)^(1/3))/(sqrt(3)*a)) - 3/(a^3*n*(a^3 - b^3*cos(x)^n)^(1/3)) + log(cos(x))/(2*a^4) - (3*log(a - (a^3 - b^3*cos(x)^n)^(1/3)))/(2*a^4*n)]
    @test_int [(1 + 2*cos(x)^9)^(5/6)*tan(x), x, 14, atan((1 - (1 + 2*cos(x)^9)^(1/3))/(sqrt(3)*(1 + 2*cos(x)^9)^(1/6)))/(3*sqrt(3)) + (1/3)*atanh((1 + 2*cos(x)^9)^(1/6)) - (1/9)*atanh(sqrt(1 + 2*cos(x)^9)) - (2/15)*(1 + 2*cos(x)^9)^(5/6), atan((1 - 2*(1 + 2*cos(x)^9)^(1/6))/sqrt(3))/(3*sqrt(3)) - atan((1 + 2*(1 + 2*cos(x)^9)^(1/6))/sqrt(3))/(3*sqrt(3)) + (2/9)*atanh((1 + 2*cos(x)^9)^(1/6)) - (2/15)*(1 + 2*cos(x)^9)^(5/6) - (1/18)*log(1 - (1 + 2*cos(x)^9)^(1/6) + (1 + 2*cos(x)^9)^(1/3)) + (1/18)*log(1 + (1 + 2*cos(x)^9)^(1/6) + (1 + 2*cos(x)^9)^(1/3))]
    @test_int [sin(x)^9*cot(x)/(2 - 5*sin(x)^3)^(4/3), x, 4, 4/(125*(2 - 5*sin(x)^3)^(1/3)) + (2/125)*(2 - 5*sin(x)^3)^(2/3) - (1/625)*(2 - 5*sin(x)^3)^(5/3)]


    #= ::Subsection::Closed:: =#
    #=Problems*114 - 120*(p. 308-309)=#


    @test_int [((1 + (1 - 8*tan(x)^2)^(1/3))/(cos(x)^2*(1 - 8*tan(x)^2)^(2/3)))*tan(x), x, 2, (-(3/32))*(1 + (1 - 8*tan(x)^2)^(1/3))^2]
    @test_int [((1 + (1 - 8*tan(x)^2)^(1/3))/(cos(x)^2*(1 - 8*tan(x)^2)^(2/3)))*cot(x), x, 15, -log(tan(x)) + (3/2)*log(1 - (1 - 8*tan(x)^2)^(1/3)), (-(1/2))*log(1 - sec(x)^2) + (3/2)*log(1 - (9 - 8*sec(x)^2)^(1/3))]
    @test_int [(5*cos(x)^2 - sqrt(5*sin(x)^2 - 1))/((5*sin(x)^2 - 1)^(1/4)*(2 + sqrt(5*sin(x)^2 - 1)))*tan(x), x, 14, (-(3/sqrt(2)))*atan((-1 + 5*sin(x)^2)^(1/4)/sqrt(2)) - (1/(2*sqrt(2)))*atanh((-1 + 5*sin(x)^2)^(1/4)/sqrt(2)) + 2*(-1 + 5*sin(x)^2)^(1/4) - (-1 + 5*sin(x)^2)^(1/4)/(2*(2 + sqrt(-1 + 5*sin(x)^2))), atan((4 - 5*cos(x)^2)^(1/4)/sqrt(2))/sqrt(2) - 2*sqrt(2)*atan((4 - 5*cos(x)^2)^(1/4)/sqrt(2)) - atanh((4 - 5*cos(x)^2)^(1/4)/sqrt(2))/(2*sqrt(2)) + 2*(4 - 5*cos(x)^2)^(1/4) - (4 - 5*cos(x)^2)^(1/4)/(2*(2 + sqrt(4 - 5*cos(x)^2)))]
    @test_int [cos(x)^4*cos(2*x)^(2/3)*tan(x), x, 4, (-(3/40))*cos(2*x)^(5/3) - (3/64)*cos(2*x)^(8/3)]
    @test_int [sin(x)^6*(tan(x)/cos(2*x)^(3/4)), x, -14, atan((1 - sqrt(cos(2*x)))/(sqrt(2)*cos(2*x)^(1/4)))/sqrt(2) - atanh((1 + sqrt(cos(2*x)))/(sqrt(2)*cos(2*x)^(1/4)))/sqrt(2) + (7/4)*cos(2*x)^(1/4) - (1/5)*cos(2*x)^(5/4) + (1/36)*cos(2*x)^(9/4)]
    @test_int [sqrt(tan(x)*tan(2*x)), x, 3, -atanh(tan(x)/sqrt(tan(x)*tan(2*x))), -atanh(tan(2*x)/sqrt(-1 + sec(2*x)))]
    @test_int [sqrt(cot(2*x)/cot(x)), x, 6, -(asin(tan(x))/sqrt(2)) + atan((sqrt(2)*tan(x))/sqrt(1 - tan(x)^2))]


    #= ::Section::Closed:: =#
    #=Chapter*6*Integration*Problems=#


    #= ::Subsection::Closed:: =#
    #=Problems*1 - 5*(p. 314)=#


    @test_int [1/(x^5*(5 + x^2)), x, 3, -(1/(20*x^4)) + 1/(50*x^2) + log(x)/125 - (1/250)*log(5 + x^2)]
    @test_int [1/(x^6*(5 + x^2)), x, 4, -(1/(25*x^5)) + 1/(75*x^3) - 1/(125*x) - atan(x/sqrt(5))/(125*sqrt(5))]
    @test_int [1/(x*(x^2 - 4)^4), x, 3, 1/(24*(4 - x^2)^3) + 1/(64*(4 - x^2)^2) + 1/(128*(4 - x^2)) + log(x)/256 - (1/512)*log(4 - x^2)]
    @test_int [1/(x*(x^2 - 2)^(5/2)), x, 5, -(1/(6*(x^2 - 2)^(3/2))) + 1/(4*sqrt(x^2 - 2)) + atan(sqrt(x^2 - 2)/sqrt(2))/(4*sqrt(2))]
    @test_int [(x^2 - 10)^(5/2)/x, x, 6, 100*sqrt(x^2 - 10) - (10/3)*(x^2 - 10)^(3/2) + (1/5)*(x^2 - 10)^(5/2) - 100*sqrt(10)*atan(sqrt(x^2 - 10)/sqrt(10))]


    #= ::Subsection::Closed:: =#
    #=Problems*6 - 21*(p. 327-328)=#


    @test_int [x^(2*n + 1), x, 1, x^(2*(n + 1))/(2*(n + 1))]
    @test_int [x^7/(x^2 - 5)^3, x, 3, x^2/2 - 125/(4*(5 - x^2)^2) + 75/(2*(5 - x^2)) + (15/2)*log(5 - x^2)]
    @test_int [(3*x^5 - 4*x^3)/(x^2 - 1)^5, x, 4, 1/(8*(1 - x^2)^4) + 1/(3*(1 - x^2)^3) - 3/(4*(1 - x^2)^2)]
    @test_int [(1 + x^2)^(9/14)*x^3, x, 3, -7/23*(1 + x^2)^(23/14) + 7/37*(1 + x^2)^(37/14)]
    @test_int [x^5/(x^2 - 4)^(13/6), x, 3, -(48/(7*(x^2 - 4)^(7/6))) - 24/(x^2 - 4)^(1/6) + (3/5)*(x^2 - 4)^(5/6)]
    @test_int [1/(1+2*x^2)^(5/2), x, 2, x/(3*(1 + 2*x^2)^(3/2)) + (2*x)/(3*sqrt(1 + 2*x^2))]
    @test_int [1/(x^2 - 2*x - 1)^(5/2), x, 2, (1 - x)/(6*(x^2 - 2*x - 1)^(3/2)) - (1 - x)/(6*sqrt(x^2 - 2*x - 1))]
    @test_int [1/(x^4*(x^2 - 8)^(3/2)), x, 3, 1/(24*x^3*sqrt(x^2 - 8)) + 1/(48*x*sqrt(x^2 - 8)) - x/(192*sqrt(x^2 - 8))]
    @test_int [(x^2 + 5)^2/(x^4*x^(1/3)), x, 2, -(15/(2*x^(10/3))) - 15/(2*x^(4/3)) + (3*x^(2/3))/2]
    @test_int [1/(x^7*(1 + x^2)^3), x, 3, -(1/(6*x^6)) + 3/(4*x^4) - 3/x^2 - 1/(4*(1 + x^2)^2) - 2/(1 + x^2) - 10*log(x) + 5*log(1 + x^2)]
    @test_int [((2 + x^2)/x^2)^(7/9)/(2 + x^2)^(3/2), x, 3, -((9*(1 + 2/x^2)^(7/9)*x)/(10*sqrt(2 + x^2)))]
    @test_int [x^4/(sqrt(10) - x^2)^(9/2), x, 2, x^5/(7*sqrt(10)*(sqrt(10) - x^2)^(7/2)) + x^5/(175*(sqrt(10) - x^2)^(5/2)), x^5/(5*sqrt(10)*(sqrt(10) - x^2)^(7/2)) - x^7/(175*(sqrt(10) - x^2)^(7/2))]
    @test_int [x^2/(3 - x^2)^(3/2), x, 2, x/sqrt(3 - x^2) - asin(x/sqrt(3))]
    @test_int [(25 - x^2)^(3/2)/x^4, x, 3, sqrt(25 - x^2)/x - (25 - x^2)^(3/2)/(3*x^3) + asin(x/5)]
    @test_int [1/(1 - 2*x^2)^(7/2), x, 3, x/(5*(1 - 2*x^2)^(5/2)) + (4*x)/(15*(1 - 2*x^2)^(3/2)) + (8*x)/(15*sqrt(1 - 2*x^2))]
    @test_int [1/(-x^2 + 6*x - 7)^(5/2), x, 2, -((3 - x)/(6*(-x^2 + 6*x - 7)^(3/2))) - (3 - x)/(6*sqrt(-x^2 + 6*x - 7))]


    #= ::Subsection::Closed:: =#
    #=Problems*22 - 25*(p. 329)=#


    @test_int [(-2*x^2 - 2*x + 1)^3, x, 2, x - 3*x^2 + 2*x^3 + 4*x^4 - (12*x^5)/5 - 4*x^6 - (8*x^7)/7]
    @test_int [(x^2 - x - 1)^2*(5*x - 1), x, 2, -x + (3*x^2)/2 + (11*x^3)/3 - (3*x^4)/4 - (11*x^5)/5 + (5*x^6)/6]
    @test_int [(3*x + 1)/(2*x^2 - 8*x + 1)^(5/2), x, 2, (1 - 2*x)/(6*(2*x^2 - 8*x + 1)^(3/2)) - (2*(2 - x))/(21*sqrt(2*x^2 - 8*x + 1))]
    @test_int [(8*x^3 - 8*x - 1)/(1 + 2*x - 4*x^2)^(5/2), x, 2, -((4*(1 + x))/(15*(1 + 2*x - 4*x^2)^(3/2))) - (7 + 122*x)/(75*sqrt(1 + 2*x - 4*x^2))]


    #= ::Section::Closed:: =#
    #=Chapter*7*Integration*Problems=#


    #= ::Subsection::Closed:: =#
    #=Problems*1 - 4*(p. 334)=#


    @test_int [x^2*cos(x)^5, x, 9, (16/15)*x*cos(x) + (8/45)*x*cos(x)^3 + (2/25)*x*cos(x)^5 - (298*sin(x))/225 + (8/15)*x^2*sin(x) + (4/15)*x^2*cos(x)^2*sin(x) + (1/5)*x^2*cos(x)^4*sin(x) + (76*sin(x)^3)/675 - (2*sin(x)^5)/125]
    @test_int [x^3*sin(x)^3, x, 8, (40/9)*x*cos(x) - (2/3)*x^3*cos(x) - (40*sin(x))/9 + 2*x^2*sin(x) + (2/9)*x*cos(x)*sin(x)^2 - (1/3)*x^3*cos(x)*sin(x)^2 - (2*sin(x)^3)/27 + (1/3)*x^2*sin(x)^3]
    @test_int [x^2*sin(x)^6, x, 13, -((245*x)/1152) + (5*x^3)/48 + (245*cos(x)*sin(x))/1152 - (5/16)*x^2*cos(x)*sin(x) + (5/16)*x*sin(x)^2 + (65*cos(x)*sin(x)^3)/1728 - (5/24)*x^2*cos(x)*sin(x)^3 + (5/48)*x*sin(x)^4 + (1/108)*cos(x)*sin(x)^5 - (1/6)*x^2*cos(x)*sin(x)^5 + (1/18)*x*sin(x)^6]
    @test_int [x^2*sin(x)^2*cos(x), x, 4, (4/9)*x*cos(x) - (4*sin(x))/9 + (2/9)*x*cos(x)*sin(x)^2 - (2*sin(x)^3)/27 + (1/3)*x^2*sin(x)^3]


    #= ::Subsection::Closed:: =#
    #=Problems*5 - 9*(p. 342-343) =#


    @test_int [x*cos(x)^4/sin(x)^2, x, 6, -((3*x^2)/4) - cos(x)^2/4 - x*cot(x) + log(sin(x)) - (1/2)*x*cos(x)*sin(x)]
    @test_int [x*sin(x)^3/cos(x)^4, x, 5, (5/6)*atanh(sin(x)) - x*sec(x) + (1/3)*x*sec(x)^3 - (1/6)*sec(x)*tan(x)]
    @test_int [x*sin(x)/cos(x)^3, x, 3, (1/2)*x*sec(x)^2 - tan(x)/2]
    @test_int [x*sin(x)^3/cos(x), x, 8, x/4 + (im*x^2)/2 - x*log(1 + ℯ^(2*im*x)) + (1/2)*im*PolyLog(2, -ℯ^(2*im*x)) - (1/4)*cos(x)*sin(x) - (1/2)*x*sin(x)^2]
    @test_int [x*sin(x)^3/cos(x)^3, x, 7, x/2 - (im*x^2)/2 + x*log(1 + ℯ^(2*im*x)) - (1/2)*im*PolyLog(2, -ℯ^(2*im*x)) - tan(x)/2 + (1/2)*x*tan(x)^2]


    #= ::Subsection::Closed:: =#
    #=Problems*10 - 11*(p. 344)=#


    @test_int [(2*x+sin(2*x))/(x*sin(x)+cos(x))^2, x, 2, 2/(1 + cot(x)/x)]
    @test_int [(x/(x*cos(x)-sin(x)))^2, x, 3, -cot(x) + (x*csc(x))/(x*cos(x) - sin(x))]


    #= ::Section::Closed:: =#
    #=Chapter*8*Integration*Problems=#


    #= ::Subsection::Closed:: =#
    #=Problems*1 - 5*(p. 346)=#


    @test_int [a^(m*x)*b^(n*x), x, 2, (a^(m*x)*b^(n*x))/(m*log(a) + n*log(b))]
    @test_int [(a^x - b^x)^2/(a^x*b^x), x, 9, -2*x + (a^x/b^x - b^x/a^x)/(log(a) - log(b)), -2*x + a^x/(b^x*(log(a) - log(b))) - b^x/(a^x*(log(a) - log(b)))]
    @test_int [(ℯ^x - ℯ^(-x))^1, x, 3, ℯ^x + ℯ^(-x)]
    @test_int [(ℯ^x - ℯ^(-x))^2, x, 4, -(1/2)/ℯ^(2*x) + ℯ^(2*x)/2 - 2*x]
    @test_int [(ℯ^x - ℯ^(-x))^3, x, 3, 1/(3*ℯ^(3*x)) - 3/ℯ^x - 3*ℯ^x + ℯ^(3*x)/3]
    @test_int [(ℯ^x - ℯ^(-x))^4, x, 4, -(1/4)/ℯ^(4*x) + 2/ℯ^(2*x) - 2*ℯ^(2*x) + ℯ^(4*x)/4 + 6*x]
    @test_int [(ℯ^x - ℯ^(-x))^n, x, 4, -(((-ℯ^(-x) + ℯ^x)^n*(1 - ℯ^(2*x))*Hypergeometric2F1(1, (2 + n)/2, 1 - n/2, ℯ^(2*x)))/n), -(((-ℯ^(-x) + ℯ^x)^n*Hypergeometric2F1(-n, -(n/2), 1 - n/2, ℯ^(2*x)))/((1 - ℯ^(2*x))^n*n))]
    @test_int [(a^(-4*x) - a^(2*x))^3, x, 4, 3*x - 1/(a^(12*x)*(12*log(a))) + 1/(a^(6*x)*(2*log(a))) - a^(6*x)/(6*log(a))]
    @test_int [(a^(k*x) + a^(l*x))^1, x, 3, a^(k*x)/(k*log(a)) + a^(l*x)/(l*log(a))]
    @test_int [(a^(k*x) + a^(l*x))^2, x, 6, a^(2*k*x)/(2*k*log(a)) + a^(2*l*x)/(2*l*log(a)) + (2*a^((k + l)*x))/((k + l)*log(a))]
    @test_int [(a^(k*x) + a^(l*x))^3, x, 7, a^(3*k*x)/(3*k*log(a)) + a^(3*l*x)/(3*l*log(a)) + (3*a^((2*k + l)*x))/((2*k + l)*log(a)) + (3*a^((k + 2*l)*x))/((k + 2*l)*log(a))]
    @test_int [(a^(k*x) + a^(l*x))^4, x, 8, a^(4*k*x)/(4*k*log(a)) + a^(4*l*x)/(4*l*log(a)) + (3*a^(2*(k + l)*x))/((k + l)*log(a)) + (4*a^((3*k + l)*x))/((3*k + l)*log(a)) + (4*a^((k + 3*l)*x))/((k + 3*l)*log(a))]
    @test_int [(a^(k*x) + a^(l*x))^n, x, 2, (((1 + a^((k - l)*x))*(a^(k*x) + a^(l*x))^n)/(l*n*log(a)))*Hypergeometric2F1(1, 1 + (k*n)/(k - l), 1 + (l*n)/(k - l), -a^((k - l)*x)), ((a^(k*x) + a^(l*x))^n*Hypergeometric2F1(-n, -((k*n)/(k - l)), 1 - (k*n)/(k - l), -a^(-((k - l)*x))))/((1 + a^(-((k - l)*x)))^n*(k*n*log(a)))]
    @test_int [(a^(k*x) - a^(l*x))^1, x, 3, a^(k*x)/(k*log(a)) - a^(l*x)/(l*log(a))]
    @test_int [(a^(k*x) - a^(l*x))^2, x, 6, a^(2*k*x)/(2*k*log(a)) + a^(2*l*x)/(2*l*log(a)) - (2*a^((k + l)*x))/((k + l)*log(a))]
    @test_int [(a^(k*x) - a^(l*x))^3, x, 7, a^(3*k*x)/(3*k*log(a)) - a^(3*l*x)/(3*l*log(a)) - (3*a^((2*k + l)*x))/((2*k + l)*log(a)) + (3*a^((k + 2*l)*x))/((k + 2*l)*log(a))]
    @test_int [(a^(k*x) - a^(l*x))^4, x, 8, a^(4*k*x)/(4*k*log(a)) + a^(4*l*x)/(4*l*log(a)) + (3*a^(2*(k + l)*x))/((k + l)*log(a)) - (4*a^((3*k + l)*x))/((3*k + l)*log(a)) - (4*a^((k + 3*l)*x))/((k + 3*l)*log(a))]
    @test_int [(a^(k*x) - a^(l*x))^n, x, 2, (((1 - a^((k - l)*x))*(a^(k*x) - a^(l*x))^n)/(l*n*log(a)))*Hypergeometric2F1(1, 1 + (k*n)/(k - l), 1 + (l*n)/(k - l), a^((k - l)*x)), ((a^(k*x) - a^(l*x))^n*Hypergeometric2F1(-n, -((k*n)/(k - l)), 1 - (k*n)/(k - l), a^(-((k - l)*x))))/((1 - a^(-((k - l)*x)))^n*(k*n*log(a)))]


    #= ::Subsection::Closed:: =#
    #=Problems*6 - 9*(p. 346)=#


    @test_int [(1 + a^(m*x))^1, x, 2, x + a^(m*x)/(m*log(a))]
    @test_int [(1 + a^(m*x))^2, x, 3, x + (2*a^(m*x))/(m*log(a)) + a^(2*m*x)/(2*m*log(a))]
    @test_int [(1 + a^(m*x))^3, x, 3, x + (3*a^(m*x))/(m*log(a)) + (3*a^(2*m*x))/(2*m*log(a)) + a^(3*m*x)/(3*m*log(a))]
    @test_int [(1 + a^(m*x))^4, x, 3, x + (4*a^(m*x))/(m*log(a)) + (3*a^(2*m*x))/(m*log(a)) + (4*a^(3*m*x))/(3*m*log(a)) + a^(4*m*x)/(4*m*log(a))]
    @test_int [(1 + a^(m*x))^n, x, 2, -(((1 + a^(m*x))^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, 1 + a^(m*x)))/(m*(1 + n)*log(a)))]
    @test_int [(1 - a^(m*x))^1, x, 2, x - a^(m*x)/(m*log(a))]
    @test_int [(1 - a^(m*x))^2, x, 3, x - (2*a^(m*x))/(m*log(a)) + a^(2*m*x)/(2*m*log(a))]
    @test_int [(1 - a^(m*x))^3, x, 3, x - (3*a^(m*x))/(m*log(a)) + (3*a^(2*m*x))/(2*m*log(a)) - a^(3*m*x)/(3*m*log(a))]
    @test_int [(1 - a^(m*x))^4, x, 3, x - (4*a^(m*x))/(m*log(a)) + (3*a^(2*m*x))/(m*log(a)) - (4*a^(3*m*x))/(3*m*log(a)) + a^(4*m*x)/(4*m*log(a))]
    @test_int [(1 - a^(m*x))^n, x, 2, -(((1 - a^(m*x))^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, 1 - a^(m*x)))/(m*(1 + n)*log(a)))]
    @test_int [1/(a*ℯ^(n*x) + b), x, 4, x/b - log(b + a*ℯ^(n*x))/(b*n)]
    @test_int [ℯ^x/(a*ℯ^(3*x) + b), x, 7, -(atan((b^(1/3) - 2*a^(1/3)*ℯ^x)/(sqrt(3)*b^(1/3)))/(sqrt(3)*a^(1/3)*b^(2/3))) + log(b^(1/3) + a^(1/3)*ℯ^x)/(2*a^(1/3)*b^(2/3)) - log(b + a*ℯ^(3*x))/(6*a^(1/3)*b^(2/3)), -(atan((b^(1/3) - 2*a^(1/3)*ℯ^x)/(sqrt(3)*b^(1/3)))/(sqrt(3)*a^(1/3)*b^(2/3))) + log(b^(1/3) + a^(1/3)*ℯ^x)/(3*a^(1/3)*b^(2/3)) - log(b^(2/3) - a^(1/3)*b^(1/3)*ℯ^x + a^(2/3)*ℯ^(2*x))/(6*a^(1/3)*b^(2/3))]
    @test_int [(ℯ^x - 1)/(ℯ^x + 1), x, 3, -x + 2*log(1 + ℯ^x)]


    #= ::Subsection::Closed:: =#
    #=Problems*10 - 16*(p. 347)=#


    @test_int [ℯ^(4*x)/(3*ℯ^(4*x) - 2*ℯ^(2*x) + 1), x, 5, -(atan((1 - 3*ℯ^(2*x))/sqrt(2))/(6*sqrt(2))) + (1/12)*log(1 - 2*ℯ^(2*x) + 3*ℯ^(4*x))]
    @test_int [(ℯ^(5*x) + ℯ^x)/(ℯ^(3*x) - ℯ^(2*x) + ℯ^x - 1), x, 6, ℯ^x + ℯ^(2*x)/2 - atan(ℯ^x) + log(1 - ℯ^x) - (1/2)*log(1 + ℯ^(2*x))]
    @test_int [(a + b*ℯ^(n*x))^(r/s)*ℯ^(n*x), x, 2, s*(a + b*ℯ^(n*x))^((s + r)/s)/(b*n*(s + r))]
    @test_int [(1 - 2*ℯ^(x/3))^(1/4), x, 6, 12*(1 - 2*ℯ^(x/3))^(1/4) - 6*atan((1 - 2*ℯ^(x/3))^(1/4)) - 6*atanh((1 - 2*ℯ^(x/3))^(1/4))]
    @test_int [(a + b*ℯ^(n*x))^(r/s), x, 2, -(((a + b*ℯ^(n*x))^((r + s)/s)*s*Hypergeometric2F1(1, (r + s)/s, 2 + r/s, 1 + (b*ℯ^(n*x))/a))/(a*n*(r + s)))]
    @test_int [ℯ^x/sqrt(ℯ^(2*x) + a^2), x, 3, atanh(ℯ^x/sqrt(a^2 + ℯ^(2*x)))]
    @test_int [ℯ^x/sqrt(ℯ^(2*x) - a^2), x, 3, atanh(ℯ^x/sqrt(-a^2 + ℯ^(2*x)))]
    @test_int [ℯ^((3/4)*x)/((ℯ^((3/4)*x) - 2)*sqrt(ℯ^((3/2)*x) + ℯ^((3/4)*x) - 2)), x, 3, (2/3)*atanh((2 - 5*ℯ^((3*x)/4))/(4*sqrt(-2 + ℯ^((3*x)/4) + ℯ^((3*x)/2))))]


    #= ::Subsection::Closed:: =#
    #=Problems*17 - 18*(p. 348)=#


    @test_int [(ℯ^(7*x) - 3)^(2/3)/ℯ^(2*x), x, 4, ((1/6)*(-3 + ℯ^(7*x))^(5/3)*Hypergeometric2F1(1, 29/21, 5/7, ℯ^(7*x)/3))/ℯ^(2*x), -((3^(2/3)*(-3 + ℯ^(7*x))^(2/3)*Hypergeometric2F1(-(2/3), -(2/7), 5/7, ℯ^(7*x)/3))/(ℯ^(2*x)*(2*(3 - ℯ^(7*x))^(2/3))))]
    @test_int [ℯ^(2*x)/(3 - ℯ^(x/2))^(3/4), x, 3, -216*(3 - ℯ^(x/2))^(1/4) + (216/5)*(3 - ℯ^(x/2))^(5/4) - 8*(3 - ℯ^(x/2))^(9/4) + (8/13)*(3 - ℯ^(x/2))^(13/4)]


    #= ::Subsection::Closed:: =#
    #=Problems*19 - 24*(p. 351)=#


    @test_int [x^3/ℯ^(x/2), x, 4, -96/ℯ^(x/2) - (48*x)/ℯ^(x/2) - (12*x^2)/ℯ^(x/2) - (2*x^3)/ℯ^(x/2)]
    @test_int [1/(x^3*ℯ^(x/2)), x, 3, -(1/(ℯ^(x/2)*(2*x^2))) + 1/(ℯ^(x/2)*(4*x)) + (1/8)*ExpIntegralEi(-(x/2))]
    @test_int [x^2*a^(3*x), x, 3, (2*a^(3*x))/(27*log(a)^3) - (2*a^(3*x)*x)/(9*log(a)^2) + (a^(3*x)*x^2)/(3*log(a))]
    @test_int [x*(x^2 + 1)*ℯ^x^2, x, 5, (1/2)*ℯ^x^2*x^2]
    @test_int [x/(ℯ^x + ℯ^(-x))^2, x, 6, x/2 - x/(2*(1 + ℯ^(2*x))) - (1/4)*log(1 + ℯ^(2*x))]
    @test_int [(1 - x - x^2)/sqrt(1 - x^2)*ℯ^x, x, 1, ℯ^x*sqrt(1 - x^2)]


    #= ::Subsection::Closed:: =#
    #=Problems*25 - 32*(p. 353)=#


    @test_int [cos(2*x)/ℯ^(3*x), x, 1, ((-(3/13))*cos(2*x))/ℯ^(3*x) + ((2/13)*sin(2*x))/ℯ^(3*x)]
    @test_int [(sin(x/2) + cos(x/2))/(ℯ^x)^(1/3), x, 6, -((30*cos(x/2))/(13*(ℯ^x)^(1/3))) + (6*sin(x/2))/(13*(ℯ^x)^(1/3))]
    @test_int [cos(3*x/2)/(3^(3*x))^(1/4), x, 2, -((4*cos((3*x)/2)*log(3))/(3*(3^(3*x))^(1/4)*(4 + log(3)^2))) + (8*sin((3*x)/2))/(3*(3^(3*x))^(1/4)*(4 + log(3)^2))]
    @test_int [ℯ^(m*x)*cos(x)^2, x, 2, (2*ℯ^(m*x))/(m*(4 + m^2)) + (ℯ^(m*x)*m*cos(x)^2)/(4 + m^2) + (2*ℯ^(m*x)*cos(x)*sin(x))/(4 + m^2)]
    @test_int [ℯ^(m*x)*sin(x)^3, x, 2, -((6*ℯ^(m*x)*cos(x))/(9 + 10*m^2 + m^4)) + (6*ℯ^(m*x)*m*sin(x))/(9 + 10*m^2 + m^4) - (3*ℯ^(m*x)*cos(x)*sin(x)^2)/(9 + m^2) + (ℯ^(m*x)*m*sin(x)^3)/(9 + m^2)]
    @test_int [cos(x/3)^3/sqrt(ℯ^x), x, 3, -((48*cos(x/3))/(65*sqrt(ℯ^x))) - (2*cos(x/3)^3)/(5*sqrt(ℯ^x)) + (32*sin(x/3))/(65*sqrt(ℯ^x)) + (4*cos(x/3)^2*sin(x/3))/(5*sqrt(ℯ^x))]
    @test_int [ℯ^(2*x)*sin(x)^2*cos(x)^2, x, 4, ℯ^(2*x)/16 - (1/80)*ℯ^(2*x)*cos(4*x) - (1/40)*ℯ^(2*x)*sin(4*x)]
    @test_int [ℯ^(3*x)*sin(3*(x/2))^2*cos(3*(x/2))^2, x, 4, ℯ^(3*x)/24 - (1/120)*ℯ^(3*x)*cos(6*x) - (1/60)*ℯ^(3*x)*sin(6*x)]


    #= ::Subsection::Closed:: =#
    #=Problems*33 - 36*(p. 355)=#


    @test_int [ℯ^(m*x)*tan(x)^2, x, 5, -(ℯ^(m*x)/m) + 4*ℯ^((2*im + m)*x)*Hypergeometric2F1(2, 1 - (im*m)/2, 2 - (im*m)/2, -ℯ^(2*im*x))/(2*im + m), -(ℯ^(m*x)/m) + (4*ℯ^(m*x)*Hypergeometric2F1(1, -((im*m)/2), 1 - (im*m)/2, -ℯ^(2*im*x)))/m - (4*ℯ^(m*x)*Hypergeometric2F1(2, -((im*m)/2), 1 - (im*m)/2, -ℯ^(2*im*x)))/m]
    @test_int [ℯ^(m*x)/sin(x)^2, x, 1, -((4*ℯ^((2*im + m)*x)*Hypergeometric2F1(2, 1 - (im*m)/2, 2 - (im*m)/2, ℯ^(2*im*x)))/(2*im + m))]
    @test_int [ℯ^(m*x)/cos(x)^3, x, 2, ((8*ℯ^((3*im + m)*x))/(3*im + m))*Hypergeometric2F1(3, (3 - im*m)/2, (5 - im*m)/2, -ℯ^(2*im*x)), (-ℯ^((im + m)*x))*(im - m)*Hypergeometric2F1(1, (1/2)*(1 - im*m), (1/2)*(3 - im*m), -ℯ^(2*im*x)) - (1/2)*ℯ^(m*x)*m*sec(x) + (1/2)*ℯ^(m*x)*sec(x)*tan(x)]
    @test_int [ℯ^x/(1 + cos(x)), x, 2, (1 - im)*ℯ^((1 + im)*x)*Hypergeometric2F1(2, 1 - im, 2 - im, -ℯ^(im*x))]
    @test_int [ℯ^x/(1 - cos(x)), x, 2, -(1 - im)*ℯ^((1 + im)*x)*Hypergeometric2F1(2, 1 - im, 2 - im, ℯ^(im*x))]
    @test_int [ℯ^x/(1 + sin(x)), x, 2, (-1 + im)*ℯ^((1 - im)*x)*Hypergeometric2F1(1 + im, 2, 2 + im, -im/ℯ^(im*x))]
    @test_int [ℯ^x/(1 - sin(x)), x, 2, (1 + im)*ℯ^((1 + im)*x)*Hypergeometric2F1(1 - im, 2, 2 - im, (-im)*ℯ^(im*x))]


    #= ::Subsection::Closed:: =#
    #=Problems*37 - 44*(p. 356)=#


    @test_int [ℯ^x*((1 - sin(x))/(1 - cos(x))), x, 1, -ℯ^x*sin(x)/(1 - cos(x))]
    @test_int [ℯ^x*((1 + sin(x))/(1 - cos(x))), x, 7, (ℯ^x*sin(x))/(1 - cos(x)) - 2*(1 - im)*ℯ^((1 + im)*x)*Hypergeometric2F1(2, 1 - im, 2 - im, ℯ^(im*x)), 2*im*ℯ^x - 4*im*ℯ^x*Hypergeometric2F1(-im, 1, 1 - im, ℯ^(im*x)) - (ℯ^x*sin(x))/(1 - cos(x))]
    @test_int [ℯ^x*((1 + sin(x))/(1 + cos(x))), x, 1, ℯ^x*sin(x)/(1 + cos(x))]
    @test_int [ℯ^x*((1 - sin(x))/(1 + cos(x))), x, 7, -((ℯ^x*sin(x))/(1 + cos(x))) + 2*(1 - im)*ℯ^((1 + im)*x)*Hypergeometric2F1(2, 1 - im, 2 - im, -ℯ^(im*x)), 2*im*ℯ^x - 4*im*ℯ^x*Hypergeometric2F1(-im, 1, 1 - im, -ℯ^(im*x)) + (ℯ^x*sin(x))/(1 + cos(x))]

    @test_int [ℯ^x*((1 - cos(x))/(1 - sin(x))), x, 7, -((ℯ^x*cos(x))/(1 - sin(x))) + 2*(1 + im)*ℯ^((1 + im)*x)*Hypergeometric2F1(2, 1 - im, 2 - im, (-im)*ℯ^(im*x)), 2*im*ℯ^x - 4*im*ℯ^x*Hypergeometric2F1(-im, 1, 1 - im, (-im)*ℯ^(im*x)) + (ℯ^x*cos(x))/(1 - sin(x))]
    @test_int [ℯ^x*((1 + cos(x))/(1 - sin(x))), x, 1, ℯ^x*cos(x)/(1 - sin(x))]
    @test_int [ℯ^x*((1 + cos(x))/(1 + sin(x))), x, 7, (ℯ^x*cos(x))/(1 + sin(x)) - 2*(1 + im)*ℯ^((1 + im)*x)*Hypergeometric2F1(2, 1 - im, 2 - im, im*ℯ^(im*x)), -2*im*ℯ^x + 4*im*ℯ^x*Hypergeometric2F1(im, 1, 1 + im, -im/ℯ^(im*x)) - (ℯ^x*cos(x))/(1 + sin(x))]
    @test_int [ℯ^x*((1 - cos(x))/(1 + sin(x))), x, 1, -ℯ^x*cos(x)/(1 + sin(x))]


    #= ::Subsection::Closed:: =#
    #=Problems*45 - 49*(p. 357-358)=#


    @test_int [x*ℯ^x*cos(x), x, 4, (1/2)*ℯ^x*x*cos(x) - (1/2)*ℯ^x*sin(x) + (1/2)*ℯ^x*x*sin(x)]
    @test_int [x^2*ℯ^x*sin(x), x, 11, (-(1/2))*ℯ^x*cos(x) + ℯ^x*x*cos(x) - (1/2)*ℯ^x*x^2*cos(x) - (1/2)*ℯ^x*sin(x) + (1/2)*ℯ^x*x^2*sin(x)]
    @test_int [x^2*(sin(x)/ℯ^(3*x)), x, 11, ((-(13/250))*cos(x))/ℯ^(3*x) - ((3/25)*x*cos(x))/ℯ^(3*x) - ((1/10)*x^2*cos(x))/ℯ^(3*x) - ((9/250)*sin(x))/ℯ^(3*x) - ((4/25)*x*sin(x))/ℯ^(3*x) - ((3/10)*x^2*sin(x))/ℯ^(3*x)]
    @test_int [ℯ^(x/2)*x^2*cos(x)^3, x, -31, (-(132/125))*ℯ^(x/2)*cos(x) + (18/25)*ℯ^(x/2)*x*cos(x) + (48/185)*ℯ^(x/2)*x^2*cos(x) + (2/37)*ℯ^(x/2)*x^2*cos(x)^3 - (428*ℯ^(x/2)*cos(3*x))/50653 + (70*ℯ^(x/2)*x*cos(3*x))/1369 - (24/125)*ℯ^(x/2)*sin(x) - (24/25)*ℯ^(x/2)*x*sin(x) + (96/185)*ℯ^(x/2)*x^2*sin(x) + (12/37)*ℯ^(x/2)*x^2*cos(x)^2*sin(x) - (792*ℯ^(x/2)*sin(3*x))/50653 - (24*ℯ^(x/2)*x*sin(3*x))/1369]
    @test_int [ℯ^(2*x)*x^2*sin(4*x), x, 11, (1/250)*ℯ^(2*x)*cos(4*x) + (2/25)*ℯ^(2*x)*x*cos(4*x) - (1/5)*ℯ^(2*x)*x^2*cos(4*x) - (11/500)*ℯ^(2*x)*sin(4*x) + (3/50)*ℯ^(2*x)*x*sin(4*x) + (1/10)*ℯ^(2*x)*x^2*sin(4*x)]


    #= ::Subsection::Closed:: =#
    #=Problems*50*(p. 359)=#


    @test_int [ℯ^(x/2)*x^2*sin(x)^2*cos(x), x, 24, (-(44/125))*ℯ^(x/2)*cos(x) + (6/25)*ℯ^(x/2)*x*cos(x) + (1/10)*ℯ^(x/2)*x^2*cos(x) + (428*ℯ^(x/2)*cos(3*x))/50653 - (70*ℯ^(x/2)*x*cos(3*x))/1369 - (1/74)*ℯ^(x/2)*x^2*cos(3*x) - (8/125)*ℯ^(x/2)*sin(x) - (8/25)*ℯ^(x/2)*x*sin(x) + (1/5)*ℯ^(x/2)*x^2*sin(x) + (792*ℯ^(x/2)*sin(3*x))/50653 + (24*ℯ^(x/2)*x*sin(3*x))/1369 - (3/37)*ℯ^(x/2)*x^2*sin(3*x)]


    #= ::Subsection::Closed:: =#
    #=Problems*51 - 55*(p. 361)=#


    @test_int [cosh(x), x, 1, sinh(x)]
    @test_int [sinh(x), x, 1, cosh(x)]
    @test_int [tanh(x), x, 1, log(cosh(x))]
    @test_int [coth(x), x, 1, log(sinh(x))]
    @test_int [sech(x), x, 1, atan(sinh(x))]
    @test_int [csch(x), x, 1, -atanh(cosh(x))]
    @test_int [cosh(x)^2, x, 2, x/2 + (1/2)*cosh(x)*sinh(x)]
    @test_int [sinh(x)^5, x, 2, cosh(x) - (2*cosh(x)^3)/3 + cosh(x)^5/5]


    #= ::Subsection::Closed:: =#
    #=Problems*56 - 60*(p. 365)=#


    @test_int [tanh(x)^4, x, 3, x - tanh(x) - tanh(x)^3/3]
    @test_int [csch(x)^3, x, 2, (1/2)*atanh(cosh(x)) - (1/2)*coth(x)*csch(x)]
    @test_int [1/cosh(x)^5, x, 3, (3/8)*atan(sinh(x)) + (3/8)*sech(x)*tanh(x) + (1/4)*sech(x)^3*tanh(x)]
    @test_int [tanh(x)^5/sech(x)^4, x, 4, -cosh(x)^2 + cosh(x)^4/4 + log(cosh(x))]
    @test_int [tanh(x)^5*sech(x)^(3/4), x, 3, (-(4/3))*sech(x)^(3/4) + (8/11)*sech(x)^(11/4) - (4/19)*sech(x)^(19/4)]


    #= ::Subsection::Closed:: =#
    #=Problems*61 - 65*(p. 365-366)=#


    @test_int [1/(a + b*cosh(x)), x, 2, (2*atanh(((a - b)*tanh(x/2))/sqrt(a^2 - b^2)))/sqrt(a^2 - b^2), (2*atanh((sqrt(a - b)*tanh(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b))]
    @test_int [1/(1 + cosh(x))^2, x, 2, sinh(x)/(3*(1 + cosh(x))^2) + sinh(x)/(3*(1 + cosh(x)))]
    @test_int [1/(a + b*tanh(x)), x, 2, (a*x)/(a^2 - b^2) - (b*log(a*cosh(x) + b*sinh(x)))/(a^2 - b^2)]
    @test_int [1/(a^2 + b^2*cosh(x)^2), x, 2, atanh((a*tanh(x))/sqrt(a^2 + b^2))/(a*sqrt(a^2 + b^2))]
    @test_int [1/(a^2 - b^2*cosh(x)^2), x, 2, atanh((a*tanh(x))/sqrt(a^2 - b^2))/(a*sqrt(a^2 - b^2))]
    @test_int [1/(1 - sinh(x)^4), x, 3, atanh(sqrt(2)*tanh(x))/(2*sqrt(2)) + tanh(x)/2]


    #= ::Subsection::Closed:: =#
    #=Problems*66 - 72*(p. 366-367)=#


    @test_int [(cosh(x)^3 - sinh(x)^3)/(cosh(x)^3 + sinh(x)^3), x, 5, -((4*atan((1 - 2*tanh(x))/sqrt(3)))/(3*sqrt(3))) - 1/(3*(1 + tanh(x)))]
    @test_int [cosh(x)*cosh(2*x)*cosh(3*x), x, 5, x/4 + 1/8*sinh(2*x) + 1/16*sinh(4*x) + 1/24*sinh(6*x)]
    @test_int [sinh(x)*cosh(3*x/2)*sinh(5*x/2), x, 5, -x/4 + 1/8*sinh(2*x) - 1/12*sinh(3*x) + 1/20*sinh(5*x)]
    @test_int [(tanh(x) - cosh(2*x))*(cosh(x)/((sinh(2*x) + sinh(x)^2)*sqrt(sinh(2*x)))), x, 8, sqrt(2)*atan(sech(x)*sqrt(cosh(x)*sinh(x))) + (1/6)*atan(sinh(x)/sqrt(sinh(2*x))) - (1/3)*sqrt(2)*atanh(sech(x)*sqrt(cosh(x)*sinh(x))) + cosh(x)/sqrt(sinh(2*x)), cosh(x)/sqrt(sinh(2*x)) + (2*atan(sqrt(tanh(x)))*sinh(x))/(sqrt(sinh(2*x))*sqrt(tanh(x))) + (atan(sqrt(tanh(x))/sqrt(2))*sinh(x))/(3*sqrt(2)*sqrt(sinh(2*x))*sqrt(tanh(x))) - (2*atanh(sqrt(tanh(x)))*sinh(x))/(3*sqrt(sinh(2*x))*sqrt(tanh(x)))]
    @test_int [sinh(x)/(4*cosh(x)^2 - 9)^(5/2), x, 3, -(cosh(x)/(27*(-9 + 4*cosh(x)^2)^(3/2))) + (2*cosh(x))/(243*sqrt(-9 + 4*cosh(x)^2))]
    @test_int [sinh(x)^2*(sinh(2*x)/(1 - sinh(x)^2)^(3/2)), x, 5, 2/sqrt(1 - sinh(x)^2) + 2*sqrt(1 - sinh(x)^2)]
    @test_int [cosh(x)/sqrt(cosh(2*x)), x, 2, asinh(sqrt(2)*sinh(x))/sqrt(2)]


    #= ::Subsection::Closed:: =#
    #=Problems*73 - 75*(p. 368)=#


    @test_int [x*tanh(x)^2, x, 3, x^2/2 + log(cosh(x)) - x*tanh(x)]
    @test_int [x*coth(x)^2, x, 3, x^2/2 - x*coth(x) + log(sinh(x))]
    @test_int [(x + sinh(x) + cosh(x))/(cosh(x) - sinh(x)), x, 13, -ℯ^x + ℯ^(2*x)/2 + ℯ^x*x]
    @test_int [(x + sinh(x) + cosh(x))/(1 + cosh(x)), x, 8, x - (1 - x)*tanh(x/2)]


    #= ::Subsection::Closed:: =#
    #=Problems*76 - 82*(p. 373)=#


    @test_int [ℯ^(2*x)/sinh(x)^4, x, 3, (8*ℯ^(6*x))/(3*(1 - ℯ^(2*x))^3)]
    @test_int [1/(ℯ^(2*x)*cosh(x)^4), x, 3, -(8/(3*(1 + ℯ^(2*x))^3))]
    @test_int [ℯ^x/(cosh(x) - sinh(x)), x, 2, ℯ^(2*x)/2]
    @test_int [ℯ^(m*x)/(cosh(x) + sinh(x)), x, 3, ℯ^((m - 1)*x)/(m - 1), -(1/(ℯ^((1 - m)*x)*(1 - m)))]
    @test_int [ℯ^x/(cosh(x) + sinh(x)), x, 2, x]
    @test_int [ℯ^x/(1 - cosh(x)), x, 4, -(2/(1 - ℯ^x)) - 2*log(1 - ℯ^x)]
    @test_int [ℯ^x*((1 + sinh(x))/(1 + cosh(x))), x, 3, ℯ^x + 2/(1 + ℯ^x)]
    @test_int [ℯ^x*((1 - sinh(x))/(1 - cosh(x))), x, 3, ℯ^x - 2/(1 - ℯ^x)]


    #= ::Subsection::Closed:: =#
    #=Problems*83 - 87*(p. 375)=#


    @test_int [x^m*log(x), x, 1, -(x^(1 + m)/(1 + m)^2) + (x^(1 + m)*log(x))/(1 + m)]
    @test_int [x^m*log(x)^2, x, 2, (2*x^(1 + m))/(1 + m)^3 - (2*x^(1 + m)*log(x))/(1 + m)^2 + (x^(1 + m)*log(x)^2)/(1 + m)]
    @test_int [log(x)^2/x^(5/2), x, 2, -(16/(27*x^(3/2))) - (8*log(x))/(9*x^(3/2)) - (2*log(x)^2)/(3*x^(3/2))]
    @test_int [(a + b*x)*log(x), x, 2, (-a)*x - (b*x^2)/4 + a*x*log(x) + (1/2)*b*x^2*log(x)]
    @test_int [(a + b*x)^3*log(x), x, 4, (-a^3)*x - (3/4)*a^2*b*x^2 - (1/3)*a*b^2*x^3 - (b^3*x^4)/16 - (a^4*log(x))/(4*b) + ((a + b*x)^4*log(x))/(4*b)]


    #= ::Subsection::Closed:: =#
    #=Problems*88 - 89*(p. 375)=#


    @test_int [3*log(x)^3 - 8*log(x)^2 - 1, x, 6, -35*x + 34*x*log(x) - 17*x*log(x)^2 + 3*x*log(x)^3]
    @test_int [(x^4 + 1)*(log(x)^3 - 2*log(x) + 1), x, 13, -3*x + (169*x^5)/625 + 4*x*log(x) - (44/125)*x^5*log(x) - 3*x*log(x)^2 - (3/25)*x^5*log(x)^2 + x*log(x)^3 + (1/5)*x^5*log(x)^3]


    #= ::Subsection::Closed:: =#
    #=Problems*90 - 92*(p. 376)=#


    @test_int [1/(x^3*log(x)^4), x, 5, (-(4/3))*ExpIntegralEi(-2*log(x)) - 1/(3*x^2*log(x)^3) + 1/(3*x^2*log(x)^2) - 2/(3*x^2*log(x))]
    @test_int [log(x)/(a + b*x), x, 2, (log(x)*log(1 + (b*x)/a))/b + PolyLog(2, -((b*x)/a))/b]
    @test_int [log(x)/(a + b*x)^2, x, 2, (x*log(x))/(a*(a + b*x)) - log(a + b*x)/(a*b)]


    #= ::Subsection::Closed:: =#
    #=Problems*93 - 97*(p. 377)=#


    @test_int [log(x)^n/x, x, 2, log(x)^(1 + n)/(1 + n)]
    @test_int [(a + b*log(x))^n/x, x, 2, (a + b*log(x))^(1 + n)/(b*(1 + n))]
    @test_int [1/(x*(a + b*log(x))), x, 2, log(a + b*log(x))/b]
    @test_int [1/(x*(a + b*log(x))^n), x, 2, (a + b*log(x))^(1 - n)/(b*(1 - n))]
    @test_int [1/(x*sqrt(log(x)^2 + a^2)), x, 3, atanh(log(x)/sqrt(log(x)^2 + a^2))]
    @test_int [1/(x*sqrt(log(x)^2 - a^2)), x, 3, atanh(log(x)/sqrt(log(x)^2 - a^2))]
    @test_int [1/(x*sqrt(a^2 - log(x)^2)), x, 3, atan(log(x)/sqrt(a^2 - log(x)^2))]
    @test_int [1/(x*log(x)*sqrt(a^2 + log(x)^2)), x, 4, -(atanh(sqrt(a^2 + log(x)^2)/a)/a)]
    @test_int [1/(x*log(x)*sqrt(a^2 - log(x)^2)), x, 4, -(atanh(sqrt(a^2 - log(x)^2)/a)/a)]
    @test_int [1/(x*log(x)*sqrt(log(x)^2 - a^2)), x, 4, atan(sqrt(-a^2 + log(x)^2)/a)/a]
    @test_int [log(log(x))^1/x, x, 1, -log(x) + log(x)*log(log(x))]
    @test_int [log(log(x))^2/x, x, 3, 2*log(x) - 2*log(x)*log(log(x)) + log(x)*log(log(x))^2]
    @test_int [log(log(x))^3/x, x, 4, -6*log(x) + 6*log(x)*log(log(x)) - 3*log(x)*log(log(x))^2 + log(x)*log(log(x))^3]
    @test_int [log(log(x))^4/x, x, 5, 24*log(x) - 24*log(x)*log(log(x)) + 12*log(x)*log(log(x))^2 - 4*log(x)*log(log(x))^3 + log(x)*log(log(x))^4]
    @test_int [log(log(x))^n/x, x, 3, (Gamma(1 + n, -log(log(x)))*log(log(x))^n)/(-log(log(x)))^n]


    #= ::Subsection::Closed:: =#
    #=Problems*98 - 103*(p. 377-378)=#


    @test_int [cot(x)/log(sin(x)), x, 3, log(log(sin(x)))]
    @test_int [(ℯ^log(cos(x)) + ℯ^(-log(cos(x))))*tan(x), x, 3, -cos(x) + sec(x)]
    @test_int [sinh(x)*log(cosh(x)), x, 2, -cosh(x) + cosh(x)*log(cosh(x))]
    @test_int [tanh(x)*log(cosh(x)), x, 2, (1/2)*log(cosh(x))^2]
    @test_int [log(x - sqrt(1 + x^2)), x, 2, sqrt(1 + x^2) + x*log(x - sqrt(1 + x^2))]
    @test_int [log(x - 1)/x^3, x, 3, 1/(2*x) + (1/2)*log(1 - x) - log(-1 + x)/(2*x^2) - log(x)/2]


    #= ::Subsection::Closed:: =#
    #=Problems*104 - 109*(p. 378)=#


    @test_int [(ℯ^x - ℯ^(-x))*log(ℯ^(2*x) + 1), x, 8, -2*ℯ^x + log(1 + ℯ^(2*x))/ℯ^x + ℯ^x*log(1 + ℯ^(2*x))]
    @test_int [ℯ^(3*x/2)*log(ℯ^x - 1), x, 6, -((4*ℯ^(x/2))/3) - (4/9)*ℯ^((3*x)/2) + (4/3)*atanh(ℯ^(x/2)) + (2/3)*ℯ^((3*x)/2)*log(-1 + ℯ^x)]
    @test_int [cos(x)^3*log(sin(x)), x, 4, -sin(x) + log(sin(x))*sin(x) + sin(x)^3/9 - (1/3)*log(sin(x))*sin(x)^3]
    @test_int [log(tan(x))/cos(x)^4, x, 4, -tan(x) + log(tan(x))*tan(x) - tan(x)^3/9 + (1/3)*log(tan(x))*tan(x)^3]
    @test_int [log(cos(x/2))/(1 + cos(x)), x, 4, -(x/2) + (log(cos(x/2))*sin(x))/(1 + cos(x)) + tan(x/2)]
    @test_int [cos(x)*log(sin(x))/(1 + cos(x))^2, x, 6, -((2*x)/3) - sin(x)/(9*(1 + cos(x))^2) + (8*sin(x))/(9*(1 + cos(x))) - (log(sin(x))*sin(x))/(3*(1 + cos(x))^2) + (2*log(sin(x))*sin(x))/(3*(1 + cos(x)))]


    #= ::Section::Closed:: =#
    #=Chapter*9*Integration*Problems=#


    #= ::Subsection::Closed:: =#
    #=Problems*1 - 6*(p. 391-392) =#


    @test_int [acos(x)^2/x^5, x, 5, -(1/(12*x^2)) + (sqrt(1 - x^2)*acos(x))/(6*x^3) + (sqrt(1 - x^2)*acos(x))/(3*x) - acos(x)^2/(4*x^4) + log(x)/3]
    @test_int [x^2*asin(x)^2, x, 5, -((4*x)/9) - (2*x^3)/27 + (4/9)*sqrt(1 - x^2)*asin(x) + (2/9)*x^2*sqrt(1 - x^2)*asin(x) + (1/3)*x^3*asin(x)^2]
    @test_int [atan(x)^2*x^3, x, 10, x^2/12 + (1/2)*x*atan(x) - (1/6)*x^3*atan(x) - atan(x)^2/4 + (1/4)*x^4*atan(x)^2 - (1/3)*log(1 + x^2)]
    @test_int [atan(x)^2/x^5, x, 13, -(1/(12*x^2)) - atan(x)/(6*x^3) + atan(x)/(2*x) + atan(x)^2/4 - atan(x)^2/(4*x^4) - (2*log(x))/3 + (1/3)*log(1 + x^2)]
    @test_int [acsc(x)^2*x^3, x, 5, x^2/12 + (1/3)*sqrt(1 - 1/x^2)*x*acsc(x) + (1/6)*sqrt(1 - 1/x^2)*x^3*acsc(x) + (1/4)*x^4*acsc(x)^2 + log(x)/3]
    @test_int [asec(x)^4/x^5, x, 10, -(3/(128*x^4)) - 45/(128*x^2) - (3*sqrt(1 - 1/x^2)*asec(x))/(32*x^3) - (45*sqrt(1 - 1/x^2)*asec(x))/(64*x) - (45*asec(x)^2)/128 + (3*asec(x)^2)/(16*x^4) + (9*asec(x)^2)/(16*x^2) + (sqrt(1 - 1/x^2)*asec(x)^3)/(4*x^3) + (3*sqrt(1 - 1/x^2)*asec(x)^3)/(8*x) + (3*asec(x)^4)/32 - asec(x)^4/(4*x^4)]


    #= ::Subsection::Closed:: =#
    #=Problems*7 - 18*(p. 397-398) =#


    @test_int [asin(x)*sqrt(1 - x^2), x, 3, -(x^2/4) + (1/2)*x*sqrt(1 - x^2)*asin(x) + asin(x)^2/4]
    @test_int [acos(x)*sqrt(1 - x^2), x, 3, x^2/4 + (1/2)*x*sqrt(1 - x^2)*acos(x) - acos(x)^2/4]
    @test_int [acos(x)*x*sqrt(1 - x^2), x, 2, -(x/3) + x^3/9 - (1/3)*(1 - x^2)^(3/2)*acos(x)]
    @test_int [asin(x)*(1 - x^2)^(3/2), x, 6, -((5*x^2)/16) + x^4/16 + (3/8)*x*sqrt(1 - x^2)*asin(x) + (1/4)*x*(1 - x^2)^(3/2)*asin(x) + (3*asin(x)^2)/16]
    @test_int [asin(x)*x*(1 - x^2)^(3/2), x, 3, x/5 - (2*x^3)/15 + x^5/25 - (1/5)*(1 - x^2)^(5/2)*asin(x)]
    @test_int [acos(x)*x^3*(1 - x^2)^(3/2), x, 4, (-(1/35))*(2*x) - x^3/105 + (8*x^5)/175 - x^7/49 - (1/5)*(1 - x^2)^(5/2)*acos(x) + (1/7)*(1 - x^2)^(7/2)*acos(x)]
    @test_int [(acos(x)*(1 - x^2)^(3/2))/x, x, 10, (4*x)/3 - x^3/9 + sqrt(1 - x^2)*acos(x) + (1/3)*(1 - x^2)^(3/2)*acos(x) + 2*im*acos(x)*atan(ℯ^(im*acos(x))) - im*PolyLog(2, (-im)*ℯ^(im*acos(x))) + im*PolyLog(2, im*ℯ^(im*acos(x)))]
    @test_int [(asin(x)*(1 - x^2)^(3/2))/x^6, x, 4, -(1/(20*x^4)) + 1/(5*x^2) - ((1 - x^2)^(5/2)*asin(x))/(5*x^5) + log(x)/5]
    @test_int [(asin(x)*x^2)/sqrt(1 - x^2), x, 3, x^2/4 - (1/2)*x*sqrt(1 - x^2)*asin(x) + asin(x)^2/4]
    @test_int [(asin(x)*x^4)/sqrt(1 - x^2), x, 5, (3*x^2)/16 + x^4/16 - (3/8)*x*sqrt(1 - x^2)*asin(x) - (1/4)*x^3*sqrt(1 - x^2)*asin(x) + (3*asin(x)^2)/16]
    @test_int [(asin(x)*x)/(1 - x^2)^(3/2), x, 2, asin(x)/sqrt(1 - x^2) - atanh(x)]
    @test_int [(acos(x)*x)/(1 - x^2)^(3/2), x, 2, acos(x)/sqrt(1 - x^2) + atanh(x)]
    @test_int [asin(x)/(1 - x^2)^(5/2), x, 4, -(1/(6*(1 - x^2))) + (x*asin(x))/(3*(1 - x^2)^(3/2)) + (2*x*asin(x))/(3*sqrt(1 - x^2)) + (1/3)*log(1 - x^2)]
    @test_int [(asin(x)*x^3)/(1 - x^2)^(3/2), x, 3, -x + asin(x)/sqrt(1 - x^2) + sqrt(1 - x^2)*asin(x) - atanh(x)]


    #= ::Subsection::Closed:: =#
    #=Problems*19 - 22*(p. 401)=#


    @test_int [asin(x)/(x*(1 - x^2)^(3/2)), x, 8, asin(x)/sqrt(1 - x^2) - 2*asin(x)*atanh(ℯ^(im*asin(x))) - atanh(x) + im*PolyLog(2, -ℯ^(im*asin(x))) - im*PolyLog(2, ℯ^(im*asin(x)))]
    @test_int [acos(x)/(x^4*sqrt(1 - x^2)), x, 4, 1/(6*x^2) - (sqrt(1 - x^2)*acos(x))/(3*x^3) - (2*sqrt(1 - x^2)*acos(x))/(3*x) - (2*log(x))/3]
    @test_int [acos(x)^2*x*sqrt(1 - x^2), x, 5, (4*sqrt(1 - x^2))/9 + (2/27)*(1 - x^2)^(3/2) - (2/3)*x*acos(x) + (2/9)*x^3*acos(x) - (1/3)*(1 - x^2)^(3/2)*acos(x)^2]
    @test_int [(asin(x)^3*x^2)/sqrt(1 - x^2), x, 6, -((3*x^2)/8) + (3/4)*x*sqrt(1 - x^2)*asin(x) - (3*asin(x)^2)/8 + (3/4)*x^2*asin(x)^2 - (1/2)*x*sqrt(1 - x^2)*asin(x)^3 + asin(x)^4/8]


    #= ::Subsection::Closed:: =#
    #=Problems*23 - 26*(p. 404-405)=#


    @test_int [(atan(x)*x)/(1 + x^2)^2, x, 3, x/(4*(1 + x^2)) + atan(x)/4 - atan(x)/(2*(1 + x^2))]
    @test_int [(atan(x)*x)/(1 + x^2)^3, x, 4, x/(16*(1 + x^2)^2) + (3*x)/(32*(1 + x^2)) + (3*atan(x))/32 - atan(x)/(4*(1 + x^2)^2)]
    @test_int [(atan(x)*x^2)/(1 + x^2), x, 4, x*atan(x) - atan(x)^2/2 - (1/2)*log(1 + x^2)]
    @test_int [(atan(x)*x^3)/(1 + x^2), x, 8, -(x/2) + atan(x)/2 + (1/2)*x^2*atan(x) + (1/2)*im*atan(x)^2 + atan(x)*log(2/(1 + im*x)) + (1/2)*im*PolyLog(2, 1 - 2/(1 + im*x))]


    #= ::Subsection::Closed:: =#
    #=Problems*27 - 32*(p. 407-408)=#


    @test_int [(atan(x)*x^2)/(1 + x^2)^2, x, 2, -(1/(4*(1 + x^2))) - (x*atan(x))/(2*(1 + x^2)) + atan(x)^2/4]
    @test_int [(atan(x)*x^3)/(1 + x^2)^2, x, 8, -(x/(4*(1 + x^2))) - atan(x)/4 + atan(x)/(2*(1 + x^2)) - (1/2)*im*atan(x)^2 - atan(x)*log(2/(1 + im*x)) - (1/2)*im*PolyLog(2, 1 - 2/(1 + im*x))]
    @test_int [(atan(x)*x^5)/(1 + x^2)^2, x, 17, -(x/2) + x/(4*(1 + x^2)) + (3*atan(x))/4 + (1/2)*x^2*atan(x) - atan(x)/(2*(1 + x^2)) + im*atan(x)^2 + 2*atan(x)*log(2/(1 + im*x)) + im*PolyLog(2, 1 - 2/(1 + im*x))]
    @test_int [(atan(x)*(1 + x^2))/x^2, x, 8, -(atan(x)/x) + x*atan(x) + log(x) - log(1 + x^2)]
    @test_int [(atan(x)*(1 + x^2))/x^5, x, 3, -(1/(12*x^3)) - 1/(4*x) - ((1 + x^2)^2*atan(x))/(4*x^4)]
    @test_int [(atan(x)*(1 + x^2)^2)/x^5, x, 12, -(1/(12*x^3)) - 3/(4*x) - (3*atan(x))/4 - atan(x)/(4*x^4) - atan(x)/x^2 + (1/2)*im*PolyLog(2, (-im)*x) - (1/2)*im*PolyLog(2, im*x)]


    #= ::Subsection::Closed:: =#
    #=Problems*33 - 36*(p. 409)=#


    @test_int [atan(x)/(x^2*(1 + x^2)), x, 7, -(atan(x)/x) - atan(x)^2/2 + log(x) - (1/2)*log(1 + x^2)]
    @test_int [atan(x)^2/x^3, x, 8, -(atan(x)/x) - atan(x)^2/2 - atan(x)^2/(2*x^2) + log(x) - (1/2)*log(1 + x^2)]
    @test_int [(atan(x)^2*(1 + x^2))/x^5, x, 11, -(1/(12*x^2)) - atan(x)/(6*x^3) - atan(x)/(2*x) - ((1 + x^2)^2*atan(x)^2)/(4*x^4) + log(x)/3 - (1/6)*log(1 + x^2)]
    @test_int [(atan(x)^2*x^3)/(1 + x^2)^3, x, 4, -(1/(32*(1 + x^2)^2)) + 5/(32*(1 + x^2)) + (x^3*atan(x))/(8*(1 + x^2)^2) + (3*x*atan(x))/(16*(1 + x^2)) - (3*atan(x)^2)/32 + (x^4*atan(x)^2)/(4*(1 + x^2)^2), -(x^4/(32*(1 + x^2)^2)) + 3/(32*(1 + x^2)) + (x^3*atan(x))/(8*(1 + x^2)^2) + (3*x*atan(x))/(16*(1 + x^2)) - (3*atan(x)^2)/32 + (x^4*atan(x)^2)/(4*(1 + x^2)^2)]


    #= ::Subsection::Closed:: =#
    #=Problems*37 - 43*(p. 412-414)=#


    @test_int [(asec(x)*sqrt(x^2 - 1))/x^2, x, 9, -(sqrt(x^2)/x^2) - (sqrt(-1 + x^2)*asec(x))/x - (2*im*sqrt(x^2)*asec(x)*atan(ℯ^(im*asec(x))))/x + (im*sqrt(x^2)*PolyLog(2, (-im)*ℯ^(im*asec(x))))/x - (im*sqrt(x^2)*PolyLog(2, im*ℯ^(im*asec(x))))/x, -(sqrt(x^2)/x^2) - (sqrt(1 - 1/x^2)*sqrt(x^2)*asec(x))/x - (2*im*sqrt(x^2)*asec(x)*atan(ℯ^(im*asec(x))))/x + (im*sqrt(x^2)*PolyLog(2, (-im)*ℯ^(im*asec(x))))/x - (im*sqrt(x^2)*PolyLog(2, im*ℯ^(im*asec(x))))/x]
    @test_int [(acsc(x)*(x^2 - 1)^(5/2))/x^3, x, 11, (3 + 2*x^4)/(12*x*sqrt(x^2)) - (5*(x^2 - 1)^(3/2)*acsc(x))/(3*x^2) - (5*sqrt(x^2 - 1)*acsc(x))/(2*x^2) + ((x^2 - 1)^(5/2)*acsc(x))/(3*x^2) - (5*x*acsc(x)^2)/(4*sqrt(x^2)) - (7*x*log(x))/(3*sqrt(x^2)), sqrt(x^2)/(4*x^3) + (x*sqrt(x^2))/6 - (5/3)*(1 - 1/x^2)^(3/2)*sqrt(x^2)*acsc(x) - (5*sqrt(1 - 1/x^2)*sqrt(x^2)*acsc(x))/(2*x^2) + (1/3)*(1 - 1/x^2)^(5/2)*(x^2)^(3/2)*acsc(x) - (5*sqrt(x^2)*acsc(x)^2)/(4*x) - (7*sqrt(x^2)*log(x))/(3*x)]
    @test_int [(asec(x)*sqrt(x^2 - 1))/x^4, x, 4, 1/(3*sqrt(x^2)) - 1/(9*x^2)/sqrt(x^2) + ((x^2 - 1)^(3/2)*asec(x))/(3*x^3)]
    @test_int [asec(x)/(x^2 - 1)^(5/2), x, 4, sqrt(x^2)/(6*(1 - x^2)) - (x*asec(x))/(3*(x^2 - 1)^(3/2)) + (2*x*asec(x))/(3*sqrt(x^2 - 1)) + (5*acoth(sqrt(x^2)))/6, sqrt(x^2)/(6*(1 - x^2)) - (x*asec(x))/(3*(-1 + x^2)^(3/2)) + (2*x*asec(x))/(3*sqrt(-1 + x^2)) + (5*x*atanh(x))/(6*sqrt(x^2))]
    @test_int [(asec(x)*x^2)/(x^2 - 1)^(5/2), x, 4, sqrt(x^2)/(6*(1 - x^2)) - (x^3*asec(x))/(3*(x^2 - 1)^(3/2)) - acoth(sqrt(x^2))/6, sqrt(x^2)/(6*(1 - x^2)) - (x^3*asec(x))/(3*(-1 + x^2)^(3/2)) - (x*atanh(x))/(6*sqrt(x^2))]
    @test_int [(asec(x)*x^3)/(x^2 - 1)^(5/2), x, 5, x/(6*sqrt(x^2)*(1 - x^2)) - asec(x)/(3*(x^2 - 1)^(3/2)) - asec(x)/sqrt(x^2 - 1) - (2*x*log(x))/(3*sqrt(x^2)) + (x*log(x^2 - 1))/(3*sqrt(x^2)), x/(6*sqrt(x^2)*(1 - x^2)) - asec(x)/(3*(-1 + x^2)^(3/2)) - asec(x)/sqrt(-1 + x^2) - (2*x*log(x))/(3*sqrt(x^2)) + (x*log(1 - x^2))/(3*sqrt(x^2))]
    @test_int [(asec(x)*x^6)/(x^2 - 1)^(5/2), x, 16, (sqrt(x^2)*(2 - 3*x^2))/(6*(-1 + x^2)) - (13/6)*acoth(sqrt(x^2)) - (5*x^3*asec(x))/(6*(-1 + x^2)^(3/2)) + (x^5*asec(x))/(2*(-1 + x^2)^(3/2)) - (5*x*asec(x))/(2*sqrt(-1 + x^2)) - (5*im*sqrt(x^2)*asec(x)*atan(ℯ^(im*asec(x))))/x + (5*im*sqrt(x^2)*PolyLog(2, (-im)*ℯ^(im*asec(x))))/(2*x) - (5*im*sqrt(x^2)*PolyLog(2, im*ℯ^(im*asec(x))))/(2*x), -((3*sqrt(x^2))/4) + sqrt(x^2)/(4*(1 - 1/x^2)) - (5*sqrt(x^2))/(12*(1 - 1/x^2)*x^2) - (13*sqrt(x^2)*acoth(x))/(6*x) - (5*sqrt(x^2)*asec(x))/(6*(1 - 1/x^2)^(3/2)*x) - (5*sqrt(x^2)*asec(x))/(2*sqrt(1 - 1/x^2)*x) + (x*sqrt(x^2)*asec(x))/(2*(1 - 1/x^2)^(3/2)) - (5*im*sqrt(x^2)*asec(x)*atan(ℯ^(im*asec(x))))/x + (5*im*sqrt(x^2)*PolyLog(2, (-im)*ℯ^(im*asec(x))))/(2*x) - (5*im*sqrt(x^2)*PolyLog(2, im*ℯ^(im*asec(x))))/(2*x)]


    #= ::Subsection::Closed:: =#
    #=Problems*44 - 48*(p. 416-417)=#


    @test_int [asec(x)/(x^2*sqrt(x^2 - 1)), x, 2, 1/sqrt(x^2) + (sqrt(x^2 - 1)*asec(x))/x]
    @test_int [acsc(x)/(x^2*(x^2 - 1)^(5/2)), x, 5, -(1/sqrt(x^2)) + sqrt(x^2)/(6*(x^2 - 1)) + ((3 - 12*x^2 + 8*x^4)*acsc(x))/(3*x*(x^2 - 1)^(3/2)) - (11*acoth(sqrt(x^2)))/6, -(1/sqrt(x^2)) - sqrt(x^2)/(6*(1 - x^2)) + acsc(x)/(x*(-1 + x^2)^(3/2)) - (4*x*acsc(x))/(3*(-1 + x^2)^(3/2)) + (8*x*acsc(x))/(3*sqrt(-1 + x^2)) - (11*x*atanh(x))/(6*sqrt(x^2))]
    @test_int [acsc(x)^4/(x^2*sqrt(x^2 - 1)), x, 6, (24*sqrt(x^2 - 1))/x + (24*acsc(x))/sqrt(x^2) - (12*sqrt(x^2 - 1)*acsc(x)^2)/x - (4*acsc(x)^3)/sqrt(x^2) + (sqrt(x^2 - 1)*acsc(x)^4)/x, (24*sqrt(1 - 1/x^2)*sqrt(x^2))/x + (24*sqrt(x^2)*acsc(x))/x^2 - (12*sqrt(1 - 1/x^2)*sqrt(x^2)*acsc(x)^2)/x - (4*sqrt(x^2)*acsc(x)^3)/x^2 + (sqrt(1 - 1/x^2)*sqrt(x^2)*acsc(x)^4)/x]
    @test_int [(asec(x)^2*(x^2 - 1)^(3/2))/x^5, x, 11, (sqrt(x^2 - 1)*(17*x^2 - 2))/(64*x^4) - (3*asec(x))/(8*x*sqrt(x^2)) + (9*x*asec(x))/(64*sqrt(x^2)) + ((x^2 - 1)^2*asec(x))/(8*x^3*sqrt(x^2)) - (3*sqrt(x^2 - 1)*asec(x)^2)/(8*x^2) - ((x^2 - 1)^(3/2)*asec(x)^2)/(4*x^4) + (x*asec(x)^3)/(8*sqrt(x^2)), (15*sqrt(1 - 1/x^2)*sqrt(x^2))/(64*x^2) + ((1 - 1/x^2)^(3/2)*sqrt(x^2))/(32*x^2) - (9*sqrt(x^2)*acsc(x))/(64*x) - (3*sqrt(x^2)*asec(x))/(8*x^3) + ((1 - 1/x^2)^2*sqrt(x^2)*asec(x))/(8*x) - (3*sqrt(1 - 1/x^2)*sqrt(x^2)*asec(x)^2)/(8*x^2) - ((1 - 1/x^2)^(3/2)*sqrt(x^2)*asec(x)^2)/(4*x^2) + (sqrt(x^2)*asec(x)^3)/(8*x)]
    @test_int [(asec(x)^3*sqrt(x^2 - 1))/x^4, x, 8, (2*(1 - 21*x^2))/(27*x^2*sqrt(x^2)) - (4*sqrt(x^2 - 1)*asec(x))/(3*x) - (2*(x^2 - 1)^(3/2)*asec(x))/(9*x^3) + (2*asec(x)^2)/(3*sqrt(x^2)) + ((x^2 - 1)*asec(x)^2)/(3*x^2*sqrt(x^2)) + ((x^2 - 1)^(3/2)*asec(x)^3)/(3*x^3), (2*sqrt(x^2))/(27*x^4) - (14*sqrt(x^2))/(9*x^2) - (4*sqrt(1 - 1/x^2)*sqrt(x^2)*asec(x))/(3*x) - (2*(1 - 1/x^2)^(3/2)*sqrt(x^2)*asec(x))/(9*x) + (2*sqrt(x^2)*asec(x)^2)/(3*x^2) + ((1 - 1/x^2)*sqrt(x^2)*asec(x)^2)/(3*x^2) + ((1 - 1/x^2)^(3/2)*sqrt(x^2)*asec(x)^3)/(3*x)]


    #= ::Subsection::Closed:: =#
    #=Problems*49 - 56*(p. 422)=#


    @test_int [asin(sqrt((x - a)/(x + a))), x, -8, -sqrt(2)*a*sqrt((x - a)/(x + a))/sqrt(a/(x + a)) + (x + a)*asin(sqrt((x - a)/(x + a)))]
    @test_int [atan(sqrt((x - a)/(x + a))), x, 4, x*atan(sqrt(-((a - x)/(a + x)))) - a*atanh(sqrt(-((a - x)/(a + x))))]
    @test_int [atan(x)/(1 + x)^3, x, 5, -(1/(4*(1 + x))) - atan(x)/(2*(1 + x)^2) + (1/4)*log(1 + x) - (1/8)*log(1 + x^2)]
    @test_int [atan(x - a)/(x + a), x, 5, atan(a - x)*log(2/(1 - im*(a - x))) - atan(a - x)*log(-((2*(a + x))/((im - 2*a)*(1 - im*(a - x))))) - (1/2)*im*PolyLog(2, 1 - 2/(1 - im*(a - x))) + (1/2)*im*PolyLog(2, 1 + (2*(a + x))/((im - 2*a)*(1 - im*(a - x))))]
    @test_int [asin(sqrt(1 - x^2))/sqrt(1 - x^2), x, 2, -sqrt(x^2)*asin(sqrt(1 - x^2))^2/(2*x)]
    @test_int [atan(sqrt(1 + x^2))*x/sqrt(1 + x^2), x, 2, sqrt(1 + x^2)*atan(sqrt(1 + x^2)) - (1/2)*log(2 + x^2)]
    @test_int [asin(x)/(1 - x)^(5/2), x, 5, -(sqrt(1 + x)/(3*(1 - x))) + (2*asin(x))/(3*(1 - x)^(3/2)) - (1/(3*sqrt(2)))*atanh(sqrt(1 + x)/sqrt(2))]
    @test_int [acsc(x)*(x - 1)^(5/2), x, 7, (4*x*(83 - 19*x + 3*x^2)*sqrt(x^2 - 1))/(105*sqrt(x - 1)*sqrt(x^2)) + (2/7)*(x - 1)^(7/2)*acsc(x) + ((4*x)/(7*sqrt(x^2)))*atanh(sqrt(x^2 - 1)/sqrt(x - 1)), (4*sqrt(-1 + x)*(1 + x))/(sqrt(1 - 1/x^2)*x) - (20*sqrt(-1 + x)*(1 + x)^2)/(21*sqrt(1 - 1/x^2)*x) + (4*sqrt(-1 + x)*(1 + x)^3)/(35*sqrt(1 - 1/x^2)*x) + (2/7)*(-1 + x)^(7/2)*acsc(x) + (4*sqrt(-1 + x)*sqrt(1 + x)*atanh(sqrt(1 + x)))/(7*sqrt(1 - 1/x^2)*x)]


    #= ::Subsection::Closed:: =#
    #=Problems*57 - 59*(p. 427)=#


    @test_int [asin(sinh(x))*sech(x)^4, x, 5, (-2/3)*asin(cosh(x)/sqrt(2)) + (1/6)*sqrt(1 - sinh(x)^2)*sech(x) + asin(sinh(x))*tanh(x) - (1/3)*asin(sinh(x))*tanh(x)^3, (-(2/3))*asin(cosh(x)/sqrt(2)) + (1/6)*sqrt(2 - cosh(x)^2)*sech(x) + asin(sinh(x))*tanh(x) - (1/3)*asin(sinh(x))*tanh(x)^3]
    @test_int [acot(cosh(x))*cosh(x)/sinh(x)^4, x, 6, atanh(tanh(x)/sqrt(2))/(6*sqrt(2)) + coth(x)/6 - (1/3)*acot(cosh(x))*csch(x)^3]
    @test_int [asin(tanh(x))*ℯ^x, x, 5, ℯ^x*asin(tanh(x)) - cosh(x)*log(1 + ℯ^(2*x))*sqrt(sech(x)^2)]
    end
