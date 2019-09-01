N = gets.to_i
S = N.times.map{gets.chomp.bytes.sort}.sort

last = nil
a = []
idx = 0
S.each do |line|
  if last.nil?
    last = line
    a[idx] = 1
  elsif last != line
    last = line
    idx += 1
    a[idx] = 1
  elsif last == line
    a[idx] += 1
  end
end
b = a.find_all { |i| i >= 2 }
c = b.map { |i| (i-1)*(i)/2 }
if c.empty?
  puts "0"
else
  puts c.inject(:+)
end

