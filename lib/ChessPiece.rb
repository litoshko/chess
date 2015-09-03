class ChessPiece
  attr_reader :color, :position, :name

  def initialize(color = :"", name = :"")
    @color = color
    @name = name
  end

  def to_s
    '*'
  end

  #Validate string coordinates make move
  def can_move?(from, to, board)
    true
  end
end

