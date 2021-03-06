require './lib/ingredient'
require './lib/pantry'
require 'pry'
require 'minitest/autorun'

class PantryTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @pantry = Pantry.new
  end

  def test_it_is
    assert_instance_of Pantry, @pantry
  end

  def test_it_has_attributes
    expected = {}
    assert_equal expected , @pantry.stock
  end

  def test_it_can_check_stock
    @pantry.stock_check(@ingredient1)
    assert_equal 0, @pantry.stock_check(@ingredient1)
  end

  def test_it_can_restock
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)

    assert_equal 15, @pantry.stock_check(@ingredient1)

    @pantry.restock(@ingredient2, 7)
    assert_equal 7, @pantry.stock_check(@ingredient2)
  end

end