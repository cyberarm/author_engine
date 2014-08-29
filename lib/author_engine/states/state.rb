module AuthorEngine
  class GameState < Chingu::GameState
    include AuthorEngine::CommonMethods
    def setup
      if defined?($cursor)
        AuthorEngine::Cursor.all.first.destroy
        AuthorEngine::Cursor.create
      else
        AuthorEngine::Cursor.create
      end
    end

    def update
      super
      $cursor.update if $display.show_cursor && defined?($cursor)
    end

    def draw
      super
      $cursor.draw if $display.show_cursor && defined?($cursor)
    end
  end
end