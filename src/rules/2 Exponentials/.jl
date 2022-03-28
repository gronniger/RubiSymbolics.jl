include("2.1 (c+d x)^m (a+b (F^(g (e+f x)))^n)^p.jl")
include("2.2 (c+d x)^m (F^(g (e+f x)))^n (a+b (F^(g (e+f x)))^n)^p.jl")
include("2.3 Miscellaneous exponentials.jl")
int_rule_2 = [
    int_rules_2_1...,
    int_rules_2_2...,
    int_rules_2_3...,
]