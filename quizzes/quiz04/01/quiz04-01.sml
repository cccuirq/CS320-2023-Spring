(* ****** ****** *)
use "./../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
Please put your implementation here for quiz04-01
*)
fun alphabeta_cycling_list():char stream = fn() =>
  let
    fun help c =
      strcon_cons(c, fn () => help(if c = 'Z' then 'A' else Char.chr(Char.ord c + 1)))
  in
    help 'A'
  end
(* ****** ****** *)

(* end of [CS320-2023-Spring-quizzes-quiz04-01.sml] *)
