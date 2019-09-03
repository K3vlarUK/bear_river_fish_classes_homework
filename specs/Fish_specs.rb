require("minitest/autorun")
require("minitest/pride")
require_relative("../Fish.rb")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Pete")
  end

end
