module AuthorEngine
  class MenuState < Chingu::GameState
    def setup
      prepare if defined?(self.prepare)
    end
  end
end