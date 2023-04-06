require '01_diaryentry'

RSpec.describe do
  it 'constructs' do
    diary_entry = DiaryEntry.new("title1", "one two")
    expect(diary_entry.title).to eq "title1"
    expect(diary_entry.contents).to eq "one two"
  end

  it 'cunts_words in the contents' do
    diary_entry = DiaryEntry.new("title1", "one two")
    expect(diary_entry.count_words).to eq 2
  end
end