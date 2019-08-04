N = gets.to_i
puts 1.upto(N).find_all { |i| i.to_s.length.odd? }.count
