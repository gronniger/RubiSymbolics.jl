int_rules_4_7_3 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.7.3 Secant normalization rules =#
Int(u_*(c_'*sin(a_' + b_'*x_))^m_'*(d_'*csc(a_' + b_'*x_))^n_', x_Symbol) := ((c*Sin(a + b*x))^m*(d*Csc(a + b*x))^m* Int(ActivateTrig(u)*(d*Csc(a + b*x))^(n - m), x) <-- FreeQ([a, b, c, d, m, n], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(c_'*cos(a_' + b_'*x_))^m_'*(d_'*sec(a_' + b_'*x_))^n_', x_Symbol) := ((c*Cos(a + b*x))^m*(d*Sec(a + b*x))^m* Int(ActivateTrig(u)*(d*Sec(a + b*x))^(n - m), x) <-- FreeQ([a, b, c, d, m, n], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(c_'*tan(a_' + b_'*x_))^m_'*(d_'*sec(a_' + b_'*x_))^n_', x_Symbol) := ((c*Tan(a + b*x))^ m*(d*Csc(a + b*x))^m/(d*Sec(a + b*x))^m* Int(ActivateTrig(u)*(d*Sec(a + b*x))^(m + n)/(d*Csc(a + b*x))^m, x) <-- FreeQ([a, b, c, d, m, n], x) && KnownSecantIntegrandQ(u, x) && Not(IntegerQ(m)))
Int(u_*(c_'*tan(a_' + b_'*x_))^m_'*(d_'*csc(a_' + b_'*x_))^n_', x_Symbol) := ((c*Tan(a + b*x))^ m*(d*Csc(a + b*x))^m/(d*Sec(a + b*x))^m* Int(ActivateTrig(u)*(d*Sec(a + b*x))^m/(d*Csc(a + b*x))^(m - n), x) <-- FreeQ([a, b, c, d, m, n], x) && KnownSecantIntegrandQ(u, x) && Not(IntegerQ(m)))
Int(u_*(c_'*cot(a_' + b_'*x_))^m_'*(d_'*sec(a_' + b_'*x_))^n_', x_Symbol) := ((c*Cot(a + b*x))^ m*(d*Sec(a + b*x))^m/(d*Csc(a + b*x))^m* Int(ActivateTrig(u)*(d*Csc(a + b*x))^m/(d*Sec(a + b*x))^(m - n), x) <-- FreeQ([a, b, c, d, m, n], x) && KnownSecantIntegrandQ(u, x) && Not(IntegerQ(m)))
Int(u_*(c_'*cot(a_' + b_'*x_))^m_'*(d_'*csc(a_' + b_'*x_))^n_', x_Symbol) := ((c*Cot(a + b*x))^ m*(d*Sec(a + b*x))^m/(d*Csc(a + b*x))^m* Int(ActivateTrig(u)*(d*Csc(a + b*x))^(m + n)/(d*Sec(a + b*x))^m, x) <-- FreeQ([a, b, c, d, m, n], x) && KnownSecantIntegrandQ(u, x) && Not(IntegerQ(m)))
Int(u_*(c_'*sin(a_' + b_'*x_))^m_', x_Symbol) := ((c*Csc(a + b*x))^m*(c*Sin(a + b*x))^m* Int(ActivateTrig(u)/(c*Csc(a + b*x))^m, x) <-- FreeQ([a, b, c, m], x) && Not(IntegerQ(m)) && KnownSecantIntegrandQ(u, x))
Int(u_*(c_'*cos(a_' + b_'*x_))^m_', x_Symbol) := ((c*Cos(a + b*x))^m*(c*Sec(a + b*x))^m* Int(ActivateTrig(u)/(c*Sec(a + b*x))^m, x) <-- FreeQ([a, b, c, m], x) && Not(IntegerQ(m)) && KnownSecantIntegrandQ(u, x))
Int(u_*(c_'*tan(a_' + b_'*x_))^m_', x_Symbol) := ((c*Tan(a + b*x))^ m*(c*Csc(a + b*x))^m/(c*Sec(a + b*x))^m* Int(ActivateTrig(u)*(c*Sec(a + b*x))^m/(c*Csc(a + b*x))^m, x) <-- FreeQ([a, b, c, m], x) && Not(IntegerQ(m)) && KnownSecantIntegrandQ(u, x))
Int(u_*(c_'*cot(a_' + b_'*x_))^m_', x_Symbol) := ((c*Cot(a + b*x))^ m*(c*Sec(a + b*x))^m/(c*Csc(a + b*x))^m* Int(ActivateTrig(u)*(c*Csc(a + b*x))^m/(c*Sec(a + b*x))^m, x) <-- FreeQ([a, b, c, m], x) && Not(IntegerQ(m)) && KnownSecantIntegrandQ(u, x))
Int(u_*(c_'*sec(a_' + b_'*x_))^n_'*(A_ + B_'*cos(a_' + b_'*x_)), x_Symbol) := (c*Int(ActivateTrig(u)*(c*Sec(a + b*x))^(n - 1)*(B + A*Sec(a + b*x)), x) <-- FreeQ([a, b, c, A, B, n], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(c_'*csc(a_' + b_'*x_))^n_'*(A_ + B_'*sin(a_' + b_'*x_)), x_Symbol) := (c*Int(ActivateTrig(u)*(c*Csc(a + b*x))^(n - 1)*(B + A*Csc(a + b*x)), x) <-- FreeQ([a, b, c, A, B, n], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(A_ + B_'*cos(a_' + b_'*x_)), x_Symbol) := (Int(ActivateTrig(u)*(B + A*Sec(a + b*x))/Sec(a + b*x), x) <-- FreeQ([a, b, A, B], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(A_ + B_'*sin(a_' + b_'*x_)), x_Symbol) := (Int(ActivateTrig(u)*(B + A*Csc(a + b*x))/Csc(a + b*x), x) <-- FreeQ([a, b, A, B], x) && KnownSecantIntegrandQ(u, x))
Int(u_'*(c_'*sec(a_' + b_'*x_))^ n_'*(A_' + B_'*cos(a_' + b_'*x_) + C_'*cos(a_' + b_'*x_)^2), x_Symbol) := (c^2*Int(ActivateTrig( u)*(c*Sec(a + b*x))^(n - 2)*(C + B*Sec(a + b*x) + A*Sec(a + b*x)^2), x) <-- FreeQ([a, b, c, A, B, C, n], x) && KnownSecantIntegrandQ(u, x))
Int(u_'*(c_'*csc(a_' + b_'*x_))^ n_'*(A_' + B_'*sin(a_' + b_'*x_) + C_'*sin(a_' + b_'*x_)^2), x_Symbol) := (c^2*Int(ActivateTrig( u)*(c*Csc(a + b*x))^(n - 2)*(C + B*Csc(a + b*x) + A*Csc(a + b*x)^2), x) <-- FreeQ([a, b, c, A, B, C, n], x) && KnownSecantIntegrandQ(u, x))
Int(u_'*(c_'*sec(a_' + b_'*x_))^n_'*(A_ + C_'*cos(a_' + b_'*x_)^2), x_Symbol) := (c^2*Int(ActivateTrig( u)*(c*Sec(a + b*x))^(n - 2)*(C + A*Sec(a + b*x)^2), x) <-- FreeQ([a, b, c, A, C, n], x) && KnownSecantIntegrandQ(u, x))
Int(u_'*(c_'*csc(a_' + b_'*x_))^n_'*(A_ + C_'*sin(a_' + b_'*x_)^2), x_Symbol) := (c^2*Int(ActivateTrig( u)*(c*Csc(a + b*x))^(n - 2)*(C + A*Csc(a + b*x)^2), x) <-- FreeQ([a, b, c, A, C, n], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(A_' + B_'*cos(a_' + b_'*x_) + C_'*cos(a_' + b_'*x_)^2), x_Symbol) := (Int(ActivateTrig(u)*(C + B*Sec(a + b*x) + A*Sec(a + b*x)^2)/ Sec(a + b*x)^2, x) <-- FreeQ([a, b, A, B, C], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(A_' + B_'*sin(a_' + b_'*x_) + C_'*sin(a_' + b_'*x_)^2), x_Symbol) := (Int(ActivateTrig(u)*(C + B*Csc(a + b*x) + A*Csc(a + b*x)^2)/ Csc(a + b*x)^2, x) <-- FreeQ([a, b, A, B, C], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(A_ + C_'*cos(a_' + b_'*x_)^2), x_Symbol) := (Int(ActivateTrig(u)*(C + A*Sec(a + b*x)^2)/Sec(a + b*x)^2, x) <-- FreeQ([a, b, A, C], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(A_ + C_'*sin(a_' + b_'*x_)^2), x_Symbol) := (Int(ActivateTrig(u)*(C + A*Csc(a + b*x)^2)/Csc(a + b*x)^2, x) <-- FreeQ([a, b, A, C], x) && KnownSecantIntegrandQ(u, x))
Int(u_*(A_'*sec(a_' + b_'*x_)^n_' + B_'*sec(a_' + b_'*x_)^n1_ + C_'*sec(a_' + b_'*x_)^n2_), x_Symbol) := (Int(ActivateTrig(u)* Sec(a + b*x)^n*(A + B*Sec(a + b*x) + C*Sec(a + b*x)^2), x) <-- FreeQ([a, b, A, B, C, n], x) && EqQ(n1, n + 1) && EqQ(n2, n + 2))
Int(u_*(A_'*csc(a_' + b_'*x_)^n_' + B_'*csc(a_' + b_'*x_)^n1_ + C_'*csc(a_' + b_'*x_)^n2_), x_Symbol) := (Int(ActivateTrig(u)* Csc(a + b*x)^n*(A + B*Csc(a + b*x) + C*Csc(a + b*x)^2), x) <-- FreeQ([a, b, A, B, C, n], x) && EqQ(n1, n + 1) && EqQ(n2, n + 2))
end
