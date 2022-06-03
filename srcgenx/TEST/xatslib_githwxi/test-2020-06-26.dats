(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mygist0.dats"
(* ****** ****** *)
#impltmp
g_free<strn_vt>(cs) = () // leak!
(* ****** ****** *)

#extern
fun
strn_fset_at
{n:nat}
( cs
: strn(n)
, i0
: nintlt(n)
, c0: cgtz): strn_vt(n)
#implfun
strn_fset_at
  (cs, i0, c0) =
(
strn_vt_tabulate(length(cs))
) where
{
#impltmp
tabulate$fopr<cgtz>(i1) =
if
(i0 = i1)
then c0 else strn_get_at(cs, i1)
} (* end of [strn_fset_at] *)

(* ****** ****** *)

#extern
fun
helper1
{n:nat}
( cs
: strn(n)
)
: strm_vt(strn_vt(n))
#extern
fun
helper2
{n:nat}
( cs
: strn(n)
, i0
: nintlt(n)
) : list_vt( strn_vt(n) )

(* ****** ****** *)

#implfun
helper1
{n}(cs) =
strm_vt_maplist0
(
gint_strmize_nint(length(cs))
) where
{
#typedef
x0 = nintlt(n)
#vwtpdef
y0 = strn_vt(n)
#impltmp
maplist0$fopr<x0><y0>(i0) = helper2(cs, i0)
}

(* ****** ****** *)

#implfun
helper2
{n}(cs, i0) =
let
val N = 26
val c0 =
strn_get_at(cs, i0)
val
alpha =
"abcdefghijklmnopqrstuvwxyz"
in
let
val j0 = N
and r0 =
list_vt_nil()
in loop(j0, r0) end where
{
//
#typedef
j0 = nintlte(26)
#vwtpdef
r0 = list_vt(strn_vt(n))
//
fun
loop
(j0: j0, r0: r0): r0 =
if
(j0 = 0)
then r0 else
let
  val j1 = pred(j0)
  val c1 =
  strn_get_at(alpha, j1)
in
  if
  (c0 = c1)
  then loop(j1, r0) else let
    val cs =
    strn_fset_at(cs, i0, c1)
  in
    loop(j1, list_vt_cons(cs, r0))
  end
end (*end-of-else*)
//
}
end // end of [helper2]

(* ****** ****** *)
//
val nword = length(helper1("water"))
//
(* ****** ****** *)

(* end of [test-2020-06-26.dats] *)
