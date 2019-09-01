a = gets.strip.split.map(&:to_i)
sum = a[0] + a[1]
sub = a[0] - a[1]
mul = a[0] * a[1]
puts [sum,sub,mul].max