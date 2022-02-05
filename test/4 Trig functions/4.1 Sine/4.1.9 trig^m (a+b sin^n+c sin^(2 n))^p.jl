@testset "4.1.9 trig^m (a+b sin^n+c sin^(2 n))^p" begin
    @variables a, b, c, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*Trig(d+e*x)^m*(a+b*sin(d+e*x)^n+c*sin(d+e*x)^(2*n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sin(d+e*x)^m*(a+b*sin(d+e*x)^n+c*sin(d+e*x)^(2*n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(d+e*x)^m*(a+b*sin(d+e*x)+c*sin(d+e*x)^2)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(x)^4/(a + b*sin(x) + c*sin(x)^2), x, 12, x/(2*c) + ((b^2 - a*c)*x)/c^3 - (sqrt(2)*(b^3 - 2*a*b*c - (b^4 - 4*a*b^2*c + 2*a^2*c^2)/sqrt(b^2 - 4*a*c))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/(c^3*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c))) - (sqrt(2)*(b^3 - 2*a*b*c + (b^4 - 4*a*b^2*c + 2*a^2*c^2)/sqrt(b^2 - 4*a*c))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/(c^3*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c))) + (b*cos(x))/c^2 - (cos(x)*sin(x))/(2*c)]
    @test_int [sin(x)^3/(a + b*sin(x) + c*sin(x)^2), x, 10, -((b*x)/c^2) + (sqrt(2)*b*(b - (a*c)/b - b^2/sqrt(b^2 - 4*a*c) + (3*a*c)/sqrt(b^2 - 4*a*c))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/(c^2*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c))) + (sqrt(2)*b*(b - (a*c)/b + b^2/sqrt(b^2 - 4*a*c) - (3*a*c)/sqrt(b^2 - 4*a*c))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/(c^2*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c))) - cos(x)/c]
    @test_int [sin(x)^2/(a + b*sin(x) + c*sin(x)^2), x, 9, x/c - (sqrt(2)*(b - (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/(c*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c))) - (sqrt(2)*(b + (b^2 - 2*a*c)/sqrt(b^2 - 4*a*c))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/(c*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))]
    @test_int [sin(x)^1/(a + b*sin(x) + c*sin(x)^2), x, 8, (sqrt(2)*(1 - b/sqrt(b^2 - 4*a*c))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)) + (sqrt(2)*(1 + b/sqrt(b^2 - 4*a*c))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c))]
    @test_int [sin(x)^0/(a + b*sin(x) + c*sin(x)^2), x, 7, (2*sqrt(2)*c*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/(sqrt(b^2 - 4*a*c)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c))) - (2*sqrt(2)*c*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/(sqrt(b^2 - 4*a*c)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))]
    @test_int [csc(x)^1/(a + b*sin(x) + c*sin(x)^2), x, 10, -((sqrt(2)*c*(1 + b/sqrt(b^2 - 4*a*c))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/(a*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))) - (sqrt(2)*c*(1 - b/sqrt(b^2 - 4*a*c))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/(a*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c))) - atanh(cos(x))/a]
    @test_int [csc(x)^2/(a + b*sin(x) + c*sin(x)^2), x, 12, (sqrt(2)*b*c*(1 + (b^2 - 2*a*c)/(b*sqrt(b^2 - 4*a*c)))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/(a^2*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c))) + (sqrt(2)*b*c*(1 - (b^2 - 2*a*c)/(b*sqrt(b^2 - 4*a*c)))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/(a^2*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c))) + (b*atanh(cos(x)))/a^2 - cot(x)/a]
    @test_int [csc(x)^3/(a + b*sin(x) + c*sin(x)^2), x, 14, -((sqrt(2)*c*(b^3 - 3*a*b*c + sqrt(b^2 - 4*a*c)*(b^2 - a*c))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/(a^3*sqrt(b^2 - 4*a*c)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))) + (sqrt(2)*c*(b^3 - 3*a*b*c - sqrt(b^2 - 4*a*c)*(b^2 - a*c))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/(a^3*sqrt(b^2 - 4*a*c)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c))) - atanh(cos(x))/(2*a) - ((b^2 - a*c)*atanh(cos(x)))/a^3 + (b*cot(x))/a^2 - (cot(x)*csc(x))/(2*a)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*sin(d+e*x)^m*(a+b*sin(d+e*x)^2+c*sin(d+e*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(d+e*x)^m*(a+b*sin(d+e*x)^n+c*sin(d+e*x)^(2*n))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(d+e*x)^m*(a+b*sin(d+e*x)+c*sin(d+e*x)^2)^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(x)^3/(a + b*sin(x) + c*sin(x)^2), x, 7, ((b^2 - 2*c*(a + c))*atanh((b + 2*c*sin(x))/sqrt(b^2 - 4*a*c)))/(c^2*sqrt(b^2 - 4*a*c)) + (b*log(a + b*sin(x) + c*sin(x)^2))/(2*c^2) - sin(x)/c]
    @test_int [cos(x)^2/(a + b*sin(x) + c*sin(x)^2), x, 9, -(x/c) - (sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/(c*sqrt(b^2 - 4*a*c)) + (sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/(c*sqrt(b^2 - 4*a*c))]
    @test_int [cos(x)^1/(a + b*sin(x) + c*sin(x)^2), x, 3, -((2*atanh((b + 2*c*sin(x))/sqrt(b^2 - 4*a*c)))/sqrt(b^2 - 4*a*c))]
    @test_int [sec(x)^1/(a + b*sin(x) + c*sin(x)^2), x, 9, ((b^2 - 2*a*c - 2*c^2)*atanh((b + 2*c*sin(x))/sqrt(b^2 - 4*a*c)))/((a - b + c)*(a + b + c)*sqrt(b^2 - 4*a*c)) - log(1 - sin(x))/(2*(a + b + c)) + log(1 + sin(x))/(2*(a - b + c)) - (b*log(a + b*sin(x) + c*sin(x)^2))/(2*(a - b + c)*(a + b + c))]
    @test_int [sec(x)^2/(a + b*sin(x) + c*sin(x)^2), x, 11, -((sqrt(2)*b*c*(1 + (b^2 - 2*c*(a + c))/(b*sqrt(b^2 - 4*a*c)))*atan((2*c + (b - sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))))/((a - b + c)*(a + b + c)*sqrt(b^2 - 2*c*(a + c) - b*sqrt(b^2 - 4*a*c)))) - (sqrt(2)*b*c*(1 - (b^2 - 2*c*(a + c))/(b*sqrt(b^2 - 4*a*c)))*atan((2*c + (b + sqrt(b^2 - 4*a*c))*tan(x/2))/(sqrt(2)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c)))))/((a - b + c)*(a + b + c)*sqrt(b^2 - 2*c*(a + c) + b*sqrt(b^2 - 4*a*c))) + cos(x)/(2*(a + b + c)*(1 - sin(x))) - cos(x)/(2*(a - b + c)*(1 + sin(x)))]
    @test_int [sec(x)^3/(a + b*sin(x) + c*sin(x)^2), x, 10, -(((b^4 + 2*c^2*(a + c)^2 - 2*b^2*c*(2*a + c))*atanh((b + 2*c*sin(x))/sqrt(b^2 - 4*a*c)))/(sqrt(b^2 - 4*a*c)*(a^2 - b^2 + 2*a*c + c^2)^2)) - ((a + 2*b + 3*c)*log(1 - sin(x)))/(4*(a + b + c)^2) + ((a - 2*b + 3*c)*log(1 + sin(x)))/(4*(a - b + c)^2) + (b*(b^2 - 2*c*(a + c))*log(a + b*sin(x) + c*sin(x)^2))/(2*(a^2 - b^2 + 2*a*c + c^2)^2) - (sec(x)^2*(b - (a + c)*sin(x)))/(2*(a - b + c)*(a + b + c))]


    @test_int [cos(x)/(-6 + sin(x) + sin(x)^2), x, 4, (1/5)*log(2 - sin(x)) - (1/5)*log(3 + sin(x))]
    @test_int [cos(x)/(2 - 3*sin(x) + sin(x)^2), x, 4, -log(1 - sin(x)) + log(2 - sin(x))]
    @test_int [cos(x)/(-5 + 4*sin(x) + sin(x)^2), x, 4, (1/6)*log(1 - sin(x)) - (1/6)*log(5 + sin(x))]
    @test_int [cos(x)/(10 - 6*sin(x) + sin(x)^2), x, 3, -atan(3 - sin(x))]
    @test_int [cos(x)/(2 + 2*sin(x) + sin(x)^2), x, 3, atan(1 + sin(x))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cos(d+e*x)^m*(a+b*sin(d+e*x)^2+c*sin(d+e*x)^4)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*tan(d+e*x)^m*(a+b*sin(d+e*x)^n+c*sin(d+e*x)^(2*n))^p=#
    end
