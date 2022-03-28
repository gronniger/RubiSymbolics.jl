include("3.1.1 (a+b log(c x^n))^p.jl")
include("3.1.2 (d x)^m (a+b log(c x^n))^p.jl")
include("3.1.3 (d+e x^r)^q (a+b log(c x^n))^p.jl")
include("3.1.4 (f x)^m (d+e x^r)^q (a+b log(c x^n))^p.jl")
include("3.1.5 u (a+b log(c x^n))^p.jl")
include("3.2.1 (f+g x)^m (A+B log(e ((a+b x) over (c+d x))^n))^p.jl")
include("3.2.2 (f+g x)^m (h+i x)^q (A+B log(e ((a+b x) over (c+d x))^n))^p.jl")
include("3.2.3 u log(e (f (a+b x)^p (c+d x)^q)^r)^s.jl")
include("3.3 u (a+b log(c (d+e x)^n))^p.jl")
include("3.4 u (a+b log(c (d+e x^m)^n))^p.jl")
include("3.5 Miscellaneous logarithms.jl")
int_rule_3 = [
    int_rules_3_1_1...,
    int_rules_3_1_2...,
    int_rules_3_1_3...,
    int_rules_3_1_4...,
    int_rules_3_1_5...,
    int_rules_3_2_1...,
    int_rules_3_2_2...,
    int_rules_3_2_3...,
    int_rules_3_3...,
    int_rules_3_4...,
    int_rules_3_5...,
]