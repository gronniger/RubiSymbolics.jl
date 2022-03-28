include("4.7.1 Sine normalization rules.jl")
include("4.7.2 Tangent normalization rules.jl")
include("4.7.3 Secant normalization rules.jl")
include("4.7.4 (c trig)^m (d trig)^n.jl")
include("4.7.5 Inert trig functions.jl")
include("4.7.6 (c+d x)^m trig(a+b x)^n trig(a+b x)^p.jl")
include("4.7.7 F^(c (a+b x)) trig(d+e x)^n.jl")
include("4.7.8 u trig(a+b log(c x^n))^p.jl")
include("4.7.9 Active trig functions.jl")
int_rule_4_7 = [
    int_rules_4_7_1...,
    int_rules_4_7_2...,
    int_rules_4_7_3...,
    int_rules_4_7_4...,
    int_rules_4_7_5...,
    int_rules_4_7_6...,
    int_rules_4_7_7...,
    int_rules_4_7_8...,
    int_rules_4_7_9...,
]