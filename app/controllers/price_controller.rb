class PriceController < ApplicationController
  def coinbase
   @prices = Price.last(100).reverse
  end
end