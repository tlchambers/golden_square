# {{PROBLEM}} Method Design Recipe

# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
# _________________________________
# Follow the design recipe to implement the following user stories in your project. Both of these will be within a single class.
# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.

# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.
# _________________________________

# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.
# EXAMPLE


class Task_Tracker
  def initialize
    @list_of_tasks = []
  end

  def add(task)
    fail "No task set" if task.empty?
    task_hash_format = {"name" => task, "status" => "#TODO"}
    return @list_of_tasks.push(task_hash_format)
  end

  def to_do_list
    return @list_of_tasks
  end

  def update_once_completed(task)
    @list_of_tasks.select do |each_task| 
      if each_task["name"] == task 
        then each_task["status"] = "Completed"
      end
    end
    return @list_of_tasks
  end

  def tasks_outstanding
    remaining_tasks = @list_of_tasks.select do |each_task| 
      if each_task["status"] == "#TODO"
        then each_task
      end
    end

    if remaining_tasks.length > 0
      return remaining_tasks
    else
      return "All tasks completed"
    end
  end
end
  
  

# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.
# Encode each example as a test. You can add to the above list as you go.

# tests for method 'add'
# task.add("pick up dry clean") => ("pick up dry clean")
# task.add("Walk the dog") => ("Walk the dog")
# task.add("") throws an error

# tests for storing added task to list of tasks
# task.add("Pick up dry clean") => {"task" => "Pick up dry clean", "status" => "#TODO"}
# task.add("Walk the dog") => {"task" => "Walk the dog", "status" => "#TODO"}
# task.add("Walk the dog") 
# task.add("pick up dry clean")
# task.add("clear driveway of snow") => [
#   {"task" => "Pick up dry clean", "status" => "#TODO"}, 
#   {"task" => "Walk the dog", "status" => "#TODO"},
#   {"task" => "clear driveway of snow", "status" => "#TODO"}
# ]

# tests for updating tasks to 'complete' 
# task.update("Pick up dry clean") => {"task" => "Pick up dry clean", "status" => "Completed"}
# task.update("Walk the dog") => {"task" => "Walk the dog", "status" => "Completed"}
# return list_of_tasks with updated tasks to see update works
# => [
#   {"task" => "Pick up dry clean", "status" => "Completed"}, 
#   {"task" => "Walk the dog", "status" => "Completed"},
#   {"task" => "clear driveway of snow", "status" => "#TODO"}
# ]

# use list_of_tasks to return list of tasks that has not been completed (marked #TODO)
#list_of_tasks = {"task" => "clear driveway of snow", "status" => "#TODO"}

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
