class List

  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_tasks
    @incomplete_task_names = []
    @tasks.each do |task|
      unless task.complete
        @incomplete_task_names << task.name
      end
    end
    return @incomplete_task_names
  end

  def number_of_incomplete_tasks
    @incomplete_task_names.length
  end

  def delete_complete_tasks
    @tasks = @tasks.select { |task| !task.complete }
  end

  def sort_by_priority
    @tasks.sort! {|a, b| b.priority <=> a.priority}
  end
end


# .map .reduce .select give back new arrays, as opposed to changing arrays  mid loop
