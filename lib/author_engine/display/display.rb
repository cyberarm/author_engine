module AuthorEngine
  class Display < Chingu::Window
    attr_accessor :show_cursor
    def initialize
      super(1280, 770, false)
      $display = $window
      self.show_cursor = false
      self.caption = "Author: The Page"
      push_game_state(AuthorEngine::Boot)
    end
  end
end