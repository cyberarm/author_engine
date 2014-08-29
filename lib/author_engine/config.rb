module AuthorEngine
  def self.cursor_image=image
    @cursor_image = image
  end

  def self.cursor_image
    "#{@assets_path}#{@cursor_image}"
  end

  def self.assets_path=path
    @assets_path = path
  end

  def self.assets_path
    @assets_path
  end
end