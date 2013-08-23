require_relative '../models/task.rb'
require_relative '../models/list.rb'

def all
  Task.all 
end

def add(string_array)
  Task.create!(:list_id => 1,
    :description => string_array.join(' '),
    :status => 0)
end

def delete(task_id)
  task = Task.find_by_id(task_id)
  task.destroy
end

def complete(task_id)
  task = Task.find_by_id(task_id)
  task.update(:status => 1)
end

if ARGV[0] == 'list'
  p all
elsif ARGV[0] == 'delete'
  delete(ARGV[1])
  p "You deleted a task!"
elsif ARGV[0] == 'complete'
  complete(ARGV[1])
  p "Congratulations, you completed a task!"
elsif ARGV[0] == 'add'
  add(ARGV[1..-1])
  p "You added a task, get to work!"
end
