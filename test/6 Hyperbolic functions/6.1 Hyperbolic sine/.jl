@testset "6.1 Hyperbolic sine" begin
    include("6.1.1 (c+d x)^m (a+b sinh)^n.jl")
    include("6.1.3 (e x)^m (a+b sinh(c+d x^n))^p.jl")
    include("6.1.4 (d+e x)^m sinh(a+b x+c x^2)^n.jl")
    include("6.1.5 Hyperbolic sine functions.jl")
    include("6.1.7 hyper^m (a+b sinh^n)^p.jl")
end
