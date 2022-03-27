DOLLARTimeLimit = nothing

@util_collect begin
    #= ::Package:: =#

    #= ::Title:: =#
    #=Integration*Utility*Functions=#


    #= DOLLARTimeLimit*is*the*time*constraint*in*seconds*on*some*potentially*expensive*routines. =#
    If(Not(NumberQ(DOLLARTimeLimit)), DOLLARTimeLimit=5.0);


    #= ::Section::Closed:: =#
    #=IntHide(u,x)=#


    IntHide(u_,x_Symbol) :=
      Block([DOLLARShowSteps=false,DOLLARStepCounter=nothing], Antiderivative(u,x))


    #= ::Section::Closed:: =#
    #=Mapping*functions=#


    #= ::Subsection::Closed:: =#
    #=EveryQ(func,lst)=#


    #= EveryQ(func,lst)*applies*func*to*the*elements*of*lst*until*false*is*returned*and*EveryQ*returns*false; else*it*returns*true =#
    EveryQ(func_,lst_) :=
      Catch(Scan(MFunction(If(func(Symbol("#1")),nothing,Throw(false))),lst);true)


    #= ::Subsection::Closed:: =#
    #=Map2(func,lst1,lst2)=#


    Map2(func_,lst1_,lst2_) :=
      Module([ii],
        ReapList(Do(Sow(func(lst1((ii)),lst2((ii)))),[ii,Length(lst1)])))


    #= ::Subsection::Closed:: =#
    #=ReapList(u)=#


    ReapList(u_) :=
      With([lst=Part(Reap(u), 2)],
      If(lst===[], lst, Part(lst, 1)))

    SetAttributes(ReapList,HoldFirst)


    #= ::Section::Closed:: =#
    #=Numerical*type*predicates=#


    #= ::Subsection::Closed:: =#
    #=FalseQ(u)=#


    "If*u*is*false, FalseQ(u)*returns*true; else*it*returns*false."
    function FalseQ end
    FalseQ(b::Bool) = !b;
    FalseQ(_) = false;


    #= ::Subsection::Closed:: =#
    #=IntegersQ(u)=#


    "If*m, n, ... are*explicit*integers, IntegersQ(m,n,...)*returns*true; else*it*returns*false."
    function IntegersQ end
    IntegersQ(__Integer) = true;
    IntegersQ(__) = false;


    #= ::Subsection::Closed:: =#
    #=HalfIntegerQ(u)=#


    "If*m, n, ... are*explicit*half-integers, HalfIntegerQ(m,n,...)*returns*true; else*it*returns*false."
    function HalfIntegerQ end
    HalfIntegerQ(u__) := Scan(MFunction(If(Head(Symbol("#1"))===Rational && Denominator(Symbol("#1"))==2,nothing,Return(false))),[u])===nothing


    #= ::Subsection::Closed:: =#
    #=FractionQ(u)=#


    "If*m, n, ... are*explicit*fractions, FractionQ(m,n,...)*returns*true; else*it*returns*false."
    function FractionQ end
    FractionQ(__Rational) = true;
    FractionQ(__) = false;


    #= ::Subsection::Closed:: =#
    #=RationalQ(u)=#


    "If*m, n, ... are*explicit*integers*or*fractions, RationalQ(m,n,...)*returns*true; else*it*returns*false."
    function RationalQ end
    RationalQ(u__) := Scan(MFunction(If(IntegerQ(Symbol("#1")) || Head(Symbol("#1"))===Rational,nothing,Return(false))),[u])===nothing


    #= ::Subsection::Closed:: =#
    #=ComplexNumberQ(u)=#


    "If*u*an*explicit*complex*number, ComplexNumberQ(u)*returns*true; else*it*returns*false."
    function ComplexNumberQ end
    ComplexNumberQ(_Complex) = true;
    ComplexNumberQ(_) = false;


    #= ::Subsection::Closed:: =#
    #=FractionOrNegativeQ(u)=#


    "If*u*a*fraction*or*negative*number, FractionOrNegativeQ(u)*returns*true; else*it*returns*false."
    function FractionOrNegativeQ end
    FractionOrNegativeQ(u__) := Scan(MFunction(If(FractionQ(Symbol("#1")) || IntegerQ(Symbol("#1")) && Symbol("#1")<0,nothing,Return(false))),[u])===nothing


    #= ::Subsection::Closed:: =#
    #=SqrtNumberQ(u)=#


    "If*u*is*equivalent*to*the*square-root*of*a*rational*number, SqrtNumberQ(u)*returns*true; else*it*returns*false."
    function SqrtNumberQ end
    SqrtNumberQ(m_^n_) :=
      IntegerQ(n) && SqrtNumberQ(m) || IntegerQ(n-1/2) && RationalQ(m)


    SqrtNumberQ(u_*v_) :=
      SqrtNumberQ(u) && SqrtNumberQ(v)


    SqrtNumberQ(u_) :=
      RationalQ(u) || u===im


    #= ::Subsection::Closed:: =#
    #=SqrtNumberSumQ(u)=#


    "If*u*is*equivalent*to*the*sum*of*square-root*numbers, SqrtNumberSumQ(u)*returns*true; else*it*returns*false."
    function SqrtNumberSumQ end
    SqrtNumberSumQ(u_) :=
      SumQ(u) && SqrtNumberQ(First(u)) && SqrtNumberQ(Rest(u)) ||
      ProductQ(u) && SqrtNumberQ(First(u)) && SqrtNumberSumQ(Rest(u))


    #= ::Subsection::Closed:: =#
    #=IndependentQ(u,x)=#


    IndependentQ(u_,x_) :=
      FreeQ(u,x)


    #= ::Section::Closed:: =#
    #=Expression*type*predicates=#


    #= ::Subsection::Closed:: =#
    #=PowerQ(u)=#


    "If*u*is*a*power, PowerQ(u)*returns*true; else*it*returns*false."
    function PowerQ end
    PowerQ(_Power) = true;
    PowerQ(_) = false;


    #= ::Subsection::Closed:: =#
    #=ProductQ(u)=#


    "If*u*is*a*product, ProductQ(u)*returns*true; else*it*returns*false."
    function ProductQ end
    ProductQ(_Times) = true;
    ProductQ(_) = false;


    #= ::Subsection::Closed:: =#
    #=SumQ(u)=#


    "If*u*is*a*sum, SumQ(u)*returns*true; else*it*returns*false."
    function SumQ end
    SumQ(_Plus) = true;
    SumQ(_) = false;


    #= ::Subsection::Closed:: =#
    #=NonsumQ(u)=#


    "If*u*is*not*a*sum, NonsumQ(u)*returns*true; else*it*returns*false."
    function NonsumQ end
    NonsumQ(_Plus) = false;
    NonsumQ(_) = true;


    #= ::Subsection::Closed:: =#
    #=IntegerPowerQ(u)=#


    "If*u*is*an*integer*power, IntegerPowerQ(u)*returns*true; else*it*returns*false."
    function IntegerPowerQ end
    IntegerPowerQ = MFunction(Head(Symbol("#1"))===Power && IntegerQ(Part(Symbol("#"), 2)));


    #= ::Subsection::Closed:: =#
    #=FractionalPowerQ(u)=#


    "If*u*is*an*fractional*power, FractionalPowerQ(u)*returns*true; else*it*returns*false."
    function FractionalPowerQ end
    FractionalPowerQ = MFunction(Head(Symbol("#1"))===Power && Head(Part(Symbol("#"), 2))===Rational);


    #= ::Subsection::Closed:: =#
    #=FractionalPowerFreeQ(u)=#


    "If*u*is*free*of*fractional*powers*whose*bases*are*not*atoms, FractionalPowerFreeQ(u)*returns*true; else*it*returns*false."
    function FractionalPowerFreeQ end
    FractionalPowerFreeQ(u_) :=
      If(AtomQ(u),
        true,
      If(FractionalPowerQ(u) && Not(AtomQ(Part(u, 1))),
        false,
      Catch(Scan(MFunction(If(FractionalPowerFreeQ(Symbol("#1")),nothing,Throw(false))),u);true)))


    #= ::Subsection::Closed:: =#
    #=ComplexFreeQ(u)=#


    "If*u*is*free*of*complex*numbers, ComplexFreeQ(u)*returns*true; else*it*returns*false."
    function ComplexFreeQ end
    ComplexFreeQ(u_) :=
      If(AtomQ(u),
        Not(ComplexNumberQ(u)),
      Scan(MFunction(If(ComplexFreeQ(Symbol("#1")),nothing,Return(false))),u)===nothing)


    #= ::Subsection::Closed:: =#
    #=LogQ(u)=#


    "If*u*is*an*expression*of*the*form*log(v), LogQ(u)*returns*true; else*it*returns*false."
    function LogQ end
    LogQ(u_) := Head(u)===log


    #= ::Subsection::Closed:: =#
    #=TrigQ(u)=#


    "If*u*is*an*expression*of*the*form*F(v)*where*F*is*a*circular*trig*function, TrigQ(u)*returns*true; else*it*returns*false."
    function TrigQ end
    DOLLARTrigFunctions = [sin, cos, tan, cot, sec, csc];
    TrigQ(u_) := MemberQ(DOLLARTrigFunctions, If(AtomQ(u),u,Head(u)))


    #= ::Subsection::Closed:: =#
    #=HyperbolicQ(u)=#


    "If*u*is*an*expression*of*the*form*F(v)*where*F*is*a*hyperbolic*trig*function, HyperbolicQ(u)*returns*true; else*it*returns*false."
    function HyperbolicQ end
    DOLLARHyperbolicFunctions = [sinh, cosh, tanh, coth, sech, csch];
    HyperbolicQ(u_) := MemberQ(DOLLARHyperbolicFunctions, If(AtomQ(u),u,Head(u)))


    #= ::Subsection::Closed:: =#
    #=InverseTrigQ(u)=#


    "If*u*is*an*expression*of*the*form*F(v)*where*F*is*an*inverse*circular*trig*function, InverseTrigQ(u)*returns*true; else*it*returns*false."
    function InverseTrigQ end
    DOLLARInverseTrigFunctions = [asin, acos, atan, acot, asec, acsc];
    InverseTrigQ(u_) := MemberQ(DOLLARInverseTrigFunctions, If(AtomQ(u),u,Head(u)))


    #= ::Subsection::Closed:: =#
    #=InverseHyperbolicQ(u)=#


    "If*u*is*an*expression*of*the*form*F(v)*where*F*is*an*inverse*hyperbolic*trig*function, InverseHyperbolicQ(u)*returns*true; else*it*returns*false."
    function InverseHyperbolicQ end
    DOLLARInverseHyperbolicFunctions = [asinh, acosh, atanh, acoth, asech, acsch];
    InverseHyperbolicQ(u_) := MemberQ(DOLLARInverseHyperbolicFunctions, If(AtomQ(u),u,Head(u)))


    #= ::Subsection::Closed:: =#
    #=CalculusQ(u)=#


    DOLLARCalculusFunctions = [D, Integrate, Sum, Product, Antiderivative, Unintegrable, CannotIntegrate, Dif, Subst];
    CalculusQ(u_) := MemberQ(DOLLARCalculusFunctions, If(AtomQ(u),u,Head(u)))


    DOLLARStopFunctions = [Hold, HoldForm, Defer, Pattern, If, Antiderivative, Unintegrable, CannotIntegrate];
    StopFunctionQ(u_) :=
      If(AtomQ(Head(u)),
        MemberQ(DOLLARStopFunctions,Head(u)),
      StopFunctionQ(Head(u)))


    DOLLARHeldFunctions = [Hold, HoldForm, Defer, Pattern];
    HeldFormQ(u_) :=
      If(AtomQ(Head(u)),
        MemberQ(DOLLARHeldFunctions,Head(u)),
      HeldFormQ(Head(u)))


    #= InverseFunctionQ(u)*returns*true*if*u*is*a*call*on*an*inverse*function; else*returns*false. =#
    InverseFunctionQ(u_) :=
      LogQ(u) || InverseTrigQ(u) && Length(u)<=1 || InverseHyperbolicQ(u) || Head(u)===Mods  || Head(u)===PolyLog


    #= If*u*is*free*of*trig, hyperbolic*and*calculus*functions*involving*x,
    	TrigHyperbolicFreeQ(u,x)*returns*true; else*it*returns*false. =#
    TrigHyperbolicFreeQ(u_,x_Symbol) :=
      If(AtomQ(u),
        true,
      If(TrigQ(u) || HyperbolicQ(u) || CalculusQ(u),
        FreeQ(u,x),
      Catch(Scan(MFunction(If(TrigHyperbolicFreeQ(Symbol("#1"),x),nothing,Throw(false))),u);true)))


    #= If*u*is*free*of*inverse, calculus*and*hypergeometric*functions*involving*x,
    	InverseFunctionFreeQ(u,x)*returns*true; else*it*returns*false. =#
    InverseFunctionFreeQ(u_,x_Symbol) :=
      If(AtomQ(u),
        true,
      If(InverseFunctionQ(u) || CalculusQ(u) || Head(u)===HypergeometricFunctions._₂F₁ || Head(u)===AppellF1,
        FreeQ(u,x),
      Catch(Scan(MFunction(If(InverseFunctionFreeQ(Symbol("#1"),x),nothing,Throw(false))),u);true)))


    #= ElementaryExpressionQ(u)*returns*true*if*u*is*a*sum, product, or*power*and*all*the*operands
    	are*elementary*expressions; or*if*u*is*a*call*on*a*trig, hyperbolic, or*inverse*function
    	and*all*the*arguments*are*elementary*expressions; else*it*returns*false. =#
    #= ElementaryFunctionQ(u_) :=
      If(AtomQ(u),
        true,
      If(SumQ(u) || ProductQ(u) || PowerQ(u) || TrigQ(u) || HyperbolicQ(u) || InverseFunctionQ(u),
        Catch(Scan(MFunction(If(ElementaryFunctionQ(Symbol("#1")),nothing,Throw(false))),u);true),
      false)) =#


    #= ::Subsection::Closed:: =#
    #=CalculusFreeQ(u)=#


    CalculusFreeQ(u_,x_) :=
      If(AtomQ(u),
        true,
      If(CalculusQ(u) && Part(u, 2)===x || HeldFormQ(u),
        false,
      Catch(Scan(MFunction(If(CalculusFreeQ(Symbol("#1"),x),nothing,Throw(false))),u); true)))


    #= ::Subsection::Closed:: =#
    #=IntegralFreeQ(u)=#


    #= If*u*is*free*of*integrals, IntegralFreeQ(u)*returns*true; else*it*returns*false. =#
    IntegralFreeQ(u_) :=
      FreeQ(u,Antiderivative) && FreeQ(u,Integral) && FreeQ(u,Unintegrable) && FreeQ(u,CannotIntegrate)


    #= ::Section::Closed:: =#
    #=Equality*and*inequality*predicates=#


    #= ::Subsection::Closed:: =#
    #=Equality*predicates=#


    "If*u-v*equals*0, EqQ(u,v)*returns*true; else*it*returns*false."
    function EqQ end
    EqQ(u_,v_) := Quiet(PossibleZeroQ(u-v)) || Refine(u==v)===true


    "If*u-v*equals*0, NeQ(u,v)*returns*false; else*it*returns*true."
    function NeQ end
    NeQ(u_,v_) := Not(Quiet(PossibleZeroQ(u-v)) || Refine(u==v)===true)


    #= ::Subsection::Closed:: =#
    #=Integer*inequality*predicates=#


    "num*must*be*a*rational*number.  If*u*is*an*integer*and*u>n, IGtQ(u,n)*returns*true; else*it*returns*false."
    function IGtQ end
    IGtQ(u_,n_) := IntegerQ(u) && u>n


    "num*must*be*a*rational*number.  If*u*is*an*integer*and*u<n, ILtQ(u,n)*returns*true; else*it*returns*false."
    function ILtQ end
    ILtQ(u_,n_) := IntegerQ(u) && u<n


    "num*must*be*a*rational*number.  If*u*is*an*integer*and*u>=n, IGeQ(u,n)*returns*true; else*it*returns*false."
    function IGeQ end
    IGeQ(u_,n_) := IntegerQ(u) && u>=n


    "num*must*be*a*rational*number.  If*u*is*an*integer*and*u<=n, ILeQ(u,n)*returns*true; else*it*returns*false."
    function ILeQ end
    ILeQ(u_,n_) := IntegerQ(u) && u<=n


    #= ::Subsection::Closed:: =#
    #=Numeric*inequality*predicates=#


    "If*u>v, GtQ(u,v)*returns*true; else*it*returns*false."
    function GtQ end
    GtQ(u_,v_) :=
      If(RealNumberQ(u),
        If(RealNumberQ(v),
          u>v,
        With([vn=N(Together(v))],
        Head(vn)===Real && u>vn)),
      With([un=N(Together(u))],
      If(Head(un)===Real,
        If(RealNumberQ(v),
          un>v,
        With([vn=N(Together(v))],
        Head(vn)===Real && un>vn)),
      false)))

    #= If*u>v*and*v>w, GtQ(u,v,w)*returns*true; else*it*returns*false. =#
    GtQ(u_,v_,w_) := GtQ(u,v) && GtQ(v,w)


    "If*u>v, LtQ(u,v)*returns*true; else*it*returns*false."
    function LtQ end
    LtQ(u_,v_) :=
      If(RealNumberQ(u),
        If(RealNumberQ(v),
          u<v,
        With([vn=N(Together(v))],
        Head(vn)===Real && u<vn)),
      With([un=N(Together(u))],
      If(Head(un)===Real,
        If(RealNumberQ(v),
          un<v,
        With([vn=N(Together(v))],
        Head(vn)===Real && un<vn)),
      false)))

    #= If*u<v*and*v<w, LtQ(u,v,w)*returns*true; else*it*returns*false. =#
    LtQ(u_,v_,w_) := LtQ(u,v) && LtQ(v,w)


    "If*u>v, GeQ(u,v)*returns*true; else*it*returns*false."
    function GeQ end
    GeQ(u_,v_) :=
      If(RealNumberQ(u),
        If(RealNumberQ(v),
          u>=v,
        With([vn=N(Together(v))],
        Head(vn)===Real && u>=vn)),
      With([un=N(Together(u))],
      If(Head(un)===Real,
        If(RealNumberQ(v),
          un>=v,
        With([vn=N(Together(v))],
        Head(vn)===Real && un>=vn)),
      false)))

    #= If*u>=v*and*v>=w, GeQ(u,v,w)*returns*true; else*it*returns*false. =#
    GeQ(u_,v_,w_) := GeQ(u,v) && GeQ(v,w)


    "If*u>v, LeQ(u,v)*returns*true; else*it*returns*false."
    function LeQ end
    LeQ(u_,v_) :=
      If(RealNumberQ(u),
        If(RealNumberQ(v),
          u<=v,
        With([vn=N(Together(v))],
        Head(vn)===Real && u<=vn)),
      With([un=N(Together(u))],
      If(Head(un)===Real,
        If(RealNumberQ(v),
          un<=v,
        With([vn=N(Together(v))],
        Head(vn)===Real && un<=vn)),
      false)))

    #= If*u<=v*and*v<=w, LeQ(u,v,w)*returns*true; else*it*returns*false. =#
    LeQ(u_,v_,w_) := LeQ(u,v) && LeQ(v,w)


    "If*u*is*an*explicit*non-complex*number, RealNumberQ(u)*returns*true; else*it*returns*false."
    function RealNumberQ end
    RealNumberQ(u_) := NumberQ(u) && Head(u)!==Complex


    #= ::Section::Closed:: =#
    #=Multinomial*predicates=#


    #= ::Subsection::Closed:: =#
    #=PolyQ(u,x,n)=#


    #= Mathematica's*built-in*PolynomialQ, Exponent*and*Coefficient*functions*can*return*erroneous*results*because*they*do*not =#
    #= cancel*the*gcd*in*pseudo-rational*functions*that*are*actually*polynomial. =#
    #= PolynomialQ(F(x),x)*returns*false, but*PolynomialQ(F(x),x^2)*returns*true! =#
    #= For*some*unfully*expanded*polynomials, the*built-in*Mathematica*function*Exponent*sometimes*returns*erronously*large*degrees. =#
    #= For*example, Exponent(3*(1+a)*x^4 + 3*x^5 + x^6 - (a+x+x^2)^3, x)*incorrectly*returns*4*instead*of*3.0. =#
    #= Despite*what*the*online*help*says, PolynomialQ(u,x^v)*returns*an*error*message*if*v*is*a*sum. =#


    "If*u*is*a*polynomial*in*x, PolyQ(u,x)*returns*true; else*it*returns*false.
    If*u*is*a*polynomial*in*x*of*degree*n, PolyQ(u,x,n)*returns*true; else*it*returns*false.
    If*v*is*free*of*x*and*u*is*a*polynomial*in*x^v, PolyQ(u,x^v)*returns*true; else*it*returns*false.
    If*v*is*free*of*x*and*u*is*a*polynomial*in*x^v*of*degree*n, PolyQ(u,x^v,n)*returns*true; else*it*returns*false."
    function PolyQ end


    PolyQ(u_,x_Symbol) :=
      PolynomialQ(u,x) || PolynomialQ(Together(u),x)


    PolyQ(u_,x_Symbol,n_) :=
      If(PolynomialQ(u,x),
        EqQ(Exponent(u,x),n) && NeQ(Coefficient(u,x,n),0),
      With([v=Together(u)],
      PolynomialQ(v,x) && EqQ(Exponent(v,x),n) && NeQ(Coefficient(v,x,n),0)))


    PolyQ(u_,x_Symbol^n_Integer) :=
      If(PolynomialQ(u,x),
        PolynomialQ(u,x^n),
      With([v=Together(u)], PolynomialQ(v,x) && PolynomialQ(v,x^n))) <--
    n>0

    #= PolyQ(u_,x_Symbol^(n_*v_Symbol)) :=
      PolyQ(ReplaceAll(u,v=>v/n),x^v) <--
    RationalQ(n) && NeQ(v,x) =#

    PolyQ(u_,x_Symbol^v_) :=
      If(Quiet(PolynomialQ(u,x^v))===true,
        FreeQ(CoefficientList(u,x^v),x),
      With([w=Together(u)], Quiet(PolynomialQ(w,x^v))===true && FreeQ(CoefficientList(w,x^v),x))) <--
    NonsumQ(v) && FreeQ(v,x)

    PolyQ(u_,v_) :=
      false


    PolyQ(u_,x_Symbol^v_,n_) :=
      PolyQ(u,x^v) && EqQ(Expon(u,x^v),n) && NeQ(Coeff(u,x^v,n),0)


    #= ::Subsection::Closed:: =#
    #=ProperPolyQ(u,x)=#


    #= If*u*is*a*polynomial*in*x*and*the*constant*term*is*nonzero, ProperPolyQ(u,x)*returns*true; else*it*returns*false. =#
    ProperPolyQ(u_,x_Symbol) :=
      PolyQ(u,x) && NeQ(Coeff(u,x,0),0)


    #= ::Subsection::Closed:: =#
    #=BinomialQ(u,x)=#


    #= If*u*is*equivalent*to*an*expression*of*the*form*a+b*x^n*where*n*and*b*are*not*0, =#
    #= BinomialQ(u,x)*returns*true; else*it*returns*false. =#
    BinomialQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(BinomialQ(Symbol("#1"),x)),Throw(false))),u); true),
      ListQ(BinomialParts(u,x)))


    #= If*u*is*equivalent*to*an*expression*of*the*form*a+b*x^n, BinomialQ(u,x,n)*returns*true; else*it*returns*false. =#
    BinomialQ(u_,x_Symbol,n_) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(BinomialQ(Symbol("#1"),x,n)),Throw(false))),u); true),
      MFunction(ListQ(Symbol("#1")) && Part(Symbol("#"), 3)===n)(BinomialParts(u,x)))


    #= ::Subsection::Closed:: =#
    #=TrinomialQ(u,x)=#


    #= If*u*is*equivalent*to*an*expression*of*the*form*a+b*x^n+c*x^(2*n)*where*n, b*and*c*are*not*0, =#
    #= TrinomialQ(u,x)*returns*true; else*it*returns*false. =#
    TrinomialQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(TrinomialQ(Symbol("#1"),x)),Throw(false))),u); true),
      ListQ(TrinomialParts(u,x)) && Not(QuadraticQ(u,x)) && Not(MatchQ(u,w_^2 <-- BinomialQ(w,x))))


    #= ::Subsection::Closed:: =#
    #=GeneralizedBinomialQ(u,x)=#


    #= If*u*is*equivalent*to*an*expression*of*the*form*a*x^q+b*x^n*where*n, q*and*b*are*not*0, =#
    #= GeneralizedBinomialQ(u,x)*returns*true; else*it*returns*false. =#
    GeneralizedBinomialQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(GeneralizedBinomialQ(Symbol("#1"),x)),Throw(false))),u); true),
      ListQ(GeneralizedBinomialParts(u,x)))


    #= ::Subsection::Closed:: =#
    #=GeneralizedTrinomialQ(u,x)=#


    #= If*u*is*equivalent*to*an*expression*of*the*form*a*x^q+b*x^n+c*x^(2*n-q)*where*n, q, b*and*c*are*not*0, =#
    #= GeneralizedTrinomialQ(u,x)*returns*true; else*it*returns*false. =#
    GeneralizedTrinomialQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(GeneralizedTrinomialQ(Symbol("#1"),x)),Throw(false))),u); true),
      ListQ(GeneralizedTrinomialParts(u,x)))


    #= ::Section::Closed:: =#
    #=Expression*form*predicates=#


    #= ::Subsection::Closed:: =#
    #=PosQ(u)=#


    #= If*u*is*not*0*and*has*a*positive*form, PosQ(u)*returns*true, else*it*returns*false. =#
    PosQ(u_) :=
      PosAux(TogetherSimplify(u))

    PosAux(u_) :=
      If(NumberQ(u),
        If(Head(u)===Complex,
          If(EqQ(Re(u),0),
            PosAux(Im(u)),
          PosAux(Re(u))),
        u>0),
      If(NumericQ(u),
        With([v=Simplify(Re(u))],
          If(NumberQ(v),
            If(EqQ(v,0),
              PosAux(Simplify(Im(u))),
            v>0),
          With([w=N(u)], NumberQ(w) && PosAux(w)))),
      With([v=Refine(u>0)], If(v===true || v===false,
        v,
      If(PowerQ(u),
        If(IntegerQ(Part(u, 2)),
          EvenQ(Part(u, 2)) || PosAux(Part(u, 1)),
        true),
      If(ProductQ(u),
        If(PosAux(First(u)),
          PosAux(Rest(u)),
        Not(PosAux(Rest(u)))),
      If(SumQ(u),
        PosAux(First(u)),
      true)))))))


    #= ::Subsection::Closed:: =#
    #=NegQ(u)=#


    NegQ(u_) :=
      Not(PosQ(u)) && NeQ(u,0)


    #= ::Subsection::Closed:: =#
    #=NiceSqrtQ(u)=#


    NiceSqrtQ(u_) :=
      Not(LtQ(u,0)) && NiceSqrtAuxQ(u)

    NiceSqrtAuxQ(u_) :=
      If(RationalQ(u),
        u>0,
      If(PowerQ(u),
        EvenQ(Part(u, 2)),
      If(ProductQ(u),
        NiceSqrtAuxQ(First(u)) && NiceSqrtAuxQ(Rest(u)),
      If(SumQ(u),
        MFunction(NonsumQ(Symbol("#1")) && NiceSqrtAuxQ(Symbol("#1")))*(Simplify(u)),
      false))))


    #= ::Subsection::Closed:: =#
    #=PerfectSquareQ(u)=#


    #= If*u*is*a*rational*number*whose*squareroot*is*rational*or*if*u*is*of*the*form*u1^n1*u2^n2 ...
    	and*n1, n2, ... are*even, PerfectSquareQ(u)*returns*true; else*it*returns*false. =#
    PerfectSquareQ(u_) :=
      If(RationalQ(u),
        u>0 && RationalQ(sqrt(u)),
      If(PowerQ(u),
        EvenQ(Part(u, 2)),
      If(ProductQ(u),
        PerfectSquareQ(First(u)) && PerfectSquareQ(Rest(u)),
      If(SumQ(u),
        MFunction(NonsumQ(Symbol("#1")) && PerfectSquareQ(Symbol("#1")))*(Simplify(u)),
      false))))


    #= ::Section::Closed:: =#
    #=Simpler*functions=#


    #= ::Subsection::Closed:: =#
    #=SimplerQ(u,v)=#


    #= If*u*is*simpler*than*v, SimplerQ(u,v)*returns*true, else*it*returns*false.  SimplerQ(u,u)*returns*false. =#
    SimplerQ(u_,v_) :=
      If(IntegerQ(u),
        If(IntegerQ(v),
          If(u==v,
            false,
          If(u==-v,
            v<0,
          Abs(u)<Abs(v))),
        true),
      If(IntegerQ(v),
        false,
      If(FractionQ(u),
        If(FractionQ(v),
          If(Denominator(u)==Denominator(v),
            SimplerQ(Numerator(u),Numerator(v)),
          Denominator(u)<Denominator(v)),
        true),
      If(FractionQ(v),
        false,
      If((Re(u)===0 || Re(u)===0.0) && (Re(v)===0 || Re(v)===0.0),
        SimplerQ(Im(u),Im(v)),
      If(ComplexNumberQ(u),
        If(ComplexNumberQ(v),
          If(Re(u)==Re(v),
            SimplerQ(Im(u),Im(v)),
          SimplerQ(Re(u),Re(v))),
        false),
      If(NumberQ(u),
        If(NumberQ(v),
          OrderedQ([u,v]),
        true),
      If(NumberQ(v),
        false,
      If(AtomQ(u),
        If(AtomQ(v),
          OrderedQ([u,v]),
        true),
      If(AtomQ(v),
        false,
      If(Head(u)===Head(v),
        If(Length(u)==Length(v),
          If(LeafCount(u)==LeafCount(v),
            Catch(Do(If(u((ii))===v((ii)),nothing,Throw(SimplerQ(u((ii)),v((ii))))),[ii,Length(u)]); false),
          LeafCount(u)<LeafCount(v)),
        Length(u)<Length(v)),
      If(LeafCount(u)==LeafCount(v),
        Not(OrderedQ([v,u])),
      LeafCount(u)<LeafCount(v)))))))))))))


    #= ::Subsection::Closed:: =#
    #=SimplerSqrtQ(u,v)=#


    #= If*Rt(u,2)*is*simpler*than*Rt(v,2), SimplerSqrtQ(u,v)*returns*true, else*it*returns*false.  SimplerSqrtQ(u,u)*returns*false. =#
    SimplerSqrtQ(u_,v_) :=
      If(LtQ(v,0) && Not(LtQ(u,0)),
        true,
      If(LtQ(u,0) && Not(LtQ(v,0)),
        false,
      With([sqrtu=Rt(u,2),sqrtv=Rt(v,2)],
      If(IntegerQ(sqrtu),
        If(IntegerQ(sqrtv),
          sqrtu<sqrtv,
        true),
      If(IntegerQ(sqrtv),
        false,
      If(RationalQ(sqrtu),
        If(RationalQ(sqrtv),
          sqrtu<sqrtv,
        true),
      If(RationalQ(sqrtv),
        false,
      If(PosQ(u),
        If(PosQ(v),
          LeafCount(sqrtu)<LeafCount(sqrtv),
        true),
      If(PosQ(v),
        false,
      If(LeafCount(sqrtu)<LeafCount(sqrtv),
        true,
      If(LeafCount(sqrtv)<LeafCount(sqrtu),
        false,
      Not(OrderedQ([v,u])))))))))))))


    #= ::Subsection::Closed:: =#
    #=SumSimplerQ(u,v)=#


    #= If*u+v*is*simpler*than*u, SumSimplerQ(u,v)*returns*true, else*it*returns*false. =#
    #= If*for*every*term*w*of*v*there*is*a*term*of*u*equal*to*n*w*where*n<-1/2, u+v*will*be*simpler*than*u. =#
    SumSimplerQ(u_,v_) :=
      If(RationalQ(u,v),
        If(v==0,
          false,
        If(v>0,
          u<-1,
        u>=-v)),
      SumSimplerAuxQ(expand(u),expand(v)))


    SumSimplerAuxQ(u_,v_) :=
      (RationalQ(First(v)) || SumSimplerAuxQ(u,First(v))) &&
      (RationalQ(Rest(v)) || SumSimplerAuxQ(u,Rest(v))) <--
    SumQ(v)

    SumSimplerAuxQ(u_,v_) :=
      SumSimplerAuxQ(First(u),v) || SumSimplerAuxQ(Rest(u),v) <--
    SumQ(u)

    SumSimplerAuxQ(u_,v_) :=
      v!==0 &&
      NonnumericFactors(u)===NonnumericFactors(v) &&
      (NumericFactor(u)/NumericFactor(v)<-1/2 || NumericFactor(u)/NumericFactor(v)==-1/2 && NumericFactor(u)<0)


    #= ::Subsection::Closed:: =#
    #=SimplerIntegrandQ(u,v,x)=#


    #= SimplerIntegrandQ(u,v,x)*returns*true*iff*u*is*simpler*to*integrate*wrt*x*than*v. =#
    SimplerIntegrandQ(u_,v_,x_Symbol) :=
      Module([lst=CancelCommonFactors(u,v),u1,v1],
      u1=Part(lst, 1);
      v1=Part(lst, 2);
    #=If(Head(u1)===Head(v1) && Length(u1)==Length(v1)==1,
        SimplerIntegrandQ(Part(u1, 1),Part(v1, 1),x), =#
      If(LeafCount(u1)<3/4*LeafCount(v1),
        true,
      If(RationalFunctionQ(u1,x),
        If(RationalFunctionQ(v1,x),
          Apply(Plus,RationalFunctionExponents(u1,x))<Apply(Plus,RationalFunctionExponents(v1,x)),
        true),
      false)))


    #= CancelCommonFactors(u,v)*returns [u',v'] are*the*noncommon*factors*of*u*and*v*respectively. =#
    CancelCommonFactors(u_,v_) :=
      If(ProductQ(u),
        If(ProductQ(v),
          If(MemberQ(v,First(u)),
            CancelCommonFactors(Rest(u),DeleteCases(v,First(u),1,1)),
          MFunction([First(u)*Part(Symbol("#"), 1),Part(Symbol("#"), 2)])(CancelCommonFactors(Rest(u),v))),
        If(MemberQ(u,v),
          [DeleteCases(u,v,1,1),1],
        [u,v])),
      If(ProductQ(v),
        If(MemberQ(v,u),
          [1,DeleteCases(v,u,1,1)],
        [u,v]),
      [u,v]))


    #= ::Section::Closed:: =#
    #=Parts*functions=#


    #= ::Subsection::Closed:: =#
    #=BinomialParts(u,x)=#


    #= u*is*a*binomial. BinomialDegree(u,x)*returns*the*degree*of*x*in*u. =#
    BinomialDegree(u_,x_Symbol) :=
      Part(BinomialParts[u,x], 3)


    #= If*u(x)*is*equivalent*to*an*expression*of*the*form*a+b*x^n*where*n!=0*and*b!=0,
    	BinomialParts(u,x)*returns*the*list [a,b,n]; else*it*returns*false. =#
    BinomialParts(u_,x_Symbol) :=
      If(PolynomialQ(u,x),
        If(Exponent(u,x)>0,
          With([lst=Exponent(u,x,List)],
            If(Length(lst)==1,
              [0, Coefficient(u,x,Exponent(u,x)), Exponent(u,x)],
            If(Length(lst)==2 && Part(lst, 1)==0,
              [Coefficient(u,x,0), Coefficient(u,x,Exponent(u,x)), Exponent(u,x)],
            false))),
        false),
      If(PowerQ(u),
        If(Part(u, 1)===x && FreeQ(Part(u, 2),x),
          [0,1,Part(u, 2)],
        false),
      If(ProductQ(u),
        If(FreeQ(First(u),x),
          With([lst2=BinomialParts(Rest(u),x)],
          If(AtomQ(lst2),
            false,
          [First(u)*Part(lst2, 1),First(u)*Part(lst2, 2),Part(lst2, 3)])),
        If(FreeQ(Rest(u),x),
          With([lst1=BinomialParts(First(u),x)],
          If(AtomQ(lst1),
            false,
          [Rest(u)*Part(lst1, 1),Rest(u)*Part(lst1, 2),Part(lst1, 3)])),
        With([lst1=BinomialParts(First(u),x)],
        If(AtomQ(lst1),
          false,
        With([lst2=BinomialParts(Rest(u),x)],
        If(AtomQ(lst2),
          false,
        With([a=Part(lst1, 1),b=Part(lst1, 2),m=Part(lst1, 3), c=Part(lst2, 1),d=Part(lst2, 2),n=Part(lst2, 3)],
        If(EqQ(a,0),
          If(EqQ(c,0),
            [0,b*d,m+n],
          If(EqQ(m+n,0),
            [b*d,b*c,m],
          false)),
        If(EqQ(c,0),
          If(EqQ(m+n,0),
            [b*d,a*d,n],
          false),
        If(EqQ(m,n) && EqQ(a*d+b*c,0),
          [a*c,b*d,2*m],
        false)))))))))),
      If(SumQ(u),
        If(FreeQ(First(u),x),
         With([lst2=BinomialParts(Rest(u),x)],
          If(AtomQ(lst2),
            false,
          [First(u)+Part(lst2, 1),Part(lst2, 2),Part(lst2, 3)])),
        If(FreeQ(Rest(u),x),
          With([lst1=BinomialParts(First(u),x)],
          If(AtomQ(lst1),
            false,
          [Rest(u)+Part(lst1, 1),Part(lst1, 2),Part(lst1, 3)])),
        With([lst1=BinomialParts(First(u),x)],
        If(AtomQ(lst1),
          false,
        With([lst2=BinomialParts(Rest(u),x)],
        If(AtomQ(lst2),
          false,
        If(EqQ(Part(lst1, 3),Part(lst2, 3)),
          [Part(lst1, 1)+Part(lst2, 1),Part(lst1, 2)+Part(lst2, 2),Part(lst1, 3)],
        false))))))),
      false))))


    #= ::Subsection::Closed:: =#
    #=TrinomialParts(u,x)=#


    #= If*u*is*equivalent*to*a*trinomial*of*the*form*a + b*x^n + c*x^(2*n)*where*n!=0, b!=0*and*c!=0,
    	TrinomialDegree(u,x)*returns*n. =#
    TrinomialDegree(u_,x_Symbol) :=
      Part(TrinomialParts[u,x], 4)


    #= If*u*is*equivalent*to*a*trinomial*of*the*form*a + b*x^n + c*x^(2*n)*where*n!=0, b!=0*and*c!=0,
    	TrinomialParts(u,x)*returns*the*list [a,b,c,n]; else*it*returns*false. =#
    TrinomialParts(u_,x_Symbol) :=
      If(PolynomialQ(u,x),
        With([lst=CoefficientList(u,x)],
        If(Length(lst)<3 || EvenQ(Length(lst)) || EqQ(lst(((Length(lst)+1)/2)),0),
          false,
        Catch(
          Scan(MFunction(If(EqQ(Symbol("#1"),0),nothing,Throw(false))),Drop(Drop(Drop(lst,[(Length(lst)+1)/2]),1),-1));
          [First(lst),lst(((Length(lst)+1)/2)),Last(lst),(Length(lst)-1)/2]))),
      If(PowerQ(u),
        If(EqQ(Part(u, 2),2),
          With([lst=BinomialParts(Part(u, 1),x)],
          If(AtomQ(lst) || EqQ(Part(lst, 1),0),
            false,
          [Part(lst, 1)^2,2*Part(lst, 1)*Part(lst, 2),Part(lst, 2)^2,Part(lst, 3)])),
        false),
      If(ProductQ(u),
        If(FreeQ(First(u),x),
          With([lst2=TrinomialParts(Rest(u),x)],
          If(AtomQ(lst2),
            false,
          [First(u)*Part(lst2, 1),First(u)*Part(lst2, 2),First(u)*Part(lst2, 3),Part(lst2, 4)])),
        If(FreeQ(Rest(u),x),
          With([lst1=TrinomialParts(First(u),x)],
          If(AtomQ(lst1),
            false,
          [Rest(u)*Part(lst1, 1),Rest(u)*Part(lst1, 2),Rest(u)*Part(lst1, 3),Part(lst1, 4)])),
        With([lst1=BinomialParts(First(u),x)],
        If(AtomQ(lst1),
          false,
        With([lst2=BinomialParts(Rest(u),x)],
        If(AtomQ(lst2),
          false,
        With([a=Part(lst1, 1),b=Part(lst1, 2),m=Part(lst1, 3), c=Part(lst2, 1),d=Part(lst2, 2),n=Part(lst2, 3)],
        If(EqQ(m,n) && NeQ(a*d+b*c,0),
          [a*c,a*d+b*c,b*d,m],
        false)))))))),
      If(SumQ(u),
        If(FreeQ(First(u),x),
          With([lst2=TrinomialParts(Rest(u),x)],
          If(AtomQ(lst2),
            false,
          [First(u)+Part(lst2, 1),Part(lst2, 2),Part(lst2, 3),Part(lst2, 4)])),
        If(FreeQ(Rest(u),x),
          With([lst1=TrinomialParts(First(u),x)],
          If(AtomQ(lst1),
            false,
          [Rest(u)+Part(lst1, 1),Part(lst1, 2),Part(lst1, 3),Part(lst1, 4)])),
        With([lst1=TrinomialParts(First(u),x)],
        If(AtomQ(lst1),
          With([lst3=BinomialParts(First(u),x)],
          If(AtomQ(lst3),
            false,
          With([lst2=TrinomialParts(Rest(u),x)],
          If(AtomQ(lst2),
            With([lst4=BinomialParts(Rest(u),x)],
            If(AtomQ(lst4),
              false,
            If(EqQ(Part(lst3, 3),2*Part(lst4, 3)),
              [Part(lst3, 1)+Part(lst4, 1),Part(lst4, 2),Part(lst3, 2),Part(lst4, 3)],
            If(EqQ(Part(lst4, 3),2*Part(lst3, 3)),
              [Part(lst3, 1)+Part(lst4, 1),Part(lst3, 2),Part(lst4, 2),Part(lst3, 3)],
            false)))),
          If(EqQ(Part(lst3, 3),Part(lst2, 4)) && NeQ(Part(lst3, 2)+Part(lst2, 2),0),
            [Part(lst3, 1)+Part(lst2, 1),Part(lst3, 2)+Part(lst2, 2),Part(lst2, 3),Part(lst2, 4)],
          If(EqQ(Part(lst3, 3),2*Part(lst2, 4)) && NeQ(Part(lst3, 2)+Part(lst2, 3),0),
            [Part(lst3, 1)+Part(lst2, 1),Part(lst2, 2),Part(lst3, 2)+Part(lst2, 3),Part(lst2, 4)],
          false)))))),
        With([lst2=TrinomialParts(Rest(u),x)],
        If(AtomQ(lst2),
          With([lst4=BinomialParts(Rest(u),x)],
          If(AtomQ(lst4),
            false,
          If(EqQ(Part(lst4, 3),Part(lst1, 4)) && NeQ(Part(lst1, 2)+Part(lst4, 2),0),
            [Part(lst1, 1)+Part(lst4, 1),Part(lst1, 2)+Part(lst4, 2),Part(lst1, 3),Part(lst1, 4)],
          If(EqQ(Part(lst4, 3),2*Part(lst1, 4)) && NeQ(Part(lst1, 3)+Part(lst4, 2),0),
            [Part(lst1, 1)+Part(lst4, 1),Part(lst1, 2),Part(lst1, 3)+Part(lst4, 2),Part(lst1, 4)],
          false)))),
        If(EqQ(Part(lst1, 4),Part(lst2, 4)) && NeQ(Part(lst1, 2)+Part(lst2, 2),0) && NeQ(Part(lst1, 3)+Part(lst2, 3),0),
          [Part(lst1, 1)+Part(lst2, 1),Part(lst1, 2)+Part(lst2, 2),Part(lst1, 3)+Part(lst2, 3),Part(lst1, 4)],
        false))))))),
      false))))


    #= ::Subsection::Closed:: =#
    #=GeneralizedBinomialParts(u,x)=#


    #= If*u*is*equivalent*to*a*generalized*binomial*of*the*form*a*x^q + b*x^n*where*a, b, n, and*q*not*equal*0,
    	GeneralizedBinomialDegree(u,x)*returns*n-q. =#
    GeneralizedBinomialDegree(u_,x_Symbol) :=
      MFunction(Part(Symbol("#"), 3)-Part(Symbol("#"), 4))(GeneralizedBinomialParts(u,x))


    #= If*u*is*equivalent*to*a*generalized*binomial*of*the*form*a*x^q + b*x^n*where*a, b, n, and*q*not*equal*0,
    	GeneralizedBinomialParts(u,x)*returns*the*list [a,b,n,q]; else*it*returns*false. =#
    GeneralizedBinomialParts(a_'*x_^q_'+b_'*x_^n_',x_Symbol) :=
      [a,b,n,q] <--
    FreeQ([a,b,n,q],x) && PosQ(n-q)

    GeneralizedBinomialParts(a_*u_,x_Symbol) :=
      With([lst=GeneralizedBinomialParts(u,x)],
      [a*Part(lst, 1), a*Part(lst, 2), Part(lst, 3), Part(lst, 4)] <--
     ListQ(lst)) <--
    FreeQ(a,x)

    GeneralizedBinomialParts(x_^m_'*u_,x_Symbol) :=
      With([lst=GeneralizedBinomialParts(u,x)],
      [Part(lst, 1), Part(lst, 2), m+Part(lst, 3), m+Part(lst, 4)] <--
     ListQ(lst) && NeQ(m+Part(lst, 3),0) && NeQ(m+Part(lst, 4),0)) <--
    FreeQ(m,x)

    GeneralizedBinomialParts(x_^m_'*u_,x_Symbol) :=
      With([lst=BinomialParts(u,x)],
      [Part(lst, 1), Part(lst, 2), m+Part(lst, 3), m] <--
     ListQ(lst) && NeQ(m+Part(lst, 3),0)) <--
    FreeQ(m,x)

    GeneralizedBinomialParts(u_,x_Symbol) :=
      false


    #= ::Subsection::Closed:: =#
    #=GeneralizedTrinomialParts(u,x)=#


    #= If*u*is*equivalent*to*a*generalized*trinomial*of*the*form*a*x^q + b*x^n + c*x^(2*n-q)*where*n!=0, q!=0, b!=0*and*c!=0,
    	GeneralizedTrinomialDegree(u,x)*returns*n-q. =#
    GeneralizedTrinomialDegree(u_,x_Symbol) :=
      MFunction(Part(Symbol("#"), 4)-Part(Symbol("#"), 5))(GeneralizedTrinomialParts(u,x))


    #= If*u*is*equivalent*to*a*generalized*trinomial*of*the*form*a*x^q + b*x^n + c*x^(2*n-q)*where*n!=0, q!=0, b!=0*and*c!=0,
    	GeneralizedTrinomialParts(u,x)*returns*the*list [a,b,c,n,q]; else*it*returns*false. =#
    GeneralizedTrinomialParts(a_'*x_^q_'+b_'*x_^n_'+c_'*x_^r_',x_Symbol) :=
      [a,b,c,n,q] <--
    FreeQ([a,b,c,n,q],x) && EqQ(r,2*n-q)

    GeneralizedTrinomialParts(a_*u_,x_Symbol) :=
      With([lst=GeneralizedTrinomialParts(u,x)],
      [a*Part(lst, 1), a*Part(lst, 2), a*Part(lst, 3), Part(lst, 4), Part(lst, 5)] <--
     ListQ(lst)) <--
    FreeQ(a,x)

    GeneralizedTrinomialParts(u_,x_Symbol) :=
      With([lst=Expon(u,x,List)],
      If(Length(lst)==3 && NeQ(Part(lst, 0),0) && EqQ(Part(lst, 3),2*Part(lst, 2)-Part(lst, 1)),
        [Coeff(u,x,Part(lst, 1)),Coeff(u,x,Part(lst, 2)),Coeff(u,x,Part(lst, 3)),Part(lst, 2),Part(lst, 1)],
      false)) <--
    PolyQ(u,x)

    GeneralizedTrinomialParts(x_^m_'*u_,x_Symbol) :=
      With([lst=GeneralizedTrinomialParts(u,x)],
      [Part(lst, 1), Part(lst, 2), Part(lst, 3), m+Part(lst, 4), m+Part(lst, 5)] <--
     ListQ(lst) && NeQ(m+Part(lst, 4),0) && NeQ(m+Part(lst, 5),0)) <--
    FreeQ(m,x)

    GeneralizedTrinomialParts(x_^m_'*u_,x_Symbol) :=
      With([lst=TrinomialParts(u,x)],
      [Part(lst, 1), Part(lst, 2), Part(lst, 3), m+Part(lst, 4), m] <--
     ListQ(lst) && NeQ(m+Part(lst, 4),0)) <--
    FreeQ(m,x)

    GeneralizedTrinomialParts(u_,x_Symbol) :=
      false


    #= ::Section::Closed:: =#
    #=Selection*functions=#


    #= ::Subsection::Closed:: =#
    #=NumericFactor(u) =#


    #= NumericFactor(u)*returns*the*real*numeric*factor*of*u. =#
    NumericFactor(u_) :=
      If(NumberQ(u),
        If(EqQ(Im(u),0),
          u,
        If(EqQ(Re(u),0),
          Im(u),
        1)),
      If(PowerQ(u),
        If(RationalQ(Part(u, 1)) && FractionQ(Part(u, 2)),
          If(Part(u, 2)>0,
            1/Denominator(Part(u, 1)),
          1/Denominator(1/Part(u, 1))),
        1),
      If(ProductQ(u),
        Map(NumericFactor,u),
      If(SumQ(u),
        If(LeafCount(u)<50,             #= Eliminate*this*kludge! =#
          MFunction(If(SumQ(Symbol("#1")), 1, NumericFactor(Symbol("#1"))))(ContentFactor(u)),
        With([m=NumericFactor(First(u)),n=NumericFactor(Rest(u))],
        If(m<0 && n<0,
          -GCD(-m,-n),
        GCD(m,n)))),
      1))))


    #= NonnumericFactors(u)*returns*the*product*of*the*factors*of*u*that*are*not*real*numbers. =#
    NonnumericFactors(u_) :=
      If(NumberQ(u),
        If(EqQ(Im(u),0),
          1,
        If(EqQ(Re(u),0),
          im,
        u)),
      If(PowerQ(u),
        If(RationalQ(Part(u, 1)) && FractionQ(Part(u, 2)),
          u/NumericFactor(u),
        u),
      If(ProductQ(u),
        Map(NonnumericFactors,u),
      If(SumQ(u),
        If(LeafCount(u)<50,             #= Eliminate*this*kludge! =#
          MFunction(If(SumQ(Symbol("#1")), u, NonnumericFactors(Symbol("#1"))))(ContentFactor(u)),
        With([n=NumericFactor(u)],
        Map(MFunction(Symbol("#1")/n),u))),
      u))))


    #= ::Subsection::Closed:: =#
    #=RemoveContent(u,x)=#


    #= RemoveContent(u,x)*returns*u*with*the*content*free*of*x*removed. =#
    RemoveContent(u_,x_Symbol) :=
      With([v=NonfreeFactors(u,x)],
      With([w=Together(v)],
      If(EqQ(FreeFactors(w,x),1),
        RemoveContentAux(v,x),
      RemoveContentAux(NonfreeFactors(w,x),x))))


    RemoveContentAux(a_^m_*u_'+b_*v_',x_Symbol) :=
      If(m>1,
        RemoveContentAux(a^(m-1)*u-v,x),
      RemoveContentAux(u-a^(1-m)*v,x)) <--
    IntegersQ(a,b) && a+b==0 && RationalQ(m)


    RemoveContentAux(a_^m_'*u_'+a_^n_'*v_',x_Symbol) :=
      RemoveContentAux(u+a^(n-m)*v,x) <--
    FreeQ(a,x) && RationalQ(m,n) && n-m>=0


    RemoveContentAux(a_^m_'*u_'+a_^n_'*v_'+a_^p_'*w_',x_Symbol) :=
      RemoveContentAux(u+a^(n-m)*v+a^(p-m)*w,x) <--
    FreeQ(a,x) && RationalQ(m,n,p) && n-m>=0 && p-m>=0


    RemoveContentAux(u_,x_Symbol) :=
      If(SumQ(u) && NegQ(First(u)),
        -u,
      u)


    #= ::Subsection::Closed:: =#
    #=FreeFactors(u,x)=#


    #= FreeFactors(u,x)*returns*the*product*of*the*factors*of*u*free*of*x. =#
    FreeFactors(u_,x_) :=
      If(ProductQ(u),
        Map(MFunction(If(FreeQ(Symbol("#1"),x),Symbol("#1"),1)),u),
      If(FreeQ(u,x),
        u,
      1))


    #= ::Subsection::Closed:: =#
    #=NonfreeFactors(u,x)=#


    #= NonfreeFactors(u,x)*returns*the*product*of*the*factors*of*u*not*free*of*x. =#
    NonfreeFactors(u_,x_) :=
      If(ProductQ(u),
        Map(MFunction(If(FreeQ(Symbol("#1"),x),1,Symbol("#1"))),u),
      If(FreeQ(u,x),
        1,
      u))


    #= ::Subsection::Closed:: =#
    #=FreeTerms(u,x)=#


    #= FreeTerms(u,x)*returns*the*sum*of*the*terms*of*u*free*of*x. =#
    FreeTerms(u_,x_) :=
      If(SumQ(u),
        Map(MFunction(If(FreeQ(Symbol("#1"),x),Symbol("#1"),0)),u),
      If(FreeQ(u,x),
        u,
      0))


    #= ::Subsection::Closed:: =#
    #=NonfreeTerms(u,x)=#


    #= NonfreeTerms(u,x)*returns*the*sum*of*the*terms*of*u*not*free*of*x. =#
    NonfreeTerms(u_,x_) :=
      If(SumQ(u),
        Map(MFunction(If(FreeQ(Symbol("#1"),x),0,Symbol("#1"))),u),
      If(FreeQ(u,x),
        0,
      u))


    #= ::Subsection::Closed:: =#
    #=Polynomial*functions=#


    Expon(expr_,form_) :=
      Exponent(Together(expr),form)

    Expon(expr_,form_,h_) :=
      Exponent(Together(expr),form,h)


    Coeff(expr_,form_) :=
      Coefficient(Together(expr),form)

    Coeff(expr_,form_,n_) :=
      With([coef1=Coefficient(expr,form,n),coef2=Coefficient(Together(expr),form,n)],
      If(Simplify(coef1-coef2)===0,
        coef1,
      coef2))


    #= ::Subsection::Closed:: =#
    #=LeadTerm(u)=#


    LeadTerm(u_) :=
      If(SumQ(u),
        First(u),
      u)


    #= ::Subsection::Closed:: =#
    #=RemainingTerms(u)=#


    RemainingTerms(u_) :=
      If(SumQ(u),
        Rest(u),
      0)


    #= ::Subsection::Closed:: =#
    #=LeadFactor(u)=#


    #= LeadFactor(u)*returns*the*leading*factor*of*u. =#
    LeadFactor(u_) :=
      If(ProductQ(u),
        LeadFactor(First(u)),
      If(ComplexNumberQ(u) && Re(u)===0,
        If(Im(u)===1,
          u,
        LeadFactor(Im(u))),
      u))


    #= ::Subsection::Closed:: =#
    #=RemainingFactors(u)=#


    #= RemainingFactors(u)*returns*the*remaining*factors*of*u. =#
    RemainingFactors(u_) :=
      If(ProductQ(u),
        RemainingFactors(First(u))*Rest(u),
      If(ComplexNumberQ(u) && Re(u)===0,
        If(Im(u)===1,
          1,
        im*RemainingFactors(Im(u))),
      1))


    #= ::Subsection::Closed:: =#
    #=LeadBase(u)=#


    #= LeadBase(u)*returns*the*base*of*the*leading*factor*of*u. =#
    LeadBase(u_) :=
      With([v=LeadFactor(u)],
      If(PowerQ(v),
        Part(v, 1),
      v))


    #= ::Subsection::Closed:: =#
    #=LeadDegree(u)=#


    #= LeadDegree(u)*returns*the*degree*of*the*leading*factor*of*u. =#
    LeadDegree(u_) :=
      With([v=LeadFactor(u)],
      If(PowerQ(v),
        Part(v, 2),
      1))


    #= ::Subsection::Closed:: =#
    #=Numer(u)=#


    #= Numer(u)*returns*the*numerator*of*u. =#
    Numer(m_Integer^n_Rational) :=
      1 <--
    n<0


    Numer(u_*v_) :=
      Numer(u)*Numer(v)


    Numer(u_) := Numerator(u)


    #= ::Subsection::Closed:: =#
    #=Denom(u)=#


    #= Denom(u)*returns*the*denominator*of*u. =#
    Denom(m_Integer^n_Rational) :=
      m^-n <--
    n<0


    Denom(u_*v_) :=
      Denom(u)*Denom(v)


    Denom(u_) := Denominator(u)


    #= ::Section::Closed:: =#
    #=Multinomial*functions=#


    #= ::Subsection::Closed:: =#
    #=Multinomial*Recognizer*functions=#


    #= ::Item:: =#
    #=LinearQ(u,x)*returns*true*iff*u*is*a*polynomial*of*degree*1.0.=#


    LinearQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(PolyQ(Symbol("#1"),x,1),nothing,Throw(false))),u); true),
      PolyQ(u,x,1))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=LinearProductQ(u,x)*returns*true*iff*u*is*a*product*of*integer*powers*of*linears. =#


    #= LinearProductQ(u_,x_Symbol) :=
      ProductQ(NonfreeFactors(u,x)) && Catch(
    	Scan(MFunction(If(MatchQ(Symbol("#1"),Pm_^m_' <-- PolyQ(Pm,x,1) && IntegerQ(m)), nothing, Throw(false))),NonfreeFactors(u,x));
        true) =#


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=QuadraticProductQ(u,x)*returns*true*iff*u*is*a*product*of*integer*powers*of*linear*or*quadratic*polynomials. =#


    QuadraticProductQ(u_,x_Symbol) :=
      ProductQ(NonfreeFactors(u,x)) && Catch(
    	Scan(MFunction(If(MatchQ(Symbol("#1"),Pm_^m_' <-- PolyQ(Pm,x) && Expon(Pm,x)<=2 && IntegerQ(m)), nothing, Throw(false))),NonfreeFactors(u,x));
        true)


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=PowerOfLinearQ(u,x)*returns*true*iff*u*is*equivalent*to*an*expression*of*the*form*(a+b*x)^m.=#


    PowerOfLinearQ(u_^m_',x_Symbol) :=
      FreeQ(m,x) && PolynomialQ(u,x) && If(IntegerQ(m), MatchQ(FactorSquareFree(u), w_^n_' <-- FreeQ(n,x) && LinearQ(w,x)), LinearQ(u,x))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=QuadraticQ(u,x)*returns*true*iff*u*is*a*polynomial*of*degree*2*and*not*a*monomial*of*the*form*a*x^2.0.=#


    QuadraticQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(QuadraticQ(Symbol("#1"),x)),Throw(false))),u); true),
      PolyQ(u,x,2) && Not(Coefficient(u,x,0)===0 && Coefficient(u,x,1)===0))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=LinearPairQ(u,v,x)*returns*true*iff*u*and*v*are*linear*not*equal*x*but*u/v*is*a*constant*wrt*x.=#


    LinearPairQ(u_,v_,x_Symbol) :=
      LinearQ(u,x) && LinearQ(v,x) && NeQ(u,x) && EqQ(Coefficient(u,x,0)*Coefficient(v,x,1)-Coefficient(u,x,1)*Coefficient(v,x,0),0)


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=If*u*is*of*the*form*a*x^n*where*n!=0*and*a!=0, MonomialQ(u,x)*returns*true; else*false.=#


    MonomialQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(MonomialQ(Symbol("#1"),x),nothing,Throw(false))),u); true),
      MatchQ(u, a_'*x^n_' <-- FreeQ([a,n],x)))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=u*is*sum*whose*terms*are*monomials.  MinimumExponent(u,x)*returns*the*exponent*of*the*term*having*the*smallest*exponent.=#


    MinimumMonomialExponent(u_,x_Symbol) :=
      Module([n=MonomialExponent(First(u),x)],
      Scan(MFunction(If(PosQ(n-MonomialExponent(Symbol("#1"),x)),n=MonomialExponent(Symbol("#1"),x))),u);
      n)


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=u*is*a*monomial. MonomialExponent(u,x)*returns*the*exponent*of*x*in*u.=#


    MonomialExponent(a_'*x_^n_',x_Symbol) :=
      n <--
    FreeQ([a,n],x)


    #= ::Subsection::Closed:: =#
    #=Multinomial*Match*functions=#


    #= ::Item:: =#
    #=LinearMatchQ(u,x)*returns*true*iff*u*matches*patterns*of*the*form*a+b*x*where*a*and*b*are*free*of*x.=#


    LinearMatchQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(LinearMatchQ(Symbol("#1"),x)),Throw(false))),u); true),
      MatchQ(u, a_'+b_'*x <-- FreeQ([a,b],x)))


    #= ::Input:: =#
    #==#


    #= ::Item:: =#
    #=PowerOfLinearMatchQ(u,x)*returns*true*iff*u*matches*patterns*of*the*form*(a+b*x)^m*where*a, b*and*m*are*free*of*x.=#


    PowerOfLinearMatchQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(PowerOfLinearMatchQ(Symbol("#1"),x)),Throw(false))),u); true),
      MatchQ(u, (a_'+b_'*x)^m_' <-- FreeQ([a,b,m],x)))


    #= ::Input:: =#
    #==#


    #= ::Item:: =#
    #=QuadraticMatchQ(u,x)*returns*true*iff*u*matches*patterns*of*the*form*a+b*x+c*x^2*or*a+c*x^2*where*a, b*and*c*are*free*of*x.=#


    QuadraticMatchQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(QuadraticMatchQ(Symbol("#1"),x)),Throw(false))),u); true),
      MatchQ(u, a_'+b_'*x+c_'*x^2 <-- FreeQ([a,b,c],x)) || MatchQ(u, a_'+c_'*x^2 <-- FreeQ([a,c],x)))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=CubicMatchQ(u,x)*returns*true*iff*u*matches*patterns*of*the*form*a+b*x+c*x^2+d*x^3, a+b*x+d*x^3, a+c*x^2+d*x^3*or*a+d*x^3*where*a, b, c*and*d*are*free*of*x.=#


    CubicMatchQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(CubicMatchQ(Symbol("#1"),x)),Throw(false))),u); true),
      MatchQ(u, a_'+b_'*x+c_'*x^2+d_'*x^3 <-- FreeQ([a,b,c,d],x)) ||
      MatchQ(u, a_'+b_'*x+d_'*x^3 <-- FreeQ([a,b,d],x)) ||
      MatchQ(u, a_'+c_'*x^2+d_'*x^3 <-- FreeQ([a,c,d],x)) ||
      MatchQ(u, a_'+d_'*x^3 <-- FreeQ([a,d],x)))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=BinomialMatchQ(u,x)*returns*true*iff*u*matches*patterns*of*the*form*a+b*x^n*where*a, b*and*n*are*free*of*x.=#


    BinomialMatchQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(BinomialMatchQ(Symbol("#1"),x)),Throw(false))),u); true),
      MatchQ(u, a_'+b_'*x^n_' <-- FreeQ([a,b,n],x)))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=GeneralizedBinomialMatchQ(u,x)*returns*true*iff*u*matches*patterns*of*the*form*a*x^q+b*x^n*where*a, b, n*and*q*are*free*of*x.=#


    GeneralizedBinomialMatchQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(GeneralizedBinomialMatchQ(Symbol("#1"),x)),Throw(false))),u); true),
      MatchQ(u, a_'*x^q_'+b_'*x^n_' <-- FreeQ([a,b,n,q],x)))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=TrinomialMatchQ(u,x)*returns*true*iff*u*matches*patterns*of*the*form*a+b*x+c*x^n*or*a+c*x^(2*n)*where*a, b, c*and*n*are*free*of*x.=#


    TrinomialMatchQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(TrinomialMatchQ(Symbol("#1"),x)),Throw(false))),u); true),
      MatchQ(u, a_'+b_'*x^n_'+c_'*x^j_' <-- FreeQ([a,b,c,n],x) && EqQ(j-2*n,0)))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=GeneralizedTrinomialMatchQ(u,x)*returns*true*iff*u*matches*patterns*of*the*form*a*x^q+b*x^n+c*x^(2*n-q)*where*a, b, c, n*and*q*are*free*of*x.=#


    GeneralizedTrinomialMatchQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(GeneralizedTrinomialMatchQ(Symbol("#1"),x)),Throw(false))),u); true),
      MatchQ(u, a_'*x^q_'+b_'*x^n_'+c_'*x^r_' <-- FreeQ([a,b,c,n,q],x) && EqQ(r-(2*n-q),0)))


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=QuotientOfLinearsMatchQ(u,x)*returns*true*iff*u*matches*patterns*of*the*form*e*(a+b*x)/(c+d*x)*where*a, b, c*and*d*are*free*of*x.=#


    QuotientOfLinearsMatchQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(QuotientOfLinearsMatchQ(Symbol("#1"),x)),Throw(false))),u); true),
      MatchQ(u, e_'*(a_'+b_'*x)/(c_'+d_'*x) <-- FreeQ([a,b,c,d,e],x)))


    #= ::Input:: =#
    #= =#


    #= ::Subsection::Closed:: =#
    #=Polynomial*Terms*functions=#


    #= If*u*(x)*is*an*expression*of*the*form*a*x^n*where*n*is*zero*or*a*positive*integer,
    	PolynomialTermQ(u,x)*returns*true; else*it*returns*false. =#
    PolynomialTermQ(u_,x_Symbol) :=
      FreeQ(u,x) || MatchQ(u,a_'*x^n_' <-- FreeQ(a,x) && IntegerQ(n) && n>0)


    #= u*(x)*is*a*sum.  PolynomialTerms(u,x)*returns*the*sum*of*the*polynomial*terms*of*u*(x). =#
    PolynomialTerms(u_,x_Symbol) :=
      Map(MFunction(If(PolynomialTermQ(Symbol("#1"),x),Symbol("#1"),0)),u)


    #= u*(x)*is*a*sum.  NonpolynomialTerms(u,x)*returns*the*sum*of*the*nonpolynomial*terms*of*u*(x). =#
    NonpolynomialTerms(u_,x_Symbol) :=
      Map(MFunction(If(PolynomialTermQ(Symbol("#1"),x),0,Symbol("#1"))),u)


    #= ::Subsection::Closed:: =#
    #=PseudoBinomial*Routines=#


    #= If*u*is*equivalent*to*a*polynomial*of*the*form*a+b*(c+d*x)^n*where*n\(Element)\(DoubleStruckCapitalZ)*and*n>2,
    	PseudoBinomialQ(u,x)*returns*true; else*it*returns*false. =#
    PseudoBinomialQ(u_,x_Symbol) :=
      ListQ(PseudoBinomialParts(u,x))


    #= If*u*is*equivalent*to*a*polynomial*of*the*form*a+b*(e+f*x)^n*and*v*to*a*polynomial*of*the*form*c+d*(e+f*x)^n*where*n\(Element)\(DoubleStruckCapitalZ)*and*n>2,
    	PseudoBinomialPairQ(u,v,x)*returns*true; else*it*returns*false. =#
    PseudoBinomialPairQ(u_,v_,x_Symbol) :=
      With([lst1=PseudoBinomialParts(u,x)],
      If(AtomQ(lst1),
        false,
      With([lst2=PseudoBinomialParts(v,x)],
      If(AtomQ(lst2),
        false,
      Drop(lst1,2)===Drop(lst2,2)))))


    #= u*is*pseudo-binomial*in*x, NormalizePseudoBinomial(u,x)*returns*u*in*the*form*a+b*(c+d*x)^n. =#
    NormalizePseudoBinomial(u_,x_Symbol) :=
      With([lst=PseudoBinomialParts(u,x)],
      Part(lst, 1)+Part(lst, 2)*(Part(lst, 3)+Part(lst, 4)*x)^Part(lst, 5))


    #= If*u*is*equivalent*to*a*polynomial*of*the*form*a+b*(c+d*x)^n*where*n\(Element)\(DoubleStruckCapitalZ)*and*n>2,
    	PseudoBinomialParts(u,x)*returns*the*list [a,b,c,d,n]; else*it*returns*false. =#
    PseudoBinomialParts(u_,x_Symbol) :=
      If(PolynomialQ(u,x) && Expon(u,x)>2,
        Module([a,c,d,n],
        n=Expon(u,x);
        d=Rt(Coefficient(u,x,n),n);
        c=Coefficient(u,x,n-1)/(n*d^(n-1));
        a=Simplify(u-(c+d*x)^n);
        If(NeQ(a,0) && FreeQ(a,x),
          [a,1,c,d,n],
        false)),
      false)


    #= ::Subsection::Closed:: =#
    #=Perfect*Power*Test*MFunction=#


    #= If*u*(x)*is*equivalent*to*a*polynomial*raised*to*an*integer*power*greater*than*1,
    	PerfectPowerTest(u,x)*returns*u*(x)*as*an*expanded*polynomial*raised*to*the*power;
    	else*it*returns*false. =#
    PerfectPowerTest(u_,x_Symbol) :=
      If(PolynomialQ(u,x),
        Module([lst=FactorSquareFreeList(u),gcd=0,v=1],
        If(Part(lst, 1)===[1,1],
          lst=Rest(lst));
        Scan(MFunction(gcd=GCD(gcd,Part(Symbol("#"), 2))),lst);
        If(gcd>1,
          Scan(MFunction(v=v*Part(Symbol("#"), 1)^(Part(Symbol("#"), 2)/gcd)),lst);
          expand(v)^gcd,
        false)),
      false)


    #= ::Subsection::Closed:: =#
    #=Square*Free*Factor*Test*MFunction=#


    #= If*u*(x)*can*be*square*free*factored, SquareFreeFactorTest(u,x)*returns*u*(x)*in
    	factored*form; else*it*returns*false. =#
    #= SquareFreeFactorTest(u_,x_Symbol) :=
      If(PolynomialQ(u,x),
        With([v=FactorSquareFree(u)],
        If(PowerQ(v) || ProductQ(v),
          v,
        false)),
      false) =#


    #= ::Section::Closed:: =#
    #=Rational*function*functions=#


    #= ::Subsection::Closed:: =#
    #=RationalFunctionQ=#


    #= If*u*is*a*rational*function*of*x, RationalFunctionQ(u,x)*returns*true; else*it*returns*false. =#
    RationalFunctionQ(u_,x_Symbol) :=
      If(AtomQ(u) || FreeQ(u,x),
        true,
      If(IntegerPowerQ(u),
        RationalFunctionQ(Part(u, 1),x),
      If(ProductQ(u) || SumQ(u),
        Catch(Scan(MFunction(If(Not(RationalFunctionQ(Symbol("#1"),x)),Throw(false))),u);true),
      false)))


    #= ::Subsection::Closed:: =#
    #=RationalFunctionFactors=#


    #= RationalFunctionFactors(u,x)*returns*the*product*of*the*factors*of*u*that*are*rational*functions*of*x. =#
    RationalFunctionFactors(u_,x_Symbol) :=
      If(ProductQ(u),
        Map(MFunction(If(RationalFunctionQ(Symbol("#1"),x),Symbol("#1"),1)),u),
      If(RationalFunctionQ(u,x),
        u,
      1))


    #= ::Subsection::Closed:: =#
    #=NonrationalFunctionFactors=#


    #= NonrationalFunctionFactors(u,x)*returns*the*product*of*the*factors*of*u*that*are*not*rational*functions*of*x. =#
    NonrationalFunctionFactors(u_,x_Symbol) :=
      If(ProductQ(u),
        Map(MFunction(If(RationalFunctionQ(Symbol("#1"),x),1,Symbol("#1"))),u),
      If(RationalFunctionQ(u,x),
        1,
      u))


    #= ::Subsection::Closed:: =#
    #=RationalFunctionExponents=#


    #= u*is*a*polynomial*or*rational*function*of*x. =#
    #= RationalFunctionExponents(u,x)*returns*a*list*of*the*exponent*of*the =#
    #= numerator*of*u*and*the*exponent*of*the*denominator*of*u. =#
    RationalFunctionExponents(u_,x_Symbol) :=
      If(PolynomialQ(u,x),
        [Exponent(u,x),0],
      If(IntegerPowerQ(u),
        If(Part(u, 2)>0,
          Part(u, 2)*RationalFunctionExponents(Part(u, 1),x),
        (-Part(u, 2))*Reverse(RationalFunctionExponents(Part(u, 1),x))),
      If(ProductQ(u),
        RationalFunctionExponents(First(u),x)+RationalFunctionExponents(Rest(u),x),
      If(SumQ(u),
        With([v=Together(u)],
        If(SumQ(v),
          Module([lst1,lst2],
          lst1=RationalFunctionExponents(First(u),x);
          lst2=RationalFunctionExponents(Rest(u),x);
          [Max(Part(lst1, 1)+Part(lst2, 2),Part(lst2, 1)+Part(lst1, 2)),Part(lst1, 2)+Part(lst2, 2)]),
        RationalFunctionExponents(v,x))),
      [0,0]))))


    #= ::Subsection::Closed:: =#
    #=RationalFunctionExpand=#


    #= u*is*a*polynomial*or*rational*function*of*x. =#
    #= RationalFunctionExpand(u,x)*returns*the*expansion*of*the*factors*of*u*that*are*rational*functions*times*the*other*factors. =#
    RationalFunctionExpand(u_*v_^n_,x_Symbol) :=
      With([w=RationalFunctionExpand(u,x)],
      If(SumQ(w),
        Map(MFunction(Symbol("#1")*v^n),w),
      w*v^n)) <--
    FractionQ(n) && v!==x

    RationalFunctionExpand(u_,x_Symbol) :=
      Module([v,w],
      v=ExpandIntegrand(u,x);
      If(v!==u && Not(MatchQ(u, x^m_'*(c_+d_'*x)^p_/(a_+b_'*x^n_) <-- FreeQ([a,b,c,d,p],x) && IntegersQ(m,n) && m==n-1)),
        v,
      v=ExpandIntegrand(RationalFunctionFactors(u,x),x);
      w=NonrationalFunctionFactors(u,x);
      If(SumQ(v),
        Map(MFunction(Symbol("#1")*w),v),
      v*w)))


    #= ::Subsection::Closed:: =#
    #=PolyGCD=#


    #= u*and*v*are*polynomials*in*x. =#
    #= PolyGCD(u,v,x)*returns*the*factors*of*the*gcd*of*u*and*v*dependent*on*x. =#
    PolyGCD(u_,v_,x_Symbol) :=
      NonfreeFactors(PolynomialGCD(u,v),x)


    #= ::Section::Closed:: =#
    #=Algebraic*function*functions=#


    #= ::Subsection::Closed:: =#
    #=AlgebraicFunctionQ=#


    #= AlgebraicFunctionQ(u,x)*returns*true*iff*u*is*an*algebraic*of*x =#
    #= If*flag*is*true, exponents*can*be*nonnumeric. =#
    AlgebraicFunctionQ(u_,x_Symbol,flag_:false) :=
      If(AtomQ(u) || FreeQ(u,x),
        true,
      If(PowerQ(u) && (RationalQ(Part(u, 2)) || flag && FreeQ(Part(u, 2),x)),
        AlgebraicFunctionQ(Part(u, 1),x,flag),
      If(ProductQ(u) || SumQ(u),
        Catch(Scan(MFunction(If(Not(AlgebraicFunctionQ(Symbol("#1"),x,flag)),Throw(false))),u);true),
      If(ListQ(u),
        If(u===[],
          true,
        If(AlgebraicFunctionQ(First(u),x,flag),
          AlgebraicFunctionQ(Rest(u),x,flag),
        false)),
      false))))


    #= ::Subsection::Closed:: =#
    #=AlgebraicFunctionFactors=#


    #= AlgebraicFunctionFactors(u,x)*returns*the*product*of*the*factors*of*u*that*are*algebraic*functions*of*x. =#
    #= AlgebraicFunctionFactors(u_,x_Symbol,flag_:false) :=
      If(ProductQ(u),
        Map(MFunction(If(AlgebraicFunctionQ(Symbol("#1"),x,flag),Symbol("#1"),1)),u),
      If(AlgebraicFunctionQ(u,x,flag),u,1)) =#


    #= ::Subsection::Closed:: =#
    #=NonalgebraicFunctionFactors=#


    #= NonalgebraicFunctionFactors(u,x)*returns*the*product*of*the*factors*of*u*that*are*not*algebraic*functions*of*x. =#
    #= NonalgebraicFunctionFactors(u_,x_Symbol,flag_:false) :=
      If(ProductQ(u),
        Map(MFunction(If(AlgebraicFunctionQ(Symbol("#1"),x,flag),1,Symbol("#1"))),u),
      If(AlgebraicFunctionQ(u,x,flag),1,u)) =#


    #= ::Section::Closed:: =#
    #=Quotient*of*linears*functions=#


    #= ::Subsection::Closed:: =#
    #=QuotientOfLinearsQ=#


    #= ::Item:: =#
    #=QuotientOfLinearsQ(u,x)*returns*true*iff*u*is*equivalent*to*an*expression*of*the*form*(a+b*x)/(c+d*x)*where*b!=0*and*d!=0.0.=#


    QuotientOfLinearsQ(u_,x_Symbol) :=
      If(ListQ(u),
        Catch(Scan(MFunction(If(Not(QuotientOfLinearsQ(Symbol("#1"),x)),Throw(false))),u); true),
      QuotientOfLinearsP(u,x) && MFunction(NeQ(Part(Symbol("#"), 2),0) && NeQ(Part(Symbol("#"), 4),0))(QuotientOfLinearsParts(u,x)))


    QuotientOfLinearsP(a_*u_,x_) :=
      QuotientOfLinearsP(u,x) <--
    FreeQ(a,x)

    QuotientOfLinearsP(a_+u_,x_) :=
      QuotientOfLinearsP(u,x) <--
    FreeQ(a,x)

    QuotientOfLinearsP(1/u_,x_) :=
      QuotientOfLinearsP(u,x)

    QuotientOfLinearsP(u_,x_) :=
      true <--
    LinearQ(u,x)

    QuotientOfLinearsP(u_/v_,x_) :=
      true <--
    LinearQ(u,x) && LinearQ(v,x)

    QuotientOfLinearsP(u_,x_) :=
      u===x || FreeQ(u,x)


    #= ::Subsection::Closed:: =#
    #=QuotientOfLinearsParts=#


    #= If*u*is*equivalent*to*an*expression*of*the*form*(a+b*x)/(c+d*x), QuotientOfLinearsParts(u,x)
    	returns*the*list [a, b, c, d]. =#
    QuotientOfLinearsParts(a_*u_,x_) :=
      Apply(MFunction([a*Symbol("#1"), a*Symbol("#2"), Symbol("#3"), Symbol("#4")]), QuotientOfLinearsParts(u,x)) <--
    FreeQ(a,x)

    QuotientOfLinearsParts(a_+u_,x_) :=
      Apply(MFunction([Symbol("#1")+a*Symbol("#3"), Symbol("#2")+a*Symbol("#4"), Symbol("#3"), Symbol("#4")]), QuotientOfLinearsParts(u,x)) <--
    FreeQ(a,x)

    QuotientOfLinearsParts(1/u_,x_) :=
      Apply(MFunction([Symbol("#3"), Symbol("#4"), Symbol("#1"), Symbol("#2")]), QuotientOfLinearsParts(u,x))

    QuotientOfLinearsParts(u_,x_) :=
      [Coefficient(u,x,0), Coefficient(u,x,1), 1, 0] <--
    LinearQ(u,x)

    QuotientOfLinearsParts(u_/v_,x_) :=
      [Coefficient(u,x,0), Coefficient(u,x,1), Coefficient(v,x,0), Coefficient(v,x,1)] <--
    LinearQ(u,x) && LinearQ(v,x)

    QuotientOfLinearsParts(u_,x_) :=
      If(u===x,
        [0, 1, 1, 0],
      If(FreeQ(u,x),
        [u, 0, 1, 0],
      Print("QuotientOfLinearsParts*error!");
      [u, 0, 1, 0]))


    #= ::Subsection::Closed:: =#
    #=SubstForFractionalPowerOfQuotientOfLinears=#


    #= If*u*has*a*subexpression*of*the*form*((a+b*x)/(c+d*x))^(m/n)*where*m*and*n>1*are*integers,
    	SubstForFractionalPowerOfQuotientOfLinears(u,x)*returns*the*list [v,n,(a+b*x)/(c+d*x),b*c-a*d] where*v*is*u
    	with*subexpressions*of*the*form*((a+b*x)/(c+d*x))^(m/n)*replaced*by*x^m*and*x*replaced
    	by*(-a+c*x^n)/(b-d*x^n), and*all*times*x^(n-1)/(b-d*x^n)^2; else*it*returns*false. =#
    SubstForFractionalPowerOfQuotientOfLinears(u_,x_Symbol) :=
      Module([lst=FractionalPowerOfQuotientOfLinears(u,1,false,x)],
      If(AtomQ(lst) || AtomQ(Part(lst, 2)),
        false,
      With([n=Part(lst, 1),tmp=Part(lst, 2)],
      lst=QuotientOfLinearsParts(tmp,x);
      With([a=Part(lst, 1),b=Part(lst, 2),c=Part(lst, 3),d=Part(lst, 4)],
      If(EqQ(d,0),
        false,
      lst=Simplify(x^(n-1)*SubstForFractionalPower(u,tmp,n,(-a+c*x^n)/(b-d*x^n),x)/(b-d*x^n)^2);
      [NonfreeFactors(lst,x),n,tmp,FreeFactors(lst,x)*(b*c-a*d)])))))


    #= If*the*substitution*x=v^(1/n)*will*not*complicate*algebraic*subexpressions*of*u,
    	SubstForFractionalPowerQ(u,v,x)*returns*true; else*it*returns*false. =#
    SubstForFractionalPowerQ(u_,v_,x_Symbol) :=
      If(AtomQ(u) || FreeQ(u,x),
        true,
      If(FractionalPowerQ(u),
        SubstForFractionalPowerAuxQ(u,v,x),
      Catch(Scan(MFunction(If(Not(SubstForFractionalPowerQ(Symbol("#1"),v,x)),Throw(false))),u);true)))

    SubstForFractionalPowerAuxQ(u_,v_,x_) :=
      If(AtomQ(u),
        false,
      If(FractionalPowerQ(u) && EqQ(Part(u, 1),v),
        true,
      Catch(Scan(MFunction(If(SubstForFractionalPowerAuxQ(Symbol("#1"),v,x),Throw(true))),u);false)))


    #= If*u*has*a*subexpression*of*the*form*((a+b*x)/(c+d*x))^(m/n),
    	FractionalPowerOfQuotientOfLinears(u,1,false,x)*returns [n,(a+b*x)/(c+d*x)]; else*it*returns*false. =#
    FractionalPowerOfQuotientOfLinears(u_,n_,v_,x_) :=
      If(AtomQ(u) || FreeQ(u,x),
        [n,v],
      If(CalculusQ(u),
        false,
      If(FractionalPowerQ(u) && QuotientOfLinearsQ(Part(u, 1),x) && Not(LinearQ(Part(u, 1),x)) && (FalseQ(v) || EqQ(Part(u, 1),v)),
        [LCM(Denominator(Part(u, 2)),n),Part(u, 1)],
      Catch(Module([lst=[n,v]],
        Scan(MFunction(If(AtomQ(lst=FractionalPowerOfQuotientOfLinears(Symbol("#1"),Part(lst, 1),Part(lst, 2),x)),Throw(false))),u);
        lst)))))


    #= ::Subsection::Closed:: =#
    #=SubstForInverseFunctionOfQuotientOfLinears=#


    #= If*u*has*a*subexpression*of*the*form*g((a+b*x)/(c+d*x))*where*g*is*the*inverse*of*function*h
    	and*f(x,g((a+b*x)/(c+d*x)))*equals*u, SubstForInverseFunctionOfQuotientOfLinears(u,x)*returns
    	the*list [f((-a+c*h(x))/(b-d*h(x)),x)*h'(x)/(b-d*h(x))^2, g((a+b*x)/(c+d*x)), b*c-a*d] =#
    SubstForInverseFunctionOfQuotientOfLinears(u_,x_Symbol) :=
      With([tmp=InverseFunctionOfQuotientOfLinears(u,x)],
      If(AtomQ(tmp),
        false,
      With([h=InverseFunction(Head(tmp)),lst=QuotientOfLinearsParts(Part(tmp, 1),x)],
      With([a=Part(lst, 1),b=Part(lst, 2),c=Part(lst, 3),d=Part(lst, 4)],
      [SubstForInverseFunction(u,tmp,(-a+c*h(x))/(b-d*h(x)),x)*D(h(x),x)/(b-d*h(x))^2, tmp, b*c-a*d]))))


    #= If*u*has*a*subexpression*of*the*form*g((a+b*x)/(c+d*x))*where*g*is*an*inverse*function,
    	InverseFunctionOfQuotientOfLinears(u,x)*returns*g((a+b*x)/(c+d*x)); else*it*returns*false. =#
    InverseFunctionOfQuotientOfLinears(u_,x_Symbol) :=
      If(AtomQ(u) || CalculusQ(u) || FreeQ(u,x),
        false,
      If(InverseFunctionQ(u) && QuotientOfLinearsQ(Part(u, 1),x),
        u,
      Module([tmp],
      Catch(
        Scan(MFunction(If(Not(AtomQ(tmp=InverseFunctionOfQuotientOfLinears(Symbol("#1"),x))),Throw(tmp))),u);
        false))))


    #= ::Subsubsection::Closed:: =#
    #=Substitution*for*inverse*functions=#


    #= SubstForFractionalPower(u,v,n,w,x)*returns*u*with*subexpressions*equal*to*v^(m/n)*replaced
    	by*x^m*and*x*replaced*by*w. =#
    SubstForFractionalPower(u_,v_,n_,w_,x_Symbol) :=
      If(AtomQ(u),
        If(u===x,
          w,
        u),
      If(FractionalPowerQ(u) && EqQ(Part(u, 1),v),
        x^(n*Part(u, 2)),
      Map(MFunction(SubstForFractionalPower(Symbol("#1"),v,n,w,x)),u)))


    #= SubstForInverseFunction(u,v,w,x)*returns*u*with*subexpressions*equal*to*v*replaced*by*x
    	and*x*replaced*by*w. =#
    SubstForInverseFunction(u_,v_,x_Symbol) :=
    #=  Module([a=Coefficient(Part(v, 1),0),b=Coefficient(Part(v, 1),1)],
      SubstForInverseFunction(u,v,-a/b+InverseFunction(Head(v))/b,x)) =#
      SubstForInverseFunction(u,v,
    		(-Coefficient(Part(v, 1),x,0)+InverseFunction(Head(v))(x))/Coefficient(Part(v, 1),x,1),x)

    SubstForInverseFunction(u_,v_,w_,x_Symbol) :=
      If(AtomQ(u),
        If(u===x,
          w,
        u),
      If(Head(u)===Head(v) && EqQ(Part(u, 1),Part(v, 1)),
        x,
      Map(MFunction(SubstForInverseFunction(Symbol("#1"),v,w,x)),u)))


    #= ::Section::Closed:: =#
    #=Absurd*number*factors=#


    #= ::Text:: =#
    #=Definition: A*number*is*absurd*if*it*is*a*rational*number, a*positive*rational*number*raised*to*a*fractional*power, or*a*product*of*absurd*numbers.=#


    #= AbsurdNumberQ(u)*returns*true*if*u*is*an*absurd*number, else*it*returns*false. =#
    AbsurdNumberQ(u_) :=
      RationalQ(u)

    AbsurdNumberQ(u_^v_) :=
      RationalQ(u) && u>0 && FractionQ(v)

    AbsurdNumberQ(u_*v_) :=
      AbsurdNumberQ(u) && AbsurdNumberQ(v)


    #= AbsurdNumberFactors(u)*returns*the*product*of*the*factors*of*u*that*are*absurd*numbers. =#
    AbsurdNumberFactors(u_) :=
      If(AbsurdNumberQ(u),
        u,
      If(ProductQ(u),
        Map(AbsurdNumberFactors,u),
      NumericFactor(u)))


    #= NonabsurdNumberFactors(u)*returns*the*product*of*the*factors*of*u*that*are*not*absurd*numbers. =#
    NonabsurdNumberFactors(u_) :=
      If(AbsurdNumberQ(u),
        1,
      If(ProductQ(u),
        Map(NonabsurdNumberFactors,u),
      NonnumericFactors(u)))


    #= m*must*be*an*absurd*number.  FactorAbsurdNumber(m)*returns*the*prime*factorization*of*m =#
    #= as*list*of*base-degree*pairs*where*the*bases*are*prime*numbers*and*the*degrees*are*rational. =#
    FactorAbsurdNumber(m_) :=
      If(RationalQ(m),
        FactorInteger(m),
      If(PowerQ(m),
        Map(MFunction([Part(Symbol("#"), 1), Part(Symbol("#"), 2)*Part(m, 2)]),FactorInteger(Part(m, 1))),
      CombineExponents(Sort(Flatten(Map(FactorAbsurdNumber,Apply(List,m)),1), MFunction(Part(Symbol("#1"), 1)<Part(Symbol("#2"), 1))))))


    CombineExponents(lst_) :=
      If(Length(lst)<2,
        lst,
      If(Part(lst, 1,1)==Part(lst, 2,1),
        CombineExponents(Prepend(Drop(lst,2),[Part(lst, 1,1),Part(lst, 1,2)+Part(lst, 2,2)])),
      Prepend(CombineExponents(Rest(lst)),First(lst))))


    #= m, n, ... must*be*absurd*numbers.  AbsurdNumberGCD(m,n,...)*returns*the*gcd*of*m, n, ... =#
    AbsurdNumberGCD(seq__) :=
      With([lst=[seq]],
      If(Length(lst)==1,
        First(lst),
      AbsurdNumberGCDList(FactorAbsurdNumber(First(lst)),FactorAbsurdNumber(Apply(AbsurdNumberGCD,Rest(lst))))))


    #= lst1*and*lst2*must*be*absurd*number*prime*factorization*lists. =#
    #= AbsurdNumberGCDList(lst1,lst2)*returns*the*gcd*of*the*absurd*numbers*represented*by*lst1*and*lst2.0. =#
    AbsurdNumberGCDList(lst1_,lst2_) :=
      If(lst1===[],
        Apply(Times,Map(MFunction(Part(Symbol("#"), 1)^Min(Part(Symbol("#"), 2),0)),lst2)),
      If(lst2===[],
        Apply(Times,Map(MFunction(Part(Symbol("#"), 1)^Min(Part(Symbol("#"), 2),0)),lst1)),
      If(Part(lst1, 1,1)==Part(lst2, 1,1),
        If(Part(lst1, 1,2)<=Part(lst2, 1,2),
          Part(lst1, 1,1)^Part(lst1, 1,2)*AbsurdNumberGCDList(Rest(lst1),Rest(lst2)),
        Part(lst1, 1,1)^Part(lst2, 1,2)*AbsurdNumberGCDList(Rest(lst1),Rest(lst2))),
      If(Part(lst1, 1,1)<Part(lst2, 1,1),
        If(Part(lst1, 1,2)<0,
          Part(lst1, 1,1)^Part(lst1, 1,2)*AbsurdNumberGCDList(Rest(lst1),lst2),
        AbsurdNumberGCDList(Rest(lst1),lst2)),
      If(Part(lst2, 1,2)<0,
        Part(lst2, 1,1)^Part(lst2, 1,2)*AbsurdNumberGCDList(lst1,Rest(lst2)),
      AbsurdNumberGCDList(lst1,Rest(lst2)))))))


    #= ::Section::Closed:: =#
    #=Normalization*functions=#


    #= ::Subsection::Closed:: =#
    #=NormalizeIntegrand=#


    #= NormalizeIntegrand(u,x)*returns*u*in*a*standard*form*recognizable*by*integration*rules. =#
    NormalizeIntegrand(u_,x_Symbol) :=
      With([v=NormalizeLeadTermSigns(NormalizeIntegrandAux(u,x))],
      If(v===NormalizeLeadTermSigns(u),
        u,
      v))


    #= ::Subsection::Closed:: =#
    #=NormalizeIntegrandAux=#


    NormalizeIntegrandAux(u_,x_Symbol) :=
      If(SumQ(u),
        Map(MFunction(NormalizeIntegrandAux(Symbol("#1"),x)),u),
      If(ProductQ(MergeMonomials(u,x)),
        Map(MFunction(NormalizeIntegrandFactor(Symbol("#1"),x)),MergeMonomials(u,x)),
      NormalizeIntegrandFactor(MergeMonomials(u,x),x)))


    NormalizeIntegrandFactor(u_,x_Symbol) :=
      Module([bas,deg,min],
      If(PowerQ(u) && FreeQ(Part(u, 2),x),
        bas=NormalizeIntegrandFactorBase(Part(u, 1),x);
        deg=Part(u, 2);
        If(IntegerQ(deg) && SumQ(bas) && EveryQ(MFunction(MonomialQ(Symbol("#1"),x)),bas),
          min=MinimumMonomialExponent(bas,x);
          x^(min*deg)*Map(MFunction(Simplify(Symbol("#1")/x^min)),bas)^deg,
        bas^deg),
      If(PowerQ(u) && FreeQ(Part(u, 1),x),
        Part(u, 1)^NormalizeIntegrandFactorBase(Part(u, 2),x),
      bas=NormalizeIntegrandFactorBase(u,x);
      If(SumQ(bas) && EveryQ(MFunction(MonomialQ(Symbol("#1"),x)),bas),
        min=MinimumMonomialExponent(bas,x);
        x^min*Map(MFunction(Symbol("#1")/x^min),bas),
      bas))))


    NormalizeIntegrandFactorBase(x_^m_'*u_,x_Symbol) :=
      NormalizeIntegrandFactorBase(Map(MFunction(x^m*Symbol("#1")),u),x) <--
    FreeQ(m,x) && SumQ(u)


    NormalizeIntegrandFactorBase(u_,x_Symbol) :=
      If(BinomialQ(u,x),
        If(BinomialMatchQ(u,x),
          u,
        ExpandToSum(u,x)),
      If(TrinomialQ(u,x),
        If(TrinomialMatchQ(u,x),
          u,
        ExpandToSum(u,x)),
      If(ProductQ(u),
        Map(MFunction(NormalizeIntegrandFactor(Symbol("#1"),x)),u),
      If(PolynomialQ(u,x) && Exponent(u,x)<=4,
        ExpandToSum(u,x),
      If(SumQ(u),
        With([v=TogetherSimplify(u)],
        If(SumQ(v) || MatchQ(v, x^m_'*w_ <-- FreeQ(m,x) && SumQ(w)) || LeafCount(v)>LeafCount(u)+2,
          UnifySum(u,x),
        NormalizeIntegrandFactorBase(v,x))),
      Map(MFunction(NormalizeIntegrandFactor(Symbol("#1"),x)),u))))))


    #= ::Subsection::Closed:: =#
    #=NormalizeLeadTermSigns=#


    NormalizeTogether(u_) :=
      NormalizeLeadTermSigns(Together(u))


    #= NormalizeLeadTermSigns(u)*returns*an*expression*equal*u*but*with*not*more*than*one*sum
    	factor*raised*to*a*integer*degree*having*a*lead*term*with*a*negative*coefficient. =#
    NormalizeLeadTermSigns(u_) :=
      With([lst=If(ProductQ(u), Map(SignOfFactor,u), SignOfFactor(u))],
      If(Part(lst, 1)==1,
        Part(lst, 2),
      AbsorbMinusSign(Part(lst, 2))))


    #= AbsorbMinusSign(u)*returns*an*expression*equal*to -u.  If*there*is*a*factor*of*u*of*the
    	form*v^m*where*v*is*a*sum*and*m*is*an*odd*power, the*minus*sign*is*distributed*over*v;
    	otherwise -u*is*returned. =#
    AbsorbMinusSign(u_'*v_Plus) :=
      u*(-v)

    AbsorbMinusSign(u_'*v_Plus^m_) :=
      u*(-v)^m <--
    OddQ(m)

    AbsorbMinusSign(u_) :=
      -u


    #= ::Subsection::Closed:: =#
    #=NormalizeSumFactors=#


    #= NormalizeSumFactors(u)*returns*an*expression*equal*u*but*with*the*numeric*coefficient*of
    	the*lead*term*of*sum*factors*made*positive*where*possible. =#
    NormalizeSumFactors(u_) :=
      If(AtomQ(u) || StopFunctionQ(u),
        u,
      If(ProductQ(u),
        MFunction(Part(Symbol("#"), 1)*Part(Symbol("#"), 2))(SignOfFactor(Map(NormalizeSumFactors,u))),
      Map(NormalizeSumFactors,u)))


    #= SignOfFactor(u)*returns*the*list [n,v] where*n*v*equals*u, n^2*equals*1, and*the*lead
    	term*of*the*sum*factors*of*v*raised*to*integer*degrees*all*have*positive*coefficients. =#
    SignOfFactor(u_) :=
      If(RationalQ(u) && u<0 || SumQ(u) && NumericFactor(First(u))<0,
        [-1, -u],
      If(IntegerPowerQ(u) && SumQ(Part(u, 1)) && NumericFactor(First(Part(u, 1)))<0,
        [(-1)^Part(u, 2), (-Part(u, 1))^Part(u, 2)],
      If(ProductQ(u),
        Map(SignOfFactor,u),
      [1, u])))


    #= ::Subsection::Closed:: =#
    #=NormalizePowerOfLinear=#


    #= u*can*be*square-free*factored*into*an*expression*of*the*form*(a+b*x)^m. =#
    #= NormalizePowerOfLinear(u,x)*returns*u*in*the*form*(a+b*x)^m. =#
    NormalizePowerOfLinear(u_,x_Symbol) :=
      With([v=FactorSquareFree(u)],
      If(PowerQ(v) && LinearQ(Part(v, 1),x) && FreeQ(Part(v, 2),x),
        ExpandToSum(Part(v, 1),x)^Part(v, 2),
      ExpandToSum(v,x)))


    #= ::Subsection::Closed:: =#
    #=MergeMonomials=#


    #= ::Subsubsection::Closed:: =#
    #=Basis: If  m\(Element)\(DoubleStruckCapitalZ) \(And)*b*c-a*d==0, then*(a+b*z)^m==b^m/d^m*(c+d*z)^m=#


    MergeMonomials(u_'*(a_'+b_'*x_)^m_'*(c_'+d_'*x_)^n_',x_Symbol) :=
      u*b^m/d^m*(c+d*x)^(m+n) <--
    FreeQ([a,b,c,d],x) && IntegerQ(m) && EqQ(b*c-a*d,0)


    #= ::Subsubsection::Closed:: =#
    #=Basis: If  m/n\(Element)\(DoubleStruckCapitalZ), then*z^m*(c*z^n)^p==(c*z^n)^(m/n+p)/c^(m/n)=#


    MergeMonomials(u_'*(a_'+b_'*x_)^m_'*(c_'*(a_'+b_'*x_)^n_')^p_,x_Symbol) :=
      u*(c*(a+b*x)^n)^(m/n+p)/c^(m/n) <--
    FreeQ([a,b,c,m,n,p],x) && IntegerQ(m/n)


    #= ::Subsubsection::Closed:: =#
    #=Miscellaneous*simplification=#


    MergeMonomials(a_'*u_^m_,x_Symbol) :=
      a*u^Simplify(m) <--
    FreeQ([a,m],x)

    MergeMonomials(u_,x_Symbol) :=
      If(LinearQ(u,x),
        Cancel(u),
      u)


    #= ::Section::Closed:: =#
    #=Simplification*functions=#


    #= ::Subsection::Closed:: =#
    #=SimplifyIntegrand=#


    #= SimplifyIntegrand(u,x)*simplifies*u*and*returns*the*result*in*a*standard*form*recognizable*by*integration*rules. =#
    SimplifyIntegrand(u_,x_Symbol) :=
      Module([v],
      v=NormalizeLeadTermSigns(NormalizeIntegrandAux(Simplify(u),x));
      If(LeafCount(v)<4/5*LeafCount(u),
        v,
      If(v!==NormalizeLeadTermSigns(u),
        v,
      u)))


    #= ::Subsection::Closed:: =#
    #=SimplifyTerm        ????=#


    #= SimplifyTerm(u_,x_Symbol) :=
      Module([v=Simplify(u),w],
      w=Together(v);
      NormalizeIntegrand(If(LeafCount(v)<LeafCount(w),v,w),x)) =#


    SimplifyTerm(u_,x_Symbol) :=
      Module([v=Simplify(u),w],
      w=Together(v);
      NormalizeIntegrand(If(LeafCount(v)<LeafCount(w),w,w),x))


    #= ::Subsection::Closed:: =#
    #=TogetherSimplify=#


    TogetherSimplify(u_) :=
      TimeConstrained(
        With([v=Together(Simplify(Together(u)))],
        TimeConstrained(FixSimplify(v),DOLLARTimeLimit/3,v)),
      DOLLARTimeLimit,u)


    #= TogetherSimplify*could*replace*SmartSimplify, but*results*in*more*complicated =#
    #= antiderivatives*and*would*require*thousands*of*changes*to*test*suite. =#
    SmartSimplify(u_) :=
      TimeConstrained(
        Module([v,w],
        v=Simplify(u);
        w=Factor(v);
        v=If(LeafCount(w)<LeafCount(v)#= -1 =#,w,v);
        v=If(Not(FalseQ(w=FractionalPowerOfSquareQ(v))) && FractionalPowerSubexpressionQ(u,w,expand(w)),SubstForExpn(v,w,expand(w)),v);
        v=FactorNumericGcd(v);
        TimeConstrained(FixSimplify(v),DOLLARTimeLimit/3,v)),
      DOLLARTimeLimit,u)


    SubstForExpn(u_,v_,w_) :=
      If(u===v,
        w,
      If(AtomQ(u),
        u,
      Map(MFunction(SubstForExpn(Symbol("#1"),v,w)),u)))


    #= ::Subsection::Closed:: =#
    #=Simp(expn)=#


    "Simp(u)*and*Simp(u,x)*simplifies*and*returns*u."
    function Simp end


    Simp((e_'*(a_+b_)^r_')^p_'*(c_+d_)^q_') :=
      With([u=Simplify((a+b)/(c+d))],
      If(IntegerQ(p) || GtQ(e,0) && GtQ(u,0) && GtQ(r,0),
        e^p*u^(p*r),
      e^IntPart(p)*u^(r*IntPart(p))*(e*(a+b)^r)^FracPart(p)/(c+d)^(r*FracPart(p)))) <--
    IntegerQ(r) && EqQ(p*r+q,0)


    Simp((g_'*(a_+b_)^s_')^p_'*(c_+d_)^q_'*(e_+f_)^r_') :=
      With([u=Simplify((a+b)/((c+d)*(e+f)))],
      If(IntegerQ(p),
        g^p*u^(p*s),
      If(GtQ(g,0) && GtQ(u,0) && (NeQ(g,1) || NeQ(u,1)),
        g^p*u^(p*s)*Simp(((c+d)^s*(e+f)^s)^p/((c+d)^(p*s)*(e+f)^(p*s))),
      If(GtQ(g,0) && EqQ(a,c^2) && EqQ(b,-d^2) && GtQ(c,0),
        g^p*Simp((c-d)^(p*s)/(e+f)^(p*s)),
      If(GtQ(g,0) && EqQ(a,e^2) && EqQ(b,-f^2) && GtQ(e,0),
        g^p*Simp((e-f)^(p*s)/(c+d)^(p*s)),
      g^IntPart(p)*u^(s*IntPart(p))*(g*(a+b)^s)^FracPart(p)/((c+d)^(s*FracPart(p))*(e+f)^(s*FracPart(p)))))))) <--
    IntegerQ(s) && EqQ(p*s+q,0) && EqQ(p*s+r,0)


    Simp((u_^q_'*v_^r_')^p_'*u_^pq_'*v_^pr_') :=
      If(IntegerQ(p),
        1,
      (u^q*v^r)^FracPart(p)/(u^(q*FracPart(p))*v^(r*FracPart(p)))) <--
    IntegersQ(q,r) && EqQ(pq+p*q,0) && EqQ(pr+p*r,0)


    Simp((u_*v_)^p_') :=
      If(IntegerQ(p) || GtQ(u,0) || GtQ(v,0),
        Simp(u^p)*Simp(v^p),
      (u*v)^p)


    Simp((a_+b_)^p_'*(c_+d_)^q_*(e_+f_)^q_) :=
      (a/c^2)^p*(c+d)^(p+q)*(e+f)^(p+q) <--
    IntegerQ(p) && EqQ(e,c) && EqQ(f,-d) && EqQ(b*c^2+a*d^2,0)


    Simp((a_+b_)^p_*(c_+d_)^p_) :=
      (a^2-b^2)^p <--
     EqQ(a,c) && EqQ(b,-d) && GtQ(a,0)


    Simp(u_) := Simplify(u)


    #= ::Subsection::Closed:: =#
    #=Simp(expn,var)=#


    Simp(u_,x_) :=
      TimeConstrained(NormalizeSumFactors(SimpHelp(u,x)),DOLLARTimeLimit,u)


    SimpHelp(ℯ^(u_'*(v_'*log(a_)+w_)),x_) :=
      a^(u*v)*SimpHelp(ℯ^(u*w),x)

    SimpHelp(u_,x_) :=
      If(AtomQ(u) || StopFunctionQ(u),
        u,
      If(FreeQ(u,x),
        With([v=SmartSimplify(u)],
        If(LeafCount(v)<=LeafCount(u),
          v,
        u)),
      If(ProductQ(u),
        If(EqQ(First(u),1/2) && MatchQ(Rest(u),a_'+n_*pi+b_'*v_ <-- FreeQ([a,b],x) && Not(FreeQ(v,x)) && EqQ(n^2,1/4)),
          If(MatchQ(Rest(u),n_*pi+b_'*v_ <-- FreeQ(b,x) && Not(FreeQ(v,x)) && EqQ(n^2,1/4)),
            Map(MFunction(1/2*Symbol("#1")),Rest(u)),
          If(MatchQ(Rest(u),m_*a_'+n_*pi+p_*b_'*v_ <-- FreeQ([a,b],x) && Not(FreeQ(v,x)) && IntegersQ(m/2,p/2)),
            Map(MFunction(1/2*Symbol("#1")),Rest(u)),
          u)),
        Module([v=FreeFactors(u,x),w=NonfreeFactors(u,x)],
        v=NumericFactor(v)*SmartSimplify(NonnumericFactors(v)*x^2)/x^2;
        w=If(ProductQ(w), Map(MFunction(SimpHelp(Symbol("#1"),x)),w), SimpHelp(w,x));
        w=FactorNumericGcd(w);
        v=MergeFactors(v,w);
        If(ProductQ(v),
          Map(MFunction(SimpFixFactor(Symbol("#1"),x)),v),
        v))),
      If(SumQ(u),
        If(MatchQ(u,a_'+n_*pi+b_'*x <-- FreeQ([a,b],x) && EqQ(n^2,1/16)),
          u,
        If(PolynomialQ(u,x) && Exponent(u,x)<=0,
          SimpHelp(Coefficient(u,x,0),x),
        If(PolynomialQ(u,x) && Exponent(u,x)==1 && Coefficient(u,x,0)===0,
          SimpHelp(Coefficient(u,x,1),x)*x,
        Module([v=0,w=0],
        Scan(MFunction(If(FreeQ(Symbol("#1"),x),v=Symbol("#1")+v,w=Symbol("#1")+w)),u);
        v=SmartSimplify(v);
        w=If(SumQ(w), Map(MFunction(SimpHelp(Symbol("#1"),x)),w), SimpHelp(w,x));
        v+w)))),
      If(TrigQ(u),
        With([v=SimpHelp(Part(u, 1),x)],
        If(LinearQ(v,x) && MatchQ(Coefficient(v,x,0),m_'*(n_'*pi+r_')+s_' <-- RationalQ(m,n)),
          NormalizeTrig(Head(u),Coefficient(v,x,0),Coefficient(v,x,1),x),
        Head(u)(v))),
      If(HyperbolicQ(u),
        With([v=SimpHelp(Part(u, 1),x)],
        If(LinearQ(v,x) && MatchQ(Coefficient(v,x,0),m_'*(n_'*Complex(0,nz_)*pi+r_')+s_' <-- RationalQ(m,n,nz)),
          NormalizeHyperbolic(Head(u),Coefficient(v,x,0),Coefficient(v,x,1),x),
        Head(u)(v))),
      Map(MFunction(SimpHelp(Symbol("#1"),x)),u)))))))


    NormalizeTrig(func_,m_'*(n_'*pi+r_')+s_',b_,x_) :=
      If(m*n==1/4 && NegQ(b),
        Switch(func,
    	  sin, cos(pi/4-m*r-s-b*x),        #= sin(pi/4-z) == cos(pi/4+z) =#
    	  cos, sin(pi/4-m*r-s-b*x),        #= cos(pi/4-z) == sin(pi/4+z) =#
    	  tan, cot(pi/4-m*r-s-b*x),        #= tan(pi/4-z) == cot(pi/4+z) =#
    	  cot, tan(pi/4-m*r-s-b*x),        #= cot(pi/4-z) == tan(pi/4+z) =#
    	  sec, csc(pi/4-m*r-s-b*x),        #= sec(pi/4-z) == csc(pi/4+z) =#
    	  csc, sec(pi/4-m*r-s-b*x)),       #= csc(pi/4-z) == sec(pi/4+z) =#
      If(m*n==-1/4,
        If(PosQ(b),
          Switch(func,
    	    sin, -cos(pi/4+m*r+s+b*x),     #= sin(-pi/4+z) == -cos(pi/4+z) =#
    	    cos, sin(pi/4+m*r+s+b*x),      #= cos(-pi/4+z) == sin(pi/4+z) =#
    	    tan, -cot(pi/4+m*r+s+b*x),     #= tan(-pi/4+z) == -cot(pi/4+z) =#
    	    cot, -tan(pi/4+m*r+s+b*x),     #= cot(-pi/4+z) == -tan(pi/4+z) =#
    	    sec, csc(pi/4+m*r+s+b*x),      #= sec(-pi/4+z) == csc(pi/4+z) =#
    	    csc, -sec(pi/4+m*r+s+b*x)),    #= csc(-pi/4+z) == -sec(pi/4+z) =#
        Switch(func,
    	  sin, -sin(pi/4-m*r-s-b*x),       #= sin(-pi/4-z) == -sin(pi/4+z) =#
    	  cos, cos(pi/4-m*r-s-b*x),        #= cos(-pi/4-z) == cos(pi/4+z) =#
    	  tan, -tan(pi/4-m*r-s-b*x),       #= tan(-pi/4-z) == -tan(pi/4+z) =#
    	  cot, -cot(pi/4-m*r-s-b*x),       #= cot(-pi/4-z) == -cot(pi/4+z) =#
    	  sec, sec(pi/4-m*r-s-b*x),        #= sec(-pi/4-z) == sec(pi/4+z) =#
    	  csc, -csc(pi/4-m*r-s-b*x))),     #= csc(-pi/4-z) == -csc(pi/4+z) =#
      func(m*n*pi+m*r+s+b*x))) <--
    RationalQ(m,n)


    NormalizeHyperbolic(func_,m_'*(n_'*Complex(0,nz_)*pi+r_')+s_',b_,x_) :=
      If(m*n*nz==1/4 && NegQ(b),
        Switch(func,
    	  sinh, im*cosh(im*pi/4-m*r-s-b*x),        #= sinh(im*pi/4-z) == im*cosh(im*pi/4+z) =#
    	  cosh, -im*sinh(im*pi/4-m*r-s-b*x),       #= cosh(im*pi/4-z) == -im*sinh(im*pi/4+z) =#
    	  tanh, -coth(im*pi/4-m*r-s-b*x),         #= tanh(im*pi/4-z) == -coth(im*pi/4+z) =#
    	  coth, -tanh(im*pi/4-m*r-s-b*x),         #= coth(im*pi/4-z) == -tanh(im*pi/4+z) =#
    	  sech, im*csch(im*pi/4-m*r-s-b*x),        #= sech(im*pi/4-z) == im*csch(im*pi/4+z) =#
    	  csch, -im*sech(im*pi/4-m*r-s-b*x)),      #= csch(im*pi/4-z) == -im*sech(im*pi/4+z) =#
      If(m*n*nz==-1/4,
        If(PosQ(b),
          Switch(func,
    	    sinh, -im*cosh(im*pi/4+m*r+s+b*x),     #= sinh(-im*pi/4+z) == -im*cosh(im*pi/4+z) =#
    	    cosh, -im*sinh(im*pi/4+m*r+s+b*x),     #= cosh(-im*pi/4+z) == -im*sinh(im*pi/4+z) =#
    	    tanh, coth(im*pi/4+m*r+s+b*x),        #= tanh(-im*pi/4+z) == coth(im*pi/4+z) =#
    	    coth, tanh(im*pi/4+m*r+s+b*x),        #= coth(-im*pi/4+z) == tanh(im*pi/4+z) =#
    	    sech, im*csch(im*pi/4+m*r+s+b*x),      #= sech(-im*pi/4+z) == im*csch(im*pi/4+z) =#
    	    csch, im*sech(im*pi/4+m*r+s+b*x)),     #= csch(-im*pi/4+z) == im*sech(im*pi/4+z) =#
        Switch(func,
    	  sinh, -sinh(im*pi/4-m*r-s-b*x),         #= sinh(-im*pi/4-z) == -sinh(im*pi/4+z) =#
    	  cosh, cosh(im*pi/4-m*r-s-b*x),          #= cosh(-im*pi/4-z) == cosh(im*pi/4+z) =#
    	  tanh, -tanh(im*pi/4-m*r-s-b*x),         #= tanh(-im*pi/4-z) == -tanh(im*pi/4+z) =#
    	  coth, -coth(im*pi/4-m*r-s-b*x),         #= coth(-im*pi/4-z) == -coth(im*pi/4+z) =#
    	  sech, sech(im*pi/4-m*r-s-b*x),          #= sech(-im*pi/4-z) == sech(im*pi/4+z) =#
    	  csch, -csch(im*pi/4-m*r-s-b*x))),       #= csch(-im*pi/4-z) == -csch(im*pi/4+z) =#
      func(m*n*nz*im*pi+m*r+s+b*x))) <--
    RationalQ(m,n,nz)


    #= ::Subsection::Closed:: =#
    #=FractionalPowerOfSquareQ=#


    #= If*a*subexpression*of*u*is*of*the*form*((v+w)^2)^n*where*n*is*a*fraction, =#
    #= FractionalPowerOfSquareQ(u)*returns*(v+w)^2; else*it*returns*false. =#
    FractionalPowerOfSquareQ(u_) :=
      If(AtomQ(u),
        false,
      If(FractionalPowerQ(u) && MatchQ(Part(u, 1), a_'*(b_+c_)^2 <-- NonsumQ(a)),
        Part(u, 1),
      Module([tmp],
      Catch(
        Scan(MFunction(If(Not(FalseQ(tmp=FractionalPowerOfSquareQ(Symbol("#1")))),Throw(tmp))),u);
        false))))


    #= If*a*subexpression*of*u*is*of*the*form*w^n*where*n*is*a*fraction*but*not*equal*to*v, =#
    #= FractionalPowerSubexpressionQ(u,v,w)*returns*true; else*it*returns*false. =#
    FractionalPowerSubexpressionQ(u_,v_,w_) :=
      If(AtomQ(u),
        false,
      If(FractionalPowerQ(u) && GtQ(Part(u, 1)/w,0),
        Not(Part(u, 1)===v) && LeafCount(w)<3*LeafCount(v),
      Catch(Scan(MFunction(If(FractionalPowerSubexpressionQ(Symbol("#1"),v,w),Throw(true))),u); false)))


    #= ::Subsection::Closed:: =#
    #=FixSimplify=#


    Clear(FixSimplify)


    #= ::Item:: =#
    #=Basis: If  n\(Element)\(DoubleStruckCapitalZ), then*u*im*(v*im+w)^n==(-1)^((n+1)/2)*u*(v-im*w)^n=#


    FixSimplify(u_'*Complex(0,a_)*(v_'*Complex(0,b_)+w_)^n_') :=
      (-1)^((n+1)/2)*a*u*FixSimplify((b*v-Complex(0,1)*w)^n) <--
    OddQ(n)


    #= ::Item:: =#
    #=Basis: If  u>0 \(And)*v>0, let*g=GCD(m,n), then*u^m*v^n==((u^(m/g)*v^(n/g)))^g=#


    FixSimplify(w_'*u_^m_'*v_^n_) :=
      With([z=Simplify(u^(m/GCD(m,n))*v^(n/GCD(m,n)))],
      FixSimplify(w*z^GCD(m,n))<--
     AbsurdNumberQ(z) || SqrtNumberSumQ(z)) <--
    RationalQ(m) && FractionQ(n) && SqrtNumberSumQ(u) && SqrtNumberSumQ(v) && GtQ(u,0) && GtQ(v,0)


    FixSimplify(w_'*u_^m_'*v_^n_) :=
      With([z=Simplify(u^(m/GCD(m,-n))*v^(n/GCD(m,-n)))],
      FixSimplify(w*z^GCD(m,-n))<--
     AbsurdNumberQ(z) || SqrtNumberSumQ(z)) <--
    RationalQ(m) && FractionQ(n) && SqrtNumberSumQ(u) && SqrtNumberSumQ(1/v) && GtQ(u,0) && GtQ(v,0)


    #= ::Item:: =#
    #=Basis: If  m\(Element)\(DoubleStruckCapitalZ) \(And)*u<0 \(And)*v>0, then*u^m*v^n==-(((-u))^(m/n)*v)^n=#


    FixSimplify(w_'*u_^m_'*v_^n_) :=
      With([z=Simplify((-u)^(m/GCD(m,n))*v^(n/GCD(m,n)))],
      FixSimplify(-w*z^GCD(m,n))<--
     AbsurdNumberQ(z) || SqrtNumberSumQ(z)) <--
    IntegerQ(m) && FractionQ(n) && SqrtNumberSumQ(u) && SqrtNumberSumQ(v) && LtQ(u,0) && GtQ(v,0)


    FixSimplify(w_'*u_^m_'*v_^n_) :=
      With([z=Simplify((-u)^(m/GCD(m,-n))*v^(n/GCD(m,-n)))],
      FixSimplify(-w*z^GCD(m,-n))<--
     AbsurdNumberQ(z) || SqrtNumberSumQ(z)) <--
    IntegerQ(m) && FractionQ(n) && SqrtNumberSumQ(u) && SqrtNumberSumQ(1/v) && LtQ(u,0) && GtQ(v,0)


    #= ::Item:: =#
    #=Basis: If  p\(Element)\(DoubleStruckCapitalZ) \(Or)*a>0, then*a^m*(u+v)^p==(a^(m/p)*u+a^(m/p)*v)^p=#


    FixSimplify(w_'*a_^m_*(u_+b_^n_*v_')^p_') :=
      With([c=Simplify(a^(m/p)*b^n)],
      FixSimplify(w*(a^(m/p)*u+c*v)^p) <--
     RationalQ(c)) <--
    RationalQ(a,b,m,n) && a>0 && b>0 && IGtQ(p,0)


    #= ::Item:: =#
    #=Basis: If  p\(Element)\(DoubleStruckCapitalZ), then*a^m*(a^n*u+(-a)^p*v)==a^(m+n)*(u+(-1)^p*a^(p-n)*v)=#


    FixSimplify(w_'*a_^m_'*(a_^n_*u_'+b_^p_'*v_')) :=
      With([z=w*a^(m+n)*(u+(-1)^p*a^(p-n)*v)],
      FixSimplify(z) <--
     Not(MatchQ(z, ww_'*aa_^mm_*(uu_+bb_^nn_*vv_') <--
       RationalQ(aa,bb,mm,nn) && aa>0 && bb>0 && RationalQ(Simplify(aa^mm*bb^nn))))) <--
    RationalQ(m) && FractionQ(n) && IntegerQ(p) && p-n>0 && a+b===0


    #= ::Item:: =#
    #=Basis: If  m\(Element)\(DoubleStruckCapitalZ) \(And)*b*c-a*d==0, then*(a+b)^m==(b/d)^m*(c+d)^m=#


    FixSimplify(w_'*(a_+b_)^m_'*(c_+d_)^n_) :=
      With([q=Simplify(b/d)],
      FixSimplify(w*q^m*(c+d)^(m+n)) <--
     FreeQ(q,Plus)) <--
    IntegerQ(m) && Not(IntegerQ(n)) && EqQ(b*c-a*d,0)


    #= ::Item:: =#
    #=Basis: If  t\(Element)\(DoubleStruckCapitalZ), then*(a^m*u+a^n*v+...)^t==a^(m*t)*(u+a^(n-m)*v+...)^t=#


    FixSimplify(w_'*(a_^m_'*u_'+a_^n_'*v_')^t_') :=
      FixSimplify(a^(m*t)*w*(u+a^(n-m)*v)^t) <--
    Not(RationalQ(a)) && IntegerQ(t) && RationalQ(m,n) && 0<m<=n

    FixSimplify(w_'*(a_^m_'*u_'+a_^n_'*v_'+a_^p_'*z_')^t_') :=
      FixSimplify(a^(m*t)*w*(u+a^(n-m)*v+a^(p-m)*z)^t) <--
    Not(RationalQ(a)) && IntegerQ(t) && RationalQ(m,n,p) && 0<m<=n<=p

    FixSimplify(w_'*(a_^m_'*u_'+a_^n_'*v_'+a_^p_'*z_'+a_^q_'*y_')^t_') :=
      FixSimplify(a^(m*t)*w*(u+a^(n-m)*v+a^(p-m)*z+a^(q-m)*y)^t) <--
    Not(RationalQ(a)) && IntegerQ(t) && RationalQ(m,n,p) && 0<m<=n<=p<=q


    #= ::Item:: =#
    #=Basis: a*sqrt(v)+b*sqrt(v)+...==(a+b+...)sqrt(v)=#


    FixSimplify(w_'*(u_'+a_'*sqrt(v_Plus)+b_'*sqrt(v_)+c_'*sqrt(v_)+d_'*sqrt(v_))) :=
      FixSimplify(w*(u+FixSimplify(a+b+c+d)*sqrt(v)))

    FixSimplify(w_'*(u_'+a_'*sqrt(v_Plus)+b_'*sqrt(v_)+c_'*sqrt(v_))) :=
      FixSimplify(w*(u+FixSimplify(a+b+c)*sqrt(v)))

    FixSimplify(w_'*(u_'+a_'*sqrt(v_Plus)+b_'*sqrt(v_))) :=
      FixSimplify(w*(u+FixSimplify(a+b)*sqrt(v)))


    #= ::Item:: =#
    #=Basis: If  a>0, then*a^(m/4)*sqrt(b(c+d*sqrt(a)))==sqrt(b(c*a^(m/2)+d*a^((m+1)/2)))=#


    #= FixSimplify(u_'*a_^m_*sqrt(b_'*(c_+d_'*sqrt(a_)))) :=
      sqrt(Together(b*(c*a^(2*m)+d*a^(2*m+1/2))))*FixSimplify(u) <--
    RationalQ(a,b,c,d,m) && a>0 && Denominator(m)==4

    FixSimplify(u_'*a_^m_/sqrt(b_'*(c_+d_'*sqrt(a_)))) :=
      FixSimplify(u)/sqrt(Together(b*(c/a^(2*m)+d/a^(2*m-1/2)))) <--
    RationalQ(a,b,c,d,m) && a>0 && Denominator(m)==4 =#


    #= ::Item:: =#
    #=Basis: If  w^-n==v, then*v^m*w^n==v^(m-1)=#


    FixSimplify(u_'*v_^m_*w_^n_) :=
      -FixSimplify(u*v^(m-1)) <--
    RationalQ(m) && Not(RationalQ(w)) && FractionQ(n) && n<0 && EqQ(v+w^(-n),0)


    #= ::Item:: =#
    #=Basis: If  n\(Element)\(DoubleStruckCapitalZ), then*v^m*(-v)^n==(-1)^n*v^(m+n)=#


    FixSimplify(u_'*v_^m_*w_^n_') :=
      (-1)^(n)*FixSimplify(u*v^(m+n)) <--
    RationalQ(m) && Not(RationalQ(w)) && IntegerQ(n) && EqQ(v+w,0)


    #= ::Item:: =#
    #=Basis: If  n/p\(Element)\(DoubleStruckCapitalZ), then*(-v^p)^m*v^n==(-1)^(n/p)*(-v^p)^(m+n/p)=#


    FixSimplify(u_'*(-v_^p_')^m_*w_^n_') :=
      (-1)^(n/p)*FixSimplify(u*(-v^p)^(m+n/p)) <--
    RationalQ(m) && Not(RationalQ(w)) && IntegerQ(n/p) && EqQ(v-w,0)


    #= ::Item:: =#
    #=Basis: If  (n|n/p)\(Element)\(DoubleStruckCapitalZ), then*(-v^p)^m*(-v)^n==(-1)^(n+n/p)*(-v^p)^(m+n/p)=#


    FixSimplify(u_'*(-v_^p_')^m_*w_^n_') :=
      (-1)^(n+n/p)*FixSimplify(u*(-v^p)^(m+n/p)) <--
    RationalQ(m) && Not(RationalQ(w)) && IntegersQ(n,n/p) && EqQ(v+w,0)


    #= ::Item:: =#
    #=Basis: (a-b)*(a+b) == a^2-b^2=#


    FixSimplify(u_'*(a_-b_)^m_'*(a_+b_)^m_') :=
      u*(a^2-b^2)^m <--
    IntegerQ(m) && AtomQ(a) && AtomQ(b)


    FixSimplify(u_'*(c_Symbol*d_Symbol^2-e_Symbol*(b_Symbol*d_Symbol-a_Symbol*e_Symbol))^m_') :=
      u*(c*d^2-b*d*e+a*e^2)^m <--
    RationalQ(m) && OrderedQ([a,b,c,d,e])

    FixSimplify(u_'*(c_Symbol*d_Symbol^2+e_Symbol*(-b_Symbol*d_Symbol+a_Symbol*e_Symbol))^m_') :=
      u*(c*d^2-b*d*e+a*e^2)^m <--
    RationalQ(m) && OrderedQ([a,b,c,d,e])

    FixSimplify(u_'*(-c_Symbol*d_Symbol^2+e_Symbol*(b_Symbol*d_Symbol-a_Symbol*e_Symbol))^m_') :=
      (-1)^m*u*(c*d^2-b*d*e+a*e^2)^m <--
    IntegerQ(m) && OrderedQ([a,b,c,d,e])

    FixSimplify(u_'*(-c_Symbol*d_Symbol^2-e_Symbol*(-b_Symbol*d_Symbol+a_Symbol*e_Symbol))^m_') :=
      (-1)^m*u*(c*d^2-b*d*e+a*e^2)^m <--
    RationalQ(m) && OrderedQ([a,b,c,d,e])


    FixSimplify(u_) := u


    #= ::Subsection::Closed:: =#
    #=SimpFixFactor=#


    #= SimpFixFactor((a_'*c_ + b_'*c_)^p_',x_) :=
      c^p*SimpFixFactor((a+b)^p,x) <--
    FreeQ(c,x) && IntegerQ(p) && c^p!==-1 =#

    SimpFixFactor((a_'*Complex(0,c_) + b_'*Complex(0,d_))^p_',x_) :=
      im^p*SimpFixFactor((a*c+b*d)^p,x) <--
    IntegerQ(p)

    SimpFixFactor((a_'*Complex(0,d_) + b_'*Complex(0,e_)+ c_'*Complex(0,f_))^p_',x_) :=
      im^p*SimpFixFactor((a*d+b*e+c*f)^p,x) <--
    IntegerQ(p)


    SimpFixFactor((a_'*c_^r_ + b_'*x_^n_')^p_',x_) :=
      c^(p*r)*SimpFixFactor((a+b/c^r*x^n)^p,x) <--
    FreeQ([a,b,c],x) && IntegersQ(n,p) && AtomQ(c) && RationalQ(r) && r<0

    SimpFixFactor((a_' + b_'*c_^r_*x_^n_')^p_',x_) :=
      c^(p*r)*SimpFixFactor((a/c^r+b*x^n)^p,x) <--
    FreeQ([a,b,c],x) && IntegersQ(n,p) && AtomQ(c) && RationalQ(r) && r<0


    SimpFixFactor((a_'*c_^s_' + b_'*c_^r_'*x_^n_')^p_',x_) :=
      c^(p*s)*SimpFixFactor((a+b*c^(r-s)*x^n)^p,x) <--
    FreeQ([a,b,c],x) && IntegersQ(n,p) && RationalQ(s,r) && 0<s<=r && c^(p*s)!==-1

    SimpFixFactor((a_'*c_^s_' + b_'*c_^r_'*x_^n_')^p_',x_) :=
      c^(p*r)*SimpFixFactor((a*c^(s-r)+b*x^n)^p,x) <--
    FreeQ([a,b,c],x) && IntegersQ(n,p) && RationalQ(s,r) && 0<r<s && c^(p*r)!==-1

    SimpFixFactor(u_,x_) := u


    #= ::Subsection::Closed:: =#
    #=FactorNumericGcd=#


    #= FactorNumericGcd(u)*returns*u*with*the*gcd*of*the*numeric*coefficients*of*terms*of*sums*factored*out. =#
    FactorNumericGcd(u_) :=
      If(PowerQ(u) && RationalQ(Part(u, 2)),
        FactorNumericGcd(Part(u, 1))^Part(u, 2),
      If(ProductQ(u),
        Map(FactorNumericGcd,u),
      If(SumQ(u),
        With([g=Apply(GCD,Map(NumericFactor,Apply(List,u)))],
        g*Map(MFunction(Symbol("#1")/g),u)),
      u)))


    #= ::Subsection::Closed:: =#
    #=MergeFactors=#


    #= MergeFactors(u,v)*returns*the*product*of*u*and*v, but*with*the*mergeable*factors*of*u*merged*into*v. =#
    MergeFactors(u_,v_) :=
      If(ProductQ(u),
        MergeFactors(Rest(u),MergeFactors(First(u),v)),
      If(PowerQ(u),
        If(MergeableFactorQ(Part(u, 1),Part(u, 2),v),
          MergeFactor(Part(u, 1),Part(u, 2),v),
        If(RationalQ(Part(u, 2)) && Part(u, 2)<-1 && MergeableFactorQ(Part(u, 1),-1,v),
          MergeFactors(Part(u, 1)^(Part(u, 2)+1),MergeFactor(Part(u, 1),-1,v)),
        u*v)),
      If(MergeableFactorQ(u,1,v),
        MergeFactor(u,1,v),
      u*v)))


    #= If*MergeableFactorQ(bas,deg,v), MergeFactor(bas,deg,v)*return*the*product*of*bas^deg*and*v,
    	but*with*bas^deg*merged*into*the*factor*of*v*whose*base*equals*bas. =#
    MergeFactor(bas_,deg_,v_) :=
      If(bas===v,
        bas^(deg+1),
      If(PowerQ(v),
        If(bas===Part(v, 1),
          bas^(deg+Part(v, 2)),
        MergeFactor(bas,deg/Part(v, 2),Part(v, 1))^Part(v, 2)),
      If(ProductQ(v),
        If(MergeableFactorQ(bas,deg,First(v)),
          MergeFactor(bas,deg,First(v))*Rest(v),
        First(v)*MergeFactor(bas,deg,Rest(v))),
      MergeFactor(bas,deg,First(v)) + MergeFactor(bas,deg,Rest(v)))))


    #= MergeableFactorQ(bas,deg,v)*returns*true*iff*bas*equals*the*base*of*a*factor*of*v*or*bas*is*a*factor*of*every*term*of*v. =#
    MergeableFactorQ(bas_,deg_,v_) :=
      If(bas===v,
        RationalQ(deg+1) && (deg+1>=0 || RationalQ(deg) && deg>0),
      If(PowerQ(v),
        If(bas===Part(v, 1),
          RationalQ(deg+Part(v, 2)) && (deg+Part(v, 2)>=0 || RationalQ(deg) && deg>0),
        SumQ(Part(v, 1)) && IntegerQ(Part(v, 2)) && (Not(IntegerQ(deg)) || IntegerQ(deg/Part(v, 2))) && MergeableFactorQ(bas,deg/Part(v, 2),Part(v, 1))),
      If(ProductQ(v),
        MergeableFactorQ(bas,deg,First(v)) || MergeableFactorQ(bas,deg,Rest(v)),
      SumQ(v) && MergeableFactorQ(bas,deg,First(v)) && MergeableFactorQ(bas,deg,Rest(v)))))


    #= ::Subsection::Closed:: =#
    #=TrigSimplify=#


    #= TrigSimplifyQ(u)*returns*true*if*TrigSimplify(u)*actually*simplifies*u; else*false. =#
    TrigSimplifyQ(u_) :=
      ActivateTrig(u)!==TrigSimplify(u)


    #= TrigSimplify(u)*returns*a*bottom-up*trig*simplification*of*u. =#
    TrigSimplify(u_) :=
      ActivateTrig(TrigSimplifyRecur(u))


    TrigSimplifyRecur(u_) :=
      If(AtomQ(u),
        u,
      If(Head(u)===If,
        u,
      TrigSimplifyAux(Map(TrigSimplifyRecur,u))))

    Clear(TrigSimplifyAux)


    #= Basis: a*z^m+b*z^n == z^m*(a+b*z^(n-m)) =#
    TrigSimplifyAux(u_'*(a_'*v_^m_'+b_'*v_^n_')^p_) :=
      u*v^(m*p)*TrigSimplifyAux(a+b*v^(n-m))^p <--
    InertTrigQ(v) && IntegerQ(p) && RationalQ(m,n) && m<n


    #= ::Subsubsection:: =#
    #=Basis: sin(z)^2+cos(z)^2==1=#


    #= ::Subsubsection:: =#
    #=Basis: sec(z)^2-tan(z)^2==1=#


    #= ::Subsubsection::Closed:: =#
    #=Basis: csc(z)^2-cot(z)^2==1=#


    TrigSimplifyAux(a_'*cos(u_)^2+b_'*sin(u_)^2+v_') := a+v <-- a===b

    TrigSimplifyAux(a_'*sec(u_)^2+b_'*tan(u_)^2+v_') := a+v <-- a===-b

    TrigSimplifyAux(a_'*csc(u_)^2+b_'*cot(u_)^2+v_') := a+v <-- a===-b


    #= ::Subsubsection::Closed:: =#
    #=Basis: a*cos(z)^2==a-a*sin(z)^2=#


    TrigSimplifyAux((a_'*cos(u_)^2+b_'*sin(u_)^2+v_')^n_) :=
      ((b-a)*sin(u)^2+a+v)^n


    #= Basis: 1-sin(z)^2 == cos(z)^2 =#
    TrigSimplifyAux(u_+v_'*sin(z_)^2+w_') := u*cos(z)^2+w <-- u===-v

    #= Basis: 1-cos(z)^2 == sin(z)^2 =#
    TrigSimplifyAux(u_+v_'*cos(z_)^2+w_') := u*sin(z)^2+w <-- u===-v

    #= Basis: 1+tan(z)^2 == sec(z)^2 =#
    TrigSimplifyAux(u_+v_'*tan(z_)^2+w_') := u*sec(z)^2+w <-- u===v

    #= Basis: 1+cot(z)^2 == csc(z)^2 =#
    TrigSimplifyAux(u_+v_'*cot(z_)^2+w_') := u*csc(z)^2+w <-- u===v

    #= Basis: -1+sec(z)^2 == tan(z)^2 =#
    TrigSimplifyAux(u_+v_'*sec(z_)^2+w_') := v*tan(z)^2+w <-- u===-v

    #= Basis: -1+csc(z)^2 == cot(z)^2 =#
    TrigSimplifyAux(u_+v_'*csc(z_)^2+w_') := v*cot(z)^2+w <-- u===-v


    #= Basis: If*a^2-b^2==0, sin(z)^2/(a+b*cos(z)) == 1/a-cos(z)/b =#
    TrigSimplifyAux(u_'*sin(v_)^2/(a_+b_'*cos(v_))) := u*(1/a - cos(v)/b) <-- EqQ(a^2-b^2,0)

    #= Basis: If*a^2-b^2==0, cos(z)^2/(a+b*sin(z)) == 1/a-sin(z)/b =#
    TrigSimplifyAux(u_'*cos(v_)^2/(a_+b_'*sin(v_))) := u*(1/a - sin(v)/b) <-- EqQ(a^2-b^2,0)


    #= Basis: If*n*is*an*integer, tan(z)^n/(a+b*tan(z)^n) == 1/(b+a*cot(z)^n) =#
    TrigSimplifyAux(u_'*tan(v_)^n_'/(a_+b_'*tan(v_)^n_')) := u/(b+a*cot(v)^n) <-- IGtQ(n,0) && NonsumQ(a)

    #= Basis: If*n*is*an*integer, cot(z)^n/(a+b*cot(z)^n) == 1/(b+a*tan(z)^n) =#
    TrigSimplifyAux(u_'*cot(v_)^n_'/(a_+b_'*cot(v_)^n_')) := u/(b+a*tan(v)^n) <-- IGtQ(n,0) && NonsumQ(a)

    #= Basis: If*n*is*an*integer, sec(z)^n/(a+b*sec(z)^n) == 1/(b+a*cos(z)^n) =#
    TrigSimplifyAux(u_'*sec(v_)^n_'/(a_+b_'*sec(v_)^n_')) := u/(b+a*cos(v)^n) <-- IGtQ(n,0) && NonsumQ(a)

    #= Basis: If*n*is*an*integer, csc(z)^n/(a+b*csc(z)^n) == 1/(b+a*sin(z)^n) =#
    TrigSimplifyAux(u_'*csc(v_)^n_'/(a_+b_'*csc(v_)^n_')) := u/(b+a*sin(v)^n) <-- IGtQ(n,0) && NonsumQ(a)


    #= Basis: If*n*is*an*integer, tan(z)^n/(a+b*sec(z)^n) == sin(z)^n/(b+a*cos(z)^n) =#
    TrigSimplifyAux(u_'*tan(v_)^n_'/(a_+b_'*sec(v_)^n_')) := u*sin(v)^n/(b+a*cos(v)^n) <-- IGtQ(n,0) && NonsumQ(a)

    #= Basis: If*n*is*an*integer, cot(z)^n/(a+b*csc(z)^n) == cos(z)^n/(b+a*sin(z)^n) =#
    TrigSimplifyAux(u_'*cot(v_)^n_'/(a_+b_'*csc(v_)^n_')) := u*cos(v)^n/(b+a*sin(v)^n) <-- IGtQ(n,0) && NonsumQ(a)


    #= ::Subsubsection::Closed:: =#
    #=Basis: a*sec(z)+b*tan(z)==sec(z)(a+b*sin(z))=#


    TrigSimplifyAux(u_'*(a_'*sec(v_)^n_'+b_'*tan(v_)^n_')^p_') :=
      u*sec(v)^(n*p)*(a+b*sin(v)^n)^p <--
    IntegersQ(n,p)

    TrigSimplifyAux(u_'*(a_'*csc(v_)^n_'+b_'*cot(v_)^n_')^p_') :=
      u*csc(v)^(n*p)*(a+b*cos(v)^n)^p <--
    IntegersQ(n,p)


    #= ::Subsubsection::Closed:: =#
    #=Basis: a*tan(z)+b*sin(z)==tan(z)(a+b*cos(z))=#


    TrigSimplifyAux(u_'*(a_'*tan(v_)^n_'+b_'*sin(v_)^n_')^p_') :=
      u*tan(v)^(n*p)*(a+b*cos(v)^n)^p <--
    IntegersQ(n,p)

    TrigSimplifyAux(u_'*(a_'*cot(v_)^n_'+b_'*cos(v_)^n_')^p_') :=
      u*cot(v)^(n*p)*(a+b*sin(v)^n)^p <--
    IntegersQ(n,p)


    #= ::Subsubsection:: =#
    #=Basis: a+b*tan(z)+c*sec(z)==(c+b*sin(z)+a*cos(z))/cos(z)=#


    #= ::Subsubsection:: =#
    #=Basis: a+b*tan(z)+c*sec(z)==sec(z)*(c+b*sin(z)+a*cos(z))=#


    #= ::Subsubsection:: =#
    #=Basis: a+b*cot(z)+c*csc(z)==(c+b*cos(z)+a*sin(z))/sin(z)=#


    #= ::Subsubsection::Closed:: =#
    #=Basis: a+b*cot(z)+c*csc(z)==csc(z)*(c+b*cos(z)+a*sin(z))=#


    TrigSimplifyAux(u_'*cos(v_)^m_'*(a_'+b_'*tan(v_)^n_'+c_'*sec(v_)^n_')^p_') :=
      u*cos(v)^(m-n*p)*(c+b*sin(v)^n+a*cos(v)^n)^p <--
    IntegersQ(m,n,p)

    TrigSimplifyAux(u_'*sec(v_)^m_'*(a_'+b_'*tan(v_)^n_'+c_'*sec(v_)^n_')^p_') :=
      u*sec(v)^(m+n*p)*(c+b*sin(v)^n+a*cos(v)^n)^p <--
    IntegersQ(m,n,p)

    TrigSimplifyAux(u_'*sin(v_)^m_'*(a_'+b_'*cot(v_)^n_'+c_'*csc(v_)^n_')^p_') :=
      u*sin(v)^(m-n*p)*(c+b*cos(v)^n+a*sin(v)^n)^p <--
    IntegersQ(m,n,p)

    TrigSimplifyAux(u_'*csc(v_)^m_'*(a_'+b_'*cot(v_)^n_'+c_'*csc(v_)^n_')^p_') :=
      u*csc(v)^(m+n*p)*(c+b*cos(v)^n+a*sin(v)^n)^p <--
    IntegersQ(m,n,p)


    #= ::Subsubsection:: =#
    #=Basis: If*n\(Element)\(DoubleStruckCapitalZ), then  a*csc(z)^m+b*sin(z)^n==(a+b*sin(z)^(m+n))/sin(z)^m=#


    #= ::Subsubsection::Closed:: =#
    #=Basis: If*n\(Element)\(DoubleStruckCapitalZ), then  a*sec(z)^m+b*cos(z)^n==(a+b*cos(z)^(m+n))/cos(z)^m=#


    TrigSimplifyAux(u_'*(a_'*csc(v_)^m_'+b_'*sin(v_)^n_')^p_') :=
      If(EqQ(m+n-2,0) && EqQ(a+b,0),
        u*(a*cos(v)^2/sin(v)^m)^p,
      u*((a+b*sin(v)^(m+n))/sin(v)^m)^p) <--
    IntegersQ(m,n)

    TrigSimplifyAux(u_'*(a_'*sec(v_)^m_'+b_'*cos(v_)^n_')^p_') :=
      If(EqQ(m+n-2,0) && EqQ(a+b,0),
        u*(a*sin(v)^2/cos(v)^m)^p,
      u*((a+b*cos(v)^(m+n))/cos(v)^m)^p) <--
    IntegersQ(m,n)


    #= #= Basis: csc(z)+cot(z) == cot(z/2) =#
    TrigSimplifyAux((a_'*csc(v_)+b_'*cot(v_))^n_) := a^n*cot(v/2)^n <-- EvenQ(n) && EqQ(a-b,0)

    #= Basis: csc(z)-cot(z) == tan(z/2) =#
    TrigSimplifyAux((a_'*csc(v_)+b_'*cot(v_))^n_) := a^n*tan(v/2)^n <-- EvenQ(n) && EqQ(a+b,0) =#


    #= #= Basis: sin(z)*(a+b*cot(z)) == a*sin(z) + b*cos(z) =#
    #= TrigSimplifyAux(u_*sin(v_)^m_'*(a_'+b_'*cot(v_)^2)^p_') :=
      u*(b*cos(v)^2+a*sin(v)^2)^p <--
    IntegersQ(m,p) && m==2*p =#

    #= Basis: a+b*cot(z) == (b*cos(z)+a*sin(z))/sin(z) =#
    TrigSimplifyAux(u_'*sin(v_)^m_'*(a_'+b_'*cot(v_)^n_')^p_') :=
      u*sin(v)^(m-n*p)*(b*cos(v)^n+a*sin(v)^n)^p <--
    IntegersQ(m,n,p)

    #= Basis: cos(z)*(a+b*tan(z)) == a*cos(z) + b*sin(z) =#
    #= TrigSimplifyAux(u_*cos(v_)^m_'*(a_'+b_'*tan(v_)^2)^p_') :=
      u*(b*sin(v)^2+a*cos(v)^2)^p <--
    IntegersQ(m,p) && m==2*p =#

    #= Basis: a+b*tan(z) == (b*sin(z)+a*cos(z))/cos(z) =#
    TrigSimplifyAux(u_'*cos(v_)^m_'*(a_'+b_'*tan(v_)^n_')^p_') :=
      u*cos(v)^(m-n*p)*(b*sin(v)^n+a*cos(v)^n)^p <--
    IntegersQ(m,n,p)

    #= Basis: (a+b*tan(z))/sec(z) == a*cos(z) + b*sin(z) =#
    TrigSimplifyAux(u_*sec(v_)^m_'*(a_'+b_'*tan(v_)^2)^p_') :=
      u*(b*sin(v)^2+a*cos(v)^2)^p <--
    IntegersQ(m,p) && m+2*p==0

    #= Basis: (a+b*cot(z))/csc(z) == a*sin(z) + b*cos(z) =#
    TrigSimplifyAux(u_*csc(v_)^m_'*(a_'+b_'*cot(v_)^2)^p_') :=
      u*(b*cos(v)^2+a*sin(v)^2)^p <--
    IntegersQ(m,p) && m+2*p==0 =#


    #= #= Basis: If*n*is*an*integer, sin(z)^(-n)*(a*cos(z)^n+b*sin(z)^n) == b+a*cot(z)^n =#
    TrigSimplifyAux(sin(v_)^m_'*(a_'*cos(v_)^n_'+b_'*sin(v_)^n_')^p_) :=
      (b+a*cot(v)^n)^p <--
    IntegersQ(m,n,p) && n>0 && p<0 && m==-n*p

    #= Basis: If*n*is*an*integer, cos(z)^(-n)*(a*cos(z)^n+b*sin(z)^n) == a+b*tan(z)^n =#
    TrigSimplifyAux(cos(v_)^m_'*(a_'*cos(v_)^n_'+b_'*sin(v_)^n_')^p_) :=
      (a+b*tan(v)^n)^p <--
    IntegersQ(m,n,p) && n>0 && p<0 && m==-n*p =#


    #= #= Basis: If*a^2+b^2=0, 1/(a*cos(z) + b*sin(z)) == cos(z)/a + sin(z)/b =#
    TrigSimplifyAux((a_'*cos(v_)+b_'*sin(v_))^n_) :=
      (cos(v)/a + sin(v)/b)^(-n) <--
    IntegerQ(n) && n<0 && EqQ(a^2+b^2,0) =#


    TrigSimplifyAux(u_) := u


    #= ::Subsubsection::Closed:: =#
    #=Basis: tan(z)*tan(2*z)==-1+sec(2*z)=#


    TrigSimplifyAux(u_'*(c_'*tan(v_)^n_'*tan(w_)^n_')^p_') :=
      u*((-c+c*sec(w))^n)^p <--
    IntegerQ(n) && EqQ(w,2*v)


    #= ::Subsection::Closed:: =#
    #=IntPart(u)=#


    #= IntPart(u)*returns*the*sum*of*the*integer*terms*of*u. =#
    IntPart(m_*u_,n_:1) :=
      IntPart(u,m*n) <--
    RationalQ(m)

    IntPart(u_,n_:1) :=
      If(RationalQ(u),
        IntegerPart(n*u),
      If(SumQ(u),
        Map(MFunction(IntPart(Symbol("#1"),n)),u),
      0))


    #= ::Subsection::Closed:: =#
    #=FracPart(u)=#


    #= IntPart(u)*returns*the*sum*of*the*non-integer*terms*of*u. =#
    FracPart(m_*u_,n_:1) :=
      FracPart(u,m*n) <--
    RationalQ(m)

    FracPart(u_,n_:1) :=
      If(RationalQ(u),
        FractionalPart(n*u),
      If(SumQ(u),
        Map(MFunction(FracPart(Symbol("#1"),n)),u),
      n*u))


    #= ::Section::Closed:: =#
    #=Factoring*functions=#


    #= ::Subsection::Closed:: =#
    #=ContentFactor=#


    #= ContentFactor(expn)*returns*expn*with*the*content*of*sum*factors*factored*out. =#
    #= Basis: a*b+a*c == a*(b+c) =#
    ContentFactor(expn_) :=
      TimeConstrained(ContentFactorAux(expn),DOLLARTimeLimit,expn);

    ContentFactorAux(expn_) :=
      If(AtomQ(expn),
        expn,
      If(IntegerPowerQ(expn),
        If(SumQ(Part(expn, 1)) && NumericFactor(Part(expn, 1,1))<0,
          (-1)^Part(expn, 2) * ContentFactorAux(-Part(expn, 1))^Part(expn, 2),
        ContentFactorAux(Part(expn, 1))^Part(expn, 2)),
      If(ProductQ(expn),
        Module([num=1,tmp],
        tmp=Map(MFunction(If(SumQ(Symbol("#1")) && NumericFactor(Part(Symbol("#"), 1))<0, num=-num; ContentFactorAux(-Symbol("#1")), ContentFactorAux(Symbol("#1")))), expn);
        num*UnifyNegativeBaseFactors(tmp)),
      If(SumQ(expn),
        With([lst=CommonFactors(Apply(List,expn))],
        If(Part(lst, 1)===1 || Part(lst, 1)===-1,
          expn,
        Part(lst, 1)*Apply(Plus,Rest(lst)))),
      expn))))


    #= UnifyNegativeBaseFactors(u)*returns*u*with*factors*of*the*form*(-v)^m*and*v^n*where*n*is*an*integer*replaced*with*(-1)^n*(-v)^(m+n). =#
    #= This*should*be*done*automatically*by*the*host*CAS! =#
    UnifyNegativeBaseFactors(u_'*(-v_)^m_*v_^n_') :=
      UnifyNegativeBaseFactors((-1)^n*u*(-v)^(m+n)) <--
    IntegerQ(n)

    UnifyNegativeBaseFactors(u_) :=
      u


    #= If*lst*is*a*list*of*n*terms, CommonFactors(lst)*returns*a*n+1-element*list*whose*first
    	element*is*the*product*of*the*factors*common*to*all*terms*of*lst, and*whose*remaining
    	elements*are*quotients*of*each*term*divided*by*the*common*factor. =#
    CommonFactors*(lst_) :=
      Module([lst1,lst2,lst3,lst4,common,base,num],
      lst1=Map(NonabsurdNumberFactors,lst);
      lst2=Map(AbsurdNumberFactors,lst);
      num=Apply(AbsurdNumberGCD,lst2);
      common=num;
      lst2=Map(MFunction(Symbol("#1")/num),lst2);
      While(true,
        lst3=Map(LeadFactor,lst1);
        ( If(Apply(SameQ,lst3),
            common=common*Part(lst3, 1);
            lst1=Map(RemainingFactors,lst1),
          If(EveryQ(MFunction(LogQ(Symbol("#1")) && IntegerQ(First(Symbol("#1"))) && First(Symbol("#1"))>0),lst3) &&
               EveryQ(RationalQ,lst4=Map(MFunction(FullSimplify(Symbol("#1")/First(lst3))),lst3)),
            num=Apply(GCD,lst4);
            common=common*log((Part(First[lst3], 1))^num);
            lst2=Map2(MFunction(Symbol("#1")*Symbol("#2")/num),lst2,lst4);
            lst1=Map(RemainingFactors,lst1),
          lst4=Map(LeadDegree,lst1);
          If(Apply(SameQ,Map(LeadBase,lst1)) && EveryQ(RationalQ,lst4),
            num=Smallest(lst4);
            base=LeadBase(Part(lst1, 1));
            ( If(num!=0,
                common=common*base^num) );
            lst2=Map2(MFunction(Symbol("#1")*base^(Symbol("#2")-num)),lst2,lst4);
            lst1=Map(RemainingFactors,lst1),
          If(Length(lst1)==2 && EqQ(LeadBase(Part(lst1, 1))+LeadBase(Part(lst1, 2)),0) &&
             NeQ(Part(lst1, 1),1) && IntegerQ(Part(lst4, 1)) && FractionQ(Part(lst4, 2)),
            num=Min(lst4);
            base=LeadBase(Part(lst1, 2));
            ( If(num!=0,
                common=common*base^num) );
            lst2=[Part(lst2, 1)*(-1)^Part(lst4, 1),Part(lst2, 2)];
            lst2=Map2(MFunction(Symbol("#1")*base^(Symbol("#2")-num)),lst2,lst4);
            lst1=Map(RemainingFactors,lst1),
          If(Length(lst1)==2 && EqQ(LeadBase(Part(lst1, 1))+LeadBase(Part(lst1, 2)),0) &&
             NeQ(Part(lst1, 2),1) && IntegerQ(Part(lst4, 2)) && FractionQ(Part(lst4, 1)),
            num=Min(lst4);
            base=LeadBase(Part(lst1, 1));
            ( If(num!=0,
                common=common*base^num) );
            lst2=[Part(lst2, 1),Part(lst2, 2)*(-1)^Part(lst4, 2)];
            lst2=Map2(MFunction(Symbol("#1")*base^(Symbol("#2")-num)),lst2,lst4);
            lst1=Map(RemainingFactors,lst1),
          num=MostMainFactorPosition(lst3);
          lst2=ReplacePart(lst2,lst3((num))*lst2((num)),num);
          lst1=ReplacePart(lst1,RemainingFactors(lst1((num))),num)))))) );
        If(EveryQ(MFunction(Symbol("#1")===1),lst1),
          Return(Prepend(lst2,common)))))


    MostMainFactorPosition(lst_List) :=
      Module([factor=1,num=1,ii],
      Do(If(FactorOrder(lst((ii)),factor)>0,factor=lst((ii));num=ii),[ii,Length(lst)]);
      num)


    FactorOrder(u_,v_) :=
      If(u===1,
        If(v===1,
          0,
        -1),
      If(v===1,
        1,
      Order(u,v)))


    Smallest(num1_,num2_) :=
      If(num1>0,
        If(num2>0,
          Min(num1,num2),
        0),
      If(num2>0,
        0,
      Max(num1,num2)))

    Smallest(lst_List) :=
      Module([num=Part(lst, 1)],
      Scan(MFunction(num=Smallest(num,Symbol("#1"))),Rest(lst));
      num)


    #= ::Subsection::Closed:: =#
    #=MonomialFactor=#


    #= MonomialFactor(u,x)*returns*the*list [n,v] where*x^n*v==u*and*n*is*free*of*x. =#
    MonomialFactor(u_,x_Symbol) :=
      If(AtomQ(u),
        If(u===x,
          [1,1],
        [0,u]),
      If(PowerQ(u),
        If(IntegerQ(Part(u, 2)),
          With([lst=MonomialFactor(Part(u, 1),x)],
          [Part(lst, 1)*Part(u, 2),Part(lst, 2)^Part(u, 2)]),
        If(Part(u, 1)===x && FreeQ(Part(u, 2),x),
          [Part(u, 2),1],
        [0,u])),
      If(ProductQ(u),
        With([lst1=MonomialFactor(First(u),x),lst2=MonomialFactor(Rest(u),x)],
        [Part(lst1, 1)+Part(lst2, 1),Part(lst1, 2)*Part(lst2, 2)]),
      If(SumQ(u),
        Module([lst,deg],
        lst=Map(MFunction(MonomialFactor(Symbol("#1"),x)),Apply(List,u));
        deg=Part(lst, 1,1);
        Scan(MFunction(deg=MinimumDegree(deg,Part(Symbol("#"), 1))),Rest(lst));
        If(EqQ(deg,0) || RationalQ(deg) && deg<0,
          [0,u],
        [deg,Apply(Plus,Map(MFunction(x^(Part(Symbol("#"), 1)-deg)*Part(Symbol("#"), 2)),lst))])),
      [0,u]))))


    MinimumDegree(deg1_,deg2_) :=
      If(RationalQ(deg1),
        If(RationalQ(deg2),
          Min(deg1,deg2),
        deg1),
      If(RationalQ(deg2),
        deg2,
      With([deg=Simplify(deg1-deg2)],
      If(RationalQ(deg),
        If(deg>0,
          deg2,
        deg1),
      If(OrderedQ([deg1,deg2]),
        deg1,
      deg2)))))


    #= ::Subsection::Closed:: =#
    #=ConstantFactor=#


    #= ConstantFactor(u,x)*returns*a*2-element*list*of*the*factors*of*u(x)*free*of*x*and*the
    	factors*not*free*of*u(x).  Common*constant*factors*of*the*terms*of*sums*are*also*collected. =#
    ConstantFactor(u_,x_Symbol) :=
      If(FreeQ(u,x),
        [u,1],
      If(AtomQ(u),
        [1,u],
      If(PowerQ(u) && FreeQ(Part(u, 2),x),
        Module([lst=ConstantFactor(Part(u, 1),x),tmp],
        If(IntegerQ(Part(u, 2)),
          [Part(lst, 1)^Part(u, 2),Part(lst, 2)^Part(u, 2)],
        tmp=PositiveFactors(Part(lst, 1));
        If(tmp===1,
          [1,u],
        [tmp^Part(u, 2),(NonpositiveFactors(Part(lst, 1))*Part(lst, 2))^Part(u, 2)]))),
      If(ProductQ(u),
        With([lst=Map(MFunction(ConstantFactor(Symbol("#1"),x)),Apply(List,u))],
        [Apply(Times,Map(First,lst)),Apply(Times,Map(MFunction(Part(Symbol("#"), 2)),lst))]),
      If(SumQ(u),
        With([lst1=Map(MFunction(ConstantFactor(Symbol("#1"),x)),Apply(List,u))],
        If(Apply(SameQ,Map(MFunction(Part(Symbol("#"), 2)),lst1)),
          [Apply(Plus,Map(First,lst1)),Part(lst1, 1,2)],
        With([lst2=CommonFactors(Map(First,lst1))],
        [First(lst2),Apply(Plus,Map2(Times,Rest(lst2),Map(MFunction(Part(Symbol("#"), 2)),lst1)))]))),
      [1,u])))))


    #= PositiveFactors(u)*returns*the*positive*factors*of*u =#
    PositiveFactors(u_) :=
      If(EqQ(u,0),
        1,
      If(RationalQ(u),
        Abs(u),
      If(GtQ(u,0),
        u,
      If(ProductQ(u),
        Map(PositiveFactors,u),
      1))))


    #= NonpositiveFactors(u)*returns*the*nonpositive*factors*of*u =#
    NonpositiveFactors(u_) :=
      If(EqQ(u,0),
        u,
      If(RationalQ(u),
        Sign(u),
      If(GtQ(u,0),
        1,
      If(ProductQ(u),
        Map(NonpositiveFactors,u),
      u))))


    #= ::Section::Closed:: =#
    #=Generalized*polynomial*functions=#


    #= ::Subsection::Closed:: =#
    #=PolynomialInQ=#


    #= ::Item:: =#
    #=If*u*is*a*polynomial*in*v(x), PolynomialInQ(u,v,x)*returns*true; else*it*returns*false.=#


    PolynomialInQ(u_,v_,x_Symbol) :=
      PolynomialInAuxQ(u,NonfreeFactors(NonfreeTerms(v,x),x),x)


    PolynomialInAuxQ(u_,v_,x_) :=
      If(u===v,
        true,
      If(AtomQ(u),
        u!==x,
      If(PowerQ(u),
        If(PowerQ(v) && Part(u, 1)===Part(v, 1),
          IGtQ(Part(u, 2)/Part(v, 2),0),
        IGtQ(Part(u, 2),0) && PolynomialInAuxQ(Part(u, 1),v,x)),
      If(SumQ(u) || ProductQ(u),
        Catch(Scan(MFunction(If(Not(PolynomialInAuxQ(Symbol("#1"),v,x)),Throw(false))),u);true),
      false))))


    #= ::Subsection::Closed:: =#
    #=ExponentIn=#


    #= ::Item:: =#
    #=If*u(v)*is*a*polynomial*in*w, GeneralizedExponent(u,v,x)*returns*the*degree*of*the*u(x).=#


    ExponentIn(u_,v_,x_Symbol) :=
      ExponentInAux(u,NonfreeFactors(NonfreeTerms(v,x),x),x)


    ExponentInAux(u_,v_,x_) :=
      If(u===v,
        1,
      If(AtomQ(u),
        0,
      If(PowerQ(u),
        If(PowerQ(v) && Part(u, 1)===Part(v, 1),
          Part(u, 2)/Part(v, 2),
        Part(u, 2)*ExponentInAux(Part(u, 1),v,x)),
      If(ProductQ(u),
        Apply(Plus,Map(MFunction(ExponentInAux(Symbol("#1"),v,x)),Apply(List,u))),
      Apply(Max,Map(MFunction(ExponentInAux(Symbol("#1"),v,x)),Apply(List,u)))))))


    #= ::Subsection::Closed:: =#
    #=PolynomialInSubst=#


    #= ::Item:: =#
    #=If*u*is*a*polynomial*in*v(x), PolynomialInSubst(u,v,x)*returns*the*polynomial*u*in*x.=#


    PolynomialInSubst(u_,v_,x_Symbol) :=
      With([w=NonfreeTerms(v,x)],
      ReplaceAll(PolynomialInSubstAux(u,NonfreeFactors(w,x),x),[x=>(x-FreeTerms(v,x))/FreeFactors(w,x)]))


    PolynomialInSubstAux(u_,v_,x_) :=
      If(u===v,
        x,
      If(AtomQ(u),
        u,
      If(PowerQ(u),
        If(PowerQ(v) && Part(u, 1)===Part(v, 1),
          x^(Part(u, 2)/Part(v, 2)),
        PolynomialInSubstAux(Part(u, 1),v,x)^Part(u, 2)),
      Map(MFunction(PolynomialInSubstAux(Symbol("#1"),v,x)),u))))


    #= ::Subsection::Closed:: =#
    #=PolynomialDivide=#


    "If*u*and*v*are*polynomials*in*x, PolynomialDivide(u,v,x)*returns*the*polynomial*quotient*of*u*and*v*plus*the*polynomial*remainder*divided*by*v.
    If*u(w)*and*v(w)*are*polynomials*in*w, PolynomialDivide(u,v,w,x)*returns*the*polynomial*quotient*of*u(x)*and*v(x)*plus*the*polynomial*remainder*divided*by*v(x)*with*x*replaced*by*w."
    function PolynomialDivide end
    PolynomialDivide(u_,v_,x_Symbol) :=
      Module([quo=PolynomialQuotient(u,v,x),rem=PolynomialRemainder(u,v,x),free,monomial],
      quo=Apply(Plus,Map(MFunction(Simp(Together(Coefficient(quo,x,Symbol("#1"))*x^Symbol("#1")),x)),Exponent(quo,x,List)));
      rem=Together(rem);
      free=FreeFactors(rem,x);
      rem=NonfreeFactors(rem,x);
      monomial=x^Exponent(rem,x,Min);
      If(NegQ(Coefficient(rem,x,0)), monomial=-monomial);
      rem=Apply(Plus,Map(MFunction(Simp(Together(Coefficient(rem,x,Symbol("#1"))*x^Symbol("#1")/monomial),x)),Exponent(rem,x,List)));
    #=rem=Simplify(rem); =#
      If(BinomialQ(v,x),
        quo+free*monomial*rem/ExpandToSum(v,x),
      quo+free*monomial*rem/v))


    PolynomialDivide(u_,v_,w_,x_Symbol) :=
      ReplaceAll(PolynomialDivide(PolynomialInSubst(u,w,x),PolynomialInSubst(v,w,x),x),[x=>w])


    #= ::Section::Closed:: =#
    #=Expansion*functions=#


    #= ::Subsection::Closed:: =#
    #=ExpandToSum(u,x)=#


    #= ::Item:: =#
    #=ExpandToSum(u,v,x)*returns*v*expanded*into*a*sum*of*monomials*of*x*and*distributes*u*over*v.=#


    ExpandToSum(u_,v_,x_Symbol) :=
      Module([w=ExpandToSum(v,x),r],
      r=NonfreeTerms(w,x);
      If(SumQ(r),
        u*FreeTerms(w,x)+Map(MFunction(MergeMonomials(u*Symbol("#1"),x)),r),
      u*FreeTerms(w,x)+MergeMonomials(u*r,x)))


    #= ::Item:: =#
    #=ExpandToSum(u,x)*returns*u*expanded*into*a*sum*of*monomials*of*x.=#


    ExpandToSum(u_,x_Symbol) :=
      If(PolyQ(u,x),
        Simp(Apply(Plus,Map(MFunction(Coeff(u,x,Symbol("#1"))*x^Symbol("#1")), Expon(u,x,List))),x),
      If(BinomialQ(u,x),
        MFunction(Part(Symbol("#"), 1) + Part(Symbol("#"), 2)*x^Part(Symbol("#"), 3))(BinomialParts(u,x)),
      If(TrinomialQ(u,x),
        MFunction(Part(Symbol("#"), 1) + Part(Symbol("#"), 2)*x^Part(Symbol("#"), 4) + Part(Symbol("#"), 3)*x^(2*Part(Symbol("#"), 4)))(TrinomialParts(u,x)),
      If(GeneralizedBinomialQ(u,x),
        MFunction(Part(Symbol("#"), 1)*x^Part(Symbol("#"), 4) + Part(Symbol("#"), 2)*x^Part(Symbol("#"), 3))(GeneralizedBinomialParts(u,x)),
      If(GeneralizedTrinomialQ(u,x),
        MFunction(Part(Symbol("#"), 1)*x^Part(Symbol("#"), 5) + Part(Symbol("#"), 2)*x^Part(Symbol("#"), 4) + Part(Symbol("#"), 3)*x^(2*Part(Symbol("#"), 4)-Part(Symbol("#"), 5)))(GeneralizedTrinomialParts(u,x)),
      Print("Warning: Unrecognized*expression*for*expansion ",u);
      expand(u,x))))))


    #= ::Subsection::Closed:: =#
    #=ExpandTrig(u,x)=#


    ExpandTrig(u_,x_Symbol) :=
      ActivateTrig(ExpandIntegrand(u,x))

    ExpandTrig(u_,v_,x_Symbol) :=
      With([w=ExpandTrig(v,x),z=ActivateTrig(u)],
      If(SumQ(w),
        Map(MFunction(z*Symbol("#1")),w),
      z*w))


    #= ::Subsection::Closed:: =#
    #=ExpandIntegrand(u,v,x)=#


    Clear(ExpandIntegrand);


    ExpandIntegrand((a_'+b_'*log(c_'*x_^n_'))^p_',x_^m_'*(d_+e_'*x_^r_')^q_',x_Symbol) :=
      DistributeOverTerms((a+b*log(c*x^n))^p,CollectRecipTerms(ExpandIntegrand(x^m*(d+e*x^r)^q,x),x),x) <--
    FreeQ([a,b,c,d,e,n],x) && IGtQ(p,0) && IGtQ(r,0) && ILtQ(m,0) && ILtQ(q,0)   && EqQ(r,1)


    ExpandIntegrand(u_,v_,x_Symbol) :=
      DistributeOverTerms(u,ExpandIntegrand(v,x),x)


    DistributeOverTerms(u_,v_,x_Symbol) :=
      With([w=NonfreeTerms(v,x)],
      u*FreeTerms(v,x) + If(SumQ(w),
        Map(MFunction(MergeMonomials(u*Symbol("#1"),x)),w),
        MergeMonomials(u*w,x)))


    CollectRecipTerms(u_'+A_'/x_+B_'/(d_+e_'*x_),x_Symbol) :=
      u+A*d/(x*(d+e*x)) <--
    FreeQ([A,B,d,e],x) && EqQ(B+A*e,0)

    CollectRecipTerms(u_,x_Symbol) := u


    #= ::Subsection::Closed:: =#
    #=ExpandIntegrand(u,x)=#


    #= ExpandIntegrand(u_,x_Symbol) :=
      With([nn=FunctionOfPower(u,x)],
      ReplaceAll(ExpandIntegrand(SubstFor(x^nn,u,x),x),x=>x^nn) <--
     nn!=1) =#


    ExpandIntegrand(u_^p_',x_Symbol) :=
      If(EqQ(p,1),
        ExpandCleanup(u,x),
      ExpandCleanup(expand(u^p,x),x)) <--
    SumQ(u) && IGtQ(p,0)


    ExpandIntegrand((a_+b_'*x_^n_)^p_',x_Symbol) :=
      ExpandIntegrand(x^(n*p)*(b+a*x^(-n))^p,x) <--
    IntegerQ(p) && ILtQ(n,0)

    ExpandIntegrand(x_^m_'*(a_+b_'*x_^n_)^p_',x_Symbol) :=
      ExpandIntegrand(x^(m+n*p)*(b+a*x^(-n))^p,x) <--
    IntegerQ(p) && ILtQ(n,0)


    ExpandIntegrand(Px_'*x_^m_*(b_'*x_^n_'+c_'*x_^n1_)^p_',x_Symbol) :=
      ExpandIntegrand(Px*x^(m+n*p)*(b+c*x)^p,x) <--
    FreeQ([b,c,m],x) && PolyQ(Px,x) && IGtQ(n,0) && EqQ(n1,n+1) && IntegerQ(p)

    ExpandIntegrand(Px_'*(b_'*x_^n_'+c_'*x_^n1_)^p_',x_Symbol) :=
      ExpandIntegrand(Px*x^(n*p)*(b+c*x)^p,x) <--
    FreeQ([b,c],x) && PolyQ(Px,x) && IGtQ(n,0) && EqQ(n1,n+1) && IntegerQ(p)


    ExpandIntegrand((a_'+b_'*F_^u_)^p_'*(c_'+d_'*F_^v_)^q_',x_Symbol) :=
      With([k=Simplify(u/v)],
      ReplaceAll(ExpandIntegrand((a+b*x^Numerator(k))^p*(c+d*x^Denominator(k))^q,x),x=>F^(v/Denominator(k))) <--
     RationalQ(k)) <--
    FreeQ([F,a,b,c,d],x) && IntegersQ(p,q)


    #= ::Subsubsection::Closed:: =#
    #=Basis: (a+b*x)^m/(c+d*x)==(b*(a+b*x)^(m-1))/d+((a*d-b*c)*(a+b*x)^(m-1))/(d*(c+d*x))=#


    ExpandIntegrand((a_'+b_'*x_)^m_'*F_^(e_'*(c_'+d_'*x_)^n_')/(g_'+h_'*x_),x_Symbol) :=
      With([tmp=a*h-b*g],
      Module([k],
      SimplifyTerm(tmp^m/h^m,x)*F^(e*(c+d*x)^n)/(g+h*x) +
    	Sum(SimplifyTerm(b*tmp^(k-1)/h^k,x)*F^(e*(c+d*x)^n)*(a+b*x)^(m-k),[k,1,m]))) <--
    FreeQ([F,a,b,c,d,e,g,h],x) && IGtQ(m,0) && EqQ(b*c-a*d,0)


    ExpandIntegrand(x_^m_'*(e_+f_'*x_)^p_'*F_^(b_'*(c_'+d_'*x_)^n_'),x_Symbol) :=
      If(IGtQ(m,0) && IGtQ(p,0) && m<=p && (EqQ(n,1) || EqQ(d*e-c*f,0)),
        ExpandLinearProduct((e+f*x)^p*F^(b*(c+d*x)^n),x^m,e,f,x),
      If(IGtQ(p,0),
        Distribute(x^m*F^(b*(c+d*x)^n)*expand((e+f*x)^p,x),Plus,Times),
      ExpandIntegrand(F^(b*(c+d*x)^n),x^m*(e+f*x)^p,x))) <--
    FreeQ([F,b,c,d,e,f,m,n,p],x)


    ExpandIntegrand(x_^m_'*(e_+f_'*x_)^p_'*F_^(a_'+b_'*(c_'+d_'*x_)^n_'),x_Symbol) :=
      If(IGtQ(m,0) && IGtQ(p,0) && m<=p && (EqQ(n,1) || EqQ(d*e-c*f,0)),
        ExpandLinearProduct((e+f*x)^p*F^(a+b*(c+d*x)^n),x^m,e,f,x),
      If(IGtQ(p,0),
        Distribute(x^m*F^(a+b*(c+d*x)^n)*expand((e+f*x)^p,x),Plus,Times),
      ExpandIntegrand(F^(a+b*(c+d*x)^n),x^m*(e+f*x)^p,x))) <--
    FreeQ([F,a,b,c,d,e,f,m,n,p],x)


    ExpandIntegrand(u_'*(a_+b_'*F_^v_)^m_'*(c_+d_'*F_^v_)^n_,x_Symbol) :=
      With([w=ReplaceAll(ExpandIntegrand((a+b*x)^m*(c+d*x)^n,x),x=>F^v)],
      Map(MFunction(u*Symbol("#1")),w) <--
     SumQ(w)) <--
    FreeQ([F,a,b,c,d],x) && IntegersQ(m,n) && n<0


    ExpandIntegrand(u_*(a_'+b_'*x_)^m_'*F_^(e_'*(c_'+d_'*x_)^n_'),x_Symbol) :=
      With([v=ExpandIntegrand(u*(a+b*x)^m,x)],
      Distribute(F^(e*(c+d*x)^n)*v,Plus,Times) <--
     SumQ(v)) <--
    FreeQ([F,a,b,c,d,e,m,n],x) && PolynomialQ(u,x)


    ExpandIntegrand(u_*(a_'+b_'*x_)^m_'*log(c_'*(d_'+e_'*x_^n_')^p_'),x_Symbol) :=
      ExpandIntegrand(log(c*(d+e*x^n)^p),u*(a+b*x)^m,x) <--
    FreeQ([a,b,c,d,e,m,n,p],x) && PolynomialQ(u,x)


    ExpandIntegrand(u_*F_^(e_'*(c_'+d_'*x_)^n_'),x_Symbol) :=
      If(EqQ(n,1),
        ExpandIntegrand(F^(e*(c+d*x)^n),u,x),
      ExpandLinearProduct(F^(e*(c+d*x)^n),u,c,d,x)) <--
    FreeQ([F,c,d,e,n],x) && PolynomialQ(u,x)


    ExpandIntegrand(F_(u_)^m_'*(a_+b_'*G_(u_))^n_',x_Symbol) :=
      ReplaceAll(ExpandIntegrand((a+b*x)^n/x^m,x),x=>G(u)) <--
    FreeQ([a,b],x) && IntegersQ(m,n) && F(u)*G(u)===1


    ExpandIntegrand(u_*(a_'+b_'*log(c_'*(d_'*(e_'+f_'*x_)^p_')^q_'))^n_,x_Symbol) :=
      ExpandLinearProduct((a+b*log(c*(d*(e+f*x)^p)^q))^n,u,e,f,x) <--
    FreeQ([a,b,c,d,e,f,n,p,q],x) && PolynomialQ(u,x)


    ExpandIntegrand(u_*(a_'+b_'*F_(c_'+d_'*x_))^n_,x_Symbol) :=
      ExpandLinearProduct((a+b*F(c+d*x))^n,u,c,d,x) <--
    FreeQ([a,b,c,d,n],x) && PolynomialQ(u,x) && MemberQ([asin,acos,asinh,acosh],F)


    #= ::Subsubsection::Closed:: =#
    #=Basis: 1/(a*x^n+b*sqrt(c+d*x^(2*n)))==(a*x^n-b*sqrt(c+d*x^(2*n)))/(-b^2*c+(a^2-b^2*d)*x^(2*n))=#


    ExpandIntegrand(u_'/(a_'*x_^n_+b_'*sqrt(c_+d_'*x_^j_)),x_Symbol) :=
      ExpandIntegrand(u*(a*x^n-b*sqrt(c+d*x^(2*n)))/(-b^2*c+(a^2-b^2*d)*x^(2*n)),x) <--
    FreeQ([a,b,c,d,n],x) && EqQ(j,2*n)


    #= ::Subsubsection::Closed:: =#
    #=Basis: (a+b*x)^m/(c+d*x)==(b*(a+b*x)^(m-1))/d+((a*d-b*c)*(a+b*x)^(m-1))/(d*(c+d*x))=#


    ExpandIntegrand((a_+b_'*x_)^m_/(c_+d_'*x_),x_Symbol) :=
      If(RationalQ(a,b,c,d),
        ExpandExpression((a+b*x)^m/(c+d*x),x),
      With([tmp=a*d-b*c],
      Module([k],
      SimplifyTerm(tmp^m/d^m,x)/(c+d*x) + Sum(SimplifyTerm(b*tmp^(k-1)/d^k,x)*(a+b*x)^(m-k),[k,1,m])))) <--
    FreeQ([a,b,c,d],x) && IGtQ(m,0)


    #= ::Subsubsection::Closed:: =#
    #=Basis: ((a+b*x)^m*(A+B*x))/(c+d*x)==(B*(a+b*x)^m)/d+((A*d-B*c)*(a+b*x)^m)/(d*(c+d*x))=#


    ExpandIntegrand((a_+b_'*x_)^m_'*(A_+B_'*x_)/(c_+d_'*x_),x_Symbol) :=
      If(RationalQ(a,b,c,d,A,B),
        ExpandExpression((a+b*x)^m*(A+B*x)/(c+d*x),x),
      Module([tmp1,tmp2],
      tmp1=(A*d-B*c)/d;
      tmp2=ExpandIntegrand((a+b*x)^m/(c+d*x),x);
      tmp2=If(SumQ(tmp2), Map(MFunction(SimplifyTerm(tmp1*Symbol("#1"),x)),tmp2), SimplifyTerm(tmp1*tmp2,x));
      SimplifyTerm(B/d,x)*(a+b*x)^m + tmp2)) <--
    FreeQ([a,b,c,d,A,B],x) && IGtQ(m,0)


    ExpandIntegrand(u_*(a_+b_'*x_)^m_'*(c_+d_'*x_)^n_',x_Symbol) :=
      ExpandIntegrand((c+d*x)^n,u*(a+b*x)^m,x) <--
    FreeQ([a,b,c,d,m,n],x) && PolynomialQ(u,x) && Not(IntegerQ(m)) && IGtQ(n-m,0)


    #= u*is*a*polynomial*in*x.  ExpandIntegrand(u*(a+b*x)^m,x)*expands*u*(a+b*x)^m*into*a*sum*of*terms*of*the*form*A*(a+b*x)^n. =#
    ExpandIntegrand(u_*(a_+b_'*x_)^m_',x_Symbol) :=
      With([sum1=ExpandLinearProduct((a+b*x)^m,u,a,b,x)],
      If(Not(IntegerQ(m)) || m>2 && LinearQ(u,x),
        sum1,
      With([sum2=ExpandExpression(u*(a+b*x)^m,x)],
      If(SumQ(sum2),
        If(m>0,
          If(Length(sum2)<=Exponent(u,x)+2 || LeafCount(sum2)<=2/3*LeafCount(sum1),
            sum2,
          sum1),
        If(LeafCount(sum2)<=LeafCount(sum1)+2,
          sum2,
        sum1)),
      sum1)))) <--
    FreeQ([a,b,m],x) && PolynomialQ(u,x) &&
      Not(IGtQ(m,0) && MatchQ(u,w_'*(c_+d_'*x)^p_ <-- FreeQ([c,d],x) && IntegerQ(p) && p>m))


    ExpandIntegrand(u_*v_^n_*(a_+b_'*x_)^m_,x_Symbol) :=
      MFunction(ExpandIntegrand(Part(Symbol("#"), 1)*(a+b*x)^FractionalPart(m),x) + ExpandIntegrand(Part(Symbol("#"), 2)*v^n*(a+b*x)^m,x))(
        PolynomialQuotientRemainder(u,v^(-n)*(a+b*x)^(-IntegerPart(m)),x))<--
    FreeQ([a,b,m],x) && ILtQ(n,0) && Not(IntegerQ(m)) && PolynomialQ(u,x) && PolynomialQ(v,x) &&
      RationalQ(m) && m<-1 && Exponent(u,x)>=-(n+IntegerPart(m))*Exponent(v,x)


    ExpandIntegrand(u_*v_^n_*(a_+b_'*x_)^m_,x_Symbol) :=
      MFunction(ExpandIntegrand(Part(Symbol("#"), 1)*(a+b*x)^m,x) + ExpandIntegrand(Part(Symbol("#"), 2)*v^n*(a+b*x)^m,x))(PolynomialQuotientRemainder(u,v^(-n),x))<--
    FreeQ([a,b,m],x) && ILtQ(n,0) && Not(IntegerQ(m)) && PolynomialQ(u,x) && PolynomialQ(v,x) &&
      Exponent(u,x)>=-n*Exponent(v,x)


    #= ::Subsubsection::Closed:: =#
    #=Basis: Let*r/s=(-a/b)^(1/3), then  1/(a+b*z^3)==r/(3a(r-s*z))+(r(2*r+s*z))/(3a(r^2+r*s*z+s^2*z^2))=#


    #= ExpandIntegrand(1/(a_+b_'*u_^3),x_Symbol) :=
      With([r=Numerator(Rt(-a/b,3)),s=Denominator(Rt(-a/b,3))],
      r/(3*a*(r-s*u)) + r*(2*r+s*u)/(3*a*(r^2+r*s*u+s^2*u^2))) <--
    FreeQ([a,b],x) =#


    #= ::Subsubsection::Closed:: =#
    #=Basis: Let*r/s=sqrt(-a/b), then  1/(a+b*z^2)==r/(2a(r-s*z))+r/(2a(r+s*z))=#


    ExpandIntegrand(1/(a_+b_'*u_^n_),x_Symbol) :=
      With([r=Numerator(Rt(-a/b,2)),s=Denominator(Rt(-a/b,2))],
      r/(2*a*(r-s*u^(n/2))) + r/(2*a*(r+s*u^(n/2)))) <--
    FreeQ([a,b],x) && IGtQ(n/2,0)


    #= ::Subsubsection::Closed:: =#
    #=Basis: Let*r/s=sqrt(-a/b), then  (c+d*z)/(a+b*z^2) == -s*(d*r+c*s)/(2*b*r*(r-s*z))+s*(d*r-c*s)/(2*b*r*(r+s*z))=#


    ExpandIntegrand((c_+d_'*u_^n_)/(a_+b_'*u_^n2_),x_Symbol) :=
      With([r=Numerator(Rt(-a/b,2)),s=Denominator(Rt(-a/b,2))],
      -s*(d*r+c*s)/(2*b*r*(r-s*u^n)) + s*(d*r-c*s)/(2*b*r*(r+s*u^n))) <--
    FreeQ([a,b,c,d],x) && IGtQ(n,0) && EqQ(n2,2*n)


    #= ::Subsubsection::Closed:: =#
    #=Basis: (a+b*z)^m*(c+d*z) == d/b*(a+b*z)^(m+1)+(b*c-a*d)/b*(a+b*z)^m=#


    ExpandIntegrand((a_+b_'*u_)^m_*(c_'+d_'*u_),x_Symbol) :=
      d/b*(a+b*u)^(m+1) + (b*c-a*d)/b*(a+b*u)^m <--
    FreeQ([a,b,c,d],x) && ILtQ(m,0)


    #= ::Subsubsection::Closed:: =#
    #=Basis: If  n\(Element)\(DoubleStruckCapitalZ)+, let*r/s=(-a/b)^(1/n), then  1/(a+b*z^n) == (r*Sum(1/(r - (-1)^(2*(k/n))*s*z), [k, 1, n]))/(a*n)=#


    ExpandIntegrand(1/(a_+b_'*u_^n_),x_Symbol) :=
      With([r=Numerator(Rt(-a/b,n)),s=Denominator(Rt(-a/b,n))],
      Module([k],
      Sum(r/(a*n*(r-(-1)^(2*k/n)*s*u)),[k,1,n]))) <--
    FreeQ([a,b],x) && IGtQ(n,1)


    #= ::Subsubsection::Closed:: =#
    #=Basis: If*(m|n)\(Element)\(DoubleStruckCapitalZ) \(And)*0<=m<n, let*r/s=(-a/b)^(1/n), then  (c + d*z^m)/(a + b*z^n) == (r*Sum((c + (d*(r/s)^m)/(-1)^(2*k*(m/n)))/(r - (-1)^(2*(k/n))*s*z), [k, 1, n]))/(a*n)=#


    ExpandIntegrand((c_+d_'*u_^m_')/(a_+b_'*u_^n_),x_Symbol) :=
      With([r=Numerator(Rt(-a/b,n)),s=Denominator(Rt(-a/b,n))],
      Module([k],
      Sum((r*c+r*d*(r/s)^m*(-1)^(-2*k*m/n))/(a*n*(r-(-1)^(2*k/n)*s*u)),[k,1,n]))) <--
    FreeQ([a,b,c,d],x) && IntegersQ(m,n) && 0<m<n


    #= ::Subsubsection::Closed:: =#
    #=Basis: If*(m|n,p)\(Element)\(DoubleStruckCapitalZ) \(And)*0<=m<p<n, let*r/s=(-a/b)^(1/n), then  (c + d*z^m + e*z^p)/(a + b*z^n) == (r*Sum((c + (d*(r/s)^m)/(-1)^(2*k*(m/n)) + (e*(r/s)^p)/(-1)^(2*k*(p/n)))/(r - (-1)^(2*(k/n))*s*z), [k, 1, n]))/(a*n)=#


    ExpandIntegrand((c_'+d_'*u_^m_'+e_'*u_^p_)/(a_+b_'*u_^n_),x_Symbol) :=
      With([r=Numerator(Rt(-a/b,n)),s=Denominator(Rt(-a/b,n))],
      Module([k],
      Sum((r*c+r*d*(r/s)^m*(-1)^(-2*k*m/n)+r*e*(r/s)^p*(-1)^(-2*k*p/n))/(a*n*(r-(-1)^(2*k/n)*s*u)),[k,1,n]))) <--
    FreeQ([a,b,c,d,e],x) && IntegersQ(m,n,p) && 0<m<p<n


    #= ::Subsubsection::Closed:: =#
    #=Basis: If*(m|n,p,q)\(Element)\(DoubleStruckCapitalZ) \(And)*0<=m<p<q<n, let*r/s=(-a/b)^(1/n), then  (c + d*z^m + e*z^p + f*z^q)/(a + b*z^n) == (r*Sum((c + (d*(r/s)^m)/(-1)^(2*k*(m/n)) + (e*(r/s)^p)/(-1)^(2*k*(p/n)) + (f*(r/s)^q)/(-1)^(2*k*(q/n)))/(r - (-1)^(2*(k/n))*s*z), [k, 1, n]))/(a*n)=#


    ExpandIntegrand((c_'+d_'*u_^m_'+e_'*u_^p_+f_'*u_^q_)/(a_+b_'*u_^n_),x_Symbol) :=
      With([r=Numerator(Rt(-a/b,n)),s=Denominator(Rt(-a/b,n))],
      Module([k],
      Sum((r*c+r*d*(r/s)^m*(-1)^(-2*k*m/n)+r*e*(r/s)^p*(-1)^(-2*k*p/n)+r*f*(r/s)^q*(-1)^(-2*k*q/n))/(a*n*(r-(-1)^(2*k/n)*s*u)),[k,1,n]))) <--
    FreeQ([a,b,c,d,e,f],x) && IntegersQ(m,n,p,q) && 0<m<p<q<n


    #= ::Subsubsection::Closed:: =#
    #=Basis: If  q=sqrt(-a*c), then*a+c*z^2==((-q+c*z)(q+c*z))/c=#


    ExpandIntegrand((a_+c_'*u_^n_)^p_,x_Symbol) :=
      Module([q],
      ReplaceAll(ExpandIntegrand(1/c^p,(-q+c*x)^p*(q+c*x)^p,x),[q=>Rt(-a*c,2),x=>u^(n/2)])) <--
    FreeQ([a,c],x) && EvenQ(n) && ILtQ(p,0)


    ExpandIntegrand(u_^m_'*(a_'+c_'*u_^n_)^p_,x_Symbol) :=
      Module([q],
      ReplaceAll(ExpandIntegrand(1/c^p,x^m*(-q+c*x^(n/2))^p*(q+c*x^(n/2))^p,x),[q=>Rt(-a*c,2),x=>u])) <--
    FreeQ([a,c],x) && IntegersQ(m,n/2) && ILtQ(p,0) && 0<m<n && m!=n/2


    #= ::Subsubsection::Closed:: =#
    #=Basis: If  n\(Element)\(DoubleStruckCapitalZ)+, then  a+b*z^n == -b*Product((-a/b)^(1/n)-(-1)^((2*k)/n)*z, [k, 1, n])=#


    ExpandIntegrand((a_+b_'*x_^n_)^p_,x_Symbol) :=
      With([q=Rt(-a/b,n)],
      Module([ii],
      ExpandIntegrand((-b)^p,Product((q-(-1)^((2*ii)/n)*x)^p,[ii,1,n]),x))) <--
    FreeQ([a,b],x) && IGtQ(n,1) && ILtQ(p,-1)


    #= ::Subsubsection::Closed:: =#
    #=Basis: If  q=sqrt(b^2-4*a*c), then*a+b*z+c*z^2 == (b-q+2*c*z)(b+q+2*c*z)/(4*c)=#


    ExpandIntegrand((a_'+b_'*u_^n_'+c_'*u_^n2_')^p_,x_Symbol) :=
      Module([q],
      ReplaceAll(ExpandIntegrand(1/(4^p*c^p),(b-q+2*c*x)^p*(b+q+2*c*x)^p,x),[q=>Rt(b^2-4*a*c,2),x=>u^n])) <--
    FreeQ([a,b,c],x) && IntegerQ(n) && EqQ(n2,2*n) && ILtQ(p,0) && NeQ(b^2-4*a*c,0)


    ExpandIntegrand(u_^m_'*(a_'+b_'*u_^n_'+c_'*u_^n2_')^p_,x_Symbol) :=
      Module([q],
      ReplaceAll(ExpandIntegrand(1/(4^p*c^p),x^m*(b-q+2*c*x^n)^p*(b+q+2*c*x^n)^p,x),[q=>Rt(b^2-4*a*c,2),x=>u])) <--
    FreeQ([a,b,c],x) && IntegersQ(m,n,n2) && EqQ(n2,2*n) && ILtQ(p,0) && 0<m<2*n && Not(m==n && p==-1) && NeQ(b^2-4*a*c,0)


    #= ::Subsubsection::Closed:: =#
    #=Basis: If  q=sqrt(-a/b), then*(c+d*z)/(a+b*z^2)==-((c-d*q)/(2*b*q(q+z)))-(c+d*q)/(2*b*q(q-z))=#


    ExpandIntegrand((c_+d_'*u_^n_')/(a_+b_'*u_^n2_'),x_Symbol) :=
      With([q=Rt(-a/b,2)],
      -(c-d*q)/(2*b*q*(q+u^n)) - (c+d*q)/(2*b*q*(q-u^n))) <--
    FreeQ([a,b,c,d,n],x) && EqQ(n2,2*n)


    #= ::Subsubsection::Closed:: =#
    #=Basis: If  q=sqrt(b^2-4a*c)*and*r=(2*c*d-b*e)/q, then*(d+e*z)/(a+b*z+c*z^2)==(e+r)/(b-q+2*c*z)+(e-r)/(b+q+2*c*z)=#


    ExpandIntegrand((d_'+e_'*(f_'+g_'*u_^n_'))/(a_'+b_'*u_^n_'+c_'*u_^n2_'),x_Symbol) :=
      With([q=Rt(b^2-4*a*c,2)], With([r=TogetherSimplify((2*c*(d+e*f)-b*e*g)/q)],
      (e*g+r)/(b-q+2*c*u^n) + (e*g-r)/(b+q+2*c*u^n))) <--
    FreeQ([a,b,c,d,e,f,g,n],x) && EqQ(n2,2*n) && NeQ(b^2-4*a*c,0)


    #= ::Subsubsection::Closed:: =#
    #=Basis: Miscellaneous=#


    #= ExpandIntegrand(u_/v_,x_Symbol) :=
      With([lst=CoefficientList(u,x)],
      Module([i],
      lst((-1))*x^Exponent(u,x)/v + Sum(lst((i))*x^(i-1),[i,1,Exponent(u,x)])/v)) <--
    PolynomialQ(u,x) && PolynomialQ(v,x) && BinomialQ(v,x) && Exponent(u,x)==Exponent(v,x)-1>=2 =#


    ExpandIntegrand(u_/v_,x_Symbol) :=
      PolynomialDivide(u,v,x) <--
    PolynomialQ(u,x) && PolynomialQ(v,x) && Exponent(u,x)>=Exponent(v,x)


    ExpandIntegrand(u_*(a_'*x_)^p_,x_Symbol) :=
      ExpandToSum((a*x)^p,u,x) <--
    Not(IntegerQ(p)) && PolynomialQ(u,x)


    ExpandIntegrand(u_'*v_^p_,x_Symbol) :=
      ExpandIntegrand(NormalizeIntegrand(v^p,x),u,x) <--
    Not(IntegerQ(p))


    ExpandIntegrand(u_,x_Symbol) :=
      With([v=ExpandExpression(u,x)],
        v <--
     SumQ(v))


    ExpandIntegrand(u_^m_'/(a_+b_'*u_^n_),x_Symbol) :=
      ExpandBinomial(a,b,m,n,u,x) <--
    FreeQ([a,b],x) && IntegersQ(m,n) && 0<m<n


    ExpandIntegrand(u_,x_Symbol) := u


    #= ::Subsection::Closed:: =#
    #=ExpandExpression(u,x)=#


    ExpandExpression(u_,x_Symbol) :=
      Module([v,w],
      v=If(AlgebraicFunctionQ(u,x) && Not(RationalFunctionQ(u,x)), ExpandAlgebraicFunction(u,x), 0);
      If(SumQ(v),
        ExpandCleanup(v,x),
      v=SmartApart(u,x);
      If(SumQ(v),
        ExpandCleanup(v,x),
      v=SmartApart(RationalFunctionFactors(u,x),x,x);
      If(SumQ(v),
        w=NonrationalFunctionFactors(u,x);
        ExpandCleanup(Map(MFunction(Symbol("#1")*w),v),x),
      v=expand(u,x);
      If(SumQ(v),
        ExpandCleanup(v,x),
      v=expand(u);
      If(SumQ(v),
        ExpandCleanup(v,x),
      SimplifyTerm(u,x)))))))


    ExpandCleanup(u_+v_/(a_+b_'*x_)+w_/(c_+d_'*x_),x_Symbol) :=
      ExpandCleanup(u+(c*v+a*w)/(a*c+b*d*x^2),x) <--
    FreeQ([a,b,c,d],x) && EqQ(b*c+a*d,0) && EqQ(d*v+b*w,0)


    ExpandCleanup(u_,x_Symbol) :=
      Module([v=CollectReciprocals(u,x)],
      If(SumQ(v),
        v=Map(MFunction(SimplifyTerm(Symbol("#1"),x)),v);
        If(SumQ(v),
          UnifySum(v,x),
        v),
      v))


    #= ::Subsubsection::Closed:: =#
    #=Basis: e/(a+b*x)+f/(c+d*x)==(c*e+a*f+(d*e+b*f)*x)/(a*c+(b*c+a*d)*x+b*d*x^2)=#


    CollectReciprocals(u_+e_/(a_+b_'*x_)+f_/(c_+d_'*x_),x_Symbol) :=
      CollectReciprocals(u+(c*e+a*f)/(a*c+b*d*x^2),x) <--
    FreeQ([a,b,c,d,e,f],x) && EqQ(b*c+a*d,0) && EqQ(d*e+b*f,0)

    CollectReciprocals(u_+e_/(a_+b_'*x_)+f_/(c_+d_'*x_),x_Symbol) :=
      CollectReciprocals(u+(d*e+b*f)*x/(a*c+b*d*x^2),x) <--
    FreeQ([a,b,c,d,e,f],x) && EqQ(b*c+a*d,0) && EqQ(c*e+a*f,0)

    CollectReciprocals(u_,x_Symbol) := u


    #= ::Subsection::Closed:: =#
    #=ExpandBinomial(u,x)=#


    #= ::Subsubsection:: =#
    #=Basis: If  (m|(n-1)/2)\(Element)\(DoubleStruckCapitalZ) \(And)*0<=m<n, let*r/s=(a/b)^(1/n), then*z^m/(a + b*z^n) == (r*(-(r/s))^m*Sum(1/((-1)^(2*k*(m/n))*(r + (-1)^(2*(k/n))*s*z)), [k, 1, n]))/(a*n) == (r*(-(r/s))^m*Sum((-1)^(2*k*((m + 1)/n))/((-1)^(2*(k/n))*r + s*z), [k, 1, n]))/(a*n)=#


    #= ::Subsubsection:: =#
    #=Basis: If  r/s=(-a/b)^(1/2), then*z/(a+b*z^2)==s/(2b(r+s*z))-s/(2b(r-s*z))==r^2/(2*a*s*(r-s*z))-r^2/(2*a*s*(r+s*z))=#


    #= ::Subsubsection:: =#
    #=Basis: If*(m|n)\(Element)\(DoubleStruckCapitalZ) \(And)*0<=m<n, let*r/s=(-a/b)^(1/n), then  z^m/(a + b*z^n) == (r*(r/s)^m*Sum(1/((-1)^(2*k*(m/n))*(r - (-1)^(2*(k/n))*s*z)), [k, 1, n]))/(a*n) == (r*(r/s)^m*Sum((-1)^(2*k*((m + 1)/n))/((-1)^(2*(k/n))*r - s*z), [k, 1, n]))/(a*n)=#


    #= ::Subsubsection:: =#
    #=Note: If  m+1*and*n*are*not*coprime, the*second*summation*is*used*since*the*coefficient*(-1)^(2*k*(m+1)/n)*will*be*simpler.=#


    #= ::Subsubsection::Closed:: =#
    #=Note: The*code*reduces*the*exponents*by*their*gcd.=#


    #= Assumes*m*and*n*are*integers*and*0<m<n. =#
    #= ExpandBinomial(a,b,m,n,u,x)*expands*u^m/(a+b*u^n)*into*a*sum*of*terms*of*the*form*1/(r+s*u). =#
    ExpandBinomial(a_,b_,m_,n_,u_,x_Symbol) :=
      If(OddQ(n/GCD(m,n)) && PosQ(a/b),
        With([g=GCD(m,n),r=Numerator(Rt(a/b,n/GCD(m,n))),s=Denominator(Rt(a/b,n/GCD(m,n)))],
        Module([k],
        If(CoprimeQ(m+g,n),
          Sum(r*(-r/s)^(m/g)*(-1)^(-2*k*m/n)/(a*n*(r+(-1)^(2*k*g/n)*s*u^g)),[k,1,n/g]),
        Sum(r*(-r/s)^(m/g)*(-1)^(2*k*(m+g)/n)/(a*n*((-1)^(2*k*g/n)*r+s*u^g)),[k,1,n/g])))),
      With([g=GCD(m,n),r=Numerator(Rt(-a/b,n/GCD(m,n))),s=Denominator(Rt(-a/b,n/GCD(m,n)))],
      If(n/g==2,
        s/(2*b*(r+s*u^g)) - s/(2*b*(r-s*u^g)),
      Module([k],
      If(CoprimeQ(m+g,n),
        Sum(r*(r/s)^(m/g)*(-1)^(-2*k*m/n)/(a*n*(r-(-1)^(2*k*g/n)*s*u^g)),[k,1,n/g]),
      Sum(r*(r/s)^(m/g)*(-1)^(2*k*(m+g)/n)/(a*n*((-1)^(2*k*g/n)*r-s*u^g)),[k,1,n/g]))))))


    #= ::Subsection::Closed:: =#
    #=SmartApart(u,x)=#


    #= SmartApart(u,x)*returns*the*partial*fraction*expansion*of*u*wrt*x, avoiding*the
    	strange*behavior*in*the*built-in*Apart*function*that*rationalizes*denominators
        involving*fractional*powers*resulting*in*hard*to*integrate*expressions. =#
    SmartApart(u_,x_Symbol) :=
      With([alst=MakeAssocList(u,x)],
      With([tmp=KernelSubst(Apart(GensymSubst(u,x,alst)),x,alst)],
      If(tmp===Indeterminate, u, tmp)))

    SmartApart(u_,v_,x_Symbol) :=
      With([alst=MakeAssocList(u,x)],
      With([tmp=KernelSubst(Apart(GensymSubst(u,x,alst),v),x,alst)],
      If(tmp===Indeterminate, u, tmp)))


    #= MakeAssocList(u,x,alst)*returns*an*association*list*of*gensymed*symbols*with*the*nonatomic
      parameters*of*a*u*that*are*not*integer*powers, products*or*sums. =#
    MakeAssocList(u_,x_Symbol,alst_List:[]) :=
      If(AtomQ(u),
        alst,
      If(IntegerPowerQ(u),
        MakeAssocList(Part(u, 1),x,alst),
      If(ProductQ(u) || SumQ(u),
        MakeAssocList(Rest(u),x,MakeAssocList(First(u),x,alst)),
      If(FreeQ(u,x),
        With([tmp=Select(alst,MFunction(Part(Symbol("#"), 2)===u),1)],
        If(tmp===[],
          Append(alst,[Unique("Rubi"),u]),
        alst)),
      alst))))


    #= GensymSubst(u,x,alst)*returns*u*with*the*kernels*in*alst*free*of*x*replaced*by*gensymed*names. =#
    GensymSubst(u_,x_Symbol,alst_List) :=
      If(AtomQ(u),
        u,
      If(IntegerPowerQ(u),
        GensymSubst(Part(u, 1),x,alst)^Part(u, 2),
      If(ProductQ(u) || SumQ(u),
        Map(MFunction(GensymSubst(Symbol("#1"),x,alst)),u),
      If(FreeQ(u,x),
        With([tmp=Select(alst,MFunction(Part(Symbol("#"), 2)===u),1)],
        If(tmp===[],
          u,
        Part(tmp, 1,1))),
      u))))


    #= KernelSubst(u,x,alst)*returns*u*with*the*gensymed*names*in*alst*replaced*by*kernels*free*of*x. =#
    KernelSubst(u_,x_Symbol,alst_List) :=
      If(AtomQ(u),
        With([tmp=Select(alst,MFunction(Part(Symbol("#"), 1)===u),1)],
        If(tmp===[],
          u,
        Part(tmp, 1,2))),
      If(IntegerPowerQ(u),
        With([tmp=KernelSubst(Part(u, 1),x,alst)],
        If(Part(u, 2)<0 && EqQ(tmp,0),
          Indeterminate,
        tmp^Part(u, 2))),
      If(ProductQ(u) || SumQ(u),
        Map(MFunction(KernelSubst(Symbol("#1"),x,alst)),u),
      u)))


    #= ::Subsection::Closed:: =#
    #=ExpandAlgebraicFunction=#


    ExpandAlgebraicFunction(u_Plus*v_,x_Symbol) :=
      Map(MFunction(Symbol("#1")*v),u) <--
    Not(FreeQ(u,x))

    ExpandAlgebraicFunction(u_Plus^n_*v_',x_Symbol) :=
      With([w=expand(u^n,x)],
      Map(MFunction(Symbol("#1")*v),w) <--
     SumQ(w)) <--
    IGtQ(n,0) && Not(FreeQ(u,x))


    #= ::Subsection::Closed:: =#
    #=UnifySum(u,x)=#


    #= UnifySum(u,x)*returns*u*with*terms*having*indentical*nonfree*factors*of*x*collected*into*a*single*term. =#
    UnifySum(u_,x_Symbol) :=
      If(SumQ(u),
        Apply(Plus,UnifyTerms(Apply(List,u),x)),
      SimplifyTerm(u,x))


    #= lst*is*a*list*of*terms. =#
    #= UnifyTerms(lst,x)*returns*lst*with*terms*collected*into*a*single*element. =#
    UnifyTerms(lst_,x_) :=
      If(lst===[],
        lst,
      UnifyTerm(First(lst),UnifyTerms(Rest(lst),x),x))


    UnifyTerm(term_,lst_,x_) :=
      If(lst===[],
        [term],
      With([tmp=Simplify(First(lst)/term)],
      If(FreeQ(tmp,x),
        Prepend(Rest(lst),(1+tmp)*term),
      Prepend(UnifyTerm(term,Rest(lst),x),First(lst)))))


    #= ::Subsection::Closed:: =#
    #=ExpandLinearProduct(v,u,a,b,x)=#


    #= If*u*is*a*polynomial*in*x, ExpandLinearProduct(v,u,a,b,x)*expands*v*u*into*a*sum*of*terms*of*the*form*c*v*(a+b*x)^n*where*n*is*a*positive*integer. =#
    ExpandLinearProduct(v_,u_,a_,b_,x_Symbol) :=
      Module([lst],
      lst=CoefficientList(ReplaceAll(u,x=>(x-a)/b),x);
      lst=Map(MFunction(SimplifyTerm(Symbol("#1"),x)),lst);
      Module([ii],
      Sum(v*lst((ii))*(a+b*x)^(ii-1),[ii,1,Length(lst)]))) <--
    FreeQ([a,b],x) && PolynomialQ(u,x)


    #= ::Subsection::Closed:: =#
    #=ExpandTrigExpand(u,F,v,m,n,x)=#


    ExpandTrigExpand(u_,F_,v_,m_,n_,x_Symbol) :=
      With([w=ReplaceAll(expand(TrigExpand(F(n*x))^m,x),x=>v)],
      If(SumQ(w),
        Map(MFunction(u*Symbol("#1")),w),
      u*w))


    #= ::Subsection::Closed:: =#
    #=ExpandTrigReduce(u,v,x)=#


    ExpandTrigReduce(u_,v_,x_Symbol) :=
      With([w=ExpandTrigReduce(v,x)],
      If(SumQ(w),
        Map(MFunction(u*Symbol("#1")),w),
      u*w))


    #= This*is*necessary, because*TrigReduce*expands*sinh(n+v)*and*cosh(n+v)*to*exponential*form*if*n*is*a*number. =#
    ExpandTrigReduce(u_'*F_(n_+v_')^m_',x_Symbol) :=
      Module([nn],
      ExpandTrigReduce(u*F(nn+v)^m,x) ← nn=>n)<--
    MemberQ([sinh,cosh],F) && IntegerQ(m) && RationalQ(n)

    ExpandTrigReduce(u_,x_Symbol) :=
      ExpandTrigReduceAux(u,x)


    ExpandTrigReduceAux(u_,x_Symbol) :=
      With([v=expand(TrigReduce(u))],
      If(SumQ(v),
        Map(MFunction(NormalizeTrigReduce(Symbol("#1"),x)),v),
      NormalizeTrigReduce(v,x)))


    NormalizeTrigReduce(a_'*F_(u_)^n_',x_Symbol) :=
      a*F(ExpandToSum(u,x))^n <--
    FreeQ([F,a,n],x) && PolynomialQ(u,x) && Exponent(u,x)>0

    NormalizeTrigReduce(u_,x_Symbol) := u


    #= ::Subsection::Closed:: =#
    #=ExpandTrigToExp(u,v,x)=#


    Clear(ExpandTrigToExp);

    ExpandTrigToExp(u_,x_Symbol) := ExpandTrigToExp(1,u,x)


    ExpandTrigToExp(u_,v_,x_Symbol) :=
      Module([w=TrigToExp(v)],
      w=If(SumQ(w), Map(MFunction(SimplifyIntegrand(u*Symbol("#1"),x)),w), SimplifyIntegrand(u*w,x));
      ExpandIntegrand(FreeFactors(w,x),NonfreeFactors(w,x),x))


    #= ::Section::Closed:: =#
    #=Distribution*functions=#


    #= ::Subsection::Closed:: =#
    #=Distrib=#


    #= Distrib(u,v)*returns*the*sum*of*u*times*each*term*of*v. =#
    Distrib(u_,v_) :=
      If(SumQ(v),
        Map(MFunction(u*Symbol("#1")),v),
      u*v)


    #= ::Subsection::Closed:: =#
    #=Dist=#


    #= Dist(u,v)*returns*the*sum*of*u*times*each*term*of*v, provided*v*is*free*of*Antiderivative. =#
    DownValues(Dist)=[];
    UpValues(Dist)=[];

    Dist ↶ Dist(u_,v_,x_)+Dist(w_,v_,x_) :=
      If(EqQ(u+w,0),
        0,
      Dist(u+w,v,x))

    Dist ↶ Dist(u_,v_,x_)-Dist(w_,v_,x_) :=
      If(EqQ(u-w,0),
        0,
      Dist(u-w,v,x))

    Dist ↶ w_*Dist(u_,v_,x_) :=
      Dist(w*u,v,x) <--
    w!==-1

    Dist(u_,Defer(Dist)(v_,w_,x_),x_) :=
      Dist(u*v,w,x)

    Dist(u_,v_*w_,x_) :=
      Dist(u*v,w,x) <--
    DOLLARShowSteps===true && IntegralFreeQ(v) && Not(IntegralFreeQ(w))

    Dist(u_,v_,x_) :=
      If(u===1,
        v,
      If(u===0,
        Print("*** Warning ***:  Dist(0,",v,",",x,")");
        0,
      If(NumericFactor(u)<0 && NumericFactor(-u)>0,
        -Dist(-u,v,x),
      If(SumQ(v),
        Map(MFunction(Dist(u,Symbol("#1"),x)),v),
      If(IntegralFreeQ(v),
    #=  Simp(Simp(u,x)*v,x), =#
        Simp(u*v,x),
    #=If(DOLLARShowSteps!==true,
        Simp(u*v,x),
      Module([w=Simp(u,x)],
      If(w!==u,
        Dist(w,v,x), =#
      With([w=Simp(u*x^2,x)/x^2],
      If(w!==u && FreeQ(w,x) && w===Simp(w,x) && w===Simp(w*x^2,x)/x^2,
        Dist(w,v,x),
      If(DOLLARShowSteps!==true,
        Simp(u*v,x),
      Defer(Dist)(u,v,x)))))))))


    #= ::Subsection::Closed:: =#
    #=DistributeDegree=#


    #= DistributeDegree(u,m)*returns*the*product*of*the*factors*of*u*each*raised*to*the*mth*degree. =#
    DistributeDegree(u_,m_) :=
      If(AtomQ(u),
        u^m,
      If(PowerQ(u),
        Part(u, 1)^(Part(u, 2)*m),
      If(ProductQ(u),
        Map(MFunction(DistributeDegree(Symbol("#1"),m)),u),
      u^m)))


    #= ::Section::Closed:: =#
    #=MFunction*of*functions=#


    #= ::Subsection::Closed:: =#
    #=FunctionOfPower=#


    #= FunctionOfPower(u,x)*returns*the*gcd*of*the*integer*degrees*of*x*in*u. =#
    #= FunctionOfPower(u_,x_Symbol) :=
      FunctionOfPower(u,nothing,x)

    FunctionOfPower(u_,n_,x_) :=
      If(FreeQ(u,x),
        n,
      If(u===x,
        1,
      If(PowerQ(u) && Part(u, 1)===x && IntegerQ(Part(u, 2)),
        If(n===nothing,
          Part(u, 2),
        GCD(n,Part(u, 2))),
      Module([tmp=n],
        Scan(MFunction(tmp=FunctionOfPower(Symbol("#1"),tmp,x)),u);
        tmp)))) =#


    #= ::Subsection::Closed:: =#
    #=FunctionOfLinear=#


    #= If*u*(x)*is*equivalent*to*an*expression*of*the*form*f*(a+b*x)*and*not*the*case*that*a==0*and
    	b==1, FunctionOfLinear(u,x)*returns*the*list [f*(x),a,b]; else*it*returns*false. =#
    FunctionOfLinear(u_,x_Symbol) :=
      With([lst=FunctionOfLinear(u,false,false,x,false)],
      If(AtomQ(lst) || FalseQ(Part(lst, 1)) || Part(lst, 1)===0 && Part(lst, 2)===1,
        false,
      [FunctionOfLinearSubst(u,Part(lst, 1),Part(lst, 2),x),Part(lst, 1),Part(lst, 2)]))


    FunctionOfLinear(u_,a_,b_,x_,flag_) :=
      If(FreeQ(u,x),
        [a,b],
      If(CalculusQ(u),
        false,
      If(LinearQ(u,x),
        If(FalseQ(a),
          [Coefficient(u,x,0),Coefficient(u,x,1)],
        With([lst=CommonFactors([b,Coefficient(u,x,1)])],
        If(EqQ(Coefficient(u,x,0),0) && Not(flag),
          [0,Part(lst, 1)],
        If(EqQ(b*Coefficient(u,x,0)-a*Coefficient(u,x,1),0),
          [a/Part(lst, 2),Part(lst, 1)],
        [0,1])))),
      If(PowerQ(u) && FreeQ(Part(u, 1),x),
        FunctionOfLinear(log(Part(u, 1))*Part(u, 2),a,b,x,false),
      Module([lst],
      If(ProductQ(u) && NeQ(Part(lst=MonomialFactor(u, x), 1),0),
        If(false && IntegerQ(Part(lst, 1)) && Part(lst, 1)!=-1 && FreeQ(Part(lst, 2),x),
          If(RationalQ(LeadFactor(Part(lst, 2))) && LeadFactor(Part(lst, 2))<0,
            FunctionOfLinear(DivideDegreesOfFactors(-Part(lst, 2),Part(lst, 1))*x,a,b,x,false),
          FunctionOfLinear(DivideDegreesOfFactors(Part(lst, 2),Part(lst, 1))*x,a,b,x,false)),
        false),
      lst=[a,b];
      Catch(
      Scan(MFunction(lst=FunctionOfLinear(Symbol("#1"),Part(lst, 1),Part(lst, 2),x,SumQ(u));
    			If(AtomQ(lst),Throw(false))),u);
      lst)))))))


    FunctionOfLinearSubst(u_,a_,b_,x_) :=
      If(FreeQ(u,x),
        u,
      If(LinearQ(u,x),
        Module([tmp=Coefficient(u,x,1)],
        tmp=If(tmp===b, 1, tmp/b);
        Coefficient(u,x,0)-a*tmp+tmp*x),
      If(PowerQ(u) && FreeQ(Part(u, 1),x),
        ℯ^FullSimplify(FunctionOfLinearSubst(log(Part(u, 1))*Part(u, 2),a,b,x)),
      Module([lst],
      If(ProductQ(u) && NeQ(Part(lst=MonomialFactor(u, x), 1),0),
        If(RationalQ(LeadFactor(Part(lst, 2))) && LeadFactor(Part(lst, 2))<0,
          -FunctionOfLinearSubst(DivideDegreesOfFactors(-Part(lst, 2),Part(lst, 1))*x,a,b,x)^Part(lst, 1),
        FunctionOfLinearSubst(DivideDegreesOfFactors(Part(lst, 2),Part(lst, 1))*x,a,b,x)^Part(lst, 1)),
      Map(MFunction(FunctionOfLinearSubst(Symbol("#1"),a,b,x)),u))))))


    #= DivideDegreesOfFactors(u,n)*returns*the*product*of*the*base*of*the*factors*of*u*raised*to
    	the*degree*of*the*factors*divided*by*n. =#
    DivideDegreesOfFactors(u_,n_) :=
      If(ProductQ(u),
        Map(MFunction(LeadBase(Symbol("#1"))^(LeadDegree(Symbol("#1"))/n)),u),
      LeadBase(u)^(LeadDegree(u)/n))


    #= ::Subsection::Closed:: =#
    #=FunctionOfInverseLinear=#


    #= If*u*is*a*function*of*an*inverse*linear*binomial*of*the*form*1/(a+b*x),
    	FunctionOfInverseLinear(u,x)*returns*the*list [a,b]; else*it*returns*false. =#
    FunctionOfInverseLinear(u_,x_Symbol) :=
      FunctionOfInverseLinear(u,nothing,x)

    FunctionOfInverseLinear(u_,lst_,x_) :=
      If(FreeQ(u,x),
        lst,
      If(u===x,
        false,
      If(QuotientOfLinearsQ(u,x),
        With([tmp=Drop(QuotientOfLinearsParts(u,x),2)],
        If(Part(tmp, 2)===0,
          false,
        If(lst===nothing,
          tmp,
        If(EqQ(Part(lst, 1)*Part(tmp, 2)-Part(lst, 2)*Part(tmp, 1),0),
          lst,
        false)))),
      If(CalculusQ(u),
        false,
      Module([tmp=lst],Catch(
      Scan(MFunction(If(AtomQ(tmp=FunctionOfInverseLinear(Symbol("#1"),tmp,x)),Throw(false))),u);
      tmp))))))


    #= ::Subsection::Closed:: =#
    #=FunctionOfExponential=#


    #= FunctionOfExponentialQ(u,x)*returns*true*iff*u*is*a*function*of*F^v*where*F*is*a*constant*and*v*is*linear*in*x, =#
    #= and*such*an*exponential*explicitly*occurs*in*u*(i.e. not*just*implicitly*in*hyperbolic*functions). =#
    FunctionOfExponentialQ(u_,x_Symbol) :=
      Block([DOLLARbaseDOLLAR=nothing,DOLLARexponDOLLAR=nothing,DOLLARexponFlagDOLLAR=false],
        FunctionOfExponentialTest(u,x) && DOLLARexponFlagDOLLAR)


    #= u*is*a*function*of*F^v*where*v*is*linear*in*x.  FunctionOfExponential(u,x)*returns*F^v. =#
    FunctionOfExponential(u_,x_Symbol) :=
      Block([DOLLARbaseDOLLAR=nothing,DOLLARexponDOLLAR=nothing,DOLLARexponFlagDOLLAR=false],
        FunctionOfExponentialTest(u,x);
        DOLLARbaseDOLLAR^DOLLARexponDOLLAR)


    #= u*is*a*function*of*F^v*where*v*is*linear*in*x.  FunctionOfExponentialFunction(u,x)*returns*u*with*F^v*replaced*by*x. =#
    FunctionOfExponentialFunction(u_,x_Symbol) :=
      Block([DOLLARbaseDOLLAR=nothing,DOLLARexponDOLLAR=nothing,DOLLARexponFlagDOLLAR=false],
        FunctionOfExponentialTest(u,x);
        SimplifyIntegrand(FunctionOfExponentialFunctionAux(u,x),x))


    #= u*is*a*function*of*F^v*where*v*is*linear*in*x, and*the*fluid*variables DOLLARbaseDOLLAR=F*and DOLLARexponDOLLAR=v. =#
    #= FunctionOfExponentialFunctionAux(u,x)*returns*u*with*F^v*replaced*by*x. =#
    FunctionOfExponentialFunctionAux(u_,x_) :=
      If(AtomQ(u),
        u,
      If(PowerQ(u) && FreeQ(Part(u, 1),x) && LinearQ(Part(u, 2),x),
        If(EqQ(Coefficient(DOLLARexponDOLLAR,x,0),0),
          Part(u, 1)^Coefficient(Part(u, 2),x,0)*x^FullSimplify(log(Part(u, 1))*Coefficient(Part(u, 2),x,1)/(log(DOLLARbaseDOLLAR)*Coefficient(DOLLARexponDOLLAR,x,1))),
        x^FullSimplify(log(Part(u, 1))*Coefficient(Part(u, 2),x,1)/(log(DOLLARbaseDOLLAR)*Coefficient(DOLLARexponDOLLAR,x,1)))),
      If(HyperbolicQ(u) && LinearQ(Part(u, 1),x),
        Module([tmp],
        tmp=x^FullSimplify(Coefficient(Part(u, 1),x,1)/(log(DOLLARbaseDOLLAR)*Coefficient(DOLLARexponDOLLAR,x,1)));
        Switch(Head(u),
          sinh, tmp/2-1/(2*tmp),
          cosh, tmp/2+1/(2*tmp),
          tanh, (tmp-1/tmp)/(tmp+1/tmp),
          coth, (tmp+1/tmp)/(tmp-1/tmp),
          sech, 2/(tmp+1/tmp),
          csch, 2/(tmp-1/tmp))),
      If(PowerQ(u) && FreeQ(Part(u, 1),x) && SumQ(Part(u, 2)),
        FunctionOfExponentialFunctionAux(Part(u, 1)^First(Part(u, 2)),x)*FunctionOfExponentialFunctionAux(Part(u, 1)^Rest(Part(u, 2)),x),
      Map(MFunction(FunctionOfExponentialFunctionAux(Symbol("#1"),x)),u)))))


    #= FunctionOfExponentialTest(u,x)*returns*true*iff*u*is*a*function*of*F^v*where*F*is*a*constant*and*v*is*linear*in*x. =#
    #= Before*it*is*called, the*fluid*variables DOLLARbaseDOLLAR and DOLLARexponDOLLAR should*be*set*to*nothing*and DOLLARexponFlagDOLLAR to*false. =#
    #= If*u*is*a*function*of*F^v, DOLLARbaseDOLLAR and DOLLARexponDOLLAR are*set*to*F*and*v, respectively. =#
    #= If*an*explicit*exponential*occurs*in*u, DOLLARexponFlagDOLLAR is*set*to*true. =#
    FunctionOfExponentialTest(u_,x_) :=
      If(FreeQ(u,x),
        true,
      If(u===x || CalculusQ(u),
        false,
      If(PowerQ(u) && FreeQ(Part(u, 1),x) && LinearQ(Part(u, 2),x),
        DOLLARexponFlagDOLLAR=true;
        FunctionOfExponentialTestAux(Part(u, 1),Part(u, 2),x),
      If(HyperbolicQ(u) && LinearQ(Part(u, 1),x),
        FunctionOfExponentialTestAux(ℯ,Part(u, 1),x),
      If(PowerQ(u) && FreeQ(Part(u, 1),x) && SumQ(Part(u, 2)),
        FunctionOfExponentialTest(Part(u, 1)^First(Part(u, 2)),x) && FunctionOfExponentialTest(Part(u, 1)^Rest(Part(u, 2)),x),
      Catch(Scan(MFunction(If(Not(FunctionOfExponentialTest(Symbol("#1"),x)),Throw(false))),u); true))))))


    FunctionOfExponentialTestAux(base_,expon_,x_) :=
      If(DOLLARbaseDOLLAR===nothing,
        DOLLARbaseDOLLAR=base;
        DOLLARexponDOLLAR=expon;
        true,
      Module([tmp],
      tmp=FullSimplify(log(base)*Coefficient(expon,x,1)/(log(DOLLARbaseDOLLAR)*Coefficient(DOLLARexponDOLLAR,x,1)));
      If(Not(RationalQ(tmp)),
        false,
      If(EqQ(Coefficient(DOLLARexponDOLLAR,x,0),0) || NeQ(tmp,FullSimplify(log(base)*Coefficient(expon,x,0)/(log(DOLLARbaseDOLLAR)*Coefficient(DOLLARexponDOLLAR,x,0)))),
        ( If(IGtQ(base,0) && IGtQ(DOLLARbaseDOLLAR,0) && base<DOLLARbaseDOLLAR,
            DOLLARbaseDOLLAR=base;
            DOLLARexponDOLLAR=expon;
            tmp=1/tmp) );
        DOLLARexponDOLLAR=Coefficient(DOLLARexponDOLLAR,x,1)*x/Denominator(tmp);
        If(tmp<0 && NegQ(Coefficient(DOLLARexponDOLLAR,x,1)),
          DOLLARexponDOLLAR=-DOLLARexponDOLLAR;
          true,
        true),
      ( If(IGtQ(base,0) && IGtQ(DOLLARbaseDOLLAR,0) && base<DOLLARbaseDOLLAR,
          DOLLARbaseDOLLAR=base;
          DOLLARexponDOLLAR=expon;
          tmp=1/tmp) );
    #=DOLLARexponDOLLAR=If(SumQ(DOLLARexponDOLLAR), Map(MFunction(Symbol("#1")/Denominator(tmp)),DOLLARexponDOLLAR), DOLLARexponDOLLAR/Denominator(tmp)); =#
      DOLLARexponDOLLAR=DOLLARexponDOLLAR/Denominator(tmp);
      If(tmp<0 && NegQ(Coefficient(DOLLARexponDOLLAR,x,1)),
        DOLLARexponDOLLAR=-DOLLARexponDOLLAR;
        true,
      true)))))


    #= ::Subsection::Closed:: =#
    #=FunctionOfTrigOfLinearQ=#


    #= If*u*is*an*algebraic*function*of*trig*functions*of*a*linear*function*of*x,
        FunctionOfTrigOfLinearQ(u,x)*returns*true; else*it*returns*false. =#
    FunctionOfTrigOfLinearQ(u_,x_Symbol) :=
      If(MatchQ(u,(c_'+d_'*x)^m_'*(a_'+b_'*trig_(e_'+f_'*x))^n_' <-- FreeQ([a,b,c,d,e,f,m,n],x) && (TrigQ(trig) || HyperbolicQ(trig))),
        true,
      Not(MemberQ([nothing, false], FunctionOfTrig(u,nothing,x))) && AlgebraicTrigFunctionQ(u,x))


    #= If*u*is*a*function*of*trig*functions*of*v*where*v*is*a*linear*function*of*x,
    	FunctionOfTrig(u,x)*returns*v; else*it*returns*false. =#
    FunctionOfTrig(u_,x_Symbol) :=
      With([v=FunctionOfTrig(ActivateTrig(u),nothing,x)],
      If(v===nothing, false, v))

    FunctionOfTrig(u_,v_,x_) :=
      If(AtomQ(u),
        If(u===x,
          false,
        v),
      If(TrigQ(u) && LinearQ(Part(u, 1),x),
        If(v===nothing,
          Part(u, 1),
        With([a=Coefficient(v,x,0),b=Coefficient(v,x,1),c=Coefficient(Part(u, 1),x,0),d=Coefficient(Part(u, 1),x,1)],
        If(EqQ(a*d-b*c,0) && RationalQ(b/d),
          a/Numerator(b/d)+b*x/Numerator(b/d),
        false))),
      If(HyperbolicQ(u) && LinearQ(Part(u, 1),x),
        If(v===nothing,
          im*Part(u, 1),
        With([a=Coefficient(v,x,0),b=Coefficient(v,x,1),c=im*Coefficient(Part(u, 1),x,0),d=im*Coefficient(Part(u, 1),x,1)],
        If(EqQ(a*d-b*c,0) && RationalQ(b/d),
          a/Numerator(b/d)+b*x/Numerator(b/d),
        false))),
      If(CalculusQ(u),
        false,
      Module([w=v],Catch(
      Scan(MFunction(If(FalseQ(w=FunctionOfTrig(Symbol("#1"),w,x)),Throw(false))),u);
      w))))))


    #= If*u*is*algebraic*function*of*trig*functions, AlgebraicTrigFunctionQ(u,x)*returns*true; else*it*returns*false. =#
    AlgebraicTrigFunctionQ(u_,x_Symbol) :=
      If(AtomQ(u),
        true,
      If(TrigQ(u) && LinearQ(Part(u, 1),x),
        true,
      If(HyperbolicQ(u) && LinearQ(Part(u, 1),x),
        true,
      If(PowerQ(u) && FreeQ(Part(u, 2),x),
        AlgebraicTrigFunctionQ(Part(u, 1),x),
      If(ProductQ(u) || SumQ(u),
        Catch(Scan(MFunction(If(Not(AlgebraicTrigFunctionQ(Symbol("#1"),x)),Throw(false))),u); true),
      false)))))


    #= ::Subsection::Closed:: =#
    #=FunctionOfHyperbolic=#


    #= If*u*is*a*function*of*hyperbolic*trig*functions*of*v*where*v*is*linear*in*x,
    	FunctionOfHyperbolic(u,x)*returns*v; else*it*returns*false. =#
    FunctionOfHyperbolic(u_,x_Symbol) :=
      With([v=FunctionOfHyperbolic(u,nothing,x)],
      If(v===nothing, false, v))

    FunctionOfHyperbolic(u_,v_,x_) :=
      If(AtomQ(u),
        If(u===x,
          false,
        v),
      If(HyperbolicQ(u) && LinearQ(Part(u, 1),x),
        If(v===nothing,
          Part(u, 1),
        With([a=Coefficient(v,x,0),b=Coefficient(v,x,1),c=Coefficient(Part(u, 1),x,0),d=Coefficient(Part(u, 1),x,1)],
        If(EqQ(a*d-b*c,0) && RationalQ(b/d),
          a/Numerator(b/d)+b*x/Numerator(b/d),
        false))),
      If(CalculusQ(u),
        false,
      Module([w=v],Catch(
      Scan(MFunction(If(FalseQ(w=FunctionOfHyperbolic(Symbol("#1"),w,x)),Throw(false))),u);
      w)))))


    #= ::Subsection::Closed:: =#
    #=FunctionOfQ=#


    #= v*is*a*function*of*x.
    	If*u*is*a*function*of*v, FunctionOfQ(v,u,x)*returns*true; else*it*returns*false. =#
    FunctionOfQ(v_,u_,x_Symbol,PureFlag_:false) :=
      If(FreeQ(u,x),
        false,
      If(AtomQ(v),
        true,
      If(Not(InertTrigFreeQ(u)),
        FunctionOfQ(v,ActivateTrig(u),x,PureFlag),
      If(ProductQ(v) && NeQ(FreeFactors(v,x),1),
        FunctionOfQ(NonfreeFactors(v,x),u,x,PureFlag),

      If(PureFlag, Switch(Head(v),
        sin, PureFunctionOfSinQ(u,Part(v, 1),x),
        cos, PureFunctionOfCosQ(u,Part(v, 1),x),
        tan, PureFunctionOfTanQ(u,Part(v, 1),x),
        cot, PureFunctionOfCotQ(u,Part(v, 1),x),
        sec, PureFunctionOfCosQ(u,Part(v, 1),x),
        csc, PureFunctionOfSinQ(u,Part(v, 1),x),

        sinh, PureFunctionOfSinhQ(u,Part(v, 1),x),
        cosh, PureFunctionOfCoshQ(u,Part(v, 1),x),
        tanh, PureFunctionOfTanhQ(u,Part(v, 1),x),
        coth, PureFunctionOfCothQ(u,Part(v, 1),x),
        sech, PureFunctionOfCoshQ(u,Part(v, 1),x),
        csch, PureFunctionOfSinhQ(u,Part(v, 1),x),
        _, FunctionOfExpnQ(u,v,x)!==false),

      Switch(Head(v),
        sin, FunctionOfSinQ(u,Part(v, 1),x),
        cos, FunctionOfCosQ(u,Part(v, 1),x),
        tan, FunctionOfTanQ(u,Part(v, 1),x),
        cot, FunctionOfTanQ(u,Part(v, 1),x),
        sec, FunctionOfCosQ(u,Part(v, 1),x),
        csc, FunctionOfSinQ(u,Part(v, 1),x),

        sinh, FunctionOfSinhQ(u,Part(v, 1),x),
        cosh, FunctionOfCoshQ(u,Part(v, 1),x),
        tanh, FunctionOfTanhQ(u,Part(v, 1),x),
        coth, FunctionOfTanhQ(u,Part(v, 1),x),
        sech, FunctionOfCoshQ(u,Part(v, 1),x),
        csch, FunctionOfSinhQ(u,Part(v, 1),x),
        _, FunctionOfExpnQ(u,v,x)!==false))))))


    FunctionOfExpnQ(u_,v_,x_) :=
      If(u===v,
        1,
      If(AtomQ(u),
        If(u===x,
          false,
        0),
      If(CalculusQ(u),
        false,
      If(PowerQ(u) && FreeQ(Part(u, 2),x),
        If(EqQ(Part(u, 1),v),
          If(IntegerQ(Part(u, 2)), Part(u, 2), 1),
        If(PowerQ(v) && FreeQ(Part(v, 2),x) && EqQ(Part(u, 1),Part(v, 1)),
          If(RationalQ(Part(v, 2)),
            If(RationalQ(Part(u, 2)) && IntegerQ(Part(u, 2)/Part(v, 2)) && (Part(v, 2)>0 || Part(u, 2)<0), Part(u, 2)/Part(v, 2), false),
          If(IntegerQ(Simplify(Part(u, 2)/Part(v, 2))), Simplify(Part(u, 2)/Part(v, 2)), false)),
        FunctionOfExpnQ(Part(u, 1),v,x))),
      If(ProductQ(u) && NeQ(FreeFactors(u,x),1),
        FunctionOfExpnQ(NonfreeFactors(u,x),v,x),
      If(ProductQ(u) && ProductQ(v),
        Module([deg1=FunctionOfExpnQ(First(u),First(v),x),deg2],
        If(deg1===false,
          false,
        deg2=FunctionOfExpnQ(Rest(u),Rest(v),x);
        If(deg1===deg2 && FreeQ(Simplify(u/v^deg1),x),
          deg1,
        false))),
      With([lst=Map(MFunction(FunctionOfExpnQ(Symbol("#1"),v,x)),Apply(List,u))],
      If(MemberQ(lst,false),
        false,
      Apply(GCD,lst)))))))))


    #= ::Subsubsection::Closed:: =#
    #=Pure*function*of*trig*functions*predicates=#


    #= If*u*is*a*pure*function*of*sin(v)*and/or*csc(v), PureFunctionOfSinQ(u,v,x)*returns*true;
    	else*it*returns*false. =#
    PureFunctionOfSinQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(TrigQ(u) && EqQ(Part(u, 1),v),
        Head(u)===sin || Head(u)===csc,
      Catch(Scan(MFunction(If(Not(PureFunctionOfSinQ(Symbol("#1"),v,x)),Throw(false))),u);true))))


    #= If*u*is*a*pure*function*of*cos(v)*and/or*sec(v), PureFunctionOfCosQ(u,v,x)*returns*true;
    	else*it*returns*false. =#
    PureFunctionOfCosQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(TrigQ(u) && EqQ(Part(u, 1),v),
        Head(u)===cos || Head(u)===sec,
      Catch(Scan(MFunction(If(Not(PureFunctionOfCosQ(Symbol("#1"),v,x)),Throw(false))),u);true))))


    #= If*u*is*a*pure*function*of*tan(v)*and/or*cot(v), PureFunctionOfTanQ(u,v,x)*returns*true;
    	else*it*returns*false. =#
    PureFunctionOfTanQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(TrigQ(u) && EqQ(Part(u, 1),v),
        Head(u)===tan || Head(u)===cot,
      Catch(Scan(MFunction(If(Not(PureFunctionOfTanQ(Symbol("#1"),v,x)),Throw(false))),u);true))))


    #= If*u*is*a*pure*function*of*cot(v), PureFunctionOfCotQ(u,v,x)*returns*true;
    	else*it*returns*false. =#
    PureFunctionOfCotQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(TrigQ(u) && EqQ(Part(u, 1),v),
        Head(u)===cot,
      Catch(Scan(MFunction(If(Not(PureFunctionOfCotQ(Symbol("#1"),v,x)),Throw(false))),u);true))))


    #= ::Subsubsection::Closed:: =#
    #=MFunction*of*trig*functions*predicates=#


    #= If*u*is*a*function*of*sin(v), FunctionOfSinQ(u,v,x)*returns*true; else*it*returns*false. =#
    FunctionOfSinQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(TrigQ(u) && IntegerQuotientQ(Part(u, 1),v),
        If(OddQuotientQ(Part(u, 1),v),
    #= Basis: If*m*odd, sin(m*v)^n*is*a*function*of*sin(v). =#
          Head(u)===sin || Head(u)===csc,
    #= Basis: If*m*even, cos(m*v)^n*is*a*function*of*sin(v). =#
        Head(u)===cos || Head(u)===sec),
      If(IntegerPowerQ(u) && TrigQ(Part(u, 1)) && IntegerQuotientQ(Part(u, 1,1),v),
        If(EvenQ(Part(u, 2)),
    #= Basis: If*m*integer*and*n*even, Trig(m*v)^n*is*a*function*of*sin(v). =#
          true,
        FunctionOfSinQ(Part(u, 1),v,x)),
      If(ProductQ(u),
        If(Head(Part(u, 1))===cos && Head(Part(u, 2))===sin && EqQ(Part(u, 1,1),v/2) && EqQ(Part(u, 2,1),v/2),
          FunctionOfSinQ(Drop(u,2),v,x),
        Module([lst],
        lst=FindTrigFactor(sin,csc,u,v,false);
        If(ListQ(lst) && EvenQuotientQ(Part(lst, 1),v),
    #= Basis: If*m*even*and*n*odd, sin(m*v)^n == cos(v)*u*where*u*is*a*function*of*sin(v). =#
          FunctionOfSinQ(cos(v)*Part(lst, 2),v,x),
        lst=FindTrigFactor(cos,sec,u,v,false);
        If(ListQ(lst) && OddQuotientQ(Part(lst, 1),v),
    #= Basis: If*m*odd*and*n*odd, cos(m*v)^n == cos(v)*u*where*u*is*a*function*of*sin(v). =#
          FunctionOfSinQ(cos(v)*Part(lst, 2),v,x),
        lst=FindTrigFactor(tan,cot,u,v,true);
        If(ListQ(lst),
    #= Basis: If*m*integer*and*n*odd, tan(m*v)^n == cos(v)*u*where*u*is*a*function*of*sin(v). =#
          FunctionOfSinQ(cos(v)*Part(lst, 2),v,x),
        Catch(Scan(MFunction(If(Not(FunctionOfSinQ(Symbol("#1"),v,x)),Throw(false))),u);true)))))),
      Catch(Scan(MFunction(If(Not(FunctionOfSinQ(Symbol("#1"),v,x)),Throw(false))),u);true))))))


    #= If*u*is*a*function*of*cos(v), FunctionOfCosQ(u,v,x)*returns*true; else*it*returns*false. =#
    FunctionOfCosQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(TrigQ(u) && IntegerQuotientQ(Part(u, 1),v),
    #= Basis: If*m*integer, cos(m*v)^n*is*a*function*of*cos(v). =#
        Head(u)===cos || Head(u)===sec,
      If(IntegerPowerQ(u) && TrigQ(Part(u, 1)) && IntegerQuotientQ(Part(u, 1,1),v),
        If(EvenQ(Part(u, 2)),
    #= Basis: If*m*integer*and*n*even, Trig(m*v)^n*is*a*function*of*cos(v). =#
          true,
        FunctionOfCosQ(Part(u, 1),v,x)),
      If(ProductQ(u),
        Module([lst],
        lst=FindTrigFactor(sin,csc,u,v,false);
        If(ListQ(lst),
    #= Basis: If*m*integer*and*n*odd, sin(m*v)^n == sin(v)*u*where*u*is*a*function*of*cos(v). =#
          FunctionOfCosQ(sin(v)*Part(lst, 2),v,x),
        lst=FindTrigFactor(tan,cot,u,v,true);
        If(ListQ(lst),
    #= Basis: If*m*integer*and*n*odd, tan(m*v)^n == sin(v)*u*where*u*is*a*function*of*cos(v). =#
          FunctionOfCosQ(sin(v)*Part(lst, 2),v,x),
        Catch(Scan(MFunction(If(Not(FunctionOfCosQ(Symbol("#1"),v,x)),Throw(false))),u);true)))),
      Catch(Scan(MFunction(If(Not(FunctionOfCosQ(Symbol("#1"),v,x)),Throw(false))),u);true))))))


    #= If*u*is*a*function*of*the*form*f(tan(v),cot(v))*where*f*is*independent*of*x,
    	FunctionOfTanQ(u,v,x)*returns*true; else*it*returns*false. =#
    FunctionOfTanQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(TrigQ(u) && IntegerQuotientQ(Part(u, 1),v),
        Head(u)===tan || Head(u)===cot || EvenQuotientQ(Part(u, 1),v),
      If(PowerQ(u) && EvenQ(Part(u, 2)) && TrigQ(Part(u, 1)) && IntegerQuotientQ(Part(u, 1,1),v),
        true,
      If(PowerQ(u) && EvenQ(Part(u, 2)) && SumQ(Part(u, 1)),
        FunctionOfTanQ(expand(Part(u, 1)^2),v,x),
      If(ProductQ(u),
        Module([lst=ReapList(Scan(MFunction(If(Not(FunctionOfTanQ(Symbol("#1"),v,x)),Sow(Symbol("#1")))),u))],
        If(lst===[],
          true,
        Length(lst)==2 && OddTrigPowerQ(Part(lst, 1),v,x) && OddTrigPowerQ(Part(lst, 2),v,x))),
      Catch(Scan(MFunction(If(Not(FunctionOfTanQ(Symbol("#1"),v,x)),Throw(false))),u);true)))))))

    OddTrigPowerQ(u_,v_,x_) :=
      If(MemberQ([sin,cos,sec,csc],Head(u)),
        OddQuotientQ(Part(u, 1),v),
      If(PowerQ(u),
        OddQ(Part(u, 2)) && OddTrigPowerQ(Part(u, 1),v,x),
      If(ProductQ(u),
        If(NeQ(FreeFactors(u,x),1),
          OddTrigPowerQ(NonfreeFactors(u,x),v,x),
        Module([lst=ReapList(Scan(MFunction(If(Not(FunctionOfTanQ(Symbol("#1"),v,x)),Sow(Symbol("#1")))),u))],
        If(lst===[],
          true,
        Length(lst)==1 && OddTrigPowerQ(Part(lst, 1),v,x)))),
      If(SumQ(u),
        Catch(Scan(MFunction(If(Not(OddTrigPowerQ(Symbol("#1"),v,x)),Throw(false))),u);true),
      false))))


    #= u*is*a*function*of*the*form*f(tan(v),cot(v))*where*f*is*independent*of*x.
    FunctionOfTanWeight(u,v,x)*returns*a*nonnegative*number*if*u*is*best*considered*a*function
    of*tan(v); else*it*returns*a*negative*number. =#
    FunctionOfTanWeight(u_,v_,x_) :=
      If(AtomQ(u),
        0,
      If(CalculusQ(u),
        0,
      If(TrigQ(u) && IntegerQuotientQ(Part(u, 1),v),
        If(Head(u)===tan && EqQ(Part(u, 1),v),
          1,
        If(Head(u)===cot && EqQ(Part(u, 1),v),
          -1,
        0)),
      If(PowerQ(u) && EvenQ(Part(u, 2)) && TrigQ(Part(u, 1)) && IntegerQuotientQ(Part(u, 1,1),v),
        If(Head(Part(u, 1))===tan || Head(Part(u, 1))===cos || Head(Part(u, 1))===sec,
          1,
        -1),
      If(ProductQ(u),
        If(Catch(Scan(MFunction(If(Not(FunctionOfTanQ(Symbol("#1"),v,x)),Throw(false))),u);true),
          Apply(Plus,Map(MFunction(FunctionOfTanWeight(Symbol("#1"),v,x)),Apply(List,u))),
        0),
      Apply(Plus,Map(MFunction(FunctionOfTanWeight(Symbol("#1"),v,x)),Apply(List,u))))))))


    #= If*u*(x)*is*equivalent*to*an*expression*of*the*form*f*(sin(v),cos(v),tan(v),cot(v),sec(v),csc(v))
    	where*f*is*independent*of*x, FunctionOfTrigQ(u,v,x)*returns*true; else*it*returns*false. =#
    FunctionOfTrigQ(u_,v_,x_Symbol) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(TrigQ(u) && IntegerQuotientQ(Part(u, 1),v),
        true,
      Catch(
        Scan(MFunction(If(Not(FunctionOfTrigQ(Symbol("#1"),v,x)),Throw(false))),u);
        true))))


    #= ::Subsubsection::Closed:: =#
    #=Pure*function*of*hyperbolic*functions*predicates=#


    #= If*u*is*a*pure*function*of*sinh(v)*and/or*csch(v), PureFunctionOfSinhQ(u,v,x)*returns*true;
    	else*it*returns*false. =#
    PureFunctionOfSinhQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(HyperbolicQ(u) && EqQ(Part(u, 1),v),
        Head(u)===sinh || Head(u)===csch,
      Catch(Scan(MFunction(If(Not(PureFunctionOfSinhQ(Symbol("#1"),v,x)),Throw(false))),u);true))))


    #= If*u*is*a*pure*function*of*cosh(v)*and/or*sech(v), PureFunctionOfCoshQ(u,v,x)*returns*true;
    	else*it*returns*false. =#
    PureFunctionOfCoshQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(HyperbolicQ(u) && EqQ(Part(u, 1),v),
        Head(u)===cosh || Head(u)===sech,
      Catch(Scan(MFunction(If(Not(PureFunctionOfCoshQ(Symbol("#1"),v,x)),Throw(false))),u);true))))


    #= If*u*is*a*pure*function*of*tanh(v)*and/or*coth(v), PureFunctionOfTanhQ(u,v,x)*returns*true;
    	else*it*returns*false. =#
    PureFunctionOfTanhQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(HyperbolicQ(u) && EqQ(Part(u, 1),v),
        Head(u)===tanh || Head(u)===coth,
      Catch(Scan(MFunction(If(Not(PureFunctionOfTanhQ(Symbol("#1"),v,x)),Throw(false))),u);true))))


    #= If*u*is*a*pure*function*of*coth(v), PureFunctionOfCothQ(u,v,x)*returns*true;
    	else*it*returns*false. =#
    PureFunctionOfCothQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(HyperbolicQ(u) && EqQ(Part(u, 1),v),
        Head(u)===coth,
      Catch(Scan(MFunction(If(Not(PureFunctionOfCothQ(Symbol("#1"),v,x)),Throw(false))),u);true))))


    #= ::Subsubsection::Closed:: =#
    #=MFunction*of*hyperbolic*functions*predicates=#


    #= If*u*is*a*function*of*sinh(v), FunctionOfSinhQ(u,v,x)*returns*true; else*it*returns*false. =#
    FunctionOfSinhQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(HyperbolicQ(u) && IntegerQuotientQ(Part(u, 1),v),
        If(OddQuotientQ(Part(u, 1),v),
    #= Basis: If*m*odd, sinh(m*v)^n*is*a*function*of*sinh(v). =#
          Head(u)===sinh || Head(u)===csch,
    #= Basis: If*m*even, cos(m*v)^n*is*a*function*of*sinh(v). =#
        Head(u)===cosh || Head(u)===sech),
      If(IntegerPowerQ(u) && HyperbolicQ(Part(u, 1)) && IntegerQuotientQ(Part(u, 1,1),v),
        If(EvenQ(Part(u, 2)),
    #= Basis: If*m*integer*and*n*even, Hyper(m*v)^n*is*a*function*of*sinh(v). =#
          true,
        FunctionOfSinhQ(Part(u, 1),v,x)),
      If(ProductQ(u),
        If(Head(Part(u, 1))===cosh && Head(Part(u, 2))===sinh && EqQ(Part(u, 1,1),v/2) && EqQ(Part(u, 2,1),v/2),
          FunctionOfSinhQ(Drop(u,2),v,x),
        Module([lst],
        lst=FindTrigFactor(sinh,csch,u,v,false);
        If(ListQ(lst) && EvenQuotientQ(Part(lst, 1),v),
    #= Basis: If*m*even*and*n*odd, sinh(m*v)^n == cosh(v)*u*where*u*is*a*function*of*sinh(v). =#
          FunctionOfSinhQ(cosh(v)*Part(lst, 2),v,x),
        lst=FindTrigFactor(cosh,sech,u,v,false);
        If(ListQ(lst) && OddQuotientQ(Part(lst, 1),v),
    #= Basis: If*m*odd*and*n*odd, cosh(m*v)^n == cosh(v)*u*where*u*is*a*function*of*sinh(v). =#
          FunctionOfSinhQ(cosh(v)*Part(lst, 2),v,x),
        lst=FindTrigFactor(tanh,coth,u,v,true);
        If(ListQ(lst),
    #= Basis: If*m*integer*and*n*odd, tanh(m*v)^n == cosh(v)*u*where*u*is*a*function*of*sinh(v). =#
          FunctionOfSinhQ(cosh(v)*Part(lst, 2),v,x),
        Catch(Scan(MFunction(If(Not(FunctionOfSinhQ(Symbol("#1"),v,x)),Throw(false))),u);true)))))),
      Catch(Scan(MFunction(If(Not(FunctionOfSinhQ(Symbol("#1"),v,x)),Throw(false))),u);true))))))


    #= If*u*is*a*function*of*cosh(v), FunctionOfCoshQ(u,v,x)*returns*true; else*it*returns*false. =#
    FunctionOfCoshQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(HyperbolicQ(u) && IntegerQuotientQ(Part(u, 1),v),
    #= Basis: If*m*integer, cosh(m*v)^n*is*a*function*of*cosh(v). =#
        Head(u)===cosh || Head(u)===sech,
      If(IntegerPowerQ(u) && HyperbolicQ(Part(u, 1)) && IntegerQuotientQ(Part(u, 1,1),v),
        If(EvenQ(Part(u, 2)),
    #= Basis: If*m*integer*and*n*even, Hyper(m*v)^n*is*a*function*of*cosh(v). =#
          true,
        FunctionOfCoshQ(Part(u, 1),v,x)),
      If(ProductQ(u),
        Module([lst],
        lst=FindTrigFactor(sinh,csch,u,v,false);
        If(ListQ(lst),
    #= Basis: If*m*integer*and*n*odd, sinh(m*v)^n == sinh(v)*u*where*u*is*a*function*of*cosh(v). =#
          FunctionOfCoshQ(sinh(v)*Part(lst, 2),v,x),
        lst=FindTrigFactor(tanh,coth,u,v,true);
        If(ListQ(lst),
    #= Basis: If*m*integer*and*n*odd, tanh(m*v)^n == sinh(v)*u*where*u*is*a*function*of*cosh(v). =#
          FunctionOfCoshQ(sinh(v)*Part(lst, 2),v,x),
        Catch(Scan(MFunction(If(Not(FunctionOfCoshQ(Symbol("#1"),v,x)),Throw(false))),u);true)))),
      Catch(Scan(MFunction(If(Not(FunctionOfCoshQ(Symbol("#1"),v,x)),Throw(false))),u);true))))))


    #= If*u*is*a*function*of*the*form*f(tanh(v),coth(v))*where*f*is*independent*of*x,
    	FunctionOfTanhQ(u,v,x)*returns*true; else*it*returns*false. =#
    FunctionOfTanhQ(u_,v_,x_) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(HyperbolicQ(u) && IntegerQuotientQ(Part(u, 1),v),
        Head(u)===tanh || Head(u)===coth || EvenQuotientQ(Part(u, 1),v),
      If(PowerQ(u) && EvenQ(Part(u, 2)) && HyperbolicQ(Part(u, 1)) && IntegerQuotientQ(Part(u, 1,1),v),
        true,
      If(PowerQ(u) && EvenQ(Part(u, 2)) && SumQ(Part(u, 1)),
        FunctionOfTanhQ(expand(Part(u, 1)^2),v,x),
      If(ProductQ(u),
        With([lst=ReapList(Scan(MFunction(If(Not(FunctionOfTanhQ(Symbol("#1"),v,x)),Sow(Symbol("#1")))),u))],
        If(lst===[],
          true,
        Length(lst)==2 && OddHyperbolicPowerQ(Part(lst, 1),v,x) && OddHyperbolicPowerQ(Part(lst, 2),v,x))),
      Catch(Scan(MFunction(If(Not(FunctionOfTanhQ(Symbol("#1"),v,x)),Throw(false))),u);true)))))))

    OddHyperbolicPowerQ(u_,v_,x_) :=
      If(MemberQ([sinh,cosh,sech,csch],Head(u)),
        OddQuotientQ(Part(u, 1),v),
      If(PowerQ(u),
        OddQ(Part(u, 2)) && OddHyperbolicPowerQ(Part(u, 1),v,x),
      If(ProductQ(u),
        If(NeQ(FreeFactors(u,x),1),
          OddHyperbolicPowerQ(NonfreeFactors(u,x),v,x),
        With([lst=ReapList(Scan(MFunction(If(Not(FunctionOfTanhQ(Symbol("#1"),v,x)),Sow(Symbol("#1")))),u))],
        If(lst===[],
          true,
        Length(lst)==1 && OddHyperbolicPowerQ(Part(lst, 1),v,x)))),
      If(SumQ(u),
        Catch(Scan(MFunction(If(Not(OddHyperbolicPowerQ(Symbol("#1"),v,x)),Throw(false))),u);true),
      false))))


    #= u*is*a*function*of*the*form*f(tanh(v),coth(v))*where*f*is*independent*of*x.
    FunctionOfTanhWeight(u,v,x)*returns*a*nonnegative*number*if*u*is*best*considered*a*function
    of*tanh(v); else*it*returns*a*negative*number. =#
    FunctionOfTanhWeight(u_,v_,x_) :=
      If(AtomQ(u),
        0,
      If(CalculusQ(u),
        0,
      If(HyperbolicQ(u) && IntegerQuotientQ(Part(u, 1),v),
        If(Head(u)===tanh && EqQ(Part(u, 1),v),
          1,
        If(Head(u)===coth && EqQ(Part(u, 1),v),
          -1,
        0)),
      If(PowerQ(u) && EvenQ(Part(u, 2)) && HyperbolicQ(Part(u, 1)) && IntegerQuotientQ(Part(u, 1,1),v),
        If(Head(Part(u, 1))===tanh || Head(Part(u, 1))===cosh || Head(Part(u, 1))===sech,
          1,
        -1),
      If(ProductQ(u),
        If(Catch(Scan(MFunction(If(Not(FunctionOfTanhQ(Symbol("#1"),v,x)),Throw(false))),u);true),
          Apply(Plus,Map(MFunction(FunctionOfTanhWeight(Symbol("#1"),v,x)),Apply(List,u))),
        0),
      Apply(Plus,Map(MFunction(FunctionOfTanhWeight(Symbol("#1"),v,x)),Apply(List,u))))))))


    #= If*u*(x)*is*equivalent*to*a*function*of*the*form*f*(sinh(v),cosh(v),tanh(v),coth(v),sech(v),csch(v))
    	where*f*is*independent*of*x, FunctionOfHyperbolicQ(u,v,x)*returns*true; else*it*returns*false. =#
    FunctionOfHyperbolicQ(u_,v_,x_Symbol) :=
      If(AtomQ(u),
        u!==x,
      If(CalculusQ(u),
        false,
      If(HyperbolicQ(u) && IntegerQuotientQ(Part(u, 1),v),
        true,
      Catch(Scan(MFunction(If(FunctionOfHyperbolicQ(Symbol("#1"),v,x),nothing,Throw(false))),u);true))))


    #= If*func(w)^m*is*a*factor*of*u*where*m*is*odd*and*w*is*an*integer*multiple*of*v,
    	FindTrigFactor(func1,func2,u,v,true)*returns*the*list [w,u/func(w)^n]; else*it*returns*false. =#
    #= If*func(w)^m*is*a*factor*of*u*where*m*is*odd*and*w*is*an*integer*multiple*of*v*not*equal*to*v,
    	FindTrigFactor(func1,func2,u,v,false)*returns*the*list [w,u/func(w)^n]; else*it*returns*false. =#
    FindTrigFactor(func1_,func2_,u_,v_,flag_) :=
      If(u===1,
        false,
      If((Head(LeadBase(u))===func1 || Head(LeadBase(u))===func2) &&
    		OddQ(LeadDegree(u)) &&
    		IntegerQuotientQ(Part(LeadBase[u], 1),v) &&
    		(flag || NeQ(Part(LeadBase[u], 1),v)),
        [Part(LeadBase[u], 1), RemainingFactors(u)],
      With([lst=FindTrigFactor(func1,func2,RemainingFactors(u),v,flag)],
      If(AtomQ(lst),
        false,
      [Part(lst, 1), LeadFactor(u)*Part(lst, 2)]))))


    #= If*u/v*is*an*integer, IntegerQuotientQ(u,v)*returns*true; else*it*returns*false. =#
    IntegerQuotientQ(u_,v_) :=
    #= u===v || EqQ(u,v) || IntegerQ(u/v) =#
      IntegerQ(Simplify(u/v))

    #= If*u/v*is*odd, OddQuotientQ(u,v)*returns*true; else*it*returns*false. =#
    OddQuotientQ(u_,v_) :=
    #= u===v || EqQ(u,v) || OddQ(u/v) =#
      OddQ(Simplify(u/v))

    #= If*u/v*is*even, EvenQuotientQ(u,v)*returns*true; else*it*returns*false. =#
    EvenQuotientQ(u_,v_) :=
      EvenQ(Simplify(u/v))


    #= ::Subsection::Closed:: =#
    #=FunctionOfDensePolynomialsQ=#


    #= If*all*occurrences*of*x*in*u*(x)*are*in*dense*polynomials, FunctionOfDensePolynomialsQ(u,x)
    	returns*true; else*it*returns*false. =#
    FunctionOfDensePolynomialsQ(u_,x_Symbol) :=
      If(FreeQ(u,x),
        true,
      If(PolynomialQ(u,x),
        Length(Exponent(u,x,List))>1,
      Catch(
      Scan(MFunction(If(FunctionOfDensePolynomialsQ(Symbol("#1"),x),nothing,Throw(false))),u);
      true)))


    #= ::Subsection::Closed:: =#
    #=FunctionOfLog=#


    #= If*u*(x)*is*equivalent*to*an*expression*of*the*form*f*(log(a*x^n)), FunctionOfLog(u,x)*returns
    	the*list [f*(x),a*x^n,n]; else*it*returns*false. =#
    FunctionOfLog(u_,x_Symbol) :=
      With([lst=FunctionOfLog(u,false,false,x)],
      If(AtomQ(lst) || FalseQ(Part(lst, 2)),
        false,
      lst))


    FunctionOfLog(u_,v_,n_,x_) :=
      If(AtomQ(u),
        If(u===x,
          false,
        [u,v,n]),
      If(CalculusQ(u),
        false,
      Module([lst],
      If(LogQ(u) && ListQ(lst=BinomialParts(Part(u, 1),x)) && EqQ(Part(lst, 1),0),
        If(FalseQ(v) || Part(u, 1)===v,
          [x,Part(u, 1),Part(lst, 3)],
        false),
      lst=[0,v,n];
      Catch(
        [Map(MFunction(lst=FunctionOfLog(Symbol("#1"),Part(lst, 2),Part(lst, 3),x);
    				  If(AtomQ(lst),Throw(false),Part(lst, 1))),
    			u),Part(lst, 2),Part(lst, 3)])))))


    #= ::Subsection::Closed:: =#
    #=PowerVariableExpn=#


    #= If*m*is*an*integer, u*is*an*expression*of*the*form*f((c*x)^n)*and*g=GCD(m,n)>1,
       PowerVariableExpn(u,m,x)*returns*the*list [x^(m/g)*f((c*x)^(n/g)),g,c]; else*it*returns*false. =#
    PowerVariableExpn(u_,m_,x_Symbol) :=
      If(IntegerQ(m),
        With([lst=PowerVariableDegree(u,m,1,x)],
        If(AtomQ(lst),
          false,
        [x^(m/Part(lst, 1))*PowerVariableSubst(u,Part(lst, 1),x), Part(lst, 1), Part(lst, 2)])),
      false)


    PowerVariableDegree(u_,m_,c_,x_Symbol) :=
      If(FreeQ(u,x),
        [m, c],
      If(AtomQ(u) || CalculusQ(u),
        false,
      If(PowerQ(u) && FreeQ(Part(u, 1)/x,x),
        If(EqQ(m,0) || m===Part(u, 2) && c===Part(u, 1)/x,
          [Part(u, 2), Part(u, 1)/x],
        If(IntegerQ(Part(u, 2)) && IntegerQ(m) && GCD(m,Part(u, 2))>1 && c===Part(u, 1)/x,
          [GCD(m,Part(u, 2)), c],
        false)),
      Catch(Module([lst=[m, c]],
      Scan(MFunction(lst=PowerVariableDegree(Symbol("#1"),Part(lst, 1),Part(lst, 2),x);If(AtomQ(lst),Throw(false))),u);
      lst)))))


    PowerVariableSubst(u_,m_,x_Symbol) :=
      If(FreeQ(u,x) || AtomQ(u) ||CalculusQ(u),
        u,
      If(PowerQ(u) && FreeQ(Part(u, 1)/x,x),
        x^(Part(u, 2)/m),
      Map(MFunction(PowerVariableSubst(Symbol("#1"),m,x)),u)))


    #= ::Subsection::Closed:: =#
    #=EulerIntegrandQ=#


    #= ::Subsubsection::Closed:: =#
    #=Note: If*an*Euler*substitution*should*be*used*to*integrate*u*wrt*x,  EulerIntegrandQ(u,x)*returns*true.=#


    EulerIntegrandQ((a_'*x_+b_'*u_^n_)^p_,x_Symbol) :=
      true <--
    FreeQ([a,b],x) && IntegerQ(n+1/2) && QuadraticQ(u,x) && (Not(RationalQ(p)) || ILtQ(p,0) && Not(BinomialQ(u,x)))


    EulerIntegrandQ(v_^m_'*(a_'*x_+b_'*u_^n_)^p_,x_Symbol) :=
      true <--
    FreeQ([a,b],x) && EqQ(u,v) && IntegersQ(2*m,n+1/2) && QuadraticQ(u,x) &&
      (Not(RationalQ(p)) || ILtQ(p,0) && Not(BinomialQ(u,x)))


    EulerIntegrandQ(v_^m_'*(a_'*x_+b_'*u_^n_)^p_,x_Symbol) :=
      true <--
    FreeQ([a,b],x) && EqQ(u,v) && IntegersQ(2*m,n+1/2) && QuadraticQ(u,x) &&
      (Not(RationalQ(p)) || ILtQ(p,0) && Not(BinomialQ(u,x)))


    EulerIntegrandQ(u_^n_*v_^p_,x_Symbol) :=
      true <--
    ILtQ(p,0) && IntegerQ(n+1/2) && QuadraticQ(u,x) && QuadraticQ(v,x) && Not(BinomialQ(v,x))

    EulerIntegrandQ(u_,x_Symbol) :=
      false


    #= ::Subsection::Closed:: =#
    #=FunctionOfSquareRootOfQuadratic=#


    #=
    Euler*substitution Symbol("#2"):
      If*u*is*an*expression*of*the*form*f*(sqrt(a+b*x+c*x^2),x), f*(x,x)*is*a*rational*function, and
    	PosQ(c), FunctionOfSquareRootOfQuadratic(u,x)*returns*the*3-element*list [
    		f*((a*sqrt(c)+b*x+sqrt(c)*x^2)/(b+2*sqrt(c)*x),(-a+x^2)/(b+2*sqrt(c)*x))*
    		  (a*sqrt(c)+b*x+sqrt(c)*x^2)/(b+2*sqrt(c)*x)^2,
    		sqrt(c)*x+sqrt(a+b*x+c*x^2), 2 ];

    Euler*substitution Symbol("#1"):
      If*u*is*an*expression*of*the*form*f*(sqrt(a+b*x+c*x^2),x), f*(x,x)*is*a*rational*function, and
    	PosQ(a), FunctionOfSquareRootOfQuadratic(u,x)*returns*the*two*element*list [
    		f*((c*sqrt(a)-b*x+sqrt(a)*x^2)/(c-x^2),(-b+2*sqrt(a)*x)/(c-x^2))*
    		  (c*sqrt(a)-b*x+sqrt(a)*x^2)/(c-x^2)^2,
    		(-sqrt(a)+sqrt(a+b*x+c*x^2))/x, 1 ];

    Euler*substitution Symbol("#3"):
      If*u*is*an*expression*of*the*form*f*(sqrt(a+b*x+c*x^2),x), f*(x,x)*is*a*rational*function, and
    	NegQ(a)*and*NegQ(c), FunctionOfSquareRootOfQuadratic(u,x)*returns*the*two*element*list [
    		-sqrt(b^2-4*a*c)*
    		f*(-sqrt(b^2-4*a*c)*x/(c-x^2),-(b*c+c*sqrt(b^2-4*a*c)+(-b+sqrt(b^2-4*a*c))*x^2)/(2*c*(c-x^2)))*
    		  x/(c-x^2)^2,
    		2*c*sqrt(a+b*x+c*x^2)/(b-sqrt(b^2-4*a*c)+2*c*x), 3 ];

      else*it*returns*false. =#

    FunctionOfSquareRootOfQuadratic(u_,x_Symbol) :=
      If(MatchQ(u,x^m_'*(a_+b_'*x^n_')^p_ <-- FreeQ([a,b,m,n,p],x)),
        false,
      Module([tmp=FunctionOfSquareRootOfQuadratic(u,false,x)],
      If(AtomQ(tmp) || FalseQ(Part(tmp, 1)),
        false,
      tmp=Part(tmp, 1);
      Module([a=Coefficient(tmp,x,0),b=Coefficient(tmp,x,1),c=Coefficient(tmp,x,2),sqrt,q,r],
      If(EqQ(a,0) && EqQ(b,0) || EqQ(b^2-4*a*c,0),
        false,
      If(PosQ(c),
        sqrt=Rt(c,2);
        q=a*sqrt+b*x+sqrt*x^2;
        r=b+2*sqrt*x;
        [Simplify(SquareRootOfQuadraticSubst(u,q/r,(-a+x^2)/r,x)*q/r^2),
         Simplify(sqrt*x+sqrt(tmp)),
         2],
      If(PosQ(a),
        sqrt=Rt(a,2);
        q=c*sqrt-b*x+sqrt*x^2;
        r=c-x^2;
        [Simplify(SquareRootOfQuadraticSubst(u,q/r,(-b+2*sqrt*x)/r,x)*q/r^2),
         Simplify((-sqrt+sqrt(tmp))/x),
         1],
      sqrt=Rt(b^2-4*a*c,2);
      r=c-x^2;
      [Simplify(-sqrt*SquareRootOfQuadraticSubst(u,-sqrt*x/r,-(b*c+c*sqrt+(-b+sqrt)*x^2)/(2*c*r),x)*x/r^2),
       FullSimplify(2*c*sqrt(tmp)/(b-sqrt+2*c*x)),
       3])))))))


    FunctionOfSquareRootOfQuadratic(u_,v_,x_Symbol) :=
      If(AtomQ(u) || FreeQ(u,x),
        [v],
      If(PowerQ(u) && FreeQ(Part(u, 2),x),
        If(FractionQ(Part(u, 2)) && Denominator(Part(u, 2))==2 && PolynomialQ(Part(u, 1),x) && Exponent(Part(u, 1),x)==2,
          If((FalseQ(v) || Part(u, 1)===v),
            [Part(u, 1)],
          false),
        FunctionOfSquareRootOfQuadratic(Part(u, 1),v,x)),
      If(ProductQ(u) || SumQ(u),
        Catch(Module([lst=[v]],
        Scan(MFunction(lst=FunctionOfSquareRootOfQuadratic(Symbol("#1"),Part(lst, 1),x);If(AtomQ(lst),Throw(false))),u);
        lst)),
      false)))


    #= SquareRootOfQuadraticSubst(u,vv,xx,x)*returns*u*with*fractional*powers*replaced*by*vv*raised
    	to*the*power*and*x*replaced*by*xx. =#
    SquareRootOfQuadraticSubst(u_,vv_,xx_,x_Symbol) :=
      If(AtomQ(u) || FreeQ(u,x),
        If(u===x,
          xx,
        u),
      If(PowerQ(u) && FreeQ(Part(u, 2),x),
        If(FractionQ(Part(u, 2)) && Denominator(Part(u, 2))==2 && PolynomialQ(Part(u, 1),x) && Exponent(Part(u, 1),x)==2,
          vv^Numerator(Part(u, 2)),
        SquareRootOfQuadraticSubst(Part(u, 1),vv,xx,x)^Part(u, 2)),
      Map(MFunction(SquareRootOfQuadraticSubst(Symbol("#1"),vv,xx,x)),u)))


    #= ::Section::Closed:: =#
    #=Substitution*functions=#


    #= ::Subsection::Closed:: =#
    #=Subst(u,v,w)=#


    "Subst(u,x,v)*returns*u*with*all*nondummy*occurences*of*x*replaced*by*v*and*resulting*constant*terms*replaced*by*0.0."
    function Subst end
    Subst(u_,x_Symbol,v_) :=
      If(PowerQ(v) && Not(IntegerQ(Part(v, 2))) &&
          MatchQ(Part(v, 1),a_+b_'*x+c_'*x^2 <-- FreeQ([a,b,c],x) && Not(AtomQ(b))) &&
          LeafCount(Simplify(Part(v, 1)))<2/3*LeafCount(Part(v, 1)),
        Subst(u,x,Simplify(Part(v, 1))^Part(v, 2)),
      If(SumQ(u),
        If(BinomialQ(v,x),
          SimplifyAntiderivative(Map(MFunction(SubstAux(Symbol("#1"),x,v,true)),u),x),
        SimplifyAntiderivative(Map(MFunction(SubstAux(Symbol("#1"),x,v,false)),u),x)),
      SimplifyAntiderivative(SubstAux(u,x,v,BinomialQ(v,x)),x)))

    Subst(u_,Rule(x_Symbol,v_)) := Subst(u,x,v)


    Subst(u_,(a_'*x_)^n_,v_) :=
      If(AtomQ(u),
        u,
      If(RationalQ(n) && Numerator(n)!=1,
        Subst(u,(a*x)^(1/Denominator(n)),v/(a*x)^(n-1/Denominator(n))),
      If(PowerQ(u) && FreeQ(Part(u, 2),x) && Part(u, 1)===a*x,
        If(IntegerQ(Part(u, 2)/n),
          Simplify(v^(Part(u, 2)/n)),
        If(SumQ(Part(u, 2)),
          Apply(Times,Map(MFunction(Subst(Part(u, 1)^Symbol("#1"),(a*x)^n,v)),Apply(List,Part(u, 2)))),
        With([w=expand(Part(u, 2))],
        If(SumQ(w),
          Apply(Times,Map(MFunction(Subst(Part(u, 1)^Symbol("#1"),(a*x)^n,v)),Apply(List,w))),
        With([m=NumericFactor(Part(u, 2))],
        If(Numerator(m)!=1,
          Subst(Part(u, 1)^(m/Numerator(m)*NonnumericFactors(Part(u, 2))),(a*x)^n,v)^Numerator(m),
        Subst(Part(u, 1),(a*x)^n,v)^Part(u, 2))))))),
      If(CalculusQ(u) && Not(FreeQ(x,Part(u, 2))) || HeldFormQ(u) && Head(u)!==Defer(AppellF1),
        Defer(Subst)(u,(a*x)^n,v),
      Map(MFunction(Subst(Symbol("#1"),(a*x)^n,v)),u))))) <--
    FreeQ([a,n],x)


    Subst(u_,v_,w_) :=
      If(u===v,
        w,
      If(AtomQ(u),
        u,
      If(CalculusQ(u) && Not(FreeQ(v,Part(u, 2))) || HeldFormQ(u) && Head(u)!==Defer(AppellF1),
        Defer(Subst)(u,v,w),
      Map(MFunction(Subst(Symbol("#1"),v,w)),u))))


    #= ::Subsection::Closed:: =#
    #=SubstAux(u,x,v)=#


    #= x*is*a*variable*symbol. =#
    #= SubstAux(u,x,v)*returns*u*with*all*nondummy*occurences*of*x*replaced*by*v =#
    SubstAux(a_+b_'*x_,x_,c_'*F_(z_)^2,false) :=
      a*Simplify(1-F(z)^2) <--
    FreeQ([a,b,c],x) && MemberQ([sin,cos,sec,csc,cosh,tanh,coth,sech],F) && EqQ(a+b*c,0)

    SubstAux(a_+b_'*x_,x_,c_'*F_(z_)^2,false) :=
      a*Simplify(1+F(z)^2) <--
    FreeQ([a,b,c],x) && MemberQ([tan,cot,sinh,csch],F) && EqQ(a-b*c,0)


    SubstAux(a_+b_'*x_^2,x_,c_'*F_(z_),false) :=
      a*Simplify(1-F(z)^2) <--
    FreeQ([a,b,c],x) && MemberQ([sin,cos,sec,csc,cosh,tanh,coth,sech],F) && EqQ(a+b*c^2,0)

    SubstAux(a_+b_'*x_^2,x_,c_'*F_(z_),false) :=
      a*Simplify(1+F(z)^2) <--
    FreeQ([a,b,c],x) && MemberQ([tan,cot,sinh,csch],F) && EqQ(a-b*c^2,0)


    SubstAux(F_(a_'*x_^m_'),x_,b_'*x_^n_,flag_) :=
      Switch(F,
        asin, acsc,  acos, asec,  atan, acot,  acot, atan,  asec, acos,  acsc, asin,
        asinh, acsch,  acosh, asech,  atanh, acoth,  acoth, atanh,  asech, acosh,  acsch, asinh)(x^(-m*n)/(a*b^m)) <--
    FreeQ([a,b],x) && IGtQ(m,0) && ILtQ(n,0) && MemberQ([asin,acos,atan,acot,asec,acsc,asinh,acosh,atanh,acoth,asech,acsch],F)


    SubstAux(e_+f_'*x_,x_,(a_'+b_'*x_)/(c_'+d_'*x_),flag_) :=
      Together(c*e+a*f)/(c+d*x) <--
    FreeQ([a,b,c,d,e,f],x) && EqQ(d*e+b*f,0)


    #= x*is*a*variable*symbol. flag*is*true*if*v*is*a*binomial*in*x; else*it*is*false. =#
    #= SubstAux(u,x,v,flag)*returns*u*with*all*nondummy*occurences*of*x*replaced*by*v =#
    SubstAux(u_,x_,v_,flag_) :=
      If(AtomQ(u),
        If(u===x,
          v,
        u),
      If(FreeQ(u,x),
        u,
      If(flag && PowerQ(u),
        If(Not(IntegerQ(Part(u, 2))) && LinearQ(Part(u, 1),x),
          Simplify(SubstAux(Part(u, 1),x,v,flag))^SubstAux(Part(u, 2),x,v,flag),
        SubstAux(Part(u, 1),x,v,flag)^SubstAux(Part(u, 2),x,v,flag)),
      If(Head(u)===Defer(Subst),
        If(Part(u, 2)===x || FreeQ(Part(u, 1),x),
          SubstAux(Part(u, 1),Part(u, 2),SubstAux(Part(u, 3),x,v,flag),flag),
        Defer(Subst)(u,x,v)),
      If(Head(u)===Defer(Dist),
        Defer(Dist)(SubstAux(Part(u, 1),x,v,flag),SubstAux(Part(u, 2),x,v,flag),Part(u, 3)),
      If(SimplifyFlag && MemberQ([Unintegrable,CannotIntegrate],Head(u)) && Part(u, 2)===x,
        With([w=Simplify(D(v,x))], FreeFactors(w,x)*Head(u)(Subst(Part(u, 1),x,v)*NonfreeFactors(w,x),x)),
      If(CalculusQ(u) && Not(FreeQ(x,Part(u, 2))) || HeldFormQ(u) && Head(u)!==Defer(AppellF1),
        Defer(Subst)(u,x,v),
      If(flag && Length(u)==1 && LinearQ(Part(u, 1),x),
        Head(u)(Simplify(SubstAux(Part(u, 1),x,v,flag))),
      If(flag && Head(u)===PolyLog && Length(u)==2 && LinearQ(Part(u, 2),x),
        PolyLog(SubstAux(Part(u, 1),x,v,flag),Simplify(SubstAux(Part(u, 2),x,v,flag))),
      With([w=Map(MFunction(SubstAux(Symbol("#1"),x,v,flag)),u)],
      If(PolyQ(w,x),
        With([z=If(LinearQ(v,x) || MonomialQ(v,x),ExpandToSum(w,x),Simplify(w))],
    #=  Print([u,v,w,z]); =#
        If(LeafCount(z)<=If(LinearQ(u,x),3/4,9/10)*LeafCount(w),
          If(EqQ(NumericFactor(z)^2,1),
            z,
          NumericFactor(z)*NonnumericFactors(z)),
        If(EqQ(NumericFactor(w)^2,1),
          w,
        NumericFactor(w)*NonnumericFactors(w)))),
      With([ulst=BinomialParts(u,x)],
      If(Not(FalseQ(ulst)) && IGtQ(Part(ulst, 3),0) && NeQ(Part(ulst, 1),0) && (NeQ(Part(ulst, 3),1) || AlgebraicFunctionQ(v,x)),
        With([z=Simplify(w)],
        If(LeafCount(z)<9/10*LeafCount(w),
          z,
        w)),
      w)))))))))))))


    #= ::Subsection::Closed:: =#
    #=SimplifyAntiderivative(u,x)=#


    "SimplifyAntiderivative(u,x)*returns*the*simplest, continuous*expression*whose*derivative*wrt*x*equals*the*derivative*of*u*wrt*x."
    function SimplifyAntiderivative end
    Clear(SimplifyAntiderivative);


    #= ::Item:: =#
    #=Basis: D(c*F(x), x) == c*D(F(x), x)=#


    SimplifyAntiderivative(c_*u_,x_Symbol) :=
      With([v=SimplifyAntiderivative(u,x)],
      If(SumQ(v) && NonsumQ(u),
        Map(MFunction(c*Symbol("#1")),v),
      c*v)) <--
    FreeQ(c,x)


    #= ::Item:: =#
    #=Basis: D(log(c*F(x)), x) == D(log(F(x)), x)=#


    SimplifyAntiderivative(log(c_*u_),x_Symbol) :=
      SimplifyAntiderivative(log(u),x) <--
    FreeQ(c,x)


    #= ::Item:: =#
    #=Basis: D(log(F(x)^n), x) == n*D(log(F(x)), x)=#


    SimplifyAntiderivative(log(u_^n_),x_Symbol) :=
      n*SimplifyAntiderivative(log(u),x) <--
    FreeQ(n,x)


    #= ::Item:: =#
    #=Basis: If  F\(Element)[log,atan,acot], then*D(F(G(x)), x) == -D(F(1/G(x)), x)=#


    SimplifyAntiderivative(F_(G_(u_)),x_Symbol) :=
      -SimplifyAntiderivative(F(1/G(u)),x) <--
    MemberQ([log,atan,acot],F) && MemberQ([cot,sec,csc,coth,sech,csch],G)


    #= ::Item:: =#
    #=Basis: If  F\(Element)[atanh,acoth], then*D(F(G(x)), x) == D(F(1/G(x)), x)=#


    SimplifyAntiderivative(F_(G_(u_)),x_Symbol) :=
      SimplifyAntiderivative(F(1/G(u)),x) <--
    MemberQ([atanh,acoth],F) && MemberQ([cot,sec,csc,coth,sech,csch],G)


    SimplifyAntiderivative(log(F_(u_)),x_Symbol) :=
      -SimplifyAntiderivative(log(1/F(u)),x) <--
    MemberQ([cot,sec,csc,coth,sech,csch],F)


    #= ::Item:: =#
    #=Basis: D(log(f^G(x)), x) == log(f)*D(G(x), x)=#


    SimplifyAntiderivative(log(f_^u_),x_Symbol) :=
      log(f)*SimplifyAntiderivative(u,x) <--
    FreeQ(f,x)


    #= ::Item:: =#
    #=Basis: If  a^2+b^2==0, then*D(log(a + b*tan(F(x))), x) == (b*D(F(x), x))/a - D(log(cos(F(x))), x)=#


    SimplifyAntiderivative(log(a_+b_'*tan(u_)),x_Symbol) :=
      b/a*SimplifyAntiderivative(u,x) - SimplifyAntiderivative(log(cos(u)),x) <--
    FreeQ([a,b],x) && EqQ(a^2+b^2,0)


    #= ::Item:: =#
    #=Basis: If  a^2+b^2==0, then*D(log(a + b*cot(F(x))), x) == -((b/a)*D(F(x), x)) - D(log(sin(F(x))), x)=#


    SimplifyAntiderivative(log(a_+b_'*cot(u_)),x_Symbol) :=
      -b/a*SimplifyAntiderivative(u,x) - SimplifyAntiderivative(log(sin(u)),x) <--
    FreeQ([a,b],x) && EqQ(a^2+b^2,0)


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=Note: Should*also*recognize*that*tan(z/2)==sin(z)/(1+cos(z))==tan(z)/(1+sec(z))=#


    SimplifyAntiderivative(atan(a_'*tan(u_)),x_Symbol) :=
      RectifyTangent(u,a,1,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: D(acot(a*tan(f(x))), x) == -D(atan(a*tan(f(x))), x)=#


    SimplifyAntiderivative(acot(a_'*tan(u_)),x_Symbol) :=
      RectifyTangent(u,a,-1,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: atan(a*tanh(z))==-atan(im*a*tan(im*z))=#


    #= SimplifyAntiderivative(atan(a_'*tanh(u_)),x_Symbol) :=
      RectifyTangent(im*u,im*a,-1,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u) =#


    #= ::Item:: =#
    #=Basis: D(acot(a*tanh(f(x))), x) == -D(atan(a*tanh(f(x))), x)=#


    SimplifyAntiderivative(acot(a_'*tanh(u_)),x_Symbol) :=
      -SimplifyAntiderivative(atan(a*tanh(u)),x) <--
    FreeQ(a,x) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: atanh(a*tan(z))==-im*atan(im*a*tan(z))=#


    SimplifyAntiderivative(atanh(a_'*tan(u_)),x_Symbol) :=
      RectifyTangent(u,im*a,-im,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: D(acoth(a*tan(f(x))), x) == -(im*D(atan(im*a*tan(f(x))), x))=#


    SimplifyAntiderivative(acoth(a_'*tan(u_)),x_Symbol) :=
      RectifyTangent(u,im*a,-im,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u)


    #= ::Item::Closed:: =#
    #=Basis: atanh(a*tanh(z))==-im*atan(a*tan(im*z))=#


    #= ::Item:: =#
    #=Note: Although*this*makes*the*antiderivative*continuous*on*the*imaginary*line, it*makes*it*discontinous*on*the*real*line.=#


    #= SimplifyAntiderivative(atanh(a_'*tanh(u_)),x_Symbol) :=
      RectifyTangent(im*u,a,-im,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u) =#


    #= ::Item:: =#
    #=Basis: D(atanh(tanh(f(x))), x) == D(f(x), x)=#


    SimplifyAntiderivative(atanh(tanh(u_)),x_Symbol) :=
      SimplifyAntiderivative(u,x)


    #= ::Item::Closed:: =#
    #=Basis: D(acoth(a*tanh(f(x))), x) == -(im*D(atan(a*tan(im*f(x))), x))=#


    #= ::Item:: =#
    #=Note: Although*this*makes*the*antiderivative*continuous*on*the*imaginary*line, it*makes*it*discontinous*on*the*real*line.=#


    #= SimplifyAntiderivative(acoth(a_'*tanh(u_)),x_Symbol) :=
      RectifyTangent(im*u,a,-im,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u) =#


    #= ::Item:: =#
    #=Basis: D(acoth(tanh(f(x))), x) == D(f(x), x)=#


    SimplifyAntiderivative(acoth(tanh(u_)),x_Symbol) :=
      SimplifyAntiderivative(u,x)


    #= ::Input:: =#
    #= =#


    SimplifyAntiderivative(acot(a_'*cot(u_)),x_Symbol) :=
      RectifyCotangent(u,a,1,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: D(atan(a*cot(f(x))), x) == -D(acot(a*cot(f(x))), x)=#


    SimplifyAntiderivative(atan(a_'*cot(u_)),x_Symbol) :=
      RectifyCotangent(u,a,-1,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: acot(a*coth(z))==acot(im*a*cot(im*z))=#


    #= SimplifyAntiderivative(acot(a_'*coth(u_)),x_Symbol) :=
      RectifyCotangent(im*u,im*a,1,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u) =#


    #= ::Item:: =#
    #=Basis: D(atan(a*coth(f(x))), x) == -D(atan(tanh(f(x))/a), x)=#


    SimplifyAntiderivative(atan(a_'*coth(u_)),x_Symbol) :=
      -SimplifyAntiderivative(atan(tanh(u)/a),x) <--
    FreeQ(a,x) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: acoth(a*cot(z))==im*acot(im*a*cot(z))=#


    SimplifyAntiderivative(acoth(a_'*cot(u_)),x_Symbol) :=
      RectifyCotangent(u,im*a,im,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: D(atanh(a*cot(f(x))), x) == im*D(acot(im*a*cot(f(x))), x)=#


    SimplifyAntiderivative(atanh(a_'*cot(u_)),x_Symbol) :=
      RectifyCotangent(u,im*a,im,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u)


    #= ::Item::Closed:: =#
    #=Basis: acoth(a*coth(z))==-im*acot(a*cot(im*z))=#


    #= ::Item:: =#
    #=Note: Although*this*makes*the*antiderivative*continuous*on*the*imaginary*line, it*makes*it*discontinous*on*the*real*line.=#


    #= SimplifyAntiderivative(acoth(a_'*coth(u_)),x_Symbol) :=
      RectifyCotangent(im*u,a,-im,x) <--
    FreeQ(a,x) && GtQ(a^2,0) && ComplexFreeQ(u) =#


    #= ::Item:: =#
    #=Basis: D(acoth(coth(f(x))), x) == D(f(x), x)=#


    SimplifyAntiderivative(acoth(coth(u_)),x_Symbol) :=
      SimplifyAntiderivative(u,x)


    #= ::Item:: =#
    #=Basis: D(atanh(a*coth(f(x))), x) == D(atanh(tanh(f(x))/a), x)=#


    SimplifyAntiderivative(atanh(a_'*coth(u_)),x_Symbol) :=
      SimplifyAntiderivative(atanh(tanh(u)/a),x) <--
    FreeQ(a,x) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: D(atanh(coth(f(x))), x) == D(f(x), x)=#


    SimplifyAntiderivative(atanh(coth(u_)),x_Symbol) :=
      SimplifyAntiderivative(u,x)


    #= ::Input:: =#
    #= =#


    SimplifyAntiderivative(atan(c_'*(a_+b_'*tan(u_))),x_Symbol) :=
      RectifyTangent(u,a*c,b*c,1,x) <--
    FreeQ([a,b,c],x) && GtQ(a^2*c^2,0) && GtQ(b^2*c^2,0) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: atanh(a+b*tan(z))==-im*atan(im*a+im*b*tan(z))=#


    SimplifyAntiderivative(atanh(c_'*(a_+b_'*tan(u_))),x_Symbol) :=
      RectifyTangent(u,im*a*c,im*b*c,-im,x) <--
    FreeQ([a,b,c],x) && GtQ(a^2*c^2,0) && GtQ(b^2*c^2,0) && ComplexFreeQ(u)


    #= ::Input:: =#
    #= =#


    SimplifyAntiderivative(atan(c_'*(a_+b_'*cot(u_))),x_Symbol) :=
      RectifyCotangent(u,a*c,b*c,1,x) <--
    FreeQ([a,b,c],x) && GtQ(a^2*c^2,0) && GtQ(b^2*c^2,0) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: atanh(a+b*cot(z))==-im*atan(im*a+im*b*cot(z))=#


    SimplifyAntiderivative(atanh(c_'*(a_+b_'*cot(u_))),x_Symbol) :=
      RectifyCotangent(u,im*a*c,im*b*c,-im,x) <--
    FreeQ([a,b,c],x) && GtQ(a^2*c^2,0) && GtQ(b^2*c^2,0) && ComplexFreeQ(u)


    #= ::Input:: =#
    #= =#


    #= ::Item:: =#
    #=Basis: D(atan(a + b*tan(F(x)) + c*tan(F(x))^2), x) == D(atan((c + (a - c - 1)*cos(F(x))^2 + b*cos(F(x))*sin(F(x)))/(c + (a - c + 1)*cos(F(x))^2 + b*cos(F(x))*sin(F(x)))), x) == D(atan((a + c - 1 + (a - c - 1)*cos(2*F(x)) + b*sin(2*F(x)))/(a + c + 1 + (a - c + 1)*cos(2*F(x)) + b*sin(2*F(x)))), x)=#


    SimplifyAntiderivative(atan(a_'+b_'*tan(u_)+c_'*tan(u_)^2),x_Symbol) :=
      If(EvenQ(Denominator(NumericFactor(Together(u)))),
        atan(NormalizeTogether((a+c-1+(a-c-1)*cos(2*u)+b*sin(2*u))/(a+c+1+(a-c+1)*cos(2*u)+b*sin(2*u)))),
      atan(NormalizeTogether((c+(a-c-1)*cos(u)^2+b*cos(u)*sin(u))/(c+(a-c+1)*cos(u)^2+b*cos(u)*sin(u))))) <--
    FreeQ([a,b,c],x) && ComplexFreeQ(u)

    SimplifyAntiderivative(atan(a_'+b_'*(d_'+e_'*tan(u_))+c_'*(f_'+g_'*tan(u_))^2),x_Symbol) :=
      SimplifyAntiderivative(atan(a+b*d+c*f^2+(b*e+2*c*f*g)*tan(u)+c*g^2*tan(u)^2),x) <--
    FreeQ([a,b,c],x) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: D(atan(a + c*tan(F(x))^2), x) == D(atan((c + (a - c - 1)*cos(F(x))^2)/(c + (a - c + 1)*cos(F(x))^2)), x) == D(atan((a + c - 1 + (a - c - 1)*cos(2*F(x)))/(a + c + 1 + (a - c + 1)*cos(2*F(x)))), x)=#


    SimplifyAntiderivative(atan(a_'+c_'*tan(u_)^2),x_Symbol) :=
      If(EvenQ(Denominator(NumericFactor(Together(u)))),
        atan(NormalizeTogether((a+c-1+(a-c-1)*cos(2*u))/(a+c+1+(a-c+1)*cos(2*u)))),
      atan(NormalizeTogether((c+(a-c-1)*cos(u)^2)/(c+(a-c+1)*cos(u)^2)))) <--
    FreeQ([a,c],x) && ComplexFreeQ(u)

    SimplifyAntiderivative(atan(a_'+c_'*(f_'+g_'*tan(u_))^2),x_Symbol) :=
      SimplifyAntiderivative(atan(a+c*f^2+(2*c*f*g)*tan(u)+c*g^2*tan(u)^2),x) <--
    FreeQ([a,c],x) && ComplexFreeQ(u)


    #= ::Item:: =#
    #=Basis: D(c, x) == D(0, x)=#


    SimplifyAntiderivative(u_,x_Symbol) :=
      If(FreeQ(u,x),
        0,
      If(LogQ(u),
        With([v=RemoveContent(Part(u, 1),x)],
        If(v===Part(u, 1),
          u,
        SimplifyAntiderivative(log(v),x))),
      If(SumQ(u),
        SimplifyAntiderivativeSum(Map(MFunction(SimplifyAntiderivative(Symbol("#1"),x)),u),x),
      u)))


    #= ::Subsection::Closed:: =#
    #=SimplifyAntiderivativeSum=#


    Clear(SimplifyAntiderivativeSum);

    SimplifyAntiderivativeSum(v_'+A_'*log(a_+b_'*tan(u_)^n_')+B_'*log(cos(u_)),x_Symbol) :=
      SimplifyAntiderivativeSum(v,x) + A*log(RemoveContent(a*cos(u)^n+b*sin(u)^n,x)) <--
    FreeQ([a,b,A,B],x) && IntegerQ(n) && EqQ(n*A-B,0)


    SimplifyAntiderivativeSum(v_'+A_'*log(a_+b_'*cot(u_)^n_')+B_'*log(sin(u_)),x_Symbol) :=
      SimplifyAntiderivativeSum(v,x) + A*log(RemoveContent(a*sin(u)^n+b*cos(u)^n,x)) <--
    FreeQ([a,b,A,B],x) && IntegerQ(n) && EqQ(n*A-B,0)


    SimplifyAntiderivativeSum(v_'+A_'*log(a_+b_'*tan(u_)^n_')+B_'*log(c_+d_'*tan(u_)^n_'),x_Symbol) :=
      SimplifyAntiderivativeSum(v,x) + A*log(RemoveContent(a*cos(u)^n+b*sin(u)^n,x)) + B*log(RemoveContent(c*cos(u)^n+d*sin(u)^n,x)) <--
    FreeQ([a,b,c,d,A,B],x) && IntegerQ(n) && EqQ(A+B,0)


    SimplifyAntiderivativeSum(v_'+A_'*log(a_+b_'*cot(u_)^n_')+B_'*log(c_+d_'*cot(u_)^n_'),x_Symbol) :=
      SimplifyAntiderivativeSum(v,x) + A*log(RemoveContent(b*cos(u)^n+a*sin(u)^n,x)) + B*log(RemoveContent(d*cos(u)^n+c*sin(u)^n,x)) <--
    FreeQ([a,b,c,d,A,B],x) && IntegerQ(n) && EqQ(A+B,0)


    SimplifyAntiderivativeSum(v_'+A_'*log(a_+b_'*tan(u_)^n_')+B_'*log(c_+d_'*tan(u_)^n_')+C_'*log(e_+f_'*tan(u_)^n_'),x_Symbol) :=
      SimplifyAntiderivativeSum(v,x) + A*log(RemoveContent(a*cos(u)^n+b*sin(u)^n,x)) +
    	B*log(RemoveContent(c*cos(u)^n+d*sin(u)^n,x)) + C*log(RemoveContent(e*cos(u)^n+f*sin(u)^n,x)) <--
    FreeQ([a,b,c,d,e,f,A,B,C],x) && IntegerQ(n) && EqQ(A+B+C,0)


    SimplifyAntiderivativeSum(v_'+A_'*log(a_+b_'*cot(u_)^n_')+B_'*log(c_+d_'*cot(u_)^n_')+C_'*log(e_+f_'*cot(u_)^n_'),x_Symbol) :=
      SimplifyAntiderivativeSum(v,x) + A*log(RemoveContent(b*cos(u)^n+a*sin(u)^n,x)) +
    	B*log(RemoveContent(d*cos(u)^n+c*sin(u)^n,x)) + C*log(RemoveContent(f*cos(u)^n+e*sin(u)^n,x)) <--
    FreeQ([a,b,c,d,e,f,A,B,C],x) && IntegerQ(n) && EqQ(A+B+C,0)


    SimplifyAntiderivativeSum(u_,x_Symbol) := u


    #= ::Subsection::Closed:: =#
    #=RectifyTangent=#


    #= ::Item::Closed:: =#
    #=Basis: atan(im*a*tan(f(x)))==im*atanh(a*tan(f(x)))=#


    #= ::Item:: =#
    #=Basis: D(atanh((c/e)*tan(f(x))), x) == D(log(e*cos(f(x)) + c*sin(f(x)))/2 - log(e*cos(f(x)) - c*sin(f(x)))/2, x)=#


    #= ::Item:: =#
    #=Note: Note*unlike*the*above, the*log*terms*in*the*following*two*identities*are*real-valued*when*c, e*and*f(x)*are*real.=#


    #= ::Item:: =#
    #=Basis: D(atanh((c/e)*tan(f(x))), x) == D(log(c^2 + e^2 - (c^2 - e^2)*cos(2*f(x)) + 2*c*e*sin(2*f(x)))/4 - log(c^2 + e^2 - (c^2 - e^2)*cos(2*f(x)) - 2*c*e*sin(2*f(x)))/4, x)=#


    #= ::Item:: =#
    #=Basis: D(atanh((c/e)*tan(f(x))), x) == D(log(e^2 + 2*c*e*cos(f(x))*sin(f(x)) + (c^2 - e^2)*sin(f(x))^2)/4 - log(e^2 - 2*c*e*cos(f(x))*sin(f(x)) + (c^2 - e^2)*sin(f(x))^2)/4, x)=#


    #= ::Item:: =#
    #=Basis: D(atan(a*tan(f(x))), x) == D(f(x) - atan(sin(2*f(x))/((1 + a)/(1 - a) + cos(2*f(x)))), x)=#


    #= ::Item:: =#
    #=Basis: D(atan(a*tan(f(x))), x) == D(f(x) + atan((cos(f(x))*sin(f(x)))/(1/(a - 1) + sin(f(x))^2)), x) == D(f(x) - atan((cos(f(x))*sin(f(x)))/(a/(1 - a) + cos(f(x))^2)), x)=#


    #= ::Item:: =#
    #=Note: If  a>0*and*f(x)*is*real, then*1/(1-a)-sin(f(x))^2*is*nonzero*and*f(x)-atan((cos(f(x))*sin(f(x)))/(1/(1-a)-sin(f(x))^2))*is*continuous, unlike*atan(a*tan(f(x))).=#


    #= RectifyTangent(u,a,b,x)*returns*an*expression*whose*derivative*equals*the*derivative*of*b*atan(a*tan(u))*wrt*x. =#
    RectifyTangent(u_,a_,b_,x_Symbol) :=
      If(MatchQ(Together(a),d_'*Complex(0,c_)),
        Module([c=a/im,e],
        If(LtQ(c,0),
          RectifyTangent(u,-a,-b,x),
        If(EqQ(c,1),
          If(EvenQ(Denominator(NumericFactor(Together(u)))),
            im*b*atanh(sin(2*u))/2,
          im*b*atanh(2*cos(u)*sin(u))/2),
        e=SmartDenominator(c);
        c=c*e;
    #=  If(EvenQ(Denominator(NumericFactor(Together(u)))),
          im*b*log(RemoveContent(c^2+e^2-(c^2-e^2)*cos(2*u)+2*c*e*sin(2*u),x))/4 -
          im*b*log(RemoveContent(c^2+e^2-(c^2-e^2)*cos(2*u)-2*c*e*sin(2*u),x))/4,
        im*b*log(RemoveContent(e^2+2*c*e*cos(u)*sin(u)+(c^2-e^2)*sin(u)^2,x))/4 -
        im*b*log(RemoveContent(e^2-2*c*e*cos(u)*sin(u)+(c^2-e^2)*sin(u)^2,x))/4)))), =#
        im*b*log(RemoveContent(e*cos(u)+c*sin(u),x))/2 -
        im*b*log(RemoveContent(e*cos(u)-c*sin(u),x))/2))),
      If(LtQ(a,0),
        RectifyTangent(u,-a,-b,x),
      If(EqQ(a,1),
        b*SimplifyAntiderivative(u,x),
      Module([c,numr,denr],
      If(EvenQ(Denominator(NumericFactor(Together(u)))),
        c=Simplify((1+a)/(1-a));
        numr=SmartNumerator(c);
        denr=SmartDenominator(c);
        b*SimplifyAntiderivative(u,x) - b*atan(NormalizeLeadTermSigns(denr*sin(2*u)/(numr+denr*cos(2*u)))),
      If(GtQ(a,1),
        c=Simplify(1/(a-1));
        numr=SmartNumerator(c);
        denr=SmartDenominator(c);
        b*SimplifyAntiderivative(u,x) + b*atan(NormalizeLeadTermSigns(denr*cos(u)*sin(u)/(numr+denr*sin(u)^2))),
      c=Simplify(a/(1-a));
      numr=SmartNumerator(c);
      denr=SmartDenominator(c);
      b*SimplifyAntiderivative(u,x) - b*atan(NormalizeLeadTermSigns(denr*cos(u)*sin(u)/(numr+denr*cos(u)^2)))))))))


    #= ::Input:: =#
    #= =#


    #= ::Item::Closed:: =#
    #=Basis: atan(im*a+im*b*tan(f(x)))==im*atanh(a+b*tan(f(x)))=#


    #= ::Item:: =#
    #=Basis: D(atanh(c/e + (d/e)*tan(f(x))), x) == D(log((c + e)^2 + d^2 + ((c + e)^2 - d^2)*cos(2*f(x)) + 2*(c + e)*d*sin(2*f(x)))/4 - log((c - e)^2 + d^2 + ((c - e)^2 - d^2)*cos(2*f(x)) + 2*(c - e)*d*sin(2*f(x)))/4, x)=#


    #= ::Item:: =#
    #=Basis: D(atanh(c/e + (d/e)*tan(f(x))), x) == D(log((c + e)^2 + 2*(c + e)*d*cos(f(x))*sin(f(x)) - ((c + e)^2 - d^2)*sin(f(x))^2)/4 - log((c - e)^2 + 2*(c - e)*d*cos(f(x))*sin(f(x)) - ((c - e)^2 - d^2)*sin(f(x))^2)/4, x)=#


    #= ::Item:: =#
    #=Basis: D(atan(a + b*tan(f(x))), x) == D(f(x) + atan((2*a*b*cos(2*f(x)) - (1 + a^2 - b^2)*sin(2*f(x)))/(a^2 + (1 + b)^2 + (1 + a^2 - b^2)*cos(2*f(x)) + 2*a*b*sin(2*f(x)))), x)=#


    #= ::Item:: =#
    #=Basis: D(atan(a + b*tan(f(x))), x) == D(f(x) - atan((a*b - 2*a*b*cos(f(x))^2 + (1 + a^2 - b^2)*cos(f(x))*sin(f(x)))/(b*(1 + b) + (1 + a^2 - b^2)*cos(f(x))^2 + 2*a*b*cos(f(x))*sin(f(x)))), x)=#


    #= RectifyTangent(u,a,b,r,x)*returns*an*expression*whose*derivative*equals*the*derivative*of*r*atan(a+b*tan(u))*wrt*x. =#
    RectifyTangent(u_,a_,b_,r_,x_Symbol) :=
      If(MatchQ(Together(a),d_'*Complex(0,c_)) && MatchQ(Together(b),d_'*Complex(0,c_)),
        Module([c=a/im,d=b/im,e],
        If(LtQ(d,0),
          RectifyTangent(u,-a,-b,-r,x),
        e=SmartDenominator(Together(c+d*x));
        c=c*e;
        d=d*e;
        If(EvenQ(Denominator(NumericFactor(Together(u)))),
          im*r*log(RemoveContent(Simplify((c+e)^2+d^2)+Simplify((c+e)^2-d^2)*cos(2*u)+Simplify(2*(c+e)*d)*sin(2*u),x))/4 -
          im*r*log(RemoveContent(Simplify((c-e)^2+d^2)+Simplify((c-e)^2-d^2)*cos(2*u)+Simplify(2*(c-e)*d)*sin(2*u),x))/4,
        im*r*log(RemoveContent(Simplify((c+e)^2)+Simplify(2*(c+e)*d)*cos(u)*sin(u)-Simplify((c+e)^2-d^2)*sin(u)^2,x))/4 -
        im*r*log(RemoveContent(Simplify((c-e)^2)+Simplify(2*(c-e)*d)*cos(u)*sin(u)-Simplify((c-e)^2-d^2)*sin(u)^2,x))/4))),
      If(LtQ(b,0),
        RectifyTangent(u,-a,-b,-r,x),
      If(EvenQ(Denominator(NumericFactor(Together(u)))),
        r*SimplifyAntiderivative(u,x) +
        r*atan(Simplify((2*a*b*cos(2*u)-(1+a^2-b^2)*sin(2*u))/(a^2+(1+b)^2+(1+a^2-b^2)*cos(2*u)+2*a*b*sin(2*u)))),
      r*SimplifyAntiderivative(u,x) -
      r*atan(ActivateTrig(Simplify((a*b-2*a*b*cos(u)^2+(1+a^2-b^2)*cos(u)*sin(u))/(b*(1+b)+(1+a^2-b^2)*cos(u)^2+2*a*b*cos(u)*sin(u))))))))


    #= ::Input:: =#
    #= =#


    #= ::Item::Closed:: =#
    #=Basis: D(atanh(a + b*tanh(f(x))), x) == D(f(x) - atanh((2*a*b*cosh(2*f(x)) - (1 - a^2 - b^2)*sinh(2*f(x)))/(a^2 - (1 + b)^2 - (1 - a^2 - b^2)*cosh(2*f(x)) + 2*a*b*sinh(2*f(x)))), x)=#


    #= ::Item:: =#
    #=Basis: D(atanh(a + b*tanh(f(x))), x) == D(f(x) - atanh((a*b - 2*a*b*cosh(f(x))^2 + (1 - a^2 - b^2)*cosh(f(x))*sinh(f(x)))/(b*(1 + b) + (1 - a^2 - b^2)*cosh(f(x))^2 - 2*a*b*cosh(f(x))*sinh(f(x)))), x)=#


    #= SimplifyAntiderivative(atanh(c_'*(a_+b_'*tanh(u_))),x_Symbol) :=
      If(EvenQ(Denominator(NumericFactor(Together(u)))),
        SimplifyAntiderivative(u,x) -
        atanh(NormalizeTogether((2*a*b*c^2*cosh(2*u)-(1-a^2*c^2-b^2*c^2)*sinh(2*u))/(a^2*c^2-(1+b*c)^2-(1-a^2*c^2-b^2*c^2)*cosh(2*u)+2*a*b*c^2*sinh(2*u)))),
      SimplifyAntiderivative(u,x) -
      atanh(NormalizeTogether((a*b*c^2-2*a*b*c^2*cosh(u)^2+(1-a^2*c^2-b^2*c^2)*cosh(u)*sinh(u))/(b*c*(1+b*c)+(1-a^2*c^2-b^2*c^2)*cosh(u)^2-2*a*b*c^2*cosh(u)*sinh(u))))) <--
    FreeQ([a,b,c],x) =#


    #= ::Subsection::Closed:: =#
    #=RectifyCotangent=#


    #= ::Item::Closed:: =#
    #=Basis: acot(im*a*cot(f(x)))==-im*acoth(a*cot(f(x)))=#


    #= ::Item:: =#
    #=Basis: D(acoth((c/e)*cot(f(x))), x) == D(log(c*cos(f(x)) + e*sin(f(x)))/2 - log(c*cos(f(x)) - e*sin(f(x)))/2, x)=#


    #= ::Item:: =#
    #=Note: Note*unlike*the*above, the*log*terms*in*the*following*two*identities*are*real-valued*when*c, e*and*f(x)*are*real.=#


    #= ::Item:: =#
    #=Basis: D(atanh((c/e)*cot(f(x))), x) == D(log(c^2 + e^2 + (c^2 - e^2)*cos(2*f(x)) + 2*c*e*sin(2*f(x)))/4 - log(c^2 + e^2 + (c^2 - e^2)*cos(2*f(x)) - 2*c*e*sin(2*f(x)))/4, x)=#


    #= ::Item:: =#
    #=Basis: D(atanh((c/e)*cot(f(x))), x) == D(log(e^2 + (c^2 - e^2)*cos(f(x))^2 + 2*c*e*cos(f(x))*sin(f(x)))/4 - log(e^2 + (c^2 - e^2)*cos(f(x))^2 - 2*c*e*cos(f(x))*sin(f(x)))/4, x)=#


    #= ::Item:: =#
    #=Basis: D(acot(a*cot(f(x))), x) == D(f(x) + atan(sin(2*f(x))/((1 + a)/(1 - a) - cos(2*f(x)))), x)=#


    #= ::Item:: =#
    #=Basis: D(acot(a*cot(f(x))), x) == D(f(x) - atan((cos(f(x))*sin(f(x)))/(1/(a - 1) + cos(f(x))^2)), x) == D(f(x) + atan((cos(f(x))*sin(f(x)))/(a/(1 - a) + sin(f(x))^2)), x)=#


    #= RectifyCotangent(u,a,b,x)*returns*an*expression*whose*derivative*equals*the*derivative*of*b*acot(a*cot(u))*wrt*x. =#
    RectifyCotangent(u_,a_,b_,x_Symbol) :=
      If(MatchQ(Together(a),d_'*Complex(0,c_)),
        Module([c=a/im,e],
        If(LtQ(c,0),
          RectifyCotangent(u,-a,-b,x),
        If(EqQ(c,1),
          If(EvenQ(Denominator(NumericFactor(Together(u)))),
            -im*b*atanh(sin(2*u))/2,
          -im*b*atanh(2*cos(u)*sin(u))/2),
        e=SmartDenominator(c);
        c=c*e;
    #=  If(EvenQ(Denominator(NumericFactor(Together(u)))),
          -im*b*log(RemoveContent(c^2+e^2+(c^2-e^2)*cos(2*u)+2*c*e*sin(2*u),x))/4 +
           im*b*log(RemoveContent(c^2+e^2+(c^2-e^2)*cos(2*u)-2*c*e*sin(2*u),x))/4,
        -im*b*log(RemoveContent(e^2+(c^2-e^2)*cos(u)^2+2*c*e*cos(u)*sin(u),x))/4 +
         im*b*log(RemoveContent(e^2+(c^2-e^2)*cos(u)^2-2*c*e*cos(u)*sin(u),x))/4)))), =#
        -im*b*log(RemoveContent(c*cos(u)+e*sin(u),x))/2 +
        im*b*log(RemoveContent(c*cos(u)-e*sin(u),x))/2))),
      If(LtQ(a,0),
        RectifyCotangent(u,-a,-b,x),
      If(EqQ(a,1),
        b*SimplifyAntiderivative(u,x),
      Module([c,numr,denr],
      If(EvenQ(Denominator(NumericFactor(Together(u)))),
        c=Simplify((1+a)/(1-a));
        numr=SmartNumerator(c);
        denr=SmartDenominator(c);
        b*SimplifyAntiderivative(u,x) + b*atan(NormalizeLeadTermSigns(denr*sin(2*u)/(numr-denr*cos(2*u)))),
      If(GtQ(a,1),
        c=Simplify(1/(a-1));
        numr=SmartNumerator(c);
        denr=SmartDenominator(c);
        b*SimplifyAntiderivative(u,x) - b*atan(NormalizeLeadTermSigns(denr*cos(u)*sin(u)/(numr+denr*cos(u)^2))),
      c=Simplify(a/(1-a));
      numr=SmartNumerator(c);
      denr=SmartDenominator(c);
      b*SimplifyAntiderivative(u,x) + b*atan(NormalizeLeadTermSigns(denr*cos(u)*sin(u)/(numr+denr*sin(u)^2)))))))))


    #= ::Input:: =#
    #= =#


    #= ::Item::Closed:: =#
    #=Basis: atan(im*a+im*b*cot(f(x)))==im*atanh(a+b*cot(f(x)))=#


    #= ::Item:: =#
    #=Basis: D(atanh(c/e + (d/e)*cot(f(x))), x) == D(log((c + e)^2 + d^2 - ((c + e)^2 - d^2)*cos(2*f(x)) + 2*(c + e)*d*sin(2*f(x)))/4 - log((c - e)^2 + d^2 - ((c - e)^2 - d^2)*cos(2*f(x)) + 2*(c - e)*d*sin(2*f(x)))/4, x)=#


    #= ::Item:: =#
    #=Basis: D(atanh(c/e + (d/e)*cot(f(x))), x) == D(log((c + e)^2 - ((c + e)^2 - d^2)*cos(f(x))^2 + 2*(c + e)*d*cos(f(x))*sin(f(x)))/4 - log((c - e)^2 - ((c - e)^2 - d^2)*cos(f(x))^2 + 2*(c - e)*d*cos(f(x))*sin(f(x)))/4, x)=#


    #= ::Item:: =#
    #=Basis: D(atan(a + b*cot(f(x))), x) == D(-f(x) - atan((2*a*b*cos(2*f(x)) + (1 + a^2 - b^2)*sin(2*f(x)))/(a^2 + (1 + b)^2 - (1 + a^2 - b^2)*cos(2*f(x)) + 2*a*b*sin(2*f(x)))), x)=#


    #= ::Item:: =#
    #=Basis: D(atan(a + b*cot(f(x))), x) == D(-f(x) - atan((a*b - 2*a*b*sin(f(x))^2 + (1 + a^2 - b^2)*cos(f(x))*sin(f(x)))/(b*(1 + b) + (1 + a^2 - b^2)*sin(f(x))^2 + 2*a*b*cos(f(x))*sin(f(x)))), x)=#


    #= RectifyCotangent(u,a,b,r,x)*returns*an*expression*whose*derivative*equals*the*derivative*of*r*atan(a+b*cot(u))*wrt*x. =#
    RectifyCotangent(u_,a_,b_,r_,x_Symbol) :=
      If(MatchQ(Together(a),d_'*Complex(0,c_)) && MatchQ(Together(b),d_'*Complex(0,c_)),
        Module([c=a/im,d=b/im,e],
        If(LtQ(d,0),
          RectifyTangent(u,-a,-b,-r,x),
        e=SmartDenominator(Together(c+d*x));
        c=c*e;
        d=d*e;
        If(EvenQ(Denominator(NumericFactor(Together(u)))),
          im*r*log(RemoveContent(Simplify((c+e)^2+d^2)-Simplify((c+e)^2-d^2)*cos(2*u)+Simplify(2*(c+e)*d)*sin(2*u),x))/4 -
          im*r*log(RemoveContent(Simplify((c-e)^2+d^2)-Simplify((c-e)^2-d^2)*cos(2*u)+Simplify(2*(c-e)*d)*sin(2*u),x))/4,
        im*r*log(RemoveContent(Simplify((c+e)^2)-Simplify((c+e)^2-d^2)*cos(u)^2+Simplify(2*(c+e)*d)*cos(u)*sin(u),x))/4 -
        im*r*log(RemoveContent(Simplify((c-e)^2)-Simplify((c-e)^2-d^2)*cos(u)^2+Simplify(2*(c-e)*d)*cos(u)*sin(u),x))/4))),
      If(LtQ(b,0),
        RectifyCotangent(u,-a,-b,-r,x),
      If(EvenQ(Denominator(NumericFactor(Together(u)))),
        -r*SimplifyAntiderivative(u,x) -
        r*atan(Simplify((2*a*b*cos(2*u)+(1+a^2-b^2)*sin(2*u))/(a^2+(1+b)^2-(1+a^2-b^2)*cos(2*u)+2*a*b*sin(2*u)))),
      -r*SimplifyAntiderivative(u,x) -
      r*atan(ActivateTrig(Simplify((a*b-2*a*b*sin(u)^2+(1+a^2-b^2)*cos(u)*sin(u))/(b*(1+b)+(1+a^2-b^2)*sin(u)^2+2*a*b*cos(u)*sin(u))))))))


    #= ::Input:: =#
    #= =#


    #= ::Item::Closed:: =#
    #=Basis: D(atanh(a + b*coth(f(x))), x) == D(f(x) - atanh((2*a*b*cosh(2*f(x)) - (1 - a^2 - b^2)*sinh(2*f(x)))/(-a^2 + (1 + b)^2 - (1 - a^2 - b^2)*cosh(2*f(x)) + 2*a*b*sinh(2*f(x)))), x)=#


    #= ::Item:: =#
    #=Basis: D(atanh(a + b*coth(f(x))), x) == D(f(x) - atanh((a*b + 2*a*b*sinh(f(x))^2 - (1 - a^2 - b^2)*cosh(f(x))*sinh(f(x)))/(b*(1 + b) - (1 - a^2 - b^2)*sinh(f(x))^2 + 2*a*b*cosh(f(x))*sinh(f(x)))), x)=#


    #= SimplifyAntiderivative(atanh(c_'*(a_+b_'*coth(u_))),x_Symbol) :=
      If(EvenQ(Denominator(NumericFactor(Together(u)))),
        SimplifyAntiderivative(u,x) -
        atanh(NormalizeTogether((2*a*b*c^2*cosh(2*u)-(1-a^2*c^2-b^2*c^2)*sinh(2*u))/(-a^2*c^2+(1+b*c)^2-(1-a^2*c^2-b^2*c^2)*cosh(2*u)+2*a*b*c^2*sinh(2*u)))),
      SimplifyAntiderivative(u,x) -
      atanh(NormalizeTogether((a*b*c^2+2*a*b*c^2*sinh(u)^2-(1-a^2*c^2-b^2*c^2)*cosh(u)*sinh(u))/(b*c*(1+b*c)-(1-a^2*c^2-b^2*c^2)*sinh(u)^2+2*a*b*c^2*cosh(u)*sinh(u))))) <--
    FreeQ([a,b,c],x) =#


    SmartNumerator(u_^n_) := SmartDenominator(u^(-n)) <-- RationalQ(n) && n<0

    SmartNumerator(u_*v_) := SmartNumerator(u)*SmartNumerator(v)

    SmartNumerator(u_) := Numerator(u)


    SmartDenominator(u_^n_) := SmartNumerator(u^(-n)) <-- RationalQ(n) && n<0

    SmartDenominator(u_*v_) := SmartDenominator(u)*SmartDenominator(v)

    SmartDenominator(u_) := Denominator(u)


    #= ::Subsection::Closed:: =#
    #=SubstFor=#


    #= u*is*a*function*of*v.  SubstFor(w,v,u,x)*returns*w*times*u*with*v*replaced*by*x. =#
    SubstFor(w_,v_,u_,x_) :=
      SimplifyIntegrand(w*SubstFor(v,u,x),x)


    #= u*is*a*function*of*v.  SubstFor(v,u,x)*returns*u*with*v*replaced*by*x. =#
    SubstFor(v_,u_,x_) :=
      If(AtomQ(v),
        Subst(u,v,x),
      If(Not(InertTrigFreeQ(u)),
        SubstFor(v,ActivateTrig(u),x),
      If(NeQ(FreeFactors(v,x),1),
        SubstFor(NonfreeFactors(v,x),u,x/FreeFactors(v,x)),
      Switch(Head(v),
        sin, SubstForTrig(u,x,sqrt(1-x^2),Part(v, 1),x),
        cos, SubstForTrig(u,sqrt(1-x^2),x,Part(v, 1),x),
        tan, SubstForTrig(u,x/sqrt(1+x^2),1/sqrt(1+x^2),Part(v, 1),x),
        cot, SubstForTrig(u,1/sqrt(1+x^2),x/sqrt(1+x^2),Part(v, 1),x),
        sec, SubstForTrig(u,1/sqrt(1-x^2),1/x,Part(v, 1),x),
        csc, SubstForTrig(u,1/x,1/sqrt(1-x^2),Part(v, 1),x),
        sinh, SubstForHyperbolic(u,x,sqrt(1+x^2),Part(v, 1),x),
        cosh, SubstForHyperbolic(u,sqrt(-1+x^2),x,Part(v, 1),x),
        tanh, SubstForHyperbolic(u,x/sqrt(1-x^2),1/sqrt(1-x^2),Part(v, 1),x),
        coth, SubstForHyperbolic(u,1/sqrt(-1+x^2),x/sqrt(-1+x^2),Part(v, 1),x),
        sech, SubstForHyperbolic(u,1/sqrt(-1+x^2),1/x,Part(v, 1),x),
        csch, SubstForHyperbolic(u,1/x,1/sqrt(1+x^2),Part(v, 1),x),
        _, SubstForAux(u,v,x)))))


    #= u*is*a*function*of*v.  SubstForAux(u,v,x)*returns*u*with*v*replaced*by*x. =#
    SubstForAux(u_,v_,x_) :=
      If(u===v,
        x,
      If(AtomQ(u),
        If(PowerQ(v) && FreeQ(Part(v, 2),x) && EqQ(u,Part(v, 1)),
          x^Simplify(1/Part(v, 2)),
        u),
      If(PowerQ(u) && FreeQ(Part(u, 2),x),
        If(EqQ(Part(u, 1),v),
          x^Part(u, 2),
        If(PowerQ(v) && FreeQ(Part(v, 2),x) && EqQ(Part(u, 1),Part(v, 1)),
          x^Simplify(Part(u, 2)/Part(v, 2)),
        SubstForAux(Part(u, 1),v,x)^Part(u, 2))),
      If(ProductQ(u) && NeQ(FreeFactors(u,x),1),
        FreeFactors(u,x)*SubstForAux(NonfreeFactors(u,x),v,x),
      If(ProductQ(u) && ProductQ(v),
        SubstForAux(First(u),First(v),x),
      Map(MFunction(SubstForAux(Symbol("#1"),v,x)),u))))))


    #= u*(v)*is*an*expression*of*the*form*f*(sin(v),cos(v),tan(v),cot(v),sec(v),csc(v)). =#
    #= SubstForTrig(u,sin,cos,v,x)*returns*the*expression*f*(sin,cos,sin/cos,cos/sin,1/cos,1/sin). =#
    SubstForTrig(u_,sin_,cos_,v_,x_) :=
      If(AtomQ(u),
        u,
      If(TrigQ(u) && IntegerQuotientQ(Part(u, 1),v),
        If(Part(u, 1)===v || EqQ(Part(u, 1),v),
          Switch(Head(u), sin, sin,  cos, cos,  tan, sin/cos,  cot, cos/sin,  sec, 1/cos,  csc, 1/sin),
        Map(MFunction(SubstForTrig(Symbol("#1"),sin,cos,v,x)),
    			ReplaceAll(TrigExpand(Head(u)(Simplify(Part(u, 1)/v)*x)),x=>v))),
      If(ProductQ(u) && Head(Part(u, 1))===cos && Head(Part(u, 2))===sin && EqQ(Part(u, 1,1),v/2) && EqQ(Part(u, 2,1),v/2),
        sin/2*SubstForTrig(Drop(u,2),sin,cos,v,x),
      Map(MFunction(SubstForTrig(Symbol("#1"),sin,cos,v,x)),u))))


    #= u*(v)*is*an*expression*of*the*form*f*(sinh(v),cosh(v),tanh(v),coth(v),sech(v),csch(v)). =#
    #= SubstForHyperbolic(u,sinh,cosh,v,x)*returns*the*expression
    		f*(sinh,cosh,sinh/cosh,cosh/sinh,1/cosh,1/sinh). =#
    SubstForHyperbolic(u_,sinh_,cosh_,v_,x_) :=
      If(AtomQ(u),
        u,
      If(HyperbolicQ(u) && IntegerQuotientQ(Part(u, 1),v),
        If(Part(u, 1)===v || EqQ(Part(u, 1),v),
          Switch(Head(u), sinh, sinh,  cosh, cosh,  tanh, sinh/cosh,  coth, cosh/sinh,  sech, 1/cosh, csch, 1/sinh),
        Map(MFunction(SubstForHyperbolic(Symbol("#1"),sinh,cosh,v,x)),
    			ReplaceAll(TrigExpand(Head(u)(Simplify(Part(u, 1)/v)*x)),x=>v))),
      If(ProductQ(u) && Head(Part(u, 1))===cosh && Head(Part(u, 2))===sinh && EqQ(Part(u, 1,1),v/2) && EqQ(Part(u, 2,1),v/2),
        sinh/2*SubstForHyperbolic(Drop(u,2),sinh,cosh,v,x),
      Map(MFunction(SubstForHyperbolic(Symbol("#1"),sinh,cosh,v,x)),u))))


    #= ::Subsection::Closed:: =#
    #=SubstForFractionalPowerOfLinear=#


    #= If*u*has*a*subexpression*of*the*form*(a+b*x)^(m/n)*where*m*and*n>1*are*integers,
    	SubstForFractionalPowerOfLinear(u,x)*returns*the*list [v,n,a+b*x,1/b] where*v*is*u
    	with*subexpressions*of*the*form*(a+b*x)^(m/n)*replaced*by*x^m*and*x*replaced
    	by -a/b+x^n/b, and*all*times*x^(n-1); else*it*returns*false. =#
    SubstForFractionalPowerOfLinear(u_,x_Symbol) :=
      With([lst=FractionalPowerOfLinear(u,1,false,x)],
      If(AtomQ(lst) || FalseQ(Part(lst, 2)),
        false,
      With([n=Part(lst, 1), a=Coefficient(Part(lst, 2),x,0), b=Coefficient(Part(lst, 2),x,1)],
      With([tmp=Simplify(x^(n-1)*SubstForFractionalPower(u,Part(lst, 2),n,-a/b+x^n/b,x))],
      [NonfreeFactors(tmp,x),n,Part(lst, 2),FreeFactors(tmp,x)/b]))))


    #= If*u*has*a*subexpression*of*the*form*(a+b*x)^(m/n),
    	FractionalPowerOfLinear(u,1,false,x)*returns [n,a+b*x]; else*it*returns*false. =#
    FractionalPowerOfLinear(u_,n_,v_,x_) :=
      If(AtomQ(u) || FreeQ(u,x),
        [n,v],
      If(CalculusQ(u),
        false,
      If(FractionalPowerQ(u) && LinearQ(Part(u, 1),x) && (FalseQ(v) || EqQ(Part(u, 1),v)),
        [LCM(Denominator(Part(u, 2)),n),Part(u, 1)],
      Catch(Module([lst=[n,v]],
        Scan(MFunction(If(AtomQ(lst=FractionalPowerOfLinear(Symbol("#1"),Part(lst, 1),Part(lst, 2),x)),Throw(false))),u);
        lst)))))


    #= ::Subsection::Closed:: =#
    #=InverseFunctionOfLinear=#


    #= If*u*has*a*subexpression*of*the*form*g(a+b*x)*where*g*is*an*inverse*function,
    	InverseFunctionOfLinear(u,x)*returns*g(a+b*x); else*it*returns*false. =#
    InverseFunctionOfLinear(u_,x_Symbol) :=
      If(AtomQ(u) || CalculusQ(u) || FreeQ(u,x),
        false,
      If(InverseFunctionQ(u) && LinearQ(Part(u, 1),x),
        u,
      Module([tmp],
      Catch(
        Scan(MFunction(If(Not(AtomQ(tmp=InverseFunctionOfLinear(Symbol("#1"),x))),Throw(tmp))),u);
        false))))


    #= ::Subsection::Closed:: =#
    #=TryPureTanSubst=#


    TryPureTanSubst(u_,x_Symbol) :=
    #=  Not(MatchQ(u,log(v_))) &&
      Not(MatchQ(u,f_(v_)^2 <-- LinearQ(v,x))) &&
      Not(MatchQ(u,atan(a_'*tan(v_)) <-- FreeQ(a,x))) &&
      Not(MatchQ(u,atan(a_'*cot(v_)) <-- FreeQ(a,x))) &&
      Not(MatchQ(u,acot(a_'*tan(v_)) <-- FreeQ(a,x))) &&
      Not(MatchQ(u,acot(a_'*cot(v_)) <-- FreeQ(a,x))) &&
      u===ExpandIntegrand(u,x) =#
      Not(MatchQ(u,F_(c_'*(a_'+b_'*G_(v_))) <-- FreeQ([a,b,c],x) && MemberQ([atan,acot,atanh,acoth],F) && MemberQ([tan,cot,tanh,coth],G) && LinearQ(v,x)))


    #= ::Subsection::Closed:: =#
    #=TryPureTanhSubst=#


    # MemberQ([sinh,cosh,sech,csch],f)


    TryTanhSubst(u_,x_Symbol) :=
      FalseQ(FunctionOfLinear(u,x)) &&
      Not(MatchQ(u,r_'*(s_+t_)^n_' <-- IntegerQ(n) && n>0)) &&
    #=Not(MatchQ(u,log(f_(x)^2) <-- MemberQ([sinh,cosh,sech,csch],f)))  && =#
      Not(MatchQ(u,log(v_)))  &&
      Not(MatchQ(u,1/(a_+b_'*f_(x)^n_) <-- MemberQ([sinh,cosh,sech,csch],f) && IntegerQ(n) && n>2)) &&
      Not(MatchQ(u,f_(m_'*x)*g_(n_'*x) <-- IntegersQ(m,n) && MemberQ([sinh,cosh,sech,csch],f) && MemberQ([sinh,cosh,sech,csch],g))) &&
      Not(MatchQ(u,r_'*(a_'*s_^m_)^p_ <-- FreeQ([a,m,p],x) && Not(m===2 && (s===sech(x) || s===csch(x))))) &&
      u===ExpandIntegrand(u,x)


    TryPureTanhSubst(u_,x_Symbol) :=
      Not(MatchQ(u,log(v_)))  &&
      Not(MatchQ(u,atanh(a_'*tanh(v_)) <-- FreeQ(a,x))) &&
      Not(MatchQ(u,atanh(a_'*coth(v_)) <-- FreeQ(a,x))) &&
      Not(MatchQ(u,acoth(a_'*tanh(v_)) <-- FreeQ(a,x))) &&
      Not(MatchQ(u,acoth(a_'*coth(v_)) <-- FreeQ(a,x))) &&
      u===ExpandIntegrand(u,x)


    #= ::Section::Closed:: =#
    #=Inert*trig*functions=#


    #= ::Subsection::Closed:: =#
    #=InertTrigQ=#


    InertTrigQ(f_) := MemberQ([sin,cos,tan,cot,sec,csc],f)

    InertTrigQ(f_,g_) :=
      If(f===g,
        InertTrigQ(f),
      InertReciprocalQ(f,g) || InertReciprocalQ(g,f))

    InertTrigQ(f_,g_,h_) := InertTrigQ(f,g) && InertTrigQ(g,h)


    InertReciprocalQ(f_,g_) := f===sin && g===csc || f===cos && g===sec || f===tan && g===cot


    InertTrigFreeQ(u_) := FreeQ(u,sin) && FreeQ(u,cos) && FreeQ(u,tan) && FreeQ(u,cot) && FreeQ(u,sec) && FreeQ(u,csc)


    #= ::Subsection::Closed:: =#
    #=ActivateTrig(u)=#


    ActivateTrig(u_) :=
      ReplaceAll(u,[sin=>sin,cos=>cos,tan=>tan,cot=>cot,sec=>sec,csc=>csc])


    #= ::Subsection::Closed:: =#
    #=DeactivateTrig(u,x)=#


    #= u*is*a*function*of*trig*functions*of*a*linear*function*of*x. =#
    #= DeactivateTrig(u,x)*returns*u*with*the*trig*functions*replaced*with*inert*trig*functions. =#


    DeactivateTrig((c_'+d_'*x_)^m_'*(a_'+b_'*trig_(e_'+f_'*x_))^n_',x_) :=
      (c+d*x)^m*(a+b*DeactivateTrig(trig(e+f*x),x))^n <--
    FreeQ([a,b,c,d,e,f,m,n],x) && (TrigQ(trig) || HyperbolicQ(trig))


    DeactivateTrig(u_,x_) :=
      UnifyInertTrigFunction(FixInertTrigFunction(DeactivateTrigAux(u,x),x),x)


    DeactivateTrigAux(u_,x_) :=
      If(AtomQ(u),
        u,
      If(TrigQ(u) && LinearQ(Part(u, 1),x),
        With([v=ExpandToSum(Part(u, 1),x)],
        Switch(Head(u),
    	  sin, ReduceInertTrig(sin,v),
    	  cos, ReduceInertTrig(cos,v),
    	  tan, ReduceInertTrig(tan,v),
    	  cot, ReduceInertTrig(cot,v),
    	  sec, ReduceInertTrig(sec,v),
    	  csc, ReduceInertTrig(csc,v))),
      If(HyperbolicQ(u) && LinearQ(Part(u, 1),x),
        With([v=ExpandToSum(im*Part(u, 1),x)],
        Switch(Head(u),
    	  sinh, -im*ReduceInertTrig(sin,v),
    	  cosh, ReduceInertTrig(cos,v),
    	  tanh, -im*ReduceInertTrig(tan,v),
    	  coth, im*ReduceInertTrig(cot,v),
    	  sech, ReduceInertTrig(sec,v),
    	  csch, im*ReduceInertTrig(csc,v))),
      Map(MFunction(DeactivateTrigAux(Symbol("#1"),x)),u))))


    #= ::Subsection::Closed:: =#
    #=FixInertTrigFunction(u,x)=#


    Clear(FixInertTrigFunction)

    FixInertTrigFunction(a_*u_,x_) :=
      a*FixInertTrigFunction(u,x) <--
    FreeQ(a,x)

    FixInertTrigFunction(u_'*(a_*(b_+v_))^n_,x_) :=
      FixInertTrigFunction(u*(a*b+a*v)^n,x) <--
    FreeQ([a,b,n],x) && Not(FreeQ(v,x))


    FixInertTrigFunction(csc(v_)^m_'*(c_'*sin(w_))^n_',x_) :=
      sin(v)^(-m)*(c*sin(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(sec(v_)^m_'*(c_'*cos(w_))^n_',x_) :=
      cos(v)^(-m)*(c*cos(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(cot(v_)^m_'*(c_'*tan(w_))^n_',x_) :=
      tan(v)^(-m)*(c*tan(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(tan(v_)^m_'*(c_'*cot(w_))^n_',x_) :=
      cot(v)^(-m)*(c*cot(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(cos(v_)^m_'*(c_'*sec(w_))^n_',x_) :=
      sec(v)^(-m)*(c*sec(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(sin(v_)^m_'*(c_'*csc(w_))^n_',x_) :=
      csc(v)^(-m)*(c*csc(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)


    FixInertTrigFunction(sec(v_)^m_'*(c_'*sin(w_))^n_',x_) :=
      cos(v)^(-m)*(c*sin(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(csc(v_)^m_'*(c_'*cos(w_))^n_',x_) :=
      sin(v)^(-m)*(c*cos(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(cos(v_)^m_'*(c_'*tan(w_))^n_',x_) :=
      sec(v)^(-m)*(c*tan(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(sin(v_)^m_'*(c_'*cot(w_))^n_',x_) :=
      csc(v)^(-m)*(c*cot(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(sin(v_)^m_'*(c_'*sec(w_))^n_',x_) :=
      csc(v)^(-m)*(c*sec(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(cos(v_)^m_'*(c_'*csc(w_))^n_',x_) :=
      sec(v)^(-m)*(c*csc(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)


    FixInertTrigFunction(cot(v_)^m_'*(c_'*sin(w_))^n_',x_) :=
      tan(v)^(-m)*(c*sin(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(tan(v_)^m_'*(c_'*cos(w_))^n_',x_) :=
      cot(v)^(-m)*(c*cos(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(csc(v_)^m_'*(c_'*tan(w_))^n_',x_) :=
      sin(v)^(-m)*(c*tan(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(sec(v_)^m_'*(c_'*cot(w_))^n_',x_) :=
      cos(v)^(-m)*(c*cot(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(cot(v_)^m_'*(c_'*sec(w_))^n_',x_) :=
      tan(v)^(-m)*(c*sec(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)

    FixInertTrigFunction(tan(v_)^m_'*(c_'*csc(w_))^n_',x_) :=
      cot(v)^(-m)*(c*csc(w))^n <--
    FreeQ([c,n],x) && IntegerQ(m)


    FixInertTrigFunction(sec(v_)^m_'*sec(w_)^n_',x_) :=
      cos(v)^(-m)*cos(w)^(-n) <--
    IntegersQ(m,n)

    FixInertTrigFunction(csc(v_)^m_'*csc(w_)^n_',x_) :=
      sin(v)^(-m)*sin(w)^(-n) <--
    IntegersQ(m,n)


    FixInertTrigFunction(u_*tan(v_)^m_'*(a_+b_'*sin(w_))^n_',x_) :=
      sin(v)^m/cos(v)^m*FixInertTrigFunction(u*(a+b*sin(w))^n,x) <--
    FreeQ([a,b,n],x) && IntegerQ(m)

    FixInertTrigFunction(u_*cot(v_)^m_'*(a_+b_'*sin(w_))^n_',x_) :=
      cos(v)^m/sin(v)^m*FixInertTrigFunction(u*(a+b*sin(w))^n,x) <--
    FreeQ([a,b,n],x) && IntegerQ(m)

    FixInertTrigFunction(u_*tan(v_)^m_'*(a_+b_'*cos(w_))^n_',x_) :=
      sin(v)^m/cos(v)^m*FixInertTrigFunction(u*(a+b*cos(w))^n,x) <--
    FreeQ([a,b,n],x) && IntegerQ(m)

    FixInertTrigFunction(u_*cot(v_)^m_'*(a_+b_'*cos(w_))^n_',x_) :=
      cos(v)^m/sin(v)^m*FixInertTrigFunction(u*(a+b*cos(w))^n,x) <--
    FreeQ([a,b,n],x) && IntegerQ(m)


    FixInertTrigFunction(cot(v_)^m_'*(a_'+b_'*(c_'*sin(w_))^p_')^n_',x_) :=
      tan(v)^(-m)*(a+b*(c*sin(w))^p)^n <--
    FreeQ([a,b,c,n,p],x) && IntegerQ(m)

    FixInertTrigFunction(tan(v_)^m_'*(a_'+b_'*(c_'*cos(w_))^p_')^n_',x_) :=
      cot(v)^(-m)*(a+b*(c*cos(w))^p)^n <--
    FreeQ([a,b,c,n,p],x) && IntegerQ(m)


    FixInertTrigFunction(u_'*(c_'*sin(v_)^n_')^p_'*w_,x_) :=
      (c*sin(v)^n)^p*FixInertTrigFunction(u*w,x) <--
    FreeQ([c,p],x) && PowerOfInertTrigSumQ(w,sin,x)

    FixInertTrigFunction(u_'*(c_'*cos(v_)^n_')^p_'*w_,x_) :=
      (c*cos(v)^n)^p*FixInertTrigFunction(u*w,x) <--
    FreeQ([c,p],x) && PowerOfInertTrigSumQ(w,cos,x)

    FixInertTrigFunction(u_'*(c_'*tan(v_)^n_')^p_'*w_,x_) :=
      (c*tan(v)^n)^p*FixInertTrigFunction(u*w,x) <--
    FreeQ([c,p],x) && PowerOfInertTrigSumQ(w,tan,x)

    FixInertTrigFunction(u_'*(c_'*cot(v_)^n_')^p_'*w_,x_) :=
      (c*cot(v)^n)^p*FixInertTrigFunction(u*w,x) <--
    FreeQ([c,p],x) && PowerOfInertTrigSumQ(w,cot,x)

    FixInertTrigFunction(u_'*(c_'*sec(v_)^n_')^p_'*w_,x_) :=
      (c*sec(v)^n)^p*FixInertTrigFunction(u*w,x) <--
    FreeQ([c,p],x) && PowerOfInertTrigSumQ(w,sec,x)

    FixInertTrigFunction(u_'*(c_'*csc(v_)^n_')^p_'*w_,x_) :=
      (c*csc(v)^n)^p*FixInertTrigFunction(u*w,x) <--
    FreeQ([c,p],x) && PowerOfInertTrigSumQ(w,csc,x)


    FixInertTrigFunction(u_'*sec(v_)^n_'*w_,x_) :=
      cos(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,cos,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*csc(v_)^n_'*w_,x_) :=
      sin(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,sin,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*sec(v_)^n_'*w_,x_) :=
      cos(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,sin,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*csc(v_)^n_'*w_,x_) :=
      sin(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,cos,x) && IntegerQ(n)


    FixInertTrigFunction(u_'*cot(v_)^n_'*w_,x_) :=
      tan(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,tan,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*cos(v_)^n_'*w_,x_) :=
      sec(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,tan,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*cos(v_)^n_*w_,x_) :=
      sec(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,tan,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*csc(v_)^n_'*w_,x_) :=
      sin(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,tan,x) && IntegerQ(n)


    FixInertTrigFunction(u_'*tan(v_)^n_'*w_,x_) :=
      cot(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,cot,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*sin(v_)^n_'*w_,x_) :=
      csc(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,cot,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*sin(v_)^n_'*w_,x_) :=
      csc(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,cot,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*sec(v_)^n_'*w_,x_) :=
      cos(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,cot,x) && IntegerQ(n)


    FixInertTrigFunction(u_'*cos(v_)^n_'*w_,x_) :=
      sec(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,sec,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*cot(v_)^n_'*w_,x_) :=
      tan(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,sec,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*csc(v_)^n_'*w_,x_) :=
      sin(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,sec,x) && IntegerQ(n)


    FixInertTrigFunction(u_'*sin(v_)^n_'*w_,x_) :=
      csc(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,csc,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*tan(v_)^n_'*w_,x_) :=
      cot(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,csc,x) && IntegerQ(n)

    FixInertTrigFunction(u_'*sec(v_)^n_'*w_,x_) :=
      cos(v)^(-n)*FixInertTrigFunction(u*w,x) <--
    PowerOfInertTrigSumQ(w,csc,x) && IntegerQ(n)


    FixInertTrigFunction(u_'*tan(v_)^m_'*(a_'*sin(v_)+b_'*cos(v_))^n_',x_) :=
      sin(v)^m*cos(v)^(-m)*FixInertTrigFunction(u*(a*sin(v)+b*cos(v))^n,x) <--
    FreeQ([a,b,n],x) && IntegerQ(m)

    FixInertTrigFunction(u_'*cot(v_)^m_'*(a_'*sin(v_)+b_'*cos(v_))^n_',x_) :=
      cos(v)^m*sin(v)^(-m)*FixInertTrigFunction(u*(a*sin(v)+b*cos(v))^n,x) <--
    FreeQ([a,b,n],x) && IntegerQ(m)

    FixInertTrigFunction(u_'*sec(v_)^m_'*(a_'*sin(v_)+b_'*cos(v_))^n_',x_) :=
      cos(v)^(-m)*FixInertTrigFunction(u*(a*sin(v)+b*cos(v))^n,x) <--
    FreeQ([a,b,n],x) && IntegerQ(m)

    FixInertTrigFunction(u_'*csc(v_)^m_'*(a_'*sin(v_)+b_'*cos(v_))^n_',x_) :=
      sin(v)^(-m)*FixInertTrigFunction(u*(a*sin(v)+b*cos(v))^n,x) <--
    FreeQ([a,b,n],x) && IntegerQ(m)


    FixInertTrigFunction(f_(v_)^m_'*(A_'+B_'*g_(v_)+C_'*g_(v_)^2),x_) :=
      g(v)^(-m)*(A+B*g(v)+C*g(v)^2) <--
    FreeQ([A,B,C],x) && IntegerQ(m) && (InertReciprocalQ(f,g) || InertReciprocalQ(g,f))

    FixInertTrigFunction(f_(v_)^m_'*(A_'+C_'*g_(v_)^2),x_) :=
      g(v)^(-m)*(A+C*g(v)^2) <--
    FreeQ([A,C],x) && IntegerQ(m) && (InertReciprocalQ(f,g) || InertReciprocalQ(g,f))


    FixInertTrigFunction(f_(v_)^m_'*(A_'+B_'*g_(v_)+C_'*g_(v_)^2)*(a_'+b_'*g_(v_))^n_',x_) :=
      g(v)^(-m)*(A+B*g(v)+C*g(v)^2)*(a+b*g(v))^n <--
    FreeQ([a,b,A,B,C,n],x) && IntegerQ(m) && (InertReciprocalQ(f,g) || InertReciprocalQ(g,f))

    FixInertTrigFunction(f_(v_)^m_'*(A_'+C_'*g_(v_)^2)*(a_'+b_'*g_(v_))^n_',x_) :=
      g(v)^(-m)*(A+C*g(v)^2)*(a+b*g(v))^n <--
    FreeQ([a,b,A,C,n],x) && IntegerQ(m) && (InertReciprocalQ(f,g) || InertReciprocalQ(g,f))


    FixInertTrigFunction(u_,x_) := u


    PowerOfInertTrigSumQ(u_,func_,x_) :=
      MatchQ(u, (a_'+b_'*(c_'*func(w_))^n_')^p_' <-- FreeQ([a,b,c,n,p],x) && Not(EqQ(a,0) && (IntegerQ(p) || EqQ(n,1)))) ||
      MatchQ(u, (a_'+b_'*(d_'*func(w_))^p_'+c_'*(d_'*func(w_))^q_')^n_' <-- FreeQ([a,b,c,d,n,p,q],x))


    #= ::Subsection::Closed:: =#
    #=ReduceInertTrig(func,a,b,x)=#


    ReduceInertTrig(func_,m_'*(n_'*pi+u_')+v_') :=
      ReduceInertTrig(func,m*n,m*u+v) <--
    RationalQ(m,n)

    ReduceInertTrig(func_,m_'*Complex(0,mz_)*(n_'*Complex(0,nz_)*pi+u_')+v_') :=
      ReduceInertTrig(func,-m*mz*n*nz,m*mz*im*u+v) <--
    RationalQ(m,mz,n,nz)

    ReduceInertTrig(func_,u_) :=
      func(u)


    #= func*is*an*inert*function*and*m*is*rational =#
    #= ReduceInertTrig(func,m_,u_)*returns*func(m*pi+u)*with*m*reduced*0<=m<1/2.0. =#
    ReduceInertTrig(func_,m_,u_) :=
      If(m<0,
        If(m>=-1/4,
          func(m*pi+u),
        Switch(func,
    	  sin, -ReduceInertTrig(sin,-m,-u),
    	  cos, ReduceInertTrig(cos,-m,-u),
    	  tan, -ReduceInertTrig(tan,-m,-u),
    	  cot, -ReduceInertTrig(cot,-m,-u),
    	  sec, ReduceInertTrig(sec,-m,-u),
    	  csc, -ReduceInertTrig(csc,-m,-u))),
      If(m>=2,
        ReduceInertTrig(func,Mod(m,2),u),
      If(m>=1,
        Switch(func,
    	  sin, -ReduceInertTrig(sin,m-1,u),
    	  cos, -ReduceInertTrig(cos,m-1,u),
    	  tan, ReduceInertTrig(tan,m-1,u),
    	  cot, ReduceInertTrig(cot,m-1,u),
    	  sec, -ReduceInertTrig(sec,m-1,u),
    	  csc, -ReduceInertTrig(csc,m-1,u)),
      If(m>=1/2,
        Switch(func,
    	  sin, ReduceInertTrig(cos,m-1/2,u),
    	  cos, -ReduceInertTrig(sin,m-1/2,u),
    	  tan, -ReduceInertTrig(cot,m-1/2,u),
    	  cot, -ReduceInertTrig(tan,m-1/2,u),
    	  sec, -ReduceInertTrig(csc,m-1/2,u),
    	  csc, ReduceInertTrig(sec,m-1/2,u)),
      func(m*pi+u))))) <--
    RationalQ(m)


    #= ::Subsection::Closed:: =#
    #=UnifyInertTrigFunction(u,x)=#


    Clear(UnifyInertTrigFunction)


    UnifyInertTrigFunction(a_*u_,x_) :=
      a*UnifyInertTrigFunction(u,x) <--
    FreeQ(a,x)


    #= ::Subsubsection:: =#
    #=Cosine*to*sine=#


    #= ::Subsubsection::Closed:: =#
    #=1.0*(a*sin)^m*(b*trg)^n=#


    #= ::Text:: =#
    #=(a*cos(e+f*x))^m*(b*csc(e+f*x))^n == (a*sin(e+pi/2+f*x))^m*(-b*sec(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'*cos(e_'+f_'*x_))^m_'*(b_'*csc(e_'+f_'*x_))^n_',x_) :=
      (a*sin(e+pi/2+f*x))^m*(-b*sec(e+pi/2+f*x))^n <--
    FreeQ([a,b,e,f,m,n],x)


    #= ::Text:: =#
    #=(a*cos(e+f*x))^m*(b*sec(e+f*x))^n == (a*sin(e+pi/2+f*x))^m*(b*csc(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'*cos(e_'+f_'*x_))^m_'*(b_'*sec(e_'+f_'*x_))^n_',x_) :=
      (a*sin(e+pi/2+f*x))^m*(b*csc(e+pi/2+f*x))^n <--
    FreeQ([a,b,e,f,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=1.1.1*(a+b*sin)^n=#


    #= ::Text:: =#
    #=(a+b*cos(e+f*x))^n == (a+b*sin(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'+b_'*cos(e_'+f_'*x_))^n_',x_) :=
      (a+b*sin(e+pi/2+f*x))^n <--
    FreeQ([a,b,e,f,n],x)


    #= ::Subsubsection::Closed:: =#
    #=1.1.2*(g*cos)^p*(a+b*sin)^m=#


    #= ::Text:: =#
    #=(g*sin(e+f*x))^p*(a+b*cos(e+f*x))^m == (g*cos(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m=#


    UnifyInertTrigFunction((g_'*sin(e_'+f_'*x_))^p_'*(a_+b_'*cos(e_'+f_'*x_))^m_',x_) :=
      (g*cos(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m <--
    FreeQ([a,b,e,f,g,m,p],x)


    #= ::Text:: =#
    #=(g*csc(e+f*x))^p*(a+b*cos(e+f*x))^m == (g*sec(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m=#


    UnifyInertTrigFunction((g_'*csc(e_'+f_'*x_))^p_'*(a_+b_'*cos(e_'+f_'*x_))^m_',x_) :=
      (g*sec(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m <--
    FreeQ([a,b,e,f,g,m,p],x)


    #= ::Subsubsection::Closed:: =#
    #=1.1.3*(g*tan)^p*(a+b*sin)^m=#


    #= ::Text:: =#
    #=(g*cot(e+f*x))^p*(a+b*cos(e+f*x))^m == (-g*tan(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m=#


    #= ::Text:: =#
    #=(g*cot(e+f*x))^p*(a+b*cos(e+f*x))^m == (-g*tan(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m=#


    UnifyInertTrigFunction((g_'*cot(e_'+f_'*x_))^p_'*(a_+b_'*cos(e_'+f_'*x_))^m_',x_) :=
      If(true,
        (-g*tan(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m,
      (-g*tan(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m) <--
    FreeQ([a,b,e,f,g,m,p],x)


    #= ::Text:: =#
    #=(g*tan(e+f*x))^p*(a+b*cos(e+f*x))^m == (-g*cot(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m=#


    UnifyInertTrigFunction((g_'*tan(e_'+f_'*x_))^p_'*(a_+b_'*cos(e_'+f_'*x_))^m_',x_) :=
      (-g*cot(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m <--
    FreeQ([a,b,e,f,g,m,p],x)


    #= ::Subsubsection::Closed:: =#
    #=1.2.1*(a+b*sin)^m*(c+d*sin)^n=#


    #= ::Text:: =#
    #=(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n == (a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*cos(e_'+f_'*x_))^n_',x_) :=
      (a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,m,n],x)


    #= ::Text:: =#
    #=(a+b*cos(e+f*x))^m*(c+d*sec(e+f*x))^n == (a+b*sin(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*sec(e_'+f_'*x_))^n_',x_) :=
      (a+b*sin(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=1.2.2*(g*cos)^p*(a+b*sin)^m*(c+d*sin)^n=#


    #= ::Text:: =#
    #=(g*sin(e+f*x))^p*(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n == (g*cos(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m*(c-d*sin(e-pi/2+f*x))^n=#


    #= ::Text:: =#
    #=(g*sin(e+f*x))^p*(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n == (-g*cos(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*sin(e_'+f_'*x_))^p_'*(a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*cos(e_'+f_'*x_))^n_',x_) :=
      If(IntegerQ(2*p) && p<0 && IntegerQ(2*n),
        (g*cos(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m*(c-d*sin(e-pi/2+f*x))^n,
      (-g*cos(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n) <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Text:: =#
    #=(g*csc(e+f*x))^p*(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n == (g*sec(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m*(c-d*sin(e-pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*csc(e_'+f_'*x_))^p_'*(a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*cos(e_'+f_'*x_))^n_',x_) :=
      (g*sec(e-pi/2+f*x))^p*(a-b*sin(e-pi/2+f*x))^m*(c-d*sin(e-pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Subsubsection::Closed:: =#
    #=1.2.3*(g*sin)^p*(a+b*sin)^m*(c+d*sin)^n=#


    #= ::Text:: =#
    #=(g*cos(e+f*x))^p*(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n == (g*sin(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*cos(e_'+f_'*x_))^p_'*(a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*cos(e_'+f_'*x_))^n_',x_) :=
      (g*sin(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Text:: =#
    #=(g*cos(e+f*x))^p*(a+b*cos(e+f*x))^m*(c+d*sec(e+f*x))^n == (g*sin(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*cos(e_'+f_'*x_))^p_'*(a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*sec(e_'+f_'*x_))^n_',x_) :=
      (g*sin(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Text:: =#
    #=(g*sec(e+f*x))^p*(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n == (g*csc(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*sec(e_'+f_'*x_))^p_'*(a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*cos(e_'+f_'*x_))^n_',x_) :=
      (g*csc(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Text:: =#
    #=(g*sec(e+f*x))^p*(a+b*cos(e+f*x))^m*(c+d*sec(e+f*x))^n == (g*csc(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*sec(e_'+f_'*x_))^p_'*(a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*sec(e_'+f_'*x_))^n_',x_) :=
      (g*csc(e+pi/2+f*x))^p*(a+b*sin(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Subsubsection::Closed:: =#
    #=1.3.1*(a+b*sin)^m*(c+d*sin)^n*(A+B*sin)=#


    #= ::Text:: =#
    #=(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n*(A+B*cos(e+f*x)) == (a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n*(A+B*sin(e+pi/2+f*x))=#


    UnifyInertTrigFunction((a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*cos(e_'+f_'*x_))^n_'*(A_'+B_'*cos(e_'+f_'*x_)),x_) :=
      (a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n*(A+B*sin(e+pi/2+f*x)) <--
    FreeQ([a,b,c,d,e,f,A,B,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=1.4.1*(a+b*sin)^m*(A+B*sin+C*sin^2)=#


    #= ::Text:: =#
    #=(a+b*cos(e+f*x))^m*(A+B*cos(e+f*x)+C*cos(e+f*x)^2) == (a+b*sin(e+pi/2+f*x))^m*(A+B*sin(e+pi/2+f*x)+C*sin(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*cos(e_'+f_'*x_))^m_'*(A_'+B_'*cos(e_'+f_'*x_)+C_'*cos(e_'+f_'*x_)^2),x_) :=
      (a+b*sin(e+pi/2+f*x))^m*(A+B*sin(e+pi/2+f*x)+C*sin(e+pi/2+f*x)^2) <--
    FreeQ([a,b,c,e,f,A,B,C,m],x)


    #= ::Text:: =#
    #=(a+b*cos(e+f*x))^m*(A+C*cos(e+f*x)^2) == (a+b*sin(e+pi/2+f*x))^m*(A+C*sin(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*cos(e_'+f_'*x_))^m_'*(A_'+C_'*cos(e_'+f_'*x_)^2),x_) :=
      (a+b*sin(e+pi/2+f*x))^m*(A+C*sin(e+pi/2+f*x)^2) <--
    FreeQ([a,b,c,e,f,A,C,m],x)


    #= ::Subsubsection::Closed:: =#
    #=1.4.2*(a+b*sin)^m*(c+d*sin)^n*(A+B*sin+C*sin^2)=#


    #= ::Text:: =#
    #=(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n*(A+B*cos(e+f*x)+C*cos(e+f*x)^2) == (a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n*(A+B*sin(e+pi/2+f*x)+C*sin(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*cos(e_'+f_'*x_))^n_'*(A_'+B_'*cos(e_'+f_'*x_)+C_'*cos(e_'+f_'*x_)^2),x_) :=
      (a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n*(A+B*sin(e+pi/2+f*x)+C*sin(e+pi/2+f*x)^2) <--
    FreeQ([a,b,c,d,e,f,A,B,C,m,n],x)


    #= ::Text:: =#
    #=(a+b*cos(e+f*x))^m*(c+d*cos(e+f*x))^n*(A+C*cos(e+f*x)^2) == (a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n*(A+C*sin(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*cos(e_'+f_'*x_))^m_'*(c_'+d_'*cos(e_'+f_'*x_))^n_'*(A_'+C_'*cos(e_'+f_'*x_)^2),x_) :=
      (a+b*sin(e+pi/2+f*x))^m*(c+d*sin(e+pi/2+f*x))^n*(A+C*sin(e+pi/2+f*x)^2) <--
    FreeQ([a,b,c,d,e,f,A,C,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=1.7*(d*trig)^m*(a+b*(c*sin)^n)^p=#


    #= ::Text:: =#
    #=(a+b*(c*cos(e+f*x))^n)^p == (a+b*(c*sin(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((a_'+b_'*(c_'*cos(e_'+f_'*x_))^n_)^p_,x_) :=
      (a+b*(c*sin(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,e,f,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*cos(e+f*x))^m*(a+b*(c*cos(e+f*x))^n)^p == (d*sin(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*cos(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cos(e_'+f_'*x_))^n_)^p_',x_) :=
      (d*sin(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*sin(e+f*x))^m*(a+b*(c*cos(e+f*x))^n)^p == (-d*cos(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*sin(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cos(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*cos(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*cot(e+f*x))^m*(a+b*(c*cos(e+f*x))^n)^p == (-d*tan(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*cot(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cos(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*tan(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*tan(e+f*x))^m*(a+b*(c*cos(e+f*x))^n)^p == (-d*cot(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*tan(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cos(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*cot(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*csc(e+f*x))^m*(a+b*(c*cos(e+f*x))^n)^p == (-d*sec(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*csc(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cos(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*sec(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*sec(e+f*x))^m*(a+b*(c*cos(e+f*x))^n)^p == (d*csc(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*sec(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cos(e_'+f_'*x_))^n_)^p_',x_) :=
      (d*csc(e+pi/2+f*x))^m*(a+b*(c*sin(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(a+b*cos(e+f*x)^n)^m*(A+B*cos(e+f*x)^n) == (a+b*sin(e+pi/2+f*x)^n)^m*(A+B*sin(e+pi/2+f*x)^n)=#


    UnifyInertTrigFunction((a_'+b_'*cos(e_'+f_'*x_)^n_)^m_'*(A_'+B_'*cos(e_'+f_'*x_)^n_),x_) :=
      (a+b*sin(e+pi/2+f*x)^n)^m*(A+B*sin(e+pi/2+f*x)^n) <--
    FreeQ([a,b,e,f,A,B,m,n],x) && Not(EqQ(a,0) && IntegerQ(m))


    #= ::Subsubsection:: =#
    #=Cotangent*to*tangent=#


    #= ::Subsubsection::Closed:: =#
    #=2.0*(a*trg)^m*(b*tan)^n=#


    #= ::Text:: =#
    #=(a*cos(e+f*x))^m*(b*cot(e+f*x))^n == (a*sin(e+pi/2+f*x))^m*(-b*tan(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'*cos(e_'+f_'*x_))^m_'*(b_'*cot(e_'+f_'*x_))^n_',x_) :=
      (a*sin(e+pi/2+f*x))^m*(-b*tan(e+pi/2+f*x))^n <--
    FreeQ([a,b,e,f,m,n],x)


    #= ::Text:: =#
    #=(a*sin(e+f*x))^m*(b*cot(e+f*x))^n == (a*cos(e-pi/2+f*x))^m*(-b*tan(e-pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'*sin(e_'+f_'*x_))^m_'*(b_'*cot(e_'+f_'*x_))^n_',x_) :=
      (a*cos(e-pi/2+f*x))^m*(-b*tan(e-pi/2+f*x))^n <--
    FreeQ([a,b,e,f,m,n],x)


    #= ::Text:: =#
    #=(a*csc(e+f*x))^m*(b*cot(e+f*x))^n == (a*sec(e-pi/2+f*x))^m*(-b*tan(e-pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'*csc(e_'+f_'*x_))^m_'*(b_'*cot(e_'+f_'*x_))^n_',x_) :=
      (a*sec(e-pi/2+f*x))^m*(-b*tan(e-pi/2+f*x))^n <--
    FreeQ([a,b,e,f,m,n],x)


    #= ::Text:: =#
    #=(a*sec(e+f*x))^m*(b*cot(e+f*x))^n == (a*csc(e+pi/2+f*x))^m*(-b*tan(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'*sec(e_'+f_'*x_))^m_'*(b_'*cot(e_'+f_'*x_))^n_',x_) :=
      (a*csc(e+pi/2+f*x))^m*(-b*tan(e+pi/2+f*x))^n <--
    FreeQ([a,b,e,f,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=2.1.1*(a+b*tan)^n=#


    #= ::Text:: =#
    #=(a+b*cot(e+f*x))^n == (a-b*tan(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'+b_'*cot(e_'+f_'*x_))^n_',x_) :=
      (a-b*tan(e+pi/2+f*x))^n <--
    FreeQ([a,b,e,f,n],x)


    #= ::Subsubsection::Closed:: =#
    #=2.1.2*(d*sec)^m*(a+b*tan)^n=#


    #= ::Text:: =#
    #=(d*csc(e+f*x))^m*(a+b*cot(e+f*x))^n == (d*sec(e-pi/2+f*x))^m*(a-b*tan(e-pi/2+f*x))^n=#


    UnifyInertTrigFunction((d_'*csc(e_'+f_'*x_))^m_'*(a_+b_'*cot(e_'+f_'*x_))^n_',x_) :=
      (d*sec(e-pi/2+f*x))^m*(a-b*tan(e-pi/2+f*x))^n <--
    FreeQ([a,b,d,e,f,m,n],x)


    #= ::Text:: =#
    #=(d*sin(e+f*x))^m*(a+b*cot(e+f*x))^n == (d*cos(e-pi/2+f*x))^m*(a-b*tan(e-pi/2+f*x))^n=#


    UnifyInertTrigFunction((d_'*sin(e_'+f_'*x_))^m_'*(a_+b_'*cot(e_'+f_'*x_))^n_',x_) :=
      (d*cos(e-pi/2+f*x))^m*(a-b*tan(e-pi/2+f*x))^n <--
    FreeQ([a,b,d,e,f,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=2.1.3*(d*sin)^m*(a+b*tan)^n=#


    #= ::Text:: =#
    #=(d*cos(e+f*x))^m*(a+b*cot(e+f*x))^n == (d*sin(e+pi/2+f*x))^m*(a-b*tan(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((d_'*cos(e_'+f_'*x_))^m_'*(a_+b_'*cot(e_'+f_'*x_))^n_',x_) :=
      (d*sin(e+pi/2+f*x))^m*(a-b*tan(e+pi/2+f*x))^n <--
    FreeQ([a,b,d,e,f,m,n],x)


    #= ::Text:: =#
    #=(d*sec(e+f*x))^m*(a+b*cot(e+f*x))^n == (d*csc(e+pi/2+f*x))^m*(a-b*tan(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((d_'*sec(e_'+f_'*x_))^m_'*(a_+b_'*cot(e_'+f_'*x_))^n_',x_) :=
      (d*csc(e+pi/2+f*x))^m*(a-b*tan(e+pi/2+f*x))^n <--
    FreeQ([a,b,d,e,f,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=2.2.1*(a+b*tan)^m*(c+d*tan)^n=#


    #= ::Text:: =#
    #=(a+b*cot(e+f*x))^m*(c+d*cot(e+f*x))^n == (a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'+b_'*cot(e_'+f_'*x_))^m_'*(c_'+d_'*cot(e_'+f_'*x_))^n_',x_) :=
      (a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=2.2.3*(g*tan)^p*(a+b*tan)^m*(c+d*tan)^n=#


    #= ::Text:: =#
    #=(g*cot(e+f*x))^p*(a+b*cot(e+f*x))^m*(c+d*cot(e+f*x))^n == (-g*tan(e+pi/2+f*x))^p*(a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*cot(e_'+f_'*x_))^p_'*(a_'+b_'*cot(e_'+f_'*x_))^m_'*(c_'+d_'*cot(e_'+f_'*x_))^n_',x_) :=
      (-g*tan(e+pi/2+f*x))^p*(a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Text:: =#
    #=(g*cot(e+f*x))^p*(a+b*cot(e+f*x))^m*(c+d*tan(e+f*x))^n == (-g*tan(e+pi/2+f*x))^p*(a-b*tan(e+pi/2+f*x))^m*(c-d*cot(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*cot(e_'+f_'*x_))^p_'*(a_'+b_'*cot(e_'+f_'*x_))^m_'*(c_'+d_'*tan(e_'+f_'*x_))^n_',x_) :=
      (-g*tan(e+pi/2+f*x))^p*(a-b*tan(e+pi/2+f*x))^m*(c-d*cot(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Subsubsection::Closed:: =#
    #=2.3.1*(a+b*tan)^m*(c+d*tan)^n*(A+B*tan)=#


    #= ::Text:: =#
    #=(a+b*cot(e+f*x))^m*(c+d*cot(e+f*x))^n*(A+B*cot(e+f*x)) == (a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n*(A-B*tan(e+pi/2+f*x))=#


    UnifyInertTrigFunction((a_'+b_'*cot(e_'+f_'*x_))^m_'*(c_'+d_'*cot(e_'+f_'*x_))^n_'*(A_'+B_'*cot(e_'+f_'*x_)),x_) :=
      (a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n*(A-B*tan(e+pi/2+f*x)) <--
    FreeQ([a,b,c,d,e,f,A,B,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=2.4.1*(a+b*tan)^m*(A+B*tan+C*tan^2)=#


    #= ::Text:: =#
    #=(a+b*cot(e+f*x))^m*(A+B*cot(e+f*x)+C*cot(e+f*x)^2) == (a-b*tan(e+pi/2+f*x))^m*(A-B*tan(e+pi/2+f*x)+C*tan(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*cot(e_'+f_'*x_))^m_'*(A_'+B_'*cot(e_'+f_'*x_)+C_'*cot(e_'+f_'*x_)^2),x_) :=
      (a-b*tan(e+pi/2+f*x))^m*(A-B*tan(e+pi/2+f*x)+C*tan(e+pi/2+f*x)^2) <--
    FreeQ([a,b,e,f,A,B,C,m],x)


    #= ::Text:: =#
    #=(a+b*cot(e+f*x))^m*(A+C*cot(e+f*x)^2) == (a-b*tan(e+pi/2+f*x))^m*(A+C*tan(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*cot(e_'+f_'*x_))^m_'*(A_'+C_'*cot(e_'+f_'*x_)^2),x_) :=
      (a-b*tan(e+pi/2+f*x))^m*(A+C*tan(e+pi/2+f*x)^2) <--
    FreeQ([a,b,e,f,A,C,m],x)


    #= ::Subsubsection::Closed:: =#
    #=2.4.2*(a+b*tan)^m*(c+d*tan)^n*(A+B*tan+C*tan^2)=#


    #= ::Text:: =#
    #=(a+b*cot(e+f*x))^m*(c+d*cot(e+f*x))^n*(A+B*cot(e+f*x)+C*cot(e+f*x)^2) == =#
    #=		(a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n*(A-B*tan(e+pi/2+f*x)+C*tan(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*cot(e_'+f_'*x_))^m_'*(c_'+d_'*cot(e_'+f_'*x_))^n_'*(A_'+B_'*cot(e_'+f_'*x_)+C_'*cot(e_'+f_'*x_)^2),x_) :=
      (a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n*(A-B*tan(e+pi/2+f*x)+C*tan(e+pi/2+f*x)^2) <--
    FreeQ([a,b,c,d,e,f,A,B,C,m,n],x)


    #= ::Text:: =#
    #=(a+b*cot(e+f*x))^m*(c+d*cot(e+f*x))^n*(A+C*cot(e+f*x)^2) == (a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n*(A+C*tan(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*cot(e_'+f_'*x_))^m_'*(c_'+d_'*cot(e_'+f_'*x_))^n_'*(A_'+C_'*cot(e_'+f_'*x_)^2),x_) :=
      (a-b*tan(e+pi/2+f*x))^m*(c-d*tan(e+pi/2+f*x))^n*(A+C*tan(e+pi/2+f*x)^2) <--
    FreeQ([a,b,c,d,e,f,A,C,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=2.7*trig^m*(a+b*(c*tan)^n)^p=#


    #= ::Text:: =#
    #=(a+b*(c*cot(e+f*x))^n)^p == (a+b*(-c*tan(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((a_'+b_'*(c_'*cot(e_'+f_'*x_))^n_)^p_,x_) :=
      (a+b*(-c*tan(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,e,f,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*cos(e+f*x))^m*(a+b*(c*cot(e+f*x))^n)^p == (d*sin(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*cos(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cot(e_'+f_'*x_))^n_)^p_',x_) :=
      (d*sin(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*sin(e+f*x))^m*(a+b*(c*cot(e+f*x))^n)^p == (-d*cos(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*sin(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cot(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*cos(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*cot(e+f*x))^m*(a+b*(c*cot(e+f*x))^n)^p == (-d*tan(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*cot(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cot(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*tan(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*tan(e+f*x))^m*(a+b*(c*cot(e+f*x))^n)^p == (-d*cot(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*tan(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cot(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*cot(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*csc(e+f*x))^m*(a+b*(c*cot(e+f*x))^n)^p == (-d*sec(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*csc(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cot(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*sec(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*sec(e+f*x))^m*(a+b*(c*cot(e+f*x))^n)^p == (d*csc(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*sec(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*cot(e_'+f_'*x_))^n_)^p_',x_) :=
      (d*csc(e+pi/2+f*x))^m*(a+b*(-c*tan(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Subsubsection:: =#
    #=Cosecant*to*secant=#


    #= ::Subsubsection::Closed:: =#
    #=3.1.1*(a+b*sec)^n=#


    #= ::Text:: =#
    #=(a+b*sec(e+f*x))^n == (a+b*csc(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'+b_'*sec(e_'+f_'*x_))^n_',x_) :=
      (a+b*csc(e+pi/2+f*x))^n <--
    FreeQ([a,b,e,f,n],x)


    #= ::Subsubsection::Closed:: =#
    #=3.1.2*(d*sec)^n*(a+b*sec)^m=#


    #= ::Text:: =#
    #=(g*sec(e+f*x))^p*(a+b*sec(e+f*x))^m == (g*csc(e+pi/2+f*x))^p*(a+b*csc(e+pi/2+f*x))^m=#


    UnifyInertTrigFunction((g_'*sec(e_'+f_'*x_))^p_'*(a_+b_'*sec(e_'+f_'*x_))^m_',x_) :=
      (g*csc(e+pi/2+f*x))^p*(a+b*csc(e+pi/2+f*x))^m <--
    FreeQ([a,b,e,f,g,m,p],x)


    #= ::Subsubsection::Closed:: =#
    #=3.1.3*(d*sin)^n*(a+b*sec)^m=#


    #= ::Text:: =#
    #=(g*sin(e+f*x))^p*(a+b*sec(e+f*x))^m == (g*cos(e-pi/2+f*x))^p*(a-b*csc(e-pi/2+f*x))^m=#


    UnifyInertTrigFunction((g_'*sin(e_'+f_'*x_))^p_'*(a_+b_'*sec(e_'+f_'*x_))^m_',x_) :=
      (g*cos(e-pi/2+f*x))^p*(a-b*csc(e-pi/2+f*x))^m <--
    FreeQ([a,b,e,f,g,m,p],x)


    #= ::Text:: =#
    #=(g*csc(e+f*x))^p*(a+b*sec(e+f*x))^m == (g*sec(e-pi/2+f*x))^p*(a-b*csc(e-pi/2+f*x))^m=#


    UnifyInertTrigFunction((g_'*csc(e_'+f_'*x_))^p_'*(a_+b_'*sec(e_'+f_'*x_))^m_',x_) :=
      (g*sec(e-pi/2+f*x))^p*(a-b*csc(e-pi/2+f*x))^m <--
    FreeQ([a,b,e,f,g,m,p],x)


    #= ::Subsubsection::Closed:: =#
    #=3.1.4*(d*tan)^n*(a+b*sec)^m=#


    #= ::Text:: =#
    #=(g*tan(e+f*x))^p*(a+b*sec(e+f*x))^m == (-g*cot(e+pi/2+f*x))^p*(a+b*csc(e+pi/2+f*x))^m=#


    UnifyInertTrigFunction((g_'*tan(e_'+f_'*x_))^p_'*(a_+b_'*sec(e_'+f_'*x_))^m_',x_) :=
      (-g*cot(e+pi/2+f*x))^p*(a+b*csc(e+pi/2+f*x))^m <--
    FreeQ([a,b,e,f,g,m,p],x)


    #= ::Subsubsection::Closed:: =#
    #=3.2.1*(a+b*sec)^m*(c+d*sec)^n=#


    #= ::Text:: =#
    #=(a+b*sec(e+f*x))^m*(c+d*sec(e+f*x))^n == (a+b*csc(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((a_'+b_'*sec(e_'+f_'*x_))^m_'*(c_'+d_'*sec(e_'+f_'*x_))^n_',x_) :=
      (a+b*csc(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,m,n],x)


    #= ::Subsubsection::Closed:: =#
    #=3.2.2*(g*sec)^p*(a+b*sec)^m*(c+d*sec)^n=#


    #= ::Text:: =#
    #=(g*sec(e+f*x))^p*(a+b*sec(e+f*x))^m*(c+d*sec(e+f*x))^n == (g*csc(e+pi/2+f*x))^p*(a+b*csc(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*sec(e_'+f_'*x_))^p_'*(a_'+b_'*sec(e_'+f_'*x_))^m_'*(c_'+d_'*sec(e_'+f_'*x_))^n_',x_) :=
      (g*csc(e+pi/2+f*x))^p*(a+b*csc(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Text:: =#
    #=(g*cos(e+f*x))^p*(a+b*sec(e+f*x))^m*(c+d*sec(e+f*x))^n == (g*sin(e+pi/2+f*x))^p*(a+b*csc(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n=#


    UnifyInertTrigFunction((g_'*cos(e_'+f_'*x_))^p_'*(a_'+b_'*sec(e_'+f_'*x_))^m_'*(c_'+d_'*sec(e_'+f_'*x_))^n_',x_) :=
      (g*sin(e+pi/2+f*x))^p*(a+b*csc(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n <--
    FreeQ([a,b,c,d,e,f,g,m,n,p],x)


    #= ::Subsubsection::Closed:: =#
    #=3.3.1*(a+b*sec)^m*(d*sec)^n*(A+B*sec)=#


    #= ::Text:: =#
    #=(a+b*sec(e+f*x))^m*(d*sec(e+f*x))^n*(A+B*sec(e+f*x)) == (a+b*csc(e+pi/2+f*x))^m*(d*csc(e+pi/2+f*x))^n*(A+B*csc(e+pi/2+f*x))=#


    UnifyInertTrigFunction((a_'+b_'*sec(e_'+f_'*x_))^m_'*(d_'*sec(e_'+f_'*x_))^n_'*(A_'+B_'*sec(e_'+f_'*x_)),x_) :=
      (a+b*csc(e+pi/2+f*x))^m*(d*csc(e+pi/2+f*x))^n*(A+B*csc(e+pi/2+f*x)) <--
    FreeQ([a,b,d,e,f,A,B,m,n],x)


    #= ::Text:: =#
    #=(a+b*sec(e+f*x))^m*(c+d*sec(e+f*x))^n*(A+B*sec(e+f*x))^p == (a+b*csc(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n*(A+B*csc(e+pi/2+f*x))^p=#


    UnifyInertTrigFunction((a_'+b_'*sec(e_'+f_'*x_))^m_'*(c_'+d_'*sec(e_'+f_'*x_))^n_'*(A_'+B_'*sec(e_'+f_'*x_))^p_',x_) :=
      (a+b*csc(e+pi/2+f*x))^m*(c+d*csc(e+pi/2+f*x))^n*(A+B*csc(e+pi/2+f*x))^p <--
    FreeQ([a,b,c,d,e,f,A,B,m,n,p],x)


    #= ::Subsubsection::Closed:: =#
    #=3.4.1*(a+b*sec)^m*(A+B*sec+C*sec^2)=#


    #= ::Text:: =#
    #=(a+b*sec(e+f*x))^m*(A+B*sec(e+f*x)+C*sec(e+f*x)^2) == (a+b*csc(e+pi/2+f*x))^m*(A+B*csc(e+pi/2+f*x)+C*csc(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*sec(e_'+f_'*x_))^m_'*(A_'+B_'*sec(e_'+f_'*x_)+C_'*sec(e_'+f_'*x_)^2),x_) :=
      (a+b*csc(e+pi/2+f*x))^m*(A+B*csc(e+pi/2+f*x)+C*csc(e+pi/2+f*x)^2) <--
    FreeQ([a,b,e,f,A,B,C,m],x)


    #= ::Text:: =#
    #=(a+b*sec(e+f*x))^m*(A+B*sec(e+f*x)+C*sec(e+f*x)^2) == (a+b*csc(e+pi/2+f*x))^m*(A+C*csc(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*sec(e_'+f_'*x_))^m_'*(A_'+C_'*sec(e_'+f_'*x_)^2),x_) :=
      (a+b*csc(e+pi/2+f*x))^m*(A+C*csc(e+pi/2+f*x)^2) <--
    FreeQ([a,b,e,f,A,C,m],x)


    #= ::Subsubsection::Closed:: =#
    #=3.4.2*(a+b*sec)^m*(d*sec)^n*(A+B*sec+C*sec^2)=#


    #= ::Text:: =#
    #=(a+b*sec(e+f*x))^m*(d*sec(e+f*x))^n*(A+B*sec(e+f*x)+C*sec(e+f*x)^2) == =#
    #=		(a+b*csc(e+pi/2+f*x))^m*(d*csc(e+pi/2+f*x))^n*(A+B*csc(e+pi/2+f*x)+C*csc(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*sec(e_'+f_'*x_))^m_'*(d_'*sec(e_'+f_'*x_))^n_'*(A_'+B_'*sec(e_'+f_'*x_)+C_'*sec(e_'+f_'*x_)^2),x_) :=
      (a+b*csc(e+pi/2+f*x))^m*(d*csc(e+pi/2+f*x))^n*(A+B*csc(e+pi/2+f*x)+C*csc(e+pi/2+f*x)^2) <--
    FreeQ([a,b,d,e,f,A,B,C,m,n],x)


    #= ::Text:: =#
    #=(a+b*sec(e+f*x))^m*(d*sec(e+f*x))^n*(A+C*sec(e+f*x)^2) == (a+b*csc(e+pi/2+f*x))^m*(d*csc(e+pi/2+f*x))^n*(A+C*csc(e+pi/2+f*x)^2)=#


    UnifyInertTrigFunction((a_'+b_'*sec(e_'+f_'*x_))^m_'*(d_'*sec(e_'+f_'*x_))^n_'*(A_'+C_'*sec(e_'+f_'*x_)^2),x_) :=
      (a+b*csc(e+pi/2+f*x))^m*(d*csc(e+pi/2+f*x))^n*(A+C*csc(e+pi/2+f*x)^2) <--
    FreeQ([a,b,d,e,f,A,C,m,n],x)


    UnifyInertTrigFunction(u_,x_) := u


    #= ::Subsubsection::Closed:: =#
    #=3.7*(d*trig)^m*(a+b*(c*sec)^n)^p=#


    #= ::Text:: =#
    #=(a+b*(c*csc(e+f*x))^n)^p == (a+b*(-c*sec(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((a_'+b_'*(c_'*csc(e_'+f_'*x_))^n_)^p_,x_) :=
      (a+b*(-c*sec(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,e,f,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*cos(e+f*x))^m*(a+b*(c*csc(e+f*x))^n)^p == (d*sin(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*cos(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*csc(e_'+f_'*x_))^n_)^p_',x_) :=
      (d*sin(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*sin(e+f*x))^m*(a+b*(c*csc(e+f*x))^n)^p == (-d*cos(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*sin(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*csc(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*cos(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*cot(e+f*x))^m*(a+b*(c*csc(e+f*x))^n)^p == (-d*tan(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*cot(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*csc(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*tan(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*tan(e+f*x))^m*(a+b*(c*csc(e+f*x))^n)^p == (-d*cot(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*tan(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*csc(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*cot(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*csc(e+f*x))^m*(a+b*(c*csc(e+f*x))^n)^p == (-d*sec(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*csc(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*csc(e_'+f_'*x_))^n_)^p_',x_) :=
      (-d*sec(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(n,2) && EqQ(p,1)) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Text:: =#
    #=(d*sec(e+f*x))^m*(a+b*(c*csc(e+f*x))^n)^p == (d*csc(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p=#


    UnifyInertTrigFunction((d_'*sec(e_'+f_'*x_))^m_'*(a_'+b_'*(c_'*csc(e_'+f_'*x_))^n_)^p_',x_) :=
      (d*csc(e+pi/2+f*x))^m*(a+b*(-c*sec(e+pi/2+f*x))^n)^p <--
    FreeQ([a,b,c,d,e,f,m,n,p],x) && Not(EqQ(a,0) && IntegerQ(p))


    #= ::Subsection::Closed:: =#
    #=KnownTrigIntegrandQ(u,x)=#


    KnownSineIntegrandQ(u_,x_Symbol) :=
      KnownTrigIntegrandQ([sin,cos],u,x)


    KnownTangentIntegrandQ(u_,x_Symbol) :=
      KnownTrigIntegrandQ([tan],u,x)


    KnownCotangentIntegrandQ(u_,x_Symbol) :=
      KnownTrigIntegrandQ([cot],u,x)


    KnownSecantIntegrandQ(u_,x_Symbol) :=
      KnownTrigIntegrandQ([sec,csc],u,x)


    KnownTrigIntegrandQ(list_,u_,x_Symbol) :=
      u===1 ||
      MatchQ(u,(a_'+b_'*func_(e_'+f_'*x))^m_' <-- MemberQ(list,func) && FreeQ([a,b,e,f,m],x)) ||
      MatchQ(u,(a_'+b_'*func_(e_'+f_'*x))^m_'*(A_'+B_'*func_(e_'+f_'*x)) <-- MemberQ(list,func) && FreeQ([a,b,e,f,A,B,m],x)) ||
      MatchQ(u,(A_'+C_'*func_(e_'+f_'*x)^2) <-- MemberQ(list,func) && FreeQ([e,f,A,C],x)) ||
      MatchQ(u,(A_'+B_'*func_(e_'+f_'*x)+C_'*func_(e_'+f_'*x)^2) <-- MemberQ(list,func) && FreeQ([e,f,A,B,C],x)) ||
      MatchQ(u,(a_'+b_'*func_(e_'+f_'*x))^m_'*(A_'+C_'*func_(e_'+f_'*x)^2) <-- MemberQ(list,func) && FreeQ([a,b,e,f,A,C,m],x)) ||
      MatchQ(u,(a_'+b_'*func_(e_'+f_'*x))^m_'*(A_'+B_'*func_(e_'+f_'*x)+C_'*func_(e_'+f_'*x)^2) <-- MemberQ(list,func) && FreeQ([a,b,e,f,A,B,C,m],x))


    #= ::Section::Closed:: =#
    #=Inert*inverse*hyperbolic*functions=#


    #= ::Subsection::Closed:: =#
    #=DeactivateInverseHyperbolic(u,x)=#


    #= DeactivateInverseHyperbolic(u,x)*returns*u*with*inverse*trig*and*hyperbolic*functions*replaced*with*inert*inverse*hyperbolic*functions. =#
    #= DeactivateInverseHyperbolic(u_,x_) :=
      If(AtomQ(u),
        u,
      If(Length(u)==1,
        With([v=DeactivateInverseHyperbolic(Part(u, 1),x)],
        Switch(Head(u),
    	  asin, -im*arcsinh(im*v),
    	  acos, pi/2+im*arcsinh(im*x),
    	  atan, -im*arctanh(im*v),
    	  acot, im*arccoth(im*v),
    	  asec, pi/2-im*arccsch(im*v),
    	  acsc, im*arccsch(im*v),
    	  asinh, arcsinh(v),
    	  acosh, arccosh(v),
    	  atanh, arctanh(v),
    	  acoth, arccoth(v),
    	  asech, arcsech(v),
    	  acsch, arccsch(v),
          _, Head(u)v)),
      Map(MFunction(DeactivateInverseHyperbolic(Symbol("#1"),x)),u))) =#


    #= ::Section::Closed:: =#
    #=Derivative*divides*function=#


    #= If*the*derivative*of*u*wrt*x*is*a*constant*wrt*x, PiecewiseLinearQ(u,x)*returns*true;
    	else*it*returns*false. =#
    PiecewiseLinearQ(u_,v_,x_Symbol) :=
      PiecewiseLinearQ(u,x) && PiecewiseLinearQ(v,x)

    PiecewiseLinearQ(u_,x_Symbol) :=
      LinearQ(u,x)#= && Not(MonomialQ(u,x)) =# ||
      MatchQ(u,log(c_'*F_^(v_)) <-- FreeQ([F,c],x) && LinearQ(v,x)) ||
      MatchQ(u,F_(G_(v_)) <-- LinearQ(v,x) && MemberQ([
    	[atanh,tanh],[atanh,coth],[acoth,coth],[acoth,tanh],
    	[atan,tan],[atan,cot],[acot,cot],[acot,tan]
       ],[F,G]))


    #= If*u*divided*by*y*is*free*of*x, Divides(y,u,x)*returns*the*quotient; else*it*returns*false. =#
    Divides(y_,u_,x_Symbol) :=
      With([v=Simplify(u/y)],
      If(FreeQ(v,x),
        v,
      false))


    # #= If*y*not*equal*to*x, y*is*easy*to*differentiate*wrt*x, and*u*divided*by*the*derivative*of*y
    #   is*free*of*x, DerivativeDivides(y,u,x)*returns*the*quotient; else*it*returns*false. =#
    # DerivativeDivides(y_,u_,x_Symbol) :=
    #   If(MatchQ(y,a_'*x <-- FreeQ(a,x)),
    #     false,
    #   If(If(PolynomialQ(y,x), PolynomialQ(u,x) && Exponent(u,x)==Exponent(y,x)-1, EasyDQ(y,x)),
    #     Module([v=Block([DOLLARShowSteps=false], ReplaceAll(D(y,x),Sinc(z_)=>sin(z)/z))],
    #     If(EqQ(v,0),
    #       false,
    #     v=Simplify(u/v);
    #     If(FreeQ(v,x),
    #       v,
    #     false))),
    #   false))


    #= If*u*is*easy*to*differentiate*wrt*x, EasyDQ(u,x)*returns*true; else*it*returns*false. =#
    EasyDQ(u_'*x_^m_',x_Symbol) :=
      EasyDQ(u,x) <--
    FreeQ(m,x)

    EasyDQ(u_,x_Symbol) :=
      If(AtomQ(u) || FreeQ(u,x) || Length(u)==0,
        true,
      If(CalculusQ(u),
        false,
      If(Length(u)==1,
        EasyDQ(Part(u, 1),x),
      If(BinomialQ(u,x) || ProductOfLinearPowersQ(u,x),
        true,
      If(RationalFunctionQ(u,x) && RationalFunctionExponents(u,x)===[1,1],
        true,
      If(ProductQ(u),
        If(FreeQ(First(u),x),
          EasyDQ(Rest(u),x),
        If(FreeQ(Rest(u),x),
          EasyDQ(First(u),x),
        false)),
      If(SumQ(u),
        EasyDQ(First(u),x) && EasyDQ(Rest(u),x),
      If(Length(u)==2,
        If(FreeQ(Part(u, 1),x),
          EasyDQ(Part(u, 2),x),
        If(FreeQ(Part(u, 2),x),
          EasyDQ(Part(u, 1),x),
        false)),
      false))))))))


    #= ProductOfLinearPowersQ(u,x)*returns*true*iff*u*is*a*product*of*factors*of*the*form*v^n*where*v*is*linear*in*x. =#
    ProductOfLinearPowersQ(u_,x_Symbol) :=
      FreeQ(u,x) ||
      MatchQ(u, v_^n_' <-- LinearQ(v,x) && FreeQ(n,x)) ||
      ProductQ(u) && ProductOfLinearPowersQ(First(u),x) && ProductOfLinearPowersQ(Rest(u),x)


    #= ::Section::Closed:: =#
    #=Simplest*nth*root*function=#


    #= ::Subsection::Closed:: =#
    #=Rt(u,n)=#


    #= Rt(u,n)*returns*the*simplest*nth*root*of*u. =#
    Rt(u_,n_Integer) :=
      RtAux(TogetherSimplify(u),n)


    #= ::Subsection::Closed:: =#
    #=NthRoot(u,n)=#


    NthRoot(u_,n_) := u^(1/n)


    #= ::Subsection::Closed:: =#
    #=TrigSquare(u)=#


    #= If*u*is*an*expression*of*the*form*a-a*sin(z)^2*or*a-a*cos(z)^2, TrigSquare(u)*returns*cos(z)^2*or*sin(z)^2*respectively, else*it*returns*false. =#
    TrigSquare(u_) :=
      If(SumQ(u),
        With([lst=SplitSum(MFunction(SplitProduct(TrigSquareQ,Symbol("#1"))),u)],
        If(Not(AtomQ(lst)) && EqQ(Part(lst, 1,2)+Part(lst, 2),0),
          If(Head(Part(Part(lst, 1, 1), 1))===sin,
            Part(lst, 2)*cos(Part(lst, 1,1)((1,1)))^2,
          Part(lst, 2)*sin(Part(lst, 1,1)((1,1)))^2),
        false)),
      false)


    #= ::Section::Closed:: =#
    #=Simplest*nth*root*helper*functions=#


    #= ::Subsection::Closed:: =#
    #=RtAux(u,n)=#


    # RtAux(u_,n_) :=
    #   If(PowerQ(u),
    #     Part(u, 1)^(Part(u, 2)/n),
    #   If(ProductQ(u),
    #     Module([lst],
    #     lst=SplitProduct(MFunction(GtQ(Symbol("#1"),0)),u);
    #     If(ListQ(lst),
    #       RtAux(Part(lst, 1),n)*RtAux(Part(lst, 2),n),
    #     lst=SplitProduct(MFunction(LtQ(Symbol("#1"),0)),u);
    #     If(ListQ(lst),
    #       If(EqQ(Part(lst, 1),-1),
    #         With([v=Part(lst, 2)],
    #         If(PowerQ(v) && LtQ(Part(v, 2),0),
    #           1/RtAux(-Part(v, 1)^(-Part(v, 2)),n),
    #         If(ProductQ(v),
    #           If(ListQ(SplitProduct(SumBaseQ,v)),
    #             lst=SplitProduct(AllNegTermQ,v);
    #             If(ListQ(lst),
    #               RtAux(-Part(lst, 1),n)*RtAux(Part(lst, 2),n),
    #             lst=SplitProduct(NegSumBaseQ,v);
    #             If(ListQ(lst),
    #               RtAux(-Part(lst, 1),n)*RtAux(Part(lst, 2),n),
    #             lst=SplitProduct(SomeNegTermQ,v);
    #             If(ListQ(lst),
    #               RtAux(-Part(lst, 1),n)*RtAux(Part(lst, 2),n),
    #             lst=SplitProduct(SumBaseQ,v);
    #             RtAux(-Part(lst, 1),n)*RtAux(Part(lst, 2),n)))),
    #           lst=SplitProduct(AtomBaseQ,v);
    #           If(ListQ(lst),
    #             RtAux(-Part(lst, 1),n)*RtAux(Part(lst, 2),n),
    #           RtAux(-First(v),n)*RtAux(Rest(v),n))),
    #         If(OddQ(n),
    #           -RtAux(v,n),
    #         NthRoot(u,n))))),
    #       RtAux(-Part(lst, 1),n)*RtAux(-Part(lst, 2),n)),
    #     lst=SplitProduct(AllNegTermQ,u);
    #     If(ListQ(lst) && ListQ(SplitProduct(SumBaseQ,Part(lst, 2))),
    #       RtAux(-Part(lst, 1),n)*RtAux(-Part(lst, 2),n),
    #     lst=SplitProduct(NegSumBaseQ,u);
    #     If(ListQ(lst) && ListQ(SplitProduct(NegSumBaseQ,Part(lst, 2))),
    #       RtAux(-Part(lst, 1),n)*RtAux(-Part(lst, 2),n),
    #     Map(MFunction(RtAux(Symbol("#1"),n)),u)))))),
    #   With([v=TrigSquare(u)],
    #   If(Not(AtomQ(v)),
    #     RtAux(v,n),
    #   If(OddQ(n) && LtQ(u,0),
    #     -RtAux(-u,n),
    #   If(ComplexNumberQ(u),
    #     With([a=Re(u),b=Im(u)],
    #     If(Not(IntegerQ(a) && IntegerQ(b)) && IntegerQ(a/(a^2+b^2)) && IntegerQ(b/(a^2+b^2)),
    # #= Basis: a+b*im==1/(a/(a^2+b^2)-b/(a^2+b^2)*im) =#
    #       1/RtAux(a/(a^2+b^2)-b/(a^2+b^2)*im,n),
    #     NthRoot(u,n))),
    #   If(OddQ(n) && NegQ(u) && PosQ(-u),
    #     -RtAux(-u,n),
    #   NthRoot(u,n))))))))


    #= ::Subsection::Closed:: =#
    #=Factor*base*predicates=#


    #= If*u*is*an*atom*or*an*atom*raised*to*an*odd*degree, AtomBaseQ(u)*returns*true; else*it*returns*false. =#
    AtomBaseQ(u_) :=
      AtomQ(u) || PowerQ(u) && OddQ(Part(u, 2)) && AtomBaseQ(Part(u, 1))


    #= If*u*is*an*sum*or*a*sum*raised*to*an*odd*degree, SumBaseQ(u)*returns*true; else*it*returns*false. =#
    SumBaseQ(u_) :=
      SumQ(u) || PowerQ(u) && OddQ(Part(u, 2)) && SumBaseQ(Part(u, 1))


    #= If*u*is*a*sum*or*a*sum*raised*to*an*odd*degree*whose*lead*term*has*a*negative*form, NegSumBaseQ(u)*returns*true; else*it*returns*false. =#
    NegSumBaseQ(u_) :=
      SumQ(u) && NegQ(First(u)) || PowerQ(u) && OddQ(Part(u, 2)) && NegSumBaseQ(Part(u, 1))


    #= If*all*terms*of*u*have*a*negative*form, AllNegTermQ(u)*returns*true; else*it*returns*false. =#
    AllNegTermQ(u_) :=
      If(PowerQ(u) && OddQ(Part(u, 2)),
        AllNegTermQ(Part(u, 1)),
      If(SumQ(u),
        NegQ(First(u)) && AllNegTermQ(Rest(u)),
      NegQ(u)))


    #= If*some*term*of*u*has*a*negative*form, SomeNegTermQ(u)*returns*true; else*it*returns*false. =#
    SomeNegTermQ(u_) :=
      If(PowerQ(u) && OddQ(Part(u, 2)),
        SomeNegTermQ(Part(u, 1)),
      If(SumQ(u),
        NegQ(First(u)) || SomeNegTermQ(Rest(u)),
      NegQ(u)))


    #= ::Subsection::Closed:: =#
    #=TrigSquareQ(u)=#


    #= If*u*is*an*expression*of*the*form*sin(z)^2*or*cos(z)^2, TrigSquareQ(u)*returns*true, else*it*returns*false. =#
    TrigSquareQ(u_) :=
      PowerQ(u) && EqQ(Part(u, 2),2) && MemberQ([sin,cos],Head(Part(u, 1)))


    #= ::Subsection::Closed:: =#
    #=SplitProduct(func,u)=#


    #= If*func(v)*is*true*for*a*factor*v*of*u, SplitProduct(func,u)*returns [v, u/v] where*v*is*the*first*such*factor; else*it*returns*false. =#
    SplitProduct(func_,u_) :=
      If(ProductQ(u),
        If(func(First(u)),
          [First(u), Rest(u)],
        With([lst=SplitProduct(func,Rest(u))],
        If(AtomQ(lst),
          false,
        [Part(lst, 1),First(u)*Part(lst, 2)]))),
      If(func(u),
        [u, 1],
      false))


    #= ::Subsection::Closed:: =#
    #=SplitSum(func,u)=#


    #= If*func(v)*is*nonatomic*for*a*term*v*of*u, SplitSum(func,u)*returns [func(v), u-v] where*v*is*the*first*such*term; else*it*returns*false. =#
    SplitSum(func_,u_) :=
      If(SumQ(u),
        If(Not(AtomQ(func(First(u)))),
          [func(First(u)), Rest(u)],
        With([lst=SplitSum(func,Rest(u))],
        If(AtomQ(lst),
          false,
        [Part(lst, 1),First(u)+Part(lst, 2)]))),
      If(Not(AtomQ(func(u))),
        [func(u), 0],
      false))


    #= ::Section::Closed:: =#
    #=IntSum=#


    #= If*u*is*free*of*x*or*of*the*form*c*(a+b*x)^m, IntSum(u,x)*returns*the*antiderivative*of*u*wrt*x;
    	else*it*returns*d*Antiderivative(v,x)*where*d*v=u*and*d*is*free*of*x. =#
    IntSum(u_,x_Symbol) :=
      Simp(FreeTerms(u,x)*x,x) + IntTerm(NonfreeTerms(u,x),x)


    #= If*u*is*of*the*form*c*(a+b*x)^m, IntTerm(u,x)*returns*the*antiderivative*of*u*wrt*x;
    	else*it*returns*d*Antiderivative(v,x)*where*d*v=u*and*d*is*free*of*x. =#
    IntTerm(u_,x_Symbol) :=
      Map(MFunction(IntTerm(Symbol("#1"),x)),u) <--
    SumQ(u)

    IntTerm(c_'*v_^m_',x_Symbol) :=
      With([u=Cancel(v)],
      If(EqQ(m,-1),
        Simp(c*log(RemoveContent(u,x))/Coeff(u,x,1),x),
      If(EqQ(m,1) && EqQ(c,1) && SumQ(u),
        IntSum(u,x),
      Simp(c*u^(m+1)/(Coeff(u,x,1)*(m+1)),x)))) <--
    FreeQ([c,m],x) && LinearQ(v,x)

    IntTerm(u_,x_Symbol) :=
      Dist(FreeFactors(u,x), Antiderivative(NonfreeFactors(u,x),x), x)


    #= ::Section::Closed:: =#
    #=Fix*integration*rules*functions=#


    #= ::Subsection::Closed:: =#
    #=RuleName(name)=#


    DOLLARRuleNameList=[];


    RuleName(name_) :=
     (AppendTo(DOLLARRuleNameList,name); nothing)


    #= ::Subsection::Closed:: =#
    #=FixIntRules(rulelist)=#


    ClearAll(FixIntRules,FixIntRule,FixRhsIntRule)


    FixIntRules() :=
      (DownValues(Antiderivative)=FixIntRules(DownValues(Antiderivative)); nothing)


    FixIntRules(rulelist_) := Block([Antiderivative, Subst, Simp, Dist],
      SetAttributes([Simp,Dist,Antiderivative,Subst],HoldAll);
      Map(MFunction(FixIntRule(Symbol("#1"),Part(Symbol("#"), 1,1,2,1))), rulelist))


    #= ::Subsection::Closed:: =#
    #=FixIntRule(rule)=#


    FixIntRule(rule_) :=
      If(AtomQ(rule((1,1,-1))),
        FixIntRule(rule,rule((1,1,-1))),
      If(Head(rule((1,1,-1)))===Pattern && AtomQ(rule((1,1,-1,1))),
        FixIntRule(rule,rule((1,1,-1,1))),
      Print("Invalid*integration*rule: ",rule((1,1,-1)))))


    #= ::Subsection::Closed:: =#
    #=FixIntRule(rule,x)=#


    FixIntRule(RuleDelayed(lhs_,F_(G_(list_,F_(u_+v_,test2_)),test1_)),x_) :=
      ReplacePart(RuleDelayed(lhs,F(G(list,F(u+v,test2)),test1)),[[2,1,2,1,1]=>FixRhsIntRule(u,x),[2,1,2,1,2]=>FixRhsIntRule(v,x)]) <--
    F===Condition && (G===With || G===Module || G===Block)

    FixIntRule(RuleDelayed(lhs_,G_(list_,F_(u_+v_,test2_))),x_) :=
      ReplacePart(RuleDelayed(lhs,G(list,F(u+v,test2))),[[2,2,1,1]=>FixRhsIntRule(u,x),[2,2,1,2]=>FixRhsIntRule(v,x)]) <--
    F===Condition && (G===With || G===Module || G===Block)

    FixIntRule(RuleDelayed(lhs_,F_(G_(list_,u_+v_),test_)),x_) :=
      ReplacePart(RuleDelayed(lhs,F(G(list,u+v),test)),[[2,1,2,1]=>FixRhsIntRule(u,x),[2,1,2,2]=>FixRhsIntRule(v,x)]) <--
    F===Condition && (G===With || G===Module || G===Block)

    FixIntRule(RuleDelayed(lhs_,G_(list_,u_+v_)),x_) :=
      ReplacePart(RuleDelayed(lhs,G(list,u+v)),[[2,2,1]=>FixRhsIntRule(u,x),[2,2,2]=>FixRhsIntRule(v,x)]) <--
    (G===With || G===Module || G===Block)

    FixIntRule(RuleDelayed(lhs_,F_(u_+v_,test_)),x_) :=
      ReplacePart(RuleDelayed(lhs,F(u+v,test)),[[2,1,1]=>FixRhsIntRule(u,x),[2,1,2]=>FixRhsIntRule(v,x)]) <--
    F===Condition

    FixIntRule(RuleDelayed(lhs_,u_+v_),x_) :=
      ReplacePart(RuleDelayed(lhs,u+v),[[2,1]=>FixRhsIntRule(u,x),[2,2]=>FixRhsIntRule(v,x)])


    FixIntRule(RuleDelayed(lhs_,F_(G_(list1_,F_(H_(list2_,u_),test2_)),test1_)),x_) :=
      ReplacePart(RuleDelayed(lhs,F(G(list1,F(H(list2,u),test2)),test1)),[2,1,2,1,2]=>FixRhsIntRule(u,x)) <--
    F===Condition && (G===With || G===Module || G===Block) && (H===With || H===Module || H===Block)

    FixIntRule(RuleDelayed(lhs_,F_(G_(list1_,H_(list2_,u_)),test1_)),x_) :=
      ReplacePart(RuleDelayed(lhs,F(G(list1,H(list2,u)),test1)),[2,1,2,2]=>FixRhsIntRule(u,x)) <--
    F===Condition && (G===With || G===Module || G===Block) && (H===With || H===Module || H===Block)

    FixIntRule(RuleDelayed(lhs_,F_(G_(list_,F_(H_(str1_,str2_,str3_,J_(u_)),test2_)),test1_)),x_) :=
      ReplacePart(RuleDelayed(lhs,F(G(list,F(H(str1,str2,str3,J(u)),test2)),test1)),[2,1,2,1,4,1]=>FixRhsIntRule(u,x)) <--
    F===Condition && (G===With || G===Module || G===Block) && H===ShowStep && J===Hold

    FixIntRule(RuleDelayed(lhs_,F_(G_(list_,F_(u_,test2_)),test1_)),x_) :=
      ReplacePart(RuleDelayed(lhs,F(G(list,F(u,test2)),test1)),[2,1,2,1]=>FixRhsIntRule(u,x)) <--
    F===Condition && (G===With || G===Module || G===Block)

    FixIntRule(RuleDelayed(lhs_,G_(list_,F_(u_,test2_))),x_) :=
      ReplacePart(RuleDelayed(lhs,G(list,F(u,test2))),[2,2,1]=>FixRhsIntRule(u,x)) <--
    F===Condition && (G===With || G===Module || G===Block)

    FixIntRule(RuleDelayed(lhs_,F_(G_(list_,u_),test_)),x_) :=
      ReplacePart(RuleDelayed(lhs,F(G(list,u),test)),[2,1,2]=>FixRhsIntRule(u,x)) <--
    F===Condition && (G===With || G===Module || G===Block)

    FixIntRule(RuleDelayed(lhs_,G_(list_,u_)),x_) :=
      ReplacePart(RuleDelayed(lhs,G(list,u)),[2,2]=>FixRhsIntRule(u,x)) <--
    (G===With || G===Module || G===Block)

    FixIntRule(RuleDelayed(lhs_,F_(u_,test_)),x_) :=
      ReplacePart(RuleDelayed(lhs,F(u,test)),[2,1]=>FixRhsIntRule(u,x)) <--
    F===Condition

    FixIntRule(RuleDelayed(lhs_,u_),x_) :=
      ReplacePart(RuleDelayed(lhs,u),[2]=>FixRhsIntRule(u,x))


    #= ::Subsection::Closed:: =#
    #=FixRhsIntRule(rhs,x)=#


    SetAttributes(FixRhsIntRule,HoldAll);

    FixRhsIntRule(u_+v_,x_) :=
      FixRhsIntRule(u,x)+FixRhsIntRule(v,x)

    FixRhsIntRule(u_-v_,x_) :=
      FixRhsIntRule(u,x)-FixRhsIntRule(v,x)

    FixRhsIntRule(-u_,x_) :=
      -FixRhsIntRule(u,x)

    FixRhsIntRule(a_*u_,x_) :=
      Dist(a,u,x) <--
    MemberQ([Antiderivative,Subst],Head(Unevaluated(u)))

    FixRhsIntRule(u_,x_) :=
      If(Head(Unevaluated(u))===Dist && Length(Unevaluated(u))==2,
        Insert(Unevaluated(u),x,3),
      If(MemberQ([Antiderivative, Unintegrable, CannotIntegrate, Subst, Simp, Dist], Head(Unevaluated(u))),
        u,
      Simp(u,x)))
end
