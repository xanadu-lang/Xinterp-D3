(* ****** ****** *)
(*
** N-queen puzzle
*)
(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mytree0.dats"
(* ****** ****** *)
//
(*
val N = 6
*)
#define N 6
//
(* ****** ****** *)

fun
qtest
( xs
: list(int)
, x0: sint): bool =
(
gseq_iforall(xs) where
{
#impltmp
iforall$test<sint>(i0, x1) =
if
(x1 != x0)
then abs(x1-x0) != (i0+1) else false
}
) (* qtest *)

(* ****** ****** *)

#abstype
node_type == list(int)
#typedef node = node_type

(* ****** ****** *)

local
#absopen node_type
in(*in-of-local*)

val
the_root: node = list_nil()

fun
size
(xs: node): nint = list_length(xs)

fun
qextend
( xs
: node
) : list_vt(node) =
let
fun
auxlst
(x0: int) =
if
(x0 < N)
then
(
if
qtest(xs, x0)
then
list_vt_cons
(list_cons(x0, xs), auxlst(x0+1)) else auxlst(x0+1)
) else list_vt_nil((*void*))
//
in auxlst(0) end

end // end of [local]

(* ****** ****** *)

#impltmp
gtree_node_childlst<node> = qextend

(* ****** ****** *)

val
the_sols =
strm_vt_filter0
(gtree_bfs_strmize(the_root))
where
{
#impltmp
filter0$test<node>(xs) = size(xs) >= N
}

(* ****** ****** *)

val the_nsol = strm_vt_length(the_sols)

(* ****** ****** *)

(* end of [test-2020-06-08.dats] *)
