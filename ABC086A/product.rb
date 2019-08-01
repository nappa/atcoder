a, b = gets.split(" ")
puts ((a.to_i * b.to_i) % 2 == 0) ? "Even" : "Odd"