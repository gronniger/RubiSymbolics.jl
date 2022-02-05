@testset "1.2.3 General" begin
    include("1.2.3.2 (d x)^m (a+b x^n+c x^(2 n))^p.jl")
    include("1.2.3.3 (d+e x^n)^q (a+b x^n+c x^(2 n))^p.jl")
    include("1.2.3.4 (f x)^m (d+e x^n)^q (a+b x^n+c x^(2 n))^p.jl")
    include("1.2.3.5 P(x) (d x)^m (a+b x^n+c x^(2 n))^p.jl")
end
