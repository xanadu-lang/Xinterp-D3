(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mygist0.dats"
(* ****** ****** *)
//
fun
strn_permutize
( cs
: strn)
: strm_vt(strn) =
gseq_permutize<strn><cgtz>(cs)
//
(* ****** ****** *)

val cs1 = "12345"
val css = strn_permutize(cs1)
val css = strm_vt_listize(css)

(* ****** ****** *)

(* end of [test-2020-06-05.dats] *)
