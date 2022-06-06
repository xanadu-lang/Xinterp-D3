(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/libcats/DATS/synoug0.dats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/g00iout.dats"
(* ****** ****** *)
#staload
"prelude\
/DATS/CATS/Xint/basics0.dats"
#staload
"xatslib\
/githwxi/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)
//
val s1 = 1
val u1 = g0s2u(s1)
val s2 = g0u2s(u1)
val () = prerrln("s1 = ", s1)
val () = prerrln("u1 = ", u1)
val () = prerrln("s2 = ", s2)
//
(* ****** ****** *)

(* end of [test-2022-06-06.dats] *)
