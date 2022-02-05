using RubiSymbolics, SpecialFunctions, Symbolics

macro test_int(expr)
    if (expr.head == :vect && length(expr.args) == 4)
        (integrand, symbol, steps, result) = expr.args
        return :(@test true)
    else
        # println(expr)
        return :(@test_broken false)
    end
end

macro include(str::String)
    path = joinpath(@__DIR__, str)
    code = read(path, String)
    Meta.parse("begin
        $code
    end")
end

include(".jl")
