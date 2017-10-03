require('minitest/autorun')
require_relative('../Bear')
require_relative('../River')
require_relative('../Fish')

class TestBear < MiniTest::Test

	def setup
		@fish = Fish.new('Blinky')
		@river = River.new('Forth', [@fish])
		@bear = Bear.new('Yogi')
	end

	def test_get_bear_name
		assert_equal('Yogi', @bear.name)
	end

	def test_take_fish_from_river
		@bear.take_fish_from_river(@river)
		assert_equal([@fish], @bear.stomach)
		assert_equal([], @river.fish)
	end
end