include("6.7.6 (c+d x)^m hyper(a+b x)^n hyper(a+b x)^p.jl")
include("6.7.7 F^(c (a+b x)) hyper(d+e x)^n.jl")
include("6.7.8 u hyper(a+b log(c x^n))^p.jl")
include("6.7.9 Active hyperbolic functions.jl")
int_rule_6_7 = [
    int_rules_6_7_6...,
    int_rules_6_7_7...,
    int_rules_6_7_8...,
    int_rules_6_7_9...,
]