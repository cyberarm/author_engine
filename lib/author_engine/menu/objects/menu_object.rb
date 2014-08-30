module AuthorEngine
  class MenuObject < Chingu::GameObject
    def setup
      prepare if defined?(self.prepare)
    end

    def button_up(id)
      if id == Gosu::MsLeft
        click_check
      end
    end

    def click_check
      if mouse_x.between?(@options.x,@options.x+@options.width) && mouse_y.between?(@options.y,@options.y+@options.height)
        @options[:block].call if defined?(@options[:block].call) # @options.block.call doesn't work for some reason.
      end
    end
  end
end