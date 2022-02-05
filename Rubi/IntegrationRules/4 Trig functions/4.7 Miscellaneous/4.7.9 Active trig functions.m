
(* ::Subsection::Closed:: *)
(* 4.7.9 Active trig functions *)
Int[(e_. + f_.*x_)^m_.* Sin[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/b*Int[(e + f*x)^m*Sin[c + d*x]^(n - 1), x] - a/b*Int[(e + f*x)^m*Sin[c + d*x]^(n - 1)/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.* Cos[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/b*Int[(e + f*x)^m*Cos[c + d*x]^(n - 1), x] - a/b*Int[(e + f*x)^m*Cos[c + d*x]^(n - 1)/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.*Cos[c_. + d_.*x_]/(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := -I*(e + f*x)^(m + 1)/(b*f*(m + 1)) + 2*Int[(e + f*x)^m*E^(I*(c + d*x))/(a - I*b*E^(I*(c + d*x))), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[a^2 - b^2, 0]
Int[(e_. + f_.*x_)^m_.*Sin[c_. + d_.*x_]/(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := I*(e + f*x)^(m + 1)/(b*f*(m + 1)) - 2*I*Int[(e + f*x)^m*E^(I*(c + d*x))/(a + b*E^(I*(c + d*x))), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && EqQ[a^2 - b^2, 0]
Int[(e_. + f_.*x_)^m_.*Cos[c_. + d_.*x_]/(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := -I*(e + f*x)^(m + 1)/(b*f*(m + 1)) + Int[(e + f*x)^m* E^(I*(c + d*x))/(a - Rt[a^2 - b^2, 2] - I*b*E^(I*(c + d*x))), x] + Int[(e + f*x)^m* E^(I*(c + d*x))/(a + Rt[a^2 - b^2, 2] - I*b*E^(I*(c + d*x))), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && PosQ[a^2 - b^2]
Int[(e_. + f_.*x_)^m_.*Sin[c_. + d_.*x_]/(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := I*(e + f*x)^(m + 1)/(b*f*(m + 1)) - I*Int[(e + f*x)^m* E^(I*(c + d*x))/(a - Rt[a^2 - b^2, 2] + b*E^(I*(c + d*x))), x] - I*Int[(e + f*x)^m* E^(I*(c + d*x))/(a + Rt[a^2 - b^2, 2] + b*E^(I*(c + d*x))), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && PosQ[a^2 - b^2]
Int[(e_. + f_.*x_)^m_.*Cos[c_. + d_.*x_]/(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := -I*(e + f*x)^(m + 1)/(b*f*(m + 1)) + I*Int[(e + f*x)^m* E^(I*(c + d*x))/(I*a - Rt[-a^2 + b^2, 2] + b*E^(I*(c + d*x))), x] + I*Int[(e + f*x)^m* E^(I*(c + d*x))/(I*a + Rt[-a^2 + b^2, 2] + b*E^(I*(c + d*x))), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NegQ[a^2 - b^2]
Int[(e_. + f_.*x_)^m_.*Sin[c_. + d_.*x_]/(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := I*(e + f*x)^(m + 1)/(b*f*(m + 1)) + Int[(e + f*x)^m* E^(I*(c + d*x))/(I*a - Rt[-a^2 + b^2, 2] + I*b*E^(I*(c + d*x))), x] + Int[(e + f*x)^m* E^(I*(c + d*x))/(I*a + Rt[-a^2 + b^2, 2] + I*b*E^(I*(c + d*x))), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NegQ[a^2 - b^2]
Int[(e_. + f_.*x_)^m_.* Cos[c_. + d_.*x_]^n_/(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Cos[c + d*x]^(n - 2), x] - 1/b*Int[(e + f*x)^m*Cos[c + d*x]^(n - 2)*Sin[c + d*x], x] /; FreeQ[{a, b, c, d, e, f, m}, x] && IGtQ[n, 1] && EqQ[a^2 - b^2, 0]
Int[(e_. + f_.*x_)^m_.* Sin[c_. + d_.*x_]^n_/(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Sin[c + d*x]^(n - 2), x] - 1/b*Int[(e + f*x)^m*Sin[c + d*x]^(n - 2)*Cos[c + d*x], x] /; FreeQ[{a, b, c, d, e, f, m}, x] && IGtQ[n, 1] && EqQ[a^2 - b^2, 0]
Int[(e_. + f_.*x_)^m_.* Cos[c_. + d_.*x_]^n_/(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := a/b^2*Int[(e + f*x)^m*Cos[c + d*x]^(n - 2), x] - 1/b*Int[(e + f*x)^m*Cos[c + d*x]^(n - 2)*Sin[c + d*x], x] - (a^2 - b^2)/b^2* Int[(e + f*x)^m*Cos[c + d*x]^(n - 2)/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[n, 1] && NeQ[a^2 - b^2, 0] && IGtQ[m, 0]
Int[(e_. + f_.*x_)^m_.* Sin[c_. + d_.*x_]^n_/(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := a/b^2*Int[(e + f*x)^m*Sin[c + d*x]^(n - 2), x] - 1/b*Int[(e + f*x)^m*Sin[c + d*x]^(n - 2)*Cos[c + d*x], x] - (a^2 - b^2)/b^2* Int[(e + f*x)^m*Sin[c + d*x]^(n - 2)/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[n, 1] && NeQ[a^2 - b^2, 0] && IGtQ[m, 0]
Int[(e_. + f_.*x_)^m_.* Tan[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/b*Int[(e + f*x)^m*Sec[c + d*x]*Tan[c + d*x]^(n - 1), x] - a/b*Int[(e + f*x)^m*Sec[c + d*x]* Tan[c + d*x]^(n - 1)/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.* Cot[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/b*Int[(e + f*x)^m*Csc[c + d*x]*Cot[c + d*x]^(n - 1), x] - a/b*Int[(e + f*x)^m*Csc[c + d*x]* Cot[c + d*x]^(n - 1)/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.* Cot[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Cot[c + d*x]^n, x] - b/a*Int[(e + f*x)^m*Cos[c + d*x]* Cot[c + d*x]^(n - 1)/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.* Tan[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Tan[c + d*x]^n, x] - b/a*Int[(e + f*x)^m*Sin[c + d*x]* Tan[c + d*x]^(n - 1)/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.* Sec[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Sec[c + d*x]^(n + 2), x] - 1/b*Int[(e + f*x)^m*Sec[c + d*x]^(n + 1)*Tan[c + d*x], x] /; FreeQ[{a, b, c, d, e, f, n}, x] && IGtQ[m, 0] && EqQ[a^2 - b^2, 0]
Int[(e_. + f_.*x_)^m_.* Csc[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Csc[c + d*x]^(n + 2), x] - 1/b*Int[(e + f*x)^m*Csc[c + d*x]^(n + 1)*Cot[c + d*x], x] /; FreeQ[{a, b, c, d, e, f, n}, x] && IGtQ[m, 0] && EqQ[a^2 - b^2, 0]
Int[(e_. + f_.*x_)^m_.* Sec[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := -b^2/(a^2 - b^2)* Int[(e + f*x)^m*Sec[c + d*x]^(n - 2)/(a + b*Sin[c + d*x]), x] + 1/(a^2 - b^2)* Int[(e + f*x)^m*Sec[c + d*x]^n*(a - b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[a^2 - b^2, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.* Csc[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := -b^2/(a^2 - b^2)* Int[(e + f*x)^m*Csc[c + d*x]^(n - 2)/(a + b*Cos[c + d*x]), x] + 1/(a^2 - b^2)* Int[(e + f*x)^m*Csc[c + d*x]^n*(a - b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && NeQ[a^2 - b^2, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.* Csc[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Csc[c + d*x]^n, x] - b/a*Int[(e + f*x)^m*Csc[c + d*x]^(n - 1)/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.* Sec[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Sec[c + d*x]^n, x] - b/a*Int[(e + f*x)^m*Sec[c + d*x]^(n - 1)/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[(e_. + f_.*x_)^m_.* F_[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := Unintegrable[(e + f*x)^m*F[c + d*x]^n/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && TrigQ[F]
Int[(e_. + f_.*x_)^m_.* F_[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := Unintegrable[(e + f*x)^m*F[c + d*x]^n/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && TrigQ[F]
Int[(e_. + f_.*x_)^m_.*Cos[c_. + d_.*x_]^p_.* Sin[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/b*Int[(e + f*x)^m*Cos[c + d*x]^p*Sin[c + d*x]^(n - 1), x] - a/b*Int[(e + f*x)^m*Cos[c + d*x]^p* Sin[c + d*x]^(n - 1)/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*Sin[c_. + d_.*x_]^p_.* Cos[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/b*Int[(e + f*x)^m*Sin[c + d*x]^p*Cos[c + d*x]^(n - 1), x] - a/b*Int[(e + f*x)^m*Sin[c + d*x]^p* Cos[c + d*x]^(n - 1)/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*Cos[c_. + d_.*x_]^p_.* Tan[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/b*Int[(e + f*x)^m*Cos[c + d*x]^(p - 1)*Tan[c + d*x]^(n - 1), x] - a/b*Int[(e + f*x)^m*Cos[c + d*x]^(p - 1)* Tan[c + d*x]^(n - 1)/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*Sin[c_. + d_.*x_]^p_.* Cot[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/b*Int[(e + f*x)^m*Sin[c + d*x]^(p - 1)*Cot[c + d*x]^(n - 1), x] - a/b*Int[(e + f*x)^m*Sin[c + d*x]^(p - 1)* Cot[c + d*x]^(n - 1)/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*Cos[c_. + d_.*x_]^p_.* Cot[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Cos[c + d*x]^p*Cot[c + d*x]^n, x] - b/a*Int[(e + f*x)^m*Cos[c + d*x]^(p + 1)* Cot[c + d*x]^(n - 1)/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*Sin[c_. + d_.*x_]^p_.* Tan[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Sin[c + d*x]^p*Tan[c + d*x]^n, x] - b/a*Int[(e + f*x)^m*Sin[c + d*x]^(p + 1)* Tan[c + d*x]^(n - 1)/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*Cos[c_. + d_.*x_]^p_.* Csc[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Cos[c + d*x]^p*Csc[c + d*x]^n, x] - b/a*Int[(e + f*x)^m*Cos[c + d*x]^p* Csc[c + d*x]^(n - 1)/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*Sin[c_. + d_.*x_]^p_.* Sec[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := 1/a*Int[(e + f*x)^m*Sin[c + d*x]^p*Sec[c + d*x]^n, x] - b/a*Int[(e + f*x)^m*Sin[c + d*x]^p* Sec[c + d*x]^(n - 1)/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[m, 0] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(e_. + f_.*x_)^m_.*Cos[c_. + d_.*x_]^p_.* F_[c_. + d_.*x_]^n_./(a_ + b_.*Sin[c_. + d_.*x_]), x_Symbol] := Unintegrable[(e + f*x)^m*Cos[c + d*x]^p* F[c + d*x]^n/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f, m, n, p}, x] && TrigQ[F]
Int[(e_. + f_.*x_)^m_.*Sin[c_. + d_.*x_]^p_.* F_[c_. + d_.*x_]^n_./(a_ + b_.*Cos[c_. + d_.*x_]), x_Symbol] := Unintegrable[(e + f*x)^m*Sin[c + d*x]^p* F[c + d*x]^n/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && TrigQ[F]
Int[(e_. + f_.*x_)^m_.* F_[c_. + d_.*x_]^n_./(a_ + b_.*Sec[c_. + d_.*x_]), x_Symbol] := Int[(e + f*x)^m*Cos[c + d*x]*F[c + d*x]^n/(b + a*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && TrigQ[F] && IntegersQ[m, n]
Int[(e_. + f_.*x_)^m_.* F_[c_. + d_.*x_]^n_./(a_ + b_.*Csc[c_. + d_.*x_]), x_Symbol] := Int[(e + f*x)^m*Sin[c + d*x]*F[c + d*x]^n/(b + a*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && TrigQ[F] && IntegersQ[m, n]
Int[(e_. + f_.*x_)^m_.*F_[c_. + d_.*x_]^n_.* G_[c_. + d_.*x_]^p_./(a_ + b_.*Sec[c_. + d_.*x_]), x_Symbol] := Int[(e + f*x)^m*Cos[c + d*x]*F[c + d*x]^n* G[c + d*x]^p/(b + a*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && TrigQ[F] && TrigQ[G] && IntegersQ[m, n, p]
Int[(e_. + f_.*x_)^m_.*F_[c_. + d_.*x_]^n_.* G_[c_. + d_.*x_]^p_./(a_ + b_.*Csc[c_. + d_.*x_]), x_Symbol] := Int[(e + f*x)^m*Sin[c + d*x]*F[c + d*x]^n* G[c + d*x]^p/(b + a*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && TrigQ[F] && TrigQ[G] && IntegersQ[m, n, p]
Int[Sin[a_. + b_.*x_]^p_.*Sin[c_. + d_.*x_]^q_., x_Symbol] := 1/2^(p + q)* Int[ExpandIntegrand[(I/E^(I*(c + d*x)) - I*E^(I*(c + d*x)))^ q, (I/E^(I*(a + b*x)) - I*E^(I*(a + b*x)))^p, x], x] /; FreeQ[{a, b, c, d, q}, x] && IGtQ[p, 0] && Not[IntegerQ[q]]
Int[Cos[a_. + b_.*x_]^p_.*Cos[c_. + d_.*x_]^q_., x_Symbol] := 1/2^(p + q)* Int[ExpandIntegrand[(E^(-I*(c + d*x)) + E^(I*(c + d*x)))^ q, (E^(-I*(a + b*x)) + E^(I*(a + b*x)))^p, x], x] /; FreeQ[{a, b, c, d, q}, x] && IGtQ[p, 0] && Not[IntegerQ[q]]
Int[Sin[a_. + b_.*x_]^p_.*Cos[c_. + d_.*x_]^q_., x_Symbol] := 1/2^(p + q)* Int[ExpandIntegrand[(E^(-I*(c + d*x)) + E^(I*(c + d*x)))^ q, (I/E^(I*(a + b*x)) - I*E^(I*(a + b*x)))^p, x], x] /; FreeQ[{a, b, c, d, q}, x] && IGtQ[p, 0] && Not[IntegerQ[q]]
Int[Cos[a_. + b_.*x_]^p_.*Sin[c_. + d_.*x_]^q_., x_Symbol] := 1/2^(p + q)* Int[ExpandIntegrand[(I/E^(I*(c + d*x)) - I*E^(I*(c + d*x)))^ q, (E^(-I*(a + b*x)) + E^(I*(a + b*x)))^p, x], x] /; FreeQ[{a, b, c, d, q}, x] && IGtQ[p, 0] && Not[IntegerQ[q]]
Int[Sin[a_. + b_.*x_]*Tan[c_. + d_.*x_], x_Symbol] := Int[E^(-I*(a + b*x))/2 - E^(I*(a + b*x))/2 - E^(-I*(a + b*x))/(1 + E^(2*I*(c + d*x))) + E^(I*(a + b*x))/(1 + E^(2*I*(c + d*x))), x] /; FreeQ[{a, b, c, d}, x] && NeQ[b^2 - d^2, 0]
Int[Cos[a_. + b_.*x_]*Cot[c_. + d_.*x_], x_Symbol] := Int[I*E^(-I*(a + b*x))/2 + I*E^(I*(a + b*x))/2 - I*E^(-I*(a + b*x))/(1 - E^(2*I*(c + d*x))) - I*E^(I*(a + b*x))/(1 - E^(2*I*(c + d*x))), x] /; FreeQ[{a, b, c, d}, x] && NeQ[b^2 - d^2, 0]
Int[Sin[a_. + b_.*x_]*Cot[c_. + d_.*x_], x_Symbol] := Int[-E^(-I*(a + b*x))/2 + E^(I*(a + b*x))/2 + E^(-I*(a + b*x))/(1 - E^(2*I*(c + d*x))) - E^(I*(a + b*x))/(1 - E^(2*I*(c + d*x))), x] /; FreeQ[{a, b, c, d}, x] && NeQ[b^2 - d^2, 0]
Int[Cos[a_. + b_.*x_]*Tan[c_. + d_.*x_], x_Symbol] := Int[-I*E^(-I*(a + b*x))/2 - I*E^(I*(a + b*x))/2 + I*E^(-I*(a + b*x))/(1 + E^(2*I*(c + d*x))) + I*E^(I*(a + b*x))/(1 + E^(2*I*(c + d*x))), x] /; FreeQ[{a, b, c, d}, x] && NeQ[b^2 - d^2, 0]
Int[Sin[a_./(c_. + d_.*x_)]^n_., x_Symbol] := -1/d*Subst[Int[Sin[a*x]^n/x^2, x], x, 1/(c + d*x)] /; FreeQ[{a, c, d}, x] && IGtQ[n, 0]
Int[Cos[a_./(c_. + d_.*x_)]^n_., x_Symbol] := -1/d*Subst[Int[Cos[a*x]^n/x^2, x], x, 1/(c + d*x)] /; FreeQ[{a, c, d}, x] && IGtQ[n, 0]
Int[Sin[e_.*(a_. + b_.*x_)/(c_. + d_.*x_)]^n_., x_Symbol] := -1/d* Subst[Int[Sin[b*e/d - e*(b*c - a*d)*x/d]^n/x^2, x], x, 1/(c + d*x)] /; FreeQ[{a, b, c, d}, x] && IGtQ[n, 0] && NeQ[b*c - a*d, 0]
Int[Cos[e_.*(a_. + b_.*x_)/(c_. + d_.*x_)]^n_., x_Symbol] := -1/d* Subst[Int[Cos[b*e/d - e*(b*c - a*d)*x/d]^n/x^2, x], x, 1/(c + d*x)] /; FreeQ[{a, b, c, d}, x] && IGtQ[n, 0] && NeQ[b*c - a*d, 0]
Int[Sin[u_]^n_., x_Symbol] := Module[{lst = QuotientOfLinearsParts[u, x]}, Int[Sin[(lst[[1]] + lst[[2]]*x)/(lst[[3]] + lst[[4]]*x)]^n, x]] /; IGtQ[n, 0] && QuotientOfLinearsQ[u, x]
Int[Cos[u_]^n_., x_Symbol] := Module[{lst = QuotientOfLinearsParts[u, x]}, Int[Cos[(lst[[1]] + lst[[2]]*x)/(lst[[3]] + lst[[4]]*x)]^n, x]] /; IGtQ[n, 0] && QuotientOfLinearsQ[u, x]
Int[u_.*Sin[v_]^p_.*Sin[w_]^q_., x_Symbol] := Int[u*Sin[v]^(p + q), x] /; EqQ[w, v]
Int[u_.*Cos[v_]^p_.*Cos[w_]^q_., x_Symbol] := Int[u*Cos[v]^(p + q), x] /; EqQ[w, v]
Int[Sin[v_]^p_.*Sin[w_]^q_., x_Symbol] := Int[ExpandTrigReduce[Sin[v]^p*Sin[w]^q, x], x] /; (PolynomialQ[v, x] && PolynomialQ[w, x] || BinomialQ[{v, w}, x] && IndependentQ[Cancel[v/w], x]) && IGtQ[p, 0] && IGtQ[q, 0]
Int[Cos[v_]^p_.*Cos[w_]^q_., x_Symbol] := Int[ExpandTrigReduce[Cos[v]^p*Cos[w]^q, x], x] /; (PolynomialQ[v, x] && PolynomialQ[w, x] || BinomialQ[{v, w}, x] && IndependentQ[Cancel[v/w], x]) && IGtQ[p, 0] && IGtQ[q, 0]
Int[x_^m_.*Sin[v_]^p_.*Sin[w_]^q_., x_Symbol] := Int[ExpandTrigReduce[x^m, Sin[v]^p*Sin[w]^q, x], x] /; IGtQ[m, 0] && IGtQ[p, 0] && IGtQ[q, 0] && (PolynomialQ[v, x] && PolynomialQ[w, x] || BinomialQ[{v, w}, x] && IndependentQ[Cancel[v/w], x])
Int[x_^m_.*Cos[v_]^p_.*Cos[w_]^q_., x_Symbol] := Int[ExpandTrigReduce[x^m, Cos[v]^p*Cos[w]^q, x], x] /; IGtQ[m, 0] && IGtQ[p, 0] && IGtQ[q, 0] && (PolynomialQ[v, x] && PolynomialQ[w, x] || BinomialQ[{v, w}, x] && IndependentQ[Cancel[v/w], x])
Int[u_.*Sin[v_]^p_.*Cos[w_]^p_., x_Symbol] := 1/2^p*Int[u*Sin[2*v]^p, x] /; EqQ[w, v] && IntegerQ[p]
Int[Sin[v_]^p_.*Cos[w_]^q_., x_Symbol] := Int[ExpandTrigReduce[Sin[v]^p*Cos[w]^q, x], x] /; IGtQ[p, 0] && IGtQ[q, 0] && (PolynomialQ[v, x] && PolynomialQ[w, x] || BinomialQ[{v, w}, x] && IndependentQ[Cancel[v/w], x])
Int[x_^m_.*Sin[v_]^p_.*Cos[w_]^q_., x_Symbol] := Int[ExpandTrigReduce[x^m, Sin[v]^p*Cos[w]^q, x], x] /; IGtQ[m, 0] && IGtQ[p, 0] && IGtQ[q, 0] && (PolynomialQ[v, x] && PolynomialQ[w, x] || BinomialQ[{v, w}, x] && IndependentQ[Cancel[v/w], x])
Int[Sin[v_]*Tan[w_]^n_., x_Symbol] := -Int[Cos[v]*Tan[w]^(n - 1), x] + Cos[v - w]*Int[Sec[w]*Tan[w]^(n - 1), x] /; GtQ[n, 0] && FreeQ[v - w, x] && NeQ[w, v]
Int[Cos[v_]*Cot[w_]^n_., x_Symbol] := -Int[Sin[v]*Cot[w]^(n - 1), x] + Cos[v - w]*Int[Csc[w]*Cot[w]^(n - 1), x] /; GtQ[n, 0] && FreeQ[v - w, x] && NeQ[w, v]
Int[Sin[v_]*Cot[w_]^n_., x_Symbol] := Int[Cos[v]*Cot[w]^(n - 1), x] + Sin[v - w]*Int[Csc[w]*Cot[w]^(n - 1), x] /; GtQ[n, 0] && FreeQ[v - w, x] && NeQ[w, v]
Int[Cos[v_]*Tan[w_]^n_., x_Symbol] := Int[Sin[v]*Tan[w]^(n - 1), x] - Sin[v - w]*Int[Sec[w]*Tan[w]^(n - 1), x] /; GtQ[n, 0] && FreeQ[v - w, x] && NeQ[w, v]
Int[Sin[v_]*Sec[w_]^n_., x_Symbol] := Cos[v - w]*Int[Tan[w]*Sec[w]^(n - 1), x] + Sin[v - w]*Int[Sec[w]^(n - 1), x] /; GtQ[n, 0] && FreeQ[v - w, x] && NeQ[w, v]
Int[Cos[v_]*Csc[w_]^n_., x_Symbol] := Cos[v - w]*Int[Cot[w]*Csc[w]^(n - 1), x] - Sin[v - w]*Int[Csc[w]^(n - 1), x] /; GtQ[n, 0] && FreeQ[v - w, x] && NeQ[w, v]
Int[Sin[v_]*Csc[w_]^n_., x_Symbol] := Sin[v - w]*Int[Cot[w]*Csc[w]^(n - 1), x] + Cos[v - w]*Int[Csc[w]^(n - 1), x] /; GtQ[n, 0] && FreeQ[v - w, x] && NeQ[w, v]
Int[Cos[v_]*Sec[w_]^n_., x_Symbol] := -Sin[v - w]*Int[Tan[w]*Sec[w]^(n - 1), x] + Cos[v - w]*Int[Sec[w]^(n - 1), x] /; GtQ[n, 0] && FreeQ[v - w, x] && NeQ[w, v]
Int[(e_. + f_.*x_)^m_.*(a_ + b_.*Sin[c_. + d_.*x_]*Cos[c_. + d_.*x_])^ n_., x_Symbol] := Int[(e + f*x)^m*(a + b*Sin[2*c + 2*d*x]/2)^n, x] /; FreeQ[{a, b, c, d, e, f, m, n}, x]
Int[x_^m_.*(a_ + b_.*Sin[c_. + d_.*x_]^2)^n_, x_Symbol] := 1/2^n*Int[x^m*(2*a + b - b*Cos[2*c + 2*d*x])^n, x] /; FreeQ[{a, b, c, d}, x] && NeQ[a + b, 0] && IGtQ[m, 0] && ILtQ[n, 0] && (EqQ[n, -1] || EqQ[m, 1] && EqQ[n, -2])
Int[x_^m_.*(a_ + b_.*Cos[c_. + d_.*x_]^2)^n_, x_Symbol] := 1/2^n*Int[x^m*(2*a + b + b*Cos[2*c + 2*d*x])^n, x] /; FreeQ[{a, b, c, d}, x] && NeQ[a + b, 0] && IGtQ[m, 0] && ILtQ[n, 0] && (EqQ[n, -1] || EqQ[m, 1] && EqQ[n, -2])
Int[(f_. + g_.*x_)^ m_./(a_. + b_.*Cos[d_. + e_.*x_]^2 + c_.*Sin[d_. + e_.*x_]^2), x_Symbol] := 2*Int[(f + g*x)^m/(2*a + b + c + (b - c)*Cos[2*d + 2*e*x]), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && IGtQ[m, 0] && NeQ[a + b, 0] && NeQ[a + c, 0]
Int[(f_. + g_.*x_)^m_.* Sec[d_. + e_.*x_]^2/(b_ + c_.*Tan[d_. + e_.*x_]^2), x_Symbol] := 2*Int[(f + g*x)^m/(b + c + (b - c)*Cos[2*d + 2*e*x]), x] /; FreeQ[{b, c, d, e, f, g}, x] && IGtQ[m, 0]
Int[(f_. + g_.*x_)^m_.* Sec[d_. + e_.*x_]^2/(b_. + a_.*Sec[d_. + e_.*x_]^2 + c_.*Tan[d_. + e_.*x_]^2), x_Symbol] := 2*Int[(f + g*x)^m/(2*a + b + c + (b - c)*Cos[2*d + 2*e*x]), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && IGtQ[m, 0] && NeQ[a + b, 0] && NeQ[a + c, 0]
Int[(f_. + g_.*x_)^m_.* Csc[d_. + e_.*x_]^2/(c_ + b_.*Cot[d_. + e_.*x_]^2), x_Symbol] := 2*Int[(f + g*x)^m/(b + c + (b - c)*Cos[2*d + 2*e*x]), x] /; FreeQ[{b, c, d, e, f, g}, x] && IGtQ[m, 0]
Int[(f_. + g_.*x_)^m_.* Csc[d_. + e_.*x_]^2/(c_. + b_.*Cot[d_. + e_.*x_]^2 + a_.*Csc[d_. + e_.*x_]^2), x_Symbol] := 2*Int[(f + g*x)^m/(2*a + b + c + (b - c)*Cos[2*d + 2*e*x]), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && IGtQ[m, 0] && NeQ[a + b, 0] && NeQ[a + c, 0]
Int[(e_. + f_.*x_)*(A_ + B_.*Sin[c_. + d_.*x_])/(a_ + b_.*Sin[c_. + d_.*x_])^2, x_Symbol] := -B*(e + f*x)* Cos[c + d*x]/(a*d*(a + b*Sin[c + d*x])) + B*f/(a*d)*Int[Cos[c + d*x]/(a + b*Sin[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f, A, B}, x] && EqQ[a*A - b*B, 0]
Int[(e_. + f_.*x_)*(A_ + B_.*Cos[c_. + d_.*x_])/(a_ + b_.*Cos[c_. + d_.*x_])^2, x_Symbol] := B*(e + f*x)*Sin[c + d*x]/(a*d*(a + b*Cos[c + d*x])) - B*f/(a*d)*Int[Sin[c + d*x]/(a + b*Cos[c + d*x]), x] /; FreeQ[{a, b, c, d, e, f, A, B}, x] && EqQ[a*A - b*B, 0]
Int[x_^2/(c_.*Sin[a_.*x_] + d_.*x_*Cos[a_.*x_])^2, x_Symbol] := x/(a*d*Sin[a*x]*(c*Sin[a*x] + d*x*Cos[a*x])) + 1/d^2*Int[1/Sin[a*x]^2, x] /; FreeQ[{a, c, d}, x] && EqQ[a*c + d, 0]
Int[x_^2/(c_.*Cos[a_.*x_] + d_.*x_*Sin[a_.*x_])^2, x_Symbol] := -x/(a*d*Cos[a*x]*(c*Cos[a*x] + d*x*Sin[a*x])) + 1/d^2*Int[1/Cos[a*x]^2, x] /; FreeQ[{a, c, d}, x] && EqQ[a*c - d, 0]
Int[Sin[a_.*x_]^2/(c_.*Sin[a_.*x_] + d_.*x_*Cos[a_.*x_])^2, x_Symbol] := 1/(d^2*x) + Sin[a*x]/(a*d*x*(d*x*Cos[a*x] + c*Sin[a*x])) /; FreeQ[{a, c, d}, x] && EqQ[a*c + d, 0]
Int[Cos[a_.*x_]^2/(c_.*Cos[a_.*x_] + d_.*x_*Sin[a_.*x_])^2, x_Symbol] := 1/(d^2*x) - Cos[a*x]/(a*d*x*(d*x*Sin[a*x] + c*Cos[a*x])) /; FreeQ[{a, c, d}, x] && EqQ[a*c - d, 0]
Int[(b_.*x_)^m_* Sin[a_.*x_]^n_/(c_.*Sin[a_.*x_] + d_.*x_*Cos[a_.*x_])^2, x_Symbol] := b*(b*x)^(m - 1)* Sin[a*x]^(n - 1)/(a*d*(c*Sin[a*x] + d*x*Cos[a*x])) - b^2*(n - 1)/d^2*Int[(b*x)^(m - 2)*Sin[a*x]^(n - 2), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[a*c + d, 0] && EqQ[m, 2 - n]
Int[(b_.*x_)^m_* Cos[a_.*x_]^n_/(c_.*Cos[a_.*x_] + d_.*x_*Sin[a_.*x_])^2, x_Symbol] := -b*(b*x)^(m - 1)* Cos[a*x]^(n - 1)/(a*d*(c*Cos[a*x] + d*x*Sin[a*x])) - b^2*(n - 1)/d^2*Int[(b*x)^(m - 2)*Cos[a*x]^(n - 2), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[a*c - d, 0] && EqQ[m, 2 - n]
Int[(b_.*x_)^m_.* Csc[a_.*x_]^n_./(c_.*Sin[a_.*x_] + d_.*x_*Cos[a_.*x_])^2, x_Symbol] := b*(b*x)^(m - 1)* Csc[a*x]^(n + 1)/(a*d*(c*Sin[a*x] + d*x*Cos[a*x])) + b^2*(n + 1)/d^2*Int[(b*x)^(m - 2)*Csc[a*x]^(n + 2), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[a*c + d, 0] && EqQ[m, n + 2]
Int[(b_.*x_)^m_.* Sec[a_.*x_]^n_./(c_.*Cos[a_.*x_] + d_.*x_*Sin[a_.*x_])^2, x_Symbol] := -b*(b*x)^(m - 1)* Sec[a*x]^(n + 1)/(a*d*(c*Cos[a*x] + d*x*Sin[a*x])) + b^2*(n + 1)/d^2*Int[(b*x)^(m - 2)*Sec[a*x]^(n + 2), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[a*c - d, 0] && EqQ[m, n + 2]
Int[(g_. + h_.*x_)^p_.*(a_ + b_.*Sin[e_. + f_.*x_])^ m_.*(c_ + d_.*Sin[e_. + f_.*x_])^n_., x_Symbol] := a^m*c^m*Int[(g + h*x)^p* Cos[e + f*x]^(2*m)*(c + d*Sin[e + f*x])^(n - m), x] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegerQ[m] && IGtQ[n - m, 0]
Int[(g_. + h_.*x_)^p_.*(a_ + b_.*Cos[e_. + f_.*x_])^ m_.*(c_ + d_.*Cos[e_. + f_.*x_])^n_., x_Symbol] := a^m*c^m*Int[(g + h*x)^p* Sin[e + f*x]^(2*m)*(c + d*Cos[e + f*x])^(n - m), x] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegerQ[m] && IGtQ[n - m, 0]
Int[(g_. + h_.*x_)^p_.*(a_ + b_.*Sin[e_. + f_.*x_])^ m_*(c_ + d_.*Sin[e_. + f_.*x_])^n_, x_Symbol] := a^IntPart[m]* c^IntPart[m]*(a + b*Sin[e + f*x])^ FracPart[m]*(c + d*Sin[e + f*x])^FracPart[m]/ Cos[e + f*x]^(2*FracPart[m])* Int[(g + h*x)^p* Cos[e + f*x]^(2*m)*(c + d*Sin[e + f*x])^(n - m), x] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegerQ[p] && IntegerQ[2*m] && IGeQ[n - m, 0]
Int[(g_. + h_.*x_)^p_.*(a_ + b_.*Cos[e_. + f_.*x_])^ m_*(c_ + d_.*Cos[e_. + f_.*x_])^n_, x_Symbol] := a^IntPart[m]* c^IntPart[m]*(a + b*Cos[e + f*x])^ FracPart[m]*(c + d*Cos[e + f*x])^FracPart[m]/ Sin[e + f*x]^(2*FracPart[m])* Int[(g + h*x)^p* Sin[e + f*x]^(2*m)*(c + d*Cos[e + f*x])^(n - m), x] /; FreeQ[{a, b, c, d, e, f, g, h}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegerQ[p] && IntegerQ[2*m] && IGeQ[n - m, 0]
Int[Sec[v_]^m_.*(a_ + b_.*Tan[v_])^n_., x_Symbol] := Int[(a*Cos[v] + b*Sin[v])^n, x] /; FreeQ[{a, b}, x] && IntegerQ[(m - 1)/2] && EqQ[m + n, 0]
Int[Csc[v_]^m_.*(a_ + b_.*Cot[v_])^n_., x_Symbol] := Int[(b*Cos[v] + a*Sin[v])^n, x] /; FreeQ[{a, b}, x] && IntegerQ[(m - 1)/2] && EqQ[m + n, 0]
Int[u_.*Sin[a_. + b_.*x_]^m_.*Sin[c_. + d_.*x_]^n_., x_Symbol] := Int[ExpandTrigReduce[u, Sin[a + b*x]^m*Sin[c + d*x]^n, x], x] /; FreeQ[{a, b, c, d}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[u_.*Cos[a_. + b_.*x_]^m_.*Cos[c_. + d_.*x_]^n_., x_Symbol] := Int[ExpandTrigReduce[u, Cos[a + b*x]^m*Cos[c + d*x]^n, x], x] /; FreeQ[{a, b, c, d}, x] && IGtQ[m, 0] && IGtQ[n, 0]
Int[Sec[a_. + b_.*x_]*Sec[c_ + d_.*x_], x_Symbol] := -Csc[(b*c - a*d)/d]*Int[Tan[a + b*x], x] + Csc[(b*c - a*d)/b]*Int[Tan[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && EqQ[b^2 - d^2, 0] && NeQ[b*c - a*d, 0]
Int[Csc[a_. + b_.*x_]*Csc[c_ + d_.*x_], x_Symbol] := Csc[(b*c - a*d)/b]*Int[Cot[a + b*x], x] - Csc[(b*c - a*d)/d]*Int[Cot[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && EqQ[b^2 - d^2, 0] && NeQ[b*c - a*d, 0]
Int[Tan[a_. + b_.*x_]*Tan[c_ + d_.*x_], x_Symbol] := -b*x/d + b/d*Cos[(b*c - a*d)/d]*Int[Sec[a + b*x]*Sec[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && EqQ[b^2 - d^2, 0] && NeQ[b*c - a*d, 0]
Int[Cot[a_. + b_.*x_]*Cot[c_ + d_.*x_], x_Symbol] := -b*x/d + Cos[(b*c - a*d)/d]*Int[Csc[a + b*x]*Csc[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && EqQ[b^2 - d^2, 0] && NeQ[b*c - a*d, 0]
Int[u_.*(a_.*Cos[v_] + b_.*Sin[v_])^n_., x_Symbol] := Int[u*(a*E^(-a/b*v))^n, x] /; FreeQ[{a, b, n}, x] && EqQ[a^2 + b^2, 0]
Int[Sin[d_.*(a_. + b_.*Log[c_.*x_^n_.])^2], x_Symbol] := I/2*Int[E^(-I*d*(a + b*Log[c*x^n])^2), x] - I/2*Int[E^(I*d*(a + b*Log[c*x^n])^2), x] /; FreeQ[{a, b, c, d, n}, x]
Int[Cos[d_.*(a_. + b_.*Log[c_.*x_^n_.])^2], x_Symbol] := 1/2*Int[E^(-I*d*(a + b*Log[c*x^n])^2), x] + 1/2*Int[E^(I*d*(a + b*Log[c*x^n])^2), x] /; FreeQ[{a, b, c, d, n}, x]
Int[(e_.*x_)^m_.*Sin[d_.*(a_. + b_.*Log[c_.*x_^n_.])^2], x_Symbol] := I/2*Int[(e*x)^m*E^(-I*d*(a + b*Log[c*x^n])^2), x] - I/2*Int[(e*x)^m*E^(I*d*(a + b*Log[c*x^n])^2), x] /; FreeQ[{a, b, c, d, e, m, n}, x]
Int[(e_.*x_)^m_.*Cos[d_.*(a_. + b_.*Log[c_.*x_^n_.])^2], x_Symbol] := 1/2*Int[(e*x)^m*E^(-I*d*(a + b*Log[c*x^n])^2), x] + 1/2*Int[(e*x)^m*E^(I*d*(a + b*Log[c*x^n])^2), x] /; FreeQ[{a, b, c, d, e, m, n}, x]