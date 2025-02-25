class Pet < ApplicationRecord
  validates :name, presence: true
  validates :specie, presence: true, inclusion: { in: ["cat", "dog", "bird", "fish"] }
end
