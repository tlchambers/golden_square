require '03_task_formatter'

RSpec.describe TaskFormatter do
  context 'formats a task' do
    it 'when task is completed' do
      fake_task = double(:fasktaskclass, title: "Clean dishes", mark_complete: true)
      task_formatted = TaskFormatter.new(fake_task)
      expect(task_formatted.format).to eq "[x] #{fake_task}"
    end
  end 

  # context 'formats a task' do
  #   it 'when task is NOT completed' do
  #     fake_task = double(:fasktaskclass, title: "Walk dog", complete?: false)
  #     task_formatted = TaskFormatter.new(fake_task)
  #     expect(task_formatted.format).to eq "[] #{fake_task}"
  #   end
  # end
end