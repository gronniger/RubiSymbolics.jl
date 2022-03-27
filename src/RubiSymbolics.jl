module RubiSymbolics
using SpecialFunctions, Symbolics
using Symbolics: value, get_variables
using SymbolicUtils: Symbolic, Sym, @rule, @theory, Prewalk, Postwalk, PassThrough, Fixpoint, Chain
using Metatheory: @matchable, DynamicRule
using Metatheory.Syntax: rmlines
import TermInterface
import Elliptic, HypergeometricFunctions

@matchable struct Antiderivative
    expr::Symbolic
    x::Sym
    Antiderivative(expr::Num, x) = new(value(expr), x)
end

identifier(s::String) = Regex("(?<![a-zA-Z_])$s(?![a-zA-Z0-9_])")
identifier(sym::Symbol) = identifier(string(sym))

mathematica_version = 13    # just a dummy value, no real meaning yet

syntax_repl_dict = Dict(
    identifier("E") => "ℯ",
    identifier("Pi") => "pi",
    identifier("I") => "im",
    identifier("True") => "true",
    identifier("False") => "false",
    identifier("Null") => "nothing",
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
    # "\$VersionNumber"   => string(mathematica_version),  # remove $ character
    # r"(?<base>\(\h*-\h*\d+\)\h*\^\h*(?<exp>()|())" => s"\g<base>"
    "/;"    =>  "<--",   # temp. replacement for conditionals
    "/."    =>  "←",     # temp. replacement for replaceall
    "/:"    =>  "↶",     # temp. replacement for TagSetDelayed
    "->"    =>  "=>",
    "=!="   =>  "!==",
    "f_'''" =>  "Derivative(3)(f_)",    # Derivatives
    "f_''"  =>  "Derivative(2)(f_)",
    "f_'"   =>  "Derivative(1)(f_)",
    "g_'''" =>  "Derivative(3)(g_)",
    "g_''"  =>  "Derivative(2)(g_)",
    "g_'"   =>  "Derivative(1)(g_)",
    "_."    =>  "_'",    # "." --> "'"
    r"(?<expr>(#\d*))\[\[(?<idxs>\h*(\d+)|(\w+)\h*(,\h*\d+\h*)*)\]\]" => s"Part(Symbol(\"\g<expr>\"), \g<idxs>)",
    r"(?<expr>\w[a-zA-Z0-9]*)\[\[(?<idxs>\h*(\d+)|(\w+)\h*(,\h*\d+\h*)*)\]\]" => s"Part(\g<expr>, \g<idxs>)",
    r"(?<expr>(\w[a-zA-Z0-9]*)\[[^\[]*\])\[\[(?<idxs>\h*(\d+)|(\w+)\h*(,\h*\d+\h*)*)\]\]" => s"Part(\g<expr>, \g<idxs>)",
    r"#(\d)"=>  s"Symbol(\"#\1\")",
    "#"     =>  "Symbol(\"#1\")",
    "\$" => "DOLLAR",
)

