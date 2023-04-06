require 'task_tracker'

RSpec.describe Task_Tracker do
  context 'testing add method, adding a task to the list' do
    it 'adds a task' do
      first_list = Task_Tracker.new
      result = first_list.add("Doing the laundry")
      expect(result).to eq [{"name" => "Doing the laundry", "status" => "#TODO"}]
    end

    it 'adds multiple tasks' do
      first_list = Task_Tracker.new
      first_list.add("Doing the laundry")
      expect( first_list.add("Walking the dog")).to eq [{"name" => "Doing the laundry", "status" => "#TODO"}, {"name" => "Walking the dog", "status" => "#TODO"}]
    end

    it 'adds multiple tasks' do
      first_list = Task_Tracker.new
      first_list.add("Doing the laundry")
      first_list.add("Walking the dog")
      expect( first_list.add("clean the kitchen")).to eq [{"name" => "Doing the laundry", "status" => "#TODO"}, {"name" => "Walking the dog", "status" => "#TODO"}, {"name" => "clean the kitchen", "status" => "#TODO"}]
    end

    it 'empty task' do
      first_list = Task_Tracker.new
      expect{ first_list.add("") }.to raise_error "No task set"
    end
  end

  context 'when a task is completed, update list_of_tasks using update method' do
    it 'amend status of one task to completed' do
      first_list = Task_Tracker.new
      first_list.add("Doing the laundry")
      result = first_list.update_once_completed("Doing the laundry")
      expect(result).to eq [{"name" => "Doing the laundry", "status" => "Completed"}]
    end

    it 'amend status of one task to completed' do
      first_list = Task_Tracker.new
      first_list.add("Doing the laundry")
      first_list.add("Walking the dog")
      result = first_list.update_once_completed("Doing the laundry")
      expect(result).to eq [{"name" => "Doing the laundry", "status" => "Completed"}, {"name" => "Walking the dog", "status" => "#TODO"}]
    end
  end

  it 'returns outstanding tasks that have yet to be completed when one task has been updated to completed' do
    first_list = Task_Tracker.new
      first_list.add("Doing the laundry")
      first_list.add("Walking the dog")
      first_list.update_once_completed("Doing the laundry")
      result = first_list.tasks_outstanding
      expect(result).to eq [{"name" => "Walking the dog", "status" => "#TODO"}]
  end

  it 'returns outstanding tasks that have yet to be completed when two task has been updated to completed' do
    first_list = Task_Tracker.new
      first_list.add("Doing the laundry")
      first_list.add("Walking the dog")
      first_list.update_once_completed("Doing the laundry")
      first_list.update_once_completed("Walking the dog")
      result = first_list.tasks_outstanding
      expect(result).to eq "All tasks completed"
  end
end