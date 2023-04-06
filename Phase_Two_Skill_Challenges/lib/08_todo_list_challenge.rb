class TodoList
  def initialize
    @listoftasks = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @listoftasks.push({"task" => todo, "status" => "pending"})
  end


# I added***
  def all
     # Returns a list of tasks 
     return @listoftasks
  end
# **********


  def incomplete
    # Returns all non-done todos
  #   work = @person['addresses'].find {|address| address['name'] == 'work'}
  #  return work['building'] + ' ' + work['street']

  #  notdone = @listoftasks.select {|task| task["status"] == "pending"}
  #  outstanding_tasks = notdone.map {|task| p task["task"]}.to_s
  #   return "You have the following tasks: " + outstanding_tasks

    notdone = @listoftasks.select do |task| 
      if task["status"] == "pending"
        return "You have the following tasks:" + task.to_s
      end
    end
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end
