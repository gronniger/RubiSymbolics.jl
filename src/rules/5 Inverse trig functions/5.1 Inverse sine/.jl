include("5.1.1 (a+b arcsin(c x))^n.jl")
include("5.1.2 (d x)^m (a+b arcsin(c x))^n.jl")
include("5.1.3 (d+e x^2)^p (a+b arcsin(c x))^n.jl")
include("5.1.4 (f x)^m (d+e x^2)^p (a+b arcsin(c x))^n.jl")
include("5.1.5 u (a+b arcsin(c x))^n.jl")
include("5.1.6 Miscellaneous inverse sine.jl")
int_rule_5_1 = [
    int_rules_5_1_1...,
    int_rules_5_1_2...,
    int_rules_5_1_3...,
    int_rules_5_1_4...,
    int_rules_5_1_5...,
    int_rules_5_1_6...,
]