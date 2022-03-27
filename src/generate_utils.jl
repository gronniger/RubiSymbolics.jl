using RubiSymbolics: syntax_repl_dict, function_repl_dict, identifier

rubi_utils_file = joinpath(@__DIR__, "../Rubi/IntegrationUtilityFunctions.m")
utils_file = joinpath(@__DIR__, "utils.jl")


orig_file_content = open(rubi_utils_file) do rf
    read(rf, String)
end
out_file_content = replace(orig_file_content,
    "lst[[1,1]][[1]]" => "Part(Part(lst, 1, 1), 1)",
    "Reap[u][[2]]" => "Part(Reap(u), 2)",
    "(lst=MonomialFactor[u,x])[[1]]" => "Part(lst=MonomialFactor(u, x), 1)",
    syntax_repl_dict...,
    )
out_file_content = replace(out_file_content,
    function_repl_dict...,
    )
out_file_content = replace(out_file_content,
    "=#*" => "=#",
    "*#=" => "#=",
    r"(?<function>\w+)::usage\h*=[\h\n]*\"(?<doc>.*?)\";"s => s"\"\g<doc>\"\nfunction \g<function> end",
    "FalseQ(false) = true" => "FalseQ(b::Bool) = !b",
    )
out_file_content = replace(out_file_content,
    r"(\n(?!\n|$))"   => "\n"*" "^4,    # indent
    r"^(?!\n)"      => " "^4,
    )
touch(utils_file)
open(utils_file, "w") do f
    write(f, "@util_collect begin\n")
    write(f, out_file_content)
    write(f, "end\n")
end

# when function(x^2+y...) -> place rule macro in front
# macro will parse & collect rules -> all rules to be applied on rhs after matching
# others: just functions to call

# @rule_ Module @utils Int(...) := ...

# @register_symbolic lhs of := and define rule
