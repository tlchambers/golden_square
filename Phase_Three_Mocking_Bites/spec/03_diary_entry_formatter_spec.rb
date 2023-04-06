require '03_diary_entry_formatter'

RSpec.describe DiaryEntry3Formatter do
  it "formats a diary entry" do
    fake_diary_entry = double(:fake_diary_entry, title: "FAKE TITLE", contents: "FAKE CONTENTS")
    formatter = DiaryEntry3Formatter.new(fake_diary_entry)
    expect(formatter.format).to eq "FAKE TITLE: FAKE CONTENTS"
  end
end