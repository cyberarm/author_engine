module AuthorEngine
  class Cursor < AuthorEngine::MenuObject
    def setup
      @image = Gosu::Image["#{AuthorEngine.cursor_image}"]
      self.center_x,self.center_y = 0,0
      self.zorder = Float::INFINITY
    end
    def draw
      @image.draw(self.x, self.y, self.zorder) if $display.show_cursor
    end

    def update
      self.x = $display.mouse_x
      self.y = $display.mouse_y
    end
  end
end