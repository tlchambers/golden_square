require '03_task_formatter'
require "task"

RSpec.describe '03 - Task Formatter Integration Challenge' do
  context 'formats the task' do 
    it 'when task has been completed' do
      task = Task.new("Clean dishes")
      task.mark_complete
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "[x] #{task}"
    end

  #   xit 'when task has NOT been completed' do
  #     task = Task.new("Walk dog")
  #     task.complete?
  #     task_formatter = TaskFormatter.new(task)
  #     expect(task_formatter.format).to eq "- [ ] #{task}"
  #   end
  end
end
