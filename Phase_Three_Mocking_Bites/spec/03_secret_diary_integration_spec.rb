require '03_secret_diary'
require '03_diary_exercise'

RSpec.describe 'Secret Diary Integration Exercise' do
  context 'initially' do
    it 'does not read the diary because it is locked' do
      diary = DiaryExercise.new("CONTENTS HERE")
      secret_diary = SecretDiary.new(diary)
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end

  context 'when it is unlocked' do
    it 'reads the diary contents' do
      diary = DiaryExercise.new("CONTENTS HERE")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "CONTENTS HERE"
    end
  end

  context 'when it is RELOCKED' do
    it 'does not read the diary because it is locked' do
      diary = DiaryExercise.new("CONTENTS HERE")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end
end