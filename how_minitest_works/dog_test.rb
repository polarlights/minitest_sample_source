require 'minitest/autorun'
require_relative './dog'

Minitest.after_run { puts "Hello world" }

class DogTest < Minitest::Test
  def setup
    @dog = Dog.new
  end

  def test_dog_should_spark
    assert_respond_to @dog, :spark
    assert_equal 'Spark!', @dog.spark
  end

  def ordiary_method
    assert true
  end

  def test_skip
    skip('TBD')
  end
end
