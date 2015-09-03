require 'ChessPiece'
require 'ChessBoard'

RSpec.describe ChessPiece do
  before :example do
    @piece = ChessPiece.new
  end

  it "defaults to empty color" do
    expect(@piece.color.empty?).to eq true
  end

  it "defaults to empty name" do
    expect(@piece.name.empty?).to eq true
  end

  it "can move" do
    board = ChessBoard.new
    expect(@piece.can_move?([0,1], [0,2], board)).to eq true
  end
end