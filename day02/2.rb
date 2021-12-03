horizontal = 0
depth = 0
File.readlines('input').each do |pos|
  direction, amount = pos.split
  amount = amount.to_i

  case direction
  when 'forward'
    horizontal += amount
  when 'up'
    depth -= amount
  when 'down'
    depth += amount
  end
end
puts horizontal * depth


# part 2
horizontal = 0
depth = 0
aim = 0
File.readlines('input').each do |pos|
  direction, amount = pos.split
  amount = amount.to_i

  case direction
  when 'forward'
    horizontal += amount
    depth += aim * amount
  when 'up'
    aim -= amount
  when 'down'
    aim += amount
  end
end
puts horizontal * depth
