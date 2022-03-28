include("1.2.2.1 (a+b x^2+c x^4)^p.jl")
include("1.2.2.2 (d x)^m (a+b x^2+c x^4)^p.jl")
include("1.2.2.3 (d+e x^2)^q (a+b x^2+c x^4)^p.jl")
include("1.2.2.4 (f x)^m (d+e x^2)^q (a+b x^2+c x^4)^p.jl")
include("1.2.2.5 P(x) (a+b x^2+c x^4)^p.jl")
include("1.2.2.6 P(x) (d x)^m (a+b x^2+c x^4)^p.jl")
include("1.2.2.7 P(x) (d+e x^2)^q (a+b x^2+c x^4)^p.jl")
include("1.2.2.8 P(x) (d+e x)^q (a+b x^2+c x^4)^p.jl")
int_rule_1_2_2 = [
    int_rules_1_2_2_1...,
    int_rules_1_2_2_2...,
    int_rules_1_2_2_3...,
    int_rules_1_2_2_4...,
    int_rules_1_2_2_5...,
    int_rules_1_2_2_6...,
    int_rules_1_2_2_7...,
    int_rules_1_2_2_8...,
]