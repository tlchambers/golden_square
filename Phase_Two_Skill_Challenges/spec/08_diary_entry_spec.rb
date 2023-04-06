require '08_diary_entry'

RSpec.describe Diary_Entry do
  it 'construct' do
    entry1 = Diary_Entry.new('Title 1', 'content 1')
    expect(entry1.title).to eq 'Title 1'
    expect(entry1.contents).to eq 'content 1'
  end

  describe '#count_words' do
    it 'returns zero if contents is empty' do
      entry1 = Diary_Entry.new('Title 1', '')
      expect(entry1.count_words).to eq 0
    end

    it 'returns one if contents has one word' do
      entry1 = Diary_Entry.new('Title 1', 'one')
      expect(entry1.count_words).to eq 1
    end

    it 'counts all the words in the contents' do
      entry1 = Diary_Entry.new('Title 1', 'content 1')
      expect(entry1.count_words).to eq 2
    end
  end

  describe '#reading_time' do
    it 'fails if wpm is zero' do
      entry1 = Diary_Entry.new('Title 1', '')
      expect{ entry1.reading_time(0) }.to raise_error 'WPM must be a postive integer'
    end
    it 'returns zero if contents is empty' do
      entry1 = Diary_Entry.new('Title 1', '')
      expect(entry1.reading_time(2)).to eq 0
    end

    it 'returns one if contents has one word' do
     entry1 = Diary_Entry.new('Title 1', 'one')
      expect(entry1.reading_time(2)).to eq 1
    end

    it 'returns a reading time for contents' do
      entry1 = Diary_Entry.new('Title 1', 'one two three four five')
      expect(entry1.reading_time(2)).to eq 3
    end
  end
end