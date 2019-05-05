namespace :tests do

  desc 'Fetch cuts from flooring'
  task run: :environment do
    2.times do
      Algorithm.all.each do |algo|
        puts "running algorithm: #{algo.title} string"
        Test::Run.new.call(algo, 'name')

        puts "running algorithm: #{algo.title} integer"
        Test::Run.new.call(algo, 'number')
      end
    end
    puts 'Done'
  end
end
