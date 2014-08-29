module AuthorEngine
  class Boot < AuthorEngine::GameState
    def setup
      @text = Chingu::Text.new("AuthorEngine - #{AuthorEngine::VERSION}", x: 100, y: 100, size: 50)
      @text_color = 0
      AuthorEngine::Cursor.create
    end

    def draw
      super
      @text.draw
    end

    def update
      super
      push_game_state(Game::BootGame)
    end
  end
end