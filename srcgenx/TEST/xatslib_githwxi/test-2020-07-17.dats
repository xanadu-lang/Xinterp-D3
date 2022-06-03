(* ****** ****** *)
//
// HX: porting from ATS/Postiats
//
(* ****** ****** *)
(*
(* ****** ****** *)
//
// Implementing fixed-point operator
//
(* ****** ****** *)
//
(*
##myatsccdef=\
patsopt --constraint-ignore --dynamic $1 | \
tcc -run -DATS_MEMALLOC_LIBC -I${PATSHOME} -I${PATSHOME}/ccomp/runtime -
*)
//
*)
(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)
//
fun
myfix
{a:type}
(
 f: lazy(a) -<cfr> a
) : lazy(a) = $lazy(f(myfix(f)))
//
val
fact =
myfix
{int-<cfr>int}(
lam(ff)(x) =>
if (x > 0) then (!ff)(x-1) else 1
)
(* ****** ****** *)

#typedef
cfun(a:type, b:type) = a -<cfr> b

(* ****** ****** *)
//
fun
<
a:type
>
<
b:type
> myfix2
(
 f: cfun(a, b) -> cfun(a, b)
) : cfun(a, b) = lam x => f(myfix2(f))(x)
//
(* ****** ****** *)
//
val
fact2 =
myfix2<int><int>
(
lam(ff)(x) => if x > 0 then x * ff(x-1) else 1
)
(* ****** ****** *)
//
val
fact_10 =
let
val f = !fact in f(10)
end
//
(* ****** ****** *)
//
val fact2_20 = fact2(10)
//
(* ****** ****** *)

(*
(* end of [myfixptcomb.dats] *)
*)

(* ****** ****** *)

(* end of [test-2020-07-17.dats] *)
