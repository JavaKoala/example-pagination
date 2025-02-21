class Contract < ApplicationRecord
  belongs_to :company
  belongs_to :contractable, polymorphic: true
end
