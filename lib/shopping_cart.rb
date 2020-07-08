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

  def total_number_of_products
    total_quantity = 0
    index = 0

    @products.each do |product|
      total_quantity += product.quantity
    end

    total_quantity
  end

end
