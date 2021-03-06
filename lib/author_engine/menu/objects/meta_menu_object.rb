module AuthorEngine
  class MetaMenuObject
    OBJECTS = []
    WIDEST_BUTTON = [0]
    attr_accessor :options

    def initialize(string, options={})
      @options = options
      @options[:string] = string
      @options[:color] ||= Gosu::Color::WHITE
      @options[:width] ||= 200
      @options[:height] ||= 64
      @options[:font_size] ||= 64

      position
      OBJECTS << self
    end

    def position
      if OBJECTS.count == 0
        @options.x = 5
        @options.y = 5
      else
        other_position
      end
    end

    def other_position
      @options.x = 5
      @options.y = OBJECTS.last.options.y + OBJECTS.last.options.height + 5
    end

    def self.button_sizing
      width = 0
      OBJECTS.each do |object|
        if object.options.type == :button
          if object.options.width >= width
            width = object.options.width+5
          end
        end
      end
      WIDEST_BUTTON[0] = width
    end
  end
end