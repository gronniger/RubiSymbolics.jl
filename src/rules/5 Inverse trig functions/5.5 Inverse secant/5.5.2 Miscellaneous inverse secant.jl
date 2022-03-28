int_rules_5_5_2 = @theory begin

#= ::Subsection::Closed:: =#
#= 5.5.2 Miscellaneous inverse secant =#
Int(ArcSec(c_ + d_'*x_), x_Symbol) := ((c + d*x)*ArcSec(c + d*x)/d - Int(1/((c + d*x)*Sqrt(1 - 1/(c + d*x)^2)), x) <-- FreeQ([c, d], x))
Int(ArcCsc(c_ + d_'*x_), x_Symbol) := ((c + d*x)*ArcCsc(c + d*x)/d + Int(1/((c + d*x)*Sqrt(1 - 1/(c + d*x)^2)), x) <-- FreeQ([c, d], x))
Int((a_' + b_'*ArcSec(c_ + d_'*x_))^p_', x_Symbol) := (1/d*Subst(Int((a + b*ArcSec(x))^p, x), x, c + d*x) <-- FreeQ([a, b, c, d], x) && IGtQ(p, 0))
Int((a_' + b_'*ArcCsc(c_ + d_'*x_))^p_', x_Symbol) := (1/d*Subst(Int((a + b*ArcCsc(x))^p, x), x, c + d*x) <-- FreeQ([a, b, c, d], x) && IGtQ(p, 0))
Int((a_' + b_'*ArcSec(c_ + d_'*x_))^p_, x_Symbol) := (Unintegrable((a + b*ArcSec(c + d*x))^p, x) <-- FreeQ([a, b, c, d, p], x) && Not(IGtQ(p, 0)))
Int((a_' + b_'*ArcCsc(c_ + d_'*x_))^p_, x_Symbol) := (Unintegrable((a + b*ArcCsc(c + d*x))^p, x) <-- FreeQ([a, b, c, d, p], x) && Not(IGtQ(p, 0)))
Int((e_' + f_'*x_)^m_'*(a_' + b_'*ArcSec(c_ + d_'*x_))^p_', x_Symbol) := (1/d*Subst(Int((f*x/d)^m*(a + b*ArcSec(x))^p, x), x, c + d*x) <-- FreeQ([a, b, c, d, e, f, m], x) && EqQ(d*e - c*f, 0) && IGtQ(p, 0))
Int((e_' + f_'*x_)^m_'*(a_' + b_'*ArcCsc(c_ + d_'*x_))^p_', x_Symbol) := (1/d*Subst(Int((f*x/d)^m*(a + b*ArcCsc(x))^p, x), x, c + d*x) <-- FreeQ([a, b, c, d, e, f, m], x) && EqQ(d*e - c*f, 0) && IGtQ(p, 0))
Int((e_' + f_'*x_)^m_'*(a_' + b_'*ArcSec(c_ + d_'*x_))^p_', x_Symbol) := (1/d^(m + 1)* Subst(Int((a + b*x)^p*Sec(x)*Tan(x)*(d*e - c*f + f*Sec(x))^m, x), x, ArcSec(c + d*x)) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(p, 0) && IntegerQ(m))
Int((e_' + f_'*x_)^m_'*(a_' + b_'*ArcCsc(c_ + d_'*x_))^p_', x_Symbol) := (-1/d^(m + 1)* Subst(Int((a + b*x)^p*Csc(x)*Cot(x)*(d*e - c*f + f*Csc(x))^m, x), x, ArcCsc(c + d*x)) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(p, 0) && IntegerQ(m))
Int((e_' + f_'*x_)^m_'*(a_' + b_'*ArcSec(c_ + d_'*x_))^p_', x_Symbol) := (1/d*Subst(Int(((d*e - c*f)/d + f*x/d)^m*(a + b*ArcSec(x))^p, x), x, c + d*x) <-- FreeQ([a, b, c, d, e, f, m], x) && IGtQ(p, 0))
Int((e_' + f_'*x_)^m_'*(a_' + b_'*ArcCsc(c_ + d_'*x_))^p_', x_Symbol) := (1/d*Subst(Int(((d*e - c*f)/d + f*x/d)^m*(a + b*ArcCsc(x))^p, x), x, c + d*x) <-- FreeQ([a, b, c, d, e, f, m], x) && IGtQ(p, 0))
Int((e_' + f_'*x_)^m_'*(a_' + b_'*ArcSec(c_ + d_'*x_))^p_, x_Symbol) := (Unintegrable((e + f*x)^m*(a + b*ArcSec(c + d*x))^p, x) <-- FreeQ([a, b, c, d, e, f, m, p], x) && Not(IGtQ(p, 0)))
Int((e_' + f_'*x_)^m_'*(a_' + b_'*ArcCsc(c_ + d_'*x_))^p_, x_Symbol) := (Unintegrable((e + f*x)^m*(a + b*ArcCsc(c + d*x))^p, x) <-- FreeQ([a, b, c, d, e, f, m, p], x) && Not(IGtQ(p, 0)))
Int(u_'*ArcSec(c_'/(a_' + b_'*x_^n_'))^m_', x_Symbol) := (Int(u*ArcCos(a/c + b*x^n/c)^m, x) <-- FreeQ([a, b, c, n, m], x))
Int(u_'*ArcCsc(c_'/(a_' + b_'*x_^n_'))^m_', x_Symbol) := (Int(u*ArcSin(a/c + b*x^n/c)^m, x) <-- FreeQ([a, b, c, n, m], x))
Int(u_'*f_^(c_'*ArcSec(a_' + b_'*x_)^n_'), x_Symbol) := (1/b*Subst( Int(ReplaceAll(u, Rule(x, -a/b + Sec(x)/b))*f^(c*x^n)*Sec(x)*Tan(x), x), x, ArcSec(a + b*x)) <-- FreeQ([a, b, c, f], x) && IGtQ(n, 0))
Int(u_'*f_^(c_'*ArcCsc(a_' + b_'*x_)^n_'), x_Symbol) := (-1/b* Subst(Int( ReplaceAll(u, Rule(x, -a/b + Csc(x)/b))*f^(c*x^n)*Csc(x)*Cot(x), x), x, ArcCsc(a + b*x)) <-- FreeQ([a, b, c, f], x) && IGtQ(n, 0))
Int(ArcSec(u_), x_Symbol) := (x*ArcSec(u) - u/Sqrt(u^2)* Int(SimplifyIntegrand(x*D(u, x)/(u*Sqrt(u^2 - 1)), x), x) <-- InverseFunctionFreeQ(u, x) && Not(FunctionOfExponentialQ(u, x)))
Int(ArcCsc(u_), x_Symbol) := (x*ArcCsc(u) + u/Sqrt(u^2)* Int(SimplifyIntegrand(x*D(u, x)/(u*Sqrt(u^2 - 1)), x), x) <-- InverseFunctionFreeQ(u, x) && Not(FunctionOfExponentialQ(u, x)))
Int((c_' + d_'*x_)^m_'*(a_' + b_'*ArcSec(u_)), x_Symbol) := ((c + d*x)^(m + 1)*(a + b*ArcSec(u))/(d*(m + 1)) - b*u/(d*(m + 1)*Sqrt(u^2))* Int(SimplifyIntegrand((c + d*x)^(m + 1)*D(u, x)/(u*Sqrt(u^2 - 1)), x), x) <-- FreeQ([a, b, c, d, m], x) && NeQ(m, -1) && InverseFunctionFreeQ(u, x) && Not(FunctionOfQ((c + d*x)^(m + 1), u, x)) && Not(FunctionOfExponentialQ(u, x)))
Int((c_' + d_'*x_)^m_'*(a_' + b_'*ArcCsc(u_)), x_Symbol) := ((c + d*x)^(m + 1)*(a + b*ArcCsc(u))/(d*(m + 1)) + b*u/(d*(m + 1)*Sqrt(u^2))* Int(SimplifyIntegrand((c + d*x)^(m + 1)*D(u, x)/(u*Sqrt(u^2 - 1)), x), x) <-- FreeQ([a, b, c, d, m], x) && NeQ(m, -1) && InverseFunctionFreeQ(u, x) && Not(FunctionOfQ((c + d*x)^(m + 1), u, x)) && Not(FunctionOfExponentialQ(u, x)))
Int(v_*(a_' + b_'*ArcSec(u_)), x_Symbol) := (With([w = IntHide(v, x)], (Dist((a + b*ArcSec(u)), w, x) - b*u/Sqrt(u^2)* Int(SimplifyIntegrand(w*D(u, x)/(u*Sqrt(u^2 - 1)), x), x) <-- InverseFunctionFreeQ(w, x))) <-- FreeQ([a, b], x) && InverseFunctionFreeQ(u, x) && Not(MatchQ(v, ((c_' + d_'*x)^m_' <-- FreeQ([c, d, m], x)))))
Int(v_*(a_' + b_'*ArcCsc(u_)), x_Symbol) := (With([w = IntHide(v, x)], (Dist((a + b*ArcCsc(u)), w, x) + b*u/Sqrt(u^2)* Int(SimplifyIntegrand(w*D(u, x)/(u*Sqrt(u^2 - 1)), x), x) <-- InverseFunctionFreeQ(w, x))) <-- FreeQ([a, b], x) && InverseFunctionFreeQ(u, x) && Not(MatchQ(v, ((c_' + d_'*x)^m_' <-- FreeQ([c, d, m], x)))))
end
