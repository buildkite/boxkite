class RepositoryType < ApplicationRecord
  has_many :repositories

  validates :name, presence: true, uniqueness: true
end
