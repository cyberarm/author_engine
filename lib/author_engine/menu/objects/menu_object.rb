module AuthorEngine
  class MenuObject < Chingu::GameObject
    def setup
      self.input = {left_mouse_button: :click_check}
      prepare if defined?(self.prepare)
    end

    def button_up(id)
      if id == Gosu::MsLeft
        click_check
      end
    end

    def update
      super
      MetaMenuObject.button_sizing
    end

    def click_check
      if mouse_x.between?(@options.x,@options.x+@options.width) && mouse_y.between?(@options.y,@options.y+@options.height)
        click
      elsif @options.type == :button && mouse_x.between?(@options.x,@options.x+MetaMenuObject::WIDEST_BUTTON.first) && mouse_y.between?(@options.y,@options.y+@options.height)
        click
      end
    end

    def click
      @options[:block].call if defined?(@options[:block].call) # @options.block.call doesn't work for some reason.
    end
  end
end