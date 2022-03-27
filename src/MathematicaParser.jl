module MathematicaParser
using ParserCombinator
import Base: >

>(m::Matcher, s::String) = m > (x...) -> length(x)>0 ? s : ""     # TODO: change to |>
def_val(x) = res -> isempty(res) ? x : res[1]
commajoin(seq) = join(seq, ", ")
function parenjoinleft(seq)
    if isempty(seq)
        return ""
    elseif length(seq) == 1
        return seq[1]
    else # two or more
        return parenjoinleft(['(' * seq[1] * seq[2] * seq[3] * ')', seq[4:end]...])
    end
end
print_comment(comment...) = "#=" * prod(comment) * "=#"
print_usage(id, str) = str * "\nfunction " * id * " end"
print_slot(tail) = isempty(tail) ? "Slot(1)" : "Slot($(tail[1]))" # TODO: put " " around string matches
print_factorial(x) = isempty(x[2]) ? x[1][1] : length(x[2])==1 ? "Factorial($(x[1][1]))" : "Factorial2($(x[1][1]))"
function print_span(x)
    if isempty(x[2])    # no span
        return x[1][1]
    elseif length(x[2]) == 3 # span
        start = get(x[1], 1, "1")
        stop = get(x[2][2], 1, "end")
        if isempty(x[2][3]) # span2
            return start * ":" * stop
        else                # span3
            step = get(x[2][3][2], 1, "1")
            return start * ":" * step * ":" * stop
        end
    else
        error("Should never happen")
    end
end
print_derivative(x) = isempty(x[2]) ? x[1][1] : "Derivative($(length(x[2])))($(x[1][1]))"
print_rule(x) = x
print_rule(x, ys...) = "Rule($x, $(print_rule(ys...)))"

