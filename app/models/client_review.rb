class ClientReview < ApplicationRecord
  belongs_to :client
  belongs_to :photographer
end
