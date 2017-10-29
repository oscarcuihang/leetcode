# # 130. Surrounded Regions

# Given a 2D board containing 'X' and 'O' (the letter O), capture all regions surrounded by 'X'.

# A region is captured by flipping all 'O's into 'X's in that surrounded region.

# For example,
# X X X X
# X O O X
# X X O X
# X O X X
# After running your function, the board should be:

# X X X X
# X X X X
# X X X X
# X O X X

# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve(board)
    m = board.size
    return if m == 0
    n = board[0].size
    (0...m).each do |i|
        if board[i][0] == 'O'
            dfs(board, i, 0)
        end
    end
    (0...m).each do |i|
        if board[i][n-1] == 'O'
            dfs(board, i, n-1)
        end
    end
    (0...n).each do |i|
        if board[m-1][i] == 'O'
            dfs(board, m-1, i)
        end
    end
    (0...n).each do |i|
        if board[0][i] == 'O'
            dfs(board, 0, i)
        end
    end
    (0...m).each do |i|
        (0...n).each do |j|
            if board[i][j] == '1'
                board[i][j] = 'O'
            elsif board[i][j] == 'O'
                board[i][j] = 'X'
            else
            end
        end
    end
end

def dfs(board, i, j)
    board[i][j] = '1'
    dfs(board, i+1, j) if (i+1< board.size && board[i+1][j] == 'O')
    dfs(board, i-1, j) if (i-1 > 0 && board[i-1][j] == 'O')
    dfs(board, i, j-1) if (j-1 > 0 && board[i][j-1] == 'O')
    dfs(board, i, j+1) if (j+1 < board[0].size && board[i][j+1] == 'O')
end