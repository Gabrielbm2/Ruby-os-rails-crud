class Coin < ApplicationRecord
  has_many :votes

  def self.ranked_coins
    joins(:votes).group(:id).order('COUNT(votes.id) DESC')
  end
end