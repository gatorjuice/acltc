require_relative "list"
require_relative "task"


system("clear")
# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Mow the lawn", 6))
list.add_task(Task.new("Feed the cat", 10))
list.add_task(Task.new("Take out trash", 8))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_tasks
puts "--------"

# Toggle task 3 as done
list.tasks[2].toggle_complete!






# Mark the first task from the list as complete
list.tasks[0].complete!

# Print out the incomplete tasks again

puts "Incomplete Tasks:"
puts list.incomplete_tasks
puts "Number of Tasks Incomplete"
puts list.number_of_incomplete_tasks
puts "#{list.tasks[0].name} is a level #{list.tasks[0].priority} priority"
#p list.sort_by_priority
#list.delete_complete_tasks

list.sort_by_priority
p list.tasks

# puts "Incomplete Tasks:"
# puts list.incomplete_tasks
# puts "Number of Tasks Incomplete"
# puts list.number_of_incomplete_tasks
# puts list.tasks[0].priority
puts list.sort_by_priority
p list.tasks
list.delete_complete_tasks

p list.tasks

