int_rules_4_5_7 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.5.7 (d trig)^m (a+b (c sec)^n)^p =#
Int(u_'*(a_ + b_'*sec(e_' + f_'*x_)^2)^p_, x_Symbol) := (b^p*Int(ActivateTrig(u*tan(e + f*x)^(2*p)), x) <-- FreeQ([a, b, e, f, p], x) && EqQ(a + b, 0) && IntegerQ(p))
Int(u_'*(a_ + b_'*sec(e_' + f_'*x_)^2)^p_, x_Symbol) := (Int(ActivateTrig(u*(b*tan(e + f*x)^2)^p), x) <-- FreeQ([a, b, e, f, p], x) && EqQ(a + b, 0))
Int((b_'*sec(e_' + f_'*x_)^2)^p_, x_Symbol) := (With([ff = FreeFactors(Tan(e + f*x), x)], b*ff/f* Subst(Int((b + b*ff^2*x^2)^(p - 1), x), x, Tan(e + f*x)/ff)) <-- FreeQ([b, e, f, p], x) && Not(IntegerQ(p)))
Int((b_'*(c_'*sec(e_' + f_'*x_))^n_)^p_, x_Symbol) := (b^IntPart(p)*(b*(c*Sec(e + f*x))^n)^ FracPart(p)/(c*Sec(e + f*x))^(n*FracPart(p))* Int((c*Sec(e + f*x))^(n*p), x) <-- FreeQ([b, c, e, f, n, p], x) && Not(IntegerQ(p)))
Int(tan(e_' + f_'*x_)^m_'*(b_'*sec(e_' + f_'*x_)^2)^p_', x_Symbol) := (b/(2*f)*Subst(Int((-1 + x)^((m - 1)/2)*(b*x)^(p - 1), x), x, Sec(e + f*x)^2) <-- FreeQ([b, e, f, p], x) && Not(IntegerQ(p)) && IntegerQ((m - 1)/2))
Int(u_'*(b_'*sec(e_' + f_'*x_)^n_)^p_, x_Symbol) := (With([ff = FreeFactors(Sec(e + f*x), x)], (b*ff^n)^ IntPart(p)*(b*Sec(e + f*x)^n)^ FracPart(p)/(Sec(e + f*x)/ff)^(n*FracPart(p))* Int(ActivateTrig(u)*(Sec(e + f*x)/ff)^(n*p), x)) <-- FreeQ([b, e, f, n, p], x) && Not(IntegerQ(p)) && IntegerQ(n) && (EqQ(u, 1) || MatchQ(u, ((d_'*trig_(e + f*x))^m_' <-- FreeQ([d, m], x) && MemberQ([sin, cos, tan, cot, sec, csc], trig)))))
Int(u_'*(b_'*(c_'*sec(e_' + f_'*x_))^n_)^p_, x_Symbol) := (b^IntPart(p)*(b*(c*Sec(e + f*x))^n)^ FracPart(p)/(c*Sec(e + f*x))^(n*FracPart(p))* Int(ActivateTrig(u)*(c*Sec(e + f*x))^(n*p), x) <-- FreeQ([b, c, e, f, n, p], x) && Not(IntegerQ(p)) && Not(IntegerQ(n)) && (EqQ(u, 1) || MatchQ(u, ((d_'*trig_(e + f*x))^m_' <-- FreeQ([d, m], x) && MemberQ([sin, cos, tan, cot, sec, csc], trig)))))
Int(1/(a_ + b_'*sec(e_' + f_'*x_)^2), x_Symbol) := (x/a - b/a*Int(1/(b + a*Cos(e + f*x)^2), x) <-- FreeQ([a, b, e, f], x) && NeQ(a + b, 0))
Int((a_ + b_'*sec(e_' + f_'*x_)^2)^p_, x_Symbol) := (With([ff = FreeFactors(Tan(e + f*x), x)], ff/f* Subst(Int((a + b + b*ff^2*x^2)^p/(1 + ff^2*x^2), x), x, Tan(e + f*x)/ff)) <-- FreeQ([a, b, e, f, p], x) && NeQ(a + b, 0) && NeQ(p, -1))
Int((a_ + b_'*sec(e_' + f_'*x_)^4)^p_, x_Symbol) := (With([ff = FreeFactors(Tan(e + f*x), x)], ff/f* Subst(Int((a + b + 2*b*ff^2*x^2 + b*ff^4*x^4)^p/(1 + ff^2*x^2), x), x, Tan(e + f*x)/ff)) <-- FreeQ([a, b, e, f, p], x) && IntegerQ(2*p))
Int((a_ + b_'*sec(e_' + f_'*x_)^n_)^p_, x_Symbol) := (With([ff = FreeFactors(Tan(e + f*x), x)], ff/f* Subst(Int((a + b*(1 + ff^2*x^2)^(n/2))^p/(1 + ff^2*x^2), x), x, Tan(e + f*x)/ff)) <-- FreeQ([a, b, e, f, p], x) && IntegerQ(n/2) && IGtQ(p, -2))
Int((a_ + b_'*(c_'*sec(e_' + f_'*x_))^n_)^p_, x_Symbol) := (Unintegrable((a + b*(c*Sec(e + f*x))^n)^p, x) <-- FreeQ([a, b, c, e, f, n, p], x))
Int(sin(e_' + f_'*x_)^m_*(a_ + b_'*sec(e_' + f_'*x_)^n_)^p_', x_Symbol) := (With([ff = FreeFactors(Tan(e + f*x), x)], ff^(m + 1)/f* Subst(Int( x^m*ExpandToSum(a + b*(1 + ff^2*x^2)^(n/2), x)^ p/(1 + ff^2*x^2)^(m/2 + 1), x), x, Tan(e + f*x)/ff)) <-- FreeQ([a, b, e, f, p], x) && IntegerQ(m/2) && IntegerQ(n/2))
Int(sin(e_' + f_'*x_)^m_'*(a_ + b_'*sec(e_' + f_'*x_)^n_)^p_', x_Symbol) := (With([ff = FreeFactors(Cos(e + f*x), x)], -ff/f* Subst(Int((1 - ff^2*x^2)^((m - 1)/2)*(b + a*(ff*x)^n)^ p/(ff*x)^(n*p), x), x, Cos(e + f*x)/ff)) <-- FreeQ([a, b, e, f], x) && IntegerQ((m - 1)/2) && IntegerQ(n) && IntegerQ(p))
Int(sin(e_' + f_'*x_)^m_'*(a_ + b_'*(c_'*sec(e_' + f_'*x_))^n_)^p_', x_Symbol) := (With([ff = FreeFactors(Cos(e + f*x), x)], 1/(f*ff^m)* Subst(Int((-1 + ff^2*x^2)^((m - 1)/2)*(a + b*(c*ff*x)^n)^p/ x^(m + 1), x), x, Sec(e + f*x)/ff)) <-- FreeQ([a, b, c, e, f, n, p], x) && IntegerQ((m - 1)/2) && (GtQ(m, 0) || EqQ(n, 2) || EqQ(n, 4)))
Int((d_'*sin(e_' + f_'*x_))^m_'*(a_ + b_'*(c_'*sec(e_' + f_'*x_))^n_)^ p_', x_Symbol) := (Unintegrable((d*Sin(e + f*x))^m*(a + b*(c*Sec(e + f*x))^n)^p, x) <-- FreeQ([a, b, c, d, e, f, m, n, p], x))
Int((d_'*cos(e_' + f_'*x_))^m_*(a_ + b_'*sec(e_' + f_'*x_)^n_')^p_', x_Symbol) := (d^(n*p)*Int((d*Cos(e + f*x))^(m - n*p)*(b + a*Cos(e + f*x)^n)^p, x) <-- FreeQ([a, b, d, e, f, m, n, p], x) && Not(IntegerQ(m)) && IntegersQ(n, p))
Int((d_'*cos(e_' + f_'*x_))^m_*(a_ + b_'*(c_'*sec(e_' + f_'*x_))^n_)^ p_, x_Symbol) := ((d*Cos(e + f*x))^FracPart(m)*(Sec(e + f*x)/d)^ FracPart(m)* Int((Sec(e + f*x)/d)^(-m)*(a + b*(c*Sec(e + f*x))^n)^p, x) <-- FreeQ([a, b, c, d, e, f, m, n, p], x) && Not(IntegerQ(m)))
Int(tan(e_' + f_'*x_)^m_'*(a_ + b_'*sec(e_' + f_'*x_)^n_)^p_', x_Symbol) := (Module([ff = FreeFactors(Cos(e + f*x), x)], -1/(f*ff^(m + n*p - 1))* Subst(Int((1 - ff^2*x^2)^((m - 1)/2)*(b + a*(ff*x)^n)^p/ x^(m + n*p), x), x, Cos(e + f*x)/ff)) <-- FreeQ([a, b, e, f, n], x) && IntegerQ((m - 1)/2) && IntegerQ(n) && IntegerQ(p))
Int(tan(e_' + f_'*x_)^m_'*(a_ + b_'*(c_'*sec(e_' + f_'*x_))^n_)^p_', x_Symbol) := (With([ff = FreeFactors(Sec(e + f*x), x)], 1/f*Subst( Int((-1 + ff^2*x^2)^((m - 1)/2)*(a + b*(c*ff*x)^n)^p/x, x), x, Sec(e + f*x)/ff)) <-- FreeQ([a, b, c, e, f, n, p], x) && IntegerQ((m - 1)/2) && (GtQ(m, 0) || EqQ(n, 2) || EqQ(n, 4) || IGtQ(p, 0) || IntegersQ(2*n, p)))
Int((d_'*tan(e_' + f_'*x_))^m_*(b_'*sec(e_' + f_'*x_)^2)^p_', x_Symbol) := (With([ff = FreeFactors(Tan(e + f*x), x)], b*ff/f* Subst(Int((d*ff*x)^m*(b + b*ff^2*x^2)^(p - 1), x), x, Tan(e + f*x)/ff)) <-- FreeQ([b, d, e, f, m, p], x))
Int((d_'*tan(e_' + f_'*x_))^m_*(a_ + b_'*sec(e_' + f_'*x_)^n_)^p_', x_Symbol) := (With([ff = FreeFactors(Tan(e + f*x), x)], ff/f* Subst(Int((d*ff*x)^ m*(a + b*(1 + ff^2*x^2)^(n/2))^p/(1 + ff^2*x^2), x), x, Tan(e + f*x)/ff)) <-- FreeQ([a, b, d, e, f, m, p], x) && IntegerQ(n/2) && (IntegerQ(m/2) || EqQ(n, 2)))
Int((d_'*tan(e_' + f_'*x_))^m_*(b_'*(c_'*sec(e_' + f_'*x_))^n_)^p_', x_Symbol) := (d*(d*Tan(e + f*x))^(m - 1)*(b*(c*Sec(e + f*x))^n)^ p/(f*(p*n + m - 1)) - d^2*(m - 1)/(p*n + m - 1)* Int((d*Tan(e + f*x))^(m - 2)*(b*(c*Sec(e + f*x))^n)^p, x) <-- FreeQ([b, c, d, e, f, p, n], x) && GtQ(m, 1) && NeQ(p*n + m - 1, 0) && IntegersQ(2*p*n, 2*m))
Int((d_'*tan(e_' + f_'*x_))^m_*(b_'*(c_'*sec(e_' + f_'*x_))^n_)^p_', x_Symbol) := ((d*Tan(e + f*x))^(m + 1)*(b*(c*Sec(e + f*x))^n)^ p/(d*f*(m + 1)) - (p*n + m + 1)/(d^2*(m + 1))* Int((d*Tan(e + f*x))^(m + 2)*(b*(c*Sec(e + f*x))^n)^p, x) <-- FreeQ([b, c, d, e, f, p, n], x) && LtQ(m, -1) && NeQ(p*n + m + 1, 0) && IntegersQ(2*p*n, 2*m))
Int((d_'*tan(e_' + f_'*x_))^m_'*(a_ + b_'*(c_'*sec(e_' + f_'*x_))^n_)^ p_', x_Symbol) := (Unintegrable((d*Tan(e + f*x))^m*(a + b*(c*Sec(e + f*x))^n)^p, x) <-- FreeQ([a, b, c, d, e, f, m, n, p], x))
Int((d_'*cot(e_' + f_'*x_))^m_*(a_ + b_'*(c_'*sec(e_' + f_'*x_))^n_)^ p_, x_Symbol) := ((d*Cot(e + f*x))^FracPart(m)*(Tan(e + f*x)/d)^ FracPart(m)* Int((Tan(e + f*x)/d)^(-m)*(a + b*(c*Sec(e + f*x))^n)^p, x) <-- FreeQ([a, b, c, d, e, f, m, n, p], x) && Not(IntegerQ(m)))
Int(sec(e_' + f_'*x_)^m_*(a_ + b_'*sec(e_' + f_'*x_)^n_)^p_, x_Symbol) := (With([ff = FreeFactors(Tan(e + f*x), x)], ff/f* Subst(Int((1 + ff^2*x^2)^(m/2 - 1)* ExpandToSum(a + b*(1 + ff^2*x^2)^(n/2), x)^p, x), x, Tan(e + f*x)/ff)) <-- FreeQ([a, b, e, f, p], x) && IntegerQ(m/2) && IntegerQ(n/2))
Int(sec(e_' + f_'*x_)^m_'*(a_ + b_'*sec(e_' + f_'*x_)^n_)^p_, x_Symbol) := (With([ff = FreeFactors(Sin(e + f*x), x)], ff/f* Subst(Int( ExpandToSum(b + a*(1 - ff^2*x^2)^(n/2), x)^ p/(1 - ff^2*x^2)^((m + n*p + 1)/2), x), x, Sin(e + f*x)/ff)) <-- FreeQ([a, b, e, f], x) && IntegerQ((m - 1)/2) && IntegerQ(n/2) && IntegerQ(p))
Int(sec(e_' + f_'*x_)^m_'*(a_ + b_'*sec(e_' + f_'*x_)^n_)^p_, x_Symbol) := (With([ff = FreeFactors(Sin(e + f*x), x)], ff/f* Subst(Int((a + b/(1 - ff^2*x^2)^(n/2))^ p/(1 - ff^2*x^2)^((m + 1)/2), x), x, Sin(e + f*x)/ff)) <-- FreeQ([a, b, e, f, p], x) && IntegerQ((m - 1)/2) && IntegerQ(n/2) && Not(IntegerQ(p)))
Int(sec(e_' + f_'*x_)^m_'*(a_ + b_'*sec(e_' + f_'*x_)^n_)^p_, x_Symbol) := (Int(ExpandTrig(sec(e + f*x)^m*(a + b*sec(e + f*x)^n)^p, x), x) <-- FreeQ([a, b, e, f], x) && IntegersQ(m, n, p))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*(c_'*sec(e_' + f_'*x_))^n_)^ p_', x_Symbol) := (Unintegrable((d*Sec(e + f*x))^m*(a + b*(c*Sec(e + f*x))^n)^p, x) <-- FreeQ([a, b, c, d, e, f, m, n, p], x))
Int((d_'*csc(e_' + f_'*x_))^m_*(a_ + b_'*(c_'*sec(e_' + f_'*x_))^n_)^ p_, x_Symbol) := ((d*Csc(e + f*x))^FracPart(m)*(Sin(e + f*x)/d)^ FracPart(m)* Int((Sin(e + f*x)/d)^(-m)*(a + b*(c*Sec(e + f*x))^n)^p, x) <-- FreeQ([a, b, c, d, e, f, m, n, p], x) && Not(IntegerQ(m)))
end