@testset "4.2.13 (d+e x)^m cos(a+b x+c x^2)^n" begin
    @variables a, b, c, d, e, x

    #= ::Package:: =#

    #= ::Section:: =#
    #=Integrands*of*the*form*(d+e*x)^m*cos(a+b*x+c*x^2)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*cos(a+b*x+c*x^2)^n=#


    @test_int [x^2*cos(a + b*x + c*x^2), x, 8, (b^2*sqrt(pi/2)*cos(a - b^2/(4*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(2*pi))))/(4*c^(5/2)) - (sqrt(pi/2)*cos(a - b^2/(4*c))*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(2*pi))))/(2*c^(3/2)) - (sqrt(pi/2)*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a - b^2/(4*c)))/(2*c^(3/2)) - (b^2*sqrt(pi/2)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a - b^2/(4*c)))/(4*c^(5/2)) - (b*sin(a + b*x + c*x^2))/(4*c^2) + (x*sin(a + b*x + c*x^2))/(2*c)]
    @test_int [x*cos(a + b*x + c*x^2), x, 4, -((b*sqrt(pi/2)*cos(a - b^2/(4*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(2*pi))))/(2*c^(3/2))) + (b*sqrt(pi/2)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a - b^2/(4*c)))/(2*c^(3/2)) + sin(a + b*x + c*x^2)/(2*c)]
    @test_int [cos(a + b*x + c*x^2), x, 3, (sqrt(pi/2)*cos(a - b^2/(4*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(2*pi))))/sqrt(c) - (sqrt(pi/2)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a - b^2/(4*c)))/sqrt(c)]
    @test_int [cos(a + b*x + c*x^2)/x, x, 0, Unintegrable(cos(a + b*x + c*x^2)/x, x)]
    @test_int [cos(a + b*x + c*x^2)/x^2 + b*sin(a + b*x + c*x^2)/x, x, 5, -(cos(a + b*x + c*x^2)/x) - sqrt(c)*sqrt(2*pi)*cos(a - b^2/(4*c))*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(2*pi))) - sqrt(c)*sqrt(2*pi)*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a - b^2/(4*c))]

    @test_int [x^2*cos(a + b*x - c*x^2), x, 8, -((b^2*sqrt(pi/2)*cos(a + b^2/(4*c))*FresnelC((b - 2*c*x)/(sqrt(c)*sqrt(2*pi))))/(4*c^(5/2))) + (sqrt(pi/2)*cos(a + b^2/(4*c))*FresnelS((b - 2*c*x)/(sqrt(c)*sqrt(2*pi))))/(2*c^(3/2)) - (sqrt(pi/2)*FresnelC((b - 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a + b^2/(4*c)))/(2*c^(3/2)) - (b^2*sqrt(pi/2)*FresnelS((b - 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a + b^2/(4*c)))/(4*c^(5/2)) - (b*sin(a + b*x - c*x^2))/(4*c^2) - (x*sin(a + b*x - c*x^2))/(2*c)]
    @test_int [x*cos(a + b*x - c*x^2), x, 4, -((b*sqrt(pi/2)*cos(a + b^2/(4*c))*FresnelC((b - 2*c*x)/(sqrt(c)*sqrt(2*pi))))/(2*c^(3/2))) - (b*sqrt(pi/2)*FresnelS((b - 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a + b^2/(4*c)))/(2*c^(3/2)) - sin(a + b*x - c*x^2)/(2*c)]
    @test_int [cos(a + b*x - c*x^2), x, 3, -((sqrt(pi/2)*cos(a + b^2/(4*c))*FresnelC((b - 2*c*x)/(sqrt(c)*sqrt(2*pi))))/sqrt(c)) - (sqrt(pi/2)*FresnelS((b - 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a + b^2/(4*c)))/sqrt(c)]
    @test_int [cos(a + b*x - c*x^2)/x, x, 0, Unintegrable(cos(a + b*x - c*x^2)/x, x)]
    @test_int [cos(a + b*x - c*x^2)/x^2 + b*sin(a + b*x - c*x^2)/x, x, 5, -(cos(a + b*x - c*x^2)/x) + sqrt(c)*sqrt(2*pi)*cos(a + b^2/(4*c))*FresnelS((b - 2*c*x)/(sqrt(c)*sqrt(2*pi))) - sqrt(c)*sqrt(2*pi)*FresnelC((b - 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a + b^2/(4*c))]

    @test_int [x^2*cos(1/4 + x + x^2), x, 6, (1/4)*sqrt(pi/2)*FresnelC((1 + 2*x)/sqrt(2*pi)) - (1/2)*sqrt(pi/2)*FresnelS((1 + 2*x)/sqrt(2*pi)) - (1/4)*sin(1/4 + x + x^2) + (1/2)*x*sin(1/4 + x + x^2)]
    @test_int [x*cos(1/4 + x + x^2), x, 3, (-(1/2))*sqrt(pi/2)*FresnelC((1 + 2*x)/sqrt(2*pi)) + (1/2)*sin(1/4 + x + x^2)]
    @test_int [cos(1/4 + x + x^2), x, 2, sqrt(pi/2)*FresnelC((1 + 2*x)/sqrt(2*pi))]
    @test_int [cos(1/4 + x + x^2)/x, x, 0, Unintegrable(cos(1/4 + x + x^2)/x, x)]
    @test_int [cos(1/4 + x + x^2)/x^2, x, 3, -(cos(1/4 + x + x^2)/x) - sqrt(2*pi)*FresnelS((1 + 2*x)/sqrt(2*pi)) - Unintegrable(sin(1/4 + x + x^2)/x, x)]


    @test_int [x^2*cos(a + b*x + c*x^2)^2, x, 10, x^3/6 + (b^2*sqrt(pi)*cos(2*a - b^2/(2*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(pi))))/(16*c^(5/2)) - (sqrt(pi)*cos(2*a - b^2/(2*c))*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(pi))))/(16*c^(3/2)) - (sqrt(pi)*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a - b^2/(2*c)))/(16*c^(3/2)) - (b^2*sqrt(pi)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a - b^2/(2*c)))/(16*c^(5/2)) - (b*sin(2*a + 2*b*x + 2*c*x^2))/(16*c^2) + (x*sin(2*a + 2*b*x + 2*c*x^2))/(8*c)]
    @test_int [x*cos(a + b*x + c*x^2)^2, x, 6, x^2/4 - (b*sqrt(pi)*cos(2*a - b^2/(2*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(pi))))/(8*c^(3/2)) + (b*sqrt(pi)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a - b^2/(2*c)))/(8*c^(3/2)) + sin(2*a + 2*b*x + 2*c*x^2)/(8*c)]
    @test_int [cos(a + b*x + c*x^2)^2, x, 5, x/2 + (sqrt(pi)*cos(2*a - b^2/(2*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(pi))))/(4*sqrt(c)) - (sqrt(pi)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a - b^2/(2*c)))/(4*sqrt(c))]
    @test_int [cos(a + b*x + c*x^2)^2/x, x, 2, (1/2)*Unintegrable(cos(2*a + 2*b*x + 2*c*x^2)/x, x) + log(x)/2]

    @test_int [x^2*cos(a + b*x - c*x^2)^2, x, 10, x^3/6 - (b^2*sqrt(pi)*cos(2*a + b^2/(2*c))*FresnelC((b - 2*c*x)/(sqrt(c)*sqrt(pi))))/(16*c^(5/2)) + (sqrt(pi)*cos(2*a + b^2/(2*c))*FresnelS((b - 2*c*x)/(sqrt(c)*sqrt(pi))))/(16*c^(3/2)) - (sqrt(pi)*FresnelC((b - 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a + b^2/(2*c)))/(16*c^(3/2)) - (b^2*sqrt(pi)*FresnelS((b - 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a + b^2/(2*c)))/(16*c^(5/2)) - (b*sin(2*a + 2*b*x - 2*c*x^2))/(16*c^2) - (x*sin(2*a + 2*b*x - 2*c*x^2))/(8*c)]
    @test_int [x*cos(a + b*x - c*x^2)^2, x, 6, x^2/4 - (b*sqrt(pi)*cos(2*a + b^2/(2*c))*FresnelC((b - 2*c*x)/(sqrt(c)*sqrt(pi))))/(8*c^(3/2)) - (b*sqrt(pi)*FresnelS((b - 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a + b^2/(2*c)))/(8*c^(3/2)) - sin(2*a + 2*b*x - 2*c*x^2)/(8*c)]
    @test_int [cos(a + b*x - c*x^2)^2, x, 5, x/2 - (sqrt(pi)*cos(2*a + b^2/(2*c))*FresnelC((b - 2*c*x)/(sqrt(c)*sqrt(pi))))/(4*sqrt(c)) - (sqrt(pi)*FresnelS((b - 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a + b^2/(2*c)))/(4*sqrt(c))]
    @test_int [cos(a + b*x - c*x^2)^2/x, x, 2, (1/2)*Unintegrable(cos(2*a + 2*b*x - 2*c*x^2)/x, x) + log(x)/2]

    @test_int [x^2*cos(1/4 + x + x^2)^2, x, 8, x^3/6 + (1/16)*sqrt(pi)*FresnelC((1 + 2*x)/sqrt(pi)) - (1/16)*sqrt(pi)*FresnelS((1 + 2*x)/sqrt(pi)) - (1/16)*sin(1/2 + 2*x + 2*x^2) + (1/8)*x*sin(1/2 + 2*x + 2*x^2)]
    @test_int [x*cos(1/4 + x + x^2)^2, x, 5, x^2/4 - (1/8)*sqrt(pi)*FresnelC((1 + 2*x)/sqrt(pi)) + (1/8)*sin(1/2 + 2*x + 2*x^2)]
    @test_int [cos(1/4 + x + x^2)^2, x, 4, x/2 + (1/4)*sqrt(pi)*FresnelC((1 + 2*x)/sqrt(pi))]
    @test_int [cos(1/4 + x + x^2)^2/x, x, 2, (1/2)*Unintegrable(cos(1/2 + 2*x + 2*x^2)/x, x) + log(x)/2]
    @test_int [cos(1/4 + x + x^2)^2/x^2, x, 5, -(1/(2*x)) - cos(1/2 + 2*x + 2*x^2)/(2*x) - sqrt(pi)*FresnelS((1 + 2*x)/sqrt(pi)) - Unintegrable(sin(1/2 + 2*x + 2*x^2)/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*x)^m*cos(a+b*x+c*x^2)^n=#


    @test_int [(d + e*x)^2*cos(a + b*x + c*x^2), x, 8, ((2*c*d - b*e)^2*sqrt(pi/2)*cos(a - b^2/(4*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(2*pi))))/(4*c^(5/2)) - (e^2*sqrt(pi/2)*cos(a - b^2/(4*c))*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(2*pi))))/(2*c^(3/2)) - (e^2*sqrt(pi/2)*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a - b^2/(4*c)))/(2*c^(3/2)) - ((2*c*d - b*e)^2*sqrt(pi/2)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a - b^2/(4*c)))/(4*c^(5/2)) + (e*(2*c*d - b*e)*sin(a + b*x + c*x^2))/(4*c^2) + (e*(d + e*x)*sin(a + b*x + c*x^2))/(2*c)]
    @test_int [(d + e*x)*cos(a + b*x + c*x^2), x, 4, ((2*c*d - b*e)*sqrt(pi/2)*cos(a - b^2/(4*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(2*pi))))/(2*c^(3/2)) - ((2*c*d - b*e)*sqrt(pi/2)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(2*pi)))*sin(a - b^2/(4*c)))/(2*c^(3/2)) + (e*sin(a + b*x + c*x^2))/(2*c)]
    @test_int [cos(a + b*x + c*x^2)/(d + e*x), x, 0, Unintegrable(cos(a + b*x + c*x^2)/(d + e*x), x)]


    @test_int [(d + e*x)^2*cos(a + b*x + c*x^2)^2, x, 10, (d + e*x)^3/(6*e) + ((2*c*d - b*e)^2*sqrt(pi)*cos(2*a - b^2/(2*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(pi))))/(16*c^(5/2)) - (e^2*sqrt(pi)*cos(2*a - b^2/(2*c))*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(pi))))/(16*c^(3/2)) - (e^2*sqrt(pi)*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a - b^2/(2*c)))/(16*c^(3/2)) - ((2*c*d - b*e)^2*sqrt(pi)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a - b^2/(2*c)))/(16*c^(5/2)) + (e*(2*c*d - b*e)*sin(2*a + 2*b*x + 2*c*x^2))/(16*c^2) + (e*(d + e*x)*sin(2*a + 2*b*x + 2*c*x^2))/(8*c)]
    @test_int [(d + e*x)*cos(a + b*x + c*x^2)^2, x, 6, (d + e*x)^2/(4*e) + ((2*c*d - b*e)*sqrt(pi)*cos(2*a - b^2/(2*c))*FresnelC((b + 2*c*x)/(sqrt(c)*sqrt(pi))))/(8*c^(3/2)) - ((2*c*d - b*e)*sqrt(pi)*FresnelS((b + 2*c*x)/(sqrt(c)*sqrt(pi)))*sin(2*a - b^2/(2*c)))/(8*c^(3/2)) + (e*sin(2*a + 2*b*x + 2*c*x^2))/(8*c)]
    @test_int [cos(a + b*x + c*x^2)^2/(d + e*x), x, 2, (1/2)*Unintegrable(cos(2*a + 2*b*x + 2*c*x^2)/(d + e*x), x) + log(d + e*x)/(2*e)]
    end
