#!/usr/bin/env ruby --disable-gems -w

N = gets.to_i
H = gets.strip.split.map(&:to_i)

max = 0
s = 0
(N-1).downto(1) do |i|
  if H[i] <= H[i-1]
    s += 1
    if max < s
      max = s
    end
  else
    s = 0
  end
end

puts max
