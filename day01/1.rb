count = 0
File.readlines('input').map(&:to_i).each do |measurement|
  count += 1 if @prev && measurement > @prev
  @prev = measurement
end
puts count

count = 0
File.readlines('input').map(&:to_i).each_cons(3) do |measurements|
  sum = measurements.sum

  count += 1 if @prev && sum > @prev
  @prev = sum
end
puts count
