# oxygen
nums = File.readlines('input').map(&:chomp)
length = nums.first.length
index = 0

loop do
  ones = nums.map { |num| num[index] }.count('1')
  most_common = ones >= (nums.size / 2.0) ? '1' : '0'

  nums.reject! { |num| num[index] != most_common }
  index += 1
  break if nums.size == 1
end

o2 = nums.first.to_i(2)

# co2
nums = File.readlines('input').map(&:chomp)
length = nums.first.length
index = 0

loop do
  ones = nums.map { |num| num[index] }.count('1')
  most_common = ones >= (nums.size / 2.0) ? '1' : '0'

  nums.reject! { |num| num[index] == most_common }
  index += 1
  break if nums.size == 1
end

co2 = nums.first.to_i(2)
puts "CO2 rating: #{co2}"
puts "Oxygen rating: #{o2}"

puts o2 * co2
