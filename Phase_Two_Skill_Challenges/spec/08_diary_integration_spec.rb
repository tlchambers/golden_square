require '08_diary'
require '08_diary_entry'

RSpec.describe 'Diary Integration' do
  it 'return all entries in a list' do
    diary = Diary.new
    entry1 = Diary_Entry.new('my title 1', 'my content 1')
    entry2 = Diary_Entry.new('my title 2', 'my content 2')
    diary.add(entry1)
    diary.add(entry2)
    expect(diary.all).to eq [entry1, entry2]
  end

  describe 'word counting behaviour ' do
    it 'counts the words in all diary entries contents' do
      diary = Diary.new
      entry1 = Diary_Entry.new('my title', 'my content')
      entry2 = Diary_Entry.new('my title 2', 'my content 2')
      diary.add(entry1)
      diary.add(entry2)
      expect(diary.count_words).to eq 5
    end
  end

  describe 'reading time behaviour' do
    it 'fails where wmp is 0' do
      diary = Diary.new
      entry1 = Diary_Entry.new('my title', 'my content')
      diary.add(entry1)
      expect { diary.reading_time(0) }.to raise_error 'WPM must be positive.' 
    end

    it 'calculates the reading time for all entries' do
      diary = Diary.new
      entry1 = Diary_Entry.new('my title', 'my content')
      entry2 = Diary_Entry.new('my title 2', 'my content 2')
      diary.add(entry1)
      diary.add(entry2)
      expect(diary.reading_time(2)).to eq 3
    end

    it 'calculates the reading time for all entries where it falls over a minute' do
      diary = Diary.new
      entry1 = Diary_Entry.new('my title', 'my content')
      entry2 = Diary_Entry.new('my title 2', 'my content 2')
      diary.add(entry1)
      diary.add(entry2)
      expect(diary.reading_time(2)).to eq 3
    end
  end

  describe 'best reading time behaviour' do
    it 'fails where wpm is zero' do
      diary = Diary.new
        entry1 = Diary_Entry.new('my title', 'my content')
        diary.add(entry1)
        expect{ diary.find_best_entry_for_reading_time(0, 1) }.to raise_error 'WPM must be a postive integer'
    end

    context 'where we have just one entry and it is READABLE in the time given' do
      it 'returns that entry' do
        diary = Diary.new
        entry1 = Diary_Entry.new('my title', 'my content')
        diary.add(entry1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq entry1
      end
    end

    context 'where we have just one entry and it is NOT READABLE in the time given' do
      it 'returns nil' do
        diary = Diary.new
        entry1 = Diary_Entry.new('my title', 'my content is longer')
        diary.add(entry1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end

    context 'in the case where there are multiple entries' do
      it 'returns the longest entry the user could read in the given time' do
        diary = Diary.new
        best_entry = Diary_Entry.new('my title', 'one two')
        entry1 = Diary_Entry.new('my title', 'one')
        entry3 = Diary_Entry.new('my title', 'one two three')
        entry4 = Diary_Entry.new('my title', 'one two three four')
        entry5 = Diary_Entry.new('my title', 'one two three four five')
        diary.add(entry1)
        diary.add(best_entry)
        diary.add(entry3)
        diary.add(entry4)
        diary.add(entry5)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end
    end
  end
end