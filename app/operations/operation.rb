class Operation

  def self.call(*args)
    new.call(*args)
  end

  private

  def logger
    Rails.logger
  end

end
