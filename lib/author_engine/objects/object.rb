module AuthorEngine
  class GameObject < Chingu::GameObject
    attr_accessor :x,:y,:z,:image,:collision,:health,:destroyable

    include AuthorEngine::CommonMethods

    trait :collision_detection
    if $debug
      trait :bounding_box, debug: true
    else
      trait :bounding_box
    end

    def setup
      @x = @options[:level_object].x
      @y = @options[:level_object].y
      @z = @options[:level_object].z
      @zorder= @options[:level_object].zorder
      @image = @options[:level_object].image
      @collision  = @options[:level_object].collision
      @health     = @options[:level_object].health
      @destroyable= @options[:level_object].destroyable

      self.center_x,self.center_y = 0,0
    end
  end
end