fn1 = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, x) -> x
end

fn2 = fn (n) -> fn1.(rem(n, 3), rem(n, 5), n) end

IO.puts fn2.(10)
IO.puts fn2.(11)
IO.puts fn2.(12)
IO.puts fn2.(13)
IO.puts fn2.(14)
IO.puts fn2.(15)
IO.puts fn2.(16)
IO.puts fn2.(17)
IO.puts fn2.(18)
