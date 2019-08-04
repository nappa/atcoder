#結局TLEでした

S = gets.chomp.split(//).map { |s|
  if s == "R" # 高速化のために整数に置換
    1
  elsif s == "L"
    -1
  end
}

children_stub = [0] * S.length
N = 10**100

repeat_start = nil
repeat_end = nil
children = [1] * S.length
repeat_pattern = []

0.upto(N) do |i|
  new_children = children_stub.dup
  S.each_with_index do |l_or_r, index|
    new_children[index+l_or_r] += children[index]
  end

  # 逆順探索
  repeat_pattern.each_with_index.reverse_each do |a_children, children_index|
    if a_children == new_children
      repeat_start = children_index
      repeat_end = i-1
      # break
    end
  end
  break unless repeat_start.nil?

  repeat_pattern << new_children
  children = new_children
end
pos = ((10**100 - repeat_start - 1) % (repeat_end - repeat_start + 1)) + repeat_start
puts repeat_pattern[pos].join(" ")
