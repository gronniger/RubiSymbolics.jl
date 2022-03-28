include("1.1.1.1 (a+b x)^m.jl")
include("1.1.1.2 (a+b x)^m (c+d x)^n.jl")
include("1.1.1.3 (a+b x)^m (c+d x)^n (e+f x)^p.jl")
include("1.1.1.4 (a+b x)^m (c+d x)^n (e+f x)^p (g+h x)^q.jl")
include("1.1.1.5 P(x) (a+b x)^m (c+d x)^n.jl")
include("1.1.1.6 P(x) (a+b x)^m (c+d x)^n (e+f x)^p.jl")
include("1.1.1.7 P(x) (a+b x)^m (c+d x)^n (e+f x)^p (g+h x)^q.jl")
int_rule_1_1_1 = [
    int_rules_1_1_1_1...,
    int_rules_1_1_1_2...,
    int_rules_1_1_1_3...,
    int_rules_1_1_1_4...,
    int_rules_1_1_1_5...,
    int_rules_1_1_1_6...,
    int_rules_1_1_1_7...,
]