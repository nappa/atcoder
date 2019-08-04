N = gets.to_i
Ha = gets.chomp.split(" ").map { |s| s.to_i }
last_h = 0
Ha.each do |h|
  if last_h == h
    # do nothing
  elsif last_h <= h-1
    last_h = h - 1 # なるべく高さを下げる戦略
  else
    puts "No"
    exit
  end
end
puts "Yes"