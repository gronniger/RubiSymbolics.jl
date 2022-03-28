include("7.2.1 (a+b arccosh(c x))^n.jl")
include("7.2.2 (d x)^m (a+b arccosh(c x))^n.jl")
include("7.2.3 (d+e x^2)^p (a+b arccosh(c x))^n.jl")
include("7.2.4 (f x)^m (d+e x^2)^p (a+b arccosh(c x))^n.jl")
include("7.2.5 u (a+b arccosh(c x))^n.jl")
include("7.2.6 Miscellaneous inverse hyperbolic cosine.jl")
int_rule_7_2 = [
    int_rules_7_2_1...,
    int_rules_7_2_2...,
    int_rules_7_2_3...,
    int_rules_7_2_4...,
    int_rules_7_2_5...,
    int_rules_7_2_6...,
]