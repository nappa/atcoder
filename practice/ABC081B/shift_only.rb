n = gets
a = gets.split(" ").map{|c|c.to_i}
i = 0
while !a.find {|i| i.odd?}
  a = a.map { |c| c/2 }
  i += 1
end
puts i