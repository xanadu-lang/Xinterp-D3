(* ****** ****** *)
(* ****** ****** *)
#staload // _ =
"srcgen1\
/prelude/DATS/bool000.dats"
(* ****** ****** *)
#staload // _ =
"srcgen1\
/prelude/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)
#staload // _ =
"srcgen1\
/xatslib/githwxi/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

val b0 = true
val b1 = not(b0)
val () = g_print(b0)
val () = g_print(b1)
val () = g_print(b0 + b1)
val () = g_print(b0 * b1)

(* ****** ****** *)
(* ****** ****** *)

(* end of [ATS3-Xanadu/srcgen1/xats2js/srcgen1/TEST/prelude_bools.dats] *)
