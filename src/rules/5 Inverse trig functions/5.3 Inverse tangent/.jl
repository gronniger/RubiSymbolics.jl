include("5.3.1 (a+b arctan(c x^n))^p.jl")
include("5.3.2 (d x)^m (a+b arctan(c x^n))^p.jl")
include("5.3.3 (d+e x)^m (a+b arctan(c x^n))^p.jl")
include("5.3.4 u (a+b arctan(c x))^p.jl")
include("5.3.5 u (a+b arctan(c+d x))^p.jl")
include("5.3.6 Exponentials of inverse tangent.jl")
include("5.3.7 Miscellaneous inverse tangent.jl")
int_rule_5_3 = [
    int_rules_5_3_1...,
    int_rules_5_3_2...,
    int_rules_5_3_3...,
    int_rules_5_3_4...,
    int_rules_5_3_5...,
    int_rules_5_3_6...,
    int_rules_5_3_7...,
]