function_repl_dict = Dict(
    identifier("Expand") => "expand",
    identifier("Int") => "Antiderivative",
    identifier("Function") => "MFunction",

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
If(cond, true_stmt, false_stmt=nothing) = cond ? true_stmt : false_stmt
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

function D end
function Integrate end
function Sum end
function Product end
function Dif end


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

DOLLARTimeLimit = nothing

NumberQ(::Any) = false
NumberQ(::Number) = true

Not(b::Bool) = !b

function FreeQ(expr, x::Sym)
    vars = get_variables(expr)
    return !any(isequal.(x, vars))
end
FreeQ(expr, x::Num) = FreeQ(expr, value(x))
FreeQ(expr_lst::AbstractArray, x) = all(FreeQ.(expr_lst, x))

Refine(expr) = simplify(expr)   # no assumptionsystem -> should be OK, speed ?
Quiet(expr) = expr  # nothing to mute here ?!
PossibleZeroQ(x) = false    # Would check numerically for zero -> use simplify straight away

abstract type AbstractAttribute end
struct HoldFirstType <: AbstractAttribute end
HoldFirst = HoldFirstType()
struct HoldAllType <: AbstractAttribute end
HoldAll = HoldAllType()
SetAttributes(obj, a::AbstractAttribute) = nothing
function Hold end
function HoldForm end
function Defer end
function Pattern end
Clear(x) = nothing
ClearAll(args...) = nothing
MemberQ(lst, form) = nothing

const util_rules = DynamicRule[]
expand_utils = Prewalk(Chain(util_rules))

cond_repl = Prewalk(PassThrough(@rule (~a <-- ~b) --> (expand_utils(~a) where expand_utils(~b))))
macro apply_utils(expr::Expr)
    expr = cond_repl(expr)  # here because printing with 'where' fails
    return :($(esc(expr)))
end

rm_block(expr) = expr
function rm_block(expr::Expr)
    if expr.head == :block && length(expr.args) == 2 && expr.args[1] isa LineNumberNode
        return expr.args[2]
    else
        return Expr(expr.head, map(rm_block, expr.args)...)
    end
end

macro rm_blocks(expr::Expr)
    return esc(rm_block(expr))
end

r_if1 = @rule @rm_blocks If(~cond, ~then_var = ~then_val) --> (~cond ? ~then_var = ~then_val : nothing)
r_if2 = @rule If(~cond, ~then) --> (~cond ? ~then : nothing)
r_if3 = @rule If(~cond, ~then, ~else_stmt) --> (~cond ? ~then : ~else_stmt)
if_simplifier = Prewalk(Chain([r_if1, r_if2, r_if3]))

r_anon_sym = @theory begin
    Symbol("#") --> :__args[1]
    Symbol("#1") --> :__args[1]
    Symbol("#2") --> :__args[2]
    Symbol("#3") --> :__args[3]
    Symbol("#4") --> :__args[4]
    Symbol("#5") --> :__args[5]
    Symbol("#6") --> :__args[6]
    Symbol("#7") --> :__args[7]
    Symbol("#8") --> :__args[8]
    Symbol("#9") --> :__args[9]
    Symbol("#10") --> :__args[10]
end
convert_ht_syms = Prewalk(Chain(r_anon_sym))
r_lambda = @rule MFunction(~body) => :((__args...) -> $(convert_ht_syms(~body)))
lambda_simplifier = Prewalk(PassThrough(r_lambda))
r_multi_stmt = @rule Block(~lst, ~expr1; ~expr2) --> Block(~lst, begin ~expr1; ~expr2 end)
multi_stmt_simplifier = Prewalk(PassThrough(r_multi_stmt))

r_with = @rule With([~assignments...], ~expr) => begin
    rlst = []
    for ass in ~assignments
        @assert ass.head == :(=)
        r = eval(:(@rule $(Meta.quot(:($(ass.args[1])))) --> $(Meta.quot(:($(ass.args[2]))))))
        push!(rlst, r)
    end
    return Prewalk(Chain(rlst))(~expr)
end
with_simplifier = Prewalk(PassThrough(r_with))

r_module = @rule (Module([~assignments...], ~expr)) => Expr(:let, Expr(:block, ~assignments...), ~expr)
module_simplifier = Prewalk(PassThrough(r_module))

macro util_collect(expr::Expr)
    e = rmlines(expr)
    e = macroexpand(__module__, e)
    e = if_simplifier(e)
    e = lambda_simplifier(e)
    e = multi_stmt_simplifier(e)
    e = module_simplifier(e)
    e = with_simplifier(e)
    if e.head == :block
        rule_defs = filter(x-> x.head == :(:=) , e.args)
        declarations = Expr[]
        for stmt in rule_defs
            @assert stmt.args[1].head == :call
            name = stmt.args[1].args[1]
            args = stmt.args[1].args
            num_args = length(args) - 1
            decl = quote
                $name(args::Real...) = SymbolicUtils.Term{Real}($name, args)
                @register_symbolic $name($(Tuple(:x for n in 1:num_args)...)) false
                push!(util_rules, @rule $(stmt.args[1]) => $(stmt.args[2]))
            end
            pushfirst!(declarations, decl)
        end
        prepend!(e.args, declarations)
        filter!(x -> x.head != :(:=), e.args)
        return esc(e)
    else
        error("theory is not in form begin a => b; ... end")
    end
end

export  integrate, Antiderivative
export  If, LogIntegral, SinIntegral, SinhIntegral, CosIntegral,
        CoshIntegral, ExpIntegralE, ExpIntegralEi, FresnelS, FresnelC, PolyLog,
        ProductLog, Zeta, Gamma, AppellF1, Unintegrable, CannotIntegrate
export erf, erfi
export FreeQ

end # module
