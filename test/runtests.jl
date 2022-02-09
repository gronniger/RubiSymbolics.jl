using Test, RubiSymbolics
using RubiSymbolics: @variables, simplify, isequal, expand, Elliptic, HypergeometricFunctions, @rule, Fixpoint, Postwalk, Chain

const print_incorrect_tests = false

r1 = @rule (~base::(x -> x isa Number && x<0))^(~exp::(x -> !(x isa Integer))) --> Complex(~base)^~exp
r1 = @rule (-(~base::(x -> x isa Number && x>0)))^(~exp::(x -> !(x isa Integer))) --> Complex(-(~base))^~exp
exp_fixer = Fixpoint(Postwalk(Chain([r1])))
function preprocess(expr::Expr)
    return exp_fixer(expr)
end

macro test_int(expr)
    if (expr.head == :vect && length(expr.args) == 4)
        preprocessed = preprocess(expr)
        (integrand, symbol, steps, result) = preprocessed.args

        # return :(@test isequal(simplify(integrate($(esc(integrand)), $(esc(symbol)))), simplify($(esc(result)))))
        return :(@test isequal(integrate($(esc(integrand)), $(esc(symbol))), $(esc(result))))
        # quote
        #     isequal(simplify(integrate($(esc(integrand)), $(esc(symbol)))), simplify($(esc(result))))
        #     @test true
        # end
    else
        if print_incorrect_tests
            println("Incorrect test problem at ", __source__)
        end
        return :(@test_broken false)
    end
end

# include(".jl")
include("/home/main/.julia/dev/RubiSymbolics/test/1 Algebraic functions/1.1 Binomial products/1.1.1 Linear/.jl")
