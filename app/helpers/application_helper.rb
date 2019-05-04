module ApplicationHelper
  def average_execution_time(algo, category)
    time = 'no tests'
    time = algo.tests.timed.by_category(category).map(&:execution_time).sum / algo.tests.timed.by_category(category).count if algo.tests.timed.by_category(category).count.positive?
    time
  end

  def mean_execution_time(algo, category)
    time = 'no tests'
    time = median(algo.tests.timed.by_category(category).map(&:execution_time)) if algo.tests.timed.by_category(category).count.positive?
    time
  end

  # found via https://stackoverflow.com/questions/14859120/calculating-median-in-ruby
  def median(array)
    sorted = array.sort
    len = sorted.length
    (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
  end
end
