class Incident < ApplicationRecord
  belongs_to :system
  belongs_to :admin
end
