int_rules_1_1_1_5 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.1.1.5 P(x) (a+b x)^m (c+d x)^n =#
Int(Px_*(a_' + b_'*x_)^m_'*(c_' + d_'*x_)^n_', x_Symbol) := (Int(Px*(a*c + b*d*x^2)^m, x) <-- FreeQ([a, b, c, d, m, n], x) && PolyQ(Px, x) && EqQ(b*c + a*d, 0) && EqQ(m, n) && (IntegerQ(m) || GtQ(a, 0) && GtQ(c, 0)))
Int(Px_*(a_' + b_'*x_)^m_*(c_' + d_'*x_)^n_, x_Symbol) := ((a + b*x)^ FracPart(m)*(c + d*x)^FracPart(m)/(a*c + b*d*x^2)^FracPart(m)* Int(Px*(a*c + b*d*x^2)^m, x) <-- FreeQ([a, b, c, d, m, n], x) && PolyQ(Px, x) && EqQ(b*c + a*d, 0) && EqQ(m, n) && Not(IntegerQ(m)))
Int(Px_*(a_' + b_'*x_)^m_'*(c_' + d_'*x_)^n_', x_Symbol) := (Int(PolynomialQuotient(Px, a + b*x, x)*(a + b*x)^(m + 1)*(c + d*x)^n, x) <-- FreeQ([a, b, c, d, m, n], x) && PolyQ(Px, x) && EqQ(PolynomialRemainder(Px, a + b*x, x), 0))
Int(Px_*(c_' + d_'*x_)^n_'/(a_' + b_'*x_), x_Symbol) := (Int(ExpandIntegrand(1/Sqrt(c + d*x), Px*(c + d*x)^(n + 1/2)/(a + b*x), x), x) <-- FreeQ([a, b, c, d, n], x) && PolyQ(Px, x) && ILtQ(n + 1/2, 0) && GtQ(Expon(Px, x), 2))
Int(Px_*(a_' + b_'*x_)^m_'*(c_' + d_'*x_)^n_', x_Symbol) := (Int(ExpandIntegrand(Px*(a + b*x)^m*(c + d*x)^n, x), x) <-- FreeQ([a, b, c, d, m, n], x) && PolyQ(Px, x) && (IntegersQ(m, n) || IGtQ(m, -2)) && GtQ(Expon(Px, x), 2))
Int(Px_*(a_' + b_'*x_)^m_*(c_' + d_'*x_)^n_', x_Symbol) := (With([Qx = PolynomialQuotient(Px, a + b*x, x), R = PolynomialRemainder(Px, a + b*x, x)], R*(a + b*x)^(m + 1)*(c + d*x)^(n + 1)/((m + 1)*(b*c - a*d)) + 1/((m + 1)*(b*c - a*d))* Int((a + b*x)^(m + 1)*(c + d*x)^n* ExpandToSum((m + 1)*(b*c - a*d)*Qx - d*R*(m + n + 2), x), x)) <-- FreeQ([a, b, c, d, n], x) && PolyQ(Px, x) && ILtQ(m, -1) && GtQ(Expon(Px, x), 2))
Int(Px_*(a_' + b_'*x_)^m_*(c_' + d_'*x_)^n_', x_Symbol) := (With([Qx = PolynomialQuotient(Px, a + b*x, x), R = PolynomialRemainder(Px, a + b*x, x)], R*(a + b*x)^(m + 1)*(c + d*x)^(n + 1)/((m + 1)*(b*c - a*d)) + 1/((m + 1)*(b*c - a*d))* Int((a + b*x)^(m + 1)*(c + d*x)^n* ExpandToSum((m + 1)*(b*c - a*d)*Qx - d*R*(m + n + 2), x), x)) <-- FreeQ([a, b, c, d, n], x) && PolyQ(Px, x) && LtQ(m, -1) && GtQ(Expon(Px, x), 2))
Int(Px_*(a_' + b_'*x_)^m_'*(c_' + d_'*x_)^n_', x_Symbol) := (With([q = Expon(Px, x), k = Coeff(Px, x, Expon(Px, x))], (k*(a + b*x)^(m + q)*(c + d*x)^(n + 1)/(d*b^q*(m + n + q + 1)) + 1/(d*b^q*(m + n + q + 1))*Int((a + b*x)^m*(c + d*x)^n* ExpandToSum( d*b^q*(m + n + q + 1)*Px - d*k*(m + n + q + 1)*(a + b*x)^q - k*(b*c - a*d)*(m + q)*(a + b*x)^(q - 1), x), x) <-- NeQ(m + n + q + 1, 0))) <-- FreeQ([a, b, c, d, m, n], x) && PolyQ(Px, x) && GtQ(Expon(Px, x), 2))
end
