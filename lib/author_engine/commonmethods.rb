module AuthorEngine
  module CommonMethods
    def mouse_x; $display.mouse_x end
    def mouse_y; $display.mouse_y end
    def grid_placer(grid_size, n); grid_size*n end
  end
end