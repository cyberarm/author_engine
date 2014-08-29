module AuthorEngine
  class Cursor < Chingu::GameObject
    def setup
      $cursor = self
      @image = Gosu::Image["#{AuthorEngine.cursor_image}"]
      self.center_x,self.center_y = 0,0
    end

    def update
      self.x = $display.mouse_x
      self.y = $display.mouse_y
    end
  end
end