K, X = gets.strip.split.map(&:to_i)
puts ((X-(K-1))..(X+(K-1))).to_a.join(" ")