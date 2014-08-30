module AuthorEngine
  class Button < AuthorEngine::MenuObject
    def prepare
      self.input = {left_mouse_button: :click_check}
      @label = Chingu::Text.new(@options.string, x:@options.x, y:@options.y,color:@options.color,size:@options.font_size)
    end

    def draw
      super
      $display.fill_rect([@options.x, @options.y, @options.width, @options.height], Gosu::Color::BLUE)
      @label.draw
    end

    def update
      super
      @label.update
    end
  end
end