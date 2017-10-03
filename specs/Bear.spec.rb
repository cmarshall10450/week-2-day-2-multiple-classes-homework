require('minitest/autorun')
require_relative('../Bear')

class TestBear < MiniTest::Test

	def setup
		@bear = Bear.new('Yogi')
	end

	def test_get_bear_name
		assert_equal('Yogi', @bear.name)
	end
end