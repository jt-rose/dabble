test_var = "I'm a test variable"
test_num = 50

# &&, ||, 'and' return second value if first passes the test
IO.puts "true and 1 returns #{true and 1}"
IO.puts "true && 1 returns #{true && 1}"
IO.puts "true || 1 returns #{true || 1}"

# function syntax
hello = fn name -> "Hi #{name}" end
IO.puts hello.("Elixir")

# HOF
halve = fn amount -> amount / 2 end
double = fn amount -> amount * 2 end

adjustPrice = fn amount, adjust -> adjust.(amount) end

IO.puts "Half of 10 is #{adjustPrice.(10, halve)}"
IO.puts "double of 10 is #{adjustPrice.(10, double)}"