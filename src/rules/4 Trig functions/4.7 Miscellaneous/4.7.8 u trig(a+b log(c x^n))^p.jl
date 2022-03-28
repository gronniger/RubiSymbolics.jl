int_rules_4_7_8 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.7.8 u trig(a+b log(c x^n))^p =#
Int(Sin(d_'*(a_' + b_'*Log(c_'*x_^n_'))), x_Symbol) := (x*Sin(d*(a + b*Log(c*x^n)))/(b^2*d^2*n^2 + 1) - b*d*n*x*Cos(d*(a + b*Log(c*x^n)))/(b^2*d^2*n^2 + 1) <-- FreeQ([a, b, c, d, n], x) && NeQ(b^2*d^2*n^2 + 1, 0))
Int(Cos(d_'*(a_' + b_'*Log(c_'*x_^n_'))), x_Symbol) := (x*Cos(d*(a + b*Log(c*x^n)))/(b^2*d^2*n^2 + 1) + b*d*n*x*Sin(d*(a + b*Log(c*x^n)))/(b^2*d^2*n^2 + 1) <-- FreeQ([a, b, c, d, n], x) && NeQ(b^2*d^2*n^2 + 1, 0))
Int(Sin(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_, x_Symbol) := (x*Sin(d*(a + b*Log(c*x^n)))^p/(b^2*d^2*n^2*p^2 + 1) - b*d*n*p*x*Cos(d*(a + b*Log(c*x^n)))* Sin(d*(a + b*Log(c*x^n)))^(p - 1)/(b^2*d^2*n^2*p^2 + 1) + b^2*d^2*n^2*p*(p - 1)/(b^2*d^2*n^2*p^2 + 1)* Int(Sin(d*(a + b*Log(c*x^n)))^(p - 2), x) <-- FreeQ([a, b, c, d, n], x) && IGtQ(p, 1) && NeQ(b^2*d^2*n^2*p^2 + 1, 0))
Int(Cos(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_, x_Symbol) := (x*Cos(d*(a + b*Log(c*x^n)))^p/(b^2*d^2*n^2*p^2 + 1) + b*d*n*p*x*Cos(d*(a + b*Log(c*x^n)))^(p - 1)* Sin(d*(a + b*Log(c*x^n)))/(b^2*d^2*n^2*p^2 + 1) + b^2*d^2*n^2*p*(p - 1)/(b^2*d^2*n^2*p^2 + 1)* Int(Cos(d*(a + b*Log(c*x^n)))^(p - 2), x) <-- FreeQ([a, b, c, d, n], x) && IGtQ(p, 1) && NeQ(b^2*d^2*n^2*p^2 + 1, 0))
Int(Sin(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (1/(2^p*b^p*d^p*p^p)* Int(ExpandIntegrand((ℯ^(a*b*d^2*p)*x^(-1/p) - ℯ^(-a*b*d^2*p)*x^(1/p))^p, x), x) <-- FreeQ([a, b, d], x) && IGtQ(p, 0) && EqQ(b^2*d^2*p^2 + 1, 0))
Int(Cos(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (1/2^p*Int( ExpandIntegrand((ℯ^(a*b*d^2*p)*x^(-1/p) + ℯ^(-a*b*d^2*p)*x^(1/p))^ p, x), x) <-- FreeQ([a, b, d], x) && IGtQ(p, 0) && EqQ(b^2*d^2*p^2 + 1, 0))
#= Int[Sin[d_.*(a_.+b_.*Log[x_])]^p_.,x_Symbol] :=  1/((-2*I)^p*E^(I*a*d*p))*Int[(1-E^(2*I*a*d)*x^(2*I*b*d))^p/x^(I*b*d*p) ,x] /; FreeQ[{a,b,d},x] && IntegerQ[p] =#
#= Int[Cos[d_.*(a_.+b_.*Log[x_])]^p_.,x_Symbol] :=  1/(2^p*E^(I*a*d*p))*Int[(1+E^(2*I*a*d)*x^(2*I*b*d))^p/x^(I*b*d*p),x] /;  FreeQ[{a,b,d},x] && IntegerQ[p] =#
Int(Sin(d_'*(a_' + b_'*Log(x_)))^p_, x_Symbol) := (Sin(d*(a + b*Log(x)))^p*x^(im*b*d*p)/(1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p* Int((1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p), x) <-- FreeQ([a, b, d, p], x) && Not(IntegerQ(p)))
Int(Cos(d_'*(a_' + b_'*Log(x_)))^p_, x_Symbol) := (Cos(d*(a + b*Log(x)))^p*x^(im*b*d*p)/(1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p* Int((1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p), x) <-- FreeQ([a, b, d, p], x) && Not(IntegerQ(p)))
Int(Sin(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := (x/(n*(c*x^n)^(1/n))* Subst(Int(x^(1/n - 1)*Sin(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int(Cos(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := (x/(n*(c*x^n)^(1/n))* Subst(Int(x^(1/n - 1)*Cos(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int((e_'*x_)^m_'*Sin(d_'*(a_' + b_'*Log(c_'*x_^n_'))), x_Symbol) := ((m + 1)*(e*x)^(m + 1)* Sin(d*(a + b*Log(c*x^n)))/(b^2*d^2*e*n^2 + e*(m + 1)^2) - b*d*n*(e*x)^(m + 1)* Cos(d*(a + b*Log(c*x^n)))/(b^2*d^2*e*n^2 + e*(m + 1)^2) <-- FreeQ([a, b, c, d, e, m, n], x) && NeQ(b^2*d^2*n^2 + (m + 1)^2, 0))
Int((e_'*x_)^m_'*Cos(d_'*(a_' + b_'*Log(c_'*x_^n_'))), x_Symbol) := ((m + 1)*(e*x)^(m + 1)* Cos(d*(a + b*Log(c*x^n)))/(b^2*d^2*e*n^2 + e*(m + 1)^2) + b*d*n*(e*x)^(m + 1)* Sin(d*(a + b*Log(c*x^n)))/(b^2*d^2*e*n^2 + e*(m + 1)^2) <-- FreeQ([a, b, c, d, e, m, n], x) && NeQ(b^2*d^2*n^2 + (m + 1)^2, 0))
Int((e_'*x_)^m_'*Sin(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_, x_Symbol) := ((m + 1)*(e*x)^(m + 1)* Sin(d*(a + b*Log(c*x^n)))^p/(b^2*d^2*e*n^2*p^2 + e*(m + 1)^2) - b*d*n*p*(e*x)^(m + 1)*Cos(d*(a + b*Log(c*x^n)))* Sin(d*(a + b*Log(c*x^n)))^(p - 1)/(b^2*d^2*e*n^2*p^2 + e*(m + 1)^2) + b^2*d^2*n^2*p*(p - 1)/(b^2*d^2*n^2*p^2 + (m + 1)^2)* Int((e*x)^m*Sin(d*(a + b*Log(c*x^n)))^(p - 2), x) <-- FreeQ([a, b, c, d, e, m, n], x) && IGtQ(p, 1) && NeQ(b^2*d^2*n^2*p^2 + (m + 1)^2, 0))
Int((e_'*x_)^m_'*Cos(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_, x_Symbol) := ((m + 1)*(e*x)^(m + 1)* Cos(d*(a + b*Log(c*x^n)))^p/(b^2*d^2*e*n^2*p^2 + e*(m + 1)^2) + b*d*n*p*(e*x)^(m + 1)*Sin(d*(a + b*Log(c*x^n)))* Cos(d*(a + b*Log(c*x^n)))^(p - 1)/(b^2*d^2*e*n^2*p^2 + e*(m + 1)^2) + b^2*d^2*n^2*p*(p - 1)/(b^2*d^2*n^2*p^2 + (m + 1)^2)* Int((e*x)^m*Cos(d*(a + b*Log(c*x^n)))^(p - 2), x) <-- FreeQ([a, b, c, d, e, m, n], x) && IGtQ(p, 1) && NeQ(b^2*d^2*n^2*p^2 + (m + 1)^2, 0))
Int((e_'*x_)^m_'*Sin(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := ((m + 1)^p/(2^p*b^p*d^p*p^p)* Int( ExpandIntegrand((e*x)^ m*(ℯ^(a*b*d^2*p/(m + 1))*x^(-(m + 1)/p) - ℯ^(-a*b*d^2*p/(m + 1))*x^((m + 1)/p))^p, x), x) <-- FreeQ([a, b, d, e, m], x) && IGtQ(p, 0) && EqQ(b^2*d^2*p^2 + (m + 1)^2, 0))
Int((e_'*x_)^m_'*Cos(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (1/2^p*Int( ExpandIntegrand((e*x)^ m*(ℯ^(a*b*d^2*p/(m + 1))*x^(-(m + 1)/p) + ℯ^(-a*b*d^2*p/(m + 1))*x^((m + 1)/p))^p, x), x) <-- FreeQ([a, b, d, e, m], x) && IGtQ(p, 0) && EqQ(b^2*d^2*p^2 + (m + 1)^2, 0))
#= Int[(e_.*x_)^m_.*Sin[d_.*(a_.+b_.*Log[x_])]^p_.,x_Symbol] :=  1/((-2*I)^p*E^(I*a*d*p))*Int[(e*x)^m*(1-E^(2*I*a*d)*x^(2*I*b*d))^p/x^( I*b*d*p),x] /; FreeQ[{a,b,d,e,m},x] && IntegerQ[p] =#
#= Int[(e_.*x_)^m_.*Cos[d_.*(a_.+b_.*Log[x_])]^p_.,x_Symbol] :=  1/(2^p*E^(I*a*d*p))*Int[(e*x)^m*(1+E^(2*I*a*d)*x^(2*I*b*d))^p/x^(I*b* d*p),x] /; FreeQ[{a,b,d,e,m},x] && IntegerQ[p] =#
Int((e_'*x_)^m_'*Sin(d_'*(a_' + b_'*Log(x_)))^p_, x_Symbol) := (Sin(d*(a + b*Log(x)))^p*x^(im*b*d*p)/(1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p* Int((e*x)^m*(1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p), x) <-- FreeQ([a, b, d, e, m, p], x) && Not(IntegerQ(p)))
Int((e_'*x_)^m_'*Cos(d_'*(a_' + b_'*Log(x_)))^p_, x_Symbol) := (Cos(d*(a + b*Log(x)))^p*x^(im*b*d*p)/(1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p* Int((e*x)^m*(1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p), x) <-- FreeQ([a, b, d, e, m, p], x) && Not(IntegerQ(p)))
Int((e_'*x_)^m_'*Sin(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := ((e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst(Int(x^((m + 1)/n - 1)*Sin(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, e, m, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int((e_'*x_)^m_'*Cos(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := ((e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst(Int(x^((m + 1)/n - 1)*Cos(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, e, m, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int((h_'*(e_' + f_'*Log(g_'*x_^m_')))^q_'* Sin(d_'*(a_' + b_'*Log(c_'*x_^n_'))), x_Symbol) := (im*ℯ^(-im*a*d)*(c*x^n)^(-im*b*d)/(2*x^(-im*b*d*n))* Int(x^(-im*b*d*n)*(h*(e + f*Log(g*x^m)))^q, x) - im*ℯ^(im*a*d)*(c*x^n)^(im*b*d)/(2*x^(im*b*d*n))* Int(x^(im*b*d*n)*(h*(e + f*Log(g*x^m)))^q, x) <-- FreeQ([a, b, c, d, e, f, g, h, m, n, q], x))
Int((h_'*(e_' + f_'*Log(g_'*x_^m_')))^q_'* Cos(d_'*(a_' + b_'*Log(c_'*x_^n_'))), x_Symbol) := (ℯ^(-im*a*d)*(c*x^n)^(-im*b*d)/(2*x^(-im*b*d*n))* Int(x^(-im*b*d*n)*(h*(e + f*Log(g*x^m)))^q, x) + ℯ^(im*a*d)*(c*x^n)^(im*b*d)/(2*x^(im*b*d*n))* Int(x^(im*b*d*n)*(h*(e + f*Log(g*x^m)))^q, x) <-- FreeQ([a, b, c, d, e, f, g, h, m, n, q], x))
Int((i_'*x_)^r_'*(h_'*(e_' + f_'*Log(g_'*x_^m_')))^q_'* Sin(d_'*(a_' + b_'*Log(c_'*x_^n_'))), x_Symbol) := (im*ℯ^(-im*a*d)*(i*x)^r*(c*x^n)^(-im*b*d)/(2*x^(r - im*b*d*n))* Int(x^(r - im*b*d*n)*(h*(e + f*Log(g*x^m)))^q, x) - im*ℯ^(im*a*d)*(i*x)^r*(c*x^n)^(im*b*d)/(2*x^(r + im*b*d*n))* Int(x^(r + im*b*d*n)*(h*(e + f*Log(g*x^m)))^q, x) <-- FreeQ([a, b, c, d, e, f, g, h, i, m, n, q, r], x))
Int((i_'*x_)^r_'*(h_'*(e_' + f_'*Log(g_'*x_^m_')))^q_'* Cos(d_'*(a_' + b_'*Log(c_'*x_^n_'))), x_Symbol) := (ℯ^(-im*a*d)*(i*x)^r*(c*x^n)^(-im*b*d)/(2*x^(r - im*b*d*n))* Int(x^(r - im*b*d*n)*(h*(e + f*Log(g*x^m)))^q, x) + ℯ^(im*a*d)*(i*x)^r*(c*x^n)^(im*b*d)/(2*x^(r + im*b*d*n))* Int(x^(r + im*b*d*n)*(h*(e + f*Log(g*x^m)))^q, x) <-- FreeQ([a, b, c, d, e, f, g, h, i, m, n, q, r], x))
Int(Tan(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (Int(((im - im*ℯ^(2*im*a*d)*x^(2*im*b*d))/(1 + ℯ^(2*im*a*d)*x^(2*im*b*d)))^ p, x) <-- FreeQ([a, b, d, p], x))
Int(Cot(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (Int(((-im - im*ℯ^(2*im*a*d)*x^(2*im*b*d))/(1 - ℯ^(2*im*a*d)*x^(2*im*b*d)))^ p, x) <-- FreeQ([a, b, d, p], x))
Int(Tan(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := (x/(n*(c*x^n)^(1/n))* Subst(Int(x^(1/n - 1)*Tan(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int(Cot(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := (x/(n*(c*x^n)^(1/n))* Subst(Int(x^(1/n - 1)*Cot(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int((e_'*x_)^m_'*Tan(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (Int((e*x)^ m*((im - im*ℯ^(2*im*a*d)*x^(2*im*b*d))/(1 + ℯ^(2*im*a*d)*x^(2*im*b*d)))^p, x) <-- FreeQ([a, b, d, e, m, p], x))
Int((e_'*x_)^m_'*Cot(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (Int((e*x)^ m*((-im - im*ℯ^(2*im*a*d)*x^(2*im*b*d))/(1 - ℯ^(2*im*a*d)*x^(2*im*b*d)))^p, x) <-- FreeQ([a, b, d, e, m, p], x))
Int((e_'*x_)^m_'*Tan(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := ((e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst(Int(x^((m + 1)/n - 1)*Tan(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, e, m, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int((e_'*x_)^m_'*Cot(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := ((e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst(Int(x^((m + 1)/n - 1)*Cot(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, e, m, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int(Sec(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (2^p*ℯ^(im*a*d*p)*Int(x^(im*b*d*p)/(1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p, x) <-- FreeQ([a, b, d], x) && IntegerQ(p))
Int(Csc(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := ((-2*im)^p*ℯ^(im*a*d*p)* Int(x^(im*b*d*p)/(1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p, x) <-- FreeQ([a, b, d], x) && IntegerQ(p))
Int(Sec(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (Sec(d*(a + b*Log(x)))^p*(1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p)* Int(x^(im*b*d*p)/(1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p, x) <-- FreeQ([a, b, d, p], x) && Not(IntegerQ(p)))
Int(Csc(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (Csc(d*(a + b*Log(x)))^p*(1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p)* Int(x^(im*b*d*p)/(1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p, x) <-- FreeQ([a, b, d, p], x) && Not(IntegerQ(p)))
Int(Sec(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := (x/(n*(c*x^n)^(1/n))* Subst(Int(x^(1/n - 1)*Sec(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int(Csc(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := (x/(n*(c*x^n)^(1/n))* Subst(Int(x^(1/n - 1)*Csc(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int((e_'*x_)^m_'*Sec(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (2^p*ℯ^(im*a*d*p)* Int((e*x)^m*x^(im*b*d*p)/(1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p, x) <-- FreeQ([a, b, d, e, m], x) && IntegerQ(p))
Int((e_'*x_)^m_'*Csc(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := ((-2*im)^p*ℯ^(im*a*d*p)* Int((e*x)^m*x^(im*b*d*p)/(1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p, x) <-- FreeQ([a, b, d, e, m], x) && IntegerQ(p))
Int((e_'*x_)^m_'*Sec(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (Sec(d*(a + b*Log(x)))^p*(1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p)* Int((e*x)^m*x^(im*b*d*p)/(1 + ℯ^(2*im*a*d)*x^(2*im*b*d))^p, x) <-- FreeQ([a, b, d, e, m, p], x) && Not(IntegerQ(p)))
Int((e_'*x_)^m_'*Csc(d_'*(a_' + b_'*Log(x_)))^p_', x_Symbol) := (Csc(d*(a + b*Log(x)))^p*(1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p)* Int((e*x)^m*x^(im*b*d*p)/(1 - ℯ^(2*im*a*d)*x^(2*im*b*d))^p, x) <-- FreeQ([a, b, d, e, m, p], x) && Not(IntegerQ(p)))
Int((e_'*x_)^m_'*Sec(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := ((e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst(Int(x^((m + 1)/n - 1)*Sec(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, e, m, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int((e_'*x_)^m_'*Csc(d_'*(a_' + b_'*Log(c_'*x_^n_')))^p_', x_Symbol) := ((e*x)^(m + 1)/(e*n*(c*x^n)^((m + 1)/n))* Subst(Int(x^((m + 1)/n - 1)*Csc(d*(a + b*Log(x)))^p, x), x, c*x^n) <-- FreeQ([a, b, c, d, e, m, n, p], x) && (NeQ(c, 1) || NeQ(n, 1)))
Int(Sin(a_'*x_*Log(b_'*x_))*Log(b_'*x_), x_Symbol) := (-Cos(a*x*Log(b*x))/a - Int(Sin(a*x*Log(b*x)), x) <-- FreeQ([a, b], x))
Int(Cos(a_'*x_*Log(b_'*x_))*Log(b_'*x_), x_Symbol) := (Sin(a*x*Log(b*x))/a - Int(Cos(a*x*Log(b*x)), x) <-- FreeQ([a, b], x))
Int(x_^m_'*Sin(a_'*x_^n_'*Log(b_'*x_))*Log(b_'*x_), x_Symbol) := (-Cos(a*x^n*Log(b*x))/(a*n) - 1/n*Int(x^m*Sin(a*x^n*Log(b*x)), x) <-- FreeQ([a, b, m, n], x) && EqQ(m, n - 1))
Int(x_^m_'*Cos(a_'*x_^n_'*Log(b_'*x_))*Log(b_'*x_), x_Symbol) := (Sin(a*x^n*Log(b*x))/(a*n) - 1/n*Int(x^m*Cos(a*x^n*Log(b*x)), x) <-- FreeQ([a, b, m, n], x) && EqQ(m, n - 1))
end
