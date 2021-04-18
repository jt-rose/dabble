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

# no native currying - bummer - but some libraries do implement it

# combined steps in a function
delayed_hello = fn -> Process.sleep(1000); IO.puts "delayed hello" end
delayed_hello.()

# test some built in functions
upcase_example = String.upcase("i should be upper case")
lower_example = String.downcase("STOP YELLING")
IO.puts upcase_example <> " " <> lower_example

round_up = Float.ceil(3.2)
round_down = Float.floor(3.9)
IO.puts "round 3.2 up to #{round_up} and 3.9 down to #{round_down}"

# long function
long_func = fn num -> 
# let's do a nuch of lines of calculation
double = num * 2
triple_that = double * 3
halve_result = triple_that / 2
end
IO.puts long_func.(10)