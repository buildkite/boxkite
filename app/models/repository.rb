class Repository < ApplicationRecord
  belongs_to :repository_type

  validates :name, presence: true, uniqueness: true
  validates_associated :repository_type
end
