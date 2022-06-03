(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/libcats/DATS/stdiout.dats"
(* ****** ****** *)

#extern
fun
<n:int>
power(x: int): int
#impltmp
<n:int>
power{n=0}(x) = 1
#impltmp
<n:int>
power{n>0}.<n>.(x) = x * power(x-1)

(*
fun
mypower
{n:int}
(x: int) =
if n > 0 then power(x) else power(x)
*)

(* ****** ****** *)

#abstype Z
#abstype S(x: t0)

(* ****** ****** *)

#extern
fun
<N:t0>
power(x: int): int

#impltmp
power<Z>(x) = 1
#impltmp
{N:t0}
power<S(N)>(x) = x * power<N>(x)

(* ****** ****** *)

fun
sq(x:int): int = power<S(S(Z))>(x)
fun
cb(x:int): int = power<S(S(S(Z)))>(x)

(* ****** ****** *)

val sq3 = sq(3) and cb3 = cb(3)

(* ****** ****** *)

(* end of [test-2020-07-05.dats] *)
