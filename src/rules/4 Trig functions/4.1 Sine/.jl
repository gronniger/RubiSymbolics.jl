include("4.1.0.1 (a sin)^m (b trg)^n.jl")
include("4.1.0.2 (a trg)^m (b tan)^n.jl")
include("4.1.0.3 (a csc)^m (b sec)^n.jl")
include("4.1.1.1 (a+b sin)^n.jl")
include("4.1.1.2 (g cos)^p (a+b sin)^m.jl")
include("4.1.1.3 (g tan)^p (a+b sin)^m.jl")
include("4.1.10 (c+d x)^m (a+b sin)^n.jl")
include("4.1.11 (e x)^m (a+b x^n)^p sin.jl")
include("4.1.12 (e x)^m (a+b sin(c+d x^n))^p.jl")
include("4.1.13 (d+e x)^m sin(a+b x+c x^2)^n.jl")
include("4.1.2.1 (a+b sin)^m (c+d sin)^n.jl")
include("4.1.2.2 (g cos)^p (a+b sin)^m (c+d sin)^n.jl")
include("4.1.2.3 (g sin)^p (a+b sin)^m (c+d sin)^n.jl")
include("4.1.3.1 (a+b sin)^m (c+d sin)^n (A+B sin).jl")
include("4.1.4.1 (a+b sin)^m (A+B sin+C sin^2).jl")
include("4.1.4.2 (a+b sin)^m (c+d sin)^n (A+B sin+C sin^2).jl")
include("4.1.5 trig^m (a cos+b sin)^n.jl")
include("4.1.6 (a+b cos+c sin)^n.jl")
include("4.1.7 (d trig)^m (a+b (c sin)^n)^p.jl")
include("4.1.8 trig^m (a+b cos^p+c sin^q)^n.jl")
include("4.1.9 trig^m (a+b sin^n+c sin^(2 n))^p.jl")
int_rule_4_1 = [
    int_rules_4_1_0_1...,
    int_rules_4_1_0_2...,
    int_rules_4_1_0_3...,
    int_rules_4_1_1_1...,
    int_rules_4_1_1_2...,
    int_rules_4_1_1_3...,
    int_rules_4_1_10...,
    int_rules_4_1_11...,
    int_rules_4_1_12...,
    int_rules_4_1_13...,
    int_rules_4_1_2_1...,
    int_rules_4_1_2_2...,
    int_rules_4_1_2_3...,
    int_rules_4_1_3_1...,
    int_rules_4_1_4_1...,
    int_rules_4_1_4_2...,
    int_rules_4_1_5...,
    int_rules_4_1_6...,
    int_rules_4_1_7...,
    int_rules_4_1_8...,
    int_rules_4_1_9...,
]