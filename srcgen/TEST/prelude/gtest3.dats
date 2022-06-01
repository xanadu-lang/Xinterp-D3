(* ****** ****** *)
(*
** for g-sequences
*)
(* ****** ****** *)

#staload
UN =
"prelude/SATS/unsafex.sats"
#staload
// UN =
"prelude/DATS/unsafex.dats"

(* ****** ****** *)

#staload
"prelude/DATS/bool000.dats"
#staload
"prelude/DATS/char000.dats"
#staload
"prelude/DATS/gint000.dats"

(* ****** ****** *)

#staload
"prelude/DATS/gbas000.dats"
#staload
"prelude/DATS/gnum000.dats"
#staload
"prelude/DATS/gord000.dats"

(* ****** ****** *)

#staload
"prelude/DATS/gseq000.dats"

(* ****** ****** *)

#staload
"prelude/DATS/VT/list000_vt.dats"
#staload
"prelude/DATS/VT/stream0_vt.dats"

(* ****** ****** *)
//
#staload
"xatslib/libcats/DATS/g00iout.dats"
#staload
"xatslib/libcats/DATS/stdiout.dats"
//
(* ****** ****** *)
#staload _ =
"prelude/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)
#staload _ =
"xatslib/libcats/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

val cs =
g_inp_line_list<>()

(* ****** ****** *)

val cs = g_inp_cstream<>()
val ln = stream_vt_length(cs)

(* ****** ****** *)

(* end of [gtest3.dats] *)
