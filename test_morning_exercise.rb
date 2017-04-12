require 'minitest/autorun'
require 'minitest/pride'
require_relative 'morning_exercise_7'

class TextScanner < Minitest::Test
  def class_exists
    t = TextScanner.new(alice.txt)
    assert TextScanner, t.class
  end
end
