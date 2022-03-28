int_rules_4_5_1_4 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.5.1.4 (d tan)^n (a+b sec)^m =#
Int(cot(c_' + d_'*x_)^m_'*(a_ + b_'*csc(c_' + d_'*x_))^n_', x_Symbol) := (1/(a^(m - n - 1)*b^n*d)* Subst(Int((a - b*x)^((m - 1)/2)*(a + b*x)^((m - 1)/2 + n)/ x^(m + n), x), x, Sin(c + d*x)) <-- FreeQ([a, b, c, d], x) && IntegerQ((m - 1)/2) && EqQ(a^2 - b^2, 0) && IntegerQ(n))
Int(cot(c_' + d_'*x_)^m_'*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (-1/(d*b^(m - 1))* Subst(Int((-a + b*x)^((m - 1)/2)*(a + b*x)^((m - 1)/2 + n)/x, x), x, Csc(c + d*x)) <-- FreeQ([a, b, c, d, n], x) && IntegerQ((m - 1)/2) && EqQ(a^2 - b^2, 0) && Not(IntegerQ(n)))
Int((e_'*cot(c_' + d_'*x_))^m_*(a_ + b_'*csc(c_' + d_'*x_)), x_Symbol) := (-e*(e*Cot(c + d*x))^(m - 1)*(a*m + b*(m - 1)*Csc(c + d*x))/(d*m*(m - 1)) - e^2/m* Int((e*Cot(c + d*x))^(m - 2)*(a*m + b*(m - 1)*Csc(c + d*x)), x) <-- FreeQ([a, b, c, d, e], x) && GtQ(m, 1))
Int((e_'*cot(c_' + d_'*x_))^m_*(a_ + b_'*csc(c_' + d_'*x_)), x_Symbol) := (-(e*Cot(c + d*x))^(m + 1)*(a + b*Csc(c + d*x))/(d* e*(m + 1)) - 1/(e^2*(m + 1))* Int((e*Cot(c + d*x))^(m + 2)*(a*(m + 1) + b*(m + 2)*Csc(c + d*x)), x) <-- FreeQ([a, b, c, d, e], x) && LtQ(m, -1))
Int((a_ + b_'*csc(c_' + d_'*x_))/cot(c_' + d_'*x_), x_Symbol) := (Int((b + a*Sin(c + d*x))/Cos(c + d*x), x) <-- FreeQ([a, b, c, d], x))
Int((e_'*cot(c_' + d_'*x_))^m_'*(a_ + b_'*csc(c_' + d_'*x_)), x_Symbol) := (a*Int((e*Cot(c + d*x))^m, x) + b*Int((e*Cot(c + d*x))^m*Csc(c + d*x), x) <-- FreeQ([a, b, c, d, e, m], x))
Int(cot(c_' + d_'*x_)^m_'*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (-(-1)^((m - 1)/2)/(d*b^(m - 1))* Subst(Int((b^2 - x^2)^((m - 1)/2)*(a + x)^n/x, x), x, b*Csc(c + d*x)) <-- FreeQ([a, b, c, d, n], x) && IntegerQ((m - 1)/2) && NeQ(a^2 - b^2, 0))
Int((e_'*cot(c_' + d_'*x_))^m_*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (Int(ExpandIntegrand((e*Cot(c + d*x))^m, (a + b*Csc(c + d*x))^n, x), x) <-- FreeQ([a, b, c, d, e, m], x) && IGtQ(n, 0))
Int(cot(c_' + d_'*x_)^m_'*(a_ + b_'*csc(c_' + d_'*x_))^n_', x_Symbol) := (-2*a^(m/2 + n + 1/2)/d* Subst(Int(x^m*(2 + a*x^2)^(m/2 + n - 1/2)/(1 + a*x^2), x), x, Cot(c + d*x)/Sqrt(a + b*Csc(c + d*x))) <-- FreeQ([a, b, c, d], x) && EqQ(a^2 - b^2, 0) && IntegerQ(m/2) && IntegerQ(n - 1/2))
Int((e_'*cot(c_' + d_'*x_))^m_*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (a^(2*n)*e^(-2*n)* Int((e*Cot(c + d*x))^(m + 2*n)/(-a + b*Csc(c + d*x))^n, x) <-- FreeQ([a, b, c, d, e, m], x) && EqQ(a^2 - b^2, 0) && ILtQ(n, 0))
Int((e_'*cot(c_' + d_'*x_))^m_*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (-2^(m + n + 1)*(e*Cot(c + d*x))^(m + 1)*(a + b*Csc(c + d*x))^ n/(d*e*(m + 1))*(a/(a + b*Csc(c + d*x)))^(m + n + 1)* AppellF1((m + 1)/2, m + n, 1, (m + 3)/ 2, -(a - b*Csc(c + d*x))/(a + b*Csc(c + d*x)), (a - b*Csc(c + d*x))/(a + b*Csc(c + d*x))) <-- FreeQ([a, b, c, d, e, m, n], x) && EqQ(a^2 - b^2, 0) && Not(IntegerQ(n)))
Int(Sqrt(e_'*cot(c_' + d_'*x_))/(a_ + b_'*csc(c_' + d_'*x_)), x_Symbol) := (1/a*Int(Sqrt(e*Cot(c + d*x)), x) - b/a*Int(Sqrt(e*Cot(c + d*x))/(b + a*Sin(c + d*x)), x) <-- FreeQ([a, b, c, d, e], x) && NeQ(a^2 - b^2, 0))
Int((e_'*cot(c_' + d_'*x_))^m_/(a_ + b_'*csc(c_' + d_'*x_)), x_Symbol) := (-e^2/b^2* Int((e*Cot(c + d*x))^(m - 2)*(a - b*Csc(c + d*x)), x) + e^2*(a^2 - b^2)/b^2* Int((e*Cot(c + d*x))^(m - 2)/(a + b*Csc(c + d*x)), x) <-- FreeQ([a, b, c, d, e], x) && NeQ(a^2 - b^2, 0) && IGtQ(m - 1/2, 0))
Int(1/(Sqrt(e_'*cot(c_' + d_'*x_))*(a_ + b_'*csc(c_' + d_'*x_))), x_Symbol) := (1/a*Int(1/Sqrt(e*Cot(c + d*x)), x) - b/a*Int(1/(Sqrt(e*Cot(c + d*x))*(b + a*Sin(c + d*x))), x) <-- FreeQ([a, b, c, d, e], x) && NeQ(a^2 - b^2, 0))
Int((e_'*cot(c_' + d_'*x_))^m_/(a_ + b_'*csc(c_' + d_'*x_)), x_Symbol) := (1/(a^2 - b^2)*Int((e*Cot(c + d*x))^m*(a - b*Csc(c + d*x)), x) + b^2/(e^2*(a^2 - b^2))* Int((e*Cot(c + d*x))^(m + 2)/(a + b*Csc(c + d*x)), x) <-- FreeQ([a, b, c, d, e], x) && NeQ(a^2 - b^2, 0) && ILtQ(m + 1/2, 0))
Int(cot(c_' + d_'*x_)^2*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (Int((-1 + Csc(c + d*x)^2)*(a + b*Csc(c + d*x))^n, x) <-- FreeQ([a, b, c, d, n], x) && NeQ(a^2 - b^2, 0))
Int(cot(c_' + d_'*x_)^m_*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (Int(ExpandIntegrand((a + b*Csc(c + d*x))^ n, (-1 + Csc(c + d*x)^2)^(m/2), x), x) <-- FreeQ([a, b, c, d, n], x) && NeQ(a^2 - b^2, 0) && IGtQ(m/2, 0) && IntegerQ(n - 1/2))
Int(cot(c_' + d_'*x_)^m_*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (Int(ExpandIntegrand((a + b*Csc(c + d*x))^ n, (-1 + Sec(c + d*x)^2)^(-m/2), x), x) <-- FreeQ([a, b, c, d, n], x) && NeQ(a^2 - b^2, 0) && ILtQ(m/2, 0) && IntegerQ(n - 1/2) && EqQ(m, -2))
Int((e_'*cot(c_' + d_'*x_))^m_*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (Int(ExpandIntegrand((e*Cot(c + d*x))^m, (a + b*Csc(c + d*x))^n, x), x) <-- FreeQ([a, b, c, d, e, m], x) && NeQ(a^2 - b^2, 0) && IGtQ(n, 0))
Int(cot(c_' + d_'*x_)^m_'*(a_ + b_'*csc(c_' + d_'*x_))^n_, x_Symbol) := (Int(Cos(c + d*x)^m*(b + a*Sin(c + d*x))^n/Sin(c + d*x)^(m + n), x) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0) && IntegerQ(n) && IntegerQ(m) && (IntegerQ(m/2) || LeQ(m, 1)))
Int((e_'*cot(c_' + d_'*x_))^m_'*(a_' + b_'*csc(c_' + d_'*x_))^n_', x_Symbol) := (Unintegrable((e*Cot(c + d*x))^m*(a + b*Csc(c + d*x))^n, x) <-- FreeQ([a, b, c, d, e, m, n], x))
Int((e_'*cot(c_' + d_'*x_))^m_*(a_ + b_'*sec(c_' + d_'*x_))^n_', x_Symbol) := ((e*Cot(c + d*x))^m*Tan(c + d*x)^m* Int((a + b*Sec(c + d*x))^n/Tan(c + d*x)^m, x) <-- FreeQ([a, b, c, d, e, m, n], x) && Not(IntegerQ(m)))
Int((e_'*tan(c_' + d_'*x_)^p_)^m_*(a_ + b_'*sec(c_' + d_'*x_))^n_', x_Symbol) := ((e*Tan(c + d*x)^p)^m/(e*Tan(c + d*x))^(m*p)* Int((e*Tan(c + d*x))^(m*p)*(a + b*Sec(c + d*x))^n, x) <-- FreeQ([a, b, c, d, e, m, n, p], x) && Not(IntegerQ(m)))
Int((e_'*cot(c_' + d_'*x_)^p_)^m_*(a_ + b_'*csc(c_' + d_'*x_))^n_', x_Symbol) := ((e*Cot(c + d*x)^p)^m/(e*Cot(c + d*x))^(m*p)* Int((e*Cot(c + d*x))^(m*p)*(a + b*Csc(c + d*x))^n, x) <-- FreeQ([a, b, c, d, e, m, n, p], x) && Not(IntegerQ(m)))
end
