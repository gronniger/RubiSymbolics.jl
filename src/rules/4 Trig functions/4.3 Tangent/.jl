include("4.3.1.1 (a+b tan)^n.jl")
include("4.3.1.2 (d sec)^m (a+b tan)^n.jl")
include("4.3.1.3 (d sin)^m (a+b tan)^n.jl")
include("4.3.10 (c+d x)^m (a+b tan)^n.jl")
include("4.3.11 (e x)^m (a+b tan(c+d x^n))^p.jl")
include("4.3.12 (d+e x)^m tan(a+b x+c x^2)^n.jl")
include("4.3.2.1 (a+b tan)^m (c+d tan)^n.jl")
include("4.3.2.3 (g tan)^p (a+b tan)^m (c+d tan)^n.jl")
include("4.3.3.1 (a+b tan)^m (c+d tan)^n (A+B tan).jl")
include("4.3.4.1 (a+b tan)^m (A+B tan+C tan^2).jl")
include("4.3.4.2 (a+b tan)^m (c+d tan)^n (A+B tan+C tan^2).jl")
include("4.3.7 (d trig)^m (a+b (c tan)^n)^p.jl")
include("4.3.9 trig^m (a+b tan^n+c tan^(2 n))^p.jl")
int_rule_4_3 = [
    int_rules_4_3_1_1...,
    int_rules_4_3_1_2...,
    int_rules_4_3_1_3...,
    int_rules_4_3_10...,
    int_rules_4_3_11...,
    int_rules_4_3_12...,
    int_rules_4_3_2_1...,
    int_rules_4_3_2_3...,
    int_rules_4_3_3_1...,
    int_rules_4_3_4_1...,
    int_rules_4_3_4_2...,
    int_rules_4_3_7...,
    int_rules_4_3_9...,
]