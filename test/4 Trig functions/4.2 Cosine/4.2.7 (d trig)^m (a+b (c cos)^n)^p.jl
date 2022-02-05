@testset "4.2.7 (d trig)^m (a+b (c cos)^n)^p" begin
    @variables a, b, n, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*cos(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*cos(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*cos(e+f*x)^2)^p*when*a+b=0=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(x)^6/(a - a*cos(x)^2), x, 4, (3*x)/(8*a) - (3*cos(x)*sin(x))/(8*a) - (cos(x)*sin(x)^3)/(4*a)]
    @test_int [sin(x)^5/(a - a*cos(x)^2), x, 3, -(cos(x)/a) + cos(x)^3/(3*a)]
    @test_int [sin(x)^4/(a - a*cos(x)^2), x, 3, x/(2*a) - (cos(x)*sin(x))/(2*a)]
    @test_int [sin(x)^3/(a - a*cos(x)^2), x, 2, -(cos(x)/a)]
    @test_int [sin(x)^2/(a - a*cos(x)^2), x, 2, x/a]
    @test_int [sin(x)^1/(a - a*cos(x)^2), x, 2, -(atanh(cos(x))/a)]
    @test_int [csc(x)^1/(a - a*cos(x)^2), x, 3, -(atanh(cos(x))/(2*a)) - (cot(x)*csc(x))/(2*a)]
    @test_int [csc(x)^2/(a - a*cos(x)^2), x, 3, -(cot(x)/a) - cot(x)^3/(3*a)]
    @test_int [csc(x)^3/(a - a*cos(x)^2), x, 4, -((3*atanh(cos(x)))/(8*a)) - (3*cot(x)*csc(x))/(8*a) - (cot(x)*csc(x)^3)/(4*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*cos(e+f*x)^2)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(x)^7/(a + b*cos(x)^2), x, 4, -(((a + b)^3*atan((sqrt(b)*cos(x))/sqrt(a)))/(sqrt(a)*b^(7/2))) + ((a^2 + 3*a*b + 3*b^2)*cos(x))/b^3 - ((a + 3*b)*cos(x)^3)/(3*b^2) + cos(x)^5/(5*b)]
    @test_int [sin(x)^5/(a + b*cos(x)^2), x, 4, -(((a + b)^2*atan((sqrt(b)*cos(x))/sqrt(a)))/(sqrt(a)*b^(5/2))) + ((a + 2*b)*cos(x))/b^2 - cos(x)^3/(3*b)]
    @test_int [sin(x)^3/(a + b*cos(x)^2), x, 3, -(((a + b)*atan((sqrt(b)*cos(x))/sqrt(a)))/(sqrt(a)*b^(3/2))) + cos(x)/b]
    @test_int [sin(x)^1/(a + b*cos(x)^2), x, 2, -(atan((sqrt(b)*cos(x))/sqrt(a))/(sqrt(a)*sqrt(b)))]
    @test_int [csc(x)^1/(a + b*cos(x)^2), x, 4, -((sqrt(b)*atan((sqrt(b)*cos(x))/sqrt(a)))/(sqrt(a)*(a + b))) - atanh(cos(x))/(a + b)]
    @test_int [csc(x)^3/(a + b*cos(x)^2), x, 5, -((b^(3/2)*atan((sqrt(b)*cos(x))/sqrt(a)))/(sqrt(a)*(a + b)^2)) - ((a + 3*b)*atanh(cos(x)))/(2*(a + b)^2) - (cot(x)*csc(x))/(2*(a + b))]
    @test_int [csc(x)^5/(a + b*cos(x)^2), x, 6, -((b^(5/2)*atan((sqrt(b)*cos(x))/sqrt(a)))/(sqrt(a)*(a + b)^3)) - ((3*a^2 + 10*a*b + 15*b^2)*atanh(cos(x)))/(8*(a + b)^3) - ((3*a + 7*b)*cot(x)*csc(x))/(8*(a + b)^2) - (cot(x)*csc(x)^3)/(4*(a + b))]

    @test_int [sin(x)^6/(a + b*cos(x)^2), x, 6, -(((8*a^2 + 20*a*b + 15*b^2)*x)/(8*b^3)) - ((a + b)^(5/2)*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(sqrt(a)*b^3) + ((4*a + 7*b)*cos(x)*sin(x))/(8*b^2) + (cos(x)*sin(x)^3)/(4*b)]
    @test_int [sin(x)^4/(a + b*cos(x)^2), x, 5, -(((2*a + 3*b)*x)/(2*b^2)) - ((a + b)^(3/2)*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(sqrt(a)*b^2) + (cos(x)*sin(x))/(2*b)]
    @test_int [sin(x)^2/(a + b*cos(x)^2), x, 4, -(x/b) - (sqrt(a + b)*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(sqrt(a)*b)]
    @test_int [sin(x)^0/(a + b*cos(x)^2), x, 2, -(atan((sqrt(a + b)*cot(x))/sqrt(a))/(sqrt(a)*sqrt(a + b)))]
    @test_int [csc(x)^2/(a + b*cos(x)^2), x, 3, -((b*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(sqrt(a)*(a + b)^(3/2))) - cot(x)/(a + b)]
    @test_int [csc(x)^4/(a + b*cos(x)^2), x, 4, -((b^2*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(sqrt(a)*(a + b)^(5/2))) - ((a + 2*b)*cot(x))/(a + b)^2 - cot(x)^3/(3*(a + b))]
    @test_int [csc(x)^6/(a + b*cos(x)^2), x, 4, -((b^3*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(sqrt(a)*(a + b)^(7/2))) - ((a^2 + 3*a*b + 3*b^2)*cot(x))/(a + b)^3 - ((2*a + 3*b)*cot(x)^3)/(3*(a + b)^2) - cot(x)^5/(5*(a + b))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*cos(e+f*x)^3)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*cos(e+f*x)^3)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(x)/(4 - 3*cos(x)^3), x, 7, -(atan((1 + 6^(1/3)*cos(x))/sqrt(3))/(2*2^(1/3)*3^(5/6))) + log(2^(2/3) - 3^(1/3)*cos(x))/(6*6^(1/3)) - log(2*2^(1/3) + 2^(2/3)*3^(1/3)*cos(x) + 3^(2/3)*cos(x)^2)/(12*6^(1/3))]


    #= ::Section:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*cos(e+f*x)^4)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*cos(e+f*x)^n)^p=#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^2)^p*when*a+b=0=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/(1 - cos(x)^2), x, 3, -cot(x)]
    @test_int [1/(1 - cos(x)^2)^2, x, 3, -cot(x) - cot(x)^3/3]
    @test_int [1/(1 - cos(x)^2)^3, x, 3, -cot(x) - (2*cot(x)^3)/3 - cot(x)^5/5]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^2)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(x)^7/(a + b*cos(x)^2), x, 4, -((a^3*atanh((sqrt(b)*sin(x))/sqrt(a + b)))/(b^(7/2)*sqrt(a + b))) + ((a^2 - a*b + b^2)*sin(x))/b^3 + ((a - 2*b)*sin(x)^3)/(3*b^2) + sin(x)^5/(5*b)]
    @test_int [cos(x)^5/(a + b*cos(x)^2), x, 4, (a^2*atanh((sqrt(b)*sin(x))/sqrt(a + b)))/(b^(5/2)*sqrt(a + b)) - ((a - b)*sin(x))/b^2 - sin(x)^3/(3*b)]
    @test_int [cos(x)^3/(a + b*cos(x)^2), x, 3, -((a*atanh((sqrt(b)*sin(x))/sqrt(a + b)))/(b^(3/2)*sqrt(a + b))) + sin(x)/b]
    @test_int [cos(x)^1/(a + b*cos(x)^2), x, 2, atanh((sqrt(b)*sin(x))/sqrt(a + b))/(sqrt(b)*sqrt(a + b))]
    @test_int [sec(x)^1/(a + b*cos(x)^2), x, 4, atanh(sin(x))/a - (sqrt(b)*atanh((sqrt(b)*sin(x))/sqrt(a + b)))/(a*sqrt(a + b))]
    @test_int [sec(x)^3/(a + b*cos(x)^2), x, 5, ((a - 2*b)*atanh(sin(x)))/(2*a^2) + (b^(3/2)*atanh((sqrt(b)*sin(x))/sqrt(a + b)))/(a^2*sqrt(a + b)) + (sec(x)*tan(x))/(2*a)]
    @test_int [sec(x)^5/(a + b*cos(x)^2), x, 6, ((3*a^2 - 4*a*b + 8*b^2)*atanh(sin(x)))/(8*a^3) - (b^(5/2)*atanh((sqrt(b)*sin(x))/sqrt(a + b)))/(a^3*sqrt(a + b)) + ((3*a - 4*b)*sec(x)*tan(x))/(8*a^2) + (sec(x)^3*tan(x))/(4*a)]

    @test_int [cos(x)^6/(a + b*cos(x)^2), x, 6, ((8*a^2 - 4*a*b + 3*b^2)*x)/(8*b^3) + (a^(5/2)*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(b^3*sqrt(a + b)) - ((4*a - 3*b)*cos(x)*sin(x))/(8*b^2) + (cos(x)^3*sin(x))/(4*b)]
    @test_int [cos(x)^4/(a + b*cos(x)^2), x, 5, -(((2*a - b)*x)/(2*b^2)) - (a^(3/2)*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(b^2*sqrt(a + b)) + (cos(x)*sin(x))/(2*b)]
    @test_int [cos(x)^2/(a + b*cos(x)^2), x, 3, x/b + (sqrt(a)*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(b*sqrt(a + b))]
    @test_int [cos(x)^0/(a + b*cos(x)^2), x, 2, -(atan((sqrt(a + b)*cot(x))/sqrt(a))/(sqrt(a)*sqrt(a + b)))]
    @test_int [sec(x)^2/(a + b*cos(x)^2), x, 3, (b*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(a^(3/2)*sqrt(a + b)) + tan(x)/a]
    @test_int [sec(x)^4/(a + b*cos(x)^2), x, 4, -((b^2*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(a^(5/2)*sqrt(a + b))) + ((a - b)*tan(x))/a^2 + tan(x)^3/(3*a)]
    @test_int [sec(x)^6/(a + b*cos(x)^2), x, 4, (b^3*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(a^(7/2)*sqrt(a + b)) + ((a^2 - a*b + b^2)*tan(x))/a^3 + ((2*a - b)*tan(x)^3)/(3*a^2) + tan(x)^5/(5*a)]


    @test_int [1/(a + b*cos(x)^2)^2, x, 4, -(((2*a + b)*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(2*a^(3/2)*(a + b)^(3/2))) - (b*cos(x)*sin(x))/(2*a*(a + b)*(a + b*cos(x)^2))]


    @test_int [1/(a + b*cos(x)^2)^3, x, 5, -(((8*a^2 + 8*a*b + 3*b^2)*atan((sqrt(a + b)*cot(x))/sqrt(a)))/(8*a^(5/2)*(a + b)^(5/2))) - (b*cos(x)*sin(x))/(4*a*(a + b)*(a + b*cos(x)^2)^2) - (3*b*(2*a + b)*cos(x)*sin(x))/(8*a^2*(a + b)^2*(a + b*cos(x)^2))]


    @test_int [1/(1 + cos(x)^2)^1, x, 2, x/sqrt(2) - atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2))/sqrt(2)]
    @test_int [1/(1 + cos(x)^2)^2, x, 4, (3*x)/(4*sqrt(2)) - (3*atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2)))/(4*sqrt(2)) - (cos(x)*sin(x))/(4*(1 + cos(x)^2))]
    @test_int [1/(1 + cos(x)^2)^3, x, 5, (19*x)/(32*sqrt(2)) - (19*atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2)))/(32*sqrt(2)) - (cos(x)*sin(x))/(8*(1 + cos(x)^2)^2) - (9*cos(x)*sin(x))/(32*(1 + cos(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^2)^(p/2)*when*a+b=0=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(1 - cos(x)^2), x, 3, -(cot(x)*sqrt(sin(x)^2))]
    @test_int [sqrt(-1 + cos(x)^2), x, 3, (-cot(x))*sqrt(-sin(x)^2)]


    @test_int [(1 - cos(x)^2)^(3/2), x, 4, (-(2/3))*cot(x)*sqrt(sin(x)^2) - (1/3)*cot(x)*(sin(x)^2)^(3/2)]
    @test_int [(-1 + cos(x)^2)^(3/2), x, 4, (2/3)*cot(x)*sqrt(-sin(x)^2) - (1/3)*cot(x)*(-sin(x)^2)^(3/2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/sqrt(1 - cos(x)^2), x, 3, -((atanh(cos(x))*sin(x))/sqrt(sin(x)^2))]
    @test_int [1/sqrt(-1 + cos(x)^2), x, 3, -((atanh(cos(x))*sin(x))/sqrt(-sin(x)^2))]


    @test_int [1/(1 - cos(x)^2)^(3/2), x, 4, -(cot(x)/(2*sqrt(sin(x)^2))) - (atanh(cos(x))*sin(x))/(2*sqrt(sin(x)^2))]
    @test_int [1/(-1 + cos(x)^2)^(3/2), x, 4, cot(x)/(2*sqrt(-sin(x)^2)) + (atanh(cos(x))*sin(x))/(2*sqrt(-sin(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(1 + cos(x)^2), x, 1, EllipticE(pi/2 + x, -1)]
    @test_int [sqrt(-1 - cos(x)^2), x, 2, (sqrt(-1 - cos(x)^2)*EllipticE(pi/2 + x, -1))/sqrt(1 + cos(x)^2)]
    @test_int [sqrt(a + b*cos(x)^2), x, 2, (sqrt(a + b*cos(x)^2)*EllipticE(pi/2 + x, -(b/a)))/sqrt(1 + (b*cos(x)^2)/a)]


    @test_int [(1 + cos(x)^2)^(3/2), x, 4, 2*EllipticE(pi/2 + x, -1) - (2/3)*EllipticF(pi/2 + x, -1) + (1/3)*cos(x)*sqrt(1 + cos(x)^2)*sin(x)]
    @test_int [(-1 - cos(x)^2)^(3/2), x, 6, -((2*sqrt(-1 - cos(x)^2)*EllipticE(pi/2 + x, -1))/sqrt(1 + cos(x)^2)) - (2*sqrt(1 + cos(x)^2)*EllipticF(pi/2 + x, -1))/(3*sqrt(-1 - cos(x)^2)) - (1/3)*cos(x)*sqrt(-1 - cos(x)^2)*sin(x)]
    @test_int [(a + b*cos(x)^2)^(3/2), x, 6, (2*(2*a + b)*sqrt(a + b*cos(x)^2)*EllipticE(pi/2 + x, -(b/a)))/(3*sqrt(1 + (b*cos(x)^2)/a)) - (a*(a + b)*sqrt(1 + (b*cos(x)^2)/a)*EllipticF(pi/2 + x, -(b/a)))/(3*sqrt(a + b*cos(x)^2)) + (1/3)*b*cos(x)*sqrt(a + b*cos(x)^2)*sin(x)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/sqrt(1 + cos(x)^2), x, 1, EllipticF(pi/2 + x, -1)]
    @test_int [1/sqrt(-1 - cos(x)^2), x, 2, (sqrt(1 + cos(x)^2)*EllipticF(pi/2 + x, -1))/sqrt(-1 - cos(x)^2)]
    @test_int [1/sqrt(a + b*cos(x)^2), x, 2, (sqrt(1 + (b*cos(x)^2)/a)*EllipticF(pi/2 + x, -(b/a)))/sqrt(a + b*cos(x)^2)]


    @test_int [1/(1 + cos(x)^2)^(3/2), x, 3, (1/2)*EllipticE(pi/2 + x, -1) - (cos(x)*sin(x))/(2*sqrt(1 + cos(x)^2))]
    @test_int [1/(-1 - cos(x)^2)^(3/2), x, 4, (sqrt(-1 - cos(x)^2)*EllipticE(pi/2 + x, -1))/(2*sqrt(1 + cos(x)^2)) + (cos(x)*sin(x))/(2*sqrt(-1 - cos(x)^2))]
    @test_int [1/(a + b*cos(x)^2)^(3/2), x, 4, (sqrt(a + b*cos(x)^2)*EllipticE(pi/2 + x, -(b/a)))/(a*(a + b)*sqrt(1 + (b*cos(x)^2)/a)) - (b*cos(x)*sin(x))/(a*(a + b)*sqrt(a + b*cos(x)^2))]


    @test_int [cos(x)/sqrt(1 + cos(x)^2), x, 2, asin(sin(x)/sqrt(2))]
    @test_int [cos(5 + 3*x)/sqrt(3 + cos(5 + 3*x)^2), x, 2, asin(sin(5 + 3*x)/2)/3]
    @test_int [cos(x)/sqrt(4 - cos(x)^2), x, 2, asinh(sin(x)/sqrt(3))]


    #= ::Section:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^3)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^4)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^4)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/(a + b*cos(x)^4), x, 10, ((sqrt(a) + sqrt(a + b))*atan((a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b)) - sqrt(2)*(a + b)^(3/4)*cot(x))/(a^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b)))))/(2*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b))) - ((sqrt(a) + sqrt(a + b))*atan((a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b)) + sqrt(2)*(a + b)^(3/4)*cot(x))/(a^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b)))))/(2*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b + sqrt(a)*sqrt(a + b))) - ((sqrt(a) - sqrt(a + b))*log(sqrt(a)*(a + b)^(1/4) - sqrt(2)*a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b))*cot(x) + (a + b)^(3/4)*cot(x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b))) + ((sqrt(a) - sqrt(a + b))*log(sqrt(a)*(a + b)^(1/4) + sqrt(2)*a^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b))*cot(x) + (a + b)^(3/4)*cot(x)^2))/(4*sqrt(2)*a^(3/4)*(a + b)^(1/4)*sqrt(a + b - sqrt(a)*sqrt(a + b)))]


    @test_int [1/(a - b*cos(x)^4), x, 4, -(atan((sqrt(sqrt(a) - sqrt(b))*cot(x))/a^(1/4))/(2*a^(3/4)*sqrt(sqrt(a) - sqrt(b)))) - atan((sqrt(sqrt(a) + sqrt(b))*cot(x))/a^(1/4))/(2*a^(3/4)*sqrt(sqrt(a) + sqrt(b)))]


    @test_int [1/(1 + cos(x)^4), x, 10, x/(2*sqrt(-1 + sqrt(2))) + atan(((-2 + sqrt(2))*cos(x)*sin(x) + sqrt(-1 + sqrt(2))*(1 - 2*sin(x)^2))/(2 + sqrt(1 + sqrt(2)) + 2*sqrt(-1 + sqrt(2))*cos(x)*sin(x) + (-2 + sqrt(2))*sin(x)^2))/(4*sqrt(-1 + sqrt(2))) + atan(((-2 + sqrt(2))*cos(x)*sin(x) + sqrt(-1 + sqrt(2))*(-1 + 2*sin(x)^2))/(2 + sqrt(1 + sqrt(2)) - 2*sqrt(-1 + sqrt(2))*cos(x)*sin(x) + (-2 + sqrt(2))*sin(x)^2))/(4*sqrt(-1 + sqrt(2))) + (1/8)*sqrt(-1 + sqrt(2))*log(sqrt(2) - 2*sqrt(-1 + sqrt(2))*cot(x) + 2*cot(x)^2) - (1/8)*sqrt(-1 + sqrt(2))*log(1 + sqrt(2*(-1 + sqrt(2)))*cot(x) + sqrt(2)*cot(x)^2)]


    @test_int [1/(1 - cos(x)^4), x, 3, x/(2*sqrt(2)) - atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2))/(2*sqrt(2)) - cot(x)/2]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cos(e+f*x)^n)^p=#


    @test_int [1/(a + b*cos(x)^5), x, 12, (2*atan((sqrt(a^(1/5) - b^(1/5))*tan(x/2))/sqrt(a^(1/5) + b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - b^(1/5))*sqrt(a^(1/5) + b^(1/5))) + (2*atan((sqrt(a^(1/5) + (-1)^(1/5)*b^(1/5))*tan(x/2))/sqrt(a^(1/5) - (-1)^(1/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(1/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(1/5)*b^(1/5))) + (2*atan((sqrt(a^(1/5) - (-1)^(2/5)*b^(1/5))*tan(x/2))/sqrt(a^(1/5) + (-1)^(2/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(2/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(2/5)*b^(1/5))) + (2*atan((sqrt(a^(1/5) + (-1)^(3/5)*b^(1/5))*tan(x/2))/sqrt(a^(1/5) - (-1)^(3/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(3/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(3/5)*b^(1/5))) + (2*atan((sqrt(a^(1/5) - (-1)^(4/5)*b^(1/5))*tan(x/2))/sqrt(a^(1/5) + (-1)^(4/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(4/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(4/5)*b^(1/5)))]
    @test_int [1/(a + b*cos(x)^6), x, 7, -(atan((sqrt(a^(1/3) + b^(1/3))*cot(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) + b^(1/3)))) - atan((sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3))*cot(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) - (-1)^(1/3)*b^(1/3))) - atan((sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3))*cot(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) + (-1)^(2/3)*b^(1/3)))]
    @test_int [1/(a + b*cos(x)^8), x, 9, atan((sqrt((-a)^(1/4) - b^(1/4))*cot(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) - b^(1/4))) + atan((sqrt((-a)^(1/4) - im*b^(1/4))*cot(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) - im*b^(1/4))) + atan((sqrt((-a)^(1/4) + im*b^(1/4))*cot(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) + im*b^(1/4))) + atan((sqrt((-a)^(1/4) + b^(1/4))*cot(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) + b^(1/4)))]

    @test_int [1/(a - b*cos(x)^5), x, 12, (2*atan((sqrt(a^(1/5) + b^(1/5))*tan(x/2))/sqrt(a^(1/5) - b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - b^(1/5))*sqrt(a^(1/5) + b^(1/5))) + (2*atan((sqrt(a^(1/5) - (-1)^(1/5)*b^(1/5))*tan(x/2))/sqrt(a^(1/5) + (-1)^(1/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(1/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(1/5)*b^(1/5))) + (2*atan((sqrt(a^(1/5) + (-1)^(2/5)*b^(1/5))*tan(x/2))/sqrt(a^(1/5) - (-1)^(2/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(2/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(2/5)*b^(1/5))) + (2*atan((sqrt(a^(1/5) - (-1)^(3/5)*b^(1/5))*tan(x/2))/sqrt(a^(1/5) + (-1)^(3/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(3/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(3/5)*b^(1/5))) + (2*atan((sqrt(a^(1/5) + (-1)^(4/5)*b^(1/5))*tan(x/2))/sqrt(a^(1/5) - (-1)^(4/5)*b^(1/5))))/(5*a^(4/5)*sqrt(a^(1/5) - (-1)^(4/5)*b^(1/5))*sqrt(a^(1/5) + (-1)^(4/5)*b^(1/5)))]
    @test_int [1/(a - b*cos(x)^6), x, 7, -(atan((sqrt(a^(1/3) - b^(1/3))*cot(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) - b^(1/3)))) - atan((sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))*cot(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))) - atan((sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3))*cot(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3)))]
    @test_int [1/(a - b*cos(x)^8), x, 9, -(atan((sqrt(a^(1/4) - b^(1/4))*cot(x))/a^(1/8))/(4*a^(7/8)*sqrt(a^(1/4) - b^(1/4)))) - atan((sqrt(a^(1/4) - im*b^(1/4))*cot(x))/a^(1/8))/(4*a^(7/8)*sqrt(a^(1/4) - im*b^(1/4))) - atan((sqrt(a^(1/4) + im*b^(1/4))*cot(x))/a^(1/8))/(4*a^(7/8)*sqrt(a^(1/4) + im*b^(1/4))) - atan((sqrt(a^(1/4) + b^(1/4))*cot(x))/a^(1/8))/(4*a^(7/8)*sqrt(a^(1/4) + b^(1/4)))]


    @test_int [1/(1 + cos(x)^5), x, 11, (2*atan(sqrt((1 - (-1)^(2/5))/(1 + (-1)^(2/5)))*tan(x/2)))/(5*sqrt(1 - (-1)^(4/5))) + (2*atan(sqrt((1 - (-1)^(4/5))/(1 + (-1)^(4/5)))*tan(x/2)))/(5*sqrt(1 + (-1)^(3/5))) - (2*atanh(tan(x/2)/sqrt(-((1 - (-1)^(1/5))/(1 + (-1)^(1/5))))))/(5*sqrt(-1 + (-1)^(2/5))) - (2*sqrt(-((1 + (-1)^(3/5))/(1 - (-1)^(3/5))))*atanh(sqrt(-((1 + (-1)^(3/5))/(1 - (-1)^(3/5))))*tan(x/2)))/(5*(1 + (-1)^(3/5))) + sin(x)/(5*(1 + cos(x)))]
    @test_int [1/(1 + cos(x)^6), x, 7, atan(tan(x)/sqrt(2))/(3*sqrt(2)) + atan(tan(x)/sqrt(1 - (-1)^(1/3)))/(3*sqrt(1 - (-1)^(1/3))) + atan(tan(x)/sqrt(1 + (-1)^(2/3)))/(3*sqrt(1 + (-1)^(2/3))), x/(3*sqrt(2)) - atan(sqrt(1 - (-1)^(1/3))*cot(x))/(3*sqrt(1 - (-1)^(1/3))) - atan(sqrt(1 + (-1)^(2/3))*cot(x))/(3*sqrt(1 + (-1)^(2/3))) - atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2))/(3*sqrt(2))]
    @test_int [1/(1 + cos(x)^8), x, 9, -(atan(sqrt(1 - (-1)^(1/4))*cot(x))/(4*sqrt(1 - (-1)^(1/4)))) - atan(sqrt(1 + (-1)^(1/4))*cot(x))/(4*sqrt(1 + (-1)^(1/4))) - atan(sqrt(1 - (-1)^(3/4))*cot(x))/(4*sqrt(1 - (-1)^(3/4))) - atan(sqrt(1 + (-1)^(3/4))*cot(x))/(4*sqrt(1 + (-1)^(3/4)))]

    @test_int [1/(1 - cos(x)^5), x, 11, (2*atan(sqrt((1 - (-1)^(1/5))/(1 + (-1)^(1/5)))*tan(x/2)))/(5*sqrt(1 - (-1)^(2/5))) + (2*atan(sqrt((1 - (-1)^(3/5))/(1 + (-1)^(3/5)))*tan(x/2)))/(5*sqrt(1 + (-1)^(1/5))) - (2*atanh(tan(x/2)/sqrt(-((1 - (-1)^(2/5))/(1 + (-1)^(2/5))))))/(5*sqrt(-1 + (-1)^(4/5))) + (2*atanh(sqrt(-((1 + (-1)^(4/5))/(1 - (-1)^(4/5))))*tan(x/2)))/(5*sqrt(-1 - (-1)^(3/5))) - sin(x)/(5*(1 - cos(x)))]
    @test_int [1/(1 - cos(x)^6), x, 8, -(atan(sqrt(1 + (-1)^(1/3))*cot(x))/(3*sqrt(1 + (-1)^(1/3)))) - atan(sqrt(1 - (-1)^(2/3))*cot(x))/(3*sqrt(1 - (-1)^(2/3))) - cot(x)/3]
    @test_int [1/(1 - cos(x)^8), x, 10, x/(4*sqrt(2)) - atan(sqrt(1 - im)*cot(x))/(4*sqrt(1 - im)) - atan(sqrt(1 + im)*cot(x))/(4*sqrt(1 + im)) - atan((cos(x)*sin(x))/(1 + sqrt(2) + cos(x)^2))/(4*sqrt(2)) - cot(x)/4]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^2)^p=#


    @test_int [tan(x)/(1 + cos(x)^2), x, 4, -log(cos(x)) + (1/2)*log(1 + cos(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tan(x)*sqrt(a + b*cos(x)^2), x, 4, sqrt(a)*atanh(sqrt(a + b*cos(x)^2)/sqrt(a)) - sqrt(a + b*cos(x)^2)]


    @test_int [tan(x)*sqrt(1 - cos(x)^2), x, 5, atanh(sqrt(sin(x)^2)) - sqrt(sin(x)^2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(x)/sqrt(a + b*cos(x)^2), x, 3, atanh(sqrt(a + b*cos(x)^2)/sqrt(a))/sqrt(a)]
    @test_int [tan(x)/sqrt(1 + cos(x)^2), x, 3, atanh(sqrt(1 + cos(x)^2))]


    @test_int [tan(x)/sqrt(1 - cos(x)^2), x, 4, atanh(sqrt(sin(x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^3)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^3)^p=#


    @test_int [tan(x)^3/(a + b*cos(x)^3), x, 11, -((b^(2/3)*atan((a^(1/3) - 2*b^(1/3)*cos(x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(5/3))) + log(cos(x))/a + (b^(2/3)*log(a^(1/3) + b^(1/3)*cos(x)))/(3*a^(5/3)) - (b^(2/3)*log(a^(2/3) - a^(1/3)*b^(1/3)*cos(x) + b^(2/3)*cos(x)^2))/(6*a^(5/3)) - log(a + b*cos(x)^3)/(3*a) + sec(x)^2/(2*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^3)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tan(x)*sqrt(a + b*cos(x)^3), x, 5, (2/3)*sqrt(a)*atanh(sqrt(a + b*cos(x)^3)/sqrt(a)) - (2/3)*sqrt(a + b*cos(x)^3)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(x)/sqrt(a + b*cos(x)^3), x, 4, (2*atanh(sqrt(a + b*cos(x)^3)/sqrt(a)))/(3*sqrt(a))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^4)^p=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^4)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^4)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tan(x)*sqrt(a + b*cos(x)^4), x, 5, (1/2)*sqrt(a)*atanh(sqrt(a + b*cos(x)^4)/sqrt(a)) - (1/2)*sqrt(a + b*cos(x)^4)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(x)/sqrt(a + b*cos(x)^4), x, 4, (2*atanh(sqrt(a + b*cos(x)^4)/sqrt(a)))/(4*sqrt(a))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^n)^p=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cos(e+f*x)^n)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tan(x)*sqrt(a + b*cos(x)^n), x, 5, (2*sqrt(a)*atanh(sqrt(a + b*cos(x)^n)/sqrt(a)))/n - (2*sqrt(a + b*cos(x)^n))/n]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(x)/sqrt(a + b*cos(x)^n), x, 4, (2*atanh(sqrt(a + b*cos(x)^n)/sqrt(a)))/(sqrt(a)*n)]
    end
