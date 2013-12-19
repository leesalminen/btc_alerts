class FetchController < ApplicationController
  def index
  	require 'httparty'

  	coinbase_result = HTTParty.get('https://coinbase.com/api/v1/prices/buy')

  	Price.create(:rate => coinbase_result['amount'], :source => 'coinbase')

  end

  def coinbase

  	#open API feed, read it, JSON decode it, and we want the amount
	require 'httparty'

  	@result = HTTParty.get('https://coinbase.com/api/v1/prices/buy')['amount']

  end
end