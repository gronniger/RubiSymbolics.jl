@testset "5.2.4 (f x)^m (d+e x^2)^p (a+b arccos(c x))^n" begin
    @variables a, b, c, d, e, x

    #= ::Package:: =#

    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f*x)^m*(d+e*x^2)^p*(a+b*acos(c*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d-c^2*d*x^2)^p*(a+b*acos(c*x))^1=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^3*(a + b*acos(c*x))/(d - c^2*d*x^2), x, 8, (b*x*sqrt(1 - c^2*x^2))/(4*c^3*d) - (x^2*(a + b*acos(c*x)))/(2*c^2*d) + (im*(a + b*acos(c*x))^2)/(2*b*c^4*d) - (b*asin(c*x))/(4*c^4*d) - ((a + b*acos(c*x))*log(1 - ℯ^(2*im*acos(c*x))))/(c^4*d) + (im*b*PolyLog(2, ℯ^(2*im*acos(c*x))))/(2*c^4*d)]
    @test_int [x^2*(a + b*acos(c*x))/(d - c^2*d*x^2), x, 8, (b*sqrt(1 - c^2*x^2))/(c^3*d) - (x*(a + b*acos(c*x)))/(c^2*d) + (2*(a + b*acos(c*x))*atanh(ℯ^(im*acos(c*x))))/(c^3*d) - (im*b*PolyLog(2, -ℯ^(im*acos(c*x))))/(c^3*d) + (im*b*PolyLog(2, ℯ^(im*acos(c*x))))/(c^3*d)]
    @test_int [x^1*(a + b*acos(c*x))/(d - c^2*d*x^2), x, 5, (im*(a + b*acos(c*x))^2)/(2*b*c^2*d) - ((a + b*acos(c*x))*log(1 - ℯ^(2*im*acos(c*x))))/(c^2*d) + (im*b*PolyLog(2, ℯ^(2*im*acos(c*x))))/(2*c^2*d)]
    @test_int [x^0*(a + b*acos(c*x))/(d - c^2*d*x^2), x, 6, (2*(a + b*acos(c*x))*atanh(ℯ^(im*acos(c*x))))/(c*d) - (im*b*PolyLog(2, -ℯ^(im*acos(c*x))))/(c*d) + (im*b*PolyLog(2, ℯ^(im*acos(c*x))))/(c*d)]
    @test_int [(a + b*acos(c*x))/(x^1*(d - c^2*d*x^2)), x, 7, (2*(a + b*acos(c*x))*atanh(ℯ^(2*im*acos(c*x))))/d - (im*b*PolyLog(2, -ℯ^(2*im*acos(c*x))))/(2*d) + (im*b*PolyLog(2, ℯ^(2*im*acos(c*x))))/(2*d)]
    @test_int [(a + b*acos(c*x))/(x^2*(d - c^2*d*x^2)), x, 10, -((a + b*acos(c*x))/(d*x)) + (2*c*(a + b*acos(c*x))*atanh(ℯ^(im*acos(c*x))))/d + (b*c*atanh(sqrt(1 - c^2*x^2)))/d - (im*b*c*PolyLog(2, -ℯ^(im*acos(c*x))))/d + (im*b*c*PolyLog(2, ℯ^(im*acos(c*x))))/d]
    @test_int [(a + b*acos(c*x))/(x^3*(d - c^2*d*x^2)), x, 9, (b*c*sqrt(1 - c^2*x^2))/(2*d*x) - (a + b*acos(c*x))/(2*d*x^2) + (2*c^2*(a + b*acos(c*x))*atanh(ℯ^(2*im*acos(c*x))))/d - (im*b*c^2*PolyLog(2, -ℯ^(2*im*acos(c*x))))/(2*d) + (im*b*c^2*PolyLog(2, ℯ^(2*im*acos(c*x))))/(2*d)]


    @test_int [x^4*(a + b*acos(c*x))/(d - c^2*d*x^2)^2, x, 12, b/(2*c^5*d^2*sqrt(1 - c^2*x^2)) - (b*sqrt(1 - c^2*x^2))/(c^5*d^2) + (3*x*(a + b*acos(c*x)))/(2*c^4*d^2) + (x^3*(a + b*acos(c*x)))/(2*c^2*d^2*(1 - c^2*x^2)) - (3*(a + b*acos(c*x))*atanh(ℯ^(im*acos(c*x))))/(c^5*d^2) + (3*im*b*PolyLog(2, -ℯ^(im*acos(c*x))))/(2*c^5*d^2) - (3*im*b*PolyLog(2, ℯ^(im*acos(c*x))))/(2*c^5*d^2)]
    @test_int [x^3*(a + b*acos(c*x))/(d - c^2*d*x^2)^2, x, 8, (b*x)/(2*c^3*d^2*sqrt(1 - c^2*x^2)) + (x^2*(a + b*acos(c*x)))/(2*c^2*d^2*(1 - c^2*x^2)) - (im*(a + b*acos(c*x))^2)/(2*b*c^4*d^2) - (b*asin(c*x))/(2*c^4*d^2) + ((a + b*acos(c*x))*log(1 - ℯ^(2*im*acos(c*x))))/(c^4*d^2) - (im*b*PolyLog(2, ℯ^(2*im*acos(c*x))))/(2*c^4*d^2)]
    @test_int [x^2*(a + b*acos(c*x))/(d - c^2*d*x^2)^2, x, 8, b/(2*c^3*d^2*sqrt(1 - c^2*x^2)) + (x*(a + b*acos(c*x)))/(2*c^2*d^2*(1 - c^2*x^2)) - ((a + b*acos(c*x))*atanh(ℯ^(im*acos(c*x))))/(c^3*d^2) + (im*b*PolyLog(2, -ℯ^(im*acos(c*x))))/(2*c^3*d^2) - (im*b*PolyLog(2, ℯ^(im*acos(c*x))))/(2*c^3*d^2)]
    @test_int [x^1*(a + b*acos(c*x))/(d - c^2*d*x^2)^2, x, 2, (b*x)/(2*c*d^2*sqrt(1 - c^2*x^2)) + (a + b*acos(c*x))/(2*c^2*d^2*(1 - c^2*x^2))]
    @test_int [x^0*(a + b*acos(c*x))/(d - c^2*d*x^2)^2, x, 8, b/(2*c*d^2*sqrt(1 - c^2*x^2)) + (x*(a + b*acos(c*x)))/(2*d^2*(1 - c^2*x^2)) + ((a + b*acos(c*x))*atanh(ℯ^(im*acos(c*x))))/(c*d^2) - (im*b*PolyLog(2, -ℯ^(im*acos(c*x))))/(2*c*d^2) + (im*b*PolyLog(2, ℯ^(im*acos(c*x))))/(2*c*d^2)]
    @test_int [(a + b*acos(c*x))/(x^1*(d - c^2*d*x^2)^2), x, 9, (b*c*x)/(2*d^2*sqrt(1 - c^2*x^2)) + (a + b*acos(c*x))/(2*d^2*(1 - c^2*x^2)) + (2*(a + b*acos(c*x))*atanh(ℯ^(2*im*acos(c*x))))/d^2 - (im*b*PolyLog(2, -ℯ^(2*im*acos(c*x))))/(2*d^2) + (im*b*PolyLog(2, ℯ^(2*im*acos(c*x))))/(2*d^2)]
    @test_int [(a + b*acos(c*x))/(x^2*(d - c^2*d*x^2)^2), x, 13, (b*c)/(2*d^2*sqrt(1 - c^2*x^2)) - (a + b*acos(c*x))/(d^2*x*(1 - c^2*x^2)) + (3*c^2*x*(a + b*acos(c*x)))/(2*d^2*(1 - c^2*x^2)) + (3*c*(a + b*acos(c*x))*atanh(ℯ^(im*acos(c*x))))/d^2 + (b*c*atanh(sqrt(1 - c^2*x^2)))/d^2 - (3*im*b*c*PolyLog(2, -ℯ^(im*acos(c*x))))/(2*d^2) + (3*im*b*c*PolyLog(2, ℯ^(im*acos(c*x))))/(2*d^2)]
    @test_int [(a + b*acos(c*x))/(x^3*(d - c^2*d*x^2)^2), x, 12, (b*c)/(2*d^2*x*sqrt(1 - c^2*x^2)) + (c^2*(a + b*acos(c*x)))/(d^2*(1 - c^2*x^2)) - (a + b*acos(c*x))/(2*d^2*x^2*(1 - c^2*x^2)) + (4*c^2*(a + b*acos(c*x))*atanh(ℯ^(2*im*acos(c*x))))/d^2 - (im*b*c^2*PolyLog(2, -ℯ^(2*im*acos(c*x))))/d^2 + (im*b*c^2*PolyLog(2, ℯ^(2*im*acos(c*x))))/d^2]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*x^2)^p*(a+b*acos(c*x))^1=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(d + e*x^2)*(a + b*acos(c*x))*x^3, x, 6, -((b*(9*c^2*d + 5*e)*x*sqrt(1 - c^2*x^2))/(96*c^5)) - (b*(9*c^2*d + 5*e)*x^3*sqrt(1 - c^2*x^2))/(144*c^3) - (b*e*x^5*sqrt(1 - c^2*x^2))/(36*c) + (1/4)*d*x^4*(a + b*acos(c*x)) + (1/6)*e*x^6*(a + b*acos(c*x)) + (b*(9*c^2*d + 5*e)*asin(c*x))/(96*c^6)]
    @test_int [(d + e*x^2)*(a + b*acos(c*x))*x^2, x, 5, -((b*(5*c^2*d + 3*e)*sqrt(1 - c^2*x^2))/(15*c^5)) + (b*(5*c^2*d + 6*e)*(1 - c^2*x^2)^(3/2))/(45*c^5) - (b*e*(1 - c^2*x^2)^(5/2))/(25*c^5) + (1/3)*d*x^3*(a + b*acos(c*x)) + (1/5)*e*x^5*(a + b*acos(c*x))]
    @test_int [(d + e*x^2)*(a + b*acos(c*x))*x^1, x, 4, -((3*b*(2*c^2*d + e)*x*sqrt(1 - c^2*x^2))/(32*c^3)) - (b*x*sqrt(1 - c^2*x^2)*(d + e*x^2))/(16*c) + ((d + e*x^2)^2*(a + b*acos(c*x)))/(4*e) + (b*(8*c^4*d^2 + 8*c^2*d*e + 3*e^2)*asin(c*x))/(32*c^4*e)]
    @test_int [(d + e*x^2)*(a + b*acos(c*x))*x^0, x, 4, -((b*(3*c^2*d + e)*sqrt(1 - c^2*x^2))/(3*c^3)) + (b*e*(1 - c^2*x^2)^(3/2))/(9*c^3) + d*x*(a + b*acos(c*x)) + (1/3)*e*x^3*(a + b*acos(c*x))]
    @test_int [(d + e*x^2)*(a + b*acos(c*x))/x^1, x, 12, -((b*e*x*sqrt(1 - c^2*x^2))/(4*c)) + (1/2)*e*x^2*(a + b*acos(c*x)) + (b*e*asin(c*x))/(4*c^2) + (1/2)*im*b*d*asin(c*x)^2 - b*d*asin(c*x)*log(1 - ℯ^(2*im*asin(c*x))) + d*(a + b*acos(c*x))*log(x) + b*d*asin(c*x)*log(x) + (1/2)*im*b*d*PolyLog(2, ℯ^(2*im*asin(c*x)))]
    @test_int [(d + e*x^2)*(a + b*acos(c*x))/x^2, x, 5, -((b*e*sqrt(1 - c^2*x^2))/c) - (d*(a + b*acos(c*x)))/x + e*x*(a + b*acos(c*x)) + b*c*d*atanh(sqrt(1 - c^2*x^2))]
    @test_int [(d + e*x^2)*(a + b*acos(c*x))/x^3, x, 10, (b*c*d*sqrt(1 - c^2*x^2))/(2*x) - (d*(a + b*acos(c*x)))/(2*x^2) + (1/2)*im*b*e*asin(c*x)^2 - b*e*asin(c*x)*log(1 - ℯ^(2*im*asin(c*x))) + e*(a + b*acos(c*x))*log(x) + b*e*asin(c*x)*log(x) + (1/2)*im*b*e*PolyLog(2, ℯ^(2*im*asin(c*x)))]
    @test_int [(d + e*x^2)*(a + b*acos(c*x))/x^4, x, 6, (b*c*d*sqrt(1 - c^2*x^2))/(6*x^2) - (d*(a + b*acos(c*x)))/(3*x^3) - (e*(a + b*acos(c*x)))/x + (1/6)*b*c*(c^2*d + 6*e)*atanh(sqrt(1 - c^2*x^2))]


    @test_int [acos(a*x)*(c + d*x^2)^2, x, 5, -(((15*a^4*c^2 + 10*a^2*c*d + 3*d^2)*sqrt(1 - a^2*x^2))/(15*a^5)) + (2*d*(5*a^2*c + 3*d)*(1 - a^2*x^2)^(3/2))/(45*a^5) - (d^2*(1 - a^2*x^2)^(5/2))/(25*a^5) + c^2*x*acos(a*x) + (2/3)*c*d*x^3*acos(a*x) + (1/5)*d^2*x^5*acos(a*x)]


    @test_int [acos(a*x)*(c + d*x^2)^3, x, 5, -(((35*a^6*c^3 + 35*a^4*c^2*d + 21*a^2*c*d^2 + 5*d^3)*sqrt(1 - a^2*x^2))/(35*a^7)) + (d*(35*a^4*c^2 + 42*a^2*c*d + 15*d^2)*(1 - a^2*x^2)^(3/2))/(105*a^7) - (3*d^2*(7*a^2*c + 5*d)*(1 - a^2*x^2)^(5/2))/(175*a^7) + (d^3*(1 - a^2*x^2)^(7/2))/(49*a^7) + c^3*x*acos(a*x) + c^2*d*x^3*acos(a*x) + (3/5)*c*d^2*x^5*acos(a*x) + (1/7)*d^3*x^7*acos(a*x)]


    @test_int [acos(a*x)*(c + d*x^2)^4, x, 5, -(((315*a^8*c^4 + 420*a^6*c^3*d + 378*a^4*c^2*d^2 + 180*a^2*c*d^3 + 35*d^4)*sqrt(1 - a^2*x^2))/(315*a^9)) + (4*d*(105*a^6*c^3 + 189*a^4*c^2*d + 135*a^2*c*d^2 + 35*d^3)*(1 - a^2*x^2)^(3/2))/(945*a^9) - (2*d^2*(63*a^4*c^2 + 90*a^2*c*d + 35*d^2)*(1 - a^2*x^2)^(5/2))/(525*a^9) + (4*d^3*(9*a^2*c + 7*d)*(1 - a^2*x^2)^(7/2))/(441*a^9) - (d^4*(1 - a^2*x^2)^(9/2))/(81*a^9) + c^4*x*acos(a*x) + (4/3)*c^3*d*x^3*acos(a*x) + (6/5)*c^2*d^2*x^5*acos(a*x) + (4/7)*c*d^3*x^7*acos(a*x) + (1/9)*d^4*x^9*acos(a*x)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [acos(a*x)/(c + d*x^2)^1, x, 18, (acos(a*x)*log(1 - (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) - im*sqrt(a^2*c + d))))/(2*sqrt(-c)*sqrt(d)) - (acos(a*x)*log(1 + (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) - im*sqrt(a^2*c + d))))/(2*sqrt(-c)*sqrt(d)) + (acos(a*x)*log(1 - (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) + im*sqrt(a^2*c + d))))/(2*sqrt(-c)*sqrt(d)) - (acos(a*x)*log(1 + (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) + im*sqrt(a^2*c + d))))/(2*sqrt(-c)*sqrt(d)) + (im*PolyLog(2, -((sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) - im*sqrt(a^2*c + d)))))/(2*sqrt(-c)*sqrt(d)) - (im*PolyLog(2, (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) - im*sqrt(a^2*c + d))))/(2*sqrt(-c)*sqrt(d)) + (im*PolyLog(2, -((sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) + im*sqrt(a^2*c + d)))))/(2*sqrt(-c)*sqrt(d)) - (im*PolyLog(2, (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) + im*sqrt(a^2*c + d))))/(2*sqrt(-c)*sqrt(d))]


    @test_int [acos(a*x)/(c + d*x^2)^2, x, 26, -(acos(a*x)/(4*c*sqrt(d)*(sqrt(-c) - sqrt(d)*x))) + acos(a*x)/(4*c*sqrt(d)*(sqrt(-c) + sqrt(d)*x)) - (a*atanh((sqrt(d) - a^2*sqrt(-c)*x)/(sqrt(a^2*c + d)*sqrt(1 - a^2*x^2))))/(4*c*sqrt(d)*sqrt(a^2*c + d)) - (a*atanh((sqrt(d) + a^2*sqrt(-c)*x)/(sqrt(a^2*c + d)*sqrt(1 - a^2*x^2))))/(4*c*sqrt(d)*sqrt(a^2*c + d)) - (acos(a*x)*log(1 - (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) - im*sqrt(a^2*c + d))))/(4*(-c)^(3/2)*sqrt(d)) + (acos(a*x)*log(1 + (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) - im*sqrt(a^2*c + d))))/(4*(-c)^(3/2)*sqrt(d)) - (acos(a*x)*log(1 - (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) + im*sqrt(a^2*c + d))))/(4*(-c)^(3/2)*sqrt(d)) + (acos(a*x)*log(1 + (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) + im*sqrt(a^2*c + d))))/(4*(-c)^(3/2)*sqrt(d)) - (im*PolyLog(2, -((sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) - im*sqrt(a^2*c + d)))))/(4*(-c)^(3/2)*sqrt(d)) + (im*PolyLog(2, (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) - im*sqrt(a^2*c + d))))/(4*(-c)^(3/2)*sqrt(d)) - (im*PolyLog(2, -((sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) + im*sqrt(a^2*c + d)))))/(4*(-c)^(3/2)*sqrt(d)) + (im*PolyLog(2, (sqrt(d)*ℯ^(im*acos(a*x)))/(a*sqrt(-c) + im*sqrt(a^2*c + d))))/(4*(-c)^(3/2)*sqrt(d))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d+e*x^2)^(p/2)*(a+b*acos(c*x))^1=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [acos(a*x)*(c + d*x^2)^(1/2), x, 0, Unintegrable(sqrt(c + d*x^2)*acos(a*x), x)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [acos(a*x)/(c + d*x^2)^(1/2), x, 0, Unintegrable(acos(a*x)/sqrt(c + d*x^2), x)]


    @test_int [acos(a*x)/(c + d*x^2)^(3/2), x, 6, (x*acos(a*x))/(c*sqrt(c + d*x^2)) - atan((sqrt(d)*sqrt(1 - a^2*x^2))/(a*sqrt(c + d*x^2)))/(c*sqrt(d))]


    @test_int [acos(a*x)/(c + d*x^2)^(5/2), x, 7, -((a*sqrt(1 - a^2*x^2))/(3*c*(a^2*c + d)*sqrt(c + d*x^2))) + (x*acos(a*x))/(3*c*(c + d*x^2)^(3/2)) + (2*x*acos(a*x))/(3*c^2*sqrt(c + d*x^2)) - (2*atan((sqrt(d)*sqrt(1 - a^2*x^2))/(a*sqrt(c + d*x^2))))/(3*c^2*sqrt(d))]


    @test_int [acos(a*x)/(c + d*x^2)^(7/2), x, 8, -((a*sqrt(1 - a^2*x^2))/(15*c*(a^2*c + d)*(c + d*x^2)^(3/2))) - (2*a*(3*a^2*c + 2*d)*sqrt(1 - a^2*x^2))/(15*c^2*(a^2*c + d)^2*sqrt(c + d*x^2)) + (x*acos(a*x))/(5*c*(c + d*x^2)^(5/2)) + (4*x*acos(a*x))/(15*c^2*(c + d*x^2)^(3/2)) + (8*x*acos(a*x))/(15*c^3*sqrt(c + d*x^2)) - (8*atan((sqrt(d)*sqrt(1 - a^2*x^2))/(a*sqrt(c + d*x^2))))/(15*c^3*sqrt(d))]
    end
