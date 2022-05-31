(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS\
/Xint/basics.dats"
(* ****** ****** *)

#extern
fun
<a:type>
<r:type>
foldl$fopr(r0: r, x0: a): r

(* ****** ****** *)

fun
<a:type>
<r:type>
foldl(xs: list(a), r0: r): r =
(
case+ xs of
| list_nil() => r0
| list_cons(x0, xs) =>
  foldl(xs, foldl$fopr<a><r>(r0, x0))
)

(* ****** ****** *)

fun
<a:type>
length
( xs
: list(a)): int =
(
  foldl<a><int>(xs, 0)
) where
{
#impltmp
foldl$fopr<a><int>(r0, x0) = r0 + 1
} endwhr

(* ****** ****** *)
//
val xs =
list_cons
( 1
, list_cons
  ( 2
  , list_cons
    ( 3
    , list_nil()
    )
  )
)
//
val n0 = length(xs)
//
(* ****** ****** *)

(* end of [prelude_foldl.dats] *)
