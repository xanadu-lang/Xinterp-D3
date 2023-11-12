(* ****** ****** *)
(*
** for g-sequences
*)
(* ****** ****** *)
#staload
UN =
"prelude/SATS/unsafex.sats"
#staload
UN =
"prelude/DATS/unsafex.dats"
(* ****** ****** *)
#staload
"prelude/DATS/gbas000.dats"
#staload
"prelude/DATS/gint000.dats"
#staload
"prelude/DATS/gnum000.dats"
#staload
"prelude/DATS/gord000.dats"
(* ****** ****** *)
#staload
"prelude/DATS/gseq000.dats"
(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

#impltmp
gseq_forall
<int><int>
  (xs) = loop(0) where
{
//
fun
loop(i: int): bool =
if i >= xs then true else
(if forall$test<int>(i) then loop(i+1) else false)
//
} (* gseq_forall *)

(* ****** ****** *)

#impltmp
{x0:type}
gseq_forall
<list(x0)><x0>
  (xs) = loop(xs) where
{
//
fun
loop(xs: list(x0)): bool =
case+ xs of
| list_nil() => true
| list_cons(x0, xs) =>
  if forall$test<x0>(x0) then loop(xs) else false
//
} (* gseq_forall *)

(* ****** ****** *)
//
val x0 = 10
//
val xs =
list_cons(1,
list_cons(2,
list_cons(3,
list_cons(4, list_nil()))))
//
(* ****** ****** *)

val y3 =
gseq_memberq(xs, 3)
val n5 =
gseq_memberq(xs, 5)

(* ****** ****** *)
//
val l0 = gseq_length(x0)
val ln = gseq_length(xs)
//
(* ****** ****** *)
//
val add_x0 = gseq_add(x0)
val mul_x0 = gseq_mul(x0)
//
(* ****** ****** *)
//
val add_xs = gseq_add(xs)
val mul_xs = gseq_mul(xs)
//
(* ****** ****** *)
#impltmp
<xs><x0>
gseq_copy_rlist
  (xs) =
list_vt2t
(
gseq_copy_rllist<xs><x0>(xs))
#impltmp
<xs><x0>
gseq_copy_rllist(xs) =
(
  gseq_map_rllist
  <xs><x0><x0>(xs)) where
{
  #impltmp
  map$fopr<x0><x0>( x0 ) = x0 }
(* ****** ****** *)

val rev_x0 = gseq_copy_rlist(x0)
val rev_xs = gseq_copy_rlist(xs)

(* ****** ****** *)

(* end of [prelude_gtest1.dats] *)
