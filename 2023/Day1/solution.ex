defmodule Part2 do

defp consolidate(s), do: String.to_integer(String.first(s) <> String.last(s))

def to_numeric(line) do
line
|> String.replace("three", "th3ee")
|> String.replace("eight", "ei8ht")
|> String.replace("two", "t2o")
|> String.replace("one", "o1e")
|> String.replace("nine", "n9e")
|> String.replace("seven", "se7en")
|> String.replace("six", "s6x")
|> String.replace("four", "4our")
|> String.replace("five", "5ive")
|> String.replace(~r/\D/, "")
|> consolidate() 
end

def solve(input), do: Enum.reduce(String.split(String.trim(input), "\n"), 0, fn x, acc-> to_numeric(x) + acc end)

end


{:ok, input} = File.read("input.txt")
solution = Part2.solve(input) |> IO.puts()
