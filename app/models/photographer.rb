class Photographer < ApplicationRecord
  has_many :client_reviews
  has_many :photographer_reviews
  has_many :price_quotes
end
