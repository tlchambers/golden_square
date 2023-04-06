require '03_diary_exercise'

RSpec.describe DiaryExercise do
  it 'sets contents and read' do 
    entry1 = DiaryExercise.new("Contents here")
    expect(entry1.read).to eq "Contents here"
  end
end