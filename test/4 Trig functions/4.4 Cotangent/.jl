@testset "4.4 Cotangent" begin
    include("4.4.0 (a trg)^m (b cot)^n.jl")
    include("4.4.1.2 (d csc)^m (a+b cot)^n.jl")
    include("4.4.1.3 (d cos)^m (a+b cot)^n.jl")
    include("4.4.10 (c+d x)^m (a+b cot)^n.jl")
    include("4.4.2.1 (a+b cot)^m (c+d cot)^n.jl")
    include("4.4.7 (d trig)^m (a+b (c cot)^n)^p.jl")
    include("4.4.9 trig^m (a+b cot^n+c cot^(2 n))^p.jl")
end
