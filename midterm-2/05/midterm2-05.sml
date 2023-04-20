(* ****** ****** *)

use "./../../mysmlib/mysmlib-cls.sml";

(* ****** ****** *)

(*
//
// HX-2023-04-20: 20 points
//
A sequence xs of integers captures '231'
if there are three integers a, b, and c
appearing as a subsequence of xs satisfying
c < a < b. Note that a, b, and c do not have
to appear consecutively in xs.

For instance, [1,3,4,2] does capture '231'
For instance, [1,2,4,3] does not capture '231'
For instance, [1,2,3,4] does not capture '231'
*)

(* ****** ****** *)
exception right

fun
perm_capture_231(xs: int list): bool = 
    let 
        val n = list_length(xs)
    in
        let
            val _ = foreach_to_iforeach(list_foreach)(xs, fn(i,j) => if (i >= n-2) then ()
                                                                    else if (list_get_at(xs, i+2) < j andalso j < list_get_at(xs, i+1))
                                                                        then raise right
                                                                    else ())
        in
            false
        end handle right => true
    end

(* ****** ****** *)

(* end of [CS320-2023-Spring-midterm2-05.sml] *)
