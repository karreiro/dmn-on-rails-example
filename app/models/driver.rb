class Driver < ApplicationRecord
  validates :name, :points, :age, :picture_url, :presence => true
end
