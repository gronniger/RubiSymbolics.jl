int_rules_4_7_8 = @theory begin

    #= ::Subsection::Closed:: =#
    #= 4.7.8*u*trig(a+b*log(c*x^n))^p =#
    @apply_utils Antiderivative(sin(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => (~x * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 + 1) - (~b * ~d * ~n * ~x * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 + 1) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && NeQ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 + 1, 0)
    @apply_utils Antiderivative(cos(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => (~x * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 + 1) + (~b * ~d * ~n * ~x * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 + 1) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && NeQ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 + 1, 0)
    @apply_utils Antiderivative(sin(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~p, ~x) => ((~x * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ ~p) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + 1) - (~b * ~d * ~n * ~p * ~x * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n))) * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 1)) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + 1)) + (((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * ~p * (~p - 1)) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + 1)) * Antiderivative(sin(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (IGtQ(~p, 1) && NeQ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + 1, 0))
    @apply_utils Antiderivative(cos(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~p, ~x) => (~x * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ ~p) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + 1) + (~b * ~d * ~n * ~p * ~x * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 1) * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + 1) + (((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * ~p * (~p - 1)) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + 1)) * Antiderivative(cos(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~n], ~x) && (IGtQ(~p, 1) && NeQ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + 1, 0))
    @apply_utils Antiderivative(sin(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => (1 / (2 ^ ~p * (~b) ^ ~p * (~d) ^ ~p * (~p) ^ ~p)) * Antiderivative(ExpandIntegrand((ℯ ^ (~a * ~b * (~d) ^ 2 * ~p) * (~x) ^ (-1 / ~p) - ℯ ^ (-(~a) * ~b * (~d) ^ 2 * ~p) * (~x) ^ (1 / ~p)) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~d], ~x) && (IGtQ(~p, 0) && EqQ((~b) ^ 2 * (~d) ^ 2 * (~p) ^ 2 + 1, 0))
    @apply_utils Antiderivative(cos(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => (1 / 2 ^ ~p) * Antiderivative(ExpandIntegrand((ℯ ^ (~a * ~b * (~d) ^ 2 * ~p) * (~x) ^ (-1 / ~p) + ℯ ^ (-(~a) * ~b * (~d) ^ 2 * ~p) * (~x) ^ (1 / ~p)) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~d], ~x) && (IGtQ(~p, 0) && EqQ((~b) ^ 2 * (~d) ^ 2 * (~p) ^ 2 + 1, 0))
    #= Antiderivative(sin((~d')*((~a')+(~b')*log((~x))))^(~p'),~x) :=  1/((-2*im)^p*ℯ^(im*a*d*p))*Antiderivative((1-ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p) ,x) <-- FreeQ([a,b,d],x) && IntegerQ(p) =#
    #= Antiderivative(cos((~d')*((~a')+(~b')*log((~x))))^(~p'),~x) :=  1/(2^p*ℯ^(im*a*d*p))*Antiderivative((1+ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b*d*p),x) <--  FreeQ([a,b,d],x) && IntegerQ(p) =#
    @apply_utils Antiderivative(sin(~(d') * (~(a') + ~(b') * log(~x))) ^ ~p, ~x) => ((sin(~d * (~a + ~b * log(~x))) ^ ~p * (~x) ^ (im * ~b * ~d * ~p)) / (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) * Antiderivative((1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p / (~x) ^ (im * ~b * ~d * ~p), ~x) <-- FreeQ([~a, ~b, ~d, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative(cos(~(d') * (~(a') + ~(b') * log(~x))) ^ ~p, ~x) => ((cos(~d * (~a + ~b * log(~x))) ^ ~p * (~x) ^ (im * ~b * ~d * ~p)) / (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) * Antiderivative((1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p / (~x) ^ (im * ~b * ~d * ~p), ~x) <-- FreeQ([~a, ~b, ~d, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative(sin(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => (~x / (~n * (~c * (~x) ^ ~n) ^ (1 / ~n))) * Subst(Antiderivative((~x) ^ (1 / ~n - 1) * sin(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative(cos(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => (~x / (~n * (~c * (~x) ^ ~n) ^ (1 / ~n))) * Subst(Antiderivative((~x) ^ (1 / ~n - 1) * cos(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * sin(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((~m + 1) * (~e * ~x) ^ (~m + 1) * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / ((~b) ^ 2 * (~d) ^ 2 * ~e * (~n) ^ 2 + ~e * (~m + 1) ^ 2) - (~b * ~d * ~n * (~e * ~x) ^ (~m + 1) * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / ((~b) ^ 2 * (~d) ^ 2 * ~e * (~n) ^ 2 + ~e * (~m + 1) ^ 2) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x) && NeQ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 + (~m + 1) ^ 2, 0)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * cos(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((~m + 1) * (~e * ~x) ^ (~m + 1) * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / ((~b) ^ 2 * (~d) ^ 2 * ~e * (~n) ^ 2 + ~e * (~m + 1) ^ 2) + (~b * ~d * ~n * (~e * ~x) ^ (~m + 1) * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n)))) / ((~b) ^ 2 * (~d) ^ 2 * ~e * (~n) ^ 2 + ~e * (~m + 1) ^ 2) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x) && NeQ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 + (~m + 1) ^ 2, 0)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * sin(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~p, ~x) => (((~m + 1) * (~e * ~x) ^ (~m + 1) * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ ~p) / ((~b) ^ 2 * (~d) ^ 2 * ~e * (~n) ^ 2 * (~p) ^ 2 + ~e * (~m + 1) ^ 2) - (~b * ~d * ~n * ~p * (~e * ~x) ^ (~m + 1) * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n))) * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 1)) / ((~b) ^ 2 * (~d) ^ 2 * ~e * (~n) ^ 2 * (~p) ^ 2 + ~e * (~m + 1) ^ 2)) + (((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * ~p * (~p - 1)) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + (~m + 1) ^ 2)) * Antiderivative((~e * ~x) ^ ~m * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x) && (IGtQ(~p, 1) && NeQ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + (~m + 1) ^ 2, 0))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * cos(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~p, ~x) => ((~m + 1) * (~e * ~x) ^ (~m + 1) * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ ~p) / ((~b) ^ 2 * (~d) ^ 2 * ~e * (~n) ^ 2 * (~p) ^ 2 + ~e * (~m + 1) ^ 2) + (~b * ~d * ~n * ~p * (~e * ~x) ^ (~m + 1) * sin(~d * (~a + ~b * log(~c * (~x) ^ ~n))) * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 1)) / ((~b) ^ 2 * (~d) ^ 2 * ~e * (~n) ^ 2 * (~p) ^ 2 + ~e * (~m + 1) ^ 2) + (((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * ~p * (~p - 1)) / ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + (~m + 1) ^ 2)) * Antiderivative((~e * ~x) ^ ~m * cos(~d * (~a + ~b * log(~c * (~x) ^ ~n))) ^ (~p - 2), ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n], ~x) && (IGtQ(~p, 1) && NeQ((~b) ^ 2 * (~d) ^ 2 * (~n) ^ 2 * (~p) ^ 2 + (~m + 1) ^ 2, 0))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * sin(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => ((~m + 1) ^ ~p / (2 ^ ~p * (~b) ^ ~p * (~d) ^ ~p * (~p) ^ ~p)) * Antiderivative(ExpandIntegrand((~e * ~x) ^ ~m * (ℯ ^ ((~a * ~b * (~d) ^ 2 * ~p) / (~m + 1)) * (~x) ^ (-((~m + 1)) / ~p) - ℯ ^ ((-(~a) * ~b * (~d) ^ 2 * ~p) / (~m + 1)) * (~x) ^ ((~m + 1) / ~p)) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m], ~x) && (IGtQ(~p, 0) && EqQ((~b) ^ 2 * (~d) ^ 2 * (~p) ^ 2 + (~m + 1) ^ 2, 0))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * cos(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => (1 / 2 ^ ~p) * Antiderivative(ExpandIntegrand((~e * ~x) ^ ~m * (ℯ ^ ((~a * ~b * (~d) ^ 2 * ~p) / (~m + 1)) * (~x) ^ (-((~m + 1)) / ~p) + ℯ ^ ((-(~a) * ~b * (~d) ^ 2 * ~p) / (~m + 1)) * (~x) ^ ((~m + 1) / ~p)) ^ ~p, ~x), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m], ~x) && (IGtQ(~p, 0) && EqQ((~b) ^ 2 * (~d) ^ 2 * (~p) ^ 2 + (~m + 1) ^ 2, 0))
    #= Antiderivative(((~e')*(~x))^(~m')*sin((~d')*((~a')+(~b')*log((~x))))^(~p'),~x) :=  1/((-2*im)^p*ℯ^(im*a*d*p))*Antiderivative((e*x)^m*(1-ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^( im*b*d*p),x) <-- FreeQ([a,b,d,e,m],x) && IntegerQ(p) =#
    #= Antiderivative(((~e')*(~x))^(~m')*cos((~d')*((~a')+(~b')*log((~x))))^(~p'),~x) :=  1/(2^p*ℯ^(im*a*d*p))*Antiderivative((e*x)^m*(1+ℯ^(2*im*a*d)*x^(2*im*b*d))^p/x^(im*b* d*p),x) <-- FreeQ([a,b,d,e,m],x) && IntegerQ(p) =#
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * sin(~(d') * (~(a') + ~(b') * log(~x))) ^ ~p, ~x) => ((sin(~d * (~a + ~b * log(~x))) ^ ~p * (~x) ^ (im * ~b * ~d * ~p)) / (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) * Antiderivative(((~e * ~x) ^ ~m * (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) / (~x) ^ (im * ~b * ~d * ~p), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * cos(~(d') * (~(a') + ~(b') * log(~x))) ^ ~p, ~x) => ((cos(~d * (~a + ~b * log(~x))) ^ ~p * (~x) ^ (im * ~b * ~d * ~p)) / (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) * Antiderivative(((~e * ~x) ^ ~m * (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) / (~x) ^ (im * ~b * ~d * ~p), ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * sin(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => ((~e * ~x) ^ (~m + 1) / (~e * ~n * (~c * (~x) ^ ~n) ^ ((~m + 1) / ~n))) * Subst(Antiderivative((~x) ^ ((~m + 1) / ~n - 1) * sin(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * cos(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => ((~e * ~x) ^ (~m + 1) / (~e * ~n * (~c * (~x) ^ ~n) ^ ((~m + 1) / ~n))) * Subst(Antiderivative((~x) ^ ((~m + 1) / ~n - 1) * cos(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative((~(h') * (~(e') + ~(f') * log(~(g') * (~x) ^ ~(m')))) ^ ~(q') * sin(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((im * ℯ ^ (-im * ~a * ~d) * (~c * (~x) ^ ~n) ^ (-im * ~b * ~d)) / (2 * (~x) ^ (-im * ~b * ~d * ~n))) * Antiderivative((~x) ^ (-im * ~b * ~d * ~n) * (~h * (~e + ~f * log(~g * (~x) ^ ~m))) ^ ~q, ~x) - ((im * ℯ ^ (im * ~a * ~d) * (~c * (~x) ^ ~n) ^ (im * ~b * ~d)) / (2 * (~x) ^ (im * ~b * ~d * ~n))) * Antiderivative((~x) ^ (im * ~b * ~d * ~n) * (~h * (~e + ~f * log(~g * (~x) ^ ~m))) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~m, ~n, ~q], ~x)
    @apply_utils Antiderivative((~(h') * (~(e') + ~(f') * log(~(g') * (~x) ^ ~(m')))) ^ ~(q') * cos(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((ℯ ^ (-im * ~a * ~d) * (~c * (~x) ^ ~n) ^ (-im * ~b * ~d)) / (2 * (~x) ^ (-im * ~b * ~d * ~n))) * Antiderivative((~x) ^ (-im * ~b * ~d * ~n) * (~h * (~e + ~f * log(~g * (~x) ^ ~m))) ^ ~q, ~x) + ((ℯ ^ (im * ~a * ~d) * (~c * (~x) ^ ~n) ^ (im * ~b * ~d)) / (2 * (~x) ^ (im * ~b * ~d * ~n))) * Antiderivative((~x) ^ (im * ~b * ~d * ~n) * (~h * (~e + ~f * log(~g * (~x) ^ ~m))) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~m, ~n, ~q], ~x)
    @apply_utils Antiderivative((~(i') * ~x) ^ ~(r') * (~(h') * (~(e') + ~(f') * log(~(g') * (~x) ^ ~(m')))) ^ ~(q') * sin(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((im * ℯ ^ (-im * ~a * ~d) * (~i * ~x) ^ ~r * (~c * (~x) ^ ~n) ^ (-im * ~b * ~d)) / (2 * (~x) ^ (~r - im * ~b * ~d * ~n))) * Antiderivative((~x) ^ (~r - im * ~b * ~d * ~n) * (~h * (~e + ~f * log(~g * (~x) ^ ~m))) ^ ~q, ~x) - ((im * ℯ ^ (im * ~a * ~d) * (~i * ~x) ^ ~r * (~c * (~x) ^ ~n) ^ (im * ~b * ~d)) / (2 * (~x) ^ (~r + im * ~b * ~d * ~n))) * Antiderivative((~x) ^ (~r + im * ~b * ~d * ~n) * (~h * (~e + ~f * log(~g * (~x) ^ ~m))) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~i, ~m, ~n, ~q, ~r], ~x)
    @apply_utils Antiderivative((~(i') * ~x) ^ ~(r') * (~(h') * (~(e') + ~(f') * log(~(g') * (~x) ^ ~(m')))) ^ ~(q') * cos(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))), ~x) => ((ℯ ^ (-im * ~a * ~d) * (~i * ~x) ^ ~r * (~c * (~x) ^ ~n) ^ (-im * ~b * ~d)) / (2 * (~x) ^ (~r - im * ~b * ~d * ~n))) * Antiderivative((~x) ^ (~r - im * ~b * ~d * ~n) * (~h * (~e + ~f * log(~g * (~x) ^ ~m))) ^ ~q, ~x) + ((ℯ ^ (im * ~a * ~d) * (~i * ~x) ^ ~r * (~c * (~x) ^ ~n) ^ (im * ~b * ~d)) / (2 * (~x) ^ (~r + im * ~b * ~d * ~n))) * Antiderivative((~x) ^ (~r + im * ~b * ~d * ~n) * (~h * (~e + ~f * log(~g * (~x) ^ ~m))) ^ ~q, ~x) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~f, ~g, ~h, ~i, ~m, ~n, ~q, ~r], ~x)
    @apply_utils Antiderivative(tan(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => Antiderivative(((im - im * ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) / (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d))) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~p], ~x)
    @apply_utils Antiderivative(cot(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => Antiderivative(((-im - im * ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) / (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d))) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~p], ~x)
    @apply_utils Antiderivative(tan(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => (~x / (~n * (~c * (~x) ^ ~n) ^ (1 / ~n))) * Subst(Antiderivative((~x) ^ (1 / ~n - 1) * tan(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative(cot(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => (~x / (~n * (~c * (~x) ^ ~n) ^ (1 / ~n))) * Subst(Antiderivative((~x) ^ (1 / ~n - 1) * cot(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * tan(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => Antiderivative((~e * ~x) ^ ~m * ((im - im * ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) / (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d))) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m, ~p], ~x)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * cot(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => Antiderivative((~e * ~x) ^ ~m * ((-im - im * ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) / (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d))) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m, ~p], ~x)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * tan(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => ((~e * ~x) ^ (~m + 1) / (~e * ~n * (~c * (~x) ^ ~n) ^ ((~m + 1) / ~n))) * Subst(Antiderivative((~x) ^ ((~m + 1) / ~n - 1) * tan(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * cot(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => ((~e * ~x) ^ (~m + 1) / (~e * ~n * (~c * (~x) ^ ~n) ^ ((~m + 1) / ~n))) * Subst(Antiderivative((~x) ^ ((~m + 1) / ~n - 1) * cot(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative(sec(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => 2 ^ ~p * ℯ ^ (im * ~a * ~d * ~p) * Antiderivative((~x) ^ (im * ~b * ~d * ~p) / (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d], ~x) && IntegerQ(~p)
    @apply_utils Antiderivative(csc(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => (-2im) ^ ~p * ℯ ^ (im * ~a * ~d * ~p) * Antiderivative((~x) ^ (im * ~b * ~d * ~p) / (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d], ~x) && IntegerQ(~p)
    @apply_utils Antiderivative(sec(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => ((sec(~d * (~a + ~b * log(~x))) ^ ~p * (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) / (~x) ^ (im * ~b * ~d * ~p)) * Antiderivative((~x) ^ (im * ~b * ~d * ~p) / (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative(csc(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => ((csc(~d * (~a + ~b * log(~x))) ^ ~p * (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) / (~x) ^ (im * ~b * ~d * ~p)) * Antiderivative((~x) ^ (im * ~b * ~d * ~p) / (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative(sec(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => (~x / (~n * (~c * (~x) ^ ~n) ^ (1 / ~n))) * Subst(Antiderivative((~x) ^ (1 / ~n - 1) * sec(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative(csc(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => (~x / (~n * (~c * (~x) ^ ~n) ^ (1 / ~n))) * Subst(Antiderivative((~x) ^ (1 / ~n - 1) * csc(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * sec(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => 2 ^ ~p * ℯ ^ (im * ~a * ~d * ~p) * Antiderivative(((~e * ~x) ^ ~m * (~x) ^ (im * ~b * ~d * ~p)) / (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m], ~x) && IntegerQ(~p)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * csc(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => (-2im) ^ ~p * ℯ ^ (im * ~a * ~d * ~p) * Antiderivative(((~e * ~x) ^ ~m * (~x) ^ (im * ~b * ~d * ~p)) / (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m], ~x) && IntegerQ(~p)
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * sec(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => ((sec(~d * (~a + ~b * log(~x))) ^ ~p * (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) / (~x) ^ (im * ~b * ~d * ~p)) * Antiderivative(((~e * ~x) ^ ~m * (~x) ^ (im * ~b * ~d * ~p)) / (1 + ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * csc(~(d') * (~(a') + ~(b') * log(~x))) ^ ~(p'), ~x) => ((csc(~d * (~a + ~b * log(~x))) ^ ~p * (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p) / (~x) ^ (im * ~b * ~d * ~p)) * Antiderivative(((~e * ~x) ^ ~m * (~x) ^ (im * ~b * ~d * ~p)) / (1 - ℯ ^ (2 * im * ~a * ~d) * (~x) ^ (2 * im * ~b * ~d)) ^ ~p, ~x) <-- FreeQ([~a, ~b, ~d, ~e, ~m, ~p], ~x) && Not(IntegerQ(~p))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * sec(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => ((~e * ~x) ^ (~m + 1) / (~e * ~n * (~c * (~x) ^ ~n) ^ ((~m + 1) / ~n))) * Subst(Antiderivative((~x) ^ ((~m + 1) / ~n - 1) * sec(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative((~(e') * ~x) ^ ~(m') * csc(~(d') * (~(a') + ~(b') * log(~(c') * (~x) ^ ~(n')))) ^ ~(p'), ~x) => ((~e * ~x) ^ (~m + 1) / (~e * ~n * (~c * (~x) ^ ~n) ^ ((~m + 1) / ~n))) * Subst(Antiderivative((~x) ^ ((~m + 1) / ~n - 1) * csc(~d * (~a + ~b * log(~x))) ^ ~p, ~x), ~x, ~c * (~x) ^ ~n) <-- FreeQ([~a, ~b, ~c, ~d, ~e, ~m, ~n, ~p], ~x) && (NeQ(~c, 1) || NeQ(~n, 1))
    @apply_utils Antiderivative(sin(~(a') * ~x * log(~(b') * ~x)) * log(~(b') * ~x), ~x) => -(cos(~a * ~x * log(~b * ~x))) / ~a - Antiderivative(sin(~a * ~x * log(~b * ~x)), ~x) <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative(cos(~(a') * ~x * log(~(b') * ~x)) * log(~(b') * ~x), ~x) => sin(~a * ~x * log(~b * ~x)) / ~a - Antiderivative(cos(~a * ~x * log(~b * ~x)), ~x) <-- FreeQ([~a, ~b], ~x)
    @apply_utils Antiderivative((~x) ^ ~(m') * sin(~(a') * (~x) ^ ~(n') * log(~(b') * ~x)) * log(~(b') * ~x), ~x) => -(cos(~a * (~x) ^ ~n * log(~b * ~x))) / (~a * ~n) - (1 / ~n) * Antiderivative((~x) ^ ~m * sin(~a * (~x) ^ ~n * log(~b * ~x)), ~x) <-- FreeQ([~a, ~b, ~m, ~n], ~x) && EqQ(~m, ~n - 1)
    @apply_utils Antiderivative((~x) ^ ~(m') * cos(~(a') * (~x) ^ ~(n') * log(~(b') * ~x)) * log(~(b') * ~x), ~x) => sin(~a * (~x) ^ ~n * log(~b * ~x)) / (~a * ~n) - (1 / ~n) * Antiderivative((~x) ^ ~m * cos(~a * (~x) ^ ~n * log(~b * ~x)), ~x) <-- FreeQ([~a, ~b, ~m, ~n], ~x) && EqQ(~m, ~n - 1)
end
