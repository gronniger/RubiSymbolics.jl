int_rules_4_1_1_1 = @theory begin

#= ::Subsection::Closed:: =#
#= 4.1.1.1 (a+b sin)^n =#
Int(sin(c_' + d_'*x_)^n_, x_Symbol) := (-1/d* Subst(Int(Expand((1 - x^2)^((n - 1)/2), x), x), x, Cos(c + d*x)) <-- FreeQ([c, d], x) && IGtQ((n - 1)/2, 0))
Int(sin(c_' + d_'*x_/2)^2, x_Symbol) := (x/2 - Sin(2*c + d*x)/(2*d) <-- FreeQ([c, d], x))
Int((b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := #= -Cot[c+d*x]*(c*Sin[c+d*x])^n/(d*n) +  b^2*(n-1)/n*Int[(b*Sin[c+d*x])^(n-2),x] =# (-b* Cos(c + d*x)*(b*Sin(c + d*x))^(n - 1)/(d*n) + b^2*(n - 1)/n*Int((b*Sin(c + d*x))^(n - 2), x) <-- FreeQ([b, c, d], x) && GtQ(n, 1) && IntegerQ(2*n))
Int((b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (Cos(c + d*x)*(b*Sin(c + d*x))^(n + 1)/(b*d*(n + 1)) + (n + 2)/(b^2*(n + 1))*Int((b*Sin(c + d*x))^(n + 2), x) <-- FreeQ([b, c, d], x) && LtQ(n, -1) && IntegerQ(2*n))
Int(sin(c_' + pi/2 + d_'*x_), x_Symbol) := (Sin(c + d*x)/d <-- FreeQ([c, d], x))
Int(sin(c_' + d_'*x_), x_Symbol) := (-Cos(c + d*x)/d <-- FreeQ([c, d], x))
#= Int[1/sin[c_.+d_.*x_],x_Symbol] := Int[Csc[c+d*x],x] /;  FreeQ[{c,d},x] =#
Int(Sqrt(sin(c_' + d_'*x_)), x_Symbol) := (2/d*EllipticE(1/2*(c - pi/2 + d*x), 2) <-- FreeQ([c, d], x))
Int(1/Sqrt(sin(c_' + d_'*x_)), x_Symbol) := (2/d*EllipticF(1/2*(c - pi/2 + d*x), 2) <-- FreeQ([c, d], x))
Int((b_*sin(c_' + d_'*x_))^n_, x_Symbol) := ((b*Sin(c + d*x))^n/Sin(c + d*x)^n* Int(Sin(c + d*x)^n, x) <-- FreeQ([b, c, d], x) && LtQ(-1, n, 1) && IntegerQ(2*n))
#= Int[(b_.*sin[c_.+d_.*x_])^n_,x_Symbol] :=  Cos[c+d*x]/(b*d*Sqrt[Cos[c+d*x]^2])*Subst[Int[x^n/Sqrt[1-x^2/b^2],x], x,b*Sin[c+d*x]] /; FreeQ[{b,c,d,n},x] && Not[IntegerQ[2*n] ||  IntegerQ[3*n]] =#
Int((b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (Cos(c + d*x)*(b*Sin(c + d*x))^(n + 1)/(b*d*(n + 1)* Sqrt(Cos(c + d*x)^2))* Hypergeometric2F1(1/2, (n + 1)/2, (n + 3)/2, Sin(c + d*x)^2) <-- FreeQ([b, c, d, n], x) && Not(IntegerQ(2*n)))
Int((a_ + b_'*sin(c_' + d_'*x_))^2, x_Symbol) := ((2*a^2 + b^2)*x/2 - 2*a*b*Cos(c + d*x)/d - b^2*Cos(c + d*x)*Sin(c + d*x)/(2*d) <-- FreeQ([a, b, c, d], x))
Int((a_ + b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (Int(ExpandTrig((a + b*sin(c + d*x))^n, x), x) <-- FreeQ([a, b, c, d, n], x) && EqQ(a^2 - b^2, 0) && IGtQ(n, 0))
Int(Sqrt(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (-2*b*Cos(c + d*x)/(d*Sqrt(a + b*Sin(c + d*x))) <-- FreeQ([a, b, c, d], x) && EqQ(a^2 - b^2, 0))
Int((a_ + b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (-b* Cos(c + d*x)*(a + b*Sin(c + d*x))^(n - 1)/(d*n) + a*(2*n - 1)/n*Int((a + b*Sin(c + d*x))^(n - 1), x) <-- FreeQ([a, b, c, d], x) && EqQ(a^2 - b^2, 0) && IGtQ(n - 1/2, 0))
Int(1/(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (-Cos(c + d*x)/(d*(b + a*Sin(c + d*x))) <-- FreeQ([a, b, c, d], x) && EqQ(a^2 - b^2, 0))
Int(1/Sqrt(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (-2/d* Subst(Int(1/(2*a - x^2), x), x, b*Cos(c + d*x)/Sqrt(a + b*Sin(c + d*x))) <-- FreeQ([a, b, c, d], x) && EqQ(a^2 - b^2, 0))
Int((a_ + b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (b*Cos(c + d*x)*(a + b*Sin(c + d*x))^n/(a*d*(2*n + 1)) + (n + 1)/(a*(2*n + 1))*Int((a + b*Sin(c + d*x))^(n + 1), x) <-- FreeQ([a, b, c, d], x) && EqQ(a^2 - b^2, 0) && LtQ(n, -1) && IntegerQ(2*n))
#= Int[(a_+b_.*sin[c_.+d_.*x_])^n_,x_Symbol] :=  a^2*Cos[c+d*x]/(d*Sqrt[a+b*Sin[c+d*x]]*Sqrt[a-b*Sin[c+d*x]])*Subst[ Int[(a+b*x)^(n-1/2)/Sqrt[a-b*x],x],x,Sin[c+d*x]] /;  FreeQ[{a,b,c,d,n},x] && EqQ[a^2-b^2,0] && Not[IntegerQ[2*n]] =#
Int((a_ + b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (-2^(n + 1/2)*a^(n - 1/2)*b* Cos(c + d*x)/(d*Sqrt(a + b*Sin(c + d*x)))* Hypergeometric2F1(1/2, 1/2 - n, 3/2, 1/2*(1 - b*Sin(c + d*x)/a)) <-- FreeQ([a, b, c, d, n], x) && EqQ(a^2 - b^2, 0) && Not(IntegerQ(2*n)) && GtQ(a, 0))
Int((a_ + b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (a^IntPart(n)*(a + b*Sin(c + d*x))^FracPart(n)/(1 + b/a*Sin(c + d*x))^ FracPart(n)*Int((1 + b/a*Sin(c + d*x))^n, x) <-- FreeQ([a, b, c, d, n], x) && EqQ(a^2 - b^2, 0) && Not(IntegerQ(2*n)) && Not(GtQ(a, 0)))
Int(Sqrt(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (2*Sqrt(a + b)/d*EllipticE(1/2*(c - pi/2 + d*x), 2*b/(a + b)) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0) && GtQ(a + b, 0))
Int(Sqrt(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (2*Sqrt(a - b)/d*EllipticE(1/2*(c + pi/2 + d*x), -2*b/(a - b)) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0) && GtQ(a - b, 0))
Int(Sqrt(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (Sqrt(a + b*Sin(c + d*x))/Sqrt((a + b*Sin(c + d*x))/(a + b))* Int(Sqrt(a/(a + b) + b/(a + b)*Sin(c + d*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0) && Not(GtQ(a + b, 0)))
Int((a_ + b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (-b*Cos(c + d*x)*(a + b*Sin(c + d*x))^(n - 1)/(d*n) + 1/n*Int((a + b*Sin(c + d*x))^(n - 2)* Simp(a^2*n + b^2*(n - 1) + a*b*(2*n - 1)*Sin(c + d*x), x), x) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0) && GtQ(n, 1) && IntegerQ(2*n))
Int(1/(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (With([q = Rt(a^2 - b^2, 2)], x/q + 2/(d*q)*ArcTan(b*Cos(c + d*x)/(a + q + b*Sin(c + d*x)))) <-- FreeQ([a, b, c, d], x) && GtQ(a^2 - b^2, 0) && PosQ(a))
Int(1/(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (With([q = Rt(a^2 - b^2, 2)], -x/q - 2/(d*q)*ArcTan(b*Cos(c + d*x)/(a - q + b*Sin(c + d*x)))) <-- FreeQ([a, b, c, d], x) && GtQ(a^2 - b^2, 0) && NegQ(a))
Int(1/(a_ + b_'*sin(c_' + pi/2 + d_'*x_)), x_Symbol) := (With([e = FreeFactors(Tan((c + d*x)/2), x)], 2*e/d* Subst(Int(1/(a + b + (a - b)*e^2*x^2), x), x, Tan((c + d*x)/2)/e)) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0))
Int(1/(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (With([e = FreeFactors(Tan((c + d*x)/2), x)], 2*e/d* Subst(Int(1/(a + 2*b*e*x + a*e^2*x^2), x), x, Tan((c + d*x)/2)/e)) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0))
Int(1/Sqrt(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (2/(d*Sqrt(a + b))*EllipticF(1/2*(c - pi/2 + d*x), 2*b/(a + b)) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0) && GtQ(a + b, 0))
Int(1/Sqrt(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (2/(d*Sqrt(a - b))*EllipticF(1/2*(c + pi/2 + d*x), -2*b/(a - b)) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0) && GtQ(a - b, 0))
Int(1/Sqrt(a_ + b_'*sin(c_' + d_'*x_)), x_Symbol) := (Sqrt((a + b*Sin(c + d*x))/(a + b))/Sqrt(a + b*Sin(c + d*x))* Int(1/Sqrt(a/(a + b) + b/(a + b)*Sin(c + d*x)), x) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0) && Not(GtQ(a + b, 0)))
Int((a_ + b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (-b* Cos(c + d* x)*(a + b*Sin(c + d*x))^(n + 1)/(d*(n + 1)*(a^2 - b^2)) + 1/((n + 1)*(a^2 - b^2))* Int((a + b*Sin(c + d*x))^(n + 1)* Simp(a*(n + 1) - b*(n + 2)*Sin(c + d*x), x), x) <-- FreeQ([a, b, c, d], x) && NeQ(a^2 - b^2, 0) && LtQ(n, -1) && IntegerQ(2*n))
Int((a_ + b_'*sin(c_' + d_'*x_))^n_, x_Symbol) := (Cos(c + d*x)/(d*Sqrt(1 + Sin(c + d*x))*Sqrt(1 - Sin(c + d*x)))* Subst(Int((a + b*x)^n/(Sqrt(1 + x)*Sqrt(1 - x)), x), x, Sin(c + d*x)) <-- FreeQ([a, b, c, d, n], x) && NeQ(a^2 - b^2, 0) && Not(IntegerQ(2*n)))
Int((a_ + b_'*sin(c_' + d_'*x_)*cos(c_' + d_'*x_))^n_, x_Symbol) := (Int((a + b*Sin(2*c + 2*d*x)/2)^n, x) <-- FreeQ([a, b, c, d, n], x))
end
