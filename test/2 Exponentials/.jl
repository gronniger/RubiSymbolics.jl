@testset "2 Exponentials" begin
    include("2.1 u (F^(c (a+b x)))^n.jl")
    include("2.2 (c+d x)^m (F^(g (e+f x)))^n (a+b (F^(g (e+f x)))^n)^p.jl")
    include("2.3 Exponential functions.jl")
end
