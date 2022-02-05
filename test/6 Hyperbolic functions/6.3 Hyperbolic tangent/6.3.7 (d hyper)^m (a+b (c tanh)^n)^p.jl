@testset "6.3.7 (d hyper)^m (a+b (c tanh)^n)^p" begin
    @variables a, b, c, d, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*tanh(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*tanh(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sinh(c + d*x)^4*(a + b*tanh(c + d*x)^2), x, 5, (3/8)*(a + 5*b)*x - ((5*a + 9*b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) + ((a + b)*cosh(c + d*x)^3*sinh(c + d*x))/(4*d) - (b*tanh(c + d*x))/d]
    @test_int [sinh(c + d*x)^3*(a + b*tanh(c + d*x)^2), x, 3, -(((a + 2*b)*cosh(c + d*x))/d) + ((a + b)*cosh(c + d*x)^3)/(3*d) - (b*sech(c + d*x))/d]
    @test_int [sinh(c + d*x)^2*(a + b*tanh(c + d*x)^2), x, 4, (-(1/2))*(a + 3*b)*x + ((a + b)*cosh(c + d*x)*sinh(c + d*x))/(2*d) + (b*tanh(c + d*x))/d]
    @test_int [sinh(c + d*x)^1*(a + b*tanh(c + d*x)^2), x, 3, ((a + b)*cosh(c + d*x))/d + (b*sech(c + d*x))/d]
    @test_int [csch(c + d*x)^1*(a + b*tanh(c + d*x)^2), x, 3, -((a*atanh(cosh(c + d*x)))/d) - (b*sech(c + d*x))/d]
    @test_int [csch(c + d*x)^2*(a + b*tanh(c + d*x)^2), x, 3, -((a*coth(c + d*x))/d) + (b*tanh(c + d*x))/d]
    @test_int [csch(c + d*x)^3*(a + b*tanh(c + d*x)^2), x, 4, ((a - 2*b)*atanh(cosh(c + d*x)))/(2*d) - (a*coth(c + d*x)*csch(c + d*x))/(2*d) + (b*sech(c + d*x))/d]
    @test_int [csch(c + d*x)^4*(a + b*tanh(c + d*x)^2), x, 3, ((a - b)*coth(c + d*x))/d - (a*coth(c + d*x)^3)/(3*d) - (b*tanh(c + d*x))/d]


    @test_int [sinh(c + d*x)^4*(a + b*tanh(c + d*x)^2)^2, x, 6, (1/8)*(3*a^2 + 30*a*b + 35*b^2)*x - ((a + b)*(a + 9*b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) - ((a^2 + 10*a*b + 13*b^2)*tanh(c + d*x))/(4*d) + ((a + b)^2*sinh(c + d*x)^4*tanh(c + d*x))/(4*d) - (b^2*tanh(c + d*x)^3)/(3*d)]
    @test_int [sinh(c + d*x)^3*(a + b*tanh(c + d*x)^2)^2, x, 3, -(((a + b)*(a + 3*b)*cosh(c + d*x))/d) + ((a + b)^2*cosh(c + d*x)^3)/(3*d) - (b*(2*a + 3*b)*sech(c + d*x))/d + (b^2*sech(c + d*x)^3)/(3*d)]
    @test_int [sinh(c + d*x)^2*(a + b*tanh(c + d*x)^2)^2, x, 5, (-(1/2))*(a + b)*(a + 5*b)*x + ((a + b)*(a + 5*b)*tanh(c + d*x))/(2*d) + ((a + b)^2*sinh(c + d*x)^2*tanh(c + d*x))/(2*d) + (b^2*tanh(c + d*x)^3)/(3*d)]
    @test_int [sinh(c + d*x)^1*(a + b*tanh(c + d*x)^2)^2, x, 3, ((a + b)^2*cosh(c + d*x))/d + (2*b*(a + b)*sech(c + d*x))/d - (b^2*sech(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^1*(a + b*tanh(c + d*x)^2)^2, x, 4, -((a^2*atanh(cosh(c + d*x)))/d) - (b*(2*a + b)*sech(c + d*x))/d + (b^2*sech(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^2*(a + b*tanh(c + d*x)^2)^2, x, 3, -((a^2*coth(c + d*x))/d) + (2*a*b*tanh(c + d*x))/d + (b^2*tanh(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^3*(a + b*tanh(c + d*x)^2)^2, x, 5, (a*(a - 4*b)*atanh(cosh(c + d*x)))/(2*d) - (a*(a - 4*b)*sech(c + d*x))/(2*d) - (a^2*csch(c + d*x)^2*sech(c + d*x))/(2*d) - (b^2*sech(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^4*(a + b*tanh(c + d*x)^2)^2, x, 3, (a*(a - 2*b)*coth(c + d*x))/d - (a^2*coth(c + d*x)^3)/(3*d) - ((2*a - b)*b*tanh(c + d*x))/d - (b^2*tanh(c + d*x)^3)/(3*d)]


    @test_int [sinh(c + d*x)^4*(a + b*tanh(c + d*x)^2)^3, x, 6, (3/8)*(a + b)*(a^2 + 14*a*b + 21*b^2)*x - (3*(a + b)*(a^2 + 14*a*b + 21*b^2)*tanh(c + d*x))/(8*d) - (b*(6*a^2 + 35*a*b + 21*b^2)*tanh(c + d*x)^3)/(8*d) - (3*b^2*(5*a + 21*b)*tanh(c + d*x)^5)/(40*d) - (3*(a + 3*b)*sinh(c + d*x)^2*tanh(c + d*x)*(a + b*tanh(c + d*x)^2)^2)/(8*d) + (cosh(c + d*x)*sinh(c + d*x)^3*(a + b*tanh(c + d*x)^2)^3)/(4*d)]
    @test_int [sinh(c + d*x)^3*(a + b*tanh(c + d*x)^2)^3, x, 3, -(((a + b)^2*(a + 4*b)*cosh(c + d*x))/d) + ((a + b)^3*cosh(c + d*x)^3)/(3*d) - (3*b*(a + b)*(a + 2*b)*sech(c + d*x))/d + (b^2*(3*a + 4*b)*sech(c + d*x)^3)/(3*d) - (b^3*sech(c + d*x)^5)/(5*d)]
    @test_int [sinh(c + d*x)^2*(a + b*tanh(c + d*x)^2)^3, x, 6, -((a + b)^2*(a + 7*b)*x)/2 + (a + b)^3/(4*d*(1 - tanh(c + d*x))) + (3*b*(a + b)^2*tanh(c + d*x))/d + (b^2*(3*a + 2*b)*tanh(c + d*x)^3)/(3*d) + (b^3*tanh(c + d*x)^5)/(5*d) - (a + b)^3/(4*d*(1 + tanh(c + d*x))), (-(1/2))*(a + b)^2*(a + 7*b)*x + (b*(81*a^2 + 190*a*b + 105*b^2)*tanh(c + d*x))/(30*d) + (b*(33*a + 35*b)*tanh(c + d*x)*(a + b*tanh(c + d*x)^2))/(30*d) + (7*b*tanh(c + d*x)*(a + b*tanh(c + d*x)^2)^2)/(10*d) + (cosh(c + d*x)*sinh(c + d*x)*(a + b*tanh(c + d*x)^2)^3)/(2*d)]
    @test_int [sinh(c + d*x)^1*(a + b*tanh(c + d*x)^2)^3, x, 3, ((a + b)^3*cosh(c + d*x))/d + (3*b*(a + b)^2*sech(c + d*x))/d - (b^2*(a + b)*sech(c + d*x)^3)/d + (b^3*sech(c + d*x)^5)/(5*d)]
    @test_int [csch(c + d*x)^1*(a + b*tanh(c + d*x)^2)^3, x, 4, -((a^3*atanh(cosh(c + d*x)))/d) - (b*(3*a^2 + 3*a*b + b^2)*sech(c + d*x))/d + (b^2*(3*a + 2*b)*sech(c + d*x)^3)/(3*d) - (b^3*sech(c + d*x)^5)/(5*d)]
    @test_int [csch(c + d*x)^2*(a + b*tanh(c + d*x)^2)^3, x, 3, -((a^3*coth(c + d*x))/d) + (3*a^2*b*tanh(c + d*x))/d + (a*b^2*tanh(c + d*x)^3)/d + (b^3*tanh(c + d*x)^5)/(5*d)]
    @test_int [csch(c + d*x)^3*(a + b*tanh(c + d*x)^2)^3, x, 6, (a^2*(a - 6*b)*atanh(cosh(c + d*x)))/(2*d) + (b*(81*a^2 - 28*a*b - 4*b^2)*sech(c + d*x))/(30*d) + ((33*a - 2*b)*b*sech(c + d*x)*(a + b - b*sech(c + d*x)^2))/(30*d) + (7*b*sech(c + d*x)*(a + b - b*sech(c + d*x)^2)^2)/(10*d) - (coth(c + d*x)*csch(c + d*x)*(a + b - b*sech(c + d*x)^2)^3)/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*tanh(c + d*x)^2)^3, x, 3, (a^2*(a - 3*b)*coth(c + d*x))/d - (a^3*coth(c + d*x)^3)/(3*d) - (3*a*(a - b)*b*tanh(c + d*x))/d - ((3*a - b)*b^2*tanh(c + d*x)^3)/(3*d) - (b^3*tanh(c + d*x)^5)/(5*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sinh(c + d*x)^4/(a + b*tanh(c + d*x)^2), x, 6, ((3*a^2 - 6*a*b - b^2)*x)/(8*(a + b)^3) + (a^(3/2)*sqrt(b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/((a + b)^3*d) - ((5*a + b)*cosh(c + d*x)*sinh(c + d*x))/(8*(a + b)^2*d) + (cosh(c + d*x)^3*sinh(c + d*x))/(4*(a + b)*d)]
    @test_int [sinh(c + d*x)^3/(a + b*tanh(c + d*x)^2), x, 4, (a*sqrt(b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/((a + b)^(5/2)*d) - (a*cosh(c + d*x))/((a + b)^2*d) + cosh(c + d*x)^3/(3*(a + b)*d)]
    @test_int [sinh(c + d*x)^2/(a + b*tanh(c + d*x)^2), x, 5, -(((a - b)*x)/(2*(a + b)^2)) - (sqrt(a)*sqrt(b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/((a + b)^2*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*(a + b)*d)]
    @test_int [sinh(c + d*x)^1/(a + b*tanh(c + d*x)^2), x, 3, -((sqrt(b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/((a + b)^(3/2)*d)) + cosh(c + d*x)/((a + b)*d)]
    @test_int [csch(c + d*x)^1/(a + b*tanh(c + d*x)^2), x, 4, -(atanh(cosh(c + d*x))/(a*d)) + (sqrt(b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(a*sqrt(a + b)*d)]
    @test_int [csch(c + d*x)^2/(a + b*tanh(c + d*x)^2), x, 3, -((sqrt(b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(a^(3/2)*d)) - coth(c + d*x)/(a*d)]
    @test_int [csch(c + d*x)^3/(a + b*tanh(c + d*x)^2), x, 5, ((a + 2*b)*atanh(cosh(c + d*x)))/(2*a^2*d) - (sqrt(b)*sqrt(a + b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(a^2*d) - (coth(c + d*x)*csch(c + d*x))/(2*a*d)]
    @test_int [csch(c + d*x)^4/(a + b*tanh(c + d*x)^2), x, 4, (sqrt(b)*(a + b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(a^(5/2)*d) + ((a + b)*coth(c + d*x))/(a^2*d) - coth(c + d*x)^3/(3*a*d)]


    @test_int [sinh(c + d*x)^4/(a + b*tanh(c + d*x)^2)^2, x, 7, (3*(a^2 - 6*a*b + b^2)*x)/(8*(a + b)^4) + (3*sqrt(a)*(a - b)*sqrt(b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*(a + b)^4*d) - ((5*a - b)*cosh(c + d*x)*sinh(c + d*x))/(8*(a + b)^2*d*(a + b*tanh(c + d*x)^2)) + (cosh(c + d*x)^3*sinh(c + d*x))/(4*(a + b)*d*(a + b*tanh(c + d*x)^2)) + (3*(3*a - b)*b*tanh(c + d*x))/(8*(a + b)^3*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^3/(a + b*tanh(c + d*x)^2)^2, x, 5, ((3*a - 2*b)*sqrt(b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(2*(a + b)^(7/2)*d) - ((a - b)*cosh(c + d*x))/((a + b)^3*d) + cosh(c + d*x)^3/(3*(a + b)^2*d) + (a*b*sech(c + d*x))/(2*(a + b)^3*d*(a + b - b*sech(c + d*x)^2))]
    @test_int [sinh(c + d*x)^2/(a + b*tanh(c + d*x)^2)^2, x, 6, -(((a - 3*b)*x)/(2*(a + b)^3)) - ((3*a - b)*sqrt(b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*sqrt(a)*(a + b)^3*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*(a + b)*d*(a + b*tanh(c + d*x)^2)) - (b*tanh(c + d*x))/((a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^1/(a + b*tanh(c + d*x)^2)^2, x, 4, -((3*sqrt(b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(2*(a + b)^(5/2)*d)) + (3*cosh(c + d*x))/(2*(a + b)^2*d) - cosh(c + d*x)/(2*(a + b)*d*(a + b - b*sech(c + d*x)^2))]
    @test_int [csch(c + d*x)^1/(a + b*tanh(c + d*x)^2)^2, x, 5, -(atanh(cosh(c + d*x))/(a^2*d)) + (sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(2*a^2*(a + b)^(3/2)*d) + (b*sech(c + d*x))/(2*a*(a + b)*d*(a + b - b*sech(c + d*x)^2))]
    @test_int [csch(c + d*x)^2/(a + b*tanh(c + d*x)^2)^2, x, 4, (-3*sqrt(b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*a^(5/2)*d) - (3*coth(c + d*x))/(2*a^2*d) + coth(c + d*x)/(2*a*d*(a + b*tanh(c + d*x)^2))]
    @test_int [csch(c + d*x)^3/(a + b*tanh(c + d*x)^2)^2, x, 6, ((a + 4*b)*atanh(cosh(c + d*x)))/(2*a^3*d) - (sqrt(b)*(3*a + 4*b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(2*a^3*sqrt(a + b)*d) - (coth(c + d*x)*csch(c + d*x))/(2*a*d*(a + b - b*sech(c + d*x)^2)) - (b*sech(c + d*x))/(a^2*d*(a + b - b*sech(c + d*x)^2))]
    @test_int [csch(c + d*x)^4/(a + b*tanh(c + d*x)^2)^2, x, 5, (sqrt(b)*(3*a + 5*b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*a^(7/2)*d) + ((a + 2*b)*coth(c + d*x))/(a^3*d) - coth(c + d*x)^3/(3*a^2*d) + (b*(a + b)*tanh(c + d*x))/(2*a^3*d*(a + b*tanh(c + d*x)^2))]


    @test_int [sinh(c + d*x)^4/(a + b*tanh(c + d*x)^2)^3, x, 8, (3*(a^2 - 10*a*b + 5*b^2)*x)/(8*(a + b)^5) + (3*sqrt(b)*(5*a^2 - 10*a*b + b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*sqrt(a)*(a + b)^5*d) - ((5*a - 3*b)*cosh(c + d*x)*sinh(c + d*x))/(8*(a + b)^2*d*(a + b*tanh(c + d*x)^2)^2) + (cosh(c + d*x)^3*sinh(c + d*x))/(4*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) + ((7*a - 5*b)*b*tanh(c + d*x))/(8*(a + b)^3*d*(a + b*tanh(c + d*x)^2)^2) + (3*(a - b)*b*tanh(c + d*x))/(2*(a + b)^4*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^3/(a + b*tanh(c + d*x)^2)^3, x, 6, (5*(3*a - 4*b)*sqrt(b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(8*(a + b)^(9/2)*d) - ((a - 2*b)*cosh(c + d*x))/((a + b)^4*d) + cosh(c + d*x)^3/(3*(a + b)^3*d) + (a*b*sech(c + d*x))/(4*(a + b)^3*d*(a + b - b*sech(c + d*x)^2)^2) + ((7*a - 4*b)*b*sech(c + d*x))/(8*(a + b)^4*d*(a + b - b*sech(c + d*x)^2))]
    @test_int [sinh(c + d*x)^2/(a + b*tanh(c + d*x)^2)^3, x, 7, -(((a - 5*b)*x)/(2*(a + b)^4)) - (sqrt(b)*(15*a^2 - 10*a*b - b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(3/2)*(a + b)^4*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) - (3*b*tanh(c + d*x))/(4*(a + b)^2*d*(a + b*tanh(c + d*x)^2)^2) - ((11*a - b)*b*tanh(c + d*x))/(8*a*(a + b)^3*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^1/(a + b*tanh(c + d*x)^2)^3, x, 5, -((15*sqrt(b)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(8*(a + b)^(7/2)*d)) + (15*cosh(c + d*x))/(8*(a + b)^3*d) - cosh(c + d*x)/(4*(a + b)*d*(a + b - b*sech(c + d*x)^2)^2) - (5*cosh(c + d*x))/(8*(a + b)^2*d*(a + b - b*sech(c + d*x)^2))]
    @test_int [csch(c + d*x)^1/(a + b*tanh(c + d*x)^2)^3, x, 6, -(atanh(cosh(c + d*x))/(a^3*d)) + (sqrt(b)*(15*a^2 + 20*a*b + 8*b^2)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(8*a^3*(a + b)^(5/2)*d) + (b*sech(c + d*x))/(4*a*(a + b)*d*(a + b - b*sech(c + d*x)^2)^2) + (b*(7*a + 4*b)*sech(c + d*x))/(8*a^2*(a + b)^2*d*(a + b - b*sech(c + d*x)^2))]
    @test_int [csch(c + d*x)^2/(a + b*tanh(c + d*x)^2)^3, x, 5, (-15*sqrt(b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(7/2)*d) - (15*coth(c + d*x))/(8*a^3*d) + coth(c + d*x)/(4*a*d*(a + b*tanh(c + d*x)^2)^2) + (5*coth(c + d*x))/(8*a^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [csch(c + d*x)^3/(a + b*tanh(c + d*x)^2)^3, x, 7, ((a + 6*b)*atanh(cosh(c + d*x)))/(2*a^4*d) - (sqrt(b)*(15*a^2 + 40*a*b + 24*b^2)*atanh((sqrt(b)*sech(c + d*x))/sqrt(a + b)))/(8*a^4*(a + b)^(3/2)*d) - (coth(c + d*x)*csch(c + d*x))/(2*a*d*(a + b - b*sech(c + d*x)^2)^2) - (3*b*sech(c + d*x))/(4*a^2*d*(a + b - b*sech(c + d*x)^2)^2) - (b*(11*a + 12*b)*sech(c + d*x))/(8*a^3*(a + b)*d*(a + b - b*sech(c + d*x)^2))]
    @test_int [csch(c + d*x)^4/(a + b*tanh(c + d*x)^2)^3, x, 6, (5*sqrt(b)*(3*a + 7*b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(9/2)*d) + ((a + 3*b)*coth(c + d*x))/(a^4*d) - coth(c + d*x)^3/(3*a^3*d) + (b*(a + b)*tanh(c + d*x))/(4*a^3*d*(a + b*tanh(c + d*x)^2)^2) + (b*(7*a + 11*b)*tanh(c + d*x))/(8*a^4*d*(a + b*tanh(c + d*x)^2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*tanh(e+f*x)^3)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sinh(c + d*x)^4*(a + b*tanh(c + d*x)^3), x, 8, -((3*(a + 8*b)*log(1 - tanh(c + d*x)))/(16*d)) + (3*(a - 8*b)*log(1 + tanh(c + d*x)))/(16*d) - (3*a*tanh(c + d*x))/(8*d) - (3*b*tanh(c + d*x)^2)/(2*d) + (sinh(c + d*x)^4*(b + a*tanh(c + d*x)))/(4*d) - (sinh(c + d*x)^2*tanh(c + d*x)*(a + 8*b*tanh(c + d*x)))/(8*d)]
    @test_int [sinh(c + d*x)^3*(a + b*tanh(c + d*x)^3), x, 9, (5*b*atan(sinh(c + d*x)))/(2*d) - (a*cosh(c + d*x))/d + (a*cosh(c + d*x)^3)/(3*d) - (5*b*sinh(c + d*x))/(2*d) + (5*b*sinh(c + d*x)^3)/(6*d) - (b*sinh(c + d*x)^3*tanh(c + d*x)^2)/(2*d)]
    @test_int [sinh(c + d*x)^2*(a + b*tanh(c + d*x)^3), x, 7, ((a + 4*b)*log(1 - tanh(c + d*x)))/(4*d) - ((a - 4*b)*log(1 + tanh(c + d*x)))/(4*d) + (a*tanh(c + d*x))/(2*d) + (b*tanh(c + d*x)^2)/(2*d) + (sinh(c + d*x)^2*(b + a*tanh(c + d*x)))/(2*d)]
    @test_int [sinh(c + d*x)^1*(a + b*tanh(c + d*x)^3), x, 7, (-3*b*atan(sinh(c + d*x)))/(2*d) + (a*cosh(c + d*x))/d + (3*b*sinh(c + d*x))/(2*d) - (b*sinh(c + d*x)*tanh(c + d*x)^2)/(2*d)]
    @test_int [csch(c + d*x)^1*(a + b*tanh(c + d*x)^3), x, 5, (b*atan(sinh(c + d*x)))/(2*d) - (a*atanh(cosh(c + d*x)))/d - (b*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^2*(a + b*tanh(c + d*x)^3), x, 3, -((a*coth(c + d*x))/d) + (b*tanh(c + d*x)^2)/(2*d)]
    @test_int [csch(c + d*x)^3*(a + b*tanh(c + d*x)^3), x, 6, (b*atan(sinh(c + d*x)))/(2*d) + (a*atanh(cosh(c + d*x)))/(2*d) - (a*coth(c + d*x)*csch(c + d*x))/(2*d) + (b*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*tanh(c + d*x)^3), x, 3, (a*coth(c + d*x))/d - (a*coth(c + d*x)^3)/(3*d) + (b*log(tanh(c + d*x)))/d - (b*tanh(c + d*x)^2)/(2*d)]


    @test_int [sinh(c + d*x)^4*(a + b*tanh(c + d*x)^3)^2, x, 8, (3/8)*(a^2 + 21*b^2)*x + (6*a*b*log(cosh(c + d*x)))/d - (6*b^2*tanh(c + d*x))/d - (a*b*tanh(c + d*x)^2)/d - (b^2*tanh(c + d*x)^3)/d - (b^2*tanh(c + d*x)^5)/(5*d) + (cosh(c + d*x)^3*sinh(c + d*x)*(a^2 + b^2 + 2*a*b*tanh(c + d*x)))/(4*d) - (cosh(c + d*x)*sinh(c + d*x)*(5*a^2 + 17*b^2 + 20*a*b*tanh(c + d*x)))/(8*d), -((3*(a^2 + 16*a*b + 21*b^2)*log(1 - tanh(c + d*x)))/(16*d)) + (3*(a^2 - 16*a*b + 21*b^2)*log(1 + tanh(c + d*x)))/(16*d) - (3*(a^2 + 21*b^2)*tanh(c + d*x))/(8*d) - (3*a*b*tanh(c + d*x)^2)/d - (b^2*tanh(c + d*x)^3)/d - (b^2*tanh(c + d*x)^5)/(5*d) - (sinh(c + d*x)^2*tanh(c + d*x)*(a^2 + 13*b^2 + 16*a*b*tanh(c + d*x)))/(8*d) + (sinh(c + d*x)^4*(2*a*b + (a^2 + b^2)*tanh(c + d*x)))/(4*d)]
    @test_int [sinh(c + d*x)^3*(a + b*tanh(c + d*x)^3)^2, x, 12, (5*a*b*atan(sinh(c + d*x)))/d - (a^2*cosh(c + d*x))/d - (4*b^2*cosh(c + d*x))/d + (a^2*cosh(c + d*x)^3)/(3*d) + (b^2*cosh(c + d*x)^3)/(3*d) - (6*b^2*sech(c + d*x))/d + (4*b^2*sech(c + d*x)^3)/(3*d) - (b^2*sech(c + d*x)^5)/(5*d) - (5*a*b*sinh(c + d*x))/d + (5*a*b*sinh(c + d*x)^3)/(3*d) - (a*b*sinh(c + d*x)^3*tanh(c + d*x)^2)/d]
    @test_int [sinh(c + d*x)^2*(a + b*tanh(c + d*x)^3)^2, x, 7, (-(1/2))*(a^2 + 7*b^2)*x - (4*a*b*log(cosh(c + d*x)))/d + (3*b^2*tanh(c + d*x))/d + (a*b*tanh(c + d*x)^2)/d + (2*b^2*tanh(c + d*x)^3)/(3*d) + (b^2*tanh(c + d*x)^5)/(5*d) + (cosh(c + d*x)*sinh(c + d*x)*(a^2 + b^2 + 2*a*b*tanh(c + d*x)))/(2*d), ((a + b)*(a + 7*b)*log(1 - tanh(c + d*x)))/(4*d) - ((a - 7*b)*(a - b)*log(1 + tanh(c + d*x)))/(4*d) + ((a^2 + 7*b^2)*tanh(c + d*x))/(2*d) + (a*b*tanh(c + d*x)^2)/d + (2*b^2*tanh(c + d*x)^3)/(3*d) + (b^2*tanh(c + d*x)^5)/(5*d) + (sinh(c + d*x)^2*(2*a*b + (a^2 + b^2)*tanh(c + d*x)))/(2*d)]
    @test_int [sinh(c + d*x)^1*(a + b*tanh(c + d*x)^3)^2, x, 10, (-3*a*b*atan(sinh(c + d*x)))/d + (a^2*cosh(c + d*x))/d + (b^2*cosh(c + d*x))/d + (3*b^2*sech(c + d*x))/d - (b^2*sech(c + d*x)^3)/d + (b^2*sech(c + d*x)^5)/(5*d) + (3*a*b*sinh(c + d*x))/d - (a*b*sinh(c + d*x)*tanh(c + d*x)^2)/d]
    @test_int [csch(c + d*x)^1*(a + b*tanh(c + d*x)^3)^2, x, 8, (a*b*atan(sinh(c + d*x)))/d - (a^2*atanh(cosh(c + d*x)))/d - (b^2*sech(c + d*x))/d + (2*b^2*sech(c + d*x)^3)/(3*d) - (b^2*sech(c + d*x)^5)/(5*d) - (a*b*sech(c + d*x)*tanh(c + d*x))/d]
    @test_int [csch(c + d*x)^2*(a + b*tanh(c + d*x)^3)^2, x, 3, -((a^2*coth(c + d*x))/d) + (a*b*tanh(c + d*x)^2)/d + (b^2*tanh(c + d*x)^5)/(5*d)]
    @test_int [csch(c + d*x)^3*(a + b*tanh(c + d*x)^3)^2, x, 9, (a*b*atan(sinh(c + d*x)))/d + (a^2*atanh(cosh(c + d*x)))/(2*d) - (a^2*coth(c + d*x)*csch(c + d*x))/(2*d) - (b^2*sech(c + d*x)^3)/(3*d) + (b^2*sech(c + d*x)^5)/(5*d) + (a*b*sech(c + d*x)*tanh(c + d*x))/d]
    @test_int [csch(c + d*x)^4*(a + b*tanh(c + d*x)^3)^2, x, 3, (a^2*coth(c + d*x))/d - (a^2*coth(c + d*x)^3)/(3*d) + (2*a*b*log(tanh(c + d*x)))/d - (a*b*tanh(c + d*x)^2)/d + (b^2*tanh(c + d*x)^3)/(3*d) - (b^2*tanh(c + d*x)^5)/(5*d)]


    @test_int [sinh(c + d*x)^4*(a + b*tanh(c + d*x)^3)^3, x, 8, (3/8)*a*(a^2 + 63*b^2)*x + (3*b*(3*a^2 + 5*b^2)*log(cosh(c + d*x)))/d - (18*a*b^2*tanh(c + d*x))/d - (b*(3*a^2 + 10*b^2)*tanh(c + d*x)^2)/(2*d) - (3*a*b^2*tanh(c + d*x)^3)/d - (3*b^3*tanh(c + d*x)^4)/(2*d) - (3*a*b^2*tanh(c + d*x)^5)/(5*d) - (b^3*tanh(c + d*x)^6)/(2*d) - (b^3*tanh(c + d*x)^8)/(8*d) + (cosh(c + d*x)^3*sinh(c + d*x)*(a*(a^2 + 3*b^2) + b*(3*a^2 + b^2)*tanh(c + d*x)))/(4*d) - (cosh(c + d*x)*sinh(c + d*x)*(a*(5*a^2 + 51*b^2) + 2*b*(15*a^2 + 11*b^2)*tanh(c + d*x)))/(8*d), -((3*(a + b)*(a^2 + 23*a*b + 40*b^2)*log(1 - tanh(c + d*x)))/(16*d)) + (3*(a - b)*(a^2 - 23*a*b + 40*b^2)*log(1 + tanh(c + d*x)))/(16*d) - (3*a*(a^2 + 63*b^2)*tanh(c + d*x))/(8*d) - (3*b*(3*a^2 + 5*b^2)*tanh(c + d*x)^2)/(2*d) - (3*a*b^2*tanh(c + d*x)^3)/d - (3*b^3*tanh(c + d*x)^4)/(2*d) - (3*a*b^2*tanh(c + d*x)^5)/(5*d) - (b^3*tanh(c + d*x)^6)/(2*d) - (b^3*tanh(c + d*x)^8)/(8*d) + (sinh(c + d*x)^4*(b*(3*a^2 + b^2) + a*(a^2 + 3*b^2)*tanh(c + d*x)))/(4*d) - (sinh(c + d*x)^2*tanh(c + d*x)*(a*(a^2 + 39*b^2) + 4*b*(6*a^2 + 5*b^2)*tanh(c + d*x)))/(8*d)]
    @test_int [sinh(c + d*x)^3*(a + b*tanh(c + d*x)^3)^3, x, 20, (15*a^2*b*atan(sinh(c + d*x)))/(2*d) + (1155*b^3*atan(sinh(c + d*x)))/(128*d) - (a^3*cosh(c + d*x))/d - (12*a*b^2*cosh(c + d*x))/d + (a^3*cosh(c + d*x)^3)/(3*d) + (a*b^2*cosh(c + d*x)^3)/d - (18*a*b^2*sech(c + d*x))/d + (4*a*b^2*sech(c + d*x)^3)/d - (3*a*b^2*sech(c + d*x)^5)/(5*d) - (15*a^2*b*sinh(c + d*x))/(2*d) - (1155*b^3*sinh(c + d*x))/(128*d) + (5*a^2*b*sinh(c + d*x)^3)/(2*d) + (385*b^3*sinh(c + d*x)^3)/(128*d) - (3*a^2*b*sinh(c + d*x)^3*tanh(c + d*x)^2)/(2*d) - (231*b^3*sinh(c + d*x)^3*tanh(c + d*x)^2)/(128*d) - (33*b^3*sinh(c + d*x)^3*tanh(c + d*x)^4)/(64*d) - (11*b^3*sinh(c + d*x)^3*tanh(c + d*x)^6)/(48*d) - (b^3*sinh(c + d*x)^3*tanh(c + d*x)^8)/(8*d)]
    @test_int [sinh(c + d*x)^2*(a + b*tanh(c + d*x)^3)^3, x, 7, (-(1/2))*a*(a^2 + 21*b^2)*x - (b*(6*a^2 + 5*b^2)*log(cosh(c + d*x)))/d + (9*a*b^2*tanh(c + d*x))/d + (b*(3*a^2 + 4*b^2)*tanh(c + d*x)^2)/(2*d) + (2*a*b^2*tanh(c + d*x)^3)/d + (3*b^3*tanh(c + d*x)^4)/(4*d) + (3*a*b^2*tanh(c + d*x)^5)/(5*d) + (b^3*tanh(c + d*x)^6)/(3*d) + (b^3*tanh(c + d*x)^8)/(8*d) + (cosh(c + d*x)*sinh(c + d*x)*(a*(a^2 + 3*b^2) + b*(3*a^2 + b^2)*tanh(c + d*x)))/(2*d), ((a + b)^2*(a + 10*b)*log(1 - tanh(c + d*x)))/(4*d) - ((a - 10*b)*(a - b)^2*log(1 + tanh(c + d*x)))/(4*d) + (a*(a^2 + 21*b^2)*tanh(c + d*x))/(2*d) + (b*(3*a^2 + 4*b^2)*tanh(c + d*x)^2)/(2*d) + (2*a*b^2*tanh(c + d*x)^3)/d + (3*b^3*tanh(c + d*x)^4)/(4*d) + (3*a*b^2*tanh(c + d*x)^5)/(5*d) + (b^3*tanh(c + d*x)^6)/(3*d) + (b^3*tanh(c + d*x)^8)/(8*d) + (sinh(c + d*x)^2*(b*(3*a^2 + b^2) + a*(a^2 + 3*b^2)*tanh(c + d*x)))/(2*d)]
    @test_int [sinh(c + d*x)^1*(a + b*tanh(c + d*x)^3)^3, x, 17, (-9*a^2*b*atan(sinh(c + d*x)))/(2*d) - (315*b^3*atan(sinh(c + d*x)))/(128*d) + (a^3*cosh(c + d*x))/d + (3*a*b^2*cosh(c + d*x))/d + (9*a*b^2*sech(c + d*x))/d - (3*a*b^2*sech(c + d*x)^3)/d + (3*a*b^2*sech(c + d*x)^5)/(5*d) + (9*a^2*b*sinh(c + d*x))/(2*d) + (315*b^3*sinh(c + d*x))/(128*d) - (3*a^2*b*sinh(c + d*x)*tanh(c + d*x)^2)/(2*d) - (105*b^3*sinh(c + d*x)*tanh(c + d*x)^2)/(128*d) - (21*b^3*sinh(c + d*x)*tanh(c + d*x)^4)/(64*d) - (3*b^3*sinh(c + d*x)*tanh(c + d*x)^6)/(16*d) - (b^3*sinh(c + d*x)*tanh(c + d*x)^8)/(8*d)]
    @test_int [csch(c + d*x)^1*(a + b*tanh(c + d*x)^3)^3, x, 13, (3*a^2*b*atan(sinh(c + d*x)))/(2*d) + (35*b^3*atan(sinh(c + d*x)))/(128*d) - (a^3*atanh(cosh(c + d*x)))/d - (3*a*b^2*sech(c + d*x))/d + (2*a*b^2*sech(c + d*x)^3)/d - (3*a*b^2*sech(c + d*x)^5)/(5*d) - (3*a^2*b*sech(c + d*x)*tanh(c + d*x))/(2*d) - (35*b^3*sech(c + d*x)*tanh(c + d*x))/(128*d) - (35*b^3*sech(c + d*x)*tanh(c + d*x)^3)/(192*d) - (7*b^3*sech(c + d*x)*tanh(c + d*x)^5)/(48*d) - (b^3*sech(c + d*x)*tanh(c + d*x)^7)/(8*d)]
    @test_int [csch(c + d*x)^2*(a + b*tanh(c + d*x)^3)^3, x, 3, -((a^3*coth(c + d*x))/d) + (3*a^2*b*tanh(c + d*x)^2)/(2*d) + (3*a*b^2*tanh(c + d*x)^5)/(5*d) + (b^3*tanh(c + d*x)^8)/(8*d)]
    @test_int [csch(c + d*x)^3*(a + b*tanh(c + d*x)^3)^3, x, 14, (3*a^2*b*atan(sinh(c + d*x)))/(2*d) + (5*b^3*atan(sinh(c + d*x)))/(128*d) + (a^3*atanh(cosh(c + d*x)))/(2*d) - (a^3*coth(c + d*x)*csch(c + d*x))/(2*d) - (a*b^2*sech(c + d*x)^3)/d + (3*a*b^2*sech(c + d*x)^5)/(5*d) + (3*a^2*b*sech(c + d*x)*tanh(c + d*x))/(2*d) + (5*b^3*sech(c + d*x)*tanh(c + d*x))/(128*d) - (5*b^3*sech(c + d*x)^3*tanh(c + d*x))/(64*d) - (5*b^3*sech(c + d*x)^3*tanh(c + d*x)^3)/(48*d) - (b^3*sech(c + d*x)^3*tanh(c + d*x)^5)/(8*d)]
    @test_int [csch(c + d*x)^4*(a + b*tanh(c + d*x)^3)^3, x, 3, (a^3*coth(c + d*x))/d - (a^3*coth(c + d*x)^3)/(3*d) + (3*a^2*b*log(tanh(c + d*x)))/d - (3*a^2*b*tanh(c + d*x)^2)/(2*d) + (a*b^2*tanh(c + d*x)^3)/d - (3*a*b^2*tanh(c + d*x)^5)/(5*d) + (b^3*tanh(c + d*x)^6)/(6*d) - (b^3*tanh(c + d*x)^8)/(8*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sinh(c + d*x)^4/(a + b*tanh(c + d*x)^3), x, 11, -((a^(2/3)*b^(1/3)*(a^2 + 3*a^(4/3)*b^(2/3) - b^2)*atan((a^(1/3) - 2*b^(1/3)*tanh(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*(a^(4/3) + a^(2/3)*b^(2/3) + b^(4/3))^3*d)) - (3*a*(a - 5*b)*log(1 - tanh(c + d*x)))/(16*(a + b)^3*d) + (3*a*(a + 5*b)*log(1 + tanh(c + d*x)))/(16*(a - b)^3*d) - (a^(2/3)*b^(1/3)*(a^4 + 7*a^2*b^2 + b^4 + 3*a^(2/3)*b^(4/3)*(2*a^2 + b^2))*log(a^(1/3) + b^(1/3)*tanh(c + d*x)))/(3*(a^2 - b^2)^3*d) + (a^(2/3)*b^(1/3)*(a^4 + 7*a^2*b^2 + b^4 + 3*a^(2/3)*b^(4/3)*(2*a^2 + b^2))*log(a^(2/3) - a^(1/3)*b^(1/3)*tanh(c + d*x) + b^(2/3)*tanh(c + d*x)^2))/(6*(a^2 - b^2)^3*d) - (a^2*b*(a^2 + 2*b^2)*log(a + b*tanh(c + d*x)^3))/((a^2 - b^2)^3*d) + 1/(16*(a + b)*d*(1 - tanh(c + d*x))^2) - (5*a - b)/(16*(a + b)^2*d*(1 - tanh(c + d*x))) - 1/(16*(a - b)*d*(1 + tanh(c + d*x))^2) + (5*a + b)/(16*(a - b)^2*d*(1 + tanh(c + d*x)))]
    @test_int [sinh(c + d*x)^3/(a + b*tanh(c + d*x)^3), x, 0, im*Unintegrable(((-im)*sinh(c + d*x)^3)/(a + b*tanh(c + d*x)^3), x)]
    @test_int [sinh(c + d*x)^2/(a + b*tanh(c + d*x)^3), x, 11, (a^(2/3)*b^(1/3)*(a^2 - 3*a^(2/3)*b^(4/3) + 2*b^2)*atan((a^(1/3) - 2*b^(1/3)*tanh(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*(a^2 - b^2)^2*d) + ((a - 2*b)*log(1 - tanh(c + d*x)))/(4*(a + b)^2*d) - ((a + 2*b)*log(1 + tanh(c + d*x)))/(4*(a - b)^2*d) + (a^(2/3)*b^(1/3)*(a^2 + 3*a^(2/3)*b^(4/3) + 2*b^2)*log(a^(1/3) + b^(1/3)*tanh(c + d*x)))/(3*(a^2 - b^2)^2*d) - (a^(2/3)*b^(1/3)*(a^2 + 3*a^(2/3)*b^(4/3) + 2*b^2)*log(a^(2/3) - a^(1/3)*b^(1/3)*tanh(c + d*x) + b^(2/3)*tanh(c + d*x)^2))/(6*(a^2 - b^2)^2*d) + (b*(2*a^2 + b^2)*log(a + b*tanh(c + d*x)^3))/(3*(a^2 - b^2)^2*d) + 1/(4*(a + b)*d*(1 - tanh(c + d*x))) - 1/(4*(a - b)*d*(1 + tanh(c + d*x)))]
    @test_int [sinh(c + d*x)^1/(a + b*tanh(c + d*x)^3), x, 0, (-im)*Unintegrable((im*sinh(c + d*x))/(a + b*tanh(c + d*x)^3), x)]
    @test_int [csch(c + d*x)^1/(a + b*tanh(c + d*x)^3), x, 0, im*Unintegrable(((-im)*csch(c + d*x))/(a + b*tanh(c + d*x)^3), x)]
    @test_int [csch(c + d*x)^2/(a + b*tanh(c + d*x)^3), x, 8, (b^(1/3)*atan((a^(1/3) - 2*b^(1/3)*tanh(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(4/3)*d) - coth(c + d*x)/(a*d) + (b^(1/3)*log(a^(1/3) + b^(1/3)*tanh(c + d*x)))/(3*a^(4/3)*d) - (b^(1/3)*log(a^(2/3) - a^(1/3)*b^(1/3)*tanh(c + d*x) + b^(2/3)*tanh(c + d*x)^2))/(6*a^(4/3)*d)]
    @test_int [csch(c + d*x)^3/(a + b*tanh(c + d*x)^3), x, 0, (-im)*Unintegrable((im*csch(c + d*x)^3)/(a + b*tanh(c + d*x)^3), x)]
    @test_int [csch(c + d*x)^4/(a + b*tanh(c + d*x)^3), x, 12, -((b^(1/3)*atan((a^(1/3) - 2*b^(1/3)*tanh(c + d*x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(4/3)*d)) + coth(c + d*x)/(a*d) - coth(c + d*x)^3/(3*a*d) - (b*log(tanh(c + d*x)))/(a^2*d) - (b^(1/3)*log(a^(1/3) + b^(1/3)*tanh(c + d*x)))/(3*a^(4/3)*d) + (b^(1/3)*log(a^(2/3) - a^(1/3)*b^(1/3)*tanh(c + d*x) + b^(2/3)*tanh(c + d*x)^2))/(6*a^(4/3)*d) + (b*log(a + b*tanh(c + d*x)^3))/(3*a^2*d)]


    #= ::Section:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*tanh(e+f*x)^4)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*tanh(e+f*x)^n)^p=#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*tanh(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*tanh(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cosh(c + d*x)^4*(a + b*tanh(c + d*x)^2), x, 4, (1/8)*(3*a - b)*x + ((3*a - b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) + ((a + b)*cosh(c + d*x)^3*sinh(c + d*x))/(4*d)]
    @test_int [cosh(c + d*x)^3*(a + b*tanh(c + d*x)^2), x, 2, (a*sinh(c + d*x))/d + ((a + b)*sinh(c + d*x)^3)/(3*d)]
    @test_int [cosh(c + d*x)^2*(a + b*tanh(c + d*x)^2), x, 3, (1/2)*(a - b)*x + ((a + b)*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [cosh(c + d*x)^1*(a + b*tanh(c + d*x)^2), x, 3, -((b*atan(sinh(c + d*x)))/d) + ((a + b)*sinh(c + d*x))/d]
    @test_int [sech(c + d*x)^1*(a + b*tanh(c + d*x)^2), x, 3, ((2*a + b)*atan(sinh(c + d*x)))/(2*d) - (b*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [sech(c + d*x)^2*(a + b*tanh(c + d*x)^2), x, 2, (a*tanh(c + d*x))/d + (b*tanh(c + d*x)^3)/(3*d)]
    @test_int [sech(c + d*x)^3*(a + b*tanh(c + d*x)^2), x, 4, ((4*a + b)*atan(sinh(c + d*x)))/(8*d) + ((4*a + b)*sech(c + d*x)*tanh(c + d*x))/(8*d) - (b*sech(c + d*x)^3*tanh(c + d*x))/(4*d)]
    @test_int [sech(c + d*x)^4*(a + b*tanh(c + d*x)^2), x, 3, (a*tanh(c + d*x))/d - ((a - b)*tanh(c + d*x)^3)/(3*d) - (b*tanh(c + d*x)^5)/(5*d)]


    @test_int [cosh(c + d*x)^4*(a + b*tanh(c + d*x)^2)^2, x, 4, (1/8)*(3*a^2 - 2*a*b + 3*b^2)*x + (3*(a^2 - b^2)*cosh(c + d*x)*sinh(c + d*x))/(8*d) + ((a + b)*cosh(c + d*x)^3*sinh(c + d*x)*(a + b*tanh(c + d*x)^2))/(4*d)]
    @test_int [cosh(c + d*x)^3*(a + b*tanh(c + d*x)^2)^2, x, 4, (b^2*atan(sinh(c + d*x)))/d + ((a^2 - b^2)*sinh(c + d*x))/d + ((a + b)^2*sinh(c + d*x)^3)/(3*d)]
    @test_int [cosh(c + d*x)^2*(a + b*tanh(c + d*x)^2)^2, x, 5, (1/2)*(a - 3*b)*(a + b)*x + ((a + b)^2*cosh(c + d*x)*sinh(c + d*x))/(2*d) + (b^2*tanh(c + d*x))/d]
    @test_int [cosh(c + d*x)^1*(a + b*tanh(c + d*x)^2)^2, x, 5, -((b*(4*a + 3*b)*atan(sinh(c + d*x)))/(2*d)) + ((a + b)^2*sinh(c + d*x))/d + (b^2*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [sech(c + d*x)^1*(a + b*tanh(c + d*x)^2)^2, x, 4, ((8*a^2 + 8*a*b + 3*b^2)*atan(sinh(c + d*x)))/(8*d) - (3*b*(2*a + b)*sech(c + d*x)*tanh(c + d*x))/(8*d) - (b*sech(c + d*x)^3*(a + (a + b)*sinh(c + d*x)^2)*tanh(c + d*x))/(4*d)]
    @test_int [sech(c + d*x)^2*(a + b*tanh(c + d*x)^2)^2, x, 3, (a^2*tanh(c + d*x))/d + (2*a*b*tanh(c + d*x)^3)/(3*d) + (b^2*tanh(c + d*x)^5)/(5*d)]
    @test_int [sech(c + d*x)^3*(a + b*tanh(c + d*x)^2)^2, x, 5, ((8*a^2 + 4*a*b + b^2)*atan(sinh(c + d*x)))/(16*d) + ((8*a^2 + 4*a*b + b^2)*sech(c + d*x)*tanh(c + d*x))/(16*d) - (b*(8*a + 3*b)*sech(c + d*x)^3*tanh(c + d*x))/(24*d) - (b*sech(c + d*x)^5*(a + (a + b)*sinh(c + d*x)^2)*tanh(c + d*x))/(6*d)]
    @test_int [sech(c + d*x)^4*(a + b*tanh(c + d*x)^2)^2, x, 3, (a^2*tanh(c + d*x))/d - (a*(a - 2*b)*tanh(c + d*x)^3)/(3*d) - ((2*a - b)*b*tanh(c + d*x)^5)/(5*d) - (b^2*tanh(c + d*x)^7)/(7*d)]


    @test_int [cosh(c + d*x)^4*(a + b*tanh(c + d*x)^2)^3, x, 6, (3/8)*(a + b)*(a^2 - 2*a*b + 5*b^2)*x + (3*(a - 3*b)*(a + b)^2*cosh(c + d*x)*sinh(c + d*x))/(8*d) + ((a + b)^3*cosh(c + d*x)^3*sinh(c + d*x))/(4*d) - (b^3*tanh(c + d*x))/d]
    @test_int [cosh(c + d*x)^3*(a + b*tanh(c + d*x)^2)^3, x, 5, (b^2*(6*a + 5*b)*atan(sinh(c + d*x)))/(2*d) + ((a - 2*b)*(a + b)^2*sinh(c + d*x))/d + ((a + b)^3*sinh(c + d*x)^3)/(3*d) - (b^3*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [cosh(c + d*x)^2*(a + b*tanh(c + d*x)^2)^3, x, 5, (1/2)*(a - 5*b)*(a + b)^2*x + ((a + b)^3*cosh(c + d*x)*sinh(c + d*x))/(2*d) + (b^2*(3*a + 2*b)*tanh(c + d*x))/d + (b^3*tanh(c + d*x)^3)/(3*d)]
    @test_int [cosh(c + d*x)^1*(a + b*tanh(c + d*x)^2)^3, x, 6, -((3*b*(4*(a + b)^2 + (2*a + b)^2)*atan(sinh(c + d*x)))/(8*d)) + ((a + b)^3*sinh(c + d*x))/d + (3*b^2*(4*a + 3*b)*sech(c + d*x)*tanh(c + d*x))/(8*d) - (b^3*sech(c + d*x)^3*tanh(c + d*x))/(4*d)]
    @test_int [sech(c + d*x)^1*(a + b*tanh(c + d*x)^2)^3, x, 5, ((2*a + b)*(8*a^2 + 8*a*b + 5*b^2)*atan(sinh(c + d*x)))/(16*d) - (b*(44*a^2 + 44*a*b + 15*b^2)*sech(c + d*x)*tanh(c + d*x))/(48*d) - (5*b*(2*a + b)*sech(c + d*x)^3*(a + (a + b)*sinh(c + d*x)^2)*tanh(c + d*x))/(24*d) - (b*sech(c + d*x)^5*(a + (a + b)*sinh(c + d*x)^2)^2*tanh(c + d*x))/(6*d)]
    @test_int [sech(c + d*x)^2*(a + b*tanh(c + d*x)^2)^3, x, 3, (a^3*tanh(c + d*x))/d + (a^2*b*tanh(c + d*x)^3)/d + (3*a*b^2*tanh(c + d*x)^5)/(5*d) + (b^3*tanh(c + d*x)^7)/(7*d)]
    @test_int [sech(c + d*x)^3*(a + b*tanh(c + d*x)^2)^3, x, 6, ((64*a^3 + 48*a^2*b + 24*a*b^2 + 5*b^3)*atan(sinh(c + d*x)))/(128*d) + ((64*a^3 + 48*a^2*b + 24*a*b^2 + 5*b^3)*sech(c + d*x)*tanh(c + d*x))/(128*d) - (b*(72*a^2 + 52*a*b + 15*b^2)*sech(c + d*x)^3*tanh(c + d*x))/(192*d) - (b*(12*a + 5*b)*sech(c + d*x)^5*(a + (a + b)*sinh(c + d*x)^2)*tanh(c + d*x))/(48*d) - (b*sech(c + d*x)^7*(a + (a + b)*sinh(c + d*x)^2)^2*tanh(c + d*x))/(8*d)]
    @test_int [sech(c + d*x)^4*(a + b*tanh(c + d*x)^2)^3, x, 3, (a^3*tanh(c + d*x))/d - (a^2*(a - 3*b)*tanh(c + d*x)^3)/(3*d) - (3*a*(a - b)*b*tanh(c + d*x)^5)/(5*d) - ((3*a - b)*b^2*tanh(c + d*x)^7)/(7*d) - (b^3*tanh(c + d*x)^9)/(9*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cosh(c + d*x)^4/(a + b*tanh(c + d*x)^2), x, 6, ((3*a^2 + 10*a*b + 15*b^2)*x)/(8*(a + b)^3) + (b^(5/2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*(a + b)^3*d) + ((3*a + 7*b)*cosh(c + d*x)*sinh(c + d*x))/(8*(a + b)^2*d) + (cosh(c + d*x)^3*sinh(c + d*x))/(4*(a + b)*d)]
    @test_int [cosh(c + d*x)^3/(a + b*tanh(c + d*x)^2), x, 4, (b^2*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*(a + b)^(5/2)*d) + ((a + 2*b)*sinh(c + d*x))/((a + b)^2*d) + sinh(c + d*x)^3/(3*(a + b)*d)]
    @test_int [cosh(c + d*x)^2/(a + b*tanh(c + d*x)^2), x, 5, ((a + 3*b)*x)/(2*(a + b)^2) + (b^(3/2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*(a + b)^2*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*(a + b)*d)]
    @test_int [cosh(c + d*x)^1/(a + b*tanh(c + d*x)^2), x, 3, (b*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*(a + b)^(3/2)*d) + sinh(c + d*x)/((a + b)*d)]
    @test_int [sech(c + d*x)^1/(a + b*tanh(c + d*x)^2), x, 2, atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a))/(sqrt(a)*sqrt(a + b)*d)]
    @test_int [sech(c + d*x)^2/(a + b*tanh(c + d*x)^2), x, 2, atan((sqrt(b)*tanh(c + d*x))/sqrt(a))/(sqrt(a)*sqrt(b)*d)]
    @test_int [sech(c + d*x)^3/(a + b*tanh(c + d*x)^2), x, 4, -(atan(sinh(c + d*x))/(b*d)) + (sqrt(a + b)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*b*d)]
    @test_int [sech(c + d*x)^4/(a + b*tanh(c + d*x)^2), x, 3, ((a + b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*b^(3/2)*d) - tanh(c + d*x)/(b*d)]
    @test_int [sech(c + d*x)^5/(a + b*tanh(c + d*x)^2), x, 5, -(((2*a + 3*b)*atan(sinh(c + d*x)))/(2*b^2*d)) + ((a + b)^(3/2)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*b^2*d) - (sech(c + d*x)*tanh(c + d*x))/(2*b*d)]
    @test_int [sech(c + d*x)^6/(a + b*tanh(c + d*x)^2), x, 4, ((a + b)^2*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*b^(5/2)*d) - ((a + 2*b)*tanh(c + d*x))/(b^2*d) + tanh(c + d*x)^3/(3*b*d)]


    @test_int [cosh(c + d*x)^3/(a + b*tanh(c + d*x)^2)^2, x, 5, (b^2*(6*a + b)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a + b)^(7/2)*d) + ((a + 3*b)*sinh(c + d*x))/((a + b)^3*d) + sinh(c + d*x)^3/(3*(a + b)^2*d) + (b^3*sinh(c + d*x))/(2*a*(a + b)^3*d*(a + (a + b)*sinh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^2/(a + b*tanh(c + d*x)^2)^2, x, 6, ((a + 5*b)*x)/(2*(a + b)^3) + (b^(3/2)*(5*a + b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a + b)^3*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*(a + b)*d*(a + b*tanh(c + d*x)^2)) - ((a - b)*b*tanh(c + d*x))/(2*a*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^1/(a + b*tanh(c + d*x)^2)^2, x, 5, (b*(4*a + b)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a + b)^(5/2)*d) + sinh(c + d*x)/((a + b)^2*d) + (b^2*sinh(c + d*x))/(2*a*(a + b)^2*d*(a + (a + b)*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^1/(a + b*tanh(c + d*x)^2)^2, x, 3, ((2*a + b)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a + b)^(3/2)*d) + (b*sinh(c + d*x))/(2*a*(a + b)*d*(a + (a + b)*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^2/(a + b*tanh(c + d*x)^2)^2, x, 3, atan((sqrt(b)*tanh(c + d*x))/sqrt(a))/(2*a^(3/2)*sqrt(b)*d) + tanh(c + d*x)/(2*a*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^3/(a + b*tanh(c + d*x)^2)^2, x, 3, atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a))/(2*a^(3/2)*sqrt(a + b)*d) + sinh(c + d*x)/(2*a*d*(a + (a + b)*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^4/(a + b*tanh(c + d*x)^2)^2, x, 3, -((a - b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^(3/2)*d) + ((a + b)*tanh(c + d*x))/(2*a*b*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^5/(a + b*tanh(c + d*x)^2)^2, x, 5, atan(sinh(c + d*x))/(b^2*d) - ((2*a - b)*sqrt(a + b)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^2*d) + ((a + b)*sinh(c + d*x))/(2*a*b*d*(a + (a + b)*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^6/(a + b*tanh(c + d*x)^2)^2, x, 5, -(((3*a - b)*(a + b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^(5/2)*d)) + tanh(c + d*x)/(b^2*d) + ((a + b)^2*tanh(c + d*x))/(2*a*b^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^7/(a + b*tanh(c + d*x)^2)^2, x, 6, ((4*a + 5*b)*atan(sinh(c + d*x)))/(2*b^3*d) - ((4*a - b)*(a + b)^(3/2)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^3*d) + ((a + b)*(2*a + b)*sinh(c + d*x))/(2*a*b^2*d*(a + (a + b)*sinh(c + d*x)^2)) - (sech(c + d*x)*tanh(c + d*x))/(2*b*d*(a + (a + b)*sinh(c + d*x)^2))]


    @test_int [cosh(c + d*x)^2/(a + b*tanh(c + d*x)^2)^3, x, 7, ((a + 7*b)*x)/(2*(a + b)^4) + (b^(3/2)*(35*a^2 + 14*a*b + 3*b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a + b)^4*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) - ((2*a - b)*b*tanh(c + d*x))/(4*a*(a + b)^2*d*(a + b*tanh(c + d*x)^2)^2) - ((a - 3*b)*b*(4*a + b)*tanh(c + d*x))/(8*a^2*(a + b)^3*d*(a + b*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^1/(a + b*tanh(c + d*x)^2)^3, x, 6, (3*b*(8*a^2 + 4*a*b + b^2)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a + b)^(7/2)*d) + sinh(c + d*x)/((a + b)^3*d) + (b^3*sinh(c + d*x))/(4*a*(a + b)^3*d*(a + (a + b)*sinh(c + d*x)^2)^2) + (3*b^2*(4*a + b)*sinh(c + d*x))/(8*a^2*(a + b)^3*d*(a + (a + b)*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^1/(a + b*tanh(c + d*x)^2)^3, x, 4, ((8*a^2 + 8*a*b + 3*b^2)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a + b)^(5/2)*d) + (b*cosh(c + d*x)^2*sinh(c + d*x))/(4*a*(a + b)*d*(a + (a + b)*sinh(c + d*x)^2)^2) + (3*b*(2*a + b)*sinh(c + d*x))/(8*a^2*(a + b)^2*d*(a + (a + b)*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^2/(a + b*tanh(c + d*x)^2)^3, x, 4, (3*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*sqrt(b)*d) + tanh(c + d*x)/(4*a*d*(a + b*tanh(c + d*x)^2)^2) + (3*tanh(c + d*x))/(8*a^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^3/(a + b*tanh(c + d*x)^2)^3, x, 4, ((4*a + 3*b)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a + b)^(3/2)*d) + (b*sinh(c + d*x))/(4*a*(a + b)*d*(a + (a + b)*sinh(c + d*x)^2)^2) + ((4*a + 3*b)*sinh(c + d*x))/(8*a^2*(a + b)*d*(a + (a + b)*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^4/(a + b*tanh(c + d*x)^2)^3, x, 4, -((a - 3*b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*b^(3/2)*d) + ((a + b)*tanh(c + d*x))/(4*a*b*d*(a + b*tanh(c + d*x)^2)^2) - ((a - 3*b)*tanh(c + d*x))/(8*a^2*b*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^5/(a + b*tanh(c + d*x)^2)^3, x, 4, (3*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*sqrt(a + b)*d) + sinh(c + d*x)/(4*a*d*(a + (a + b)*sinh(c + d*x)^2)^2) + (3*sinh(c + d*x))/(8*a^2*d*(a + (a + b)*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^6/(a + b*tanh(c + d*x)^2)^3, x, 4, ((3*a^2 - 2*a*b + 3*b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*b^(5/2)*d) + ((a + b)*sech(c + d*x)^2*tanh(c + d*x))/(4*a*b*d*(a + b*tanh(c + d*x)^2)^2) + (3*(1/a^2 - 1/b^2)*tanh(c + d*x))/(8*d*(a + b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^7/(a + b*tanh(c + d*x)^2)^3, x, 6, -(atan(sinh(c + d*x))/(b^3*d)) + (sqrt(a + b)*(8*a^2 - 4*a*b + 3*b^2)*atan((sqrt(a + b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*b^3*d) + ((a + b)*sinh(c + d*x))/(4*a*b*d*(a + (a + b)*sinh(c + d*x)^2)^2) - ((4*a - 3*b)*(a + b)*sinh(c + d*x))/(8*a^2*b^2*d*(a + (a + b)*sinh(c + d*x)^2))]


    #= ::Section:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*tanh(e+f*x)^3)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*tanh(e+f*x)^4)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*tanh(e+f*x)^n)^p=#


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*tanh(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*tanh(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*tanh(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tanh(c + d*x)^4*(a + b*tanh(c + d*x)^2), x, 4, (a + b)*x - ((a + b)*tanh(c + d*x))/d - ((a + b)*tanh(c + d*x)^3)/(3*d) - (b*tanh(c + d*x)^5)/(5*d)]
    @test_int [tanh(c + d*x)^3*(a + b*tanh(c + d*x)^2), x, 3, ((a + b)*log(cosh(c + d*x)))/d - ((a + b)*tanh(c + d*x)^2)/(2*d) - (b*tanh(c + d*x)^4)/(4*d)]
    @test_int [tanh(c + d*x)^2*(a + b*tanh(c + d*x)^2), x, 3, (a + b)*x - ((a + b)*tanh(c + d*x))/d - (b*tanh(c + d*x)^3)/(3*d)]
    @test_int [tanh(c + d*x)^1*(a + b*tanh(c + d*x)^2), x, 2, ((a + b)*log(cosh(c + d*x)))/d - (b*tanh(c + d*x)^2)/(2*d)]
    @test_int [tanh(c + d*x)^0*(a + b*tanh(c + d*x)^2), x, 3, a*x + b*x - (b*tanh(c + d*x))/d]
    @test_int [coth(c + d*x)^1*(a + b*tanh(c + d*x)^2), x, 3, (b*log(cosh(c + d*x)))/d + (a*log(sinh(c + d*x)))/d]
    @test_int [coth(c + d*x)^2*(a + b*tanh(c + d*x)^2), x, 2, (a + b)*x - (a*coth(c + d*x))/d]
    @test_int [coth(c + d*x)^3*(a + b*tanh(c + d*x)^2), x, 3, -(a*coth(c + d*x)^2)/(2*d) + ((a + b)*log(sinh(c + d*x)))/d]
    @test_int [coth(c + d*x)^4*(a + b*tanh(c + d*x)^2), x, 4, (a + b)*x - ((a + b)*coth(c + d*x))/d - (a*coth(c + d*x)^3)/(3*d)]
    @test_int [coth(c + d*x)^5*(a + b*tanh(c + d*x)^2), x, 4, -(((a + b)*coth(c + d*x)^2)/(2*d)) - (a*coth(c + d*x)^4)/(4*d) + ((a + b)*log(sinh(c + d*x)))/d]


    @test_int [tanh(c + d*x)^4*(a + b*tanh(c + d*x)^2)^2, x, 4, (a + b)^2*x - ((a + b)^2*tanh(c + d*x))/d - ((a + b)^2*tanh(c + d*x)^3)/(3*d) - (b*(2*a + b)*tanh(c + d*x)^5)/(5*d) - (b^2*tanh(c + d*x)^7)/(7*d)]
    @test_int [tanh(c + d*x)^3*(a + b*tanh(c + d*x)^2)^2, x, 4, ((a + b)^2*log(cosh(c + d*x)))/d - ((a + b)^2*tanh(c + d*x)^2)/(2*d) - (b*(2*a + b)*tanh(c + d*x)^4)/(4*d) - (b^2*tanh(c + d*x)^6)/(6*d)]
    @test_int [tanh(c + d*x)^2*(a + b*tanh(c + d*x)^2)^2, x, 4, (a + b)^2*x - ((a + b)^2*tanh(c + d*x))/d - (b*(2*a + b)*tanh(c + d*x)^3)/(3*d) - (b^2*tanh(c + d*x)^5)/(5*d)]
    @test_int [tanh(c + d*x)^1*(a + b*tanh(c + d*x)^2)^2, x, 4, ((a + b)^2*log(cosh(c + d*x)))/d - (b*(a + b)*tanh(c + d*x)^2)/(2*d) - (a + b*tanh(c + d*x)^2)^2/(4*d)]
    @test_int [tanh(c + d*x)^0*(a + b*tanh(c + d*x)^2)^2, x, 4, (a + b)^2*x - (b*(2*a + b)*tanh(c + d*x))/d - (b^2*tanh(c + d*x)^3)/(3*d)]
    @test_int [coth(c + d*x)^1*(a + b*tanh(c + d*x)^2)^2, x, 4, ((a + b)^2*log(cosh(c + d*x)))/d + (a^2*log(tanh(c + d*x)))/d - (b^2*tanh(c + d*x)^2)/(2*d)]
    @test_int [coth(c + d*x)^2*(a + b*tanh(c + d*x)^2)^2, x, 4, (a + b)^2*x - (a^2*coth(c + d*x))/d - (b^2*tanh(c + d*x))/d]
    @test_int [coth(c + d*x)^3*(a + b*tanh(c + d*x)^2)^2, x, 4, -((a^2*coth(c + d*x)^2)/(2*d)) + ((a + b)^2*log(cosh(c + d*x)))/d + (a*(a + 2*b)*log(tanh(c + d*x)))/d]
    @test_int [coth(c + d*x)^4*(a + b*tanh(c + d*x)^2)^2, x, 4, (a + b)^2*x - (a*(a + 2*b)*coth(c + d*x))/d - (a^2*coth(c + d*x)^3)/(3*d)]
    @test_int [coth(c + d*x)^5*(a + b*tanh(c + d*x)^2)^2, x, 4, -((a*(a + 2*b)*coth(c + d*x)^2)/(2*d)) - (a^2*coth(c + d*x)^4)/(4*d) + ((a + b)^2*log(cosh(c + d*x)))/d + ((a + b)^2*log(tanh(c + d*x)))/d]
    @test_int [coth(c + d*x)^6*(a + b*tanh(c + d*x)^2)^2, x, 4, (a + b)^2*x - ((a + b)^2*coth(c + d*x))/d - (a*(a + 2*b)*coth(c + d*x)^3)/(3*d) - (a^2*coth(c + d*x)^5)/(5*d)]
    @test_int [coth(c + d*x)^7*(a + b*tanh(c + d*x)^2)^2, x, 4, -(((a + b)^2*coth(c + d*x)^2)/(2*d)) - (a*(a + 2*b)*coth(c + d*x)^4)/(4*d) - (a^2*coth(c + d*x)^6)/(6*d) + ((a + b)^2*log(cosh(c + d*x)))/d + ((a + b)^2*log(tanh(c + d*x)))/d]


    @test_int [tanh(c + d*x)^4*(a + b*tanh(c + d*x)^2)^3, x, 4, (a + b)^3*x - ((a + b)^3*tanh(c + d*x))/d - ((a + b)^3*tanh(c + d*x)^3)/(3*d) - (b*(3*a^2 + 3*a*b + b^2)*tanh(c + d*x)^5)/(5*d) - (b^2*(3*a + b)*tanh(c + d*x)^7)/(7*d) - (b^3*tanh(c + d*x)^9)/(9*d)]
    @test_int [tanh(c + d*x)^3*(a + b*tanh(c + d*x)^2)^3, x, 4, ((a + b)^3*log(cosh(c + d*x)))/d - ((a + b)^3*tanh(c + d*x)^2)/(2*d) - (b*(3*a^2 + 3*a*b + b^2)*tanh(c + d*x)^4)/(4*d) - (b^2*(3*a + b)*tanh(c + d*x)^6)/(6*d) - (b^3*tanh(c + d*x)^8)/(8*d)]
    @test_int [tanh(c + d*x)^2*(a + b*tanh(c + d*x)^2)^3, x, 4, (a + b)^3*x - ((a + b)^3*tanh(c + d*x))/d - (b*(3*a^2 + 3*a*b + b^2)*tanh(c + d*x)^3)/(3*d) - (b^2*(3*a + b)*tanh(c + d*x)^5)/(5*d) - (b^3*tanh(c + d*x)^7)/(7*d)]
    @test_int [tanh(c + d*x)^1*(a + b*tanh(c + d*x)^2)^3, x, 4, ((a + b)^3*log(cosh(c + d*x)))/d - (b*(a + b)^2*tanh(c + d*x)^2)/(2*d) - ((a + b)*(a + b*tanh(c + d*x)^2)^2)/(4*d) - (a + b*tanh(c + d*x)^2)^3/(6*d)]
    @test_int [tanh(c + d*x)^0*(a + b*tanh(c + d*x)^2)^3, x, 4, (a + b)^3*x - (b*(3*a^2 + 3*a*b + b^2)*tanh(c + d*x))/d - (b^2*(3*a + b)*tanh(c + d*x)^3)/(3*d) - (b^3*tanh(c + d*x)^5)/(5*d)]
    @test_int [coth(c + d*x)^1*(a + b*tanh(c + d*x)^2)^3, x, 4, ((a + b)^3*log(cosh(c + d*x)))/d + (a^3*log(tanh(c + d*x)))/d - (b^2*(3*a + b)*tanh(c + d*x)^2)/(2*d) - (b^3*tanh(c + d*x)^4)/(4*d)]
    @test_int [coth(c + d*x)^2*(a + b*tanh(c + d*x)^2)^3, x, 4, (a + b)^3*x - (a^3*coth(c + d*x))/d - (b^2*(3*a + b)*tanh(c + d*x))/d - (b^3*tanh(c + d*x)^3)/(3*d)]
    @test_int [coth(c + d*x)^3*(a + b*tanh(c + d*x)^2)^3, x, 4, -((a^3*coth(c + d*x)^2)/(2*d)) + ((a + b)^3*log(cosh(c + d*x)))/d + (a^2*(a + 3*b)*log(tanh(c + d*x)))/d - (b^3*tanh(c + d*x)^2)/(2*d)]
    @test_int [coth(c + d*x)^4*(a + b*tanh(c + d*x)^2)^3, x, 4, (a + b)^3*x - (a^2*(a + 3*b)*coth(c + d*x))/d - (a^3*coth(c + d*x)^3)/(3*d) - (b^3*tanh(c + d*x))/d]
    @test_int [coth(c + d*x)^5*(a + b*tanh(c + d*x)^2)^3, x, 4, -((a^2*(a + 3*b)*coth(c + d*x)^2)/(2*d)) - (a^3*coth(c + d*x)^4)/(4*d) + ((a + b)^3*log(cosh(c + d*x)))/d + (a*(a^2 + 3*a*b + 3*b^2)*log(tanh(c + d*x)))/d]
    @test_int [coth(c + d*x)^6*(a + b*tanh(c + d*x)^2)^3, x, 4, (a + b)^3*x - (a*(a^2 + 3*a*b + 3*b^2)*coth(c + d*x))/d - (a^2*(a + 3*b)*coth(c + d*x)^3)/(3*d) - (a^3*coth(c + d*x)^5)/(5*d)]
    @test_int [coth(c + d*x)^7*(a + b*tanh(c + d*x)^2)^3, x, 4, -((a*(a^2 + 3*a*b + 3*b^2)*coth(c + d*x)^2)/(2*d)) - (a^2*(a + 3*b)*coth(c + d*x)^4)/(4*d) - (a^3*coth(c + d*x)^6)/(6*d) + ((a + b)^3*log(cosh(c + d*x)))/d + ((a + b)^3*log(tanh(c + d*x)))/d]


    @test_int [tanh(c + d*x)^0*(a + b*tanh(c + d*x)^2)^4, x, 4, (a + b)^4*x - (b*(2*a + b)*(2*a^2 + 2*a*b + b^2)*tanh(c + d*x))/d - (b^2*(6*a^2 + 4*a*b + b^2)*tanh(c + d*x)^3)/(3*d) - (b^3*(4*a + b)*tanh(c + d*x)^5)/(5*d) - (b^4*tanh(c + d*x)^7)/(7*d)]


    @test_int [tanh(c + d*x)^0*(a + b*tanh(c + d*x)^2)^5, x, 4, (a + b)^5*x - (b*(5*a^4 + 10*a^3*b + 10*a^2*b^2 + 5*a*b^3 + b^4)*tanh(c + d*x))/d - (b^2*(10*a^3 + 10*a^2*b + 5*a*b^2 + b^3)*tanh(c + d*x)^3)/(3*d) - (b^3*(10*a^2 + 5*a*b + b^2)*tanh(c + d*x)^5)/(5*d) - (b^4*(5*a + b)*tanh(c + d*x)^7)/(7*d) - (b^5*tanh(c + d*x)^9)/(9*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tanh(c + d*x)^5/(a + b*tanh(c + d*x)^2), x, 4, log(cosh(c + d*x))/((a + b)*d) + (a^2*log(a + b*tanh(c + d*x)^2))/(2*b^2*(a + b)*d) - tanh(c + d*x)^2/(2*b*d)]
    @test_int [tanh(c + d*x)^4/(a + b*tanh(c + d*x)^2), x, 5, x/(a + b) + (a^(3/2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(b^(3/2)*(a + b)*d) - tanh(c + d*x)/(b*d)]
    @test_int [tanh(c + d*x)^3/(a + b*tanh(c + d*x)^2), x, 4, log(cosh(c + d*x))/((a + b)*d) - (a*log(a + b*tanh(c + d*x)^2))/(2*b*(a + b)*d)]
    @test_int [tanh(c + d*x)^2/(a + b*tanh(c + d*x)^2), x, 4, x/(a + b) - (sqrt(a)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(sqrt(b)*(a + b)*d)]
    @test_int [tanh(c + d*x)^1/(a + b*tanh(c + d*x)^2), x, 5, log(cosh(c + d*x))/((a + b)*d) + log(a + b*tanh(c + d*x)^2)/(2*(a + b)*d)]
    @test_int [tanh(c + d*x)^0/(a + b*tanh(c + d*x)^2), x, 3, x/(a + b) + (sqrt(b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*(a + b)*d)]
    @test_int [coth(c + d*x)^1/(a + b*tanh(c + d*x)^2), x, 4, log(cosh(c + d*x))/((a + b)*d) + log(tanh(c + d*x))/(a*d) - (b*log(a + b*tanh(c + d*x)^2))/(2*a*(a + b)*d)]
    @test_int [coth(c + d*x)^2/(a + b*tanh(c + d*x)^2), x, 5, x/(a + b) - (b^(3/2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(a^(3/2)*(a + b)*d) - coth(c + d*x)/(a*d)]
    @test_int [coth(c + d*x)^3/(a + b*tanh(c + d*x)^2), x, 4, -(coth(c + d*x)^2/(2*a*d)) + log(cosh(c + d*x))/((a + b)*d) + ((a - b)*log(tanh(c + d*x)))/(a^2*d) + (b^2*log(a + b*tanh(c + d*x)^2))/(2*a^2*(a + b)*d)]
    @test_int [coth(c + d*x)^4/(a + b*tanh(c + d*x)^2), x, 6, x/(a + b) + (b^(5/2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(a^(5/2)*(a + b)*d) - ((a - b)*coth(c + d*x))/(a^2*d) - coth(c + d*x)^3/(3*a*d)]


    @test_int [tanh(c + d*x)^5/(a + b*tanh(c + d*x)^2)^2, x, 4, log(cosh(c + d*x))/((a + b)^2*d) - (a*(a + 2*b)*log(a + b*tanh(c + d*x)^2))/(2*b^2*(a + b)^2*d) - a^2/(2*b^2*(a + b)*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^4/(a + b*tanh(c + d*x)^2)^2, x, 5, x/(a + b)^2 - (sqrt(a)*(a + 3*b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*b^(3/2)*(a + b)^2*d) + (a*tanh(c + d*x))/(2*b*(a + b)*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^3/(a + b*tanh(c + d*x)^2)^2, x, 4, log(cosh(c + d*x))/((a + b)^2*d) + log(a + b*tanh(c + d*x)^2)/(2*(a + b)^2*d) + a/(2*b*(a + b)*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^2/(a + b*tanh(c + d*x)^2)^2, x, 5, x/(a + b)^2 - ((a - b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*sqrt(a)*sqrt(b)*(a + b)^2*d) - tanh(c + d*x)/(2*(a + b)*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^1/(a + b*tanh(c + d*x)^2)^2, x, 4, log(cosh(c + d*x))/((a + b)^2*d) + log(a + b*tanh(c + d*x)^2)/(2*(a + b)^2*d) - 1/(2*(a + b)*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^0/(a + b*tanh(c + d*x)^2)^2, x, 5, x/(a + b)^2 + (sqrt(b)*(3*a + b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a + b)^2*d) + (b*tanh(c + d*x))/(2*a*(a + b)*d*(a + b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^1/(a + b*tanh(c + d*x)^2)^2, x, 4, log(cosh(c + d*x))/((a + b)^2*d) + log(tanh(c + d*x))/(a^2*d) - (b*(2*a + b)*log(a + b*tanh(c + d*x)^2))/(2*a^2*(a + b)^2*d) + b/(2*a*(a + b)*d*(a + b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^2/(a + b*tanh(c + d*x)^2)^2, x, 6, x/(a + b)^2 - (b^(3/2)*(5*a + 3*b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*a^(5/2)*(a + b)^2*d) - ((2*a + 3*b)*coth(c + d*x))/(2*a^2*(a + b)*d) + (b*coth(c + d*x))/(2*a*(a + b)*d*(a + b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^3/(a + b*tanh(c + d*x)^2)^2, x, 4, -(coth(c + d*x)^2/(2*a^2*d)) + log(cosh(c + d*x))/((a + b)^2*d) + ((a - 2*b)*log(tanh(c + d*x)))/(a^3*d) + (b^2*(3*a + 2*b)*log(a + b*tanh(c + d*x)^2))/(2*a^3*(a + b)^2*d) - b^2/(2*a^2*(a + b)*d*(a + b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^4/(a + b*tanh(c + d*x)^2)^2, x, 7, x/(a + b)^2 + (b^(5/2)*(7*a + 5*b)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(2*a^(7/2)*(a + b)^2*d) - ((2*a^2 - 2*a*b - 5*b^2)*coth(c + d*x))/(2*a^3*(a + b)*d) - ((2*a + 5*b)*coth(c + d*x)^3)/(6*a^2*(a + b)*d) + (b*coth(c + d*x)^3)/(2*a*(a + b)*d*(a + b*tanh(c + d*x)^2))]


    @test_int [tanh(c + d*x)^6/(a + b*tanh(c + d*x)^2)^3, x, 6, x/(a + b)^3 - (sqrt(a)*(3*a^2 + 10*a*b + 15*b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*b^(5/2)*(a + b)^3*d) + (a*tanh(c + d*x)^3)/(4*b*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) + (a*(3*a + 7*b)*tanh(c + d*x))/(8*b^2*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^5/(a + b*tanh(c + d*x)^2)^3, x, 4, log(cosh(c + d*x))/((a + b)^3*d) + log(a + b*tanh(c + d*x)^2)/(2*(a + b)^3*d) - a^2/(4*b^2*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) + (a*(a + 2*b))/(2*b^2*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^4/(a + b*tanh(c + d*x)^2)^3, x, 6, x/(a + b)^3 - ((a^2 + 6*a*b - 3*b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*sqrt(a)*b^(3/2)*(a + b)^3*d) + (a*tanh(c + d*x))/(4*b*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) - ((a + 5*b)*tanh(c + d*x))/(8*b*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^3/(a + b*tanh(c + d*x)^2)^3, x, 4, log(cosh(c + d*x))/((a + b)^3*d) + log(a + b*tanh(c + d*x)^2)/(2*(a + b)^3*d) + a/(4*b*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) - 1/(2*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^2/(a + b*tanh(c + d*x)^2)^3, x, 6, x/(a + b)^3 - ((3*a^2 - 6*a*b - b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(3/2)*sqrt(b)*(a + b)^3*d) - tanh(c + d*x)/(4*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) - ((3*a - b)*tanh(c + d*x))/(8*a*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^1/(a + b*tanh(c + d*x)^2)^3, x, 4, log(cosh(c + d*x))/((a + b)^3*d) + log(a + b*tanh(c + d*x)^2)/(2*(a + b)^3*d) - 1/(4*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) - 1/(2*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^0/(a + b*tanh(c + d*x)^2)^3, x, 6, x/(a + b)^3 + (sqrt(b)*(15*a^2 + 10*a*b + 3*b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a + b)^3*d) + (b*tanh(c + d*x))/(4*a*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) + (b*(7*a + 3*b)*tanh(c + d*x))/(8*a^2*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^1/(a + b*tanh(c + d*x)^2)^3, x, 4, log(cosh(c + d*x))/((a + b)^3*d) + log(tanh(c + d*x))/(a^3*d) - (b*(3*a^2 + 3*a*b + b^2)*log(a + b*tanh(c + d*x)^2))/(2*a^3*(a + b)^3*d) + b/(4*a*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) + (b*(2*a + b))/(2*a^2*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^2/(a + b*tanh(c + d*x)^2)^3, x, 7, x/(a + b)^3 - (b^(3/2)*(35*a^2 + 42*a*b + 15*b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(7/2)*(a + b)^3*d) - ((8*a^2 + 27*a*b + 15*b^2)*coth(c + d*x))/(8*a^3*(a + b)^2*d) + (b*coth(c + d*x))/(4*a*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) + (b*(9*a + 5*b)*coth(c + d*x))/(8*a^2*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^3/(a + b*tanh(c + d*x)^2)^3, x, 4, -(coth(c + d*x)^2/(2*a^3*d)) + log(cosh(c + d*x))/((a + b)^3*d) + ((a - 3*b)*log(tanh(c + d*x)))/(a^4*d) + (b^2*(6*a^2 + 8*a*b + 3*b^2)*log(a + b*tanh(c + d*x)^2))/(2*a^4*(a + b)^3*d) - b^2/(4*a^2*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) - (b^2*(3*a + 2*b))/(2*a^3*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^4/(a + b*tanh(c + d*x)^2)^3, x, 8, x/(a + b)^3 + (b^(5/2)*(63*a^2 + 90*a*b + 35*b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(8*a^(9/2)*(a + b)^3*d) - ((8*a^3 - 8*a^2*b - 55*a*b^2 - 35*b^3)*coth(c + d*x))/(8*a^4*(a + b)^2*d) - ((8*a^2 + 55*a*b + 35*b^2)*coth(c + d*x)^3)/(24*a^3*(a + b)^2*d) + (b*coth(c + d*x)^3)/(4*a*(a + b)*d*(a + b*tanh(c + d*x)^2)^2) + (b*(11*a + 7*b)*coth(c + d*x)^3)/(8*a^2*(a + b)^2*d*(a + b*tanh(c + d*x)^2))]


    @test_int [tanh(c + d*x)^0/(a + b*tanh(c + d*x)^2)^4,x, 7, x/(a + b)^4 + (sqrt(b)*(35*a^3 + 35*a^2*b + 21*a*b^2 + 5*b^3)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a)))/(16*a^(7/2)*(a + b)^4*d) + (b*tanh(c + d*x))/(6*a*(a + b)*d*(a + b*tanh(c + d*x)^2)^3) + (b*(11*a + 5*b)*tanh(c + d*x))/(24*a^2*(a + b)^2*d*(a + b*tanh(c + d*x)^2)^2) + (b*(19*a^2 + 16*a*b + 5*b^2)*tanh(c + d*x))/(16*a^3*(a + b)^3*d*(a + b*tanh(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*tanh(e+f*x)^2)^(p/2)*when*a+b=0=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(1 - tanh(x)^2), x, 3, asin(tanh(x))]
    @test_int [sqrt(-1 + tanh(x)^2), x, 4, -atanh(tanh(x)/sqrt(-sech(x)^2))]


    @test_int [(1 - tanh(x)^2)^(3/2), x, 4, (1/2)*asin(tanh(x)) + (1/2)*sqrt(sech(x)^2)*tanh(x)]
    @test_int [(-1 + tanh(x)^2)^(3/2), x, 5, (1/2)*atanh(tanh(x)/sqrt(-sech(x)^2)) - (1/2)*sqrt(-sech(x)^2)*tanh(x)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/sqrt(1 - tanh(x)^2), x, 3, tanh(x)/sqrt(sech(x)^2)]
    @test_int [1/sqrt(-1 + tanh(x)^2), x, 3, tanh(x)/sqrt(-sech(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*tanh(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [tanh(x)^5*sqrt(a + b*tanh(x)^2), x, 7, sqrt(a + b)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b)) - sqrt(a + b*tanh(x)^2) + ((a - b)*(a + b*tanh(x)^2)^(3/2))/(3*b^2) - (a + b*tanh(x)^2)^(5/2)/(5*b^2)]
    @test_int [tanh(x)^4*sqrt(a + b*tanh(x)^2), x, 8, ((a^2 - 4*a*b - 8*b^2)*atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2)))/(8*b^(3/2)) + sqrt(a + b)*atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2)) - ((a + 4*b)*tanh(x)*sqrt(a + b*tanh(x)^2))/(8*b) - (1/4)*tanh(x)^3*sqrt(a + b*tanh(x)^2)]
    @test_int [tanh(x)^3*sqrt(a + b*tanh(x)^2), x, 6, sqrt(a + b)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b)) - sqrt(a + b*tanh(x)^2) - (a + b*tanh(x)^2)^(3/2)/(3*b)]
    @test_int [tanh(x)^2*sqrt(a + b*tanh(x)^2), x, 7, -(((a + 2*b)*atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2)))/(2*sqrt(b))) + sqrt(a + b)*atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2)) - (1/2)*tanh(x)*sqrt(a + b*tanh(x)^2)]
    @test_int [tanh(x)^1*sqrt(a + b*tanh(x)^2), x, 5, sqrt(a + b)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b)) - sqrt(a + b*tanh(x)^2)]
    @test_int [tanh(x)^0*sqrt(a + b*tanh(x)^2), x, 6, (-sqrt(b))*atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2)) + sqrt(a + b)*atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))]
    @test_int [coth(x)^1*sqrt(a + b*tanh(x)^2), x, 7, (-sqrt(a))*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a)) + sqrt(a + b)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))]
    @test_int [coth(x)^2*sqrt(a + b*tanh(x)^2), x, 5, sqrt(a + b)*atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2)) - coth(x)*sqrt(a + b*tanh(x)^2)]
    @test_int [coth(x)^3*sqrt(a + b*tanh(x)^2), x, 8, -(((2*a + b)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a)))/(2*sqrt(a))) + sqrt(a + b)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b)) - (1/2)*coth(x)^2*sqrt(a + b*tanh(x)^2)]
    @test_int [coth(x)^4*sqrt(a + b*tanh(x)^2), x, 6, sqrt(a + b)*atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2)) - ((3*a + b)*coth(x)*sqrt(a + b*tanh(x)^2))/(3*a) - (1/3)*coth(x)^3*sqrt(a + b*tanh(x)^2)]
    @test_int [coth(x)^5*sqrt(a + b*tanh(x)^2), x, 9, -(((8*a^2 + 4*a*b - b^2)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a)))/(8*a^(3/2))) + sqrt(a + b)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b)) - ((4*a + b)*coth(x)^2*sqrt(a + b*tanh(x)^2))/(8*a) - (1/4)*coth(x)^4*sqrt(a + b*tanh(x)^2)]


    @test_int [tanh(x)^3*(a + b*tanh(x)^2)^(3/2), x, 7, (a + b)^(3/2)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b)) - (a + b)*sqrt(a + b*tanh(x)^2) - (1/3)*(a + b*tanh(x)^2)^(3/2) - (a + b*tanh(x)^2)^(5/2)/(5*b)]
    @test_int [tanh(x)^2*(a + b*tanh(x)^2)^(3/2), x, 8, -(((3*a^2 + 12*a*b + 8*b^2)*atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2)))/(8*sqrt(b))) + (a + b)^(3/2)*atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2)) - (1/8)*(5*a + 4*b)*tanh(x)*sqrt(a + b*tanh(x)^2) - (1/4)*b*tanh(x)^3*sqrt(a + b*tanh(x)^2)]
    @test_int [tanh(x)^1*(a + b*tanh(x)^2)^(3/2), x, 6, (a + b)^(3/2)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b)) - (a + b)*sqrt(a + b*tanh(x)^2) - (1/3)*(a + b*tanh(x)^2)^(3/2)]
    @test_int [tanh(x)^0*(a + b*tanh(x)^2)^(3/2), x, 7, (-(1/2))*sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2)) + (a + b)^(3/2)*atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2)) - (1/2)*b*tanh(x)*sqrt(a + b*tanh(x)^2)]
    @test_int [coth(x)^1*(a + b*tanh(x)^2)^(3/2), x, 8, (-a^(3/2))*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a)) + (a + b)^(3/2)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b)) - b*sqrt(a + b*tanh(x)^2)]
    @test_int [coth(x)^2*(a + b*tanh(x)^2)^(3/2), x, 7, (-b^(3/2))*atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2)) + (a + b)^(3/2)*atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2)) - a*coth(x)*sqrt(a + b*tanh(x)^2)]


    @test_int [sqrt(1 + tanh(x)^2), x, 5, -asinh(tanh(x)) + sqrt(2)*atanh((sqrt(2)*tanh(x))/sqrt(1 + tanh(x)^2))]
    @test_int [sqrt(-1 - tanh(x)^2), x, 6, atan(tanh(x)/sqrt(-1 - tanh(x)^2)) - sqrt(2)*atan((sqrt(2)*tanh(x))/sqrt(-1 - tanh(x)^2))]


    @test_int [(1 + tanh(x)^2)^(3/2), x, 6, (-(5/2))*asinh(tanh(x)) + 2*sqrt(2)*atanh((sqrt(2)*tanh(x))/sqrt(1 + tanh(x)^2)) - (1/2)*tanh(x)*sqrt(1 + tanh(x)^2)]
    @test_int [(-1 - tanh(x)^2)^(3/2), x, 7, (-(5/2))*atan(tanh(x)/sqrt(-1 - tanh(x)^2)) + 2*sqrt(2)*atan((sqrt(2)*tanh(x))/sqrt(-1 - tanh(x)^2)) + (1/2)*tanh(x)*sqrt(-1 - tanh(x)^2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tanh(x)^5/sqrt(a + b*tanh(x)^2), x, 6, atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/sqrt(a + b) + ((a - b)*sqrt(a + b*tanh(x)^2))/b^2 - (a + b*tanh(x)^2)^(3/2)/(3*b^2)]
    @test_int [tanh(x)^4/sqrt(a + b*tanh(x)^2), x, 7, ((a - 2*b)*atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2)))/(2*b^(3/2)) + atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/sqrt(a + b) - (tanh(x)*sqrt(a + b*tanh(x)^2))/(2*b)]
    @test_int [tanh(x)^3/sqrt(a + b*tanh(x)^2), x, 5, atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/sqrt(a + b) - sqrt(a + b*tanh(x)^2)/b]
    @test_int [tanh(x)^2/sqrt(a + b*tanh(x)^2), x, 6, -(atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2))/sqrt(b)) + atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/sqrt(a + b)]
    @test_int [tanh(x)^1/sqrt(a + b*tanh(x)^2), x, 4, atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/sqrt(a + b)]
    @test_int [tanh(x)^0/sqrt(a + b*tanh(x)^2), x, 3, atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/sqrt(a + b)]
    @test_int [coth(x)^1/sqrt(a + b*tanh(x)^2), x, 7, -(atanh(sqrt(a + b*tanh(x)^2)/sqrt(a))/sqrt(a)) + atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/sqrt(a + b)]
    @test_int [coth(x)^2/sqrt(a + b*tanh(x)^2), x, 5, atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/sqrt(a + b) - (coth(x)*sqrt(a + b*tanh(x)^2))/a]
    @test_int [coth(x)^3/sqrt(a + b*tanh(x)^2), x, 8, -(((2*a - b)*atanh(sqrt(a + b*tanh(x)^2)/sqrt(a)))/(2*a^(3/2))) + atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/sqrt(a + b) - (coth(x)^2*sqrt(a + b*tanh(x)^2))/(2*a)]


    @test_int [tanh(x)^5/(a + b*tanh(x)^2)^(3/2), x, 6, atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/(a + b)^(3/2) - a^2/(b^2*(a + b)*sqrt(a + b*tanh(x)^2)) - sqrt(a + b*tanh(x)^2)/b^2]
    @test_int [tanh(x)^4/(a + b*tanh(x)^2)^(3/2), x, 7, -(atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2))/b^(3/2)) + atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/(a + b)^(3/2) + (a*tanh(x))/(b*(a + b)*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^3/(a + b*tanh(x)^2)^(3/2), x, 5, atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/(a + b)^(3/2) + a/(b*(a + b)*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^2/(a + b*tanh(x)^2)^(3/2), x, 4, atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/(a + b)^(3/2) - tanh(x)/((a + b)*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^1/(a + b*tanh(x)^2)^(3/2), x, 5, atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/(a + b)^(3/2) - 1/((a + b)*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^0/(a + b*tanh(x)^2)^(3/2), x, 4, atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/(a + b)^(3/2) + (b*tanh(x))/(a*(a + b)*sqrt(a + b*tanh(x)^2))]
    @test_int [coth(x)^1/(a + b*tanh(x)^2)^(3/2), x, 8, -(atanh(sqrt(a + b*tanh(x)^2)/sqrt(a))/a^(3/2)) + atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/(a + b)^(3/2) + b/(a*(a + b)*sqrt(a + b*tanh(x)^2))]
    @test_int [coth(x)^2/(a + b*tanh(x)^2)^(3/2), x, 6, atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/(a + b)^(3/2) + (b*coth(x))/(a*(a + b)*sqrt(a + b*tanh(x)^2)) - ((a + 2*b)*coth(x)*sqrt(a + b*tanh(x)^2))/(a^2*(a + b))]


    @test_int [tanh(x)^6/(a + b*tanh(x)^2)^(5/2), x, 8, -(atanh((sqrt(b)*tanh(x))/sqrt(a + b*tanh(x)^2))/b^(5/2)) + atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/(a + b)^(5/2) + (a*tanh(x)^3)/(3*b*(a + b)*(a + b*tanh(x)^2)^(3/2)) + (a*(a + 2*b)*tanh(x))/(b^2*(a + b)^2*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^5/(a + b*tanh(x)^2)^(5/2), x, 6, atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/(a + b)^(5/2) - a^2/(3*b^2*(a + b)*(a + b*tanh(x)^2)^(3/2)) + (a*(a + 2*b))/(b^2*(a + b)^2*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^4/(a + b*tanh(x)^2)^(5/2), x, 6, atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/(a + b)^(5/2) + (a*tanh(x))/(3*b*(a + b)*(a + b*tanh(x)^2)^(3/2)) - ((a + 4*b)*tanh(x))/(3*b*(a + b)^2*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^3/(a + b*tanh(x)^2)^(5/2), x, 6, atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/(a + b)^(5/2) + a/(3*b*(a + b)*(a + b*tanh(x)^2)^(3/2)) - 1/((a + b)^2*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^2/(a + b*tanh(x)^2)^(5/2), x, 6, atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/(a + b)^(5/2) - tanh(x)/(3*(a + b)*(a + b*tanh(x)^2)^(3/2)) - ((2*a - b)*tanh(x))/(3*a*(a + b)^2*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^1/(a + b*tanh(x)^2)^(5/2), x, 6, atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/(a + b)^(5/2) - 1/(3*(a + b)*(a + b*tanh(x)^2)^(3/2)) - 1/((a + b)^2*sqrt(a + b*tanh(x)^2))]
    @test_int [tanh(x)^0/(a + b*tanh(x)^2)^(5/2), x, 6, atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/(a + b)^(5/2) + (b*tanh(x))/(3*a*(a + b)*(a + b*tanh(x)^2)^(3/2)) + (b*(5*a + 2*b)*tanh(x))/(3*a^2*(a + b)^2*sqrt(a + b*tanh(x)^2))]
    @test_int [coth(x)^1/(a + b*tanh(x)^2)^(5/2), x, 9, -(atanh(sqrt(a + b*tanh(x)^2)/sqrt(a))/a^(5/2)) + atanh(sqrt(a + b*tanh(x)^2)/sqrt(a + b))/(a + b)^(5/2) + b/(3*a*(a + b)*(a + b*tanh(x)^2)^(3/2)) + (b*(2*a + b))/(a^2*(a + b)^2*sqrt(a + b*tanh(x)^2))]
    @test_int [coth(x)^2/(a + b*tanh(x)^2)^(5/2), x, 7, atanh((sqrt(a + b)*tanh(x))/sqrt(a + b*tanh(x)^2))/(a + b)^(5/2) + (b*coth(x))/(3*a*(a + b)*(a + b*tanh(x)^2)^(3/2)) + (b*(7*a + 4*b)*coth(x))/(3*a^2*(a + b)^2*sqrt(a + b*tanh(x)^2)) - ((3*a + 2*b)*(a + 4*b)*coth(x)*sqrt(a + b*tanh(x)^2))/(3*a^3*(a + b)^2)]


    @test_int [1/sqrt(1 + tanh(x)^2), x, 3, atanh((sqrt(2)*tanh(x))/sqrt(1 + tanh(x)^2))/sqrt(2)]
    @test_int [1/sqrt(-1 - tanh(x)^2), x, 3, atan((sqrt(2)*tanh(x))/sqrt(-1 - tanh(x)^2))/sqrt(2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*tanh(e+f*x)^3)^p=#


    @test_int [(a + b*tanh(c + d*x)^3)^2, x, 6, (a^2 + b^2)*x + (2*a*b*log(cosh(c + d*x)))/d - (b^2*tanh(c + d*x))/d - (a*b*tanh(c + d*x)^2)/d - (b^2*tanh(c + d*x)^3)/(3*d) - (b^2*tanh(c + d*x)^5)/(5*d), -(((a + b)^2*log(1 - tanh(c + d*x)))/(2*d)) + ((a - b)^2*log(1 + tanh(c + d*x)))/(2*d) - (b^2*tanh(c + d*x))/d - (a*b*tanh(c + d*x)^2)/d - (b^2*tanh(c + d*x)^3)/(3*d) - (b^2*tanh(c + d*x)^5)/(5*d)]


    @test_int [1/(1 + tanh(x)^3), x, 6, x/2 - (2*atan((1 - 2*tanh(x))/sqrt(3)))/(3*sqrt(3)) - 1/(6*(1 + tanh(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*tanh(e+f*x)^4)^p=#


    @test_int [tanh(x)*(a + b*tanh(x)^4)^(3/2), x, 9, (-(1/4))*sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*tanh(x)^2)/sqrt(a + b*tanh(x)^4)) + (1/2)*(a + b)^(3/2)*atanh((a + b*tanh(x)^2)/(sqrt(a + b)*sqrt(a + b*tanh(x)^4))) - (1/4)*(2*(a + b) + b*tanh(x)^2)*sqrt(a + b*tanh(x)^4) - (1/6)*(a + b*tanh(x)^4)^(3/2)]
    @test_int [tanh(x)*(a + b*tanh(x)^4)^(1/2), x, 8, (-(1/2))*sqrt(b)*atanh((sqrt(b)*tanh(x)^2)/sqrt(a + b*tanh(x)^4)) + (1/2)*sqrt(a + b)*atanh((a + b*tanh(x)^2)/(sqrt(a + b)*sqrt(a + b*tanh(x)^4))) - (1/2)*sqrt(a + b*tanh(x)^4)]
    @test_int [tanh(x)/(a + b*tanh(x)^4)^(1/2), x, 4, atanh((a + b*tanh(x)^2)/(sqrt(a + b)*sqrt(a + b*tanh(x)^4)))/(2*sqrt(a + b))]
    @test_int [tanh(x)/(a + b*tanh(x)^4)^(3/2), x, 6, atanh((a + b*tanh(x)^2)/(sqrt(a + b)*sqrt(a + b*tanh(x)^4)))/(2*(a + b)^(3/2)) - (a - b*tanh(x)^2)/(2*a*(a + b)*sqrt(a + b*tanh(x)^4))]
    @test_int [tanh(x)/(a + b*tanh(x)^4)^(5/2), x, 7, atanh((a + b*tanh(x)^2)/(sqrt(a + b)*sqrt(a + b*tanh(x)^4)))/(2*(a + b)^(5/2)) - (a - b*tanh(x)^2)/(6*a*(a + b)*(a + b*tanh(x)^4)^(3/2)) - (3*a^2 - b*(5*a + 2*b)*tanh(x)^2)/(6*a^2*(a + b)^2*sqrt(a + b*tanh(x)^4))]


    #= ::Section:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*tanh(e+f*x)^n)^p=#
    end
