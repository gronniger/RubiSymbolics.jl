include("1.1.4.1 (a x^j+b x^n)^p.jl")
include("1.1.4.2 (c x)^m (a x^j+b x^n)^p.jl")
include("1.1.4.3 (e x)^m (a x^j+b x^k)^p (c+d x^n)^q.jl")
include("1.1.4.4 P(x) (c x)^m (a x^j+b x^n)^p.jl")
int_rule_1_1_4 = [
    int_rules_1_1_4_1...,
    int_rules_1_1_4_2...,
    int_rules_1_1_4_3...,
    int_rules_1_1_4_4...,
]