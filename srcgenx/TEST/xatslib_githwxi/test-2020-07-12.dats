(* ****** ****** *)
(*
//
// For use in Effective ATS
//
// Author: Hongwei Xi
// Authoremail: gmhwxiATgmailDOTcom
//
*)
(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)

#extern
fun
<a:t0>
<b:t0>
list_fold_left
( xs
: list(a)
, init: b
, fopr: (b, a) -<cfr> b
) : b // end-of-function

(* ****** ****** *)

#impltmp
<a>
<b>(*tmp*)
list_fold_left
  (xs, init, fopr) = let
//
fun
auxmain
{n:nat} .<n>.
(
  init: b, xs: list(a, n)
) : b = (
//
case+ xs of
|
list_nil() => init
|
list_cons(x, xs) =>
auxmain(fopr(init, x), xs)
//
) (* auxmain *)
//
(*
val () = lemma_list_param(xs)
*)
//
in
  auxmain(init, xs)
end // end of [list_fold_left]

(* ****** ****** *)

fun
<a:t0>
list_length
(
  xs: list(a)
) : int =
(
//
list_fold_left
  (xs, 0, lam(xs, x) => xs + 1)
//
) (* list_length *)

fun
<a:t0>
list_reverse
(
xs: list(a)
) : list(a) =
(
//
list_fold_left
( xs
, list_nil()
, lam(xs, x) => list_cons(x, xs) )
//
) (* list_reverse *)

(* ****** ****** *)
//
val
fact =
lam
{n:nat}
(n: int(n)) =>
list_fold_left
(
list_vt2t(xs), 1, lam(r, x) => (r)*x
) where
{
val xs =
gseq_map_list(n)
where
#impltmp map$fopr<int><int>(x) = x + 1
endwhr
} (* end-of-val *)
//
(* ****** ****** *)

val fact10 = fact(10)

(* ****** ****** *)

(* end of [test-2020-07-12.dats] *)
