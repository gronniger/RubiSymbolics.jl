include("1.1.3.1 (a+b x^n)^p.jl")
include("1.1.3.2 (c x)^m (a+b x^n)^p.jl")
include("1.1.3.3 (a+b x^n)^p (c+d x^n)^q.jl")
include("1.1.3.4 (e x)^m (a+b x^n)^p (c+d x^n)^q.jl")
include("1.1.3.5 (a+b x^n)^p (c+d x^n)^q (e+f x^n)^r.jl")
include("1.1.3.6 (g x)^m (a+b x^n)^p (c+d x^n)^q (e+f x^n)^r.jl")
include("1.1.3.7 P(x) (a+b x^n)^p.jl")
include("1.1.3.8 P(x) (c x)^m (a+b x^n)^p.jl")
int_rule_1_1_3 = [
    int_rules_1_1_3_1...,
    int_rules_1_1_3_2...,
    int_rules_1_1_3_3...,
    int_rules_1_1_3_4...,
    int_rules_1_1_3_5...,
    int_rules_1_1_3_6...,
    int_rules_1_1_3_7...,
    int_rules_1_1_3_8...,
]