(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS\
/Xint/basics.dats"
#staload _ =
"xatslib\
/libc/DATS/CATS\
/Xint/basics.dats"
(* ****** ****** *)
#staload
"prelude/DATS/gbas.dats"
#staload
"prelude/DATS/gord.dats"
(* ****** ****** *)
#staload
"prelude/DATS/gseq.dats"
(* ****** ****** *)
//
#staload
"prelude/DATS/bool.dats"
#staload
"prelude/DATS/char.dats"
#staload
"prelude/DATS/gint.dats"
#staload
"prelude/DATS/gflt.dats"
#staload
"prelude/DATS/string.dats"
//
(* ****** ****** *)
#staload
"prelude/DATS/unsafe.dats"
(* ****** ****** *)
//
#staload
"prelude/DATS/list.dats"
#staload
"prelude/DATS/stream_vt.dats"
//
(* ****** ****** *)
#staload
"xatslib/libc/DATS/rand.dats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mygist.dats"
#staload
"xatslib/githwxi/DATS/mytest.dats"
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
