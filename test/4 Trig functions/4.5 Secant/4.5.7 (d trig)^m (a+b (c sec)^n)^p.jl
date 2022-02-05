@testset "4.5.7 (d trig)^m (a+b (c sec)^n)^p" begin
    @variables a, b, c, d, e, f, m, n, p, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sec(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sec(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sec(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(a + b*sec(e + f*x)^2)*sin(e + f*x)^7, x, 3, -(((a - 3*b)*cos(e + f*x))/f) + ((a - b)*cos(e + f*x)^3)/f - ((3*a - b)*cos(e + f*x)^5)/(5*f) + (a*cos(e + f*x)^7)/(7*f) + (b*sec(e + f*x))/f]
    @test_int [(a + b*sec(e + f*x)^2)*sin(e + f*x)^5, x, 3, -(((a - 2*b)*cos(e + f*x))/f) + ((2*a - b)*cos(e + f*x)^3)/(3*f) - (a*cos(e + f*x)^5)/(5*f) + (b*sec(e + f*x))/f]
    @test_int [(a + b*sec(e + f*x)^2)*sin(e + f*x)^3, x, 3, -(((a - b)*cos(e + f*x))/f) + (a*cos(e + f*x)^3)/(3*f) + (b*sec(e + f*x))/f]
    @test_int [(a + b*sec(e + f*x)^2)*sin(e + f*x)^1, x, 3, -((a*cos(e + f*x))/f) + (b*sec(e + f*x))/f]
    @test_int [csc(e + f*x)^1*(a + b*sec(e + f*x)^2), x, 3, -(((a + b)*atanh(cos(e + f*x)))/f) + (b*sec(e + f*x))/f]
    @test_int [csc(e + f*x)^3*(a + b*sec(e + f*x)^2), x, 4, -((a + 3*b)*atanh(cos(e + f*x)))/(2*f) - ((a + b)*cot(e + f*x)*csc(e + f*x))/(2*f) + (b*sec(e + f*x))/f]
    @test_int [csc(e + f*x)^5*(a + b*sec(e + f*x)^2), x, 5, (-3*(a + 5*b)*atanh(cos(e + f*x)))/(8*f) - ((3*a + 7*b)*cot(e + f*x)*csc(e + f*x))/(8*f) - ((a + b)*cot(e + f*x)*csc(e + f*x)^3)/(4*f) + (b*sec(e + f*x))/f]

    @test_int [(a + b*sec(e + f*x)^2)*sin(e + f*x)^6, x, 6, (5*(a - 6*b)*x)/16 - ((11*a - 18*b)*cos(e + f*x)*sin(e + f*x))/(16*f) + ((13*a - 6*b)*cos(e + f*x)^3*sin(e + f*x))/(24*f) - (a*cos(e + f*x)^5*sin(e + f*x))/(6*f) + (b*tan(e + f*x))/f]
    @test_int [(a + b*sec(e + f*x)^2)*sin(e + f*x)^4, x, 5, (3*(a - 4*b)*x)/8 - ((5*a - 4*b)*cos(e + f*x)*sin(e + f*x))/(8*f) + (a*cos(e + f*x)^3*sin(e + f*x))/(4*f) + (b*tan(e + f*x))/f]
    @test_int [(a + b*sec(e + f*x)^2)*sin(e + f*x)^2, x, 4, ((a - 2*b)*x)/2 - (a*cos(e + f*x)*sin(e + f*x))/(2*f) + (b*tan(e + f*x))/f]
    @test_int [(a + b*sec(e + f*x)^2)*sin(e + f*x)^0, x, 3, a*x + (b*tan(e + f*x))/f]
    @test_int [csc(e + f*x)^2*(a + b*sec(e + f*x)^2), x, 3, -(((a + b)*cot(e + f*x))/f) + (b*tan(e + f*x))/f]
    @test_int [csc(e + f*x)^4*(a + b*sec(e + f*x)^2), x, 3, -(((a + 2*b)*cot(e + f*x))/f) - ((a + b)*cot(e + f*x)^3)/(3*f) + (b*tan(e + f*x))/f]
    @test_int [csc(e + f*x)^6*(a + b*sec(e + f*x)^2), x, 3, -(((a + 3*b)*cot(e + f*x))/f) - ((2*a + 3*b)*cot(e + f*x)^3)/(3*f) - ((a + b)*cot(e + f*x)^5)/(5*f) + (b*tan(e + f*x))/f]


    @test_int [(a + b*sec(e + f*x)^2)^2*sin(e + f*x)^5, x, 3, -(((a^2 - 4*a*b + b^2)*cos(e + f*x))/f) + (2*a*(a - b)*cos(e + f*x)^3)/(3*f) - (a^2*cos(e + f*x)^5)/(5*f) + (2*(a - b)*b*sec(e + f*x))/f + (b^2*sec(e + f*x)^3)/(3*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*sin(e + f*x)^3, x, 3, -((a*(a - 2*b)*cos(e + f*x))/f) + (a^2*cos(e + f*x)^3)/(3*f) + ((2*a - b)*b*sec(e + f*x))/f + (b^2*sec(e + f*x)^3)/(3*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*sin(e + f*x)^1, x, 3, -((a^2*cos(e + f*x))/f) + (2*a*b*sec(e + f*x))/f + (b^2*sec(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^1*(a + b*sec(e + f*x)^2)^2, x, 4, -(((a + b)^2*atanh(cos(e + f*x)))/f) + (b*(2*a + b)*sec(e + f*x))/f + (b^2*sec(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^3*(a + b*sec(e + f*x)^2)^2, x, 5, -((a + b)*(a + 5*b)*atanh(cos(e + f*x)))/(2*f) - ((3*a^2 + 6*a*b + 5*b^2)*cot(e + f*x)*csc(e + f*x))/(6*f) + (b*(6*a + 5*b)*sec(e + f*x))/(3*f) + (b^2*csc(e + f*x)^2*sec(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^5*(a + b*sec(e + f*x)^2)^2, x, 6, -((3*a^2 + 30*a*b + 35*b^2)*atanh(cos(e + f*x)))/(8*f) - ((3*a + 7*b)^2*cot(e + f*x)*csc(e + f*x))/(24*f) - ((3*a^2 + 6*a*b + 7*b^2)*cot(e + f*x)*csc(e + f*x)^3)/(12*f) + (b*(6*a + 7*b)*sec(e + f*x))/(3*f) + (b^2*csc(e + f*x)^4*sec(e + f*x)^3)/(3*f)]

    @test_int [(a + b*sec(e + f*x)^2)^2*sin(e + f*x)^6, x, 7, (5*(a^2 - 12*a*b + 8*b^2)*x)/16 - ((3*a^2 - 36*a*b + 8*b^2)*cos(e + f*x)*sin(e + f*x))/(16*f) + (a*(a - 12*b)*cos(e + f*x)^3*sin(e + f*x))/(24*f) - ((a^2 - 12*a*b + 12*b^2)*tan(e + f*x))/(6*f) + (a^2*sin(e + f*x)^6*tan(e + f*x))/(6*f) + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*sin(e + f*x)^4, x, 6, ((3*a^2 - 24*a*b + 8*b^2)*x)/8 - (a*(a - 8*b)*cos(e + f*x)*sin(e + f*x))/(8*f) - ((a^2 - 8*a*b + 4*b^2)*tan(e + f*x))/(4*f) + (a^2*sin(e + f*x)^4*tan(e + f*x))/(4*f) + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*sin(e + f*x)^2, x, 5, (a*(a - 4*b)*x)/2 - (a*(a - 4*b)*tan(e + f*x))/(2*f) + (a^2*sin(e + f*x)^2*tan(e + f*x))/(2*f) + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*sin(e + f*x)^0, x, 4, a^2*x + (b*(2*a + b)*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^2*(a + b*sec(e + f*x)^2)^2, x, 3, -(((a + b)^2*cot(e + f*x))/f) + (2*b*(a + b)*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^4*(a + b*sec(e + f*x)^2)^2, x, 3, -(((a + b)*(a + 3*b)*cot(e + f*x))/f) - ((a + b)^2*cot(e + f*x)^3)/(3*f) + (b*(2*a + 3*b)*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [csc(e + f*x)^6*(a + b*sec(e + f*x)^2)^2, x, 3, -(((a^2 + 6*a*b + 6*b^2)*cot(e + f*x))/f) - (2*(a + b)*(a + 2*b)*cot(e + f*x)^3)/(3*f) - ((a + b)^2*cot(e + f*x)^5)/(5*f) + (2*b*(a + 2*b)*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(e + f*x)^5/(a + b*sec(e + f*x)^2), x, 4, (sqrt(b)*(a + b)^2*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(a^(7/2)*f) - ((a + b)^2*cos(e + f*x))/(a^3*f) + ((2*a + b)*cos(e + f*x)^3)/(3*a^2*f) - cos(e + f*x)^5/(5*a*f)]
    @test_int [sin(e + f*x)^3/(a + b*sec(e + f*x)^2), x, 4, (sqrt(b)*(a + b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(a^(5/2)*f) - ((a + b)*cos(e + f*x))/(a^2*f) + cos(e + f*x)^3/(3*a*f)]
    @test_int [sin(e + f*x)^1/(a + b*sec(e + f*x)^2), x, 3, (sqrt(b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(a^(3/2)*f) - cos(e + f*x)/(a*f)]
    @test_int [csc(e + f*x)^1/(a + b*sec(e + f*x)^2), x, 4, (sqrt(b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(sqrt(a)*(a + b)*f) - atanh(cos(e + f*x))/((a + b)*f)]
    @test_int [csc(e + f*x)^3/(a + b*sec(e + f*x)^2), x, 5, (sqrt(a)*sqrt(b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/((a + b)^2*f) - ((a - b)*atanh(cos(e + f*x)))/(2*(a + b)^2*f) - (cot(e + f*x)*csc(e + f*x))/(2*(a + b)*f)]
    @test_int [csc(e + f*x)^5/(a + b*sec(e + f*x)^2), x, 6, (a^(3/2)*sqrt(b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/((a + b)^3*f) - ((3*a^2 - 6*a*b - b^2)*atanh(cos(e + f*x)))/(8*(a + b)^3*f) - ((3*a - b)*cot(e + f*x)*csc(e + f*x))/(8*(a + b)^2*f) - (cot(e + f*x)*csc(e + f*x)^3)/(4*(a + b)*f)]

    @test_int [sin(e + f*x)^6/(a + b*sec(e + f*x)^2), x, 7, ((5*a^3 + 30*a^2*b + 40*a*b^2 + 16*b^3)*x)/(16*a^4) - (sqrt(b)*(a + b)^(5/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a^4*f) - ((11*a^2 + 18*a*b + 8*b^2)*cos(e + f*x)*sin(e + f*x))/(16*a^3*f) + ((3*a + 2*b)*cos(e + f*x)^3*sin(e + f*x))/(8*a^2*f) + (cos(e + f*x)^3*sin(e + f*x)^3)/(6*a*f)]
    @test_int [sin(e + f*x)^4/(a + b*sec(e + f*x)^2), x, 6, ((3*a^2 + 12*a*b + 8*b^2)*x)/(8*a^3) - (sqrt(b)*(a + b)^(3/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a^3*f) - ((5*a + 4*b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f)]
    @test_int [sin(e + f*x)^2/(a + b*sec(e + f*x)^2), x, 5, ((a + 2*b)*x)/(2*a^2) - (sqrt(b)*sqrt(a + b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a^2*f) - (cos(e + f*x)*sin(e + f*x))/(2*a*f)]
    @test_int [sin(e + f*x)^0/(a + b*sec(e + f*x)^2), x, 3, x/a + (sqrt(b)*atan((sqrt(a + b)*cot(e + f*x))/sqrt(b)))/(a*sqrt(a + b)*f)]
    @test_int [csc(e + f*x)^2/(a + b*sec(e + f*x)^2), x, 3, -((sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/((a + b)^(3/2)*f)) - cot(e + f*x)/((a + b)*f)]
    @test_int [csc(e + f*x)^4/(a + b*sec(e + f*x)^2), x, 4, -((a*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/((a + b)^(5/2)*f)) - (a*cot(e + f*x))/((a + b)^2*f) - cot(e + f*x)^3/(3*(a + b)*f)]
    @test_int [csc(e + f*x)^6/(a + b*sec(e + f*x)^2), x, 4, -((a^2*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/((a + b)^(7/2)*f)) - (a^2*cot(e + f*x))/((a + b)^3*f) - ((2*a + b)*cot(e + f*x)^3)/(3*(a + b)^2*f) - cot(e + f*x)^5/(5*(a + b)*f)]


    @test_int [sin(e + f*x)^5/(a + b*sec(e + f*x)^2)^2, x, 6, (sqrt(b)*(a + b)*(3*a + 7*b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(2*a^(9/2)*f) - ((a + b)*(3*a + 7*b)*cos(e + f*x))/(2*a^4*f) + ((a + b)*(3*a + 7*b)*cos(e + f*x)^3)/(6*a^3*b*f) - cos(e + f*x)^5/(5*a^2*f) - ((a + b)^2*cos(e + f*x)^5)/(2*a^2*b*f*(b + a*cos(e + f*x)^2))]
    @test_int [sin(e + f*x)^3/(a + b*sec(e + f*x)^2)^2, x, 5, (sqrt(b)*(3*a + 5*b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(2*a^(7/2)*f) - ((a + 2*b)*cos(e + f*x))/(a^3*f) + cos(e + f*x)^3/(3*a^2*f) - (b*(a + b)*cos(e + f*x))/(2*a^3*f*(b + a*cos(e + f*x)^2))]
    @test_int [sin(e + f*x)^1/(a + b*sec(e + f*x)^2)^2, x, 4, (3*sqrt(b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(2*a^(5/2)*f) - (3*cos(e + f*x))/(2*a^2*f) + cos(e + f*x)^3/(2*a*f*(b + a*cos(e + f*x)^2))]
    @test_int [csc(e + f*x)^1/(a + b*sec(e + f*x)^2)^2, x, 5, (sqrt(b)*(3*a + b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(2*a^(3/2)*(a + b)^2*f) - atanh(cos(e + f*x))/((a + b)^2*f) - (b*cos(e + f*x))/(2*a*(a + b)*f*(b + a*cos(e + f*x)^2))]
    @test_int [csc(e + f*x)^3/(a + b*sec(e + f*x)^2)^2, x, 6, ((3*a - b)*sqrt(b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(2*sqrt(a)*(a + b)^3*f) - ((a - 3*b)*atanh(cos(e + f*x)))/(2*(a + b)^3*f) + ((a - b)*cos(e + f*x))/(2*(a + b)^2*f*(b + a*cos(e + f*x)^2)) - (cot(e + f*x)*csc(e + f*x))/(2*(a + b)*f*(b + a*cos(e + f*x)^2))]
    @test_int [csc(e + f*x)^5/(a + b*sec(e + f*x)^2)^2, x, 7, (3*sqrt(a)*(a - b)*sqrt(b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(2*(a + b)^4*f) - (3*(a^2 - 6*a*b + b^2)*atanh(cos(e + f*x)))/(8*(a + b)^4*f) + (3*a*(a - 3*b)*cos(e + f*x))/(8*(a + b)^3*f*(b + a*cos(e + f*x)^2)) - ((a - 5*b)*cot(e + f*x)*csc(e + f*x))/(8*(a + b)^2*f*(b + a*cos(e + f*x)^2)) - (cot(e + f*x)*csc(e + f*x)^3)/(4*(a + b)*f*(b + a*cos(e + f*x)^2))]

    @test_int [sin(e + f*x)^6/(a + b*sec(e + f*x)^2)^2, x, 8, ((5*a^3 + 60*a^2*b + 120*a*b^2 + 64*b^3)*x)/(16*a^5) - (sqrt(b)*(a + b)^(3/2)*(3*a + 8*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^5*f) - ((33*a^2 + 82*a*b + 48*b^2)*cos(e + f*x)*sin(e + f*x))/(48*a^3*f*(a + b + b*tan(e + f*x)^2)) + ((9*a + 8*b)*cos(e + f*x)^3*sin(e + f*x))/(24*a^2*f*(a + b + b*tan(e + f*x)^2)) + (cos(e + f*x)^3*sin(e + f*x)^3)/(6*a*f*(a + b + b*tan(e + f*x)^2)) - (b*(19*a^2 + 52*a*b + 32*b^2)*tan(e + f*x))/(16*a^4*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^4/(a + b*sec(e + f*x)^2)^2, x, 7, (3*(a^2 + 8*a*b + 8*b^2)*x)/(8*a^4) - (3*sqrt(b)*sqrt(a + b)*(a + 2*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^4*f) - ((5*a + 6*b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f*(a + b + b*tan(e + f*x)^2)) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f*(a + b + b*tan(e + f*x)^2)) - (3*b*(3*a + 4*b)*tan(e + f*x))/(8*a^3*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*sec(e + f*x)^2)^2, x, 6, ((a + 4*b)*x)/(2*a^3) - (sqrt(b)*(3*a + 4*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^3*sqrt(a + b)*f) - (cos(e + f*x)*sin(e + f*x))/(2*a*f*(a + b + b*tan(e + f*x)^2)) - (b*tan(e + f*x))/(a^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*sec(e + f*x)^2)^2, x, 5, x/a^2 - (sqrt(b)*(3*a + 2*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^2*(a + b)^(3/2)*f) - (b*tan(e + f*x))/(2*a*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/(a + b*sec(e + f*x)^2)^2, x, 4, (-3*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*(a + b)^(5/2)*f) - (3*cot(e + f*x))/(2*(a + b)^2*f) + cot(e + f*x)/(2*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^4/(a + b*sec(e + f*x)^2)^2, x, 5, -((3*a - 2*b)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*(a + b)^(7/2)*f) - ((a - b)*cot(e + f*x))/((a + b)^3*f) - cot(e + f*x)^3/(3*(a + b)^2*f) - (a*b*tan(e + f*x))/(2*(a + b)^3*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^6/(a + b*sec(e + f*x)^2)^2, x, 6, -(a*(3*a - 4*b)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*(a + b)^(9/2)*f) - ((5*a^2 - 10*a*b - b^2)*cot(e + f*x))/(5*(a + b)^4*f) - ((10*a + 3*b)*cot(e + f*x)^3)/(15*(a + b)^3*f) - cot(e + f*x)^5/(5*(a + b)*f*(a + b + b*tan(e + f*x)^2)) - (b*(5*a^2 + 2*b^2)*tan(e + f*x))/(10*(a + b)^4*f*(a + b + b*tan(e + f*x)^2))]


    @test_int [sin(e + f*x)^5/(a + b*sec(e + f*x)^2)^3, x, 6, (sqrt(b)*(15*a^2 + 70*a*b + 63*b^2)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(8*a^(11/2)*f) - ((3*a^2 + 14*a*b + 13*b^2)*cos(e + f*x))/(2*a^5*f) + ((a + 3*b)*(3*a + 5*b)*cos(e + f*x)^3)/(12*a^4*b*f) - cos(e + f*x)^5/(5*a^3*f) - ((a + b)^2*cos(e + f*x)^7)/(4*a^2*b*f*(b + a*cos(e + f*x)^2)^2) - (b*(a + b)*(3*a + 11*b)*cos(e + f*x))/(8*a^5*f*(b + a*cos(e + f*x)^2))]
    @test_int [sin(e + f*x)^3/(a + b*sec(e + f*x)^2)^3, x, 6, (5*sqrt(b)*(3*a + 7*b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(8*a^(9/2)*f) - ((a + 3*b)*cos(e + f*x))/(a^4*f) + cos(e + f*x)^3/(3*a^3*f) + (b^2*(a + b)*cos(e + f*x))/(4*a^4*f*(b + a*cos(e + f*x)^2)^2) - (b*(9*a + 13*b)*cos(e + f*x))/(8*a^4*f*(b + a*cos(e + f*x)^2))]
    @test_int [sin(e + f*x)^1/(a + b*sec(e + f*x)^2)^3, x, 5, (15*sqrt(b)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(8*a^(7/2)*f) - (15*cos(e + f*x))/(8*a^3*f) + cos(e + f*x)^5/(4*a*f*(b + a*cos(e + f*x)^2)^2) + (5*cos(e + f*x)^3)/(8*a^2*f*(b + a*cos(e + f*x)^2))]
    @test_int [csc(e + f*x)^1/(a + b*sec(e + f*x)^2)^3, x, 6, (sqrt(b)*(15*a^2 + 10*a*b + 3*b^2)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(8*a^(5/2)*(a + b)^3*f) - atanh(cos(e + f*x))/((a + b)^3*f) - (b*cos(e + f*x)^3)/(4*a*(a + b)*f*(b + a*cos(e + f*x)^2)^2) - (b*(7*a + 3*b)*cos(e + f*x))/(8*a^2*(a + b)^2*f*(b + a*cos(e + f*x)^2))]
    @test_int [csc(e + f*x)^3/(a + b*sec(e + f*x)^2)^3, x, 7, (sqrt(b)*(15*a^2 - 10*a*b - b^2)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(8*a^(3/2)*(a + b)^4*f) - ((a - 5*b)*atanh(cos(e + f*x)))/(2*(a + b)^4*f) - ((2*a - b)*b*cos(e + f*x))/(4*a*(a + b)^2*f*(b + a*cos(e + f*x)^2)^2) + ((4*a^2 - 9*a*b - b^2)*cos(e + f*x))/(8*a*(a + b)^3*f*(b + a*cos(e + f*x)^2)) - (cos(e + f*x)*cot(e + f*x)^2)/(2*(a + b)*f*(b + a*cos(e + f*x)^2)^2)]
    @test_int [csc(e + f*x)^5/(a + b*sec(e + f*x)^2)^3, x, 8, (3*sqrt(b)*(5*a^2 - 10*a*b + b^2)*atan((sqrt(a)*cos(e + f*x))/sqrt(b)))/(8*sqrt(a)*(a + b)^5*f) - (3*(a^2 - 10*a*b + 5*b^2)*atanh(cos(e + f*x)))/(8*(a + b)^5*f) + ((a^2 - 9*a*b + 2*b^2)*cos(e + f*x))/(8*(a + b)^3*f*(b + a*cos(e + f*x)^2)^2) + (3*(a^2 - 6*a*b + b^2)*cos(e + f*x))/(8*(a + b)^4*f*(b + a*cos(e + f*x)^2)) - ((a - 7*b)*cot(e + f*x)*csc(e + f*x))/(8*(a + b)^2*f*(b + a*cos(e + f*x)^2)^2) - (cot(e + f*x)^3*csc(e + f*x))/(4*(a + b)*f*(b + a*cos(e + f*x)^2)^2)]

    @test_int [sin(e + f*x)^6/(a + b*sec(e + f*x)^2)^3, x, 9, (5*(a + 2*b)*(a^2 + 16*a*b + 16*b^2)*x)/(16*a^6) - (5*sqrt(b)*sqrt(a + b)*(a + 4*b)*(3*a + 4*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^6*f) - ((33*a^2 + 110*a*b + 80*b^2)*cos(e + f*x)*sin(e + f*x))/(48*a^3*f*(a + b + b*tan(e + f*x)^2)^2) + ((9*a + 10*b)*cos(e + f*x)^3*sin(e + f*x))/(24*a^2*f*(a + b + b*tan(e + f*x)^2)^2) + (cos(e + f*x)^3*sin(e + f*x)^3)/(6*a*f*(a + b + b*tan(e + f*x)^2)^2) - (5*b*(9*a^2 + 32*a*b + 24*b^2)*tan(e + f*x))/(48*a^4*f*(a + b + b*tan(e + f*x)^2)^2) - (5*b*(5*a^2 + 20*a*b + 16*b^2)*tan(e + f*x))/(16*a^5*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^4/(a + b*sec(e + f*x)^2)^3, x, 8, (3*(a^2 + 12*a*b + 16*b^2)*x)/(8*a^5) - (3*sqrt(b)*(5*a^2 + 20*a*b + 16*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^5*sqrt(a + b)*f) - ((5*a + 8*b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f*(a + b + b*tan(e + f*x)^2)^2) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(7*a + 12*b)*tan(e + f*x))/(8*a^3*f*(a + b + b*tan(e + f*x)^2)^2) - (3*b*(a + 2*b)*tan(e + f*x))/(2*a^4*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*sec(e + f*x)^2)^3, x, 7, ((a + 6*b)*x)/(2*a^4) - (sqrt(b)*(15*a^2 + 40*a*b + 24*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^4*(a + b)^(3/2)*f) - (cos(e + f*x)*sin(e + f*x))/(2*a*f*(a + b + b*tan(e + f*x)^2)^2) - (3*b*tan(e + f*x))/(4*a^2*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(11*a + 12*b)*tan(e + f*x))/(8*a^3*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*sec(e + f*x)^2)^3, x, 6, x/a^3 - (sqrt(b)*(15*a^2 + 20*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^3*(a + b)^(5/2)*f) - (b*tan(e + f*x))/(4*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(7*a + 4*b)*tan(e + f*x))/(8*a^2*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/(a + b*sec(e + f*x)^2)^3, x, 5, (-15*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*(a + b)^(7/2)*f) - (15*cot(e + f*x))/(8*(a + b)^3*f) + cot(e + f*x)/(4*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) + (5*cot(e + f*x))/(8*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^4/(a + b*sec(e + f*x)^2)^3, x, 6, (-5*(3*a - 4*b)*sqrt(b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*(a + b)^(9/2)*f) - ((a - 2*b)*cot(e + f*x))/((a + b)^4*f) - cot(e + f*x)^3/(3*(a + b)^3*f) - (a*b*tan(e + f*x))/(4*(a + b)^3*f*(a + b + b*tan(e + f*x)^2)^2) - ((7*a - 4*b)*b*tan(e + f*x))/(8*(a + b)^4*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^6/(a + b*sec(e + f*x)^2)^3, x, 7, -(sqrt(b)*(15*a^2 - 40*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*(a + b)^(11/2)*f) - ((5*a^2 - 20*a*b + 2*b^2)*cot(e + f*x))/(5*(a + b)^5*f) - ((10*a + b)*cot(e + f*x)^3)/(15*(a + b)^4*f) - cot(e + f*x)^5/(5*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(5*a^2 + 4*b^2)*tan(e + f*x))/(20*(a + b)^4*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(35*a^2 - 40*a*b + 24*b^2)*tan(e + f*x))/(40*(a + b)^5*f*(a + b + b*tan(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sec(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(a + b*sec(e + f*x)^2)*sin(e + f*x)^5, x, 6, (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/f - (cos(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/f + (2*(5*a + b)*cos(e + f*x)^3*(a + b*sec(e + f*x)^2)^(3/2))/(15*a^2*f) - (cos(e + f*x)^5*(a + b*sec(e + f*x)^2)^(3/2))/(5*a*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*sin(e + f*x)^3, x, 5, (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/f - (cos(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/f + (cos(e + f*x)^3*(a + b*sec(e + f*x)^2)^(3/2))/(3*a*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*sin(e + f*x)^1, x, 4, (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/f - (cos(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/f]
    @test_int [csc(e + f*x)^1*sqrt(a + b*sec(e + f*x)^2), x, 6, (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/f - (sqrt(a + b)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/f]
    @test_int [csc(e + f*x)^3*sqrt(a + b*sec(e + f*x)^2), x, 7, (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/f - ((a + 2*b)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*sqrt(a + b)*f) - (cot(e + f*x)*csc(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(2*f)]
    @test_int [csc(e + f*x)^5*sqrt(a + b*sec(e + f*x)^2), x, 8, (sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/f - ((3*a^2 + 12*a*b + 8*b^2)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(8*(a + b)^(3/2)*f) - ((3*a + 4*b)*cot(e + f*x)*csc(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(8*(a + b)*f) - (cot(e + f*x)*csc(e + f*x)^3*sqrt(a + b*sec(e + f*x)^2))/(4*f)]

    @test_int [sqrt(a + b*sec(e + f*x)^2)*sin(e + f*x)^6, x, 9, ((5*a^3 - 15*a^2*b - 5*a*b^2 - b^3)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(5/2)*f) + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f - ((a - b)*(5*a + b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(16*a^2*f) - ((5*a - b)*cos(e + f*x)*sin(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(24*a*f) - (cos(e + f*x)*sin(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(6*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*sin(e + f*x)^4, x, 8, ((3*a^2 - 6*a*b - b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*a^(3/2)*f) + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f - ((3*a - b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*a*f) - (cos(e + f*x)*sin(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(4*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*sin(e + f*x)^2, x, 7, ((a - b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*sqrt(a)*f) + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f - (cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*sin(e + f*x)^0, x, 6, (sqrt(a)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f]
    @test_int [csc(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2), x, 4, (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f - (cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/f]
    @test_int [csc(e + f*x)^4*sqrt(a + b*sec(e + f*x)^2), x, 5, (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f - (cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/f - (cot(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^(3/2))/(3*(a + b)*f)]
    @test_int [csc(e + f*x)^6*sqrt(a + b*sec(e + f*x)^2), x, 6, (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f - (cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/f - (2*(5*a + 4*b)*cot(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^(3/2))/(15*(a + b)^2*f) - (cot(e + f*x)^5*(a + b + b*tan(e + f*x)^2)^(3/2))/(5*(a + b)*f)]


    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*sin(e + f*x)^5, x, 7, ((3*a - 4*b)*sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*f) + ((3*a - 4*b)*b*sec(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(2*a*f) - ((3*a - 4*b)*cos(e + f*x)*(a + b*sec(e + f*x)^2)^(3/2))/(3*a*f) + (2*cos(e + f*x)^3*(a + b*sec(e + f*x)^2)^(5/2))/(3*a*f) - (cos(e + f*x)^5*(a + b*sec(e + f*x)^2)^(5/2))/(5*a*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*sin(e + f*x)^3, x, 6, ((3*a - 2*b)*sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*f) + ((3*a - 2*b)*b*sec(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(2*a*f) - ((3*a - 2*b)*cos(e + f*x)*(a + b*sec(e + f*x)^2)^(3/2))/(3*a*f) + (cos(e + f*x)^3*(a + b*sec(e + f*x)^2)^(5/2))/(3*a*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*sin(e + f*x)^1, x, 5, (3*a*sqrt(b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*f) + (3*b*sec(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(2*f) - (cos(e + f*x)*(a + b*sec(e + f*x)^2)^(3/2))/f]
    @test_int [csc(e + f*x)^1*(a + b*sec(e + f*x)^2)^(3/2), x, 7, (sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*f) - ((a + b)^(3/2)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/f + (b*sec(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(2*f)]
    @test_int [csc(e + f*x)^3*(a + b*sec(e + f*x)^2)^(3/2), x, 8, (sqrt(b)*(3*a + 4*b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*f) - (sqrt(a + b)*(a + 4*b)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*f) + (b*sec(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/f - (cot(e + f*x)*csc(e + f*x)*(a + b*sec(e + f*x)^2)^(3/2))/(2*f)]
    @test_int [csc(e + f*x)^5*(a + b*sec(e + f*x)^2)^(3/2), x, 9, (3*sqrt(b)*(a + 2*b)*atanh((sqrt(b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*f) - (3*(a^2 + 8*a*b + 8*b^2)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(8*sqrt(a + b)*f) + (3*(a + 4*b)*sec(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(8*f) - (3*(a + 2*b)*csc(e + f*x)^2*sec(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(8*f) - (cot(e + f*x)*csc(e + f*x)^3*(a + b*sec(e + f*x)^2)^(3/2))/(4*f)]

    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*sin(e + f*x)^6, x, 10, ((5*a^3 - 45*a^2*b + 15*a*b^2 + b^3)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(3/2)*f) + ((3*a - 5*b)*sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) - ((5*a^2 - 26*a*b + b^2)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(16*a*f) + ((5*a^2 - 40*a*b + 3*b^2)*sin(e + f*x)^2*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(48*a*f) + ((5*a - 3*b)*sin(e + f*x)^4*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(24*f) - (cos(e + f*x)*sin(e + f*x)^5*(a + b + b*tan(e + f*x)^2)^(3/2))/(6*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*sin(e + f*x)^4, x, 9, (3*(a^2 - 6*a*b + b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*sqrt(a)*f) + (3*(a - b)*sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) - (3*(a - 3*b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*f) + (3*(a - b)*sin(e + f*x)^2*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*f) - (cos(e + f*x)*sin(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^(3/2))/(4*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*sin(e + f*x)^2, x, 8, (sqrt(a)*(a - 3*b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) + ((3*a - b)*sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) + (b*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/f - (cos(e + f*x)*sin(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(2*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*sin(e + f*x)^0, x, 7, (a^(3/2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f + (sqrt(b)*(3*a + b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) + (b*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*f)]
    @test_int [csc(e + f*x)^2*(a + b*sec(e + f*x)^2)^(3/2), x, 5, (3*sqrt(b)*(a + b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) + (3*b*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*f) - (cot(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/f]
    @test_int [csc(e + f*x)^4*(a + b*sec(e + f*x)^2)^(3/2), x, 6, (sqrt(b)*(3*a + 5*b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) + (b*(3*a + 5*b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*(a + b)*f) - ((3*a + 5*b)*cot(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(3*(a + b)*f) - (cot(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^(5/2))/(3*(a + b)*f)]
    @test_int [csc(e + f*x)^6*(a + b*sec(e + f*x)^2)^(3/2), x, 7, (sqrt(b)*(3*a + 7*b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) + (b*(3*a + 7*b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*(a + b)*f) - ((3*a + 7*b)*cot(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(3*(a + b)*f) - (2*cot(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^(5/2))/(3*(a + b)*f) - (cot(e + f*x)^5*(a + b + b*tan(e + f*x)^2)^(5/2))/(5*(a + b)*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sin(e + f*x)^5/sqrt(a + b*sec(e + f*x)^2), x, 4, -((15*a^2 + 20*a*b + 8*b^2)*cos(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(15*a^3*f) + (2*(5*a + 2*b)*cos(e + f*x)^3*sqrt(a + b*sec(e + f*x)^2))/(15*a^2*f) - (cos(e + f*x)^5*sqrt(a + b*sec(e + f*x)^2))/(5*a*f)]
    @test_int [sin(e + f*x)^3/sqrt(a + b*sec(e + f*x)^2), x, 3, -((3*a + 2*b)*cos(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(3*a^2*f) + (cos(e + f*x)^3*sqrt(a + b*sec(e + f*x)^2))/(3*a*f)]
    @test_int [sin(e + f*x)^1/sqrt(a + b*sec(e + f*x)^2), x, 2, -((cos(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(a*f))]
    @test_int [csc(e + f*x)^1/sqrt(a + b*sec(e + f*x)^2), x, 3, -(atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2))/(sqrt(a + b)*f))]
    @test_int [csc(e + f*x)^3/sqrt(a + b*sec(e + f*x)^2), x, 5, -((a*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*(a + b)^(3/2)*f)) - (cot(e + f*x)*csc(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(2*(a + b)*f)]
    @test_int [csc(e + f*x)^5/sqrt(a + b*sec(e + f*x)^2), x, 6, -((3*a^2*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(8*(a + b)^(5/2)*f)) - ((5*a + 2*b)*cot(e + f*x)*csc(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(8*(a + b)^2*f) - (cot(e + f*x)^3*csc(e + f*x)*sqrt(a + b*sec(e + f*x)^2))/(4*(a + b)*f)]

    @test_int [sin(e + f*x)^6/sqrt(a + b*sec(e + f*x)^2), x, 7, (5*(a + b)^3*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(7/2)*f) - ((33*a^2 + 40*a*b + 15*b^2)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(48*a^3*f) + ((9*a + 5*b)*cos(e + f*x)^3*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(24*a^2*f) + (cos(e + f*x)^3*sin(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(6*a*f)]
    @test_int [sin(e + f*x)^4/sqrt(a + b*sec(e + f*x)^2), x, 6, (3*(a + b)^2*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*a^(5/2)*f) - ((5*a + 3*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*a^2*f) + (cos(e + f*x)^3*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(4*a*f)]
    @test_int [sin(e + f*x)^2/sqrt(a + b*sec(e + f*x)^2), x, 5, ((a + b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*a^(3/2)*f) - (cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*a*f)]
    @test_int [sin(e + f*x)^0/sqrt(a + b*sec(e + f*x)^2), x, 3, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(a)*f)]
    @test_int [csc(e + f*x)^2/sqrt(a + b*sec(e + f*x)^2), x, 2, -((cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/((a + b)*f))]
    @test_int [csc(e + f*x)^4/sqrt(a + b*sec(e + f*x)^2), x, 3, -((3*a + b)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(3*(a + b)^2*f) - (cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(3*(a + b)*f)]
    @test_int [csc(e + f*x)^6/sqrt(a + b*sec(e + f*x)^2), x, 4, -((15*a^2 + 10*a*b + 3*b^2)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(15*(a + b)^3*f) - (2*(5*a + 3*b)*cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(15*(a + b)^2*f) - (cot(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(5*(a + b)*f)]


    @test_int [sin(e + f*x)^5/(a + b*sec(e + f*x)^2)^(3/2), x, 5, -((15*a^2 + 40*a*b + 24*b^2)*cos(e + f*x))/(15*a^3*f*sqrt(a + b*sec(e + f*x)^2)) + (2*(5*a + 3*b)*cos(e + f*x)^3)/(15*a^2*f*sqrt(a + b*sec(e + f*x)^2)) - cos(e + f*x)^5/(5*a*f*sqrt(a + b*sec(e + f*x)^2)) - (2*b*(15*a^2 + 40*a*b + 24*b^2)*sec(e + f*x))/(15*a^4*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^3/(a + b*sec(e + f*x)^2)^(3/2), x, 4, -(((3*a + 4*b)*cos(e + f*x))/(3*a^2*f*sqrt(a + b*sec(e + f*x)^2))) + cos(e + f*x)^3/(3*a*f*sqrt(a + b*sec(e + f*x)^2)) - (2*b*(3*a + 4*b)*sec(e + f*x))/(3*a^3*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^1/(a + b*sec(e + f*x)^2)^(3/2), x, 3, -(cos(e + f*x)/(a*f*sqrt(a + b*sec(e + f*x)^2))) - (2*b*sec(e + f*x))/(a^2*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^1/(a + b*sec(e + f*x)^2)^(3/2), x, 4, -(atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2))/((a + b)^(3/2)*f)) - (b*sec(e + f*x))/(a*(a + b)*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^3/(a + b*sec(e + f*x)^2)^(3/2), x, 6, -(((a - 2*b)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*(a + b)^(5/2)*f)) - (cot(e + f*x)*csc(e + f*x))/(2*(a + b)*f*sqrt(a + b*sec(e + f*x)^2)) - (3*b*sec(e + f*x))/(2*(a + b)^2*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^5/(a + b*sec(e + f*x)^2)^(3/2), x, 7, -((3*a*(a - 4*b)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(8*(a + b)^(7/2)*f)) - (5*a*cot(e + f*x)*csc(e + f*x))/(8*(a + b)^2*f*sqrt(a + b*sec(e + f*x)^2)) - (cot(e + f*x)^3*csc(e + f*x))/(4*(a + b)*f*sqrt(a + b*sec(e + f*x)^2)) - ((13*a - 2*b)*b*sec(e + f*x))/(8*(a + b)^3*f*sqrt(a + b*sec(e + f*x)^2))]

    @test_int [sin(e + f*x)^6/(a + b*sec(e + f*x)^2)^(3/2), x, 8, (5*(a + b)^2*(a + 7*b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(9/2)*f) - ((a + b)*(33*a + 35*b)*cos(e + f*x)*sin(e + f*x))/(48*a^3*f*sqrt(a + b + b*tan(e + f*x)^2)) + ((9*a + 7*b)*cos(e + f*x)^3*sin(e + f*x))/(24*a^2*f*sqrt(a + b + b*tan(e + f*x)^2)) + (cos(e + f*x)^3*sin(e + f*x)^3)/(6*a*f*sqrt(a + b + b*tan(e + f*x)^2)) - (b*(81*a^2 + 190*a*b + 105*b^2)*tan(e + f*x))/(48*a^4*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^4/(a + b*sec(e + f*x)^2)^(3/2), x, 7, (3*(a + b)*(a + 5*b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*a^(7/2)*f) - (5*(a + b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f*sqrt(a + b + b*tan(e + f*x)^2)) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f*sqrt(a + b + b*tan(e + f*x)^2)) - (b*(13*a + 15*b)*tan(e + f*x))/(8*a^3*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*sec(e + f*x)^2)^(3/2), x, 6, ((a + 3*b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*a^(5/2)*f) - (cos(e + f*x)*sin(e + f*x))/(2*a*f*sqrt(a + b + b*tan(e + f*x)^2)) - (3*b*tan(e + f*x))/(2*a^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*sec(e + f*x)^2)^(3/2), x, 4, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(3/2)*f) - (b*tan(e + f*x))/(a*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/(a + b*sec(e + f*x)^2)^(3/2), x, 3, -(cot(e + f*x)/((a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))) - (2*b*tan(e + f*x))/((a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^4/(a + b*sec(e + f*x)^2)^(3/2), x, 4, -((3*a - b)*cot(e + f*x))/(3*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2)) - cot(e + f*x)^3/(3*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2)) - (2*(3*a - b)*b*tan(e + f*x))/(3*(a + b)^3*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^6/(a + b*sec(e + f*x)^2)^(3/2), x, 5, -((15*a^2 - 10*a*b - b^2)*cot(e + f*x))/(15*(a + b)^3*f*sqrt(a + b + b*tan(e + f*x)^2)) - (2*(5*a + 2*b)*cot(e + f*x)^3)/(15*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2)) - cot(e + f*x)^5/(5*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2)) - (2*b*(15*a^2 - 10*a*b - b^2)*tan(e + f*x))/(15*(a + b)^4*f*sqrt(a + b + b*tan(e + f*x)^2))]


    @test_int [sin(e + f*x)^5/(a + b*sec(e + f*x)^2)^(5/2), x, 6, -((5*a^2 + 20*a*b + 16*b^2)*cos(e + f*x))/(5*a^3*f*(a + b*sec(e + f*x)^2)^(3/2)) + (2*(5*a + 4*b)*cos(e + f*x)^3)/(15*a^2*f*(a + b*sec(e + f*x)^2)^(3/2)) - cos(e + f*x)^5/(5*a*f*(a + b*sec(e + f*x)^2)^(3/2)) - (4*b*(5*a^2 + 20*a*b + 16*b^2)*sec(e + f*x))/(15*a^4*f*(a + b*sec(e + f*x)^2)^(3/2)) - (8*b*(5*a^2 + 20*a*b + 16*b^2)*sec(e + f*x))/(15*a^5*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^3/(a + b*sec(e + f*x)^2)^(5/2), x, 5, -(((a + 2*b)*cos(e + f*x))/(a^2*f*(a + b*sec(e + f*x)^2)^(3/2))) + cos(e + f*x)^3/(3*a*f*(a + b*sec(e + f*x)^2)^(3/2)) - (4*b*(a + 2*b)*sec(e + f*x))/(3*a^3*f*(a + b*sec(e + f*x)^2)^(3/2)) - (8*b*(a + 2*b)*sec(e + f*x))/(3*a^4*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [sin(e + f*x)^1/(a + b*sec(e + f*x)^2)^(5/2), x, 4, -(cos(e + f*x)/(a*f*(a + b*sec(e + f*x)^2)^(3/2))) - (4*b*sec(e + f*x))/(3*a^2*f*(a + b*sec(e + f*x)^2)^(3/2)) - (8*b*sec(e + f*x))/(3*a^3*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^1/(a + b*sec(e + f*x)^2)^(5/2), x, 6, -(atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2))/((a + b)^(5/2)*f)) - (b*sec(e + f*x))/(3*a*(a + b)*f*(a + b*sec(e + f*x)^2)^(3/2)) - (b*(5*a + 2*b)*sec(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^3/(a + b*sec(e + f*x)^2)^(5/2), x, 7, -(((a - 4*b)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(2*(a + b)^(7/2)*f)) - (cot(e + f*x)*csc(e + f*x))/(2*(a + b)*f*(a + b*sec(e + f*x)^2)^(3/2)) - (5*b*sec(e + f*x))/(6*(a + b)^2*f*(a + b*sec(e + f*x)^2)^(3/2)) - ((13*a - 2*b)*b*sec(e + f*x))/(6*a*(a + b)^3*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [csc(e + f*x)^5/(a + b*sec(e + f*x)^2)^(5/2), x, 8, -(((3*a^2 - 24*a*b + 8*b^2)*atanh((sqrt(a + b)*sec(e + f*x))/sqrt(a + b*sec(e + f*x)^2)))/(8*(a + b)^(9/2)*f)) - ((5*a - 2*b)*cot(e + f*x)*csc(e + f*x))/(8*(a + b)^2*f*(a + b*sec(e + f*x)^2)^(3/2)) - (cot(e + f*x)^3*csc(e + f*x))/(4*(a + b)*f*(a + b*sec(e + f*x)^2)^(3/2)) - ((23*a - 12*b)*b*sec(e + f*x))/(24*(a + b)^3*f*(a + b*sec(e + f*x)^2)^(3/2)) - (5*(11*a - 10*b)*b*sec(e + f*x))/(24*(a + b)^4*f*sqrt(a + b*sec(e + f*x)^2))]

    @test_int [sin(e + f*x)^6/(a + b*sec(e + f*x)^2)^(5/2), x, 9, (5*(a + b)*(a^2 + 14*a*b + 21*b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(11/2)*f) - ((a + b)*(11*a + 21*b)*cos(e + f*x)*sin(e + f*x))/(16*a^3*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (3*(a + b)*cos(e + f*x)^3*sin(e + f*x))/(8*a^2*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (cos(e + f*x)^3*sin(e + f*x)^3)/(6*a*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (7*b*(a + b)*(7*a + 15*b)*tan(e + f*x))/(48*a^4*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (b*(113*a^2 + 420*a*b + 315*b^2)*tan(e + f*x))/(48*a^5*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^4/(a + b*sec(e + f*x)^2)^(5/2), x, 8, ((3*a^2 + 30*a*b + 35*b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*a^(9/2)*f) - ((5*a + 7*b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (b*(23*a + 35*b)*tan(e + f*x))/(24*a^3*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (5*b*(11*a + 21*b)*tan(e + f*x))/(24*a^4*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^2/(a + b*sec(e + f*x)^2)^(5/2), x, 7, ((a + 5*b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*a^(7/2)*f) - (cos(e + f*x)*sin(e + f*x))/(2*a*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (5*b*tan(e + f*x))/(6*a^2*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (b*(13*a + 15*b)*tan(e + f*x))/(6*a^3*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sin(e + f*x)^0/(a + b*sec(e + f*x)^2)^(5/2), x, 6, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(5/2)*f) - (b*tan(e + f*x))/(3*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (b*(5*a + 3*b)*tan(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^2/(a + b*sec(e + f*x)^2)^(5/2), x, 4, -(cot(e + f*x)/((a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2))) - (4*b*tan(e + f*x))/(3*(a + b)^2*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (8*b*tan(e + f*x))/(3*(a + b)^3*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^4/(a + b*sec(e + f*x)^2)^(5/2), x, 5, -(((a - b)*cot(e + f*x))/((a + b)^2*f*(a + b + b*tan(e + f*x)^2)^(3/2))) - cot(e + f*x)^3/(3*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (4*(a - b)*b*tan(e + f*x))/(3*(a + b)^3*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (8*(a - b)*b*tan(e + f*x))/(3*(a + b)^4*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [csc(e + f*x)^6/(a + b*sec(e + f*x)^2)^(5/2), x, 6, -((5*a^2 - 10*a*b + b^2)*cot(e + f*x))/(5*(a + b)^3*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (2*(5*a + b)*cot(e + f*x)^3)/(15*(a + b)^2*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - cot(e + f*x)^5/(5*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (4*b*(5*a^2 - 10*a*b + b^2)*tan(e + f*x))/(15*(a + b)^4*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (8*b*(5*a^2 - 10*a*b + b^2)*tan(e + f*x))/(15*(a + b)^5*f*sqrt(a + b + b*tan(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sec(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(a + b*sec(e + f*x)^2)^p*(d*sin(e + f*x))^m, x, -1, (AppellF1((1 + m)/2, 1/2 + p, -p, (3 + m)/2, sin(e + f*x)^2, (a*sin(e + f*x)^2)/(a + b))*(cos(e + f*x)^2)^(1/2 + p)*(a + b*sec(e + f*x)^2)^p*(d*sin(e + f*x))^m*tan(e + f*x))/(((a + b - a*sin(e + f*x)^2)/(a + b))^p*(f*(1 + m)))]


    @test_int [(a + b*sec(e + f*x)^2)^p*sin(e + f*x)^5, x, 5, ((10*a + b*(3 - 2*p))*cos(e + f*x)^3*(a + b*sec(e + f*x)^2)^(1 + p))/(15*a^2*f) - (cos(e + f*x)^5*(a + b*sec(e + f*x)^2)^(1 + p))/(5*a*f) - ((15*a^2 + 10*a*b*(1 - 2*p) + b^2*(3 - 8*p + 4*p^2))*cos(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*sec(e + f*x)^2)/a))*(a + b*sec(e + f*x)^2)^p)/(15*a^2*f*(1 + (b*sec(e + f*x)^2)/a)^p)]
    @test_int [(a + b*sec(e + f*x)^2)^p*sin(e + f*x)^3, x, 4, (cos(e + f*x)^3*(a + b*sec(e + f*x)^2)^(1 + p))/(3*a*f) - ((3*a + b - 2*b*p)*cos(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*sec(e + f*x)^2)/a))*(a + b*sec(e + f*x)^2)^p)/(3*a*f*(1 + (b*sec(e + f*x)^2)/a)^p)]
    @test_int [(a + b*sec(e + f*x)^2)^p*sin(e + f*x)^1, x, 3, -((cos(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*sec(e + f*x)^2)/a))*(a + b*sec(e + f*x)^2)^p)/(f*(1 + (b*sec(e + f*x)^2)/a)^p))]
    @test_int [csc(e + f*x)^1*(a + b*sec(e + f*x)^2)^p, x, 3, -((AppellF1(1/2, 1, -p, 3/2, sec(e + f*x)^2, -((b*sec(e + f*x)^2)/a))*sec(e + f*x)*(a + b*sec(e + f*x)^2)^p)/(f*(1 + (b*sec(e + f*x)^2)/a)^p))]
    @test_int [csc(e + f*x)^3*(a + b*sec(e + f*x)^2)^p, x, 3, (AppellF1(3/2, 2, -p, 5/2, sec(e + f*x)^2, -((b*sec(e + f*x)^2)/a))*sec(e + f*x)^3*(a + b*sec(e + f*x)^2)^p)/(3*f*(1 + (b*sec(e + f*x)^2)/a)^p)]

    @test_int [(a + b*sec(e + f*x)^2)^p*sin(e + f*x)^4, x, 3, (AppellF1(5/2, 3, -p, 7/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)^5*(a + b + b*tan(e + f*x)^2)^p)/(5*f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [(a + b*sec(e + f*x)^2)^p*sin(e + f*x)^2, x, 3, (AppellF1(3/2, 2, -p, 5/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^p)/(3*f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [(a + b*sec(e + f*x)^2)^p*sin(e + f*x)^0, x, 3, (AppellF1(1/2, 1, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [csc(e + f*x)^2*(a + b*sec(e + f*x)^2)^p, x, 3, -((cot(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*tan(e + f*x)^2)/(a + b)))*(a + b + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/(a + b))^p))]
    @test_int [csc(e + f*x)^4*(a + b*sec(e + f*x)^2)^p, x, 4, -(cot(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^(1 + p))/(3*(a + b)*f) - ((3*a + 2*b*(1 + p))*cot(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*tan(e + f*x)^2)/(a + b)))*(a + b + b*tan(e + f*x)^2)^p)/(3*(a + b)*f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [csc(e + f*x)^6*(a + b*sec(e + f*x)^2)^p, x, 5, -((10*a + b*(7 + 2*p))*cot(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^(1 + p))/(15*(a + b)^2*f) - (cot(e + f*x)^5*(a + b + b*tan(e + f*x)^2)^(1 + p))/(5*(a + b)*f) - ((15*a^2 + 20*a*b*(1 + p) + 4*b^2*(2 + 3*p + p^2))*cot(e + f*x)*Hypergeometric2F1(-1/2, -p, 1/2, -((b*tan(e + f*x)^2)/(a + b)))*(a + b + b*tan(e + f*x)^2)^p)/(15*(a + b)^2*f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]


    #= ::Section:: =#
    #=Integrands*of*the*form*sin(e+f*x)^m*(a+b*sec(e+f*x)^n)^p=#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^2)^p*when*a+b=0=#


    @test_int [(a - a*sec(c + d*x)^2)^4, x, 6, a^4*x - (a^4*tan(c + d*x))/d + (a^4*tan(c + d*x)^3)/(3*d) - (a^4*tan(c + d*x)^5)/(5*d) + (a^4*tan(c + d*x)^7)/(7*d)]
    @test_int [(a - a*sec(c + d*x)^2)^3, x, 5, a^3*x - (a^3*tan(c + d*x))/d + (a^3*tan(c + d*x)^3)/(3*d) - (a^3*tan(c + d*x)^5)/(5*d)]
    @test_int [(a - a*sec(c + d*x)^2)^2, x, 4, a^2*x - (a^2*tan(c + d*x))/d + (a^2*tan(c + d*x)^3)/(3*d)]
    @test_int [(a - a*sec(c + d*x)^2)^1, x, 3, a*x - (a*tan(c + d*x))/d]
    @test_int [1/(a - a*sec(c + d*x)^2)^1, x, 3, x/a + cot(c + d*x)/(a*d)]
    @test_int [1/(a - a*sec(c + d*x)^2)^2, x, 4, x/a^2 + cot(c + d*x)/(a^2*d) - cot(c + d*x)^3/(3*a^2*d)]
    @test_int [1/(a - a*sec(c + d*x)^2)^3, x, 5, x/a^3 + cot(c + d*x)/(a^3*d) - cot(c + d*x)^3/(3*a^3*d) + cot(c + d*x)^5/(5*a^3*d)]
    @test_int [1/(a - a*sec(c + d*x)^2)^4, x, 6, x/a^4 + cot(c + d*x)/(a^4*d) - cot(c + d*x)^3/(3*a^4*d) + cot(c + d*x)^5/(5*a^4*d) - cot(c + d*x)^7/(7*a^4*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sec(e + f*x)^5*(a + b*sec(e + f*x)^2), x, 4, ((6*a + 5*b)*atanh(sin(e + f*x)))/(16*f) + ((6*a + 5*b)*sec(e + f*x)*tan(e + f*x))/(16*f) + ((6*a + 5*b)*sec(e + f*x)^3*tan(e + f*x))/(24*f) + (b*sec(e + f*x)^5*tan(e + f*x))/(6*f)]
    @test_int [sec(e + f*x)^3*(a + b*sec(e + f*x)^2), x, 3, ((4*a + 3*b)*atanh(sin(e + f*x)))/(8*f) + ((4*a + 3*b)*sec(e + f*x)*tan(e + f*x))/(8*f) + (b*sec(e + f*x)^3*tan(e + f*x))/(4*f)]
    @test_int [sec(e + f*x)^1*(a + b*sec(e + f*x)^2), x, 2, ((2*a + b)*atanh(sin(e + f*x)))/(2*f) + (b*sec(e + f*x)*tan(e + f*x))/(2*f)]
    @test_int [cos(e + f*x)^1*(a + b*sec(e + f*x)^2), x, 2, (b*atanh(sin(e + f*x)))/f + (a*sin(e + f*x))/f]
    @test_int [cos(e + f*x)^3*(a + b*sec(e + f*x)^2), x, 3, ((a + b)*sin(e + f*x))/f - (a*sin(e + f*x)^3)/(3*f)]
    @test_int [cos(e + f*x)^5*(a + b*sec(e + f*x)^2), x, 4, ((a + b)*sin(e + f*x))/f - ((2*a + b)*sin(e + f*x)^3)/(3*f) + (a*sin(e + f*x)^5)/(5*f)]

    @test_int [sec(e + f*x)^6*(a + b*sec(e + f*x)^2), x, 3, ((7*a + 6*b)*tan(e + f*x))/(7*f) + (b*sec(e + f*x)^6*tan(e + f*x))/(7*f) + (2*(7*a + 6*b)*tan(e + f*x)^3)/(21*f) + ((7*a + 6*b)*tan(e + f*x)^5)/(35*f)]
    @test_int [sec(e + f*x)^4*(a + b*sec(e + f*x)^2), x, 3, ((5*a + 4*b)*tan(e + f*x))/(5*f) + (b*sec(e + f*x)^4*tan(e + f*x))/(5*f) + ((5*a + 4*b)*tan(e + f*x)^3)/(15*f)]
    @test_int [sec(e + f*x)^2*(a + b*sec(e + f*x)^2), x, 3, ((3*a + 2*b)*tan(e + f*x))/(3*f) + (b*sec(e + f*x)^2*tan(e + f*x))/(3*f)]
    @test_int [sec(e + f*x)^0*(a + b*sec(e + f*x)^2), x, 3, a*x + (b*tan(e + f*x))/f]
    @test_int [cos(e + f*x)^2*(a + b*sec(e + f*x)^2), x, 2, ((a + 2*b)*x)/2 + (a*cos(e + f*x)*sin(e + f*x))/(2*f)]
    @test_int [cos(e + f*x)^4*(a + b*sec(e + f*x)^2), x, 3, ((3*a + 4*b)*x)/8 + ((3*a + 4*b)*cos(e + f*x)*sin(e + f*x))/(8*f) + (a*cos(e + f*x)^3*sin(e + f*x))/(4*f)]
    @test_int [cos(e + f*x)^6*(a + b*sec(e + f*x)^2), x, 4, ((5*a + 6*b)*x)/16 + ((5*a + 6*b)*cos(e + f*x)*sin(e + f*x))/(16*f) + ((5*a + 6*b)*cos(e + f*x)^3*sin(e + f*x))/(24*f) + (a*cos(e + f*x)^5*sin(e + f*x))/(6*f)]


    @test_int [sec(e + f*x)^5*(a + b*sec(e + f*x)^2)^2, x, 6, ((48*a^2 + 80*a*b + 35*b^2)*atanh(sin(e + f*x)))/(128*f) + ((48*a^2 + 80*a*b + 35*b^2)*sec(e + f*x)*tan(e + f*x))/(128*f) + ((48*a^2 + 80*a*b + 35*b^2)*sec(e + f*x)^3*tan(e + f*x))/(192*f) + (b*(10*a + 7*b)*sec(e + f*x)^5*tan(e + f*x))/(48*f) + (b*sec(e + f*x)^7*(a + b - a*sin(e + f*x)^2)*tan(e + f*x))/(8*f)]
    @test_int [sec(e + f*x)^3*(a + b*sec(e + f*x)^2)^2, x, 5, ((8*a^2 + 12*a*b + 5*b^2)*atanh(sin(e + f*x)))/(16*f) + ((8*a^2 + 12*a*b + 5*b^2)*sec(e + f*x)*tan(e + f*x))/(16*f) + (b*(8*a + 5*b)*sec(e + f*x)^3*tan(e + f*x))/(24*f) + (b*sec(e + f*x)^5*(a + b - a*sin(e + f*x)^2)*tan(e + f*x))/(6*f)]
    @test_int [sec(e + f*x)^1*(a + b*sec(e + f*x)^2)^2, x, 4, ((8*a^2 + 8*a*b + 3*b^2)*atanh(sin(e + f*x)))/(8*f) + (3*b*(2*a + b)*sec(e + f*x)*tan(e + f*x))/(8*f) + (b*sec(e + f*x)^3*(a + b - a*sin(e + f*x)^2)*tan(e + f*x))/(4*f)]
    @test_int [cos(e + f*x)^1*(a + b*sec(e + f*x)^2)^2, x, 5, (b*(4*a + b)*atanh(sin(e + f*x)))/(2*f) + (a^2*sin(e + f*x))/f + (b^2*sec(e + f*x)*tan(e + f*x))/(2*f)]
    @test_int [cos(e + f*x)^3*(a + b*sec(e + f*x)^2)^2, x, 4, (b^2*atanh(sin(e + f*x)))/f + (a*(a + 2*b)*sin(e + f*x))/f - (a^2*sin(e + f*x)^3)/(3*f)]
    @test_int [cos(e + f*x)^5*(a + b*sec(e + f*x)^2)^2, x, 3, ((a + b)^2*sin(e + f*x))/f - (2*a*(a + b)*sin(e + f*x)^3)/(3*f) + (a^2*sin(e + f*x)^5)/(5*f)]

    @test_int [sec(e + f*x)^6*(a + b*sec(e + f*x)^2)^2, x, 3, ((a + b)^2*tan(e + f*x))/f + (2*(a + b)*(a + 2*b)*tan(e + f*x)^3)/(3*f) + ((a^2 + 6*a*b + 6*b^2)*tan(e + f*x)^5)/(5*f) + (2*b*(a + 2*b)*tan(e + f*x)^7)/(7*f) + (b^2*tan(e + f*x)^9)/(9*f)]
    @test_int [sec(e + f*x)^4*(a + b*sec(e + f*x)^2)^2, x, 3, ((a + b)^2*tan(e + f*x))/f + ((a + b)*(a + 3*b)*tan(e + f*x)^3)/(3*f) + (b*(2*a + 3*b)*tan(e + f*x)^5)/(5*f) + (b^2*tan(e + f*x)^7)/(7*f)]
    @test_int [sec(e + f*x)^2*(a + b*sec(e + f*x)^2)^2, x, 3, ((a + b)^2*tan(e + f*x))/f + (2*b*(a + b)*tan(e + f*x)^3)/(3*f) + (b^2*tan(e + f*x)^5)/(5*f)]
    @test_int [sec(e + f*x)^0*(a + b*sec(e + f*x)^2)^2, x, 4, a^2*x + (b*(2*a + b)*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [cos(e + f*x)^2*(a + b*sec(e + f*x)^2)^2, x, 5, (a*(a + 4*b)*x)/2 + (a^2*cos(e + f*x)*sin(e + f*x))/(2*f) + (b^2*tan(e + f*x))/f]
    @test_int [cos(e + f*x)^4*(a + b*sec(e + f*x)^2)^2, x, 4, ((3*a^2 + 8*a*b + 8*b^2)*x)/8 + (3*a*(a + 2*b)*cos(e + f*x)*sin(e + f*x))/(8*f) + (a*cos(e + f*x)^3*sin(e + f*x)*(a + b + b*tan(e + f*x)^2))/(4*f)]
    @test_int [cos(e + f*x)^6*(a + b*sec(e + f*x)^2)^2, x, 5, ((5*a^2 + 12*a*b + 8*b^2)*x)/16 + ((5*a^2 + 12*a*b + 8*b^2)*cos(e + f*x)*sin(e + f*x))/(16*f) + (a*(5*a + 8*b)*cos(e + f*x)^3*sin(e + f*x))/(24*f) + (a*cos(e + f*x)^5*sin(e + f*x)*(a + b + b*tan(e + f*x)^2))/(6*f)]


    @test_int [(a + b*sec(c + d*x)^2)^3, x, 4, a^3*x + (b*(3*a^2 + 3*a*b + b^2)*tan(c + d*x))/d + (b^2*(3*a + 2*b)*tan(c + d*x)^3)/(3*d) + (b^3*tan(c + d*x)^5)/(5*d)]
    @test_int [(a + b*sec(c + d*x)^2)^4, x, 4, a^4*x + (b*(2*a + b)*(2*a^2 + 2*a*b + b^2)*tan(c + d*x))/d + (b^2*(6*a^2 + 8*a*b + 3*b^2)*tan(c + d*x)^3)/(3*d) + (b^3*(4*a + 3*b)*tan(c + d*x)^5)/(5*d) + (b^4*tan(c + d*x)^7)/(7*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sec(e + f*x)^5/(a + b*sec(e + f*x)^2), x, 5, -((2*a - b)*atanh(sin(e + f*x)))/(2*b^2*f) + (a^(3/2)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(b^2*sqrt(a + b)*f) + (sec(e + f*x)*tan(e + f*x))/(2*b*f)]
    @test_int [sec(e + f*x)^3/(a + b*sec(e + f*x)^2), x, 4, atanh(sin(e + f*x))/(b*f) - (sqrt(a)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(b*sqrt(a + b)*f)]
    @test_int [sec(e + f*x)^1/(a + b*sec(e + f*x)^2), x, 2, atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b))/(sqrt(a)*sqrt(a + b)*f)]
    @test_int [cos(e + f*x)^1/(a + b*sec(e + f*x)^2), x, 3, -((b*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(a^(3/2)*sqrt(a + b)*f)) + sin(e + f*x)/(a*f)]
    @test_int [cos(e + f*x)^3/(a + b*sec(e + f*x)^2), x, 4, (b^2*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(a^(5/2)*sqrt(a + b)*f) + ((a - b)*sin(e + f*x))/(a^2*f) - sin(e + f*x)^3/(3*a*f)]
    @test_int [cos(e + f*x)^5/(a + b*sec(e + f*x)^2), x, 4, -((b^3*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(a^(7/2)*sqrt(a + b)*f)) + ((a^2 - a*b + b^2)*sin(e + f*x))/(a^3*f) - ((2*a - b)*sin(e + f*x)^3)/(3*a^2*f) + sin(e + f*x)^5/(5*a*f)]

    @test_int [sec(e + f*x)^6/(a + b*sec(e + f*x)^2), x, 4, (a^2*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(b^(5/2)*sqrt(a + b)*f) - ((a - b)*tan(e + f*x))/(b^2*f) + tan(e + f*x)^3/(3*b*f)]
    @test_int [sec(e + f*x)^4/(a + b*sec(e + f*x)^2), x, 3, -((a*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(b^(3/2)*sqrt(a + b)*f)) + tan(e + f*x)/(b*f)]
    @test_int [sec(e + f*x)^2/(a + b*sec(e + f*x)^2), x, 2, atan((sqrt(b)*tan(e + f*x))/sqrt(a + b))/(sqrt(b)*sqrt(a + b)*f)]
    @test_int [sec(e + f*x)^0/(a + b*sec(e + f*x)^2), x, 3, x/a + (sqrt(b)*atan((sqrt(a + b)*cot(e + f*x))/sqrt(b)))/(a*sqrt(a + b)*f)]
    @test_int [cos(e + f*x)^2/(a + b*sec(e + f*x)^2), x, 5, ((a - 2*b)*x)/(2*a^2) + (b^(3/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a^2*sqrt(a + b)*f) + (cos(e + f*x)*sin(e + f*x))/(2*a*f)]
    @test_int [cos(e + f*x)^4/(a + b*sec(e + f*x)^2), x, 6, ((3*a^2 - 4*a*b + 8*b^2)*x)/(8*a^3) - (b^(5/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a^3*sqrt(a + b)*f) + ((3*a - 4*b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f)]
    @test_int [cos(e + f*x)^6/(a + b*sec(e + f*x)^2), x, 7, ((5*a^3 - 6*a^2*b + 8*a*b^2 - 16*b^3)*x)/(16*a^4) + (b^(7/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a^4*sqrt(a + b)*f) + ((5*a^2 - 6*a*b + 8*b^2)*cos(e + f*x)*sin(e + f*x))/(16*a^3*f) + ((5*a - 6*b)*cos(e + f*x)^3*sin(e + f*x))/(24*a^2*f) + (cos(e + f*x)^5*sin(e + f*x))/(6*a*f)]


    @test_int [sec(e + f*x)^5/(a + b*sec(e + f*x)^2)^2, x, 5, atanh(sin(e + f*x))/(b^2*f) - (sqrt(a)*(2*a + 3*b)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(2*b^2*(a + b)^(3/2)*f) - (a*sin(e + f*x))/(2*b*(a + b)*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^3/(a + b*sec(e + f*x)^2)^2, x, 3, atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b))/(2*sqrt(a)*(a + b)^(3/2)*f) + sin(e + f*x)/(2*(a + b)*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^1/(a + b*sec(e + f*x)^2)^2, x, 3, ((2*a + b)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(2*a^(3/2)*(a + b)^(3/2)*f) - (b*sin(e + f*x))/(2*a*(a + b)*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^1/(a + b*sec(e + f*x)^2)^2, x, 5, -(b*(4*a + 3*b)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(2*a^(5/2)*(a + b)^(3/2)*f) + sin(e + f*x)/(a^2*f) + (b^2*sin(e + f*x))/(2*a^2*(a + b)*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^3/(a + b*sec(e + f*x)^2)^2, x, 5, (b^2*(6*a + 5*b)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(2*a^(7/2)*(a + b)^(3/2)*f) + ((a - 2*b)*sin(e + f*x))/(a^3*f) - sin(e + f*x)^3/(3*a^2*f) - (b^3*sin(e + f*x))/(2*a^3*(a + b)*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^5/(a + b*sec(e + f*x)^2)^2, x, 5, -(b^3*(8*a + 7*b)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(2*a^(9/2)*(a + b)^(3/2)*f) + ((a^2 - 2*a*b + 3*b^2)*sin(e + f*x))/(a^4*f) - (2*(a - b)*sin(e + f*x)^3)/(3*a^3*f) + sin(e + f*x)^5/(5*a^2*f) + (b^4*sin(e + f*x))/(2*a^4*(a + b)*f*(a + b - a*sin(e + f*x)^2))]

    @test_int [sec(e + f*x)^6/(a + b*sec(e + f*x)^2)^2, x, 5, -(a*(3*a + 4*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*b^(5/2)*(a + b)^(3/2)*f) + tan(e + f*x)/(b^2*f) + (a^2*tan(e + f*x))/(2*b^2*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^4/(a + b*sec(e + f*x)^2)^2, x, 3, ((a + 2*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*b^(3/2)*(a + b)^(3/2)*f) - (a*tan(e + f*x))/(2*b*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^2/(a + b*sec(e + f*x)^2)^2, x, 3, atan((sqrt(b)*tan(e + f*x))/sqrt(a + b))/(2*sqrt(b)*(a + b)^(3/2)*f) + tan(e + f*x)/(2*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^0/(a + b*sec(e + f*x)^2)^2, x, 5, x/a^2 - (sqrt(b)*(3*a + 2*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^2*(a + b)^(3/2)*f) - (b*tan(e + f*x))/(2*a*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^2/(a + b*sec(e + f*x)^2)^2, x, 6, ((a - 4*b)*x)/(2*a^3) + (b^(3/2)*(5*a + 4*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^3*(a + b)^(3/2)*f) + (cos(e + f*x)*sin(e + f*x))/(2*a*f*(a + b + b*tan(e + f*x)^2)) + (b*(a + 2*b)*tan(e + f*x))/(2*a^2*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^4/(a + b*sec(e + f*x)^2)^2, x, 7, ((3*a^2 - 8*a*b + 24*b^2)*x)/(8*a^4) - (b^(5/2)*(7*a + 6*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^4*(a + b)^(3/2)*f) + (3*(a - 2*b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f*(a + b + b*tan(e + f*x)^2)) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f*(a + b + b*tan(e + f*x)^2)) + ((a - 3*b)*b*(3*a + 4*b)*tan(e + f*x))/(8*a^3*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^6/(a + b*sec(e + f*x)^2)^2, x, 8, ((5*a^3 - 12*a^2*b + 24*a*b^2 - 64*b^3)*x)/(16*a^5) + (b^(7/2)*(9*a + 8*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^5*(a + b)^(3/2)*f) + ((15*a^2 - 26*a*b + 48*b^2)*cos(e + f*x)*sin(e + f*x))/(48*a^3*f*(a + b + b*tan(e + f*x)^2)) + ((5*a - 8*b)*cos(e + f*x)^3*sin(e + f*x))/(24*a^2*f*(a + b + b*tan(e + f*x)^2)) + (cos(e + f*x)^5*sin(e + f*x))/(6*a*f*(a + b + b*tan(e + f*x)^2)) + (b*(5*a^3 - 7*a^2*b + 12*a*b^2 + 32*b^3)*tan(e + f*x))/(16*a^4*(a + b)*f*(a + b + b*tan(e + f*x)^2))]


    @test_int [sec(e + f*x)^5/(a + b*sec(e + f*x)^2)^3, x, 4, (3*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(8*sqrt(a)*(a + b)^(5/2)*f) + sin(e + f*x)/(4*(a + b)*f*(a + b - a*sin(e + f*x)^2)^2) + (3*sin(e + f*x))/(8*(a + b)^2*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^3/(a + b*sec(e + f*x)^2)^3, x, 4, ((4*a + b)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(8*a^(3/2)*(a + b)^(5/2)*f) - (b*sin(e + f*x))/(4*a*(a + b)*f*(a + b - a*sin(e + f*x)^2)^2) + ((4*a + b)*sin(e + f*x))/(8*a*(a + b)^2*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [sec(e + f*x)^1/(a + b*sec(e + f*x)^2)^3, x, 4, ((8*a^2 + 8*a*b + 3*b^2)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(8*a^(5/2)*(a + b)^(5/2)*f) - (b*cos(e + f*x)^2*sin(e + f*x))/(4*a*(a + b)*f*(a + b - a*sin(e + f*x)^2)^2) - (3*b*(2*a + b)*sin(e + f*x))/(8*a^2*(a + b)^2*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^1/(a + b*sec(e + f*x)^2)^3, x, 6, -((3*b*(4*(a + b)^2 + (2*a + b)^2)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(8*a^(7/2)*(a + b)^(5/2)*f)) + sin(e + f*x)/(a^3*f) - (b^3*sin(e + f*x))/(4*a^3*(a + b)*f*(a + b - a*sin(e + f*x)^2)^2) + (3*b^2*(4*a + 3*b)*sin(e + f*x))/(8*a^3*(a + b)^2*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^3/(a + b*sec(e + f*x)^2)^3, x, 6, (b^2*(48*a^2 + 80*a*b + 35*b^2)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(8*a^(9/2)*(a + b)^(5/2)*f) + ((a - 3*b)*sin(e + f*x))/(a^4*f) - sin(e + f*x)^3/(3*a^3*f) + (b^4*sin(e + f*x))/(4*a^4*(a + b)*f*(a + b - a*sin(e + f*x)^2)^2) - (b^3*(16*a + 13*b)*sin(e + f*x))/(8*a^4*(a + b)^2*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^5/(a + b*sec(e + f*x)^2)^3, x, 6, -(b^3*(80*a^2 + 140*a*b + 63*b^2)*atanh((sqrt(a)*sin(e + f*x))/sqrt(a + b)))/(8*a^(11/2)*(a + b)^(5/2)*f) + ((a^2 - 3*a*b + 6*b^2)*sin(e + f*x))/(a^5*f) - ((2*a - 3*b)*sin(e + f*x)^3)/(3*a^4*f) + sin(e + f*x)^5/(5*a^3*f) - (b^5*sin(e + f*x))/(4*a^5*(a + b)*f*(a + b - a*sin(e + f*x)^2)^2) + (b^4*(20*a + 17*b)*sin(e + f*x))/(8*a^5*(a + b)^2*f*(a + b - a*sin(e + f*x)^2))]

    @test_int [sec(e + f*x)^6/(a + b*sec(e + f*x)^2)^3, x, 4, ((3*a^2 + 8*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*b^(5/2)*(a + b)^(5/2)*f) - (a*sec(e + f*x)^2*tan(e + f*x))/(4*b*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) - (3*a*(a + 2*b)*tan(e + f*x))/(8*b^2*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^4/(a + b*sec(e + f*x)^2)^3, x, 4, ((a + 4*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*b^(3/2)*(a + b)^(5/2)*f) - (a*tan(e + f*x))/(4*b*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) + ((a + 4*b)*tan(e + f*x))/(8*b*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^2/(a + b*sec(e + f*x)^2)^3, x, 4, (3*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*sqrt(b)*(a + b)^(5/2)*f) + tan(e + f*x)/(4*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) + (3*tan(e + f*x))/(8*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^0/(a + b*sec(e + f*x)^2)^3, x, 6, x/a^3 - (sqrt(b)*(15*a^2 + 20*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^3*(a + b)^(5/2)*f) - (b*tan(e + f*x))/(4*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(7*a + 4*b)*tan(e + f*x))/(8*a^2*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^2/(a + b*sec(e + f*x)^2)^3, x, 7, ((a - 6*b)*x)/(2*a^4) + (b^(3/2)*(35*a^2 + 56*a*b + 24*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^4*(a + b)^(5/2)*f) + (cos(e + f*x)*sin(e + f*x))/(2*a*f*(a + b + b*tan(e + f*x)^2)^2) + (b*(2*a + 3*b)*tan(e + f*x))/(4*a^2*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) + (b*(4*a + 3*b)*(a + 4*b)*tan(e + f*x))/(8*a^3*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^4/(a + b*sec(e + f*x)^2)^3, x, 8, (3*(a^2 - 4*a*b + 16*b^2)*x)/(8*a^5) - (3*b^(5/2)*(21*a^2 + 36*a*b + 16*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^5*(a + b)^(5/2)*f) + ((3*a - 8*b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f*(a + b + b*tan(e + f*x)^2)^2) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f*(a + b + b*tan(e + f*x)^2)^2) + (b*(3*a^2 - 7*a*b - 12*b^2)*tan(e + f*x))/(8*a^3*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) + (3*b*(a + 2*b)*(a^2 - 4*a*b - 4*b^2)*tan(e + f*x))/(8*a^4*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^6/(a + b*sec(e + f*x)^2)^3, x, 9, ((5*a^3 - 18*a^2*b + 48*a*b^2 - 160*b^3)*x)/(16*a^6) + (b^(7/2)*(99*a^2 + 176*a*b + 80*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^6*(a + b)^(5/2)*f) + ((15*a^2 - 34*a*b + 80*b^2)*cos(e + f*x)*sin(e + f*x))/(48*a^3*f*(a + b + b*tan(e + f*x)^2)^2) + (5*(a - 2*b)*cos(e + f*x)^3*sin(e + f*x))/(24*a^2*f*(a + b + b*tan(e + f*x)^2)^2) + (cos(e + f*x)^5*sin(e + f*x))/(6*a*f*(a + b + b*tan(e + f*x)^2)^2) + (b*(15*a^3 - 29*a^2*b + 64*a*b^2 + 120*b^3)*tan(e + f*x))/(48*a^4*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) + (b*(5*a^4 - 8*a^3*b + 17*a^2*b^2 + 116*a*b^3 + 80*b^4)*tan(e + f*x))/(16*a^5*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]


    @test_int [1/(a + b*sec(c + d*x)^2)^4, x, 7, x/a^4 - (sqrt(b)*(35*a^3 + 70*a^2*b + 56*a*b^2 + 16*b^3)*atan((sqrt(b)*tan(c + d*x))/sqrt(a + b)))/(16*a^4*(a + b)^(7/2)*d) - (b*tan(c + d*x))/(6*a*(a + b)*d*(a + b + b*tan(c + d*x)^2)^3) - (b*(11*a + 6*b)*tan(c + d*x))/(24*a^2*(a + b)^2*d*(a + b + b*tan(c + d*x)^2)^2) - (b*(19*a^2 + 22*a*b + 8*b^2)*tan(c + d*x))/(16*a^3*(a + b)^3*d*(a + b + b*tan(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^2)^(p/2)*when*a+b=0=#


    @test_int [(a - a*sec(c + d*x)^2)^(7/2), x, 6, -((a^3*cot(c + d*x)*log(cos(c + d*x))*sqrt((-a)*tan(c + d*x)^2))/d) - (a^3*tan(c + d*x)*sqrt((-a)*tan(c + d*x)^2))/(2*d) + (a^3*tan(c + d*x)^3*sqrt((-a)*tan(c + d*x)^2))/(4*d) - (a^3*tan(c + d*x)^5*sqrt((-a)*tan(c + d*x)^2))/(6*d)]
    @test_int [(a - a*sec(c + d*x)^2)^(5/2), x, 5, -((a^2*cot(c + d*x)*log(cos(c + d*x))*sqrt((-a)*tan(c + d*x)^2))/d) - (a^2*tan(c + d*x)*sqrt((-a)*tan(c + d*x)^2))/(2*d) + (a^2*tan(c + d*x)^3*sqrt((-a)*tan(c + d*x)^2))/(4*d)]
    @test_int [(a - a*sec(c + d*x)^2)^(3/2), x, 4, -((a*cot(c + d*x)*log(cos(c + d*x))*sqrt((-a)*tan(c + d*x)^2))/d) - (a*tan(c + d*x)*sqrt((-a)*tan(c + d*x)^2))/(2*d)]
    @test_int [(a - a*sec(c + d*x)^2)^(1/2), x, 3, -((cot(c + d*x)*log(cos(c + d*x))*sqrt((-a)*tan(c + d*x)^2))/d)]
    @test_int [1/(a - a*sec(c + d*x)^2)^(1/2), x, 3, (log(sin(c + d*x))*tan(c + d*x))/(d*sqrt((-a)*tan(c + d*x)^2))]
    @test_int [1/(a - a*sec(c + d*x)^2)^(3/2), x, 4, cot(c + d*x)/(2*a*d*sqrt((-a)*tan(c + d*x)^2)) + (log(sin(c + d*x))*tan(c + d*x))/(a*d*sqrt((-a)*tan(c + d*x)^2))]
    @test_int [1/(a - a*sec(c + d*x)^2)^(5/2), x, 5, cot(c + d*x)/(2*a^2*d*sqrt((-a)*tan(c + d*x)^2)) - cot(c + d*x)^3/(4*a^2*d*sqrt((-a)*tan(c + d*x)^2)) + (log(sin(c + d*x))*tan(c + d*x))/(a^2*d*sqrt((-a)*tan(c + d*x)^2))]
    @test_int [1/(a - a*sec(c + d*x)^2)^(7/2), x, 6, cot(c + d*x)/(2*a^3*d*sqrt((-a)*tan(c + d*x)^2)) - cot(c + d*x)^3/(4*a^3*d*sqrt((-a)*tan(c + d*x)^2)) + cot(c + d*x)^5/(6*a^3*d*sqrt((-a)*tan(c + d*x)^2)) + (log(sin(c + d*x))*tan(c + d*x))/(a^3*d*sqrt((-a)*tan(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sec(e + f*x)^5*sqrt(a + b*sec(e + f*x)^2), x, 11, -(((2*a^2 - 3*a*b - 8*b^2)*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(15*b^2*f)) + ((2*a^2 - 3*a*b - 8*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(15*b^2*f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - ((a - 8*b)*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(15*b*f*(a + b - a*sin(e + f*x)^2)) + ((a + 4*b)*sec(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*tan(e + f*x))/(15*b*f) + (sec(e + f*x)^3*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*tan(e + f*x))/(5*f)]
    @test_int [sec(e + f*x)^3*sqrt(a + b*sec(e + f*x)^2), x, 10, ((a + 2*b)*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(3*b*f) - ((a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(3*b*f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) + (2*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*f*(a + b - a*sin(e + f*x)^2)) + (sec(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*tan(e + f*x))/(3*f)]
    @test_int [sec(e + f*x)^1*sqrt(a + b*sec(e + f*x)^2), x, 10, (sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/f - (sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) + ((a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^1*sqrt(a + b*sec(e + f*x)^2), x, 5, (sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))]
    @test_int [cos(e + f*x)^3*sqrt(a + b*sec(e + f*x)^2), x, 9, (cos(e + f*x)^2*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(3*f) + ((2*a + b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(3*a*f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (b*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*a*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^5*sqrt(a + b*sec(e + f*x)^2), x, 10, (2*(2*a - b)*cos(e + f*x)^2*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(15*a*f) + (cos(e + f*x)^2*sin(e + f*x)*(a + b - a*sin(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(5*a*f) + ((8*a^2 + 3*a*b - 2*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(15*a^2*f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (2*(2*a - b)*b*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(15*a^2*f*(a + b - a*sin(e + f*x)^2))]

    @test_int [sec(e + f*x)^6*sqrt(a + b*sec(e + f*x)^2), x, 6, ((a + b)*(a^2 - 2*a*b + 5*b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*b^(5/2)*f) + ((a^2 - 2*a*b + 5*b^2)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(16*b^2*f) - ((3*a - 5*b)*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(24*b^2*f) + (sec(e + f*x)^2*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(6*b*f)]
    @test_int [sec(e + f*x)^4*sqrt(a + b*sec(e + f*x)^2), x, 5, -((a - 3*b)*(a + b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*b^(3/2)*f) - ((a - 3*b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*b*f) + (tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(4*b*f)]
    @test_int [sec(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2), x, 4, ((a + b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*sqrt(b)*f) + (tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*f)]
    @test_int [sec(e + f*x)^0*sqrt(a + b*sec(e + f*x)^2), x, 6, (sqrt(a)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f]
    @test_int [cos(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2), x, 4, ((a + b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*sqrt(a)*f) + (cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*f)]
    @test_int [cos(e + f*x)^4*sqrt(a + b*sec(e + f*x)^2), x, 5, ((3*a - b)*(a + b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*a^(3/2)*f) + ((3*a - b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*a*f) + (cos(e + f*x)^3*sin(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(4*a*f)]
    @test_int [cos(e + f*x)^6*sqrt(a + b*sec(e + f*x)^2), x, 7, ((a + b)*(5*a^2 - 2*a*b + b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(5/2)*f) + ((3*a - b)*(5*a + 3*b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(48*a^2*f) + ((5*a + b)*cos(e + f*x)^3*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(24*a*f) + (cos(e + f*x)^5*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(6*f)]


    @test_int [sec(e + f*x)^5*(a + b*sec(e + f*x)^2)^(3/2), x, 12, -((2*(a + 2*b)*(a^2 - 4*a*b - 4*b^2)*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(35*b^2*f)) + (2*(a + 2*b)*(a^2 - 4*a*b - 4*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(35*b^2*f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - ((a + b)*(a^2 - 16*a*b - 16*b^2)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(35*b*f*(a + b - a*sin(e + f*x)^2)) + ((a^2 + 11*a*b + 8*b^2)*sec(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*tan(e + f*x))/(35*b*f) + (2*(4*a + 3*b)*sec(e + f*x)^3*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*tan(e + f*x))/(35*f) + (b*sec(e + f*x)^5*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*tan(e + f*x))/(7*f)]
    @test_int [sec(e + f*x)^3*(a + b*sec(e + f*x)^2)^(3/2), x, 11, ((3*a^2 + 13*a*b + 8*b^2)*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(15*b*f) - ((3*a^2 + 13*a*b + 8*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(15*b*f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) + ((a + b)*(9*a + 8*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(15*f*(a + b - a*sin(e + f*x)^2)) + (2*(3*a + 2*b)*sec(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*tan(e + f*x))/(15*f) + (b*sec(e + f*x)^3*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*tan(e + f*x))/(5*f)]
    @test_int [sec(e + f*x)^1*(a + b*sec(e + f*x)^2)^(3/2), x, 10, (2*(2*a + b)*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(3*f) - (2*(2*a + b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(3*f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) + ((a + b)*(3*a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*f*(a + b - a*sin(e + f*x)^2)) + (b*sec(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*tan(e + f*x))/(3*f)]
    @test_int [cos(e + f*x)^1*(a + b*sec(e + f*x)^2)^(3/2), x, 9, (b*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/f + ((a - b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) + (b*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^3*(a + b*sec(e + f*x)^2)^(3/2), x, 9, (a*cos(e + f*x)^2*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(3*f) + (2*(a + 2*b)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(3*f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (b*(a + b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*f*(a + b - a*sin(e + f*x)^2))]
    @test_int [cos(e + f*x)^5*(a + b*sec(e + f*x)^2)^(3/2), x, 10, -((2*(a - 3*(a + b))*cos(e + f*x)^2*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(15*f)) + (a*cos(e + f*x)^4*sin(e + f*x)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(5*f) + ((8*a^2 + 13*a*b + 3*b^2)*sqrt(cos(e + f*x)^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))/(15*a*f*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (b*(a + b)*(4*a + 3*b)*sqrt(cos(e + f*x)^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(15*a*f*(a + b - a*sin(e + f*x)^2))]

    @test_int [sec(e + f*x)^6*(a + b*sec(e + f*x)^2)^(3/2), x, 7, ((a + b)^2*(3*a^2 - 10*a*b + 35*b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(128*b^(5/2)*f) + ((a + b)*(3*a^2 - 10*a*b + 35*b^2)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(128*b^2*f) + ((3*a^2 - 10*a*b + 35*b^2)*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(192*b^2*f) - ((3*a - 7*b)*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(5/2))/(48*b^2*f) + (sec(e + f*x)^2*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(5/2))/(8*b*f)]
    @test_int [sec(e + f*x)^4*(a + b*sec(e + f*x)^2)^(3/2), x, 6, -((a - 5*b)*(a + b)^2*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*b^(3/2)*f) - ((a - 5*b)*(a + b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(16*b*f) - ((a - 5*b)*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(24*b*f) + (tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(5/2))/(6*b*f)]
    @test_int [sec(e + f*x)^2*(a + b*sec(e + f*x)^2)^(3/2), x, 5, (3*(a + b)^2*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*sqrt(b)*f) + (3*(a + b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*f) + (tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(4*f)]
    @test_int [sec(e + f*x)^0*(a + b*sec(e + f*x)^2)^(3/2), x, 7, (a^(3/2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f + (sqrt(b)*(3*a + b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) + (b*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*f)]
    @test_int [cos(e + f*x)^2*(a + b*sec(e + f*x)^2)^(3/2), x, 7, (sqrt(a)*(a + 3*b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) + (b^(3/2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f + (a*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*f)]
    @test_int [cos(e + f*x)^4*(a + b*sec(e + f*x)^2)^(3/2), x, 5, (3*(a + b)^2*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*sqrt(a)*f) + (3*(a + b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*f) + (cos(e + f*x)^3*sin(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(4*f)]
    @test_int [cos(e + f*x)^6*(a + b*sec(e + f*x)^2)^(3/2), x, 6, ((5*a - b)*(a + b)^2*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(3/2)*f) + ((5*a - b)*(a + b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(16*a*f) + ((5*a - b)*cos(e + f*x)^3*sin(e + f*x)*(a + b + b*tan(e + f*x)^2)^(3/2))/(24*a*f) + (cos(e + f*x)^5*sin(e + f*x)*(a + b + b*tan(e + f*x)^2)^(5/2))/(6*a*f)]


    @test_int [(a + b*sec(c + d*x)^2)^(5/2), x, 8, (a^(5/2)*atan((sqrt(a)*tan(c + d*x))/sqrt(a + b + b*tan(c + d*x)^2)))/d + (sqrt(b)*(15*a^2 + 10*a*b + 3*b^2)*atanh((sqrt(b)*tan(c + d*x))/sqrt(a + b + b*tan(c + d*x)^2)))/(8*d) + (b*(7*a + 3*b)*tan(c + d*x)*sqrt(a + b + b*tan(c + d*x)^2))/(8*d) + (b*tan(c + d*x)*(a + b + b*tan(c + d*x)^2)^(3/2))/(4*d)]


    @test_int [(1 + sec(x)^2)^(3/2), x, 6, 2*asinh(tan(x)/sqrt(2)) + atan(tan(x)/sqrt(2 + tan(x)^2)) + (1/2)*tan(x)*sqrt(2 + tan(x)^2)]
    @test_int [sqrt(1 + sec(x)^2), x, 5, asinh(tan(x)/sqrt(2)) + atan(tan(x)/sqrt(2 + tan(x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sec(e + f*x)^5/sqrt(a + b*sec(e + f*x)^2), x, 10, (2*(a - b)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(3*b^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - ((a - 2*b)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*b*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) - (2*(a - b)*sec(e + f*x)*(a + b - a*sin(e + f*x)^2)*tan(e + f*x))/(3*b^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + (sec(e + f*x)^3*(a + b - a*sin(e + f*x)^2)*tan(e + f*x))/(3*b*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [sec(e + f*x)^3/sqrt(a + b*sec(e + f*x)^2), x, 7, -((sqrt(a)*sqrt(a + b)*EllipticE(asin((sqrt(a)*sin(e + f*x))/sqrt(a + b)), (a + b)/a)*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(b*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) + (sec(e + f*x)*(a + b - a*sin(e + f*x)^2)*tan(e + f*x))/(b*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [sec(e + f*x)^1/sqrt(a + b*sec(e + f*x)^2), x, 5, (EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [cos(e + f*x)^1/sqrt(a + b*sec(e + f*x)^2), x, 5, (sqrt(a + b)*EllipticE(asin((sqrt(a)*sin(e + f*x))/sqrt(a + b)), (a + b)/a)*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(sqrt(a)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [cos(e + f*x)^3/sqrt(a + b*sec(e + f*x)^2), x, 9, (sin(e + f*x)*(a + b - a*sin(e + f*x)^2))/(3*a*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + (2*(a - b)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(3*a^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - ((a - 2*b)*b*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*a^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [cos(e + f*x)^5/sqrt(a + b*sec(e + f*x)^2), x, 10, (4*(a - b)*sin(e + f*x)*(a + b - a*sin(e + f*x)^2))/(15*a^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + (cos(e + f*x)^2*sin(e + f*x)*(a + b - a*sin(e + f*x)^2))/(5*a*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + ((8*a^2 - 7*a*b + 8*b^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(15*a^3*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (b*(4*a^2 - 3*a*b + 8*b^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(15*a^3*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]

    @test_int [sec(e + f*x)^6/sqrt(a + b*sec(e + f*x)^2), x, 5, ((3*a^2 - 2*a*b + 3*b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*b^(5/2)*f) - (3*(a - b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*b^2*f) + (sec(e + f*x)^2*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(4*b*f)]
    @test_int [sec(e + f*x)^4/sqrt(a + b*sec(e + f*x)^2), x, 4, -((a - b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*b^(3/2)*f) + (tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*b*f)]
    @test_int [sec(e + f*x)^2/sqrt(a + b*sec(e + f*x)^2), x, 3, atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(b)*f)]
    @test_int [sec(e + f*x)^0/sqrt(a + b*sec(e + f*x)^2), x, 3, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(a)*f)]
    @test_int [cos(e + f*x)^2/sqrt(a + b*sec(e + f*x)^2), x, 4, ((a - b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*a^(3/2)*f) + (cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*a*f)]
    @test_int [cos(e + f*x)^4/sqrt(a + b*sec(e + f*x)^2), x, 6, ((3*a^2 - 2*a*b + 3*b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*a^(5/2)*f) + (3*(a - b)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*a^2*f) + (cos(e + f*x)^3*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(4*a*f)]
    @test_int [cos(e + f*x)^6/sqrt(a + b*sec(e + f*x)^2), x, 7, ((a - b)*(5*a^2 + 2*a*b + 5*b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(7/2)*f) + ((15*a^2 - 14*a*b + 15*b^2)*cos(e + f*x)*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(48*a^3*f) + (5*(a - b)*cos(e + f*x)^3*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(24*a^2*f) + (cos(e + f*x)^5*sin(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(6*a*f)]


    @test_int [sec(e + f*x)^5/(a + b*sec(e + f*x)^2)^(3/2), x, 10, (a*(2*a + b)*sin(e + f*x))/(b^2*(a + b)*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) - ((2*a + b)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(b^2*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) + (EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(b*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + (sec(e + f*x)*tan(e + f*x))/(b*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [sec(e + f*x)^3/(a + b*sec(e + f*x)^2)^(3/2), x, 7, -((a*sin(e + f*x))/(b*(a + b)*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) + (EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(b*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))]
    @test_int [sec(e + f*x)^1/(a + b*sec(e + f*x)^2)^(3/2), x, 9, sin(e + f*x)/((a + b)*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) - (EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(a*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) + (EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(a*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [cos(e + f*x)^1/(a + b*sec(e + f*x)^2)^(3/2), x, 9, -((b*sin(e + f*x))/(a*(a + b)*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) + ((a + 2*b)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(a^2*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (2*b*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(a^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [cos(e + f*x)^3/(a + b*sec(e + f*x)^2)^(3/2), x, 10, -((b*cos(e + f*x)^2*sin(e + f*x))/(a*(a + b)*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) + ((a + 4*b)*sin(e + f*x)*(a + b - a*sin(e + f*x)^2))/(3*a^2*(a + b)*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + ((2*a^2 - 3*a*b - 8*b^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(3*a^3*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - ((a - 8*b)*b*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*a^3*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [cos(e + f*x)^5/(a + b*sec(e + f*x)^2)^(3/2), x, 11, -((b*cos(e + f*x)^4*sin(e + f*x))/(a*(a + b)*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) + ((4*a^2 - 5*a*b - 24*b^2)*sin(e + f*x)*(a + b - a*sin(e + f*x)^2))/(15*a^3*(a + b)*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + ((a + 6*b)*cos(e + f*x)^2*sin(e + f*x)*(a + b - a*sin(e + f*x)^2))/(5*a^2*(a + b)*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + ((8*a^3 - 9*a^2*b + 16*a*b^2 + 48*b^3)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(15*a^4*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (4*b*(a^2 - 2*a*b + 12*b^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(15*a^4*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]

    @test_int [sec(e + f*x)^6/(a + b*sec(e + f*x)^2)^(3/2), x, 5, -((3*a - b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*b^(5/2)*f) - (a*sec(e + f*x)^2*tan(e + f*x))/(b*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2)) + ((3*a + b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*b^2*(a + b)*f)]
    @test_int [sec(e + f*x)^4/(a + b*sec(e + f*x)^2)^(3/2), x, 4, atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(b^(3/2)*f) - (a*tan(e + f*x))/(b*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^2/(a + b*sec(e + f*x)^2)^(3/2), x, 2, tan(e + f*x)/((a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^0/(a + b*sec(e + f*x)^2)^(3/2), x, 4, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(3/2)*f) - (b*tan(e + f*x))/(a*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^2/(a + b*sec(e + f*x)^2)^(3/2), x, 6, ((a - 3*b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*a^(5/2)*f) + (cos(e + f*x)*sin(e + f*x))/(2*a*f*sqrt(a + b + b*tan(e + f*x)^2)) + (b*(a + 3*b)*tan(e + f*x))/(2*a^2*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^4/(a + b*sec(e + f*x)^2)^(3/2), x, 7, (3*(a^2 - 2*a*b + 5*b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*a^(7/2)*f) + ((3*a - 5*b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f*sqrt(a + b + b*tan(e + f*x)^2)) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f*sqrt(a + b + b*tan(e + f*x)^2)) + ((a - 3*b)*b*(3*a + 5*b)*tan(e + f*x))/(8*a^3*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^6/(a + b*sec(e + f*x)^2)^(3/2), x, 8, ((5*a^3 - 9*a^2*b + 15*a*b^2 - 35*b^3)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(9/2)*f) + ((15*a^2 - 22*a*b + 35*b^2)*cos(e + f*x)*sin(e + f*x))/(48*a^3*f*sqrt(a + b + b*tan(e + f*x)^2)) + ((5*a - 7*b)*cos(e + f*x)^3*sin(e + f*x))/(24*a^2*f*sqrt(a + b + b*tan(e + f*x)^2)) + (cos(e + f*x)^5*sin(e + f*x))/(6*a*f*sqrt(a + b + b*tan(e + f*x)^2)) + (b*(15*a^3 - 17*a^2*b + 25*a*b^2 + 105*b^3)*tan(e + f*x))/(48*a^4*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]


    @test_int [sec(e + f*x)^5/(a + b*sec(e + f*x)^2)^(5/2), x, 10, -((2*a*(a + 2*b)*sin(e + f*x))/(3*b^2*(a + b)^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) - (a*sin(e + f*x))/(3*b*(a + b)*f*(a + b - a*sin(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + (2*(a + 2*b)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(3*b^2*(a + b)^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*b*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [sec(e + f*x)^3/(a + b*sec(e + f*x)^2)^(5/2), x, 10, -(((a - b)*sin(e + f*x))/(3*b*(a + b)^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) + sin(e + f*x)/(3*(a + b)*f*(a + b - a*sin(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + ((a - b)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(3*a*b*(a + b)^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) + (EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*a*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [sec(e + f*x)^1/(a + b*sec(e + f*x)^2)^(5/2), x, 10, (2*(2*a + b)*sin(e + f*x))/(3*a*(a + b)^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) - (b*sin(e + f*x))/(3*a*(a + b)*f*(a + b - a*sin(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) - (2*(2*a + b)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(3*a^2*(a + b)^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) + ((3*a + 2*b)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*a^2*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [cos(e + f*x)^1/(a + b*sec(e + f*x)^2)^(5/2), x, 10, -((2*b*(3*a + 2*b)*sin(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) - (b*cos(e + f*x)^2*sin(e + f*x))/(3*a*(a + b)*f*(a + b - a*sin(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + ((3*a^2 + 13*a*b + 8*b^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(3*a^3*(a + b)^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (b*(9*a + 8*b)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*a^3*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [cos(e + f*x)^3/(a + b*sec(e + f*x)^2)^(5/2), x, 11, -((2*b*(4*a + 3*b)*cos(e + f*x)^2*sin(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) - (b*cos(e + f*x)^4*sin(e + f*x))/(3*a*(a + b)*f*(a + b - a*sin(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + ((a^2 + 11*a*b + 8*b^2)*sin(e + f*x)*(a + b - a*sin(e + f*x)^2))/(3*a^3*(a + b)^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + (2*(a + 2*b)*(a^2 - 4*a*b - 4*b^2)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(3*a^4*(a + b)^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (b*(a^2 - 16*a*b - 16*b^2)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(3*a^4*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]
    @test_int [cos(e + f*x)^5/(a + b*sec(e + f*x)^2)^(5/2), x, 12, -((2*b*(5*a + 4*b)*cos(e + f*x)^4*sin(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))) - (b*cos(e + f*x)^6*sin(e + f*x))/(3*a*(a + b)*f*(a + b - a*sin(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + (2*(2*a^3 - 3*a^2*b - 42*a*b^2 - 32*b^3)*sin(e + f*x)*(a + b - a*sin(e + f*x)^2))/(15*a^4*(a + b)^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + ((3*a^2 + 61*a*b + 48*b^2)*cos(e + f*x)^2*sin(e + f*x)*(a + b - a*sin(e + f*x)^2))/(15*a^3*(a + b)^2*f*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))) + ((8*a^4 - 11*a^3*b + 27*a^2*b^2 + 184*a*b^3 + 128*b^4)*EllipticE(asin(sin(e + f*x)), a/(a + b))*(a + b - a*sin(e + f*x)^2))/(15*a^5*(a + b)^2*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b))) - (b*(4*a^3 - 9*a^2*b + 120*a*b^2 + 128*b^3)*EllipticF(asin(sin(e + f*x)), a/(a + b))*sqrt(1 - (a*sin(e + f*x)^2)/(a + b)))/(15*a^5*(a + b)*f*sqrt(cos(e + f*x)^2)*sqrt(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2)))]

    @test_int [sec(e + f*x)^6/(a + b*sec(e + f*x)^2)^(5/2), x, 5, atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(b^(5/2)*f) - (a*sec(e + f*x)^2*tan(e + f*x))/(3*b*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (a*(3*a + 5*b)*tan(e + f*x))/(3*b^2*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^4/(a + b*sec(e + f*x)^2)^(5/2), x, 3, (sec(e + f*x)^2*tan(e + f*x))/(3*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (2*tan(e + f*x))/(3*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^2/(a + b*sec(e + f*x)^2)^(5/2), x, 3, tan(e + f*x)/(3*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (2*tan(e + f*x))/(3*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [sec(e + f*x)^0/(a + b*sec(e + f*x)^2)^(5/2), x, 6, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(5/2)*f) - (b*tan(e + f*x))/(3*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (b*(5*a + 3*b)*tan(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^2/(a + b*sec(e + f*x)^2)^(5/2), x, 7, ((a - 5*b)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*a^(7/2)*f) + (cos(e + f*x)*sin(e + f*x))/(2*a*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (b*(3*a + 5*b)*tan(e + f*x))/(6*a^2*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (b*(3*a^2 + 22*a*b + 15*b^2)*tan(e + f*x))/(6*a^3*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^4/(a + b*sec(e + f*x)^2)^(5/2), x, 8, ((3*a^2 - 10*a*b + 35*b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*a^(9/2)*f) + ((3*a - 7*b)*cos(e + f*x)*sin(e + f*x))/(8*a^2*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (cos(e + f*x)^3*sin(e + f*x))/(4*a*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (b*(9*a^2 - 18*a*b - 35*b^2)*tan(e + f*x))/(24*a^3*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (b*(9*a^3 - 15*a^2*b - 145*a*b^2 - 105*b^3)*tan(e + f*x))/(24*a^4*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [cos(e + f*x)^6/(a + b*sec(e + f*x)^2)^(5/2), x, 9, (5*(a - 3*b)*(a^2 + 7*b^2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*a^(11/2)*f) + ((5*a^2 - 10*a*b + 21*b^2)*cos(e + f*x)*sin(e + f*x))/(16*a^3*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + ((5*a - 9*b)*cos(e + f*x)^3*sin(e + f*x))/(24*a^2*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (cos(e + f*x)^5*sin(e + f*x))/(6*a*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (b*(15*a^3 - 25*a^2*b + 49*a*b^2 + 105*b^3)*tan(e + f*x))/(48*a^4*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + (b*(15*a^4 - 20*a^3*b + 38*a^2*b^2 + 420*a*b^3 + 315*b^4)*tan(e + f*x))/(48*a^5*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]


    @test_int [1/(a + b*sec(c + d*x)^2)^(7/2), x, 7, atan((sqrt(a)*tan(c + d*x))/sqrt(a + b + b*tan(c + d*x)^2))/(a^(7/2)*d) - (b*tan(c + d*x))/(5*a*(a + b)*d*(a + b + b*tan(c + d*x)^2)^(5/2)) - (b*(9*a + 5*b)*tan(c + d*x))/(15*a^2*(a + b)^2*d*(a + b + b*tan(c + d*x)^2)^(3/2)) - (b*(33*a^2 + 40*a*b + 15*b^2)*tan(c + d*x))/(15*a^3*(a + b)^3*d*sqrt(a + b + b*tan(c + d*x)^2))]


    @test_int [1/sqrt(1 + sec(x)^2), x, 3, atan(tan(x)/sqrt(2 + tan(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*sec(e + f*x))^m*(a + b*sec(e + f*x)^2)^p, x, -1, (AppellF1(m/2, 1/2, -p, (2 + m)/2, sec(e + f*x)^2, -((b*sec(e + f*x)^2)/a))*cos(e + f*x)*(d*sec(e + f*x))^m*sqrt(-tan(e + f*x)^2)*(a + b*sec(e + f*x)^2)^p)/((1 + (b*sec(e + f*x)^2)/a)^p*(f*m*sin(e + f*x)))]


    @test_int [sec(e + f*x)^3*(a + b*sec(e + f*x)^2)^p, x, 5, (AppellF1(1/2, 2 + p, -p, 3/2, sin(e + f*x)^2, (a*sin(e + f*x)^2)/(a + b))*(cos(e + f*x)^2)^p*sin(e + f*x)*(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))^p)/((1 - (a*sin(e + f*x)^2)/(a + b))^p*f)]
    @test_int [sec(e + f*x)^1*(a + b*sec(e + f*x)^2)^p, x, 5, (AppellF1(1/2, 1 + p, -p, 3/2, sin(e + f*x)^2, (a*sin(e + f*x)^2)/(a + b))*(cos(e + f*x)^2)^p*sin(e + f*x)*(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))^p)/((1 - (a*sin(e + f*x)^2)/(a + b))^p*f)]
    @test_int [cos(e + f*x)^1*(a + b*sec(e + f*x)^2)^p, x, 5, (AppellF1(1/2, p, -p, 3/2, sin(e + f*x)^2, (a*sin(e + f*x)^2)/(a + b))*(cos(e + f*x)^2)^p*sin(e + f*x)*(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))^p)/((1 - (a*sin(e + f*x)^2)/(a + b))^p*f)]
    @test_int [cos(e + f*x)^3*(a + b*sec(e + f*x)^2)^p, x, 5, (AppellF1(1/2, -1 + p, -p, 3/2, sin(e + f*x)^2, (a*sin(e + f*x)^2)/(a + b))*(cos(e + f*x)^2)^p*sin(e + f*x)*(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))^p)/((1 - (a*sin(e + f*x)^2)/(a + b))^p*f)]
    @test_int [cos(e + f*x)^5*(a + b*sec(e + f*x)^2)^p, x, 5, (AppellF1(1/2, -2 + p, -p, 3/2, sin(e + f*x)^2, (a*sin(e + f*x)^2)/(a + b))*(cos(e + f*x)^2)^p*sin(e + f*x)*(sec(e + f*x)^2*(a + b - a*sin(e + f*x)^2))^p)/((1 - (a*sin(e + f*x)^2)/(a + b))^p*f)]

    @test_int [sec(e + f*x)^6*(a + b*sec(e + f*x)^2)^p, x, 5, If($VersionNumber>=8, -(((3*a - 2*b*(2 + p))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(1 + p))/(b^2*f*(3 + 2*p)*(5 + 2*p))) + (sec(e + f*x)^2*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(1 + p))/(b*f*(5 + 2*p)) + ((3*a^2 - 4*a*b*(1 + p) + 4*b^2*(2 + 3*p + p^2))*Hypergeometric2F1(1/2, -p, 3/2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(b^2*f*(3 + 2*p)*(5 + 2*p)*(1 + (b*tan(e + f*x)^2)/(a + b))^p), -(((3*a - 2*b*(2 + p))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(1 + p))/(b^2*f*(15 + 16*p + 4*p^2))) + (sec(e + f*x)^2*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(1 + p))/(b*f*(5 + 2*p)) + ((3*a^2 - 4*a*b*(1 + p) + 4*b^2*(2 + 3*p + p^2))*Hypergeometric2F1(1/2, -p, 3/2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/((1 + (b*tan(e + f*x)^2)/(a + b))^p*(b^2*f*(15 + 16*p + 4*p^2))))]
    @test_int [sec(e + f*x)^4*(a + b*sec(e + f*x)^2)^p, x, 4, (tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^(1 + p))/(b*f*(3 + 2*p)) - ((a - 2*b*(1 + p))*Hypergeometric2F1(1/2, -p, 3/2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(b*f*(3 + 2*p)*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [sec(e + f*x)^2*(a + b*sec(e + f*x)^2)^p, x, 3, (Hypergeometric2F1(1/2, -p, 3/2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [sec(e + f*x)^0*(a + b*sec(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 1, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [cos(e + f*x)^2*(a + b*sec(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 2, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [cos(e + f*x)^4*(a + b*sec(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 3, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [cos(e + f*x)^6*(a + b*sec(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 4, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]


    #= ::Section:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^3)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^4)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*sec(e+f*x)^m*(a+b*sec(e+f*x)^n)^p=#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(a + b*sec(e + f*x)^2)*tan(e + f*x)^5, x, 4, -((a*log(cos(e + f*x)))/f) - ((2*a - b)*sec(e + f*x)^2)/(2*f) + ((a - 2*b)*sec(e + f*x)^4)/(4*f) + (b*sec(e + f*x)^6)/(6*f)]
    @test_int [(a + b*sec(e + f*x)^2)*tan(e + f*x)^3, x, 4, (a*log(cos(e + f*x)))/f + ((a - b)*sec(e + f*x)^2)/(2*f) + (b*sec(e + f*x)^4)/(4*f)]
    @test_int [(a + b*sec(e + f*x)^2)*tan(e + f*x)^1, x, 3, -((a*log(cos(e + f*x)))/f) + (b*sec(e + f*x)^2)/(2*f)]
    @test_int [cot(e + f*x)^1*(a + b*sec(e + f*x)^2), x, 4, -((b*log(cos(e + f*x)))/f) + ((a + b)*log(sin(e + f*x)))/f]
    @test_int [cot(e + f*x)^3*(a + b*sec(e + f*x)^2), x, 4, -((a + b)*csc(e + f*x)^2)/(2*f) - (a*log(sin(e + f*x)))/f]
    @test_int [cot(e + f*x)^5*(a + b*sec(e + f*x)^2), x, 4, ((2*a + b)*csc(e + f*x)^2)/(2*f) - ((a + b)*csc(e + f*x)^4)/(4*f) + (a*log(sin(e + f*x)))/f]

    @test_int [(a + b*sec(e + f*x)^2)*tan(e + f*x)^6, x, 4, -(a*x) + (a*tan(e + f*x))/f - (a*tan(e + f*x)^3)/(3*f) + (a*tan(e + f*x)^5)/(5*f) + (b*tan(e + f*x)^7)/(7*f)]
    @test_int [(a + b*sec(e + f*x)^2)*tan(e + f*x)^4, x, 4, a*x - (a*tan(e + f*x))/f + (a*tan(e + f*x)^3)/(3*f) + (b*tan(e + f*x)^5)/(5*f)]
    @test_int [(a + b*sec(e + f*x)^2)*tan(e + f*x)^2, x, 4, -(a*x) + (a*tan(e + f*x))/f + (b*tan(e + f*x)^3)/(3*f)]
    @test_int [(a + b*sec(e + f*x)^2)*tan(e + f*x)^0, x, 3, a*x + (b*tan(e + f*x))/f]
    @test_int [cot(e + f*x)^2*(a + b*sec(e + f*x)^2), x, 4, -(a*x) - ((a + b)*cot(e + f*x))/f]
    @test_int [cot(e + f*x)^4*(a + b*sec(e + f*x)^2), x, 4, a*x + (a*cot(e + f*x))/f - ((a + b)*cot(e + f*x)^3)/(3*f)]
    @test_int [cot(e + f*x)^6*(a + b*sec(e + f*x)^2), x, 4, -(a*x) - (a*cot(e + f*x))/f + (a*cot(e + f*x)^3)/(3*f) - ((a + b)*cot(e + f*x)^5)/(5*f)]


    @test_int [(a + b*sec(e + f*x)^2)^2*tan(e + f*x)^5, x, 4, -((a^2*log(cos(e + f*x)))/f) - (a*(a - b)*sec(e + f*x)^2)/f + ((a^2 - 4*a*b + b^2)*sec(e + f*x)^4)/(4*f) + ((a - b)*b*sec(e + f*x)^6)/(3*f) + (b^2*sec(e + f*x)^8)/(8*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*tan(e + f*x)^3, x, 4, (a^2*log(cos(e + f*x)))/f + (a*(a - 2*b)*sec(e + f*x)^2)/(2*f) + ((2*a - b)*b*sec(e + f*x)^4)/(4*f) + (b^2*sec(e + f*x)^6)/(6*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*tan(e + f*x)^1, x, 4, -((a^2*log(cos(e + f*x)))/f) + (a*b*sec(e + f*x)^2)/f + (b^2*sec(e + f*x)^4)/(4*f)]
    @test_int [cot(e + f*x)^1*(a + b*sec(e + f*x)^2)^2, x, 4, -((b*(2*a + b)*log(cos(e + f*x)))/f) + ((a + b)^2*log(sin(e + f*x)))/f + (b^2*sec(e + f*x)^2)/(2*f)]
    @test_int [cot(e + f*x)^3*(a + b*sec(e + f*x)^2)^2, x, 4, -((a + b)^2*csc(e + f*x)^2)/(2*f) - (b^2*log(cos(e + f*x)))/f - ((a^2 - b^2)*log(sin(e + f*x)))/f]
    @test_int [cot(e + f*x)^5*(a + b*sec(e + f*x)^2)^2, x, 4, (a*(a + b)*csc(e + f*x)^2)/f - ((a + b)^2*csc(e + f*x)^4)/(4*f) + (a^2*log(sin(e + f*x)))/f]

    @test_int [(a + b*sec(e + f*x)^2)^2*tan(e + f*x)^6, x, 4, -(a^2*x) + (a^2*tan(e + f*x))/f - (a^2*tan(e + f*x)^3)/(3*f) + (a^2*tan(e + f*x)^5)/(5*f) + (b*(2*a + b)*tan(e + f*x)^7)/(7*f) + (b^2*tan(e + f*x)^9)/(9*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*tan(e + f*x)^4, x, 4, a^2*x - (a^2*tan(e + f*x))/f + (a^2*tan(e + f*x)^3)/(3*f) + (b*(2*a + b)*tan(e + f*x)^5)/(5*f) + (b^2*tan(e + f*x)^7)/(7*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*tan(e + f*x)^2, x, 4, -(a^2*x) + (a^2*tan(e + f*x))/f + (b*(2*a + b)*tan(e + f*x)^3)/(3*f) + (b^2*tan(e + f*x)^5)/(5*f)]
    @test_int [(a + b*sec(e + f*x)^2)^2*tan(e + f*x)^0, x, 4, a^2*x + (b*(2*a + b)*tan(e + f*x))/f + (b^2*tan(e + f*x)^3)/(3*f)]
    @test_int [cot(e + f*x)^2*(a + b*sec(e + f*x)^2)^2, x, 4, -(a^2*x) - ((a + b)^2*cot(e + f*x))/f + (b^2*tan(e + f*x))/f]
    @test_int [cot(e + f*x)^4*(a + b*sec(e + f*x)^2)^2, x, 4, a^2*x + ((a^2 - b^2)*cot(e + f*x))/f - ((a + b)^2*cot(e + f*x)^3)/(3*f)]
    @test_int [cot(e + f*x)^6*(a + b*sec(e + f*x)^2)^2, x, 4, -(a^2*x) - (a^2*cot(e + f*x))/f + ((a^2 - b^2)*cot(e + f*x)^3)/(3*f) - ((a + b)^2*cot(e + f*x)^5)/(5*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(e + f*x)^5/(a + b*sec(e + f*x)^2), x, 4, ((a + 2*b)*log(cos(e + f*x)))/(b^2*f) - ((a + b)^2*log(b + a*cos(e + f*x)^2))/(2*a*b^2*f) + sec(e + f*x)^2/(2*b*f)]
    @test_int [tan(e + f*x)^3/(a + b*sec(e + f*x)^2), x, 4, -(log(cos(e + f*x))/(b*f)) + ((a + b)*log(b + a*cos(e + f*x)^2))/(2*a*b*f)]
    @test_int [tan(e + f*x)^1/(a + b*sec(e + f*x)^2), x, 2, -log(b + a*cos(e + f*x)^2)/(2*a*f)]
    @test_int [cot(e + f*x)^1/(a + b*sec(e + f*x)^2), x, 4, (b*log(b + a*cos(e + f*x)^2))/(2*a*(a + b)*f) + log(sin(e + f*x))/((a + b)*f)]
    @test_int [cot(e + f*x)^3/(a + b*sec(e + f*x)^2), x, 4, -csc(e + f*x)^2/(2*(a + b)*f) - (b^2*log(b + a*cos(e + f*x)^2))/(2*a*(a + b)^2*f) - ((a + 2*b)*log(sin(e + f*x)))/((a + b)^2*f)]
    @test_int [cot(e + f*x)^5/(a + b*sec(e + f*x)^2), x, 4, ((2*a + 3*b)*csc(e + f*x)^2)/(2*(a + b)^2*f) - csc(e + f*x)^4/(4*(a + b)*f) + (b^3*log(b + a*cos(e + f*x)^2))/(2*a*(a + b)^3*f) + ((a^2 + 3*a*b + 3*b^2)*log(sin(e + f*x)))/((a + b)^3*f)]

    @test_int [tan(e + f*x)^6/(a + b*sec(e + f*x)^2), x, 7, -(x/a) + ((a + b)^(5/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a*b^(5/2)*f) - ((a + 2*b)*tan(e + f*x))/(b^2*f) + tan(e + f*x)^3/(3*b*f)]
    @test_int [tan(e + f*x)^4/(a + b*sec(e + f*x)^2), x, 6, x/a - ((a + b)^(3/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a*b^(3/2)*f) + tan(e + f*x)/(b*f)]
    @test_int [tan(e + f*x)^2/(a + b*sec(e + f*x)^2), x, 5, -(x/a) + (sqrt(a + b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a*sqrt(b)*f)]
    @test_int [tan(e + f*x)^0/(a + b*sec(e + f*x)^2), x, 3, x/a + (sqrt(b)*atan((sqrt(a + b)*cot(e + f*x))/sqrt(b)))/(a*sqrt(a + b)*f)]
    @test_int [cot(e + f*x)^2/(a + b*sec(e + f*x)^2), x, 6, -(x/a) + (b^(3/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a*(a + b)^(3/2)*f) - cot(e + f*x)/((a + b)*f)]
    @test_int [cot(e + f*x)^4/(a + b*sec(e + f*x)^2), x, 7, x/a - (b^(5/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a*(a + b)^(5/2)*f) + ((a + 2*b)*cot(e + f*x))/((a + b)^2*f) - cot(e + f*x)^3/(3*(a + b)*f)]
    @test_int [cot(e + f*x)^6/(a + b*sec(e + f*x)^2), x, 8, -(x/a) + (b^(7/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(a*(a + b)^(7/2)*f) - ((a^2 + 3*a*b + 3*b^2)*cot(e + f*x))/((a + b)^3*f) + ((a + 2*b)*cot(e + f*x)^3)/(3*(a + b)^2*f) - cot(e + f*x)^5/(5*(a + b)*f)]


    @test_int [tan(e + f*x)^5/(a + b*sec(e + f*x)^2)^2, x, 4, -(a + b)^2/(2*a^2*b*f*(b + a*cos(e + f*x)^2)) - log(cos(e + f*x))/(b^2*f) - ((a^(-2) - b^(-2))*log(b + a*cos(e + f*x)^2))/(2*f)]
    @test_int [tan(e + f*x)^3/(a + b*sec(e + f*x)^2)^2, x, 4, (a + b)/(2*a^2*f*(b + a*cos(e + f*x)^2)) + log(b + a*cos(e + f*x)^2)/(2*a^2*f)]
    @test_int [tan(e + f*x)^1/(a + b*sec(e + f*x)^2)^2, x, 4, -b/(2*a^2*f*(b + a*cos(e + f*x)^2)) - log(b + a*cos(e + f*x)^2)/(2*a^2*f)]
    @test_int [cot(e + f*x)^1/(a + b*sec(e + f*x)^2)^2, x, 4, b^2/(2*a^2*(a + b)*f*(b + a*cos(e + f*x)^2)) + (b*(2*a + b)*log(b + a*cos(e + f*x)^2))/(2*a^2*(a + b)^2*f) + log(sin(e + f*x))/((a + b)^2*f)]
    @test_int [cot(e + f*x)^3/(a + b*sec(e + f*x)^2)^2, x, 4, -b^3/(2*a^2*(a + b)^2*f*(b + a*cos(e + f*x)^2)) - csc(e + f*x)^2/(2*(a + b)^2*f) - (b^2*(3*a + b)*log(b + a*cos(e + f*x)^2))/(2*a^2*(a + b)^3*f) - ((a + 3*b)*log(sin(e + f*x)))/((a + b)^3*f)]
    @test_int [cot(e + f*x)^5/(a + b*sec(e + f*x)^2)^2, x, 4, b^4/(2*a^2*(a + b)^3*f*(b + a*cos(e + f*x)^2)) + ((a + 2*b)*csc(e + f*x)^2)/((a + b)^3*f) - csc(e + f*x)^4/(4*(a + b)^2*f) + (b^3*(4*a + b)*log(b + a*cos(e + f*x)^2))/(2*a^2*(a + b)^4*f) + ((a^2 + 4*a*b + 6*b^2)*log(sin(e + f*x)))/((a + b)^4*f)]

    @test_int [tan(e + f*x)^6/(a + b*sec(e + f*x)^2)^2, x, 7, -(x/a^2) - ((3*a - 2*b)*(a + b)^(3/2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^2*b^(5/2)*f) + ((3*a + b)*tan(e + f*x))/(2*a*b^2*f) - ((a + b)*tan(e + f*x)^3)/(2*a*b*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^4/(a + b*sec(e + f*x)^2)^2, x, 6, x/a^2 + ((a - 2*b)*sqrt(a + b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^2*b^(3/2)*f) - ((a + b)*tan(e + f*x))/(2*a*b*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/(a + b*sec(e + f*x)^2)^2, x, 6, -(x/a^2) + ((a + 2*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^2*sqrt(b)*sqrt(a + b)*f) + tan(e + f*x)/(2*a*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^0/(a + b*sec(e + f*x)^2)^2, x, 5, x/a^2 - (sqrt(b)*(3*a + 2*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^2*(a + b)^(3/2)*f) - (b*tan(e + f*x))/(2*a*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a + b*sec(e + f*x)^2)^2, x, 7, -(x/a^2) + (b^(3/2)*(5*a + 2*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^2*(a + b)^(5/2)*f) - ((2*a - b)*cot(e + f*x))/(2*a*(a + b)^2*f) - (b*cot(e + f*x))/(2*a*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^4/(a + b*sec(e + f*x)^2)^2, x, 8, x/a^2 - (b^(5/2)*(7*a + 2*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^2*(a + b)^(7/2)*f) + ((2*a^2 + 6*a*b - b^2)*cot(e + f*x))/(2*a*(a + b)^3*f) - ((2*a - 3*b)*cot(e + f*x)^3)/(6*a*(a + b)^2*f) - (b*cot(e + f*x)^3)/(2*a*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^6/(a + b*sec(e + f*x)^2)^2, x, 9, -(x/a^2) + (b^(7/2)*(9*a + 2*b)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(2*a^2*(a + b)^(9/2)*f) - ((2*a^3 + 8*a^2*b + 12*a*b^2 - b^3)*cot(e + f*x))/(2*a*(a + b)^4*f) + ((2*a^2 + 6*a*b - 3*b^2)*cot(e + f*x)^3)/(6*a*(a + b)^3*f) - ((2*a - 5*b)*cot(e + f*x)^5)/(10*a*(a + b)^2*f) - (b*cot(e + f*x)^5)/(2*a*(a + b)*f*(a + b + b*tan(e + f*x)^2))]


    @test_int [tan(e + f*x)^5/(a + b*sec(e + f*x)^2)^3, x, 4, (a + b)^2/(4*a^3*f*(b + a*cos(e + f*x)^2)^2) - (a + b)/(a^3*f*(b + a*cos(e + f*x)^2)) - log(b + a*cos(e + f*x)^2)/(2*a^3*f)]
    @test_int [tan(e + f*x)^3/(a + b*sec(e + f*x)^2)^3, x, 4, -(b*(a + b))/(4*a^3*f*(b + a*cos(e + f*x)^2)^2) + (a + 2*b)/(2*a^3*f*(b + a*cos(e + f*x)^2)) + log(b + a*cos(e + f*x)^2)/(2*a^3*f)]
    @test_int [tan(e + f*x)^1/(a + b*sec(e + f*x)^2)^3, x, 4, b^2/(4*a^3*f*(b + a*cos(e + f*x)^2)^2) - b/(a^3*f*(b + a*cos(e + f*x)^2)) - log(b + a*cos(e + f*x)^2)/(2*a^3*f)]
    @test_int [cot(e + f*x)^1/(a + b*sec(e + f*x)^2)^3, x, 4, -b^3/(4*a^3*(a + b)*f*(b + a*cos(e + f*x)^2)^2) + (b^2*(3*a + 2*b))/(2*a^3*(a + b)^2*f*(b + a*cos(e + f*x)^2)) + (b*(3*a^2 + 3*a*b + b^2)*log(b + a*cos(e + f*x)^2))/(2*a^3*(a + b)^3*f) + log(sin(e + f*x))/((a + b)^3*f)]
    @test_int [cot(e + f*x)^3/(a + b*sec(e + f*x)^2)^3, x, 4, b^4/(4*a^3*(a + b)^2*f*(b + a*cos(e + f*x)^2)^2) - (b^3*(2*a + b))/(a^3*(a + b)^3*f*(b + a*cos(e + f*x)^2)) - csc(e + f*x)^2/(2*(a + b)^3*f) - (b^2*(6*a^2 + 4*a*b + b^2)*log(b + a*cos(e + f*x)^2))/(2*a^3*(a + b)^4*f) - ((a + 4*b)*log(sin(e + f*x)))/((a + b)^4*f)]
    @test_int [cot(e + f*x)^5/(a + b*sec(e + f*x)^2)^3, x, 4, -b^5/(4*a^3*(a + b)^3*f*(b + a*cos(e + f*x)^2)^2) + (b^4*(5*a + 2*b))/(2*a^3*(a + b)^4*f*(b + a*cos(e + f*x)^2)) + ((2*a + 5*b)*csc(e + f*x)^2)/(2*(a + b)^4*f) - csc(e + f*x)^4/(4*(a + b)^3*f) + (b^3*(10*a^2 + 5*a*b + b^2)*log(b + a*cos(e + f*x)^2))/(2*a^3*(a + b)^5*f) + ((a^2 + 5*a*b + 10*b^2)*log(sin(e + f*x)))/((a + b)^5*f)]

    @test_int [tan(e + f*x)^6/(a + b*sec(e + f*x)^2)^3, x, 7, -(x/a^3) + (sqrt(a + b)*(3*a^2 - 4*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^3*b^(5/2)*f) - ((a + b)*tan(e + f*x)^3)/(4*a*b*f*(a + b + b*tan(e + f*x)^2)^2) - ((3*a - 4*b)*(a + b)*tan(e + f*x))/(8*a^2*b^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^4/(a + b*sec(e + f*x)^2)^3, x, 7, x/a^3 + ((a^2 - 4*a*b - 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^3*b^(3/2)*sqrt(a + b)*f) - ((a + b)*tan(e + f*x))/(4*a*b*f*(a + b + b*tan(e + f*x)^2)^2) + ((a - 4*b)*tan(e + f*x))/(8*a^2*b*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/(a + b*sec(e + f*x)^2)^3, x, 7, -(x/a^3) + ((3*a^2 + 12*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^3*sqrt(b)*(a + b)^(3/2)*f) + tan(e + f*x)/(4*a*f*(a + b + b*tan(e + f*x)^2)^2) + ((3*a + 4*b)*tan(e + f*x))/(8*a^2*(a + b)*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^0/(a + b*sec(e + f*x)^2)^3, x, 6, x/a^3 - (sqrt(b)*(15*a^2 + 20*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^3*(a + b)^(5/2)*f) - (b*tan(e + f*x))/(4*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(7*a + 4*b)*tan(e + f*x))/(8*a^2*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a + b*sec(e + f*x)^2)^3, x, 8, -(x/a^3) + (b^(3/2)*(35*a^2 + 28*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^3*(a + b)^(7/2)*f) - ((8*a^2 - 11*a*b - 4*b^2)*cot(e + f*x))/(8*a^2*(a + b)^3*f) - (b*cot(e + f*x))/(4*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(9*a + 4*b)*cot(e + f*x))/(8*a^2*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^4/(a + b*sec(e + f*x)^2)^3, x, 9, x/a^3 - (b^(5/2)*(63*a^2 + 36*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^3*(a + b)^(9/2)*f) + ((8*a^3 + 32*a^2*b - 15*a*b^2 - 4*b^3)*cot(e + f*x))/(8*a^2*(a + b)^4*f) - ((8*a^2 - 39*a*b - 12*b^2)*cot(e + f*x)^3)/(24*a^2*(a + b)^3*f) - (b*cot(e + f*x)^3)/(4*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(11*a + 4*b)*cot(e + f*x)^3)/(8*a^2*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^6/(a + b*sec(e + f*x)^2)^3, x, 10, -(x/a^3) + (b^(7/2)*(99*a^2 + 44*a*b + 8*b^2)*atan((sqrt(b)*tan(e + f*x))/sqrt(a + b)))/(8*a^3*(a + b)^(11/2)*f) - ((8*a^4 + 40*a^3*b + 80*a^2*b^2 - 19*a*b^3 - 4*b^4)*cot(e + f*x))/(8*a^2*(a + b)^5*f) + ((8*a^3 + 32*a^2*b - 51*a*b^2 - 12*b^3)*cot(e + f*x)^3)/(24*a^2*(a + b)^4*f) - ((8*a^2 - 75*a*b - 20*b^2)*cot(e + f*x)^5)/(40*a^2*(a + b)^3*f) - (b*cot(e + f*x)^5)/(4*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^2) - (b*(13*a + 4*b)*cot(e + f*x)^5)/(8*a^2*(a + b)^2*f*(a + b + b*tan(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(a + b*sec(e + f*x)^2)*tan(e + f*x)^5, x, 7, -((sqrt(a)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f) + sqrt(a + b*sec(e + f*x)^2)/f - ((a + 2*b)*(a + b*sec(e + f*x)^2)^(3/2))/(3*b^2*f) + (a + b*sec(e + f*x)^2)^(5/2)/(5*b^2*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*tan(e + f*x)^3, x, 6, (sqrt(a)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f - sqrt(a + b*sec(e + f*x)^2)/f + (a + b*sec(e + f*x)^2)^(3/2)/(3*b*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*tan(e + f*x)^1, x, 5, -((sqrt(a)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f) + sqrt(a + b*sec(e + f*x)^2)/f]
    @test_int [cot(e + f*x)^1*sqrt(a + b*sec(e + f*x)^2), x, 7, (sqrt(a)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f - (sqrt(a + b)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/f]
    @test_int [cot(e + f*x)^3*sqrt(a + b*sec(e + f*x)^2), x, 8, -((sqrt(a)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f) + ((2*a + b)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(2*sqrt(a + b)*f) - (cot(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2))/(2*f)]
    @test_int [cot(e + f*x)^5*sqrt(a + b*sec(e + f*x)^2), x, 9, (sqrt(a)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f - ((8*a^2 + 12*a*b + 3*b^2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(8*(a + b)^(3/2)*f) + ((4*a + 3*b)*cot(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2))/(8*(a + b)*f) - (cot(e + f*x)^4*sqrt(a + b*sec(e + f*x)^2))/(4*f)]

    @test_int [sqrt(a + b*sec(e + f*x)^2)*tan(e + f*x)^6, x, 10, -((sqrt(a)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f) + ((a^3 + 5*a^2*b + 15*a*b^2 - 5*b^3)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*b^(5/2)*f) - ((a - b)*(a + 5*b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(16*b^2*f) + ((a - 5*b)*tan(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(24*b*f) + (tan(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(6*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*tan(e + f*x)^4, x, 9, (sqrt(a)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f - ((a^2 + 6*a*b - 3*b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*b^(3/2)*f) + ((a - 3*b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*b*f) + (tan(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(4*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*tan(e + f*x)^2, x, 8, -((sqrt(a)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f) + ((a - b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*sqrt(b)*f) + (tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*f)]
    @test_int [sqrt(a + b*sec(e + f*x)^2)*tan(e + f*x)^0, x, 6, (sqrt(a)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f + (sqrt(b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f]
    @test_int [cot(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2), x, 6, -((sqrt(a)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f) - (cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/f]
    @test_int [cot(e + f*x)^4*sqrt(a + b*sec(e + f*x)^2), x, 7, (sqrt(a)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f + ((3*a + 2*b)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(3*(a + b)*f) - (cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(3*f)]
    @test_int [cot(e + f*x)^6*sqrt(a + b*sec(e + f*x)^2), x, 8, -((sqrt(a)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f) - ((15*a^2 + 25*a*b + 8*b^2)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(15*(a + b)^2*f) - ((b - 5*(a + b))*cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(15*(a + b)*f) - (cot(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(5*f)]


    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*tan(e + f*x)^5, x, 8, -((a^(3/2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f) + (a*sqrt(a + b*sec(e + f*x)^2))/f + (a + b*sec(e + f*x)^2)^(3/2)/(3*f) - ((a + 2*b)*(a + b*sec(e + f*x)^2)^(5/2))/(5*b^2*f) + (a + b*sec(e + f*x)^2)^(7/2)/(7*b^2*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*tan(e + f*x)^3, x, 7, (a^(3/2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f - (a*sqrt(a + b*sec(e + f*x)^2))/f - (a + b*sec(e + f*x)^2)^(3/2)/(3*f) + (a + b*sec(e + f*x)^2)^(5/2)/(5*b*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*tan(e + f*x)^1, x, 6, -((a^(3/2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f) + (a*sqrt(a + b*sec(e + f*x)^2))/f + (a + b*sec(e + f*x)^2)^(3/2)/(3*f)]
    @test_int [cot(e + f*x)^1*(a + b*sec(e + f*x)^2)^(3/2), x, 8, (a^(3/2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f - ((a + b)^(3/2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/f + (b*sqrt(a + b*sec(e + f*x)^2))/f]
    @test_int [cot(e + f*x)^3*(a + b*sec(e + f*x)^2)^(3/2), x, 8, -((a^(3/2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f) + ((2*a - b)*sqrt(a + b)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(2*f) - ((a + b)*cot(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2))/(2*f)]
    @test_int [cot(e + f*x)^5*(a + b*sec(e + f*x)^2)^(3/2), x, 9, (a^(3/2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a)))/f - ((8*a^2 + 4*a*b - b^2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(8*sqrt(a + b)*f) + ((4*a - b)*cot(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2))/(8*f) - ((a + b)*cot(e + f*x)^4*sqrt(a + b*sec(e + f*x)^2))/(4*f)]

    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*tan(e + f*x)^6, x, 11, -((a^(3/2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f) + ((3*a^4 + 20*a^3*b + 90*a^2*b^2 - 60*a*b^3 - 5*b^4)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(128*b^(5/2)*f) - ((3*a^3 + 17*a^2*b - 55*a*b^2 - 5*b^3)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(128*b^2*f) + ((3*a^2 - 50*a*b - 5*b^2)*tan(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(192*b*f) + ((9*a + b)*tan(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(48*f) + (b*tan(e + f*x)^7*sqrt(a + b + b*tan(e + f*x)^2))/(8*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*tan(e + f*x)^4, x, 10, (a^(3/2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f - ((a - b)*(a^2 + 10*a*b + b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(16*b^(3/2)*f) + ((a^2 - 8*a*b - b^2)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(16*b*f) + ((7*a + b)*tan(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(24*f) + (b*tan(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(6*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*tan(e + f*x)^2, x, 9, -((a^(3/2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f) + ((3*a^2 - 6*a*b - b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*sqrt(b)*f) + ((5*a + b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*f) + (b*tan(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(4*f)]
    @test_int [(a + b*sec(e + f*x)^2)^(3/2)*tan(e + f*x)^0, x, 7, (a^(3/2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f + (sqrt(b)*(3*a + b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*f) + (b*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*f)]
    @test_int [cot(e + f*x)^2*(a + b*sec(e + f*x)^2)^(3/2), x, 8, -((a^(3/2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f) + (b^(3/2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f - ((a + b)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/f]
    @test_int [cot(e + f*x)^4*(a + b*sec(e + f*x)^2)^(3/2), x, 7, (a^(3/2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f + ((3*a - b)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(3*f) - ((a + b)*cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(3*f)]
    @test_int [cot(e + f*x)^6*(a + b*sec(e + f*x)^2)^(3/2), x, 8, -((a^(3/2)*atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/f) - ((15*a^2 + 10*a*b - 2*b^2)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(15*(a + b)*f) + ((5*a - b)*cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(15*f) - ((a + b)*cot(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(5*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(e + f*x)^5/sqrt(a + b*sec(e + f*x)^2), x, 6, -(atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(sqrt(a)*f)) - ((a + 2*b)*sqrt(a + b*sec(e + f*x)^2))/(b^2*f) + (a + b*sec(e + f*x)^2)^(3/2)/(3*b^2*f)]
    @test_int [tan(e + f*x)^3/sqrt(a + b*sec(e + f*x)^2), x, 5, atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(sqrt(a)*f) + sqrt(a + b*sec(e + f*x)^2)/(b*f)]
    @test_int [tan(e + f*x)^1/sqrt(a + b*sec(e + f*x)^2), x, 4, -(atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(sqrt(a)*f))]
    @test_int [cot(e + f*x)^1/sqrt(a + b*sec(e + f*x)^2), x, 7, atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(sqrt(a)*f) - atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b))/(sqrt(a + b)*f)]
    @test_int [cot(e + f*x)^3/sqrt(a + b*sec(e + f*x)^2), x, 8, -(atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(sqrt(a)*f)) + ((2*a + 3*b)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(2*(a + b)^(3/2)*f) - (cot(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2))/(2*(a + b)*f)]
    @test_int [cot(e + f*x)^5/sqrt(a + b*sec(e + f*x)^2), x, 9, atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(sqrt(a)*f) - ((8*a^2 + 20*a*b + 15*b^2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(8*(a + b)^(5/2)*f) + ((4*a + 7*b)*cot(e + f*x)^2*sqrt(a + b*sec(e + f*x)^2))/(8*(a + b)^2*f) - (cot(e + f*x)^4*sqrt(a + b*sec(e + f*x)^2))/(4*(a + b)*f)]

    @test_int [tan(e + f*x)^6/sqrt(a + b*sec(e + f*x)^2), x, 9, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(a)*f)) + ((3*a^2 + 10*a*b + 15*b^2)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(8*b^(5/2)*f) - ((3*a + 7*b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(8*b^2*f) + (tan(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(4*b*f)]
    @test_int [tan(e + f*x)^4/sqrt(a + b*sec(e + f*x)^2), x, 8, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(a)*f) - ((a + 3*b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*b^(3/2)*f) + (tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*b*f)]
    @test_int [tan(e + f*x)^2/sqrt(a + b*sec(e + f*x)^2), x, 7, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(a)*f)) + atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(b)*f)]
    @test_int [tan(e + f*x)^0/sqrt(a + b*sec(e + f*x)^2), x, 3, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(a)*f)]
    @test_int [cot(e + f*x)^2/sqrt(a + b*sec(e + f*x)^2), x, 6, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(a)*f)) - (cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/((a + b)*f)]
    @test_int [cot(e + f*x)^4/sqrt(a + b*sec(e + f*x)^2), x, 7, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(a)*f) + ((3*a + 5*b)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(3*(a + b)^2*f) - (cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(3*(a + b)*f)]
    @test_int [cot(e + f*x)^6/sqrt(a + b*sec(e + f*x)^2), x, 8, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(sqrt(a)*f)) - ((15*a^2 + 40*a*b + 33*b^2)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(15*(a + b)^3*f) + ((5*a + 9*b)*cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(15*(a + b)^2*f) - (cot(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(5*(a + b)*f)]


    @test_int [tan(e + f*x)^5/(a + b*sec(e + f*x)^2)^(3/2), x, 6, -(atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(3/2)*f)) + (a + b)^2/(a*b^2*f*sqrt(a + b*sec(e + f*x)^2)) + sqrt(a + b*sec(e + f*x)^2)/(b^2*f)]
    @test_int [tan(e + f*x)^3/(a + b*sec(e + f*x)^2)^(3/2), x, 5, atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(3/2)*f) - (a + b)/(a*b*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [tan(e + f*x)^1/(a + b*sec(e + f*x)^2)^(3/2), x, 5, -(atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(3/2)*f)) + 1/(a*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [cot(e + f*x)^1/(a + b*sec(e + f*x)^2)^(3/2), x, 8, atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(3/2)*f) - atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b))/((a + b)^(3/2)*f) - b/(a*(a + b)*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [cot(e + f*x)^3/(a + b*sec(e + f*x)^2)^(3/2), x, 9, -(atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(3/2)*f)) + ((2*a + 5*b)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(2*(a + b)^(5/2)*f) - ((a - 2*b)*b)/(2*a*(a + b)^2*f*sqrt(a + b*sec(e + f*x)^2)) - cot(e + f*x)^2/(2*(a + b)*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [cot(e + f*x)^5/(a + b*sec(e + f*x)^2)^(3/2), x, 10, atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(3/2)*f) - ((8*a^2 + 28*a*b + 35*b^2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(8*(a + b)^(7/2)*f) + (b*(4*a^2 + 11*a*b - 8*b^2))/(8*a*(a + b)^3*f*sqrt(a + b*sec(e + f*x)^2)) + ((4*a + 9*b)*cot(e + f*x)^2)/(8*(a + b)^2*f*sqrt(a + b*sec(e + f*x)^2)) - cot(e + f*x)^4/(4*(a + b)*f*sqrt(a + b*sec(e + f*x)^2))]

    @test_int [tan(e + f*x)^6/(a + b*sec(e + f*x)^2)^(3/2), x, 9, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(3/2)*f)) - ((3*a + 5*b)*atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2)))/(2*b^(5/2)*f) - ((a + b)*tan(e + f*x)^3)/(a*b*f*sqrt(a + b + b*tan(e + f*x)^2)) + ((3*a + 2*b)*tan(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(2*a*b^2*f)]
    @test_int [tan(e + f*x)^4/(a + b*sec(e + f*x)^2)^(3/2), x, 8, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(3/2)*f) + atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(b^(3/2)*f) - ((a + b)*tan(e + f*x))/(a*b*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/(a + b*sec(e + f*x)^2)^(3/2), x, 5, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(3/2)*f)) + tan(e + f*x)/(a*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^0/(a + b*sec(e + f*x)^2)^(3/2), x, 4, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(3/2)*f) - (b*tan(e + f*x))/(a*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a + b*sec(e + f*x)^2)^(3/2), x, 7, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(3/2)*f)) - (b*cot(e + f*x))/(a*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2)) - ((a - b)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(a*(a + b)^2*f)]
    @test_int [cot(e + f*x)^4/(a + b*sec(e + f*x)^2)^(3/2), x, 8, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(3/2)*f) - (b*cot(e + f*x)^3)/(a*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2)) + ((3*a - b)*(a + 3*b)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(3*a*(a + b)^3*f) - ((a - 3*b)*cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(3*a*(a + b)^2*f)]
    @test_int [cot(e + f*x)^6/(a + b*sec(e + f*x)^2)^(3/2), x, 9, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(3/2)*f)) - (b*cot(e + f*x)^5)/(a*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2)) - ((15*a^3 + 55*a^2*b + 73*a*b^2 - 15*b^3)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(15*a*(a + b)^4*f) + ((5*a^2 + 14*a*b - 15*b^2)*cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(15*a*(a + b)^3*f) - ((a - 5*b)*cot(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(5*a*(a + b)^2*f)]


    @test_int [tan(e + f*x)^5/(a + b*sec(e + f*x)^2)^(5/2), x, 6, -(atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(5/2)*f)) + (a + b)^2/(3*a*b^2*f*(a + b*sec(e + f*x)^2)^(3/2)) + (a^(-2) - b^(-2))/(f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [tan(e + f*x)^3/(a + b*sec(e + f*x)^2)^(5/2), x, 6, atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(5/2)*f) - (a + b)/(3*a*b*f*(a + b*sec(e + f*x)^2)^(3/2)) - 1/(a^2*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [tan(e + f*x)^1/(a + b*sec(e + f*x)^2)^(5/2), x, 6, -(atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(5/2)*f)) + 1/(3*a*f*(a + b*sec(e + f*x)^2)^(3/2)) + 1/(a^2*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [cot(e + f*x)^1/(a + b*sec(e + f*x)^2)^(5/2), x, 9, atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(5/2)*f) - atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b))/((a + b)^(5/2)*f) - b/(3*a*(a + b)*f*(a + b*sec(e + f*x)^2)^(3/2)) - (b*(2*a + b))/(a^2*(a + b)^2*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [cot(e + f*x)^3/(a + b*sec(e + f*x)^2)^(5/2), x, 10, -(atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(5/2)*f)) + ((2*a + 7*b)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(2*(a + b)^(7/2)*f) - ((3*a - 2*b)*b)/(6*a*(a + b)^2*f*(a + b*sec(e + f*x)^2)^(3/2)) - cot(e + f*x)^2/(2*(a + b)*f*(a + b*sec(e + f*x)^2)^(3/2)) - (b*(a^2 - 6*a*b - 2*b^2))/(2*a^2*(a + b)^3*f*sqrt(a + b*sec(e + f*x)^2))]
    @test_int [cot(e + f*x)^5/(a + b*sec(e + f*x)^2)^(5/2), x, 11, atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a))/(a^(5/2)*f) - ((8*a^2 + 36*a*b + 63*b^2)*atanh(sqrt(a + b*sec(e + f*x)^2)/sqrt(a + b)))/(8*(a + b)^(9/2)*f) + (b*(12*a^2 + 39*a*b - 8*b^2))/(24*a*(a + b)^3*f*(a + b*sec(e + f*x)^2)^(3/2)) + ((4*a + 11*b)*cot(e + f*x)^2)/(8*(a + b)^2*f*(a + b*sec(e + f*x)^2)^(3/2)) - cot(e + f*x)^4/(4*(a + b)*f*(a + b*sec(e + f*x)^2)^(3/2)) + (b*(4*a^3 + 15*a^2*b - 32*a*b^2 - 8*b^3))/(8*a^2*(a + b)^4*f*sqrt(a + b*sec(e + f*x)^2))]

    @test_int [tan(e + f*x)^6/(a + b*sec(e + f*x)^2)^(5/2), x, 9, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(5/2)*f)) + atanh((sqrt(b)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(b^(5/2)*f) - ((a + b)*tan(e + f*x)^3)/(3*a*b*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + ((a^(-2) - b^(-2))*tan(e + f*x))/(f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^4/(a + b*sec(e + f*x)^2)^(5/2), x, 7, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(5/2)*f) - ((a + b)*tan(e + f*x))/(3*a*b*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + ((a - 3*b)*tan(e + f*x))/(3*a^2*b*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^2/(a + b*sec(e + f*x)^2)^(5/2), x, 7, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(5/2)*f)) + tan(e + f*x)/(3*a*f*(a + b + b*tan(e + f*x)^2)^(3/2)) + ((2*a + 3*b)*tan(e + f*x))/(3*a^2*(a + b)*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [tan(e + f*x)^0/(a + b*sec(e + f*x)^2)^(5/2), x, 6, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(5/2)*f) - (b*tan(e + f*x))/(3*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (b*(5*a + 3*b)*tan(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2))]
    @test_int [cot(e + f*x)^2/(a + b*sec(e + f*x)^2)^(5/2), x, 8, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(5/2)*f)) - (b*cot(e + f*x))/(3*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (b*(7*a + 3*b)*cot(e + f*x))/(3*a^2*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2)) - ((a - 3*b)*(3*a + b)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(3*a^2*(a + b)^3*f)]
    @test_int [cot(e + f*x)^4/(a + b*sec(e + f*x)^2)^(5/2), x, 9, atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(5/2)*f) - (b*cot(e + f*x)^3)/(3*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (b*(3*a + b)*cot(e + f*x)^3)/(a^2*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2)) + ((a - b)*(3*a^2 + 14*a*b + 3*b^2)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(3*a^2*(a + b)^4*f) - ((a^2 - 10*a*b - 3*b^2)*cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(3*a^2*(a + b)^3*f)]
    @test_int [cot(e + f*x)^6/(a + b*sec(e + f*x)^2)^(5/2), x, 10, -(atan((sqrt(a)*tan(e + f*x))/sqrt(a + b + b*tan(e + f*x)^2))/(a^(5/2)*f)) - (b*cot(e + f*x)^5)/(3*a*(a + b)*f*(a + b + b*tan(e + f*x)^2)^(3/2)) - (b*(11*a + 3*b)*cot(e + f*x)^5)/(3*a^2*(a + b)^2*f*sqrt(a + b + b*tan(e + f*x)^2)) - ((15*a^4 + 70*a^3*b + 128*a^2*b^2 - 70*a*b^3 - 15*b^4)*cot(e + f*x)*sqrt(a + b + b*tan(e + f*x)^2))/(15*a^2*(a + b)^5*f) + ((5*a^3 + 19*a^2*b - 65*a*b^2 - 15*b^3)*cot(e + f*x)^3*sqrt(a + b + b*tan(e + f*x)^2))/(15*a^2*(a + b)^4*f) - ((a^2 - 20*a*b - 5*b^2)*cot(e + f*x)^5*sqrt(a + b + b*tan(e + f*x)^2))/(5*a^2*(a + b)^3*f)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(a + b*sec(e + f*x)^2)^p*(d*tan(e + f*x))^m, x, 4, (AppellF1((1 + m)/2, 1, -p, (3 + m)/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*(d*tan(e + f*x))^(1 + m)*(a + b + b*tan(e + f*x)^2)^p)/(d*f*(1 + m)*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]


    @test_int [(a + b*sec(e + f*x)^2)^p*tan(e + f*x)^5, x, 5, -((a + 2*b)*(a + b*sec(e + f*x)^2)^(1 + p))/(2*b^2*f*(1 + p)) - (Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sec(e + f*x)^2)/a)*(a + b*sec(e + f*x)^2)^(1 + p))/(2*a*f*(1 + p)) + (a + b*sec(e + f*x)^2)^(2 + p)/(2*b^2*f*(2 + p))]
    @test_int [(a + b*sec(e + f*x)^2)^p*tan(e + f*x)^3, x, 4, (a + b*sec(e + f*x)^2)^(1 + p)/(2*b*f*(1 + p)) + (Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sec(e + f*x)^2)/a)*(a + b*sec(e + f*x)^2)^(1 + p))/(2*a*f*(1 + p))]
    @test_int [(a + b*sec(e + f*x)^2)^p*tan(e + f*x)^1, x, 3, -(Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sec(e + f*x)^2)/a)*(a + b*sec(e + f*x)^2)^(1 + p))/(2*a*f*(1 + p))]
    @test_int [cot(e + f*x)^1*(a + b*sec(e + f*x)^2)^p, x, 5, -(Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*sec(e + f*x)^2)/(a + b))*(a + b*sec(e + f*x)^2)^(1 + p))/(2*(a + b)*f*(1 + p)) + (Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sec(e + f*x)^2)/a)*(a + b*sec(e + f*x)^2)^(1 + p))/(2*a*f*(1 + p))]
    @test_int [cot(e + f*x)^3*(a + b*sec(e + f*x)^2)^p, x, 6, -((cot(e + f*x)^2*(a + b*sec(e + f*x)^2)^(1 + p))/(2*(a + b)*f)) + ((a + b - b*p)*Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*sec(e + f*x)^2)/(a + b))*(a + b*sec(e + f*x)^2)^(1 + p))/(2*(a + b)^2*f*(1 + p)) - (Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sec(e + f*x)^2)/a)*(a + b*sec(e + f*x)^2)^(1 + p))/(2*a*f*(1 + p))]

    @test_int [(a + b*sec(e + f*x)^2)^p*tan(e + f*x)^4, x, 4, (AppellF1(5/2, 1, -p, 7/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)^5*(a + b + b*tan(e + f*x)^2)^p)/(5*f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [(a + b*sec(e + f*x)^2)^p*tan(e + f*x)^2, x, 4, (AppellF1(3/2, 1, -p, 5/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^p)/(3*f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [(a + b*sec(e + f*x)^2)^p*tan(e + f*x)^0, x, 3, (AppellF1(1/2, 1, -p, 3/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*tan(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]
    @test_int [cot(e + f*x)^2*(a + b*sec(e + f*x)^2)^p, x, 4, -((AppellF1(-1/2, 1, -p, 1/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*cot(e + f*x)*(a + b + b*tan(e + f*x)^2)^p)/(f*(1 + (b*tan(e + f*x)^2)/(a + b))^p))]
    @test_int [cot(e + f*x)^4*(a + b*sec(e + f*x)^2)^p, x, 4, -(AppellF1(-3/2, 1, -p, -1/2, -tan(e + f*x)^2, -((b*tan(e + f*x)^2)/(a + b)))*cot(e + f*x)^3*(a + b + b*tan(e + f*x)^2)^p)/(3*f*(1 + (b*tan(e + f*x)^2)/(a + b))^p)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^3)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^3)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tan(e + f*x)^5*(a + b*sec(e + f*x)^3), x, 3, -((a*log(cos(e + f*x)))/f) - (a*sec(e + f*x)^2)/f + (b*sec(e + f*x)^3)/(3*f) + (a*sec(e + f*x)^4)/(4*f) - (2*b*sec(e + f*x)^5)/(5*f) + (b*sec(e + f*x)^7)/(7*f)]
    @test_int [tan(e + f*x)^3*(a + b*sec(e + f*x)^3), x, 3, (a*log(cos(e + f*x)))/f + (a*sec(e + f*x)^2)/(2*f) - (b*sec(e + f*x)^3)/(3*f) + (b*sec(e + f*x)^5)/(5*f)]
    @test_int [tan(e + f*x)^1*(a + b*sec(e + f*x)^3), x, 3, -((a*log(cos(e + f*x)))/f) + (b*sec(e + f*x)^3)/(3*f)]
    @test_int [cot(e + f*x)^1*(a + b*sec(e + f*x)^3), x, 3, ((a + b)*log(1 - cos(e + f*x)))/(2*f) + ((a - b)*log(1 + cos(e + f*x)))/(2*f) + (b*sec(e + f*x))/f]
    @test_int [cot(e + f*x)^3*(a + b*sec(e + f*x)^3), x, 5, -(((a + b*cos(e + f*x))*csc(e + f*x)^2)/(2*f)) - ((2*a - b)*log(1 - cos(e + f*x)))/(4*f) - ((2*a + b)*log(1 + cos(e + f*x)))/(4*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tan(e + f*x)^5/(a + b*sec(e + f*x)^3), x, 11, -(((a^(2/3) + 2*b^(2/3))*atan((b^(1/3) - 2*a^(1/3)*cos(e + f*x))/(sqrt(3)*b^(1/3))))/(sqrt(3)*a^(1/3)*b^(4/3)*f)) - ((a^(2/3) - 2*b^(2/3))*log(b^(1/3) + a^(1/3)*cos(e + f*x)))/(3*a^(1/3)*b^(4/3)*f) + ((a^(2/3) - 2*b^(2/3))*log(b^(2/3) - a^(1/3)*b^(1/3)*cos(e + f*x) + a^(2/3)*cos(e + f*x)^2))/(6*a^(1/3)*b^(4/3)*f) - log(b + a*cos(e + f*x)^3)/(3*a*f) + sec(e + f*x)/(b*f)]
    @test_int [tan(e + f*x)^3/(a + b*sec(e + f*x)^3), x, 9, atan((b^(1/3) - 2*a^(1/3)*cos(e + f*x))/(sqrt(3)*b^(1/3)))/(sqrt(3)*a^(1/3)*b^(2/3)*f) - log(b^(1/3) + a^(1/3)*cos(e + f*x))/(3*a^(1/3)*b^(2/3)*f) + log(b^(2/3) - a^(1/3)*b^(1/3)*cos(e + f*x) + a^(2/3)*cos(e + f*x)^2)/(6*a^(1/3)*b^(2/3)*f) + log(b + a*cos(e + f*x)^3)/(3*a*f)]
    @test_int [tan(e + f*x)^1/(a + b*sec(e + f*x)^3), x, 2, -(log(b + a*cos(e + f*x)^3)/(3*a*f))]
    @test_int [cot(e + f*x)^1/(a + b*sec(e + f*x)^3), x, 11, -((b^(2/3)*atan((b^(1/3) - 2*a^(1/3)*cos(e + f*x))/(sqrt(3)*b^(1/3))))/(sqrt(3)*a^(1/3)*(a^(4/3) + a^(2/3)*b^(2/3) + b^(4/3))*f)) + log(1 - cos(e + f*x))/(2*(a + b)*f) + log(1 + cos(e + f*x))/(2*(a - b)*f) - ((a^(2/3) + b^(2/3))*b^(2/3)*log(b^(1/3) + a^(1/3)*cos(e + f*x)))/(3*a^(1/3)*(a^2 - b^2)*f) + ((a^(2/3) + b^(2/3))*b^(2/3)*log(b^(2/3) - a^(1/3)*b^(1/3)*cos(e + f*x) + a^(2/3)*cos(e + f*x)^2))/(6*a^(1/3)*(a^2 - b^2)*f) - (b^2*log(b + a*cos(e + f*x)^3))/(3*a*(a^2 - b^2)*f)]
    @test_int [cot(e + f*x)^3/(a + b*sec(e + f*x)^3), x, 11, (b^(4/3)*(a^2 - 3*a^(2/3)*b^(4/3) + 2*b^2)*atan((b^(1/3) - 2*a^(1/3)*cos(e + f*x))/(sqrt(3)*b^(1/3))))/(sqrt(3)*a^(1/3)*(a^2 - b^2)^2*f) - 1/(4*(a + b)*f*(1 - cos(e + f*x))) - 1/(4*(a - b)*f*(1 + cos(e + f*x))) - ((2*a + 5*b)*log(1 - cos(e + f*x)))/(4*(a + b)^2*f) - ((2*a - 5*b)*log(1 + cos(e + f*x)))/(4*(a - b)^2*f) - (b^(4/3)*(a^2 + 3*a^(2/3)*b^(4/3) + 2*b^2)*log(b^(1/3) + a^(1/3)*cos(e + f*x)))/(3*a^(1/3)*(a^2 - b^2)^2*f) + (b^(4/3)*(a^2 + 3*a^(2/3)*b^(4/3) + 2*b^2)*log(b^(2/3) - a^(1/3)*b^(1/3)*cos(e + f*x) + a^(2/3)*cos(e + f*x)^2))/(6*a^(1/3)*(a^2 - b^2)^2*f) - (b^2*(2*a^2 + b^2)*log(b + a*cos(e + f*x)^3))/(3*a*(a^2 - b^2)^2*f)]


    #= ::Section:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^m*(a+b*sec(e+f*x)^n)^p*when*p*symbolic=#


    @test_int [(d*tan(e + f*x))^m*(a + b*(c*sec(e + f*x))^n)^p, x, 0, Unintegrable((a + b*(c*sec(e + f*x))^n)^p*(d*tan(e + f*x))^m, x)]


    @test_int [tan(e + f*x)^5*(a + b*(c*sec(e + f*x))^n)^p, x, 15, -((Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*(c*sec(e + f*x))^n)/a)*(a + b*(c*sec(e + f*x))^n)^(1 + p))/(a*f*n*(1 + p))) - (Hypergeometric2F1(2/n, -p, (2 + n)/n, -((b*(c*sec(e + f*x))^n)/a))*sec(e + f*x)^2*(a + b*(c*sec(e + f*x))^n)^p)/((1 + (b*(c*sec(e + f*x))^n)/a)^p*f) + (Hypergeometric2F1(4/n, -p, (4 + n)/n, -((b*(c*sec(e + f*x))^n)/a))*sec(e + f*x)^4*(a + b*(c*sec(e + f*x))^n)^p)/((1 + (b*(c*sec(e + f*x))^n)/a)^p*(4*f))]
    @test_int [tan(e + f*x)^3*(a + b*(c*sec(e + f*x))^n)^p, x, 11, (Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*(c*sec(e + f*x))^n)/a)*(a + b*(c*sec(e + f*x))^n)^(1 + p))/(a*f*n*(1 + p)) + (Hypergeometric2F1(2/n, -p, (2 + n)/n, -((b*(c*sec(e + f*x))^n)/a))*sec(e + f*x)^2*(a + b*(c*sec(e + f*x))^n)^p)/((1 + (b*(c*sec(e + f*x))^n)/a)^p*(2*f))]
    @test_int [tan(e + f*x)^1*(a + b*(c*sec(e + f*x))^n)^p, x, 5, -((Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*(c*sec(e + f*x))^n)/a)*(a + b*(c*sec(e + f*x))^n)^(1 + p))/(a*f*n*(1 + p)))]
    @test_int [cot(e + f*x)^1*(a + b*(c*sec(e + f*x))^n)^p, x, 0, Unintegrable(cot(e + f*x)*(a + b*(c*sec(e + f*x))^n)^p, x)]
    @test_int [cot(e + f*x)^3*(a + b*(c*sec(e + f*x))^n)^p, x, 0, Unintegrable(cot(e + f*x)^3*(a + b*(c*sec(e + f*x))^n)^p, x)]

    @test_int [tan(e + f*x)^2*(a + b*(c*sec(e + f*x))^n)^p, x, 0, Unintegrable((a + b*(c*sec(e + f*x))^n)^p*tan(e + f*x)^2, x)]
    @test_int [tan(e + f*x)^0*(a + b*(c*sec(e + f*x))^n)^p, x, 0, Unintegrable((a + b*(c*sec(e + f*x))^n)^p, x)]
    @test_int [cot(e + f*x)^2*(a + b*(c*sec(e + f*x))^n)^p, x, 0, Unintegrable(cot(e + f*x)^2*(a + b*(c*sec(e + f*x))^n)^p, x)]
    end
