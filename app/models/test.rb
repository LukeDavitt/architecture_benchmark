class Test < ApplicationRecord
  belongs_to :algorithm
  scope :by_category, -> (category) { where(category: category) }

  def execution_time
    end_time - start_time
  end
end
