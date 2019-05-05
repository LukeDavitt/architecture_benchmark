# https://medium.com/@limichelle21/read-it-learn-it-build-it-sorting-algorithms-in-ruby-ead04b04baa6

class Algorithm
  class Heap
    def call(category)
      array = User.all.map{ |user| user[category] }
      test = Test.create(algorithm: Algorithm.find_by(title: 'Heap'), start_time: Time.zone.now, category: category)
      heap_sort(array)
      test.update(end_time: Time.zone.now)
    end

    def heap_sort(array)
      n = array.length 
      a = [nil] + array
      
      (n / 2).downto(1) do |i| 
        heapify(a, i, n) 
      end
    
      while n > 1
        a[1], a[n] = a[n], a[1]
        n -= 1
        heapify(a, 1, n)
      end
      a.drop(1) 
    end
    
    
    def heapify(array, parent, limit)
      root = array[parent] 
      while (child = 2 * parent) <= limit
        child += 1 if child < limit && array[child] < array[child + 1] 
        break if root >= array[child] 
        array[parent], parent = array[child], child 
        array[parent] = root 
      end
    end
  end
end