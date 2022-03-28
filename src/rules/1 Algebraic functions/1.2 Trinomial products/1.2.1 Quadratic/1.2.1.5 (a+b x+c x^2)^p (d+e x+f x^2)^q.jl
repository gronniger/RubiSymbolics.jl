int_rules_1_2_1_5 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.2.1.5 (a+b x+c x^2)^p (d+e x+f x^2)^q =#
Int((a_ + b_'*x_ + c_'*x_^2)^p_'*(d_ + e_'*x_ + f_'*x_^2)^q_', x_Symbol) := ((c/f)^p*Int((d + e*x + f*x^2)^(p + q), x) <-- FreeQ([a, b, c, d, e, f, p, q], x) && EqQ(c*d - a*f, 0) && EqQ(b*d - a*e, 0) && (IntegerQ(p) || GtQ(c/f, 0)) && (Not(IntegerQ(q)) || LeafCount(d + e*x + f*x^2) <= LeafCount(a + b*x + c*x^2)))
Int((a_ + b_'*x_ + c_'*x_^2)^p_*(d_ + e_'*x_ + f_'*x_^2)^q_', x_Symbol) := (a^IntPart(p)*(a + b*x + c*x^2)^ FracPart(p)/(d^IntPart(p)*(d + e*x + f*x^2)^FracPart(p))* Int((d + e*x + f*x^2)^(p + q), x) <-- FreeQ([a, b, c, d, e, f, p, q], x) && EqQ(c*d - a*f, 0) && EqQ(b*d - a*e, 0) && Not(IntegerQ(p)) && Not(IntegerQ(q)) && Not(GtQ(c/f, 0)))
Int((a_ + b_'*x_ + c_'*x_^2)^p_*(d_ + e_'*x_ + f_'*x_^2)^q_', x_Symbol) := ((a + b*x + c*x^2)^ FracPart(p)/((4*c)^IntPart(p)*(b + 2*c*x)^(2*FracPart(p)))* Int((b + 2*c*x)^(2*p)*(d + e*x + f*x^2)^q, x) <-- FreeQ([a, b, c, d, e, f, p, q], x) && EqQ(b^2 - 4*a*c, 0) && Not(IntegerQ(p)))
Int((a_ + b_'*x_ + c_'*x_^2)^p_*(d_ + f_'*x_^2)^q_', x_Symbol) := ((a + b*x + c*x^2)^ FracPart(p)/((4*c)^IntPart(p)*(b + 2*c*x)^(2*FracPart(p)))* Int((b + 2*c*x)^(2*p)*(d + f*x^2)^q, x) <-- FreeQ([a, b, c, d, f, p, q], x) && EqQ(b^2 - 4*a*c, 0) && Not(IntegerQ(p)))
#= Int[(a_+b_.*x_+c_.*x_^2)^p_*(d_.+e_.*x_+f_.*x_^2)^q_,x_Symbol] :=   1/(2^(2*p+2*q+1)*c*(-c/(b^2-4*a*c))^p*(-f/(e^2-4*d*f))^q)* Subst[Int[(1-x^2/(b^2-4*a*c))^p*(1+e*x^2/(b*(4*c*d-b*e)))^q,x],x, b+2*c*x] /; FreeQ[{a,b,c,d,e,f,p,q},x] && NeQ[b^2-4*a*c,0] &&  NeQ[e^2-4*d*f,0] && EqQ[c*e-b*f,0] && (IntegerQ[p] || GtQ[-c/(b^2-4*a*c),0]) && (IntegerQ[q] ||  GtQ[-f/(e^2-4*d*f),0]) =#
#= Int[(a_+b_.*x_+c_.*x_^2)^p_*(d_.+e_.*x_+f_.*x_^2)^q_,x_Symbol] :=   (d+e*x+f*x^2)^q/(2^(2*p+2*q+1)*c*(-c/(b^2-4*a*c))^p*(-f*(d+e*x+f*x^2) /(e^2-4*d*f))^q)* Subst[Int[(1-x^2/(b^2-4*a*c))^p*(1+e*x^2/(b*(4*c*d-b*e)))^q,x],x, b+2*c*x] /; FreeQ[{a,b,c,d,e,f,p,q},x] && NeQ[b^2-4*a*c,0] &&  NeQ[e^2-4*d*f,0] && EqQ[c*e-b*f,0] && (IntegerQ[p] || GtQ[-c/(b^2-4*a*c),0]) && Not[IntegerQ[q] ||  GtQ[-f/(e^2-4*d*f),0]] =#
#= Int[(a_+b_.*x_+c_.*x_^2)^p_*(d_.+e_.*x_+f_.*x_^2)^q_,x_Symbol] :=   (a+b*x+c*x^2)^p*(d+e*x+f*x^2)^q/(2^(2*p+2*q+1)*c*(-c*(a+b*x+c*x^2)/( b^2-4*a*c))^p*(-f*(d+e*x+f*x^2)/(e^2-4*d*f))^q)* Subst[Int[(1-x^2/(b^2-4*a*c))^p*(1+e*x^2/(b*(4*c*d-b*e)))^q,x],x, b+2*c*x] /; FreeQ[{a,b,c,d,e,f,p,q},x] && NeQ[b^2-4*a*c,0] &&  NeQ[e^2-4*d*f,0] && EqQ[c*e-b*f,0] =#
Int((a_' + b_'*x_ + c_'*x_^2)^p_*(d_' + e_'*x_ + f_'*x_^2)^q_, x_Symbol) := ((b + 2*c*x)*(a + b*x + c*x^2)^(p + 1)*(d + e*x + f*x^2)^ q/((b^2 - 4*a*c)*(p + 1)) - (1/((b^2 - 4*a*c)*(p + 1)))* Int((a + b*x + c*x^2)^(p + 1)*(d + e*x + f*x^2)^(q - 1)* Simp(2*c*d*(2*p + 3) + b*e*q + (2*b*f*q + 2*c*e*(2*p + q + 3))*x + 2*c*f*(2*p + 2*q + 3)*x^2, x), x) <-- FreeQ([a, b, c, d, e, f], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(e^2 - 4*d*f, 0) && LtQ(p, -1) && GtQ(q, 0) && Not(IGtQ(q, 0)))
Int((a_' + b_'*x_ + c_'*x_^2)^p_*(d_' + f_'*x_^2)^q_, x_Symbol) := ((b + 2*c*x)*(a + b*x + c*x^2)^(p + 1)*(d + f*x^2)^ q/((b^2 - 4*a*c)*(p + 1)) - (1/((b^2 - 4*a*c)*(p + 1)))* Int((a + b*x + c*x^2)^(p + 1)*(d + f*x^2)^(q - 1)* Simp(2*c*d*(2*p + 3) + (2*b*f*q)*x + 2*c*f*(2*p + 2*q + 3)*x^2, x), x) <-- FreeQ([a, b, c, d, f], x) && NeQ(b^2 - 4*a*c, 0) && LtQ(p, -1) && GtQ(q, 0) && Not(IGtQ(q, 0)))
Int((a_' + c_'*x_^2)^p_*(d_' + e_'*x_ + f_'*x_^2)^q_, x_Symbol) := ((2*c*x)*(a + c*x^2)^(p + 1)*(d + e*x + f*x^2)^ q/((-4*a*c)*(p + 1)) - (1/((-4*a*c)*(p + 1)))* Int((a + c*x^2)^(p + 1)*(d + e*x + f*x^2)^(q - 1)* Simp(2*c*d*(2*p + 3) + (2*c*e*(2*p + q + 3))*x + 2*c*f*(2*p + 2*q + 3)*x^2, x), x) <-- FreeQ([a, c, d, e, f], x) && NeQ(e^2 - 4*d*f) && LtQ(p, -1) && GtQ(q, 0) && Not(IGtQ(q, 0)))
Int((a_' + b_'*x_ + c_'*x_^2)^p_*(d_' + e_'*x_ + f_'*x_^2)^q_, x_Symbol) := ((2*a*c^2*e - b^2*c*e + b^3*f + b*c*(c*d - 3*a*f) + c*(2*c^2*d + b^2*f - c*(b*e + 2*a*f))*x)*(a + b*x + c*x^2)^(p + 1)*(d + e*x + f*x^2)^(q + 1)/ ((b^2 - 4*a*c)*((c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f))*(p + 1)) - (1/((b^2 - 4*a*c)*((c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f))*(p + 1)))* Int((a + b*x + c*x^2)^(p + 1)*(d + e*x + f*x^2)^q* Simp(2*c*((c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f))*(p + 1) - (2*c^2*d + b^2*f - c*(b*e + 2*a*f))*(a*f*(p + 1) - c*d*(p + 2)) - e*(b^2*c*e - 2*a*c^2*e - b^3*f - b*c*(c*d - 3*a*f))*(p + q + 2) + (2* f*(2*a*c^2*e - b^2*c*e + b^3*f + b*c*(c*d - 3*a*f))*(p + q + 2) - (2*c^2*d + b^2*f - c*(b*e + 2*a*f))*(b*f*(p + 1) - c*e*(2*p + q + 4)))*x + c*f*(2*c^2*d + b^2*f - c*(b*e + 2*a*f))*(2*p + 2*q + 5)*x^2, x), x) <-- FreeQ([a, b, c, d, e, f, q], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(e^2 - 4*d*f, 0) && LtQ(p, -1) && NeQ((c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f), 0) && Not(Not(IntegerQ(p)) && ILtQ(q, -1)) && Not(IGtQ(q, 0)))
Int((a_' + b_'*x_ + c_'*x_^2)^p_*(d_' + f_'*x_^2)^q_, x_Symbol) := ((b^3*f + b*c*(c*d - 3*a*f) + c*(2*c^2*d + b^2*f - c*(2*a*f))*x)*(a + b*x + c*x^2)^(p + 1)*(d + f*x^2)^(q + 1)/ ((b^2 - 4*a*c)*(b^2*d*f + (c*d - a*f)^2)*(p + 1)) - (1/((b^2 - 4*a*c)*(b^2*d*f + (c*d - a*f)^2)*(p + 1)))* Int((a + b*x + c*x^2)^(p + 1)*(d + f*x^2)^q* Simp(2*c*(b^2*d*f + (c*d - a*f)^2)*(p + 1) - (2*c^2*d + b^2*f - c*(2*a*f))*(a*f*(p + 1) - c*d*(p + 2)) + (2* f*(b^3*f + b*c*(c*d - 3*a*f))*(p + q + 2) - (2*c^2*d + b^2*f - c*(2*a*f))*(b*f*(p + 1)))*x + c*f*(2*c^2*d + b^2*f - c*(2*a*f))*(2*p + 2*q + 5)*x^2, x), x) <-- FreeQ([a, b, c, d, f, q], x) && NeQ(b^2 - 4*a*c, 0) && LtQ(p, -1) && NeQ(b^2*d*f + (c*d - a*f)^2, 0) && Not(Not(IntegerQ(p)) && ILtQ(q, -1)) && Not(IGtQ(q, 0)))
Int((a_' + c_'*x_^2)^p_*(d_' + e_'*x_ + f_'*x_^2)^q_, x_Symbol) := ((2*a*c^2*e + c*(2*c^2*d - c*(2*a*f))*x)*(a + c*x^2)^(p + 1)*(d + e*x + f*x^2)^(q + 1)/ ((-4*a*c)*(a*c*e^2 + (c*d - a*f)^2)*(p + 1)) - (1/((-4*a*c)*(a*c*e^2 + (c*d - a*f)^2)*(p + 1)))* Int((a + c*x^2)^(p + 1)*(d + e*x + f*x^2)^q* Simp(2*c*((c*d - a*f)^2 - (-a*e)*(c*e))*(p + 1) - (2*c^2*d - c*(2*a*f))*(a*f*(p + 1) - c*d*(p + 2)) - e*(-2*a*c^2*e)*(p + q + 2) + (2* f*(2*a*c^2*e)*(p + q + 2) - (2*c^2*d - c*(2*a*f))*(-c* e*(2*p + q + 4)))*x + c*f*(2*c^2*d - c*(2*a*f))*(2*p + 2*q + 5)*x^2, x), x) <-- FreeQ([a, c, d, e, f, q], x) && NeQ(e^2 - 4*d*f, 0) && LtQ(p, -1) && NeQ(a*c*e^2 + (c*d - a*f)^2, 0) && Not(Not(IntegerQ(p)) && ILtQ(q, -1)) && Not(IGtQ(q, 0)))
Int((a_' + b_'*x_ + c_'*x_^2)^p_*(d_' + e_'*x_ + f_'*x_^2)^q_, x_Symbol) := ((b*f*(3*p + 2*q) - c*e*(2*p + q) + 2*c*f*(p + q)*x)*(a + b*x + c*x^2)^(p - 1)*(d + e*x + f*x^2)^(q + 1)/(2* f^2*(p + q)*(2*p + 2*q + 1)) - 1/(2*f^2*(p + q)*(2*p + 2*q + 1))* Int((a + b*x + c*x^2)^(p - 2)*(d + e*x + f*x^2)^q* Simp((b*d - a*e)*(c*e - b*f)*(1 - p)*(2*p + q) - (p + q)*(b^2*d*f*(1 - p) - a*(f*(b*e - 2*a*f)*(2*p + 2*q + 1) + c*(2*d*f - e^2*(2*p + q)))) + (2*(c*d - a*f)*(c*e - b*f)*(1 - p)*(2*p + q) - (p + q)*((b^2 - 4*a*c)*e*f*(1 - p) + b*(c*(e^2 - 4*d*f)*(2*p + q) + f*(2*c*d - b*e + 2*a*f)*(2*p + 2*q + 1))))*x + ((c*e - b*f)^2*(1 - p)*p + c*(p + q)*(f*(b*e - 2*a*f)*(4*p + 2*q - 1) - c*(2*d*f*(1 - 2*p) + e^2*(3*p + q - 1))))*x^2, x), x) <-- FreeQ([a, b, c, d, e, f, q], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(e^2 - 4*d*f, 0) && GtQ(p, 1) && NeQ(p + q, 0) && NeQ(2*p + 2*q + 1, 0) && Not(IGtQ(p, 0)) && Not(IGtQ(q, 0)))
Int((a_' + b_'*x_ + c_'*x_^2)^p_*(d_' + f_'*x_^2)^q_, x_Symbol) := ((b*(3*p + 2*q) + 2*c*(p + q)*x)*(a + b*x + c*x^2)^(p - 1)*(d + f*x^2)^(q + 1)/(2* f*(p + q)*(2*p + 2*q + 1)) - 1/(2*f*(p + q)*(2*p + 2*q + 1))* Int((a + b*x + c*x^2)^(p - 2)*(d + f*x^2)^q* Simp(b^2* d*(p - 1)*(2*p + q) - (p + q)*(b^2*d*(1 - p) - 2*a*(c*d - a*f*(2*p + 2*q + 1))) - (2*b*(c*d - a*f)*(1 - p)*(2*p + q) - 2*(p + q)* b*(2*c*d*(2*p + q) - (c*d + a*f)*(2*p + 2*q + 1)))*x + (b^2*f*p*(1 - p) + 2*c*(p + q)*(c*d*(2*p - 1) - a*f*(4*p + 2*q - 1)))*x^2, x), x) <-- FreeQ([a, b, c, d, f, q], x) && NeQ(b^2 - 4*a*c, 0) && GtQ(p, 1) && NeQ(p + q, 0) && NeQ(2*p + 2*q + 1, 0) && Not(IGtQ(p, 0)) && Not(IGtQ(q, 0)))
Int((a_' + c_'*x_^2)^p_*(d_' + e_'*x_ + f_'*x_^2)^q_, x_Symbol) := (-c*(e*(2*p + q) - 2*f*(p + q)*x)*(a + c*x^2)^(p - 1)*(d + e*x + f*x^2)^(q + 1)/(2* f^2*(p + q)*(2*p + 2*q + 1)) - 1/(2*f^2*(p + q)*(2*p + 2*q + 1))* Int((a + c*x^2)^(p - 2)*(d + e*x + f*x^2)^q* Simp(-a*c*e^2*(1 - p)*(2*p + q) + a*(p + q)*(-2*a*f^2*(2*p + 2*q + 1) + c*(2*d*f - e^2*(2*p + q))) + (2*(c*d - a*f)*(c*e)*(1 - p)*(2*p + q) + 4*a*c*e*f*(1 - p)*(p + q))*x + (p*c^2*e^2*(1 - p) - c*(p + q)*(2*a*f^2*(4*p + 2*q - 1) + c*(2*d*f*(1 - 2*p) + e^2*(3*p + q - 1))))*x^2, x), x) <-- FreeQ([a, c, d, e, f, q], x) && NeQ(e^2 - 4*d*f, 0) && GtQ(p, 1) && NeQ(p + q, 0) && NeQ(2*p + 2*q + 1, 0) && Not(IGtQ(p, 0)) && Not(IGtQ(q, 0)))
Int(1/((a_ + b_'*x_ + c_'*x_^2)*(d_ + e_'*x_ + f_'*x_^2)), x_Symbol) := (With([q = c^2*d^2 - b*c*d*e + a*c*e^2 + b^2*d*f - 2*a*c*d*f - a*b*e*f + a^2*f^2], (1/q*Int((c^2*d - b*c*e + b^2*f - a*c*f - (c^2*e - b*c*f)*x)/(a + b*x + c*x^2), x) + 1/q* Int((c*e^2 - c*d*f - b*e*f + a*f^2 + (c*e*f - b*f^2)*x)/(d + e*x + f*x^2), x) <-- NeQ(q, 0))) <-- FreeQ([a, b, c, d, e, f], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(e^2 - 4*d*f, 0))
Int(1/((a_ + b_'*x_ + c_'*x_^2)*(d_ + f_'*x_^2)), x_Symbol) := (With([q = c^2*d^2 + b^2*d*f - 2*a*c*d*f + a^2*f^2], (1/q*Int((c^2*d + b^2*f - a*c*f + b*c*f*x)/(a + b*x + c*x^2), x) - 1/q*Int((c*d*f - a*f^2 + b*f^2*x)/(d + f*x^2), x) <-- NeQ(q, 0))) <-- FreeQ([a, b, c, d, f], x) && NeQ(b^2 - 4*a*c, 0))
Int(1/((a_ + b_'*x_ + c_'*x_^2)*Sqrt(d_' + e_'*x_ + f_'*x_^2)), x_Symbol) := (-2*e* Subst(Int(1/(e*(b*e - 4*a*f) - (b*d - a*e)*x^2), x), x, (e + 2*f*x)/Sqrt(d + e*x + f*x^2)) <-- FreeQ([a, b, c, d, e, f], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(e^2 - 4*d*f, 0) && EqQ(c*e - b*f, 0))
#= Int[1/((a_+b_.*x_+c_.*x_^2)*Sqrt[d_.+e_.*x_+f_.*x_^2]),x_Symbol] :=   With[{k=Rt[(a/c-d/f)^2+(b/c-e/f)*(b*d/(c*f)-a*e/(c*f)),2]}, -2*(c*d-a*f+c*f*k+(c*e-b*f)*x)*Sqrt[(d+e*x+f*x^2)*((c*f*k)/(c*d-a*f+ c*f*k+(c*e-b*f)*x))^2]/(c*Sqrt[d+e*x+f*x^2])* Subst[Int[(1-x)/( (b*d-a*e-b*f*k-(c*d-a*f-c*f*k)^2/(c*e-b*f)+(b*d-a*e+b*f*k-(a*f- c*d-c*f*k)^2/(c*e-b*f))*x^2)* Sqrt[-f*((b*d-a*e-c*e*k)/(c*e-b*f)-(c*d-a*f-c*f*k)^2/(c*e-b*f)^ 2)-f*((b*d-a*e+c*e*k)/(c*e-b*f)-(a*f-c*d-c*f*k)^2/(c*e-b*f)^2)*x^2]), x],x, (c*d-a*f-c*f*k+(c*e-b*f)*x)/(c*d-a*f+c*f*k+(c*e-b*f)*x)]] /;  FreeQ[{a,b,c,d,e,f},x] && RationalQ[a,b,c,d,e,f] && NeQ[b^2-4*a*c,0] &&  NeQ[e^2-4*d*f,0] && NeQ[c*e-b*f,0] && LtQ[b^2-4*a*c,0] =#
#= Int[1/((a_+c_.*x_^2)*Sqrt[d_.+e_.*x_+f_.*x_^2]),x_Symbol] :=  With[{k=Rt[(a/c-d/f)^2+a*e^2/(c*f^2),2]}, -2*(c*d-a*f+c*f*k+c*e*x)*Sqrt[(d+e*x+f*x^2)*((c*f*k)/(c*d-a*f+c*f*k+ c*e*x))^2]/(c*Sqrt[d+e*x+f*x^2])* Subst[Int[(1-x)/( (-a*e-(c*d-a*f-c*f*k)^2/(c*e)+(-a*e-(a*f-c*d-c*f*k)^2/(c*e))*x^ 2)* Sqrt[-f*((-a*e-c*e*k)/(c*e)-(c*d-a*f-c*f*k)^2/(c*e)^2)-f*((-a*e+ c*e*k)/(c*e)-(a*f-c*d-c*f*k)^2/(c*e)^2)*x^2]),x],x, (c*d-a*f-c*f*k+(c*e)*x)/(c*d-a*f+c*f*k+(c*e)*x)]] /;  FreeQ[{a,c,d,e,f},x] && RationalQ[a,c,d,e,f] && NeQ[e^2-4*d*f,0] &&  LtQ[-a*c,0] =#
#= Int[1/((a_+b_.*x_+c_.*x_^2)*Sqrt[d_.+f_.*x_^2]),x_Symbol] :=  With[{k=Rt[(a/c-d/f)^2+b^2*d/(c^2*f),2]}, -2*(c*d-a*f+c*f*k-b*f*x)*Sqrt[(d+f*x^2)*((c*f*k)/(c*d-a*f+c*f*k-b*f* x))^2]/(c*Sqrt[d+f*x^2])* Subst[Int[(1-x)/( (b*d-b*f*k+(c*d-a*f-c*f*k)^2/(b*f)+(b*d+b*f*k+(a*f-c*d-c*f*k)^2/ (b*f))*x^2)* Sqrt[-f*(-d/f-(c*d-a*f-c*f*k)^2/(b*f)^2)-f*(-d/f-(a*f-c*d-c*f*k) ^2/(b*f)^2)*x^2]),x],x, (c*d-a*f-c*f*k+(-b*f)*x)/(c*d-a*f+c*f*k+(-b*f)*x)]] /;  FreeQ[{a,b,c,d,f},x] && RationalQ[a,b,c,d,f] && NeQ[b^2-4*a*c,0] &&  LtQ[b^2-4*a*c,0] =#
Int(1/((a_ + b_'*x_ + c_'*x_^2)*Sqrt(d_' + e_'*x_ + f_'*x_^2)), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], 2*c/q*Int(1/((b - q + 2*c*x)*Sqrt(d + e*x + f*x^2)), x) - 2*c/q*Int(1/((b + q + 2*c*x)*Sqrt(d + e*x + f*x^2)), x)) <-- FreeQ([a, b, c, d, e, f], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(e^2 - 4*d*f, 0) && NeQ(c*e - b*f, 0) && PosQ(b^2 - 4*a*c))
Int(1/((a_ + c_'*x_^2)*Sqrt(d_' + e_'*x_ + f_'*x_^2)), x_Symbol) := (1/2*Int(1/((a - Rt(-a*c, 2)*x)*Sqrt(d + e*x + f*x^2)), x) + 1/2*Int(1/((a + Rt(-a*c, 2)*x)*Sqrt(d + e*x + f*x^2)), x) <-- FreeQ([a, c, d, e, f], x) && NeQ(e^2 - 4*d*f, 0) && PosQ(-a*c))
Int(1/((a_ + b_'*x_ + c_'*x_^2)*Sqrt(d_ + f_'*x_^2)), x_Symbol) := (With([q = Rt(b^2 - 4*a*c, 2)], 2*c/q*Int(1/((b - q + 2*c*x)*Sqrt(d + f*x^2)), x) - 2*c/q*Int(1/((b + q + 2*c*x)*Sqrt(d + f*x^2)), x)) <-- FreeQ([a, b, c, d, f], x) && NeQ(b^2 - 4*a*c, 0) && PosQ(b^2 - 4*a*c))
Int(1/((a_' + b_'*x_ + c_'*x_^2)*Sqrt(d_' + e_'*x_ + f_'*x_^2)), x_Symbol) := (With([q = Rt((c*d - a*f)^2 - (b*d - a*e)*(c*e - b*f), 2)], 1/(2*q)* Int((c*d - a*f + q + (c*e - b*f)*x)/((a + b*x + c*x^2)* Sqrt(d + e*x + f*x^2)), x) - 1/(2*q)* Int((c*d - a*f - q + (c*e - b*f)*x)/((a + b*x + c*x^2)* Sqrt(d + e*x + f*x^2)), x)) <-- FreeQ([a, b, c, d, e, f], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(e^2 - 4*d*f, 0) && NeQ(c*e - b*f, 0) && NegQ(b^2 - 4*a*c))
Int(1/((a_' + c_'*x_^2)*Sqrt(d_' + e_'*x_ + f_'*x_^2)), x_Symbol) := (With([q = Rt((c*d - a*f)^2 + a*c*e^2, 2)], 1/(2*q)* Int((c*d - a*f + q + c*e*x)/((a + c*x^2)*Sqrt(d + e*x + f*x^2)), x) - 1/(2*q)* Int((c*d - a*f - q + c*e*x)/((a + c*x^2)*Sqrt(d + e*x + f*x^2)), x)) <-- FreeQ([a, c, d, e, f], x) && NeQ(e^2 - 4*d*f, 0) && NegQ(-a*c))
Int(1/((a_' + b_'*x_ + c_'*x_^2)*Sqrt(d_' + f_'*x_^2)), x_Symbol) := (With([q = Rt((c*d - a*f)^2 + b^2*d*f, 2)], 1/(2*q)* Int((c*d - a*f + q + (-b*f)*x)/((a + b*x + c*x^2)* Sqrt(d + f*x^2)), x) - 1/(2*q)* Int((c*d - a*f - q + (-b*f)*x)/((a + b*x + c*x^2)* Sqrt(d + f*x^2)), x)) <-- FreeQ([a, b, c, d, f], x) && NeQ(b^2 - 4*a*c, 0) && NegQ(b^2 - 4*a*c))
Int(Sqrt(a_ + b_'*x_ + c_'*x_^2)/(d_ + e_'*x_ + f_'*x_^2), x_Symbol) := (c/f*Int(1/Sqrt(a + b*x + c*x^2), x) - 1/f*Int((c*d - a*f + (c*e - b*f)*x)/(Sqrt( a + b*x + c*x^2)*(d + e*x + f*x^2)), x) <-- FreeQ([a, b, c, d, e, f], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(e^2 - 4*d*f, 0))
Int(Sqrt(a_ + b_'*x_ + c_'*x_^2)/(d_ + f_'*x_^2), x_Symbol) := (c/f*Int(1/Sqrt(a + b*x + c*x^2), x) - 1/f*Int((c*d - a*f - b*f*x)/(Sqrt(a + b*x + c*x^2)*(d + f*x^2)), x) <-- FreeQ([a, b, c, d, f], x) && NeQ(b^2 - 4*a*c, 0))
Int(Sqrt(a_ + c_'*x_^2)/(d_ + e_'*x_ + f_'*x_^2), x_Symbol) := (c/f*Int(1/Sqrt(a + c*x^2), x) - 1/f*Int((c*d - a*f + c*e*x)/(Sqrt(a + c*x^2)*(d + e*x + f*x^2)), x) <-- FreeQ([a, c, d, e, f], x) && NeQ(e^2 - 4*d*f, 0))
Int(1/(Sqrt(a_ + b_'*x_ + c_'*x_^2)*Sqrt(d_ + e_'*x_ + f_'*x_^2)), x_Symbol) := (With([r = Rt(b^2 - 4*a*c, 2)], Sqrt(b + r + 2*c*x)*Sqrt(2*a + (b + r)*x)/Sqrt(a + b*x + c*x^2)* Int(1/(Sqrt(b + r + 2*c*x)*Sqrt(2*a + (b + r)*x)* Sqrt(d + e*x + f*x^2)), x)) <-- FreeQ([a, b, c, d, e, f], x) && NeQ(b^2 - 4*a*c, 0) && NeQ(e^2 - 4*d*f, 0))
Int(1/(Sqrt(a_ + b_'*x_ + c_'*x_^2)*Sqrt(d_ + f_'*x_^2)), x_Symbol) := (With([r = Rt(b^2 - 4*a*c, 2)], Sqrt(b + r + 2*c*x)*Sqrt(2*a + (b + r)*x)/Sqrt(a + b*x + c*x^2)* Int(1/(Sqrt(b + r + 2*c*x)*Sqrt(2*a + (b + r)*x)*Sqrt(d + f*x^2)), x)) <-- FreeQ([a, b, c, d, f], x) && NeQ(b^2 - 4*a*c, 0))
Int((a_' + b_'*x_ + c_'*x_^2)^p_*(d_' + e_'*x_ + f_'*x_^2)^q_, x_Symbol) := (Unintegrable((a + b*x + c*x^2)^p*(d + e*x + f*x^2)^q, x) <-- FreeQ([a, b, c, d, e, f, p, q], x) && Not(IGtQ(p, 0)) && Not(IGtQ(q, 0)))
Int((a_ + c_'*x_^2)^p_*(d_' + e_'*x_ + f_'*x_^2)^q_, x_Symbol) := (Unintegrable((a + c*x^2)^p*(d + e*x + f*x^2)^q, x) <-- FreeQ([a, c, d, e, f, p, q], x) && Not(IGtQ(p, 0)) && Not(IGtQ(q, 0)))
Int((a_' + b_'*u_ + c_'*u_^2)^p_'*(d_' + e_'*u_ + f_'*u_^2)^q_', x_Symbol) := (1/Coefficient(u, x, 1)* Subst(Int((a + b*x + c*x^2)^p*(d + e*x + f*x^2)^q, x), x, u) <-- FreeQ([a, b, c, d, e, f, p, q], x) && LinearQ(u, x) && NeQ(u, x))
Int((a_' + c_'*u_^2)^p_'*(d_' + e_'*u_ + f_'*u_^2)^q_', x_Symbol) := (1/Coefficient(u, x, 1)* Subst(Int((a + c*x^2)^p*(d + e*x + f*x^2)^q, x), x, u) <-- FreeQ([a, c, d, e, f, p, q], x) && LinearQ(u, x) && NeQ(u, x))
end
