int_rules_4_5_3_1 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.5.3.1 (a+b sec)^m (d sec)^n (A+B sec) =#
Int((a_ + b_'*csc(e_' + f_'*x_))*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (A*a*Cot(e + f*x)*(d*Csc(e + f*x))^n/(f*n) + 1/(d*n)* Int((d*Csc(e + f*x))^(n + 1)* Simp(n*(B*a + A*b) + (B*b*n + A*a*(n + 1))*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && LeQ(n, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))*(d_'*csc(e_' + f_'*x_))^ n_'*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-b*B*Cot(e + f*x)*(d*Csc(e + f*x))^n/(f*(n + 1)) + 1/(n + 1)* Int((d*Csc(e + f*x))^n* Simp(A*a*(n + 1) + B*b*n + (A*b + B*a)*(n + 1)*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && Not(LeQ(n, -1)))
Int(csc(e_' + f_'*x_)*(A_ + B_'*csc(e_' + f_'*x_))/(a_ + b_'*csc(e_' + f_'*x_)), x_Symbol) := (B/b*Int(Csc(e + f*x), x) + (A*b - a*B)/b* Int(Csc(e + f*x)/(a + b*Csc(e + f*x)), x) <-- FreeQ([a, b, e, f, A, B], x) && NeQ(A*b - a*B, 0))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-B*Cot(e + f*x)*(a + b*Csc(e + f*x))^m/(f*(m + 1)) <-- FreeQ([a, b, A, B, e, f, m], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && EqQ(a*B*m + A*b*(m + 1), 0))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := ((A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^m/(a*f*(2*m + 1)) + (a*B*m + A*b*(m + 1))/(a*b*(2*m + 1))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1), x) <-- FreeQ([a, b, A, B, e, f], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && NeQ(a*B*m + A*b*(m + 1), 0) && LtQ(m, -1/2))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-B*Cot(e + f*x)*(a + b*Csc(e + f*x))^m/(f*(m + 1)) + (a*B*m + A*b*(m + 1))/(b*(m + 1))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^m, x) <-- FreeQ([a, b, A, B, e, f, m], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && NeQ(a*B*m + A*b*(m + 1), 0) && Not(LtQ(m, -1/2)))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-B*Cot(e + f*x)*(a + b*Csc(e + f*x))^m/(f*(m + 1)) + 1/(m + 1)* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m - 1)* Simp(b*B*m + a*A*(m + 1) + (a*B*m + A*b*(m + 1))*Csc(e + f*x), x), x) <-- FreeQ([a, b, A, B, e, f], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && GtQ(m, 0))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-(A*b - a*B)* Cot(e + f* x)*(a + b*Csc(e + f*x))^(m + 1)/(f*(m + 1)*(a^2 - b^2)) + 1/((m + 1)*(a^2 - b^2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp((a*A - b*B)*(m + 1) - (A*b - a*B)*(m + 2)*Csc(e + f*x), x), x) <-- FreeQ([a, b, A, B, e, f], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LtQ(m, -1))
Int(csc(e_' + f_'*x_)*(A_ + B_'*csc(e_' + f_'*x_))/ Sqrt(a_ + b_'*csc(e_' + f_'*x_)), x_Symbol) := (-2*(A*b - a*B)*Rt(a + b*B/A, 2)* Sqrt(b*(1 - Csc(e + f*x))/(a + b))* Sqrt(-b*(1 + Csc(e + f*x))/(a - b))/(b^2*f*Cot(e + f*x))* EllipticE( ArcSin(Sqrt(a + b*Csc(e + f*x))/ Rt(a + b*B/A, 2)), (a*A + b*B)/(a*A - b*B)) <-- FreeQ([a, b, e, f, A, B], x) && NeQ(a^2 - b^2, 0) && EqQ(A^2 - B^2, 0))
Int(csc(e_' + f_'*x_)*(A_ + B_'*csc(e_' + f_'*x_))/ Sqrt(a_ + b_'*csc(e_' + f_'*x_)), x_Symbol) := ((A - B)* Int(Csc(e + f*x)/Sqrt(a + b*Csc(e + f*x)), x) + B*Int(Csc(e + f*x)*(1 + Csc(e + f*x))/Sqrt(a + b*Csc(e + f*x)), x) <-- FreeQ([a, b, e, f, A, B], x) && NeQ(a^2 - b^2, 0) && NeQ(A^2 - B^2, 0))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (2*Sqrt(2)*A*(a + b*Csc(e + f*x))^m*(A - B*Csc(e + f*x))* Sqrt((A + B*Csc(e + f*x))/A)/(B*f* Cot(e + f*x)*(A*(a + b*Csc(e + f*x))/(a*A + b*B))^m)* AppellF1(1/2, -(1/2), -m, 3/2, (A - B*Csc(e + f*x))/(2*A), (b*(A - B*Csc(e + f*x)))/(A*b + a*B)) <-- FreeQ([a, b, A, B, e, f], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && EqQ(A^2 - B^2, 0) && Not(IntegerQ(2*m)))
Int(csc(e_' + f_'*x_)*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := ((A*b - a*B)/b* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^m, x) + B/b*Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1), x) <-- FreeQ([a, b, A, B, e, f, m], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0))
Int(csc(e_' + f_'*x_)^2*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-(A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^m/(b*f*(2*m + 1)) + 1/(b^2*(2*m + 1))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp(A*b*m - a*B*m + b*B*(2*m + 1)*Csc(e + f*x), x), x) <-- FreeQ([a, b, e, f, A, B], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && LtQ(m, -1/2))
Int(csc(e_' + f_'*x_)^2*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (a*(A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b* f*(m + 1)*(a^2 - b^2)) - 1/(b*(m + 1)*(a^2 - b^2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp(b*(A*b - a*B)*(m + 1) - (a*A*b*(m + 2) - B*(a^2 + b^2*(m + 1)))*Csc(e + f*x), x), x) <-- FreeQ([a, b, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LtQ(m, -1))
Int(csc(e_' + f_'*x_)^2*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-B* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b*f*(m + 2)) + 1/(b*(m + 2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^m* Simp(b*B*(m + 1) + (A*b*(m + 2) - a*B)*Csc(e + f*x), x), x) <-- FreeQ([a, b, e, f, A, B, m], x) && NeQ(A*b - a*B, 0) && Not(LtQ(m, -1)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n/(f*n) <-- FreeQ([a, b, d, e, f, A, B, m, n], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && EqQ(m + n + 1, 0) && EqQ(a*A*m - b*B*n, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-(A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^n/(b*f*(2*m + 1)) + (a*A*m + b*B*(m + 1))/(a^2*(2*m + 1))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^n, x) <-- FreeQ([a, b, d, e, f, A, B, n], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && EqQ(m + n + 1, 0) && LeQ(m, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n/(f*n) - (a*A*m - b*B*n)/(b*d*n)* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n + 1), x) <-- FreeQ([a, b, d, e, f, A, B, m, n], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && EqQ(m + n + 1, 0) && Not(LeQ(m, -1)))
Int(Sqrt(a_ + b_'*csc(e_' + f_'*x_))*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-2*b*B* Cot(e + f*x)*(d*Csc(e + f*x))^ n/(f*(2*n + 1)*Sqrt(a + b*Csc(e + f*x))) <-- FreeQ([a, b, d, e, f, A, B, n], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && EqQ(A*b*(2*n + 1) + 2*a*B*n, 0))
Int(Sqrt(a_ + b_'*csc(e_' + f_'*x_))*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (A*b^2*Cot( e + f*x)*(d*Csc(e + f*x))^n/(a*f*n*Sqrt(a + b*Csc(e + f*x))) + (A*b*(2*n + 1) + 2*a*B*n)/(2*a*d*n)* Int(Sqrt(a + b*Csc(e + f*x))*(d*Csc(e + f*x))^(n + 1), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && NeQ(A*b*(2*n + 1) + 2*a*B*n, 0) && LtQ(n, 0))
Int(Sqrt(a_ + b_'*csc(e_' + f_'*x_))*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-2*b*B* Cot(e + f*x)*(d*Csc(e + f*x))^ n/(f*(2*n + 1)*Sqrt(a + b*Csc(e + f*x))) + (A*b*(2*n + 1) + 2*a*B*n)/(b*(2*n + 1))* Int(Sqrt(a + b*Csc(e + f*x))*(d*Csc(e + f*x))^n, x) <-- FreeQ([a, b, d, e, f, A, B, n], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && NeQ(A*b*(2*n + 1) + 2*a*B*n, 0) && Not(LtQ(n, 0)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (a*A*Cot(e + f*x)*(a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^ n/(f*n) - b/(a*d*n)* Int((a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^(n + 1)* Simp(a*A*(m - n - 1) - b*B*n - (a*B*n + A*b*(m + n))*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && GtQ(m, 1/2) && LtQ(n, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-b*B* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^ n/(f*(m + n)) + 1/(d*(m + n))* Int((a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^n* Simp(a*A*d*(m + n) + B*(b*d*n) + (A*b*d*(m + n) + a*B*d*(2*m + n - 1))* Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B, n], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && GtQ(m, 1/2) && Not(LtQ(n, -1)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (d*(A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^(n - 1)/(a*f*(2*m + 1)) - 1/(a*b*(2*m + 1))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 1)* Simp(A*(a*d*(n - 1)) - B*(b*d*(n - 1)) - d*(a*B*(m - n + 1) + A*b*(m + n))*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && LtQ(m, -1/2) && GtQ(n, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-(A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^n/(b*f*(2*m + 1)) - 1/(a^2*(2*m + 1))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^n* Simp(b*B*n - a*A*(2*m + n + 1) + (A*b - a*B)*(m + n + 1)*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B, n], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && LtQ(m, -1/2) && Not(GtQ(n, 0)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-B*d* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^(n - 1)/(f*(m + n)) + d/(b*(m + n))* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n - 1)* Simp(b*B*(n - 1) + (A*b*(m + n) + a*B*m)*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B, m], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && GtQ(n, 1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n/(f*n) - 1/(b*d*n)* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n + 1)* Simp(a*A*m - b*B*n - A*b*(m + n + 1)*Csc(e + f*x), x), x) <-- FreeQ([a, b, d, e, f, A, B, m], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0) && LtQ(n, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := ((A*b - a*B)/b* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n, x) + B/b*Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^n, x) <-- FreeQ([a, b, d, e, f, A, B, m], x) && NeQ(A*b - a*B, 0) && EqQ(a^2 - b^2, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^2*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (a^2*A*Cos(e + f*x)*(d*Csc(e + f*x))^(n + 1)/(d*f*n) + 1/(d*n)* Int((d*Csc(e + f*x))^(n + 1)*(a*(2*A*b + a*B)* n + (2*a*b*B*n + A*(b^2*n + a^2*(n + 1)))*Csc(e + f*x) + b^2*B*n*Csc(e + f*x)^2), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LeQ(n, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (a*A*Cot(e + f*x)*(a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^ n/(f*n) + 1/(d*n)*Int((a + b*Csc(e + f*x))^(m - 2)*(d*Csc(e + f*x))^(n + 1)* Simp(a*(a*B*n - A*b*(m - n - 1)) + (2*a*b*B*n + A*(b^2*n + a^2*(1 + n)))*Csc(e + f*x) + b*(b*B*n + a*A*(m + n))*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && GtQ(m, 1) && LeQ(n, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-b*B* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^ n/(f*(m + n)) + 1/(m + n)*Int((a + b*Csc(e + f*x))^(m - 2)*(d*Csc(e + f*x))^n* Simp(a^2*A*(m + n) + a*b*B*n + (a*(2*A*b + a*B)*(m + n) + b^2*B*(m + n - 1))* Csc(e + f*x) + b*(A*b*(m + n) + a*B*(2*m + n - 1))*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, n], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && GtQ(m, 1) && Not(IGtQ(n, 1) && Not(IntegerQ(m))))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-d*(A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 1)/(f*(m + 1)*(a^2 - b^2)) + 1/((m + 1)*(a^2 - b^2))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 1)* Simp(d*(n - 1)*(A*b - a*B) + d*(a*A - b*B)*(m + 1)*Csc(e + f*x) - d*(A*b - a*B)*(m + n + 1)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LtQ(m, -1) && LtQ(0, n, 1))
Int(csc(e_' + f_'*x_)^3*(a_ + b_'*csc(e_' + f_'*x_))^ m_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-a^2*(A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)/(b^2* f*(m + 1)*(a^2 - b^2)) + 1/(b^2*(m + 1)*(a^2 - b^2))* Int(Csc(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)* Simp(a*b*(A*b - a*B)*(m + 1) - (A*b - a*B)*(a^2 + b^2*(m + 1))* Csc(e + f*x) + b*B*(m + 1)*(a^2 - b^2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LtQ(m, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (a*d^2*(A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 2)/(b*f*(m + 1)*(a^2 - b^2)) - d/(b*(m + 1)*(a^2 - b^2))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 2)* Simp(a*d*(A*b - a*B)*(n - 2) + b*d*(A*b - a*B)*(m + 1)* Csc(e + f*x) - (a*A*b*d*(m + n) - d*B*(a^2*(n - 1) + b^2*(m + 1)))*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LtQ(m, -1) && GtQ(n, 1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (b*(A*b - a*B)* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^ n/(a*f*(m + 1)*(a^2 - b^2)) + 1/(a*(m + 1)*(a^2 - b^2))* Int((a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^n* Simp(A*(a^2*(m + 1) - b^2*(m + n + 1)) + a*b*B*n - a*(A*b - a*B)*(m + 1)*Csc(e + f*x) + b*(A*b - a*B)*(m + n + 2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, n], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LtQ(m, -1) && Not(ILtQ(m + 1/2, 0) && ILtQ(n, 0)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-B*d* Cot(e + f*x)*(a + b*Csc(e + f*x))^ m*(d*Csc(e + f*x))^(n - 1)/(f*(m + n)) + d/(m + n)* Int((a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^(n - 1)* Simp(a*B*(n - 1) + (b*B*(m + n - 1) + a*A*(m + n))* Csc(e + f*x) + (a*B*m + A*b*(m + n))*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LtQ(0, m, 1) && GtQ(n, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^n/(f*n) - 1/(d*n)*Int((a + b*Csc(e + f*x))^(m - 1)*(d*Csc(e + f*x))^(n + 1)* Simp(A*b*m - a*B*n - (b*B*n + a*A*(n + 1))*Csc(e + f*x) - A*b*(m + n + 1)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LtQ(0, m, 1) && LeQ(n, -1))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (-B*d^2* Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^(n - 2)/(b*f*(m + n)) + d^2/(b*(m + n))* Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n - 2)* Simp(a*B*(n - 2) + B*b*(m + n - 1)*Csc(e + f*x) + (A*b*(m + n) - a*B*(n - 1))* Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, m], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && GtQ(n, 1) && NeQ(m + n, 0) && Not(IGtQ(m, 1)))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (A*Cot(e + f*x)*(a + b*Csc(e + f*x))^(m + 1)*(d*Csc(e + f*x))^ n/(a*f*n) + 1/(a*d*n)*Int((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^(n + 1)* Simp(a*B*n - A*b*(m + n + 1) + A*a*(n + 1)*Csc(e + f*x) + A*b*(m + n + 2)*Csc(e + f*x)^2, x), x) <-- FreeQ([a, b, d, e, f, A, B, m], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0) && LeQ(n, -1))
Int((A_ + B_'*csc(e_' + f_'*x_))/(Sqrt(d_'*csc(e_' + f_'*x_))* Sqrt(a_ + b_'*csc(e_' + f_'*x_))), x_Symbol) := (A/a*Int(Sqrt(a + b*Csc(e + f*x))/Sqrt(d*Csc(e + f*x)), x) - (A*b - a*B)/(a*d)* Int(Sqrt(d*Csc(e + f*x))/Sqrt(a + b*Csc(e + f*x)), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0))
Int(Sqrt(d_'*csc(e_' + f_'*x_))*(A_ + B_'*csc(e_' + f_'*x_))/ Sqrt(a_ + b_'*csc(e_' + f_'*x_)), x_Symbol) := (A*Int(Sqrt(d*Csc(e + f*x))/Sqrt(a + b*Csc(e + f*x)), x) + B/d*Int((d*Csc(e + f*x))^(3/2)/Sqrt(a + b*Csc(e + f*x)), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0))
Int(Sqrt(a_ + b_'*csc(e_' + f_'*x_))*(A_ + B_'*csc(e_' + f_'*x_))/ Sqrt(d_'*csc(e_' + f_'*x_)), x_Symbol) := (B/d*Int(Sqrt(a + b*Csc(e + f*x))*Sqrt(d*Csc(e + f*x)), x) + A*Int(Sqrt(a + b*Csc(e + f*x))/Sqrt(d*Csc(e + f*x)), x) <-- FreeQ([a, b, d, e, f, A, B], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0))
Int((d_'*csc(e_' + f_'*x_))^ n_*(A_ + B_'*csc(e_' + f_'*x_))/(a_ + b_'*csc(e_' + f_'*x_)), x_Symbol) := (A/a*Int((d*Csc(e + f*x))^n, x) - (A*b - a*B)/(a*d)* Int((d*Csc(e + f*x))^(n + 1)/(a + b*Csc(e + f*x)), x) <-- FreeQ([a, b, d, e, f, A, B, n], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0))
Int((a_ + b_'*csc(e_' + f_'*x_))^m_*(d_'*csc(e_' + f_'*x_))^ n_'*(A_ + B_'*csc(e_' + f_'*x_)), x_Symbol) := (Unintegrable((a + b*Csc(e + f*x))^m*(d*Csc(e + f*x))^ n*(A + B*Csc(e + f*x)), x) <-- FreeQ([a, b, d, e, f, A, B, m, n], x) && NeQ(A*b - a*B, 0) && NeQ(a^2 - b^2, 0))
#= Int[(a_+b_.*csc[e_.+f_.*x_])^m_.*(c_+d_.*csc[e_.+f_.*x_])^n_.*(A_.+ B_.*csc[e_.+f_.*x_])^p_.,x_Symbol] :=  (-a*c)^m*Int[Cot[e+f*x]^(2*m)*(c+d*Csc[e+f*x])^(n-m)*(A+B*Csc[e+f*x])^ p,x] /; FreeQ[{a,b,c,d,e,f,A,B,n,p},x] && EqQ[b*c+a*d,0] &&  EqQ[a^2-b^2,0] && IntegerQ[m] && Not[IntegerQ[n] && (LtQ[m,0] && GtQ[n,0] || LtQ[0,n,m] ||  LtQ[m,n,0])] =#
Int((a_ + b_'*csc(e_' + f_'*x_))^m_'*(c_ + d_'*csc(e_' + f_'*x_))^ n_'*(A_' + B_'*csc(e_' + f_'*x_))^p_', x_Symbol) := ((-a*c)^m* Int(Cos(e + f*x)^(2*m)*(d + c*Sin(e + f*x))^(n - m)*(B + A*Sin(e + f*x))^p/Sin(e + f*x)^(m + n + p), x) <-- FreeQ([a, b, c, d, e, f, A, B, n, p], x) && EqQ(b*c + a*d, 0) && EqQ(a^2 - b^2, 0) && IntegersQ(m, n, p))
end
