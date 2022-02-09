@testset "5.4.1 Inverse cotangent functions" begin
    (a, b, c, d, e, f, m, n, x, ) = @variables a b c d e f m n x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*involving*inverse*cotangents=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*acot(a*x^n)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(a*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^5*acot(a*x), x, 4, x/(6*a^5) - x^3/(18*a^3) + x^5/(30*a) + (1/6)*x^6*acot(a*x) - atan(a*x)/(6*a^6)]
    @test_int [x^4*acot(a*x), x, 4, -(x^2/(10*a^3)) + x^4/(20*a) + (1/5)*x^5*acot(a*x) + log(1 + a^2*x^2)/(10*a^5)]
    @test_int [x^3*acot(a*x), x, 4, -(x/(4*a^3)) + x^3/(12*a) + (1/4)*x^4*acot(a*x) + atan(a*x)/(4*a^4)]
    @test_int [x^2*acot(a*x), x, 4, x^2/(6*a) + (1/3)*x^3*acot(a*x) - log(1 + a^2*x^2)/(6*a^3)]
    @test_int [x^1*acot(a*x), x, 3, x/(2*a) + (1/2)*x^2*acot(a*x) - atan(a*x)/(2*a^2)]
    @test_int [x^0*acot(a*x), x, 2, x*acot(a*x) + log(1 + a^2*x^2)/(2*a)]
    @test_int [acot(a*x)/x^1, x, 3, (-(1/2))*im*PolyLog(2, -(im/(a*x))) + (1/2)*im*PolyLog(2, im/(a*x))]
    @test_int [acot(a*x)/x^2, x, 5, -(acot(a*x)/x) - a*log(x) + (1/2)*a*log(1 + a^2*x^2)]
    @test_int [acot(a*x)/x^3, x, 3, a/(2*x) - acot(a*x)/(2*x^2) + (1/2)*a^2*atan(a*x)]
    @test_int [acot(a*x)/x^4, x, 4, a/(6*x^2) - acot(a*x)/(3*x^3) + (1/3)*a^3*log(x) - (1/6)*a^3*log(1 + a^2*x^2)]
    @test_int [acot(a*x)/x^5, x, 4, a/(12*x^3) - a^3/(4*x) - acot(a*x)/(4*x^4) - (1/4)*a^4*atan(a*x)]


    @test_int [x^5*acot(a*x)^2, x, 15, -((4*x^2)/(45*a^4)) + x^4/(60*a^2) + (x*acot(a*x))/(3*a^5) - (x^3*acot(a*x))/(9*a^3) + (x^5*acot(a*x))/(15*a) + acot(a*x)^2/(6*a^6) + (1/6)*x^6*acot(a*x)^2 + (23*log(1 + a^2*x^2))/(90*a^6)]
    @test_int [x^4*acot(a*x)^2, x, 14, -((3*x)/(10*a^4)) + x^3/(30*a^2) - (x^2*acot(a*x))/(5*a^3) + (x^4*acot(a*x))/(10*a) + (im*acot(a*x)^2)/(5*a^5) + (1/5)*x^5*acot(a*x)^2 + (3*atan(a*x))/(10*a^5) - (2*acot(a*x)*log(2/(1 + im*a*x)))/(5*a^5) + (im*PolyLog(2, 1 - 2/(1 + im*a*x)))/(5*a^5)]
    @test_int [x^3*acot(a*x)^2, x, 10, x^2/(12*a^2) - (x*acot(a*x))/(2*a^3) + (x^3*acot(a*x))/(6*a) - acot(a*x)^2/(4*a^4) + (1/4)*x^4*acot(a*x)^2 - log(1 + a^2*x^2)/(3*a^4)]
    @test_int [x^2*acot(a*x)^2, x, 9, x/(3*a^2) + (x^2*acot(a*x))/(3*a) - (im*acot(a*x)^2)/(3*a^3) + (1/3)*x^3*acot(a*x)^2 - atan(a*x)/(3*a^3) + (2*acot(a*x)*log(2/(1 + im*a*x)))/(3*a^3) - (im*PolyLog(2, 1 - 2/(1 + im*a*x)))/(3*a^3)]
    @test_int [x^1*acot(a*x)^2, x, 5, (x*acot(a*x))/a + acot(a*x)^2/(2*a^2) + (1/2)*x^2*acot(a*x)^2 + log(1 + a^2*x^2)/(2*a^2)]
    @test_int [x^0*acot(a*x)^2, x, 5, (im*acot(a*x)^2)/a + x*acot(a*x)^2 - (2*acot(a*x)*log(2/(1 + im*a*x)))/a + (im*PolyLog(2, 1 - 2/(1 + im*a*x)))/a]
    @test_int [acot(a*x)^2/x^1, x, 6, 2*acot(a*x)^2*acoth(1 - 2/(1 + im*a*x)) - im*acot(a*x)*PolyLog(2, 1 - (2*im)/(im + a*x)) + im*acot(a*x)*PolyLog(2, 1 - (2*a*x)/(im + a*x)) - (1/2)*PolyLog(3, 1 - (2*im)/(im + a*x)) + (1/2)*PolyLog(3, 1 - (2*a*x)/(im + a*x))]
    @test_int [acot(a*x)^2/x^2, x, 4, (-im)*a*acot(a*x)^2 - acot(a*x)^2/x - 2*a*acot(a*x)*log(2 - 2/(1 - im*a*x)) - im*a*PolyLog(2, -1 + 2/(1 - im*a*x))]
    @test_int [acot(a*x)^2/x^3, x, 8, (a*acot(a*x))/x - (1/2)*a^2*acot(a*x)^2 - acot(a*x)^2/(2*x^2) + a^2*log(x) - (1/2)*a^2*log(1 + a^2*x^2)]
    @test_int [acot(a*x)^2/x^4, x, 8, -(a^2/(3*x)) + (a*acot(a*x))/(3*x^2) + (1/3)*im*a^3*acot(a*x)^2 - acot(a*x)^2/(3*x^3) - (1/3)*a^3*atan(a*x) + (2/3)*a^3*acot(a*x)*log(2 - 2/(1 - im*a*x)) + (1/3)*im*a^3*PolyLog(2, -1 + 2/(1 - im*a*x))]
    @test_int [acot(a*x)^2/x^5, x, 13, -(a^2/(12*x^2)) + (a*acot(a*x))/(6*x^3) - (a^3*acot(a*x))/(2*x) + (1/4)*a^4*acot(a*x)^2 - acot(a*x)^2/(4*x^4) - (2/3)*a^4*log(x) + (1/3)*a^4*log(1 + a^2*x^2)]


    @test_int [x^5*acot(a*x)^3, x, 33, -((19*x)/(60*a^5)) + x^3/(60*a^3) - (4*x^2*acot(a*x))/(15*a^4) + (x^4*acot(a*x))/(20*a^2) + (23*im*acot(a*x)^2)/(30*a^6) + (x*acot(a*x)^2)/(2*a^5) - (x^3*acot(a*x)^2)/(6*a^3) + (x^5*acot(a*x)^2)/(10*a) + acot(a*x)^3/(6*a^6) + (1/6)*x^6*acot(a*x)^3 + (19*atan(a*x))/(60*a^6) - (23*acot(a*x)*log(2/(1 + im*a*x)))/(15*a^6) + (23*im*PolyLog(2, 1 - 2/(1 + im*a*x)))/(30*a^6)]
    @test_int [x^4*acot(a*x)^3, x, 22, x^2/(20*a^3) - (9*x*acot(a*x))/(10*a^4) + (x^3*acot(a*x))/(10*a^2) - (9*acot(a*x)^2)/(20*a^5) - (3*x^2*acot(a*x)^2)/(10*a^3) + (3*x^4*acot(a*x)^2)/(20*a) + (im*acot(a*x)^3)/(5*a^5) + (1/5)*x^5*acot(a*x)^3 - (3*acot(a*x)^2*log(2/(1 + im*a*x)))/(5*a^5) - log(1 + a^2*x^2)/(2*a^5) + (3*im*acot(a*x)*PolyLog(2, 1 - 2/(1 + im*a*x)))/(5*a^5) - (3*PolyLog(3, 1 - 2/(1 + im*a*x)))/(10*a^5)]
    @test_int [x^3*acot(a*x)^3, x, 18, x/(4*a^3) + (x^2*acot(a*x))/(4*a^2) - (im*acot(a*x)^2)/a^4 - (3*x*acot(a*x)^2)/(4*a^3) + (x^3*acot(a*x)^2)/(4*a) - acot(a*x)^3/(4*a^4) + (1/4)*x^4*acot(a*x)^3 - atan(a*x)/(4*a^4) + (2*acot(a*x)*log(2/(1 + im*a*x)))/a^4 - (im*PolyLog(2, 1 - 2/(1 + im*a*x)))/a^4]
    @test_int [x^2*acot(a*x)^3, x, 11, (x*acot(a*x))/a^2 + acot(a*x)^2/(2*a^3) + (x^2*acot(a*x)^2)/(2*a) - (im*acot(a*x)^3)/(3*a^3) + (1/3)*x^3*acot(a*x)^3 + (acot(a*x)^2*log(2/(1 + im*a*x)))/a^3 + log(1 + a^2*x^2)/(2*a^3) - (im*acot(a*x)*PolyLog(2, 1 - 2/(1 + im*a*x)))/a^3 + PolyLog(3, 1 - 2/(1 + im*a*x))/(2*a^3)]
    @test_int [x^1*acot(a*x)^3, x, 8, (3*im*acot(a*x)^2)/(2*a^2) + (3*x*acot(a*x)^2)/(2*a) + acot(a*x)^3/(2*a^2) + (1/2)*x^2*acot(a*x)^3 - (3*acot(a*x)*log(2/(1 + im*a*x)))/a^2 + (3*im*PolyLog(2, 1 - 2/(1 + im*a*x)))/(2*a^2)]
    @test_int [x^0*acot(a*x)^3, x, 5, (im*acot(a*x)^3)/a + x*acot(a*x)^3 - (3*acot(a*x)^2*log(2/(1 + im*a*x)))/a + (3*im*acot(a*x)*PolyLog(2, 1 - 2/(1 + im*a*x)))/a - (3*PolyLog(3, 1 - 2/(1 + im*a*x)))/(2*a)]
    @test_int [acot(a*x)^3/x^1, x, 8, 2*acot(a*x)^3*acoth(1 - 2/(1 + im*a*x)) - (3/2)*im*acot(a*x)^2*PolyLog(2, 1 - (2*im)/(im + a*x)) + (3/2)*im*acot(a*x)^2*PolyLog(2, 1 - (2*a*x)/(im + a*x)) - (3/2)*acot(a*x)*PolyLog(3, 1 - (2*im)/(im + a*x)) + (3/2)*acot(a*x)*PolyLog(3, 1 - (2*a*x)/(im + a*x)) + (3/4)*im*PolyLog(4, 1 - (2*im)/(im + a*x)) - (3/4)*im*PolyLog(4, 1 - (2*a*x)/(im + a*x))]
    @test_int [acot(a*x)^3/x^2, x, 5, (-im)*a*acot(a*x)^3 - acot(a*x)^3/x - 3*a*acot(a*x)^2*log(2 - 2/(1 - im*a*x)) - 3*im*a*acot(a*x)*PolyLog(2, -1 + 2/(1 - im*a*x)) - (3/2)*a*PolyLog(3, -1 + 2/(1 - im*a*x))]
    @test_int [acot(a*x)^3/x^3, x, 7, (3/2)*im*a^2*acot(a*x)^2 + (3*a*acot(a*x)^2)/(2*x) - (1/2)*a^2*acot(a*x)^3 - acot(a*x)^3/(2*x^2) + 3*a^2*acot(a*x)*log(2 - 2/(1 - im*a*x)) + (3/2)*im*a^2*PolyLog(2, -1 + 2/(1 - im*a*x))]
    @test_int [acot(a*x)^3/x^4, x, 14, -((a^2*acot(a*x))/x) + (1/2)*a^3*acot(a*x)^2 + (a*acot(a*x)^2)/(2*x^2) + (1/3)*im*a^3*acot(a*x)^3 - acot(a*x)^3/(3*x^3) - a^3*log(x) + (1/2)*a^3*log(1 + a^2*x^2) + a^3*acot(a*x)^2*log(2 - 2/(1 - im*a*x)) + im*a^3*acot(a*x)*PolyLog(2, -1 + 2/(1 - im*a*x)) + (1/2)*a^3*PolyLog(3, -1 + 2/(1 - im*a*x))]
    @test_int [acot(a*x)^3/x^5, x, 16, a^3/(4*x) - (a^2*acot(a*x))/(4*x^2) - im*a^4*acot(a*x)^2 + (a*acot(a*x)^2)/(4*x^3) - (3*a^3*acot(a*x)^2)/(4*x) + (1/4)*a^4*acot(a*x)^3 - acot(a*x)^3/(4*x^4) + (1/4)*a^4*atan(a*x) - 2*a^4*acot(a*x)*log(2 - 2/(1 - im*a*x)) - im*a^4*PolyLog(2, -1 + 2/(1 - im*a*x))]


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(a*x)^n*with*m*symbolic=#


    @test_int [x^m*acot(a*x)^3, x, 0, Unintegrable(x^m*acot(a*x)^3, x)]
    @test_int [x^m*acot(a*x)^2, x, 0, Unintegrable(x^m*acot(a*x)^2, x)]
    @test_int [x^m*acot(a*x), x, 2, (x^(1 + m)*acot(a*x))/(1 + m) + (a*x^(2 + m)*HypergeometricFunctions._₂F₁(1, (2 + m)/2, (4 + m)/2, (-a^2)*x^2))/(2 + 3*m + m^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(a*x)^n / (c+d*x^2)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^4*acot(x)/(1 + x^2), x, 9, x^2/6 - x*acot(x) + (1/3)*x^3*acot(x) - acot(x)^2/2 - (2/3)*log(1 + x^2)]
    @test_int [x^3*acot(x)/(1 + x^2), x, 8, x/2 + (1/2)*x^2*acot(x) - (1/2)*im*acot(x)^2 - atan(x)/2 + acot(x)*log(2/(1 + im*x)) - (1/2)*im*PolyLog(2, 1 - 2/(1 + im*x))]
    @test_int [x^2*acot(x)/(1 + x^2), x, 4, x*acot(x) + acot(x)^2/2 + (1/2)*log(1 + x^2)]
    @test_int [x^1*acot(x)/(1 + x^2), x, 4, (1/2)*im*acot(x)^2 - acot(x)*log(2/(1 + im*x)) + (1/2)*im*PolyLog(2, 1 - 2/(1 + im*x))]
    @test_int [x^0*acot(x)/(1 + x^2), x, 1, (-(1/2))*acot(x)^2]
    @test_int [acot(x)/(x^1*(1 + x^2)), x, 3, (1/2)*im*acot(x)^2 + acot(x)*log(2 - 2/(1 - im*x)) + (1/2)*im*PolyLog(2, -1 + 2/(1 - im*x))]
    @test_int [acot(x)/(x^2*(1 + x^2)), x, 7, -(acot(x)/x) + acot(x)^2/2 - log(x) + (1/2)*log(1 + x^2)]
    @test_int [acot(x)/(x^3*(1 + x^2)), x, 7, 1/(2*x) - acot(x)/(2*x^2) - (1/2)*im*acot(x)^2 + atan(x)/2 - acot(x)*log(2 - 2/(1 - im*x)) - (1/2)*im*PolyLog(2, -1 + 2/(1 - im*x))]
    @test_int [acot(x)/(x^4*(1 + x^2)), x, 12, 1/(6*x^2) - acot(x)/(3*x^3) + acot(x)/x - acot(x)^2/2 + (4*log(x))/3 - (2/3)*log(1 + x^2)]


    @test_int [x^2*acot(c*x)/(1 + x^2), x, 28, x*acot(c*x) - (1/2)*im*atan(x)*log(1 - im/(c*x)) + (1/2)*im*atan(x)*log(1 + im/(c*x)) + (1/2)*im*atan(x)*log(-((2*im*(im - c*x))/((1 - c)*(1 - im*x)))) - (1/2)*im*atan(x)*log(-((2*im*(im + c*x))/((1 + c)*(1 - im*x)))) + log(1 + c^2*x^2)/(2*c) + (1/4)*PolyLog(2, 1 + (2*im*(im - c*x))/((1 - c)*(1 - im*x))) - (1/4)*PolyLog(2, 1 + (2*im*(im + c*x))/((1 + c)*(1 - im*x)))]
    @test_int [x^1*acot(c*x)/(1 + x^2), x, 10, (-acot(c*x))*log(2/(1 - im*c*x)) + (1/2)*acot(c*x)*log((2*im*c*(im - x))/((1 - c)*(1 - im*c*x))) + (1/2)*acot(c*x)*log(-((2*im*c*(im + x))/((1 + c)*(1 - im*c*x)))) - (1/2)*im*PolyLog(2, 1 - 2/(1 - im*c*x)) + (1/4)*im*PolyLog(2, 1 - (2*im*c*(im - x))/((1 - c)*(1 - im*c*x))) + (1/4)*im*PolyLog(2, 1 + (2*im*c*(im + x))/((1 + c)*(1 - im*c*x)))]
    @test_int [x^0*acot(c*x)/(1 + x^2), x, 25, (1/2)*im*atan(x)*log(1 - im/(c*x)) - (1/2)*im*atan(x)*log(1 + im/(c*x)) - (1/2)*im*atan(x)*log(-((2*im*(im - c*x))/((1 - c)*(1 - im*x)))) + (1/2)*im*atan(x)*log(-((2*im*(im + c*x))/((1 + c)*(1 - im*x)))) - (1/4)*PolyLog(2, 1 + (2*im*(im - c*x))/((1 - c)*(1 - im*x))) + (1/4)*PolyLog(2, 1 + (2*im*(im + c*x))/((1 + c)*(1 - im*x)))]
    @test_int [acot(c*x)/(x^1*(1 + x^2)), x, 15, acot(c*x)*log(2/(1 - im*c*x)) - (1/2)*acot(c*x)*log((2*im*c*(im - x))/((1 - c)*(1 - im*c*x))) - (1/2)*acot(c*x)*log(-((2*im*c*(im + x))/((1 + c)*(1 - im*c*x)))) - (1/2)*im*PolyLog(2, -(im/(c*x))) + (1/2)*im*PolyLog(2, im/(c*x)) + (1/2)*im*PolyLog(2, 1 - 2/(1 - im*c*x)) - (1/4)*im*PolyLog(2, 1 - (2*im*c*(im - x))/((1 - c)*(1 - im*c*x))) - (1/4)*im*PolyLog(2, 1 + (2*im*c*(im + x))/((1 + c)*(1 - im*c*x)))]
    @test_int [acot(c*x)/(x^2*(1 + x^2)), x, 31, -(acot(c*x)/x) - (1/2)*im*atan(x)*log(1 - im/(c*x)) + (1/2)*im*atan(x)*log(1 + im/(c*x)) - c*log(x) + (1/2)*im*atan(x)*log(-((2*im*(im - c*x))/((1 - c)*(1 - im*x)))) - (1/2)*im*atan(x)*log(-((2*im*(im + c*x))/((1 + c)*(1 - im*x)))) + (1/2)*c*log(1 + c^2*x^2) + (1/4)*PolyLog(2, 1 + (2*im*(im - c*x))/((1 - c)*(1 - im*x))) - (1/4)*PolyLog(2, 1 + (2*im*(im + c*x))/((1 + c)*(1 - im*x)))]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [1/((1 + x^2)*acot(x)), x, 1, -log(acot(x))]


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [acot(x)^n/(1 + x^2), x, 1, -(acot(x)^(1 + n)/(1 + n))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*acot(a*x)*(c+d*x^2)^p=#


    @test_int [acot(a*x)*(c + d*x^2)^4, x, 4, (d*(420*a^6*c^3 - 378*a^4*c^2*d + 180*a^2*c*d^2 - 35*d^3)*x^2)/(630*a^7) + (d^2*(378*a^4*c^2 - 180*a^2*c*d + 35*d^2)*x^4)/(1260*a^5) + ((36*a^2*c - 7*d)*d^3*x^6)/(378*a^3) + (d^4*x^8)/(72*a) + c^4*x*acot(a*x) + (4/3)*c^3*d*x^3*acot(a*x) + (6/5)*c^2*d^2*x^5*acot(a*x) + (4/7)*c*d^3*x^7*acot(a*x) + (1/9)*d^4*x^9*acot(a*x) + ((315*a^8*c^4 - 420*a^6*c^3*d + 378*a^4*c^2*d^2 - 180*a^2*c*d^3 + 35*d^4)*log(1 + a^2*x^2))/(630*a^9)]
    @test_int [acot(a*x)*(c + d*x^2)^3, x, 4, (d*(35*a^4*c^2 - 21*a^2*c*d + 5*d^2)*x^2)/(70*a^5) + ((21*a^2*c - 5*d)*d^2*x^4)/(140*a^3) + (d^3*x^6)/(42*a) + c^3*x*acot(a*x) + c^2*d*x^3*acot(a*x) + (3/5)*c*d^2*x^5*acot(a*x) + (1/7)*d^3*x^7*acot(a*x) + ((35*a^6*c^3 - 35*a^4*c^2*d + 21*a^2*c*d^2 - 5*d^3)*log(1 + a^2*x^2))/(70*a^7)]
    @test_int [acot(a*x)*(c + d*x^2)^2, x, 5, ((10*a^2*c - 3*d)*d*x^2)/(30*a^3) + (d^2*x^4)/(20*a) + c^2*x*acot(a*x) + (2/3)*c*d*x^3*acot(a*x) + (1/5)*d^2*x^5*acot(a*x) + ((15*a^4*c^2 - 10*a^2*c*d + 3*d^2)*log(1 + a^2*x^2))/(30*a^5)]
    @test_int [acot(a*x)*(c + d*x^2)^1, x, 5, (d*x^2)/(6*a) + c*x*acot(a*x) + (1/3)*d*x^3*acot(a*x) + ((3*a^2*c - d)*log(1 + a^2*x^2))/(6*a^3)]
    @test_int [acot(a*x)/(c + d*x^2)^1, x, 27, (im*atan((sqrt(d)*x)/sqrt(c))*log(1 - im/(a*x)))/(2*sqrt(c)*sqrt(d)) - (im*atan((sqrt(d)*x)/sqrt(c))*log(1 + im/(a*x)))/(2*sqrt(c)*sqrt(d)) - (im*atan((sqrt(d)*x)/sqrt(c))*log((2*im*sqrt(c)*sqrt(d)*(im - a*x))/((a*sqrt(c) - sqrt(d))*(sqrt(c) - im*sqrt(d)*x))))/(2*sqrt(c)*sqrt(d)) + (im*atan((sqrt(d)*x)/sqrt(c))*log(-((2*im*sqrt(c)*sqrt(d)*(im + a*x))/((a*sqrt(c) + sqrt(d))*(sqrt(c) - im*sqrt(d)*x)))))/(2*sqrt(c)*sqrt(d)) - PolyLog(2, 1 - (2*im*sqrt(c)*sqrt(d)*(im - a*x))/((a*sqrt(c) - sqrt(d))*(sqrt(c) - im*sqrt(d)*x)))/(4*sqrt(c)*sqrt(d)) + PolyLog(2, 1 + (2*im*sqrt(c)*sqrt(d)*(im + a*x))/((a*sqrt(c) + sqrt(d))*(sqrt(c) - im*sqrt(d)*x)))/(4*sqrt(c)*sqrt(d))]
    @test_int [acot(a*x)/(c + d*x^2)^2, x, 24, (x*acot(a*x))/(2*c*(c + d*x^2)) + (acot(a*x)*atan((sqrt(d)*x)/sqrt(c)))/(2*c^(3/2)*sqrt(d)) - (im*a*log((sqrt(d)*(1 - sqrt(-a^2)*x))/(im*sqrt(-a^2)*sqrt(c) + sqrt(d)))*log(1 - (im*sqrt(d)*x)/sqrt(c)))/(8*sqrt(-a^2)*c^(3/2)*sqrt(d)) + (im*a*log(-((sqrt(d)*(1 + sqrt(-a^2)*x))/(im*sqrt(-a^2)*sqrt(c) - sqrt(d))))*log(1 - (im*sqrt(d)*x)/sqrt(c)))/(8*sqrt(-a^2)*c^(3/2)*sqrt(d)) + (im*a*log(-((sqrt(d)*(1 - sqrt(-a^2)*x))/(im*sqrt(-a^2)*sqrt(c) - sqrt(d))))*log(1 + (im*sqrt(d)*x)/sqrt(c)))/(8*sqrt(-a^2)*c^(3/2)*sqrt(d)) - (im*a*log((sqrt(d)*(1 + sqrt(-a^2)*x))/(im*sqrt(-a^2)*sqrt(c) + sqrt(d)))*log(1 + (im*sqrt(d)*x)/sqrt(c)))/(8*sqrt(-a^2)*c^(3/2)*sqrt(d)) + (a*log(1 + a^2*x^2))/(4*c*(a^2*c - d)) - (a*log(c + d*x^2))/(4*c*(a^2*c - d)) - (im*a*PolyLog(2, (sqrt(-a^2)*(sqrt(c) - im*sqrt(d)*x))/(sqrt(-a^2)*sqrt(c) - im*sqrt(d))))/(8*sqrt(-a^2)*c^(3/2)*sqrt(d)) + (im*a*PolyLog(2, (sqrt(-a^2)*(sqrt(c) - im*sqrt(d)*x))/(sqrt(-a^2)*sqrt(c) + im*sqrt(d))))/(8*sqrt(-a^2)*c^(3/2)*sqrt(d)) - (im*a*PolyLog(2, (sqrt(-a^2)*(sqrt(c) + im*sqrt(d)*x))/(sqrt(-a^2)*sqrt(c) - im*sqrt(d))))/(8*sqrt(-a^2)*c^(3/2)*sqrt(d)) + (im*a*PolyLog(2, (sqrt(-a^2)*(sqrt(c) + im*sqrt(d)*x))/(sqrt(-a^2)*sqrt(c) + im*sqrt(d))))/(8*sqrt(-a^2)*c^(3/2)*sqrt(d))]


    @test_int [acot(a*x)*(c + d*x^2)^(1/2), x, 0, Unintegrable(sqrt(c + d*x^2)*acot(a*x), x)]
    @test_int [acot(a*x)/(c + d*x^2)^(1/2), x, 0, Unintegrable(acot(a*x)/sqrt(c + d*x^2), x)]
    @test_int [acot(a*x)/(c + d*x^2)^(3/2), x, 5, (x*acot(a*x))/(c*sqrt(c + d*x^2)) - atanh((a*sqrt(c + d*x^2))/sqrt(a^2*c - d))/(c*sqrt(a^2*c - d))]
    @test_int [acot(a*x)/(c + d*x^2)^(5/2), x, 7, a/(3*c*(a^2*c - d)*sqrt(c + d*x^2)) + (x*acot(a*x))/(3*c*(c + d*x^2)^(3/2)) + (2*x*acot(a*x))/(3*c^2*sqrt(c + d*x^2)) - ((3*a^2*c - 2*d)*atanh((a*sqrt(c + d*x^2))/sqrt(a^2*c - d)))/(3*c^2*(a^2*c - d)^(3/2))]
    @test_int [acot(a*x)/(c + d*x^2)^(7/2), x, 8, a/(15*c*(a^2*c - d)*(c + d*x^2)^(3/2)) + (a*(7*a^2*c - 4*d))/(15*c^2*(a^2*c - d)^2*sqrt(c + d*x^2)) + (x*acot(a*x))/(5*c*(c + d*x^2)^(5/2)) + (4*x*acot(a*x))/(15*c^2*(c + d*x^2)^(3/2)) + (8*x*acot(a*x))/(15*c^3*sqrt(c + d*x^2)) - ((15*a^4*c^2 - 20*a^2*c*d + 8*d^2)*atanh((a*sqrt(c + d*x^2))/sqrt(a^2*c - d)))/(15*c^3*(a^2*c - d)^(5/2))]
    @test_int [acot(a*x)/(c + d*x^2)^(9/2), x, 8, a/(35*c*(a^2*c - d)*(c + d*x^2)^(5/2)) + (a*(11*a^2*c - 6*d))/(105*c^2*(a^2*c - d)^2*(c + d*x^2)^(3/2)) + (a*(19*a^4*c^2 - 22*a^2*c*d + 8*d^2))/(35*c^3*(a^2*c - d)^3*sqrt(c + d*x^2)) + (x*acot(a*x))/(7*c*(c + d*x^2)^(7/2)) + (6*x*acot(a*x))/(35*c^2*(c + d*x^2)^(5/2)) + (8*x*acot(a*x))/(35*c^3*(c + d*x^2)^(3/2)) + (16*x*acot(a*x))/(35*c^4*sqrt(c + d*x^2)) - ((35*a^6*c^3 - 70*a^4*c^2*d + 56*a^2*c*d^2 - 16*d^3)*atanh((a*sqrt(c + d*x^2))/sqrt(a^2*c - d)))/(35*c^4*(a^2*c - d)^(7/2))]


    @test_int [acot(x)*(a + a*x^2)^(1/2), x, 3, (1/2)*sqrt(a + a*x^2) + (1/2)*x*sqrt(a + a*x^2)*acot(x) - (im*a*sqrt(1 + x^2)*acot(x)*atan(sqrt(1 + im*x)/sqrt(1 - im*x)))/sqrt(a + a*x^2) - (im*a*sqrt(1 + x^2)*PolyLog(2, -((im*sqrt(1 + im*x))/sqrt(1 - im*x))))/(2*sqrt(a + a*x^2)) + (im*a*sqrt(1 + x^2)*PolyLog(2, (im*sqrt(1 + im*x))/sqrt(1 - im*x)))/(2*sqrt(a + a*x^2))]
    @test_int [acot(x)/(a + a*x^2)^(1/2), x, 2, -((2*im*sqrt(1 + x^2)*acot(x)*atan(sqrt(1 + im*x)/sqrt(1 - im*x)))/sqrt(a + a*x^2)) - (im*sqrt(1 + x^2)*PolyLog(2, -((im*sqrt(1 + im*x))/sqrt(1 - im*x))))/sqrt(a + a*x^2) + (im*sqrt(1 + x^2)*PolyLog(2, (im*sqrt(1 + im*x))/sqrt(1 - im*x)))/sqrt(a + a*x^2)]
    @test_int [acot(x)/(a + a*x^2)^(3/2), x, 1, -(1/(a*sqrt(a + a*x^2))) + (x*acot(x))/(a*sqrt(a + a*x^2))]
    @test_int [acot(x)/(a + a*x^2)^(5/2), x, 2, -(1/(9*a*(a + a*x^2)^(3/2))) - 2/(3*a^2*sqrt(a + a*x^2)) + (x*acot(x))/(3*a*(a + a*x^2)^(3/2)) + (2*x*acot(x))/(3*a^2*sqrt(a + a*x^2))]
    @test_int [acot(x)/(a + a*x^2)^(7/2), x, 3, -(1/(25*a*(a + a*x^2)^(5/2))) - 4/(45*a^2*(a + a*x^2)^(3/2)) - 8/(15*a^3*sqrt(a + a*x^2)) + (x*acot(x))/(5*a*(a + a*x^2)^(5/2)) + (4*x*acot(x))/(15*a^2*(a + a*x^2)^(3/2)) + (8*x*acot(x))/(15*a^3*sqrt(a + a*x^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(a*x)*(c+d*x^2)^p=#


    @test_int [x^1*acot(x)/(1 + x^2)^2, x, 3, -(x/(4*(1 + x^2))) - acot(x)/(2*(1 + x^2)) - atan(x)/4]


    @test_int [x^1*acot(x)/(1 + x^2)^3, x, 4, -(x/(16*(1 + x^2)^2)) - (3*x)/(32*(1 + x^2)) - acot(x)/(4*(1 + x^2)^2) - (3*atan(x))/32]


    @test_int [x^0*acot(x)/(1 + x^2)^2, x, 2, -(1/(4*(1 + x^2))) + (x*acot(x))/(2*(1 + x^2)) - acot(x)^2/4]


    @test_int [acot(x)^2/(1 + x^2)^2, x, 4, -(x/(4*(1 + x^2))) - acot(x)/(2*(1 + x^2)) + (x*acot(x)^2)/(2*(1 + x^2)) - acot(x)^3/6 - atan(x)/4]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(a*x^n)=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [x^5*acot(a*x^2), x, 4, x^4/(12*a) + (1/6)*x^6*acot(a*x^2) - log(1 + a^2*x^4)/(12*a^3)]
    @test_int [x^3*acot(a*x^2), x, 4, x^2/(4*a) + (1/4)*x^4*acot(a*x^2) - atan(a*x^2)/(4*a^2)]
    @test_int [x^1*acot(a*x^2), x, 2, (1/2)*x^2*acot(a*x^2) + log(1 + a^2*x^4)/(4*a)]
    @test_int [acot(a*x^2)/x^1, x, 4, (-(1/4))*im*PolyLog(2, -(im/(a*x^2))) + (1/4)*im*PolyLog(2, im/(a*x^2))]
    @test_int [acot(a*x^2)/x^3, x, 5, -(acot(a*x^2)/(2*x^2)) - a*log(x) + (1/4)*a*log(1 + a^2*x^4)]
    @test_int [acot(a*x^2)/x^5, x, 4, a/(4*x^2) - acot(a*x^2)/(4*x^4) + (1/4)*a^2*atan(a*x^2)]

    @test_int [x^4*acot(a*x^2), x, 11, (2*x^3)/(15*a) + (1/5)*x^5*acot(a*x^2) + atan(1 - sqrt(2)*sqrt(a)*x)/(5*sqrt(2)*a^(5/2)) - atan(1 + sqrt(2)*sqrt(a)*x)/(5*sqrt(2)*a^(5/2)) - log(1 - sqrt(2)*sqrt(a)*x + a*x^2)/(10*sqrt(2)*a^(5/2)) + log(1 + sqrt(2)*sqrt(a)*x + a*x^2)/(10*sqrt(2)*a^(5/2))]
    @test_int [x^2*acot(a*x^2), x, 11, (2*x)/(3*a) + (1/3)*x^3*acot(a*x^2) + atan(1 - sqrt(2)*sqrt(a)*x)/(3*sqrt(2)*a^(3/2)) - atan(1 + sqrt(2)*sqrt(a)*x)/(3*sqrt(2)*a^(3/2)) + log(1 - sqrt(2)*sqrt(a)*x + a*x^2)/(6*sqrt(2)*a^(3/2)) - log(1 + sqrt(2)*sqrt(a)*x + a*x^2)/(6*sqrt(2)*a^(3/2))]
    @test_int [x^0*acot(a*x^2), x, 10, x*acot(a*x^2) - atan(1 - sqrt(2)*sqrt(a)*x)/(sqrt(2)*sqrt(a)) + atan(1 + sqrt(2)*sqrt(a)*x)/(sqrt(2)*sqrt(a)) + log(1 - sqrt(2)*sqrt(a)*x + a*x^2)/(2*sqrt(2)*sqrt(a)) - log(1 + sqrt(2)*sqrt(a)*x + a*x^2)/(2*sqrt(2)*sqrt(a))]
    @test_int [acot(a*x^2)/x^2, x, 10, -(acot(a*x^2)/x) + (sqrt(a)*atan(1 - sqrt(2)*sqrt(a)*x))/sqrt(2) - (sqrt(a)*atan(1 + sqrt(2)*sqrt(a)*x))/sqrt(2) + (sqrt(a)*log(1 - sqrt(2)*sqrt(a)*x + a*x^2))/(2*sqrt(2)) - (sqrt(a)*log(1 + sqrt(2)*sqrt(a)*x + a*x^2))/(2*sqrt(2))]
    @test_int [acot(a*x^2)/x^4, x, 11, (2*a)/(3*x) - acot(a*x^2)/(3*x^3) - (a^(3/2)*atan(1 - sqrt(2)*sqrt(a)*x))/(3*sqrt(2)) + (a^(3/2)*atan(1 + sqrt(2)*sqrt(a)*x))/(3*sqrt(2)) + (a^(3/2)*log(1 - sqrt(2)*sqrt(a)*x + a*x^2))/(6*sqrt(2)) - (a^(3/2)*log(1 + sqrt(2)*sqrt(a)*x + a*x^2))/(6*sqrt(2))]


    @test_int [x^2*acot(sqrt(x)), x, 6, sqrt(x)/3 - x^(3/2)/9 + x^(5/2)/15 + (1/3)*x^3*acot(sqrt(x)) - atan(sqrt(x))/3]
    @test_int [x^1*acot(sqrt(x)), x, 5, -(sqrt(x)/2) + x^(3/2)/6 + (1/2)*x^2*acot(sqrt(x)) + atan(sqrt(x))/2]
    @test_int [x^0*acot(sqrt(x)), x, 4, sqrt(x) + x*acot(sqrt(x)) - atan(sqrt(x))]
    @test_int [acot(sqrt(x))/x^1, x, 4, (-im)*PolyLog(2, -(im/sqrt(x))) + im*PolyLog(2, im/sqrt(x))]
    @test_int [acot(sqrt(x))/x^2, x, 4, 1/sqrt(x) - acot(sqrt(x))/x + atan(sqrt(x))]
    @test_int [acot(sqrt(x))/x^3, x, 5, 1/(6*x^(3/2)) - 1/(2*sqrt(x)) - acot(sqrt(x))/(2*x^2) - atan(sqrt(x))/2]


    @test_int [x^(3/2)*acot(sqrt(x)), x, 3, -(x/5) + x^2/10 + (2/5)*x^(5/2)*acot(sqrt(x)) + (1/5)*log(1 + x)]
    @test_int [x^(1/2)*acot(sqrt(x)), x, 3, x/3 + (2/3)*x^(3/2)*acot(sqrt(x)) - (1/3)*log(1 + x)]
    @test_int [acot(sqrt(x))/x^(1/2), x, 2, 2*sqrt(x)*acot(sqrt(x)) + log(1 + x)]
    @test_int [acot(sqrt(x))/x^(3/2), x, 4, -((2*acot(sqrt(x)))/sqrt(x)) - log(x) + log(1 + x)]
    @test_int [acot(sqrt(x))/x^(5/2), x, 3, 1/(3*x) - (2*acot(sqrt(x)))/(3*x^(3/2)) + log(x)/3 - (1/3)*log(1 + x)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [acot(1/x), x, 3, x*acot(1/x) - (1/2)*log(1 + x^2)]


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [acot(a*x^n)/x, x, 4, -((im*PolyLog(2, -(im/(x^n*a))))/(2*n)) + (im*PolyLog(2, im/(x^n*a)))/(2*n)]

    @test_int [acot(a*x^5)/x, x, 4, (-(1/10))*im*PolyLog(2, -(im/(a*x^5))) + (1/10)*im*PolyLog(2, im/(a*x^5))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*acot(a+b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(a+b*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [x^3*acot(a + b*x), x, 7, -(((1 - 6*a^2)*x)/(4*b^3)) - (a*(a + b*x)^2)/(2*b^4) + (a + b*x)^3/(12*b^4) + (1/4)*x^4*acot(a + b*x) + ((1 - 6*a^2 + a^4)*atan(a + b*x))/(4*b^4) + (a*(1 - a^2)*log(1 + (a + b*x)^2))/(2*b^4)]
    @test_int [x^2*acot(a + b*x), x, 7, -((a*x)/b^2) + (a + b*x)^2/(6*b^3) + (1/3)*x^3*acot(a + b*x) + (a*(3 - a^2)*atan(a + b*x))/(3*b^3) - ((1 - 3*a^2)*log(1 + (a + b*x)^2))/(6*b^3)]
    @test_int [x^1*acot(a + b*x), x, 7, x/(2*b) + (1/2)*x^2*acot(a + b*x) - ((1 - a^2)*atan(a + b*x))/(2*b^2) - (a*log(1 + (a + b*x)^2))/(2*b^2)]
    @test_int [x^0*acot(a + b*x), x, 3, ((a + b*x)*acot(a + b*x))/b + log(1 + (a + b*x)^2)/(2*b)]
    @test_int [acot(a + b*x)/x^1, x, 5, (-acot(a + b*x))*log(2/(1 - im*(a + b*x))) + acot(a + b*x)*log((2*b*x)/((im - a)*(1 - im*(a + b*x)))) - (1/2)*im*PolyLog(2, 1 - 2/(1 - im*(a + b*x))) + (1/2)*im*PolyLog(2, 1 - (2*b*x)/((im - a)*(1 - im*(a + b*x))))]
    @test_int [acot(a + b*x)/x^2, x, 7, -(acot(a + b*x)/x) + (a*b*atan(a + b*x))/(1 + a^2) - (b*log(x))/(1 + a^2) + (b*log(1 + (a + b*x)^2))/(2*(1 + a^2))]
    @test_int [acot(a + b*x)/x^3, x, 8, b/(2*(1 + a^2)*x) - acot(a + b*x)/(2*x^2) + ((1 - a^2)*b^2*atan(a + b*x))/(2*(1 + a^2)^2) + (a*b^2*log(x))/(1 + a^2)^2 - (a*b^2*log(1 + (a + b*x)^2))/(2*(1 + a^2)^2)]
    @test_int [acot(a + b*x)/x^4, x, 8, b/(6*(1 + a^2)*x^2) - (2*a*b^2)/(3*(1 + a^2)^2*x) - acot(a + b*x)/(3*x^3) - (a*(3 - a^2)*b^3*atan(a + b*x))/(3*(1 + a^2)^3) + ((1 - 3*a^2)*b^3*log(x))/(3*(1 + a^2)^3) - ((1 - 3*a^2)*b^3*log(1 + (a + b*x)^2))/(6*(1 + a^2)^3)]


    #= ::Subsubsection:: =#
    #=p<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(c+d*x^n)^m*acot(a+b*x)=#


    #= [acot(a + b*x)/(c + d*x^3), x, 35, -((im*log((d^(1/3)*(im - a - b*x))/(b*c^(1/3) + (im - a)*d^(1/3)))*log(-c^(1/3) - d^(1/3)*x))/(6*c^(2/3)*d^(1/3))) + (im*log(-((im - a - b*x)/(a + b*x)))*log(-c^(1/3) - d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) + (im*log(-((d^(1/3)*(im + a + b*x))/(b*c^(1/3) - (im + a)*d^(1/3))))*log(-c^(1/3) - d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) - (im*log((im + a + b*x)/(a + b*x))*log(-c^(1/3) - d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) + ((-1)^(1/6)*log(-(((-1)^(1/3)*d^(1/3)*(im - a - b*x))/(b*c^(1/3) - (-1)^(1/3)*(im - a)*d^(1/3))))*log(-c^(1/3) + (-1)^(1/3)*d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) - ((-1)^(1/6)*log(-((im - a - b*x)/(a + b*x)))*log(-c^(1/3) + (-1)^(1/3)*d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) - ((-1)^(1/6)*log(((-1)^(1/3)*d^(1/3)*(im + a + b*x))/(b*c^(1/3) + (-1)^(1/3)*(im + a)*d^(1/3)))*log(-c^(1/3) + (-1)^(1/3)*d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) + ((-1)^(1/6)*log((im + a + b*x)/(a + b*x))*log(-c^(1/3) + (-1)^(1/3)*d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) + ((-1)^(5/6)*log(((-1)^(2/3)*d^(1/3)*(im - a - b*x))/(b*c^(1/3) + (-1)^(2/3)*(im - a)*d^(1/3)))*log(-c^(1/3) - (-1)^(2/3)*d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) - ((-1)^(5/6)*log(-((im - a - b*x)/(a + b*x)))*log(-c^(1/3) - (-1)^(2/3)*d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) - ((-1)^(5/6)*log(-(((-1)^(2/3)*d^(1/3)*(im + a + b*x))/(b*c^(1/3) - (-1)^(2/3)*(im + a)*d^(1/3))))*log(-c^(1/3) - (-1)^(2/3)*d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) + ((-1)^(5/6)*log((im + a + b*x)/(a + b*x))*log(-c^(1/3) - (-1)^(2/3)*d^(1/3)*x))/(6*c^(2/3)*d^(1/3)) - (im*PolyLog(2, (b*(c^(1/3) + d^(1/3)*x))/(b*c^(1/3) + (im - a)*d^(1/3))))/(6*c^(2/3)*d^(1/3)) + (im*PolyLog(2, (b*(c^(1/3) + d^(1/3)*x))/(b*c^(1/3) - (im + a)*d^(1/3))))/(6*c^(2/3)*d^(1/3)) + ((-1)^(1/6)*PolyLog(2, (b*(c^(1/3) - (-1)^(1/3)*d^(1/3)*x))/(b*c^(1/3) - (-1)^(1/3)*(im - a)*d^(1/3))))/(6*c^(2/3)*d^(1/3)) - ((-1)^(1/6)*PolyLog(2, (b*(c^(1/3) - (-1)^(1/3)*d^(1/3)*x))/(b*c^(1/3) + (-1)^(1/3)*(im + a)*d^(1/3))))/(6*c^(2/3)*d^(1/3)) + ((-1)^(5/6)*PolyLog(2, (b*(c^(1/3) + (-1)^(2/3)*d^(1/3)*x))/(b*c^(1/3) + (-1)^(2/3)*(im - a)*d^(1/3))))/(6*c^(2/3)*d^(1/3)) - ((-1)^(5/6)*PolyLog(2, (b*(c^(1/3) + (-1)^(2/3)*d^(1/3)*x))/(b*c^(1/3) + (-1)^(1/6)*(1 - im*a)*d^(1/3))))/(6*c^(2/3)*d^(1/3))] =#
    @test_int [acot(a + b*x)/(c + d*x^2), x, 15, -((log((im + a + b*x)/(a + b*x))*log(-((b*(im*sqrt(c) - sqrt(d)*x))/((b*sqrt(c) + (1 - im*a)*sqrt(d))*(a + b*x)))))/(4*sqrt(c)*sqrt(d))) + (log(-((im - a - b*x)/(a + b*x)))*log((im*b*(sqrt(c) + im*sqrt(d)*x))/((b*sqrt(c) - (1 + im*a)*sqrt(d))*(a + b*x))))/(4*sqrt(c)*sqrt(d)) - (log(-((im - a - b*x)/(a + b*x)))*log((b*(im*sqrt(c) + sqrt(d)*x))/((b*sqrt(c) + (1 + im*a)*sqrt(d))*(a + b*x))))/(4*sqrt(c)*sqrt(d)) + (log((im + a + b*x)/(a + b*x))*log(-((b*(im*sqrt(c) + sqrt(d)*x))/((b*sqrt(c) + im*(im + a)*sqrt(d))*(a + b*x)))))/(4*sqrt(c)*sqrt(d)) + PolyLog(2, -(((b*sqrt(c) - im*a*sqrt(d))*(im - a - b*x))/((b*sqrt(c) - (1 + im*a)*sqrt(d))*(a + b*x))))/(4*sqrt(c)*sqrt(d)) - PolyLog(2, -(((b*sqrt(c) + im*a*sqrt(d))*(im - a - b*x))/((b*sqrt(c) + (1 + im*a)*sqrt(d))*(a + b*x))))/(4*sqrt(c)*sqrt(d)) - PolyLog(2, ((b*sqrt(c) - im*a*sqrt(d))*(im + a + b*x))/((b*sqrt(c) + (1 - im*a)*sqrt(d))*(a + b*x)))/(4*sqrt(c)*sqrt(d)) + PolyLog(2, ((b*sqrt(c) + im*a*sqrt(d))*(im + a + b*x))/((b*sqrt(c) + im*(im + a)*sqrt(d))*(a + b*x)))/(4*sqrt(c)*sqrt(d))]
    @test_int [acot(a + b*x)/(c + d*x^1), x, 5, -((acot(a + b*x)*log(2/(1 - im*(a + b*x))))/d) + (acot(a + b*x)*log((2*b*(c + d*x))/((b*c + im*d - a*d)*(1 - im*(a + b*x)))))/d - (im*PolyLog(2, 1 - 2/(1 - im*(a + b*x))))/(2*d) + (im*PolyLog(2, 1 - (2*b*(c + d*x))/((b*c + im*d - a*d)*(1 - im*(a + b*x)))))/(2*d)]
    @test_int [acot(a + b*x)/(c + d/x^1), x, 37, log(im - a - b*x)/(2*b*c) + (im*(a + b*x)*log(-((im - a - b*x)/(a + b*x))))/(2*b*c) + log(im + a + b*x)/(2*b*c) - (im*(a + b*x)*log((im + a + b*x)/(a + b*x)))/(2*b*c) + (im*d*log((c*(im - a - b*x))/(im*c - a*c + b*d))*log(d + c*x))/(2*c^2) - (im*d*log(-((im - a - b*x)/(a + b*x)))*log(d + c*x))/(2*c^2) - (im*d*log((c*(im + a + b*x))/((im + a)*c - b*d))*log(d + c*x))/(2*c^2) + (im*d*log((im + a + b*x)/(a + b*x))*log(d + c*x))/(2*c^2) - (im*d*PolyLog(2, -((b*(d + c*x))/((im + a)*c - b*d))))/(2*c^2) + (im*d*PolyLog(2, (b*(d + c*x))/(im*c - a*c + b*d)))/(2*c^2), (im*x*(log(-((im - a - b*x)/(a + b*x))) + log(a + b*x) - log(-im + a + b*x)))/(2*c) - (im*(im - a - b*x)*log(-im + a + b*x))/(2*b*c) - (im*(im + a + b*x)*log(im + a + b*x))/(2*b*c) - (im*x*(log(a + b*x) - log(im + a + b*x) + log((im + a + b*x)/(a + b*x))))/(2*c) - (im*d*(log(-((im - a - b*x)/(a + b*x))) + log(a + b*x) - log(-im + a + b*x))*log(d + c*x))/(2*c^2) + (im*d*(log(a + b*x) - log(im + a + b*x) + log((im + a + b*x)/(a + b*x)))*log(d + c*x))/(2*c^2) + (im*d*log(im + a + b*x)*log(-((b*(d + c*x))/((im + a)*c - b*d))))/(2*c^2) - (im*d*log(-im + a + b*x)*log((b*(d + c*x))/((im - a)*c + b*d)))/(2*c^2) - (im*d*PolyLog(2, (c*(im - a - b*x))/((im - a)*c + b*d)))/(2*c^2) + (im*d*PolyLog(2, (c*(im + a + b*x))/((im + a)*c - b*d)))/(2*c^2)]
    @test_int [acot(a + b*x)/(c + d/x^2), x, 57, log(im - a - b*x)/(2*b*c) + (im*(a + b*x)*log(-((im - a - b*x)/(a + b*x))))/(2*b*c) - (im*sqrt(d)*atan((sqrt(c)*x)/sqrt(d))*log(-((im - a - b*x)/(a + b*x))))/(2*c^(3/2)) + log(im + a + b*x)/(2*b*c) - (im*(a + b*x)*log((im + a + b*x)/(a + b*x)))/(2*b*c) + (im*sqrt(d)*atan((sqrt(c)*x)/sqrt(d))*log((im + a + b*x)/(a + b*x)))/(2*c^(3/2)) - (sqrt(d)*log((sqrt(c)*(im - a - b*x))/((im - a)*sqrt(c) + im*b*sqrt(d)))*log(1 - (im*sqrt(c)*x)/sqrt(d)))/(4*c^(3/2)) + (sqrt(d)*log((sqrt(c)*(im + a + b*x))/((im + a)*sqrt(c) - im*b*sqrt(d)))*log(1 - (im*sqrt(c)*x)/sqrt(d)))/(4*c^(3/2)) + (sqrt(d)*log((sqrt(c)*(im - a - b*x))/((im - a)*sqrt(c) - im*b*sqrt(d)))*log(1 + (im*sqrt(c)*x)/sqrt(d)))/(4*c^(3/2)) - (sqrt(d)*log((sqrt(c)*(im + a + b*x))/((im + a)*sqrt(c) + im*b*sqrt(d)))*log(1 + (im*sqrt(c)*x)/sqrt(d)))/(4*c^(3/2)) - (sqrt(d)*PolyLog(2, (b*(sqrt(d) - im*sqrt(c)*x))/((1 + im*a)*sqrt(c) + b*sqrt(d))))/(4*c^(3/2)) + (sqrt(d)*PolyLog(2, (b*(sqrt(d) - im*sqrt(c)*x))/(im*(im + a)*sqrt(c) + b*sqrt(d))))/(4*c^(3/2)) + (sqrt(d)*PolyLog(2, -((b*(sqrt(d) + im*sqrt(c)*x))/((1 + im*a)*sqrt(c) - b*sqrt(d)))))/(4*c^(3/2)) - (sqrt(d)*PolyLog(2, (b*(sqrt(d) + im*sqrt(c)*x))/((1 - im*a)*sqrt(c) + b*sqrt(d))))/(4*c^(3/2)), (im*x*(log(-((im - a - b*x)/(a + b*x))) + log(a + b*x) - log(-im + a + b*x)))/(2*c) - (im*sqrt(d)*atan((sqrt(c)*x)/sqrt(d))*(log(-((im - a - b*x)/(a + b*x))) + log(a + b*x) - log(-im + a + b*x)))/(2*c^(3/2)) - (im*(im - a - b*x)*log(-im + a + b*x))/(2*b*c) - (im*(im + a + b*x)*log(im + a + b*x))/(2*b*c) - (im*x*(log(a + b*x) - log(im + a + b*x) + log((im + a + b*x)/(a + b*x))))/(2*c) + (im*sqrt(d)*atan((sqrt(c)*x)/sqrt(d))*(log(a + b*x) - log(im + a + b*x) + log((im + a + b*x)/(a + b*x))))/(2*c^(3/2)) - (im*sqrt(d)*log(-im + a + b*x)*log(-((b*(sqrt(d) - sqrt(-c)*x))/((im - a)*sqrt(-c) - b*sqrt(d)))))/(4*(-c)^(3/2)) + (im*sqrt(d)*log(im + a + b*x)*log((b*(sqrt(d) - sqrt(-c)*x))/((im + a)*sqrt(-c) + b*sqrt(d))))/(4*(-c)^(3/2)) - (im*sqrt(d)*log(im + a + b*x)*log(-((b*(sqrt(d) + sqrt(-c)*x))/((im + a)*sqrt(-c) - b*sqrt(d)))))/(4*(-c)^(3/2)) + (im*sqrt(d)*log(-im + a + b*x)*log((b*(sqrt(d) + sqrt(-c)*x))/((im - a)*sqrt(-c) + b*sqrt(d))))/(4*(-c)^(3/2)) - (im*sqrt(d)*PolyLog(2, (sqrt(-c)*(im - a - b*x))/((im - a)*sqrt(-c) - b*sqrt(d))))/(4*(-c)^(3/2)) + (im*sqrt(d)*PolyLog(2, (sqrt(-c)*(im - a - b*x))/((im - a)*sqrt(-c) + b*sqrt(d))))/(4*(-c)^(3/2)) - (im*sqrt(d)*PolyLog(2, (sqrt(-c)*(im + a + b*x))/((im + a)*sqrt(-c) - b*sqrt(d))))/(4*(-c)^(3/2)) + (im*sqrt(d)*PolyLog(2, (sqrt(-c)*(im + a + b*x))/((im + a)*sqrt(-c) + b*sqrt(d))))/(4*(-c)^(3/2))]


    #= [acot(a + b*x)/(a + b*x^(3/2)), x, 101, -((im*log(-a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(-im - a) - sqrt(b)*sqrt(x))/(sqrt(-im - a) + a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3))) + ((-1)^(1/6)*log((-1)^(1/3)*a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(-im - a) - sqrt(b)*sqrt(x))/(sqrt(-im - a) - (-1)^(1/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) + ((-1)^(5/6)*log((-(-1)^(2/3))*a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(-im - a) - sqrt(b)*sqrt(x))/(sqrt(-im - a) + (-1)^(2/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) + (im*log(-a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(im - a) - sqrt(b)*sqrt(x))/(sqrt(im - a) + a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) - ((-1)^(1/6)*log((-1)^(1/3)*a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(im - a) - sqrt(b)*sqrt(x))/(sqrt(im - a) - (-1)^(1/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) - ((-1)^(5/6)*log((-(-1)^(2/3))*a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(im - a) - sqrt(b)*sqrt(x))/(sqrt(im - a) + (-1)^(2/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) - (im*log(-a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(-im - a) + sqrt(b)*sqrt(x))/(sqrt(-im - a) - a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) + ((-1)^(1/6)*log((-1)^(1/3)*a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(-im - a) + sqrt(b)*sqrt(x))/(sqrt(-im - a) + (-1)^(1/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) + ((-1)^(5/6)*log((-(-1)^(2/3))*a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(-im - a) + sqrt(b)*sqrt(x))/(sqrt(-im - a) - (-1)^(2/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) + (im*log(-a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(im - a) + sqrt(b)*sqrt(x))/(sqrt(im - a) - a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) - ((-1)^(1/6)*log((-1)^(1/3)*a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(im - a) + sqrt(b)*sqrt(x))/(sqrt(im - a) + (-1)^(1/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) - ((-1)^(5/6)*log((-(-1)^(2/3))*a^(1/3) - b^(1/3)*sqrt(x))*log((sqrt(im - a) + sqrt(b)*sqrt(x))/(sqrt(im - a) - (-1)^(2/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) - (im*log(-a^(1/3) - b^(1/3)*sqrt(x))*log(-((im - a - b*x)/(a + b*x))))/(3*a^(1/3)*b^(2/3)) + ((-1)^(1/6)*log((-1)^(1/3)*a^(1/3) - b^(1/3)*sqrt(x))*log(-((im - a - b*x)/(a + b*x))))/(3*a^(1/3)*b^(2/3)) + ((-1)^(5/6)*log((-(-1)^(2/3))*a^(1/3) - b^(1/3)*sqrt(x))*log(-((im - a - b*x)/(a + b*x))))/(3*a^(1/3)*b^(2/3)) + (im*log(-a^(1/3) - b^(1/3)*sqrt(x))*log((im + a + b*x)/(a + b*x)))/(3*a^(1/3)*b^(2/3)) - ((-1)^(1/6)*log((-1)^(1/3)*a^(1/3) - b^(1/3)*sqrt(x))*log((im + a + b*x)/(a + b*x)))/(3*a^(1/3)*b^(2/3)) - ((-1)^(5/6)*log((-(-1)^(2/3))*a^(1/3) - b^(1/3)*sqrt(x))*log((im + a + b*x)/(a + b*x)))/(3*a^(1/3)*b^(2/3)) + ((-1)^(1/6)*PolyLog(2, -((b^(1/6)*((-1)^(1/3)*a^(1/3) - b^(1/3)*sqrt(x)))/(sqrt(-im - a) - (-1)^(1/3)*a^(1/3)*b^(1/6)))))/(3*a^(1/3)*b^(2/3)) - ((-1)^(1/6)*PolyLog(2, -((b^(1/6)*((-1)^(1/3)*a^(1/3) - b^(1/3)*sqrt(x)))/(sqrt(im - a) - (-1)^(1/3)*a^(1/3)*b^(1/6)))))/(3*a^(1/3)*b^(2/3)) - (im*PolyLog(2, -((b^(1/6)*(a^(1/3) + b^(1/3)*sqrt(x)))/(sqrt(-im - a) - a^(1/3)*b^(1/6)))))/(3*a^(1/3)*b^(2/3)) + (im*PolyLog(2, -((b^(1/6)*(a^(1/3) + b^(1/3)*sqrt(x)))/(sqrt(im - a) - a^(1/3)*b^(1/6)))))/(3*a^(1/3)*b^(2/3)) - (im*PolyLog(2, (b^(1/6)*(a^(1/3) + b^(1/3)*sqrt(x)))/(sqrt(-im - a) + a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) + (im*PolyLog(2, (b^(1/6)*(a^(1/3) + b^(1/3)*sqrt(x)))/(sqrt(im - a) + a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) + ((-1)^(5/6)*PolyLog(2, -((b^(1/6)*((-1)^(2/3)*a^(1/3) + b^(1/3)*sqrt(x)))/(sqrt(-im - a) - (-1)^(2/3)*a^(1/3)*b^(1/6)))))/(3*a^(1/3)*b^(2/3)) - ((-1)^(5/6)*PolyLog(2, -((b^(1/6)*((-1)^(2/3)*a^(1/3) + b^(1/3)*sqrt(x)))/(sqrt(im - a) - (-1)^(2/3)*a^(1/3)*b^(1/6)))))/(3*a^(1/3)*b^(2/3)) + ((-1)^(5/6)*PolyLog(2, (b^(1/6)*((-1)^(2/3)*a^(1/3) + b^(1/3)*sqrt(x)))/(sqrt(-im - a) + (-1)^(2/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) - ((-1)^(5/6)*PolyLog(2, (b^(1/6)*((-1)^(2/3)*a^(1/3) + b^(1/3)*sqrt(x)))/(sqrt(im - a) + (-1)^(2/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) + ((-1)^(1/6)*PolyLog(2, ((-1)^(1/3)*b^(1/6)*(a^(1/3) + (-1)^(2/3)*b^(1/3)*sqrt(x)))/(sqrt(-im - a) + (-1)^(1/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3)) - ((-1)^(1/6)*PolyLog(2, ((-1)^(1/3)*b^(1/6)*(a^(1/3) + (-1)^(2/3)*b^(1/3)*sqrt(x)))/(sqrt(im - a) + (-1)^(1/3)*a^(1/3)*b^(1/6))))/(3*a^(1/3)*b^(2/3))] =#
    @test_int [acot(a + b*x)/(c + d*sqrt(x)), x, 55, -((2*im*sqrt(im + a)*atan((sqrt(b)*sqrt(x))/sqrt(im + a)))/(sqrt(b)*d)) + (2*im*sqrt(im - a)*atanh((sqrt(b)*sqrt(x))/sqrt(im - a)))/(sqrt(b)*d) - (im*c*log((d*(sqrt(-im - a) - sqrt(b)*sqrt(x)))/(sqrt(b)*c + sqrt(-im - a)*d))*log(c + d*sqrt(x)))/d^2 + (im*c*log((d*(sqrt(im - a) - sqrt(b)*sqrt(x)))/(sqrt(b)*c + sqrt(im - a)*d))*log(c + d*sqrt(x)))/d^2 - (im*c*log(-((d*(sqrt(-im - a) + sqrt(b)*sqrt(x)))/(sqrt(b)*c - sqrt(-im - a)*d)))*log(c + d*sqrt(x)))/d^2 + (im*c*log(-((d*(sqrt(im - a) + sqrt(b)*sqrt(x)))/(sqrt(b)*c - sqrt(im - a)*d)))*log(c + d*sqrt(x)))/d^2 + (im*sqrt(x)*log(-((im - a - b*x)/(a + b*x))))/d - (im*c*log(c + d*sqrt(x))*log(-((im - a - b*x)/(a + b*x))))/d^2 - (im*sqrt(x)*log((im + a + b*x)/(a + b*x)))/d + (im*c*log(c + d*sqrt(x))*log((im + a + b*x)/(a + b*x)))/d^2 - (im*c*PolyLog(2, (sqrt(b)*(c + d*sqrt(x)))/(sqrt(b)*c - sqrt(-im - a)*d)))/d^2 - (im*c*PolyLog(2, (sqrt(b)*(c + d*sqrt(x)))/(sqrt(b)*c + sqrt(-im - a)*d)))/d^2 + (im*c*PolyLog(2, (sqrt(b)*(c + d*sqrt(x)))/(sqrt(b)*c - sqrt(im - a)*d)))/d^2 + (im*c*PolyLog(2, (sqrt(b)*(c + d*sqrt(x)))/(sqrt(b)*c + sqrt(im - a)*d)))/d^2]
    @test_int [acot(a + b*x)/(c + d/sqrt(x)), x, 65, (2*im*sqrt(im + a)*d*atan((sqrt(b)*sqrt(x))/sqrt(im + a)))/(sqrt(b)*c^2) - (2*im*sqrt(im - a)*d*atanh((sqrt(b)*sqrt(x))/sqrt(im - a)))/(sqrt(b)*c^2) + (im*d^2*log((c*(sqrt(-im - a) - sqrt(b)*sqrt(x)))/(sqrt(-im - a)*c + sqrt(b)*d))*log(d + c*sqrt(x)))/c^3 - (im*d^2*log((c*(sqrt(im - a) - sqrt(b)*sqrt(x)))/(sqrt(im - a)*c + sqrt(b)*d))*log(d + c*sqrt(x)))/c^3 + (im*d^2*log((c*(sqrt(-im - a) + sqrt(b)*sqrt(x)))/(sqrt(-im - a)*c - sqrt(b)*d))*log(d + c*sqrt(x)))/c^3 - (im*d^2*log((c*(sqrt(im - a) + sqrt(b)*sqrt(x)))/(sqrt(im - a)*c - sqrt(b)*d))*log(d + c*sqrt(x)))/c^3 + ((1 + im*a)*log(im - a - b*x))/(2*b*c) - (im*d*sqrt(x)*log(-((im - a - b*x)/(a + b*x))))/c^2 + (im*x*log(-((im - a - b*x)/(a + b*x))))/(2*c) + (im*d^2*log(d + c*sqrt(x))*log(-((im - a - b*x)/(a + b*x))))/c^3 + ((1 - im*a)*log(im + a + b*x))/(2*b*c) + (im*d*sqrt(x)*log((im + a + b*x)/(a + b*x)))/c^2 - (im*x*log((im + a + b*x)/(a + b*x)))/(2*c) - (im*d^2*log(d + c*sqrt(x))*log((im + a + b*x)/(a + b*x)))/c^3 + (im*d^2*PolyLog(2, -((sqrt(b)*(d + c*sqrt(x)))/(sqrt(-im - a)*c - sqrt(b)*d))))/c^3 - (im*d^2*PolyLog(2, -((sqrt(b)*(d + c*sqrt(x)))/(sqrt(im - a)*c - sqrt(b)*d))))/c^3 + (im*d^2*PolyLog(2, (sqrt(b)*(d + c*sqrt(x)))/(sqrt(-im - a)*c + sqrt(b)*d)))/c^3 - (im*d^2*PolyLog(2, (sqrt(b)*(d + c*sqrt(x)))/(sqrt(im - a)*c + sqrt(b)*d)))/c^3]
    #= [acot(a + b*x)/(a + b/x^(3/2)), x, 109, (im*b^(2/3)*log(-b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(-im - a) - sqrt(b)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) + b^(5/6))))/(3*a^(5/3)) - ((-1)^(1/6)*b^(2/3)*log((-1)^(1/3)*b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(-im - a) - sqrt(b)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) - (-1)^(1/3)*b^(5/6))))/(3*a^(5/3)) - ((-1)^(5/6)*b^(2/3)*log((-(-1)^(2/3))*b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(-im - a) - sqrt(b)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) + (-1)^(2/3)*b^(5/6))))/(3*a^(5/3)) - (im*b^(2/3)*log(-b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(im - a) - sqrt(b)*sqrt(x)))/(sqrt(im - a)*a^(1/3) + b^(5/6))))/(3*a^(5/3)) + ((-1)^(1/6)*b^(2/3)*log((-1)^(1/3)*b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(im - a) - sqrt(b)*sqrt(x)))/(sqrt(im - a)*a^(1/3) - (-1)^(1/3)*b^(5/6))))/(3*a^(5/3)) + ((-1)^(5/6)*b^(2/3)*log((-(-1)^(2/3))*b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(im - a) - sqrt(b)*sqrt(x)))/(sqrt(im - a)*a^(1/3) + (-1)^(2/3)*b^(5/6))))/(3*a^(5/3)) + (im*b^(2/3)*log(-b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(-im - a) + sqrt(b)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) - b^(5/6))))/(3*a^(5/3)) - ((-1)^(1/6)*b^(2/3)*log((-1)^(1/3)*b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(-im - a) + sqrt(b)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) + (-1)^(1/3)*b^(5/6))))/(3*a^(5/3)) - ((-1)^(5/6)*b^(2/3)*log((-(-1)^(2/3))*b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(-im - a) + sqrt(b)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) - (-1)^(2/3)*b^(5/6))))/(3*a^(5/3)) - (im*b^(2/3)*log(-b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(im - a) + sqrt(b)*sqrt(x)))/(sqrt(im - a)*a^(1/3) - b^(5/6))))/(3*a^(5/3)) + ((-1)^(1/6)*b^(2/3)*log((-1)^(1/3)*b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(im - a) + sqrt(b)*sqrt(x)))/(sqrt(im - a)*a^(1/3) + (-1)^(1/3)*b^(5/6))))/(3*a^(5/3)) + ((-1)^(5/6)*b^(2/3)*log((-(-1)^(2/3))*b^(1/3) - a^(1/3)*sqrt(x))*log((a^(1/3)*(sqrt(im - a) + sqrt(b)*sqrt(x)))/(sqrt(im - a)*a^(1/3) - (-1)^(2/3)*b^(5/6))))/(3*a^(5/3)) - (im*(im - a - b*x)*log(-((im - a - b*x)/(a + b*x))))/(2*a*b) + (im*b^(2/3)*log(-b^(1/3) - a^(1/3)*sqrt(x))*log(-((im - a - b*x)/(a + b*x))))/(3*a^(5/3)) - ((-1)^(1/6)*b^(2/3)*log((-1)^(1/3)*b^(1/3) - a^(1/3)*sqrt(x))*log(-((im - a - b*x)/(a + b*x))))/(3*a^(5/3)) - ((-1)^(5/6)*b^(2/3)*log((-(-1)^(2/3))*b^(1/3) - a^(1/3)*sqrt(x))*log(-((im - a - b*x)/(a + b*x))))/(3*a^(5/3)) + log(a + b*x)/(a*b) - (im*(im + a + b*x)*log((im + a + b*x)/(a + b*x)))/(2*a*b) - (im*b^(2/3)*log(-b^(1/3) - a^(1/3)*sqrt(x))*log((im + a + b*x)/(a + b*x)))/(3*a^(5/3)) + ((-1)^(1/6)*b^(2/3)*log((-1)^(1/3)*b^(1/3) - a^(1/3)*sqrt(x))*log((im + a + b*x)/(a + b*x)))/(3*a^(5/3)) + ((-1)^(5/6)*b^(2/3)*log((-(-1)^(2/3))*b^(1/3) - a^(1/3)*sqrt(x))*log((im + a + b*x)/(a + b*x)))/(3*a^(5/3)) - ((-1)^(1/6)*b^(2/3)*PolyLog(2, -((sqrt(b)*((-1)^(1/3)*b^(1/3) - a^(1/3)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) - (-1)^(1/3)*b^(5/6)))))/(3*a^(5/3)) + ((-1)^(1/6)*b^(2/3)*PolyLog(2, -((sqrt(b)*((-1)^(1/3)*b^(1/3) - a^(1/3)*sqrt(x)))/(sqrt(im - a)*a^(1/3) - (-1)^(1/3)*b^(5/6)))))/(3*a^(5/3)) + (im*b^(2/3)*PolyLog(2, -((sqrt(b)*(b^(1/3) + a^(1/3)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) - b^(5/6)))))/(3*a^(5/3)) - (im*b^(2/3)*PolyLog(2, -((sqrt(b)*(b^(1/3) + a^(1/3)*sqrt(x)))/(sqrt(im - a)*a^(1/3) - b^(5/6)))))/(3*a^(5/3)) + (im*b^(2/3)*PolyLog(2, (sqrt(b)*(b^(1/3) + a^(1/3)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) + b^(5/6))))/(3*a^(5/3)) - (im*b^(2/3)*PolyLog(2, (sqrt(b)*(b^(1/3) + a^(1/3)*sqrt(x)))/(sqrt(im - a)*a^(1/3) + b^(5/6))))/(3*a^(5/3)) - ((-1)^(5/6)*b^(2/3)*PolyLog(2, -((sqrt(b)*((-1)^(2/3)*b^(1/3) + a^(1/3)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) - (-1)^(2/3)*b^(5/6)))))/(3*a^(5/3)) + ((-1)^(5/6)*b^(2/3)*PolyLog(2, -((sqrt(b)*((-1)^(2/3)*b^(1/3) + a^(1/3)*sqrt(x)))/(sqrt(im - a)*a^(1/3) - (-1)^(2/3)*b^(5/6)))))/(3*a^(5/3)) - ((-1)^(5/6)*b^(2/3)*PolyLog(2, (sqrt(b)*((-1)^(2/3)*b^(1/3) + a^(1/3)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) + (-1)^(2/3)*b^(5/6))))/(3*a^(5/3)) + ((-1)^(5/6)*b^(2/3)*PolyLog(2, (sqrt(b)*((-1)^(2/3)*b^(1/3) + a^(1/3)*sqrt(x)))/(sqrt(im - a)*a^(1/3) + (-1)^(2/3)*b^(5/6))))/(3*a^(5/3)) - ((-1)^(1/6)*b^(2/3)*PolyLog(2, ((-1)^(1/3)*sqrt(b)*(b^(1/3) + (-1)^(2/3)*a^(1/3)*sqrt(x)))/(sqrt(-im - a)*a^(1/3) + (-1)^(1/3)*b^(5/6))))/(3*a^(5/3)) + ((-1)^(1/6)*b^(2/3)*PolyLog(2, ((-1)^(1/3)*sqrt(b)*(b^(1/3) + (-1)^(2/3)*a^(1/3)*sqrt(x)))/(sqrt(im - a)*a^(1/3) + (-1)^(1/3)*b^(5/6))))/(3*a^(5/3))] =#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(A+B*x+C*x^2)^m*acot(a+b*x)^n=#


    @test_int [acot(d + e*x)/(a + b*x + c*x^2), x, 12, (acot(d + e*x)*log((2*e*(b - sqrt(b^2 - 4*a*c) + 2*c*x))/((2*c*(im - d) + (b - sqrt(b^2 - 4*a*c))*e)*(1 - im*(d + e*x)))))/sqrt(b^2 - 4*a*c) - (acot(d + e*x)*log((2*e*(b + sqrt(b^2 - 4*a*c) + 2*c*x))/((2*c*(im - d) + (b + sqrt(b^2 - 4*a*c))*e)*(1 - im*(d + e*x)))))/sqrt(b^2 - 4*a*c) + (im*PolyLog(2, 1 + (2*(2*c*d - (b - sqrt(b^2 - 4*a*c))*e - 2*c*(d + e*x)))/((2*im*c - 2*c*d + b*e - sqrt(b^2 - 4*a*c)*e)*(1 - im*(d + e*x)))))/(2*sqrt(b^2 - 4*a*c)) - (im*PolyLog(2, 1 + (2*(2*c*d - (b + sqrt(b^2 - 4*a*c))*e - 2*c*(d + e*x)))/((2*c*(im - d) + (b + sqrt(b^2 - 4*a*c))*e)*(1 - im*(d + e*x)))))/(2*sqrt(b^2 - 4*a*c))]


    @test_int [acot(a + b*x)/sqrt(1 + a^2 + 2*a*b*x + b^2*x^2), x, 2, -((2*im*acot(a + b*x)*atan(sqrt(1 + im*(a + b*x))/sqrt(1 - im*(a + b*x))))/b) - (im*PolyLog(2, -((im*sqrt(1 + im*(a + b*x)))/sqrt(1 - im*(a + b*x)))))/b + (im*PolyLog(2, (im*sqrt(1 + im*(a + b*x)))/sqrt(1 - im*(a + b*x))))/b]
    @test_int [acot(a + b*x)/sqrt((1 + a^2)*c + 2*a*b*c*x + b^2*c*x^2), x, 3, -((2*im*sqrt(1 + (a + b*x)^2)*acot(a + b*x)*atan(sqrt(1 + im*(a + b*x))/sqrt(1 - im*(a + b*x))))/(b*sqrt(c + c*(a + b*x)^2))) - (im*sqrt(1 + (a + b*x)^2)*PolyLog(2, -((im*sqrt(1 + im*(a + b*x)))/sqrt(1 - im*(a + b*x)))))/(b*sqrt(c + c*(a + b*x)^2)) + (im*sqrt(1 + (a + b*x)^2)*PolyLog(2, (im*sqrt(1 + im*(a + b*x)))/sqrt(1 - im*(a + b*x))))/(b*sqrt(c + c*(a + b*x)^2))]


    @test_int [acot(a + b*x)/(1 + a^2 + 2*a*b*x + b^2*x^2)^(1/3), x, 1, Unintegrable(acot(a + b*x)/(1 + (a + b*x)^2)^(1/3), x)]
    @test_int [acot(a + b*x)/((1 + a^2)*c + 2*a*b*c*x + b^2*c*x^2)^(1/3), x, 1, Unintegrable(acot(a + b*x)/(c + c*(a + b*x)^2)^(1/3), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(A+B*x+C*x^2)^p*acot(a+b*x)^n=#


    @test_int [(a + b*x)^2*acot(a + b*x)/sqrt(1 + a^2 + 2*a*b*x + b^2*x^2), x, 4, sqrt(1 + (a + b*x)^2)/(2*b) + ((a + b*x)*sqrt(1 + (a + b*x)^2)*acot(a + b*x))/(2*b) + (im*acot(a + b*x)*atan(sqrt(1 + im*(a + b*x))/sqrt(1 - im*(a + b*x))))/b + (im*PolyLog(2, -((im*sqrt(1 + im*(a + b*x)))/sqrt(1 - im*(a + b*x)))))/(2*b) - (im*PolyLog(2, (im*sqrt(1 + im*(a + b*x)))/sqrt(1 - im*(a + b*x))))/(2*b)]
    @test_int [(a + b*x)^2*acot(a + b*x)/sqrt((1 + a^2)*c + 2*a*b*c*x + b^2*c*x^2), x, 5, sqrt(c + c*(a + b*x)^2)/(2*b*c) + ((a + b*x)*sqrt(c + c*(a + b*x)^2)*acot(a + b*x))/(2*b*c) + (im*sqrt(1 + (a + b*x)^2)*acot(a + b*x)*atan(sqrt(1 + im*(a + b*x))/sqrt(1 - im*(a + b*x))))/(b*sqrt(c + c*(a + b*x)^2)) + (im*sqrt(1 + (a + b*x)^2)*PolyLog(2, -((im*sqrt(1 + im*(a + b*x)))/sqrt(1 - im*(a + b*x)))))/(2*b*sqrt(c + c*(a + b*x)^2)) - (im*sqrt(1 + (a + b*x)^2)*PolyLog(2, (im*sqrt(1 + im*(a + b*x)))/sqrt(1 - im*(a + b*x))))/(2*b*sqrt(c + c*(a + b*x)^2))]


    @test_int [(a + b*x)^2*acot(a + b*x)/(1 + a^2 + 2*a*b*x + b^2*x^2)^(1/3), x, 1, Unintegrable(((a + b*x)^2*acot(a + b*x))/(1 + (a + b*x)^2)^(1/3), x)]
    @test_int [(a + b*x)^2*acot(a + b*x)/((1 + a^2)*c + 2*a*b*c*x + b^2*c*x^2)^(1/3), x, 1, Unintegrable(((a + b*x)^2*acot(a + b*x))/(c + c*(a + b*x)^2)^(1/3), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*acot(c+d*x))^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*acot(c+d*x))^p*when*d*e-c*f=0=#


    @test_int [(a + b*x)^2*acot(a + b*x), x, 5, (a + b*x)^2/(6*b) + ((a + b*x)^3*acot(a + b*x))/(3*b) - log(1 + (a + b*x)^2)/(6*b)]
    @test_int [(a + b*x)^1*acot(a + b*x), x, 4, x/2 + ((a + b*x)^2*acot(a + b*x))/(2*b) - atan(a + b*x)/(2*b)]
    @test_int [acot(a + b*x)/(a + b*x)^1, x, 4, -((im*PolyLog(2, -(im/(a + b*x))))/(2*b)) + (im*PolyLog(2, im/(a + b*x)))/(2*b)]
    @test_int [acot(a + b*x)/(a + b*x)^2, x, 6, -(acot(a + b*x)/(b*(a + b*x))) - log(a + b*x)/b + log(1 + (a + b*x)^2)/(2*b)]


    @test_int [acot(1 + x)/(2 + 2*x), x, 5, (-(1/4))*im*PolyLog(2, -(im/(1 + x))) + (1/4)*im*PolyLog(2, im/(1 + x))]


    @test_int [acot(a + b*x)/((a*d)/b + d*x), x, 5, -((im*PolyLog(2, -(im/(a + b*x))))/(2*d)) + (im*PolyLog(2, im/(a + b*x)))/(2*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*acot(c+d*x))^(p/2)*when*d*e-c*f=0=#


    @test_int [(a + b*x)^2*acot(a + b*x)^(1/2), x, 0, Unintegrable((a + b*x)^2*sqrt(acot(a + b*x)), x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*acot(c+d*x))^p=#


    @test_int [(e + f*x)^3*(a + b*acot(c + d*x)), x, 7, (b*f*(6*d^2*e^2 - 12*c*d*e*f - (1 - 6*c^2)*f^2)*x)/(4*d^3) + (b*f^2*(d*e - c*f)*(c + d*x)^2)/(2*d^4) + (b*f^3*(c + d*x)^3)/(12*d^4) + ((e + f*x)^4*(a + b*acot(c + d*x)))/(4*f) + (b*(d^4*e^4 - 4*c*d^3*e^3*f - 6*(1 - c^2)*d^2*e^2*f^2 + 4*c*(3 - c^2)*d*e*f^3 + (1 - 6*c^2 + c^4)*f^4)*atan(c + d*x))/(4*d^4*f) + (b*(d*e - c*f)*(d*e + f - c*f)*(d*e - (1 + c)*f)*log(1 + (c + d*x)^2))/(2*d^4)]
    @test_int [(e + f*x)^2*(a + b*acot(c + d*x)), x, 7, (b*f*(d*e - c*f)*x)/d^2 + (b*f^2*(c + d*x)^2)/(6*d^3) + ((e + f*x)^3*(a + b*acot(c + d*x)))/(3*f) + (b*(d*e - c*f)*(d^2*e^2 - 2*c*d*e*f - (3 - c^2)*f^2)*atan(c + d*x))/(3*d^3*f) + (b*(3*d^2*e^2 - 6*c*d*e*f - (1 - 3*c^2)*f^2)*log(1 + (c + d*x)^2))/(6*d^3)]
    @test_int [(e + f*x)*(a + b*acot(c + d*x)), x, 7, (b*f*x)/(2*d) + ((e + f*x)^2*(a + b*acot(c + d*x)))/(2*f) + (b*(d*e + f - c*f)*(d*e - (1 + c)*f)*atan(c + d*x))/(2*d^2*f) + (b*(d*e - c*f)*log(1 + (c + d*x)^2))/(2*d^2)]
    @test_int [a + b*acot(c + d*x), x, 4, a*x + (b*(c + d*x)*acot(c + d*x))/d + (b*log(1 + (c + d*x)^2))/(2*d)]
    @test_int [(a + b*acot(c + d*x))/(e + f*x), x, 5, -(((a + b*acot(c + d*x))*log(2/(1 - im*(c + d*x))))/f) + ((a + b*acot(c + d*x))*log((2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/f - (im*b*PolyLog(2, 1 - 2/(1 - im*(c + d*x))))/(2*f) + (im*b*PolyLog(2, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(2*f)]
    @test_int [(a + b*acot(c + d*x))/(e + f*x)^2, x, 8, -((a + b*acot(c + d*x))/(f*(e + f*x))) - (b*d*(d*e - c*f)*atan(c + d*x))/(f*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) - (b*d*log(e + f*x))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (b*d*log(1 + c^2 + 2*c*d*x + d^2*x^2))/(2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))]
    @test_int [(a + b*acot(c + d*x))/(e + f*x)^3, x, 9, (b*d)/(2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)*(e + f*x)) - (a + b*acot(c + d*x))/(2*f*(e + f*x)^2) - (b*d^2*(d*e + f - c*f)*(d*e - (1 + c)*f)*atan(c + d*x))/(2*f*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)^2) - (b*d^2*(d*e - c*f)*log(e + f*x))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)^2 + (b*d^2*(d*e - c*f)*log(1 + c^2 + 2*c*d*x + d^2*x^2))/(2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)^2)]


    @test_int [(e + f*x)^2*(a + b*acot(c + d*x))^2, x, 16, (b^2*f^2*x)/(3*d^2) + (2*a*b*f*(d*e - c*f)*x)/d^2 + (2*b^2*f*(d*e - c*f)*(c + d*x)*acot(c + d*x))/d^3 + (b*f^2*(c + d*x)^2*(a + b*acot(c + d*x)))/(3*d^3) + (im*(3*d^2*e^2 - 6*c*d*e*f - (1 - 3*c^2)*f^2)*(a + b*acot(c + d*x))^2)/(3*d^3) - ((d*e - c*f)*(d^2*e^2 - 2*c*d*e*f - (3 - c^2)*f^2)*(a + b*acot(c + d*x))^2)/(3*d^3*f) + ((e + f*x)^3*(a + b*acot(c + d*x))^2)/(3*f) - (b^2*f^2*atan(c + d*x))/(3*d^3) - (2*b*(3*d^2*e^2 - 6*c*d*e*f - (1 - 3*c^2)*f^2)*(a + b*acot(c + d*x))*log(2/(1 + im*(c + d*x))))/(3*d^3) + (b^2*f*(d*e - c*f)*log(1 + (c + d*x)^2))/d^3 + (im*b^2*(3*d^2*e^2 - 6*c*d*e*f - (1 - 3*c^2)*f^2)*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/(3*d^3)]
    @test_int [(e + f*x)*(a + b*acot(c + d*x))^2, x, 13, (a*b*f*x)/d + (b^2*f*(c + d*x)*acot(c + d*x))/d^2 + (im*(d*e - c*f)*(a + b*acot(c + d*x))^2)/d^2 - ((d*e + f - c*f)*(d*e - (1 + c)*f)*(a + b*acot(c + d*x))^2)/(2*d^2*f) + ((e + f*x)^2*(a + b*acot(c + d*x))^2)/(2*f) - (2*b*(d*e - c*f)*(a + b*acot(c + d*x))*log(2/(1 + im*(c + d*x))))/d^2 + (b^2*f*log(1 + (c + d*x)^2))/(2*d^2) + (im*b^2*(d*e - c*f)*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/d^2]
    @test_int [(a + b*acot(c + d*x))^2, x, 6, (im*(a + b*acot(c + d*x))^2)/d + ((c + d*x)*(a + b*acot(c + d*x))^2)/d - (2*b*(a + b*acot(c + d*x))*log(2/(1 + im*(c + d*x))))/d + (im*b^2*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/d]
    @test_int [(a + b*acot(c + d*x))^2/(e + f*x), x, 2, -(((a + b*acot(c + d*x))^2*log(2/(1 - im*(c + d*x))))/f) + ((a + b*acot(c + d*x))^2*log((2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/f - (im*b*(a + b*acot(c + d*x))*PolyLog(2, 1 - 2/(1 - im*(c + d*x))))/f + (im*b*(a + b*acot(c + d*x))*PolyLog(2, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/f - (b^2*PolyLog(3, 1 - 2/(1 - im*(c + d*x))))/(2*f) + (b^2*PolyLog(3, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(2*f)]
    @test_int [(a + b*acot(c + d*x))^2/(e + f*x)^2, x, 25, (im*b^2*d*acot(c + d*x)^2)/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (b^2*d*(d*e - c*f)*acot(c + d*x)^2)/(f*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) - (a + b*acot(c + d*x))^2/(f*(e + f*x)) - (2*a*b*d*(d*e - c*f)*atan(c + d*x))/(f*(f^2 + (d*e - c*f)^2)) - (2*a*b*d*log(e + f*x))/(f^2 + (d*e - c*f)^2) + (2*b^2*d*acot(c + d*x)*log(2/(1 - im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) - (2*b^2*d*acot(c + d*x)*log((2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) - (2*b^2*d*acot(c + d*x)*log(2/(1 + im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (a*b*d*log(1 + (c + d*x)^2))/(f^2 + (d*e - c*f)^2) + (im*b^2*d*PolyLog(2, 1 - 2/(1 - im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) - (im*b^2*d*PolyLog(2, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (im*b^2*d*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)]


    @test_int [(e + f*x)^2*(a + b*acot(c + d*x))^3, x, 21, (a*b^2*f^2*x)/d^2 + (b^3*f^2*(c + d*x)*acot(c + d*x))/d^3 + (b*f^2*(a + b*acot(c + d*x))^2)/(2*d^3) + (3*im*b*f*(d*e - c*f)*(a + b*acot(c + d*x))^2)/d^3 + (3*b*f*(d*e - c*f)*(c + d*x)*(a + b*acot(c + d*x))^2)/d^3 + (b*f^2*(c + d*x)^2*(a + b*acot(c + d*x))^2)/(2*d^3) + (im*(3*d^2*e^2 - 6*c*d*e*f - (1 - 3*c^2)*f^2)*(a + b*acot(c + d*x))^3)/(3*d^3) - ((d*e - c*f)*(d^2*e^2 - 2*c*d*e*f - (3 - c^2)*f^2)*(a + b*acot(c + d*x))^3)/(3*d^3*f) + ((e + f*x)^3*(a + b*acot(c + d*x))^3)/(3*f) - (6*b^2*f*(d*e - c*f)*(a + b*acot(c + d*x))*log(2/(1 + im*(c + d*x))))/d^3 - (b*(3*d^2*e^2 - 6*c*d*e*f - (1 - 3*c^2)*f^2)*(a + b*acot(c + d*x))^2*log(2/(1 + im*(c + d*x))))/d^3 + (b^3*f^2*log(1 + (c + d*x)^2))/(2*d^3) + (3*im*b^3*f*(d*e - c*f)*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/d^3 + (im*b^2*(3*d^2*e^2 - 6*c*d*e*f - (1 - 3*c^2)*f^2)*(a + b*acot(c + d*x))*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/d^3 - (b^3*(3*d^2*e^2 - 6*c*d*e*f - (1 - 3*c^2)*f^2)*PolyLog(3, 1 - 2/(1 + im*(c + d*x))))/(2*d^3)]
    @test_int [(e + f*x)*(a + b*acot(c + d*x))^3, x, 15, (3*im*b*f*(a + b*acot(c + d*x))^2)/(2*d^2) + (3*b*f*(c + d*x)*(a + b*acot(c + d*x))^2)/(2*d^2) + (im*(d*e - c*f)*(a + b*acot(c + d*x))^3)/d^2 - ((d*e + f - c*f)*(d*e - (1 + c)*f)*(a + b*acot(c + d*x))^3)/(2*d^2*f) + ((e + f*x)^2*(a + b*acot(c + d*x))^3)/(2*f) - (3*b^2*f*(a + b*acot(c + d*x))*log(2/(1 + im*(c + d*x))))/d^2 - (3*b*(d*e - c*f)*(a + b*acot(c + d*x))^2*log(2/(1 + im*(c + d*x))))/d^2 + (3*im*b^3*f*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/(2*d^2) + (3*im*b^2*(d*e - c*f)*(a + b*acot(c + d*x))*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/d^2 - (3*b^3*(d*e - c*f)*PolyLog(3, 1 - 2/(1 + im*(c + d*x))))/(2*d^2)]
    @test_int [(a + b*acot(c + d*x))^3, x, 6, (im*(a + b*acot(c + d*x))^3)/d + ((c + d*x)*(a + b*acot(c + d*x))^3)/d - (3*b*(a + b*acot(c + d*x))^2*log(2/(1 + im*(c + d*x))))/d + (3*im*b^2*(a + b*acot(c + d*x))*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/d - (3*b^3*PolyLog(3, 1 - 2/(1 + im*(c + d*x))))/(2*d)]
    @test_int [(a + b*acot(c + d*x))^3/(e + f*x), x, 2, -(((a + b*acot(c + d*x))^3*log(2/(1 - im*(c + d*x))))/f) + ((a + b*acot(c + d*x))^3*log((2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/f - (3*im*b*(a + b*acot(c + d*x))^2*PolyLog(2, 1 - 2/(1 - im*(c + d*x))))/(2*f) + (3*im*b*(a + b*acot(c + d*x))^2*PolyLog(2, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(2*f) - (3*b^2*(a + b*acot(c + d*x))*PolyLog(3, 1 - 2/(1 - im*(c + d*x))))/(2*f) + (3*b^2*(a + b*acot(c + d*x))*PolyLog(3, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(2*f) + (3*im*b^3*PolyLog(4, 1 - 2/(1 - im*(c + d*x))))/(4*f) - (3*im*b^3*PolyLog(4, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(4*f)]
    @test_int [(a + b*acot(c + d*x))^3/(e + f*x)^2, x, 35, (3*im*a*b^2*d*acot(c + d*x)^2)/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (3*a*b^2*d*(d*e - c*f)*acot(c + d*x)^2)/(f*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) + (im*b^3*d*acot(c + d*x)^3)/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (b^3*d*(d*e - c*f)*acot(c + d*x)^3)/(f*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) - (a + b*acot(c + d*x))^3/(f*(e + f*x)) - (3*a^2*b*d*(d*e - c*f)*atan(c + d*x))/(f*(f^2 + (d*e - c*f)^2)) - (3*a^2*b*d*log(e + f*x))/(f^2 + (d*e - c*f)^2) + (6*a*b^2*d*acot(c + d*x)*log(2/(1 - im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (3*b^3*d*acot(c + d*x)^2*log(2/(1 - im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) - (6*a*b^2*d*acot(c + d*x)*log((2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) - (3*b^3*d*acot(c + d*x)^2*log((2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) - (6*a*b^2*d*acot(c + d*x)*log(2/(1 + im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) - (3*b^3*d*acot(c + d*x)^2*log(2/(1 + im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (3*a^2*b*d*log(1 + (c + d*x)^2))/(2*(f^2 + (d*e - c*f)^2)) + (3*im*a*b^2*d*PolyLog(2, 1 - 2/(1 - im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (3*im*b^3*d*acot(c + d*x)*PolyLog(2, 1 - 2/(1 - im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) - (3*im*a*b^2*d*PolyLog(2, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) - (3*im*b^3*d*acot(c + d*x)*PolyLog(2, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (3*im*a*b^2*d*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (3*im*b^3*d*acot(c + d*x)*PolyLog(2, 1 - 2/(1 + im*(c + d*x))))/(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2) + (3*b^3*d*PolyLog(3, 1 - 2/(1 - im*(c + d*x))))/(2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) - (3*b^3*d*PolyLog(3, 1 - (2*d*(e + f*x))/((d*e + im*f - c*f)*(1 - im*(c + d*x)))))/(2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2)) - (3*b^3*d*PolyLog(3, 1 - 2/(1 + im*(c + d*x))))/(2*(d^2*e^2 - 2*c*d*e*f + (1 + c^2)*f^2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(e+f*x)^m*(a+b*acot(c+d*x))^p*with*m*symbolic=#


    @test_int [(e + f*x)^m*(a + b*acot(c + d*x)), x, 6, ((e + f*x)^(1 + m)*(a + b*acot(c + d*x)))/(f*(1 + m)) + (im*b*d*(e + f*x)^(2 + m)*HypergeometricFunctions._₂F₁(1, 2 + m, 3 + m, (d*(e + f*x))/(d*e + im*f - c*f)))/(2*f*(d*e + (im - c)*f)*(1 + m)*(2 + m)) - (im*b*d*(e + f*x)^(2 + m)*HypergeometricFunctions._₂F₁(1, 2 + m, 3 + m, (d*(e + f*x))/(d*e - (im + c)*f)))/(2*f*(d*e - (im + c)*f)*(1 + m)*(2 + m))]
    @test_int [(e + f*x)^m*(a + b*acot(c + d*x))^2, x, 1, Unintegrable((e + f*x)^m*(a + b*acot(c + d*x))^2, x)]
    @test_int [(e + f*x)^m*(a + b*acot(c + d*x))^3, x, 1, Unintegrable((e + f*x)^m*(a + b*acot(c + d*x))^3, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u*acot(a+b*x^n)=#


    @test_int [x^3*acot(a + b*x^4), x, 4, ((a + b*x^4)*acot(a + b*x^4))/(4*b) + log(1 + (a + b*x^4)^2)/(8*b)]


    @test_int [x^(n-1)*acot(a + b*x^n), x, 4, ((a + b*x^n)*acot(a + b*x^n))/(b*n) + log(1 + (a + b*x^n)^2)/(2*b*n)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*u^m*(a+b*acot(sqrt(1-c*x)/sqrt(1+c*x)))^n=#


    @test_int [(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^n/(1 - c^2*x^2), x, 0, Unintegrable((a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^n/(1 - c^2*x^2), x)]


    @test_int [(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^3/(1 - c^2*x^2), x, 9, -((2*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^3*acoth(1 - 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/c) + (3*im*b*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*PolyLog(2, 1 - (2*im)/(im + sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c) - (3*im*b*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*PolyLog(2, 1 - (2*sqrt(1 - c*x))/(sqrt(1 + c*x)*(im + sqrt(1 - c*x)/sqrt(1 + c*x)))))/(2*c) + (3*b^2*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(3, 1 - (2*im)/(im + sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c) - (3*b^2*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(3, 1 - (2*sqrt(1 - c*x))/(sqrt(1 + c*x)*(im + sqrt(1 - c*x)/sqrt(1 + c*x)))))/(2*c) - (3*im*b^3*PolyLog(4, 1 - (2*im)/(im + sqrt(1 - c*x)/sqrt(1 + c*x))))/(4*c) + (3*im*b^3*PolyLog(4, 1 - (2*sqrt(1 - c*x))/(sqrt(1 + c*x)*(im + sqrt(1 - c*x)/sqrt(1 + c*x)))))/(4*c)]
    @test_int [(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^2/(1 - c^2*x^2), x, 7, -((2*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*acoth(1 - 2/(1 + (im*sqrt(1 - c*x))/sqrt(1 + c*x))))/c) + (im*b*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(2, 1 - (2*im)/(im + sqrt(1 - c*x)/sqrt(1 + c*x))))/c - (im*b*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))*PolyLog(2, 1 - (2*sqrt(1 - c*x))/(sqrt(1 + c*x)*(im + sqrt(1 - c*x)/sqrt(1 + c*x)))))/c + (b^2*PolyLog(3, 1 - (2*im)/(im + sqrt(1 - c*x)/sqrt(1 + c*x))))/(2*c) - (b^2*PolyLog(3, 1 - (2*sqrt(1 - c*x))/(sqrt(1 + c*x)*(im + sqrt(1 - c*x)/sqrt(1 + c*x)))))/(2*c)]
    @test_int [(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^1/(1 - c^2*x^2), x, 4, -((a*log(sqrt(1 - c*x)/sqrt(1 + c*x)))/c) + (im*b*PolyLog(2, -((im*sqrt(1 + c*x))/sqrt(1 - c*x))))/(2*c) - (im*b*PolyLog(2, (im*sqrt(1 + c*x))/sqrt(1 - c*x)))/(2*c)]
    @test_int [1/((a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^1*(1 - c^2*x^2)), x, 0, Unintegrable(1/((1 - c^2*x^2)*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))), x)]
    @test_int [1/((a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^2*(1 - c^2*x^2)), x, 0, Unintegrable(1/((1 - c^2*x^2)*(a + b*acot(sqrt(1 - c*x)/sqrt(1 + c*x)))^2), x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(c+d*Trig(a+b*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(c+d*tan(a+b*x))=#


    @test_int [acot(tan(a + b*x)), x, 2, -(acot(tan(a + b*x))^2/(2*b))]


    @test_int [x^2*acot(c + d*tan(a + b*x)), x, 11, (1/3)*x^3*acot(c + d*tan(a + b*x)) - (1/6)*im*x^3*log(1 + ((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)) + (1/6)*im*x^3*log(1 + ((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))) - (x^2*PolyLog(2, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d))))/(4*b) + (x^2*PolyLog(2, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d)))))/(4*b) - (im*x*PolyLog(3, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d))))/(4*b^2) + (im*x*PolyLog(3, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d)))))/(4*b^2) + PolyLog(4, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)))/(8*b^3) - PolyLog(4, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))))/(8*b^3)]
    @test_int [x^1*acot(c + d*tan(a + b*x)), x, 9, (1/2)*x^2*acot(c + d*tan(a + b*x)) - (1/4)*im*x^2*log(1 + ((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)) + (1/4)*im*x^2*log(1 + ((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))) - (x*PolyLog(2, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d))))/(4*b) + (x*PolyLog(2, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d)))))/(4*b) - (im*PolyLog(3, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d))))/(8*b^2) + (im*PolyLog(3, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d)))))/(8*b^2)]
    @test_int [x^0*acot(c + d*tan(a + b*x)), x, 7, x*acot(c + d*tan(a + b*x)) - (1/2)*im*x*log(1 + ((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)) + (1/2)*im*x*log(1 + ((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))) - PolyLog(2, -(((1 + im*c + d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c - d)))/(4*b) + PolyLog(2, -(((c + im*(1 - d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 + d))))/(4*b)]
    @test_int [acot(c + d*tan(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c + d*tan(a + b*x))/x, x)]


    @test_int [x^2*acot(c + (1 + im*c)*tan(a + b*x)), x, 7, (b*x^4)/12 + (1/3)*x^3*acot(c + (1 + im*c)*tan(a + b*x)) + (1/6)*im*x^3*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) + (x^2*PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) + (im*x*PolyLog(3, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) - PolyLog(4, im*c*ℯ^(2*im*a + 2*im*b*x))/(8*b^3)]
    @test_int [x^1*acot(c + (1 + im*c)*tan(a + b*x)), x, 6, (b*x^3)/6 + (1/2)*x^2*acot(c + (1 + im*c)*tan(a + b*x)) + (1/4)*im*x^2*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) + (x*PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) + (im*PolyLog(3, im*c*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*acot(c + (1 + im*c)*tan(a + b*x)), x, 5, (b*x^2)/2 + x*acot(c + (1 + im*c)*tan(a + b*x)) + (1/2)*im*x*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) + PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x))/(4*b)]
    @test_int [acot(c + (1 + im*c)*tan(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c + (1 + im*c)*tan(a + b*x))/x, x)]


    @test_int [x^2*acot(c - (1 - im*c)*tan(a + b*x)), x, 7, -((b*x^4)/12) + (1/3)*x^3*acot(c - (1 - im*c)*tan(a + b*x)) - (1/6)*im*x^3*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) - (x^2*PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (im*x*PolyLog(3, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) + PolyLog(4, (-im)*c*ℯ^(2*im*a + 2*im*b*x))/(8*b^3)]
    @test_int [x^1*acot(c - (1 - im*c)*tan(a + b*x)), x, 6, -((b*x^3)/6) + (1/2)*x^2*acot(c - (1 - im*c)*tan(a + b*x)) - (1/4)*im*x^2*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) - (x*PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (im*PolyLog(3, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*acot(c - (1 - im*c)*tan(a + b*x)), x, 5, -((b*x^2)/2) + x*acot(c - (1 - im*c)*tan(a + b*x)) - (1/2)*im*x*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) - PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x))/(4*b)]
    @test_int [acot(c - (1 - im*c)*tan(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c - (1 - im*c)*tan(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(c+d*cot(a+b*x))=#


    @test_int [acot(cot(a + b*x)), x, 2, acot(cot(a + b*x))^2/(2*b)]


    @test_int [x^2*acot(c + d*cot(a + b*x)), x, 11, (1/3)*x^3*acot(c + d*cot(a + b*x)) - (1/6)*im*x^3*log(1 - ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)) + (1/6)*im*x^3*log(1 - ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))) - (x^2*PolyLog(2, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)))/(4*b) + (x^2*PolyLog(2, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))))/(4*b) - (im*x*PolyLog(3, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)))/(4*b^2) + (im*x*PolyLog(3, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))))/(4*b^2) + PolyLog(4, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d))/(8*b^3) - PolyLog(4, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d)))/(8*b^3)]
    @test_int [x^1*acot(c + d*cot(a + b*x)), x, 9, (1/2)*x^2*acot(c + d*cot(a + b*x)) - (1/4)*im*x^2*log(1 - ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)) + (1/4)*im*x^2*log(1 - ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))) - (x*PolyLog(2, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)))/(4*b) + (x*PolyLog(2, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))))/(4*b) - (im*PolyLog(3, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)))/(8*b^2) + (im*PolyLog(3, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))))/(8*b^2)]
    @test_int [x^0*acot(c + d*cot(a + b*x)), x, 7, x*acot(c + d*cot(a + b*x)) - (1/2)*im*x*log(1 - ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d)) + (1/2)*im*x*log(1 - ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d))) - PolyLog(2, ((1 + im*c - d)*ℯ^(2*im*a + 2*im*b*x))/(1 + im*c + d))/(4*b) + PolyLog(2, ((c + im*(1 + d))*ℯ^(2*im*a + 2*im*b*x))/(c + im*(1 - d)))/(4*b)]
    @test_int [acot(c + d*cot(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c + d*cot(a + b*x))/x, x)]


    @test_int [x^2*acot(c + (1 - im*c)*cot(a + b*x)), x, 7, -((b*x^4)/12) + (1/3)*x^3*acot(c + (1 - im*c)*cot(a + b*x)) - (1/6)*im*x^3*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) - (x^2*PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (im*x*PolyLog(3, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) + PolyLog(4, im*c*ℯ^(2*im*a + 2*im*b*x))/(8*b^3)]
    @test_int [x^1*acot(c + (1 - im*c)*cot(a + b*x)), x, 6, -((b*x^3)/6) + (1/2)*x^2*acot(c + (1 - im*c)*cot(a + b*x)) - (1/4)*im*x^2*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) - (x*PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) - (im*PolyLog(3, im*c*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*acot(c + (1 - im*c)*cot(a + b*x)), x, 5, -((b*x^2)/2) + x*acot(c + (1 - im*c)*cot(a + b*x)) - (1/2)*im*x*log(1 - im*c*ℯ^(2*im*a + 2*im*b*x)) - PolyLog(2, im*c*ℯ^(2*im*a + 2*im*b*x))/(4*b)]
    @test_int [acot(c + (1 - im*c)*cot(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c + (1 - im*c)*cot(a + b*x))/x, x)]


    @test_int [x^2*acot(c - (1 + im*c)*cot(a + b*x)), x, 7, (b*x^4)/12 + (1/3)*x^3*acot(c - (1 + im*c)*cot(a + b*x)) + (1/6)*im*x^3*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) + (x^2*PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) + (im*x*PolyLog(3, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b^2) - PolyLog(4, (-im)*c*ℯ^(2*im*a + 2*im*b*x))/(8*b^3)]
    @test_int [x^1*acot(c - (1 + im*c)*cot(a + b*x)), x, 6, (b*x^3)/6 + (1/2)*x^2*acot(c - (1 + im*c)*cot(a + b*x)) + (1/4)*im*x^2*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) + (x*PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(4*b) + (im*PolyLog(3, (-im)*c*ℯ^(2*im*a + 2*im*b*x)))/(8*b^2)]
    @test_int [x^0*acot(c - (1 + im*c)*cot(a + b*x)), x, 5, (b*x^2)/2 + x*acot(c - (1 + im*c)*cot(a + b*x)) + (1/2)*im*x*log(1 + im*c*ℯ^(2*im*a + 2*im*b*x)) + PolyLog(2, (-im)*c*ℯ^(2*im*a + 2*im*b*x))/(4*b)]
    @test_int [acot(c - (1 + im*c)*cot(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c - (1 + im*c)*cot(a + b*x))/x, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(c+d*Hyper(a+b*x))=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*x^m*acot(c+d*sinh(a+b*x))=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*x^m*acot(c+d*cosh(a+b*x))=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(c+d*tanh(a+b*x))=#


    @test_int [(e + f*x)^3*acot(tanh(a + b*x)), x, 12, ((e + f*x)^4*acot(tanh(a + b*x)))/(4*f) + ((e + f*x)^4*atan(ℯ^(2*a + 2*b*x)))/(4*f) - (im*(e + f*x)^3*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) + (im*(e + f*x)^3*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) + (3*im*f*(e + f*x)^2*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^2) - (3*im*f*(e + f*x)^2*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(8*b^2) - (3*im*f^2*(e + f*x)*PolyLog(4, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^3) + (3*im*f^2*(e + f*x)*PolyLog(4, im*ℯ^(2*a + 2*b*x)))/(8*b^3) + (3*im*f^3*PolyLog(5, (-im)*ℯ^(2*a + 2*b*x)))/(16*b^4) - (3*im*f^3*PolyLog(5, im*ℯ^(2*a + 2*b*x)))/(16*b^4)]
    @test_int [(e + f*x)^2*acot(tanh(a + b*x)), x, 10, ((e + f*x)^3*acot(tanh(a + b*x)))/(3*f) + ((e + f*x)^3*atan(ℯ^(2*a + 2*b*x)))/(3*f) - (im*(e + f*x)^2*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) + (im*(e + f*x)^2*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) + (im*f*(e + f*x)*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(4*b^2) - (im*f*(e + f*x)*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(4*b^2) - (im*f^2*PolyLog(4, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^3) + (im*f^2*PolyLog(4, im*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [(e + f*x)^1*acot(tanh(a + b*x)), x, 8, ((e + f*x)^2*acot(tanh(a + b*x)))/(2*f) + ((e + f*x)^2*atan(ℯ^(2*a + 2*b*x)))/(2*f) - (im*(e + f*x)*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) + (im*(e + f*x)*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) + (im*f*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^2) - (im*f*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [(e + f*x)^0*acot(tanh(a + b*x)), x, 6, x*acot(tanh(a + b*x)) + x*atan(ℯ^(2*a + 2*b*x)) - (im*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) + (im*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [acot(tanh(a + b*x))/(e + f*x)^1, x, 0, CannotIntegrate(acot(tanh(a + b*x))/(e + f*x), x)]


    @test_int [x^2*acot(c + d*tanh(a + b*x)), x, 11, (1/3)*x^3*acot(c + d*tanh(a + b*x)) - (1/6)*im*x^3*log(1 + ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) + (1/6)*im*x^3*log(1 + ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) - (im*x^2*PolyLog(2, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(4*b) + (im*x^2*PolyLog(2, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(4*b) + (im*x*PolyLog(3, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(4*b^2) - (im*x*PolyLog(3, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(4*b^2) - (im*PolyLog(4, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(8*b^3) + (im*PolyLog(4, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(8*b^3)]
    @test_int [x^1*acot(c + d*tanh(a + b*x)), x, 9, (1/2)*x^2*acot(c + d*tanh(a + b*x)) - (1/4)*im*x^2*log(1 + ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) + (1/4)*im*x^2*log(1 + ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) - (im*x*PolyLog(2, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(4*b) + (im*x*PolyLog(2, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(4*b) + (im*PolyLog(3, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(8*b^2) - (im*PolyLog(3, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(8*b^2)]
    @test_int [x^0*acot(c + d*tanh(a + b*x)), x, 7, x*acot(c + d*tanh(a + b*x)) - (1/2)*im*x*log(1 + ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) + (1/2)*im*x*log(1 + ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) - (im*PolyLog(2, -(((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d))))/(4*b) + (im*PolyLog(2, -(((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d))))/(4*b)]
    @test_int [acot(c + d*tanh(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c + d*tanh(a + b*x))/x, x)]


    @test_int [x^2*acot(c + (im + c)*tanh(a + b*x)), x, 7, (1/12)*im*b*x^4 + (1/3)*x^3*acot(c + (im + c)*tanh(a + b*x)) - (1/6)*im*x^3*log(1 + im*c*ℯ^(2*a + 2*b*x)) - (im*x^2*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b) + (im*x*PolyLog(3, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b^2) - (im*PolyLog(4, (-im)*c*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [x^1*acot(c + (im + c)*tanh(a + b*x)), x, 6, (1/6)*im*b*x^3 + (1/2)*x^2*acot(c + (im + c)*tanh(a + b*x)) - (1/4)*im*x^2*log(1 + im*c*ℯ^(2*a + 2*b*x)) - (im*x*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b) + (im*PolyLog(3, (-im)*c*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [x^0*acot(c + (im + c)*tanh(a + b*x)), x, 5, (1/2)*im*b*x^2 + x*acot(c + (im + c)*tanh(a + b*x)) - (1/2)*im*x*log(1 + im*c*ℯ^(2*a + 2*b*x)) - (im*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [acot(c + (im + c)*tanh(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c + (im + c)*tanh(a + b*x))/x, x)]


    @test_int [x^2*acot(c - (im - c)*tanh(a + b*x)), x, 7, (-(1/12))*im*b*x^4 + (1/3)*x^3*acot(c - (im - c)*tanh(a + b*x)) + (1/6)*im*x^3*log(1 - im*c*ℯ^(2*a + 2*b*x)) + (im*x^2*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b) - (im*x*PolyLog(3, im*c*ℯ^(2*a + 2*b*x)))/(4*b^2) + (im*PolyLog(4, im*c*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [x^1*acot(c - (im - c)*tanh(a + b*x)), x, 6, (-(1/6))*im*b*x^3 + (1/2)*x^2*acot(c - (im - c)*tanh(a + b*x)) + (1/4)*im*x^2*log(1 - im*c*ℯ^(2*a + 2*b*x)) + (im*x*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b) - (im*PolyLog(3, im*c*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [x^0*acot(c - (im - c)*tanh(a + b*x)), x, 5, (-(1/2))*im*b*x^2 + x*acot(c - (im - c)*tanh(a + b*x)) + (1/2)*im*x*log(1 - im*c*ℯ^(2*a + 2*b*x)) + (im*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [acot(c - (im - c)*tanh(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c - (im - c)*tanh(a + b*x))/x, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*x^m*acot(c+d*coth(a+b*x))=#


    @test_int [(e + f*x)^3*acot(coth(a + b*x)), x, 12, ((e + f*x)^4*acot(coth(a + b*x)))/(4*f) - ((e + f*x)^4*atan(ℯ^(2*a + 2*b*x)))/(4*f) + (im*(e + f*x)^3*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) - (im*(e + f*x)^3*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) - (3*im*f*(e + f*x)^2*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^2) + (3*im*f*(e + f*x)^2*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(8*b^2) + (3*im*f^2*(e + f*x)*PolyLog(4, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^3) - (3*im*f^2*(e + f*x)*PolyLog(4, im*ℯ^(2*a + 2*b*x)))/(8*b^3) - (3*im*f^3*PolyLog(5, (-im)*ℯ^(2*a + 2*b*x)))/(16*b^4) + (3*im*f^3*PolyLog(5, im*ℯ^(2*a + 2*b*x)))/(16*b^4)]
    @test_int [(e + f*x)^2*acot(coth(a + b*x)), x, 10, ((e + f*x)^3*acot(coth(a + b*x)))/(3*f) - ((e + f*x)^3*atan(ℯ^(2*a + 2*b*x)))/(3*f) + (im*(e + f*x)^2*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) - (im*(e + f*x)^2*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) - (im*f*(e + f*x)*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(4*b^2) + (im*f*(e + f*x)*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(4*b^2) + (im*f^2*PolyLog(4, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^3) - (im*f^2*PolyLog(4, im*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [(e + f*x)^1*acot(coth(a + b*x)), x, 8, ((e + f*x)^2*acot(coth(a + b*x)))/(2*f) - ((e + f*x)^2*atan(ℯ^(2*a + 2*b*x)))/(2*f) + (im*(e + f*x)*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) - (im*(e + f*x)*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b) - (im*f*PolyLog(3, (-im)*ℯ^(2*a + 2*b*x)))/(8*b^2) + (im*f*PolyLog(3, im*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [(e + f*x)^0*acot(coth(a + b*x)), x, 6, x*acot(coth(a + b*x)) - x*atan(ℯ^(2*a + 2*b*x)) + (im*PolyLog(2, (-im)*ℯ^(2*a + 2*b*x)))/(4*b) - (im*PolyLog(2, im*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [acot(coth(a + b*x))/(e + f*x)^1, x, 0, CannotIntegrate(acot(coth(a + b*x))/(e + f*x), x)]


    @test_int [x^2*acot(c + d*coth(a + b*x)), x, 11, (1/3)*x^3*acot(c + d*coth(a + b*x)) - (1/6)*im*x^3*log(1 - ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) + (1/6)*im*x^3*log(1 - ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) - (im*x^2*PolyLog(2, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(4*b) + (im*x^2*PolyLog(2, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(4*b) + (im*x*PolyLog(3, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(4*b^2) - (im*x*PolyLog(3, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(4*b^2) - (im*PolyLog(4, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(8*b^3) + (im*PolyLog(4, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(8*b^3)]
    @test_int [x^1*acot(c + d*coth(a + b*x)), x, 9, (1/2)*x^2*acot(c + d*coth(a + b*x)) - (1/4)*im*x^2*log(1 - ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) + (1/4)*im*x^2*log(1 - ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) - (im*x*PolyLog(2, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(4*b) + (im*x*PolyLog(2, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(4*b) + (im*PolyLog(3, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(8*b^2) - (im*PolyLog(3, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(8*b^2)]
    @test_int [x^0*acot(c + d*coth(a + b*x)), x, 7, x*acot(c + d*coth(a + b*x)) - (1/2)*im*x*log(1 - ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)) + (1/2)*im*x*log(1 - ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)) - (im*PolyLog(2, ((im - c - d)*ℯ^(2*a + 2*b*x))/(im - c + d)))/(4*b) + (im*PolyLog(2, ((im + c + d)*ℯ^(2*a + 2*b*x))/(im + c - d)))/(4*b)]
    @test_int [acot(c + d*coth(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c + d*coth(a + b*x))/x, x)]


    @test_int [x^2*acot(c + (im + c)*coth(a + b*x)), x, 7, (1/12)*im*b*x^4 + (1/3)*x^3*acot(c + (im + c)*coth(a + b*x)) - (1/6)*im*x^3*log(1 - im*c*ℯ^(2*a + 2*b*x)) - (im*x^2*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b) + (im*x*PolyLog(3, im*c*ℯ^(2*a + 2*b*x)))/(4*b^2) - (im*PolyLog(4, im*c*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [x^1*acot(c + (im + c)*coth(a + b*x)), x, 6, (1/6)*im*b*x^3 + (1/2)*x^2*acot(c + (im + c)*coth(a + b*x)) - (1/4)*im*x^2*log(1 - im*c*ℯ^(2*a + 2*b*x)) - (im*x*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b) + (im*PolyLog(3, im*c*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [x^0*acot(c + (im + c)*coth(a + b*x)), x, 5, (1/2)*im*b*x^2 + x*acot(c + (im + c)*coth(a + b*x)) - (1/2)*im*x*log(1 - im*c*ℯ^(2*a + 2*b*x)) - (im*PolyLog(2, im*c*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [acot(c + (im + c)*coth(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c + (im + c)*coth(a + b*x))/x, x)]


    @test_int [x^2*acot(c - (im - c)*coth(a + b*x)), x, 7, (-(1/12))*im*b*x^4 + (1/3)*x^3*acot(c - (im - c)*coth(a + b*x)) + (1/6)*im*x^3*log(1 + im*c*ℯ^(2*a + 2*b*x)) + (im*x^2*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b) - (im*x*PolyLog(3, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b^2) + (im*PolyLog(4, (-im)*c*ℯ^(2*a + 2*b*x)))/(8*b^3)]
    @test_int [x^1*acot(c - (im - c)*coth(a + b*x)), x, 6, (-(1/6))*im*b*x^3 + (1/2)*x^2*acot(c - (im - c)*coth(a + b*x)) + (1/4)*im*x^2*log(1 + im*c*ℯ^(2*a + 2*b*x)) + (im*x*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b) - (im*PolyLog(3, (-im)*c*ℯ^(2*a + 2*b*x)))/(8*b^2)]
    @test_int [x^0*acot(c - (im - c)*coth(a + b*x)), x, 5, (-(1/2))*im*b*x^2 + x*acot(c - (im - c)*coth(a + b*x)) + (1/2)*im*x*log(1 + im*c*ℯ^(2*a + 2*b*x)) + (im*PolyLog(2, (-im)*c*ℯ^(2*a + 2*b*x)))/(4*b)]
    @test_int [acot(c - (im - c)*coth(a + b*x))/x^1, x, 0, CannotIntegrate(acot(c - (im - c)*coth(a + b*x))/x, x)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*x^m*(d+e*log(f*x^m))*(a+b*acot(c*x^n))=#


    @test_int [((a + b*acot(c*x^n))*(d + e*log(f*x^m)))/x, x, 13, a*d*log(x) + (a*e*log(f*x^m)^2)/(2*m) - (im*b*d*PolyLog(2, -(im/(x^n*c))))/(2*n) - (im*b*e*log(f*x^m)*PolyLog(2, -(im/(x^n*c))))/(2*n) + (im*b*d*PolyLog(2, im/(x^n*c)))/(2*n) + (im*b*e*log(f*x^m)*PolyLog(2, im/(x^n*c)))/(2*n) - (im*b*e*m*PolyLog(3, -(im/(x^n*c))))/(2*n^2) + (im*b*e*m*PolyLog(3, im/(x^n*c)))/(2*n^2)]


    #= ::Section::Closed:: =#
    #=Integrands*involving*inverse*cotangents*of*exponentials=#


    @test_int [acot(ℯ^x), x, 4, (-(1/2))*im*PolyLog(2, -im/ℯ^x) + (1/2)*im*PolyLog(2, im/ℯ^x)]
    @test_int [x*acot(ℯ^x), x, 7, (-(1/2))*im*x*PolyLog(2, -im/ℯ^x) + (1/2)*im*x*PolyLog(2, im/ℯ^x) - (1/2)*im*PolyLog(3, -im/ℯ^x) + (1/2)*im*PolyLog(3, im/ℯ^x)]
    @test_int [x^2*acot(ℯ^x), x, 9, (-(1/2))*im*x^2*PolyLog(2, -im/ℯ^x) + (1/2)*im*x^2*PolyLog(2, im/ℯ^x) - im*x*PolyLog(3, -im/ℯ^x) + im*x*PolyLog(3, im/ℯ^x) - im*PolyLog(4, -im/ℯ^x) + im*PolyLog(4, im/ℯ^x)]


    @test_int [acot(ℯ^(a + b*x)), x, 4, -((im*PolyLog(2, (-im)*ℯ^(-a - b*x)))/(2*b)) + (im*PolyLog(2, im*ℯ^(-a - b*x)))/(2*b)]
    @test_int [x*acot(ℯ^(a + b*x)), x, 7, -((im*x*PolyLog(2, (-im)*ℯ^(-a - b*x)))/(2*b)) + (im*x*PolyLog(2, im*ℯ^(-a - b*x)))/(2*b) - (im*PolyLog(3, (-im)*ℯ^(-a - b*x)))/(2*b^2) + (im*PolyLog(3, im*ℯ^(-a - b*x)))/(2*b^2)]
    @test_int [x^2*acot(ℯ^(a + b*x)), x, 9, -((im*x^2*PolyLog(2, (-im)*ℯ^(-a - b*x)))/(2*b)) + (im*x^2*PolyLog(2, im*ℯ^(-a - b*x)))/(2*b) - (im*x*PolyLog(3, (-im)*ℯ^(-a - b*x)))/b^2 + (im*x*PolyLog(3, im*ℯ^(-a - b*x)))/b^2 - (im*PolyLog(4, (-im)*ℯ^(-a - b*x)))/b^3 + (im*PolyLog(4, im*ℯ^(-a - b*x)))/b^3]


    @test_int [acot(a + b*f^(c + d*x)), x, 6, -((acot(a + b*f^(c + d*x))*log(2/(1 - im*(a + b*f^(c + d*x)))))/(d*log(f))) + (acot(a + b*f^(c + d*x))*log((2*b*f^(c + d*x))/((im - a)*(1 - im*(a + b*f^(c + d*x))))))/(d*log(f)) - (im*PolyLog(2, 1 - 2/(1 - im*(a + b*f^(c + d*x)))))/(2*d*log(f)) + (im*PolyLog(2, 1 - (2*b*f^(c + d*x))/((im - a)*(1 - im*(a + b*f^(c + d*x))))))/(2*d*log(f))]
    @test_int [x*acot(a + b*f^(c + d*x)), x, 25, (-(1/4))*im*x^2*log(1 - (b*f^(c + d*x))/(im - a)) + (1/4)*im*x^2*log(1 + (b*f^(c + d*x))/(im + a)) + (1/4)*im*x^2*log(1 - im/(a + b*f^(c + d*x))) - (1/4)*im*x^2*log(1 + im/(a + b*f^(c + d*x))) - (im*x*PolyLog(2, (b*f^(c + d*x))/(im - a)))/(2*d*log(f)) + (im*x*PolyLog(2, -((b*f^(c + d*x))/(im + a))))/(2*d*log(f)) + (im*PolyLog(3, (b*f^(c + d*x))/(im - a)))/(2*d^2*log(f)^2) - (im*PolyLog(3, -((b*f^(c + d*x))/(im + a))))/(2*d^2*log(f)^2)]
    @test_int [x^2*acot(a + b*f^(c + d*x)), x, 29, (-(1/6))*im*x^3*log(1 - (b*f^(c + d*x))/(im - a)) + (1/6)*im*x^3*log(1 + (b*f^(c + d*x))/(im + a)) + (1/6)*im*x^3*log(1 - im/(a + b*f^(c + d*x))) - (1/6)*im*x^3*log(1 + im/(a + b*f^(c + d*x))) - (im*x^2*PolyLog(2, (b*f^(c + d*x))/(im - a)))/(2*d*log(f)) + (im*x^2*PolyLog(2, -((b*f^(c + d*x))/(im + a))))/(2*d*log(f)) + (im*x*PolyLog(3, (b*f^(c + d*x))/(im - a)))/(d^2*log(f)^2) - (im*x*PolyLog(3, -((b*f^(c + d*x))/(im + a))))/(d^2*log(f)^2) - (im*PolyLog(4, (b*f^(c + d*x))/(im - a)))/(d^3*log(f)^3) + (im*PolyLog(4, -((b*f^(c + d*x))/(im + a))))/(d^3*log(f)^3)]


    @test_int [acot(ℯ^x)/ℯ^x, x, 5, -x - acot(ℯ^x)/ℯ^x + (1/2)*log(1 + ℯ^(2*x))]


    #= ::Section::Closed:: =#
    #=Miscellaneous*integrands*involving*inverse*cotangents=#


    @test_int [1/((a + a*x^2)*(b - 2*b*acot(x))), x, 1, log(1 - 2*acot(x))/(2*a*b)]


    @test_int [ℯ^(c*(a + b*x))*acot(sinh(a*c + b*c*x)), x, 5, (ℯ^(a*c + b*c*x)*acot(sinh(c*(a + b*x))))/(b*c) + log(1 + ℯ^(2*c*(a + b*x)))/(b*c)]
    @test_int [ℯ^(c*(a + b*x))*acot(cosh(a*c + b*c*x)), x, 8, (ℯ^(a*c + b*c*x)*acot(cosh(c*(a + b*x))))/(b*c) + ((1 - sqrt(2))*log(3 - 2*sqrt(2) + ℯ^(2*c*(a + b*x))))/(2*b*c) + ((1 + sqrt(2))*log(3 + 2*sqrt(2) + ℯ^(2*c*(a + b*x))))/(2*b*c)]
    @test_int [ℯ^(c*(a + b*x))*acot(tanh(a*c + b*c*x)), x, 13, (ℯ^(a*c + b*c*x)*acot(tanh(c*(a + b*x))))/(b*c) - atan(1 - sqrt(2)*ℯ^(a*c + b*c*x))/(sqrt(2)*b*c) + atan(1 + sqrt(2)*ℯ^(a*c + b*c*x))/(sqrt(2)*b*c) + log(1 + ℯ^(2*c*(a + b*x)) - sqrt(2)*ℯ^(a*c + b*c*x))/(2*sqrt(2)*b*c) - log(1 + ℯ^(2*c*(a + b*x)) + sqrt(2)*ℯ^(a*c + b*c*x))/(2*sqrt(2)*b*c)]
    @test_int [ℯ^(c*(a + b*x))*acot(coth(a*c + b*c*x)), x, 13, (ℯ^(a*c + b*c*x)*acot(coth(c*(a + b*x))))/(b*c) + atan(1 - sqrt(2)*ℯ^(a*c + b*c*x))/(sqrt(2)*b*c) - atan(1 + sqrt(2)*ℯ^(a*c + b*c*x))/(sqrt(2)*b*c) - log(1 + ℯ^(2*c*(a + b*x)) - sqrt(2)*ℯ^(a*c + b*c*x))/(2*sqrt(2)*b*c) + log(1 + ℯ^(2*c*(a + b*x)) + sqrt(2)*ℯ^(a*c + b*c*x))/(2*sqrt(2)*b*c)]
    @test_int [ℯ^(c*(a + b*x))*acot(sech(a*c + b*c*x)), x, 8, (ℯ^(a*c + b*c*x)*acot(sech(c*(a + b*x))))/(b*c) - ((1 - sqrt(2))*log(3 - 2*sqrt(2) + ℯ^(2*c*(a + b*x))))/(2*b*c) - ((1 + sqrt(2))*log(3 + 2*sqrt(2) + ℯ^(2*c*(a + b*x))))/(2*b*c)]
    @test_int [ℯ^(c*(a + b*x))*acot(csch(a*c + b*c*x)), x, 5, (ℯ^(a*c + b*c*x)*acot(csch(c*(a + b*x))))/(b*c) - log(1 + ℯ^(2*c*(a + b*x)))/(b*c)]
    end
