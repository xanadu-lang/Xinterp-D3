(* ****** ****** *)
(*
** for g-sequences
*)
(* ****** ****** *)
//
#staload
"prelude/DATS/gbas000.dats"
#staload
"prelude/DATS/gnum000.dats"
#staload
"prelude/DATS/gord000.dats"
//
(* ****** ****** *)
#staload
"prelude/DATS/gseq000.dats"
(* ****** ****** *)
#staload
"prelude/DATS/bool000.dats"
#staload
"prelude/DATS/char000.dats"
#staload
"prelude/DATS/gint000.dats"
#staload
"prelude/DATS/strn000.dats"
(* ****** ****** *)
#staload
UN =
"prelude/SATS/unsafex.sats"
#staload
// UN =
"prelude/DATS/unsafex.dats"
(* ****** ****** *)
#staload
"prelude/DATS/list000.dats"
#staload
"prelude/DATS/VT/list000_vt.dats"
#staload
"prelude/DATS/VT/strm000_vt.dats"
(* ****** ****** *)
#staload _ =
"prelude/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)
//
val xs1 =
list_cons(1,
list_cons(2,
list_cons(3,
list_cons(4,
list_cons(5, list_nil())))))
//
(* ****** ****** *)

val xs2 = gseq_reverse(xs1)

(* ****** ****** *)

val xs3 =
(
gseq_map_list(xs1)
) where
{
#impltmp
map$fopr<int><int>(x0) = x0 * x0
}

(* ****** ****** *)

val xs4 =
(
gseq_map_rlist(xs1)
) where
{
#impltmp
map$fopr<int><int>(x0) = x0 * x0
}

(* ****** ****** *)

val xs5 = gseq_append(xs1, xs2)

(* ****** ****** *)

val xs6 =
gseq_filter_list(xs5)
where
{
#impltmp
filter$test<int>(x0) = x0 % 2 = 0 }

(* ****** ****** *)

val xs7 =
gseq_filter_rlist(xs5)
where
{
#impltmp
filter$test<int>(x0) = x0 % 2 = 0 }

(* ****** ****** *)
//
val xs8 = gseq_drop(xs1, 1)
//
(* ****** ****** *)
//
val xs9 =
gseq_idropif(xs8) where
{
#impltmp
idropif$test<int>(i0, x0) = x0 <= 3 }
//
(* ****** ****** *)

val xs10 =
gseq_z2map_list
<list(int)
,list(int)><int>(xs1, xs1)
where
{
#impltmp
z2map$fopr<int,int><int>(x0, y0) = x0 + y0 }

(* ****** ****** *)

val xs11 =
gseq_imap_list("abcde") where
{
#impltmp
imap$fopr<cgtz><(nint,cgtz)>(i,c) = (i,c)
}
val xs12 =
gseq_imap_rlist("abcde") where
{
#impltmp
imap$fopr<cgtz><(nint,cgtz)>(i,c) = (i,c)
}

(* ****** ****** *)

(* end of [prelude_gtest2.dats] *)
