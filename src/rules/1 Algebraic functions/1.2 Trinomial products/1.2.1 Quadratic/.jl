include("1.2.1.1 (a+b x+c x^2)^p.jl")
include("1.2.1.2 (d+e x)^m (a+b x+c x^2)^p.jl")
include("1.2.1.3 (d+e x)^m (f+g x) (a+b x+c x^2)^p.jl")
include("1.2.1.4 (d+e x)^m (f+g x)^n (a+b x+c x^2)^p.jl")
include("1.2.1.5 (a+b x+c x^2)^p (d+e x+f x^2)^q.jl")
include("1.2.1.6 (g+h x)^m (a+b x+c x^2)^p (d+e x+f x^2)^q.jl")
include("1.2.1.7 (a+b x+c x^2)^p (d+e x+f x^2)^q (A+B x+C x^2).jl")
include("1.2.1.8 P(x) (a+b x+c x^2)^p.jl")
include("1.2.1.9 P(x) (d+e x)^m (a+b x+c x^2)^p.jl")
int_rule_1_2_1 = [
    int_rules_1_2_1_1...,
    int_rules_1_2_1_2...,
    int_rules_1_2_1_3...,
    int_rules_1_2_1_4...,
    int_rules_1_2_1_5...,
    int_rules_1_2_1_6...,
    int_rules_1_2_1_7...,
    int_rules_1_2_1_8...,
    int_rules_1_2_1_9...,
]