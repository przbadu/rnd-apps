class Quote < ApplicationRecord
  # validations
  validates :name, presence: true

  # associations
  belongs_to :company

  # Scopes
  scope :ordered, -> { order(id: :desc) }

  # callbacks
  # broadcast without active jobs
  # after_create_commit -> { broadcast_prepend_to 'quotes' }
  # after_update_commit -> { broadcast_replace_to 'quotes' }
  # after_destroy_commit -> { broadcast_remove_to 'quotes' }

  # broadcast with active jobs
  # after_create_commit -> { broadcast_prepend_later_to 'quotes' }
  # after_update_commit -> { broadcast_replace_later_to 'quotes' }
  # after_destroy_commit -> { broadcast_remove_to 'quotes' }

  # shorthand
  broadcasts_to ->(_quote) { 'quotes' }, inserts_by: :prepend
end
