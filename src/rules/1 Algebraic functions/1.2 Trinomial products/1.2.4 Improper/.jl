include("1.2.4.1 (a x^q+b x^n+c x^(2 n-q))^p.jl")
include("1.2.4.2 (d x)^m (a x^q+b x^n+c x^(2 n-q))^p.jl")
include("1.2.4.3 (d+e x^(n-q)) (a x^q+b x^n+c x^(2 n-q))^p.jl")
include("1.2.4.4 (f x)^m (d+e x^(n-q)) (a x^q+b x^n+c x^(2 n-q))^p.jl")
int_rule_1_2_4 = [
    int_rules_1_2_4_1...,
    int_rules_1_2_4_2...,
    int_rules_1_2_4_3...,
    int_rules_1_2_4_4...,
]