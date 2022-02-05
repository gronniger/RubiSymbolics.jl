@testset "4.7.1 (c trig)^m (d trig)^n" begin
    @variables a, b, c, d, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*Trig(a+b*x)^m*Trig(2*a+2*b*x)^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sin(a+b*x)^m*sin(2*a+2*b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(a+b*x)^m*sin(2*a+2*b*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^7, x, 4, (128*sin(a + b*x)^9)/(9*b) - (384*sin(a + b*x)^11)/(11*b) + (384*sin(a + b*x)^13)/(13*b) - (128*sin(a + b*x)^15)/(15*b)]
    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^6, x, 4, -((64*cos(a + b*x)^7)/(7*b)) + (64*cos(a + b*x)^9)/(3*b) - (192*cos(a + b*x)^11)/(11*b) + (64*cos(a + b*x)^13)/(13*b)]
    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^5, x, 4, (32*sin(a + b*x)^7)/(7*b) - (64*sin(a + b*x)^9)/(9*b) + (32*sin(a + b*x)^11)/(11*b)]
    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^4, x, 4, -((16*cos(a + b*x)^5)/(5*b)) + (32*cos(a + b*x)^7)/(7*b) - (16*cos(a + b*x)^9)/(9*b)]
    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^3, x, 4, (8*sin(a + b*x)^5)/(5*b) - (8*sin(a + b*x)^7)/(7*b)]
    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^2, x, 4, -((4*cos(a + b*x)^3)/(3*b)) + (4*cos(a + b*x)^5)/(5*b)]
    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^1, x, 1, sin(a + b*x)/(2*b) - sin(3*a + 3*b*x)/(6*b)]
    @test_int [sin(a + b*x)*csc(2*a + 2*b*x)^1, x, 2, atanh(sin(a + b*x))/(2*b)]
    @test_int [sin(a + b*x)*csc(2*a + 2*b*x)^2, x, 4, -(atanh(cos(a + b*x))/(4*b)) + sec(a + b*x)/(4*b)]
    @test_int [sin(a + b*x)*csc(2*a + 2*b*x)^3, x, 5, (3*atanh(sin(a + b*x)))/(16*b) - (3*csc(a + b*x))/(16*b) + (csc(a + b*x)*sec(a + b*x)^2)/(16*b)]
    @test_int [sin(a + b*x)*csc(2*a + 2*b*x)^4, x, 6, -((5*atanh(cos(a + b*x)))/(32*b)) + (5*sec(a + b*x))/(32*b) + (5*sec(a + b*x)^3)/(96*b) - (csc(a + b*x)^2*sec(a + b*x)^3)/(32*b)]
    @test_int [sin(a + b*x)*csc(2*a + 2*b*x)^5, x, 7, (35*atanh(sin(a + b*x)))/(256*b) - (35*csc(a + b*x))/(256*b) - (35*csc(a + b*x)^3)/(768*b) + (7*csc(a + b*x)^3*sec(a + b*x)^2)/(256*b) + (csc(a + b*x)^3*sec(a + b*x)^4)/(128*b)]


    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^5, x, 5, (4*sin(a + b*x)^8)/b - (32*sin(a + b*x)^10)/(5*b) + (8*sin(a + b*x)^12)/(3*b)]
    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^4, x, 6, (3*x)/16 - (3*cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(32*b) - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^3)/(16*b) - sin(2*a + 2*b*x)^5/(20*b)]
    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^3, x, 4, (4*sin(a + b*x)^6)/(3*b) - sin(a + b*x)^8/b]
    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^2, x, 5, x/4 - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(8*b) - sin(2*a + 2*b*x)^3/(12*b)]
    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^1, x, 3, sin(a + b*x)^4/(2*b)]
    @test_int [sin(a + b*x)^2*csc(2*a + 2*b*x)^1, x, 2, -(log(cos(a + b*x))/(2*b))]
    @test_int [sin(a + b*x)^2*csc(2*a + 2*b*x)^2, x, 3, tan(a + b*x)/(4*b)]
    @test_int [sin(a + b*x)^2*csc(2*a + 2*b*x)^3, x, 4, log(tan(a + b*x))/(8*b) + tan(a + b*x)^2/(16*b)]
    @test_int [sin(a + b*x)^2*csc(2*a + 2*b*x)^4, x, 4, -(cot(a + b*x)/(16*b)) + tan(a + b*x)/(8*b) + tan(a + b*x)^3/(48*b)]
    @test_int [sin(a + b*x)^2*csc(2*a + 2*b*x)^5, x, 5, -(cot(a + b*x)^2/(64*b)) + (3*log(tan(a + b*x)))/(32*b) + (3*tan(a + b*x)^2)/(64*b) + tan(a + b*x)^4/(128*b)]


    @test_int [sin(a + b*x)^3*sin(2*a + 2*b*x)^5, x, 4, (32*sin(a + b*x)^9)/(9*b) - (64*sin(a + b*x)^11)/(11*b) + (32*sin(a + b*x)^13)/(13*b)]
    @test_int [sin(a + b*x)^3*sin(2*a + 2*b*x)^4, x, 4, -((16*cos(a + b*x)^5)/(5*b)) + (48*cos(a + b*x)^7)/(7*b) - (16*cos(a + b*x)^9)/(3*b) + (16*cos(a + b*x)^11)/(11*b)]
    @test_int [sin(a + b*x)^3*sin(2*a + 2*b*x)^3, x, 4, (8*sin(a + b*x)^7)/(7*b) - (8*sin(a + b*x)^9)/(9*b)]
    @test_int [sin(a + b*x)^3*sin(2*a + 2*b*x)^2, x, 4, -((4*cos(a + b*x)^3)/(3*b)) + (8*cos(a + b*x)^5)/(5*b) - (4*cos(a + b*x)^7)/(7*b)]
    @test_int [sin(a + b*x)^3*sin(2*a + 2*b*x)^1, x, 3, (2*sin(a + b*x)^5)/(5*b)]
    @test_int [sin(a + b*x)^3*csc(2*a + 2*b*x)^1, x, 4, atanh(sin(a + b*x))/(2*b) - sin(a + b*x)/(2*b)]
    @test_int [sin(a + b*x)^3*csc(2*a + 2*b*x)^2, x, 3, sec(a + b*x)/(4*b)]
    @test_int [sin(a + b*x)^3*csc(2*a + 2*b*x)^3, x, 3, atanh(sin(a + b*x))/(16*b) + (sec(a + b*x)*tan(a + b*x))/(16*b)]
    @test_int [sin(a + b*x)^3*csc(2*a + 2*b*x)^4, x, 5, -(atanh(cos(a + b*x))/(16*b)) + sec(a + b*x)/(16*b) + sec(a + b*x)^3/(48*b)]
    @test_int [sin(a + b*x)^3*csc(2*a + 2*b*x)^5, x, 6, (15*atanh(sin(a + b*x)))/(256*b) - (15*csc(a + b*x))/(256*b) + (5*csc(a + b*x)*sec(a + b*x)^2)/(256*b) + (csc(a + b*x)*sec(a + b*x)^4)/(128*b)]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^8, x, 4, -((256*cos(a + b*x)^9)/(9*b)) + (768*cos(a + b*x)^11)/(11*b) - (768*cos(a + b*x)^13)/(13*b) + (256*cos(a + b*x)^15)/(15*b)]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^7, x, 4, (128*sin(a + b*x)^7)/(7*b) - (128*sin(a + b*x)^9)/(3*b) + (384*sin(a + b*x)^11)/(11*b) - (128*sin(a + b*x)^13)/(13*b)]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^6, x, 4, -((64*cos(a + b*x)^7)/(7*b)) + (128*cos(a + b*x)^9)/(9*b) - (64*cos(a + b*x)^11)/(11*b)]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^5, x, 4, (32*sin(a + b*x)^5)/(5*b) - (64*sin(a + b*x)^7)/(7*b) + (32*sin(a + b*x)^9)/(9*b)]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^4, x, 4, -((16*cos(a + b*x)^5)/(5*b)) + (16*cos(a + b*x)^7)/(7*b)]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^3, x, 4, (8*sin(a + b*x)^3)/(3*b) - (8*sin(a + b*x)^5)/(5*b)]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^2, x, 3, -((4*cos(a + b*x)^3)/(3*b))]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^1, x, 2, (2*sin(a + b*x))/b]
    @test_int [csc(a + b*x)*csc(2*a + 2*b*x)^1, x, 4, atanh(sin(a + b*x))/(2*b) - csc(a + b*x)/(2*b)]
    @test_int [csc(a + b*x)*csc(2*a + 2*b*x)^2, x, 5, -((3*atanh(cos(a + b*x)))/(8*b)) + (3*sec(a + b*x))/(8*b) - (csc(a + b*x)^2*sec(a + b*x))/(8*b)]
    @test_int [csc(a + b*x)*csc(2*a + 2*b*x)^3, x, 6, (5*atanh(sin(a + b*x)))/(16*b) - (5*csc(a + b*x))/(16*b) - (5*csc(a + b*x)^3)/(48*b) + (csc(a + b*x)^3*sec(a + b*x)^2)/(16*b)]
    @test_int [csc(a + b*x)*csc(2*a + 2*b*x)^4, x, 7, -((35*atanh(cos(a + b*x)))/(128*b)) + (35*sec(a + b*x))/(128*b) + (35*sec(a + b*x)^3)/(384*b) - (7*csc(a + b*x)^2*sec(a + b*x)^3)/(128*b) - (csc(a + b*x)^4*sec(a + b*x)^3)/(64*b)]


    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^8, x, 9, (5*x)/8 + (5*cos(a + b*x)*sin(a + b*x))/(8*b) + (5*cos(a + b*x)^3*sin(a + b*x))/(12*b) + (cos(a + b*x)^5*sin(a + b*x))/(3*b) + (2*cos(a + b*x)^7*sin(a + b*x))/(7*b) - (16*cos(a + b*x)^9*sin(a + b*x))/(7*b) - (160*cos(a + b*x)^9*sin(a + b*x)^3)/(21*b) - (128*cos(a + b*x)^9*sin(a + b*x)^5)/(7*b)]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^7, x, 5, -((16*cos(a + b*x)^8)/b) + (128*cos(a + b*x)^10)/(5*b) - (32*cos(a + b*x)^12)/(3*b)]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^6, x, 7, (3*x)/4 + (3*cos(a + b*x)*sin(a + b*x))/(4*b) + (cos(a + b*x)^3*sin(a + b*x))/(2*b) + (2*cos(a + b*x)^5*sin(a + b*x))/(5*b) - (12*cos(a + b*x)^7*sin(a + b*x))/(5*b) - (32*cos(a + b*x)^7*sin(a + b*x)^3)/(5*b)]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^5, x, 4, -((16*cos(a + b*x)^6)/(3*b)) + (4*cos(a + b*x)^8)/b]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^4, x, 5, x + (cos(a + b*x)*sin(a + b*x))/b + (2*cos(a + b*x)^3*sin(a + b*x))/(3*b) - (8*cos(a + b*x)^5*sin(a + b*x))/(3*b)]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^3, x, 3, -((2*cos(a + b*x)^4)/b)]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^2, x, 3, 2*x + (2*cos(a + b*x)*sin(a + b*x))/b]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^1, x, 2, (2*log(sin(a + b*x)))/b]
    @test_int [csc(a + b*x)^2*csc(2*a + 2*b*x)^1, x, 4, -(cot(a + b*x)^2/(4*b)) + log(tan(a + b*x))/(2*b)]
    @test_int [csc(a + b*x)^2*csc(2*a + 2*b*x)^2, x, 4, -(cot(a + b*x)/(2*b)) - cot(a + b*x)^3/(12*b) + tan(a + b*x)/(4*b)]
    @test_int [csc(a + b*x)^2*csc(2*a + 2*b*x)^3, x, 5, -((3*cot(a + b*x)^2)/(16*b)) - cot(a + b*x)^4/(32*b) + (3*log(tan(a + b*x)))/(8*b) + tan(a + b*x)^2/(16*b)]
    @test_int [csc(a + b*x)^2*csc(2*a + 2*b*x)^4, x, 4, -((3*cot(a + b*x))/(8*b)) - cot(a + b*x)^3/(12*b) - cot(a + b*x)^5/(80*b) + tan(a + b*x)/(4*b) + tan(a + b*x)^3/(48*b)]
    @test_int [csc(a + b*x)^2*csc(2*a + 2*b*x)^5, x, 5, -((5*cot(a + b*x)^2)/(32*b)) - (5*cot(a + b*x)^4)/(128*b) - cot(a + b*x)^6/(192*b) + (5*log(tan(a + b*x)))/(16*b) + (5*tan(a + b*x)^2)/(64*b) + tan(a + b*x)^4/(128*b)]
    @test_int [csc(a + b*x)^2*csc(2*a + 2*b*x)^6, x, 4, -((5*cot(a + b*x))/(16*b)) - (5*cot(a + b*x)^3)/(64*b) - (3*cot(a + b*x)^5)/(160*b) - cot(a + b*x)^7/(448*b) + (15*tan(a + b*x))/(64*b) + tan(a + b*x)^3/(32*b) + tan(a + b*x)^5/(320*b)]


    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^10, x, 4, -((1024*cos(a + b*x)^11)/(11*b)) + (3072*cos(a + b*x)^13)/(13*b) - (1024*cos(a + b*x)^15)/(5*b) + (1024*cos(a + b*x)^17)/(17*b)]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^9, x, 4, (512*sin(a + b*x)^7)/(7*b) - (2048*sin(a + b*x)^9)/(9*b) + (3072*sin(a + b*x)^11)/(11*b) - (2048*sin(a + b*x)^13)/(13*b) + (512*sin(a + b*x)^15)/(15*b)]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^8, x, 4, -((256*cos(a + b*x)^9)/(9*b)) + (512*cos(a + b*x)^11)/(11*b) - (256*cos(a + b*x)^13)/(13*b)]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^7, x, 4, (128*sin(a + b*x)^5)/(5*b) - (384*sin(a + b*x)^7)/(7*b) + (128*sin(a + b*x)^9)/(3*b) - (128*sin(a + b*x)^11)/(11*b)]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^6, x, 4, -((64*cos(a + b*x)^7)/(7*b)) + (64*cos(a + b*x)^9)/(9*b)]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^5, x, 4, (32*sin(a + b*x)^3)/(3*b) - (64*sin(a + b*x)^5)/(5*b) + (32*sin(a + b*x)^7)/(7*b)]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^4, x, 3, -((16*cos(a + b*x)^5)/(5*b))]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^3, x, 3, (8*sin(a + b*x))/b - (8*sin(a + b*x)^3)/(3*b)]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^2, x, 4, -((4*atanh(cos(a + b*x)))/b) + (4*cos(a + b*x))/b]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^1, x, 3, -((2*csc(a + b*x))/b)]
    @test_int [csc(a + b*x)^3*csc(2*a + 2*b*x)^1, x, 5, atanh(sin(a + b*x))/(2*b) - csc(a + b*x)/(2*b) - csc(a + b*x)^3/(6*b)]
    @test_int [csc(a + b*x)^3*csc(2*a + 2*b*x)^2, x, 6, -((15*atanh(cos(a + b*x)))/(32*b)) + (15*sec(a + b*x))/(32*b) - (5*csc(a + b*x)^2*sec(a + b*x))/(32*b) - (csc(a + b*x)^4*sec(a + b*x))/(16*b)]
    @test_int [csc(a + b*x)^3*csc(2*a + 2*b*x)^3, x, 6, (7*atanh(sin(a + b*x)))/(16*b) - (7*csc(a + b*x))/(16*b) - (7*csc(a + b*x)^3)/(48*b) - (7*csc(a + b*x)^5)/(80*b) + (csc(a + b*x)^5*sec(a + b*x)^2)/(16*b)]
    @test_int [csc(a + b*x)^3*csc(2*a + 2*b*x)^4, x, 8, -((105*atanh(cos(a + b*x)))/(256*b)) + (105*sec(a + b*x))/(256*b) + (35*sec(a + b*x)^3)/(256*b) - (21*csc(a + b*x)^2*sec(a + b*x)^3)/(256*b) - (3*csc(a + b*x)^4*sec(a + b*x)^3)/(128*b) - (csc(a + b*x)^6*sec(a + b*x)^3)/(96*b)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(a+b*x)^m*sin(2*a+2*b*x)^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^(5/2), x, 4, -((5*asin(cos(a + b*x) - sin(a + b*x)))/(32*b)) + (5*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(32*b) - (5*cos(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(16*b) + (5*sin(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(24*b) - (cos(a + b*x)*sin(2*a + 2*b*x)^(5/2))/(6*b)]
    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^(3/2), x, 3, -((3*asin(cos(a + b*x) - sin(a + b*x)))/(16*b)) - (3*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(16*b) + (3*sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(8*b) - (cos(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(4*b)]
    @test_int [sin(a + b*x)*sin(2*a + 2*b*x)^(1/2), x, 2, -(asin(cos(a + b*x) - sin(a + b*x))/(4*b)) + log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x)))/(4*b) - (cos(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(2*b)]
    @test_int [sin(a + b*x)/sin(2*a + 2*b*x)^(1/2), x, 1, -(asin(cos(a + b*x) - sin(a + b*x))/(2*b)) - log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x)))/(2*b)]
    @test_int [sin(a + b*x)/sin(2*a + 2*b*x)^(3/2), x, 1, sin(a + b*x)/(b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [sin(a + b*x)/sin(2*a + 2*b*x)^(5/2), x, 2, sin(a + b*x)/(3*b*sin(2*a + 2*b*x)^(3/2)) - (2*cos(a + b*x))/(3*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [sin(a + b*x)/sin(2*a + 2*b*x)^(7/2), x, 3, sin(a + b*x)/(5*b*sin(2*a + 2*b*x)^(5/2)) - (4*cos(a + b*x))/(15*b*sin(2*a + 2*b*x)^(3/2)) + (8*sin(a + b*x))/(15*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [sin(a + b*x)/sin(2*a + 2*b*x)^(9/2), x, 4, sin(a + b*x)/(7*b*sin(2*a + 2*b*x)^(7/2)) - (6*cos(a + b*x))/(35*b*sin(2*a + 2*b*x)^(5/2)) + (8*sin(a + b*x))/(35*b*sin(2*a + 2*b*x)^(3/2)) - (16*cos(a + b*x))/(35*b*sqrt(sin(2*a + 2*b*x)))]


    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^(7/2), x, 4, (5*EllipticF(a - pi/4 + b*x, 2))/(42*b) - (5*cos(2*a + 2*b*x)*sqrt(sin(2*a + 2*b*x)))/(42*b) - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^(5/2))/(14*b) - sin(2*a + 2*b*x)^(9/2)/(18*b)]
    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^(5/2), x, 3, (3*EllipticE(a - pi/4 + b*x, 2))/(10*b) - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^(3/2))/(10*b) - sin(2*a + 2*b*x)^(7/2)/(14*b)]
    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^(3/2), x, 3, EllipticF(a - pi/4 + b*x, 2)/(6*b) - (cos(2*a + 2*b*x)*sqrt(sin(2*a + 2*b*x)))/(6*b) - sin(2*a + 2*b*x)^(5/2)/(10*b)]
    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^(1/2), x, 2, EllipticE(a - pi/4 + b*x, 2)/(2*b) - sin(2*a + 2*b*x)^(3/2)/(6*b)]
    @test_int [sin(a + b*x)^2/sin(2*a + 2*b*x)^(1/2), x, 2, EllipticF(a - pi/4 + b*x, 2)/(2*b) - sqrt(sin(2*a + 2*b*x))/(2*b)]
    @test_int [sin(a + b*x)^2/sin(2*a + 2*b*x)^(3/2), x, 2, -(EllipticE(a - pi/4 + b*x, 2)/(2*b)) + sin(a + b*x)^2/(b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [sin(a + b*x)^2/sin(2*a + 2*b*x)^(5/2), x, 2, EllipticF(a - pi/4 + b*x, 2)/(6*b) + sin(a + b*x)^2/(3*b*sin(2*a + 2*b*x)^(3/2))]
    @test_int [sin(a + b*x)^2/sin(2*a + 2*b*x)^(7/2), x, 3, -((3*EllipticE(a - pi/4 + b*x, 2))/(10*b)) + sin(a + b*x)^2/(5*b*sin(2*a + 2*b*x)^(5/2)) - (3*cos(2*a + 2*b*x))/(10*b*sqrt(sin(2*a + 2*b*x)))]


    @test_int [sin(a + b*x)^3*sin(2*a + 2*b*x)^(3/2), x, 4, -((7*asin(cos(a + b*x) - sin(a + b*x)))/(64*b)) - (7*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(64*b) + (7*sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(32*b) - (7*cos(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(48*b) - (sin(a + b*x)*sin(2*a + 2*b*x)^(5/2))/(12*b)]
    @test_int [sin(a + b*x)^3*sin(2*a + 2*b*x)^(1/2), x, 3, -((5*asin(cos(a + b*x) - sin(a + b*x)))/(32*b)) + (5*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(32*b) - (5*cos(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(16*b) - (sin(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(8*b)]
    @test_int [sin(a + b*x)^3/sin(2*a + 2*b*x)^(1/2), x, 2, -((3*asin(cos(a + b*x) - sin(a + b*x)))/(8*b)) - (3*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(8*b) - (sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(4*b)]
    @test_int [sin(a + b*x)^3/sin(2*a + 2*b*x)^(3/2), x, 3, asin(cos(a + b*x) - sin(a + b*x))/(4*b) - log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x)))/(4*b) + sin(a + b*x)/(b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [sin(a + b*x)^3/sin(2*a + 2*b*x)^(5/2), x, 1, sin(a + b*x)^3/(3*b*sin(2*a + 2*b*x)^(3/2))]
    @test_int [sin(a + b*x)^3/sin(2*a + 2*b*x)^(7/2), x, 2, sin(a + b*x)^3/(5*b*sin(2*a + 2*b*x)^(5/2)) + sin(a + b*x)/(5*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [sin(a + b*x)^3/sin(2*a + 2*b*x)^(9/2), x, 3, sin(a + b*x)^3/(7*b*sin(2*a + 2*b*x)^(7/2)) + (2*sin(a + b*x))/(21*b*sin(2*a + 2*b*x)^(3/2)) - (4*cos(a + b*x))/(21*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [sin(a + b*x)^3/sin(2*a + 2*b*x)^(11/2), x, 4, sin(a + b*x)^3/(9*b*sin(2*a + 2*b*x)^(9/2)) + sin(a + b*x)/(15*b*sin(2*a + 2*b*x)^(5/2)) - (4*cos(a + b*x))/(45*b*sin(2*a + 2*b*x)^(3/2)) + (8*sin(a + b*x))/(45*b*sqrt(sin(2*a + 2*b*x)))]


    #= ::Subsubsection::Closed:: =#
    #=m<0=#


    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^(7/2), x, 5, -((5*asin(cos(a + b*x) - sin(a + b*x)))/(16*b)) - (5*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(16*b) + (5*sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(8*b) - (5*cos(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(12*b) + (sin(a + b*x)*sin(2*a + 2*b*x)^(5/2))/(3*b)]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^(5/2), x, 4, -((3*asin(cos(a + b*x) - sin(a + b*x)))/(8*b)) + (3*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(8*b) - (3*cos(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(4*b) + (sin(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(2*b)]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^(3/2), x, 3, -(asin(cos(a + b*x) - sin(a + b*x))/(2*b)) - log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x)))/(2*b) + (sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/b]
    @test_int [csc(a + b*x)*sin(2*a + 2*b*x)^(1/2), x, 2, -(asin(cos(a + b*x) - sin(a + b*x))/b) + log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x)))/b]
    @test_int [csc(a + b*x)/sin(2*a + 2*b*x)^(1/2), x, 1, -((csc(a + b*x)*sqrt(sin(2*a + 2*b*x)))/b)]
    @test_int [csc(a + b*x)/sin(2*a + 2*b*x)^(3/2), x, 3, -((2*cos(a + b*x))/(3*b*sin(2*a + 2*b*x)^(3/2))) + (4*sin(a + b*x))/(3*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [csc(a + b*x)/sin(2*a + 2*b*x)^(5/2), x, 4, -((2*cos(a + b*x))/(5*b*sin(2*a + 2*b*x)^(5/2))) + (8*sin(a + b*x))/(15*b*sin(2*a + 2*b*x)^(3/2)) - (16*cos(a + b*x))/(15*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [csc(a + b*x)/sin(2*a + 2*b*x)^(7/2), x, 5, -((2*cos(a + b*x))/(7*b*sin(2*a + 2*b*x)^(7/2))) + (12*sin(a + b*x))/(35*b*sin(2*a + 2*b*x)^(5/2)) - (16*cos(a + b*x))/(35*b*sin(2*a + 2*b*x)^(3/2)) + (32*sin(a + b*x))/(35*b*sqrt(sin(2*a + 2*b*x)))]


    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^(9/2), x, 4, (6*EllipticE(a - pi/4 + b*x, 2))/(5*b) - (2*cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^(3/2))/(5*b) - (2*cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^(7/2))/(7*b) + (csc(a + b*x)^2*sin(2*a + 2*b*x)^(11/2))/(7*b)]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^(7/2), x, 4, (2*EllipticF(a - pi/4 + b*x, 2))/(3*b) - (2*cos(2*a + 2*b*x)*sqrt(sin(2*a + 2*b*x)))/(3*b) - (2*cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^(5/2))/(5*b) + (csc(a + b*x)^2*sin(2*a + 2*b*x)^(9/2))/(5*b)]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^(5/2), x, 3, (2*EllipticE(a - pi/4 + b*x, 2))/b - (2*cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^(3/2))/(3*b) + (csc(a + b*x)^2*sin(2*a + 2*b*x)^(7/2))/(3*b)]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^(3/2), x, 3, (2*EllipticF(a - pi/4 + b*x, 2))/b - (2*cos(2*a + 2*b*x)*sqrt(sin(2*a + 2*b*x)))/b + (csc(a + b*x)^2*sin(2*a + 2*b*x)^(5/2))/b]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^(1/2), x, 2, -((2*EllipticE(a - pi/4 + b*x, 2))/b) - (csc(a + b*x)^2*sin(2*a + 2*b*x)^(3/2))/b]
    @test_int [csc(a + b*x)^2/sin(2*a + 2*b*x)^(1/2), x, 2, (2*EllipticF(a - pi/4 + b*x, 2))/(3*b) - (csc(a + b*x)^2*sqrt(sin(2*a + 2*b*x)))/(3*b)]
    @test_int [csc(a + b*x)^2/sin(2*a + 2*b*x)^(3/2), x, 3, -((6*EllipticE(a - pi/4 + b*x, 2))/(5*b)) - (6*cos(2*a + 2*b*x))/(5*b*sqrt(sin(2*a + 2*b*x))) - csc(a + b*x)^2/(5*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [csc(a + b*x)^2/sin(2*a + 2*b*x)^(5/2), x, 3, (10*EllipticF(a - pi/4 + b*x, 2))/(21*b) - (10*cos(2*a + 2*b*x))/(21*b*sin(2*a + 2*b*x)^(3/2)) - csc(a + b*x)^2/(7*b*sin(2*a + 2*b*x)^(3/2))]
    @test_int [csc(a + b*x)^2/sin(2*a + 2*b*x)^(7/2), x, 4, -((14*EllipticE(a - pi/4 + b*x, 2))/(15*b)) - (14*cos(2*a + 2*b*x))/(45*b*sin(2*a + 2*b*x)^(5/2)) - csc(a + b*x)^2/(9*b*sin(2*a + 2*b*x)^(5/2)) - (14*cos(2*a + 2*b*x))/(15*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [csc(a + b*x)^2/sin(2*a + 2*b*x)^(9/2), x, 4, (30*EllipticF(a - pi/4 + b*x, 2))/(77*b) - (18*cos(2*a + 2*b*x))/(77*b*sin(2*a + 2*b*x)^(7/2)) - csc(a + b*x)^2/(11*b*sin(2*a + 2*b*x)^(7/2)) - (30*cos(2*a + 2*b*x))/(77*b*sin(2*a + 2*b*x)^(3/2))]


    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^(9/2), x, 7, -((7*asin(cos(a + b*x) - sin(a + b*x)))/(8*b)) + (7*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(8*b) - (7*cos(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(4*b) + (7*sin(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(6*b) - (14*cos(a + b*x)*sin(2*a + 2*b*x)^(5/2))/(15*b) + (4*sin(a + b*x)*sin(2*a + 2*b*x)^(7/2))/(5*b) + (csc(a + b*x)^3*sin(2*a + 2*b*x)^(11/2))/(5*b)]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^(7/2), x, 6, -((5*asin(cos(a + b*x) - sin(a + b*x)))/(4*b)) - (5*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(4*b) + (5*sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(2*b) - (5*cos(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(3*b) + (4*sin(a + b*x)*sin(2*a + 2*b*x)^(5/2))/(3*b) + (csc(a + b*x)^3*sin(2*a + 2*b*x)^(9/2))/(3*b)]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^(5/2), x, 5, -((3*asin(cos(a + b*x) - sin(a + b*x)))/b) + (3*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/b - (6*cos(a + b*x)*sqrt(sin(2*a + 2*b*x)))/b + (4*sin(a + b*x)*sin(2*a + 2*b*x)^(3/2))/b + (csc(a + b*x)^3*sin(2*a + 2*b*x)^(7/2))/b]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^(3/2), x, 4, (2*asin(cos(a + b*x) - sin(a + b*x)))/b + (2*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/b - (4*sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/b - (csc(a + b*x)^3*sin(2*a + 2*b*x)^(5/2))/b]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^(1/2), x, 1, -((csc(a + b*x)^3*sin(2*a + 2*b*x)^(3/2))/(3*b))]
    @test_int [csc(a + b*x)^3/sin(2*a + 2*b*x)^(1/2), x, 2, -((4*csc(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(5*b)) - (csc(a + b*x)^3*sqrt(sin(2*a + 2*b*x)))/(5*b)]
    @test_int [csc(a + b*x)^3/sin(2*a + 2*b*x)^(3/2), x, 4, -((16*cos(a + b*x))/(21*b*sin(2*a + 2*b*x)^(3/2))) - csc(a + b*x)^3/(7*b*sqrt(sin(2*a + 2*b*x))) + (32*sin(a + b*x))/(21*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [csc(a + b*x)^3/sin(2*a + 2*b*x)^(5/2), x, 5, -((8*cos(a + b*x))/(15*b*sin(2*a + 2*b*x)^(5/2))) - csc(a + b*x)^3/(9*b*sin(2*a + 2*b*x)^(3/2)) + (32*sin(a + b*x))/(45*b*sin(2*a + 2*b*x)^(3/2)) - (64*cos(a + b*x))/(45*b*sqrt(sin(2*a + 2*b*x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(a+b*x)^m*sin(2*a+2*b*x)^n*with*m*symbolic=#


    @test_int [sin(a + b*x)^3*sin(2*a + 2*b*x)^m, x, 2, ((cos(a + b*x)^2)^((1 - m)/2)*Hypergeometric2F1((1 - m)/2, (4 + m)/2, (6 + m)/2, sin(a + b*x)^2)*sin(a + b*x)^3*sin(2*a + 2*b*x)^m*tan(a + b*x))/(b*(4 + m))]
    @test_int [sin(a + b*x)^2*sin(2*a + 2*b*x)^m, x, 2, ((cos(a + b*x)^2)^((1 - m)/2)*Hypergeometric2F1((1 - m)/2, (3 + m)/2, (5 + m)/2, sin(a + b*x)^2)*sin(a + b*x)^2*sin(2*a + 2*b*x)^m*tan(a + b*x))/(b*(3 + m))]
    @test_int [sin(a + b*x)^1*sin(2*a + 2*b*x)^m, x, 2, ((cos(a + b*x)^2)^((1 - m)/2)*Hypergeometric2F1((1 - m)/2, (2 + m)/2, (4 + m)/2, sin(a + b*x)^2)*sin(a + b*x)*sin(2*a + 2*b*x)^m*tan(a + b*x))/(b*(2 + m))]
    @test_int [csc(a + b*x)^1*sin(2*a + 2*b*x)^m, x, 2, ((cos(a + b*x)^2)^((1 - m)/2)*Hypergeometric2F1((1 - m)/2, m/2, (2 + m)/2, sin(a + b*x)^2)*sec(a + b*x)*sin(2*a + 2*b*x)^m)/(b*m)]
    @test_int [csc(a + b*x)^2*sin(2*a + 2*b*x)^m, x, 2, -(((cos(a + b*x)^2)^((1 - m)/2)*csc(a + b*x)*Hypergeometric2F1((1 - m)/2, (1/2)*(-1 + m), (1 + m)/2, sin(a + b*x)^2)*sec(a + b*x)*sin(2*a + 2*b*x)^m)/(b*(1 - m)))]
    @test_int [csc(a + b*x)^3*sin(2*a + 2*b*x)^m, x, 2, -(((cos(a + b*x)^2)^((1 - m)/2)*csc(a + b*x)^2*Hypergeometric2F1((1 - m)/2, (1/2)*(-2 + m), m/2, sin(a + b*x)^2)*sec(a + b*x)*sin(2*a + 2*b*x)^m)/(b*(2 - m)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*sin(2*a+2*b*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*sin(2*a+2*b*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^7, x, 4, -((128*cos(a + b*x)^9)/(9*b)) + (384*cos(a + b*x)^11)/(11*b) - (384*cos(a + b*x)^13)/(13*b) + (128*cos(a + b*x)^15)/(15*b)]
    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^6, x, 4, (64*sin(a + b*x)^7)/(7*b) - (64*sin(a + b*x)^9)/(3*b) + (192*sin(a + b*x)^11)/(11*b) - (64*sin(a + b*x)^13)/(13*b)]
    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^5, x, 4, -((32*cos(a + b*x)^7)/(7*b)) + (64*cos(a + b*x)^9)/(9*b) - (32*cos(a + b*x)^11)/(11*b)]
    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^4, x, 4, (16*sin(a + b*x)^5)/(5*b) - (32*sin(a + b*x)^7)/(7*b) + (16*sin(a + b*x)^9)/(9*b)]
    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^3, x, 4, -((8*cos(a + b*x)^5)/(5*b)) + (8*cos(a + b*x)^7)/(7*b)]
    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^2, x, 4, (4*sin(a + b*x)^3)/(3*b) - (4*sin(a + b*x)^5)/(5*b)]
    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^1, x, 1, -(cos(a + b*x)/(2*b)) - cos(3*a + 3*b*x)/(6*b)]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^1, x, 2, -(atanh(cos(a + b*x))/(2*b))]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^2, x, 4, atanh(sin(a + b*x))/(4*b) - csc(a + b*x)/(4*b)]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^3, x, 5, -((3*atanh(cos(a + b*x)))/(16*b)) + (3*sec(a + b*x))/(16*b) - (csc(a + b*x)^2*sec(a + b*x))/(16*b)]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^4, x, 6, (5*atanh(sin(a + b*x)))/(32*b) - (5*csc(a + b*x))/(32*b) - (5*csc(a + b*x)^3)/(96*b) + (csc(a + b*x)^3*sec(a + b*x)^2)/(32*b)]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^5, x, 7, -((35*atanh(cos(a + b*x)))/(256*b)) + (35*sec(a + b*x))/(256*b) + (35*sec(a + b*x)^3)/(768*b) - (7*csc(a + b*x)^2*sec(a + b*x)^3)/(256*b) - (csc(a + b*x)^4*sec(a + b*x)^3)/(128*b)]


    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^5, x, 5, -((4*cos(a + b*x)^8)/b) + (32*cos(a + b*x)^10)/(5*b) - (8*cos(a + b*x)^12)/(3*b)]
    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^4, x, 6, (3*x)/16 - (3*cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(32*b) - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^3)/(16*b) + sin(2*a + 2*b*x)^5/(20*b)]
    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^3, x, 4, -((4*cos(a + b*x)^6)/(3*b)) + cos(a + b*x)^8/b]
    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^2, x, 5, x/4 - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x))/(8*b) + sin(2*a + 2*b*x)^3/(12*b)]
    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^1, x, 3, -(cos(a + b*x)^4/(2*b))]
    @test_int [cos(a + b*x)^2/sin(2*a + 2*b*x)^1, x, 2, log(sin(a + b*x))/(2*b)]
    @test_int [cos(a + b*x)^2/sin(2*a + 2*b*x)^2, x, 3, -(cot(a + b*x)/(4*b))]
    @test_int [cos(a + b*x)^2/sin(2*a + 2*b*x)^3, x, 4, -(cot(a + b*x)^2/(16*b)) + log(tan(a + b*x))/(8*b)]
    @test_int [cos(a + b*x)^2/sin(2*a + 2*b*x)^4, x, 4, -(cot(a + b*x)/(8*b)) - cot(a + b*x)^3/(48*b) + tan(a + b*x)/(16*b)]
    @test_int [cos(a + b*x)^2/sin(2*a + 2*b*x)^5, x, 5, -((3*cot(a + b*x)^2)/(64*b)) - cot(a + b*x)^4/(128*b) + (3*log(tan(a + b*x)))/(32*b) + tan(a + b*x)^2/(64*b)]


    @test_int [cos(a + b*x)^3*sin(2*a + 2*b*x)^5, x, 4, -((32*cos(a + b*x)^9)/(9*b)) + (64*cos(a + b*x)^11)/(11*b) - (32*cos(a + b*x)^13)/(13*b)]
    @test_int [cos(a + b*x)^3*sin(2*a + 2*b*x)^4, x, 4, (16*sin(a + b*x)^5)/(5*b) - (48*sin(a + b*x)^7)/(7*b) + (16*sin(a + b*x)^9)/(3*b) - (16*sin(a + b*x)^11)/(11*b)]
    @test_int [cos(a + b*x)^3*sin(2*a + 2*b*x)^3, x, 4, -((8*cos(a + b*x)^7)/(7*b)) + (8*cos(a + b*x)^9)/(9*b)]
    @test_int [cos(a + b*x)^3*sin(2*a + 2*b*x)^2, x, 4, (4*sin(a + b*x)^3)/(3*b) - (8*sin(a + b*x)^5)/(5*b) + (4*sin(a + b*x)^7)/(7*b)]
    @test_int [cos(a + b*x)^3*sin(2*a + 2*b*x)^1, x, 3, -((2*cos(a + b*x)^5)/(5*b))]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^1, x, 4, -(atanh(cos(a + b*x))/(2*b)) + cos(a + b*x)/(2*b)]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^2, x, 3, -(csc(a + b*x)/(4*b))]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^3, x, 3, -(atanh(cos(a + b*x))/(16*b)) - (cot(a + b*x)*csc(a + b*x))/(16*b)]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^4, x, 5, atanh(sin(a + b*x))/(16*b) - csc(a + b*x)/(16*b) - csc(a + b*x)^3/(48*b)]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^5, x, 6, -((15*atanh(cos(a + b*x)))/(256*b)) + (15*sec(a + b*x))/(256*b) - (5*csc(a + b*x)^2*sec(a + b*x))/(256*b) - (csc(a + b*x)^4*sec(a + b*x))/(128*b)]


    #= ::Subsubsection:: =#
    #=m<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*sin(2*a+2*b*x)^(n/2)=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^(5/2), x, 4, -((5*asin(cos(a + b*x) - sin(a + b*x)))/(32*b)) - (5*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(32*b) + (5*sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(16*b) - (5*cos(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(24*b) + (sin(a + b*x)*sin(2*a + 2*b*x)^(5/2))/(6*b)]
    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^(3/2), x, 3, -((3*asin(cos(a + b*x) - sin(a + b*x)))/(16*b)) + (3*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(16*b) - (3*cos(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(8*b) + (sin(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(4*b)]
    @test_int [cos(a + b*x)*sin(2*a + 2*b*x)^(1/2), x, 2, -(asin(cos(a + b*x) - sin(a + b*x))/(4*b)) - log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x)))/(4*b) + (sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(2*b)]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^(1/2), x, 1, -(asin(cos(a + b*x) - sin(a + b*x))/(2*b)) + log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x)))/(2*b)]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^(3/2), x, 1, -(cos(a + b*x)/(b*sqrt(sin(2*a + 2*b*x))))]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^(5/2), x, 2, -(cos(a + b*x)/(3*b*sin(2*a + 2*b*x)^(3/2))) + (2*sin(a + b*x))/(3*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^(7/2), x, 3, -(cos(a + b*x)/(5*b*sin(2*a + 2*b*x)^(5/2))) + (4*sin(a + b*x))/(15*b*sin(2*a + 2*b*x)^(3/2)) - (8*cos(a + b*x))/(15*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [cos(a + b*x)/sin(2*a + 2*b*x)^(9/2), x, 4, -(cos(a + b*x)/(7*b*sin(2*a + 2*b*x)^(7/2))) + (6*sin(a + b*x))/(35*b*sin(2*a + 2*b*x)^(5/2)) - (8*cos(a + b*x))/(35*b*sin(2*a + 2*b*x)^(3/2)) + (16*sin(a + b*x))/(35*b*sqrt(sin(2*a + 2*b*x)))]


    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^(7/2), x, 4, (5*EllipticF(a - pi/4 + b*x, 2))/(42*b) - (5*cos(2*a + 2*b*x)*sqrt(sin(2*a + 2*b*x)))/(42*b) - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^(5/2))/(14*b) + sin(2*a + 2*b*x)^(9/2)/(18*b)]
    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^(5/2), x, 3, (3*EllipticE(a - pi/4 + b*x, 2))/(10*b) - (cos(2*a + 2*b*x)*sin(2*a + 2*b*x)^(3/2))/(10*b) + sin(2*a + 2*b*x)^(7/2)/(14*b)]
    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^(3/2), x, 3, EllipticF(a - pi/4 + b*x, 2)/(6*b) - (cos(2*a + 2*b*x)*sqrt(sin(2*a + 2*b*x)))/(6*b) + sin(2*a + 2*b*x)^(5/2)/(10*b)]
    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^(1/2), x, 2, EllipticE(a - pi/4 + b*x, 2)/(2*b) + sin(2*a + 2*b*x)^(3/2)/(6*b)]
    @test_int [cos(a + b*x)^2/sin(2*a + 2*b*x)^(1/2), x, 2, EllipticF(a - pi/4 + b*x, 2)/(2*b) + sqrt(sin(2*a + 2*b*x))/(2*b)]
    @test_int [cos(a + b*x)^2/sin(2*a + 2*b*x)^(3/2), x, 2, -(EllipticE(a - pi/4 + b*x, 2)/(2*b)) - cos(a + b*x)^2/(b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [cos(a + b*x)^2/sin(2*a + 2*b*x)^(5/2), x, 2, EllipticF(a - pi/4 + b*x, 2)/(6*b) - cos(a + b*x)^2/(3*b*sin(2*a + 2*b*x)^(3/2))]
    @test_int [cos(a + b*x)^2/sin(2*a + 2*b*x)^(7/2), x, 3, -((3*EllipticE(a - pi/4 + b*x, 2))/(10*b)) - cos(a + b*x)^2/(5*b*sin(2*a + 2*b*x)^(5/2)) - (3*cos(2*a + 2*b*x))/(10*b*sqrt(sin(2*a + 2*b*x)))]


    @test_int [cos(a + b*x)^3*sin(2*a + 2*b*x)^(3/2), x, 4, -((7*asin(cos(a + b*x) - sin(a + b*x)))/(64*b)) + (7*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(64*b) - (7*cos(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(32*b) + (7*sin(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(48*b) + (cos(a + b*x)*sin(2*a + 2*b*x)^(5/2))/(12*b)]
    @test_int [cos(a + b*x)^3*sin(2*a + 2*b*x)^(1/2), x, 3, -((5*asin(cos(a + b*x) - sin(a + b*x)))/(32*b)) - (5*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(32*b) + (5*sin(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(16*b) + (cos(a + b*x)*sin(2*a + 2*b*x)^(3/2))/(8*b)]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^(1/2), x, 2, -((3*asin(cos(a + b*x) - sin(a + b*x)))/(8*b)) + (3*log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x))))/(8*b) + (cos(a + b*x)*sqrt(sin(2*a + 2*b*x)))/(4*b)]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^(3/2), x, 3, asin(cos(a + b*x) - sin(a + b*x))/(4*b) + log(cos(a + b*x) + sin(a + b*x) + sqrt(sin(2*a + 2*b*x)))/(4*b) - cos(a + b*x)/(b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^(5/2), x, 1, -(cos(a + b*x)^3/(3*b*sin(2*a + 2*b*x)^(3/2)))]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^(7/2), x, 2, -(cos(a + b*x)^3/(5*b*sin(2*a + 2*b*x)^(5/2))) - cos(a + b*x)/(5*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^(9/2), x, 3, -(cos(a + b*x)^3/(7*b*sin(2*a + 2*b*x)^(7/2))) - (2*cos(a + b*x))/(21*b*sin(2*a + 2*b*x)^(3/2)) + (4*sin(a + b*x))/(21*b*sqrt(sin(2*a + 2*b*x)))]
    @test_int [cos(a + b*x)^3/sin(2*a + 2*b*x)^(11/2), x, 4, -(cos(a + b*x)^3/(9*b*sin(2*a + 2*b*x)^(9/2))) - cos(a + b*x)/(15*b*sin(2*a + 2*b*x)^(5/2)) + (4*sin(a + b*x))/(45*b*sin(2*a + 2*b*x)^(3/2)) - (8*cos(a + b*x))/(45*b*sqrt(sin(2*a + 2*b*x)))]


    #= 2*cos(x)/sqrt(sin(2*x)) == csc(x)*sqrt(sin(2*x)) =# 
    @test_int [cos(x)/sqrt(sin(2*x)), x, 1, (-(1/2))*asin(cos(x) - sin(x)) + (1/2)*log(cos(x) + sin(x) + sqrt(sin(2*x)))]
    @test_int [csc(x)*sqrt(sin(2*x)), x, 2, -asin(cos(x) - sin(x)) + log(cos(x) + sin(x) + sqrt(sin(2*x)))]


    #= ::Subsubsection:: =#
    #=m<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*sin(2*a+2*b*x)^n*with*m*symbolic=#


    @test_int [cos(a + b*x)^3*sin(2*a + 2*b*x)^m, x, 2, -((1/(b*(4 + m)))*(cos(a + b*x)^3*cot(a + b*x)*Hypergeometric2F1((1 - m)/2, (4 + m)/2, (6 + m)/2, cos(a + b*x)^2)*(sin(a + b*x)^2)^((1 - m)/2)*sin(2*a + 2*b*x)^m))]
    @test_int [cos(a + b*x)^2*sin(2*a + 2*b*x)^m, x, 2, -((1/(b*(3 + m)))*(cos(a + b*x)^2*cot(a + b*x)*Hypergeometric2F1((1 - m)/2, (3 + m)/2, (5 + m)/2, cos(a + b*x)^2)*(sin(a + b*x)^2)^((1 - m)/2)*sin(2*a + 2*b*x)^m))]
    @test_int [cos(a + b*x)^1*sin(2*a + 2*b*x)^m, x, 2, -((1/(b*(2 + m)))*(cos(a + b*x)*cot(a + b*x)*Hypergeometric2F1((1 - m)/2, (2 + m)/2, (4 + m)/2, cos(a + b*x)^2)*(sin(a + b*x)^2)^((1 - m)/2)*sin(2*a + 2*b*x)^m))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*sin(a+b*x)^n*sin(2*a+2*b*x)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*sin(a+b*x)^n*sin(2*a+2*b*x)^p=#


    @test_int [cos(a + b*x)^2*sin(a + b*x)^3*sin(2*a + 2*b*x)^2, x, 4, -((4*cos(a + b*x)^5)/(5*b)) + (8*cos(a + b*x)^7)/(7*b) - (4*cos(a + b*x)^9)/(9*b)]


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*sin(a+b*x)^n*sin(2*a+2*b*x)^(p/2)=#


    #= ::Title:: =#
    #=Integrands*of*the*form*Trig(a+b*x)^m*Trig(c+d*x)^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sin(a+b*x)^m*Trig(c+d*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(a+b*x)^m*sin(c+d*x)^n=#


    @test_int [sin(a + b*x)*sin(c + d*x)^n, x, 10, -((2^(-1 - n)*ℯ^(im*(a - c*n) + im*(b - d*n)*x + im*n*(c + d*x))*(im/ℯ^(im*(c + d*x)) - im*ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, (b - d*n)/(2*d), (1/2)*(2 + b/d - n), ℯ^(2*im*(c + d*x))))/((1 - ℯ^(2*im*c + 2*im*d*x))^n*(b - d*n))) - (2^(-1 - n)*ℯ^((-im)*(a + c*n) - im*(b + d*n)*x + im*n*(c + d*x))*(im/ℯ^(im*(c + d*x)) - im*ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, -((b + d*n)/(2*d)), 1 - (b + d*n)/(2*d), ℯ^(2*im*(c + d*x))))/((1 - ℯ^(2*im*c + 2*im*d*x))^n*(b + d*n))]

    @test_int [sin(a + b*x)*sin(c + d*x)^3, x, 6, -(sin(a - 3*c + (b - 3*d)*x)/(8*(b - 3*d))) + (3*sin(a - c + (b - d)*x))/(8*(b - d)) - (3*sin(a + c + (b + d)*x))/(8*(b + d)) + sin(a + 3*c + (b + 3*d)*x)/(8*(b + 3*d))]
    @test_int [sin(a + b*x)*sin(c + d*x)^2, x, 5, -(cos(a + b*x)/(2*b)) + cos(a - 2*c + (b - 2*d)*x)/(4*(b - 2*d)) + cos(a + 2*c + (b + 2*d)*x)/(4*(b + 2*d))]
    @test_int [sin(a + b*x)*sin(c + d*x)^1, x, 4, sin(a - c + (b - d)*x)/(2*(b - d)) - sin(a + c + (b + d)*x)/(2*(b + d))]
    @test_int [sin(a + b*x)*csc(c + b*x)^1, x, 3, x*cos(a - c) + (log(sin(c + b*x))*sin(a - c))/b]
    @test_int [sin(a + b*x)*csc(c + b*x)^2, x, 4, -((atanh(cos(c + b*x))*cos(a - c))/b) - (csc(c + b*x)*sin(a - c))/b]
    @test_int [sin(a + b*x)*csc(c + b*x)^3, x, 5, -((cos(a - c)*cot(c + b*x))/b) - (csc(c + b*x)^2*sin(a - c))/(2*b)]
    @test_int [sin(a + b*x)*csc(c + b*x)^4, x, 5, -((atanh(cos(c + b*x))*cos(a - c))/(2*b)) - (cos(a - c)*cot(c + b*x)*csc(c + b*x))/(2*b) - (csc(c + b*x)^3*sin(a - c))/(3*b)]
    @test_int [sin(a + b*x)*csc(c + b*x)^5, x, 5, -((cos(a - c)*cot(c + b*x))/b) - (cos(a - c)*cot(c + b*x)^3)/(3*b) - (csc(c + b*x)^4*sin(a - c))/(4*b)]
    @test_int [sin(a + b*x)*csc(c + b*x)^6, x, 6, -((3*atanh(cos(c + b*x))*cos(a - c))/(8*b)) - (3*cos(a - c)*cot(c + b*x)*csc(c + b*x))/(8*b) - (cos(a - c)*cot(c + b*x)*csc(c + b*x)^3)/(4*b) - (csc(c + b*x)^5*sin(a - c))/(5*b)]


    @test_int [sin(a + b*x)^2*sin(c + d*x)^n, x, 15, -((im*2^(-2 - n)*ℯ^((-im)*(2*a + c*n) - im*(2*b + d*n)*x + im*n*(c + d*x))*(im/ℯ^(im*(c + d*x)) - im*ℯ^(im*(c + d*x)))^n*Hypergeometric2F1((1/2)*(-((2*b)/d) - n), -n, (1/2)*(2 - (2*b)/d - n), ℯ^(2*im*(c + d*x))))/((1 - ℯ^(2*im*c + 2*im*d*x))^n*(2*b + d*n))) + (im*2^(-2 - n)*ℯ^(im*(2*a - c*n) + im*(2*b - d*n)*x + im*n*(c + d*x))*(im/ℯ^(im*(c + d*x)) - im*ℯ^(im*(c + d*x)))^n*Hypergeometric2F1((1/2)*((2*b)/d - n), -n, (1/2)*(2 + (2*b)/d - n), ℯ^(2*im*(c + d*x))))/((1 - ℯ^(2*im*c + 2*im*d*x))^n*(2*b - d*n)) + (im*2^(-1 - n)*(im/ℯ^(im*(c + d*x)) - im*ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, -(n/2), 1 - n/2, ℯ^(2*im*(c + d*x))))/((1 - ℯ^(2*im*(c + d*x)))^n*(d*n))]

    @test_int [sin(a + b*x)^2*sin(c + d*x)^1, x, 5, -(cos(2*a - c + (2*b - d)*x)/(4*(2*b - d))) - cos(c + d*x)/(2*d) + cos(2*a + c + (2*b + d)*x)/(4*(2*b + d))]
    @test_int [sin(a + b*x)^2*sin(c + d*x)^2, x, 6, x/4 - sin(2*a + 2*b*x)/(8*b) + sin(2*(a - c) + 2*(b - d)*x)/(16*(b - d)) - sin(2*c + 2*d*x)/(8*d) + sin(2*(a + c) + 2*(b + d)*x)/(16*(b + d))]
    @test_int [sin(a + b*x)^2*sin(c + d*x)^3, x, 8, cos(2*a - 3*c + (2*b - 3*d)*x)/(16*(2*b - 3*d)) - (3*cos(2*a - c + (2*b - d)*x))/(16*(2*b - d)) - (3*cos(c + d*x))/(8*d) + cos(3*c + 3*d*x)/(24*d) + (3*cos(2*a + c + (2*b + d)*x))/(16*(2*b + d)) - cos(2*a + 3*c + (2*b + 3*d)*x)/(16*(2*b + 3*d))]


    @test_int [sin(a + b*x)^3*sin(c + d*x)^n, x, 18, (2^(-3 - n)*ℯ^(im*(3*a - c*n) + im*(3*b - d*n)*x + im*n*(c + d*x))*(im/ℯ^(im*(c + d*x)) - im*ℯ^(im*(c + d*x)))^n*Hypergeometric2F1((1/2)*((3*b)/d - n), -n, (1/2)*(2 + (3*b)/d - n), ℯ^(2*im*(c + d*x))))/((1 - ℯ^(2*im*c + 2*im*d*x))^n*(3*b - d*n)) - (3*2^(-3 - n)*ℯ^(im*(a - c*n) + im*(b - d*n)*x + im*n*(c + d*x))*(im/ℯ^(im*(c + d*x)) - im*ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, (b - d*n)/(2*d), (1/2)*(2 + b/d - n), ℯ^(2*im*(c + d*x))))/((1 - ℯ^(2*im*c + 2*im*d*x))^n*(b - d*n)) - (3*2^(-3 - n)*ℯ^((-im)*(a + c*n) - im*(b + d*n)*x + im*n*(c + d*x))*(im/ℯ^(im*(c + d*x)) - im*ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, -((b + d*n)/(2*d)), 1 - (b + d*n)/(2*d), ℯ^(2*im*(c + d*x))))/((1 - ℯ^(2*im*c + 2*im*d*x))^n*(b + d*n)) + (2^(-3 - n)*ℯ^((-im)*(3*a + c*n) - im*(3*b + d*n)*x + im*n*(c + d*x))*(im/ℯ^(im*(c + d*x)) - im*ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, -((3*b + d*n)/(2*d)), (1/2)*(2 - (3*b)/d - n), ℯ^(2*im*(c + d*x))))/((1 - ℯ^(2*im*c + 2*im*d*x))^n*(3*b + d*n))]

    @test_int [sin(a + b*x)^3*sin(c + d*x)^1, x, 6, (3*sin(a - c + (b - d)*x))/(8*(b - d)) - sin(3*a - c + (3*b - d)*x)/(8*(3*b - d)) - (3*sin(a + c + (b + d)*x))/(8*(b + d)) + sin(3*a + c + (3*b + d)*x)/(8*(3*b + d))]
    @test_int [sin(a + b*x)^3*sin(c + d*x)^2, x, 8, -((3*cos(a + b*x))/(8*b)) + cos(3*a + 3*b*x)/(24*b) + (3*cos(a - 2*c + (b - 2*d)*x))/(16*(b - 2*d)) - cos(3*a - 2*c + (3*b - 2*d)*x)/(16*(3*b - 2*d)) + (3*cos(a + 2*c + (b + 2*d)*x))/(16*(b + 2*d)) - cos(3*a + 2*c + (3*b + 2*d)*x)/(16*(3*b + 2*d))]
    @test_int [sin(a + b*x)^3*sin(c + d*x)^3, x, 10, -((3*sin(a - 3*c + (b - 3*d)*x))/(32*(b - 3*d))) + (9*sin(a - c + (b - d)*x))/(32*(b - d)) + sin(3*(a - c) + 3*(b - d)*x)/(96*(b - d)) - (3*sin(3*a - c + (3*b - d)*x))/(32*(3*b - d)) - (9*sin(a + c + (b + d)*x))/(32*(b + d)) - sin(3*(a + c) + 3*(b + d)*x)/(96*(b + d)) + (3*sin(3*a + c + (3*b + d)*x))/(32*(3*b + d)) + (3*sin(a + 3*c + (b + 3*d)*x))/(32*(b + 3*d))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(a+b*x)^m*cos(c+d*x)^n=#


    @test_int [sin(a + b*x)*cos(c + d*x)^n, x, 8, -((2^(-1 - n)*ℯ^(im*(a - c*n) + im*(b - d*n)*x + im*n*(c + d*x))*(ℯ^((-im)*(c + d*x)) + ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, (b - d*n)/(2*d), (1/2)*(2 + b/d - n), -ℯ^(2*im*(c + d*x))))/((1 + ℯ^(2*im*c + 2*im*d*x))^n*(b - d*n))) - (2^(-1 - n)*ℯ^((-im)*(a + c*n) - im*(b + d*n)*x + im*n*(c + d*x))*(ℯ^((-im)*(c + d*x)) + ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, -((b + d*n)/(2*d)), 1 - (b + d*n)/(2*d), -ℯ^(2*im*(c + d*x))))/((1 + ℯ^(2*im*c + 2*im*d*x))^n*(b + d*n))]

    @test_int [sin(a + b*x)*cos(c + d*x)^3, x, 6, -(cos(a - 3*c + (b - 3*d)*x)/(8*(b - 3*d))) - (3*cos(a - c + (b - d)*x))/(8*(b - d)) - (3*cos(a + c + (b + d)*x))/(8*(b + d)) - cos(a + 3*c + (b + 3*d)*x)/(8*(b + 3*d))]
    @test_int [sin(a + b*x)*cos(c + d*x)^2, x, 5, -(cos(a + b*x)/(2*b)) - cos(a - 2*c + (b - 2*d)*x)/(4*(b - 2*d)) - cos(a + 2*c + (b + 2*d)*x)/(4*(b + 2*d))]
    @test_int [sin(a + b*x)*cos(c + d*x)^1, x, 4, -(cos(a - c + (b - d)*x)/(2*(b - d))) - cos(a + c + (b + d)*x)/(2*(b + d))]
    @test_int [sin(a + b*x)*sec(c + b*x)^1, x, 3, -((cos(a - c)*log(cos(c + b*x)))/b) + x*sin(a - c)]
    @test_int [sin(a + b*x)*sec(c + b*x)^2, x, 4, (cos(a - c)*sec(c + b*x))/b + (atanh(sin(c + b*x))*sin(a - c))/b]
    @test_int [sin(a + b*x)*sec(c + b*x)^3, x, 5, (cos(a - c)*sec(c + b*x)^2)/(2*b) + (sin(a - c)*tan(c + b*x))/b]
    @test_int [sin(a + b*x)*sec(c + b*x)^4, x, 5, (cos(a - c)*sec(c + b*x)^3)/(3*b) + (atanh(sin(c + b*x))*sin(a - c))/(2*b) + (sec(c + b*x)*sin(a - c)*tan(c + b*x))/(2*b)]
    @test_int [sin(a + b*x)*sec(c + b*x)^5, x, 5, (cos(a - c)*sec(c + b*x)^4)/(4*b) + (sin(a - c)*tan(c + b*x))/b + (sin(a - c)*tan(c + b*x)^3)/(3*b)]
    @test_int [sin(a + b*x)*sec(c + b*x)^6, x, 6, (cos(a - c)*sec(c + b*x)^5)/(5*b) + (3*atanh(sin(c + b*x))*sin(a - c))/(8*b) + (3*sec(c + b*x)*sin(a - c)*tan(c + b*x))/(8*b) + (sec(c + b*x)^3*sin(a - c)*tan(c + b*x))/(4*b)]


    @test_int [sin(a + b*x)^2*cos(c + d*x)^n, x, 11, -((im*2^(-2 - n)*ℯ^((-im)*(2*a + c*n) - im*(2*b + d*n)*x + im*n*(c + d*x))*(ℯ^((-im)*(c + d*x)) + ℯ^(im*(c + d*x)))^n*Hypergeometric2F1((1/2)*(-((2*b)/d) - n), -n, (1/2)*(2 - (2*b)/d - n), -ℯ^(2*im*(c + d*x))))/((1 + ℯ^(2*im*c + 2*im*d*x))^n*(2*b + d*n))) + (im*2^(-2 - n)*ℯ^(im*(2*a - c*n) + im*(2*b - d*n)*x + im*n*(c + d*x))*(ℯ^((-im)*(c + d*x)) + ℯ^(im*(c + d*x)))^n*Hypergeometric2F1((1/2)*((2*b)/d - n), -n, (1/2)*(2 + (2*b)/d - n), -ℯ^(2*im*(c + d*x))))/((1 + ℯ^(2*im*c + 2*im*d*x))^n*(2*b - d*n)) + (im*2^(-1 - n)*(ℯ^((-im)*(c + d*x)) + ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, -(n/2), 1 - n/2, -ℯ^(2*im*(c + d*x))))/((1 + ℯ^(2*im*(c + d*x)))^n*(d*n))]

    @test_int [sin(a + b*x)^2*cos(c + d*x)^1, x, 5, -(sin(2*a - c + (2*b - d)*x)/(4*(2*b - d))) + sin(c + d*x)/(2*d) - sin(2*a + c + (2*b + d)*x)/(4*(2*b + d))]
    @test_int [sin(a + b*x)^2*cos(c + d*x)^2, x, 6, x/4 - sin(2*a + 2*b*x)/(8*b) - sin(2*(a - c) + 2*(b - d)*x)/(16*(b - d)) + sin(2*c + 2*d*x)/(8*d) - sin(2*(a + c) + 2*(b + d)*x)/(16*(b + d))]
    @test_int [sin(a + b*x)^2*cos(c + d*x)^3, x, 8, -(sin(2*a - 3*c + (2*b - 3*d)*x)/(16*(2*b - 3*d))) - (3*sin(2*a - c + (2*b - d)*x))/(16*(2*b - d)) + (3*sin(c + d*x))/(8*d) + sin(3*c + 3*d*x)/(24*d) - (3*sin(2*a + c + (2*b + d)*x))/(16*(2*b + d)) - sin(2*a + 3*c + (2*b + 3*d)*x)/(16*(2*b + 3*d))]


    @test_int [sin(a + b*x)^3*cos(c + d*x)^n, x, 14, (2^(-3 - n)*ℯ^(im*(3*a - c*n) + im*(3*b - d*n)*x + im*n*(c + d*x))*(ℯ^((-im)*(c + d*x)) + ℯ^(im*(c + d*x)))^n*Hypergeometric2F1((1/2)*((3*b)/d - n), -n, (1/2)*(2 + (3*b)/d - n), -ℯ^(2*im*(c + d*x))))/((1 + ℯ^(2*im*c + 2*im*d*x))^n*(3*b - d*n)) - (3*2^(-3 - n)*ℯ^(im*(a - c*n) + im*(b - d*n)*x + im*n*(c + d*x))*(ℯ^((-im)*(c + d*x)) + ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, (b - d*n)/(2*d), (1/2)*(2 + b/d - n), -ℯ^(2*im*(c + d*x))))/((1 + ℯ^(2*im*c + 2*im*d*x))^n*(b - d*n)) - (3*2^(-3 - n)*ℯ^((-im)*(a + c*n) - im*(b + d*n)*x + im*n*(c + d*x))*(ℯ^((-im)*(c + d*x)) + ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, -((b + d*n)/(2*d)), 1 - (b + d*n)/(2*d), -ℯ^(2*im*(c + d*x))))/((1 + ℯ^(2*im*c + 2*im*d*x))^n*(b + d*n)) + (2^(-3 - n)*ℯ^((-im)*(3*a + c*n) - im*(3*b + d*n)*x + im*n*(c + d*x))*(ℯ^((-im)*(c + d*x)) + ℯ^(im*(c + d*x)))^n*Hypergeometric2F1(-n, -((3*b + d*n)/(2*d)), (1/2)*(2 - (3*b)/d - n), -ℯ^(2*im*(c + d*x))))/((1 + ℯ^(2*im*c + 2*im*d*x))^n*(3*b + d*n))]

    @test_int [sin(a + b*x)^3*cos(c + d*x)^1, x, 6, -((3*cos(a - c + (b - d)*x))/(8*(b - d))) + cos(3*a - c + (3*b - d)*x)/(8*(3*b - d)) - (3*cos(a + c + (b + d)*x))/(8*(b + d)) + cos(3*a + c + (3*b + d)*x)/(8*(3*b + d))]
    @test_int [sin(a + b*x)^3*cos(c + d*x)^2, x, 8, -((3*cos(a + b*x))/(8*b)) + cos(3*a + 3*b*x)/(24*b) - (3*cos(a - 2*c + (b - 2*d)*x))/(16*(b - 2*d)) + cos(3*a - 2*c + (3*b - 2*d)*x)/(16*(3*b - 2*d)) - (3*cos(a + 2*c + (b + 2*d)*x))/(16*(b + 2*d)) + cos(3*a + 2*c + (3*b + 2*d)*x)/(16*(3*b + 2*d))]
    @test_int [sin(a + b*x)^3*cos(c + d*x)^3, x, 10, -((3*cos(a - 3*c + (b - 3*d)*x))/(32*(b - 3*d))) - (9*cos(a - c + (b - d)*x))/(32*(b - d)) + cos(3*(a - c) + 3*(b - d)*x)/(96*(b - d)) + (3*cos(3*a - c + (3*b - d)*x))/(32*(3*b - d)) - (9*cos(a + c + (b + d)*x))/(32*(b + d)) + cos(3*(a + c) + 3*(b + d)*x)/(96*(b + d)) + (3*cos(3*a + c + (3*b + d)*x))/(32*(3*b + d)) - (3*cos(a + 3*c + (b + 3*d)*x))/(32*(b + 3*d))]


    @test_int [cos(a + b*x)/sin(c + b*x)^1, x, 3, (cos(a - c)*log(sin(c + b*x)))/b - x*sin(a - c)]
    @test_int [cos(a + b*x)/sin(c + b*x)^2, x, 4, -((cos(a - c)*csc(c + b*x))/b) + (atanh(cos(c + b*x))*sin(a - c))/b]
    @test_int [cos(a + b*x)/sin(c + b*x)^3, x, 5, -((cos(a - c)*csc(c + b*x)^2)/(2*b)) + (cot(c + b*x)*sin(a - c))/b]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(a+b*x)^m*tan(c+d*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [sin(a + b*x)*tan(c + b*x)^3, x, 9, -((3*atanh(sin(c + b*x))*cos(a - c))/(2*b)) + (sec(c + b*x)*sin(a - c))/b + sin(a + b*x)/b + (cos(a - c)*sec(c + b*x)*tan(c + b*x))/(2*b)]
    @test_int [sin(a + b*x)*tan(c + b*x)^2, x, 6, cos(a + b*x)/b + (cos(a - c)*sec(c + b*x))/b + (atanh(sin(c + b*x))*sin(a - c))/b]
    @test_int [sin(a + b*x)*tan(c + b*x)^1, x, 3, (atanh(sin(c + b*x))*cos(a - c))/b - sin(a + b*x)/b]
    @test_int [sin(a + b*x)*cot(c + b*x)^1, x, 3, -((atanh(cos(c + b*x))*sin(a - c))/b) + sin(a + b*x)/b]
    @test_int [sin(a + b*x)*cot(c + b*x)^2, x, 6, -((atanh(cos(c + b*x))*cos(a - c))/b) + cos(a + b*x)/b - (csc(c + b*x)*sin(a - c))/b]
    @test_int [sin(a + b*x)*cot(c + b*x)^3, x, 9, -((cos(a - c)*csc(c + b*x))/b) + (3*atanh(cos(c + b*x))*sin(a - c))/(2*b) - (cot(c + b*x)*csc(c + b*x)*sin(a - c))/(2*b) - sin(a + b*x)/b]


    @test_int [sin(a + b*x)*tan(c + d*x), x, 6, im/(ℯ^(im*(a + b*x))*(2*b)) + (im*ℯ^(im*(a + b*x)))/(2*b) - (im*Hypergeometric2F1(1, -(b/(2*d)), 1 - b/(2*d), -ℯ^(2*im*(c + d*x))))/(ℯ^(im*(a + b*x))*b) - (im*ℯ^(im*(a + b*x))*Hypergeometric2F1(1, b/(2*d), 1 + b/(2*d), -ℯ^(2*im*(c + d*x))))/b]
    @test_int [sin(a + b*x)*cot(c + d*x), x, 6, -(im/(ℯ^(im*(a + b*x))*(2*b))) - (im*ℯ^(im*(a + b*x)))/(2*b) + (im*Hypergeometric2F1(1, -(b/(2*d)), 1 - b/(2*d), ℯ^(2*im*(c + d*x))))/(ℯ^(im*(a + b*x))*b) + (im*ℯ^(im*(a + b*x))*Hypergeometric2F1(1, b/(2*d), 1 + b/(2*d), ℯ^(2*im*(c + d*x))))/b]


    #= ::Subsubsection:: =#
    #=m<0=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*Trig(c+d*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*cos(c+d*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [cos(a + b*x)*cos(c + d*x)^3, x, 6, sin(a - 3*c + (b - 3*d)*x)/(8*(b - 3*d)) + (3*sin(a - c + (b - d)*x))/(8*(b - d)) + (3*sin(a + c + (b + d)*x))/(8*(b + d)) + sin(a + 3*c + (b + 3*d)*x)/(8*(b + 3*d))]
    @test_int [cos(a + b*x)*cos(c + d*x)^2, x, 5, sin(a + b*x)/(2*b) + sin(a - 2*c + (b - 2*d)*x)/(4*(b - 2*d)) + sin(a + 2*c + (b + 2*d)*x)/(4*(b + 2*d))]
    @test_int [cos(a + b*x)*cos(c + d*x)^1, x, 4, sin(a - c + (b - d)*x)/(2*(b - d)) + sin(a + c + (b + d)*x)/(2*(b + d))]
    @test_int [cos(a + b*x)*sec(c + b*x)^1, x, 3, x*cos(a - c) + (log(cos(c + b*x))*sin(a - c))/b]
    @test_int [cos(a + b*x)*sec(c + b*x)^2, x, 4, (atanh(sin(c + b*x))*cos(a - c))/b - (sec(c + b*x)*sin(a - c))/b]
    @test_int [cos(a + b*x)*sec(c + b*x)^3, x, 5, -((sec(c + b*x)^2*sin(a - c))/(2*b)) + (cos(a - c)*tan(c + b*x))/b]


    @test_int [cos(a + b*x)^2*cos(c + d*x)^3, x, 8, sin(2*a - 3*c + (2*b - 3*d)*x)/(16*(2*b - 3*d)) + (3*sin(2*a - c + (2*b - d)*x))/(16*(2*b - d)) + (3*sin(c + d*x))/(8*d) + sin(3*c + 3*d*x)/(24*d) + (3*sin(2*a + c + (2*b + d)*x))/(16*(2*b + d)) + sin(2*a + 3*c + (2*b + 3*d)*x)/(16*(2*b + 3*d))]
    @test_int [cos(a + b*x)^2*cos(c + d*x)^2, x, 6, x/4 + sin(2*a + 2*b*x)/(8*b) + sin(2*(a - c) + 2*(b - d)*x)/(16*(b - d)) + sin(2*c + 2*d*x)/(8*d) + sin(2*(a + c) + 2*(b + d)*x)/(16*(b + d))]


    @test_int [cos(a + b*x)^3*cos(c + d*x)^3, x, 10, (3*sin(a - 3*c + (b - 3*d)*x))/(32*(b - 3*d)) + (9*sin(a - c + (b - d)*x))/(32*(b - d)) + sin(3*(a - c) + 3*(b - d)*x)/(96*(b - d)) + (3*sin(3*a - c + (3*b - d)*x))/(32*(3*b - d)) + (9*sin(a + c + (b + d)*x))/(32*(b + d)) + sin(3*(a + c) + 3*(b + d)*x)/(96*(b + d)) + (3*sin(3*a + c + (3*b + d)*x))/(32*(3*b + d)) + (3*sin(a + 3*c + (b + 3*d)*x))/(32*(b + 3*d))]


    #= ::Subsubsection:: =#
    #=m<0=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*tan(c+d*x)^n=#


    #= ::Subsubsection::Closed:: =#
    #=m>0=#


    @test_int [cos(a + b*x)*tan(c + b*x)^3, x, 9, cos(a + b*x)/b + (cos(a - c)*sec(c + b*x))/b + (3*atanh(sin(c + b*x))*sin(a - c))/(2*b) - (sec(c + b*x)*sin(a - c)*tan(c + b*x))/(2*b)]
    @test_int [cos(a + b*x)*tan(c + b*x)^2, x, 6, (atanh(sin(c + b*x))*cos(a - c))/b - (sec(c + b*x)*sin(a - c))/b - sin(a + b*x)/b]
    @test_int [cos(a + b*x)*tan(c + b*x)^1, x, 3, -(cos(a + b*x)/b) - (atanh(sin(c + b*x))*sin(a - c))/b]
    @test_int [cos(a + b*x)*cot(c + b*x)^1, x, 3, -((atanh(cos(c + b*x))*cos(a - c))/b) + cos(a + b*x)/b]
    @test_int [cos(a + b*x)*cot(c + b*x)^2, x, 6, -((cos(a - c)*csc(c + b*x))/b) + (atanh(cos(c + b*x))*sin(a - c))/b - sin(a + b*x)/b]
    @test_int [cos(a + b*x)*cot(c + b*x)^3, x, 9, (3*atanh(cos(c + b*x))*cos(a - c))/(2*b) - cos(a + b*x)/b - (cos(a - c)*cot(c + b*x)*csc(c + b*x))/(2*b) + (csc(c + b*x)*sin(a - c))/b]


    @test_int [cos(a + b*x)*tan(c + d*x), x, 6, 1/(ℯ^(im*(a + b*x))*(2*b)) - ℯ^(im*(a + b*x))/(2*b) - Hypergeometric2F1(1, -(b/(2*d)), 1 - b/(2*d), -ℯ^(2*im*(c + d*x)))/(ℯ^(im*(a + b*x))*b) + (ℯ^(im*(a + b*x))*Hypergeometric2F1(1, b/(2*d), 1 + b/(2*d), -ℯ^(2*im*(c + d*x))))/b]
    @test_int [cos(a + b*x)*cot(c + d*x), x, 6, -(1/(ℯ^(im*(a + b*x))*(2*b))) + ℯ^(im*(a + b*x))/(2*b) + Hypergeometric2F1(1, -(b/(2*d)), 1 - b/(2*d), ℯ^(2*im*(c + d*x)))/(ℯ^(im*(a + b*x))*b) - (ℯ^(im*(a + b*x))*Hypergeometric2F1(1, b/(2*d), 1 + b/(2*d), ℯ^(2*im*(c + d*x))))/b]


    #= ::Subsubsection:: =#
    #=m<0=#


    #= ::Subsection:: =#
    #=Integrands*of*the*form*cos(a+b*x)^m*cot(c+d*x)^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*tan(a+b*x)^m*Trig(c+d*x)^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*tan(a+b*x)^m*tan(c+d*x)^n=#


    #= ::Subsubsection:: =#
    #=m>0=#


    #= ::Subsubsection:: =#
    #=m<0=#
    end
