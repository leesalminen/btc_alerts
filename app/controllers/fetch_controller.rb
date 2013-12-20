class FetchController < ApplicationController
  skip_before_action :require_login
  def index
  	require 'httparty'

  	coinbase_result = HTTParty.get('https://coinbase.com/api/v1/prices/buy')

  	Price.create(:rate => coinbase_result['amount'], :source => 'coinbase')

    mtgox_result = HTTParty.get('http://data.mtgox.com/api/2/BTCUSD/money/ticker_fast')

    Price.create(:rate => mtgox_result['data']['buy']['value'], :source => 'mtgox')

  end
end