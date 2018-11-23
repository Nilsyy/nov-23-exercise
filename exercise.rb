class Task
  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end
end

class TodoList
  def initialize
    @tasks = []
  end

  def add_task(obj)
    @tasks << obj
  end
end

buy = Task.new("Buy groceries", "End of day")
eat = Task.new("Eating broccoli", "Snack")
rest = Task.new("Not moving at all", "Morning")

puts buy.due_date
puts eat.due_date
puts rest.due_date

to_do_list = TodoList.new

to_do_list.add_task(buy)
to_do_list.add_task(eat)
to_do_list.add_task(rest)

to_do_list.tasks.each do |task|
  puts task.description
end
