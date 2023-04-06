class Todo
  def initialize(task) # task is a string
    fail "Add a task" if task.empty?
    @task = task
  end

  def task
    # Returns the task as a string
    return @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @task + "- DONE"
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
   return false unless @task.include?("DONE")
  end
end