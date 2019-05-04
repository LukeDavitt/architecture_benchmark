class Algorithm < ApplicationRecord
  scope :ordered, -> { order(title: :asc) }
  has_many :tests
end
