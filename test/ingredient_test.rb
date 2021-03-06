require './lib/ingredient'
require 'pry'
require 'minitest/autorun'

class IngredientTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
  end

  def test_it_is
    assert_instance_of Ingredient, @ingredient1
  end

  def test_it_has_attributes
    assert_equal "Cheese",@ingredient1.name
    assert_equal "oz", @ingredient1.unit
    assert_equal 50, @ingredient1.calories
  end
end