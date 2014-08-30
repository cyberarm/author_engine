module AuthorEngine
  class MenuState < Chingu::GameState
    def setup
      prepare if defined?(self.prepare)
      $display.show_cursor=true
      AuthorEngine::Cursor.create
    end

    def label(string="", options={}, &block)
      options[:block] = block
      object = AuthorEngine::MetaMenuObject.new(string,options)
      AuthorEngine::Label.create(object.options)
    end

    def button(string="", options={}, &block)
      options[:block] = block
      object = AuthorEngine::MetaMenuObject.new(string,options)
      AuthorEngine::Button.create(object.options)
    end

    def edit_line(string="", options={})
    end
  end
end