require '03_diary_entry'
require '03_diary_entry_formatter'

RSpec.describe '03_diary_integration' do
  it 'formats a diary entry' do
    diary_entry = DiaryEntry3.new("my title", "my content")
    diary_entry_formatter = DiaryEntry3Formatter.new(diary_entry)
    expect(diary_entry_formatter.format).to eq "my title: my content"
  end
end