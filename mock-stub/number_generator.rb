require 'test/unit'
require 'mocha/test_unit'

# Generate random string
class NumberGenerator
  def random
    'A' * rand(1..10)
  end
end

# Test random number generator
class NumberGeneratorTest < Test::Unit::TestCase
  def test_random_string
    generator = NumberGenerator.new

    # mock rand function
    generator.stubs(:rand).returns(5)

    assert_equal 'AAAAA', generator.random
  end
end
