#https://medium.com/@marcifey/insertion-sort-in-ruby-b538c55591f4

class Algorithm
  class Insertion
    def call(category)
      array = User.all.map{ |user| user[category] }
      test = Test.create(algorithm: Algorithm.find_by(title: 'Insertion'), start_time: Time.zone.now, category: category)
      insertion_sort(array)
      test.update(end_time: Time.zone.now)
    end

    def insertion_sort(array)
      final = []
      final << array.shift 
        for i in array
          final_index = 0
          while final_index < final.length 
            if i <= final[final_index] 
              final.insert(final_index,i) 
              break  
            elsif final_index == final.length-1 
              final.insert(final_index+1,i) 
              break
            end
            final_index+=1   
          end
        end
      final
    end
  end
end
