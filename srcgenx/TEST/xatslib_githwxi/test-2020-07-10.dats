(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)

val xs =
list_cons(1,
list_cons(2,
list_cons(3,
list_cons(4,
list_cons(5, list_nil())))))

(* ****** ****** *)
//
val tl_ln = xs.tail().length()
//
val (   ) =
( g_print("tl_ln = ")
; g_print( tl_ln ); g_print('\n')
)
//
(* ****** ****** *)

(* end of [test-2020-07-10.dats] *)
