boards = []
extracted = []
winners = []

input = File.readlines('input').map(&:chomp)
to_extract = input.shift.split(',').map(&:to_i)

until input.empty?
  input.shift
  board = input.shift(5).map do |line|
    line.split.map(&:to_i)
  end
  board += board.transpose

  boards << board
end

until to_extract.empty?
  extracted << to_extract.shift

  winner = boards.select do |board|
    board.any? do |line|
      (line - extracted).empty?
    end
  end

  if !winner.empty?
    boards -= winner
    # if there are multiple winners, only the first board's score will be saved
    unmarked_sum = (winner.first.flatten - extracted).sum / 2
   winners << unmarked_sum * extracted.last
  end
end

puts winners
