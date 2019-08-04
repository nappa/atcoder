A, B, C = gets.split(" ").map { |s| s.to_i }

bin1 = B
bin2 = C
rest = bin2 - (A - bin1)
puts rest < 0 ? 0 : rest
