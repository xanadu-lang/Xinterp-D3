(* ****** ****** *)
#include
"prelude\
/HATS/prelude_dats.hats"
(* ****** ****** *)
#include
"xatslib\
/githwxi/HATS/githwxi_dats.hats"
(* ****** ****** *)
#include
"prelude\
/HATS/CATS/Xint/prelude_dats.hats"
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
