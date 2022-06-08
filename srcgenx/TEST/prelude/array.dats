(* ****** ****** *)
//
#staload
"prelude/DATS/gbas000.dats"
#staload
"prelude/DATS/gnum000.dats"
#staload
"prelude/DATS/gord000.dats"
#staload
"prelude/DATS/gfor000.dats"
#staload
"prelude/DATS/gseq000.dats"
//
(* ****** ****** *)
#staload _ =
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
"prelude/DATS/list000.dats"
#staload
"prelude/DATS/arrn000.dats"
#staload _ =
"prelude/DATS/strn000.dats"
(* ****** ****** *)
#staload _ =
"prelude/DATS/synoug0.dats"
(* ****** ****** *)
//
#staload
"prelude/DATS/VT/gseq000_vt.dats"
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
#staload _ =
"prelude/DATS/CATS/Xint/prelude.dats"
//
(* ****** ****** *)
//
#symload
length with
gseq_length of 110
//
(* ****** ****** *)
//
#symload
foreach with
gseq_foreach of 110
#symload
rforeach with
gseq_rforeach of 110
//
(* ****** ****** *)
//
val A0 =
a0ref_make(0)
val x0 =
a0ref_get<int>(A0)
val () = print(A0)
val () =
a0ref_set<int>(A0, 1)
val x1 =
a0ref_get<int>(A0)
val () = print(A0)
//
(* ****** ****** *)

val B1 =
a1ref_make_nval<int>(10, 0)
val y0 = get_at(B1, 0)
val () = set_at(B1, 1, 1)
val y1 = get_at(B1, 1)
val () = set_at(B1, 2, 2)
val y2 = get_at(B1, 2)

(* ****** ****** *)

val () =
rforeach(length(B1)) where
{
#impltmp
a1ref_length<int>(B1) = 10
#impltmp
rforeach$work<int>(i0) = set_at(B1, i0, i0+1)
}

(* ****** ****** *)

val
bs =
gseq_map_list(B1) where
{
  #impltmp
  a1ref_length<int>(B1) = 10
  #impltmp
  map$fopr<int><int>(x) = (x)
}

(* ****** ****** *)

val
sum = gseq_add(B1) where
{
  #impltmp a1ref_length<int>(B1) = 10
}

(* ****** ****** *)

val B2 =
a1ref_make_list(xs) where
{
  val xs =
  list_cons
  (1,list_cons(2, list_nil()))
}

(* ****** ****** *)

val B3 =
a1ref_make_list_vt(xs) where
{
  val xs =
  list_vt_cons(1,
  list_vt_cons(2,
  list_vt_cons(3, list_vt_nil())))
}

(* ****** ****** *)

val xss =
gseq_permutize(B3) where
{
#impltmp a1ref_length<int>(B1) = 3
}
val len = length(xss)

(* ****** ****** *)

(* end of [prelude_array.dats] *)
