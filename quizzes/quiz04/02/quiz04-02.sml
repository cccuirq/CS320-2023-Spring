(* ****** ****** *)
use "./../../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)

(*
Please put your implementation here for quiz04-02
*)
fun stream_supremov(fxs:int stream) = fn() =>
    let
        fun helper prev s =
      let
        val x = s()
      in
        if x = prev then helper prev s
        else strcon_cons(x, fn () => helper x s)
      end
  in
    helper NONE fxs
  end
(* ****** ****** *)

(* end of [CS320-2023-Spring-quizzes-quiz04-02.sml] *)
