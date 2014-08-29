module AuthorEngine
  class Display < Chingu::Window
    def initialize
      super(1280, 770, false)
      $display = $window
      self.caption = "Author: The Page"
      push_game_state(AuthorEngine::Boot)
    end
  end
end