using RubiSymbolics: MathematicaParser
using ParserCombinator

rubi_utils_file = joinpath(@__DIR__, "../Rubi/IntegrationUtilityFunctions.m")
utils_file = joinpath(@__DIR__, "RubiUtils.jl")


orig_file_content = open(rubi_utils_file) do rf
    read(rf, String)
end
out_file_content = parse_one(orig_file_content, MathematicaParser.file)[1]
touch(utils_file)
open(utils_file, "w") do f
    write(f, out_file_content)
end
