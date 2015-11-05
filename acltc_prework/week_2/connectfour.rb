# Connect four by Jamie Gates

board = [
  ["-", "-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-", "-"],
  ["-", "-", "-", "-", "-", "-"],
  ["1", "2", "3", "4", "5", "6"]
]



board.each do |row|
	p row
end

puts "which column?"
colIndex = gets.chomp.to_i - 1

board[6][colIndex] = "X"
board.each do |row|
	p row
end