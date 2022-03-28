int_rules_4_5_4_2 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.5.4.2 (a+b sec)^m (d sec)^n (A+B sec+C sec^2) =#
Int((a_' + b_'*csc(e_' + f_'*x_))^m_'*(c_' + d_'*csc(e_' + f_'*x_))^ n_'*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (1/b^2*Int((a + b*Csc(e + f*x))^(m + 1)*(c + d*Csc(e + f*x))^ n*(b*B - a*C + b*C*Csc(e + f*x)), x) <-- FreeQ([a, b, c, d, e, f, A, B, C, m, n], x) && EqQ(A*b^2 - a*b*B + a^2*C, 0))
Int((a_' + b_'*csc(e_' + f_'*x_))^m_'*(c_' + d_'*csc(e_' + f_'*x_))^ n_'*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C/b^2* Int((a + b*Csc(e + f*x))^(m + 1)*(c + d*Csc(e + f*x))^ n*(a - b*Csc(e + f*x)), x) <-- FreeQ([a, b, c, d, e, f, A, C, m, n], x) && EqQ(A*b^2 + a^2*C, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (A*a*Cot(e + f*x)*(d*Csc(e + f*x))^n/(f*n) + 1/(d*n)* Int((d*Csc(e + f*x))^(n + 1)* Simp(n*(B*a + A*b) + (n*(a*C + B*b) + A*a*(n + 1))* Csc(e + f*x) + b*C*n*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, C], x) && LtQ(n, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (A*a*Cot(e + f*x)*(d*Csc(e + f*x))^n/(f*n) + 1/(d*n)* Int((d*Csc(e + f*x))^(n + 1)* Simp(A*b*n + a*(C*n + A*(n + 1))*Csc(e + f*x) + b*C*n*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, C], x) && LtQ(n, -1))
Int((d_'*csc(e_' + f_'*x_))^ n_'*(a_ + b_'*csc(e_' + f_'*x_))*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-b*C*Csc(e + f*x)* Cot(e + f*x)*(d*Csc(e + f*x))^n/(f*(n + 2)) + 1/(n + 2)* Int((d*Csc(e + f*x))^n* Simp(A*a*(n + 2) + (B*a*(n + 2) + b*(C*(n + 1) + A*(n + 2)))* Csc(e + f*x) + (a*C + B*b)*(n + 2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, C, n], x) && Not(LtQ(n, -1)))
Int((d_'*csc(e_' + f_'*x_))^ n_'*(a_ + b_'*csc(e_' + f_'*x_))*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-b*C*Csc(e + f*x)* Cot(e + f*x)*(d*Csc(e + f*x))^n/(f*(n + 2)) + 1/(n + 2)* Int((d*Csc(e + f*x))^n* Simp(A*a*(n + 2) + b*(C*(n + 1) + A*(n + 2))*Csc(e + f*x) + a*C*(n + 2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, C, n], x) && Not(LtQ(n, -1)))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-(a*A - b*B + a*C)*Cot(e + f*x)* Csc(e + f*x)*(a + b*Csc(e + f*x))^m/(a*f*(2*m + 1)) - 1/(a*b*(2*m + 1))*Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp(a*B - b*C - 2*A*b*(m + 1) - (b*B*(m + 2) - a*(A*(m + 2) - C*(m - 1)))* Csc(e + f*x), x), x) <-- FreeQ([a, b, e, f, A, B, C], x) && LtQ(m, -1) && EqQ(a^2 - b^2, 0))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-(A + C)*Cot(e + f*x)* Csc(e + f*x)*(a + b*Csc(e + f*x))^m/(f*(2*m + 1)) - 1/(a*b*(2*m + 1))*Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp(-b*C - 2*A*b*(m + 1) + a*(A*(m + 2) - C*(m - 1))*Csc(e + f*x), x), x) <-- FreeQ([a, b, e, f, A, C], x) && LtQ(m, -1) && EqQ(a^2 - b^2, 0))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-(A*b^2 - a*b*B + a^2*C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b* f*(m + 1)*(a^2 - b^2)) + 1/(b*(m + 1)*(a^2 - b^2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp(b*(a*A - b*B + a*C)*(m + 1) - (A*b^2 - a*b*B + a^2*C + b*(A*b - a*B + b*C)*(m + 1))*Csc(e + f*x), x), x) <-- FreeQ([a, b, e, f, A, B, C], x) && LtQ(m, -1) && NeQ(a^2 - b^2, 0))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-(A*b^2 + a^2*C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b* f*(m + 1)*(a^2 - b^2)) + 1/(b*(m + 1)*(a^2 - b^2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp(a*b*(A + C)*(m + 1) - (A*b^2 + a^2*C + b*(A*b + b*C)*(m + 1))*Csc(e + f*x), x), x) <-- FreeQ([a, b, e, f, A, C], x) && LtQ(m, -1) && NeQ(a^2 - b^2, 0))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b*f*(m + 2)) + 1/(b*(m + 2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^m* Simp(b*A*(m + 2) + b*C*(m + 1) + (b*B*(m + 2) - a*C)*Csc(e + f*x), x), x) <-- FreeQ([a, b, e, f, A, B, C, m], x) && Not(LtQ(m, -1)))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b*f*(m + 2)) + 1/(b*(m + 2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^m* Simp(b*A*(m + 2) + b*C*(m + 1) - a*C*Csc(e + f*x), x), x) <-- FreeQ([a, b, e, f, A, C, m], x) && Not(LtQ(m, -1)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-(a*A - b*B + a*C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^n/(a*f*(2*m + 1)) - 1/(a*b*(2*m + 1))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^n* Simp(a*B*n - b*C*n - A*b*(2*m + n + 1) - (b*B*(m + n + 1) - a*(A*(m + n + 1) - C*(m - n)))*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B, C, n], x) && EqQ(a^2 - b^2, 0) && LtQ(m, -1/2))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-a*(A + C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^n/(a*f*(2*m + 1)) + 1/(a*b*(2*m + 1))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^n* Simp(b*C*n + A*b*(2*m + n + 1) - (a*(A*(m + n + 1) - C*(m - n)))* Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, C, n], x) && EqQ(a^2 - b^2, 0) && LtQ(m, -1/2))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n/(f*n) - 1/(b*d*n)* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n + 1)* Simp(a*A*m - b*B*n - b*(A*(m + n + 1) + C*n)*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B, C, m], x) && EqQ(a^2 - b^2, 0) && Not(LtQ(m, -1/2)) && (LtQ(n, -1/2) || EqQ(m + n + 1, 0)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n/(f*n) - 1/(b*d*n)* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n + 1)* Simp(a*A*m - b*(A*(m + n + 1) + C*n)*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, C, m], x) && EqQ(a^2 - b^2, 0) && Not(LtQ(m, -1/2)) && (LtQ(n, -1/2) || EqQ(m + n + 1, 0)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^n/(f*(m + n + 1)) + 1/(b*(m + n + 1))* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n* Simp(A*b*(m + n + 1) + b*C*n + (a*C*m + b*B*(m + n + 1))*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B, C, m, n], x) && EqQ(a^2 - b^2, 0) && Not(LtQ(m, -1/2)) && Not(LtQ(n, -1/2)) && NeQ(m + n + 1, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^n/(f*(m + n + 1)) + 1/(b*(m + n + 1))* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n* Simp(A*b*(m + n + 1) + b*C*n + a*C*m*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, C, m, n], x) && EqQ(a^2 - b^2, 0) && Not(LtQ(m, -1/2)) && Not(LtQ(n, -1/2)) && NeQ(m + n + 1, 0))
Int(csc(e_' + f_'*x_)^2*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (a*(A*b^2 - a*b*B + a^2*C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b^2* f*(m + 1)*(a^2 - b^2)) - 1/(b^2*(m + 1)*(a^2 - b^2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp(b*(m + 1)*(-a*(b*B - a*C) + A*b^2) + (b*B*(a^2 + b^2*(m + 1)) - a*(A*b^2*(m + 2) + C*(a^2 + b^2*(m + 1))))*Csc(e + f*x) - b*C*(m + 1)*(a^2 - b^2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, e, f, A, B, C], x) && NeQ(a^2 - b^2, 0) && LtQ(m, -1))
Int(csc(e_' + f_'*x_)^2*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (a*(A*b^2 + a^2*C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b^2* f*(m + 1)*(a^2 - b^2)) - 1/(b^2*(m + 1)*(a^2 - b^2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp(b*(m + 1)*(a^2*C + A*b^2) - a*(A*b^2*(m + 2) + C*(a^2 + b^2*(m + 1)))*Csc(e + f*x) - b*C*(m + 1)*(a^2 - b^2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, e, f, A, C], x) && NeQ(a^2 - b^2, 0) && LtQ(m, -1))
Int(csc(e_' + f_'*x_)^2*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C*Csc(e + f*x)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b*f*(m + 3)) + 1/(b*(m + 3))*Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^m* Simp(a*C + b*(C*(m + 2) + A*(m + 3))* Csc(e + f*x) - (2*a*C - b*B*(m + 3))*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, e, f, A, B, C, m], x) && NeQ(a^2 - b^2, 0) && Not(LtQ(m, -1)))
Int(csc(e_' + f_'*x_)^2*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C*Csc(e + f*x)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b*f*(m + 3)) + 1/(b*(m + 3))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^m* Simp(a*C + b*(C*(m + 2) + A*(m + 3))*Csc(e + f*x) - 2*a*C*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, e, f, A, C, m], x) && NeQ(a^2 - b^2, 0) && Not(LtQ(m, -1)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n/(f*n) - 1/(d*n)*Int((a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^(n + 1)* Simp(A*b*m - a*B*n - (b*B*n + a*(C*n + A*(n + 1)))*Csc(e + f*x) - b*(C*n + A*(m + n + 1))*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, C], x) && NeQ(a^2 - b^2, 0) && GtQ(m, 0) && LeQ(n, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n/(f*n) - 1/(d*n)*Int((a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^(n + 1)* Simp(A*b*m - a*(C*n + A*(n + 1))*Csc(e + f*x) - b*(C*n + A*(m + n + 1))*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, C], x) && NeQ(a^2 - b^2, 0) && GtQ(m, 0) && LeQ(n, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^n/(f*(m + n + 1)) + 1/(m + n + 1)*Int((a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^n* Simp(a*A*(m + n + 1) + a*C*n + ((A*b + a*B)*(m + n + 1) + b*C*(m + n))* Csc(e + f*x) + (b*B*(m + n + 1) + a*C*m)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, C, n], x) && NeQ(a^2 - b^2, 0) && GtQ(m, 0) && Not(LeQ(n, -1)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^n/(f*(m + n + 1)) + 1/(m + n + 1)*Int((a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^n* Simp(a*A*(m + n + 1) + a*C*n + b*(A*(m + n + 1) + C*(m + n))*Csc(e + f*x) + a*C*m*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, C, n], x) && NeQ(a^2 - b^2, 0) && GtQ(m, 0) && Not(LeQ(n, -1)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-d*(A*b^2 - a*b*B + a^2*C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 1)/(b*f*(a^2 - b^2)*(m + 1)) + d/(b*(a^2 - b^2)*(m + 1))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 1)* Simp(A*b^2*(n - 1) - a*(b*B - a*C)*(n - 1) + b*(a*A - b*B + a*C)*(m + 1)*Csc(e + f*x) - (b*(A*b - a*B)*(m + n + 1) + C*(a^2*n + b^2*(m + 1)))* Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, C], x) && NeQ(a^2 - b^2, 0) && LtQ(m, -1) && GtQ(n, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-d*(A*b^2 + a^2*C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 1)/(b*f*(a^2 - b^2)*(m + 1)) + d/(b*(a^2 - b^2)*(m + 1))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 1)* Simp(A*b^2*(n - 1) + a^2*C*(n - 1) + a*b*(A + C)*(m + 1)* Csc(e + f*x) - (A*b^2*(m + n + 1) + C*(a^2*n + b^2*(m + 1)))* Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, C], x) && NeQ(a^2 - b^2, 0) && LtQ(m, -1) && GtQ(n, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := ((A*b^2 - a*b*B + a^2*C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^ n/(a*f*(m + 1)*(a^2 - b^2)) + 1/(a*(m + 1)*(a^2 - b^2))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^n* Simp(a*(a*A - b*B + a*C)*(m + 1) - (A*b^2 - a*b*B + a^2*C)*(m + n + 1) - a*(A*b - a*B + b*C)*(m + 1)*Csc(e + f*x) + (A*b^2 - a*b*B + a^2*C)*(m + n + 2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, C, n], x) && NeQ(a^2 - b^2, 0) && LtQ(m, -1) && Not(ILtQ(m + 1/2, 0) && ILtQ(n, 0)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := ((A*b^2 + a^2*C)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^ n/(a*f*(m + 1)*(a^2 - b^2)) + 1/(a*(m + 1)*(a^2 - b^2))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^n* Simp(a^2*(A + C)*(m + 1) - (A*b^2 + a^2*C)*(m + n + 1) - a*b*(A + C)*(m + 1)* Csc(e + f*x) + (A*b^2 + a^2*C)*(m + n + 2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, C, n], x) && NeQ(a^2 - b^2, 0) && LtQ(m, -1) && Not(ILtQ(m + 1/2, 0) && ILtQ(n, 0)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C*d* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 1)/(b*f*(m + n + 1)) + d/(b*(m + n + 1))* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n - 1)* Simp(a*C*(n - 1) + (A*b*(m + n + 1) + b*C*(m + n))* Csc(e + f*x) + (b*B*(m + n + 1) - a*C*n)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, C, m], x) && NeQ(a^2 - b^2, 0) && GtQ(n, 0)) #= && Not[IGtQ[m,0] && Not[IntegerQ[ n]]] =#
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (-C*d* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 1)/(b*f*(m + n + 1)) + d/(b*(m + n + 1))* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n - 1)* Simp(a*C*(n - 1) + (A*b*(m + n + 1) + b*C*(m + n))* Csc(e + f*x) - a*C*n*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, C, m], x) && NeQ(a^2 - b^2, 0) && GtQ(n, 0)) #= && Not[IGtQ[m,0] && Not[IntegerQ[n]]] =#
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^ n/(a*f*n) + 1/(a*d*n)*Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n + 1)* Simp(a*B*n - A*b*(m + n + 1) + a*(A + A*n + C*n)*Csc(e + f*x) + A*b*(m + n + 2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, C, m], x) && NeQ(a^2 - b^2, 0) && LeQ(n, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^ n/(a*f*n) + 1/(a*d*n)*Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n + 1)* Simp(-A*b*(m + n + 1) + a*(A + A*n + C*n)*Csc(e + f*x) + A*b*(m + n + 2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, C, m], x) && NeQ(a^2 - b^2, 0) && LeQ(n, -1))
Int((A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2)/(Sqrt( d_'*csc(e_' + f_'*x_))*(a_ + b_'*csc(e_' + f_'*x_))), x_Symbol) := ((A*b^2 - a*b*B + a^2*C)/(a^2*d^2)* Int((d*Csc(e + f*x))^(3/2)/(a + b*Csc(e + f*x)), x) + 1/a^2* Int((a*A - (A*b - a*B)*Csc(e + f*x))/Sqrt(d*Csc(e + f*x)), x) <-- FreeQ([a, b, d, e, f, A, B, C], x) && NeQ(a^2 - b^2, 0))
Int((A_' + C_'*csc(e_' + f_'*x_)^2)/(Sqrt( d_'*csc(e_' + f_'*x_))*(a_ + b_'*csc(e_' + f_'*x_))), x_Symbol) := ((A*b^2 + a^2*C)/(a^2*d^2)* Int((d*Csc(e + f*x))^(3/2)/(a + b*Csc(e + f*x)), x) + 1/a^2*Int((a*A - A*b*Csc(e + f*x))/Sqrt(d*Csc(e + f*x)), x) <-- FreeQ([a, b, d, e, f, A, C], x) && NeQ(a^2 - b^2, 0))
Int((A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2)/(Sqrt(d_'*csc(e_' + f_'*x_))* Sqrt(a_ + b_'*csc(e_' + f_'*x_))), x_Symbol) := (C/d^2*Int((d*Csc(e + f*x))^(3/2)/Sqrt(a + b*Csc(e + f*x)), x) + Int((A + B*Csc(e + f*x))/(Sqrt(d*Csc(e + f*x))* Sqrt(a + b*Csc(e + f*x))), x) <-- FreeQ([a, b, d, e, f, A, B, C], x) && NeQ(a^2 - b^2, 0))
Int((A_' + C_'*csc(e_' + f_'*x_)^2)/(Sqrt(d_'*csc(e_' + f_'*x_))* Sqrt(a_ + b_'*csc(e_' + f_'*x_))), x_Symbol) := (C/d^2*Int((d*Csc(e + f*x))^(3/2)/Sqrt(a + b*Csc(e + f*x)), x) + A*Int(1/(Sqrt(d*Csc(e + f*x))*Sqrt(a + b*Csc(e + f*x))), x) <-- FreeQ([a, b, d, e, f, A, C], x) && NeQ(a^2 - b^2, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_'*(d_'*csc(e_' + f_'*x_))^ n_'*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (Unintegrable((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^ n*(A + B*Csc(e + f*x) + C*Csc(e + f*x)^2), x) <-- FreeQ([a, b, d, e, f, A, B, C, m, n], x))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_'*(d_'*csc(e_' + f_'*x_))^ n_'*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (Unintegrable((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^ n*(A + C*Csc(e + f*x)^2), x) <-- FreeQ([a, b, d, e, f, A, C, m, n], x))
Int((a_ + b_'*sec(e_' + f_'*x_))^m_'*(d_'*cos(e_' + f_'*x_))^ n_*(A_' + B_'*sec(e_' + f_'*x_) + C_'*sec(e_' + f_'*x_)^2), x_Symbol) := (d^(m + 2)* Int((b + a*Cos(e + f*x))^ m*(d*Cos(e + f*x))^(n - m - 2)*(C + B*Cos(e + f*x) + A*Cos(e + f*x)^2), x) <-- FreeQ([a, b, d, e, f, A, B, C, n], x) && Not(IntegerQ(n)) && IntegerQ(m))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_'*(d_'*sin(e_' + f_'*x_))^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (d^(m + 2)* Int((b + a*Sin(e + f*x))^ m*(d*Sin(e + f*x))^(n - m - 2)*(C + B*Sin(e + f*x) + A*Sin(e + f*x)^2), x) <-- FreeQ([a, b, d, e, f, A, B, C, n], x) && Not(IntegerQ(n)) && IntegerQ(m))
Int((a_ + b_'*sec(e_' + f_'*x_))^m_'*(d_'*cos(e_' + f_'*x_))^ n_*(A_' + C_'*sec(e_' + f_'*x_)^2), x_Symbol) := (d^(m + 2)* Int((b + a*Cos(e + f*x))^ m*(d*Cos(e + f*x))^(n - m - 2)*(C + A*Cos(e + f*x)^2), x) <-- FreeQ([a, b, d, e, f, A, C, n], x) && Not(IntegerQ(n)) && IntegerQ(m))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_'*(d_'*sin(e_' + f_'*x_))^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (d^(m + 2)* Int((b + a*Sin(e + f*x))^ m*(d*Sin(e + f*x))^(n - m - 2)*(C + A*Sin(e + f*x)^2), x) <-- FreeQ([a, b, d, e, f, A, C, n], x) && Not(IntegerQ(n)) && IntegerQ(m))
Int((a_ + b_'*sec(e_' + f_'*x_))^m_'*(c_'*(d_'*sec(e_' + f_'*x_))^p_)^ n_*(A_' + B_'*sec(e_' + f_'*x_) + C_'*sec(e_' + f_'*x_)^2), x_Symbol) := (c^IntPart(n)*(c*(d*Sec(e + f*x))^p)^ FracPart(n)/(d*Sec(e + f*x))^(p*FracPart(n))* Int((a + b*Sec(e + f*x))^ m*(d*Sec(e + f*x))^(n*p)*(A + B*Sec(e + f*x) + C*Sec(e + f*x)^2), x) <-- FreeQ([a, b, c, d, e, f, A, B, C, m, n, p], x) && Not(IntegerQ(n)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_'*(c_'*(d_'*csc(e_' + f_'*x_))^p_)^ n_*(A_' + B_'*csc(e_' + f_'*x_) + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (c^IntPart(n)*(c*(d*Csc(e + f*x))^p)^ FracPart(n)/(d*Csc(e + f*x))^(p*FracPart(n))* Int((a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^(n*p)*(A + B*Csc(e + f*x) + C*Csc(e + f*x)^2), x) <-- FreeQ([a, b, c, d, e, f, A, B, C, m, n, p], x) && Not(IntegerQ(n)))
Int((a_ + b_'*sec(e_' + f_'*x_))^m_'*(c_'*(d_'*sec(e_' + f_'*x_))^p_)^ n_*(A_' + C_'*sec(e_' + f_'*x_)^2), x_Symbol) := (c^IntPart(n)*(c*(d*Sec(e + f*x))^p)^ FracPart(n)/(d*Sec(e + f*x))^(p*FracPart(n))* Int((a + b*Sec(e + f*x))^ m*(d*Sec(e + f*x))^(n*p)*(A + C*Sec(e + f*x)^2), x) <-- FreeQ([a, b, c, d, e, f, A, C, m, n, p], x) && Not(IntegerQ(n)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_'*(c_'*(d_'*csc(e_' + f_'*x_))^p_)^ n_*(A_' + C_'*csc(e_' + f_'*x_)^2), x_Symbol) := (c^IntPart(n)*(c*(d*Csc(e + f*x))^p)^ FracPart(n)/(d*Csc(e + f*x))^(p*FracPart(n))* Int((a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^(n*p)*(A + C*Csc(e + f*x)^2), x) <-- FreeQ([a, b, c, d, e, f, A, C, m, n, p], x) && Not(IntegerQ(n)))
end