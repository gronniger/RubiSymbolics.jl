@testset "8.10 Formal derivatives" begin
    @variables F, a, b, m, n, x

    #= ::Package:: =#

    #= ::Title:: =#
    #=Differentiation*Function*Integration*Problems=#


    @test_int [f'(x), x, 1, f(x)]
    @test_int [f''(x), x, 1, f'(x)]
    @test_int [f'''(x), x, 1, f''(x)]
    @test_int [Derivative(n)(f)(x), x, 1, Derivative(n-1)(f)(x)]
    @test_int [Derivative(1)(u)(x)*Derivative(2)(u)(x), x, 2, Derivative(1)(u)(x)^2/2]


    @test_int [f'(x)/f(x), x, 2, log(f(x))]
    @test_int [f'(x)/(a+b*f(x)), x, 2, log(a+b*f(x))/b]

    @test_int [f(x)*f'(x), x, 2, f(x)^2/2]
    @test_int [(a+b*f(x))*f'(x), x, 2, a*f(x) + (1/2)*b*f(x)^2]

    @test_int [f'(x)/sqrt(f(x)), x, 2, 2*sqrt(f(x))]
    @test_int [f'(x)/sqrt(a+b*f(x)), x, 2, (2*sqrt(a+b*f(x)))/b]

    @test_int [f(x)^n*f'(x), x, 2, f(x)^(n+1)/(n+1)]
    @test_int [(a+b*f(x))^n*f'(x), x, 2, (a+b*f(x))^(n+1)/(b*(n+1))]


    @test_int [f''(x)/f'(x), x, 2, log(f'(x))]
    @test_int [f''(x)/(a+b*f'(x)), x, 2, log(a+b*f'(x))/b]

    @test_int [f'(x)*f''(x), x, 2, f'(x)^2/2]
    @test_int [(a+b*f'(x))*f''(x), x, 2, a*f'(x) + (1/2)*b*f'(x)^2]

    @test_int [f''(x)/sqrt(f'(x)), x, 2, 2*sqrt(f'(x))]
    @test_int [f''(x)/sqrt(a+b*f'(x)), x, 2, (2*sqrt(a+b*f'(x)))/b]

    @test_int [f'(x)^n*f''(x), x, 2, f'(x)^(n+1)/(n+1)]
    @test_int [(a+b*f'(x))^n*f''(x), x, 2, (a+b*f'(x))^(n+1)/(b*(n+1))]


    @test_int [f(g(x))*g'(x), x, 1, CannotIntegrate(f(g(x))*g'(x), x)]
    @test_int [f(g'(x))*g''(x), x, 1, CannotIntegrate(f(g'(x))*g''(x), x)]


    @test_int [f'(x)*g(x) + f(x)*g'(x), x, -1, f(x)*g(x)]
    @test_int [(f'(x)*g(x) - f(x)*g'(x))/g(x)^2, x, 1, f(x)/g(x)]
    @test_int [(f'(x)*g(x) - f(x)*g'(x))/(f(x)*g(x)), x, 1, log(f(x)/g(x))]


    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(1 + f(x)^2*g(x)^2), x, 2, atan(f(x)*g(x))]
    @test_int [(g(x)*Derivative(1)(f)(x) - f(x)*g'(x))/(f(x)^2 + g(x)^2), x, 2, atan(f(x)/g(x))]
    @test_int [-((g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(1 + f(x)^2*g(x)^2)), x, 2, -atan(f(x)*g(x))]


    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(1 - f(x)^2*g(x)^2), x, 2, atanh(f(x)*g(x))]
    @test_int [((-g(x))*Derivative(1)(f)(x) + f(x)*g'(x))/(f(x)^2 - g(x)^2), x, 2, atanh(f(x)/g(x))]


    @test_int [(f(x)^(-1 + m)*g(x)^(-1 + n)*(m*g(x)*Derivative(1)(f)(x) + n*f(x)*g'(x)))/(1 - f(x)^(2*m)*g(x)^(2*n)), x, 2, atanh(f(x)^m*g(x)^n)]
    @test_int [(f(x)^(-1 + m)*g(x)^(-1 + n)*((-m)*g(x)*Derivative(1)(f)(x) + n*f(x)*g'(x)))/(f(x)^(2*m) - g(x)^(2*n)), x, 3, atanh(g(x)^n/f(x)^m)]
    @test_int [(f(x)^(-1 + m)*g(x)^(-1 - n)*((-m)*g(x)*Derivative(1)(f)(x) - n*f(x)*g'(x)))/(f(x)^(2*m) - g(x)^(-2*n)), x, 3, atanh(1/(f(x)^m*g(x)^n))]


    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(a + b*f(x)^1*g(x)^1), x, 2, log(a + b*f(x)*g(x))/b]
    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(a + b*f(x)^2*g(x)^2), x, 2, atan((sqrt(b)*f(x)*g(x))/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(a + b*f(x)^3*g(x)^3), x, 7, -(atan((a^(1/3) - 2*b^(1/3)*f(x)*g(x))/(sqrt(3)*a^(1/3)))/(sqrt(3)*a^(2/3)*b^(1/3))) + log(a^(1/3) + b^(1/3)*f(x)*g(x))/(3*a^(2/3)*b^(1/3)) - log(a^(2/3) - a^(1/3)*b^(1/3)*f(x)*g(x) + b^(2/3)*f(x)^2*g(x)^2)/(6*a^(2/3)*b^(1/3))]

    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(a + b*(f(x)*g(x))^(1/2)), x, 4, (2*sqrt(f(x)*g(x)))/b - (2*a*log(a + b*sqrt(f(x)*g(x))))/b^2]
    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(a + b*(f(x)*g(x))^(3/2)), x, 8, -((2*atan((a^(1/3) - 2*b^(1/3)*sqrt(f(x)*g(x)))/(sqrt(3)*a^(1/3))))/(sqrt(3)*a^(1/3)*b^(2/3))) - (2*log(a^(1/3) + b^(1/3)*sqrt(f(x)*g(x))))/(3*a^(1/3)*b^(2/3)) + log(a^(2/3) + b^(2/3)*f(x)*g(x) - a^(1/3)*b^(1/3)*sqrt(f(x)*g(x)))/(3*a^(1/3)*b^(2/3))]
    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(a + b*(f(x)*g(x))^(5/2)), x, 8, -((sqrt(2*(5 - sqrt(5)))*atan(sqrt((1/5)*(5 - 2*sqrt(5))) + (2*sqrt(2/(5 + sqrt(5)))*b^(1/5)*sqrt(f(x)*g(x)))/a^(1/5)))/(5*a^(3/5)*b^(2/5))) - (sqrt(2*(5 + sqrt(5)))*atan(sqrt((1/5)*(5 + 2*sqrt(5))) - (sqrt((2/5)*(5 + sqrt(5)))*b^(1/5)*sqrt(f(x)*g(x)))/a^(1/5)))/(5*a^(3/5)*b^(2/5)) - (2*log(a^(1/5) + b^(1/5)*sqrt(f(x)*g(x))))/(5*a^(3/5)*b^(2/5)) + ((1 - sqrt(5))*log(2*a^(2/5) + 2*b^(2/5)*f(x)*g(x) - a^(1/5)*b^(1/5)*sqrt(f(x)*g(x)) - sqrt(5)*a^(1/5)*b^(1/5)*sqrt(f(x)*g(x))))/(10*a^(3/5)*b^(2/5)) + ((1 + sqrt(5))*log(2*a^(2/5) + 2*b^(2/5)*f(x)*g(x) - a^(1/5)*b^(1/5)*sqrt(f(x)*g(x)) + sqrt(5)*a^(1/5)*b^(1/5)*sqrt(f(x)*g(x))))/(10*a^(3/5)*b^(2/5))]

    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(a + b*(f(x)*g(x))^n), x, 2, (f(x)*g(x)*Hypergeometric2F1(1, 1/n, 1 + 1/n, -((b*(f(x)*g(x))^n)/a)))/a]
    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(a + b*f(x)^n*g(x)^n), x, 2, CannotIntegrate((g(x)*Derivative(1)(f)(x))/(a + b*f(x)^n*g(x)^n), x) + CannotIntegrate((f(x)*g'(x))/(a + b*f(x)^n*g(x)^n), x)]


    @test_int [cos(x)*g(ℯ^x)*Derivative(1)(f)(sin(x)) + ℯ^x*f(sin(x))*Derivative(1)(g)(ℯ^x), x, -1, f(sin(x))*g(ℯ^x)]


    @test_int [F^(a + b*x)*Derivative(3)(f)(x), x, 3, b^2*F^(a + b*x)*f(x)*log(F)^2 - b^3*CannotIntegrate(F^(a + b*x)*f(x), x)*log(F)^3 - b*F^(a + b*x)*log(F)*Derivative(1)(f)(x) + F^(a + b*x)*Derivative(2)(f)(x)]
    @test_int [F^(a + b*x)*Derivative(2)(f)(x), x, 2, (-b)*F^(a + b*x)*f(x)*log(F) + b^2*CannotIntegrate(F^(a + b*x)*f(x), x)*log(F)^2 + F^(a + b*x)*Derivative(1)(f)(x)]
    @test_int [F^(a + b*x)*Derivative(1)(f)(x), x, 1, F^(a + b*x)*f(x) - b*CannotIntegrate(F^(a + b*x)*f(x), x)*log(F)]
    @test_int [F^(a + b*x)*Derivative(0)(f)(x), x, 0, CannotIntegrate(F^(a + b*x)*f(x), x)]
    @test_int [F^(a + b*x)*Derivative(-1)(f)(x), x, 1, -(CannotIntegrate(F^(a + b*x)*f(x), x)/(b*log(F))) + (F^(a + b*x)*Derivative(-1)(f)(x))/(b*log(F))]
    @test_int [F^(a + b*x)*Derivative(-2)(f)(x), x, 2, CannotIntegrate(F^(a + b*x)*f(x), x)/(b^2*log(F)^2) + (F^(a + b*x)*Derivative(-2)(f)(x))/(b*log(F)) - (F^(a + b*x)*Derivative(-1)(f)(x))/(b^2*log(F)^2)]
    @test_int [F^(a + b*x)*Derivative(-3)(f)(x), x, 3, -(CannotIntegrate(F^(a + b*x)*f(x), x)/(b^3*log(F)^3)) + (F^(a + b*x)*Derivative(-3)(f)(x))/(b*log(F)) - (F^(a + b*x)*Derivative(-2)(f)(x))/(b^2*log(F)^2) + (F^(a + b*x)*Derivative(-1)(f)(x))/(b^3*log(F)^3)]

    @test_int [F^(a + b*x)*Derivative(3)(f)(x) + b^3*F^(a + b*x)*f(x)*log(F)^3, x, 4, b^2*F^(a + b*x)*f(x)*log(F)^2 - b*F^(a + b*x)*log(F)*Derivative(1)(f)(x) + F^(a + b*x)*Derivative(2)(f)(x)]


    @test_int [sin(a + b*x)*Derivative(3)(f)(x), x, 3, b^3*CannotIntegrate(cos(a + b*x)*f(x), x) - b^2*f(x)*sin(a + b*x) - b*cos(a + b*x)*Derivative(1)(f)(x) + sin(a + b*x)*Derivative(2)(f)(x)]
    @test_int [sin(a + b*x)*Derivative(2)(f)(x), x, 2, (-b)*cos(a + b*x)*f(x) - b^2*CannotIntegrate(f(x)*sin(a + b*x), x) + sin(a + b*x)*Derivative(1)(f)(x)]
    @test_int [sin(a + b*x)*Derivative(1)(f)(x), x, 1, (-b)*CannotIntegrate(cos(a + b*x)*f(x), x) + f(x)*sin(a + b*x)]
    @test_int [sin(a + b*x)*Derivative(0)(f)(x), x, 0, CannotIntegrate(f(x)*sin(a + b*x), x)]
    @test_int [sin(a + b*x)*Derivative(-1)(f)(x), x, 1, CannotIntegrate(cos(a + b*x)*f(x), x)/b - (cos(a + b*x)*Derivative(-1)(f)(x))/b]
    @test_int [sin(a + b*x)*Derivative(-2)(f)(x), x, 2, -(CannotIntegrate(f(x)*sin(a + b*x), x)/b^2) - (cos(a + b*x)*Derivative(-2)(f)(x))/b + (sin(a + b*x)*Derivative(-1)(f)(x))/b^2]
    @test_int [sin(a + b*x)*Derivative(-3)(f)(x), x, 3, -(CannotIntegrate(cos(a + b*x)*f(x), x)/b^3) - (cos(a + b*x)*Derivative(-3)(f)(x))/b + (sin(a + b*x)*Derivative(-2)(f)(x))/b^2 + (cos(a + b*x)*Derivative(-1)(f)(x))/b^3]

    @test_int [sin(a + b*x)*Derivative(3)(f)(x) - b^3*cos(a + b*x)*f(x), x, 4, (-b^2)*f(x)*sin(a + b*x) - b*cos(a + b*x)*Derivative(1)(f)(x) + sin(a + b*x)*Derivative(2)(f)(x)]


    @test_int [cos(a + b*x)*Derivative(3)(f)(x), x, 3, (-b^2)*cos(a + b*x)*f(x) - b^3*CannotIntegrate(f(x)*sin(a + b*x), x) + b*sin(a + b*x)*Derivative(1)(f)(x) + cos(a + b*x)*Derivative(2)(f)(x)]
    @test_int [cos(a + b*x)*Derivative(2)(f)(x), x, 2, (-b^2)*CannotIntegrate(cos(a + b*x)*f(x), x) + b*f(x)*sin(a + b*x) + cos(a + b*x)*Derivative(1)(f)(x)]
    @test_int [cos(a + b*x)*Derivative(1)(f)(x), x, 1, cos(a + b*x)*f(x) + b*CannotIntegrate(f(x)*sin(a + b*x), x)]
    @test_int [cos(a + b*x)*Derivative(0)(f)(x), x, 0, CannotIntegrate(cos(a + b*x)*f(x), x)]
    @test_int [cos(a + b*x)*Derivative(-1)(f)(x), x, 1, -(CannotIntegrate(f(x)*sin(a + b*x), x)/b) + (sin(a + b*x)*Derivative(-1)(f)(x))/b]
    @test_int [cos(a + b*x)*Derivative(-2)(f)(x), x, 2, -(CannotIntegrate(cos(a + b*x)*f(x), x)/b^2) + (sin(a + b*x)*Derivative(-2)(f)(x))/b + (cos(a + b*x)*Derivative(-1)(f)(x))/b^2]
    @test_int [cos(a + b*x)*Derivative(-3)(f)(x), x, 3, CannotIntegrate(f(x)*sin(a + b*x), x)/b^3 + (sin(a + b*x)*Derivative(-3)(f)(x))/b + (cos(a + b*x)*Derivative(-2)(f)(x))/b^2 - (sin(a + b*x)*Derivative(-1)(f)(x))/b^3]

    @test_int [cos(a + b*x)*Derivative(-2)(f)(x) + cos(a + b*x)*(f(x)/b^2), x, 3, (sin(a + b*x)*Derivative(-2)(f)(x))/b + (cos(a + b*x)*Derivative(-1)(f)(x))/b^2]


    @test_int [cos(f(x)*g(x))*(g(x)*Derivative(1)(f)(x) + f(x)*g'(x)), x, 2, sin(f(x)*g(x))]
    @test_int [cos(g(x)*Derivative(m)(f)(x))*(g'(x)*Derivative(m)(f)(x) + g(x)*Derivative(1 + m)(f)(x)), x, 2, sin(g(x)*Derivative(m)(f)(x))]
    @test_int [cos(Derivative(-1 + m)(f)(x)*Derivative(-1 + n)(g)(x))*(Derivative(m)(f)(x)*Derivative(-1 + n)(g)(x) + Derivative(-1 + m)(f)(x)*Derivative(n)(g)(x)), x, 2, sin(Derivative(-1 + m)(f)(x)*Derivative(-1 + n)(g)(x))]


    @test_int [(g(x)*Derivative(1)(f)(x) + f(x)*g'(x))/(a + b*f(x)^2*g(x)^2), x, 2, atan((sqrt(b)*f(x)*g(x))/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [(g'(x)*Derivative(m)(f)(x) + g(x)*Derivative(1 + m)(f)(x))/(a + b*g(x)^2*Derivative(m)(f)(x)^2), x, 2, atan((sqrt(b)*g(x)*Derivative(m)(f)(x))/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [(Derivative(1 + m)(f)(x)*Derivative(n)(g)(x) + Derivative(m)(f)(x)*Derivative(1 + n)(g)(x))/(a + b*Derivative(m)(f)(x)^2*Derivative(n)(g)(x)^2), x, 2, atan((sqrt(b)*Derivative(m)(f)(x)*Derivative(n)(g)(x))/sqrt(a))/(sqrt(a)*sqrt(b))]


    @test_int [Derivative(1)(F)(f(x)*g(x))*(g(x)*Derivative(1)(f)(x) + f(x)*g'(x)), x, 2, F(f(x)*g(x))]
    @test_int [Derivative(1)(F)(g(x)*Derivative(m)(f)(x))*(g'(x)*Derivative(m)(f)(x) + g(x)*Derivative(1 + m)(f)(x)), x, 2, F(g(x)*Derivative(m)(f)(x))]
    @test_int [Derivative(1)(F)(Derivative(-1 + m)(f)(x)*Derivative(-1 + n)(g)(x))*(Derivative(m)(f)(x)*Derivative(-1 + n)(g)(x) + Derivative(-1 + m)(f)(x)*Derivative(n)(g)(x)), x, 2, F(Derivative(-1 + m)(f)(x)*Derivative(-1 + n)(g)(x))]


    @test_int [cos(f(x)^2*g(x))*f(x)*(2*g(x)*Derivative(1)(f)(x) + f(x)*g'(x)), x, 2, sin(f(x)^2*g(x))]
    @test_int [cos(g(x)^2*Derivative(m)(f)(x))*g(x)*(2*g'(x)*Derivative(m)(f)(x) + g(x)*Derivative(1 + m)(f)(x)), x, 2, sin(g(x)^2*Derivative(m)(f)(x))]
    @test_int [cos(g(x)*Derivative(m)(f)(x)^2)*Derivative(m)(f)(x)*(g'(x)*Derivative(m)(f)(x) + 2*g(x)*Derivative(1 + m)(f)(x)), x, 2, sin(g(x)*Derivative(m)(f)(x)^2)]
    @test_int [cos(Derivative(-1 + m)(f)(x)^2*Derivative(-1 + n)(g)(x))*Derivative(-1 + m)(f)(x)*(2*Derivative(m)(f)(x)*Derivative(-1 + n)(g)(x) + Derivative(-1 + m)(f)(x)*Derivative(n)(g)(x)), x, 2, sin(Derivative(-1 + m)(f)(x)^2*Derivative(-1 + n)(g)(x))]


    @test_int [(f(x)*(2*g(x)*Derivative(1)(f)(x) + f(x)*g'(x)))/(a + b*f(x)^4*g(x)^2), x, 2, atan((sqrt(b)*f(x)^2*g(x))/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [(g(x)*(2*g'(x)*Derivative(m)(f)(x) + g(x)*Derivative(1 + m)(f)(x)))/(a + b*g(x)^4*Derivative(m)(f)(x)^2), x, 2, atan((sqrt(b)*g(x)^2*Derivative(m)(f)(x))/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [(Derivative(m)(f)(x)*(g'(x)*Derivative(m)(f)(x) + 2*g(x)*Derivative(1 + m)(f)(x)))/(a + b*g(x)^2*Derivative(m)(f)(x)^4), x, 2, atan((sqrt(b)*g(x)*Derivative(m)(f)(x)^2)/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [(Derivative(m)(f)(x)*(2*Derivative(1 + m)(f)(x)*Derivative(n)(g)(x) + Derivative(m)(f)(x)*Derivative(1 + n)(g)(x)))/(a + b*Derivative(m)(f)(x)^4*Derivative(n)(g)(x)^2), x, 2, atan((sqrt(b)*Derivative(m)(f)(x)^2*Derivative(n)(g)(x))/sqrt(a))/(sqrt(a)*sqrt(b))]


    @test_int [f(x)*Derivative(1)(F)(f(x)^2*g(x))*(2*g(x)*Derivative(1)(f)(x) + f(x)*g'(x)), x, 2, F(f(x)^2*g(x))]
    @test_int [g(x)*Derivative(1)(F)(g(x)^2*Derivative(m)(f)(x))*(2*g'(x)*Derivative(m)(f)(x) + g(x)*Derivative(1 + m)(f)(x)), x, 2, F(g(x)^2*Derivative(m)(f)(x))]
    @test_int [Derivative(1)(F)(g(x)*Derivative(m)(f)(x)^2)*Derivative(m)(f)(x)*(g'(x)*Derivative(m)(f)(x) + 2*g(x)*Derivative(1 + m)(f)(x)), x, 2, F(g(x)*Derivative(m)(f)(x)^2)]
    @test_int [Derivative(1)(F)(Derivative(-1 + m)(f)(x)^2*Derivative(-1 + n)(g)(x))*Derivative(-1 + m)(f)(x)*(2*Derivative(m)(f)(x)*Derivative(-1 + n)(g)(x) + Derivative(-1 + m)(f)(x)*Derivative(n)(g)(x)), x, 2, F(Derivative(-1 + m)(f)(x)^2*Derivative(-1 + n)(g)(x))]


    @test_int [cos(f(x)^2*g(x)^3)*f(x)*g(x)^2*(2*g(x)*Derivative(1)(f)(x) + 3*f(x)*g'(x)), x, 2, sin(f(x)^2*g(x)^3)]
    @test_int [cos(g(x)^3*Derivative(m)(f)(x)^2)*g(x)^2*Derivative(m)(f)(x)*(3*g'(x)*Derivative(m)(f)(x) + 2*g(x)*Derivative(1 + m)(f)(x)), x, 2, sin(g(x)^3*Derivative(m)(f)(x)^2)]
    @test_int [cos(Derivative(m)(f)(x)^2*Derivative(n)(g)(x)^3)*Derivative(m)(f)(x)*Derivative(n)(g)(x)^2*(2*Derivative(1 + m)(f)(x)*Derivative(n)(g)(x) + 3*Derivative(m)(f)(x)*Derivative(1 + n)(g)(x)), x, 2, sin(Derivative(m)(f)(x)^2*Derivative(n)(g)(x)^3)]


    @test_int [(f(x)*g(x)^2*(2*g(x)*Derivative(1)(f)(x) + 3*f(x)*g'(x)))/(a + b*f(x)^4*g(x)^6), x, 2, atan((sqrt(b)*f(x)^2*g(x)^3)/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [(g(x)^2*Derivative(m)(f)(x)*(3*g'(x)*Derivative(m)(f)(x) + 2*g(x)*Derivative(1 + m)(f)(x)))/(a + b*g(x)^6*Derivative(m)(f)(x)^4), x, 2, atan((sqrt(b)*g(x)^3*Derivative(m)(f)(x)^2)/sqrt(a))/(sqrt(a)*sqrt(b))]
    @test_int [Derivative(m)(f)(x)*Derivative(n)(g)(x)^2*(2*Derivative(1 + m)(f)(x)*Derivative(n)(g)(x) + 3*Derivative(m)(f)(x)*Derivative(1 + n)(g)(x))/(a + b*Derivative(m)(f)(x)^4*Derivative(n)(g)(x)^6), x, 2, atan((sqrt(b)*Derivative(m)(f)(x)^2*Derivative(n)(g)(x)^3)/sqrt(a))/(sqrt(a)*sqrt(b))]


    @test_int [f(x)*g(x)^2*Derivative(1)(F)(f(x)^2*g(x)^3)*(2*g(x)*Derivative(1)(f)(x) + 3*f(x)*g'(x)), x, 2, F(f(x)^2*g(x)^3)]
    @test_int [g(x)^2*Derivative(1)(F)(g(x)^3*Derivative(m)(f)(x)^2)*Derivative(m)(f)(x)*(3*g'(x)*Derivative(m)(f)(x) + 2*g(x)*Derivative(1 + m)(f)(x)), x, 2, F(g(x)^3*Derivative(m)(f)(x)^2)]
    @test_int [Derivative(1)(F)(Derivative(m)(f)(x)^2*Derivative(n)(g)(x)^3)*Derivative(m)(f)(x)*Derivative(n)(g)(x)^2*(2*Derivative(1 + m)(f)(x)*Derivative(n)(g)(x) + 3*Derivative(m)(f)(x)*Derivative(1 + n)(g)(x)), x, 2, F(Derivative(m)(f)(x)^2*Derivative(n)(g)(x)^3)]
    end
