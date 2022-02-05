@testset "Moses Problems" begin
    @variables A, B, H, K, a, e, r, t, w, x, y, z

    #= ::Package:: =#

    #= ::Title:: =#
    #=Joel*Moses - Symbolic*Integration*Ph.D. Thesis*(1967)=#


    #= ::Section::Closed:: =#
    #=Chapter*2 - How*SIN*differs*from*SAINT=#


    @test_int [cot(x)^4, x, 3, x + cot(x) - cot(x)^3/3]
    @test_int [1/(x^4*(1 + x^2)), x, 3, -(1/(3*x^3)) + 1/x + atan(x)]
    @test_int [(x^2 + x)/sqrt(x), x, 2, (2*x^(3/2))/3 + (2*x^(5/2))/5]
    @test_int [cos(x), x, 1, sin(x)]
    @test_int [x*ℯ^x^2, x, 1, ℯ^x^2/2]
    @test_int [tan(x)*sec(x)^2, x, 2, sec(x)^2/2]
    @test_int [x*sqrt(1 + x^2), x, 1, (1/3)*(1 + x^2)^(3/2)]
    @test_int [sin(x)*ℯ^x, x, 1, (-(1/2))*ℯ^x*cos(x) + (1/2)*ℯ^x*sin(x)]


    #= ::Section::Closed:: =#
    #=Chapter*3 - SCHATCHEN - A*Matching*Program*for*Algebraic*Expressions=#


    @test_int [csc(x)^2*(cos(x)/sin(x)^2), x, 2, (-(1/3))*csc(x)^3]


    #= ::Section::Closed:: =#
    #=Chapter*4 - The*First*Stage*of*sin=#


    @test_int [sin(ℯ^x), x, 2, SinIntegral(ℯ^x)]
    @test_int [sin(y)/y, y, 1, SinIntegral(y)]


    @test_int [sin(x) + ℯ^x, x, 3, ℯ^x - cos(x)]
    @test_int [ℯ^x^2 + 2*x^2*ℯ^x^2, x, 4, ℯ^x^2*x]
    @test_int [(x + ℯ^x)^2, x, 5, -2*ℯ^x + ℯ^(2*x)/2 + 2*ℯ^x*x + x^3/3]
    @test_int [x^2 + 2*ℯ^x + ℯ^(2*x), x, 3, 2*ℯ^x + ℯ^(2*x)/2 + x^3/3]


    @test_int [sin(x)*cos(x), x, 2, sin(x)^2/2]
    @test_int [x*ℯ^x^2, x, 1, ℯ^x^2/2]
    @test_int [x*sqrt(1 + x^2), x, 1, (1/3)*(1 + x^2)^(3/2)]
    @test_int [ℯ^x/(1 + ℯ^x), x, 2, log(1 + ℯ^x)]
    @test_int [x^(3/2), x, 1, (2*x^(5/2))/5]
    @test_int [cos(2*x + 3), x, 1, (1/2)*sin(3 + 2*x)]
    @test_int [2*y*z*ℯ^(2*x), x, 2, ℯ^(2*x)*y*z]
    @test_int [cos(ℯ^x)^2*sin(ℯ^x)*ℯ^x, x, 3, (-(1/3))*cos(ℯ^x)^3]


    #= ::Section::Closed:: =#
    #=Chapter*4 - The*Second*Stage*of*sin=#


    @test_int [x*sqrt(x + 1), x, 2, (-(2/3))*(1 + x)^(3/2) + (2/5)*(1 + x)^(5/2)]
    @test_int [1/(x^4 - 1), x, 3, -(atan(x)/2) - atanh(x)/2]


    #= ::Subsection::Closed:: =#
    #=Method*1)  Elementary*function*of*exponentials=#


    @test_int [ℯ^x/(2 + 3*ℯ^(2*x)), x, 2, atan(sqrt(3/2)*ℯ^x)/sqrt(6)]
    @test_int [ℯ^(2*x)/(A + B*ℯ^(4*x)), x, 2, atan((sqrt(B)*ℯ^(2*x))/sqrt(A))/(2*sqrt(A)*sqrt(B))]
    @test_int [ℯ^(x + 1)/(1 + ℯ^x), x, 3, ℯ*log(1 + ℯ^x)]
    @test_int [10^x*ℯ^x, x, 1, (10*ℯ)^x/(1 + log(10))]


    #= ::Subsection::Closed:: =#
    #=Method*2)  Substitution*for*an*integral*power=#


    @test_int [x^3*sin(x^2), x, 3, (-(1/2))*x^2*cos(x^2) + sin(x^2)/2]
    @test_int [x^7/(x^12 + 1), x, 7, -(atan((1 - 2*x^4)/sqrt(3))/(4*sqrt(3))) - (1/12)*log(1 + x^4) + (1/24)*log(1 - x^4 + x^8)]
    @test_int [x^(3*a)*sin(x^(2*a)), x, 3, (im*x^(1 + 3*a)*Gamma((1/2)*(3 + 1/a), (-im)*x^(2*a)))/(((-im)*x^(2*a))^((1 + 3*a)/(2*a))*(4*a)) - (im*x^(1 + 3*a)*Gamma((1/2)*(3 + 1/a), im*x^(2*a)))/((im*x^(2*a))^((1 + 3*a)/(2*a))*(4*a))]


    #= ::Subsection::Closed:: =#
    #=Method*3)  Substitution*for*a*rational*root*of*a*linear*function*of*x=#


    @test_int [cos(sqrt(x)), x, 3, 2*cos(sqrt(x)) + 2*sqrt(x)*sin(sqrt(x))]
    @test_int [x*sqrt(x + 1), x, 2, (-(2/3))*(1 + x)^(3/2) + (2/5)*(1 + x)^(5/2)]
    @test_int [1/(x^(1/2) + x^(1/3)), x, 4, 6*x^(1/6) - 3*x^(1/3) + 2*sqrt(x) - 6*log(1 + x^(1/6))]
    @test_int [sqrt((x + 1)/(2*x + 3)), x, 4, (1/2)*sqrt(1 + x)*sqrt(3 + 2*x) - asinh(sqrt(2)*sqrt(1 + x))/(2*sqrt(2))]


    #= ::Subsection::Closed:: =#
    #=Method*4)  Binomial - Chebyschev=#


    @test_int [x^4/(1 - x^2)^(5/2), x, 3, x^3/(3*(1 - x^2)^(3/2)) - x/sqrt(1 - x^2) + asin(x)]
    @test_int [x^(1/2)*(1 + x)^(5/2), x, 6, (5/64)*sqrt(x)*sqrt(1 + x) + (5/32)*x^(3/2)*sqrt(1 + x) + (5/24)*x^(3/2)*(1 + x)^(3/2) + (1/4)*x^(3/2)*(1 + x)^(5/2) - (5*asinh(sqrt(x)))/64]


    #= ::Subsection::Closed:: =#
    #=Method*5)  Arctrigonometric*substitutions=#


    @test_int [x^4/(1 - x^2)^(5/2), x, 3, x^3/(3*(1 - x^2)^(3/2)) - x/sqrt(1 - x^2) + asin(x)]
    @test_int [sqrt(A^2 + B^2 - B^2*y^2)/(1 - y^2), y, 5, B*atan((B*y)/sqrt(A^2 + B^2 - B^2*y^2)) + A*atanh((A*y)/sqrt(A^2 + B^2 - B^2*y^2))]


    #= ::Subsection::Closed:: =#
    #=Method*6)  Elementary*function*of*trigonometric*functions=#


    @test_int [sin(x)^2, x, 2, x/2 - (1/2)*cos(x)*sin(x)]
    @test_int [sqrt(A^2 + B^2*sin(x)^2)/sin(x), x, 6, (-B)*atan((B*cos(x))/sqrt(A^2 + B^2*sin(x)^2)) - A*atanh((A*cos(x))/sqrt(A^2 + B^2*sin(x)^2)), (-B)*atan((B*cos(x))/sqrt(A^2 + B^2 - B^2*cos(x)^2)) - A*atanh((A*cos(x))/sqrt(A^2 + B^2 - B^2*cos(x)^2))]
    @test_int [1/(1 + cos(x)), x, 1, sin(x)/(1 + cos(x))]


    #= ::Subsection::Closed:: =#
    #=Method*7)  Rational*function*times*an*exponential=#


    @test_int [x*ℯ^x, x, 2, -ℯ^x + ℯ^x*x]
    @test_int [(x/(x + 1)^2)*ℯ^x, x, 1, ℯ^x/(1 + x)]
    @test_int [(1 + 2*x^2)*ℯ^x^2, x, 5, ℯ^x^2*x]
    @test_int [ℯ^x^2, x, 1, (1/2)*sqrt(pi)*Erfi(x)]
    @test_int [ℯ^x/x, x, 1, ExpIntegralEi(x)]


    #= ::Subsection::Closed:: =#
    #=Method*8)  Rational*functions=#


    @test_int [x/(x^3 + 1), x, 6, -(atan((1 - 2*x)/sqrt(3))/sqrt(3)) - (1/3)*log(1 + x) + (1/6)*log(1 - x + x^2)]
    @test_int [1/(x^6 - 1), x, 10, -(atan((sqrt(3)*x)/(1 - x^2))/(2*sqrt(3))) - atanh(x)/3 - (1/6)*atanh(x/(1 + x^2)), atan((1 - 2*x)/sqrt(3))/(2*sqrt(3)) - atan((1 + 2*x)/sqrt(3))/(2*sqrt(3)) - atanh(x)/3 + (1/12)*log(1 - x + x^2) - (1/12)*log(1 + x + x^2)]
    @test_int [1/((B^2 - A^2)*x^2 - A^2*B^2 + A^4), x, 1, atanh(x/A)/(A*(A^2 - B^2))]


    #= ::Subsection::Closed:: =#
    #=Method*9)  Rational*function*times*a*log*or*arctrigonometric*function=#


    @test_int [x*log(x), x, 1, -(x^2/4) + (1/2)*x^2*log(x)]
    @test_int [x^2*asin(x), x, 4, sqrt(1 - x^2)/3 - (1/9)*(1 - x^2)^(3/2) + (1/3)*x^3*asin(x)]
    @test_int [1/(x^2 + 2*x + 1), x, 2, -(1/(1 + x))]


    #= ::Subsection::Closed:: =#
    #=Method*10)  Rational*function*times*an*elementary*function*of*log(a+b*x)=#


    @test_int [log(x)/(log(x) + 1)^2, x, 7, x/(1 + log(x))]
    @test_int [1/(x*(1 + log(x)^2)), x, 2, atan(log(x))]
    @test_int [1/log(x), x, 1, LogIntegral(x)]


    #= ::Subsection::Closed:: =#
    #=Method*11)  Expansion*of*the*integrand=#


    @test_int [x*(cos(x) + sin(x)), x, 6, cos(x) - x*cos(x) + sin(x) + x*sin(x)]
    @test_int [(x + ℯ^x)/ℯ^x, x, 4, -ℯ^(-x) + x - x/ℯ^x]
    @test_int [x*(1 + ℯ^x)^2, x, 6, -2*ℯ^x - ℯ^(2*x)/4 + 2*ℯ^x*x + (1/2)*ℯ^(2*x)*x + x^2/2]


    #= ::Section::Closed:: =#
    #=Chapter*4 - The*Third*Stage*of*sin=#


    @test_int [x*cos(x), x, 2, cos(x) + x*sin(x)]
    @test_int [cos(sqrt(x)), x, 3, 2*cos(sqrt(x)) + 2*sqrt(x)*sin(sqrt(x))]


    #= ::Subsection::Closed:: =#
    #=The*Integration-by-Parts*Methods=#


    @test_int [x*cos(x), x, 2, cos(x) + x*sin(x)]
    @test_int [x*log(x)^2, x, 2, x^2/4 - (1/2)*x^2*log(x) + (1/2)*x^2*log(x)^2]


    #= ::Subsection::Closed:: =#
    #=The*Derivative-divides*Method=#


    @test_int [cos(x)*(1 + sin(x)^3), x, 2, sin(x) + sin(x)^4/4]
    @test_int [1/(x*(1 + log(x)^2)), x, 2, atan(log(x))]
    @test_int [1/(sqrt(1 - x^2)*(1 + asin(x)^2)), x, 2, atan(asin(x))]
    @test_int [sin(x)/(sin(x) + cos(x)), x, 2, x/2 - (1/2)*log(cos(x) + sin(x))]


    #= ::Subsection::Closed:: =#
    #=An*Example*of*SIN's*Performance=#


    @test_int [-sqrt(A^2 + B^2*(1 - y^2))/(1 - y^2), y, 6, (-B)*atan((B*y)/sqrt(A^2 + B^2 - B^2*y^2)) - A*atanh((A*y)/sqrt(A^2 + B^2 - B^2*y^2))]
    @test_int [(-(A^2 + B^2))*(cos(z)^2/(B*(1 - ((A^2 + B^2)/B^2)*sin(z)^2))), z, 5, (-B)*z - A*atanh((A*tan(z))/B)]
    @test_int [-(A^2 + B^2)/(B*(1 + w^2)^2*(1 - ((A^2 + B^2)/B^2)*(w^2/(1 + w^2)))), w, 6, (-B)*atan(w) - A*atanh((A*w)/B)]
    @test_int [(-B)*((A^2 + B^2)/((1 + w^2)*(B^2 - A^2*w^2))), w, 4, (-B)*atan(w) - A*atanh((A*w)/B)]


    #= ::Subsection::Closed:: =#
    #=SAINT*and*SIN*solutions*of*the*same*problem=#


    @test_int [x^4/(1 - x^2)^(5/2), x, 3, x^3/(3*(1 - x^2)^(3/2)) - x/sqrt(1 - x^2) + asin(x)]
    @test_int [sin(y)^4/cos(y)^4, y, 3, y - tan(y) + tan(y)^3/3]
    @test_int [z^4/(1 + z^2), z, 3, -z + z^3/3 + atan(z)]


    #= ::Section::Closed:: =#
    #=Chapter*5 - The*Edge*Heuristic=#


    @test_int [(2*x^2 + 1)*ℯ^x^2, x, 5, ℯ^x^2*x]
    @test_int [((2*x^6 + 5*x^4 + x^3 + 4*x^2 + 1)/(x^2 + 1)^2)*ℯ^x^2, x, 10, ℯ^x^2*x + ℯ^x^2/(2*(1 + x^2))]
    @test_int [1/ℯ^1/ℯ^x, x, 1, -ℯ^(-1 - x)]
    @test_int [(x + 1/x)*log(x), x, 5, -(x^2/4) + (1/2)*x^2*log(x) + log(x)^2/2]
    @test_int [x/(1 + x^4), x, 2, atan(x^2)/2]
    @test_int [x^5/(1 + x^4), x, 3, x^2/2 - atan(x^2)/2]
    @test_int [1/(1 + tan(x)^2), x, 3, x/2 + (1/2)*cos(x)*sin(x)]
    @test_int [x^4/(1 - x^2)^(5/2), x, 3, x^3/(3*(1 - x^2)^(3/2)) - x/sqrt(1 - x^2) + asin(x)]
    @test_int [-x^2/(1 - x^2)^(3/2), x, 2, -(x/sqrt(1 - x^2)) + asin(x)]
    @test_int [sin(x)*ℯ^x, x, 1, (-(1/2))*ℯ^x*cos(x) + (1/2)*ℯ^x*sin(x)]


    #= ::Section::Closed:: =#
    #=Appendix*C - Slagle's*Thesis*Integration*Problems=#


    @test_int [1/x, x, 1, log(x)]
    @test_int [sec(2*t)/(1 + sec(t)^2 + 3*tan(t)), t, 4, (-(1/12))*log(cos(t) - sin(t)) - (1/4)*log(cos(t) + sin(t)) + (1/3)*log(2*cos(t) + sin(t)) - 1/(2*(1 + tan(t)))]
    @test_int [1/sec(x)^2, x, 2, x/2 + (1/2)*cos(x)*sin(x)]
    @test_int [(x^2 + 1)/sqrt(x), x, 2, 2*sqrt(x) + (2*x^(5/2))/5]
    @test_int [x/sqrt(x^2 + 2*x + 5), x, 3, sqrt(5 + 2*x + x^2) - asinh((1 + x)/2)]
    @test_int [sin(x)^2*cos(x), x, 2, sin(x)^3/3]
    @test_int [ℯ^x/(1 + ℯ^x), x, 2, log(1 + ℯ^x)]
    @test_int [ℯ^(2*x)/(1 + ℯ^x), x, 3, ℯ^x - log(1 + ℯ^x)]
    @test_int [1/(1 - cos(x)), x, 1, -(sin(x)/(1 - cos(x)))]
    @test_int [tan(x)*sec(x)^2, x, 2, sec(x)^2/2]
    @test_int [x*log(x), x, 1, -(x^2/4) + (1/2)*x^2*log(x)]
    @test_int [sin(x)*cos(x), x, 2, sin(x)^2/2]
    @test_int [(x + 1)/sqrt(2*x - x^2), x, 3, -sqrt(2*x - x^2) - 2*asin(1 - x)]
    @test_int [2*(ℯ^x/(2 + 3*ℯ^(2*x))), x, 3, sqrt(2/3)*atan(sqrt(3/2)*ℯ^x)]
    @test_int [x^4/(1 - x^2)^(5/2), x, 3, x^3/(3*(1 - x^2)^(3/2)) - x/sqrt(1 - x^2) + asin(x)]
    @test_int [ℯ^(6*x)/(ℯ^(4*x) + 1), x, 3, ℯ^(2*x)/2 - (1/2)*atan(ℯ^(2*x))]
    @test_int [log(2 + 3*x^2), x, 3, -2*x + 2*sqrt(2/3)*atan(sqrt(3/2)*x) + x*log(2 + 3*x^2)]


    #= ::Section::Closed:: =#
    #=Appendix*D - MacIntosh*Integration*Problems=#


    @test_int [1/(r*sqrt(2*H*r^2 - a^2)), x, 1, x/(r*sqrt(-a^2 + 2*H*r^2))]
    @test_int [1/(r*sqrt(2*H*r^2 - a^2 - e^2)), x, 1, x/(r*sqrt(-a^2 - e^2 + 2*H*r^2))]
    @test_int [1/(r*sqrt(2*H*r^2 - a^2 - 2*K*r^4)), x, 1, x/(r*sqrt(-a^2 + 2*H*r^2 - 2*K*r^4))]
    @test_int [1/(r*sqrt(2*H*r^2 - a^2 - e^2 - 2*K*r^4)), x, 1, x/(r*sqrt(-a^2 - e^2 + 2*H*r^2 - 2*K*r^4))]
    @test_int [1/(r*sqrt(2*H*r^2 - a^2 - 2*K*r)), x, 1, x/(r*sqrt(-a^2 - 2*r*(K - H*r)))]
    @test_int [1/(r*sqrt(2*H*r^2 - a^2 - e^2 - 2*K*r)), x, 1, If($VersionNumber>=8, x/(r*sqrt(-a^2 - e^2 - 2*r*(K - H*r))), x/(r*sqrt(-a^2 - e^2 - 2*K*r + 2*H*r^2)))]
    @test_int [r/sqrt(2*ℯ*r^2 - a^2), x, 1, (r*x)/sqrt(-a^2 + 2*ℯ*r^2)]
    @test_int [r/sqrt(2*ℯ*r^2 - a^2 - e^2), x, 1, (r*x)/sqrt(-a^2 - e^2 + 2*ℯ*r^2)]
    @test_int [r/sqrt(2*ℯ*r^2 - a^2 - 2*K*r^4), x, 1, (r*x)/sqrt(-a^2 + 2*ℯ*r^2 - 2*K*r^4)]
    @test_int [r/sqrt(2*ℯ*r^2 - a^2 - e^2 - 2*K*r^4), x, 1, (r*x)/sqrt(-a^2 - e^2 + 2*ℯ*r^2 - 2*K*r^4)]
    @test_int [r/sqrt(2*H*r^2 - a^2 - e^2 - 2*K*r), x, 1, If($VersionNumber>=8, (r*x)/sqrt(-a^2 - e^2 - 2*r*(K - H*r)), (r*x)/sqrt(-a^2 - e^2 - 2*K*r + 2*H*r^2))]
    end
