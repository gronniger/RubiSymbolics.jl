@testset "Hearn Problems" begin
    (a, alpha, b, c, d, e, eps, epsilon, h, k, m, mc, p, q, r, x, y, z, ) = @variables a alpha b c d e eps epsilon h k m mc p q r x y z

    #= ::Package:: =#

    #= ::Title:: =#
    #=Anthony*Hearn - Reduce*Integration*Test*Package=#


    #= ::Section::Closed:: =#
    #=Polynomial*and*rational*function*examples=#


    @test_int [1 + x + x^2, x, 1, x + x^2/2 + x^3/3]
    @test_int [x^2*(2*x^2 + x)^2, x, 3, x^5/5 + (2*x^6)/3 + (4*x^7)/7]
    @test_int [x*(x^2 + 2*x + 1), x, 2, x^2/2 + (2*x^3)/3 + x^4/4]
    @test_int [1/x, x, 1, log(x)]
    @test_int [(x + 1)^3/(x - 1)^4, x, 2, 8/(3*(1 - x)^3) - 6/(1 - x)^2 + 6/(1 - x) + log(1 - x)]
    @test_int [1/(x*(x - 1)*(x + 1)^2), x, 2, -(1/(2*(1 + x))) + (1/4)*log(1 - x) - log(x) + (3/4)*log(1 + x)]
    @test_int [(a*x + b)/((x - p)*(x - q)), x, 2, ((b + a*p)*log(p - x))/(p - q) - ((b + a*q)*log(q - x))/(p - q)]
    @test_int [1/(a*x^2 + b*x + c), x, 2, -((2*atanh((b + 2*a*x)/sqrt(b^2 - 4*a*c)))/sqrt(b^2 - 4*a*c))]
    @test_int [(a*x + b)/(1 + x^2), x, 3, b*atan(x) + (1/2)*a*log(1 + x^2)]
    @test_int [1/(x^2 - 2*x + 3), x, 2, -(atan((1 - x)/sqrt(2))/sqrt(2))]


    #= ::Section::Closed:: =#
    #=Rational*function*examples*from*Hardy, Pure*Mathematics, p*253*et*seq.=#


    @test_int [1/((x-1)*(x^2+1))^2, x, 6, 1/(4*(1 - x)) - 1/(4*(1 + x^2)) + atan(x)/4 - (1/2)*log(1 - x) + (1/4)*log(1 + x^2)]
    @test_int [x/((x-a)*(x-b)*(x-c)), x, 2, (a*log(a - x))/((a - b)*(a - c)) - (b*log(b - x))/((a - b)*(b - c)) + (c*log(c - x))/((a - c)*(b - c))]
    @test_int [x/((x^2+a^2)*(x^2+b^2)), x, 4, -(log(a^2 + x^2)/(2*(a^2 - b^2))) + log(b^2 + x^2)/(2*(a^2 - b^2))]
    @test_int [x^2/((x^2+a^2)*(x^2+b^2)), x, 3, (a*atan(x/a))/(a^2 - b^2) - (b*atan(x/b))/(a^2 - b^2)]
    @test_int [x/((x-1)*(x^2+1)), x, 5, atan(x)/2 + (1/2)*log(1 - x) - (1/4)*log(1 + x^2)]
    @test_int [x/(1+x^3), x, 6, -(atan((1 - 2*x)/sqrt(3))/sqrt(3)) - (1/3)*log(1 + x) + (1/6)*log(1 - x + x^2)]
    @test_int [x^3/((x-1)^2*(x^3+1)), x, 3, 1/(2*(1 - x)) + (3/4)*log(1 - x) - (1/12)*log(1 + x) - (1/3)*log(1 - x + x^2)]
    @test_int [1/(1+x^4), x, 9, -(atan(1 - sqrt(2)*x)/(2*sqrt(2))) + atan(1 + sqrt(2)*x)/(2*sqrt(2)) - log(1 - sqrt(2)*x + x^2)/(4*sqrt(2)) + log(1 + sqrt(2)*x + x^2)/(4*sqrt(2))]
    @test_int [x^2/(1+x^4), x, 9, -(atan(1 - sqrt(2)*x)/(2*sqrt(2))) + atan(1 + sqrt(2)*x)/(2*sqrt(2)) + log(1 - sqrt(2)*x + x^2)/(4*sqrt(2)) - log(1 + sqrt(2)*x + x^2)/(4*sqrt(2))]
    @test_int [1/(1+x^2+x^4), x, 9, -(atan((1 - 2*x)/sqrt(3))/(2*sqrt(3))) + atan((1 + 2*x)/sqrt(3))/(2*sqrt(3)) - (1/4)*log(1 - x + x^2) + (1/4)*log(1 + x + x^2)]


    #= ::Section::Closed:: =#
    #=Examples*involving*a+b*x=#


    @test_int [(a+b*x)^p, x, 1, (a + b*x)^(1 + p)/(b*(1 + p))]
    @test_int [x*(a+b*x)^p, x, 2, -((a*(a + b*x)^(1 + p))/(b^2*(1 + p))) + (a + b*x)^(2 + p)/(b^2*(2 + p))]
    @test_int [x^2*(a+b*x)^p, x, 2, (a^2*(a + b*x)^(1 + p))/(b^3*(1 + p)) - (2*a*(a + b*x)^(2 + p))/(b^3*(2 + p)) + (a + b*x)^(3 + p)/(b^3*(3 + p))]
    @test_int [1/(a+b*x), x, 1, log(a + b*x)/b]
    @test_int [1/(a+b*x)^2, x, 1, -(1/(b*(a + b*x)))]
    @test_int [x/(a+b*x), x, 2, x/b - (a*log(a + b*x))/b^2]
    @test_int [x^2/(a+b*x), x, 2, -((a*x)/b^2) + x^2/(2*b) + (a^2*log(a + b*x))/b^3]
    @test_int [1/(x*(a+b*x)), x, 3, log(x)/a - log(a + b*x)/a]
    @test_int [1/(x^2*(a+b*x)), x, 2, -(1/(a*x)) - (b*log(x))/a^2 + (b*log(a + b*x))/a^2]
    @test_int [1/(x*(a+b*x))^2, x, 2, -(1/(a^2*x)) - b/(a^2*(a + b*x)) - (2*b*log(x))/a^3 + (2*b*log(a + b*x))/a^3]
    @test_int [1/(c^2+x^2), x, 1, atan(x/c)/c]
    @test_int [1/(c^2-x^2), x, 1, atanh(x/c)/c]


    #= ::Section::Closed:: =#
    #=More*complicated*rational*function*examples=#


    #= Mostly*examples*contributed*by*David*M. Dahm, who*also*developed*the*code*to*integrate*them. =#

    @test_int [1/(2*x^3-1), x, 6, -(atan((1 + 2*2^(1/3)*x)/sqrt(3))/(2^(1/3)*sqrt(3))) + log(1 - 2^(1/3)*x)/(3*2^(1/3)) - log(1 + 2^(1/3)*x + 2^(2/3)*x^2)/(6*2^(1/3))]
    @test_int [1/(x^3-2), x, 6, -(atan((1 + 2^(2/3)*x)/sqrt(3))/(2^(2/3)*sqrt(3))) + log(2^(1/3) - x)/(3*2^(2/3)) - log(2^(2/3) + 2^(1/3)*x + x^2)/(6*2^(2/3))]
    @test_int [1/(a*x^3-b), x, 6, -(atan((b^(1/3) + 2*a^(1/3)*x)/(sqrt(3)*b^(1/3)))/(sqrt(3)*a^(1/3)*b^(2/3))) + log(b^(1/3) - a^(1/3)*x)/(3*a^(1/3)*b^(2/3)) - log(b^(2/3) + a^(1/3)*b^(1/3)*x + a^(2/3)*x^2)/(6*a^(1/3)*b^(2/3))]
    @test_int [1/(x^4-2), x, 3, -(atan(x/2^(1/4))/(2*2^(3/4))) - atanh(x/2^(1/4))/(2*2^(3/4))]
    @test_int [1/(5*x^4-1), x, 3, -(atan(5^(1/4)*x)/(2*5^(1/4))) - atanh(5^(1/4)*x)/(2*5^(1/4))]
    @test_int [1/(3*x^4+7), x, 9, If(13<9, -(atan(1 - (3/7)^(1/4)*sqrt(2)*x)/(2*sqrt(2)*3^(1/4)*7^(3/4))) + atan(1 + (3/7)^(1/4)*sqrt(2)*x)/(2*sqrt(2)*3^(1/4)*7^(3/4)) - log(sqrt(21) - sqrt(2)*3^(3/4)*7^(1/4)*x + 3*x^2)/(4*sqrt(2)*3^(1/4)*7^(3/4)) + log(sqrt(21) + sqrt(2)*3^(3/4)*7^(1/4)*x + 3*x^2)/(4*sqrt(2)*3^(1/4)*7^(3/4)), -(atan(1 - (3/7)^(1/4)*sqrt(2)*x)/(2*sqrt(2)*3^(1/4)*7^(3/4))) + atan(1 + (3/7)^(1/4)*sqrt(2)*x)/(2*sqrt(2)*3^(1/4)*7^(3/4)) - log(sqrt(21) - sqrt(2)*3^(3/4)*7^(1/4)*x + 3*x^2)/(4*sqrt(2)*3^(1/4)*7^(3/4)) + log(sqrt(21) + sqrt(2)*3^(3/4)*7^(1/4)*x + 3*x^2)/(4*sqrt(2)*3^(1/4)*7^(3/4)))]
    @test_int [1/(x^4+3*x^2-1), x, 3, (-sqrt(2/(13*(3 + sqrt(13)))))*atan(sqrt(2/(3 + sqrt(13)))*x) - sqrt((1/26)*(3 + sqrt(13)))*atanh(sqrt(2/(-3 + sqrt(13)))*x)]
    @test_int [1/(x^4-3*x^2-1), x, 3, (-sqrt((1/26)*(3 + sqrt(13))))*atan(sqrt(2/(-3 + sqrt(13)))*x) - sqrt(2/(13*(3 + sqrt(13))))*atanh(sqrt(2/(3 + sqrt(13)))*x)]
    @test_int [1/(x^4-3*x^2+1), x, 3, (-sqrt(2/(5*(3 + sqrt(5)))))*atanh(sqrt(2/(3 + sqrt(5)))*x) + sqrt((1/10)*(3 + sqrt(5)))*atanh(sqrt((1/2)*(3 + sqrt(5)))*x)]
    @test_int [1/(x^4-4*x^2+1), x, 3, atanh(x/sqrt(2 - sqrt(3)))/(2*sqrt(3*(2 - sqrt(3)))) - atanh(x/sqrt(2 + sqrt(3)))/(2*sqrt(3*(2 + sqrt(3))))]
    @test_int [1/(x^4+4*x^2+1), x, 3, atan(x/sqrt(2 - sqrt(3)))/(2*sqrt(3*(2 - sqrt(3)))) - atan(x/sqrt(2 + sqrt(3)))/(2*sqrt(3*(2 + sqrt(3))))]
    @test_int [1/(x^4+x^2+2), x, 9, (-(1/2))*sqrt((1/14)*(-1 + 2*sqrt(2)))*atan((sqrt(-1 + 2*sqrt(2)) - 2*x)/sqrt(1 + 2*sqrt(2))) + (1/2)*sqrt((1/14)*(-1 + 2*sqrt(2)))*atan((sqrt(-1 + 2*sqrt(2)) + 2*x)/sqrt(1 + 2*sqrt(2))) - log(sqrt(2) - sqrt(-1 + 2*sqrt(2))*x + x^2)/(4*sqrt(2*(-1 + 2*sqrt(2)))) + log(sqrt(2) + sqrt(-1 + 2*sqrt(2))*x + x^2)/(4*sqrt(2*(-1 + 2*sqrt(2))))]
    @test_int [1/(x^4-x^2+2), x, 9, (-(1/2))*sqrt((1/14)*(1 + 2*sqrt(2)))*atan((sqrt(1 + 2*sqrt(2)) - 2*x)/sqrt(-1 + 2*sqrt(2))) + (1/2)*sqrt((1/14)*(1 + 2*sqrt(2)))*atan((sqrt(1 + 2*sqrt(2)) + 2*x)/sqrt(-1 + 2*sqrt(2))) - log(sqrt(2) - sqrt(1 + 2*sqrt(2))*x + x^2)/(4*sqrt(2*(1 + 2*sqrt(2)))) + log(sqrt(2) + sqrt(1 + 2*sqrt(2))*x + x^2)/(4*sqrt(2*(1 + 2*sqrt(2))))]
    @test_int [1/(x^6-1), x, 10, atan((1 - 2*x)/sqrt(3))/(2*sqrt(3)) - atan((1 + 2*x)/sqrt(3))/(2*sqrt(3)) - atanh(x)/3 + (1/12)*log(1 - x + x^2) - (1/12)*log(1 + x + x^2)]
    @test_int [1/(x^6-2), x, 10, atan(1/sqrt(3) - (2^(5/6)*x)/sqrt(3))/(2*2^(5/6)*sqrt(3)) - atan(1/sqrt(3) + (2^(5/6)*x)/sqrt(3))/(2*2^(5/6)*sqrt(3)) - atanh(x/2^(1/6))/(3*2^(5/6)) + log(2^(1/3) - 2^(1/6)*x + x^2)/(12*2^(5/6)) - log(2^(1/3) + 2^(1/6)*x + x^2)/(12*2^(5/6))]
    @test_int [1/(x^6+2), x, 10, atan(x/2^(1/6))/(3*2^(5/6)) - atan(sqrt(3) - 2^(5/6)*x)/(6*2^(5/6)) + atan(sqrt(3) + 2^(5/6)*x)/(6*2^(5/6)) - log(2^(1/3) - 2^(1/6)*sqrt(3)*x + x^2)/(4*2^(5/6)*sqrt(3)) + log(2^(1/3) + 2^(1/6)*sqrt(3)*x + x^2)/(4*2^(5/6)*sqrt(3))]
    @test_int [1/(x^8+1), x, 19, -(atan((sqrt(2 - sqrt(2)) - 2*x)/sqrt(2 + sqrt(2)))/(4*sqrt(2*(2 - sqrt(2))))) - atan((sqrt(2 + sqrt(2)) - 2*x)/sqrt(2 - sqrt(2)))/(4*sqrt(2*(2 + sqrt(2)))) + atan((sqrt(2 - sqrt(2)) + 2*x)/sqrt(2 + sqrt(2)))/(4*sqrt(2*(2 - sqrt(2)))) + atan((sqrt(2 + sqrt(2)) + 2*x)/sqrt(2 - sqrt(2)))/(4*sqrt(2*(2 + sqrt(2)))) - (1/16)*sqrt(2 - sqrt(2))*log(1 - sqrt(2 - sqrt(2))*x + x^2) + (1/16)*sqrt(2 - sqrt(2))*log(1 + sqrt(2 - sqrt(2))*x + x^2) - (1/16)*sqrt(2 + sqrt(2))*log(1 - sqrt(2 + sqrt(2))*x + x^2) + (1/16)*sqrt(2 + sqrt(2))*log(1 + sqrt(2 + sqrt(2))*x + x^2)]
    @test_int [1/(x^8-1), x, 13, -(atan(x)/4) + atan(1 - sqrt(2)*x)/(4*sqrt(2)) - atan(1 + sqrt(2)*x)/(4*sqrt(2)) - atanh(x)/4 + log(1 - sqrt(2)*x + x^2)/(8*sqrt(2)) - log(1 + sqrt(2)*x + x^2)/(8*sqrt(2))]
    @test_int [1/(x^8-x^4+1), x, 19, -(atan((sqrt(2 - sqrt(3)) - 2*x)/sqrt(2 + sqrt(3)))/(2*sqrt(6))) - atan((sqrt(2 + sqrt(3)) - 2*x)/sqrt(2 - sqrt(3)))/(2*sqrt(6)) + atan((sqrt(2 - sqrt(3)) + 2*x)/sqrt(2 + sqrt(3)))/(2*sqrt(6)) + atan((sqrt(2 + sqrt(3)) + 2*x)/sqrt(2 - sqrt(3)))/(2*sqrt(6)) - log(1 - sqrt(2 - sqrt(3))*x + x^2)/(4*sqrt(6)) + log(1 + sqrt(2 - sqrt(3))*x + x^2)/(4*sqrt(6)) - log(1 - sqrt(2 + sqrt(3))*x + x^2)/(4*sqrt(6)) + log(1 + sqrt(2 + sqrt(3))*x + x^2)/(4*sqrt(6))]
    @test_int [x^7/(x^12+1), x, 7, -(atan((1 - 2*x^4)/sqrt(3))/(4*sqrt(3))) - (1/12)*log(1 + x^4) + (1/24)*log(1 - x^4 + x^8)]


    #= ::Section::Closed:: =#
    #=Examples*involving*logarithms=#


    @test_int [log(x), x, 1, -x + x*log(x)]
    @test_int [x*log(x), x, 1, -(x^2/4) + (1/2)*x^2*log(x)]
    @test_int [x^2*log(x), x, 1, -(x^3/9) + (1/3)*x^3*log(x)]
    @test_int [x^p*log(x), x, 1, -(x^(1 + p)/(1 + p)^2) + (x^(1 + p)*log(x))/(1 + p)]
    @test_int [(log(x))^2, x, 2, 2*x - 2*x*log(x) + x*log(x)^2]
    @test_int [x^9*log(x)^11, x, 11, -((6237*x^10)/156250000) + (6237*x^10*log(x))/15625000 - (6237*x^10*log(x)^2)/3125000 + (2079*x^10*log(x)^3)/312500 - (2079*x^10*log(x)^4)/125000 + (2079*x^10*log(x)^5)/62500 - (693*x^10*log(x)^6)/12500 + (99*x^10*log(x)^7)/1250 - (99*x^10*log(x)^8)/1000 + (11/100)*x^10*log(x)^9 - (11/100)*x^10*log(x)^10 + (1/10)*x^10*log(x)^11]
    @test_int [log(x)^2/x, x, 2, log(x)^3/3]
    @test_int [1/log(x), x, 1, LogIntegral(x)]
    @test_int [1/log(x+1), x, 2, LogIntegral(1 + x)]
    @test_int [1/(x*log(x)), x, 2, log(log(x))]
    @test_int [1/(x*log(x))^2, x, 3, -ExpIntegralEi(-log(x)) - 1/(x*log(x))]
    @test_int [(log(x))^p/x, x, 2, log(x)^(1 + p)/(1 + p)]
    @test_int [log(x)*(a*x+b), x, 2, (-b)*x - (a*x^2)/4 + b*x*log(x) + (1/2)*a*x^2*log(x)]
    @test_int [(a*x+b)^2*log(x), x, 4, (-b^2)*x - (1/2)*a*b*x^2 - (a^2*x^3)/9 - (b^3*log(x))/(3*a) + ((b + a*x)^3*log(x))/(3*a)]
    @test_int [log(x)/(a*x+b)^2, x, 2, (x*log(x))/(b*(b + a*x)) - log(b + a*x)/(a*b)]
    @test_int [x*log(a*x+b), x, 3, (b*x)/(2*a) - x^2/4 - (b^2*log(b + a*x))/(2*a^2) + (1/2)*x^2*log(b + a*x)]
    @test_int [x^2*log(a*x+b), x, 3, -((b^2*x)/(3*a^2)) + (b*x^2)/(6*a) - x^3/9 + (b^3*log(b + a*x))/(3*a^3) + (1/3)*x^3*log(b + a*x)]
    @test_int [log(x^2+a^2), x, 3, -2*x + 2*a*atan(x/a) + x*log(a^2 + x^2)]
    @test_int [x*log(x^2+a^2), x, 3, -(x^2/2) + (1/2)*(a^2 + x^2)*log(a^2 + x^2)]
    @test_int [x^2*log(x^2+a^2), x, 4, (2*a^2*x)/3 - (2*x^3)/9 - (2/3)*a^3*atan(x/a) + (1/3)*x^3*log(a^2 + x^2)]
    @test_int [x^4*log(x^2+a^2), x, 4, -((2*a^4*x)/5) + (2*a^2*x^3)/15 - (2*x^5)/25 + (2/5)*a^5*atan(x/a) + (1/5)*x^5*log(a^2 + x^2)]
    @test_int [log(x^2-a^2), x, 3, -2*x + 2*a*atanh(x/a) + x*log(-a^2 + x^2)]
    @test_int [log(log(log(log(x)))), x, 0, CannotIntegrate(log(log(log(log(x)))), x)]


    #= ::Section::Closed:: =#
    #=Examples*involving*circular*functions=#


    @test_int [sin(x), x, 1, -cos(x)]
    @test_int [cos(x), x, 1, sin(x)]
    @test_int [tan(x), x, 1, -log(cos(x))]
    @test_int [1/tan(x), x, 1, log(sin(x))]
    @test_int [1/(1+tan(x))^2, x, 2, (1/2)*log(cos(x) + sin(x)) - 1/(2*(1 + tan(x)))]
    @test_int [1/cos(x), x, 1, atanh(sin(x))]
    @test_int [1/sin(x), x, 1, -atanh(cos(x))]
    @test_int [sin(x)^2, x, 2, x/2 - (1/2)*cos(x)*sin(x)]
    @test_int [x^3*sin(x^2), x, 3, (-(1/2))*x^2*cos(x^2) + sin(x^2)/2]
    @test_int [sin(x)^3, x, 2, -cos(x) + cos(x)^3/3]
    @test_int [sin(x)^p, x, 1, (cos(x)*HypergeometricFunctions._₂F₁(1/2, (1 + p)/2, (3 + p)/2, sin(x)^2)*sin(x)^(1 + p))/((1 + p)*sqrt(cos(x)^2))]
    @test_int [(sin(x)^2+1)^2*cos(x), x, 3, sin(x) + (2*sin(x)^3)/3 + sin(x)^5/5]
    @test_int [cos(x)^2, x, 2, x/2 + (1/2)*cos(x)*sin(x)]
    @test_int [cos(x)^3, x, 2, sin(x) - sin(x)^3/3]
    @test_int [1/cos(x)^2, x, 2, tan(x)]
    @test_int [sin(x)*sin(2*x), x, 1, sin(x)/2 - (1/6)*sin(3*x)]
    @test_int [x*sin(x), x, 2, (-x)*cos(x) + sin(x)]
    @test_int [x^2*sin(x), x, 3, 2*cos(x) - x^2*cos(x) + 2*x*sin(x)]
    @test_int [x*sin(x)^2, x, 2, x^2/4 - (1/2)*x*cos(x)*sin(x) + sin(x)^2/4]
    @test_int [x^2*sin(x)^2, x, 4, -(x/4) + x^3/6 + (1/4)*cos(x)*sin(x) - (1/2)*x^2*cos(x)*sin(x) + (1/2)*x*sin(x)^2]
    @test_int [x*sin(x)^3, x, 3, (-(2/3))*x*cos(x) + (2*sin(x))/3 - (1/3)*x*cos(x)*sin(x)^2 + sin(x)^3/9]
    @test_int [x*cos(x), x, 2, cos(x) + x*sin(x)]
    @test_int [x^2*cos(x), x, 3, 2*x*cos(x) - 2*sin(x) + x^2*sin(x)]
    @test_int [x*cos(x)^2, x, 2, x^2/4 + cos(x)^2/4 + (1/2)*x*cos(x)*sin(x)]
    @test_int [x^2*cos(x)^2, x, 4, -(x/4) + x^3/6 + (1/2)*x*cos(x)^2 - (1/4)*cos(x)*sin(x) + (1/2)*x^2*cos(x)*sin(x)]
    @test_int [x*cos(x)^3, x, 3, (2*cos(x))/3 + cos(x)^3/9 + (2/3)*x*sin(x) + (1/3)*x*cos(x)^2*sin(x)]
    @test_int [sin(x)/x, x, 1, SinIntegral(x)]
    @test_int [cos(x)/x, x, 1, CosIntegral(x)]
    @test_int [sin(x)/x^2, x, 2, CosIntegral(x) - sin(x)/x]
    @test_int [sin(x)^2/x, x, 3, (-(1/2))*CosIntegral(2*x) + log(x)/2]
    @test_int [tan(x)^3, x, 2, log(cos(x)) + tan(x)^2/2]


    @test_int [sin(a+b*x), x, 1, -(cos(a + b*x)/b)]
    @test_int [cos(a+b*x), x, 1, sin(a + b*x)/b]
    @test_int [tan(a+b*x), x, 1, -(log(cos(a + b*x))/b)]
    @test_int [1/tan(a+b*x), x, 1, log(sin(a + b*x))/b]
    @test_int [1/sin(a+b*x), x, 1, -(atanh(cos(a + b*x))/b)]
    @test_int [1/cos(a+b*x), x, 1, atanh(sin(a + b*x))/b]
    @test_int [sin(a+b*x)^2, x, 2, x/2 - (cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [sin(a+b*x)^3, x, 2, -(cos(a + b*x)/b) + cos(a + b*x)^3/(3*b)]
    @test_int [cos(a+b*x)^2, x, 2, x/2 + (cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [cos(a+b*x)^3, x, 2, sin(a + b*x)/b - sin(a + b*x)^3/(3*b)]
    @test_int [1/cos(a+b*x)^2, x, 2, tan(a + b*x)/b]


    @test_int [1/(1+cos(x)), x, 1, sin(x)/(1 + cos(x))]
    @test_int [1/(1-cos(x)), x, 1, -(sin(x)/(1 - cos(x)))]
    @test_int [1/(1+sin(x)), x, 1, -(cos(x)/(1 + sin(x)))]
    @test_int [1/(1-sin(x)), x, 1, cos(x)/(1 - sin(x))]
    @test_int [1/(a+b*sin(x)), x, 3, (2*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/sqrt(a^2 - b^2)]
    @test_int [1/(a+b*sin(x)+cos(x)), x, 3, -((2*atanh((b - (1 - a)*tan(x/2))/sqrt(1 - a^2 + b^2)))/sqrt(1 - a^2 + b^2))]
    @test_int [x^2*sin(a+b*x)^2, x, 4, -(x/(4*b^2)) + x^3/6 + (cos(a + b*x)*sin(a + b*x))/(4*b^3) - (x^2*cos(a + b*x)*sin(a + b*x))/(2*b) + (x*sin(a + b*x)^2)/(2*b^2)]
    @test_int [cos(x)*cos(2*x), x, 1, sin(x)/2 + (1/6)*sin(3*x)]
    @test_int [x^2*cos(a+b*x)^2, x, 4, -(x/(4*b^2)) + x^3/6 + (x*cos(a + b*x)^2)/(2*b^2) - (cos(a + b*x)*sin(a + b*x))/(4*b^3) + (x^2*cos(a + b*x)*sin(a + b*x))/(2*b)]
    @test_int [1/tan(x)^3, x, 2, (-(1/2))*cot(x)^2 - log(sin(x))]
    @test_int [x^3*tan(x)^4, x, 17, -(x^2/2) + (4*im*x^3)/3 + x^4/4 - 4*x^2*log(1 + ℯ^(2*im*x)) + log(cos(x)) + 4*im*x*PolyLog(2, -ℯ^(2*im*x)) - 2*PolyLog(3, -ℯ^(2*im*x)) + x*tan(x) - x^3*tan(x) - (1/2)*x^2*tan(x)^2 + (1/3)*x^3*tan(x)^3]
    @test_int [x^3*tan(x)^6, x, 34, (19*x^2)/20 - (23*im*x^3)/15 - x^4/4 + (23/5)*x^2*log(1 + ℯ^(2*im*x)) - 2*log(cos(x)) - (23/5)*im*x*PolyLog(2, -ℯ^(2*im*x)) + (23/10)*PolyLog(3, -ℯ^(2*im*x)) - (19/10)*x*tan(x) + x^3*tan(x) - tan(x)^2/20 + (4/5)*x^2*tan(x)^2 + (1/10)*x*tan(x)^3 - (1/3)*x^3*tan(x)^3 - (3/20)*x^2*tan(x)^4 + (1/5)*x^3*tan(x)^5]
    @test_int [x*tan(x)^2, x, 3, -(x^2/2) + log(cos(x)) + x*tan(x)]
    @test_int [sin(2*x)*cos(3*x), x, 1, cos(x)/2 - (1/10)*cos(5*x)]
    @test_int [sin(x)^2*cos(x)^2, x, 3, x/8 + (1/8)*cos(x)*sin(x) - (1/4)*cos(x)^3*sin(x)]
    @test_int [1/(sin(x)^2*cos(x)^2), x, 3, -cot(x) + tan(x)]


    @test_int [d^x*sin(x), x, 1, -((d^x*cos(x))/(1 + log(d)^2)) + (d^x*log(d)*sin(x))/(1 + log(d)^2)]
    @test_int [d^x*cos(x), x, 1, (d^x*cos(x)*log(d))/(1 + log(d)^2) + (d^x*sin(x))/(1 + log(d)^2)]
    @test_int [x*d^x*sin(x), x, 4, (2*d^x*cos(x)*log(d))/(1 + log(d)^2)^2 - (d^x*x*cos(x))/(1 + log(d)^2) + (d^x*sin(x))/(1 + log(d)^2)^2 - (d^x*log(d)^2*sin(x))/(1 + log(d)^2)^2 + (d^x*x*log(d)*sin(x))/(1 + log(d)^2)]
    @test_int [x*d^x*cos(x), x, 4, (d^x*cos(x))/(1 + log(d)^2)^2 - (d^x*cos(x)*log(d)^2)/(1 + log(d)^2)^2 + (d^x*x*cos(x)*log(d))/(1 + log(d)^2) - (2*d^x*log(d)*sin(x))/(1 + log(d)^2)^2 + (d^x*x*sin(x))/(1 + log(d)^2)]
    @test_int [x^2*d^x*sin(x), x, 11, (2*d^x*cos(x))/(1 + log(d)^2)^3 - (6*d^x*cos(x)*log(d)^2)/(1 + log(d)^2)^3 + (4*d^x*x*cos(x)*log(d))/(1 + log(d)^2)^2 - (d^x*x^2*cos(x))/(1 + log(d)^2) - (6*d^x*log(d)*sin(x))/(1 + log(d)^2)^3 + (2*d^x*log(d)^3*sin(x))/(1 + log(d)^2)^3 + (2*d^x*x*sin(x))/(1 + log(d)^2)^2 - (2*d^x*x*log(d)^2*sin(x))/(1 + log(d)^2)^2 + (d^x*x^2*log(d)*sin(x))/(1 + log(d)^2)]
    @test_int [x^2*d^x*cos(x), x, 11, -((6*d^x*cos(x)*log(d))/(1 + log(d)^2)^3) + (2*d^x*cos(x)*log(d)^3)/(1 + log(d)^2)^3 + (2*d^x*x*cos(x))/(1 + log(d)^2)^2 - (2*d^x*x*cos(x)*log(d)^2)/(1 + log(d)^2)^2 + (d^x*x^2*cos(x)*log(d))/(1 + log(d)^2) - (2*d^x*sin(x))/(1 + log(d)^2)^3 + (6*d^x*log(d)^2*sin(x))/(1 + log(d)^2)^3 - (4*d^x*x*log(d)*sin(x))/(1 + log(d)^2)^2 + (d^x*x^2*sin(x))/(1 + log(d)^2)]
    @test_int [x^3*d^x*sin(x), x, 25, -((24*d^x*cos(x)*log(d))/(1 + log(d)^2)^4) + (24*d^x*cos(x)*log(d)^3)/(1 + log(d)^2)^4 + (6*d^x*x*cos(x))/(1 + log(d)^2)^3 - (18*d^x*x*cos(x)*log(d)^2)/(1 + log(d)^2)^3 + (6*d^x*x^2*cos(x)*log(d))/(1 + log(d)^2)^2 - (d^x*x^3*cos(x))/(1 + log(d)^2) - (6*d^x*sin(x))/(1 + log(d)^2)^4 + (36*d^x*log(d)^2*sin(x))/(1 + log(d)^2)^4 - (6*d^x*log(d)^4*sin(x))/(1 + log(d)^2)^4 - (18*d^x*x*log(d)*sin(x))/(1 + log(d)^2)^3 + (6*d^x*x*log(d)^3*sin(x))/(1 + log(d)^2)^3 + (3*d^x*x^2*sin(x))/(1 + log(d)^2)^2 - (3*d^x*x^2*log(d)^2*sin(x))/(1 + log(d)^2)^2 + (d^x*x^3*log(d)*sin(x))/(1 + log(d)^2)]
    @test_int [x^3*d^x*cos(x), x, 25, -((6*d^x*cos(x))/(1 + log(d)^2)^4) + (36*d^x*cos(x)*log(d)^2)/(1 + log(d)^2)^4 - (6*d^x*cos(x)*log(d)^4)/(1 + log(d)^2)^4 - (18*d^x*x*cos(x)*log(d))/(1 + log(d)^2)^3 + (6*d^x*x*cos(x)*log(d)^3)/(1 + log(d)^2)^3 + (3*d^x*x^2*cos(x))/(1 + log(d)^2)^2 - (3*d^x*x^2*cos(x)*log(d)^2)/(1 + log(d)^2)^2 + (d^x*x^3*cos(x)*log(d))/(1 + log(d)^2) + (24*d^x*log(d)*sin(x))/(1 + log(d)^2)^4 - (24*d^x*log(d)^3*sin(x))/(1 + log(d)^2)^4 - (6*d^x*x*sin(x))/(1 + log(d)^2)^3 + (18*d^x*x*log(d)^2*sin(x))/(1 + log(d)^2)^3 - (6*d^x*x^2*log(d)*sin(x))/(1 + log(d)^2)^2 + (d^x*x^3*sin(x))/(1 + log(d)^2)]


    @test_int [sin(x)*sin(2*x)*sin(3*x), x, 5, (-(1/8))*cos(2*x) - (1/16)*cos(4*x) + (1/24)*cos(6*x)]
    @test_int [cos(x)*cos(2*x)*cos(3*x), x, 5, x/4 + (1/8)*sin(2*x) + (1/16)*sin(4*x) + (1/24)*sin(6*x)]
    @test_int [sin(k*x)^3*x^2, x, 6, (14*cos(k*x))/(9*k^3) - (2*x^2*cos(k*x))/(3*k) - (2*cos(k*x)^3)/(27*k^3) + (4*x*sin(k*x))/(3*k^2) - (x^2*cos(k*x)*sin(k*x)^2)/(3*k) + (2*x*sin(k*x)^3)/(9*k^2)]
    @test_int [x*cos(k/sin(x))*cos(x)/sin(x)^2, x, 0, CannotIntegrate(x*cos(k*csc(x))*cot(x)*csc(x), x)]


    #= Mixed*angles*and*half*angles. =#
    @test_int [cos(x)/(sin(x)*tan(x/2)), x, 4, -x - cot(x/2)]
    @test_int [sin(a*x)/(b+c*sin(a*x))^2, x, 5, -((2*c*atan((c + b*tan((a*x)/2))/sqrt(b^2 - c^2)))/(a*(b^2 - c^2)^(3/2))) - (b*cos(a*x))/(a*(b^2 - c^2)*(b + c*sin(a*x)))]


    #= ::Section::Closed:: =#
    #=Examples*involving*trig*functions*of*logarithms=#


    @test_int [sin(log(x)), x, 1, (-(1/2))*x*cos(log(x)) + (1/2)*x*sin(log(x))]
    @test_int [cos(log(x)), x, 1, (1/2)*x*cos(log(x)) + (1/2)*x*sin(log(x))]


    #= ::Section::Closed:: =#
    #=Examples*involving*exponentials=#


    @test_int [ℯ^x, x, 1, ℯ^x]
    @test_int [a^x, x, 1, a^x/log(a)]
    @test_int [ℯ^(a*x), x, 1, ℯ^(a*x)/a]
    @test_int [ℯ^(a*x)/x, x, 1, ExpIntegralEi(a*x)]
    @test_int [1/(a+b*ℯ^(m*x)), x, 4, x/a - log(a + b*ℯ^(m*x))/(a*m)]
    @test_int [ℯ^(2*x)/(1+ℯ^x), x, 3, ℯ^x - log(1 + ℯ^x)]
    @test_int [ℯ^(2*x)*ℯ^(a*x), x, 2, ℯ^((2 + a)*x)/(2 + a)]
    @test_int [1/(a*ℯ^(m*x)+b*ℯ^(-m*x)), x, 2, atan((sqrt(a)*ℯ^(m*x))/sqrt(b))/(sqrt(a)*sqrt(b)*m)]
    @test_int [x*ℯ^(a*x), x, 2, -(ℯ^(a*x)/a^2) + (ℯ^(a*x)*x)/a]
    @test_int [x^20*ℯ^x, x, 21, 2432902008176640000*ℯ^x - 2432902008176640000*ℯ^x*x + 1216451004088320000*ℯ^x*x^2 - 405483668029440000*ℯ^x*x^3 + 101370917007360000*ℯ^x*x^4 - 20274183401472000*ℯ^x*x^5 + 3379030566912000*ℯ^x*x^6 - 482718652416000*ℯ^x*x^7 + 60339831552000*ℯ^x*x^8 - 6704425728000*ℯ^x*x^9 + 670442572800*ℯ^x*x^10 - 60949324800*ℯ^x*x^11 + 5079110400*ℯ^x*x^12 - 390700800*ℯ^x*x^13 + 27907200*ℯ^x*x^14 - 1860480*ℯ^x*x^15 + 116280*ℯ^x*x^16 - 6840*ℯ^x*x^17 + 380*ℯ^x*x^18 - 20*ℯ^x*x^19 + ℯ^x*x^20]
    @test_int [a^x/b^x, x, 2, a^x/(b^x*(log(a) - log(b)))]
    @test_int [a^x*b^x, x, 2, (a^x*b^x)/(log(a) + log(b))]
    @test_int [a^x/x^2, x, 2, -(a^x/x) + ExpIntegralEi(x*log(a))*log(a)]
    @test_int [x*a^x/(1+b*x)^2, x, 5, a^x/(b^2*(1 + b*x)) + ExpIntegralEi(((1 + b*x)*log(a))/b)/(a^b^(-1)*b^2) - (ExpIntegralEi(((1 + b*x)*log(a))/b)*log(a))/(a^b^(-1)*b^3)]
    @test_int [x*ℯ^(a*x)/(1+a*x)^2, x, 1, ℯ^(a*x)/(a^2*(1 + a*x))]
    @test_int [x*k^(x^2), x, 1, k^x^2/(2*log(k))]
    @test_int [ℯ^(x^2), x, 1, (1/2)*sqrt(pi)*erfi(x)]
    @test_int [x*ℯ^(x^2), x, 1, ℯ^x^2/2]
    @test_int [(x+1)*ℯ^(1/x)/x^4, x, 7, -ℯ^(1/x) - ℯ^(1/x)/x^2 + ℯ^(1/x)/x]
    @test_int [(2*x^3+x)*(ℯ^(x^2))^2*ℯ^(1-x*ℯ^(x^2))/(1-x*ℯ^(x^2))^2, x, -3, -(ℯ^(1 - ℯ^x^2*x)/(-1 + ℯ^x^2*x))]
    @test_int [ℯ^(ℯ^(ℯ^(ℯ^x))), x, 1, CannotIntegrate(ℯ^ℯ^ℯ^ℯ^x, x)]


    #= Examples*involving*exponentials*and*logarithms. =#
    @test_int [ℯ^x*log(x), x, 2, -ExpIntegralEi(x) + ℯ^x*log(x)]
    @test_int [x*ℯ^x*log(x), x, 5, -ℯ^x + ExpIntegralEi(x) - ℯ^x*log(x) + ℯ^x*x*log(x)]
    @test_int [ℯ^(2*x)*log(ℯ^x), x, 3, -(ℯ^(2*x)/4) + (1/2)*ℯ^(2*x)*log(ℯ^x)]


    #= ::Section::Closed:: =#
    #=Examples*involving*square*roots=#


    @test_int [sqrt(2)*x^2 + 2*x, x, 1, x^2 + (sqrt(2)*x^3)/3]
    @test_int [log(x)/sqrt(a*x+b), x, 4, -((4*sqrt(b + a*x))/a) + (4*sqrt(b)*atanh(sqrt(b + a*x)/sqrt(b)))/a + (2*sqrt(b + a*x)*log(x))/a]
    @test_int [sqrt(a+b*x)*sqrt(c+d*x), x, 5, ((b*c - a*d)*sqrt(a + b*x)*sqrt(c + d*x))/(4*b*d) + ((a + b*x)^(3/2)*sqrt(c + d*x))/(2*b) - ((b*c - a*d)^2*atanh((sqrt(d)*sqrt(a + b*x))/(sqrt(b)*sqrt(c + d*x))))/(4*b^(3/2)*d^(3/2))]
    @test_int [sqrt(a+b*x), x, 1, (2*(a + b*x)^(3/2))/(3*b)]
    @test_int [x*sqrt(a+b*x), x, 2, -((2*a*(a + b*x)^(3/2))/(3*b^2)) + (2*(a + b*x)^(5/2))/(5*b^2)]
    @test_int [x^2*sqrt(a+b*x), x, 2, (2*a^2*(a + b*x)^(3/2))/(3*b^3) - (4*a*(a + b*x)^(5/2))/(5*b^3) + (2*(a + b*x)^(7/2))/(7*b^3)]
    @test_int [sqrt(a+b*x)/x, x, 3, 2*sqrt(a + b*x) - 2*sqrt(a)*atanh(sqrt(a + b*x)/sqrt(a))]
    @test_int [sqrt(a+b*x)/x^2, x, 3, -(sqrt(a + b*x)/x) - (b*atanh(sqrt(a + b*x)/sqrt(a)))/sqrt(a)]
    @test_int [1/sqrt(a+b*x), x, 1, (2*sqrt(a + b*x))/b]
    @test_int [x/sqrt(a+b*x), x, 2, -((2*a*sqrt(a + b*x))/b^2) + (2*(a + b*x)^(3/2))/(3*b^2)]
    @test_int [x^2/sqrt(a+b*x), x, 2, (2*a^2*sqrt(a + b*x))/b^3 - (4*a*(a + b*x)^(3/2))/(3*b^3) + (2*(a + b*x)^(5/2))/(5*b^3)]
    @test_int [1/(x*sqrt(a+b*x)), x, 2, -((2*atanh(sqrt(a + b*x)/sqrt(a)))/sqrt(a))]
    @test_int [1/(x^2*sqrt(a+b*x)), x, 3, -(sqrt(a + b*x)/(a*x)) + (b*atanh(sqrt(a + b*x)/sqrt(a)))/a^(3/2)]
    @test_int [sqrt(a+b*x)^p, x, 1, (2*(a + b*x)^((2 + p)/2))/(b*(2 + p))]
    @test_int [x*sqrt(a+b*x)^p, x, 2, -((2*a*(a + b*x)^((2 + p)/2))/(b^2*(2 + p))) + (2*(a + b*x)^((4 + p)/2))/(b^2*(4 + p))]
    @test_int [atan((-sqrt(2)+2*x)/sqrt(2)), x, 6, atan(1 - sqrt(2)*x)/sqrt(2) - x*atan(1 - sqrt(2)*x) - log(1 - sqrt(2)*x + x^2)/(2*sqrt(2))]
    @test_int [1/sqrt(x^2-1), x, 2, atanh(x/sqrt(-1 + x^2))]
    @test_int [sqrt(x+1)*sqrt(x), x, 4, (1/4)*sqrt(x)*sqrt(1 + x) + (1/2)*x^(3/2)*sqrt(1 + x) - asinh(sqrt(x))/4]


    @test_int [sin(sqrt(x)), x, 3, -2*sqrt(x)*cos(sqrt(x)) + 2*sin(sqrt(x))]
    @test_int [x*sqrt(1 - x^2)^(-9/4), x, 1, 4/(1 - x^2)^(1/8)]
    @test_int [x/sqrt(1 - x^4), x, 2, asin(x^2)/2]
    @test_int [1/(x*sqrt(1 + x^4)), x, 3, (-(1/2))*atanh(sqrt(1 + x^4))]
    @test_int [x/sqrt(1 + x^2 + x^4), x, 3, (1/2)*asinh((1 + 2*x^2)/sqrt(3))]
    @test_int [1/(x*sqrt(x^2 - 1 - x^4)), x, 3, (-(1/2))*atan((2 - x^2)/(2*sqrt(-1 + x^2 - x^4)))]


    #= Examples*generated*by*differentiating*various*functions. =#
    @test_int [(1 + x)/((1 - x)^2*sqrt(1 + x^2)), x, 1, sqrt(1 + x^2)/(1 - x)]
    @test_int [1/sqrt(1 + x^2), x, 1, asinh(x)]
    @test_int [(sqrt(x)*sqrt(1 + x) + sqrt(x)*sqrt(2 + x) + sqrt(1 + x)*sqrt(2 + x))/(2*sqrt(x)*sqrt(1 + x)*sqrt(2 + x)), x, 3, sqrt(x) + sqrt(1 + x) + sqrt(2 + x)]
    @test_int [(-2*sqrt(1 + x^3) + 5*x^4*sqrt(1 + x^3) - 3*x^2*sqrt(1 - 2*x + x^5))/(2*sqrt(1 + x^3)*sqrt(1 - 2*x + x^5)), x, 5, -sqrt(1 + x^3) + sqrt(1 - 2*x + x^5)]


    #= ::Section::Closed:: =#
    #=Examples*from*James*Davenport's*thesis=#


    @test_int [1/sqrt(x^2-1)+10/sqrt(x^2-4), x, 5, 10*atanh(x/sqrt(-4 + x^2)) + atanh(x/sqrt(-1 + x^2))]
    @test_int [sqrt(x+sqrt(x^2+a^2))/x, x, 6, 2*sqrt(x + sqrt(a^2 + x^2)) - 2*sqrt(a)*atan(sqrt(x + sqrt(a^2 + x^2))/sqrt(a)) - 2*sqrt(a)*atanh(sqrt(x + sqrt(a^2 + x^2))/sqrt(a))]


    #= Another*such*example*from*James*Davenport's*thesis*(p. 146). =#
    #= It*contains*a*point*of*order*3, which*is*found*by*use*of*Mazur's =#
    #= bound*on*the*torsion*of*elliptic*curves*over*the*rationals; =#
    @test_int [(3*x^2)/(2*(1 + x^3 + sqrt(1 + x^3))), x, 4, log(1 + sqrt(1 + x^3))]


    #= ::Section::Closed:: =#
    #=Examples*quoted*by*Joel*Moses=#


    @test_int [1/sqrt(2*h*r^2-alpha^2), r, 2, atanh((sqrt(2)*sqrt(h)*r)/sqrt(-alpha^2 + 2*h*r^2))/(sqrt(2)*sqrt(h))]
    @test_int [1/(r*sqrt(2*h*r^2-alpha^2-epsilon^2)), r, 3, atan(sqrt(-alpha^2 - epsilon^2 + 2*h*r^2)/sqrt(alpha^2 + epsilon^2))/sqrt(alpha^2 + epsilon^2)]
    @test_int [1/(r*sqrt(2*h*r^2-alpha^2-2*k*r)), r, 2, -(atan((alpha^2 + k*r)/(alpha*sqrt(-alpha^2 - 2*k*r + 2*h*r^2)))/alpha)]
    @test_int [1/(r*sqrt(2*h*r^2-alpha^2-epsilon^2-2*k*r)), r, 2, -(atan((alpha^2 + epsilon^2 + k*r)/(sqrt(alpha^2 + epsilon^2)*sqrt(-alpha^2 - epsilon^2 - 2*k*r + 2*h*r^2)))/sqrt(alpha^2 + epsilon^2))]
    @test_int [r/sqrt(2*e*r^2-alpha^2), r, 1, sqrt(-alpha^2 + 2*e*r^2)/(2*e)]
    @test_int [r/sqrt(2*e*r^2-alpha^2-epsilon^2), r, 1, sqrt(-alpha^2 - epsilon^2 + 2*e*r^2)/(2*e)]
    @test_int [r/sqrt(2*e*r^2-alpha^2-2*k*r^4), r, 3, -(atan((e - 2*k*r^2)/(sqrt(2)*sqrt(k)*sqrt(-alpha^2 + 2*e*r^2 - 2*k*r^4)))/(2*sqrt(2)*sqrt(k)))]
    @test_int [r/sqrt(2*e*r^2-alpha^2-2*k*r), r, 3, sqrt(-alpha^2 - 2*k*r + 2*e*r^2)/(2*e) - (k*atanh((k - 2*e*r)/(sqrt(2)*sqrt(e)*sqrt(-alpha^2 - 2*k*r + 2*e*r^2))))/(2*sqrt(2)*e^(3/2))]
    @test_int [1/(r*sqrt(2*h*r^2-alpha^2-2*k*r^4)), r, 3, -(atan((alpha^2 - h*r^2)/(alpha*sqrt(-alpha^2 + 2*h*r^2 - 2*k*r^4)))/(2*alpha))]
    @test_int [1/(r*sqrt(2*h*r^2-alpha^2-epsilon^2-2*k*r^4)), r, 3, -(atan((alpha^2 + epsilon^2 - h*r^2)/(sqrt(alpha^2 + epsilon^2)*sqrt(-alpha^2 - epsilon^2 + 2*h*r^2 - 2*k*r^4)))/(2*sqrt(alpha^2 + epsilon^2)))]


    #= ::Section::Closed:: =#
    #=Examples*from*Novosibirsk=#


    #= Many*of*these*integrals*used*to*require*Steve*Harrington's*code*to*evaluate. =#
    #= They*originated*in*Novosibirsk*as*examples*of*using*Analytik. =#
    #= There*are*still*a*few*examples*that*could*be*evaluated*using*better*heuristics. =#

    @test_int [a*sin(3*x+5)^2*cos(3*x+5), x, 3, (1/9)*a*sin(5 + 3*x)^3]
    @test_int [log(x^2)/x^3, x, 1, -(1/(2*x^2)) - log(x^2)/(2*x^2)]
    @test_int [x*sin(x+a), x, 2, (-x)*cos(a + x) + sin(a + x)]
    @test_int [(log(x)*(1-x)-1)/(ℯ^x*log(x)^2), x, 1, x/(ℯ^x*log(x))]
    @test_int [x^3/(a*x^2+b), x, 3, x^2/(2*a) - (b*log(b + a*x^2))/(2*a^2)]
    @test_int [x^(1/2)*(x+1)^(-7/2), x, 2, (2*x^(3/2))/(5*(1 + x)^(5/2)) + (4*x^(3/2))/(15*(1 + x)^(3/2))]
    @test_int [x^(-1)*(x+1)^(-1), x, 3, log(x) - log(1 + x)]
    @test_int [x^(-1/2)*(2*x-1)^(-1), x, 2, (-sqrt(2))*atanh(sqrt(2)*sqrt(x))]
    @test_int [(x^2+1)*x^(1/2), x, 2, (2*x^(3/2))/3 + (2*x^(7/2))/7]
    @test_int [x^(-1)*(x-a)^(1/3), x, 5, 3*(-a + x)^(1/3) + sqrt(3)*a^(1/3)*atan((a^(1/3) - 2*(-a + x)^(1/3))/(sqrt(3)*a^(1/3))) + (1/2)*a^(1/3)*log(x) - (3/2)*a^(1/3)*log(a^(1/3) + (-a + x)^(1/3))]
    @test_int [x*sinh(x), x, 2, x*cosh(x) - sinh(x)]
    @test_int [x*cosh(x), x, 2, -cosh(x) + x*sinh(x)]
    @test_int [sinh(2*x)/cosh(2*x), x, 1, (1/2)*log(cosh(2*x))]
    @test_int [(im*eps*sinh(x)-1)/(eps*im*cosh(x)+im*a-x), x, 1, log(a + im*x + eps*cosh(x))]
    @test_int [sin(2*x+3)*cos(x)^2, x, 4, (-(1/4))*cos(3 + 2*x) - (1/16)*cos(3 + 4*x) + (1/4)*x*sin(3)]
    @test_int [x*atan(x), x, 3, -(x/2) + atan(x)/2 + (1/2)*x^2*atan(x)]
    @test_int [x*acot(x), x, 3, x/2 + (1/2)*x^2*acot(x) - atan(x)/2]
    @test_int [x*log(x^2+a), x, 3, -(x^2/2) + (1/2)*(a + x^2)*log(a + x^2)]
    @test_int [sin(x+a)*cos(x), x, 3, (-(1/4))*cos(a + 2*x) + (1/2)*x*sin(a)]
    @test_int [cos(x+a)*sin(x), x, 3, (-(1/4))*cos(a + 2*x) - (1/2)*x*sin(a)]
    @test_int [(1+sin(x))^(1/2), x, 1, -((2*cos(x))/sqrt(1 + sin(x)))]
    @test_int [(1-sin(x))^(1/2), x, 1, (2*cos(x))/sqrt(1 - sin(x))]
    @test_int [(1+cos(x))^(1/2), x, 1, (2*sin(x))/sqrt(1 + cos(x))]
    @test_int [(1-cos(x))^(1/2), x, 1, -((2*sin(x))/sqrt(1 - cos(x)))]
    @test_int [1/(x^(1/2)-(x-1)^(1/2)), x, 3, (2/3)*(-1 + x)^(3/2) + (2*x^(3/2))/3]
    @test_int [1/(1-(x+1)^(1/2)), x, 4, -2*sqrt(1 + x) - 2*log(1 - sqrt(1 + x))]
    @test_int [x/(x^4+36)^(1/2), x, 2, (1/2)*asinh(x^2/6)]
    @test_int [1/(x^(1/3)+x^(1/2)), x, 4, 6*x^(1/6) - 3*x^(1/3) + 2*sqrt(x) - 6*log(1 + x^(1/6))]
    @test_int [log(2+3*x^2), x, 3, -2*x + 2*sqrt(2/3)*atan(sqrt(3/2)*x) + x*log(2 + 3*x^2)]
    @test_int [cot(x), x, 1, log(sin(x))]
    @test_int [cot(x)^4, x, 3, x + cot(x) - cot(x)^3/3]
    @test_int [tanh(x), x, 1, log(cosh(x))]
    @test_int [coth(x), x, 1, log(sinh(x))]
    @test_int [b^x, x, 1, b^x/log(b)]
    @test_int [(x^4+x^(-4)+2)^(1/2), x, 4, -((x*sqrt(2 + 1/x^4 + x^4))/(1 + x^4)) + (x^5*sqrt(2 + 1/x^4 + x^4))/(3*(1 + x^4))]
    @test_int [(2*x+1)/(3*x+2), x, 2, (2*x)/3 - (1/9)*log(2 + 3*x)]
    @test_int [x*log(x+(x^2+1)^(1/2)), x, 3, (-(1/4))*x*sqrt(1 + x^2) + asinh(x)/4 + (1/2)*x^2*log(x + sqrt(1 + x^2))]
    @test_int [x*(ℯ^x*sin(x)+1)^2, x, 14, -((3*ℯ^(2*x))/32) + (1/8)*ℯ^(2*x)*x + x^2/2 + ℯ^x*cos(x) - ℯ^x*x*cos(x) - (1/32)*ℯ^(2*x)*cos(2*x) + ℯ^x*x*sin(x) + (1/16)*ℯ^(2*x)*cos(x)*sin(x) - (1/4)*ℯ^(2*x)*x*cos(x)*sin(x) - (1/16)*ℯ^(2*x)*sin(x)^2 + (1/4)*ℯ^(2*x)*x*sin(x)^2 + (1/32)*ℯ^(2*x)*sin(2*x)]
    @test_int [x*ℯ^x*cos(x), x, 4, (1/2)*ℯ^x*x*cos(x) - (1/2)*ℯ^x*sin(x) + (1/2)*ℯ^x*x*sin(x)]


    #= ::Section::Closed:: =#
    #=Examples*from*Herbert*Stoyan=#


    @test_int [1/(x-3)^4, x, 1, 1/(3*(3 - x)^3)]
    @test_int [x/(x^3-1), x, 6, atan((1 + 2*x)/sqrt(3))/sqrt(3) + (1/3)*log(1 - x) - (1/6)*log(1 + x + x^2)]
    @test_int [x/(x^4-1), x, 2, (-(1/2))*atanh(x^2)]
    @test_int [log(x)*(x^3+1)/(x^4+2), x, 10, (1/8)*(2 + im*(-2)^(1/4))*log(x)*log(1 - ((1 + im)*x)/2^(3/4)) + (1/16)*(4 + (1 - im)*2^(3/4))*log(x)*log(1 + ((1 + im)*x)/2^(3/4)) + (1/8)*(2 + (-2)^(1/4))*log(x)*log(1 - ((-1)^(3/4)*x)/2^(1/4)) + (1/8)*(2 - (-2)^(1/4))*log(x)*log(1 + ((-1)^(3/4)*x)/2^(1/4)) + (1/16)*(4 + (1 - im)*2^(3/4))*PolyLog(2, -(((1 + im)*x)/2^(3/4))) + (1/8)*(2 + im*(-2)^(1/4))*PolyLog(2, ((1 + im)*x)/2^(3/4)) + (1/8)*(2 - (-2)^(1/4))*PolyLog(2, -(((-1)^(3/4)*x)/2^(1/4))) + (1/8)*(2 + (-2)^(1/4))*PolyLog(2, ((-1)^(3/4)*x)/2^(1/4))]
    @test_int [log(x)+log(x+1)+log(x+2), x, 6, -3*x + x*log(x) + (1 + x)*log(1 + x) + (2 + x)*log(2 + x)]
    @test_int [1/(x^3+5), x, 6, -(atan((5^(1/3) - 2*x)/(sqrt(3)*5^(1/3)))/(sqrt(3)*5^(2/3))) + log(5^(1/3) + x)/(3*5^(2/3)) - log(5^(2/3) - 5^(1/3)*x + x^2)/(6*5^(2/3))]
    @test_int [1/sqrt(1+x^2), x, 1, asinh(x)]
    @test_int [sqrt(x^2+3), x, 2, (1/2)*x*sqrt(3 + x^2) + (3/2)*asinh(x/sqrt(3))]
    @test_int [x/(x+1)^2, x, 2, 1/(1 + x) + log(1 + x)]


    #= ::Section::Closed:: =#
    #=Examples*from*Moses' SIN*program=#


    @test_int [asin(x), x, 2, sqrt(1 - x^2) + x*asin(x)]
    @test_int [x^2*asin(x), x, 4, sqrt(1 - x^2)/3 - (1/9)*(1 - x^2)^(3/2) + (1/3)*x^3*asin(x)]
    @test_int [sec(x)^2/(1+sec(x)^2-3*tan(x)), x, 4, -log(cos(x) - sin(x)) + log(2*cos(x) - sin(x))]
    @test_int [1/sec(x)^2, x, 2, x/2 + (1/2)*cos(x)*sin(x)]
    @test_int [(5*x^2-3*x-2)/(x^2*(x-2)), x, 2, -(1/x) + 3*log(2 - x) + 2*log(x)]
    @test_int [1/(4*x^2+9)^(1/2), x, 1, (1/2)*asinh((2*x)/3)]
    @test_int [(x^2+4)^(-1/2), x, 1, asinh(x/2)]
    @test_int [1/(9*x^2-12*x+10), x, 2, -(atan((2 - 3*x)/sqrt(6))/(3*sqrt(6)))]
    @test_int [1/(x^8-2*x^7+2*x^6-2*x^5+x^4), x, 3, 1/(2*(1 - x)) - 1/(3*x^3) - 1/x^2 - 2/x - (5/2)*log(1 - x) + 2*log(x) + (1/4)*log(1 + x^2)]
    @test_int [(a*x^3+b*x^2+c*x+d)/((x+1)*x*(x-3)), x, 2, a*x + (1/12)*(27*a + 9*b + 3*c + d)*log(3 - x) - (1/3)*d*log(x) - (1/4)*(a - b + c - d)*log(1 + x)]
    @test_int [1/(2-log(x^2+1))^5, x, 0, Unintegrable(1/(2 - log(1 + x^2))^5, x)]


    #= ::Section::Closed:: =#
    #=Miscellaneous*examples=#


    #= The*next*integral*appeared*in*Risch's*1968*paper. =#

    @test_int [2*x*ℯ^(x^2)*log(x)+ℯ^(x^2)/x+(log(x)-2)/(log(x)^2+x)^2+((2/x)*log(x)+(1/x)+1)/(log(x)^2+x), x, 9, ℯ^x^2*log(x) - log(x)/(x + log(x)^2) + log(x + log(x)^2)]


    #= The*following*integral*would*not*evaluate*in*REDUCE*3.3.0. =#

    @test_int [exp(x*z+x/2)*sin(pi*z)^4*x^4, z, 4, (24*ℯ^(x/2 + x*z)*pi^4*x^3)/(64*pi^4 + 20*pi^2*x^2 + x^4) - (24*ℯ^(x/2 + x*z)*pi^3*x^4*cos(pi*z)*sin(pi*z))/(64*pi^4 + 20*pi^2*x^2 + x^4) + (12*ℯ^(x/2 + x*z)*pi^2*x^5*sin(pi*z)^2)/(64*pi^4 + 20*pi^2*x^2 + x^4) - (4*ℯ^(x/2 + x*z)*pi*x^4*cos(pi*z)*sin(pi*z)^3)/(16*pi^2 + x^2) + (ℯ^(x/2 + x*z)*x^5*sin(pi*z)^4)/(16*pi^2 + x^2)]


    #= Examples*involving*the*error*function. =#

    @test_int [erf(x), x, 1, 1/(ℯ^x^2*sqrt(pi)) + x*erf(x)]
    @test_int [erf(x+a), x, 1, 1/(ℯ^(a + x)^2*sqrt(pi)) + (a + x)*erf(a + x)]


    #= Some*interesting*integrals*of*algebraic*functions; =#
    #= The*Chebyshev*integral. =#

    @test_int [(2*x^6+4*x^5+7*x^4-3*x^3-x*x-8*x-8)/((2*x^2-1)^2*sqrt(x^4+4*x^3+2*x^2+1)), x, -10, ((1 + 2*x)*sqrt(1 + 2*x^2 + 4*x^3 + x^4))/(2*(-1 + 2*x^2)) - atanh((x*(2 + x)*(7 - x + 27*x^2 + 33*x^3))/((2 + 37*x^2 + 31*x^3)*sqrt(1 + 2*x^2 + 4*x^3 + x^4)))]


    #= This*integral*came*from*Dr. G.S. Joyce*of*Imperial*College*London. =#

    @test_int [(1+2*y)*sqrt(1-5*y-5*y^2)/(y*(1+y)*(2+y)*sqrt(1-y-y^2)), y, -2, (-(1/4))*atanh(((1 - 3*y)*sqrt(1 - 5*y - 5*y^2))/((1 - 5*y)*sqrt(1 - y - y^2))) - (1/2)*atanh(((4 + 3*y)*sqrt(1 - 5*y - 5*y^2))/((6 + 5*y)*sqrt(1 - y - y^2))) + (9/4)*atanh(((11 + 7*y)*sqrt(1 - 5*y - 5*y^2))/(3*(7 + 5*y)*sqrt(1 - y - y^2)))]


    #= This*one*has*a*simple*result. =#

    @test_int [x*(sqrt(x^2-1)*x^2-4*sqrt(x^2-1)+sqrt(x^2-4)*x^2-sqrt(x^2-4))/((1+sqrt(x^2-4)+sqrt(x^2-1))*(x^4-5*x^2+4)), x, 1, log(1 + sqrt(-4 + x^2) + sqrt(-1 + x^2))]


    #= This*used*to*reveal*bugs*in*the*integrator*which*have*been*fixed. =#

    @test_int [sqrt(-4*sqrt(2) + 9)*x - sqrt(x^4 + 2*x^2 + 4*x + 1)*sqrt(2), x, -1, (1/2)*sqrt(9 - 4*sqrt(2))*x^2 - sqrt(2)*((-(1/3))*sqrt(1 + 4*x + 2*x^2 + x^4) + (1/3)*(1 + x)*sqrt(1 + 4*x + 2*x^2 + x^4) + (4*im*(-13 + 3*sqrt(33))^(1/3)*sqrt(1 + 4*x + 2*x^2 + x^4))/(4*2^(2/3)*(-im + sqrt(3)) - 2*im*(-13 + 3*sqrt(33))^(1/3) + 2^(1/3)*(im + sqrt(3))*(-13 + 3*sqrt(33))^(2/3) + 6*im*(-13 + 3*sqrt(33))^(1/3)*x) - (8*2^(2/3)*sqrt(3/(-13 + 3*sqrt(33) + 4*(-26 + 6*sqrt(33))^(1/3)))*sqrt((im*(-19899 + 3445*sqrt(33) + (-26 + 6*sqrt(33))^(2/3)*(-2574 + 466*sqrt(33)) + (-26 + 6*sqrt(33))^(1/3)*(-19899 + 3445*sqrt(33)) + (59697 - 10335*sqrt(33))*x))/((-39 - 13*im*sqrt(3) + 9*im*sqrt(11) + 9*sqrt(33) + 4*im*(3*im + sqrt(3))*(-26 + 6*sqrt(33))^(1/3))*(26 - 6*sqrt(33) + (-13 + 13*im*sqrt(3) - 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + (-4 - 4*im*sqrt(3))*(-26 + 6*sqrt(33))^(2/3) + 6*(-13 + 3*sqrt(33))*x)))*sqrt(1 + 4*x + 2*x^2 + x^4)*Elliptic.E(asin(sqrt(26 - 6*sqrt(33) + (-13 - 13*im*sqrt(3) + 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + 4*im*(im + sqrt(3))*(-26 + 6*sqrt(33))^(2/3) + 6*(-13 + 3*sqrt(33))*x)/(sqrt((39 + 13*im*sqrt(3) - 9*im*sqrt(11) - 9*sqrt(33) + 4*(3 - im*sqrt(3))*(-26 + 6*sqrt(33))^(1/3))/(39 - 13*im*sqrt(3) + 9*im*sqrt(11) - 9*sqrt(33) + 4*(3 + im*sqrt(3))*(-26 + 6*sqrt(33))^(1/3)))*sqrt(26 - 6*sqrt(33) + (-13 + 13*im*sqrt(3) - 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + (-4 - 4*im*sqrt(3))*(-26 + 6*sqrt(33))^(2/3) + 6*(-13 + 3*sqrt(33))*x))), (4*(21 + 7*im*sqrt(3) - 3*im*sqrt(11) - 3*sqrt(33)) + (3 - im*sqrt(3) - 3*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3))/(4*(21 - 7*im*sqrt(3) + 3*im*sqrt(11) - 3*sqrt(33)) + (3 + im*sqrt(3) + 3*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3))))/((4*2^(2/3) - (-13 + 3*sqrt(33))^(1/3) - 2^(1/3)*(-13 + 3*sqrt(33))^(2/3) + 3*(-13 + 3*sqrt(33))^(1/3)*x)*sqrt((im*(1 + x))/((104 - 24*sqrt(33) + (-13 - 13*im*sqrt(3) + 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + 4*im*(im + sqrt(3))*(-26 + 6*sqrt(33))^(2/3))*(26 - 6*sqrt(33) + (-13 + 13*im*sqrt(3) - 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + (-4 - 4*im*sqrt(3))*(-26 + 6*sqrt(33))^(2/3) + 6*(-13 + 3*sqrt(33))*x)))*sqrt(26 - 6*sqrt(33) + (-13 + 13*im*sqrt(3) - 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + (-4 - 4*im*sqrt(3))*(-26 + 6*sqrt(33))^(2/3) + 6*(-13 + 3*sqrt(33))*x)*sqrt(26 - 6*sqrt(33) + (-13 - 13*im*sqrt(3) + 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + 4*im*(im + sqrt(3))*(-26 + 6*sqrt(33))^(2/3) + 6*(-13 + 3*sqrt(33))*x)) + ((2^(1/3)*(13 - 13*im*sqrt(3) + 9*im*sqrt(11) - 3*sqrt(33)) + 4*2^(2/3)*(1 + im*sqrt(3))*(-13 + 3*sqrt(33))^(1/3) + 20*(-13 + 3*sqrt(33))^(2/3))*(4*2^(2/3)*(im + sqrt(3)) + 8*im*(-13 + 3*sqrt(33))^(1/3) + 2^(1/3)*(-im + sqrt(3))*(-13 + 3*sqrt(33))^(2/3))*sqrt((52 - 12*sqrt(33) - 2^(1/3)*(-13 + 3*sqrt(33))^(4/3) + 4*(-26 + 6*sqrt(33))^(2/3))/(-13 + 3*sqrt(33) + 4*(-26 + 6*sqrt(33))^(1/3)))*sqrt((1/(1 + x))*(-8*im*(-13 + 3*sqrt(33)) + (-43*im - 13*sqrt(3) + 9*sqrt(11) + 5*im*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + (2*im + 4*sqrt(3) - 2*im*sqrt(33))*(-26 + 6*sqrt(33))^(2/3) + (8*im*(-13 + 3*sqrt(33)) + (13*im - 13*sqrt(3) + 9*sqrt(11) - 3*im*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + 4*(im + sqrt(3))*(-26 + 6*sqrt(33))^(2/3))*x))*sqrt(1 + 4*x + 2*x^2 + x^4)*Elliptic.F(asin((sqrt(52 - 12*sqrt(33) - 2^(1/3)*(-13 + 3*sqrt(33))^(4/3) + 4*(-26 + 6*sqrt(33))^(2/3))*sqrt(26 - 6*sqrt(33) + (-13 - 13*im*sqrt(3) + 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + 4*im*(im + sqrt(3))*(-26 + 6*sqrt(33))^(2/3) + 6*(-13 + 3*sqrt(33))*x))/(2^(1/6)*sqrt(3)*(-13 + 3*sqrt(33))^(2/3)*sqrt(39 + 13*im*sqrt(3) - 9*im*sqrt(11) - 9*sqrt(33) + 4*(3 - im*sqrt(3))*(-26 + 6*sqrt(33))^(1/3))*sqrt(1 + x))), (4*(21*im - 7*sqrt(3) + 3*sqrt(11) - 3*im*sqrt(33)) + (3*im + sqrt(3) + 3*sqrt(11) + 3*im*sqrt(33))*(-26 + 6*sqrt(33))^(1/3))/(-56*sqrt(3) + 24*sqrt(11) + 2*(sqrt(3) + 3*sqrt(11))*(-26 + 6*sqrt(33))^(1/3))))/(3*2^(2/3)*3^(3/4)*(-13 + 3*sqrt(33))^(1/3)*sqrt(39 + 13*im*sqrt(3) - 9*im*sqrt(11) - 9*sqrt(33) + 4*(3 - im*sqrt(3))*(-26 + 6*sqrt(33))^(1/3))*sqrt(1 + x)*(4*2^(2/3)*(-im + sqrt(3)) - 2*im*(-13 + 3*sqrt(33))^(1/3) + 2^(1/3)*(im + sqrt(3))*(-13 + 3*sqrt(33))^(2/3) + 6*im*(-13 + 3*sqrt(33))^(1/3)*x)*sqrt(26 - 6*sqrt(33) + (-13 - 13*im*sqrt(3) + 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + 4*im*(im + sqrt(3))*(-26 + 6*sqrt(33))^(2/3) + 6*(-13 + 3*sqrt(33))*x)*sqrt((8*(-13 + 3*sqrt(33)) - (5 - 3*im*sqrt(3) + 3*im*sqrt(11) + sqrt(33))*(-26 + 6*sqrt(33))^(2/3) + (-26 + 6*sqrt(33))^(1/3)*(-41 + 15*im*sqrt(3) - 3*im*sqrt(11) + 7*sqrt(33)) + (104 - 24*sqrt(33) + (-13 - 13*im*sqrt(3) + 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + 4*im*(im + sqrt(3))*(-26 + 6*sqrt(33))^(2/3))*x)/((-39 - 13*im*sqrt(3) + 9*im*sqrt(11) + 9*sqrt(33) + 4*im*(3*im + sqrt(3))*(-26 + 6*sqrt(33))^(1/3))*(1 + x)))) + ((4*2^(2/3) + 2*(-13 + 3*sqrt(33))^(1/3) - 2^(1/3)*(-13 + 3*sqrt(33))^(2/3))*(4*2^(2/3)*(im + sqrt(3)) - 4*im*(-13 + 3*sqrt(33))^(1/3) + 2^(1/3)*(-im + sqrt(3))*(-13 + 3*sqrt(33))^(2/3))*(4*2^(2/3)*(-im + sqrt(3)) + 4*im*(-13 + 3*sqrt(33))^(1/3) + 2^(1/3)*(im + sqrt(3))*(-13 + 3*sqrt(33))^(2/3))*sqrt((-39 + 13*im*sqrt(3) - 9*im*sqrt(11) + 9*sqrt(33) - 4*im*(-3*im + sqrt(3))*(-26 + 6*sqrt(33))^(1/3))/(104 - 24*sqrt(33) + (-13 + 13*im*sqrt(3) - 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + (-4 - 4*im*sqrt(3))*(-26 + 6*sqrt(33))^(2/3)))*sqrt(1 + x)*sqrt((104 - 24*sqrt(33) + 2*(1 + 14*im*sqrt(3) - 6*im*sqrt(11) + sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + (-7 - im*sqrt(3) - 3*im*sqrt(11) + sqrt(33))*(-26 + 6*sqrt(33))^(2/3) + 2*(-52 + 12*sqrt(33) + 2^(1/3)*(-13 + 3*sqrt(33))^(4/3) - 4*(-26 + 6*sqrt(33))^(2/3))*x)/((-39 + 13*im*sqrt(3) - 9*im*sqrt(11) + 9*sqrt(33) - 4*im*(-3*im + sqrt(3))*(-26 + 6*sqrt(33))^(1/3))*(1 + x)))*sqrt((104 - 24*sqrt(33) + 2*(1 - 14*im*sqrt(3) + 6*im*sqrt(11) + sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + (-7 + im*sqrt(3) + 3*im*sqrt(11) + sqrt(33))*(-26 + 6*sqrt(33))^(2/3) + 2*(-52 + 12*sqrt(33) + 2^(1/3)*(-13 + 3*sqrt(33))^(4/3) - 4*(-26 + 6*sqrt(33))^(2/3))*x)/((-39 - 13*im*sqrt(3) + 9*im*sqrt(11) + 9*sqrt(33) + 4*im*(3*im + sqrt(3))*(-26 + 6*sqrt(33))^(1/3))*(1 + x)))*sqrt(1 + 4*x + 2*x^2 + x^4)*Elliptic.Pi((2^(1/3)*(4*2^(1/3)*(-3*im + sqrt(3)) + (3*im + sqrt(3))*(-13 + 3*sqrt(33))^(2/3)))/(4*2^(2/3)*(-im + sqrt(3)) - 8*im*(-13 + 3*sqrt(33))^(1/3) + 2^(1/3)*(im + sqrt(3))*(-13 + 3*sqrt(33))^(2/3)), asin(sqrt(13 - 3*sqrt(33) - 2^(1/3)*(-13 + 3*sqrt(33))^(4/3) + 4*(-26 + 6*sqrt(33))^(2/3) + (-39 + 9*sqrt(33))*x)/(2^(1/6)*sqrt(3)*(-13 + 3*sqrt(33))^(2/3)*sqrt((-39 + 13*im*sqrt(3) - 9*im*sqrt(11) + 9*sqrt(33) - 4*im*(-3*im + sqrt(3))*(-26 + 6*sqrt(33))^(1/3))/(104 - 24*sqrt(33) + (-13 + 13*im*sqrt(3) - 9*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3) + (-4 - 4*im*sqrt(3))*(-26 + 6*sqrt(33))^(2/3)))*sqrt(1 + x))), (4*(21 - 7*im*sqrt(3) + 3*im*sqrt(11) - 3*sqrt(33)) + (3 + im*sqrt(3) + 3*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3))/(4*(21 + 7*im*sqrt(3) - 3*im*sqrt(11) - 3*sqrt(33)) + (3 - im*sqrt(3) - 3*im*sqrt(11) + 3*sqrt(33))*(-26 + 6*sqrt(33))^(1/3))))/(2^(1/6)*sqrt(3)*(4*2^(2/3)*(im + sqrt(3)) + 2*im*(-13 + 3*sqrt(33))^(1/3) + 2^(1/3)*(-im + sqrt(3))*(-13 + 3*sqrt(33))^(2/3) - 6*im*(-13 + 3*sqrt(33))^(1/3)*x)*(4*2^(2/3)*(-im + sqrt(3)) - 2*im*(-13 + 3*sqrt(33))^(1/3) + 2^(1/3)*(im + sqrt(3))*(-13 + 3*sqrt(33))^(2/3) + 6*im*(-13 + 3*sqrt(33))^(1/3)*x)*sqrt(13 - 3*sqrt(33) - 2^(1/3)*(-13 + 3*sqrt(33))^(4/3) + 4*(-26 + 6*sqrt(33))^(2/3) + (-39 + 9*sqrt(33))*x)))]


    #= It*is*interesting*to*see*how*much*of*this*one*can*be*done; =#

    @test_int [(12*log(x/mc^2)*x^2*pi^2*mc^3*(-8*x-12*mc^2+3*mc) + pi^2*(12*x^4*mc+3*x^4+176*x^3*mc^3-24*x^3*mc^2 - 144*x^2*mc^5-48*x*mc^7+24*x*mc^6+4*mc^9-3*mc^8))/(384*ℯ^(x/y)*x^2), x, 20, ((3 - 4*mc)*mc^8*pi^2)/(ℯ^(x/y)*(384*x)) + ((3/8)*mc^5*pi^2*y)/ℯ^(x/y) + ((1/48)*(3 - 22*mc)*mc^2*pi^2*x*y)/ℯ^(x/y) - ((1/128)*(1 + 4*mc)*pi^2*x^2*y)/ℯ^(x/y) + ((1/48)*(3 - 22*mc)*mc^2*pi^2*y^2)/ℯ^(x/y) + ((1/4)*mc^3*pi^2*y^2)/ℯ^(x/y) - ((1/64)*(1 + 4*mc)*pi^2*x*y^2)/ℯ^(x/y) - ((1/64)*(1 + 4*mc)*pi^2*y^3)/ℯ^(x/y) + (1/16)*(1 - 2*mc)*mc^6*pi^2*ExpIntegralEi(-(x/y)) + ((3 - 4*mc)*mc^8*pi^2*ExpIntegralEi(-(x/y)))/(384*y) + (1/32)*mc^3*pi^2*(3*mc - 12*mc^2 - 8*y)*y*ExpIntegralEi(-(x/y)) - ((1/32)*mc^3*pi^2*(3*(1 - 4*mc)*mc - 8*x)*y*log(x/mc^2))/ℯ^(x/y) + ((1/4)*mc^3*pi^2*y^2*log(x/mc^2))/ℯ^(x/y)]


    #= The*following*integrals*reveal*deficiencies*in*the*current*integrator; =#

    @test_int [sin(2*x)/cos(x), x, 2, -2*cos(x)]

    #= This*example, which*appeared*in*Tobey's*thesis, needs*factorization =#
    #= over*algebraic*fields. It*currently*gives*an*ugly*answer*and*so*has =#
    #= been*suppressed; =#

    @test_int [(7*x^13+10*x^8+4*x^7-7*x^6-4*x^3-4*x^2+3*x+3)/(x^14-2*x^8-2*x^7-2*x^4-4*x^3-x^2+2*x+1), x, -5, (1/2)*((1 + sqrt(2))*log(1 + x + sqrt(2)*x + sqrt(2)*x^2 - x^7) - (-1 + sqrt(2))*log(-1 + (-1 + sqrt(2))*x + sqrt(2)*x^2 + x^7))]
    end
