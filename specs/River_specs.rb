require("minitest/autorun")
require("minitest/pride")
require_relative("../River.rb")
require_relative("../Fish.rb")

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("Pete")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Dory")
    @fish4 = Fish.new("Fishy")
    @fish5 = Fish.new("Steve")
    @fish6 = Fish.new("Doris")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]

    @river = River.new("Amazon", @fish)
  end

  def test_fish_in_river()
    assert_equal(6, @river.fish_in_river())
  end

  def test_find_fish_in_river()
    assert_equal(@fish2, @river.find_fish_in_river("Nemo"))
  end

  def test_remove_fish()
    @river.remove_fish(@fish1)
    assert_equal(5, @river.fish_in_river())
  end

end
