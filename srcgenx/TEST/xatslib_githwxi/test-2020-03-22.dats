(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS\
/Xint/basics0.dats"
(* ****** ****** *)
#staload
"prelude/DATS/gbas000.dats"
(* ****** ****** *)
//
#staload
"prelude/DATS/gint000.dats"
//
#staload
"prelude/DATS/unsafex.dats"
//
(* ****** ****** *)
#staload
"prelude/DATS/VT/list000_vt.dats"
#staload
"prelude/DATS/VT/strm000_vt.dats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mygist0.dats"
(* ****** ****** *)

val xs =
list_cons(1,
list_cons(2,
list_cons(3,
list_cons(4,
list_cons(5, list_nil())))))

(* ****** ****** *)

val xss = list_permutize(xs)
val len = strm_vt_length(xss)

(* ****** ****** *)

(* end of [test-2020-03-22.dats] *)
