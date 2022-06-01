(* ****** ****** *)
//
#staload
"prelude/DATS/gbas000.dats"
#staload
"prelude/DATS/gord000.dats"
#staload
"prelude/DATS/gnum000.dats"
#staload
"prelude/DATS/gseq000.dats"
#staload _ =
"prelude/DATS/unsafex.dats"
//
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/char000.dats"
#staload _ =
"prelude/DATS/gint000.dats"
#staload _ =
"prelude/DATS/strn000.dats"
#staload _ =
"prelude/DATS/VT/stream0_vt.dats"
//
(* ****** ****** *)
#staload _ =
"prelude/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

fun
not
(b0: bool): bool =
(
case+ b0 of
| true => false
| false => true
)

val ntrue = not(true)

(* ****** ****** *)

fun
digit
(c0: char): sint =
(
case c0 of
| '0' => 0
| '1' => 1
| '2' => 2
| '3' => 3
| '4' => 4
| '5' => 5
| '6' => 6
| '7' => 7
| '8' => 8
| '9' => 9
| _ (* else *) => -1
)

val _0_ = digit('0')
val _1_ = digit('1')
val _9_ = digit('9')
val _a_ = digit('a')

(* ****** ****** *)
fun
fact(n: int): int =
(
case+ n of
| 0 => 1
| _ => n * fact(n-1)
)
val fact10 = fact(10)
(* ****** ****** *)
fun
fact(n: int): int =
(
case+ n of
| _ when (n<=0) => 1
| _ (*  else  *) => n * fact(n-1)
) (* end of [fact] *)
val fact10 = fact(10)
(* ****** ****** *)
fun
fibo(n: int): int =
(
case+ n of
| 0 => 0
| 1 => 1
| _ (*  else  *) => fibo(n-1)+fibo(n-2)
) (* end of [fibo] *)
val fibo10 = fibo(10)
(* ****** ****** *)
fun
fibo(n: int): int =
(
case+ n of
| _ when (n=0) => 0
| _ when (n=1) => 1
| _ (*  else  *) => fibo(n-1)+fibo(n-2)
) (* end of [fibo] *)
val fibo10 = fibo(10)
(* ****** ****** *)

(* end of [gpats.dats] *)
