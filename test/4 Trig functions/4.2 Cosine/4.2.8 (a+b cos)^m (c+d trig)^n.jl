@testset "4.2.8 (a+b cos)^m (c+d trig)^n" begin
    (A, B, C, a, b, c, d, e, f, x, ) = @variables A B C a b c d e f x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^m*(A+B*Trig(c+d*x))=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^m*(A+B*sin(c+d*x))=#


    @test_int [(A + B*sin(x))/(a + b*cos(x)), x, 6, (2*A*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) - (B*log(a + b*cos(x)))/b]

    @test_int [(A + B*sin(x))/(1 + cos(x)), x, 5, (-B)*log(1 + cos(x)) + (A*sin(x))/(1 + cos(x))]
    @test_int [(A + B*sin(x))/(1 - cos(x)), x, 5, B*log(1 - cos(x)) - (A*sin(x))/(1 - cos(x))]


    @test_int [(b + c + sin(x))/(a + b*cos(x)), x, 6, (2*(b + c)*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) - log(a + b*cos(x))/b]
    @test_int [(b + c + sin(x))/(a - b*cos(x)), x, 6, (2*(b + c)*atan((sqrt(a + b)*tan(x/2))/sqrt(a - b)))/(sqrt(a - b)*sqrt(a + b)) + log(a - b*cos(x))/b]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^m*(A+B*tan(c+d*x))=#


    @test_int [(A + B*tan(x))/(a + b*cos(x)), x, 8, (2*A*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) - (B*log(cos(x)))/a + (B*log(a + b*cos(x)))/a]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^m*(A+B*cot(c+d*x))=#


    @test_int [(A + B*cot(x))/(a + b*cos(x)), x, 7, (2*A*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) + (B*log(1 - cos(x)))/(2*(a + b)) + (B*log(1 + cos(x)))/(2*(a - b)) - (a*B*log(a + b*cos(x)))/(a^2 - b^2)]


    #= ::Section:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^m*(A+B*sec(c+d*x))=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^m*(A+B*csc(c+d*x))=#


    @test_int [(A + B*csc(x))/(a + b*cos(x)), x, 11, (2*A*atan((sqrt(a - b)*tan(x/2))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)) + (B*log(1 - cos(x)))/(2*(a + b)) - (B*log(1 + cos(x)))/(2*(a - b)) + (b*B*log(a + b*cos(x)))/(a^2 - b^2)]


    #= ::Title:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(c+d*Trig(e+f*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(e+f*x))^m*(c+d*sec(e+f*x))^n=#


    @test_int [(c + d*sec(e + f*x))^4/(a + b*cos(e + f*x)), x, 12, (2*(a*c - b*d)^4*atan((sqrt(a - b)*tan((1/2)*(e + f*x)))/sqrt(a + b)))/(a^4*sqrt(a - b)*sqrt(a + b)*f) + (d^3*(4*a*c - b*d)*atanh(sin(e + f*x)))/(2*a^2*f) + (d*(2*a*c - b*d)*(2*a^2*c^2 - 2*a*b*c*d + b^2*d^2)*atanh(sin(e + f*x)))/(a^4*f) + (d^4*tan(e + f*x))/(a*f) + (d^2*(6*a^2*c^2 - 4*a*b*c*d + b^2*d^2)*tan(e + f*x))/(a^3*f) + (d^3*(4*a*c - b*d)*sec(e + f*x)*tan(e + f*x))/(2*a^2*f) + (d^4*tan(e + f*x)^3)/(3*a*f)]
    @test_int [(c + d*sec(e + f*x))^3/(a + b*cos(e + f*x)), x, 10, (2*(a*c - b*d)^3*atan((sqrt(a - b)*tan((1/2)*(e + f*x)))/sqrt(a + b)))/(a^3*sqrt(a - b)*sqrt(a + b)*f) + (d^3*atanh(sin(e + f*x)))/(2*a*f) + (d*(3*a^2*c^2 - 3*a*b*c*d + b^2*d^2)*atanh(sin(e + f*x)))/(a^3*f) + (d^2*(3*a*c - b*d)*tan(e + f*x))/(a^2*f) + (d^3*sec(e + f*x)*tan(e + f*x))/(2*a*f)]
    @test_int [(c + d*sec(e + f*x))^2/(a + b*cos(e + f*x)), x, 8, (2*(a*c - b*d)^2*atan((sqrt(a - b)*tan((1/2)*(e + f*x)))/sqrt(a + b)))/(a^2*sqrt(a - b)*sqrt(a + b)*f) + (d*(2*a*c - b*d)*atanh(sin(e + f*x)))/(a^2*f) + (d^2*tan(e + f*x))/(a*f)]
    @test_int [(c + d*sec(e + f*x))^1/(a + b*cos(e + f*x)), x, 5, (2*(a*c - b*d)*atan((sqrt(a - b)*tan((1/2)*(e + f*x)))/sqrt(a + b)))/(a*sqrt(a - b)*sqrt(a + b)*f) + (d*atanh(sin(e + f*x)))/(a*f)]
    @test_int [1/((a + b*cos(e + f*x))*(c + d*sec(e + f*x))^1), x, 6, (2*a*atan((sqrt(a - b)*tan((1/2)*(e + f*x)))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)*(a*c - b*d)*f) - (2*d*atanh((sqrt(c - d)*tan((1/2)*(e + f*x)))/sqrt(c + d)))/(sqrt(c - d)*sqrt(c + d)*(a*c - b*d)*f)]
    @test_int [1/((a + b*cos(e + f*x))*(c + d*sec(e + f*x))^2), x, 7, (2*a^2*atan((sqrt(a - b)*tan((1/2)*(e + f*x)))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)*(a*c - b*d)^2*f) - (2*d*(2*a*c^2 - b*c*d - a*d^2)*atanh((sqrt(c - d)*tan((1/2)*(e + f*x)))/sqrt(c + d)))/((c - d)^(3/2)*(c + d)^(3/2)*(a*c - b*d)^2*f) + (d^2*sin(e + f*x))/((a*c - b*d)*(c^2 - d^2)*f*(d + c*cos(e + f*x)))]
    @test_int [1/((a + b*cos(e + f*x))*(c + d*sec(e + f*x))^3), x, 16, (2*a^3*atan((sqrt(a - b)*tan((1/2)*(e + f*x)))/sqrt(a + b)))/(sqrt(a - b)*sqrt(a + b)*(a*c - b*d)^3*f) - (2*d^3*(3*a*c - 2*b*d)*atanh((sqrt(c - d)*tan((1/2)*(e + f*x)))/sqrt(c + d)))/(c^2*(c - d)^(3/2)*(c + d)^(3/2)*(a*c - b*d)^2*f) - (d^3*(c^2 + 2*d^2)*atanh((sqrt(c - d)*tan((1/2)*(e + f*x)))/sqrt(c + d)))/(c^2*(c - d)^(5/2)*(c + d)^(5/2)*(a*c - b*d)*f) - (2*d*(3*a^2*c^2 - 3*a*b*c*d + b^2*d^2)*atanh((sqrt(c - d)*tan((1/2)*(e + f*x)))/sqrt(c + d)))/(c^2*sqrt(c - d)*sqrt(c + d)*(a*c - b*d)^3*f) - (d^3*sin(e + f*x))/(2*c*(a*c - b*d)*(c^2 - d^2)*f*(d + c*cos(e + f*x))^2) + (3*d^4*sin(e + f*x))/(2*c*(a*c - b*d)*(c^2 - d^2)^2*f*(d + c*cos(e + f*x))) + (d^2*(3*a*c - 2*b*d)*sin(e + f*x))/(c*(a*c - b*d)^2*(c^2 - d^2)*f*(d + c*cos(e + f*x)))]


    #= [(c + d*sec(e + f*x))^(5/2)/(a + b*cos(e + f*x)), x, 0, 0] =#
    #= [(c + d*sec(e + f*x))^(3/2)/(a + b*cos(e + f*x)), x, 0, 0] =#
    @test_int [(c + d*sec(e + f*x))^(1/2)/(a + b*cos(e + f*x)), x, 4, (2*sqrt(c + d)*cot(e + f*x)*Elliptic.F(asin(sqrt(c + d*sec(e + f*x))/sqrt(c + d)), (c + d)/(c - d))*sqrt((d*(1 - sec(e + f*x)))/(c + d))*sqrt(-((d*(1 + sec(e + f*x)))/(c - d))))/(a*f) + (2*(a*c - b*d)*Elliptic.Pi((2*a)/(a + b), asin(sqrt(1 - sec(e + f*x))/sqrt(2)), (2*d)/(c + d))*sqrt((c + d*sec(e + f*x))/(c + d))*tan(e + f*x))/(a*(a + b)*f*sqrt(c + d*sec(e + f*x))*sqrt(-tan(e + f*x)^2))]
    @test_int [1/((a + b*cos(e + f*x))*(c + d*sec(e + f*x))^(1/2)), x, 2, (2*Elliptic.Pi((2*a)/(a + b), asin(sqrt(1 - sec(e + f*x))/sqrt(2)), (2*d)/(c + d))*sqrt((c + d*sec(e + f*x))/(c + d))*tan(e + f*x))/((a + b)*f*sqrt(c + d*sec(e + f*x))*sqrt(-tan(e + f*x)^2))]
    #= [1/((a + b*cos(e + f*x))*(c + d*sec(e + f*x))^(3/2)), x, 0, 0] =#
    #= [1/((a + b*cos(e + f*x))*(c + d*sec(e + f*x))^(5/2)), x, 0, 0] =#


    #= ::Title:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^m*(A+B*cos(c+d*x)+C*sin(c+d*x)^2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*cos(c+d*x))^m*(A+B*cos(c+d*x)+C*sin(c+d*x)^2)=#


    @test_int [(A + B*cos(d + e*x) + C*sin(d + e*x))/(a + b*cos(d + e*x))^1, x, 6, (B*x)/b + (2*(A*b - a*B)*atan((sqrt(a - b)*tan((1/2)*(d + e*x)))/sqrt(a + b)))/(sqrt(a - b)*b*sqrt(a + b)*e) - (C*log(a + b*cos(d + e*x)))/(b*e)]
    @test_int [(A + B*cos(d + e*x) + C*sin(d + e*x))/(a + b*cos(d + e*x))^2, x, 7, (2*(a*A - b*B)*atan((sqrt(a - b)*tan((1/2)*(d + e*x)))/sqrt(a + b)))/((a - b)^(3/2)*(a + b)^(3/2)*e) + C/(b*e*(a + b*cos(d + e*x))) - ((A*b - a*B)*sin(d + e*x))/((a^2 - b^2)*e*(a + b*cos(d + e*x)))]
    @test_int [(A + B*cos(d + e*x) + C*sin(d + e*x))/(a + b*cos(d + e*x))^3, x, 8, ((2*a^2*A + A*b^2 - 3*a*b*B)*atan((sqrt(a - b)*tan((1/2)*(d + e*x)))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)*e) + C/(2*b*e*(a + b*cos(d + e*x))^2) - ((A*b - a*B)*sin(d + e*x))/(2*(a^2 - b^2)*e*(a + b*cos(d + e*x))^2) - ((3*a*A*b - a^2*B - 2*b^2*B)*sin(d + e*x))/(2*(a^2 - b^2)^2*e*(a + b*cos(d + e*x)))]
    @test_int [(A + B*cos(d + e*x) + C*sin(d + e*x))/(a + b*cos(d + e*x))^4, x, 9, ((2*a^3*A + 3*a*A*b^2 - 4*a^2*b*B - b^3*B)*atan((sqrt(a - b)*tan((1/2)*(d + e*x)))/sqrt(a + b)))/((a - b)^(7/2)*(a + b)^(7/2)*e) + C/(3*b*e*(a + b*cos(d + e*x))^3) - ((A*b - a*B)*sin(d + e*x))/(3*(a^2 - b^2)*e*(a + b*cos(d + e*x))^3) - ((5*a*A*b - 2*a^2*B - 3*b^2*B)*sin(d + e*x))/(6*(a^2 - b^2)^2*e*(a + b*cos(d + e*x))^2) - ((11*a^2*A*b + 4*A*b^3 - 2*a^3*B - 13*a*b^2*B)*sin(d + e*x))/(6*(a^2 - b^2)^3*e*(a + b*cos(d + e*x)))]
    end
