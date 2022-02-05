@testset "4.7.2 trig^m (a trig+b trig)^n" begin
    @variables a, b, c, d, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Integrands*of*the*form*Trig(c+d*x)^m*(a*Trig(c+d*x)+b*Trig(c+d*x))^n=#


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*sin(c+d*x)^m*(a*cos(c+d*x)+b*sin(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(c+d*x)^m*(a*cos(c+d*x)+b*sin(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [sin(x)^3*(a*cos(x) + b*sin(x)), x, 7, (3*b*x)/8 - (3/8)*b*cos(x)*sin(x) - (1/4)*b*cos(x)*sin(x)^3 + (1/4)*a*sin(x)^4]
    @test_int [sin(x)^2*(a*cos(x) + b*sin(x)), x, 6, (-b)*cos(x) + (1/3)*b*cos(x)^3 + (1/3)*a*sin(x)^3]
    @test_int [sin(x)^1*(a*cos(x) + b*sin(x)), x, 6, (b*x)/2 - (1/2)*b*cos(x)*sin(x) + (1/2)*a*sin(x)^2]
    @test_int [sin(x)^0*(a*cos(x) + b*sin(x)), x, 3, (-b)*cos(x) + a*sin(x)]
    @test_int [csc(x)^1*(a*cos(x) + b*sin(x)), x, 3, b*x + a*log(sin(x))]
    @test_int [csc(x)^2*(a*cos(x) + b*sin(x)), x, 5, (-b)*atanh(cos(x)) - a*csc(x)]
    @test_int [csc(x)^3*(a*cos(x) + b*sin(x)), x, 6, (-b)*cot(x) - (1/2)*a*csc(x)^2]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sin(x)^3/(a*cos(x) + b*sin(x)), x, 5, (a^2*b*x)/(a^2 + b^2)^2 + (b*x)/(2*(a^2 + b^2)) - (a^3*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^2 - (b*cos(x)*sin(x))/(2*(a^2 + b^2)) - (a*sin(x)^2)/(2*(a^2 + b^2))]
    @test_int [sin(x)^2/(a*cos(x) + b*sin(x)), x, 4, -((a^2*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2)) - (b*cos(x))/(a^2 + b^2) - (a*sin(x))/(a^2 + b^2)]
    @test_int [sin(x)^1/(a*cos(x) + b*sin(x)), x, 2, (b*x)/(a^2 + b^2) - (a*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)]
    @test_int [sin(x)^0/(a*cos(x) + b*sin(x)), x, 2, -(atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2))/sqrt(a^2 + b^2))]
    @test_int [csc(x)^1/(a*cos(x) + b*sin(x)), x, 3, log(sin(x))/a - log(a*cos(x) + b*sin(x))/a]
    @test_int [csc(x)^2/(a*cos(x) + b*sin(x)), x, 4, (b*atanh(cos(x)))/a^2 - (sqrt(a^2 + b^2)*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/a^2 - csc(x)/a]
    @test_int [csc(x)^3/(a*cos(x) + b*sin(x)), x, 6, (b*cot(x))/a^2 - csc(x)^2/(2*a) + ((a^2 + b^2)*log(sin(x)))/a^3 - ((a^2 + b^2)*log(a*cos(x) + b*sin(x)))/a^3]


    @test_int [sin(x)^3/(a*cos(x) + b*sin(x))^2, x, -19, (6*a^2*b*atanh((-b + a*tan(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) + (3*a*(a^2 - b^2) + a*(a^2 + b^2)*cos(2*x) - b*(a^2 + b^2)*sin(2*x))/(2*(a^2 + b^2)^2*(a*cos(x) + b*sin(x)))]
    @test_int [sin(x)^2/(a*cos(x) + b*sin(x))^2, x, 4, -(((a^2 - b^2)*x)/(a^2 + b^2)^2) + a/((a^2 + b^2)*(b + a*cot(x))) - (2*a*b*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^2]
    @test_int [sin(x)^1/(a*cos(x) + b*sin(x))^2, x, 3, -((b*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2)) + a/((a^2 + b^2)*(a*cos(x) + b*sin(x)))]
    @test_int [sin(x)^0/(a*cos(x) + b*sin(x))^2, x, 1, sin(x)/(a*(a*cos(x) + b*sin(x)))]
    @test_int [csc(x)^1/(a*cos(x) + b*sin(x))^2, x, 4, -(atanh(cos(x))/a^2) + (b*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2*sqrt(a^2 + b^2)) + 1/(a*(a*cos(x) + b*sin(x)))]
    @test_int [csc(x)^2/(a*cos(x) + b*sin(x))^2, x, 3, -(cot(x)/a^2) - (2*b*log(tan(x)))/a^3 + (2*b*log(a + b*tan(x)))/a^3 - (1/b + b/a^2)/(a + b*tan(x))]
    @test_int [csc(x)^3/(a*cos(x) + b*sin(x))^2, x, 11, -(atanh(cos(x))/(2*a^2)) - (2*b^2*atanh(cos(x)))/a^4 - ((a^2 + b^2)*atanh(cos(x)))/a^4 + (3*b*sqrt(a^2 + b^2)*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/a^4 + (2*b*csc(x))/a^3 - (cot(x)*csc(x))/(2*a^2) + (a^2 + b^2)/(a^3*(a*cos(x) + b*sin(x)))]


    @test_int [sin(x)^3/(a*cos(x) + b*sin(x))^3, x, 5, -((b*(3*a^2 - b^2)*x)/(a^2 + b^2)^3) + a/(2*(a^2 + b^2)*(b + a*cot(x))^2) + (2*a*b)/((a^2 + b^2)^2*(b + a*cot(x))) + (a*(a^2 - 3*b^2)*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3]
    @test_int [sin(x)^2/(a*cos(x) + b*sin(x))^3, x, -13, -(((a^2 - 2*b^2)*atanh((-b + a*tan(x/2))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) + (a*(3*a*b*cos(x) + (a^2 + 4*b^2)*sin(x)))/(2*(a^2 + b^2)^2*(a*cos(x) + b*sin(x))^2)]
    @test_int [sin(x)^1/(a*cos(x) + b*sin(x))^3, x, 2, 1/(2*a*(b + a*cot(x))^2), tan(x)^2/(2*a*(a + b*tan(x))^2)]
    @test_int [sin(x)^0/(a*cos(x) + b*sin(x))^3, x, 3, -(atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2))/(2*(a^2 + b^2)^(3/2))) - (b*cos(x) - a*sin(x))/(2*(a^2 + b^2)*(a*cos(x) + b*sin(x))^2)]
    @test_int [csc(x)^1/(a*cos(x) + b*sin(x))^3, x, 3, log(tan(x))/a^3 - log(a + b*tan(x))/a^3 + (1/a + a/b^2)/(2*(a + b*tan(x))^2) + (1/a^2 - 1/b^2)/(a + b*tan(x))]
    @test_int [csc(x)^2/(a*cos(x) + b*sin(x))^3, x, 12, (3*b*atanh(cos(x)))/a^4 - atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2))/(2*a^2*sqrt(a^2 + b^2)) - (2*b^2*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^4*sqrt(a^2 + b^2)) - (sqrt(a^2 + b^2)*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/a^4 - csc(x)/a^3 - (b*cos(x) - a*sin(x))/(2*a^2*(a*cos(x) + b*sin(x))^2) - (2*b)/(a^3*(a*cos(x) + b*sin(x)))]
    @test_int [csc(x)^3/(a*cos(x) + b*sin(x))^3, x, 3, (3*b*cot(x))/a^4 - cot(x)^2/(2*a^3) + (2*(a^2 + 3*b^2)*log(tan(x)))/a^5 - (2*(a^2 + 3*b^2)*log(a + b*tan(x)))/a^5 + (a^2 + b^2)^2/(2*a^3*b^2*(a + b*tan(x))^2) - ((a^2 - 3*b^2)*(a^2 + b^2))/(a^4*b^2*(a + b*tan(x)))]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*sin(c+d*x)^m*(a*cos(c+d*x)+b*sin(c+d*x))^n*when*a^2+b^2=0=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection:: =#
    #=n<0=#


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^n/sin(c + d*x)^n, x, 1, -((im*Hypergeometric2F1(1, n, 1 + n, (-(1/2))*im*(im + cot(c + d*x)))*(a*cos(c + d*x) + im*a*sin(c + d*x))^n)/(sin(c + d*x)^n*(2*d*n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(a*cos(c+d*x)+b*sin(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(a*cos(c+d*x)+b*sin(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x)), x, 8, (5*a*x)/16 - (b*cos(c + d*x)^6)/(6*d) + (5*a*cos(c + d*x)*sin(c + d*x))/(16*d) + (5*a*cos(c + d*x)^3*sin(c + d*x))/(24*d) + (a*cos(c + d*x)^5*sin(c + d*x))/(6*d)]
    @test_int [cos(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x)), x, 6, -((b*cos(c + d*x)^5)/(5*d)) + (a*sin(c + d*x))/d - (2*a*sin(c + d*x)^3)/(3*d) + (a*sin(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x)), x, 7, (3*a*x)/8 - (b*cos(c + d*x)^4)/(4*d) + (3*a*cos(c + d*x)*sin(c + d*x))/(8*d) + (a*cos(c + d*x)^3*sin(c + d*x))/(4*d)]
    @test_int [cos(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x)), x, 6, -((b*cos(c + d*x)^3)/(3*d)) + (a*sin(c + d*x))/d - (a*sin(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x)), x, 6, (a*x)/2 + (a*cos(c + d*x)*sin(c + d*x))/(2*d) + (b*sin(c + d*x)^2)/(2*d)]
    @test_int [cos(c + d*x)^0*(a*cos(c + d*x) + b*sin(c + d*x)), x, 3, -((b*cos(c + d*x))/d) + (a*sin(c + d*x))/d]
    @test_int [sec(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x)), x, 3, a*x - (b*log(cos(c + d*x)))/d]
    @test_int [sec(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x)), x, 5, (a*atanh(sin(c + d*x)))/d + (b*sec(c + d*x))/d]
    @test_int [sec(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x)), x, 6, (b*sec(c + d*x)^2)/(2*d) + (a*tan(c + d*x))/d]
    @test_int [sec(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x)), x, 6, (a*atanh(sin(c + d*x)))/(2*d) + (b*sec(c + d*x)^3)/(3*d) + (a*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [sec(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x)), x, 6, (b*sec(c + d*x)^4)/(4*d) + (a*tan(c + d*x))/d + (a*tan(c + d*x)^3)/(3*d)]
    @test_int [sec(c + d*x)^6*(a*cos(c + d*x) + b*sin(c + d*x)), x, 7, (3*a*atanh(sin(c + d*x)))/(8*d) + (b*sec(c + d*x)^5)/(5*d) + (3*a*sec(c + d*x)*tan(c + d*x))/(8*d) + (a*sec(c + d*x)^3*tan(c + d*x))/(4*d)]
    @test_int [sec(c + d*x)^7*(a*cos(c + d*x) + b*sin(c + d*x)), x, 6, (b*sec(c + d*x)^6)/(6*d) + (a*tan(c + d*x))/d + (2*a*tan(c + d*x)^3)/(3*d) + (a*tan(c + d*x)^5)/(5*d)]


    @test_int [cos(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 9, -((2*a*b*cos(c + d*x)^7)/(7*d)) + (a^2*sin(c + d*x))/d - (a^2*sin(c + d*x)^3)/d + (b^2*sin(c + d*x)^3)/(3*d) + (3*a^2*sin(c + d*x)^5)/(5*d) - (2*b^2*sin(c + d*x)^5)/(5*d) - (a^2*sin(c + d*x)^7)/(7*d) + (b^2*sin(c + d*x)^7)/(7*d)]
    @test_int [cos(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 12, (5*a^2*x)/16 + (b^2*x)/16 - (a*b*cos(c + d*x)^6)/(3*d) + (5*a^2*cos(c + d*x)*sin(c + d*x))/(16*d) + (b^2*cos(c + d*x)*sin(c + d*x))/(16*d) + (5*a^2*cos(c + d*x)^3*sin(c + d*x))/(24*d) + (b^2*cos(c + d*x)^3*sin(c + d*x))/(24*d) + (a^2*cos(c + d*x)^5*sin(c + d*x))/(6*d) - (b^2*cos(c + d*x)^5*sin(c + d*x))/(6*d)]
    @test_int [cos(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 9, -((2*a*b*cos(c + d*x)^5)/(5*d)) + (a^2*sin(c + d*x))/d - (2*a^2*sin(c + d*x)^3)/(3*d) + (b^2*sin(c + d*x)^3)/(3*d) + (a^2*sin(c + d*x)^5)/(5*d) - (b^2*sin(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 10, (3*a^2*x)/8 + (b^2*x)/8 - (a*b*cos(c + d*x)^4)/(2*d) + (3*a^2*cos(c + d*x)*sin(c + d*x))/(8*d) + (b^2*cos(c + d*x)*sin(c + d*x))/(8*d) + (a^2*cos(c + d*x)^3*sin(c + d*x))/(4*d) - (b^2*cos(c + d*x)^3*sin(c + d*x))/(4*d)]
    @test_int [cos(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 8, -((2*a*b*cos(c + d*x)^3)/(3*d)) + (a^2*sin(c + d*x))/d - (a^2*sin(c + d*x)^3)/(3*d) + (b^2*sin(c + d*x)^3)/(3*d)]
    @test_int [cos(c + d*x)^0*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 2, (1/2)*(a^2 + b^2)*x - ((b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x)))/(2*d)]
    @test_int [sec(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 7, (b^2*atanh(sin(c + d*x)))/d - (2*a*b*cos(c + d*x))/d + (a^2*sin(c + d*x))/d - (b^2*sin(c + d*x))/d]
    @test_int [sec(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 3, (a^2 - b^2)*x - (2*a*b*log(cos(c + d*x)))/d + (b^2*tan(c + d*x))/d]
    @test_int [sec(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 7, (a^2*atanh(sin(c + d*x)))/d - (b^2*atanh(sin(c + d*x)))/(2*d) + (2*a*b*sec(c + d*x))/d + (b^2*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [sec(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 2, ((b + a*cot(c + d*x))^3*tan(c + d*x)^3)/(3*b*d)]
    @test_int [sec(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 9, (a^2*atanh(sin(c + d*x)))/(2*d) - (b^2*atanh(sin(c + d*x)))/(8*d) + (2*a*b*sec(c + d*x)^3)/(3*d) + (a^2*sec(c + d*x)*tan(c + d*x))/(2*d) - (b^2*sec(c + d*x)*tan(c + d*x))/(8*d) + (b^2*sec(c + d*x)^3*tan(c + d*x))/(4*d)]
    @test_int [sec(c + d*x)^6*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 3, (a^2*tan(c + d*x))/d + (a*b*tan(c + d*x)^2)/d + ((a^2 + b^2)*tan(c + d*x)^3)/(3*d) + (a*b*tan(c + d*x)^4)/(2*d) + (b^2*tan(c + d*x)^5)/(5*d)]
    @test_int [sec(c + d*x)^7*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 11, (3*a^2*atanh(sin(c + d*x)))/(8*d) - (b^2*atanh(sin(c + d*x)))/(16*d) + (2*a*b*sec(c + d*x)^5)/(5*d) + (3*a^2*sec(c + d*x)*tan(c + d*x))/(8*d) - (b^2*sec(c + d*x)*tan(c + d*x))/(16*d) + (a^2*sec(c + d*x)^3*tan(c + d*x))/(4*d) - (b^2*sec(c + d*x)^3*tan(c + d*x))/(24*d) + (b^2*sec(c + d*x)^5*tan(c + d*x))/(6*d)]
    @test_int [sec(c + d*x)^8*(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 3, (a^2*tan(c + d*x))/d + (a*b*tan(c + d*x)^2)/d + ((2*a^2 + b^2)*tan(c + d*x)^3)/(3*d) + (a*b*tan(c + d*x)^4)/d + ((a^2 + 2*b^2)*tan(c + d*x)^5)/(5*d) + (a*b*tan(c + d*x)^6)/(3*d) + (b^2*tan(c + d*x)^7)/(7*d)]


    @test_int [cos(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 17, (35*a^3*x)/128 + (15/128)*a*b^2*x - (b^3*cos(c + d*x)^6)/(6*d) - (3*a^2*b*cos(c + d*x)^8)/(8*d) + (b^3*cos(c + d*x)^8)/(8*d) + (35*a^3*cos(c + d*x)*sin(c + d*x))/(128*d) + (15*a*b^2*cos(c + d*x)*sin(c + d*x))/(128*d) + (35*a^3*cos(c + d*x)^3*sin(c + d*x))/(192*d) + (5*a*b^2*cos(c + d*x)^3*sin(c + d*x))/(64*d) + (7*a^3*cos(c + d*x)^5*sin(c + d*x))/(48*d) + (a*b^2*cos(c + d*x)^5*sin(c + d*x))/(16*d) + (a^3*cos(c + d*x)^7*sin(c + d*x))/(8*d) - (3*a*b^2*cos(c + d*x)^7*sin(c + d*x))/(8*d)]
    @test_int [cos(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 12, -((b^3*cos(c + d*x)^5)/(5*d)) - (3*a^2*b*cos(c + d*x)^7)/(7*d) + (b^3*cos(c + d*x)^7)/(7*d) + (a^3*sin(c + d*x))/d - (a^3*sin(c + d*x)^3)/d + (a*b^2*sin(c + d*x)^3)/d + (3*a^3*sin(c + d*x)^5)/(5*d) - (6*a*b^2*sin(c + d*x)^5)/(5*d) - (a^3*sin(c + d*x)^7)/(7*d) + (3*a*b^2*sin(c + d*x)^7)/(7*d)]
    @test_int [cos(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 15, (5*a^3*x)/16 + (3/16)*a*b^2*x - (a^2*b*cos(c + d*x)^6)/(2*d) + (5*a^3*cos(c + d*x)*sin(c + d*x))/(16*d) + (3*a*b^2*cos(c + d*x)*sin(c + d*x))/(16*d) + (5*a^3*cos(c + d*x)^3*sin(c + d*x))/(24*d) + (a*b^2*cos(c + d*x)^3*sin(c + d*x))/(8*d) + (a^3*cos(c + d*x)^5*sin(c + d*x))/(6*d) - (a*b^2*cos(c + d*x)^5*sin(c + d*x))/(2*d) + (b^3*sin(c + d*x)^4)/(4*d) - (b^3*sin(c + d*x)^6)/(6*d)]
    @test_int [cos(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 12, -((b^3*cos(c + d*x)^3)/(3*d)) - (3*a^2*b*cos(c + d*x)^5)/(5*d) + (b^3*cos(c + d*x)^5)/(5*d) + (a^3*sin(c + d*x))/d - (2*a^3*sin(c + d*x)^3)/(3*d) + (a*b^2*sin(c + d*x)^3)/d + (a^3*sin(c + d*x)^5)/(5*d) - (3*a*b^2*sin(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 4, (3/8)*a*(a^2 + b^2)*x + (3*a*(b + a*cot(c + d*x))*(a - b*cot(c + d*x))*sin(c + d*x)^2)/(8*d) + ((b + a*cot(c + d*x))^3*sin(c + d*x)^4)/(4*d)]
    @test_int [cos(c + d*x)^0*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 2, -(((a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x)))/d) + (b*cos(c + d*x) - a*sin(c + d*x))^3/(3*d)]
    @test_int [sec(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 7, (1/2)*a*(a^2 + 3*b^2)*x - (b^3*log(sin(c + d*x)))/d + (b^3*log(tan(c + d*x)))/d + ((b*(3*a^2 - b^2) + a*(a^2 - 3*b^2)*cot(c + d*x))*sin(c + d*x)^2)/(2*d)]
    @test_int [sec(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 10, (3*a*b^2*atanh(sin(c + d*x)))/d - (3*a^2*b*cos(c + d*x))/d + (b^3*cos(c + d*x))/d + (b^3*sec(c + d*x))/d + (a^3*sin(c + d*x))/d - (3*a*b^2*sin(c + d*x))/d]
    @test_int [sec(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 4, a*(a^2 - 3*b^2)*x - (b*(3*a^2 - b^2)*log(cos(c + d*x)))/d + (2*a*b^2*tan(c + d*x))/d + (b*(a + b*tan(c + d*x))^2)/(2*d)]
    @test_int [sec(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 9, (a^3*atanh(sin(c + d*x)))/d - (3*a*b^2*atanh(sin(c + d*x)))/(2*d) + (3*a^2*b*sec(c + d*x))/d - (b^3*sec(c + d*x))/d + (b^3*sec(c + d*x)^3)/(3*d) + (3*a*b^2*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [sec(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 2, ((b + a*cot(c + d*x))^4*tan(c + d*x)^4)/(4*b*d)]
    @test_int [sec(c + d*x)^6*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 12, (a^3*atanh(sin(c + d*x)))/(2*d) - (3*a*b^2*atanh(sin(c + d*x)))/(8*d) + (a^2*b*sec(c + d*x)^3)/d - (b^3*sec(c + d*x)^3)/(3*d) + (b^3*sec(c + d*x)^5)/(5*d) + (a^3*sec(c + d*x)*tan(c + d*x))/(2*d) - (3*a*b^2*sec(c + d*x)*tan(c + d*x))/(8*d) + (3*a*b^2*sec(c + d*x)^3*tan(c + d*x))/(4*d)]
    @test_int [sec(c + d*x)^7*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 3, (a^3*tan(c + d*x))/d + (3*a^2*b*tan(c + d*x)^2)/(2*d) + (a*(a^2 + 3*b^2)*tan(c + d*x)^3)/(3*d) + (b*(3*a^2 + b^2)*tan(c + d*x)^4)/(4*d) + (3*a*b^2*tan(c + d*x)^5)/(5*d) + (b^3*tan(c + d*x)^6)/(6*d)]
    @test_int [sec(c + d*x)^8*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 14, (3*a^3*atanh(sin(c + d*x)))/(8*d) - (3*a*b^2*atanh(sin(c + d*x)))/(16*d) + (3*a^2*b*sec(c + d*x)^5)/(5*d) - (b^3*sec(c + d*x)^5)/(5*d) + (b^3*sec(c + d*x)^7)/(7*d) + (3*a^3*sec(c + d*x)*tan(c + d*x))/(8*d) - (3*a*b^2*sec(c + d*x)*tan(c + d*x))/(16*d) + (a^3*sec(c + d*x)^3*tan(c + d*x))/(4*d) - (a*b^2*sec(c + d*x)^3*tan(c + d*x))/(8*d) + (a*b^2*sec(c + d*x)^5*tan(c + d*x))/(2*d)]
    @test_int [sec(c + d*x)^9*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 3, (a^3*tan(c + d*x))/d + (3*a^2*b*tan(c + d*x)^2)/(2*d) + (a*(2*a^2 + 3*b^2)*tan(c + d*x)^3)/(3*d) + (b*(6*a^2 + b^2)*tan(c + d*x)^4)/(4*d) + (a*(a^2 + 6*b^2)*tan(c + d*x)^5)/(5*d) + (b*(3*a^2 + 2*b^2)*tan(c + d*x)^6)/(6*d) + (3*a*b^2*tan(c + d*x)^7)/(7*d) + (b^3*tan(c + d*x)^8)/(8*d)]
    @test_int [sec(c + d*x)^10*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 16, (5*a^3*atanh(sin(c + d*x)))/(16*d) - (15*a*b^2*atanh(sin(c + d*x)))/(128*d) + (3*a^2*b*sec(c + d*x)^7)/(7*d) - (b^3*sec(c + d*x)^7)/(7*d) + (b^3*sec(c + d*x)^9)/(9*d) + (5*a^3*sec(c + d*x)*tan(c + d*x))/(16*d) - (15*a*b^2*sec(c + d*x)*tan(c + d*x))/(128*d) + (5*a^3*sec(c + d*x)^3*tan(c + d*x))/(24*d) - (5*a*b^2*sec(c + d*x)^3*tan(c + d*x))/(64*d) + (a^3*sec(c + d*x)^5*tan(c + d*x))/(6*d) - (a*b^2*sec(c + d*x)^5*tan(c + d*x))/(16*d) + (3*a*b^2*sec(c + d*x)^7*tan(c + d*x))/(8*d)]
    @test_int [sec(c + d*x)^11*(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 3, (a^3*tan(c + d*x))/d + (3*a^2*b*tan(c + d*x)^2)/(2*d) + (a*(a^2 + b^2)*tan(c + d*x)^3)/d + (b*(9*a^2 + b^2)*tan(c + d*x)^4)/(4*d) + (3*a*(a^2 + 3*b^2)*tan(c + d*x)^5)/(5*d) + (b*(3*a^2 + b^2)*tan(c + d*x)^6)/(2*d) + (a*(a^2 + 9*b^2)*tan(c + d*x)^7)/(7*d) + (3*b*(a^2 + b^2)*tan(c + d*x)^8)/(8*d) + (a*b^2*tan(c + d*x)^9)/(3*d) + (b^3*tan(c + d*x)^10)/(10*d)]


    @test_int [cos(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 15, -((4*a*b^3*cos(c + d*x)^7)/(7*d)) - (4*a^3*b*cos(c + d*x)^9)/(9*d) + (4*a*b^3*cos(c + d*x)^9)/(9*d) + (a^4*sin(c + d*x))/d - (4*a^4*sin(c + d*x)^3)/(3*d) + (2*a^2*b^2*sin(c + d*x)^3)/d + (6*a^4*sin(c + d*x)^5)/(5*d) - (18*a^2*b^2*sin(c + d*x)^5)/(5*d) + (b^4*sin(c + d*x)^5)/(5*d) - (4*a^4*sin(c + d*x)^7)/(7*d) + (18*a^2*b^2*sin(c + d*x)^7)/(7*d) - (2*b^4*sin(c + d*x)^7)/(7*d) + (a^4*sin(c + d*x)^9)/(9*d) - (2*a^2*b^2*sin(c + d*x)^9)/(3*d) + (b^4*sin(c + d*x)^9)/(9*d)]
    @test_int [cos(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 22, (35*a^4*x)/128 + (15/64)*a^2*b^2*x + (3*b^4*x)/128 - (2*a*b^3*cos(c + d*x)^6)/(3*d) - (a^3*b*cos(c + d*x)^8)/(2*d) + (a*b^3*cos(c + d*x)^8)/(2*d) + (35*a^4*cos(c + d*x)*sin(c + d*x))/(128*d) + (15*a^2*b^2*cos(c + d*x)*sin(c + d*x))/(64*d) + (3*b^4*cos(c + d*x)*sin(c + d*x))/(128*d) + (35*a^4*cos(c + d*x)^3*sin(c + d*x))/(192*d) + (5*a^2*b^2*cos(c + d*x)^3*sin(c + d*x))/(32*d) + (b^4*cos(c + d*x)^3*sin(c + d*x))/(64*d) + (7*a^4*cos(c + d*x)^5*sin(c + d*x))/(48*d) + (a^2*b^2*cos(c + d*x)^5*sin(c + d*x))/(8*d) - (b^4*cos(c + d*x)^5*sin(c + d*x))/(16*d) + (a^4*cos(c + d*x)^7*sin(c + d*x))/(8*d) - (3*a^2*b^2*cos(c + d*x)^7*sin(c + d*x))/(4*d) - (b^4*cos(c + d*x)^5*sin(c + d*x)^3)/(8*d)]
    @test_int [cos(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 15, -((4*a*b^3*cos(c + d*x)^5)/(5*d)) - (4*a^3*b*cos(c + d*x)^7)/(7*d) + (4*a*b^3*cos(c + d*x)^7)/(7*d) + (a^4*sin(c + d*x))/d - (a^4*sin(c + d*x)^3)/d + (2*a^2*b^2*sin(c + d*x)^3)/d + (3*a^4*sin(c + d*x)^5)/(5*d) - (12*a^2*b^2*sin(c + d*x)^5)/(5*d) + (b^4*sin(c + d*x)^5)/(5*d) - (a^4*sin(c + d*x)^7)/(7*d) + (6*a^2*b^2*sin(c + d*x)^7)/(7*d) - (b^4*sin(c + d*x)^7)/(7*d)]
    @test_int [cos(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 19, (5*a^4*x)/16 + (3/8)*a^2*b^2*x + (b^4*x)/16 - (2*a^3*b*cos(c + d*x)^6)/(3*d) + (5*a^4*cos(c + d*x)*sin(c + d*x))/(16*d) + (3*a^2*b^2*cos(c + d*x)*sin(c + d*x))/(8*d) + (b^4*cos(c + d*x)*sin(c + d*x))/(16*d) + (5*a^4*cos(c + d*x)^3*sin(c + d*x))/(24*d) + (a^2*b^2*cos(c + d*x)^3*sin(c + d*x))/(4*d) - (b^4*cos(c + d*x)^3*sin(c + d*x))/(8*d) + (a^4*cos(c + d*x)^5*sin(c + d*x))/(6*d) - (a^2*b^2*cos(c + d*x)^5*sin(c + d*x))/d - (b^4*cos(c + d*x)^3*sin(c + d*x)^3)/(6*d) + (a*b^3*sin(c + d*x)^4)/d - (2*a*b^3*sin(c + d*x)^6)/(3*d)]
    @test_int [cos(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 14, -((4*a*b^3*cos(c + d*x)^3)/(3*d)) - (4*a^3*b*cos(c + d*x)^5)/(5*d) + (4*a*b^3*cos(c + d*x)^5)/(5*d) + (a^4*sin(c + d*x))/d - (2*a^4*sin(c + d*x)^3)/(3*d) + (2*a^2*b^2*sin(c + d*x)^3)/d + (a^4*sin(c + d*x)^5)/(5*d) - (6*a^2*b^2*sin(c + d*x)^5)/(5*d) + (b^4*sin(c + d*x)^5)/(5*d)]
    @test_int [cos(c + d*x)^0*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 3, (3/8)*(a^2 + b^2)^2*x - (3*(a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x)))/(8*d) - ((b*cos(c + d*x) - a*sin(c + d*x))*(a*cos(c + d*x) + b*sin(c + d*x))^3)/(4*d)]
    @test_int [sec(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 14, (b^4*atanh(sin(c + d*x)))/d - (4*a*b^3*cos(c + d*x))/d - (4*a^3*b*cos(c + d*x)^3)/(3*d) + (4*a*b^3*cos(c + d*x)^3)/(3*d) + (a^4*sin(c + d*x))/d - (b^4*sin(c + d*x))/d - (a^4*sin(c + d*x)^3)/(3*d) + (2*a^2*b^2*sin(c + d*x)^3)/d - (b^4*sin(c + d*x)^3)/(3*d)]
    @test_int [sec(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 7, (1/2)*(a^4 + 6*a^2*b^2 - 3*b^4)*x - (4*a*b^3*log(sin(c + d*x)))/d + (4*a*b^3*log(tan(c + d*x)))/d + ((4*a*b*(a^2 - b^2) + (a^4 - 6*a^2*b^2 + b^4)*cot(c + d*x))*sin(c + d*x)^2)/(2*d) + (b^4*tan(c + d*x))/d]
    @test_int [sec(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 14, (6*a^2*b^2*atanh(sin(c + d*x)))/d - (3*b^4*atanh(sin(c + d*x)))/(2*d) - (4*a^3*b*cos(c + d*x))/d + (4*a*b^3*cos(c + d*x))/d + (4*a*b^3*sec(c + d*x))/d + (a^4*sin(c + d*x))/d - (6*a^2*b^2*sin(c + d*x))/d + (3*b^4*sin(c + d*x))/(2*d) + (b^4*sin(c + d*x)*tan(c + d*x)^2)/(2*d)]
    @test_int [sec(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 5, (a^4 - 6*a^2*b^2 + b^4)*x - (4*a*b*(a^2 - b^2)*log(cos(c + d*x)))/d + (b^2*(3*a^2 - b^2)*tan(c + d*x))/d + (a*b*(a + b*tan(c + d*x))^2)/d + (b*(a + b*tan(c + d*x))^3)/(3*d)]
    @test_int [sec(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 12, (a^4*atanh(sin(c + d*x)))/d - (3*a^2*b^2*atanh(sin(c + d*x)))/d + (3*b^4*atanh(sin(c + d*x)))/(8*d) + (4*a^3*b*sec(c + d*x))/d - (4*a*b^3*sec(c + d*x))/d + (4*a*b^3*sec(c + d*x)^3)/(3*d) + (3*a^2*b^2*sec(c + d*x)*tan(c + d*x))/d - (3*b^4*sec(c + d*x)*tan(c + d*x))/(8*d) + (b^4*sec(c + d*x)*tan(c + d*x)^3)/(4*d)]
    @test_int [sec(c + d*x)^6*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 2, ((b + a*cot(c + d*x))^5*tan(c + d*x)^5)/(5*b*d)]
    @test_int [sec(c + d*x)^7*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 16, (a^4*atanh(sin(c + d*x)))/(2*d) - (3*a^2*b^2*atanh(sin(c + d*x)))/(4*d) + (b^4*atanh(sin(c + d*x)))/(16*d) + (4*a^3*b*sec(c + d*x)^3)/(3*d) - (4*a*b^3*sec(c + d*x)^3)/(3*d) + (4*a*b^3*sec(c + d*x)^5)/(5*d) + (a^4*sec(c + d*x)*tan(c + d*x))/(2*d) - (3*a^2*b^2*sec(c + d*x)*tan(c + d*x))/(4*d) + (b^4*sec(c + d*x)*tan(c + d*x))/(16*d) + (3*a^2*b^2*sec(c + d*x)^3*tan(c + d*x))/(2*d) - (b^4*sec(c + d*x)^3*tan(c + d*x))/(8*d) + (b^4*sec(c + d*x)^3*tan(c + d*x)^3)/(6*d)]
    @test_int [sec(c + d*x)^8*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 3, (a^4*tan(c + d*x))/d + (2*a^3*b*tan(c + d*x)^2)/d + (a^2*(a^2 + 6*b^2)*tan(c + d*x)^3)/(3*d) + (a*b*(a^2 + b^2)*tan(c + d*x)^4)/d + (b^2*(6*a^2 + b^2)*tan(c + d*x)^5)/(5*d) + (2*a*b^3*tan(c + d*x)^6)/(3*d) + (b^4*tan(c + d*x)^7)/(7*d)]
    @test_int [sec(c + d*x)^9*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 19, (3*a^4*atanh(sin(c + d*x)))/(8*d) - (3*a^2*b^2*atanh(sin(c + d*x)))/(8*d) + (3*b^4*atanh(sin(c + d*x)))/(128*d) + (4*a^3*b*sec(c + d*x)^5)/(5*d) - (4*a*b^3*sec(c + d*x)^5)/(5*d) + (4*a*b^3*sec(c + d*x)^7)/(7*d) + (3*a^4*sec(c + d*x)*tan(c + d*x))/(8*d) - (3*a^2*b^2*sec(c + d*x)*tan(c + d*x))/(8*d) + (3*b^4*sec(c + d*x)*tan(c + d*x))/(128*d) + (a^4*sec(c + d*x)^3*tan(c + d*x))/(4*d) - (a^2*b^2*sec(c + d*x)^3*tan(c + d*x))/(4*d) + (b^4*sec(c + d*x)^3*tan(c + d*x))/(64*d) + (a^2*b^2*sec(c + d*x)^5*tan(c + d*x))/d - (b^4*sec(c + d*x)^5*tan(c + d*x))/(16*d) + (b^4*sec(c + d*x)^5*tan(c + d*x)^3)/(8*d)]
    @test_int [sec(c + d*x)^10*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 3, (a^4*tan(c + d*x))/d + (2*a^3*b*tan(c + d*x)^2)/d + (2*a^2*(a^2 + 3*b^2)*tan(c + d*x)^3)/(3*d) + (a*b*(2*a^2 + b^2)*tan(c + d*x)^4)/d + ((a^4 + 12*a^2*b^2 + b^4)*tan(c + d*x)^5)/(5*d) + (2*a*b*(a^2 + 2*b^2)*tan(c + d*x)^6)/(3*d) + (2*b^2*(3*a^2 + b^2)*tan(c + d*x)^7)/(7*d) + (a*b^3*tan(c + d*x)^8)/(2*d) + (b^4*tan(c + d*x)^9)/(9*d)]
    @test_int [sec(c + d*x)^11*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 22, (5*a^4*atanh(sin(c + d*x)))/(16*d) - (15*a^2*b^2*atanh(sin(c + d*x)))/(64*d) + (3*b^4*atanh(sin(c + d*x)))/(256*d) + (4*a^3*b*sec(c + d*x)^7)/(7*d) - (4*a*b^3*sec(c + d*x)^7)/(7*d) + (4*a*b^3*sec(c + d*x)^9)/(9*d) + (5*a^4*sec(c + d*x)*tan(c + d*x))/(16*d) - (15*a^2*b^2*sec(c + d*x)*tan(c + d*x))/(64*d) + (3*b^4*sec(c + d*x)*tan(c + d*x))/(256*d) + (5*a^4*sec(c + d*x)^3*tan(c + d*x))/(24*d) - (5*a^2*b^2*sec(c + d*x)^3*tan(c + d*x))/(32*d) + (b^4*sec(c + d*x)^3*tan(c + d*x))/(128*d) + (a^4*sec(c + d*x)^5*tan(c + d*x))/(6*d) - (a^2*b^2*sec(c + d*x)^5*tan(c + d*x))/(8*d) + (b^4*sec(c + d*x)^5*tan(c + d*x))/(160*d) + (3*a^2*b^2*sec(c + d*x)^7*tan(c + d*x))/(4*d) - (3*b^4*sec(c + d*x)^7*tan(c + d*x))/(80*d) + (b^4*sec(c + d*x)^7*tan(c + d*x)^3)/(10*d)]
    @test_int [sec(c + d*x)^12*(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 3, (a^4*tan(c + d*x))/d + (2*a^3*b*tan(c + d*x)^2)/d + (a^2*(a^2 + 2*b^2)*tan(c + d*x)^3)/d + (a*b*(3*a^2 + b^2)*tan(c + d*x)^4)/d + ((3*a^4 + 18*a^2*b^2 + b^4)*tan(c + d*x)^5)/(5*d) + (2*a*b*(a^2 + b^2)*tan(c + d*x)^6)/d + ((a^4 + 18*a^2*b^2 + 3*b^4)*tan(c + d*x)^7)/(7*d) + (a*b*(a^2 + 3*b^2)*tan(c + d*x)^8)/(2*d) + (b^2*(2*a^2 + b^2)*tan(c + d*x)^9)/(3*d) + (2*a*b^3*tan(c + d*x)^10)/(5*d) + (b^4*tan(c + d*x)^11)/(11*d)]


    @test_int [cos(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 29, (63*a^5*x)/256 + (35/128)*a^3*b^2*x + (15/256)*a*b^4*x - (5*a^2*b^3*cos(c + d*x)^8)/(4*d) - (a^4*b*cos(c + d*x)^10)/(2*d) + (a^2*b^3*cos(c + d*x)^10)/d + (63*a^5*cos(c + d*x)*sin(c + d*x))/(256*d) + (35*a^3*b^2*cos(c + d*x)*sin(c + d*x))/(128*d) + (15*a*b^4*cos(c + d*x)*sin(c + d*x))/(256*d) + (21*a^5*cos(c + d*x)^3*sin(c + d*x))/(128*d) + (35*a^3*b^2*cos(c + d*x)^3*sin(c + d*x))/(192*d) + (5*a*b^4*cos(c + d*x)^3*sin(c + d*x))/(128*d) + (21*a^5*cos(c + d*x)^5*sin(c + d*x))/(160*d) + (7*a^3*b^2*cos(c + d*x)^5*sin(c + d*x))/(48*d) + (a*b^4*cos(c + d*x)^5*sin(c + d*x))/(32*d) + (9*a^5*cos(c + d*x)^7*sin(c + d*x))/(80*d) + (a^3*b^2*cos(c + d*x)^7*sin(c + d*x))/(8*d) - (3*a*b^4*cos(c + d*x)^7*sin(c + d*x))/(16*d) + (a^5*cos(c + d*x)^9*sin(c + d*x))/(10*d) - (a^3*b^2*cos(c + d*x)^9*sin(c + d*x))/d - (a*b^4*cos(c + d*x)^7*sin(c + d*x)^3)/(2*d) + (b^5*sin(c + d*x)^6)/(6*d) - (b^5*sin(c + d*x)^8)/(4*d) + (b^5*sin(c + d*x)^10)/(10*d)]
    @test_int [cos(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 18, -((b^5*cos(c + d*x)^5)/(5*d)) - (10*a^2*b^3*cos(c + d*x)^7)/(7*d) + (2*b^5*cos(c + d*x)^7)/(7*d) - (5*a^4*b*cos(c + d*x)^9)/(9*d) + (10*a^2*b^3*cos(c + d*x)^9)/(9*d) - (b^5*cos(c + d*x)^9)/(9*d) + (a^5*sin(c + d*x))/d - (4*a^5*sin(c + d*x)^3)/(3*d) + (10*a^3*b^2*sin(c + d*x)^3)/(3*d) + (6*a^5*sin(c + d*x)^5)/(5*d) - (6*a^3*b^2*sin(c + d*x)^5)/d + (a*b^4*sin(c + d*x)^5)/d - (4*a^5*sin(c + d*x)^7)/(7*d) + (30*a^3*b^2*sin(c + d*x)^7)/(7*d) - (10*a*b^4*sin(c + d*x)^7)/(7*d) + (a^5*sin(c + d*x)^9)/(9*d) - (10*a^3*b^2*sin(c + d*x)^9)/(9*d) + (5*a*b^4*sin(c + d*x)^9)/(9*d)]
    @test_int [cos(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 25, (35*a^5*x)/128 + (25/64)*a^3*b^2*x + (15/128)*a*b^4*x - (5*a^2*b^3*cos(c + d*x)^6)/(3*d) - (5*a^4*b*cos(c + d*x)^8)/(8*d) + (5*a^2*b^3*cos(c + d*x)^8)/(4*d) + (35*a^5*cos(c + d*x)*sin(c + d*x))/(128*d) + (25*a^3*b^2*cos(c + d*x)*sin(c + d*x))/(64*d) + (15*a*b^4*cos(c + d*x)*sin(c + d*x))/(128*d) + (35*a^5*cos(c + d*x)^3*sin(c + d*x))/(192*d) + (25*a^3*b^2*cos(c + d*x)^3*sin(c + d*x))/(96*d) + (5*a*b^4*cos(c + d*x)^3*sin(c + d*x))/(64*d) + (7*a^5*cos(c + d*x)^5*sin(c + d*x))/(48*d) + (5*a^3*b^2*cos(c + d*x)^5*sin(c + d*x))/(24*d) - (5*a*b^4*cos(c + d*x)^5*sin(c + d*x))/(16*d) + (a^5*cos(c + d*x)^7*sin(c + d*x))/(8*d) - (5*a^3*b^2*cos(c + d*x)^7*sin(c + d*x))/(4*d) - (5*a*b^4*cos(c + d*x)^5*sin(c + d*x)^3)/(8*d) + (b^5*sin(c + d*x)^6)/(6*d) - (b^5*sin(c + d*x)^8)/(8*d)]
    @test_int [cos(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 18, -((b^5*cos(c + d*x)^3)/(3*d)) - (2*a^2*b^3*cos(c + d*x)^5)/d + (2*b^5*cos(c + d*x)^5)/(5*d) - (5*a^4*b*cos(c + d*x)^7)/(7*d) + (10*a^2*b^3*cos(c + d*x)^7)/(7*d) - (b^5*cos(c + d*x)^7)/(7*d) + (a^5*sin(c + d*x))/d - (a^5*sin(c + d*x)^3)/d + (10*a^3*b^2*sin(c + d*x)^3)/(3*d) + (3*a^5*sin(c + d*x)^5)/(5*d) - (4*a^3*b^2*sin(c + d*x)^5)/d + (a*b^4*sin(c + d*x)^5)/d - (a^5*sin(c + d*x)^7)/(7*d) + (10*a^3*b^2*sin(c + d*x)^7)/(7*d) - (5*a*b^4*sin(c + d*x)^7)/(7*d)]
    @test_int [cos(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 5, (5/16)*a*(a^2 + b^2)^2*x + (5*a*(a^2 + b^2)*(b + a*cot(c + d*x))*(a - b*cot(c + d*x))*sin(c + d*x)^2)/(16*d) + (5*a*(b + a*cot(c + d*x))^3*(a - b*cot(c + d*x))*sin(c + d*x)^4)/(24*d) + ((b + a*cot(c + d*x))^5*sin(c + d*x)^6)/(6*d)]
    @test_int [cos(c + d*x)^0*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 3, -(((a^2 + b^2)^2*(b*cos(c + d*x) - a*sin(c + d*x)))/d) + (2*(a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x))^3)/(3*d) - (b*cos(c + d*x) - a*sin(c + d*x))^5/(5*d)]
    @test_int [sec(c + d*x)^1*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 8, (1/8)*a*(3*a^4 + 10*a^2*b^2 + 15*b^4)*x - (b^5*log(sin(c + d*x)))/d + (b^5*log(tan(c + d*x)))/d + ((4*b*(5*a^4 - b^4) + 5*a*(a^2 - 3*b^2)*(a^2 + b^2)*cot(c + d*x))*sin(c + d*x)^2)/(8*d) - ((b*(5*a^4 - 10*a^2*b^2 + b^4) + a*(a^4 - 10*a^2*b^2 + 5*b^4)*cot(c + d*x))*sin(c + d*x)^4)/(4*d)]
    @test_int [sec(c + d*x)^2*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 17, (5*a*b^4*atanh(sin(c + d*x)))/d - (10*a^2*b^3*cos(c + d*x))/d + (2*b^5*cos(c + d*x))/d - (5*a^4*b*cos(c + d*x)^3)/(3*d) + (10*a^2*b^3*cos(c + d*x)^3)/(3*d) - (b^5*cos(c + d*x)^3)/(3*d) + (b^5*sec(c + d*x))/d + (a^5*sin(c + d*x))/d - (5*a*b^4*sin(c + d*x))/d - (a^5*sin(c + d*x)^3)/(3*d) + (10*a^3*b^2*sin(c + d*x)^3)/(3*d) - (5*a*b^4*sin(c + d*x)^3)/(3*d)]
    @test_int [sec(c + d*x)^3*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 7, (1/2)*a*(a^4 + 10*a^2*b^2 - 15*b^4)*x - (2*b^3*(5*a^2 - b^2)*log(sin(c + d*x)))/d + (2*b^3*(5*a^2 - b^2)*log(tan(c + d*x)))/d + ((b*(5*a^4 - 10*a^2*b^2 + b^4) + a*(a^4 - 10*a^2*b^2 + 5*b^4)*cot(c + d*x))*sin(c + d*x)^2)/(2*d) + (5*a*b^4*tan(c + d*x))/d + (b^5*tan(c + d*x)^2)/(2*d)]
    @test_int [sec(c + d*x)^4*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 17, (10*a^3*b^2*atanh(sin(c + d*x)))/d - (15*a*b^4*atanh(sin(c + d*x)))/(2*d) - (5*a^4*b*cos(c + d*x))/d + (10*a^2*b^3*cos(c + d*x))/d - (b^5*cos(c + d*x))/d + (10*a^2*b^3*sec(c + d*x))/d - (2*b^5*sec(c + d*x))/d + (b^5*sec(c + d*x)^3)/(3*d) + (a^5*sin(c + d*x))/d - (10*a^3*b^2*sin(c + d*x))/d + (15*a*b^4*sin(c + d*x))/(2*d) + (5*a*b^4*sin(c + d*x)*tan(c + d*x)^2)/(2*d)]
    @test_int [sec(c + d*x)^5*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 6, a*(a^4 - 10*a^2*b^2 + 5*b^4)*x - (b*(5*a^4 - 10*a^2*b^2 + b^4)*log(cos(c + d*x)))/d + (4*a*b^2*(a^2 - b^2)*tan(c + d*x))/d + (b*(3*a^2 - b^2)*(a + b*tan(c + d*x))^2)/(2*d) + (2*a*b*(a + b*tan(c + d*x))^3)/(3*d) + (b*(a + b*tan(c + d*x))^4)/(4*d)]
    @test_int [sec(c + d*x)^6*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 15, (a^5*atanh(sin(c + d*x)))/d - (5*a^3*b^2*atanh(sin(c + d*x)))/d + (15*a*b^4*atanh(sin(c + d*x)))/(8*d) + (5*a^4*b*sec(c + d*x))/d - (10*a^2*b^3*sec(c + d*x))/d + (b^5*sec(c + d*x))/d + (10*a^2*b^3*sec(c + d*x)^3)/(3*d) - (2*b^5*sec(c + d*x)^3)/(3*d) + (b^5*sec(c + d*x)^5)/(5*d) + (5*a^3*b^2*sec(c + d*x)*tan(c + d*x))/d - (15*a*b^4*sec(c + d*x)*tan(c + d*x))/(8*d) + (5*a*b^4*sec(c + d*x)*tan(c + d*x)^3)/(4*d)]
    @test_int [sec(c + d*x)^7*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 2, ((b + a*cot(c + d*x))^6*tan(c + d*x)^6)/(6*b*d)]
    @test_int [sec(c + d*x)^8*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 19, (a^5*atanh(sin(c + d*x)))/(2*d) - (5*a^3*b^2*atanh(sin(c + d*x)))/(4*d) + (5*a*b^4*atanh(sin(c + d*x)))/(16*d) + (5*a^4*b*sec(c + d*x)^3)/(3*d) - (10*a^2*b^3*sec(c + d*x)^3)/(3*d) + (b^5*sec(c + d*x)^3)/(3*d) + (2*a^2*b^3*sec(c + d*x)^5)/d - (2*b^5*sec(c + d*x)^5)/(5*d) + (b^5*sec(c + d*x)^7)/(7*d) + (a^5*sec(c + d*x)*tan(c + d*x))/(2*d) - (5*a^3*b^2*sec(c + d*x)*tan(c + d*x))/(4*d) + (5*a*b^4*sec(c + d*x)*tan(c + d*x))/(16*d) + (5*a^3*b^2*sec(c + d*x)^3*tan(c + d*x))/(2*d) - (5*a*b^4*sec(c + d*x)^3*tan(c + d*x))/(8*d) + (5*a*b^4*sec(c + d*x)^3*tan(c + d*x)^3)/(6*d)]
    @test_int [sec(c + d*x)^9*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 3, (a^5*tan(c + d*x))/d + (5*a^4*b*tan(c + d*x)^2)/(2*d) + (a^3*(a^2 + 10*b^2)*tan(c + d*x)^3)/(3*d) + (5*a^2*b*(a^2 + 2*b^2)*tan(c + d*x)^4)/(4*d) + (a*b^2*(2*a^2 + b^2)*tan(c + d*x)^5)/d + (b^3*(10*a^2 + b^2)*tan(c + d*x)^6)/(6*d) + (5*a*b^4*tan(c + d*x)^7)/(7*d) + (b^5*tan(c + d*x)^8)/(8*d)]
    @test_int [sec(c + d*x)^10*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 22, (3*a^5*atanh(sin(c + d*x)))/(8*d) - (5*a^3*b^2*atanh(sin(c + d*x)))/(8*d) + (15*a*b^4*atanh(sin(c + d*x)))/(128*d) + (a^4*b*sec(c + d*x)^5)/d - (2*a^2*b^3*sec(c + d*x)^5)/d + (b^5*sec(c + d*x)^5)/(5*d) + (10*a^2*b^3*sec(c + d*x)^7)/(7*d) - (2*b^5*sec(c + d*x)^7)/(7*d) + (b^5*sec(c + d*x)^9)/(9*d) + (3*a^5*sec(c + d*x)*tan(c + d*x))/(8*d) - (5*a^3*b^2*sec(c + d*x)*tan(c + d*x))/(8*d) + (15*a*b^4*sec(c + d*x)*tan(c + d*x))/(128*d) + (a^5*sec(c + d*x)^3*tan(c + d*x))/(4*d) - (5*a^3*b^2*sec(c + d*x)^3*tan(c + d*x))/(12*d) + (5*a*b^4*sec(c + d*x)^3*tan(c + d*x))/(64*d) + (5*a^3*b^2*sec(c + d*x)^5*tan(c + d*x))/(3*d) - (5*a*b^4*sec(c + d*x)^5*tan(c + d*x))/(16*d) + (5*a*b^4*sec(c + d*x)^5*tan(c + d*x)^3)/(8*d)]
    @test_int [sec(c + d*x)^11*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 3, (a^5*tan(c + d*x))/d + (5*a^4*b*tan(c + d*x)^2)/(2*d) + (2*a^3*(a^2 + 5*b^2)*tan(c + d*x)^3)/(3*d) + (5*a^2*b*(a^2 + b^2)*tan(c + d*x)^4)/(2*d) + (a*(a^4 + 20*a^2*b^2 + 5*b^4)*tan(c + d*x)^5)/(5*d) + (b*(5*a^4 + 20*a^2*b^2 + b^4)*tan(c + d*x)^6)/(6*d) + (10*a*b^2*(a^2 + b^2)*tan(c + d*x)^7)/(7*d) + (b^3*(5*a^2 + b^2)*tan(c + d*x)^8)/(4*d) + (5*a*b^4*tan(c + d*x)^9)/(9*d) + (b^5*tan(c + d*x)^10)/(10*d)]
    @test_int [sec(c + d*x)^12*(a*cos(c + d*x) + b*sin(c + d*x))^5, x, 25, (5*a^5*atanh(sin(c + d*x)))/(16*d) - (25*a^3*b^2*atanh(sin(c + d*x)))/(64*d) + (15*a*b^4*atanh(sin(c + d*x)))/(256*d) + (5*a^4*b*sec(c + d*x)^7)/(7*d) - (10*a^2*b^3*sec(c + d*x)^7)/(7*d) + (b^5*sec(c + d*x)^7)/(7*d) + (10*a^2*b^3*sec(c + d*x)^9)/(9*d) - (2*b^5*sec(c + d*x)^9)/(9*d) + (b^5*sec(c + d*x)^11)/(11*d) + (5*a^5*sec(c + d*x)*tan(c + d*x))/(16*d) - (25*a^3*b^2*sec(c + d*x)*tan(c + d*x))/(64*d) + (15*a*b^4*sec(c + d*x)*tan(c + d*x))/(256*d) + (5*a^5*sec(c + d*x)^3*tan(c + d*x))/(24*d) - (25*a^3*b^2*sec(c + d*x)^3*tan(c + d*x))/(96*d) + (5*a*b^4*sec(c + d*x)^3*tan(c + d*x))/(128*d) + (a^5*sec(c + d*x)^5*tan(c + d*x))/(6*d) - (5*a^3*b^2*sec(c + d*x)^5*tan(c + d*x))/(24*d) + (a*b^4*sec(c + d*x)^5*tan(c + d*x))/(32*d) + (5*a^3*b^2*sec(c + d*x)^7*tan(c + d*x))/(4*d) - (3*a*b^4*sec(c + d*x)^7*tan(c + d*x))/(16*d) + (a*b^4*sec(c + d*x)^7*tan(c + d*x)^3)/(2*d)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cos(c + d*x)^5/(a*cos(c + d*x) + b*sin(c + d*x)), x, 9, (a*b^4*x)/(a^2 + b^2)^3 + (a*b^2*x)/(2*(a^2 + b^2)^2) + (3*a*x)/(8*(a^2 + b^2)) + (b^3*cos(c + d*x)^2)/(2*(a^2 + b^2)^2*d) + (b*cos(c + d*x)^4)/(4*(a^2 + b^2)*d) + (b^5*log(a*cos(c + d*x) + b*sin(c + d*x)))/((a^2 + b^2)^3*d) + (a*b^2*cos(c + d*x)*sin(c + d*x))/(2*(a^2 + b^2)^2*d) + (3*a*cos(c + d*x)*sin(c + d*x))/(8*(a^2 + b^2)*d) + (a*cos(c + d*x)^3*sin(c + d*x))/(4*(a^2 + b^2)*d)]
    @test_int [cos(c + d*x)^4/(a*cos(c + d*x) + b*sin(c + d*x)), x, 7, -((b^4*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/((a^2 + b^2)^(5/2)*d)) + (b^3*cos(c + d*x))/((a^2 + b^2)^2*d) + (b*cos(c + d*x)^3)/(3*(a^2 + b^2)*d) + (a*b^2*sin(c + d*x))/((a^2 + b^2)^2*d) + (a*sin(c + d*x))/((a^2 + b^2)*d) - (a*sin(c + d*x)^3)/(3*(a^2 + b^2)*d)]
    @test_int [cos(c + d*x)^3/(a*cos(c + d*x) + b*sin(c + d*x)), x, 5, (a*b^2*x)/(a^2 + b^2)^2 + (a*x)/(2*(a^2 + b^2)) + (b*cos(c + d*x)^2)/(2*(a^2 + b^2)*d) + (b^3*log(a*cos(c + d*x) + b*sin(c + d*x)))/((a^2 + b^2)^2*d) + (a*cos(c + d*x)*sin(c + d*x))/(2*(a^2 + b^2)*d)]
    @test_int [cos(c + d*x)^2/(a*cos(c + d*x) + b*sin(c + d*x)), x, 4, -((b^2*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/((a^2 + b^2)^(3/2)*d)) + (b*cos(c + d*x))/((a^2 + b^2)*d) + (a*sin(c + d*x))/((a^2 + b^2)*d)]
    @test_int [cos(c + d*x)^1/(a*cos(c + d*x) + b*sin(c + d*x)), x, 2, (a*x)/(a^2 + b^2) + (b*log(a*cos(c + d*x) + b*sin(c + d*x)))/((a^2 + b^2)*d)]
    @test_int [cos(c + d*x)^0/(a*cos(c + d*x) + b*sin(c + d*x)), x, 2, -(atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2))/(sqrt(a^2 + b^2)*d))]
    @test_int [sec(c + d*x)^1/(a*cos(c + d*x) + b*sin(c + d*x)), x, 3, -(log(cos(c + d*x))/(b*d)) + log(a*cos(c + d*x) + b*sin(c + d*x))/(b*d)]
    @test_int [sec(c + d*x)^2/(a*cos(c + d*x) + b*sin(c + d*x)), x, 4, -((a*atanh(sin(c + d*x)))/(b^2*d)) - (sqrt(a^2 + b^2)*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^2*d) + sec(c + d*x)/(b*d)]
    @test_int [sec(c + d*x)^3/(a*cos(c + d*x) + b*sin(c + d*x)), x, 6, -(((a^2 + b^2)*log(cos(c + d*x)))/(b^3*d)) + ((a^2 + b^2)*log(a*cos(c + d*x) + b*sin(c + d*x)))/(b^3*d) + sec(c + d*x)^2/(2*b*d) - (a*tan(c + d*x))/(b^2*d)]
    @test_int [sec(c + d*x)^4/(a*cos(c + d*x) + b*sin(c + d*x)), x, 7, -((a*atanh(sin(c + d*x)))/(2*b^2*d)) - (a*(a^2 + b^2)*atanh(sin(c + d*x)))/(b^4*d) - ((a^2 + b^2)^(3/2)*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^4*d) + ((a^2 + b^2)*sec(c + d*x))/(b^3*d) + sec(c + d*x)^3/(3*b*d) - (a*sec(c + d*x)*tan(c + d*x))/(2*b^2*d)]
    @test_int [sec(c + d*x)^5/(a*cos(c + d*x) + b*sin(c + d*x)), x, 9, -(((a^2 + b^2)^2*log(cos(c + d*x)))/(b^5*d)) + ((a^2 + b^2)^2*log(a*cos(c + d*x) + b*sin(c + d*x)))/(b^5*d) + ((a^2 + b^2)*sec(c + d*x)^2)/(2*b^3*d) + sec(c + d*x)^4/(4*b*d) - (a*tan(c + d*x))/(b^2*d) - (a*(a^2 + b^2)*tan(c + d*x))/(b^4*d) - (a*tan(c + d*x)^3)/(3*b^2*d)]
    @test_int [sec(c + d*x)^6/(a*cos(c + d*x) + b*sin(c + d*x)), x, 11, -((3*a*atanh(sin(c + d*x)))/(8*b^2*d)) - (a*(a^2 + b^2)*atanh(sin(c + d*x)))/(2*b^4*d) - (a*(a^2 + b^2)^2*atanh(sin(c + d*x)))/(b^6*d) - ((a^2 + b^2)^(5/2)*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^6*d) + ((a^2 + b^2)^2*sec(c + d*x))/(b^5*d) + ((a^2 + b^2)*sec(c + d*x)^3)/(3*b^3*d) + sec(c + d*x)^5/(5*b*d) - (3*a*sec(c + d*x)*tan(c + d*x))/(8*b^2*d) - (a*(a^2 + b^2)*sec(c + d*x)*tan(c + d*x))/(2*b^4*d) - (a*sec(c + d*x)^3*tan(c + d*x))/(4*b^2*d)]


    @test_int [cos(c + d*x)^4/(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 7, ((a^4 + 6*a^2*b^2 - 3*b^4)*x)/(2*(a^2 + b^2)^3) + b^4/(a*(a^2 + b^2)^2*d*(b + a*cot(c + d*x))) + (4*a*b^3*log(a*cos(c + d*x) + b*sin(c + d*x)))/((a^2 + b^2)^3*d) - ((2*a*b - (a^2 - b^2)*cot(c + d*x))*sin(c + d*x)^2)/(2*(a^2 + b^2)^2*d)]
    @test_int [cos(c + d*x)^3/(a*cos(c + d*x) + b*sin(c + d*x))^2, x, -11, -((3*a*b^2*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/((a^2 + b^2)^(5/2)*d)) + (2*a*b*cos(c + d*x))/((a^2 + b^2)^2*d) + ((a^2 - b^2)*sin(c + d*x))/((a^2 + b^2)^2*d) - b^3/((a^2 + b^2)^2*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [cos(c + d*x)^2/(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 4, ((a^2 - b^2)*x)/(a^2 + b^2)^2 + (2*a*b*log(a*cos(c + d*x) + b*sin(c + d*x)))/((a^2 + b^2)^2*d) - b/((a^2 + b^2)*d*(a + b*tan(c + d*x)))]
    @test_int [cos(c + d*x)^1/(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 3, -((a*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/((a^2 + b^2)^(3/2)*d)) - b/((a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [cos(c + d*x)^0/(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 1, sin(c + d*x)/(a*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [sec(c + d*x)^1/(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 4, atanh(sin(c + d*x))/(b^2*d) + (a*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^2*sqrt(a^2 + b^2)*d) - 1/(b*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [sec(c + d*x)^2/(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 3, (1/a + a/b^2)/(d*(b + a*cot(c + d*x))) - (2*a*log(b + a*cot(c + d*x)))/(b^3*d) - (2*a*log(tan(c + d*x)))/(b^3*d) + tan(c + d*x)/(b^2*d)]
    @test_int [sec(c + d*x)^3/(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 11, (2*a^2*atanh(sin(c + d*x)))/(b^4*d) + atanh(sin(c + d*x))/(2*b^2*d) + ((a^2 + b^2)*atanh(sin(c + d*x)))/(b^4*d) + (3*a*sqrt(a^2 + b^2)*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^4*d) - (2*a*sec(c + d*x))/(b^3*d) - (a^2 + b^2)/(b^3*d*(a*cos(c + d*x) + b*sin(c + d*x))) + (sec(c + d*x)*tan(c + d*x))/(2*b^2*d)]
    @test_int [sec(c + d*x)^4/(a*cos(c + d*x) + b*sin(c + d*x))^2, x, 3, (a^2 + b^2)^2/(a*b^4*d*(b + a*cot(c + d*x))) - (4*a*(a^2 + b^2)*log(b + a*cot(c + d*x)))/(b^5*d) - (4*a*(a^2 + b^2)*log(tan(c + d*x)))/(b^5*d) + ((3*a^2 + 2*b^2)*tan(c + d*x))/(b^4*d) - (a*tan(c + d*x)^2)/(b^3*d) + tan(c + d*x)^3/(3*b^2*d)]


    @test_int [cos(c + d*x)^4/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, -15, -((3*b^2*(4*a^2 - b^2)*atanh((b - a*tan((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/((a^2 + b^2)^(7/2)*d)) + (b*(3*a^2 - b^2)*cos(c + d*x))/((a^2 + b^2)^3*d) + (a*(a^2 - 3*b^2)*sin(c + d*x))/((a^2 + b^2)^3*d) + (b^4*sin(c + d*x))/(2*a*(a^2 + b^2)^2*d*(a*cos(c + d*x) + b*sin(c + d*x))^2) - (b^3*(8*a^2 + b^2))/(2*a*(a^2 + b^2)^3*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [cos(c + d*x)^3/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 5, (a*(a^2 - 3*b^2)*x)/(a^2 + b^2)^3 + (b*(3*a^2 - b^2)*log(a*cos(c + d*x) + b*sin(c + d*x)))/((a^2 + b^2)^3*d) - b/(2*(a^2 + b^2)*d*(a + b*tan(c + d*x))^2) - (2*a*b)/((a^2 + b^2)^2*d*(a + b*tan(c + d*x)))]
    @test_int [cos(c + d*x)^2/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, -6, (2*(2*a^2 - b^2)*atanh((-b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/(2*d*(a^2 + b^2)^(5/2)) - (b*((4*a^2 + b^2)*cos(c + d*x) + 3*a*b*sin(c + d*x)))/(2*d*(a^2 + b^2)^2*(a*cos(c + d*x) + b*sin(c + d*x))^2)]
    @test_int [cos(c + d*x)^1/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 2, -(1/(2*b*d*(a + b*tan(c + d*x))^2)), -(cot(c + d*x)^2/(2*b*d*(b + a*cot(c + d*x))^2))]
    @test_int [cos(c + d*x)^0/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 3, -(atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2))/(2*(a^2 + b^2)^(3/2)*d)) - (b*cos(c + d*x) - a*sin(c + d*x))/(2*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^2)]
    @test_int [sec(c + d*x)^1/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 3, -((1/b + b/a^2)/(2*d*(b + a*cot(c + d*x))^2)) + (1/a^2 - 1/b^2)/(d*(b + a*cot(c + d*x))) + log(b + a*cot(c + d*x))/(b^3*d) + log(tan(c + d*x))/(b^3*d)]
    @test_int [sec(c + d*x)^2/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 12, -((3*a*atanh(sin(c + d*x)))/(b^4*d)) - (2*a^2*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^4*sqrt(a^2 + b^2)*d) - atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2))/(2*b^2*sqrt(a^2 + b^2)*d) - (sqrt(a^2 + b^2)*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^4*d) + sec(c + d*x)/(b^3*d) - (b*cos(c + d*x) - a*sin(c + d*x))/(2*b^2*d*(a*cos(c + d*x) + b*sin(c + d*x))^2) + (2*a)/(b^3*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [sec(c + d*x)^3/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 3, -((a^2 + b^2)^2/(2*a^2*b^3*d*(b + a*cot(c + d*x))^2)) - ((3*a^2 - b^2)*(a^2 + b^2))/(a^2*b^4*d*(b + a*cot(c + d*x))) + (2*(3*a^2 + b^2)*log(b + a*cot(c + d*x)))/(b^5*d) + (2*(3*a^2 + b^2)*log(tan(c + d*x)))/(b^5*d) - (3*a*tan(c + d*x))/(b^4*d) + tan(c + d*x)^2/(2*b^3*d)]
    @test_int [sec(c + d*x)^4/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 31, -((4*a^3*atanh(sin(c + d*x)))/(b^6*d)) - (3*a*atanh(sin(c + d*x)))/(2*b^4*d) - (6*a*(a^2 + b^2)*atanh(sin(c + d*x)))/(b^6*d) - (8*a^2*sqrt(a^2 + b^2)*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^6*d) - (sqrt(a^2 + b^2)*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(2*b^4*d) - (2*(a^2 + b^2)^(3/2)*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^6*d) + (4*a^2*sec(c + d*x))/(b^5*d) + (2*(a^2 + b^2)*sec(c + d*x))/(b^5*d) + sec(c + d*x)^3/(3*b^3*d) - ((a^2 + b^2)*(b*cos(c + d*x) - a*sin(c + d*x)))/(2*b^4*d*(a*cos(c + d*x) + b*sin(c + d*x))^2) + (4*a*(a^2 + b^2))/(b^5*d*(a*cos(c + d*x) + b*sin(c + d*x))) - (3*a*sec(c + d*x)*tan(c + d*x))/(2*b^4*d)]
    @test_int [sec(c + d*x)^5/(a*cos(c + d*x) + b*sin(c + d*x))^3, x, 3, -((a^2 + b^2)^3/(2*a^2*b^5*d*(b + a*cot(c + d*x))^2)) - ((5*a^2 - b^2)*(a^2 + b^2)^2)/(a^2*b^6*d*(b + a*cot(c + d*x))) + (3*(a^2 + b^2)*(5*a^2 + b^2)*log(b + a*cot(c + d*x)))/(b^7*d) + (3*(a^2 + b^2)*(5*a^2 + b^2)*log(tan(c + d*x)))/(b^7*d) - (a*(10*a^2 + 9*b^2)*tan(c + d*x))/(b^6*d) + (3*(2*a^2 + b^2)*tan(c + d*x)^2)/(2*b^5*d) - (a*tan(c + d*x)^3)/(b^4*d) + tan(c + d*x)^4/(4*b^3*d)]


    @test_int [cos(c + d*x)^4/(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 6, ((a^4 - 6*a^2*b^2 + b^4)*x)/(a^2 + b^2)^4 + (4*a*b*(a^2 - b^2)*log(a*cos(c + d*x) + b*sin(c + d*x)))/((a^2 + b^2)^4*d) - b/(3*(a^2 + b^2)*d*(a + b*tan(c + d*x))^3) - (a*b)/((a^2 + b^2)^2*d*(a + b*tan(c + d*x))^2) - (b*(3*a^2 - b^2))/((a^2 + b^2)^3*d*(a + b*tan(c + d*x)))]
    @test_int [cos(c + d*x)^3/(a*cos(c + d*x) + b*sin(c + d*x))^4, x, -7, (a*(2*a^2 - 3*b^2)*atanh((-b + a*tan((1/2)*(c + d*x)))/sqrt(a^2 + b^2)))/((a^2 + b^2)^(7/2)*d) + (-3*(3*a^4*b - a^2*b^3 + b^5)*cos(2*(c + d*x)) + (1/2)*b*(-9*a^2 + b^2)*(2*(a^2 + b^2) + 3*a*b*sin(2*(c + d*x))))/(6*(a^2 + b^2)^3*d*(a*cos(c + d*x) + b*sin(c + d*x))^3)]
    @test_int [cos(c + d*x)^2/(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 2, -(cot(c + d*x)^3/(3*b*d*(b + a*cot(c + d*x))^3))]
    @test_int [cos(c + d*x)^1/(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 5, -((a*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(2*(a^2 + b^2)^(5/2)*d)) - b/(3*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^3) - (a*(b*cos(c + d*x) - a*sin(c + d*x)))/(2*(a^2 + b^2)^2*d*(a*cos(c + d*x) + b*sin(c + d*x))^2)]
    @test_int [cos(c + d*x)^0/(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 2, -((b*cos(c + d*x) - a*sin(c + d*x))/(3*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^3)) + (2*sin(c + d*x))/(3*a*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [sec(c + d*x)^1/(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 8, atanh(sin(c + d*x))/(b^4*d) + (a*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(2*b^2*(a^2 + b^2)^(3/2)*d) + (a*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^4*sqrt(a^2 + b^2)*d) - 1/(3*b*d*(a*cos(c + d*x) + b*sin(c + d*x))^3) + (a*(b*cos(c + d*x) - a*sin(c + d*x)))/(2*b^2*(a^2 + b^2)*d*(a*cos(c + d*x) + b*sin(c + d*x))^2) - 1/(b^3*d*(a*cos(c + d*x) + b*sin(c + d*x)))]
    @test_int [sec(c + d*x)^2/(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 3, (a^2 + b^2)^2/(3*a^3*b^2*d*(b + a*cot(c + d*x))^3) + (a/b^3 - b/a^3)/(d*(b + a*cot(c + d*x))^2) + (1/a^3 + (3*a)/b^4)/(d*(b + a*cot(c + d*x))) - (4*a*log(b + a*cot(c + d*x)))/(b^5*d) - (4*a*log(tan(c + d*x)))/(b^5*d) + tan(c + d*x)/(b^4*d)]
    @test_int [sec(c + d*x)^3/(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 32, (8*a^2*atanh(sin(c + d*x)))/(b^6*d) + atanh(sin(c + d*x))/(2*b^4*d) + (2*(a^2 + b^2)*atanh(sin(c + d*x)))/(b^6*d) + (4*a^3*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^6*sqrt(a^2 + b^2)*d) + (3*a*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(2*b^4*sqrt(a^2 + b^2)*d) + (6*a*sqrt(a^2 + b^2)*atanh((b*cos(c + d*x) - a*sin(c + d*x))/sqrt(a^2 + b^2)))/(b^6*d) - (4*a*sec(c + d*x))/(b^5*d) - (a^2 + b^2)/(3*b^3*d*(a*cos(c + d*x) + b*sin(c + d*x))^3) + (3*a*(b*cos(c + d*x) - a*sin(c + d*x)))/(2*b^4*d*(a*cos(c + d*x) + b*sin(c + d*x))^2) - (4*a^2)/(b^5*d*(a*cos(c + d*x) + b*sin(c + d*x))) - (2*(a^2 + b^2))/(b^5*d*(a*cos(c + d*x) + b*sin(c + d*x))) + (sec(c + d*x)*tan(c + d*x))/(2*b^4*d)]
    @test_int [sec(c + d*x)^4/(a*cos(c + d*x) + b*sin(c + d*x))^4, x, 3, (a^2 + b^2)^3/(3*a^3*b^4*d*(b + a*cot(c + d*x))^3) + (2*a^6 + 3*a^4*b^2 - b^6)/(a^3*b^5*d*(b + a*cot(c + d*x))^2) + (10*a^6 + 9*a^4*b^2 + b^6)/(a^3*b^6*d*(b + a*cot(c + d*x))) - (4*a*(5*a^2 + 3*b^2)*log(b + a*cot(c + d*x)))/(b^7*d) - (4*a*(5*a^2 + 3*b^2)*log(tan(c + d*x)))/(b^7*d) + ((10*a^2 + 3*b^2)*tan(c + d*x))/(b^6*d) - (2*a*tan(c + d*x)^2)/(b^5*d) + tan(c + d*x)^3/(3*b^4*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(a*cos(c+d*x)+b*sin(c+d*x))^n*when*a^2+b^2=0=#


    #= ::Subsubsection:: =#
    #=n>0=#


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cos(c + d*x)^5/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 9, (5*x)/(16*a) + (im*cos(c + d*x)^6)/(6*a*d) + (5*cos(c + d*x)*sin(c + d*x))/(16*a*d) + (5*cos(c + d*x)^3*sin(c + d*x))/(24*a*d) + (cos(c + d*x)^5*sin(c + d*x))/(6*a*d)]
    @test_int [cos(c + d*x)^4/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 7, (im*cos(c + d*x)^5)/(5*a*d) + sin(c + d*x)/(a*d) - (2*sin(c + d*x)^3)/(3*a*d) + sin(c + d*x)^5/(5*a*d)]
    @test_int [cos(c + d*x)^3/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 8, (3*x)/(8*a) + (im*cos(c + d*x)^4)/(4*a*d) + (3*cos(c + d*x)*sin(c + d*x))/(8*a*d) + (cos(c + d*x)^3*sin(c + d*x))/(4*a*d)]
    @test_int [cos(c + d*x)^2/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 7, (im*cos(c + d*x)^3)/(3*a*d) + sin(c + d*x)/(a*d) - sin(c + d*x)^3/(3*a*d)]
    @test_int [cos(c + d*x)^1/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 2, x/(2*a) + (im*cos(c + d*x))/(2*d*(a*cos(c + d*x) + im*a*sin(c + d*x)))]
    @test_int [cos(c + d*x)^0/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 1, im/(d*(a*cos(c + d*x) + im*a*sin(c + d*x)))]
    @test_int [sec(c + d*x)^1/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 4, x/a + (im*log(cos(c + d*x)))/(a*d)]
    @test_int [sec(c + d*x)^2/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 6, atanh(sin(c + d*x))/(a*d) - (im*sec(c + d*x))/(a*d)]
    @test_int [sec(c + d*x)^3/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 7, -((im*sec(c + d*x)^2)/(2*a*d)) + tan(c + d*x)/(a*d)]
    @test_int [sec(c + d*x)^4/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 7, atanh(sin(c + d*x))/(2*a*d) - (im*sec(c + d*x)^3)/(3*a*d) + (sec(c + d*x)*tan(c + d*x))/(2*a*d)]
    @test_int [sec(c + d*x)^5/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 7, -((im*sec(c + d*x)^4)/(4*a*d)) + tan(c + d*x)/(a*d) + tan(c + d*x)^3/(3*a*d)]
    @test_int [sec(c + d*x)^6/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 8, (3*atanh(sin(c + d*x)))/(8*a*d) - (im*sec(c + d*x)^5)/(5*a*d) + (3*sec(c + d*x)*tan(c + d*x))/(8*a*d) + (sec(c + d*x)^3*tan(c + d*x))/(4*a*d)]
    @test_int [sec(c + d*x)^7/(a*cos(c + d*x) + im*a*sin(c + d*x)), x, 7, -((im*sec(c + d*x)^6)/(6*a*d)) + tan(c + d*x)/(a*d) + (2*tan(c + d*x)^3)/(3*a*d) + tan(c + d*x)^5/(5*a*d)]


    @test_int [cos(c + d*x)^5/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 10, (2*im*cos(c + d*x)^7)/(7*a^2*d) + sin(c + d*x)/(a^2*d) - (4*sin(c + d*x)^3)/(3*a^2*d) + sin(c + d*x)^5/(a^2*d) - (2*sin(c + d*x)^7)/(7*a^2*d)]
    @test_int [cos(c + d*x)^4/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 5, x/(4*a^2) - 1/(16*a^2*d*(im - cot(c + d*x))) - 1/(12*a^2*d*(im + cot(c + d*x))^3) - (3*im)/(8*a^2*d*(im + cot(c + d*x))^2) + 11/(16*a^2*d*(im + cot(c + d*x)))]
    @test_int [cos(c + d*x)^3/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 10, (2*im*cos(c + d*x)^5)/(5*a^2*d) + sin(c + d*x)/(a^2*d) - sin(c + d*x)^3/(a^2*d) + (2*sin(c + d*x)^5)/(5*a^2*d)]
    @test_int [cos(c + d*x)^2/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 3, x/(4*a^2) + (im*cos(c + d*x)^2)/(4*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^2) + (im*cos(c + d*x))/(4*d*(a^2*cos(c + d*x) + im*a^2*sin(c + d*x)))]
    @test_int [cos(c + d*x)^1/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 9, (2*im*cos(c + d*x)^3)/(3*a^2*d) + sin(c + d*x)/(a^2*d) - (2*sin(c + d*x)^3)/(3*a^2*d)]
    @test_int [cos(c + d*x)^0/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 1, im/(2*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^2)]
    @test_int [sec(c + d*x)^1/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 8, -(atanh(sin(c + d*x))/(a^2*d)) + (2*im*cos(c + d*x))/(a^2*d) + (2*sin(c + d*x))/(a^2*d)]
    @test_int [sec(c + d*x)^2/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 4, (2*x)/a^2 + (2*im*log(sin(c + d*x)))/(a^2*d) - (2*im*log(tan(c + d*x)))/(a^2*d) - tan(c + d*x)/(a^2*d)]
    @test_int [sec(c + d*x)^3/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 8, (3*atanh(sin(c + d*x)))/(2*a^2*d) - (2*im*sec(c + d*x))/(a^2*d) - (sec(c + d*x)*tan(c + d*x))/(2*a^2*d)]
    @test_int [sec(c + d*x)^4/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 3, -((im*(im - cot(c + d*x))^3*tan(c + d*x)^3)/(3*a^2*d))]
    @test_int [sec(c + d*x)^5/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 10, (5*atanh(sin(c + d*x)))/(8*a^2*d) - (2*im*sec(c + d*x)^3)/(3*a^2*d) + (5*sec(c + d*x)*tan(c + d*x))/(8*a^2*d) - (sec(c + d*x)^3*tan(c + d*x))/(4*a^2*d)]
    @test_int [sec(c + d*x)^6/(a*cos(c + d*x) + im*a*sin(c + d*x))^2, x, 4, tan(c + d*x)/(a^2*d) - (im*tan(c + d*x)^2)/(a^2*d) - (im*tan(c + d*x)^4)/(2*a^2*d) - tan(c + d*x)^5/(5*a^2*d)]


    @test_int [cos(c + d*x)^5/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 5, (5*x)/(32*a^3) - 1/(32*a^3*d*(im - cot(c + d*x))) + im/(16*a^3*d*(im + cot(c + d*x))^4) - 1/(3*a^3*d*(im + cot(c + d*x))^3) - (23*im)/(32*a^3*d*(im + cot(c + d*x))^2) + 13/(16*a^3*d*(im + cot(c + d*x)))]
    @test_int [cos(c + d*x)^4/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 13, -((im*cos(c + d*x)^5)/(5*a^3*d)) + (4*im*cos(c + d*x)^7)/(7*a^3*d) + sin(c + d*x)/(a^3*d) - (2*sin(c + d*x)^3)/(a^3*d) + (9*sin(c + d*x)^5)/(5*a^3*d) - (4*sin(c + d*x)^7)/(7*a^3*d)]
    @test_int [cos(c + d*x)^3/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 4, x/(8*a^3) + (im*cos(c + d*x)^3)/(6*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^3) + (im*cos(c + d*x)^2)/(8*a*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^2) + (im*cos(c + d*x))/(8*d*(a^3*cos(c + d*x) + im*a^3*sin(c + d*x)))]
    @test_int [cos(c + d*x)^2/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 13, -((im*cos(c + d*x)^3)/(3*a^3*d)) + (4*im*cos(c + d*x)^5)/(5*a^3*d) + sin(c + d*x)/(a^3*d) - (5*sin(c + d*x)^3)/(3*a^3*d) + (4*sin(c + d*x)^5)/(5*a^3*d)]
    @test_int [cos(c + d*x)^1/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 2, (im*cot(c + d*x)^2)/(2*a^3*d*(im + cot(c + d*x))^2)]
    @test_int [cos(c + d*x)^0/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 1, im/(3*d*(a*cos(c + d*x) + im*a*sin(c + d*x))^3)]
    @test_int [sec(c + d*x)^1/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 4, -(x/a^3) + 2/(a^3*d*(im + cot(c + d*x))) - (im*log(sin(c + d*x)))/(a^3*d) + (im*log(tan(c + d*x)))/(a^3*d)]
    @test_int [sec(c + d*x)^2/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 11, -((3*atanh(sin(c + d*x)))/(a^3*d)) + (4*im*cos(c + d*x))/(a^3*d) + (im*sec(c + d*x))/(a^3*d) + (4*sin(c + d*x))/(a^3*d)]
    @test_int [sec(c + d*x)^3/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 4, (4*x)/a^3 + (4*im*log(sin(c + d*x)))/(a^3*d) - (4*im*log(tan(c + d*x)))/(a^3*d) - (3*tan(c + d*x))/(a^3*d) + (im*tan(c + d*x)^2)/(2*a^3*d)]
    @test_int [sec(c + d*x)^4/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 10, (5*atanh(sin(c + d*x)))/(2*a^3*d) - (4*im*sec(c + d*x))/(a^3*d) + (im*sec(c + d*x)^3)/(3*a^3*d) - (3*sec(c + d*x)*tan(c + d*x))/(2*a^3*d)]
    @test_int [sec(c + d*x)^5/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 3, (im*(im - cot(c + d*x))^4*tan(c + d*x)^4)/(4*a^3*d)]
    @test_int [sec(c + d*x)^6/(a*cos(c + d*x) + im*a*sin(c + d*x))^3, x, 13, (7*atanh(sin(c + d*x)))/(8*a^3*d) - (4*im*sec(c + d*x)^3)/(3*a^3*d) + (im*sec(c + d*x)^5)/(5*a^3*d) + (7*sec(c + d*x)*tan(c + d*x))/(8*a^3*d) - (3*sec(c + d*x)^3*tan(c + d*x))/(4*a^3*d)]


    #= ::Subsubsection::Closed:: =#
    #=n*symbolic=#


    @test_int [(a*cos(c + d*x) + im*a*sin(c + d*x))^n/cos(c + d*x)^n, x, 1, -((im*Hypergeometric2F1(1, n, 1 + n, (1/2)*(1 + im*tan(c + d*x)))*(a*cos(c + d*x) + im*a*sin(c + d*x))^n)/(cos(c + d*x)^n*(2*d*n)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Trig(c+d*x)^m*(a*sec(c+d*x)+b*tan(c+d*x))^n=#


    @test_int [1/(sec(x) + tan(x)), x, 3, log(1 + sin(x))]
    @test_int [sin(x)/(sec(x) + tan(x)), x, 4, -log(1 + sin(x)) + sin(x)]
    @test_int [cos(x)/(sec(x) + tan(x)), x, 3, x + cos(x)]
    @test_int [tan(x)/(sec(x) + tan(x)), x, 3, x + cos(x)/(1 + sin(x))]
    @test_int [cot(x)/(sec(x) + tan(x)), x, 4, -x - atanh(cos(x))]
    @test_int [sec(x)/(sec(x) + tan(x)), x, 2, -(cos(x)/(1 + sin(x)))]
    @test_int [csc(x)/(sec(x) + tan(x)), x, 5, log(sin(x)) - log(1 + sin(x))]


    @test_int [1/(sec(x) - tan(x)), x, 3, -log(1 - sin(x))]
    @test_int [sin(x)/(sec(x) - tan(x)), x, 4, -log(1 - sin(x)) - sin(x)]
    @test_int [cos(x)/(sec(x) - tan(x)), x, 3, x - cos(x)]
    @test_int [tan(x)/(sec(x) - tan(x)), x, 3, -x + cos(x)/(1 - sin(x))]
    @test_int [cot(x)/(sec(x) - tan(x)), x, 4, x - atanh(cos(x))]
    @test_int [sec(x)/(sec(x) - tan(x)), x, 2, cos(x)/(1 - sin(x))]
    @test_int [csc(x)/(sec(x) - tan(x)), x, 5, -log(1 - sin(x)) + log(sin(x))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Trig(c+d*x)^m*(a*csc(c+d*x)+b*cot(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [csc(c + d*x)*(cot(c + d*x) + csc(c + d*x)), x, 4, -(cot(c + d*x)/d) - csc(c + d*x)/d]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [sin(x)/(csc(x) + cot(x)), x, 3, x - sin(x)]
    @test_int [cos(x)/(csc(x) + cot(x)), x, 4, -cos(x) + log(1 + cos(x))]
    @test_int [tan(x)/(csc(x) + cot(x)), x, 4, -x+atanh(sin(x))]
    @test_int [cot(x)/(csc(x) + cot(x)), x, 3, x - sin(x)/(1 + cos(x))]
    @test_int [sec(x)/(csc(x) + cot(x)), x, 5, -log(cos(x)) + log(1 + cos(x))]
    @test_int [csc(x)/(csc(x) + cot(x)), x, 2, sin(x)/(1 + cos(x))]


    @test_int [sin(x)/(csc(x) - cot(x)), x, 3, x + sin(x)]
    @test_int [cos(x)/(csc(x) - cot(x)), x, 4, cos(x) + log(1 - cos(x))]
    @test_int [tan(x)/(csc(x) - cot(x)), x, 4, x + atanh(sin(x))]
    @test_int [cot(x)/(csc(x) - cot(x)), x, 3, -x - sin(x)/(1 - cos(x))]
    @test_int [sec(x)/(csc(x) - cot(x)), x, 5, log(1 - cos(x)) - log(cos(x))]
    @test_int [csc(x)/(csc(x) - cot(x)), x, 2, -(sin(x)/(1 - cos(x)))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Trig(c+d*x)^m*(a*csc(c+d*x)+b*sin(c+d*x))^n=#


    @test_int [1/(csc(c + d*x) + sin(c + d*x)), x, 3, -(atanh(cos(c + d*x)/sqrt(2))/(sqrt(2)*d))]
    @test_int [sin(c + d*x)/(csc(c + d*x) + sin(c + d*x)), x, 4, x - x/sqrt(2) - atan((cos(c + d*x)*sin(c + d*x))/(1 + sqrt(2) + sin(c + d*x)^2))/(sqrt(2)*d)]
    @test_int [cos(c + d*x)/(csc(c + d*x) + sin(c + d*x)), x, 2, log(1 + sin(c + d*x)^2)/(2*d)]
    @test_int [tan(c + d*x)/(csc(c + d*x) + sin(c + d*x)), x, 4, -(atan(sin(c + d*x))/(2*d)) + atanh(sin(c + d*x))/(2*d)]
    @test_int [cot(c + d*x)/(csc(c + d*x) + sin(c + d*x)), x, 2, atan(sin(c + d*x))/d]
    @test_int [sec(c + d*x)/(csc(c + d*x) + sin(c + d*x)), x, 3, atanh(sin(c + d*x)^2)/(2*d)]
    @test_int [csc(c + d*x)/(csc(c + d*x) + sin(c + d*x)), x, 2, x/sqrt(2) + atan((cos(c + d*x)*sin(c + d*x))/(1 + sqrt(2) + sin(c + d*x)^2))/(sqrt(2)*d)]


    @test_int [1/(csc(c + d*x) - sin(c + d*x)), x, 3, sec(c + d*x)/d]
    @test_int [sin(c + d*x)/(csc(c + d*x) - sin(c + d*x)), x, 3, -x + tan(c + d*x)/d]
    @test_int [cos(c + d*x)/(csc(c + d*x) - sin(c + d*x)), x, 2, -(log(cos(c + d*x))/d)]
    @test_int [tan(c + d*x)/(csc(c + d*x) - sin(c + d*x)), x, 3, -(atanh(sin(c + d*x))/(2*d)) + (sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [cot(c + d*x)/(csc(c + d*x) - sin(c + d*x)), x, 2, atanh(sin(c + d*x))/d]
    @test_int [sec(c + d*x)/(csc(c + d*x) - sin(c + d*x)), x, 2, sec(c + d*x)^2/(2*d)]
    @test_int [csc(c + d*x)/(csc(c + d*x) - sin(c + d*x)), x, 2, tan(c + d*x)/d]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*Trig(c+d*x)^m*(a*sin(c+d*x)+b*tan(c+d*x))^n=#


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(a*sin(c+d*x)+b*tan(c+d*x))^n=#


    #= ::Subsubsection::Closed:: =#
    #=n>0=#


    @test_int [cos(c + d*x)^3*(a*sin(c + d*x) + b*tan(c + d*x)), x, 6, -((b*cos(c + d*x)^3)/(3*d)) - (a*cos(c + d*x)^4)/(4*d)]
    @test_int [cos(c + d*x)^2*(a*sin(c + d*x) + b*tan(c + d*x)), x, 6, -((a*cos(c + d*x)^3)/(3*d)) + (b*sin(c + d*x)^2)/(2*d)]
    @test_int [cos(c + d*x)^1*(a*sin(c + d*x) + b*tan(c + d*x)), x, 5, -((b + a*cos(c + d*x))^2/(2*a*d)), -((b*cos(c + d*x))/d) + (a*sin(c + d*x)^2)/(2*d)]
    @test_int [cos(c + d*x)^0*(a*sin(c + d*x) + b*tan(c + d*x)), x, 3, -((a*cos(c + d*x))/d) - (b*log(cos(c + d*x)))/d]
    @test_int [sec(c + d*x)^1*(a*sin(c + d*x) + b*tan(c + d*x)), x, 5, -((a*log(cos(c + d*x)))/d) + (b*sec(c + d*x))/d]
    @test_int [sec(c + d*x)^2*(a*sin(c + d*x) + b*tan(c + d*x)), x, 6, (a*sec(c + d*x))/d + (b*sec(c + d*x)^2)/(2*d)]
    @test_int [sec(c + d*x)^3*(a*sin(c + d*x) + b*tan(c + d*x)), x, 6, (a*sec(c + d*x)^2)/(2*d) + (b*sec(c + d*x)^3)/(3*d)]


    @test_int [cos(c + d*x)^3*(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 6, (a*b*x)/4 - (a*b*cos(c + d*x)*sin(c + d*x))/(4*d) + ((4*a^2 + b^2)*sin(c + d*x)^3)/(30*d) + (b*(b + a*cos(c + d*x))*sin(c + d*x)^3)/(10*d) + ((b + a*cos(c + d*x))^2*sin(c + d*x)^3)/(5*d)]
    @test_int [cos(c + d*x)^2*(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 5, (1/8)*(a^2 + 4*b^2)*x - ((a^2 + 4*b^2)*cos(c + d*x)*sin(c + d*x))/(8*d) + (5*a*b*sin(c + d*x)^3)/(12*d) + (a*(b + a*cos(c + d*x))*sin(c + d*x)^3)/(4*d)]
    @test_int [cos(c + d*x)^1*(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 7, a*b*x + (b^2*atanh(sin(c + d*x)))/d + ((a^2 - 2*b^2)*sin(c + d*x))/(3*d) - (a*b*cos(c + d*x)*sin(c + d*x))/(3*d) - ((b + a*cos(c + d*x))^2*sin(c + d*x))/(3*d)]
    @test_int [cos(c + d*x)^0*(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 10, (a^2*x)/2 - b^2*x + (2*a*b*atanh(sin(c + d*x)))/d - (2*a*b*sin(c + d*x))/d - (a^2*cos(c + d*x)*sin(c + d*x))/(2*d) + (b^2*tan(c + d*x))/d]
    @test_int [sec(c + d*x)^1*(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 7, -2*a*b*x + ((2*a^2 - b^2)*atanh(sin(c + d*x)))/(2*d) - (3*a^2*sin(c + d*x))/(2*d) + (a*b*tan(c + d*x))/d + ((b + a*cos(c + d*x))^2*sec(c + d*x)*tan(c + d*x))/(2*d)]
    @test_int [sec(c + d*x)^2*(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 7, (-a^2)*x - (a*b*atanh(sin(c + d*x)))/d + ((2*a^2 - b^2)*tan(c + d*x))/(3*d) + (a*b*sec(c + d*x)*tan(c + d*x))/(3*d) + ((b + a*cos(c + d*x))^2*sec(c + d*x)^2*tan(c + d*x))/(3*d)]
    @test_int [sec(c + d*x)^3*(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 9, -(((4*a^2 + b^2)*atanh(sin(c + d*x)))/(8*d)) - (2*a*b*tan(c + d*x))/(3*d) + ((2*a^2 - b^2)*sec(c + d*x)*tan(c + d*x))/(8*d) + (a*b*sec(c + d*x)^2*tan(c + d*x))/(6*d) + ((b + a*cos(c + d*x))^2*sec(c + d*x)^3*tan(c + d*x))/(4*d)]


    @test_int [cos(c + d*x)^3*(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 4, -(((a^2 - b^2)*(b + a*cos(c + d*x))^4)/(4*a^3*d)) - (2*b*(b + a*cos(c + d*x))^5)/(5*a^3*d) + (b + a*cos(c + d*x))^6/(6*a^3*d)]
    @test_int [cos(c + d*x)^2*(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 5, -((3*a*b^2*cos(c + d*x))/d) - (b*(3*a^2 - b^2)*cos(c + d*x)^2)/(2*d) - (a*(a^2 - 3*b^2)*cos(c + d*x)^3)/(3*d) + (3*a^2*b*cos(c + d*x)^4)/(4*d) + (a^3*cos(c + d*x)^5)/(5*d) - (b^3*log(cos(c + d*x)))/d]
    @test_int [cos(c + d*x)^1*(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 5, -((b*(3*a^2 - b^2)*cos(c + d*x))/d) - (a*(a^2 - 3*b^2)*cos(c + d*x)^2)/(2*d) + (a^2*b*cos(c + d*x)^3)/d + (a^3*cos(c + d*x)^4)/(4*d) - (3*a*b^2*log(cos(c + d*x)))/d + (b^3*sec(c + d*x))/d]
    @test_int [cos(c + d*x)^0*(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 4, -((a*(a^2 - 3*b^2)*cos(c + d*x))/d) + (3*a^2*b*cos(c + d*x)^2)/(2*d) + (a^3*cos(c + d*x)^3)/(3*d) - (b*(3*a^2 - b^2)*log(cos(c + d*x)))/d + (3*a*b^2*sec(c + d*x))/d + (b^3*sec(c + d*x)^2)/(2*d)]
    @test_int [sec(c + d*x)^1*(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 5, (3*a^2*b*cos(c + d*x))/d + (a^3*cos(c + d*x)^2)/(2*d) - (a*(a^2 - 3*b^2)*log(cos(c + d*x)))/d + (b*(3*a^2 - b^2)*sec(c + d*x))/d + (3*a*b^2*sec(c + d*x)^2)/(2*d) + (b^3*sec(c + d*x)^3)/(3*d)]
    @test_int [sec(c + d*x)^2*(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 5, (a^3*cos(c + d*x))/d + (3*a^2*b*log(cos(c + d*x)))/d + (a*(a^2 - 3*b^2)*sec(c + d*x))/d + (b*(3*a^2 - b^2)*sec(c + d*x)^2)/(2*d) + (a*b^2*sec(c + d*x)^3)/d + (b^3*sec(c + d*x)^4)/(4*d)]
    @test_int [sec(c + d*x)^3*(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 5, (a^3*log(cos(c + d*x)))/d - (3*a^2*b*sec(c + d*x))/d + (a*(a^2 - 3*b^2)*sec(c + d*x)^2)/(2*d) + (b*(3*a^2 - b^2)*sec(c + d*x)^3)/(3*d) + (3*a*b^2*sec(c + d*x)^4)/(4*d) + (b^3*sec(c + d*x)^5)/(5*d)]


    #= ::Subsubsection::Closed:: =#
    #=n<0=#


    @test_int [cos(c + d*x)^3/(a*sin(c + d*x) + b*tan(c + d*x)), x, 5, -((b*cos(c + d*x))/(a^2*d)) + cos(c + d*x)^2/(2*a*d) + log(1 - cos(c + d*x))/(2*(a + b)*d) + log(1 + cos(c + d*x))/(2*(a - b)*d) - (b^4*log(b + a*cos(c + d*x)))/(a^3*(a^2 - b^2)*d)]
    @test_int [cos(c + d*x)^2/(a*sin(c + d*x) + b*tan(c + d*x)), x, 5, cos(c + d*x)/(a*d) + log(1 - cos(c + d*x))/(2*(a + b)*d) - log(1 + cos(c + d*x))/(2*(a - b)*d) + (b^3*log(b + a*cos(c + d*x)))/(a^2*(a^2 - b^2)*d)]
    @test_int [cos(c + d*x)^1/(a*sin(c + d*x) + b*tan(c + d*x)), x, 5, log(1 - cos(c + d*x))/(2*(a + b)*d) + log(1 + cos(c + d*x))/(2*(a - b)*d) - (b^2*log(b + a*cos(c + d*x)))/(a*(a^2 - b^2)*d)]
    @test_int [cos(c + d*x)^0/(a*sin(c + d*x) + b*tan(c + d*x)), x, 4, log(1 - cos(c + d*x))/(2*(a + b)*d) - log(1 + cos(c + d*x))/(2*(a - b)*d) + (b*log(b + a*cos(c + d*x)))/((a^2 - b^2)*d)]
    @test_int [sec(c + d*x)^1/(a*sin(c + d*x) + b*tan(c + d*x)), x, 7, log(1 - cos(c + d*x))/(2*(a + b)*d) + log(1 + cos(c + d*x))/(2*(a - b)*d) - (a*log(b + a*cos(c + d*x)))/((a^2 - b^2)*d)]
    @test_int [sec(c + d*x)^2/(a*sin(c + d*x) + b*tan(c + d*x)), x, 5, log(1 - cos(c + d*x))/(2*(a + b)*d) - log(cos(c + d*x))/(b*d) - log(1 + cos(c + d*x))/(2*(a - b)*d) + (a^2*log(b + a*cos(c + d*x)))/(b*(a^2 - b^2)*d)]
    @test_int [sec(c + d*x)^3/(a*sin(c + d*x) + b*tan(c + d*x)), x, 5, log(1 - cos(c + d*x))/(2*(a + b)*d) + (a*log(cos(c + d*x)))/(b^2*d) + log(1 + cos(c + d*x))/(2*(a - b)*d) - (a^3*log(b + a*cos(c + d*x)))/(b^2*(a^2 - b^2)*d) + sec(c + d*x)/(b*d)]


    @test_int [cos(c + d*x)^3/(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 12, (2*b*x)/a^3 + (2*b^6*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/(a^3*(a - b)^(5/2)*(a + b)^(5/2)*d) + (2*b^4*(5*a^2 - 3*b^2)*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/(a^3*(a - b)^(5/2)*(a + b)^(5/2)*d) - sin(c + d*x)/(a^2*d) - sin(c + d*x)/(2*(a + b)^2*d*(1 - cos(c + d*x))) - sin(c + d*x)/(2*(a - b)^2*d*(1 + cos(c + d*x))) - (b^5*sin(c + d*x))/(a^2*(a^2 - b^2)^2*d*(b + a*cos(c + d*x)))]
    @test_int [cos(c + d*x)^2/(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 11, -(x/a^2) - (2*b^5*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/(a^2*(a - b)^(5/2)*(a + b)^(5/2)*d) - (4*b^3*(2*a^2 - b^2)*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/(a^2*(a - b)^(5/2)*(a + b)^(5/2)*d) - sin(c + d*x)/(2*(a + b)^2*d*(1 - cos(c + d*x))) + sin(c + d*x)/(2*(a - b)^2*d*(1 + cos(c + d*x))) + (b^4*sin(c + d*x))/(a*(a^2 - b^2)^2*d*(b + a*cos(c + d*x)))]
    @test_int [cos(c + d*x)^1/(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 11, (2*b^4*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/(a*(a - b)^(5/2)*(a + b)^(5/2)*d) + (2*b^2*(3*a^2 - b^2)*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/(a*(a - b)^(5/2)*(a + b)^(5/2)*d) - sin(c + d*x)/(2*(a + b)^2*d*(1 - cos(c + d*x))) - sin(c + d*x)/(2*(a - b)^2*d*(1 + cos(c + d*x))) - (b^3*sin(c + d*x))/((a^2 - b^2)^2*d*(b + a*cos(c + d*x)))]
    @test_int [cos(c + d*x)^0/(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 11, -((4*a^2*b*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)*d)) - (2*b^3*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)*d) - sin(c + d*x)/(2*(a + b)^2*d*(1 - cos(c + d*x))) + sin(c + d*x)/(2*(a - b)^2*d*(1 + cos(c + d*x))) + (a*b^2*sin(c + d*x))/((a^2 - b^2)^2*d*(b + a*cos(c + d*x)))]
    @test_int [sec(c + d*x)^1/(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 6, (2*a*(a^2 + 2*b^2)*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)*d) - (b*csc(c + d*x))/((a^2 - b^2)*d*(b + a*cos(c + d*x))) - ((a^2 + 2*b^2 - 3*a*b*cos(c + d*x))*csc(c + d*x))/((a^2 - b^2)^2*d)]
    @test_int [sec(c + d*x)^2/(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 6, -((6*a^2*b*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)*d)) + (a*csc(c + d*x))/((a^2 - b^2)*d*(b + a*cos(c + d*x))) + ((3*a*b - (2*a^2 + b^2)*cos(c + d*x))*csc(c + d*x))/((a^2 - b^2)^2*d)]
    @test_int [sec(c + d*x)^3/(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 12, atanh(sin(c + d*x))/(b^2*d) + (2*a^3*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/((a - b)^(5/2)*(a + b)^(5/2)*d) - (2*a^3*(a^2 - 3*b^2)*atanh((sqrt(a - b)*tan((1/2)*(c + d*x)))/sqrt(a + b)))/((a - b)^(5/2)*b^2*(a + b)^(5/2)*d) - sin(c + d*x)/(2*(a + b)^2*d*(1 - cos(c + d*x))) - sin(c + d*x)/(2*(a - b)^2*d*(1 + cos(c + d*x))) - (a^4*sin(c + d*x))/(b*(a^2 - b^2)^2*d*(b + a*cos(c + d*x)))]


    @test_int [cos(c + d*x)^3/(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 6, b^6/(2*a^3*(a^2 - b^2)^2*d*(b + a*cos(c + d*x))^2) - (2*b^5*(3*a^2 - b^2))/(a^3*(a^2 - b^2)^3*d*(b + a*cos(c + d*x))) - ((a*(a^2 + 3*b^2) - b*(3*a^2 + b^2)*cos(c + d*x))*csc(c + d*x)^2)/(2*(a^2 - b^2)^3*d) - ((2*a + 5*b)*log(1 - cos(c + d*x)))/(4*(a + b)^4*d) - ((2*a - 5*b)*log(1 + cos(c + d*x)))/(4*(a - b)^4*d) - (b^4*(15*a^4 - 4*a^2*b^2 + b^4)*log(b + a*cos(c + d*x)))/(a^3*(a^2 - b^2)^4*d)]
    @test_int [cos(c + d*x)^2/(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 6, -(b^5/(2*a^2*(a^2 - b^2)^2*d*(b + a*cos(c + d*x))^2)) + (b^4*(5*a^2 - b^2))/(a^2*(a^2 - b^2)^3*d*(b + a*cos(c + d*x))) + ((b*(3*a^2 + b^2) - a*(a^2 + 3*b^2)*cos(c + d*x))*csc(c + d*x)^2)/(2*(a^2 - b^2)^3*d) - ((a + 4*b)*log(1 - cos(c + d*x)))/(4*(a + b)^4*d) + ((a - 4*b)*log(1 + cos(c + d*x)))/(4*(a - b)^4*d) + (2*b^3*(5*a^2 + b^2)*log(b + a*cos(c + d*x)))/((a^2 - b^2)^4*d)]
    @test_int [cos(c + d*x)^1/(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 6, b^4/(2*a*(a^2 - b^2)^2*d*(b + a*cos(c + d*x))^2) - (4*a*b^3)/((a^2 - b^2)^3*d*(b + a*cos(c + d*x))) - ((a*(a^2 + 3*b^2) - b*(3*a^2 + b^2)*cos(c + d*x))*csc(c + d*x)^2)/(2*(a^2 - b^2)^3*d) - (3*b*log(1 - cos(c + d*x)))/(4*(a + b)^4*d) + (3*b*log(1 + cos(c + d*x)))/(4*(a - b)^4*d) - (6*a*b^2*(a^2 + b^2)*log(b + a*cos(c + d*x)))/((a^2 - b^2)^4*d)]
    @test_int [cos(c + d*x)^0/(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 5, -(b^3/(2*(a^2 - b^2)^2*d*(b + a*cos(c + d*x))^2)) + (b^2*(3*a^2 + b^2))/((a^2 - b^2)^3*d*(b + a*cos(c + d*x))) + ((b*(3*a^2 + b^2) - a*(a^2 + 3*b^2)*cos(c + d*x))*csc(c + d*x)^2)/(2*(a^2 - b^2)^3*d) + ((a - 2*b)*log(1 - cos(c + d*x)))/(4*(a + b)^4*d) - ((a + 2*b)*log(1 + cos(c + d*x)))/(4*(a - b)^4*d) + (b*(3*a^4 + 8*a^2*b^2 + b^4)*log(b + a*cos(c + d*x)))/((a^2 - b^2)^4*d)]
    @test_int [sec(c + d*x)^1/(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 6, (a*b^2)/(2*(a^2 - b^2)^2*d*(b + a*cos(c + d*x))^2) - (2*a*b*(a^2 + b^2))/((a^2 - b^2)^3*d*(b + a*cos(c + d*x))) - ((a*(a^2 + 3*b^2) - b*(3*a^2 + b^2)*cos(c + d*x))*csc(c + d*x)^2)/(2*(a^2 - b^2)^3*d) + ((2*a - b)*log(1 - cos(c + d*x)))/(4*(a + b)^4*d) + ((2*a + b)*log(1 + cos(c + d*x)))/(4*(a - b)^4*d) - (a*(a^4 + 8*a^2*b^2 + 3*b^4)*log(b + a*cos(c + d*x)))/((a^2 - b^2)^4*d)]
    @test_int [sec(c + d*x)^2/(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 6, -((3*a^2*b)/(2*(a^2 - b^2)^2*d*(b + a*cos(c + d*x))^2)) + (3*a^2*(a^2 + 3*b^2))/(2*(a^2 - b^2)^3*d*(b + a*cos(c + d*x))) + ((b - a*cos(c + d*x))*csc(c + d*x)^2)/(2*(a^2 - b^2)*d*(b + a*cos(c + d*x))^2) + (3*a*log(1 - cos(c + d*x)))/(4*(a + b)^4*d) - (3*a*log(1 + cos(c + d*x)))/(4*(a - b)^4*d) + (6*a^2*b*(a^2 + b^2)*log(b + a*cos(c + d*x)))/((a^2 - b^2)^4*d)]
    @test_int [sec(c + d*x)^3/(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 5, (a*(2*a^2 + b^2))/(2*(a^2 - b^2)^2*d*(b + a*cos(c + d*x))^2) - (a*b*(11*a^2 + b^2))/(2*(a^2 - b^2)^3*d*(b + a*cos(c + d*x))) - ((a - b*cos(c + d*x))*csc(c + d*x)^2)/(2*(a^2 - b^2)*d*(b + a*cos(c + d*x))^2) + ((4*a + b)*log(1 - cos(c + d*x)))/(4*(a + b)^4*d) + ((4*a - b)*log(1 + cos(c + d*x)))/(4*(a - b)^4*d) - (2*a^3*(a^2 + 5*b^2)*log(b + a*cos(c + d*x)))/((a^2 - b^2)^4*d)]


    #= ::Subsection::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*(a*sin(c+d*x)+b*tan(c+d*x))^n*with*m*symbolic=#


    @test_int [cos(c + d*x)^m*(a*sin(c + d*x) + b*tan(c + d*x))^3, x, 4, (b^3*cos(c + d*x)^(-2 + m))/(d*(2 - m)) + (3*a*b^2*cos(c + d*x)^(-1 + m))/(d*(1 - m)) - (b*(3*a^2 - b^2)*cos(c + d*x)^m)/(d*m) - (a*(a^2 - 3*b^2)*cos(c + d*x)^(1 + m))/(d*(1 + m)) + (3*a^2*b*cos(c + d*x)^(2 + m))/(d*(2 + m)) + (a^3*cos(c + d*x)^(3 + m))/(d*(3 + m))]
    @test_int [cos(c + d*x)^m*(a*sin(c + d*x) + b*tan(c + d*x))^2, x, 8, ((a^2 - 2*b^2)*cos(c + d*x)^(-1 + m)*sin(c + d*x))/(d*m*(2 + m)) - (2*a*b*cos(c + d*x)^m*sin(c + d*x))/(d*(2 + 3*m + m^2)) - (cos(c + d*x)^(-1 + m)*(b + a*cos(c + d*x))^2*sin(c + d*x))/(d*(2 + m)) - ((a^2*(1 - m) - b^2*(2 + m))*cos(c + d*x)^(-1 + m)*Hypergeometric2F1(1/2, (1/2)*(-1 + m), (1 + m)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*(1 - m)*m*(2 + m)*sqrt(sin(c + d*x)^2)) - (2*a*b*cos(c + d*x)^m*Hypergeometric2F1(1/2, m/2, (2 + m)/2, cos(c + d*x)^2)*sin(c + d*x))/(d*m*(1 + m)*sqrt(sin(c + d*x)^2))]
    @test_int [cos(c + d*x)^m*(a*sin(c + d*x) + b*tan(c + d*x))^1, x, 6, -((b*cos(c + d*x)^m)/(d*m)) - (a*cos(c + d*x)^(1 + m))/(d*(1 + m))]
    @test_int [cos(c + d*x)^m/(a*sin(c + d*x) + b*tan(c + d*x))^1, x, 7, (cos(c + d*x)^(2 + m)*Hypergeometric2F1(1, 2 + m, 3 + m, -cos(c + d*x)))/(2*(a - b)*d*(2 + m)) - (cos(c + d*x)^(2 + m)*Hypergeometric2F1(1, 2 + m, 3 + m, cos(c + d*x)))/(2*(a + b)*d*(2 + m)) - (a^2*cos(c + d*x)^(2 + m)*Hypergeometric2F1(1, 2 + m, 3 + m, -((a*cos(c + d*x))/b)))/(b*(a^2 - b^2)*d*(2 + m))]


    #= ::Section::Closed:: =#
    #=Integrands*of*the*form*cos(c+d*x)^m*sin(c+d*x)^n*(a*cos(c+d*x)+b*sin(c+d*x))^p=#


    #= ::Subsubsection:: =#
    #=p>0=#


    #= ::Subsubsection::Closed:: =#
    #=p<0=#


    @test_int [cos(x)*sin(x)^1/(a*cos(x) + b*sin(x)), x, 5, (a*b*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(3/2) - (a*cos(x))/(a^2 + b^2) + (b*sin(x))/(a^2 + b^2)]
    @test_int [cos(x)*sin(x)^2/(a*cos(x) + b*sin(x)), x, 7, -((a*b^2*x)/(a^2 + b^2)^2) + (a*x)/(2*(a^2 + b^2)) + (a^2*b*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^2 - (a*cos(x)*sin(x))/(2*(a^2 + b^2)) + (b*sin(x)^2)/(2*(a^2 + b^2))]
    @test_int [cos(x)*sin(x)^3/(a*cos(x) + b*sin(x)), x, 9, (a^3*b*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) + (a*b^2*cos(x))/(a^2 + b^2)^2 - (a*cos(x))/(a^2 + b^2) + (a*cos(x)^3)/(3*(a^2 + b^2)) + (a^2*b*sin(x))/(a^2 + b^2)^2 + (b*sin(x)^3)/(3*(a^2 + b^2))]

    @test_int [cos(x)^2*sin(x)^1/(a*cos(x) + b*sin(x)), x, 7, -((a^2*b*x)/(a^2 + b^2)^2) + (b*x)/(2*(a^2 + b^2)) - (a*b^2*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^2 + (b*cos(x)*sin(x))/(2*(a^2 + b^2)) + (a*sin(x)^2)/(2*(a^2 + b^2))]
    @test_int [cos(x)^2*sin(x)^2/(a*cos(x) + b*sin(x)), x, 10, -((a^2*b^2*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) + (a^2*b*cos(x))/(a^2 + b^2)^2 - (b*cos(x)^3)/(3*(a^2 + b^2)) - (a*b^2*sin(x))/(a^2 + b^2)^2 + (a*sin(x)^3)/(3*(a^2 + b^2))]
    @test_int [cos(x)^2*sin(x)^3/(a*cos(x) + b*sin(x)), x, 13, (a^2*b^3*x)/(a^2 + b^2)^3 - (a^2*b*x)/(2*(a^2 + b^2)^2) + (b*x)/(8*(a^2 + b^2)) - (a^3*b^2*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 + (a^2*b*cos(x)*sin(x))/(2*(a^2 + b^2)^2) + (b*cos(x)*sin(x))/(8*(a^2 + b^2)) - (b*cos(x)^3*sin(x))/(4*(a^2 + b^2)) - (a*b^2*sin(x)^2)/(2*(a^2 + b^2)^2) + (a*sin(x)^4)/(4*(a^2 + b^2))]

    @test_int [cos(x)^3*sin(x)^1/(a*cos(x) + b*sin(x)), x, 9, (a*b^3*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) - (a*b^2*cos(x))/(a^2 + b^2)^2 - (a*cos(x)^3)/(3*(a^2 + b^2)) - (a^2*b*sin(x))/(a^2 + b^2)^2 + (b*sin(x))/(a^2 + b^2) - (b*sin(x)^3)/(3*(a^2 + b^2))]
    @test_int [cos(x)^3*sin(x)^2/(a*cos(x) + b*sin(x)), x, 13, (a^3*b^2*x)/(a^2 + b^2)^3 - (a*b^2*x)/(2*(a^2 + b^2)^2) + (a*x)/(8*(a^2 + b^2)) - (b*cos(x)^4)/(4*(a^2 + b^2)) + (a^2*b^3*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 - (a*b^2*cos(x)*sin(x))/(2*(a^2 + b^2)^2) + (a*cos(x)*sin(x))/(8*(a^2 + b^2)) - (a*cos(x)^3*sin(x))/(4*(a^2 + b^2)) - (a^2*b*sin(x)^2)/(2*(a^2 + b^2)^2)]
    @test_int [cos(x)^3*sin(x)^3/(a*cos(x) + b*sin(x)), x, 17, (a^3*b^3*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2) - (a^3*b^2*cos(x))/(a^2 + b^2)^3 + (a*b^2*cos(x)^3)/(3*(a^2 + b^2)^2) - (a*cos(x)^3)/(3*(a^2 + b^2)) + (a*cos(x)^5)/(5*(a^2 + b^2)) + (a^2*b^3*sin(x))/(a^2 + b^2)^3 - (a^2*b*sin(x)^3)/(3*(a^2 + b^2)^2) + (b*sin(x)^3)/(3*(a^2 + b^2)) - (b*sin(x)^5)/(5*(a^2 + b^2))]


    @test_int [cos(x)*sin(x)^1/(a*cos(x) + b*sin(x))^2, x, 6, (2*a*b*x)/(a^2 + b^2)^2 - ((a^2 - b^2)*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^2 - (b*sin(x))/((a^2 + b^2)*(a*cos(x) + b*sin(x))), (2*a*b*x)/(a^2 + b^2)^2 - (a^2*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^2 + (b^2*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^2 - (b*sin(x))/((a^2 + b^2)*(a*cos(x) + b*sin(x)))]
    @test_int [cos(x)*sin(x)^2/(a*cos(x) + b*sin(x))^2, x, 13, -((a*(a^2 - 2*b^2)*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) - (2*a*b*cos(x))/(a^2 + b^2)^2 - ((a^2 - b^2)*sin(x))/(a^2 + b^2)^2 - (a^2*b)/((a^2 + b^2)^2*(a*cos(x) + b*sin(x))), -((a^3*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) + (2*a*b^2*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) - (2*a*b*cos(x))/(a^2 + b^2)^2 - (a^2*sin(x))/(a^2 + b^2)^2 + (b^2*sin(x))/(a^2 + b^2)^2 - (a^2*b)/((a^2 + b^2)^2*(a*cos(x) + b*sin(x)))]
    @test_int [cos(x)*sin(x)^3/(a*cos(x) + b*sin(x))^2, x, 17, (b*(3*a^3 - a*b^2)*x)/(a^2 + b^2)^3 - (a^2*(a^2 - 3*b^2)*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 - (a*b*cos(x)*sin(x))/(a^2 + b^2)^2 - ((a^2 - b^2)*sin(x)^2)/(2*(a^2 + b^2)^2) - (a^2*b*sin(x))/((a^2 + b^2)^2*(a*cos(x) + b*sin(x))), (a^3*b*x)/(a^2 + b^2)^3 - (a*b^3*x)/(a^2 + b^2)^3 + (a*b*(a^2 - b^2)*x)/(a^2 + b^2)^3 + (a*b*x)/(a^2 + b^2)^2 - (a^2*b)/((a^2 + b^2)^2*(b + a*cot(x))) - (a^4*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 + (3*a^2*b^2*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 - (a*b*cos(x)*sin(x))/(a^2 + b^2)^2 - (a^2*sin(x)^2)/(2*(a^2 + b^2)^2) + (b^2*sin(x)^2)/(2*(a^2 + b^2)^2)]

    @test_int [cos(x)^2*sin(x)^1/(a*cos(x) + b*sin(x))^2, x, 13, -((b*(-2*a^2 + b^2)*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2)) - ((a^2 - b^2)*cos(x))/(a^2 + b^2)^2 + (2*a*b*sin(x))/(a^2 + b^2)^2 + (a*b^2)/((a^2 + b^2)^2*(a*cos(x) + b*sin(x))), (2*a^2*b*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) - (b^3*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(5/2) - (a^2*cos(x))/(a^2 + b^2)^2 + (b^2*cos(x))/(a^2 + b^2)^2 + (2*a*b*sin(x))/(a^2 + b^2)^2 + (a*b^2)/((a^2 + b^2)^2*(a*cos(x) + b*sin(x)))]
    @test_int [cos(x)^2*sin(x)^2/(a*cos(x) + b*sin(x))^2, x, 21, ((a^4 - 6*a^2*b^2 + b^4)*x)/(2*(a^2 + b^2)^3) + (2*a*b*(a^2 - b^2)*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 + ((-a^2 + b^2)*cos(x)*sin(x))/(2*(a^2 + b^2)^2) + (a*b*sin(x)^2)/(a^2 + b^2)^2 + (a*b^2*sin(x))/((a^2 + b^2)^2*(a*cos(x) + b*sin(x))), -((4*a^2*b^2*x)/(a^2 + b^2)^3) + (a^2*x)/(2*(a^2 + b^2)^2) + (b^2*x)/(2*(a^2 + b^2)^2) + (2*a^3*b*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 - (2*a*b^3*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 - (a^2*cos(x)*sin(x))/(2*(a^2 + b^2)^2) + (b^2*cos(x)*sin(x))/(2*(a^2 + b^2)^2) + (a*b*sin(x)^2)/(a^2 + b^2)^2 + (a*b^2*sin(x))/((a^2 + b^2)^2*(a*cos(x) + b*sin(x)))]
    @test_int [cos(x)^2*sin(x)^3/(a*cos(x) + b*sin(x))^2, x, 33, (a^2*b*(2*a^2 - 3*b^2)*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2) - (a^2*(a^2 - 3*b^2)*cos(x))/(a^2 + b^2)^3 + ((a^2 - b^2)*cos(x)^3)/(3*(a^2 + b^2)^2) + (2*a*b*(a^2 - b^2)*sin(x))/(a^2 + b^2)^3 + (2*a*b*sin(x)^3)/(3*(a^2 + b^2)^2) + (a^3*b^2)/((a^2 + b^2)^3*(a*cos(x) + b*sin(x))), (2*a^4*b*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2) - (3*a^2*b^3*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2) + (4*a^2*b^2*cos(x))/(a^2 + b^2)^3 - (a^2*cos(x))/(a^2 + b^2)^2 + (a^2*cos(x)^3)/(3*(a^2 + b^2)^2) - (b^2*cos(x)^3)/(3*(a^2 + b^2)^2) + (2*a^3*b*sin(x))/(a^2 + b^2)^3 - (2*a*b^3*sin(x))/(a^2 + b^2)^3 + (2*a*b*sin(x)^3)/(3*(a^2 + b^2)^2) + (a^3*b^2)/((a^2 + b^2)^3*(a*cos(x) + b*sin(x)))]

    @test_int [cos(x)^3*sin(x)^1/(a*cos(x) + b*sin(x))^2, x, 17, -((a*b*(a^2 - 3*b^2)*x)/(a^2 + b^2)^3) - (b^2*(3*a^2 - b^2)*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 + (a*b*cos(x)*sin(x))/(a^2 + b^2)^2 + ((a^2 - b^2)*sin(x)^2)/(2*(a^2 + b^2)^2) + (a*b^2*cos(x))/((a^2 + b^2)^2*(a*cos(x) + b*sin(x))), -((a^3*b*x)/(a^2 + b^2)^3) + (a*b^3*x)/(a^2 + b^2)^3 - (a*b*(a^2 - b^2)*x)/(a^2 + b^2)^3 + (a*b*x)/(a^2 + b^2)^2 + (b^2*cos(x)^2)/(2*(a^2 + b^2)^2) - (3*a^2*b^2*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 + (b^4*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^3 + (a*b*cos(x)*sin(x))/(a^2 + b^2)^2 + (a^2*sin(x)^2)/(2*(a^2 + b^2)^2) + (a*b^2)/((a^2 + b^2)^2*(a + b*tan(x)))]
    @test_int [cos(x)^3*sin(x)^2/(a*cos(x) + b*sin(x))^2, x, 33, -((a*b^2*(3*a^2 - 2*b^2)*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2)) + (2*a*b*(a^2 - b^2)*cos(x))/(a^2 + b^2)^3 - (2*a*b*cos(x)^3)/(3*(a^2 + b^2)^2) - (b^2*(3*a^2 - b^2)*sin(x))/(a^2 + b^2)^3 + ((a^2 - b^2)*sin(x)^3)/(3*(a^2 + b^2)^2) - (a^2*b^3)/((a^2 + b^2)^3*(a*cos(x) + b*sin(x))), -((3*a^3*b^2*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2)) + (2*a*b^4*atanh((b*cos(x) - a*sin(x))/sqrt(a^2 + b^2)))/(a^2 + b^2)^(7/2) + (2*a^3*b*cos(x))/(a^2 + b^2)^3 - (2*a*b^3*cos(x))/(a^2 + b^2)^3 - (2*a*b*cos(x)^3)/(3*(a^2 + b^2)^2) - (4*a^2*b^2*sin(x))/(a^2 + b^2)^3 + (b^2*sin(x))/(a^2 + b^2)^2 + (a^2*sin(x)^3)/(3*(a^2 + b^2)^2) - (b^2*sin(x)^3)/(3*(a^2 + b^2)^2) - (a^2*b^3)/((a^2 + b^2)^3*(a*cos(x) + b*sin(x)))]
    @test_int [cos(x)^3*sin(x)^3/(a*cos(x) + b*sin(x))^2, x, 48, -((3*a*b*(a^4 - 6*a^2*b^2 + b^4)*x)/(4*(a^2 + b^2)^4)) - (b^2*cos(x)^4)/(4*(a^2 + b^2)^2) - (3*a^2*b^2*(a^2 - b^2)*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^4 + (a*b*(5*a^2 - 3*b^2)*cos(x)*sin(x))/(4*(a^2 + b^2)^3) - (a*b*cos(x)^3*sin(x))/(2*(a^2 + b^2)^2) - (2*a^2*b^2*sin(x)^2)/(a^2 + b^2)^3 + (a^2*sin(x)^4)/(4*(a^2 + b^2)^2) - (a^2*b^3*sin(x))/((a^2 + b^2)^3*(a*cos(x) + b*sin(x))), (6*a^3*b^3*x)/(a^2 + b^2)^4 - (a^3*b*x)/(a^2 + b^2)^3 - (a*b^3*x)/(a^2 + b^2)^3 + (a*b*x)/(4*(a^2 + b^2)^2) - (b^2*cos(x)^4)/(4*(a^2 + b^2)^2) - (3*a^4*b^2*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^4 + (3*a^2*b^4*log(a*cos(x) + b*sin(x)))/(a^2 + b^2)^4 + (a^3*b*cos(x)*sin(x))/(a^2 + b^2)^3 - (a*b^3*cos(x)*sin(x))/(a^2 + b^2)^3 + (a*b*cos(x)*sin(x))/(4*(a^2 + b^2)^2) - (a*b*cos(x)^3*sin(x))/(2*(a^2 + b^2)^2) - (2*a^2*b^2*sin(x)^2)/(a^2 + b^2)^3 + (a^2*sin(x)^4)/(4*(a^2 + b^2)^2) - (a^2*b^3*sin(x))/((a^2 + b^2)^3*(a*cos(x) + b*sin(x)))]


    @test_int [tan(x)/(a*sin(x) + b*cos(x)), x, 5, atanh(sin(x))/a + (b*atanh((a*cos(x) - b*sin(x))/sqrt(a^2 + b^2)))/(a*sqrt(a^2 + b^2))]


    @test_int [cot(x)/(a*sin(x) + b*cos(x)), x, 5, -(atanh(cos(x))/b) + (a*atanh((a*cos(x) - b*sin(x))/sqrt(a^2 + b^2)))/(b*sqrt(a^2 + b^2))]
    end
