@testset "4.2.9 trig^m (a+b cos^n+c cos^(2 n))^p" begin
    (a, b, c, x, ) = @variables a b c x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*Trig(d+e*x)^m*(a+b*cos(d+e*x)^n+c*cos(d+e*x)^(2*n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sin(d+e*x)^m*(a+b*cos(d+e*x)^n+c*cos(d+e*x)^(2*n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(d+e*x)^m*(a+b*cos(d+e*x)+c*cos(d+e*x)^2)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(x)^5/(a + b*cos(x) + c*cos(x)^2), x, 7, ((b^4 + 2*c^2*(a + c)^2 - 2*b^2*c*(2*a + c))*atanh((b + 2*c*cos(x))/sqrt(b^2 - 4*a*c)))/(c^4*sqrt(b^2 - 4*a*c)) - ((b^2 - c*(a + 2*c))*cos(x))/c^3 + (b*cos(x)^2)/(2*c^2) - cos(x)^3/(3*c) + (b*(b^2 - 2*c*(a + c))*log(a + b*cos(x) + c*cos(x)^2))/(2*c^4)]
    @test_int [sin(x)^3/(a + b*cos(x) + c*cos(x)^2), x, 7, -(((b^2 - 2*c*(a + c))*atanh((b + 2*c*cos(x))/sqrt(b^2 - 4*a*c)))/(c^2*sqrt(b^2 - 4*a*c))) + cos(x)/c - (b*log(a + b*cos(x) + c*cos(x)^2))/(2*c^2)]
    @test_int [sin(x)^1/(a + b*cos(x) + c*cos(x)^2), x, 3, (2*atanh((b + 2*c*cos(x))/sqrt(b^2 - 4*a*c)))/sqrt(b^2 - 4*a*c)]
    @test_int [csc(x)^1/(a + b*cos(x) + c*cos(x)^2), x, 9, -(((b^2 - 2*a*c - 2*c^2)*atanh((b + 2*c*cos(x))/sqrt(b^2 - 4*a*c)))/((a - b + c)*(a + b + c)*sqrt(b^2 - 4*a*c))) + log(1 - cos(x))/(2*(a + b + c)) - log(1 + cos(x))/(2*(a - b + c)) + (b*log(a + b*cos(x) + c*cos(x)^2))/(2*(a - b + c)*(a + b + c))]
    @test_int [csc(x)^3/(a + b*cos(x) + c*cos(x)^2), x, 10, ((b^4 + 2*c^2*(a + c)^2 - 2*b^2*c*(2*a + c))*atanh((b + 2*c*cos(x))/sqrt(b^2 - 4*a*c)))/(sqrt(b^2 - 4*a*c)*(a^2 - b^2 + 2*a*c + c^2)^2) + ((b - (a + c)*cos(x))*csc(x)^2)/(2*(a - b + c)*(a + b + c)) + ((a + 2*b + 3*c)*log(1 - cos(x)))/(4*(a + b + c)^2) - ((a - 2*b + 3*c)*log(1 + cos(x)))/(4*(a - b + c)^2) - (b*(b^2 - 2*c*(a + c))*log(a + b*cos(x) + c*cos(x)^2))/(2*(a^2 - b^2 + 2*a*c + c^2)^2)]

    @test_int [sin(x)^4/(a + b*cos(x) + c*cos(x)^2), x, 10, If(13<9, x/(2*c) + ((b^2 - c*(a + 2*c))*x)/c^3 - (2*(b*(b^2 - 2*c*(a + c)) - (b^4 + 2*c^2*(a + c)^2 - 2*b^2*c*(2*a + c))/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(c^3*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) - (2*(b^4 + 2*c^2*(a + c)^2 - 2*b^2*c*(2*a + c) + b^3*sqrt(b^2 - 4*a*c) - 2*b*c*(a + c)*sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(c^3*sqrt(b^2 - 4*a*c)*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c))) - (b*sin(x))/c^2 + (cos(x)*sin(x))/(2*c), x/(2*c) + ((b^2 - c*(a + 2*c))*x)/c^3 + (2*(b^2*(b^2 - 2*c*(a + c)) - b*sqrt(b^2 - 4*a*c)*(b^2 - 2*c*(a + c)) - 2*c*(a*b^2 - c*(a + c)^2))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(c^3*sqrt(b^2 - 4*a*c)*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) - (2*(b^4 + 2*c^2*(a + c)^2 - 2*b^2*c*(2*a + c) + b^3*sqrt(b^2 - 4*a*c) - 2*b*c*(a + c)*sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(c^3*sqrt(b^2 - 4*a*c)*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c))) - (b*sin(x))/c^2 + (cos(x)*sin(x))/(2*c))]
    @test_int [sin(x)^2/(a + b*cos(x) + c*cos(x)^2), x, 7, -(x/c) + (2*(b - (b^2 - 2*c*(a + c))/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(c*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) + (2*(b + (b^2 - 2*c*(a + c))/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(c*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c)))]
    @test_int [csc(x)^2/(a + b*cos(x) + c*cos(x)^2), x, 9, -((2*b*c*(1 + (b^2 - 2*c*(a + c))/(b*sqrt(b^2 - 4*a*c)))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/((a - b + c)*(a + b + c)*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c)))) - (2*b*c*(1 - (b^2 - 2*c*(a + c))/(b*sqrt(b^2 - 4*a*c)))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/((a - b + c)*(a + b + c)*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c))) - sin(x)/(2*(a + b + c)*(1 - cos(x))) + sin(x)/(2*(a - b + c)*(1 + cos(x)))]


    @test_int [sin(x)/(-2 + cos(x) + cos(x)^2), x, 4, (-(1/3))*log(1 - cos(x)) + (1/3)*log(2 + cos(x))]
    @test_int [sin(x)/(4 - 5*cos(x) + cos(x)^2), x, 4, (1/3)*log(1 - cos(x)) - (1/3)*log(4 - cos(x))]
    @test_int [sin(x)/(3 - 2*cos(x) + cos(x)^2), x, 3, atan((1 - cos(x))/sqrt(2))/sqrt(2)]
    @test_int [sin(x)/(13 - 4*cos(x) + cos(x)^2)^2, x, 4, (-(1/54))*atan((1/3)*(-2 + cos(x))) + (2 - cos(x))/(18*(13 - 4*cos(x) + cos(x)^2))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*sin(d+e*x)^m*(a+b*cos(d+e*x)^2+c*cos(d+e*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(d+e*x)^m*(a+b*cos(d+e*x)^n+c*cos(d+e*x)^(2*n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(d+e*x)^m*(a+b*cos(d+e*x)+c*cos(d+e*x)^2)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(x)^4/(a + b*cos(x) + c*cos(x)^2), x, 10, x/(2*c) + ((b^2 - a*c)*x)/c^3 - (2*(b^3 - 2*a*b*c - (b^4 - 4*a*b^2*c + 2*a^2*c^2)/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(c^3*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) - (2*(b^3 - 2*a*b*c + (b^4 - 4*a*b^2*c + 2*a^2*c^2)/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(c^3*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c))) - (b*sin(x))/c^2 + (cos(x)*sin(x))/(2*c)]
    @test_int [cos(x)^3/(a + b*cos(x) + c*cos(x)^2), x, 8, -((b*x)/c^2) + (2*(b^2 - a*c - b^3/sqrt(b^2 - 4*a*c) + (3*a*b*c)/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(c^2*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) + (2*(b^2 - a*c + b^3/sqrt(b^2 - 4*a*c) - (3*a*b*c)/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(c^2*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c))) + sin(x)/c]
    @test_int [cos(x)^2/(a + b*cos(x) + c*cos(x)^2), x, 7, x/c - (2*(b - (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(c*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) - (2*(b + (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(c*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c)))]
    @test_int [cos(x)^1/(a + b*cos(x) + c*cos(x)^2), x, 6, (2*(1 - b/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) + (2*(1 + b/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c)))]
    @test_int [cos(x)^0/(a + b*cos(x) + c*cos(x)^2), x, 5, (4*c*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) - (4*c*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(sqrt(b^2 - 4*a*c)*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c)))]
    @test_int [sec(x)^1/(a + b*cos(x) + c*cos(x)^2), x, 8, -((2*c*(1 + b/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(a*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c)))) - (2*c*(1 - b/sqrt(b^2 - 4*a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(a*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c))) + atanh(sin(x))/a]
    @test_int [sec(x)^2/(a + b*cos(x) + c*cos(x)^2), x, 10, (2*b*c*(1 + (b^2 - 2*a*c)/(b*sqrt(b^2 - 4*a*c)))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(a^2*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c))) + (2*b*c*(1 - (b^2 - 2*a*c)/(b*sqrt(b^2 - 4*a*c)))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(a^2*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c))) - (b*atanh(sin(x)))/a^2 + tan(x)/a]
    @test_int [sec(x)^3/(a + b*cos(x) + c*cos(x)^2), x, 12, -((2*c*(b^3 - 3*a*b*c + sqrt(b^2 - 4*a*c)*(b^2 - a*c))*atan((sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c - sqrt(b^2 - 4*a*c))))/(a^3*sqrt(b^2 - 4*a*c)*sqrt(b - 2*c - sqrt(b^2 - 4*a*c))*sqrt(b + 2*c - sqrt(b^2 - 4*a*c)))) + (2*c*(b^3 - 3*a*b*c - sqrt(b^2 - 4*a*c)*(b^2 - a*c))*atan((sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*tan(x/2))/sqrt(b + 2*c + sqrt(b^2 - 4*a*c))))/(a^3*sqrt(b^2 - 4*a*c)*sqrt(b - 2*c + sqrt(b^2 - 4*a*c))*sqrt(b + 2*c + sqrt(b^2 - 4*a*c))) + atanh(sin(x))/(2*a) + ((b^2 - a*c)*atanh(sin(x)))/a^3 - (b*tan(x))/a^2 + (sec(x)*tan(x))/(2*a)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cos(d+e*x)^m*(a+b*cos(d+e*x)^2+c*cos(d+e*x)^4)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*tan(d+e*x)^m*(a+b*cos(d+e*x)^n+c*cos(d+e*x)^(2*n))^p=#
    end
