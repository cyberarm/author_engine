module AuthorEngine
  class Button < AuthorEngine::MenuObject
    def prepare
      @label = Chingu::Text.new(@options.string, x:@options.x, y:@options.y,color:@options.color,size:@options.font_size)
      update
    end

    def draw
      super
      $display.fill_rect([@options.x, @options.y, MetaMenuObject::WIDEST_BUTTON.first, @options.height], Gosu::Color::BLUE)
      @label.draw
    end

    def update
      super
      @label.update
      @options.width  = @label.width
      @options.string = @label.text
    end
  end
end