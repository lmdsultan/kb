class Incident < ApplicationRecord
  belongs_to :system
  delegate :admin, :to => :system
end
