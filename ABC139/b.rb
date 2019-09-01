#!/usr/bin/env ruby --disable-gems -w

A, B = gets.strip.split.map(&:to_i)

i = 0
inlet = 1
while B > inlet
  inlet -= 1
  inlet += A
  i += 1
end
puts i



