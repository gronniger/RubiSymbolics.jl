@testset "1.1.1.5 P(x) (a+b x)^m (c+d x)^n" begin
    @variables A, B, C, D, a, b, c, d, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*P(x)*(a+b*x)^m*(c+d*x)^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*P(x)*(a+b*x)^m*(c+d*x)^(n/2)=#


    #= ::Subsection:: =#
    #=n>0=#


    #= ::Subsection::Closed:: =#
    #=n<0=#


    @test_int [(a + b*x)^3*(A + B*x + C*x^2 + D*x^3)/sqrt(c + d*x), x, 2, -((2*(b*c - a*d)^3*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D)*sqrt(c + d*x))/d^7) - (2*(b*c - a*d)^2*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(5*c^2*C*d - 4*B*c*d^2 + 3*A*d^3 - 6*c^3*D))*(c + d*x)^(3/2))/(3*d^7) - (2*(b*c - a*d)*(a^2*d^2*(C*d - 3*c*D) - a*b*d*(8*c*C*d - 3*B*d^2 - 15*c^2*D) + b^2*(10*c^2*C*d - 6*B*c*d^2 + 3*A*d^3 - 15*c^3*D))*(c + d*x)^(5/2))/(5*d^7) + (2*(a^3*d^3*D + 3*a^2*b*d^2*(C*d - 4*c*D) - 3*a*b^2*d*(4*c*C*d - B*d^2 - 10*c^2*D) + b^3*(10*c^2*C*d - 4*B*c*d^2 + A*d^3 - 20*c^3*D))*(c + d*x)^(7/2))/(7*d^7) + (2*b*(3*a^2*d^2*D + 3*a*b*d*(C*d - 5*c*D) - b^2*(5*c*C*d - B*d^2 - 15*c^2*D))*(c + d*x)^(9/2))/(9*d^7) + (2*b^2*(b*C*d - 6*b*c*D + 3*a*d*D)*(c + d*x)^(11/2))/(11*d^7) + (2*b^3*D*(c + d*x)^(13/2))/(13*d^7)]
    @test_int [(a + b*x)^2*(A + B*x + C*x^2 + D*x^3)/sqrt(c + d*x), x, 2, (2*(b*c - a*d)^2*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D)*sqrt(c + d*x))/d^6 + (2*(b*c - a*d)*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(4*c^2*C*d - 3*B*c*d^2 + 2*A*d^3 - 5*c^3*D))*(c + d*x)^(3/2))/(3*d^6) + (2*(a^2*d^2*(C*d - 3*c*D) - 2*a*b*d*(3*c*C*d - B*d^2 - 6*c^2*D) + b^2*(6*c^2*C*d - 3*B*c*d^2 + A*d^3 - 10*c^3*D))*(c + d*x)^(5/2))/(5*d^6) + (2*(a^2*d^2*D + 2*a*b*d*(C*d - 4*c*D) - b^2*(4*c*C*d - B*d^2 - 10*c^2*D))*(c + d*x)^(7/2))/(7*d^6) + (2*b*(b*C*d - 5*b*c*D + 2*a*d*D)*(c + d*x)^(9/2))/(9*d^6) + (2*b^2*D*(c + d*x)^(11/2))/(11*d^6)]
    @test_int [(a + b*x)^1*(A + B*x + C*x^2 + D*x^3)/sqrt(c + d*x), x, 2, -((2*(b*c - a*d)*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D)*sqrt(c + d*x))/d^5) - (2*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(3*c^2*C*d - 2*B*c*d^2 + A*d^3 - 4*c^3*D))*(c + d*x)^(3/2))/(3*d^5) + (2*(a*d*(C*d - 3*c*D) - b*(3*c*C*d - B*d^2 - 6*c^2*D))*(c + d*x)^(5/2))/(5*d^5) + (2*(b*C*d - 4*b*c*D + a*d*D)*(c + d*x)^(7/2))/(7*d^5) + (2*b*D*(c + d*x)^(9/2))/(9*d^5)]
    @test_int [(a + b*x)^0*(A + B*x + C*x^2 + D*x^3)/sqrt(c + d*x), x, 2, (2*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D)*sqrt(c + d*x))/d^4 - (2*(2*c*C*d - B*d^2 - 3*c^2*D)*(c + d*x)^(3/2))/(3*d^4) + (2*(C*d - 3*c*D)*(c + d*x)^(5/2))/(5*d^4) + (2*D*(c + d*x)^(7/2))/(7*d^4)]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^1*sqrt(c + d*x)), x, 4, (2*(a^2*d^2*D - a*b*d*(C*d - c*D) - b^2*(c*C*d - B*d^2 - c^2*D))*sqrt(c + d*x))/(b^3*d^3) + (2*(b*C*d - 2*b*c*D - a*d*D)*(c + d*x)^(3/2))/(3*b^2*d^3) + (2*D*(c + d*x)^(5/2))/(5*b*d^3) - (2*(A*b^3 - a*(b^2*B - a*b*C + a^2*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b^(7/2)*sqrt(b*c - a*d))]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^2*sqrt(c + d*x)), x, 5, (2*(b*C*d - b*c*D - 2*a*d*D)*sqrt(c + d*x))/(b^3*d^2) - ((A - (a*(b^2*B - a*b*C + a^2*D))/b^3)*sqrt(c + d*x))/((b*c - a*d)*(a + b*x)) + (2*D*(c + d*x)^(3/2))/(3*b^2*d^2) - ((b^3*(2*B*c - A*d) - a*b^2*(4*c*C + B*d) - 5*a^3*d*D + 3*a^2*b*(C*d + 2*c*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b^(7/2)*(b*c - a*d)^(3/2))]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^3*sqrt(c + d*x)), x, 5, (2*D*sqrt(c + d*x))/(b^3*d) - ((A*b^3 - a*(b^2*B - a*b*C + a^2*D))*sqrt(c + d*x))/(2*b^3*(b*c - a*d)*(a + b*x)^2) - ((b^3*(4*B*c - 3*A*d) - a*b^2*(8*c*C + B*d) - 9*a^3*d*D + a^2*b*(5*C*d + 12*c*D))*sqrt(c + d*x))/(4*b^3*(b*c - a*d)^2*(a + b*x)) - ((b^3*(8*c^2*C - 4*B*c*d + 3*A*d^2) - 15*a^3*d^2*D + 3*a^2*b*d*(C*d + 12*c*D) - a*b^2*(8*c*C*d - B*d^2 + 24*c^2*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(4*b^(7/2)*(b*c - a*d)^(5/2))]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^4*sqrt(c + d*x)), x, 5, -(((A*b^3 - a*(b^2*B - a*b*C + a^2*D))*sqrt(c + d*x))/(3*b^3*(b*c - a*d)*(a + b*x)^3)) - ((b^3*(6*B*c - 5*A*d) - a*b^2*(12*c*C + B*d) - 13*a^3*d*D + a^2*b*(7*C*d + 18*c*D))*sqrt(c + d*x))/(12*b^3*(b*c - a*d)^2*(a + b*x)^2) - ((b^3*(8*c^2*C - 6*B*c*d + 5*A*d^2) - 11*a^3*d^2*D + a^2*b*d*(C*d + 30*c*D) - a*b^2*(4*c*C*d - B*d^2 + 24*c^2*D))*sqrt(c + d*x))/(8*b^3*(b*c - a*d)^3*(a + b*x)) + ((5*a^3*d^3*D + a^2*b*d^2*(C*d - 18*c*D) - a*b^2*d*(4*c*C*d - B*d^2 - 24*c^2*D) + b^3*(8*c^2*C*d - 6*B*c*d^2 + 5*A*d^3 - 16*c^3*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(8*b^(7/2)*(b*c - a*d)^(7/2))]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^5*sqrt(c + d*x)), x, 6, -(((A*b^3 - a*(b^2*B - a*b*C + a^2*D))*sqrt(c + d*x))/(4*b^3*(b*c - a*d)*(a + b*x)^4)) - ((b^3*(8*B*c - 7*A*d) - a*b^2*(16*c*C + B*d) - 17*a^3*d*D + 3*a^2*b*(3*C*d + 8*c*D))*sqrt(c + d*x))/(24*b^3*(b*c - a*d)^2*(a + b*x)^3) - ((b^3*(48*c^2*C - 40*B*c*d + 35*A*d^2) - 59*a^3*d^2*D + 3*a^2*b*d*(C*d + 56*c*D) - a*b^2*(16*c*C*d - 5*B*d^2 + 144*c^2*D))*sqrt(c + d*x))/(96*b^3*(b*c - a*d)^3*(a + b*x)^2) + ((5*a^3*d^3*D + 3*a^2*b*d^2*(C*d - 8*c*D) - a*b^2*d*(16*c*C*d - 5*B*d^2 - 48*c^2*D) + b^3*(48*c^2*C*d - 40*B*c*d^2 + 35*A*d^3 - 64*c^3*D))*sqrt(c + d*x))/(64*b^3*(b*c - a*d)^4*(a + b*x)) - (d*(5*a^3*d^3*D + 3*a^2*b*d^2*(C*d - 8*c*D) - a*b^2*d*(16*c*C*d - 5*B*d^2 - 48*c^2*D) + b^3*(48*c^2*C*d - 40*B*c*d^2 + 35*A*d^3 - 64*c^3*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(64*b^(7/2)*(b*c - a*d)^(9/2))]


    @test_int [(a + b*x)^3*(A + B*x + C*x^2 + D*x^3)/(c + d*x)^(3/2), x, 2, (2*(b*c - a*d)^3*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(d^7*sqrt(c + d*x)) - (2*(b*c - a*d)^2*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(5*c^2*C*d - 4*B*c*d^2 + 3*A*d^3 - 6*c^3*D))*sqrt(c + d*x))/d^7 - (2*(b*c - a*d)*(a^2*d^2*(C*d - 3*c*D) - a*b*d*(8*c*C*d - 3*B*d^2 - 15*c^2*D) + b^2*(10*c^2*C*d - 6*B*c*d^2 + 3*A*d^3 - 15*c^3*D))*(c + d*x)^(3/2))/(3*d^7) + (2*(a^3*d^3*D + 3*a^2*b*d^2*(C*d - 4*c*D) - 3*a*b^2*d*(4*c*C*d - B*d^2 - 10*c^2*D) + b^3*(10*c^2*C*d - 4*B*c*d^2 + A*d^3 - 20*c^3*D))*(c + d*x)^(5/2))/(5*d^7) + (2*b*(3*a^2*d^2*D + 3*a*b*d*(C*d - 5*c*D) - b^2*(5*c*C*d - B*d^2 - 15*c^2*D))*(c + d*x)^(7/2))/(7*d^7) + (2*b^2*(b*C*d - 6*b*c*D + 3*a*d*D)*(c + d*x)^(9/2))/(9*d^7) + (2*b^3*D*(c + d*x)^(11/2))/(11*d^7)]
    @test_int [(a + b*x)^2*(A + B*x + C*x^2 + D*x^3)/(c + d*x)^(3/2), x, 2, -((2*(b*c - a*d)^2*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(d^6*sqrt(c + d*x))) + (2*(b*c - a*d)*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(4*c^2*C*d - 3*B*c*d^2 + 2*A*d^3 - 5*c^3*D))*sqrt(c + d*x))/d^6 + (2*(a^2*d^2*(C*d - 3*c*D) - 2*a*b*d*(3*c*C*d - B*d^2 - 6*c^2*D) + b^2*(6*c^2*C*d - 3*B*c*d^2 + A*d^3 - 10*c^3*D))*(c + d*x)^(3/2))/(3*d^6) + (2*(a^2*d^2*D + 2*a*b*d*(C*d - 4*c*D) - b^2*(4*c*C*d - B*d^2 - 10*c^2*D))*(c + d*x)^(5/2))/(5*d^6) + (2*b*(b*C*d - 5*b*c*D + 2*a*d*D)*(c + d*x)^(7/2))/(7*d^6) + (2*b^2*D*(c + d*x)^(9/2))/(9*d^6)]
    @test_int [(a + b*x)^1*(A + B*x + C*x^2 + D*x^3)/(c + d*x)^(3/2), x, 2, (2*(b*c - a*d)*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(d^5*sqrt(c + d*x)) - (2*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(3*c^2*C*d - 2*B*c*d^2 + A*d^3 - 4*c^3*D))*sqrt(c + d*x))/d^5 + (2*(a*d*(C*d - 3*c*D) - b*(3*c*C*d - B*d^2 - 6*c^2*D))*(c + d*x)^(3/2))/(3*d^5) + (2*(b*C*d - 4*b*c*D + a*d*D)*(c + d*x)^(5/2))/(5*d^5) + (2*b*D*(c + d*x)^(7/2))/(7*d^5)]
    @test_int [(a + b*x)^0*(A + B*x + C*x^2 + D*x^3)/(c + d*x)^(3/2), x, 2, -((2*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(d^4*sqrt(c + d*x))) - (2*(2*c*C*d - B*d^2 - 3*c^2*D)*sqrt(c + d*x))/d^4 + (2*(C*d - 3*c*D)*(c + d*x)^(3/2))/(3*d^4) + (2*D*(c + d*x)^(5/2))/(5*d^4)]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^1*(c + d*x)^(3/2)), x, 6, (2*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(d^3*(b*c - a*d)*sqrt(c + d*x)) - (2*c*D*sqrt(c + d*x))/(b*d^3) + (2*(b*C*d - b*c*D - a*d*D)*sqrt(c + d*x))/(b^2*d^3) + (2*D*(c + d*x)^(3/2))/(3*b*d^3) - (2*(A*b^3 - a*(b^2*B - a*b*C + a^2*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b^(5/2)*(b*c - a*d)^(3/2))]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^2*(c + d*x)^(3/2)), x, 5, (a*b^2*B*d^3 - a^2*b*C*d^3 + a^3*d^3*D - b^3*(2*c^2*C*d - 2*B*c*d^2 + 3*A*d^3 - 2*c^3*D))/(b^3*d^2*(b*c - a*d)^2*sqrt(c + d*x)) - (A - (a*(b^2*B - a*b*C + a^2*D))/b^3)/((b*c - a*d)*(a + b*x)*sqrt(c + d*x)) + (2*D*sqrt(c + d*x))/(b^2*d^2) - ((b^3*(2*B*c - 3*A*d) - a*b^2*(4*c*C - B*d) - 3*a^3*d*D + a^2*b*(C*d + 6*c*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b^(5/2)*(b*c - a*d)^(5/2))]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^3*(c + d*x)^(3/2)), x, 5, -((a*b^2*B*d^3 - a^2*b*C*d^3 + a^3*d^3*D - b^3*(4*c^2*C*d - 4*B*c*d^2 + 5*A*d^3 - 4*c^3*D))/(2*b^3*d*(b*c - a*d)^3*sqrt(c + d*x))) - (A*b^3 - a*(b^2*B - a*b*C + a^2*D))/(2*b^3*(b*c - a*d)*(a + b*x)^2*sqrt(c + d*x)) - ((b^3*(4*B*c - 5*A*d) - a*b^2*(8*c*C - B*d) - 7*a^3*d*D + 3*a^2*b*(C*d + 4*c*D))*sqrt(c + d*x))/(4*b^2*(b*c - a*d)^3*(a + b*x)) - ((b^3*(8*c^2*C - 12*B*c*d + 15*A*d^2) - 3*a^3*d^2*D - a^2*b*d*(C*d - 12*c*D) + a*b^2*(8*c*C*d - 3*B*d^2 - 24*c^2*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(4*b^(5/2)*(b*c - a*d)^(7/2))]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^4*(c + d*x)^(3/2)), x, 6, (a*b^2*B*d^3 - a^2*b*C*d^3 + a^3*d^3*D - b^3*(6*c^2*C*d - 6*B*c*d^2 + 7*A*d^3 - 6*c^3*D))/(3*b^3*(b*c - a*d)^4*sqrt(c + d*x)) - (A*b^3 - a*(b^2*B - a*b*C + a^2*D))/(3*b^3*(b*c - a*d)*(a + b*x)^3*sqrt(c + d*x)) - ((b^3*(6*B*c - 7*A*d) - a*b^2*(12*c*C - B*d) - 11*a^3*d*D + a^2*b*(5*C*d + 18*c*D))*sqrt(c + d*x))/(12*b^2*(b*c - a*d)^3*(a + b*x)^2) - ((b^3*(24*c^2*C - 42*B*c*d + 49*A*d^2) + 5*a^3*d^2*D - a^2*b*d*(11*C*d - 18*c*D) + a*b^2*(36*c*C*d - 7*B*d^2 - 72*c^2*D))*sqrt(c + d*x))/(24*b^2*(b*c - a*d)^4*(a + b*x)) - ((a^3*d^3*D + a^2*b*d^2*(C*d - 6*c*D) - a*b^2*d*(12*c*C*d - 5*B*d^2 - 24*c^2*D) - b^3*(24*c^2*C*d - 30*B*c*d^2 + 35*A*d^3 - 16*c^3*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(8*b^(5/2)*(b*c - a*d)^(9/2))]


    @test_int [(a + b*x)^3*(A + B*x + C*x^2 + D*x^3)/(c + d*x)^(5/2), x, 2, (2*(b*c - a*d)^3*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(3*d^7*(c + d*x)^(3/2)) + (2*(b*c - a*d)^2*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(5*c^2*C*d - 4*B*c*d^2 + 3*A*d^3 - 6*c^3*D)))/(d^7*sqrt(c + d*x)) - (2*(b*c - a*d)*(a^2*d^2*(C*d - 3*c*D) - a*b*d*(8*c*C*d - 3*B*d^2 - 15*c^2*D) + b^2*(10*c^2*C*d - 6*B*c*d^2 + 3*A*d^3 - 15*c^3*D))*sqrt(c + d*x))/d^7 + (2*(a^3*d^3*D + 3*a^2*b*d^2*(C*d - 4*c*D) - 3*a*b^2*d*(4*c*C*d - B*d^2 - 10*c^2*D) + b^3*(10*c^2*C*d - 4*B*c*d^2 + A*d^3 - 20*c^3*D))*(c + d*x)^(3/2))/(3*d^7) + (2*b*(3*a^2*d^2*D + 3*a*b*d*(C*d - 5*c*D) - b^2*(5*c*C*d - B*d^2 - 15*c^2*D))*(c + d*x)^(5/2))/(5*d^7) + (2*b^2*(b*C*d - 6*b*c*D + 3*a*d*D)*(c + d*x)^(7/2))/(7*d^7) + (2*b^3*D*(c + d*x)^(9/2))/(9*d^7)]
    @test_int [(a + b*x)^2*(A + B*x + C*x^2 + D*x^3)/(c + d*x)^(5/2), x, 2, -((2*(b*c - a*d)^2*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(3*d^6*(c + d*x)^(3/2))) - (2*(b*c - a*d)*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(4*c^2*C*d - 3*B*c*d^2 + 2*A*d^3 - 5*c^3*D)))/(d^6*sqrt(c + d*x)) + (2*(a^2*d^2*(C*d - 3*c*D) - 2*a*b*d*(3*c*C*d - B*d^2 - 6*c^2*D) + b^2*(6*c^2*C*d - 3*B*c*d^2 + A*d^3 - 10*c^3*D))*sqrt(c + d*x))/d^6 + (2*(a^2*d^2*D + 2*a*b*d*(C*d - 4*c*D) - b^2*(4*c*C*d - B*d^2 - 10*c^2*D))*(c + d*x)^(3/2))/(3*d^6) + (2*b*(b*C*d - 5*b*c*D + 2*a*d*D)*(c + d*x)^(5/2))/(5*d^6) + (2*b^2*D*(c + d*x)^(7/2))/(7*d^6)]
    @test_int [(a + b*x)^1*(A + B*x + C*x^2 + D*x^3)/(c + d*x)^(5/2), x, 2, (2*(b*c - a*d)*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(3*d^5*(c + d*x)^(3/2)) + (2*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(3*c^2*C*d - 2*B*c*d^2 + A*d^3 - 4*c^3*D)))/(d^5*sqrt(c + d*x)) + (2*(a*d*(C*d - 3*c*D) - b*(3*c*C*d - B*d^2 - 6*c^2*D))*sqrt(c + d*x))/d^5 + (2*(b*C*d - 4*b*c*D + a*d*D)*(c + d*x)^(3/2))/(3*d^5) + (2*b*D*(c + d*x)^(5/2))/(5*d^5)]
    @test_int [(a + b*x)^0*(A + B*x + C*x^2 + D*x^3)/(c + d*x)^(5/2), x, 2, -((2*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(3*d^4*(c + d*x)^(3/2))) + (2*(2*c*C*d - B*d^2 - 3*c^2*D))/(d^4*sqrt(c + d*x)) + (2*(C*d - 3*c*D)*sqrt(c + d*x))/d^4 + (2*D*(c + d*x)^(3/2))/(3*d^4)]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^1*(c + d*x)^(5/2)), x, 4, (2*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D))/(3*d^3*(b*c - a*d)*(c + d*x)^(3/2)) + (2*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(c^2*C*d - A*d^3 - 2*c^3*D)))/(d^3*(b*c - a*d)^2*sqrt(c + d*x)) + (2*D*sqrt(c + d*x))/(b*d^3) - (2*(A*b^3 - a*(b^2*B - a*b*C + a^2*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b^(3/2)*(b*c - a*d)^(5/2))]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^2*(c + d*x)^(5/2)), x, 5, (3*a*b^2*B*d^3 - 3*a^2*b*C*d^3 + 3*a^3*d^3*D - b^3*(2*c^2*C*d - 2*B*c*d^2 + 5*A*d^3 - 2*c^3*D))/(3*b^3*d^2*(b*c - a*d)^2*(c + d*x)^(3/2)) - (A - (a*(b^2*B - a*b*C + a^2*D))/b^3)/((b*c - a*d)*(a + b*x)*(c + d*x)^(3/2)) - (a^2*b*C*d^3 - a^3*d^3*D + a*b^2*d*(4*c*C*d - 3*B*d^2 - 6*c^2*D) - b^3*(2*B*c*d^2 - 5*A*d^3 - 2*c^3*D))/(b^2*d^2*(b*c - a*d)^3*sqrt(c + d*x)) - ((b^3*(2*B*c - 5*A*d) - a*b^2*(4*c*C - 3*B*d) - a^3*d*D - a^2*b*(C*d - 6*c*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(b^(3/2)*(b*c - a*d)^(7/2))]
    @test_int [(A + B*x + C*x^2 + D*x^3)/((a + b*x)^3*(c + d*x)^(5/2)), x, 6, -((3*a*b^2*B*d^3 - 3*a^2*b*C*d^3 + 3*a^3*d^3*D - b^3*(4*c^2*C*d - 4*B*c*d^2 + 7*A*d^3 - 4*c^3*D))/(6*b^3*d*(b*c - a*d)^3*(c + d*x)^(3/2))) - (A*b^3 - a*(b^2*B - a*b*C + a^2*D))/(2*b^3*(b*c - a*d)*(a + b*x)^2*(c + d*x)^(3/2)) + (a^2*b*C*d^2 + b^3*(2*c^2*C - 4*B*c*d + 7*A*d^2) - a^3*d^2*D + a*b^2*(4*c*C*d - 3*B*d^2 - 6*c^2*D))/(b^2*(b*c - a*d)^4*sqrt(c + d*x)) - ((b^3*(4*B*c - 7*A*d) - a*b^2*(8*c*C - 3*B*d) - 5*a^3*d*D + a^2*b*(C*d + 12*c*D))*sqrt(c + d*x))/(4*b*(b*c - a*d)^4*(a + b*x)) - ((b^3*(8*c^2*C - 20*B*c*d + 35*A*d^2) + a^3*d^2*D + 3*a^2*b*d*(C*d - 4*c*D) + 3*a*b^2*(8*c*C*d - 5*B*d^2 - 8*c^2*D))*atanh((sqrt(b)*sqrt(c + d*x))/sqrt(b*c - a*d)))/(4*b^(3/2)*(b*c - a*d)^(9/2))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*P(x)*(a+b*x)^m*(c+d*x)^n*when*n*symbolic=#


    @test_int [(a + b*x)^3*(c + d*x)^n*(A + B*x + C*x^2 + D*x^3), x, 2, -(((b*c - a*d)^3*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D)*(c + d*x)^(1 + n))/(d^7*(1 + n))) - ((b*c - a*d)^2*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(5*c^2*C*d - 4*B*c*d^2 + 3*A*d^3 - 6*c^3*D))*(c + d*x)^(2 + n))/(d^7*(2 + n)) - ((b*c - a*d)*(a^2*d^2*(C*d - 3*c*D) - a*b*d*(8*c*C*d - 3*B*d^2 - 15*c^2*D) + b^2*(10*c^2*C*d - 6*B*c*d^2 + 3*A*d^3 - 15*c^3*D))*(c + d*x)^(3 + n))/(d^7*(3 + n)) + ((a^3*d^3*D + 3*a^2*b*d^2*(C*d - 4*c*D) - 3*a*b^2*d*(4*c*C*d - B*d^2 - 10*c^2*D) + b^3*(10*c^2*C*d - 4*B*c*d^2 + A*d^3 - 20*c^3*D))*(c + d*x)^(4 + n))/(d^7*(4 + n)) + (b*(3*a^2*d^2*D + 3*a*b*d*(C*d - 5*c*D) - b^2*(5*c*C*d - B*d^2 - 15*c^2*D))*(c + d*x)^(5 + n))/(d^7*(5 + n)) + (b^2*(b*C*d - 6*b*c*D + 3*a*d*D)*(c + d*x)^(6 + n))/(d^7*(6 + n)) + (b^3*D*(c + d*x)^(7 + n))/(d^7*(7 + n))]
    @test_int [(a + b*x)^2*(c + d*x)^n*(A + B*x + C*x^2 + D*x^3), x, 2, ((b*c - a*d)^2*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D)*(c + d*x)^(1 + n))/(d^6*(1 + n)) + ((b*c - a*d)*(a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(4*c^2*C*d - 3*B*c*d^2 + 2*A*d^3 - 5*c^3*D))*(c + d*x)^(2 + n))/(d^6*(2 + n)) + ((a^2*d^2*(C*d - 3*c*D) - 2*a*b*d*(3*c*C*d - B*d^2 - 6*c^2*D) + b^2*(6*c^2*C*d - 3*B*c*d^2 + A*d^3 - 10*c^3*D))*(c + d*x)^(3 + n))/(d^6*(3 + n)) + ((a^2*d^2*D + 2*a*b*d*(C*d - 4*c*D) - b^2*(4*c*C*d - B*d^2 - 10*c^2*D))*(c + d*x)^(4 + n))/(d^6*(4 + n)) + (b*(b*C*d - 5*b*c*D + 2*a*d*D)*(c + d*x)^(5 + n))/(d^6*(5 + n)) + (b^2*D*(c + d*x)^(6 + n))/(d^6*(6 + n))]
    @test_int [(a + b*x)^1*(c + d*x)^n*(A + B*x + C*x^2 + D*x^3), x, 2, -(((b*c - a*d)*(c^2*C*d - B*c*d^2 + A*d^3 - c^3*D)*(c + d*x)^(1 + n))/(d^5*(1 + n))) - ((a*d*(2*c*C*d - B*d^2 - 3*c^2*D) - b*(3*c^2*C*d - 2*B*c*d^2 + A*d^3 - 4*c^3*D))*(c + d*x)^(2 + n))/(d^5*(2 + n)) + ((a*d*(C*d - 3*c*D) - b*(3*c*C*d - B*d^2 - 6*c^2*D))*(c + d*x)^(3 + n))/(d^5*(3 + n)) + ((b*C*d - 4*b*c*D + a*d*D)*(c + d*x)^(4 + n))/(d^5*(4 + n)) + (b*D*(c + d*x)^(5 + n))/(d^5*(5 + n))]
    @test_int [(a + b*x)^0*(c + d*x)^n*(A + B*x + C*x^2 + D*x^3), x, 2, ((c^2*C*d - B*c*d^2 + A*d^3 - c^3*D)*(c + d*x)^(1 + n))/(d^4*(1 + n)) - ((2*c*C*d - B*d^2 - 3*c^2*D)*(c + d*x)^(2 + n))/(d^4*(2 + n)) + ((C*d - 3*c*D)*(c + d*x)^(3 + n))/(d^4*(3 + n)) + (D*(c + d*x)^(4 + n))/(d^4*(4 + n))]
    @test_int [(c + d*x)^n*(A + B*x + C*x^2 + D*x^3)/(a + b*x)^1, x, 3, ((a^2*d^2*D - a*b*d*(C*d - c*D) - b^2*(c*C*d - B*d^2 - c^2*D))*(c + d*x)^(1 + n))/(b^3*d^3*(1 + n)) + ((b*C*d - 2*b*c*D - a*d*D)*(c + d*x)^(2 + n))/(b^2*d^3*(2 + n)) + (D*(c + d*x)^(3 + n))/(b*d^3*(3 + n)) - ((A*b^3 - a*(b^2*B - a*b*C + a^2*D))*(c + d*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, (b*(c + d*x))/(b*c - a*d)))/(b^3*(b*c - a*d)*(1 + n))]
    @test_int [(c + d*x)^n*(A + B*x + C*x^2 + D*x^3)/(a + b*x)^2, x, 4, ((b*C*d - b*c*D - 2*a*d*D)*(c + d*x)^(1 + n))/(b^3*d^2*(1 + n)) - ((A - (a*(b^2*B - a*b*C + a^2*D))/b^3)*(c + d*x)^(1 + n))/((b*c - a*d)*(a + b*x)) + (D*(c + d*x)^(2 + n))/(b^2*d^2*(2 + n)) + ((a^3*d*D*(3 + n) - b^3*(B*c + A*d*n) + a*b^2*(2*c*C + B*d*(1 + n)) - a^2*b*(3*c*D + C*d*(2 + n)))*(c + d*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, (b*(c + d*x))/(b*c - a*d)))/(b^3*(b*c - a*d)^2*(1 + n))]
    @test_int [(c + d*x)^n*(A + B*x + C*x^2 + D*x^3)/(a + b*x)^3, x, 4, (D*(c + d*x)^(1 + n))/(b^3*d*(1 + n)) - ((A*b^3 - a*(b^2*B - a*b*C + a^2*D))*(c + d*x)^(1 + n))/(2*b^3*(b*c - a*d)*(a + b*x)^2) - ((b^3*(2*B*c - A*d*(1 - n)) - a^3*d*D*(5 + n) - a*b^2*(4*c*C + B*d*(1 + n)) + a^2*b*(6*c*D + C*d*(3 + n)))*(c + d*x)^(1 + n))/(2*b^3*(b*c - a*d)^2*(a + b*x)) - ((b^3*(2*c^2*C + 2*B*c*d*n - A*d^2*(1 - n)*n) - a^3*d^2*D*(6 + 5*n + n^2) + a^2*b*d*(2 + n)*(6*c*D + C*d*(1 + n)) - a*b^2*(6*c^2*D + 4*c*C*d*(1 + n) + B*d^2*n*(1 + n)))*(c + d*x)^(1 + n)*Hypergeometric2F1(1, 1 + n, 2 + n, (b*(c + d*x))/(b*c - a*d)))/(2*b^3*(b*c - a*d)^3*(1 + n))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*P(x)*(a+b*x)^m*(c+d*x)^n*when*m*and*n*symbolic=#


    @test_int [(a + b*x)^m*(c + d*x)^n*(A + B*x), x, 3, (B*(a + b*x)^(1 + m)*(c + d*x)^(1 + n))/(b*d*(2 + m + n)) + ((A*b*d*(2 + m + n) - B*(b*c*(1 + m) + a*d*(1 + n)))*(a + b*x)^(1 + m)*(c + d*x)^n*Hypergeometric2F1(1 + m, -n, 2 + m, -((d*(a + b*x))/(b*c - a*d))))/(((b*(c + d*x))/(b*c - a*d))^n*(b^2*d*(1 + m)*(2 + m + n)))]
    @test_int [(a + b*x)^m*(c + d*x)^n*(A + B*x + C*x^2), x, 4, -(((a*C*d*(4 + m + 2*n) + b*(c*C*(2 + m) - B*d*(3 + m + n)))*(a + b*x)^(1 + m)*(c + d*x)^(1 + n))/(b^2*d^2*(2 + m + n)*(3 + m + n))) + (C*(a + b*x)^(2 + m)*(c + d*x)^(1 + n))/(b^2*d*(3 + m + n)) - (1/(b^3*d^2*(1 + m)*(2 + m + n)*(3 + m + n)))*(((d*(2 + m + n)*(a*b*c*C*(2 + m) + a^2*C*d*(1 + n) - A*b^2*d*(3 + m + n)) - (b*c*(1 + m) + a*d*(1 + n))*(a*C*d*(4 + m + 2*n) + b*(c*C*(2 + m) - B*d*(3 + m + n))))*(a + b*x)^(1 + m)*(c + d*x)^n*Hypergeometric2F1(1 + m, -n, 2 + m, -((d*(a + b*x))/(b*c - a*d))))/((b*(c + d*x))/(b*c - a*d))^n)]
    @test_int [(a + b*x)^m*(c + d*x)^n*(A + B*x + C*x^2 + D*x^3), x, 5, (1/(b^3*d^3*(2 + m + n)*(3 + m + n)*(4 + m + n)))*((a^2*d^2*D*(m^2 + m*(8 + 3*n) + 3*(6 + 5*n + n^2)) + b^2*(c^2*D*(6 + 5*m + m^2) - c*C*d*(2 + m)*(4 + m + n) + B*d^2*(12 + m^2 + 7*n + n^2 + m*(7 + 2*n))) + a*b*d*(c*D*(2 + m)*(6 + m + 3*n) - C*d*(m^2 + m*(8 + 3*n) + 2*(8 + 6*n + n^2))))*(a + b*x)^(1 + m)*(c + d*x)^(1 + n)) - ((a*d*D*(9 + 2*m + 3*n) + b*(c*D*(3 + m) - C*d*(4 + m + n)))*(a + b*x)^(2 + m)*(c + d*x)^(1 + n))/(b^3*d^2*(3 + m + n)*(4 + m + n)) + (D*(a + b*x)^(3 + m)*(c + d*x)^(1 + n))/(b^3*d*(4 + m + n)) + (1/(b^4*d^3*(1 + m)*(2 + m + n)*(3 + m + n)*(4 + m + n)))*(((d*(2 + m + n)*(a^3*d^2*D*(1 + n)*(6 + m + 2*n) + a*b^2*c*(2 + m)*(c*D*(3 + m) - C*d*(4 + m + n)) + A*b^3*d^2*(12 + m^2 + 7*n + n^2 + m*(7 + 2*n)) - a^2*b*d*(C*d*(1 + n)*(4 + m + n) - c*D*(2 + m)*(6 + m + 3*n))) - (b*c*(1 + m) + a*d*(1 + n))*(a^2*d^2*D*(m^2 + m*(8 + 3*n) + 3*(6 + 5*n + n^2)) + b^2*(c^2*D*(6 + 5*m + m^2) - c*C*d*(2 + m)*(4 + m + n) + B*d^2*(12 + m^2 + 7*n + n^2 + m*(7 + 2*n))) + a*b*d*(c*D*(2 + m)*(6 + m + 3*n) - C*d*(m^2 + m*(8 + 3*n) + 2*(8 + 6*n + n^2)))))*(a + b*x)^(1 + m)*(c + d*x)^n*Hypergeometric2F1(1 + m, -n, 2 + m, -((d*(a + b*x))/(b*c - a*d))))/((b*(c + d*x))/(b*c - a*d))^n)]
    #= [(a + b*x)^m*(c + d*x)^n*(A + B*x + C*x^2 + D*x^3 + F*x^4), x, 6, (1/(b^4*d^4*(2 + m + n)*(3 + m + n)*(4 + m + n)*(5 + m + n)))*((d*(3 + m + n)*(2*a*b^2*c*(3 + m)*(c*F*(4 + m) - d*D*(5 + m + n)) + b^3*B*d^2*(20 + m^2 + 9*n + n^2 + m*(9 + 2*n)) + 2*a^3*d^2*F*(m^2 + m*(11 + 4*n) + 4*(8 + 6*n + n^2)) + a^2*b*d*(4*c*F*(3 + m)*(6 + m + 2*n) - d*D*(m^2 + m*(11 + 4*n) + 3*(10 + 7*n + n^2)))) - b*c*(2 + m)*(a^2*d^2*F*(3*m^2 + m*(29 + 8*n) + 6*(12 + 7*n + n^2)) + b^2*(c*(3 + m)*(c*F*(4 + m) - d*D*(5 + m + n)) + C*d^2*(20 + m^2 + 9*n + n^2 + m*(9 + 2*n))) + a*b*d*(2*c*F*(3 + m)*(6 + m + 2*n) - d*D*(2*m^2 + m*(19 + 5*n) + 3*(15 + 8*n + n^2)))) - a*d*(2 + n)*(a^2*d^2*F*(3*m^2 + m*(29 + 8*n) + 6*(12 + 7*n + n^2)) + b^2*(c*(3 + m)*(c*F*(4 + m) - d*D*(5 + m + n)) + C*d^2*(20 + m^2 + 9*n + n^2 + m*(9 + 2*n))) + a*b*d*(2*c*F*(3 + m)*(6 + m + 2*n) - d*D*(2*m^2 + m*(19 + 5*n) + 3*(15 + 8*n + n^2)))))*(a + b*x)^(1 + m)*(c + d*x)^(1 + n)) + ((a^2*d^2*F*(3*m^2 + m*(29 + 8*n) + 6*(12 + 7*n + n^2)) + b^2*(c*(3 + m)*(c*F*(4 + m) - d*D*(5 + m + n)) + C*d^2*(20 + m^2 + 9*n + n^2 + m*(9 + 2*n))) + a*b*d*(2*c*F*(3 + m)*(6 + m + 2*n) - d*D*(2*m^2 + m*(19 + 5*n) + 3*(15 + 8*n + n^2))))*x*(a + b*x)^(1 + m)*(c + d*x)^(1 + n))/(b^3*d^3*(3 + m + n)*(4 + m + n)*(5 + m + n)) - ((a*d*F*(3*m + 4*(4 + n)) + b*(c*F*(4 + m) - d*D*(5 + m + n)))*(a + b*x)^(3 + m)*(c + d*x)^(1 + n))/(b^4*d^2*(4 + m + n)*(5 + m + n)) + (F*(a + b*x)^(4 + m)*(c + d*x)^(1 + n))/(b^4*d*(5 + m + n)) + (1/(b^5*d^4*(1 + m)*(2 + m + n)*(3 + m + n)*(4 + m + n)*(5 + m + n)))*(((d*(2 + m + n)*(d*(3 + m + n)*(A*b^4*d^2*(20 + m^2 + 9*n + n^2 + m*(9 + 2*n)) + a^2*(a^2*d^2*F*(1 + n)*(2*m + 3*(4 + n)) + b^2*c*(3 + m)*(c*F*(4 + m) - d*D*(5 + m + n)) - a*b*d*(d*D*(1 + n)*(5 + m + n) - 2*c*F*(3 + m)*(6 + m + 2*n)))) - a*b*c*(a^2*d^2*F*(3*m^2 + m*(29 + 8*n) + 6*(12 + 7*n + n^2)) + b^2*(c*(3 + m)*(c*F*(4 + m) - d*D*(5 + m + n)) + C*d^2*(20 + m^2 + 9*n + n^2 + m*(9 + 2*n))) + a*b*d*(2*c*F*(3 + m)*(6 + m + 2*n) - d*D*(2*m^2 + m*(19 + 5*n) + 3*(15 + 8*n + n^2))))) - (b*c*(1 + m) + a*d*(1 + n))*(d*(3 + m + n)*(2*a*b^2*c*(3 + m)*(c*F*(4 + m) - d*D*(5 + m + n)) + b^3*B*d^2*(20 + m^2 + 9*n + n^2 + m*(9 + 2*n)) + 2*a^3*d^2*F*(m^2 + m*(11 + 4*n) + 4*(8 + 6*n + n^2)) + a^2*b*d*(4*c*F*(3 + m)*(6 + m + 2*n) - d*D*(m^2 + m*(11 + 4*n) + 3*(10 + 7*n + n^2)))) - b*c*(2 + m)*(a^2*d^2*F*(3*m^2 + m*(29 + 8*n) + 6*(12 + 7*n + n^2)) + b^2*(c*(3 + m)*(c*F*(4 + m) - d*D*(5 + m + n)) + C*d^2*(20 + m^2 + 9*n + n^2 + m*(9 + 2*n))) + a*b*d*(2*c*F*(3 + m)*(6 + m + 2*n) - d*D*(2*m^2 + m*(19 + 5*n) + 3*(15 + 8*n + n^2)))) - a*d*(2 + n)*(a^2*d^2*F*(3*m^2 + m*(29 + 8*n) + 6*(12 + 7*n + n^2)) + b^2*(c*(3 + m)*(c*F*(4 + m) - d*D*(5 + m + n)) + C*d^2*(20 + m^2 + 9*n + n^2 + m*(9 + 2*n))) + a*b*d*(2*c*F*(3 + m)*(6 + m + 2*n) - d*D*(2*m^2 + m*(19 + 5*n) + 3*(15 + 8*n + n^2))))))*(a + b*x)^(1 + m)*(c + d*x)^n*Hypergeometric2F1(1 + m, -n, 2 + m, -((d*(a + b*x))/(b*c - a*d))))/((b*(c + d*x))/(b*c - a*d))^n)] =#
    end
