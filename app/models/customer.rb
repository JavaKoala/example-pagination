class Customer < ApplicationRecord
  has_many :contracts, as: :contractable, dependent: :destroy
end
