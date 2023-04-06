require '08_diary.rb'

RSpec.describe Diary do
  context 'initially' do
    it 'constructs an empty list for entries' do
      diary = Diary.new
      expect(diary.all).to eq []
    end

    it 'has a word count of zero' do
      diary = Diary.new
      expect(diary.count_words).to eq 0
    end

    it 'has a reading time of zero' do
      diary = Diary.new
      expect(diary.reading_time(2)).to eq 0
    end

    it 'has a readable entry of nil' do
      diary = Diary.new
      expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
    end
  end
end