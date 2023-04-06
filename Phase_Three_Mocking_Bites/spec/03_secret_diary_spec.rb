require '03_secret_diary'

RSpec.describe SecretDiary do
  context 'initially' do
    it 'does not read the diary because it is locked' do
      fake_diary = double :fakediary
      secret_diary = SecretDiary.new(fake_diary)
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end

  context 'when unlocked' do
    it 'reads the diary because it is unlocked' do
      fake_diary = double(:fakediary, read: "FAKE CONTENTS HERE")
      secret_diary = SecretDiary.new(fake_diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "FAKE CONTENTS HERE"
    end
  end

  context 'when it is relocked' do
    it 'does not read the diary because it is locked' do
      fake_diary = double(:fakediary, read: "FAKE CONTENTS HERE")
      secret_diary = SecretDiary.new(fake_diary)
      secret_diary.unlock
      secret_diary.lock
      expect{ secret_diary.read }.to raise_error "Go away!"
    end
  end
end