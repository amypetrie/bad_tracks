require 'rails_helper'
describe Song, type: :model do
  #
  # describe 'Validations' do
  #   it { should validate_presence_of(:title)}
  # end

  describe 'Relationship' do
    it {should belong_to(:artist)}
    it {should have_many(:playlist_songs)}
    it {should have_many(:playlists).through(:playlist_songs)}
  end
end
