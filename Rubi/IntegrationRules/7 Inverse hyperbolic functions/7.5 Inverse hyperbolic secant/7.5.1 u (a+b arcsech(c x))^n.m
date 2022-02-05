
(* ::Subsection::Closed:: *)
(* 7.5.1 u (a+b arcsech(c x))^n *)
Int[ArcSech[c_.*x_], x_Symbol] := x*ArcSech[c*x] + Sqrt[1 + c*x]*Sqrt[1/(1 + c*x)]*Int[1/Sqrt[1 - c^2*x^2], x] /; FreeQ[c, x]
Int[ArcCsch[c_.*x_], x_Symbol] := x*ArcCsch[c*x] + 1/c*Int[1/(x*Sqrt[1 + 1/(c^2*x^2)]), x] /; FreeQ[c, x]
Int[(a_. + b_.*ArcSech[c_.*x_])^n_, x_Symbol] := -1/c* Subst[Int[(a + b*x)^n*Sech[x]*Tanh[x], x], x, ArcSech[c*x]] /; FreeQ[{a, b, c, n}, x] && IGtQ[n, 0]
Int[(a_. + b_.*ArcCsch[c_.*x_])^n_, x_Symbol] := -1/c* Subst[Int[(a + b*x)^n*Csch[x]*Coth[x], x], x, ArcCsch[c*x]] /; FreeQ[{a, b, c, n}, x] && IGtQ[n, 0]
Int[(a_. + b_.*ArcSech[c_.*x_])/x_, x_Symbol] := -Subst[Int[(a + b*ArcCosh[x/c])/x, x], x, 1/x] /; FreeQ[{a, b, c}, x]
Int[(a_. + b_.*ArcCsch[c_.*x_])/x_, x_Symbol] := -Subst[Int[(a + b*ArcSinh[x/c])/x, x], x, 1/x] /; FreeQ[{a, b, c}, x]
Int[(d_.*x_)^m_.*(a_. + b_.*ArcSech[c_.*x_]), x_Symbol] := (d*x)^(m + 1)*(a + b*ArcSech[c*x])/(d*(m + 1)) + b*Sqrt[1 + c*x]/(m + 1)*Sqrt[1/(1 + c*x)]* Int[(d*x)^m/(Sqrt[1 - c*x]*Sqrt[1 + c*x]), x] /; FreeQ[{a, b, c, d, m}, x] && NeQ[m, -1]
Int[(d_.*x_)^m_.*(a_. + b_.*ArcCsch[c_.*x_]), x_Symbol] := (d*x)^(m + 1)*(a + b*ArcCsch[c*x])/(d*(m + 1)) + b*d/(c*(m + 1))*Int[(d*x)^(m - 1)/Sqrt[1 + 1/(c^2*x^2)], x] /; FreeQ[{a, b, c, d, m}, x] && NeQ[m, -1]
Int[x_^m_.*(a_. + b_.*ArcSech[c_.*x_])^n_, x_Symbol] := -1/c^(m + 1)* Subst[Int[(a + b*x)^n*Sech[x]^(m + 1)*Tanh[x], x], x, ArcSech[c*x]] /; FreeQ[{a, b, c}, x] && IntegerQ[n] && IntegerQ[m] && (GtQ[n, 0] || LtQ[m, -1])
Int[x_^m_.*(a_. + b_.*ArcCsch[c_.*x_])^n_, x_Symbol] := -1/c^(m + 1)* Subst[Int[(a + b*x)^n*Csch[x]^(m + 1)*Coth[x], x], x, ArcCsch[c*x]] /; FreeQ[{a, b, c}, x] && IntegerQ[n] && IntegerQ[m] && (GtQ[n, 0] || LtQ[m, -1])
Int[(a_. + b_.*ArcSech[c_.*x_])/(d_. + e_.*x_), x_Symbol] := (a + b*ArcSech[c*x])* Log[1 + (e - Sqrt[-c^2*d^2 + e^2])/(c*d*E^ArcSech[c*x])]/e + (a + b*ArcSech[c*x])* Log[1 + (e + Sqrt[-c^2*d^2 + e^2])/(c*d*E^ArcSech[c*x])]/e - (a + b*ArcSech[c*x])*Log[1 + 1/E^(2*ArcSech[c*x])]/e + b/e*Int[(Sqrt[(1 - c*x)/(1 + c*x)]* Log[1 + (e - Sqrt[-c^2*d^2 + e^2])/(c*d* E^ArcSech[c*x])])/(x*(1 - c*x)), x] + b/e*Int[(Sqrt[(1 - c*x)/(1 + c*x)]* Log[1 + (e + Sqrt[-c^2*d^2 + e^2])/(c*d* E^ArcSech[c*x])])/(x*(1 - c*x)), x] - b/e*Int[(Sqrt[(1 - c*x)/(1 + c*x)]* Log[1 + 1/E^(2*ArcSech[c*x])])/(x*(1 - c*x)), x] /; FreeQ[{a, b, c, d, e}, x]
Int[(d_. + e_.*x_)^m_.*(a_. + b_.*ArcSech[c_.*x_]), x_Symbol] := (d + e*x)^(m + 1)*(a + b*ArcSech[c*x])/(e*(m + 1)) + b*Sqrt[1 + c*x]/(e*(m + 1))*Sqrt[1/(1 + c*x)]* Int[(d + e*x)^(m + 1)/(x*Sqrt[1 - c^2*x^2]), x] /; FreeQ[{a, b, c, d, e, m}, x] && NeQ[m, -1]
Int[(a_. + b_.*ArcCsch[c_.*x_])/(d_. + e_.*x_), x_Symbol] := (a + b*ArcCsch[c*x])* Log[1 - (e - Sqrt[c^2*d^2 + e^2])*E^ArcCsch[c*x]/(c*d)]/e + (a + b*ArcCsch[c*x])* Log[1 - (e + Sqrt[c^2*d^2 + e^2])*E^ArcCsch[c*x]/(c*d)]/e - (a + b*ArcCsch[c*x])*Log[1 - E^(2*ArcCsch[c*x])]/e + b/(c*e)* Int[Log[1 - (e - Sqrt[c^2*d^2 + e^2])*E^ArcCsch[c*x]/(c*d)]/(x^2* Sqrt[1 + 1/(c^2*x^2)]), x] + b/(c*e)* Int[Log[1 - (e + Sqrt[c^2*d^2 + e^2])*E^ArcCsch[c*x]/(c*d)]/(x^2* Sqrt[1 + 1/(c^2*x^2)]), x] - b/(c*e)* Int[Log[1 - E^(2*ArcCsch[c*x])]/(x^2*Sqrt[1 + 1/(c^2*x^2)]), x] /; FreeQ[{a, b, c, d, e}, x]
Int[(d_. + e_.*x_)^m_.*(a_. + b_.*ArcCsch[c_.*x_]), x_Symbol] := (d + e*x)^(m + 1)*(a + b*ArcCsch[c*x])/(e*(m + 1)) + b/(c*e*(m + 1))* Int[(d + e*x)^(m + 1)/(x^2*Sqrt[1 + 1/(c^2*x^2)]), x] /; FreeQ[{a, b, c, d, e, m}, x] && NeQ[m, -1]
Int[(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcSech[c_.*x_]), x_Symbol] := With[{u = IntHide[(d + e*x^2)^p, x]}, Dist[(a + b*ArcSech[c*x]), u, x] + b*Sqrt[1 + c*x]*Sqrt[1/(1 + c*x)]* Int[SimplifyIntegrand[u/(x*Sqrt[1 - c*x]*Sqrt[1 + c*x]), x], x]] /; FreeQ[{a, b, c, d, e}, x] && (IGtQ[p, 0] || ILtQ[p + 1/2, 0])
Int[(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcCsch[c_.*x_]), x_Symbol] := With[{u = IntHide[(d + e*x^2)^p, x]}, Dist[(a + b*ArcCsch[c*x]), u, x] - b*c*x/Sqrt[-c^2*x^2]* Int[SimplifyIntegrand[u/(x*Sqrt[-1 - c^2*x^2]), x], x]] /; FreeQ[{a, b, c, d, e}, x] && (IGtQ[p, 0] || ILtQ[p + 1/2, 0])
Int[(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcSech[c_.*x_])^n_., x_Symbol] := -Subst[ Int[(e + d*x^2)^p*(a + b*ArcCosh[x/c])^n/x^(2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && IntegerQ[p]
Int[(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcCsch[c_.*x_])^n_., x_Symbol] := -Subst[ Int[(e + d*x^2)^p*(a + b*ArcSinh[x/c])^n/x^(2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && IntegerQ[p]
Int[(d_. + e_.*x_^2)^p_*(a_. + b_.*ArcSech[c_.*x_])^n_., x_Symbol] := -Sqrt[x^2]/x* Subst[Int[(e + d*x^2)^p*(a + b*ArcCosh[x/c])^n/x^(2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && EqQ[c^2*d + e, 0] && IntegerQ[p + 1/2] && GtQ[e, 0] && LtQ[d, 0]
Int[(d_. + e_.*x_^2)^p_*(a_. + b_.*ArcCsch[c_.*x_])^n_., x_Symbol] := -Sqrt[x^2]/x* Subst[Int[(e + d*x^2)^p*(a + b*ArcSinh[x/c])^n/x^(2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && EqQ[e - c^2*d, 0] && IntegerQ[p + 1/2] && GtQ[e, 0] && LtQ[d, 0]
Int[(d_. + e_.*x_^2)^p_*(a_. + b_.*ArcSech[c_.*x_])^n_., x_Symbol] := -Sqrt[d + e*x^2]/(x*Sqrt[e + d/x^2])* Subst[Int[(e + d*x^2)^p*(a + b*ArcCosh[x/c])^n/x^(2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && EqQ[c^2*d + e, 0] && IntegerQ[p + 1/2] && Not[GtQ[e, 0] && LtQ[d, 0]]
Int[(d_. + e_.*x_^2)^p_*(a_. + b_.*ArcCsch[c_.*x_])^n_., x_Symbol] := -Sqrt[d + e*x^2]/(x*Sqrt[e + d/x^2])* Subst[Int[(e + d*x^2)^p*(a + b*ArcSinh[x/c])^n/x^(2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && EqQ[e - c^2*d, 0] && IntegerQ[p + 1/2] && Not[GtQ[e, 0] && LtQ[d, 0]]
Int[x_*(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcSech[c_.*x_]), x_Symbol] := (d + e*x^2)^(p + 1)*(a + b*ArcSech[c*x])/(2* e*(p + 1)) + b*Sqrt[1 + c*x]/(2*e*(p + 1))*Sqrt[1/(1 + c*x)]* Int[(d + e*x^2)^(p + 1)/(x*Sqrt[1 - c*x]*Sqrt[1 + c*x]), x] /; FreeQ[{a, b, c, d, e, p}, x] && NeQ[p, -1]
Int[x_*(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcCsch[c_.*x_]), x_Symbol] := (d + e*x^2)^(p + 1)*(a + b*ArcCsch[c*x])/(2* e*(p + 1)) - b*c*x/(2*e*(p + 1)*Sqrt[-c^2*x^2])* Int[(d + e*x^2)^(p + 1)/(x*Sqrt[-1 - c^2*x^2]), x] /; FreeQ[{a, b, c, d, e, p}, x] && NeQ[p, -1]
Int[(f_.*x_)^m_.*(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcSech[c_.*x_]), x_Symbol] := With[{u = IntHide[(f*x)^m*(d + e*x^2)^p, x]}, Dist[(a + b*ArcSech[c*x]), u, x] + b*Sqrt[1 + c*x]*Sqrt[1/(1 + c*x)]* Int[SimplifyIntegrand[u/(x*Sqrt[1 - c*x]*Sqrt[1 + c*x]), x], x]] /; FreeQ[{a, b, c, d, e, f, m, p}, x] && ( IGtQ[p, 0] && Not[ILtQ[(m - 1)/2, 0] && GtQ[m + 2*p + 3, 0]] || IGtQ[(m + 1)/2, 0] && Not[ILtQ[p, 0] && GtQ[m + 2*p + 3, 0]] || ILtQ[(m + 2*p + 1)/2, 0] && Not[ILtQ[(m - 1)/2, 0]])
Int[(f_.*x_)^m_.*(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcCsch[c_.*x_]), x_Symbol] := With[{u = IntHide[(f*x)^m*(d + e*x^2)^p, x]}, Dist[(a + b*ArcCsch[c*x]), u, x] - b*c*x/Sqrt[-c^2*x^2]* Int[SimplifyIntegrand[u/(x*Sqrt[-1 - c^2*x^2]), x], x]] /; FreeQ[{a, b, c, d, e, f, m, p}, x] && ( IGtQ[p, 0] && Not[ILtQ[(m - 1)/2, 0] && GtQ[m + 2*p + 3, 0]] || IGtQ[(m + 1)/2, 0] && Not[ILtQ[p, 0] && GtQ[m + 2*p + 3, 0]] || ILtQ[(m + 2*p + 1)/2, 0] && Not[ILtQ[(m - 1)/2, 0]] )
Int[x_^m_.*(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcSech[c_.*x_])^n_., x_Symbol] := -Subst[ Int[(e + d*x^2)^p*(a + b*ArcCosh[x/c])^n/x^(m + 2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && IntegersQ[m, p]
Int[x_^m_.*(d_. + e_.*x_^2)^p_.*(a_. + b_.*ArcCsch[c_.*x_])^n_., x_Symbol] := -Subst[ Int[(e + d*x^2)^p*(a + b*ArcSinh[x/c])^n/x^(m + 2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && IntegersQ[m, p]
Int[x_^m_.*(d_. + e_.*x_^2)^p_*(a_. + b_.*ArcSech[c_.*x_])^n_., x_Symbol] := -Sqrt[x^2]/x* Subst[Int[(e + d*x^2)^p*(a + b*ArcCosh[x/c])^n/x^(m + 2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && EqQ[c^2*d + e, 0] && IntegerQ[m] && IntegerQ[p + 1/2] && GtQ[e, 0] && LtQ[d, 0]
Int[x_^m_.*(d_. + e_.*x_^2)^p_*(a_. + b_.*ArcCsch[c_.*x_])^n_., x_Symbol] := -Sqrt[x^2]/x* Subst[Int[(e + d*x^2)^p*(a + b*ArcSinh[x/c])^n/x^(m + 2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && EqQ[e - c^2*d, 0] && IntegerQ[m] && IntegerQ[p + 1/2] && GtQ[e, 0] && LtQ[d, 0]
Int[x_^m_.*(d_. + e_.*x_^2)^p_*(a_. + b_.*ArcSech[c_.*x_])^n_., x_Symbol] := -Sqrt[d + e*x^2]/(x*Sqrt[e + d/x^2])* Subst[Int[(e + d*x^2)^p*(a + b*ArcCosh[x/c])^n/x^(m + 2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && EqQ[c^2*d + e, 0] && IntegerQ[m] && IntegerQ[p + 1/2] && Not[GtQ[e, 0] && LtQ[d, 0]]
Int[x_^m_.*(d_. + e_.*x_^2)^p_*(a_. + b_.*ArcCsch[c_.*x_])^n_., x_Symbol] := -Sqrt[d + e*x^2]/(x*Sqrt[e + d/x^2])* Subst[Int[(e + d*x^2)^p*(a + b*ArcSinh[x/c])^n/x^(m + 2*(p + 1)), x], x, 1/x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[n, 0] && EqQ[e - c^2*d, 0] && IntegerQ[m] && IntegerQ[p + 1/2] && Not[GtQ[e, 0] && LtQ[d, 0]]
Int[u_*(a_. + b_.*ArcSech[c_.*x_]), x_Symbol] := With[{v = IntHide[u, x]}, Dist[(a + b*ArcSech[c*x]), v, x] + b*Sqrt[ 1 - c^2*x^2]/(c*x*Sqrt[-1 + 1/(c*x)]*Sqrt[1 + 1/(c*x)])* Int[SimplifyIntegrand[v/(x*Sqrt[1 - c^2*x^2]), x], x] /; InverseFunctionFreeQ[v, x]] /; FreeQ[{a, b, c}, x]
Int[u_*(a_. + b_.*ArcCsch[c_.*x_]), x_Symbol] := With[{v = IntHide[u, x]}, Dist[(a + b*ArcCsch[c*x]), v, x] + b/c* Int[SimplifyIntegrand[v/(x^2*Sqrt[1 + 1/(c^2*x^2)]), x], x] /; InverseFunctionFreeQ[v, x]] /; FreeQ[{a, b, c}, x]
Int[u_.*(a_. + b_.*ArcSech[c_.*x_])^n_., x_Symbol] := Unintegrable[u*(a + b*ArcSech[c*x])^n, x] /; FreeQ[{a, b, c, n}, x]
Int[u_.*(a_. + b_.*ArcCsch[c_.*x_])^n_., x_Symbol] := Unintegrable[u*(a + b*ArcCsch[c*x])^n, x] /; FreeQ[{a, b, c, n}, x]
