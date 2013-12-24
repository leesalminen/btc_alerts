class Price < ActiveRecord::Base
  def self.get_coinbase()
    @prices = Price.where(source: "coinbase").last(100).reverse
  end

  def self.get_mtgox()
    @prices = Price.where(source: "mtgox").last(100).reverse
  end

  def self.get_last_200()
    @prices = Price.last(200).reverse
  end

  def self.get_all()
    @prices = Price.all
  end
end
