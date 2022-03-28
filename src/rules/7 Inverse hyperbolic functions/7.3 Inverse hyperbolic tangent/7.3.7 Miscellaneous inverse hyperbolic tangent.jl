int_rules_7_3_7 = @theory begin

#= ::Subsection::Closed:: =#
#= 7.3.7 Miscellaneous inverse hyperbolic tangent =#
Int(ArcTanh(a_ + b_'*x_^n_), x_Symbol) := (x*ArcTanh(a + b*x^n) - b*n*Int(x^n/(1 - a^2 - 2*a*b*x^n - b^2*x^(2*n)), x) <-- FreeQ([a, b, n], x))
Int(ArcCoth(a_ + b_'*x_^n_), x_Symbol) := (x*ArcCoth(a + b*x^n) - b*n*Int(x^n/(1 - a^2 - 2*a*b*x^n - b^2*x^(2*n)), x) <-- FreeQ([a, b, n], x))
Int(ArcTanh(a_' + b_'*x_^n_')/x_, x_Symbol) := (1/2*Int(Log(1 + a + b*x^n)/x, x) - 1/2*Int(Log(1 - a - b*x^n)/x, x) <-- FreeQ([a, b, n], x))
Int(ArcCoth(a_' + b_'*x_^n_')/x_, x_Symbol) := (1/2*Int(Log(1 + 1/(a + b*x^n))/x, x) - 1/2*Int(Log(1 - 1/(a + b*x^n))/x, x) <-- FreeQ([a, b, n], x))
Int(x_^m_'*ArcTanh(a_ + b_'*x_^n_), x_Symbol) := (x^(m + 1)*ArcTanh(a + b*x^n)/(m + 1) - b*n/(m + 1)* Int(x^(m + n)/(1 - a^2 - 2*a*b*x^n - b^2*x^(2*n)), x) <-- FreeQ([a, b], x) && RationalQ(m, n) && NeQ(m, -1) && NeQ(m + 1, n))
Int(x_^m_'*ArcCoth(a_ + b_'*x_^n_), x_Symbol) := (x^(m + 1)*ArcCoth(a + b*x^n)/(m + 1) - b*n/(m + 1)* Int(x^(m + n)/(1 - a^2 - 2*a*b*x^n - b^2*x^(2*n)), x) <-- FreeQ([a, b], x) && RationalQ(m, n) && NeQ(m, -1) && NeQ(m + 1, n))
Int(ArcTanh(a_' + b_'*f_^(c_' + d_'*x_)), x_Symbol) := (1/2*Int(Log(1 + a + b*f^(c + d*x)), x) - 1/2*Int(Log(1 - a - b*f^(c + d*x)), x) <-- FreeQ([a, b, c, d, f], x)) 
Int(ArcCoth(a_' + b_'*f_^(c_' + d_'*x_)), x_Symbol) := (1/2*Int(Log(1 + 1/(a + b*f^(c + d*x))), x) - 1/2*Int(Log(1 - 1/(a + b*f^(c + d*x))), x) <-- FreeQ([a, b, c, d, f], x)) 
Int(x_^m_'*ArcTanh(a_' + b_'*f_^(c_' + d_'*x_)), x_Symbol) := (1/2*Int(x^m*Log(1 + a + b*f^(c + d*x)), x) - 1/2*Int(x^m*Log(1 - a - b*f^(c + d*x)), x) <-- FreeQ([a, b, c, d, f], x) && IGtQ(m, 0))
Int(x_^m_'*ArcCoth(a_' + b_'*f_^(c_' + d_'*x_)), x_Symbol) := (1/2*Int(x^m*Log(1 + 1/(a + b*f^(c + d*x))), x) - 1/2*Int(x^m*Log(1 - 1/(a + b*f^(c + d*x))), x) <-- FreeQ([a, b, c, d, f], x) && IGtQ(m, 0))
Int(u_'*ArcTanh(c_'/(a_' + b_'*x_^n_'))^m_', x_Symbol) := (Int(u*ArcCoth(a/c + b*x^n/c)^m, x) <-- FreeQ([a, b, c, n, m], x))
Int(u_'*ArcCoth(c_'/(a_' + b_'*x_^n_'))^m_', x_Symbol) := (Int(u*ArcTanh(a/c + b*x^n/c)^m, x) <-- FreeQ([a, b, c, n, m], x))
Int(ArcTanh(c_'*x_/Sqrt(a_' + b_'*x_^2)), x_Symbol) := (x*ArcTanh((c*x)/Sqrt(a + b*x^2)) - c*Int(x/Sqrt(a + b*x^2), x) <-- FreeQ([a, b, c], x) && EqQ(b, c^2))
Int(ArcCoth(c_'*x_/Sqrt(a_' + b_'*x_^2)), x_Symbol) := (x*ArcCoth((c*x)/Sqrt(a + b*x^2)) - c*Int(x/Sqrt(a + b*x^2), x) <-- FreeQ([a, b, c], x) && EqQ(b, c^2))
Int(ArcTanh(c_'*x_/Sqrt(a_' + b_'*x_^2))/x_, x_Symbol) := (ArcTanh(c*x/Sqrt(a + b*x^2))*Log(x) - c*Int(Log(x)/Sqrt(a + b*x^2), x) <-- FreeQ([a, b, c], x) && EqQ(b, c^2))
Int(ArcCoth(c_'*x_/Sqrt(a_' + b_'*x_^2))/x_, x_Symbol) := (ArcCoth(c*x/Sqrt(a + b*x^2))*Log(x) - c*Int(Log(x)/Sqrt(a + b*x^2), x) <-- FreeQ([a, b, c], x) && EqQ(b, c^2))
Int((d_'*x_)^m_'*ArcTanh(c_'*x_/Sqrt(a_' + b_'*x_^2)), x_Symbol) := ((d*x)^(m + 1)* ArcTanh((c*x)/Sqrt(a + b*x^2))/(d*(m + 1)) - c/(d*(m + 1))*Int((d*x)^(m + 1)/Sqrt(a + b*x^2), x) <-- FreeQ([a, b, c, d, m], x) && EqQ(b, c^2) && NeQ(m, -1))
Int((d_'*x_)^m_'*ArcCoth(c_'*x_/Sqrt(a_' + b_'*x_^2)), x_Symbol) := ((d*x)^(m + 1)* ArcCoth((c*x)/Sqrt(a + b*x^2))/(d*(m + 1)) - c/(d*(m + 1))*Int((d*x)^(m + 1)/Sqrt(a + b*x^2), x) <-- FreeQ([a, b, c, d, m], x) && EqQ(b, c^2) && NeQ(m, -1))
Int(1/(Sqrt(a_' + b_'*x_^2)*ArcTanh(c_'*x_/Sqrt(a_' + b_'*x_^2))), x_Symbol) := (1/c*Log(ArcTanh(c*x/Sqrt(a + b*x^2))) <-- FreeQ([a, b, c], x) && EqQ(b, c^2))
Int(1/(Sqrt(a_' + b_'*x_^2)*ArcCoth(c_'*x_/Sqrt(a_' + b_'*x_^2))), x_Symbol) := (-1/c*Log(ArcCoth(c*x/Sqrt(a + b*x^2))) <-- FreeQ([a, b, c], x) && EqQ(b, c^2))
Int(ArcTanh(c_'*x_/Sqrt(a_' + b_'*x_^2))^m_'/Sqrt(a_' + b_'*x_^2), x_Symbol) := (ArcTanh(c*x/Sqrt(a + b*x^2))^(m + 1)/(c*(m + 1)) <-- FreeQ([a, b, c, m], x) && EqQ(b, c^2) && NeQ(m, -1))
Int(ArcCoth(c_'*x_/Sqrt(a_' + b_'*x_^2))^m_'/Sqrt(a_' + b_'*x_^2), x_Symbol) := (-ArcCoth(c*x/Sqrt(a + b*x^2))^(m + 1)/(c*(m + 1)) <-- FreeQ([a, b, c, m], x) && EqQ(b, c^2) && NeQ(m, -1))
Int(ArcTanh(c_'*x_/Sqrt(a_' + b_'*x_^2))^m_'/Sqrt(d_' + e_'*x_^2), x_Symbol) := (Sqrt(a + b*x^2)/Sqrt(d + e*x^2)* Int(ArcTanh(c*x/Sqrt(a + b*x^2))^m/Sqrt(a + b*x^2), x) <-- FreeQ([a, b, c, d, e, m], x) && EqQ(b, c^2) && EqQ(b*d - a*e, 0))
Int(ArcCoth(c_'*x_/Sqrt(a_' + b_'*x_^2))^m_'/Sqrt(d_' + e_'*x_^2), x_Symbol) := (Sqrt(a + b*x^2)/Sqrt(d + e*x^2)* Int(ArcCoth(c*x/Sqrt(a + b*x^2))^m/Sqrt(a + b*x^2), x) <-- FreeQ([a, b, c, d, e, m], x) && EqQ(b, c^2) && EqQ(b*d - a*e, 0))
If(TrueQ(DOLLARLoadShowSteps), Int(u_*v_^n_', x_Symbol) := (With([tmp = InverseFunctionOfLinear(u, x)], (ShowStep("", "Int[f[x,ArcTanh[a+b*x]]/(1-(a+b*x)^2),x]", "Subst[Int[f[-a/b+Tanh[x]/b,x],x],x,ArcTanh[a+b*x]]/b", Hold( (-Discriminant(v, x)/(4*Coefficient(v, x, 2)))^n/ Coefficient(tmp[1], x, 1)* Subst( Int(SimplifyIntegrand( SubstForInverseFunction(u, tmp, x)*Sech(x)^(2*(n + 1)), x), x), x, tmp))) <-- Not(FalseQ(tmp)) && EqQ(Head(tmp), ArcTanh) && EqQ(Discriminant(v, x)*tmp[1]^2 - D(v, x)^2, 0))) <-- SimplifyFlag && QuadraticQ(v, x) && ILtQ(n, 0) && PosQ(Discriminant(v, x)) && MatchQ(u, (r_'*f_^w_ <-- FreeQ(f, x)))), Int(u_*v_^n_', x_Symbol) := (With([tmp = InverseFunctionOfLinear(u, x)], ((-Discriminant(v, x)/(4*Coefficient(v, x, 2)))^n/ Coefficient(tmp[1], x, 1)* Subst( Int(SimplifyIntegrand( SubstForInverseFunction(u, tmp, x)*Sech(x)^(2*(n + 1)), x), x), x, tmp) <-- Not(FalseQ(tmp)) && EqQ(Head(tmp), ArcTanh) && EqQ(Discriminant(v, x)*tmp[1]^2 - D(v, x)^2, 0))) <-- QuadraticQ(v, x) && ILtQ(n, 0) && PosQ(Discriminant(v, x)) && MatchQ(u, (r_'*f_^w_ <-- FreeQ(f, x)))))
If(TrueQ(DOLLARLoadShowSteps), Int(u_*v_^n_', x_Symbol) := (With([tmp = InverseFunctionOfLinear(u, x)], (ShowStep("", "Int[f[x,ArcCoth[a+b*x]]/(1-(a+b*x)^2),x]", "Subst[Int[f[-a/b+Coth[x]/b,x],x],x,ArcCoth[a+b*x]]/b", Hold( (-Discriminant(v, x)/(4*Coefficient(v, x, 2)))^n/ Coefficient(tmp[1], x, 1)* Subst( Int(SimplifyIntegrand( SubstForInverseFunction(u, tmp, x)*(-Csch(x)^2)^(n + 1), x), x), x, tmp))) <-- Not(FalseQ(tmp)) && EqQ(Head(tmp), ArcCoth) && EqQ(Discriminant(v, x)*tmp[1]^2 - D(v, x)^2, 0))) <-- SimplifyFlag && QuadraticQ(v, x) && ILtQ(n, 0) && PosQ(Discriminant(v, x)) && MatchQ(u, (r_'*f_^w_ <-- FreeQ(f, x)))), Int(u_*v_^n_', x_Symbol) := (With([tmp = InverseFunctionOfLinear(u, x)], ((-Discriminant(v, x)/(4*Coefficient(v, x, 2)))^n/ Coefficient(tmp[1], x, 1)* Subst( Int(SimplifyIntegrand( SubstForInverseFunction(u, tmp, x)*(-Csch(x)^2)^(n + 1), x), x), x, tmp) <-- Not(FalseQ(tmp)) && EqQ(Head(tmp), ArcCoth) && EqQ(Discriminant(v, x)*tmp[1]^2 - D(v, x)^2, 0))) <-- QuadraticQ(v, x) && ILtQ(n, 0) && PosQ(Discriminant(v, x)) && MatchQ(u, (r_'*f_^w_ <-- FreeQ(f, x)))))
Int(ArcTanh(c_' + d_'*Tanh(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(c + d*Tanh(a + b*x)) + b*Int(x/(c - d + c*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d], x) && EqQ((c - d)^2, 1))
Int(ArcCoth(c_' + d_'*Tanh(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(c + d*Tanh(a + b*x)) + b*Int(x/(c - d + c*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d], x) && EqQ((c - d)^2, 1))
Int(ArcTanh(c_' + d_'*Coth(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(c + d*Coth(a + b*x)) + b*Int(x/(c - d - c*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d], x) && EqQ((c - d)^2, 1))
Int(ArcCoth(c_' + d_'*Coth(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(c + d*Coth(a + b*x)) + b*Int(x/(c - d - c*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d], x) && EqQ((c - d)^2, 1))
Int(ArcTanh(c_' + d_'*Tanh(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(c + d*Tanh(a + b*x)) + b*(1 - c - d)* Int(x*E^(2*a + 2*b*x)/(1 - c + d + (1 - c - d)*E^(2*a + 2*b*x)), x) - b*(1 + c + d)* Int(x*E^(2*a + 2*b*x)/(1 + c - d + (1 + c + d)*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ((c - d)^2, 1))
Int(ArcCoth(c_' + d_'*Tanh(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(c + d*Tanh(a + b*x)) + b*(1 - c - d)* Int(x*E^(2*a + 2*b*x)/(1 - c + d + (1 - c - d)*E^(2*a + 2*b*x)), x) - b*(1 + c + d)* Int(x*E^(2*a + 2*b*x)/(1 + c - d + (1 + c + d)*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ((c - d)^2, 1))
Int(ArcTanh(c_' + d_'*Coth(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(c + d*Coth(a + b*x)) + b*(1 + c + d)* Int(x*E^(2*a + 2*b*x)/(1 + c - d - (1 + c + d)*E^(2*a + 2*b*x)), x) - b*(1 - c - d)* Int(x*E^(2*a + 2*b*x)/(1 - c + d - (1 - c - d)*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ((c - d)^2, 1))
Int(ArcCoth(c_' + d_'*Coth(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(c + d*Coth(a + b*x)) + b*(1 + c + d)* Int(x*E^(2*a + 2*b*x)/(1 + c - d - (1 + c + d)*E^(2*a + 2*b*x)), x) - b*(1 - c - d)* Int(x*E^(2*a + 2*b*x)/(1 - c + d - (1 - c - d)*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ((c - d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcTanh(c_' + d_'*Tanh(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(c + d*Tanh(a + b*x))/(f*(m + 1)) + b/(f*(m + 1))* Int((e + f*x)^(m + 1)/(c - d + c*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && EqQ((c - d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcCoth(c_' + d_'*Tanh(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(c + d*Tanh(a + b*x))/(f*(m + 1)) + b/(f*(m + 1))* Int((e + f*x)^(m + 1)/(c - d + c*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && EqQ((c - d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcTanh(c_' + d_'*Coth(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(c + d*Coth(a + b*x))/(f*(m + 1)) + b/(f*(m + 1))* Int((e + f*x)^(m + 1)/(c - d - c*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && EqQ((c - d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcCoth(c_' + d_'*Coth(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(c + d*Coth(a + b*x))/(f*(m + 1)) + b/(f*(m + 1))* Int((e + f*x)^(m + 1)/(c - d - c*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && EqQ((c - d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcTanh(c_' + d_'*Tanh(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(c + d*Tanh(a + b*x))/(f*(m + 1)) + b*(1 - c - d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(1 - c + d + (1 - c - d)*E^(2*a + 2*b*x)), x) - b*(1 + c + d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(1 + c - d + (1 + c + d)*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && NeQ((c - d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcCoth(c_' + d_'*Tanh(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(c + d*Tanh(a + b*x))/(f*(m + 1)) + b*(1 - c - d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(1 - c + d + (1 - c - d)*E^(2*a + 2*b*x)), x) - b*(1 + c + d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(1 + c - d + (1 + c + d)*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && NeQ((c - d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcTanh(c_' + d_'*Coth(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(c + d*Coth(a + b*x))/(f*(m + 1)) + b*(1 + c + d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(1 + c - d - (1 + c + d)*E^(2*a + 2*b*x)), x) - b*(1 - c - d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(1 - c + d - (1 - c - d)*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && NeQ((c - d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcCoth(c_' + d_'*Coth(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(c + d*Coth(a + b*x))/(f*(m + 1)) + b*(1 + c + d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(1 + c - d - (1 + c + d)*E^(2*a + 2*b*x)), x) - b*(1 - c - d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*a + 2*b*x)/(1 - c + d - (1 - c - d)*E^(2*a + 2*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && NeQ((c - d)^2, 1))
Int(ArcTanh(Tan(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(Tan(a + b*x)) - b*Int(x*Sec(2*a + 2*b*x), x) <-- FreeQ([a, b], x))
Int(ArcCoth(Tan(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(Tan(a + b*x)) - b*Int(x*Sec(2*a + 2*b*x), x) <-- FreeQ([a, b], x))
Int(ArcTanh(Cot(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(Cot(a + b*x)) - b*Int(x*Sec(2*a + 2*b*x), x) <-- FreeQ([a, b], x))
Int(ArcCoth(Cot(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(Cot(a + b*x)) - b*Int(x*Sec(2*a + 2*b*x), x) <-- FreeQ([a, b], x))
Int((e_' + f_'*x_)^m_'*ArcTanh(Tan(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(Tan(a + b*x))/(f*(m + 1)) - b/(f*(m + 1))*Int((e + f*x)^(m + 1)*Sec(2*a + 2*b*x), x) <-- FreeQ([a, b, e, f], x) && IGtQ(m, 0))
Int((e_' + f_'*x_)^m_'*ArcCoth(Tan(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(Tan(a + b*x))/(f*(m + 1)) - b/(f*(m + 1))*Int((e + f*x)^(m + 1)*Sec(2*a + 2*b*x), x) <-- FreeQ([a, b, e, f], x) && IGtQ(m, 0))
Int((e_' + f_'*x_)^m_'*ArcTanh(Cot(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(Cot(a + b*x))/(f*(m + 1)) - b/(f*(m + 1))*Int((e + f*x)^(m + 1)*Sec(2*a + 2*b*x), x) <-- FreeQ([a, b, e, f], x) && IGtQ(m, 0))
Int((e_' + f_'*x_)^m_'*ArcCoth(Cot(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(Cot(a + b*x))/(f*(m + 1)) - b/(f*(m + 1))*Int((e + f*x)^(m + 1)*Sec(2*a + 2*b*x), x) <-- FreeQ([a, b, e, f], x) && IGtQ(m, 0))
Int(ArcTanh(c_' + d_'*Tan(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(c + d*Tan(a + b*x)) + I*b*Int(x/(c + I*d + c*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d], x) && EqQ((c + I*d)^2, 1))
Int(ArcCoth(c_' + d_'*Tan(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(c + d*Tan(a + b*x)) + I*b*Int(x/(c + I*d + c*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d], x) && EqQ((c + I*d)^2, 1))
Int(ArcTanh(c_' + d_'*Cot(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(c + d*Cot(a + b*x)) + I*b*Int(x/(c - I*d - c*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d], x) && EqQ((c - I*d)^2, 1))
Int(ArcCoth(c_' + d_'*Cot(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(c + d*Cot(a + b*x)) + I*b*Int(x/(c - I*d - c*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d], x) && EqQ((c - I*d)^2, 1))
Int(ArcTanh(c_' + d_'*Tan(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(c + d*Tan(a + b*x)) + I*b*(1 - c + I*d)* Int(x*E^(2*I*a + 2*I*b*x)/(1 - c - I*d + (1 - c + I*d)*E^(2*I*a + 2*I*b*x)), x) - I*b*(1 + c - I*d)* Int(x*E^(2*I*a + 2*I*b*x)/(1 + c + I*d + (1 + c - I*d)*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ((c + I*d)^2, 1))
Int(ArcCoth(c_' + d_'*Tan(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(c + d*Tan(a + b*x)) + I*b*(1 - c + I*d)* Int(x*E^(2*I*a + 2*I*b*x)/(1 - c - I*d + (1 - c + I*d)*E^(2*I*a + 2*I*b*x)), x) - I*b*(1 + c - I*d)* Int(x*E^(2*I*a + 2*I*b*x)/(1 + c + I*d + (1 + c - I*d)*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ((c + I*d)^2, 1))
Int(ArcTanh(c_' + d_'*Cot(a_' + b_'*x_)), x_Symbol) := (x*ArcTanh(c + d*Cot(a + b*x)) - I*b*(1 - c - I*d)* Int(x*E^(2*I*a + 2*I*b*x)/(1 - c + I*d - (1 - c - I*d)*E^(2*I*a + 2*I*b*x)), x) + I*b*(1 + c + I*d)* Int(x*E^(2*I*a + 2*I*b*x)/(1 + c - I*d - (1 + c + I*d)*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ((c - I*d)^2, 1))
Int(ArcCoth(c_' + d_'*Cot(a_' + b_'*x_)), x_Symbol) := (x*ArcCoth(c + d*Cot(a + b*x)) - I*b*(1 - c - I*d)* Int(x*E^(2*I*a + 2*I*b*x)/(1 - c + I*d - (1 - c - I*d)*E^(2*I*a + 2*I*b*x)), x) + I*b*(1 + c + I*d)* Int(x*E^(2*I*a + 2*I*b*x)/(1 + c - I*d - (1 + c + I*d)*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ((c - I*d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcTanh(c_' + d_'*Tan(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(c + d*Tan(a + b*x))/(f*(m + 1)) + I*b/(f*(m + 1))* Int((e + f*x)^(m + 1)/(c + I*d + c*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && EqQ((c + I*d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcCoth(c_' + d_'*Tan(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(c + d*Tan(a + b*x))/(f*(m + 1)) + I*b/(f*(m + 1))* Int((e + f*x)^(m + 1)/(c + I*d + c*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && EqQ((c + I*d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcTanh(c_' + d_'*Cot(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(c + d*Cot(a + b*x))/(f*(m + 1)) + I*b/(f*(m + 1))* Int((e + f*x)^(m + 1)/(c - I*d - c*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && EqQ((c - I*d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcCoth(c_' + d_'*Cot(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(c + d*Cot(a + b*x))/(f*(m + 1)) + I*b/(f*(m + 1))* Int((e + f*x)^(m + 1)/(c - I*d - c*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && EqQ((c - I*d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcTanh(c_' + d_'*Tan(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(c + d*Tan(a + b*x))/(f*(m + 1)) + I*b*(1 - c + I*d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 - c - I*d + (1 - c + I*d)*E^(2*I*a + 2*I*b*x)), x) - I*b*(1 + c - I*d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 + c + I*d + (1 + c - I*d)*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && NeQ((c + I*d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcCoth(c_' + d_'*Tan(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(c + d*Tan(a + b*x))/(f*(m + 1)) + I*b*(1 - c + I*d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 - c - I*d + (1 - c + I*d)*E^(2*I*a + 2*I*b*x)), x) - I*b*(1 + c - I*d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 + c + I*d + (1 + c - I*d)*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && NeQ((c + I*d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcTanh(c_' + d_'*Cot(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcTanh(c + d*Cot(a + b*x))/(f*(m + 1)) - I*b*(1 - c - I*d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 - c + I*d - (1 - c - I*d)*E^(2*I*a + 2*I*b*x)), x) + I*b*(1 + c + I*d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 + c - I*d - (1 + c + I*d)*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && NeQ((c - I*d)^2, 1))
Int((e_' + f_'*x_)^m_'*ArcCoth(c_' + d_'*Cot(a_' + b_'*x_)), x_Symbol) := ((e + f*x)^(m + 1)* ArcCoth(c + d*Cot(a + b*x))/(f*(m + 1)) - I*b*(1 - c - I*d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 - c + I*d - (1 - c - I*d)*E^(2*I*a + 2*I*b*x)), x) + I*b*(1 + c + I*d)/(f*(m + 1))* Int((e + f*x)^(m + 1)* E^(2*I*a + 2*I*b*x)/(1 + c - I*d - (1 + c + I*d)*E^(2*I*a + 2*I*b*x)), x) <-- FreeQ([a, b, c, d, e, f], x) && IGtQ(m, 0) && NeQ((c - I*d)^2, 1))
Int(ArcTanh(u_), x_Symbol) := (x*ArcTanh(u) - Int(SimplifyIntegrand(x*D(u, x)/(1 - u^2), x), x) <-- InverseFunctionFreeQ(u, x))
Int(ArcCoth(u_), x_Symbol) := (x*ArcCoth(u) - Int(SimplifyIntegrand(x*D(u, x)/(1 - u^2), x), x) <-- InverseFunctionFreeQ(u, x))
Int((c_' + d_'*x_)^m_'*(a_' + b_'*ArcTanh(u_)), x_Symbol) := ((c + d*x)^(m + 1)*(a + b*ArcTanh(u))/(d*(m + 1)) - b/(d*(m + 1))* Int(SimplifyIntegrand((c + d*x)^(m + 1)*D(u, x)/(1 - u^2), x), x) <-- FreeQ([a, b, c, d, m], x) && NeQ(m, -1) && InverseFunctionFreeQ(u, x) && Not(FunctionOfQ((c + d*x)^(m + 1), u, x)) && false)Q(PowerVariableExpn(u, m + 1, x))
Int((c_' + d_'*x_)^m_'*(a_' + b_'*ArcCoth(u_)), x_Symbol) := ((c + d*x)^(m + 1)*(a + b*ArcCoth(u))/(d*(m + 1)) - b/(d*(m + 1))* Int(SimplifyIntegrand((c + d*x)^(m + 1)*D(u, x)/(1 - u^2), x), x) <-- FreeQ([a, b, c, d, m], x) && NeQ(m, -1) && InverseFunctionFreeQ(u, x) && Not(FunctionOfQ((c + d*x)^(m + 1), u, x)) && false)Q(PowerVariableExpn(u, m + 1, x))
Int(v_*(a_' + b_'*ArcTanh(u_)), x_Symbol) := (With([w = IntHide(v, x)], (Dist((a + b*ArcTanh(u)), w, x) - b*Int(SimplifyIntegrand(w*D(u, x)/(1 - u^2), x), x) <-- InverseFunctionFreeQ(w, x))) <-- FreeQ([a, b], x) && InverseFunctionFreeQ(u, x) && Not(MatchQ(v, ((c_' + d_'*x)^m_' <-- FreeQ([c, d, m], x)))) && false)Q(FunctionOfLinear(v*(a + b*ArcTanh(u)), x))
Int(v_*(a_' + b_'*ArcCoth(u_)), x_Symbol) := (With([w = IntHide(v, x)], (Dist((a + b*ArcCoth(u)), w, x) - b*Int(SimplifyIntegrand(w*D(u, x)/(1 - u^2), x), x) <-- InverseFunctionFreeQ(w, x))) <-- FreeQ([a, b], x) && InverseFunctionFreeQ(u, x) && Not(MatchQ(v, ((c_' + d_'*x)^m_' <-- FreeQ([c, d, m], x)))) && false)Q(FunctionOfLinear(v*(a + b*ArcCoth(u)), x))
end
