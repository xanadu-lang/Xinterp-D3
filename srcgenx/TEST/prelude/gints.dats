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
//
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/VT/gseq000_vt.dats"
#staload _ =
"prelude/DATS/VT/strm000_vt.dats"
//
(* ****** ****** *)
#staload _ =
"prelude/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

val n0 = gseq_length(10)

(* ****** ****** *)

val mx = gseq_max2(10, 0)
val mn = gseq_min2(10, 10)

(* ****** ****** *)

val xs1 = gseq_listize(10)
val xs2 = gseq_rlistize(10)

(* ****** ****** *)

val xs3 =
gseq_map_list(10) where
{
#impltmp
map$fopr<nint><nint>(x) = x + 1
}
val xs4 =
gseq_map_rlist(10) where
{
#impltmp
map$fopr<nint><nint>(x) = x + 1
}

(* ****** ****** *)

(* end of [TEST_prelude_gints.dats] *)
