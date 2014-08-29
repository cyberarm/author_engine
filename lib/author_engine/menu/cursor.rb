module AuthorEngine
  class Cursor < AuthorEngine::GameObject
    def setup
      $cursor = self
      p AuthorEngine.cursor_image
      @image = Gosu::Image["#{AuthorEngine.cursor_image}"]
      self.center_x,self.center_y = 0,0
    end

    def update
      self.x = mouse_x
      self.y = mouse_y
    end
  end
end