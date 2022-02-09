@testset "6.4.7 (d hyper)^m (a+b (c coth)^n)^p" begin
    (a, b, c, d, x, ) = @variables a b c d x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*sinh(e+f*x)^m*(a+b*coth(e+f*x)^n)^p=#


    #= ::Title:: =#
    #=Integrands*of*the*form*cosh(e+f*x)^m*(a+b*coth(e+f*x)^n)^p=#


    #= ::Title:: =#
    #=Integrands*of*the*form*coth(e+f*x)^m*(a+b*coth(e+f*x)^n)^p=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*coth(e+f*x)^m*(a+b*coth(e+f*x)^2)^p=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*coth(e+f*x)^m*(a+b*coth(e+f*x)^2)^p=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [(a + b*coth(c + d*x)^2)^5, x, 4, (a + b)^5*x - (b*(5*a^4 + 10*a^3*b + 10*a^2*b^2 + 5*a*b^3 + b^4)*coth(c + d*x))/d - (b^2*(10*a^3 + 10*a^2*b + 5*a*b^2 + b^3)*coth(c + d*x)^3)/(3*d) - (b^3*(10*a^2 + 5*a*b + b^2)*coth(c + d*x)^5)/(5*d) - (b^4*(5*a + b)*coth(c + d*x)^7)/(7*d) - (b^5*coth(c + d*x)^9)/(9*d)]
    @test_int [(a + b*coth(c + d*x)^2)^4, x, 4, (a + b)^4*x - (b*(2*a + b)*(2*a^2 + 2*a*b + b^2)*coth(c + d*x))/d - (b^2*(6*a^2 + 4*a*b + b^2)*coth(c + d*x)^3)/(3*d) - (b^3*(4*a + b)*coth(c + d*x)^5)/(5*d) - (b^4*coth(c + d*x)^7)/(7*d)]
    @test_int [(a + b*coth(c + d*x)^2)^3, x, 4, (a + b)^3*x - (b*(3*a^2 + 3*a*b + b^2)*coth(c + d*x))/d - (b^2*(3*a + b)*coth(c + d*x)^3)/(3*d) - (b^3*coth(c + d*x)^5)/(5*d)]
    @test_int [(a + b*coth(c + d*x)^2)^2, x, 4, (a + b)^2*x - (b*(2*a + b)*coth(c + d*x))/d - (b^2*coth(c + d*x)^3)/(3*d)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/(a + b*coth(c + d*x)^2),x, 3, x/(a + b) - (sqrt(b)*atan((sqrt(a)*tanh(c + d*x))/sqrt(b)))/(sqrt(a)*(a + b)*d)]
    @test_int [1/(a + b*coth(c + d*x)^2)^2,x, 5, x/(a + b)^2 - (sqrt(b)*(3*a + b)*atan((sqrt(a)*tanh(c + d*x))/sqrt(b)))/(2*a^(3/2)*(a + b)^2*d) + (b*coth(c + d*x))/(2*a*(a + b)*d*(a + b*coth(c + d*x)^2))]
    @test_int [1/(a + b*coth(c + d*x)^2)^3,x, 6, x/(a + b)^3 - (sqrt(b)*(15*a^2 + 10*a*b + 3*b^2)*atan((sqrt(a)*tanh(c + d*x))/sqrt(b)))/(8*a^(5/2)*(a + b)^3*d) + (b*coth(c + d*x))/(4*a*(a + b)*d*(a + b*coth(c + d*x)^2)^2) + (b*(7*a + 3*b)*coth(c + d*x))/(8*a^2*(a + b)^2*d*(a + b*coth(c + d*x)^2))]
    @test_int [1/(a + b*coth(c + d*x)^2)^4,x, 7, x/(a + b)^4 - (sqrt(b)*(35*a^3 + 35*a^2*b + 21*a*b^2 + 5*b^3)*atan((sqrt(a)*tanh(c + d*x))/sqrt(b)))/(16*a^(7/2)*(a + b)^4*d) + (b*coth(c + d*x))/(6*a*(a + b)*d*(a + b*coth(c + d*x)^2)^3) + (b*(11*a + 5*b)*coth(c + d*x))/(24*a^2*(a + b)^2*d*(a + b*coth(c + d*x)^2)^2) + (b*(19*a^2 + 16*a*b + 5*b^2)*coth(c + d*x))/(16*a^3*(a + b)^3*d*(a + b*coth(c + d*x)^2))]

    @test_int [1/(1 - 2*coth(x)^2), x, 3, -x + sqrt(2)*atanh(tanh(x)/sqrt(2))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*coth(e+f*x)^m*(a+b*coth(e+f*x)^2)^(p/2)*when*a+b=0=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [sqrt(1 - coth(x)^2), x, 3, asin(coth(x))]
    @test_int [sqrt(-1 + coth(x)^2), x, 4, -atanh(coth(x)/sqrt(csch(x)^2))]


    @test_int [(1 - coth(x)^2)^(3/2), x, 4, (1/2)*asin(coth(x)) + (1/2)*coth(x)*sqrt(-csch(x)^2)]
    @test_int [(-1 + coth(x)^2)^(3/2), x, 5, (1/2)*atanh(coth(x)/sqrt(csch(x)^2)) - (1/2)*coth(x)*sqrt(csch(x)^2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [1/sqrt(1 - coth(x)^2), x, 3, coth(x)/sqrt(-csch(x)^2)]
    @test_int [1/sqrt(-1 + coth(x)^2), x, 3, coth(x)/sqrt(csch(x)^2)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*coth(e+f*x)^m*(a+b*coth(e+f*x)^2)^(p/2)=#


    #= ::Subsubsection::Closed:: =#
    #=p>0=#


    @test_int [coth(x)^3*sqrt(a + b*coth(x)^2), x, 6, sqrt(a + b)*atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b)) - sqrt(a + b*coth(x)^2) - (a + b*coth(x)^2)^(3/2)/(3*b)]
    @test_int [coth(x)^2*sqrt(a + b*coth(x)^2), x, 7, -(((a + 2*b)*atanh((sqrt(b)*coth(x))/sqrt(a + b*coth(x)^2)))/(2*sqrt(b))) + sqrt(a + b)*atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2)) - (1/2)*coth(x)*sqrt(a + b*coth(x)^2)]
    @test_int [coth(x)^1*sqrt(a + b*coth(x)^2), x, 5, sqrt(a + b)*atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b)) - sqrt(a + b*coth(x)^2)]
    @test_int [coth(x)^0*sqrt(a + b*coth(x)^2), x, 6, (-sqrt(b))*atanh((sqrt(b)*coth(x))/sqrt(a + b*coth(x)^2)) + sqrt(a + b)*atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2))]
    @test_int [tanh(x)^1*sqrt(a + b*coth(x)^2), x, 7, (-sqrt(a))*atanh(sqrt(a + b*coth(x)^2)/sqrt(a)) + sqrt(a + b)*atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))]
    @test_int [tanh(x)^2*sqrt(a + b*coth(x)^2), x, 5, sqrt(a + b)*atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2)) - sqrt(a + b*coth(x)^2)*tanh(x)]


    @test_int [coth(x)^3*(a + b*coth(x)^2)^(3/2), x, 7, (a + b)^(3/2)*atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b)) - (a + b)*sqrt(a + b*coth(x)^2) - (1/3)*(a + b*coth(x)^2)^(3/2) - (a + b*coth(x)^2)^(5/2)/(5*b)]
    @test_int [coth(x)^2*(a + b*coth(x)^2)^(3/2), x, 8, -(((3*a^2 + 12*a*b + 8*b^2)*atanh((sqrt(b)*coth(x))/sqrt(a + b*coth(x)^2)))/(8*sqrt(b))) + (a + b)^(3/2)*atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2)) - (1/8)*(5*a + 4*b)*coth(x)*sqrt(a + b*coth(x)^2) - (1/4)*b*coth(x)^3*sqrt(a + b*coth(x)^2)]
    @test_int [coth(x)^1*(a + b*coth(x)^2)^(3/2), x, 6, (a + b)^(3/2)*atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b)) - (a + b)*sqrt(a + b*coth(x)^2) - (1/3)*(a + b*coth(x)^2)^(3/2)]
    @test_int [coth(x)^0*(a + b*coth(x)^2)^(3/2), x, 7, (-(1/2))*sqrt(b)*(3*a + 2*b)*atanh((sqrt(b)*coth(x))/sqrt(a + b*coth(x)^2)) + (a + b)^(3/2)*atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2)) - (1/2)*b*coth(x)*sqrt(a + b*coth(x)^2)]
    @test_int [tanh(x)^1*(a + b*coth(x)^2)^(3/2), x, 8, (-a^(3/2))*atanh(sqrt(a + b*coth(x)^2)/sqrt(a)) + (a + b)^(3/2)*atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b)) - b*sqrt(a + b*coth(x)^2)]
    @test_int [tanh(x)^2*(a + b*coth(x)^2)^(3/2), x, 7, (-b^(3/2))*atanh((sqrt(b)*coth(x))/sqrt(a + b*coth(x)^2)) + (a + b)^(3/2)*atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2)) - a*sqrt(a + b*coth(x)^2)*tanh(x)]


    @test_int [sqrt(1 + coth(x)^2), x, 5, -asinh(coth(x)) + sqrt(2)*atanh((sqrt(2)*coth(x))/sqrt(1 + coth(x)^2))]
    @test_int [sqrt(-1 - coth(x)^2), x, 6, atan(coth(x)/sqrt(-1 - coth(x)^2)) - sqrt(2)*atan((sqrt(2)*coth(x))/sqrt(-1 - coth(x)^2))]


    @test_int [(1 + coth(x)^2)^(3/2), x, 6, (-(5/2))*asinh(coth(x)) + 2*sqrt(2)*atanh((sqrt(2)*coth(x))/sqrt(1 + coth(x)^2)) - (1/2)*coth(x)*sqrt(1 + coth(x)^2)]
    @test_int [(-1 - coth(x)^2)^(3/2), x, 7, (-(5/2))*atan(coth(x)/sqrt(-1 - coth(x)^2)) + 2*sqrt(2)*atan((sqrt(2)*coth(x))/sqrt(-1 - coth(x)^2)) + (1/2)*coth(x)*sqrt(-1 - coth(x)^2)]


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [coth(x)^3/sqrt(a + b*coth(x)^2), x, 5, atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))/sqrt(a + b) - sqrt(a + b*coth(x)^2)/b]
    @test_int [coth(x)^2/sqrt(a + b*coth(x)^2), x, 6, -(atanh((sqrt(b)*coth(x))/sqrt(a + b*coth(x)^2))/sqrt(b)) + atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2))/sqrt(a + b)]
    @test_int [coth(x)^1/sqrt(a + b*coth(x)^2), x, 4, atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))/sqrt(a + b)]
    @test_int [coth(x)^0/sqrt(a + b*coth(x)^2), x, 3, atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2))/sqrt(a + b)]
    @test_int [tanh(x)^1/sqrt(a + b*coth(x)^2), x, 7, -(atanh(sqrt(a + b*coth(x)^2)/sqrt(a))/sqrt(a)) + atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))/sqrt(a + b)]
    @test_int [tanh(x)^2/sqrt(a + b*coth(x)^2), x, 5, atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2))/sqrt(a + b) - (sqrt(a + b*coth(x)^2)*tanh(x))/a]


    @test_int [coth(x)^3/(a + b*coth(x)^2)^(3/2), x, 5, atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))/(a + b)^(3/2) + a/(b*(a + b)*sqrt(a + b*coth(x)^2))]
    @test_int [coth(x)^2/(a + b*coth(x)^2)^(3/2), x, 4, atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2))/(a + b)^(3/2) - coth(x)/((a + b)*sqrt(a + b*coth(x)^2))]
    @test_int [coth(x)/(a + b*coth(x)^2)^(3/2), x, 5, atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))/(a + b)^(3/2) - 1/((a + b)*sqrt(a + b*coth(x)^2))]
    @test_int [tanh(x)/(a + b*coth(x)^2)^(3/2), x, 8, -(atanh(sqrt(a + b*coth(x)^2)/sqrt(a))/a^(3/2)) + atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))/(a + b)^(3/2) + b/(a*(a + b)*sqrt(a + b*coth(x)^2))]
    @test_int [tanh(x)^2/(a + b*coth(x)^2)^(3/2), x, 6, atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2))/(a + b)^(3/2) + (b*tanh(x))/(a*(a + b)*sqrt(a + b*coth(x)^2)) - ((a + 2*b)*sqrt(a + b*coth(x)^2)*tanh(x))/(a^2*(a + b))]


    @test_int [coth(x)^3/(a + b*coth(x)^2)^(5/2), x, 6, atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))/(a + b)^(5/2) + a/(3*b*(a + b)*(a + b*coth(x)^2)^(3/2)) - 1/((a + b)^2*sqrt(a + b*coth(x)^2))]
    @test_int [coth(x)^2/(a + b*coth(x)^2)^(5/2), x, 6, atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2))/(a + b)^(5/2) - coth(x)/(3*(a + b)*(a + b*coth(x)^2)^(3/2)) - ((2*a - b)*coth(x))/(3*a*(a + b)^2*sqrt(a + b*coth(x)^2))]
    @test_int [coth(x)/(a + b*coth(x)^2)^(5/2), x, 6, atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))/(a + b)^(5/2) - 1/(3*(a + b)*(a + b*coth(x)^2)^(3/2)) - 1/((a + b)^2*sqrt(a + b*coth(x)^2))]
    @test_int [tanh(x)/(a + b*coth(x)^2)^(5/2), x, 9, -(atanh(sqrt(a + b*coth(x)^2)/sqrt(a))/a^(5/2)) + atanh(sqrt(a + b*coth(x)^2)/sqrt(a + b))/(a + b)^(5/2) + b/(3*a*(a + b)*(a + b*coth(x)^2)^(3/2)) + (b*(2*a + b))/(a^2*(a + b)^2*sqrt(a + b*coth(x)^2))]
    @test_int [tanh(x)^2/(a + b*coth(x)^2)^(5/2), x, 7, atanh((sqrt(a + b)*coth(x))/sqrt(a + b*coth(x)^2))/(a + b)^(5/2) + (b*tanh(x))/(3*a*(a + b)*(a + b*coth(x)^2)^(3/2)) + (b*(7*a + 4*b)*tanh(x))/(3*a^2*(a + b)^2*sqrt(a + b*coth(x)^2)) - ((3*a + 2*b)*(a + 4*b)*sqrt(a + b*coth(x)^2)*tanh(x))/(3*a^3*(a + b)^2)]


    @test_int [1/sqrt(1 + coth(x)^2), x, 3, atanh((sqrt(2)*coth(x))/sqrt(1 + coth(x)^2))/sqrt(2)]
    @test_int [1/sqrt(-1 - coth(x)^2), x, 3, atan((sqrt(2)*coth(x))/sqrt(-1 - coth(x)^2))/sqrt(2)]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*coth(e+f*x)^m*(a+b*coth(e+f*x)^3)^p=#


    @test_int [1/(1 + coth(x)^3), x, 6, x/2 - (2*atan((1 - 2*coth(x))/sqrt(3)))/(3*sqrt(3)) - 1/(6*(1 + coth(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*coth(e+f*x)^m*(a+b*coth(e+f*x)^4)^p=#


    @test_int [coth(x)*(a + b*coth(x)^4)^(1/2), x, 8, (-(1/2))*sqrt(b)*atanh((sqrt(b)*coth(x)^2)/sqrt(a + b*coth(x)^4)) + (1/2)*sqrt(a + b)*atanh((a + b*coth(x)^2)/(sqrt(a + b)*sqrt(a + b*coth(x)^4))) - (1/2)*sqrt(a + b*coth(x)^4)]
    @test_int [coth(x)/(a + b*coth(x)^4)^(1/2), x, 4, atanh((a + b*coth(x)^2)/(sqrt(a + b)*sqrt(a + b*coth(x)^4)))/(2*sqrt(a + b))]
    @test_int [coth(x)/(a + b*coth(x)^4)^(3/2), x, 6, atanh((a + b*coth(x)^2)/(sqrt(a + b)*sqrt(a + b*coth(x)^4)))/(2*(a + b)^(3/2)) - (a - b*coth(x)^2)/(2*a*(a + b)*sqrt(a + b*coth(x)^4))]


    #= ::Section:: =#
    #=Integrands*of*the*form*coth(e+f*x)^m*(a+b*coth(e+f*x)^n)^p=#
    end
