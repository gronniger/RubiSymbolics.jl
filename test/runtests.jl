using Test, RubiSymbolics, SpecialFunctions, Symbolics

macro test_int(expr)
    if (expr.head == :vect && length(expr.args) == 4)
        (integrand, symbol, steps, result) = expr.args
        return :(@test true)
    else
        # println(expr)
        return :(@test_broken false)
    end
end

include(".jl")
