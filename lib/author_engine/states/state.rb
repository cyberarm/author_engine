module AuthorEngine
  class GameState < Chingu::GameState
    def setup
      prepare if defined?(self.prepare)
    end
  end
end