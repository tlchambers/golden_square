require '05_diaryentry'

RSpec.describe DiaryEntry do
  it 'should create a title and content'do
    diary_entry = DiaryEntry.new("Gone with the wind", "content in side")
    expect(diary_entry.title).to eq "Gone with the wind"
    expect(diary_entry.contents).to eq "content in side"
  end

  # if we are focusing on a particular piece of functionality, we can use a nested 'describe' and focus in on the 'count words method'
  describe "#count words" do
    it "returns number of words in contents" do
      diary_entry = DiaryEntry.new("Gone with the wind", "content in side")
      expect(diary_entry.count_words).to eq 3
    end

    it "returns zero when content is empty" do
      diary_entry = DiaryEntry.new("Gone with the wind", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "#reading_time method" do
    context "given a wpm of some sensible number (200)" do
      it "returns the ceiling of the number of minutes it takes to read the content" do
        diary_entry = DiaryEntry.new("Gone with the wind", "one " * 550)
        expect(diary_entry.reading_time(200)).to eq 3
      end
    end

    context "given a wpm of zero" do
      it "fails" do
        diary_entry = DiaryEntry.new("Gone with the wind", "one " * 550)
        expect { diary_entry.reading_time(0)}.to raise_error "Reading speed wmp must be more than zero"
      end
    end
  end

  describe "#reading_chunk" do
    context "with a contents readable within the imt" do
      it "returns the full contents" do
        diary_entry = DiaryEntry.new("Gone with the wind", "one two three")
        result = diary_entry.reading_chunk(200, 1)
        expect(result).to eq "one two three"
      end
    end 

    context "given a wpm of zero" do
      it "fails" do
        diary_entry = DiaryEntry.new("Gone with the wind", "one " * 550)
        expect { diary_entry.reading_chunk(0, 5)}.to raise_error "Reading speed wmp must be more than zero"
      end
    end

    context "with a contents unreadable within the time" do
      it "returns a readable chunk" do 
        diary_entry = DiaryEntry.new("Gone with the wind", "one two three")
        result = diary_entry.reading_chunk(2, 1)
        expect(result).to eq "one two"
      end

      it "returns the next chunk, next time we are asked to call 'readingin_chunk" do
        diary_entry = DiaryEntry.new("Gone with the wind", "one two three")
        diary_entry.reading_chunk(2, 1)
        result = diary_entry.reading_chunk(2, 1)
        expect(result).to eq "three"
      end

      it "restars after reading the whole contents" do
        diary_entry = DiaryEntry.new("Gone with the wind", "one two three")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(2, 1)
        result = diary_entry.reading_chunk(2, 1)
        expect(result).to eq "one two"
      end

      it "restarts if it finishes exactly on the end" do
        diary_entry = DiaryEntry.new("Gone with the wind", "one two three")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(1, 1)
        result = diary_entry.reading_chunk(2, 1)
        expect(result).to eq "one two"
      end
    end
  end
end
