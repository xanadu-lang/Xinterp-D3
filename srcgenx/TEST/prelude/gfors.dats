(* ****** ****** *)
//
#staload
"prelude/DATS/gbas000.dats"
#staload
"prelude/DATS/gnum000.dats"
#staload
"prelude/DATS/gfor000.dats"
#staload
"prelude/DATS/gseq000.dats"
(* ****** ****** *)
#staload
"prelude/DATS/unsafex.dats"
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/char000.dats"
#staload _ =
"prelude/DATS/gint000.dats"
//
(* ****** ****** *)
#staload _ =
"prelude/DATS/strn000.dats"
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/arrn000.dats"
#staload _ =
"prelude/DATS/arrn001.dats"
//
(* ****** ****** *)
#staload _ =
"prelude/DATS/list000.dats"
#staload _ =
"prelude/DATS/optn000.dats"
(* ****** ****** *)
#staload _ =
"prelude/DATS/synoug0.dats"
(* ****** ****** *)
//
#staload _ =
"prelude/DATS/VT/list000_vt.dats"
#staload _ =
"prelude/DATS/VT/arrn000_vt.dats"
#staload _ =
"prelude/DATS/VT/strm000_vt.dats"
//
(* ****** ****** *)
#staload _ =
"prelude/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

val () =
g_x1forint(3) where
{
#impltmp
x1forint$work<3>(i1) = print(i1)
}

(* ****** ****** *)

val () =
g_x2forint(3,3) where
{
#impltmp
x2forint$work
<3,3>(i1,i2) = (print(i1); print(i2))
}

(* ****** ****** *)

val () =
g_x3forint(3,3,3) where
{
#impltmp
x3forint$work
<3,3,3>
(i1,i2,i3) = (print(i1); print(i2); print(i3))
}

(* ****** ****** *)

fun
<a:t0>
array2list
{n:nat}
( A0
: a1ref(a, n))
: list_vt(a, n) =
let
//
var
res:
?list_vt(a) =
list_vt_nil()
val p0 = $addr(res)
//
val n0 =
a1ref_length(A0)
val n1 = pred(n0)
//
#impltmp
x1forint$work<n>(i0) =
let
val j0 = n1 - i0
in
$UN.p2tr_set_list_vt_cons
  (p0, A0[j0])
end
//
in
  g_x1forint(n0); $UN.castlin10(res)
end

(* ****** ****** *)

fun
<a:t0>
array2rlist
{n:nat}
( A0
: a1ref(a, n))
: list_vt(a, n) =
let
//
var
res:
?list_vt(a) =
list_vt_nil()
val p0 = $addr(res)
//
val n0 = a1ref_length(A0)
//
#impltmp
x1forint$work<n>(i0) =
$UN.p2tr_set_list_vt_cons
  (p0, A0[i0])
//
in
  g_x1forint(n0); $UN.castlin10(res)
end

(* ****** ****** *)

val A1 =
a1ref_make_nval(5, 0)
val y0 = set_at(A1, 0, 0)
val () = set_at(A1, 1, 1)
val () = set_at(A1, 2, 2)
val () = set_at(A1, 3, 3)
val () = set_at(A1, 4, 4)

(* ****** ****** *)

val xs1 =
array2list(A1) where
{
#impltmp a1ref_length<int>(A1) = 5
}
val xs2 =
array2rlist(A1) where
{
#impltmp a1ref_length<int>(A1) = 5
}

(* ****** ****** *)

(* end of [prelude_gfors.dats] *)
