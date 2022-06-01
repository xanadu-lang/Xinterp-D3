(* ****** ****** *)
#include
"./../../..\
/share/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mygist0.dats"
(* ****** ****** *)
//
fun
string_permutize
( cs
: string)
: stream_vt(string) =
gseq_permutize<string><cgtz>(cs)
//
(* ****** ****** *)

val cs1 = "12345"
val css = string_permutize(cs1)
val css = stream_vt_listize(css)

(* ****** ****** *)

(* end of [test-2020-06-05.dats] *)
