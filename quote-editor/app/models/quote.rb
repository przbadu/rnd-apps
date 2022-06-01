class Quote < ApplicationRecord
  # validations
  validates :name, presence: true

  # Scopes
  scope :ordered, -> { order(id: :desc) }
end
