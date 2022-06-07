### Introduction

This project contains list of small ruby scripts that are used to learn stub and mock using https://github.com/freerange/mocha and Ruby unit test.

### How to run

```sh
bundle install
ruby filename.rb
```

### What is stub?

Stub is a piece of code that take place of another component
during testing. In our example, we have NumberGenerator class
which have `random` instance method and it is using Ruby's
`rand()` method. And our stub is taking place of `rand` method
only and always gives us stubbed result.

```ruby
def test_random_string_by_stubbing
  generator = NumberGenerator.new
  generator.stubs(:rand).returns(5)

  assert_equal 'AAAAA', generator.random
end
```

### What is mock?

Mocking means creating a fake version of an
external or internal service that can stand in for the real one,
helping your tests run more quickly and more reliably
