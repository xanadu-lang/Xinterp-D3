(* ****** ****** *)
#staload
"prelude/DATS/gint000.dats"
#staload
"prelude/DATS/char000.dats"
#staload
"prelude/DATS/strn000.dats"
(* ****** ****** *)
#staload
"prelude/DATS/tuple00.dats"
(* ****** ****** *)
#staload
"prelude\
/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

#define one 1
#define two 2

(* ****** ****** *)

val sum = one + two

(* ****** ****** *)
//
#define
npow(n, x) =
if
n > 0
then x * npow(n-1, x) else 1
//
#define pow2(x) = npow(2, x)
#define pow3(x) = npow(3, x)
//
(* ****** ****** *)

val pow3_10 = pow3(10)

(* ****** ****** *)

(* end of [gmacro.dats] *)
