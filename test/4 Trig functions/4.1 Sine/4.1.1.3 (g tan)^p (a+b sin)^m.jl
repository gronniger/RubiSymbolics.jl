@testset "4.1.1.3 (g tan)^p (a+b sin)^m" begin
    @variables a, b, c, d, e, f, g, m, p, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*sin(e+f*x))^m=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*sin(e+f*x))^m*with*a^2-b^2=0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^p*(a+a*sin(e+f*x))^m=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [tan(c + d*x)^5*(a + a*sin(c + d*x)), x, 3, -((23*a*log(1 - sin(c + d*x)))/(16*d)) + (7*a*log(1 + sin(c + d*x)))/(16*d) - (a*sin(c + d*x))/d + a^3/(8*d*(a - a*sin(c + d*x))^2) - a^2/(d*(a - a*sin(c + d*x))) + a^2/(8*d*(a + a*sin(c + d*x)))]
    @test_int [tan(c + d*x)^3*(a + a*sin(c + d*x)), x, 3, (5*a*log(1 - sin(c + d*x)))/(4*d) - (a*log(1 + sin(c + d*x)))/(4*d) + (a*sin(c + d*x))/d + a^2/(2*d*(a - a*sin(c + d*x)))]
    @test_int [tan(c + d*x)^1*(a + a*sin(c + d*x)), x, 3, -((a*log(1 - sin(c + d*x)))/d) - (a*sin(c + d*x))/d]
    @test_int [cot(c + d*x)^1*(a + a*sin(c + d*x)), x, 3, (a*log(sin(c + d*x)))/d + (a*sin(c + d*x))/d]
    @test_int [cot(c + d*x)^3*(a + a*sin(c + d*x)), x, 3, -((a*csc(c + d*x))/d) - (a*csc(c + d*x)^2)/(2*d) - (a*log(sin(c + d*x)))/d - (a*sin(c + d*x))/d]
    @test_int [cot(c + d*x)^5*(a + a*sin(c + d*x)), x, 3, (2*a*csc(c + d*x))/d + (a*csc(c + d*x)^2)/d - (a*csc(c + d*x)^3)/(3*d) - (a*csc(c + d*x)^4)/(4*d) + (a*log(sin(c + d*x)))/d + (a*sin(c + d*x))/d]
    @test_int [cot(c + d*x)^7*(a + a*sin(c + d*x)), x, 3, -((3*a*csc(c + d*x))/d) - (3*a*csc(c + d*x)^2)/(2*d) + (a*csc(c + d*x)^3)/d + (3*a*csc(c + d*x)^4)/(4*d) - (a*csc(c + d*x)^5)/(5*d) - (a*csc(c + d*x)^6)/(6*d) - (a*log(sin(c + d*x)))/d - (a*sin(c + d*x))/d]

    @test_int [tan(c + d*x)^6*(a + a*sin(c + d*x)), x, 9, (-a)*x + (a*cos(c + d*x))/d + (3*a*sec(c + d*x))/d - (a*sec(c + d*x)^3)/d + (a*sec(c + d*x)^5)/(5*d) + (a*tan(c + d*x))/d - (a*tan(c + d*x)^3)/(3*d) + (a*tan(c + d*x)^5)/(5*d)]
    @test_int [tan(c + d*x)^4*(a + a*sin(c + d*x)), x, 8, a*x - (a*cos(c + d*x))/d - (2*a*sec(c + d*x))/d + (a*sec(c + d*x)^3)/(3*d) - (a*tan(c + d*x))/d + (a*tan(c + d*x)^3)/(3*d)]
    @test_int [tan(c + d*x)^2*(a + a*sin(c + d*x)), x, 5, (-a)*x + (a*cos(c + d*x))/d + (a*cos(c + d*x))/(d*(1 - sin(c + d*x)))]
    @test_int [cot(c + d*x)^2*(a + a*sin(c + d*x)), x, 7, (-a)*x - (a*atanh(cos(c + d*x)))/d + (a*cos(c + d*x))/d - (a*cot(c + d*x))/d]
    @test_int [cot(c + d*x)^4*(a + a*sin(c + d*x)), x, 9, a*x + (3*a*atanh(cos(c + d*x)))/(2*d) - (3*a*cos(c + d*x))/(2*d) + (a*cot(c + d*x))/d - (a*cos(c + d*x)*cot(c + d*x)^2)/(2*d) - (a*cot(c + d*x)^3)/(3*d)]
    @test_int [cot(c + d*x)^6*(a + a*sin(c + d*x)), x, 11, (-a)*x - (15*a*atanh(cos(c + d*x)))/(8*d) + (15*a*cos(c + d*x))/(8*d) - (a*cot(c + d*x))/d + (5*a*cos(c + d*x)*cot(c + d*x)^2)/(8*d) + (a*cot(c + d*x)^3)/(3*d) - (a*cos(c + d*x)*cot(c + d*x)^4)/(4*d) - (a*cot(c + d*x)^5)/(5*d)]


    @test_int [tan(c + d*x)^5*(a + a*sin(c + d*x))^2, x, 3, -((31*a^2*log(1 - sin(c + d*x)))/(8*d)) - (a^2*log(1 + sin(c + d*x)))/(8*d) - (2*a^2*sin(c + d*x))/d - (a^2*sin(c + d*x)^2)/(2*d) + a^4/(4*d*(a - a*sin(c + d*x))^2) - (9*a^3)/(4*d*(a - a*sin(c + d*x)))]
    @test_int [tan(c + d*x)^3*(a + a*sin(c + d*x))^2, x, 3, (3*a^2*log(1 - sin(c + d*x)))/d + (2*a^2*sin(c + d*x))/d + (a^2*sin(c + d*x)^2)/(2*d) + a^3/(d*(a - a*sin(c + d*x)))]
    @test_int [tan(c + d*x)^1*(a + a*sin(c + d*x))^2, x, 3, -((2*a^2*log(1 - sin(c + d*x)))/d) - (2*a^2*sin(c + d*x))/d - (a^2*sin(c + d*x)^2)/(2*d)]
    @test_int [cot(c + d*x)^3*(a + a*sin(c + d*x))^2, x, 2, -((csc(c + d*x)^2*(a + a*sin(c + d*x))^4)/(2*a^2*d))]
    @test_int [cot(c + d*x)^7*(a + a*sin(c + d*x))^2, x, 3, -((6*a^2*csc(c + d*x))/d) + (2*a^2*csc(c + d*x)^3)/d + (a^2*csc(c + d*x)^4)/(2*d) - (2*a^2*csc(c + d*x)^5)/(5*d) - (a^2*csc(c + d*x)^6)/(6*d) + (2*a^2*log(sin(c + d*x)))/d - (2*a^2*sin(c + d*x))/d - (a^2*sin(c + d*x)^2)/(2*d)]

    @test_int [tan(c + d*x)^6*(a + a*sin(c + d*x))^2, x, 14, -((9*a^2*x)/2) + (2*a^2*cos(c + d*x))/d + (6*a^2*sec(c + d*x))/d - (2*a^2*sec(c + d*x)^3)/d + (2*a^2*sec(c + d*x)^5)/(5*d) + (9*a^2*tan(c + d*x))/(2*d) - (3*a^2*tan(c + d*x)^3)/(2*d) + (9*a^2*tan(c + d*x)^5)/(10*d) - (a^2*sin(c + d*x)^2*tan(c + d*x)^5)/(2*d)]
    @test_int [tan(c + d*x)^4*(a + a*sin(c + d*x))^2, x, 4, (7*a^2*x)/2 - (16*a^2*cos(c + d*x))/(3*d) - (7*a^2*cos(c + d*x)*sin(c + d*x))/(2*d) - (8*a^2*cos(c + d*x)*sin(c + d*x)^2)/(3*d*(1 - sin(c + d*x))) + (a^4*cos(c + d*x)*sin(c + d*x)^3)/(3*d*(a - a*sin(c + d*x))^2)]
    @test_int [tan(c + d*x)^2*(a + a*sin(c + d*x))^2, x, 6, -((5*a^2*x)/2) + (2*a^2*cos(c + d*x))/d + (2*a^2*cos(c + d*x))/(d*(1 - sin(c + d*x))) + (a^2*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [tan(c + d*x)^0*(a + a*sin(c + d*x))^2, x, 1, (3*a^2*x)/2 - (2*a^2*cos(c + d*x))/d - (a^2*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [cot(c + d*x)^2*(a + a*sin(c + d*x))^2, x, 8, -((a^2*x)/2) - (2*a^2*atanh(cos(c + d*x)))/d + (2*a^2*cos(c + d*x))/d - (a^2*cot(c + d*x))/d + (a^2*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [cot(c + d*x)^4*(a + a*sin(c + d*x))^2, x, 12, -((a^2*x)/2) + (3*a^2*atanh(cos(c + d*x)))/d - (2*a^2*cos(c + d*x))/d - (a^2*cot(c + d*x)^3)/(3*d) - (a^2*cot(c + d*x)*csc(c + d*x))/d - (a^2*cos(c + d*x)*sin(c + d*x))/(2*d)]


    @test_int [tan(c + d*x)^7*(a + a*sin(c + d*x))^3, x, 3, (209*a^3*log(1 - sin(c + d*x)))/(16*d) - (a^3*log(1 + sin(c + d*x)))/(16*d) + (7*a^3*sin(c + d*x))/d + (3*a^3*sin(c + d*x)^2)/(2*d) + (a^3*sin(c + d*x)^3)/(3*d) + a^6/(6*d*(a - a*sin(c + d*x))^3) - (13*a^5)/(8*d*(a - a*sin(c + d*x))^2) + (71*a^4)/(8*d*(a - a*sin(c + d*x)))]
    @test_int [tan(c + d*x)^3*(a + a*sin(c + d*x))^3, x, 3, (7*a^3*log(1 - sin(c + d*x)))/d + (5*a^3*sin(c + d*x))/d + (3*a^3*sin(c + d*x)^2)/(2*d) + (a^3*sin(c + d*x)^3)/(3*d) + (2*a^4)/(d*(a - a*sin(c + d*x)))]
    @test_int [tan(c + d*x)^1*(a + a*sin(c + d*x))^3, x, 3, -((4*a^3*log(1 - sin(c + d*x)))/d) - (4*a^3*sin(c + d*x))/d - (3*a^3*sin(c + d*x)^2)/(2*d) - (a^3*sin(c + d*x)^3)/(3*d)]
    @test_int [cot(c + d*x)^3*(a + a*sin(c + d*x))^3, x, 3, -((3*a^3*csc(c + d*x))/d) - (a^3*csc(c + d*x)^2)/(2*d) + (2*a^3*log(sin(c + d*x)))/d - (2*a^3*sin(c + d*x))/d - (3*a^3*sin(c + d*x)^2)/(2*d) - (a^3*sin(c + d*x)^3)/(3*d)]

    @test_int [tan(c + d*x)^6*(a + a*sin(c + d*x))^3, x, 9, -((23*a^3*x)/2) + (136*a^3*cos(c + d*x))/(5*d) - (136*a^3*cos(c + d*x)^3)/(15*d) + (23*a^3*cos(c + d*x)*sin(c + d*x))/(2*d) + (a^6*cos(c + d*x)*sin(c + d*x)^5)/(5*d*(a - a*sin(c + d*x))^3) - (13*a^5*cos(c + d*x)*sin(c + d*x)^4)/(15*d*(a - a*sin(c + d*x))^2) + (23*a^6*cos(c + d*x)*sin(c + d*x)^3)/(3*d*(a^3 - a^3*sin(c + d*x)))]
    @test_int [tan(c + d*x)^4*(a + a*sin(c + d*x))^3, x, 10, (17*a^3*x)/2 - (6*a^3*cos(c + d*x))/d + (a^3*cos(c + d*x)^3)/(3*d) + (2*a^3*cos(c + d*x))/(3*d*(1 - sin(c + d*x))^2) - (25*a^3*cos(c + d*x))/(3*d*(1 - sin(c + d*x))) - (3*a^3*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [tan(c + d*x)^2*(a + a*sin(c + d*x))^3, x, 8, -((11*a^3*x)/2) + (5*a^3*cos(c + d*x))/d - (a^3*cos(c + d*x)^3)/(3*d) + (4*a^3*cos(c + d*x))/(d*(1 - sin(c + d*x))) + (3*a^3*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [tan(c + d*x)^0*(a + a*sin(c + d*x))^3, x, 7, (5*a^3*x)/2 - (4*a^3*cos(c + d*x))/d + (a^3*cos(c + d*x)^3)/(3*d) - (3*a^3*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [cot(c + d*x)^2*(a + a*sin(c + d*x))^3, x, 10, (a^3*x)/2 - (3*a^3*atanh(cos(c + d*x)))/d + (3*a^3*cos(c + d*x))/d - (a^3*cos(c + d*x)^3)/(3*d) - (a^3*cot(c + d*x))/d + (3*a^3*cos(c + d*x)*sin(c + d*x))/(2*d)]


    @test_int [tan(c + d*x)^5*(a + a*sin(c + d*x))^4, x, 3, -((25*a^4*log(1 - sin(c + d*x)))/d) - (16*a^4*sin(c + d*x))/d - (9*a^4*sin(c + d*x)^2)/(2*d) - (4*a^4*sin(c + d*x)^3)/(3*d) - (a^4*sin(c + d*x)^4)/(4*d) + a^6/(d*(a - a*sin(c + d*x))^2) - (11*a^5)/(d*(a - a*sin(c + d*x)))]
    @test_int [tan(c + d*x)^3*(a + a*sin(c + d*x))^4, x, 3, (16*a^4*log(1 - sin(c + d*x)))/d + (12*a^4*sin(c + d*x))/d + (4*a^4*sin(c + d*x)^2)/d + (4*a^4*sin(c + d*x)^3)/(3*d) + (a^4*sin(c + d*x)^4)/(4*d) + (4*a^5)/(d*(a - a*sin(c + d*x)))]
    @test_int [tan(c + d*x)^1*(a + a*sin(c + d*x))^4, x, 3, -((8*a^4*log(1 - sin(c + d*x)))/d) - (8*a^4*sin(c + d*x))/d - (7*a^4*sin(c + d*x)^2)/(2*d) - (4*a^4*sin(c + d*x)^3)/(3*d) - (a^4*sin(c + d*x)^4)/(4*d)]
    @test_int [cot(c + d*x)^3*(a + a*sin(c + d*x))^4, x, 3, -((4*a^4*csc(c + d*x))/d) - (a^4*csc(c + d*x)^2)/(2*d) + (5*a^4*log(sin(c + d*x)))/d - (5*a^4*sin(c + d*x)^2)/(2*d) - (4*a^4*sin(c + d*x)^3)/(3*d) - (a^4*sin(c + d*x)^4)/(4*d)]

    @test_int [tan(c + d*x)^4*(a + a*sin(c + d*x))^4, x, 13, (163*a^4*x)/8 - (16*a^4*cos(c + d*x))/d + (4*a^4*cos(c + d*x)^3)/(3*d) + (4*a^4*cos(c + d*x))/(3*d*(1 - sin(c + d*x))^2) - (56*a^4*cos(c + d*x))/(3*d*(1 - sin(c + d*x))) - (35*a^4*cos(c + d*x)*sin(c + d*x))/(8*d) - (a^4*cos(c + d*x)*sin(c + d*x)^3)/(4*d)]
    @test_int [tan(c + d*x)^2*(a + a*sin(c + d*x))^4, x, 11, -((95*a^4*x)/8) + (12*a^4*cos(c + d*x))/d - (4*a^4*cos(c + d*x)^3)/(3*d) + (8*a^4*cos(c + d*x))/(d*(1 - sin(c + d*x))) + (31*a^4*cos(c + d*x)*sin(c + d*x))/(8*d) + (a^4*cos(c + d*x)*sin(c + d*x)^3)/(4*d)]
    @test_int [tan(c + d*x)^0*(a + a*sin(c + d*x))^4, x, 10, (35*a^4*x)/8 - (8*a^4*cos(c + d*x))/d + (4*a^4*cos(c + d*x)^3)/(3*d) - (27*a^4*cos(c + d*x)*sin(c + d*x))/(8*d) - (a^4*cos(c + d*x)*sin(c + d*x)^3)/(4*d)]
    @test_int [cot(c + d*x)^2*(a + a*sin(c + d*x))^4, x, 12, (17*a^4*x)/8 - (4*a^4*atanh(cos(c + d*x)))/d + (4*a^4*cos(c + d*x))/d - (4*a^4*cos(c + d*x)^3)/(3*d) - (a^4*cot(c + d*x))/d + (23*a^4*cos(c + d*x)*sin(c + d*x))/(8*d) + (a^4*cos(c + d*x)*sin(c + d*x)^3)/(4*d)]
    @test_int [cot(c + d*x)^4*(a + a*sin(c + d*x))^4, x, 17, -((61*a^4*x)/8) + (2*a^4*atanh(cos(c + d*x)))/d + (4*a^4*cos(c + d*x)^3)/(3*d) - (5*a^4*cot(c + d*x))/d - (a^4*cot(c + d*x)^3)/(3*d) - (2*a^4*cot(c + d*x)*csc(c + d*x))/d - (19*a^4*cos(c + d*x)*sin(c + d*x))/(8*d) - (a^4*cos(c + d*x)*sin(c + d*x)^3)/(4*d)]
    @test_int [cot(c + d*x)^6*(a + a*sin(c + d*x))^4, x, 21, (97*a^4*x)/8 + (5*a^4*atanh(cos(c + d*x)))/(2*d) - (4*a^4*cos(c + d*x))/d - (4*a^4*cos(c + d*x)^3)/(3*d) + (10*a^4*cot(c + d*x))/d - (5*a^4*cot(c + d*x)^3)/(3*d) - (a^4*cot(c + d*x)^5)/(5*d) + (5*a^4*cot(c + d*x)*csc(c + d*x))/(2*d) - (a^4*cot(c + d*x)*csc(c + d*x)^3)/d + (15*a^4*cos(c + d*x)*sin(c + d*x))/(8*d) + (a^4*cos(c + d*x)*sin(c + d*x)^3)/(4*d)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [tan(c + d*x)^7/(a + a*sin(c + d*x)), x, 8, -((35*atanh(sin(c + d*x)))/(128*a*d)) + (35*sec(c + d*x)*tan(c + d*x))/(128*a*d) - (35*sec(c + d*x)*tan(c + d*x)^3)/(192*a*d) + (7*sec(c + d*x)*tan(c + d*x)^5)/(48*a*d) - (sec(c + d*x)*tan(c + d*x)^7)/(8*a*d) + tan(c + d*x)^8/(8*a*d)]
    @test_int [tan(c + d*x)^5/(a + a*sin(c + d*x)), x, 7, (5*atanh(sin(c + d*x)))/(16*a*d) - (5*sec(c + d*x)*tan(c + d*x))/(16*a*d) + (5*sec(c + d*x)*tan(c + d*x)^3)/(24*a*d) - (sec(c + d*x)*tan(c + d*x)^5)/(6*a*d) + tan(c + d*x)^6/(6*a*d)]
    @test_int [tan(c + d*x)^3/(a + a*sin(c + d*x)), x, 6, -((3*atanh(sin(c + d*x)))/(8*a*d)) + (3*sec(c + d*x)*tan(c + d*x))/(8*a*d) - (sec(c + d*x)*tan(c + d*x)^3)/(4*a*d) + tan(c + d*x)^4/(4*a*d)]
    @test_int [tan(c + d*x)^1/(a + a*sin(c + d*x)), x, 5, atanh(sin(c + d*x))/(2*a*d) + 1/(2*d*(a + a*sin(c + d*x))), atanh(sin(c + d*x))/(2*a*d) + sec(c + d*x)^2/(2*a*d) - (sec(c + d*x)*tan(c + d*x))/(2*a*d)]
    @test_int [cot(c + d*x)^1/(a + a*sin(c + d*x)), x, 4, log(sin(c + d*x))/(a*d) - log(1 + sin(c + d*x))/(a*d)]
    @test_int [cot(c + d*x)^3/(a + a*sin(c + d*x)), x, 5, csc(c + d*x)/(a*d) - csc(c + d*x)^2/(2*a*d)]
    @test_int [cot(c + d*x)^5/(a + a*sin(c + d*x)), x, 5, -(cot(c + d*x)^4/(4*a*d)) - csc(c + d*x)/(a*d) + csc(c + d*x)^3/(3*a*d)]
    @test_int [cot(c + d*x)^7/(a + a*sin(c + d*x)), x, 6, -(cot(c + d*x)^6/(6*a*d)) + csc(c + d*x)/(a*d) - (2*csc(c + d*x)^3)/(3*a*d) + csc(c + d*x)^5/(5*a*d)]
    @test_int [cot(c + d*x)^9/(a + a*sin(c + d*x)), x, 6, -(cot(c + d*x)^8/(8*a*d)) - csc(c + d*x)/(a*d) + csc(c + d*x)^3/(a*d) - (3*csc(c + d*x)^5)/(5*a*d) + csc(c + d*x)^7/(7*a*d)]

    @test_int [tan(c + d*x)^6/(a + a*sin(c + d*x)), x, 6, sec(c + d*x)/(a*d) - sec(c + d*x)^3/(a*d) + (3*sec(c + d*x)^5)/(5*a*d) - sec(c + d*x)^7/(7*a*d) + tan(c + d*x)^7/(7*a*d)]
    @test_int [tan(c + d*x)^4/(a + a*sin(c + d*x)), x, 6, -(sec(c + d*x)/(a*d)) + (2*sec(c + d*x)^3)/(3*a*d) - sec(c + d*x)^5/(5*a*d) + tan(c + d*x)^5/(5*a*d)]
    @test_int [tan(c + d*x)^2/(a + a*sin(c + d*x)), x, 5, sec(c + d*x)/(a*d) - sec(c + d*x)^3/(3*a*d) + tan(c + d*x)^3/(3*a*d)]
    @test_int [tan(c + d*x)^0/(a + a*sin(c + d*x)), x, 1, -(cos(c + d*x)/(d*(a + a*sin(c + d*x))))]
    @test_int [cot(c + d*x)^2/(a + a*sin(c + d*x)), x, 4, atanh(cos(c + d*x))/(a*d) - cot(c + d*x)/(a*d)]
    @test_int [cot(c + d*x)^4/(a + a*sin(c + d*x)), x, 5, -(atanh(cos(c + d*x))/(2*a*d)) - cot(c + d*x)^3/(3*a*d) + (cot(c + d*x)*csc(c + d*x))/(2*a*d)]
    @test_int [cot(c + d*x)^6/(a + a*sin(c + d*x)), x, 6, (3*atanh(cos(c + d*x)))/(8*a*d) - cot(c + d*x)^5/(5*a*d) - (3*cot(c + d*x)*csc(c + d*x))/(8*a*d) + (cot(c + d*x)^3*csc(c + d*x))/(4*a*d)]
    @test_int [cot(c + d*x)^8/(a + a*sin(c + d*x)), x, 7, -((5*atanh(cos(c + d*x)))/(16*a*d)) - cot(c + d*x)^7/(7*a*d) + (5*cot(c + d*x)*csc(c + d*x))/(16*a*d) - (5*cot(c + d*x)^3*csc(c + d*x))/(24*a*d) + (cot(c + d*x)^5*csc(c + d*x))/(6*a*d)]


    @test_int [tan(c + d*x)^7/(a + a*sin(c + d*x))^2, x, 4, -((7*atanh(sin(c + d*x)))/(128*a^2*d)) + a/(192*d*(a - a*sin(c + d*x))^3) - 1/(32*d*(a - a*sin(c + d*x))^2) + a^3/(80*d*(a + a*sin(c + d*x))^5) - (5*a^2)/(64*d*(a + a*sin(c + d*x))^4) + (19*a)/(96*d*(a + a*sin(c + d*x))^3) - 1/(4*d*(a + a*sin(c + d*x))^2) + 21/(256*d*(a^2 - a^2*sin(c + d*x))) + 35/(256*d*(a^2 + a^2*sin(c + d*x)))]
    @test_int [tan(c + d*x)^5/(a + a*sin(c + d*x))^2, x, 4, (5*atanh(sin(c + d*x)))/(64*a^2*d) + 1/(64*d*(a - a*sin(c + d*x))^2) + a^2/(32*d*(a + a*sin(c + d*x))^4) - (7*a)/(48*d*(a + a*sin(c + d*x))^3) + 1/(4*d*(a + a*sin(c + d*x))^2) - 5/(64*d*(a^2 - a^2*sin(c + d*x))) - 5/(32*d*(a^2 + a^2*sin(c + d*x)))]
    @test_int [tan(c + d*x)^3/(a + a*sin(c + d*x))^2, x, 4, -(atanh(sin(c + d*x))/(8*a^2*d)) + a/(12*d*(a + a*sin(c + d*x))^3) - 1/(4*d*(a + a*sin(c + d*x))^2) + 1/(16*d*(a^2 - a^2*sin(c + d*x))) + 3/(16*d*(a^2 + a^2*sin(c + d*x)))]
    @test_int [tan(c + d*x)^1/(a + a*sin(c + d*x))^2, x, 4, atanh(sin(c + d*x))/(4*a^2*d) + 1/(4*d*(a + a*sin(c + d*x))^2) - 1/(4*d*(a^2 + a^2*sin(c + d*x)))]
    @test_int [cot(c + d*x)^1/(a + a*sin(c + d*x))^2, x, 3, log(sin(c + d*x))/(a^2*d) - log(1 + sin(c + d*x))/(a^2*d) + 1/(d*(a^2 + a^2*sin(c + d*x)))]
    @test_int [cot(c + d*x)^3/(a + a*sin(c + d*x))^2, x, 3, (2*csc(c + d*x))/(a^2*d) - csc(c + d*x)^2/(2*a^2*d) + (2*log(sin(c + d*x)))/(a^2*d) - (2*log(1 + sin(c + d*x)))/(a^2*d)]
    @test_int [cot(c + d*x)^5/(a + a*sin(c + d*x))^2, x, 3, -(csc(c + d*x)^2/(2*a^2*d)) + (2*csc(c + d*x)^3)/(3*a^2*d) - csc(c + d*x)^4/(4*a^2*d)]
    @test_int [cot(c + d*x)^7/(a + a*sin(c + d*x))^2, x, 3, csc(c + d*x)^2/(2*a^2*d) - (2*csc(c + d*x)^3)/(3*a^2*d) + (2*csc(c + d*x)^5)/(5*a^2*d) - csc(c + d*x)^6/(6*a^2*d)]
    @test_int [cot(c + d*x)^9/(a + a*sin(c + d*x))^2, x, 3, -(csc(c + d*x)^2/(2*a^2*d)) + (2*csc(c + d*x)^3)/(3*a^2*d) + csc(c + d*x)^4/(4*a^2*d) - (4*csc(c + d*x)^5)/(5*a^2*d) + csc(c + d*x)^6/(6*a^2*d) + (2*csc(c + d*x)^7)/(7*a^2*d) - csc(c + d*x)^8/(8*a^2*d)]
    @test_int [cot(c + d*x)^11/(a + a*sin(c + d*x))^2, x, 3, csc(c + d*x)^2/(2*a^2*d) - (2*csc(c + d*x)^3)/(3*a^2*d) - csc(c + d*x)^4/(2*a^2*d) + (6*csc(c + d*x)^5)/(5*a^2*d) - (6*csc(c + d*x)^7)/(7*a^2*d) + csc(c + d*x)^8/(4*a^2*d) + (2*csc(c + d*x)^9)/(9*a^2*d) - csc(c + d*x)^10/(10*a^2*d)]
    @test_int [cot(c + d*x)^13/(a + a*sin(c + d*x))^2, x, 3, -(csc(c + d*x)^2/(2*a^2*d)) + (2*csc(c + d*x)^3)/(3*a^2*d) + (3*csc(c + d*x)^4)/(4*a^2*d) - (8*csc(c + d*x)^5)/(5*a^2*d) - csc(c + d*x)^6/(3*a^2*d) + (12*csc(c + d*x)^7)/(7*a^2*d) - csc(c + d*x)^8/(4*a^2*d) - (8*csc(c + d*x)^9)/(9*a^2*d) + (3*csc(c + d*x)^10)/(10*a^2*d) + (2*csc(c + d*x)^11)/(11*a^2*d) - csc(c + d*x)^12/(12*a^2*d)]


    @test_int [tan(c + d*x)^5/(a + a*sin(c + d*x))^3, x, 4, atanh(sin(c + d*x))/(128*a^3*d) + 1/(128*a*d*(a - a*sin(c + d*x))^2) + a^2/(40*d*(a + a*sin(c + d*x))^5) - (7*a)/(64*d*(a + a*sin(c + d*x))^4) + 1/(6*d*(a + a*sin(c + d*x))^3) - 5/(64*a*d*(a + a*sin(c + d*x))^2) - 1/(32*d*(a^3 - a^3*sin(c + d*x))) - 5/(128*d*(a^3 + a^3*sin(c + d*x)))]
    @test_int [tan(c + d*x)^3/(a + a*sin(c + d*x))^3, x, 4, -(atanh(sin(c + d*x))/(32*a^3*d)) + a/(16*d*(a + a*sin(c + d*x))^4) - 1/(6*d*(a + a*sin(c + d*x))^3) + 3/(32*a*d*(a + a*sin(c + d*x))^2) + 1/(32*d*(a^3 - a^3*sin(c + d*x))) + 1/(16*d*(a^3 + a^3*sin(c + d*x)))]
    @test_int [tan(c + d*x)^1/(a + a*sin(c + d*x))^3, x, 4, atanh(sin(c + d*x))/(8*a^3*d) + 1/(6*d*(a + a*sin(c + d*x))^3) - 1/(8*a*d*(a + a*sin(c + d*x))^2) - 1/(8*d*(a^3 + a^3*sin(c + d*x)))]
    @test_int [cot(c + d*x)^1/(a + a*sin(c + d*x))^3, x, 3, log(sin(c + d*x))/(a^3*d) - log(1 + sin(c + d*x))/(a^3*d) + 1/(2*a*d*(a + a*sin(c + d*x))^2) + 1/(d*(a^3 + a^3*sin(c + d*x)))]
    @test_int [cot(c + d*x)^3/(a + a*sin(c + d*x))^3, x, 3, (3*csc(c + d*x))/(a^3*d) - csc(c + d*x)^2/(2*a^3*d) + (5*log(sin(c + d*x)))/(a^3*d) - (5*log(1 + sin(c + d*x)))/(a^3*d) + 2/(d*(a^3 + a^3*sin(c + d*x)))]
    @test_int [cot(c + d*x)^5/(a + a*sin(c + d*x))^3, x, 3, (4*csc(c + d*x))/(a^3*d) - (2*csc(c + d*x)^2)/(a^3*d) + csc(c + d*x)^3/(a^3*d) - csc(c + d*x)^4/(4*a^3*d) + (4*log(sin(c + d*x)))/(a^3*d) - (4*log(1 + sin(c + d*x)))/(a^3*d)]
    @test_int [cot(c + d*x)^7/(a + a*sin(c + d*x))^3, x, 3, csc(c + d*x)^3/(3*a^3*d) - (3*csc(c + d*x)^4)/(4*a^3*d) + (3*csc(c + d*x)^5)/(5*a^3*d) - csc(c + d*x)^6/(6*a^3*d)]
    @test_int [cot(c + d*x)^9/(a + a*sin(c + d*x))^3, x, 3, -(csc(c + d*x)^3/(3*a^3*d)) + (3*csc(c + d*x)^4)/(4*a^3*d) - (2*csc(c + d*x)^5)/(5*a^3*d) - csc(c + d*x)^6/(3*a^3*d) + (3*csc(c + d*x)^7)/(7*a^3*d) - csc(c + d*x)^8/(8*a^3*d)]
    @test_int [cot(c + d*x)^11/(a + a*sin(c + d*x))^3, x, 3, csc(c + d*x)^3/(3*a^3*d) - (3*csc(c + d*x)^4)/(4*a^3*d) + csc(c + d*x)^5/(5*a^3*d) + (5*csc(c + d*x)^6)/(6*a^3*d) - (5*csc(c + d*x)^7)/(7*a^3*d) - csc(c + d*x)^8/(8*a^3*d) + csc(c + d*x)^9/(3*a^3*d) - csc(c + d*x)^10/(10*a^3*d)]
    @test_int [cot(c + d*x)^13/(a + a*sin(c + d*x))^3, x, 3, -(csc(c + d*x)^3/(3*a^3*d)) + (3*csc(c + d*x)^4)/(4*a^3*d) - (4*csc(c + d*x)^6)/(3*a^3*d) + (6*csc(c + d*x)^7)/(7*a^3*d) + (3*csc(c + d*x)^8)/(4*a^3*d) - (8*csc(c + d*x)^9)/(9*a^3*d) + (3*csc(c + d*x)^11)/(11*a^3*d) - csc(c + d*x)^12/(12*a^3*d)]


    @test_int [tan(c + d*x)^5/(a + a*sin(c + d*x))^4, x, 4, -(atanh(sin(c + d*x))/(128*a^4*d)) + a^2/(48*d*(a + a*sin(c + d*x))^6) - (7*a)/(80*d*(a + a*sin(c + d*x))^5) + 1/(8*d*(a + a*sin(c + d*x))^4) - 5/(96*a*d*(a + a*sin(c + d*x))^3) + 1/(256*d*(a^2 - a^2*sin(c + d*x))^2) - 5/(256*d*(a^2 + a^2*sin(c + d*x))^2) - 3/(256*d*(a^4 - a^4*sin(c + d*x))) - 1/(256*d*(a^4 + a^4*sin(c + d*x)))]
    @test_int [tan(c + d*x)^3/(a + a*sin(c + d*x))^4, x, 3, a/(20*d*(a + a*sin(c + d*x))^5) - 1/(8*d*(a + a*sin(c + d*x))^4) + 1/(16*a*d*(a + a*sin(c + d*x))^3) + 1/(32*d*(a^2 + a^2*sin(c + d*x))^2) + 1/(64*d*(a^4 - a^4*sin(c + d*x))) + 1/(64*d*(a^4 + a^4*sin(c + d*x)))]
    @test_int [tan(c + d*x)^1/(a + a*sin(c + d*x))^4, x, 4, atanh(sin(c + d*x))/(16*a^4*d) + 1/(8*d*(a + a*sin(c + d*x))^4) - 1/(12*a*d*(a + a*sin(c + d*x))^3) - 1/(16*d*(a^2 + a^2*sin(c + d*x))^2) - 1/(16*d*(a^4 + a^4*sin(c + d*x)))]
    @test_int [cot(c + d*x)^3/(a + a*sin(c + d*x))^4, x, 3, (4*csc(c + d*x))/(a^4*d) - csc(c + d*x)^2/(2*a^4*d) + (9*log(sin(c + d*x)))/(a^4*d) - (9*log(1 + sin(c + d*x)))/(a^4*d) + 1/(d*(a^2 + a^2*sin(c + d*x))^2) + 5/(d*(a^4 + a^4*sin(c + d*x)))]
    @test_int [cot(c + d*x)^7/(a + a*sin(c + d*x))^4, x, 3, (8*csc(c + d*x))/(a^4*d) - (4*csc(c + d*x)^2)/(a^4*d) + (8*csc(c + d*x)^3)/(3*a^4*d) - (7*csc(c + d*x)^4)/(4*a^4*d) + (4*csc(c + d*x)^5)/(5*a^4*d) - csc(c + d*x)^6/(6*a^4*d) + (8*log(sin(c + d*x)))/(a^4*d) - (8*log(1 + sin(c + d*x)))/(a^4*d)]

    @test_int [tan(c + d*x)^2/(a + a*sin(c + d*x))^4, x, 17, -((4*sec(c + d*x)^5)/(5*a^4*d)) + (12*sec(c + d*x)^7)/(7*a^4*d) - (8*sec(c + d*x)^9)/(9*a^4*d) + tan(c + d*x)^3/(3*a^4*d) + (9*tan(c + d*x)^5)/(5*a^4*d) + (16*tan(c + d*x)^7)/(7*a^4*d) + (8*tan(c + d*x)^9)/(9*a^4*d)]
    @test_int [cot(c + d*x)^2/(a + a*sin(c + d*x))^4, x, If($VersionNumber<9, 15, 14), If($VersionNumber<9, (4*atanh(cos(c + d*x)))/(a^4*d) - (94*cot(c + d*x))/(15*a^4*d) + (2*cot(c + d*x))/(5*a^4*d*(1 + sin(c + d*x))^3) + (13*cot(c + d*x))/(15*a^4*d*(1 + sin(c + d*x))^2) + (4*cot(c + d*x))/(a^4*d*(1 + sin(c + d*x))), (4*atanh(cos(c + d*x)))/(a^4*d) - cot(c + d*x)/(a^4*d) - (2*cot(c + d*x))/(5*a^4*d*(1 + csc(c + d*x))^3) + (31*cot(c + d*x))/(15*a^4*d*(1 + csc(c + d*x))^2) - (104*cot(c + d*x))/(15*a^4*d*(1 + csc(c + d*x))))]
    @test_int [cot(c + d*x)^4/(a + a*sin(c + d*x))^4, x, If($VersionNumber<9, 17, 14), If($VersionNumber<9, (14*atanh(cos(c + d*x)))/(a^4*d) - (33*cot(c + d*x))/(a^4*d) - (11*cot(c + d*x)^3)/(a^4*d) + (14*cot(c + d*x)*csc(c + d*x))/(a^4*d) + (4*cot(c + d*x)*csc(c + d*x)^2)/(3*a^4*d*(1 + sin(c + d*x))^2) + (28*cot(c + d*x)*csc(c + d*x)^2)/(3*a^4*d*(1 + sin(c + d*x))), (14*atanh(cos(c + d*x)))/(a^4*d) - (9*cot(c + d*x))/(a^4*d) - cot(c + d*x)^3/(3*a^4*d) + (2*cot(c + d*x)*csc(c + d*x))/(a^4*d) + (4*cot(c + d*x))/(3*a^4*d*(1 + csc(c + d*x))^2) - (44*cot(c + d*x))/(3*a^4*d*(1 + csc(c + d*x))))]
    @test_int [cot(c + d*x)^6/(a + a*sin(c + d*x))^4, x, 16, If($VersionNumber<9, (27*atanh(cos(c + d*x)))/(2*a^4*d) - (40*cot(c + d*x))/(a^4*d) - (27*cot(c + d*x)^3)/(a^4*d) - (41*cot(c + d*x)^5)/(5*a^4*d) + (27*cot(c + d*x)*csc(c + d*x))/(2*a^4*d) + (9*cot(c + d*x)*csc(c + d*x)^3)/(a^4*d) + (8*cot(c + d*x)*csc(c + d*x)^4)/(a^4*d*(1 + sin(c + d*x))), (27*atanh(cos(c + d*x)))/(2*a^4*d) - (16*cot(c + d*x))/(a^4*d) - (3*cot(c + d*x)^3)/(a^4*d) - cot(c + d*x)^5/(5*a^4*d) + (11*cot(c + d*x)*csc(c + d*x))/(2*a^4*d) + (cot(c + d*x)*csc(c + d*x)^3)/(a^4*d) - (8*cot(c + d*x))/(a^4*d*(1 + csc(c + d*x))))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^p*(a+a*sin(e+f*x))^(m/2)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [tan(e + f*x)^4*sqrt(a + a*sin(e + f*x)), x, 15, (11*sqrt(a)*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(8*sqrt(2)*f) - (27*sec(e + f*x)*sqrt(a*(1 + sin(e + f*x))))/(8*f) - (sec(e + f*x)^3*sqrt(a*(1 + sin(e + f*x))))/(12*f) + (29*sqrt(a + a*sin(e + f*x))*tan(e + f*x))/(12*f) + (5*sqrt(a*(1 + sin(e + f*x)))*tan(e + f*x)^3)/(12*f), (11*sqrt(a)*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(8*sqrt(2)*f) + (11*a^2*cos(e + f*x))/(8*f*(a + a*sin(e + f*x))^(3/2)) - (2*a*cos(e + f*x))/(f*sqrt(a + a*sin(e + f*x))) - (11*a*sec(e + f*x))/(6*f*sqrt(a + a*sin(e + f*x))) - (7*sec(e + f*x)^3*sqrt(a + a*sin(e + f*x)))/(3*f) + (4*sec(e + f*x)^3*(a + a*sin(e + f*x))^(3/2))/(3*a*f)]
    @test_int [tan(e + f*x)^2*sqrt(a + a*sin(e + f*x)), x, 4, -((sqrt(a)*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(sqrt(2)*f)) + (5*sec(e + f*x)*sqrt(a + a*sin(e + f*x)))/f - (2*sec(e + f*x)*(a + a*sin(e + f*x))^(3/2))/(a*f)]
    @test_int [cot(e + f*x)^2*sqrt(a + a*sin(e + f*x)), x, 4, -((sqrt(a)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/f) + (3*a*cos(e + f*x))/(f*sqrt(a + a*sin(e + f*x))) - (cot(e + f*x)*sqrt(a + a*sin(e + f*x)))/f]
    @test_int [cot(e + f*x)^4*sqrt(a + a*sin(e + f*x)), x, 7, (11*sqrt(a)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(8*f) - (2*a*cos(e + f*x))/(f*sqrt(a + a*sin(e + f*x))) + (11*a*cot(e + f*x))/(8*f*sqrt(a + a*sin(e + f*x))) - (a*cot(e + f*x)*csc(e + f*x))/(12*f*sqrt(a + a*sin(e + f*x))) - (cot(e + f*x)*csc(e + f*x)^2*sqrt(a + a*sin(e + f*x)))/(3*f)]


    @test_int [tan(e + f*x)^4*(a + a*sin(e + f*x))^(3/2), x, 14, -((a^(3/2)*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(2*sqrt(2)*f)) + (2*a^3*cos(e + f*x)^3)/(3*f*(a + a*sin(e + f*x))^(3/2)) - (7*a*sec(e + f*x)*sqrt(a + a*sin(e + f*x)))/(2*f) - (4*a^2*cos(e + f*x))/(f*sqrt(a + a*sin(e + f*x))) + (sec(e + f*x)^3*(a + a*sin(e + f*x))^(3/2))/(3*f), -((a^(3/2)*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(2*sqrt(2)*f)) - (8*a^2*cos(e + f*x))/(3*f*sqrt(a + a*sin(e + f*x))) - (2*a*cos(e + f*x)*sqrt(a + a*sin(e + f*x)))/(3*f) + (a*sec(e + f*x)*sqrt(a + a*sin(e + f*x)))/(2*f) - (23*sec(e + f*x)^3*(a + a*sin(e + f*x))^(3/2))/(3*f) + (4*sec(e + f*x)^3*(a + a*sin(e + f*x))^(5/2))/(a*f)]
    @test_int [tan(e + f*x)^2*(a + a*sin(e + f*x))^(3/2), x, 3, (11*a^2*cos(e + f*x))/(3*f*sqrt(a + a*sin(e + f*x))) + (7*sec(e + f*x)*(a + a*sin(e + f*x))^(3/2))/(3*f) - (2*sec(e + f*x)*(a + a*sin(e + f*x))^(5/2))/(3*a*f)]
    @test_int [cot(e + f*x)^2*(a + a*sin(e + f*x))^(3/2), x, 5, -((3*a^(3/2)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/f) + (11*a^2*cos(e + f*x))/(3*f*sqrt(a + a*sin(e + f*x))) + (5*a*cos(e + f*x)*sqrt(a + a*sin(e + f*x)))/(3*f) - (cot(e + f*x)*(a + a*sin(e + f*x))^(3/2))/f]
    @test_int [cot(e + f*x)^4*(a + a*sin(e + f*x))^(3/2), x, 8, (37*a^(3/2)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(8*f) - (8*a^2*cos(e + f*x))/(3*f*sqrt(a + a*sin(e + f*x))) + (29*a^2*cot(e + f*x))/(24*f*sqrt(a + a*sin(e + f*x))) - (2*a*cos(e + f*x)*sqrt(a + a*sin(e + f*x)))/(3*f) - (a*cot(e + f*x)*csc(e + f*x)*sqrt(a + a*sin(e + f*x)))/(4*f) - (cot(e + f*x)*csc(e + f*x)^2*(a + a*sin(e + f*x))^(3/2))/(3*f)]


    @test_int [tan(e + f*x)^4*(a + a*sin(e + f*x))^(5/2), x, 10, -((2*a^5*cos(e + f*x)^5)/(5*f*(a + a*sin(e + f*x))^(5/2))) + (8*a^4*cos(e + f*x)^3)/(3*f*(a + a*sin(e + f*x))^(3/2)) - (8*a^2*sec(e + f*x)*sqrt(a + a*sin(e + f*x)))/f + (2*a*sec(e + f*x)^3*(a + a*sin(e + f*x))^(3/2))/(3*f) - (12*a^3*cos(e + f*x))/(f*sqrt(a + a*sin(e + f*x))), -((64*a^3*cos(e + f*x))/(15*f*sqrt(a + a*sin(e + f*x)))) - (16*a^2*cos(e + f*x)*sqrt(a + a*sin(e + f*x)))/(15*f) - (46*a^2*sec(e + f*x)*sqrt(a + a*sin(e + f*x)))/(3*f) - (2*a*cos(e + f*x)*(a + a*sin(e + f*x))^(3/2))/(5*f) - (2*a*sec(e + f*x)^3*(a + a*sin(e + f*x))^(3/2))/(3*f) + (26*sec(e + f*x)^3*(a + a*sin(e + f*x))^(5/2))/(3*f) - (4*sec(e + f*x)^3*(a + a*sin(e + f*x))^(7/2))/(a*f)]
    @test_int [tan(e + f*x)^2*(a + a*sin(e + f*x))^(5/2), x, 4, (124*a^3*cos(e + f*x))/(15*f*sqrt(a + a*sin(e + f*x))) + (31*a^2*cos(e + f*x)*sqrt(a + a*sin(e + f*x)))/(15*f) + (9*sec(e + f*x)*(a + a*sin(e + f*x))^(5/2))/(5*f) - (2*sec(e + f*x)*(a + a*sin(e + f*x))^(7/2))/(5*a*f)]
    @test_int [cot(e + f*x)^2*(a + a*sin(e + f*x))^(5/2), x, 6, -((5*a^(5/2)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/f) + (49*a^3*cos(e + f*x))/(15*f*sqrt(a + a*sin(e + f*x))) + (31*a^2*cos(e + f*x)*sqrt(a + a*sin(e + f*x)))/(15*f) + (7*a*cos(e + f*x)*(a + a*sin(e + f*x))^(3/2))/(5*f) - (cot(e + f*x)*(a + a*sin(e + f*x))^(5/2))/f]
    @test_int [cot(e + f*x)^4*(a + a*sin(e + f*x))^(5/2), x, 10, (55*a^(5/2)*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(8*f) - (9*a^3*cos(e + f*x))/(40*f*sqrt(a + a*sin(e + f*x))) - (16*a^2*cos(e + f*x)*sqrt(a + a*sin(e + f*x)))/(15*f) + (17*a^2*cot(e + f*x)*sqrt(a + a*sin(e + f*x)))/(24*f) - (2*a*cos(e + f*x)*(a + a*sin(e + f*x))^(3/2))/(5*f) - (5*a*cot(e + f*x)*csc(e + f*x)*(a + a*sin(e + f*x))^(3/2))/(12*f) - (cot(e + f*x)*csc(e + f*x)^2*(a + a*sin(e + f*x))^(5/2))/(3*f)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [tan(e + f*x)^4/sqrt(a + a*sin(e + f*x)), x, 17, -((67*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(64*sqrt(2)*sqrt(a)*f)) - (sec(e + f*x)*(53 + 127*sin(e + f*x)))/(192*f*sqrt(a + a*sin(e + f*x))) + (a*sin(e + f*x)*tan(e + f*x))/(24*f*(a + a*sin(e + f*x))^(3/2)) + tan(e + f*x)^3/(3*f*sqrt(a + a*sin(e + f*x))), (61*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(64*sqrt(2)*sqrt(a)*f) - (sqrt(2)*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(sqrt(a)*f) + (61*a*cos(e + f*x))/(64*f*(a + a*sin(e + f*x))^(3/2)) + (7*a*sec(e + f*x))/(24*f*(a + a*sin(e + f*x))^(3/2)) - (61*sec(e + f*x))/(48*f*sqrt(a + a*sin(e + f*x))) - (5*sec(e + f*x)^3)/(6*f*sqrt(a + a*sin(e + f*x))) + (7*sec(e + f*x)^3*sqrt(a + a*sin(e + f*x)))/(12*a*f)]
    @test_int [tan(e + f*x)^2/sqrt(a + a*sin(e + f*x)), x, 4, (5*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(4*sqrt(2)*sqrt(a)*f) - sec(e + f*x)/(2*f*sqrt(a + a*sin(e + f*x))) + (3*sec(e + f*x)*sqrt(a + a*sin(e + f*x)))/(4*a*f)]
    @test_int [cot(e + f*x)^2/sqrt(a + a*sin(e + f*x)), x, 4, atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x)))/(sqrt(a)*f) - cot(e + f*x)/(f*sqrt(a + a*sin(e + f*x)))]
    @test_int [cot(e + f*x)^4/sqrt(a + a*sin(e + f*x)), x, 11, -((7*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(8*sqrt(a)*f)) + (9*cot(e + f*x))/(8*f*sqrt(a + a*sin(e + f*x))) + (cot(e + f*x)*csc(e + f*x))/(12*f*sqrt(a + a*sin(e + f*x))) - (cot(e + f*x)*csc(e + f*x)^2)/(3*f*sqrt(a + a*sin(e + f*x)))]


    @test_int [tan(e + f*x)^4/(a + a*sin(e + f*x))^(3/2), x, 20, (7*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(256*sqrt(2)*a^(3/2)*f) + (7*cos(e + f*x))/(256*f*(a + a*sin(e + f*x))^(3/2)) - (sec(e + f*x)*(65 + 87*sin(e + f*x)))/(192*f*(a + a*sin(e + f*x))^(3/2)) + (a*sin(e + f*x)*tan(e + f*x))/(12*f*(a + a*sin(e + f*x))^(5/2)) + tan(e + f*x)^3/(3*f*(a + a*sin(e + f*x))^(3/2)), (7*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(256*sqrt(2)*a^(3/2)*f) + (7*cos(e + f*x))/(256*f*(a + a*sin(e + f*x))^(3/2)) + (9*sec(e + f*x))/(32*f*(a + a*sin(e + f*x))^(3/2)) - sec(e + f*x)^3/(6*f*(a + a*sin(e + f*x))^(3/2)) - (45*sec(e + f*x))/(64*a*f*sqrt(a + a*sin(e + f*x))) + sec(e + f*x)^3/(4*a*f*sqrt(a + a*sin(e + f*x)))]
    @test_int [tan(e + f*x)^2/(a + a*sin(e + f*x))^(3/2), x, 5, atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x))))/(32*sqrt(2)*a^(3/2)*f) + cos(e + f*x)/(32*f*(a + a*sin(e + f*x))^(3/2)) - sec(e + f*x)/(4*f*(a + a*sin(e + f*x))^(3/2)) + (5*sec(e + f*x))/(8*a*f*sqrt(a + a*sin(e + f*x)))]
    @test_int [cot(e + f*x)^2/(a + a*sin(e + f*x))^(3/2), x, 6, (3*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(a^(3/2)*f) - (2*sqrt(2)*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(a^(3/2)*f) - cot(e + f*x)/(a*f*sqrt(a + a*sin(e + f*x)))]
    @test_int [cot(e + f*x)^4/(a + a*sin(e + f*x))^(3/2), x, 10, -(atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x)))/(8*a^(3/2)*f)) - cot(e + f*x)/(8*a*f*sqrt(a + a*sin(e + f*x))) + (11*cot(e + f*x)*csc(e + f*x))/(12*a*f*sqrt(a + a*sin(e + f*x))) - (cot(e + f*x)*csc(e + f*x)^2*sqrt(a + a*sin(e + f*x)))/(3*a^2*f)]


    @test_int [tan(e + f*x)^4/(a + a*sin(e + f*x))^(5/2), x, 23, (317*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(4096*sqrt(2)*a^(5/2)*f) + (317*cos(e + f*x))/(3072*f*(a + a*sin(e + f*x))^(5/2)) + (317*cos(e + f*x))/(4096*a*f*(a + a*sin(e + f*x))^(3/2)) - (sec(e + f*x)*(115 + 129*sin(e + f*x)))/(384*f*(a + a*sin(e + f*x))^(5/2)) + (5*a*sin(e + f*x)*tan(e + f*x))/(48*f*(a + a*sin(e + f*x))^(7/2)) + tan(e + f*x)^3/(3*f*(a + a*sin(e + f*x))^(5/2)), (317*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(4096*sqrt(2)*a^(5/2)*f) - cos(e + f*x)/(4*f*(a + a*sin(e + f*x))^(5/2)) - sec(e + f*x)^3/(8*f*(a + a*sin(e + f*x))^(5/2)) + (317*cos(e + f*x))/(4096*a*f*(a + a*sin(e + f*x))^(3/2)) + (217*sec(e + f*x))/(1536*a*f*(a + a*sin(e + f*x))^(3/2)) + (53*sec(e + f*x)^3)/(96*a*f*(a + a*sin(e + f*x))^(3/2)) - (1085*sec(e + f*x))/(3072*a^2*f*sqrt(a + a*sin(e + f*x))) - (31*sec(e + f*x)^3)/(192*a^2*f*sqrt(a + a*sin(e + f*x)))]
    @test_int [tan(e + f*x)^2/(a + a*sin(e + f*x))^(5/2), x, 6, -((11*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(128*sqrt(2)*a^(5/2)*f)) - sec(e + f*x)/(6*f*(a + a*sin(e + f*x))^(5/2)) - (11*cos(e + f*x))/(128*a*f*(a + a*sin(e + f*x))^(3/2)) + (17*sec(e + f*x))/(48*a*f*(a + a*sin(e + f*x))^(3/2)) + (11*sec(e + f*x))/(96*a^2*f*sqrt(a + a*sin(e + f*x)))]
    @test_int [cot(e + f*x)^2/(a + a*sin(e + f*x))^(5/2), x, 7, (5*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(a^(5/2)*f) - (7*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(sqrt(2)*a^(5/2)*f) - (2*cos(e + f*x))/(a*f*(a + a*sin(e + f*x))^(3/2)) - cot(e + f*x)/(a*f*(a + a*sin(e + f*x))^(3/2))]
    @test_int [cot(e + f*x)^4/(a + a*sin(e + f*x))^(5/2), x, 16, (45*atanh((sqrt(a)*cos(e + f*x))/sqrt(a + a*sin(e + f*x))))/(8*a^(5/2)*f) - (4*sqrt(2)*atanh((sqrt(a)*cos(e + f*x))/(sqrt(2)*sqrt(a + a*sin(e + f*x)))))/(a^(5/2)*f) - (19*cot(e + f*x))/(8*a^2*f*sqrt(a + a*sin(e + f*x))) + (13*cot(e + f*x)*csc(e + f*x))/(12*a^2*f*sqrt(a + a*sin(e + f*x))) - (cot(e + f*x)*csc(e + f*x)^2)/(3*a^2*f*sqrt(a + a*sin(e + f*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^p*(a+a*sin(e+f*x))^(m/3)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [tan(e + f*x)^4*(a + a*sin(e + f*x))^(1/3), x, 10, -((361*sec(e + f*x)*(a + a*sin(e + f*x))^(1/3))/(126*f)) + (361*sec(e + f*x)*(1 - sin(e + f*x))*(a + a*sin(e + f*x))^(1/3))/(63*f) - (sec(e + f*x)*(65*a^2 - 142*a^2*sin(e + f*x)))/(42*f*(a - a*sin(e + f*x))*(a + a*sin(e + f*x))^(2/3)) + (361*(1 + sqrt(3))*sec(e + f*x)*(1 - sin(e + f*x))*(a + a*sin(e + f*x))^(2/3))/(63*f*(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))) - (361*2^(1/3)*EllipticE(acos((2^(1/3)*a^(1/3) - (1 - sqrt(3))*(a + a*sin(e + f*x))^(1/3))/(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))), (1/4)*(2 + sqrt(3)))*sec(e + f*x)*(a + a*sin(e + f*x))^(2/3)*(2^(1/3)*a^(1/3) - (a + a*sin(e + f*x))^(1/3))*sqrt((2^(2/3)*a^(2/3) + 2^(1/3)*a^(1/3)*(a + a*sin(e + f*x))^(1/3) + (a + a*sin(e + f*x))^(2/3))/(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))^2))/(21*3^(3/4)*a^(2/3)*f*sqrt(-(((a + a*sin(e + f*x))^(1/3)*(2^(1/3)*a^(1/3) - (a + a*sin(e + f*x))^(1/3)))/(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))^2))) - (361*(1 - sqrt(3))*EllipticF(acos((2^(1/3)*a^(1/3) - (1 - sqrt(3))*(a + a*sin(e + f*x))^(1/3))/(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))), (1/4)*(2 + sqrt(3)))*sec(e + f*x)*(a + a*sin(e + f*x))^(2/3)*(2^(1/3)*a^(1/3) - (a + a*sin(e + f*x))^(1/3))*sqrt((2^(2/3)*a^(2/3) + 2^(1/3)*a^(1/3)*(a + a*sin(e + f*x))^(1/3) + (a + a*sin(e + f*x))^(2/3))/(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))^2))/(63*2^(2/3)*3^(1/4)*a^(2/3)*f*sqrt(-(((a + a*sin(e + f*x))^(1/3)*(2^(1/3)*a^(1/3) - (a + a*sin(e + f*x))^(1/3)))/(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))^2))) + (3*a^2*sin(e + f*x)*tan(e + f*x))/(2*f*(a - a*sin(e + f*x))*(a + a*sin(e + f*x))^(2/3)) - (3*a^2*sin(e + f*x)^2*tan(e + f*x))/(f*(a - a*sin(e + f*x))*(a + a*sin(e + f*x))^(2/3))]
    @test_int [tan(e + f*x)^2*(a + a*sin(e + f*x))^(1/3), x, 4, -((5*a*cos(e + f*x)*Hypergeometric2F1(1/2, 7/6, 3/2, (1/2)*(1 - sin(e + f*x)))*(1 + sin(e + f*x))^(1/6))/(3*2^(1/6)*f*(a + a*sin(e + f*x))^(2/3))) + (7*sec(e + f*x)*(a + a*sin(e + f*x))^(1/3))/f - (3*sec(e + f*x)*(a + a*sin(e + f*x))^(4/3))/(a*f)]
    @test_int [cot(e + f*x)^2*(a + a*sin(e + f*x))^(1/3), x, 3, (6*sqrt(2)*AppellF1(11/6, -(1/2), 2, 17/6, (1/2)*(1 + sin(e + f*x)), 1 + sin(e + f*x))*sec(e + f*x)*sqrt(1 - sin(e + f*x))*(a + a*sin(e + f*x))^(7/3))/(11*a^2*f)]
    @test_int [cot(e + f*x)^4*(a + a*sin(e + f*x))^(1/3), x, 3, (12*sqrt(2)*AppellF1(17/6, -(3/2), 4, 23/6, (1/2)*(1 + sin(e + f*x)), 1 + sin(e + f*x))*sec(e + f*x)*sqrt(1 - sin(e + f*x))*(a + a*sin(e + f*x))^(10/3))/(17*a^3*f)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [tan(e + f*x)^4/(a + a*sin(e + f*x))^(1/3), x, 8, (973*sec(e + f*x))/(396*f*(a + a*sin(e + f*x))^(1/3)) - (973*sec(e + f*x)*(1 - sin(e + f*x)))/(495*f*(a + a*sin(e + f*x))^(1/3)) - (sec(e + f*x)*(95*a + 356*a*sin(e + f*x)))/(132*f*(1 - sin(e + f*x))*(a + a*sin(e + f*x))^(4/3)) + (973*EllipticF(acos((2^(1/3)*a^(1/3) - (1 - sqrt(3))*(a + a*sin(e + f*x))^(1/3))/(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))), (1/4)*(2 + sqrt(3)))*sec(e + f*x)*(a + a*sin(e + f*x))^(2/3)*(2^(1/3)*a^(1/3) - (a + a*sin(e + f*x))^(1/3))*sqrt((2^(2/3)*a^(2/3) + 2^(1/3)*a^(1/3)*(a + a*sin(e + f*x))^(1/3) + (a + a*sin(e + f*x))^(2/3))/(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))^2))/(495*2^(1/3)*3^(1/4)*a^(4/3)*f*sqrt(-(((a + a*sin(e + f*x))^(1/3)*(2^(1/3)*a^(1/3) - (a + a*sin(e + f*x))^(1/3)))/(2^(1/3)*a^(1/3) - (1 + sqrt(3))*(a + a*sin(e + f*x))^(1/3))^2))) + (3*a^2*sin(e + f*x)*tan(e + f*x))/(4*f*(a - a*sin(e + f*x))*(a + a*sin(e + f*x))^(4/3)) + (3*a^2*sin(e + f*x)^2*tan(e + f*x))/(f*(a - a*sin(e + f*x))*(a + a*sin(e + f*x))^(4/3))]
    @test_int [tan(e + f*x)^2/(a + a*sin(e + f*x))^(1/3), x, 4, -((3*sec(e + f*x))/(5*f*(a + a*sin(e + f*x))^(1/3))) + (11*2^(1/6)*cos(e + f*x)*Hypergeometric2F1(1/2, 5/6, 3/2, (1/2)*(1 - sin(e + f*x))))/(15*f*(1 + sin(e + f*x))^(1/6)*(a + a*sin(e + f*x))^(1/3)) + (4*sec(e + f*x)*(a + a*sin(e + f*x))^(2/3))/(5*a*f)]
    @test_int [cot(e + f*x)^2/(a + a*sin(e + f*x))^(1/3), x, 3, (6*sqrt(2)*AppellF1(7/6, -(1/2), 2, 13/6, (1/2)*(1 + sin(e + f*x)), 1 + sin(e + f*x))*sec(e + f*x)*sqrt(1 - sin(e + f*x))*(a + a*sin(e + f*x))^(5/3))/(7*a^2*f)]
    @test_int [cot(e + f*x)^4/(a + a*sin(e + f*x))^(1/3), x, 3, (12*sqrt(2)*AppellF1(13/6, -(3/2), 4, 19/6, (1/2)*(1 + sin(e + f*x)), 1 + sin(e + f*x))*sec(e + f*x)*sqrt(1 - sin(e + f*x))*(a + a*sin(e + f*x))^(8/3))/(13*a^3*f)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+a*sin(e+f*x))^m*with*p*symbolic=#


    @test_int [(g*tan(e + f*x))^p*(a + a*sin(e + f*x))^3, x, 10, (a^3*Hypergeometric2F1(1, (1 + p)/2, (3 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(1 + p))/(f*g*(1 + p)) + (1/(f*g*(2 + p)))*(3*a^3*(cos(e + f*x)^2)^((1 + p)/2)*Hypergeometric2F1((1 + p)/2, (2 + p)/2, (4 + p)/2, sin(e + f*x)^2)*sin(e + f*x)*(g*tan(e + f*x))^(1 + p)) + (1/(f*g*(4 + p)))*(a^3*(cos(e + f*x)^2)^((1 + p)/2)*Hypergeometric2F1((1 + p)/2, (4 + p)/2, (6 + p)/2, sin(e + f*x)^2)*sin(e + f*x)^3*(g*tan(e + f*x))^(1 + p)) + (3*a^3*Hypergeometric2F1(2, (3 + p)/2, (5 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(3 + p))/(f*g^3*(3 + p))]
    @test_int [(g*tan(e + f*x))^p*(a + a*sin(e + f*x))^2, x, 8, (a^2*Hypergeometric2F1(1, (1 + p)/2, (3 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(1 + p))/(f*g*(1 + p)) + (1/(f*g*(2 + p)))*(2*a^2*(cos(e + f*x)^2)^((1 + p)/2)*Hypergeometric2F1((1 + p)/2, (2 + p)/2, (4 + p)/2, sin(e + f*x)^2)*sin(e + f*x)*(g*tan(e + f*x))^(1 + p)) + (a^2*Hypergeometric2F1(2, (3 + p)/2, (5 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(3 + p))/(f*g^3*(3 + p))]
    @test_int [(g*tan(e + f*x))^p*(a + a*sin(e + f*x))^1, x, 6, (a*Hypergeometric2F1(1, (1 + p)/2, (3 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(1 + p))/(f*g*(1 + p)) + (1/(f*g*(2 + p)))*(a*(cos(e + f*x)^2)^((1 + p)/2)*Hypergeometric2F1((1 + p)/2, (2 + p)/2, (4 + p)/2, sin(e + f*x)^2)*sin(e + f*x)*(g*tan(e + f*x))^(1 + p))]
    @test_int [(g*tan(e + f*x))^p/(a + a*sin(e + f*x))^1, x, 4, (g*tan(e + f*x))^(1 + p)/(a*f*g*(1 + p)) - ((cos(e + f*x)^2)^((3 + p)/2)*Hypergeometric2F1((2 + p)/2, (3 + p)/2, (4 + p)/2, sin(e + f*x)^2)*sec(e + f*x)*(g*tan(e + f*x))^(2 + p))/(a*f*g^2*(2 + p))]
    @test_int [(g*tan(e + f*x))^p/(a + a*sin(e + f*x))^2, x, 10, (g*tan(e + f*x))^(1 + p)/(a^2*f*g*(1 + p)) - (2*(cos(e + f*x)^2)^((5 + p)/2)*Hypergeometric2F1((2 + p)/2, (5 + p)/2, (4 + p)/2, sin(e + f*x)^2)*sec(e + f*x)^3*(g*tan(e + f*x))^(2 + p))/(a^2*f*g^2*(2 + p)) + (2*(g*tan(e + f*x))^(3 + p))/(a^2*f*g^3*(3 + p))]
    @test_int [(g*tan(e + f*x))^p/(a + a*sin(e + f*x))^3, x, 13, (g*tan(e + f*x))^(1 + p)/(a^3*f*g*(1 + p)) - (3*(cos(e + f*x)^2)^((7 + p)/2)*Hypergeometric2F1((2 + p)/2, (7 + p)/2, (4 + p)/2, sin(e + f*x)^2)*sec(e + f*x)^5*(g*tan(e + f*x))^(2 + p))/(a^3*f*g^2*(2 + p)) + (5*(g*tan(e + f*x))^(3 + p))/(a^3*f*g^3*(3 + p)) - ((cos(e + f*x)^2)^((7 + p)/2)*Hypergeometric2F1((4 + p)/2, (7 + p)/2, (6 + p)/2, sin(e + f*x)^2)*sec(e + f*x)^3*(g*tan(e + f*x))^(4 + p))/(a^3*f*g^4*(4 + p)) + (4*(g*tan(e + f*x))^(5 + p))/(a^3*f*g^5*(5 + p))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+a*sin(e+f*x))^m*with*m*symbolic=#


    @test_int [(g*tan(e + f*x))^p*(a + a*sin(e + f*x))^m, x, 4, (AppellF1(1 + p, (1 + p)/2, (1/2)*(1 - 2*m + p), 2 + p, sin(e + f*x), -sin(e + f*x))*(1 - sin(e + f*x))^((1 + p)/2)*(1 + sin(e + f*x))^((1/2)*(1 - 2*m + p))*(a + a*sin(e + f*x))^m*(g*tan(e + f*x))^(1 + p))/(f*g*(1 + p))]


    @test_int [tan(e + f*x)^3*(a + a*sin(e + f*x))^m, x, 4, (a*(4 + m)*Hypergeometric2F1(1, -1 + m, m, (1/2)*(1 + sin(e + f*x)))*(a + a*sin(e + f*x))^(-1 + m))/(4*f*(1 - m)) - (a^2*sin(e + f*x)^2*(a + a*sin(e + f*x))^(-1 + m))/(f*m*(a - a*sin(e + f*x))) + ((a + a*sin(e + f*x))^(-1 + m)*(a*(2 - 3*m - m^2) + 2*a*m*sin(e + f*x)))/(2*f*(1 - m)*m*(1 - sin(e + f*x)))]
    @test_int [tan(e + f*x)^1*(a + a*sin(e + f*x))^m, x, 3, -((a + a*sin(e + f*x))^m/(2*f*m)) + (Hypergeometric2F1(1, 1 + m, 2 + m, (1/2)*(1 + sin(e + f*x)))*(a + a*sin(e + f*x))^(1 + m))/(4*a*f*(1 + m))]
    @test_int [cot(e + f*x)^1*(a + a*sin(e + f*x))^m, x, 2, -((Hypergeometric2F1(1, 1 + m, 2 + m, 1 + sin(e + f*x))*(a + a*sin(e + f*x))^(1 + m))/(a*f*(1 + m)))]
    @test_int [cot(e + f*x)^3*(a + a*sin(e + f*x))^m, x, 3, -((csc(e + f*x)^2*(a + a*sin(e + f*x))^(2 + m))/(2*a^2*f)) - ((2 - m)*Hypergeometric2F1(2, 2 + m, 3 + m, 1 + sin(e + f*x))*(a + a*sin(e + f*x))^(2 + m))/(2*a^2*f*(2 + m))]
    @test_int [cot(e + f*x)^5*(a + a*sin(e + f*x))^m, x, 4, ((9 - m)*csc(e + f*x)^3*(a + a*sin(e + f*x))^(3 + m))/(12*a^3*f) - (csc(e + f*x)^4*(a + a*sin(e + f*x))^(3 + m))/(4*a^3*f) - ((12 - 9*m + m^2)*Hypergeometric2F1(3, 3 + m, 4 + m, 1 + sin(e + f*x))*(a + a*sin(e + f*x))^(3 + m))/(12*a^3*f*(3 + m))]

    @test_int [tan(e + f*x)^4*(a + a*sin(e + f*x))^m, x, 6, (2^(-(3/2) + m)*(9 - 12*m - 7*m^2 + 6*m^3 + m^4)*Hypergeometric2F1(1/2, 5/2 - m, 3/2, (1/2)*(1 - sin(e + f*x)))*sec(e + f*x)*(1 - sin(e + f*x))*(1 + sin(e + f*x))^(1/2 - m)*(a + a*sin(e + f*x))^m)/(3*f*(1 - m)*m) - (sec(e + f*x)*(a + a*sin(e + f*x))^(-1 + m)*(a*(6 - m - 7*m^2 - m^3) - a*(9 - 6*m - 8*m^2 - m^3)*sin(e + f*x)))/(3*f*(1 - m)*m*(1 - sin(e + f*x))) + (a^2*sin(e + f*x)*(a + a*sin(e + f*x))^(-1 + m)*tan(e + f*x))/(f*(1 - m)*(a - a*sin(e + f*x))) - (a^2*sin(e + f*x)^2*(a + a*sin(e + f*x))^(-1 + m)*tan(e + f*x))/(f*m*(a - a*sin(e + f*x)))]
    @test_int [tan(e + f*x)^2*(a + a*sin(e + f*x))^m, x, 5, (sec(e + f*x)*(a + a*sin(e + f*x))^m)/(f*(1 - m)*m) + (2^(-(1/2) + m)*(1 - m - m^2)*Hypergeometric2F1(-(1/2), 3/2 - m, 1/2, (1/2)*(1 - sin(e + f*x)))*sec(e + f*x)*(1 + sin(e + f*x))^(1/2 - m)*(a + a*sin(e + f*x))^m)/(f*(1 - m)*m) - (sec(e + f*x)*(a + a*sin(e + f*x))^(1 + m))/(a*f*m)]
    @test_int [tan(e + f*x)^0*(a + a*sin(e + f*x))^m, x, 2, -((2^(1/2 + m)*cos(e + f*x)*Hypergeometric2F1(1/2, 1/2 - m, 3/2, (1/2)*(1 - sin(e + f*x)))*(1 + sin(e + f*x))^(-(1/2) - m)*(a + a*sin(e + f*x))^m)/f)]
    @test_int [cot(e + f*x)^2*(a + a*sin(e + f*x))^m, x, 3, (2*sqrt(2)*AppellF1(3/2 + m, -(1/2), 2, 5/2 + m, (1/2)*(1 + sin(e + f*x)), 1 + sin(e + f*x))*sec(e + f*x)*sqrt(1 - sin(e + f*x))*(a + a*sin(e + f*x))^(2 + m))/(a^2*f*(3 + 2*m))]
    @test_int [cot(e + f*x)^4*(a + a*sin(e + f*x))^m, x, 3, (4*sqrt(2)*AppellF1(5/2 + m, -(3/2), 4, 7/2 + m, (1/2)*(1 + sin(e + f*x)), 1 + sin(e + f*x))*sec(e + f*x)*sqrt(1 - sin(e + f*x))*(a + a*sin(e + f*x))^(3 + m))/(a^3*f*(5 + 2*m))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*sin(e+f*x))^m=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(e+f*x)^p*(a+b*sin(e+f*x))^m=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [tan(c + d*x)^3*(a + b*sin(c + d*x)), x, 6, ((2*a + 3*b)*log(1 - sin(c + d*x)))/(4*d) + ((2*a - 3*b)*log(1 + sin(c + d*x)))/(4*d) + (3*b*sin(c + d*x))/(2*d) + ((a + b*sin(c + d*x))*tan(c + d*x)^2)/(2*d)]
    @test_int [tan(c + d*x)^1*(a + b*sin(c + d*x)), x, 5, -(((a + b)*log(1 - sin(c + d*x)))/(2*d)) - ((a - b)*log(1 + sin(c + d*x)))/(2*d) - (b*sin(c + d*x))/d]
    @test_int [cot(c + d*x)^1*(a + b*sin(c + d*x)), x, 3, (a*log(sin(c + d*x)))/d + (b*sin(c + d*x))/d]
    @test_int [cot(c + d*x)^3*(a + b*sin(c + d*x)), x, 3, -((b*csc(c + d*x))/d) - (a*csc(c + d*x)^2)/(2*d) - (a*log(sin(c + d*x)))/d - (b*sin(c + d*x))/d]
    @test_int [cot(c + d*x)^5*(a + b*sin(c + d*x)), x, 3, (2*b*csc(c + d*x))/d + (a*csc(c + d*x)^2)/d - (b*csc(c + d*x)^3)/(3*d) - (a*csc(c + d*x)^4)/(4*d) + (a*log(sin(c + d*x)))/d + (b*sin(c + d*x))/d]

    @test_int [tan(c + d*x)^4*(a + b*sin(c + d*x)), x, 8, a*x - (b*cos(c + d*x))/d - (2*b*sec(c + d*x))/d + (b*sec(c + d*x)^3)/(3*d) - (a*tan(c + d*x))/d + (a*tan(c + d*x)^3)/(3*d)]
    @test_int [tan(c + d*x)^2*(a + b*sin(c + d*x)), x, 7, (-a)*x + (b*cos(c + d*x))/d + (b*sec(c + d*x))/d + (a*tan(c + d*x))/d]
    @test_int [cot(c + d*x)^2*(a + b*sin(c + d*x)), x, 7, (-a)*x - (b*atanh(cos(c + d*x)))/d + (b*cos(c + d*x))/d - (a*cot(c + d*x))/d]
    @test_int [cot(c + d*x)^4*(a + b*sin(c + d*x)), x, 9, a*x + (3*b*atanh(cos(c + d*x)))/(2*d) - (3*b*cos(c + d*x))/(2*d) + (a*cot(c + d*x))/d - (b*cos(c + d*x)*cot(c + d*x)^2)/(2*d) - (a*cot(c + d*x)^3)/(3*d)]
    @test_int [cot(c + d*x)^6*(a + b*sin(c + d*x)), x, 11, -(a*x) - (15*b*atanh(cos(c + d*x)))/(8*d) + (15*b*cos(c + d*x))/(8*d) - (a*cot(c + d*x))/d + (5*b*cos(c + d*x)*cot(c + d*x)^2)/(8*d) + (a*cot(c + d*x)^3)/(3*d) - (b*cos(c + d*x)*cot(c + d*x)^4)/(4*d) - (a*cot(c + d*x)^5)/(5*d)]


    @test_int [tan(c + d*x)^3*(a + b*sin(c + d*x))^2, x, 7, ((a + b)*(a + 2*b)*log(1 - sin(c + d*x)))/(2*d) + ((a - 2*b)*(a - b)*log(1 + sin(c + d*x)))/(2*d) + (2*a*b*sin(c + d*x))/d + (b^2*sin(c + d*x)^2)/(2*d) + (sec(c + d*x)^2*(a + b*sin(c + d*x))^2)/(2*d)]
    @test_int [tan(c + d*x)^1*(a + b*sin(c + d*x))^2, x, 6, -(((a + b)^2*log(1 - sin(c + d*x)))/(2*d)) - ((a - b)^2*log(1 + sin(c + d*x)))/(2*d) - (2*a*b*sin(c + d*x))/d - (b^2*sin(c + d*x)^2)/(2*d)]
    @test_int [cot(c + d*x)^1*(a + b*sin(c + d*x))^2, x, 3, (a^2*log(sin(c + d*x)))/d + (2*a*b*sin(c + d*x))/d + (b^2*sin(c + d*x)^2)/(2*d)]
    @test_int [cot(c + d*x)^3*(a + b*sin(c + d*x))^2, x, 3, (-2*a*b*csc(c + d*x))/d - (a^2*csc(c + d*x)^2)/(2*d) - ((a^2 - b^2)*log(sin(c + d*x)))/d - (2*a*b*sin(c + d*x))/d - (b^2*sin(c + d*x)^2)/(2*d)]
    @test_int [cot(c + d*x)^5*(a + b*sin(c + d*x))^2, x, 3, (4*a*b*csc(c + d*x))/d + ((2*a^2 - b^2)*csc(c + d*x)^2)/(2*d) - (2*a*b*csc(c + d*x)^3)/(3*d) - (a^2*csc(c + d*x)^4)/(4*d) + ((a^2 - 2*b^2)*log(sin(c + d*x)))/d + (2*a*b*sin(c + d*x))/d + (b^2*sin(c + d*x)^2)/(2*d)]

    @test_int [tan(c + d*x)^4*(a + b*sin(c + d*x))^2, x, 13, a^2*x + (5*b^2*x)/2 - (2*a*b*cos(c + d*x))/d - (4*a*b*sec(c + d*x))/d + (2*a*b*sec(c + d*x)^3)/(3*d) - (a^2*tan(c + d*x))/d - (5*b^2*tan(c + d*x))/(2*d) + (a^2*tan(c + d*x)^3)/(3*d) + (5*b^2*tan(c + d*x)^3)/(6*d) - (b^2*sin(c + d*x)^2*tan(c + d*x)^3)/(2*d)]
    @test_int [tan(c + d*x)^2*(a + b*sin(c + d*x))^2, x, 11, (-a^2)*x - (3*b^2*x)/2 + (2*a*b*cos(c + d*x))/d + (2*a*b*sec(c + d*x))/d + (a^2*tan(c + d*x))/d + (3*b^2*tan(c + d*x))/(2*d) - (b^2*sin(c + d*x)^2*tan(c + d*x))/(2*d)]
    @test_int [cot(c + d*x)^2*(a + b*sin(c + d*x))^2, x, 9, (-a^2)*x + (b^2*x)/2 - (2*a*b*atanh(cos(c + d*x)))/d + (2*a*b*cos(c + d*x))/d - (a^2*cot(c + d*x))/d + (b^2*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [cot(c + d*x)^4*(a + b*sin(c + d*x))^2, x, 13, a^2*x - (3*b^2*x)/2 + (3*a*b*atanh(cos(c + d*x)))/d - (3*a*b*cos(c + d*x))/d + (a^2*cot(c + d*x))/d - (3*b^2*cot(c + d*x))/(2*d) + (b^2*cos(c + d*x)^2*cot(c + d*x))/(2*d) - (a*b*cos(c + d*x)*cot(c + d*x)^2)/d - (a^2*cot(c + d*x)^3)/(3*d)]
    @test_int [cot(c + d*x)^6*(a + b*sin(c + d*x))^2, x, 16, (-a^2)*x + (5*b^2*x)/2 - (15*a*b*atanh(cos(c + d*x)))/(4*d) + (15*a*b*cos(c + d*x))/(4*d) - (a^2*cot(c + d*x))/d + (5*b^2*cot(c + d*x))/(2*d) + (5*a*b*cos(c + d*x)*cot(c + d*x)^2)/(4*d) + (a^2*cot(c + d*x)^3)/(3*d) - (5*b^2*cot(c + d*x)^3)/(6*d) + (b^2*cos(c + d*x)^2*cot(c + d*x)^3)/(2*d) - (a*b*cos(c + d*x)*cot(c + d*x)^4)/(2*d) - (a^2*cot(c + d*x)^5)/(5*d)]


    @test_int [tan(c + d*x)^3*(a + b*sin(c + d*x))^3, x, 7, ((a + b)^2*(2*a + 5*b)*log(1 - sin(c + d*x)))/(4*d) + ((2*a - 5*b)*(a - b)^2*log(1 + sin(c + d*x)))/(4*d) + (b*(6*a^2 + 5*b^2)*sin(c + d*x))/(2*d) + (3*a*b^2*sin(c + d*x)^2)/(2*d) + (b^3*sin(c + d*x)^3)/(3*d) + (sec(c + d*x)^2*(a + b*sin(c + d*x))^3)/(2*d)]
    @test_int [tan(c + d*x)^1*(a + b*sin(c + d*x))^3, x, 6, -(((a + b)^3*log(1 - sin(c + d*x)))/(2*d)) - ((a - b)^3*log(1 + sin(c + d*x)))/(2*d) - (b*(3*a^2 + b^2)*sin(c + d*x))/d - (3*a*b^2*sin(c + d*x)^2)/(2*d) - (b^3*sin(c + d*x)^3)/(3*d)]
    @test_int [cot(c + d*x)^1*(a + b*sin(c + d*x))^3, x, 3, (a^3*log(sin(c + d*x)))/d + (3*a^2*b*sin(c + d*x))/d + (3*a*b^2*sin(c + d*x)^2)/(2*d) + (b^3*sin(c + d*x)^3)/(3*d)]
    @test_int [cot(c + d*x)^3*(a + b*sin(c + d*x))^3, x, 3, (-3*a^2*b*csc(c + d*x))/d - (a^3*csc(c + d*x)^2)/(2*d) - (a*(a^2 - 3*b^2)*log(sin(c + d*x)))/d - (b*(3*a^2 - b^2)*sin(c + d*x))/d - (3*a*b^2*sin(c + d*x)^2)/(2*d) - (b^3*sin(c + d*x)^3)/(3*d)]
    @test_int [cot(c + d*x)^5*(a + b*sin(c + d*x))^3, x, 3, (b*(6*a^2 - b^2)*csc(c + d*x))/d + (a*(2*a^2 - 3*b^2)*csc(c + d*x)^2)/(2*d) - (a^2*b*csc(c + d*x)^3)/d - (a^3*csc(c + d*x)^4)/(4*d) + (a*(a^2 - 6*b^2)*log(sin(c + d*x)))/d + (b*(3*a^2 - 2*b^2)*sin(c + d*x))/d + (3*a*b^2*sin(c + d*x)^2)/(2*d) + (b^3*sin(c + d*x)^3)/(3*d)]

    @test_int [tan(c + d*x)^4*(a + b*sin(c + d*x))^3, x, 16, a^3*x + (15*a*b^2*x)/2 - (3*a^2*b*cos(c + d*x))/d - (3*b^3*cos(c + d*x))/d + (b^3*cos(c + d*x)^3)/(3*d) - (6*a^2*b*sec(c + d*x))/d - (3*b^3*sec(c + d*x))/d + (a^2*b*sec(c + d*x)^3)/d + (b^3*sec(c + d*x)^3)/(3*d) - (a^3*tan(c + d*x))/d - (15*a*b^2*tan(c + d*x))/(2*d) + (a^3*tan(c + d*x)^3)/(3*d) + (5*a*b^2*tan(c + d*x)^3)/(2*d) - (3*a*b^2*sin(c + d*x)^2*tan(c + d*x)^3)/(2*d)]
    @test_int [tan(c + d*x)^2*(a + b*sin(c + d*x))^3, x, 14, (-a^3)*x - (9/2)*a*b^2*x + (3*a^2*b*cos(c + d*x))/d + (2*b^3*cos(c + d*x))/d - (b^3*cos(c + d*x)^3)/(3*d) + (3*a^2*b*sec(c + d*x))/d + (b^3*sec(c + d*x))/d + (a^3*tan(c + d*x))/d + (9*a*b^2*tan(c + d*x))/(2*d) - (3*a*b^2*sin(c + d*x)^2*tan(c + d*x))/(2*d)]
    @test_int [cot(c + d*x)^2*(a + b*sin(c + d*x))^3, x, 11, (-a^3)*x + (3/2)*a*b^2*x - (3*a^2*b*atanh(cos(c + d*x)))/d + (3*a^2*b*cos(c + d*x))/d - (b^3*cos(c + d*x)^3)/(3*d) - (a^3*cot(c + d*x))/d + (3*a*b^2*cos(c + d*x)*sin(c + d*x))/(2*d)]
    @test_int [cot(c + d*x)^4*(a + b*sin(c + d*x))^3, x, 17, a^3*x - (9/2)*a*b^2*x + (9*a^2*b*atanh(cos(c + d*x)))/(2*d) - (b^3*atanh(cos(c + d*x)))/d - (9*a^2*b*cos(c + d*x))/(2*d) + (b^3*cos(c + d*x))/d + (b^3*cos(c + d*x)^3)/(3*d) + (a^3*cot(c + d*x))/d - (9*a*b^2*cot(c + d*x))/(2*d) + (3*a*b^2*cos(c + d*x)^2*cot(c + d*x))/(2*d) - (3*a^2*b*cos(c + d*x)*cot(c + d*x)^2)/(2*d) - (a^3*cot(c + d*x)^3)/(3*d)]
    @test_int [cot(c + d*x)^6*(a + b*sin(c + d*x))^3, x, 21, (-a^3)*x + (15/2)*a*b^2*x - (45*a^2*b*atanh(cos(c + d*x)))/(8*d) + (5*b^3*atanh(cos(c + d*x)))/(2*d) + (45*a^2*b*cos(c + d*x))/(8*d) - (5*b^3*cos(c + d*x))/(2*d) - (5*b^3*cos(c + d*x)^3)/(6*d) - (a^3*cot(c + d*x))/d + (15*a*b^2*cot(c + d*x))/(2*d) + (15*a^2*b*cos(c + d*x)*cot(c + d*x)^2)/(8*d) - (b^3*cos(c + d*x)^3*cot(c + d*x)^2)/(2*d) + (a^3*cot(c + d*x)^3)/(3*d) - (5*a*b^2*cot(c + d*x)^3)/(2*d) + (3*a*b^2*cos(c + d*x)^2*cot(c + d*x)^3)/(2*d) - (3*a^2*b*cos(c + d*x)*cot(c + d*x)^4)/(4*d) - (a^3*cot(c + d*x)^5)/(5*d)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [tan(c + d*x)^5/(a + b*sin(c + d*x)), x, 5, -(((8*a^2 + 9*a*b + 3*b^2)*log(1 - sin(c + d*x)))/(16*(a + b)^3*d)) - ((8*a^2 - 9*a*b + 3*b^2)*log(1 + sin(c + d*x)))/(16*(a - b)^3*d) + (a^5*log(a + b*sin(c + d*x)))/((a^2 - b^2)^3*d) + (sec(c + d*x)^4*(a - b*sin(c + d*x)))/(4*(a^2 - b^2)*d) - (sec(c + d*x)^2*(4*a*(2*a^2 - b^2) - b*(9*a^2 - 5*b^2)*sin(c + d*x)))/(8*(a^2 - b^2)^2*d)]
    @test_int [tan(c + d*x)^3/(a + b*sin(c + d*x)), x, 4, ((2*a + b)*log(1 - sin(c + d*x)))/(4*(a + b)^2*d) + ((2*a - b)*log(1 + sin(c + d*x)))/(4*(a - b)^2*d) - (a^3*log(a + b*sin(c + d*x)))/((a^2 - b^2)^2*d) + (sec(c + d*x)^2*(a - b*sin(c + d*x)))/(2*(a^2 - b^2)*d)]
    @test_int [tan(c + d*x)^1/(a + b*sin(c + d*x)), x, 3, -(log(1 - sin(c + d*x))/(2*(a + b)*d)) - log(1 + sin(c + d*x))/(2*(a - b)*d) + (a*log(a + b*sin(c + d*x)))/((a^2 - b^2)*d)]
    @test_int [cot(c + d*x)^1/(a + b*sin(c + d*x)), x, 4, log(sin(c + d*x))/(a*d) - log(a + b*sin(c + d*x))/(a*d)]
    @test_int [cot(c + d*x)^3/(a + b*sin(c + d*x)), x, 3, (b*csc(c + d*x))/(a^2*d) - csc(c + d*x)^2/(2*a*d) - ((a^2 - b^2)*log(sin(c + d*x)))/(a^3*d) + ((a^2 - b^2)*log(a + b*sin(c + d*x)))/(a^3*d)]
    @test_int [cot(c + d*x)^5/(a + b*sin(c + d*x)), x, 3, -((b*(2*a^2 - b^2)*csc(c + d*x))/(a^4*d)) + ((2*a^2 - b^2)*csc(c + d*x)^2)/(2*a^3*d) + (b*csc(c + d*x)^3)/(3*a^2*d) - csc(c + d*x)^4/(4*a*d) + ((a^2 - b^2)^2*log(sin(c + d*x)))/(a^5*d) - ((a^2 - b^2)^2*log(a + b*sin(c + d*x)))/(a^5*d)]

    @test_int [tan(c + d*x)^4/(a + b*sin(c + d*x)), x, 13, (2*a^4*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(5/2)*d) + (a^2*b*sec(c + d*x))/((a^2 - b^2)^2*d) + (b*sec(c + d*x))/((a^2 - b^2)*d) - (b*sec(c + d*x)^3)/(3*(a^2 - b^2)*d) - (a^3*tan(c + d*x))/((a^2 - b^2)^2*d) + (a*tan(c + d*x)^3)/(3*(a^2 - b^2)*d)]
    @test_int [tan(c + d*x)^2/(a + b*sin(c + d*x)), x, 8, -((2*a^2*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(3/2)*d)) - (b*sec(c + d*x))/((a^2 - b^2)*d) + (a*tan(c + d*x))/((a^2 - b^2)*d)]
    @test_int [cot(c + d*x)^2/(a + b*sin(c + d*x)), x, 7, -((2*sqrt(a^2 - b^2)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^2*d)) + (b*atanh(cos(c + d*x)))/(a^2*d) - cot(c + d*x)/(a*d)]
    @test_int [cot(c + d*x)^4/(a + b*sin(c + d*x)), x, 7, (2*(a^2 - b^2)^(3/2)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^4*d) - (b*(3*a^2 - 2*b^2)*atanh(cos(c + d*x)))/(2*a^4*d) + ((4*a^2 - 3*b^2)*cot(c + d*x))/(3*a^3*d) + (b*cot(c + d*x)*csc(c + d*x))/(2*a^2*d) - (cot(c + d*x)*csc(c + d*x)^2)/(3*a*d)]
    @test_int [cot(c + d*x)^6/(a + b*sin(c + d*x)), x, 9, -((2*(a^2 - b^2)^(5/2)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^6*d)) + (b*(15*a^4 - 20*a^2*b^2 + 8*b^4)*atanh(cos(c + d*x)))/(8*a^6*d) - ((23*a^4 - 35*a^2*b^2 + 15*b^4)*cot(c + d*x))/(15*a^5*d) - (cot(c + d*x)*csc(c + d*x))/(b*d) + ((8*a^4 - 9*a^2*b^2 + 4*b^4)*cot(c + d*x)*csc(c + d*x))/(8*a^4*b*d) + (a*cot(c + d*x)*csc(c + d*x)^2)/(2*b^2*d) - ((15*a^4 - 22*a^2*b^2 + 10*b^4)*cot(c + d*x)*csc(c + d*x)^2)/(30*a^3*b^2*d) + (b*cot(c + d*x)*csc(c + d*x)^3)/(4*a^2*d) - (cot(c + d*x)*csc(c + d*x)^4)/(5*a*d)]


    @test_int [tan(c + d*x)^5/(a + b*sin(c + d*x))^2, x, 5, -((a*(4*a + b)*log(1 - sin(c + d*x)))/(8*(a + b)^4*d)) - (a*(4*a - b)*log(1 + sin(c + d*x)))/(8*(a - b)^4*d) + (a^4*(a^2 + 5*b^2)*log(a + b*sin(c + d*x)))/((a^2 - b^2)^4*d) - a^5/((a^2 - b^2)^3*d*(a + b*sin(c + d*x))) + (sec(c + d*x)^4*(a^2 + b^2 - 2*a*b*sin(c + d*x)))/(4*(a^2 - b^2)^2*d) - (sec(c + d*x)^2*(2*(2*a^4 + 3*a^2*b^2 - b^4) - a*b*(9*a^2 - b^2)*sin(c + d*x)))/(4*(a^2 - b^2)^3*d)]
    @test_int [tan(c + d*x)^3/(a + b*sin(c + d*x))^2, x, 4, (a*log(1 - sin(c + d*x)))/(2*(a + b)^3*d) + (a*log(1 + sin(c + d*x)))/(2*(a - b)^3*d) - (a^2*(a^2 + 3*b^2)*log(a + b*sin(c + d*x)))/((a^2 - b^2)^3*d) + a^3/((a^2 - b^2)^2*d*(a + b*sin(c + d*x))) + (sec(c + d*x)^2*(a^2 + b^2 - 2*a*b*sin(c + d*x)))/(2*(a^2 - b^2)^2*d)]
    @test_int [tan(c + d*x)^1/(a + b*sin(c + d*x))^2, x, 3, -log(1 - sin(c + d*x))/(2*(a + b)^2*d) - log(1 + sin(c + d*x))/(2*(a - b)^2*d) + ((a^2 + b^2)*log(a + b*sin(c + d*x)))/((a^2 - b^2)^2*d) - a/((a^2 - b^2)*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^1/(a + b*sin(c + d*x))^2, x, 3, log(sin(c + d*x))/(a^2*d) - log(a + b*sin(c + d*x))/(a^2*d) + 1/(a*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^3/(a + b*sin(c + d*x))^2, x, 3, (2*b*csc(c + d*x))/(a^3*d) - csc(c + d*x)^2/(2*a^2*d) - ((a^2 - 3*b^2)*log(sin(c + d*x)))/(a^4*d) + ((a^2 - 3*b^2)*log(a + b*sin(c + d*x)))/(a^4*d) - (a^2 - b^2)/(a^3*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^5/(a + b*sin(c + d*x))^2, x, 3, -((4*b*(a^2 - b^2)*csc(c + d*x))/(a^5*d)) + ((2*a^2 - 3*b^2)*csc(c + d*x)^2)/(2*a^4*d) + (2*b*csc(c + d*x)^3)/(3*a^3*d) - csc(c + d*x)^4/(4*a^2*d) + ((a^4 - 6*a^2*b^2 + 5*b^4)*log(sin(c + d*x)))/(a^6*d) - ((a^4 - 6*a^2*b^2 + 5*b^4)*log(a + b*sin(c + d*x)))/(a^6*d) + (a^2 - b^2)^2/(a^5*d*(a + b*sin(c + d*x)))]

    @test_int [tan(c + d*x)^4/(a + b*sin(c + d*x))^2, x, 16, (2*a^5*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(7/2)*d) + (8*a^3*b^2*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(7/2)*d) + cos(c + d*x)/(12*(a + b)^2*d*(1 - sin(c + d*x))^2) + cos(c + d*x)/(12*(a + b)^2*d*(1 - sin(c + d*x))) - ((3*a + b)*cos(c + d*x))/(4*(a + b)^3*d*(1 - sin(c + d*x))) - cos(c + d*x)/(12*(a - b)^2*d*(1 + sin(c + d*x))^2) - cos(c + d*x)/(12*(a - b)^2*d*(1 + sin(c + d*x))) + ((3*a - b)*cos(c + d*x))/(4*(a - b)^3*d*(1 + sin(c + d*x))) + (a^4*b*cos(c + d*x))/((a^2 - b^2)^3*d*(a + b*sin(c + d*x)))]
    @test_int [tan(c + d*x)^2/(a + b*sin(c + d*x))^2, x, 12, -((2*a^3*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(5/2)*d)) - (4*a*b^2*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(5/2)*d) + cos(c + d*x)/(2*(a + b)^2*d*(1 - sin(c + d*x))) - cos(c + d*x)/(2*(a - b)^2*d*(1 + sin(c + d*x))) - (a^2*b*cos(c + d*x))/((a^2 - b^2)^2*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^2/(a + b*sin(c + d*x))^2, x, 8, -((2*(a^2 - 2*b^2)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^3*sqrt(a^2 - b^2)*d)) + (2*b*atanh(cos(c + d*x)))/(a^3*d) - (2*cot(c + d*x))/(a^2*d) + cot(c + d*x)/(a*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^4/(a + b*sin(c + d*x))^2, x, 8, (2*(a^4 - 5*a^2*b^2 + 4*b^4)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^5*sqrt(a^2 - b^2)*d) - (b*(3*a^2 - 4*b^2)*atanh(cos(c + d*x)))/(a^5*d) + ((7*a^2 - 12*b^2)*cot(c + d*x))/(3*a^4*d) - ((a^2 - 2*b^2)*cot(c + d*x)*csc(c + d*x))/(a^3*b*d) + ((3*a^2 - 4*b^2)*cot(c + d*x)*csc(c + d*x))/(3*a^2*b*d*(a + b*sin(c + d*x))) - (cot(c + d*x)*csc(c + d*x)^2)/(3*a*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^6/(a + b*sin(c + d*x))^2, x, 10, -((2*(a^2 - 6*b^2)*(a^2 - b^2)^(3/2)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^7*d)) + (b*(15*a^4 - 40*a^2*b^2 + 24*b^4)*atanh(cos(c + d*x)))/(4*a^7*d) - ((38*a^4 - 135*a^2*b^2 + 90*b^4)*cot(c + d*x))/(15*a^6*d) + ((4*a^4 - 17*a^2*b^2 + 12*b^4)*cot(c + d*x)*csc(c + d*x))/(4*a^5*b*d) - ((15*a^4 - 82*a^2*b^2 + 60*b^4)*cot(c + d*x)*csc(c + d*x)^2)/(30*a^4*b^2*d) - (cot(c + d*x)*csc(c + d*x))/(2*b*d*(a + b*sin(c + d*x))) + (a*cot(c + d*x)*csc(c + d*x)^2)/(6*b^2*d*(a + b*sin(c + d*x))) + ((2*a^4 - 12*a^2*b^2 + 9*b^4)*cot(c + d*x)*csc(c + d*x)^2)/(6*a^3*b^2*d*(a + b*sin(c + d*x))) + (3*b*cot(c + d*x)*csc(c + d*x)^3)/(10*a^2*d*(a + b*sin(c + d*x))) - (cot(c + d*x)*csc(c + d*x)^4)/(5*a*d*(a + b*sin(c + d*x)))]


    @test_int [tan(c + d*x)^5/(a + b*sin(c + d*x))^3, x, 5, -(((8*a^2 - 5*a*b - b^2)*log(1 - sin(c + d*x)))/(16*(a + b)^5*d)) - ((8*a^2 + 5*a*b - b^2)*log(1 + sin(c + d*x)))/(16*(a - b)^5*d) + (a^3*(a^4 + 13*a^2*b^2 + 10*b^4)*log(a + b*sin(c + d*x)))/((a^2 - b^2)^5*d) - a^5/(2*(a^2 - b^2)^3*d*(a + b*sin(c + d*x))^2) - (a^4*(a^2 + 5*b^2))/((a^2 - b^2)^4*d*(a + b*sin(c + d*x))) + (sec(c + d*x)^4*(a*(a^2 + 3*b^2) - b*(3*a^2 + b^2)*sin(c + d*x)))/(4*(a^2 - b^2)^3*d) - (sec(c + d*x)^2*(8*a^3*(a^2 + 5*b^2) - b*(27*a^4 + 22*a^2*b^2 - b^4)*sin(c + d*x)))/(8*(a^2 - b^2)^4*d)]
    @test_int [tan(c + d*x)^3/(a + b*sin(c + d*x))^3, x, 4, ((2*a - b)*log(1 - sin(c + d*x)))/(4*(a + b)^4*d) + ((2*a + b)*log(1 + sin(c + d*x)))/(4*(a - b)^4*d) - (a*(a^4 + 8*a^2*b^2 + 3*b^4)*log(a + b*sin(c + d*x)))/((a^2 - b^2)^4*d) + a^3/(2*(a^2 - b^2)^2*d*(a + b*sin(c + d*x))^2) + (a^2*(a^2 + 3*b^2))/((a^2 - b^2)^3*d*(a + b*sin(c + d*x))) + (sec(c + d*x)^2*(a*(a^2 + 3*b^2) - b*(3*a^2 + b^2)*sin(c + d*x)))/(2*(a^2 - b^2)^3*d)]
    @test_int [tan(c + d*x)^1/(a + b*sin(c + d*x))^3, x, 3, -log(1 - sin(c + d*x))/(2*(a + b)^3*d) - log(1 + sin(c + d*x))/(2*(a - b)^3*d) + (a*(a^2 + 3*b^2)*log(a + b*sin(c + d*x)))/((a^2 - b^2)^3*d) - a/(2*(a^2 - b^2)*d*(a + b*sin(c + d*x))^2) - (a^2 + b^2)/((a^2 - b^2)^2*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^1/(a + b*sin(c + d*x))^3, x, 3, log(sin(c + d*x))/(a^3*d) - log(a + b*sin(c + d*x))/(a^3*d) + 1/(2*a*d*(a + b*sin(c + d*x))^2) + 1/(a^2*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^3/(a + b*sin(c + d*x))^3, x, 3, (3*b*csc(c + d*x))/(a^4*d) - csc(c + d*x)^2/(2*a^3*d) - ((a^2 - 6*b^2)*log(sin(c + d*x)))/(a^5*d) + ((a^2 - 6*b^2)*log(a + b*sin(c + d*x)))/(a^5*d) - (a^2 - b^2)/(2*a^3*d*(a + b*sin(c + d*x))^2) - (a^2 - 3*b^2)/(a^4*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^5/(a + b*sin(c + d*x))^3, x, 3, (-2*b*(3*a^2 - 5*b^2)*csc(c + d*x))/(a^6*d) + ((a^2 - 3*b^2)*csc(c + d*x)^2)/(a^5*d) + (b*csc(c + d*x)^3)/(a^4*d) - csc(c + d*x)^4/(4*a^3*d) + ((a^4 - 12*a^2*b^2 + 15*b^4)*log(sin(c + d*x)))/(a^7*d) - ((a^4 - 12*a^2*b^2 + 15*b^4)*log(a + b*sin(c + d*x)))/(a^7*d) + (a^2 - b^2)^2/(2*a^5*d*(a + b*sin(c + d*x))^2) + (a^4 - 6*a^2*b^2 + 5*b^4)/(a^6*d*(a + b*sin(c + d*x)))]

    @test_int [tan(c + d*x)^4/(a + b*sin(c + d*x))^3, x, 22, (8*a^4*b^2*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(9/2)*d) + (12*a^2*b^2*(a^2 + b^2)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(9/2)*d) + (a^4*(2*a^2 + b^2)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(9/2)*d) + cos(c + d*x)/(12*(a + b)^3*d*(1 - sin(c + d*x))^2) - (3*a*cos(c + d*x))/(4*(a + b)^4*d*(1 - sin(c + d*x))) + cos(c + d*x)/(12*(a + b)^3*d*(1 - sin(c + d*x))) - cos(c + d*x)/(12*(a - b)^3*d*(1 + sin(c + d*x))^2) + (3*a*cos(c + d*x))/(4*(a - b)^4*d*(1 + sin(c + d*x))) - cos(c + d*x)/(12*(a - b)^3*d*(1 + sin(c + d*x))) + (a^4*b*cos(c + d*x))/(2*(a^2 - b^2)^3*d*(a + b*sin(c + d*x))^2) + (3*a^5*b*cos(c + d*x))/(2*(a^2 - b^2)^4*d*(a + b*sin(c + d*x))) + (4*a^3*b^3*cos(c + d*x))/((a^2 - b^2)^4*d*(a + b*sin(c + d*x)))]
    @test_int [tan(c + d*x)^2/(a + b*sin(c + d*x))^3, x, 18, -((4*a^2*b^2*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(7/2)*d)) - (a^2*(2*a^2 + b^2)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(7/2)*d) - (2*b^2*(3*a^2 + b^2)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/((a^2 - b^2)^(7/2)*d) + cos(c + d*x)/(2*(a + b)^3*d*(1 - sin(c + d*x))) - cos(c + d*x)/(2*(a - b)^3*d*(1 + sin(c + d*x))) - (a^2*b*cos(c + d*x))/(2*(a^2 - b^2)^2*d*(a + b*sin(c + d*x))^2) - (3*a^3*b*cos(c + d*x))/(2*(a^2 - b^2)^3*d*(a + b*sin(c + d*x))) - (2*a*b^3*cos(c + d*x))/((a^2 - b^2)^3*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^2/(a + b*sin(c + d*x))^3, x, 9, -(((2*a^4 - 9*a^2*b^2 + 6*b^4)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^4*(a^2 - b^2)^(3/2)*d)) + (3*b*atanh(cos(c + d*x)))/(a^4*d) - ((5*a^2 - 6*b^2)*cot(c + d*x))/(2*a^3*(a^2 - b^2)*d) + cot(c + d*x)/(2*a*d*(a + b*sin(c + d*x))^2) + ((2*a^2 - 3*b^2)*cot(c + d*x))/(2*a^2*(a^2 - b^2)*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^4/(a + b*sin(c + d*x))^3, x, 9, ((2*a^4 - 19*a^2*b^2 + 20*b^4)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^6*sqrt(a^2 - b^2)*d) - (b*(9*a^2 - 20*b^2)*atanh(cos(c + d*x)))/(2*a^6*d) + ((17*a^2 - 60*b^2)*cot(c + d*x))/(6*a^5*d) - ((a^2 - 5*b^2)*cot(c + d*x)*csc(c + d*x))/(a^4*b*d) + ((3*a^2 - 5*b^2)*cot(c + d*x)*csc(c + d*x))/(6*a^2*b*d*(a + b*sin(c + d*x))^2) - (cot(c + d*x)*csc(c + d*x)^2)/(3*a*d*(a + b*sin(c + d*x))^2) + ((3*a^2 - 20*b^2)*cot(c + d*x)*csc(c + d*x))/(6*a^3*b*d*(a + b*sin(c + d*x)))]
    @test_int [cot(c + d*x)^6/(a + b*sin(c + d*x))^3, x, 11, -((sqrt(a^2 - b^2)*(2*a^4 - 29*a^2*b^2 + 42*b^4)*atan((b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 - b^2)))/(a^8*d)) + (b*(45*a^4 - 200*a^2*b^2 + 168*b^4)*atanh(cos(c + d*x)))/(8*a^8*d) - ((91*a^4 - 645*a^2*b^2 + 630*b^4)*cot(c + d*x))/(30*a^7*d) + ((8*a^4 - 79*a^2*b^2 + 84*b^4)*cot(c + d*x)*csc(c + d*x))/(8*a^6*b*d) - ((15*a^4 - 187*a^2*b^2 + 210*b^4)*cot(c + d*x)*csc(c + d*x)^2)/(30*a^5*b^2*d) - (cot(c + d*x)*csc(c + d*x))/(3*b*d*(a + b*sin(c + d*x))^2) + (a*cot(c + d*x)*csc(c + d*x)^2)/(12*b^2*d*(a + b*sin(c + d*x))^2) + ((5*a^4 - 60*a^2*b^2 + 63*b^4)*cot(c + d*x)*csc(c + d*x)^2)/(60*a^3*b^2*d*(a + b*sin(c + d*x))^2) + (7*b*cot(c + d*x)*csc(c + d*x)^3)/(20*a^2*d*(a + b*sin(c + d*x))^2) - (cot(c + d*x)*csc(c + d*x)^4)/(5*a*d*(a + b*sin(c + d*x))^2) + ((4*a^4 - 54*a^2*b^2 + 63*b^4)*cot(c + d*x)*csc(c + d*x)^2)/(12*a^4*b^2*d*(a + b*sin(c + d*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*sin(e+f*x))^m*with*p*symbolic=#


    @test_int [(g*tan(e + f*x))^p*(a + b*sin(e + f*x))^3, x, 10, (a^3*Hypergeometric2F1(1, (1 + p)/2, (3 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(1 + p))/(f*g*(1 + p)) + (1/(f*g*(2 + p)))*(3*a^2*b*(cos(e + f*x)^2)^((1 + p)/2)*Hypergeometric2F1((1 + p)/2, (2 + p)/2, (4 + p)/2, sin(e + f*x)^2)*sin(e + f*x)*(g*tan(e + f*x))^(1 + p)) + (1/(f*g*(4 + p)))*(b^3*(cos(e + f*x)^2)^((1 + p)/2)*Hypergeometric2F1((1 + p)/2, (4 + p)/2, (6 + p)/2, sin(e + f*x)^2)*sin(e + f*x)^3*(g*tan(e + f*x))^(1 + p)) + (3*a*b^2*Hypergeometric2F1(2, (3 + p)/2, (5 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(3 + p))/(f*g^3*(3 + p))]
    @test_int [(g*tan(e + f*x))^p*(a + b*sin(e + f*x))^2, x, 8, (a^2*Hypergeometric2F1(1, (1 + p)/2, (3 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(1 + p))/(f*g*(1 + p)) + (1/(f*g*(2 + p)))*(2*a*b*(cos(e + f*x)^2)^((1 + p)/2)*Hypergeometric2F1((1 + p)/2, (2 + p)/2, (4 + p)/2, sin(e + f*x)^2)*sin(e + f*x)*(g*tan(e + f*x))^(1 + p)) + (b^2*Hypergeometric2F1(2, (3 + p)/2, (5 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(3 + p))/(f*g^3*(3 + p))]
    @test_int [(g*tan(e + f*x))^p*(a + b*sin(e + f*x))^1, x, 6, (a*Hypergeometric2F1(1, (1 + p)/2, (3 + p)/2, -tan(e + f*x)^2)*(g*tan(e + f*x))^(1 + p))/(f*g*(1 + p)) + (1/(f*g*(2 + p)))*(b*(cos(e + f*x)^2)^((1 + p)/2)*Hypergeometric2F1((1 + p)/2, (2 + p)/2, (4 + p)/2, sin(e + f*x)^2)*sin(e + f*x)*(g*tan(e + f*x))^(1 + p))]
    @test_int [(g*tan(e + f*x))^p/(a + b*sin(e + f*x))^1, x, 0, (a*g*AppellF1((1 - p)/2, (1 - p)/2, 1, (3 - p)/2, cos(e + f*x)^2, (b^2*cos(e + f*x)^2)/(-a^2 + b^2))*(sin(e + f*x)^2)^((1 - p)/2)*(g*tan(e + f*x))^(-1 + p))/((a^2 - b^2)*f*(-1 + p)) + (b*AppellF1((1 - p)/2, -(p/2), 1, (3 - p)/2, cos(e + f*x)^2, (b^2*cos(e + f*x)^2)/(-a^2 + b^2))*cos(e + f*x)*(g*tan(e + f*x))^p)/((sin(e + f*x)^2)^(p/2)*((-a^2 + b^2)*f*(-1 + p))), Unintegrable((g*tan(e + f*x))^p/(a + b*sin(e + f*x)), x)]
    @test_int [(g*tan(e + f*x))^p/(a + b*sin(e + f*x))^2, x, 0, -((a^2*AppellF1((1 - q)/2, (1 - q)/2, 1, (3 - q)/2, cos(e + f*x)^2, (b^2*cos(e + f*x)^2)/(-a^2 + b^2))*cos(e + f*x)*sin(e + f*x)*(sin(e + f*x)^2)^((1/2)*(-1 - q))*(g*tan(e + f*x))^q)/((a^2 - b^2)^2*f*(-1 + q))) + (b^2*AppellF1((1 - q)/2, (1 - q)/2, 1, (3 - q)/2, cos(e + f*x)^2, (b^2*cos(e + f*x)^2)/(-a^2 + b^2))*cos(e + f*x)*sin(e + f*x)*(sin(e + f*x)^2)^((1/2)*(-1 - q))*(g*tan(e + f*x))^q)/((a^2 - b^2)^2*f*(-1 + q)) + (2*a^2*AppellF1((1 - q)/2, (1 - q)/2, 2, (3 - q)/2, cos(e + f*x)^2, (b^2*cos(e + f*x)^2)/(-a^2 + b^2))*cos(e + f*x)*sin(e + f*x)*(sin(e + f*x)^2)^((1/2)*(-1 - q))*(g*tan(e + f*x))^q)/((a^2 - b^2)^2*f*(-1 + q)) - (2*a*b*AppellF1((1 - q)/2, -(q/2), 2, (3 - q)/2, cos(e + f*x)^2, (b^2*cos(e + f*x)^2)/(-a^2 + b^2))*cos(e + f*x)*(g*tan(e + f*x))^q)/((sin(e + f*x)^2)^(q/2)*((a^2 - b^2)^2*f*(-1 + q))), Unintegrable((g*tan(e + f*x))^p/(a + b*sin(e + f*x))^2, x)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*(g*tan(e+f*x))^p*(a+b*sin(e+f*x))^m*with*m*symbolic=#


    @test_int [(g*tan(e + f*x))^p*(a + b*sin(e + f*x))^m, x, 0, Unintegrable((a + b*sin(e + f*x))^m*(g*tan(e + f*x))^p, x)]
    end
