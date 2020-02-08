class Incident < ApplicationRecord
  belongs_to :system
  delegate :admin, :to => :system
  has_one_attached :solve
end
