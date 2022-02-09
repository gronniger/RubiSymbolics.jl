@testset "4.4.7 (d trig)^m (a+b (c cot)^n)^p" begin
    (A, C, a, b, c, d, x, ) = @variables A C a b c d x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(b*cot(e+f*x)^n)^p=#


    #= ::Title:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*cot(e+f*x)^n)^p=#


    #= ::Title:: =#
    #=Integrands*of*the*form*cos(e+f*x)^m*(a+b*cot(e+f*x)^n)^p=#


    #= ::Title:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cot(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*cot(e+f*x)^2)^p=#


    @test_int [(A + C*cot(c + d*x)^2)/sqrt(b*tan(c + d*x)), x, 15, -(((A - C)*atan(1 - (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*sqrt(b)*d)) + ((A - C)*atan(1 + (sqrt(2)*sqrt(b*tan(c + d*x)))/sqrt(b)))/(sqrt(2)*sqrt(b)*d) - ((A - C)*log(sqrt(b) + sqrt(b)*tan(c + d*x) - sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*sqrt(b)*d) + ((A - C)*log(sqrt(b) + sqrt(b)*tan(c + d*x) + sqrt(2)*sqrt(b*tan(c + d*x))))/(2*sqrt(2)*sqrt(b)*d) - (2*b*C)/(3*d*(b*tan(c + d*x))^(3/2))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(a+b*cot(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(a+b*cot(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(a+b*cot(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(a + b*cot(c + d*x)^2)^1, x, 3, a*x - b*x - (b*cot(c + d*x))/d]


    @test_int [(a + b*cot(c + d*x)^2)^2, x, 4, (a - b)^2*x - ((2*a - b)*b*cot(c + d*x))/d - (b^2*cot(c + d*x)^3)/(3*d)]


    @test_int [(a + b*cot(c + d*x)^2)^3, x, 4, (a - b)^3*x - (b*(3*a^2 - 3*a*b + b^2)*cot(c + d*x))/d - ((3*a - b)*b^2*cot(c + d*x)^3)/(3*d) - (b^3*cot(c + d*x)^5)/(5*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/(a + b*cot(c + d*x)^2)^1, x, 3, x/(a - b) + (sqrt(b)*atan((sqrt(b)*cot(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)*d)]


    @test_int [1/(a + b*cot(c + d*x)^2)^2, x, 5, x/(a - b)^2 + ((3*a - b)*sqrt(b)*atan((sqrt(b)*cot(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^2*d) + (b*cot(c + d*x))/(2*a*(a - b)*d*(a + b*cot(c + d*x)^2))]


    @test_int [1/(a + b*cot(c + d*x)^2)^3, x, 6, x/(a - b)^3 + (sqrt(b)*(15*a^2 - 10*a*b + 3*b^2)*atan((sqrt(b)*cot(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^3*d) + (b*cot(c + d*x))/(4*a*(a - b)*d*(a + b*cot(c + d*x)^2)^2) + ((7*a - 3*b)*b*cot(c + d*x))/(8*a^2*(a - b)^2*d*(a + b*cot(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(a+b*cot(e+f*x)^2)^(p/2)*with*a-b=0=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(1 + cot(x)^2)^(3/2), x, 4, (-(1/2))*asinh(cot(x)) - (1/2)*cot(x)*sqrt(csc(x)^2)]
    @test_int [sqrt(1 + cot(x)^2), x, 3, -asinh(cot(x))]
    @test_int [1/sqrt(1 + cot(x)^2), x, 3, -(cot(x)/sqrt(csc(x)^2))]


    @test_int [(-1 - cot(x)^2)^(3/2), x, 5, (-(1/2))*atan(cot(x)/sqrt(-csc(x)^2)) + (1/2)*cot(x)*sqrt(-csc(x)^2)]
    @test_int [sqrt(-1 - cot(x)^2), x, 4, atan(cot(x)/sqrt(-csc(x)^2))]
    @test_int [1/sqrt(-1 - cot(x)^2), x, 3, -(cot(x)/sqrt(-csc(x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cot(x)^3/sqrt(a + a*cot(x)^2), x, 4, -(1/sqrt(a*csc(x)^2)) - sqrt(a*csc(x)^2)/a]
    @test_int [cot(x)^2/sqrt(a + a*cot(x)^2), x, 5, cot(x)/sqrt(a*csc(x)^2) - (atanh(cos(x))*csc(x))/sqrt(a*csc(x)^2)]
    @test_int [cot(x)^1/sqrt(a + a*cot(x)^2), x, 3, 1/sqrt(a*csc(x)^2)]
    @test_int [tan(x)^1/sqrt(a + a*cot(x)^2), x, 5, atanh(sqrt(a*csc(x)^2)/sqrt(a))/sqrt(a) - 1/sqrt(a*csc(x)^2)]
    @test_int [tan(x)^2/sqrt(a + a*cot(x)^2), x, 5, cot(x)/sqrt(a*csc(x)^2) + (csc(x)*sec(x))/sqrt(a*csc(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(a+b*cot(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cot(x)^3*sqrt(a + b*cot(x)^2), x, 6, (-sqrt(a - b))*atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b)) + sqrt(a + b*cot(x)^2) - (a + b*cot(x)^2)^(3/2)/(3*b)]
    @test_int [cot(x)^1*sqrt(a + b*cot(x)^2), x, 5, sqrt(a - b)*atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b)) - sqrt(a + b*cot(x)^2)]
    @test_int [tan(x)^1*sqrt(a + b*cot(x)^2), x, 7, sqrt(a)*atanh(sqrt(a + b*cot(x)^2)/sqrt(a)) - sqrt(a - b)*atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))]

    @test_int [cot(x)^2*sqrt(a + b*cot(x)^2), x, 7, sqrt(a - b)*atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2)) - ((a - 2*b)*atanh((sqrt(b)*cot(x))/sqrt(a + b*cot(x)^2)))/(2*sqrt(b)) - (1/2)*cot(x)*sqrt(a + b*cot(x)^2)]
    @test_int [cot(x)^0*sqrt(a + b*cot(x)^2), x, 6, (-sqrt(a - b))*atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2)) - sqrt(b)*atanh((sqrt(b)*cot(x))/sqrt(a + b*cot(x)^2))]
    @test_int [tan(x)^2*sqrt(a + b*cot(x)^2), x, 5, sqrt(a - b)*atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2)) + sqrt(a + b*cot(x)^2)*tan(x)]
    @test_int [tan(x)^4*sqrt(a + b*cot(x)^2), x, 6, (-sqrt(a - b))*atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2)) - ((3*a - b)*sqrt(a + b*cot(x)^2)*tan(x))/(3*a) + (1/3)*sqrt(a + b*cot(x)^2)*tan(x)^3]


    @test_int [cot(x)^3*(a + b*cot(x)^2)^(3/2), x, 7, (-(a - b)^(3/2))*atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b)) + (a - b)*sqrt(a + b*cot(x)^2) + (1/3)*(a + b*cot(x)^2)^(3/2) - (a + b*cot(x)^2)^(5/2)/(5*b)]
    @test_int [cot(x)^2*(a + b*cot(x)^2)^(3/2), x, 8, (a - b)^(3/2)*atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2)) - ((3*a^2 - 12*a*b + 8*b^2)*atanh((sqrt(b)*cot(x))/sqrt(a + b*cot(x)^2)))/(8*sqrt(b)) - (1/8)*(5*a - 4*b)*cot(x)*sqrt(a + b*cot(x)^2) - (1/4)*b*cot(x)^3*sqrt(a + b*cot(x)^2)]
    @test_int [cot(x)^1*(a + b*cot(x)^2)^(3/2), x, 6, (a - b)^(3/2)*atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b)) - (a - b)*sqrt(a + b*cot(x)^2) - (1/3)*(a + b*cot(x)^2)^(3/2)]
    @test_int [tan(x)^1*(a + b*cot(x)^2)^(3/2), x, 8, a^(3/2)*atanh(sqrt(a + b*cot(x)^2)/sqrt(a)) - (a - b)^(3/2)*atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b)) - b*sqrt(a + b*cot(x)^2)]
    @test_int [tan(x)^2*(a + b*cot(x)^2)^(3/2), x, 7, (a - b)^(3/2)*atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2)) - b^(3/2)*atanh((sqrt(b)*cot(x))/sqrt(a + b*cot(x)^2)) + a*sqrt(a + b*cot(x)^2)*tan(x)]


    @test_int [(a + b*cot(c + d*x)^2)^(5/2), x, 8, -(((a - b)^(5/2)*atan((sqrt(a - b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2)))/d) - (sqrt(b)*(15*a^2 - 20*a*b + 8*b^2)*atanh((sqrt(b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2)))/(8*d) - ((7*a - 4*b)*b*cot(c + d*x)*sqrt(a + b*cot(c + d*x)^2))/(8*d) - (b*cot(c + d*x)*(a + b*cot(c + d*x)^2)^(3/2))/(4*d)]
    @test_int [(a + b*cot(c + d*x)^2)^(3/2), x, 7, -(((a - b)^(3/2)*atan((sqrt(a - b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2)))/d) - ((3*a - 2*b)*sqrt(b)*atanh((sqrt(b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2)))/(2*d) - (b*cot(c + d*x)*sqrt(a + b*cot(c + d*x)^2))/(2*d)]
    @test_int [(a + b*cot(c + d*x)^2)^(1/2), x, 6, -((sqrt(a - b)*atan((sqrt(a - b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2)))/d) - (sqrt(b)*atanh((sqrt(b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2)))/d]
    @test_int [1/(a + b*cot(c + d*x)^2)^(1/2), x, 3, -(atan((sqrt(a - b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2))/(sqrt(a - b)*d))]
    @test_int [1/(a + b*cot(c + d*x)^2)^(3/2), x, 4, -(atan((sqrt(a - b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2))/((a - b)^(3/2)*d)) + (b*cot(c + d*x))/(a*(a - b)*d*sqrt(a + b*cot(c + d*x)^2))]
    @test_int [1/(a + b*cot(c + d*x)^2)^(5/2), x, 6, -(atan((sqrt(a - b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2))/((a - b)^(5/2)*d)) + (b*cot(c + d*x))/(3*a*(a - b)*d*(a + b*cot(c + d*x)^2)^(3/2)) + ((5*a - 2*b)*b*cot(c + d*x))/(3*a^2*(a - b)^2*d*sqrt(a + b*cot(c + d*x)^2))]
    @test_int [1/(a + b*cot(c + d*x)^2)^(7/2), x, 7, -(atan((sqrt(a - b)*cot(c + d*x))/sqrt(a + b*cot(c + d*x)^2))/((a - b)^(7/2)*d)) + (b*cot(c + d*x))/(5*a*(a - b)*d*(a + b*cot(c + d*x)^2)^(5/2)) + ((9*a - 4*b)*b*cot(c + d*x))/(15*a^2*(a - b)^2*d*(a + b*cot(c + d*x)^2)^(3/2)) + (b*(33*a^2 - 26*a*b + 8*b^2)*cot(c + d*x))/(15*a^3*(a - b)^3*d*sqrt(a + b*cot(c + d*x)^2))]


    @test_int [(1 - cot(x)^2)^(3/2), x, 6, (5/2)*asin(cot(x)) - 2*sqrt(2)*atan((sqrt(2)*cot(x))/sqrt(1 - cot(x)^2)) + (1/2)*cot(x)*sqrt(1 - cot(x)^2)]
    @test_int [sqrt(1 - cot(x)^2), x, 5, asin(cot(x)) - sqrt(2)*atan((sqrt(2)*cot(x))/sqrt(1 - cot(x)^2))]
    @test_int [1/sqrt(1 - cot(x)^2), x, 3, -(atan((sqrt(2)*cot(x))/sqrt(1 - cot(x)^2))/sqrt(2))]


    @test_int [(-1 + cot(x)^2)^(3/2), x, 7, (5/2)*atanh(cot(x)/sqrt(-1 + cot(x)^2)) - 2*sqrt(2)*atanh((sqrt(2)*cot(x))/sqrt(-1 + cot(x)^2)) - (1/2)*cot(x)*sqrt(-1 + cot(x)^2)]
    @test_int [sqrt(-1 + cot(x)^2), x, 6, -atanh(cot(x)/sqrt(-1 + cot(x)^2)) + sqrt(2)*atanh((sqrt(2)*cot(x))/sqrt(-1 + cot(x)^2))]
    @test_int [1/sqrt(-1 + cot(x)^2), x, 3, -(atanh((sqrt(2)*cot(x))/sqrt(-1 + cot(x)^2))/sqrt(2))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cot(x)^3/sqrt(a + b*cot(x)^2), x, 5, -(atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))/sqrt(a - b)) - sqrt(a + b*cot(x)^2)/b]
    @test_int [cot(x)^2/sqrt(a + b*cot(x)^2), x, 6, atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2))/sqrt(a - b) - atanh((sqrt(b)*cot(x))/sqrt(a + b*cot(x)^2))/sqrt(b)]
    @test_int [cot(x)^1/sqrt(a + b*cot(x)^2), x, 4, atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))/sqrt(a - b)]
    @test_int [tan(x)^1/sqrt(a + b*cot(x)^2), x, 7, atanh(sqrt(a + b*cot(x)^2)/sqrt(a))/sqrt(a) - atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))/sqrt(a - b)]
    @test_int [tan(x)^2/sqrt(a + b*cot(x)^2), x, 5, atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2))/sqrt(a - b) + (sqrt(a + b*cot(x)^2)*tan(x))/a]


    @test_int [cot(x)^3/(a + b*cot(x)^2)^(3/2), x, 5, -(atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))/(a - b)^(3/2)) + a/((a - b)*b*sqrt(a + b*cot(x)^2))]
    @test_int [cot(x)^2/(a + b*cot(x)^2)^(3/2), x, 4, atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2))/(a - b)^(3/2) - cot(x)/((a - b)*sqrt(a + b*cot(x)^2))]
    @test_int [cot(x)^1/(a + b*cot(x)^2)^(3/2), x, 5, atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))/(a - b)^(3/2) - 1/((a - b)*sqrt(a + b*cot(x)^2))]
    @test_int [tan(x)^1/(a + b*cot(x)^2)^(3/2), x, 8, atanh(sqrt(a + b*cot(x)^2)/sqrt(a))/a^(3/2) - atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))/(a - b)^(3/2) + b/(a*(a - b)*sqrt(a + b*cot(x)^2))]
    @test_int [tan(x)^2/(a + b*cot(x)^2)^(3/2), x, 6, atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2))/(a - b)^(3/2) + (b*tan(x))/(a*(a - b)*sqrt(a + b*cot(x)^2)) + ((a - 2*b)*sqrt(a + b*cot(x)^2)*tan(x))/(a^2*(a - b))]


    @test_int [cot(x)^3/(a + b*cot(x)^2)^(5/2), x, 6, -(atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))/(a - b)^(5/2)) + a/(3*(a - b)*b*(a + b*cot(x)^2)^(3/2)) + 1/((a - b)^2*sqrt(a + b*cot(x)^2))]
    @test_int [cot(x)^2/(a + b*cot(x)^2)^(5/2), x, 6, atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2))/(a - b)^(5/2) - cot(x)/(3*(a - b)*(a + b*cot(x)^2)^(3/2)) - ((2*a + b)*cot(x))/(3*a*(a - b)^2*sqrt(a + b*cot(x)^2))]
    @test_int [cot(x)^1/(a + b*cot(x)^2)^(5/2), x, 6, atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))/(a - b)^(5/2) - 1/(3*(a - b)*(a + b*cot(x)^2)^(3/2)) - 1/((a - b)^2*sqrt(a + b*cot(x)^2))]
    @test_int [tan(x)^1/(a + b*cot(x)^2)^(5/2), x, 9, atanh(sqrt(a + b*cot(x)^2)/sqrt(a))/a^(5/2) - atanh(sqrt(a + b*cot(x)^2)/sqrt(a - b))/(a - b)^(5/2) + b/(3*a*(a - b)*(a + b*cot(x)^2)^(3/2)) + ((2*a - b)*b)/(a^2*(a - b)^2*sqrt(a + b*cot(x)^2))]
    @test_int [tan(x)^2/(a + b*cot(x)^2)^(5/2), x, 7, atan((sqrt(a - b)*cot(x))/sqrt(a + b*cot(x)^2))/(a - b)^(5/2) + (b*tan(x))/(3*a*(a - b)*(a + b*cot(x)^2)^(3/2)) + ((7*a - 4*b)*b*tan(x))/(3*a^2*(a - b)^2*sqrt(a + b*cot(x)^2)) + ((a - 4*b)*(3*a - 2*b)*sqrt(a + b*cot(x)^2)*tan(x))/(3*a^3*(a - b)^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(a+b*cot(e+f*x)^3)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*cot(e+f*x)^3)^n=#


    @test_int [1/(1 + cot(x)^3), x, 7, x/2 - (1/6)*log(1 + cot(x)) + (1/3)*log(1 - cot(x) + cot(x)^2) + (1/2)*log(sin(x))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(a+b*cot(e+f*x)^4)^p=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(a+b*cot(e+f*x)^4)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cot(e+f*x)^m*(a+b*cot(e+f*x)^4)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cot(x)*sqrt(a + b*cot(x)^4), x, 8, (1/2)*sqrt(b)*atanh((sqrt(b)*cot(x)^2)/sqrt(a + b*cot(x)^4)) + (1/2)*sqrt(a + b)*atanh((a - b*cot(x)^2)/(sqrt(a + b)*sqrt(a + b*cot(x)^4))) - (1/2)*sqrt(a + b*cot(x)^4)]


    @test_int [cot(x)*(a + b*cot(x)^4)^(3/2), x, 9, (1/4)*sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*cot(x)^2)/sqrt(a + b*cot(x)^4)) + (1/2)*(a + b)^(3/2)*atanh((a - b*cot(x)^2)/(sqrt(a + b)*sqrt(a + b*cot(x)^4))) - (1/4)*(2*(a + b) - b*cot(x)^2)*sqrt(a + b*cot(x)^4) - (1/6)*(a + b*cot(x)^4)^(3/2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cot(x)/sqrt(a + b*cot(x)^4), x, 4, atanh((a - b*cot(x)^2)/(sqrt(a + b)*sqrt(a + b*cot(x)^4)))/(2*sqrt(a + b))]


    @test_int [cot(x)/(a + b*cot(x)^4)^(3/2), x, 6, atanh((a - b*cot(x)^2)/(sqrt(a + b)*sqrt(a + b*cot(x)^4)))/(2*(a + b)^(3/2)) - (a + b*cot(x)^2)/(2*a*(a + b)*sqrt(a + b*cot(x)^4))]


    @test_int [cot(x)/(a + b*cot(x)^4)^(5/2), x, 7, atanh((a - b*cot(x)^2)/(sqrt(a + b)*sqrt(a + b*cot(x)^4)))/(2*(a + b)^(5/2)) - (a + b*cot(x)^2)/(6*a*(a + b)*(a + b*cot(x)^4)^(3/2)) - (3*a^2 + b*(5*a + 2*b)*cot(x)^2)/(6*a^2*(a + b)^2*sqrt(a + b*cot(x)^4))]
    end
