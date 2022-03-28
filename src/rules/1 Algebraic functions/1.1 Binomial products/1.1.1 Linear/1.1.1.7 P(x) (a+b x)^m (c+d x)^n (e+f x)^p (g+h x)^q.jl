int_rules_1_1_1_7 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.1.1.7 P(x) (a+b x)^m (c+d x)^n (e+f x)^p (g+h x)^q =#
Int(Px_*(a_ + b_'*x_^n_)^p_, x_Symbol) := (Coeff(Px, x, n - 1)*(a + b*x^n)^(p + 1)/(b*n*(p + 1)) + Int((Px - Coeff(Px, x, n - 1)*x^(n - 1))*(a + b*x^n)^p, x) <-- FreeQ([a, b], x) && PolyQ(Px, x) && IGtQ(p, 1) && IGtQ(n, 1) && NeQ(Coeff(Px, x, n - 1), 0) && NeQ(Px, Coeff(Px, x, n - 1)*x^(n - 1)) && Not(MatchQ(Px, (Qx_'*(c_ + d_'*x^m_)^q_ <-- FreeQ([c, d], x) && PolyQ(Qx, x) && IGtQ(q, 1) && IGtQ(m, 1) && NeQ(Coeff(Qx*(a + b*x^n)^p, x, m - 1), 0) && GtQ(m*q, n*p)))))
Int(Px_*x_^m_'*(a_ + b_'*x_^n_')^p_, x_Symbol) := (Coeff(Px, x, n - m - 1)*(a + b*x^n)^(p + 1)/(b*n*(p + 1)) + Int((Px - Coeff(Px, x, n - m - 1)*x^(n - m - 1))* x^m*(a + b*x^n)^p, x) <-- FreeQ([a, b, m, n], x) && PolyQ(Px, x) && IGtQ(p, 1) && IGtQ(n - m, 0) && NeQ(Coeff(Px, x, n - m - 1), 0))
Int(u_'*x_^m_'*(a_'*x_^p_' + b_'*x_^q_')^n_', x_Symbol) := (Int(u*x^(m + n*p)*(a + b*x^(q - p))^n, x) <-- FreeQ([a, b, m, p, q], x) && IntegerQ(n) && PosQ(q - p))
Int(u_'*x_^m_'*(a_'*x_^p_' + b_'*x_^q_' + c_'*x_^r_')^n_', x_Symbol) := (Int(u*x^(m + n*p)*(a + b*x^(q - p) + c*x^(r - p))^n, x) <-- FreeQ([a, b, c, m, p, q, r], x) && IntegerQ(n) && PosQ(q - p) && PosQ(r - p))
Int(u_'*Px_^p_'*Qx_^q_', x_Symbol) := (Int(u*PolynomialQuotient(Px, Qx, x)^p*Qx^(p + q), x) <-- FreeQ(q, x) && PolyQ(Px, x) && PolyQ(Qx, x) && EqQ(PolynomialRemainder(Px, Qx, x), 0) && IntegerQ(p) && LtQ(p*q, 0))
Int(Pp_/Qq_, x_Symbol) := (With([p = Expon(Pp, x), q = Expon(Qq, x)], (Coeff(Pp, x, p)* Log(RemoveContent(Qq, x))/(q*Coeff(Qq, x, q)) <-- EqQ(p, q - 1) && EqQ(Pp, Simplify( Coeff(Pp, x, p)/(q*Coeff(Qq, x, q))*D(Qq, x))))) <-- PolyQ(Pp, x) && PolyQ(Qq, x))
Int(Pp_*Qq_^m_', x_Symbol) := (With([p = Expon(Pp, x), q = Expon(Qq, x)], (Coeff(Pp, x, p)*x^(p - q + 1)* Qq^(m + 1)/((p + m*q + 1)*Coeff(Qq, x, q)) <-- NeQ(p + m*q + 1, 0) && EqQ((p + m*q + 1)*Coeff(Qq, x, q)*Pp, Coeff(Pp, x, p)* x^(p - q)*((p - q + 1)*Qq + (m + 1)*x*D(Qq, x))))) <-- FreeQ(m, x) && PolyQ(Pp, x) && PolyQ(Qq, x) && NeQ(m, -1))
Int(x_^m_'*(a1_ + b1_'*x_^n_')^p_*(a2_ + b2_'*x_^n_')^p_, x_Symbol) := ((a1 + b1*x^n)^(p + 1)*(a2 + b2*x^n)^(p + 1)/(2*b1* b2*n*(p + 1)) <-- FreeQ([a1, b1, a2, b2, m, n, p], x) && EqQ(a2*b1 + a1*b2, 0) && EqQ(m - 2*n + 1, 0) && NeQ(p, -1))
Int(Pp_*Qq_^m_'*Rr_^n_', x_Symbol) := (With([p = Expon(Pp, x), q = Expon(Qq, x), r = Expon(Rr, x)], (Coeff(Pp, x, p)*x^(p - q - r + 1)*Qq^(m + 1)* Rr^(n + 1)/((p + m*q + n*r + 1)*Coeff(Qq, x, q)* Coeff(Rr, x, r)) <-- NeQ(p + m*q + n*r + 1, 0) && EqQ((p + m*q + n*r + 1)*Coeff(Qq, x, q)*Coeff(Rr, x, r)*Pp, Coeff(Pp, x, p)* x^(p - q - r)*((p - q - r + 1)*Qq*Rr + (m + 1)*x*Rr* D(Qq, x) + (n + 1)*x*Qq*D(Rr, x))))) <-- FreeQ([m, n], x) && PolyQ(Pp, x) && PolyQ(Qq, x) && PolyQ(Rr, x) && NeQ(m, -1) && NeQ(n, -1))
Int(Qr_*(a_' + b_'*Pq_^n_')^p_', x_Symbol) := (With([q = Expon(Pq, x), r = Expon(Qr, x)], (Coeff(Qr, x, r)/(q*Coeff(Pq, x, q))* Subst(Int((a + b*x^n)^p, x), x, Pq) <-- EqQ(r, q - 1) && EqQ(Coeff(Qr, x, r)*D(Pq, x), q*Coeff(Pq, x, q)*Qr))) <-- FreeQ([a, b, n, p], x) && PolyQ(Pq, x) && PolyQ(Qr, x))
Int(Qr_*(a_' + b_'*Pq_^n_' + c_'*Pq_^n2_')^p_', x_Symbol) := (Module([q = Expon(Pq, x), r = Expon(Qr, x)], (Coeff(Qr, x, r)/(q*Coeff(Pq, x, q))* Subst(Int((a + b*x^n + c*x^(2*n))^p, x), x, Pq) <-- EqQ(r, q - 1) && EqQ(Coeff(Qr, x, r)*D(Pq, x), q*Coeff(Pq, x, q)*Qr))) <-- FreeQ([a, b, c, n, p], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && PolyQ(Qr, x))
Int(u_'*(a_'*x_^p_' + b_'*x_^q_')^n_', x_Symbol) := (Int(u*x^(n*p)*(a + b*x^(q - p))^n, x) <-- FreeQ([a, b, p, q], x) && IntegerQ(n) && PosQ(q - p))
Int(u_'*(a_'*x_^p_' + b_'*x_^q_' + c_'*x_^r_')^n_', x_Symbol) := (Int(u*x^(n*p)*(a + b*x^(q - p) + c*x^(r - p))^n, x) <-- FreeQ([a, b, c, p, q, r], x) && IntegerQ(n) && PosQ(q - p) && PosQ(r - p))
#= Int[Sqrt[a_.+b_.*x_]*(A_.+B_.*x_)/(Sqrt[c_.+d_.*x_]*Sqrt[e_.+f_.*x_ ]*Sqrt[g_.+h_.*x_]),x_Symbol] :=  B*Sqrt[a+b*x]*Sqrt[e+f*x]*Sqrt[g+h*x]/(f*h*Sqrt[c+d*x]) - B*(b*g-a*h)/(2*f*h)*Int[Sqrt[e+f*x]/(Sqrt[a+b*x]*Sqrt[c+d*x]*Sqrt[g+ h*x]),x] + B*(d*e-c*f)*(d*g-c*h)/(2*d*f*h)*Int[Sqrt[a+b*x]/((c+d*x)^(3/2)*Sqrt[ e+f*x]*Sqrt[g+h*x]),x] /; FreeQ[{a,b,c,d,e,f,g,h,A,B},x] &&  EqQ[2*A*d*f-B*(d*e+c*f),0] =#
Int(Sqrt(a_' + b_'*x_)*(A_' + B_'*x_)/(Sqrt(c_' + d_'*x_)*Sqrt(e_' + f_'*x_)* Sqrt(g_' + h_'*x_)), x_Symbol) := (b*B*Sqrt(c + d*x)*Sqrt(e + f*x)*Sqrt(g + h*x)/(d*f*h*Sqrt(a + b*x)) - B*(b*g - a*h)/(2*f*h)* Int(Sqrt(e + f*x)/(Sqrt(a + b*x)*Sqrt(c + d*x)*Sqrt(g + h*x)), x) + B*(b*e - a*f)*(b*g - a*h)/(2*d*f*h)* Int(Sqrt(c + d*x)/((a + b*x)^(3/2)*Sqrt(e + f*x)*Sqrt(g + h*x)), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, B], x) && EqQ(2*A*d*f - B*(d*e + c*f), 0))
#= Int[Sqrt[a_.+b_.*x_]*(A_.+B_.*x_)/(Sqrt[c_.+d_.*x_]*Sqrt[e_.+f_.*x_ ]*Sqrt[g_.+h_.*x_]),x_Symbol] :=  (2*A*d*f-B*(d*e+c*f))/(2*d*f)*Int[Sqrt[a+b*x]/(Sqrt[c+d*x]*Sqrt[e+f*x] *Sqrt[g+h*x]),x] + B/(2*d*f)*Int[(Sqrt[a+b*x]*(d*e+c*f+2*d*f*x))/(Sqrt[c+d*x]*Sqrt[e+f* x]*Sqrt[g+h*x]),x] /; FreeQ[{a,b,c,d,e,f,g,h,A,B},x] &&  NeQ[2*A*d*f-B*(d*e+c*f),0] =#
Int(Sqrt(a_' + b_'*x_)*(A_' + B_'*x_)/(Sqrt(c_' + d_'*x_)*Sqrt(e_' + f_'*x_)* Sqrt(g_' + h_'*x_)), x_Symbol) := (B*Sqrt(a + b*x)*Sqrt(e + f*x)*Sqrt(g + h*x)/(f*h*Sqrt(c + d*x)) + B*(d*e - c*f)*(d*g - c*h)/(2*d*f*h)* Int(Sqrt(a + b*x)/((c + d*x)^(3/2)*Sqrt(e + f*x)*Sqrt(g + h*x)), x) - B*(b*e - a*f)*(b*g - a*h)/(2*b*f*h)* Int(1/(Sqrt(a + b*x)*Sqrt(c + d*x)*Sqrt(e + f*x)*Sqrt(g + h*x)), x) + (2*A*b*d*f*h + B*(a*d*f*h - b*(d*f*g + d*e*h + c*f*h)))/(2*b*d*f* h)*Int(Sqrt( a + b*x)/(Sqrt(c + d*x)*Sqrt(e + f*x)*Sqrt(g + h*x)), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, B], x) && NeQ(2*A*d*f - B*(d*e + c*f), 0))
Int((a_' + b_'*x_)^ m_'*(A_' + B_'*x_)/(Sqrt(c_' + d_'*x_)*Sqrt(e_' + f_'*x_)* Sqrt(g_' + h_'*x_)), x_Symbol) := (1/(d*f*h*(2*m + 3))* Int(((a + b*x)^(m - 1)/(Sqrt(c + d*x)*Sqrt(e + f*x)*Sqrt(g + h*x)))* Simp( a*A*d*f*h*(2*m + 3) + (A*b + a*B)*d*f*h*(2*m + 3)*x + b*B*d*f*h*(2*m + 3)*x^2, x), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, B], x) && IntegerQ(2*m) && GtQ(m, 0))
Int((A_' + B_'*x_)/(Sqrt(a_' + b_'*x_)*Sqrt(c_' + d_'*x_)* Sqrt(e_' + f_'*x_)*Sqrt(g_' + h_'*x_)), x_Symbol) := ((A*b - a*B)/b* Int(1/(Sqrt(a + b*x)*Sqrt(c + d*x)*Sqrt(e + f*x)*Sqrt(g + h*x)), x) + B/b*Int( Sqrt(a + b*x)/(Sqrt(c + d*x)*Sqrt(e + f*x)*Sqrt(g + h*x)), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, B], x))
Int((a_' + b_'*x_)^ m_*(A_' + B_'*x_)/(Sqrt(c_' + d_'*x_)*Sqrt(e_' + f_'*x_)* Sqrt(g_' + h_'*x_)), x_Symbol) := ((A*b^2 - a*b*B)*(a + b*x)^(m + 1)*Sqrt(c + d*x)* Sqrt(e + f*x)* Sqrt(g + h*x)/((m + 1)*(b*c - a*d)*(b*e - a*f)*(b*g - a*h)) - 1/(2*(m + 1)*(b*c - a*d)*(b*e - a*f)*(b*g - a*h))* Int(((a + b*x)^(m + 1)/(Sqrt(c + d*x)*Sqrt(e + f*x)* Sqrt(g + h*x)))* Simp(A*(2*a^2*d*f*h*(m + 1) - 2*a*b*(m + 1)*(d*f*g + d*e*h + c*f*h) + b^2*(2*m + 3)*(d*e*g + c*f*g + c*e*h)) - b*B*(a*(d*e*g + c*f*g + c*e*h) + 2*b*c*e*g*(m + 1)) - 2*((A*b - a*B)*(a*d*f*h*(m + 1) - b*(m + 2)*(d*f*g + d*e*h + c*f*h)))*x + d*f*h*(2*m + 5)*(A*b^2 - a*b*B)*x^2, x), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, B], x) && IntegerQ(2*m) && LtQ(m, -1))
Int((a_' + b_'*x_)^ m_'*(A_' + B_'*x_ + C_'*x_^2)/(Sqrt(c_' + d_'*x_)* Sqrt(e_' + f_'*x_)*Sqrt(g_' + h_'*x_)), x_Symbol) := (2*C*(a + b*x)^m*Sqrt(c + d*x)*Sqrt(e + f*x)* Sqrt(g + h*x)/(d*f*h*(2*m + 3)) + 1/(d*f*h*(2*m + 3))* Int(((a + b*x)^(m - 1)/(Sqrt(c + d*x)*Sqrt(e + f*x)* Sqrt(g + h*x)))* Simp(a*A*d*f*h*(2*m + 3) - C*(a*(d*e*g + c*f*g + c*e*h) + 2*b*c*e*g*m) + ((A*b + a*B)*d*f*h*(2*m + 3) - C*(2*a*(d*f*g + d*e*h + c*f*h) + b*(2*m + 1)*(d*e*g + c*f*g + c*e*h)))*x + (b*B*d*f*h*(2*m + 3) + 2*C*(a*d*f*h*m - b*(m + 1)*(d*f*g + d*e*h + c*f*h)))*x^2, x), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, B, C], x) && IntegerQ(2*m) && GtQ(m, 0))
Int((a_' + b_'*x_)^ m_'*(A_' + C_'*x_^2)/(Sqrt(c_' + d_'*x_)*Sqrt(e_' + f_'*x_)* Sqrt(g_' + h_'*x_)), x_Symbol) := (2*C*(a + b*x)^m*Sqrt(c + d*x)*Sqrt(e + f*x)* Sqrt(g + h*x)/(d*f*h*(2*m + 3)) + 1/(d*f*h*(2*m + 3))* Int(((a + b*x)^(m - 1)/(Sqrt(c + d*x)*Sqrt(e + f*x)* Sqrt(g + h*x)))* Simp(a*A*d*f*h*(2*m + 3) - C*(a*(d*e*g + c*f*g + c*e*h) + 2*b*c*e*g*m) + (A*b*d*f*h*(2*m + 3) - C*(2*a*(d*f*g + d*e*h + c*f*h) + b*(2*m + 1)*(d*e*g + c*f*g + c*e*h)))*x + 2*C*(a*d*f*h*m - b*(m + 1)*(d*f*g + d*e*h + c*f*h))*x^2, x), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, C], x) && IntegerQ(2*m) && GtQ(m, 0))
Int((A_' + B_'*x_ + C_'*x_^2)/(Sqrt(a_' + b_'*x_)*Sqrt(c_' + d_'*x_)* Sqrt(e_' + f_'*x_)*Sqrt(g_' + h_'*x_)), x_Symbol) := (C*Sqrt(a + b*x)*Sqrt(e + f*x)*Sqrt(g + h*x)/(b*f*h*Sqrt(c + d*x)) + C*(d*e - c*f)*(d*g - c*h)/(2*b*d*f*h)* Int(Sqrt(a + b*x)/((c + d*x)^(3/2)*Sqrt(e + f*x)*Sqrt(g + h*x)), x) + 1/(2*b*d*f*h)* Int(1/(Sqrt(a + b*x)*Sqrt(c + d*x)*Sqrt(e + f*x)*Sqrt(g + h*x))* Simp(2*A*b*d*f*h - C*(b*d*e*g + a*c*f*h) + (2*b*B*d*f*h - C*(a*d*f*h + b*(d*f*g + d*e*h + c*f*h)))*x, x), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, B, C], x))
Int((A_' + C_'*x_^2)/(Sqrt(a_' + b_'*x_)*Sqrt(c_' + d_'*x_)* Sqrt(e_' + f_'*x_)*Sqrt(g_' + h_'*x_)), x_Symbol) := (C*Sqrt(a + b*x)*Sqrt(e + f*x)*Sqrt(g + h*x)/(b*f*h*Sqrt(c + d*x)) + C*(d*e - c*f)*(d*g - c*h)/(2*b*d*f*h)* Int(Sqrt(a + b*x)/((c + d*x)^(3/2)*Sqrt(e + f*x)*Sqrt(g + h*x)), x) + 1/(2*b*d*f*h)* Int(1/(Sqrt(a + b*x)*Sqrt(c + d*x)*Sqrt(e + f*x)*Sqrt(g + h*x))* Simp(2*A*b*d*f*h - C*(b*d*e*g + a*c*f*h) - C*(a*d*f*h + b*(d*f*g + d*e*h + c*f*h))*x, x), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, C], x))
Int((a_' + b_'*x_)^ m_*(A_' + B_'*x_ + C_'*x_^2)/(Sqrt(c_' + d_'*x_)* Sqrt(e_' + f_'*x_)*Sqrt(g_' + h_'*x_)), x_Symbol) := ((A*b^2 - a*b*B + a^2*C)*(a + b*x)^(m + 1)* Sqrt(c + d*x)*Sqrt(e + f*x)* Sqrt(g + h*x)/((m + 1)*(b*c - a*d)*(b*e - a*f)*(b*g - a*h)) - 1/(2*(m + 1)*(b*c - a*d)*(b*e - a*f)*(b*g - a*h))* Int(((a + b*x)^(m + 1)/(Sqrt(c + d*x)*Sqrt(e + f*x)* Sqrt(g + h*x)))* Simp(A*(2*a^2*d*f*h*(m + 1) - 2*a*b*(m + 1)*(d*f*g + d*e*h + c*f*h) + b^2*(2*m + 3)*(d*e*g + c*f*g + c*e*h)) - (b*B - a*C)*(a*(d*e*g + c*f*g + c*e*h) + 2*b*c*e*g*(m + 1)) - 2*((A*b - a*B)*(a*d*f*h*(m + 1) - b*(m + 2)*(d*f*g + d*e*h + c*f*h)) - C*(a^2*(d*f*g + d*e*h + c*f*h) - b^2*c*e*g*(m + 1) + a*b*(m + 1)*(d*e*g + c*f*g + c*e*h)))*x + d*f*h*(2*m + 5)*(A*b^2 - a*b*B + a^2*C)*x^2, x), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, B, C], x) && IntegerQ(2*m) && LtQ(m, -1))
Int((a_' + b_'*x_)^ m_*(A_' + C_'*x_^2)/(Sqrt(c_' + d_'*x_)*Sqrt(e_' + f_'*x_)* Sqrt(g_' + h_'*x_)), x_Symbol) := ((A*b^2 + a^2*C)*(a + b*x)^(m + 1)*Sqrt(c + d*x)* Sqrt(e + f*x)* Sqrt(g + h*x)/((m + 1)*(b*c - a*d)*(b*e - a*f)*(b*g - a*h)) - 1/(2*(m + 1)*(b*c - a*d)*(b*e - a*f)*(b*g - a*h))* Int(((a + b*x)^(m + 1)/(Sqrt(c + d*x)*Sqrt(e + f*x)* Sqrt(g + h*x)))* Simp(A*(2*a^2*d*f*h*(m + 1) - 2*a*b*(m + 1)*(d*f*g + d*e*h + c*f*h) + b^2*(2*m + 3)*(d*e*g + c*f*g + c*e*h)) + a*C*(a*(d*e*g + c*f*g + c*e*h) + 2*b*c*e*g*(m + 1)) - 2*(A*b*(a*d*f*h*(m + 1) - b*(m + 2)*(d*f*g + d*e*h + c*f*h)) - C*(a^2*(d*f*g + d*e*h + c*f*h) - b^2*c*e*g*(m + 1) + a*b*(m + 1)*(d*e*g + c*f*g + c*e*h)))*x + d*f*h*(2*m + 5)*(A*b^2 + a^2*C)*x^2, x), x) <-- FreeQ([a, b, c, d, e, f, g, h, A, C], x) && IntegerQ(2*m) && LtQ(m, -1))
Int(Px_*(a_' + b_'*x_)^m_'*(c_' + d_'*x_)^n_'*(e_' + f_'*x_)^ p_'*(g_' + h_'*x_)^q_', x_Symbol) := (Int(ExpandIntegrand( Px*(a + b*x)^m*(c + d*x)^n*(e + f*x)^p*(g + h*x)^q, x), x) <-- FreeQ([a, b, c, d, e, f, g, h, m, n, p, q], x) && PolyQ(Px, x) && IntegersQ(m, n))
Int(Px_*(a_' + b_'*x_)^m_'*(c_' + d_'*x_)^n_'*(e_' + f_'*x_)^ p_'*(g_' + h_'*x_)^q_', x_Symbol) := (PolynomialRemainder(Px, a + b*x, x)* Int((a + b*x)^m*(c + d*x)^n*(e + f*x)^p*(g + h*x)^q, x) + Int(PolynomialQuotient(Px, a + b*x, x)*(a + b*x)^(m + 1)*(c + d*x)^n*(e + f*x)^p*(g + h*x)^q, x) <-- FreeQ([a, b, c, d, e, f, g, h, m, n, p, q], x) && PolyQ(Px, x) && EqQ(m, -1))
Int(Px_*(a_' + b_'*x_)^m_'*(c_' + d_'*x_)^n_'*(e_' + f_'*x_)^ p_'*(g_' + h_'*x_)^q_', x_Symbol) := (PolynomialRemainder(Px, a + b*x, x)* Int((a + b*x)^m*(c + d*x)^n*(e + f*x)^p*(g + h*x)^q, x) + Int(PolynomialQuotient(Px, a + b*x, x)*(a + b*x)^(m + 1)*(c + d*x)^n*(e + f*x)^p*(g + h*x)^q, x) <-- FreeQ([a, b, c, d, e, f, g, h, m, n, p, q], x) && PolyQ(Px, x))
end
