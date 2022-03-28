int_rules_4_3_2_3 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.3.2.3 (g tan)^p (a+b tan)^m (c+d tan)^n =#
Int((g_'*tan(e_' + f_'*x_))^p_'*(a_ + b_'*tan(e_' + f_'*x_))^ m_*(c_ + d_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (Unintegrable((g*Tan(e + f*x))^p*(a + b*Tan(e + f*x))^ m*(c + d*Tan(e + f*x))^n, x) <-- FreeQ([a, b, c, d, e, f, g, m, n, p], x))
Int((g_'*cot(e_' + f_'*x_))^p_*(a_' + b_'*tan(e_' + f_'*x_))^ m_'*(c_ + d_'*tan(e_' + f_'*x_))^n_', x_Symbol) := (g^(m + n)* Int((g*Cot(e + f*x))^(p - m - n)*(b + a*Cot(e + f*x))^ m*(d + c*Cot(e + f*x))^n, x) <-- FreeQ([a, b, c, d, e, f, g, p], x) && Not(IntegerQ(p)) && IntegerQ(m) && IntegerQ(n))
Int((g_'*tan(e_' + f_'*x_))^p_*(a_' + b_'*cot(e_' + f_'*x_))^ m_'*(c_ + d_'*cot(e_' + f_'*x_))^n_', x_Symbol) := (g^(m + n)* Int((g*Tan(e + f*x))^(p - m - n)*(b + a*Tan(e + f*x))^ m*(d + c*Tan(e + f*x))^n, x) <-- FreeQ([a, b, c, d, e, f, g, p], x) && Not(IntegerQ(p)) && IntegerQ(m) && IntegerQ(n))
Int((g_'*tan(e_' + f_'*x_)^q_)^p_*(a_' + b_'*tan(e_' + f_'*x_))^ m_'*(c_ + d_'*tan(e_' + f_'*x_))^n_', x_Symbol) := ((g*Tan(e + f*x)^q)^p/(g*Tan(e + f*x))^(p*q)* Int((g*Tan(e + f*x))^(p*q)*(a + b*Tan(e + f*x))^ m*(c + d*Tan(e + f*x))^n, x) <-- FreeQ([a, b, c, d, e, f, g, m, n, p, q], x) && Not(IntegerQ(p)) && Not(IntegerQ(m) && IntegerQ(n)))
Int((g_'*tan(e_' + f_'*x_))^p_'*(a_ + b_'*tan(e_' + f_'*x_))^ m_'*(c_ + d_'*cot(e_' + f_'*x_))^n_', x_Symbol) := (g^n*Int((g*Tan(e + f*x))^(p - n)*(a + b*Tan(e + f*x))^ m*(d + c*Tan(e + f*x))^n, x) <-- FreeQ([a, b, c, d, e, f, g, m, p], x) && IntegerQ(n))
Int(tan(e_' + f_'*x_)^p_'*(a_ + b_'*tan(e_' + f_'*x_))^ m_'*(c_ + d_'*cot(e_' + f_'*x_))^n_, x_Symbol) := (Int((b + a*Cot(e + f*x))^m*(c + d*Cot(e + f*x))^n/ Cot(e + f*x)^(m + p), x) <-- FreeQ([a, b, c, d, e, f, n], x) && Not(IntegerQ(n)) && IntegerQ(m) && IntegerQ(p))
Int((g_'*tan(e_' + f_'*x_))^p_*(a_ + b_'*tan(e_' + f_'*x_))^ m_'*(c_ + d_'*cot(e_' + f_'*x_))^n_, x_Symbol) := (Cot(e + f*x)^p*(g*Tan(e + f*x))^p* Int((b + a*Cot(e + f*x))^m*(c + d*Cot(e + f*x))^n/ Cot(e + f*x)^(m + p), x) <-- FreeQ([a, b, c, d, e, f, g, n, p], x) && Not(IntegerQ(n)) && IntegerQ(m) && Not(IntegerQ(p)))
Int((g_'*tan(e_' + f_'*x_))^p_'*(a_ + b_'*tan(e_' + f_'*x_))^ m_*(c_ + d_'*cot(e_' + f_'*x_))^n_, x_Symbol) := ((g*Tan(e + f*x))^ n*(c + d*Cot(e + f*x))^n/(d + c*Tan(e + f*x))^n* Int((g*Tan(e + f*x))^(p - n)*(a + b*Tan(e + f*x))^ m*(d + c*Tan(e + f*x))^n, x) <-- FreeQ([a, b, c, d, e, f, g, m, n, p], x) && Not(IntegerQ(n)) && Not(IntegerQ(m)))
end
