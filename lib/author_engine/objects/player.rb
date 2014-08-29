module AuthorEngine
  class Player < AuthorEngine::GameObject
    trait :velocity

    def setup
      super
      p @options
      @speed = 3
      @jumping = false
      self.input = {
        up: :jump,
        holding_right: :right,
        holding_left: :left,
        holding_down: :down
      }
      self.factor = 0.7
      self.acceleration_y = 0.5
      self.max_velocity = 10
      self.rotation_center = :bottom_center
    end

    def update
      self.each_collision(Block) do |player, block|
        if self.velocity_y < 0 # Hitting the ceiling
          player.y = block.bb.bottom + player.image.height * self.factor_y
          self.velocity_y = 0
        else # Land on ground
          @jumping = false
          player.y = block.bb.top-1
        end
      end

      self.die if self.first_collision(Spike)

    end

    def die
      self.x = 140
      self.y = 0
    end

    def jump
      unless @jumping
        @jumping = true
        self.velocity_y = -10
      else
      end
    end
    def right
      move(@speed,0)
    end
    def left
      move(-@speed,0)
    end
    def down
      move(0,@speed)
    end

    def move(x,y)
      self.x += x
      self.each_collision(Block) do |me, block|
        self.x = previous_x
        break
      end
      
      self.y += y
    end

    def on_ground?
      self.first_collision(Block)
    end
  end
end