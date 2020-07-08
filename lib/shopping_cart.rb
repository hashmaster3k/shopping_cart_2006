require './lib/product'
require 'pry'

class ShoppingCart

  attr_reader :name, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def capacity
    @capacity.partition("i")[0].to_i
  end

  def add_product(product)
    @products << product
  end

  def details
    info = {name: @name, capacity: capacity}
  end

end
