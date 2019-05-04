class Test < ApplicationRecord
  belongs_to :algorithm
  scope :by_category, -> (category) { where(category: category) }
  scope :timed, -> { where.not(end_time: nil) }

  validates :start_time, presence: true

  def execution_time
    end_time - start_time
  end
end
