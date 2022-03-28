int_rules_4_5_11 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.5.11 (e x)^m (a+b sec(c+d x^n))^p =#
Int((a_' + b_'*Sec(c_' + d_'*x_^n_))^p_', x_Symbol) := (1/n*Subst(Int(x^(1/n - 1)*(a + b*Sec(c + d*x))^p, x), x, x^n) <-- FreeQ([a, b, c, d, p], x) && IGtQ(1/n, 0) && IntegerQ(p))
Int((a_' + b_'*Csc(c_' + d_'*x_^n_))^p_', x_Symbol) := (1/n*Subst(Int(x^(1/n - 1)*(a + b*Csc(c + d*x))^p, x), x, x^n) <-- FreeQ([a, b, c, d, p], x) && IGtQ(1/n, 0) && IntegerQ(p))
Int((a_' + b_'*Sec(c_' + d_'*x_^n_))^p_', x_Symbol) := (Unintegrable((a + b*Sec(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, n, p], x))
Int((a_' + b_'*Csc(c_' + d_'*x_^n_))^p_', x_Symbol) := (Unintegrable((a + b*Csc(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, n, p], x))
Int((a_' + b_'*Sec(c_' + d_'*u_^n_))^p_', x_Symbol) := (1/Coefficient(u, x, 1)* Subst(Int((a + b*Sec(c + d*x^n))^p, x), x, u) <-- FreeQ([a, b, c, d, n, p], x) && LinearQ(u, x) && NeQ(u, x))
Int((a_' + b_'*Csc(c_' + d_'*u_^n_))^p_', x_Symbol) := (1/Coefficient(u, x, 1)* Subst(Int((a + b*Csc(c + d*x^n))^p, x), x, u) <-- FreeQ([a, b, c, d, n, p], x) && LinearQ(u, x) && NeQ(u, x))
Int((a_' + b_'*Sec(u_))^p_', x_Symbol) := (Int((a + b*Sec(ExpandToSum(u, x)))^p, x) <-- FreeQ([a, b, p], x) && BinomialQ(u, x) && Not(BinomialMatchQ(u, x)))
Int((a_' + b_'*Csc(u_))^p_', x_Symbol) := (Int((a + b*Csc(ExpandToSum(u, x)))^p, x) <-- FreeQ([a, b, p], x) && BinomialQ(u, x) && Not(BinomialMatchQ(u, x)))
Int(x_^m_'*(a_' + b_'*Sec(c_' + d_'*x_^n_))^p_', x_Symbol) := (1/n*Subst(Int(x^(Simplify((m + 1)/n) - 1)*(a + b*Sec(c + d*x))^p, x), x, x^n) <-- FreeQ([a, b, c, d, m, n, p], x) && IGtQ(Simplify((m + 1)/n), 0) && IntegerQ(p))
Int(x_^m_'*(a_' + b_'*Csc(c_' + d_'*x_^n_))^p_', x_Symbol) := (1/n*Subst(Int(x^(Simplify((m + 1)/n) - 1)*(a + b*Csc(c + d*x))^p, x), x, x^n) <-- FreeQ([a, b, c, d, m, n, p], x) && IGtQ(Simplify((m + 1)/n), 0) && IntegerQ(p))
Int(x_^m_'*(a_' + b_'*Sec(c_' + d_'*x_^n_))^p_', x_Symbol) := (Unintegrable(x^m*(a + b*Sec(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, m, n, p], x))
Int(x_^m_'*(a_' + b_'*Csc(c_' + d_'*x_^n_))^p_', x_Symbol) := (Unintegrable(x^m*(a + b*Csc(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, m, n, p], x))
Int((e_*x_)^m_'*(a_' + b_'*Sec(c_' + d_'*x_^n_))^p_', x_Symbol) := (e^IntPart(m)*(e*x)^FracPart(m)/x^FracPart(m)* Int(x^m*(a + b*Sec(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, e, m, n, p], x))
Int((e_*x_)^m_'*(a_' + b_'*Csc(c_' + d_'*x_^n_))^p_', x_Symbol) := (e^IntPart(m)*(e*x)^FracPart(m)/x^FracPart(m)* Int(x^m*(a + b*Csc(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, e, m, n, p], x))
Int((e_*x_)^m_'*(a_' + b_'*Sec(u_))^p_', x_Symbol) := (Int((e*x)^m*(a + b*Sec(ExpandToSum(u, x)))^p, x) <-- FreeQ([a, b, e, m, p], x) && BinomialQ(u, x) && Not(BinomialMatchQ(u, x)))
Int((e_*x_)^m_'*(a_' + b_'*Csc(u_))^p_', x_Symbol) := (Int((e*x)^m*(a + b*Csc(ExpandToSum(u, x)))^p, x) <-- FreeQ([a, b, e, m, p], x) && BinomialQ(u, x) && Not(BinomialMatchQ(u, x)))
Int(x_^m_'*Sec(a_' + b_'*x_^n_')^p_*Sin(a_' + b_'*x_^n_'), x_Symbol) := (x^(m - n + 1)*Sec(a + b*x^n)^(p - 1)/(b*n*(p - 1)) - (m - n + 1)/(b*n*(p - 1))* Int(x^(m - n)*Sec(a + b*x^n)^(p - 1), x) <-- FreeQ([a, b, p], x) && IntegerQ(n) && GeQ(m - n, 0) && NeQ(p, 1))
Int(x_^m_'*Csc(a_' + b_'*x_^n_')^p_*Cos(a_' + b_'*x_^n_'), x_Symbol) := (-x^(m - n + 1)*Csc(a + b*x^n)^(p - 1)/(b*n*(p - 1)) + (m - n + 1)/(b*n*(p - 1))* Int(x^(m - n)*Csc(a + b*x^n)^(p - 1), x) <-- FreeQ([a, b, p], x) && IntegerQ(n) && GeQ(m - n, 0) && NeQ(p, 1))
end
