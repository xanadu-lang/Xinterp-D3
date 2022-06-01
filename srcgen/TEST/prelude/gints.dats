(* ****** ****** *)
//
#staload
"prelude/DATS/gbas000.dats"
#staload
"prelude/DATS/gord000.dats"
#staload
"prelude/DATS/gnum000.dats"
#staload
"prelude/DATS/gseq000.dats"
#staload
"prelude/DATS/unsafex.dats"
//
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/char000.dats"
#staload _ =
"prelude/DATS/gint000.dats"
#staload _ =
"prelude/DATS/strn000.dats"
#staload _ =
"prelude/DATS/VT/stream0_vt.dats"
//
(* ****** ****** *)
#staload _ =
"prelude/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

val n0 = length(10)

(* ****** ****** *)

val mx = max2(10, 0)
val mn = min2(10, 10)

(* ****** ****** *)

val xs1 = listize(10)
val xs2 = rlistize(10)

(* ****** ****** *)

val xs3 =
map_list(10) where
{
#impltmp
map$fopr<nint><nint>(x) = x + 1
}
val xs4 =
map_rlist(10) where
{
#impltmp
map$fopr<nint><nint>(x) = x + 1
}

(* ****** ****** *)

(* end of [prelude_gints.dats] *)
