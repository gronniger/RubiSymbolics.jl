module RubiSymbolics
using SpecialFunctions, Symbolics
using Symbolics: value, get_variables
using SymbolicUtils: Symbolic, Sym, @rule, Prewalk, Postwalk, PassThrough, Fixpoint, Chain
using Metatheory: @matchable
import TermInterface
import Elliptic, HypergeometricFunctions

include("./MathematicaParser.jl")

@matchable struct Antiderivative
    expr::Symbolic
    x::Sym
    Antiderivative(expr::Num, x) = new(value(expr), x)
end

mathematica_version = 13    # just a dummy value, no real meaning yet

syntax_repl_dict = Dict(
    "(*"    =>  "#=",
    "*)"    =>  "=#",
    "{"     =>  "[",
    "}"     =>  "]",
    "["     =>  "(",
    "]"     =>  ")",
    r"(?<=([a-zA-Z0-9_\)\]])|(_\.)) (?=[a-zA-Z0-9_\(\[])"=>  "*",   # space as *
    "x -("              =>  "x - (",                # space required inside [ ]
    r"(\d)(?=\.[^\d])"  => s"\1.0",                 # float fix
    "(a_. + b_.*x_)!"   => "factorial(~a' + ~b'*~x)",# fix in 8.6 Gamma Functions
    "(a + b*x)!"        => "factorial(a + b*x)",    # fix in 8.6 Gamma Functions
    "\$VersionNumber"   => string(mathematica_version),  # remove $ character
    # r"(?<base>\(\h*-\h*\d+\)\h*\^\h*(?<exp>()|())" => s"\g<base>"
    "/;"    =>  "<--",   # temp. replacement for conditionals
    "=!="   =>  "!==",
    "f_'''" =>  "Derivative(3)(f_)",    # Derivatives
    "f_''"  =>  "Derivative(2)(f_)",
    "f_'"   =>  "Derivative(1)(f_)",
    "g_'''" =>  "Derivative(3)(g_)",
    "g_''"  =>  "Derivative(2)(g_)",
    "g_'"   =>  "Derivative(1)(g_)",
    "_."    =>  "_'"    # "." --> "'"
)
identifier(s::String) = Regex("(?<![a-zA-Z_])$s(?![a-zA-Z0-9_])")
identifier(sym::Symbol) = identifier(string(sym))
function_repl_dict = Dict(
    identifier("Expand") => "expand",
    identifier("Int") => "Antiderivative",

    identifier("E") => "ℯ",
    identifier("Pi") => "pi",
    identifier("I") => "im",

    identifier("Exp") => "exp",
    identifier("Sqrt") => "sqrt",
    identifier("Log") => "log",

    identifier("Sin") => "sin",
    identifier("Sinh") => "sinh",
    identifier("ArcSin") => "asin",
    identifier("ArcSinh") => "asinh",
    identifier("Cos") => "cos",
    identifier("Cosh") => "cosh",
    identifier("ArcCos") => "acos",
    identifier("ArcCosh") => "acosh",
    identifier("Tan") => "tan",
    identifier("Tanh") => "tanh",
    identifier("ArcTan") => "atan",
    identifier("ArcTanh") => "atanh",
    identifier("Cot") => "cot",
    identifier("Coth") => "coth",
    identifier("ArcCot") => "acot",
    identifier("ArcCoth") => "acoth",
    identifier("Sec") => "sec",
    identifier("Sech") => "sech",
    identifier("ArcSec") => "asec",
    identifier("ArcSech") => "asech",
    identifier("Csc") => "csc",
    identifier("Csch") => "csch",
    identifier("ArcCsc") => "acsc",
    identifier("ArcCsch") => "acsch",

    identifier("EllipticK") => "Elliptic.K",
    identifier("EllipticF") => "Elliptic.F",
    identifier("EllipticE") => "Elliptic.E",
    identifier("EllipticPi") => "Elliptic.Pi",
    identifier("Hypergeometric2F1") => "HypergeometricFunctions._₂F₁",
    identifier("Erf") => "erf",
    identifier("Erfi") => "erfi",
    # # identifier("PolyLog") => "Polylogarithms.polylog",
)
@register_symbolic Base.exp(x::Complex{Real})::Complex false
@register_symbolic Base.sqrt(x::Complex{Real})::Complex false
@register_symbolic Base.log(x::Complex{Real})::Complex false
@register_symbolic Base.sin(x::Complex)::Complex false
@register_symbolic Base.sinh(x::Complex{Real})::Complex false
@register_symbolic Base.asin(x::Complex{Real})::Complex false
@register_symbolic Base.asinh(x::Complex{Real})::Complex false
@register_symbolic Base.cos(x::Complex)::Complex false
@register_symbolic Base.cosh(x::Complex{Real})::Complex false
@register_symbolic Base.acos(x::Complex{Real})::Complex false
@register_symbolic Base.acosh(x::Complex{Real})::Complex false
@register_symbolic Base.tan(x::Complex{Real})::Complex false
@register_symbolic Base.tanh(x::Complex)::Complex false
@register_symbolic Base.atan(x::Complex{Real})::Complex false
@register_symbolic Base.atanh(x::Complex)::Complex false
@register_symbolic Base.cot(x::Complex)::Complex false
@register_symbolic Base.coth(x::Complex)::Complex false
@register_symbolic Base.acot(x::Complex)::Complex false
@register_symbolic Base.acoth(x::Complex)::Complex false
@register_symbolic Base.sec(x::Complex)::Complex false
@register_symbolic Base.sech(x::Complex)::Complex false
@register_symbolic Base.asec(x::Complex)::Complex false
@register_symbolic Base.asech(x::Complex)::Complex false
@register_symbolic Base.csc(x::Complex)::Complex false
@register_symbolic Base.csch(x::Complex)::Complex false
@register_symbolic Base.acsc(x::Complex)::Complex false
@register_symbolic Base.acsch(x::Complex)::Complex false
@register_symbolic Elliptic.K(m)
@register_symbolic Elliptic.K(m::Complex)::Complex false
@register_symbolic Elliptic.F(phi, m)
@register_symbolic Elliptic.F(phi::Complex, m::Complex)::Complex false
@register_symbolic Elliptic.E(phi, m)
# @register_symbolic Elliptic.E(phi, m)::Complex
@register_symbolic Elliptic.E(m) false
@register_symbolic Elliptic.E(m::Complex)::Complex false
@register_symbolic Elliptic.Pi(n, phi, m)
# @register_symbolic Elliptic.Pi(n, phi, m)::Complex
@register_symbolic HypergeometricFunctions._₂F₁(a, b, c, z)
@register_symbolic HypergeometricFunctions._₂F₁(a, b, c, z::Complex)::Complex false
@register_symbolic HypergeometricFunctions._₂F₁(a, b::Complex, c::Complex, z::Complex)::Complex false

