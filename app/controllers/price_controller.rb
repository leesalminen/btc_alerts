class PriceController < ApplicationController
  skip_before_action :require_login
  def coinbase
   @prices = Price.last(100).reverse
  end
end