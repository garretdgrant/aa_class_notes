class Piece
    attr_reader :color, :pos, :board
    # attr_writer :pos

    def initialize(color,board, pos)
        raise "Invalid Color" unless [:black, :white].include?(color)
        raise "Invalid Position" if board.valid_pos?(pos) == false
        @color = color
        @pos = pos
        @board = board
    end

    # def symbol
    #     raise "Not Implemented"
    # end

    def pos=(position)
        @pos = position
    end
end