using RubiSymbolics: syntax_repl_dict, function_repl_dict, @rule, Prewalk, PassThrough, identifier, FreeQ
import Metatheory.Syntax: makepattern
#--- global variables
rubi_rules_path = joinpath(@__DIR__, "../Rubi/IntegrationRules")
rules_root_path = joinpath(@__DIR__, "rules")
rule_re = r"(?<=\n)(Antiderivative\(.*,\h*~x\)\h*:=\h*.*?)(?=\n)"
#--- Rules
r_cond = @rule (~a <-- ~b) --> (~b ? ~a : nothing)
# r_x_var = @rule x --> (~x)
#--- utility Functions
stem(path) = splitext(path)[1]
function rule_subs(m)
    try
        expr = Meta.parse(m)
        @assert expr.head == :(:=) && length(expr.args) == 2
        # make rhs using lhs variables
        lhs_pvars = Symbol[]
        makepattern(expr.args[1], lhs_pvars, [])    # fills lhs_pvars
        rhs_str = replace(string(expr.args[2]),
            [identifier(sym) => "~"*string(sym) for sym in lhs_pvars]...)
        rhs = Meta.parse(rhs_str)
        expr = Expr(:call, :(=>), expr.args[1], rhs)
        expr = Prewalk(PassThrough(r_cond))(expr)
        return string(expr)
    catch e
        printstyled("Parse error:", e, "\n", color=:yellow)
        println(m)
        return "# Missing due to parse error: "*m
    end
end

for (root, dirs, files) in walkdir(rubi_rules_path)
    rel_path = relpath(root, rubi_rules_path)
    mkpath(joinpath(rules_root_path, rel_path))
    root_include_file = joinpath(rules_root_path, rel_path, ".jl")
    touch(root_include_file)
    open(root_include_file, "w") do f
        for dir in dirs
            write(f, "include(\"$(joinpath(dir, ".jl"))\")\n")
        end
        for file in files
            write(f, "include(\"$(stem(file)*".jl")\")\n")
        end
    end
    for file in files
        rules_file = joinpath(rules_root_path, rel_path, stem(file)*".jl")
        touch(rules_file)
        open(rules_file, "w") do f
            orig_file_content = open(joinpath(root, file)) do rf
                read(rf, String)
            end
            out_file_content = replace(orig_file_content,
                "\r" => "",  # remove windows line end
                r"(\w[a-zA-Z0-9]*)_\."  => s"(~\1')",          # optional symbols
                r"(\w[a-zA-Z0-9]*)_(?![a-zA-Z])" => s"(~\1)",
                "x_Symbol" => "~x",
                syntax_repl_dict...,
                function_repl_dict...
            )
            out_file_content = replace(out_file_content,  # TODO: fix before
                "=#*" => "=#",
                "*#=" => "#=",)
            out_file_content = replace(out_file_content, rule_re => rule_subs)
            out_file_content = replace(out_file_content,
                r"(\n(?!\n|$))"   => "\n"*" "^4,    # indent
                r"^(?!\n)"      => " "^4,
                )
            th_number = replace(split(file)[1], "." => "_")
            write(f, "int_rules_$th_number = @theory begin\n")
            write(f, out_file_content)
            write(f, "end\n")
        end
    end
end
