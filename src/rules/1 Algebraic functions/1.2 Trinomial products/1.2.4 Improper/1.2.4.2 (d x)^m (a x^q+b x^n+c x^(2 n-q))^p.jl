int_rules_1_2_4_2 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.2.4.2 (d x)^m (a x^q+b x^n+c x^(2 n-q))^p =#
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_', x_Symbol) := (Int(x^m*((a + b + c)*x^n)^p, x) <-- FreeQ([a, b, c, m, n, p], x) && EqQ(q, n) && EqQ(r, n))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_', x_Symbol) := (Int(x^(m + p*q)*(a + b*x^(n - q) + c*x^(2*(n - q)))^p, x) <-- FreeQ([a, b, c, m, n, q], x) && EqQ(r, 2*n - q) && IntegerQ(p) && PosQ(n - q))
Int(x_^m_'/Sqrt(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_'), x_Symbol) := (-2/(n - q)* Subst(Int(1/(4*a - x^2), x), x, x^(m + 1)*(2*a + b*x^(n - q))/Sqrt(a*x^q + b*x^n + c*x^r)) <-- FreeQ([a, b, c, m, n, q, r], x) && EqQ(r, 2*n - q) && PosQ(n - q) && NeQ(b^2 - 4*a*c, 0) && EqQ(m, q/2 - 1))
Int(x_^m_'/Sqrt(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_'), x_Symbol) := (x^(q/2)*Sqrt(a + b*x^(n - q) + c*x^(2*(n - q)))/ Sqrt(a*x^q + b*x^n + c*x^(2*n - q))* Int(x^(m - q/2)/Sqrt(a + b*x^(n - q) + c*x^(2*(n - q))), x) <-- FreeQ([a, b, c, m, n, q], x) && EqQ(r, 2*n - q) && PosQ(n - q) && (EqQ(m, 1) && EqQ(n, 3) && EqQ(q, 2) || (EqQ(m + 1/2) || EqQ(m, 3/2) || EqQ(m, 1/2) || EqQ(m, 5/2)) && EqQ(n, 3) && EqQ(q, 1)))
Int(x_^m_'/(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^(3/2), x_Symbol) := (-2* x^((n - 1)/2)*(b + 2*c*x)/((b^2 - 4*a*c)* Sqrt(a*x^(n - 1) + b*x^n + c*x^(n + 1))) <-- FreeQ([a, b, c, n], x) && EqQ(m, 3*(n - 1)/2) && EqQ(q, n - 1) && EqQ(r, n + 1) && NeQ(b^2 - 4*a*c, 0))
Int(x_^m_'/(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^(3/2), x_Symbol) := (x^((n - 1)/2)*(4*a + 2*b*x)/((b^2 - 4*a*c)* Sqrt(a*x^(n - 1) + b*x^n + c*x^(n + 1))) <-- FreeQ([a, b, c, n], x) && EqQ(m, (3*n - 1)/2) && EqQ(q, n - 1) && EqQ(r, n + 1) && NeQ(b^2 - 4*a*c, 0))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x^(m - n)*(a*x^(n - 1) + b*x^n + c*x^(n + 1))^(p + 1)/(2*c*(p + 1)) - b/(2*c)*Int(x^(m - 1)*(a*x^(n - 1) + b*x^n + c*x^(n + 1))^p, x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && RationalQ(m, p, q) && EqQ(m + p*(n - 1) - 1, 0))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x^(m - n + q + 1)*(b + 2*c*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^ p/(2*c*(n - q)*(2*p + 1)) - p*(b^2 - 4*a*c)/(2*c*(2*p + 1))* Int(x^(m + q)*(a*x^q + b*x^n + c*x^(2*n - q))^(p - 1), x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && GtQ(p, 0) && RationalQ(m, q) && EqQ(m + p*q + 1, n - q))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x^(m - n + q + 1)*(b*(n - q)*p + c*(m + p*q + (n - q)*(2*p - 1) + 1)* x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^ p/(c*(m + p*(2*n - q) + 1)*(m + p*q + (n - q)*(2*p - 1) + 1)) + (n - q)* p/(c*(m + p*(2*n - q) + 1)*(m + p*q + (n - q)*(2*p - 1) + 1))* Int(x^(m - (n - 2*q))* Simp(-a*b*(m + p*q - n + q + 1) + (2*a*c*(m + p*q + (n - q)*(2*p - 1) + 1) - b^2*(m + p*q + (n - q)*(p - 1) + 1))*x^(n - q), x)* (a*x^q + b*x^n + c*x^(2*n - q))^(p - 1), x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && GtQ(p, 0) && RationalQ(m, q) && GtQ(m + p*q + 1, n - q) && NeQ(m + p*(2*n - q) + 1, 0) && NeQ(m + p*q + (n - q)*(2*p - 1) + 1, 0))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x^(m + 1)*(a*x^q + b*x^n + c*x^(2*n - q))^p/(m + p*q + 1) - (n - q)*p/(m + p*q + 1)* Int(x^(m + n)*(b + 2*c*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p - 1), x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && GtQ(p, 0) && RationalQ(m, q) && LeQ(m + p*q + 1, -(n - q) + 1) && NeQ(m + p*q + 1, 0))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x^(m + 1)*(a*x^q + b*x^n + c*x^(2*n - q))^p/(m + p*(2*n - q) + 1) + (n - q)*p/(m + p*(2*n - q) + 1)* Int(x^(m + q)*(2*a + b*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p - 1), x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && GtQ(p, 0) && RationalQ(m, q) && GtQ(m + p*q + 1, -(n - q)) && NeQ(m + p*(2*n - q) + 1, 0))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (-x^(m - q + 1)*(b^2 - 2*a*c + b*c*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1)/(a*(n - q)*(p + 1)*(b^2 - 4*a*c)) + (2*a*c - b^2*(p + 2))/(a*(p + 1)*(b^2 - 4*a*c))* Int(x^(m - q)*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1), x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && LtQ(p, -1) && RationalQ(m, p, q) && EqQ(m + p*q + 1, -(n - q)*(2*p + 3)))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (-x^(m - 2*n + q + 1)*(2*a + b*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1)/((n - q)*(p + 1)*(b^2 - 4*a*c)) + 1/((n - q)*(p + 1)*(b^2 - 4*a*c))* Int( x^(m - 2*n + q)*(2*a*(m + p*q - 2*(n - q) + 1) + b*(m + p*q + (n - q)*(2*p + 1) + 1)*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1), x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && LtQ(p, -1) && RationalQ(m, q) && GtQ(m + p*q + 1, 2*(n - q)))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (-x^(m - q + 1)*(b^2 - 2*a*c + b*c*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1)/(a*(n - q)*(p + 1)*(b^2 - 4*a*c)) + 1/(a*(n - q)*(p + 1)*(b^2 - 4*a*c))* Int(x^(m - q)* (b^2*(m + p*q + (n - q)*(p + 1) + 1) - 2*a*c*(m + p*q + 2*(n - q)*(p + 1) + 1) + b*c*(m + p*q + (n - q)*(2*p + 3) + 1)*x^(n - q))* (a*x^q + b*x^n + c*x^(2*n - q))^(p + 1), x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && LtQ(p, -1) && RationalQ(m, q) && LtQ(m + p*q + 1, n - q))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x^(m - n + 1)*(b + 2*c*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1)/((n - q)*(p + 1)*(b^2 - 4*a*c)) - 1/((n - q)*(p + 1)*(b^2 - 4*a*c))* Int( x^(m - n)*(b*(m + p*q - n + q + 1) + 2*c*(m + p*q + 2*(n - q)*(p + 1) + 1)*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1), x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && LtQ(p, -1) && RationalQ(m, q) && LtQ(n - q, m + p*q + 1, 2*(n - q)))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x^(m - 2*n + q + 1)*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1)/(2* c*(n - q)*(p + 1)) - b/(2*c)*Int(x^(m - n + q)*(a*x^q + b*x^n + c*x^(2*n - q))^p, x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && GeQ(p, -1) && LtQ(p, 0) && RationalQ(m, q) && EqQ(m + p*q + 1, 2*(n - q)))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (-x^(m - q + 1)*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1)/(2*a*(n - q)*(p + 1)) - b/(2*a)*Int(x^(m + n - q)*(a*x^q + b*x^n + c*x^(2*n - q))^p, x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && GeQ(p, -1) && LtQ(p, 0) && RationalQ(m, q) && EqQ(m + p*q + 1, -2*(n - q)*(p + 1)))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x^(m - 2*n + q + 1)*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1)/(c*(m + p*q + 2*(n - q)*p + 1)) - 1/(c*(m + p*q + 2*(n - q)*p + 1))* Int( x^(m - 2*(n - q))*(a*(m + p*q - 2*(n - q) + 1) + b*(m + p*q + (n - q)*(p - 1) + 1)*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^p, x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && GeQ(p, -1) && LtQ(p, 0) && RationalQ(m, q) && GtQ(m + p*q + 1, 2*(n - q)))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x^(m - q + 1)*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1)/(a*(m + p*q + 1)) - 1/(a*(m + p*q + 1))* Int( x^(m + n - q)*(b*(m + p*q + (n - q)*(p + 1) + 1) + c*(m + p*q + 2*(n - q)*(p + 1) + 1)*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^p, x) <-- FreeQ([a, b, c], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && GeQ(p, -1) && LtQ(p, 0) && RationalQ(m, q) && LtQ(m + p*q + 1, 0))
Int(x_^m_'*(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := ((a*x^q + b*x^n + c*x^(2*n - q))^ p/(x^(p*q)*(a + b*x^(n - q) + c*x^(2*(n - q)))^p)* Int(x^(m + p*q)*(a + b*x^(n - q) + c*x^(2*(n - q)))^p, x) <-- FreeQ([a, b, c, m, n, p, q], x) && EqQ(r, 2*n - q) && Not(IntegerQ(p)) && PosQ(n - q))
Int(u_^m_'*(a_'*u_^q_' + b_'*u_^n_' + c_'*u_^r_')^p_', x_Symbol) := (1/Coefficient(u, x, 1)* Subst(Int(x^m*(a*x^q + b*x^n + c*x^(2*n - q))^p, x), x, u) <-- FreeQ([a, b, c, m, n, p, q], x) && EqQ(r, 2*n - q) && LinearQ(u, x) && NeQ(u, x))
end
