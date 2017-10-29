# Determine if a Sudoku is valid, according to: Sudoku Puzzles - The Rules.

# The Sudoku board could be partially filled, where empty cells are filled with the character '.'.


# A partially filled sudoku which is valid.

# Note:
# A valid Sudoku board (partially filled) is not necessarily solvable. Only the filled cells need to be validated.


# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    row = Array.new(9) { Hash.new }
    col = Array.new(9) { Hash.new }
    box = Array.new(9) { Hash.new }
    0.upto(8) do |i|
        0.upto(8) do |j|
            char = board[i][j]
            next if char == '.'
            

            return false if row[i][char]
            row[i][char] = true
    
            return false if col[j][char]
            col[j][char] = true
    
            k = (i / 3) * 3 + (j / 3)
            return false if box[k][char]
            box[k][char] = true        
        end
    end
    true
end