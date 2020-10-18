class Violation < ApplicationRecord
  belongs_to :driver
  validates :driver, :violation_type, :presence => true
end
