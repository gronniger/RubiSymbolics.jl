using RubiSymbolics: MathematicaParser
using ParserCombinator

#--- global variables
rubi_rules_path = joinpath(@__DIR__, "../Rubi/IntegrationRules")
rules_root_path = joinpath(@__DIR__, "rules")
#--- utility Functions
stem(path) = splitext(path)[1]

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
            out_file_content = parse_one(orig_file_content, MathematicaParser.file)[1]
            th_number = replace(split(file)[1], "." => "_")
            write(f, "int_rules_$th_number = @theory begin\n")
            write(f, out_file_content)
            write(f, "end\n")
        end
    end
end
