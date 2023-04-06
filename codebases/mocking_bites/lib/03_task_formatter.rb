class TaskFormatter
  def initialize(task) # task is an instance of Task
    @task = task
  end

  def format
    # Returns the task formatted as a string.
    # If the task is not complete, the format is:
    # - [ ] Task title
    # If the task is complete, the format is:
    # - [x] Task title
    if @task.mark_complete == true
      return "[x] #{@task}"
    end

    # if @task.complete? == false
    #   return "[] #{@task}"
    # end
  end
end