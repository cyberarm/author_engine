module AuthorEngine
  class Display < Chingu::Window
    attr_accessor :show_cursor
    def initialize
      super(1280, 770, false)
      $display = $window
      self.show_cursor = false
      self.caption = "#{AuthorEngine.game_name}" if defined?(AuthorEngine.game_name.length)
      self.caption = "AuthorEngine #{AuthorEngine::VERSION}" unless defined?(AuthorEngine.game_name.length)
      push_game_state(AuthorEngine::Boot)
    end
  end
end