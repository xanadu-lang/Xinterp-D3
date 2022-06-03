(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS\
/Xint/basics0.dats"
(* ****** ****** *)
#staload
"prelude/DATS/gbas000.dats"
#staload
"prelude/DATS/gord000.dats"
(* ****** ****** *)
//
#staload
"prelude/DATS/bool000.dats"
#staload
"prelude/DATS/char000.dats"
#staload
"prelude/DATS/gint000.dats"
(* ****** ****** *)
//
#staload
"prelude/DATS/unsafex.dats"
//
(* ****** ****** *)
#staload
"prelude/DATS/gseq000.dats"
#staload
"prelude/DATS/list000.dats"
#staload _ =
"prelude/DATS/strn000.dats"
(* ****** ****** *)
#staload
"prelude/DATS/VT/gseq000_vt.dats"
#staload
"prelude/DATS/VT/list000_vt.dats"
#staload
"prelude/DATS/VT/strm000_vt.dats"
(* ****** ****** *)
#staload
"prelude/DATS/VT/strn000_vt.dats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mygist0.dats"
(* ****** ****** *)
//
fun
string_mergesort
(cs: string) =
gseq_mergesort(cs)
//
(* ****** ****** *)

val cs0 = "13524"
val cs1 = string_mergesort(cs0)

(* ****** ****** *)

(* end of [test-2020-06-03.dats] *)
