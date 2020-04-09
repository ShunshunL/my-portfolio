class Portfolio < ApplicationRecord
  extend FriendlyId 
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :main_image, :thubm_image
end
