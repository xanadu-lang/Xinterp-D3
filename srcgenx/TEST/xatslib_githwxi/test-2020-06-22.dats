(* ****** ****** *)
#include
"./../../..\
/xshared/xinterp_prelude.hats"
(* ****** ****** *)
#staload
"xatslib/libcats/DATS/rand000.dats"
(* ****** ****** *)
#staload
"xatslib/githwxi/DATS/mygist0.dats"
#staload
"xatslib/githwxi/DATS/mytest0.dats"
(* ****** ****** *)
//
fun
fact(n: int): int =
if
(n > 0)
then
n * fact(pred(n)) else 1
//
fun
fibo(n: int): int =
if
(n >= 2)
then
fibo(n-1)+fibo(n-2) else n
//
(* ****** ****** *)

val
fact10 =
mytest_fun(fact) where
{
#impltmp g_rand<int>() = 10
}
val
fibo10 =
mytest_fun(fibo) where
{
#impltmp g_rand<int>() = 10
}

(* ****** ****** *)

(* end of [test-2020-06-22.dats] *)
