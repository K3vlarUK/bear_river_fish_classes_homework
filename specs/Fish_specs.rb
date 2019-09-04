require("minitest/autorun")
require("minitest/pride")
require_relative("../Fish.rb")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Pete")
  end

  def test_fish_has_name
    assert_equal("Pete", @fish1.name)
  end

end
