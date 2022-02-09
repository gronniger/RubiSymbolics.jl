@testset "5.3.2 (d x)^m (a+b arctan(c x^n))^p" begin
    (a, b, c, d, m, n, p, x, ) = @variables a b c d m n p x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x^n))^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x^1))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*atan(c*x))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^5*(a + b*atan(c*x)), x, 4, -(b*x)/(6*c^5) + (b*x^3)/(18*c^3) - (b*x^5)/(30*c) + (b*atan(c*x))/(6*c^6) + (x^6*(a + b*atan(c*x)))/6]
    @test_int [x^4*(a + b*atan(c*x)), x, 4, (b*x^2)/(10*c^3) - (b*x^4)/(20*c) + (x^5*(a + b*atan(c*x)))/5 - (b*log(1 + c^2*x^2))/(10*c^5)]
    @test_int [x^3*(a + b*atan(c*x)), x, 4, (b*x)/(4*c^3) - (b*x^3)/(12*c) - (b*atan(c*x))/(4*c^4) + (x^4*(a + b*atan(c*x)))/4]
    @test_int [x^2*(a + b*atan(c*x)), x, 4, -(b*x^2)/(6*c) + (x^3*(a + b*atan(c*x)))/3 + (b*log(1 + c^2*x^2))/(6*c^3)]
    @test_int [x^1*(a + b*atan(c*x)), x, 3, -(b*x)/(2*c) + (b*atan(c*x))/(2*c^2) + (x^2*(a + b*atan(c*x)))/2]
    @test_int [x^0*(a + b*atan(c*x)), x, 3, a*x + b*x*atan(c*x) - (b*log(1 + c^2*x^2))/(2*c)]
    @test_int [(a + b*atan(c*x))/x^1, x, 3, a*log(x) + (im/2)*b*PolyLog(2, (-im)*c*x) - (im/2)*b*PolyLog(2, im*c*x)]
    @test_int [(a + b*atan(c*x))/x^2, x, 5, -((a + b*atan(c*x))/x) + b*c*log(x) - (b*c*log(1 + c^2*x^2))/2]
    @test_int [(a + b*atan(c*x))/x^3, x, 3, -(b*c)/(2*x) - (b*c^2*atan(c*x))/2 - (a + b*atan(c*x))/(2*x^2)]
    @test_int [(a + b*atan(c*x))/x^4, x, 4, -(b*c)/(6*x^2) - (a + b*atan(c*x))/(3*x^3) - (b*c^3*log(x))/3 + (b*c^3*log(1 + c^2*x^2))/6]
    @test_int [(a + b*atan(c*x))/x^5, x, 4, -(b*c)/(12*x^3) + (b*c^3)/(4*x) + (b*c^4*atan(c*x))/4 - (a + b*atan(c*x))/(4*x^4)]
    @test_int [(a + b*atan(c*x))/x^6, x, 4, -(b*c)/(20*x^4) + (b*c^3)/(10*x^2) - (a + b*atan(c*x))/(5*x^5) + (b*c^5*log(x))/5 - (b*c^5*log(1 + c^2*x^2))/10]


    @test_int [x^5*(a + b*atan(c*x))^2, x, 16, -(a*b*x)/(3*c^5) - (4*b^2*x^2)/(45*c^4) + (b^2*x^4)/(60*c^2) - (b^2*x*atan(c*x))/(3*c^5) + (b*x^3*(a + b*atan(c*x)))/(9*c^3) - (b*x^5*(a + b*atan(c*x)))/(15*c) + (a + b*atan(c*x))^2/(6*c^6) + (x^6*(a + b*atan(c*x))^2)/6 + (23*b^2*log(1 + c^2*x^2))/(90*c^6)]
    @test_int [x^4*(a + b*atan(c*x))^2, x, 14, (-3*b^2*x)/(10*c^4) + (b^2*x^3)/(30*c^2) + (3*b^2*atan(c*x))/(10*c^5) + (b*x^2*(a + b*atan(c*x)))/(5*c^3) - (b*x^4*(a + b*atan(c*x)))/(10*c) + ((im/5)*(a + b*atan(c*x))^2)/c^5 + (x^5*(a + b*atan(c*x))^2)/5 + (2*b*(a + b*atan(c*x))*log(2/(1 + im*c*x)))/(5*c^5) + ((im/5)*b^2*PolyLog(2, 1 - 2/(1 + im*c*x)))/c^5]
    @test_int [x^3*(a + b*atan(c*x))^2, x, 11, (a*b*x)/(2*c^3) + (b^2*x^2)/(12*c^2) + (b^2*x*atan(c*x))/(2*c^3) - (b*x^3*(a + b*atan(c*x)))/(6*c) - (a + b*atan(c*x))^2/(4*c^4) + (x^4*(a + b*atan(c*x))^2)/4 - (b^2*log(1 + c^2*x^2))/(3*c^4)]
    @test_int [x^2*(a + b*atan(c*x))^2, x, 9, (b^2*x)/(3*c^2) - (b^2*atan(c*x))/(3*c^3) - (b*x^2*(a + b*atan(c*x)))/(3*c) - ((im/3)*(a + b*atan(c*x))^2)/c^3 + (x^3*(a + b*atan(c*x))^2)/3 - (2*b*(a + b*atan(c*x))*log(2/(1 + im*c*x)))/(3*c^3) - ((im/3)*b^2*PolyLog(2, 1 - 2/(1 + im*c*x)))/c^3]
    @test_int [x^1*(a + b*atan(c*x))^2, x, 6, -((a*b*x)/c) - (b^2*x*atan(c*x))/c + (a + b*atan(c*x))^2/(2*c^2) + (x^2*(a + b*atan(c*x))^2)/2 + (b^2*log(1 + c^2*x^2))/(2*c^2)]
    @test_int [x^0*(a + b*atan(c*x))^2, x, 5, (im*(a + b*atan(c*x))^2)/c + x*(a + b*atan(c*x))^2 + (2*b*(a + b*atan(c*x))*log(2/(1 + im*c*x)))/c + (im*b^2*PolyLog(2, 1 - 2/(1 + im*c*x)))/c]
    @test_int [(a + b*atan(c*x))^2/x^1, x, 6, 2*(a + b*atan(c*x))^2*atanh(1 - 2/(1 + im*c*x)) - im*b*(a + b*atan(c*x))*PolyLog(2, 1 - 2/(1 + im*c*x)) + im*b*(a + b*atan(c*x))*PolyLog(2, -1 + 2/(1 + im*c*x)) - (b^2*PolyLog(3, 1 - 2/(1 + im*c*x)))/2 + (b^2*PolyLog(3, -1 + 2/(1 + im*c*x)))/2]
    @test_int [(a + b*atan(c*x))^2/x^2, x, 4, (-im)*c*(a + b*atan(c*x))^2 - (a + b*atan(c*x))^2/x + 2*b*c*(a + b*atan(c*x))*log(2 - 2/(1 - im*c*x)) - im*b^2*c*PolyLog(2, -1 + 2/(1 - im*c*x))]
    @test_int [(a + b*atan(c*x))^2/x^3, x, 8, -((b*c*(a + b*atan(c*x)))/x) - (c^2*(a + b*atan(c*x))^2)/2 - (a + b*atan(c*x))^2/(2*x^2) + b^2*c^2*log(x) - (b^2*c^2*log(1 + c^2*x^2))/2]
    @test_int [(a + b*atan(c*x))^2/x^4, x, 8, -(b^2*c^2)/(3*x) - (b^2*c^3*atan(c*x))/3 - (b*c*(a + b*atan(c*x)))/(3*x^2) + (im/3)*c^3*(a + b*atan(c*x))^2 - (a + b*atan(c*x))^2/(3*x^3) - (2*b*c^3*(a + b*atan(c*x))*log(2 - 2/(1 - im*c*x)))/3 + (im/3)*b^2*c^3*PolyLog(2, -1 + 2/(1 - im*c*x))]
    @test_int [(a + b*atan(c*x))^2/x^5, x, 13, -(b^2*c^2)/(12*x^2) - (b*c*(a + b*atan(c*x)))/(6*x^3) + (b*c^3*(a + b*atan(c*x)))/(2*x) + (c^4*(a + b*atan(c*x))^2)/4 - (a + b*atan(c*x))^2/(4*x^4) - (2*b^2*c^4*log(x))/3 + (b^2*c^4*log(1 + c^2*x^2))/3]


    @test_int [x^5*(a + b*atan(c*x))^3, x, 33, (19*b^3*x)/(60*c^5) - (b^3*x^3)/(60*c^3) - (19*b^3*atan(c*x))/(60*c^6) - (4*b^2*x^2*(a + b*atan(c*x)))/(15*c^4) + (b^2*x^4*(a + b*atan(c*x)))/(20*c^2) - (((23*im)/30)*b*(a + b*atan(c*x))^2)/c^6 - (b*x*(a + b*atan(c*x))^2)/(2*c^5) + (b*x^3*(a + b*atan(c*x))^2)/(6*c^3) - (b*x^5*(a + b*atan(c*x))^2)/(10*c) + (a + b*atan(c*x))^3/(6*c^6) + (x^6*(a + b*atan(c*x))^3)/6 - (23*b^2*(a + b*atan(c*x))*log(2/(1 + im*c*x)))/(15*c^6) - (((23*im)/30)*b^3*PolyLog(2, 1 - 2/(1 + im*c*x)))/c^6]
    @test_int [x^4*(a + b*atan(c*x))^3, x, 24, (-9*a*b^2*x)/(10*c^4) - (b^3*x^2)/(20*c^3) - (9*b^3*x*atan(c*x))/(10*c^4) + (b^2*x^3*(a + b*atan(c*x)))/(10*c^2) + (9*b*(a + b*atan(c*x))^2)/(20*c^5) + (3*b*x^2*(a + b*atan(c*x))^2)/(10*c^3) - (3*b*x^4*(a + b*atan(c*x))^2)/(20*c) + ((im/5)*(a + b*atan(c*x))^3)/c^5 + (x^5*(a + b*atan(c*x))^3)/5 + (3*b*(a + b*atan(c*x))^2*log(2/(1 + im*c*x)))/(5*c^5) + (b^3*log(1 + c^2*x^2))/(2*c^5) + (((3*im)/5)*b^2*(a + b*atan(c*x))*PolyLog(2, 1 - 2/(1 + im*c*x)))/c^5 + (3*b^3*PolyLog(3, 1 - 2/(1 + im*c*x)))/(10*c^5)]
    @test_int [x^3*(a + b*atan(c*x))^3, x, 18, -(b^3*x)/(4*c^3) + (b^3*atan(c*x))/(4*c^4) + (b^2*x^2*(a + b*atan(c*x)))/(4*c^2) + (im*b*(a + b*atan(c*x))^2)/c^4 + (3*b*x*(a + b*atan(c*x))^2)/(4*c^3) - (b*x^3*(a + b*atan(c*x))^2)/(4*c) - (a + b*atan(c*x))^3/(4*c^4) + (x^4*(a + b*atan(c*x))^3)/4 + (2*b^2*(a + b*atan(c*x))*log(2/(1 + im*c*x)))/c^4 + (im*b^3*PolyLog(2, 1 - 2/(1 + im*c*x)))/c^4]
    @test_int [x^2*(a + b*atan(c*x))^3, x, 12, (a*b^2*x)/c^2 + (b^3*x*atan(c*x))/c^2 - (b*(a + b*atan(c*x))^2)/(2*c^3) - (b*x^2*(a + b*atan(c*x))^2)/(2*c) - ((im/3)*(a + b*atan(c*x))^3)/c^3 + (x^3*(a + b*atan(c*x))^3)/3 - (b*(a + b*atan(c*x))^2*log(2/(1 + im*c*x)))/c^3 - (b^3*log(1 + c^2*x^2))/(2*c^3) - (im*b^2*(a + b*atan(c*x))*PolyLog(2, 1 - 2/(1 + im*c*x)))/c^3 - (b^3*PolyLog(3, 1 - 2/(1 + im*c*x)))/(2*c^3)]
    @test_int [x^1*(a + b*atan(c*x))^3, x, 8, (((-3*im)/2)*b*(a + b*atan(c*x))^2)/c^2 - (3*b*x*(a + b*atan(c*x))^2)/(2*c) + (a + b*atan(c*x))^3/(2*c^2) + (x^2*(a + b*atan(c*x))^3)/2 - (3*b^2*(a + b*atan(c*x))*log(2/(1 + im*c*x)))/c^2 - (((3*im)/2)*b^3*PolyLog(2, 1 - 2/(1 + im*c*x)))/c^2]
    @test_int [x^0*(a + b*atan(c*x))^3, x, 5, (im*(a + b*atan(c*x))^3)/c + x*(a + b*atan(c*x))^3 + (3*b*(a + b*atan(c*x))^2*log(2/(1 + im*c*x)))/c + ((3*im)*b^2*(a + b*atan(c*x))*PolyLog(2, 1 - 2/(1 + im*c*x)))/c + (3*b^3*PolyLog(3, 1 - 2/(1 + im*c*x)))/(2*c)]
    @test_int [(a + b*atan(c*x))^3/x^1, x, 8, 2*(a + b*atan(c*x))^3*atanh(1 - 2/(1 + im*c*x)) - ((3*im)/2)*b*(a + b*atan(c*x))^2*PolyLog(2, 1 - 2/(1 + im*c*x)) + ((3*im)/2)*b*(a + b*atan(c*x))^2*PolyLog(2, -1 + 2/(1 + im*c*x)) - (3*b^2*(a + b*atan(c*x))*PolyLog(3, 1 - 2/(1 + im*c*x)))/2 + (3*b^2*(a + b*atan(c*x))*PolyLog(3, -1 + 2/(1 + im*c*x)))/2 + ((3*im)/4)*b^3*PolyLog(4, 1 - 2/(1 + im*c*x)) - ((3*im)/4)*b^3*PolyLog(4, -1 + 2/(1 + im*c*x))]
    @test_int [(a + b*atan(c*x))^3/x^2, x, 5, (-im)*c*(a + b*atan(c*x))^3 - (a + b*atan(c*x))^3/x + 3*b*c*(a + b*atan(c*x))^2*log(2 - 2/(1 - im*c*x)) - (3*im)*b^2*c*(a + b*atan(c*x))*PolyLog(2, -1 + 2/(1 - im*c*x)) + (3*b^3*c*PolyLog(3, -1 + 2/(1 - im*c*x)))/2]
    @test_int [(a + b*atan(c*x))^3/x^3, x, 7, ((-3*im)/2)*b*c^2*(a + b*atan(c*x))^2 - (3*b*c*(a + b*atan(c*x))^2)/(2*x) - (c^2*(a + b*atan(c*x))^3)/2 - (a + b*atan(c*x))^3/(2*x^2) + 3*b^2*c^2*(a + b*atan(c*x))*log(2 - 2/(1 - im*c*x)) - ((3*im)/2)*b^3*c^2*PolyLog(2, -1 + 2/(1 - im*c*x))]
    @test_int [(a + b*atan(c*x))^3/x^4, x, 14, -((b^2*c^2*(a + b*atan(c*x)))/x) - (b*c^3*(a + b*atan(c*x))^2)/2 - (b*c*(a + b*atan(c*x))^2)/(2*x^2) + (im/3)*c^3*(a + b*atan(c*x))^3 - (a + b*atan(c*x))^3/(3*x^3) + b^3*c^3*log(x) - (b^3*c^3*log(1 + c^2*x^2))/2 - b*c^3*(a + b*atan(c*x))^2*log(2 - 2/(1 - im*c*x)) + im*b^2*c^3*(a + b*atan(c*x))*PolyLog(2, -1 + 2/(1 - im*c*x)) - (b^3*c^3*PolyLog(3, -1 + 2/(1 - im*c*x)))/2]
    @test_int [(a + b*atan(c*x))^3/x^5, x, 16, -(b^3*c^3)/(4*x) - (b^3*c^4*atan(c*x))/4 - (b^2*c^2*(a + b*atan(c*x)))/(4*x^2) + im*b*c^4*(a + b*atan(c*x))^2 - (b*c*(a + b*atan(c*x))^2)/(4*x^3) + (3*b*c^3*(a + b*atan(c*x))^2)/(4*x) + (c^4*(a + b*atan(c*x))^3)/4 - (a + b*atan(c*x))^3/(4*x^4) - 2*b^2*c^4*(a + b*atan(c*x))*log(2 - 2/(1 - im*c*x)) + im*b^3*c^4*PolyLog(2, -1 + 2/(1 - im*c*x))]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [x^1/atan(a*x), x, 0, Unintegrable(x/atan(a*x), x)]
    @test_int [x^0/atan(a*x), x, 0, Unintegrable(1/atan(a*x), x)]
    @test_int [1/(x^1*atan(a*x)), x, 0, Unintegrable(1/(x*atan(a*x)), x)]


    @test_int [x^1/atan(a*x)^2, x, 0, Unintegrable(x/atan(a*x)^2, x)]
    @test_int [x^0/atan(a*x)^2, x, 0, Unintegrable(1/atan(a*x)^2, x)]
    @test_int [1/(x^1*atan(a*x)^2), x, 0, Unintegrable(1/(x*atan(a*x)^2), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*atan(c*x))^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x*sqrt(atan(a*x)), x, 0, Unintegrable(x*sqrt(atan(a*x)), x)]
    @test_int [sqrt(atan(a*x)), x, 0, Unintegrable(sqrt(atan(a*x)), x)]
    @test_int [sqrt(atan(a*x))/x, x, 0, Unintegrable(sqrt(atan(a*x))/x, x)]


    @test_int [x*atan(a*x)^(3/2), x, 0, Unintegrable(x*atan(a*x)^(3/2), x)]
    @test_int [atan(a*x)^(3/2), x, 0, Unintegrable(atan(a*x)^(3/2), x)]
    @test_int [atan(a*x)^(3/2)/x, x, 0, Unintegrable(atan(a*x)^(3/2)/x, x)]


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x/sqrt(atan(a*x)), x, 0, Unintegrable(x/sqrt(atan(a*x)), x)]
    @test_int [1/sqrt(atan(a*x)), x, 0, Unintegrable(1/sqrt(atan(a*x)), x)]
    @test_int [1/(x*sqrt(atan(a*x))), x, 0, Unintegrable(1/(x*sqrt(atan(a*x))), x)]


    @test_int [x/atan(a*x)^(3/2), x, 0, Unintegrable(x/atan(a*x)^(3/2), x)]
    @test_int [1/atan(a*x)^(3/2), x, 0, Unintegrable(atan(a*x)^(-3/2), x)]
    @test_int [1/(x*atan(a*x)^(3/2)), x, 0, Unintegrable(1/(x*atan(a*x)^(3/2)), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^(m/2)*(a+b*atan(c*x))^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(x)*atan(x), x, 12, -((4*sqrt(x))/3) - (1/3)*sqrt(2)*atan(1 - sqrt(2)*sqrt(x)) + (1/3)*sqrt(2)*atan(1 + sqrt(2)*sqrt(x)) + (2/3)*x^(3/2)*atan(x) - log(1 - sqrt(2)*sqrt(x) + x)/(3*sqrt(2)) + log(1 + sqrt(2)*sqrt(x) + x)/(3*sqrt(2))]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*(d*x)^(m/2)*(a+b*atan(c*x))^(p/2)=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x))^p*with*m*symbolic=#


    @test_int [(d*x)^m*(a + b*atan(c*x))^3, x, 0, Unintegrable((d*x)^m*(a + b*atan(c*x))^3, x)]
    @test_int [(d*x)^m*(a + b*atan(c*x))^2, x, 0, Unintegrable((d*x)^m*(a + b*atan(c*x))^2, x)]
    @test_int [(d*x)^m*(a + b*atan(c*x))^1, x, 2, ((d*x)^(1 + m)*(a + b*atan(c*x)))/(d*(1 + m)) - (b*c*(d*x)^(2 + m)*HypergeometricFunctions._₂F₁(1, (2 + m)/2, (4 + m)/2, (-c^2)*x^2))/(d^2*(1 + m)*(2 + m))]
    @test_int [(d*x)^m/(a + b*atan(c*x))^1, x, 0, Unintegrable((d*x)^m/(a + b*atan(c*x)), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x))^p*with*p*symbolic=#


    @test_int [(a + b*atan(c*x))^p, x, 0, Unintegrable((a + b*atan(c*x))^p, x)]


    @test_int [(d*x)^m*(a + b*atan(c*x))^p, x, 0, Unintegrable((d*x)^m*(a + b* atan(c*x))^p, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x^2))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*atan(c*x^2))^p=#


    @test_int [x^7*(a + b*atan(c*x^2)), x, 5, (b*x^2)/(8*c^3) - (b*x^6)/(24*c) - (b*atan(c*x^2))/(8*c^4) + (1/8)*x^8*(a + b*atan(c*x^2))]
    @test_int [x^5*(a + b*atan(c*x^2)), x, 4, -((b*x^4)/(12*c)) + (1/6)*x^6*(a + b*atan(c*x^2)) + (b*log(1 + c^2*x^4))/(12*c^3)]
    @test_int [x^3*(a + b*atan(c*x^2)), x, 4, -((b*x^2)/(4*c)) + (b*atan(c*x^2))/(4*c^2) + (1/4)*x^4*(a + b*atan(c*x^2))]
    @test_int [x^1*(a + b*atan(c*x^2)), x, 2, (1/2)*x^2*(a + b*atan(c*x^2)) - (b*log(1 + c^2*x^4))/(4*c)]
    @test_int [(a + b*atan(c*x^2))/x^1, x, 4, a*log(x) + (1/4)*im*b*PolyLog(2, (-im)*c*x^2) - (1/4)*im*b*PolyLog(2, im*c*x^2)]
    @test_int [(a + b*atan(c*x^2))/x^3, x, 5, -((a + b*atan(c*x^2))/(2*x^2)) + b*c*log(x) - (1/4)*b*c*log(1 + c^2*x^4)]
    @test_int [(a + b*atan(c*x^2))/x^5, x, 4, -((b*c)/(4*x^2)) - (1/4)*b*c^2*atan(c*x^2) - (a + b*atan(c*x^2))/(4*x^4)]
    @test_int [(a + b*atan(c*x^2))/x^7, x, 4, -((b*c)/(12*x^4)) - (a + b*atan(c*x^2))/(6*x^6) - (1/3)*b*c^3*log(x) + (1/12)*b*c^3*log(1 + c^2*x^4)]

    @test_int [x^4*(a + b*atan(c*x^2)), x, 11, -((2*b*x^3)/(15*c)) + (1/5)*x^5*(a + b*atan(c*x^2)) - (b*atan(1 - sqrt(2)*sqrt(c)*x))/(5*sqrt(2)*c^(5/2)) + (b*atan(1 + sqrt(2)*sqrt(c)*x))/(5*sqrt(2)*c^(5/2)) + (b*log(1 - sqrt(2)*sqrt(c)*x + c*x^2))/(10*sqrt(2)*c^(5/2)) - (b*log(1 + sqrt(2)*sqrt(c)*x + c*x^2))/(10*sqrt(2)*c^(5/2))]
    @test_int [x^2*(a + b*atan(c*x^2)), x, 11, -((2*b*x)/(3*c)) + (1/3)*x^3*(a + b*atan(c*x^2)) - (b*atan(1 - sqrt(2)*sqrt(c)*x))/(3*sqrt(2)*c^(3/2)) + (b*atan(1 + sqrt(2)*sqrt(c)*x))/(3*sqrt(2)*c^(3/2)) - (b*log(1 - sqrt(2)*sqrt(c)*x + c*x^2))/(6*sqrt(2)*c^(3/2)) + (b*log(1 + sqrt(2)*sqrt(c)*x + c*x^2))/(6*sqrt(2)*c^(3/2))]
    @test_int [x^0*(a + b*atan(c*x^2)), x, 11, a*x + b*x*atan(c*x^2) + (b*atan(1 - sqrt(2)*sqrt(c)*x))/(sqrt(2)*sqrt(c)) - (b*atan(1 + sqrt(2)*sqrt(c)*x))/(sqrt(2)*sqrt(c)) - (b*log(1 - sqrt(2)*sqrt(c)*x + c*x^2))/(2*sqrt(2)*sqrt(c)) + (b*log(1 + sqrt(2)*sqrt(c)*x + c*x^2))/(2*sqrt(2)*sqrt(c))]
    @test_int [(a + b*atan(c*x^2))/x^2, x, 10, -((a + b*atan(c*x^2))/x) - (b*sqrt(c)*atan(1 - sqrt(2)*sqrt(c)*x))/sqrt(2) + (b*sqrt(c)*atan(1 + sqrt(2)*sqrt(c)*x))/sqrt(2) - (b*sqrt(c)*log(1 - sqrt(2)*sqrt(c)*x + c*x^2))/(2*sqrt(2)) + (b*sqrt(c)*log(1 + sqrt(2)*sqrt(c)*x + c*x^2))/(2*sqrt(2))]
    @test_int [(a + b*atan(c*x^2))/x^4, x, 11, -((2*b*c)/(3*x)) - (a + b*atan(c*x^2))/(3*x^3) + (b*c^(3/2)*atan(1 - sqrt(2)*sqrt(c)*x))/(3*sqrt(2)) - (b*c^(3/2)*atan(1 + sqrt(2)*sqrt(c)*x))/(3*sqrt(2)) - (b*c^(3/2)*log(1 - sqrt(2)*sqrt(c)*x + c*x^2))/(6*sqrt(2)) + (b*c^(3/2)*log(1 + sqrt(2)*sqrt(c)*x + c*x^2))/(6*sqrt(2))]
    @test_int [(a + b*atan(c*x^2))/x^6, x, 11, -((2*b*c)/(15*x^3)) - (a + b*atan(c*x^2))/(5*x^5) + (b*c^(5/2)*atan(1 - sqrt(2)*sqrt(c)*x))/(5*sqrt(2)) - (b*c^(5/2)*atan(1 + sqrt(2)*sqrt(c)*x))/(5*sqrt(2)) + (b*c^(5/2)*log(1 - sqrt(2)*sqrt(c)*x + c*x^2))/(10*sqrt(2)) - (b*c^(5/2)*log(1 + sqrt(2)*sqrt(c)*x + c*x^2))/(10*sqrt(2))]


    @test_int [x^7*(a + b*atan(c*x^2))^2, x, 12, (a*b*x^2)/(4*c^3) + (b^2*x^4)/(24*c^2) + (b^2*x^2*atan(c*x^2))/(4*c^3) - (b*x^6*(a + b*atan(c*x^2)))/(12*c) - (a + b*atan(c*x^2))^2/(8*c^4) + (1/8)*x^8*(a + b*atan(c*x^2))^2 - (b^2*log(1 + c^2*x^4))/(6*c^4)]
    @test_int [x^5*(a + b*atan(c*x^2))^2, x, 10, (b^2*x^2)/(6*c^2) - (b^2*atan(c*x^2))/(6*c^3) - (b*x^4*(a + b*atan(c*x^2)))/(6*c) - (im*(a + b*atan(c*x^2))^2)/(6*c^3) + (1/6)*x^6*(a + b*atan(c*x^2))^2 - (b*(a + b*atan(c*x^2))*log(2/(1 + im*c*x^2)))/(3*c^3) - (im*b^2*PolyLog(2, 1 - 2/(1 + im*c*x^2)))/(6*c^3)]
    @test_int [x^3*(a + b*atan(c*x^2))^2, x, 7, -((a*b*x^2)/(2*c)) - (b^2*x^2*atan(c*x^2))/(2*c) + (a + b*atan(c*x^2))^2/(4*c^2) + (1/4)*x^4*(a + b*atan(c*x^2))^2 + (b^2*log(1 + c^2*x^4))/(4*c^2)]
    @test_int [x^1*(a + b*atan(c*x^2))^2, x, 6, (im*(a + b*atan(c*x^2))^2)/(2*c) + (1/2)*x^2*(a + b*atan(c*x^2))^2 + (b*(a + b*atan(c*x^2))*log(2/(1 + im*c*x^2)))/c + (im*b^2*PolyLog(2, 1 - 2/(1 + im*c*x^2)))/(2*c)]
    @test_int [(a + b*atan(c*x^2))^2/x^1, x, 7, (a + b*atan(c*x^2))^2*atanh(1 - 2/(1 + im*c*x^2)) - (1/2)*im*b*(a + b*atan(c*x^2))*PolyLog(2, 1 - 2/(1 + im*c*x^2)) + (1/2)*im*b*(a + b*atan(c*x^2))*PolyLog(2, -1 + 2/(1 + im*c*x^2)) - (1/4)*b^2*PolyLog(3, 1 - 2/(1 + im*c*x^2)) + (1/4)*b^2*PolyLog(3, -1 + 2/(1 + im*c*x^2))]
    @test_int [(a + b*atan(c*x^2))^2/x^3, x, 5, (-(1/2))*im*c*(a + b*atan(c*x^2))^2 - (a + b*atan(c*x^2))^2/(2*x^2) + b*c*(a + b*atan(c*x^2))*log(2 - 2/(1 - im*c*x^2)) - (1/2)*im*b^2*c*PolyLog(2, -1 + 2/(1 - im*c*x^2))]
    @test_int [(a + b*atan(c*x^2))^2/x^5, x, 9, -((b*c*(a + b*atan(c*x^2)))/(2*x^2)) - (1/4)*c^2*(a + b*atan(c*x^2))^2 - (a + b*atan(c*x^2))^2/(4*x^4) + b^2*c^2*log(x) - (1/4)*b^2*c^2*log(1 + c^2*x^4)]

    @test_int [x^2*(a + b*atan(c*x^2))^2, x, 86, -((4*a*b*x)/(3*c)) + (2/9)*im*a*b*x^3 + (4*(-1)^(3/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x))/(3*c^(3/2)) + ((-1)^(1/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)^2)/(3*c^(3/2)) - (2*(-1)^(1/4)*a*b*atanh((-1)^(3/4)*sqrt(c)*x))/(3*c^(3/2)) - (4*(-1)^(3/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x))/(3*c^(3/2)) - ((-1)^(3/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)^2)/(3*c^(3/2)) - (2*(-1)^(3/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(1/4)*sqrt(c)*x)))/(3*c^(3/2)) + (2*(-1)^(3/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(1/4)*sqrt(c)*x)))/(3*c^(3/2)) - ((-1)^(3/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log((sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)))/(3*c^(3/2)) + (2*(-1)^(3/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(3/4)*sqrt(c)*x)))/(3*c^(3/2)) - (2*(-1)^(3/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(3/4)*sqrt(c)*x)))/(3*c^(3/2)) + ((-1)^(3/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(-((sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x))))/(3*c^(3/2)) + ((-1)^(3/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)))/(3*c^(3/2)) - ((-1)^(3/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log(((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)))/(3*c^(3/2)) - (2*im*b^2*x*log(1 - im*c*x^2))/(3*c) - (1/9)*b^2*x^3*log(1 - im*c*x^2) - ((-1)^(3/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 - im*c*x^2))/(3*c^(3/2)) - (1/9)*im*b*x^3*(2*a + im*b*log(1 - im*c*x^2)) - ((-1)^(1/4)*b*atan((-1)^(3/4)*sqrt(c)*x)*(2*a + im*b*log(1 - im*c*x^2)))/(3*c^(3/2)) + (1/12)*x^3*(2*a + im*b*log(1 - im*c*x^2))^2 + (2*im*b^2*x*log(1 + im*c*x^2))/(3*c) - (1/3)*im*a*b*x^3*log(1 + im*c*x^2) + ((-1)^(3/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2))/(3*c^(3/2)) + ((-1)^(3/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2))/(3*c^(3/2)) + (1/6)*b^2*x^3*log(1 - im*c*x^2)*log(1 + im*c*x^2) - (1/12)*b^2*x^3*log(1 + im*c*x^2)^2 + ((-1)^(1/4)*b^2*PolyLog(2, 1 - 2/(1 - (-1)^(1/4)*sqrt(c)*x)))/(3*c^(3/2)) + ((-1)^(1/4)*b^2*PolyLog(2, 1 - 2/(1 + (-1)^(1/4)*sqrt(c)*x)))/(3*c^(3/2)) - ((-1)^(1/4)*b^2*PolyLog(2, 1 - (sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)))/(6*c^(3/2)) + ((-1)^(3/4)*b^2*PolyLog(2, 1 - 2/(1 - (-1)^(3/4)*sqrt(c)*x)))/(3*c^(3/2)) + ((-1)^(3/4)*b^2*PolyLog(2, 1 - 2/(1 + (-1)^(3/4)*sqrt(c)*x)))/(3*c^(3/2)) - ((-1)^(3/4)*b^2*PolyLog(2, 1 + (sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)))/(6*c^(3/2)) - ((-1)^(3/4)*b^2*PolyLog(2, 1 - ((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)))/(6*c^(3/2)) - ((-1)^(1/4)*b^2*PolyLog(2, 1 - ((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)))/(6*c^(3/2))]
    @test_int [x^0*(a + b*atan(c*x^2))^2, x, 69, a^2*x - (2*(-1)^(3/4)*a*b*atan((-1)^(3/4)*sqrt(c)*x))/sqrt(c) + ((-1)^(3/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)^2)/sqrt(c) + (2*(-1)^(3/4)*a*b*atanh((-1)^(3/4)*sqrt(c)*x))/sqrt(c) - ((-1)^(1/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)^2)/sqrt(c) + (2*(-1)^(1/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(1/4)*sqrt(c)*x)))/sqrt(c) - (2*(-1)^(1/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(1/4)*sqrt(c)*x)))/sqrt(c) + ((-1)^(1/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log((sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)))/sqrt(c) + (2*(-1)^(1/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(3/4)*sqrt(c)*x)))/sqrt(c) - (2*(-1)^(1/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(3/4)*sqrt(c)*x)))/sqrt(c) + ((-1)^(1/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(-((sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x))))/sqrt(c) + ((-1)^(1/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)))/sqrt(c) + ((-1)^(1/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log(((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)))/sqrt(c) + im*a*b*x*log(1 - im*c*x^2) + ((-1)^(1/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log(1 - im*c*x^2))/sqrt(c) - ((-1)^(1/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 - im*c*x^2))/sqrt(c) - (1/4)*b^2*x*log(1 - im*c*x^2)^2 - im*a*b*x*log(1 + im*c*x^2) - ((-1)^(1/4)*b^2*atan((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2))/sqrt(c) + ((-1)^(1/4)*b^2*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2))/sqrt(c) + (1/2)*b^2*x*log(1 - im*c*x^2)*log(1 + im*c*x^2) - (1/4)*b^2*x*log(1 + im*c*x^2)^2 + ((-1)^(3/4)*b^2*PolyLog(2, 1 - 2/(1 - (-1)^(1/4)*sqrt(c)*x)))/sqrt(c) + ((-1)^(3/4)*b^2*PolyLog(2, 1 - 2/(1 + (-1)^(1/4)*sqrt(c)*x)))/sqrt(c) - ((-1)^(3/4)*b^2*PolyLog(2, 1 - (sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)))/(2*sqrt(c)) + ((-1)^(1/4)*b^2*PolyLog(2, 1 - 2/(1 - (-1)^(3/4)*sqrt(c)*x)))/sqrt(c) + ((-1)^(1/4)*b^2*PolyLog(2, 1 - 2/(1 + (-1)^(3/4)*sqrt(c)*x)))/sqrt(c) - ((-1)^(1/4)*b^2*PolyLog(2, 1 + (sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)))/(2*sqrt(c)) - ((-1)^(1/4)*b^2*PolyLog(2, 1 - ((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)))/(2*sqrt(c)) - ((-1)^(3/4)*b^2*PolyLog(2, 1 - ((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)))/(2*sqrt(c))]
    @test_int [(a + b*atan(c*x^2))^2/x^2, x, 47, (-1)^(1/4)*b^2*sqrt(c)*atan((-1)^(3/4)*sqrt(c)*x)^2 - 2*(-1)^(1/4)*a*b*sqrt(c)*atanh((-1)^(3/4)*sqrt(c)*x) - (-1)^(3/4)*b^2*sqrt(c)*atanh((-1)^(3/4)*sqrt(c)*x)^2 - 2*(-1)^(3/4)*b^2*sqrt(c)*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(1/4)*sqrt(c)*x)) + 2*(-1)^(3/4)*b^2*sqrt(c)*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(1/4)*sqrt(c)*x)) - (-1)^(3/4)*b^2*sqrt(c)*atan((-1)^(3/4)*sqrt(c)*x)*log((sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)) + 2*(-1)^(3/4)*b^2*sqrt(c)*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(3/4)*sqrt(c)*x)) - 2*(-1)^(3/4)*b^2*sqrt(c)*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(3/4)*sqrt(c)*x)) + (-1)^(3/4)*b^2*sqrt(c)*atanh((-1)^(3/4)*sqrt(c)*x)*log(-((sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x))) + (-1)^(3/4)*b^2*sqrt(c)*atanh((-1)^(3/4)*sqrt(c)*x)*log(((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)) - (-1)^(3/4)*b^2*sqrt(c)*atan((-1)^(3/4)*sqrt(c)*x)*log(((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)) - (-1)^(3/4)*b^2*sqrt(c)*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 - im*c*x^2) - (-1)^(1/4)*b*sqrt(c)*atan((-1)^(3/4)*sqrt(c)*x)*(2*a + im*b*log(1 - im*c*x^2)) - (2*a + im*b*log(1 - im*c*x^2))^2/(4*x) + (im*a*b*log(1 + im*c*x^2))/x + (-1)^(3/4)*b^2*sqrt(c)*atan((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2) + (-1)^(3/4)*b^2*sqrt(c)*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2) - (b^2*log(1 - im*c*x^2)*log(1 + im*c*x^2))/(2*x) + (b^2*log(1 + im*c*x^2)^2)/(4*x) + (-1)^(1/4)*b^2*sqrt(c)*PolyLog(2, 1 - 2/(1 - (-1)^(1/4)*sqrt(c)*x)) + (-1)^(1/4)*b^2*sqrt(c)*PolyLog(2, 1 - 2/(1 + (-1)^(1/4)*sqrt(c)*x)) - (1/2)*(-1)^(1/4)*b^2*sqrt(c)*PolyLog(2, 1 - (sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)) + (-1)^(3/4)*b^2*sqrt(c)*PolyLog(2, 1 - 2/(1 - (-1)^(3/4)*sqrt(c)*x)) + (-1)^(3/4)*b^2*sqrt(c)*PolyLog(2, 1 - 2/(1 + (-1)^(3/4)*sqrt(c)*x)) - (1/2)*(-1)^(3/4)*b^2*sqrt(c)*PolyLog(2, 1 + (sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)) - (1/2)*(-1)^(3/4)*b^2*sqrt(c)*PolyLog(2, 1 - ((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)) - (1/2)*(-1)^(1/4)*b^2*sqrt(c)*PolyLog(2, 1 - ((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x))]
    @test_int [(a + b*atan(c*x^2))^2/x^4, x, 64, -((2*a*b*c)/(3*x)) - (4/3)*(-1)^(1/4)*b^2*c^(3/2)*atan((-1)^(3/4)*sqrt(c)*x) + (1/3)*(-1)^(3/4)*b^2*c^(3/2)*atan((-1)^(3/4)*sqrt(c)*x)^2 + (2/3)*(-1)^(3/4)*a*b*c^(3/2)*atanh((-1)^(3/4)*sqrt(c)*x) - (4/3)*(-1)^(1/4)*b^2*c^(3/2)*atanh((-1)^(3/4)*sqrt(c)*x) - (1/3)*(-1)^(1/4)*b^2*c^(3/2)*atanh((-1)^(3/4)*sqrt(c)*x)^2 + (2/3)*(-1)^(1/4)*b^2*c^(3/2)*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(1/4)*sqrt(c)*x)) - (2/3)*(-1)^(1/4)*b^2*c^(3/2)*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(1/4)*sqrt(c)*x)) + (1/3)*(-1)^(1/4)*b^2*c^(3/2)*atan((-1)^(3/4)*sqrt(c)*x)*log((sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)) + (2/3)*(-1)^(1/4)*b^2*c^(3/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(3/4)*sqrt(c)*x)) - (2/3)*(-1)^(1/4)*b^2*c^(3/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(3/4)*sqrt(c)*x)) + (1/3)*(-1)^(1/4)*b^2*c^(3/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(-((sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x))) + (1/3)*(-1)^(1/4)*b^2*c^(3/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)) + (1/3)*(-1)^(1/4)*b^2*c^(3/2)*atan((-1)^(3/4)*sqrt(c)*x)*log(((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)) - (im*b^2*c*log(1 - im*c*x^2))/(3*x) - (1/3)*(-1)^(1/4)*b^2*c^(3/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 - im*c*x^2) - (b*c*(2*a + im*b*log(1 - im*c*x^2)))/(3*x) - (1/3)*(-1)^(3/4)*b*c^(3/2)*atan((-1)^(3/4)*sqrt(c)*x)*(2*a + im*b*log(1 - im*c*x^2)) - (2*a + im*b*log(1 - im*c*x^2))^2/(12*x^3) + (im*a*b*log(1 + im*c*x^2))/(3*x^3) + (2*im*b^2*c*log(1 + im*c*x^2))/(3*x) - (1/3)*(-1)^(1/4)*b^2*c^(3/2)*atan((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2) + (1/3)*(-1)^(1/4)*b^2*c^(3/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2) - (b^2*log(1 - im*c*x^2)*log(1 + im*c*x^2))/(6*x^3) + (b^2*log(1 + im*c*x^2)^2)/(12*x^3) + (1/3)*(-1)^(3/4)*b^2*c^(3/2)*PolyLog(2, 1 - 2/(1 - (-1)^(1/4)*sqrt(c)*x)) + (1/3)*(-1)^(3/4)*b^2*c^(3/2)*PolyLog(2, 1 - 2/(1 + (-1)^(1/4)*sqrt(c)*x)) - (1/6)*(-1)^(3/4)*b^2*c^(3/2)*PolyLog(2, 1 - (sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)) + (1/3)*(-1)^(1/4)*b^2*c^(3/2)*PolyLog(2, 1 - 2/(1 - (-1)^(3/4)*sqrt(c)*x)) + (1/3)*(-1)^(1/4)*b^2*c^(3/2)*PolyLog(2, 1 - 2/(1 + (-1)^(3/4)*sqrt(c)*x)) - (1/6)*(-1)^(1/4)*b^2*c^(3/2)*PolyLog(2, 1 + (sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)) - (1/6)*(-1)^(1/4)*b^2*c^(3/2)*PolyLog(2, 1 - ((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)) - (1/6)*(-1)^(3/4)*b^2*c^(3/2)*PolyLog(2, 1 - ((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x))]
    @test_int [(a + b*atan(c*x^2))^2/x^6, x, 77, -((2*a*b*c)/(15*x^3)) + (2*im*a*b*c^2)/(5*x) - (8*b^2*c^2)/(15*x) - (4/15)*(-1)^(3/4)*b^2*c^(5/2)*atan((-1)^(3/4)*sqrt(c)*x) - (1/5)*(-1)^(1/4)*b^2*c^(5/2)*atan((-1)^(3/4)*sqrt(c)*x)^2 + (2/5)*(-1)^(1/4)*a*b*c^(5/2)*atanh((-1)^(3/4)*sqrt(c)*x) + (4/15)*(-1)^(3/4)*b^2*c^(5/2)*atanh((-1)^(3/4)*sqrt(c)*x) + (1/5)*(-1)^(3/4)*b^2*c^(5/2)*atanh((-1)^(3/4)*sqrt(c)*x)^2 + (2/5)*(-1)^(3/4)*b^2*c^(5/2)*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(1/4)*sqrt(c)*x)) - (2/5)*(-1)^(3/4)*b^2*c^(5/2)*atan((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(1/4)*sqrt(c)*x)) + (1/5)*(-1)^(3/4)*b^2*c^(5/2)*atan((-1)^(3/4)*sqrt(c)*x)*log((sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)) - (2/5)*(-1)^(3/4)*b^2*c^(5/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 - (-1)^(3/4)*sqrt(c)*x)) + (2/5)*(-1)^(3/4)*b^2*c^(5/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(2/(1 + (-1)^(3/4)*sqrt(c)*x)) - (1/5)*(-1)^(3/4)*b^2*c^(5/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(-((sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x))) - (1/5)*(-1)^(3/4)*b^2*c^(5/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)) + (1/5)*(-1)^(3/4)*b^2*c^(5/2)*atan((-1)^(3/4)*sqrt(c)*x)*log(((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)) - (im*b^2*c*log(1 - im*c*x^2))/(15*x^3) - (b^2*c^2*log(1 - im*c*x^2))/(5*x) + (1/5)*(-1)^(3/4)*b^2*c^(5/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 - im*c*x^2) - (b*c*(2*a + im*b*log(1 - im*c*x^2)))/(15*x^3) - (im*b*c^2*(2*a + im*b*log(1 - im*c*x^2)))/(5*x) + (1/5)*(-1)^(1/4)*b*c^(5/2)*atan((-1)^(3/4)*sqrt(c)*x)*(2*a + im*b*log(1 - im*c*x^2)) - (2*a + im*b*log(1 - im*c*x^2))^2/(20*x^5) + (im*a*b*log(1 + im*c*x^2))/(5*x^5) + (2*im*b^2*c*log(1 + im*c*x^2))/(15*x^3) - (1/5)*(-1)^(3/4)*b^2*c^(5/2)*atan((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2) - (1/5)*(-1)^(3/4)*b^2*c^(5/2)*atanh((-1)^(3/4)*sqrt(c)*x)*log(1 + im*c*x^2) - (b^2*log(1 - im*c*x^2)*log(1 + im*c*x^2))/(10*x^5) + (b^2*log(1 + im*c*x^2)^2)/(20*x^5) - (1/5)*(-1)^(1/4)*b^2*c^(5/2)*PolyLog(2, 1 - 2/(1 - (-1)^(1/4)*sqrt(c)*x)) - (1/5)*(-1)^(1/4)*b^2*c^(5/2)*PolyLog(2, 1 - 2/(1 + (-1)^(1/4)*sqrt(c)*x)) + (1/10)*(-1)^(1/4)*b^2*c^(5/2)*PolyLog(2, 1 - (sqrt(2)*((-1)^(1/4) + sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x)) - (1/5)*(-1)^(3/4)*b^2*c^(5/2)*PolyLog(2, 1 - 2/(1 - (-1)^(3/4)*sqrt(c)*x)) - (1/5)*(-1)^(3/4)*b^2*c^(5/2)*PolyLog(2, 1 - 2/(1 + (-1)^(3/4)*sqrt(c)*x)) + (1/10)*(-1)^(3/4)*b^2*c^(5/2)*PolyLog(2, 1 + (sqrt(2)*((-1)^(3/4) + sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)) + (1/10)*(-1)^(3/4)*b^2*c^(5/2)*PolyLog(2, 1 - ((1 + im)*(1 + (-1)^(1/4)*sqrt(c)*x))/(1 + (-1)^(3/4)*sqrt(c)*x)) + (1/10)*(-1)^(1/4)*b^2*c^(5/2)*PolyLog(2, 1 - ((1 - im)*(1 + (-1)^(3/4)*sqrt(c)*x))/(1 + (-1)^(1/4)*sqrt(c)*x))]


    @test_int [x^3*(a + b*atan(c*x^2))^3, x, 9, -((3*im*b*(a + b*atan(c*x^2))^2)/(4*c^2)) - (3*b*x^2*(a + b*atan(c*x^2))^2)/(4*c) + (a + b*atan(c*x^2))^3/(4*c^2) + (1/4)*x^4*(a + b*atan(c*x^2))^3 - (3*b^2*(a + b*atan(c*x^2))*log(2/(1 + im*c*x^2)))/(2*c^2) - (3*im*b^3*PolyLog(2, 1 - 2/(1 + im*c*x^2)))/(4*c^2)]
    @test_int [x^1*(a + b*atan(c*x^2))^3, x, 6, (im*(a + b*atan(c*x^2))^3)/(2*c) + (1/2)*x^2*(a + b*atan(c*x^2))^3 + (3*b*(a + b*atan(c*x^2))^2*log(2/(1 + im*c*x^2)))/(2*c) + (3*im*b^2*(a + b*atan(c*x^2))*PolyLog(2, 1 - 2/(1 + im*c*x^2)))/(2*c) + (3*b^3*PolyLog(3, 1 - 2/(1 + im*c*x^2)))/(4*c)]
    @test_int [(a + b*atan(c*x^2))^3/x^1, x, 9, (a + b*atan(c*x^2))^3*atanh(1 - 2/(1 + im*c*x^2)) - (3/4)*im*b*(a + b*atan(c*x^2))^2*PolyLog(2, 1 - 2/(1 + im*c*x^2)) + (3/4)*im*b*(a + b*atan(c*x^2))^2*PolyLog(2, -1 + 2/(1 + im*c*x^2)) - (3/4)*b^2*(a + b*atan(c*x^2))*PolyLog(3, 1 - 2/(1 + im*c*x^2)) + (3/4)*b^2*(a + b*atan(c*x^2))*PolyLog(3, -1 + 2/(1 + im*c*x^2)) + (3/8)*im*b^3*PolyLog(4, 1 - 2/(1 + im*c*x^2)) - (3/8)*im*b^3*PolyLog(4, -1 + 2/(1 + im*c*x^2))]
    @test_int [(a + b*atan(c*x^2))^3/x^3, x, 6, (-(1/2))*im*c*(a + b*atan(c*x^2))^3 - (a + b*atan(c*x^2))^3/(2*x^2) + (3/2)*b*c*(a + b*atan(c*x^2))^2*log(2 - 2/(1 - im*c*x^2)) - (3/2)*im*b^2*c*(a + b*atan(c*x^2))*PolyLog(2, -1 + 2/(1 - im*c*x^2)) + (3/4)*b^3*c*PolyLog(3, -1 + 2/(1 - im*c*x^2))]
    @test_int [(a + b*atan(c*x^2))^3/x^5, x, 8, (-(3/4))*im*b*c^2*(a + b*atan(c*x^2))^2 - (3*b*c*(a + b*atan(c*x^2))^2)/(4*x^2) - (1/4)*c^2*(a + b*atan(c*x^2))^3 - (a + b*atan(c*x^2))^3/(4*x^4) + (3/2)*b^2*c^2*(a + b*atan(c*x^2))*log(2 - 2/(1 - im*c*x^2)) - (3/4)*im*b^3*c^2*PolyLog(2, -1 + 2/(1 - im*c*x^2))]

    #= [x^2*(a + b*atan(c*x^2))^3, x, 86, 0]
    @test_int [x^0*(a + b*atan(c*x^2))^3, x, 69, 0]
    @test_int [(a + b*atan(c*x^2))^3/x^2, x, 47, 0]
    @test_int [(a + b*atan(c*x^2))^3/x^4, x, 64, 0]
    @test_int [(a + b*atan(c*x^2))^3/x^6, x, 77, 0] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x^2))^p*when*m*symbolic=#


    @test_int [(d*x)^m*(a + b*atan(c*x^2))^3, x, 0, Unintegrable((d*x)^m*(a + b*atan(c*x^2))^3, x)]
    @test_int [(d*x)^m*(a + b*atan(c*x^2))^2, x, 0, Unintegrable((d*x)^m*(a + b*atan(c*x^2))^2, x)]
    @test_int [(d*x)^m*(a + b*atan(c*x^2))^1, x, 2, ((d*x)^(1 + m)*(a + b*atan(c*x^2)))/(d*(1 + m)) - (2*b*c*(d*x)^(3 + m)*HypergeometricFunctions._₂F₁(1, (3 + m)/4, (7 + m)/4, (-c^2)*x^4))/(d^3*(1 + m)*(3 + m))]
    @test_int [(d*x)^m/(a + b*atan(c*x^2))^1, x, 0, Unintegrable((d*x)^m/(a + b*atan(c*x^2)), x)]
    @test_int [(d*x)^m/(a + b*atan(c*x^2))^2, x, 0, Unintegrable((d*x)^m/(a + b*atan(c*x^2))^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x^3))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*atan(c*x^3))^p=#


    @test_int [x^11*(a + b*atan(c*x^3)), x, 5, (b*x^3)/(12*c^3) - (b*x^9)/(36*c) - (b*atan(c*x^3))/(12*c^4) + (1/12)*x^12*(a + b*atan(c*x^3))]
    @test_int [x^8*(a + b*atan(c*x^3)), x, 4, -((b*x^6)/(18*c)) + (1/9)*x^9*(a + b*atan(c*x^3)) + (b*log(1 + c^2*x^6))/(18*c^3)]
    @test_int [x^5*(a + b*atan(c*x^3)), x, 4, -((b*x^3)/(6*c)) + (b*atan(c*x^3))/(6*c^2) + (1/6)*x^6*(a + b*atan(c*x^3))]
    @test_int [x^2*(a + b*atan(c*x^3)), x, 2, (1/3)*x^3*(a + b*atan(c*x^3)) - (b*log(1 + c^2*x^6))/(6*c)]
    @test_int [(a + b*atan(c*x^3))/x^1, x, 4, a*log(x) + (1/6)*im*b*PolyLog(2, (-im)*c*x^3) - (1/6)*im*b*PolyLog(2, im*c*x^3)]
    @test_int [(a + b*atan(c*x^3))/x^4, x, 5, -((a + b*atan(c*x^3))/(3*x^3)) + b*c*log(x) - (1/6)*b*c*log(1 + c^2*x^6)]
    @test_int [(a + b*atan(c*x^3))/x^7, x, 4, -((b*c)/(6*x^3)) - (1/6)*b*c^2*atan(c*x^3) - (a + b*atan(c*x^3))/(6*x^6)]
    @test_int [(a + b*atan(c*x^3))/x^10, x, 4, -((b*c)/(18*x^6)) - (a + b*atan(c*x^3))/(9*x^9) - (1/3)*b*c^3*log(x) + (1/18)*b*c^3*log(1 + c^2*x^6)]

    @test_int [x^3*(a + b*atan(c*x^3)), x, 12, -((3*b*x)/(4*c)) + (b*atan(c^(1/3)*x))/(4*c^(4/3)) + (1/4)*x^4*(a + b*atan(c*x^3)) - (b*atan(sqrt(3) - 2*c^(1/3)*x))/(8*c^(4/3)) + (b*atan(sqrt(3) + 2*c^(1/3)*x))/(8*c^(4/3)) - (sqrt(3)*b*log(1 - sqrt(3)*c^(1/3)*x + c^(2/3)*x^2))/(16*c^(4/3)) + (sqrt(3)*b*log(1 + sqrt(3)*c^(1/3)*x + c^(2/3)*x^2))/(16*c^(4/3))]
    @test_int [x^0*(a + b*atan(c*x^3)), x, 9, a*x + b*x*atan(c*x^3) + (sqrt(3)*b*atan((1 - 2*c^(2/3)*x^2)/sqrt(3)))/(2*c^(1/3)) + (b*log(1 + c^(2/3)*x^2))/(2*c^(1/3)) - (b*log(1 - c^(2/3)*x^2 + c^(4/3)*x^4))/(4*c^(1/3))]
    @test_int [(a + b*atan(c*x^3))/x^3, x, 11, (1/2)*b*c^(2/3)*atan(c^(1/3)*x) - (a + b*atan(c*x^3))/(2*x^2) - (1/4)*b*c^(2/3)*atan(sqrt(3) - 2*c^(1/3)*x) + (1/4)*b*c^(2/3)*atan(sqrt(3) + 2*c^(1/3)*x) - (1/8)*sqrt(3)*b*c^(2/3)*log(1 - sqrt(3)*c^(1/3)*x + c^(2/3)*x^2) + (1/8)*sqrt(3)*b*c^(2/3)*log(1 + sqrt(3)*c^(1/3)*x + c^(2/3)*x^2)]
    @test_int [(a + b*atan(c*x^3))/x^6, x, 9, -((3*b*c)/(10*x^2)) - (a + b*atan(c*x^3))/(5*x^5) + (1/10)*sqrt(3)*b*c^(5/3)*atan((1 - 2*c^(2/3)*x^2)/sqrt(3)) + (1/10)*b*c^(5/3)*log(1 + c^(2/3)*x^2) - (1/20)*b*c^(5/3)*log(1 - c^(2/3)*x^2 + c^(4/3)*x^4)]

    @test_int [x^7*(a + b*atan(c*x^3)), x, 12, -((3*b*x^5)/(40*c)) + (b*atan(c^(1/3)*x))/(8*c^(8/3)) + (1/8)*x^8*(a + b*atan(c*x^3)) - (b*atan(sqrt(3) - 2*c^(1/3)*x))/(16*c^(8/3)) + (b*atan(sqrt(3) + 2*c^(1/3)*x))/(16*c^(8/3)) + (sqrt(3)*b*log(1 - sqrt(3)*c^(1/3)*x + c^(2/3)*x^2))/(32*c^(8/3)) - (sqrt(3)*b*log(1 + sqrt(3)*c^(1/3)*x + c^(2/3)*x^2))/(32*c^(8/3))]
    @test_int [x^4*(a + b*atan(c*x^3)), x, 9, -((3*b*x^2)/(10*c)) + (1/5)*x^5*(a + b*atan(c*x^3)) - (sqrt(3)*b*atan((1 - 2*c^(2/3)*x^2)/sqrt(3)))/(10*c^(5/3)) + (b*log(1 + c^(2/3)*x^2))/(10*c^(5/3)) - (b*log(1 - c^(2/3)*x^2 + c^(4/3)*x^4))/(20*c^(5/3))]
    @test_int [x^1*(a + b*atan(c*x^3)), x, 11, -((b*atan(c^(1/3)*x))/(2*c^(2/3))) + (1/2)*x^2*(a + b*atan(c*x^3)) + (b*atan(sqrt(3) - 2*c^(1/3)*x))/(4*c^(2/3)) - (b*atan(sqrt(3) + 2*c^(1/3)*x))/(4*c^(2/3)) - (sqrt(3)*b*log(1 - sqrt(3)*c^(1/3)*x + c^(2/3)*x^2))/(8*c^(2/3)) + (sqrt(3)*b*log(1 + sqrt(3)*c^(1/3)*x + c^(2/3)*x^2))/(8*c^(2/3))]
    @test_int [(a + b*atan(c*x^3))/x^2, x, 8, -((a + b*atan(c*x^3))/x) - (1/2)*sqrt(3)*b*c^(1/3)*atan((1 - 2*c^(2/3)*x^2)/sqrt(3)) + (1/2)*b*c^(1/3)*log(1 + c^(2/3)*x^2) - (1/4)*b*c^(1/3)*log(1 - c^(2/3)*x^2 + c^(4/3)*x^4)]
    @test_int [(a + b*atan(c*x^3))/x^5, x, 12, -((3*b*c)/(4*x)) - (1/4)*b*c^(4/3)*atan(c^(1/3)*x) - (a + b*atan(c*x^3))/(4*x^4) + (1/8)*b*c^(4/3)*atan(sqrt(3) - 2*c^(1/3)*x) - (1/8)*b*c^(4/3)*atan(sqrt(3) + 2*c^(1/3)*x) - (1/16)*sqrt(3)*b*c^(4/3)*log(1 - sqrt(3)*c^(1/3)*x + c^(2/3)*x^2) + (1/16)*sqrt(3)*b*c^(4/3)*log(1 + sqrt(3)*c^(1/3)*x + c^(2/3)*x^2)]


    @test_int [x^11*(a + b*atan(c*x^3))^2, x, 12, (a*b*x^3)/(6*c^3) + (b^2*x^6)/(36*c^2) + (b^2*x^3*atan(c*x^3))/(6*c^3) - (b*x^9*(a + b*atan(c*x^3)))/(18*c) - (a + b*atan(c*x^3))^2/(12*c^4) + (1/12)*x^12*(a + b*atan(c*x^3))^2 - (b^2*log(1 + c^2*x^6))/(9*c^4)]
    @test_int [x^8*(a + b*atan(c*x^3))^2, x, 10, (b^2*x^3)/(9*c^2) - (b^2*atan(c*x^3))/(9*c^3) - (b*x^6*(a + b*atan(c*x^3)))/(9*c) - (im*(a + b*atan(c*x^3))^2)/(9*c^3) + (1/9)*x^9*(a + b*atan(c*x^3))^2 - (2*b*(a + b*atan(c*x^3))*log(2/(1 + im*c*x^3)))/(9*c^3) - (im*b^2*PolyLog(2, 1 - 2/(1 + im*c*x^3)))/(9*c^3)]
    @test_int [x^5*(a + b*atan(c*x^3))^2, x, 7, -((a*b*x^3)/(3*c)) - (b^2*x^3*atan(c*x^3))/(3*c) + (a + b*atan(c*x^3))^2/(6*c^2) + (1/6)*x^6*(a + b*atan(c*x^3))^2 + (b^2*log(1 + c^2*x^6))/(6*c^2)]
    @test_int [x^2*(a + b*atan(c*x^3))^2, x, 6, (im*(a + b*atan(c*x^3))^2)/(3*c) + (1/3)*x^3*(a + b*atan(c*x^3))^2 + (2*b*(a + b*atan(c*x^3))*log(2/(1 + im*c*x^3)))/(3*c) + (im*b^2*PolyLog(2, 1 - 2/(1 + im*c*x^3)))/(3*c)]
    @test_int [(a + b*atan(c*x^3))^2/x^1, x, 7, (2/3)*(a + b*atan(c*x^3))^2*atanh(1 - 2/(1 + im*c*x^3)) - (1/3)*im*b*(a + b*atan(c*x^3))*PolyLog(2, 1 - 2/(1 + im*c*x^3)) + (1/3)*im*b*(a + b*atan(c*x^3))*PolyLog(2, -1 + 2/(1 + im*c*x^3)) - (1/6)*b^2*PolyLog(3, 1 - 2/(1 + im*c*x^3)) + (1/6)*b^2*PolyLog(3, -1 + 2/(1 + im*c*x^3))]
    @test_int [(a + b*atan(c*x^3))^2/x^4, x, 5, (-(1/3))*im*c*(a + b*atan(c*x^3))^2 - (a + b*atan(c*x^3))^2/(3*x^3) + (2/3)*b*c*(a + b*atan(c*x^3))*log(2 - 2/(1 - im*c*x^3)) - (1/3)*im*b^2*c*PolyLog(2, -1 + 2/(1 - im*c*x^3))]
    @test_int [(a + b*atan(c*x^3))^2/x^7, x, 9, -((b*c*(a + b*atan(c*x^3)))/(3*x^3)) - (1/6)*c^2*(a + b*atan(c*x^3))^2 - (a + b*atan(c*x^3))^2/(6*x^6) + b^2*c^2*log(x) - (1/6)*b^2*c^2*log(1 + c^2*x^6)]
    @test_int [(a + b*atan(c*x^3))^2/x^10, x, 9, -((b^2*c^2)/(9*x^3)) - (1/9)*b^2*c^3*atan(c*x^3) - (b*c*(a + b*atan(c*x^3)))/(9*x^6) + (1/9)*im*c^3*(a + b*atan(c*x^3))^2 - (a + b*atan(c*x^3))^2/(9*x^9) - (2/9)*b*c^3*(a + b*atan(c*x^3))*log(2 - 2/(1 - im*c*x^3)) + (1/9)*im*b^2*c^3*PolyLog(2, -1 + 2/(1 - im*c*x^3))]

    #= [x^3*(a + b*atan(c*x^3))^2, x, 44, 0]
    @test_int [x^0*(a + b*atan(c*x^3))^2, x, 69, 0]
    @test_int [(a + b*atan(c*x^3))^2/x^3, x, 24, 0]
    @test_int [(a + b*atan(c*x^3))^2/x^6, x, 77, 0]

    @test_int [x^1*(a + b*atan(c*x^3))^2, x, 28, 0]
    @test_int [(a + b*atan(c*x^3))^2/x^2, x, 47, 0]
    @test_int [(a + b*atan(c*x^3))^2/x^5, x, 46, 0] =#


    @test_int [x^8*(a + b*atan(c*x^3))^3, x, 13, (a*b^2*x^3)/(3*c^2) + (b^3*x^3*atan(c*x^3))/(3*c^2) - (b*(a + b*atan(c*x^3))^2)/(6*c^3) - (b*x^6*(a + b*atan(c*x^3))^2)/(6*c) - (im*(a + b*atan(c*x^3))^3)/(9*c^3) + (1/9)*x^9*(a + b*atan(c*x^3))^3 - (b*(a + b*atan(c*x^3))^2*log(2/(1 + im*c*x^3)))/(3*c^3) - (b^3*log(1 + c^2*x^6))/(6*c^3) - (im*b^2*(a + b*atan(c*x^3))*PolyLog(2, 1 - 2/(1 + im*c*x^3)))/(3*c^3) - (b^3*PolyLog(3, 1 - 2/(1 + im*c*x^3)))/(6*c^3)]
    @test_int [x^5*(a + b*atan(c*x^3))^3, x, 9, -((im*b*(a + b*atan(c*x^3))^2)/(2*c^2)) - (b*x^3*(a + b*atan(c*x^3))^2)/(2*c) + (a + b*atan(c*x^3))^3/(6*c^2) + (1/6)*x^6*(a + b*atan(c*x^3))^3 - (b^2*(a + b*atan(c*x^3))*log(2/(1 + im*c*x^3)))/c^2 - (im*b^3*PolyLog(2, 1 - 2/(1 + im*c*x^3)))/(2*c^2)]
    @test_int [x^2*(a + b*atan(c*x^3))^3, x, 6, (im*(a + b*atan(c*x^3))^3)/(3*c) + (1/3)*x^3*(a + b*atan(c*x^3))^3 + (b*(a + b*atan(c*x^3))^2*log(2/(1 + im*c*x^3)))/c + (im*b^2*(a + b*atan(c*x^3))*PolyLog(2, 1 - 2/(1 + im*c*x^3)))/c + (b^3*PolyLog(3, 1 - 2/(1 + im*c*x^3)))/(2*c)]
    @test_int [(a + b*atan(c*x^3))^3/x^1, x, 9, (2/3)*(a + b*atan(c*x^3))^3*atanh(1 - 2/(1 + im*c*x^3)) - (1/2)*im*b*(a + b*atan(c*x^3))^2*PolyLog(2, 1 - 2/(1 + im*c*x^3)) + (1/2)*im*b*(a + b*atan(c*x^3))^2*PolyLog(2, -1 + 2/(1 + im*c*x^3)) - (1/2)*b^2*(a + b*atan(c*x^3))*PolyLog(3, 1 - 2/(1 + im*c*x^3)) + (1/2)*b^2*(a + b*atan(c*x^3))*PolyLog(3, -1 + 2/(1 + im*c*x^3)) + (1/4)*im*b^3*PolyLog(4, 1 - 2/(1 + im*c*x^3)) - (1/4)*im*b^3*PolyLog(4, -1 + 2/(1 + im*c*x^3))]
    @test_int [(a + b*atan(c*x^3))^3/x^4, x, 6, (-(1/3))*im*c*(a + b*atan(c*x^3))^3 - (a + b*atan(c*x^3))^3/(3*x^3) + b*c*(a + b*atan(c*x^3))^2*log(2 - 2/(1 - im*c*x^3)) - im*b^2*c*(a + b*atan(c*x^3))*PolyLog(2, -1 + 2/(1 - im*c*x^3)) + (1/2)*b^3*c*PolyLog(3, -1 + 2/(1 - im*c*x^3))]
    @test_int [(a + b*atan(c*x^3))^3/x^7, x, 8, (-(1/2))*im*b*c^2*(a + b*atan(c*x^3))^2 - (b*c*(a + b*atan(c*x^3))^2)/(2*x^3) - (1/6)*c^2*(a + b*atan(c*x^3))^3 - (a + b*atan(c*x^3))^3/(6*x^6) + b^2*c^2*(a + b*atan(c*x^3))*log(2 - 2/(1 - im*c*x^3)) - (1/2)*im*b^3*c^2*PolyLog(2, -1 + 2/(1 - im*c*x^3))]

    #= [x^3*(a + b*atan(c*x^3))^3, x, 44, 0]
    @test_int [x^0*(a + b*atan(c*x^3))^3, x, 69, 0]
    @test_int [(a + b*atan(c*x^3))^3/x^3, x, 24, 0]
    @test_int [(a + b*atan(c*x^3))^3/x^6, x, 77, 0]

    @test_int [x^1*(a + b*atan(c*x^3))^3, x, 28, 0]
    @test_int [(a + b*atan(c*x^3))^3/x^2, x, 47, 0]
    @test_int [(a + b*atan(c*x^3))^3/x^5, x, 46, 0] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x^3))^p*when*m*symbolic=#


    @test_int [(d*x)^m*(a + b*atan(c*x^3))^3, x, 0, Unintegrable((d*x)^m*(a + b*atan(c*x^3))^3, x)]
    @test_int [(d*x)^m*(a + b*atan(c*x^3))^2, x, 0, Unintegrable((d*x)^m*(a + b*atan(c*x^3))^2, x)]
    @test_int [(d*x)^m*(a + b*atan(c*x^3))^1, x, 2, ((d*x)^(1 + m)*(a + b*atan(c*x^3)))/(d*(1 + m)) - (3*b*c*(d*x)^(4 + m)*HypergeometricFunctions._₂F₁(1, (4 + m)/6, (10 + m)/6, (-c^2)*x^6))/(d^4*(1 + m)*(4 + m))]
    @test_int [(d*x)^m/(a + b*atan(c*x^3))^1, x, 0, Unintegrable((d*x)^m/(a + b*atan(c*x^3)), x)]
    @test_int [(d*x)^m/(a + b*atan(c*x^3))^2, x, 0, Unintegrable((d*x)^m/(a + b*atan(c*x^3))^2, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c/x^1))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*(a+b*atan(c/x))^p=#


    @test_int [x^3*(a + b*atan(c/x)), x, 5, (-(1/4))*b*c^3*x + (1/12)*b*c*x^3 + (1/4)*x^4*(a + b*atan(c/x)) + (1/4)*b*c^4*atan(x/c)]
    @test_int [x^2*(a + b*atan(c/x)), x, 5, (1/6)*b*c*x^2 + (1/3)*x^3*(a + b*atan(c/x)) - (1/6)*b*c^3*log(c^2 + x^2)]
    @test_int [x^1*(a + b*atan(c/x)), x, 4, (b*c*x)/2 + (1/2)*x^2*(a + b*atan(c/x)) - (1/2)*b*c^2*atan(x/c)]
    @test_int [x^0*(a + b*atan(c/x)), x, 4, a*x + b*x*atan(c/x) + (1/2)*b*c*log(c^2 + x^2)]
    @test_int [(a + b*atan(c/x))/x^1, x, 4, a*log(x) - (1/2)*im*b*PolyLog(2, -((im*c)/x)) + (1/2)*im*b*PolyLog(2, (im*c)/x)]
    @test_int [(a + b*atan(c/x))/x^2, x, 2, -((a + b*atan(c/x))/x) + (b*log(1 + c^2/x^2))/(2*c)]
    @test_int [(a + b*atan(c/x))/x^3, x, 4, b/(2*c*x) - (a + b*atan(c/x))/(2*x^2) + (b*atan(x/c))/(2*c^2)]
    @test_int [(a + b*atan(c/x))/x^4, x, 5, b/(6*c*x^2) - (a + b*atan(c/x))/(3*x^3) + (b*log(x))/(3*c^3) - (b*log(c^2 + x^2))/(6*c^3)]


    @test_int [x^3*(a + b*atan(c/x))^2, x, 14, (1/12)*b^2*c^2*x^2 - (1/2)*b*c^3*x*(a + b*acot(x/c)) + (1/6)*b*c*x^3*(a + b*acot(x/c)) - (1/4)*c^4*(a + b*acot(x/c))^2 + (1/4)*x^4*(a + b*acot(x/c))^2 - (1/3)*b^2*c^4*log(1 + c^2/x^2) - (2/3)*b^2*c^4*log(x)]
    @test_int [x^2*(a + b*atan(c/x))^2, x, 9, (1/3)*b^2*c^2*x + (1/3)*b^2*c^3*acot(x/c) + (1/3)*b*c*x^2*(a + b*acot(x/c)) - (1/3)*im*c^3*(a + b*acot(x/c))^2 + (1/3)*x^3*(a + b*acot(x/c))^2 + (2/3)*b*c^3*(a + b*acot(x/c))*log(2 - 2/(1 - (im*c)/x)) - (1/3)*im*b^2*c^3*PolyLog(2, -1 + 2/(1 - (im*c)/x))]
    @test_int [x^1*(a + b*atan(c/x))^2, x, 9, b*c*x*(a + b*acot(x/c)) + (1/2)*c^2*(a + b*acot(x/c))^2 + (1/2)*x^2*(a + b*acot(x/c))^2 + (1/2)*b^2*c^2*log(1 + c^2/x^2) + b^2*c^2*log(x)]
    @test_int [x^0*(a + b*atan(c/x))^2, x, 6, im*c*(a + b*acot(x/c))^2 + x*(a + b*acot(x/c))^2 - 2*b*c*(a + b*acot(x/c))*log((2*c)/(c + im*x)) + im*b^2*c*PolyLog(2, 1 - (2*c)/(c + im*x))]
    @test_int [(a + b*atan(c/x))^2/x^1, x, 7, -2*(a + b*acot(x/c))^2*atanh(1 - 2/(1 + (im*c)/x)) + im*b*(a + b*acot(x/c))*PolyLog(2, 1 - 2/(1 + (im*c)/x)) - im*b*(a + b*acot(x/c))*PolyLog(2, -1 + 2/(1 + (im*c)/x)) + (1/2)*b^2*PolyLog(3, 1 - 2/(1 + (im*c)/x)) - (1/2)*b^2*PolyLog(3, -1 + 2/(1 + (im*c)/x))]
    @test_int [(a + b*atan(c/x))^2/x^2, x, 6, -((im*(a + b*acot(x/c))^2)/c) - (a + b*acot(x/c))^2/x - (2*b*(a + b*acot(x/c))*log(2/(1 + (im*c)/x)))/c - (im*b^2*PolyLog(2, 1 - 2/(1 + (im*c)/x)))/c]
    @test_int [(a + b*atan(c/x))^2/x^3, x, 7, (a*b)/(c*x) + (b^2*acot(x/c))/(c*x) - (a + b*acot(x/c))^2/(2*c^2) - (a + b*acot(x/c))^2/(2*x^2) - (b^2*log(1 + c^2/x^2))/(2*c^2)]


    @test_int [x^3*(a + b*atan(c/x))^3, x, 17, (1/4)*b^3*c^3*x + (1/4)*b^3*c^4*acot(x/c) + (1/4)*b^2*c^2*x^2*(a + b*acot(x/c)) - im*b*c^4*(a + b*acot(x/c))^2 - (3/4)*b*c^3*x*(a + b*acot(x/c))^2 + (1/4)*b*c*x^3*(a + b*acot(x/c))^2 - (1/4)*c^4*(a + b*acot(x/c))^3 + (1/4)*x^4*(a + b*acot(x/c))^3 + 2*b^2*c^4*(a + b*acot(x/c))*log(2 - 2/(1 - (im*c)/x)) - im*b^3*c^4*PolyLog(2, -1 + 2/(1 - (im*c)/x))]
    @test_int [x^2*(a + b*atan(c/x))^3, x, 15, b^2*c^2*x*(a + b*acot(x/c)) + (1/2)*b*c^3*(a + b*acot(x/c))^2 + (1/2)*b*c*x^2*(a + b*acot(x/c))^2 - (1/3)*im*c^3*(a + b*acot(x/c))^3 + (1/3)*x^3*(a + b*acot(x/c))^3 + b*c^3*(a + b*acot(x/c))^2*log(2 - 2/(1 - (im*c)/x)) + (1/2)*b^3*c^3*log(1 + c^2/x^2) + b^3*c^3*log(x) - im*b^2*c^3*(a + b*acot(x/c))*PolyLog(2, -1 + 2/(1 - (im*c)/x)) + (1/2)*b^3*c^3*PolyLog(3, -1 + 2/(1 - (im*c)/x))]
    @test_int [x^1*(a + b*atan(c/x))^3, x, 8, (3/2)*im*b*c^2*(a + b*acot(x/c))^2 + (3/2)*b*c*x*(a + b*acot(x/c))^2 + (1/2)*c^2*(a + b*acot(x/c))^3 + (1/2)*x^2*(a + b*acot(x/c))^3 - 3*b^2*c^2*(a + b*acot(x/c))*log(2 - 2/(1 - (im*c)/x)) + (3/2)*im*b^3*c^2*PolyLog(2, -1 + 2/(1 - (im*c)/x))]
    @test_int [x^0*(a + b*atan(c/x))^3, x, 6, im*c*(a + b*acot(x/c))^3 + x*(a + b*acot(x/c))^3 - 3*b*c*(a + b*acot(x/c))^2*log((2*c)/(c + im*x)) + 3*im*b^2*c*(a + b*acot(x/c))*PolyLog(2, 1 - (2*c)/(c + im*x)) - (3/2)*b^3*c*PolyLog(3, 1 - (2*c)/(c + im*x))]
    @test_int [(a + b*atan(c/x))^3/x^1, x, 9, -2*(a + b*acot(x/c))^3*atanh(1 - 2/(1 + (im*c)/x)) + (3/2)*im*b*(a + b*acot(x/c))^2*PolyLog(2, 1 - 2/(1 + (im*c)/x)) - (3/2)*im*b*(a + b*acot(x/c))^2*PolyLog(2, -1 + 2/(1 + (im*c)/x)) + (3/2)*b^2*(a + b*acot(x/c))*PolyLog(3, 1 - 2/(1 + (im*c)/x)) - (3/2)*b^2*(a + b*acot(x/c))*PolyLog(3, -1 + 2/(1 + (im*c)/x)) - (3/4)*im*b^3*PolyLog(4, 1 - 2/(1 + (im*c)/x)) + (3/4)*im*b^3*PolyLog(4, -1 + 2/(1 + (im*c)/x))]
    @test_int [(a + b*atan(c/x))^3/x^2, x, 6, -((im*(a + b*acot(x/c))^3)/c) - (a + b*acot(x/c))^3/x - (3*b*(a + b*acot(x/c))^2*log(2/(1 + (im*c)/x)))/c - (3*im*b^2*(a + b*acot(x/c))*PolyLog(2, 1 - 2/(1 + (im*c)/x)))/c - (3*b^3*PolyLog(3, 1 - 2/(1 + (im*c)/x)))/(2*c)]
    @test_int [(a + b*atan(c/x))^3/x^3, x, 9, (3*im*b*(a + b*acot(x/c))^2)/(2*c^2) + (3*b*(a + b*acot(x/c))^2)/(2*c*x) - (a + b*acot(x/c))^3/(2*c^2) - (a + b*acot(x/c))^3/(2*x^2) + (3*b^2*(a + b*acot(x/c))*log(2/(1 + (im*c)/x)))/c^2 + (3*im*b^3*PolyLog(2, 1 - 2/(1 + (im*c)/x)))/(2*c^2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x^(n/2)))^p=#


    @test_int [x^2*atan(sqrt(x)), x, 6, -(sqrt(x)/3) + x^(3/2)/9 - x^(5/2)/15 + atan(sqrt(x))/3 + (1/3)*x^3*atan(sqrt(x))]
    @test_int [x^1*atan(sqrt(x)), x, 5, sqrt(x)/2 - x^(3/2)/6 - atan(sqrt(x))/2 + (1/2)*x^2*atan(sqrt(x))]
    @test_int [x^0*atan(sqrt(x)), x, 4, -sqrt(x) + atan(sqrt(x)) + x*atan(sqrt(x))]
    @test_int [atan(sqrt(x))/x^1, x, 4, im*PolyLog(2, (-im)*sqrt(x)) - im*PolyLog(2, im*sqrt(x))]
    @test_int [atan(sqrt(x))/x^2, x, 4, -(1/sqrt(x)) - atan(sqrt(x)) - atan(sqrt(x))/x]
    @test_int [atan(sqrt(x))/x^3, x, 5, -(1/(6*x^(3/2))) + 1/(2*sqrt(x)) + atan(sqrt(x))/2 - atan(sqrt(x))/(2*x^2)]


    @test_int [x^(3/2)*atan(sqrt(x)), x, 3, x/5 - x^2/10 + (2/5)*x^(5/2)*atan(sqrt(x)) - (1/5)*log(1 + x)]
    @test_int [x^(1/2)*atan(sqrt(x)), x, 3, -(x/3) + (2/3)*x^(3/2)*atan(sqrt(x)) + (1/3)*log(1 + x)]
    @test_int [atan(sqrt(x))/x^(1/2), x, 2, 2*sqrt(x)*atan(sqrt(x)) - log(1 + x)]
    @test_int [atan(sqrt(x))/x^(3/2), x, 4, -((2*atan(sqrt(x)))/sqrt(x)) + log(x) - log(1 + x)]
    @test_int [atan(sqrt(x))/x^(5/2), x, 3, -(1/(3*x)) - (2*atan(sqrt(x)))/(3*x^(3/2)) - log(x)/3 + (1/3)*log(1 + x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(d*x)^m*(a+b*atan(c*x^n))^p=#


    @test_int [atan(a*x^5)/x, x, 4, (1/10)*im*PolyLog(2, (-im)*a*x^5) - (1/10)*im*PolyLog(2, im*a*x^5)]


    @test_int [atan(a*x^n)/x, x, 4, (im*PolyLog(2, (-im)*a*x^n))/(2*n) - (im*PolyLog(2, im*a*x^n))/(2*n)]
    end
