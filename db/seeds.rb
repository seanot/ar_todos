require 'faker'
require_relative '../app/models/task.rb'
require_relative '../app/models/list.rb'

List.create!(:name => "Test") 

10.times do 
Task.create!(:list_id => 1,
   :description => Faker::Lorem.words(2..10).join(' '), 
   :status => rand(2))
end 
