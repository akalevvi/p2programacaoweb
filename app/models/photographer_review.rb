class PhotographerReview < ApplicationRecord
  belongs_to :client
  belongs_to :photographer
end
