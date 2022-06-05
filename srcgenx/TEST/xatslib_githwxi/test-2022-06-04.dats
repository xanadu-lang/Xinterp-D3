(* ****** ****** *)
//
(*
HX-2020-09-19:
This is actually
for testing xats2js!
*)
//
(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/libcats/DATS/synoug0.dats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/g00iout.dats"
(* ****** ****** *)
#staload
"xatslib\
/githwxi/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

val () = prerrln(1, 2, 3)
val () = prerrln(4, 5, 6)
val () = prerrln(7, 8, 9)

(* ****** ****** *)

datatype abc0 =
| A of sint
| B of (sint, abc0)

(* ****** ****** *)

#impltmp
gl_print1<abc0>(x0) =
  my_print1(x0) where
{
fun
my_print1(x0: abc0): void =
(
case x0 of
|
A(x1) =>
print("A(", x1, ")")
|
B(x1, x2) =>
print("B(", x1, ",", x2, ")")
) where
{
#impltmp
gl_print1<abc0>(x0) = my_print1(x0)
}
} (*where*)//end-of(gl_print1<abc0>)


(* ****** ****** *)

val () =
prerrln("A(0) = ", A(0))
val () =
prerrln("B(0, A(1)) = ", B(0, A(1)))
val () =
prerrln("B(0, B(1, A(2))) = ", B(0, B(1, A(2))))

(* ****** ****** *)

(* end of [test-2022-06-04.dats] *)
