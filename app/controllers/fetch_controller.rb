class FetchController < ApplicationController
  def index
  	coinbase_result = ActiveSupport::JSON.decode(open("https://coinbase.com/api/v1/prices/buy").read)["amount"]

  	Price.create(:rate => coinbase_result, :source => 'coinbase')

  end

  def coinbase

  	#open API feed, read it, JSON decode it, and we want the amount
	@result = ActiveSupport::JSON.decode(open("https://coinbase.com/api/v1/prices/buy").read)["amount"]

  end
end