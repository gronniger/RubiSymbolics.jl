include("7.1.1 (a+b arcsinh(c x))^n.jl")
include("7.1.2 (d x)^m (a+b arcsinh(c x))^n.jl")
include("7.1.3 (d+e x^2)^p (a+b arcsinh(c x))^n.jl")
include("7.1.4 (f x)^m (d+e x^2)^p (a+b arcsinh(c x))^n.jl")
include("7.1.5 u (a+b arcsinh(c x))^n.jl")
include("7.1.6 Miscellaneous inverse hyperbolic sine.jl")
int_rule_7_1 = [
    int_rules_7_1_1...,
    int_rules_7_1_2...,
    int_rules_7_1_3...,
    int_rules_7_1_4...,
    int_rules_7_1_5...,
    int_rules_7_1_6...,
]