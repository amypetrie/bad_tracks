require 'rails_helper'

describe 'user_can_create_a_song' do
  it 'through an artist' do
    artist = create(:artist) #create gets picked up by FactoryBot

    visit new_artist_song_path(artist)

    title = "Just Eat It"
    length = 231

    fill_in :song_title, with: title
    fill_in :song_length, with: length

    click_on "Create Song"

    expect(current_path).to eq(artist_path(artist))
    expect(page).to have_content(title)
    expect(page).to have_content(length)
    expect(page).to have_content(artist.name)

  end
end
