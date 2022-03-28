int_rules_4_3_1_2 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.3.1.2 (d sec)^m (a+b tan)^n =#
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_)), x_Symbol) := (b*(d*Sec(e + f*x))^m/(f*m) + a*Int((d*Sec(e + f*x))^m, x) <-- FreeQ([a, b, d, e, f, m], x) && (IntegerQ(2*m) || NeQ(a^2 + b^2, 0)))
Int(sec(e_' + f_'*x_)^m_*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (1/(a^(m - 2)*b*f)* Subst(Int((a - x)^(m/2 - 1)*(a + x)^(n + m/2 - 1), x), x, b*Tan(e + f*x)) <-- FreeQ([a, b, e, f, n], x) && EqQ(a^2 + b^2, 0) && IntegerQ(m/2))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (b*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^n/(a*f*m) <-- FreeQ([a, b, d, e, f, m, n], x) && EqQ(a^2 + b^2, 0) && EqQ(Simplify(m + n), 0))
Int(sec(e_' + f_'*x_)/Sqrt(a_ + b_'*tan(e_' + f_'*x_)), x_Symbol) := (-2*a/(b*f)* Subst(Int(1/(2 - a*x^2), x), x, Sec(e + f*x)/Sqrt(a + b*Tan(e + f*x))) <-- FreeQ([a, b, e, f], x) && EqQ(a^2 + b^2, 0))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (b*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^n/(a*f*m) + a/(2*d^2)* Int((d*Sec(e + f*x))^(m + 2)*(a + b*Tan(e + f*x))^(n - 1), x) <-- FreeQ([a, b, d, e, f], x) && EqQ(a^2 + b^2, 0) && EqQ(m/2 + n, 0) && GtQ(n, 0))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (2*d^2*(d*Sec(e + f*x))^(m - 2)*(a + b*Tan(e + f*x))^(n + 1)/(b* f*(m - 2)) + 2*d^2/a* Int((d*Sec(e + f*x))^(m - 2)*(a + b*Tan(e + f*x))^(n + 1), x) <-- FreeQ([a, b, d, e, f], x) && EqQ(a^2 + b^2, 0) && EqQ(m/2 + n, 0) && LtQ(n, -1))
Int((d_'*sec(e_' + f_'*x_))^m_*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := ((a/d)^(2*IntPart(n))*(a + b*Tan(e + f*x))^ FracPart(n)*(a - b*Tan(e + f*x))^ FracPart(n)/(d*Sec(e + f*x))^(2*FracPart(n))* Int(1/(a - b*Tan(e + f*x))^n, x) <-- FreeQ([a, b, d, e, f, m, n], x) && EqQ(a^2 + b^2, 0) && EqQ(Simplify(m/2 + n), 0))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (2*b*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^(n - 1)/(f*m) <-- FreeQ([a, b, d, e, f, m, n], x) && EqQ(a^2 + b^2, 0) && EqQ(Simplify(m/2 + n - 1), 0))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (b*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^(n - 1)/(f*(m + n - 1)) + a*(m + 2*n - 2)/(m + n - 1)* Int((d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^(n - 1), x) <-- FreeQ([a, b, d, e, f, m, n], x) && EqQ(a^2 + b^2, 0) && IGtQ(Simplify(m/2 + n - 1), 0) && Not(IntegerQ(n)))
Int(Sqrt(d_'*sec(e_' + f_'*x_))*Sqrt(a_ + b_'*tan(e_' + f_'*x_)), x_Symbol) := (-4*b*d^2/f* Subst(Int(x^2/(a^2 + d^2*x^4), x), x, Sqrt(a + b*Tan(e + f*x))/Sqrt(d*Sec(e + f*x))) <-- FreeQ([a, b, d, e, f], x) && EqQ(a^2 + b^2, 0))
Int((d_'*sec(e_' + f_'*x_))^m_*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (2*b*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^(n - 1)/(f*m) - b^2*(m + 2*n - 2)/(d^2*m)* Int((d*Sec(e + f*x))^(m + 2)*(a + b*Tan(e + f*x))^(n - 2), x) <-- FreeQ([a, b, d, e, f], x) && EqQ(a^2 + b^2, 0) && GtQ(n, 1) && (IGtQ(n/2, 0) && ILtQ(m - 1/2, 0) || EqQ(n, 2) && LtQ(m, 0) || LeQ(m, -1) && GtQ(m + n, 0) || ILtQ(m, 0) && LtQ(m/2 + n - 1, 0) && IntegerQ(n) || EqQ(n, 3/2) && EqQ(m, -1/2)) && IntegerQ(2*m))
Int((d_'*sec(e_' + f_'*x_))^m_*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (b*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^n/(a*f*m) + a*(m + n)/(m*d^2)* Int((d*Sec(e + f*x))^(m + 2)*(a + b*Tan(e + f*x))^(n - 1), x) <-- FreeQ([a, b, d, e, f], x) && EqQ(a^2 + b^2, 0) && GtQ(n, 0) && LtQ(m, -1) && IntegersQ(2*m, 2*n))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (b*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^(n - 1)/(f*(m + n - 1)) + a*(m + 2*n - 2)/(m + n - 1)* Int((d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^(n - 1), x) <-- FreeQ([a, b, d, e, f, m], x) && EqQ(a^2 + b^2, 0) && GtQ(n, 0) && NeQ(m + n - 1, 0) && IntegersQ(2*m, 2*n))
Int((d_'*sec(e_' + f_'*x_))^(3/2)/Sqrt(a_ + b_'*tan(e_' + f_'*x_)), x_Symbol) := (d*Sec(e + f*x)/(Sqrt(a - b*Tan(e + f*x))*Sqrt(a + b*Tan(e + f*x)))* Int(Sqrt(d*Sec(e + f*x))*Sqrt(a - b*Tan(e + f*x)), x) <-- FreeQ([a, b, d, e, f], x) && EqQ(a^2 + b^2, 0))
Int((d_'*sec(e_' + f_'*x_))^m_*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (2*d^2*(d*Sec(e + f*x))^(m - 2)*(a + b*Tan(e + f*x))^(n + 1)/(b* f*(m + 2*n)) - d^2*(m - 2)/(b^2*(m + 2*n))* Int((d*Sec(e + f*x))^(m - 2)*(a + b*Tan(e + f*x))^(n + 2), x) <-- FreeQ([a, b, d, e, f, m], x) && EqQ(a^2 + b^2, 0) && LtQ(n, -1) && (ILtQ(n/2, 0) && IGtQ(m - 1/2, 0) || EqQ(n, -2) || IGtQ(m + n, 0) || IntegersQ(n, m + 1/2) && GtQ(2*m + n + 1, 0)) && IntegerQ(2*m))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (d^2*(d*Sec(e + f*x))^(m - 2)*(a + b*Tan(e + f*x))^(n + 1)/(b* f*(m + n - 1)) + d^2*(m - 2)/(a*(m + n - 1))* Int((d*Sec(e + f*x))^(m - 2)*(a + b*Tan(e + f*x))^(n + 1), x) <-- FreeQ([a, b, d, e, f], x) && EqQ(a^2 + b^2, 0) && LtQ(n, 0) && GtQ(m, 1) && Not(ILtQ(m + n, 0)) && NeQ(m + n - 1, 0) && IntegersQ(2*m, 2*n))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (a*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^n/(b*f*(m + 2*n)) + Simplify(m + n)/(a*(m + 2*n))* Int((d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^(n + 1), x) <-- FreeQ([a, b, d, e, f, m], x) && EqQ(a^2 + b^2, 0) && LtQ(n, 0) && NeQ(m + 2*n, 0) && IntegersQ(2*m, 2*n))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (b*(d*Sec(e + f*x))^ m*(a + b*Tan(e + f*x))^(n - 1)/(f*Simplify(m + n - 1)) + a*(m + 2*n - 2)/Simplify(m + n - 1)* Int((d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^(n - 1), x) <-- FreeQ([a, b, d, e, f, m, n], x) && EqQ(a^2 + b^2, 0) && IGtQ(Simplify(m + n - 1), 0) && RationalQ(n))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (a*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^n/(b*f*(m + 2*n)) + Simplify(m + n)/(a*(m + 2*n))* Int((d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))^(n + 1), x) <-- FreeQ([a, b, d, e, f, m, n], x) && EqQ(a^2 + b^2, 0) && ILtQ(Simplify(m + n), 0) && NeQ(m + 2*n, 0))
#= Int[(d_.*sec[e_.+f_.*x_])^m_.*(a_+b_.*tan[e_.+f_.*x_])^n_,x_Symbol]  := a^n*(d*Sec[e+f*x])^m/(b*f*(Sec[e+f*x]^2)^(m/2))*Subst[Int[(1+x/ a)^(n+m/2-1)*(1-x/a)^(m/2-1),x],x,b*Tan[e+f*x]] /;  FreeQ[{a,b,d,e,f,m},x] && EqQ[a^2+b^2,0] && IntegerQ[n] =#
#= Int[(d_.*sec[e_.+f_.*x_])^m_.*(a_+b_.*tan[e_.+f_.*x_])^n_,x_Symbol]  := (d*Sec[e+f*x])^m/(b*f*(Sec[e+f*x]^2)^(m/2))*Subst[Int[(a+x)^n*( 1+x^2/b^2)^(m/2-1),x],x,b*Tan[e+f*x]] /; FreeQ[{a,b,d,e,f,m,n},x] &&  EqQ[a^2+b^2,0] =#
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_', x_Symbol) := ((d*Sec(e + f*x))^ m/((a + b*Tan(e + f*x))^(m/2)*(a - b*Tan(e + f*x))^(m/2))* Int((a + b*Tan(e + f*x))^(m/2 + n)*(a - b*Tan(e + f*x))^(m/2), x) <-- FreeQ([a, b, d, e, f, m, n], x) && EqQ(a^2 + b^2, 0))
Int(sec(e_' + f_'*x_)^m_*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (1/(b*f)*Subst(Int((a + x)^n*(1 + x^2/b^2)^(m/2 - 1), x), x, b*Tan(e + f*x)) <-- FreeQ([a, b, e, f, n], x) && NeQ(a^2 + b^2, 0) && IntegerQ(m/2))
Int((a_ + b_'*tan(e_' + f_'*x_))^2/sec(e_' + f_'*x_), x_Symbol) := (b^2*ArcTanh(Sin(e + f*x))/f - 2*a*b*Cos(e + f*x)/f + (a^2 - b^2)*Sin(e + f*x)/f <-- FreeQ([a, b, e, f], x) && NeQ(a^2 + b^2, 0))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^2, x_Symbol) := (b*(d*Sec(e + f*x))^m*(a + b*Tan(e + f*x))/(f*(m + 1)) + 1/(m + 1)* Int((d*Sec(e + f*x))^ m*(a^2*(m + 1) - b^2 + a*b*(m + 2)*Tan(e + f*x)), x) <-- FreeQ([a, b, d, e, f, m], x) && NeQ(a^2 + b^2, 0) && NeQ(m, -1))
Int(sec(e_' + f_'*x_)/(a_ + b_'*tan(e_' + f_'*x_)), x_Symbol) := (-1/f* Subst(Int(1/(a^2 + b^2 - x^2), x), x, (b - a*Tan(e + f*x))/Sec(e + f*x)) <-- FreeQ([a, b, e, f], x) && NeQ(a^2 + b^2, 0))
Int((d_'*sec(e_' + f_'*x_))^m_/(a_ + b_'*tan(e_' + f_'*x_)), x_Symbol) := (-d^2/b^2* Int((d*Sec(e + f*x))^(m - 2)*(a - b*Tan(e + f*x)), x) + d^2*(a^2 + b^2)/b^2* Int((d*Sec(e + f*x))^(m - 2)/(a + b*Tan(e + f*x)), x) <-- FreeQ([a, b, d, e, f], x) && NeQ(a^2 + b^2, 0) && IGtQ(m, 1))
Int((d_'*sec(e_' + f_'*x_))^m_/(a_ + b_'*tan(e_' + f_'*x_)), x_Symbol) := (1/(a^2 + b^2)*Int((d*Sec(e + f*x))^m*(a - b*Tan(e + f*x)), x) + b^2/(d^2*(a^2 + b^2))* Int((d*Sec(e + f*x))^(m + 2)/(a + b*Tan(e + f*x)), x) <-- FreeQ([a, b, d, e, f], x) && NeQ(a^2 + b^2, 0) && ILtQ(m, 0))
Int((d_'*sec(e_' + f_'*x_))^m_'*(a_ + b_'*tan(e_' + f_'*x_))^n_, x_Symbol) := (d^(2*IntPart(m/2))*(d*Sec(e + f*x))^(2*FracPart(m/2))/(b* f*(Sec(e + f*x)^2)^FracPart(m/2))* Subst(Int((a + x)^n*(1 + x^2/b^2)^(m/2 - 1), x), x, b*Tan(e + f*x)) <-- FreeQ([a, b, d, e, f, m, n], x) && NeQ(a^2 + b^2, 0) && Not(IntegerQ(m/2)))
Int(Sqrt(a_ + b_'*tan(e_' + f_'*x_))/Sqrt(d_'*cos(e_' + f_'*x_)), x_Symbol) := (-4*b/f* Subst(Int(x^2/(a^2*d^2 + x^4), x), x, Sqrt(d*Cos(e + f*x))*Sqrt(a + b*Tan(e + f*x))) <-- FreeQ([a, b, d, e, f], x) && EqQ(a^2 + b^2, 0))
Int(1/((d_'*cos(e_' + f_'*x_))^(3/2)* Sqrt(a_ + b_'*tan(e_' + f_'*x_))), x_Symbol) := (1/(d*Cos(e + f*x)*Sqrt(a - b*Tan(e + f*x))*Sqrt(a + b*Tan(e + f*x)))* Int(Sqrt(a - b*Tan(e + f*x))/Sqrt(d*Cos(e + f*x)), x) <-- FreeQ([a, b, d, e, f], x) && EqQ(a^2 + b^2, 0))
Int((d_'*cos(e_' + f_'*x_))^m_*(a_ + b_'*tan(e_' + f_'*x_))^n_', x_Symbol) := ((d*Cos(e + f*x))^m*(d*Sec(e + f*x))^m* Int((a + b*Tan(e + f*x))^n/(d*Sec(e + f*x))^m, x) <-- FreeQ([a, b, d, e, f, m, n], x) && Not(IntegerQ(m)))
end
