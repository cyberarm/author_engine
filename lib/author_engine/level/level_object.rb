module AuthorEngine
  class LevelObject
    attr_accessor :x,:y,:z,:zorder,:image,:collision,:health,:destroyable
    def initialize(options)
      @options    = options
      @x,@y       = 0
      @z          = @options[:z] || 0
      @zorder     = @options[:zorder] || 0
      @image      = Gosu::Image["#{AuthorEngine::assets_path}/#{@options[:image]}"]
      @collision  = @options[:collision]
      @health     = @options[:health] || 100
      @destroyable= @options[:destroyable] || false

      @options[:level_object] = self

      place
    end

    def place
      @x = @options[:tile_size]*@options[:x]
      @y = @options[:tile_size]*@options[:y]
    end

    def hash
      @options
    end
  end
end