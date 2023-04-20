
fun power(x:real, n:int) : real =
  if n = 0 then 1.0
  else if n mod 2 = 0 then power(x * x, n div 2)
  else x * power(x * x, n div 2)
fun
stream_evaluate
(fxs: real stream, x0: real): real stream = 
    let fun help(fxs, xn, n) = fn() =>
      case fxs() of
        strcon_nil => strcon_nil
      | strcon_cons(an, fxs') =>
          let
            val x1 = xn + an * power(x0 ,n)
          in
            strcon_cons(x1, help(fxs', x1, n+1))
          end
  in
    help(fxs, 0.0, 0)
  end

(* ****** ****** *)

(* end of [CS320-2023-Spring-midterm2-01.sml] *)
