class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries.push(entry)
  end

  def entries
    return @entries
  end

  def count_words
    # @entries.map {|entry| entry.count_words}.sum
    # refactor
    @entries.sum(&:count_words)
  end
end