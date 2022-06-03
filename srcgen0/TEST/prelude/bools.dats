(* ****** ****** *)
#staload _ =
"prelude/DATS/bool000.dats"
(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

val b0 = true
val b1 = not(b0)
val () = g_print(b0)
val () = g_print(b1)
val () = g_print(b0 + b1)
val () = g_print(b0 * b1)

(* ****** ****** *)

(* end of [prelude_bools.dats] *)
