class UserInput < ApplicationRecord
  validates :gender, inclusion: { in: %w(Male Female), message: "%{value} is not valid" }
  validates :age, numericality: { greater_than: 0 }
end
