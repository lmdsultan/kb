class System < ApplicationRecord
  belongs_to :admin
  has_many :incidents
  validates_uniqueness_of :name
end
