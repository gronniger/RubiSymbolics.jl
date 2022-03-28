int_rules_6_3_11 = @theory begin

#= ::Subsection::Closed:: =#
#= 6.3.11 (e x)^m (a+b tanh(c+d x^n))^p =#
Int((a_' + b_'*Tanh(c_' + d_'*x_^n_))^p_', x_Symbol) := (1/n*Subst(Int(x^(1/n - 1)*(a + b*Tanh(c + d*x))^p, x), x, x^n) <-- FreeQ([a, b, c, d, p], x) && IGtQ(1/n, 0) && IntegerQ(p))
Int((a_' + b_'*Coth(c_' + d_'*x_^n_))^p_', x_Symbol) := (1/n*Subst(Int(x^(1/n - 1)*(a + b*Coth(c + d*x))^p, x), x, x^n) <-- FreeQ([a, b, c, d, p], x) && IGtQ(1/n, 0) && IntegerQ(p))
Int((a_' + b_'*Tanh(c_' + d_'*x_^n_))^p_', x_Symbol) := (Integral((a + b*Tanh(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, n, p], x))
Int((a_' + b_'*Coth(c_' + d_'*x_^n_))^p_', x_Symbol) := (Integral((a + b*Coth(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, n, p], x))
Int((a_' + b_'*Tanh(c_' + d_'*u_^n_))^p_', x_Symbol) := (1/Coefficient(u, x, 1)* Subst(Int((a + b*Tanh(c + d*x^n))^p, x), x, u) <-- FreeQ([a, b, c, d, n, p], x) && LinearQ(u, x) && NeQ(u, x))
Int((a_' + b_'*Coth(c_' + d_'*u_^n_))^p_', x_Symbol) := (1/Coefficient(u, x, 1)* Subst(Int((a + b*Coth(c + d*x^n))^p, x), x, u) <-- FreeQ([a, b, c, d, n, p], x) && LinearQ(u, x) && NeQ(u, x))
Int((a_' + b_'*Tanh(u_))^p_', x_Symbol) := (Int((a + b*Tanh(ExpandToSum(u, x)))^p, x) <-- FreeQ([a, b, p], x) && BinomialQ(u, x) && Not(BinomialMatchQ(u, x)))
Int((a_' + b_'*Coth(u_))^p_', x_Symbol) := (Int((a + b*Coth(ExpandToSum(u, x)))^p, x) <-- FreeQ([a, b, p], x) && BinomialQ(u, x) && Not(BinomialMatchQ(u, x)))
Int(x_^m_'*(a_' + b_'*Tanh(c_' + d_'*x_^n_))^p_', x_Symbol) := (1/n*Subst( Int(x^(Simplify((m + 1)/n) - 1)*(a + b*Tanh(c + d*x))^p, x), x, x^n) <-- FreeQ([a, b, c, d, m, n, p], x) && IGtQ(Simplify((m + 1)/n), 0) && IntegerQ(p))
Int(x_^m_'*(a_' + b_'*Coth(c_' + d_'*x_^n_))^p_', x_Symbol) := (1/n*Subst( Int(x^(Simplify((m + 1)/n) - 1)*(a + b*Coth(c + d*x))^p, x), x, x^n) <-- FreeQ([a, b, c, d, m, n, p], x) && IGtQ(Simplify((m + 1)/n), 0) && IntegerQ(p))
Int(x_^m_'*Tanh(c_' + d_'*x_^n_)^2, x_Symbol) := (-x^(m - n + 1)*Tanh(c + d*x^n)/(d*n) + Int(x^m, x) + (m - n + 1)/(d*n)*Int(x^(m - n)*Tanh(c + d*x^n), x) <-- FreeQ([c, d, m, n], x))
Int(x_^m_'*Coth(c_' + d_'*x_^n_)^2, x_Symbol) := (-x^(m - n + 1)*Coth(c + d*x^n)/(d*n) + Int(x^m, x) + (m - n + 1)/(d*n)*Int(x^(m - n)*Coth(c + d*x^n), x) <-- FreeQ([c, d, m, n], x))
Int(x_^m_'*(a_' + b_'*Tanh(c_' + d_'*x_^n_))^p_', x_Symbol) := (Integral(x^m*(a + b*Tanh(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, m, n, p], x))
Int(x_^m_'*(a_' + b_'*Coth(c_' + d_'*x_^n_))^p_', x_Symbol) := (Integral(x^m*(a + b*Coth(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, m, n, p], x))
Int((e_*x_)^m_'*(a_' + b_'*Tanh(c_' + d_'*x_^n_))^p_', x_Symbol) := (e^IntPart(m)*(e*x)^FracPart(m)/x^FracPart(m)* Int(x^m*(a + b*Tanh(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, e, m, n, p], x))
Int((e_*x_)^m_'*(a_' + b_'*Coth(c_' + d_'*x_^n_))^p_', x_Symbol) := (e^IntPart(m)*(e*x)^FracPart(m)/x^FracPart(m)* Int(x^m*(a + b*Coth(c + d*x^n))^p, x) <-- FreeQ([a, b, c, d, e, m, n, p], x))
Int((e_*x_)^m_'*(a_' + b_'*Tanh(u_))^p_', x_Symbol) := (Int((e*x)^m*(a + b*Tanh(ExpandToSum(u, x)))^p, x) <-- FreeQ([a, b, e, m, p], x) && BinomialQ(u, x) && Not(BinomialMatchQ(u, x)))
Int((e_*x_)^m_'*(a_' + b_'*Coth(u_))^p_', x_Symbol) := (Int((e*x)^m*(a + b*Coth(ExpandToSum(u, x)))^p, x) <-- FreeQ([a, b, e, m, p], x) && BinomialQ(u, x) && Not(BinomialMatchQ(u, x)))
Int(x_^m_'*Sech(a_' + b_'*x_^n_')^p_'*Tanh(a_' + b_'*x_^n_')^q_', x_Symbol) := (-x^(m - n + 1)*Sech(a + b*x^n)^p/(b*n*p) + (m - n + 1)/(b*n*p)*Int(x^(m - n)*Sech(a + b*x^n)^p, x) <-- FreeQ([a, b, p], x) && RationalQ(m) && IntegerQ(n) && GeQ(m - n, 0) && EqQ(q, 1))
Int(x_^m_'*Csch(a_' + b_'*x_^n_')^p_'*Coth(a_' + b_'*x_^n_')^q_', x_Symbol) := (-x^(m - n + 1)*Csch(a + b*x^n)^p/(b*n*p) + (m - n + 1)/(b*n*p)*Int(x^(m - n)*Csch(a + b*x^n)^p, x) <-- FreeQ([a, b, p], x) && RationalQ(m) && IntegerQ(n) && GeQ(m - n, 0) && EqQ(q, 1))
end