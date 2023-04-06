require '08_todo_challenge'

RSpec.describe Todo do
  context 'initially' do
    it 'fails when no task added' do
      expect{ task1 = Todo.new("") }.to raise_error "Add a task"
    end
    
    it 'returns the task added' do
      task1 = Todo.new("Walk dog")
      expect(task1.task).to eq "Walk dog"
    end

    it 'create another task' do
      task1 = Todo.new("Wash dishes")
      expect(task1.task).to eq "Wash dishes"
    end
  end

  context "when the task is completed" do
    it 'marks the task as DONE' do
      task1 = Todo.new("Wash dishes")
      expect(task1.mark_done!).to eq "Wash dishes- DONE"
    end
  end

  context 'checks when a task is DONE' do
    it 'returns false if task is not marked with the word - done' do
      task1 = Todo.new("Walk dog")
      task1.task
      expect(task1.done?).to eq false
    end

    # it 'returns true if task include word - DONE' do
    #   task1 = Todo.new("Wash dishes")
    #   task1.task
    #   task1.mark_done!
    #   expect(task1.done?).to eq true
    # end
  end
end