@testset "1.2.2 Quartic" begin
    include("1.2.2.2 (d x)^m (a+b x^2+c x^4)^p.jl")
    include("1.2.2.3 (d+e x^2)^m (a+b x^2+c x^4)^p.jl")
    include("1.2.2.4 (f x)^m (d+e x^2)^q (a+b x^2+c x^4)^p.jl")
    include("1.2.2.5 P(x) (a+b x^2+c x^4)^p.jl")
    include("1.2.2.6 P(x) (d x)^m (a+b x^2+c x^4)^p.jl")
    include("1.2.2.7 P(x) (d+e x^2)^q (a+b x^2+c x^4)^p.jl")
    include("1.2.2.8 P(x) (d+e x)^q (a+b x^2+c x^4)^p.jl")
end
