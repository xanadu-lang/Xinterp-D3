(* ****** ****** *)
#include
"./../../..\
/share/xinterp_prelude.hats"
(* ****** ****** *)

val
fact =
fix
f(x: int): int =>
if x > 0 then x * f (x-1) else 1

val fact_10 = fact(10)

(* ****** ****** *)
//
fun
power
( m: int
, n: int): int =
(fix f(n:int):int => if n > 0 then m*f(n-1) else 1)(n)
//
val power_2_10 = power(2, 10)
//
(* ****** ****** *)

(* end of [test-2020-07-07.dats] *)
