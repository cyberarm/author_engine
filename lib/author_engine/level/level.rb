module AuthorEngine
  class Level < AuthorEngine::GameState
    attr_accessor :tile_size,:world_size
    trait :viewport

    def initialize(options={})
      @tile_size = 64
      @world_size= [10,10]
      super
    end

    def setup
      super
      begin
        level
      rescue NoMethodError,NameError => e
        if e.to_s.include?("'level'")
          puts "AuthorEngine Error: method 'level' is missing from '#{self.class}'"
          puts "Original Error: #{e}"
          exit(1)
        else
          raise
        end
      end
      self.viewport.lag = 0.5
      self.viewport.game_area = [0, 0, @world_size[0]*@tile_size, @world_size[1]*@tile_size]
      self.viewport.center_around(AuthorEngine::Player.all.first) if defined? AuthorEngine::Player.all.first.x
    end

    def background(image)
      
    end

    def player(options={})
      add_default_options(options)
      _block = AuthorEngine::LevelObject.new(options)
      AuthorEngine::Player.create(_block.hash)
    end

    def enemy(options={})
      add_default_options(options)
      _block = AuthorEngine::LevelObject.new(options)
      AuthorEngine::Enemy.create(_block.hash)
    end

    def block(options={})
      add_default_options(options)
      _block = AuthorEngine::LevelObject.new(options)
      AuthorEngine::Block.create(_block.hash)
    end

    def spike(options={})
      add_default_options(options)
      _block = AuthorEngine::LevelObject.new(options)
      AuthorEngine::Spike.create(_block.hash)
    end

    def sign(options={})
      add_default_options(options)
      _block = AuthorEngine::LevelObject.new(options)
      AuthorEngine::Sign.create(_block.hash)
    end

    def update
      super
      self.viewport.center_around(AuthorEngine::Player.all.first) if defined? AuthorEngine::Player.all.first.x
    end

    private
    def add_default_options options
      options[:tile_size] = @tile_size
    end
  end
end