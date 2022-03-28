int_rules_1_1_3_1 = @theory begin

#= ::Subsection::Closed:: =#
#= 1.1.3.1 (a+b x^n)^p =#
Int((b_'*x_^n_)^p_, x_Symbol) := (b^IntPart(p)*(b*x^n)^FracPart(p)/x^(n*FracPart(p))*Int(x^(n*p), x) <-- FreeQ([b, n, p], x))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (1/n*Subst(Int(x^(1/n - 1)*(a + b*x)^p, x), x, x^n) <-- FreeQ([a, b, p], x) && FractionQ(n) && IntegerQ(1/n))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (x*(a + b*x^n)^(p + 1)/a <-- FreeQ([a, b, n, p], x) && EqQ(1/n + p + 1, 0))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (-x*(a + b*x^n)^(p + 1)/(a*n*(p + 1)) + (n*(p + 1) + 1)/(a*n*(p + 1))*Int((a + b*x^n)^(p + 1), x) <-- FreeQ([a, b, n, p], x) && ILtQ(Simplify(1/n + p + 1), 0) && NeQ(p, -1))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (Int(x^(n*p)*(b + a*x^(-n))^p, x) <-- FreeQ([a, b], x) && LtQ(n, 0) && IntegerQ(p))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (Int(ExpandIntegrand((a + b*x^n)^p, x), x) <-- FreeQ([a, b], x) && IGtQ(n, 0) && IGtQ(p, 0))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (x*(a + b*x^n)^p/(n*p + 1) + a*n*p/(n*p + 1)*Int((a + b*x^n)^(p - 1), x) <-- FreeQ([a, b], x) && IGtQ(n, 0) && GtQ(p, 0) && (IntegerQ(2*p) || EqQ(n, 2) && IntegerQ(4*p) || EqQ(n, 2) && IntegerQ(3*p) || LtQ(Denominator(p + 1/n), Denominator(p))))
Int(1/(a_ + b_'*x_^2)^(5/4), x_Symbol) := (2/(a^(5/4)*Rt(b/a, 2))*EllipticE(1/2*ArcTan(Rt(b/a, 2)*x), 2) <-- FreeQ([a, b], x) && GtQ(a, 0) && PosQ(b/a))
Int(1/(a_ + b_'*x_^2)^(5/4), x_Symbol) := ((1 + b*x^2/a)^(1/4)/(a*(a + b*x^2)^(1/4))* Int(1/(1 + b*x^2/a)^(5/4), x) <-- FreeQ([a, b], x) && PosQ(a) && PosQ(b/a))
Int(1/(a_ + b_'*x_^2)^(7/6), x_Symbol) := (1/((a + b*x^2)^(2/3)*(a/(a + b*x^2))^(2/3))* Subst(Int(1/(1 - b*x^2)^(1/3), x), x, x/Sqrt(a + b*x^2)) <-- FreeQ([a, b], x))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (-x*(a + b*x^n)^(p + 1)/(a*n*(p + 1)) + (n*(p + 1) + 1)/(a*n*(p + 1))*Int((a + b*x^n)^(p + 1), x) <-- FreeQ([a, b], x) && IGtQ(n, 0) && LtQ(p, -1) && (IntegerQ(2*p) || n == 2 && IntegerQ(4*p) || n == 2 && IntegerQ(3*p) || Denominator(p + 1/n) < Denominator(p)))
Int(1/(a_ + b_'*x_^3), x_Symbol) := (1/(3*Rt(a, 3)^2)*Int(1/(Rt(a, 3) + Rt(b, 3)*x), x) + 1/(3*Rt(a, 3)^2)* Int((2*Rt(a, 3) - Rt(b, 3)*x)/(Rt(a, 3)^2 - Rt(a, 3)*Rt(b, 3)*x + Rt(b, 3)^2*x^2), x) <-- FreeQ([a, b], x))
#= Int[1/(a_+b_.*x_^5),x_Symbol] := With[{r=Numerator[Rt[a/b,5]],  s=Denominator[Rt[a/b,5]]}, r/(5*a)*Int[1/(r+s*x),x] + 2*r/(5*a)*Int[(r-1/4*(1-Sqrt[5])*s*x)/(r^2-1/2*(1-Sqrt[5])*r*s*x+s^ 2*x^2),x] + 2*r/(5*a)*Int[(r-1/4*(1+Sqrt[5])*s*x)/(r^2-1/2*(1+Sqrt[5])*r*s*x+s^ 2*x^2),x]] /; FreeQ[{a,b},x] && PosQ[a/b] =#
#= Int[1/(a_+b_.*x_^5),x_Symbol] := With[{r=Numerator[Rt[-a/b,5]],  s=Denominator[Rt[-a/b,5]]}, r/(5*a)*Int[1/(r-s*x),x] + 2*r/(5*a)*Int[(r+1/4*(1-Sqrt[5])*s*x)/(r^2+1/2*(1-Sqrt[5])*r*s*x+s^ 2*x^2),x] + 2*r/(5*a)*Int[(r+1/4*(1+Sqrt[5])*s*x)/(r^2+1/2*(1+Sqrt[5])*r*s*x+s^ 2*x^2),x]] /; FreeQ[{a,b},x] && NegQ[a/b] =#
Int(1/(a_ + b_'*x_^n_), x_Symbol) := (Module([r = Numerator(Rt(a/b, n)), s = Denominator(Rt(a/b, n)), k, u], u = Int((r - s*Cos((2*k - 1)*Pi/n)*x)/(r^2 - 2*r*s*Cos((2*k - 1)*Pi/n)*x + s^2*x^2), x); r/(a*n)*Int(1/(r + s*x), x) + Dist(2*r/(a*n), Sum(u, [k, 1, (n - 1)/2]), x)) <-- FreeQ([a, b], x) && IGtQ((n - 3)/2, 0) && PosQ(a/b))
Int(1/(a_ + b_'*x_^n_), x_Symbol) := (Module([r = Numerator(Rt(-a/b, n)), s = Denominator(Rt(-a/b, n)), k, u], u = Int((r + s*Cos((2*k - 1)*Pi/n)*x)/(r^2 + 2*r*s*Cos((2*k - 1)*Pi/n)*x + s^2*x^2), x); r/(a*n)*Int(1/(r - s*x), x) + Dist(2*r/(a*n), Sum(u, [k, 1, (n - 1)/2]), x)) <-- FreeQ([a, b], x) && IGtQ((n - 3)/2, 0) && NegQ(a/b))
Int(1/(a_ + b_'*x_^2), x_Symbol) := (1/(Rt(a, 2)*Rt(b, 2))*ArcTan(Rt(b, 2)*x/Rt(a, 2)) <-- FreeQ([a, b], x) && PosQ(a/b) && (GtQ(a, 0) || GtQ(b, 0)))
Int(1/(a_ + b_'*x_^2), x_Symbol) := (-1/(Rt(-a, 2)*Rt(-b, 2))* ArcTan(Rt(-b, 2)*x/Rt(-a, 2)) <-- FreeQ([a, b], x) && PosQ(a/b) && (LtQ(a, 0) || LtQ(b, 0)))
Int(1/(a_ + b_'*x_^2), x_Symbol) := #=Rt[b/a,2]/b*ArcTan[Rt[b/a,2]*x] /; =# (Rt(a/b, 2)/a*ArcTan(x/Rt(a/b, 2)) <-- FreeQ([a, b], x) && PosQ(a/b))
Int(1/(a_ + b_'*x_^2), x_Symbol) := (1/(Rt(a, 2)*Rt(-b, 2))*ArcTanh(Rt(-b, 2)*x/Rt(a, 2)) <-- FreeQ([a, b], x) && NegQ(a/b) && (GtQ(a, 0) || LtQ(b, 0)))
Int(1/(a_ + b_'*x_^2), x_Symbol) := (-1/(Rt(-a, 2)*Rt(b, 2))* ArcTanh(Rt(b, 2)*x/Rt(-a, 2)) <-- FreeQ([a, b], x) && NegQ(a/b) && (LtQ(a, 0) || GtQ(b, 0)))
Int(1/(a_ + b_'*x_^2), x_Symbol) := #=-Rt[-b/a,2]/b*ArcTanh[Rt[-b/a,2]*x] /; =# (Rt(-a/b, 2)/a*ArcTanh(x/Rt(-a/b, 2)) <-- FreeQ([a, b], x) && NegQ(a/b))
Int(1/(a_ + b_'*x_^n_), x_Symbol) := (Module([r = Numerator(Rt(a/b, n)), s = Denominator(Rt(a/b, n)), k, u, v], u = Int((r - s*Cos((2*k - 1)*Pi/n)*x)/(r^2 - 2*r*s*Cos((2*k - 1)*Pi/n)*x + s^2*x^2), x) + Int((r + s*Cos((2*k - 1)*Pi/n)*x)/(r^2 + 2*r*s*Cos((2*k - 1)*Pi/n)*x + s^2*x^2), x); 2*r^2/(a*n)*Int(1/(r^2 + s^2*x^2), x) + Dist(2*r/(a*n), Sum(u, [k, 1, (n - 2)/4]), x)) <-- FreeQ([a, b], x) && IGtQ((n - 2)/4, 0) && PosQ(a/b))
Int(1/(a_ + b_'*x_^n_), x_Symbol) := (Module([r = Numerator(Rt(-a/b, n)), s = Denominator(Rt(-a/b, n)), k, u], u = Int((r - s*Cos((2*k*Pi)/n)*x)/(r^2 - 2*r*s*Cos((2*k*Pi)/n)*x + s^2*x^2), x) + Int((r + s*Cos((2*k*Pi)/n)*x)/(r^2 + 2*r*s*Cos((2*k*Pi)/n)*x + s^2*x^2), x); 2*r^2/(a*n)*Int(1/(r^2 - s^2*x^2), x) + Dist(2*r/(a*n), Sum(u, [k, 1, (n - 2)/4]), x)) <-- FreeQ([a, b], x) && IGtQ((n - 2)/4, 0) && NegQ(a/b))
Int(1/(a_ + b_'*x_^4), x_Symbol) := (With([r = Numerator(Rt(a/b, 2)), s = Denominator(Rt(a/b, 2))], 1/(2*r)*Int((r - s*x^2)/(a + b*x^4), x) + 1/(2*r)*Int((r + s*x^2)/(a + b*x^4), x)) <-- FreeQ([a, b], x) && (GtQ(a/b, 0) || PosQ(a/b) && AtomQ(SplitProduct(SumBaseQ, a)) && AtomQ(SplitProduct(SumBaseQ, b))))
Int(1/(a_ + b_'*x_^4), x_Symbol) := (With([r = Numerator(Rt(-a/b, 2)), s = Denominator(Rt(-a/b, 2))], r/(2*a)*Int(1/(r - s*x^2), x) + r/(2*a)*Int(1/(r + s*x^2), x)) <-- FreeQ([a, b], x) && Not(GtQ(a/b, 0)))
Int(1/(a_ + b_'*x_^n_), x_Symbol) := (With([r = Numerator(Rt(a/b, 4)), s = Denominator(Rt(a/b, 4))], r/(2*Sqrt(2)*a)* Int((Sqrt(2)*r - s*x^(n/4))/(r^2 - Sqrt(2)*r*s*x^(n/4) + s^2*x^(n/2)), x) + r/(2*Sqrt(2)*a)* Int((Sqrt(2)*r + s*x^(n/4))/(r^2 + Sqrt(2)*r*s*x^(n/4) + s^2*x^(n/2)), x)) <-- FreeQ([a, b], x) && IGtQ(n/4, 1) && GtQ(a/b, 0))
Int(1/(a_ + b_'*x_^n_), x_Symbol) := (With([r = Numerator(Rt(-a/b, 2)), s = Denominator(Rt(-a/b, 2))], r/(2*a)*Int(1/(r - s*x^(n/2)), x) + r/(2*a)*Int(1/(r + s*x^(n/2)), x)) <-- FreeQ([a, b], x) && IGtQ(n/4, 1) && Not(GtQ(a/b, 0)))
Int(1/Sqrt(a_ + b_'*x_^2), x_Symbol) := (ArcSinh(Rt(b, 2)*x/Sqrt(a))/Rt(b, 2) <-- FreeQ([a, b], x) && GtQ(a, 0) && PosQ(b))
Int(1/Sqrt(a_ + b_'*x_^2), x_Symbol) := (ArcSin(Rt(-b, 2)*x/Sqrt(a))/Rt(-b, 2) <-- FreeQ([a, b], x) && GtQ(a, 0) && NegQ(b))
Int(1/Sqrt(a_ + b_'*x_^2), x_Symbol) := (Subst(Int(1/(1 - b*x^2), x), x, x/Sqrt(a + b*x^2)) <-- FreeQ([a, b], x) && Not(GtQ(a, 0)))
#= Int[1/Sqrt[a_+b_.*x_^3],x_Symbol] := With[{q=Rt[b/a,3]}, -Sqrt[2]*(1+Sqrt[3])*(1+Sqrt[3]+q*x)^2*Sqrt[(1+q^3*x^3)/(1+Sqrt[3]+ q*x)^4]/(3^(1/4)*q*Sqrt[a+b*x^3])* EllipticF[ArcSin[(-1+Sqrt[3]-q*x)/(1+Sqrt[3]+q*x)],-7-4*Sqrt[3]]]  /; FreeQ[{a,b},x] && PosQ[a] =#
#= Int[1/Sqrt[a_+b_.*x_^3],x_Symbol] := With[{q=Rt[a/b,3]}, 2*Sqrt[2+Sqrt[3]]*(q+x)*Sqrt[(q^2-q*x+x^2)/((1+Sqrt[3])*q+x)^2]/ (3^(1/4)*Sqrt[a+b*x^3]*Sqrt[q*(q+x)/((1+Sqrt[3])*q+x)^2])* EllipticF[ArcSin[((1-Sqrt[3])*q+x)/((1+Sqrt[3])*q+x)],-7-4*Sqrt[3] ]] /; FreeQ[{a,b},x] && PosQ[a] && EqQ[b^2,1] =#
#= Int[1/Sqrt[a_+b_.*x_^3],x_Symbol] := With[{q=Rt[b/a,3]}, -2*Sqrt[2+Sqrt[3]]*(1+q*x)*Sqrt[(1-q*x+q^2*x^2)/(1+Sqrt[3]+q*x)^2]/ (3^(1/4)*q*Sqrt[a+b*x^3]*Sqrt[(1+q*x)/(1+Sqrt[3]+q*x)^2])* EllipticF[ArcSin[(-1+Sqrt[3]-q*x)/(1+Sqrt[3]+q*x)],-7-4*Sqrt[3]]]  /; FreeQ[{a,b},x] && PosQ[a] =#
Int(1/Sqrt(a_ + b_'*x_^3), x_Symbol) := (With([r = Numer(Rt(b/a, 3)), s = Denom(Rt(b/a, 3))], 2*Sqrt(2 + Sqrt(3))*(s + r*x)* Sqrt((s^2 - r*s*x + r^2*x^2)/((1 + Sqrt(3))*s + r*x)^2)/ (3^(1/4)*r*Sqrt(a + b*x^3)* Sqrt(s*(s + r*x)/((1 + Sqrt(3))*s + r*x)^2))* EllipticF( ArcSin(((1 - Sqrt(3))*s + r*x)/((1 + Sqrt(3))*s + r*x)), -7 - 4*Sqrt(3))) <-- FreeQ([a, b], x) && PosQ(a))
#= Int[1/Sqrt[a_+b_.*x_^3],x_Symbol] := With[{q=Rt[a/b,3]}, 2*Sqrt[2-Sqrt[3]]*(q+x)*Sqrt[(q^2-q*x+x^2)/((1-Sqrt[3])*q+x)^2]/ (3^(1/4)*Sqrt[a+b*x^3]*Sqrt[-q*(q+x)/((1-Sqrt[3])*q+x)^2])* EllipticF[ArcSin[((1+Sqrt[3])*q+x)/((1-Sqrt[3])*q+x)],-7+4*Sqrt[3] ]] /; FreeQ[{a,b},x] && NegQ[a] && EqQ[b^2,1] =#
#= Int[1/Sqrt[a_+b_.*x_^3],x_Symbol] := With[{q=Rt[b/a,3]}, -2*Sqrt[2-Sqrt[3]]*(1+q*x)*Sqrt[(1-q*x+q^2*x^2)/(1-Sqrt[3]+q*x)^2]/ (3^(1/4)*q*Sqrt[a+b*x^3]*Sqrt[-(1+q*x)/(1-Sqrt[3]+q*x)^2])* EllipticF[ArcSin[(1+Sqrt[3]+q*x)/(-1+Sqrt[3]-q*x)],-7+4*Sqrt[3]]]  /; FreeQ[{a,b},x] && NegQ[a] =#
Int(1/Sqrt(a_ + b_'*x_^3), x_Symbol) := (With([r = Numer(Rt(b/a, 3)), s = Denom(Rt(b/a, 3))], 2*Sqrt(2 - Sqrt(3))*(s + r*x)* Sqrt((s^2 - r*s*x + r^2*x^2)/((1 - Sqrt(3))*s + r*x)^2)/ (3^(1/4)*r*Sqrt(a + b*x^3)* Sqrt(-s*(s + r*x)/((1 - Sqrt(3))*s + r*x)^2))* EllipticF( ArcSin(((1 + Sqrt(3))*s + r*x)/((1 - Sqrt(3))*s + r*x)), -7 + 4*Sqrt(3))) <-- FreeQ([a, b], x) && NegQ(a))
Int(1/Sqrt(a_ + b_'*x_^4), x_Symbol) := (With([q = Rt(b/a, 4)], (1 + q^2*x^2)* Sqrt((a + b*x^4)/(a*(1 + q^2*x^2)^2))/(2*q*Sqrt(a + b*x^4))* EllipticF(2*ArcTan(q*x), 1/2)) <-- FreeQ([a, b], x) && PosQ(b/a))
Int(1/Sqrt(a_ + b_'*x_^4), x_Symbol) := (EllipticF(ArcSin(Rt(-b, 4)*x/Rt(a, 4)), -1)/(Rt(a, 4)*Rt(-b, 4)) <-- FreeQ([a, b], x) && NegQ(b/a) && GtQ(a, 0))
Int(1/Sqrt(a_ + b_'*x_^4), x_Symbol) := (With([q = Rt(-a*b, 2)], (Sqrt(-a + q*x^2)* Sqrt((a + q*x^2)/q)/(Sqrt(2)*Sqrt(-a)*Sqrt(a + b*x^4))* EllipticF(ArcSin(x/Sqrt((a + q*x^2)/(2*q))), 1/2) <-- IntegerQ(q))) <-- FreeQ([a, b], x) && LtQ(a, 0) && GtQ(b, 0))
Int(1/Sqrt(a_ + b_'*x_^4), x_Symbol) := (With([q = Rt(-a*b, 2)], Sqrt((a - q*x^2)/(a + q*x^2))* Sqrt((a + q*x^2)/q)/(Sqrt(2)*Sqrt(a + b*x^4)* Sqrt(a/(a + q*x^2)))* EllipticF(ArcSin(x/Sqrt((a + q*x^2)/(2*q))), 1/2)) <-- FreeQ([a, b], x) && LtQ(a, 0) && GtQ(b, 0))
Int(1/Sqrt(a_ + b_'*x_^4), x_Symbol) := (Sqrt(1 + b*x^4/a)/Sqrt(a + b*x^4)*Int(1/Sqrt(1 + b*x^4/a), x) <-- FreeQ([a, b], x) && NegQ(b/a) && Not(GtQ(a, 0)))
Int(1/Sqrt(a_ + b_'*x_^6), x_Symbol) := (With([r = Numer(Rt(b/a, 3)), s = Denom(Rt(b/a, 3))], x*(s + r*x^2)* Sqrt((s^2 - r*s*x^2 + r^2*x^4)/(s + (1 + Sqrt(3))*r*x^2)^2)/ (2*3^(1/4)*s*Sqrt(a + b*x^6)* Sqrt(r*x^2*(s + r*x^2)/(s + (1 + Sqrt(3))*r*x^2)^2))* EllipticF( ArcCos((s + (1 - Sqrt(3))*r*x^2)/(s + (1 + Sqrt(3))*r*x^2)), (2 + Sqrt(3))/4)) <-- FreeQ([a, b], x))
Int(1/Sqrt(a_ + b_'*x_^8), x_Symbol) := (1/2*Int((1 - Rt(b/a, 4)*x^2)/Sqrt(a + b*x^8), x) + 1/2*Int((1 + Rt(b/a, 4)*x^2)/Sqrt(a + b*x^8), x) <-- FreeQ([a, b], x))
Int(1/(a_ + b_'*x_^2)^(1/4), x_Symbol) := (2*x/(a + b*x^2)^(1/4) - a*Int(1/(a + b*x^2)^(5/4), x) <-- FreeQ([a, b], x) && GtQ(a, 0) && PosQ(b/a))
Int(1/(a_ + b_'*x_^2)^(1/4), x_Symbol) := (2/(a^(1/4)*Rt(-b/a, 2))*EllipticE(1/2*ArcSin(Rt(-b/a, 2)*x), 2) <-- FreeQ([a, b], x) && GtQ(a, 0) && NegQ(b/a))
Int(1/(a_ + b_'*x_^2)^(1/4), x_Symbol) := ((1 + b*x^2/a)^(1/4)/(a + b*x^2)^(1/4)* Int(1/(1 + b*x^2/a)^(1/4), x) <-- FreeQ([a, b], x) && PosQ(a))
Int(1/(a_ + b_'*x_^2)^(1/4), x_Symbol) := (2*Sqrt(-b*x^2/a)/(b*x)* Subst(Int(x^2/Sqrt(1 - x^4/a), x), x, (a + b*x^2)^(1/4)) <-- FreeQ([a, b], x) && NegQ(a))
Int(1/(a_ + b_'*x_^2)^(3/4), x_Symbol) := (2/(a^(3/4)*Rt(b/a, 2))*EllipticF(1/2*ArcTan(Rt(b/a, 2)*x), 2) <-- FreeQ([a, b], x) && GtQ(a, 0) && PosQ(b/a))
Int(1/(a_ + b_'*x_^2)^(3/4), x_Symbol) := (2/(a^(3/4)*Rt(-b/a, 2))*EllipticF(1/2*ArcSin(Rt(-b/a, 2)*x), 2) <-- FreeQ([a, b], x) && GtQ(a, 0) && NegQ(b/a))
Int(1/(a_ + b_'*x_^2)^(3/4), x_Symbol) := ((1 + b*x^2/a)^(3/4)/(a + b*x^2)^(3/4)* Int(1/(1 + b*x^2/a)^(3/4), x) <-- FreeQ([a, b], x) && PosQ(a))
Int(1/(a_ + b_'*x_^2)^(3/4), x_Symbol) := (2*Sqrt(-b*x^2/a)/(b*x)* Subst(Int(1/Sqrt(1 - x^4/a), x), x, (a + b*x^2)^(1/4)) <-- FreeQ([a, b], x) && NegQ(a))
Int(1/(a_ + b_'*x_^2)^(1/3), x_Symbol) := (3*Sqrt(b*x^2)/(2*b*x)* Subst(Int(x/Sqrt(-a + x^3), x), x, (a + b*x^2)^(1/3)) <-- FreeQ([a, b], x))
Int(1/(a_ + b_'*x_^2)^(2/3), x_Symbol) := (3*Sqrt(b*x^2)/(2*b*x)* Subst(Int(1/Sqrt(-a + x^3), x), x, (a + b*x^2)^(1/3)) <-- FreeQ([a, b], x))
Int(1/(a_ + b_'*x_^4)^(3/4), x_Symbol) := (x^3*(1 + a/(b*x^4))^(3/4)/(a + b*x^4)^(3/4)* Int(1/(x^3*(1 + a/(b*x^4))^(3/4)), x) <-- FreeQ([a, b], x))
Int(1/(a_ + b_'*x_^2)^(1/6), x_Symbol) := (3*x/(2*(a + b*x^2)^(1/6)) - a/2*Int(1/(a + b*x^2)^(7/6), x) <-- FreeQ([a, b], x))
Int(1/(a_ + b_'*x_^3)^(1/3), x_Symbol) := (ArcTan((1 + 2*Rt(b, 3)*x/(a + b*x^3)^(1/3))/Sqrt(3))/(Sqrt(3)* Rt(b, 3)) - Log((a + b*x^3)^(1/3) - Rt(b, 3)*x)/(2*Rt(b, 3)) <-- FreeQ([a, b], x))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (a^(p + 1/n)* Subst(Int(1/(1 - b*x^n)^(p + 1/n + 1), x), x, x/(a + b*x^n)^(1/n)) <-- FreeQ([a, b], x) && IGtQ(n, 0) && LtQ(-1, p, 0) && NeQ(p, -1/2) && IntegerQ(p + 1/n))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := ((a/(a + b*x^n))^(p + 1/n)*(a + b*x^n)^(p + 1/n)* Subst(Int(1/(1 - b*x^n)^(p + 1/n + 1), x), x, x/(a + b*x^n)^(1/n)) <-- FreeQ([a, b], x) && IGtQ(n, 0) && LtQ(-1, p, 0) && NeQ(p, -1/2) && LtQ(Denominator(p + 1/n), Denominator(p)))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (-Subst(Int((a + b*x^(-n))^p/x^2, x), x, 1/x) <-- FreeQ([a, b, p], x) && ILtQ(n, 0))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (With([k = Denominator(n)], k*Subst(Int(x^(k - 1)*(a + b*x^(k*n))^p, x), x, x^(1/k))) <-- FreeQ([a, b, p], x) && FractionQ(n))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (Int(ExpandIntegrand((a + b*x^n)^p, x), x) <-- FreeQ([a, b, n], x) && IGtQ(p, 0))
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (a^p*x*Hypergeometric2F1(-p, 1/n, 1/n + 1, -b*x^n/a) <-- FreeQ([a, b, n, p], x) && Not(IGtQ(p, 0)) && Not(IntegerQ(1/n)) && Not(ILtQ(Simplify(1/n + p), 0)) && (IntegerQ(p) || GtQ(a, 0)))
#= Int[(a_+b_.*x_^n_)^p_,x_Symbol] :=  x*(a+b*x^n)^(p+1)/a*Hypergeometric2F1[1,1/n+p+1,1/n+1,-b*x^n/a] /;  FreeQ[{a,b,n,p},x] && Not[IGtQ[p,0]] && Not[IntegerQ[1/n]] &&  Not[ILtQ[Simplify[1/n+p],0]] && Not[IntegerQ[p] || GtQ[a,0]] =#
Int((a_ + b_'*x_^n_)^p_, x_Symbol) := (a^IntPart(p)*(a + b*x^n)^FracPart(p)/(1 + b*x^n/a)^FracPart(p)* Int((1 + b*x^n/a)^p, x) <-- FreeQ([a, b, n, p], x) && Not(IGtQ(p, 0)) && Not(IntegerQ(1/n)) && Not(ILtQ(Simplify(1/n + p), 0)) && Not(IntegerQ(p) || GtQ(a, 0)))
Int((a_' + b_'*v_^n_)^p_, x_Symbol) := (1/Coefficient(v, x, 1)*Subst(Int((a + b*x^n)^p, x), x, v) <-- FreeQ([a, b, n, p], x) && LinearQ(v, x) && NeQ(v, x))
Int((a1_' + b1_'*x_^n_)^p_'*(a2_' + b2_'*x_^n_)^p_', x_Symbol) := (Int((a1*a2 + b1*b2*x^(2*n))^p, x) <-- FreeQ([a1, b1, a2, b2, n, p], x) && EqQ(a2*b1 + a1*b2, 0) && (IntegerQ(p) || GtQ(a1, 0) && GtQ(a2, 0)))
Int((a1_ + b1_'*x_^n_')^p_'*(a2_ + b2_'*x_^n_')^p_', x_Symbol) := (x*(a1 + b1*x^n)^p*(a2 + b2*x^n)^p/(2*n*p + 1) + 2*a1*a2*n*p/(2*n*p + 1)* Int((a1 + b1*x^n)^(p - 1)*(a2 + b2*x^n)^(p - 1), x) <-- FreeQ([a1, b1, a2, b2], x) && EqQ(a2*b1 + a1*b2, 0) && IGtQ(2*n, 0) && GtQ(p, 0) && (IntegerQ(2*p) || Denominator(p + 1/n) < Denominator(p)))
Int((a1_ + b1_'*x_^n_')^p_*(a2_ + b2_'*x_^n_')^p_, x_Symbol) := (-x*(a1 + b1*x^n)^(p + 1)*(a2 + b2*x^n)^(p + 1)/(2* a1*a2*n*(p + 1)) + (2*n*(p + 1) + 1)/(2*a1*a2*n*(p + 1))* Int((a1 + b1*x^n)^(p + 1)*(a2 + b2*x^n)^(p + 1), x) <-- FreeQ([a1, b1, a2, b2], x) && EqQ(a2*b1 + a1*b2, 0) && IGtQ(2*n, 0) && LtQ(p, -1) && (IntegerQ(2*p) || Denominator(p + 1/n) < Denominator(p)))
Int((a1_ + b1_'*x_^n_)^p_*(a2_ + b2_'*x_^n_)^p_, x_Symbol) := (-Subst( Int((a1 + b1*x^(-n))^p*(a2 + b2*x^(-n))^p/x^2, x), x, 1/x) <-- FreeQ([a1, b1, a2, b2, p], x) && EqQ(a2*b1 + a1*b2, 0) && ILtQ(2*n, 0))
Int((a1_ + b1_'*x_^n_)^p_*(a2_ + b2_'*x_^n_)^p_, x_Symbol) := (With([k = Denominator(2*n)], k*Subst( Int(x^(k - 1)*(a1 + b1*x^(k*n))^p*(a2 + b2*x^(k*n))^p, x), x, x^(1/k))) <-- FreeQ([a1, b1, a2, b2, p], x) && EqQ(a2*b1 + a1*b2, 0) && FractionQ(2*n))
Int((a1_' + b1_'*x_^n_)^p_*(a2_' + b2_'*x_^n_)^p_, x_Symbol) := ((a1 + b1*x^n)^ FracPart(p)*(a2 + b2*x^n)^FracPart(p)/(a1*a2 + b1*b2*x^(2*n))^ FracPart(p)*Int((a1*a2 + b1*b2*x^(2*n))^p, x) <-- FreeQ([a1, b1, a2, b2, n, p], x) && EqQ(a2*b1 + a1*b2, 0) && Not(IntegerQ(p)))
Int((a_ + b_'*(c_'*x_^q_')^n_)^p_', x_Symbol) := (x/(c*x^q)^(1/q)*Subst(Int((a + b*x^(n*q))^p, x), x, (c*x^q)^(1/q)) <-- FreeQ([a, b, c, n, p, q], x) && IntegerQ(n*q) && NeQ(x, (c*x^q)^(1/q)))
Int((a_ + b_'*(c_'*x_^q_')^n_)^p_', x_Symbol) := (With([k = Denominator(n)], Subst(Int((a + b*c^n*x^(n*q))^p, x), x^(1/k), (c*x^q)^(1/k)/(c^(1/k)*(x^(1/k))^(q - 1)))) <-- FreeQ([a, b, c, p, q], x) && FractionQ(n))
Int((a_ + b_'*(c_'*x_^q_')^n_)^p_', x_Symbol) := (Subst(Int((a + b*c^n*x^(n*q))^p, x), x^(n*q), (c*x^q)^n/c^n) <-- FreeQ([a, b, c, n, p, q], x) && Not(RationalQ(n)))
Int((a_ + b_'*(d_'*x_^q_')^n_)^p_', x_Symbol) := (-Subst(Int((a + b*(d*x^(-q))^n)^p/x^2, x), x, 1/x) <-- FreeQ([a, b, d, n, p], x) && ILtQ(q, 0))
Int((a_ + b_'*(d_'*x_^q_')^n_)^p_', x_Symbol) := (With([s = Denominator(q)], s*Subst(Int(x^(s - 1)*(a + b*(d*x^(q*s))^n)^p, x), x, x^(1/s))) <-- FreeQ([a, b, d, n, p], x) && FractionQ(q))
#= Int[(a_+b_.*(d_.*x_^q_.)^n_)^p_.,x_Symbol] :=  Subst[Int[(a+b*x^(n*q))^p,x],x^(n*q),(d*x^q)^n] /;  FreeQ[{a,b,d,n,p,q},x] && Not[IntegerQ[n*q]] &&  NeQ[x^(n*q),(d*x^q)^n] =#
end
