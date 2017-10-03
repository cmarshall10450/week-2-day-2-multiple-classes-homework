require('minitest/autorun')
require_relative('../Fish')

class TestFish < MiniTest::Test

	def setup
		@fish = Fish.new('Blinky')
	end

	def test_get_fish_name
		assert_equal('Blinky', @fish.name)
	end

end