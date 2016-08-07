require 'minitest/autorun'
require_relative 'color'

class TestColor < Minitest::Test
    def setUp
        @red = Color.new(255, 0, 0)
        @blue = Color.new(0, 0, 255)
    end

    def test_red
        assert_equal 255, @red.red
    end
end
