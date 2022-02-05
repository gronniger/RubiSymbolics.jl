using RubiSymbolics: syntax_repl_dict, function_repl_dict
#------------
testsuite_path = joinpath(@__DIR__, "../RubiTestSuite")
tests_root_path = joinpath(@__DIR__, "../test")
vars = Set{Symbol}()
#------------
stem(path) = splitext(path)[1]

function get_syms(expr::Expr, vars)
    if expr.head == :call
        for a in expr.args[2:end]
            get_syms(a, vars)
        end
    else
        error("unexpected head: ", expr.head)
    end
end
get_syms(s::Symbol, vars) = push!(vars, s);vars
get_syms(x, vars) = vars

for (root, dirs, files) in walkdir(testsuite_path)
    test_re = r"(?<=\n)\[.*,.*,.*,.*\]"
    function test_subs(m)
        try
            get_syms(Meta.parse(m).args[1], vars)
            "@test_int "*m
        catch
            println(m)
        end

    end
    rel_path = relpath(root, testsuite_path)
    root_include_path = joinpath(tests_root_path, rel_path)
    mkpath(root_include_path)
    root_include_file = joinpath(root_include_path, ".jl")
    touch(root_include_file)
    open(root_include_file, "w") do f
        write(f, "@testset \"$(splitpath(root)[end])\" begin\n")
        for dir in dirs
            write(f, "    @include \"$(joinpath(rel_path, dir, ".jl"))\"\n")
        end
        for file in files
            write(f, "    @include \"$(joinpath(rel_path, stem(file)*".jl"))\" \n")
        end
        write(f, "end\n")
    end
    for file in files
        test_file = joinpath(tests_root_path, rel_path, stem(file)*".jl")
        touch(test_file)
        open(test_file, "w") do f
            orig_file_content = open(joinpath(root, file)) do rf
                read(rf, String)
            end
            out_file_content = replace(orig_file_content,
                # r"\R+" => "\n",     # delete empty lines
                syntax_repl_dict...,
                function_repl_dict...
            )
            empty!(vars)
            out_file_content = replace(out_file_content, test_re => test_subs)
            out_file_content = replace(out_file_content, r"^|(\R(?!\R))" => "\n"*" "^4) #indent
            write(f, "@testset \"$(stem(file))\" begin\n")
            write(f, "    @variables "*join(sort([x for x in setdiff(vars, [:im, :ℯ, :pi])]), ", ")*"\n")
            write(f, out_file_content)
            write(f, "end\n")
        end
    end
end
