require 'ChessBoard'

RSpec.describe ChessBoard do

	board = ChessBoard.new

	it 'can display board' do
		expect(board.display).to eq(true)
	end

	it 'can make moves' do
		expect(board.make_move('E2E4')).to eq(true)
		board.display
	end

end