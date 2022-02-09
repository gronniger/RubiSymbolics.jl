@testset "1.2.2.8 P(x) (d+e x)^q (a+b x^2+c x^4)^p" begin
    (a, b, c, d, e, x, ) = @variables a b c d e x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*P(x)*(d+e*x)^q*(a+b*x^2+c*x^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d+e*x)^q*(a+b*x^2+c*x^4)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*x)^q*(a+c*x^4)^(p/2)=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/((d + e*x)^1*sqrt(a + c*x^4)), x, 7, (e*atan((sqrt((-c)*d^4 - a*e^4)*x)/(d*e*sqrt(a + c*x^4))))/(2*sqrt((-c)*d^4 - a*e^4)) - (e*atanh((a*e^2 + c*d^2*x^2)/(sqrt(c*d^4 + a*e^4)*sqrt(a + c*x^4))))/(2*sqrt(c*d^4 + a*e^4)) + (c^(1/4)*d*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.F(2*atan((c^(1/4)*x)/a^(1/4)), 1/2))/(2*a^(1/4)*(sqrt(c)*d^2 + sqrt(a)*e^2)*sqrt(a + c*x^4)) - ((sqrt(c)*d^2 - sqrt(a)*e^2)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.Pi((sqrt(c)*d^2 + sqrt(a)*e^2)^2/(4*sqrt(a)*sqrt(c)*d^2*e^2), 2*atan((c^(1/4)*x)/a^(1/4)), 1/2))/(4*a^(1/4)*c^(1/4)*d*(sqrt(c)*d^2 + sqrt(a)*e^2)*sqrt(a + c*x^4))]
    @test_int [1/((d + e*x)^2*sqrt(a + c*x^4)), x, 11, -((e^3*sqrt(a + c*x^4))/((c*d^4 + a*e^4)*(d + e*x))) + (sqrt(c)*e^2*x*sqrt(a + c*x^4))/((c*d^4 + a*e^4)*(sqrt(a) + sqrt(c)*x^2)) - (c*d^3*e*atan((sqrt((-c)*d^4 - a*e^4)*x)/(d*e*sqrt(a + c*x^4))))/((-c)*d^4 - a*e^4)^(3/2) - (c*d^3*e*atanh((a*e^2 + c*d^2*x^2)/(sqrt(c*d^4 + a*e^4)*sqrt(a + c*x^4))))/(c*d^4 + a*e^4)^(3/2) - (a^(1/4)*c^(1/4)*e^2*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.E(2*atan((c^(1/4)*x)/a^(1/4)), 1/2))/((c*d^4 + a*e^4)*sqrt(a + c*x^4)) + (c^(1/4)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.F(2*atan((c^(1/4)*x)/a^(1/4)), 1/2))/(2*a^(1/4)*(sqrt(c)*d^2 + sqrt(a)*e^2)*sqrt(a + c*x^4)) - (c^(3/4)*d^2*(sqrt(c)*d^2 - sqrt(a)*e^2)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.Pi((sqrt(c)*d^2 + sqrt(a)*e^2)^2/(4*sqrt(a)*sqrt(c)*d^2*e^2), 2*atan((c^(1/4)*x)/a^(1/4)), 1/2))/(2*a^(1/4)*(sqrt(c)*d^2 + sqrt(a)*e^2)*(c*d^4 + a*e^4)*sqrt(a + c*x^4))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*x)^q*(a+b*x^2+c*x^4)^(p/2)=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/((d + e*x)^1*sqrt(a + b*x^2 + c*x^4)), x, 7, (e*atan((sqrt((-c)*d^4 - b*d^2*e^2 - a*e^4)*x)/(d*e*sqrt(a + b*x^2 + c*x^4))))/(2*sqrt((-c)*d^4 - b*d^2*e^2 - a*e^4)) - (e*atanh((b*d^2 + 2*a*e^2 + (2*c*d^2 + b*e^2)*x^2)/(2*sqrt(c*d^4 + b*d^2*e^2 + a*e^4)*sqrt(a + b*x^2 + c*x^4))))/(2*sqrt(c*d^4 + b*d^2*e^2 + a*e^4)) + (c^(1/4)*d*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.F(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(2*a^(1/4)*(sqrt(c)*d^2 + sqrt(a)*e^2)*sqrt(a + b*x^2 + c*x^4)) - ((sqrt(c)*d^2 - sqrt(a)*e^2)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.Pi((sqrt(c)*d^2 + sqrt(a)*e^2)^2/(4*sqrt(a)*sqrt(c)*d^2*e^2), 2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(4*a^(1/4)*c^(1/4)*d*(sqrt(c)*d^2 + sqrt(a)*e^2)*sqrt(a + b*x^2 + c*x^4))]
    @test_int [1/((d + e*x)^2*sqrt(a + b*x^2 + c*x^4)), x, 11, -((e^3*sqrt(a + b*x^2 + c*x^4))/((c*d^4 + b*d^2*e^2 + a*e^4)*(d + e*x))) + (sqrt(c)*e^2*x*sqrt(a + b*x^2 + c*x^4))/((c*d^4 + b*d^2*e^2 + a*e^4)*(sqrt(a) + sqrt(c)*x^2)) - (d*e*(2*c*d^2 + b*e^2)*atan((sqrt((-c)*d^4 - b*d^2*e^2 - a*e^4)*x)/(d*e*sqrt(a + b*x^2 + c*x^4))))/(2*((-c)*d^4 - b*d^2*e^2 - a*e^4)^(3/2)) - (d*e*(2*c*d^2 + b*e^2)*atanh((b*d^2 + 2*a*e^2 + (2*c*d^2 + b*e^2)*x^2)/(2*sqrt(c*d^4 + b*d^2*e^2 + a*e^4)*sqrt(a + b*x^2 + c*x^4))))/(2*(c*d^4 + b*d^2*e^2 + a*e^4)^(3/2)) - (a^(1/4)*c^(1/4)*e^2*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.E(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/((c*d^4 + b*d^2*e^2 + a*e^4)*sqrt(a + b*x^2 + c*x^4)) + (c^(1/4)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.F(2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(2*a^(1/4)*(sqrt(c)*d^2 + sqrt(a)*e^2)*sqrt(a + b*x^2 + c*x^4)) - ((sqrt(c)*d^2 - sqrt(a)*e^2)*(2*c*d^2 + b*e^2)*(sqrt(a) + sqrt(c)*x^2)*sqrt((a + b*x^2 + c*x^4)/(sqrt(a) + sqrt(c)*x^2)^2)*Elliptic.Pi((sqrt(c)*d^2 + sqrt(a)*e^2)^2/(4*sqrt(a)*sqrt(c)*d^2*e^2), 2*atan((c^(1/4)*x)/a^(1/4)), (1/4)*(2 - b/(sqrt(a)*sqrt(c)))))/(4*a^(1/4)*c^(1/4)*(sqrt(c)*d^2 + sqrt(a)*e^2)*(c*d^4 + b*d^2*e^2 + a*e^4)*sqrt(a + b*x^2 + c*x^4))]
    end
