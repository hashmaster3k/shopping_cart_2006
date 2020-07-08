require 'pry'

class ShoppingCart

  attr_reader :name

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
  end

  def capacity
    @capacity.partition("i")[0].to_i
  end

end
