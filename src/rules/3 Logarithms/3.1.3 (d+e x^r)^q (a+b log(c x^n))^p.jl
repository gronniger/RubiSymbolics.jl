int_rules_3_1_3 = @theory begin

#= ::Subsection::Closed:: =#
#= 3.1.3 (d+e x^r)^q (a+b log(c x^n))^p =#
Int((d_ + e_'*x_^r_')^q_'*(a_' + b_'*Log(c_'*x_^n_')), x_Symbol) := (With([u = IntHide((d + e*x^r)^q, x)], u*(a + b*Log(c*x^n)) - b*n*Int(SimplifyIntegrand(u/x, x), x)) <-- FreeQ([a, b, c, d, e, n, r], x) && IGtQ(q, 0))
Int((d_ + e_'*x_^r_')^q_'*(a_' + b_'*Log(c_'*x_^n_')), x_Symbol) := (With([u = IntHide((d + e*x^r)^q, x)], Dist((a + b*Log(c*x^n)), u) - b*n*Int(SimplifyIntegrand(u/x, x), x)) <-- FreeQ([a, b, c, d, e, n, r], x) && IGtQ(q, 0))
Int((d_ + e_'*x_^r_')^q_*(a_' + b_'*Log(c_'*x_^n_')), x_Symbol) := (x*(d + e*x^r)^(q + 1)*(a + b*Log(c*x^n))/d - b*n/d*Int((d + e*x^r)^(q + 1), x) <-- FreeQ([a, b, c, d, e, n, q, r], x) && EqQ(r*(q + 1) + 1, 0))
#= Int[(a_.+b_.*Log[c_.*x_^n_.])^p_./(d_+e_.*x_^r_.),x_Symbol] :=  1/e*Int[(a+b*Log[c*x^n])^p/x^r,x] - d/e*Int[(a+b*Log[c*x^n])^p/(x^r*(d+e*x^r)),x] /;  FreeQ[{a,b,c,d,e,n,r},x] && IGtQ[p,0] && IGtQ[r,0] =#
Int(Log(c_'*x_)/(d_ + e_'*x_), x_Symbol) := (-1/e*PolyLog(2, 1 - c*x) <-- FreeQ([c, d, e], x) && EqQ(e + c*d, 0))
Int((a_' + b_'*Log(c_'*x_))/(d_ + e_'*x_), x_Symbol) := ((a + b*Log(-c*d/e))*Log(d + e*x)/e + b*Int(Log(-e*x/d)/(d + e*x), x) <-- FreeQ([a, b, c, d, e], x) && GtQ(-c*d/e, 0))
Int((a_' + b_'*Log(c_'*x_^n_'))^p_'/(d_ + e_'*x_), x_Symbol) := (Log(1 + e*x/d)*(a + b*Log(c*x^n))^p/e - b*n*p/e*Int(Log(1 + e*x/d)*(a + b*Log(c*x^n))^(p - 1)/x, x) <-- FreeQ([a, b, c, d, e, n], x) && IGtQ(p, 0))
Int((a_' + b_'*Log(c_'*x_^n_'))^p_'/(d_ + e_'*x_)^2, x_Symbol) := (x*(a + b*Log(c*x^n))^p/(d*(d + e*x)) - b*n*p/d*Int((a + b*Log(c*x^n))^(p - 1)/(d + e*x), x) <-- FreeQ([a, b, c, d, e, n, p], x) && GtQ(p, 0))
Int((d_ + e_'*x_)^q_'*(a_' + b_'*Log(c_'*x_^n_'))^p_', x_Symbol) := ((d + e*x)^(q + 1)*(a + b*Log(c*x^n))^ p/(e*(q + 1)) - b*n*p/(e*(q + 1))* Int(((d + e*x)^(q + 1)*(a + b*Log(c*x^n))^(p - 1))/x, x) <-- FreeQ([a, b, c, d, e, n, p, q], x) && GtQ(p, 0) && NeQ(q, -1) && (EqQ(p, 1) || IntegersQ(2*p, 2*q) && Not(IGtQ(q, 0)) || EqQ(p, 2) && NeQ(q, 1)))
Int((d_ + e_'*x_)^q_'*(a_' + b_'*Log(c_'*x_^n_'))^p_, x_Symbol) := (x*(d + e*x)^q*(a + b*Log(c*x^n))^(p + 1)/(b*n*(p + 1)) + d*q/(b*n*(p + 1))* Int((d + e*x)^(q - 1)*(a + b*Log(c*x^n))^(p + 1), x) - (q + 1)/(b*n*(p + 1))* Int((d + e*x)^q*(a + b*Log(c*x^n))^(p + 1), x) <-- FreeQ([a, b, c, d, e, n], x) && LtQ(p, -1) && GtQ(q, 0))
Int((d_ + e_'*x_^2)^q_'*(a_' + b_'*Log(c_'*x_^n_')), x_Symbol) := (x*(d + e*x^2)^q*(a + b*Log(c*x^n))/(2*q + 1) - b*n/(2*q + 1)*Int((d + e*x^2)^q, x) + 2*d*q/(2*q + 1)*Int((d + e*x^2)^(q - 1)*(a + b*Log(c*x^n)), x) <-- FreeQ([a, b, c, d, e, n], x) && GtQ(q, 0))
Int((a_' + b_'*Log(c_'*x_^n_'))/(d_ + e_'*x_^2)^(3/2), x_Symbol) := (x*(a + b*Log(c*x^n))/(d*Sqrt(d + e*x^2)) - b*n/d*Int(1/Sqrt(d + e*x^2), x) <-- FreeQ([a, b, c, d, e, n], x))
Int((d_ + e_'*x_^2)^q_*(a_' + b_'*Log(c_'*x_^n_')), x_Symbol) := (-x*(d + e*x^2)^(q + 1)*(a + b*Log(c*x^n))/(2* d*(q + 1)) + b*n/(2*d*(q + 1))*Int((d + e*x^2)^(q + 1), x) + (2*q + 3)/(2*d*(q + 1))* Int((d + e*x^2)^(q + 1)*(a + b*Log(c*x^n)), x) <-- FreeQ([a, b, c, d, e, n], x) && LtQ(q, -1))
Int((a_' + b_'*Log(c_'*x_^n_'))/(d_ + e_'*x_^2), x_Symbol) := (With([u = IntHide(1/(d + e*x^2), x)], u*(a + b*Log(c*x^n)) - b*n*Int(u/x, x)) <-- FreeQ([a, b, c, d, e, n], x))
Int((a_' + b_'*Log(c_'*x_^n_'))/Sqrt(d_ + e_'*x_^2), x_Symbol) := (ArcSinh(Rt(e, 2)*x/Sqrt(d))*(a + b*Log(c*x^n))/Rt(e, 2) - b*n/Rt(e, 2)*Int(ArcSinh(Rt(e, 2)*x/Sqrt(d))/x, x) <-- FreeQ([a, b, c, d, e, n], x) && GtQ(d, 0) && PosQ(e))
Int((a_' + b_'*Log(c_'*x_^n_'))/Sqrt(d_ + e_'*x_^2), x_Symbol) := (ArcSin(Rt(-e, 2)*x/Sqrt(d))*(a + b*Log(c*x^n))/Rt(-e, 2) - b*n/Rt(-e, 2)*Int(ArcSin(Rt(-e, 2)*x/Sqrt(d))/x, x) <-- FreeQ([a, b, c, d, e, n], x) && GtQ(d, 0) && NegQ(e))
Int((a_' + b_'*Log(c_'*x_^n_'))/Sqrt(d_ + e_'*x_^2), x_Symbol) := (Sqrt(1 + e/d*x^2)/Sqrt(d + e*x^2)* Int((a + b*Log(c*x^n))/Sqrt(1 + e/d*x^2), x) <-- FreeQ([a, b, c, d, e, n], x) && Not(GtQ(d, 0)))
Int((a_' + b_'*Log(c_'*x_^n_'))/(Sqrt(d1_ + e1_'*x_)* Sqrt(d2_ + e2_'*x_)), x_Symbol) := (Sqrt(1 + e1*e2/(d1*d2)*x^2)/(Sqrt(d1 + e1*x)*Sqrt(d2 + e2*x))* Int((a + b*Log(c*x^n))/Sqrt(1 + e1*e2/(d1*d2)*x^2), x) <-- FreeQ([a, b, c, d1, e1, d2, e2, n], x) && EqQ(d2*e1 + d1*e2, 0))
Int((d_ + e_'*x_^r_')^q_'*(a_' + b_'*Log(c_'*x_^n_')), x_Symbol) := (With([u = IntHide((d + e*x^r)^q, x)], (Dist((a + b*Log(c*x^n)), u, x) - b*n*Int(SimplifyIntegrand(u/x, x), x) <-- EqQ(r, 1) && IntegerQ(q - 1/2) || EqQ(r, 2) && EqQ(q, -1) || InverseFunctionFreeQ(u, x))) <-- FreeQ([a, b, c, d, e, n, q, r], x) && IntegerQ(2*q) && IntegerQ(r))
Int((d_ + e_'*x_^r_')^q_'*(a_' + b_'*Log(c_'*x_^n_'))^p_', x_Symbol) := (With([u = ExpandIntegrand((a + b*Log(c*x^n))^p, (d + e*x^r)^q, x)], (Int(u, x) <-- SumQ(u))) <-- FreeQ([a, b, c, d, e, n, p, q, r], x) && IntegerQ(q) && (GtQ(q, 0) || IGtQ(p, 0) && IntegerQ(r)))
Int((d_ + e_'*x_^r_')^q_'*(a_' + b_'*Log(c_'*x_^n_'))^p_', x_Symbol) := (Unintegrable((d + e*x^r)^q*(a + b*Log(c*x^n))^p, x) <-- FreeQ([a, b, c, d, e, n, p, q, r], x))
Int(u_^q_'*(a_' + b_'*Log(c_'*x_^n_'))^p_', x_Symbol) := (Int(ExpandToSum(u, x)^q*(a + b*Log(c*x^n))^p, x) <-- FreeQ([a, b, c, n, p, q], x) && BinomialQ(u, x) && Not(BinomialMatchQ(u, x)))
end
