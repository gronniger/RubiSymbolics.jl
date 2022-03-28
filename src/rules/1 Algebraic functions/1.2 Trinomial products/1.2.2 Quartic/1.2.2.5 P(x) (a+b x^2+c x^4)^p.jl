int_rules_1_2_2_5 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.2.2.5 P(x) (a+b x^2+c x^4)^p =#
Int(Pq_*(a_ + b_'*x_^2 + c_'*x_^4)^p_', x_Symbol) := (Int(ExpandIntegrand(Pq*(a + b*x^2 + c*x^4)^p, x), x) <-- FreeQ([a, b, c], x) && PolyQ(Pq, x) && IGtQ(p, 0))
Int(Pq_*(a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (Int(x*PolynomialQuotient(Pq, x, x)*(a + b*x^2 + c*x^4)^p, x) <-- FreeQ([a, b, c, p], x) && PolyQ(Pq, x) && EqQ(Coeff(Pq, x, 0), 0) && Not(MatchQ(Pq, (x^m_'*u_' <-- IntegerQ(m)))))
Int(Pq_*(a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (Module([q = Expon(Pq, x), k], Int(Sum( Coeff(Pq, x, 2*k)*x^(2*k), [k, 0, q/2])*(a + b*x^2 + c*x^4)^p, x) + Int( x*Sum(Coeff(Pq, x, 2*k + 1)*x^(2*k), [k, 0, (q - 1)/2])*(a + b*x^2 + c*x^4)^p, x)) <-- FreeQ([a, b, c, p], x) && PolyQ(Pq, x) && Not(PolyQ(Pq, x^2)))
Int(Pq_*(a_ + b_'*x_^2 + c_'*x_^4)^p_', x_Symbol) := (With([d = Coeff(Pq, x, 0), e = Coeff(Pq, x, 2), f = Coeff(Pq, x, 4)], (d*x*(a + b*x^2 + c*x^4)^(p + 1)/a <-- EqQ(a*e - b*d*(2*p + 3), 0) && EqQ(a*f - c*d*(4*p + 5), 0))) <-- FreeQ([a, b, c, p], x) && PolyQ(Pq, x^2) && EqQ(Expon(Pq, x), 4))
Int(Pq_*(a_ + b_'*x_^2 + c_'*x_^4)^p_', x_Symbol) := (With([d = Coeff(Pq, x, 0), e = Coeff(Pq, x, 2), f = Coeff(Pq, x, 4), g = Coeff(Pq, x, 6)], (x*(3*a*d + (a*e - b*d*(2*p + 3))* x^2)*(a + b*x^2 + c*x^4)^(p + 1)/(3*a^2) <-- EqQ(3*a^2*g - c*(4*p + 7)*(a*e - b*d*(2*p + 3)), 0) && EqQ(3*a^2*f - 3*a*c*d*(4*p + 5) - b*(2*p + 5)*(a*e - b*d*(2*p + 3)), 0))) <-- FreeQ([a, b, c, p], x) && PolyQ(Pq, x^2) && EqQ(Expon(Pq, x), 6))
Int(Pq_/(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (Int(ExpandIntegrand(Pq/(a + b*x^2 + c*x^4), x), x) <-- FreeQ([a, b, c], x) && PolyQ(Pq, x^2) && Expon(Pq, x^2) > 1)
Int(Pq_*(a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := ((a + b*x^2 + c*x^4)^ FracPart(p)/((4*c)^IntPart(p)*(b + 2*c*x^2)^(2*FracPart(p)))* Int(Pq*(b + 2*c*x^2)^(2*p), x) <-- FreeQ([a, b, c, p], x) && PolyQ(Pq, x^2) && Expon(Pq, x^2) > 1 && EqQ(b^2 - 4*a*c, 0))
Int(Pq_*(a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (With([d = Coeff(PolynomialRemainder(Pq, a + b*x^2 + c*x^4, x), x, 0), e = Coeff(PolynomialRemainder(Pq, a + b*x^2 + c*x^4, x), x, 2)], x*(a + b*x^2 + c*x^4)^(p + 1)*(a*b*e - d*(b^2 - 2*a*c) - c*(b*d - 2*a*e)*x^2)/(2*a*(p + 1)*(b^2 - 4*a*c)) + 1/(2*a*(p + 1)*(b^2 - 4*a*c))*Int((a + b*x^2 + c*x^4)^(p + 1)* ExpandToSum( 2*a*(p + 1)*(b^2 - 4*a*c)* PolynomialQuotient(Pq, a + b*x^2 + c*x^4, x) + b^2*d*(2*p + 3) - 2*a*c*d*(4*p + 5) - a*b*e + c*(4*p + 7)*(b*d - 2*a*e)*x^2, x), x)) <-- FreeQ([a, b, c], x) && PolyQ(Pq, x^2) && Expon(Pq, x^2) > 1 && NeQ(b^2 - 4*a*c, 0) && LtQ(p, -1))
Int(Pq_*(a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (With([q = Expon(Pq, x^2), e = Coeff(Pq, x^2, Expon(Pq, x^2))], e*x^(2*q - 3)*(a + b*x^2 + c*x^4)^(p + 1)/(c*(2*q + 4*p + 1)) + 1/(c*(2*q + 4*p + 1))*Int((a + b*x^2 + c*x^4)^p* ExpandToSum( c*(2*q + 4*p + 1)*Pq - a*e*(2*q - 3)*x^(2*q - 4) - b*e*(2*q + 2*p - 1)*x^(2*q - 2) - c*e*(2*q + 4*p + 1)*x^(2*q), x), x)) <-- FreeQ([a, b, c, p], x) && PolyQ(Pq, x^2) && Expon(Pq, x^2) > 1 && NeQ(b^2 - 4*a*c, 0) && Not(LtQ(p, -1)))
Int(Pq_*Q4_^p_, x_Symbol) := (With([a = Coeff(Q4, x, 0), b = Coeff(Q4, x, 1), c = Coeff(Q4, x, 2), d = Coeff(Q4, x, 3), e = Coeff(Q4, x, 4)], (Subst( Int(SimplifyIntegrand( ReplaceAll(Pq, Rule(x, -d/(4*e) + x))*(a + d^4/(256*e^3) - b*d/(8*e) + (c - 3*d^2/(8*e))*x^2 + e*x^4)^p, x), x), x, d/(4*e) + x) <-- EqQ(d^3 - 4*c*d*e + 8*b*e^2, 0) && NeQ(d, 0))) <-- FreeQ(p, x) && PolyQ(Pq, x) && PolyQ(Q4, x, 4) && Not(IGtQ(p, 0)))
end
