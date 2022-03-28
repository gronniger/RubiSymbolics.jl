int_rules_1_2_2_7 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.2.2.7 P(x) (d+e x^2)^q (a+b x^2+c x^4)^p =#
Int(Px_*x_^m_/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (With([A = Coeff(Px, x, 0), B = Coeff(Px, x, 2), C = Coeff(Px, x, 4)], C*x^(m - 1)*Sqrt(a + b*x^2 + c*x^4)/(c*e*(m + 1)) - 1/(c*e*(m + 1))* Int((x^(m - 2)/((d + e*x^2)*Sqrt(a + b*x^2 + c*x^4)))* Simp(a*C*d*(m - 1) - (A*c*e*(m + 1) - C*(a*e*(m - 1) + b*d*m))* x^2 - (B*c*e*(m + 1) - C*(b*e*m + c*d*(m + 1)))*x^4, x), x)) <-- FreeQ([a, b, c, d, e], x) && PolyQ(Px, x^2, 2) && NeQ(b^2 - 4*a*c, 0) && IGtQ(m/2, 0))
Int(Px_*x_^m_/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (With([A = Coeff(Px, x, 0), B = Coeff(Px, x, 2), C = Coeff(Px, x, 4)], C*x^(m - 1)*Sqrt(a + c*x^4)/(c*e*(m + 1)) - 1/(c*e*(m + 1))*Int((x^(m - 2)/((d + e*x^2)*Sqrt(a + c*x^4)))* Simp(a*C*d*(m - 1) - (A*c*e*(m + 1) - C*a*e*(m - 1))* x^2 - (B*c*e*(m + 1) - C*c*d*(m + 1))*x^4, x), x)) <-- FreeQ([a, c, d, e], x) && PolyQ(Px, x^2, 2) && IGtQ(m/2, 0))
Int(Px_*x_^m_/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (With([A = Coeff(Px, x, 0), B = Coeff(Px, x, 2), C = Coeff(Px, x, 4)], A*x^(m + 1)*Sqrt(a + b*x^2 + c*x^4)/(a*d*(m + 1)) + 1/(a*d*(m + 1))* Int((x^(m + 2)/((d + e*x^2)*Sqrt(a + b*x^2 + c*x^4)))* Simp(a*B*d*(m + 1) - A*(a*e*(m + 1) + b*d*(m + 2)) + (a*C*d*(m + 1) - A*(b*e*(m + 2) + c*d*(m + 3)))*x^2 - A*c*e*(m + 3)*x^4, x), x)) <-- FreeQ([a, b, c, d, e], x) && PolyQ(Px, x^2, 2) && NeQ(b^2 - 4*a*c, 0) && ILtQ(m/2, 0))
Int(Px_*x_^m_/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (With([A = Coeff(Px, x, 0), B = Coeff(Px, x, 2), C = Coeff(Px, x, 4)], A*x^(m + 1)*Sqrt(a + c*x^4)/(a*d*(m + 1)) + 1/(a*d*(m + 1))*Int((x^(m + 2)/((d + e*x^2)*Sqrt(a + c*x^4)))* Simp(a*B*d*(m + 1) - A*a*e*(m + 1) + (a*C*d*(m + 1) - A*c*d*(m + 3))*x^2 - A*c*e*(m + 3)*x^4, x), x)) <-- FreeQ([a, c, d, e], x) && PolyQ(Px, x^2, 2) && ILtQ(m/2, 0))
Int(x_*Px_*(d_ + e_'*x_^2)^q_'*(a_ + b_'*x_^2 + c_'*x_^4)^p_', x_Symbol) := (1/2*Subst( Int(ReplaceAll(Px, Rule(x, Sqrt(x)))*(d + e*x)^q*(a + b*x + c*x^2)^p, x), x, x^2) <-- FreeQ([a, b, c, d, e, p, q], x) && PolyQ(Px, x^2))
Int(Pr_*(d_ + e_'*x_^2)^q_'*(a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (Int(x*PolynomialQuotient(Pr, x, x)*(d + e*x^2)^q*(a + b*x^2 + c*x^4)^ p, x) <-- FreeQ([a, b, c, d, e, p, q], x) && PolyQ(Pr, x) && EqQ(PolynomialRemainder(Pr, x, x), 0) && Not(MatchQ(Pr, (x^m_'*u_' <-- IntegerQ(m)))))
Int(Pr_*(d_ + e_'*x_^2)^q_'*(a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (Module([r = Expon(Pr, x), k], Int(Sum(Coeff(Pr, x, 2*k)*x^(2*k), [k, 0, r/2])*(d + e*x^2)^ q*(a + b*x^2 + c*x^4)^p, x) + Int( x*Sum(Coeff(Pr, x, 2*k + 1)*x^(2*k), [k, 0, (r - 1)/2])*(d + e*x^2)^q*(a + b*x^2 + c*x^4)^p, x)) <-- FreeQ([a, b, c, d, e, p, q], x) && PolyQ(Pr, x) && Not(PolyQ(Pr, x^2)))
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + b_'*x_^2 + c_'*x_^4)^p_', x_Symbol) := (Int(Px*(d + e*x^2)^(p + q)*(a/d + c/e*x^2)^p, x) <-- FreeQ([a, b, c, d, e, q], x) && NeQ(b^2 - 4*a*c, 0) && EqQ(c*d^2 - b*d*e + a*e^2, 0) && IntegerQ(p) && (PolyQ(Px, x^2) || MatchQ(Px, ((f_ + g_'*x^2)^r_' <-- FreeQ([f, g, r], x)))))
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + c_'*x_^4)^p_', x_Symbol) := (Int(Px*(d + e*x^2)^(p + q)*(a/d + c/e*x^2)^p, x) <-- FreeQ([a, c, d, e, q], x) && EqQ(c*d^2 + a*e^2, 0) && IntegerQ(p) && (PolyQ(Px, x^2) || MatchQ(Px, ((f_ + g_'*x^2)^r_' <-- FreeQ([f, g, r], x)))))
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := ((a + b*x^2 + c*x^4)^ FracPart(p)/((d + e*x^2)^FracPart(p)*(a/d + c*x^2/e)^FracPart(p))* Int(Px*(d + e*x^2)^(p + q)*(a/d + c/e*x^2)^p, x) <-- FreeQ([a, b, c, d, e, p, q], x) && NeQ(b^2 - 4*a*c, 0) && EqQ(c*d^2 - b*d*e + a*e^2, 0) && Not(IntegerQ(p)) && (PolyQ(Px, x^2) || MatchQ(Px, ((f_ + g_'*x^2)^r_' <-- FreeQ([f, g, r], x)))))
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + c_'*x_^4)^p_, x_Symbol) := ((a + c*x^4)^ FracPart(p)/((d + e*x^2)^FracPart(p)*(a/d + c*x^2/e)^FracPart(p))* Int(Px*(d + e*x^2)^(p + q)*(a/d + c/e*x^2)^p, x) <-- FreeQ([a, c, d, e, p, q], x) && EqQ(c*d^2 + a*e^2, 0) && Not(IntegerQ(p)) && (PolyQ(Px, x^2) || MatchQ(Px, ((f_ + g_'*x^2)^r_' <-- FreeQ([f, g, r], x)))))
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + b_'*x_^2 + c_'*x_^4)^p_', x_Symbol) := (Int(ExpandIntegrand(Px*(d + e*x^2)^q*(a + b*x^2 + c*x^4)^p, x), x) <-- FreeQ([a, b, c, d, e, q], x) && PolyQ(Px, x^2) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && IntegerQ(p))
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + c_'*x_^4)^p_', x_Symbol) := (Int(ExpandIntegrand(Px*(d + e*x^2)^q*(a + c*x^4)^p, x), x) <-- FreeQ([a, c, d, e, q], x) && PolyQ(Px, x^2) && NeQ(c*d^2 + a*e^2, 0) && IntegerQ(p))
Int((d_ + e_'*x_^2)^q_*P4x_/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], C*x*(d + e*x^2)^q*Sqrt(a + b*x^2 + c*x^4)/(c*(2*q + 3)) + 1/(c*(2*q + 3))* Int((d + e*x^2)^(q - 1)/Sqrt(a + b*x^2 + c*x^4)* Simp(A*c*d*(2*q + 3) - a*C*d + (c*(B*d + A*e)*(2*q + 3) - C*(2*b*d + a*e + 2*a*e*q))* x^2 + (B*c*e*(2*q + 3) - 2*C*(b*e - c*d*q + b*e*q))*x^4, x), x)) <-- FreeQ([a, b, c, d, e], x) && PolyQ(P4x, x^2) && EqQ(Expon(P4x, x), 4) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && IGtQ(q, 0))
Int((d_ + e_'*x_^2)^q_*P4x_/Sqrt(a_ + c_'*x_^4), x_Symbol) := (With([A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], C*x*(d + e*x^2)^q*Sqrt(a + c*x^4)/(c*(2*q + 3)) + 1/(c*(2*q + 3))*Int((d + e*x^2)^(q - 1)/Sqrt(a + c*x^4)* Simp(A*c*d*(2*q + 3) - a*C*d + (c*(B*d + A*e)*(2*q + 3) - a*C*e*(2*q + 1))* x^2 + (B*c*e*(2*q + 3) + 2*c*C*d*q)*x^4, x), x)) <-- FreeQ([a, c, d, e], x) && PolyQ(P4x, x^2) && EqQ(Expon(P4x, x), 4) && NeQ(c*d^2 + a*e^2, 0) && IGtQ(q, 0))
Int((d_ + e_'*x_^2)^q_*P4x_/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], -(C*d^2 - B*d*e + A*e^2)*x*(d + e*x^2)^(q + 1)* Sqrt(a + b*x^2 + c*x^4)/(2* d*(q + 1)*(c*d^2 - b*d*e + a*e^2)) + 1/(2*d*(q + 1)*(c*d^2 - b*d*e + a*e^2))* Int((d + e*x^2)^(q + 1)/Sqrt(a + b*x^2 + c*x^4)* Simp(a*d*(C*d - B*e) + A*(a*e^2*(2*q + 3) + 2*d*(c*d - b*e)*(q + 1)) - 2*((B*d - A*e)*(b*e*(q + 2) - c*d*(q + 1)) - C*d*(b*d + a*e*(q + 1)))*x^2 + c*(C*d^2 - B*d*e + A*e^2)*(2*q + 5)*x^4, x), x)) <-- FreeQ([a, b, c, d, e], x) && PolyQ(P4x, x^2) && LeQ(Expon(P4x, x), 4) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && ILtQ(q, -1))
Int((d_ + e_'*x_^2)^q_*P4x_/Sqrt(a_ + c_'*x_^4), x_Symbol) := (With([A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], -(C*d^2 - B*d*e + A*e^2)*x*(d + e*x^2)^(q + 1)* Sqrt(a + c*x^4)/(2*d*(q + 1)*(c*d^2 + a*e^2)) + 1/(2*d*(q + 1)*(c*d^2 + a*e^2))* Int((d + e*x^2)^(q + 1)/Sqrt(a + c*x^4)* Simp(a*d*(C*d - B*e) + A*(a*e^2*(2*q + 3) + 2*c*d^2*(q + 1)) + 2*d*(B*c*d - A*c*e + a*C*e)*(q + 1)*x^2 + c*(C*d^2 - B*d*e + A*e^2)*(2*q + 5)*x^4, x), x)) <-- FreeQ([a, c, d, e], x) && PolyQ(P4x, x^2) && LeQ(Expon(P4x, x), 4) && NeQ(c*d^2 + a*e^2, 0) && ILtQ(q, -1))
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (A*Subst(Int(1/(d - (b*d - 2*a*e)*x^2), x), x, x/Sqrt(a + b*x^2 + c*x^4)) <-- FreeQ([a, b, c, d, e, A, B], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && EqQ(c*d^2 - a*e^2, 0) && EqQ(B*d + A*e, 0))
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (A*Subst(Int(1/(d + 2*a*e*x^2), x), x, x/Sqrt(a + c*x^4)) <-- FreeQ([a, c, d, e, A, B], x) && NeQ(c*d^2 + a*e^2, 0) && EqQ(c*d^2 - a*e^2, 0) && EqQ(B*d + A*e, 0))
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := ((B*d + A*e)/(2*d*e)* Int(1/Sqrt(a + b*x^2 + c*x^4), x) - (B*d - A*e)/(2*d*e)* Int((d - e*x^2)/((d + e*x^2)*Sqrt(a + b*x^2 + c*x^4)), x) <-- FreeQ([a, b, c, d, e, A, B], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && EqQ(c*d^2 - a*e^2, 0) && NeQ(B*d + A*e, 0))
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := ((B*d + A*e)/(2*d*e)*Int(1/Sqrt(a + c*x^4), x) - (B*d - A*e)/(2*d*e)* Int((d - e*x^2)/((d + e*x^2)*Sqrt(a + c*x^4)), x) <-- FreeQ([a, c, d, e, A, B], x) && NeQ(c*d^2 + a*e^2, 0) && EqQ(c*d^2 - a*e^2, 0) && NeQ(B*d + A*e, 0))
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (Sqrt(A + B*x^2)*Sqrt(a/A + c*x^2/B)/Sqrt(a + b*x^2 + c*x^4)* Int(Sqrt(A + B*x^2)/((d + e*x^2)*Sqrt(a/A + c*x^2/B)), x) <-- FreeQ([a, b, c, d, e, A, B], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && EqQ(c*A^2 - b*A*B + a*B^2, 0))
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (Sqrt(A + B*x^2)*Sqrt(a/A + c*x^2/B)/Sqrt(a + c*x^4)* Int(Sqrt(A + B*x^2)/((d + e*x^2)*Sqrt(a/A + c*x^2/B)), x) <-- FreeQ([a, c, d, e, A, B], x) && NeQ(c*d^2 + a*e^2, 0) && EqQ(c*A^2 + a*B^2, 0))
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (With([q = Sqrt(b^2 - 4*a*c)], ((2*a*B - A*(b + q))/(2*a*e - d*(b + q))* Int(1/Sqrt(a + b*x^2 + c*x^4), x) - (B*d - A*e)/(2*a*e - d*(b + q))* Int((2*a + (b + q)*x^2)/((d + e*x^2)*Sqrt(a + b*x^2 + c*x^4)), x) <-- RationalQ(q))) <-- FreeQ([a, b, c, d, e, A, B], x) && GtQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && NeQ(c*A^2 - b*A*B + a*B^2, 0))
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (With([q = Sqrt(-a*c)], ((a*B - A*q)/(a*e - d*q)*Int(1/Sqrt(a + c*x^4), x) - (B*d - A*e)/(a*e - d*q)* Int((a + q*x^2)/((d + e*x^2)*Sqrt(a + c*x^4)), x) <-- RationalQ(q))) <-- FreeQ([a, c, d, e, A, B], x) && GtQ(-a*c, 0) && EqQ(c*d^2 + a*e^2, 0) && NeQ(c*A^2 + a*B^2, 0))
#= Int[(A_+B_.*x_^2)/((d_+e_.*x_^2)*Sqrt[a_+b_.*x_^2+c_.*x_^4]),x_ Symbol] := With[{q=Rt[B/A,2]}, -(B*d-A*e)*ArcTan[Rt[-b+c*d/e+a*e/d,2]*x/Sqrt[a+b*x^2+c*x^4]]/(2*d* e*Rt[-b+c*d/e+a*e/d,2]) + B*q*(c*d^2-a*e^2)*(A+B*x^2)*Sqrt[A^2*(a+b*x^2+c*x^4)/(a*(A+B*x^2)^2) ]/(4*c*d*e*(B*d-A*e)*Sqrt[a+b*x^2+c*x^4])* EllipticPi[-(B*d-A*e)^2/(4*d*e*A*B),2*ArcTan[q*x],1/2-b*A/(4*a*B)] ] /; FreeQ[{a,b,c,d,e,A,B},x] && NeQ[b^2-4*a*c,0] &&  NeQ[c*d^2-b*d*e+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a] &&  EqQ[c*A^2-a*B^2,0] =#
#= Int[(A_+B_.*x_^2)/((d_+e_.*x_^2)*Sqrt[a_+c_.*x_^4]),x_Symbol] :=  With[{q=Rt[B/A,2]}, -(B*d-A*e)*ArcTan[Rt[c*d/e+a*e/d,2]*x/Sqrt[a+c*x^4]]/(2*d*e*Rt[c*d/ e+a*e/d,2]) + B*q*(c*d^2-a*e^2)*(A+B*x^2)*Sqrt[A^2*(a+c*x^4)/(a*(A+B*x^2)^2)]/(4* c*d*e*(B*d-A*e)*Sqrt[a+c*x^4])* EllipticPi[-(B*d-A*e)^2/(4*d*e*A*B),2*ArcTan[q*x],1/2]] /;  FreeQ[{a,c,d,e,A,B},x] && NeQ[c*d^2+a*e^2,0] && NeQ[c*d^2-a*e^2,0] &&  PosQ[c/a] && EqQ[c*A^2-a*B^2,0] =#
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (With([q = Rt(B/A, 2)], -(B*d - A*e)* ArcTan(Rt(-b + c*d/e + a*e/d, 2)*x/Sqrt(a + b*x^2 + c*x^4))/(2*d* e*Rt(-b + c*d/e + a*e/d, 2)) + (B*d + A*e)*(A + B*x^2)* Sqrt(A^2*(a + b*x^2 + c*x^4)/(a*(A + B*x^2)^2))/(4*d*e*A*q* Sqrt(a + b*x^2 + c*x^4))* EllipticPi(Cancel(-(B*d - A*e)^2/(4*d*e*A*B)), 2*ArcTan(q*x), 1/2 - b*A/(4*a*B))) <-- FreeQ([a, b, c, d, e, A, B], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0) && PosQ(c/a) && EqQ(c*A^2 - a*B^2, 0))
Int((A_ + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (With([q = Rt(B/A, 2)], -(B*d - A*e)* ArcTan(Rt(c*d/e + a*e/d, 2)*x/Sqrt(a + c*x^4))/(2*d*e* Rt(c*d/e + a*e/d, 2)) + (B*d + A*e)*(A + B*x^2)* Sqrt(A^2*(a + c*x^4)/(a*(A + B*x^2)^2))/(4*d*e*A*q* Sqrt(a + c*x^4))* EllipticPi(Cancel(-(B*d - A*e)^2/(4*d*e*A*B)), 2*ArcTan(q*x), 1/2)) <-- FreeQ([a, c, d, e, A, B], x) && NeQ(c*d^2 + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0) && PosQ(c/a) && EqQ(c*A^2 - a*B^2, 0))
Int((A_' + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (With([q = Rt(c/a, 2)], (A*(c*d + a*e*q) - a*B*(e + d*q))/(c*d^2 - a*e^2)* Int(1/Sqrt(a + b*x^2 + c*x^4), x) + a*(B*d - A*e)*(e + d*q)/(c*d^2 - a*e^2)* Int((1 + q*x^2)/((d + e*x^2)*Sqrt(a + b*x^2 + c*x^4)), x)) <-- FreeQ([a, b, c, d, e, A, B], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0) && PosQ(c/a) && NeQ(c*A^2 - a*B^2, 0))
Int((A_' + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (With([q = Rt(c/a, 2)], (A*(c*d + a*e*q) - a*B*(e + d*q))/(c*d^2 - a*e^2)* Int(1/Sqrt(a + c*x^4), x) + a*(B*d - A*e)*(e + d*q)/(c*d^2 - a*e^2)* Int((1 + q*x^2)/((d + e*x^2)*Sqrt(a + c*x^4)), x)) <-- FreeQ([a, c, d, e, A, B], x) && NeQ(c*d^2 + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0) && PosQ(c/a) && NeQ(c*A^2 - a*B^2, 0))
Int((A_' + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (B/e*Int(1/Sqrt(a + b*x^2 + c*x^4), x) + (e*A - d*B)/e* Int(1/((d + e*x^2)*Sqrt(a + b*x^2 + c*x^4)), x) <-- FreeQ([a, b, c, d, e, A, B], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0) && NegQ(c/a))
Int((A_' + B_'*x_^2)/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (B/e*Int(1/Sqrt(a + c*x^4), x) + (e*A - d*B)/e* Int(1/((d + e*x^2)*Sqrt(a + c*x^4)), x) <-- FreeQ([a, c, d, e, A, B], x) && NeQ(c*d^2 + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0) && NegQ(c/a))
Int(P4x_/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (With([A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], -C/e^2*Int((d - e*x^2)/Sqrt(a + b*x^2 + c*x^4), x) + 1/e^2* Int((C*d^2 + A*e^2 + B*e^2*x^2)/((d + e*x^2)* Sqrt(a + b*x^2 + c*x^4)), x)) <-- FreeQ([a, b, c, d, e], x) && PolyQ(P4x, x^2, 2) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && EqQ(c*d^2 - a*e^2, 0))
Int(P4x_/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (With([A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], -C/e^2*Int((d - e*x^2)/Sqrt(a + c*x^4), x) + 1/e^2* Int((C*d^2 + A*e^2 + B*e^2*x^2)/((d + e*x^2)*Sqrt(a + c*x^4)), x)) <-- FreeQ([a, c, d, e], x) && PolyQ(P4x, x^2, 2) && NeQ(c*d^2 + a*e^2, 0) && EqQ(c*d^2 - a*e^2, 0))
Int(P4x_/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (With([q = Rt(c/a, 2), A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], -C/(e*q)*Int((1 - q*x^2)/Sqrt(a + b*x^2 + c*x^4), x) + 1/(c*e)* Int((A*c*e + a*C*d*q + (B*c*e - C*(c*d - a*e*q))*x^2)/((d + e*x^2)* Sqrt(a + b*x^2 + c*x^4)), x)) <-- FreeQ([a, b, c, d, e], x) && PolyQ(P4x, x^2, 2) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0) && PosQ(c/a) && Not(GtQ(b^2 - 4*a*c, 0)))
Int(P4x_/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (With([q = Rt(c/a, 2), A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], -C/(e*q)*Int((1 - q*x^2)/Sqrt(a + c*x^4), x) + 1/(c*e)* Int((A*c*e + a*C*d*q + (B*c*e - C*(c*d - a*e*q))*x^2)/((d + e*x^2)* Sqrt(a + c*x^4)), x)) <-- FreeQ([a, c, d, e], x) && PolyQ(P4x, x^2, 2) && NeQ(c*d^2 + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0) && PosQ(c/a))
Int(P4x_/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (With([A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], -1/e^2*Int((C*d - B*e - C*e*x^2)/Sqrt(a + b*x^2 + c*x^4), x) + (C*d^2 - B*d*e + A*e^2)/e^2* Int(1/((d + e*x^2)*Sqrt(a + b*x^2 + c*x^4)), x)) <-- FreeQ([a, b, c, d, e], x) && PolyQ(P4x, x^2, 2) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0))
Int(P4x_/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (With([A = Coeff(P4x, x, 0), B = Coeff(P4x, x, 2), C = Coeff(P4x, x, 4)], -1/e^2*Int((C*d - B*e - C*e*x^2)/Sqrt(a + c*x^4), x) + (C*d^2 - B*d*e + A*e^2)/e^2* Int(1/((d + e*x^2)*Sqrt(a + c*x^4)), x)) <-- FreeQ([a, c, d, e], x) && PolyQ(P4x, x^2, 2) && NeQ(c*d^2 + a*e^2, 0) && NeQ(c*d^2 - a*e^2, 0))
Int(Px_/((d_ + e_'*x_^2)*Sqrt(a_ + b_'*x_^2 + c_'*x_^4)), x_Symbol) := (With([q = Expon(Px, x)], (Coeff(Px, x, q)*x^(q - 5)*Sqrt(a + b*x^2 + c*x^4)/(c*e*(q - 3)) + 1/(c*e*(q - 3))* Int((c*e*(q - 3)*Px - Coeff(Px, x, q)* x^(q - 6)*(d + e*x^2)*(a*(q - 5) + b*(q - 4)*x^2 + c*(q - 3)*x^4))/ ((d + e*x^2)*Sqrt(a + b*x^2 + c*x^4)), x) <-- GtQ(q, 4))) <-- FreeQ([a, b, c, d, e], x) && PolyQ(Px, x) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0))
Int(Px_/((d_ + e_'*x_^2)*Sqrt(a_ + c_'*x_^4)), x_Symbol) := (With([q = Expon(Px, x)], (Coeff(Px, x, q)*x^(q - 5)*Sqrt(a + c*x^4)/(c*e*(q - 3)) + 1/(c*e*(q - 3))* Int((c*e*(q - 3)*Px - Coeff(Px, x, q)* x^(q - 6)*(d + e*x^2)*(a*(q - 5) + c*(q - 3)*x^4))/((d + e*x^2)*Sqrt(a + c*x^4)), x) <-- GtQ(q, 4))) <-- FreeQ([a, c, d, e], x) && PolyQ(Px, x) && NeQ(c*d^2 + a*e^2, 0))
#= Int[Pq_*(a_+b_.*x_^2+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=  With[{A=Coeff[PolynomialRemainder[Pq,a+b*x^2+c*x^4,x],x,0], B=Coeff[PolynomialRemainder[Pq,a+b*x^2+c*x^4,x],x,2]}, -B*x*(b^2-2*a*c+b*c*x^2)*(a+b*x^2+c*x^4)^(p+1)/(2*a*e*(p+1)*(b^2-4* a*c)) + (B*d-A*e)*x*(b^2*c*d-2*a*c^2*d-b^3*e+3*a*b*c*e+c*(b*c*d-b^2*e+2*a*c* e)*x^2)*(a+b*x^2+c*x^4)^(p+1)/ (2*a*e*(p+1)*(b^2-4*a*c)*(c*d^2-b*d*e+a*e^2)) + Int[(a+b*x^2+c*x^4)^(p+1)/(d+e*x^2)*ExpandToSum[Pq/(a+b*x^2+c*x^4)-( d+e*x^2)/(a+b*x^2+c*x^4)^(p+1)* D[-B*x*(b^2-2*a*c+b*c*x^2)*(a+b*x^2+c*x^4)^(p+1)/(2*a*e*(p+1)*(b^ 2-4*a*c)) + (B*d-A*e)*x*(b^2*c*d-2*a*c^2*d-b^3*e+3*a*b*c*e+c*(b*c*d-b^2*e+2* a*c*e)*x^2)*(a+b*x^2+c*x^4)^(p+1)/ (2*a*e*(p+1)*(b^2-4*a*c)*(c*d^2-b*d*e+a*e^2)),x],x],x]] /;  FreeQ[{a,b,c,d,e},x] && PolyQ[Pq,x^2] && Expon[Pq,x^2]>0 &&  NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] =#
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (Int(ExpandIntegrand(1/Sqrt(a + b*x^2 + c*x^4), Px*(d + e*x^2)^q*(a + b*x^2 + c*x^4)^(p + 1/2), x), x) <-- FreeQ([a, b, c, d, e], x) && PolyQ(Px, x^2) && NeQ(b^2 - 4*a*c, 0) && NeQ(c*d^2 - b*d*e + a*e^2, 0) && IntegerQ(p + 1/2) && IntegerQ(q))
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + c_'*x_^4)^p_, x_Symbol) := (Int(ExpandIntegrand(1/Sqrt(a + c*x^4), Px*(d + e*x^2)^q*(a + c*x^4)^(p + 1/2), x), x) <-- FreeQ([a, c, d, e], x) && PolyQ(Px, x^2) && NeQ(c*d^2 + a*e^2, 0) && IntegerQ(p + 1/2) && IntegerQ(q))
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + b_'*x_^2 + c_'*x_^4)^p_', x_Symbol) := (Unintegrable(Px*(d + e*x^2)^q*(a + b*x^2 + c*x^4)^p, x) <-- FreeQ([a, b, c, d, e, p, q], x) && PolyQ(Px, x))
Int(Px_*(d_ + e_'*x_^2)^q_'*(a_ + c_'*x_^4)^p_', x_Symbol) := (Unintegrable(Px*(d + e*x^2)^q*(a + c*x^4)^p, x) <-- FreeQ([a, c, d, e, p, q], x) && PolyQ(Px, x))
end