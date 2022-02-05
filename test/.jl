@testset "RubiTestSuite" begin
    include("0 Independent test suites/.jl")
    include("1 Algebraic functions/.jl")
    include("2 Exponentials/.jl")
    include("3 Logarithms/.jl")
    include("4 Trig functions/.jl")
    include("5 Inverse trig functions/.jl")
    include("6 Hyperbolic functions/.jl")
    include("7 Inverse hyperbolic functions/.jl")
    include("8 Special functions/.jl")
end
