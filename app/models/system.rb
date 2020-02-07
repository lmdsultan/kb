class System < ApplicationRecord
  belongs_to :admin
  has_many :incidents
end
