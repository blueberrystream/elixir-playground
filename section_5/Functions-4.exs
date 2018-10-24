prefix = fn first ->
  fn second ->
    IO.puts "#{first} #{second}"
  end
end

mrs = prefix.("Mrs")
mrs.("Smith")

prefix.("Elixir").("Rocks")
