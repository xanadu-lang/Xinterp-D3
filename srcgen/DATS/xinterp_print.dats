(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2018 Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
** 
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
** 
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
//
// Author: Hongwei Xi
// Start Time: November, 2019
// Authoremail: gmhwxiATgmailDOTcom
//
(* ****** ****** *)
//
// HX-2019-11-02:
// level-1 interpreter for syncheck!
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#staload
UN = "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)

#include
"./../HATS/libxatsopt.hats"

(* ****** ****** *)
//
overload
fprint with $LAB.fprint_label
//
overload
fprint with $D2E.fprint_d2var
overload
fprint with $D2E.fprint_d2con
overload
fprint with $D2E.fprint_d2cst
//
(* ****** ****** *)
//
#staload "./../SATS/intrep0.sats"
#staload "./../SATS/xinterp.sats"
//
(* ****** ****** *)
//
implement
fprint_val<irval> = fprint_irval
//
(* ****** ****** *)
//
implement
print_irval(x0) = 
fprint_irval(stdout_ref, x0)
implement
prerr_irval(x0) = 
fprint_irval(stderr_ref, x0)
//
implement
fprint_irval
  (out, x0) =
(
case+ x0 of
//
| IRVnil() =>
  fprint!(out, "IRVnil()")
//
| IRVint(i0) =>
  fprint!(out, "IRVint(", i0, ")")
| IRVptr(p0) =>
  fprint!(out, "IRVptr(", p0, ")")
//
| IRVbtf(b0) =>
  fprint!(out, "IRVbtf(", b0, ")")
| IRVchr(c0) =>
  fprint!(out, "IRVchr(", c0, ")")
//
| IRVflt(f0) =>
  fprint!(out, "IRVflt(", f0, ")")
| IRVstr(s0) =>
  fprint!(out, "IRVstr(", s0, ")")
//
| IRVlft(x0) =>
  fprint!(out, "IRVlft(", x0, ")")
//
| IRVcon(d2c, arg) =>
  fprint!
  ( out
  , "IRVcon(", d2c, "; ", arg, ")")
//
| IRVfun(fopr) =>
  fprint!(out, "IRVfun(", "...", ")")
//
| IRVtrcd(knd, irvs) =>
  fprint!
  ( out
  , "IRVtuple(", knd, "; ", irvs, ")")
//
| IRVlam1
  (fenv, iras, ire1) =>
  fprint!(out, "IRVlam1(", "...", ")")
| IRVfix1
  (fenv, d2v0, iras, ire1) =>
  fprint!(out, "IRVfix1(", "...", ")")
| IRVfixs
  (fenv, d2v0, iras, ire1, ires) =>
  fprint!(out, "IRVfixs(", "...", ")")
//
| IRVlazy(irlz) =>
  fprint!(out, "IRVlazy(", "...", ")")
| IRVllazy(_, _, _) =>
  fprint!(out, "IRVllazy(", "...", ")")
//
| IRVerror() =>
  fprint!(out, "IRVerror(", ")")
| IRVnone1(ire1) =>
  fprint!(out, "IRVnone1(", ire1, ")")
//
) (* end of [fprint_irval] *)
//
(* ****** ****** *)
//
implement
print_irlftval(x0) = 
fprint_irlftval(stdout_ref, x0)
implement
prerr_irlftval(x0) = 
fprint_irlftval(stderr_ref, x0)
//
implement
fprint_irlftval
  (out, x0) =
(
case+ x0 of
|
IRLVref(r0) =>
fprint!
( out
, "IRLVref(", ref_get_ptr(r0), ")")
//
|
IRLVpcon
(x1, lab) =>
fprint!
(out, "IRLVpcon(", x1, "; ", lab, ")")
//
|
IRLVpbox
(x1, lab, idx) =>
fprint!
( out
, "IRLVpbox(", x1, "; ", lab, "; ", idx, ")")
|
IRLVpflt
(x1, lab, idx) =>
fprint!
( out
, "IRLVpflt(", x1, "; ", lab, "; ", idx, ")")
//
) (* end of [fprint_irlftval] *)
//
(* ****** ****** *)

(* end of [xint_xinterp_print.dats] *)
