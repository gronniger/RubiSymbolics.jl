module RubiSymbolics

syntax_repl_dict = Dict(
    "(*"    =>  "#=",
    "*)"    =>  "=#",
    "{"     =>  "[",
    "}"     =>  "]",
    "["     =>  "(",
    "]"     =>  ")",
    r"(?<=[a-zA-Z0-9_\)\]]) (?=[a-zA-Z0-9_\(\[])"=>  "*",   # space as *
    "x -("  =>  "x - (",            # space required inside [ ]
    r"(\d)(?=\.[^\d])" => s"\1.0",  # float fix
    "(a + b*x)!"  => "factorial(a + b*x)"   # fix in 8.6 Gamma Functions
)
identifier(s::String) = Regex("(?<![a-zA-Z_])$s(?![a-zA-Z0-9_])")
function_repl_dict = Dict(
    identifier("E") => "ℯ",
    identifier("Pi") => "pi",
    identifier("I") => "im",

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
)

end # module
