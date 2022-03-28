int_rules_7_2_6 = @theory begin

#= ::Subsection::Closed:: =#
#= 7.2.6 Miscellaneous inverse hyperbolic cosine =#
Int((a_' + b_'*ArcCosh(c_ + d_'*x_))^n_', x_Symbol) := (1/d*Subst(Int((a + b*ArcCosh(x))^n, x), x, c + d*x) <-- FreeQ([a, b, c, d, n], x))
Int((e_' + f_'*x_)^m_'*(a_' + b_'*ArcCosh(c_ + d_'*x_))^n_', x_Symbol) := (1/d*Subst(Int(((d*e - c*f)/d + f*x/d)^m*(a + b*ArcCosh(x))^n, x), x, c + d*x) <-- FreeQ([a, b, c, d, e, f, m, n], x))
Int((A_' + B_'*x_ + C_'*x_^2)^p_'*(a_' + b_'*ArcCosh(c_ + d_'*x_))^ n_', x_Symbol) := (1/d*Subst(Int((-C/d^2 + C/d^2*x^2)^p*(a + b*ArcCosh(x))^n, x), x, c + d*x) <-- FreeQ([a, b, c, d, A, B, C, n, p], x) && EqQ(B*(1 - c^2) + 2*A*c*d, 0) && EqQ(2*c*C - B*d, 0))
Int((e_' + f_'*x_)^m_'*(A_' + B_'*x_ + C_'*x_^2)^ p_'*(a_' + b_'*ArcCosh(c_ + d_'*x_))^n_', x_Symbol) := (1/d*Subst( Int(((d*e - c*f)/d + f*x/d)^m*(-C/d^2 + C/d^2*x^2)^ p*(a + b*ArcCosh(x))^n, x), x, c + d*x) <-- FreeQ([a, b, c, d, e, f, A, B, C, m, n, p], x) && EqQ(B*(1 - c^2) + 2*A*c*d, 0) && EqQ(2*c*C - B*d, 0))
Int(Sqrt(a_' + b_'*ArcCosh(1 + d_'*x_^2)), x_Symbol) := (2*Sqrt(a + b*ArcCosh(1 + d*x^2))* Sinh((1/2)*ArcCosh(1 + d*x^2))^2/(d*x) - Sqrt(b)*Sqrt(Pi/2)*(Cosh(a/(2*b)) - Sinh(a/(2*b)))* Sinh((1/2)*ArcCosh(1 + d*x^2))* Erfi((1/Sqrt(2*b))*Sqrt(a + b*ArcCosh(1 + d*x^2)))/(d*x) + Sqrt(b)*Sqrt(Pi/2)*(Cosh(a/(2*b)) + Sinh(a/(2*b)))* Sinh((1/2)*ArcCosh(1 + d*x^2))* Erf((1/Sqrt(2*b))*Sqrt(a + b*ArcCosh(1 + d*x^2)))/(d*x) <-- FreeQ([a, b, d], x))
Int(Sqrt(a_' + b_'*ArcCosh(-1 + d_'*x_^2)), x_Symbol) := (2*Sqrt(a + b*ArcCosh(-1 + d*x^2))* Cosh((1/2)*ArcCosh(-1 + d*x^2))^2/(d*x) - Sqrt(b)*Sqrt(Pi/2)*(Cosh(a/(2*b)) - Sinh(a/(2*b)))* Cosh((1/2)*ArcCosh(-1 + d*x^2))* Erfi((1/Sqrt(2*b))*Sqrt(a + b*ArcCosh(-1 + d*x^2)))/(d*x) - Sqrt(b)*Sqrt(Pi/2)*(Cosh(a/(2*b)) + Sinh(a/(2*b)))* Cosh((1/2)*ArcCosh(-1 + d*x^2))* Erf((1/Sqrt(2*b))*Sqrt(a + b*ArcCosh(-1 + d*x^2)))/(d*x) <-- FreeQ([a, b, d], x))
Int((a_' + b_'*ArcCosh(c_ + d_'*x_^2))^n_, x_Symbol) := (x*(a + b*ArcCosh(c + d*x^2))^n - 2*b*n*(2*c*d*x^2 + d^2*x^4)*(a + b*ArcCosh(c + d*x^2))^(n - 1)/(d*x* Sqrt(-1 + c + d*x^2)*Sqrt(1 + c + d*x^2)) + 4*b^2*n*(n - 1)*Int((a + b*ArcCosh(c + d*x^2))^(n - 2), x) <-- FreeQ([a, b, c, d], x) && EqQ(c^2, 1) && GtQ(n, 1))
Int(1/(a_' + b_'*ArcCosh(1 + d_'*x_^2)), x_Symbol) := (x*Cosh(a/(2*b))* CoshIntegral((a + b*ArcCosh(1 + d*x^2))/(2*b))/(Sqrt(2)*b* Sqrt(d*x^2)) - x*Sinh(a/(2*b))* SinhIntegral((a + b*ArcCosh(1 + d*x^2))/(2*b))/(Sqrt(2)*b* Sqrt(d*x^2)) <-- FreeQ([a, b, d], x))
Int(1/(a_' + b_'*ArcCosh(-1 + d_'*x_^2)), x_Symbol) := (-x*Sinh(a/(2*b))* CoshIntegral((a + b*ArcCosh(-1 + d*x^2))/(2*b))/(Sqrt(2)*b* Sqrt(d*x^2)) + x*Cosh(a/(2*b))* SinhIntegral((a + b*ArcCosh(-1 + d*x^2))/(2*b))/(Sqrt(2)*b* Sqrt(d*x^2)) <-- FreeQ([a, b, d], x))
Int(1/Sqrt(a_' + b_'*ArcCosh(1 + d_'*x_^2)), x_Symbol) := (Sqrt(Pi/2)*(Cosh(a/(2*b)) - Sinh(a/(2*b)))* Sinh(ArcCosh(1 + d*x^2)/2)* Erfi(Sqrt(a + b*ArcCosh(1 + d*x^2))/Sqrt(2*b))/(Sqrt(b)*d*x) + Sqrt(Pi/2)*(Cosh(a/(2*b)) + Sinh(a/(2*b)))* Sinh(ArcCosh(1 + d*x^2)/2)* Erf(Sqrt(a + b*ArcCosh(1 + d*x^2))/Sqrt(2*b))/(Sqrt(b)*d*x) <-- FreeQ([a, b, d], x))
Int(1/Sqrt(a_' + b_'*ArcCosh(-1 + d_'*x_^2)), x_Symbol) := (Sqrt(Pi/2)*(Cosh(a/(2*b)) - Sinh(a/(2*b)))* Cosh(ArcCosh(-1 + d*x^2)/2)* Erfi(Sqrt(a + b*ArcCosh(-1 + d*x^2))/Sqrt(2*b))/(Sqrt(b)*d*x) - Sqrt(Pi/2)*(Cosh(a/(2*b)) + Sinh(a/(2*b)))* Cosh(ArcCosh(-1 + d*x^2)/2)* Erf(Sqrt(a + b*ArcCosh(-1 + d*x^2))/Sqrt(2*b))/(Sqrt(b)*d*x) <-- FreeQ([a, b, d], x))
Int(1/(a_' + b_'*ArcCosh(1 + d_'*x_^2))^(3/2), x_Symbol) := (-Sqrt(d*x^2)* Sqrt(2 + d*x^2)/(b*d*x*Sqrt(a + b*ArcCosh(1 + d*x^2))) + Sqrt(Pi/2)*(Cosh(a/(2*b)) - Sinh(a/(2*b)))* Sinh(ArcCosh(1 + d*x^2)/2)* Erfi(Sqrt(a + b*ArcCosh(1 + d*x^2))/Sqrt(2*b))/(b^(3/2)*d*x) - Sqrt(Pi/2)*(Cosh(a/(2*b)) + Sinh(a/(2*b)))* Sinh(ArcCosh(1 + d*x^2)/2)* Erf(Sqrt(a + b*ArcCosh(1 + d*x^2))/Sqrt(2*b))/(b^(3/2)*d*x) <-- FreeQ([a, b, d], x))
Int(1/(a_' + b_'*ArcCosh(-1 + d_'*x_^2))^(3/2), x_Symbol) := (-Sqrt(d*x^2)* Sqrt(-2 + d*x^2)/(b*d*x*Sqrt(a + b*ArcCosh(-1 + d*x^2))) + Sqrt(Pi/2)*(Cosh(a/(2*b)) - Sinh(a/(2*b)))* Cosh(ArcCosh(-1 + d*x^2)/2)* Erfi(Sqrt(a + b*ArcCosh(-1 + d*x^2))/Sqrt(2*b))/(b^(3/2)*d*x) + Sqrt(Pi/2)*(Cosh(a/(2*b)) + Sinh(a/(2*b)))* Cosh(ArcCosh(-1 + d*x^2)/2)* Erf(Sqrt(a + b*ArcCosh(-1 + d*x^2))/Sqrt(2*b))/(b^(3/2)*d*x) <-- FreeQ([a, b, d], x))
Int(1/(a_' + b_'*ArcCosh(1 + d_'*x_^2))^2, x_Symbol) := (-Sqrt(d*x^2)* Sqrt(2 + d*x^2)/(2*b*d*x*(a + b*ArcCosh(1 + d*x^2))) - x*Sinh(a/(2*b))* CoshIntegral((a + b*ArcCosh(1 + d*x^2))/(2*b))/(2*Sqrt(2)*b^2* Sqrt(d*x^2)) + x*Cosh(a/(2*b))* SinhIntegral((a + b*ArcCosh(1 + d*x^2))/(2*b))/(2*Sqrt(2)*b^2* Sqrt(d*x^2)) <-- FreeQ([a, b, d], x))
Int(1/(a_' + b_'*ArcCosh(-1 + d_'*x_^2))^2, x_Symbol) := (-Sqrt(d*x^2)* Sqrt(-2 + d*x^2)/(2*b*d*x*(a + b*ArcCosh(-1 + d*x^2))) + x*Cosh(a/(2*b))* CoshIntegral((a + b*ArcCosh(-1 + d*x^2))/(2*b))/(2*Sqrt(2)*b^2* Sqrt(d*x^2)) - x*Sinh(a/(2*b))* SinhIntegral((a + b*ArcCosh(-1 + d*x^2))/(2*b))/(2*Sqrt(2)*b^2* Sqrt(d*x^2)) <-- FreeQ([a, b, d], x))
Int((a_' + b_'*ArcCosh(c_ + d_'*x_^2))^n_, x_Symbol) := (-x*(a + b*ArcCosh(c + d*x^2))^(n + 2)/(4* b^2*(n + 1)*(n + 2)) + (2*c*x^2 + d*x^4)*(a + b*ArcCosh(c + d*x^2))^(n + 1)/(2*b*(n + 1)*x* Sqrt(-1 + c + d*x^2)*Sqrt(1 + c + d*x^2)) + 1/(4*b^2*(n + 1)*(n + 2))* Int((a + b*ArcCosh(c + d*x^2))^(n + 2), x) <-- FreeQ([a, b, c, d], x) && EqQ(c^2, 1) && LtQ(n, -1) && NeQ(n, -2))
Int(ArcCosh(a_'*x_^p_)^n_'/x_, x_Symbol) := (1/p*Subst(Int(x^n*Tanh(x), x), x, ArcCosh(a*x^p)) <-- FreeQ([a, p], x) && IGtQ(n, 0))
Int(u_'*ArcCosh(c_'/(a_' + b_'*x_^n_'))^m_', x_Symbol) := (Int(u*ArcSech(a/c + b*x^n/c)^m, x) <-- FreeQ([a, b, c, n, m], x))
Int(ArcCosh(Sqrt(1 + b_'*x_^2))^n_'/Sqrt(1 + b_'*x_^2), x_Symbol) := (Sqrt(-1 + Sqrt(1 + b*x^2))*Sqrt(1 + Sqrt(1 + b*x^2))/(b*x)* Subst(Int(ArcCosh(x)^n/(Sqrt(-1 + x)*Sqrt(1 + x)), x), x, Sqrt(1 + b*x^2)) <-- FreeQ([b, n], x))
Int(f_^(c_'*ArcCosh(a_' + b_'*x_)^n_'), x_Symbol) := (1/b*Subst(Int(f^(c*x^n)*Sinh(x), x), x, ArcCosh(a + b*x)) <-- FreeQ([a, b, c, f], x) && IGtQ(n, 0))
Int(x_^m_'*f_^(c_'*ArcCosh(a_' + b_'*x_)^n_'), x_Symbol) := (1/b*Subst(Int((-a/b + Cosh(x)/b)^m*f^(c*x^n)*Sinh(x), x), x, ArcCosh(a + b*x)) <-- FreeQ([a, b, c, f], x) && IGtQ(m, 0) && IGtQ(n, 0))
Int(ArcCosh(u_), x_Symbol) := (x*ArcCosh(u) - Int(SimplifyIntegrand(x*D(u, x)/(Sqrt(-1 + u)*Sqrt(1 + u)), x), x) <-- InverseFunctionFreeQ(u, x) && Not(FunctionOfExponentialQ(u, x)))
Int((c_' + d_'*x_)^m_'*(a_' + b_'*ArcCosh(u_)), x_Symbol) := ((c + d*x)^(m + 1)*(a + b*ArcCosh(u))/(d*(m + 1)) - b/(d*(m + 1))* Int(SimplifyIntegrand((c + d*x)^(m + 1)* D(u, x)/(Sqrt(-1 + u)*Sqrt(1 + u)), x), x) <-- FreeQ([a, b, c, d, m], x) && NeQ(m, -1) && InverseFunctionFreeQ(u, x) && Not(FunctionOfQ((c + d*x)^(m + 1), u, x)) && Not(FunctionOfExponentialQ(u, x)))
Int(v_*(a_' + b_'*ArcCosh(u_)), x_Symbol) := (With([w = IntHide(v, x)], (Dist((a + b*ArcCosh(u)), w, x) - b*Int(SimplifyIntegrand(w*D(u, x)/(Sqrt(-1 + u)*Sqrt(1 + u)), x), x) <-- InverseFunctionFreeQ(w, x))) <-- FreeQ([a, b], x) && InverseFunctionFreeQ(u, x) && Not(MatchQ(v, ((c_' + d_'*x)^m_' <-- FreeQ([c, d, m], x)))))
Int(E^(n_'*ArcCosh(u_)), x_Symbol) := (Int((u + Sqrt(-1 + u)*Sqrt(1 + u))^n, x) <-- IntegerQ(n) && PolyQ(u, x))
Int(x_^m_'*E^(n_'*ArcCosh(u_)), x_Symbol) := (Int(x^m*(u + Sqrt(-1 + u)*Sqrt(1 + u))^n, x) <-- RationalQ(m) && IntegerQ(n) && PolyQ(u, x))
end
