@testset "5.3 Inverse tangent" begin
    include("5.3.2 (d x)^m (a+b arctan(c x^n))^p.jl")
    include("5.3.3 (d+e x)^m (a+b arctan(c x^n))^p.jl")
    include("5.3.4 u (a+b arctan(c x))^p.jl")
    include("5.3.5 u (a+b arctan(c+d x))^p.jl")
    include("5.3.6 Exponentials of inverse tangent.jl")
    include("5.3.7 Inverse tangent functions.jl")
end
