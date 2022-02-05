@testset "4.5 Secant" begin
    include("4.5.0 (a sec)^m (b trg)^n.jl")
    include("4.5.1.2 (d sec)^n (a+b sec)^m.jl")
    include("4.5.1.3 (d sin)^n (a+b sec)^m.jl")
    include("4.5.1.4 (d tan)^n (a+b sec)^m.jl")
    include("4.5.10 (c+d x)^m (a+b sec)^n.jl")
    include("4.5.11 (e x)^m (a+b sec(c+d x^n))^p.jl")
    include("4.5.2.1 (a+b sec)^m (c+d sec)^n.jl")
    include("4.5.2.3 (g sec)^p (a+b sec)^m (c+d sec)^n.jl")
    include("4.5.3.1 (a+b sec)^m (d sec)^n (A+B sec).jl")
    include("4.5.4.1 (a+b sec)^m (A+B sec+C sec^2).jl")
    include("4.5.4.2 (a+b sec)^m (d sec)^n (A+B sec+C sec^2).jl")
    include("4.5.7 (d trig)^m (a+b (c sec)^n)^p.jl")
end