integrate(exp, x) = x   # TODO:fix dummy
If(cond, true_stmt, false_stmt) = cond ? true_stmt : false_stmt
LogIntegral(z) = nothing
SinIntegral(z) = nothing
SinhIntegral(z) = nothing
CosIntegral(z) = nothing
CoshIntegral(z) = nothing
ExpIntegralE(n, z) = nothing
ExpIntegralEi(z) = nothing
FresnelS(z) = nothing
FresnelC(z) = nothing
PolyLog(n, z) = nothing
ProductLog(z) = nothing
Zeta(z) = nothing
Gamma(z) = nothing
Gamma(a, z) = nothing
Gamma(a, z0, z1) = nothing
AppellF1(a, b1, b2, c, x, y) = nothing

Unintegrable(ex) = nothing
Unintegrable(x, y) = nothing
CannotIntegrate(ex) = nothing
CannotIntegrate(x, y) = nothing

@register_symbolic LogIntegral(z)
@register_symbolic SinIntegral(z)
@register_symbolic SinhIntegral(z)
@register_symbolic CosIntegral(z)
@register_symbolic CoshIntegral(z)
@register_symbolic ExpIntegralE(n, z)
@register_symbolic ExpIntegralEi(z)
@register_symbolic FresnelS(z)
@register_symbolic FresnelC(z)
@register_symbolic PolyLog(n, z)
@register_symbolic PolyLog(n, z::Complex)::Complex false
@register_symbolic ProductLog(z)
@register_symbolic Zeta(z)
@register_symbolic Gamma(z)
@register_symbolic Gamma(a, z) false
@register_symbolic Gamma(a, z::Complex)::Complex false
@register_symbolic Gamma(a, z0, z1) false
@register_symbolic AppellF1(a, b1, b2, c, x, y)
@register_symbolic AppellF1(a, b1, b2, c, x::Complex, y::Complex)::Complex false
# @register_symbolic AppellF1(a, b1, b2, c, x, y::Complex)::Complex false
# @register_symbolic AppellF1(a, b1, b2, c, x::Complex, y)::Complex false
@register_symbolic Unintegrable(ex)
@register_symbolic Unintegrable(x, y) false
@register_symbolic CannotIntegrate(ex)
@register_symbolic CannotIntegrate(x, y) false

function FreeQ(expr, x::Sym)
    vars = get_variables(expr)
    return !any(isequal.(x, vars))
end
FreeQ(expr, x::Num) = FreeQ(expr, value(x))
FreeQ(expr_lst::AbstractArray, x) = all(FreeQ.(expr_lst, x))

Refine(expr) = simplify(expr)   # no assumptionsystem -> should be OK, speed ?
Quiet(expr) = expr  # nothing to mute here ?!
PossibleZeroQ(x) = false    # Would check numerically for zero -> use simplify straight away

export  integrate, Antiderivative
export  If, LogIntegral, SinIntegral, SinhIntegral, CosIntegral,
        CoshIntegral, ExpIntegralE, ExpIntegralEi, FresnelS, FresnelC, PolyLog,
        ProductLog, Zeta, Gamma, AppellF1, Unintegrable, CannotIntegrate
export erf, erfi
export FreeQ

end # module
