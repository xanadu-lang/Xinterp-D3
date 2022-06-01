(* ****** ****** *)
#include
"./../../..\
/share/xinterp_prelude.hats"
(* ****** ****** *)
#staload _ =
"xatslib\
/libcats\
/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)
#staload
"xatslib/libcats/DATS/rand000.dats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mygist0.dats"
#staload
"xatslib/githwxi/DATS/mytest0.dats"
(* ****** ****** *)

(*
#impltmp
{a:t0}
g_rand<list(a)>() =
let
fun
auxlst
( xs
: list_vt(a)): list(a) =
(
case+ xs of
| ~
list_vt_nil
() =>
(
  list_nil()
)
| ~
list_vt_cons
(x0, xs) =>
(
  list_cons(x0, auxlst(xs))
)
)
in
  auxlst(list_rand<a>((*void*)))
end
*)

(* ****** ****** *)

local
#impltmp
g_rand<int>() =
nint_rand_limit<>(2)
in
val
test1 = // true
mytest_fun_asso(list_append<int>)
val
test2 = // false
mytest_fun_comm(list_append<int>)
end // end of [local]

(* ****** ****** *)

(* end of [test-2020-06-23.dats] *)
