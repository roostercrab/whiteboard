defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 0 do
    n * of(n - 1)
  end


  def factorial_if(num) do
    if num <= 1 do
      1
    else
      num * factorial_if(num - 1)
    end
  end

  def factorial_case(num) do
    case num do
      1 ->
        num

      _ when num <= 100_000 ->
        num * factorial_case(num - 1)

      _ ->
        IO.puts("number outside of range")
    end
  end

  #   factorial_case(4)
  #   factorial_case(4 * factorial_case(3 * factorial_case(2 * factorial_case(1))))
end

# of(8 * (of(7 * (of(6 * (of(5 * (of(4 * (of(3 * (of(2 * (of(1 * (of(1))))))))))

