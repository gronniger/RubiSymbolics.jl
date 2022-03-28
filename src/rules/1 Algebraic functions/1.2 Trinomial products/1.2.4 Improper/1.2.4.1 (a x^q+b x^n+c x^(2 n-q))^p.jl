int_rules_1_2_4_1 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.2.4.1 (a x^q+b x^n+c x^(2 n-q))^p =#
Int((a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (Int(((a + b + c)*x^n)^p, x) <-- FreeQ([a, b, c, n, p], x) && EqQ(n, q) && EqQ(r, n))
Int((a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (Int(x^(p*q)*(a + b*x^(n - q) + c*x^(2*(n - q)))^p, x) <-- FreeQ([a, b, c, n, q], x) && EqQ(r, 2*n - q) && PosQ(n - q) && IntegerQ(p))
Int(Sqrt(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_'), x_Symbol) := (Sqrt(a*x^q + b*x^n + c*x^(2*n - q))/(x^(q/2)* Sqrt(a + b*x^(n - q) + c*x^(2*(n - q))))* Int(x^(q/2)*Sqrt(a + b*x^(n - q) + c*x^(2*(n - q))), x) <-- FreeQ([a, b, c, n, q], x) && EqQ(r, 2*n - q) && PosQ(n - q))
Int(1/Sqrt(a_'*x_^2 + b_'*x_^n_' + c_'*x_^r_'), x_Symbol) := (-2/(n - 2)* Subst(Int(1/(4*a - x^2), x), x, x*(2*a + b*x^(n - 2))/Sqrt(a*x^2 + b*x^n + c*x^r)) <-- FreeQ([a, b, c, n, r], x) && EqQ(r, 2*n - 2) && PosQ(n - 2) && NeQ(b^2 - 4*a*c, 0))
Int(1/Sqrt(a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_'), x_Symbol) := (x^(q/2)*Sqrt(a + b*x^(n - q) + c*x^(2*(n - q)))/ Sqrt(a*x^q + b*x^n + c*x^(2*n - q))* Int(1/(x^(q/2)*Sqrt(a + b*x^(n - q) + c*x^(2*(n - q)))), x) <-- FreeQ([a, b, c, n, q], x) && EqQ(r, 2*n - q) && PosQ(n - q))
Int((a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (x*(a*x^q + b*x^n + c*x^(2*n - q))^p/(p*(2*n - q) + 1) + (n - q)*p/(p*(2*n - q) + 1)* Int( x^q*(2*a + b*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p - 1), x) <-- FreeQ([a, b, c, n, q], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && GtQ(p, 0) && NeQ(p*(2*n - q) + 1, 0))
Int((a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (-x^(-q + 1)*(b^2 - 2*a*c + b*c*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1)/(a*(n - q)*(p + 1)*(b^2 - 4*a*c)) + 1/(a*(n - q)*(p + 1)*(b^2 - 4*a*c))* Int( x^(-q)*((p*q + 1)*(b^2 - 2*a*c) + (n - q)*(p + 1)*(b^2 - 4*a*c) + b*c*(p*q + (n - q)*(2*p + 3) + 1)*x^(n - q))*(a*x^q + b*x^n + c*x^(2*n - q))^(p + 1), x) <-- FreeQ([a, b, c, n, q], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)) && NeQ(b^2 - 4*a*c, 0) && LtQ(p, -1))
Int((a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := ((a*x^q + b*x^n + c*x^(2*n - q))^ p/(x^(p*q)*(a + b*x^(n - q) + c*x^(2*(n - q)))^p)* Int(x^(p*q)*(a + b*x^(n - q) + c*x^(2*(n - q)))^p, x) <-- FreeQ([a, b, c, n, p, q], x) && EqQ(r, 2*n - q) && PosQ(n - q) && Not(IntegerQ(p)))
Int((a_'*x_^q_' + b_'*x_^n_' + c_'*x_^r_')^p_, x_Symbol) := (Unintegrable((a*x^q + b*x^n + c*x^(2*n - q))^p, x) <-- FreeQ([a, b, c, n, p, q], x) && EqQ(r, 2*n - q))
Int((a_'*u_^q_' + b_'*u_^n_' + c_'*u_^r_')^p_, x_Symbol) := (1/Coefficient(u, x, 1)* Subst(Int((a*x^q + b*x^n + c*x^(2*n - q))^p, x), x, u) <-- FreeQ([a, b, c, n, p, q], x) && EqQ(r, 2*n - q) && LinearQ(u, x) && NeQ(u, x))
end
