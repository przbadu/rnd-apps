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
  # What is stub?
  # Stub is a piece of code that take place of another component
  # during testing. In our example, we have NumberGenerator class
  # which have `random` instance method and it is using Ruby's
  # `rand()` method. And our stub is taking place of `rand` method
  # only and always gives us stubbed result.
  def test_random_string_by_stubbing
    generator = NumberGenerator.new
    generator.stubs(:rand).returns(5)

    assert_equal 'AAAAA', generator.random
  end

  # What is mock?
  # Mocking means creating a fake version of an
  # external or internal service that can stand in for the real one,
  # helping your tests run more quickly and more reliably
end
