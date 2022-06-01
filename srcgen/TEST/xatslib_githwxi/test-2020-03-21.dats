(* ****** ****** *)
#staload
"prelude/DATS/gint000.dats"
(* ****** ****** *)
#staload
"prelude/DATS/VT/list000_vt.dats"
#staload
"prelude/DATS/VT/stream0_vt.dats"
(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)
#include
"xatslib\
/githwxi/TEST/test-2020-03-21.dats"
(* ****** ****** *)

fun
digitrev
(
n0: sint
) : list_vt(int) =
let
//
fun
auxloop
( ds
: stream_vt(int)
) : list_vt(int) =
(
case+ !ds of
|
~ strmcon_vt_nil() => list_vt_nil()
|
~ strmcon_vt_cons(d0, ds) =>
  if
  (d0 > 0)
  then list_vt_cons(d0, auxloop(ds)) else auxloop(ds)
)
//
in
  auxloop(rdigitize(n0))
end

(* ****** ****** *)

val ans = digitrev(54321000)

(* ****** ****** *)

(* end of [test-2020-03-21.dats] *)
