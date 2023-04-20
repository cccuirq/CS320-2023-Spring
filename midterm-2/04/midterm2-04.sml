(* ****** ****** *)

use "./../../mysmlib/mysmlib-cls.sml";

(* ****** ****** *)

(*
//
// HX-2023-04-20: 20 points
//
// A non-empty sequence of numbers forms a
// "drawdown" if every number in the sequence does not
// exceed the first one. A maximal drawdown is one that
// is not contained in any longer drawdowns.
// Please implement a function stream_drawdowns that takes
// an infinite stream fxs of integers and returns a stream
// enumerating all the maximal drawdowns in fxs.
//
*)

(* ****** ****** *)


fun
stream_drawdowns(fxs: int stream): int list stream =
    let fun help(cc, fxs) = fn() => 
        case fxs() of
        strcon_nil => strcon_nil
        | strcon_cons(x, xs) =>
            case cc of
            [] => help([x], xs)()
            |y::ys => if x <= y then help(x::cc, xs)()
                    else strcon_cons(list_reverse(cc), help([x], xs))
    in
        help([], fxs)
    end

(* ****** ****** *)


(* end of [CS320-2023-Spring-midterm2-04.sml] *)
