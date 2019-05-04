class Test
  class Run
    def call(algorithm, type)
      case algorithm.title
      when 'Bubble'
        Algorithm::Bubble.new.call(type)
      when 'Merge'
        Algorithm::Merge.new.call(type)
      else
        nil
      end
    end
  end
end
