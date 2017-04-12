require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/morning_exercise_9'
require 'pry'

class AllergiesTest < Minitest::Test

  def test_allergies_class_exists
    jorge = Allergies.new
    assert_instance_of Allergies, jorge
  end

  def test_allergies_have_points
    jorge = Allergies.new
    assert_equal 1, jorge.allergy_list
  end

end
