counter = Hash.new { 0 }
File.readlines('input').each do |line|
  line.chomp.split('').map(&:to_i).each_with_index do |bin, idx|
    counter[idx] += 1 if bin == 1
    counter[idx] -= 1 if bin == 0
  end
end
puts counter

gamma = []
epsilon = []

counter.each_value do |val|
  if val > 0
    gamma << '1'
    epsilon << '0'
  else
    gamma << '0'
    epsilon << '1'
  end
end

puts gamma.join
puts epsilon.join
gamma = gamma.join.to_i(2)
epsilon = epsilon.join.to_i(2)

puts gamma * epsilon
