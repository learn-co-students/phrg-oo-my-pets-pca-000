class Fish
  attr_reader :name, :mood
  attr_writer :mood

  # NAME = @name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
