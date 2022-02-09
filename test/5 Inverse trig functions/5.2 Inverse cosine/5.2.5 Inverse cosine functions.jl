@testset "5.2.5 Inverse cosine functions" begin
    (a, b, c, d, f, g, h, m, n, x, ) = @variables a b c d f g h m n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*u*(a+b*acos(c*x))^n=#


    #= ::Section:: =#
    #=Integrands*of*the*form*(d+e*x)^m*(a+b*acos(c*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(f+g*x)^m*(d+e*x^2)^p*(a+b*acos(c*x))^n*where*c^2*d+e=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(f+g*x)^m*(d-c^2*d*x^2)^(p/2)*(a+b*acos(c*x))^1=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))*(f + g*x)^3, x, 16, -((b*f^2*g*x*sqrt(d - c^2*d*x^2))/(c*sqrt(1 - c^2*x^2))) - (2*b*g^3*x*sqrt(d - c^2*d*x^2))/(15*c^3*sqrt(1 - c^2*x^2)) + (b*c*f^3*x^2*sqrt(d - c^2*d*x^2))/(4*sqrt(1 - c^2*x^2)) - (3*b*f*g^2*x^2*sqrt(d - c^2*d*x^2))/(16*c*sqrt(1 - c^2*x^2)) + (b*c*f^2*g*x^3*sqrt(d - c^2*d*x^2))/(3*sqrt(1 - c^2*x^2)) - (b*g^3*x^3*sqrt(d - c^2*d*x^2))/(45*c*sqrt(1 - c^2*x^2)) + (3*b*c*f*g^2*x^4*sqrt(d - c^2*d*x^2))/(16*sqrt(1 - c^2*x^2)) + (b*c*g^3*x^5*sqrt(d - c^2*d*x^2))/(25*sqrt(1 - c^2*x^2)) + (1/2)*f^3*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (3*f*g^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(8*c^2) + (3/4)*f*g^2*x^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (f^2*g*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/c^2 - (g^3*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(3*c^4) + (g^3*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(5*c^4) - (f^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(4*b*c*sqrt(1 - c^2*x^2)) - (3*f*g^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(16*b*c^3*sqrt(1 - c^2*x^2))]
    @test_int [sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))*(f + g*x)^2, x, 13, -((2*b*f*g*x*sqrt(d - c^2*d*x^2))/(3*c*sqrt(1 - c^2*x^2))) + (b*c*f^2*x^2*sqrt(d - c^2*d*x^2))/(4*sqrt(1 - c^2*x^2)) - (b*g^2*x^2*sqrt(d - c^2*d*x^2))/(16*c*sqrt(1 - c^2*x^2)) + (2*b*c*f*g*x^3*sqrt(d - c^2*d*x^2))/(9*sqrt(1 - c^2*x^2)) + (b*c*g^2*x^4*sqrt(d - c^2*d*x^2))/(16*sqrt(1 - c^2*x^2)) + (1/2)*f^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (g^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(8*c^2) + (1/4)*g^2*x^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (2*f*g*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(3*c^2) - (f^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(4*b*c*sqrt(1 - c^2*x^2)) - (g^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(16*b*c^3*sqrt(1 - c^2*x^2))]
    @test_int [sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))*(f + g*x)^1, x, 8, -((b*g*x*sqrt(d - c^2*d*x^2))/(3*c*sqrt(1 - c^2*x^2))) + (b*c*f*x^2*sqrt(d - c^2*d*x^2))/(4*sqrt(1 - c^2*x^2)) + (b*c*g*x^3*sqrt(d - c^2*d*x^2))/(9*sqrt(1 - c^2*x^2)) + (1/2)*f*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (g*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(3*c^2) - (f*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(4*b*c*sqrt(1 - c^2*x^2))]
    @test_int [sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))/(f + g*x)^1, x, 22, (a*sqrt(d - c^2*d*x^2))/g + (b*c*x*sqrt(d - c^2*d*x^2))/(g*sqrt(1 - c^2*x^2)) + (b*sqrt(d - c^2*d*x^2)*acos(c*x))/g - (c*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*g*sqrt(1 - c^2*x^2)) + ((1 - (c^2*f^2)/g^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*(f + g*x)*sqrt(1 - c^2*x^2)) - (sqrt(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*(f + g*x)) - (a*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*atan((g + c^2*f*x)/(sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2))))/(g^2*sqrt(1 - c^2*x^2)) - (im*b*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(g^2*sqrt(1 - c^2*x^2)) + (im*b*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(g^2*sqrt(1 - c^2*x^2)) - (b*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/(g^2*sqrt(1 - c^2*x^2)) + (b*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/(g^2*sqrt(1 - c^2*x^2))]
    @test_int [sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))/(f + g*x)^2, x, 35, -((a*sqrt(d - c^2*d*x^2))/(g*(f + g*x))) - (b*sqrt(d - c^2*d*x^2)*acos(c*x))/(g*(f + g*x)) + (b*c^3*f^2*sqrt(d - c^2*d*x^2)*acos(c*x)^2)/(2*g^2*(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2)) - ((g + c^2*f*x)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*(c^2*f^2 - g^2)*(f + g*x)^2*sqrt(1 - c^2*x^2)) - (sqrt(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*(f + g*x)^2) - (a*c^3*f^2*sqrt(d - c^2*d*x^2)*asin(c*x))/(g^2*(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2)) + (a*c^2*f*sqrt(d - c^2*d*x^2)*atan((g + c^2*f*x)/(sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2))))/(g^2*sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2)) + (im*b*c^2*f*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(g^2*sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2)) - (im*b*c^2*f*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(g^2*sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2)) - (b*c*sqrt(d - c^2*d*x^2)*log(f + g*x))/(g^2*sqrt(1 - c^2*x^2)) + (b*c^2*f*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/(g^2*sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2)) - (b*c^2*f*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/(g^2*sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2))]


    @test_int [(d - c^2*d*x^2)^(3/2)*(a + b*acos(c*x))*(f + g*x)^3, x, 24, -((3*b*d*f^2*g*x*sqrt(d - c^2*d*x^2))/(5*c*sqrt(1 - c^2*x^2))) - (2*b*d*g^3*x*sqrt(d - c^2*d*x^2))/(35*c^3*sqrt(1 - c^2*x^2)) + (5*b*c*d*f^3*x^2*sqrt(d - c^2*d*x^2))/(16*sqrt(1 - c^2*x^2)) - (3*b*d*f*g^2*x^2*sqrt(d - c^2*d*x^2))/(32*c*sqrt(1 - c^2*x^2)) + (2*b*c*d*f^2*g*x^3*sqrt(d - c^2*d*x^2))/(5*sqrt(1 - c^2*x^2)) - (b*d*g^3*x^3*sqrt(d - c^2*d*x^2))/(105*c*sqrt(1 - c^2*x^2)) - (b*c^3*d*f^3*x^4*sqrt(d - c^2*d*x^2))/(16*sqrt(1 - c^2*x^2)) + (7*b*c*d*f*g^2*x^4*sqrt(d - c^2*d*x^2))/(32*sqrt(1 - c^2*x^2)) - (3*b*c^3*d*f^2*g*x^5*sqrt(d - c^2*d*x^2))/(25*sqrt(1 - c^2*x^2)) + (8*b*c*d*g^3*x^5*sqrt(d - c^2*d*x^2))/(175*sqrt(1 - c^2*x^2)) - (b*c^3*d*f*g^2*x^6*sqrt(d - c^2*d*x^2))/(12*sqrt(1 - c^2*x^2)) - (b*c^3*d*g^3*x^7*sqrt(d - c^2*d*x^2))/(49*sqrt(1 - c^2*x^2)) + (3/8)*d*f^3*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (3*d*f*g^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(16*c^2) + (3/8)*d*f*g^2*x^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (1/4)*d*f^3*x*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (1/2)*d*f*g^2*x^3*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (3*d*f^2*g*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(5*c^2) - (d*g^3*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(5*c^4) + (d*g^3*(1 - c^2*x^2)^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(7*c^4) - (3*d*f^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(16*b*c*sqrt(1 - c^2*x^2)) - (3*d*f*g^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(32*b*c^3*sqrt(1 - c^2*x^2))]
    @test_int [(d - c^2*d*x^2)^(3/2)*(a + b*acos(c*x))*(f + g*x)^2, x, 20, -((2*b*d*f*g*x*sqrt(d - c^2*d*x^2))/(5*c*sqrt(1 - c^2*x^2))) + (5*b*c*d*f^2*x^2*sqrt(d - c^2*d*x^2))/(16*sqrt(1 - c^2*x^2)) - (b*d*g^2*x^2*sqrt(d - c^2*d*x^2))/(32*c*sqrt(1 - c^2*x^2)) + (4*b*c*d*f*g*x^3*sqrt(d - c^2*d*x^2))/(15*sqrt(1 - c^2*x^2)) - (b*c^3*d*f^2*x^4*sqrt(d - c^2*d*x^2))/(16*sqrt(1 - c^2*x^2)) + (7*b*c*d*g^2*x^4*sqrt(d - c^2*d*x^2))/(96*sqrt(1 - c^2*x^2)) - (2*b*c^3*d*f*g*x^5*sqrt(d - c^2*d*x^2))/(25*sqrt(1 - c^2*x^2)) - (b*c^3*d*g^2*x^6*sqrt(d - c^2*d*x^2))/(36*sqrt(1 - c^2*x^2)) + (3/8)*d*f^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (d*g^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(16*c^2) + (1/8)*d*g^2*x^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (1/4)*d*f^2*x*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (1/6)*d*g^2*x^3*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (2*d*f*g*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(5*c^2) - (3*d*f^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(16*b*c*sqrt(1 - c^2*x^2)) - (d*g^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(32*b*c^3*sqrt(1 - c^2*x^2))]
    @test_int [(d - c^2*d*x^2)^(3/2)*(a + b*acos(c*x))*(f + g*x)^1, x, 12, -((b*d*g*x*sqrt(d - c^2*d*x^2))/(5*c*sqrt(1 - c^2*x^2))) + (5*b*c*d*f*x^2*sqrt(d - c^2*d*x^2))/(16*sqrt(1 - c^2*x^2)) + (2*b*c*d*g*x^3*sqrt(d - c^2*d*x^2))/(15*sqrt(1 - c^2*x^2)) - (b*c^3*d*f*x^4*sqrt(d - c^2*d*x^2))/(16*sqrt(1 - c^2*x^2)) - (b*c^3*d*g*x^5*sqrt(d - c^2*d*x^2))/(25*sqrt(1 - c^2*x^2)) + (3/8)*d*f*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (1/4)*d*f*x*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (d*g*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(5*c^2) - (3*d*f*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(16*b*c*sqrt(1 - c^2*x^2))]
    @test_int [(d - c^2*d*x^2)^(3/2)*(a + b*acos(c*x))/(f + g*x)^1, x, 29, -((a*d*(c*f - g)*(c*f + g)*sqrt(d - c^2*d*x^2))/g^3) + (b*c*d*x*sqrt(d - c^2*d*x^2))/(3*g*sqrt(1 - c^2*x^2)) - (b*c*d*(c*f - g)*(c*f + g)*x*sqrt(d - c^2*d*x^2))/(g^3*sqrt(1 - c^2*x^2)) + (b*c^3*d*f*x^2*sqrt(d - c^2*d*x^2))/(4*g^2*sqrt(1 - c^2*x^2)) - (b*c^3*d*x^3*sqrt(d - c^2*d*x^2))/(9*g*sqrt(1 - c^2*x^2)) - (b*d*(c*f - g)*(c*f + g)*sqrt(d - c^2*d*x^2)*acos(c*x))/g^3 + (c^2*d*f*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(2*g^2) + (d*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(3*g) - (c*d*f*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(4*b*g^2*sqrt(1 - c^2*x^2)) + (c*d*(c*f - g)*(c*f + g)*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*g^3*sqrt(1 - c^2*x^2)) + (d*(c^2*f^2 - g^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*g^4*(f + g*x)*sqrt(1 - c^2*x^2)) + (d*(c*f - g)*(c*f + g)*sqrt(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*g^2*(f + g*x)) + (a*d*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*atan((g + c^2*f*x)/(sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2))))/(g^4*sqrt(1 - c^2*x^2)) + (im*b*d*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(g^4*sqrt(1 - c^2*x^2)) - (im*b*d*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(g^4*sqrt(1 - c^2*x^2)) + (b*d*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/(g^4*sqrt(1 - c^2*x^2)) - (b*d*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/(g^4*sqrt(1 - c^2*x^2))]
    #= [(d - c^2*d*x^2)^(3/2)*(a + b*acos(c*x))/(f + g*x)^2, x, 71, (2*a*c^2*d*f*sqrt(d - c^2*d*x^2))/g^3 + (a*d*(c*f - g)*(c*f + g)*sqrt(d - c^2*d*x^2))/(g^3*(f + g*x)) + (2*b*c^3*d*f*x*sqrt(d - c^2*d*x^2))/(g^3*sqrt(1 - c^2*x^2)) - (b*c^3*d*x^2*sqrt(d - c^2*d*x^2))/(4*g^2*sqrt(1 - c^2*x^2)) + (2*b*c^2*d*f*sqrt(d - c^2*d*x^2)*acos(c*x))/g^3 + (b*d*(c*f - g)*(c*f + g)*sqrt(d - c^2*d*x^2)*acos(c*x))/(g^3*(f + g*x)) - (b*c^3*d*f^2*sqrt(d - c^2*d*x^2)*acos(c*x)^2)/(2*g^4*sqrt(1 - c^2*x^2)) - (c^2*d*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(2*g^2) + (c*d*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(4*b*g^2*sqrt(1 - c^2*x^2)) - (c^3*d*f*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(b*g^3*sqrt(1 - c^2*x^2)) + (d*(g + c^2*f*x)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*g^2*(f + g*x)^2*sqrt(1 - c^2*x^2)) + (c*d*f*(1 - (c^2*f^2)/g^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(b*g^2*(f + g*x)*sqrt(1 - c^2*x^2)) + (d*(c*f - g)*(c*f + g)*sqrt(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*g^2*(f + g*x)^2) - (c*d*f*sqrt(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(b*g^2*(f + g*x)) + (a*c^3*d*f^2*sqrt(d - c^2*d*x^2)*asin(c*x))/(g^4*sqrt(1 - c^2*x^2)) - (3*a*c^2*d*f*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*atan((g + c^2*f*x)/(sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2))))/(g^4*sqrt(1 - c^2*x^2)) - (3*im*b*c^2*d*f*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(g^4*sqrt(1 - c^2*x^2)) + (3*im*b*c^2*d*f*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(g^4*sqrt(1 - c^2*x^2)) + (b*c*d*(c*f - g)*(c*f + g)*sqrt(d - c^2*d*x^2)*log(f + g*x))/(g^4*sqrt(1 - c^2*x^2)) - (3*b*c^2*d*f*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/(g^4*sqrt(1 - c^2*x^2)) + (3*b*c^2*d*f*sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/(g^4*sqrt(1 - c^2*x^2))] =#


    @test_int [(d - c^2*d*x^2)^(5/2)*(a + b*acos(c*x))*(f + g*x)^3, x, 30, -((3*b*d^2*f^2*g*x*sqrt(d - c^2*d*x^2))/(7*c*sqrt(1 - c^2*x^2))) - (2*b*d^2*g^3*x*sqrt(d - c^2*d*x^2))/(63*c^3*sqrt(1 - c^2*x^2)) + (25*b*c*d^2*f^3*x^2*sqrt(d - c^2*d*x^2))/(96*sqrt(1 - c^2*x^2)) - (15*b*d^2*f*g^2*x^2*sqrt(d - c^2*d*x^2))/(256*c*sqrt(1 - c^2*x^2)) + (3*b*c*d^2*f^2*g*x^3*sqrt(d - c^2*d*x^2))/(7*sqrt(1 - c^2*x^2)) - (b*d^2*g^3*x^3*sqrt(d - c^2*d*x^2))/(189*c*sqrt(1 - c^2*x^2)) - (5*b*c^3*d^2*f^3*x^4*sqrt(d - c^2*d*x^2))/(96*sqrt(1 - c^2*x^2)) + (59*b*c*d^2*f*g^2*x^4*sqrt(d - c^2*d*x^2))/(256*sqrt(1 - c^2*x^2)) - (9*b*c^3*d^2*f^2*g*x^5*sqrt(d - c^2*d*x^2))/(35*sqrt(1 - c^2*x^2)) + (b*c*d^2*g^3*x^5*sqrt(d - c^2*d*x^2))/(21*sqrt(1 - c^2*x^2)) - (17*b*c^3*d^2*f*g^2*x^6*sqrt(d - c^2*d*x^2))/(96*sqrt(1 - c^2*x^2)) + (3*b*c^5*d^2*f^2*g*x^7*sqrt(d - c^2*d*x^2))/(49*sqrt(1 - c^2*x^2)) - (19*b*c^3*d^2*g^3*x^7*sqrt(d - c^2*d*x^2))/(441*sqrt(1 - c^2*x^2)) + (3*b*c^5*d^2*f*g^2*x^8*sqrt(d - c^2*d*x^2))/(64*sqrt(1 - c^2*x^2)) + (b*c^5*d^2*g^3*x^9*sqrt(d - c^2*d*x^2))/(81*sqrt(1 - c^2*x^2)) - (b*d^2*f^3*(1 - c^2*x^2)^(5/2)*sqrt(d - c^2*d*x^2))/(36*c) + (5/16)*d^2*f^3*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (15*d^2*f*g^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(128*c^2) + (15/64)*d^2*f*g^2*x^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (5/24)*d^2*f^3*x*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (5/16)*d^2*f*g^2*x^3*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (1/6)*d^2*f^3*x*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (3/8)*d^2*f*g^2*x^3*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (3*d^2*f^2*g*(1 - c^2*x^2)^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(7*c^2) - (d^2*g^3*(1 - c^2*x^2)^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(7*c^4) + (d^2*g^3*(1 - c^2*x^2)^4*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(9*c^4) - (5*d^2*f^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(32*b*c*sqrt(1 - c^2*x^2)) - (15*d^2*f*g^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(256*b*c^3*sqrt(1 - c^2*x^2))]
    @test_int [(d - c^2*d*x^2)^(5/2)*(a + b*acos(c*x))*(f + g*x)^2, x, 26, -((2*b*d^2*f*g*x*sqrt(d - c^2*d*x^2))/(7*c*sqrt(1 - c^2*x^2))) + (25*b*c*d^2*f^2*x^2*sqrt(d - c^2*d*x^2))/(96*sqrt(1 - c^2*x^2)) - (5*b*d^2*g^2*x^2*sqrt(d - c^2*d*x^2))/(256*c*sqrt(1 - c^2*x^2)) + (2*b*c*d^2*f*g*x^3*sqrt(d - c^2*d*x^2))/(7*sqrt(1 - c^2*x^2)) - (5*b*c^3*d^2*f^2*x^4*sqrt(d - c^2*d*x^2))/(96*sqrt(1 - c^2*x^2)) + (59*b*c*d^2*g^2*x^4*sqrt(d - c^2*d*x^2))/(768*sqrt(1 - c^2*x^2)) - (6*b*c^3*d^2*f*g*x^5*sqrt(d - c^2*d*x^2))/(35*sqrt(1 - c^2*x^2)) - (17*b*c^3*d^2*g^2*x^6*sqrt(d - c^2*d*x^2))/(288*sqrt(1 - c^2*x^2)) + (2*b*c^5*d^2*f*g*x^7*sqrt(d - c^2*d*x^2))/(49*sqrt(1 - c^2*x^2)) + (b*c^5*d^2*g^2*x^8*sqrt(d - c^2*d*x^2))/(64*sqrt(1 - c^2*x^2)) - (b*d^2*f^2*(1 - c^2*x^2)^(5/2)*sqrt(d - c^2*d*x^2))/(36*c) + (5/16)*d^2*f^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (5*d^2*g^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(128*c^2) + (5/64)*d^2*g^2*x^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (5/24)*d^2*f^2*x*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (5/48)*d^2*g^2*x^3*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (1/6)*d^2*f^2*x*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (1/8)*d^2*g^2*x^3*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (2*d^2*f*g*(1 - c^2*x^2)^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(7*c^2) - (5*d^2*f^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(32*b*c*sqrt(1 - c^2*x^2)) - (5*d^2*g^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(256*b*c^3*sqrt(1 - c^2*x^2))]
    @test_int [(d - c^2*d*x^2)^(5/2)*(a + b*acos(c*x))*(f + g*x)^1, x, 14, -((b*d^2*g*x*sqrt(d - c^2*d*x^2))/(7*c*sqrt(1 - c^2*x^2))) + (25*b*c*d^2*f*x^2*sqrt(d - c^2*d*x^2))/(96*sqrt(1 - c^2*x^2)) + (b*c*d^2*g*x^3*sqrt(d - c^2*d*x^2))/(7*sqrt(1 - c^2*x^2)) - (5*b*c^3*d^2*f*x^4*sqrt(d - c^2*d*x^2))/(96*sqrt(1 - c^2*x^2)) - (3*b*c^3*d^2*g*x^5*sqrt(d - c^2*d*x^2))/(35*sqrt(1 - c^2*x^2)) + (b*c^5*d^2*g*x^7*sqrt(d - c^2*d*x^2))/(49*sqrt(1 - c^2*x^2)) - (b*d^2*f*(1 - c^2*x^2)^(5/2)*sqrt(d - c^2*d*x^2))/(36*c) + (5/16)*d^2*f*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (5/24)*d^2*f*x*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) + (1/6)*d^2*f*x*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)) - (d^2*g*(1 - c^2*x^2)^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(7*c^2) - (5*d^2*f*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(32*b*c*sqrt(1 - c^2*x^2))]
    @test_int [(d - c^2*d*x^2)^(5/2)*(a + b*acos(c*x))/(f + g*x)^1, x, 37, (a*d^2*(c^2*f^2 - g^2)^2*sqrt(d - c^2*d*x^2))/g^5 - (2*b*c*d^2*x*sqrt(d - c^2*d*x^2))/(15*g*sqrt(1 - c^2*x^2)) - (b*c*d^2*(c^2*f^2 - 2*g^2)*x*sqrt(d - c^2*d*x^2))/(3*g^3*sqrt(1 - c^2*x^2)) + (b*c*d^2*(c^2*f^2 - g^2)^2*x*sqrt(d - c^2*d*x^2))/(g^5*sqrt(1 - c^2*x^2)) + (b*c^3*d^2*f*x^2*sqrt(d - c^2*d*x^2))/(16*g^2*sqrt(1 - c^2*x^2)) - (b*c^3*d^2*f*(c^2*f^2 - 2*g^2)*x^2*sqrt(d - c^2*d*x^2))/(4*g^4*sqrt(1 - c^2*x^2)) - (b*c^3*d^2*x^3*sqrt(d - c^2*d*x^2))/(45*g*sqrt(1 - c^2*x^2)) + (b*c^3*d^2*(c^2*f^2 - 2*g^2)*x^3*sqrt(d - c^2*d*x^2))/(9*g^3*sqrt(1 - c^2*x^2)) - (b*c^5*d^2*f*x^4*sqrt(d - c^2*d*x^2))/(16*g^2*sqrt(1 - c^2*x^2)) + (b*c^5*d^2*x^5*sqrt(d - c^2*d*x^2))/(25*g*sqrt(1 - c^2*x^2)) + (b*d^2*(c^2*f^2 - g^2)^2*sqrt(d - c^2*d*x^2)*acos(c*x))/g^5 + (c^2*d^2*f*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(8*g^2) - (c^2*d^2*f*(c^2*f^2 - 2*g^2)*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(2*g^4) - (c^4*d^2*f*x^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(4*g^2) - (d^2*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(3*g) - (d^2*(c^2*f^2 - 2*g^2)*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(3*g^3) + (d^2*(1 - c^2*x^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(5*g) + (c*d^2*f*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(16*b*g^2*sqrt(1 - c^2*x^2)) + (c*d^2*f*(c^2*f^2 - 2*g^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(4*b*g^4*sqrt(1 - c^2*x^2)) - (c*d^2*(c^2*f^2 - g^2)^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*g^5*sqrt(1 - c^2*x^2)) - (d^2*(c^2*f^2 - g^2)^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*g^6*(f + g*x)*sqrt(1 - c^2*x^2)) - (d^2*(c^2*f^2 - g^2)^2*sqrt(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*g^4*(f + g*x)) - (a*d^2*(c^2*f^2 - g^2)^(5/2)*sqrt(d - c^2*d*x^2)*atan((g + c^2*f*x)/(sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2))))/(g^6*sqrt(1 - c^2*x^2)) - (im*b*d^2*(c^2*f^2 - g^2)^(5/2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(g^6*sqrt(1 - c^2*x^2)) + (im*b*d^2*(c^2*f^2 - g^2)^(5/2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(g^6*sqrt(1 - c^2*x^2)) - (b*d^2*(c^2*f^2 - g^2)^(5/2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/(g^6*sqrt(1 - c^2*x^2)) + (b*d^2*(c^2*f^2 - g^2)^(5/2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/(g^6*sqrt(1 - c^2*x^2))]
    #= [(d - c^2*d*x^2)^(5/2)*(a + b*acos(c*x))/(f + g*x)^2, x, 78, -((4*a*c^2*d^2*f*(c*f - g)*(c*f + g)*sqrt(d - c^2*d*x^2))/g^5) - (a*d^2*(c^2*f^2 - g^2)^2*sqrt(d - c^2*d*x^2))/(g^5*(f + g*x)) + (2*b*c^3*d^2*f*x*sqrt(d - c^2*d*x^2))/(3*g^3*sqrt(1 - c^2*x^2)) - (4*b*c^3*d^2*f*(c*f - g)*(c*f + g)*x*sqrt(d - c^2*d*x^2))/(g^5*sqrt(1 - c^2*x^2)) - (b*c^3*d^2*x^2*sqrt(d - c^2*d*x^2))/(16*g^2*sqrt(1 - c^2*x^2)) + (b*c^3*d^2*(3*c^2*f^2 - 2*g^2)*x^2*sqrt(d - c^2*d*x^2))/(4*g^4*sqrt(1 - c^2*x^2)) - (2*b*c^5*d^2*f*x^3*sqrt(d - c^2*d*x^2))/(9*g^3*sqrt(1 - c^2*x^2)) + (b*c^5*d^2*x^4*sqrt(d - c^2*d*x^2))/(16*g^2*sqrt(1 - c^2*x^2)) - (4*b*c^2*d^2*f*(c*f - g)*(c*f + g)*sqrt(d - c^2*d*x^2)*acos(c*x))/g^5 - (b*d^2*(c^2*f^2 - g^2)^2*sqrt(d - c^2*d*x^2)*acos(c*x))/(g^5*(f + g*x)) + (b*c^3*d^2*f^2*(c*f - g)*(c*f + g)*sqrt(d - c^2*d*x^2)*acos(c*x)^2)/(2*g^6*sqrt(1 - c^2*x^2)) - (c^2*d^2*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(8*g^2) + (c^2*d^2*(3*c^2*f^2 - 2*g^2)*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(2*g^4) + (c^4*d^2*x^3*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(4*g^2) + (2*c^2*d^2*f*(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x)))/(3*g^3) - (c*d^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(16*b*g^2*sqrt(1 - c^2*x^2)) - (c*d^2*(3*c^2*f^2 - 2*g^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(4*b*g^4*sqrt(1 - c^2*x^2)) + (2*c^3*d^2*f*(c*f - g)*(c*f + g)*x*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(b*g^5*sqrt(1 - c^2*x^2)) - (d^2*(c*f - g)*(c*f + g)*(g + c^2*f*x)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*g^4*(f + g*x)^2*sqrt(1 - c^2*x^2)) + (2*c*d^2*f*(c^2*f^2 - g^2)^2*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(b*g^6*(f + g*x)*sqrt(1 - c^2*x^2)) - (d^2*(c^2*f^2 - g^2)^2*sqrt(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(2*b*c*g^4*(f + g*x)^2) + (2*c*d^2*f*(c*f - g)*(c*f + g)*sqrt(1 - c^2*x^2)*sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))^2)/(b*g^4*(f + g*x)) - (a*c^3*d^2*f^2*(c*f - g)*(c*f + g)*sqrt(d - c^2*d*x^2)*asin(c*x))/(g^6*sqrt(1 - c^2*x^2)) + (5*a*c^2*d^2*f*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*atan((g + c^2*f*x)/(sqrt(c^2*f^2 - g^2)*sqrt(1 - c^2*x^2))))/(g^6*sqrt(1 - c^2*x^2)) + (5*im*b*c^2*d^2*f*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(g^6*sqrt(1 - c^2*x^2)) - (5*im*b*c^2*d^2*f*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*acos(c*x)*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(g^6*sqrt(1 - c^2*x^2)) - (b*c*d^2*(c^2*f^2 - g^2)^2*sqrt(d - c^2*d*x^2)*log(f + g*x))/(g^6*sqrt(1 - c^2*x^2)) + (5*b*c^2*d^2*f*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/(g^6*sqrt(1 - c^2*x^2)) - (5*b*c^2*d^2*f*(c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/(g^6*sqrt(1 - c^2*x^2))] =#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))*(f + g*x)^3, x, 13, -((3*b*f^2*g*x*sqrt(1 - c^2*x^2))/(c*sqrt(d - c^2*d*x^2))) - (2*b*g^3*x*sqrt(1 - c^2*x^2))/(3*c^3*sqrt(d - c^2*d*x^2)) - (3*b*f*g^2*x^2*sqrt(1 - c^2*x^2))/(4*c*sqrt(d - c^2*d*x^2)) - (b*g^3*x^3*sqrt(1 - c^2*x^2))/(9*c*sqrt(d - c^2*d*x^2)) - (3*f^2*g*(1 - c^2*x^2)*(a + b*acos(c*x)))/(c^2*sqrt(d - c^2*d*x^2)) - (2*g^3*(1 - c^2*x^2)*(a + b*acos(c*x)))/(3*c^4*sqrt(d - c^2*d*x^2)) - (3*f*g^2*x*(1 - c^2*x^2)*(a + b*acos(c*x)))/(2*c^2*sqrt(d - c^2*d*x^2)) - (g^3*x^2*(1 - c^2*x^2)*(a + b*acos(c*x)))/(3*c^2*sqrt(d - c^2*d*x^2)) - (f^3*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^2)/(2*b*c*sqrt(d - c^2*d*x^2)) - (3*f*g^2*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^2)/(4*b*c^3*sqrt(d - c^2*d*x^2))]
    @test_int [1/sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))*(f + g*x)^2, x, 9, -((2*b*f*g*x*sqrt(1 - c^2*x^2))/(c*sqrt(d - c^2*d*x^2))) - (b*g^2*x^2*sqrt(1 - c^2*x^2))/(4*c*sqrt(d - c^2*d*x^2)) - (2*f*g*(1 - c^2*x^2)*(a + b*acos(c*x)))/(c^2*sqrt(d - c^2*d*x^2)) - (g^2*x*(1 - c^2*x^2)*(a + b*acos(c*x)))/(2*c^2*sqrt(d - c^2*d*x^2)) - (f^2*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^2)/(2*b*c*sqrt(d - c^2*d*x^2)) - (g^2*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^2)/(4*b*c^3*sqrt(d - c^2*d*x^2))]
    @test_int [1/sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))*(f + g*x)^1, x, 6, -((b*g*x*sqrt(1 - c^2*x^2))/(c*sqrt(d - c^2*d*x^2))) - (g*(1 - c^2*x^2)*(a + b*acos(c*x)))/(c^2*sqrt(d - c^2*d*x^2)) - (f*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))^2)/(2*b*c*sqrt(d - c^2*d*x^2))]
    @test_int [1/sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))/(f + g*x)^1, x, 10, (im*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)) - (im*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)) + (b*sqrt(1 - c^2*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/(sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)) - (b*sqrt(1 - c^2*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/(sqrt(c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2))]
    @test_int [1/sqrt(d - c^2*d*x^2)*(a + b*acos(c*x))/(f + g*x)^2, x, 13, (g*(1 - c^2*x^2)*(a + b*acos(c*x)))/((c^2*f^2 - g^2)*(f + g*x)*sqrt(d - c^2*d*x^2)) + (im*c^2*f*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/((c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)) - (im*c^2*f*sqrt(1 - c^2*x^2)*(a + b*acos(c*x))*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/((c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)) + (b*c*sqrt(1 - c^2*x^2)*log(f + g*x))/((c^2*f^2 - g^2)*sqrt(d - c^2*d*x^2)) + (b*c^2*f*sqrt(1 - c^2*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/((c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2)) - (b*c^2*f*sqrt(1 - c^2*x^2)*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/((c^2*f^2 - g^2)^(3/2)*sqrt(d - c^2*d*x^2))]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(f+g*x)^m*(d-c^2*d*x^2)^(p/2)*(a+b*acos(c*x))^2=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*log(h*(f + g*x)^m)*(d+e*x^2)^p*(a+b*acos(c*x))^n*where*c^2*d+e=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*log(h*(f + g*x)^m)*(d-c^2*d*x^2)^(p/2)*(a+b*acos(c*x))^n=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [log(h*(f + g*x)^m)*(a + b*acos(c*x))^n/sqrt(1 - c^2*x^2), x, 0, Unintegrable(((a + b*acos(c*x))^n*log(h*(f + g*x)^m))/sqrt(1 - c^2*x^2), x)]

    #= [log(h*(f + g*x)^m)*(a + b*acos(c*x))^3/sqrt(1 - c^2*x^2), x, 18, -((im*m*(a + b*acos(c*x))^5)/(20*b^2*c)) + (m*(a + b*acos(c*x))^4*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(4*b*c) + (m*(a + b*acos(c*x))^4*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(4*b*c) - ((a + b*acos(c*x))^4*log(h*(f + g*x)^m))/(4*b*c) - (im*m*(a + b*acos(c*x))^3*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/c - (im*m*(a + b*acos(c*x))^3*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/c + (3*b*m*(a + b*acos(c*x))^2*PolyLog(3, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/c + (3*b*m*(a + b*acos(c*x))^2*PolyLog(3, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/c + (6*im*b^2*m*(a + b*acos(c*x))*PolyLog(4, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/c + (6*im*b^2*m*(a + b*acos(c*x))*PolyLog(4, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/c - (6*b^3*m*PolyLog(5, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/c - (6*b^3*m*PolyLog(5, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/c] =#
    @test_int [log(h*(f + g*x)^m)*(a + b*acos(c*x))^2/sqrt(1 - c^2*x^2), x, 13, -((im*m*(a + b*acos(c*x))^4)/(12*b^2*c)) + (m*(a + b*acos(c*x))^3*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(3*b*c) + (m*(a + b*acos(c*x))^3*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(3*b*c) - ((a + b*acos(c*x))^3*log(h*(f + g*x)^m))/(3*b*c) - (im*m*(a + b*acos(c*x))^2*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/c - (im*m*(a + b*acos(c*x))^2*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/c + (2*b*m*(a + b*acos(c*x))*PolyLog(3, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/c + (2*b*m*(a + b*acos(c*x))*PolyLog(3, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/c + (2*im*b^2*m*PolyLog(4, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/c + (2*im*b^2*m*PolyLog(4, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/c]
    @test_int [log(h*(f + g*x)^m)*(a + b*acos(c*x))^1/sqrt(1 - c^2*x^2), x, 11, -((im*m*(a + b*acos(c*x))^3)/(6*b^2*c)) + (m*(a + b*acos(c*x))^2*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/(2*b*c) + (m*(a + b*acos(c*x))^2*log(1 + (ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/(2*b*c) - ((a + b*acos(c*x))^2*log(h*(f + g*x)^m))/(2*b*c) - (im*m*(a + b*acos(c*x))*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/c - (im*m*(a + b*acos(c*x))*PolyLog(2, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/c + (b*m*PolyLog(3, -((ℯ^(im*acos(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2)))))/c + (b*m*PolyLog(3, -((ℯ^(im*acos(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2)))))/c]
    @test_int [log(h*(f + g*x)^m)*(a + b*acos(c*x))^0/sqrt(1 - c^2*x^2), x, 9, (im*m*asin(c*x)^2)/(2*c) - (m*asin(c*x)*log(1 - (im*ℯ^(im*asin(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/c - (m*asin(c*x)*log(1 - (im*ℯ^(im*asin(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/c + (asin(c*x)*log(h*(f + g*x)^m))/c + (im*m*PolyLog(2, (im*ℯ^(im*asin(c*x))*g)/(c*f - sqrt(c^2*f^2 - g^2))))/c + (im*m*PolyLog(2, (im*ℯ^(im*asin(c*x))*g)/(c*f + sqrt(c^2*f^2 - g^2))))/c]
    @test_int [log(h*(f + g*x)^m)/(a + b*acos(c*x))^1/sqrt(1 - c^2*x^2), x, 0, Unintegrable(log(h*(f + g*x)^m)/(sqrt(1 - c^2*x^2)*(a + b*acos(c*x))), x)]


    #= ::Title:: =#
    #=Integrands*Involving*Inverse*Cosines=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*(a+b*acos(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acos(a+b*x)^n=#


    @test_int [x^3*acos(a + b*x), x, 6, (7*a*x^2*sqrt(1 - (a + b*x)^2))/(48*b^2) - (x^3*sqrt(1 - (a + b*x)^2))/(16*b) + ((4*a*(16 + 19*a^2) - (9 + 26*a^2)*(a + b*x))*sqrt(1 - (a + b*x)^2))/(96*b^4) + (1/4)*x^4*acos(a + b*x) + ((3 + 24*a^2 + 8*a^4)*asin(a + b*x))/(32*b^4)]
    @test_int [x^2*acos(a + b*x), x, 5, -((x^2*sqrt(1 - (a + b*x)^2))/(9*b)) - ((4 + 11*a^2 - 5*a*b*x)*sqrt(1 - (a + b*x)^2))/(18*b^3) + (1/3)*x^3*acos(a + b*x) - (a*(3 + 2*a^2)*asin(a + b*x))/(6*b^3)]
    @test_int [x^1*acos(a + b*x), x, 5, (3*a*sqrt(1 - (a + b*x)^2))/(4*b^2) - (x*sqrt(1 - (a + b*x)^2))/(4*b) + (1/2)*x^2*acos(a + b*x) + ((1 + 2*a^2)*asin(a + b*x))/(4*b^2)]
    @test_int [x^0*acos(a + b*x), x, 3, -(sqrt(1 - (a + b*x)^2)/b) + ((a + b*x)*acos(a + b*x))/b]
    @test_int [acos(a + b*x)/x^1, x, 9, (-(1/2))*im*acos(a + b*x)^2 + acos(a + b*x)*log(1 - ℯ^(im*acos(a + b*x))/(a - im*sqrt(1 - a^2))) + acos(a + b*x)*log(1 - ℯ^(im*acos(a + b*x))/(a + im*sqrt(1 - a^2))) - im*PolyLog(2, ℯ^(im*acos(a + b*x))/(a - im*sqrt(1 - a^2))) - im*PolyLog(2, ℯ^(im*acos(a + b*x))/(a + im*sqrt(1 - a^2)))]
    @test_int [acos(a + b*x)/x^2, x, 4, -(acos(a + b*x)/x) + (b*atanh((1 - a*(a + b*x))/(sqrt(1 - a^2)*sqrt(1 - (a + b*x)^2))))/sqrt(1 - a^2)]
    @test_int [acos(a + b*x)/x^3, x, 5, (b*sqrt(1 - (a + b*x)^2))/(2*(1 - a^2)*x) - acos(a + b*x)/(2*x^2) + (a*b^2*atanh((1 - a*(a + b*x))/(sqrt(1 - a^2)*sqrt(1 - (a + b*x)^2))))/(2*(1 - a^2)^(3/2))]
    @test_int [acos(a + b*x)/x^4, x, 6, (b*sqrt(1 - (a + b*x)^2))/(6*(1 - a^2)*x^2) + (a*b^2*sqrt(1 - (a + b*x)^2))/(2*(1 - a^2)^2*x) - acos(a + b*x)/(3*x^3) + ((1 + 2*a^2)*b^3*atanh((1 - a*(a + b*x))/(sqrt(1 - a^2)*sqrt(1 - (a + b*x)^2))))/(6*(1 - a^2)^(5/2))]


    @test_int [acos(a + b*x)^3, x, 5, (6*sqrt(1 - (a + b*x)^2))/b - (6*(a + b*x)*acos(a + b*x))/b - (3*sqrt(1 - (a + b*x)^2)*acos(a + b*x)^2)/b + ((a + b*x)*acos(a + b*x)^3)/b]
    @test_int [acos(a + b*x)^2, x, 4, -2*x - (2*sqrt(1 - (a + b*x)^2)*acos(a + b*x))/b + ((a + b*x)*acos(a + b*x)^2)/b]
    @test_int [1/acos(a + b*x), x, 3, -(SinIntegral(acos(a + b*x))/b)]
    @test_int [1/acos(a + b*x)^2, x, 4, sqrt(1 - (a + b*x)^2)/(b*acos(a + b*x)) - CosIntegral(acos(a + b*x))/b]
    @test_int [1/acos(a + b*x)^3, x, 5, sqrt(1 - (a + b*x)^2)/(2*b*acos(a + b*x)^2) + (a + b*x)/(2*b*acos(a + b*x)) + SinIntegral(acos(a + b*x))/(2*b)]


    @test_int [acos(a + b*x)^(5/2), x, 7, -((15*(a + b*x)*sqrt(acos(a + b*x)))/(4*b)) - (5*sqrt(1 - (a + b*x)^2)*acos(a + b*x)^(3/2))/(2*b) + ((a + b*x)*acos(a + b*x)^(5/2))/b + (15*sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a + b*x))))/(4*b)]
    @test_int [acos(a + b*x)^(3/2), x, 6, -((3*sqrt(1 - (a + b*x)^2)*sqrt(acos(a + b*x)))/(2*b)) + ((a + b*x)*acos(a + b*x)^(3/2))/b + (3*sqrt(pi/2)*FresnelS(sqrt(2/pi)*sqrt(acos(a + b*x))))/(2*b)]
    @test_int [acos(a + b*x)^(1/2), x, 5, ((a + b*x)*sqrt(acos(a + b*x)))/b - (sqrt(pi/2)*FresnelC(sqrt(2/pi)*sqrt(acos(a + b*x))))/b]
    @test_int [1/acos(a + b*x)^(1/2), x, 4, -((sqrt(2*pi)*FresnelS(sqrt(2/pi)*sqrt(acos(a + b*x))))/b)]
    @test_int [1/acos(a + b*x)^(3/2), x, 5, (2*sqrt(1 - (a + b*x)^2))/(b*sqrt(acos(a + b*x))) - (2*sqrt(2*pi)*FresnelC(sqrt(2/pi)*sqrt(acos(a + b*x))))/b]
    @test_int [1/acos(a + b*x)^(5/2), x, 6, (2*sqrt(1 - (a + b*x)^2))/(3*b*acos(a + b*x)^(3/2)) + (4*(a + b*x))/(3*b*sqrt(acos(a + b*x))) + (4*sqrt(2*pi)*FresnelS(sqrt(2/pi)*sqrt(acos(a + b*x))))/(3*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*acos(c+d*x))^n=#


    @test_int [1/sqrt(a + b*acos(c + d*x)), x, 7, -((sqrt(2*pi)*cos(a/b)*FresnelS((sqrt(2/pi)*sqrt(a + b*acos(c + d*x)))/sqrt(b)))/(sqrt(b)*d)) + (sqrt(2*pi)*FresnelC((sqrt(2/pi)*sqrt(a + b*acos(c + d*x)))/sqrt(b))*sin(a/b))/(sqrt(b)*d)]
    @test_int [1/sqrt(a - b*acos(c + d*x)), x, 7, -((sqrt(2*pi)*cos(a/b)*FresnelS((sqrt(2/pi)*sqrt(a - b*acos(c + d*x)))/sqrt(b)))/(sqrt(b)*d)) + (sqrt(2*pi)*FresnelC((sqrt(2/pi)*sqrt(a - b*acos(c + d*x)))/sqrt(b))*sin(a/b))/(sqrt(b)*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x)^m*acos(a+b*x)^n=#


    @test_int [acos(a + b*x)/((a*d)/b + d*x), x, 7, -((im*acos(a + b*x)^2)/(2*d)) + (acos(a + b*x)*log(1 + ℯ^(2*im*acos(a + b*x))))/d - (im*PolyLog(2, -ℯ^(2*im*acos(a + b*x))))/(2*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(1-(a+b*x)^2)^(m/2)*acos(a+b*x)^n=#


    @test_int [sqrt(1 - x^2)*acos(x), x, 3, x^2/4 + (1/2)*x*sqrt(1 - x^2)*acos(x) - acos(x)^2/4]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*acos(a+b*x^n)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acos(a*x^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^3*acos(a*x^2), x, 5, -((x^2*sqrt(1 - a^2*x^4))/(8*a)) + (1/4)*x^4*acos(a*x^2) + asin(a*x^2)/(8*a^2)]
    @test_int [x^2*acos(a*x^2), x, 4, -((2*x*sqrt(1 - a^2*x^4))/(9*a)) + (1/3)*x^3*acos(a*x^2) + (2*Elliptic.F(asin(sqrt(a)*x), -1))/(9*a^(3/2))]
    @test_int [x^1*acos(a*x^2), x, 3, -(sqrt(1 - a^2*x^4)/(2*a)) + (1/2)*x^2*acos(a*x^2)]
    @test_int [x^0*acos(a*x^2), x, 6, x*acos(a*x^2) + (2*Elliptic.E(asin(sqrt(a)*x), -1))/sqrt(a) - (2*Elliptic.F(asin(sqrt(a)*x), -1))/sqrt(a)]
    @test_int [acos(a*x^2)/x^1, x, 5, (-(1/4))*im*acos(a*x^2)^2 + (1/2)*acos(a*x^2)*log(1 + ℯ^(2*im*acos(a*x^2))) - (1/4)*im*PolyLog(2, -ℯ^(2*im*acos(a*x^2)))]
    @test_int [acos(a*x^2)/x^2, x, 3, -(acos(a*x^2)/x) - 2*sqrt(a)*Elliptic.F(asin(sqrt(a)*x), -1)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [x^2*acos(a/x), x, 6, (-(1/6))*a*sqrt(1 - a^2/x^2)*x^2 + (1/3)*x^3*asec(x/a) - (1/6)*a^3*atanh(sqrt(1 - a^2/x^2))]
    @test_int [x^1*acos(a/x), x, 3, (-(1/2))*a*sqrt(1 - a^2/x^2)*x + (1/2)*x^2*asec(x/a)]
    @test_int [x^0*acos(a/x), x, 5, x*asec(x/a) - a*atanh(sqrt(1 - a^2/x^2))]
    @test_int [acos(a/x)/x^1, x, 5, (1/2)*im*acos(a/x)^2 - acos(a/x)*log(1 + ℯ^(2*im*acos(a/x))) + (1/2)*im*PolyLog(2, -ℯ^(2*im*acos(a/x)))]
    @test_int [acos(a/x)/x^2, x, 3, sqrt(1 - a^2/x^2)/a - asec(x/a)/x]
    @test_int [acos(a/x)/x^3, x, 5, sqrt(1 - a^2/x^2)/(4*a*x) - acsc(x/a)/(4*a^2) - asec(x/a)/(2*x^2)]
    @test_int [acos(a/x)/x^4, x, 5, sqrt(1 - a^2/x^2)/(3*a^3) - (1 - a^2/x^2)^(3/2)/(9*a^3) - asec(x/a)/(3*x^3)]


    #= ::Subsubsection::Closed:: =#
    #=n/2>0=#


    @test_int [x^2*acos(sqrt(x)), x, 8, (-(5/48))*sqrt(1 - x)*sqrt(x) - (5/72)*sqrt(1 - x)*x^(3/2) - (1/18)*sqrt(1 - x)*x^(5/2) + (1/3)*x^3*acos(sqrt(x)) - (5/96)*asin(1 - 2*x)]
    @test_int [x^1*acos(sqrt(x)), x, 7, (-(3/16))*sqrt(1 - x)*sqrt(x) - (1/8)*sqrt(1 - x)*x^(3/2) + (1/2)*x^2*acos(sqrt(x)) - (3/32)*asin(1 - 2*x)]
    @test_int [x^0*acos(sqrt(x)), x, 6, (-(1/2))*sqrt(1 - x)*sqrt(x) + x*acos(sqrt(x)) - (1/4)*asin(1 - 2*x)]
    @test_int [acos(sqrt(x))/x^1, x, 5, (-im)*acos(sqrt(x))^2 + 2*acos(sqrt(x))*log(1 + ℯ^(2*im*acos(sqrt(x)))) - im*PolyLog(2, -ℯ^(2*im*acos(sqrt(x))))]
    @test_int [acos(sqrt(x))/x^2, x, 3, sqrt(1 - x)/sqrt(x) - acos(sqrt(x))/x]
    @test_int [acos(sqrt(x))/x^3, x, 4, sqrt(1 - x)/(6*x^(3/2)) + sqrt(1 - x)/(3*sqrt(x)) - acos(sqrt(x))/(2*x^2)]
    @test_int [acos(sqrt(x))/x^4, x, 5, sqrt(1 - x)/(15*x^(5/2)) + (4*sqrt(1 - x))/(45*x^(3/2)) + (8*sqrt(1 - x))/(45*sqrt(x)) - acos(sqrt(x))/(3*x^3)]
    @test_int [acos(sqrt(x))/x^5, x, 6, sqrt(1 - x)/(28*x^(7/2)) + (3*sqrt(1 - x))/(70*x^(5/2)) + (2*sqrt(1 - x))/(35*x^(3/2)) + (4*sqrt(1 - x))/(35*sqrt(x)) - acos(sqrt(x))/(4*x^4)]


    @test_int [acos(sqrt(x))/sqrt(x), x, 3, -2*sqrt(1 - x) + 2*sqrt(x)*acos(sqrt(x))]


    #= ::Subsubsection:: =#
    #=n/2<0=#


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [acos(a*x^n)/x, x, 5, -((im*acos(a*x^n)^2)/(2*n)) + (acos(a*x^n)*log(1 + ℯ^(2*im*acos(a*x^n))))/n - (im*PolyLog(2, -ℯ^(2*im*acos(a*x^n))))/(2*n)]
    @test_int [acos(a*x^5)/x, x, 5, (-(1/10))*im*acos(a*x^5)^2 + (1/5)*acos(a*x^5)*log(1 + ℯ^(2*im*acos(a*x^5))) - (1/10)*im*PolyLog(2, -ℯ^(2*im*acos(a*x^5)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*u*acos(a+b*x^n)=#


    @test_int [x^3*acos(a + b*x^4), x, 4, -(sqrt(1 - (a + b*x^4)^2)/(4*b)) + ((a + b*x^4)*acos(a + b*x^4))/(4*b)]


    @test_int [x^(n-1)*acos(a + b*x^n), x, 4, -(sqrt(1 - (a + b*x^n)^2)/(b*n)) + ((a + b*x^n)*acos(a + b*x^n))/(b*n)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(a+b*acos(c+d*x^2))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*acos(c+d*x^2))^n*when*c^2=1=#


    @test_int [(a + b*acos(1 + d*x^2))^4, x, 3, 384*b^4*x + (192*b^3*sqrt(-2*d*x^2 - d^2*x^4)*(a + b*acos(1 + d*x^2)))/(d*x) - 48*b^2*x*(a + b*acos(1 + d*x^2))^2 - (8*b*sqrt(-2*d*x^2 - d^2*x^4)*(a + b*acos(1 + d*x^2))^3)/(d*x) + x*(a + b*acos(1 + d*x^2))^4]
    @test_int [(a + b*acos(1 + d*x^2))^3, x, 5, -24*a*b^2*x + (48*b^3*sqrt(-2*d*x^2 - d^2*x^4))/(d*x) - 24*b^3*x*acos(1 + d*x^2) - (6*b*sqrt(-2*d*x^2 - d^2*x^4)*(a + b*acos(1 + d*x^2))^2)/(d*x) + x*(a + b*acos(1 + d*x^2))^3]
    @test_int [(a + b*acos(1 + d*x^2))^2, x, 2, -8*b^2*x - (4*b*sqrt(-2*d*x^2 - d^2*x^4)*(a + b*acos(1 + d*x^2)))/(d*x) + x*(a + b*acos(1 + d*x^2))^2]
    @test_int [(a + b*acos(1 + d*x^2))^1, x, 4, a*x - (2*b*sqrt(-2*d*x^2 - d^2*x^4))/(d*x) + b*x*acos(1 + d*x^2)]
    @test_int [1/(a + b*acos(1 + d*x^2))^1, x, 1, (x*cos(a/(2*b))*CosIntegral((a + b*acos(1 + d*x^2))/(2*b)))/(sqrt(2)*b*sqrt((-d)*x^2)) + (x*sin(a/(2*b))*SinIntegral((a + b*acos(1 + d*x^2))/(2*b)))/(sqrt(2)*b*sqrt((-d)*x^2))]
    @test_int [1/(a + b*acos(1 + d*x^2))^2, x, 1, sqrt(-2*d*x^2 - d^2*x^4)/(2*b*d*x*(a + b*acos(1 + d*x^2))) + (x*CosIntegral((a + b*acos(1 + d*x^2))/(2*b))*sin(a/(2*b)))/(2*sqrt(2)*b^2*sqrt((-d)*x^2)) - (x*cos(a/(2*b))*SinIntegral((a + b*acos(1 + d*x^2))/(2*b)))/(2*sqrt(2)*b^2*sqrt((-d)*x^2))]
    @test_int [1/(a + b*acos(1 + d*x^2))^3, x, 2, sqrt(-2*d*x^2 - d^2*x^4)/(4*b*d*x*(a + b*acos(1 + d*x^2))^2) + x/(8*b^2*(a + b*acos(1 + d*x^2))) - (x*cos(a/(2*b))*CosIntegral((a + b*acos(1 + d*x^2))/(2*b)))/(8*sqrt(2)*b^3*sqrt((-d)*x^2)) - (x*sin(a/(2*b))*SinIntegral((a + b*acos(1 + d*x^2))/(2*b)))/(8*sqrt(2)*b^3*sqrt((-d)*x^2))]


    @test_int [(a + b*acos(-1 + d*x^2))^4, x, 3, 384*b^4*x + (192*b^3*sqrt(2*d*x^2 - d^2*x^4)*(a + b*acos(-1 + d*x^2)))/(d*x) - 48*b^2*x*(a + b*acos(-1 + d*x^2))^2 - (8*b*sqrt(2*d*x^2 - d^2*x^4)*(a + b*acos(-1 + d*x^2))^3)/(d*x) + x*(a + b*acos(-1 + d*x^2))^4]
    @test_int [(a + b*acos(-1 + d*x^2))^3, x, 5, -24*a*b^2*x + (48*b^3*sqrt(2*d*x^2 - d^2*x^4))/(d*x) - 24*b^3*x*acos(-1 + d*x^2) - (6*b*sqrt(2*d*x^2 - d^2*x^4)*(a + b*acos(-1 + d*x^2))^2)/(d*x) + x*(a + b*acos(-1 + d*x^2))^3]
    @test_int [(a + b*acos(-1 + d*x^2))^2, x, 2, -8*b^2*x - (4*b*sqrt(2*d*x^2 - d^2*x^4)*(a + b*acos(-1 + d*x^2)))/(d*x) + x*(a + b*acos(-1 + d*x^2))^2]
    @test_int [(a + b*acos(-1 + d*x^2))^1, x, 4, a*x - (2*b*sqrt(2*d*x^2 - d^2*x^4))/(d*x) + b*x*acos(-1 + d*x^2)]
    @test_int [1/(a + b*acos(-1 + d*x^2))^1, x, 1, (x*CosIntegral((a + b*acos(-1 + d*x^2))/(2*b))*sin(a/(2*b)))/(sqrt(2)*b*sqrt(d*x^2)) - (x*cos(a/(2*b))*SinIntegral((a + b*acos(-1 + d*x^2))/(2*b)))/(sqrt(2)*b*sqrt(d*x^2))]
    @test_int [1/(a + b*acos(-1 + d*x^2))^2, x, 1, sqrt(2*d*x^2 - d^2*x^4)/(2*b*d*x*(a + b*acos(-1 + d*x^2))) - (x*cos(a/(2*b))*CosIntegral((a + b*acos(-1 + d*x^2))/(2*b)))/(2*sqrt(2)*b^2*sqrt(d*x^2)) - (x*sin(a/(2*b))*SinIntegral((a + b*acos(-1 + d*x^2))/(2*b)))/(2*sqrt(2)*b^2*sqrt(d*x^2))]
    @test_int [1/(a + b*acos(-1 + d*x^2))^3, x, 2, sqrt(2*d*x^2 - d^2*x^4)/(4*b*d*x*(a + b*acos(-1 + d*x^2))^2) + x/(8*b^2*(a + b*acos(-1 + d*x^2))) - (x*CosIntegral((a + b*acos(-1 + d*x^2))/(2*b))*sin(a/(2*b)))/(8*sqrt(2)*b^3*sqrt(d*x^2)) + (x*cos(a/(2*b))*SinIntegral((a + b*acos(-1 + d*x^2))/(2*b)))/(8*sqrt(2)*b^3*sqrt(d*x^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(a+b*acos(c+d*x^2))^(n/2)*when*c^2=1=#


    @test_int [(a + b*acos(1 + d*x^2))^(5/2), x, 2, -((5*b*sqrt(-2*d*x^2 - d^2*x^4)*(a + b*acos(1 + d*x^2))^(3/2))/(d*x)) + x*(a + b*acos(1 + d*x^2))^(5/2) - (30*sqrt(pi)*cos(a/(2*b))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin((1/2)*acos(1 + d*x^2)))/((1/b)^(5/2)*d*x) + (30*sqrt(pi)*FresnelC((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin(a/(2*b))*sin((1/2)*acos(1 + d*x^2)))/((1/b)^(5/2)*d*x) + (30*b^2*sqrt(a + b*acos(1 + d*x^2))*sin((1/2)*acos(1 + d*x^2))^2)/(d*x)]
    @test_int [(a + b*acos(1 + d*x^2))^(3/2), x, 2, -((3*b*sqrt(-2*d*x^2 - d^2*x^4)*sqrt(a + b*acos(1 + d*x^2)))/(d*x)) + x*(a + b*acos(1 + d*x^2))^(3/2) + (6*sqrt(pi)*cos(a/(2*b))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin((1/2)*acos(1 + d*x^2)))/((1/b)^(3/2)*d*x) + (6*sqrt(pi)*FresnelS((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin(a/(2*b))*sin((1/2)*acos(1 + d*x^2)))/((1/b)^(3/2)*d*x)]
    @test_int [(a + b*acos(1 + d*x^2))^(1/2), x, 1, (2*sqrt(pi)*cos(a/(2*b))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin((1/2)*acos(1 + d*x^2)))/(sqrt(1/b)*d*x) - (2*sqrt(pi)*FresnelC((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin(a/(2*b))*sin((1/2)*acos(1 + d*x^2)))/(sqrt(1/b)*d*x) - (2*sqrt(a + b*acos(1 + d*x^2))*sin((1/2)*acos(1 + d*x^2))^2)/(d*x)]
    @test_int [1/(a + b*acos(1 + d*x^2))^(1/2), x, 1, -((2*sqrt(1/b)*sqrt(pi)*cos(a/(2*b))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin((1/2)*acos(1 + d*x^2)))/(d*x)) - (2*sqrt(1/b)*sqrt(pi)*FresnelS((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin(a/(2*b))*sin((1/2)*acos(1 + d*x^2)))/(d*x)]
    @test_int [1/(a + b*acos(1 + d*x^2))^(3/2), x, 1, sqrt(-2*d*x^2 - d^2*x^4)/(b*d*x*sqrt(a + b*acos(1 + d*x^2))) + (2*(1/b)^(3/2)*sqrt(pi)*cos(a/(2*b))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin((1/2)*acos(1 + d*x^2)))/(d*x) - (2*(1/b)^(3/2)*sqrt(pi)*FresnelC((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin(a/(2*b))*sin((1/2)*acos(1 + d*x^2)))/(d*x)]
    @test_int [1/(a + b*acos(1 + d*x^2))^(5/2), x, 2, sqrt(-2*d*x^2 - d^2*x^4)/(3*b*d*x*(a + b*acos(1 + d*x^2))^(3/2)) + x/(3*b^2*sqrt(a + b*acos(1 + d*x^2))) + (2*(1/b)^(5/2)*sqrt(pi)*cos(a/(2*b))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin((1/2)*acos(1 + d*x^2)))/(3*d*x) + (2*(1/b)^(5/2)*sqrt(pi)*FresnelS((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin(a/(2*b))*sin((1/2)*acos(1 + d*x^2)))/(3*d*x)]
    @test_int [1/(a + b*acos(1 + d*x^2))^(7/2), x, 2, sqrt(-2*d*x^2 - d^2*x^4)/(5*b*d*x*(a + b*acos(1 + d*x^2))^(5/2)) + x/(15*b^2*(a + b*acos(1 + d*x^2))^(3/2)) - sqrt(-2*d*x^2 - d^2*x^4)/(15*b^3*d*x*sqrt(a + b*acos(1 + d*x^2))) - (2*(1/b)^(7/2)*sqrt(pi)*cos(a/(2*b))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin((1/2)*acos(1 + d*x^2)))/(15*d*x) + (2*(1/b)^(7/2)*sqrt(pi)*FresnelC((sqrt(1/b)*sqrt(a + b*acos(1 + d*x^2)))/sqrt(pi))*sin(a/(2*b))*sin((1/2)*acos(1 + d*x^2)))/(15*d*x)]


    @test_int [(a + b*acos(-1 + d*x^2))^(5/2), x, 2, -((5*b*sqrt(2*d*x^2 - d^2*x^4)*(a + b*acos(-1 + d*x^2))^(3/2))/(d*x)) + x*(a + b*acos(-1 + d*x^2))^(5/2) - (30*b^2*sqrt(a + b*acos(-1 + d*x^2))*cos((1/2)*acos(-1 + d*x^2))^2)/(d*x) + (30*sqrt(pi)*cos(a/(2*b))*cos((1/2)*acos(-1 + d*x^2))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi)))/((1/b)^(5/2)*d*x) + (30*sqrt(pi)*cos((1/2)*acos(-1 + d*x^2))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi))*sin(a/(2*b)))/((1/b)^(5/2)*d*x)]
    @test_int [(a + b*acos(-1 + d*x^2))^(3/2), x, 2, -((3*b*sqrt(2*d*x^2 - d^2*x^4)*sqrt(a + b*acos(-1 + d*x^2)))/(d*x)) + x*(a + b*acos(-1 + d*x^2))^(3/2) + (6*sqrt(pi)*cos(a/(2*b))*cos((1/2)*acos(-1 + d*x^2))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi)))/((1/b)^(3/2)*d*x) - (6*sqrt(pi)*cos((1/2)*acos(-1 + d*x^2))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi))*sin(a/(2*b)))/((1/b)^(3/2)*d*x)]
    @test_int [(a + b*acos(-1 + d*x^2))^(1/2), x, 1, (2*sqrt(a + b*acos(-1 + d*x^2))*cos((1/2)*acos(-1 + d*x^2))^2)/(d*x) - (2*sqrt(pi)*cos(a/(2*b))*cos((1/2)*acos(-1 + d*x^2))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi)))/(sqrt(1/b)*d*x) - (2*sqrt(pi)*cos((1/2)*acos(-1 + d*x^2))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi))*sin(a/(2*b)))/(sqrt(1/b)*d*x)]
    @test_int [1/(a + b*acos(-1 + d*x^2))^(1/2), x, 1, -((2*sqrt(1/b)*sqrt(pi)*cos(a/(2*b))*cos((1/2)*acos(-1 + d*x^2))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi)))/(d*x)) + (2*sqrt(1/b)*sqrt(pi)*cos((1/2)*acos(-1 + d*x^2))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi))*sin(a/(2*b)))/(d*x)]
    @test_int [1/(a + b*acos(-1 + d*x^2))^(3/2), x, 1, sqrt(2*d*x^2 - d^2*x^4)/(b*d*x*sqrt(a + b*acos(-1 + d*x^2))) - (2*(1/b)^(3/2)*sqrt(pi)*cos(a/(2*b))*cos((1/2)*acos(-1 + d*x^2))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi)))/(d*x) - (2*(1/b)^(3/2)*sqrt(pi)*cos((1/2)*acos(-1 + d*x^2))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi))*sin(a/(2*b)))/(d*x)]
    @test_int [1/(a + b*acos(-1 + d*x^2))^(5/2), x, 2, sqrt(2*d*x^2 - d^2*x^4)/(3*b*d*x*(a + b*acos(-1 + d*x^2))^(3/2)) + x/(3*b^2*sqrt(a + b*acos(-1 + d*x^2))) + (2*(1/b)^(5/2)*sqrt(pi)*cos(a/(2*b))*cos((1/2)*acos(-1 + d*x^2))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi)))/(3*d*x) - (2*(1/b)^(5/2)*sqrt(pi)*cos((1/2)*acos(-1 + d*x^2))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi))*sin(a/(2*b)))/(3*d*x)]
    @test_int [1/(a + b*acos(-1 + d*x^2))^(7/2), x, 2, sqrt(2*d*x^2 - d^2*x^4)/(5*b*d*x*(a + b*acos(-1 + d*x^2))^(5/2)) + x/(15*b^2*(a + b*acos(-1 + d*x^2))^(3/2)) - sqrt(2*d*x^2 - d^2*x^4)/(15*b^3*d*x*sqrt(a + b*acos(-1 + d*x^2))) + (2*(1/b)^(7/2)*sqrt(pi)*cos(a/(2*b))*cos((1/2)*acos(-1 + d*x^2))*FresnelC((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi)))/(15*d*x) + (2*(1/b)^(7/2)*sqrt(pi)*cos((1/2)*acos(-1 + d*x^2))*FresnelS((sqrt(1/b)*sqrt(a + b*acos(-1 + d*x^2)))/sqrt(pi))*sin(a/(2*b)))/(15*d*x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u^m*(a+b*acos(sqrt(1-c*x)/sqrt(1+c*x)))^n=#


    @test_int [(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^n/(1 - c^2*x^2), x, 0, Unintegrable((a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^n/(1 - c^2*x^2), x)]


    @test_int [(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^3/(1 - c^2*x^2), x, 8, (im*(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^4)/(4*b*c) - ((a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^3*log(1 + ℯ^(2*im*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))))/c + (3*im*b*(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*PolyLog(2, -ℯ^(2*im*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))))/(2*c) - (3*b^2*(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(3, -ℯ^(2*im*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))))/(2*c) - (3*im*b^3*PolyLog(4, -ℯ^(2*im*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))))/(4*c)]
    @test_int [(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^2/(1 - c^2*x^2), x, 7, (im*(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^3)/(3*b*c) - ((a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*log(1 + ℯ^(2*im*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))))/c + (im*b*(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(2, -ℯ^(2*im*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))))/c - (b^2*PolyLog(3, -ℯ^(2*im*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))))/(2*c)]
    @test_int [(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^1/(1 - c^2*x^2), x, 6, (im*(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^2)/(2*b*c) - ((a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))*log(1 + ℯ^(2*im*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))))/c + (im*b*PolyLog(2, -ℯ^(2*im*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))))/(2*c)]
    @test_int [1/((a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^1*(1 - c^2*x^2)), x, 0, Unintegrable(1/((1 - c^2*x^2)*(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))), x)]
    @test_int [1/((a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*(1 - c^2*x^2)), x, 0, Unintegrable(1/((1 - c^2*x^2)*(a + b*acos(sqrt(1 - c*x)/sqrt(1 + c*x)))^2), x)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*inverse*cosines*of*exponentials=#


    @test_int [acos(c*ℯ^(a + b*x)), x, 6, -((im*acos(c*ℯ^(a + b*x))^2)/(2*b)) + (acos(c*ℯ^(a + b*x))*log(1 + ℯ^(2*im*acos(c*ℯ^(a + b*x)))))/b - (im*PolyLog(2, -ℯ^(2*im*acos(c*ℯ^(a + b*x)))))/(2*b)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*exponentials*of*inverse*cosines=#


    @test_int [x^3*ℯ^acos(a*x), x, 6, (ℯ^acos(a*x)*cos(2*acos(a*x)))/(10*a^4) + (ℯ^acos(a*x)*cos(4*acos(a*x)))/(34*a^4) - (ℯ^acos(a*x)*sin(2*acos(a*x)))/(20*a^4) - (ℯ^acos(a*x)*sin(4*acos(a*x)))/(136*a^4)]
    @test_int [x^2*ℯ^acos(a*x), x, 6, (ℯ^acos(a*x)*x)/(8*a^2) - (ℯ^acos(a*x)*sqrt(1 - a^2*x^2))/(8*a^3) + (3*ℯ^acos(a*x)*cos(3*acos(a*x)))/(40*a^3) - (ℯ^acos(a*x)*sin(3*acos(a*x)))/(40*a^3)]
    @test_int [x^1*ℯ^acos(a*x), x, 5, (ℯ^acos(a*x)*cos(2*acos(a*x)))/(5*a^2) - (ℯ^acos(a*x)*sin(2*acos(a*x)))/(10*a^2)]
    @test_int [x^0*ℯ^acos(a*x), x, 2, (1/2)*ℯ^acos(a*x)*x - (ℯ^acos(a*x)*sqrt(1 - a^2*x^2))/(2*a)]
    @test_int [ℯ^acos(a*x)/x^1, x, 6, im*ℯ^acos(a*x) - 2*im*ℯ^acos(a*x)*HypergeometricFunctions._₂F₁(-(im/2), 1, 1 - im/2, -ℯ^(2*im*acos(a*x)))]
    @test_int [ℯ^acos(a*x)/x^2, x, 6, (1 + im)*a*ℯ^((1 + im)*acos(a*x))*HypergeometricFunctions._₂F₁(1/2 - im/2, 1, 3/2 - im/2, -ℯ^(2*im*acos(a*x))) - (2 + 2*im)*a*ℯ^((1 + im)*acos(a*x))*HypergeometricFunctions._₂F₁(1/2 - im/2, 2, 3/2 - im/2, -ℯ^(2*im*acos(a*x)))]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*inverse*cosines=#


    @test_int [acos(c/(a + b*x)), x, 6, ((a + b*x)*asec(a/c + (b*x)/c))/b - (c*atanh(sqrt(1 - c^2/(a + b*x)^2)))/b]


    @test_int [x/(sqrt(1 - x^2)*sqrt(acos(x))), x, 3, -sqrt(2*pi)*FresnelC(sqrt(2/pi)*sqrt(acos(x)))]
    @test_int [x/(sqrt(1 - x^2)*acos(x)), x, 2, -CosIntegral(acos(x))]


    @test_int [acos(sqrt(1 + b*x^2))^n/sqrt(1 + b*x^2), x, 2, -((sqrt((-b)*x^2)*acos(sqrt(1 + b*x^2))^(1 + n))/(b*(1 + n)*x))]
    @test_int [1/(acos(sqrt(1 + b*x^2))*sqrt(1 + b*x^2)), x, 2, -((sqrt((-b)*x^2)*log(acos(sqrt(1 + b*x^2))))/(b*x))]
    end
