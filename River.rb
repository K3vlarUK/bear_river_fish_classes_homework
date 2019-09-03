class River

  def initialize(name, fishes)
    # A river should have a name e.g. "Amazon"
    @name = name
    # A river should hold many fish
    @fishes = fishes
  end

# A river could have a fish_count method
  def fish_in_river()
    return @fishes.length()
  end

  def find_fish_in_river(fish_name)
    for fish in @fishes
      if fish.name() == fish_name
        return fish
      end
    end
    return nil
  end

# A river should lose a fish when a bear takes a fish
  def remove_fish(caught_fish)
    @fishes.delete(caught_fish)
  end

end
