class Company < ApplicationRecord
  # validataions
  validates :name, presence: true

  # Associations
  has_many :users, dependent: :destroy
  has_many :quotes, dependent: :destroy
end
