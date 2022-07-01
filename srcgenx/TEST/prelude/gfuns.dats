(* ****** ****** *)
//
#staload
"prelude/DATS/gbas000.dats"
#staload
"prelude/DATS/gnum000.dats"
#staload
"prelude/DATS/gord000.dats"
#staload
"prelude/DATS/gfor000.dats"
#staload
"prelude/DATS/gfun000.dats"
#staload
"prelude/DATS/gseq000.dats"
(* ****** ****** *)
#staload
"prelude/DATS/unsafex.dats"
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/char000.dats"
#staload _ =
"prelude/DATS/gint000.dats"
//
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/list000.dats"
#staload _ =
"prelude/DATS/arrn000.dats"
#staload _ =
"prelude/DATS/strn000.dats"
//
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/VT/list000_vt.dats"
#staload _ =
"prelude/DATS/VT/strm000_vt.dats"
//
(* ****** ****** *)
#staload _ =
"prelude/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

val ans0 = fmemberq(5)(3)
val ans1 = fmemberq("abcde")('a')
val ans2 = fnot(fmemberq("abcde"))('z')

(* ****** ****** *)

(* end of [gfuns.dats] *)
