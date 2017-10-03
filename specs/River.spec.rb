require('minitest/autorun')
require_relative('../River')
require_relative('../Fish')

class TestRiver < MiniTest::Test

	def setup
		@fish = Fish.new('Blinky')
		@river = River.new('Forth', [@fish])
	end

	def test_get_river_name
		assert_equal('Forth', @river.name)
	end
	
	def test_get_fish_in_river
		assert_equal([@fish], @river.fish)
	end
	
	def test_get_fish_count
		assert_equal(1, @river.fish_count)
	end

end