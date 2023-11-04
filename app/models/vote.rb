class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :coin
end

class User < ApplicationRecord
  has_many :votes
end

class Coin < ApplicationRecord
  has_many :votes
end