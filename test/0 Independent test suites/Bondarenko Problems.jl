@testset "Bondarenko Problems" begin
    (x, z, ) = @variables x z

    #= ::Package:: =#

    #= ::Title:: =#
    #=Vladimir*Bondarenko*Integration*Problems=#


    #= ::Section::Closed:: =#
    #=9*June*2010=#


    @test_int [1/(sqrt(2) + sin(z) + cos(z)), z, 1, -((1 - sqrt(2)*sin(z))/(cos(z) - sin(z)))]


    @test_int [1/(sqrt(1 + x) + sqrt(1 - x))^2, x, 4, -(1/(2*x)) + sqrt(1 - x^2)/(2*x) + asin(x)/2]


    @test_int [1/(1 + cos(x))^2, x, 2, sin(x)/(3*(1 + cos(x))^2) + sin(x)/(3*(1 + cos(x)))]
    @test_int [sin(x)/sqrt(1 + x), x, 5, sqrt(2*pi)*cos(1)*FresnelS(sqrt(2/pi)*sqrt(1 + x)) - sqrt(2*pi)*FresnelC(sqrt(2/pi)*sqrt(1 + x))*sin(1)]
    @test_int [1/(cos(x) + sin(x))^6, x, 3, -((cos(x) - sin(x))/(10*(cos(x) + sin(x))^5)) - (cos(x) - sin(x))/(15*(cos(x) + sin(x))^3) + (2*sin(x))/(15*(cos(x) + sin(x)))]


    @test_int [log(x^4 + 1/x^4), x, 22, -4*x - sqrt(2 + sqrt(2))*atan((sqrt(2 - sqrt(2)) - 2*x)/sqrt(2 + sqrt(2))) - sqrt(2 - sqrt(2))*atan((sqrt(2 + sqrt(2)) - 2*x)/sqrt(2 - sqrt(2))) + sqrt(2 + sqrt(2))*atan((sqrt(2 - sqrt(2)) + 2*x)/sqrt(2 + sqrt(2))) + sqrt(2 - sqrt(2))*atan((sqrt(2 + sqrt(2)) + 2*x)/sqrt(2 - sqrt(2))) - (1/2)*sqrt(2 - sqrt(2))*log(1 - sqrt(2 - sqrt(2))*x + x^2) + (1/2)*sqrt(2 - sqrt(2))*log(1 + sqrt(2 - sqrt(2))*x + x^2) - (1/2)*sqrt(2 + sqrt(2))*log(1 - sqrt(2 + sqrt(2))*x + x^2) + (1/2)*sqrt(2 + sqrt(2))*log(1 + sqrt(2 + sqrt(2))*x + x^2) + x*log(1/x^4 + x^4)]
    @test_int [log(1 + x)/(x*sqrt(1 + sqrt(1 + x))), x, -1, -8*atanh(sqrt(1 + sqrt(1 + x))) - (2*log(1 + x))/sqrt(1 + sqrt(1 + x)) - sqrt(2)*atanh(sqrt(1 + sqrt(1 + x))/sqrt(2))*log(1 + x) + 2*sqrt(2)*atanh(1/sqrt(2))*log(1 - sqrt(1 + sqrt(1 + x))) - 2*sqrt(2)*atanh(1/sqrt(2))*log(1 + sqrt(1 + sqrt(1 + x))) + sqrt(2)*PolyLog(2, -((sqrt(2)*(1 - sqrt(1 + sqrt(1 + x))))/(2 - sqrt(2)))) - sqrt(2)*PolyLog(2, (sqrt(2)*(1 - sqrt(1 + sqrt(1 + x))))/(2 + sqrt(2))) - sqrt(2)*PolyLog(2, -((sqrt(2)*(1 + sqrt(1 + sqrt(1 + x))))/(2 - sqrt(2)))) + sqrt(2)*PolyLog(2, (sqrt(2)*(1 + sqrt(1 + sqrt(1 + x))))/(2 + sqrt(2)))]
    @test_int [log(1 + x)/x*sqrt(1 + sqrt(1 + x)), x, -1, -16*sqrt(1 + sqrt(1 + x)) + 16*atanh(sqrt(1 + sqrt(1 + x))) + 4*sqrt(1 + sqrt(1 + x))*log(1 + x) - 2*sqrt(2)*atanh(sqrt(1 + sqrt(1 + x))/sqrt(2))*log(1 + x) + 4*sqrt(2)*atanh(1/sqrt(2))*log(1 - sqrt(1 + sqrt(1 + x))) - 4*sqrt(2)*atanh(1/sqrt(2))*log(1 + sqrt(1 + sqrt(1 + x))) + 2*sqrt(2)*PolyLog(2, -((sqrt(2)*(1 - sqrt(1 + sqrt(1 + x))))/(2 - sqrt(2)))) - 2*sqrt(2)*PolyLog(2, (sqrt(2)*(1 - sqrt(1 + sqrt(1 + x))))/(2 + sqrt(2))) - 2*sqrt(2)*PolyLog(2, -((sqrt(2)*(1 + sqrt(1 + sqrt(1 + x))))/(2 - sqrt(2)))) + 2*sqrt(2)*PolyLog(2, (sqrt(2)*(1 + sqrt(1 + sqrt(1 + x))))/(2 + sqrt(2)))]


    #= ::Section::Closed:: =#
    #=4*July*2010=#


    @test_int [1/(1 + sqrt(x + sqrt(1 + x^2))), x, 4, -(1/(2*(x + sqrt(1 + x^2)))) + 1/sqrt(x + sqrt(1 + x^2)) + sqrt(x + sqrt(1 + x^2)) + (1/2)*log(x + sqrt(1 + x^2)) - 2*log(1 + sqrt(x + sqrt(1 + x^2)))]
    @test_int [sqrt(1 + x)/(x + sqrt(1 + sqrt(1 + x))), x, 6, 2*sqrt(1 + x) + (8*atanh((1 + 2*sqrt(1 + sqrt(1 + x)))/sqrt(5)))/sqrt(5)]
    @test_int [1/(x - sqrt(1 + sqrt(1 + x))), x, 5, (2/5)*(5 + sqrt(5))*log(1 - sqrt(5) - 2*sqrt(1 + sqrt(1 + x))) + (2/5)*(5 - sqrt(5))*log(1 + sqrt(5) - 2*sqrt(1 + sqrt(1 + x)))]
    @test_int [x/(x + sqrt(1 - sqrt(1 + x))), x, 6, 2*sqrt(1 + x) - 4*sqrt(1 - sqrt(1 + x)) + (1 - sqrt(1 + x))^2 + (8*atanh((1 + 2*sqrt(1 - sqrt(1 + x)))/sqrt(5)))/sqrt(5)]
    @test_int [sqrt(sqrt(1 + x) + x)/((1 + x^2)*sqrt(1 + x)), x, 20, -((im*atan((2 + sqrt(1 - im) - (1 - 2*sqrt(1 - im))*sqrt(1 + x))/(2*sqrt(im + sqrt(1 - im))*sqrt(x + sqrt(1 + x)))))/(2*sqrt((1 - im)/(im + sqrt(1 - im))))) + (im*atan((2 + sqrt(1 + im) - (1 - 2*sqrt(1 + im))*sqrt(1 + x))/(2*sqrt(-im + sqrt(1 + im))*sqrt(x + sqrt(1 + x)))))/(2*sqrt(-((1 + im)/(im - sqrt(1 + im))))) + (im*atanh((2 - sqrt(1 - im) - (1 + 2*sqrt(1 - im))*sqrt(1 + x))/(2*sqrt(-im + sqrt(1 - im))*sqrt(x + sqrt(1 + x)))))/(2*sqrt(-((1 - im)/(im - sqrt(1 - im))))) - (im*atanh((2 - sqrt(1 + im) - (1 + 2*sqrt(1 + im))*sqrt(1 + x))/(2*sqrt(im + sqrt(1 + im))*sqrt(x + sqrt(1 + x)))))/(2*sqrt((1 + im)/(im + sqrt(1 + im))))]
    @test_int [sqrt(x + sqrt(1 + x))/(1 + x^2), x, 22, (1/2)*im*sqrt(im + sqrt(1 - im))*atan((2 + sqrt(1 - im) - (1 - 2*sqrt(1 - im))*sqrt(1 + x))/(2*sqrt(im + sqrt(1 - im))*sqrt(x + sqrt(1 + x)))) - (1/2)*im*sqrt(-im + sqrt(1 + im))*atan((2 + sqrt(1 + im) - (1 - 2*sqrt(1 + im))*sqrt(1 + x))/(2*sqrt(-im + sqrt(1 + im))*sqrt(x + sqrt(1 + x)))) + (1/2)*im*sqrt(-im + sqrt(1 - im))*atanh((2 - sqrt(1 - im) - (1 + 2*sqrt(1 - im))*sqrt(1 + x))/(2*sqrt(-im + sqrt(1 - im))*sqrt(x + sqrt(1 + x)))) - (1/2)*im*sqrt(im + sqrt(1 + im))*atanh((2 - sqrt(1 + im) - (1 + 2*sqrt(1 + im))*sqrt(1 + x))/(2*sqrt(im + sqrt(1 + im))*sqrt(x + sqrt(1 + x))))]
    @test_int [sqrt(1 + sqrt(x) + sqrt(1 + 2*sqrt(x) + 2*x)), x, 2, (2*sqrt(1 + sqrt(x) + sqrt(1 + 2*sqrt(x) + 2*x))*(2 + sqrt(x) + 6*x^(3/2) - (2 - sqrt(x))*sqrt(1 + 2*sqrt(x) + 2*x)))/(15*sqrt(x))]
    @test_int [sqrt(sqrt(2) + sqrt(x) + sqrt(2 + sqrt(8)*sqrt(x) + 2*x)), x, 3, (1/(15*sqrt(x)))*(2*sqrt(2)*sqrt(sqrt(2) + sqrt(x) + sqrt(2)*sqrt(1 + sqrt(2)*sqrt(x) + x))*(4 + sqrt(2)*sqrt(x) + 3*sqrt(2)*x^(3/2) - sqrt(2)*(2*sqrt(2) - sqrt(x))*sqrt(1 + sqrt(2)*sqrt(x) + x)))]
    @test_int [sqrt(x + sqrt(1 + x))/x^2, x, 7, -(sqrt(x + sqrt(1 + x))/x) - (1/4)*atan((3 + sqrt(1 + x))/(2*sqrt(x + sqrt(1 + x)))) + (3/4)*atanh((1 - 3*sqrt(1 + x))/(2*sqrt(x + sqrt(1 + x))))]
    @test_int [sqrt(1/x + sqrt(1 + 1/x)), x, 7, sqrt(sqrt(1 + 1/x) + 1/x)*x + (1/4)*atan((3 + sqrt(1 + 1/x))/(2*sqrt(sqrt(1 + 1/x) + 1/x))) - (3/4)*atanh((1 - 3*sqrt(1 + 1/x))/(2*sqrt(sqrt(1 + 1/x) + 1/x)))]


    @test_int [sqrt(1 + exp(-x))/(exp(x) - exp(-x)), x, 6, (-sqrt(2))*atanh(sqrt(1 + ℯ^(-x))/sqrt(2))]
    @test_int [sqrt(1 + exp(-x))/sinh(x), x, 7, -2*sqrt(2)*atanh(sqrt(1 + ℯ^(-x))/sqrt(2))]


    @test_int [1/(cos(x) + cos(3*x))^5, x, -45, (-(523/256))*atanh(sin(x)) + (1483*atanh(sqrt(2)*sin(x)))/(512*sqrt(2)) + sin(x)/(32*(1 - 2*sin(x)^2)^4) - (17*sin(x))/(192*(1 - 2*sin(x)^2)^3) + (203*sin(x))/(768*(1 - 2*sin(x)^2)^2) - (437*sin(x))/(512*(1 - 2*sin(x)^2)) - (43/256)*sec(x)*tan(x) - (1/128)*sec(x)^3*tan(x)]
    @test_int [1/(cos(x) + sin(x) + 1)^2, x, 3, -log(1 + tan(x/2)) - (cos(x) - sin(x))/(1 + cos(x) + sin(x))]


    @test_int [sqrt(1 + tanh(4*x)), x, 2, atanh(sqrt(1 + tanh(4*x))/sqrt(2))/(2*sqrt(2))]
    @test_int [tanh(x)/sqrt(exp(2*x) + exp(x)), x, -11, (2*sqrt(ℯ^x + ℯ^(2*x)))/ℯ^x - atan((im - (1 - 2*im)*ℯ^x)/(2*sqrt(1 + im)*sqrt(ℯ^x + ℯ^(2*x))))/sqrt(1 + im) + atan((im + (1 + 2*im)*ℯ^x)/(2*sqrt(1 - im)*sqrt(ℯ^x + ℯ^(2*x))))/sqrt(1 - im)]
    @test_int [sqrt(sinh(2*x)/cosh(x)), x, 5, (2*im*sqrt(2)*Elliptic.E(pi/4 - (im*x)/2, 2)*sqrt(sinh(x)))/sqrt(im*sinh(x)), (2*im*Elliptic.E(pi/4 - (im*x)/2, 2)*sqrt(sech(x)*sinh(2*x)))/sqrt(im*sinh(x))]


    @test_int [log(x^2 + sqrt(1 - x^2)), x, -31, -2*x - asin(x) + sqrt((1/2)*(1 + sqrt(5)))*atan(sqrt(2/(1 + sqrt(5)))*x) + sqrt((1/2)*(1 + sqrt(5)))*atan((sqrt((1/2)*(1 + sqrt(5)))*x)/sqrt(1 - x^2)) + sqrt((1/2)*(-1 + sqrt(5)))*atanh(sqrt(2/(-1 + sqrt(5)))*x) - sqrt((1/2)*(-1 + sqrt(5)))*atanh((sqrt((1/2)*(-1 + sqrt(5)))*x)/sqrt(1 - x^2)) + x*log(x^2 + sqrt(1 - x^2))]
    @test_int [log(1 + exp(x))/(1 + exp(2*x)), x, 12, (-(1/2))*log((1/2 - im/2)*(im - ℯ^x))*log(1 + ℯ^x) - (1/2)*log((-(1/2) - im/2)*(im + ℯ^x))*log(1 + ℯ^x) - PolyLog(2, -ℯ^x) - (1/2)*PolyLog(2, (1/2 - im/2)*(1 + ℯ^x)) - (1/2)*PolyLog(2, (1/2 + im/2)*(1 + ℯ^x))]
    @test_int [log(1 + cosh(x)^2)^2*cosh(x), x, 13, -8*sqrt(2)*atan(sinh(x)/sqrt(2)) + 4*im*sqrt(2)*atan(sinh(x)/sqrt(2))^2 + 8*sqrt(2)*atan(sinh(x)/sqrt(2))*log((2*sqrt(2))/(sqrt(2) + im*sinh(x))) + 4*sqrt(2)*atan(sinh(x)/sqrt(2))*log(2 + sinh(x)^2) + 4*im*sqrt(2)*PolyLog(2, 1 - (2*sqrt(2))/(sqrt(2) + im*sinh(x))) + 8*sinh(x) - 4*log(2 + sinh(x)^2)*sinh(x) + log(2 + sinh(x)^2)^2*sinh(x)]
    @test_int [log(sinh(x) + cosh(x)^2)^2*cosh(x), x, 28, -4*sqrt(3)*atan((1 + 2*sinh(x))/sqrt(3)) - (1/2)*(1 - im*sqrt(3))*log(1 - im*sqrt(3) + 2*sinh(x))^2 - (1 + im*sqrt(3))*log((im*(1 - im*sqrt(3) + 2*sinh(x)))/(2*sqrt(3)))*log(1 + im*sqrt(3) + 2*sinh(x)) - (1/2)*(1 + im*sqrt(3))*log(1 + im*sqrt(3) + 2*sinh(x))^2 - (1 - im*sqrt(3))*log(1 - im*sqrt(3) + 2*sinh(x))*log(-((im*(1 + im*sqrt(3) + 2*sinh(x)))/(2*sqrt(3)))) - 2*log(1 + sinh(x) + sinh(x)^2) + (1 - im*sqrt(3))*log(1 - im*sqrt(3) + 2*sinh(x))*log(1 + sinh(x) + sinh(x)^2) + (1 + im*sqrt(3))*log(1 + im*sqrt(3) + 2*sinh(x))*log(1 + sinh(x) + sinh(x)^2) - (1 + im*sqrt(3))*PolyLog(2, -((im - sqrt(3) + 2*im*sinh(x))/(2*sqrt(3)))) - (1 - im*sqrt(3))*PolyLog(2, (im + sqrt(3) + 2*im*sinh(x))/(2*sqrt(3))) + 8*sinh(x) - 4*log(1 + sinh(x) + sinh(x)^2)*sinh(x) + log(1 + sinh(x) + sinh(x)^2)^2*sinh(x)]
    @test_int [log(x + sqrt(1 + x))/(1 + x^2), x, 44, (1/2)*im*log(sqrt(1 - im) - sqrt(1 + x))*log(x + sqrt(1 + x)) - (1/2)*im*log(sqrt(1 + im) - sqrt(1 + x))*log(x + sqrt(1 + x)) + (1/2)*im*log(sqrt(1 - im) + sqrt(1 + x))*log(x + sqrt(1 + x)) - (1/2)*im*log(sqrt(1 + im) + sqrt(1 + x))*log(x + sqrt(1 + x)) - (1/2)*im*log(sqrt(1 - im) + sqrt(1 + x))*log((1 - sqrt(5) + 2*sqrt(1 + x))/(1 - 2*sqrt(1 - im) - sqrt(5))) - (1/2)*im*log(sqrt(1 - im) - sqrt(1 + x))*log((1 - sqrt(5) + 2*sqrt(1 + x))/(1 + 2*sqrt(1 - im) - sqrt(5))) + (1/2)*im*log(sqrt(1 + im) + sqrt(1 + x))*log((1 - sqrt(5) + 2*sqrt(1 + x))/(1 - 2*sqrt(1 + im) - sqrt(5))) + (1/2)*im*log(sqrt(1 + im) - sqrt(1 + x))*log((1 - sqrt(5) + 2*sqrt(1 + x))/(1 + 2*sqrt(1 + im) - sqrt(5))) - (1/2)*im*log(sqrt(1 - im) + sqrt(1 + x))*log((1 + sqrt(5) + 2*sqrt(1 + x))/(1 - 2*sqrt(1 - im) + sqrt(5))) - (1/2)*im*log(sqrt(1 - im) - sqrt(1 + x))*log((1 + sqrt(5) + 2*sqrt(1 + x))/(1 + 2*sqrt(1 - im) + sqrt(5))) + (1/2)*im*log(sqrt(1 + im) + sqrt(1 + x))*log((1 + sqrt(5) + 2*sqrt(1 + x))/(1 - 2*sqrt(1 + im) + sqrt(5))) + (1/2)*im*log(sqrt(1 + im) - sqrt(1 + x))*log((1 + sqrt(5) + 2*sqrt(1 + x))/(1 + 2*sqrt(1 + im) + sqrt(5))) - (1/2)*im*PolyLog(2, (2*(sqrt(1 - im) - sqrt(1 + x)))/(1 + 2*sqrt(1 - im) - sqrt(5))) - (1/2)*im*PolyLog(2, (2*(sqrt(1 - im) - sqrt(1 + x)))/(1 + 2*sqrt(1 - im) + sqrt(5))) + (1/2)*im*PolyLog(2, (2*(sqrt(1 + im) - sqrt(1 + x)))/(1 + 2*sqrt(1 + im) - sqrt(5))) + (1/2)*im*PolyLog(2, (2*(sqrt(1 + im) - sqrt(1 + x)))/(1 + 2*sqrt(1 + im) + sqrt(5))) - (1/2)*im*PolyLog(2, -((2*(sqrt(1 - im) + sqrt(1 + x)))/(1 - 2*sqrt(1 - im) - sqrt(5)))) - (1/2)*im*PolyLog(2, -((2*(sqrt(1 - im) + sqrt(1 + x)))/(1 - 2*sqrt(1 - im) + sqrt(5)))) + (1/2)*im*PolyLog(2, -((2*(sqrt(1 + im) + sqrt(1 + x)))/(1 - 2*sqrt(1 + im) - sqrt(5)))) + (1/2)*im*PolyLog(2, -((2*(sqrt(1 + im) + sqrt(1 + x)))/(1 - 2*sqrt(1 + im) + sqrt(5))))]
    @test_int [log(x + sqrt(1 + x))^2/(1 + x)^2, x, 35, log(1 + x) + (2*log(x + sqrt(1 + x)))/sqrt(1 + x) - 6*log(sqrt(1 + x))*log(x + sqrt(1 + x)) - log(x + sqrt(1 + x))^2/(1 + x) - (1 + sqrt(5))*log(1 - sqrt(5) + 2*sqrt(1 + x)) + 6*log((1/2)*(-1 + sqrt(5)))*log(1 - sqrt(5) + 2*sqrt(1 + x)) + (3 + sqrt(5))*log(x + sqrt(1 + x))*log(1 - sqrt(5) + 2*sqrt(1 + x)) - (1/2)*(3 + sqrt(5))*log(1 - sqrt(5) + 2*sqrt(1 + x))^2 - (1 - sqrt(5))*log(1 + sqrt(5) + 2*sqrt(1 + x)) + (3 - sqrt(5))*log(x + sqrt(1 + x))*log(1 + sqrt(5) + 2*sqrt(1 + x)) - (3 - sqrt(5))*log(-((1 - sqrt(5) + 2*sqrt(1 + x))/(2*sqrt(5))))*log(1 + sqrt(5) + 2*sqrt(1 + x)) - (1/2)*(3 - sqrt(5))*log(1 + sqrt(5) + 2*sqrt(1 + x))^2 - (3 + sqrt(5))*log(1 - sqrt(5) + 2*sqrt(1 + x))*log((1 + sqrt(5) + 2*sqrt(1 + x))/(2*sqrt(5))) + 6*log(sqrt(1 + x))*log(1 + (2*sqrt(1 + x))/(1 + sqrt(5))) + 6*PolyLog(2, -((2*sqrt(1 + x))/(1 + sqrt(5)))) - (3 + sqrt(5))*PolyLog(2, -((1 - sqrt(5) + 2*sqrt(1 + x))/(2*sqrt(5)))) - (3 - sqrt(5))*PolyLog(2, (1 + sqrt(5) + 2*sqrt(1 + x))/(2*sqrt(5))) - 6*PolyLog(2, 1 + (2*sqrt(1 + x))/(1 - sqrt(5)))]
    @test_int [log(x + sqrt(1 + x))/x, x, 21, log(-1 + sqrt(1 + x))*log(x + sqrt(1 + x)) + log(1 + sqrt(1 + x))*log(x + sqrt(1 + x)) - log(-1 + sqrt(1 + x))*log((1 - sqrt(5) + 2*sqrt(1 + x))/(3 - sqrt(5))) - log(1 + sqrt(1 + x))*log(-((1 - sqrt(5) + 2*sqrt(1 + x))/(1 + sqrt(5)))) - log(1 + sqrt(1 + x))*log(-((1 + sqrt(5) + 2*sqrt(1 + x))/(1 - sqrt(5)))) - log(-1 + sqrt(1 + x))*log((1 + sqrt(5) + 2*sqrt(1 + x))/(3 + sqrt(5))) - PolyLog(2, (2*(1 - sqrt(1 + x)))/(3 - sqrt(5))) - PolyLog(2, (2*(1 - sqrt(1 + x)))/(3 + sqrt(5))) - PolyLog(2, (2*(1 + sqrt(1 + x)))/(1 - sqrt(5))) - PolyLog(2, (2*(1 + sqrt(1 + x)))/(1 + sqrt(5)))]


    @test_int [atan(2*tan(x)), x, 7, x*atan(2*tan(x)) + (1/2)*im*x*log(1 - 3*ℯ^(2*im*x)) - (1/2)*im*x*log(1 - (1/3)*ℯ^(2*im*x)) - (1/4)*PolyLog(2, (1/3)*ℯ^(2*im*x)) + (1/4)*PolyLog(2, 3*ℯ^(2*im*x))]
    @test_int [atan(x)*log(x)/x, x, 5, (1/2)*im*log(x)*PolyLog(2, (-im)*x) - (1/2)*im*log(x)*PolyLog(2, im*x) - (1/2)*im*PolyLog(3, (-im)*x) + (1/2)*im*PolyLog(3, im*x)]


    #= Note: Mathematica*is*unable*to*differentiate*result*back*to*integrand! =# 
    @test_int [atan(x)^2*sqrt(1 + x^2), x, 10, asinh(x) - sqrt(1 + x^2)*atan(x) + (1/2)*x*sqrt(1 + x^2)*atan(x)^2 - im*atan(ℯ^(im*atan(x)))*atan(x)^2 + im*atan(x)*PolyLog(2, (-im)*ℯ^(im*atan(x))) - im*atan(x)*PolyLog(2, im*ℯ^(im*atan(x))) - PolyLog(3, (-im)*ℯ^(im*atan(x))) + PolyLog(3, im*ℯ^(im*atan(x)))]
    end
