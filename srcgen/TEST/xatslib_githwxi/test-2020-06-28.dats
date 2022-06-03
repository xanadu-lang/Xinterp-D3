(* ****** ****** *)
#include
"./../../..\
/share/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mygist0.dats"
#staload
"xatslib/githwxi/DATS/mytest0.dats"
(* ****** ****** *)

extern
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

(* ****** ****** *)

val
alpha =
"abcdefghijklmnopqrstuvwxyz"

(* ****** ****** *)
//
#implfun
helper1
{n}(cs) =
let
#typedef x0 = cgtz
#typedef xs = strn
#typedef y0 = cgtz
#typedef ys = strn
#impltmp
x2imap$fopr
<x0,y0>
( i, c0
, j, c1 ) =
strn_fset_at(cs, i, c1)
#impltmp
x2ifilter$test<x0,y0>
(_, c0, _, c1) = (c0 != c1)
in
  gseq_x2imapopt_strm(cs, alpha)
end (* end of [helper1] *)
//
(* ****** ****** *)
//
(*
local
#impltmp
g_free<strn_vt>(cs) = () // leak!
in
val nword = length(helper1("water"))
end
*)
val words = listize(helper1("water"))
//
(* ****** ****** *)

(* end of [test-2020-06-28.dats] *)
