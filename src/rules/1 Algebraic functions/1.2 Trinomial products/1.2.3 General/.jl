include("1.2.3.1 (a+b x^n+c x^(2 n))^p.jl")
include("1.2.3.2 (d x)^m (a+b x^n+c x^(2 n))^p.jl")
include("1.2.3.3 (d+e x^n)^q (a+b x^n+c x^(2 n))^p.jl")
include("1.2.3.4 (f x)^m (d+e x^n)^q (a+b x^n+c x^(2 n))^p.jl")
include("1.2.3.5 P(x) (a+b x^n+c x^(2 n))^p.jl")
include("1.2.3.6 P(x) (d x)^m (a+b x^n+c x^(2 n))^p.jl")
int_rule_1_2_3 = [
    int_rules_1_2_3_1...,
    int_rules_1_2_3_2...,
    int_rules_1_2_3_3...,
    int_rules_1_2_3_4...,
    int_rules_1_2_3_5...,
    int_rules_1_2_3_6...,
]