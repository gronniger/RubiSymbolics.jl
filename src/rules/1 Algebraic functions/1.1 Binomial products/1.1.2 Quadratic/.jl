include("1.1.2.x P(x) (a+b x^2)^p.jl")
include("1.1.2.y P(x) (c x)^m (a+b x^2)^p.jl")
int_rule_1_1_2 = [
    int_rules_1_1_2_x...,
    int_rules_1_1_2_y...,
]