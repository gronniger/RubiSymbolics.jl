@testset "6.1.7 hyper^m (a+b sinh^n)^p" begin
    @variables a, b, c, d, e, f, m, n, p, x

    #= ::Package:: =#

    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sinh(c + d*x)^4*(a + b*sinh(c + d*x)^2), x, 4, ((6*a - 5*b)*x)/16 - ((6*a - 5*b)*cosh(c + d*x)*sinh(c + d*x))/(16*d) + ((6*a - 5*b)*cosh(c + d*x)*sinh(c + d*x)^3)/(24*d) + (b*cosh(c + d*x)*sinh(c + d*x)^5)/(6*d)]
    @test_int [sinh(c + d*x)^3*(a + b*sinh(c + d*x)^2), x, 3, -(((a - b)*cosh(c + d*x))/d) + ((a - 2*b)*cosh(c + d*x)^3)/(3*d) + (b*cosh(c + d*x)^5)/(5*d)]
    @test_int [sinh(c + d*x)^2*(a + b*sinh(c + d*x)^2), x, 3, -((4*a - 3*b)*x)/8 + ((4*a - 3*b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b*cosh(c + d*x)*sinh(c + d*x)^3)/(4*d)]
    @test_int [sinh(c + d*x)^1*(a + b*sinh(c + d*x)^2), x, 2, ((a - b)*cosh(c + d*x))/d + (b*cosh(c + d*x)^3)/(3*d)]
    @test_int [sinh(c + d*x)^0*(a + b*sinh(c + d*x)^2), x, 3, a*x - (b*x)/2 + (b*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^1*(a + b*sinh(c + d*x)^2), x, 2, -((a*atanh(cosh(c + d*x)))/d) + (b*cosh(c + d*x))/d]
    @test_int [csch(c + d*x)^2*(a + b*sinh(c + d*x)^2), x, 2, b*x - (a*coth(c + d*x))/d]
    @test_int [csch(c + d*x)^3*(a + b*sinh(c + d*x)^2), x, 2, ((a - 2*b)*atanh(cosh(c + d*x)))/(2*d) - (a*coth(c + d*x)*csch(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*sinh(c + d*x)^2), x, 3, ((2*a - 3*b)*coth(c + d*x))/(3*d) - (a*coth(c + d*x)*csch(c + d*x)^2)/(3*d)]


    @test_int [sinh(c + d*x)^4*(a + b*sinh(c + d*x)^2)^2, x, 6, (1/128)*(48*a^2 - 80*a*b + 35*b^2)*x - ((80*a^2 - 176*a*b + 93*b^2)*cosh(c + d*x)*sinh(c + d*x))/(128*d) + ((48*a^2 - 208*a*b + 139*b^2)*cosh(c + d*x)^3*sinh(c + d*x))/(192*d) + ((16*a - 13*b)*b*cosh(c + d*x)^5*sinh(c + d*x))/(48*d) + (b^2*cosh(c + d*x)^3*sinh(c + d*x)^5)/(8*d)]
    @test_int [sinh(c + d*x)^3*(a + b*sinh(c + d*x)^2)^2, x, 3, -(((a - b)^2*cosh(c + d*x))/d) + ((a - 3*b)*(a - b)*cosh(c + d*x)^3)/(3*d) + ((2*a - 3*b)*b*cosh(c + d*x)^5)/(5*d) + (b^2*cosh(c + d*x)^7)/(7*d)]
    @test_int [sinh(c + d*x)^2*(a + b*sinh(c + d*x)^2)^2, x, 2, (-(1/16))*(8*a^2 - 12*a*b + 5*b^2)*x + ((8*a^2 - 20*a*b + 11*b^2)*cosh(c + d*x)*sinh(c + d*x))/(16*d) + ((4*a - 3*b)*b*cosh(c + d*x)^3*sinh(c + d*x))/(8*d) + (b^2*cosh(c + d*x)^3*sinh(c + d*x)^3)/(6*d), (-(1/16))*(8*a^2 - 12*a*b + 5*b^2)*x + ((16*a^2 - 36*a*b + 15*b^2)*cosh(c + d*x)*sinh(c + d*x))/(48*d) + ((4*a - 5*b)*b*cosh(c + d*x)*sinh(c + d*x)^3)/(24*d) + (cosh(c + d*x)*sinh(c + d*x)*(a + b*sinh(c + d*x)^2)^2)/(6*d)]
    @test_int [sinh(c + d*x)^1*(a + b*sinh(c + d*x)^2)^2, x, 3, ((a - b)^2*cosh(c + d*x))/d + (2*(a - b)*b*cosh(c + d*x)^3)/(3*d) + (b^2*cosh(c + d*x)^5)/(5*d)]
    @test_int [sinh(c + d*x)^0*(a + b*sinh(c + d*x)^2)^2, x, 1, (1/8)*(8*a^2 - 8*a*b + 3*b^2)*x + ((8*a - 3*b)*b*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b^2*cosh(c + d*x)*sinh(c + d*x)^3)/(4*d)]
    @test_int [csch(c + d*x)^1*(a + b*sinh(c + d*x)^2)^2, x, 4, -((a^2*atanh(cosh(c + d*x)))/d) + ((2*a - b)*b*cosh(c + d*x))/d + (b^2*cosh(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^2*(a + b*sinh(c + d*x)^2)^2, x, 4, (1/2)*(4*a - b)*b*x - (a^2*coth(c + d*x))/d + (b^2*cosh(c + d*x)*sinh(c + d*x))/(2*d), (1/2)*(4*a - b)*b*x - (a^2*cosh(c + d*x)^2*coth(c + d*x))/d + ((2*a^2 + b^2)*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^3*(a + b*sinh(c + d*x)^2)^2, x, 5, (a*(a - 4*b)*atanh(cosh(c + d*x)))/(2*d) + (b^2*cosh(c + d*x))/d - (a^2*coth(c + d*x)*csch(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*sinh(c + d*x)^2)^2, x, 4, b^2*x + (a*(a - 2*b)*coth(c + d*x))/d - (a^2*coth(c + d*x)^3)/(3*d)]


    @test_int [sinh(c + d*x)^4*(a + b*sinh(c + d*x)^2)^3, x, 7, (3/256)*(4*a - 3*b)*(8*a^2 - 14*a*b + 7*b^2)*x - ((576*a^3 - 1744*a^2*b + 1678*a*b^2 - 525*b^3)*cosh(c + d*x)*sinh(c + d*x))/(1280*d) + ((48*a^3 - 272*a^2*b + 314*a*b^2 - 105*b^3)*cosh(c + d*x)^3*sinh(c + d*x))/(640*d) + (3*(2*a - 3*b)*cosh(c + d*x)^5*sinh(c + d*x)^3*(a - (a - b)*tanh(c + d*x)^2)^2)/(80*d) + (cosh(c + d*x)^7*sinh(c + d*x)^3*(a - (a - b)*tanh(c + d*x)^2)^3)/(10*d) - (b*cosh(c + d*x)^3*sinh(c + d*x)^3*(a*(14*a - 9*b) - (22*a - 21*b)*(a - b)*tanh(c + d*x)^2))/(160*d)]
    @test_int [sinh(c + d*x)^3*(a + b*sinh(c + d*x)^2)^3, x, 3, -(((a - b)^3*cosh(c + d*x))/d) + ((a - 4*b)*(a - b)^2*cosh(c + d*x)^3)/(3*d) + (3*(a - 2*b)*(a - b)*b*cosh(c + d*x)^5)/(5*d) + ((3*a - 4*b)*b^2*cosh(c + d*x)^7)/(7*d) + (b^3*cosh(c + d*x)^9)/(9*d)]
    @test_int [sinh(c + d*x)^2*(a + b*sinh(c + d*x)^2)^3, x, 3, (-(1/128))*(64*a^3 - 144*a^2*b + 120*a*b^2 - 35*b^3)*x + ((96*a^3 - 376*a^2*b + 360*a*b^2 - 105*b^3)*cosh(c + d*x)*sinh(c + d*x))/(384*d) + (b*(24*a^2 - 64*a*b + 35*b^2)*cosh(c + d*x)*sinh(c + d*x)^3)/(192*d) + ((6*a - 7*b)*cosh(c + d*x)*sinh(c + d*x)*(a + b*sinh(c + d*x)^2)^2)/(48*d) + (cosh(c + d*x)*sinh(c + d*x)*(a + b*sinh(c + d*x)^2)^3)/(8*d)]
    @test_int [sinh(c + d*x)^1*(a + b*sinh(c + d*x)^2)^3, x, 3, ((a - b)^3*cosh(c + d*x))/d + ((a - b)^2*b*cosh(c + d*x)^3)/d + (3*(a - b)*b^2*cosh(c + d*x)^5)/(5*d) + (b^3*cosh(c + d*x)^7)/(7*d)]
    @test_int [sinh(c + d*x)^0*(a + b*sinh(c + d*x)^2)^3, x, 2, (1/16)*(2*a - b)*(8*a^2 - 8*a*b + 5*b^2)*x + (b*(64*a^2 - 54*a*b + 15*b^2)*cosh(c + d*x)*sinh(c + d*x))/(48*d) + (5*(2*a - b)*b^2*cosh(c + d*x)*sinh(c + d*x)^3)/(24*d) + (b*cosh(c + d*x)*sinh(c + d*x)*(a + b*sinh(c + d*x)^2)^2)/(6*d)]
    @test_int [csch(c + d*x)^1*(a + b*sinh(c + d*x)^2)^3, x, 4, -((a^3*atanh(cosh(c + d*x)))/d) + (b*(3*a^2 - 3*a*b + b^2)*cosh(c + d*x))/d + ((3*a - 2*b)*b^2*cosh(c + d*x)^3)/(3*d) + (b^3*cosh(c + d*x)^5)/(5*d)]
    @test_int [csch(c + d*x)^2*(a + b*sinh(c + d*x)^2)^3, x, 5, (3/8)*b*(8*a^2 - 4*a*b + b^2)*x - (a*(2*a + b)*(4*a + b)*coth(c + d*x))/(8*d) + (b*cosh(c + d*x)^4*coth(c + d*x)*(a - (a - b)*tanh(c + d*x)^2)^2)/(4*d) + (b*cosh(c + d*x)^2*coth(c + d*x)*(a*(4*a + b) - (4*a - 3*b)*(a - b)*tanh(c + d*x)^2))/(8*d)]
    @test_int [csch(c + d*x)^3*(a + b*sinh(c + d*x)^2)^3, x, 5, (a^2*(a - 6*b)*atanh(cosh(c + d*x)))/(2*d) + ((3*a - b)*b^2*cosh(c + d*x))/d + (b^3*cosh(c + d*x)^3)/(3*d) - (a^3*coth(c + d*x)*csch(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*sinh(c + d*x)^2)^3, x, 5, (1/2)*(6*a - b)*b^2*x + (a*(2*a^2 - 5*a*b - 2*b^2)*coth(c + d*x))/(2*d) - (a^2*(2*a + 3*b)*coth(c + d*x)^3)/(6*d) + (b*cosh(c + d*x)^2*coth(c + d*x)^3*(a - (a - b)*tanh(c + d*x)^2)^2)/(2*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sinh(c + d*x)^7/(a + b*sinh(c + d*x)^2), x, 4, -((a^3*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(sqrt(a - b)*b^(7/2)*d)) + ((a^2 + a*b + b^2)*cosh(c + d*x))/(b^3*d) - ((a + 2*b)*cosh(c + d*x)^3)/(3*b^2*d) + cosh(c + d*x)^5/(5*b*d)]
    @test_int [sinh(c + d*x)^6/(a + b*sinh(c + d*x)^2), x, 6, ((8*a^2 + 4*a*b + 3*b^2)*x)/(8*b^3) - (a^(5/2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a - b)*b^3*d) - ((4*a + 3*b)*cosh(c + d*x)*sinh(c + d*x))/(8*b^2*d) + (cosh(c + d*x)*sinh(c + d*x)^3)/(4*b*d)]
    @test_int [sinh(c + d*x)^5/(a + b*sinh(c + d*x)^2), x, 4, (a^2*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(sqrt(a - b)*b^(5/2)*d) - ((a + b)*cosh(c + d*x))/(b^2*d) + cosh(c + d*x)^3/(3*b*d)]
    @test_int [sinh(c + d*x)^4/(a + b*sinh(c + d*x)^2), x, 5, -(((2*a + b)*x)/(2*b^2)) + (a^(3/2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a - b)*b^2*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*b*d)]
    @test_int [sinh(c + d*x)^3/(a + b*sinh(c + d*x)^2), x, 3, -((a*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(sqrt(a - b)*b^(3/2)*d)) + cosh(c + d*x)/(b*d)]
    @test_int [sinh(c + d*x)^2/(a + b*sinh(c + d*x)^2), x, 3, x/b - (sqrt(a)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a - b)*b*d)]
    @test_int [sinh(c + d*x)^1/(a + b*sinh(c + d*x)^2), x, 2, atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b))/(sqrt(a - b)*sqrt(b)*d)]
    @test_int [sinh(c + d*x)^0/(a + b*sinh(c + d*x)^2), x, 2, atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a))/(sqrt(a)*sqrt(a - b)*d)]
    @test_int [csch(c + d*x)^1/(a + b*sinh(c + d*x)^2), x, 4, -((sqrt(b)*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(a*sqrt(a - b)*d)) - atanh(cosh(c + d*x))/(a*d)]
    @test_int [csch(c + d*x)^2/(a + b*sinh(c + d*x)^2), x, 3, -((b*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(a^(3/2)*sqrt(a - b)*d)) - coth(c + d*x)/(a*d)]
    @test_int [csch(c + d*x)^3/(a + b*sinh(c + d*x)^2), x, 5, (b^(3/2)*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(a^2*sqrt(a - b)*d) + ((a + 2*b)*atanh(cosh(c + d*x)))/(2*a^2*d) - (coth(c + d*x)*csch(c + d*x))/(2*a*d)]
    @test_int [csch(c + d*x)^4/(a + b*sinh(c + d*x)^2), x, 4, (b^2*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(a^(5/2)*sqrt(a - b)*d) + ((a + b)*coth(c + d*x))/(a^2*d) - coth(c + d*x)^3/(3*a*d)]
    @test_int [csch(c + d*x)^5/(a + b*sinh(c + d*x)^2), x, 6, -((b^(5/2)*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(a^3*sqrt(a - b)*d)) - ((3*a^2 + 4*a*b + 8*b^2)*atanh(cosh(c + d*x)))/(8*a^3*d) + ((3*a + 4*b)*coth(c + d*x)*csch(c + d*x))/(8*a^2*d) - (coth(c + d*x)*csch(c + d*x)^3)/(4*a*d)]
    @test_int [csch(c + d*x)^6/(a + b*sinh(c + d*x)^2), x, 4, -((b^3*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(a^(7/2)*sqrt(a - b)*d)) - ((a^2 + a*b + b^2)*coth(c + d*x))/(a^3*d) + ((2*a + b)*coth(c + d*x)^3)/(3*a^2*d) - coth(c + d*x)^5/(5*a*d)]


    @test_int [sinh(c + d*x)^4/(a + b*sinh(c + d*x)^2)^2, x, 5, x/b^2 - (sqrt(a)*(2*a - 3*b)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(2*(a - b)^(3/2)*b^2*d) - (a*tanh(c + d*x))/(2*(a - b)*b*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^3/(a + b*sinh(c + d*x)^2)^2, x, 3, ((a - 2*b)*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(2*(a - b)^(3/2)*b^(3/2)*d) - (a*cosh(c + d*x))/(2*(a - b)*b*d*(a - b + b*cosh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^2/(a + b*sinh(c + d*x)^2)^2, x, 4, -(atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a))/(2*sqrt(a)*(a - b)^(3/2)*d)) + (cosh(c + d*x)*sinh(c + d*x))/(2*(a - b)*d*(a + b*sinh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^1/(a + b*sinh(c + d*x)^2)^2, x, 3, atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b))/(2*(a - b)^(3/2)*sqrt(b)*d) + cosh(c + d*x)/(2*(a - b)*d*(a - b + b*cosh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^0/(a + b*sinh(c + d*x)^2)^2, x, 4, ((2*a - b)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^(3/2)*d) - (b*cosh(c + d*x)*sinh(c + d*x))/(2*a*(a - b)*d*(a + b*sinh(c + d*x)^2))]
    @test_int [csch(c + d*x)^1/(a + b*sinh(c + d*x)^2)^2, x, 5, -((3*a - 2*b)*sqrt(b)*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(2*a^2*(a - b)^(3/2)*d) - atanh(cosh(c + d*x))/(a^2*d) - (b*cosh(c + d*x))/(2*a*(a - b)*d*(a - b + b*cosh(c + d*x)^2))]
    @test_int [csch(c + d*x)^2/(a + b*sinh(c + d*x)^2)^2, x, 4, -(((4*a - 3*b)*b*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(2*a^(5/2)*(a - b)^(3/2)*d)) - coth(c + d*x)/(a*d*(a - (a - b)*tanh(c + d*x)^2)) + ((2*a^2 - 4*a*b + 3*b^2)*tanh(c + d*x))/(2*a^2*(a - b)*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [csch(c + d*x)^3/(a + b*sinh(c + d*x)^2)^2, x, 6, ((5*a - 4*b)*b^(3/2)*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(2*a^3*(a - b)^(3/2)*d) + ((a + 4*b)*atanh(cosh(c + d*x)))/(2*a^3*d) - ((a - 2*b)*b*cosh(c + d*x))/(2*a^2*(a - b)*d*(a - b + b*cosh(c + d*x)^2)) - (coth(c + d*x)*csch(c + d*x))/(2*a*d*(a - b + b*cosh(c + d*x)^2))]
    @test_int [csch(c + d*x)^4/(a + b*sinh(c + d*x)^2)^2, x, 5, ((6*a - 5*b)*b^2*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(2*a^(7/2)*(a - b)^(3/2)*d) + ((2*a^2 + a*b - 5*b^2)*coth(c + d*x))/(2*a^3*(a - b)*d) - ((2*a - 5*b)*coth(c + d*x)^3)/(6*a^2*(a - b)*d) - (b*csch(c + d*x)^3*sech(c + d*x))/(2*a*(a - b)*d*(a - (a - b)*tanh(c + d*x)^2))]


    @test_int [sinh(c + d*x)^4/(a + b*sinh(c + d*x)^2)^3, x, 4, (3*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*sqrt(a)*(a - b)^(5/2)*d) + tanh(c + d*x)^3/(4*(a - b)*d*(a - (a - b)*tanh(c + d*x)^2)^2) - (3*tanh(c + d*x))/(8*(a - b)^2*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^3/(a + b*sinh(c + d*x)^2)^3, x, 4, ((a - 4*b)*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(8*(a - b)^(5/2)*b^(3/2)*d) - (a*cosh(c + d*x))/(4*(a - b)*b*d*(a - b + b*cosh(c + d*x)^2)^2) + ((a - 4*b)*cosh(c + d*x))/(8*(a - b)^2*b*d*(a - b + b*cosh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^2/(a + b*sinh(c + d*x)^2)^3, x, 5, -(((4*a - b)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*a^(3/2)*(a - b)^(5/2)*d)) + (cosh(c + d*x)*sinh(c + d*x))/(4*(a - b)*d*(a + b*sinh(c + d*x)^2)^2) + ((2*a + b)*cosh(c + d*x)*sinh(c + d*x))/(8*a*(a - b)^2*d*(a + b*sinh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^1/(a + b*sinh(c + d*x)^2)^3, x, 4, (3*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(8*(a - b)^(5/2)*sqrt(b)*d) + cosh(c + d*x)/(4*(a - b)*d*(a - b + b*cosh(c + d*x)^2)^2) + (3*cosh(c + d*x))/(8*(a - b)^2*d*(a - b + b*cosh(c + d*x)^2))]
    @test_int [sinh(c + d*x)^0/(a + b*sinh(c + d*x)^2)^3, x, 5, ((8*a^2 - 8*a*b + 3*b^2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^(5/2)*d) - (b*cosh(c + d*x)*sinh(c + d*x))/(4*a*(a - b)*d*(a + b*sinh(c + d*x)^2)^2) - (3*(2*a - b)*b*cosh(c + d*x)*sinh(c + d*x))/(8*a^2*(a - b)^2*d*(a + b*sinh(c + d*x)^2))]
    @test_int [csch(c + d*x)^1/(a + b*sinh(c + d*x)^2)^3, x, 6, -(sqrt(b)*(15*a^2 - 20*a*b + 8*b^2)*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(8*a^3*(a - b)^(5/2)*d) - atanh(cosh(c + d*x))/(a^3*d) - (b*cosh(c + d*x))/(4*a*(a - b)*d*(a - b + b*cosh(c + d*x)^2)^2) - ((7*a - 4*b)*b*cosh(c + d*x))/(8*a^2*(a - b)^2*d*(a - b + b*cosh(c + d*x)^2))]
    @test_int [csch(c + d*x)^2/(a + b*sinh(c + d*x)^2)^3, x, 5, -((3*b*(8*a^2 - 12*a*b + 5*b^2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*a^(7/2)*(a - b)^(5/2)*d)) - ((4*a - 5*b)*(2*a - 3*b)*coth(c + d*x))/(8*a^3*(a - b)^2*d) - (b*csch(c + d*x)*sech(c + d*x)^3)/(4*a*(a - b)*d*(a - (a - b)*tanh(c + d*x)^2)^2) - (b*coth(c + d*x)*(4*a - 5*b - (4*a - b)*tanh(c + d*x)^2))/(8*a^2*(a - b)^2*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [csch(c + d*x)^3/(a + b*sinh(c + d*x)^2)^3, x, 7, (b^(3/2)*(35*a^2 - 56*a*b + 24*b^2)*atan((sqrt(b)*cosh(c + d*x))/sqrt(a - b)))/(8*a^4*(a - b)^(5/2)*d) + ((a + 6*b)*atanh(cosh(c + d*x)))/(2*a^4*d) - ((2*a - 3*b)*b*cosh(c + d*x))/(4*a^2*(a - b)*d*(a - b + b*cosh(c + d*x)^2)^2) - ((a - 4*b)*(4*a - 3*b)*b*cosh(c + d*x))/(8*a^3*(a - b)^2*d*(a - b + b*cosh(c + d*x)^2)) - (coth(c + d*x)*csch(c + d*x))/(2*a*d*(a - b + b*cosh(c + d*x)^2)^2)]
    @test_int [csch(c + d*x)^4/(a + b*sinh(c + d*x)^2)^3, x, 6, (b^2*(48*a^2 - 80*a*b + 35*b^2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*a^(9/2)*(a - b)^(5/2)*d) + ((8*a^3 - 4*a^2*b - 45*a*b^2 + 35*b^3)*coth(c + d*x))/(8*a^4*(a - b)^2*d) - ((8*a^2 - 52*a*b + 35*b^2)*coth(c + d*x)^3)/(24*a^3*(a - b)^2*d) - (b*csch(c + d*x)^3*sech(c + d*x)^3)/(4*a*(a - b)*d*(a - (a - b)*tanh(c + d*x)^2)^2) - ((10*a - 7*b)*b*csch(c + d*x)^3*sech(c + d*x))/(8*a^2*(a - b)^2*d*(a - (a - b)*tanh(c + d*x)^2))]


    @test_int [1/(1 + sinh(x)^2), x, 3, tanh(x)]
    @test_int [1/(1 + sinh(x)^2)^2, x, 3, tanh(x) - tanh(x)^3/3]
    @test_int [1/(1 + sinh(x)^2)^3, x, 3, tanh(x) - (2*tanh(x)^3)/3 + tanh(x)^5/5]


    @test_int [1/(1 - sinh(x)^2), x, 2, atanh(sqrt(2)*tanh(x))/sqrt(2)]
    @test_int [1/(1 - sinh(x)^2)^2, x, 4, (3*atanh(sqrt(2)*tanh(x)))/(4*sqrt(2)) + (cosh(x)*sinh(x))/(4*(1 - sinh(x)^2))]
    @test_int [1/(1 - sinh(x)^2)^3, x, 5, (19*atanh(sqrt(2)*tanh(x)))/(32*sqrt(2)) + (cosh(x)*sinh(x))/(8*(1 - sinh(x)^2)^2) + (9*cosh(x)*sinh(x))/(32*(1 - sinh(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sinh(e + f*x)^3*sqrt(a + b*sinh(e + f*x)^2), x, 5, -((a - b)*(a + 3*b)*atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(8*b^(3/2)*f) - ((a + 3*b)*cosh(e + f*x)*sqrt(a - b + b*cosh(e + f*x)^2))/(8*b*f) + (cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^(3/2))/(4*b*f)]
    @test_int [sinh(e + f*x)^1*sqrt(a + b*sinh(e + f*x)^2), x, 4, ((a - b)*atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(2*sqrt(b)*f) + (cosh(e + f*x)*sqrt(a - b + b*cosh(e + f*x)^2))/(2*f)]
    @test_int [csch(e + f*x)^1*sqrt(a + b*sinh(e + f*x)^2), x, 6, -((sqrt(a)*atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/f) + (sqrt(b)*atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/f]
    @test_int [csch(e + f*x)^3*sqrt(a + b*sinh(e + f*x)^2), x, 4, ((a - b)*atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(2*sqrt(a)*f) - (sqrt(a - b + b*cosh(e + f*x)^2)*coth(e + f*x)*csch(e + f*x))/(2*f)]
    @test_int [csch(e + f*x)^5*sqrt(a + b*sinh(e + f*x)^2), x, 5, -((a - b)*(3*a + b)*atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(8*a^(3/2)*f) + ((3*a + b)*sqrt(a - b + b*cosh(e + f*x)^2)*coth(e + f*x)*csch(e + f*x))/(8*a*f) - ((a - b + b*cosh(e + f*x)^2)^(3/2)*coth(e + f*x)*csch(e + f*x)^3)/(4*a*f)]

    @test_int [sinh(e + f*x)^4*sqrt(a + b*sinh(e + f*x)^2), x, 7, ((a - 4*b)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*b*f) + (cosh(e + f*x)*sinh(e + f*x)^3*sqrt(a + b*sinh(e + f*x)^2))/(5*f) + ((2*a^2 + 3*a*b - 8*b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((a - 4*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((2*a^2 + 3*a*b - 8*b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(15*b^2*f)]
    @test_int [sinh(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2), x, 6, (cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - ((im/3)*(a - 2*b)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(b*f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) + ((im/3)*a*(a - b)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(b*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sinh(e + f*x)^0*sqrt(a + b*sinh(e + f*x)^2), x, 2, ((-im)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt(1 + (b*sinh(e + f*x)^2)/a))]
    @test_int [csch(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2), x, 7, -((coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/f) - (EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/f]
    @test_int [csch(e + f*x)^4*sqrt(a + b*sinh(e + f*x)^2), x, 7, ((2*a - b)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f) - (coth(e + f*x)*csch(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(3*f) + ((2*a - b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((2*a - b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a*f)]


    @test_int [sinh(e + f*x)^3*(a + b*sinh(e + f*x)^2)^(3/2), x, 6, -((a - b)^2*(a + 5*b)*atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(16*b^(3/2)*f) - ((a - b)*(a + 5*b)*cosh(e + f*x)*sqrt(a - b + b*cosh(e + f*x)^2))/(16*b*f) - ((a + 5*b)*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^(3/2))/(24*b*f) + (cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^(5/2))/(6*b*f)]
    @test_int [sinh(e + f*x)^1*(a + b*sinh(e + f*x)^2)^(3/2), x, 5, (3*(a - b)^2*atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(8*sqrt(b)*f) + (3*(a - b)*cosh(e + f*x)*sqrt(a - b + b*cosh(e + f*x)^2))/(8*f) + (cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^(3/2))/(4*f)]
    @test_int [csch(e + f*x)^1*(a + b*sinh(e + f*x)^2)^(3/2), x, 7, -((a^(3/2)*atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/f) + ((3*a - b)*sqrt(b)*atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(2*f) + (b*cosh(e + f*x)*sqrt(a - b + b*cosh(e + f*x)^2))/(2*f)]
    @test_int [csch(e + f*x)^3*(a + b*sinh(e + f*x)^2)^(3/2), x, 7, (sqrt(a)*(a - 3*b)*atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(2*f) + (b^(3/2)*atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/f - (a*sqrt(a - b + b*cosh(e + f*x)^2)*coth(e + f*x)*csch(e + f*x))/(2*f)]
    @test_int [csch(e + f*x)^5*(a + b*sinh(e + f*x)^2)^(3/2), x, 5, (-3*(a - b)^2*atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(8*sqrt(a)*f) + (3*(a - b)*sqrt(a - b + b*cosh(e + f*x)^2)*coth(e + f*x)*csch(e + f*x))/(8*f) - ((a - b + b*cosh(e + f*x)^2)^(3/2)*coth(e + f*x)*csch(e + f*x)^3)/(4*f)]
    @test_int [csch(e + f*x)^7*(a + b*sinh(e + f*x)^2)^(3/2), x, 6, ((a - b)^2*(5*a + b)*atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(16*a^(3/2)*f) - ((a - b)*(5*a + b)*sqrt(a - b + b*cosh(e + f*x)^2)*coth(e + f*x)*csch(e + f*x))/(16*a*f) + ((5*a + b)*(a - b + b*cosh(e + f*x)^2)^(3/2)*coth(e + f*x)*csch(e + f*x)^3)/(24*a*f) - ((a - b + b*cosh(e + f*x)^2)^(5/2)*coth(e + f*x)*csch(e + f*x)^5)/(6*a*f)]

    @test_int [sinh(e + f*x)^4*(a + b*sinh(e + f*x)^2)^(3/2), x, 8, ((a^2 - 11*a*b + 8*b^2)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(35*b*f) + (2*(4*a - 3*b)*cosh(e + f*x)*sinh(e + f*x)^3*sqrt(a + b*sinh(e + f*x)^2))/(35*f) + (b*cosh(e + f*x)*sinh(e + f*x)^5*sqrt(a + b*sinh(e + f*x)^2))/(7*f) + (2*(a - 2*b)*(a^2 + 4*a*b - 4*b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(35*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((a^2 - 11*a*b + 8*b^2)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(35*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (2*(a - 2*b)*(a^2 + 4*a*b - 4*b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(35*b^2*f)]
    @test_int [sinh(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(3/2), x, 7, ((3*a - 4*b)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*f) + (cosh(e + f*x)*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(3/2))/(5*f) - ((im/15)*(3*a^2 - 13*a*b + 8*b^2)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(b*f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) + ((im/15)*a*(3*a - 4*b)*(a - b)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(b*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sinh(e + f*x)^0*(a + b*sinh(e + f*x)^2)^(3/2), x, 6, (b*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - (((2*im)/3)*(2*a - b)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) + ((im/3)*a*(a - b)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [csch(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(3/2), x, 6, -((a*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/f) - ((a + b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (2*b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((a + b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/f]
    @test_int [csch(e + f*x)^4*(a + b*sinh(e + f*x)^2)^(3/2), x, 7, (2*(a - 2*b)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - (a*coth(e + f*x)*csch(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(3*f) + (2*(a - 2*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((a - 3*b)*b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (2*(a - 2*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*f)]


    @test_int [(a + b*sinh(c + d*x)^2)^(5/2), x, 7, (4*(2*a - b)*b*cosh(c + d*x)*sinh(c + d*x)*sqrt(a + b*sinh(c + d*x)^2))/(15*d) + (b*cosh(c + d*x)*sinh(c + d*x)*(a + b*sinh(c + d*x)^2)^(3/2))/(5*d) - ((im/15)*(23*a^2 - 23*a*b + 8*b^2)*EllipticE(im*c + im*d*x, b/a)*sqrt(a + b*sinh(c + d*x)^2))/(d*sqrt(1 + (b*sinh(c + d*x)^2)/a)) + (((4*im)/15)*a*(a - b)*(2*a - b)*EllipticF(im*c + im*d*x, b/a)*sqrt(1 + (b*sinh(c + d*x)^2)/a))/(d*sqrt(a + b*sinh(c + d*x)^2))]


    @test_int [sqrt(1 + sinh(x)^2), x, 3, sqrt(cosh(x)^2)*tanh(x)]
    @test_int [sqrt(-1 - sinh(x)^2), x, 3, sqrt(-cosh(x)^2)*tanh(x)]
    @test_int [sqrt(1 - sinh(x)^2), x, 1, (-im)*EllipticE(im*x, -1)]
    @test_int [sqrt(-1 + sinh(x)^2), x, 2, -((im*EllipticE(im*x, -1)*sqrt(-1 + sinh(x)^2))/sqrt(1 - sinh(x)^2))]
    @test_int [sqrt(a + b*sinh(x)^2), x, 2, -((im*EllipticE(im*x, b/a)*sqrt(a + b*sinh(x)^2))/sqrt(1 + (b*sinh(x)^2)/a))]


    @test_int [(1 + sinh(x)^2)^(3/2), x, 4, (2/3)*sqrt(cosh(x)^2)*tanh(x) + (1/3)*(cosh(x)^2)^(3/2)*tanh(x)]
    @test_int [(-1 - sinh(x)^2)^(3/2), x, 4, (-(2/3))*sqrt(-cosh(x)^2)*tanh(x) + (1/3)*(-cosh(x)^2)^(3/2)*tanh(x)]
    @test_int [(1 - sinh(x)^2)^(3/2), x, 4, -2*im*EllipticE(im*x, -1) + (2/3)*im*EllipticF(im*x, -1) - (1/3)*cosh(x)*sinh(x)*sqrt(1 - sinh(x)^2)]
    @test_int [(-1 + sinh(x)^2)^(3/2), x, 6, (2*im*EllipticF(im*x, -1)*sqrt(1 - sinh(x)^2))/(3*sqrt(-1 + sinh(x)^2)) + (1/3)*cosh(x)*sinh(x)*sqrt(-1 + sinh(x)^2) + (2*im*EllipticE(im*x, -1)*sqrt(-1 + sinh(x)^2))/sqrt(1 - sinh(x)^2)]
    @test_int [(a + b*sinh(x)^2)^(3/2), x, 6, (1/3)*b*cosh(x)*sinh(x)*sqrt(a + b*sinh(x)^2) - (2*im*(2*a - b)*EllipticE(im*x, b/a)*sqrt(a + b*sinh(x)^2))/(3*sqrt(1 + (b*sinh(x)^2)/a)) + (im*a*(a - b)*EllipticF(im*x, b/a)*sqrt(1 + (b*sinh(x)^2)/a))/(3*sqrt(a + b*sinh(x)^2))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sinh(e + f*x)^3/sqrt(a + b*sinh(e + f*x)^2), x, 4, -((a + b)*atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(2*b^(3/2)*f) + (cosh(e + f*x)*sqrt(a - b + b*cosh(e + f*x)^2))/(2*b*f)]
    @test_int [sinh(e + f*x)^1/sqrt(a + b*sinh(e + f*x)^2), x, 3, atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2))/(sqrt(b)*f)]
    @test_int [csch(e + f*x)^1/sqrt(a + b*sinh(e + f*x)^2), x, 3, -(atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2))/(sqrt(a)*f))]
    @test_int [csch(e + f*x)^3/sqrt(a + b*sinh(e + f*x)^2), x, 4, ((a + b)*atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(2*a^(3/2)*f) - (sqrt(a - b + b*cosh(e + f*x)^2)*coth(e + f*x)*csch(e + f*x))/(2*a*f)]

    @test_int [sinh(e + f*x)^4/sqrt(a + b*sinh(e + f*x)^2), x, 6, (cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*b*f) + (2*(a + b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (2*(a + b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*b^2*f)]
    @test_int [sinh(e + f*x)^2/sqrt(a + b*sinh(e + f*x)^2), x, 5, ((-im)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(b*f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) + (im*a*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(b*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sinh(e + f*x)^0/sqrt(a + b*sinh(e + f*x)^2), x, 2, ((-im)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [csch(e + f*x)^2/sqrt(a + b*sinh(e + f*x)^2), x, 5, -((coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*f)) - (EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(a*f)]
    @test_int [csch(e + f*x)^4/sqrt(a + b*sinh(e + f*x)^2), x, 7, (2*(a + b)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*f) - (coth(e + f*x)*csch(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f) + (2*(a + b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (2*(a + b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a^2*f)]


    @test_int [sinh(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(3/2), x, 4, atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2))/(b^(3/2)*f) - (a*cosh(e + f*x))/((a - b)*b*f*sqrt(a - b + b*cosh(e + f*x)^2))]
    @test_int [sinh(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(3/2), x, 2, cosh(e + f*x)/((a - b)*f*sqrt(a - b + b*cosh(e + f*x)^2))]
    @test_int [csch(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(3/2), x, 4, -(atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2))/(a^(3/2)*f)) - (b*cosh(e + f*x))/(a*(a - b)*f*sqrt(a - b + b*cosh(e + f*x)^2))]
    @test_int [csch(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(3/2), x, 6, ((a + 3*b)*atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2)))/(2*a^(5/2)*f) - ((a - 3*b)*b*cosh(e + f*x))/(2*a^2*(a - b)*f*sqrt(a - b + b*cosh(e + f*x)^2)) - (coth(e + f*x)*csch(e + f*x))/(2*a*f*sqrt(a - b + b*cosh(e + f*x)^2))]

    @test_int [sinh(e + f*x)^6/(a + b*sinh(e + f*x)^2)^(3/2), x, 7, -((a*cosh(e + f*x)*sinh(e + f*x)^3)/((a - b)*b*f*sqrt(a + b*sinh(e + f*x)^2))) + ((4*a - b)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)*b^2*f) + ((8*a^2 - 3*a*b - 2*b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)*b^3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((4*a - b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((8*a^2 - 3*a*b - 2*b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*(a - b)*b^3*f)]
    @test_int [sinh(e + f*x)^4/(a + b*sinh(e + f*x)^2)^(3/2), x, 6, -((a*cosh(e + f*x)*sinh(e + f*x))/((a - b)*b*f*sqrt(a + b*sinh(e + f*x)^2))) - ((2*a - b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/((a - b)*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/((a - b)*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((2*a - b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/((a - b)*b^2*f)]
    @test_int [sinh(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(3/2), x, 6, (cosh(e + f*x)*sinh(e + f*x))/((a - b)*f*sqrt(a + b*sinh(e + f*x)^2)) + (im*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/((a - b)*b*f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) - (im*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(b*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sinh(e + f*x)^0/(a + b*sinh(e + f*x)^2)^(3/2), x, 4, -((b*cosh(e + f*x)*sinh(e + f*x))/(a*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))) - (im*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(a*(a - b)*f*sqrt(1 + (b*sinh(e + f*x)^2)/a))]
    @test_int [csch(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(3/2), x, 7, -((b*coth(e + f*x))/(a*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))) - ((a - 2*b)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a^2*(a - b)*f) - ((a - 2*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a^2*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a^2*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((a - 2*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(a^2*(a - b)*f)]


    @test_int [sinh(e + f*x)^5/(a + b*sinh(e + f*x)^2)^(5/2), x, 5, atanh((sqrt(b)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2))/(b^(5/2)*f) - (a*(3*a - 5*b)*cosh(e + f*x))/(3*(a - b)^2*b^2*f*sqrt(a - b + b*cosh(e + f*x)^2)) - (a*cosh(e + f*x)*sinh(e + f*x)^2)/(3*(a - b)*b*f*(a - b + b*cosh(e + f*x)^2)^(3/2))]
    @test_int [sinh(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(5/2), x, 3, (-2*cosh(e + f*x))/(3*(a - b)^2*f*sqrt(a - b + b*cosh(e + f*x)^2)) + (cosh(e + f*x)*sinh(e + f*x)^2)/(3*(a - b)*f*(a - b + b*cosh(e + f*x)^2)^(3/2))]
    @test_int [sinh(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(5/2), x, 3, cosh(e + f*x)/(3*(a - b)*f*(a - b + b*cosh(e + f*x)^2)^(3/2)) + (2*cosh(e + f*x))/(3*(a - b)^2*f*sqrt(a - b + b*cosh(e + f*x)^2))]
    @test_int [csch(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(5/2), x, 6, -(atanh((sqrt(a)*cosh(e + f*x))/sqrt(a - b + b*cosh(e + f*x)^2))/(a^(5/2)*f)) - (b*cosh(e + f*x))/(3*a*(a - b)*f*(a - b + b*cosh(e + f*x)^2)^(3/2)) - ((5*a - 3*b)*b*cosh(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a - b + b*cosh(e + f*x)^2))]

    @test_int [sinh(e + f*x)^6/(a + b*sinh(e + f*x)^2)^(5/2), x, 7, -(a*cosh(e + f*x)*sinh(e + f*x)^3)/(3*(a - b)*b*f*(a + b*sinh(e + f*x)^2)^(3/2)) - (2*a*(2*a - 3*b)*cosh(e + f*x)*sinh(e + f*x))/(3*(a - b)^2*b^2*f*sqrt(a + b*sinh(e + f*x)^2)) - ((8*a^2 - 13*a*b + 3*b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)^2*b^3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (2*(2*a - 3*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)^2*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((8*a^2 - 13*a*b + 3*b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*(a - b)^2*b^3*f)]
    @test_int [sinh(e + f*x)^4/(a + b*sinh(e + f*x)^2)^(5/2), x, 5, -(a*cosh(e + f*x)*sinh(e + f*x))/(3*(a - b)*b*f*(a + b*sinh(e + f*x)^2)^(3/2)) + (2*sqrt(a)*(a - 2*b)*cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/(3*(a - b)^2*b^(3/2)*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2)) - ((a - 3*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*(a - b)^2*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a))]
    @test_int [sinh(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(5/2), x, 7, (cosh(e + f*x)*sinh(e + f*x))/(3*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2)) + ((a + b)*cosh(e + f*x)*sinh(e + f*x))/(3*a*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2)) + ((im/3)*(a + b)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(a*(a - b)^2*b*f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) - ((im/3)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/((a - b)*b*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sinh(e + f*x)^0/(a + b*sinh(e + f*x)^2)^(5/2), x, 7, -(b*cosh(e + f*x)*sinh(e + f*x))/(3*a*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2)) - (2*(2*a - b)*b*cosh(e + f*x)*sinh(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2)) - (((2*im)/3)*(2*a - b)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(a^2*(a - b)^2*f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) + ((im/3)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(a*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [csch(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(5/2), x, 8, -(b*coth(e + f*x))/(3*a*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2)) - (2*(3*a - 2*b)*b*coth(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2)) - ((3*a^2 - 13*a*b + 8*b^2)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*(a - b)^2*f) - ((3*a^2 - 13*a*b + 8*b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*(a - b)^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (2*(3*a - 2*b)*b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*(a - b)^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a^2 - 13*a*b + 8*b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a^3*(a - b)^2*f)]


    @test_int [1/sqrt(1 + sinh(x)^2), x, 3, (atan(sinh(x))*cosh(x))/sqrt(cosh(x)^2)]
    @test_int [1/sqrt(1 - sinh(x)^2), x, 1, (-im)*EllipticF(im*x, -1)]
    @test_int [1/sqrt(-1 + sinh(x)^2), x, 2, -((im*EllipticF(im*x, -1)*sqrt(1 - sinh(x)^2))/sqrt(-1 + sinh(x)^2))]
    @test_int [1/sqrt(-1 - sinh(x)^2), x, 3, (atan(sinh(x))*cosh(x))/sqrt(-cosh(x)^2)]
    @test_int [1/sqrt(a + b*sinh(x)^2), x, 2, -((im*EllipticF(im*x, b/a)*sqrt(1 + (b*sinh(x)^2)/a))/sqrt(a + b*sinh(x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*sinh(e+f*x))*(a+b*sinh(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*sinh(e + f*x))^m*(a + b*sinh(e + f*x)^2)^p, x, 3, (d*AppellF1(1/2, (1 - m)/2, -p, 3/2, cosh(e + f*x)^2, -((b*cosh(e + f*x)^2)/(a - b)))*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^p*(d*sinh(e + f*x))^(-1 + m)*(-sinh(e + f*x)^2)^((1 - m)/2))/(f*(1 + (b*cosh(e + f*x)^2)/(a - b))^p)]


    @test_int [sinh(e + f*x)^5*(a + b*sinh(e + f*x)^2)^p, x, 5, If($VersionNumber>=8, -(((3*a + 2*b*(2 + p))*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^(1 + p))/(b^2*f*(3 + 2*p)*(5 + 2*p))) + ((3*a^2 + 4*a*b*(1 + p) + 4*b^2*(2 + 3*p + p^2))*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^p*Hypergeometric2F1(1/2, -p, 3/2, -((b*cosh(e + f*x)^2)/(a - b))))/(b^2*f*(3 + 2*p)*(5 + 2*p)*(1 + (b*cosh(e + f*x)^2)/(a - b))^p) + (cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^(1 + p)*sinh(e + f*x)^2)/(b*f*(5 + 2*p)), -(((3*a + 2*b*(2 + p))*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^(1 + p))/(b^2*f*(15 + 16*p + 4*p^2))) + ((3*a^2 + 4*a*b*(1 + p) + 4*b^2*(2 + 3*p + p^2))*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^p*Hypergeometric2F1(1/2, -p, 3/2, -((b*cosh(e + f*x)^2)/(a - b))))/((1 + (b*cosh(e + f*x)^2)/(a - b))^p*(b^2*f*(15 + 16*p + 4*p^2))) + (cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^(1 + p)*sinh(e + f*x)^2)/(b*f*(5 + 2*p)))]
    @test_int [sinh(e + f*x)^3*(a + b*sinh(e + f*x)^2)^p, x, 4, (cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^(1 + p))/(b*f*(3 + 2*p)) - ((a + 2*b*(1 + p))*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^p*Hypergeometric2F1(1/2, -p, 3/2, -((b*cosh(e + f*x)^2)/(a - b))))/(b*f*(3 + 2*p)*(1 + (b*cosh(e + f*x)^2)/(a - b))^p)]
    @test_int [sinh(e + f*x)^1*(a + b*sinh(e + f*x)^2)^p, x, 3, (cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^p*Hypergeometric2F1(1/2, -p, 3/2, -((b*cosh(e + f*x)^2)/(a - b))))/(f*(1 + (b*cosh(e + f*x)^2)/(a - b))^p)]
    @test_int [csch(e + f*x)^1*(a + b*sinh(e + f*x)^2)^p, x, 3, -((AppellF1(1/2, 1, -p, 3/2, cosh(e + f*x)^2, -((b*cosh(e + f*x)^2)/(a - b)))*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^p)/(f*(1 + (b*cosh(e + f*x)^2)/(a - b))^p))]
    @test_int [csch(e + f*x)^3*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 2, -p, 3/2, cosh(e + f*x)^2, -((b*cosh(e + f*x)^2)/(a - b)))*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^p)/(f*(1 + (b*cosh(e + f*x)^2)/(a - b))^p)]
    @test_int [csch(e + f*x)^5*(a + b*sinh(e + f*x)^2)^p, x, 3, -((AppellF1(1/2, 3, -p, 3/2, cosh(e + f*x)^2, -((b*cosh(e + f*x)^2)/(a - b)))*cosh(e + f*x)*(a - b + b*cosh(e + f*x)^2)^p)/(f*(1 + (b*cosh(e + f*x)^2)/(a - b))^p))]

    @test_int [sinh(e + f*x)^4*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(5/2, 1/2, -p, 7/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sqrt(cosh(e + f*x)^2)*sinh(e + f*x)^4*(a + b*sinh(e + f*x)^2)^p*tanh(e + f*x))/(5*f*(1 + (b*sinh(e + f*x)^2)/a)^p)]
    @test_int [sinh(e + f*x)^2*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(3/2, 2 + p, -p, 5/2, tanh(e + f*x)^2, ((a - b)*tanh(e + f*x)^2)/a)*(sech(e + f*x)^2)^p*(a + b*sinh(e + f*x)^2)^p*tanh(e + f*x)^3)/(3*f*(1 - ((a - b)*tanh(e + f*x)^2)/a)^p)]
    @test_int [csch(e + f*x)^2*(a + b*sinh(e + f*x)^2)^p, x, 3, -((AppellF1(-1/2, 1/2, -p, 1/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sqrt(cosh(e + f*x)^2)*csch(e + f*x)*sech(e + f*x)*(a + b*sinh(e + f*x)^2)^p)/(f*(1 + (b*sinh(e + f*x)^2)/a)^p))]
    @test_int [csch(e + f*x)^4*(a + b*sinh(e + f*x)^2)^p, x, 3, -(AppellF1(-3/2, 1/2, -p, -1/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sqrt(cosh(e + f*x)^2)*csch(e + f*x)^3*sech(e + f*x)*(a + b*sinh(e + f*x)^2)^p)/(3*f*(1 + (b*sinh(e + f*x)^2)/a)^p)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^3)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^3)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sinh(c + d*x)^4*(a + b*sinh(c + d*x)^3), x, 7, (3*a*x)/8 - (b*cosh(c + d*x))/d + (b*cosh(c + d*x)^3)/d - (3*b*cosh(c + d*x)^5)/(5*d) + (b*cosh(c + d*x)^7)/(7*d) - (3*a*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (a*cosh(c + d*x)*sinh(c + d*x)^3)/(4*d)]
    @test_int [sinh(c + d*x)^3*(a + b*sinh(c + d*x)^3), x, 8, (-5*b*x)/16 - (a*cosh(c + d*x))/d + (a*cosh(c + d*x)^3)/(3*d) + (5*b*cosh(c + d*x)*sinh(c + d*x))/(16*d) - (5*b*cosh(c + d*x)*sinh(c + d*x)^3)/(24*d) + (b*cosh(c + d*x)*sinh(c + d*x)^5)/(6*d)]
    @test_int [sinh(c + d*x)^2*(a + b*sinh(c + d*x)^3), x, 6, -(a*x)/2 + (b*cosh(c + d*x))/d - (2*b*cosh(c + d*x)^3)/(3*d) + (b*cosh(c + d*x)^5)/(5*d) + (a*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [sinh(c + d*x)^1*(a + b*sinh(c + d*x)^3), x, 6, (3*b*x)/8 + (a*cosh(c + d*x))/d - (3*b*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b*cosh(c + d*x)*sinh(c + d*x)^3)/(4*d)]
    @test_int [sinh(c + d*x)^0*(a + b*sinh(c + d*x)^3), x, 3, a*x - (b*cosh(c + d*x))/d + (b*cosh(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^1*(a + b*sinh(c + d*x)^3), x, 5, -(b*x)/2 - (a*atanh(cosh(c + d*x)))/d + (b*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^2*(a + b*sinh(c + d*x)^3), x, 5, (b*cosh(c + d*x))/d - (a*coth(c + d*x))/d]
    @test_int [csch(c + d*x)^3*(a + b*sinh(c + d*x)^3), x, 4, b*x + (a*atanh(cosh(c + d*x)))/(2*d) - (a*coth(c + d*x)*csch(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*sinh(c + d*x)^3), x, 5, -((b*atanh(cosh(c + d*x)))/d) + (a*coth(c + d*x))/d - (a*coth(c + d*x)^3)/(3*d)]


    @test_int [sinh(c + d*x)^3*(a + b*sinh(c + d*x)^3)^2, x, 10, (-5*a*b*x)/8 - (a^2*cosh(c + d*x))/d + (b^2*cosh(c + d*x))/d + (a^2*cosh(c + d*x)^3)/(3*d) - (4*b^2*cosh(c + d*x)^3)/(3*d) + (6*b^2*cosh(c + d*x)^5)/(5*d) - (4*b^2*cosh(c + d*x)^7)/(7*d) + (b^2*cosh(c + d*x)^9)/(9*d) + (5*a*b*cosh(c + d*x)*sinh(c + d*x))/(8*d) - (5*a*b*cosh(c + d*x)*sinh(c + d*x)^3)/(12*d) + (a*b*cosh(c + d*x)*sinh(c + d*x)^5)/(3*d)]
    @test_int [sinh(c + d*x)^2*(a + b*sinh(c + d*x)^3)^2, x, 11, -(a^2*x)/2 + (35*b^2*x)/128 + (2*a*b*cosh(c + d*x))/d - (4*a*b*cosh(c + d*x)^3)/(3*d) + (2*a*b*cosh(c + d*x)^5)/(5*d) + (a^2*cosh(c + d*x)*sinh(c + d*x))/(2*d) - (35*b^2*cosh(c + d*x)*sinh(c + d*x))/(128*d) + (35*b^2*cosh(c + d*x)*sinh(c + d*x)^3)/(192*d) - (7*b^2*cosh(c + d*x)*sinh(c + d*x)^5)/(48*d) + (b^2*cosh(c + d*x)*sinh(c + d*x)^7)/(8*d)]
    @test_int [sinh(c + d*x)^1*(a + b*sinh(c + d*x)^3)^2, x, 8, (3*a*b*x)/4 + (a^2*cosh(c + d*x))/d - (b^2*cosh(c + d*x))/d + (b^2*cosh(c + d*x)^3)/d - (3*b^2*cosh(c + d*x)^5)/(5*d) + (b^2*cosh(c + d*x)^7)/(7*d) - (3*a*b*cosh(c + d*x)*sinh(c + d*x))/(4*d) + (a*b*cosh(c + d*x)*sinh(c + d*x)^3)/(2*d)]
    @test_int [sinh(c + d*x)^0*(a + b*sinh(c + d*x)^3)^2, x, 8, a^2*x - (5*b^2*x)/16 - (2*a*b*cosh(c + d*x))/d + (2*a*b*cosh(c + d*x)^3)/(3*d) + (5*b^2*cosh(c + d*x)*sinh(c + d*x))/(16*d) - (5*b^2*cosh(c + d*x)*sinh(c + d*x)^3)/(24*d) + (b^2*cosh(c + d*x)*sinh(c + d*x)^5)/(6*d)]
    @test_int [csch(c + d*x)^1*(a + b*sinh(c + d*x)^3)^2, x, 7, -(a*b*x) - (a^2*atanh(cosh(c + d*x)))/d + (b^2*cosh(c + d*x))/d - (2*b^2*cosh(c + d*x)^3)/(3*d) + (b^2*cosh(c + d*x)^5)/(5*d) + (a*b*cosh(c + d*x)*sinh(c + d*x))/d]
    @test_int [csch(c + d*x)^2*(a + b*sinh(c + d*x)^3)^2, x, 8, (3*b^2*x)/8 + (2*a*b*cosh(c + d*x))/d - (a^2*coth(c + d*x))/d - (3*b^2*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b^2*cosh(c + d*x)*sinh(c + d*x)^3)/(4*d)]
    @test_int [csch(c + d*x)^3*(a + b*sinh(c + d*x)^3)^2, x, 6, 2*a*b*x + (a^2*atanh(cosh(c + d*x)))/(2*d) - (b^2*cosh(c + d*x))/d + (b^2*cosh(c + d*x)^3)/(3*d) - (a^2*coth(c + d*x)*csch(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*sinh(c + d*x)^3)^2, x, 7, -((b^2*x)/2) - (2*a*b*atanh(cosh(c + d*x)))/d + (a^2*coth(c + d*x))/d - (a^2*coth(c + d*x)^3)/(3*d) + (b^2*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^5*(a + b*sinh(c + d*x)^3)^2, x, 8, -((3*a^2*atanh(cosh(c + d*x)))/(8*d)) + (b^2*cosh(c + d*x))/d - (2*a*b*coth(c + d*x))/d + (3*a^2*coth(c + d*x)*csch(c + d*x))/(8*d) - (a^2*coth(c + d*x)*csch(c + d*x)^3)/(4*d)]
    @test_int [csch(c + d*x)^6*(a + b*sinh(c + d*x)^3)^2, x, 6, b^2*x + (a*b*atanh(cosh(c + d*x)))/d - (a^2*coth(c + d*x))/d + (2*a^2*coth(c + d*x)^3)/(3*d) - (a^2*coth(c + d*x)^5)/(5*d) - (a*b*coth(c + d*x)*csch(c + d*x))/d]
    @test_int [csch(c + d*x)^7*(a + b*sinh(c + d*x)^3)^2, x, 9, (5*a^2*atanh(cosh(c + d*x)))/(16*d) - (b^2*atanh(cosh(c + d*x)))/d + (2*a*b*coth(c + d*x))/d - (2*a*b*coth(c + d*x)^3)/(3*d) - (5*a^2*coth(c + d*x)*csch(c + d*x))/(16*d) + (5*a^2*coth(c + d*x)*csch(c + d*x)^3)/(24*d) - (a^2*coth(c + d*x)*csch(c + d*x)^5)/(6*d)]


    @test_int [sinh(c + d*x)^2*(a + b*sinh(c + d*x)^3)^3, x, 13, -(a^3*x)/2 + (105*a*b^2*x)/128 + (3*a^2*b*cosh(c + d*x))/d - (b^3*cosh(c + d*x))/d - (2*a^2*b*cosh(c + d*x)^3)/d + (5*b^3*cosh(c + d*x)^3)/(3*d) + (3*a^2*b*cosh(c + d*x)^5)/(5*d) - (2*b^3*cosh(c + d*x)^5)/d + (10*b^3*cosh(c + d*x)^7)/(7*d) - (5*b^3*cosh(c + d*x)^9)/(9*d) + (b^3*cosh(c + d*x)^11)/(11*d) + (a^3*cosh(c + d*x)*sinh(c + d*x))/(2*d) - (105*a*b^2*cosh(c + d*x)*sinh(c + d*x))/(128*d) + (35*a*b^2*cosh(c + d*x)*sinh(c + d*x)^3)/(64*d) - (7*a*b^2*cosh(c + d*x)*sinh(c + d*x)^5)/(16*d) + (3*a*b^2*cosh(c + d*x)*sinh(c + d*x)^7)/(8*d)]
    @test_int [sinh(c + d*x)^1*(a + b*sinh(c + d*x)^3)^3, x, 14, (9*a^2*b*x)/8 - (63*b^3*x)/256 + (a^3*cosh(c + d*x))/d - (3*a*b^2*cosh(c + d*x))/d + (3*a*b^2*cosh(c + d*x)^3)/d - (9*a*b^2*cosh(c + d*x)^5)/(5*d) + (3*a*b^2*cosh(c + d*x)^7)/(7*d) - (9*a^2*b*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (63*b^3*cosh(c + d*x)*sinh(c + d*x))/(256*d) + (3*a^2*b*cosh(c + d*x)*sinh(c + d*x)^3)/(4*d) - (21*b^3*cosh(c + d*x)*sinh(c + d*x)^3)/(128*d) + (21*b^3*cosh(c + d*x)*sinh(c + d*x)^5)/(160*d) - (9*b^3*cosh(c + d*x)*sinh(c + d*x)^7)/(80*d) + (b^3*cosh(c + d*x)*sinh(c + d*x)^9)/(10*d)]
    @test_int [sinh(c + d*x)^0*(a + b*sinh(c + d*x)^3)^3, x, 10, a^3*x - (15*a*b^2*x)/16 - (3*a^2*b*cosh(c + d*x))/d + (b^3*cosh(c + d*x))/d + (a^2*b*cosh(c + d*x)^3)/d - (4*b^3*cosh(c + d*x)^3)/(3*d) + (6*b^3*cosh(c + d*x)^5)/(5*d) - (4*b^3*cosh(c + d*x)^7)/(7*d) + (b^3*cosh(c + d*x)^9)/(9*d) + (15*a*b^2*cosh(c + d*x)*sinh(c + d*x))/(16*d) - (5*a*b^2*cosh(c + d*x)*sinh(c + d*x)^3)/(8*d) + (a*b^2*cosh(c + d*x)*sinh(c + d*x)^5)/(2*d)]
    @test_int [csch(c + d*x)^1*(a + b*sinh(c + d*x)^3)^3, x, 12, (-3*a^2*b*x)/2 + (35*b^3*x)/128 - (a^3*atanh(cosh(c + d*x)))/d + (3*a*b^2*cosh(c + d*x))/d - (2*a*b^2*cosh(c + d*x)^3)/d + (3*a*b^2*cosh(c + d*x)^5)/(5*d) + (3*a^2*b*cosh(c + d*x)*sinh(c + d*x))/(2*d) - (35*b^3*cosh(c + d*x)*sinh(c + d*x))/(128*d) + (35*b^3*cosh(c + d*x)*sinh(c + d*x)^3)/(192*d) - (7*b^3*cosh(c + d*x)*sinh(c + d*x)^5)/(48*d) + (b^3*cosh(c + d*x)*sinh(c + d*x)^7)/(8*d)]
    @test_int [csch(c + d*x)^2*(a + b*sinh(c + d*x)^3)^3, x, 10, (9*a*b^2*x)/8 + (3*a^2*b*cosh(c + d*x))/d - (b^3*cosh(c + d*x))/d + (b^3*cosh(c + d*x)^3)/d - (3*b^3*cosh(c + d*x)^5)/(5*d) + (b^3*cosh(c + d*x)^7)/(7*d) - (a^3*coth(c + d*x))/d - (9*a*b^2*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (3*a*b^2*cosh(c + d*x)*sinh(c + d*x)^3)/(4*d)]
    @test_int [csch(c + d*x)^3*(a + b*sinh(c + d*x)^3)^3, x, 10, 3*a^2*b*x - (5*b^3*x)/16 + (a^3*atanh(cosh(c + d*x)))/(2*d) - (3*a*b^2*cosh(c + d*x))/d + (a*b^2*cosh(c + d*x)^3)/d - (a^3*coth(c + d*x)*csch(c + d*x))/(2*d) + (5*b^3*cosh(c + d*x)*sinh(c + d*x))/(16*d) - (5*b^3*cosh(c + d*x)*sinh(c + d*x)^3)/(24*d) + (b^3*cosh(c + d*x)*sinh(c + d*x)^5)/(6*d)]
    @test_int [csch(c + d*x)^4*(a + b*sinh(c + d*x)^3)^3, x, 9, (-(3/2))*a*b^2*x - (3*a^2*b*atanh(cosh(c + d*x)))/d + (b^3*cosh(c + d*x))/d - (2*b^3*cosh(c + d*x)^3)/(3*d) + (b^3*cosh(c + d*x)^5)/(5*d) + (a^3*coth(c + d*x))/d - (a^3*coth(c + d*x)^3)/(3*d) + (3*a*b^2*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^5*(a + b*sinh(c + d*x)^3)^3, x, 11, (3*b^3*x)/8 - (3*a^3*atanh(cosh(c + d*x)))/(8*d) + (3*a*b^2*cosh(c + d*x))/d - (3*a^2*b*coth(c + d*x))/d + (3*a^3*coth(c + d*x)*csch(c + d*x))/(8*d) - (a^3*coth(c + d*x)*csch(c + d*x)^3)/(4*d) - (3*b^3*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b^3*cosh(c + d*x)*sinh(c + d*x)^3)/(4*d)]
    @test_int [csch(c + d*x)^6*(a + b*sinh(c + d*x)^3)^3, x, 8, 3*a*b^2*x + (3*a^2*b*atanh(cosh(c + d*x)))/(2*d) - (b^3*cosh(c + d*x))/d + (b^3*cosh(c + d*x)^3)/(3*d) - (a^3*coth(c + d*x))/d + (2*a^3*coth(c + d*x)^3)/(3*d) - (a^3*coth(c + d*x)^5)/(5*d) - (3*a^2*b*coth(c + d*x)*csch(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^7*(a + b*sinh(c + d*x)^3)^3, x, 11, -((b^3*x)/2) + (5*a^3*atanh(cosh(c + d*x)))/(16*d) - (3*a*b^2*atanh(cosh(c + d*x)))/d + (3*a^2*b*coth(c + d*x))/d - (a^2*b*coth(c + d*x)^3)/d - (5*a^3*coth(c + d*x)*csch(c + d*x))/(16*d) + (5*a^3*coth(c + d*x)*csch(c + d*x)^3)/(24*d) - (a^3*coth(c + d*x)*csch(c + d*x)^5)/(6*d) + (b^3*cosh(c + d*x)*sinh(c + d*x))/(2*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sinh(c + d*x)^6/(a + b*sinh(c + d*x)^3), x, 15, -((a*x)/b^2) - (2*(-1)^(2/3)*a^(4/3)*atan(((-1)^(1/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))*b^2*d) - (2*(-1)^(2/3)*a^(4/3)*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*b^2*d) - (2*a^(4/3)*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*sqrt(a^(2/3) + b^(2/3))*b^2*d) - cosh(c + d*x)/(b*d) + cosh(c + d*x)^3/(3*b*d)]
    @test_int [sinh(c + d*x)^5/(a + b*sinh(c + d*x)^3), x, 15, -(x/(2*b)) + (2*a*atan(((-1)^(5/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-(-1)^(2/3))*a^(2/3) - b^(2/3))))/(3*sqrt((-(-1)^(2/3))*a^(2/3) - b^(2/3))*b^(5/3)*d) + (2*a*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*b^(5/3)*d) + (2*a*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*sqrt(a^(2/3) + b^(2/3))*b^(5/3)*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*b*d)]
    @test_int [sinh(c + d*x)^4/(a + b*sinh(c + d*x)^3), x, 14, -((2*a^(2/3)*atan(((-1)^(1/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))*b^(4/3)*d)) + (2*(-1)^(1/3)*a^(2/3)*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*b^(4/3)*d) - (2*a^(2/3)*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*sqrt(a^(2/3) + b^(2/3))*b^(4/3)*d) + cosh(c + d*x)/(b*d)]
    @test_int [sinh(c + d*x)^3/(a + b*sinh(c + d*x)^3), x, 13, x/b + (2*(-1)^(2/3)*a^(1/3)*atan(((-1)^(1/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))*b*d) + (2*(-1)^(2/3)*a^(1/3)*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*b*d) + (2*a^(1/3)*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*sqrt(a^(2/3) + b^(2/3))*b*d)]
    @test_int [sinh(c + d*x)^2/(a + b*sinh(c + d*x)^3), x, 11, -((2*atan(((-1)^(5/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-(-1)^(2/3))*a^(2/3) - b^(2/3))))/(3*sqrt((-(-1)^(2/3))*a^(2/3) - b^(2/3))*b^(2/3)*d)) - (2*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*b^(2/3)*d) - (2*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*sqrt(a^(2/3) + b^(2/3))*b^(2/3)*d)]
    @test_int [sinh(c + d*x)^1/(a + b*sinh(c + d*x)^3), x, 11, (2*atan(((-1)^(1/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(1/3)*sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))*b^(1/3)*d) - (2*(-1)^(1/3)*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*a^(1/3)*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*b^(1/3)*d) + (2*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*a^(1/3)*sqrt(a^(2/3) + b^(2/3))*b^(1/3)*d)]
    @test_int [sinh(c + d*x)^0/(a + b*sinh(c + d*x)^3), x, 11, -((2*(-1)^(2/3)*atan(((-1)^(1/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(2/3)*sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))*d)) - (2*(-1)^(2/3)*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*a^(2/3)*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*d) - (2*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*a^(2/3)*sqrt(a^(2/3) + b^(2/3))*d)]
    @test_int [csch(c + d*x)^1/(a + b*sinh(c + d*x)^3), x, 14, (2*b^(1/3)*atan(((-1)^(5/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-(-1)^(2/3))*a^(2/3) - b^(2/3))))/(3*a*sqrt((-(-1)^(2/3))*a^(2/3) - b^(2/3))*d) + (2*b^(1/3)*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*a*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*d) - atanh(cosh(c + d*x))/(a*d) + (2*b^(1/3)*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*a*sqrt(a^(2/3) + b^(2/3))*d)]
    @test_int [csch(c + d*x)^2/(a + b*sinh(c + d*x)^3), x, 15, -((2*b^(2/3)*atan(((-1)^(1/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(4/3)*sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))*d)) + (2*(-1)^(1/3)*b^(2/3)*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*a^(4/3)*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*d) - (2*b^(2/3)*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*a^(4/3)*sqrt(a^(2/3) + b^(2/3))*d) - coth(c + d*x)/(a*d)]
    @test_int [csch(c + d*x)^3/(a + b*sinh(c + d*x)^3), x, 15, (2*(-1)^(2/3)*b*atan(((-1)^(1/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))))/(3*a^(5/3)*sqrt((-1)^(1/3)*a^(2/3) - (-1)^(2/3)*b^(2/3))*d) + (2*(-1)^(2/3)*b*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*a^(5/3)*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*d) + atanh(cosh(c + d*x))/(2*a*d) + (2*b*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*a^(5/3)*sqrt(a^(2/3) + b^(2/3))*d) - (coth(c + d*x)*csch(c + d*x))/(2*a*d)]
    @test_int [csch(c + d*x)^4/(a + b*sinh(c + d*x)^3), x, 16, -((2*b^(4/3)*atan(((-1)^(5/6)*((-1)^(1/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-(-1)^(2/3))*a^(2/3) - b^(2/3))))/(3*a^2*sqrt((-(-1)^(2/3))*a^(2/3) - b^(2/3))*d)) - (2*b^(4/3)*atan(((-1)^(1/6)*((-1)^(5/6)*b^(1/3) + im*a^(1/3)*tanh((1/2)*(c + d*x))))/sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))))/(3*a^2*sqrt((-1)^(1/3)*a^(2/3) - b^(2/3))*d) + (b*atanh(cosh(c + d*x)))/(a^2*d) - (2*b^(4/3)*atanh((b^(1/3) - a^(1/3)*tanh((1/2)*(c + d*x)))/sqrt(a^(2/3) + b^(2/3))))/(3*a^2*sqrt(a^(2/3) + b^(2/3))*d) + coth(c + d*x)/(a*d) - coth(c + d*x)^3/(3*a*d)]


    @test_int [1/(1 + sinh(x)^3), x, 12, -((2*(-1)^(1/6)*atan((im + (-1)^(1/6)*tanh(x/2))/sqrt(1 - (-1)^(1/3))))/(3*sqrt(1 - (-1)^(1/3)))) - (1/3)*sqrt(2)*atanh((1 - tanh(x/2))/sqrt(2)) - (1/3)*(-1)^(1/6)*log(1 + (-1)^(5/6) - (-1)^(1/6)*tanh(x/2)) + (1/3)*(-1)^(1/6)*log(1 + (-1)^(1/6) + (-1)^(1/3)*tanh(x/2))]
    @test_int [1/(1 - sinh(x)^3), x, 12, (2*(-1)^(5/6)*atan((im - (-1)^(5/6)*tanh(x/2))/sqrt(1 + (-1)^(2/3))))/(3*sqrt(1 + (-1)^(2/3))) + (1/3)*sqrt(2)*atanh((1 + tanh(x/2))/sqrt(2)) - (1/3)*(-1)^(5/6)*log(1 + (-1)^(5/6) + (-1)^(2/3)*tanh(x/2)) + (1/3)*(-1)^(5/6)*log(1 + (-1)^(1/6) + (-1)^(5/6)*tanh(x/2))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^3)^(p/2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^4)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^4)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sinh(c + d*x)^4*(a + b*sinh(c + d*x)^4), x, 6, (1/128)*(48*a + 35*b)*x - ((80*a + 93*b)*cosh(c + d*x)*sinh(c + d*x))/(128*d) + ((48*a + 163*b)*cosh(c + d*x)^3*sinh(c + d*x))/(192*d) - (25*b*cosh(c + d*x)^5*sinh(c + d*x))/(48*d) + (b*cosh(c + d*x)^7*sinh(c + d*x))/(8*d)]
    @test_int [sinh(c + d*x)^3*(a + b*sinh(c + d*x)^4), x, 3, -(((a + b)*cosh(c + d*x))/d) + ((a + 3*b)*cosh(c + d*x)^3)/(3*d) - (3*b*cosh(c + d*x)^5)/(5*d) + (b*cosh(c + d*x)^7)/(7*d)]
    @test_int [sinh(c + d*x)^2*(a + b*sinh(c + d*x)^4), x, 5, (-(1/16))*(8*a + 5*b)*x + ((8*a + 11*b)*cosh(c + d*x)*sinh(c + d*x))/(16*d) - (13*b*cosh(c + d*x)^3*sinh(c + d*x))/(24*d) + (b*cosh(c + d*x)^5*sinh(c + d*x))/(6*d)]
    @test_int [sinh(c + d*x)^1*(a + b*sinh(c + d*x)^4), x, 2, ((a + b)*cosh(c + d*x))/d - (2*b*cosh(c + d*x)^3)/(3*d) + (b*cosh(c + d*x)^5)/(5*d)]
    @test_int [sinh(c + d*x)^0*(a + b*sinh(c + d*x)^4), x, 4, a*x + (3*b*x)/8 - (3*b*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b*cosh(c + d*x)*sinh(c + d*x)^3)/(4*d)]
    @test_int [csch(c + d*x)^1*(a + b*sinh(c + d*x)^4), x, 4, -((a*atanh(cosh(c + d*x)))/d) - (b*cosh(c + d*x))/d + (b*cosh(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^2*(a + b*sinh(c + d*x)^4), x, 4, -((b*x)/2) - (a*coth(c + d*x))/d + (b*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^3*(a + b*sinh(c + d*x)^4), x, 4, (a*atanh(cosh(c + d*x)))/(2*d) + (b*cosh(c + d*x))/d - (a*coth(c + d*x)*csch(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*sinh(c + d*x)^4), x, 4, b*x + (a*coth(c + d*x))/d - (a*coth(c + d*x)^3)/(3*d)]
    @test_int [csch(c + d*x)^5*(a + b*sinh(c + d*x)^4), x, 4, -(((3*a + 8*b)*atanh(cosh(c + d*x)))/(8*d)) + (3*a*coth(c + d*x)*csch(c + d*x))/(8*d) - (a*coth(c + d*x)*csch(c + d*x)^3)/(4*d)]
    @test_int [csch(c + d*x)^6*(a + b*sinh(c + d*x)^4), x, 3, -(((a + b)*coth(c + d*x))/d) + (2*a*coth(c + d*x)^3)/(3*d) - (a*coth(c + d*x)^5)/(5*d)]
    @test_int [csch(c + d*x)^7*(a + b*sinh(c + d*x)^4), x, 5, ((5*a + 8*b)*atanh(cosh(c + d*x)))/(16*d) - ((5*a + 8*b)*coth(c + d*x)*csch(c + d*x))/(16*d) + (5*a*coth(c + d*x)*csch(c + d*x)^3)/(24*d) - (a*coth(c + d*x)*csch(c + d*x)^5)/(6*d)]


    @test_int [sinh(c + d*x)^3*(a + b*sinh(c + d*x)^4)^2, x, 3, -(((a + b)^2*cosh(c + d*x))/d) + ((a + b)*(a + 5*b)*cosh(c + d*x)^3)/(3*d) - (2*b*(3*a + 5*b)*cosh(c + d*x)^5)/(5*d) + (2*b*(a + 5*b)*cosh(c + d*x)^7)/(7*d) - (5*b^2*cosh(c + d*x)^9)/(9*d) + (b^2*cosh(c + d*x)^11)/(11*d)]
    @test_int [sinh(c + d*x)^2*(a + b*sinh(c + d*x)^4)^2, x, 7, (-(1/256))*(128*a^2 + 160*a*b + 63*b^2)*x + ((128*a^2 + 352*a*b + 193*b^2)*cosh(c + d*x)*sinh(c + d*x))/(256*d) - (b*(416*a + 447*b)*cosh(c + d*x)^3*sinh(c + d*x))/(384*d) + (b*(160*a + 513*b)*cosh(c + d*x)^5*sinh(c + d*x))/(480*d) - (41*b^2*cosh(c + d*x)^7*sinh(c + d*x))/(80*d) + (b^2*cosh(c + d*x)^9*sinh(c + d*x))/(10*d)]
    @test_int [sinh(c + d*x)^1*(a + b*sinh(c + d*x)^4)^2, x, 3, ((a + b)^2*cosh(c + d*x))/d - (4*b*(a + b)*cosh(c + d*x)^3)/(3*d) + (2*b*(a + 3*b)*cosh(c + d*x)^5)/(5*d) - (4*b^2*cosh(c + d*x)^7)/(7*d) + (b^2*cosh(c + d*x)^9)/(9*d)]
    @test_int [sinh(c + d*x)^0*(a + b*sinh(c + d*x)^4)^2, x, 6, (1/128)*(128*a^2 + 96*a*b + 35*b^2)*x - (b*(160*a + 93*b)*cosh(c + d*x)*sinh(c + d*x))/(128*d) + (b*(96*a + 163*b)*cosh(c + d*x)^3*sinh(c + d*x))/(192*d) - (25*b^2*cosh(c + d*x)^5*sinh(c + d*x))/(48*d) + (b^2*cosh(c + d*x)^7*sinh(c + d*x))/(8*d)]
    @test_int [csch(c + d*x)^1*(a + b*sinh(c + d*x)^4)^2, x, 4, -((a^2*atanh(cosh(c + d*x)))/d) - (b*(2*a + b)*cosh(c + d*x))/d + (b*(2*a + 3*b)*cosh(c + d*x)^3)/(3*d) - (3*b^2*cosh(c + d*x)^5)/(5*d) + (b^2*cosh(c + d*x)^7)/(7*d)]
    @test_int [csch(c + d*x)^2*(a + b*sinh(c + d*x)^4)^2, x, 6, (-(1/16))*b*(16*a + 5*b)*x - (a^2*coth(c + d*x))/d + (b*(16*a + 11*b)*cosh(c + d*x)*sinh(c + d*x))/(16*d) - (13*b^2*cosh(c + d*x)^3*sinh(c + d*x))/(24*d) + (b^2*cosh(c + d*x)^5*sinh(c + d*x))/(6*d)]
    @test_int [csch(c + d*x)^3*(a + b*sinh(c + d*x)^4)^2, x, 5, (a^2*atanh(cosh(c + d*x)))/(2*d) + (b*(2*a + b)*cosh(c + d*x))/d - (2*b^2*cosh(c + d*x)^3)/(3*d) + (b^2*cosh(c + d*x)^5)/(5*d) - (a^2*coth(c + d*x)*csch(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^4*(a + b*sinh(c + d*x)^4)^2, x, 6, (1/8)*b*(16*a + 3*b)*x + (a^2*coth(c + d*x))/d - (a^2*coth(c + d*x)^3)/(3*d) - (5*b^2*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b^2*cosh(c + d*x)^3*sinh(c + d*x))/(4*d)]
    @test_int [csch(c + d*x)^5*(a + b*sinh(c + d*x)^4)^2, x, 6, -((a*(3*a + 16*b)*atanh(cosh(c + d*x)))/(8*d)) - (b^2*cosh(c + d*x))/d + (b^2*cosh(c + d*x)^3)/(3*d) + (3*a^2*coth(c + d*x)*csch(c + d*x))/(8*d) - (a^2*coth(c + d*x)*csch(c + d*x)^3)/(4*d)]
    @test_int [csch(c + d*x)^6*(a + b*sinh(c + d*x)^4)^2, x, 5, -((b^2*x)/2) - (a*(a + 2*b)*coth(c + d*x))/d + (2*a^2*coth(c + d*x)^3)/(3*d) - (a^2*coth(c + d*x)^5)/(5*d) + (b^2*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^7*(a + b*sinh(c + d*x)^4)^2, x, 6, (a*(5*a + 16*b)*atanh(cosh(c + d*x)))/(16*d) + (b^2*cosh(c + d*x))/d - (a*(5*a + 16*b)*coth(c + d*x)*csch(c + d*x))/(16*d) + (5*a^2*coth(c + d*x)*csch(c + d*x)^3)/(24*d) - (a^2*coth(c + d*x)*csch(c + d*x)^5)/(6*d)]


    @test_int [sinh(c + d*x)^5*(a + b*sinh(c + d*x)^4)^3, x, 3, ((a + b)^3*cosh(c + d*x))/d - (2*(a + b)^2*(a + 4*b)*cosh(c + d*x)^3)/(3*d) + ((a + b)*(a^2 + 17*a*b + 28*b^2)*cosh(c + d*x)^5)/(5*d) - (4*b*(3*a^2 + 15*a*b + 14*b^2)*cosh(c + d*x)^7)/(7*d) + (b*(3*a^2 + 45*a*b + 70*b^2)*cosh(c + d*x)^9)/(9*d) - (2*b^2*(9*a + 28*b)*cosh(c + d*x)^11)/(11*d) + (b^2*(3*a + 28*b)*cosh(c + d*x)^13)/(13*d) - (8*b^3*cosh(c + d*x)^15)/(15*d) + (b^3*cosh(c + d*x)^17)/(17*d)]
    @test_int [sinh(c + d*x)^3*(a + b*sinh(c + d*x)^4)^3, x, 3, -(((a + b)^3*cosh(c + d*x))/d) + ((a + b)^2*(a + 7*b)*cosh(c + d*x)^3)/(3*d) - (3*b*(a + b)*(3*a + 7*b)*cosh(c + d*x)^5)/(5*d) + (b*(3*a^2 + 30*a*b + 35*b^2)*cosh(c + d*x)^7)/(7*d) - (5*b^2*(3*a + 7*b)*cosh(c + d*x)^9)/(9*d) + (3*b^2*(a + 7*b)*cosh(c + d*x)^11)/(11*d) - (7*b^3*cosh(c + d*x)^13)/(13*d) + (b^3*cosh(c + d*x)^15)/(15*d)]
    @test_int [sinh(c + d*x)^1*(a + b*sinh(c + d*x)^4)^3, x, 3, ((a + b)^3*cosh(c + d*x))/d - (2*b*(a + b)^2*cosh(c + d*x)^3)/d + (3*b*(a + b)*(a + 5*b)*cosh(c + d*x)^5)/(5*d) - (4*b^2*(3*a + 5*b)*cosh(c + d*x)^7)/(7*d) + (b^2*(a + 5*b)*cosh(c + d*x)^9)/(3*d) - (6*b^3*cosh(c + d*x)^11)/(11*d) + (b^3*cosh(c + d*x)^13)/(13*d)]
    @test_int [csch(c + d*x)^1*(a + b*sinh(c + d*x)^4)^3, x, 4, -((a^3*atanh(cosh(c + d*x)))/d) - (b*(3*a^2 + 3*a*b + b^2)*cosh(c + d*x))/d + (b*(3*a^2 + 9*a*b + 5*b^2)*cosh(c + d*x)^3)/(3*d) - (b^2*(9*a + 10*b)*cosh(c + d*x)^5)/(5*d) + (b^2*(3*a + 10*b)*cosh(c + d*x)^7)/(7*d) - (5*b^3*cosh(c + d*x)^9)/(9*d) + (b^3*cosh(c + d*x)^11)/(11*d)]
    @test_int [csch(c + d*x)^3*(a + b*sinh(c + d*x)^4)^3, x, 5, (a^3*atanh(cosh(c + d*x)))/(2*d) + (b*(3*a^2 + 3*a*b + b^2)*cosh(c + d*x))/d - (2*b^2*(3*a + 2*b)*cosh(c + d*x)^3)/(3*d) + (3*b^2*(a + 2*b)*cosh(c + d*x)^5)/(5*d) - (4*b^3*cosh(c + d*x)^7)/(7*d) + (b^3*cosh(c + d*x)^9)/(9*d) - (a^3*coth(c + d*x)*csch(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^5*(a + b*sinh(c + d*x)^4)^3, x, 6, -((3*a^2*(a + 8*b)*atanh(cosh(c + d*x)))/(8*d)) - (b^2*(3*a + b)*cosh(c + d*x))/d + (b^2*(a + b)*cosh(c + d*x)^3)/d - (3*b^3*cosh(c + d*x)^5)/(5*d) + (b^3*cosh(c + d*x)^7)/(7*d) + (3*a^3*coth(c + d*x)*csch(c + d*x))/(8*d) - (a^3*coth(c + d*x)*csch(c + d*x)^3)/(4*d)]
    @test_int [csch(c + d*x)^7*(a + b*sinh(c + d*x)^4)^3, x, 7, (a^2*(5*a + 24*b)*atanh(cosh(c + d*x)))/(16*d) + (b^2*(3*a + b)*cosh(c + d*x))/d - (2*b^3*cosh(c + d*x)^3)/(3*d) + (b^3*cosh(c + d*x)^5)/(5*d) - (a^2*(5*a + 24*b)*coth(c + d*x)*csch(c + d*x))/(16*d) + (5*a^3*coth(c + d*x)*csch(c + d*x)^3)/(24*d) - (a^3*coth(c + d*x)*csch(c + d*x)^5)/(6*d)]
    @test_int [csch(c + d*x)^9*(a + b*sinh(c + d*x)^4)^3, x, 8, -((a*(35*a^2 + 144*a*b + 384*b^2)*atanh(cosh(c + d*x)))/(128*d)) - (b^3*cosh(c + d*x))/d + (b^3*cosh(c + d*x)^3)/(3*d) + (a^2*(35*a + 144*b)*coth(c + d*x)*csch(c + d*x))/(128*d) - (a^2*(35*a + 144*b)*coth(c + d*x)*csch(c + d*x)^3)/(192*d) + (7*a^3*coth(c + d*x)*csch(c + d*x)^5)/(48*d) - (a^3*coth(c + d*x)*csch(c + d*x)^7)/(8*d)]
    @test_int [csch(c + d*x)^11*(a + b*sinh(c + d*x)^4)^3, x, 8, (3*a*(21*a^2 + 80*a*b + 128*b^2)*atanh(cosh(c + d*x)))/(256*d) + (b^3*cosh(c + d*x))/d - (3*a*(21*a^2 + 80*a*b + 128*b^2)*coth(c + d*x)*csch(c + d*x))/(256*d) + (a^2*(21*a + 80*b)*coth(c + d*x)*csch(c + d*x)^3)/(128*d) - (a^2*(21*a + 80*b)*coth(c + d*x)*csch(c + d*x)^5)/(160*d) + (9*a^3*coth(c + d*x)*csch(c + d*x)^7)/(80*d) - (a^3*coth(c + d*x)*csch(c + d*x)^9)/(10*d)]
    @test_int [csch(c + d*x)^13*(a + b*sinh(c + d*x)^4)^3, x, 8, -(((231*a^3 + 840*a^2*b + 1152*a*b^2 + 1024*b^3)*atanh(cosh(c + d*x)))/(1024*d)) + (3*a*(77*a^2 + 280*a*b + 384*b^2)*coth(c + d*x)*csch(c + d*x))/(1024*d) - (a*(77*a^2 + 280*a*b + 384*b^2)*coth(c + d*x)*csch(c + d*x)^3)/(512*d) + (7*a^2*(11*a + 40*b)*coth(c + d*x)*csch(c + d*x)^5)/(640*d) - (3*a^2*(11*a + 40*b)*coth(c + d*x)*csch(c + d*x)^7)/(320*d) + (11*a^3*coth(c + d*x)*csch(c + d*x)^9)/(120*d) - (a^3*coth(c + d*x)*csch(c + d*x)^11)/(12*d)]

    @test_int [sinh(c + d*x)^2*(a + b*sinh(c + d*x)^4)^3, x, 9, -(((1024*a^3 + 1920*a^2*b + 1512*a*b^2 + 429*b^3)*x)/2048) + ((1024*a^3 + 4224*a^2*b + 4632*a*b^2 + 1619*b^3)*cosh(c + d*x)*sinh(c + d*x))/(2048*d) - (b*(4992*a^2 + 10728*a*b + 5549*b^2)*cosh(c + d*x)^3*sinh(c + d*x))/(3072*d) + (b*(1920*a^2 + 12312*a*b + 10579*b^2)*cosh(c + d*x)^5*sinh(c + d*x))/(3840*d) - (b^2*(6888*a + 11821*b)*cosh(c + d*x)^7*sinh(c + d*x))/(4480*d) + (b^2*(504*a + 2593*b)*cosh(c + d*x)^9*sinh(c + d*x))/(1680*d) - (85*b^3*cosh(c + d*x)^11*sinh(c + d*x))/(168*d) + (b^3*cosh(c + d*x)^13*sinh(c + d*x))/(14*d)]
    @test_int [sinh(c + d*x)^0*(a + b*sinh(c + d*x)^4)^3, x, 8, ((1024*a^3 + 1152*a^2*b + 840*a*b^2 + 231*b^3)*x)/1024 - (b*(1920*a^2 + 2232*a*b + 793*b^2)*cosh(c + d*x)*sinh(c + d*x))/(1024*d) + (b*(1152*a^2 + 3912*a*b + 2279*b^2)*cosh(c + d*x)^3*sinh(c + d*x))/(1536*d) - (b^2*(3000*a + 3481*b)*cosh(c + d*x)^5*sinh(c + d*x))/(1920*d) + (3*b^2*(40*a + 139*b)*cosh(c + d*x)^7*sinh(c + d*x))/(320*d) - (61*b^3*cosh(c + d*x)^9*sinh(c + d*x))/(120*d) + (b^3*cosh(c + d*x)^11*sinh(c + d*x))/(12*d)]
    @test_int [csch(c + d*x)^2*(a + b*sinh(c + d*x)^4)^3, x, 8, (-(3/256))*b*(128*a^2 + 80*a*b + 21*b^2)*x - (a^3*coth(c + d*x))/d + (b*(384*a^2 + 528*a*b + 193*b^2)*cosh(c + d*x)*sinh(c + d*x))/(256*d) - (b^2*(208*a + 149*b)*cosh(c + d*x)^3*sinh(c + d*x))/(128*d) + (b^2*(80*a + 171*b)*cosh(c + d*x)^5*sinh(c + d*x))/(160*d) - (41*b^3*cosh(c + d*x)^7*sinh(c + d*x))/(80*d) + (b^3*cosh(c + d*x)^9*sinh(c + d*x))/(10*d)]
    @test_int [csch(c + d*x)^4*(a + b*sinh(c + d*x)^4)^3, x, 8, (1/128)*b*(384*a^2 + 144*a*b + 35*b^2)*x + (a^3*coth(c + d*x))/d - (a^3*coth(c + d*x)^3)/(3*d) - (3*b^2*(80*a + 31*b)*cosh(c + d*x)*sinh(c + d*x))/(128*d) + (b^2*(144*a + 163*b)*cosh(c + d*x)^3*sinh(c + d*x))/(192*d) - (25*b^3*cosh(c + d*x)^5*sinh(c + d*x))/(48*d) + (b^3*cosh(c + d*x)^7*sinh(c + d*x))/(8*d)]
    @test_int [csch(c + d*x)^6*(a + b*sinh(c + d*x)^4)^3, x, 7, (-(1/16))*b^2*(24*a + 5*b)*x - (a^2*(a + 3*b)*coth(c + d*x))/d + (2*a^3*coth(c + d*x)^3)/(3*d) - (a^3*coth(c + d*x)^5)/(5*d) + (b^2*(24*a + 11*b)*cosh(c + d*x)*sinh(c + d*x))/(16*d) - (13*b^3*cosh(c + d*x)^3*sinh(c + d*x))/(24*d) + (b^3*cosh(c + d*x)^5*sinh(c + d*x))/(6*d)]
    @test_int [csch(c + d*x)^8*(a + b*sinh(c + d*x)^4)^3, x, 6, (3/8)*b^2*(8*a + b)*x + (a^2*(a + 3*b)*coth(c + d*x))/d - (a^2*(a + b)*coth(c + d*x)^3)/d + (3*a^3*coth(c + d*x)^5)/(5*d) - (a^3*coth(c + d*x)^7)/(7*d) - (5*b^3*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b^3*cosh(c + d*x)^3*sinh(c + d*x))/(4*d)]
    @test_int [csch(c + d*x)^10*(a + b*sinh(c + d*x)^4)^3, x, 5, -((b^3*x)/2) - (a*(a^2 + 3*a*b + 3*b^2)*coth(c + d*x))/d + (2*a^2*(2*a + 3*b)*coth(c + d*x)^3)/(3*d) - (3*a^2*(2*a + b)*coth(c + d*x)^5)/(5*d) + (4*a^3*coth(c + d*x)^7)/(7*d) - (a^3*coth(c + d*x)^9)/(9*d) + (b^3*cosh(c + d*x)*sinh(c + d*x))/(2*d)]
    @test_int [csch(c + d*x)^12*(a + b*sinh(c + d*x)^4)^3, x, 4, b^3*x + (a*(a^2 + 3*a*b + 3*b^2)*coth(c + d*x))/d - (a*(5*a^2 + 9*a*b + 3*b^2)*coth(c + d*x)^3)/(3*d) + (a^2*(10*a + 9*b)*coth(c + d*x)^5)/(5*d) - (a^2*(10*a + 3*b)*coth(c + d*x)^7)/(7*d) + (5*a^3*coth(c + d*x)^9)/(9*d) - (a^3*coth(c + d*x)^11)/(11*d)]
    @test_int [csch(c + d*x)^14*(a + b*sinh(c + d*x)^4)^3, x, 3, -(((a + b)^3*coth(c + d*x))/d) + (2*a*(a + b)^2*coth(c + d*x)^3)/d - (3*a*(a + b)*(5*a + b)*coth(c + d*x)^5)/(5*d) + (4*a^2*(5*a + 3*b)*coth(c + d*x)^7)/(7*d) - (a^2*(5*a + b)*coth(c + d*x)^9)/(3*d) + (6*a^3*coth(c + d*x)^11)/(11*d) - (a^3*coth(c + d*x)^13)/(13*d)]
    @test_int [csch(c + d*x)^16*(a + b*sinh(c + d*x)^4)^3, x, 3, ((a + b)^3*coth(c + d*x))/d - ((a + b)^2*(7*a + b)*coth(c + d*x)^3)/(3*d) + (3*a*(a + b)*(7*a + 3*b)*coth(c + d*x)^5)/(5*d) - (a*(35*a^2 + 30*a*b + 3*b^2)*coth(c + d*x)^7)/(7*d) + (5*a^2*(7*a + 3*b)*coth(c + d*x)^9)/(9*d) - (3*a^2*(7*a + b)*coth(c + d*x)^11)/(11*d) + (7*a^3*coth(c + d*x)^13)/(13*d) - (a^3*coth(c + d*x)^15)/(15*d)]
    @test_int [csch(c + d*x)^18*(a + b*sinh(c + d*x)^4)^3, x, 3, -(((a + b)^3*coth(c + d*x))/d) + (2*(a + b)^2*(4*a + b)*coth(c + d*x)^3)/(3*d) - ((a + b)*(28*a^2 + 17*a*b + b^2)*coth(c + d*x)^5)/(5*d) + (4*a*(14*a^2 + 15*a*b + 3*b^2)*coth(c + d*x)^7)/(7*d) - (a*(70*a^2 + 45*a*b + 3*b^2)*coth(c + d*x)^9)/(9*d) + (2*a^2*(28*a + 9*b)*coth(c + d*x)^11)/(11*d) - (a^2*(28*a + 3*b)*coth(c + d*x)^13)/(13*d) + (8*a^3*coth(c + d*x)^15)/(15*d) - (a^3*coth(c + d*x)^17)/(17*d)]
    @test_int [csch(c + d*x)^20*(a + b*sinh(c + d*x)^4)^3, x, 3, ((a + b)^3*coth(c + d*x))/d - ((a + b)^2*(3*a + b)*coth(c + d*x)^3)/d + (3*(a + b)*(12*a^2 + 9*a*b + b^2)*coth(c + d*x)^5)/(5*d) - ((84*a^3 + 105*a^2*b + 30*a*b^2 + b^3)*coth(c + d*x)^7)/(7*d) + (a*(42*a^2 + 35*a*b + 5*b^2)*coth(c + d*x)^9)/(3*d) - (3*a*(42*a^2 + 21*a*b + b^2)*coth(c + d*x)^11)/(11*d) + (21*a^2*(4*a + b)*coth(c + d*x)^13)/(13*d) - (a^2*(12*a + b)*coth(c + d*x)^15)/(5*d) + (9*a^3*coth(c + d*x)^17)/(17*d) - (a^3*coth(c + d*x)^19)/(19*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [sinh(c + d*x)^7/(a - b*sinh(c + d*x)^4), x, 6, -((a*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*sqrt(sqrt(a) - sqrt(b))*b^(7/4)*d)) + (a*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*sqrt(sqrt(a) + sqrt(b))*b^(7/4)*d) + cosh(c + d*x)/(b*d) - cosh(c + d*x)^3/(3*b*d)]
    @test_int [sinh(c + d*x)^5/(a - b*sinh(c + d*x)^4), x, 6, (sqrt(a)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*sqrt(sqrt(a) - sqrt(b))*b^(5/4)*d) + (sqrt(a)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*sqrt(sqrt(a) + sqrt(b))*b^(5/4)*d) - cosh(c + d*x)/(b*d)]
    @test_int [sinh(c + d*x)^3/(a - b*sinh(c + d*x)^4), x, 4, -atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b)))/(2*sqrt(sqrt(a) - sqrt(b))*b^(3/4)*d) + atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b)))/(2*sqrt(sqrt(a) + sqrt(b))*b^(3/4)*d)]
    @test_int [sinh(c + d*x)^1/(a - b*sinh(c + d*x)^4), x, 4, atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b)))/(2*sqrt(a)*sqrt(sqrt(a) - sqrt(b))*b^(1/4)*d) + atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b)))/(2*sqrt(a)*sqrt(sqrt(a) + sqrt(b))*b^(1/4)*d)]
    @test_int [csch(c + d*x)^1/(a - b*sinh(c + d*x)^4), x, 7, -(b^(1/4)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*a*sqrt(sqrt(a) - sqrt(b))*d) - atanh(cosh(c + d*x))/(a*d) + (b^(1/4)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*a*sqrt(sqrt(a) + sqrt(b))*d)]
    @test_int [csch(c + d*x)^3/(a - b*sinh(c + d*x)^4), x, 7, (b^(3/4)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*a^(3/2)*sqrt(sqrt(a) - sqrt(b))*d) + atanh(cosh(c + d*x))/(2*a*d) + (b^(3/4)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*a^(3/2)*sqrt(sqrt(a) + sqrt(b))*d) + 1/(4*a*d*(1 - cosh(c + d*x))) - 1/(4*a*d*(1 + cosh(c + d*x)))]

    @test_int [sinh(c + d*x)^6/(a - b*sinh(c + d*x)^4), x, 7, x/(2*b) - (a^(3/4)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) - sqrt(b))*b^(3/2)*d) + (a^(3/4)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) + sqrt(b))*b^(3/2)*d) - 1/(4*b*d*(1 - tanh(c + d*x))) + 1/(4*b*d*(1 + tanh(c + d*x)))]
    @test_int [sinh(c + d*x)^4/(a - b*sinh(c + d*x)^4), x, 7, -(x/b) + (a^(1/4)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) - sqrt(b))*b*d) + (a^(1/4)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) + sqrt(b))*b*d)]
    @test_int [sinh(c + d*x)^2/(a - b*sinh(c + d*x)^4), x, 4, -atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4))/(2*a^(1/4)*sqrt(sqrt(a) - sqrt(b))*sqrt(b)*d) + atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4))/(2*a^(1/4)*sqrt(sqrt(a) + sqrt(b))*sqrt(b)*d)]
    @test_int [sinh(c + d*x)^0/(a - b*sinh(c + d*x)^4), x, 4, atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4))/(2*a^(3/4)*sqrt(sqrt(a) - sqrt(b))*d) + atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4))/(2*a^(3/4)*sqrt(sqrt(a) + sqrt(b))*d)]
    @test_int [csch(c + d*x)^2/(a - b*sinh(c + d*x)^4), x, 6, -(sqrt(b)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*a^(5/4)*sqrt(sqrt(a) - sqrt(b))*d) + (sqrt(b)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*a^(5/4)*sqrt(sqrt(a) + sqrt(b))*d) - coth(c + d*x)/(a*d)]
    @test_int [csch(c + d*x)^4/(a - b*sinh(c + d*x)^4), x, 6, (b*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*a^(7/4)*sqrt(sqrt(a) - sqrt(b))*d) + (b*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*a^(7/4)*sqrt(sqrt(a) + sqrt(b))*d) + coth(c + d*x)/(a*d) - coth(c + d*x)^3/(3*a*d)]


    @test_int [sinh(c + d*x)^9/(a - b*sinh(c + d*x)^4)^2, x, 7, -(sqrt(a)*(5*sqrt(a) - 6*sqrt(b))*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*(sqrt(a) - sqrt(b))^(3/2)*b^(9/4)*d) - (sqrt(a)*(5*sqrt(a) + 6*sqrt(b))*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*(sqrt(a) + sqrt(b))^(3/2)*b^(9/4)*d) + cosh(c + d*x)/(b^2*d) + (a*cosh(c + d*x)*(a + b - b*cosh(c + d*x)^2))/(4*(a - b)*b^2*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^7/(a - b*sinh(c + d*x)^4)^2, x, 5, ((3*sqrt(a) - 4*sqrt(b))*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*(sqrt(a) - sqrt(b))^(3/2)*b^(7/4)*d) - ((3*sqrt(a) + 4*sqrt(b))*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*(sqrt(a) + sqrt(b))^(3/2)*b^(7/4)*d) - (a*cosh(c + d*x)*(2 - cosh(c + d*x)^2))/(4*(a - b)*b*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^5/(a - b*sinh(c + d*x)^4)^2, x, 5, -((sqrt(a) - 2*sqrt(b))*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*sqrt(a)*(sqrt(a) - sqrt(b))^(3/2)*b^(5/4)*d) - ((sqrt(a) + 2*sqrt(b))*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*sqrt(a)*(sqrt(a) + sqrt(b))^(3/2)*b^(5/4)*d) + (cosh(c + d*x)*(a + b - b*cosh(c + d*x)^2))/(4*(a - b)*b*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^3/(a - b*sinh(c + d*x)^4)^2, x, 5, -atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b)))/(8*sqrt(a)*(sqrt(a) - sqrt(b))^(3/2)*b^(3/4)*d) + atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b)))/(8*sqrt(a)*(sqrt(a) + sqrt(b))^(3/2)*b^(3/4)*d) - (cosh(c + d*x)*(2 - cosh(c + d*x)^2))/(4*(a - b)*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^1/(a - b*sinh(c + d*x)^4)^2, x, 5, ((3*sqrt(a) - 2*sqrt(b))*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*a^(3/2)*(sqrt(a) - sqrt(b))^(3/2)*b^(1/4)*d) + ((3*sqrt(a) + 2*sqrt(b))*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*a^(3/2)*(sqrt(a) + sqrt(b))^(3/2)*b^(1/4)*d) + (cosh(c + d*x)*(a + b - b*cosh(c + d*x)^2))/(4*a*(a - b)*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [csch(c + d*x)^1/(a - b*sinh(c + d*x)^4)^2, x, 11, -(b^(1/4)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*a^(3/2)*(sqrt(a) - sqrt(b))^(3/2)*d) - (b^(1/4)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*a^2*sqrt(sqrt(a) - sqrt(b))*d) - atanh(cosh(c + d*x))/(a^2*d) + (b^(1/4)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*a^(3/2)*(sqrt(a) + sqrt(b))^(3/2)*d) + (b^(1/4)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*a^2*sqrt(sqrt(a) + sqrt(b))*d) - (b*cosh(c + d*x)*(2 - cosh(c + d*x)^2))/(4*a*(a - b)*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]

    @test_int [sinh(c + d*x)^8/(a - b*sinh(c + d*x)^4)^2, x, 14, x/b^2 - (a^(1/4)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) - sqrt(b))*b^2*d) + (a^(1/4)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*(sqrt(a) - sqrt(b))^(3/2)*b^(3/2)*d) - (a^(1/4)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(2*sqrt(sqrt(a) + sqrt(b))*b^2*d) - (a^(1/4)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*(sqrt(a) + sqrt(b))^(3/2)*b^(3/2)*d) - tanh(c + d*x)/(4*(a - b)*b*d) + tanh(c + d*x)^5/(4*b*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^6/(a - b*sinh(c + d*x)^4)^2, x, 6, ((2*sqrt(a) - 3*sqrt(b))*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*a^(1/4)*(sqrt(a) - sqrt(b))^(3/2)*b^(3/2)*d) - ((2*sqrt(a) + 3*sqrt(b))*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*a^(1/4)*(sqrt(a) + sqrt(b))^(3/2)*b^(3/2)*d) + tanh(c + d*x)/(4*(a - b)*b*d) + (sech(c + d*x)^2*tanh(c + d*x)^3)/(4*b*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^4/(a - b*sinh(c + d*x)^4)^2, x, 7, atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4))/(8*a^(3/4)*(sqrt(a) - sqrt(b))^(3/2)*sqrt(b)*d) - atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4))/(8*a^(3/4)*(sqrt(a) + sqrt(b))^(3/2)*sqrt(b)*d) - tanh(c + d*x)/(4*a*(a - b)*d) + tanh(c + d*x)^5/(4*a*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^2/(a - b*sinh(c + d*x)^4)^2, x, 5, -(((2*sqrt(a) - sqrt(b))*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*a^(5/4)*(sqrt(a) - sqrt(b))^(3/2)*sqrt(b)*d)) + ((2*sqrt(a) + sqrt(b))*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*a^(5/4)*(sqrt(a) + sqrt(b))^(3/2)*sqrt(b)*d) + (tanh(c + d*x)*(a - (a + b)*tanh(c + d*x)^2))/(4*a*(a - b)*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^0/(a - b*sinh(c + d*x)^4)^2, x, 5, ((4*sqrt(a) - 3*sqrt(b))*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*a^(7/4)*(sqrt(a) - sqrt(b))^(3/2)*d) + ((4*sqrt(a) + 3*sqrt(b))*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*a^(7/4)*(sqrt(a) + sqrt(b))^(3/2)*d) - (b*tanh(c + d*x)*(1 - 2*tanh(c + d*x)^2))/(4*a*(a - b)*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [csch(c + d*x)^2/(a - b*sinh(c + d*x)^4)^2, x, 7, -(((6*sqrt(a) - 5*sqrt(b))*sqrt(b)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*a^(9/4)*(sqrt(a) - sqrt(b))^(3/2)*d)) + ((6*sqrt(a) + 5*sqrt(b))*sqrt(b)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(8*a^(9/4)*(sqrt(a) + sqrt(b))^(3/2)*d) - coth(c + d*x)/(a^2*d) + (b*tanh(c + d*x)*(a - (a + b)*tanh(c + d*x)^2))/(4*a^2*(a - b)*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]


    @test_int [sinh(c + d*x)^9/(a - b*sinh(c + d*x)^4)^3, x, 6, ((5*a - 14*sqrt(a)*sqrt(b) + 12*b)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*sqrt(a)*(sqrt(a) - sqrt(b))^(5/2)*b^(9/4)*d) + ((5*a + 14*sqrt(a)*sqrt(b) + 12*b)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*sqrt(a)*(sqrt(a) + sqrt(b))^(5/2)*b^(9/4)*d) + (a*cosh(c + d*x)*(a + b - b*cosh(c + d*x)^2))/(8*(a - b)*b^2*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4)^2) - (cosh(c + d*x)*(9*a^2 - 11*a*b - 10*b^2 - 2*(2*a - 5*b)*b*cosh(c + d*x)^2))/(32*(a - b)^2*b^2*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^7/(a - b*sinh(c + d*x)^4)^3, x, 6, (3*(sqrt(a) - 2*sqrt(b))*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*sqrt(a)*(sqrt(a) - sqrt(b))^(5/2)*b^(7/4)*d) - (3*(sqrt(a) + 2*sqrt(b))*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*sqrt(a)*(sqrt(a) + sqrt(b))^(5/2)*b^(7/4)*d) - (a*cosh(c + d*x)*(2 - cosh(c + d*x)^2))/(8*(a - b)*b*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4)^2) + (cosh(c + d*x)*(5*a - 17*b - 3*(a - 3*b)*cosh(c + d*x)^2))/(32*(a - b)^2*b*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^5/(a - b*sinh(c + d*x)^4)^3, x, 6, -((3*a - 10*sqrt(a)*sqrt(b) + 4*b)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*a^(3/2)*(sqrt(a) - sqrt(b))^(5/2)*b^(5/4)*d) - ((3*a + 10*sqrt(a)*sqrt(b) + 4*b)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*a^(3/2)*(sqrt(a) + sqrt(b))^(5/2)*b^(5/4)*d) + (cosh(c + d*x)*(a + b - b*cosh(c + d*x)^2))/(8*(a - b)*b*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4)^2) - (cosh(c + d*x)*(a^2 - 11*a*b - 2*b^2 + 2*b*(2*a + b)*cosh(c + d*x)^2))/(32*a*(a - b)^2*b*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^3/(a - b*sinh(c + d*x)^4)^3, x, 6, -((5*sqrt(a) - 2*sqrt(b))*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*a^(3/2)*(sqrt(a) - sqrt(b))^(5/2)*b^(3/4)*d) + ((5*sqrt(a) + 2*sqrt(b))*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*a^(3/2)*(sqrt(a) + sqrt(b))^(5/2)*b^(3/4)*d) - (cosh(c + d*x)*(2 - cosh(c + d*x)^2))/(8*(a - b)*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4)^2) - (cosh(c + d*x)*(11*a + b - (5*a + b)*cosh(c + d*x)^2))/(32*a*(a - b)^2*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^1/(a - b*sinh(c + d*x)^4)^3, x, 6, (3*(7*a - 10*sqrt(a)*sqrt(b) + 4*b)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*a^(5/2)*(sqrt(a) - sqrt(b))^(5/2)*b^(1/4)*d) + (3*(7*a + 10*sqrt(a)*sqrt(b) + 4*b)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*a^(5/2)*(sqrt(a) + sqrt(b))^(5/2)*b^(1/4)*d) + (cosh(c + d*x)*(a + b - b*cosh(c + d*x)^2))/(8*a*(a - b)*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4)^2) + (cosh(c + d*x)*((7*a - 3*b)*(a + 2*b) - 6*(2*a - b)*b*cosh(c + d*x)^2))/(32*a^2*(a - b)^2*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]
    @test_int [csch(c + d*x)^1/(a - b*sinh(c + d*x)^4)^3, x, 16, -((5*sqrt(a) - 2*sqrt(b))*b^(1/4)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(64*a^(5/2)*(sqrt(a) - sqrt(b))^(5/2)*d) - (b^(1/4)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(8*a^(5/2)*(sqrt(a) - sqrt(b))^(3/2)*d) - (b^(1/4)*atan((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) - sqrt(b))))/(2*a^3*sqrt(sqrt(a) - sqrt(b))*d) - atanh(cosh(c + d*x))/(a^3*d) + (b^(1/4)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(8*a^(5/2)*(sqrt(a) + sqrt(b))^(3/2)*d) + (b^(1/4)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(2*a^3*sqrt(sqrt(a) + sqrt(b))*d) + ((5*sqrt(a) + 2*sqrt(b))*b^(1/4)*atanh((b^(1/4)*cosh(c + d*x))/sqrt(sqrt(a) + sqrt(b))))/(64*a^(5/2)*(sqrt(a) + sqrt(b))^(5/2)*d) - (b*cosh(c + d*x)*(2 - cosh(c + d*x)^2))/(8*a*(a - b)*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4)^2) - (b*cosh(c + d*x)*(2 - cosh(c + d*x)^2))/(4*a^2*(a - b)*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4)) - (b*cosh(c + d*x)*(11*a + b - (5*a + b)*cosh(c + d*x)^2))/(32*a^2*(a - b)^2*d*(a - b + 2*b*cosh(c + d*x)^2 - b*cosh(c + d*x)^4))]

    @test_int [sinh(c + d*x)^8/(a - b*sinh(c + d*x)^4)^3, x, 9, -(((2*sqrt(a) - 5*sqrt(b))*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(3/4)*(sqrt(a) - sqrt(b))^(5/2)*b^(3/2)*d)) + ((2*sqrt(a) + 5*sqrt(b))*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(3/4)*(sqrt(a) + sqrt(b))^(5/2)*b^(3/2)*d) - ((a + 5*b)*tanh(c + d*x))/(32*a*(a - b)^2*b*d) - tanh(c + d*x)^3/(32*a*(a - b)*b*d) + tanh(c + d*x)^9/(8*a*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4)^2) - (sech(c + d*x)^2*tanh(c + d*x)^5)/(32*a*b*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^6/(a - b*sinh(c + d*x)^4)^3, x, 6, ((4*a - 10*sqrt(a)*sqrt(b) + 3*b)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(5/4)*(sqrt(a) - sqrt(b))^(5/2)*b^(3/2)*d) - ((4*a + 10*sqrt(a)*sqrt(b) + 3*b)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(5/4)*(sqrt(a) + sqrt(b))^(5/2)*b^(3/2)*d) + (tanh(c + d*x)*(a*(a + 3*b) - (a^2 + 6*a*b + b^2)*tanh(c + d*x)^2))/(8*(a - b)^3*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4)^2) + (tanh(c + d*x)*((2*a*(a^2 - a*b - 8*b^2))/(a - b)^3 - ((2*a^2 + 15*a*b + 3*b^2)*tanh(c + d*x)^2)/(a - b)^2))/(32*a*b*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^4/(a - b*sinh(c + d*x)^4)^3, x, 6, (3*(2*sqrt(a) - sqrt(b))*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(7/4)*(sqrt(a) - sqrt(b))^(5/2)*sqrt(b)*d) - (3*(2*sqrt(a) + sqrt(b))*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(7/4)*(sqrt(a) + sqrt(b))^(5/2)*sqrt(b)*d) - (b*tanh(c + d*x)*(3*a + b - 4*(a + b)*tanh(c + d*x)^2))/(8*(a - b)^3*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4)^2) - (tanh(c + d*x)*((9*a^2 - 24*a*b - b^2)/(a - b)^3 - ((17*a + 3*b)*tanh(c + d*x)^2)/(a - b)^2))/(32*a*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^2/(a - b*sinh(c + d*x)^4)^3, x, 6, -(((12*a - 14*sqrt(a)*sqrt(b) + 5*b)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(9/4)*(sqrt(a) - sqrt(b))^(5/2)*sqrt(b)*d)) + ((12*a + 14*sqrt(a)*sqrt(b) + 5*b)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(9/4)*(sqrt(a) + sqrt(b))^(5/2)*sqrt(b)*d) + (b*tanh(c + d*x)*(a*(a + 3*b) - (a^2 + 6*a*b + b^2)*tanh(c + d*x)^2))/(8*a*(a - b)^3*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4)^2) + (tanh(c + d*x)*((2*a*(5*a^2 - 9*a*b - 4*b^2))/(a - b)^3 - (5*(2*a^2 + 3*a*b - b^2)*tanh(c + d*x)^2)/(a - b)^2))/(32*a^2*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [sinh(c + d*x)^0/(a - b*sinh(c + d*x)^4)^3, x, 6, ((32*a - 50*sqrt(a)*sqrt(b) + 21*b)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(11/4)*(sqrt(a) - sqrt(b))^(5/2)*d) + ((32*a + 50*sqrt(a)*sqrt(b) + 21*b)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(11/4)*(sqrt(a) + sqrt(b))^(5/2)*d) - (b^2*tanh(c + d*x)*(3*a + b - 4*(a + b)*tanh(c + d*x)^2))/(8*a*(a - b)^3*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4)^2) - (b*tanh(c + d*x)*((17*a^2 - 40*a*b + 7*b^2)/(a - b)^3 - ((33*a - 13*b)*tanh(c + d*x)^2)/(a - b)^2))/(32*a^2*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]
    @test_int [csch(c + d*x)^2/(a - b*sinh(c + d*x)^4)^3, x, 8, -((3*sqrt(b)*(20*a - 34*sqrt(a)*sqrt(b) + 15*b)*atanh((sqrt(sqrt(a) - sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(13/4)*(sqrt(a) - sqrt(b))^(5/2)*d)) + (3*sqrt(b)*(20*a + 34*sqrt(a)*sqrt(b) + 15*b)*atanh((sqrt(sqrt(a) + sqrt(b))*tanh(c + d*x))/a^(1/4)))/(64*a^(13/4)*(sqrt(a) + sqrt(b))^(5/2)*d) - coth(c + d*x)/(a^3*d) + (b^2*tanh(c + d*x)*(a*(a + 3*b) - (a^2 + 6*a*b + b^2)*tanh(c + d*x)^2))/(8*a^2*(a - b)^3*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4)^2) + (b*tanh(c + d*x)*((2*a^2*(9*a - 17*b))/(a - b)^3 - ((18*a^2 + 15*a*b - 13*b^2)*tanh(c + d*x)^2)/(a - b)^2))/(32*a^3*d*(a - 2*a*tanh(c + d*x)^2 + (a - b)*tanh(c + d*x)^4))]


    @test_int [1/(1 - sinh(x)^4), x, 3, atanh(sqrt(2)*tanh(x))/(2*sqrt(2)) + tanh(x)/2]
    @test_int [1/(1 + sinh(x)^4), x, 10, -(atan((sqrt(1 + sqrt(2)) - 2*tanh(x))/sqrt(-1 + sqrt(2)))/(4*sqrt(1 + sqrt(2)))) + atan((sqrt(1 + sqrt(2)) + 2*tanh(x))/sqrt(-1 + sqrt(2)))/(4*sqrt(1 + sqrt(2))) - (1/8)*sqrt(1 + sqrt(2))*log(sqrt(2) - 2*sqrt(1 + sqrt(2))*tanh(x) + 2*tanh(x)^2) + (1/8)*sqrt(1 + sqrt(2))*log(1 + sqrt(2*(1 + sqrt(2)))*tanh(x) + sqrt(2)*tanh(x)^2)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^4)^(p/2)=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*sinh(e+f*x)^n)^p=#


    @test_int [1/(a + b*sinh(x)^5), x, 17, -((2*atanh((b^(1/5) - a^(1/5)*tanh(x/2))/sqrt(a^(2/5) + b^(2/5))))/(5*a^(4/5)*sqrt(a^(2/5) + b^(2/5)))) + (2*(-1)^(9/10)*atanh(((-1)^(9/10)*((-1)^(1/5)*b^(1/5) + a^(1/5)*tanh(x/2)))/sqrt((-(-1)^(4/5))*a^(2/5) + (-1)^(1/5)*b^(2/5))))/(5*a^(4/5)*sqrt((-(-1)^(4/5))*a^(2/5) + (-1)^(1/5)*b^(2/5))) + (2*(-1)^(1/5)*atanh((b^(1/5) + (-1)^(1/5)*a^(1/5)*tanh(x/2))/sqrt((-1)^(2/5)*a^(2/5) + b^(2/5))))/(5*a^(4/5)*sqrt((-1)^(2/5)*a^(2/5) + b^(2/5))) + (2*(-1)^(9/10)*atanh(((-1)^(3/10)*(b^(1/5) + (-1)^(3/5)*a^(1/5)*tanh(x/2)))/sqrt((-(-1)^(4/5))*a^(2/5) + (-1)^(3/5)*b^(2/5))))/(5*a^(4/5)*sqrt((-(-1)^(4/5))*a^(2/5) + (-1)^(3/5)*b^(2/5))) - (2*(-1)^(9/10)*atanh((im*b^(1/5) - (-1)^(9/10)*a^(1/5)*tanh(x/2))/sqrt((-(-1)^(4/5))*a^(2/5) - b^(2/5))))/(5*a^(4/5)*sqrt((-(-1)^(4/5))*a^(2/5) - b^(2/5)))]
    @test_int [1/(a + b*sinh(x)^6), x, 7, atanh((sqrt(a^(1/3) - b^(1/3))*tanh(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) - b^(1/3))) + atanh((sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))*tanh(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) + (-1)^(1/3)*b^(1/3))) + atanh((sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3))*tanh(x))/a^(1/6))/(3*a^(5/6)*sqrt(a^(1/3) - (-1)^(2/3)*b^(1/3)))]
    @test_int [1/(a + b*sinh(x)^8), x, 9, -(atanh((sqrt((-a)^(1/4) - b^(1/4))*tanh(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) - b^(1/4)))) - atanh((sqrt((-a)^(1/4) - im*b^(1/4))*tanh(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) - im*b^(1/4))) - atanh((sqrt((-a)^(1/4) + im*b^(1/4))*tanh(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) + im*b^(1/4))) - atanh((sqrt((-a)^(1/4) + b^(1/4))*tanh(x))/(-a)^(1/8))/(4*(-a)^(7/8)*sqrt((-a)^(1/4) + b^(1/4)))]


    @test_int [1/(1 + sinh(x)^5), x, 17, -((2*(-1)^(3/5)*atan((1 + (-1)^(3/5)*tanh(x/2))/sqrt(-1 + (-1)^(1/5))))/(5*sqrt(-1 + (-1)^(1/5)))) + (2*(-1)^(9/10)*atan((im - (-1)^(9/10)*tanh(x/2))/sqrt(1 + (-1)^(4/5))))/(5*sqrt(1 + (-1)^(4/5))) - (1/5)*sqrt(2)*atanh((1 - tanh(x/2))/sqrt(2)) + (2*(-1)^(9/10)*atanh(((-1)^(7/10)*(1 + (-1)^(1/5)*tanh(x/2)))/sqrt((-(-1)^(2/5))*(1 + (-1)^(2/5)))))/(5*sqrt((-(-1)^(2/5))*(1 + (-1)^(2/5)))) - (2*(-1)^(4/5)*atanh((1 - (-1)^(4/5)*tanh(x/2))/sqrt(1 - (-1)^(3/5))))/(5*sqrt(1 - (-1)^(3/5)))]
    @test_int [1/(1 + sinh(x)^6), x, 8, atanh(sqrt(1 + (-1)^(1/3))*tanh(x))/(3*sqrt(1 + (-1)^(1/3))) + atanh(sqrt(1 - (-1)^(2/3))*tanh(x))/(3*sqrt(1 - (-1)^(2/3))) + tanh(x)/3]
    @test_int [1/(1 + sinh(x)^8), x, 9, atanh(sqrt(1 - (-1)^(1/4))*tanh(x))/(4*sqrt(1 - (-1)^(1/4))) + atanh(sqrt(1 + (-1)^(1/4))*tanh(x))/(4*sqrt(1 + (-1)^(1/4))) + atanh(sqrt(1 - (-1)^(3/4))*tanh(x))/(4*sqrt(1 - (-1)^(3/4))) + atanh(sqrt(1 + (-1)^(3/4))*tanh(x))/(4*sqrt(1 + (-1)^(3/4)))]


    @test_int [1/(1 - sinh(x)^5), x, 17, -((2*(-1)^(1/10)*atan((im + (-1)^(1/10)*tanh(x/2))/sqrt(1 - (-1)^(1/5))))/(5*sqrt(1 - (-1)^(1/5)))) - (2*atanh(((-1)^(3/5) - tanh(x/2))/sqrt(1 - (-1)^(1/5))))/(5*sqrt(1 - (-1)^(1/5))) + (1/5)*sqrt(2)*atanh((1 + tanh(x/2))/sqrt(2)) + (2*atanh(((-1)^(4/5) + tanh(x/2))/sqrt(1 - (-1)^(3/5))))/(5*sqrt(1 - (-1)^(3/5))) - (2*(-1)^(1/10)*atanh(((-1)^(3/10)*(1 + (-1)^(4/5)*tanh(x/2)))/sqrt((-1)^(1/5) + (-1)^(3/5))))/(5*sqrt((-1)^(1/5) + (-1)^(3/5)))]
    @test_int [1/(1 - sinh(x)^6), x, 7, atanh(sqrt(2)*tanh(x))/(3*sqrt(2)) + atanh(sqrt(1 - (-1)^(1/3))*tanh(x))/(3*sqrt(1 - (-1)^(1/3))) + atanh(sqrt(1 + (-1)^(2/3))*tanh(x))/(3*sqrt(1 + (-1)^(2/3)))]
    @test_int [1/(1 - sinh(x)^8), x, 10, atanh(sqrt(1 - im)*tanh(x))/(4*sqrt(1 - im)) + atanh(sqrt(1 + im)*tanh(x))/(4*sqrt(1 + im)) + atanh(sqrt(2)*tanh(x))/(4*sqrt(2)) + tanh(x)/4]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*sinh(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^p*with*a-b=0=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cosh(x)^5/(a + a*sinh(x)^2), x, 3, sinh(x)/a + sinh(x)^3/(3*a)]
    @test_int [cosh(x)^4/(a + a*sinh(x)^2), x, 3, x/(2*a) + (cosh(x)*sinh(x))/(2*a)]
    @test_int [cosh(x)^3/(a + a*sinh(x)^2), x, 2, sinh(x)/a]
    @test_int [cosh(x)^2/(a + a*sinh(x)^2), x, 2, x/a]
    @test_int [cosh(x)^1/(a + a*sinh(x)^2), x, 2, atan(sinh(x))/a]
    @test_int [sech(x)^1/(a + a*sinh(x)^2), x, 3, atan(sinh(x))/(2*a) + (sech(x)*tanh(x))/(2*a)]
    @test_int [sech(x)^3/(a + a*sinh(x)^2), x, 4, (3*atan(sinh(x)))/(8*a) + (3*sech(x)*tanh(x))/(8*a) + (sech(x)^3*tanh(x))/(4*a)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cosh(c + d*x)^4*(a + b*sinh(c + d*x)^2), x, 5, (1/16)*(6*a - b)*x + ((6*a - b)*cosh(c + d*x)*sinh(c + d*x))/(16*d) + ((6*a - b)*cosh(c + d*x)^3*sinh(c + d*x))/(24*d) + (b*cosh(c + d*x)^5*sinh(c + d*x))/(6*d)]
    @test_int [cosh(c + d*x)^3*(a + b*sinh(c + d*x)^2), x, 3, (a*sinh(c + d*x))/d + ((a + b)*sinh(c + d*x)^3)/(3*d) + (b*sinh(c + d*x)^5)/(5*d)]
    @test_int [cosh(c + d*x)^2*(a + b*sinh(c + d*x)^2), x, 4, (1/8)*(4*a - b)*x + ((4*a - b)*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b*cosh(c + d*x)^3*sinh(c + d*x))/(4*d)]
    @test_int [cosh(c + d*x)^1*(a + b*sinh(c + d*x)^2), x, 2, (a*sinh(c + d*x))/d + (b*sinh(c + d*x)^3)/(3*d)]
    @test_int [sech(c + d*x)^1*(a + b*sinh(c + d*x)^2), x, 3, ((a - b)*atan(sinh(c + d*x)))/d + (b*sinh(c + d*x))/d]
    @test_int [sech(c + d*x)^2*(a + b*sinh(c + d*x)^2), x, 3, b*x + ((a - b)*tanh(c + d*x))/d]
    @test_int [sech(c + d*x)^3*(a + b*sinh(c + d*x)^2), x, 3, ((a + b)*atan(sinh(c + d*x)))/(2*d) + ((a - b)*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [sech(c + d*x)^4*(a + b*sinh(c + d*x)^2), x, 2, (a*tanh(c + d*x))/d - ((a - b)*tanh(c + d*x)^3)/(3*d)]
    @test_int [sech(c + d*x)^5*(a + b*sinh(c + d*x)^2), x, 4, ((3*a + b)*atan(sinh(c + d*x)))/(8*d) + ((3*a + b)*sech(c + d*x)*tanh(c + d*x))/(8*d) + ((a - b)*sech(c + d*x)^3*tanh(c + d*x))/(4*d)]
    @test_int [sech(c + d*x)^6*(a + b*sinh(c + d*x)^2), x, 3, (a*tanh(c + d*x))/d - ((2*a - b)*tanh(c + d*x)^3)/(3*d) + ((a - b)*tanh(c + d*x)^5)/(5*d)]


    @test_int [cosh(c + d*x)^4*(a + b*sinh(c + d*x)^2)^2, x, 6, (1/128)*(48*a^2 - 16*a*b + 3*b^2)*x + ((48*a^2 - 16*a*b + 3*b^2)*cosh(c + d*x)*sinh(c + d*x))/(128*d) + ((48*a^2 - 16*a*b + 3*b^2)*cosh(c + d*x)^3*sinh(c + d*x))/(192*d) + ((10*a - 3*b)*b*cosh(c + d*x)^5*sinh(c + d*x))/(48*d) + (b*cosh(c + d*x)^7*sinh(c + d*x)*(a - (a - b)*tanh(c + d*x)^2))/(8*d)]
    @test_int [cosh(c + d*x)^3*(a + b*sinh(c + d*x)^2)^2, x, 3, (a^2*sinh(c + d*x))/d + (a*(a + 2*b)*sinh(c + d*x)^3)/(3*d) + (b*(2*a + b)*sinh(c + d*x)^5)/(5*d) + (b^2*sinh(c + d*x)^7)/(7*d)]
    @test_int [cosh(c + d*x)^2*(a + b*sinh(c + d*x)^2)^2, x, 5, (1/16)*(8*a^2 - 4*a*b + b^2)*x + ((8*a^2 - 4*a*b + b^2)*cosh(c + d*x)*sinh(c + d*x))/(16*d) + ((8*a - 3*b)*b*cosh(c + d*x)^3*sinh(c + d*x))/(24*d) + (b*cosh(c + d*x)^5*sinh(c + d*x)*(a - (a - b)*tanh(c + d*x)^2))/(6*d)]
    @test_int [cosh(c + d*x)^1*(a + b*sinh(c + d*x)^2)^2, x, 3, (a^2*sinh(c + d*x))/d + (2*a*b*sinh(c + d*x)^3)/(3*d) + (b^2*sinh(c + d*x)^5)/(5*d)]
    @test_int [sech(c + d*x)^1*(a + b*sinh(c + d*x)^2)^2, x, 4, ((a - b)^2*atan(sinh(c + d*x)))/d + ((2*a - b)*b*sinh(c + d*x))/d + (b^2*sinh(c + d*x)^3)/(3*d)]
    @test_int [sech(c + d*x)^2*(a + b*sinh(c + d*x)^2)^2, x, 5, (1/2)*(4*a - 3*b)*b*x + (b^2*cosh(c + d*x)*sinh(c + d*x))/(2*d) + ((a - b)^2*tanh(c + d*x))/d]
    @test_int [sech(c + d*x)^3*(a + b*sinh(c + d*x)^2)^2, x, 5, ((a - b)*(a + 3*b)*atan(sinh(c + d*x)))/(2*d) + (b^2*sinh(c + d*x))/d + ((a - b)^2*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [sech(c + d*x)^4*(a + b*sinh(c + d*x)^2)^2, x, 4, b^2*x + ((a^2 - b^2)*tanh(c + d*x))/d - ((a - b)^2*tanh(c + d*x)^3)/(3*d)]
    @test_int [sech(c + d*x)^5*(a + b*sinh(c + d*x)^2)^2, x, 4, ((3*a^2 + 2*a*b + 3*b^2)*atan(sinh(c + d*x)))/(8*d) + (3*(a^2 - b^2)*sech(c + d*x)*tanh(c + d*x))/(8*d) + ((a - b)*sech(c + d*x)^3*(a + b*sinh(c + d*x)^2)*tanh(c + d*x))/(4*d)]
    @test_int [sech(c + d*x)^6*(a + b*sinh(c + d*x)^2)^2, x, 3, (a^2*tanh(c + d*x))/d - (2*a*(a - b)*tanh(c + d*x)^3)/(3*d) + ((a - b)^2*tanh(c + d*x)^5)/(5*d)]
    @test_int [sech(c + d*x)^7*(a + b*sinh(c + d*x)^2)^2, x, 5, ((5*a^2 + 2*a*b + b^2)*atan(sinh(c + d*x)))/(16*d) + ((5*a^2 + 2*a*b + b^2)*sech(c + d*x)*tanh(c + d*x))/(16*d) + ((a - b)*(5*a + 3*b)*sech(c + d*x)^3*tanh(c + d*x))/(24*d) + ((a - b)*sech(c + d*x)^5*(a + b*sinh(c + d*x)^2)*tanh(c + d*x))/(6*d)]


    @test_int [cosh(c + d*x)^4*(a + b*sinh(c + d*x)^2)^3, x, 7, (3/256)*(4*a - b)*(8*a^2 - 2*a*b + b^2)*x + (3*(4*a - b)*(8*a^2 - 2*a*b + b^2)*cosh(c + d*x)*sinh(c + d*x))/(256*d) + ((4*a - b)*(8*a^2 - 2*a*b + b^2)*cosh(c + d*x)^3*sinh(c + d*x))/(128*d) + (b*(44*a^2 - 28*a*b + 5*b^2)*cosh(c + d*x)^5*sinh(c + d*x))/(160*d) + (b*cosh(c + d*x)^9*sinh(c + d*x)*(a - (a - b)*tanh(c + d*x)^2)^2)/(10*d) + (b*cosh(c + d*x)^7*sinh(c + d*x)*(a*(10*a - b) - 5*(a - b)*(2*a - b)*tanh(c + d*x)^2))/(80*d)]
    @test_int [cosh(c + d*x)^3*(a + b*sinh(c + d*x)^2)^3, x, 3, (a^3*sinh(c + d*x))/d + (a^2*(a + 3*b)*sinh(c + d*x)^3)/(3*d) + (3*a*b*(a + b)*sinh(c + d*x)^5)/(5*d) + (b^2*(3*a + b)*sinh(c + d*x)^7)/(7*d) + (b^3*sinh(c + d*x)^9)/(9*d)]
    @test_int [cosh(c + d*x)^2*(a + b*sinh(c + d*x)^2)^3, x, 6, (1/128)*(64*a^3 - 48*a^2*b + 24*a*b^2 - 5*b^3)*x + ((64*a^3 - 48*a^2*b + 24*a*b^2 - 5*b^3)*cosh(c + d*x)*sinh(c + d*x))/(128*d) + (b*(88*a^2 - 68*a*b + 15*b^2)*cosh(c + d*x)^3*sinh(c + d*x))/(192*d) + (b*cosh(c + d*x)^7*sinh(c + d*x)*(a - (a - b)*tanh(c + d*x)^2)^2)/(8*d) + (b*cosh(c + d*x)^5*sinh(c + d*x)*(a*(8*a - b) - (8*a - 5*b)*(a - b)*tanh(c + d*x)^2))/(48*d)]
    @test_int [cosh(c + d*x)^1*(a + b*sinh(c + d*x)^2)^3, x, 3, (a^3*sinh(c + d*x))/d + (a^2*b*sinh(c + d*x)^3)/d + (3*a*b^2*sinh(c + d*x)^5)/(5*d) + (b^3*sinh(c + d*x)^7)/(7*d)]
    @test_int [sech(c + d*x)^1*(a + b*sinh(c + d*x)^2)^3, x, 4, ((a - b)^3*atan(sinh(c + d*x)))/d + (b*(3*a^2 - 3*a*b + b^2)*sinh(c + d*x))/d + ((3*a - b)*b^2*sinh(c + d*x)^3)/(3*d) + (b^3*sinh(c + d*x)^5)/(5*d)]
    @test_int [sech(c + d*x)^2*(a + b*sinh(c + d*x)^2)^3, x, 6, (3/8)*b*(8*a^2 - 12*a*b + 5*b^2)*x + (3*(4*a - 3*b)*b^2*cosh(c + d*x)*sinh(c + d*x))/(8*d) + (b^3*cosh(c + d*x)^3*sinh(c + d*x))/(4*d) + ((a - b)^3*tanh(c + d*x))/d]
    @test_int [sech(c + d*x)^3*(a + b*sinh(c + d*x)^2)^3, x, 5, ((a - b)^2*(a + 5*b)*atan(sinh(c + d*x)))/(2*d) + ((3*a - 2*b)*b^2*sinh(c + d*x))/d + (b^3*sinh(c + d*x)^3)/(3*d) + ((a - b)^3*sech(c + d*x)*tanh(c + d*x))/(2*d)]
    @test_int [sech(c + d*x)^4*(a + b*sinh(c + d*x)^2)^3, x, 5, (1/2)*(6*a - 5*b)*b^2*x + (b^3*cosh(c + d*x)*sinh(c + d*x))/(2*d) + ((a - b)^2*(a + 2*b)*tanh(c + d*x))/d - ((a - b)^3*tanh(c + d*x)^3)/(3*d)]
    @test_int [sech(c + d*x)^5*(a + b*sinh(c + d*x)^2)^3, x, 6, (3*(a - b)*(4*b^2 + (a + b)^2)*atan(sinh(c + d*x)))/(8*d) + (b^3*sinh(c + d*x))/d + (3*(a - b)^2*(a + 3*b)*sech(c + d*x)*tanh(c + d*x))/(8*d) + ((a - b)^3*sech(c + d*x)^3*tanh(c + d*x))/(4*d)]
    @test_int [sech(c + d*x)^6*(a + b*sinh(c + d*x)^2)^3, x, 4, b^3*x + ((a^3 - b^3)*tanh(c + d*x))/d - ((a - b)^2*(2*a + b)*tanh(c + d*x)^3)/(3*d) + ((a - b)^3*tanh(c + d*x)^5)/(5*d)]
    @test_int [sech(c + d*x)^7*(a + b*sinh(c + d*x)^2)^3, x, 5, ((a + b)*(5*a^2 - 2*a*b + 5*b^2)*atan(sinh(c + d*x)))/(16*d) + ((a - b)*(15*a^2 + 14*a*b + 15*b^2)*sech(c + d*x)*tanh(c + d*x))/(48*d) + (5*(a^2 - b^2)*sech(c + d*x)^3*(a + b*sinh(c + d*x)^2)*tanh(c + d*x))/(24*d) + ((a - b)*sech(c + d*x)^5*(a + b*sinh(c + d*x)^2)^2*tanh(c + d*x))/(6*d)]
    @test_int [sech(c + d*x)^8*(a + b*sinh(c + d*x)^2)^3, x, 3, (a^3*tanh(c + d*x))/d - (a^2*(a - b)*tanh(c + d*x)^3)/d + (3*a*(a - b)^2*tanh(c + d*x)^5)/(5*d) - ((a - b)^3*tanh(c + d*x)^7)/(7*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cosh(c + d*x)^7/(a + b*sinh(c + d*x)^2), x, 4, -(((a - b)^3*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*b^(7/2)*d)) + ((a^2 - 3*a*b + 3*b^2)*sinh(c + d*x))/(b^3*d) - ((a - 3*b)*sinh(c + d*x)^3)/(3*b^2*d) + sinh(c + d*x)^5/(5*b*d)]
    @test_int [cosh(c + d*x)^6/(a + b*sinh(c + d*x)^2), x, 6, ((8*a^2 - 20*a*b + 15*b^2)*x)/(8*b^3) - ((a - b)^(5/2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*b^3*d) - ((4*a - 7*b)*cosh(c + d*x)*sinh(c + d*x))/(8*b^2*d) + (cosh(c + d*x)^3*sinh(c + d*x))/(4*b*d)]
    @test_int [cosh(c + d*x)^5/(a + b*sinh(c + d*x)^2), x, 4, ((a - b)^2*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*b^(5/2)*d) - ((a - 2*b)*sinh(c + d*x))/(b^2*d) + sinh(c + d*x)^3/(3*b*d)]
    @test_int [cosh(c + d*x)^4/(a + b*sinh(c + d*x)^2), x, 5, -(((2*a - 3*b)*x)/(2*b^2)) + ((a - b)^(3/2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*b^2*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*b*d)]
    @test_int [cosh(c + d*x)^3/(a + b*sinh(c + d*x)^2), x, 3, -(((a - b)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*b^(3/2)*d)) + sinh(c + d*x)/(b*d)]
    @test_int [cosh(c + d*x)^2/(a + b*sinh(c + d*x)^2), x, 4, x/b - (sqrt(a - b)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*b*d)]
    @test_int [cosh(c + d*x)^1/(a + b*sinh(c + d*x)^2), x, 2, atan((sqrt(b)*sinh(c + d*x))/sqrt(a))/(sqrt(a)*sqrt(b)*d)]
    @test_int [sech(c + d*x)^1/(a + b*sinh(c + d*x)^2), x, 4, atan(sinh(c + d*x))/((a - b)*d) - (sqrt(b)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)*d)]
    @test_int [sech(c + d*x)^2/(a + b*sinh(c + d*x)^2), x, 3, -((b*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^(3/2)*d)) + tanh(c + d*x)/((a - b)*d)]
    @test_int [sech(c + d*x)^3/(a + b*sinh(c + d*x)^2), x, 5, ((a - 3*b)*atan(sinh(c + d*x)))/(2*(a - b)^2*d) + (b^(3/2)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^2*d) + (sech(c + d*x)*tanh(c + d*x))/(2*(a - b)*d)]
    @test_int [sech(c + d*x)^4/(a + b*sinh(c + d*x)^2), x, 4, (b^2*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^(5/2)*d) + ((a - 2*b)*tanh(c + d*x))/((a - b)^2*d) - tanh(c + d*x)^3/(3*(a - b)*d)]
    @test_int [sech(c + d*x)^5/(a + b*sinh(c + d*x)^2), x, 6, ((3*a^2 - 10*a*b + 15*b^2)*atan(sinh(c + d*x)))/(8*(a - b)^3*d) - (b^(5/2)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^3*d) + ((3*a - 7*b)*sech(c + d*x)*tanh(c + d*x))/(8*(a - b)^2*d) + (sech(c + d*x)^3*tanh(c + d*x))/(4*(a - b)*d)]
    @test_int [sech(c + d*x)^6/(a + b*sinh(c + d*x)^2), x, 4, -((b^3*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(sqrt(a)*(a - b)^(7/2)*d)) + ((a^2 - 3*a*b + 3*b^2)*tanh(c + d*x))/((a - b)^3*d) - ((2*a - 3*b)*tanh(c + d*x)^3)/(3*(a - b)^2*d) + tanh(c + d*x)^5/(5*(a - b)*d)]


    @test_int [cosh(c + d*x)^6/(a + b*sinh(c + d*x)^2)^2, x, 6, -(((4*a - 5*b)*x)/(2*b^3)) + ((a - b)^(3/2)*(4*a + b)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^3*d) + (cosh(c + d*x)*sinh(c + d*x))/(2*b*d*(a - (a - b)*tanh(c + d*x)^2)) + ((a - b)*(2*a - b)*tanh(c + d*x))/(2*a*b^2*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^5/(a + b*sinh(c + d*x)^2)^2, x, 5, -(((3*a^2 - 2*a*b - b^2)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^(5/2)*d)) + sinh(c + d*x)/(b^2*d) + ((a - b)^2*sinh(c + d*x))/(2*a*b^2*d*(a + b*sinh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^4/(a + b*sinh(c + d*x)^2)^2, x, 5, x/b^2 - (sqrt(a - b)*(2*a + b)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^2*d) - ((a - b)*tanh(c + d*x))/(2*a*b*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^3/(a + b*sinh(c + d*x)^2)^2, x, 3, ((a + b)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(2*a^(3/2)*b^(3/2)*d) - ((a - b)*sinh(c + d*x))/(2*a*b*d*(a + b*sinh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^2/(a + b*sinh(c + d*x)^2)^2, x, 3, atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a))/(2*a^(3/2)*sqrt(a - b)*d) + tanh(c + d*x)/(2*a*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^1/(a + b*sinh(c + d*x)^2)^2, x, 3, atan((sqrt(b)*sinh(c + d*x))/sqrt(a))/(2*a^(3/2)*sqrt(b)*d) + sinh(c + d*x)/(2*a*d*(a + b*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^1/(a + b*sinh(c + d*x)^2)^2, x, 5, atan(sinh(c + d*x))/((a - b)^2*d) - ((3*a - b)*sqrt(b)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^2*d) - (b*sinh(c + d*x))/(2*a*(a - b)*d*(a + b*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^2/(a + b*sinh(c + d*x)^2)^2, x, 5, -(((4*a - b)*b*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^(5/2)*d)) + tanh(c + d*x)/((a - b)^2*d) + (b^2*tanh(c + d*x))/(2*a*(a - b)^2*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^3/(a + b*sinh(c + d*x)^2)^2, x, 6, ((a - 5*b)*atan(sinh(c + d*x)))/(2*(a - b)^3*d) + ((5*a - b)*b^(3/2)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^3*d) + (b*(a + b)*sinh(c + d*x))/(2*a*(a - b)^2*d*(a + b*sinh(c + d*x)^2)) + (sech(c + d*x)*tanh(c + d*x))/(2*(a - b)*d*(a + b*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^4/(a + b*sinh(c + d*x)^2)^2, x, 5, ((6*a - b)*b^2*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(2*a^(3/2)*(a - b)^(7/2)*d) + ((a - 3*b)*tanh(c + d*x))/((a - b)^3*d) - tanh(c + d*x)^3/(3*(a - b)^2*d) - (b^3*tanh(c + d*x))/(2*a*(a - b)^3*d*(a - (a - b)*tanh(c + d*x)^2))]


    @test_int [cosh(c + d*x)^6/(a + b*sinh(c + d*x)^2)^3, x, 6, x/b^3 - (sqrt(a - b)*(8*a^2 + 4*a*b + 3*b^2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*b^3*d) - ((a - b)*tanh(c + d*x))/(4*a*b*d*(a - (a - b)*tanh(c + d*x)^2)^2) - ((a - b)*(4*a + 3*b)*tanh(c + d*x))/(8*a^2*b^2*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^5/(a + b*sinh(c + d*x)^2)^3, x, 4, ((3*a^2 + 2*a*b + 3*b^2)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*b^(5/2)*d) - ((a - b)*cosh(c + d*x)^2*sinh(c + d*x))/(4*a*b*d*(a + b*sinh(c + d*x)^2)^2) + (3*(1/a^2 - 1/b^2)*sinh(c + d*x))/(8*d*(a + b*sinh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^4/(a + b*sinh(c + d*x)^2)^3, x, 4, (3*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*sqrt(a - b)*d) + tanh(c + d*x)/(4*a*d*(a - (a - b)*tanh(c + d*x)^2)^2) + (3*tanh(c + d*x))/(8*a^2*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^3/(a + b*sinh(c + d*x)^2)^3, x, 4, ((a + 3*b)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*b^(3/2)*d) - ((a - b)*sinh(c + d*x))/(4*a*b*d*(a + b*sinh(c + d*x)^2)^2) + ((a + 3*b)*sinh(c + d*x))/(8*a^2*b*d*(a + b*sinh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^2/(a + b*sinh(c + d*x)^2)^3, x, 4, ((4*a - 3*b)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^(3/2)*d) - (b*tanh(c + d*x))/(4*a*(a - b)*d*(a - (a - b)*tanh(c + d*x)^2)^2) + ((4*a - 3*b)*tanh(c + d*x))/(8*a^2*(a - b)*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [cosh(c + d*x)^1/(a + b*sinh(c + d*x)^2)^3, x, 4, (3*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*sqrt(b)*d) + sinh(c + d*x)/(4*a*d*(a + b*sinh(c + d*x)^2)^2) + (3*sinh(c + d*x))/(8*a^2*d*(a + b*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^1/(a + b*sinh(c + d*x)^2)^3, x, 6, atan(sinh(c + d*x))/((a - b)^3*d) - (sqrt(b)*(15*a^2 - 10*a*b + 3*b^2)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^3*d) - (b*sinh(c + d*x))/(4*a*(a - b)*d*(a + b*sinh(c + d*x)^2)^2) - ((7*a - 3*b)*b*sinh(c + d*x))/(8*a^2*(a - b)^2*d*(a + b*sinh(c + d*x)^2))]
    @test_int [sech(c + d*x)^2/(a + b*sinh(c + d*x)^2)^3, x, 6, -((3*b*(8*a^2 - 4*a*b + b^2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^(7/2)*d)) + tanh(c + d*x)/((a - b)^3*d) - (b^3*tanh(c + d*x))/(4*a*(a - b)^3*d*(a - (a - b)*tanh(c + d*x)^2)^2) + (3*(4*a - b)*b^2*tanh(c + d*x))/(8*a^2*(a - b)^3*d*(a - (a - b)*tanh(c + d*x)^2))]
    @test_int [sech(c + d*x)^3/(a + b*sinh(c + d*x)^2)^3, x, 7, ((a - 7*b)*atan(sinh(c + d*x)))/(2*(a - b)^4*d) + (b^(3/2)*(35*a^2 - 14*a*b + 3*b^2)*atan((sqrt(b)*sinh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^4*d) + (b*(2*a + b)*sinh(c + d*x))/(4*a*(a - b)^2*d*(a + b*sinh(c + d*x)^2)^2) + ((4*a - b)*b*(a + 3*b)*sinh(c + d*x))/(8*a^2*(a - b)^3*d*(a + b*sinh(c + d*x)^2)) + (sech(c + d*x)*tanh(c + d*x))/(2*(a - b)*d*(a + b*sinh(c + d*x)^2)^2)]
    @test_int [sech(c + d*x)^4/(a + b*sinh(c + d*x)^2)^3, x, 6, (b^2*(48*a^2 - 16*a*b + 3*b^2)*atanh((sqrt(a - b)*tanh(c + d*x))/sqrt(a)))/(8*a^(5/2)*(a - b)^(9/2)*d) + ((a - 4*b)*tanh(c + d*x))/((a - b)^4*d) - tanh(c + d*x)^3/(3*(a - b)^3*d) + (b^4*tanh(c + d*x))/(4*a*(a - b)^4*d*(a - (a - b)*tanh(c + d*x)^2)^2) - ((16*a - 3*b)*b^3*tanh(c + d*x))/(8*a^2*(a - b)^4*d*(a - (a - b)*tanh(c + d*x)^2))]


    @test_int [cosh(x)^2/(1 - sinh(x)^2), x, 4, -x + sqrt(2)*atanh(sqrt(2)*tanh(x))]
    @test_int [cosh(x)^3/(1 - sinh(x)^2), x, 3, 2*atanh(sinh(x)) - sinh(x)]
    @test_int [cosh(x)^4/(1 - sinh(x)^2), x, 5, -((5*x)/2) + 2*sqrt(2)*atanh(sqrt(2)*tanh(x)) - (1/2)*cosh(x)*sinh(x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [cosh(e + f*x)^3*sqrt(a + b*sinh(e + f*x)^2), x, 5, -(a*(a - 4*b)*atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(8*b^(3/2)*f) - ((a - 4*b)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(8*b*f) + (sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(3/2))/(4*b*f)]
    @test_int [cosh(e + f*x)^1*sqrt(a + b*sinh(e + f*x)^2), x, 4, (a*atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(2*sqrt(b)*f) + (sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(2*f)]
    @test_int [sech(e + f*x)^1*sqrt(a + b*sinh(e + f*x)^2), x, 6, (sqrt(a - b)*atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/f + (sqrt(b)*atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/f]
    @test_int [sech(e + f*x)^3*sqrt(a + b*sinh(e + f*x)^2), x, 4, (a*atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(2*sqrt(a - b)*f) + (sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(2*f)]
    @test_int [sech(e + f*x)^5*sqrt(a + b*sinh(e + f*x)^2), x, 5, (a*(3*a - 4*b)*atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(8*(a - b)^(3/2)*f) + ((3*a - 4*b)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(8*(a - b)*f) + (sech(e + f*x)^3*(a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x))/(4*(a - b)*f)]

    @test_int [cosh(e + f*x)^4*sqrt(a + b*sinh(e + f*x)^2), x, 7, -((2*(a - 3*b)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*b*f)) + (cosh(e + f*x)*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(3/2))/(5*b*f) + ((2*a^2 - 7*a*b - 3*b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((a - 9*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((2*a^2 - 7*a*b - 3*b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(15*b^2*f)]
    @test_int [cosh(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2), x, 6, (cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - ((a + b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (2*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((a + b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*b*f)]
    @test_int [cosh(e + f*x)^0*sqrt(a + b*sinh(e + f*x)^2), x, 2, ((-im)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt(1 + (b*sinh(e + f*x)^2)/a))]
    @test_int [sech(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2), x, 2, (EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a))]
    @test_int [sech(e + f*x)^4*sqrt(a + b*sinh(e + f*x)^2), x, 5, ((2*a - b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (sech(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*f)]


    @test_int [cosh(e + f*x)^3*(a + b*sinh(e + f*x)^2)^(3/2), x, 6, -(a^2*(a - 6*b)*atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(16*b^(3/2)*f) - (a*(a - 6*b)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(16*b*f) - ((a - 6*b)*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(3/2))/(24*b*f) + (sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(5/2))/(6*b*f)]
    @test_int [cosh(e + f*x)^1*(a + b*sinh(e + f*x)^2)^(3/2), x, 5, (3*a^2*atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(8*sqrt(b)*f) + (3*a*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(8*f) + (sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(3/2))/(4*f)]
    @test_int [sech(e + f*x)^1*(a + b*sinh(e + f*x)^2)^(3/2), x, 7, ((a - b)^(3/2)*atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/f + ((3*a - 2*b)*sqrt(b)*atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(2*f) + (b*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(2*f)]
    @test_int [sech(e + f*x)^3*(a + b*sinh(e + f*x)^2)^(3/2), x, 7, (sqrt(a - b)*(a + 2*b)*atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(2*f) + (b^(3/2)*atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/f + ((a - b)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(2*f)]
    @test_int [sech(e + f*x)^5*(a + b*sinh(e + f*x)^2)^(3/2), x, 5, (3*a^2*atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(8*sqrt(a - b)*f) + (3*a*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(8*f) + (sech(e + f*x)^3*(a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x))/(4*f)]
    @test_int [sech(e + f*x)^7*(a + b*sinh(e + f*x)^2)^(3/2), x, 6, (a^2*(5*a - 6*b)*atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(16*(a - b)^(3/2)*f) + (a*(5*a - 6*b)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(16*(a - b)*f) + ((5*a - 6*b)*sech(e + f*x)^3*(a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x))/(24*(a - b)*f) + (sech(e + f*x)^5*(a + b*sinh(e + f*x)^2)^(5/2)*tanh(e + f*x))/(6*(a - b)*f)]

    @test_int [cosh(e + f*x)^4*(a + b*sinh(e + f*x)^2)^(3/2), x, 8, ((a^2 + 9*a*b - 2*b^2)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(35*b*f) + (2*(4*a - b)*cosh(e + f*x)^3*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(35*f) + (b*cosh(e + f*x)^5*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(7*f) + (2*(a + b)*(a^2 - 6*a*b + b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(35*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((a^2 - 18*a*b + b^2)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(35*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (2*(a + b)*(a^2 - 6*a*b + b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(35*b^2*f)]
    @test_int [cosh(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(3/2), x, 7, (2*(3*a - b)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*f) + (b*cosh(e + f*x)^3*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(5*f) - ((3*a^2 + 7*a*b - 2*b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((9*a - b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(15*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a^2 + 7*a*b - 2*b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(15*b*f)]
    @test_int [cosh(e + f*x)^0*(a + b*sinh(e + f*x)^2)^(3/2), x, 6, (b*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - (((2*im)/3)*(2*a - b)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) + ((im/3)*a*(a - b)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sech(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(3/2), x, 6, ((a - 2*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((a - 2*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/f + ((a - b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/f]
    @test_int [sech(e + f*x)^4*(a + b*sinh(e + f*x)^2)^(3/2), x, 5, (2*(a + b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((a - b)*sech(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cosh(e + f*x)^3/sqrt(a + b*sinh(e + f*x)^2), x, 4, -((a - 2*b)*atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(2*b^(3/2)*f) + (sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(2*b*f)]
    @test_int [cosh(e + f*x)^1/sqrt(a + b*sinh(e + f*x)^2), x, 3, atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2))/(sqrt(b)*f)]
    @test_int [sech(e + f*x)^1/sqrt(a + b*sinh(e + f*x)^2), x, 3, atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2))/(sqrt(a - b)*f)]
    @test_int [sech(e + f*x)^3/sqrt(a + b*sinh(e + f*x)^2), x, 4, ((a - 2*b)*atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(2*(a - b)^(3/2)*f) + (sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(2*(a - b)*f)]

    @test_int [cosh(e + f*x)^4/sqrt(a + b*sinh(e + f*x)^2), x, 6, (cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*b*f) + (2*(a - 2*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((a - 3*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (2*(a - 2*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*b^2*f)]
    @test_int [cosh(e + f*x)^2/sqrt(a + b*sinh(e + f*x)^2), x, 5, -((EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a))) + (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(b*f)]
    @test_int [cosh(e + f*x)^0/sqrt(a + b*sinh(e + f*x)^2), x, 2, ((-im)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sech(e + f*x)^2/sqrt(a + b*sinh(e + f*x)^2), x, 7, (EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/((a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a))]
    @test_int [sech(e + f*x)^4/sqrt(a + b*sinh(e + f*x)^2), x, 5, (2*(a - 2*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((a - 3*b)*b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*(a - b)^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (sech(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*(a - b)*f)]


    @test_int [cosh(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(3/2), x, 4, atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2))/(b^(3/2)*f) - ((a - b)*sinh(e + f*x))/(a*b*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [cosh(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(3/2), x, 2, sinh(e + f*x)/(a*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sech(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(3/2), x, 4, atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2))/((a - b)^(3/2)*f) - (b*sinh(e + f*x))/(a*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sech(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(3/2), x, 6, ((a - 4*b)*atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2)))/(2*(a - b)^(5/2)*f) + (b*(a + 2*b)*sinh(e + f*x))/(2*a*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2)) + (sech(e + f*x)*tanh(e + f*x))/(2*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]

    @test_int [cosh(e + f*x)^6/(a + b*sinh(e + f*x)^2)^(3/2), x, 7, -(((a - b)*cosh(e + f*x)^3*sinh(e + f*x))/(a*b*f*sqrt(a + b*sinh(e + f*x)^2))) + ((4*a - 3*b)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*b^2*f) + ((8*a^2 - 13*a*b + 3*b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*b^3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (2*(2*a - 3*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - ((8*a^2 - 13*a*b + 3*b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a*b^3*f)]
    @test_int [cosh(e + f*x)^4/(a + b*sinh(e + f*x)^2)^(3/2), x, 6, -(((a - b)*cosh(e + f*x)*sinh(e + f*x))/(a*b*f*sqrt(a + b*sinh(e + f*x)^2))) - ((2*a - b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((2*a - b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(a*b^2*f)]
    @test_int [cosh(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(3/2), x, 2, (cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/(sqrt(a)*sqrt(b)*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [cosh(e + f*x)^0/(a + b*sinh(e + f*x)^2)^(3/2), x, 4, -((b*cosh(e + f*x)*sinh(e + f*x))/(a*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))) - (im*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(a*(a - b)*f*sqrt(1 + (b*sinh(e + f*x)^2)/a))]
    @test_int [sech(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(3/2), x, 5, (sqrt(b)*(a + b)*cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/(sqrt(a)*(a - b)^2*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2)) - (2*b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*(a - b)^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + tanh(e + f*x)/((a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]


    @test_int [cosh(e + f*x)^5/(a + b*sinh(e + f*x)^2)^(5/2), x, 5, atanh((sqrt(b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2))/(b^(5/2)*f) - ((a - b)*cosh(e + f*x)^2*sinh(e + f*x))/(3*a*b*f*(a + b*sinh(e + f*x)^2)^(3/2)) - ((a - b)*(3*a + 2*b)*sinh(e + f*x))/(3*a^2*b^2*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [cosh(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(5/2), x, 3, (cosh(e + f*x)^2*sinh(e + f*x))/(3*a*f*(a + b*sinh(e + f*x)^2)^(3/2)) + (2*sinh(e + f*x))/(3*a^2*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [cosh(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(5/2), x, 3, sinh(e + f*x)/(3*a*f*(a + b*sinh(e + f*x)^2)^(3/2)) + (2*sinh(e + f*x))/(3*a^2*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sech(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(5/2), x, 6, atan((sqrt(a - b)*sinh(e + f*x))/sqrt(a + b*sinh(e + f*x)^2))/((a - b)^(5/2)*f) - (b*sinh(e + f*x))/(3*a*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2)) - ((5*a - 2*b)*b*sinh(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2))]

    @test_int [cosh(e + f*x)^6/(a + b*sinh(e + f*x)^2)^(5/2), x, 7, -(((a - b)*cosh(e + f*x)^3*sinh(e + f*x))/(3*a*b*f*(a + b*sinh(e + f*x)^2)^(3/2))) - (2*(a - b)*(2*a + b)*cosh(e + f*x)*sinh(e + f*x))/(3*a^2*b^2*f*sqrt(a + b*sinh(e + f*x)^2)) - ((8*a^2 - 3*a*b - 2*b^2)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*b^3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((4*a - b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*b^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((8*a^2 - 3*a*b - 2*b^2)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a^2*b^3*f)]
    @test_int [cosh(e + f*x)^4/(a + b*sinh(e + f*x)^2)^(5/2), x, 5, -(((a - b)*cosh(e + f*x)*sinh(e + f*x))/(3*a*b*f*(a + b*sinh(e + f*x)^2)^(3/2))) + (2*(a + b)*cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/(3*a^(3/2)*b^(3/2)*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2)) - (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*b*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a))]
    @test_int [cosh(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(5/2), x, 5, (cosh(e + f*x)*sinh(e + f*x))/(3*a*f*(a + b*sinh(e + f*x)^2)^(3/2)) + ((a - 2*b)*cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/(3*a^(3/2)*(a - b)*sqrt(b)*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2)) + (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a))]
    @test_int [cosh(e + f*x)^0/(a + b*sinh(e + f*x)^2)^(5/2), x, 7, -(b*cosh(e + f*x)*sinh(e + f*x))/(3*a*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2)) - (2*(2*a - b)*b*cosh(e + f*x)*sinh(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2)) - (((2*im)/3)*(2*a - b)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(a^2*(a - b)^2*f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) + ((im/3)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(a*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [sech(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(5/2), x, 6, (b*(3*a + b)*cosh(e + f*x)*sinh(e + f*x))/(3*a*(a - b)^2*f*(a + b*sinh(e + f*x)^2)^(3/2)) + (sqrt(b)*(3*a^2 + 7*a*b - 2*b^2)*cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/(3*a^(3/2)*(a - b)^3*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2)) - ((9*a - b)*b*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*(a - b)^3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + tanh(e + f*x)/((a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*cosh(e+f*x))^m*(a+b*sinh(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(d*cosh(e + f*x))^m*(a + b*sinh(e + f*x)^2)^p, x, 3, (d*AppellF1(1/2, (1 - m)/2, -p, 3/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*(d*cosh(e + f*x))^(-1 + m)*(cosh(e + f*x)^2)^((1 - m)/2)*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^p)/(f*(1 + (b*sinh(e + f*x)^2)/a)^p)]


    @test_int [cosh(e + f*x)^5*(a + b*sinh(e + f*x)^2)^p, x, 5, If($VersionNumber>=8, -(((3*a - b*(7 + 2*p))*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(1 + p))/(b^2*f*(3 + 2*p)*(5 + 2*p))) + (cosh(e + f*x)^2*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(1 + p))/(b*f*(5 + 2*p)) + ((3*a^2 - 2*a*b*(5 + 2*p) + b^2*(15 + 16*p + 4*p^2))*Hypergeometric2F1(1/2, -p, 3/2, -((b*sinh(e + f*x)^2)/a))*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^p)/(b^2*f*(3 + 2*p)*(5 + 2*p)*(1 + (b*sinh(e + f*x)^2)/a)^p), -(((3*a - b*(7 + 2*p))*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(1 + p))/(b^2*f*(15 + 16*p + 4*p^2))) + (cosh(e + f*x)^2*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(1 + p))/(b*f*(5 + 2*p)) + ((3*a^2 - 2*a*b*(5 + 2*p) + b^2*(15 + 16*p + 4*p^2))*Hypergeometric2F1(1/2, -p, 3/2, -((b*sinh(e + f*x)^2)/a))*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^p)/((1 + (b*sinh(e + f*x)^2)/a)^p*(b^2*f*(15 + 16*p + 4*p^2))))]
    @test_int [cosh(e + f*x)^3*(a + b*sinh(e + f*x)^2)^p, x, 4, (sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^(1 + p))/(b*f*(3 + 2*p)) - ((a - b*(3 + 2*p))*Hypergeometric2F1(1/2, -p, 3/2, -((b*sinh(e + f*x)^2)/a))*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^p)/(b*f*(3 + 2*p)*(1 + (b*sinh(e + f*x)^2)/a)^p)]
    @test_int [cosh(e + f*x)^1*(a + b*sinh(e + f*x)^2)^p, x, 3, (Hypergeometric2F1(1/2, -p, 3/2, -((b*sinh(e + f*x)^2)/a))*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^p)/(f*(1 + (b*sinh(e + f*x)^2)/a)^p)]
    @test_int [sech(e + f*x)^1*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 1, -p, 3/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^p)/(f*(1 + (b*sinh(e + f*x)^2)/a)^p)]
    @test_int [sech(e + f*x)^3*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 2, -p, 3/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sinh(e + f*x)*(a + b*sinh(e + f*x)^2)^p)/(f*(1 + (b*sinh(e + f*x)^2)/a)^p)]

    @test_int [cosh(e + f*x)^4*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(1/2, -3/2, -p, 3/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sqrt(cosh(e + f*x)^2)*(a + b*sinh(e + f*x)^2)^p*tanh(e + f*x))/(f*(1 + (b*sinh(e + f*x)^2)/a)^p)]
    @test_int [cosh(e + f*x)^2*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(1/2, -1/2, -p, 3/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sqrt(cosh(e + f*x)^2)*(a + b*sinh(e + f*x)^2)^p*tanh(e + f*x))/(f*(1 + (b*sinh(e + f*x)^2)/a)^p)]
    @test_int [cosh(e + f*x)^0*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 1/2, -p, 3/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sqrt(cosh(e + f*x)^2)*(a + b*sinh(e + f*x)^2)^p*tanh(e + f*x))/(f*(1 + (b*sinh(e + f*x)^2)/a)^p)]
    @test_int [sech(e + f*x)^2*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 3/2, -p, 3/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sqrt(cosh(e + f*x)^2)*(a + b*sinh(e + f*x)^2)^p*tanh(e + f*x))/(f*(1 + (b*sinh(e + f*x)^2)/a)^p)]
    @test_int [sech(e + f*x)^4*(a + b*sinh(e + f*x)^2)^p, x, 3, (AppellF1(1/2, 5/2, -p, 3/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*sqrt(cosh(e + f*x)^2)*(a + b*sinh(e + f*x)^2)^p*tanh(e + f*x))/(f*(1 + (b*sinh(e + f*x)^2)/a)^p)]


    #= ::Section:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*sinh(e+f*x)^3)^p=#


    #= ::Section:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*sinh(e+f*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*sinh(e+f*x)^n)^p=#


    @test_int [cosh(c + d*x)^5/(a + b*sqrt(sinh(c + d*x))), x, 4, -((2*a*(a^4 + b^4)^2*log(a + b*sqrt(sinh(c + d*x))))/(b^10*d)) + (2*(a^4 + b^4)^2*sqrt(sinh(c + d*x)))/(b^9*d) - (a^3*(a^4 + 2*b^4)*sinh(c + d*x))/(b^8*d) + (2*a^2*(a^4 + 2*b^4)*sinh(c + d*x)^(3/2))/(3*b^7*d) - (a*(a^4 + 2*b^4)*sinh(c + d*x)^2)/(2*b^6*d) + (2*(a^4 + 2*b^4)*sinh(c + d*x)^(5/2))/(5*b^5*d) - (a^3*sinh(c + d*x)^3)/(3*b^4*d) + (2*a^2*sinh(c + d*x)^(7/2))/(7*b^3*d) - (a*sinh(c + d*x)^4)/(4*b^2*d) + (2*sinh(c + d*x)^(9/2))/(9*b*d)]
    @test_int [cosh(c + d*x)^3/(a + b*sqrt(sinh(c + d*x))), x, 4, -((2*a*(a^4 + b^4)*log(a + b*sqrt(sinh(c + d*x))))/(b^6*d)) + (2*(a^4 + b^4)*sqrt(sinh(c + d*x)))/(b^5*d) - (a^3*sinh(c + d*x))/(b^4*d) + (2*a^2*sinh(c + d*x)^(3/2))/(3*b^3*d) - (a*sinh(c + d*x)^2)/(2*b^2*d) + (2*sinh(c + d*x)^(5/2))/(5*b*d)]
    @test_int [cosh(c + d*x)^1/(a + b*sqrt(sinh(c + d*x))), x, 4, -((2*a*log(a + b*sqrt(sinh(c + d*x))))/(b^2*d)) + (2*sqrt(sinh(c + d*x)))/(b*d)]
    @test_int [sech(c + d*x)^1/(a + b*sqrt(sinh(c + d*x))), x, 19, (b*(a^2 - b^2)*atan(1 - sqrt(2)*sqrt(sinh(c + d*x))))/(sqrt(2)*(a^4 + b^4)*d) - (b*(a^2 - b^2)*atan(1 + sqrt(2)*sqrt(sinh(c + d*x))))/(sqrt(2)*(a^4 + b^4)*d) + (a^3*atan(sinh(c + d*x)))/((a^4 + b^4)*d) + (a*b^2*log(cosh(c + d*x)))/((a^4 + b^4)*d) - (2*a*b^2*log(a + b*sqrt(sinh(c + d*x))))/((a^4 + b^4)*d) - (b*(a^2 + b^2)*log(1 - sqrt(2)*sqrt(sinh(c + d*x)) + sinh(c + d*x)))/(2*sqrt(2)*(a^4 + b^4)*d) + (b*(a^2 + b^2)*log(1 + sqrt(2)*sqrt(sinh(c + d*x)) + sinh(c + d*x)))/(2*sqrt(2)*(a^4 + b^4)*d)]
    #= [sech(c + d*x)^3/(a + b*sqrt(sinh(c + d*x))), x, 00, (a^2*b^3*(a^2 + b^2)*atan(1 - sqrt(2)*sqrt(sinh(c + d*x))))/(sqrt(2)*(a^4 + b^4)^2*d) + (b*(a^2 - 3*b^2)*atan(1 - sqrt(2)*sqrt(sinh(c + d*x))))/(4*sqrt(2)*(a^4 + b^4)*d) - (a^2*b^3*(a^2 + b^2)*atan(1 + sqrt(2)*sqrt(sinh(c + d*x))))/(sqrt(2)*(a^4 + b^4)^2*d) - (b*(a^2 - 3*b^2)*atan(1 + sqrt(2)*sqrt(sinh(c + d*x))))/(4*sqrt(2)*(a^4 + b^4)*d) + (a^3*b^4*atan(sinh(c + d*x)))/((a^4 + b^4)^2*d) + (a^3*atan(sinh(c + d*x)))/(2*(a^4 + b^4)*d) - (a^2*b^3*(a^2 - b^2)*atanh((sqrt(2)*sqrt(sinh(c + d*x)))/(1 + sinh(c + d*x))))/(sqrt(2)*(a^4 + b^4)^2*d) + (b*(a^2 + 3*b^2)*atanh((sqrt(2)*sqrt(sinh(c + d*x)))/(1 + sinh(c + d*x))))/(4*sqrt(2)*(a^4 + b^4)*d) - (2*a*b^6*log(a + b*sqrt(sinh(c + d*x))))/((a^4 + b^4)^2*d) + (a*b^6*log(1 + sinh(c + d*x)^2))/(2*(a^4 + b^4)^2*d) - (a*(b^2 - a^2*sinh(c + d*x)))/(2*(a^4 + b^4)*d*(1 + sinh(c + d*x)^2)) + (b*sqrt(sinh(c + d*x))*(b^2 - a^2*sinh(c + d*x)))/(2*(a^4 + b^4)*d*(1 + sinh(c + d*x)^2))] =#


    @test_int [cosh(c + d*x)^5/(a + b*sqrt(sinh(c + d*x)))^2, x, 4, (2*(a^4 + b^4)*(9*a^4 + b^4)*log(a + b*sqrt(sinh(c + d*x))))/(b^10*d) + (2*a*(a^4 + b^4)^2)/(b^10*d*(a + b*sqrt(sinh(c + d*x)))) - (16*a^3*(a^4 + b^4)*sqrt(sinh(c + d*x)))/(b^9*d) + (a^2*(7*a^4 + 6*b^4)*sinh(c + d*x))/(b^8*d) - (4*a*(3*a^4 + 2*b^4)*sinh(c + d*x)^(3/2))/(3*b^7*d) + ((5*a^4 + 2*b^4)*sinh(c + d*x)^2)/(2*b^6*d) - (8*a^3*sinh(c + d*x)^(5/2))/(5*b^5*d) + (a^2*sinh(c + d*x)^3)/(b^4*d) - (4*a*sinh(c + d*x)^(7/2))/(7*b^3*d) + sinh(c + d*x)^4/(4*b^2*d)]
    @test_int [cosh(c + d*x)^3/(a + b*sqrt(sinh(c + d*x)))^2, x, 4, (2*(5*a^4 + b^4)*log(a + b*sqrt(sinh(c + d*x))))/(b^6*d) + (2*a*(a^4 + b^4))/(b^6*d*(a + b*sqrt(sinh(c + d*x)))) - (8*a^3*sqrt(sinh(c + d*x)))/(b^5*d) + (3*a^2*sinh(c + d*x))/(b^4*d) - (4*a*sinh(c + d*x)^(3/2))/(3*b^3*d) + sinh(c + d*x)^2/(2*b^2*d)]
    @test_int [cosh(c + d*x)^1/(a + b*sqrt(sinh(c + d*x)))^2, x, 4, (2*log(a + b*sqrt(sinh(c + d*x))))/(b^2*d) + (2*a)/(b^2*d*(a + b*sqrt(sinh(c + d*x))))]
    @test_int [sech(c + d*x)^1/(a + b*sqrt(sinh(c + d*x)))^2, x, 19, (sqrt(2)*a*b*(a^4 - 2*a^2*b^2 - b^4)*atan(1 - sqrt(2)*sqrt(sinh(c + d*x))))/((a^4 + b^4)^2*d) - (sqrt(2)*a*b*(a^4 - 2*a^2*b^2 - b^4)*atan(1 + sqrt(2)*sqrt(sinh(c + d*x))))/((a^4 + b^4)^2*d) + (a^2*(a^4 - 3*b^4)*atan(sinh(c + d*x)))/((a^4 + b^4)^2*d) + (b^2*(3*a^4 - b^4)*log(cosh(c + d*x)))/((a^4 + b^4)^2*d) - (2*b^2*(3*a^4 - b^4)*log(a + b*sqrt(sinh(c + d*x))))/((a^4 + b^4)^2*d) - (a*b*(a^4 + 2*a^2*b^2 - b^4)*log(1 - sqrt(2)*sqrt(sinh(c + d*x)) + sinh(c + d*x)))/(sqrt(2)*(a^4 + b^4)^2*d) + (a*b*(a^4 + 2*a^2*b^2 - b^4)*log(1 + sqrt(2)*sqrt(sinh(c + d*x)) + sinh(c + d*x)))/(sqrt(2)*(a^4 + b^4)^2*d) + (2*a*b^2)/((a^4 + b^4)*d*(a + b*sqrt(sinh(c + d*x))))]
    #= [sech(c + d*x)^3/(a + b*sqrt(sinh(c + d*x)))^2, x, 00, (a*b*(a^4 - 6*a^2*b^2 - b^4)*atan(1 - sqrt(2)*sqrt(sinh(c + d*x))))/(2*sqrt(2)*(a^4 + b^4)^2*d) + (sqrt(2)*a*b^3*(2*a^6 + 3*a^4*b^2 - 2*a^2*b^4 - b^6)*atan(1 - sqrt(2)*sqrt(sinh(c + d*x))))/((a^4 + b^4)^3*d) - (a*b*(a^4 - 6*a^2*b^2 - b^4)*atan(1 + sqrt(2)*sqrt(sinh(c + d*x))))/(2*sqrt(2)*(a^4 + b^4)^2*d) - (sqrt(2)*a*b^3*(2*a^6 + 3*a^4*b^2 - 2*a^2*b^4 - b^6)*atan(1 + sqrt(2)*sqrt(sinh(c + d*x))))/((a^4 + b^4)^3*d) + (a^2*b^4*(5*a^4 - 3*b^4)*atan(sinh(c + d*x)))/((a^4 + b^4)^3*d) + (a^2*(a^4 - 3*b^4)*atan(sinh(c + d*x)))/(2*(a^4 + b^4)^2*d) + (a*b*(a^4 + 6*a^2*b^2 - b^4)*atanh((sqrt(2)*sqrt(sinh(c + d*x)))/(1 + sinh(c + d*x))))/(2*sqrt(2)*(a^4 + b^4)^2*d) - (sqrt(2)*a*b^3*(2*a^6 - 3*a^4*b^2 - 2*a^2*b^4 + b^6)*atanh((sqrt(2)*sqrt(sinh(c + d*x)))/(1 + sinh(c + d*x))))/((a^4 + b^4)^3*d) - (2*b^6*(7*a^4 - b^4)*log(a + b*sqrt(sinh(c + d*x))))/((a^4 + b^4)^3*d) + (b^6*(7*a^4 - b^4)*log(1 + sinh(c + d*x)^2))/(2*(a^4 + b^4)^3*d) + (2*a*b^6)/((a^4 + b^4)^2*d*(a + b*sqrt(sinh(c + d*x)))) - (b^2*(3*a^4 - b^4) - a^2*(a^4 - 3*b^4)*sinh(c + d*x))/(2*(a^4 + b^4)^2*d*(1 + sinh(c + d*x)^2)) + (a*b*sqrt(sinh(c + d*x))*(2*a^2*b^2 - (a^4 - b^4)*sinh(c + d*x)))/((a^4 + b^4)^2*d*(1 + sinh(c + d*x)^2))] =#


    @test_int [cosh(c + d*x)^5/(a + b*sinh(c + d*x)^n), x, 6, (Hypergeometric2F1(1, 1/n, 1 + 1/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x))/(a*d) + (2*Hypergeometric2F1(1, 3/n, (3 + n)/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x)^3)/(3*a*d) + (Hypergeometric2F1(1, 5/n, (5 + n)/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x)^5)/(5*a*d)]
    @test_int [cosh(c + d*x)^3/(a + b*sinh(c + d*x)^n), x, 5, (Hypergeometric2F1(1, 1/n, 1 + 1/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x))/(a*d) + (Hypergeometric2F1(1, 3/n, (3 + n)/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x)^3)/(3*a*d)]
    @test_int [cosh(c + d*x)^1/(a + b*sinh(c + d*x)^n), x, 2, (Hypergeometric2F1(1, 1/n, 1 + 1/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x))/(a*d)]


    @test_int [cosh(c + d*x)^5/(a + b*sinh(c + d*x)^n)^2, x, 6, (Hypergeometric2F1(2, 1/n, 1 + 1/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x))/(a^2*d) + (2*Hypergeometric2F1(2, 3/n, (3 + n)/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x)^3)/(3*a^2*d) + (Hypergeometric2F1(2, 5/n, (5 + n)/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x)^5)/(5*a^2*d)]
    @test_int [cosh(c + d*x)^3/(a + b*sinh(c + d*x)^n)^2, x, 5, (Hypergeometric2F1(2, 1/n, 1 + 1/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x))/(a^2*d) + (Hypergeometric2F1(2, 3/n, (3 + n)/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x)^3)/(3*a^2*d)]
    @test_int [cosh(c + d*x)^1/(a + b*sinh(c + d*x)^n)^2, x, 2, (Hypergeometric2F1(2, 1/n, 1 + 1/n, -((b*sinh(c + d*x)^n)/a))*sinh(c + d*x))/(a^2*d)]


    #= ::Title::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sinh(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^p=#


    @test_int [coth(x)^1/(1 - sinh(x)^2), x, 4, log(sinh(x)) - (1/2)*log(1 - sinh(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^(p/2)*when*a-b=0=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(a + a*sinh(e + f*x)^2)*tanh(e + f*x)^5, x, 5, -a^2/(3*f*(a*cosh(e + f*x)^2)^(3/2)) + (2*a)/(f*sqrt(a*cosh(e + f*x)^2)) + sqrt(a*cosh(e + f*x)^2)/f]
    @test_int [sqrt(a + a*sinh(e + f*x)^2)*tanh(e + f*x)^3, x, 5, a/(f*sqrt(a*cosh(e + f*x)^2)) + sqrt(a*cosh(e + f*x)^2)/f]
    @test_int [sqrt(a + a*sinh(e + f*x)^2)*tanh(e + f*x)^1, x, 4, sqrt(a*cosh(e + f*x)^2)/f]
    @test_int [coth(e + f*x)^1*sqrt(a + a*sinh(e + f*x)^2), x, 5, -((sqrt(a)*atanh(sqrt(a*cosh(e + f*x)^2)/sqrt(a)))/f) + sqrt(a*cosh(e + f*x)^2)/f]
    @test_int [coth(e + f*x)^3*sqrt(a + a*sinh(e + f*x)^2), x, 7, (-3*sqrt(a)*atanh(sqrt(a*cosh(e + f*x)^2)/sqrt(a)))/(2*f) + (3*sqrt(a*cosh(e + f*x)^2))/(2*f) - ((a*cosh(e + f*x)^2)^(3/2)*csch(e + f*x)^2)/(2*a*f)]

    @test_int [sqrt(a + a*sinh(e + f*x)^2)*tanh(e + f*x)^6, x, 7, -((15*atan(sinh(e + f*x))*sqrt(a*cosh(e + f*x)^2)*sech(e + f*x))/(8*f)) + (15*sqrt(a*cosh(e + f*x)^2)*tanh(e + f*x))/(8*f) - (5*sqrt(a*cosh(e + f*x)^2)*tanh(e + f*x)^3)/(8*f) - (sqrt(a*cosh(e + f*x)^2)*tanh(e + f*x)^5)/(4*f)]
    @test_int [sqrt(a + a*sinh(e + f*x)^2)*tanh(e + f*x)^4, x, 6, (-3*atan(sinh(e + f*x))*sqrt(a*cosh(e + f*x)^2)*sech(e + f*x))/(2*f) + (3*sqrt(a*cosh(e + f*x)^2)*tanh(e + f*x))/(2*f) - (sqrt(a*cosh(e + f*x)^2)*tanh(e + f*x)^3)/(2*f)]
    @test_int [sqrt(a + a*sinh(e + f*x)^2)*tanh(e + f*x)^2, x, 5, -((atan(sinh(e + f*x))*sqrt(a*cosh(e + f*x)^2)*sech(e + f*x))/f) + (sqrt(a*cosh(e + f*x)^2)*tanh(e + f*x))/f]
    @test_int [coth(e + f*x)^2*sqrt(a + a*sinh(e + f*x)^2), x, 5, -((sqrt(a*cosh(e + f*x)^2)*csch(e + f*x)*sech(e + f*x))/f) + (sqrt(a*cosh(e + f*x)^2)*tanh(e + f*x))/f]
    @test_int [coth(e + f*x)^4*sqrt(a + a*sinh(e + f*x)^2), x, 5, (-2*sqrt(a*cosh(e + f*x)^2)*csch(e + f*x)*sech(e + f*x))/f - (sqrt(a*cosh(e + f*x)^2)*csch(e + f*x)^3*sech(e + f*x))/(3*f) + (sqrt(a*cosh(e + f*x)^2)*tanh(e + f*x))/f]
    @test_int [coth(e + f*x)^6*sqrt(a + a*sinh(e + f*x)^2), x, 5, (-3*sqrt(a*cosh(e + f*x)^2)*csch(e + f*x)*sech(e + f*x))/f - (sqrt(a*cosh(e + f*x)^2)*csch(e + f*x)^3*sech(e + f*x))/f - (sqrt(a*cosh(e + f*x)^2)*csch(e + f*x)^5*sech(e + f*x))/(5*f) + (sqrt(a*cosh(e + f*x)^2)*tanh(e + f*x))/f]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tanh(e + f*x)^5/sqrt(a + a*sinh(e + f*x)^2), x, 5, -a^2/(5*f*(a*cosh(e + f*x)^2)^(5/2)) + (2*a)/(3*f*(a*cosh(e + f*x)^2)^(3/2)) - 1/(f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [tanh(e + f*x)^3/sqrt(a + a*sinh(e + f*x)^2), x, 5, a/(3*f*(a*cosh(e + f*x)^2)^(3/2)) - 1/(f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [tanh(e + f*x)^1/sqrt(a + a*sinh(e + f*x)^2), x, 4, -(1/(f*sqrt(a*cosh(e + f*x)^2)))]
    @test_int [coth(e + f*x)^1/sqrt(a + a*sinh(e + f*x)^2), x, 4, -(atanh(sqrt(a*cosh(e + f*x)^2)/sqrt(a))/(sqrt(a)*f))]
    @test_int [coth(e + f*x)^3/sqrt(a + a*sinh(e + f*x)^2), x, 6, -atanh(sqrt(a*cosh(e + f*x)^2)/sqrt(a))/(2*sqrt(a)*f) - (sqrt(a*cosh(e + f*x)^2)*csch(e + f*x)^2)/(2*a*f)]

    @test_int [tanh(e + f*x)^4/sqrt(a + a*sinh(e + f*x)^2), x, 5, (3*atan(sinh(e + f*x))*cosh(e + f*x))/(8*f*sqrt(a*cosh(e + f*x)^2)) - (3*tanh(e + f*x))/(8*f*sqrt(a*cosh(e + f*x)^2)) - tanh(e + f*x)^3/(4*f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [tanh(e + f*x)^2/sqrt(a + a*sinh(e + f*x)^2), x, 4, (atan(sinh(e + f*x))*cosh(e + f*x))/(2*f*sqrt(a*cosh(e + f*x)^2)) - tanh(e + f*x)/(2*f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [coth(e + f*x)^2/sqrt(a + a*sinh(e + f*x)^2), x, 4, -(coth(e + f*x)/(f*sqrt(a*cosh(e + f*x)^2)))]
    @test_int [coth(e + f*x)^4/sqrt(a + a*sinh(e + f*x)^2), x, 4, -(coth(e + f*x)/(f*sqrt(a*cosh(e + f*x)^2))) - (coth(e + f*x)*csch(e + f*x)^2)/(3*f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [coth(e + f*x)^6/sqrt(a + a*sinh(e + f*x)^2), x, 5, -(coth(e + f*x)/(f*sqrt(a*cosh(e + f*x)^2))) - (2*coth(e + f*x)*csch(e + f*x)^2)/(3*f*sqrt(a*cosh(e + f*x)^2)) - (coth(e + f*x)*csch(e + f*x)^4)/(5*f*sqrt(a*cosh(e + f*x)^2))]


    @test_int [tanh(e + f*x)^5/(a + a*sinh(e + f*x)^2)^(3/2), x, 5, -a^2/(7*f*(a*cosh(e + f*x)^2)^(7/2)) + (2*a)/(5*f*(a*cosh(e + f*x)^2)^(5/2)) - 1/(3*f*(a*cosh(e + f*x)^2)^(3/2))]
    @test_int [tanh(e + f*x)^3/(a + a*sinh(e + f*x)^2)^(3/2), x, 5, a/(5*f*(a*cosh(e + f*x)^2)^(5/2)) - 1/(3*f*(a*cosh(e + f*x)^2)^(3/2))]
    @test_int [tanh(e + f*x)^1/(a + a*sinh(e + f*x)^2)^(3/2), x, 4, -1/(3*f*(a*cosh(e + f*x)^2)^(3/2))]
    @test_int [coth(e + f*x)^1/(a + a*sinh(e + f*x)^2)^(3/2), x, 5, -(atanh(sqrt(a*cosh(e + f*x)^2)/sqrt(a))/(a^(3/2)*f)) + 1/(a*f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [coth(e + f*x)^3/(a + a*sinh(e + f*x)^2)^(3/2), x, 6, atanh(sqrt(a*cosh(e + f*x)^2)/sqrt(a))/(2*a^(3/2)*f) - (sqrt(a*cosh(e + f*x)^2)*csch(e + f*x)^2)/(2*a^2*f)]

    @test_int [tanh(e + f*x)^2/(a + a*sinh(e + f*x)^2)^(3/2), x, 5, (atan(sinh(e + f*x))*cosh(e + f*x))/(8*a*f*sqrt(a*cosh(e + f*x)^2)) + tanh(e + f*x)/(8*a*f*sqrt(a*cosh(e + f*x)^2)) - (sech(e + f*x)^2*tanh(e + f*x))/(4*a*f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [coth(e + f*x)^2/(a + a*sinh(e + f*x)^2)^(3/2), x, 5, -((atan(sinh(e + f*x))*cosh(e + f*x))/(a*f*sqrt(a*cosh(e + f*x)^2))) - coth(e + f*x)/(a*f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [coth(e + f*x)^4/(a + a*sinh(e + f*x)^2)^(3/2), x, 4, -(coth(e + f*x)*csch(e + f*x)^2)/(3*a*f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [coth(e + f*x)^6/(a + a*sinh(e + f*x)^2)^(3/2), x, 5, -(coth(e + f*x)*csch(e + f*x)^2)/(3*a*f*sqrt(a*cosh(e + f*x)^2)) - (coth(e + f*x)*csch(e + f*x)^4)/(5*a*f*sqrt(a*cosh(e + f*x)^2))]
    @test_int [coth(e + f*x)^8/(a + a*sinh(e + f*x)^2)^(3/2), x, 5, -((coth(e + f*x)*csch(e + f*x)^2)/(3*a*f*sqrt(a*cosh(e + f*x)^2))) - (2*coth(e + f*x)*csch(e + f*x)^4)/(5*a*f*sqrt(a*cosh(e + f*x)^2)) - (coth(e + f*x)*csch(e + f*x)^6)/(7*a*f*sqrt(a*cosh(e + f*x)^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sinh(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x)^5, x, 6, -((8*a^2 - 24*a*b + 15*b^2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(8*(a - b)^(3/2)*f) + ((8*a^2 - 24*a*b + 15*b^2)*sqrt(a + b*sinh(e + f*x)^2))/(8*(a - b)^2*f) + ((8*a - 7*b)*sech(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(3/2))/(8*(a - b)^2*f) - (sech(e + f*x)^4*(a + b*sinh(e + f*x)^2)^(3/2))/(4*(a - b)*f)]
    @test_int [sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x)^3, x, 5, -((2*a - 3*b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(2*sqrt(a - b)*f) + ((2*a - 3*b)*sqrt(a + b*sinh(e + f*x)^2))/(2*(a - b)*f) + (sech(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(3/2))/(2*(a - b)*f)]
    @test_int [sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x)^1, x, 4, -((sqrt(a - b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/f) + sqrt(a + b*sinh(e + f*x)^2)/f]
    @test_int [coth(e + f*x)^1*sqrt(a + b*sinh(e + f*x)^2), x, 4, -((sqrt(a)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/f) + sqrt(a + b*sinh(e + f*x)^2)/f]
    @test_int [coth(e + f*x)^3*sqrt(a + b*sinh(e + f*x)^2), x, 5, -((2*a + b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(2*sqrt(a)*f) + ((2*a + b)*sqrt(a + b*sinh(e + f*x)^2))/(2*a*f) - (csch(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(3/2))/(2*a*f)]
    @test_int [coth(e + f*x)^5*sqrt(a + b*sinh(e + f*x)^2), x, 6, -((8*a^2 + 8*a*b - b^2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(8*a^(3/2)*f) + ((8*a^2 + 8*a*b - b^2)*sqrt(a + b*sinh(e + f*x)^2))/(8*a^2*f) - ((8*a - b)*csch(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(3/2))/(8*a^2*f) - (csch(e + f*x)^4*(a + b*sinh(e + f*x)^2)^(3/2))/(4*a*f)]

    @test_int [sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x)^4, x, 7, -((7*a - 8*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a - 4*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((7*a - 8*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*(a - b)*f) - ((3*a - 4*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*(a - b)*f) - (sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x)^3)/(3*f)]
    @test_int [sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x)^2, x, 6, (-2*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/f]
    @test_int [sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x)^0, x, 2, ((-im)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt(1 + (b*sinh(e + f*x)^2)/a))]
    @test_int [coth(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2), x, 6, -((coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/f) - (2*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((a + b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (2*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/f]
    @test_int [coth(e + f*x)^4*sqrt(a + b*sinh(e + f*x)^2), x, 7, -((3*a + b)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f) - (coth(e + f*x)^3*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - ((7*a + b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a + 5*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((7*a + b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a*f)]


    @test_int [(a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x)^5, x, 7, -((8*a^2 - 40*a*b + 35*b^2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(8*sqrt(a - b)*f) + ((8*a^2 - 40*a*b + 35*b^2)*sqrt(a + b*sinh(e + f*x)^2))/(8*(a - b)*f) + ((8*a^2 - 40*a*b + 35*b^2)*(a + b*sinh(e + f*x)^2)^(3/2))/(24*(a - b)^2*f) + ((8*a - 9*b)*sech(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(5/2))/(8*(a - b)^2*f) - (sech(e + f*x)^4*(a + b*sinh(e + f*x)^2)^(5/2))/(4*(a - b)*f)]
    @test_int [(a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x)^3, x, 6, -((2*a - 5*b)*sqrt(a - b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(2*f) + ((2*a - 5*b)*sqrt(a + b*sinh(e + f*x)^2))/(2*f) + ((2*a - 5*b)*(a + b*sinh(e + f*x)^2)^(3/2))/(6*(a - b)*f) + (sech(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(5/2))/(2*(a - b)*f)]
    @test_int [(a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x)^1, x, 5, -(((a - b)^(3/2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/f) + ((a - b)*sqrt(a + b*sinh(e + f*x)^2))/f + (a + b*sinh(e + f*x)^2)^(3/2)/(3*f)]
    @test_int [coth(e + f*x)^1*(a + b*sinh(e + f*x)^2)^(3/2), x, 5, -((a^(3/2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/f) + (a*sqrt(a + b*sinh(e + f*x)^2))/f + (a + b*sinh(e + f*x)^2)^(3/2)/(3*f)]
    @test_int [coth(e + f*x)^3*(a + b*sinh(e + f*x)^2)^(3/2), x, 6, -(sqrt(a)*(2*a + 3*b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(2*f) + ((2*a + 3*b)*sqrt(a + b*sinh(e + f*x)^2))/(2*f) + ((2*a + 3*b)*(a + b*sinh(e + f*x)^2)^(3/2))/(6*a*f) - (csch(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(5/2))/(2*a*f)]
    @test_int [coth(e + f*x)^5*(a + b*sinh(e + f*x)^2)^(3/2), x, 7, -((8*a^2 + 3*b*(8*a + b))*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(8*sqrt(a)*f) + ((8*a^2 + 3*b*(8*a + b))*sqrt(a + b*sinh(e + f*x)^2))/(8*a*f) + ((8*a^2 + 3*b*(8*a + b))*(a + b*sinh(e + f*x)^2)^(3/2))/(24*a^2*f) - ((8*a + b)*csch(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(5/2))/(8*a^2*f) - (csch(e + f*x)^4*(a + b*sinh(e + f*x)^2)^(5/2))/(4*a*f)]

    @test_int [(a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x)^4, x, 8, -((3*a - 8*b)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - (8*(a - 2*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a - 8*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (8*(a - 2*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*f) + ((a - 2*b)*sinh(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/f - ((a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x)^3)/(3*f)]
    @test_int [(a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x)^2, x, 7, (4*b*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - ((7*a - 8*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a - 4*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((7*a - 8*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*f) - ((a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x))/f]
    @test_int [(a + b*sinh(e + f*x)^2)^(3/2)*tanh(e + f*x)^0, x, 6, (b*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - (((2*im)/3)*(2*a - b)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) + ((im/3)*a*(a - b)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [coth(e + f*x)^2*(a + b*sinh(e + f*x)^2)^(3/2), x, 7, (4*b*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - (coth(e + f*x)*(a + b*sinh(e + f*x)^2)^(3/2))/f - ((7*a + b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a + 5*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((7*a + b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*f)]
    @test_int [coth(e + f*x)^4*(a + b*sinh(e + f*x)^2)^(3/2), x, 8, -(((a + b)*cosh(e + f*x)^2*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/f) + ((3*a + 5*b)*cosh(e + f*x)*sinh(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f) - (coth(e + f*x)^3*(a + b*sinh(e + f*x)^2)^(3/2))/(3*f) - (8*(a + b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a + b)*(a + 3*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (8*(a + b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*f)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [tanh(e + f*x)^5/sqrt(a + b*sinh(e + f*x)^2), x, 5, -((8*a^2 - 8*a*b + 3*b^2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(8*(a - b)^(5/2)*f) + ((8*a - 5*b)*sech(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(8*(a - b)^2*f) - (sech(e + f*x)^4*sqrt(a + b*sinh(e + f*x)^2))/(4*(a - b)*f)]
    @test_int [tanh(e + f*x)^3/sqrt(a + b*sinh(e + f*x)^2), x, 4, -((2*a - b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(2*(a - b)^(3/2)*f) + (sech(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(2*(a - b)*f)]
    @test_int [tanh(e + f*x)^1/sqrt(a + b*sinh(e + f*x)^2), x, 3, -(atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b))/(sqrt(a - b)*f))]
    @test_int [coth(e + f*x)^1/sqrt(a + b*sinh(e + f*x)^2), x, 3, -(atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a))/(sqrt(a)*f))]
    @test_int [coth(e + f*x)^3/sqrt(a + b*sinh(e + f*x)^2), x, 4, -((2*a - b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(2*a^(3/2)*f) - (csch(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(2*a*f)]
    @test_int [coth(e + f*x)^5/sqrt(a + b*sinh(e + f*x)^2), x, 5, -((8*a^2 - 8*a*b + 3*b^2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(8*a^(5/2)*f) - ((8*a - 3*b)*csch(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(8*a^2*f) - (csch(e + f*x)^4*sqrt(a + b*sinh(e + f*x)^2))/(4*a*f)]

    @test_int [tanh(e + f*x)^4/sqrt(a + b*sinh(e + f*x)^2), x, 5, (-2*(2*a - b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a - b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (sech(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*(a - b)*f)]
    @test_int [tanh(e + f*x)^2/sqrt(a + b*sinh(e + f*x)^2), x, 6, -((EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/((a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a))) + (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/((a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a))]
    @test_int [tanh(e + f*x)^0/sqrt(a + b*sinh(e + f*x)^2), x, 2, ((-im)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [coth(e + f*x)^2/sqrt(a + b*sinh(e + f*x)^2), x, 6, -((coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*f)) - (EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(a*f)]
    @test_int [coth(e + f*x)^4/sqrt(a + b*sinh(e + f*x)^2), x, 7, (-2*(2*a - b)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*f) - (coth(e + f*x)*csch(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(3*a*f) - (2*(2*a - b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a - b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (2*(2*a - b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a^2*f)]


    @test_int [tanh(e + f*x)^5/(a + b*sinh(e + f*x)^2)^(3/2), x, 6, -((8*a^2 + 8*a*b - b^2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(8*(a - b)^(7/2)*f) + (8*a^2 + 8*a*b - b^2)/(8*(a - b)^3*f*sqrt(a + b*sinh(e + f*x)^2)) + ((8*a - 3*b)*sech(e + f*x)^2)/(8*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2)) - sech(e + f*x)^4/(4*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [tanh(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(3/2), x, 5, -((2*a + b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(2*(a - b)^(5/2)*f) + (2*a + b)/(2*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2)) + sech(e + f*x)^2/(2*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [tanh(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(3/2), x, 4, -(atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b))/((a - b)^(3/2)*f)) + 1/((a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [coth(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(3/2), x, 4, -(atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a))/(a^(3/2)*f)) + 1/(a*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [coth(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(3/2), x, 5, -((2*a - 3*b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(2*a^(5/2)*f) + (2*a - 3*b)/(2*a^2*f*sqrt(a + b*sinh(e + f*x)^2)) - csch(e + f*x)^2/(2*a*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [coth(e + f*x)^5/(a + b*sinh(e + f*x)^2)^(3/2), x, 6, -((8*a^2 - 24*a*b + 15*b^2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(8*a^(7/2)*f) + (8*a^2 - 24*a*b + 15*b^2)/(8*a^3*f*sqrt(a + b*sinh(e + f*x)^2)) - ((8*a - 5*b)*csch(e + f*x)^2)/(8*a^2*f*sqrt(a + b*sinh(e + f*x)^2)) - csch(e + f*x)^4/(4*a*f*sqrt(a + b*sinh(e + f*x)^2))]

    @test_int [tanh(e + f*x)^4/(a + b*sinh(e + f*x)^2)^(3/2), x, 6, -(sqrt(a)*sqrt(b)*(7*a + b)*cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/(3*(a - b)^3*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2)) + ((3*a + 5*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*(a - b)^3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (4*a*tanh(e + f*x))/(3*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2)) + (sech(e + f*x)^2*tanh(e + f*x))/(3*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [tanh(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(3/2), x, 5, (-2*sqrt(a)*sqrt(b)*cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/((a - b)^2*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2)) + ((a + b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a*(a - b)^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - tanh(e + f*x)/((a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [tanh(e + f*x)^0/(a + b*sinh(e + f*x)^2)^(3/2), x, 4, -((b*cosh(e + f*x)*sinh(e + f*x))/(a*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))) - (im*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(a*(a - b)*f*sqrt(1 + (b*sinh(e + f*x)^2)/a))]
    @test_int [coth(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(3/2), x, 7, coth(e + f*x)/(a*f*sqrt(a + b*sinh(e + f*x)^2)) - (2*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a^2*f) - (2*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(a^2*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (2*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(a^2*f)]
    @test_int [coth(e + f*x)^4/(a + b*sinh(e + f*x)^2)^(3/2), x, 8, -(((a - b)*coth(e + f*x)*csch(e + f*x)^2)/(a*b*f*sqrt(a + b*sinh(e + f*x)^2))) - ((7*a - 8*b)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*f) + ((3*a - 4*b)*coth(e + f*x)*csch(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(3*a^2*b*f) - ((7*a - 8*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a - 4*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((7*a - 8*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a^3*f)]


    @test_int [tanh(e + f*x)^5/(a + b*sinh(e + f*x)^2)^(5/2), x, 7, -((8*a^2 + 24*a*b + 3*b^2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(8*(a - b)^(9/2)*f) + (8*a^2 + 24*a*b + 3*b^2)/(24*(a - b)^3*f*(a + b*sinh(e + f*x)^2)^(3/2)) + ((8*a - b)*sech(e + f*x)^2)/(8*(a - b)^2*f*(a + b*sinh(e + f*x)^2)^(3/2)) - sech(e + f*x)^4/(4*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2)) + (8*a^2 + 24*a*b + 3*b^2)/(8*(a - b)^4*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [tanh(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(5/2), x, 6, -((2*a + 3*b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b)))/(2*(a - b)^(7/2)*f) + (2*a + 3*b)/(6*(a - b)^2*f*(a + b*sinh(e + f*x)^2)^(3/2)) + sech(e + f*x)^2/(2*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2)) + (2*a + 3*b)/(2*(a - b)^3*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [tanh(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(5/2), x, 5, -(atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a - b))/((a - b)^(5/2)*f)) + 1/(3*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2)) + 1/((a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [coth(e + f*x)^1/(a + b*sinh(e + f*x)^2)^(5/2), x, 5, -(atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a))/(a^(5/2)*f)) + 1/(3*a*f*(a + b*sinh(e + f*x)^2)^(3/2)) + 1/(a^2*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [coth(e + f*x)^3/(a + b*sinh(e + f*x)^2)^(5/2), x, 6, -((2*a - 5*b)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(2*a^(7/2)*f) + (2*a - 5*b)/(6*a^2*f*(a + b*sinh(e + f*x)^2)^(3/2)) - csch(e + f*x)^2/(2*a*f*(a + b*sinh(e + f*x)^2)^(3/2)) + (2*a - 5*b)/(2*a^3*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [coth(e + f*x)^5/(a + b*sinh(e + f*x)^2)^(5/2), x, 7, -((8*a^2 - 40*a*b + 35*b^2)*atanh(sqrt(a + b*sinh(e + f*x)^2)/sqrt(a)))/(8*a^(9/2)*f) + (8*a^2 - 40*a*b + 35*b^2)/(24*a^3*f*(a + b*sinh(e + f*x)^2)^(3/2)) - ((8*a - 7*b)*csch(e + f*x)^2)/(8*a^2*f*(a + b*sinh(e + f*x)^2)^(3/2)) - csch(e + f*x)^4/(4*a*f*(a + b*sinh(e + f*x)^2)^(3/2)) + (8*a^2 - 40*a*b + 35*b^2)/(8*a^4*f*sqrt(a + b*sinh(e + f*x)^2))]

    @test_int [tanh(e + f*x)^4/(a + b*sinh(e + f*x)^2)^(5/2), x, 7, -(b*(5*a + 3*b)*cosh(e + f*x)*sinh(e + f*x))/(3*(a - b)^3*f*(a + b*sinh(e + f*x)^2)^(3/2)) - (8*sqrt(a)*sqrt(b)*(a + b)*cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/(3*(a - b)^4*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2)) + ((3*a + b)*(a + 3*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*(a - b)^4*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - (2*(2*a + b)*tanh(e + f*x))/(3*(a - b)^2*f*(a + b*sinh(e + f*x)^2)^(3/2)) + (sech(e + f*x)^2*tanh(e + f*x))/(3*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2))]
    @test_int [tanh(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(5/2), x, 6, (-4*b*cosh(e + f*x)*sinh(e + f*x))/(3*(a - b)^2*f*(a + b*sinh(e + f*x)^2)^(3/2)) - (sqrt(b)*(7*a + b)*cosh(e + f*x)*EllipticE(atan((sqrt(b)*sinh(e + f*x))/sqrt(a)), 1 - a/b))/(3*sqrt(a)*(a - b)^3*f*sqrt((a*cosh(e + f*x)^2)/(a + b*sinh(e + f*x)^2))*sqrt(a + b*sinh(e + f*x)^2)) + ((3*a + 5*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a*(a - b)^3*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) - tanh(e + f*x)/((a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2))]
    @test_int [tanh(e + f*x)^0/(a + b*sinh(e + f*x)^2)^(5/2), x, 7, -(b*cosh(e + f*x)*sinh(e + f*x))/(3*a*(a - b)*f*(a + b*sinh(e + f*x)^2)^(3/2)) - (2*(2*a - b)*b*cosh(e + f*x)*sinh(e + f*x))/(3*a^2*(a - b)^2*f*sqrt(a + b*sinh(e + f*x)^2)) - (((2*im)/3)*(2*a - b)*EllipticE(im*e + im*f*x, b/a)*sqrt(a + b*sinh(e + f*x)^2))/(a^2*(a - b)^2*f*sqrt(1 + (b*sinh(e + f*x)^2)/a)) + ((im/3)*EllipticF(im*e + im*f*x, b/a)*sqrt(1 + (b*sinh(e + f*x)^2)/a))/(a*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2))]
    @test_int [coth(e + f*x)^2/(a + b*sinh(e + f*x)^2)^(5/2), x, 8, coth(e + f*x)/(3*a*f*(a + b*sinh(e + f*x)^2)^(3/2)) + ((3*a - 4*b)*coth(e + f*x))/(3*a^2*(a - b)*f*sqrt(a + b*sinh(e + f*x)^2)) - ((7*a - 8*b)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*(a - b)*f) - ((7*a - 8*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a - 4*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*(a - b)*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((7*a - 8*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a^3*(a - b)*f)]
    @test_int [coth(e + f*x)^4/(a + b*sinh(e + f*x)^2)^(5/2), x, 9, -((a - b)*coth(e + f*x)*csch(e + f*x)^2)/(3*a*b*f*(a + b*sinh(e + f*x)^2)^(3/2)) - (2*(a - 3*b)*coth(e + f*x)*csch(e + f*x)^2)/(3*a^2*b*f*sqrt(a + b*sinh(e + f*x)^2)) - (8*(a - 2*b)*coth(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^4*f) + ((3*a - 8*b)*coth(e + f*x)*csch(e + f*x)^2*sqrt(a + b*sinh(e + f*x)^2))/(3*a^3*b*f) - (8*(a - 2*b)*EllipticE(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^4*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + ((3*a - 8*b)*EllipticF(atan(sinh(e + f*x)), 1 - b/a)*sech(e + f*x)*sqrt(a + b*sinh(e + f*x)^2))/(3*a^4*f*sqrt((sech(e + f*x)^2*(a + b*sinh(e + f*x)^2))/a)) + (8*(a - 2*b)*sqrt(a + b*sinh(e + f*x)^2)*tanh(e + f*x))/(3*a^4*f)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*tanh(e+f*x))^m*(a+b*sinh(e+f*x)^2)^p*when*p*symbolic=#


    @test_int [(a + b*sinh(e + f*x)^2)^p*(d*tanh(e + f*x))^m, x, 3, (AppellF1((1 + m)/2, (1 + m)/2, -p, (3 + m)/2, -sinh(e + f*x)^2, -((b*sinh(e + f*x)^2)/a))*(cosh(e + f*x)^2)^((1 + m)/2)*(a + b*sinh(e + f*x)^2)^p*(d*tanh(e + f*x))^(1 + m))/((1 + (b*sinh(e + f*x)^2)/a)^p*(d*f*(1 + m)))]


    @test_int [(a + b*sinh(c + d*x)^2)^p*tanh(c + d*x)^3, x, 3, -((a - b*(1 + p))*Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*sinh(c + d*x)^2)/(a - b))*(a + b*sinh(c + d*x)^2)^(1 + p))/(2*(a - b)^2*d*(1 + p)) + (sech(c + d*x)^2*(a + b*sinh(c + d*x)^2)^(1 + p))/(2*(a - b)*d)]
    @test_int [(a + b*sinh(c + d*x)^2)^p*tanh(c + d*x)^1, x, 2, -(Hypergeometric2F1(1, 1 + p, 2 + p, (a + b*sinh(c + d*x)^2)/(a - b))*(a + b*sinh(c + d*x)^2)^(1 + p))/(2*(a - b)*d*(1 + p))]
    @test_int [coth(c + d*x)^1*(a + b*sinh(c + d*x)^2)^p, x, 2, -(Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sinh(c + d*x)^2)/a)*(a + b*sinh(c + d*x)^2)^(1 + p))/(2*a*d*(1 + p))]
    @test_int [coth(c + d*x)^3*(a + b*sinh(c + d*x)^2)^p, x, 3, -(csch(c + d*x)^2*(a + b*sinh(c + d*x)^2)^(1 + p))/(2*a*d) - ((a + b*p)*Hypergeometric2F1(1, 1 + p, 2 + p, 1 + (b*sinh(c + d*x)^2)/a)*(a + b*sinh(c + d*x)^2)^(1 + p))/(2*a^2*d*(1 + p))]

    @test_int [(a + b*sinh(c + d*x)^2)^p*tanh(c + d*x)^4, x, 3, (AppellF1(5/2, 5/2, -p, 7/2, -sinh(c + d*x)^2, -((b*sinh(c + d*x)^2)/a))*sqrt(cosh(c + d*x)^2)*sinh(c + d*x)^4*(a + b*sinh(c + d*x)^2)^p*tanh(c + d*x))/(5*d*(1 + (b*sinh(c + d*x)^2)/a)^p)]
    @test_int [(a + b*sinh(c + d*x)^2)^p*tanh(c + d*x)^2, x, 3, (AppellF1(3/2, 3/2, -p, 5/2, -sinh(c + d*x)^2, -((b*sinh(c + d*x)^2)/a))*sqrt(cosh(c + d*x)^2)*sinh(c + d*x)^2*(a + b*sinh(c + d*x)^2)^p*tanh(c + d*x))/(3*d*(1 + (b*sinh(c + d*x)^2)/a)^p)]
    @test_int [coth(c + d*x)^2*(a + b*sinh(c + d*x)^2)^p, x, 3, -((AppellF1(-1/2, -1/2, -p, 1/2, -sinh(c + d*x)^2, -((b*sinh(c + d*x)^2)/a))*sqrt(cosh(c + d*x)^2)*csch(c + d*x)*sech(c + d*x)*(a + b*sinh(c + d*x)^2)^p)/(d*(1 + (b*sinh(c + d*x)^2)/a)^p))]
    @test_int [coth(c + d*x)^4*(a + b*sinh(c + d*x)^2)^p, x, 3, -(AppellF1(-3/2, -3/2, -p, -1/2, -sinh(c + d*x)^2, -((b*sinh(c + d*x)^2)/a))*sqrt(cosh(c + d*x)^2)*csch(c + d*x)^3*sech(c + d*x)*(a + b*sinh(c + d*x)^2)^p)/(3*d*(1 + (b*sinh(c + d*x)^2)/a)^p)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sinh(e+f*x)^3)^p=#


    @test_int [coth(x)^3/(a + b*sinh(x)^3), x, 12, (b^(2/3)*atan((a^(1/3) - 2*b^(1/3)*sinh(x))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(5/3)) - csch(x)^2/(2*a) + log(sinh(x))/a - (b^(2/3)*log(a^(1/3) + b^(1/3)*sinh(x)))/(3*a^(5/3)) + (b^(2/3)*log(a^(2/3) - a^(1/3)*b^(1/3)*sinh(x) + b^(2/3)*sinh(x)^2))/(6*a^(5/3)) - log(a + b*sinh(x)^3)/(3*a)]


    @test_int [coth(x)/sqrt(a + b*sinh(x)^3), x, 4, -((2*atanh(sqrt(a + b*sinh(x)^3)/sqrt(a)))/(3*sqrt(a)))]


    @test_int [coth(x)*sqrt(a + b*sinh(x)^3), x, 5, (-(2/3))*sqrt(a)*atanh(sqrt(a + b*sinh(x)^3)/sqrt(a)) + (2/3)*sqrt(a + b*sinh(x)^3)]


    #= ::Section:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sinh(e+f*x)^4)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tanh(e+f*x)^m*(a+b*sinh(e+f*x)^n)^p=#


    @test_int [coth(x)/sqrt(a + b*sinh(x)^n), x, 4, -((2*atanh(sqrt(a + b*sinh(x)^n)/sqrt(a)))/(sqrt(a)*n))]


    @test_int [coth(x)*sqrt(a + b*sinh(x)^n), x, 5, -((2*sqrt(a)*atanh(sqrt(a + b*sinh(x)^n)/sqrt(a)))/n) + (2*sqrt(a + b*sinh(x)^n))/n]
    end
