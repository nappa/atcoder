a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

if a == 0
  max_500 = 0
elsif a * 500 >= x
  max_500 = x / 500
else
  max_500 = a
end

if b == 0
  max_100 = 0
elsif b * 100 >= x
  max_100 = x / 100
else
  max_100 = b
end

if c == 0
  max_50 = 0
elsif c * 50 >= x
  max_50 = x / 50
else
  max_50 = c
end

i = 0
0.upto(max_500) do |c_500|
  0.upto(max_100) do |c_100|
    c_50 = (x - c_500*500 - c_100*100) / 50
    if (c_50 <= max_50 && c_50 >= 0)
      i += 1
    end
  end  
end
puts i