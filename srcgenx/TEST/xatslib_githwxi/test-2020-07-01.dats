(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/g00iout.dats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/stdiout.dats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/parcmb1.dats"
(* ****** ****** *)
#staload _ =
"xatslib/githwxi/DATS/CATS/Xint/basics0.dats"
(* ****** ****** *)
#impltmp
<xs><x0>
gfun_memberq_gseq(xs) =
(
lam(x0)=>gseq_memberq<xs><x0>(xs,x0))
(* ****** ****** *)
//
val
the_cstrm =
g_inp_cstrm<>()
val
the_cstrm =
(
strm_vt_map0
<x0><y0>(the_cstrm)
) where
{
//
#typedef x0 = sint
#typedef y0 = char
//
#impltmp
map0$fopr
<x0><y0>(i0) = char(i0)
}
//
val
the_input =
parcmb1_input(strm_vt2t(the_cstrm))
//
(* ****** ****** *)
//
#typedef tok = char
//
(* ****** ****** *)
//
val
alpha =
gseq_append
(
"abcdefghijklmnopqrstuvwxyz"
,
"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
)
//
(* ****** ****** *)

val
p_token =
parcmb1_token<tok>()
val
fp_sat =
parcmb1_sat<tok><tok>

(* ****** ****** *)
//
val
p_ltr0 =
fp_sat
(p_token, fmemberq(alpha))
val
p_nltr =
fp_sat
(p_token, fnot(fmemberq(alpha)))
//
(* ****** ****** *)

#symload
fp_map with parcmb1_map
#symload
fp_ignore with parcmb1_ignore
#symload
fp_repeat0 with parcmb1_repeat0
#symload
fp_repeat1 with parcmb1_repeat1

(* ****** ****** *)

val
p_word =
fp_map
(
fp_ignore(p_nltr)
>>
fp_repeat1(p_ltr0)
,
lam(cs) =>
strn_make0_llist(cs)
)
val
p_words = fp_repeat0(p_word)

(* ****** ****** *)

#typedef
word = strn
#vwtpdef
words = list_vt(word)

(* ****** ****** *)
//
val words =
let
val
(inp, res) =
parser_apply
(*
<tok><words>
*)
(p_words, the_input)
in
  case-
  res of ~some_vt(words) => words
end // end of [val words]
//
(* ****** ****** *)

(* end of [test-2020-07-01.dats] *)
