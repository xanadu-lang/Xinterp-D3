(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)

#typedef tvar = string

(* ****** ****** *)

datatype
term =
| TMvar of tvar
| TMlam of (tvar, term)
| TMapp of (term, term)

(* ****** ****** *)

val K =
let
val x = TMvar("x")
val y = TMvar("y") in
TMlam("x", TMlam("y", x))
end

(* ****** ****** *)

val S =
let
val x = TMvar("x")
val y = TMvar("y")
val z = TMvar("z") in
TMlam
( "x"
, TMlam
  ( "y"
  , TMlam
    ( "z"
    , TMapp
      (TMapp(x, z), TMapp(y, z))
    )
  )
)
end

val SKK = TMapp(TMapp(S, K), K)

(* ****** ****** *)

fun
subst
( t0: term
, x0: tvar
, u0: term): term =
(
case+ t0 of
|
TMvar(x1) =>
if
(x0 = x1) then u0 else t0
|
TMlam(x1, t1) =>
if
(x0 = x1)
then t0 else TMlam(x1, subst(t1, x0, u0))
|
TMapp(t1, t2) =>
TMapp(subst(t1, x0, u0), subst(t2, x0, u0))
)

(* ****** ****** *)

fun
normalize
(t0: term): term =
(
case+ t0 of
| TMvar(x1) => t0
| TMlam(x1, u1) =>
  TMlam(x1, normalize(u1))
| TMapp(t1, t2) =>
  let
  val t1 = normalize(t1)
  in
  case+ t1 of
  |
  TMlam(x1, u1) =>
  let
    val t0 =
    subst(u1, x1, t2) in normalize(t0)
  end
  |
  _ (*non-TMlam*) => TMapp(t1, normalize(t2))
  end
)

(* ****** ****** *)

val SKK_nf = normalize(SKK)

(* ****** ****** *)

(* end of [test-2020-06-17.dats] *)
