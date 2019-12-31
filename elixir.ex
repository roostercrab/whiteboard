defmodule E do
  def functions do
    sum_anon = fn x, y -> x + y end

    IO.puts("sum_anon gives 5 + 5 = #{sum_anon.(5, 5)}")

    sum_amp = &(&1 + &2)

    IO.puts("sum_amp gives 5 + 5 = #{sum_amp.(5, 5)}")

    sum_pattern_matching = fn
      {x, y} -> IO.puts("#{x} + #{y} = #{x + y}")
      {x, y, z} -> IO.puts("#{x} + #{y} + #{z} = #{x + y + z}")
    end

    sum_pattern_matching.({1, 2})
    sum_pattern_matching.({1, 2, 3})
  end
end
