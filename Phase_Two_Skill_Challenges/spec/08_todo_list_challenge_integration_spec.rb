require '08_todo_list_challenge'
require '08_todo_challenge'

RSpec.describe 'todo_list_integration challenge' do
  context 'when we add a task to the todo list' do
    it 'stores the task in a list' do
      mylist = TodoList.new
      task1 = Todo.new("Clean dishes")
      task2 = Todo.new("Hoover")
      mylist.add(task1)
      mylist.add(task2)
      expect(mylist.all).to eq [{"task" => task1, "status" => "pending"}, {"task" => task2, "status" => "pending"}]
    end
  end

  # context 'with one tasks added' do
  #   it 'seaches for tasks that are incomplete' do
  #     mylist = TodoList.new
  #     task1 = Todo.new("Clean dishes")
  #     task2 = Todo.new("Hoover")
  #     mylist.add(task1)
  #     mylist.add(task2)
  #     expect(mylist.incomplete).to eq "You have the following tasks: #{task1}, #{task2}"
  #   end
  # end
end