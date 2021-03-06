(* ****** ****** *)
#staload
"prelude/DATS/gint000.dats"
#staload
"prelude/DATS/gnum000.dats"
#staload
"prelude/DATS/gord000.dats"
(* ****** ****** *)
#staload _ =
"prelude\
/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)

fun
<a:type>
gfact(x) =
if
g_gtz(x)
then
g_mul(x, gfact(g_pred(x))) else g_1()

(* ****** ****** *)
(*
//
#extern
fun
<a:type>
gfact(x: a): a
//
*)
(*
implement
<a>
gfact =
fix
fact(x) =>
if
g_eqz(x)
then g_1()
else g_mul(x, fact(g_pred(x))) 
*)
//
(* ****** ****** *)

val fact10 =
(
let val ans = gfact<int>(10) in ans end
)

(* ****** ****** *)

(* end of [gfact.dats] *)
