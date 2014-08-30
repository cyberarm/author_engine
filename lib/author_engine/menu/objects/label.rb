module AuthorEngine
  class Label < AuthorEngine::MenuObject
    def prepare
      @label = Chingu::Text.new(@options.string, x:@options.x, y:@options.y,color:@options.color,size:@options.font_size)
    end

    def draw
      super
      @label.draw
    end

    def update
      super
      @label.update
    end
  end
end