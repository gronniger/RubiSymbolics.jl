@testset "4.7.7 Trig functions" begin
    @variables A, B, C, a, b, c, d, e, f, g, h, m, n, r, s, x, z

    #= ::Package:: =#

    #= ::Title:: =#
    #=Miscellaneous*Integration*Problems*Involving*Trig*Functions=#


    #= ::Section::Closed:: =#
    #=Rectification*problems=#


    #= Following*integrands*are*equal. =#
    @test_int [2/(3 - cos(4 + 6*x)), x, 2, x/sqrt(2) + atan(sin(4 + 6*x)/(3 + 2*sqrt(2) - cos(4 + 6*x)))/(3*sqrt(2))]
    @test_int [2*csc(4 + 6*x)/(3*csc(4 + 6*x) - cot(4 + 6*x)), x, 3, x/sqrt(2) + atan(sin(4 + 6*x)/(3 + 2*sqrt(2) - cos(4 + 6*x)))/(3*sqrt(2))]
    @test_int [1/(1 + sin(2 + 3*x)^2), x, 2, x/sqrt(2) + atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + sin(2 + 3*x)^2))/(3*sqrt(2))]
    @test_int [1/(2 - cos(2 + 3*x)^2), x, 2, x/sqrt(2) + atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + sin(2 + 3*x)^2))/(3*sqrt(2))]
    @test_int [1/(2*sin(2 + 3*x)^2 + cos(2 + 3*x)^2), x, 2, x/sqrt(2) + atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + sin(2 + 3*x)^2))/(3*sqrt(2))]
    @test_int [sec(2 + 3*x)^2/(1 + 2*tan(2 + 3*x)^2), x, 2, x/sqrt(2) + atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + sin(2 + 3*x)^2))/(3*sqrt(2))]
    @test_int [csc(2 + 3*x)^2/(2 + cot(2 + 3*x)^2), x, 2, x/sqrt(2) + atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + sin(2 + 3*x)^2))/(3*sqrt(2))]


    #= Following*integrands*are*equal. =#
    @test_int [2/(1 - 3*cos(4 + 6*x)), x, 3, log(cos(2 + 3*x) - sqrt(2)*sin(2 + 3*x))/(6*sqrt(2)) - log(cos(2 + 3*x) + sqrt(2)*sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [2*csc(4 + 6*x)/(csc(4 + 6*x) - 3*cot(4 + 6*x)), x, 4, log(cos(2 + 3*x) - sqrt(2)*sin(2 + 3*x))/(6*sqrt(2)) - log(cos(2 + 3*x) + sqrt(2)*sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [1/(-1 + 3*sin(2 + 3*x)^2), x, 2, log(cos(2 + 3*x) - sqrt(2)*sin(2 + 3*x))/(6*sqrt(2)) - log(cos(2 + 3*x) + sqrt(2)*sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [1/(2 - 3*cos(2 + 3*x)^2), x, 2, log(cos(2 + 3*x) - sqrt(2)*sin(2 + 3*x))/(6*sqrt(2)) - log(cos(2 + 3*x) + sqrt(2)*sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [1/(2*sin(2 + 3*x)^2 - cos(2 + 3*x)^2), x, 2, log(cos(2 + 3*x) - sqrt(2)*sin(2 + 3*x))/(6*sqrt(2)) - log(cos(2 + 3*x) + sqrt(2)*sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [sec(2 + 3*x)^2/(-1 + 2*tan(2 + 3*x)^2), x, 2, log(cos(2 + 3*x) - sqrt(2)*sin(2 + 3*x))/(6*sqrt(2)) - log(cos(2 + 3*x) + sqrt(2)*sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [csc(2 + 3*x)^2/(2 - cot(2 + 3*x)^2), x, 2, log(cos(2 + 3*x) - sqrt(2)*sin(2 + 3*x))/(6*sqrt(2)) - log(cos(2 + 3*x) + sqrt(2)*sin(2 + 3*x))/(6*sqrt(2))]


    #= Following*integrands*are*equal. =#
    @test_int [2/(3 + cos(4 + 6*x)), x, 2, x/sqrt(2) - atan(sin(4 + 6*x)/(3 + 2*sqrt(2) + cos(4 + 6*x)))/(3*sqrt(2))]
    @test_int [2*csc(4 + 6*x)/(3*csc(4 + 6*x) + cot(4 + 6*x)), x, 3, x/sqrt(2) - atan(sin(4 + 6*x)/(3 + 2*sqrt(2) + cos(4 + 6*x)))/(3*sqrt(2))]
    @test_int [1/(2 - sin(2 + 3*x)^2), x, 2, x/sqrt(2) - atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + cos(2 + 3*x)^2))/(3*sqrt(2))]
    @test_int [1/(1 + cos(2 + 3*x)^2), x, 2, x/sqrt(2) - atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + cos(2 + 3*x)^2))/(3*sqrt(2))]
    @test_int [1/(2*cos(2 + 3*x)^2 + sin(2 + 3*x)^2), x, 2, x/sqrt(2) - atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + cos(2 + 3*x)^2))/(3*sqrt(2))]
    @test_int [sec(2 + 3*x)^2/(2 + tan(2 + 3*x)^2), x, 2, x/sqrt(2) - atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + cos(2 + 3*x)^2))/(3*sqrt(2))]
    @test_int [csc(2 + 3*x)^2/(1 + 2*cot(2 + 3*x)^2), x, 2, x/sqrt(2) - atan((cos(2 + 3*x)*sin(2 + 3*x))/(1 + sqrt(2) + cos(2 + 3*x)^2))/(3*sqrt(2))]


    #= Following*integrands*are*equal. =#
    @test_int [-2/(1 + 3*cos(4 + 6*x)), x, 3, log(sqrt(2)*cos(2 + 3*x) - sin(2 + 3*x))/(6*sqrt(2)) - log(sqrt(2)*cos(2 + 3*x) + sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [-2*csc(4 + 6*x)/(csc(4 + 6*x) + 3*cot(4 + 6*x)), x, 4, log(sqrt(2)*cos(2 + 3*x) - sin(2 + 3*x))/(6*sqrt(2)) - log(sqrt(2)*cos(2 + 3*x) + sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [1/(-2 + 3*sin(2 + 3*x)^2), x, 2, log(sqrt(2)*cos(2 + 3*x) - sin(2 + 3*x))/(6*sqrt(2)) - log(sqrt(2)*cos(2 + 3*x) + sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [1/(1 - 3*cos(2 + 3*x)^2), x, 2, log(sqrt(2)*cos(2 + 3*x) - sin(2 + 3*x))/(6*sqrt(2)) - log(sqrt(2)*cos(2 + 3*x) + sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [1/(-2*cos(2 + 3*x)^2 + sin(2 + 3*x)^2), x, 2, log(sqrt(2)*cos(2 + 3*x) - sin(2 + 3*x))/(6*sqrt(2)) - log(sqrt(2)*cos(2 + 3*x) + sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [sec(2 + 3*x)^2/(-2 + tan(2 + 3*x)^2), x, 2, log(sqrt(2)*cos(2 + 3*x) - sin(2 + 3*x))/(6*sqrt(2)) - log(sqrt(2)*cos(2 + 3*x) + sin(2 + 3*x))/(6*sqrt(2))]
    @test_int [csc(2 + 3*x)^2/(1 - 2*cot(2 + 3*x)^2), x, 2, log(sqrt(2)*cos(2 + 3*x) - sin(2 + 3*x))/(6*sqrt(2)) - log(sqrt(2)*cos(2 + 3*x) + sin(2 + 3*x))/(6*sqrt(2))]


    #= ::Section::Closed:: =#
    #=Integrands*involving*sines=#


    @test_int [(x + sin(x))^2, x, 6, x/2 + x^3/3 - 2*x*cos(x) + 2*sin(x) - (1/2)*cos(x)*sin(x)]
    @test_int [(x + sin(x))^3, x, 9, (3*x^2)/4 + x^4/4 + 5*cos(x) - 3*x^2*cos(x) + cos(x)^3/3 + 6*x*sin(x) - (3/2)*x*cos(x)*sin(x) + (3*sin(x)^2)/4]


    @test_int [sin(a + b*x)/(c + d*x^2), x, 8, -((CosIntegral((b*sqrt(-c))/sqrt(d) + b*x)*sin(a - (b*sqrt(-c))/sqrt(d)))/(2*sqrt(-c)*sqrt(d))) + (CosIntegral((b*sqrt(-c))/sqrt(d) - b*x)*sin(a + (b*sqrt(-c))/sqrt(d)))/(2*sqrt(-c)*sqrt(d)) - (cos(a + (b*sqrt(-c))/sqrt(d))*SinIntegral((b*sqrt(-c))/sqrt(d) - b*x))/(2*sqrt(-c)*sqrt(d)) - (cos(a - (b*sqrt(-c))/sqrt(d))*SinIntegral((b*sqrt(-c))/sqrt(d) + b*x))/(2*sqrt(-c)*sqrt(d))]
    @test_int [sin(a + b*x)/(c + d*x + e*x^2), x, 8, (CosIntegral((b*(d - sqrt(d^2 - 4*c*e)))/(2*e) + b*x)*sin(a - (b*(d - sqrt(d^2 - 4*c*e)))/(2*e)))/sqrt(d^2 - 4*c*e) - (CosIntegral((b*(d + sqrt(d^2 - 4*c*e)))/(2*e) + b*x)*sin(a - (b*(d + sqrt(d^2 - 4*c*e)))/(2*e)))/sqrt(d^2 - 4*c*e) + (cos(a - (b*(d - sqrt(d^2 - 4*c*e)))/(2*e))*SinIntegral((b*(d - sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e) - (cos(a - (b*(d + sqrt(d^2 - 4*c*e)))/(2*e))*SinIntegral((b*(d + sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e)]


    @test_int [sin(sqrt(-7 + x))/sqrt(-7 + x), x, 3, -2*cos(sqrt(-7 + x))]


    @test_int [sin(x)*sqrt(b - a/x^2)/sqrt(a - b*x^2), x, 3, (sqrt(b - a/x^2)*x*SinIntegral(x))/sqrt(a - b*x^2)]


    @test_int [1/(x*(1 + sin(log(x)))), x, 2, -(cos(log(x))/(1 + sin(log(x))))]


    #= ::Subsection::Closed:: =#
    #=sin((a+b*x)/(c+d*x))^n=#


    @test_int [sin((a + b*x)/(c + d*x))^1, x, 5, ((b*c - a*d)*cos(b/d)*CosIntegral((b*c - a*d)/(d*(c + d*x))))/d^2 + ((c + d*x)*sin((a + b*x)/(c + d*x)))/d + ((b*c - a*d)*sin(b/d)*SinIntegral((b*c - a*d)/(d*(c + d*x))))/d^2]
    @test_int [sin((a + b*x)/(c + d*x))^2, x, 6, ((b*c - a*d)*CosIntegral((2*(b*c - a*d))/(d*(c + d*x)))*sin((2*b)/d))/d^2 + ((c + d*x)*sin((a + b*x)/(c + d*x))^2)/d - ((b*c - a*d)*cos((2*b)/d)*SinIntegral((2*(b*c - a*d))/(d*(c + d*x))))/d^2]
    @test_int [sin((a + b*x)/(c + d*x))^3, x, 9, (3*(b*c - a*d)*cos(b/d)*CosIntegral((b*c - a*d)/(d*(c + d*x))))/(4*d^2) - (3*(b*c - a*d)*cos((3*b)/d)*CosIntegral((3*(b*c - a*d))/(d*(c + d*x))))/(4*d^2) + ((c + d*x)*sin((a + b*x)/(c + d*x))^3)/d + (3*(b*c - a*d)*sin(b/d)*SinIntegral((b*c - a*d)/(d*(c + d*x))))/(4*d^2) - (3*(b*c - a*d)*sin((3*b)/d)*SinIntegral((3*(b*c - a*d))/(d*(c + d*x))))/(4*d^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(1-a^2*x^2)^m*sin(sqrt(1-a*x)/sqrt(1+a*x))^n=#


    @test_int [sin(sqrt(1 - a*x)/sqrt(1 + a*x))^3/(1 - a^2*x^2), x, 5, -((3*SinIntegral(sqrt(1 - a*x)/sqrt(1 + a*x)))/(4*a)) + SinIntegral((3*sqrt(1 - a*x))/sqrt(1 + a*x))/(4*a)]
    @test_int [sin(sqrt(1 - a*x)/sqrt(1 + a*x))^2/(1 - a^2*x^2), x, 4, CosIntegral((2*sqrt(1 - a*x))/sqrt(1 + a*x))/(2*a) - log(sqrt(1 - a*x)/sqrt(1 + a*x))/(2*a)]
    @test_int [sin(sqrt(1 - a*x)/sqrt(1 + a*x))^1/(1 - a^2*x^2), x, 2, -(SinIntegral(sqrt(1 - a*x)/sqrt(1 + a*x))/a)]
    @test_int [1/(sin(sqrt(1 - a*x)/sqrt(1 + a*x))^1*(1 - a^2*x^2)), x, 1, Unintegrable(csc(sqrt(1 - a*x)/sqrt(1 + a*x))/((1 - a*x)*(1 + a*x)), x)]
    @test_int [1/(sin(sqrt(1 - a*x)/sqrt(1 + a*x))^2*(1 - a^2*x^2)), x, 1, Unintegrable(csc(sqrt(1 - a*x)/sqrt(1 + a*x))^2/((1 - a*x)*(1 + a*x)), x)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*cosines=#


    @test_int [(x + cos(x))^2, x, 6, x/2 + x^3/3 + 2*cos(x) + 2*x*sin(x) + (1/2)*cos(x)*sin(x)]
    @test_int [(x + cos(x))^3, x, 9, (3*x^2)/4 + x^4/4 + 6*x*cos(x) + (3*cos(x)^2)/4 - 5*sin(x) + 3*x^2*sin(x) + (3/2)*x*cos(x)*sin(x) - sin(x)^3/3]


    @test_int [cos(a + b*x)/(c + d*x^2), x, 8, (cos(a + (b*sqrt(-c))/sqrt(d))*CosIntegral((b*sqrt(-c))/sqrt(d) - b*x))/(2*sqrt(-c)*sqrt(d)) - (cos(a - (b*sqrt(-c))/sqrt(d))*CosIntegral((b*sqrt(-c))/sqrt(d) + b*x))/(2*sqrt(-c)*sqrt(d)) + (sin(a + (b*sqrt(-c))/sqrt(d))*SinIntegral((b*sqrt(-c))/sqrt(d) - b*x))/(2*sqrt(-c)*sqrt(d)) + (sin(a - (b*sqrt(-c))/sqrt(d))*SinIntegral((b*sqrt(-c))/sqrt(d) + b*x))/(2*sqrt(-c)*sqrt(d))]
    @test_int [cos(a + b*x)/(c + d*x + e*x^2), x, 8, (cos(a - (b*(d - sqrt(d^2 - 4*c*e)))/(2*e))*CosIntegral((b*(d - sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e) - (cos(a - (b*(d + sqrt(d^2 - 4*c*e)))/(2*e))*CosIntegral((b*(d + sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e) - (sin(a - (b*(d - sqrt(d^2 - 4*c*e)))/(2*e))*SinIntegral((b*(d - sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e) + (sin(a - (b*(d + sqrt(d^2 - 4*c*e)))/(2*e))*SinIntegral((b*(d + sqrt(d^2 - 4*c*e)))/(2*e) + b*x))/sqrt(d^2 - 4*c*e)]


    @test_int [(x*cos(sqrt(1 + x^2)))/sqrt(1 + x^2), x, 4, sin(sqrt(1 + x^2))]
    @test_int [(x*cos(sqrt(3)*sqrt(2 + x^2)))/sqrt(2 + x^2), x, 4, sin(sqrt(3)*sqrt(2 + x^2))/sqrt(3)]
    @test_int [((-1 + 2*x)*cos(sqrt(6 + 3*(-1 + 2*x)^2)))/sqrt(6 + 3*(-1 + 2*x)^2), x, 5, (1/6)*sin(sqrt(3)*sqrt(2 + (-1 + 2*x)^2))]


    #= ::Subsection::Closed:: =#
    #=cos((a+b*x)/(c+d*x))^n=#


    @test_int [cos((a + b*x)/(c + d*x)), x, 5, ((c + d*x)*cos((a + b*x)/(c + d*x)))/d - ((b*c - a*d)*CosIntegral((b*c - a*d)/(d*(c + d*x)))*sin(b/d))/d^2 + ((b*c - a*d)*cos(b/d)*SinIntegral((b*c - a*d)/(d*(c + d*x))))/d^2]
    @test_int [cos((a + b*x)/(c + d*x))^2, x, 6, ((c + d*x)*cos((a + b*x)/(c + d*x))^2)/d - ((b*c - a*d)*CosIntegral((2*(b*c - a*d))/(d*(c + d*x)))*sin((2*b)/d))/d^2 + ((b*c - a*d)*cos((2*b)/d)*SinIntegral((2*(b*c - a*d))/(d*(c + d*x))))/d^2]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(1-a^2*x^2)^m*cos(sqrt(1-a*x)/sqrt(1+a*x))^n=#


    @test_int [cos(sqrt(1 - a*x)/sqrt(1 + a*x))^3/(1 - a^2*x^2), x, 5, -((3*CosIntegral(sqrt(1 - a*x)/sqrt(1 + a*x)))/(4*a)) - CosIntegral((3*sqrt(1 - a*x))/sqrt(1 + a*x))/(4*a)]
    @test_int [cos(sqrt(1 - a*x)/sqrt(1 + a*x))^2/(1 - a^2*x^2), x, 4, -(CosIntegral((2*sqrt(1 - a*x))/sqrt(1 + a*x))/(2*a)) - log(sqrt(1 - a*x)/sqrt(1 + a*x))/(2*a)]
    @test_int [cos(sqrt(1 - a*x)/sqrt(1 + a*x))^1/(1 - a^2*x^2), x, 2, -(CosIntegral(sqrt(1 - a*x)/sqrt(1 + a*x))/a)]
    @test_int [1/(cos(sqrt(1 - a*x)/sqrt(1 + a*x))^1*(1 - a^2*x^2)), x, 1, Unintegrable(sec(sqrt(1 - a*x)/sqrt(1 + a*x))/((1 - a*x)*(1 + a*x)), x)]
    @test_int [1/(cos(sqrt(1 - a*x)/sqrt(1 + a*x))^2*(1 - a^2*x^2)), x, 1, Unintegrable(sec(sqrt(1 - a*x)/sqrt(1 + a*x))^2/((1 - a*x)*(1 + a*x)), x)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*tangents=#


    @test_int [tan(sqrt(x))/sqrt(x), x, 2, -2*log(cos(sqrt(x)))]
    @test_int [tan(sqrt(x))^2/sqrt(x), x, 3, -2*sqrt(x) + 2*tan(sqrt(x))]


    @test_int [sqrt(x)*tan(sqrt(x)), x, 6, (2/3)*im*x^(3/2) - 2*x*log(1 + ℯ^(2*im*sqrt(x))) + 2*im*sqrt(x)*PolyLog(2, -ℯ^(2*im*sqrt(x))) - PolyLog(3, -ℯ^(2*im*sqrt(x)))]


    @test_int [x*tan(a + b*x + c*x^2) + (b*tan(a + b*x + c*x^2))/(2*c), x, 2, -(log(cos(a + b*x + c*x^2))/(2*c))]


    #= ::Section::Closed:: =#
    #=Integrands*involving*cotangents=#


    @test_int [cot(sqrt(x))^2/sqrt(x), x, 3, -2*sqrt(x) - 2*cot(sqrt(x))]


    #= ::Section::Closed:: =#
    #=Integrands*involving*secants=#


    @test_int [sqrt(a + b*sec(c + d*x))/(1 + cos(c + d*x)), x, 2, (EllipticE(asin(tan(c + d*x)/(1 + sec(c + d*x))), (a - b)/(a + b))*sqrt(1/(1 + sec(c + d*x)))*sqrt(a + b*sec(c + d*x)))/(d*sqrt((a + b*sec(c + d*x))/((a + b)*(1 + sec(c + d*x)))))]


    @test_int [sec(a + b*x)*sec(2*a + 2*b*x), x, 4, -(atanh(sin(a + b*x))/b) + (sqrt(2)*atanh(sqrt(2)*sin(a + b*x)))/b]
    @test_int [sec(a + b*x)*sec(2*(a + b*x)), x, 4, -(atanh(sin(a + b*x))/b) + (sqrt(2)*atanh(sqrt(2)*sin(a + b*x)))/b]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Trig(a+b*x)^n*Trig(c+d*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Trig(m*x)^p*Trig(n*x)^q=#


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*Trig(m*x)*sin(n*x)=#


    @test_int [sin(2*x)*sin(x),x, 1, sin(x)/2 - (1/6)*sin(3*x)]
    @test_int [sin(3*x)*sin(x),x, 1, (1/4)*sin(2*x) - (1/8)*sin(4*x)]
    @test_int [sin(4*x)*sin(x),x, 1, (1/6)*sin(3*x) - (1/10)*sin(5*x)]
    @test_int [sin(m*x)*sin(x),x, 4, sin((1 - m)*x)/(2*(1 - m)) - sin((1 + m)*x)/(2*(1 + m))]


    @test_int [cos(2*x)*sin(x),x, 1, cos(x)/2 - (1/6)*cos(3*x)]
    @test_int [cos(3*x)*sin(x),x, 1, (1/4)*cos(2*x) - (1/8)*cos(4*x)]
    @test_int [cos(4*x)*sin(x),x, 1, (1/6)*cos(3*x) - (1/10)*cos(5*x)]
    @test_int [cos(m*x)*sin(x),x, 4, -(cos((1 - m)*x)/(2*(1 - m))) - cos((1 + m)*x)/(2*(1 + m))]


    @test_int [tan(2*x)*sin(x), x, 4, atanh(sqrt(2)*sin(x))/sqrt(2) - sin(x)]
    @test_int [tan(3*x)*sin(x), x, 9, (-(1/6))*log(1 - 2*sin(x)) - (1/6)*log(1 - sin(x)) + (1/6)*log(1 + sin(x)) + (1/6)*log(1 + 2*sin(x)) - sin(x)]
    @test_int [tan(4*x)*sin(x), x, 5, (1/4)*sqrt(2 - sqrt(2))*atanh((2*sin(x))/sqrt(2 - sqrt(2))) + (1/4)*sqrt(2 + sqrt(2))*atanh((2*sin(x))/sqrt(2 + sqrt(2))) - sin(x)]
    @test_int [tan(5*x)*sin(x), x, 10, (1/5)*atanh(sin(x)) - (1/20)*(1 - sqrt(5))*log(1 - sqrt(5) - 4*sin(x)) - (1/20)*(1 + sqrt(5))*log(1 + sqrt(5) - 4*sin(x)) + (1/20)*(1 - sqrt(5))*log(1 - sqrt(5) + 4*sin(x)) + (1/20)*(1 + sqrt(5))*log(1 + sqrt(5) + 4*sin(x)) - sin(x)]
    @test_int [tan(6*x)*sin(x), x, 10, atanh(sqrt(2)*sin(x))/(3*sqrt(2)) + (1/6)*sqrt(2 - sqrt(3))*atanh((2*sin(x))/sqrt(2 - sqrt(3))) + (1/6)*sqrt(2 + sqrt(3))*atanh((2*sin(x))/sqrt(2 + sqrt(3))) - sin(x)]
    @test_int [tan(n*x)*sin(x), x, 6, ((1/2)*im)/ℯ^(im*x) + (1/2)*im*ℯ^(im*x) - (im*Hypergeometric2F1(1, -(1/(2*n)), 1 - 1/(2*n), -ℯ^(2*im*n*x)))/ℯ^(im*x) - im*ℯ^(im*x)*Hypergeometric2F1(1, 1/(2*n), (1/2)*(2 + 1/n), -ℯ^(2*im*n*x))]


    @test_int [cot(2*x)*sin(x), x, 3, (-(1/2))*atanh(sin(x)) + sin(x)]
    @test_int [cot(3*x)*sin(x), x, 3, -(atanh((2*sin(x))/sqrt(3))/sqrt(3)) + sin(x)]
    @test_int [cot(4*x)*sin(x), x, 6, (-(1/4))*atanh(sin(x)) - atanh(sqrt(2)*sin(x))/(2*sqrt(2)) + sin(x)]
    @test_int [cot(5*x)*sin(x), x, 6, (-(1/5))*sqrt((1/2)*(5 + sqrt(5)))*atanh(2*sqrt(2/(5 + sqrt(5)))*sin(x)) - (1/5)*sqrt((1/2)*(5 - sqrt(5)))*atanh(sqrt((2/5)*(5 + sqrt(5)))*sin(x)) + sin(x)]
    @test_int [cot(6*x)*sin(x), x, 7, (-(1/6))*atanh(sin(x)) - (1/6)*atanh(2*sin(x)) - atanh((2*sin(x))/sqrt(3))/(2*sqrt(3)) + sin(x)]


    @test_int [sec(2*x)*sin(x), x, 2, atanh(sqrt(2)*cos(x))/sqrt(2)]
    @test_int [sec(3*x)*sin(x), x, 5, (1/3)*log(cos(x)) - (1/6)*log(3 - 4*cos(x)^2)]
    @test_int [sec(4*x)*sin(x), x, 4, -(atanh((2*cos(x))/sqrt(2 - sqrt(2)))/(2*sqrt(2*(2 - sqrt(2))))) + atanh((2*cos(x))/sqrt(2 + sqrt(2)))/(2*sqrt(2*(2 + sqrt(2))))]
    @test_int [sec(5*x)*sin(x), x, 7, (-(1/5))*log(cos(x)) + (1/20)*(1 + sqrt(5))*log(5 - sqrt(5) - 8*cos(x)^2) + (1/20)*(1 - sqrt(5))*log(5 + sqrt(5) - 8*cos(x)^2)]
    @test_int [sec(6*x)*sin(x), x, 7, -(atanh(sqrt(2)*cos(x))/(3*sqrt(2))) + atanh((2*cos(x))/sqrt(2 - sqrt(3)))/(6*sqrt(2 - sqrt(3))) + atanh((2*cos(x))/sqrt(2 + sqrt(3)))/(6*sqrt(2 + sqrt(3)))]


    @test_int [csc(2*x)*sin(x), x, 2, (1/2)*atanh(sin(x))]
    @test_int [csc(3*x)*sin(x), x, 2, -(log(sqrt(3)*cos(x) - sin(x))/(2*sqrt(3))) + log(sqrt(3)*cos(x) + sin(x))/(2*sqrt(3))]
    @test_int [csc(4*x)*sin(x), x, 4, (-(1/4))*atanh(sin(x)) + atanh(sqrt(2)*sin(x))/(2*sqrt(2))]
    @test_int [csc(5*x)*sin(x), x, 4, (-(1/10))*sqrt((1/2)*(5 - sqrt(5)))*log(sqrt(5 - 2*sqrt(5))*cos(x) - sin(x)) + (1/10)*sqrt((1/2)*(5 + sqrt(5)))*log(sqrt(5 + 2*sqrt(5))*cos(x) - sin(x)) + (1/10)*sqrt((1/2)*(5 - sqrt(5)))*log(sqrt(5 - 2*sqrt(5))*cos(x) + sin(x)) - (1/10)*sqrt((1/2)*(5 + sqrt(5)))*log(sqrt(5 + 2*sqrt(5))*cos(x) + sin(x))]
    @test_int [csc(6*x)*sin(x), x, 7, (1/6)*atanh(sin(x)) + (1/6)*atanh(2*sin(x)) - atanh((2*sin(x))/sqrt(3))/(2*sqrt(3))]

    @test_int [csc(x)*sin(3*x), x, 3, x + 2*cos(x)*sin(x)]
    @test_int [csc(3*x)*sin(6*x), x, 2, (2*sin(3*x))/3]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*Trig(m*x)*cos(n*x)=#


    @test_int [sin(2*x)*cos(x), x, 1, -(cos(x)/2) - (1/6)*cos(3*x)]
    @test_int [sin(3*x)*cos(x), x, 1, (-(1/4))*cos(2*x) - (1/8)*cos(4*x)]
    @test_int [sin(4*x)*cos(x), x, 1, (-(1/6))*cos(3*x) - (1/10)*cos(5*x)]
    @test_int [sin(m*x)*cos(x), x, 4, cos((1 - m)*x)/(2*(1 - m)) - cos((1 + m)*x)/(2*(1 + m))]


    @test_int [cos(2*x)*cos(x), x, 1, sin(x)/2 + (1/6)*sin(3*x)]
    @test_int [cos(3*x)*cos(x), x, 1, (1/4)*sin(2*x) + (1/8)*sin(4*x)]
    @test_int [cos(4*x)*cos(x), x, 1, (1/6)*sin(3*x) + (1/10)*sin(5*x)]
    @test_int [cos(m*x)*cos(x), x, 4, sin((1 - m)*x)/(2*(1 - m)) + sin((1 + m)*x)/(2*(1 + m))]


    @test_int [tan(2*x)*cos(x), x, 4, atanh(sqrt(2)*cos(x))/sqrt(2) - cos(x)]
    @test_int [tan(3*x)*cos(x), x, 3, atanh((2*cos(x))/sqrt(3))/sqrt(3) - cos(x)]
    @test_int [tan(4*x)*cos(x), x, 6, (1/4)*sqrt(2 - sqrt(2))*atanh((2*cos(x))/sqrt(2 - sqrt(2))) + (1/4)*sqrt(2 + sqrt(2))*atanh((2*cos(x))/sqrt(2 + sqrt(2))) - cos(x)]
    @test_int [tan(5*x)*cos(x), x, 6, (1/5)*sqrt((1/2)*(5 + sqrt(5)))*atanh(2*sqrt(2/(5 + sqrt(5)))*cos(x)) + (1/5)*sqrt((1/2)*(5 - sqrt(5)))*atanh(sqrt((2/5)*(5 + sqrt(5)))*cos(x)) - cos(x)]
    @test_int [tan(6*x)*cos(x), x, 10, atanh(sqrt(2)*cos(x))/(3*sqrt(2)) + (1/6)*sqrt(2 - sqrt(3))*atanh((2*cos(x))/sqrt(2 - sqrt(3))) + (1/6)*sqrt(2 + sqrt(3))*atanh((2*cos(x))/sqrt(2 + sqrt(3))) - cos(x)]


    @test_int [cot(2*x)*cos(x), x, 4, (-(1/2))*atanh(cos(x)) + cos(x)]
    @test_int [cot(3*x)*cos(x), x, 9, cos(x) + (1/6)*log(1 - 2*cos(x)) + (1/6)*log(1 - cos(x)) - (1/6)*log(1 + cos(x)) - (1/6)*log(1 + 2*cos(x))]
    @test_int [cot(4*x)*cos(x), x, 6, (-(1/4))*atanh(cos(x)) - atanh(sqrt(2)*cos(x))/(2*sqrt(2)) + cos(x)]
    @test_int [cot(5*x)*cos(x), x, 10, (-(1/5))*atanh(cos(x)) + cos(x) + (1/20)*(1 - sqrt(5))*log(1 - sqrt(5) - 4*cos(x)) + (1/20)*(1 + sqrt(5))*log(1 + sqrt(5) - 4*cos(x)) - (1/20)*(1 - sqrt(5))*log(1 - sqrt(5) + 4*cos(x)) - (1/20)*(1 + sqrt(5))*log(1 + sqrt(5) + 4*cos(x))]
    @test_int [cot(6*x)*cos(x), x, 7, (-(1/6))*atanh(cos(x)) - (1/6)*atanh(2*cos(x)) - atanh((2*cos(x))/sqrt(3))/(2*sqrt(3)) + cos(x)]
    @test_int [cot(n*x)*cos(x), x, 6, -(1/2)/ℯ^(im*x) + ℯ^(im*x)/2 + Hypergeometric2F1(1, -(1/(2*n)), 1 - 1/(2*n), ℯ^(2*im*n*x))/ℯ^(im*x) - ℯ^(im*x)*Hypergeometric2F1(1, 1/(2*n), (1/2)*(2 + 1/n), ℯ^(2*im*n*x))]


    @test_int [sec(2*x)*cos(x), x, 2, atanh(sqrt(2)*sin(x))/sqrt(2)]
    @test_int [sec(3*x)*cos(x), x, 2, -(log(cos(x) - sqrt(3)*sin(x))/(2*sqrt(3))) + log(cos(x) + sqrt(3)*sin(x))/(2*sqrt(3))]
    @test_int [sec(4*x)*cos(x), x, 4, atanh((2*sin(x))/sqrt(2 - sqrt(2)))/(2*sqrt(2*(2 - sqrt(2)))) - atanh((2*sin(x))/sqrt(2 + sqrt(2)))/(2*sqrt(2*(2 + sqrt(2))))]
    @test_int [sec(5*x)*cos(x), x, 4, (1/10)*sqrt((1/2)*(5 - sqrt(5)))*log(cos(x) - sqrt(5 - 2*sqrt(5))*sin(x)) - (1/10)*sqrt((1/2)*(5 - sqrt(5)))*log(cos(x) + sqrt(5 - 2*sqrt(5))*sin(x)) - (1/10)*sqrt((1/2)*(5 + sqrt(5)))*log(cos(x) - sqrt(5 + 2*sqrt(5))*sin(x)) + (1/10)*sqrt((1/2)*(5 + sqrt(5)))*log(cos(x) + sqrt(5 + 2*sqrt(5))*sin(x))]
    @test_int [sec(6*x)*cos(x), x, 7, -(atanh(sqrt(2)*sin(x))/(3*sqrt(2))) + atanh((2*sin(x))/sqrt(2 - sqrt(3)))/(6*sqrt(2 - sqrt(3))) + atanh((2*sin(x))/sqrt(2 + sqrt(3)))/(6*sqrt(2 + sqrt(3)))]

    @test_int [sec(x)*cos(2*x), x, 3, -atanh(sin(x)) + 2*sin(x)]
    @test_int [sec(2*x)*cos(4*x), x, 3, -atanh(sin(2*x))/2 + sin(2*x)]


    @test_int [csc(2*x)*cos(x), x, 2, (-(1/2))*atanh(cos(x))]
    @test_int [csc(3*x)*cos(x), x, 5, (1/3)*log(sin(x)) - (1/6)*log(3 - 4*sin(x)^2)]
    @test_int [csc(4*x)*cos(x), x, 4, (-(1/4))*atanh(cos(x)) + atanh(sqrt(2)*cos(x))/(2*sqrt(2))]
    @test_int [csc(5*x)*cos(x), x, 7, (1/5)*log(sin(x)) - (1/20)*(1 + sqrt(5))*log(5 - sqrt(5) - 8*sin(x)^2) - (1/20)*(1 - sqrt(5))*log(5 + sqrt(5) - 8*sin(x)^2)]
    @test_int [csc(6*x)*cos(x), x, 7, (-(1/6))*atanh(cos(x)) - (1/6)*atanh(2*cos(x)) + atanh((2*cos(x))/sqrt(3))/(2*sqrt(3))]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*Trig(m*x)^p*Trig(n*x)^q=#


    @test_int [cos(6*x)^3*sin(x), x, 6, (3*cos(5*x))/40 - (3*cos(7*x))/56 + cos(17*x)/136 - cos(19*x)/152]
    @test_int [cos(6*x)^3*sin(9*x), x, 6, (-(1/8))*cos(3*x) + (1/72)*cos(9*x) - (1/40)*cos(15*x) - (1/216)*cos(27*x)]

    @test_int [cos(2*x)*sin(6*x)^2, x, 5, (1/4)*sin(2*x) - (1/40)*sin(10*x) - (1/56)*sin(14*x)]

    @test_int [cos(x)*sin(6*x)^2, x, 5, sin(x)/2 - (1/44)*sin(11*x) - (1/52)*sin(13*x)]
    @test_int [cos(x)*sin(6*x)^3, x, 6, (-3*cos(5*x))/40 - (3*cos(7*x))/56 + cos(17*x)/136 + cos(19*x)/152]
    @test_int [cos(7*x)*sin(6*x)^3, x, 6, (3*cos(x))/8 + cos(11*x)/88 - (3*cos(13*x))/104 + cos(25*x)/200]
    @test_int [cos(3*x)^2*sin(2*x)^3, x, 7, (-(3/16))*cos(2*x) + (3/64)*cos(4*x) + (1/48)*cos(6*x) - (3/128)*cos(8*x) + (1/192)*cos(12*x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*Trig(a+b*x)*Trig(c+d*x)*when*b^2-d^2=0=#


    @test_int [sin(a + b*x)*sin(c + b*x), x, 3, (1/2)*x*cos(a - c) - sin(a + c + 2*b*x)/(4*b)]
    @test_int [sin(a + b*x)*sin(c - b*x), x, 3, (-(1/2))*x*cos(a + c) + sin(a - c + 2*b*x)/(4*b)]


    @test_int [cos(a + b*x)*cos(c + b*x), x, 3, (1/2)*x*cos(a - c) + sin(a + c + 2*b*x)/(4*b)]
    @test_int [cos(a + b*x)*cos(c - b*x), x, 3, (1/2)*x*cos(a + c) + sin(a - c + 2*b*x)/(4*b)]


    @test_int [tan(a + b*x)*tan(c + b*x), x, 4, -x - (cot(a - c)*log(cos(a + b*x)))/b + (cot(a - c)*log(cos(c + b*x)))/b]
    @test_int [tan(a + b*x)*tan(c - b*x), x, 4, x - (cot(a + c)*log(cos(c - b*x)))/b + (cot(a + c)*log(cos(a + b*x)))/b]


    @test_int [cot(a + b*x)*cot(c + b*x), x, 4, -x - (cot(a - c)*log(sin(a + b*x)))/b + (cot(a - c)*log(sin(c + b*x)))/b]
    @test_int [cot(a + b*x)*cot(c - b*x), x, 4, x - (cot(a + c)*log(sin(c - b*x)))/b + (cot(a + c)*log(sin(a + b*x)))/b]


    @test_int [sec(a + b*x)*sec(c + b*x), x, 3, -((csc(a - c)*log(cos(a + b*x)))/b) + (csc(a - c)*log(cos(c + b*x)))/b]
    @test_int [sec(a + b*x)*sec(c - b*x), x, 3, (csc(a + c)*log(cos(c - b*x)))/b - (csc(a + c)*log(cos(a + b*x)))/b]


    @test_int [csc(a + b*x)*csc(c + b*x), x, 3, -((csc(a - c)*log(sin(a + b*x)))/b) + (csc(a - c)*log(sin(c + b*x)))/b]
    @test_int [csc(a + b*x)*csc(c - b*x), x, 3, -((csc(a + c)*log(sin(c - b*x)))/b) + (csc(a + c)*log(sin(a + b*x)))/b]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(Trig(a+b*x)*Trig(a+b*x))^m=#


    @test_int [(sin(x)*tan(x))^(1/2), x, 2, -2*cot(x)*sqrt(sin(x)*tan(x))]
    @test_int [(sin(x)*tan(x))^(3/2), x, 3, (8/3)*csc(x)*sqrt(sin(x)*tan(x)) - (2/3)*sin(x)*sqrt(sin(x)*tan(x))]
    @test_int [(sin(x)*tan(x))^(5/2), x, 4, (64/15)*cot(x)*sqrt(sin(x)*tan(x)) + (16/15)*tan(x)*sqrt(sin(x)*tan(x)) - (2/5)*sin(x)^2*tan(x)*sqrt(sin(x)*tan(x))]


    @test_int [(cos(x)*cot(x))^(1/2), x, 2, 2*sqrt(cos(x)*cot(x))*tan(x)]
    @test_int [(cos(x)*cot(x))^(3/2), x, 3, (2/3)*cos(x)*sqrt(cos(x)*cot(x)) - (8/3)*sqrt(cos(x)*cot(x))*sec(x)]
    @test_int [(cos(x)*cot(x))^(5/2), x, 4, (-(16/15))*cot(x)*sqrt(cos(x)*cot(x)) + (2/5)*cos(x)^2*cot(x)*sqrt(cos(x)*cot(x)) - (64/15)*sqrt(cos(x)*cot(x))*tan(x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^q*Trig(x)^m*(a+b*Trig(x)^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^q*Trig(x)^m*(a+b*Trig(x)^n)^p=#


    @test_int [x*cos(x)/(a + b*sin(x))^2, x, 4, (2*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/(b*sqrt(a^2 - b^2)) - x/(b*(a + b*sin(x)))]
    @test_int [x*cos(x)/(a + b*sin(x))^3, x, 6, (a*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/(b*(a^2 - b^2)^(3/2)) - x/(2*b*(a + b*sin(x))^2) + cos(x)/(2*(a^2 - b^2)*(a + b*sin(x)))]


    @test_int [x*sin(x)/(a + b*cos(x))^2, x, 3, -((2*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/(sqrt(a - b)*b*sqrt(a + b))) + x/(b*(a + b*cos(x)))]
    @test_int [x*sin(x)/(a + b*cos(x))^3, x, 5, -((a*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/((a - b)^(3/2)*b*(a + b)^(3/2))) + x/(2*b*(a + b*cos(x))^2) + sin(x)/(2*(a^2 - b^2)*(a + b*cos(x)))]


    @test_int [x*sec(x)^2/(a + b*tan(x))^2, x, 3, (a*x)/(b*(a^2 + b^2)) + log(a*cos(x) + b*sin(x))/(a^2 + b^2) - x/(b*(a + b*tan(x)))]
    @test_int [x*csc(x)^2/(a + b*cot(x))^2, x, 3, -((a*x)/(b*(a^2 + b^2))) + x/(b*(a + b*cot(x))) + log(b*cos(x) + a*sin(x))/(a^2 + b^2)]


    @test_int [sec(c + d*x)^2/(a + b*tan(c + d*x)^2), x, 2, atan((sqrt(b)*tan(c + d*x))/sqrt(a))/(sqrt(a)*sqrt(b)*d)]
    @test_int [x*sec(c + d*x)^2/(a + b*tan(c + d*x)^2), x, 9, -((im*x*log(1 + ((a - b)*ℯ^(2*im*(c + d*x)))/(sqrt(a) - sqrt(b))^2))/(2*sqrt(a)*sqrt(b)*d)) + (im*x*log(1 + ((a - b)*ℯ^(2*im*(c + d*x)))/(sqrt(a) + sqrt(b))^2))/(2*sqrt(a)*sqrt(b)*d) - PolyLog(2, -(((a - b)*ℯ^(2*im*(c + d*x)))/(sqrt(a) - sqrt(b))^2))/(4*sqrt(a)*sqrt(b)*d^2) + PolyLog(2, -(((a - b)*ℯ^(2*im*(c + d*x)))/(sqrt(a) + sqrt(b))^2))/(4*sqrt(a)*sqrt(b)*d^2)]
    @test_int [x^2*sec(c + d*x)^2/(a + b*tan(c + d*x)^2), x, 11, -((im*x^2*log(1 + ((a - b)*ℯ^(2*im*(c + d*x)))/(sqrt(a) - sqrt(b))^2))/(2*sqrt(a)*sqrt(b)*d)) + (im*x^2*log(1 + ((a - b)*ℯ^(2*im*(c + d*x)))/(sqrt(a) + sqrt(b))^2))/(2*sqrt(a)*sqrt(b)*d) - (x*PolyLog(2, -(((a - b)*ℯ^(2*im*(c + d*x)))/(sqrt(a) - sqrt(b))^2)))/(2*sqrt(a)*sqrt(b)*d^2) + (x*PolyLog(2, -(((a - b)*ℯ^(2*im*(c + d*x)))/(sqrt(a) + sqrt(b))^2)))/(2*sqrt(a)*sqrt(b)*d^2) + (im*PolyLog(3, -(((sqrt(a) - sqrt(b))*ℯ^(2*im*(c + d*x)))/(sqrt(a) + sqrt(b)))))/(4*sqrt(a)*sqrt(b)*d^3) - (im*PolyLog(3, -(((sqrt(a) + sqrt(b))*ℯ^(2*im*(c + d*x)))/(sqrt(a) - sqrt(b)))))/(4*sqrt(a)*sqrt(b)*d^3)]


    @test_int [sec(c + d*x)^2/(a + b*tan(c + d*x)^2 + c*sec(c + d*x)^2), x, 2, atan((sqrt(b + c)*tan(c + d*x))/sqrt(a + c))/(sqrt(a + c)*sqrt(b + c)*d)]
    @test_int [x*sec(c + d*x)^2/(a + b*tan(c + d*x)^2 + c*sec(c + d*x)^2), x, 9, -((im*x*log(1 + ((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*c - 2*sqrt(a + c)*sqrt(b + c))))/(2*sqrt(a + c)*sqrt(b + c)*d)) + (im*x*log(1 + ((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*(c + sqrt(a + c)*sqrt(b + c)))))/(2*sqrt(a + c)*sqrt(b + c)*d) - PolyLog(2, -(((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*c - 2*sqrt(a + c)*sqrt(b + c))))/(4*sqrt(a + c)*sqrt(b + c)*d^2) + PolyLog(2, -(((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*(c + sqrt(a + c)*sqrt(b + c)))))/(4*sqrt(a + c)*sqrt(b + c)*d^2)]
    @test_int [x^2*sec(c + d*x)^2/(a + b*tan(c + d*x)^2 + c*sec(c + d*x)^2), x, 11, -((im*x^2*log(1 + ((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*c - 2*sqrt(a + c)*sqrt(b + c))))/(2*sqrt(a + c)*sqrt(b + c)*d)) + (im*x^2*log(1 + ((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*(c + sqrt(a + c)*sqrt(b + c)))))/(2*sqrt(a + c)*sqrt(b + c)*d) - (x*PolyLog(2, -(((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*c - 2*sqrt(a + c)*sqrt(b + c)))))/(2*sqrt(a + c)*sqrt(b + c)*d^2) + (x*PolyLog(2, -(((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*(c + sqrt(a + c)*sqrt(b + c))))))/(2*sqrt(a + c)*sqrt(b + c)*d^2) - (im*PolyLog(3, -(((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*c - 2*sqrt(a + c)*sqrt(b + c)))))/(4*sqrt(a + c)*sqrt(b + c)*d^3) + (im*PolyLog(3, -(((a - b)*ℯ^(2*im*(c + d*x)))/(a + b + 2*(c + sqrt(a + c)*sqrt(b + c))))))/(4*sqrt(a + c)*sqrt(b + c)*d^3)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f+g*x)^p*(a+b*sin(e+f*x))^m*(c+d*sin(e+f*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f+g*x)^p*(a+b*sin(e+f*x))^(m/2)*(c+d*sin(e+f*x))^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)), x, 5, -((6*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/f^4) + (3*x^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/f^2 - (6*x*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/f^3 + (x^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/f]
    @test_int [x^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)), x, 4, (2*x*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/f^2 - (2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/f^3 + (x^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/f]
    @test_int [x^1*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)), x, 3, (sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/f^2 + (x*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/f]
    @test_int [sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))/x^1, x, 4, cos(e)*CosIntegral(f*x)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)) - sec(e + f*x)*sin(e)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*SinIntegral(f*x)]
    @test_int [sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))/x^2, x, 5, -((sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/x) - f*CosIntegral(f*x)*sec(e + f*x)*sin(e)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)) - f*cos(e)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*SinIntegral(f*x)]
    @test_int [sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))/x^3, x, 6, -((sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(2*x^2)) - (1/2)*f^2*cos(e)*CosIntegral(f*x)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)) + (1/2)*f^2*sec(e + f*x)*sin(e)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*SinIntegral(f*x) + (f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/(2*x)]


    @test_int [x^3*sqrt(a - a*sin(e + f*x))*(c + c*sin(e + f*x))^(3/2), x, 11, -((6*c*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/f^4) + (3*c*x^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/f^2 + (3*c*x*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(8*f^3) - (3*c*x^3*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(4*f) - (3*c*sin(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(8*f^4) + (3*c*x^2*sin(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(4*f^2) + (x^3*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*(c + c*sin(e + f*x))^(5/2))/(2*c*f) - (6*c*x*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/f^3 - (3*c*x*sin(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/(4*f^3)]
    @test_int [x^2*sqrt(a - a*sin(e + f*x))*(c + c*sin(e + f*x))^(3/2), x, 8, (2*c*x*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/f^2 - (3*c*x^2*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(4*f) + (c*x*sin(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(2*f^2) + (x^2*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*(c + c*sin(e + f*x))^(5/2))/(2*c*f) - (2*c*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/f^3 - (c*sin(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/(4*f^3)]
    @test_int [x^1*sqrt(a - a*sin(e + f*x))*(c + c*sin(e + f*x))^(3/2), x, 3, (c*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/f^2 - (3*c*x*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(4*f) + (c*sin(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(4*f^2) + (x*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*(c + c*sin(e + f*x))^(5/2))/(2*c*f)]
    @test_int [sqrt(a - a*sin(e + f*x))*(c + c*sin(e + f*x))^(3/2)/x^1, x, 11, c*cos(e)*CosIntegral(f*x)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)) + (1/2)*c*CosIntegral(2*f*x)*sec(e + f*x)*sin(2*e)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)) - c*sec(e + f*x)*sin(e)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*SinIntegral(f*x) + (1/2)*c*cos(2*e)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*SinIntegral(2*f*x)]
    @test_int [sqrt(a - a*sin(e + f*x))*(c + c*sin(e + f*x))^(3/2)/x^2, x, 13, -((c*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/x) + c*f*cos(2*e)*CosIntegral(2*f*x)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)) - c*f*CosIntegral(f*x)*sec(e + f*x)*sin(e)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)) - (c*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*sin(2*e + 2*f*x))/(2*x) - c*f*cos(e)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*SinIntegral(f*x) - c*f*sec(e + f*x)*sin(2*e)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*SinIntegral(2*f*x)]
    @test_int [sqrt(a - a*sin(e + f*x))*(c + c*sin(e + f*x))^(3/2)/x^3, x, 15, -((c*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(2*x^2)) - (c*f*cos(2*e + 2*f*x)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))/(2*x) - (1/2)*c*f^2*cos(e)*CosIntegral(f*x)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)) - c*f^2*CosIntegral(2*f*x)*sec(e + f*x)*sin(2*e)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)) - (c*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*sin(2*e + 2*f*x))/(4*x^2) + (1/2)*c*f^2*sec(e + f*x)*sin(e)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*SinIntegral(f*x) - c*f^2*cos(2*e)*sec(e + f*x)*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*SinIntegral(2*f*x) + (c*f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))*tan(e + f*x))/(2*x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [(g + h*x)^3*sqrt(a - a*sin(e + f*x))/sqrt(c + c*sin(e + f*x)), x, 20, -((im*a*(g + h*x)^4*cos(e + f*x))/(4*h*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))) - (2*im*a*(g + h*x)^3*atan(ℯ^(im*(e + f*x)))*cos(e + f*x))/(f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (a*(g + h*x)^3*cos(e + f*x)*log(1 + ℯ^(2*im*(e + f*x))))/(f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (3*im*a*h*(g + h*x)^2*cos(e + f*x)*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/(f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (3*im*a*h*(g + h*x)^2*cos(e + f*x)*PolyLog(2, im*ℯ^(im*(e + f*x))))/(f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (3*im*a*h*(g + h*x)^2*cos(e + f*x)*PolyLog(2, -ℯ^(2*im*(e + f*x))))/(2*f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (6*a*h^2*(g + h*x)*cos(e + f*x)*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/(f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (6*a*h^2*(g + h*x)*cos(e + f*x)*PolyLog(3, im*ℯ^(im*(e + f*x))))/(f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (3*a*h^2*(g + h*x)*cos(e + f*x)*PolyLog(3, -ℯ^(2*im*(e + f*x))))/(2*f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (6*im*a*h^3*cos(e + f*x)*PolyLog(4, (-im)*ℯ^(im*(e + f*x))))/(f^4*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (6*im*a*h^3*cos(e + f*x)*PolyLog(4, im*ℯ^(im*(e + f*x))))/(f^4*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (3*im*a*h^3*cos(e + f*x)*PolyLog(4, -ℯ^(2*im*(e + f*x))))/(4*f^4*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))]
    @test_int [(g + h*x)^2*sqrt(a - a*sin(e + f*x))/sqrt(c + c*sin(e + f*x)), x, 17, -((im*a*(g + h*x)^3*cos(e + f*x))/(3*h*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))) - (2*im*a*(g + h*x)^2*atan(ℯ^(im*(e + f*x)))*cos(e + f*x))/(f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (a*(g + h*x)^2*cos(e + f*x)*log(1 + ℯ^(2*im*(e + f*x))))/(f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (2*im*a*h*(g + h*x)*cos(e + f*x)*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/(f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (2*im*a*h*(g + h*x)*cos(e + f*x)*PolyLog(2, im*ℯ^(im*(e + f*x))))/(f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (im*a*h*(g + h*x)*cos(e + f*x)*PolyLog(2, -ℯ^(2*im*(e + f*x))))/(f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (2*a*h^2*cos(e + f*x)*PolyLog(3, (-im)*ℯ^(im*(e + f*x))))/(f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (2*a*h^2*cos(e + f*x)*PolyLog(3, im*ℯ^(im*(e + f*x))))/(f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (a*h^2*cos(e + f*x)*PolyLog(3, -ℯ^(2*im*(e + f*x))))/(2*f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))]
    @test_int [(g + h*x)^1*sqrt(a - a*sin(e + f*x))/sqrt(c + c*sin(e + f*x)), x, 14, -((im*a*(g + h*x)^2*cos(e + f*x))/(2*h*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))) - (2*im*a*(g + h*x)*atan(ℯ^(im*(e + f*x)))*cos(e + f*x))/(f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (a*(g + h*x)*cos(e + f*x)*log(1 + ℯ^(2*im*(e + f*x))))/(f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (im*a*h*cos(e + f*x)*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/(f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (im*a*h*cos(e + f*x)*PolyLog(2, im*ℯ^(im*(e + f*x))))/(f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (im*a*h*cos(e + f*x)*PolyLog(2, -ℯ^(2*im*(e + f*x))))/(2*f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))]
    @test_int [sqrt(a - a*sin(e + f*x))/((g + h*x)^1*sqrt(c + c*sin(e + f*x))), x, 5, (a*cos(e + f*x)*Unintegrable(sec(e + f*x)/(g + h*x), x))/(sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (a*cos(e + f*x)*Unintegrable(tan(e + f*x)/(g + h*x), x))/(sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))]


    @test_int [x^3*sqrt(a - a*sin(e + f*x))/(c + c*sin(e + f*x))^(3/2), x, 51, -((3*a*x^2)/(c*f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))) - (3*im*a*x^2*cos(e + f*x))/(c*f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (12*im*a*x*atan(ℯ^(im*(e + f*x)))*cos(e + f*x))/(c*f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (6*a*x*cos(e + f*x)*log(1 + ℯ^(2*im*(e + f*x))))/(c*f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (6*im*a*cos(e + f*x)*PolyLog(2, (-im)*ℯ^(im*(e + f*x))))/(c*f^4*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (6*im*a*cos(e + f*x)*PolyLog(2, im*ℯ^(im*(e + f*x))))/(c*f^4*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (3*im*a*cos(e + f*x)*PolyLog(2, -ℯ^(2*im*(e + f*x))))/(c*f^4*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (a*x^3*sec(e + f*x))/(c*f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (3*a*x^2*sin(e + f*x))/(c*f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (a*x^3*tan(e + f*x))/(c*f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))]
    @test_int [x^2*sqrt(a - a*sin(e + f*x))/(c + c*sin(e + f*x))^(3/2), x, 34, -((2*a*x)/(c*f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))) + (2*a*atanh(sin(e + f*x))*cos(e + f*x))/(c*f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (2*a*cos(e + f*x)*log(cos(e + f*x)))/(c*f^3*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) - (a*x^2*sec(e + f*x))/(c*f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (2*a*x*sin(e + f*x))/(c*f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (a*x^2*tan(e + f*x))/(c*f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))]
    @test_int [x^1*sqrt(a - a*sin(e + f*x))/(c + c*sin(e + f*x))^(3/2), x, 26, -(a/(c*f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))) - (a*x*sec(e + f*x))/(c*f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (a*sin(e + f*x))/(c*f^2*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x))) + (a*x*tan(e + f*x))/(c*f*sqrt(a - a*sin(e + f*x))*sqrt(c + c*sin(e + f*x)))]


    @test_int [(z^2*sqrt(1 + cos(z)))/sqrt(1 - cos(z)), z, 15, -((im*z^3*sin(z))/(3*sqrt(1 - cos(z))*sqrt(1 + cos(z)))) - (2*z^2*atanh(ℯ^(im*z))*sin(z))/(sqrt(1 - cos(z))*sqrt(1 + cos(z))) + (z^2*log(1 - ℯ^(2*im*z))*sin(z))/(sqrt(1 - cos(z))*sqrt(1 + cos(z))) + (2*im*z*PolyLog(2, -ℯ^(im*z))*sin(z))/(sqrt(1 - cos(z))*sqrt(1 + cos(z))) - (2*im*z*PolyLog(2, ℯ^(im*z))*sin(z))/(sqrt(1 - cos(z))*sqrt(1 + cos(z))) - (im*z*PolyLog(2, ℯ^(2*im*z))*sin(z))/(sqrt(1 - cos(z))*sqrt(1 + cos(z))) - (2*PolyLog(3, -ℯ^(im*z))*sin(z))/(sqrt(1 - cos(z))*sqrt(1 + cos(z))) + (2*PolyLog(3, ℯ^(im*z))*sin(z))/(sqrt(1 - cos(z))*sqrt(1 + cos(z))) + (PolyLog(3, ℯ^(2*im*z))*sin(z))/(2*sqrt(1 - cos(z))*sqrt(1 + cos(z)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A+B*Trig(x)^m)^p / (a+b*Trig(x)^n)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*Trig(x))*(a+b*Trig(x))^n=#


    @test_int [(A + B*sec(x))*(a + a*cos(x))^1, x, 5, a*(A + B)*x + a*B*atanh(sin(x)) + a*A*sin(x)]
    @test_int [(A + B*sec(x))*(a + a*cos(x))^2, x, 6, (1/2)*a^2*(3*A + 4*B)*x + a^2*B*atanh(sin(x)) + (1/2)*a^2*(3*A + 2*B)*sin(x) + (1/2)*A*(a^2 + a^2*cos(x))*sin(x)]
    @test_int [(A + B*sec(x))*(a + a*cos(x))^3, x, 7, (1/2)*a^3*(5*A + 7*B)*x + a^3*B*atanh(sin(x)) + (5/2)*a^3*(A + B)*sin(x) + (1/3)*a*A*(a + a*cos(x))^2*sin(x) + (1/6)*(5*A + 3*B)*(a^3 + a^3*cos(x))*sin(x)]
    @test_int [(A + B*sec(x))*(a + a*cos(x))^4, x, 8, (1/8)*a^4*(35*A + 48*B)*x + a^4*B*atanh(sin(x)) + (5/8)*a^4*(7*A + 8*B)*sin(x) + (1/4)*a*A*(a + a*cos(x))^3*sin(x) + (1/12)*(7*A + 4*B)*(a^2 + a^2*cos(x))^2*sin(x) + (1/24)*(35*A + 32*B)*(a^4 + a^4*cos(x))*sin(x)]


    @test_int [(A + B*sec(x))/(a + a*cos(x))^1, x, 4, (B*atanh(sin(x)))/a + ((A - B)*sin(x))/(a + a*cos(x))]
    @test_int [(A + B*sec(x))/(a + a*cos(x))^2, x, 5, (B*atanh(sin(x)))/a^2 + ((A - 4*B)*sin(x))/(3*a^2*(1 + cos(x))) + ((A - B)*sin(x))/(3*(a + a*cos(x))^2)]
    @test_int [(A + B*sec(x))/(a + a*cos(x))^3, x, 6, (B*atanh(sin(x)))/a^3 + ((A - B)*sin(x))/(5*(a + a*cos(x))^3) + ((2*A - 7*B)*sin(x))/(15*a*(a + a*cos(x))^2) + (2*(A - 11*B)*sin(x))/(15*(a^3 + a^3*cos(x)))]
    @test_int [(A + B*sec(x))/(a + a*cos(x))^4, x, 7, (B*atanh(sin(x)))/a^4 + ((6*A - 55*B)*sin(x))/(105*a^4*(1 + cos(x))^2) + (2*(3*A - 80*B)*sin(x))/(105*a^4*(1 + cos(x))) + ((A - B)*sin(x))/(7*(a + a*cos(x))^4) + ((3*A - 10*B)*sin(x))/(35*a*(a + a*cos(x))^3)]


    @test_int [(A + B*sec(x))*(a + a*cos(x))^(5/2), x, 6, 2*a^(5/2)*B*atanh((sqrt(a)*sin(x))/sqrt(a + a*cos(x))) + (2*a^3*(32*A + 35*B)*sin(x))/(15*sqrt(a + a*cos(x))) + (2/15)*a^2*(8*A + 5*B)*sqrt(a + a*cos(x))*sin(x) + (2/5)*a*A*(a + a*cos(x))^(3/2)*sin(x)]
    @test_int [(A + B*sec(x))*(a + a*cos(x))^(3/2), x, 5, 2*a^(3/2)*B*atanh((sqrt(a)*sin(x))/sqrt(a + a*cos(x))) + (2*a^2*(4*A + 3*B)*sin(x))/(3*sqrt(a + a*cos(x))) + (2/3)*a*A*sqrt(a + a*cos(x))*sin(x)]
    @test_int [(A + B*sec(x))*(a + a*cos(x))^(1/2), x, 4, 2*sqrt(a)*B*atanh((sqrt(a)*sin(x))/sqrt(a + a*cos(x))) + (2*a*A*sin(x))/sqrt(a + a*cos(x))]
    @test_int [(A + B*sec(x))/(a + a*cos(x))^(1/2), x, 6, (2*B*atanh((sqrt(a)*sin(x))/sqrt(a + a*cos(x))))/sqrt(a) + (sqrt(2)*(A - B)*atanh((sqrt(a)*sin(x))/(sqrt(2)*sqrt(a + a*cos(x)))))/sqrt(a)]
    @test_int [(A + B*sec(x))/(a + a*cos(x))^(3/2), x, 7, (2*B*atanh((sqrt(a)*sin(x))/sqrt(a + a*cos(x))))/a^(3/2) + ((A - 5*B)*atanh((sqrt(a)*sin(x))/(sqrt(2)*sqrt(a + a*cos(x)))))/(2*sqrt(2)*a^(3/2)) + ((A - B)*sin(x))/(2*(a + a*cos(x))^(3/2))]
    @test_int [(A + B*sec(x))/(a + a*cos(x))^(5/2), x, 8, (2*B*atanh((sqrt(a)*sin(x))/sqrt(a + a*cos(x))))/a^(5/2) + ((3*A - 43*B)*atanh((sqrt(a)*sin(x))/(sqrt(2)*sqrt(a + a*cos(x)))))/(16*sqrt(2)*a^(5/2)) + ((A - B)*sin(x))/(4*(a + a*cos(x))^(5/2)) + ((3*A - 11*B)*sin(x))/(16*a*(a + a*cos(x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(A+B*Trig(x))*(a+b*Trig(x))^n=#


    @test_int [x*((b + a*sin(x))/(a + b*sin(x))^2), x, 3, log(a + b*sin(x))/b - (x*cos(x))/(a + b*sin(x))]
    @test_int [x*((b + a*cos(x))/(a + b*cos(x))^2), x, 3, log(a + b*cos(x))/b + (x*sin(x))/(a + b*cos(x))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*Trig(x)^m)^p / (a+b*Trig(x)^n)=#
    #==#


    @test_int [(1 + sin(x)^2)/(1 - sin(x)^2), x, 4, -x + 2*tan(x)]
    @test_int [(1 - sin(x)^2)/(1 + sin(x)^2), x, 3, -x + sqrt(2)*x + sqrt(2)*atan((cos(x)*sin(x))/(1 + sqrt(2) + sin(x)^2))]


    @test_int [(1 + cos(x)^2)/(1 - cos(x)^2), x, 4, -x - 2*cot(x)]
    @test_int [(1 - cos(x)^2)/(1 + cos(x)^2), x, 3, -x + sqrt(2)*x - sqrt(2)*atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2))]


    @test_int [(-1 + c^2/d^2 + sin(x)^2)/(c + d*cos(x)), x, 4, (c*x)/d^2 - sin(x)/d]
    @test_int [(a + b*sin(x)^2)/(c + d*cos(x)), x, 8, (b*c*x)/d^2 + (2*a*atan((sqrt(c - d)*tan(x/2))/sqrt(c + d)))/(sqrt(c - d)*sqrt(c + d)) - (2*b*sqrt(c - d)*sqrt(c + d)*atan((sqrt(c - d)*tan(x/2))/sqrt(c + d)))/d^2 - (b*sin(x))/d]

    @test_int [(a + b*sin(x)^2)/(c + c*cos(x)^2), x, 5, -((b*x)/c) + ((a + 2*b)*x)/(sqrt(2)*c) - ((a + 2*b)*atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2)))/(sqrt(2)*c)]
    @test_int [(a + b*sin(x)^2)/(c - c*cos(x)^2), x, 3, (b*x)/c - (a*cot(x))/c]
    @test_int [(a + b*sin(x)^2)/(c + d*cos(x)^2), x, 4, -((b*x)/d) + ((a*d + b*(c + d))*atan((sqrt(c)*tan(x))/sqrt(c + d)))/(sqrt(c)*d*sqrt(c + d))]


    @test_int [(-1 + c^2/d^2 + cos(x)^2)/(c + d*sin(x)), x, 4, (c*x)/d^2 + cos(x)/d]
    @test_int [(a + b*cos(x)^2)/(c + d*sin(x)), x, 10, (b*c*x)/d^2 + (2*a*atan((d + c*tan(x/2))/sqrt(c^2 - d^2)))/sqrt(c^2 - d^2) - (2*b*sqrt(c^2 - d^2)*atan((d + c*tan(x/2))/sqrt(c^2 - d^2)))/d^2 + (b*cos(x))/d]

    @test_int [(a + b*cos(x)^2)/(c + c*sin(x)^2), x, 4, -((b*x)/c) + ((a + 2*b)*x)/(sqrt(2)*c) + ((a + 2*b)*atan((cos(x)*sin(x))/(1 + sqrt(2) + sin(x)^2)))/(sqrt(2)*c)]
    @test_int [(a + b*cos(x)^2)/(c - c*sin(x)^2), x, 3, (b*x)/c + (a*tan(x))/c]
    @test_int [(a + b*cos(x)^2)/(c + d*sin(x)^2), x, 4, -((b*x)/d) + ((a*d + b*(c + d))*atan((sqrt(c + d)*tan(x))/sqrt(c)))/(sqrt(c)*d*sqrt(c + d))]


    @test_int [(a + b*sec(x)^2)/(c + d*cos(x)), x, 6, (2*(a*c^2 + b*d^2)*atan((sqrt(c - d)*tan(x/2))/sqrt(c + d)))/(c^2*sqrt(c - d)*sqrt(c + d)) - (b*d*atanh(sin(x)))/c^2 + (b*tan(x))/c]
    @test_int [(a + b*csc(x)^2)/(c + d*sin(x)), x, 7, (2*(a*c^2 + b*d^2)*atan((d + c*tan(x/2))/sqrt(c^2 - d^2)))/(c^2*sqrt(c^2 - d^2)) + (b*d*atanh(cos(x)))/c^2 - (b*cot(x))/c]


    #= [sqrt(1 + sin(x))/(1 - tan(x)^2), x, 0, 0] =#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(a*Trig(c+d*x) + b*Trig(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x) + b*sin(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x) + b*sin(c+d*x))^n=#


    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^n, x, 2, -((cos(c + d*x - atan(a, b))^(1 + n)*Hypergeometric2F1(1/2, (1 + n)/2, (3 + n)/2, cos(c + d*x - atan(a, b))^2)*(a*cos(c + d*x) + b*sin(c + d*x))^n*sin(c + d*x - atan(a, b)))/(((a*cos(c + d*x) + b*sin(c + d*x))/sqrt(a^2 + b^2))^n*(d*(1 + n)*sqrt(sin(c + d*x - atan(a, b))^2))))]
    @test_int [(2*cos(c+d*x) + 3*sin(c+d*x))^n, x, 2, -((13^(n/2)*cos(c + d*x - atan(3/2))^(1 + n)*Hypergeometric2F1(1/2, (1 + n)/2, (3 + n)/2, cos(c + d*x - atan(3/2))^2)*sin(c + d*x - atan(3/2)))/(d*(1 + n)*sqrt(sin(c + d*x - atan(3/2))^2)))]


    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^7, x, 3, -(((a^2 + b^2)^3*(b*cos(c + d*x) - a*sin(c + d*x)))/d) + ((a^2 + b^2)^2*(b*cos(c + d*x) - a*sin(c + d*x))^3)/d - (3*(a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x))^5)/(5*d) + (b*cos(c + d*x) - a*sin(c + d*x))^7/(7*d)]
    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^6, x, 4, (5/16)*(a^2 + b^2)^3*x - (5*(a^2 + b^2)^2*(b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x)))/(16*d) - (5*(a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x))^3)/(24*d) - ((b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x))^5)/(6*d)]
    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^5, x, 3, -(((a^2 + b^2)^2*(b*cos(c + d*x) - a*sin(c + d*x)))/d) + (2*(a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x))^3)/(3*d) - (b*cos(c + d*x) - a*sin(c + d*x))^5/(5*d)]
    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^4, x, 3, (3/8)*(a^2 + b^2)^2*x - (3*(a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x)))/(8*d) - ((b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x))^3)/(4*d)]
    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^3, x, 2, -(((a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x)))/d) + (b*cos(c + d*x) - a*sin(c + d*x))^3/(3*d)]
    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^2, x, 2, (1/2)*(a^2 + b^2)*x - ((b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x)))/(2*d)]
    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^1, x, 3, -((b*cos(c + d*x))/d) + (a*sin(c + d*x))/d]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^1, x, 2, -(atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2))/(sqrt(a^2 + b^2)*d))]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^2, x, 1, sin(c + d*x)/(a*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^3, x, 3, -(atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2))/(2*(a^2 + b^2)^(3/2)*d)) - (b*cos(c + d*x) - a*sin(c + d*x))/(2*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^2)]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^4, x, 2, -((b*cos(c + d*x) - a*sin(c + d*x))/(3*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^3)) + (2*sin(c + d*x))/(3*a*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^5, x, 4, -((3*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(8*(a^2 + b^2)^(5/2)*d)) - (b*cos(c + d*x) - a*sin(c + d*x))/(4*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^4) - (3*(b*cos(c + d*x) - a*sin(c + d*x)))/(8*(a^2 + b^2)^2*d*(a*cos(c + d*x) + b*sin(c + d*x))^2)]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^6, x, 3, -((b*cos(c + d*x) - a*sin(c + d*x))/(5*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^5)) - (4*(b*cos(c + d*x) - a*sin(c + d*x)))/(15*(a^2 + b^2)^2*d*(a*cos(c + d*x) + b*sin(c + d*x))^3) + (8*sin(c + d*x))/(15*a*(a^2 + b^2)^2*d*(a*cos(c + d*x) + b*sin(c + d*x)))]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x) + b*sin(c+d*x))^(n/2)=#


    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^(7/2), x, 4, -((10*(a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x))*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))/(21*d)) - (2*(b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x))^(5/2))/(7*d) + (10*(a^2 + b^2)^2*EllipticF((1/2)*(c + d*x - atan(a, b)), 2)*sqrt((a*cos(c + d*x) + b*sin(c + d*x))/sqrt(a^2 + b^2)))/(21*d*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^(5/2), x, 3, -((2*(b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x))^(3/2))/(5*d)) + (6*(a^2 + b^2)*EllipticE((1/2)*(c + d*x - atan(a, b)), 2)*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))/(5*d*sqrt((a*cos(c + d*x) + b*sin(c + d*x))/sqrt(a^2 + b^2)))]
    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^(3/2), x, 3, -((2*(b*cos(c + d*x) - a*sin(c + d*x))*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))/(3*d)) + (2*(a^2 + b^2)*EllipticF((1/2)*(c + d*x - atan(a, b)), 2)*sqrt((a*cos(c + d*x) + b*sin(c + d*x))/sqrt(a^2 + b^2)))/(3*d*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [(a*cos(c+d*x) + b*sin(c+d*x))^(1/2), x, 2, (2*EllipticE((1/2)*(c + d*x - atan(a, b)), 2)*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))/(d*sqrt((a*cos(c + d*x) + b*sin(c + d*x))/sqrt(a^2 + b^2)))]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^(1/2), x, 2, (2*EllipticF((1/2)*(c + d*x - atan(a, b)), 2)*sqrt((a*cos(c + d*x) + b*sin(c + d*x))/sqrt(a^2 + b^2)))/(d*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^(3/2), x, 3, -((2*(b*cos(c + d*x) - a*sin(c + d*x)))/((a^2 + b^2)*d*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))) - (2*EllipticE((1/2)*(c + d*x - atan(a, b)), 2)*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))/((a^2 + b^2)*d*sqrt((a*cos(c + d*x) + b*sin(c + d*x))/sqrt(a^2 + b^2)))]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^(5/2), x, 3, -((2*(b*cos(c + d*x) - a*sin(c + d*x)))/(3*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^(3/2))) + (2*EllipticF((1/2)*(c + d*x - atan(a, b)), 2)*sqrt((a*cos(c + d*x) + b*sin(c + d*x))/sqrt(a^2 + b^2)))/(3*(a^2 + b^2)*d*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [1/(a*cos(c+d*x) + b*sin(c+d*x))^(7/2), x, 4, -((2*(b*cos(c + d*x) - a*sin(c + d*x)))/(5*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^(5/2))) - (6*(b*cos(c + d*x) - a*sin(c + d*x)))/(5*(a^2 + b^2)^2*d*sqrt(a*cos(c + d*x) + b*sin(c + d*x))) - (6*EllipticE((1/2)*(c + d*x - atan(a, b)), 2)*sqrt(a*cos(c + d*x) + b*sin(c + d*x)))/(5*(a^2 + b^2)^2*d*sqrt((a*cos(c + d*x) + b*sin(c + d*x))/sqrt(a^2 + b^2)))]


    @test_int [(2*cos(c+d*x) + 3*sin(c+d*x))^(7/2), x, 4, (130*13^(3/4)*EllipticF((1/2)*(c + d*x - atan(3/2)), 2))/(21*d) - (130*(3*cos(c + d*x) - 2*sin(c + d*x))*sqrt(2*cos(c + d*x) + 3*sin(c + d*x)))/(21*d) - (2*(3*cos(c + d*x) - 2*sin(c + d*x))*(2*cos(c + d*x) + 3*sin(c + d*x))^(5/2))/(7*d)]
    @test_int [(2*cos(c+d*x) + 3*sin(c+d*x))^(5/2), x, 3, (78*13^(1/4)*EllipticE((1/2)*(c + d*x - atan(3/2)), 2))/(5*d) - (2*(3*cos(c + d*x) - 2*sin(c + d*x))*(2*cos(c + d*x) + 3*sin(c + d*x))^(3/2))/(5*d)]
    @test_int [(2*cos(c+d*x) + 3*sin(c+d*x))^(3/2), x, 3, (2*13^(3/4)*EllipticF((1/2)*(c + d*x - atan(3/2)), 2))/(3*d) - (2*(3*cos(c + d*x) - 2*sin(c + d*x))*sqrt(2*cos(c + d*x) + 3*sin(c + d*x)))/(3*d)]
    @test_int [(2*cos(c+d*x) + 3*sin(c+d*x))^(1/2), x, 2, (2*13^(1/4)*EllipticE((1/2)*(c + d*x - atan(3/2)), 2))/d]
    @test_int [1/(2*cos(c+d*x) + 3*sin(c+d*x))^(1/2), x, 2, (2*EllipticF((1/2)*(c + d*x - atan(3/2)), 2))/(13^(1/4)*d)]
    @test_int [1/(2*cos(c+d*x) + 3*sin(c+d*x))^(3/2), x, 3, -((2*EllipticE((1/2)*(c + d*x - atan(3/2)), 2))/(13^(3/4)*d)) - (2*(3*cos(c + d*x) - 2*sin(c + d*x)))/(13*d*sqrt(2*cos(c + d*x) + 3*sin(c + d*x)))]
    @test_int [1/(2*cos(c+d*x) + 3*sin(c+d*x))^(5/2), x, 3, (2*EllipticF((1/2)*(c + d*x - atan(3/2)), 2))/(39*13^(1/4)*d) - (2*(3*cos(c + d*x) - 2*sin(c + d*x)))/(39*d*(2*cos(c + d*x) + 3*sin(c + d*x))^(3/2))]
    @test_int [1/(2*cos(c+d*x) + 3*sin(c+d*x))^(7/2), x, 4, -((6*EllipticE((1/2)*(c + d*x - atan(3/2)), 2))/(65*13^(3/4)*d)) - (2*(3*cos(c + d*x) - 2*sin(c + d*x)))/(65*d*(2*cos(c + d*x) + 3*sin(c + d*x))^(5/2)) - (6*(3*cos(c + d*x) - 2*sin(c + d*x)))/(845*d*sqrt(2*cos(c + d*x) + 3*sin(c + d*x)))]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x) + i*a*sin(c+d*x))^n=#


    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^n, x, 1, -((im*(a*cos(c + d*x) + im*a*sin(c + d*x))^n)/(d*n))]

    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^4, x, 1, -((im*(a*cos(c + d*x) + im*a*sin(c + d*x))^4)/(4*d))]
    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 1, -((im*(a*cos(c + d*x) + im*a*sin(c + d*x))^3)/(3*d))]
    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 1, -((im*(a*cos(c + d*x) + im*a*sin(c + d*x))^2)/(2*d))]
    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^1, x, 3, -((im*a*cos(c + d*x))/d) + (a*sin(c + d*x))/d]
    @test_int [1/(a*cos(c + d*x) + im*a*sin(c + d*x))^1, x, 1, im/(d*(a*cos(c + d*x) + im*a*sin(c + d*x)))]
    @test_int [1/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 1, im/(2*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^2)]
    @test_int [1/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 1, im/(3*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^3)]
    @test_int [1/(a*cos(c + d*x) + im*a*sin(c + d*x))^4, x, 1, im/(4*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^4)]


    #= ::Subsubsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x) + i*a*sin(c+d*x))^(n/2)=#


    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^(5/2), x, 1, -((2*im*(a*cos(c + d*x) + im*a*sin(c + d*x))^(5/2))/(5*d))]
    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^(3/2), x, 1, -((2*im*(a*cos(c + d*x) + im*a*sin(c + d*x))^(3/2))/(3*d))]
    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^(1/2), x, 1, -((2*im*sqrt(a*cos(c + d*x) + im*a*sin(c + d*x)))/d)]
    @test_int [1/(a*cos(c + d*x) + im*a*sin(c + d*x))^(1/2), x, 1, (2*im)/(d*sqrt(a*cos(c + d*x) + im*a*sin(c + d*x)))]
    @test_int [1/(a*cos(c + d*x) + im*a*sin(c + d*x))^(3/2), x, 1, (2*im)/(3*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^(3/2))]
    @test_int [1/(a*cos(c + d*x) + im*a*sin(c + d*x))^(5/2), x, 1, (2*im)/(5*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(c+d*x) + b*tan(c+d*x))^n=#


    @test_int [(a*sec(x) + b*tan(x))^5, x, 8, (-(1/16))*(a + b)^3*(3*a^2 - 9*a*b + 8*b^2)*log(1 - sin(x)) + (1/16)*(a - b)^3*(3*a^2 + 9*a*b + 8*b^2)*log(1 + sin(x)) - (1/8)*a*(7 - (3*a^2)/b^2)*b^4*sin(x) + (1/4)*sec(x)^4*(b + a*sin(x))*(a + b*sin(x))^4 + (1/8)*sec(x)^2*(a + b*sin(x))^2*(2*b*(a^2 - 2*b^2) + a*(3*a^2 - 5*b^2)*sin(x))]
    @test_int [(a*sec(x) + b*tan(x))^4, x, 4, b^4*x + (4/3)*a*b*(a^2 - 2*b^2)*cos(x) + (1/3)*b^2*(2*a^2 - 3*b^2)*cos(x)*sin(x) + (1/3)*sec(x)^3*(b + a*sin(x))*(a + b*sin(x))^3 - (1/3)*sec(x)*(a + b*sin(x))^2*(a*b - (2*a^2 - 3*b^2)*sin(x))]
    @test_int [(a*sec(x) + b*tan(x))^3, x, 7, (-(1/4))*(a - 2*b)*(a + b)^2*log(1 - sin(x)) + (1/4)*(a - b)^2*(a + 2*b)*log(1 + sin(x)) + (1/2)*a*b^2*sin(x) + (1/2)*sec(x)^2*(b + a*sin(x))*(a + b*sin(x))^2]
    @test_int [(a*sec(x) + b*tan(x))^2, x, 4, (-b^2)*x + a*b*cos(x) + sec(x)*(b + a*sin(x))*(a + b*sin(x))]
    @test_int [(a*sec(x) + b*tan(x))^1, x, 3, a*atanh(sin(x)) - b*log(cos(x))]
    @test_int [1/(a*sec(x) + b*tan(x))^1, x, 3, log(a + b*sin(x))/b]
    @test_int [1/(a*sec(x) + b*tan(x))^2, x, 6, -(x/b^2) + (2*a*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/(b^2*sqrt(a^2 - b^2)) - cos(x)/(b*(a + b*sin(x)))]
    @test_int [1/(a*sec(x) + b*tan(x))^3, x, 4, -(log(a + b*sin(x))/b^3) + (a^2 - b^2)/(2*b^3*(a + b*sin(x))^2) - (2*a)/(b^3*(a + b*sin(x)))]
    @test_int [1/(a*sec(x) + b*tan(x))^4, x, 8, x/b^4 - (a*(2*a^2 - 3*b^2)*atan((b + a*tan(x/2))/sqrt(a^2 - b^2)))/(b^4*(a^2 - b^2)^(3/2)) - cos(x)^3/(3*b*(a + b*sin(x))^3) + (a*cos(x)^3)/(2*b*(a^2 - b^2)*(a + b*sin(x))^2) + (cos(x)*(2*(a^2 - b^2) + a*b*sin(x)))/(2*b^3*(a^2 - b^2)*(a + b*sin(x)))]
    @test_int [1/(a*sec(x) + b*tan(x))^5, x, 4, log(a + b*sin(x))/b^5 - (a^2 - b^2)^2/(4*b^5*(a + b*sin(x))^4) + (4*a*(a^2 - b^2))/(3*b^5*(a + b*sin(x))^3) - (3*a^2 - b^2)/(b^5*(a + b*sin(x))^2) + (4*a)/(b^5*(a + b*sin(x)))]


    @test_int [(sec(x) + tan(x))^5, x, 4, -log(1 - sin(x)) + 2/(1 - sin(x))^2 - 4/(1 - sin(x))]
    @test_int [(sec(x) + tan(x))^4, x, 5, x + (2*cos(x)^3)/(3*(1 - sin(x))^3) - (2*cos(x))/(1 - sin(x))]
    @test_int [(sec(x) + tan(x))^3, x, 4, log(1 - sin(x)) + 2/(1 - sin(x))]
    @test_int [(sec(x) + tan(x))^2, x, 4, -x + (2*cos(x))/(1 - sin(x))]
    @test_int [(sec(x) + tan(x))^1, x, 3, -2*log(cos((1/4)*(pi + 2*x))), atanh(sin(x)) - log(cos(x))]
    @test_int [1/(sec(x) + tan(x))^1, x, 3, log(1 + sin(x))]
    @test_int [1/(sec(x) + tan(x))^2, x, 3, -x - (2*cos(x))/(1 + sin(x))]
    @test_int [1/(sec(x) + tan(x))^3, x, 4, -log(1 + sin(x)) - 2/(1 + sin(x))]
    @test_int [1/(sec(x) + tan(x))^4, x, 4, x - (2*cos(x)^3)/(3*(1 + sin(x))^3) + (2*cos(x))/(1 + sin(x))]
    @test_int [1/(sec(x) + tan(x))^5, x, 4, log(1 + sin(x)) - 2/(1 + sin(x))^2 + 4/(1 + sin(x))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cot(c+d*x) + b*csc(c+d*x))^n=#


    @test_int [(a*cot(x) + b*csc(x))^5, x, 8, (1/8)*a^2*b*(7*a^2 - 3*b^2)*cos(x) + (1/8)*(b + a*cos(x))^2*(2*a*(2*a^2 - b^2) + b*(5*a^2 - 3*b^2)*cos(x))*csc(x)^2 - (1/4)*(b + a*cos(x))^4*(a + b*cos(x))*csc(x)^4 + (1/16)*(a + b)^3*(8*a^2 - 9*a*b + 3*b^2)*log(1 - cos(x)) + (1/16)*(a - b)^3*(8*a^2 + 9*a*b + 3*b^2)*log(1 + cos(x))]
    @test_int [(a*cot(x) + b*csc(x))^4, x, 4, a^4*x + (1/3)*(b + a*cos(x))^2*(a*b + (3*a^2 - 2*b^2)*cos(x))*csc(x) - (1/3)*(b + a*cos(x))^3*(a + b*cos(x))*csc(x)^3 + (4/3)*a*b*(2*a^2 - b^2)*sin(x) + (1/3)*a^2*(3*a^2 - 2*b^2)*cos(x)*sin(x)]
    @test_int [(a*cot(x) + b*csc(x))^3, x, 7, (-(1/2))*a^2*b*cos(x) - (1/2)*(b + a*cos(x))^2*(a + b*cos(x))*csc(x)^2 - (1/4)*(2*a - b)*(a + b)^2*log(1 - cos(x)) - (1/4)*(a - b)^2*(2*a + b)*log(1 + cos(x))]
    @test_int [(a*cot(x) + b*csc(x))^2, x, 4, (-a^2)*x - (b + a*cos(x))*(a + b*cos(x))*csc(x) - a*b*sin(x)]
    @test_int [(a*cot(x) + b*csc(x))^1, x, 3, (-b)*atanh(cos(x)) + a*log(sin(x))]
    @test_int [1/(a*cot(x) + b*csc(x))^1, x, 3, -(log(b + a*cos(x))/a)]
    @test_int [1/(a*cot(x) + b*csc(x))^2, x, 5, -(x/a^2) + (2*b*atanh((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/(a^2*sqrt(a - b)*sqrt(a + b)) + sin(x)/(a*(b + a*cos(x)))]
    @test_int [1/(a*cot(x) + b*csc(x))^3, x, 4, (a^2 - b^2)/(2*a^3*(b + a*cos(x))^2) + (2*b)/(a^3*(b + a*cos(x))) + log(b + a*cos(x))/a^3]
    @test_int [1/(a*cot(x) + b*csc(x))^4, x, 7, x/a^4 - (b*(3*a^2 - 2*b^2)*atanh((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/(a^4*(a - b)^(3/2)*(a + b)^(3/2)) - ((2*(a^2 - b^2) - a*b*cos(x))*sin(x))/(2*a^3*(a^2 - b^2)*(b + a*cos(x))) + sin(x)^3/(3*a*(b + a*cos(x))^3) + (b*sin(x)^3)/(2*a*(a^2 - b^2)*(b + a*cos(x))^2)]
    @test_int [1/(a*cot(x) + b*csc(x))^5, x, 4, (a^2 - b^2)^2/(4*a^5*(b + a*cos(x))^4) + (4*b*(a^2 - b^2))/(3*a^5*(b + a*cos(x))^3) - (a^2 - 3*b^2)/(a^5*(b + a*cos(x))^2) - (4*b)/(a^5*(b + a*cos(x))) - log(b + a*cos(x))/a^5]


    @test_int [(csc(x) + cot(x))^5, x, 4, -(2/(1 - cos(x))^2) + 4/(1 - cos(x)) + log(1 - cos(x))]
    @test_int [(csc(x) + cot(x))^4, x, 5, x + (2*sin(x))/(1 - cos(x)) - (2*sin(x)^3)/(3*(1 - cos(x))^3)]
    @test_int [(csc(x) + cot(x))^3, x, 4, -(2/(1 - cos(x))) - log(1 - cos(x))]
    @test_int [(csc(x) + cot(x))^2, x, 4, -x - (2*sin(x))/(1 - cos(x))]
    @test_int [(csc(x) + cot(x))^1, x, 3, -atanh(cos(x)) + log(sin(x))]
    @test_int [1/(csc(x) + cot(x))^1, x, 3, -log(1 + cos(x))]
    @test_int [1/(csc(x) + cot(x))^2, x, 3, -x + (2*sin(x))/(1 + cos(x))]
    @test_int [1/(csc(x) + cot(x))^3, x, 4, 2/(1 + cos(x)) + log(1 + cos(x))]
    @test_int [1/(csc(x) + cot(x))^4, x, 4, x - (2*sin(x))/(1 + cos(x)) + (2*sin(x)^3)/(3*(1 + cos(x))^3)]
    @test_int [1/(csc(x) + cot(x))^5, x, 4, 2/(1 + cos(x))^2 - 4/(1 + cos(x)) - log(1 + cos(x))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*csc(c+d*x) + b*sin(c+d*x))^n=#


    #= Note*that*csc(x)-sin(x) == cos(x)*cot(x) =#
    @test_int [(csc(x) - sin(x))^4, x, 6, (35*x)/8 + (35*cot(x))/8 - (35*cot(x)^3)/24 + (7/8)*cos(x)^2*cot(x)^3 + (1/4)*cos(x)^4*cot(x)^3]
    @test_int [(csc(x) - sin(x))^3, x, 6, (5/2)*atanh(cos(x)) - (5*cos(x))/2 - (5*cos(x)^3)/6 - (1/2)*cos(x)^3*cot(x)^2]
    @test_int [(csc(x) - sin(x))^2, x, 4, -((3*x)/2) - (3*cot(x))/2 + (1/2)*cos(x)^2*cot(x)]
    @test_int [(csc(x) - sin(x)), x, 3, -atanh(cos(x)) + cos(x)]
    @test_int [1/(csc(x) - sin(x))^1, x, 3, sec(x)]
    @test_int [1/(csc(x) - sin(x))^2, x, 2, tan(x)^3/3]
    @test_int [1/(csc(x) - sin(x))^3, x, 4, (-(1/3))*sec(x)^3 + sec(x)^5/5]
    @test_int [1/(csc(x) - sin(x))^4, x, 2, tan(x)^5/5 + tan(x)^7/7]
    @test_int [1/(csc(x) - sin(x))^5, x, 4, sec(x)^5/5 - (2*sec(x)^7)/7 + sec(x)^9/9]
    @test_int [1/(csc(x) - sin(x))^6, x, 3, tan(x)^7/7 + (2*tan(x)^9)/9 + tan(x)^11/11]
    @test_int [1/(csc(x) - sin(x))^7, x, 4, (-(1/7))*sec(x)^7 + sec(x)^9/3 - (3*sec(x)^11)/11 + sec(x)^13/13]


    @test_int [(csc(x) - sin(x))^(7/2), x, 6, (8/7)*cos(x)*cot(x)^2*sqrt(cos(x)*cot(x)) + (2/7)*cos(x)^3*cot(x)^2*sqrt(cos(x)*cot(x)) - (64/35)*cot(x)*sqrt(cos(x)*cot(x))*csc(x) + (256/35)*sqrt(cos(x)*cot(x))*sec(x)]
    @test_int [(csc(x) - sin(x))^(5/2), x, 5, (-(16/15))*cot(x)*sqrt(cos(x)*cot(x)) + (2/5)*cos(x)^2*cot(x)*sqrt(cos(x)*cot(x)) - (64/15)*sqrt(cos(x)*cot(x))*tan(x)]
    @test_int [(csc(x) - sin(x))^(3/2), x, 4, (2/3)*cos(x)*sqrt(cos(x)*cot(x)) - (8/3)*sqrt(cos(x)*cot(x))*sec(x)]
    @test_int [(csc(x) - sin(x))^(1/2), x, 3, 2*sqrt(cos(x)*cot(x))*tan(x)]
    @test_int [1/(csc(x) - sin(x))^(1/2), x, 8, (atan(sqrt(-sin(x)))*cos(x))/(sqrt(cos(x)*cot(x))*sqrt(-sin(x))) - (atanh(sqrt(-sin(x)))*cos(x))/(sqrt(cos(x)*cot(x))*sqrt(-sin(x)))]
    @test_int [1/(csc(x) - sin(x))^(3/2), x, 9, sec(x)/(2*sqrt(cos(x)*cot(x))) + (atan(sqrt(-sin(x)))*cot(x)*sqrt(-sin(x)))/(4*sqrt(cos(x)*cot(x))) + (atanh(sqrt(-sin(x)))*cot(x)*sqrt(-sin(x)))/(4*sqrt(cos(x)*cot(x)))]
    @test_int [1/(csc(x) - sin(x))^(5/2), x, 10, -((3*atan(sqrt(-sin(x)))*cos(x))/(32*sqrt(cos(x)*cot(x))*sqrt(-sin(x)))) + (3*atanh(sqrt(-sin(x)))*cos(x))/(32*sqrt(cos(x)*cot(x))*sqrt(-sin(x))) - (3*tan(x))/(16*sqrt(cos(x)*cot(x))) + (sec(x)^2*tan(x))/(4*sqrt(cos(x)*cot(x)))]
    @test_int [1/(csc(x) - sin(x))^(7/2), x, 11, (5*sec(x))/(192*sqrt(cos(x)*cot(x))) - (5*sec(x)^3)/(48*sqrt(cos(x)*cot(x))) - (5*atan(sqrt(-sin(x)))*cot(x)*sqrt(-sin(x)))/(128*sqrt(cos(x)*cot(x))) - (5*atanh(sqrt(-sin(x)))*cot(x)*sqrt(-sin(x)))/(128*sqrt(cos(x)*cot(x))) + (sec(x)^3*tan(x)^2)/(6*sqrt(cos(x)*cot(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(c+d*x) + b*cos(c+d*x))^n=#


    #= Note*that*sec(x)-cos(x) == sin(x)*tan(x) =#
    @test_int [(sec(x) - cos(x))^4, x, 6, (35*x)/8 - (35*tan(x))/8 + (35*tan(x)^3)/24 - (7/8)*sin(x)^2*tan(x)^3 - (1/4)*sin(x)^4*tan(x)^3]
    @test_int [(sec(x) - cos(x))^3, x, 6, (-(5/2))*atanh(sin(x)) + (5*sin(x))/2 + (5*sin(x)^3)/6 + (1/2)*sin(x)^3*tan(x)^2]
    @test_int [(sec(x) - cos(x))^2, x, 4, -((3*x)/2) + (3*tan(x))/2 - (1/2)*sin(x)^2*tan(x)]
    @test_int [(sec(x) - cos(x))^1, x, 3, atanh(sin(x)) - sin(x)]
    @test_int [1/(sec(x) - cos(x))^1, x, 3, -csc(x)]
    @test_int [1/(sec(x) - cos(x))^2, x, 2, (-(1/3))*cot(x)^3]
    @test_int [1/(sec(x) - cos(x))^3, x, 4, csc(x)^3/3 - csc(x)^5/5]
    @test_int [1/(sec(x) - cos(x))^4, x, 2, (-(1/5))*cot(x)^5 - cot(x)^7/7]
    @test_int [1/(sec(x) - cos(x))^5, x, 4, (-(1/5))*csc(x)^5 + (2*csc(x)^7)/7 - csc(x)^9/9]
    @test_int [1/(sec(x) - cos(x))^6, x, 3, (-(1/7))*cot(x)^7 - (2*cot(x)^9)/9 - cot(x)^11/11]
    @test_int [1/(sec(x) - cos(x))^7, x, 4, csc(x)^7/7 - csc(x)^9/3 + (3*csc(x)^11)/11 - csc(x)^13/13]


    @test_int [(sec(x) - cos(x))^(7/2), x, 6, (-(256/35))*csc(x)*sqrt(sin(x)*tan(x)) + (64/35)*sec(x)*tan(x)*sqrt(sin(x)*tan(x)) - (8/7)*sin(x)*tan(x)^2*sqrt(sin(x)*tan(x)) - (2/7)*sin(x)^3*tan(x)^2*sqrt(sin(x)*tan(x))]
    @test_int [(sec(x) - cos(x))^(5/2), x, 5, (64/15)*cot(x)*sqrt(sin(x)*tan(x)) + (16/15)*tan(x)*sqrt(sin(x)*tan(x)) - (2/5)*sin(x)^2*tan(x)*sqrt(sin(x)*tan(x))]
    @test_int [(sec(x) - cos(x))^(3/2), x, 4, (8/3)*csc(x)*sqrt(sin(x)*tan(x)) - (2/3)*sin(x)*sqrt(sin(x)*tan(x))]
    @test_int [(sec(x) - cos(x))^(1/2), x, 3, -2*cot(x)*sqrt(sin(x)*tan(x))]
    @test_int [1/(sec(x) - cos(x))^(1/2), x, 8, (atan(sqrt(cos(x)))*sin(x))/(sqrt(cos(x))*sqrt(sin(x)*tan(x))) - (atanh(sqrt(cos(x)))*sin(x))/(sqrt(cos(x))*sqrt(sin(x)*tan(x)))]
    @test_int [1/(sec(x) - cos(x))^(3/2), x, 9, -(csc(x)/(2*sqrt(sin(x)*tan(x)))) + (atan(sqrt(cos(x)))*sin(x))/(4*sqrt(cos(x))*sqrt(sin(x)*tan(x))) + (atanh(sqrt(cos(x)))*sin(x))/(4*sqrt(cos(x))*sqrt(sin(x)*tan(x)))]
    @test_int [1/(sec(x) - cos(x))^(5/2), x, 10, (3*cot(x))/(16*sqrt(sin(x)*tan(x))) - (cot(x)*csc(x)^2)/(4*sqrt(sin(x)*tan(x))) - (3*atan(sqrt(cos(x)))*sin(x))/(32*sqrt(cos(x))*sqrt(sin(x)*tan(x))) + (3*atanh(sqrt(cos(x)))*sin(x))/(32*sqrt(cos(x))*sqrt(sin(x)*tan(x)))]
    @test_int [1/(sec(x) - cos(x))^(7/2), x, 11, -((5*csc(x))/(192*sqrt(sin(x)*tan(x)))) + (5*csc(x)^3)/(48*sqrt(sin(x)*tan(x))) - (cot(x)^2*csc(x)^3)/(6*sqrt(sin(x)*tan(x))) - (5*atan(sqrt(cos(x)))*sin(x))/(128*sqrt(cos(x))*sqrt(sin(x)*tan(x))) - (5*atanh(sqrt(cos(x)))*sin(x))/(128*sqrt(cos(x))*sqrt(sin(x)*tan(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sin(c+d*x) + b*tan(c+d*x))^n=#


    @test_int [(sin(x) + tan(x))^4, x, 18, -((61*x)/8) - 2*atanh(sin(x)) + (19/8)*cos(x)*sin(x) + (1/4)*cos(x)^3*sin(x) - (4*sin(x)^3)/3 + 5*tan(x) + 2*sec(x)*tan(x) + tan(x)^3/3]
    @test_int [(sin(x) + tan(x))^3, x, 4, 2*cos(x) + (3*cos(x)^2)/2 + cos(x)^3/3 - 2*log(cos(x)) + 3*sec(x) + sec(x)^2/2]
    @test_int [(sin(x) + tan(x))^2, x, 9, -(x/2) + 2*atanh(sin(x)) - 2*sin(x) - (1/2)*cos(x)*sin(x) + tan(x)]
    @test_int [(sin(x) + tan(x))^1, x, 3, -cos(x) - log(cos(x))]
    @test_int [1/(sin(x) + tan(x))^1, x, 6, (-(1/2))*atanh(cos(x)) + (1/2)*cot(x)*csc(x) - csc(x)^2/2]
    @test_int [1/(sin(x) + tan(x))^2, x, 11, (-(1/3))*cot(x)^3 - (2*cot(x)^5)/5 - (2*csc(x)^3)/3 + (2*csc(x)^5)/5]
    @test_int [1/(sin(x) + tan(x))^3, x, 5, (1/32)*atanh(cos(x)) - 1/(32*(1 - cos(x))) - 1/(16*(1 + cos(x))^4) + 1/(6*(1 + cos(x))^3) - 3/(32*(1 + cos(x))^2) - 1/(16*(1 + cos(x)))]
    @test_int [1/(sin(x) + tan(x))^4, x, 18, (-(1/5))*cot(x)^5 - (9*cot(x)^7)/7 - (16*cot(x)^9)/9 - (8*cot(x)^11)/11 - (4*csc(x)^5)/5 + (16*csc(x)^7)/7 - (20*csc(x)^9)/9 + (8*csc(x)^11)/11]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + B*Trig(x))*(a*cos(x) + b*sin(x))^n=#


    @test_int [(A + C*sin(x))/(b*cos(x) + c*sin(x)), x, 3, (c*C*x)/(b^2 + c^2) - (A*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/sqrt(b^2 + c^2) - (b*C*log(b*cos(x) + c*sin(x)))/(b^2 + c^2)]
    @test_int [(A + C*sin(x))/(b*cos(x) + c*sin(x))^2, x, 3, -((c*C*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/(b^2 + c^2)^(3/2)) + (b*C - A*c*cos(x) + A*b*sin(x))/((b^2 + c^2)*(b*cos(x) + c*sin(x)))]
    @test_int [(A + C*sin(x))/(b*cos(x) + c*sin(x))^3, x, 4, -((A*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/(2*(b^2 + c^2)^(3/2))) + (b*C - A*c*cos(x) + A*b*sin(x))/(2*(b^2 + c^2)*(b*cos(x) + c*sin(x))^2) - (c^2*C*cos(x) - b*c*C*sin(x))/((b^2 + c^2)^2*(b*cos(x) + c*sin(x)))]


    @test_int [(A + B*cos(x))/(b*cos(x) + c*sin(x)), x, 3, (b*B*x)/(b^2 + c^2) - (A*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/sqrt(b^2 + c^2) + (B*c*log(b*cos(x) + c*sin(x)))/(b^2 + c^2)]
    @test_int [(A + B*cos(x))/(b*cos(x) + c*sin(x))^2, x, 3, -((b*B*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/(b^2 + c^2)^(3/2)) - (B*c + A*c*cos(x) - A*b*sin(x))/((b^2 + c^2)*(b*cos(x) + c*sin(x)))]
    @test_int [(A + B*cos(x))/(b*cos(x) + c*sin(x))^3, x, 4, -((A*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/(2*(b^2 + c^2)^(3/2))) - (B*c + A*c*cos(x) - A*b*sin(x))/(2*(b^2 + c^2)*(b*cos(x) + c*sin(x))^2) - (b*B*c*cos(x) - b^2*B*sin(x))/((b^2 + c^2)^2*(b*cos(x) + c*sin(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Trig(d+e*x)^m*(a + b*Trig(d+e*x) + c*Trig(d+e*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a + b*cos(d+e*x) + c*sin(d+e*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=a^2-b^2-c^2=0=#


    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^4, x, 6, (35*(b^2 + c^2)^2*x)/8 - (35*c*(b^2 + c^2)^(3/2)*cos(d + e*x))/(8*e) + (35*b*(b^2 + c^2)^(3/2)*sin(d + e*x))/(8*e) - (35*(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x))*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))/(24*e) - (7*sqrt(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x))*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^2)/(12*e) - ((c*cos(d + e*x) - b*sin(d + e*x))*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^3)/(4*e)]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^3, x, 5, (5*(b^2 + c^2)^(3/2)*x)/2 - (5*c*(b^2 + c^2)*cos(d + e*x))/(2*e) + (5*b*(b^2 + c^2)*sin(d + e*x))/(2*e) - (5*sqrt(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x))*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))/(6*e) - ((c*cos(d + e*x) - b*sin(d + e*x))*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^2)/(3*e)]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^2, x, 4, (3*(b^2 + c^2)*x)/2 - (3*c*sqrt(b^2 + c^2)*cos(d + e*x))/(2*e) + (3*b*sqrt(b^2 + c^2)*sin(d + e*x))/(2*e) - ((c*cos(d + e*x) - b*sin(d + e*x))*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))/(2*e)]
    @test_int [sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x), x, 3, sqrt(b^2 + c^2)*x - (c*cos(d + e*x))/e + (b*sin(d + e*x))/e]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(-1), x, 1, -((c - sqrt(b^2 + c^2)*sin(d + e*x))/(c*e*(c*cos(d + e*x) - b*sin(d + e*x))))]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(-2), x, 2, -(c*cos(d + e*x) - b*sin(d + e*x))/(3*sqrt(b^2 + c^2)*e*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^2) - (c - sqrt(b^2 + c^2)*sin(d + e*x))/(3*c*sqrt(b^2 + c^2)*e*(c*cos(d + e*x) - b*sin(d + e*x)))]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(-3), x, 3, -(c*cos(d + e*x) - b*sin(d + e*x))/(5*sqrt(b^2 + c^2)*e*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^3) - (2*(c*cos(d + e*x) - b*sin(d + e*x)))/(15*(b^2 + c^2)*e*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^2) - (2*(c - sqrt(b^2 + c^2)*sin(d + e*x)))/(15*c*(b^2 + c^2)*e*(c*cos(d + e*x) - b*sin(d + e*x)))]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(-4), x, 4, -(c*cos(d + e*x) - b*sin(d + e*x))/(7*sqrt(b^2 + c^2)*e*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^4) - (3*(c*cos(d + e*x) - b*sin(d + e*x)))/(35*(b^2 + c^2)*e*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^3) - (2*(c*cos(d + e*x) - b*sin(d + e*x)))/(35*(b^2 + c^2)^(3/2)*e*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^2) - (2*(c - sqrt(b^2 + c^2)*sin(d + e*x)))/(35*c*(b^2 + c^2)^(3/2)*e*(c*cos(d + e*x) - b*sin(d + e*x)))]


    #= ::Subsubsection::Closed:: =#
    #=a-b=0=#


    @test_int [(2*a + 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^3, x, 5, 4*a*(5*a^2 + 3*c^2)*x - (4*c*(15*a^2 + 4*c^2)*cos(d + e*x))/(3*e) + (4*a*(15*a^2 + 4*c^2)*sin(d + e*x))/(3*e) - (20*(a*c*cos(d + e*x) - a^2*sin(d + e*x))*(a + a*cos(d + e*x) + c*sin(d + e*x)))/(3*e) - (8*(c*cos(d + e*x) - a*sin(d + e*x))*(a + a*cos(d + e*x) + c*sin(d + e*x))^2)/(3*e)]
    @test_int [(2*a + 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^2, x, 4, 2*(3*a^2 + c^2)*x - (6*a*c*cos(d + e*x))/e + (6*a^2*sin(d + e*x))/e - (2*(c*cos(d + e*x) - a*sin(d + e*x))*(a + a*cos(d + e*x) + c*sin(d + e*x)))/e]
    @test_int [(2*a + 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^1, x, 3, 2*a*x - (2*c*cos(d + e*x))/e + (2*a*sin(d + e*x))/e]
    @test_int [1/(2*a + 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^1, x, 2, log(a + c*tan((1/2)*(d + e*x)))/(2*c*e)]
    @test_int [1/(2*a + 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^2, x, 4, -((a*log(a + c*tan((1/2)*(d + e*x))))/(4*c^3*e)) - (c*cos(d + e*x) - a*sin(d + e*x))/(4*c^2*e*(a + a*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/(2*a + 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^3, x, 4, ((3*a^2 + c^2)*log(a + c*tan((1/2)*(d + e*x))))/(16*c^5*e) - (c*cos(d + e*x) - a*sin(d + e*x))/(16*c^2*e*(a + a*cos(d + e*x) + c*sin(d + e*x))^2) + (3*(a*c*cos(d + e*x) - a^2*sin(d + e*x)))/(16*c^4*e*(a + a*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/(2*a + 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^4, x, 5, -((a*(5*a^2 + 3*c^2)*log(a + c*tan((1/2)*(d + e*x))))/(32*c^7*e)) - (c*cos(d + e*x) - a*sin(d + e*x))/(48*c^2*e*(a + a*cos(d + e*x) + c*sin(d + e*x))^3) + (5*(a*c*cos(d + e*x) - a^2*sin(d + e*x)))/(96*c^4*e*(a + a*cos(d + e*x) + c*sin(d + e*x))^2) - (c*(15*a^2 + 4*c^2)*cos(d + e*x) - a*(15*a^2 + 4*c^2)*sin(d + e*x))/(96*c^6*e*(a + a*cos(d + e*x) + c*sin(d + e*x)))]


    @test_int [1/(2*a + 2*a*cos(d + e*x) + 2*a*sin(d + e*x))^1, x, 2, log(1 + tan((1/2)*(d + e*x)))/(2*a*e)]
    @test_int [1/(2*a + 2*a*cos(d + e*x) + 2*a*sin(d + e*x))^2, x, 4, -(log(1 + tan((1/2)*(d + e*x)))/(4*a^2*e)) - (a*cos(d + e*x) - a*sin(d + e*x))/(4*e*(a^3 + a^3*cos(d + e*x) + a^3*sin(d + e*x)))]
    @test_int [1/(2*a + 2*a*cos(d + e*x) + 2*a*sin(d + e*x))^3, x, 4, log(1 + tan((1/2)*(d + e*x)))/(4*a^3*e) - (a*cos(d + e*x) - a*sin(d + e*x))/(16*e*(a^2 + a^2*cos(d + e*x) + a^2*sin(d + e*x))^2) + (3*(cos(d + e*x) - sin(d + e*x)))/(16*e*(a^3 + a^3*cos(d + e*x) + a^3*sin(d + e*x)))]
    @test_int [1/(2*a + 2*a*cos(d + e*x) + 2*a*sin(d + e*x))^4, x, 5, -(log(1 + tan((1/2)*(d + e*x)))/(4*a^4*e)) - (cos(d + e*x) - sin(d + e*x))/(48*a*e*(a + a*cos(d + e*x) + a*sin(d + e*x))^3) + (5*(cos(d + e*x) - sin(d + e*x)))/(96*e*(a^2 + a^2*cos(d + e*x) + a^2*sin(d + e*x))^2) - (19*(a*cos(d + e*x) - a*sin(d + e*x)))/(96*e*(a^5 + a^5*cos(d + e*x) + a^5*sin(d + e*x)))]


    #= ::Subsubsection::Closed:: =#
    #=a+b=0=#


    @test_int [(2*a - 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^3, x, 5, 4*a*(5*a^2 + 3*c^2)*x - (4*c*(15*a^2 + 4*c^2)*cos(d + e*x))/(3*e) - (4*a*(15*a^2 + 4*c^2)*sin(d + e*x))/(3*e) - (20*(a*c*cos(d + e*x) + a^2*sin(d + e*x))*(a - a*cos(d + e*x) + c*sin(d + e*x)))/(3*e) - (8*(c*cos(d + e*x) + a*sin(d + e*x))*(a - a*cos(d + e*x) + c*sin(d + e*x))^2)/(3*e)]
    @test_int [(2*a - 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^2, x, 4, 2*(3*a^2 + c^2)*x - (6*a*c*cos(d + e*x))/e - (6*a^2*sin(d + e*x))/e - (2*(c*cos(d + e*x) + a*sin(d + e*x))*(a - a*cos(d + e*x) + c*sin(d + e*x)))/e]
    @test_int [(2*a - 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^1, x, 3, 2*a*x - (2*c*cos(d + e*x))/e - (2*a*sin(d + e*x))/e]
    @test_int [1/(2*a - 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^1, x, 2, -(log(a + c*cot((1/2)*(d + e*x)))/(2*c*e))]
    @test_int [1/(2*a - 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^2, x, 4, (a*log(a + c*cot((1/2)*(d + e*x))))/(4*c^3*e) - (c*cos(d + e*x) + a*sin(d + e*x))/(4*c^2*e*(a - a*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/(2*a - 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^3, x, 4, -(((3*a^2 + c^2)*log(a + c*cot((1/2)*(d + e*x))))/(16*c^5*e)) - (c*cos(d + e*x) + a*sin(d + e*x))/(16*c^2*e*(a - a*cos(d + e*x) + c*sin(d + e*x))^2) + (3*(a*c*cos(d + e*x) + a^2*sin(d + e*x)))/(16*c^4*e*(a - a*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/(2*a - 2*a*cos(d + e*x) + 2*c*sin(d + e*x))^4, x, 5, (a*(5*a^2 + 3*c^2)*log(a + c*cot((1/2)*(d + e*x))))/(32*c^7*e) - (c*cos(d + e*x) + a*sin(d + e*x))/(48*c^2*e*(a - a*cos(d + e*x) + c*sin(d + e*x))^3) + (5*(a*c*cos(d + e*x) + a^2*sin(d + e*x)))/(96*c^4*e*(a - a*cos(d + e*x) + c*sin(d + e*x))^2) - (c*(15*a^2 + 4*c^2)*cos(d + e*x) + a*(15*a^2 + 4*c^2)*sin(d + e*x))/(96*c^6*e*(a - a*cos(d + e*x) + c*sin(d + e*x)))]


    #= ::Subsubsection::Closed:: =#
    #=a-c=0=#


    @test_int [(2*a + 2*b*cos(d + e*x) + 2*a*sin(d + e*x))^3, x, 5, 4*a*(5*a^2 + 3*b^2)*x - (4*a*(15*a^2 + 4*b^2)*cos(d + e*x))/(3*e) + (4*b*(15*a^2 + 4*b^2)*sin(d + e*x))/(3*e) - (8*(a + b*cos(d + e*x) + a*sin(d + e*x))^2*(a*cos(d + e*x) - b*sin(d + e*x)))/(3*e) - (20*(a + b*cos(d + e*x) + a*sin(d + e*x))*(a^2*cos(d + e*x) - a*b*sin(d + e*x)))/(3*e)]
    @test_int [(2*a + 2*b*cos(d + e*x) + 2*a*sin(d + e*x))^2, x, 4, 2*(3*a^2 + b^2)*x - (6*a^2*cos(d + e*x))/e + (6*a*b*sin(d + e*x))/e - (2*(a + b*cos(d + e*x) + a*sin(d + e*x))*(a*cos(d + e*x) - b*sin(d + e*x)))/e]
    @test_int [(2*a + 2*b*cos(d + e*x) + 2*a*sin(d + e*x))^1, x, 3, 2*a*x - (2*a*cos(d + e*x))/e + (2*b*sin(d + e*x))/e]
    @test_int [1/(2*a + 2*b*cos(d + e*x) + 2*a*sin(d + e*x))^1, x, 2, -(log(a + b*cot(d/2 + pi/4 + (e*x)/2))/(2*b*e))]
    @test_int [1/(2*a + 2*b*cos(d + e*x) + 2*a*sin(d + e*x))^2, x, 4, (a*log(a + b*cot(d/2 + pi/4 + (e*x)/2)))/(4*b^3*e) - (a*cos(d + e*x) - b*sin(d + e*x))/(4*b^2*e*(a + b*cos(d + e*x) + a*sin(d + e*x)))]
    @test_int [1/(2*a + 2*b*cos(d + e*x) + 2*a*sin(d + e*x))^3, x, 4, -(((3*a^2 + b^2)*log(a + b*cot(d/2 + pi/4 + (e*x)/2)))/(16*b^5*e)) - (a*cos(d + e*x) - b*sin(d + e*x))/(16*b^2*e*(a + b*cos(d + e*x) + a*sin(d + e*x))^2) + (3*(a^2*cos(d + e*x) - a*b*sin(d + e*x)))/(16*b^4*e*(a + b*cos(d + e*x) + a*sin(d + e*x)))]
    @test_int [1/(2*a + 2*b*cos(d + e*x) + 2*a*sin(d + e*x))^4, x, 5, (a*(5*a^2 + 3*b^2)*log(a + b*cot(d/2 + pi/4 + (e*x)/2)))/(32*b^7*e) - (a*cos(d + e*x) - b*sin(d + e*x))/(48*b^2*e*(a + b*cos(d + e*x) + a*sin(d + e*x))^3) + (5*(a^2*cos(d + e*x) - a*b*sin(d + e*x)))/(96*b^4*e*(a + b*cos(d + e*x) + a*sin(d + e*x))^2) - (a*(15*a^2 + 4*b^2)*cos(d + e*x) - b*(15*a^2 + 4*b^2)*sin(d + e*x))/(96*b^6*e*(a + b*cos(d + e*x) + a*sin(d + e*x)))]


    #= ::Subsubsection::Closed:: =#
    #=a+c=0=#


    @test_int [(2*a + 2*b*cos(d + e*x) - 2*a*sin(d + e*x))^3, x, 5, 4*a*(5*a^2 + 3*b^2)*x + (4*a*(15*a^2 + 4*b^2)*cos(d + e*x))/(3*e) + (4*b*(15*a^2 + 4*b^2)*sin(d + e*x))/(3*e) + (8*(a + b*cos(d + e*x) - a*sin(d + e*x))^2*(a*cos(d + e*x) + b*sin(d + e*x)))/(3*e) + (20*(a + b*cos(d + e*x) - a*sin(d + e*x))*(a^2*cos(d + e*x) + a*b*sin(d + e*x)))/(3*e)]
    @test_int [(2*a + 2*b*cos(d + e*x) - 2*a*sin(d + e*x))^2, x, 4, 2*(3*a^2 + b^2)*x + (6*a^2*cos(d + e*x))/e + (6*a*b*sin(d + e*x))/e + (2*(a + b*cos(d + e*x) - a*sin(d + e*x))*(a*cos(d + e*x) + b*sin(d + e*x)))/e]
    @test_int [(2*a + 2*b*cos(d + e*x) - 2*a*sin(d + e*x))^1, x, 3, 2*a*x + (2*a*cos(d + e*x))/e + (2*b*sin(d + e*x))/e]
    @test_int [1/(2*a + 2*b*cos(d + e*x) - 2*a*sin(d + e*x))^1, x, 2, log(a + b*tan(d/2 + pi/4 + (e*x)/2))/(2*b*e)]
    @test_int [1/(2*a + 2*b*cos(d + e*x) - 2*a*sin(d + e*x))^2, x, 4, -((a*log(a + b*tan(d/2 + pi/4 + (e*x)/2)))/(4*b^3*e)) + (a*cos(d + e*x) + b*sin(d + e*x))/(4*b^2*e*(a + b*cos(d + e*x) - a*sin(d + e*x)))]
    @test_int [1/(2*a + 2*b*cos(d + e*x) - 2*a*sin(d + e*x))^3, x, 4, ((3*a^2 + b^2)*log(a + b*tan(d/2 + pi/4 + (e*x)/2)))/(16*b^5*e) + (a*cos(d + e*x) + b*sin(d + e*x))/(16*b^2*e*(a + b*cos(d + e*x) - a*sin(d + e*x))^2) - (3*(a^2*cos(d + e*x) + a*b*sin(d + e*x)))/(16*b^4*e*(a + b*cos(d + e*x) - a*sin(d + e*x)))]
    @test_int [1/(2*a + 2*b*cos(d + e*x) - 2*a*sin(d + e*x))^4, x, 5, -((a*(5*a^2 + 3*b^2)*log(a + b*tan(d/2 + pi/4 + (e*x)/2)))/(32*b^7*e)) + (a*cos(d + e*x) + b*sin(d + e*x))/(48*b^2*e*(a + b*cos(d + e*x) - a*sin(d + e*x))^3) - (5*(a^2*cos(d + e*x) + a*b*sin(d + e*x)))/(96*b^4*e*(a + b*cos(d + e*x) - a*sin(d + e*x))^2) + (a*(15*a^2 + 4*b^2)*cos(d + e*x) + b*(15*a^2 + 4*b^2)*sin(d + e*x))/(96*b^6*e*(a + b*cos(d + e*x) - a*sin(d + e*x)))]


    #= ::Subsubsection::Closed:: =#
    #=a,b,c=#


    @test_int [(a + b*cos(d + e*x) + c*sin(d + e*x))^4, x, 6, ((8*a^4 + 24*a^2*(b^2 + c^2) + 3*(b^2 + c^2)^2)*x)/8 - (5*a*c*(10*a^2 + 11*(b^2 + c^2))*cos(d + e*x))/(24*e) + (5*a*b*(10*a^2 + 11*(b^2 + c^2))*sin(d + e*x))/(24*e) - (7*(a*c*cos(d + e*x) - a*b*sin(d + e*x))*(a + b*cos(d + e*x) + c*sin(d + e*x))^2)/(12*e) - ((c*cos(d + e*x) - b*sin(d + e*x))*(a + b*cos(d + e*x) + c*sin(d + e*x))^3)/(4*e) - ((a + b*cos(d + e*x) + c*sin(d + e*x))*(c*(26*a^2 + 9*(b^2 + c^2))*cos(d + e*x) - b*(26*a^2 + 9*(b^2 + c^2))*sin(d + e*x)))/(24*e)]
    @test_int [(a + b*cos(d + e*x) + c*sin(d + e*x))^3, x, 5, (a*(2*a^2 + 3*(b^2 + c^2))*x)/2 - (c*(11*a^2 + 4*(b^2 + c^2))*cos(d + e*x))/(6*e) + (b*(11*a^2 + 4*(b^2 + c^2))*sin(d + e*x))/(6*e) - (5*(a*c*cos(d + e*x) - a*b*sin(d + e*x))*(a + b*cos(d + e*x) + c*sin(d + e*x)))/(6*e) - ((c*cos(d + e*x) - b*sin(d + e*x))*(a + b*cos(d + e*x) + c*sin(d + e*x))^2)/(3*e)]
    @test_int [(a + b*cos(d + e*x) + c*sin(d + e*x))^2, x, 4, ((2*a^2 + b^2 + c^2)*x)/2 - (3*a*c*cos(d + e*x))/(2*e) + (3*a*b*sin(d + e*x))/(2*e) - ((c*cos(d + e*x) - b*sin(d + e*x))*(a + b*cos(d + e*x) + c*sin(d + e*x)))/(2*e)]
    @test_int [a + b*cos(d + e*x) + c*sin(d + e*x), x, 3, a*x - (c*cos(d + e*x))/e + (b*sin(d + e*x))/e]
    @test_int [1/(a + b*cos(d + e*x) + c*sin(d + e*x))^1, x, 3, (2*atan((c + (a - b)*tan((1/2)*(d + e*x)))/sqrt(a^2 - b^2 - c^2)))/(sqrt(a^2 - b^2 - c^2)*e)]
    @test_int [1/(a + b*cos(d + e*x) + c*sin(d + e*x))^2, x, 5, (2*a*atan((c + (a - b)*tan((1/2)*(d + e*x)))/sqrt(a^2 - b^2 - c^2)))/((a^2 - b^2 - c^2)^(3/2)*e) + (c*cos(d + e*x) - b*sin(d + e*x))/((a^2 - b^2 - c^2)*e*(a + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/(a + b*cos(d + e*x) + c*sin(d + e*x))^3, x, 5, ((2*a^2 + b^2 + c^2)*atan((c + (a - b)*tan((1/2)*(d + e*x)))/sqrt(a^2 - b^2 - c^2)))/((a^2 - b^2 - c^2)^(5/2)*e) + (c*cos(d + e*x) - b*sin(d + e*x))/(2*(a^2 - b^2 - c^2)*e*(a + b*cos(d + e*x) + c*sin(d + e*x))^2) + (3*(a*c*cos(d + e*x) - a*b*sin(d + e*x)))/(2*(a^2 - b^2 - c^2)^2*e*(a + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/(a + b*cos(d + e*x) + c*sin(d + e*x))^4, x, 6, (a*(2*a^2 + 3*(b^2 + c^2))*atan((c + (a - b)*tan((1/2)*(d + e*x)))/sqrt(a^2 - b^2 - c^2)))/((a^2 - b^2 - c^2)^(7/2)*e) + (c*cos(d + e*x) - b*sin(d + e*x))/(3*(a^2 - b^2 - c^2)*e*(a + b*cos(d + e*x) + c*sin(d + e*x))^3) + (5*(a*c*cos(d + e*x) - a*b*sin(d + e*x)))/(6*(a^2 - b^2 - c^2)^2*e*(a + b*cos(d + e*x) + c*sin(d + e*x))^2) + (c*(11*a^2 + 4*(b^2 + c^2))*cos(d + e*x) - b*(11*a^2 + 4*(b^2 + c^2))*sin(d + e*x))/(6*(a^2 - b^2 - c^2)^3*e*(a + b*cos(d + e*x) + c*sin(d + e*x)))]


    #= [1/(a + b*cos(d + e*x) + c*sin(d + e*x))^1, x, 1, (2*atan((c + (a - b)*tan((d + e*x)/2))/sqrt(a^2 - b^2 - c^2)))/(sqrt(a^2 - b^2 - c^2)*e)]
    @test_int [1/(a + b*cos(d + e*x) + c*sin(d + e*x))^2, x, 3, (2*a*atan((c + (a - b)*tan((d + e*x)/2))/sqrt(a^2 - b^2 - c^2)))/((a^2 - b^2 - c^2)^(3/2)*e) + (c*cos(d + e*x) - b*sin(d + e*x))/((a^2 - b^2 - c^2)*e*(a + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/(a + b*cos(d + e*x) + c*sin(d + e*x))^3, x, 3, ((2*a^2 + b^2 + c^2)*atan((c + (a - b)*tan((d + e*x)/2))/sqrt(a^2 - b^2 - c^2)))/((a^2 - b^2 - c^2)^(5/2)*e) + (c*cos(d + e*x) - b*sin(d + e*x))/(2*(a^2 - b^2 - c^2)*e*(a + b*cos(d + e*x) + c*sin(d + e*x))^2) + (3*(a*c*cos(d + e*x) - a*b*sin(d + e*x)))/(2*(a^2 - b^2 - c^2)^2*e*(a + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/(a + b*cos(d + e*x) + c*sin(d + e*x))^4, x, 4, (a*(2*a^2 + 3*(b^2 + c^2))*atan((c + (a - b)*tan((d + e*x)/2))/sqrt(a^2 - b^2 - c^2)))/((a^2 - b^2 - c^2)^(7/2)*e) + (c*cos(d + e*x) - b*sin(d + e*x))/(3*(a^2 - b^2 - c^2)*e*(a + b*cos(d + e*x) + c*sin(d + e*x))^3) + (5*(a*c*cos(d + e*x) - a*b*sin(d + e*x)))/(6*(a^2 - b^2 - c^2)^2*e*(a + b*cos(d + e*x) + c*sin(d + e*x))^2) + (c*(11*a^2 + 4*(b^2 + c^2))*cos(d + e*x) - b*(11*a^2 + 4*(b^2 + c^2))*sin(d + e*x))/(6*(a^2 - b^2 - c^2)^3*e*(a + b*cos(d + e*x) + c*sin(d + e*x)))] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a + b*cos(d+e*x) + c*sin(d+e*x))^(n/2)=#


    @test_int [(2 + 3*cos(d + e*x) + 5*sin(d + e*x))^(5/2), x, 7, (796*sqrt(2 + sqrt(34))*EllipticE((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/(15*e) + (64*EllipticF((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/(sqrt(2 + sqrt(34))*e) - (32*(5*cos(d + e*x) - 3*sin(d + e*x))*sqrt(2 + 3*cos(d + e*x) + 5*sin(d + e*x)))/(15*e) - (2*(5*cos(d + e*x) - 3*sin(d + e*x))*(2 + 3*cos(d + e*x) + 5*sin(d + e*x))^(3/2))/(5*e)]
    @test_int [(2 + 3*cos(d + e*x) + 5*sin(d + e*x))^(3/2), x, 6, (16*sqrt(2 + sqrt(34))*EllipticE((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/(3*e) + (20*EllipticF((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/(sqrt(2 + sqrt(34))*e) - (2*(5*cos(d + e*x) - 3*sin(d + e*x))*sqrt(2 + 3*cos(d + e*x) + 5*sin(d + e*x)))/(3*e)]
    @test_int [sqrt(2 + 3*cos(d + e*x) + 5*sin(d + e*x)), x, 2, (2*sqrt(2 + sqrt(34))*EllipticE((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/e]
    @test_int [1/sqrt(2 + 3*cos(d + e*x) + 5*sin(d + e*x)), x, 2, (2*EllipticF((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/(sqrt(2 + sqrt(34))*e)]
    @test_int [(2 + 3*cos(d + e*x) + 5*sin(d + e*x))^(-3/2), x, 3, -(sqrt(2 + sqrt(34))*EllipticE((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/(15*e) - (5*cos(d + e*x) - 3*sin(d + e*x))/(15*e*sqrt(2 + 3*cos(d + e*x) + 5*sin(d + e*x)))]
    @test_int [(2 + 3*cos(d + e*x) + 5*sin(d + e*x))^(-5/2), x, 7, (4*sqrt(2 + sqrt(34))*EllipticE((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/(675*e) + EllipticF((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15)/(45*sqrt(2 + sqrt(34))*e) - (5*cos(d + e*x) - 3*sin(d + e*x))/(45*e*(2 + 3*cos(d + e*x) + 5*sin(d + e*x))^(3/2)) + (4*(5*cos(d + e*x) - 3*sin(d + e*x)))/(675*e*sqrt(2 + 3*cos(d + e*x) + 5*sin(d + e*x)))]
    @test_int [(2 + 3*cos(d + e*x) + 5*sin(d + e*x))^(-7/2), x, 8, (-199*sqrt(2 + sqrt(34))*EllipticE((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/(101250*e) - (8*EllipticF((d + e*x - atan(5/3))/2, (2*(17 - sqrt(34)))/15))/(3375*sqrt(2 + sqrt(34))*e) - (5*cos(d + e*x) - 3*sin(d + e*x))/(75*e*(2 + 3*cos(d + e*x) + 5*sin(d + e*x))^(5/2)) + (8*(5*cos(d + e*x) - 3*sin(d + e*x)))/(3375*e*(2 + 3*cos(d + e*x) + 5*sin(d + e*x))^(3/2)) - (199*(5*cos(d + e*x) - 3*sin(d + e*x)))/(101250*e*sqrt(2 + 3*cos(d + e*x) + 5*sin(d + e*x)))]


    @test_int [(a + b*cos(d + e*x) + c*sin(d + e*x))^(5/2), x, 7, (-16*(a*c*cos(d + e*x) - a*b*sin(d + e*x))*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))/(15*e) - (2*(c*cos(d + e*x) - b*sin(d + e*x))*(a + b*cos(d + e*x) + c*sin(d + e*x))^(3/2))/(5*e) + (2*(23*a^2 + 9*(b^2 + c^2))*EllipticE((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))/(15*e*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2)))) - (16*a*(a^2 - b^2 - c^2)*EllipticF((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2))))/(15*e*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [(a + b*cos(d + e*x) + c*sin(d + e*x))^(3/2), x, 6, (-2*(c*cos(d + e*x) - b*sin(d + e*x))*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))/(3*e) + (8*a*EllipticE((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))/(3*e*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2)))) - (2*(a^2 - b^2 - c^2)*EllipticF((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2))))/(3*e*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)), x, 2, (2*EllipticE((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))/(e*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2))))]
    @test_int [1/sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)), x, 2, (2*EllipticF((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2))))/(e*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [(a + b*cos(d + e*x) + c*sin(d + e*x))^(-3/2), x, 3, (2*(c*cos(d + e*x) - b*sin(d + e*x)))/((a^2 - b^2 - c^2)*e*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x))) + (2*EllipticE((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))/((a^2 - b^2 - c^2)*e*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2))))]
    @test_int [(a + b*cos(d + e*x) + c*sin(d + e*x))^(-5/2), x, 7, (2*(c*cos(d + e*x) - b*sin(d + e*x)))/(3*(a^2 - b^2 - c^2)*e*(a + b*cos(d + e*x) + c*sin(d + e*x))^(3/2)) + (8*(a*c*cos(d + e*x) - a*b*sin(d + e*x)))/(3*(a^2 - b^2 - c^2)^2*e*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x))) + (8*a*EllipticE((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))/(3*(a^2 - b^2 - c^2)^2*e*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2)))) - (2*EllipticF((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2))))/(3*(a^2 - b^2 - c^2)*e*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [(a + b*cos(d + e*x) + c*sin(d + e*x))^(-7/2), x, 8, (2*(c*cos(d + e*x) - b*sin(d + e*x)))/(5*(a^2 - b^2 - c^2)*e*(a + b*cos(d + e*x) + c*sin(d + e*x))^(5/2)) + (16*(a*c*cos(d + e*x) - a*b*sin(d + e*x)))/(15*(a^2 - b^2 - c^2)^2*e*(a + b*cos(d + e*x) + c*sin(d + e*x))^(3/2)) + (2*(23*a^2 + 9*(b^2 + c^2))*EllipticE((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))/(15*(a^2 - b^2 - c^2)^3*e*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2)))) - (16*a*EllipticF((d + e*x - atan(b, c))/2, (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(d + e*x) + c*sin(d + e*x))/(a + sqrt(b^2 + c^2))))/(15*(a^2 - b^2 - c^2)^2*e*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x))) + (2*(c*(23*a^2 + 9*(b^2 + c^2))*cos(d + e*x) - b*(23*a^2 + 9*(b^2 + c^2))*sin(d + e*x)))/(15*(a^2 - b^2 - c^2)^3*e*sqrt(a + b*cos(d + e*x) + c*sin(d + e*x)))]


    @test_int [(5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(5/2), x, 3, (-320*(3*cos(d + e*x) - 4*sin(d + e*x)))/(3*e*sqrt(5 + 4*cos(d + e*x) + 3*sin(d + e*x))) - (16*(3*cos(d + e*x) - 4*sin(d + e*x))*sqrt(5 + 4*cos(d + e*x) + 3*sin(d + e*x)))/(3*e) - (2*(3*cos(d + e*x) - 4*sin(d + e*x))*(5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(3/2))/(5*e)]
    @test_int [(5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(3/2), x, 2, (-40*(3*cos(d + e*x) - 4*sin(d + e*x)))/(3*e*sqrt(5 + 4*cos(d + e*x) + 3*sin(d + e*x))) - (2*(3*cos(d + e*x) - 4*sin(d + e*x))*sqrt(5 + 4*cos(d + e*x) + 3*sin(d + e*x)))/(3*e)]
    @test_int [sqrt(5 + 4*cos(d + e*x) + 3*sin(d + e*x)), x, 1, (-2*(3*cos(d + e*x) - 4*sin(d + e*x)))/(e*sqrt(5 + 4*cos(d + e*x) + 3*sin(d + e*x)))]
    @test_int [1/sqrt(5 + 4*cos(d + e*x) + 3*sin(d + e*x)), x, 3, (sqrt(2/5)*atanh(sin(d + e*x - atan(3/4))/(sqrt(2)*sqrt(1 + cos(d + e*x - atan(3/4))))))/e]
    @test_int [(5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(-3/2), x, 4, atanh(sin(d + e*x - atan(3/4))/(sqrt(2)*sqrt(1 + cos(d + e*x - atan(3/4)))))/(10*sqrt(10)*e) - (3*cos(d + e*x) - 4*sin(d + e*x))/(10*e*(5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(3/2))]
    @test_int [(5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(-5/2), x, 5, (3*atanh(sin(d + e*x - atan(3/4))/(sqrt(2)*sqrt(1 + cos(d + e*x - atan(3/4))))))/(400*sqrt(10)*e) - (3*cos(d + e*x) - 4*sin(d + e*x))/(20*e*(5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(5/2)) - (3*(3*cos(d + e*x) - 4*sin(d + e*x)))/(400*e*(5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(3/2))]


    @test_int [(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(7/2), x, 4, (6400*(3*cos(d + e*x) - 4*sin(d + e*x)))/(7*e*sqrt(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))) - (320*(3*cos(d + e*x) - 4*sin(d + e*x))*sqrt(-5 + 4*cos(d + e*x) + 3*sin(d + e*x)))/(7*e) + (24*(3*cos(d + e*x) - 4*sin(d + e*x))*(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(3/2))/(7*e) - (2*(3*cos(d + e*x) - 4*sin(d + e*x))*(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(5/2))/(7*e)]
    @test_int [(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(5/2), x, 3, (-320*(3*cos(d + e*x) - 4*sin(d + e*x)))/(3*e*sqrt(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))) + (16*(3*cos(d + e*x) - 4*sin(d + e*x))*sqrt(-5 + 4*cos(d + e*x) + 3*sin(d + e*x)))/(3*e) - (2*(3*cos(d + e*x) - 4*sin(d + e*x))*(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(3/2))/(5*e)]
    @test_int [(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(3/2), x, 2, (40*(3*cos(d + e*x) - 4*sin(d + e*x)))/(3*e*sqrt(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))) - (2*(3*cos(d + e*x) - 4*sin(d + e*x))*sqrt(-5 + 4*cos(d + e*x) + 3*sin(d + e*x)))/(3*e)]
    @test_int [sqrt(-5 + 4*cos(d + e*x) + 3*sin(d + e*x)), x, 1, (-2*(3*cos(d + e*x) - 4*sin(d + e*x)))/(e*sqrt(-5 + 4*cos(d + e*x) + 3*sin(d + e*x)))]
    @test_int [1/sqrt(-5 + 4*cos(d + e*x) + 3*sin(d + e*x)), x, 3, -((sqrt(2/5)*atan(sin(d + e*x - atan(3/4))/(sqrt(2)*sqrt(-1 + cos(d + e*x - atan(3/4))))))/e)]
    @test_int [(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(-3/2), x, 4, atan(sin(d + e*x - atan(3/4))/(sqrt(2)*sqrt(-1 + cos(d + e*x - atan(3/4)))))/(10*sqrt(10)*e) + (3*cos(d + e*x) - 4*sin(d + e*x))/(10*e*(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(3/2))]
    @test_int [(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(-5/2), x, 5, -((3*atan(sin(d + e*x - atan(3/4))/(sqrt(2)*sqrt(-1 + cos(d + e*x - atan(3/4))))))/(400*sqrt(10)*e)) + (3*cos(d + e*x) - 4*sin(d + e*x))/(20*e*(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(5/2)) - (3*(3*cos(d + e*x) - 4*sin(d + e*x)))/(400*e*(-5 + 4*cos(d + e*x) + 3*sin(d + e*x))^(3/2))]


    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(7/2), x, 4, (-256*(b^2 + c^2)^(3/2)*(c*cos(d + e*x) - b*sin(d + e*x)))/(35*e*sqrt(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))) - (64*(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x))*sqrt(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))/(35*e) - (24*sqrt(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x))*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(3/2))/(35*e) - (2*(c*cos(d + e*x) - b*sin(d + e*x))*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(5/2))/(7*e)]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(5/2), x, 3, (-64*(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x)))/(15*e*sqrt(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))) - (16*sqrt(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x))*sqrt(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))/(15*e) - (2*(c*cos(d + e*x) - b*sin(d + e*x))*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(3/2))/(5*e)]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(3/2), x, 2, (-8*sqrt(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x)))/(3*e*sqrt(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))) - (2*(c*cos(d + e*x) - b*sin(d + e*x))*sqrt(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))/(3*e)]
    @test_int [sqrt(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)), x, 1, (-2*(c*cos(d + e*x) - b*sin(d + e*x)))/(e*sqrt(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/sqrt(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)), x, 3, (sqrt(2)*atanh(((b^2 + c^2)^(1/4)*sin(d + e*x - atan(b, c)))/(sqrt(2)*sqrt(sqrt(b^2 + c^2) + sqrt(b^2 + c^2)*cos(d + e*x - atan(b, c))))))/((b^2 + c^2)^(1/4)*e)]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(-3/2), x, 4, atanh(((b^2 + c^2)^(1/4)*sin(d + e*x - atan(b, c)))/(sqrt(2)*sqrt(sqrt(b^2 + c^2) + sqrt(b^2 + c^2)*cos(d + e*x - atan(b, c)))))/(2*sqrt(2)*(b^2 + c^2)^(3/4)*e) - (c*cos(d + e*x) - b*sin(d + e*x))/(2*sqrt(b^2 + c^2)*e*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(3/2))]
    @test_int [(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(-5/2), x, 5, (3*atanh(((b^2 + c^2)^(1/4)*sin(d + e*x - atan(b, c)))/(sqrt(2)*sqrt(sqrt(b^2 + c^2) + sqrt(b^2 + c^2)*cos(d + e*x - atan(b, c))))))/(16*sqrt(2)*(b^2 + c^2)^(5/4)*e) - (c*cos(d + e*x) - b*sin(d + e*x))/(4*sqrt(b^2 + c^2)*e*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(5/2)) - (3*(c*cos(d + e*x) - b*sin(d + e*x)))/(16*(b^2 + c^2)*e*(sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(3/2))]


    @test_int [(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(5/2), x, 3, (-64*(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x)))/(15*e*sqrt(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))) + (16*sqrt(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x))*sqrt(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))/(15*e) - (2*(c*cos(d + e*x) - b*sin(d + e*x))*(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(3/2))/(5*e)]
    @test_int [(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(3/2), x, 2, (8*sqrt(b^2 + c^2)*(c*cos(d + e*x) - b*sin(d + e*x)))/(3*e*sqrt(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))) - (2*(c*cos(d + e*x) - b*sin(d + e*x))*sqrt(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))/(3*e)]
    @test_int [sqrt(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)), x, 1, (-2*(c*cos(d + e*x) - b*sin(d + e*x)))/(e*sqrt(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)))]
    @test_int [1/sqrt(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x)), x, 3, -((sqrt(2)*atan(((b^2 + c^2)^(1/4)*sin(d + e*x - atan(b, c)))/(sqrt(2)*sqrt(-sqrt(b^2 + c^2) + sqrt(b^2 + c^2)*cos(d + e*x - atan(b, c))))))/((b^2 + c^2)^(1/4)*e))]
    @test_int [(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(-3/2), x, 4, atan(((b^2 + c^2)^(1/4)*sin(d + e*x - atan(b, c)))/(sqrt(2)*sqrt(-sqrt(b^2 + c^2) + sqrt(b^2 + c^2)*cos(d + e*x - atan(b, c)))))/(2*sqrt(2)*(b^2 + c^2)^(3/4)*e) + (c*cos(d + e*x) - b*sin(d + e*x))/(2*sqrt(b^2 + c^2)*e*(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(3/2))]
    @test_int [(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(-5/2), x, 5, -((3*atan(((b^2 + c^2)^(1/4)*sin(d + e*x - atan(b, c)))/(sqrt(2)*sqrt(-sqrt(b^2 + c^2) + sqrt(b^2 + c^2)*cos(d + e*x - atan(b, c))))))/(16*sqrt(2)*(b^2 + c^2)^(5/4)*e)) + (c*cos(d + e*x) - b*sin(d + e*x))/(4*sqrt(b^2 + c^2)*e*(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(5/2)) - (3*(c*cos(d + e*x) - b*sin(d + e*x)))/(16*(b^2 + c^2)*e*(-sqrt(b^2 + c^2) + b*cos(d + e*x) + c*sin(d + e*x))^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(d+e*x)^m*(a + b*cos(d+e*x) + c*sin(d+e*x))^n=#


    @test_int [sin(x)/(a + b*cos(x) + c*sin(x)), x, 4, (c*x)/(b^2 + c^2) - (2*a*c*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(sqrt(a^2 - b^2 - c^2)*(b^2 + c^2)) - (b*log(a + b*cos(x) + c*sin(x)))/(b^2 + c^2)]
    @test_int [sin(x)/(1 + cos(x) + sin(x)), x, 3, x/2 - log(cos(x/2) + sin(x/2)), x/2 - (1/2)*log(1 + cos(x) + sin(x)) - (1/2)*log(1 + tan(x/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(d+e*x)^m*(a + b*tan(d+e*x) + c*sec(d+e*x))^n=#


    @test_int [sec(x)^0/(a + b*tan(x) + c*sec(x)), x, 5, (a*x)/(a^2 + b^2) + (2*a*c*atanh((b - (a - c)*tan(x/2))/sqrt(a^2 + b^2 - c^2)))/((a^2 + b^2)*sqrt(a^2 + b^2 - c^2)) + (b*log(c + a*cos(x) + b*sin(x)))/(a^2 + b^2)]
    @test_int [sec(x)^1/(a + b*tan(x) + c*sec(x)), x, 4, -((2*atanh((b - (a - c)*tan(x/2))/sqrt(a^2 + b^2 - c^2)))/sqrt(a^2 + b^2 - c^2))]
    @test_int [sec(x)^2/(a + b*tan(x) + c*sec(x)), x, 10, -((2*a*c*atanh((b - (a - c)*tan(x/2))/sqrt(a^2 + b^2 - c^2)))/((b^2 - c^2)*sqrt(a^2 + b^2 - c^2))) - log(1 - tan(x/2))/(b + c) - log(1 + tan(x/2))/(b - c) + (b*log(a + c + 2*b*tan(x/2) - (a - c)*tan(x/2)^2))/(b^2 - c^2)]


    @test_int [(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2)/sec(d + e*x)^(3/2), x, 7, -((2*(c*cos(d + e*x) - a*sin(d + e*x))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))/(3*e*sec(d + e*x)^(3/2)*(b + a*cos(d + e*x) + c*sin(d + e*x)))) + (8*b*EllipticE((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))/(3*e*sec(d + e*x)^(3/2)*(b + a*cos(d + e*x) + c*sin(d + e*x))*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2)))) + (2*(a^2 - b^2 + c^2)*EllipticF((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2)))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))/(3*e*sec(d + e*x)^(3/2)*(b + a*cos(d + e*x) + c*sin(d + e*x))^2)]
    @test_int [(a + b*sec(d + e*x) + c*tan(d + e*x))^(1/2)/sec(d + e*x)^(1/2), x, 3, (2*EllipticE((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt(a + b*sec(d + e*x) + c*tan(d + e*x)))/(e*sqrt(sec(d + e*x))*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2))))]
    @test_int [sec(d + e*x)^(1/2)/(a + b*sec(d + e*x) + c*tan(d + e*x))^(1/2), x, 3, (2*EllipticF((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt(sec(d + e*x))*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(e*sqrt(a + b*sec(d + e*x) + c*tan(d + e*x)))]
    @test_int [sec(d + e*x)^(3/2)/(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2), x, 4, -((2*sec(d + e*x)^(3/2)*(c*cos(d + e*x) - a*sin(d + e*x))*(b + a*cos(d + e*x) + c*sin(d + e*x)))/((a^2 - b^2 + c^2)*e*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))) - (2*EllipticE((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sec(d + e*x)^(3/2)*(b + a*cos(d + e*x) + c*sin(d + e*x))^2)/((a^2 - b^2 + c^2)*e*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2)))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))]
    @test_int [sec(d + e*x)^(5/2)/(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2), x, 8, -((2*sec(d + e*x)^(5/2)*(c*cos(d + e*x) - a*sin(d + e*x))*(b + a*cos(d + e*x) + c*sin(d + e*x)))/(3*(a^2 - b^2 + c^2)*e*(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2))) + (8*sec(d + e*x)^(5/2)*(b*c*cos(d + e*x) - a*b*sin(d + e*x))*(b + a*cos(d + e*x) + c*sin(d + e*x))^2)/(3*(a^2 - b^2 + c^2)^2*e*(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2)) + (8*b*EllipticE((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sec(d + e*x)^(5/2)*(b + a*cos(d + e*x) + c*sin(d + e*x))^3)/(3*(a^2 - b^2 + c^2)^2*e*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2)))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2)) + (2*EllipticF((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sec(d + e*x)^(5/2)*(b + a*cos(d + e*x) + c*sin(d + e*x))^2*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(3*(a^2 - b^2 + c^2)*e*(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2))]


    @test_int [cos(d + e*x)^(3/2)*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2), x, 7, -((2*cos(d + e*x)^(3/2)*(c*cos(d + e*x) - a*sin(d + e*x))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))/(3*e*(b + a*cos(d + e*x) + c*sin(d + e*x)))) + (8*b*cos(d + e*x)^(3/2)*EllipticE((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))/(3*e*(b + a*cos(d + e*x) + c*sin(d + e*x))*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2)))) + (2*(a^2 - b^2 + c^2)*cos(d + e*x)^(3/2)*EllipticF((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2)))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))/(3*e*(b + a*cos(d + e*x) + c*sin(d + e*x))^2)]
    @test_int [cos(d + e*x)^(1/2)*(a + b*sec(d + e*x) + c*tan(d + e*x))^(1/2), x, 3, (2*sqrt(cos(d + e*x))*EllipticE((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt(a + b*sec(d + e*x) + c*tan(d + e*x)))/(e*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2))))]
    @test_int [1/(cos(d + e*x)^(1/2)*(a + b*sec(d + e*x) + c*tan(d + e*x))^(1/2)), x, 3, (2*EllipticF((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(e*sqrt(cos(d + e*x))*sqrt(a + b*sec(d + e*x) + c*tan(d + e*x)))]
    @test_int [1/(cos(d + e*x)^(3/2)*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2)), x, 4, -((2*(c*cos(d + e*x) - a*sin(d + e*x))*(b + a*cos(d + e*x) + c*sin(d + e*x)))/((a^2 - b^2 + c^2)*e*cos(d + e*x)^(3/2)*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))) - (2*EllipticE((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(b + a*cos(d + e*x) + c*sin(d + e*x))^2)/((a^2 - b^2 + c^2)*e*cos(d + e*x)^(3/2)*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2)))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(3/2))]
    @test_int [1/(cos(d + e*x)^(5/2)*(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2)), x, 8, -((2*(c*cos(d + e*x) - a*sin(d + e*x))*(b + a*cos(d + e*x) + c*sin(d + e*x)))/(3*(a^2 - b^2 + c^2)*e*cos(d + e*x)^(5/2)*(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2))) + (8*(b*c*cos(d + e*x) - a*b*sin(d + e*x))*(b + a*cos(d + e*x) + c*sin(d + e*x))^2)/(3*(a^2 - b^2 + c^2)^2*e*cos(d + e*x)^(5/2)*(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2)) + (8*b*EllipticE((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(b + a*cos(d + e*x) + c*sin(d + e*x))^3)/(3*(a^2 - b^2 + c^2)^2*e*cos(d + e*x)^(5/2)*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2)))*(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2)) + (2*EllipticF((1/2)*(d + e*x - atan(a, c)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(b + a*cos(d + e*x) + c*sin(d + e*x))^2*sqrt((b + a*cos(d + e*x) + c*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(3*(a^2 - b^2 + c^2)*e*cos(d + e*x)^(5/2)*(a + b*sec(d + e*x) + c*tan(d + e*x))^(5/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*csc(d+e*x)^m*(a + b*cot(d+e*x) + c*csc(d+e*x))^n=#


    @test_int [csc(x)^0/(a + b*cot(x) + c*csc(x)), x, 5, (a*x)/(a^2 + b^2) + (2*a*c*atanh((a - (b - c)*tan(x/2))/sqrt(a^2 + b^2 - c^2)))/((a^2 + b^2)*sqrt(a^2 + b^2 - c^2)) - (b*log(c + b*cos(x) + a*sin(x)))/(a^2 + b^2)]
    @test_int [csc(x)^1/(a + b*cot(x) + c*csc(x)), x, 4, -((2*atanh((a - (b - c)*tan(x/2))/sqrt(a^2 + b^2 - c^2)))/sqrt(a^2 + b^2 - c^2))]
    @test_int [csc(x)^2/(a + b*cot(x) + c*csc(x)), x, 9, -((2*a*c*atanh((a - (b - c)*tan(x/2))/sqrt(a^2 + b^2 - c^2)))/((b^2 - c^2)*sqrt(a^2 + b^2 - c^2))) + log(tan(x/2))/(b + c) - (b*log(b + c + 2*a*tan(x/2) - (b - c)*tan(x/2)^2))/(b^2 - c^2)]

    @test_int [csc(x)^1/(2 + 2*cot(x) + 3*csc(x)), x, 4, x + 2*atan((cos(x) - sin(x))/(2 + cos(x) + sin(x)))]


    @test_int [(a + b*csc(d + e*x) + c*cot(d + e*x))^(3/2)/csc(d + e*x)^(3/2), x, 7, (8*b*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2)*EllipticE((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2))))/(3*e*csc(d + e*x)^(3/2)*(b + c*cos(d + e*x) + a*sin(d + e*x))*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2)))) + (2*(a^2 - b^2 + c^2)*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2)*EllipticF((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(3*e*csc(d + e*x)^(3/2)*(b + c*cos(d + e*x) + a*sin(d + e*x))^2) - (2*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2)*(a*cos(d + e*x) - c*sin(d + e*x)))/(3*e*csc(d + e*x)^(3/2)*(b + c*cos(d + e*x) + a*sin(d + e*x)))]
    @test_int [(a + b*csc(d + e*x) + c*cot(d + e*x))^(1/2)/csc(d + e*x)^(1/2), x, 3, (2*sqrt(a + c*cot(d + e*x) + b*csc(d + e*x))*EllipticE((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2))))/(e*sqrt(csc(d + e*x))*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))]
    @test_int [csc(d + e*x)^(1/2)/(a + b*csc(d + e*x) + c*cot(d + e*x))^(1/2), x, 3, (2*sqrt(csc(d + e*x))*EllipticF((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(e*sqrt(a + c*cot(d + e*x) + b*csc(d + e*x)))]
    @test_int [csc(d + e*x)^(3/2)/(a + b*csc(d + e*x) + c*cot(d + e*x))^(3/2), x, 4, -((2*csc(d + e*x)^(3/2)*EllipticE((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(b + c*cos(d + e*x) + a*sin(d + e*x))^2)/((a^2 - b^2 + c^2)*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2)*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))) - (2*csc(d + e*x)^(3/2)*(b + c*cos(d + e*x) + a*sin(d + e*x))*(a*cos(d + e*x) - c*sin(d + e*x)))/((a^2 - b^2 + c^2)*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2))]
    @test_int [csc(d + e*x)^(5/2)/(a + b*csc(d + e*x) + c*cot(d + e*x))^(5/2), x, 8, (8*b*csc(d + e*x)^(5/2)*EllipticE((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(b + c*cos(d + e*x) + a*sin(d + e*x))^3)/(3*(a^2 - b^2 + c^2)^2*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(5/2)*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2)))) + (2*csc(d + e*x)^(5/2)*EllipticF((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(b + c*cos(d + e*x) + a*sin(d + e*x))^2*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(3*(a^2 - b^2 + c^2)*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(5/2)) - (2*csc(d + e*x)^(5/2)*(b + c*cos(d + e*x) + a*sin(d + e*x))*(a*cos(d + e*x) - c*sin(d + e*x)))/(3*(a^2 - b^2 + c^2)*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(5/2)) + (8*csc(d + e*x)^(5/2)*(b + c*cos(d + e*x) + a*sin(d + e*x))^2*(a*b*cos(d + e*x) - b*c*sin(d + e*x)))/(3*(a^2 - b^2 + c^2)^2*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(5/2))]


    @test_int [sin(d + e*x)^(3/2)*(a + b*csc(d + e*x) + c*cot(d + e*x))^(3/2), x, 7, (8*b*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2)*EllipticE((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sin(d + e*x)^(3/2))/(3*e*(b + c*cos(d + e*x) + a*sin(d + e*x))*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2)))) + (2*(a^2 - b^2 + c^2)*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2)*EllipticF((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sin(d + e*x)^(3/2)*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(3*e*(b + c*cos(d + e*x) + a*sin(d + e*x))^2) - (2*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2)*sin(d + e*x)^(3/2)*(a*cos(d + e*x) - c*sin(d + e*x)))/(3*e*(b + c*cos(d + e*x) + a*sin(d + e*x)))]
    @test_int [sin(d + e*x)^(1/2)*(a + b*csc(d + e*x) + c*cot(d + e*x))^(1/2), x, 3, (2*sqrt(a + c*cot(d + e*x) + b*csc(d + e*x))*EllipticE((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt(sin(d + e*x)))/(e*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))]
    @test_int [1/(sin(d + e*x)^(1/2)*(a + b*csc(d + e*x) + c*cot(d + e*x))^(1/2)), x, 3, (2*EllipticF((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(e*sqrt(a + c*cot(d + e*x) + b*csc(d + e*x))*sqrt(sin(d + e*x)))]
    @test_int [1/(sin(d + e*x)^(3/2)*(a + b*csc(d + e*x) + c*cot(d + e*x))^(3/2)), x, 4, -((2*EllipticE((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(b + c*cos(d + e*x) + a*sin(d + e*x))^2)/((a^2 - b^2 + c^2)*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2)*sin(d + e*x)^(3/2)*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))) - (2*(b + c*cos(d + e*x) + a*sin(d + e*x))*(a*cos(d + e*x) - c*sin(d + e*x)))/((a^2 - b^2 + c^2)*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(3/2)*sin(d + e*x)^(3/2))]
    @test_int [1/(sin(d + e*x)^(5/2)*(a + b*csc(d + e*x) + c*cot(d + e*x))^(5/2)), x, 8, (8*b*EllipticE((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(b + c*cos(d + e*x) + a*sin(d + e*x))^3)/(3*(a^2 - b^2 + c^2)^2*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(5/2)*sin(d + e*x)^(5/2)*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2)))) + (2*EllipticF((1/2)*(d + e*x - atan(c, a)), (2*sqrt(a^2 + c^2))/(b + sqrt(a^2 + c^2)))*(b + c*cos(d + e*x) + a*sin(d + e*x))^2*sqrt((b + c*cos(d + e*x) + a*sin(d + e*x))/(b + sqrt(a^2 + c^2))))/(3*(a^2 - b^2 + c^2)*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(5/2)*sin(d + e*x)^(5/2)) - (2*(b + c*cos(d + e*x) + a*sin(d + e*x))*(a*cos(d + e*x) - c*sin(d + e*x)))/(3*(a^2 - b^2 + c^2)*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(5/2)*sin(d + e*x)^(5/2)) + (8*(b + c*cos(d + e*x) + a*sin(d + e*x))^2*(a*b*cos(d + e*x) - b*c*sin(d + e*x)))/(3*(a^2 - b^2 + c^2)^2*e*(a + c*cot(d + e*x) + b*csc(d + e*x))^(5/2)*sin(d + e*x)^(5/2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a*Trig(c+d*x)^2 + b*Trig(c+d*x)^2)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cos(c+d*x)^2 + b*sin(c+d*x)^2)^n=#


    @test_int [1/(cos(x)^2 + sin(x)^2), x, 2, x]
    @test_int [1/(cos(x)^2 + sin(x)^2)^2, x, 2, x]
    @test_int [1/(cos(x)^2 + sin(x)^2)^3, x, 2, x]

    @test_int [1/(cos(x)^2 - sin(x)^2), x, 2, (1/2)*atanh(2*cos(x)*sin(x))]
    @test_int [1/(cos(x)^2 - sin(x)^2)^2, x, 2, tan(x)/(1 - tan(x)^2)]
    @test_int [1/(cos(x)^2 - sin(x)^2)^3, x, 4, (1/4)*atanh(2*cos(x)*sin(x)) + (sec(x)^2*tan(x))/(2*(1 - tan(x)^2)^2)]


    @test_int [1/(cos(x)^2 + a^2*sin(x)^2), x, 2, atan(a*tan(x))/a]
    @test_int [1/(b^2*cos(x)^2 + sin(x)^2), x, 2, atan(tan(x)/b)/b]
    @test_int [1/(b^2*cos(x)^2 + a^2*sin(x)^2), x, 2, atan((a*tan(x))/b)/(a*b)]
    @test_int [1/(4*cos(1 + 2*x)^2 + 3*sin(1 + 2*x)^2), x, 2, x/(2*sqrt(3)) - atan((cos(1 + 2*x)*sin(1 + 2*x))/(3 + 2*sqrt(3) + cos(1 + 2*x)^2))/(4*sqrt(3))]


    @test_int [sin(x)^2/(a*cos(x)^2 + b*sin(x)^2), x, 4, -(x/(a - b)) + (sqrt(a)*atan((sqrt(b)*tan(x))/sqrt(a)))/((a - b)*sqrt(b))]
    @test_int [cos(x)^2/(a*cos(x)^2 + b*sin(x)^2), x, 4, x/(a - b) - (sqrt(b)*atan((sqrt(b)*tan(x))/sqrt(a)))/(sqrt(a)*(a - b))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*sec(c+d*x)^2 + b*tan(c+d*x)^2)^n=#


    @test_int [1/(sec(x)^2 + tan(x)^2)^1, x, 4, -x + sqrt(2)*x + sqrt(2)*atan((cos(x)*sin(x))/(1 + sqrt(2) + sin(x)^2))]
    @test_int [1/(sec(x)^2 + tan(x)^2)^2, x, 6, x - x/sqrt(2) - atan((cos(x)*sin(x))/(1 + sqrt(2) + sin(x)^2))/sqrt(2) + tan(x)/(1 + 2*tan(x)^2)]
    @test_int [1/(sec(x)^2 + tan(x)^2)^3, x, 6, -x + (7*x)/(4*sqrt(2)) + (7*atan((cos(x)*sin(x))/(1 + sqrt(2) + sin(x)^2)))/(4*sqrt(2)) + tan(x)/(2*(1 + 2*tan(x)^2)^2) - tan(x)/(4*(1 + 2*tan(x)^2))]

    @test_int [1/(sec(x)^2 - tan(x)^2)^1, x, 2, x]
    @test_int [1/(sec(x)^2 - tan(x)^2)^2, x, 2, x]
    @test_int [1/(sec(x)^2 - tan(x)^2)^3, x, 2, x]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a*cot(c+d*x)^2 + b*csc(c+d*x)^2)^n=#


    @test_int [1/(cot(x)^2 + csc(x)^2)^1, x, 4, -x + sqrt(2)*x - sqrt(2)*atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2))]
    @test_int [1/(cot(x)^2 + csc(x)^2)^2, x, 6, x - x/sqrt(2) + atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2))/sqrt(2) - tan(x)/(2 + tan(x)^2)]
    @test_int [1/(cot(x)^2 + csc(x)^2)^3, x, 6, -x + (7*x)/(4*sqrt(2)) - (7*atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2)))/(4*sqrt(2)) - tan(x)^3/(2*(2 + tan(x)^2)^2) + tan(x)/(4*(2 + tan(x)^2))]

    @test_int [1/(cot(x)^2 - csc(x)^2)^1, x, 2, -x]
    @test_int [1/(cot(x)^2 - csc(x)^2)^2, x, 2, x]
    @test_int [1/(cot(x)^2 - csc(x)^2)^3, x, 2, -x]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(a + b*Trig(d+e*x)^2 + c*Trig(d+e*x)^2)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a + b*cos(d+e*x)^2 + c*sin(d+e*x)^2)^n=#


    @test_int [1/(a + b*cos(x)^2 + c*sin(x)^2), x, 2, atan((sqrt(a + c)*tan(x))/sqrt(a + b))/(sqrt(a + b)*sqrt(a + c))]
    @test_int [x/(a + b*cos(x)^2 + c*sin(x)^2), x, 9, -((im*x*log(1 + ((b - c)*ℯ^(2*im*x))/(2*a + b + c - 2*sqrt(a + b)*sqrt(a + c))))/(2*sqrt(a + b)*sqrt(a + c))) + (im*x*log(1 + ((b - c)*ℯ^(2*im*x))/(2*a + b + c + 2*sqrt(a + b)*sqrt(a + c))))/(2*sqrt(a + b)*sqrt(a + c)) - PolyLog(2, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c - 2*sqrt(a + b)*sqrt(a + c))))/(4*sqrt(a + b)*sqrt(a + c)) + PolyLog(2, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c + 2*sqrt(a + b)*sqrt(a + c))))/(4*sqrt(a + b)*sqrt(a + c))]
    @test_int [x^2/(a + b*cos(x)^2 + c*sin(x)^2), x, 11, -((im*x^2*log(1 + ((b - c)*ℯ^(2*im*x))/(2*a + b + c - 2*sqrt(a + b)*sqrt(a + c))))/(2*sqrt(a + b)*sqrt(a + c))) + (im*x^2*log(1 + ((b - c)*ℯ^(2*im*x))/(2*a + b + c + 2*sqrt(a + b)*sqrt(a + c))))/(2*sqrt(a + b)*sqrt(a + c)) - (x*PolyLog(2, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c - 2*sqrt(a + b)*sqrt(a + c)))))/(2*sqrt(a + b)*sqrt(a + c)) + (x*PolyLog(2, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c + 2*sqrt(a + b)*sqrt(a + c)))))/(2*sqrt(a + b)*sqrt(a + c)) - (im*PolyLog(3, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c - 2*sqrt(a + b)*sqrt(a + c)))))/(4*sqrt(a + b)*sqrt(a + c)) + (im*PolyLog(3, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c + 2*sqrt(a + b)*sqrt(a + c)))))/(4*sqrt(a + b)*sqrt(a + c))]
    #= [x^3/(a + b*cos(x)^2 + c*sin(x)^2), x, 13, -((im*x^3*log(1 + ((b - c)*ℯ^(2*im*x))/(2*a + b + c - 2*sqrt(a + b)*sqrt(a + c))))/(2*sqrt(a + b)*sqrt(a + c))) + (im*x^3*log(1 + ((b - c)*ℯ^(2*im*x))/(2*a + b + c + 2*sqrt(a + b)*sqrt(a + c))))/(2*sqrt(a + b)*sqrt(a + c)) - (3*x^2*PolyLog(2, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c - 2*sqrt(a + b)*sqrt(a + c)))))/(4*sqrt(a + b)*sqrt(a + c)) + (3*x^2*PolyLog(2, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c + 2*sqrt(a + b)*sqrt(a + c)))))/(4*sqrt(a + b)*sqrt(a + c)) - (3*im*x*PolyLog(3, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c - 2*sqrt(a + b)*sqrt(a + c)))))/(4*sqrt(a + b)*sqrt(a + c)) + (3*im*x*PolyLog(3, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c + 2*sqrt(a + b)*sqrt(a + c)))))/(4*sqrt(a + b)*sqrt(a + c)) + (3*PolyLog(4, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c - 2*sqrt(a + b)*sqrt(a + c)))))/(8*sqrt(a + b)*sqrt(a + c)) - (3*PolyLog(4, -(((b - c)*ℯ^(2*im*x))/(2*a + b + c + 2*sqrt(a + b)*sqrt(a + c)))))/(8*sqrt(a + b)*sqrt(a + c))] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*sin(d+e*x))^m*(a + b*sin(d+e*x) + c*sin(d+e*x)^2)^n=#


    #= [(a + b*sin(d + e*x))*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^3, x, 8, (a*(5*a^6 + 120*a^4*b^2 + 240*a^2*b^4 + 64*b^6)*x)/16 - (b*(512*a^6 + 2789*a^4*b^2 + 1664*a^2*b^4 + 40*b^6)*cos(d + e*x))/(140*e) - (a*(175*a^6 + 2502*a^4*b^2 + 2248*a^2*b^4 + 80*b^6)*cos(d + e*x)*sin(d + e*x))/(560*e) - (b*(337*a^4 + 624*a^2*b^2 + 40*b^4)*cos(d + e*x)*(b + a*sin(d + e*x))^2)/(280*e) - ((175*a^4 + 992*a^2*b^2 + 120*b^4)*cos(d + e*x)*(b + a*sin(d + e*x))^3)/(840*e) - (b*(113*a^2 + 30*b^2)*cos(d + e*x)*(b + a*sin(d + e*x))^4)/(210*e) - ((7*a^2 + 6*b^2)*cos(d + e*x)*(b + a*sin(d + e*x))^5)/(42*e) - (b*cos(d + e*x)*(b + a*sin(d + e*x))^6)/(7*e)] =#
    @test_int [(a + b*sin(d + e*x))*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^2, x, 5, (3*a*(a^4 + 12*a^2*b^2 + 8*b^4)*x)/8 - (b*(32*a^4 + 69*a^2*b^2 + 4*b^4)*cos(d + e*x))/(10*e) - (a*(15*a^4 + 82*a^2*b^2 + 8*b^4)*cos(d + e*x)*sin(d + e*x))/(40*e) - (b*(17*a^2 + 4*b^2)*cos(d + e*x)*(b + a*sin(d + e*x))^2)/(20*e) - ((5*a^2 + 4*b^2)*cos(d + e*x)*(b + a*sin(d + e*x))^3)/(20*e) - (b*cos(d + e*x)*(b + a*sin(d + e*x))^4)/(5*e)]
    @test_int [(a + b*sin(d + e*x))*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2), x, 2, (1/2)*a*(a^2 + 4*b^2)*x + ((a^4 - 8*a^2*b^2 - 3*b^4)*cos(d + e*x))/(3*b*e) + (a*(a^2 - 6*b^2)*cos(d + e*x)*sin(d + e*x))/(6*e) - (a^2*cos(d + e*x)*(a + b*sin(d + e*x))^2)/(3*b*e)]
    @test_int [(a + b*sin(d + e*x))/(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2), x, 3, -(cos(d + e*x)/(e*(b + a*sin(d + e*x))))]
    @test_int [(a + b*sin(d + e*x))/(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^2, x, 9, (2*a*b*atanh((a + b*tan((d + e*x)/2))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(5/2)*e) - cos(d + e*x)/(3*e*(b + a*sin(d + e*x))^3) + (b*cos(d + e*x))/(3*(a^2 - b^2)*e*(b + a*sin(d + e*x))^2) - ((2*a^2 + b^2)*cos(d + e*x))/(3*(a^2 - b^2)^2*e*(b + a*sin(d + e*x)))]
    #= [(a + b*sin(d + e*x))/(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^3, x, 9, (a*b*(3*a^2 + 4*b^2)*atanh((a + b*tan((d + e*x)/2))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(9/2)*e) - cos(d + e*x)/(5*e*(b + a*sin(d + e*x))^5) + (b*cos(d + e*x))/(5*(a^2 - b^2)*e*(b + a*sin(d + e*x))^4) - ((4*a^2 + 3*b^2)*cos(d + e*x))/(15*(a^2 - b^2)^2*e*(b + a*sin(d + e*x))^3) + (b*(29*a^2 + 6*b^2)*cos(d + e*x))/(30*(a^2 - b^2)^3*e*(b + a*sin(d + e*x))^2) - ((16*a^4 + 83*a^2*b^2 + 6*b^4)*cos(d + e*x))/(30*(a^2 - b^2)^4*e*(b + a*sin(d + e*x)))] =#


    @test_int [(d + e*sin(x))/(a + b*sin(x) + c*sin(x)^2), x, 7, (sqrt(2)*(e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)) + (sqrt(2)*(e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c))]


    #= [(a + b*sin(d + e*x))*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2), x, 7, -(b*cos(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2))/(6*e) - ((32*a^6 + 544*a^4*b^2 + 559*a^2*b^4 + 20*b^6)*cos(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2))/(60*e*(b + a*sin(d + e*x))^5) - ((32*a^4 + 179*a^2*b^2 + 20*b^4)*cos(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2))/(120*e*(b + a*sin(d + e*x))^3) - (b*(79*a^2 + 20*b^2)*cos(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2))/(120*e*(b + a*sin(d + e*x))^2) - ((6*a^2 + 5*b^2)*cos(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2))/(30*e*(b + a*sin(d + e*x))) + (7*a^6*b*(5*a^4 + 20*a^2*b^2 + 8*b^4)*x*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2))/(16*(a*b + a^2*sin(d + e*x))^5) - (a^6*b*(397*a^4 + 718*a^2*b^2 + 40*b^4)*cos(d + e*x)*sin(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2))/(240*e*(a*b + a^2*sin(d + e*x))^5)] =#
    @test_int [(a + b*sin(d + e*x))*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2), x, 4, -(b*cos(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2))/(4*e) - ((4*a^4 + 28*a^2*b^2 + 3*b^4)*cos(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2))/(6*e*(b + a*sin(d + e*x))^3) - ((4*a^2 + 3*b^2)*cos(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2))/(12*e*(b + a*sin(d + e*x))) + (5*a^4*b*(3*a^2 + 4*b^2)*x*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2))/(8*(a*b + a^2*sin(d + e*x))^3) - (a^4*b*(29*a^2 + 6*b^2)*cos(d + e*x)*sin(d + e*x)*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2))/(24*e*(a*b + a^2*sin(d + e*x))^3)]
    @test_int [(a + b*sin(d + e*x))*sqrt(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2), x, 2, -(((a^2 + b^2)*cos(d + e*x)*sqrt(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2))/(e*(b + a*sin(d + e*x)))) + (3*a^2*b*x*sqrt(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2))/(2*(a*b + a^2*sin(d + e*x))) - (a^2*b*cos(d + e*x)*sin(d + e*x)*sqrt(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2))/(2*e*(a*b + a^2*sin(d + e*x)))]
    @test_int [(a + b*sin(d + e*x))/sqrt(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2), x, 5, (b*x*(b + a*sin(d + e*x)))/(a*sqrt(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)) - (2*sqrt(a^2 - b^2)*atanh((a + b*tan((d + e*x)/2))/sqrt(a^2 - b^2))*(b + a*sin(d + e*x)))/(a*e*sqrt(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2))]
    @test_int [(a + b*sin(d + e*x))/(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2), x, 8, -(cos(d + e*x)*(b + a*sin(d + e*x)))/(2*e*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2)) - (atanh((a + b*tan((d + e*x)/2))/sqrt(a^2 - b^2))*(a*b + a^2*sin(d + e*x))^3)/(a^2*(a^2 - b^2)^(3/2)*e*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2)) + (b*cos(d + e*x)*(a*b + a^2*sin(d + e*x))^3)/(2*(a^2 - b^2)*e*(a^3*b + a^4*sin(d + e*x))*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(3/2))]
    #= [(a + b*sin(d + e*x))/(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2), x, 8, -(cos(d + e*x)*(b + a*sin(d + e*x)))/(4*e*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2)) + (b*cos(d + e*x)*(b + a*sin(d + e*x))^2)/(4*(a^2 - b^2)*e*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2)) + (b*(13*a^2 + 2*b^2)*cos(d + e*x)*(b + a*sin(d + e*x))^4)/(8*(a^2 - b^2)^3*e*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2)) - (3*(a^2 + 4*b^2)*atanh((a + b*tan((d + e*x)/2))/sqrt(a^2 - b^2))*(a*b + a^2*sin(d + e*x))^5)/(4*a^4*(a^2 - b^2)^(7/2)*e*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2)) - ((3*a^2 + 2*b^2)*cos(d + e*x)*(a*b + a^2*sin(d + e*x))^5)/(8*a*(a^2 - b^2)^2*e*(a^2*b + a^3*sin(d + e*x))^2*(b^2 + 2*a*b*sin(d + e*x) + a^2*sin(d + e*x)^2)^(5/2))] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*cos(d+e*x))^m*(a + b*cos(d+e*x) + c*cos(d+e*x)^2)^n=#


    @test_int [(a + b*cos(x))/(b^2 + 2*a*b*cos(x) + a^2*cos(x)^2), x, 3, sin(x)/(b + a*cos(x))]
    @test_int [(d + e*cos(x))/(a + b*cos(x) + c*cos(x)^2), x, 5, (2*(e + (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) + (2*(e - (2*c*d - b*e)/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*tan(d+e*x))^m*(a + b*tan(d+e*x) + c*tan(d+e*x)^2)^n=#


    #= [(a + b*tan(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^3, x, 10, -(a*(a^2 + b^2)*(a^4 - 10*a^2*b^2 + 5*b^4)*x) - (b*(a^2 + b^2)*(5*a^4 - 10*a^2*b^2 + b^4)*log(cos(d + e*x)))/e + ((a^2 + b^2)*(a^4 - 6*a^2*b^2 + b^4)*(b + a*tan(d + e*x)))/e - (b*(3*a^2 - b^2)*(a^2 + b^2)*(b + a*tan(d + e*x))^2)/(2*e) - ((a^4 - b^4)*(b + a*tan(d + e*x))^3)/(3*e) + (b*(a^2 + b^2)*(b + a*tan(d + e*x))^4)/(4*e) + ((a^2 + b^2)*(b + a*tan(d + e*x))^5)/(5*e) + (b*(b + a*tan(d + e*x))^6)/(6*e)] =#
    @test_int [(a + b*tan(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^2, x, 7, a*(a^2 - 3*b^2)*(a^2 + b^2)*x + (b*(3*a^2 - b^2)*(a^2 + b^2)*log(cos(d + e*x)))/e - (a*(a^4 - b^4)*tan(d + e*x))/e + (b*(a^2 + b^2)*(b + a*tan(d + e*x))^2)/(2*e) + ((a^2 + b^2)*(b + a*tan(d + e*x))^3)/(3*e) + (b*(b + a*tan(d + e*x))^4)/(4*e)]
    @test_int [(a + b*tan(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2), x, 3, (-a)*(a^2 + b^2)*x - (b*(a^2 + b^2)*log(cos(d + e*x)))/e + (2*a*b^2*tan(d + e*x))/e + (a^2*(a + b*tan(d + e*x))^2)/(2*b*e)]
    @test_int [(a + b*tan(d + e*x))/(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2), x, 4, -((a*(a^2 - 3*b^2)*x)/(a^2 + b^2)^2) + (b*(3*a^2 - b^2)*log(b*cos(d + e*x) + a*sin(d + e*x)))/((a^2 + b^2)^2*e) - (a^2 - b^2)/((a^2 + b^2)*e*(b + a*tan(d + e*x)))]
    @test_int [(a + b*tan(d + e*x))/(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^2, x, 6, (a*(a^4 - 10*a^2*b^2 + 5*b^4)*x)/(a^2 + b^2)^4 - (b*(5*a^4 - 10*a^2*b^2 + b^4)*log(b*cos(d + e*x) + a*sin(d + e*x)))/((a^2 + b^2)^4*e) - (a^2 - b^2)/(3*(a^2 + b^2)*e*(b + a*tan(d + e*x))^3) - (b*(3*a^2 - b^2))/(2*(a^2 + b^2)^2*e*(b + a*tan(d + e*x))^2) + (a^4 - 6*a^2*b^2 + b^4)/((a^2 + b^2)^3*e*(b + a*tan(d + e*x)))]
    #= [(a + b*tan(d + e*x))/(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^3, x, 10, -((a*(a^6 - 21*a^4*b^2 + 35*a^2*b^4 - 7*b^6)*x)/(a^2 + b^2)^6) + (b*(7*a^6 - 35*a^4*b^2 + 21*a^2*b^4 - b^6)*log(cos(d + e*x)))/((a^2 + b^2)^6*e) + (b*(7*a^6 - 35*a^4*b^2 + 21*a^2*b^4 - b^6)*log(b + a*tan(d + e*x)))/((a^2 + b^2)^6*e) - (a^2 - b^2)/(5*(a^2 + b^2)*e*(b + a*tan(d + e*x))^5) - (b*(3*a^2 - b^2))/(4*(a^2 + b^2)^2*e*(b + a*tan(d + e*x))^4) + (a^4 - 6*a^2*b^2 + b^4)/(3*(a^2 + b^2)^3*e*(b + a*tan(d + e*x))^3) + (b*(5*a^4 - 10*a^2*b^2 + b^4))/(2*(a^2 + b^2)^4*e*(b + a*tan(d + e*x))^2) - (a^6 - 15*a^4*b^2 + 15*a^2*b^4 - b^6)/((a^2 + b^2)^5*e*(b + a*tan(d + e*x)))] =#


    #= [(a + b*tan(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2), x, 9, (b*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2))/(5*e) - ((a^2 + b^2)*(a^4 - 6*a^2*b^2 + b^4)*log(cos(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2))/(e*(b + a*tan(d + e*x))^5) + (b*(a^2 + b^2)*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2))/(3*e*(b + a*tan(d + e*x))^2) + ((a^2 + b^2)*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2))/(4*e*(b + a*tan(d + e*x))) + (4*a^6*b*(a^4 - b^4)*x*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2))/(a*b + a^2*tan(d + e*x))^5 - (a*(a^4 - b^4)*(a^2*b + a^3*tan(d + e*x))^2*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2))/(2*e*(a*b + a^2*tan(d + e*x))^5) - (b*(3*a^2 - b^2)*(a^2 + b^2)*(a^5*b + a^6*tan(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2))/(e*(a*b + a^2*tan(d + e*x))^5)] =#
    @test_int [(a + b*tan(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2), x, 6, (b*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2))/(3*e) + ((a^4 - b^4)*log(cos(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2))/(e*(b + a*tan(d + e*x))^3) + ((a^2 + b^2)*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2))/(2*e*(b + a*tan(d + e*x))) - (2*a^4*b*(a^2 + b^2)*x*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2))/(a*b + a^2*tan(d + e*x))^3 + (a^4*b*(a^2 + b^2)*tan(d + e*x)*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2))/(e*(a*b + a^2*tan(d + e*x))^3)]
    @test_int [(a + b*tan(d + e*x))*sqrt(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2), x, 3, -(((a^2 + b^2)*log(cos(d + e*x))*sqrt(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2))/(e*(b + a*tan(d + e*x)))) + (a^2*b*tan(d + e*x)*sqrt(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2))/(e*(a*b + a^2*tan(d + e*x)))]
    @test_int [(a + b*tan(d + e*x))/sqrt(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2), x, 3, ((a^2 - b^2)*log(b*cos(d + e*x) + a*sin(d + e*x))*(b + a*tan(d + e*x)))/((a^2 + b^2)*e*sqrt(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)) + (2*b*x*(a*b + a^2*tan(d + e*x)))/((a^2 + b^2)*sqrt(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2))]
    @test_int [(a + b*tan(d + e*x))/(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2), x, 5, -(((a^2 - b^2)*(b + a*tan(d + e*x)))/(2*(a^2 + b^2)*e*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2))) - ((a^4 - 6*a^2*b^2 + b^4)*log(b*cos(d + e*x) + a*sin(d + e*x))*(b + a*tan(d + e*x))^3)/((a^2 + b^2)^3*e*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2)) - (4*b*(a^2 - b^2)*x*(a*b + a^2*tan(d + e*x))^3)/(a^2*(a^2 + b^2)^3*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2)) - (b*(3*a^2 - b^2)*(a*b + a^2*tan(d + e*x))^3)/((a^2 + b^2)^2*e*(a^3*b + a^4*tan(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(3/2))]
    #= [(a + b*tan(d + e*x))/(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2), x, 9, -((a^2 - b^2)*(b + a*tan(d + e*x)))/(4*(a^2 + b^2)*e*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2)) - (b*(3*a^2 - b^2)*(b + a*tan(d + e*x))^2)/(3*(a^2 + b^2)^2*e*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2)) + ((a^4 - 6*a^2*b^2 + b^4)*(b + a*tan(d + e*x))^3)/(2*(a^2 + b^2)^3*e*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2)) + ((a^6 - 15*a^4*b^2 + 15*a^2*b^4 - b^6)*log(cos(d + e*x))*(b + a*tan(d + e*x))^5)/((a^2 + b^2)^5*e*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2)) + ((a^6 - 15*a^4*b^2 + 15*a^2*b^4 - b^6)*log(b + a*tan(d + e*x))*(b + a*tan(d + e*x))^5)/((a^2 + b^2)^5*e*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2)) + (2*b*(3*a^4 - 10*a^2*b^2 + 3*b^4)*x*(a*b + a^2*tan(d + e*x))^5)/(a^4*(a^2 + b^2)^5*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2)) + (b*(5*a^4 - 10*a^2*b^2 + b^4)*(a*b + a^2*tan(d + e*x))^5)/((a^2 + b^2)^4*e*(a^5*b + a^6*tan(d + e*x))*(b^2 + 2*a*b*tan(d + e*x) + a^2*tan(d + e*x)^2)^(5/2))] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*sec(d+e*x))^m*(a + b*sec(d+e*x) + c*sec(d+e*x)^2)^n=#


    #= [(a + b*sec(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^3, x, 11, a*b^6*x + (a^2*b*(487*a^4 + 1620*a^2*b^2 + 348*b^4)*atanh(sin(d + e*x)))/(240*e) + (b*(64*a^6 + 1065*a^4*b^2 + 1446*a^2*b^4 + 120*b^6)*atanh(sin(d + e*x)))/(120*e) + (a*(32*a^6 + 776*a^4*b^2 + 1473*a^2*b^4 + 234*b^6)*tan(d + e*x))/(60*e) + (a^2*b*(487*a^4 + 1620*a^2*b^2 + 348*b^4)*sec(d + e*x)*tan(d + e*x))/(240*e) + ((32*a^4 + 321*a^2*b^2 + 114*b^4)*(a*b + a^2*sec(d + e*x))^2*tan(d + e*x))/(120*a*e) + (b*(109*a^2 + 74*b^2)*(a*b + a^2*sec(d + e*x))^3*tan(d + e*x))/(120*a^2*e) + ((6*a^2 + 11*b^2)*(a*b + a^2*sec(d + e*x))^4*tan(d + e*x))/(30*a^3*e) + (b*(a*b + a^2*sec(d + e*x))^5*tan(d + e*x))/(6*a^4*e)] =#
    @test_int [(a + b*sec(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^2, x, 8, a*b^4*x + (b*(19*a^4 + 56*a^2*b^2 + 8*b^4)*atanh(sin(d + e*x)))/(8*e) + (a*(4*a^4 + 50*a^2*b^2 + 19*b^4)*tan(d + e*x))/(6*e) + (a^2*b*(41*a^2 + 26*b^2)*sec(d + e*x)*tan(d + e*x))/(24*e) + ((4*a^2 + 7*b^2)*(a*b + a^2*sec(d + e*x))^2*tan(d + e*x))/(12*a*e) + (b*(a*b + a^2*sec(d + e*x))^3*tan(d + e*x))/(4*a^2*e)]
    @test_int [(a + b*sec(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^1, x, 5, a*b^2*x + (b*(5*a^2 + 2*b^2)*atanh(sin(d + e*x)))/(2*e) + (a*(a^2 + 2*b^2)*tan(d + e*x))/e + (a^2*b*sec(d + e*x)*tan(d + e*x))/(2*e)]
    @test_int [(a + b*sec(d + e*x))/(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^1, x, 6, (a*x)/b^2 - (2*sqrt(a - b)*sqrt(a + b)*atan((sqrt(a - b)*tan((1/2)*(d + e*x)))/sqrt(a + b)))/(b^2*e) - (a^2*tan(d + e*x))/(b*e*(a*b + a^2*sec(d + e*x)))]
    @test_int [(a + b*sec(d + e*x))/(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^2, x, 8, (a*x)/b^4 - ((a^2 - 2*b^2)*(2*a^4 - a^2*b^2 + b^4)*atan((sqrt(a - b)*tan((1/2)*(d + e*x)))/sqrt(a + b)))/((a - b)^(5/2)*b^4*(a + b)^(5/2)*e) - (a*(3*a^2 - 5*b^2)*tan(d + e*x))/(6*b^2*(a^2 - b^2)*e*(b + a*sec(d + e*x))^2) - (a*(6*a^4 - 11*a^2*b^2 + 11*b^4)*tan(d + e*x))/(6*b^3*(a^2 - b^2)^2*e*(b + a*sec(d + e*x))) - (a^4*tan(d + e*x))/(3*b*e*(a*b + a^2*sec(d + e*x))^3)]
    #= [(a + b*sec(d + e*x))/(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^3, x, 8, (a*x)/b^6 - ((8*a^10 - 36*a^8*b^2 + 63*a^6*b^4 - 55*a^4*b^6 - 8*b^10)*atan((sqrt(a^2 - b^2)*tan((1/2)*(d + e*x)))/(a + b)))/(4*b^6*(a^2 - b^2)^(9/2)*e) - (a^6*tan(d + e*x))/(5*b*e*(a*b + a^2*sec(d + e*x))^5) - (a^5*(5*a^2 - 9*b^2)*tan(d + e*x))/(20*b^2*(a^2 - b^2)*e*(a*b + a^2*sec(d + e*x))^4) - (a^4*(20*a^4 - 39*a^2*b^2 + 47*b^4)*tan(d + e*x))/(60*b^3*(a^2 - b^2)^2*e*(a*b + a^2*sec(d + e*x))^3) - (a^3*(60*a^6 - 175*a^4*b^2 + 129*a^2*b^4 - 154*b^6)*tan(d + e*x))/(120*b^4*(a^2 - b^2)^3*e*(a*b + a^2*sec(d + e*x))^2) - (a^6*(120*a^8 - 460*a^6*b^2 + 649*a^4*b^4 - 163*a^2*b^6 + 274*b^8)*tan(d + e*x))/(120*b^5*(a^2 - b^2)^4*e*(a^5*b + a^6*sec(d + e*x)))] =#


    #= [(a + b*sec(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2), x, 10, (b^2*(187*a^4 + 523*a^2*b^2 + 60*b^4)*atanh(sin(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2))/(60*e*(b + a*sec(d + e*x))^5) + (a^6*b^5*x*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2))/(a*b + a^2*sec(d + e*x))^5 + (a^7*(45*a^4 + 451*a^2*b^2 + 154*b^4)*atanh(sin(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2))/(120*e*(a*b + a^2*sec(d + e*x))^5) + (a^6*b*(116*a^4 + 457*a^2*b^2 + 107*b^4)*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2)*tan(d + e*x))/(30*e*(a*b + a^2*sec(d + e*x))^5) + (a^7*(45*a^4 + 451*a^2*b^2 + 154*b^4)*sec(d + e*x)*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2)*tan(d + e*x))/(120*e*(a*b + a^2*sec(d + e*x))^5) + (a^2*b*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2)*tan(d + e*x))/(5*e*(a*b + a^2*sec(d + e*x))) + ((5*a^2 + 9*b^2)*(a^2*b + a^3*sec(d + e*x))^3*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2)*tan(d + e*x))/(20*e*(a*b + a^2*sec(d + e*x))^5) + (b*(71*a^2 + 47*b^2)*(a^3*b + a^4*sec(d + e*x))^2*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2)*tan(d + e*x))/(60*e*(a*b + a^2*sec(d + e*x))^5)] =#
    @test_int [(a + b*sec(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2), x, 7, ((a^4 + 9*a^2*b^2 + 2*b^4)*atanh(sin(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2))/(2*e*(b + a*sec(d + e*x))^3) + (a^4*b^3*x*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2))/(a*b + a^2*sec(d + e*x))^3 + (a^4*b*(11*a^2 + 8*b^2)*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2)*tan(d + e*x))/(3*e*(a*b + a^2*sec(d + e*x))^3) + (a^5*(3*a^2 + 5*b^2)*sec(d + e*x)*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2)*tan(d + e*x))/(6*e*(a*b + a^2*sec(d + e*x))^3) + (b*(a^2*b + a^3*sec(d + e*x))^2*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2)*tan(d + e*x))/(3*e*(a*b + a^2*sec(d + e*x))^3)]
    @test_int [(a + b*sec(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(1/2), x, 5, ((a^2 + b^2)*atanh(sin(d + e*x))*sqrt(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2))/(e*(b + a*sec(d + e*x))) + (a^2*b*x*sqrt(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2))/(a*b + a^2*sec(d + e*x)) + (a^2*b*sqrt(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)*tan(d + e*x))/(e*(a*b + a^2*sec(d + e*x)))]
    @test_int [(a + b*sec(d + e*x))/(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(1/2), x, 5, -((2*sqrt(a - b)*sqrt(a + b)*atan((sqrt(a - b)*tan((1/2)*(d + e*x)))/sqrt(a + b))*(b + a*sec(d + e*x)))/(b*e*sqrt(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2))) + (x*(a*b + a^2*sec(d + e*x)))/(b*sqrt(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2))]
    @test_int [(a + b*sec(d + e*x))/(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2), x, 7, -(((2*a^4 - 3*a^2*b^2 + 2*b^4)*atan((sqrt(a - b)*tan((1/2)*(d + e*x)))/sqrt(a + b))*(b + a*sec(d + e*x))^3)/((a - b)^(3/2)*b^3*(a + b)^(3/2)*e*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2))) + (x*(a*b + a^2*sec(d + e*x))^3)/(a^2*b^3*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2)) - ((a*b + a^2*sec(d + e*x))*tan(d + e*x))/(2*b*e*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2)) - ((2*a^2 - 3*b^2)*(a*b + a^2*sec(d + e*x))^3*tan(d + e*x))/(2*b^2*(a^2 - b^2)*e*(a^2*b + a^3*sec(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(3/2))]
    #= [(a + b*sec(d + e*x))/(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2), x, 7, -(((8*a^8 - 28*a^6*b^2 + 35*a^4*b^4 - 8*a^2*b^6 + 8*b^8)*atan((sqrt(a^2 - b^2)*tan((1/2)*(d + e*x)))/(a + b))*(b + a*sec(d + e*x))^5)/(4*b^5*(a^2 - b^2)^(7/2)*e*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2))) + (x*(a*b + a^2*sec(d + e*x))^5)/(a^4*b^5*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2)) - ((a*b + a^2*sec(d + e*x))*tan(d + e*x))/(4*b*e*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2)) - ((4*a^2 - 7*b^2)*(a*b + a^2*sec(d + e*x))^2*tan(d + e*x))/(12*a*b^2*(a^2 - b^2)*e*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2)) - ((12*a^4 - 23*a^2*b^2 + 26*b^4)*(a*b + a^2*sec(d + e*x))^5*tan(d + e*x))/(24*b^3*(a^2 - b^2)^2*e*(a^2*b + a^3*sec(d + e*x))^2*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2)) - ((24*a^6 - 68*a^4*b^2 + 49*a^2*b^4 - 50*b^6)*(a*b + a^2*sec(d + e*x))^5*tan(d + e*x))/(24*b^4*(a^2 - b^2)^3*e*(a^4*b + a^5*sec(d + e*x))*(b^2 + 2*a*b*sec(d + e*x) + a^2*sec(d + e*x)^2)^(5/2))] =#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A + B*Trig(x) + C*Trig(x))*(b*Trig(x) + c*Trig(x))^n=#


    @test_int [(cos(x) - im*sin(x))/(cos(x) + im*sin(x)), x, 1, (1/2)*im*(cos(x) - im*sin(x))^2]
    @test_int [(cos(x) + im*sin(x))/(cos(x) - im*sin(x)), x, 1, -(im/(2*(cos(x) - im*sin(x))^2))]
    @test_int [(cos(x) - sin(x))/(cos(x) + sin(x)), x, 1, log(cos(x) + sin(x))]


    @test_int [(B*cos(x) + C*sin(x))/(b*cos(x) + c*sin(x)), x, 1, ((b*B + c*C)*x)/(b^2 + c^2) + ((B*c - b*C)*log(b*cos(x) + c*sin(x)))/(b^2 + c^2)]
    @test_int [(B*cos(x) + C*sin(x))/(b*cos(x) + c*sin(x))^2, x, 3, -(((b*B + c*C)*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/(b^2 + c^2)^(3/2)) - (B*c - b*C)/((b^2 + c^2)*(b*cos(x) + c*sin(x)))]
    @test_int [(B*cos(x) + C*sin(x))/(b*cos(x) + c*sin(x))^3, x, 3, -((B*c - b*C)/(2*(b^2 + c^2)*(b*cos(x) + c*sin(x))^2)) + ((b*B + c*C)*sin(x))/(b*(b^2 + c^2)*(b*cos(x) + c*sin(x)))]


    @test_int [(A + B*cos(x) + C*sin(x))/(b*cos(x) + c*sin(x)), x, 3, ((b*B + c*C)*x)/(b^2 + c^2) - (A*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/sqrt(b^2 + c^2) + ((B*c - b*C)*log(b*cos(x) + c*sin(x)))/(b^2 + c^2)]
    @test_int [(A + B*cos(x) + C*sin(x))/(b*cos(x) + c*sin(x))^2, x, 3, -(((b*B + c*C)*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/(b^2 + c^2)^(3/2)) - (B*c - b*C + A*c*cos(x) - A*b*sin(x))/((b^2 + c^2)*(b*cos(x) + c*sin(x)))]
    @test_int [(A + B*cos(x) + C*sin(x))/(b*cos(x) + c*sin(x))^3, x, 4, -((A*atanh((c*cos(x) - b*sin(x))/sqrt(b^2 + c^2)))/(2*(b^2 + c^2)^(3/2))) - (B*c - b*C + A*c*cos(x) - A*b*sin(x))/(2*(b^2 + c^2)*(b*cos(x) + c*sin(x))^2) - (c*(b*B + c*C)*cos(x) - b*(b*B + c*C)*sin(x))/((b^2 + c^2)^2*(b*cos(x) + c*sin(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(A + B*cos(d+e*x) + C*sin(d+e*x))*(a + b*cos(d+e*x) + c*sin(d+e*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + B*cos(d+e*x))*(a + b*cos(d+e*x) + c*sin(d+e*x))^n=#


    @test_int [(A + B*cos(x))/(a + b*cos(x) + c*sin(x))^1, x, 4, (b*B*x)/(b^2 + c^2) - (2*(a*b*B - A*(b^2 + c^2))*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(sqrt(a^2 - b^2 - c^2)*(b^2 + c^2)) + (B*c*log(a + b*cos(x) + c*sin(x)))/(b^2 + c^2)]
    @test_int [(A + B*cos(x))/(a + b*cos(x) + c*sin(x))^2, x, 4, (2*(a*A - b*B)*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(a^2 - b^2 - c^2)^(3/2) + (B*c + A*c*cos(x) - (A*b - a*B)*sin(x))/((a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x)))]
    @test_int [(A + B*cos(x))/(a + b*cos(x) + c*sin(x))^3, x, 5, ((2*a^2*A - 3*a*b*B + A*(b^2 + c^2))*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(a^2 - b^2 - c^2)^(5/2) + (B*c + A*c*cos(x) - (A*b - a*B)*sin(x))/(2*(a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x))^2) + (a*B*c + (3*a*A - 2*b*B)*c*cos(x) - (3*a*A*b - a^2*B - 2*b^2*B)*sin(x))/(2*(a^2 - b^2 - c^2)^2*(a + b*cos(x) + c*sin(x)))]


    @test_int [(A + B*cos(x))/(a + b*cos(x) + im*b*sin(x)), x, 1, ((2*a*A - b*B)*x)/(2*a^2) + (im*B*cos(x))/(2*a) + (im*(2*a*A*b - a^2*B - b^2*B)*log(a + b*cos(x) + im*b*sin(x)))/(2*a^2*b) + (B*sin(x))/(2*a)]
    @test_int [(A + B*cos(x))/(a + b*cos(x) - im*b*sin(x)), x, 1, ((2*a*A - b*B)*x)/(2*a^2) - (im*B*cos(x))/(2*a) - (im*(2*a*A*b - a^2*B - b^2*B)*log(a + b*cos(x) - im*b*sin(x)))/(2*a^2*b) + (B*sin(x))/(2*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + C*sin(d+e*x))*(a + b*cos(d+e*x) + c*sin(d+e*x))^n=#


    @test_int [(A + C*sin(x))/(a + b*cos(x) + c*sin(x))^1, x, 4, (c*C*x)/(b^2 + c^2) + (2*(A*(b^2 + c^2) - a*c*C)*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(sqrt(a^2 - b^2 - c^2)*(b^2 + c^2)) - (b*C*log(a + b*cos(x) + c*sin(x)))/(b^2 + c^2)]
    @test_int [(A + C*sin(x))/(a + b*cos(x) + c*sin(x))^2, x, 4, (2*(a*A - c*C)*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(a^2 - b^2 - c^2)^(3/2) - (b*C - (A*c - a*C)*cos(x) + A*b*sin(x))/((a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x)))]
    @test_int [(A + C*sin(x))/(a + b*cos(x) + c*sin(x))^3, x, 5, ((2*a^2*A + A*(b^2 + c^2) - 3*a*c*C)*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(a^2 - b^2 - c^2)^(5/2) - (b*C - (A*c - a*C)*cos(x) + A*b*sin(x))/(2*(a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x))^2) - (a*b*C - (3*a*A*c - a^2*C - 2*c^2*C)*cos(x) + b*(3*a*A - 2*c*C)*sin(x))/(2*(a^2 - b^2 - c^2)^2*(a + b*cos(x) + c*sin(x)))]


    @test_int [(A + C*sin(x))/(a + b*cos(x) + im*b*sin(x)), x, 1, ((2*a*A - im*b*C)*x)/(2*a^2) - (C*cos(x))/(2*a) + ((2*im*a*A*b - a^2*C + b^2*C)*log(a + b*cos(x) + im*b*sin(x)))/(2*a^2*b) + (im*C*sin(x))/(2*a)]
    @test_int [(A + C*sin(x))/(a + b*cos(x) - im*b*sin(x)), x, 1, ((2*a*A + im*b*C)*x)/(2*a^2) - (C*cos(x))/(2*a) - ((2*im*a*A*b + a^2*C - b^2*C)*log(a + b*cos(x) - im*b*sin(x)))/(2*a^2*b) - (im*C*sin(x))/(2*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(B*cos(d+e*x) + C*sin(d+e*x))*(a + b*cos(d+e*x) + c*sin(d+e*x))^n=#


    @test_int [(B*cos(x) + C*sin(x))/(a + b*cos(x) + c*sin(x)), x, 4, ((b*B + c*C)*x)/(b^2 + c^2) - (2*a*(b*B + c*C)*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(sqrt(a^2 - b^2 - c^2)*(b^2 + c^2)) + ((B*c - b*C)*log(a + b*cos(x) + c*sin(x)))/(b^2 + c^2)]
    @test_int [(B*cos(x) + C*sin(x))/(a + b*cos(x) + c*sin(x))^2, x, 4, -((2*(b*B + c*C)*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(a^2 - b^2 - c^2)^(3/2)) + (B*c - b*C - a*C*cos(x) + a*B*sin(x))/((a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x)))]
    @test_int [(B*cos(x) + C*sin(x))/(a + b*cos(x) + c*sin(x))^3, x, 5, -((3*a*(b*B + c*C)*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(a^2 - b^2 - c^2)^(5/2)) + (B*c - b*C - a*C*cos(x) + a*B*sin(x))/(2*(a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x))^2) + (a*(B*c - b*C) - (2*b*B*c + (a^2 + 2*c^2)*C)*cos(x) + (a^2*B + 2*b*(b*B + c*C))*sin(x))/(2*(a^2 - b^2 - c^2)^2*(a + b*cos(x) + c*sin(x)))]


    @test_int [(B*cos(x) + C*sin(x))/(a + b*cos(x) + im*b*sin(x)), x, 1, -((b*(B + im*C)*x)/(2*a^2)) - ((im*b^2*(B + im*C) + a^2*(im*B + C))*log(a + b*cos(x) + im*b*sin(x)))/(2*a^2*b) + ((im*B - C)*(cos(x) - im*sin(x)))/(2*a)]
    @test_int [(B*cos(x) + C*sin(x))/(a + b*cos(x) - im*b*sin(x)), x, 1, -((b*(B - im*C)*x)/(2*a^2)) + ((im*a^2*(B + im*C) + b^2*(im*B + C))*log(a + b*cos(x) - im*b*sin(x)))/(2*a^2*b) - ((im*B + C)*(cos(x) + im*sin(x)))/(2*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + B*cos(d+e*x) + C*sin(d+e*x))*(a + b*cos(d+e*x) + c*sin(d+e*x))^n=#


    @test_int [(A + B*cos(x) + C*sin(x))/(a + b*cos(x) + c*sin(x)), x, 4, ((b*B + c*C)*x)/(b^2 + c^2) + (2*(A*(b^2 + c^2) - a*(b*B + c*C))*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(sqrt(a^2 - b^2 - c^2)*(b^2 + c^2)) + ((B*c - b*C)*log(a + b*cos(x) + c*sin(x)))/(b^2 + c^2)]
    @test_int [(A + B*cos(x) + C*sin(x))/(a + b*cos(x) + c*sin(x))^2, x, 4, (2*(a*A - b*B - c*C)*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(a^2 - b^2 - c^2)^(3/2) + (B*c - b*C + (A*c - a*C)*cos(x) - (A*b - a*B)*sin(x))/((a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x)))]
    @test_int [(A + B*cos(x) + C*sin(x))/(a + b*cos(x) + c*sin(x))^3, x, 5, ((2*a^2*A + A*(b^2 + c^2) - 3*a*(b*B + c*C))*atan((c + (a - b)*tan(x/2))/sqrt(a^2 - b^2 - c^2)))/(a^2 - b^2 - c^2)^(5/2) + (B*c - b*C + (A*c - a*C)*cos(x) - (A*b - a*B)*sin(x))/(2*(a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x))^2) + (a*(B*c - b*C) + (3*a*A*c - a^2*C - 2*c*(b*B + c*C))*cos(x) - (3*a*A*b - a^2*B - 2*b*(b*B + c*C))*sin(x))/(2*(a^2 - b^2 - c^2)^2*(a + b*cos(x) + c*sin(x)))]


    @test_int [(A + B*cos(x) + C*sin(x))/(a + b*cos(x) + im*b*sin(x)), x, 1, ((2*a*A - b*(B + im*C))*x)/(2*a^2) + (im*(2*a*A*b - a^2*(B - im*C) - b^2*(B + im*C))*log(a + b*cos(x) + im*b*sin(x)))/(2*a^2*b) + ((im*B - C)*(cos(x) - im*sin(x)))/(2*a)]
    @test_int [(A + B*cos(x) + C*sin(x))/(a + b*cos(x) - im*b*sin(x)), x, 1, ((2*a*A - b*B + im*b*C)*x)/(2*a^2) - (im*(2*a*A*b - b^2*(B - im*C) - a^2*(B + im*C))*log(a + b*cos(x) - im*b*sin(x)))/(2*a^2*b) - ((im*B + C)*(cos(x) + im*sin(x)))/(2*a)]


    @test_int [(b^2 + c^2 + a*b*cos(x) + a*c*sin(x))/(a + b*cos(x) + c*sin(x))^2, x, 1, -((c*cos(x) - b*sin(x))/(a + b*cos(x) + c*sin(x))), -((c*(a^2 - b^2 - c^2)*cos(x) - b*(a^2 - b^2 - c^2)*sin(x))/((a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + B*cos(d+e*x) + C*sin(d+e*x))*(a + b*cos(d+e*x) + c*sin(d+e*x))^(n/2)=#


    @test_int [(d + b*e*cos(x) + c*e*sin(x))*(a + b*cos(x) + c*sin(x))^(5/2), x, 8, (2*(161*a^2*d + 63*(b^2 + c^2)*d + 15*a^3*e + 145*a*(b^2 + c^2)*e)*EllipticE((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(x) + c*sin(x)))/(105*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2)))) - (2*(a^2 - b^2 - c^2)*(56*a*d + 15*a^2*e + 25*(b^2 + c^2)*e)*EllipticF((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2))))/(105*sqrt(a + b*cos(x) + c*sin(x))) - (2/7)*(a + b*cos(x) + c*sin(x))^(5/2)*(c*e*cos(x) - b*e*sin(x)) - (2/35)*(a + b*cos(x) + c*sin(x))^(3/2)*(c*(7*d + 5*a*e)*cos(x) - b*(7*d + 5*a*e)*sin(x)) - (2/105)*sqrt(a + b*cos(x) + c*sin(x))*(c*(56*a*d + 15*a^2*e + 25*(b^2 + c^2)*e)*cos(x) - b*(56*a*d + 15*a^2*e + 25*(b^2 + c^2)*e)*sin(x))]
    @test_int [(d + b*e*cos(x) + c*e*sin(x))*(a + b*cos(x) + c*sin(x))^(3/2), x, 7, (2*(20*a*d + 3*a^2*e + 9*(b^2 + c^2)*e)*EllipticE((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(x) + c*sin(x)))/(15*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2)))) - (2*(a^2 - b^2 - c^2)*(5*d + 3*a*e)*EllipticF((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2))))/(15*sqrt(a + b*cos(x) + c*sin(x))) - (2/5)*(a + b*cos(x) + c*sin(x))^(3/2)*(c*e*cos(x) - b*e*sin(x)) - (2/15)*sqrt(a + b*cos(x) + c*sin(x))*(c*(5*d + 3*a*e)*cos(x) - b*(5*d + 3*a*e)*sin(x))]
    @test_int [(d + b*e*cos(x) + c*e*sin(x))*(a + b*cos(x) + c*sin(x))^(1/2), x, 6, (2*(3*d + a*e)*EllipticE((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(x) + c*sin(x)))/(3*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2)))) - (2*(a^2 - b^2 - c^2)*e*EllipticF((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2))))/(3*sqrt(a + b*cos(x) + c*sin(x))) - (2/3)*sqrt(a + b*cos(x) + c*sin(x))*(c*e*cos(x) - b*e*sin(x))]
    @test_int [(d + b*e*cos(x) + c*e*sin(x))/(a + b*cos(x) + c*sin(x))^(1/2), x, 5, (2*e*EllipticE((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(x) + c*sin(x)))/sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2))) + (2*(d - a*e)*EllipticF((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2))))/sqrt(a + b*cos(x) + c*sin(x))]
    @test_int [(d + b*e*cos(x) + c*e*sin(x))/(a + b*cos(x) + c*sin(x))^(3/2), x, 6, (2*(d - a*e)*EllipticE((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(x) + c*sin(x)))/((a^2 - b^2 - c^2)*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2)))) + (2*e*EllipticF((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2))))/sqrt(a + b*cos(x) + c*sin(x)) + (2*(c*(d - a*e)*cos(x) - b*(d - a*e)*sin(x)))/((a^2 - b^2 - c^2)*sqrt(a + b*cos(x) + c*sin(x)))]
    @test_int [(d + b*e*cos(x) + c*e*sin(x))/(a + b*cos(x) + c*sin(x))^(5/2), x, 7, (2*(4*a*d - a^2*e - 3*(b^2 + c^2)*e)*EllipticE((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt(a + b*cos(x) + c*sin(x)))/(3*(a^2 - b^2 - c^2)^2*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2)))) - (2*(d - a*e)*EllipticF((1/2)*(x - atan(b, c)), (2*sqrt(b^2 + c^2))/(a + sqrt(b^2 + c^2)))*sqrt((a + b*cos(x) + c*sin(x))/(a + sqrt(b^2 + c^2))))/(3*(a^2 - b^2 - c^2)*sqrt(a + b*cos(x) + c*sin(x))) + (2*(c*(d - a*e)*cos(x) - b*(d - a*e)*sin(x)))/(3*(a^2 - b^2 - c^2)*(a + b*cos(x) + c*sin(x))^(3/2)) + (2*(c*(4*a*d - a^2*e - 3*(b^2 + c^2)*e)*cos(x) - b*(4*a*d - a^2*e - 3*(b^2 + c^2)*e)*sin(x)))/(3*(a^2 - b^2 - c^2)^2*sqrt(a + b*cos(x) + c*sin(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A + B*cos(d+e*x) + C*sin(d+e*x))*(a + c*sin(d+e*x))^n=#


    @test_int [(A + B*cos(d + e*x) + C*sin(d + e*x))/(a + c*sin(d + e*x)), x, 7, (C*x)/c + (2*(A*c - a*C)*atan((c + a*tan((1/2)*(d + e*x)))/sqrt(a^2 - c^2)))/(c*sqrt(a^2 - c^2)*e) + (B*log(a + c*sin(d + e*x)))/(c*e)]
    @test_int [(A + B*cos(d + e*x) + C*sin(d + e*x))/(a + c*sin(d + e*x))^2, x, 8, (2*(a*A - c*C)*atan((c + a*tan((1/2)*(d + e*x)))/sqrt(a^2 - c^2)))/((a^2 - c^2)^(3/2)*e) - B/(c*e*(a + c*sin(d + e*x))) + ((A*c - a*C)*cos(d + e*x))/((a^2 - c^2)*e*(a + c*sin(d + e*x)))]
    @test_int [(A + B*cos(d + e*x) + C*sin(d + e*x))/(a + c*sin(d + e*x))^3, x, 9, ((2*a^2*A + A*c^2 - 3*a*c*C)*atan((c + a*tan((1/2)*(d + e*x)))/sqrt(a^2 - c^2)))/((a^2 - c^2)^(5/2)*e) - B/(2*c*e*(a + c*sin(d + e*x))^2) + ((A*c - a*C)*cos(d + e*x))/(2*(a^2 - c^2)*e*(a + c*sin(d + e*x))^2) + ((3*a*A*c - a^2*C - 2*c^2*C)*cos(d + e*x))/(2*(a^2 - c^2)^2*e*(a + c*sin(d + e*x)))]
    @test_int [(A + B*cos(d + e*x) + C*sin(d + e*x))/(a + c*sin(d + e*x))^4, x, 10, ((2*a^3*A + 3*a*A*c^2 - 4*a^2*c*C - c^3*C)*atan((c + a*tan((1/2)*(d + e*x)))/sqrt(a^2 - c^2)))/((a^2 - c^2)^(7/2)*e) - B/(3*c*e*(a + c*sin(d + e*x))^3) + ((A*c - a*C)*cos(d + e*x))/(3*(a^2 - c^2)*e*(a + c*sin(d + e*x))^3) + ((5*a*A*c - 2*a^2*C - 3*c^2*C)*cos(d + e*x))/(6*(a^2 - c^2)^2*e*(a + c*sin(d + e*x))^2) + ((11*a^2*A*c + 4*A*c^3 - 2*a^3*C - 13*a*c^2*C)*cos(d + e*x))/(6*(a^2 - c^2)^3*e*(a + c*sin(d + e*x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(a + b*Trig(c+d*x)*Trig(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a + b*Trig(c+d*x)*Trig(c+d*x))^n=#


    @test_int [(a + b*cos(c + d*x)*sin(c + d*x))^m, x, 4, -((AppellF1(1/2, 1/2, -m, 3/2, (1/2)*(1 - sin(2*c + 2*d*x)), (b*(1 - sin(2*c + 2*d*x)))/(2*a + b))*cos(2*c + 2*d*x)*(a + (1/2)*b*sin(2*c + 2*d*x))^m)/(((2*a + b*sin(2*c + 2*d*x))/(2*a + b))^m*(sqrt(2)*d*sqrt(1 + sin(2*c + 2*d*x)))))]

    @test_int [(a + b*cos(c + d*x)*sin(c + d*x))^3, x, 3, (1/8)*a*(8*a^2 + 3*b^2)*x - (b*(16*a^2 + b^2)*cos(2*c + 2*d*x))/(24*d) - (5*a*b^2*cos(2*c + 2*d*x)*sin(2*c + 2*d*x))/(48*d) - (b*cos(2*c + 2*d*x)*(2*a + b*sin(2*c + 2*d*x))^2)/(48*d)]
    @test_int [(a + b*cos(c + d*x)*sin(c + d*x))^2, x, 2, (1/8)*(8*a^2 + b^2)*x - (a*b*cos(2*c + 2*d*x))/(2*d) - (b^2*cos(2*c + 2*d*x)*sin(2*c + 2*d*x))/(16*d)]
    @test_int [(a + b*cos(c + d*x)*sin(c + d*x))^1, x, 3, a*x + (b*sin(c + d*x)^2)/(2*d)]
    @test_int [1/(a + b*cos(c + d*x)*sin(c + d*x))^1, x, 4, (2*atan((b + 2*a*tan(c + d*x))/sqrt(4*a^2 - b^2)))/(sqrt(4*a^2 - b^2)*d)]
    @test_int [1/(a + b*cos(c + d*x)*sin(c + d*x))^2, x, 6, (8*a*atan((b + 2*a*tan(c + d*x))/sqrt(4*a^2 - b^2)))/((4*a^2 - b^2)^(3/2)*d) + (2*b*cos(2*c + 2*d*x))/((4*a^2 - b^2)*d*(2*a + b*sin(2*c + 2*d*x)))]
    @test_int [1/(a + b*cos(c + d*x)*sin(c + d*x))^3, x, 7, (4*(8*a^2 + b^2)*atan((b + 2*a*tan(c + d*x))/sqrt(4*a^2 - b^2)))/((4*a^2 - b^2)^(5/2)*d) + (2*b*cos(2*c + 2*d*x))/((4*a^2 - b^2)*d*(2*a + b*sin(2*c + 2*d*x))^2) + (12*a*b*cos(2*c + 2*d*x))/((4*a^2 - b^2)^2*d*(2*a + b*sin(2*c + 2*d*x)))]


    @test_int [(a + b*cos(c + d*x)*sin(c + d*x))^(5/2), x, 8, -((2*sqrt(2)*a*b*cos(2*c + 2*d*x)*sqrt(2*a + b*sin(2*c + 2*d*x)))/(15*d)) - (b*cos(2*c + 2*d*x)*(2*a + b*sin(2*c + 2*d*x))^(3/2))/(20*sqrt(2)*d) + ((92*a^2 + 9*b^2)*EllipticE(c - pi/4 + d*x, (2*b)/(2*a + b))*sqrt(2*a + b*sin(2*c + 2*d*x)))/(60*sqrt(2)*d*sqrt((2*a + b*sin(2*c + 2*d*x))/(2*a + b))) - (2*sqrt(2)*a*(4*a^2 - b^2)*EllipticF(c - pi/4 + d*x, (2*b)/(2*a + b))*sqrt((2*a + b*sin(2*c + 2*d*x))/(2*a + b)))/(15*d*sqrt(2*a + b*sin(2*c + 2*d*x)))]
    @test_int [(a + b*cos(c + d*x)*sin(c + d*x))^(3/2), x, 7, -((b*cos(2*c + 2*d*x)*sqrt(2*a + b*sin(2*c + 2*d*x)))/(6*sqrt(2)*d)) + (2*sqrt(2)*a*EllipticE(c - pi/4 + d*x, (2*b)/(2*a + b))*sqrt(2*a + b*sin(2*c + 2*d*x)))/(3*d*sqrt((2*a + b*sin(2*c + 2*d*x))/(2*a + b))) - ((4*a^2 - b^2)*EllipticF(c - pi/4 + d*x, (2*b)/(2*a + b))*sqrt((2*a + b*sin(2*c + 2*d*x))/(2*a + b)))/(6*sqrt(2)*d*sqrt(2*a + b*sin(2*c + 2*d*x)))]
    @test_int [(a + b*cos(c + d*x)*sin(c + d*x))^(1/2), x, 3, (EllipticE(c - pi/4 + d*x, (2*b)/(2*a + b))*sqrt(2*a + b*sin(2*c + 2*d*x)))/(sqrt(2)*d*sqrt((2*a + b*sin(2*c + 2*d*x))/(2*a + b)))]
    @test_int [1/(a + b*cos(c + d*x)*sin(c + d*x))^(1/2), x, 3, (sqrt(2)*EllipticF(c - pi/4 + d*x, (2*b)/(2*a + b))*sqrt((2*a + b*sin(2*c + 2*d*x))/(2*a + b)))/(d*sqrt(2*a + b*sin(2*c + 2*d*x)))]
    @test_int [1/(a + b*cos(c + d*x)*sin(c + d*x))^(3/2), x, 5, (2*sqrt(2)*b*cos(2*c + 2*d*x))/((4*a^2 - b^2)*d*sqrt(2*a + b*sin(2*c + 2*d*x))) + (2*sqrt(2)*EllipticE(c - pi/4 + d*x, (2*b)/(2*a + b))*sqrt(2*a + b*sin(2*c + 2*d*x)))/((4*a^2 - b^2)*d*sqrt((2*a + b*sin(2*c + 2*d*x))/(2*a + b)))]
    @test_int [1/(a + b*cos(c + d*x)*sin(c + d*x))^(5/2), x, 8, (4*sqrt(2)*b*cos(2*c + 2*d*x))/(3*(4*a^2 - b^2)*d*(2*a + b*sin(2*c + 2*d*x))^(3/2)) + (32*sqrt(2)*a*b*cos(2*c + 2*d*x))/(3*(4*a^2 - b^2)^2*d*sqrt(2*a + b*sin(2*c + 2*d*x))) + (32*sqrt(2)*a*EllipticE(c - pi/4 + d*x, (2*b)/(2*a + b))*sqrt(2*a + b*sin(2*c + 2*d*x)))/(3*(4*a^2 - b^2)^2*d*sqrt((2*a + b*sin(2*c + 2*d*x))/(2*a + b))) - (4*sqrt(2)*EllipticF(c - pi/4 + d*x, (2*b)/(2*a + b))*sqrt((2*a + b*sin(2*c + 2*d*x))/(2*a + b)))/(3*(4*a^2 - b^2)*d*sqrt(2*a + b*sin(2*c + 2*d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a + b*Trig(c+d*x)*Trig(c+d*x))^n=#


    @test_int [x^3/(a + b*sin(x)*cos(x)), x, 13, -((im*x^3*log(1 - (im*b*ℯ^(2*im*x))/(2*a - sqrt(4*a^2 - b^2))))/sqrt(4*a^2 - b^2)) + (im*x^3*log(1 - (im*b*ℯ^(2*im*x))/(2*a + sqrt(4*a^2 - b^2))))/sqrt(4*a^2 - b^2) - (3*x^2*PolyLog(2, (im*b*ℯ^(2*im*x))/(2*a - sqrt(4*a^2 - b^2))))/(2*sqrt(4*a^2 - b^2)) + (3*x^2*PolyLog(2, (im*b*ℯ^(2*im*x))/(2*a + sqrt(4*a^2 - b^2))))/(2*sqrt(4*a^2 - b^2)) - (3*im*x*PolyLog(3, (im*b*ℯ^(2*im*x))/(2*a - sqrt(4*a^2 - b^2))))/(2*sqrt(4*a^2 - b^2)) + (3*im*x*PolyLog(3, (im*b*ℯ^(2*im*x))/(2*a + sqrt(4*a^2 - b^2))))/(2*sqrt(4*a^2 - b^2)) + (3*PolyLog(4, (im*b*ℯ^(2*im*x))/(2*a - sqrt(4*a^2 - b^2))))/(4*sqrt(4*a^2 - b^2)) - (3*PolyLog(4, (im*b*ℯ^(2*im*x))/(2*a + sqrt(4*a^2 - b^2))))/(4*sqrt(4*a^2 - b^2))]
    @test_int [x^2/(a + b*sin(x)*cos(x)), x, 11, -((im*x^2*log(1 - (im*b*ℯ^(2*im*x))/(2*a - sqrt(4*a^2 - b^2))))/sqrt(4*a^2 - b^2)) + (im*x^2*log(1 - (im*b*ℯ^(2*im*x))/(2*a + sqrt(4*a^2 - b^2))))/sqrt(4*a^2 - b^2) - (x*PolyLog(2, (im*b*ℯ^(2*im*x))/(2*a - sqrt(4*a^2 - b^2))))/sqrt(4*a^2 - b^2) + (x*PolyLog(2, (im*b*ℯ^(2*im*x))/(2*a + sqrt(4*a^2 - b^2))))/sqrt(4*a^2 - b^2) - (im*PolyLog(3, (im*b*ℯ^(2*im*x))/(2*a - sqrt(4*a^2 - b^2))))/(2*sqrt(4*a^2 - b^2)) + (im*PolyLog(3, (im*b*ℯ^(2*im*x))/(2*a + sqrt(4*a^2 - b^2))))/(2*sqrt(4*a^2 - b^2))]
    @test_int [x^1/(a + b*sin(x)*cos(x)), x, 9, -((im*x*log(1 - (im*b*ℯ^(2*im*x))/(2*a - sqrt(4*a^2 - b^2))))/sqrt(4*a^2 - b^2)) + (im*x*log(1 - (im*b*ℯ^(2*im*x))/(2*a + sqrt(4*a^2 - b^2))))/sqrt(4*a^2 - b^2) - PolyLog(2, (im*b*ℯ^(2*im*x))/(2*a - sqrt(4*a^2 - b^2)))/(2*sqrt(4*a^2 - b^2)) + PolyLog(2, (im*b*ℯ^(2*im*x))/(2*a + sqrt(4*a^2 - b^2)))/(2*sqrt(4*a^2 - b^2))]
    @test_int [1/(x^1*(a + b*sin(x)*cos(x))), x, 1, Unintegrable(1/(x*(a + (1/2)*b*sin(2*x))), x)]


    @test_int [((b*x)^(2 - n)*sin(a*x)^n)/(a*c*x*cos(a*x) - c*sin(a*x))^2, x, 1, (b*(b*x)^(1 - n)*sin(a*x)^(-1 + n))/(a^2*(a*c^2*x*cos(a*x) - c^2*sin(a*x))) + (b^2*(1 - n)*Unintegrable(sin(a*x)^(-2 + n)/(b*x)^n, x))/(a^2*c^2)]
    @test_int [((b*x)^(2 - n)*cos(a*x)^n)/(c*cos(a*x) + a*c*x*sin(a*x))^2, x, 1, -((b*(b*x)^(1 - n)*cos(a*x)^(-1 + n))/(a^2*(c^2*cos(a*x) + a*c^2*x*sin(a*x)))) + (b^2*(1 - n)*Unintegrable(cos(a*x)^(-2 + n)/(b*x)^n, x))/(a^2*c^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(b*x)^m*Trig(a*x)^n*(c*Trig(a*x)+d*x*Trig(a*x))^p=#


    @test_int [sin(a*x)^6/(x^4*(a*x*cos(a*x) - sin(a*x))^2), x, 15, a^2/x + (a*cos(a*x)*sin(a*x))/x^2 + sin(a*x)^2/x^3 - (10*a^2*sin(a*x)^2)/x + (cos(a*x)*sin(a*x)^3)/(a*x^4) - (8*a*cos(a*x)*sin(a*x)^3)/(3*x^2) + sin(a*x)^4/(a^2*x^5) - (4*sin(a*x)^4)/(3*x^3) + (32*a^2*sin(a*x)^4)/(3*x) + sin(a*x)^5/(a^2*x^5*(a*x*cos(a*x) - sin(a*x))) - (2/3)*a^3*SinIntegral(2*a*x) + (16/3)*a^3*SinIntegral(4*a*x)]
    @test_int [sin(a*x)^5/(x^3*(a*x*cos(a*x) - sin(a*x))^2), x, 11, (a*cos(a*x))/x + sin(a*x)/x^2 + (cos(a*x)*sin(a*x)^2)/(a*x^3) - (9*a*cos(a*x)*sin(a*x)^2)/(2*x) + sin(a*x)^3/(a^2*x^4) - (3*sin(a*x)^3)/(2*x^2) + sin(a*x)^4/(a^2*x^4*(a*x*cos(a*x) - sin(a*x))) - (1/8)*a^2*SinIntegral(a*x) + (27/8)*a^2*SinIntegral(3*a*x)]
    @test_int [sin(a*x)^4/(x^2*(a*x*cos(a*x) - sin(a*x))^2), x, 6, 1/x + (cos(a*x)*sin(a*x))/(a*x^2) + sin(a*x)^2/(a^2*x^3) - (2*sin(a*x)^2)/x + sin(a*x)^3/(a^2*x^3*(a*x*cos(a*x) - sin(a*x))) + 2*a*SinIntegral(2*a*x)]
    @test_int [sin(a*x)^3/(x^1*(a*x*cos(a*x) - sin(a*x))^2), x, 4, cos(a*x)/(a*x) + sin(a*x)/(a^2*x^2) + sin(a*x)^2/(a^2*x^2*(a*x*cos(a*x) - sin(a*x))) + SinIntegral(a*x)]
    @test_int [sin(a*x)^2/(x^0*(a*x*cos(a*x) - sin(a*x))^2), x, 1, 1/(a^2*x) + sin(a*x)/(a^2*x*(a*x*cos(a*x) - sin(a*x)))]
    @test_int [x^1*sin(a*x)^1/(a*x*cos(a*x) - sin(a*x))^2, x, 1, 1/(a^2*(a*x*cos(a*x) - sin(a*x)))]
    @test_int [x^2*sin(a*x)^0/(a*x*cos(a*x) - sin(a*x))^2, x, 3, -(cot(a*x)/a^3) + (x*csc(a*x))/(a^2*(a*x*cos(a*x) - sin(a*x)))]
    @test_int [x^3*csc(a*x)^1/(a*x*cos(a*x) - sin(a*x))^2, x, 7, -((2*x*atanh(ℯ^(im*a*x)))/a^3) - csc(a*x)/a^4 - (x*cot(a*x)*csc(a*x))/a^3 + (im*PolyLog(2, -ℯ^(im*a*x)))/a^4 - (im*PolyLog(2, ℯ^(im*a*x)))/a^4 + (x^2*csc(a*x)^2)/(a^2*(a*x*cos(a*x) - sin(a*x)))]
    @test_int [x^4*csc(a*x)^2/(a*x*cos(a*x) - sin(a*x))^2, x, 9, -((2*im*x^2)/a^3) - cot(a*x)/a^5 - (2*x^2*cot(a*x))/a^3 - (x*csc(a*x)^2)/a^4 - (x^2*cot(a*x)*csc(a*x)^2)/a^3 + (4*x*log(1 - ℯ^(2*im*a*x)))/a^4 - (2*im*PolyLog(2, ℯ^(2*im*a*x)))/a^5 + (x^3*csc(a*x)^3)/(a^2*(a*x*cos(a*x) - sin(a*x)))]


    @test_int [cos(a*x)^6/(x^4*(cos(a*x) + a*x*sin(a*x))^2), x, 15, a^2/x + cos(a*x)^2/x^3 - (10*a^2*cos(a*x)^2)/x + cos(a*x)^4/(a^2*x^5) - (4*cos(a*x)^4)/(3*x^3) + (32*a^2*cos(a*x)^4)/(3*x) - (a*cos(a*x)*sin(a*x))/x^2 - (cos(a*x)^3*sin(a*x))/(a*x^4) + (8*a*cos(a*x)^3*sin(a*x))/(3*x^2) - cos(a*x)^5/(a^2*x^5*(cos(a*x) + a*x*sin(a*x))) + (2/3)*a^3*SinIntegral(2*a*x) + (16/3)*a^3*SinIntegral(4*a*x)]
    @test_int [cos(a*x)^5/(x^3*(cos(a*x) + a*x*sin(a*x))^2), x, 11, cos(a*x)/x^2 + cos(a*x)^3/(a^2*x^4) - (3*cos(a*x)^3)/(2*x^2) - (1/8)*a^2*CosIntegral(a*x) - (27/8)*a^2*CosIntegral(3*a*x) - (a*sin(a*x))/x - (cos(a*x)^2*sin(a*x))/(a*x^3) + (9*a*cos(a*x)^2*sin(a*x))/(2*x) - cos(a*x)^4/(a^2*x^4*(cos(a*x) + a*x*sin(a*x)))]
    @test_int [cos(a*x)^4/(x^2*(cos(a*x) + a*x*sin(a*x))^2), x, 6, 1/x + cos(a*x)^2/(a^2*x^3) - (2*cos(a*x)^2)/x - (cos(a*x)*sin(a*x))/(a*x^2) - cos(a*x)^3/(a^2*x^3*(cos(a*x) + a*x*sin(a*x))) - 2*a*SinIntegral(2*a*x)]
    @test_int [cos(a*x)^3/(x^1*(cos(a*x) + a*x*sin(a*x))^2), x, 4, cos(a*x)/(a^2*x^2) + CosIntegral(a*x) - sin(a*x)/(a*x) - cos(a*x)^2/(a^2*x^2*(cos(a*x) + a*x*sin(a*x)))]
    @test_int [cos(a*x)^2/(x^0*(cos(a*x) + a*x*sin(a*x))^2), x, 1, 1/(a^2*x) - cos(a*x)/(a^2*x*(cos(a*x) + a*x*sin(a*x)))]
    @test_int [x^1*cos(a*x)^1/(cos(a*x) + a*x*sin(a*x))^2, x, 1, -(1/(a^2*(cos(a*x) + a*x*sin(a*x))))]
    @test_int [x^2*cos(a*x)^0/(cos(a*x) + a*x*sin(a*x))^2, x, 3, -((x*sec(a*x))/(a^2*(cos(a*x) + a*x*sin(a*x)))) + tan(a*x)/a^3]
    @test_int [x^3*sec(a*x)^1/(cos(a*x) + a*x*sin(a*x))^2, x, 7, -((2*im*x*atan(ℯ^(im*a*x)))/a^3) + (im*PolyLog(2, (-im)*ℯ^(im*a*x)))/a^4 - (im*PolyLog(2, im*ℯ^(im*a*x)))/a^4 - sec(a*x)/a^4 - (x^2*sec(a*x)^2)/(a^2*(cos(a*x) + a*x*sin(a*x))) + (x*sec(a*x)*tan(a*x))/a^3]
    @test_int [x^4*sec(a*x)^2/(cos(a*x) + a*x*sin(a*x))^2, x, 9, -((2*im*x^2)/a^3) + (4*x*log(1 + ℯ^(2*im*a*x)))/a^4 - (2*im*PolyLog(2, -ℯ^(2*im*a*x)))/a^5 - (x*sec(a*x)^2)/a^4 - (x^3*sec(a*x)^3)/(a^2*(cos(a*x) + a*x*sin(a*x))) + tan(a*x)/a^5 + (2*x^2*tan(a*x))/a^3 + (x^2*sec(a*x)^2*tan(a*x))/a^3]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(c*tan(a+b*x)*tan(2*(a+b*x)))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(2*(a+b*x))^m*(c*tan(a+b*x)*tan(2*(a+b*x)))^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sec(2*(a + b*x))^4*sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 5, (-2*c*tan(2*a + 2*b*x))/(5*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (c*sec(2*a + 2*b*x)^3*tan(2*a + 2*b*x))/(7*b*sqrt(-c + c*sec(2*a + 2*b*x))) - (4*sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(35*b) - (6*(-c + c*sec(2*a + 2*b*x))^(3/2)*tan(2*a + 2*b*x))/(35*b*c)]
    @test_int [sec(2*(a + b*x))^3*sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 4, (7*c*tan(2*a + 2*b*x))/(15*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (2*sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(15*b) + ((-c + c*sec(2*a + 2*b*x))^(3/2)*tan(2*a + 2*b*x))/(5*b*c)]
    @test_int [sec(2*(a + b*x))^2*sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 3, -(c*tan(2*a + 2*b*x))/(3*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(3*b)]
    @test_int [sec(2*(a + b*x))^1*sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 2, (c*tan(2*a + 2*b*x))/(b*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [sec(2*(a + b*x))^0*sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 3, -((sqrt(c)*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/b)]
    @test_int [cos(2*(a + b*x))^1*sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 4, (sqrt(c)*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/(2*b) - (c*sin(2*a + 2*b*x))/(2*b*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [cos(2*(a + b*x))^2*sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 5, (-3*sqrt(c)*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/(8*b) + (3*c*sin(2*a + 2*b*x))/(8*b*sqrt(-c + c*sec(2*a + 2*b*x))) - (c*cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(4*b*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [cos(2*(a + b*x))^3*sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 6, (5*sqrt(c)*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/(16*b) - (5*c*sin(2*a + 2*b*x))/(16*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (5*c*cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(24*b*sqrt(-c + c*sec(2*a + 2*b*x))) - (c*cos(2*a + 2*b*x)^2*sin(2*a + 2*b*x))/(6*b*sqrt(-c + c*sec(2*a + 2*b*x)))]


    @test_int [sec(2*(a + b*x))^4*(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 7, (34*c^2*tan(2*a + 2*b*x))/(45*b*sqrt(-c + c*sec(2*a + 2*b*x))) - (17*c^2*sec(2*a + 2*b*x)^3*tan(2*a + 2*b*x))/(63*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (c^2*sec(2*a + 2*b*x)^4*tan(2*a + 2*b*x))/(9*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (68*c*sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(315*b) + (34*(-c + c*sec(2*a + 2*b*x))^(3/2)*tan(2*a + 2*b*x))/(105*b)]
    @test_int [sec(2*(a + b*x))^3*(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 5, (-76*c^2*tan(2*a + 2*b*x))/(105*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (19*c*sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(105*b) + (2*(-c + c*sec(2*a + 2*b*x))^(3/2)*tan(2*a + 2*b*x))/(35*b) + ((-c + c*sec(2*a + 2*b*x))^(5/2)*tan(2*a + 2*b*x))/(7*b*c)]
    @test_int [sec(2*(a + b*x))^2*(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 4, (4*c^2*tan(2*a + 2*b*x))/(5*b*sqrt(-c + c*sec(2*a + 2*b*x))) - (c*sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(5*b) + ((-c + c*sec(2*a + 2*b*x))^(3/2)*tan(2*a + 2*b*x))/(5*b)]
    @test_int [sec(2*(a + b*x))^1*(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 3, (-4*c^2*tan(2*a + 2*b*x))/(3*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (c*sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(3*b)]
    @test_int [sec(2*(a + b*x))^0*(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 5, (c^(3/2)*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/b + (c^2*tan(2*a + 2*b*x))/(b*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [cos(2*(a + b*x))^1*(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 6, (-3*c^(3/2)*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/(2*b) + (c^2*sin(2*a + 2*b*x))/(2*b*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [cos(2*(a + b*x))^2*(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 6, (7*c^(3/2)*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/(8*b) - (7*c^2*sin(2*a + 2*b*x))/(8*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (c^2*cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(4*b*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [cos(2*(a + b*x))^3*(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 7, (-11*c^(3/2)*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/(16*b) + (11*c^2*sin(2*a + 2*b*x))/(16*b*sqrt(-c + c*sec(2*a + 2*b*x))) - (11*c^2*cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(24*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (c^2*cos(2*a + 2*b*x)^2*sin(2*a + 2*b*x))/(6*b*sqrt(-c + c*sec(2*a + 2*b*x)))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sec(2*(a + b*x))^4/sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 6, -(atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x))))/(sqrt(2)*b*sqrt(c))) + (14*tan(2*a + 2*b*x))/(15*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (sec(2*a + 2*b*x)^2*tan(2*a + 2*b*x))/(5*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(15*b*c)]
    @test_int [sec(2*(a + b*x))^3/sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 5, -(atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x))))/(sqrt(2)*b*sqrt(c))) + (2*tan(2*a + 2*b*x))/(3*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(3*b*c)]
    @test_int [sec(2*(a + b*x))^2/sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 4, -(atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x))))/(sqrt(2)*b*sqrt(c))) + tan(2*a + 2*b*x)/(b*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [sec(2*(a + b*x))^1/sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 3, -(atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x))))/(sqrt(2)*b*sqrt(c)))]
    @test_int [sec(2*(a + b*x))^0/sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 6, atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x)))/(b*sqrt(c)) - atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x))))/(sqrt(2)*b*sqrt(c))]
    @test_int [cos(2*(a + b*x))^1/sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 7, atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x)))/(2*b*sqrt(c)) - atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x))))/(sqrt(2)*b*sqrt(c)) + sin(2*a + 2*b*x)/(2*b*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [cos(2*(a + b*x))^2/sqrt(c*tan(a + b*x)*tan(2*(a + b*x))), x, 8, (7*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/(8*b*sqrt(c)) - atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x))))/(sqrt(2)*b*sqrt(c)) + sin(2*a + 2*b*x)/(8*b*sqrt(-c + c*sec(2*a + 2*b*x))) + (cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(4*b*sqrt(-c + c*sec(2*a + 2*b*x)))]


    @test_int [sec(2*(a + b*x))^4/(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 6, (-11*atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x)))))/(4*sqrt(2)*b*c^(3/2)) - (sec(2*a + 2*b*x)^2*tan(2*a + 2*b*x))/(4*b*(-c + c*sec(2*a + 2*b*x))^(3/2)) + (13*tan(2*a + 2*b*x))/(6*b*c*sqrt(-c + c*sec(2*a + 2*b*x))) + (7*sqrt(-c + c*sec(2*a + 2*b*x))*tan(2*a + 2*b*x))/(12*b*c^2)]
    @test_int [sec(2*(a + b*x))^3/(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 5, (-7*atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x)))))/(4*sqrt(2)*b*c^(3/2)) - tan(2*a + 2*b*x)/(4*b*(-c + c*sec(2*a + 2*b*x))^(3/2)) + tan(2*a + 2*b*x)/(b*c*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [sec(2*(a + b*x))^2/(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 4, (-3*atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x)))))/(4*sqrt(2)*b*c^(3/2)) - tan(2*a + 2*b*x)/(4*b*(-c + c*sec(2*a + 2*b*x))^(3/2))]
    @test_int [sec(2*(a + b*x))^1/(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 4, atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x))))/(4*sqrt(2)*b*c^(3/2)) - tan(2*a + 2*b*x)/(4*b*(-c + c*sec(2*a + 2*b*x))^(3/2))]
    @test_int [sec(2*(a + b*x))^0/(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 7, -(atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x)))/(b*c^(3/2))) + (5*atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x)))))/(4*sqrt(2)*b*c^(3/2)) - tan(2*a + 2*b*x)/(4*b*(-c + c*sec(2*a + 2*b*x))^(3/2))]
    @test_int [cos(2*(a + b*x))^1/(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 8, (-3*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/(2*b*c^(3/2)) + (9*atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x)))))/(4*sqrt(2)*b*c^(3/2)) - sin(2*a + 2*b*x)/(4*b*(-c + c*sec(2*a + 2*b*x))^(3/2)) - (3*sin(2*a + 2*b*x))/(4*b*c*sqrt(-c + c*sec(2*a + 2*b*x)))]
    @test_int [cos(2*(a + b*x))^2/(c*tan(a + b*x)*tan(2*(a + b*x)))^(3/2), x, 9, (-19*atanh((sqrt(c)*tan(2*a + 2*b*x))/sqrt(-c + c*sec(2*a + 2*b*x))))/(8*b*c^(3/2)) + (13*atanh((sqrt(c)*tan(2*a + 2*b*x))/(sqrt(2)*sqrt(-c + c*sec(2*a + 2*b*x)))))/(4*sqrt(2)*b*c^(3/2)) - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(4*b*(-c + c*sec(2*a + 2*b*x))^(3/2)) - (7*sin(2*a + 2*b*x))/(8*b*c*sqrt(-c + c*sec(2*a + 2*b*x))) - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(2*b*c*sqrt(-c + c*sec(2*a + 2*b*x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*sin(2*x)^(p/2)=#


    @test_int [cot(x)*csc(x)/sqrt(sin(2*x)), x, 3, -((2*cos(x)*cot(x))/(3*sqrt(sin(2*x))))]


    @test_int [(csc(x)^2*sec(x))/(sqrt(sin(2*x))*(-2 + tan(x))), x, 6, cos(x)/(2*sqrt(sin(2*x))) + (cos(x)*cot(x))/(3*sqrt(sin(2*x))) - (5*atanh(sqrt(tan(x))/sqrt(2))*sin(x))/(2*sqrt(2)*sqrt(sin(2*x))*sqrt(tan(x)))]


    @test_int [(cos(x)^2*sin(x))/((sin(x)^2 - sin(2*x))*sin(2*x)^(5/2)), x, 6, (cos(x)^4*sin(x))/(3*sin(2*x)^(5/2)) + (cos(x)^3*sin(x)^2)/(2*sin(2*x)^(5/2)) - (5*atanh(sqrt(tan(x))/sqrt(2))*sin(x)^5)/(2*sqrt(2)*sin(2*x)^(5/2)*tan(x)^(5/2))]


    @test_int [(cos(x)^3*cos(2*x))/((sin(x)^2 - sin(2*x))*sin(2*x)^(5/2)), x, 6, cos(x)^5/(5*sin(2*x)^(5/2)) + (cos(x)^4*sin(x))/(6*sin(2*x)^(5/2)) - (3*cos(x)^3*sin(x)^2)/(4*sin(2*x)^(5/2)) + (3*atanh(sqrt(tan(x))/sqrt(2))*sin(x)^5)/(4*sqrt(2)*sin(2*x)^(5/2)*tan(x)^(5/2))]


    #= ::Section::Closed:: =#
    #=Products*of*functions*of*a*trig*function*and*its*derivative=#


    @test_int [(a*cos(c+d*x)+b*sec(c+d*x)*tan(c+d*x))*(a*sin(c + d*x) + b*sec(c + d*x))^n, x, 1, (b*sec(c + d*x) + a*sin(c + d*x))^(1 + n)/(d*(1 + n))]

    @test_int [(a*cos(c+d*x)+b*sec(c+d*x)*tan(c+d*x))*(a*sin(c + d*x) + b*sec(c + d*x))^3, x, 1, (b*sec(c + d*x) + a*sin(c + d*x))^4/(4*d)]
    @test_int [(a*cos(c+d*x)+b*sec(c+d*x)*tan(c+d*x))*(a*sin(c + d*x) + b*sec(c + d*x))^2, x, 1, (b*sec(c + d*x) + a*sin(c + d*x))^3/(3*d)]
    @test_int [(a*cos(c+d*x)+b*sec(c+d*x)*tan(c+d*x))*(a*sin(c + d*x) + b*sec(c + d*x))^1, x, 1, (b*sec(c + d*x) + a*sin(c + d*x))^2/(2*d)]
    @test_int [(a*cos(c+d*x)+b*sec(c+d*x)*tan(c+d*x))/(a*sin(c + d*x) + b*sec(c + d*x))^1, x, 1, log(b*sec(c + d*x) + a*sin(c + d*x))/d]
    @test_int [(a*cos(c+d*x)+b*sec(c+d*x)*tan(c+d*x))/(a*sin(c + d*x) + b*sec(c + d*x))^2, x, 1, -(1/(d*(b*sec(c + d*x) + a*sin(c + d*x))))]
    @test_int [(a*cos(c+d*x)+b*sec(c+d*x)*tan(c+d*x))/(a*sin(c + d*x) + b*sec(c + d*x))^3, x, 1, -(1/(2*d*(b*sec(c + d*x) + a*sin(c + d*x))^2))]


    @test_int [sin(a + b*x)*F(c, d, cos(a + b*x), r, s), x, 1, CannotIntegrate(F(c, d, cos(a + b*x), r, s)*sin(a + b*x), x)]
    @test_int [cos(a + b*x)*F(c, d, sin(a + b*x), r, s), x, 1, CannotIntegrate(cos(a + b*x)*F(c, d, sin(a + b*x), r, s), x)]
    @test_int [sec(a + b*x)^2*F(c, d, tan(a + b*x), r, s), x, 1, CannotIntegrate(F(c, d, tan(a + b*x), r, s)*sec(a + b*x)^2, x)]
    @test_int [csc(a + b*x)^2*F(c, d, cot(a + b*x), r, s), x, 1, CannotIntegrate(csc(a + b*x)^2*F(c, d, cot(a + b*x), r, s), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(cos(a+b*x))*sin(a+b*x)^n*when*n*odd=#


    @test_int [sin(x)/(a + b*cos(x)), x, 2, -(log(a + b*cos(x))/b)]
    @test_int [sin(x)*(a + b*cos(x))^n, x, 2, -((a + b*cos(x))^(1 + n)/(b*(1 + n)))]
    @test_int [sin(x)/sqrt(1 + cos(x)^2), x, 2, -asinh(cos(x))]
    @test_int [sin(x)*cos(cos(x)), x, 2, -sin(cos(x))]
    @test_int [sin(x)*cos(x)*cos(cos(x))*sin(cos(x)), x, 4, cos(x)/4 - (1/4)*cos(cos(x))*sin(cos(x)) - (1/2)*cos(x)*sin(cos(x))^2]
    @test_int [sin(x)*cos(cos(x))*sin(6*cos(x))^2, x, 6, (-(1/2))*sin(cos(x)) + (1/44)*sin(11*cos(x)) + (1/52)*sin(13*cos(x))]
    @test_int [sin(x)*cos(x)^3*(a + b*cos(x)^2)^3, x, 4, (a*(a + b*cos(x)^2)^4)/(8*b^2) - (a + b*cos(x)^2)^5/(10*b^2)]
    @test_int [sin(3*x)*sin(cos(3*x)), x, 2, cos(cos(3*x))/3]
    @test_int [sin(1 + 3*x)*cos(1 + 3*x)*ℯ^cos(1 + 3*x), x, 3, (1/3)*ℯ^cos(1 + 3*x) - (1/3)*ℯ^cos(1 + 3*x)*cos(1 + 3*x)]
    @test_int [sin(x)*cos(x)^2/sqrt(1 - cos(x)^6), x, 3, (-(1/3))*asin(cos(x)^3)]


    @test_int [sin(x)^5/sqrt(1 - 5*cos(x)), x, 3, (1152*sqrt(1 - 5*cos(x)))/3125 + (64*(1 - 5*cos(x))^(3/2))/3125 - (88*(1 - 5*cos(x))^(5/2))/15625 - (8*(1 - 5*cos(x))^(7/2))/21875 + (2*(1 - 5*cos(x))^(9/2))/28125]


    @test_int [ℯ^(n*cos(a+b*x))*sin(a+b*x), x, 2, -(ℯ^(n*cos(a + b*x))/(b*n))]
    @test_int [ℯ^(n*cos(a*c+b*c*x))*sin(c*(a+b*x)), x, 2, -(ℯ^(n*cos(c*(a + b*x)))/(b*c*n))]
    @test_int [ℯ^(n*cos(c*(a+b*x)))*sin(a*c+b*c*x), x, 2, -(ℯ^(n*cos(a*c + b*c*x))/(b*c*n))]


    @test_int [ℯ^(n*cos(a+b*x))*tan(a+b*x), x, 2, -(ExpIntegralEi(n*cos(a + b*x))/b)]
    @test_int [ℯ^(n*cos(a*c+b*c*x))*tan(c*(a+b*x)), x, 2, -(ExpIntegralEi(n*cos(c*(a + b*x)))/(b*c))]
    @test_int [ℯ^(n*cos(c*(a+b*x)))*tan(a*c+b*c*x), x, 2, -(ExpIntegralEi(n*cos(a*c + b*c*x))/(b*c))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(sin(a+b*x))*cos(a+b*x)^n*when*n*odd=#


    @test_int [cos(x)/(a + b*sin(x)), x, 2, log(a + b*sin(x))/b]
    @test_int [cos(x)*(a + b*sin(x))^n, x, 2, (a + b*sin(x))^(1 + n)/(b*(1 + n))]
    @test_int [cos(x)/sqrt(1 + sin(x)^2), x, 2, asinh(sin(x))]
    @test_int [cos(x)/sqrt(4 - sin(x)^2), x, 2, asin(sin(x)/2)]
    @test_int [cos(3*x)/sqrt(4 - sin(3*x)^2), x, 2, asin(sin(3*x)/2)/3]
    @test_int [cos(x)*sqrt(1 + csc(x)), x, 4, atanh(sqrt(1 + csc(x))) + sqrt(1 + csc(x))*sin(x)]
    @test_int [cos(x)*sqrt(4 - sin(x)^2), x, 3, 2*asin(sin(x)/2) + (sin(x)*sqrt(4 - sin(x)^2))/2]
    @test_int [cos(x)*sin(x)*sqrt(1 + sin(x)^2), x, 2, (1/3)*(1 + sin(x)^2)^(3/2)]
    @test_int [cos(x)/sqrt(2*sin(x) + sin(x)^2), x, 3, 2*atanh(sin(x)/sqrt(2*sin(x) + sin(x)^2))]
    @test_int [cos(x)*cos(sin(x)), x, 2, sin(sin(x))]
    @test_int [cos(x)*cos(sin(x))*cos(sin(sin(x))), x, 3, sin(sin(sin(x)))]
    @test_int [cos(x)*sec(sin(x)), x, 2, atanh(sin(sin(x)))]
    @test_int [cos(x)*sin(x)^3*(a + b*sin(x)^2)^3, x, 4, -((a*(a + b*sin(x)^2)^4)/(8*b^2)) + (a + b*sin(x)^2)^5/(10*b^2)]
    @test_int [cos(x)*sin(x)*ℯ^sin(x), x, 3, -ℯ^sin(x) + ℯ^sin(x)*sin(x)]
    @test_int [cos(x)^3/sqrt(sin(x)^3), x, 4, -((2*sin(x))/sqrt(sin(x)^3)) - (2/3)*sqrt(sin(x)^3)]


    @test_int [ℯ^sqrt(sin(x))*cos(x)/sqrt(sin(x)), x, 2, 2*ℯ^sqrt(sin(x))]
    @test_int [ℯ^(4 + sin(x))*cos(x), x, 2, ℯ^(4 + sin(x))]


    @test_int [ℯ^(cos(x)*sin(x))*cos(2*x), x, 2, ℯ^((1/2)*sin(2*x))]
    @test_int [ℯ^(cos(x/2)*sin(x/2))*cos(x), x, 2, 2*ℯ^(sin(x)/2)]


    @test_int [ℯ^(n*sin(a+b*x))*cos(a+b*x), x, 2, ℯ^(n*sin(a + b*x))/(b*n)]
    @test_int [ℯ^(n*sin(a*c+b*c*x))*cos(c*(a+b*x)), x, 2, ℯ^(n*sin(c*(a + b*x)))/(b*c*n)]
    @test_int [ℯ^(n*sin(c*(a+b*x)))*cos(a*c+b*c*x), x, 2, ℯ^(n*sin(a*c + b*c*x))/(b*c*n)]


    @test_int [ℯ^(n*sin(a+b*x))*cot(a+b*x), x, 2, ExpIntegralEi(n*sin(a + b*x))/b]
    @test_int [ℯ^(n*sin(a*c+b*c*x))*cot(c*(a+b*x)), x, 2, ExpIntegralEi(n*sin(c*(a + b*x)))/(b*c)]
    @test_int [ℯ^(n*sin(c*(a+b*x)))*cot(a*c+b*c*x), x, 2, ExpIntegralEi(n*sin(a*c + b*c*x))/(b*c)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(tan(a+b*x))*sec(a+b*x)^n*when*n*even=#


    @test_int [sec(x)^2/(a + b*tan(x)), x, 2, log(a + b*tan(x))/b]
    @test_int [sec(x)^2/(1 - tan(x)^2), x, 2, (1/2)*atanh(2*cos(x)*sin(x))]
    @test_int [sec(x)^2/(9 + tan(x)^2), x, 2, x/3 - (1/3)*atan((2*cos(x)*sin(x))/(1 + 2*cos(x)^2))]
    @test_int [sec(x)^2*(a + b*tan(x))^n, x, 2, (a + b*tan(x))^(1 + n)/(b*(1 + n))]
    @test_int [sec(x)^2*(1 + 1/(1 + tan(x)^2)), x, 3, x + tan(x)]
    @test_int [sec(x)^2*(2 + tan(x)^2)/(1 + tan(x)^2), x, 4, x + tan(x)]
    @test_int [sec(x)^2/(2 + 2*tan(x) + tan(x)^2), x, 3, x - atan((1 - 2*cos(x)^2 + cos(x)*sin(x))/(2 + cos(x)^2 + 2*cos(x)*sin(x)))]
    @test_int [sec(x)^2/(tan(x)^2 + tan(x)^3), x, 3, -cot(x) + log(1 + cot(x)), -cot(x) - log(tan(x)) + log(1 + tan(x))]
    @test_int [sec(x)^2/(-tan(x)^2 + tan(x)^3), x, 3, cot(x) + log(1 - cot(x)), cot(x) + log(1 - tan(x)) - log(tan(x))]
    @test_int [sec(x)^2/(3 - 4*tan(x)^3), x, 7, x/(3*2^(2/3)*3^(1/6)) - atan((6^(2/3) - 2*6^(2/3)*cos(x)^2 + 2*(3 - 2*6^(1/3))*cos(x)*sin(x))/(3*2^(2/3)*3^(1/6) + 4*6^(1/3) + (6 - 4*6^(1/3))*cos(x)^2 + 2*6^(2/3)*cos(x)*sin(x)))/(3*2^(2/3)*3^(1/6)) - log(3^(1/3) - 2^(2/3)*tan(x))/(3*6^(2/3)) + log(3^(2/3) + 2^(2/3)*3^(1/3)*tan(x) + 2*2^(1/3)*tan(x)^2)/(6*6^(2/3))]
    @test_int [sec(x)^2/(11 - 5*tan(x) + 5*tan(x)^2), x, 3, (2*x)/sqrt(195) - (2*atan((-5 + 10*cos(x)^2 + 12*cos(x)*sin(x))/(10 + sqrt(195) + 12*cos(x)^2 - 10*cos(x)*sin(x))))/sqrt(195)]
    @test_int [sec(x)^2*(a + b*tan(x))/(c + d*tan(x)), x, 3, -(((b*c - a*d)*log(c + d*tan(x)))/d^2) + (b*tan(x))/d]
    @test_int [sec(x)^2*(a + b*tan(x))^2/(c + d*tan(x)), x, 3, ((b*c - a*d)^2*log(c + d*tan(x)))/d^3 - (b*(b*c - a*d)*tan(x))/d^2 + (a + b*tan(x))^2/(2*d)]
    @test_int [sec(x)^2*(a + b*tan(x))^3/(c + d*tan(x)), x, 3, -(((b*c - a*d)^3*log(c + d*tan(x)))/d^4) + (b*(b*c - a*d)^2*tan(x))/d^3 - ((b*c - a*d)*(a + b*tan(x))^2)/(2*d^2) + (a + b*tan(x))^3/(3*d)]
    @test_int [sec(x)^2*tan(x)^2/(2 + tan(x)^3)^2, x, 2, -1/(3*(2 + tan(x)^3))]
    @test_int [sec(x)^2*tan(x)^6*(1 + tan(x)^2)^3, x, 4, tan(x)^7/7 + tan(x)^9/3 + (3*tan(x)^11)/11 + tan(x)^13/13]
    @test_int [sec(x)^2*(2 + tan(x)^2)/(1 + tan(x)^3), x, 5, (2*x)/sqrt(3) + (2*atan((1 - 2*cos(x)^2)/(2 + sqrt(3) - 2*cos(x)*sin(x))))/sqrt(3) + log(1 + tan(x))]
    @test_int [sec(x)^2*(1 + cos(x)^2), x, 2, x + tan(x)]
    @test_int [sec(x)^2/(1 + sec(x)^2 - 3*tan(x)), x, 4, -log(cos(x) - sin(x)) + log(2*cos(x) - sin(x))]
    @test_int [sec(x)^2/sqrt(4 - sec(x)^2), x, 2, asin(tan(x)/sqrt(3))]
    @test_int [sec(x)^2/sqrt(1 - 4*tan(x)^2), x, 2, asin(2*tan(x))/2]
    @test_int [sec(x)^2/sqrt(-4 + tan(x)^2), x, 3, atanh(tan(x)/sqrt(-4 + tan(x)^2))]
    @test_int [sec(x)^2*sqrt(1 - cot(x)^2), x, 3, asin(cot(x)) + sqrt(1 - cot(x)^2)*tan(x)]
    @test_int [sec(x)^2*sqrt(1 - tan(x)^2), x, 3, (1/2)*asin(tan(x)) + (1/2)*tan(x)*sqrt(1 - tan(x)^2)]
    @test_int [sec(x)^2*ℯ^tan(x), x, 2, ℯ^tan(x)]


    @test_int [sec(x)^4*(-1 + sec(x)^2)^2*tan(x), x, 4, tan(x)^6/6 + tan(x)^8/8]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(cot(a+b*x))*csc(a+b*x)^n*when*n*even=#


    @test_int [csc(x)^2/(a + b*cot(x)), x, 2, -(log(a + b*cot(x))/b)]
    @test_int [csc(x)^2*(a + b*cot(x))^n, x, 2, -((a + b*cot(x))^(1 + n)/(b*(1 + n)))]
    @test_int [csc(x)^2*(1 + sin(x)^2), x, 2, x - cot(x)]
    @test_int [csc(x)^2*(1 + 1/(1 + cot(x)^2)), x, 4, x - cot(x)]
    @test_int [csc(x)^2*(a + b*cot(x))/(c + d*cot(x)), x, 3, -((b*cot(x))/d) + ((b*c - a*d)*log(c + d*cot(x)))/d^2]
    @test_int [csc(x)^2*(a + b*cot(x))^2/(c + d*cot(x)), x, 3, (b*(b*c - a*d)*cot(x))/d^2 - (a + b*cot(x))^2/(2*d) - ((b*c - a*d)^2*log(c + d*cot(x)))/d^3]
    @test_int [csc(x)^2*(a + b*cot(x))^3/(c + d*cot(x)), x, 3, -((b*(b*c - a*d)^2*cot(x))/d^3) + ((b*c - a*d)*(a + b*cot(x))^2)/(2*d^2) - (a + b*cot(x))^3/(3*d) + ((b*c - a*d)^3*log(c + d*cot(x)))/d^4]
    @test_int [csc(x)^2/ℯ^cot(x), x, 2, ℯ^(-cot(x))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(sec(a+b*x))*sec(a+b*x)*tan(a+b*x)=#


    @test_int [sec(x)*tan(x)/(a + b*sec(x)), x, 4, log(a + b*sec(x))/b, -(log(cos(x))/b) + log(b + a*cos(x))/b]
    @test_int [sec(x)*tan(x)/(1 + sec(x)^2), x, 2, -atan(cos(x))]
    @test_int [sec(x)*tan(x)/(9 + 4*sec(x)^2), x, 2, (-(1/6))*atan((3*cos(x))/2)]
    @test_int [sec(x)*tan(x)/(sec(x) + sec(x)^2), x, 2, -log(1 + cos(x))]
    @test_int [sec(x)*tan(x)/sqrt(4 + sec(x)^2), x, 3, acsch(2*cos(x))]
    @test_int [sec(x)*tan(x)/sqrt(1 + cos(x)^2), x, 2, sqrt(1 + cos(x)^2)*sec(x)]
    @test_int [sec(x)*tan(x)*ℯ^sec(x), x, 2, ℯ^sec(x)]
    @test_int [sec(x)*tan(x)*2^sec(x), x, 2, 2^sec(x)/log(2)]

    @test_int [sec(2*x)*tan(2*x)/(1 + sec(2*x))^(3/2), x, 2, -(1/sqrt(1 + sec(2*x)))]
    @test_int [sec(3*x)*tan(3*x)*sqrt(1 + 5*cos(3*x)^2), x, 3, (-(1/3))*sqrt(5)*asinh(sqrt(5)*cos(3*x)) + (1/3)*sqrt(1 + 5*cos(3*x)^2)*sec(3*x)]
    @test_int [sec(3*x)*tan(3*x)/sqrt(1 + 5*cos(3*x)^2), x, 2, (sqrt(1 + 5*cos(3*x)^2)*sec(3*x))/3]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(csc(a+b*x))*csc(a+b*x)*cot(a+b*x)=#


    @test_int [(csc(x)*cot(x))/(a + b*csc(x)), x, 4, -(log(a + b*csc(x))/b), log(sin(x))/b - log(b + a*sin(x))/b]
    @test_int [5^csc(3*x)*cot(3*x)*csc(3*x), x, 2, -5^csc(3*x)/(3*log(5))]
    @test_int [(cot(x)*csc(x))/(1 + csc(x)^2), x, 2, atan(sin(x))]
    @test_int [(cot(6*x)*csc(6*x))/(5 - 11*csc(6*x)^2)^2, x, 3, -(atanh(sqrt(5/11)*sin(6*x))/(60*sqrt(55))) + sin(6*x)/(60*(11 - 5*sin(6*x)^2))]
    @test_int [(cot(x)*csc(x))/sqrt(1 + sin(x)^2), x, 2, -(csc(x)*sqrt(1 + sin(x)^2))]
    @test_int [(cot(5*x)*csc(5*x)^3)/sqrt(1 + sin(5*x)^2), x, 3, (2/15)*csc(5*x)*sqrt(1 + sin(5*x)^2) - (1/15)*csc(5*x)^3*sqrt(1 + sin(5*x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(sin((a+b*x)/2))*sin(a+b*x)=#


    @test_int [ℯ^(n*sin(a+b*x))*sin(2*a+2*b*x), x, 4, -((2*ℯ^(n*sin(a + b*x)))/(b*n^2)) + (2*ℯ^(n*sin(a + b*x))*sin(a + b*x))/(b*n)]
    @test_int [ℯ^(n*sin(a+b*x))*sin(2*(a+b*x)), x, 4, -((2*ℯ^(n*sin(a + b*x)))/(b*n^2)) + (2*ℯ^(n*sin(a + b*x))*sin(a + b*x))/(b*n)]
    @test_int [ℯ^(n*sin(a/2+b/2*x))*sin(a+b*x), x, 4, -((4*ℯ^(n*sin(a/2 + (b*x)/2)))/(b*n^2)) + (4*ℯ^(n*sin(a/2 + (b*x)/2))*sin(a/2 + (b*x)/2))/(b*n)]
    @test_int [ℯ^(n*sin((a+b*x)/2))*sin(a+b*x), x, 4, -((4*ℯ^(n*sin(a/2 + (b*x)/2)))/(b*n^2)) + (4*ℯ^(n*sin(a/2 + (b*x)/2))*sin(a/2 + (b*x)/2))/(b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(cos((a+b*x)/2))*sin(a+b*x)=#


    @test_int [ℯ^(n*cos(a+b*x))*sin(2*a+2*b*x), x, 4, (2*ℯ^(n*cos(a + b*x)))/(b*n^2) - (2*ℯ^(n*cos(a + b*x))*cos(a + b*x))/(b*n)]
    @test_int [ℯ^(n*cos(a+b*x))*sin(2*(a+b*x)), x, 4, (2*ℯ^(n*cos(a + b*x)))/(b*n^2) - (2*ℯ^(n*cos(a + b*x))*cos(a + b*x))/(b*n)]
    @test_int [ℯ^(n*cos(a/2+b/2*x))*sin(a+b*x), x, 4, (4*ℯ^(n*cos(a/2 + (b*x)/2)))/(b*n^2) - (4*ℯ^(n*cos(a/2 + (b*x)/2))*cos(a/2 + (b*x)/2))/(b*n)]
    @test_int [ℯ^(n*cos((a+b*x)/2))*sin(a+b*x), x, 4, (4*ℯ^(n*cos(a/2 + (b*x)/2)))/(b*n^2) - (4*ℯ^(n*cos(a/2 + (b*x)/2))*cos(a/2 + (b*x)/2))/(b*n)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*F(tan(a+b*x))*when*n*even=#


    @test_int [csc(x)*log(tan(x))*sec(x), x, 1, log(tan(x))^2/2]
    @test_int [csc(2*x)*log(tan(x)), x, 1, log(tan(x))^2/4]


    @test_int [ℯ^(cos(x)^2 + sin(x)^2), x, 3, ℯ*x]


    #= ::Section::Closed:: =#
    #=Problems*from*Calculus*textbooks=#


    #= ::Subsection::Closed:: =#
    #=Anton*Calculus, 4th*Edition=#


    @test_int [x*sec(x)^2, x, 2, log(cos(x)) + x*tan(x)]
    @test_int [x*cos(x^2)^4, x, 4, (3*x^2)/16 + (3/16)*cos(x^2)*sin(x^2) + (1/8)*cos(x^2)^3*sin(x^2)]

    @test_int [sqrt(cos(x))*sin(x), x, 2, (-2*cos(x)^(3/2))/3]
    @test_int [tan(ℯ^(-2*x))/ℯ^(2*x), x, 2, log(cos(ℯ^(-2*x)))/2]
    @test_int [(sec(x)*sin(2*x))/(1 + cos(x)), x, 3, -2*log(1 + cos(x))]
    @test_int [x*sec(3*x)^2, x, 2, (1/9)*log(cos(3*x)) + (1/3)*x*tan(3*x)]
    @test_int [cos(2*pi*x)/ℯ^(2*pi*x), x, 1, -(cos(2*pi*x)/(ℯ^(2*pi*x)*(4*pi))) + sin(2*pi*x)/(ℯ^(2*pi*x)*(4*pi))]
    @test_int [cos(x)^12*sin(x)^10 - cos(x)^10*sin(x)^12, x, -25, (cos(x)^11*sin(x)^11)/11]


    #= ::Subsection::Closed:: =#
    #=Ayres*Calculus, 1964*edition=#


    @test_int [x*cot(x^2), x, 2, log(sin(x^2))/2]
    @test_int [x*sec(x^2)^2, x, 3, tan(x^2)/2]
    @test_int [sin(8*x)/(9 + sin(4*x)^4), x, 4, atan(sin(4*x)^2/3)/12]
    @test_int [cos(2*x)/(8 + sin(2*x)^2), x, 2, atan(sin(2*x)/(2*sqrt(2)))/(4*sqrt(2))]
    @test_int [x*(cos(x^2)^3 - sin(x^2)^3), x, 8, cos(x^2)/2 - (1/6)*cos(x^2)^3 + sin(x^2)/2 - (1/6)*sin(x^2)^3]
    @test_int [cos(x)*sin(x)/(1 - cos(x)), x, 3, cos(x) + log(1 - cos(x))]


    #= ::Subsection::Closed:: =#
    #=Edwards*and*Penney*Calculus=#


    @test_int [x*cos(x^2), x, 2, sin(x^2)/2]
    @test_int [x^2*cos(4*x^3), x, 2, sin(4*x^3)/12]
    @test_int [x^3*cos(x^4), x, 2, sin(x^4)/4]
    @test_int [x*sin(x^2/2), x, 2, -cos(x^2/2)]
    @test_int [x*sec(x^2)*tan(x^2), x, 3, sec(x^2)/2]
    @test_int [tan(1/x)^2/x^2, x, 3, x^(-1) - tan(x^(-1))]
    @test_int [x*tan(1 + x^2), x, 2, -log(cos(1 + x^2))/2]
    @test_int [sin(pi*(1 + 2*x)), x, 1, cos(2*pi*x)/(2*pi)]

    @test_int [(cot(x) + csc(x)^2)/(1 - cos(x)^2), x, 3, -cot(x) - cot(x)^2/2 - cot(x)^3/3]


    #= ::Subsection::Closed:: =#
    #=Grossman*Calculus=#


    @test_int [x^2*cos(4*x^3)*cos(5*x^3), x, 6, sin(x^3)/6 + (1/54)*sin(9*x^3)]
    @test_int [x^14*sin(x^3), x, 6, -8*cos(x^3) + 4*x^6*cos(x^3) - (1/3)*x^12*cos(x^3) - 8*x^3*sin(x^3) + (4/3)*x^9*sin(x^3)]
    @test_int [(x^2*sin(2*x^3))/ℯ^(3*x^3), x, 2, ((-(2/39))*cos(2*x^3))/ℯ^(3*x^3) - ((1/13)*sin(2*x^3))/ℯ^(3*x^3)]


    #= ::Subsection::Closed:: =#
    #=Hughes, Hallet, Gleason, et*al*Calculus, 2nd*Edition=#


    @test_int [2*x*cos(x^2), x, 3, sin(x^2)]
    @test_int [3*x^2*cos(7 + x^3), x, 3, sin(7 + x^3)]
    @test_int [(1 + x^2)^(-1) + sin(x), x, 3, atan(x) - cos(x)]
    @test_int [x*sin(1 + x^2), x, 2, -cos(1 + x^2)/2]
    @test_int [x*cos(1 + x^2), x, 2, sin(1 + x^2)/2]
    @test_int [1 + x^2*cos(x^3), x, 3, x + sin(x^3)/3]
    @test_int [x^2*sin(1 + x^3), x, 2, -cos(1 + x^3)/3]
    @test_int [12*x^2*cos(x^3), x, 3, 4*sin(x^3)]
    @test_int [(1 + x)*sin(1 + x), x, 2, -((1 + x)*cos(1 + x)) + sin(1 + x)]
    @test_int [x^5*cos(x^3), x, 3, cos(x^3)/3 + (1/3)*x^3*sin(x^3)]
    @test_int [cos(x)/ℯ^(3*x), x, 1, ((-(3/10))*cos(x))/ℯ^(3*x) + ((1/10)*sin(x))/ℯ^(3*x)]
    @test_int [x^3*sin(x^2), x, 3, (-(1/2))*x^2*cos(x^2) + sin(x^2)/2]
    @test_int [x^3*cos(x^2), x, 3, cos(x^2)/2 + (1/2)*x^2*sin(x^2)]
    @test_int [cos(x)*cos(2*sin(x)), x, 2, (1/2)*sin(2*sin(x))]
    @test_int [(cos(x)*sin(x))/(1 + cos(x)^2), x, 2, (-(1/2))*log(1 + cos(x)^2)]
    @test_int [(1 + cos(x))*(x + sin(x))^3, x, 1, (x + sin(x))^4/4]


    #= ::Subsection::Closed:: =#
    #=Spivak*Calculus=#


    @test_int [(1 + cos(x))*csc(x)^2, x, 3, -cot(x) - csc(x)]
    @test_int [sin(x)*tan(x)^2, x, 3, cos(x) + sec(x)]
    @test_int [ℯ^sin(x)*sec(x)^2*(x*cos(x)^3 - sin(x)), x, If($VersionNumber<9, -3, -2), ℯ^sin(x)*(-1 + x*cos(x))*sec(x)]


    #= ::Subsection::Closed:: =#
    #=Stewart*Calculus=#


    @test_int [x*csc(x)^2, x, 2, -(x*cot(x)) + log(sin(x))]
    @test_int [cos(x)*sin(pi/6 + x), x, 3, x/4 - (1/4)*cos(pi/6 + 2*x)]
    @test_int [x*sin(x^2)^3, x, 3, (-(1/2))*cos(x^2) + (1/6)*cos(x^2)^3]
    @test_int [sin(x)^2*tan(x), x, 3, cos(x)^2/2 - log(cos(x))]
    @test_int [cos(x)^2*cot(x)^3, x, 4, (-(1/2))*csc(x)^2 - 2*log(sin(x)) + sin(x)^2/2]
    @test_int [sec(x)*(1 - sin(x)), x, 2, log(1 + sin(x))]
    @test_int [(1 + cos(x))*csc(x), x, 2, log(1 - cos(x))]
    @test_int [cos(x)^2*(1 - tan(x)^2), x, 2, cos(x)*sin(x)]
    @test_int [csc(2*x)*(cos(x) + sin(x)), x, 6, (-(1/2))*atanh(cos(x)) + (1/2)*atanh(sin(x))]
    @test_int [(cos(x)*(-3 + 2*sin(x)))/(2 - 3*sin(x) + sin(x)^2), x, 2, log(2 - 3*sin(x) + sin(x)^2)]
    @test_int [(cos(x)^2*sin(x))/(5 + cos(x)^2), x, 3, sqrt(5)*atan(cos(x)/sqrt(5)) - cos(x)]
    @test_int [cos(x)/(sin(x) + sin(x)^2), x, 2, log(sin(x)) - log(1 + sin(x))]
    @test_int [cos(x)/(sin(x) + sin(x)^sqrt(2)), x, 5, log(sin(x)) - (1 + sqrt(2))*log(1 + sin(x)^(-1 + sqrt(2)))]
    @test_int [1/(2*sin(x) + sin(2*x)), x, 4, (1/4)*log(tan(x/2)) + (1/8)*tan(x/2)^2]
    @test_int [(-3 + 4*x + x^2)*sin(2*x), x, 8, (7/4)*cos(2*x) - 2*x*cos(2*x) - (1/2)*x^2*cos(2*x) + sin(2*x) + (1/2)*x*sin(2*x)]
    @test_int [cos(4*x)/ℯ^(3*x), x, 1, ((-(3/25))*cos(4*x))/ℯ^(3*x) + ((4/25)*sin(4*x))/ℯ^(3*x)]
    @test_int [(cos(x)*sin(x))/sqrt(1 + sin(x)), x, 3, -2*sqrt(1 + sin(x)) + (2/3)*(1 + sin(x))^(3/2)]
    @test_int [x + 60*cos(x)^5*sin(x)^4, x, 4, x^2/2 + 12*sin(x)^5 - (120*sin(x)^7)/7 + (20*sin(x)^9)/3]


    #= ::Subsection::Closed:: =#
    #=Thomas*Calculus, 8th*Edition=#


    @test_int [cos(x)*(sec(x) + tan(x)), x, 3, x - cos(x)]
    @test_int [cos(x)*(sec(x)^3 + tan(x)), x, 5, -cos(x) + tan(x)]
    @test_int [(-(cot(x)*csc(x)) + csc(x)^2)/2, x, 6, -(cot(x)/2) + csc(x)/2]
    @test_int [-csc(x)^2 + sin(2*x), x, 4, -cos(2*x)/2 + cot(x)]
    @test_int [2*cot(2*x) - 3*sin(3*x), x, 3, cos(3*x) + log(sin(2*x))]
    @test_int [x*sin(2*x^2), x, 2, -cos(2*x^2)/4]
    @test_int [-(cos(1 - x)*sin(1 - x)*sqrt(1 + sin(1 - x)^2)), x, 2, (1/3)*(1 + sin(1 - x)^2)^(3/2)]
    @test_int [(cos(1/x)*sin(1/x))/x^2, x, 1, (-(1/2))*sin(1/x)^2]
    @test_int [cos((1 + 3*x)/2)*sin((1 + 3*x)/2)^3, x, 2, (1/6)*sin(1/2 + (3*x)/2)^4]
    @test_int [4*x*tan(x^2), x, 3, -2*log(cos(x^2))]
    @test_int [x*sec(5 - x^2), x, 2, -atanh(sin(5 - x^2))/2]
    @test_int [csc(x^(-1))/x^2, x, 2, atanh(cos(1/x))]
    @test_int [(csc(x) - sec(x))*(cos(x) + sin(x)), x, 4, log(cos(x)) + log(sin(x)), 2*log(cos(x)) + log(tan(x))]
    @test_int [-cos(3*x)*sin(2*x) + cos(2*x)*sin(3*x), x, 3, -cos(x)]
    @test_int [4*x*sec(2*x)^2, x, 3, log(cos(2*x)) + 2*x*tan(2*x)]
    @test_int [4*sin(x)^2*tan(x)^2, x, 5, -6*x + 6*tan(x) - 2*sin(x)^2*tan(x)]
    @test_int [cos(x)^4*cot(x)^2, x, 5, -((15*x)/8) - (15*cot(x))/8 + (5/8)*cos(x)^2*cot(x) + (1/4)*cos(x)^4*cot(x)]
    @test_int [16*cos(x)^2*sin(x)^2, x, 4, 2*x + 2*cos(x)*sin(x) - 4*cos(x)^3*sin(x)]
    @test_int [8*cos(x)^2*sin(x)^4, x, 5, x/2 + (1/2)*cos(x)*sin(x) - cos(x)^3*sin(x) - (4/3)*cos(x)^3*sin(x)^3]
    @test_int [35*cos(x)^3*sin(x)^4, x, 4, 7*sin(x)^5 - 5*sin(x)^7]
    @test_int [4*cos(x)^4*sin(x)^4, x, 6, (3*x)/32 + (3/32)*cos(x)*sin(x) + (1/16)*cos(x)^3*sin(x) - (1/4)*cos(x)^5*sin(x) - (1/2)*cos(x)^5*sin(x)^3]
    @test_int [cos(x)/(-sin(x) + sin(x)^3), x, 5, log(cos(x)) - log(sin(x))]


    #= ::Section::Closed:: =#
    #=Problems*from*integration*competitions=#


    #= ::Subsection::Closed:: =#
    #=MIT*Integration*Competition=#


    @test_int [-1 + 2*cos(x)^2 + cos(x)*sin(x), x, 5, cos(x)*sin(x) + sin(x)^2/2]


    #= ::Subsection::Closed:: =#
    #=North*Texas*University*Integration*Competition=#


    @test_int [cos(x)^2 + sin(x)^2, x, 5, x]
    @test_int [-cos(x)^2 + sin(x)^2, x, 5, -(cos(x)*sin(x))]
    @test_int [2^sin(x)*cos(x), x, 2, 2^sin(x)/log(2)]


    #= ::Subsection::Closed:: =#
    #=University*of*Wisconsin*Integration*Competition=#


    @test_int [tan(x)^3 + tan(x)^5, x, 6, tan(x)^4/4]
    @test_int [x*sec(x)*(2 + x*tan(x)), x, 13, x^2*sec(x)]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*trig*functions=#


    @test_int [(cot(sqrt(x))*csc(sqrt(x)))/sqrt(x), x, 3, -2*csc(sqrt(x))]
    @test_int [(cos(sqrt(x))*sin(sqrt(x)))/sqrt(x), x, 1, sin(sqrt(x))^2]
    @test_int [(sec(sqrt(x))*tan(sqrt(x)))/sqrt(x), x, 3, 2*sec(sqrt(x))]


    @test_int [sin(x)^2/(a + b*sin(2*x)), x, 9, atan((b + a*tan(x))/sqrt(a^2 - b^2))/(2*sqrt(a^2 - b^2)) - log(a + b*sin(2*x))/(4*b), atan((b + a*tan(x))/sqrt(a^2 - b^2))/(2*sqrt(a^2 - b^2)) - log(cos(x))/(2*b) - log(a + 2*b*tan(x) + a*tan(x)^2)/(4*b)]
    @test_int [cos(x)^2/(a + b*sin(2*x)), x, 8, atan((b + a*tan(x))/sqrt(a^2 - b^2))/(2*sqrt(a^2 - b^2)) + log(a + b*sin(2*x))/(4*b), atan((b + a*tan(x))/sqrt(a^2 - b^2))/(2*sqrt(a^2 - b^2)) + log(cos(x))/(2*b) + log(a + 2*b*tan(x) + a*tan(x)^2)/(4*b)]

    @test_int [sin(x)^2/(a + b*cos(2*x)), x, 4, -(x/(2*b)) + (sqrt(a + b)*atan((sqrt(a - b)*tan(x))/sqrt(a + b)))/(2*sqrt(a - b)*b)]
    @test_int [cos(x)^2/(a + b*cos(2*x)), x, 4, x/(2*b) - (sqrt(a - b)*atan((sqrt(a - b)*tan(x))/sqrt(a + b)))/(2*b*sqrt(a + b))]


    @test_int [tan(c + d*x)/sqrt(a*sin(c + d*x)^2), x, 3, atanh(sqrt(a*sin(c + d*x)^2)/sqrt(a))/(sqrt(a)*d)]
    @test_int [cot(c + d*x)/sqrt(a*cos(c + d*x)^2), x, 3, -(atanh(sqrt(a*cos(c + d*x)^2)/sqrt(a))/(sqrt(a)*d))]


    @test_int [(x*cos(x^2))/sqrt(sin(x^2)), x, 1, sqrt(sin(x^2))]


    @test_int [cos(x)/sqrt(1 - cos(2*x)), x, 4, (log(sin(x))*sin(x))/(sqrt(2)*sqrt(sin(x)^2))]


    @test_int [cos(log(x))^2*sin(log(x))^2/x, x, 4, log(x)/8 + (1/8)*cos(log(x))*sin(log(x)) - (1/4)*cos(log(x))^3*sin(log(x))]


    @test_int [sin(x)^3/(cos(x)^3 + sin(x)^3), x, 7, x/2 - (1/6)*log(cos(x) + sin(x)) + (1/3)*log(2 - sin(2*x)), x/2 + (1/2)*log(cos(x)) - (1/6)*log(1 + tan(x)) + (1/3)*log(1 - tan(x) + tan(x)^2)]
    @test_int [cos(x)^3/(cos(x)^3 + sin(x)^3), x, 7, x/2 + (1/6)*log(cos(x) + sin(x)) - (1/3)*log(2 - sin(2*x)), x/2 - (1/2)*log(cos(x)) + (1/6)*log(1 + tan(x)) - (1/3)*log(1 - tan(x) + tan(x)^2)]


    @test_int [sec(x)/(-5 + cos(x)^2 + 4*sin(x)), x, 4, (-(4/9))*log(2 - sin(x)) + (1/2)*log(1 - sin(x)) - (1/18)*log(1 + sin(x)) + 1/(3*(2 - sin(x)))]


    #= Nonidempotent*expansion*results*in*infinite*recursion: =# 
    #= [(x*cos(x) - sin(x))/(x - sin(x))^2, x, -7, x/(x - sin(x))] =#
    #= [x/(x - cos(x))^2, x, 1, Unintegrable(x/(x - cos(x))^2, x)] =#
    #= [cos(x)/(x - cos(x))^2, x, 1, Unintegrable(cos(x)/(x - cos(x))^2, x)] =#
    #= [(cos(x) + x*sin(x))/(x - cos(x))^2, x, 0, -x/(x - cos(x))] =#


    @test_int [1/(cos(x)^(3/2)*sqrt(3*cos(x) + sin(x))), x, -5, (2*sqrt(3*cos(x) + sin(x)))/sqrt(cos(x))]
    @test_int [(csc(x)*sqrt(cos(x) + sin(x)))/cos(x)^(3/2), x, -1, -log(sin(x)) + 2*log(-sqrt(cos(x)) + sqrt(cos(x) + sin(x))) + (2*sqrt(cos(x) + sin(x)))/sqrt(cos(x))]
    @test_int [(cos(x) + sin(x))/sqrt(1 + sin(2*x)), x, -17, (x*sqrt(1 + sin(2*x)))/(cos(x) + sin(x))]
    @test_int [sec(x)*sqrt(sec(x) + tan(x)), x, 4, 2*sqrt(sec(x)*(1 + sin(x)))]

    @test_int [sec(x)*sqrt(4 + 3*sec(x))*tan(x), x, 2, (2*(4 + 3*sec(x))^(3/2))/9]
    @test_int [sec(x)*sqrt(1 + sec(x))*tan(x)^3, x, 6, (-(4/5))*(1 + sec(x))^(5/2) + (2/7)*(1 + sec(x))^(7/2)]
    @test_int [csc(x)*sqrt(1 + csc(x))*cot(x)^3, x, 6, (4/5)*(1 + csc(x))^(5/2) - (2/7)*(1 + csc(x))^(7/2)]

    @test_int [sqrt(csc(x))*(x*cos(x) - 4*sec(x)*tan(x)), x, 8, (2*x)/sqrt(csc(x)) - (4*sec(x))/csc(x)^(3/2)]


    @test_int [cot(x)*sqrt(-1 + csc(x)^2)*(1 - sin(x)^2)^3, x, 10, (-(35/16))*sqrt(cot(x)^2) + (35/48)*cos(x)^2*sqrt(cot(x)^2) + (7/24)*cos(x)^4*sqrt(cot(x)^2) + (1/6)*cos(x)^6*sqrt(cot(x)^2) - (35/16)*x*sqrt(cot(x)^2)*tan(x), (35/16)*atan(sqrt(-1 + csc(x)^2)) - (35/16)*sqrt(-1 + csc(x)^2) + (35/48)*(-1 + csc(x)^2)^(3/2)*sin(x)^2 + (7/24)*(-1 + csc(x)^2)^(5/2)*sin(x)^4 + (1/6)*(-1 + csc(x)^2)^(7/2)*sin(x)^6]
    @test_int [cos(x)*sqrt(-1 + csc(x)^2)*(1 - sin(x)^2)^3, x, 7, sqrt(cot(x)^2)*sin(x) + (1/3)*cos(x)^2*sqrt(cot(x)^2)*sin(x) + (1/5)*cos(x)^4*sqrt(cot(x)^2)*sin(x) + (1/7)*cos(x)^6*sqrt(cot(x)^2)*sin(x) - atanh(cos(x))*sqrt(cot(x)^2)*tan(x)]


    @test_int [(x^1*csc(x)*sec(x))/sqrt(a*sec(x)^2), x, 6, -((2*x*atanh(ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2)) + (im*PolyLog(2, -ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2) - (im*PolyLog(2, ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2)]
    @test_int [(x^2*csc(x)*sec(x))/sqrt(a*sec(x)^2), x, 8, -((2*x^2*atanh(ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2)) + (2*im*x*PolyLog(2, -ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2) - (2*im*x*PolyLog(2, ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2) - (2*PolyLog(3, -ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2) + (2*PolyLog(3, ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2)]
    @test_int [(x^3*csc(x)*sec(x))/sqrt(a*sec(x)^2), x, 10, -((2*x^3*atanh(ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2)) + (3*im*x^2*PolyLog(2, -ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2) - (3*im*x^2*PolyLog(2, ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2) - (6*x*PolyLog(3, -ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2) + (6*x*PolyLog(3, ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2) - (6*im*PolyLog(4, -ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2) + (6*im*PolyLog(4, ℯ^(im*x))*sec(x))/sqrt(a*sec(x)^2)]


    @test_int [(x^1*csc(x)*sec(x))/sqrt(a*sec(x)^4), x, 5, -((im*x^2*sec(x)^2)/(2*sqrt(a*sec(x)^4))) + (x*log(1 - ℯ^(2*im*x))*sec(x)^2)/sqrt(a*sec(x)^4) - (im*PolyLog(2, ℯ^(2*im*x))*sec(x)^2)/(2*sqrt(a*sec(x)^4))]
    @test_int [(x^2*csc(x)*sec(x))/sqrt(a*sec(x)^4), x, 6, -((im*x^3*sec(x)^2)/(3*sqrt(a*sec(x)^4))) + (x^2*log(1 - ℯ^(2*im*x))*sec(x)^2)/sqrt(a*sec(x)^4) - (im*x*PolyLog(2, ℯ^(2*im*x))*sec(x)^2)/sqrt(a*sec(x)^4) + (PolyLog(3, ℯ^(2*im*x))*sec(x)^2)/(2*sqrt(a*sec(x)^4))]
    @test_int [(x^3*csc(x)*sec(x))/sqrt(a*sec(x)^4), x, 7, -((im*x^4*sec(x)^2)/(4*sqrt(a*sec(x)^4))) + (x^3*log(1 - ℯ^(2*im*x))*sec(x)^2)/sqrt(a*sec(x)^4) - (3*im*x^2*PolyLog(2, ℯ^(2*im*x))*sec(x)^2)/(2*sqrt(a*sec(x)^4)) + (3*x*PolyLog(3, ℯ^(2*im*x))*sec(x)^2)/(2*sqrt(a*sec(x)^4)) + (3*im*PolyLog(4, ℯ^(2*im*x))*sec(x)^2)/(4*sqrt(a*sec(x)^4))]


    @test_int [(x^1*csc(x)*sec(x))*sqrt(a*sec(x)^2), x, 10, x*sqrt(a*sec(x)^2) - 2*x*atanh(ℯ^(im*x))*cos(x)*sqrt(a*sec(x)^2) - atanh(sin(x))*cos(x)*sqrt(a*sec(x)^2) + im*cos(x)*PolyLog(2, -ℯ^(im*x))*sqrt(a*sec(x)^2) - im*cos(x)*PolyLog(2, ℯ^(im*x))*sqrt(a*sec(x)^2)]
    @test_int [(x^2*csc(x)*sec(x))*sqrt(a*sec(x)^2), x, 17, x^2*sqrt(a*sec(x)^2) + 4*im*x*atan(ℯ^(im*x))*cos(x)*sqrt(a*sec(x)^2) - 2*x^2*atanh(ℯ^(im*x))*cos(x)*sqrt(a*sec(x)^2) + 2*im*x*cos(x)*PolyLog(2, -ℯ^(im*x))*sqrt(a*sec(x)^2) - 2*im*cos(x)*PolyLog(2, (-im)*ℯ^(im*x))*sqrt(a*sec(x)^2) + 2*im*cos(x)*PolyLog(2, im*ℯ^(im*x))*sqrt(a*sec(x)^2) - 2*im*x*cos(x)*PolyLog(2, ℯ^(im*x))*sqrt(a*sec(x)^2) - 2*cos(x)*PolyLog(3, -ℯ^(im*x))*sqrt(a*sec(x)^2) + 2*cos(x)*PolyLog(3, ℯ^(im*x))*sqrt(a*sec(x)^2)]
    @test_int [(x^3*csc(x)*sec(x))*sqrt(a*sec(x)^2), x, 21, x^3*sqrt(a*sec(x)^2) + 6*im*x^2*atan(ℯ^(im*x))*cos(x)*sqrt(a*sec(x)^2) - 2*x^3*atanh(ℯ^(im*x))*cos(x)*sqrt(a*sec(x)^2) + 3*im*x^2*cos(x)*PolyLog(2, -ℯ^(im*x))*sqrt(a*sec(x)^2) - 6*im*x*cos(x)*PolyLog(2, (-im)*ℯ^(im*x))*sqrt(a*sec(x)^2) + 6*im*x*cos(x)*PolyLog(2, im*ℯ^(im*x))*sqrt(a*sec(x)^2) - 3*im*x^2*cos(x)*PolyLog(2, ℯ^(im*x))*sqrt(a*sec(x)^2) - 6*x*cos(x)*PolyLog(3, -ℯ^(im*x))*sqrt(a*sec(x)^2) + 6*cos(x)*PolyLog(3, (-im)*ℯ^(im*x))*sqrt(a*sec(x)^2) - 6*cos(x)*PolyLog(3, im*ℯ^(im*x))*sqrt(a*sec(x)^2) + 6*x*cos(x)*PolyLog(3, ℯ^(im*x))*sqrt(a*sec(x)^2) - 6*im*cos(x)*PolyLog(4, -ℯ^(im*x))*sqrt(a*sec(x)^2) + 6*im*cos(x)*PolyLog(4, ℯ^(im*x))*sqrt(a*sec(x)^2)]


    @test_int [(x^1*csc(x)*sec(x))*sqrt(a*sec(x)^4), x, 12, (1/2)*x*cos(x)^2*sqrt(a*sec(x)^4) - 2*x*atanh(ℯ^(2*im*x))*cos(x)^2*sqrt(a*sec(x)^4) + (1/2)*im*cos(x)^2*PolyLog(2, -ℯ^(2*im*x))*sqrt(a*sec(x)^4) - (1/2)*im*cos(x)^2*PolyLog(2, ℯ^(2*im*x))*sqrt(a*sec(x)^4) - (1/2)*cos(x)*sqrt(a*sec(x)^4)*sin(x) + (1/2)*x*sqrt(a*sec(x)^4)*sin(x)^2]
    @test_int [(x^2*csc(x)*sec(x))*sqrt(a*sec(x)^4), x, 16, (1/2)*x^2*cos(x)^2*sqrt(a*sec(x)^4) - 2*x^2*atanh(ℯ^(2*im*x))*cos(x)^2*sqrt(a*sec(x)^4) - cos(x)^2*log(cos(x))*sqrt(a*sec(x)^4) + im*x*cos(x)^2*PolyLog(2, -ℯ^(2*im*x))*sqrt(a*sec(x)^4) - im*x*cos(x)^2*PolyLog(2, ℯ^(2*im*x))*sqrt(a*sec(x)^4) - (1/2)*cos(x)^2*PolyLog(3, -ℯ^(2*im*x))*sqrt(a*sec(x)^4) + (1/2)*cos(x)^2*PolyLog(3, ℯ^(2*im*x))*sqrt(a*sec(x)^4) - x*cos(x)*sqrt(a*sec(x)^4)*sin(x) + (1/2)*x^2*sqrt(a*sec(x)^4)*sin(x)^2]
    @test_int [(x^3*csc(x)*sec(x))*sqrt(a*sec(x)^4), x, 21, (3/2)*im*x^2*cos(x)^2*sqrt(a*sec(x)^4) + (1/2)*x^3*cos(x)^2*sqrt(a*sec(x)^4) - 2*x^3*atanh(ℯ^(2*im*x))*cos(x)^2*sqrt(a*sec(x)^4) - 3*x*cos(x)^2*log(1 + ℯ^(2*im*x))*sqrt(a*sec(x)^4) + (3/2)*im*cos(x)^2*PolyLog(2, -ℯ^(2*im*x))*sqrt(a*sec(x)^4) + (3/2)*im*x^2*cos(x)^2*PolyLog(2, -ℯ^(2*im*x))*sqrt(a*sec(x)^4) - (3/2)*im*x^2*cos(x)^2*PolyLog(2, ℯ^(2*im*x))*sqrt(a*sec(x)^4) - (3/2)*x*cos(x)^2*PolyLog(3, -ℯ^(2*im*x))*sqrt(a*sec(x)^4) + (3/2)*x*cos(x)^2*PolyLog(3, ℯ^(2*im*x))*sqrt(a*sec(x)^4) - (3/4)*im*cos(x)^2*PolyLog(4, -ℯ^(2*im*x))*sqrt(a*sec(x)^4) + (3/4)*im*cos(x)^2*PolyLog(4, ℯ^(2*im*x))*sqrt(a*sec(x)^4) - (3/2)*x^2*cos(x)*sqrt(a*sec(x)^4)*sin(x) + (1/2)*x^3*sqrt(a*sec(x)^4)*sin(x)^2]


    @test_int [sin(x)*sin(2*x)*sin(3*x), x, 5, (-(1/8))*cos(2*x) - (1/16)*cos(4*x) + (1/24)*cos(6*x)]
    @test_int [cos(x)*cos(2*x)*cos(3*x), x, 5, x/4 + (1/8)*sin(2*x) + (1/16)*sin(4*x) + (1/24)*sin(6*x)]
    @test_int [cos(x)*sin(2*x)*sin(3*x), x, 5, x/4 + (1/8)*sin(2*x) - (1/16)*sin(4*x) - (1/24)*sin(6*x)]
    @test_int [cos(2*x)*cos(3*x)*sin(x), x, 5, (-(1/8))*cos(2*x) + (1/16)*cos(4*x) - (1/24)*cos(6*x)]


    @test_int [x*sin(x^2), x, 2, -cos(x^2)/2]
    @test_int [(-cos(x) + sin(x))*(cos(x) + sin(x))^5, x, 1, -(cos(x) + sin(x))^6/6]
    @test_int [2*x*sec(x)^2*tan(x), x, 4, x*sec(x)^2 - tan(x)]
    @test_int [(1 + cos(x)^2)/(1 + cos(2*x)), x, 3, x/2 + tan(x)/2]


    @test_int [sin(x)/(cos(x)^3 - cos(x)^5), x, 4, log(tan(x)) + tan(x)^2/2, -log(cos(x)) + log(sin(x)) + sec(x)^2/2]
    @test_int [sec(x)*(5 - 11*sec(x)^5)^2*tan(x), x, 3, 25*sec(x) - (55*sec(x)^6)/3 + 11*sec(x)^11]
    @test_int [sin(5*x)^3*tan(5*x)^3, x, 5, (-(1/2))*atanh(sin(5*x)) + (1/2)*sin(5*x) + (1/6)*sin(5*x)^3 + (1/10)*sin(5*x)^3*tan(5*x)^2]
    @test_int [sin(5*x)^3*tan(5*x)^4, x, 3, (-(3/5))*cos(5*x) + (1/15)*cos(5*x)^3 - (3/5)*sec(5*x) + (1/15)*sec(5*x)^3]
    @test_int [sin(6*x)^5*tan(6*x)^3, x, 5, (-(7/12))*atanh(sin(6*x)) + (7/12)*sin(6*x) + (7/36)*sin(6*x)^3 + (7/60)*sin(6*x)^5 + (1/12)*sin(6*x)^5*tan(6*x)^2]
    @test_int [(-1 + sec(2*x)^2)^3*sin(2*x), x, 4, (1/2)*cos(2*x) + (3/2)*sec(2*x) - (1/2)*sec(2*x)^3 + (1/10)*sec(2*x)^5]
    @test_int [sin(x)*tan(x)^5, x, 5, (15/8)*atanh(sin(x)) - (15*sin(x))/8 - (5/8)*sin(x)*tan(x)^2 + (1/4)*sin(x)*tan(x)^4]
    @test_int [cos(2*x)^5*cot(2*x)^4, x, 3, 2*csc(2*x) - (1/6)*csc(2*x)^3 + 3*sin(2*x) - (2/3)*sin(2*x)^3 + (1/10)*sin(2*x)^5]

    @test_int [cos(3*x)*(-1 + csc(3*x)^2)^3*(1 - sin(3*x)^2)^5, x, 5, (-(28/3))*csc(3*x) + (8/9)*csc(3*x)^3 - (1/15)*csc(3*x)^5 - (56/3)*sin(3*x) + (70/9)*sin(3*x)^3 - (56/15)*sin(3*x)^5 + (4/3)*sin(3*x)^7 - (8/27)*sin(3*x)^9 + (1/33)*sin(3*x)^11]
    @test_int [cot(2*x)*(-1 + csc(2*x)^2)^2*(1 - sin(2*x)^2)^2, x, 5, csc(2*x)^2 - (1/8)*csc(2*x)^4 + 3*log(sin(2*x)) - sin(2*x)^2 + (1/8)*sin(2*x)^4]
    @test_int [cos(2*x)*(-1 + csc(2*x)^2)^4*(1 - sin(2*x)^2)^2, x, 5, 10*csc(2*x) - (5/2)*csc(2*x)^3 + (3/5)*csc(2*x)^5 - (1/14)*csc(2*x)^7 + (15/2)*sin(2*x) - sin(2*x)^3 + (1/10)*sin(2*x)^5]
    @test_int [cot(3*x)*(-1 + csc(3*x)^2)^3*(1 - sin(3*x)^2)^2, x, 5, (-(5/3))*csc(3*x)^2 + (5/12)*csc(3*x)^4 - (1/18)*csc(3*x)^6 - (10/3)*log(sin(3*x)) + (5/6)*sin(3*x)^2 - (1/12)*sin(3*x)^4]
    @test_int [(1 + cot(9*x)^2)^2*(1 + tan(9*x)^2)^3, x, 5, (-(4/9))*cot(9*x) - (1/27)*cot(9*x)^3 + (2/3)*tan(9*x) + (4/27)*tan(9*x)^3 + (1/45)*tan(9*x)^5]
    @test_int [(cos(x)*(9 - 7*sin(x)^3)^2)/(1 - sin(x)^2), x, 7, -2*log(1 - sin(x)) + 128*log(1 + sin(x)) - 49*sin(x) + 63*sin(x)^2 - (49*sin(x)^3)/3 - (49*sin(x)^5)/5]

    @test_int [cos(2*x)^4*cot(2*x)^5, x, 4, csc(2*x)^2 - (1/8)*csc(2*x)^4 + 3*log(sin(2*x)) - sin(2*x)^2 + (1/8)*sin(2*x)^4]
    @test_int [(sec(x)*tan(x)^2)/(4 + 3*sec(x)), x, 7, (-(4/9))*atanh(sin(x)) - (1/9)*sqrt(7)*log(sqrt(7)*cos(x/2) - sin(x/2)) + (1/9)*sqrt(7)*log(sqrt(7)*cos(x/2) + sin(x/2)) + tan(x)/3]
    @test_int [x*sec(1 + x)*tan(1 + x), x, 2, -atanh(sin(1 + x)) + x*sec(1 + x)]
    @test_int [sin(2*x)/sqrt(9 - sin(x)^2), x, 3, -2*sqrt(9 - sin(x)^2)]
    @test_int [sin(2*x)/sqrt(9 - cos(x)^4), x, 5, -asin(cos(x)^2/3)]
    @test_int [cos(x^(-1))/x^5, x, 5, 6*cos(1/x) - (3*cos(1/x))/x^2 - sin(1/x)/x^3 + (6*sin(1/x))/x]
    @test_int [cos(1 + x)^3*sin(1 + x)^3, x, 3, (1/4)*sin(1 + x)^4 - (1/6)*sin(1 + x)^6]
    @test_int [(1 + 2*x)^3*sin(1 + 2*x)^2, x, 4, -((3*x)/4) - (3*x^2)/4 + (1/16)*(1 + 2*x)^4 + (3/8)*(1 + 2*x)*cos(1 + 2*x)*sin(1 + 2*x) - (1/4)*(1 + 2*x)^3*cos(1 + 2*x)*sin(1 + 2*x) - (3/16)*sin(1 + 2*x)^2 + (3/8)*(1 + 2*x)^2*sin(1 + 2*x)^2]
    @test_int [(-1 + sec(x))/(1 - tan(x)), x, 6, -(x/2) + atanh((cos(x)*(1 + tan(x)))/sqrt(2))/sqrt(2) + (1/2)*log(cos(x) - sin(x))]
    @test_int [x^2*cos(3*x)*cos(5*x), x, 8, (1/4)*x*cos(2*x) + (1/64)*x*cos(8*x) - (1/8)*sin(2*x) + (1/4)*x^2*sin(2*x) - (1/512)*sin(8*x) + (1/16)*x^2*sin(8*x)]


    #= Unfortunately*the*simpler*antiderivative*sqrt(2)*atan((sqrt(2)*sqrt(cos(x))*sqrt(sin(x)))/(cos(x) - sin(x)))*is*unnecessarily*discontinuous. =#
    @test_int [(cos(x) + sin(x))/(sqrt(cos(x))*sqrt(sin(x))), x, -22, (-sqrt(2))*atan(1 - (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x))) + sqrt(2)*atan(1 + (sqrt(2)*sqrt(sin(x)))/sqrt(cos(x)))]


    @test_int [sec(x)^2*(1 + sin(x)), x, 3, sec(x) + tan(x)]

    @test_int [10*x^9*cos(x^5*log(x)) - x^10*(x^4 + 5*x^4*log(x))*sin(x^5*log(x)), x, -4, x^10*cos(x^5*log(x))]
    @test_int [cos(x/2)^2*tan(pi/4 + x/2), x, -1, x/2 - cos(x)/2 - log(cos(pi/4 + x/2))]

    @test_int [(2 + 3*x)^2*sin(x)^3, x, 6, 14*cos(x) - (2/3)*(2 + 3*x)^2*cos(x) - (2*cos(x)^3)/3 + 4*(2 + 3*x)*sin(x) - (1/3)*(2 + 3*x)^2*cos(x)*sin(x)^2 + (2/3)*(2 + 3*x)*sin(x)^3]
    @test_int [sec(x)^(1 + m)*sin(x), x, 2, sec(x)^m/m]
    @test_int [cos(a + b*x)^n*sin(a + b*x)^(-2 - n), x, 1, -((cos(a + b*x)^(1 + n)*sin(a + b*x)^(-1 - n))/(b*(1 + n)))]
    @test_int [1/(sec(x) + sin(x)*tan(x)), x, 3, atan(sin(x))]
    @test_int [(a + b*x + c*x^2)*sin(x), x, 8, (-a)*cos(x) + 2*c*cos(x) - b*x*cos(x) - c*x^2*cos(x) + b*sin(x) + 2*c*x*sin(x)]
    @test_int [sin(x^5)/x, x, 1, SinIntegral(x^5)/5]
    @test_int [sin(2^x)/(1 + 2^x), x, 7, (CosIntegral(1 + 2^x)*sin(1))/log(2) + SinIntegral(2^x)/log(2) - (cos(1)*SinIntegral(1 + 2^x))/log(2)]

    @test_int [x*cos(2*x^2)*sin(2*x^2)^(3/4), x, 1, sin(2*x^2)^(7/4)/7]
    @test_int [x*sec(x^2)^2*tan(x^2)^2, x, 1, tan(x^2)^3/6]
    @test_int [x^2*cos(a + b*x^3)^7*sin(a + b*x^3), x, 1, -cos(a + b*x^3)^8/(24*b)]
    @test_int [x^5*cos(a + b*x^3)^7*sin(a + b*x^3), x, 7, (35*x^3)/(3072*b) - (x^3*cos(a + b*x^3)^8)/(24*b) + (35*cos(a + b*x^3)*sin(a + b*x^3))/(3072*b^2) + (35*cos(a + b*x^3)^3*sin(a + b*x^3))/(4608*b^2) + (7*cos(a + b*x^3)^5*sin(a + b*x^3))/(1152*b^2) + (cos(a + b*x^3)^7*sin(a + b*x^3))/(192*b^2)]
    @test_int [x^5*sec(a + b*x^3)^7*tan(a + b*x^3), x, 6, -((5*atanh(sin(a + b*x^3)))/(336*b^2)) + (x^3*sec(a + b*x^3)^7)/(21*b) - (5*sec(a + b*x^3)*tan(a + b*x^3))/(336*b^2) - (5*sec(a + b*x^3)^3*tan(a + b*x^3))/(504*b^2) - (sec(a + b*x^3)^5*tan(a + b*x^3))/(126*b^2)]

    @test_int [sec(x^(-1))^2/x^2, x, 3, -tan(x^(-1))]
    @test_int [3*x^2*cos(x^3), x, 3, sin(x^3)]

    @test_int [(1 + 2*x)*sec(1 + 2*x)^2, x, 2, (1/2)*log(cos(1 + 2*x)) + (1/2)*(1 + 2*x)*tan(1 + 2*x)]


    #= Problems*requiring*simplification*of*irreducible*integrands =#
    @test_int [(x^2*cos(a + b*x))/sqrt(3*sin(a + b*x) + x^3) + x^4/(sqrt(x^3 + 3*sin(a + b*x))*b) + (4*x*sqrt(x^3 + 3*sin(a + b*x)))/(3*b), x, -1, (2*x^2*sqrt(x^3 + 3*sin(a + b*x)))/(3*b)]
    @test_int [x^2*(cos(a + b*x)/sqrt(3*sin(a + b*x) + x^3)), x, 0, CannotIntegrate((x^2*cos(a + b*x))/sqrt(x^3 + 3*sin(a + b*x)), x)]


    @test_int [(cos(x) + sin(x))/(ℯ^(-x) + sin(x)), x, -5, log(1 + ℯ^x*sin(x))]


    @test_int [sin(c + d*x)*(a*sin(c + d*x)^2 + b*sin(c + d*x)^3)^1, x, 7, (3*b*x)/8 - (a*cos(c + d*x))/d + (a*cos(c + d*x)^3)/(3*d) - (3*b*cos(c + d*x)*sin(c + d*x))/(8*d) - (b*cos(c + d*x)*sin(c + d*x)^3)/(4*d)]
    @test_int [sin(c + d*x)*(a*sin(c + d*x)^2 + b*sin(c + d*x)^3)^2, x, 9, (5*a*b*x)/8 - ((a^2 + b^2)*cos(c + d*x))/d + ((2*a^2 + 3*b^2)*cos(c + d*x)^3)/(3*d) - ((a^2 + 3*b^2)*cos(c + d*x)^5)/(5*d) + (b^2*cos(c + d*x)^7)/(7*d) - (5*a*b*cos(c + d*x)*sin(c + d*x))/(8*d) - (5*a*b*cos(c + d*x)*sin(c + d*x)^3)/(12*d) - (a*b*cos(c + d*x)*sin(c + d*x)^5)/(3*d)]


    @test_int [sin(c + d*x)*(a*sin(c + d*x) + b*sin(c + d*x)^2 + c*sin(c + d*x)^3)^1, x, 7, (1/8)*(4*a + 3*c)*x - (b*cos(c + d*x))/d + (b*cos(c + d*x)^3)/(3*d) - ((4*a + 3*c)*cos(c + d*x)*sin(c + d*x))/(8*d) - (c*cos(c + d*x)*sin(c + d*x)^3)/(4*d)]
    @test_int [sin(c + d*x)*(a*sin(c + d*x) + b*sin(c + d*x)^2 + c*sin(c + d*x)^3)^2, x, 16, (3*a*b*x)/4 + (5*b*c*x)/8 - (a^2*cos(c + d*x))/d - (c^2*cos(c + d*x))/d - ((b^2 + 2*a*c)*cos(c + d*x))/d + (a^2*cos(c + d*x)^3)/(3*d) + (c^2*cos(c + d*x)^3)/d + (2*(b^2 + 2*a*c)*cos(c + d*x)^3)/(3*d) - (3*c^2*cos(c + d*x)^5)/(5*d) - ((b^2 + 2*a*c)*cos(c + d*x)^5)/(5*d) + (c^2*cos(c + d*x)^7)/(7*d) - (3*a*b*cos(c + d*x)*sin(c + d*x))/(4*d) - (5*b*c*cos(c + d*x)*sin(c + d*x))/(8*d) - (a*b*cos(c + d*x)*sin(c + d*x)^3)/(2*d) - (5*b*c*cos(c + d*x)*sin(c + d*x)^3)/(12*d) - (b*c*cos(c + d*x)*sin(c + d*x)^5)/(3*d)]


    @test_int [sin(c + d*x)*(a + b/sqrt(sin(c + d*x)) + c*sin(c + d*x))^1, x, 7, (c*x)/2 - (a*cos(c + d*x))/d + (2*b*EllipticE((1/2)*(c - pi/2 + d*x), 2))/d - (c*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [sin(c + d*x)*(a + b/sqrt(sin(c + d*x)) + c*sin(c + d*x))^2, x, 11, b^2*x + a*c*x - (a^2*cos(c + d*x))/d - (c^2*cos(c + d*x))/d + (c^2*cos(c + d*x)^3)/(3*d) + (4*a*b*EllipticE((1/2)*(c - pi/2 + d*x), 2))/d + (4*b*c*EllipticF((1/2)*(c - pi/2 + d*x), 2))/(3*d) - (4*b*c*cos(c + d*x)*sqrt(sin(c + d*x)))/(3*d) - (a*c*cos(c + d*x)*sin(c + d*x))/d]


    @test_int [f^(a + b*x)*(cos(c + d*x) + im*sin(c + d*x))^n, x, 4, ((ℯ^(im*(c + d*x)))^n*f^(a + b*x))/(im*d*n + b*log(f))]
    @test_int [f^(a + b*x)*(cos(c + d*x) - im*sin(c + d*x))^n, x, 4, -(((ℯ^((-im)*(c + d*x)))^n*f^(a + b*x))/(im*d*n - b*log(f)))]


    @test_int [(cos(a + b*x)^5 - sin(a + b*x)^5)/(cos(a + b*x)^5 + sin(a + b*x)^5), x, 7, log(cos(a + b*x))/b + log(1 + tan(a + b*x))/(5*b) - (4*log(2 - (1 - sqrt(5))*tan(a + b*x) + 2*tan(a + b*x)^2))/(5*(1 - sqrt(5))*b) - (4*log(2 - (1 + sqrt(5))*tan(a + b*x) + 2*tan(a + b*x)^2))/(5*(1 + sqrt(5))*b)]
    @test_int [(cos(a + b*x)^4 - sin(a + b*x)^4)/(cos(a + b*x)^4 + sin(a + b*x)^4), x, 4, -(log(1 - sqrt(2)*tan(a + b*x) + tan(a + b*x)^2)/(2*sqrt(2)*b)) + log(1 + sqrt(2)*tan(a + b*x) + tan(a + b*x)^2)/(2*sqrt(2)*b)]
    @test_int [(cos(a + b*x)^3 - sin(a + b*x)^3)/(cos(a + b*x)^3 + sin(a + b*x)^3), x, 5, -(log(cos(a + b*x))/b) + log(1 + tan(a + b*x))/(3*b) - (2*log(1 - tan(a + b*x) + tan(a + b*x)^2))/(3*b)]
    @test_int [(cos(a + b*x)^2 - sin(a + b*x)^2)/(cos(a + b*x)^2 + sin(a + b*x)^2), x, 6, (cos(a + b*x)*sin(a + b*x))/b]
    @test_int [(cos(a + b*x)^1 - sin(a + b*x)^1)/(cos(a + b*x)^1 + sin(a + b*x)^1), x, 1, log(cos(a + b*x) + sin(a + b*x))/b]
    @test_int [(sec(a + b*x)^1 - csc(a + b*x)^1)/(sec(a + b*x)^1 + csc(a + b*x)^1), x, 4, -(log(cos(a + b*x) + sin(a + b*x))/b)]
    @test_int [(sec(a + b*x)^2 - csc(a + b*x)^2)/(sec(a + b*x)^2 + csc(a + b*x)^2), x, 2, -((cos(a + b*x)*sin(a + b*x))/b)]
    @test_int [(sec(a + b*x)^3 - csc(a + b*x)^3)/(sec(a + b*x)^3 + csc(a + b*x)^3), x, 5, log(cos(a + b*x))/b - log(1 + tan(a + b*x))/(3*b) + (2*log(1 - tan(a + b*x) + tan(a + b*x)^2))/(3*b)]
    @test_int [(sec(a + b*x)^4 - csc(a + b*x)^4)/(sec(a + b*x)^4 + csc(a + b*x)^4), x, 4, log(1 - sqrt(2)*tan(a + b*x) + tan(a + b*x)^2)/(2*sqrt(2)*b) - log(1 + sqrt(2)*tan(a + b*x) + tan(a + b*x)^2)/(2*sqrt(2)*b)]
    end
