int_rules_5_3_1 = @theory begin

#= ::Subsection::Closed:: =#
#= 5.3.1 (a+b arctan(c x^n))^p =#
Int((a_' + b_'*ArcTan(c_'*x_^n_'))^p_', x_Symbol) := (x*(a + b*ArcTan(c*x^n))^p - b*c*n*p* Int(x^n*(a + b*ArcTan(c*x^n))^(p - 1)/(1 + c^2*x^(2*n)), x) <-- FreeQ([a, b, c, n], x) && IGtQ(p, 0) && (EqQ(n, 1) || EqQ(p, 1)))
Int((a_' + b_'*ArcCot(c_'*x_^n_'))^p_', x_Symbol) := (x*(a + b*ArcCot(c*x^n))^p + b*c*n*p* Int(x^n*(a + b*ArcCot(c*x^n))^(p - 1)/(1 + c^2*x^(2*n)), x) <-- FreeQ([a, b, c, n], x) && IGtQ(p, 0) && (EqQ(n, 1) || EqQ(p, 1)))
Int((a_' + b_'*ArcTan(c_'*x_^n_))^p_, x_Symbol) := (Int(ExpandIntegrand((a + (im*b*Log(1 - im*c*x^n))/ 2 - (im*b*Log(1 + im*c*x^n))/2)^p, x), x) <-- FreeQ([a, b, c], x) && IGtQ(p, 1) && IGtQ(n, 0))
Int((a_' + b_'*ArcCot(c_'*x_^n_))^p_, x_Symbol) := (Int(ExpandIntegrand((a + (im*b*Log(1 - im*x^(-n)/c))/ 2 - (im*b*Log(1 + im*x^(-n)/c))/2)^p, x), x) <-- FreeQ([a, b, c], x) && IGtQ(p, 1) && IGtQ(n, 0))
Int((a_' + b_'*ArcTan(c_'*x_^n_))^p_, x_Symbol) := (Int((a + b*ArcCot(x^(-n)/c))^p, x) <-- FreeQ([a, b, c], x) && IGtQ(p, 1) && ILtQ(n, 0))
Int((a_' + b_'*ArcCot(c_'*x_^n_))^p_, x_Symbol) := (Int((a + b*ArcTan(x^(-n)/c))^p, x) <-- FreeQ([a, b, c], x) && IGtQ(p, 1) && ILtQ(n, 0))
Int((a_' + b_'*ArcTan(c_'*x_^n_))^p_, x_Symbol) := (With([k = Denominator(n)], k*Subst(Int(x^(k - 1)*(a + b*ArcTan(c*x^(k*n)))^p, x), x, x^(1/k))) <-- FreeQ([a, b, c], x) && IGtQ(p, 1) && FractionQ(n))
Int((a_' + b_'*ArcCot(c_'*x_^n_))^p_, x_Symbol) := (With([k = Denominator(n)], k*Subst(Int(x^(k - 1)*(a + b*ArcCot(c*x^(k*n)))^p, x), x, x^(1/k))) <-- FreeQ([a, b, c], x) && IGtQ(p, 1) && FractionQ(n))
Int((a_' + b_'*ArcTan(c_'*x_^n_'))^p_, x_Symbol) := (Unintegrable((a + b*ArcTan(c*x^n))^p, x) <-- FreeQ([a, b, c, n, p], x))
Int((a_' + b_'*ArcCot(c_'*x_^n_'))^p_, x_Symbol) := (Unintegrable((a + b*ArcCot(c*x^n))^p, x) <-- FreeQ([a, b, c, n, p], x))
end