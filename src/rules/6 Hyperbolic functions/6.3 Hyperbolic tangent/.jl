include("6.3.10 (c+d x)^m (a+b tanh)^n.jl")
include("6.3.11 (e x)^m (a+b tanh(c+d x^n))^p.jl")
include("6.3.12 (d+e x)^m tanh(a+b x+c x^2)^n.jl")
int_rule_6_3 = [
    int_rules_6_3_10...,
    int_rules_6_3_11...,
    int_rules_6_3_12...,
]