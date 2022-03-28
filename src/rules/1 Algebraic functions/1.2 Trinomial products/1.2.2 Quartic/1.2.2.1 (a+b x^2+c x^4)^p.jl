int_rules_1_2_2_1 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.2.2.1 (a+b x^2+c x^4)^p =#
#= Int[(a_+b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=  1/c^p*Int[(b/2+c*x^2)^(2*p),x] /; FreeQ[{a,b,c,p},x] &&  EqQ[b^2-4*a*c,0] && IntegerQ[p] =#
#= Int[1/(a_+b_.*x_^2+c_.*x_^4)^(5/4),x_Symbol] :=  2*x/(3*a*(a+b*x^2+c*x^4)^(1/4)) +  x*(2*a+b*x^2)/(6*a*(a+b*x^2+c*x^4)^(5/4)) /; FreeQ[{a,b,c},x] &&  EqQ[b^2-4*a*c,0] =#
Int((a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := ((a + b*x^2 + c*x^4)^p/(b + 2*c*x^2)^(2*p)* Int((b + 2*c*x^2)^(2*p), x) <-- FreeQ([a, b, c, p], x) && EqQ(b^2 - 4*a*c, 0) && IntegerQ(p - 1/2))
Int((a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (a^IntPart(p)*(a + b*x^2 + c*x^4)^ FracPart(p)/(1 + 2*c*x^2/b)^(2*FracPart(p))* Int((1 + 2*c*x^2/b)^(2*p), x) <-- FreeQ([a, b, c, p], x) && EqQ(b^2 - 4*a*c, 0) && Not(IntegerQ(2*p)))
Int((a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (Int(ExpandIntegrand((a + b*x^2 + c*x^4)^p, x), x) <-- FreeQ([a, b, c], x) && NeQ(b^2 - 4*a*c, 0) && IGtQ(p, 0))
Int((a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (x*(a + b*x^2 + c*x^4)^p/(4*p + 1) + 2*p/(4*p + 1)*Int((2*a + b*x^2)*(a + b*x^2 + c*x^4)^(p - 1), x) <-- FreeQ([a, b, c], x) && NeQ(b^2 - 4*a*c, 0) && GtQ(p, 0) && IntegerQ(2*p))
Int((a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (-x*(b^2 - 2*a*c + b*c*x^2)*(a + b*x^2 + c*x^4)^(p + 1)/(2* a*(p + 1)*(b^2 - 4*a*c)) + 1/(2*a*(p + 1)*(b^2 - 4*a*c))* Int((b^2 - 2*a*c + 2*(p + 1)*(b^2 - 4*a*c) + b*c*(4*p + 7)*x^2)*(a + b*x^2 + c*x^4)^(p + 1), x) <-- FreeQ([a, b, c], x) && NeQ(b^2 - 4*a*c, 0) && LtQ(p, -1) && IntegerQ(2*p))
Int(1/(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], c/q*Int(1/(b/2 - q/2 + c*x^2), x) - c/q*Int(1/(b/2 + q/2 + c*x^2), x)) <-- FreeQ([a, b, c], x) && NeQ(b^2 - 4*a*c, 0) && PosQ(b^2 - 4*a*c))
Int(1/(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(a/c, 2)], With([r = Rt(2*q - b/c, 2)], 1/(2*c*q*r)*Int((r - x)/(q - r*x + x^2), x) + 1/(2*c*q*r)*Int((r + x)/(q + r*x + x^2), x))) <-- FreeQ([a, b, c], x) && NeQ(b^2 - 4*a*c, 0) && NegQ(b^2 - 4*a*c))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], 2*Sqrt(-c)* Int(1/(Sqrt(b + q + 2*c*x^2)*Sqrt(-b + q - 2*c*x^2)), x)) <-- FreeQ([a, b, c], x) && GtQ(b^2 - 4*a*c, 0) && LtQ(c, 0))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(c/a, 4)], (1 + q^2*x^2)* Sqrt((a + b*x^2 + c*x^4)/(a*(1 + q^2*x^2)^2))/(2*q* Sqrt(a + b*x^2 + c*x^4))* EllipticF(2*ArcTan(q*x), 1/2 - b*q^2/(4*c))) <-- FreeQ([a, b, c], x) && GtQ(b^2 - 4*a*c, 0) && GtQ(c/a, 0) && LtQ(b/a, 0))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], (Sqrt(-2*a - (b - q)*x^2)* Sqrt((2*a + (b + q)*x^2)/q)/(2*Sqrt(-a)* Sqrt(a + b*x^2 + c*x^4))* EllipticF( ArcSin(x/ Sqrt((2*a + (b + q)*x^2)/(2*q))), (b + q)/(2*q)) <-- IntegerQ(q))) <-- FreeQ([a, b, c], x) && GtQ(b^2 - 4*a*c, 0) && LtQ(a, 0) && GtQ(c, 0))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], Sqrt((2*a + (b - q)*x^2)/(2*a + (b + q)*x^2))* Sqrt((2*a + (b + q)*x^2)/q)/(2*Sqrt(a + b*x^2 + c*x^4)* Sqrt(a/(2*a + (b + q)*x^2)))* EllipticF( ArcSin(x/Sqrt((2*a + (b + q)*x^2)/(2*q))), (b + q)/(2*q))) <-- FreeQ([a, b, c], x) && GtQ(b^2 - 4*a*c, 0) && LtQ(a, 0) && GtQ(c, 0))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], ((2*a + (b + q)*x^2)* Sqrt((2*a + (b - q)*x^2)/(2*a + (b + q)*x^2))/(2*a* Rt((b + q)/(2*a), 2)*Sqrt(a + b*x^2 + c*x^4))* EllipticF(ArcTan(Rt((b + q)/(2*a), 2)*x), 2*q/(b + q)) <-- PosQ((b + q)/a) && Not(PosQ((b - q)/a) && SimplerSqrtQ((b - q)/(2*a), (b + q)/(2*a))))) <-- FreeQ([a, b, c], x) && GtQ(b^2 - 4*a*c, 0))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], ((2*a + (b - q)*x^2)* Sqrt((2*a + (b + q)*x^2)/(2*a + (b - q)*x^2))/(2*a* Rt((b - q)/(2*a), 2)*Sqrt(a + b*x^2 + c*x^4))* EllipticF( ArcTan(Rt((b - q)/(2*a), 2)*x), -2*q/(b - q)) <-- PosQ((b - q)/a))) <-- FreeQ([a, b, c], x) && GtQ(b^2 - 4*a*c, 0))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], (Sqrt(1 + (b + q)*x^2/(2*a))* Sqrt(1 + (b - q)*x^2/(2*a))/(Rt(-(b + q)/(2*a), 2)* Sqrt(a + b*x^2 + c*x^4))* EllipticF( ArcSin(Rt(-(b + q)/(2*a), 2)*x), (b - q)/(b + q)) <-- NegQ((b + q)/a) && Not(NegQ((b - q)/a) && SimplerSqrtQ(-(b - q)/(2*a), -(b + q)/(2*a))))) <-- FreeQ([a, b, c], x) && GtQ(b^2 - 4*a*c, 0))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], (Sqrt(1 + (b - q)*x^2/(2*a))* Sqrt(1 + (b + q)*x^2/(2*a))/(Rt(-(b - q)/(2*a), 2)* Sqrt(a + b*x^2 + c*x^4))* EllipticF( ArcSin(Rt(-(b - q)/(2*a), 2)*x), (b + q)/(b - q)) <-- NegQ((b - q)/a))) <-- FreeQ([a, b, c], x) && GtQ(b^2 - 4*a*c, 0))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(c/a, 4)], (1 + q^2*x^2)* Sqrt((a + b*x^2 + c*x^4)/(a*(1 + q^2*x^2)^2))/(2*q* Sqrt(a + b*x^2 + c*x^4))* EllipticF(2*ArcTan(q*x), 1/2 - b*q^2/(4*c))) <-- FreeQ([a, b, c], x) && NeQ(b^2 - 4*a*c, 0) && PosQ(c/a))
Int(1/Sqrt(a_ + b_'*x_^2 + c_'*x_^4), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], Sqrt(1 + 2*c*x^2/(b - q))* Sqrt(1 + 2*c*x^2/(b + q))/Sqrt(a + b*x^2 + c*x^4)* Int(1/(Sqrt(1 + 2*c*x^2/(b - q))*Sqrt(1 + 2*c*x^2/(b + q))), x)) <-- FreeQ([a, b, c], x) && NeQ(b^2 - 4*a*c, 0) && NegQ(c/a))
Int((a_ + b_'*x_^2 + c_'*x_^4)^p_, x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], a^IntPart(p)*(a + b*x^2 + c*x^4)^ FracPart( p)/((1 + 2*c*x^2/(b + q))^FracPart(p)*(1 + 2*c*x^2/(b - q))^ FracPart(p))* Int((1 + 2*c*x^2/(b + q))^p*(1 + 2*c*x^2/(b - q))^p, x)) <-- FreeQ([a, b, c, p], x) && NeQ(b^2 - 4*a*c, 0))
Int(P4_^p_, x_Symbol) := (With([a = Coeff(P4, x, 0), b = Coeff(P4, x, 1), c = Coeff(P4, x, 2), d = Coeff(P4, x, 3), e = Coeff(P4, x, 4)], (Subst( Int(SimplifyIntegrand((a + d^4/(256*e^3) - b*d/(8*e) + (c - 3*d^2/(8*e))*x^2 + e*x^4)^p, x), x), x, d/(4*e) + x) <-- EqQ(d^3 - 4*c*d*e + 8*b*e^2, 0) && NeQ(d, 0))) <-- FreeQ(p, x) && PolyQ(P4, x, 4) && NeQ(p, 2) && NeQ(p, 3))
end
