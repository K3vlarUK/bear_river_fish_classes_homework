class Bear

  def initialize(name, type)
    # A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
    @name = name
    @type = type
    # A bear should have an empty stomach ( maybe an array )
    @stomach = []
  end

# A bear could have a food_count method
  def check_stomach()
    return @stomach.length()
  end

# A bear could have a roar method
  def roar()
    return "Roar"
  end

  def add_fish_to_stomach(fish)
    @stomach.push(fish)
  end


  def take_fish_from_river(fish, river)
    # A bear should be able to take a fish from the river
    add_fish_to_stomach(fish)
    # A river should lose a fish when a bear takes a fish
    river.remove_fish(fish)
  end

end
