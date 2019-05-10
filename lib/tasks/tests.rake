require 'csv'
namespace :tests do

  desc 'Fetch cuts from flooring'
  task run: :environment do
    1000.times do
      Algorithm.all.each do |algo|
        puts "running algorithm: #{algo.title} string"
        Test::Run.new.call(algo, 'name')

        puts "running algorithm: #{algo.title} integer"
        Test::Run.new.call(algo, 'number')
      end
    end
    puts 'Done'
  end

  task export: :environment do
    CSV.open("users.csv", "wb") do |csv|
      User.order(id: :asc).each do |user|
        csv << [user.name, user.number]
      end
    end
  end

  task import: :environment do
    users = CSV.read('users.csv')
    users.each do |user|
      User.create(name: user[0], number: user[1])
    end
  end
end
