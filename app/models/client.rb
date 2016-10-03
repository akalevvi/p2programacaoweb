class Client < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_many :client_reviews
  has_many :photographer_reviews
  has_many :price_quotes
end
