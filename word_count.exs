filename = IO.gets("File to count the words from: ") |> String.trim()

words =
  File.read!(filename)
  |> String.split(~r{(\\n|[^\w'])+})
  # anonymous function 'fn x -> x = ... end'
  |> Enum.filter(fn x -> x != "" end)

words |> Enum.count() |> IO.puts()
