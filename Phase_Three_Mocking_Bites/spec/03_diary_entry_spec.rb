require '03_diary_entry'

RSpec.describe DiaryEntry3 do
  it 'constructs' do
    diary_entry = DiaryEntry3.new('my title', 'my contents')
    expect(diary_entry.title).to eq 'my title'
    expect(diary_entry.contents).to eq 'my contents'
  end
end