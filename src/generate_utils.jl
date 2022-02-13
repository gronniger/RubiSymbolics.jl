using RubiSymbolics: syntax_repl_dict

rubi_utils_file = joinpath(@__DIR__, "../Rubi/IntegrationUtilityFunctions.m")
utils_file = joinpath(@__DIR__, "utils.jl")


orig_file_content = open(rubi_utils_file) do rf
    read(rf, String)
end
out_file_content = replace(orig_file_content,
    syntax_repl_dict...,
    # ":=" => "=",
    )
out_file_content = replace(out_file_content,
    r"(?<function>\w+)::usage\h*=\h*\"(?<doc>.*)\";" => s"\"\g<doc>\"\nfunction \g<function> end",
    # r"\((?<var>[a-zA-Z_]+[a-zA-Z0-9_]*)?_(?<type>\w+)\)" => s"(\g<var>::\g<type>)",
    # r"\((?<var>[a-zA-Z_]+[a-zA-Z0-9_]*)?_\)" => s"(\g<var>)",
    )

touch(utils_file)
open(utils_file, "w") do f
    write(f, out_file_content)
end

# when function(x^2+y...) -> place rule macro in front
# macro will parse & collect rules -> all rules to be applied on rhs after matching
# others: just functions to call

# @rule_ Module @utils Int(...) := ...
