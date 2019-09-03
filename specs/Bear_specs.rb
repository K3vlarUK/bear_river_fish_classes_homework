require("minitest/autorun")
require("minitest/pride")
require_relative("../Bear.rb")
require_relative("../Fish.rb")
require_relative("../River.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")

    @fish1 = Fish.new("Pete")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Dory")
    @fish4 = Fish.new("Fishy")
    @fish5 = Fish.new("Steve")
    @fish6 = Fish.new("Doris")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]

    @river = River.new("Amazon", @fish)
  end

  def test_check_stomach()
    assert_equal(0, @bear.check_stomach())
  end

  def test_bear_roar()
    assert_equal("Roar", @bear.roar())
  end

  def test_add_fish_to_stomach()
    @bear.add_fish_to_stomach(@fish4)
    assert_equal(1, @bear.check_stomach())
  end

  def test_take_fish_from_river()
    @bear.take_fish_from_river(@fish2, @river)
    assert_equal(1, @bear.check_stomach())
    assert_equal(5, @river.fish_in_river())
  end

end
