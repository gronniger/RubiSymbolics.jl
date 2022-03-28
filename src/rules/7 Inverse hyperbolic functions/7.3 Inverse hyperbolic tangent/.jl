include("7.3.1 (a+b arctanh(c x^n))^p.jl")
include("7.3.1 u (a+b arctanh(c x^n))^p.jl")
include("7.3.2 (d x)^m (a+b arctanh(c x^n))^p.jl")
include("7.3.2 u (a+b arctanh(c+d x))^p.jl")
include("7.3.3 (d+e x)^m (a+b arctanh(c x^n))^p.jl")
include("7.3.3 Exponentials of inverse hyperbolic tangent.jl")
include("7.3.4 Miscellaneous inverse hyperbolic tangent.jl")
include("7.3.4 u (a+b arctanh(c x))^p.jl")
include("7.3.5 u (a+b arctanh(c+d x))^p.jl")
include("7.3.6 Exponentials of inverse hyperbolic tangent.jl")
include("7.3.7 Miscellaneous inverse hyperbolic tangent.jl")
int_rule_7_3 = [
    int_rules_7_3_1...,
    int_rules_7_3_1...,
    int_rules_7_3_2...,
    int_rules_7_3_2...,
    int_rules_7_3_3...,
    int_rules_7_3_3...,
    int_rules_7_3_4...,
    int_rules_7_3_4...,
    int_rules_7_3_5...,
    int_rules_7_3_6...,
    int_rules_7_3_7...,
]