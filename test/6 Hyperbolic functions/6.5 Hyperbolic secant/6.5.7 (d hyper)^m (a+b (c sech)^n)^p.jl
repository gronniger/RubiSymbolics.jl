@testset "6.5.7 (d hyper)^m (a+b (c sech)^n)^p" begin
    (a, b, c, d, x, ) = @variables a b c d x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sech(e+f*x)^n)^p=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [(a + b*sech(c + d*x)^2)*sinh(c + d*x)^4, x, 5, (3/8)*(a - 4*b)*x - ((5*a - 4*b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (a*cosh(c + d*x)^3*sinh(c + d*x))/(4*d) + (b*tanh(c + d*x))/d]
    @test_int [(a + b*sech(c + d*x)^2)*sinh(c + d*x)^3, x, 3, -(((a - b)*cosh(c + d*x))/d) + (a*cosh(c + d*x)^3)/(3*d) + (b*sech(c + d*x))/d]
    @test_int [(a + b*sech(c + d*x)^2)*sinh(c + d*x)^2, x, 4, (-(1/2))*(a - 2*b)*x + (a*cosh(c + d*x)*sinh(c + d*x))/(2*d) - (b*tanh(c + d*x))/d]
    @test_int [(a + b*sech(c + d*x)^2)*sinh(c + d*x), x, 3, (a*cosh(c + d*x))/d - (b*sech(c + d*x))/d]
    @test_int [csch(c + d*x)*(a + b*sech(c + d*x)^2), x, 3, -(((a + b)*atanh(cosh(c + d*x)))/d) + (b*sech(c + d*x))/d]
    @test_int [csch(c + d*x)^2*(a + b*sech(c + d*x)^2), x, 3, -(((a + b)*coth(c + d*x))/d) - (b*tanh(c + d*x))/d]
    @test_int [csch(c + d*x)^3*(a + b*sech(c + d*x)^2), x, 4, ((a + 3*b)*atanh(cosh(c + d*x)))/(2*d) - ((a + b)*coth(c + d*x)*csch(c + d*x))/(2*d) - (b*sech(c + d*x))/d]
    @test_int [csch(c + d*x)^4*(a + b*sech(c + d*x)^2), x, 3, ((a + 2*b)*coth(c + d*x))/d - ((a + b)*coth(c + d*x)^3)/(3*d) + (b*tanh(c + d*x))/d]


    @test_int [(a + b*sech(c + d*x)^2)^2*sinh(c + d*x)^4, x, 6, (1/8)*(3*a^2 - 24*a*b + 8*b^2)*x - (a*(a - 8*b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) - ((a^2 - 8*a*b + 4*b^2)*tanh(c + d*x))/(4*d) + (a^2*sinh(c + d*x)^4*tanh(c + d*x))/(4*d) - (b^2*tanh(c + d*x)^3)/(3*d)]
    @test_int [(a + b*sech(c + d*x)^2)^2*sinh(c + d*x)^3, x, 3, -((a*(a - 2*b)*cosh(c + d*x))/d) + (a^2*cosh(c + d*x)^3)/(3*d) + ((2*a - b)*b*sech(c + d*x))/d + (b^2*sech(c + d*x)^3)/(3*d)]
    @test_int [(a + b*sech(c + d*x)^2)^2*sinh(c + d*x)^2, x, 5, (-(1/2))*a*(a - 4*b)*x + (a*(a - 4*b)*tanh(c + d*x))/(2*d) + (a^2*sinh(c + d*x)^2*tanh(c + d*x))/(2*d) + (b^2*tanh(c + d*x)^3)/(3*d)]
    @test_int [(a + b*sech(c + d*x)^2)^2*sinh(c + d*x), x, 3, (a^2*cosh(c + d*x))/d - (2*a*b*sech(c + d*x))/d - (b^2*sech(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)*(a + b*sech(c + d*x)^2)^2, x, 4, -(((a + b)^2*atanh(cosh(c + d*x)))/d) + (b*(2*a + b)*sech(c + d*x))/d + (b^2*sech(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^2*(a + b*sech(c + d*x)^2)^2, x, 3, -(((a + b)^2*coth(c + d*x))/d) - (2*b*(a + b)*tanh(c + d*x))/d + (b^2*tanh(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^3*(a + b*sech(c + d*x)^2)^2, x, 5, ((a + b)*(a + 5*b)*atanh(cosh(c + d*x)))/(2*d) - ((3*a^2 + 6*a*b + 5*b^2)*coth(c + d*x)*csch(c + d*x))/(6*d) - (b*(6*a + 5*b)*sech(c + d*x))/(3*d) + (b^2*csch(c + d*x)^2*sech(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^4*(a + b*sech(c + d*x)^2)^2, x, 3, ((a + b)*(a + 3*b)*coth(c + d*x))/d - ((a + b)^2*coth(c + d*x)^3)/(3*d) + (b*(2*a + 3*b)*tanh(c + d*x))/d - (b^2*tanh(c + d*x)^3)/(3*d)]


    @test_int [(a + b*sech(c + d*x)^2)^3*sinh(c + d*x)^4, x, 6, (3/8)*a*(a^2 - 12*a*b + 8*b^2)*x - (3*a*(a^2 - 12*a*b + 8*b^2)*tanh(c + d*x))/(8*d) + (b*(6*a^2 - 23*a*b - 8*b^2)*tanh(c + d*x)^3)/(8*d) - (3*(5*a - 16*b)*b^2*tanh(c + d*x)^5)/(40*d) - (3*(a - 2*b)*sinh(c + d*x)^2*tanh(c + d*x)*(a + b - b*tanh(c + d*x)^2)^2)/(8*d) + (cosh(c + d*x)*sinh(c + d*x)^3*(a + b - b*tanh(c + d*x)^2)^3)/(4*d)]
    @test_int [(a + b*sech(c + d*x)^2)^3*sinh(c + d*x)^3, x, 3, -((a^2*(a - 3*b)*cosh(c + d*x))/d) + (a^3*cosh(c + d*x)^3)/(3*d) + (3*a*(a - b)*b*sech(c + d*x))/d + ((3*a - b)*b^2*sech(c + d*x)^3)/(3*d) + (b^3*sech(c + d*x)^5)/(5*d)]
    @test_int [(a + b*sech(c + d*x)^2)^3*sinh(c + d*x)^2, x, 6, -(a^2*(a - 6*b)*x)/2 + a^3/(4*d*(1 - tanh(c + d*x))) - (3*a^2*b*tanh(c + d*x))/d + (b^2*(3*a + b)*tanh(c + d*x)^3)/(3*d) - (b^3*tanh(c + d*x)^5)/(5*d) - a^3/(4*d*(1 + tanh(c + d*x))), (-(1/2))*a^2*(a - 6*b)*x - (b*(81*a^2 - 28*a*b - 4*b^2)*tanh(c + d*x))/(30*d) - ((33*a - 2*b)*b*tanh(c + d*x)*(a + b - b*tanh(c + d*x)^2))/(30*d) - (7*b*tanh(c + d*x)*(a + b - b*tanh(c + d*x)^2)^2)/(10*d) + (cosh(c + d*x)*sinh(c + d*x)*(a + b - b*tanh(c + d*x)^2)^3)/(2*d)]
    @test_int [(a + b*sech(c + d*x)^2)^3*sinh(c + d*x), x, 3, (a^3*cosh(c + d*x))/d - (3*a^2*b*sech(c + d*x))/d - (a*b^2*sech(c + d*x)^3)/d - (b^3*sech(c + d*x)^5)/(5*d)]
    @test_int [csch(c + d*x)*(a + b*sech(c + d*x)^2)^3, x, 4, -(((a + b)^3*atanh(cosh(c + d*x)))/d) + (b*(3*a^2 + 3*a*b + b^2)*sech(c + d*x))/d + (b^2*(3*a + b)*sech(c + d*x)^3)/(3*d) + (b^3*sech(c + d*x)^5)/(5*d)]
    @test_int [csch(c + d*x)^2*(a + b*sech(c + d*x)^2)^3, x, 3, -(((a + b)^3*coth(c + d*x))/d) - (3*b*(a + b)^2*tanh(c + d*x))/d + (b^2*(a + b)*tanh(c + d*x)^3)/d - (b^3*tanh(c + d*x)^5)/(5*d)]
    @test_int [csch(c + d*x)^3*(a + b*sech(c + d*x)^2)^3, x, 5, ((a + b)^2*(a + 7*b)*atanh(cosh(c + d*x)))/(2*d) - ((a + b)^2*(a + 7*b)*sech(c + d*x))/(2*d) - (b*(6*a^2 + 15*a*b + 7*b^2)*sech(c + d*x)^3)/(6*d) - (b^2*(5*a + 7*b)*sech(c + d*x)^5)/(10*d) - ((a + b)*(b + a*cosh(c + d*x)^2)^2*csch(c + d*x)^2*sech(c + d*x)^5)/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*sech(c + d*x)^2)^3, x, 3, ((a + b)^2*(a + 4*b)*coth(c + d*x))/d - ((a + b)^3*coth(c + d*x)^3)/(3*d) + (3*b*(a + b)*(a + 2*b)*tanh(c + d*x))/d - (b^2*(3*a + 4*b)*tanh(c + d*x)^3)/(3*d) + (b^3*tanh(c + d*x)^5)/(5*d)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sinh(c + d*x)^4/(a + b*sech(c + d*x)^2), x, 6, ((3*a^2 + 12*a*b + 8*b^2)*x)/(8*a^3) - (sqrt(b)*(a + b)^(3/2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(a^3*d) - ((5*a + 4*b)*cosh(c + d*x)*sinh(c + d*x))/(8*a^2*d) + (cosh(c + d*x)^3*sinh(c + d*x))/(4*a*d)]
    @test_int [sinh(c + d*x)^3/(a + b*sech(c + d*x)^2), x, 4, (sqrt(b)*(a + b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(a^(5/2)*d) - ((a + b)*cosh(c + d*x))/(a^2*d) + cosh(c + d*x)^3/(3*a*d)]
    @test_int [sinh(c + d*x)^2/(a + b*sech(c + d*x)^2), x, 5, -(((a + 2*b)*x)/(2*a^2)) + (sqrt(b)*sqrt(a + b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(a^2*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*a*d)]
    @test_int [sinh(c + d*x)/(a + b*sech(c + d*x)^2), x, 3, -((sqrt(b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(a^(3/2)*d)) + cosh(c + d*x)/(a*d)]
    @test_int [csch(c + d*x)/(a + b*sech(c + d*x)^2), x, 4, (sqrt(b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(sqrt(a)*(a + b)*d) - atanh(cosh(c + d*x))/((a + b)*d)]
    @test_int [csch(c + d*x)^2/(a + b*sech(c + d*x)^2), x, 3, (sqrt(b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/((a + b)^(3/2)*d) - coth(c + d*x)/((a + b)*d)]
    @test_int [csch(c + d*x)^3/(a + b*sech(c + d*x)^2), x, 5, -((sqrt(a)*sqrt(b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/((a + b)^2*d)) + ((a - b)*atanh(cosh(c + d*x)))/(2*(a + b)^2*d) - (coth(c + d*x)*csch(c + d*x))/(2*(a + b)*d)]
    @test_int [csch(c + d*x)^4/(a + b*sech(c + d*x)^2), x, 4, -((a*sqrt(b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/((a + b)^(5/2)*d)) + (a*coth(c + d*x))/((a + b)^2*d) - coth(c + d*x)^3/(3*(a + b)*d)]


    @test_int [sinh(c + d*x)^4/(a + b*sech(c + d*x)^2)^2, x, 7, (3*(a^2 + 8*a*b + 8*b^2)*x)/(8*a^4) - (3*sqrt(b)*sqrt(a + b)*(a + 2*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*a^4*d) - ((5*a + 6*b)*cosh(c + d*x)*sinh(c + d*x))/(8*a^2*d*(a + b - b*tanh(c + d*x)^2)) + (cosh(c + d*x)^3*sinh(c + d*x))/(4*a*d*(a + b - b*tanh(c + d*x)^2)) - (3*b*(3*a + 4*b)*tanh(c + d*x))/(8*a^3*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^3/(a + b*sech(c + d*x)^2)^2, x, 5, (sqrt(b)*(3*a + 5*b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(2*a^(7/2)*d) - ((a + 2*b)*cosh(c + d*x))/(a^3*d) + cosh(c + d*x)^3/(3*a^2*d) - (b*(a + b)*cosh(c + d*x))/(2*a^3*d*(b + a*cosh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^2/(a + b*sech(c + d*x)^2)^2, x, 6, -(((a + 4*b)*x)/(2*a^3)) + (sqrt(b)*(3*a + 4*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*a^3*sqrt(a + b)*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*a*d*(a + b - b*tanh(c + d*x)^2)) + (b*tanh(c + d*x))/(a^2*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)/(a + b*sech(c + d*x)^2)^2, x, 4, (-3*sqrt(b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(2*a^(5/2)*d) + (3*cosh(c + d*x))/(2*a^2*d) - cosh(c + d*x)^3/(2*a*d*(b + a*cosh(c + d*x)^2))]
    @test_int [csch(c + d*x)/(a + b*sech(c + d*x)^2)^2, x, 5, (sqrt(b)*(3*a + b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(2*a^(3/2)*(a + b)^2*d) - atanh(cosh(c + d*x))/((a + b)^2*d) - (b*cosh(c + d*x))/(2*a*(a + b)*d*(b + a*cosh(c + d*x)^2))]
    @test_int [csch(c + d*x)^2/(a + b*sech(c + d*x)^2)^2, x, 4, (3*sqrt(b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*(a + b)^(5/2)*d) - (3*coth(c + d*x))/(2*(a + b)^2*d) + coth(c + d*x)/(2*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [csch(c + d*x)^3/(a + b*sech(c + d*x)^2)^2, x, 6, -(((3*a - b)*sqrt(b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(2*sqrt(a)*(a + b)^3*d)) + ((a - 3*b)*atanh(cosh(c + d*x)))/(2*(a + b)^3*d) - ((a - b)*cosh(c + d*x))/(2*(a + b)^2*d*(b + a*cosh(c + d*x)^2)) - (coth(c + d*x)*csch(c + d*x))/(2*(a + b)*d*(b + a*cosh(c + d*x)^2))]
    @test_int [csch(c + d*x)^4/(a + b*sech(c + d*x)^2)^2, x, 5, -(((3*a - 2*b)*sqrt(b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*(a + b)^(7/2)*d)) + ((a - b)*coth(c + d*x))/((a + b)^3*d) - coth(c + d*x)^3/(3*(a + b)^2*d) - (a*b*tanh(c + d*x))/(2*(a + b)^3*d*(a + b - b*tanh(c + d*x)^2))]


    @test_int [sinh(c + d*x)^4/(a + b*sech(c + d*x)^2)^3, x, 8, (3*(a^2 + 12*a*b + 16*b^2)*x)/(8*a^5) - (3*sqrt(b)*(5*a^2 + 20*a*b + 16*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*a^5*sqrt(a + b)*d) - ((5*a + 8*b)*cosh(c + d*x)*sinh(c + d*x))/(8*a^2*d*(a + b - b*tanh(c + d*x)^2)^2) + (cosh(c + d*x)^3*sinh(c + d*x))/(4*a*d*(a + b - b*tanh(c + d*x)^2)^2) - (b*(7*a + 12*b)*tanh(c + d*x))/(8*a^3*d*(a + b - b*tanh(c + d*x)^2)^2) - (3*b*(a + 2*b)*tanh(c + d*x))/(2*a^4*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^3/(a + b*sech(c + d*x)^2)^3, x, 6, (5*sqrt(b)*(3*a + 7*b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(8*a^(9/2)*d) - ((a + 3*b)*cosh(c + d*x))/(a^4*d) + cosh(c + d*x)^3/(3*a^3*d) + (b^2*(a + b)*cosh(c + d*x))/(4*a^4*d*(b + a*cosh(c + d*x)^2)^2) - (b*(9*a + 13*b)*cosh(c + d*x))/(8*a^4*d*(b + a*cosh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^2/(a + b*sech(c + d*x)^2)^3, x, 7, -(((a + 6*b)*x)/(2*a^4)) + (sqrt(b)*(15*a^2 + 40*a*b + 24*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*a^4*(a + b)^(3/2)*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*a*d*(a + b - b*tanh(c + d*x)^2)^2) + (3*b*tanh(c + d*x))/(4*a^2*d*(a + b - b*tanh(c + d*x)^2)^2) + (b*(11*a + 12*b)*tanh(c + d*x))/(8*a^3*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)/(a + b*sech(c + d*x)^2)^3, x, 5, (-15*sqrt(b)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(8*a^(7/2)*d) + (15*cosh(c + d*x))/(8*a^3*d) - cosh(c + d*x)^5/(4*a*d*(b + a*cosh(c + d*x)^2)^2) - (5*cosh(c + d*x)^3)/(8*a^2*d*(b + a*cosh(c + d*x)^2))]
    @test_int [csch(c + d*x)/(a + b*sech(c + d*x)^2)^3, x, 6, (sqrt(b)*(15*a^2 + 10*a*b + 3*b^2)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(8*a^(5/2)*(a + b)^3*d) - atanh(cosh(c + d*x))/((a + b)^3*d) - (b*cosh(c + d*x)^3)/(4*a*(a + b)*d*(b + a*cosh(c + d*x)^2)^2) - (b*(7*a + 3*b)*cosh(c + d*x))/(8*a^2*(a + b)^2*d*(b + a*cosh(c + d*x)^2))]
    @test_int [csch(c + d*x)^2/(a + b*sech(c + d*x)^2)^3, x, 5, (15*sqrt(b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*(a + b)^(7/2)*d) - (15*coth(c + d*x))/(8*(a + b)^3*d) + coth(c + d*x)/(4*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^2) + (5*coth(c + d*x))/(8*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [csch(c + d*x)^3/(a + b*sech(c + d*x)^2)^3, x, 7, -((sqrt(b)*(15*a^2 - 10*a*b - b^2)*atan((sqrt(a)*cosh(c + d*x))/sqrt(b)))/(8*a^(3/2)*(a + b)^4*d)) + ((a - 5*b)*atanh(cosh(c + d*x)))/(2*(a + b)^4*d) + ((2*a - b)*b*cosh(c + d*x))/(4*a*(a + b)^2*d*(b + a*cosh(c + d*x)^2)^2) - ((4*a^2 - 9*a*b - b^2)*cosh(c + d*x))/(8*a*(a + b)^3*d*(b + a*cosh(c + d*x)^2)) - (cosh(c + d*x)*coth(c + d*x)^2)/(2*(a + b)*d*(b + a*cosh(c + d*x)^2)^2)]
    @test_int [csch(c + d*x)^4/(a + b*sech(c + d*x)^2)^3, x, 6, -((5*(3*a - 4*b)*sqrt(b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*(a + b)^(9/2)*d)) + ((a - 2*b)*coth(c + d*x))/((a + b)^4*d) - coth(c + d*x)^3/(3*(a + b)^3*d) - (a*b*tanh(c + d*x))/(4*(a + b)^3*d*(a + b - b*tanh(c + d*x)^2)^2) - ((7*a - 4*b)*b*tanh(c + d*x))/(8*(a + b)^4*d*(a + b - b*tanh(c + d*x)^2))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*sech(e+f*x)^n)^p=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cosh(c + d*x)^4*(a + b*sech(c + d*x)^2), x, 3, ((3*a + 4*b)*x)/8 + ((3*a + 4*b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (a*cosh(c + d*x)^3*sinh(c + d*x))/(4*d)]
    @test_int [cosh(c + d*x)^3*(a + b*sech(c + d*x)^2), x, 3, ((a + b)*sinh(c + d*x))/d + (a*sinh(c + d*x)^3)/(3*d)]
    @test_int [cosh(c + d*x)^2*(a + b*sech(c + d*x)^2), x, 2, ((a + 2*b)*x)/2 + (a*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [cosh(c + d*x)^1*(a + b*sech(c + d*x)^2), x, 2, (b*atan(sinh(c + d*x)))/d + (a*sinh(c + d*x))/d]
    @test_int [sech(c + d*x)^1*(a + b*sech(c + d*x)^2), x, 2, ((2*a + b)*atan(sinh(c + d*x)))/(2*d) + (b*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [sech(c + d*x)^2*(a + b*sech(c + d*x)^2), x, 3, ((a + b)*tanh(c + d*x))/d - (b*tanh(c + d*x)^3)/(3*d), ((3*a + 2*b)*tanh(c + d*x))/(3*d) + (b*sech(c + d*x)^2*tanh(c + d*x))/(3*d)]
    @test_int [sech(c + d*x)^3*(a + b*sech(c + d*x)^2), x, 3, ((4*a + 3*b)*atan(sinh(c + d*x)))/(8*d) + ((4*a + 3*b)*sech(c + d*x)*tanh(c + d*x))/(8*d) + (b*sech(c + d*x)^3*tanh(c + d*x))/(4*d)]
    @test_int [sech(c + d*x)^4*(a + b*sech(c + d*x)^2), x, 3, ((a + b)*tanh(c + d*x))/d - ((a + 2*b)*tanh(c + d*x)^3)/(3*d) + (b*tanh(c + d*x)^5)/(5*d), ((5*a + 4*b)*tanh(c + d*x))/(5*d) + (b*sech(c + d*x)^4*tanh(c + d*x))/(5*d) - ((5*a + 4*b)*tanh(c + d*x)^3)/(15*d)]


    @test_int [cosh(c + d*x)^4*(a + b*sech(c + d*x)^2)^2, x, 4, (1/8)*(3*a^2 + 8*a*b + 8*b^2)*x + (3*a*(a + 2*b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (a*cosh(c + d*x)^3*sinh(c + d*x)*(a + b - b*tanh(c + d*x)^2))/(4*d)]
    @test_int [cosh(c + d*x)^3*(a + b*sech(c + d*x)^2)^2, x, 4, (b^2*atan(sinh(c + d*x)))/d + (a*(a + 2*b)*sinh(c + d*x))/d + (a^2*sinh(c + d*x)^3)/(3*d)]
    @test_int [cosh(c + d*x)^2*(a + b*sech(c + d*x)^2)^2, x, 5, (1/2)*a*(a + 4*b)*x + (a^2*cosh(c + d*x)*sinh(c + d*x))/(2*d) + (b^2*tanh(c + d*x))/d]
    @test_int [cosh(c + d*x)^1*(a + b*sech(c + d*x)^2)^2, x, 5, (b*(4*a + b)*atan(sinh(c + d*x)))/(2*d) + (a^2*sinh(c + d*x))/d + (b^2*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [sech(c + d*x)^1*(a + b*sech(c + d*x)^2)^2, x, 4, ((8*a^2 + 8*a*b + 3*b^2)*atan(sinh(c + d*x)))/(8*d) + (3*b*(2*a + b)*sech(c + d*x)*tanh(c + d*x))/(8*d) + (b*sech(c + d*x)^3*(a + b + a*sinh(c + d*x)^2)*tanh(c + d*x))/(4*d)]
    @test_int [sech(c + d*x)^2*(a + b*sech(c + d*x)^2)^2, x, 3, ((a + b)^2*tanh(c + d*x))/d - (2*b*(a + b)*tanh(c + d*x)^3)/(3*d) + (b^2*tanh(c + d*x)^5)/(5*d)]
    @test_int [sech(c + d*x)^3*(a + b*sech(c + d*x)^2)^2, x, 5, ((8*a^2 + 12*a*b + 5*b^2)*atan(sinh(c + d*x)))/(16*d) + ((8*a^2 + 12*a*b + 5*b^2)*sech(c + d*x)*tanh(c + d*x))/(16*d) + (b*(8*a + 5*b)*sech(c + d*x)^3*tanh(c + d*x))/(24*d) + (b*sech(c + d*x)^5*(a + b + a*sinh(c + d*x)^2)*tanh(c + d*x))/(6*d)]
    @test_int [sech(c + d*x)^4*(a + b*sech(c + d*x)^2)^2, x, 3, ((a + b)^2*tanh(c + d*x))/d - ((a + b)*(a + 3*b)*tanh(c + d*x)^3)/(3*d) + (b*(2*a + 3*b)*tanh(c + d*x)^5)/(5*d) - (b^2*tanh(c + d*x)^7)/(7*d)]


    @test_int [cosh(c + d*x)^4*(a + b*sech(c + d*x)^2)^3, x, 6, (3/8)*a*(a^2 + 4*a*b + 8*b^2)*x + (3*a^2*(a + 4*b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (a^3*cosh(c + d*x)^3*sinh(c + d*x))/(4*d) + (b^3*tanh(c + d*x))/d]
    @test_int [cosh(c + d*x)^3*(a + b*sech(c + d*x)^2)^3, x, 5, (b^2*(6*a + b)*atan(sinh(c + d*x)))/(2*d) + (a^2*(a + 3*b)*sinh(c + d*x))/d + (a^3*sinh(c + d*x)^3)/(3*d) + (b^3*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [cosh(c + d*x)^2*(a + b*sech(c + d*x)^2)^3, x, 5, (1/2)*a^2*(a + 6*b)*x + (a^3*cosh(c + d*x)*sinh(c + d*x))/(2*d) + (b^2*(3*a + b)*tanh(c + d*x))/d - (b^3*tanh(c + d*x)^3)/(3*d)]
    @test_int [cosh(c + d*x)^1*(a + b*sech(c + d*x)^2)^3, x, 6, (3*b*(8*a^2 + 4*a*b + b^2)*atan(sinh(c + d*x)))/(8*d) + (a^3*sinh(c + d*x))/d + (3*b^2*(4*a + b)*sech(c + d*x)*tanh(c + d*x))/(8*d) + (b^3*sech(c + d*x)^3*tanh(c + d*x))/(4*d)]
    @test_int [sech(c + d*x)^1*(a + b*sech(c + d*x)^2)^3, x, 5, ((2*a + b)*(8*a^2 + 8*a*b + 5*b^2)*atan(sinh(c + d*x)))/(16*d) + (b*(44*a^2 + 44*a*b + 15*b^2)*sech(c + d*x)*tanh(c + d*x))/(48*d) + (5*b*(2*a + b)*sech(c + d*x)^3*(a + b + a*sinh(c + d*x)^2)*tanh(c + d*x))/(24*d) + (b*sech(c + d*x)^5*(a + b + a*sinh(c + d*x)^2)^2*tanh(c + d*x))/(6*d)]
    @test_int [sech(c + d*x)^2*(a + b*sech(c + d*x)^2)^3, x, 3, ((a + b)^3*tanh(c + d*x))/d - (b*(a + b)^2*tanh(c + d*x)^3)/d + (3*b^2*(a + b)*tanh(c + d*x)^5)/(5*d) - (b^3*tanh(c + d*x)^7)/(7*d)]
    @test_int [sech(c + d*x)^3*(a + b*sech(c + d*x)^2)^3, x, 6, ((64*a^3 + 144*a^2*b + 120*a*b^2 + 35*b^3)*atan(sinh(c + d*x)))/(128*d) + ((64*a^3 + 144*a^2*b + 120*a*b^2 + 35*b^3)*sech(c + d*x)*tanh(c + d*x))/(128*d) + (b*(72*a^2 + 92*a*b + 35*b^2)*sech(c + d*x)^3*tanh(c + d*x))/(192*d) + (b*(12*a + 7*b)*sech(c + d*x)^5*(a + b + a*sinh(c + d*x)^2)*tanh(c + d*x))/(48*d) + (b*sech(c + d*x)^7*(a + b + a*sinh(c + d*x)^2)^2*tanh(c + d*x))/(8*d)]
    @test_int [sech(c + d*x)^4*(a + b*sech(c + d*x)^2)^3, x, 3, ((a + b)^3*tanh(c + d*x))/d - ((a + b)^2*(a + 4*b)*tanh(c + d*x)^3)/(3*d) + (3*b*(a + b)*(a + 2*b)*tanh(c + d*x)^5)/(5*d) - (b^2*(3*a + 4*b)*tanh(c + d*x)^7)/(7*d) + (b^3*tanh(c + d*x)^9)/(9*d)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cosh(c + d*x)^4/(a + b*sech(c + d*x)^2), x, 6, ((3*a^2 - 4*a*b + 8*b^2)*x)/(8*a^3) - (b^(5/2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(a^3*sqrt(a + b)*d) + ((3*a - 4*b)*cosh(c + d*x)*sinh(c + d*x))/(8*a^2*d) + (cosh(c + d*x)^3*sinh(c + d*x))/(4*a*d)]
    @test_int [cosh(c + d*x)^3/(a + b*sech(c + d*x)^2), x, 4, (b^2*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(a^(5/2)*sqrt(a + b)*d) + ((a - b)*sinh(c + d*x))/(a^2*d) + sinh(c + d*x)^3/(3*a*d)]
    @test_int [cosh(c + d*x)^2/(a + b*sech(c + d*x)^2), x, 5, ((a - 2*b)*x)/(2*a^2) + (b^(3/2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(a^2*sqrt(a + b)*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*a*d)]
    @test_int [cosh(c + d*x)/(a + b*sech(c + d*x)^2), x, 3, -((b*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(a^(3/2)*sqrt(a + b)*d)) + sinh(c + d*x)/(a*d)]
    @test_int [sech(c + d*x)/(a + b*sech(c + d*x)^2), x, 2, atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b))/(sqrt(a)*sqrt(a + b)*d)]
    @test_int [sech(c + d*x)^2/(a + b*sech(c + d*x)^2), x, 2, atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b))/(sqrt(b)*sqrt(a + b)*d)]
    @test_int [sech(c + d*x)^3/(a + b*sech(c + d*x)^2), x, 4, atan(sinh(c + d*x))/(b*d) - (sqrt(a)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(b*sqrt(a + b)*d)]
    @test_int [sech(c + d*x)^4/(a + b*sech(c + d*x)^2), x, 3, -((a*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(b^(3/2)*sqrt(a + b)*d)) + tanh(c + d*x)/(b*d)]
    @test_int [sech(c + d*x)^5/(a + b*sech(c + d*x)^2), x, 5, -(((2*a - b)*atan(sinh(c + d*x)))/(2*b^2*d)) + (a^(3/2)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(b^2*sqrt(a + b)*d) + (sech(c + d*x)*tanh(c + d*x))/(2*b*d)]
    @test_int [sech(c + d*x)^6/(a + b*sech(c + d*x)^2), x, 4, (a^2*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(b^(5/2)*sqrt(a + b)*d) - ((a - b)*tanh(c + d*x))/(b^2*d) - tanh(c + d*x)^3/(3*b*d)]


    @test_int [cosh(c + d*x)^3/(a + b*sech(c + d*x)^2)^2, x, 5, (b^2*(6*a + 5*b)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(2*a^(7/2)*(a + b)^(3/2)*d) + ((a - 2*b)*sinh(c + d*x))/(a^3*d) + sinh(c + d*x)^3/(3*a^2*d) - (b^3*sinh(c + d*x))/(2*a^3*(a + b)*d*(a + b + a*sinh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^2/(a + b*sech(c + d*x)^2)^2, x, 6, ((a - 4*b)*x)/(2*a^3) + (b^(3/2)*(5*a + 4*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*a^3*(a + b)^(3/2)*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*a*d*(a + b - b*tanh(c + d*x)^2)) + (b*(a + 2*b)*tanh(c + d*x))/(2*a^2*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)/(a + b*sech(c + d*x)^2)^2, x, 5, -((b*(4*a + 3*b)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(2*a^(5/2)*(a + b)^(3/2)*d)) + sinh(c + d*x)/(a^2*d) + (b^2*sinh(c + d*x))/(2*a^2*(a + b)*d*(a + b + a*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)/(a + b*sech(c + d*x)^2)^2, x, 3, ((2*a + b)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(2*a^(3/2)*(a + b)^(3/2)*d) - (b*sinh(c + d*x))/(2*a*(a + b)*d*(a + b + a*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^2/(a + b*sech(c + d*x)^2)^2, x, 3, atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b))/(2*sqrt(b)*(a + b)^(3/2)*d) + tanh(c + d*x)/(2*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^3/(a + b*sech(c + d*x)^2)^2, x, 3, atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b))/(2*sqrt(a)*(a + b)^(3/2)*d) + sinh(c + d*x)/(2*(a + b)*d*(a + b + a*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^4/(a + b*sech(c + d*x)^2)^2, x, 3, ((a + 2*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*b^(3/2)*(a + b)^(3/2)*d) - (a*tanh(c + d*x))/(2*b*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^5/(a + b*sech(c + d*x)^2)^2, x, 5, atan(sinh(c + d*x))/(b^2*d) - (sqrt(a)*(2*a + 3*b)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(2*b^2*(a + b)^(3/2)*d) - (a*sinh(c + d*x))/(2*b*(a + b)*d*(a + b + a*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^6/(a + b*sech(c + d*x)^2)^2, x, 5, -((a*(3*a + 4*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*b^(5/2)*(a + b)^(3/2)*d)) + tanh(c + d*x)/(b^2*d) + (a^2*tanh(c + d*x))/(2*b^2*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^7/(a + b*sech(c + d*x)^2)^2, x, 6, -(((4*a - b)*atan(sinh(c + d*x)))/(2*b^3*d)) + (a^(3/2)*(4*a + 5*b)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(2*b^3*(a + b)^(3/2)*d) + (a*(2*a + b)*sinh(c + d*x))/(2*b^2*(a + b)*d*(a + b + a*sinh(c + d*x)^2)) + (sech(c + d*x)*tanh(c + d*x))/(2*b*d*(a + b + a*sinh(c + d*x)^2))]


    @test_int [cosh(c + d*x)^2/(a + b*sech(c + d*x)^2)^3, x, 7, ((a - 6*b)*x)/(2*a^4) + (b^(3/2)*(35*a^2 + 56*a*b + 24*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*a^4*(a + b)^(5/2)*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*a*d*(a + b - b*tanh(c + d*x)^2)^2) + (b*(2*a + 3*b)*tanh(c + d*x))/(4*a^2*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^2) + (b*(4*a + 3*b)*(a + 4*b)*tanh(c + d*x))/(8*a^3*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^1/(a + b*sech(c + d*x)^2)^3, x, 6, -((3*b*(4*(a + b)^2 + (2*a + b)^2)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(8*a^(7/2)*(a + b)^(5/2)*d)) + sinh(c + d*x)/(a^3*d) - (b^3*sinh(c + d*x))/(4*a^3*(a + b)*d*(a + b + a*sinh(c + d*x)^2)^2) + (3*b^2*(4*a + 3*b)*sinh(c + d*x))/(8*a^3*(a + b)^2*d*(a + b + a*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^1/(a + b*sech(c + d*x)^2)^3, x, 4, ((8*a^2 + 8*a*b + 3*b^2)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(8*a^(5/2)*(a + b)^(5/2)*d) - (b*cosh(c + d*x)^2*sinh(c + d*x))/(4*a*(a + b)*d*(a + b + a*sinh(c + d*x)^2)^2) - (3*b*(2*a + b)*sinh(c + d*x))/(8*a^2*(a + b)^2*d*(a + b + a*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^2/(a + b*sech(c + d*x)^2)^3, x, 4, (3*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*sqrt(b)*(a + b)^(5/2)*d) + tanh(c + d*x)/(4*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^2) + (3*tanh(c + d*x))/(8*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^3/(a + b*sech(c + d*x)^2)^3, x, 4, ((4*a + b)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(8*a^(3/2)*(a + b)^(5/2)*d) - (b*sinh(c + d*x))/(4*a*(a + b)*d*(a + b + a*sinh(c + d*x)^2)^2) + ((4*a + b)*sinh(c + d*x))/(8*a*(a + b)^2*d*(a + b + a*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^4/(a + b*sech(c + d*x)^2)^3, x, 4, ((a + 4*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*b^(3/2)*(a + b)^(5/2)*d) - (a*tanh(c + d*x))/(4*b*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^2) + ((a + 4*b)*tanh(c + d*x))/(8*b*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^5/(a + b*sech(c + d*x)^2)^3, x, 4, (3*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(8*sqrt(a)*(a + b)^(5/2)*d) + sinh(c + d*x)/(4*(a + b)*d*(a + b + a*sinh(c + d*x)^2)^2) + (3*sinh(c + d*x))/(8*(a + b)^2*d*(a + b + a*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^6/(a + b*sech(c + d*x)^2)^3, x, 4, ((3*a^2 + 8*a*b + 8*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*b^(5/2)*(a + b)^(5/2)*d) - (a*sech(c + d*x)^2*tanh(c + d*x))/(4*b*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^2) - (3*a*(a + 2*b)*tanh(c + d*x))/(8*b^2*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^7/(a + b*sech(c + d*x)^2)^3, x, 6, atan(sinh(c + d*x))/(b^3*d) - (sqrt(a)*(8*a^2 + 20*a*b + 15*b^2)*atan((sqrt(a)*sinh(c + d*x))/sqrt(a + b)))/(8*b^3*(a + b)^(5/2)*d) - (a*sinh(c + d*x))/(4*b*(a + b)*d*(a + b + a*sinh(c + d*x)^2)^2) - (a*(4*a + 7*b)*sinh(c + d*x))/(8*b^2*(a + b)^2*d*(a + b + a*sinh(c + d*x)^2))]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sech(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sech(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sech(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(a + b*sech(c + d*x)^2)*tanh(c + d*x)^4, x, 4, a*x - (a*tanh(c + d*x))/d - (a*tanh(c + d*x)^3)/(3*d) + (b*tanh(c + d*x)^5)/(5*d)]
    @test_int [(a + b*sech(c + d*x)^2)*tanh(c + d*x)^3, x, 4, (a*log(cosh(c + d*x)))/d + ((a - b)*sech(c + d*x)^2)/(2*d) + (b*sech(c + d*x)^4)/(4*d)]
    @test_int [(a + b*sech(c + d*x)^2)*tanh(c + d*x)^2, x, 4, a*x - (a*tanh(c + d*x))/d + (b*tanh(c + d*x)^3)/(3*d)]
    @test_int [(a + b*sech(c + d*x)^2)*tanh(c + d*x)^1, x, 3, (a*log(cosh(c + d*x)))/d - (b*sech(c + d*x)^2)/(2*d)]
    @test_int [(a + b*sech(c + d*x)^2)*tanh(c + d*x)^0, x, 3, a*x + (b*tanh(c + d*x))/d]
    @test_int [coth(c + d*x)^1*(a + b*sech(c + d*x)^2), x, 4, -((b*log(cosh(c + d*x)))/d) + ((a + b)*log(sinh(c + d*x)))/d]
    @test_int [coth(c + d*x)^2*(a + b*sech(c + d*x)^2), x, 4, a*x - ((a + b)*coth(c + d*x))/d]
    @test_int [coth(c + d*x)^3*(a + b*sech(c + d*x)^2), x, 4, -(((a + b)*csch(c + d*x)^2)/(2*d)) + (a*log(sinh(c + d*x)))/d]
    @test_int [coth(c + d*x)^4*(a + b*sech(c + d*x)^2), x, 4, a*x - (a*coth(c + d*x))/d - ((a + b)*coth(c + d*x)^3)/(3*d)]
    @test_int [coth(c + d*x)^5*(a + b*sech(c + d*x)^2), x, 4, -(((2*a + b)*csch(c + d*x)^2)/(2*d)) - ((a + b)*csch(c + d*x)^4)/(4*d) + (a*log(sinh(c + d*x)))/d]


    @test_int [(a + b*sech(c + d*x)^2)^2*tanh(c + d*x)^4, x, 4, a^2*x - (a^2*tanh(c + d*x))/d - (a^2*tanh(c + d*x)^3)/(3*d) + (b*(2*a + b)*tanh(c + d*x)^5)/(5*d) - (b^2*tanh(c + d*x)^7)/(7*d)]
    @test_int [(a + b*sech(c + d*x)^2)^2*tanh(c + d*x)^3, x, 4, (a^2*log(cosh(c + d*x)))/d + (a*(a - 2*b)*sech(c + d*x)^2)/(2*d) + ((2*a - b)*b*sech(c + d*x)^4)/(4*d) + (b^2*sech(c + d*x)^6)/(6*d)]
    @test_int [(a + b*sech(c + d*x)^2)^2*tanh(c + d*x)^2, x, 4, a^2*x - (a^2*tanh(c + d*x))/d + (b*(2*a + b)*tanh(c + d*x)^3)/(3*d) - (b^2*tanh(c + d*x)^5)/(5*d)]
    @test_int [(a + b*sech(c + d*x)^2)^2*tanh(c + d*x)^1, x, 4, (a^2*log(cosh(c + d*x)))/d - (a*b*sech(c + d*x)^2)/d - (b^2*sech(c + d*x)^4)/(4*d)]
    @test_int [(a + b*sech(c + d*x)^2)^2*tanh(c + d*x)^0, x, 4, a^2*x + (b*(2*a + b)*tanh(c + d*x))/d - (b^2*tanh(c + d*x)^3)/(3*d)]
    @test_int [coth(c + d*x)^1*(a + b*sech(c + d*x)^2)^2, x, 4, -((b*(2*a + b)*log(cosh(c + d*x)))/d) + ((a + b)^2*log(sinh(c + d*x)))/d + (b^2*sech(c + d*x)^2)/(2*d)]
    @test_int [coth(c + d*x)^2*(a + b*sech(c + d*x)^2)^2, x, 4, a^2*x - ((a + b)^2*coth(c + d*x))/d - (b^2*tanh(c + d*x))/d]
    @test_int [coth(c + d*x)^3*(a + b*sech(c + d*x)^2)^2, x, 4, -(((a + b)^2*csch(c + d*x)^2)/(2*d)) + (b^2*log(cosh(c + d*x)))/d + ((a^2 - b^2)*log(sinh(c + d*x)))/d]
    @test_int [coth(c + d*x)^4*(a + b*sech(c + d*x)^2)^2, x, 4, a^2*x - ((a^2 - b^2)*coth(c + d*x))/d - ((a + b)^2*coth(c + d*x)^3)/(3*d)]
    @test_int [coth(c + d*x)^5*(a + b*sech(c + d*x)^2)^2, x, 4, -((a*(a + b)*csch(c + d*x)^2)/d) - ((a + b)^2*csch(c + d*x)^4)/(4*d) + (a^2*log(sinh(c + d*x)))/d]
    @test_int [coth(c + d*x)^6*(a + b*sech(c + d*x)^2)^2, x, 4, a^2*x - (a^2*coth(c + d*x))/d - ((a^2 - b^2)*coth(c + d*x)^3)/(3*d) - ((a + b)^2*coth(c + d*x)^5)/(5*d)]
    @test_int [coth(c + d*x)^7*(a + b*sech(c + d*x)^2)^2, x, 5, -((a*(a + b)*csch(c + d*x)^2)/d) - ((a + b)^2*csch(c + d*x)^4)/(4*d) - ((b + a*cosh(c + d*x)^2)^3*csch(c + d*x)^6)/(6*(a + b)*d) + (a^2*log(sinh(c + d*x)))/d]


    @test_int [(a + b*sech(c + d*x)^2)^3*tanh(c + d*x)^4, x, 4, a^3*x - (a^3*tanh(c + d*x))/d - (a^3*tanh(c + d*x)^3)/(3*d) + (b*(3*a^2 + 3*a*b + b^2)*tanh(c + d*x)^5)/(5*d) - (b^2*(3*a + 2*b)*tanh(c + d*x)^7)/(7*d) + (b^3*tanh(c + d*x)^9)/(9*d)]
    @test_int [(a + b*sech(c + d*x)^2)^3*tanh(c + d*x)^3, x, 5, (a^3*log(cosh(c + d*x)))/d - (3*a^2*b*sech(c + d*x)^2)/(2*d) - (3*a*b^2*sech(c + d*x)^4)/(4*d) - (b^3*sech(c + d*x)^6)/(6*d) + ((b + a*cosh(c + d*x)^2)^4*sech(c + d*x)^8)/(8*b*d)]
    @test_int [(a + b*sech(c + d*x)^2)^3*tanh(c + d*x)^2, x, 4, a^3*x - (a^3*tanh(c + d*x))/d + (b*(3*a^2 + 3*a*b + b^2)*tanh(c + d*x)^3)/(3*d) - (b^2*(3*a + 2*b)*tanh(c + d*x)^5)/(5*d) + (b^3*tanh(c + d*x)^7)/(7*d)]
    @test_int [(a + b*sech(c + d*x)^2)^3*tanh(c + d*x)^1, x, 4, (a^3*log(cosh(c + d*x)))/d - (3*a^2*b*sech(c + d*x)^2)/(2*d) - (3*a*b^2*sech(c + d*x)^4)/(4*d) - (b^3*sech(c + d*x)^6)/(6*d)]
    @test_int [(a + b*sech(c + d*x)^2)^3*tanh(c + d*x)^0, x, 4, a^3*x + (b*(3*a^2 + 3*a*b + b^2)*tanh(c + d*x))/d - (b^2*(3*a + 2*b)*tanh(c + d*x)^3)/(3*d) + (b^3*tanh(c + d*x)^5)/(5*d)]
    @test_int [coth(c + d*x)^1*(a + b*sech(c + d*x)^2)^3, x, 4, -((b*(3*a^2 + 3*a*b + b^2)*log(cosh(c + d*x)))/d) + ((a + b)^3*log(sinh(c + d*x)))/d + (b^2*(3*a + b)*sech(c + d*x)^2)/(2*d) + (b^3*sech(c + d*x)^4)/(4*d)]
    @test_int [coth(c + d*x)^2*(a + b*sech(c + d*x)^2)^3, x, 4, a^3*x - ((a + b)^3*coth(c + d*x))/d - (b^2*(3*a + 2*b)*tanh(c + d*x))/d + (b^3*tanh(c + d*x)^3)/(3*d)]
    @test_int [coth(c + d*x)^3*(a + b*sech(c + d*x)^2)^3, x, 4, -(((a + b)^3*csch(c + d*x)^2)/(2*d)) + (b^2*(3*a + 2*b)*log(cosh(c + d*x)))/d + ((a - 2*b)*(a + b)^2*log(sinh(c + d*x)))/d - (b^3*sech(c + d*x)^2)/(2*d)]
    @test_int [coth(c + d*x)^4*(a + b*sech(c + d*x)^2)^3, x, 4, a^3*x - ((a - 2*b)*(a + b)^2*coth(c + d*x))/d - ((a + b)^3*coth(c + d*x)^3)/(3*d) + (b^3*tanh(c + d*x))/d]
    @test_int [coth(c + d*x)^5*(a + b*sech(c + d*x)^2)^3, x, 4, -(((2*a - b)*(a + b)^2*csch(c + d*x)^2)/(2*d)) - ((a + b)^3*csch(c + d*x)^4)/(4*d) - (b^3*log(cosh(c + d*x)))/d + ((a^3 + b^3)*log(sinh(c + d*x)))/d]
    @test_int [coth(c + d*x)^6*(a + b*sech(c + d*x)^2)^3, x, 4, a^3*x - ((a^3 + b^3)*coth(c + d*x))/d - ((a - 2*b)*(a + b)^2*coth(c + d*x)^3)/(3*d) - ((a + b)^3*coth(c + d*x)^5)/(5*d)]
    @test_int [coth(c + d*x)^7*(a + b*sech(c + d*x)^2)^3, x, 4, -((3*a^2*(a + b)*csch(c + d*x)^2)/(2*d)) - (3*a*(a + b)^2*csch(c + d*x)^4)/(4*d) - ((a + b)^3*csch(c + d*x)^6)/(6*d) + (a^3*log(sinh(c + d*x)))/d]


    @test_int [(a + b*sech(c + d*x)^2)^4, x, 4, a^4*x + (b*(2*a + b)*(2*a^2 + 2*a*b + b^2)*tanh(c + d*x))/d - (b^2*(6*a^2 + 8*a*b + 3*b^2)*tanh(c + d*x)^3)/(3*d) + (b^3*(4*a + 3*b)*tanh(c + d*x)^5)/(5*d) - (b^4*tanh(c + d*x)^7)/(7*d)]


    @test_int [(a + b*sech(c + d*x)^2)^5, x, 4, a^5*x + (b*(5*a^4 + 10*a^3*b + 10*a^2*b^2 + 5*a*b^3 + b^4)*tanh(c + d*x))/d - (b^2*(10*a^3 + 20*a^2*b + 15*a*b^2 + 4*b^3)*tanh(c + d*x)^3)/(3*d) + (b^3*(10*a^2 + 15*a*b + 6*b^2)*tanh(c + d*x)^5)/(5*d) - (b^4*(5*a + 4*b)*tanh(c + d*x)^7)/(7*d) + (b^5*tanh(c + d*x)^9)/(9*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tanh(c + d*x)^5/(a + b*sech(c + d*x)^2), x, 4, -(((a + 2*b)*log(cosh(c + d*x)))/(b^2*d)) + ((a + b)^2*log(b + a*cosh(c + d*x)^2))/(2*a*b^2*d) - sech(c + d*x)^2/(2*b*d)]
    @test_int [tanh(c + d*x)^4/(a + b*sech(c + d*x)^2), x, 6, x/a - ((a + b)^(3/2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(a*b^(3/2)*d) + tanh(c + d*x)/(b*d)]
    @test_int [tanh(c + d*x)^3/(a + b*sech(c + d*x)^2), x, 4, -(log(cosh(c + d*x))/(b*d)) + ((a + b)*log(b + a*cosh(c + d*x)^2))/(2*a*b*d)]
    @test_int [tanh(c + d*x)^2/(a + b*sech(c + d*x)^2), x, 5, x/a - (sqrt(a + b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(a*sqrt(b)*d)]
    @test_int [tanh(c + d*x)^1/(a + b*sech(c + d*x)^2), x, 2, log(b + a*cosh(c + d*x)^2)/(2*a*d)]
    @test_int [tanh(c + d*x)^0/(a + b*sech(c + d*x)^2), x, 3, x/a - (sqrt(b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(a*sqrt(a + b)*d)]
    @test_int [coth(c + d*x)^1/(a + b*sech(c + d*x)^2), x, 4, (b*log(b + a*cosh(c + d*x)^2))/(2*a*(a + b)*d) + log(sinh(c + d*x))/((a + b)*d)]
    @test_int [coth(c + d*x)^2/(a + b*sech(c + d*x)^2), x, 6, x/a - (b^(3/2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(a*(a + b)^(3/2)*d) - coth(c + d*x)/((a + b)*d)]
    @test_int [coth(c + d*x)^3/(a + b*sech(c + d*x)^2), x, 4, -(csch(c + d*x)^2/(2*(a + b)*d)) + (b^2*log(b + a*cosh(c + d*x)^2))/(2*a*(a + b)^2*d) + ((a + 2*b)*log(sinh(c + d*x)))/((a + b)^2*d)]
    @test_int [coth(c + d*x)^4/(a + b*sech(c + d*x)^2), x, 7, x/a - (b^(5/2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(a*(a + b)^(5/2)*d) - ((a + 2*b)*coth(c + d*x))/((a + b)^2*d) - coth(c + d*x)^3/(3*(a + b)*d)]


    @test_int [tanh(c + d*x)^5/(a + b*sech(c + d*x)^2)^2, x, 4, (a + b)^2/(2*a^2*b*d*(b + a*cosh(c + d*x)^2)) + log(cosh(c + d*x))/(b^2*d) + ((a^(-2) - b^(-2))*log(b + a*cosh(c + d*x)^2))/(2*d)]
    @test_int [tanh(c + d*x)^4/(a + b*sech(c + d*x)^2)^2, x, 6, x/a^2 + ((a - 2*b)*sqrt(a + b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*a^2*b^(3/2)*d) - ((a + b)*tanh(c + d*x))/(2*a*b*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^3/(a + b*sech(c + d*x)^2)^2, x, 4, (a + b)/(2*a^2*d*(b + a*cosh(c + d*x)^2)) + log(b + a*cosh(c + d*x)^2)/(2*a^2*d)]
    @test_int [tanh(c + d*x)^2/(a + b*sech(c + d*x)^2)^2, x, 6, x/a^2 - ((a + 2*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*a^2*sqrt(b)*sqrt(a + b)*d) - tanh(c + d*x)/(2*a*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^1/(a + b*sech(c + d*x)^2)^2, x, 4, b/(2*a^2*d*(b + a*cosh(c + d*x)^2)) + log(b + a*cosh(c + d*x)^2)/(2*a^2*d)]
    @test_int [tanh(c + d*x)^0/(a + b*sech(c + d*x)^2)^2, x, 5, x/a^2 - (sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*a^2*(a + b)^(3/2)*d) - (b*tanh(c + d*x))/(2*a*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^1/(a + b*sech(c + d*x)^2)^2, x, 4, b^2/(2*a^2*(a + b)*d*(b + a*cosh(c + d*x)^2)) + (b*(2*a + b)*log(b + a*cosh(c + d*x)^2))/(2*a^2*(a + b)^2*d) + log(sinh(c + d*x))/((a + b)^2*d)]
    @test_int [coth(c + d*x)^2/(a + b*sech(c + d*x)^2)^2, x, 7, x/a^2 - (b^(3/2)*(5*a + 2*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*a^2*(a + b)^(5/2)*d) - ((2*a - b)*coth(c + d*x))/(2*a*(a + b)^2*d) - (b*coth(c + d*x))/(2*a*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^3/(a + b*sech(c + d*x)^2)^2, x, 4, b^3/(2*a^2*(a + b)^2*d*(b + a*cosh(c + d*x)^2)) - csch(c + d*x)^2/(2*(a + b)^2*d) + (b^2*(3*a + b)*log(b + a*cosh(c + d*x)^2))/(2*a^2*(a + b)^3*d) + ((a + 3*b)*log(sinh(c + d*x)))/((a + b)^3*d)]
    @test_int [coth(c + d*x)^4/(a + b*sech(c + d*x)^2)^2, x, 8, x/a^2 - (b^(5/2)*(7*a + 2*b)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(2*a^2*(a + b)^(7/2)*d) - ((2*a^2 + 6*a*b - b^2)*coth(c + d*x))/(2*a*(a + b)^3*d) - ((2*a - 3*b)*coth(c + d*x)^3)/(6*a*(a + b)^2*d) - (b*coth(c + d*x)^3)/(2*a*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]


    @test_int [tanh(c + d*x)^6/(a + b*sech(c + d*x)^2)^3, x, 7, x/a^3 - (sqrt(a + b)*(3*a^2 - 4*a*b + 8*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*a^3*b^(5/2)*d) - ((a + b)*tanh(c + d*x)^3)/(4*a*b*d*(a + b - b*tanh(c + d*x)^2)^2) + ((3*a - 4*b)*(a + b)*tanh(c + d*x))/(8*a^2*b^2*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^5/(a + b*sech(c + d*x)^2)^3, x, 4, -(a + b)^2/(4*a^3*d*(b + a*cosh(c + d*x)^2)^2) + (a + b)/(a^3*d*(b + a*cosh(c + d*x)^2)) + log(b + a*cosh(c + d*x)^2)/(2*a^3*d)]
    @test_int [tanh(c + d*x)^4/(a + b*sech(c + d*x)^2)^3, x, 7, x/a^3 + ((a^2 - 4*a*b - 8*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*a^3*b^(3/2)*sqrt(a + b)*d) - ((a + b)*tanh(c + d*x))/(4*a*b*d*(a + b - b*tanh(c + d*x)^2)^2) + ((a - 4*b)*tanh(c + d*x))/(8*a^2*b*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^3/(a + b*sech(c + d*x)^2)^3, x, 4, -(b*(a + b))/(4*a^3*d*(b + a*cosh(c + d*x)^2)^2) + (a + 2*b)/(2*a^3*d*(b + a*cosh(c + d*x)^2)) + log(b + a*cosh(c + d*x)^2)/(2*a^3*d)]
    @test_int [tanh(c + d*x)^2/(a + b*sech(c + d*x)^2)^3, x, 7, x/a^3 - ((3*a^2 + 12*a*b + 8*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*a^3*sqrt(b)*(a + b)^(3/2)*d) - tanh(c + d*x)/(4*a*d*(a + b - b*tanh(c + d*x)^2)^2) - ((3*a + 4*b)*tanh(c + d*x))/(8*a^2*(a + b)*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [tanh(c + d*x)^1/(a + b*sech(c + d*x)^2)^3, x, 4, -b^2/(4*a^3*d*(b + a*cosh(c + d*x)^2)^2) + b/(a^3*d*(b + a*cosh(c + d*x)^2)) + log(b + a*cosh(c + d*x)^2)/(2*a^3*d)]
    @test_int [tanh(c + d*x)^0/(a + b*sech(c + d*x)^2)^3, x, 6, x/a^3 - (sqrt(b)*(15*a^2 + 20*a*b + 8*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*a^3*(a + b)^(5/2)*d) - (b*tanh(c + d*x))/(4*a*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^2) - (b*(7*a + 4*b)*tanh(c + d*x))/(8*a^2*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^1/(a + b*sech(c + d*x)^2)^3, x, 4, -(b^3/(4*a^3*(a + b)*d*(b + a*cosh(c + d*x)^2)^2)) + (b^2*(3*a + 2*b))/(2*a^3*(a + b)^2*d*(b + a*cosh(c + d*x)^2)) + (b*(3*a^2 + 3*a*b + b^2)*log(b + a*cosh(c + d*x)^2))/(2*a^3*(a + b)^3*d) + log(sinh(c + d*x))/((a + b)^3*d)]
    @test_int [coth(c + d*x)^2/(a + b*sech(c + d*x)^2)^3, x, 8, x/a^3 - (b^(3/2)*(35*a^2 + 28*a*b + 8*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*a^3*(a + b)^(7/2)*d) - ((8*a^2 - 11*a*b - 4*b^2)*coth(c + d*x))/(8*a^2*(a + b)^3*d) - (b*coth(c + d*x))/(4*a*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^2) - (b*(9*a + 4*b)*coth(c + d*x))/(8*a^2*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2))]
    @test_int [coth(c + d*x)^3/(a + b*sech(c + d*x)^2)^3, x, 4, -(b^4/(4*a^3*(a + b)^2*d*(b + a*cosh(c + d*x)^2)^2)) + (b^3*(2*a + b))/(a^3*(a + b)^3*d*(b + a*cosh(c + d*x)^2)) - csch(c + d*x)^2/(2*(a + b)^3*d) + (b^2*(6*a^2 + 4*a*b + b^2)*log(b + a*cosh(c + d*x)^2))/(2*a^3*(a + b)^4*d) + ((a + 4*b)*log(sinh(c + d*x)))/((a + b)^4*d)]
    @test_int [coth(c + d*x)^4/(a + b*sech(c + d*x)^2)^3, x, 9, x/a^3 - (b^(5/2)*(63*a^2 + 36*a*b + 8*b^2)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(8*a^3*(a + b)^(9/2)*d) - ((8*a^3 + 32*a^2*b - 15*a*b^2 - 4*b^3)*coth(c + d*x))/(8*a^2*(a + b)^4*d) - ((8*a^2 - 39*a*b - 12*b^2)*coth(c + d*x)^3)/(24*a^2*(a + b)^3*d) - (b*coth(c + d*x)^3)/(4*a*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^2) - (b*(11*a + 4*b)*coth(c + d*x)^3)/(8*a^2*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2))]


    @test_int [1/(a + b*sech(c + d*x)^2)^4, x, 7, x/a^4 - (sqrt(b)*(35*a^3 + 70*a^2*b + 56*a*b^2 + 16*b^3)*atanh((sqrt(b)*tanh(c + d*x))/sqrt(a + b)))/(16*a^4*(a + b)^(7/2)*d) - (b*tanh(c + d*x))/(6*a*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^3) - (b*(11*a + 6*b)*tanh(c + d*x))/(24*a^2*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2)^2) - (b*(19*a^2 + 22*a*b + 8*b^2)*tanh(c + d*x))/(16*a^3*(a + b)^3*d*(a + b - b*tanh(c + d*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sech(e+f*x)^2)^(p/2)*when*a+b=0=#


    @test_int [(1 - sech(x)^2)^(3/2), x, 4, coth(x)*log(cosh(x))*sqrt(tanh(x)^2) - (1/2)*coth(x)*(tanh(x)^2)^(3/2)]
    @test_int [sqrt(1 - sech(x)^2), x, 3, coth(x)*log(cosh(x))*sqrt(tanh(x)^2)]
    @test_int [1/sqrt(1 - sech(x)^2), x, 3, (log(sinh(x))*tanh(x))/sqrt(tanh(x)^2)]


    @test_int [(-1 + sech(x)^2)^(3/2), x, 4, (-coth(x))*log(cosh(x))*sqrt(-tanh(x)^2) + (1/2)*tanh(x)*sqrt(-tanh(x)^2)]
    @test_int [sqrt(-1 + sech(x)^2), x, 3, coth(x)*log(cosh(x))*sqrt(-tanh(x)^2)]
    @test_int [1/sqrt(-1 + sech(x)^2), x, 3, (log(sinh(x))*tanh(x))/sqrt(-tanh(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sech(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(a + b*sech(x)^2)*tanh(x)^5, x, 7, sqrt(a)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a)) - sqrt(a + b*sech(x)^2) + ((a + 2*b)*(a + b*sech(x)^2)^(3/2))/(3*b^2) - (a + b*sech(x)^2)^(5/2)/(5*b^2)]
    @test_int [sqrt(a + b*sech(x)^2)*tanh(x)^4, x, 9, -((a^2 + 6*a*b - 3*b^2)*atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2)))/(8*b^(3/2)) + sqrt(a)*atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2)) + ((a - 3*b)*tanh(x)*sqrt(a + b - b*tanh(x)^2))/(8*b) - (tanh(x)^3*sqrt(a + b - b*tanh(x)^2))/4]
    @test_int [sqrt(a + b*sech(x)^2)*tanh(x)^3, x, 6, sqrt(a)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a)) - sqrt(a + b*sech(x)^2) + (a + b*sech(x)^2)^(3/2)/(3*b)]
    @test_int [sqrt(a + b*sech(x)^2)*tanh(x)^2, x, 8, -((a - b)*atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2)))/(2*sqrt(b)) + sqrt(a)*atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2)) - (tanh(x)*sqrt(a + b - b*tanh(x)^2))/2]
    @test_int [sqrt(a + b*sech(x)^2)*tanh(x)^1, x, 5, sqrt(a)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a)) - sqrt(a + b*sech(x)^2)]
    @test_int [sqrt(a + b*sech(x)^2)*tanh(x)^0, x, 6, sqrt(b)*atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2)) + sqrt(a)*atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))]
    @test_int [coth(x)^1*sqrt(a + b*sech(x)^2), x, 7, sqrt(a)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a)) - sqrt(a + b)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a + b))]
    @test_int [coth(x)^2*sqrt(a + b*sech(x)^2), x, 6, sqrt(a)*atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2)) - coth(x)*sqrt(a + b - b*tanh(x)^2)]
    @test_int [coth(x)^3*sqrt(a + b*sech(x)^2), x, 8, sqrt(a)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a)) - ((2*a + b)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a + b)))/(2*sqrt(a + b)) - (1/2)*coth(x)^2*sqrt(a + b*sech(x)^2)]
    @test_int [coth(x)^4*sqrt(a + b*sech(x)^2), x, 7, sqrt(a)*atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2)) - ((3*a + 2*b)*coth(x)*sqrt(a + b - b*tanh(x)^2))/(3*(a + b)) - (coth(x)^3*sqrt(a + b - b*tanh(x)^2))/3]
    @test_int [coth(x)^5*sqrt(a + b*sech(x)^2), x, 9, sqrt(a)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a)) - ((8*a^2 + 12*a*b + 3*b^2)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a + b)))/(8*(a + b)^(3/2)) - ((4*a + 3*b)*coth(x)^2*sqrt(a + b*sech(x)^2))/(8*(a + b)) - (1/4)*coth(x)^4*sqrt(a + b*sech(x)^2)]


    @test_int [(a + b*sech(x)^2)^(3/2)*tanh(x)^3, x, 7, a^(3/2)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a)) - a*sqrt(a + b*sech(x)^2) - (a + b*sech(x)^2)^(3/2)/3 + (a + b*sech(x)^2)^(5/2)/(5*b)]
    @test_int [(a + b*sech(x)^2)^(3/2)*tanh(x)^2, x, 9, -((3*a^2 - 6*a*b - b^2)*atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2)))/(8*sqrt(b)) + a^(3/2)*atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2)) - ((5*a + b)*tanh(x)*sqrt(a + b - b*tanh(x)^2))/8 + (b*tanh(x)^3*sqrt(a + b - b*tanh(x)^2))/4]
    @test_int [(a + b*sech(x)^2)^(3/2)*tanh(x)^1, x, 6, a^(3/2)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a)) - a*sqrt(a + b*sech(x)^2) - (a + b*sech(x)^2)^(3/2)/3]
    @test_int [(a + b*sech(x)^2)^(3/2)*tanh(x)^0, x, 7, (sqrt(b)*(3*a + b)*atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2)))/2 + a^(3/2)*atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2)) + (b*tanh(x)*sqrt(a + b - b*tanh(x)^2))/2]
    @test_int [coth(x)^1*(a + b*sech(x)^2)^(3/2), x, 8, a^(3/2)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a)) - (a + b)^(3/2)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a + b)) + b*sqrt(a + b*sech(x)^2)]
    @test_int [coth(x)^2*(a + b*sech(x)^2)^(3/2), x, 8, -(b^(3/2)*atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2))) + a^(3/2)*atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2)) - (a + b)*coth(x)*sqrt(a + b - b*tanh(x)^2)]


    @test_int [(a + b*sech(c + d*x)^2)^(5/2), x, 8, (sqrt(b)*(15*a^2 + 10*a*b + 3*b^2)*atan((sqrt(b)*tanh(c + d*x))/sqrt(a + b - b*tanh(c + d*x)^2)))/(8*d) + (a^(5/2)*atanh((sqrt(a)*tanh(c + d*x))/sqrt(a + b - b*tanh(c + d*x)^2)))/d + (b*(7*a + 3*b)*tanh(c + d*x)*sqrt(a + b - b*tanh(c + d*x)^2))/(8*d) + (b*tanh(c + d*x)*(a + b - b*tanh(c + d*x)^2)^(3/2))/(4*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tanh(x)^5/sqrt(a + b*sech(x)^2), x, 6, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/sqrt(a) + ((a + 2*b)*sqrt(a + b*sech(x)^2))/b^2 - (a + b*sech(x)^2)^(3/2)/(3*b^2)]
    @test_int [tanh(x)^4/sqrt(a + b*sech(x)^2), x, 8, -((a + 3*b)*atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2)))/(2*b^(3/2)) + atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/sqrt(a) + (tanh(x)*sqrt(a + b - b*tanh(x)^2))/(2*b)]
    @test_int [tanh(x)^3/sqrt(a + b*sech(x)^2), x, 5, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/sqrt(a) + sqrt(a + b*sech(x)^2)/b]
    @test_int [tanh(x)^2/sqrt(a + b*sech(x)^2), x, 7, -(atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/sqrt(b)) + atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/sqrt(a)]
    @test_int [tanh(x)^1/sqrt(a + b*sech(x)^2), x, 4, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/sqrt(a)]
    @test_int [tanh(x)^0/sqrt(a + b*sech(x)^2), x, 3, atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/sqrt(a)]
    @test_int [coth(x)^1/sqrt(a + b*sech(x)^2), x, 7, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/sqrt(a) - atanh(sqrt(a + b*sech(x)^2)/sqrt(a + b))/sqrt(a + b)]
    @test_int [coth(x)^2/sqrt(a + b*sech(x)^2), x, 6, atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/sqrt(a) - (coth(x)*sqrt(a + b - b*tanh(x)^2))/(a + b)]
    @test_int [coth(x)^3/sqrt(a + b*sech(x)^2), x, 8, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/sqrt(a) - ((2*a + 3*b)*atanh(sqrt(a + b*sech(x)^2)/sqrt(a + b)))/(2*(a + b)^(3/2)) - (coth(x)^2*sqrt(a + b*sech(x)^2))/(2*(a + b))]


    @test_int [tanh(x)^5/(a + b*sech(x)^2)^(3/2), x, 6, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/a^(3/2) - (a + b)^2/(a*b^2*sqrt(a + b*sech(x)^2)) - sqrt(a + b*sech(x)^2)/b^2]
    @test_int [tanh(x)^4/(a + b*sech(x)^2)^(3/2), x, 8, atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/b^(3/2) + atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/a^(3/2) - ((a + b)*tanh(x))/(a*b*sqrt(a + b - b*tanh(x)^2))]
    @test_int [tanh(x)^3/(a + b*sech(x)^2)^(3/2), x, 5, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/a^(3/2) - (a + b)/(a*b*sqrt(a + b*sech(x)^2))]
    @test_int [tanh(x)^2/(a + b*sech(x)^2)^(3/2), x, 5, atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/a^(3/2) - tanh(x)/(a*sqrt(a + b - b*tanh(x)^2))]
    @test_int [tanh(x)^1/(a + b*sech(x)^2)^(3/2), x, 5, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/a^(3/2) - 1/(a*sqrt(a + b*sech(x)^2))]
    @test_int [tanh(x)^0/(a + b*sech(x)^2)^(3/2), x, 4, atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/a^(3/2) - (b*tanh(x))/(a*(a + b)*sqrt(a + b - b*tanh(x)^2))]
    @test_int [coth(x)^1/(a + b*sech(x)^2)^(3/2), x, 8, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/a^(3/2) - atanh(sqrt(a + b*sech(x)^2)/sqrt(a + b))/(a + b)^(3/2) - b/(a*(a + b)*sqrt(a + b*sech(x)^2))]
    @test_int [coth(x)^2/(a + b*sech(x)^2)^(3/2), x, 7, atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/a^(3/2) - (b*coth(x))/(a*(a + b)*sqrt(a + b - b*tanh(x)^2)) - ((a - b)*coth(x)*sqrt(a + b - b*tanh(x)^2))/(a*(a + b)^2)]


    @test_int [tanh(x)^6/(a + b*sech(x)^2)^(5/2), x, 9, -(atan((sqrt(b)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/b^(5/2)) + atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/a^(5/2) - ((a + b)*tanh(x)^3)/(3*a*b*(a + b - b*tanh(x)^2)^(3/2)) - ((a^(-2) - b^(-2))*tanh(x))/sqrt(a + b - b*tanh(x)^2)]
    @test_int [tanh(x)^5/(a + b*sech(x)^2)^(5/2), x, 6, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/a^(5/2) - (a + b)^2/(3*a*b^2*(a + b*sech(x)^2)^(3/2)) - (1/a^2 - 1/b^2)/sqrt(a + b*sech(x)^2)]
    @test_int [tanh(x)^4/(a + b*sech(x)^2)^(5/2), x, 7, atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/a^(5/2) - ((a + b)*tanh(x))/(3*a*b*(a + b - b*tanh(x)^2)^(3/2)) + ((a - 3*b)*tanh(x))/(3*a^2*b*sqrt(a + b - b*tanh(x)^2))]
    @test_int [tanh(x)^3/(a + b*sech(x)^2)^(5/2), x, 6, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/a^(5/2) - (a + b)/(3*a*b*(a + b*sech(x)^2)^(3/2)) - 1/(a^2*sqrt(a + b*sech(x)^2))]
    @test_int [tanh(x)^2/(a + b*sech(x)^2)^(5/2), x, 7, atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/a^(5/2) - tanh(x)/(3*a*(a + b - b*tanh(x)^2)^(3/2)) - ((2*a + 3*b)*tanh(x))/(3*a^2*(a + b)*sqrt(a + b - b*tanh(x)^2))]
    @test_int [tanh(x)^1/(a + b*sech(x)^2)^(5/2), x, 6, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/a^(5/2) - 1/(3*a*(a + b*sech(x)^2)^(3/2)) - 1/(a^2*sqrt(a + b*sech(x)^2))]
    @test_int [tanh(x)^0/(a + b*sech(x)^2)^(5/2), x, 6, atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/a^(5/2) - (b*tanh(x))/(3*a*(a + b)*(a + b - b*tanh(x)^2)^(3/2)) - (b*(5*a + 3*b)*tanh(x))/(3*a^2*(a + b)^2*sqrt(a + b - b*tanh(x)^2))]
    @test_int [coth(x)^1/(a + b*sech(x)^2)^(5/2), x, 9, atanh(sqrt(a + b*sech(x)^2)/sqrt(a))/a^(5/2) - atanh(sqrt(a + b*sech(x)^2)/sqrt(a + b))/(a + b)^(5/2) - b/(3*a*(a + b)*(a + b*sech(x)^2)^(3/2)) - (b*(2*a + b))/(a^2*(a + b)^2*sqrt(a + b*sech(x)^2))]
    @test_int [coth(x)^2/(a + b*sech(x)^2)^(5/2), x, 8, atanh((sqrt(a)*tanh(x))/sqrt(a + b - b*tanh(x)^2))/a^(5/2) - (b*coth(x))/(3*a*(a + b)*(a + b - b*tanh(x)^2)^(3/2)) - (b*(7*a + 3*b)*coth(x))/(3*a^2*(a + b)^2*sqrt(a + b - b*tanh(x)^2)) - ((a - 3*b)*(3*a + b)*coth(x)*sqrt(a + b - b*tanh(x)^2))/(3*a^2*(a + b)^3)]


    @test_int [1/(a + b*sech(c + d*x)^2)^(7/2), x, 7, atanh((sqrt(a)*tanh(c + d*x))/sqrt(a + b - b*tanh(c + d*x)^2))/(a^(7/2)*d) - (b*tanh(c + d*x))/(5*a*(a + b)*d*(a + b - b*tanh(c + d*x)^2)^(5/2)) - (b*(9*a + 5*b)*tanh(c + d*x))/(15*a^2*(a + b)^2*d*(a + b - b*tanh(c + d*x)^2)^(3/2)) - (b*(33*a^2 + 40*a*b + 15*b^2)*tanh(c + d*x))/(15*a^3*(a + b)^3*d*sqrt(a + b - b*tanh(c + d*x)^2))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sech(e+f*x)^2)^p*when*p*symbolic=#


    #= ::Section:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sech(e+f*x)^3)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sech(e+f*x)^4)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sech(e+f*x)^n)^p=#
    end
