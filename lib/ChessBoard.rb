require 'ChessPiece'

class ChessBoard
  def initialize
    @board = Array.new(8) { Array.new(8) { '-' }}
    @board[0][0] = ChessPiece.new
    @board[0][1] = ChessPiece.new
    @board[0][2] = ChessPiece.new
    @board[0][3] = ChessPiece.new
    @board[0][4] = ChessPiece.new
    @board[0][5] = ChessPiece.new
    @board[0][6] = ChessPiece.new
    @board[0][7] = ChessPiece.new
    @board[1][0] = ChessPiece.new
    @board[1][1] = ChessPiece.new
    @board[1][2] = ChessPiece.new
    @board[1][3] = ChessPiece.new
    @board[1][4] = ChessPiece.new
    @board[1][5] = ChessPiece.new
    @board[1][6] = ChessPiece.new
    @board[1][7] = ChessPiece.new
    @board[7][0] = ChessPiece.new
    @board[7][1] = ChessPiece.new
    @board[7][2] = ChessPiece.new
    @board[7][3] = ChessPiece.new
    @board[7][4] = ChessPiece.new
    @board[7][5] = ChessPiece.new
    @board[7][6] = ChessPiece.new
    @board[7][7] = ChessPiece.new
    @board[6][0] = ChessPiece.new
    @board[6][1] = ChessPiece.new
    @board[6][2] = ChessPiece.new
    @board[6][3] = ChessPiece.new
    @board[6][4] = ChessPiece.new
    @board[6][5] = ChessPiece.new
    @board[6][6] = ChessPiece.new
    @board[6][7] = ChessPiece.new
  end

  def display
    print "\n  "
    ('A'..'H').each{|char| print char+' '}
    print "\n"
    @board.each_with_index do |row, index|
      print index+1, ' '
      row.each {|place| print place.to_s+' '}
      print "\n"
    end
    true
  end

  def make_move(string)
    if string =~ /^[a-hA-H][1-8][a-hA-H][1-8]$/
      string = string.upcase.unpack("cccc")
      from = [string[0]-65, string[1]-49].reverse
      to = [string[2]-65, string[3]-49].reverse
      if piece = get_piece(from)
        if piece.can_move?(from, to, @board)
          @board[from[0]][from[1]], @board[to[0]][to[1]] = @board[to[0]][to[1]], @board[from[0]][from[1]]
        else
          puts 'move not possible'
        end
      else
        puts 'no piece found'
      end
      true
    else
      false
    end
  end

  def get_piece(coordinates)
    if @board[coordinates[0]][coordinates[1]] == '-'
      false
    else
      @board[coordinates[0]][coordinates[1]]
    end
  end

end

