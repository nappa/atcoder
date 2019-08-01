a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
max_100 = b!=0 ? x/b : 0
max_500 = a!=0 ? x/a : 0
i = 0
0.upto(max_500) do |c_500|
  0.upto(max_100) do |c_100|
    i += 1 if ((x - (c_500 * 500 + c_100 * 100)) / 50 <= c)
  end  
end
puts i