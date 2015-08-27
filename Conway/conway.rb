class Cell
  def initialize(state, neighbours)
    @state = state # either 1 or 0 for alive or dead
    @neighbours = neighbours # an array that represents the surrounding cells
  end

  def regenerate(grid)
    @grid = []
  end

  def move_cells
    @grid << move_cells
  end
end

# Any live cell with less than 2 live neighbors dies (under population)
# Any live with with 2-3 live neighbors lives
# Any live cell with 3+ neighors dies (over population)
# Any dead cell with 3 live neighors turns into a live cell (production)

