class Register < ApplicationRecord
  belongs_to :guardian
  has_one :shelters
end
