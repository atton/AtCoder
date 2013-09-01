#!/usr/bin/env ruby

gets

dp = {}

a_arr = gets.chomp.split.map(&:to_i)
b_arr = gets.chomp.split.map(&:to_i)

dp['a'] = a_arr.first
dp['b'] = b_arr.first

(a_arr.size + b_arr.size - 1).times do
  tmp_dp = {}
  dp.keys.each do |pattern|
    if pattern.length % 2 == 0
      tmp_dp[pattern+'a'] = dp[pattern] + a_arr[pattern.count('a')] if a_arr.size > pattern.count('a')
      tmp_dp[pattern+'b'] = dp[pattern] + b_arr[pattern.count('b')] if b_arr.size > pattern.count('b')
    else
      tmp_dp[pattern+'a'] = dp[pattern] if a_arr.size > pattern.count('a')
      tmp_dp[pattern+'b'] = dp[pattern] if b_arr.size > pattern.count('b')
    end
  end
  dp = tmp_dp
end

p dp.values.max
