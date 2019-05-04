# https://www.sitepoint.com/sorting-algorithms-ruby/

class Algorithm
  class Bubble
    def call(rec_attribute)
      test = Test.create(algorithm: Algorithm.find_by(title: 'Bubble'), start_time: Time.zone.now, category: rec_attribute)
      array = User.all.to_a
      n = array.length
      loop do
        swapped = false
      
        (n-1).times do |i|
          if array[i][rec_attribute] > array[i+1][rec_attribute]
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
          end
        end
      
        break if not swapped
      end
      test.update(end_time: Time.zone.now)
    end
  end
end
