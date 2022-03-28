int_rules_1_2_3_5 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.2.3.5 P(x) (a+b x^n+c x^(2 n))^p =#
Int(Pq_*(a_ + b_'*x_^n_' + c_'*x_^n2_')^p_', x_Symbol) := (Int(ExpandIntegrand(Pq*(a + b*x^n + c*x^(2*n))^p, x), x) <-- FreeQ([a, b, c, n], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && IGtQ(p, 0))
Int((d_ + e_'*x_^n_' + f_'*x_^n2_')*(a_ + b_'*x_^n_' + c_'*x_^n2_')^ p_', x_Symbol) := (d*x*(a + b*x^n + c*x^(2*n))^(p + 1)/a <-- FreeQ([a, b, c, d, e, f, n, p], x) && EqQ(n2, 2*n) && EqQ(a*e - b*d*(n*(p + 1) + 1), 0) && EqQ(a*f - c*d*(2*n*(p + 1) + 1), 0))
Int((d_ + f_'*x_^n2_')*(a_ + b_'*x_^n_' + c_'*x_^n2_')^p_', x_Symbol) := (d*x*(a + b*x^n + c*x^(2*n))^(p + 1)/a <-- FreeQ([a, b, c, d, f, n, p], x) && EqQ(n2, 2*n) && EqQ(n*(p + 1) + 1, 0) && EqQ(c*d + a*f, 0))
Int(Pq_*(a_ + b_'*x_^n_' + c_'*x_^n2_')^p_, x_Symbol) := ((a + b*x^n + c*x^(2*n))^ FracPart(p)/((4*c)^IntPart(p)*(b + 2*c*x^n)^(2*FracPart(p)))* Int(Pq*(b + 2*c*x^n)^(2*p), x) <-- FreeQ([a, b, c, n, p], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && EqQ(b^2 - 4*a*c, 0) && Not(IntegerQ(2*p)))
Int(Pq_*(a_ + b_'*x_^n_' + c_'*x_^n2_')^p_, x_Symbol) := (Int(x*PolynomialQuotient(Pq, x, x)*(a + b*x^n + c*x^(2*n))^p, x) <-- FreeQ([a, b, c, n, p], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && EqQ(Coeff(Pq, x, 0), 0) && Not(MatchQ(Pq, (x^m_'*u_' <-- IntegerQ(m)))))
Int((d_ + e_'*x_^n_ + f_'*x_^n2_' + g_'*x_^n3_')*(a_ + b_'*x_^n_ + c_'*x_^n2_')^p_', x_Symbol) := (x*(a*d*(n + 1) + (a*e - b*d*(n*(p + 1) + 1))* x^n)*(a + b*x^n + c*x^(2*n))^(p + 1)/(a^2*(n + 1)) <-- FreeQ([a, b, c, d, e, f, g, n, p], x) && EqQ(n2, 2*n) && EqQ(n3, 3*n) && NeQ(b^2 - 4*a*c, 0) && EqQ(a^2*g*(n + 1) - c*(n*(2*p + 3) + 1)*(a*e - b*d*(n*(p + 1) + 1)), 0) && EqQ(a^2*f*(n + 1) - a*c*d*(n + 1)*(2*n*(p + 1) + 1) - b*(n*(p + 2) + 1)*(a*e - b*d*(n*(p + 1) + 1)), 0))
Int((d_ + f_'*x_^n2_' + g_'*x_^n3_')*(a_ + b_'*x_^n_ + c_'*x_^n2_')^ p_', x_Symbol) := (d*x*(a*(n + 1) - b*(n*(p + 1) + 1)* x^n)*(a + b*x^n + c*x^(2*n))^(p + 1)/(a^2*(n + 1)) <-- FreeQ([a, b, c, d, f, g, n, p], x) && EqQ(n2, 2*n) && EqQ(n3, 3*n) && NeQ(b^2 - 4*a*c, 0) && EqQ(a^2*g*(n + 1) + c*b*d*(n*(2*p + 3) + 1)*(n*(p + 1) + 1), 0) && EqQ(a^2*f*(n + 1) - a*c*d*(n + 1)*(2*n*(p + 1) + 1) + b^2*d*(n*(p + 2) + 1)*(n*(p + 1) + 1), 0))
Int((d_ + e_'*x_^n_ + g_'*x_^n3_')*(a_ + b_'*x_^n_ + c_'*x_^n2_')^p_', x_Symbol) := (x*(a*d*(n + 1) + (a*e - b*d*(n*(p + 1) + 1))* x^n)*(a + b*x^n + c*x^(2*n))^(p + 1)/(a^2*(n + 1)) <-- FreeQ([a, b, c, d, e, g, n, p], x) && EqQ(n2, 2*n) && EqQ(n3, 3*n) && NeQ(b^2 - 4*a*c, 0) && EqQ(a^2*g*(n + 1) - c*(n*(2*p + 3) + 1)*(a*e - b*d*(n*(p + 1) + 1)), 0) && EqQ(a*c*d*(n + 1)*(2*n*(p + 1) + 1) + b*(n*(p + 2) + 1)*(a*e - b*d*(n*(p + 1) + 1)), 0))
Int((d_ + g_'*x_^n3_')*(a_ + b_'*x_^n_ + c_'*x_^n2_')^p_', x_Symbol) := (d*x*(a*(n + 1) - b*(n*(p + 1) + 1)* x^n)*(a + b*x^n + c*x^(2*n))^(p + 1)/(a^2*(n + 1)) <-- FreeQ([a, b, c, d, g, n, p], x) && EqQ(n2, 2*n) && EqQ(n3, 3*n) && NeQ(b^2 - 4*a*c, 0) && EqQ(a^2*g*(n + 1) + c*b*d*(n*(2*p + 3) + 1)*(n*(p + 1) + 1), 0) && EqQ(a*c*d*(n + 1)*(2*n*(p + 1) + 1) - b^2*d*(n*(p + 2) + 1)*(n*(p + 1) + 1), 0))
Int(Pq_*(a_ + b_'*x_^n_ + c_'*x_^n2_)^p_, x_Symbol) := (Module([q = Expon(Pq, x), i], (-x*(a + b*x^n + c*x^(2*n))^(p + 1)/(a*n*(p + 1)*(b^2 - 4*a*c))* Sum(((b^2 - 2*a*c)*Coeff(Pq, x, i) - a*b*Coeff(Pq, x, n + i))* x^i + c*(b*Coeff(Pq, x, i) - 2*a*Coeff(Pq, x, n + i))*x^(n + i), [i, 0, n - 1]) + 1/(a*n*(p + 1)*(b^2 - 4*a*c))* Int((a + b*x^n + c*x^(2*n))^(p + 1)* Sum(((b^2*(n*(p + 1) + i + 1) - 2*a*c*(2*n*(p + 1) + i + 1))* Coeff(Pq, x, i) - a*b*(i + 1)*Coeff(Pq, x, n + i))* x^i + c*(n*(2*p + 3) + i + 1)*(b*Coeff(Pq, x, i) - 2*a*Coeff(Pq, x, n + i))*x^(n + i), [i, 0, n - 1]), x) <-- LtQ(q, 2*n))) <-- FreeQ([a, b, c], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && LtQ(p, -1))
Int(Pq_*(a_ + b_'*x_^n_ + c_'*x_^n2_)^p_, x_Symbol) := (With([q = Expon(Pq, x)], (Module([Q = PolynomialQuotient((b*c)^(Floor((q - 1)/n) + 1)*Pq, a + b*x^n + c*x^(2*n), x), R = PolynomialRemainder((b*c)^(Floor((q - 1)/n) + 1)*Pq, a + b*x^n + c*x^(2*n), x), i], -x*(a + b*x^n + c*x^(2*n))^(p + 1)/(a* n*(p + 1)*(b^2 - 4*a*c)*(b*c)^(Floor((q - 1)/n) + 1))* Sum(((b^2 - 2*a*c)*Coeff(R, x, i) - a*b*Coeff(R, x, n + i))* x^i + c*(b*Coeff(R, x, i) - 2*a*Coeff(R, x, n + i))*x^(n + i), [i, 0, n - 1]) + 1/(a*n*(p + 1)*(b^2 - 4*a*c)*(b*c)^(Floor((q - 1)/n) + 1))* Int((a + b*x^n + c*x^(2*n))^(p + 1)* ExpandToSum(a*n*(p + 1)*(b^2 - 4*a*c)*Q + Sum(((b^2*(n*(p + 1) + i + 1) - 2*a*c*(2*n*(p + 1) + i + 1))*Coeff(R, x, i) - a*b*(i + 1)*Coeff(R, x, n + i))*x^i + c*(n*(2*p + 3) + i + 1)*(b*Coeff(R, x, i) - 2*a*Coeff(R, x, n + i))*x^(n + i), [i, 0, n - 1]), x), x)) <-- GeQ(q, 2*n))) <-- FreeQ([a, b, c], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && LtQ(p, -1))
Int(Pq_/(a_ + b_'*x_^n_' + c_'*x_^n2_), x_Symbol) := (Int(ExpandIntegrand(Pq/(a + b*x^n + c*x^(2*n)), x), x) <-- FreeQ([a, b, c], x) && EqQ(n2, 2*n) && PolyQ(Pq, x^n) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && (NiceSqrtQ(b^2 - 4*a*c) || LtQ(Expon(Pq, x), n)))
Int(Pq_*(a_ + b_'*x_ + c_'*x_^2)^p_, x_Symbol) := (With([q = Expon(Pq, x)], (With([Pqq = Coeff(Pq, x, q)], c^p*Pqq*Log(a + b*x + c*x^2)/2 + 1/2*Int(ExpandToSum( 2*Pq - c^p*Pqq*(b + 2*c*x)/(a + b*x + c*x^2)^(p + 1), x)*(a + b*x + c*x^2)^p, x)) <-- EqQ(q + 2*p + 1, 0))) <-- FreeQ([a, b, c], x) && PolyQ(Pq, x) && NeQ(b^2 - 4*a*c, 0) && ILtQ(p, 0))
Int(Pq_*(a_ + b_'*x_ + c_'*x_^2)^p_, x_Symbol) := (With([q = Expon(Pq, x)], (With([Pqq = Coeff(Pq, x, q)], c^p*Pqq* ArcTanh((b + 2*c*x)/(2*Rt(c, 2)*Sqrt(a + b*x + c*x^2))) + Int(ExpandToSum( Pq - c^(p + 1/2)*Pqq/(a + b*x + c*x^2)^(p + 1/2), x)*(a + b*x + c*x^2)^p, x)) <-- EqQ(q + 2*p + 1, 0))) <-- FreeQ([a, b, c], x) && PolyQ(Pq, x) && NeQ(b^2 - 4*a*c, 0) && ILtQ(p + 1/2, 0) && PosQ(c))
Int(Pq_*(a_ + b_'*x_ + c_'*x_^2)^p_, x_Symbol) := (With([q = Expon(Pq, x)], (With([Pqq = Coeff(Pq, x, q)], -(-c)^p*Pqq* ArcTan((b + 2*c*x)/(2*Rt(-c, 2)*Sqrt(a + b*x + c*x^2))) + Int(ExpandToSum( Pq - (-c)^(p + 1/2)*Pqq/(a + b*x + c*x^2)^(p + 1/2), x)*(a + b*x + c*x^2)^p, x)) <-- EqQ(q + 2*p + 1, 0))) <-- FreeQ([a, b, c], x) && PolyQ(Pq, x) && NeQ(b^2 - 4*a*c, 0) && ILtQ(p + 1/2, 0) && NegQ(c))
Int(Pq_*(a_ + b_'*x_^n_' + c_'*x_^n2_)^p_, x_Symbol) := (With([q = Expon(Pq, x)], (With([Pqq = Coeff(Pq, x, q)], Pqq* x^(q - 2*n + 1)*(a + b*x^n + c*x^(2*n))^(p + 1)/(c*(q + 2*n*p + 1)) + Int(ExpandToSum( Pq - Pqq*x^q - Pqq*(a*(q - 2*n + 1)*x^(q - 2*n) + b*(q + n*(p - 1) + 1)*x^(q - n))/(c*(q + 2*n*p + 1)), x)*(a + b*x^n + c*x^(2*n))^p, x)) <-- GeQ(q, 2*n) && NeQ(q + 2*n*p + 1, 0) && (IntegerQ(2*p) || EqQ(n, 1) && IntegerQ(4*p) || IntegerQ(p + (q + 1)/(2*n))))) <-- FreeQ([a, b, c, p], x) && EqQ(n2, 2*n) && PolyQ(Pq, x^n) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0))
Int(Pq_*(a_ + b_'*x_^n_ + c_'*x_^n2_)^p_, x_Symbol) := (Module([q = Expon(Pq, x), j, k], Int(Sum( x^j*Sum(Coeff(Pq, x, j + k*n)*x^(k*n), [k, 0, (q - j)/n + 1])*(a + b*x^n + c*x^(2*n))^p, [j, 0, n - 1]), x)) <-- FreeQ([a, b, c, p], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0) && Not(PolyQ(Pq, x^n)))
Int(Pq_/(a_ + b_'*x_^n_' + c_'*x_^n2_'), x_Symbol) := (Int(RationalFunctionExpand(Pq/(a + b*x^n + c*x^(2*n)), x), x) <-- FreeQ([a, b, c], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && NeQ(b^2 - 4*a*c, 0) && IGtQ(n, 0))
Int(Pq_*(a_ + b_'*x_^n_ + c_'*x_^n2_')^p_, x_Symbol) := (With([g = Denominator(n)], g*Subst( Int(x^(g - 1)* ReplaceAll(Pq, Rule(x, x^g))*(a + b*x^(g*n) + c*x^(2*g*n))^p, x), x, x^(1/g))) <-- FreeQ([a, b, c, p], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && NeQ(b^2 - 4*a*c, 0) && FractionQ(n))
Int(Pq_/(a_ + b_'*x_^n_' + c_'*x_^n2_'), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], 2*c/q*Int(Pq/(b - q + 2*c*x^n), x) - 2*c/q*Int(Pq/(b + q + 2*c*x^n), x)) <-- FreeQ([a, b, c, n], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && NeQ(b^2 - 4*a*c, 0))
Int(P3_*(a_ + b_'*x_^n_ + c_'*x_^n2_)^p_, x_Symbol) := (With([d = Coeff(P3, x^n, 0), e = Coeff(P3, x^n, 1), f = Coeff(P3, x^n, 2), g = Coeff(P3, x^n, 3)], -x*(b^2*c*d - 2*a*c*(c*d - a*f) - a*b*(c*e + a*g) + (b*c*(c*d + a*f) - a*b^2*g - 2*a*c*(c*e - a*g))*x^n)*(a + b*x^n + c*x^(2*n))^(p + 1)/ (a*c*n*(p + 1)*(b^2 - 4*a*c)) - 1/(a*c*n*(p + 1)*(b^2 - 4*a*c))* Int((a + b*x^n + c*x^(2*n))^(p + 1)* Simp(a*b*(c*e + a*g) - b^2*c*d*(n + n*p + 1) - 2*a*c*(a*f - c*d*(2*n*(p + 1) + 1)) + (a*b^2*g*(n*(p + 2) + 1) - b*c*(c*d + a*f)*(n*(2*p + 3) + 1) - 2*a*c*(a*g*(n + 1) - c*e*(n*(2*p + 3) + 1)))*x^n, x), x)) <-- FreeQ([a, b, c, n], x) && EqQ(n2, 2*n) && PolyQ(P3, x^n, 3) && NeQ(b^2 - 4*a*c, 0) && ILtQ(p, -1))
Int(P2_*(a_ + b_'*x_^n_ + c_'*x_^n2_)^p_, x_Symbol) := (With([d = Coeff(P2, x^n, 0), e = Coeff(P2, x^n, 1), f = Coeff(P2, x^n, 2)], -x*(b^2*d - 2*a*(c*d - a*f) - a*b*e + (b*(c*d + a*f) - 2*a*c*e)* x^n)*(a + b*x^n + c*x^(2*n))^(p + 1)/(a* n*(p + 1)*(b^2 - 4*a*c)) - 1/(a*n*(p + 1)*(b^2 - 4*a*c))* Int((a + b*x^n + c*x^(2*n))^(p + 1)* Simp(a*b*e - b^2*d*(n + n*p + 1) - 2*a*(a*f - c*d*(2*n*(p + 1) + 1)) - (b*(c*d + a*f)*(n*(2*p + 3) + 1) - 2*a*c*e*(n*(2*p + 3) + 1))*x^n, x), x)) <-- FreeQ([a, b, c, n], x) && EqQ(n2, 2*n) && PolyQ(P2, x^n, 2) && NeQ(b^2 - 4*a*c, 0) && ILtQ(p, -1))
Int(Pq_*(a_ + b_'*x_^n_' + c_'*x_^n2_')^p_, x_Symbol) := (Int(ExpandIntegrand(Pq*(a + b*x^n + c*x^(2*n))^p, x), x) <-- FreeQ([a, b, c, n], x) && EqQ(n2, 2*n) && PolyQ(Pq, x) && ILtQ(p, -1))
Int(Pq_*(a_ + b_'*x_^n_' + c_'*x_^n2_')^p_', x_Symbol) := (Unintegrable(Pq*(a + b*x^n + c*x^(2*n))^p, x) <-- FreeQ([a, b, c, n, p], x) && EqQ(n2, 2*n) && (PolyQ(Pq, x) || PolyQ(Pq, x^n)))
Int(Pq_*(a_ + b_'*v_^n_ + c_'*v_^n2_')^p_', x_Symbol) := (1/Coefficient(v, x, 1)* Subst(Int(SubstFor(v, Pq, x)*(a + b*x^n + c*x^(2*n))^p, x), x, v) <-- FreeQ([a, b, c, n, p], x) && EqQ(n2, 2*n) && LinearQ(v, x) && PolyQ(Pq, v^n))
end