@with_names begin
    const identifier = (p"(?<![_a-zA-Z\$])[_a-zA-Z\$][_a-zA-Z0-9\$]*(?![_a-zA-Z0-9\$])" > str -> replace(str, r"\$" => "DOLLAR")) + Opt((e"." > "'") | p":\w+|:{}" #=TODO:replace by expr & format=#) |> prod
    const string = p"\"[^\"]*?\""
    const comment = E"(*" + p"(?:(?!(\*\))|(\(\*)).|\n)*" + E"*)" > print_comment
    const multi_comment = E"(*" + (p"(?:(?!(\*\))|(\(\*)).|\n)*" + comment)[0:end] + p"(?:(?!(\*\))|(\(\*)).|\n)*" + E"*)" > print_comment

    const spc = Star(Space() + Opt(multi_comment))     # drop space or not ?
    const dspc = Drop(spc)

    const int_num = p"\d+"
    const signed_int = p"[+-]?" + int_num
    const dec_num = (Opt(int_num) + e"." + int_num) | (int_num + e"." + Opt(int_num)) |> prod    # TODO: default= "0" for missing before/after dot?
    const float_num = (dec_num | int_num) + (e"*^" > "e") + signed_int |> prod
    const number = float_num | dec_num | int_num

    const usage_stmt = identifier + E"::usage" + dspc + E"=" + dspc + string + dspc + E";" > print_usage
    const slot = E"#" + Opt(int_num | identifier) |> print_slot

    const list = Delayed()

    const atom = ((e"True" > "true")
        | (e"False" > "false")
        | (e"Null" > "nothing")
        | identifier | slot | string | number | list)

    const argument = Delayed()
    const subscript = Delayed()
    const arglist = argument + (spc + e"," + spc + argument)[0:end] + Opt(spc + e",")           |> prod
    const subscriptlist = subscript + (spc + e"," + spc + subscript)[0:end] + Opt(spc + e",")   |> prod
    const call_trailer = (e"[" > "(") + spc + Opt(arglist) + spc + (e"]" > ")")                 |> prod
    const part_trailer = (e"[[" > "[") + spc + Opt(subscriptlist) + spc + (e"]]" > "]")         |> prod
    const atom_expr = atom + (dspc + (part_trailer | call_trailer))[0:end]                      |> prod

    list.matcher = (e"{" > "[") + Opt(spc + arglist) + spc + (e"}" > "]")                       |> prod

    const factorial_expr = atom_expr & e"!"[0:2]                                                |> print_factorial
    const derivative_expr = factorial_expr & e"'"[0:end]                                        |> print_derivative
    const power_expr = derivative_expr + (spc + e"^" + spc + p"[+-]?" + derivative_expr)[0:end] |> prod     # match multiple ^ at once ?
    const unary_expr = p"[+-]?" + power_expr                                                    |> prod
    const divide_expr = unary_expr + (spc + e"/" + spc + unary_expr)[0:end]                     |> prod     # TODO: should be // (rational?)
    const times_expr = divide_expr + (((e" " > "*") + P"\h*" + Not(Lookahead(p"[+-]"))) | (spc + e"*" + spc) + divide_expr)[0:end] |> prod
    const plusminus_expr = times_expr + (spc + p"[+-]" + spc + times_expr)[0:end]               |> prod

    const span_expr = (plusminus_expr | Lookahead(P"\s*;")) & Opt(((dspc + e";;" + dspc) |> prod) & Opt(plusminus_expr) & Opt(((dspc + e";;" + dspc) |> prod) & Opt(plusminus_expr))) |> print_span

    const compare_ops = p"==|!=|>=|>|<=|<"
    const compare_expr = span_expr + (spc + compare_ops + spc + span_expr)[0:end]               |> prod
    const same_expr = compare_expr + (spc + (e"===" | (e"=!=" > "!==")) + spc + compare_expr)[0:end]|> prod    # TODO: check for difference in semantics JL <-> MA
    const not_expr = Opt(e"!" + spc) + same_expr                                                |> prod
    const and_expr = not_expr + (spc + e"&&" + spc + not_expr)[0:end]                           |> prod
    const or_expr = and_expr + (spc + e"||" + spc + and_expr)[0:end]                            |> prod

    const cond_expr = or_expr + (dspc + (e"/;" > " <-- ") + dspc + or_expr)[0:end]              |> parenjoinleft     # parenthesises to enforce correct precedence on julia side
    const rule_expr = cond_expr + (dspc + E"->" + dspc + cond_expr)[0:end]                      > print_rule
    const replace_expr = rule_expr + (dspc + (e"/." > " ← ") + dspc + rule_expr)[0:end]         |> parenjoinleft     # parenthesises to enforce correct precedence on julia side

    const set = replace_expr + (spc + p"=|:=" + spc + replace_expr)[0:end]                      |> prod
    const tag_set_delay = identifier + dspc +E"/:" + dspc + replace_expr + dspc + E":=" + dspc + replace_expr > (sym, lhs, rhs) -> "TagSetDelayed($sym, $lhs, $rhs)"
    const set_expr = tag_set_delay | set
    const usage_expr = usage_stmt | set_expr

    const compound_expr = usage_expr + (spc + e";" + spc + usage_expr)[0:end] + spc + Opt(e";") |> prod     # add begin/end ?

    const paren_expr = e"("+ spc + compound_expr + spc + e")"                                   |> prod
    push!(atom.matchers, paren_expr)
    argument.matcher = compound_expr
    subscript.matcher = span_expr

    const special_case_statements = (
          (e"FalseQ[False] = True;" > "FalseQ(b::Bool) = !b;")
        | (e"FalseQ[_] = False;" > "FalseQ(::Any) = false;")
        | (e"IntegersQ[__Integer] = True;" > "IntegersQ(x::Integer...) = true;")
        | (e"IntegersQ[__] = False;" > "IntegersQ(x::Any...) = false;")
        | (e"FractionQ[__Rational] = True;" > "FractionQ(x::Rational...) = true;")
        | (e"FractionQ[__] = False;" > "FractionQ(x::Any...) = false;")
        | (e"ComplexNumberQ[_Complex] = True;" > "ComplexNumberQ(::Complex) = true;")
        | (e"ComplexNumberQ[_] = False;" > "ComplexNumberQ(::Any) = false;")
        | (e"PowerQ[_Power] = True;" > "PowerQ(::Pow) = true;")
        | (e"PowerQ[_] = False;" > "PowerQ(::Any) = false")
        | (e"ProductQ[_Times] = True;" > "ProductQ(::Mul) = true;")
        | (e"ProductQ[_] = False;" > "ProductQ(::Any) = false;")
        | (e"SumQ[_Plus] = True;" > "SumQ(::Add) = true;")
        | (e"SumQ[_] = False;" > "SumQ(::Any) = false;")
        | (e"NonsumQ[_Plus] = False;" > "NonsumQ(::Add) = false;")
        | (e"NonsumQ[_] = True;" > "NonsumQ(::Any) = true;")
    )

    const statement = spc + (multi_comment | special_case_statements | usage_stmt | compound_expr) + spc |> prod
    const file = spc + statement[0:end]                                                         |> prod

end
end

orig_file = open(joinpath(@__DIR__, "../Rubi/IntegrationUtilityFunctions.m")) do f
    read(f, String)
end
out_file = parse_one(orig_file, MathematicaParser.file)[1]
open(joinpath(@__DIR__, "../Rubi/IntegrationUtilityFunctions.jl"), "w") do f
    write(f, out_file)
end
