include("6.1.10 (c+d x)^m (a+b sinh)^n.jl")
include("6.1.11 (e x)^m (a+b x^n)^p sinh.jl")
include("6.1.12 (e x)^m (a+b sinh(c+d x^n))^p.jl")
include("6.1.13 (d+e x)^m sinh(a+b x+c x^2)^n.jl")
int_rule_6_1 = [
    int_rules_6_1_10...,
    int_rules_6_1_11...,
    int_rules_6_1_12...,
    int_rules_6_1_13...,
]