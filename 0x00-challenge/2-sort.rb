#!/usr/bin/env ruby

# frozen_string_literal: true

result = []

ARGV.each do |arg|
  # Skip if not an integer
  next if arg !~ /^-?\d+$/

  # Convert to integer
  i_arg = arg.to_i

  # Find the correct position to insert
  is_inserted = false
  i = 0
  l = result.size

  while i < l
    if result[i] <= i_arg
      i += 1
    else
      result.insert(i, i_arg)
      is_inserted = true
      break
    end
  end

  result << i_arg unless is_inserted
end

puts result
