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

    @products.each do |product|
      total_quantity += product.quantity
    end

    total_quantity
  end

  def is_full?
    return true  if total_number_of_products >= capacity
    return false if total_number_of_products < capacity
  end

  def products_by_category(requested_category)
    @products.find_all do |product|
      product.category == requested_category
    end
  end

  def percentage_occupied
    ((total_number_of_products.to_f / capacity.to_f) * 100.00).round(2)
  end

  #I know theres a better way but it works... :P
  def sorted_products_by_quantity
    @products.sort_by!{ |product| product.quantity}
    @products.sort{ |product| product.quantity}
  end

  def product_breakdown
    hash = {meat: nil, produce: nil, paper: nil}

    @products.each do |product|
      if product.category == :meat
        hash[:meat] = product
      elsif product.category == :produce
        hash[:produce] = product
      elsif product.category == :paper
        hash[:paper] = product
      end
    end
    hash
  end

end
