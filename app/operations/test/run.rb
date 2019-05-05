class Test
  class Run
    def call(algorithm, type)
      case algorithm.title
      when 'Bubble'
        Algorithm::Bubble.new.call(type)
      when 'Merge'
        Algorithm::Merge.new.call(type)
      when 'Quick'
        Algorithm::Quick.new.call(type)
      when 'Heap'
        Algorithm::Heap.new.call(type)
      when 'Insertion'
        Algorithm::Insertion.new.call(type)
      else
        Algorithm::Bubble.new.call(type)
        Algorithm::Merge.new.call(type)
        Algorithm::Quick.new.call(type)
        Algorithm::Heap.new.call(type)
        Algorithm::Insertion.new.call(type)
      end
    end
  end
end
