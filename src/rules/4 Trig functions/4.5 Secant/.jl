include("4.5.1.1 (a+b sec)^n.jl")
include("4.5.1.2 (d sec)^n (a+b sec)^m.jl")
include("4.5.1.3 (d sin)^n (a+b sec)^m.jl")
include("4.5.1.4 (d tan)^n (a+b sec)^m.jl")
include("4.5.10 (c+d x)^m (a+b sec)^n.jl")
include("4.5.11 (e x)^m (a+b sec(c+d x^n))^p.jl")
include("4.5.2.1 (a+b sec)^m (c+d sec)^n.jl")
include("4.5.2.2 (g sec)^p (a+b sec)^m (c+d sec)^n.jl")
include("4.5.3.1 (a+b sec)^m (d sec)^n (A+B sec).jl")
include("4.5.4.1 (a+b sec)^m (A+B sec+C sec^2).jl")
include("4.5.4.2 (a+b sec)^m (d sec)^n (A+B sec+C sec^2).jl")
include("4.5.7 (d trig)^m (a+b (c sec)^n)^p.jl")
include("4.5.9 trig^m (a+b sec^n+c sec^(2 n))^p.jl")
int_rule_4_5 = [
    int_rules_4_5_1_1...,
    int_rules_4_5_1_2...,
    int_rules_4_5_1_3...,
    int_rules_4_5_1_4...,
    int_rules_4_5_10...,
    int_rules_4_5_11...,
    int_rules_4_5_2_1...,
    int_rules_4_5_2_2...,
    int_rules_4_5_3_1...,
    int_rules_4_5_4_1...,
    int_rules_4_5_4_2...,
    int_rules_4_5_7...,
    int_rules_4_5_9...,
]